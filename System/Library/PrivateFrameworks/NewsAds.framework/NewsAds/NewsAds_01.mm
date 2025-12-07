char *sub_1D7678EC8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1D766C3F0(0, &qword_1EE0AEC48, &type metadata for DebugJournal, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 144);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[144 * v8])
    {
      memmove(v12, v13, 144 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t BannerAdUpdate.init(model:request:journal:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v26 = a1;
  v27 = a2;
  v10 = *a3;
  v11 = sub_1D7702FA0();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7702F90();
  v15 = sub_1D7702F70();
  v17 = v16;
  (*(v12 + 8))(v14, v11);
  *a6 = v15;
  *(a6 + 1) = v17;
  v18 = v10[10];
  v19 = v10[11];
  v20 = v10[12];
  v21 = v10[13];
  v28 = a4;
  v29 = v18;
  v30 = v19;
  v31 = a5;
  v32 = v20;
  v33 = v21;
  v22 = type metadata accessor for BannerAdUpdate(0, &v28);
  (*(*(a4 - 8) + 32))(&a6[v22[17]], v26, a4);
  v23 = v22[18];
  v28 = v18;
  v29 = v19;
  v30 = v20;
  v31 = v21;
  type metadata accessor for AdRequest(255, &v28);
  v24 = sub_1D77046B0();
  result = (*(*(v24 - 8) + 32))(&a6[v23], v27, v24);
  *&a6[v22[19]] = a3;
  return result;
}

uint64_t sub_1D7679268(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_1D767928C(uint64_t a1)
{
  *(a1 + 8) = sub_1D7679440();
  result = sub_1D76794CC();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1D76792BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v23 = a6;
  v24 = a7;
  v21 = a2;
  v22 = a5;
  v20 = a1;
  v11 = *(*v7 + 88);
  v12 = *(*v7 + 96);
  v13 = *(*v7 + 104);
  v25[0] = *(*v7 + 80);
  v10 = v25[0];
  v25[1] = v11;
  v25[2] = v12;
  v25[3] = v13;
  v14 = type metadata accessor for JournalEntry(0, v25);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v19 - v16;
  v24(v20, a3, a4, v22, v23, v21, v10, v11, v12, v13);
  sub_1D766FFCC(v17, a3, a4);
  return (*(v15 + 8))(v17, v14);
}

unint64_t sub_1D7679440()
{
  result = qword_1EE0B0078;
  if (!qword_1EE0B0078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0B0078);
  }

  return result;
}

unint64_t sub_1D76794CC()
{
  result = qword_1EE0B0080;
  if (!qword_1EE0B0080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0B0080);
  }

  return result;
}

uint64_t sub_1D7679520@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, __int128 a10)
{
  v56 = a4;
  v52 = a2;
  v53 = a3;
  v51 = a9;
  v15 = type metadata accessor for AdContext(0, a7, a10, a4);
  v46 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v47 = &v43 - v16;
  v54 = a8;
  v55 = a7;
  *&v58 = a7;
  *(&v58 + 1) = a8;
  v50 = a10;
  v59 = a10;
  v17 = type metadata accessor for AdRequest(255, &v58);
  v57 = sub_1D77046B0();
  v18 = *(v57 - 8);
  v19 = MEMORY[0x1EEE9AC00](v57);
  v48 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v43 - v21;
  v23 = a1;
  sub_1D7679960(a1, &v58);
  v24 = v58;
  v25 = v59;
  v62[0] = v58;
  v62[1] = v59;
  v61 = v58;
  v26 = v58;

  v27 = v24;
  sub_1D7679D98();
  v28 = swift_dynamicCast();
  v49 = a6;
  if (v28)
  {
    v29 = v59;

    v30 = *(v18 + 16);
LABEL_6:
    v33 = v57;
    goto LABEL_7;
  }

  v44 = v15;
  v45 = a5;

  v30 = *(v18 + 16);
  v30(v22, a6, v57);
  v31 = *(v17 - 8);
  if ((*(v31 + 48))(v22, 1, v17) != 1)
  {
    v34 = v46;
    v35 = *(v46 + 16);
    v36 = &v22[*(v17 + 52)];
    v43 = v25;
    v37 = v47;
    v38 = v44;
    v35(v47, v36, v44);
    (*(v31 + 8))(v22, v17);
    v29 = *&v37[*(v38 + 36)];
    v39 = *(v34 + 8);

    v39(v37, v38);
    a5 = v45;
    goto LABEL_6;
  }

  v32 = v57;
  (*(v18 + 8))(v22, v57);
  v29 = 0;
  a5 = v45;
  v33 = v32;
LABEL_7:
  v61 = v29;
  v58 = 0u;
  v59 = 0u;
  v60 = 1;
  v40 = v48;
  v30(v48, v49, v33);

  v41 = v53;

  sub_1D766FA5C(v52, v41, v62, v56, a5, &v61, &v58, v40, v51, v55, v54, v50, *(&v50 + 1));
}

void sub_1D7679960(void *a1@<X0>, void *a2@<X8>)
{
  v22 = a1;
  v4 = a1;
  v5 = a1;
  sub_1D7679D98();
  if (swift_dynamicCast() && (v21 & 1) == 0)
  {
    v13 = v20;

    sub_1D7704740();

    v19[4] = v20;
    v14 = MEMORY[0x1E69E6530];
    v15 = sub_1D7704A10();
    MEMORY[0x1DA6FF0D0](v15);

    v11 = 0xD000000000000010;
    v9 = 0x80000001D77162F0;
    sub_1D76784A8(0, &qword_1EE0AEC20, &type metadata for JournalEntryStatus.Info, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1D7708FD0;
    *(v10 + 72) = v14;
    *(v10 + 32) = 0x6F4320726F727245;
    *(v10 + 40) = 0xEA00000000006564;
    *(v10 + 48) = v13;
    sub_1D7703870();
    v16 = sub_1D7703860();
    v19[3] = MEMORY[0x1E69E6158];
    v19[0] = v16;
    v19[1] = v17;
    *(v10 + 80) = 0x64656C6C69666E55;
    *(v10 + 88) = 0xEF6E6F7361655220;
    sub_1D766B74C(v19, (v10 + 96));
  }

  else
  {

    v20 = a1;
    v6 = a1;
    if (swift_dynamicCast())
    {

      v7 = v19[0];
      v8 = v19[1];

      v9 = 0x80000001D77162C0;
      sub_1D76784A8(0, &qword_1EE0AEC20, &type metadata for JournalEntryStatus.Info, MEMORY[0x1E69E6F90]);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_1D7708FE0;
      *(v10 + 72) = MEMORY[0x1E69E6158];
      *(v10 + 48) = v7;
      *(v10 + 56) = v8;
      *(v10 + 32) = 0x20676E697373694DLL;
      *(v10 + 40) = 0xEB0000000079654BLL;

      v11 = 0xD000000000000025;
    }

    else
    {

      v19[0] = a1;
      v12 = a1;
      if (swift_dynamicCast() && v20 == 2)
      {

        v10 = MEMORY[0x1E69E7CC0];
        v9 = 0xEC00000064656C62;
        v11 = 0x6173696420736441;
      }

      else
      {

        v19[0] = a1;
        v18 = a1;
        if (swift_dynamicCast() && v20 == 1)
        {

          v9 = 0x80000001D77162A0;
          v11 = 0xD000000000000019;
        }

        else
        {

          v20 = a1;
          sub_1D7704850();

          v11 = 0;
          v9 = 0xE000000000000000;
        }

        v10 = MEMORY[0x1E69E7CC0];
      }
    }
  }

  *a2 = a1;
  a2[1] = v11;
  a2[2] = v9;
  a2[3] = v10;
}

unint64_t sub_1D7679D68(uint64_t a1)
{
  *(a1 + 8) = sub_1D7679DFC();
  result = sub_1D7679E50();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D7679D98()
{
  result = qword_1EE0AEBD0;
  if (!qword_1EE0AEBD0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE0AEBD0);
  }

  return result;
}

unint64_t sub_1D7679DFC()
{
  result = qword_1EE0AE8D0;
  if (!qword_1EE0AE8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0AE8D0);
  }

  return result;
}

unint64_t sub_1D7679E50()
{
  result = qword_1EE0AE8E0;
  if (!qword_1EE0AE8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0AE8E0);
  }

  return result;
}

uint64_t sub_1D7679EA4(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t SponsorshipAdContext.init(provider:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  AdContextDataProviding.data<A>(for:)(&type metadata for AppAdData, v5, &type metadata for AppAdData, v6);
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v7 = v38;
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  AdContextDataProviding.data<A>(for:)(&type metadata for UserAdData, v8, &type metadata for UserAdData, v9);
  v10 = v38;
  v11 = a1[3];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  AdContextDataProviding.data<A>(for:)(&type metadata for PlacementAdData, v11, &type metadata for PlacementAdData, v12);
  v13 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v13);
  AdContextDataProviding.data<A>(for:)(&type metadata for SponsorshipAdData, v13, &type metadata for SponsorshipAdData, v14);
  v30 = v38;
  v29 = v38;
  v63 = v39;
  v31 = v41;
  v27 = v42;
  v28 = v40;
  v15 = v43;
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  AdContextDataProviding.dataIfPresent<A>(for:)(&type metadata for FeedAdData, v16, &type metadata for FeedAdData, v17);
  v59 = v55[2];
  v60 = v55[3];
  v61 = v55[4];
  v62 = v56;
  v57 = v55[0];
  v58 = v55[1];
  v18 = a1[3];
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v18);
  AdContextDataProviding.dataIfPresent<A>(for:)(&type metadata for ReferralAdData, v18, &type metadata for ReferralAdData, v19);
  LOBYTE(v32) = v38;
  *(&v32 + 1) = v38;
  LOBYTE(v33) = v38;
  v20 = v39;
  *(&v33 + 1) = v38;
  *&v34 = v39;
  BYTE8(v34) = v40;
  *&v35 = v41;
  BYTE8(v35) = v42;
  *v36 = v43;
  *&v36[40] = v55[2];
  *&v36[56] = v55[3];
  *&v36[72] = v55[4];
  *&v36[88] = v56;
  *&v36[8] = v55[0];
  *&v36[24] = v55[1];
  LOBYTE(v18) = v54;
  v37 = v54;
  *(a2 + 160) = v54;
  v21 = *&v36[16];
  *(a2 + 64) = *v36;
  *(a2 + 80) = v21;
  v22 = v35;
  *(a2 + 32) = v34;
  *(a2 + 48) = v22;
  v23 = *&v36[80];
  *(a2 + 128) = *&v36[64];
  *(a2 + 144) = v23;
  v24 = *&v36[48];
  *(a2 + 96) = *&v36[32];
  *(a2 + 112) = v24;
  v25 = v33;
  *a2 = v32;
  *(a2 + 16) = v25;
  sub_1D767B4C8(&v32, &v38);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v49 = v59;
  v50 = v60;
  v51 = v61;
  v47 = v57;
  LOBYTE(v38) = v7;
  v39 = v10;
  v40 = v30;
  v41 = v29;
  v42 = v20;
  LOBYTE(v43) = v28;
  v44 = v31;
  v45 = v27;
  v46 = v15;
  v52 = v62;
  v48 = v58;
  v53 = v18;
  return sub_1D767B518(&v38);
}

char *AdContextBuilder.data<A>(for:namespace:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v5 = v4;
  v59 = a1;
  v62 = a4;
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v60 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D77046B0();
  v72 = *(v10 - 8);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v53 - v14;
  v16 = *a2;
  v17 = a2[1];
  LODWORD(a2) = *(a2 + 16);
  MetatypeMetadata = swift_getMetatypeMetadata();
  v69[0] = a3;
  v58 = v16;
  v67[0] = v16;
  v67[1] = v17;
  v57 = v17;
  v56 = a2;
  v68 = a2;
  v18 = sub_1D766C108(v69, v67);
  v20 = v19;
  __swift_destroy_boxed_opaque_existential_1(v69);
  v69[0] = *(v5 + 40);
  v63 = a3;
  v64 = v5;
  v55 = v18;
  v65 = v18;
  v66 = v20;
  sub_1D7703390();

  sub_1D7703580();
  v21 = v10;
  v22 = v72;

  (*(v22 + 16))(v13, v15, v21);
  v23 = (*(v8 + 48))(v13, 1, a3);
  v26 = *(v22 + 8);
  v25 = v22 + 8;
  v24 = v26;
  if (v23 != 1)
  {
    v24(v15, v21);

    v29 = *(v8 + 32);
    v30 = v60;
    v29(v60, v13, a3);
    return (v29)(v62, v30, a3);
  }

  v27 = v62;
  v60 = v20;
  v54 = v24;
  v24(v13, v21);
  if (*(v5 + 16))
  {

    v69[0] = v58;
    v69[1] = v57;
    v70 = v56;
    AdContextBuilder.data<A>(for:namespace:)(v59, v69, a3, v27);
    v54(v15, v21);
  }

  v62 = v15;
  sub_1D7668958(0, &unk_1EE0AEBE0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7708DE0;
  *(inited + 32) = v5;

  v32 = sub_1D767B548();
  v69[0] = inited;
  sub_1D767BF84(v32);
  v33 = v69[0];
  if (v69[0] >> 62)
  {
    v34 = sub_1D7704880();
  }

  else
  {
    v34 = *((v69[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v35 = v60;
  if (!v34)
  {

    v36 = MEMORY[0x1E69E7CC0];
LABEL_21:
    sub_1D76ADCB0();
    swift_allocError();
    *v52 = v55;
    v52[1] = v35;
    v52[2] = v36;
    swift_willThrow();
    return (v54)(v62, v21);
  }

  v67[0] = MEMORY[0x1E69E7CC0];
  result = sub_1D767C300(0, v34 & ~(v34 >> 63), 0);
  if ((v34 & 0x8000000000000000) == 0)
  {
    v72 = v25;
    v61 = v21;
    v36 = v67[0];
    if ((v33 & 0xC000000000000001) != 0)
    {
      v37 = 0;
      do
      {
        v38 = MEMORY[0x1DA6FF530](v37, v33);
        v39 = AdContextBuilder.path.getter(v38);
        swift_beginAccess();
        v40 = *(v38 + 48);

        swift_unknownObjectRelease();
        v67[0] = v36;
        v42 = *(v36 + 16);
        v41 = *(v36 + 24);
        if (v42 >= v41 >> 1)
        {
          sub_1D767C300((v41 > 1), v42 + 1, 1);
          v36 = v67[0];
        }

        ++v37;
        *(v36 + 16) = v42 + 1;
        v43 = v36 + 16 * v42;
        *(v43 + 32) = v39;
        *(v43 + 40) = v40;
      }

      while (v34 != v37);
    }

    else
    {
      v44 = 32;
      do
      {
        v45 = *(v33 + v44);

        v47 = AdContextBuilder.path.getter(v46);
        swift_beginAccess();
        v48 = *(v45 + 48);

        v67[0] = v36;
        v50 = *(v36 + 16);
        v49 = *(v36 + 24);
        if (v50 >= v49 >> 1)
        {
          sub_1D767C300((v49 > 1), v50 + 1, 1);
          v36 = v67[0];
        }

        *(v36 + 16) = v50 + 1;
        v51 = v36 + 16 * v50;
        *(v51 + 32) = v47;
        *(v51 + 40) = v48;
        v44 += 8;
        --v34;
      }

      while (v34);
    }

    v21 = v61;
    v35 = v60;
    goto LABEL_21;
  }

  __break(1u);
  return result;
}

uint64_t AdContextDataProviding.data<A>(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[0] = 0;
  v5[1] = 0;
  v6 = -1;
  return (*(a4 + 8))(a1, v5, a3, a2);
}

uint64_t sub_1D767A944@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  swift_beginAccess();
  v10 = *(a1 + 48);
  if (*(v10 + 16) && (v11 = sub_1D76689AC(a2, a3), (v12 & 1) != 0))
  {
    sub_1D7667C54(*(v10 + 56) + 40 * v11, v15);
  }

  else
  {
    v16 = 0;
    memset(v15, 0, sizeof(v15));
  }

  swift_endAccess();
  sub_1D766940C(0, &qword_1EE0AFCC8, &qword_1EE0AFCD0, &protocol descriptor for AdContextDataType, MEMORY[0x1E69E6720]);
  v13 = swift_dynamicCast();
  return (*(*(a4 - 8) + 56))(a5, v13 ^ 1u, 1, a4);
}

uint64_t sub_1D767AA80(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1D767AB38(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FeedGroupAdData.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FeedGroupAdData.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1D767AD18(uint64_t result, int a2, int a3)
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

uint64_t sub_1D767AD54(uint64_t a1, int a2)
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

uint64_t AdContextDataProviding.dataIfPresent<A>(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[0] = 0;
  v5[1] = 0;
  v6 = -1;
  return (*(a4 + 16))(a1, v5, a3, a2);
}

uint64_t AdContextBuilder.dataIfPresent<A>(for:namespace:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v5 = v4;
  v30 = a1;
  v32 = a4;
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v31 = &v26[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_1D77046B0();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v26[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v26[-v15];
  v17 = *a2;
  v18 = a2[1];
  v19 = *(a2 + 16);
  v38[0] = *(v5 + 40);
  v33 = a3;
  v34 = v5;
  v28 = v18;
  v29 = v17;
  v35 = v17;
  v36 = v18;
  v27 = v19;
  v37 = v19;
  sub_1D7703390();

  sub_1D7703580();

  (*(v11 + 16))(v14, v16, v10);
  v20 = (*(v8 + 48))(v14, 1, a3);
  v21 = *(v11 + 8);
  if (v20 == 1)
  {
    v21(v14, v10);
    if (*(v5 + 16))
    {
      v38[0] = v29;
      v38[1] = v28;
      v39 = v27;
      AdContextBuilder.dataIfPresent<A>(for:namespace:)(v30, v38, a3, v32);
      return (v21)(v16, v10);
    }

    else
    {
      v21(v16, v10);
      return (*(v8 + 56))(v32, 1, 1, a3);
    }
  }

  else
  {
    v21(v16, v10);
    v23 = *(v8 + 32);
    v24 = v31;
    v23(v31, v14, a3);
    v25 = v32;
    v23(v32, v24, a3);
    return (*(v8 + 56))(v25, 0, 1, a3);
  }
}

uint64_t sub_1D767B140@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *(&v22 + 1) = swift_getMetatypeMetadata();
  *&v21 = a5;
  v24[0] = a2;
  v24[1] = a3;
  v25 = a4;
  v12 = sub_1D766C108(&v21, v24);
  v14 = v13;
  __swift_destroy_boxed_opaque_existential_1(&v21);
  swift_beginAccess();
  v15 = *(a1 + 48);
  if (!*(v15 + 16))
  {

    goto LABEL_5;
  }

  v16 = sub_1D76689AC(v12, v14);
  v18 = v17;

  if ((v18 & 1) == 0)
  {
LABEL_5:
    v23 = 0;
    v21 = 0u;
    v22 = 0u;
    goto LABEL_6;
  }

  sub_1D7667C54(*(v15 + 56) + 40 * v16, &v21);
LABEL_6:
  swift_endAccess();
  sub_1D766940C(0, &qword_1EE0AFCC8, &qword_1EE0AFCD0, &protocol descriptor for AdContextDataType, MEMORY[0x1E69E6720]);
  v19 = swift_dynamicCast();
  return (*(*(a5 - 8) + 56))(a6, v19 ^ 1u, 1, a5);
}

uint64_t sub_1D767B2B8(uint64_t result, int a2, int a3)
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

uint64_t sub_1D767B30C(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for FeedGroupAdData.AdjacentPosition(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for FeedGroupAdData.AdjacentPosition(unsigned __int8 *a1, unsigned int a2)
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

uint64_t get_enum_tag_for_layout_string_7NewsAds10FeedAdDataVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1D767B548()
{
  v1 = MEMORY[0x1E69E7CC0];
  v6 = MEMORY[0x1E69E7CC0];
  v2 = *(v0 + 16);

  if (v2)
  {
    do
    {

      MEMORY[0x1DA6FF1B0](v3);
      if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D7704430();
      }

      sub_1D7704460();
      v1 = v6;
      v4 = *(v2 + 16);

      v2 = v4;
    }

    while (v4);
  }

  return v1;
}

uint64_t sub_1D767B610(unint64_t a1, uint64_t (*a2)(uint64_t, void, uint64_t))
{
  if (a1 >> 62)
  {
    v5 = sub_1D7704880();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v2 >> 62))
  {
    v6 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = __OFADD__(v6, v5);
    result = v6 + v5;
    if (!v7)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = sub_1D7704880();
  v7 = __OFADD__(v15, v5);
  result = v15 + v5;
  if (v7)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_1D767BF9C(result, 1);
  v9 = *v2;
  v10 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v10 + 8 * *(v10 + 0x10) + 32, (*(v10 + 0x18) >> 1) - *(v10 + 0x10), a1);
  v12 = v11;

  if (v12 < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12 < 1)
  {
LABEL_9:
    *v2 = v9;
    return result;
  }

  v13 = *(v10 + 16);
  v7 = __OFADD__(v13, v12);
  v14 = v13 + v12;
  if (!v7)
  {
    *(v10 + 16) = v14;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

void *sub_1D767B708(void *a1, uint64_t a2, uint64_t a3)
{
  if (qword_1EE0AF008 != -1)
  {
    swift_once();
  }

  v5 = qword_1EE0AF010;
  v6 = sub_1D77045A0();
  sub_1D7703ED0("Running ad module startup task", 30, 2, &dword_1D7662000, v5, v6, MEMORY[0x1E69E7CC0]);
  __swift_project_boxed_opaque_existential_1((a3 + 16), *(a3 + 40));
  sub_1D7665328(0, &qword_1EE0B1C00, &protocol descriptor for AdSegmentManagerType);
  result = sub_1D7703410();
  if (!v64)
  {
    __break(1u);
    goto LABEL_46;
  }

  sub_1D7687CCC(v63, &qword_1EE0AF938, &qword_1EE0B1C00, &protocol descriptor for AdSegmentManagerType);
  __swift_project_boxed_opaque_existential_1((a3 + 16), *(a3 + 40));
  sub_1D7665328(0, qword_1EE0B12E0, &protocol descriptor for AdStatusConditionManagerType);
  result = sub_1D7703410();
  if (!v64)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  sub_1D7687CCC(v63, &qword_1EE0AF3F8, qword_1EE0B12E0, &protocol descriptor for AdStatusConditionManagerType);
  if (a1)
  {
    v8 = 1.0;
    v9 = 1.0;
    if ([a1 respondsToSelector_])
    {
      [a1 feedBannerAdRequestThrottle];
      v9 = v10;
    }

    if ([a1 respondsToSelector_])
    {
      [a1 articleBannerAdRequestThrottle];
      v8 = v11;
    }

    v12 = 1.0;
    v13 = 1.0;
    if ([a1 respondsToSelector_])
    {
      [a1 interstitialAdRequestThrottle];
      v13 = v14;
    }

    if ([a1 respondsToSelector_])
    {
      [a1 prerollAdRequestThrottle];
      v12 = v15;
    }

    v16 = 1.0;
    v17 = 1.0;
    if ([a1 respondsToSelector_])
    {
      [a1 nativeInFeedAdRequestThrottle];
      v17 = v18;
    }

    if ([a1 respondsToSelector_])
    {
      [a1 nativeInArticleAdRequestThrottle];
      v16 = v19;
    }
  }

  else
  {
    v16 = 1.0;
    v9 = 1.0;
    v8 = 1.0;
    v13 = 1.0;
    v12 = 1.0;
    v17 = 1.0;
  }

  sub_1D7687D3C(0, &qword_1EE0AEBF0, &qword_1EE0AEBC0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1D77091E0;
  v21 = MEMORY[0x1E69E6448];
  v22 = MEMORY[0x1E69E64A8];
  *(v20 + 56) = MEMORY[0x1E69E6448];
  *(v20 + 64) = v22;
  *(v20 + 32) = v9;
  *(v20 + 96) = v21;
  *(v20 + 104) = v22;
  *(v20 + 72) = v8;
  *(v20 + 136) = v21;
  *(v20 + 144) = v22;
  *(v20 + 112) = v13;
  *(v20 + 176) = v21;
  *(v20 + 184) = v22;
  *(v20 + 152) = v12;
  *(v20 + 216) = v21;
  *(v20 + 224) = v22;
  *(v20 + 192) = v17;
  *(v20 + 256) = v21;
  *(v20 + 264) = v22;
  *(v20 + 232) = v16;
  sub_1D77045A0();
  sub_1D7703ED0("Configuring PromotedContent request limits, inFeed: %f, inArticle: %f, betweenArticle: %f, videoInArticle: %f, nativeInFeed: %f, nativeInArticle: %f", v57, v59, *&v60, *(&v60 + 1), v61, v62);

  v23 = objc_opt_self();
  *&v24 = v9;
  *&v25 = v8;
  *&v26 = v13;
  *&v27 = v12;
  *&v28 = v17;
  *&v29 = v16;
  [v23 rateLimitRequestsInFeed:v24 inArticle:v25 betweenArticle:v26 videoInArticle:v27 nativeInFeed:v28 nativeInArticle:v29];
  v30 = sub_1D7687790(a3, a1);
  v31 = swift_allocObject();
  v32 = MEMORY[0x1E69E6530];
  *(&v58 + 1) = 2;
  *(v31 + 16) = xmmword_1D7708FE0;
  v33 = MEMORY[0x1E69E65A8];
  *(v31 + 56) = v32;
  *(v31 + 64) = v33;
  *(v31 + 32) = v30;
  sub_1D77045A0();
  sub_1D7703ED0("Configuring PromotedContent prefetch limit: %d", 1);

  [v23 setContextPrefetchLimit_];
  if (*(a3 + 56) != 1)
  {
LABEL_44:
    sub_1D7703D70();
    return sub_1D7703D60();
  }

  __swift_project_boxed_opaque_existential_1((a3 + 16), *(a3 + 40));
  sub_1D7665328(0, &qword_1EE0B0EC0, &protocol descriptor for PPTType);
  result = sub_1D7703410();
  if (v62 != 0.0)
  {
    sub_1D7667CB8(&v60, v63);
    v34 = swift_allocObject();
    *(v34 + 16) = v58;
    *&v60 = 0;
    *(&v60 + 1) = 0xE000000000000000;
    v35 = v64;
    v36 = v65;
    __swift_project_boxed_opaque_existential_1(v63, v64);
    v37 = (*(v36 + 48))(v35, v36);
    if (v37 > 2)
    {
      switch(v37)
      {
        case 3:
          v38 = 3360081;
          goto LABEL_35;
        case 4:
          v38 = 3425617;
          goto LABEL_35;
        case 5:
          v38 = 3491153;
          goto LABEL_35;
      }
    }

    else
    {
      switch(v37)
      {
        case 0:
          v39 = 0xEA00000000006E6FLL;
          v38 = 0x69746375646F7270;
LABEL_36:
          MEMORY[0x1DA6FF0D0](v38, v39);

          v40 = v60;
          *(v34 + 56) = MEMORY[0x1E69E6158];
          *(v34 + 64) = sub_1D7668854();
          *(v34 + 32) = v40;
          v41 = sub_1D77045A0();
          sub_1D7703ED0("Configuring PromotedContent to use %{public}@ server", 52, 2, &dword_1D7662000, v5, v41, v34);

          v42 = [objc_opt_self() sharedInstance];
          if (v42)
          {
            v43 = v42;
            v44 = v64;
            v45 = v65;
            __swift_project_boxed_opaque_existential_1(v63, v64);
            [v43 setServerToTest_];
          }

          v46 = objc_allocWithZone(MEMORY[0x1E695E000]);
          v47 = sub_1D7704230();
          v48 = [v46 initWithSuiteName_];

          if (!v48)
          {
            v53 = sub_1D7704590();
            sub_1D7703ED0("Failed to find com.apple.AdPlatforms UserDefaults", 49, 2, &dword_1D7662000, v5, v53, MEMORY[0x1E69E7CC0]);
            return __swift_destroy_boxed_opaque_existential_1(v63);
          }

          v49 = v64;
          v50 = v65;
          __swift_project_boxed_opaque_existential_1(v63, v64);
          if ((*(v50 + 32))(v49, v50))
          {
            v51 = sub_1D7704230();
            v52 = sub_1D7704230();
            [v48 setObject:v51 forKey:v52];
          }

          else
          {
            v52 = sub_1D7704230();
            [v48 removeObjectForKey_];
          }

          v54 = v64;
          v55 = v65;
          __swift_project_boxed_opaque_existential_1(v63, v64);
          LOBYTE(v54) = (*(v55 + 40))(v54, v55);
          v56 = sub_1D7704230();
          [v48 setBool:v54 & 1 forKey:v56];

          __swift_destroy_boxed_opaque_existential_1(v63);
          goto LABEL_44;
        case 1:
          v39 = 0xE300000000000000;
          v38 = 3229009;
          goto LABEL_36;
        case 2:
          v38 = 3294545;
LABEL_35:
          v39 = 0xE300000000000000;
          goto LABEL_36;
      }
    }

    v39 = 0xE700000000000000;
    v38 = 0x6E776F6E6B6E75;
    goto LABEL_36;
  }

LABEL_47:
  __break(1u);
  return result;
}

uint64_t sub_1D767BF9C(uint64_t a1, char a2)
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

  sub_1D7704880();
LABEL_9:
  result = sub_1D7704770();
  *v2 = result;
  return result;
}

uint64_t sub_1D767C03C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1D7704880();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1D7704880();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1D768B308(0, &qword_1EC9BD168, type metadata accessor for AdContextBuilder);
          sub_1D768B35C(&qword_1EC9BD170, &qword_1EC9BD168, type metadata accessor for AdContextBuilder);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_1D76ADA90(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for AdContextBuilder();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

char *sub_1D767C1DC(char *result, int64_t a2, char a3, char *a4, unint64_t *a5, uint64_t a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_1D7678458(0, a5, a6, MEMORY[0x1E69E6F90]);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[16 * v10])
    {
      memmove(v15, v16, 16 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

char *sub_1D767C300(char *a1, int64_t a2, char a3)
{
  result = sub_1D767C1DC(a1, a2, a3, *v3, &qword_1EE0AEC10, &type metadata for AdContextBuilderSnapshot.Entry);
  *v3 = result;
  return result;
}

uint64_t AdContextBuilder.__deallocating_deinit()
{
  AdContextBuilder.deinit();

  return swift_deallocClassInstance();
}

void *AdContextBuilder.deinit()
{

  v1 = *(v0 + 16);
  *(v0 + 16) = 0;

  if (v1)
  {
    do
    {

      if (!swift_isUniquelyReferenced_native())
      {
        break;
      }

      v2 = *(v1 + 16);
      swift_retain_n();

      v1 = v2;
    }

    while (v2);
  }

  return v0;
}

uint64_t sub_1D767C3F4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *a2;
  (*(*(a3 - 8) + 32))(a5, a1);
  result = type metadata accessor for AdContext(0, a3, a4, v9);
  *(a5 + *(result + 36)) = v8;
  return result;
}

uint64_t AdManager.createRequest<A, B, C>(for:context:placement:)@<X0>(uint64_t **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v5 = v4;
  v96 = a3;
  v9 = *a1;
  v87 = (*a1)[13];
  v85 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v86 = v66 - v10;
  v12 = *(v11 + 88);
  v13 = *(v11 + 112);
  v15 = type metadata accessor for AdContext(0, v12, v13, v14);
  v82 = *(v15 - 8);
  v83 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v84 = v66 - v16;
  v80 = sub_1D7702FA0();
  v79 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v18 = v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_1D7703140();

  if (v92 == 1)
  {
    v71 = v18;
    v78 = a4;
    v19 = v4[6];
    v20 = v5[7];
    __swift_project_boxed_opaque_existential_1(v5 + 3, v5[6]);
    v21 = *(v20 + 16);
    v22 = v9[12];
    v23 = v9[15];
    v24 = v9[16];
    v76 = v12;
    v75 = v13;
    v21(&v92, a1, a2, v12, v22, v87, v13, v23, v24, v19, v20);
    v74 = v92;
    v90 = v92;
    v91 = v93;
    v72 = v93;
    v77 = a2;
    sub_1D767CF5C(a1, a2, v96, &v92);
    v66[1] = v5;
    if (qword_1EE0AF008 != -1)
    {
      swift_once();
    }

    v25 = qword_1EE0AF010;
    sub_1D76694D8(0, &qword_1EE0AEBF0, &qword_1EE0AEBC0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v66[2] = v26;
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_1D7708FD0;
    v28 = *(v24 + 8);
    v29 = v87;
    v69 = v24 + 8;
    v68 = v28;
    v30 = v28(v87, v24);
    v32 = v31;
    v33 = MEMORY[0x1E69E6158];
    *(v27 + 56) = MEMORY[0x1E69E6158];
    v34 = sub_1D7668854();
    *(v27 + 32) = v30;
    *(v27 + 40) = v32;
    v36 = a1[2];
    v35 = a1[3];
    *(v27 + 96) = v33;
    *(v27 + 104) = v34;
    *(v27 + 64) = v34;
    *(v27 + 72) = v36;
    v67 = v36;
    *(v27 + 80) = v35;
    v70 = v35;

    v37 = sub_1D77045A0();
    v73 = v25;
    sub_1D7703ED0("Prewarming advertisement for placement=%{public}@, ad=%{public}@", 64, 2, &dword_1D7662000, v25, v37, v27);

    v38 = v94;
    v39 = v95;
    __swift_project_boxed_opaque_existential_1(&v92, v94);
    v40 = *(v39 + 16);
    v81 = v24;
    v40(v96, v29, v24, v38, v39);
    v41 = v71;
    sub_1D7702F90();
    v42 = sub_1D7702F70();
    v44 = v43;
    (*(v79 + 8))(v41, v80);
    sub_1D7667C54(&v92, &v90);
    v88 = v42;
    v89 = v44;

    sub_1D77035F0();

    v45 = v72;
    if (v72)
    {
      v46 = swift_allocObject();
      *(v46 + 16) = xmmword_1D7709070;

      v47 = v68(v29, v81);
      v48 = MEMORY[0x1E69E6158];
      *(v46 + 56) = MEMORY[0x1E69E6158];
      *(v46 + 64) = v34;
      *(v46 + 32) = v47;
      *(v46 + 40) = v49;
      *(v46 + 96) = v48;
      *(v46 + 104) = v34;
      v50 = v70;
      *(v46 + 72) = v67;
      *(v46 + 80) = v50;
      *(v46 + 136) = v48;
      *(v46 + 144) = v34;
      *(v46 + 112) = v42;
      *(v46 + 120) = v44;
      *(v46 + 176) = v48;
      *(v46 + 184) = v34;
      v51 = v74;
      *(v46 + 152) = v74;
      *(v46 + 160) = v45;

      v52 = sub_1D77045A0();
      sub_1D7703ED0("Creating request for placement=%{public}@, ad=%{public}@, request=%{public}@, previewId=%{public}@", 98, 2, &dword_1D7662000, v73, v52, v46);
      v53 = v77;
      v54 = v76;
      v55 = v75;
    }

    else
    {
      v58 = swift_allocObject();
      *(v58 + 16) = xmmword_1D7709050;
      v59 = v68(v29, v81);
      v60 = MEMORY[0x1E69E6158];
      *(v58 + 56) = MEMORY[0x1E69E6158];
      *(v58 + 64) = v34;
      *(v58 + 32) = v59;
      *(v58 + 40) = v61;
      *(v58 + 96) = v60;
      *(v58 + 104) = v34;
      v62 = v70;
      *(v58 + 72) = v67;
      *(v58 + 80) = v62;
      *(v58 + 136) = v60;
      *(v58 + 144) = v34;
      *(v58 + 112) = v42;
      *(v58 + 120) = v44;

      v63 = sub_1D77045A0();
      sub_1D7703ED0("Creating request for placement=%{public}@, ad=%{public}@, request=%{public}@", 76, 2, &dword_1D7662000, v73, v63, v58);
      v53 = v77;
      v54 = v76;
      v55 = v75;
      v51 = v74;
    }

    v64 = v84;
    (*(v82 + 16))(v84, v53, v83);
    v65 = v86;
    (*(v85 + 16))(v86, v96, v29);
    v90 = v51;
    v91 = v45;
    sub_1D767E444(v42, v44, v64, v65, &v90, v54, v29, v55, v78, v81);
    return __swift_destroy_boxed_opaque_existential_1(&v92);
  }

  else
  {
    sub_1D76EFB04();
    swift_allocError();
    *v56 = 2;
    return swift_willThrow();
  }
}

uint64_t sub_1D767CC64@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t **a3@<X8>)
{
  v4 = v3;
  v7 = a1[2];
  v8 = a1[3];
  v9 = *a1;
  swift_beginAccess();
  v10 = *(v3 + 16);
  if (!*(v10 + 16) || (v11 = sub_1D76689AC(v7, v8), (v12 & 1) == 0))
  {
    result = swift_endAccess();
    goto LABEL_6;
  }

  v13 = *(*(v10 + 56) + 8 * v11);
  v35 = v13;
  v14 = swift_endAccess();
  v15 = &v32;
  MEMORY[0x1EEE9AC00](v14);
  v16 = *(v9 + 104);
  v30[1] = *(v9 + 88);
  v30[2] = v16;
  v30[3] = *(v9 + 120);
  v31 = a2;
  swift_bridgeObjectRetain_n();
  sub_1D76A7FC8(sub_1D76A8194, v30, v13);
  v18 = v17;
  v20 = v19;

  if (v20)
  {

LABEL_6:
    *a3 = 0;
    a3[1] = 0;
    return result;
  }

  if ((v18 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v18 >= *(v13 + 16))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v22 = v13 + 32 * v18;
  v15 = *(v22 + 32);
  v20 = *(v22 + 40);

  sub_1D76A808C(v18, v34);

  v23 = v35;
  swift_beginAccess();
  swift_bridgeObjectRetain_n();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v33 = *(v4 + 16);
  *(v4 + 16) = 0x8000000000000000;
  sub_1D76CBEEC(v23, v7, v8, isUniquelyReferenced_nonNull_native);

  *(v4 + 16) = v33;
  swift_endAccess();
  if (qword_1EE0AF008 != -1)
  {
LABEL_13:
    swift_once();
  }

  v25 = qword_1EE0AF010;
  sub_1D766DF6C(0);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1D7708FD0;
  v27 = MEMORY[0x1E69E6158];
  *(v26 + 56) = MEMORY[0x1E69E6158];
  v28 = sub_1D7668854();
  *(v26 + 32) = v7;
  *(v26 + 40) = v8;
  *(v26 + 96) = v27;
  *(v26 + 104) = v28;
  *(v26 + 64) = v28;
  *(v26 + 72) = v15;
  *(v26 + 80) = v20;

  v29 = sub_1D77045A0();
  sub_1D7703ED0("Dequeuing ad preview, ad=%{public}@, identifier=%{public}@", 58, 2, &dword_1D7662000, v25, v29, v26);

  *a3 = v15;
  a3[1] = v20;
  return result;
}

uint64_t sub_1D767CF5C@<X0>(uint64_t **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = *a1;
  v9 = (*a1)[13];
  MEMORY[0x1EEE9AC00](a1);
  v13 = *v11;
  v12 = v11[1];
  (*(v14 + 16))(&v34 - v10, v15, v9);
  sub_1D767D318();
  if (swift_dynamicCast())
  {
    v34 = v13;
    v35 = v12;
    v36 = a2;
    v37 = a4;
    sub_1D76EFCC0(&v40, v43);
    v17 = v44;
    v16 = v45;
    __swift_project_boxed_opaque_existential_1(v43, v44);
    v18 = v16[1];

    v38 = v18(v17, v16);
    v39 = v19;
    sub_1D77035E0();

    if (*(&v41 + 1))
    {
      sub_1D7667CB8(&v40, v37);
    }

    else
    {
      sub_1D76EFB58(&v40, &qword_1EE0AF0C0, qword_1EE0AF0C8, &protocol descriptor for PromotedContentContextWrapperType);
      __swift_project_boxed_opaque_existential_1((v4 + 64), *(v4 + 88));
      v24 = type metadata accessor for AdContext(0, v8[11], v8[14], v23);
      *(&v41 + 1) = v24;
      *&v42 = &protocol witness table for AdContext<A>;
      *(&v42 + 1) = &protocol witness table for AdContext<A>;
      boxed_opaque_existential_2 = __swift_allocate_boxed_opaque_existential_2(&v40);
      (*(*(v24 - 8) + 16))(boxed_opaque_existential_2, v36, v24);
      v38 = v34;
      v39 = v35;
      v26 = v37;
      sub_1D767D438(&v40, a3, &v38, v9, v8[16], v37);
      __swift_destroy_boxed_opaque_existential_1(&v40);
      v27 = v44;
      v28 = v45;
      __swift_project_boxed_opaque_existential_1(v43, v44);
      v29 = v28[1];

      v30 = v29(v27, v28);
      v32 = v31;
      sub_1D7667C54(v26, &v40);
      v38 = v30;
      v39 = v32;
      sub_1D77035F0();
    }
  }

  else
  {
    v41 = 0u;
    v42 = 0u;
    v40 = 0u;
    sub_1D767D3DC(&v40);
    __swift_project_boxed_opaque_existential_1((v4 + 64), *(v4 + 88));
    v21 = type metadata accessor for AdContext(0, v8[11], v8[14], v20);
    v44 = v21;
    v45 = &protocol witness table for AdContext<A>;
    v46 = &protocol witness table for AdContext<A>;
    v22 = __swift_allocate_boxed_opaque_existential_2(v43);
    (*(*(v21 - 8) + 16))(v22, a2, v21);
    *&v40 = v13;
    *(&v40 + 1) = v12;
    sub_1D767D438(v43, a3, &v40, v9, v8[16], a4);
  }

  return __swift_destroy_boxed_opaque_existential_1(v43);
}

unint64_t sub_1D767D318()
{
  result = qword_1EE0AFAD0;
  if (!qword_1EE0AFAD0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE0AFAD0);
  }

  return result;
}

void sub_1D767D384(uint64_t a1)
{
  if (!qword_1EE0AFAC8)
  {
    sub_1D767D318();
    v1 = sub_1D77046B0();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE0AFAC8);
    }
  }
}

uint64_t sub_1D767D3DC(uint64_t a1)
{
  sub_1D767D384(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D767D438@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v11 = *a3;
  v10 = a3[1];
  sub_1D767D4C4(a1, v14);
  v13[0] = v11;
  v13[1] = v10;

  result = sub_1D767D528(v14, a2, v13, a4, a5);
  a6[3] = &type metadata for PromotedContentContextWrapper;
  a6[4] = &off_1F5255318;
  *a6 = result;
  return result;
}

uint64_t sub_1D767D4C4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1D767D528(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  sub_1D767D708(a2, a4);
  v6 = a1[3];
  v7 = a1[5];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  (*(v7 + 16))(v6, v7);
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  (*(v9 + 8))(v8, v9);
  v10 = objc_allocWithZone(sub_1D7703850());
  v11 = sub_1D7703840();
  v12 = a1[3];
  v13 = a1[5];
  __swift_project_boxed_opaque_existential_1(a1, v12);
  if ((*(v13 + 8))(v12, v13))
  {
    sub_1D7703820();
    swift_unknownObjectRelease();
  }

  v14 = a1[3];
  v15 = a1[5];
  __swift_project_boxed_opaque_existential_1(a1, v14);
  if ((*(v15 + 24))(v14, v15))
  {
    sub_1D7703820();
    swift_unknownObjectRelease();
  }

  v16 = sub_1D7703830();

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v16;
}

double sub_1D767D708(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1EEE9AC00](a1);
  (*(v3 + 16))(v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D767D894();
  if (swift_dynamicCast())
  {
    sub_1D7667CB8(v10, v12);
    v4 = v13;
    v5 = v14;
    __swift_project_boxed_opaque_existential_1(v12, v13);
    v6 = (*(v5 + 8))(v4, v5);
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    v11 = 0;
    memset(v10, 0, sizeof(v10));
    sub_1D767D8F8(v10);
    v7 = [objc_opt_self() mainScreen];
    [v7 bounds];
    v6 = v8;
  }

  return v6;
}

unint64_t sub_1D767D894()
{
  result = qword_1EE0AF6B0;
  if (!qword_1EE0AF6B0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE0AF6B0);
  }

  return result;
}

uint64_t sub_1D767D8F8(uint64_t a1)
{
  sub_1D7672EB8(0, &qword_1EE0AF6A8, sub_1D767D894, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SponsorshipAdContext.currentPromotableContentDepiction.getter()
{
  v19 = sub_1D7702FD0();
  v1 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D7702FA0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v0[1];
  v9 = v0[6];
  v10 = v0[10];
  v11 = v0[15];
  v15 = v0[16];
  if (v10)
  {
    v18 = v0[9];
    if (v0[18])
    {
      v16 = v0[17];

      v17 = v10;
      goto LABEL_8;
    }

    v17 = v10;
    if (!*(v8 + 16))
    {
      goto LABEL_7;
    }

LABEL_5:
    v16 = *(v8 + 32);

    goto LABEL_8;
  }

  sub_1D7702F90();
  v12 = sub_1D7702F70();
  v17 = v13;
  v18 = v12;
  (*(v5 + 8))(v7, v4);
  if (*(v8 + 16))
  {
    goto LABEL_5;
  }

LABEL_7:

  v16 = 28261;
LABEL_8:
  sub_1D7702FC0();
  sub_1D7702FB0();
  (*(v1 + 8))(v3, v19);
  if (v10)
  {
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v20 = v9;

  sub_1D7669540(v11);
  if (v10)
  {
  }

  sub_1D7703780();
  return sub_1D7703770();
}

id SponsorshipAdContext.newsSupplementalContext.getter()
{
  v1 = *(v0 + 32);
  v21 = *(v0 + 24);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  v5 = *(v0 + 64);
  v6 = *(v0 + 120);
  *v37 = *(v0 + 104);
  *&v37[16] = v6;
  v38 = *(v0 + 136);
  v39 = *(v0 + 152);
  v7 = *(v0 + 88);
  v35 = *(v0 + 72);
  v36 = v7;
  v20 = *(v0 + 160);
  v8 = objc_allocWithZone(sub_1D7703D00());

  sub_1D767DFA0(&v35, &v29);
  v9 = [v8 init];
  sub_1D7703CF0();
  sub_1D7703AE0();
  sub_1D7703B50();

  sub_1D7703C00();

  *&v29 = v21;
  *(&v29 + 1) = v1;
  *&v30 = v2;
  *(&v30 + 1) = v3;
  *&v31 = v4;
  *(&v31 + 1) = v5;
  sub_1D767E054(&v29);
  sub_1D768AB68(v29, *(&v29 + 1), v30, *(&v30 + 1));
  v10 = v35;
  v11 = v36;
  v12 = BYTE8(v36);
  if (*(&v35 + 1))
  {
    v19 = v38;
    v22 = *&v37[8];
    v13 = *&v37[24];
    v14 = *v37;

    sub_1D7680928(&v35);
    v15 = v22;
    v16 = v19;
    v12 &= 1u;
    v17 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v28[0] = *(&v36 + 9);
    *(v28 + 3) = HIDWORD(v36);
    v15 = *&v37[8];
    v14 = *v37;
    v13 = *&v37[24];
    v16 = v38;
    v17 = v39;
  }

  v23 = v10;
  *&v24 = v11;
  BYTE8(v24) = v12;
  *(&v24 + 9) = v28[0];
  HIDWORD(v24) = *(v28 + 3);
  *v25 = v14;
  *&v25[8] = v15;
  *&v25[24] = v13;
  v26 = v16;
  v27 = v17;
  sub_1D768078C(&v23);
  v31 = *v25;
  v32 = *&v25[16];
  v33 = v26;
  v34 = v27;
  v29 = v23;
  v30 = v24;
  sub_1D7680928(&v29);
  if (v20 < 4)
  {
    sub_1D7703AF0();
    sub_1D768ABAC();
    sub_1D7704680();
    sub_1D7703C70();
  }

  return v9;
}

uint64_t sub_1D767DFA0(uint64_t a1, uint64_t a2)
{
  sub_1D767E004();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D767E004()
{
  if (!qword_1EE0B0468)
  {
    v0 = sub_1D77046B0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0B0468);
    }
  }
}

uint64_t sub_1D767E054(uint64_t *a1)
{
  sub_1D767E214(0);
  result = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a1[1])
  {
    v6 = a1[2];
    if ((a1[4] & 1) != 0 || a1[5] >= 1)
    {
    }

    sub_1D7703BF0();
    v7 = sub_1D7703900();
    v8 = *(v7 - 8);
    (*(v8 + 104))(v5, **(&unk_1E84DE278 + v6), v7);
    sub_1D7703900();
    (*(v8 + 56))(v5, 0, 1, v7);
    sub_1D7703BD0();
    v9 = sub_1D7703B20();
    if (*v10)
    {

      sub_1D7669540(v11);
      return v9(v12, 0);
    }

    else
    {
      v9(v12, 0);

      return sub_1D7703B40();
    }
  }

  return result;
}

void sub_1D767E214(uint64_t a1)
{
  if (!qword_1EE0AEA50)
  {
    sub_1D7703900();
    v1 = sub_1D77046B0();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE0AEA50);
    }
  }
}

uint64_t sub_1D767E294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D7672EB8(0, &qword_1EE0AEC78, MEMORY[0x1E69C6038], MEMORY[0x1E69E6F90]);
  sub_1D77038B0();
  *(swift_allocObject() + 16) = xmmword_1D7708FE0;
  (*(a4 + 16))(a3, a4);
  sub_1D7703D30();
}

uint64_t sub_1D767E3D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_1D77038B0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1D767E444@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10)
{
  v16 = *a5;
  v17 = a5[1];
  *a9 = a1;
  *(a9 + 1) = a2;
  v24[0] = a6;
  v24[1] = a7;
  v24[2] = a8;
  v24[3] = a10;
  v18 = type metadata accessor for AdRequest(0, v24);
  v19 = v18[13];
  v21 = type metadata accessor for AdContext(0, a6, a8, v20);
  (*(*(v21 - 8) + 32))(&a9[v19], a3, v21);
  result = (*(*(a7 - 8) + 32))(&a9[v18[14]], a4, a7);
  v23 = &a9[v18[15]];
  *v23 = v16;
  *(v23 + 1) = v17;
  return result;
}

uint64_t Journal.addPrewarmedEntry(request:placementIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = a1;
  v7 = *(*v3 + 88);
  v8 = *(*v3 + 96);
  v9 = *(*v3 + 104);
  v17[0] = *(*v3 + 80);
  v6 = v17[0];
  v17[1] = v7;
  v17[2] = v8;
  v17[3] = v9;
  v10 = type metadata accessor for JournalEntry(0, v17);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v15 - v12;
  sub_1D767E6C0(a2, a3, v16, v6, v7, v8, v9, &v15 - v12);
  sub_1D766FFCC(v13, a2, a3);
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_1D767E6C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  v22 = a8;
  v23 = a1;
  *&v24 = a4;
  *(&v24 + 1) = a5;
  *&v25 = a6;
  *(&v25 + 1) = a7;
  v14 = type metadata accessor for AdRequest(255, &v24);
  v15 = sub_1D77046B0();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v22 - v16;
  v28 = 0x8000000000000010;
  v29 = 0;
  v30 = 0;
  v18 = a3 + *(v14 + 52);
  v27 = *(v18 + *(type metadata accessor for AdContext(0, a4, a6, v19) + 36));
  v24 = 0u;
  v25 = 0u;
  v26 = 1;
  v20 = *(v14 - 8);
  (*(v20 + 16))(v17, a3, v14);
  (*(v20 + 56))(v17, 0, 1, v14);

  return sub_1D766FA5C(v23, a2, &v28, 0, 0, &v27, &v24, v17, v22, a4, a5, a6, a7);
}

uint64_t AdRequestStore.store(request:for:)(void *a1, uint64_t a2, uint64_t a3)
{
  v44 = a2;
  v6 = *(*v3 + 96);
  v47[0] = *(*v3 + 80);
  v47[1] = v6;
  v7 = type metadata accessor for AdRequest(255, v47);
  v42 = sub_1D77046B0();
  v8 = *(v42 - 8);
  v9 = MEMORY[0x1EEE9AC00](v42);
  v41 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v35 - v11);
  sub_1D7703340();
  v13 = *(v7 - 8);
  v14 = *(v13 + 48);
  v43 = a1;
  if (v14(a1, 1, v7) != 1)
  {
    v39 = v3;
    v40 = v7;
    if (qword_1EE0AF008 != -1)
    {
      swift_once();
    }

    v38 = qword_1EE0AF010;
    sub_1D766DF6C(0);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1D7708FD0;
    *(v20 + 56) = MEMORY[0x1E69E6158];
    v36 = sub_1D7668854();
    *(v20 + 64) = v36;
    v21 = v43;
    *(v20 + 32) = v44;
    *(v20 + 40) = a3;
    v22 = v42;
    v37 = *(v8 + 16);
    v37(v12, v21, v42);
    v23 = v40;
    if (v14(v12, 1, v40) == 1)
    {
      v24 = *(v8 + 8);
      v25 = a3;

      v24(v12, v22);
      v26 = (v20 + 72);
      v27 = v36;
      *(v20 + 96) = MEMORY[0x1E69E6158];
      *(v20 + 104) = v27;
      v28 = v22;
    }

    else
    {
      v30 = *v12;
      v29 = v12[1];
      v31 = *(v13 + 8);
      v25 = a3;

      v31(v12, v23);
      v26 = (v20 + 72);
      v32 = v36;
      *(v20 + 96) = MEMORY[0x1E69E6158];
      *(v20 + 104) = v32;
      if (v29)
      {
        *v26 = v30;
        v28 = v42;
LABEL_13:
        *(v20 + 80) = v29;
        v33 = sub_1D77045A0();
        sub_1D7703ED0("Storing request for key=%{public}@, requestIdentifier=%{public}@", 64, 2, &dword_1D7662000, v38, v33, v20);

        v19 = v25;
        v17 = v44;
        v37(v41, v43, v28);
        goto LABEL_14;
      }

      v28 = v42;
    }

    *v26 = 0;
    v29 = 0xE000000000000000;
    goto LABEL_13;
  }

  if (qword_1EE0AF008 != -1)
  {
    swift_once();
  }

  v15 = qword_1EE0AF010;
  sub_1D766DF6C(0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1D7708FE0;
  *(v16 + 56) = MEMORY[0x1E69E6158];
  *(v16 + 64) = sub_1D7668854();
  v17 = v44;
  *(v16 + 32) = v44;
  *(v16 + 40) = a3;

  v18 = sub_1D77045A0();
  sub_1D7703ED0("Removing request for key=%{public}@", 35, 2, &dword_1D7662000, v15, v18, v16);

  v19 = a3;
  (*(v8 + 16))(v41, v43, v42);
LABEL_14:
  v45 = v17;
  v46 = v19;
  swift_beginAccess();
  sub_1D77041B0();

  sub_1D77041D0();
  swift_endAccess();
  return sub_1D7703350();
}

void sub_1D767ECFC(uint64_t a1)
{
  v2 = v1;
  sub_1D767EDD0(a1, v8);
  if (v8[104] == 255)
  {
    sub_1D767EEB8(v8);
  }

  else
  {
    v3 = SponsorshipAdInfo.metricsView.getter();
    sub_1D7680CFC(v8);
    if (v3)
    {
      v4 = [v3 superview];
      if (v4 && (v5 = v4, v4, v5 == v2))
      {
      }

      else
      {
        v6 = OBJC_IVAR____TtC7NewsAds17AdSponsorshipView_metricsView;
        [*&v2[OBJC_IVAR____TtC7NewsAds17AdSponsorshipView_metricsView] removeFromSuperview];
        [v2 addSubview_];
        v7 = *&v2[v6];
        *&v2[v6] = v3;
      }
    }
  }
}

uint64_t sub_1D767EDD0(uint64_t a1, uint64_t a2)
{
  sub_1D767EE68();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D767EE68()
{
  if (!qword_1EE0AFCB8)
  {
    v0 = sub_1D77046B0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0AFCB8);
    }
  }
}

uint64_t sub_1D767EEB8(uint64_t a1)
{
  sub_1D767EE68();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_1D767EF14()
{
  v1 = v0;
  sub_1D7669AF0(0);
  v2 = *v0;
  v3 = sub_1D7704890();
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
        v22 = 40 * v17;
        sub_1D7667C54(*(v2 + 56) + 40 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1D7667CB8(v25, *(v4 + 56) + v22);
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

uint64_t static Ads.sponsorship.getter()
{
  sub_1D766C744(0);

  return swift_initStaticObject();
}

uint64_t AdManager.adProvider<A, B, C>(for:request:)(uint64_t *a1, uint64_t *a2)
{
  v5 = *a1;

  sub_1D7703140();

  if (v56[0] != 1)
  {
    sub_1D76EFB04();
    swift_allocError();
    *v11 = 2;
    return swift_willThrow();
  }

  v7 = a1[2];
  v6 = a1[3];
  swift_beginAccess();
  v8 = *(v2 + 104);
  if (*(v8 + 16) && (v9 = sub_1D76689AC(v7, v6), (v10 & 1) != 0))
  {
    sub_1D767F844(*(v8 + 56) + 32 * v9, &v53);
  }

  else
  {
    v53 = 0u;
    v54 = 0u;
  }

  swift_endAccess();
  if (!*(&v54 + 1))
  {
    sub_1D76939B0(&v53, &unk_1EE0AEBB0, MEMORY[0x1E69E7CA0] + 8);
    goto LABEL_14;
  }

  v12 = *(v5 + 96);
  v13 = *(v5 + 128);
  *&v50 = *(v5 + 88);
  *(&v50 + 1) = *(v5 + 104);
  *v56 = v50;
  *&v56[8] = v12;
  *&v56[16] = *(&v50 + 1);
  v49 = *(v5 + 112);
  v57 = v49;
  v58 = v13;
  v14 = type metadata accessor for Ad(255, v56);
  type metadata accessor for AnyFactory(0, v14, v12, v15);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_14:
    v26 = v7;
    v59 = v6;
    if (qword_1EE0AF008 != -1)
    {
      swift_once();
    }

    v27 = qword_1EE0AF010;
    v28 = sub_1D7704590();
    sub_1D76694D8(0, &qword_1EE0AEBF0, &qword_1EE0AEBC0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_1D7708FD0;
    v30 = *(v5 + 128);
    *v56 = *(v5 + 88);
    *&v56[8] = *(v5 + 104);
    v51 = *&v56[8];
    *&v57 = v30;
    type metadata accessor for AdRequest(0, v56);
    v31 = (*(v30 + 8))(v51, v30);
    v33 = v32;
    v34 = MEMORY[0x1E69E6158];
    *(v29 + 56) = MEMORY[0x1E69E6158];
    v35 = sub_1D7668854();
    *(v29 + 32) = v31;
    *(v29 + 40) = v33;
    *(v29 + 96) = v34;
    *(v29 + 104) = v35;
    *(v29 + 64) = v35;
    *(v29 + 72) = v26;
    *(v29 + 80) = v59;

    sub_1D7703ED0("Attempted to fetch an ad provider without first registering a factory, placement=%{public}@, ad=%{public}@", 106, 2, &dword_1D7662000, v27, v28, v29);

    sub_1D76EFB04();
    swift_allocError();
    *v36 = 0;
    return swift_willThrow();
  }

  v16 = a2[1];
  v47 = *a2;

  sub_1D77035E0();

  if (*(&v54 + 1))
  {
    v46 = v7;
    v59 = v6;
    sub_1D7667CB8(&v53, v56);
    if (qword_1EE0AF008 != -1)
    {
      swift_once();
    }

    v45 = qword_1EE0AF010;
    sub_1D76694D8(0, &qword_1EE0AEBF0, &qword_1EE0AEBC0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1D7709050;
    v53 = v50;
    *&v54 = v49;
    *(&v54 + 1) = v13;
    type metadata accessor for AdRequest(0, &v53);
    v18 = (*(v13 + 8))(*(&v50 + 1), v13);
    v20 = v19;
    v21 = MEMORY[0x1E69E6158];
    *(v17 + 56) = MEMORY[0x1E69E6158];
    v22 = sub_1D7668854();
    *(v17 + 32) = v18;
    *(v17 + 40) = v20;
    *(v17 + 96) = v21;
    *(v17 + 104) = v22;
    *(v17 + 64) = v22;
    *(v17 + 72) = v46;
    *(v17 + 80) = v59;
    *(v17 + 136) = v21;
    *(v17 + 144) = v22;
    *(v17 + 112) = v47;
    *(v17 + 120) = v16;
    swift_bridgeObjectRetain_n();

    v23 = sub_1D77045A0();
    sub_1D7703ED0("Creating ad provider from request, placement=%{public}@, ad=%{public}@, request=%{public}@", 90, 2, &dword_1D7662000, v45, v23, v17);

    v55 = 0;
    v53 = 0u;
    v54 = 0u;

    sub_1D77035F0();

    v24 = *(v52 + 16);
    *&v53 = a1;

    v24(&v53, v56);

    return __swift_destroy_boxed_opaque_existential_1(v56);
  }

  else
  {
    v37 = v7;
    sub_1D76EFB58(&v53, &qword_1EE0AF0C0, qword_1EE0AF0C8, &protocol descriptor for PromotedContentContextWrapperType);
    if (qword_1EE0AF008 != -1)
    {
      swift_once();
    }

    v59 = qword_1EE0AF010;
    v48 = sub_1D7704590();
    sub_1D76694D8(0, &qword_1EE0AEBF0, &qword_1EE0AEBC0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_1D7709050;
    *(v38 + 56) = MEMORY[0x1E69E6158];
    v39 = sub_1D7668854();
    *(v38 + 64) = v39;
    *(v38 + 32) = v37;
    *(v38 + 40) = v6;
    *v56 = v50;
    *&v56[16] = v49;
    *&v57 = v13;
    type metadata accessor for AdRequest(0, v56);
    v40 = *(v13 + 8);

    v41 = v40(*(&v50 + 1), v13);
    v42 = MEMORY[0x1E69E6158];
    *(v38 + 96) = MEMORY[0x1E69E6158];
    *(v38 + 104) = v39;
    *(v38 + 72) = v41;
    *(v38 + 80) = v43;
    *(v38 + 136) = v42;
    *(v38 + 144) = v39;
    *(v38 + 112) = v47;
    *(v38 + 120) = v16;

    sub_1D7703ED0("Requested an ad provider without prewarming, ad=%{public}@, placement=%{public}@, request=%{public}@", 100, 2, &dword_1D7662000, v59, v48, v38);

    sub_1D76EFB04();
    swift_allocError();
    *v44 = 1;
    swift_willThrow();
  }
}

uint64_t sub_1D767F844(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1D767F8A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v19[0] = a2;
  v19[1] = a3;
  MEMORY[0x1EEE9AC00](a1);
  (*(v16 + 16))(v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v20[0] = a6;
  v20[1] = a5;
  v20[2] = a7;
  v20[3] = a9;
  v20[4] = AssociatedConformanceWitness;
  v20[5] = a10;
  type metadata accessor for Ad(0, v20);
  swift_dynamicCast();
  (*(a11 + 24))(v20[0], v19[0], a6, a7, a9, a10, a8, a11);
}

uint64_t sub_1D767FAA0(uint64_t a1)
{
  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  type metadata accessor for SponsorshipAdProvider();
  sub_1D7667C54(a1, v6);
  v3 = swift_allocObject();
  sub_1D767FBE4(v6, v3 + 16);
  v4 = sub_1D77033F0();

  if (v4)
  {
    return v4;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D767FB6C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1D767FBA4@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  result = sub_1D767FAA0(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1D767FBF0(void *a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D767FC48();
  return sub_1D77033A0();
}

unint64_t sub_1D767FC48()
{
  result = qword_1EE0AF0C8[0];
  if (!qword_1EE0AF0C8[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_1EE0AF0C8);
  }

  return result;
}

uint64_t sub_1D767FCAC()
{
  type metadata accessor for ContentBannerAdProvider();
  sub_1D7703530();

  type metadata accessor for FeedBannerAdProvider();
  sub_1D7703530();

  type metadata accessor for InterstitialAdProvider();
  sub_1D7703530();

  type metadata accessor for NativeAdProvider();
  sub_1D7703530();

  type metadata accessor for SponsorshipAdProvider();
  sub_1D7703530();
}

void *sub_1D767FDDC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D767FC48();
  result = sub_1D7703410();
  if (v4)
  {
    type metadata accessor for SponsorshipAdProvider();
    v2 = swift_allocObject();
    *(v2 + 56) = 0u;
    *(v2 + 72) = 0u;
    *(v2 + 88) = 0;
    sub_1D7667CB8(&v3, v2 + 16);
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1D767FE78(uint64_t a1)
{
  if (!qword_1EE0AE670)
  {
    v4[0] = &type metadata for SponsorshipAdContext;
    v4[1] = type metadata accessor for SponsorshipAdPlacement(255);
    v4[2] = sub_1D766C808();
    v4[3] = &protocol witness table for SponsorshipAdPlacement;
    v2 = type metadata accessor for AdRequest(a1, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_1EE0AE670);
    }
  }
}

uint64_t sub_1D767FEF8()
{
  v0 = sub_1D7703210();
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v5 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v2, *MEMORY[0x1E69D6E90]);
  type metadata accessor for Settings.Ads.Debugging.DebugSponsorshipAd(0);
  swift_allocObject();
  result = Settings.Ads.Debugging.DebugSponsorshipAd.init(key:defaultValue:access:)(0xD000000000000034, 0x80000001D7718E10, 0, v2);
  qword_1EE0AEB48 = result;
  return result;
}

uint64_t Settings.Ads.Debugging.DebugSponsorshipAd.init(key:defaultValue:access:)(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v30 = a4;
  v33 = a3;
  v31 = a1;
  v32 = a2;
  v27 = sub_1D7703220();
  v4 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1D7703210();
  v28 = *(v22 - 8);
  v7 = v28;
  MEMORY[0x1EEE9AC00](v22);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = qword_1EE0AEB18;
  sub_1D7675B68(0, &qword_1EE0AEA60, sub_1D768055C, &type metadata for Settings.Ads.Debugging.DebugSponsorshipAd.SponsorshipFetchStrategy, MEMORY[0x1E69D6EB0]);
  v25 = v10;
  v21 = ".collapse_behavior";
  v38 = 0;
  v24 = *MEMORY[0x1E69D6E90];
  v23 = *(v7 + 104);
  v23(v9);
  sub_1D7676AC4(0, &qword_1EE0AE5A8, &qword_1EE0AEA68, &type metadata for Settings.Ads.Debugging.DebugSponsorshipAd.SponsorshipFetchStrategy);
  sub_1D7676DD4(0, &qword_1EE0AEA68, &type metadata for Settings.Ads.Debugging.DebugSponsorshipAd.SponsorshipFetchStrategy, MEMORY[0x1E69D6EA8]);
  *(swift_allocObject() + 16) = xmmword_1D7709050;
  v37 = 0;
  sub_1D7703230();
  v36 = 1;
  sub_1D7703230();
  v35 = 2;
  sub_1D7703230();
  v11 = *MEMORY[0x1E69D6EA0];
  v12 = *(v4 + 104);
  v13 = v27;
  v12(v6, v11, v27);
  sub_1D768060C();
  v14 = sub_1D7703240();
  v15 = v29;
  *(v29 + v26) = v14;
  v25 = "Randomly Fulfilled";
  v26 = qword_1EE0AEB20;
  v16 = v22;
  (v23)(v9, v24, v22);
  v12(v6, v11, v13);
  v34 = 0;
  sub_1D76681C4(0, &qword_1EE0B08A8, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0], MEMORY[0x1E69D6EB0]);
  swift_allocObject();
  *(v15 + v26) = sub_1D7703270();
  v17 = v28;
  v18 = v30;
  (*(v28 + 16))(v9, v30, v16);
  v19 = sub_1D77030A0();
  (*(v17 + 8))(v18, v16);
  return v19;
}

unint64_t sub_1D768055C()
{
  result = qword_1EE0AEAF8;
  if (!qword_1EE0AEAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0AEAF8);
  }

  return result;
}

unint64_t sub_1D76805B8()
{
  result = qword_1EE0AEB10;
  if (!qword_1EE0AEB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0AEB10);
  }

  return result;
}

unint64_t sub_1D768060C()
{
  result = qword_1EE0AEB00;
  if (!qword_1EE0AEB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0AEB00);
  }

  return result;
}

uint64_t sub_1D7680660(uint64_t a1)
{
  v2 = sub_1D76806B4();
  v3 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45770](a1, v2, v3);
}

unint64_t sub_1D76806B4()
{
  result = qword_1EE0AEB08;
  if (!qword_1EE0AEB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0AEB08);
  }

  return result;
}

void sub_1D7680708(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEF64656C6C69666CLL;
  v4 = 0xEE0064656C6C6966;
  v5 = 0x6E55737961776C61;
  if (v2 != 1)
  {
    v5 = 0x6D6F646E6172;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x7546737961776C61;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1D768078C(uint64_t result)
{
  if (*(result + 8))
  {
    v1 = *(result + 16);
    v2 = *(result + 72);
    v8 = *(result + 64);
    v3 = *(result + 80);
    if ((*(result + 24) & 1) != 0 || v1 >= 1)
    {
    }

    sub_1D7703BF0();

    sub_1D7703C20();

    sub_1D7703BB0();
    swift_bridgeObjectRetain_n();
    sub_1D7703B60();
    [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    sub_1D7703980();
    result = sub_1D7703B60();
    if (v2)
    {
      sub_1D76B9C1C();
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_1D7708FE0;
      *(v4 + 32) = v8;
      *(v4 + 40) = v2;

      result = sub_1D7703C00();
    }

    if (v3)
    {
      v5 = sub_1D7703B20();
      if (*v6)
      {

        sub_1D7669540(v7);
        return v5(v9, 0);
      }

      else
      {
        v5(v9, 0);

        return sub_1D7703B40();
      }
    }
  }

  return result;
}

uint64_t sub_1D7680928(uint64_t a1)
{
  sub_1D767E004();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D768098C(uint64_t a1)
{
  if (!qword_1EE0AE5C0)
  {
    sub_1D7678404(255, &qword_1EE0AED80, MEMORY[0x1E69E62F8]);
    v1 = sub_1D77046B0();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE0AE5C0);
    }
  }
}

uint64_t SponsorshipAdProvider.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  sub_1D7680A40(v0 + 56);

  return swift_deallocClassInstance();
}

uint64_t sub_1D7680A40(uint64_t a1)
{
  sub_1D766940C(0, &qword_1EE0AE6A8, qword_1EE0AE6B0, &protocol descriptor for SponsorshipAdProviderType, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t SponsorshipAdInfo.journal.getter()
{
  sub_1D7680B78(v0, v5);
  v3[4] = v7;
  v3[5] = v8;
  v4 = v9;
  v3[0] = v5[0];
  v3[1] = v5[1];
  v3[2] = v5[2];
  v3[3] = v6;
  v1 = v6;

  sub_1D7680BB0(v3);
  return v1;
}

_WORD *storeEnumTagSinglePayload for VideoAdData.CodingKeys(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_1D7680C5C(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    v2 = a2 - 2;
    *(result + 96) = 0;
    *(result + 64) = 0u;
    *(result + 80) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    LOBYTE(a2) = 2;
    *result = v2;
  }

  *(result + 104) = a2;
  return result;
}

__n128 __swift_memcpy105_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 89) = *(a2 + 89);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

BOOL SponsorshipAdInfo.isFulfilled.getter()
{
  sub_1D7680B78(v0, v3);
  v1 = v3[104];
  sub_1D7680CFC(v3);
  return (v1 & 1) == 0;
}

void sub_1D7680D74()
{
  v6.receiver = v0;
  v6.super_class = type metadata accessor for AdSponsorshipView();
  objc_msgSendSuper2(&v6, sel_layoutSubviews);
  v1 = OBJC_IVAR____TtC7NewsAds17AdSponsorshipView_metricsView;
  v2 = *&v0[OBJC_IVAR____TtC7NewsAds17AdSponsorshipView_metricsView];
  if (v2)
  {
    v3 = v2;
    [v0 bounds];
    [v3 setBounds_];

    v4 = *&v0[v1];
    if (v4)
    {
      v5 = v4;
      [v0 bounds];
      sub_1D7704640();
      [v5 setCenter_];
    }
  }
}

unint64_t JournalEntry.status.getter@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = (v2 + *(a1 + 60));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  *a2 = *v3;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  return sub_1D7672A08(v4, v5, v6, v7);
}

id sub_1D7680E4C()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  [v0 setDateStyle_];
  result = [v0 setTimeStyle_];
  qword_1EE0B03C0 = v0;
  return result;
}

uint64_t sub_1D7680EB0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1D77038B0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D7680F5C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1D77038B0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D7681000(uint64_t a1, int a2)
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

uint64_t sub_1D7681020(uint64_t a1, int a2)
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

uint64_t sub_1D7681040(uint64_t result, int a2, int a3)
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

uint64_t sub_1D7681068()
{
  MEMORY[0x1DA700140](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D76810A0()
{

  return swift_deallocObject();
}

uint64_t sub_1D76810D8()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D7681118()
{
  MEMORY[0x1DA700140](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D7681150()
{

  return swift_deallocObject();
}

uint64_t sub_1D7681188()
{

  return swift_deallocObject();
}

uint64_t sub_1D76811C8()
{

  return swift_deallocObject();
}

uint64_t sub_1D7681200()
{

  return swift_deallocObject();
}

uint64_t sub_1D7681238()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D7681270()
{
  MEMORY[0x1DA700140](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D76812A8()
{

  return swift_deallocObject();
}

uint64_t sub_1D76812F0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v2 = a1[1];
  *a2 = v3;
  a2[1] = v2;
}

uint64_t sub_1D7681310()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1D7681348(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1D7702F50();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D76813F4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1D7702F50();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D7681498()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1D76814D0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D7681508()
{
  MEMORY[0x1DA700140](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D7681540()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_1D7681588()
{
  sub_1D7696460(0);
  v2 = v1;
  v3 = (v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)));

  if (v3[6])
  {
  }

  if (v3[26])
  {
  }

  if (v3[35])
  {
  }

  if (v3[49])
  {
  }

  if (v3[59])
  {
  }

  v4 = v3 + *(v2 + 56);

  v5 = *(type metadata accessor for NativeAdPlacement(0) + 20);
  v6 = sub_1D77038B0();
  (*(*(v6 - 8) + 8))(&v4[v5], v6);

  return swift_deallocObject();
}

uint64_t sub_1D768180C()
{
  v1 = *(type metadata accessor for NativeAdInfo(0) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);

  v3 = v0 + v2;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 1)
  {

    __swift_destroy_boxed_opaque_existential_1((v3 + 40));
    v11 = 80;
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      goto LABEL_17;
    }

    v5 = type metadata accessor for NativeAdInfo.Fulfilled(0);
    v6 = (v3 + v5[11]);

    if (v6[6])
    {
    }

    if (v6[26])
    {
    }

    if (v6[35])
    {
    }

    if (v6[49])
    {
    }

    if (v6[59])
    {
    }

    sub_1D7696460(0);
    v8 = v6 + *(v7 + 56);

    v9 = *(type metadata accessor for NativeAdPlacement(0) + 20);
    v10 = sub_1D77038B0();
    (*(*(v10 - 8) + 8))(&v8[v9], v10);

    __swift_destroy_boxed_opaque_existential_1((v3 + v5[12]));
    v11 = v5[13];
  }

LABEL_17:

  return swift_deallocObject();
}

uint64_t sub_1D7681B34()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D7681B7C()
{

  return swift_deallocObject();
}

uint64_t sub_1D7681C00()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1D7681C44(uint64_t a1, uint64_t a2, uint64_t a3)
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
    sub_1D7666C8C(0, qword_1EE0B0DA8, type metadata accessor for AdRequest);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 44);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1D7681D10(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_1D7666C8C(0, qword_1EE0B0DA8, type metadata accessor for AdRequest);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 44);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1D7681DE8()
{

  return swift_deallocObject();
}

uint64_t sub_1D7681E24(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1D77038B0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D7681ED0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1D77038B0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D7681F74(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1D7702F50();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D7682020(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1D7702F50();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D76820C4()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D7682104()
{

  return swift_deallocObject();
}

uint64_t sub_1D7682144()
{
  MEMORY[0x1DA700140](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D768217C()
{

  return swift_deallocObject();
}

uint64_t sub_1D76821C4()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

id sub_1D768221C@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 40);
  *a2 = v4;

  return v4;
}

uint64_t sub_1D768227C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1D77038B0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D7682328(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1D77038B0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D76823DC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for NativeAdInfo.Fulfilled(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D7682488(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for NativeAdInfo.Fulfilled(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

id sub_1D768253C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 promotedContentInfo];
  *a2 = result;
  return result;
}

uint64_t sub_1D768258C()
{
  MEMORY[0x1DA700140](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D76825C4()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D768260C()
{

  return swift_deallocObject();
}

id sub_1D768264C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 unfilledReason];
  *a2 = result;
  return result;
}

uint64_t sub_1D768269C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1D77038B0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D7682748(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1D77038B0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D76827EC()
{
  (*(*(*(v0 + 24) - 8) + 8))(v0 + ((*(*(*(v0 + 24) - 8) + 80) + 40) & ~*(*(*(v0 + 24) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t sub_1D768286C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D76828A4()
{
  v1 = *(v0 + 24);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1D7682974()
{

  return swift_deallocObject();
}

uint64_t sub_1D76829B4()
{

  return swift_deallocObject();
}

uint64_t sub_1D76829F4()
{

  return swift_deallocObject();
}

uint64_t sub_1D7682A34()
{

  return swift_deallocObject();
}

uint64_t sub_1D7682A7C()
{
  (*(*(*(v0 + 24) - 8) + 8))(v0 + ((*(*(*(v0 + 24) - 8) + 80) + 40) & ~*(*(*(v0 + 24) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t sub_1D7682B10()
{

  return swift_deallocObject();
}

uint64_t sub_1D7682B48()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1D7682B80(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1D77038B0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D7682C2C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1D77038B0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D7682CD0()
{

  return swift_deallocObject();
}

uint64_t sub_1D7682D18()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1D7682D88()
{
  MEMORY[0x1DA700140](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D7682DC4()
{

  sub_1D76CF158(*(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96));

  return swift_deallocObject();
}

uint64_t sub_1D7682E70()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D7682EA8()
{
  v2 = *(v0 + 4);
  v3 = *(v0 + 5);
  v4 = *(v0 + 7);
  v9[0] = *(v0 + 2);
  v1 = v9[0];
  v9[1] = v2;
  v9[2] = v3;
  v9[3] = v4;
  v5 = (type metadata accessor for AdRequest(0, v9) - 8);
  v6 = (*(*v5 + 80) + 104) & ~*(*v5 + 80);

  (*(*(v1 - 8) + 8))(&v0[v6 + v5[15]], v1);
  type metadata accessor for AdContext(0, v1, v3, v7);

  (*(*(v2 - 8) + 8))(&v0[v6 + v5[16]], v2);

  return swift_deallocObject();
}

uint64_t sub_1D7683034(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D77038B0();
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

uint64_t sub_1D76830F4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D77038B0();
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

uint64_t sub_1D76831B0()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1D76831F0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D7683228()
{
  MEMORY[0x1DA700140](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D7683260()
{
  v2 = *(v0 + 4);
  v3 = *(v0 + 5);
  v4 = *(v0 + 6);
  v13 = v4;
  v5 = *(v0 + 8);
  v6 = *(v3 - 8);
  v7 = (*(v6 + 80) + 96) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v14[0] = *(v0 + 2);
  v1 = v14[0];
  v14[1] = v2;
  v14[2] = v4;
  v14[3] = v5;
  v9 = (type metadata accessor for AdRequest(0, v14) - 8);
  v10 = (v7 + v8 + *(*v9 + 80)) & ~*(*v9 + 80);

  (*(v6 + 8))(&v0[v7], v3);

  (*(*(v1 - 8) + 8))(&v0[v10 + v9[15]], v1);
  type metadata accessor for AdContext(0, v1, v13, v11);

  (*(*(v2 - 8) + 8))(&v0[v10 + v9[16]], v2);

  return swift_deallocObject();
}

uint64_t sub_1D7683494()
{

  return swift_deallocObject();
}

uint64_t sub_1D76834CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D77032B0();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1D7683538(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D77032B0();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1D76835A8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1D77038B0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D7683654(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1D77038B0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D76836F8(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for PrerollAdPlacement(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1D76837A4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for PrerollAdPlacement(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D7683848(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_1D76B6C94(0);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 32);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1D76838F4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    sub_1D76B6C94(0);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 32);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1D7683998()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D76839D0()
{
  sub_1D7696460(0);
  v2 = v1;
  v3 = (v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)));

  if (v3[6])
  {
  }

  if (v3[26])
  {
  }

  if (v3[35])
  {
  }

  if (v3[49])
  {
  }

  if (v3[59])
  {
  }

  v4 = v3 + *(v2 + 56);

  v5 = *(type metadata accessor for NativeAdPlacement(0) + 20);
  v6 = sub_1D77038B0();
  (*(*(v6 - 8) + 8))(&v4[v5], v6);

  return swift_deallocObject();
}

uint64_t sub_1D7683C54()
{
  sub_1D7696460(0);
  v2 = v1;
  v3 = (*(*(v1 - 8) + 80) + 80) & ~*(*(v1 - 8) + 80);

  v4 = (v0 + v3);

  if (*(v0 + v3 + 48))
  {
  }

  if (v4[26])
  {
  }

  if (v4[35])
  {
  }

  if (v4[49])
  {
  }

  if (v4[59])
  {
  }

  v5 = v4 + *(v2 + 56);

  v6 = *(type metadata accessor for NativeAdPlacement(0) + 20);
  v7 = sub_1D77038B0();
  (*(*(v7 - 8) + 8))(&v5[v6], v7);

  return swift_deallocObject();
}

uint64_t sub_1D7683EDC()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D7683F24@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_1D7683F54()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1D7683FC0()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D7684010()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D7684058()
{

  return swift_deallocObject();
}

uint64_t sub_1D76840A8()
{

  return swift_deallocObject();
}

uint64_t sub_1D76840E8()
{

  return swift_deallocObject();
}

uint64_t sub_1D7684128()
{

  return swift_deallocObject();
}

uint64_t sub_1D7684160()
{

  return swift_deallocObject();
}

uint64_t SponsorshipAdPlacement.placementIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SponsorshipAdPlacement.desiredPlacement.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SponsorshipAdPlacement(0) + 20);
  v4 = sub_1D77038B0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SponsorshipAdPlacement.insertionType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for SponsorshipAdPlacement(0);
  *a1 = *(v1 + *(result + 24));
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

uint64_t sub_1D7684390(uint64_t a1, id *a2)
{
  result = sub_1D7704240();
  *a2 = 0;
  return result;
}

uint64_t sub_1D7684408(uint64_t a1, id *a2)
{
  v3 = sub_1D7704250();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1D7684488@<X0>(uint64_t *a2@<X8>)
{
  sub_1D7704260();
  v3 = sub_1D7704230();

  *a2 = v3;
  return result;
}

uint64_t sub_1D76844CC()
{
  v0 = sub_1D7704260();
  v1 = MEMORY[0x1DA6FF0E0](v0);

  return v1;
}

uint64_t sub_1D7684508(uint64_t a1)
{
  sub_1D7704260();
  sub_1D77042D0();
}

uint64_t sub_1D768455C(uint64_t a1)
{
  sub_1D7704260();
  sub_1D7704AD0();
  sub_1D77042D0();
  v1 = sub_1D7704AF0();

  return v1;
}

uint64_t sub_1D76845D0(void *a1, uint64_t *a2)
{
  v2 = sub_1D7704260();
  v4 = v3;
  if (v2 == sub_1D7704260() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1D7704A30();
  }

  return v7 & 1;
}

uint64_t sub_1D7684680@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_1D7704230();

  *a2 = v3;
  return result;
}

uint64_t sub_1D76846C8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D7704260();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D76846F4(uint64_t a1)
{
  v2 = sub_1D76847F4(&qword_1EC9BCCE8, &unk_1D7708D90);
  v3 = sub_1D76847F4(&unk_1EC9BCCF0, &unk_1D7708CE4);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1D76847F4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

char *sub_1D768487C(unsigned __int8 *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = sub_1D7702FA0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &ObjectType - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = *a1;
  v8 = OBJC_IVAR____TtC7NewsAds23DebugInterstitialAdView_onLongPress;
  sub_1D768571C(0, &qword_1EE0B0810, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69D8770]);
  v10 = v9;
  *&v2[v8] = [objc_allocWithZone(v9) init];
  v11 = OBJC_IVAR____TtC7NewsAds23DebugInterstitialAdView_onCollapse;
  *&v2[v11] = [objc_allocWithZone(v10) init];
  v12 = OBJC_IVAR____TtC7NewsAds23DebugInterstitialAdView_label;
  *&v2[v12] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v13 = OBJC_IVAR____TtC7NewsAds23DebugInterstitialAdView_moreButton;
  v14 = [objc_opt_self() buttonWithType_];
  v15 = sub_1D7704230();
  v16 = objc_opt_self();
  v17 = [v16 systemImageNamed_];

  [v14 setImage:v17 forState:0];
  *&v2[v13] = v14;
  sub_1D7702F90();
  v18 = sub_1D7702F70();
  v20 = v19;
  (*(v5 + 8))(v7, v4);
  v21 = &v2[OBJC_IVAR____TtC7NewsAds23DebugInterstitialAdView_contentIdentifier];
  *v21 = v18;
  v21[1] = v20;
  v44.receiver = v2;
  v44.super_class = ObjectType;
  v22 = objc_msgSendSuper2(&v44, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v23 = OBJC_IVAR____TtC7NewsAds23DebugInterstitialAdView_moreButton;
  v24 = *&v22[OBJC_IVAR____TtC7NewsAds23DebugInterstitialAdView_moreButton];
  v25 = v22;
  [v24 setShowsMenuAsPrimaryAction_];
  v26 = *&v22[v23];
  sub_1D766844C(0, &qword_1EC9BD088, 0x1E69DCC60);
  sub_1D768571C(0, &unk_1EE0AEBE0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1D7708DE0;
  sub_1D766844C(0, &qword_1EC9BD090, 0x1E69DC628);
  v28 = v26;
  v29 = sub_1D7704230();
  v30 = [v16 systemImageNamed_];

  swift_allocObject();
  swift_unknownObjectWeakInit();

  *(v27 + 32) = sub_1D7704690();
  v31 = sub_1D7704670();
  [v28 setMenu_];

  v32 = [*&v22[v23] imageView];
  if (v32)
  {
    v33 = v32;
    [v32 setContentMode_];
  }

  [*&v22[v23] setFrame_];
  v34 = OBJC_IVAR____TtC7NewsAds23DebugInterstitialAdView_label;
  v35 = *&v25[OBJC_IVAR____TtC7NewsAds23DebugInterstitialAdView_label];
  v36 = sub_1D7704230();
  [v35 setText_];

  v37 = *&v25[v34];
  sub_1D766844C(0, &qword_1EC9BD098, 0x1E69DB878);
  v38 = v37;
  v39 = sub_1D7704660();
  [v38 setFont_];

  [*&v25[v34] sizeToFit];
  [v25 addSubview_];
  [v25 addSubview_];
  v43 = v42;
  sub_1D7684E88(&v43);

  return v25;
}

void sub_1D7684E1C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC7NewsAds23DebugInterstitialAdView_onCollapse);
    MEMORY[0x1DA6FEDD0]();
  }
}

uint64_t sub_1D7684E88(_BYTE *a1)
{
  v2 = v1;
  v4 = sub_1D77040D0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D7704110();
  v25 = *(v8 - 8);
  v26 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D7704130();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v13);
  v18 = &v23 - v17;
  if (*a1)
  {
    v24 = v5;
    sub_1D766844C(0, &qword_1EE0AED30, 0x1E69E9610);
    v19 = sub_1D77045F0();
    sub_1D7704120();
    sub_1D7704150();
    v23 = *(v12 + 8);
    v23(v15, v11);
    v20 = swift_allocObject();
    *(v20 + 16) = v2;
    aBlock[4] = sub_1D7685774;
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D7672F74;
    aBlock[3] = &block_descriptor;
    v21 = _Block_copy(aBlock);
    v22 = v2;

    sub_1D77040F0();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1D76857A4(&qword_1EE0AEDA8, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    sub_1D7672E60(0);
    sub_1D76857A4(&qword_1EE0AED88, sub_1D7672E60, MEMORY[0x1E69E6328]);
    sub_1D77046E0();
    MEMORY[0x1DA6FF3A0](v18, v10, v7, v21);
    _Block_release(v21);

    (*(v24 + 8))(v7, v4);
    (*(v25 + 8))(v10, v26);
    return (v23)(v18, v11);
  }

  return result;
}

id sub_1D76852A8()
{
  v7.receiver = v0;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC7NewsAds23DebugInterstitialAdView_moreButton];
  [v0 bounds];
  Width = CGRectGetWidth(v8);
  [v1 frame];
  v3 = Width - CGRectGetWidth(v9) * 0.5 + -8.0;
  [v1 frame];
  [v1 setCenter_];
  v4 = *&v0[OBJC_IVAR____TtC7NewsAds23DebugInterstitialAdView_label];
  [v0 bounds];
  v5 = CGRectGetWidth(v11) * 0.5;
  [v0 bounds];
  return [v4 setCenter_];
}

id _s7NewsAds26DebugJournalViewControllerCfD_0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D768550C()
{
  v1 = *(*v0 + OBJC_IVAR____TtC7NewsAds23DebugInterstitialAdView_contentIdentifier);

  return v1;
}

void sub_1D7685574()
{
  v1 = OBJC_IVAR____TtC7NewsAds23DebugInterstitialAdView_onLongPress;
  sub_1D768571C(0, &qword_1EE0B0810, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69D8770]);
  v3 = v2;
  *(v0 + v1) = [objc_allocWithZone(v2) init];
  v4 = OBJC_IVAR____TtC7NewsAds23DebugInterstitialAdView_onCollapse;
  *(v0 + v4) = [objc_allocWithZone(v3) init];
  v5 = OBJC_IVAR____TtC7NewsAds23DebugInterstitialAdView_label;
  *(v0 + v5) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v6 = OBJC_IVAR____TtC7NewsAds23DebugInterstitialAdView_moreButton;
  v7 = [objc_opt_self() buttonWithType_];
  v8 = sub_1D7704230();
  v9 = [objc_opt_self() systemImageNamed_];

  [v7 setImage:v9 forState:0];
  *(v0 + v6) = v7;
  sub_1D7704860();
  __break(1u);
}

void sub_1D768571C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1D76857A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D7685804()
{
  sub_1D7704AD0();
  MEMORY[0x1DA6FF8B0](0);
  return sub_1D7704AF0();
}

uint64_t sub_1D7685870(uint64_t a1)
{
  sub_1D7704AD0();
  MEMORY[0x1DA6FF8B0](0);
  return sub_1D7704AF0();
}

uint64_t sub_1D76858CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x80000001D7714CF0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1D7704A30();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1D768596C(uint64_t a1)
{
  v2 = sub_1D7685B2C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D76859A8(uint64_t a1)
{
  v2 = sub_1D7685B2C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t VideoAdData.encode(to:)(void *a1)
{
  sub_1D7685D08(0, &qword_1EC9BD0A0, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7685B2C();
  sub_1D7704B10();
  sub_1D77049E0();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1D7685B2C()
{
  result = qword_1EC9BD0A8;
  if (!qword_1EC9BD0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD0A8);
  }

  return result;
}

uint64_t VideoAdData.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1D7685D08(0, &qword_1EC9BD0B0, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7685B2C();
  sub_1D7704B00();
  if (!v2)
  {
    sub_1D7704950();
    v11 = v10;
    (*(v7 + 8))(v9, v6);
    *a2 = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D7685D08(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D7685B2C();
    v7 = a3(a1, &type metadata for VideoAdData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D7685D6C(uint64_t a1)
{
  *(a1 + 8) = sub_1D7685D9C();
  result = sub_1D7685DF0();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D7685D9C()
{
  result = qword_1EC9BD0B8;
  if (!qword_1EC9BD0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD0B8);
  }

  return result;
}

unint64_t sub_1D7685DF0()
{
  result = qword_1EC9BD0C0;
  if (!qword_1EC9BD0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD0C0);
  }

  return result;
}

uint64_t sub_1D7685E5C(void *a1)
{
  sub_1D7685D08(0, &qword_1EC9BD0A0, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7685B2C();
  sub_1D7704B10();
  sub_1D77049E0();
  return (*(v4 + 8))(v6, v3);
}

uint64_t getEnumTagSinglePayload for VideoAdData(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for VideoAdData(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for VideoAdData.CodingKeys(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

unint64_t sub_1D7686064()
{
  result = qword_1EC9BD0C8;
  if (!qword_1EC9BD0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD0C8);
  }

  return result;
}

unint64_t sub_1D76860BC()
{
  result = qword_1EC9BD0D0;
  if (!qword_1EC9BD0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD0D0);
  }

  return result;
}

unint64_t sub_1D7686114()
{
  result = qword_1EC9BD0D8;
  if (!qword_1EC9BD0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD0D8);
  }

  return result;
}

uint64_t BannerAdLayoutStore.storeLayout(_:for:)(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  if (qword_1EE0AF008 != -1)
  {
    swift_once();
  }

  v5 = qword_1EE0AF010;
  sub_1D766DF6C(0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1D7708FD0;
  v7 = MEMORY[0x1E69E6158];
  *(v6 + 56) = MEMORY[0x1E69E6158];
  v8 = sub_1D7668854();
  *(v6 + 64) = v8;
  *(v6 + 32) = a2;
  *(v6 + 40) = a3;

  sub_1D7704850();
  *(v6 + 96) = v7;
  *(v6 + 104) = v8;
  *(v6 + 72) = 0;
  *(v6 + 80) = 0xE000000000000000;
  v9 = sub_1D77045A0();
  sub_1D7703ED0("Storing layout for placement=%{public}@, layout=%{public}@", 58, 2, &dword_1D7662000, v5, v9, v6);

  sub_1D77035F0();
}

Swift::Void __swiftcall BannerAdLayoutStore.reset()()
{
  if (qword_1EE0AF008 != -1)
  {
    swift_once();
  }

  v0 = qword_1EE0AF010;
  v1 = sub_1D77045A0();
  sub_1D7703ED0("Removing all layouts from store", 31, 2, &dword_1D7662000, v0, v1, MEMORY[0x1E69E7CC0]);

  sub_1D77035A0();
}

uint64_t BannerAdLayoutStore.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D7686414(uint64_t a1)
{
  if (qword_1EE0AF008 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE0AF010;
  v2 = sub_1D77045A0();
  sub_1D7703ED0("Removing all layouts from store", 31, 2, &dword_1D7662000, v1, v2, MEMORY[0x1E69E7CC0]);

  sub_1D77035A0();
}

unint64_t sub_1D76864C0()
{
  result = qword_1EE0AEBC0;
  if (!qword_1EE0AEBC0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE0AEBC0);
  }

  return result;
}

uint64_t _s7NewsAds19AdPolicyContentTypeO0C5StateO9hashValueSivg_0()
{
  v1 = *v0;
  sub_1D7704AD0();
  MEMORY[0x1DA6FF8B0](v1);
  return sub_1D7704AF0();
}

uint64_t sub_1D76865D8(uint64_t a1)
{
  v2 = *v1;
  sub_1D7704AD0();
  MEMORY[0x1DA6FF8B0](v2);
  return sub_1D7704AF0();
}

unint64_t sub_1D768662C()
{
  if (*v0)
  {
    return 0xD00000000000001FLL;
  }

  else
  {
    return 0xD000000000000026;
  }
}

uint64_t sub_1D7686668@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  sub_1D7687550(v1 + 56, &v6);
  if (v7)
  {
    return sub_1D7667CB8(&v6, a1);
  }

  sub_1D7680A40(&v6);
  sub_1D7667C54(v1 + 16, &v6);
  v4 = type metadata accessor for DebugSponsorshipAdProvider();
  v5 = swift_allocObject();
  sub_1D7667CB8(&v6, v5 + 16);
  a1[3] = v4;
  a1[4] = &off_1F5256B40;
  *a1 = v5;
  sub_1D7667C54(a1, &v6);
  swift_beginAccess();
  sub_1D76875E0(&v6, v1 + 56);
  return swift_endAccess();
}

void SponsorshipAdProvider.fetchSponsoredAdInfo(request:journal:tracker:)(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v142 = a3;
  sub_1D767FE78(0);
  v10 = (a1 + *(v9 + 56));
  v11 = *v10;
  v12 = v10[1];
  v13 = qword_1EE0AEB40;

  if (v13 != -1)
  {
    swift_once();
  }

  if (sub_1D77030B0())
  {

    sub_1D7686668(&v129);
    v14 = v131;
    v15 = v132;
    __swift_project_boxed_opaque_existential_1(&v129, v131);
    (v15[2])(a1, a2, v142, v14, v15);
    __swift_destroy_boxed_opaque_existential_1(&v129);
  }

  else
  {
    v129 = *(a1 + 1);
    v16 = a1[4];
    v17 = a1[5];
    v141 = a1[23];
    v18 = a1[6];
    v138 = *(a1 + 17);
    v139 = *(a1 + 19);
    v140 = *(a1 + 21);
    v134 = *(a1 + 9);
    v135 = *(a1 + 11);
    v136 = *(a1 + 13);
    v137 = *(a1 + 15);
    v133 = *(a1 + 7);
    v130 = v16;
    v131 = v17;
    v126 = v18;
    v132 = v18;
    v127 = SponsorshipAdContext.newsSupplementalContext.getter();
    if (v127)
    {
      v120 = v17;
      v128 = v11;
      v19 = v4[5];
      v20 = v4[6];
      __swift_project_boxed_opaque_existential_1(v4 + 2, v19);
      v21 = (*(v20 + 8))(v19, v20);
      v22 = sub_1D7703D10();

      if (v22)
      {
        v112 = v5;
        v116 = a2;
        v117 = v22;
        v115 = a4;
        sub_1D7703B30();
        *&v121 = sub_1D768720C();
        *(&v121 + 1) = v23;
        if (qword_1EE0AF008 != -1)
        {
          swift_once();
        }

        v24 = qword_1EE0AF010;
        sub_1D766940C(0, &qword_1EE0AEBF0, &qword_1EE0AEBC0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
        v25 = swift_allocObject();
        *(v25 + 16) = xmmword_1D7709050;
        sub_1D768098C(0);

        v26 = sub_1D77042B0();
        v28 = v27;
        v29 = MEMORY[0x1E69E6158];
        *(v25 + 56) = MEMORY[0x1E69E6158];
        v30 = sub_1D7668854();
        *(v25 + 64) = v30;
        *(v25 + 32) = v26;
        *(v25 + 40) = v28;
        v129 = v121;
        sub_1D7678404(0, &qword_1EE0B0DA0, MEMORY[0x1E69E6720]);

        v31 = sub_1D77042B0();
        *(v25 + 96) = v29;
        *(v25 + 104) = v30;
        *(v25 + 72) = v31;
        *(v25 + 80) = v32;
        *(v25 + 136) = v29;
        *(v25 + 144) = v30;
        *(v25 + 112) = v128;
        *(v25 + 120) = v12;

        v33 = sub_1D77045A0();
        sub_1D7703ED0("Will fetch sponsorship ad info with, keywords=%{public}@, placement=%{public}@, placementID=%{public}@", 102, 2, &dword_1D7662000, v24, v33, v25);

        [v117 unfilledReason];
        v34 = sub_1D7703880();
        if (v34 == sub_1D7703880())
        {
          v35 = swift_allocObject();
          *(v35 + 16) = xmmword_1D7709070;
          v36 = sub_1D77042B0();
          v37 = MEMORY[0x1E69E6158];
          *(v35 + 56) = MEMORY[0x1E69E6158];
          *(v35 + 64) = v30;
          *(v35 + 32) = v36;
          *(v35 + 40) = v38;
          v129 = v121;
          v39 = sub_1D77042B0();
          *(v35 + 96) = v37;
          *(v35 + 104) = v30;
          *(v35 + 72) = v39;
          *(v35 + 80) = v40;
          v41 = sub_1D77037A0();
          *(v35 + 136) = v37;
          *(v35 + 144) = v30;
          *(v35 + 112) = v41;
          *(v35 + 120) = v42;
          *(v35 + 176) = v37;
          *(v35 + 184) = v30;
          *(v35 + 152) = v128;
          *(v35 + 160) = v12;

          v43 = sub_1D77045A0();
          sub_1D7703ED0("Fetching sponsorship ad info succeeded, keywords=%{public}@, placement=%{public}@, contentID=%{public}@, placementID=%{public}@", 127, 2, &dword_1D7662000, v24, v43, v35);

          v44 = a1[1];
          v122 = *a1;
          v45 = v112[5];
          v46 = v112[6];
          __swift_project_boxed_opaque_existential_1(v112 + 2, v45);
          v47 = *(v46 + 8);
          v124 = v44;

          v48 = v117;
          v49 = v47(v45, v46);
          sub_1D7667C54(v142, &v129);
          v142 = type metadata accessor for SponsorshipAdContentInfo();
          v50 = swift_allocObject();
          *(v50 + 40) = 0;
          v51 = (v50 + 40);
          *(v50 + 48) = 0;
          *(v50 + 120) = 0u;
          *(v50 + 136) = 0u;
          *(v50 + 152) = 1;

          *(v50 + 16) = sub_1D77037A0();
          *(v50 + 24) = v52;
          *(v50 + 32) = sub_1D77037D0();
          *(v50 + 56) = v48;
          *(v50 + 104) = v128;
          *(v50 + 112) = v12;
          sub_1D7667C54(&v129, v50 + 64);
          v53 = v48;
          v118 = v49;
          v54 = sub_1D7703D40();
          if (v54)
          {
            v55 = &protocol witness table for MetricsView;
          }

          else
          {
            v55 = 0;
          }

          swift_beginAccess();
          v56 = *v51;
          *v51 = v54;
          *(v50 + 48) = v55;
          v57 = v54;

          if (v54)
          {
            sub_1D7687450();
            v58 = v57;

            sub_1D7703DE0();

            [v58 setAccessibilityIgnoresInvertColors_];
            [v58 frame];
            v108 = v59;
            v110 = v60;
            v107 = v61;
            v113 = v62;

            __swift_destroy_boxed_opaque_existential_1(&v129);
            *&v64 = v107;
            *&v63 = v108;
            *(&v63 + 1) = v110;
            *(&v64 + 1) = v113;
            v65 = v115;
          }

          else
          {
            __swift_destroy_boxed_opaque_existential_1(&v129);

            v64 = 0uLL;
            v65 = v115;
            v63 = 0uLL;
          }

          *(v50 + 120) = v63;
          *(v50 + 136) = v64;
          *(v50 + 152) = v54 == 0;
          v131 = v142;
          v132 = &protocol witness table for SponsorshipAdContentInfo;
          *&v129 = v50;
          v101 = v112[5];
          v102 = v112[6];
          __swift_project_boxed_opaque_existential_1(v112 + 2, v101);
          v103 = (*(v102 + 8))(v101, v102);

          *v65 = v122;
          *(v65 + 8) = v124;
          *(v65 + 16) = v128;
          *(v65 + 24) = v12;
          *(v65 + 32) = v120;
          *(v65 + 40) = v126;
          *(v65 + 48) = v116;
          sub_1D7667CB8(&v129, v65 + 56);
          *(v65 + 96) = v103;
          *(v65 + 104) = 0;
        }

        else
        {
          v68 = swift_allocObject();
          *(v68 + 16) = xmmword_1D7709060;
          v69 = sub_1D77042B0();
          v70 = MEMORY[0x1E69E6158];
          *(v68 + 56) = MEMORY[0x1E69E6158];
          *(v68 + 64) = v30;
          *(v68 + 32) = v69;
          *(v68 + 40) = v71;
          v129 = v121;
          v72 = sub_1D77042B0();
          *(v68 + 96) = v70;
          *(v68 + 104) = v30;
          *(v68 + 72) = v72;
          *(v68 + 80) = v73;
          v74 = sub_1D77037A0();
          *(v68 + 136) = v70;
          *(v68 + 144) = v30;
          *(v68 + 112) = v74;
          *(v68 + 120) = v75;
          [v117 unfilledReason];
          v76 = sub_1D7703860();
          *(v68 + 176) = v70;
          *(v68 + 184) = v30;
          *(v68 + 152) = v76;
          *(v68 + 160) = v77;
          *(v68 + 216) = v70;
          *(v68 + 224) = v30;
          *(v68 + 192) = v128;
          *(v68 + 200) = v12;

          v78 = sub_1D77045A0();
          sub_1D7703ED0("Fetching sponsorship ad info unfilled, keywords=%{public}@, placement=%{public}@, contentID=%{public}@, unfilledReason=%{public}@, placementID=%{public}@", 153, 2, &dword_1D7662000, v24, v78, v68);

          v79 = a1[1];
          v123 = *a1;
          v80 = v112[5];
          v81 = v112[6];
          __swift_project_boxed_opaque_existential_1(v112 + 2, v80);
          v82 = *(v81 + 8);

          v83 = v117;
          v125 = v79;

          v84 = v82(v80, v81);
          sub_1D7667C54(v142, &v129);
          v142 = type metadata accessor for SponsorshipAdContentInfo();
          v85 = swift_allocObject();
          *(v85 + 40) = 0;
          v86 = (v85 + 40);
          *(v85 + 48) = 0;
          *(v85 + 120) = 0u;
          *(v85 + 136) = 0u;
          *(v85 + 152) = 1;

          *(v85 + 16) = sub_1D77037A0();
          *(v85 + 24) = v87;
          *(v85 + 32) = sub_1D77037D0();
          *(v85 + 56) = v83;
          *(v85 + 104) = v128;
          *(v85 + 112) = v12;
          sub_1D7667C54(&v129, v85 + 64);
          v88 = v83;
          v89 = sub_1D7703D40();
          if (v89)
          {
            v90 = &protocol witness table for MetricsView;
          }

          else
          {
            v90 = 0;
          }

          swift_beginAccess();
          v91 = *v86;
          *v86 = v89;
          *(v85 + 48) = v90;
          v92 = v89;

          if (v89)
          {
            sub_1D7687450();
            v93 = v92;

            sub_1D7703DE0();

            [v93 setAccessibilityIgnoresInvertColors_];
            [v93 frame];
            v114 = v94;
            v109 = v96;
            v111 = v95;
            v119 = v97;

            __swift_destroy_boxed_opaque_existential_1(&v129);
            *&v99 = v109;
            *&v98 = v111;
            *(&v98 + 1) = v114;
            *(&v99 + 1) = v119;
            v100 = v115;
          }

          else
          {
            __swift_destroy_boxed_opaque_existential_1(&v129);

            v99 = 0uLL;
            v100 = v115;
            v98 = 0uLL;
          }

          *(v85 + 120) = v98;
          *(v85 + 136) = v99;
          *(v85 + 152) = v89 == 0;
          v131 = v142;
          v132 = &protocol witness table for SponsorshipAdContentInfo;
          *&v129 = v85;
          v104 = v112[5];
          v105 = v112[6];
          __swift_project_boxed_opaque_existential_1(v112 + 2, v104);
          v106 = (*(v105 + 8))(v104, v105);

          *v100 = v123;
          *(v100 + 8) = v125;
          *(v100 + 16) = v128;
          *(v100 + 24) = v12;
          *(v100 + 32) = v120;
          *(v100 + 40) = v126;
          *(v100 + 48) = v116;
          sub_1D7667CB8(&v129, v100 + 56);
          *(v100 + 96) = v106;
          *(v100 + 104) = 1;
        }
      }

      else
      {

        sub_1D76873FC();
        swift_allocError();
        *v67 = 0;
        swift_willThrow();
      }
    }

    else
    {

      sub_1D76873FC();
      swift_allocError();
      *v66 = 1;
      swift_willThrow();
    }
  }
}

uint64_t sub_1D768720C()
{
  sub_1D767E214(0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v8 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7703BC0();
  v3 = sub_1D7703900();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 48))(v2, 1, v3);
  result = 0;
  if (v5 != 1)
  {
    v7 = (*(v4 + 88))(v2, v3);
    if (v7 == *MEMORY[0x1E69C6060])
    {
      return 0x72656E6E6162;
    }

    else if (v7 == *MEMORY[0x1E69C6058])
    {
      return 0x70756F7267;
    }

    else if (v7 == *MEMORY[0x1E69C6068])
    {
      return 0x646165687473616DLL;
    }

    else
    {
      (*(v4 + 8))(v2, v3);
      return 0x6E776F6E6B6E75;
    }
  }

  return result;
}

uint64_t SponsorshipAdProvider.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  sub_1D7680A40(v0 + 56);
  return v0;
}

unint64_t sub_1D76873FC()
{
  result = qword_1EE0AE8C8;
  if (!qword_1EE0AE8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0AE8C8);
  }

  return result;
}

unint64_t sub_1D7687450()
{
  result = qword_1EE0AE7E8;
  if (!qword_1EE0AE7E8)
  {
    type metadata accessor for SponsorshipAdContentInfo();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0AE7E8);
  }

  return result;
}

unint64_t sub_1D76874FC()
{
  result = qword_1EC9BD0E0;
  if (!qword_1EC9BD0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD0E0);
  }

  return result;
}

uint64_t sub_1D7687550(uint64_t a1, uint64_t a2)
{
  sub_1D766940C(0, &qword_1EE0AE6A8, qword_1EE0AE6B0, &protocol descriptor for SponsorshipAdProviderType, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D76875E0(uint64_t a1, uint64_t a2)
{
  sub_1D766940C(0, &qword_1EE0AE6A8, qword_1EE0AE6B0, &protocol descriptor for SponsorshipAdProviderType, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void *sub_1D7687670()
{
  v1 = v0;
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  sub_1D7687C0C();
  result = sub_1D7703400();
  if (result)
  {
    v3 = result;
    v5[4] = sub_1D7687C70;
    v5[5] = v1;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 1107296256;
    v5[2] = sub_1D76878A0;
    v5[3] = &block_descriptor_0;
    v4 = _Block_copy(v5);

    [v3 fetchAppConfigurationIfNeededWithCompletion_];
    _Block_release(v4);
    swift_unknownObjectRelease();
    sub_1D7687C78();
    swift_allocObject();
    return sub_1D77036E0();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D7687790(uint64_t a1, void *a2)
{
  if (qword_1EE0B0D18 != -1)
  {
    swift_once();
  }

  if (sub_1D77030B0())
  {
    type metadata accessor for AdsModuleStartupTask();
    sub_1D7687DA4();

    sub_1D7703070();

    return v4;
  }

  else if (a2 && ([a2 respondsToSelector_] & 1) != 0)
  {

    return [a2 articleAdPrefetchLimit];
  }

  else
  {
    return 3;
  }
}

uint64_t sub_1D76878A0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v6 = a3;
  v5(a2, a3);

  return swift_unknownObjectRelease();
}

uint64_t sub_1D7687920()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t AdPlatformsServerEnvironment.description.getter(uint64_t a1)
{
  if (a1 > 2)
  {
    if (a1 == 3)
    {
      return 3360081;
    }

    if (a1 != 4)
    {
      if (a1 == 5)
      {
        return 3491153;
      }

      return 0x6E776F6E6B6E75;
    }

    return 3425617;
  }

  else
  {
    if (!a1)
    {
      return 0x69746375646F7270;
    }

    if (a1 != 1)
    {
      if (a1 == 2)
      {
        return 3294545;
      }

      return 0x6E776F6E6B6E75;
    }

    return 3229009;
  }
}

uint64_t sub_1D7687AD8()
{
  v1 = *v0;
  if (*v0 > 2)
  {
    if (v1 == 3)
    {
      return 3360081;
    }

    if (v1 != 4)
    {
      if (v1 == 5)
      {
        return 3491153;
      }

      return 0x6E776F6E6B6E75;
    }

    return 3425617;
  }

  else
  {
    if (!v1)
    {
      return 0x69746375646F7270;
    }

    if (v1 != 1)
    {
      if (v1 == 2)
      {
        return 3294545;
      }

      return 0x6E776F6E6B6E75;
    }

    return 3229009;
  }
}

unint64_t sub_1D7687BB8()
{
  result = qword_1EC9BD0E8;
  if (!qword_1EC9BD0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD0E8);
  }

  return result;
}

unint64_t sub_1D7687C0C()
{
  result = qword_1EE0AED10;
  if (!qword_1EE0AED10)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE0AED10);
  }

  return result;
}

void sub_1D7687C78()
{
  if (!qword_1EE0B0848)
  {
    v0 = sub_1D7703700();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0B0848);
    }
  }
}

uint64_t sub_1D7687CCC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_1D7687D3C(0, a2, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void sub_1D7687D3C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1D7665328(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_1D7687DA4()
{
  result = qword_1EE0B05C0[0];
  if (!qword_1EE0B05C0[0])
  {
    type metadata accessor for AdsModuleStartupTask();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE0B05C0);
  }

  return result;
}

char *sub_1D7687E1C(uint64_t a1, uint64_t a2, unsigned __int8 *a3, float a4, float a5, double a6, double a7)
{
  v8 = v7;
  ObjectType = swift_getObjectType();
  v87 = sub_1D77040D0();
  v86 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v84 = &v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_1D7704110();
  v83 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v82 = &v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1D7704130();
  v19 = *(v18 - 8);
  v91 = v18;
  v92 = v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v81 = &v79 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v90 = &v79 - v22;
  LODWORD(v89) = *a3;
  v23 = OBJC_IVAR____TtC7NewsAds17DebugBannerAdView_state;
  aBlock[0] = 0;
  sub_1D76897BC(0, &qword_1EE0B0888, &type metadata for BannerAdViewState, MEMORY[0x1E69D6538]);
  swift_allocObject();
  *&v7[v23] = sub_1D7703470();
  v24 = OBJC_IVAR____TtC7NewsAds17DebugBannerAdView_onLongPress;
  sub_1D76897BC(0, &qword_1EE0B0810, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69D8770]);
  *&v7[v24] = [objc_allocWithZone(v25) init];
  v26 = &v7[OBJC_IVAR____TtC7NewsAds17DebugBannerAdView_additionalEdgeInsets];
  *v26 = xmmword_1D7709350;
  *(v26 + 1) = xmmword_1D7709350;
  v27 = OBJC_IVAR____TtC7NewsAds17DebugBannerAdView_moreButton;
  v28 = [objc_opt_self() buttonWithType_];
  v29 = sub_1D7704230();
  v30 = objc_opt_self();
  v31 = [v30 systemImageNamed_];

  [v28 setImage:v31 forState:0];
  *&v8[v27] = v28;
  v32 = OBJC_IVAR____TtC7NewsAds17DebugBannerAdView_label;
  *&v8[v32] = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v33 = &v8[OBJC_IVAR____TtC7NewsAds17DebugBannerAdView_contentIdentifier];
  *v33 = a1;
  *(v33 + 1) = a2;
  v34 = &v8[OBJC_IVAR____TtC7NewsAds17DebugBannerAdView_contentInfo];
  v34[3] = &type metadata for DebugAdContentInfo;
  v34[4] = &protocol witness table for DebugAdContentInfo;
  v35 = swift_allocObject();
  *v34 = v35;
  type metadata accessor for DebugLifecycleMetricsHelper();
  v36 = swift_allocObject();
  *(v35 + 24) = a2;
  *(v35 + 32) = v36;
  *(v35 + 40) = 0;
  *(v35 + 42) = 0;
  *(v35 + 48) = 200;
  *(v35 + 16) = a1;
  v95.receiver = v8;
  v95.super_class = ObjectType;

  v37 = objc_msgSendSuper2(&v95, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v38 = OBJC_IVAR____TtC7NewsAds17DebugBannerAdView_moreButton;
  v39 = *&v37[OBJC_IVAR____TtC7NewsAds17DebugBannerAdView_moreButton];
  v40 = v37;
  [v39 setShowsMenuAsPrimaryAction_];
  v41 = *&v37[v38];
  sub_1D766844C(0, &qword_1EC9BD088, 0x1E69DCC60);
  sub_1D76897BC(0, &unk_1EE0AEBE0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_1D7708DE0;
  sub_1D766844C(0, &qword_1EC9BD090, 0x1E69DC628);
  v43 = v41;
  v44 = sub_1D7704230();
  v45 = [v30 systemImageNamed_];

  swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v42 + 32) = sub_1D7704690();
  v46 = sub_1D7704670();
  [v43 setMenu_];

  v47 = [*&v37[v38] imageView];
  if (v47)
  {
    v48 = v47;
    [v47 setContentMode_];
  }

  [*&v37[v38] setFrame_];
  v49 = OBJC_IVAR____TtC7NewsAds17DebugBannerAdView_label;
  v50 = *&v40[OBJC_IVAR____TtC7NewsAds17DebugBannerAdView_label];
  v51 = sub_1D7704230();
  [v50 setText_];

  v52 = *&v40[v49];
  sub_1D766844C(0, &qword_1EC9BD098, 0x1E69DB878);
  v53 = v52;
  v54 = sub_1D7704660();
  [v53 setFont_];

  [*&v40[v49] sizeToFit];
  v55 = *&v37[v38];
  v56 = v40;
  [v56 addSubview_];
  [v56 addSubview_];
  v57 = [v56 layer];
  v58 = [v56 traitCollection];
  [v58 displayScale];
  v60 = v59;

  [v57 setBorderWidth_];
  v61 = [v56 layer];

  v62 = [objc_opt_self() separatorColor];
  v63 = [v62 CGColor];

  [v61 setBorderColor_];
  v64 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v65 = swift_allocObject();
  *(v65 + 16) = v64;
  v66 = v89;
  *(v65 + 24) = v89;
  v67 = swift_allocObject();
  *(v67 + 16) = a4;
  *(v67 + 24) = v56;
  *(v67 + 32) = a6;
  *(v67 + 40) = a7;
  *(v67 + 48) = sub_1D7689814;
  *(v67 + 56) = v65;
  if (a5 > 0.0)
  {
    swift_retain_n();
    v68 = v56;

    v69 = sub_1D76894A8(0x1000001uLL);
    if (v69 == 0x1000000)
    {
      if (a4 <= 1.0)
      {
LABEL_6:
        sub_1D7689978();
        aBlock[0] = swift_allocError();
        sub_1D76899CC();
        sub_1D77034A0();
        sub_1D7689A20(aBlock[0]);
LABEL_10:
        sub_1D7703480();
        v93 = aBlock[0];
        sub_1D7688AE4(&v93, v64, v66);
        sub_1D7689A20(v93);

        goto LABEL_11;
      }
    }

    else if (vcvts_n_f32_u32(v69, 0x18uLL) >= a4)
    {
      goto LABEL_6;
    }

    [v68 setFrame_];
    aBlock[0] = 1;
    sub_1D76899CC();
    sub_1D77034A0();
    goto LABEL_10;
  }

  sub_1D766844C(0, &qword_1EE0AED30, 0x1E69E9610);
  swift_retain_n();
  ObjectType = v56;

  v80 = sub_1D77045F0();
  v70 = v81;
  sub_1D7704120();
  sub_1D7704150();
  v71 = *(v92 + 8);
  v92 += 8;
  v89 = v71;
  v71(v70, v91);
  aBlock[4] = sub_1D7689820;
  aBlock[5] = v67;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D7672F74;
  aBlock[3] = &block_descriptor_1;
  v72 = _Block_copy(aBlock);

  v73 = v82;
  sub_1D77040F0();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1D7689834();
  sub_1D768988C(0, &qword_1EE0AED90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1D76898F0();
  v74 = v84;
  v75 = v87;
  sub_1D77046E0();
  v76 = v90;
  v77 = v80;
  MEMORY[0x1DA6FF3A0](v90, v73, v74, v72);
  _Block_release(v72);

  (*(v86 + 8))(v74, v75);
  (*(v83 + 8))(v73, v85);
  v89(v76, v91);
LABEL_11:

  return v56;
}

void sub_1D7688A6C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1D76899CC();
    sub_1D77034A0();
  }
}

void sub_1D7688AE4(void **a1, uint64_t a2, char a3)
{
  v5 = sub_1D77040D0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D7704110();
  v36 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D7704130();
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v19 = &v30 - v18;
  v20 = *a1;
  if (v20 == 2)
  {
    v21 = 2;
    goto LABEL_10;
  }

  if (v20 != 1)
  {
    if (v20)
    {
      v29 = v20;
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }

LABEL_10:
    sub_1D7689A20(v21);

    sub_1D7689A20(1);
    return;
  }

  v22 = v17;
  v34 = v16;
  v35 = v6;
  sub_1D7689A20(1);
  sub_1D7689A20(1);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v24 = Strong;
    if (a3)
    {
      sub_1D766844C(0, &qword_1EE0AED30, 0x1E69E9610);
      v32 = sub_1D77045F0();
      sub_1D7704120();
      sub_1D7704150();
      v33 = *(v22 + 8);
      v25 = v34;
      v33(v15, v34);
      v26 = swift_allocObject();
      *(v26 + 16) = v24;
      aBlock[4] = sub_1D7689A30;
      aBlock[5] = v26;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1D7672F74;
      aBlock[3] = &block_descriptor_16;
      v27 = _Block_copy(aBlock);
      v31 = v24;

      sub_1D77040F0();
      aBlock[0] = MEMORY[0x1E69E7CC0];
      sub_1D7689834();
      sub_1D768988C(0, &qword_1EE0AED90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
      sub_1D76898F0();
      sub_1D77046E0();
      v28 = v32;
      MEMORY[0x1DA6FF3A0](v19, v11, v8, v27);
      _Block_release(v27);

      (*(v35 + 8))(v8, v5);
      (*(v36 + 8))(v11, v9);
      v33(v19, v25);
    }

    else
    {
    }
  }
}

id sub_1D7688FA0()
{
  v7.receiver = v0;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC7NewsAds17DebugBannerAdView_moreButton];
  [v0 bounds];
  Width = CGRectGetWidth(v8);
  [v1 frame];
  v3 = Width - CGRectGetWidth(v9) * 0.5 + -8.0;
  [v1 frame];
  [v1 setCenter_];
  v4 = *&v0[OBJC_IVAR____TtC7NewsAds17DebugBannerAdView_label];
  [v0 bounds];
  v5 = CGRectGetWidth(v11) * 0.5;
  [v0 bounds];
  return [v4 setCenter_];
}

uint64_t sub_1D76891DC()
{
  v1 = *(*v0 + OBJC_IVAR____TtC7NewsAds17DebugBannerAdView_contentIdentifier);

  return v1;
}

uint64_t sub_1D7689274(uint64_t a1, uint64_t a2)
{
  sub_1D768988C(0, &qword_1EE0AFCD8, sub_1D7689308, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D7689308()
{
  result = qword_1EE0AFCE0;
  if (!qword_1EE0AFCE0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE0AFCE0);
  }

  return result;
}

void sub_1D768936C(void *a1, void (*a2)(uint64_t *), float a3, double a4)
{
  v8 = sub_1D76894A8(0x1000001uLL);
  if (v8 != 0x1000000)
  {
    if (vcvts_n_f32_u32(v8, 0x18uLL) >= a3)
    {
      goto LABEL_3;
    }

LABEL_5:
    [a1 setFrame_];
    v10 = 1;
    sub_1D76899CC();
    sub_1D77034A0();
    goto LABEL_6;
  }

  if (a3 > 1.0)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1D7689978();
  v10 = swift_allocError();
  sub_1D76899CC();
  sub_1D77034A0();
  sub_1D7689A20(v10);
LABEL_6:
  sub_1D7703480();
  v9 = v10;
  a2(&v9);
  sub_1D7689A20(v9);
}

unint64_t sub_1D76894A8(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = result;
    v5 = 0;
    MEMORY[0x1DA7000A0](&v5, 8);
    v3 = v5 * v2;
    if (v3 < v1)
    {
      for (i = -v1 % v1; i > v3; v3 = v5 * v2)
      {
        v5 = 0;
        MEMORY[0x1DA7000A0](&v5, 8);
      }
    }

    return HIDWORD(v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1D7689534()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC7NewsAds17DebugBannerAdView_state;
  sub_1D76897BC(0, &qword_1EE0B0888, &type metadata for BannerAdViewState, MEMORY[0x1E69D6538]);
  swift_allocObject();
  *(v0 + v2) = sub_1D7703470();
  v3 = OBJC_IVAR____TtC7NewsAds17DebugBannerAdView_onLongPress;
  sub_1D76897BC(0, &qword_1EE0B0810, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69D8770]);
  *(v1 + v3) = [objc_allocWithZone(v4) init];
  v5 = (v1 + OBJC_IVAR____TtC7NewsAds17DebugBannerAdView_additionalEdgeInsets);
  *v5 = xmmword_1D7709350;
  v5[1] = xmmword_1D7709350;
  v6 = OBJC_IVAR____TtC7NewsAds17DebugBannerAdView_moreButton;
  v7 = [objc_opt_self() buttonWithType_];
  v8 = sub_1D7704230();
  v9 = [objc_opt_self() systemImageNamed_];

  [v7 setImage:v9 forState:0];
  *(v1 + v6) = v7;
  v10 = OBJC_IVAR____TtC7NewsAds17DebugBannerAdView_label;
  *(v1 + v10) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  sub_1D7704860();
  __break(1u);
}

uint64_t sub_1D7689730(uint64_t a1)
{
  sub_1D768988C(0, &qword_1EE0AFCD8, sub_1D7689308, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D76897BC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1D7689834()
{
  result = qword_1EE0AEDA8;
  if (!qword_1EE0AEDA8)
  {
    sub_1D77040D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0AEDA8);
  }

  return result;
}

void sub_1D768988C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1D76898F0()
{
  result = qword_1EE0AED88;
  if (!qword_1EE0AED88)
  {
    sub_1D768988C(255, &qword_1EE0AED90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0AED88);
  }

  return result;
}

unint64_t sub_1D7689978()
{
  result = qword_1EC9BD128;
  if (!qword_1EC9BD128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD128);
  }

  return result;
}

unint64_t sub_1D76899CC()
{
  result = qword_1EE0AFCC0;
  if (!qword_1EE0AFCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0AFCC0);
  }

  return result;
}

void sub_1D7689A20(id a1)
{
  if (a1 >= 3)
  {
  }
}

unint64_t sub_1D7689A8C()
{
  result = qword_1EC9BD130;
  if (!qword_1EC9BD130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD130);
  }

  return result;
}

uint64_t AdPolicyFailureType.hashValue.getter()
{
  v1 = *v0;
  sub_1D7704AD0();
  MEMORY[0x1DA6FF8B0](v1);
  return sub_1D7704AF0();
}

unint64_t sub_1D7689B74()
{
  result = qword_1EE0AFA98;
  if (!qword_1EE0AFA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0AFA98);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AdPolicyFailureType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AdPolicyFailureType(uint64_t result, unsigned int a2, unsigned int a3)
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

double SponsorshipAdContext.userData.getter@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + 8);

  return result;
}

double SponsorshipAdContext.sponsorshipData.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  v5 = *(v1 + 56);
  v6 = *(v1 + 64);
  *a1 = *(v1 + 24);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;

  return result;
}

uint64_t SponsorshipAdContext.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 104);
  v4 = *(v1 + 136);
  v10 = *(v1 + 120);
  v3 = v10;
  v11 = v4;
  v12 = *(v1 + 152);
  v6 = *(v1 + 88);
  v9[0] = *(v1 + 72);
  v5 = v9[0];
  v9[1] = v6;
  v9[2] = v2;
  *(a1 + 80) = v12;
  *(a1 + 32) = v2;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *a1 = v5;
  *(a1 + 16) = v6;
  return sub_1D767DFA0(v9, v8);
}

uint64_t sub_1D7689E08()
{
  v1 = *v0;
  v2 = 0x61746144707061;
  v3 = 0x73726F736E6F7073;
  v4 = 0x6174614464656566;
  if (v1 != 4)
  {
    v4 = 0x6C61727265666572;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6174614472657375;
  if (v1 != 1)
  {
    v5 = 0x6E656D6563616C70;
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

uint64_t sub_1D7689EE4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D768B0F8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D7689F18(uint64_t a1)
{
  v2 = sub_1D768A3E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D7689F54(uint64_t a1)
{
  v2 = sub_1D768A3E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SponsorshipAdContext.encode(to:)(void *a1)
{
  sub_1D768AA80(0, &qword_1EC9BD138, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v18 - v6;
  v8 = *v1;
  v27 = *(v1 + 1);
  v26 = v1[16];
  v9 = *(v1 + 3);
  v24 = *(v1 + 4);
  v25 = v9;
  LODWORD(v9) = v1[40];
  v23 = *(v1 + 6);
  v22 = v1[56];
  v21 = *(v1 + 8);
  v10 = *(v1 + 120);
  v41 = *(v1 + 104);
  v42 = v10;
  v43 = *(v1 + 136);
  v44 = *(v1 + 19);
  v11 = *(v1 + 88);
  v39 = *(v1 + 72);
  v40 = v11;
  v19 = v1[160];
  v20 = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D768A3E0();
  sub_1D7704B10();
  LOBYTE(v33) = v8;
  LOBYTE(v30[0]) = 0;
  sub_1D7669D40();
  v12 = v45;
  sub_1D7704A00();
  if (v12)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v13 = v26;
  v15 = v24;
  v14 = v25;
  *&v33 = v27;
  LOBYTE(v30[0]) = 1;
  sub_1D7669394();

  sub_1D7704A00();

  LOBYTE(v33) = v13;
  LOBYTE(v30[0]) = 2;
  sub_1D76794CC();
  sub_1D7704A00();
  v45 = v5;
  *&v33 = v14;
  *(&v33 + 1) = v15;
  LOBYTE(v34) = v20;
  *(&v34 + 1) = v23;
  LOBYTE(v35) = v22;
  *(&v35 + 1) = v21;
  LOBYTE(v30[0]) = 3;
  sub_1D7679E50();

  sub_1D7704A00();

  v35 = v41;
  v36 = v42;
  v37 = v43;
  v38 = v44;
  v33 = v39;
  v34 = v40;
  v32 = 4;
  sub_1D767DFA0(&v39, v30);
  sub_1D766CFCC();
  sub_1D77049B0();
  v16 = v45;
  v30[2] = v35;
  v30[3] = v36;
  v30[4] = v37;
  v31 = v38;
  v30[0] = v33;
  v30[1] = v34;
  sub_1D7680928(v30);
  v29 = v19;
  v28 = 5;
  sub_1D768A434();
  sub_1D77049B0();
  return (*(v16 + 8))(v7, v4);
}

unint64_t sub_1D768A3E0()
{
  result = qword_1EC9BD140;
  if (!qword_1EC9BD140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD140);
  }

  return result;
}

unint64_t sub_1D768A434()
{
  result = qword_1EE0AE990;
  if (!qword_1EE0AE990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0AE990);
  }

  return result;
}

uint64_t SponsorshipAdContext.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D768AA80(0, &qword_1EC9BD148, MEMORY[0x1E69E6F48]);
  v71 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D768A3E0();
  sub_1D7704B00();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = v6;
  LOBYTE(v28) = 0;
  sub_1D7669CEC();
  sub_1D7704970();
  v10 = v34;
  LOBYTE(v28) = 1;
  sub_1D76684E8();
  sub_1D7704970();
  v27 = v34;
  LOBYTE(v28) = 2;
  sub_1D7679440();
  sub_1D7704970();
  v11 = v34;
  LOBYTE(v28) = 3;
  sub_1D7679DFC();
  sub_1D7704970();
  v24 = v11;
  v21 = v36;
  v25 = v38;
  v26 = v35;
  v12 = v39;
  v22 = v34;
  v23 = v40;
  v54 = 4;
  sub_1D766CDD0();
  sub_1D7704920();
  v20 = v12;
  v63 = v57;
  v64 = v58;
  v65 = v59;
  v66 = v60;
  v61 = v55;
  v62 = v56;
  v52 = 5;
  sub_1D768AAE4();
  sub_1D7704920();
  (*(v9 + 8))(v8, v71);
  LOBYTE(v28) = v10;
  *(&v28 + 1) = v70[0];
  DWORD1(v28) = *(v70 + 3);
  *(&v28 + 1) = v27;
  LOBYTE(v29) = v24;
  *(&v29 + 1) = *v69;
  DWORD1(v29) = *&v69[3];
  *(&v29 + 1) = v22;
  *&v30 = v26;
  LOBYTE(v9) = v20;
  BYTE8(v30) = v21;
  HIDWORD(v30) = *&v68[3];
  *(&v30 + 9) = *v68;
  v13 = v53;
  *&v31 = v25;
  BYTE8(v31) = v20;
  *(&v31 + 9) = *v67;
  HIDWORD(v31) = *&v67[3];
  *&v32[0] = v23;
  *(&v32[2] + 8) = v63;
  *(&v32[3] + 8) = v64;
  *(&v32[4] + 8) = v65;
  *(&v32[5] + 1) = v66;
  *(v32 + 8) = v61;
  *(&v32[1] + 8) = v62;
  v33 = v53;
  *(a2 + 160) = v53;
  v14 = v29;
  *a2 = v28;
  *(a2 + 16) = v14;
  v15 = v31;
  *(a2 + 32) = v30;
  *(a2 + 48) = v15;
  v16 = v32[1];
  *(a2 + 64) = v32[0];
  *(a2 + 80) = v16;
  v17 = v32[3];
  *(a2 + 96) = v32[2];
  *(a2 + 112) = v17;
  v18 = v32[5];
  *(a2 + 128) = v32[4];
  *(a2 + 144) = v18;
  sub_1D767B4C8(&v28, &v34);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v47 = v63;
  v48 = v64;
  v49 = v65;
  v45 = v61;
  LOBYTE(v34) = v10;
  *(&v34 + 1) = v70[0];
  HIDWORD(v34) = *(v70 + 3);
  v35 = v27;
  v36 = v24;
  *v37 = *v69;
  *&v37[3] = *&v69[3];
  v38 = v22;
  v39 = v26;
  LOBYTE(v40) = v21;
  *(&v40 + 1) = *v68;
  HIDWORD(v40) = *&v68[3];
  v41 = v25;
  v42 = v9;
  *v43 = *v67;
  *&v43[3] = *&v67[3];
  v44 = v23;
  v50 = v66;
  v46 = v62;
  v51 = v13;
  return sub_1D767B518(&v34);
}

void sub_1D768AA80(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D768A3E0();
    v7 = a3(a1, &type metadata for SponsorshipAdContext.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D768AAE4()
{
  result = qword_1EE0AE988;
  if (!qword_1EE0AE988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0AE988);
  }

  return result;
}

void sub_1D768AB68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

unint64_t sub_1D768ABAC()
{
  result = qword_1EE0AE5B8;
  if (!qword_1EE0AE5B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE0AE5B8);
  }

  return result;
}

__n128 __swift_memcpy161_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_1D768AC34(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 161))
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

uint64_t sub_1D768AC7C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 160) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 161) = 1;
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

    *(result + 161) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SponsorshipAdContext.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SponsorshipAdContext.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D768AE3C()
{
  result = qword_1EC9BD150;
  if (!qword_1EC9BD150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD150);
  }

  return result;
}

unint64_t sub_1D768AE94()
{
  result = qword_1EC9BD158;
  if (!qword_1EC9BD158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD158);
  }

  return result;
}

unint64_t sub_1D768AEEC()
{
  result = qword_1EC9BD160;
  if (!qword_1EC9BD160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD160);
  }

  return result;
}

uint64_t sub_1D768AF58(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v13 = a2;
    result = sub_1D7704880();
    a2 = v13;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1D7704880();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          v8 = MEMORY[0x1E69C5EF8];
          sub_1D768B308(0, &qword_1EC9BD178, MEMORY[0x1E69C5EF8]);
          sub_1D768B35C(&qword_1EC9BD180, &qword_1EC9BD178, v8);
          for (i = 0; i != v6; ++i)
          {
            v10 = sub_1D76ADB18(v14, i, a3);
            v12 = *v11;
            (v10)(v14, 0);
            *(v4 + 8 * i) = v12;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1D7703780();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D768B0F8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x61746144707061 && a2 == 0xE700000000000000;
  if (v4 || (sub_1D7704A30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6174614472657375 && a2 == 0xE800000000000000 || (sub_1D7704A30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E656D6563616C70 && a2 == 0xED00006174614474 || (sub_1D7704A30() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x73726F736E6F7073 && a2 == 0xEF61746144706968 || (sub_1D7704A30() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6174614464656566 && a2 == 0xE800000000000000 || (sub_1D7704A30() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6C61727265666572 && a2 == 0xEC00000061746144)
  {

    return 5;
  }

  else
  {
    v6 = sub_1D7704A30();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

void sub_1D768B308(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D77044B0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D768B35C(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1D768B308(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

NewsAds::AdContextDataNamespace::Edge_optional __swiftcall AdContextDataNamespace.Edge.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D77048E0();

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

  *v2 = v5;
  return result;
}

uint64_t AdContextDataNamespace.Edge.rawValue.getter()
{
  if (*v0)
  {
    return 0x676E696C69617274;
  }

  else
  {
    return 0x676E696461656CLL;
  }
}

uint64_t sub_1D768B44C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x676E696C69617274;
  }

  else
  {
    v3 = 0x676E696461656CLL;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x676E696C69617274;
  }

  else
  {
    v5 = 0x676E696461656CLL;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D7704A30();
  }

  return v8 & 1;
}

unint64_t sub_1D768B4F8()
{
  result = qword_1EC9BD188;
  if (!qword_1EC9BD188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC9BD188);
  }

  return result;
}

uint64_t sub_1D768B54C()
{
  sub_1D7704AD0();
  sub_1D77042D0();

  return sub_1D7704AF0();
}

uint64_t sub_1D768B5D0(uint64_t a1)
{
  sub_1D77042D0();
}

uint64_t sub_1D768B640(uint64_t a1)
{
  sub_1D7704AD0();
  sub_1D77042D0();

  return sub_1D7704AF0();
}

uint64_t sub_1D768B6C0@<X0>(char *a2@<X8>)
{
  v3 = sub_1D77048E0();

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

void sub_1D768B720(uint64_t *a1@<X8>)
{
  v2 = 0x676E696461656CLL;
  if (*v1)
  {
    v2 = 0x676E696C69617274;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1D768B780(uint64_t a1, unsigned int a2)
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

uint64_t sub_1D768B7C8(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t AdStatusConditionManager.addProvider(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  v6 = v2[7];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3[7] = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_10;
  }

  while (1)
  {
    v9 = v6[2];
    v8 = v6[3];
    if (v9 >= v8 >> 1)
    {
      v6 = sub_1D768C1D8((v8 > 1), v9 + 1, 1, v6);
    }

    v6[2] = v9 + 1;
    v10 = &v6[2 * v9];
    v10[4] = a1;
    v10[5] = a2;
    v3[7] = v6;
    swift_endAccess();
    v11 = swift_allocObject();
    ObjectType = swift_getObjectType();
    v13 = *(a2 + 8);
    swift_unknownObjectRetain();
    v13(ObjectType, a2);
    v22 = v13;
    sub_1D7703480();

    v13(ObjectType, a2);
    v14 = swift_allocObject();
    swift_weakInit();
    v15 = swift_allocObject();
    *(v15 + 24) = a2;
    swift_unknownObjectWeakInit();
    v16 = swift_allocObject();
    v16[2] = v11;
    v16[3] = v14;
    v16[4] = v15;

    sub_1D7703490();

    __swift_destroy_boxed_opaque_existential_1(v24);
    v6 = v22(ObjectType, a2);
    sub_1D7703480();

    a2 = v23;
    v17 = *(v23 + 16);
    if (!v17)
    {
      break;
    }

    v18 = 0;
    v19 = (v23 + 48);
    while (v18 < *(v23 + 16))
    {
      ++v18;
      v20 = *v19;
      a1 = *(v19 - 1);
      v24[0] = *(v19 - 2);
      v24[1] = a1;
      v25 = v20;

      v6 = v3;
      sub_1D768BD8C(v24);

      v19 += 24;
      if (v17 == v18)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_10:
    v6 = sub_1D768C1D8(0, v6[2] + 1, 1, v6);
    v3[7] = v6;
  }

LABEL_8:
}

void sub_1D768BAF0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = *a1;
  swift_beginAccess();
  v23 = a2;
  v5 = *(a2 + 16);
  v6 = *(v5 + 16);

  if (v6)
  {
    v7 = 0;
    while (v7 < *(v5 + 16))
    {
      v8 = (v5 + 32 + 24 * v7);
      v9 = *v8;
      v10 = v8[1];
      ++v7;
      v11 = *(v25 + 16) + 1;
      v12 = (v25 + 40);
      while (--v11)
      {
        if (*(v12 - 1) != v9 || *v12 != v10)
        {
          v12 += 3;
          if ((sub_1D7704A30() & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_3;
      }

      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        v29[0] = v9;
        v29[1] = v10;
        v30 = 1;
        swift_bridgeObjectRetain_n();
        sub_1D768BD8C(v29);
      }

LABEL_3:
      if (v7 == v6)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
    goto LABEL_25;
  }

LABEL_15:

  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
LABEL_23:
    swift_beginAccess();
    *(v23 + 16) = v25;

    return;
  }

  v14 = *(a4 + 24);
  ObjectType = swift_getObjectType();
  (*(v14 + 8))(ObjectType, v14);
  swift_unknownObjectRelease();
  sub_1D7703480();

  v16 = v28;
  v17 = *(v28 + 16);
  if (!v17)
  {
LABEL_22:

    goto LABEL_23;
  }

  v18 = 0;
  v19 = (v28 + 48);
  while (v18 < *(v16 + 16))
  {
    v20 = *(v19 - 2);
    v21 = *(v19 - 1);
    v22 = *v19;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v26[0] = v20;
      v26[1] = v21;
      v27 = v22;

      sub_1D768BD8C(v26);
    }

    ++v18;
    v19 += 24;
    if (v17 == v18)
    {
      goto LABEL_22;
    }
  }

LABEL_25:
  __break(1u);
}

uint64_t sub_1D768BD8C(uint64_t *a1)
{
  sub_1D768CEF0(0, &qword_1EE0AEB50, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v26 - v3;
  v5 = sub_1D7702FA0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v28 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v8 = a1[1];
  v31 = *(a1 + 16);
  if (qword_1EE0AE8B8 != -1)
  {
    swift_once();
  }

  v10 = qword_1EE0AE8C0;
  v11 = sub_1D7704590();
  sub_1D76736D4(0, &qword_1EE0AEBF0, &qword_1EE0AEBC0, MEMORY[0x1E69E7740], 1);
  v27 = v12;
  v13 = swift_allocObject();
  v26 = xmmword_1D7708FD0;
  *(v13 + 16) = xmmword_1D7708FD0;
  v14 = MEMORY[0x1E69E6158];
  *(v13 + 56) = MEMORY[0x1E69E6158];
  v15 = sub_1D7668854();
  *(v13 + 64) = v15;
  *(v13 + 32) = v9;
  *(v13 + 40) = v8;
  v33 = 0;
  v34 = 0xE000000000000000;
  v32 = v31;

  sub_1D7704850();
  v16 = v33;
  v17 = v34;
  *(v13 + 96) = v14;
  *(v13 + 104) = v15;
  *(v13 + 72) = v16;
  *(v13 + 80) = v17;
  v29 = v10;
  sub_1D7703ED0("Reporting for status condition, identifier=%{public}@, state=%{public}@", 71, 2, &dword_1D7662000, v10, v11, v13);

  sub_1D7702F60();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1D768D24C(v4);
    v18 = sub_1D7704590();
    v19 = swift_allocObject();
    *(v19 + 16) = v26;
    v20 = MEMORY[0x1E69E6158];
    *(v19 + 56) = MEMORY[0x1E69E6158];
    *(v19 + 64) = v15;
    *(v19 + 32) = v9;
    *(v19 + 40) = v8;
    v33 = 0;
    v34 = 0xE000000000000000;
    v32 = v31;

    sub_1D7704850();
    v21 = v33;
    v22 = v34;
    *(v19 + 96) = v20;
    *(v19 + 104) = v15;
    *(v19 + 72) = v21;
    *(v19 + 80) = v22;
    sub_1D7703ED0("Failed to create UUID for status condition, identifier=%{public}@, state=%{public}@", 83, 2, &dword_1D7662000, v29, v18, v19);
  }

  else
  {
    v24 = v28;
    (*(v6 + 32))(v28, v4, v5);
    __swift_project_boxed_opaque_existential_1((v30 + 16), *(v30 + 40));
    if (v31)
    {
      v25.n128_f64[0] = sub_1D76FB078(v24);
    }

    else
    {
      v25.n128_f64[0] = sub_1D76FAFE4(v24);
    }

    return (*(v6 + 8))(v24, v5, v25);
  }
}

uint64_t AdStatusConditionManager.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return v0;
}

uint64_t AdStatusConditionManager.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

void *sub_1D768C1D8(void *result, int64_t a2, char a3, void *a4)
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
    sub_1D76736D4(0, &qword_1EE0AE5A0, &qword_1EE0AE680, &protocol descriptor for AdStatusConditionProviderType, 0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1D7666184(0, &qword_1EE0AE680, &protocol descriptor for AdStatusConditionProviderType, 0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D768C380(char *result, int64_t a2, char a3, char *a4)
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
    sub_1D766C3F0(0, &qword_1EC9BD190, &type metadata for AdPreviewQueue.AdPreviewWrapper, MEMORY[0x1E69E6F90]);
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

char *sub_1D768C4A4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1D766C3F0(0, &qword_1EE0AEC60, &type metadata for DebugJournal.Action, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D768C5D8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1D766C3F0(0, &qword_1EE0AEC28, &type metadata for AdPolicyFailure, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D768C764(char *result, int64_t a2, char a3, char *a4)
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
    sub_1D766C3F0(0, &qword_1EE0AEC20, &type metadata for JournalEntryStatus.Info, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D768C89C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1D766C3F0(0, &qword_1EE0AEC38, &type metadata for AdSegmentScope, MEMORY[0x1E69E6F90]);
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

char *sub_1D768C9C4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1D768CEF0(0, &qword_1EE0AEBF8, type metadata accessor for CGRect, MEMORY[0x1E69E6F90]);
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
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

void *sub_1D768CB20(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(void))
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

  sub_1D768CEF0(0, a5, a6, MEMORY[0x1E69E6F90]);
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

void *sub_1D768CD30(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, unint64_t *a6, uint64_t a7)
{
  v10 = result;
  if (a3)
  {
    v11 = a4[3];
    v12 = v11 >> 1;
    if ((v11 >> 1) < a2)
    {
      if (v12 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v12 = v11 & 0xFFFFFFFFFFFFFFFELL;
      if ((v11 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v12 = a2;
      }
    }
  }

  else
  {
    v12 = a2;
  }

  v13 = a4[2];
  if (v12 <= v13)
  {
    v14 = a4[2];
  }

  else
  {
    v14 = v12;
  }

  if (v14)
  {
    sub_1D768CE84(0, a5, a6, a7);
    v15 = swift_allocObject();
    v16 = _swift_stdlib_malloc_size(v15);
    v17 = v16 - 32;
    if (v16 < 32)
    {
      v17 = v16 - 25;
    }

    v15[2] = v13;
    v15[3] = 2 * (v17 >> 3);
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
  }

  if (v10)
  {
    if (v15 != a4 || v15 + 4 >= &a4[v13 + 4])
    {
      memmove(v15 + 4, a4 + 4, 8 * v13);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1D766C3F0(0, a6, a7, MEMORY[0x1E69E62F8]);
    swift_arrayInitWithCopy();
  }

  return v15;
}

void sub_1D768CE84(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1D766C3F0(255, a3, a4, MEMORY[0x1E69E62F8]);
    v5 = sub_1D7704A20();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1D768CEF0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void *sub_1D768CF54(void *result, int64_t a2, char a3, void *a4)
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
    sub_1D768CEF0(0, &qword_1EE0AEBD8, sub_1D767050C, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1D767050C();
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D768D0A0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1D766C3F0(0, &qword_1EC9BD1B0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6F90]);
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

void sub_1D768D1CC(uint64_t a1)
{
  if (!qword_1EE0B0320[0])
  {
    v4[0] = &type metadata for NativeAdContext;
    v4[1] = type metadata accessor for NativeAdPlacement(255);
    v4[2] = sub_1D7666D14();
    v4[3] = &protocol witness table for NativeAdPlacement;
    v2 = type metadata accessor for JournalEntry(a1, v4);
    if (!v3)
    {
      atomic_store(v2, qword_1EE0B0320);
    }
  }
}

uint64_t sub_1D768D24C(uint64_t a1)
{
  sub_1D768CEF0(0, &qword_1EE0AEB50, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ArticleAdData.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ArticleAdData.primaryAudience.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t ArticleAdData.language.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t sub_1D768D3A4()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0x6F67657461436461;
  if (v1 != 6)
  {
    v3 = 0x65676175676E616CLL;
  }

  v4 = 0x6F69746365536461;
  if (v1 != 4)
  {
    v4 = 0x726F7779654B6461;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x6F736E6F70537369;
  if (v1 != 2)
  {
    v5 = 0x417972616D697270;
  }

  if (*v0)
  {
    v2 = 0x74666172447369;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D768D4C0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D768E5EC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D768D4F4(uint64_t a1)
{
  v2 = sub_1D768D87C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D768D530(uint64_t a1)
{
  v2 = sub_1D768D87C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ArticleAdData.encode(to:)(void *a1)
{
  sub_1D768DE88(0, &qword_1EC9BD1B8, MEMORY[0x1E69E6F58]);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v22 - v5;
  v7 = *(v1 + 16);
  v27 = *(v1 + 17);
  LODWORD(v28) = v7;
  v8 = *(v1 + 24);
  v25 = *(v1 + 32);
  v26 = v8;
  v9 = *(v1 + 40);
  v23 = *(v1 + 48);
  v24 = v9;
  v10 = *(v1 + 64);
  v22[0] = *(v1 + 56);
  v22[1] = v10;
  v11 = *(v1 + 72);
  v12 = a1[3];
  v13 = a1;
  v15 = v14;
  __swift_project_boxed_opaque_existential_1(v13, v12);
  sub_1D768D87C();
  sub_1D7704B10();
  LOBYTE(v31) = 0;
  v16 = v6;
  v17 = v29;
  sub_1D77049C0();
  if (v17)
  {
    return (*(v4 + 8))(v6, v15);
  }

  v18 = v23;
  v19 = v24;
  v29 = v11;
  LOBYTE(v31) = 1;
  sub_1D77049D0();
  LOBYTE(v31) = 2;
  sub_1D77049D0();
  LOBYTE(v31) = 3;
  sub_1D77049C0();
  v31 = v19;
  v30 = 4;
  sub_1D76697B0();
  sub_1D768DEEC(&qword_1EC9BE010, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
  v28 = v16;
  sub_1D7704A00();
  v31 = v18;
  v30 = 5;
  sub_1D7704A00();
  v31 = v22[0];
  v30 = 6;
  v21 = v28;
  sub_1D7704A00();
  LOBYTE(v31) = 7;
  sub_1D77049A0();
  return (*(v4 + 8))(v21, v15);
}