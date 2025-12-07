uint64_t sub_2685CDD2C(uint64_t (*a1)(uint64_t, __int128 *))
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  sub_268689E94();
  v12 = v17;
  v13 = v18;
  v14 = v19;
  v10 = v15;
  v11 = v16;
  a1(v5, &v10);
  v7 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v7 != 2)
    {
      goto LABEL_2;
    }

    v8 = *(v3 + 16);
    v9 = *(v3 + 24);
  }

  else
  {
    if (!v7)
    {
      if ((v4 & 0xFF000000000000) == 0)
      {
        goto LABEL_2;
      }

      goto LABEL_11;
    }

    v8 = v3;
    v9 = v3 >> 32;
  }

  if (v8 != v9)
  {
LABEL_11:
    sub_268689844();
  }

LABEL_2:
  v18 = v13;
  v19 = v14;
  v16 = v11;
  v17 = v12;
  v15 = v10;
  return sub_268689EF4();
}

uint64_t sub_2685CDE2C@<X0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_26868A5E0;
  type metadata accessor for Google_Protobuf_Option._StorageClass();
  result = swift_initStaticObject();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2685CDEBC@<X0>(void *a1@<X8>)
{
  if (qword_28028BC18 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_28028C1B8;
  v2 = qword_28028C1C0;
  v3 = unk_28028C1C8;
  *a1 = qword_28028C1B0;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t sub_2685CDF7C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, __int128 *))
{
  v5 = *v3;
  v6 = v3[1];
  v7 = v3[2];
  sub_268689E94();
  v11 = v16;
  v12 = v17;
  v13 = v18;
  v9 = v14;
  v10 = v15;
  a3(v7, &v9);
  sub_2685C962C(&v9, v5, v6);
  v17 = v12;
  v18 = v13;
  v15 = v10;
  v16 = v11;
  v14 = v9;
  return sub_268689EF4();
}

__n128 sub_2685CE058(__int128 *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, __int128 *, uint64_t))
{
  v7 = *v4;
  v6 = v4[1];
  v8 = v4[2];
  v9 = a1[3];
  v15 = a1[2];
  v16 = v9;
  v17 = *(a1 + 8);
  v10 = a1[1];
  v13 = *a1;
  v14 = v10;
  a4(v8, &v13, a3);
  sub_2685C962C(&v13, v7, v6);
  v11 = v16;
  a1[2] = v15;
  a1[3] = v11;
  *(a1 + 8) = v17;
  result = v14;
  *a1 = v13;
  a1[1] = result;
  return result;
}

uint64_t sub_2685CE110(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, __int128 *))
{
  v6 = *v4;
  v7 = v4[1];
  v8 = v4[2];
  sub_268689E94();
  v12 = v17;
  v13 = v18;
  v14 = v19;
  v10 = v15;
  v11 = v16;
  a4(v8, &v10);
  sub_2685C962C(&v10, v6, v7);
  v18 = v13;
  v19 = v14;
  v16 = v11;
  v17 = v12;
  v15 = v10;
  return sub_268689EF4();
}

BOOL _s20SiriOntologyProtobuf07Google_C6_FieldV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 28);
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v33 = *(a1 + 56);
  v34 = *(a1 + 48);
  v31 = *(a1 + 64);
  v29 = *(a1 + 68);
  v27 = *(a1 + 72);
  v25 = *(a1 + 80);
  v23 = *(a1 + 88);
  v21 = *(a1 + 96);
  v19 = *(a1 + 104);
  v17 = *(a1 + 112);
  v16 = *(a1 + 120);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 28);
  v10 = *(a2 + 32);
  v9 = *(a2 + 40);
  v11 = *(a2 + 56);
  v32 = *(a2 + 48);
  v30 = *(a2 + 64);
  v28 = *(a2 + 68);
  v26 = *(a2 + 72);
  v24 = *(a2 + 80);
  v22 = *(a2 + 88);
  v20 = *(a2 + 96);
  v18 = *(a2 + 104);
  v15 = *(a2 + 112);
  v14 = *(a2 + 120);
  if (!sub_2685C4EB4(*a1, *(a1 + 8), *a2))
  {
    return 0;
  }

  if (v7)
  {
    if (v6 > 1)
    {
      if (v6 == 2)
      {
        if (v2 != 2)
        {
          return 0;
        }
      }

      else if (v2 != 3)
      {
        return 0;
      }
    }

    else if (v6)
    {
      if (v2 != 1)
      {
        return 0;
      }
    }

    else if (v2)
    {
      return 0;
    }
  }

  else if (v2 != v6)
  {
    return 0;
  }

  if (v3 == v8 && (v5 == v10 && v4 == v9 || (sub_268689E14() & 1) != 0) && (v34 == v32 && v33 == v11 || (sub_268689E14() & 1) != 0) && v31 == v30 && ((v29 ^ v28) & 1) == 0 && (sub_26860D254(v27, v26) & 1) != 0 && (v25 == v24 && v23 == v22 || (sub_268689E14() & 1) != 0) && (v21 == v20 && v19 == v18 || (sub_268689E14() & 1) != 0))
  {
    sub_2685BA80C(v17, v16);
    sub_2685BA80C(v15, v14);
    v12 = sub_2686131DC(v17, v16, v15, v14);
    sub_2685B593C(v15, v14);
    sub_2685B593C(v17, v16);
    return v12;
  }

  return 0;
}

BOOL sub_2685CE4D0(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[2];
  if (v5 != v8)
  {

    LOBYTE(a3) = a3(v5, v8);

    if ((a3 & 1) == 0)
    {
      return 0;
    }
  }

  sub_2685BA80C(v3, v4);
  sub_2685BA80C(v6, v7);
  v10 = sub_2686131DC(v3, v4, v6, v7);
  sub_2685B593C(v6, v7);
  sub_2685B593C(v3, v4);
  return v10;
}

BOOL _s20SiriOntologyProtobuf07Google_C10_EnumValueV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 4);
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = *(a2 + 16);
  v8 = *(a2 + 24);
  v7 = *(a2 + 32);
  v9 = *(a2 + 40);
  if ((*a1 != *a2 || a1[1] != *(a2 + 8)) && (sub_268689E14() & 1) == 0 || v2 != v6 || (sub_26860D254(v4, v8) & 1) == 0)
  {
    return 0;
  }

  sub_2685BA80C(v3, v5);
  sub_2685BA80C(v7, v9);
  v10 = sub_2686131DC(v3, v5, v7, v9);
  sub_2685B593C(v7, v9);
  sub_2685B593C(v3, v5);
  return v10;
}

uint64_t sub_2685CE694(uint64_t a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = 0xE000000000000000;
  v3 = MEMORY[0x277D84F90];
  *(v1 + 32) = MEMORY[0x277D84F90];
  *(v1 + 40) = v3;
  *(v1 + 48) = v3;
  *(v1 + 88) = 0;
  *(v1 + 72) = 0u;
  *(v1 + 56) = 0u;
  *(v1 + 96) = 1;
  swift_beginAccess();
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v4;
  *(v1 + 24) = v5;
  swift_beginAccess();
  v6 = *(a1 + 32);
  swift_beginAccess();
  *(v1 + 32) = v6;
  swift_beginAccess();
  v7 = *(a1 + 40);
  swift_beginAccess();
  *(v1 + 40) = v7;

  swift_beginAccess();
  v8 = *(a1 + 48);
  swift_beginAccess();
  *(v1 + 48) = v8;

  swift_beginAccess();
  v9 = *(a1 + 56);
  v10 = *(a1 + 64);
  v11 = *(a1 + 72);
  v12 = *(a1 + 80);
  swift_beginAccess();
  v13 = *(v1 + 56);
  v15 = *(v1 + 64);
  v14 = *(v1 + 72);
  v16 = *(v1 + 80);
  *(v1 + 56) = v9;
  *(v1 + 64) = v10;
  *(v1 + 72) = v11;
  *(v1 + 80) = v12;
  sub_2685CE8D4(v9, v10, v11, v12);
  sub_2685CE920(v13, v15, v14, v16);
  swift_beginAccess();
  v17 = *(a1 + 88);
  LOBYTE(a1) = *(a1 + 96);
  swift_beginAccess();
  *(v1 + 88) = v17;
  *(v1 + 96) = a1;
  return v1;
}

void sub_2685CE8D4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2)
  {

    sub_2685BA80C(a3, a4);
  }
}

void sub_2685CE920(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2)
  {

    sub_2685B593C(a3, a4);
  }
}

uint64_t sub_2685CE990(uint64_t a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = 0xE000000000000000;
  v3 = MEMORY[0x277D84F90];
  *(v1 + 32) = MEMORY[0x277D84F90];
  *(v1 + 40) = v3;
  *(v1 + 80) = 0;
  *(v1 + 64) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 88) = 1;
  swift_beginAccess();
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v4;
  *(v1 + 24) = v5;
  swift_beginAccess();
  v6 = *(a1 + 32);
  swift_beginAccess();
  *(v1 + 32) = v6;
  swift_beginAccess();
  v7 = *(a1 + 40);
  swift_beginAccess();
  *(v1 + 40) = v7;

  swift_beginAccess();
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v10 = *(a1 + 64);
  v11 = *(a1 + 72);
  swift_beginAccess();
  v12 = *(v1 + 48);
  v14 = *(v1 + 56);
  v13 = *(v1 + 64);
  v15 = *(v1 + 72);
  *(v1 + 48) = v8;
  *(v1 + 56) = v9;
  *(v1 + 64) = v10;
  *(v1 + 72) = v11;
  sub_2685CE8D4(v8, v9, v10, v11);
  sub_2685CE920(v12, v14, v13, v15);
  swift_beginAccess();
  v16 = *(a1 + 80);
  LOBYTE(a1) = *(a1 + 88);
  swift_beginAccess();
  *(v1 + 80) = v16;
  *(v1 + 88) = a1;
  return v1;
}

uint64_t sub_2685CEBA8(uint64_t result, unint64_t a2, uint64_t a3)
{
  if (a3)
  {
    sub_2685BA80C(result, a2);
  }

  return result;
}

unint64_t sub_2685CEBE8()
{
  result = qword_28028C1D0;
  if (!qword_28028C1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028C1D0);
  }

  return result;
}

unint64_t sub_2685CEC3C()
{
  result = qword_28028C1D8;
  if (!qword_28028C1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028C1D8);
  }

  return result;
}

unint64_t sub_2685CEC90()
{
  result = qword_28028C1E0;
  if (!qword_28028C1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028C1E0);
  }

  return result;
}

unint64_t sub_2685CED10()
{
  result = qword_28028C1E8;
  if (!qword_28028C1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028C1E8);
  }

  return result;
}

unint64_t sub_2685CED64()
{
  result = qword_28028C1F0;
  if (!qword_28028C1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028C1F0);
  }

  return result;
}

unint64_t sub_2685CEDBC()
{
  result = qword_28028C1F8;
  if (!qword_28028C1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028C1F8);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_2685CEEB4()
{
  result = qword_28028C210;
  if (!qword_28028C210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028C210);
  }

  return result;
}

unint64_t sub_2685CEF08()
{
  result = qword_28028C218;
  if (!qword_28028C218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028C218);
  }

  return result;
}

unint64_t sub_2685CEF60()
{
  result = qword_28028C220;
  if (!qword_28028C220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028C220);
  }

  return result;
}

unint64_t sub_2685CEFE0()
{
  result = qword_28028C228;
  if (!qword_28028C228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028C228);
  }

  return result;
}

unint64_t sub_2685CF034()
{
  result = qword_28028C230;
  if (!qword_28028C230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028C230);
  }

  return result;
}

unint64_t sub_2685CF08C()
{
  result = qword_28028C238;
  if (!qword_28028C238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028C238);
  }

  return result;
}

uint64_t sub_2685CF140(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2685CF194(uint64_t a1)
{
  result = sub_2685CF1BC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2685CF1BC()
{
  result = qword_28028C260;
  if (!qword_28028C260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028C260);
  }

  return result;
}

unint64_t sub_2685CF23C()
{
  result = qword_28028C268;
  if (!qword_28028C268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028C268);
  }

  return result;
}

unint64_t sub_2685CF290()
{
  result = qword_28028C270;
  if (!qword_28028C270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028C270);
  }

  return result;
}

unint64_t sub_2685CF2E8()
{
  result = qword_28028C278;
  if (!qword_28028C278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028C278);
  }

  return result;
}

unint64_t sub_2685CF33C(uint64_t a1)
{
  result = sub_2685CF364();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2685CF364()
{
  result = qword_28028C280;
  if (!qword_28028C280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028C280);
  }

  return result;
}

unint64_t sub_2685CF3E4()
{
  result = qword_28028C288;
  if (!qword_28028C288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028C288);
  }

  return result;
}

unint64_t sub_2685CF438()
{
  result = qword_28028C290;
  if (!qword_28028C290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028C290);
  }

  return result;
}

unint64_t sub_2685CF490()
{
  result = qword_28028C298;
  if (!qword_28028C298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028C298);
  }

  return result;
}

unint64_t sub_2685CF4E4(uint64_t a1)
{
  result = sub_2685CF50C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2685CF50C()
{
  result = qword_28028C2A0;
  if (!qword_28028C2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028C2A0);
  }

  return result;
}

unint64_t sub_2685CF58C()
{
  result = qword_28028C2A8;
  if (!qword_28028C2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028C2A8);
  }

  return result;
}

unint64_t sub_2685CF5E0()
{
  result = qword_28028C2B0;
  if (!qword_28028C2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028C2B0);
  }

  return result;
}

unint64_t sub_2685CF638()
{
  result = qword_28028C2B8;
  if (!qword_28028C2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028C2B8);
  }

  return result;
}

unint64_t sub_2685CF68C(uint64_t a1)
{
  result = sub_2685CF6B4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2685CF6B4()
{
  result = qword_28028C2C0;
  if (!qword_28028C2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028C2C0);
  }

  return result;
}

unint64_t sub_2685CF734()
{
  result = qword_28028C2C8;
  if (!qword_28028C2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028C2C8);
  }

  return result;
}

unint64_t sub_2685CF788()
{
  result = qword_28028C2D0;
  if (!qword_28028C2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028C2D0);
  }

  return result;
}

unint64_t sub_2685CF7E0()
{
  result = qword_28028C2D8;
  if (!qword_28028C2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028C2D8);
  }

  return result;
}

unint64_t sub_2685CF834(uint64_t a1)
{
  result = sub_2685CF85C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2685CF85C()
{
  result = qword_28028C2E0;
  if (!qword_28028C2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028C2E0);
  }

  return result;
}

uint64_t sub_2685CF8DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2685CF918()
{
  result = qword_28028C2E8;
  if (!qword_28028C2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028C2E8);
  }

  return result;
}

unint64_t sub_2685CF970()
{
  result = qword_28028C2F0;
  if (!qword_28028C2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028C2F0);
  }

  return result;
}

uint64_t keypath_get_14Tm@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  swift_beginAccess();
  *a2 = *(v3 + 32);
}

uint64_t keypath_get_16Tm@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  swift_beginAccess();
  *a2 = *(v3 + 40);
}

uint64_t keypath_getTm@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

__n128 __swift_memcpy128_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_2685CFB14(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2685CFB5C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 128) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
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

uint64_t sub_2685CFC10(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_2685CFC58(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_2685CFCB4(uint64_t a1, int a2)
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

uint64_t sub_2685CFCFC(uint64_t result, int a2, int a3)
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

unint64_t sub_2685CFD4C()
{
  result = qword_28028C2F8;
  if (!qword_28028C2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028C2F8);
  }

  return result;
}

unint64_t sub_2685CFDA0()
{
  result = qword_28028C300;
  if (!qword_28028C300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028C300);
  }

  return result;
}

unint64_t sub_2685CFDF4()
{
  result = qword_28028C308;
  if (!qword_28028C308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028C308);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_20SiriOntologyProtobuf17JSONDecodingErrorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_2685CFEC0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFEB && *(a1 + 16))
  {
    return (*a1 + 2147483628);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 19;
  if (v4 >= 0x15)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2685CFF18(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFEC)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483628;
    if (a3 >= 0x7FFFFFEC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFEC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 19;
    }
  }

  return result;
}

void *sub_2685CFF68(void *result, int a2)
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

uint64_t sub_2685CFF98(uint64_t result, unint64_t a2)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v3 != 2)
    {
      v4 = 0;
      v7 = *v2;
      goto LABEL_32;
    }

    v6 = *(result + 16);
    v5 = *(result + 24);
    v4 = v5 - v6;
    if (!__OFSUB__(v5, v6))
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v3)
  {
    v4 = BYTE6(a2);
    goto LABEL_11;
  }

  if (__OFSUB__(HIDWORD(result), result))
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v4 = HIDWORD(result) - result;
LABEL_10:
  if (v4 < 0)
  {
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

LABEL_11:
  v7 = *v2;
  if (!v4)
  {
LABEL_32:
    *v2 = v7 + v4;
    return result;
  }

  if (v3)
  {
    if (v3 == 2)
    {
      v8 = *(result + 16);
    }

    else
    {
      v8 = result;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = v8 + v4;
  if (__OFADD__(v8, v4))
  {
    goto LABEL_34;
  }

  if (v9 < v8)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v8 == v9)
  {
    goto LABEL_32;
  }

  if (v3 != 2)
  {
    if (v3 != 1)
    {
      result = sub_2686897C4();
      goto LABEL_32;
    }

    if (result >> 32 >= v9 && v8 >= result && result >> 32 >= v8 && v9 >= result)
    {
      goto LABEL_30;
    }

    __break(1u);
  }

  if (v8 < *(result + 16))
  {
    goto LABEL_37;
  }

  if (*(result + 24) >= v9)
  {
LABEL_30:
    result = sub_2686897A4();
    goto LABEL_32;
  }

LABEL_38:
  __break(1u);
  return result;
}

uint64_t getEnumTagSinglePayload for BinaryEncoder(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 8))
  {
    return (*a1 + 2);
  }

  if (*a1)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for BinaryEncoder(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    if (a3 >= 2)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

double Google_Protobuf_ListValue.init(arrayLiteral:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{

  *a2 = a1;
  result = 0.0;
  *(a2 + 8) = xmmword_26868A5E0;
  return result;
}

double Google_Protobuf_ListValue.init(values:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{

  result = 0.0;
  *(a2 + 8) = xmmword_26868A5E0;
  *a2 = a1;
  return result;
}

double sub_2685D0200@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{

  *a2 = a1;
  result = 0.0;
  *(a2 + 8) = xmmword_26868A5E0;
  return result;
}

double *sub_2685D0240(unsigned __int8 *a1)
{
  v49 = sub_2686899A4();
  v3 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v51 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = *a1;
  v50 = a1[1];
  v5 = *v1;
  v63 = MEMORY[0x277D84F90];
  v64 = 256;
  result = sub_2686689EC(91, 0xE100000000000000);
  v55 = *(v5 + 16);
  if (v55)
  {
    v7 = 0;
    v8 = 0;
    v47 = v5;
    v48 = (v3 + 8);
    v9 = (v5 + 48);
    v10 = "";
    while (1)
    {
      if (v7 >= *(v5 + 16))
      {
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
        return result;
      }

      v11 = *(v9 - 2);
      v12 = *v9;
      v56 = *(v9 - 1);
      v57 = v11;
      sub_2685BA80C(v11, v56);

      v13 = &v63;
      sub_2685B403C(v10, v8, v14);
      v15 = *(v12 + 16);
      v16 = *(v12 + 24);
      v17 = *(v12 + 32);
      v18 = *(v12 + 40);
      if ((~v17 & 0x3000000000000000) == 0 && v18 == 255)
      {
        sub_2685D104C();
        v45 = swift_allocError();
        *v46 = 5;
        v54 = v45;
        swift_willThrow();
LABEL_40:

        sub_2685B593C(v57, v56);

        return v13;
      }

      v19 = ((v17 >> 60) & 3 | (4 * (v18 & 1u)));
      if (v19 > 2)
      {
        break;
      }

      if (!v19)
      {
        v30 = "null";
LABEL_21:
        sub_2685B403C(v30, 4, v19);
        goto LABEL_29;
      }

      if (v19 == 1)
      {
        if ((~*&v15 & 0x7FF0000000000000) == 0)
        {
          v20 = v57;
          if ((*&v15 & 0xFFFFFFFFFFFFFLL) != 0)
          {
            v21 = "NaN";
            v22 = 5;
          }

          else if (v15 >= 0.0)
          {
            v21 = "Infinity";
            v22 = 10;
          }

          else
          {
            v21 = "-Infinity";
            v22 = 11;
          }

          sub_2685B403C(v21, v22, 0x7FF0000000000000);
          v42 = v20;
          goto LABEL_30;
        }

        v40 = sub_268689BD4();
        sub_2686689EC(v40, v41);
      }

      else
      {
        v31 = *(v12 + 16);
        sub_2685D10C8(v31, *(v12 + 24), *(v12 + 32), v18 & 1);
        sub_268631D18(v31, v16);
        sub_2685D1170(v31, v16, v17, v18);
      }

LABEL_29:
      v42 = v57;
LABEL_30:
      ++v7;
      sub_2685B593C(v42, v56);

      v9 += 3;
      v8 = 1;
      v10 = ",";
      if (v55 == v7)
      {
        goto LABEL_36;
      }
    }

    if (v19 != 3)
    {
      v52 = *(v12 + 24);
      v53 = *&v15;
      if (v19 == 4)
      {
        v62 = &off_287929FB8;
        v58 = v15;
        v59 = v16;
        v60 = v17;
        v61 = &type metadata for Google_Protobuf_Struct;
        v23 = *&v15;
        v13 = __swift_project_boxed_opaque_existential_1(&v58, &type metadata for Google_Protobuf_Struct);
        v66 = v65;
        v67 = v50;
        sub_2685D10A0(v23, v16, v17, v18);

        sub_2685BA80C(v16, v17);
        v24 = v54;
        sub_2685D8AEC(&v66);
        v54 = v24;
        if (v24)
        {
          goto LABEL_39;
        }

        v25 = v51;
        sub_268689994();
        v26 = sub_268689954();
        v28 = v27;
        result = (*v48)(v25, v49);
        if (v28 >> 60 == 15)
        {
          goto LABEL_44;
        }

        __swift_destroy_boxed_opaque_existential_1(&v58);
        sub_268689994();
        result = sub_268689964();
        if (!v29)
        {
          goto LABEL_43;
        }
      }

      else
      {
        v62 = &off_287929740;
        v58 = v15;
        v59 = v16;
        v32 = v16;
        v60 = v17 & 0xCFFFFFFFFFFFFFFFLL;
        v61 = &type metadata for Google_Protobuf_ListValue;
        v33 = *&v15;
        v34 = __swift_project_boxed_opaque_existential_1(&v58, &type metadata for Google_Protobuf_ListValue);
        v66 = v65;
        v67 = v50;
        sub_2685D10A0(v33, v32, v17, v18);

        sub_2685BA80C(v32, v17 & 0xCFFFFFFFFFFFFFFFLL);
        v13 = v34;
        v35 = v54;
        sub_2685D0240(&v66);
        v54 = v35;
        if (v35)
        {
LABEL_39:
          __swift_destroy_boxed_opaque_existential_1(&v58);
          sub_2685D1170(v53, v52, v17, v18);
          goto LABEL_40;
        }

        v36 = v51;
        sub_268689994();
        v26 = sub_268689954();
        v28 = v37;
        result = (*v48)(v36, v49);
        if (v28 >> 60 == 15)
        {
          goto LABEL_46;
        }

        __swift_destroy_boxed_opaque_existential_1(&v58);
        sub_268689994();
        result = sub_268689964();
        if (!v29)
        {
          goto LABEL_45;
        }
      }

      v38 = result;
      v39 = v29;
      sub_2685B98FC(v26, v28);
      sub_2686689EC(v38, v39);
      sub_2685D1170(v53, v52, v17, v18);
      v5 = v47;
      goto LABEL_29;
    }

    if ((LOBYTE(v15) & 1) == 0)
    {
      sub_2685B403C("false", 5, v19);
      goto LABEL_29;
    }

    v30 = "true";
    goto LABEL_21;
  }

LABEL_36:
  sub_2686689EC(93, 0xE100000000000000);
  v58 = v63;

  sub_268689994();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C318, &unk_2686929B0);
  sub_2685B5450();
  v13 = sub_268689974();
  v44 = v43;

  if (!v44)
  {
    goto LABEL_47;
  }

  return v13;
}

uint64_t sub_2685D0838(uint64_t *a1)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v4 == v5)
  {
    goto LABEL_8;
  }

  v6 = *a1;
  while (1)
  {
    v7 = *(v6 + v4);
    v8 = v7 > 0x20;
    v9 = (1 << v7) & 0x100002600;
    if (v8 || v9 == 0)
    {
      break;
    }

    a1[2] = ++v4;
    if (v5 == v4)
    {
      goto LABEL_8;
    }
  }

  if (v5 == v4 || *(*a1 + v4) != 110 || (result = sub_2685BD87C(&unk_287928360), (result & 1) == 0))
  {
LABEL_8:
    result = sub_2685BE1FC(91);
    if (!v2)
    {
      result = sub_2685BE8E0();
      if ((result & 1) == 0)
      {
        type metadata accessor for Google_Protobuf_Value._StorageClass();
        v32 = xmmword_26868A5E0;
        inited = swift_initStaticObject();
        sub_268667698(a1);
        v31 = inited;
        while (1)
        {
          v12 = *v1;
          sub_2685BA80C(v32, *(&v32 + 1));

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *v1 = v12;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v12 = sub_268665C24(0, *(v12 + 2) + 1, 1, v12);
            *v1 = v12;
          }

          v15 = *(v12 + 2);
          v14 = *(v12 + 3);
          v16 = v15 + 1;
          if (v15 >= v14 >> 1)
          {
            v28 = sub_268665C24((v14 > 1), v15 + 1, 1, v12);
            v16 = v15 + 1;
            v12 = v28;
          }

          *(v12 + 2) = v16;
          v17 = &v12[24 * v15];
          *(v17 + 2) = v32;
          *(v17 + 6) = inited;
          *v1 = v12;
          v18 = a1[1];
          v19 = a1[2];
          if (v19 == v18)
          {
            goto LABEL_38;
          }

          v20 = *a1;
          while (1)
          {
            v21 = *(v20 + v19);
            v8 = v21 > 0x20;
            v22 = (1 << v21) & 0x100002600;
            if (v8 || v22 == 0)
            {
              break;
            }

            a1[2] = ++v19;
            if (v18 == v19)
            {
              goto LABEL_38;
            }
          }

          if (v18 == v19)
          {
LABEL_38:
            sub_2685BD910();
            swift_allocError();
            *v29 = xmmword_26868A580;
LABEL_39:
            swift_willThrow();
            sub_2685B593C(v32, *(&v32 + 1));
          }

          v24 = *a1;
          if (*(*a1 + v19) == 93)
          {
            break;
          }

          while (1)
          {
            v25 = *(v24 + v19);
            v8 = v25 > 0x20;
            v26 = (1 << v25) & 0x100002600;
            if (v8 || v26 == 0)
            {
              break;
            }

            a1[2] = ++v19;
            if (v18 == v19)
            {
              goto LABEL_38;
            }
          }

          if (v18 == v19)
          {
            goto LABEL_38;
          }

          if (*(*a1 + v19) != 44)
          {
            sub_2685BD910();
            swift_allocError();
            *v30 = 0;
            v30[1] = 0;
            goto LABEL_39;
          }

          sub_2685B593C(v32, *(&v32 + 1));

          a1[2] = v19 + 1;
          v32 = xmmword_26868A5E0;
          inited = v31;
          sub_268667698(a1);
        }

        sub_2685B593C(v32, *(&v32 + 1));

        a1[2] = v19 + 1;
      }
    }
  }

  return result;
}

unint64_t Google_Protobuf_ListValue.subscript.getter@<X0>(unint64_t result@<X0>, uint64_t *a2@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (*(*v2 + 16) <= result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v3 = (*v2 + 24 * result);
  v4 = v3[4];
  v5 = v3[5];
  v6 = v3[6];
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  sub_2685BA80C(v4, v5);
}

uint64_t sub_2685D0C44@<X0>(uint64_t result@<X0>, unint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v4 >= *(*result + 16))
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v5 = (*result + 24 * v4);
  v6 = v5[4];
  v7 = v5[5];
  v8 = v5[6];
  *a3 = v6;
  a3[1] = v7;
  a3[2] = v8;
  sub_2685BA80C(v6, v7);
}

uint64_t sub_2685D0CB0(uint64_t *a1, uint64_t *a2, unint64_t *a3)
{
  v4 = *a3;
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v8 = *a2;
  sub_2685BA80C(*a1, v6);

  result = swift_isUniquelyReferenced_nonNull_native();
  *a2 = v8;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = sub_2685D1038(v8);
  v8 = result;
  *a2 = result;
  if ((v4 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (v4 < *(v8 + 16))
  {
    v10 = (v8 + 24 * v4);
    v11 = v10[4];
    v12 = v10[5];
    v10[4] = v5;
    v10[5] = v6;
    v10[6] = v7;
    sub_2685B593C(v11, v12);

    *a2 = v8;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t Google_Protobuf_ListValue.subscript.setter(uint64_t *a1, unint64_t a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v7;
  if (result)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = sub_2685D1038(v7);
  v7 = result;
  *v2 = result;
  if ((a2 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (*(v7 + 16) > a2)
  {
    v9 = (v7 + 24 * a2);
    v10 = v9[4];
    v11 = v9[5];
    v9[4] = v4;
    v9[5] = v5;
    v9[6] = v6;
    sub_2685B593C(v10, v11);

    *v2 = v7;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t (*Google_Protobuf_ListValue.subscript.modify(uint64_t (**a1)(), unint64_t a2))()
{
  if (MEMORY[0x277D84FD8])
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(0x30uLL);
  }

  v6 = result;
  *a1 = result;
  *(result + 3) = a2;
  *(result + 4) = v2;
  v7 = *v2;
  *(result + 5) = *v2;
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(v7 + 16) > a2)
  {
    v8 = (v7 + 24 * a2);
    v9 = v8[4];
    v10 = v8[5];
    v11 = v8[6];
    *v6 = v9;
    *(v6 + 1) = v10;
    *(v6 + 2) = v11;
    sub_2685BA80C(v9, v10);

    return sub_2685D0EC4;
  }

  __break(1u);
  return result;
}

void sub_2685D0EC4(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = (*a1)[2];
  v7 = (*a1)[4];
  v6 = (*a1)[5];
  if (a2)
  {
    sub_2685BA80C(**a1, v3);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v7 = v6;
    v9 = v2[5];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v21 = v2[4];
      v9 = sub_2685D1038(v2[5]);
      *v21 = v9;
    }

    v10 = v2[3];
    if (*(v9 + 2) > v10)
    {
      v11 = v2[4];
      v12 = &v9[24 * v10];
      v13 = *(v12 + 4);
      v14 = *(v12 + 5);
      *(v12 + 4) = v4;
      *(v12 + 5) = v3;
      *(v12 + 6) = v5;
      sub_2685B593C(v13, v14);

      *v11 = v9;
      sub_2685B593C(*v2, v2[1]);

      goto LABEL_9;
    }

    __break(1u);
    goto LABEL_13;
  }

  v15 = swift_isUniquelyReferenced_nonNull_native();
  *v7 = v6;
  v9 = v2[5];
  if ((v15 & 1) == 0)
  {
LABEL_13:
    v22 = v2[4];
    v9 = sub_2685D1038(v9);
    *v22 = v9;
  }

  v16 = v2[3];
  if (*(v9 + 2) <= v16)
  {
    __break(1u);
    return;
  }

  v17 = v2[4];
  v18 = &v9[24 * v16];
  v19 = *(v18 + 4);
  v20 = *(v18 + 5);
  *(v18 + 4) = v4;
  *(v18 + 5) = v3;
  *(v18 + 6) = v5;
  sub_2685B593C(v19, v20);

  *v17 = v9;
LABEL_9:

  free(v2);
}

unint64_t sub_2685D104C()
{
  result = qword_28028C310;
  if (!qword_28028C310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028C310);
  }

  return result;
}

void sub_2685D10A0(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  if ((~a3 & 0x3000000000000000) != 0 || ~a4 != 0)
  {
    sub_2685D10C8(result, a2, a3, a4 & 1);
  }
}

void sub_2685D10C8(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  if (a4)
  {
    v6 = 4;
  }

  else
  {
    v6 = 0;
  }

  v7 = (a3 >> 60) & 3 | v6;
  if (v7 == 5)
  {

    v9 = a3 & 0xCFFFFFFFFFFFFFFFLL;
    v8 = a2;
  }

  else
  {
    if (v7 != 4)
    {
      if (v7 == 2)
      {
      }

      return;
    }

    v8 = a2;
    v9 = a3;
  }

  sub_2685BA80C(v8, v9);
}

void sub_2685D1170(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  if ((~a3 & 0x3000000000000000) != 0 || ~a4 != 0)
  {
    sub_2685D1198(a1, a2, a3, a4 & 1);
  }
}

void sub_2685D1198(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  if (a4)
  {
    v6 = 4;
  }

  else
  {
    v6 = 0;
  }

  v7 = (a3 >> 60) & 3 | v6;
  if (v7 == 5)
  {

    v9 = a3 & 0xCFFFFFFFFFFFFFFFLL;
    v8 = a2;
  }

  else
  {
    if (v7 != 4)
    {
      if (v7 == 2)
      {
      }

      return;
    }

    v8 = a2;
    v9 = a3;
  }

  sub_2685B593C(v8, v9);
}

uint64_t static Internal.areAllInitialized<A>(_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v40 = v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28028C090, &qword_26868A790);
  v48 = a2;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v47 = sub_268689C74();
  v7 = MEMORY[0x28223BE20](v47);
  v9 = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v12 = v37 - v11;
  v13 = a1 + 64;
  v14 = 1 << *(a1 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(a1 + 64);
  v17 = (v14 + 63) >> 6;
  v46 = TupleTypeMetadata2 - 8;
  v37[0] = v4 + 32;
  v37[1] = v4 + 16;
  v44 = TupleTypeMetadata2;
  v45 = (v10 + 32);
  v41 = v4;
  v42 = a1;
  v43 = (v4 + 8);

  v19 = 0;
  v38 = v12;
  v39 = v9;
  if (v16)
  {
    while (1)
    {
      v20 = v19;
LABEL_12:
      v23 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v24 = v23 | (v20 << 6);
      v26 = v41;
      v25 = v42;
      (*(v41 + 16))(v40, *(v42 + 48) + *(v41 + 72) * v24, v48);
      sub_2685B1724(*(v25 + 56) + 40 * v24, &v49);
      v27 = v44;
      v28 = *(v44 + 48);
      v9 = v39;
      (*(v26 + 32))();
      sub_2685B17CC(&v49, &v9[v28]);
      v29 = *(v27 - 8);
      (*(v29 + 56))(v9, 0, 1, v27);
      v22 = v20;
      v30 = v27;
      v12 = v38;
LABEL_13:
      (*v45)(v12, v9, v47);
      v31 = (*(v29 + 48))(v12, 1, v30);
      if (v31 == 1)
      {

        return v31 == 1;
      }

      v32 = v9;
      v33 = v22;
      sub_2685B17CC(&v12[*(v30 + 48)], &v49);
      v34 = v12;
      v36 = v50;
      v35 = v51;
      __swift_project_boxed_opaque_existential_1(&v49, v50);
      if (((*(v35 + 32))(v36, v35) & 1) == 0)
      {
        break;
      }

      (*v43)(v34, v48);
      result = __swift_destroy_boxed_opaque_existential_1(&v49);
      v19 = v33;
      v12 = v34;
      v9 = v32;
      if (!v16)
      {
        goto LABEL_5;
      }
    }

    (*v43)(v34, v48);
    __swift_destroy_boxed_opaque_existential_1(&v49);
    return v31 == 1;
  }

  else
  {
LABEL_5:
    if (v17 <= v19 + 1)
    {
      v21 = v19 + 1;
    }

    else
    {
      v21 = v17;
    }

    v22 = v21 - 1;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v20 >= v17)
      {
        v30 = v44;
        v29 = *(v44 - 8);
        (*(v29 + 56))(v9, 1, 1, v44);
        v16 = 0;
        goto LABEL_13;
      }

      v16 = *(v13 + 8 * v20);
      ++v19;
      if (v16)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

BOOL _s20SiriOntologyProtobuf8InternalO17areAllInitializedySbSayAA7Message_pGFZ_0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 32);
  v3 = v1 + 1;
  do
  {
    if (!--v3)
    {
      break;
    }

    v4 = v2 + 5;
    v5 = v2[3];
    v6 = v2[4];
    __swift_project_boxed_opaque_existential_1(v2, v5);
    v7 = (*(v6 + 32))(v5, v6);
    v2 = v4;
  }

  while ((v7 & 1) != 0);
  return v3 == 0;
}

uint64_t getEnumTagSinglePayload for Internal(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for Internal(_WORD *result, int a2, int a3)
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

uint64_t Google_Protobuf_Api.name.getter()
{
  v1 = *(v0 + 16);
  swift_beginAccess();
  v2 = *(v1 + 16);

  return v2;
}

uint64_t sub_2685D18AC(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(a2 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_Api._StorageClass();
    swift_allocObject();
    v7 = sub_2685D6D50(v6);

    *(a2 + 16) = v7;
    v6 = v7;
  }

  swift_beginAccess();
  *(v6 + 16) = v4;
  *(v6 + 24) = v3;
}

uint64_t Google_Protobuf_Api.name.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v2 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_Api._StorageClass();
    swift_allocObject();
    v8 = sub_2685D6D50(v7);

    *(v3 + 16) = v8;
    v7 = v8;
  }

  swift_beginAccess();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
}

void (*Google_Protobuf_Api.name.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(v1 + 16);
  swift_beginAccess();
  v6 = *(v5 + 24);
  *(v4 + 72) = *(v5 + 16);
  *(v4 + 80) = v6;

  return sub_2685D1AB4;
}

void sub_2685D1AB4(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v5 = *(*a1 + 80);
  v4 = *(*a1 + 88);
  if (a2)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + 16);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = v2[11];
      type metadata accessor for Google_Protobuf_Api._StorageClass();
      swift_allocObject();
      v9 = sub_2685D6D50(v7);

      *(v8 + 16) = v9;
      v7 = v9;
    }

    swift_beginAccess();
    *(v7 + 16) = v3;
    *(v7 + 24) = v5;
  }

  else
  {
    v10 = swift_isUniquelyReferenced_nonNull_native();
    v11 = *(v4 + 16);
    if ((v10 & 1) == 0)
    {
      v12 = v2[11];
      type metadata accessor for Google_Protobuf_Api._StorageClass();
      swift_allocObject();
      v13 = sub_2685D6D50(v11);

      *(v12 + 16) = v13;
      v11 = v13;
    }

    swift_beginAccess();
    *(v11 + 16) = v3;
    *(v11 + 24) = v5;
  }

  free(v2);
}

uint64_t sub_2685D1C2C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(a2 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_Api._StorageClass();
    swift_allocObject();
    v6 = sub_2685D6D50(v5);

    *(a2 + 16) = v6;
    v5 = v6;
  }

  swift_beginAccess();
  *(v5 + 32) = v3;
}

uint64_t Google_Protobuf_Api.methods.setter(uint64_t a1)
{
  v2 = v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v1 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_Api._StorageClass();
    swift_allocObject();
    v6 = sub_2685D6D50(v5);

    *(v2 + 16) = v6;
    v5 = v6;
  }

  swift_beginAccess();
  *(v5 + 32) = a1;
}

void (*Google_Protobuf_Api.methods.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(v1 + 16);
  swift_beginAccess();
  *(v4 + 72) = *(v5 + 32);

  return sub_2685D1DFC;
}

void sub_2685D1DFC(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 80);
  if (a2)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + 16);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = v2[10];
      type metadata accessor for Google_Protobuf_Api._StorageClass();
      swift_allocObject();
      v8 = sub_2685D6D50(v6);

      *(v7 + 16) = v8;
      v6 = v8;
    }

    swift_beginAccess();
    *(v6 + 32) = v3;
  }

  else
  {
    v9 = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v4 + 16);
    if ((v9 & 1) == 0)
    {
      v11 = v2[10];
      type metadata accessor for Google_Protobuf_Api._StorageClass();
      swift_allocObject();
      v12 = sub_2685D6D50(v10);

      *(v11 + 16) = v12;
      v10 = v12;
    }

    swift_beginAccess();
    *(v10 + 32) = v3;
  }

  free(v2);
}

uint64_t sub_2685D1F74(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(a2 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_Api._StorageClass();
    swift_allocObject();
    v6 = sub_2685D6D50(v5);

    *(a2 + 16) = v6;
    v5 = v6;
  }

  swift_beginAccess();
  *(v5 + 40) = v3;
}

uint64_t Google_Protobuf_Api.options.setter(uint64_t a1)
{
  v2 = v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v1 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_Api._StorageClass();
    swift_allocObject();
    v6 = sub_2685D6D50(v5);

    *(v2 + 16) = v6;
    v5 = v6;
  }

  swift_beginAccess();
  *(v5 + 40) = a1;
}

void (*Google_Protobuf_Api.options.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(v1 + 16);
  swift_beginAccess();
  *(v4 + 72) = *(v5 + 40);

  return sub_2685D2144;
}

void sub_2685D2144(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 80);
  if (a2)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + 16);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = v2[10];
      type metadata accessor for Google_Protobuf_Api._StorageClass();
      swift_allocObject();
      v8 = sub_2685D6D50(v6);

      *(v7 + 16) = v8;
      v6 = v8;
    }

    swift_beginAccess();
    *(v6 + 40) = v3;
  }

  else
  {
    v9 = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v4 + 16);
    if ((v9 & 1) == 0)
    {
      v11 = v2[10];
      type metadata accessor for Google_Protobuf_Api._StorageClass();
      swift_allocObject();
      v12 = sub_2685D6D50(v10);

      *(v11 + 16) = v12;
      v10 = v12;
    }

    swift_beginAccess();
    *(v10 + 40) = v3;
  }

  free(v2);
}

uint64_t Google_Protobuf_Api.version.getter()
{
  v1 = *(v0 + 16);
  swift_beginAccess();
  v2 = *(v1 + 48);

  return v2;
}

uint64_t sub_2685D22C8(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(a2 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_Api._StorageClass();
    swift_allocObject();
    v7 = sub_2685D6D50(v6);

    *(a2 + 16) = v7;
    v6 = v7;
  }

  swift_beginAccess();
  *(v6 + 48) = v4;
  *(v6 + 56) = v3;
}

uint64_t Google_Protobuf_Api.version.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v2 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_Api._StorageClass();
    swift_allocObject();
    v8 = sub_2685D6D50(v7);

    *(v3 + 16) = v8;
    v7 = v8;
  }

  swift_beginAccess();
  *(v7 + 48) = a1;
  *(v7 + 56) = a2;
}

void (*Google_Protobuf_Api.version.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(v1 + 16);
  swift_beginAccess();
  v6 = *(v5 + 56);
  *(v4 + 72) = *(v5 + 48);
  *(v4 + 80) = v6;

  return sub_2685D24AC;
}

void sub_2685D24AC(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v5 = *(*a1 + 80);
  v4 = *(*a1 + 88);
  if (a2)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + 16);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = v2[11];
      type metadata accessor for Google_Protobuf_Api._StorageClass();
      swift_allocObject();
      v9 = sub_2685D6D50(v7);

      *(v8 + 16) = v9;
      v7 = v9;
    }

    swift_beginAccess();
    *(v7 + 48) = v3;
    *(v7 + 56) = v5;
  }

  else
  {
    v10 = swift_isUniquelyReferenced_nonNull_native();
    v11 = *(v4 + 16);
    if ((v10 & 1) == 0)
    {
      v12 = v2[11];
      type metadata accessor for Google_Protobuf_Api._StorageClass();
      swift_allocObject();
      v13 = sub_2685D6D50(v11);

      *(v12 + 16) = v13;
      v11 = v13;
    }

    swift_beginAccess();
    *(v11 + 48) = v3;
    *(v11 + 56) = v5;
  }

  free(v2);
}

void Google_Protobuf_Api.sourceContext.getter(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  swift_beginAccess();
  v4 = v3[8];
  v5 = v3[9];
  v6 = v3[10];
  v7 = v3[11];
  v8 = 0xC000000000000000;
  v9 = 0xE000000000000000;
  if (v5)
  {
    v10 = v3[8];
  }

  else
  {
    v10 = 0;
  }

  if (v5)
  {
    v9 = v3[9];
    v11 = v3[10];
  }

  else
  {
    v11 = 0;
  }

  if (v5)
  {
    v8 = v3[11];
  }

  *a1 = v10;
  a1[1] = v9;
  a1[2] = v11;
  a1[3] = v8;
  sub_2685CE8D4(v4, v5, v6, v7);
}

void sub_2685D2650(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  swift_beginAccess();
  v4 = v3[8];
  v5 = v3[9];
  v6 = v3[10];
  v7 = v3[11];
  v8 = 0xC000000000000000;
  v9 = 0xE000000000000000;
  if (v5)
  {
    v10 = v3[10];
  }

  else
  {
    v10 = 0;
  }

  if (v5)
  {
    v9 = v3[9];
    v11 = v3[8];
  }

  else
  {
    v11 = 0;
  }

  if (v5)
  {
    v8 = v3[11];
  }

  *a2 = v11;
  a2[1] = v9;
  a2[2] = v10;
  a2[3] = v8;
  sub_2685CE8D4(v4, v5, v6, v7);
}

void sub_2685D26C0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];

  sub_2685BA80C(v5, v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(a2 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_Api._StorageClass();
    swift_allocObject();
    v9 = sub_2685D6D50(v8);

    *(a2 + 16) = v9;
    v8 = v9;
  }

  swift_beginAccess();
  v10 = v8[8];
  v11 = v8[9];
  v12 = v8[10];
  v13 = v8[11];
  v8[8] = v4;
  v8[9] = v3;
  v8[10] = v5;
  v8[11] = v6;
  sub_2685CE920(v10, v11, v12, v13);
}

void Google_Protobuf_Api.sourceContext.setter(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v1 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_Api._StorageClass();
    swift_allocObject();
    v9 = sub_2685D6D50(v8);

    *(v2 + 16) = v9;
    v8 = v9;
  }

  swift_beginAccess();
  v10 = v8[8];
  v11 = v8[9];
  v12 = v8[10];
  v13 = v8[11];
  v8[8] = v3;
  v8[9] = v4;
  v8[10] = v5;
  v8[11] = v6;
  sub_2685CE920(v10, v11, v12, v13);
}

void (*Google_Protobuf_Api.sourceContext.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 104) = v1;
  v5 = *(v1 + 16);
  swift_beginAccess();
  v6 = v5[8];
  v7 = v5[9];
  v8 = v5[10];
  v9 = v5[11];
  v10 = 0xC000000000000000;
  v11 = 0xE000000000000000;
  if (v7)
  {
    v12 = v5[8];
  }

  else
  {
    v12 = 0;
  }

  if (v7)
  {
    v11 = v5[9];
    v13 = v5[10];
  }

  else
  {
    v13 = 0;
  }

  if (v7)
  {
    v10 = v5[11];
  }

  *v4 = v12;
  v4[1] = v11;
  v4[2] = v13;
  v4[3] = v10;
  sub_2685CE8D4(v6, v7, v8, v9);
  return sub_2685D28F4;
}

void sub_2685D28F4(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v6 = (*a1)[2];
  v5 = (*a1)[3];
  v7 = (*a1)[13];
  if (a2)
  {

    sub_2685BA80C(v6, v5);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *(v7 + 16);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v10 = v2[13];
      type metadata accessor for Google_Protobuf_Api._StorageClass();
      swift_allocObject();
      v11 = sub_2685D6D50(v9);

      *(v10 + 16) = v11;
      v9 = v11;
    }

    swift_beginAccess();
    v12 = v9[8];
    v13 = v9[9];
    v14 = v9[10];
    v15 = v9[11];
    v9[8] = v4;
    v9[9] = v3;
    v9[10] = v6;
    v9[11] = v5;
    sub_2685CE920(v12, v13, v14, v15);
    v16 = v2[2];
    v17 = v2[3];

    sub_2685B593C(v16, v17);
  }

  else
  {
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v19 = *(v7 + 16);
    if ((v18 & 1) == 0)
    {
      v20 = v2[13];
      type metadata accessor for Google_Protobuf_Api._StorageClass();
      swift_allocObject();
      v21 = sub_2685D6D50(v19);

      *(v20 + 16) = v21;
      v19 = v21;
    }

    swift_beginAccess();
    v22 = v19[8];
    v23 = v19[9];
    v24 = v19[10];
    v25 = v19[11];
    v19[8] = v4;
    v19[9] = v3;
    v19[10] = v6;
    v19[11] = v5;
    sub_2685CE920(v22, v23, v24, v25);
  }

  free(v2);
}

BOOL Google_Protobuf_Api.hasSourceContext.getter()
{
  v1 = *(v0 + 16);
  swift_beginAccess();
  return *(v1 + 72) != 0;
}

Swift::Void __swiftcall Google_Protobuf_Api.clearSourceContext()()
{
  v1 = v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_Api._StorageClass();
    swift_allocObject();
    v4 = sub_2685D6D50(v3);

    *(v1 + 16) = v4;
    v3 = v4;
  }

  swift_beginAccess();
  v5 = v3[8];
  v6 = v3[9];
  v7 = v3[10];
  v8 = v3[11];
  *(v3 + 4) = 0u;
  *(v3 + 5) = 0u;
  sub_2685CE920(v5, v6, v7, v8);
}

uint64_t sub_2685D2B88(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(a2 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_Api._StorageClass();
    swift_allocObject();
    v6 = sub_2685D6D50(v5);

    *(a2 + 16) = v6;
    v5 = v6;
  }

  swift_beginAccess();
  *(v5 + 96) = v3;
}

uint64_t Google_Protobuf_Api.mixins.setter(uint64_t a1)
{
  v2 = v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v1 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_Api._StorageClass();
    swift_allocObject();
    v6 = sub_2685D6D50(v5);

    *(v2 + 16) = v6;
    v5 = v6;
  }

  swift_beginAccess();
  *(v5 + 96) = a1;
}

void (*Google_Protobuf_Api.mixins.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(v1 + 16);
  swift_beginAccess();
  *(v4 + 72) = *(v5 + 96);

  return sub_2685D2D58;
}

void sub_2685D2D58(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 80);
  if (a2)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + 16);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = v2[10];
      type metadata accessor for Google_Protobuf_Api._StorageClass();
      swift_allocObject();
      v8 = sub_2685D6D50(v6);

      *(v7 + 16) = v8;
      v6 = v8;
    }

    swift_beginAccess();
    *(v6 + 96) = v3;
  }

  else
  {
    v9 = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v4 + 16);
    if ((v9 & 1) == 0)
    {
      v11 = v2[10];
      type metadata accessor for Google_Protobuf_Api._StorageClass();
      swift_allocObject();
      v12 = sub_2685D6D50(v10);

      *(v11 + 16) = v12;
      v10 = v12;
    }

    swift_beginAccess();
    *(v10 + 96) = v3;
  }

  free(v2);
}

uint64_t Google_Protobuf_Api.syntax.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  result = swift_beginAccess();
  v5 = *(v3 + 112);
  *a1 = *(v3 + 104);
  *(a1 + 8) = v5;
  return result;
}

uint64_t sub_2685D2EDC(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(a2 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_Api._StorageClass();
    swift_allocObject();
    v7 = sub_2685D6D50(v6);

    *(a2 + 16) = v7;
    v6 = v7;
  }

  result = swift_beginAccess();
  *(v6 + 104) = v3;
  *(v6 + 112) = v4;
  return result;
}

uint64_t Google_Protobuf_Api.syntax.setter(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *(a1 + 8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Google_Protobuf_Api._StorageClass();
    swift_allocObject();
    v7 = sub_2685D6D50(v6);

    *(v2 + 16) = v7;
    v6 = v7;
  }

  result = swift_beginAccess();
  *(v6 + 104) = v3;
  *(v6 + 112) = v4;
  return result;
}

void (*Google_Protobuf_Api.syntax.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(v1 + 16);
  swift_beginAccess();
  v6 = *(v5 + 112);
  *(v4 + 72) = *(v5 + 104);
  *(v4 + 80) = v6;
  return sub_2685D30B4;
}

void sub_2685D30B4(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = v2[11];
    type metadata accessor for Google_Protobuf_Api._StorageClass();
    swift_allocObject();
    v9 = sub_2685D6D50(v7);

    *(v8 + 16) = v9;
    v7 = v9;
  }

  swift_beginAccess();
  *(v7 + 104) = v3;
  *(v7 + 112) = v5;

  free(v2);
}

uint64_t Google_Protobuf_Api.unknownFields.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  return sub_2685BA80C(v2, v3);
}

uint64_t Google_Protobuf_Api.unknownFields.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_2685B593C(*v1, *(v1 + 8));
  *v1 = v2;
  *(v1 + 8) = v3;
  return result;
}

uint64_t Google_Protobuf_Api.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_26868A5E0;
  if (qword_28028BC28 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *(a1 + 16) = qword_28028C340;
}

uint64_t Google_Protobuf_Method.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Google_Protobuf_Method.name.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Google_Protobuf_Method.requestTypeURL.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t Google_Protobuf_Method.requestTypeURL.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t Google_Protobuf_Method.responseTypeURL.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t Google_Protobuf_Method.responseTypeURL.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t Google_Protobuf_Method.options.setter(uint64_t a1)
{

  *(v1 + 64) = a1;
  return result;
}

void Google_Protobuf_Method.syntax.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 80);
  *a1 = *(v1 + 72);
  *(a1 + 8) = v2;
}

uint64_t Google_Protobuf_Method.syntax.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 72) = *result;
  *(v1 + 80) = v2;
  return result;
}

uint64_t Google_Protobuf_Method.unknownFields.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 88);
  v3 = *(v1 + 96);
  *a1 = v2;
  a1[1] = v3;
  return sub_2685BA80C(v2, v3);
}

uint64_t Google_Protobuf_Method.unknownFields.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_2685B593C(*(v1 + 88), *(v1 + 96));
  *(v1 + 88) = v2;
  *(v1 + 96) = v3;
  return result;
}

double Google_Protobuf_Method.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0xE000000000000000;
  *(a1 + 56) = 0;
  *(a1 + 64) = MEMORY[0x277D84F90];
  *(a1 + 72) = 0;
  *(a1 + 80) = 1;
  result = 0.0;
  *(a1 + 88) = xmmword_26868A5E0;
  return result;
}

uint64_t Google_Protobuf_Mixin.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Google_Protobuf_Mixin.name.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Google_Protobuf_Mixin.root.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t Google_Protobuf_Mixin.root.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t Google_Protobuf_Mixin.unknownFields.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  *a1 = v2;
  a1[1] = v3;
  return sub_2685BA80C(v2, v3);
}

uint64_t Google_Protobuf_Mixin.unknownFields.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_2685B593C(*(v1 + 32), *(v1 + 40));
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  return result;
}

double Google_Protobuf_Mixin.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  result = 0.0;
  *(a1 + 32) = xmmword_26868A5E0;
  return result;
}

uint64_t static Google_Protobuf_Api._protobuf_nameMap.getter@<X0>(void *a1@<X8>)
{
  if (qword_28028BC20 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_28028C328;
  v2 = qword_28028C330;
  v3 = unk_28028C338;
  *a1 = qword_28028C320;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

double sub_2685D37EC()
{
  type metadata accessor for Google_Protobuf_Api._StorageClass();
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  v1 = MEMORY[0x277D84F90];
  *(v0 + 32) = MEMORY[0x277D84F90];
  *(v0 + 40) = v1;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0xE000000000000000;
  result = 0.0;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = v1;
  *(v0 + 104) = 0;
  *(v0 + 112) = 1;
  qword_28028C340 = v0;
  return result;
}

uint64_t sub_2685D3848()
{

  sub_2685CE920(*(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88));

  return swift_deallocClassInstance();
}

uint64_t Google_Protobuf_Api.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v3 + 16);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = *(v3 + 16);
    type metadata accessor for Google_Protobuf_Api._StorageClass();
    swift_allocObject();
    v11 = sub_2685D6D50(v10);

    *(v4 + 16) = v11;
    v9 = v11;
  }

  return sub_2685D3954(v9, a1, a2, a3);
}

uint64_t sub_2685D3954(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = a4[2];
  result = v8(a3, a4);
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result <= 3)
      {
        switch(result)
        {
          case 1:
            v11 = v4;
            swift_beginAccess();
            v12 = a4[42];
            v13 = a1 + 16;
            goto LABEL_5;
          case 2:
            v16 = v4;
            swift_beginAccess();
            v17 = a4[52];
            v18 = sub_2685D723C();
            v19 = a1 + 32;
            v20 = &type metadata for Google_Protobuf_Method;
            goto LABEL_23;
          case 3:
            v16 = v4;
            swift_beginAccess();
            v17 = a4[52];
            v18 = sub_2685CEBE8();
            v19 = a1 + 40;
            v20 = &type metadata for Google_Protobuf_Option;
LABEL_23:
            v4 = v16;
            v17(v19, v20, v18, a3, a4);
            goto LABEL_6;
        }
      }

      else
      {
        if (result <= 5)
        {
          if (result == 4)
          {
            v11 = v4;
            swift_beginAccess();
            v12 = a4[42];
            v13 = a1 + 48;
LABEL_5:
            v4 = v11;
            v12(v13, a3, a4);
          }

          else
          {
            swift_beginAccess();
            v14 = a4[51];
            v15 = sub_2685CFDF4();
            v14(a1 + 64, &type metadata for Google_Protobuf_SourceContext, v15, a3, a4);
          }

LABEL_6:
          swift_endAccess();
          goto LABEL_7;
        }

        if (result == 6)
        {
          swift_beginAccess();
          v23 = a4[52];
          v24 = sub_2685D7420();
          v23(a1 + 96, &type metadata for Google_Protobuf_Mixin, v24, a3, a4);
          goto LABEL_6;
        }

        if (result == 7)
        {
          swift_beginAccess();
          v21 = a4[48];
          v22 = sub_2685CFDA0();
          v21(a1 + 104, &type metadata for Google_Protobuf_Syntax, v22, a3, a4);
          goto LABEL_6;
        }
      }

LABEL_7:
      result = v8(a3, a4);
    }
  }

  return result;
}

uint64_t Google_Protobuf_Api.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = *v3;
  v8 = v3[1];
  result = sub_2685D4344(v3[2], a1, a2, a3);
  if (!v4)
  {
    sub_2685BA80C(v9, v8);
    UnknownStorage.traverse<A>(visitor:)(a1, a2, a3);
    return sub_2685B593C(v9, v8);
  }

  return result;
}

uint64_t sub_2685D3CE0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 24);
  v5 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v5 = *(a1 + 16) & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {
    MEMORY[0x26D61D8F0](1);

    sub_268689A24();
  }

  swift_beginAccess();
  if (!*(*(a1 + 32) + 16) || (v6 = , sub_2685DA4A8(v6, 2), result = , !v2))
  {
    swift_beginAccess();
    if (!*(*(a1 + 40) + 16) || (v8 = , sub_2685D9AB0(v8, 3), result = , !v2))
    {
      swift_beginAccess();
      v9 = *(a1 + 56);
      v10 = HIBYTE(v9) & 0xF;
      if ((v9 & 0x2000000000000000) == 0)
      {
        v10 = *(a1 + 48) & 0xFFFFFFFFFFFFLL;
      }

      if (v10)
      {
        MEMORY[0x26D61D8F0](4);

        sub_268689A24();
      }

      swift_beginAccess();
      v11 = *(a1 + 72);
      if (v11)
      {
        v13 = *(a1 + 80);
        v12 = *(a1 + 88);
        v14 = *(a1 + 64);
        MEMORY[0x26D61D8F0](5);

        sub_2685BA80C(v13, v12);
        sub_268619228();
        sub_2685CE920(v14, v11, v13, v12);
      }

      swift_beginAccess();
      if (!*(*(a1 + 96) + 16) || (v15 = , sub_2685DA2B0(v15, 6), result = , !v2))
      {
        result = swift_beginAccess();
        if (*(a1 + 104))
        {
          if (*(a1 + 112))
          {
            v16 = 1;
          }

          else
          {
            v16 = *(a1 + 104);
          }

          MEMORY[0x26D61D8F0](7);
          return MEMORY[0x26D61D8F0](v16);
        }
      }
    }
  }

  return result;
}

void sub_2685D3F44(uint64_t a1, char **a2)
{
  swift_beginAccess();
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (v7)
  {

    sub_2685B301C(1);
    sub_2685B403C(": ", 2, v8);
    sub_2685B43A4(v6, v5);

    v9 = *a2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v9;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = sub_2685B3F48(0, *(v9 + 2) + 1, 1, v9);
      *a2 = v9;
    }

    v12 = *(v9 + 2);
    v11 = *(v9 + 3);
    if (v12 >= v11 >> 1)
    {
      v9 = sub_2685B3F48((v11 > 1), v12 + 1, 1, v9);
      *a2 = v9;
    }

    *(v9 + 2) = v12 + 1;
    v9[v12 + 32] = 10;
  }

  swift_beginAccess();
  if (!*(*(a1 + 32) + 16) || (v13 = , sub_2686758D8(v13, 2), , !v2))
  {
    swift_beginAccess();
    if (!*(*(a1 + 40) + 16) || (v14 = , sub_268674B00(v14, 3), , !v2))
    {
      swift_beginAccess();
      v16 = *(a1 + 48);
      v15 = *(a1 + 56);
      v17 = HIBYTE(v15) & 0xF;
      if ((v15 & 0x2000000000000000) == 0)
      {
        v17 = v16 & 0xFFFFFFFFFFFFLL;
      }

      if (v17)
      {

        sub_2685B301C(4);
        sub_2685B403C(": ", 2, v18);
        sub_2685B43A4(v16, v15);

        v19 = *a2;
        v20 = swift_isUniquelyReferenced_nonNull_native();
        *a2 = v19;
        if ((v20 & 1) == 0)
        {
          v19 = sub_2685B3F48(0, *(v19 + 2) + 1, 1, v19);
          *a2 = v19;
        }

        v22 = *(v19 + 2);
        v21 = *(v19 + 3);
        if (v22 >= v21 >> 1)
        {
          v19 = sub_2685B3F48((v21 > 1), v22 + 1, 1, v19);
          *a2 = v19;
        }

        *(v19 + 2) = v22 + 1;
        v19[v22 + 32] = 10;
      }

      swift_beginAccess();
      v23 = *(a1 + 72);
      if (!v23 || (v25 = *(a1 + 80), v24 = *(a1 + 88), v26 = *(a1 + 64), , sub_2685BA80C(v25, v24), sub_2686717E0(v26, v23, v25, v24, 5), sub_2685CE920(v26, v23, v25, v24), !v2))
      {
        swift_beginAccess();
        if (!*(*(a1 + 96) + 16) || (v27 = , sub_268675464(v27, 6), , !v2))
        {
          swift_beginAccess();
          v28 = *(a1 + 104);
          if (v28)
          {
            v29 = *(a1 + 112);
            sub_2685B301C(7);
            sub_2685B403C(": ", 2, v30);
            sub_2686711B0(v28, v29);
            v31 = *a2;
            v32 = swift_isUniquelyReferenced_nonNull_native();
            *a2 = v31;
            if ((v32 & 1) == 0)
            {
              v31 = sub_2685B3F48(0, *(v31 + 2) + 1, 1, v31);
              *a2 = v31;
            }

            v34 = *(v31 + 2);
            v33 = *(v31 + 3);
            if (v34 >= v33 >> 1)
            {
              v31 = sub_2685B3F48((v33 > 1), v34 + 1, 1, v31);
              *a2 = v31;
            }

            *(v31 + 2) = v34 + 1;
            v31[v34 + 32] = 10;
          }
        }
      }
    }
  }
}

uint64_t sub_2685D4344(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  swift_beginAccess();
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  v11 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v11 = v9 & 0xFFFFFFFFFFFFLL;
  }

  if (!v11 || (v12 = a4[14], , v12(v9, v10, 1, a3, a4), result = , !v5))
  {
    swift_beginAccess();
    if (!*(*(a1 + 32) + 16) || (v14 = a4[35], v15 = sub_2685D723C(), v16 = , v14(v16, 2, &type metadata for Google_Protobuf_Method, v15, a3, a4), result = , !v5))
    {
      swift_beginAccess();
      if (!*(*(a1 + 40) + 16) || (v17 = a4[35], v18 = sub_2685CEBE8(), v19 = , v17(v19, 3, &type metadata for Google_Protobuf_Option, v18, a3, a4), result = , !v5))
      {
        swift_beginAccess();
        v20 = *(a1 + 48);
        v21 = *(a1 + 56);
        v22 = HIBYTE(v21) & 0xF;
        if ((v21 & 0x2000000000000000) == 0)
        {
          v22 = v20 & 0xFFFFFFFFFFFFLL;
        }

        if (!v22 || (v23 = a4[14], , v23(v20, v21, 4, a3, a4), result = , !v5))
        {
          swift_beginAccess();
          v24 = *(a1 + 72);
          if (!v24 || (v33[0] = *(a1 + 64), v33[1] = v24, v34 = *(a1 + 80), v25 = a4[17], v26 = sub_2685CFDF4(), result = v25(v33, 5, &type metadata for Google_Protobuf_SourceContext, v26, a3, a4), !v5))
          {
            swift_beginAccess();
            if (!*(*(a1 + 96) + 16) || (v27 = a4[35], v28 = sub_2685D7420(), v29 = , v27(v29, 6, &type metadata for Google_Protobuf_Mixin, v28, a3, a4), result = , !v5))
            {
              result = swift_beginAccess();
              if (*(a1 + 104))
              {
                v30 = *(a1 + 112);
                v35 = *(a1 + 104);
                v36 = v30;
                v31 = a4[16];
                v32 = sub_2685CFDA0();
                return v31(&v35, 7, &type metadata for Google_Protobuf_Syntax, v32, a3, a4);
              }
            }
          }
        }
      }
    }
  }

  return result;
}

BOOL sub_2685D46A4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  swift_beginAccess();
  v6 = v4 == *(a2 + 16) && v5 == *(a2 + 24);
  if (!v6 && (sub_268689E14() & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  v7 = *(a1 + 32);
  swift_beginAccess();
  v8 = *(a2 + 32);

  v9 = sub_2686112F4(v7, v8);

  if ((v9 & 1) == 0)
  {
    goto LABEL_31;
  }

  swift_beginAccess();
  v10 = *(a1 + 40);
  swift_beginAccess();
  v11 = *(a2 + 40);

  v12 = sub_26860D254(v10, v11);

  if ((v12 & 1) == 0)
  {
    goto LABEL_31;
  }

  swift_beginAccess();
  v13 = *(a1 + 48);
  v14 = *(a1 + 56);
  swift_beginAccess();
  if ((v13 != *(a2 + 48) || v14 != *(a2 + 56)) && (sub_268689E14() & 1) == 0)
  {
    goto LABEL_31;
  }

  swift_beginAccess();
  v15 = *(a1 + 64);
  v16 = *(a1 + 72);
  v18 = *(a1 + 80);
  v17 = *(a1 + 88);
  swift_beginAccess();
  v19 = *(a2 + 64);
  v20 = *(a2 + 72);
  v22 = *(a2 + 80);
  v21 = *(a2 + 88);
  if (!v16)
  {
    sub_2685CE8D4(v15, 0, v18, v17);
    if (!v20)
    {
      sub_2685CE8D4(v19, 0, v22, v21);
      sub_2685CE920(v15, 0, v18, v17);
      goto LABEL_23;
    }

    sub_2685CE8D4(v19, v20, v22, v21);

LABEL_21:
    sub_2685CE920(v15, v16, v18, v17);
    sub_2685CE920(v19, v20, v22, v21);
    return 0;
  }

  if (!v20)
  {
    sub_2685CE8D4(v15, v16, v18, v17);
    sub_2685CE8D4(v19, 0, v22, v21);
    sub_2685CE8D4(v15, v16, v18, v17);
    sub_2685CE8D4(v19, 0, v22, v21);
    sub_2685CE8D4(v15, v16, v18, v17);

    sub_2685CE920(v19, 0, v22, v21);
    sub_2685CE920(v15, v16, v18, v17);

    sub_2685B593C(v18, v17);
    goto LABEL_21;
  }

  if ((v15 != v19 || v16 != v20) && (sub_268689E14() & 1) == 0)
  {
    sub_2685CE8D4(v15, v16, v18, v17);
    sub_2685CE8D4(v19, v20, v22, v21);
    sub_2685CE8D4(v15, v16, v18, v17);
    sub_2685CE920(v19, v20, v22, v21);

    sub_2685B593C(v18, v17);
    sub_2685CE920(v15, v16, v18, v17);
    goto LABEL_31;
  }

  sub_2685CE8D4(v15, v16, v18, v17);
  sub_2685CE8D4(v19, v20, v22, v21);
  sub_2685CE8D4(v15, v16, v18, v17);
  sub_2685CE8D4(v19, v20, v22, v21);
  sub_2685CE8D4(v15, v16, v18, v17);
  sub_2685BA80C(v18, v17);
  sub_2685BA80C(v22, v21);
  v32 = sub_2686131DC(v18, v17, v22, v21);
  sub_2685B593C(v22, v21);
  sub_2685B593C(v18, v17);
  sub_2685CE920(v19, v20, v22, v21);
  sub_2685CE920(v15, v16, v18, v17);
  sub_2685CE920(v19, v20, v22, v21);

  sub_2685B593C(v18, v17);
  sub_2685CE920(v15, v16, v18, v17);
  if (!v32)
  {
    goto LABEL_31;
  }

LABEL_23:
  swift_beginAccess();
  v23 = *(a1 + 96);
  swift_beginAccess();
  v24 = *(a2 + 96);

  v25 = sub_2686118C4(v23, v24);

  if ((v25 & 1) == 0)
  {
LABEL_31:

    return 0;
  }

  swift_beginAccess();
  v26 = *(a1 + 104);
  v27 = *(a1 + 112);

  swift_beginAccess();
  v28 = *(a2 + 104);
  v29 = *(a2 + 112);

  v30 = v26 != 0;
  if (!v27)
  {
    v30 = v26;
  }

  if (v29 == 1)
  {
    if (v28)
    {
      return v30 == 1;
    }

    if (v30)
    {
      return 0;
    }
  }

  else if (v30 != v28)
  {
    return 0;
  }

  return 1;
}

uint64_t Google_Protobuf_Api.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_268689E94();
  v10 = v15;
  v11 = v16;
  v12 = v17;
  v8 = v13;
  v9 = v14;
  sub_2685D3CE0(v3, &v8);
  v5 = v2 >> 62;
  if ((v2 >> 62) > 1)
  {
    if (v5 != 2)
    {
      goto LABEL_2;
    }

    v6 = *(v1 + 16);
    v7 = *(v1 + 24);
  }

  else
  {
    if (!v5)
    {
      if ((v2 & 0xFF000000000000) == 0)
      {
        goto LABEL_2;
      }

      goto LABEL_11;
    }

    v6 = v1;
    v7 = v1 >> 32;
  }

  if (v6 != v7)
  {
LABEL_11:
    sub_268689844();
  }

LABEL_2:
  v16 = v11;
  v17 = v12;
  v14 = v9;
  v15 = v10;
  v13 = v8;
  return sub_268689EF4();
}

uint64_t sub_2685D4DA8@<X0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_26868A5E0;
  if (qword_28028BC28 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *(a1 + 16) = qword_28028C340;
}

uint64_t sub_2685D4E70@<X0>(void *a1@<X8>)
{
  if (qword_28028BC20 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_28028C328;
  v2 = qword_28028C330;
  v3 = unk_28028C338;
  *a1 = qword_28028C320;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t sub_2685D4F18()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_268689E94();
  v7 = v12;
  v8 = v13;
  v9 = v14;
  v5 = v10;
  v6 = v11;
  sub_2685D3CE0(v3, &v5);
  sub_2685C962C(&v5, v1, v2);
  v13 = v8;
  v14 = v9;
  v11 = v6;
  v12 = v7;
  v10 = v5;
  return sub_268689EF4();
}

__n128 sub_2685D4FD4(__int128 *a1)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  v6 = a1[3];
  v12 = a1[2];
  v13 = v6;
  v14 = *(a1 + 8);
  v7 = a1[1];
  v10 = *a1;
  v11 = v7;
  sub_2685D3CE0(v5, &v10);
  sub_2685C962C(&v10, v4, v3);
  v8 = v13;
  a1[2] = v12;
  a1[3] = v8;
  *(a1 + 8) = v14;
  result = v11;
  *a1 = v10;
  a1[1] = result;
  return result;
}

uint64_t sub_2685D5070(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  sub_268689E94();
  v8 = v13;
  v9 = v14;
  v10 = v15;
  v6 = v11;
  v7 = v12;
  sub_2685D3CE0(v4, &v6);
  sub_2685C962C(&v6, v2, v3);
  v14 = v9;
  v15 = v10;
  v12 = v7;
  v13 = v8;
  v11 = v6;
  return sub_268689EF4();
}

uint64_t static Google_Protobuf_Method._protobuf_nameMap.getter@<X0>(void *a1@<X8>)
{
  if (qword_28028BC30 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = unk_28028C350;
  v2 = qword_28028C358;
  v3 = unk_28028C360;
  *a1 = qword_28028C348;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t Google_Protobuf_Method.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  result = v7(a2, a3);
  if (!v4)
  {
    while ((v9 & 1) == 0)
    {
      if (result <= 3)
      {
        switch(result)
        {
          case 1:
            (*(a3 + 336))(v3, a2, a3);
            break;
          case 2:
            (*(a3 + 336))(v3 + 16, a2, a3);
            break;
          case 3:
            (*(a3 + 312))(v3 + 32, a2, a3);
            break;
        }
      }

      else if (result > 5)
      {
        if (result == 6)
        {
          v12 = *(a3 + 416);
          v13 = sub_2685CEBE8();
          v12(v3 + 64, &type metadata for Google_Protobuf_Option, v13, a2, a3);
        }

        else if (result == 7)
        {
          v10 = *(a3 + 384);
          v11 = sub_2685CFDA0();
          v10(v3 + 72, &type metadata for Google_Protobuf_Syntax, v11, a2, a3);
        }
      }

      else if (result == 4)
      {
        (*(a3 + 336))(v3 + 40, a2, a3);
      }

      else
      {
        (*(a3 + 312))(v3 + 56, a2, a3);
      }

      result = v7(a2, a3);
    }
  }

  return result;
}

uint64_t sub_2685D53D8(uint64_t a1)
{
  v3 = *(v1 + 8);
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = *v1 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    MEMORY[0x26D61D8F0](1);
    sub_268689A24();
  }

  v5 = *(v1 + 24);
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = *(v1 + 16) & 0xFFFFFFFFFFFFLL;
  }

  if (v6)
  {
    MEMORY[0x26D61D8F0](2);
    sub_268689A24();
  }

  if (*(v1 + 32))
  {
    MEMORY[0x26D61D8F0](3);
    sub_268689EB4();
  }

  v7 = *(v1 + 48);
  v8 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v8 = *(v1 + 40) & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {
    MEMORY[0x26D61D8F0](4);
    sub_268689A24();
  }

  if (*(v1 + 56))
  {
    MEMORY[0x26D61D8F0](5);
    sub_268689EB4();
  }

  result = *(v1 + 64);
  if (!*(result + 16) || (result = sub_2685D9AB0(result, 6), !v2))
  {
    if (*(v1 + 72))
    {
      if (*(v1 + 80))
      {
        v10 = 1;
      }

      else
      {
        v10 = *(v1 + 72);
      }

      MEMORY[0x26D61D8F0](7);
      result = MEMORY[0x26D61D8F0](v10);
    }

    v11 = *(v1 + 88);
    v12 = *(v1 + 96);
    v13 = v12 >> 62;
    if ((v12 >> 62) > 1)
    {
      if (v13 != 2)
      {
        return result;
      }

      v14 = *(v11 + 16);
      v15 = *(v11 + 24);
    }

    else
    {
      if (!v13)
      {
        if ((v12 & 0xFF000000000000) == 0)
        {
          return result;
        }

        return sub_268689844();
      }

      v14 = v11;
      v15 = v11 >> 32;
    }

    if (v14 == v15)
    {
      return result;
    }

    return sub_268689844();
  }

  return result;
}

uint64_t sub_2685D5560(char **a1)
{
  v3 = v1;
  v5 = *v3;
  v6 = *(v3 + 8);
  v7 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v7 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (v7)
  {
    sub_2685B301C(1);
    sub_2685B403C(": ", 2, v8);
    sub_2685B43A4(v5, v6);
    v9 = *a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a1 = v9;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = sub_2685B3F48(0, *(v9 + 2) + 1, 1, v9);
      *a1 = v9;
    }

    v12 = *(v9 + 2);
    v11 = *(v9 + 3);
    if (v12 >= v11 >> 1)
    {
      v9 = sub_2685B3F48((v11 > 1), v12 + 1, 1, v9);
    }

    *(v9 + 2) = v12 + 1;
    v9[v12 + 32] = 10;
    *a1 = v9;
  }

  v13 = *(v3 + 16);
  v14 = *(v3 + 24);
  v15 = HIBYTE(v14) & 0xF;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v15 = v13 & 0xFFFFFFFFFFFFLL;
  }

  if (v15)
  {
    sub_2685B301C(2);
    sub_2685B403C(": ", 2, v16);
    sub_2685B43A4(v13, v14);
    v17 = *a1;
    v18 = swift_isUniquelyReferenced_nonNull_native();
    *a1 = v17;
    if ((v18 & 1) == 0)
    {
      v17 = sub_2685B3F48(0, *(v17 + 2) + 1, 1, v17);
      *a1 = v17;
    }

    v20 = *(v17 + 2);
    v19 = *(v17 + 3);
    if (v20 >= v19 >> 1)
    {
      v17 = sub_2685B3F48((v19 > 1), v20 + 1, 1, v17);
    }

    *(v17 + 2) = v20 + 1;
    v17[v20 + 32] = 10;
    *a1 = v17;
  }

  if (*(v3 + 32) != 1 || (result = sub_2685B33F4(1, 3), !v2))
  {
    v22 = *(v3 + 40);
    v23 = *(v3 + 48);
    v24 = HIBYTE(v23) & 0xF;
    if ((v23 & 0x2000000000000000) == 0)
    {
      v24 = v22 & 0xFFFFFFFFFFFFLL;
    }

    if (v24)
    {
      sub_2685B301C(4);
      sub_2685B403C(": ", 2, v25);
      sub_2685B43A4(v22, v23);
      v26 = *a1;
      v27 = swift_isUniquelyReferenced_nonNull_native();
      *a1 = v26;
      if ((v27 & 1) == 0)
      {
        v26 = sub_2685B3F48(0, *(v26 + 2) + 1, 1, v26);
        *a1 = v26;
      }

      v29 = *(v26 + 2);
      v28 = *(v26 + 3);
      if (v29 >= v28 >> 1)
      {
        v26 = sub_2685B3F48((v28 > 1), v29 + 1, 1, v26);
      }

      *(v26 + 2) = v29 + 1;
      v26[v29 + 32] = 10;
      *a1 = v26;
    }

    if (*(v3 + 56) != 1 || (result = sub_2685B33F4(1, 5), !v2))
    {
      v30 = *(v3 + 64);
      if (!*(v30 + 16) || (result = sub_268674B00(v30, 6), !v2))
      {
        v31 = *(v3 + 72);
        if (v31)
        {
          v32 = *(v3 + 80);
          sub_2685B301C(7);
          sub_2685B403C(": ", 2, v33);
          sub_2686711B0(v31, v32);
          v34 = *a1;
          v35 = swift_isUniquelyReferenced_nonNull_native();
          *a1 = v34;
          if ((v35 & 1) == 0)
          {
            v34 = sub_2685B3F48(0, *(v34 + 2) + 1, 1, v34);
            *a1 = v34;
          }

          v37 = *(v34 + 2);
          v36 = *(v34 + 3);
          if (v37 >= v36 >> 1)
          {
            v34 = sub_2685B3F48((v36 > 1), v37 + 1, 1, v34);
          }

          *(v34 + 2) = v37 + 1;
          v34[v37 + 32] = 10;
          *a1 = v34;
        }

        return sub_2685C95B0(a1, *(v3 + 88), *(v3 + 96));
      }
    }
  }

  return result;
}

uint64_t Google_Protobuf_Method.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = v3[1];
  v10 = v3[2];
  v11 = v3[3];
  v12 = *(v3 + 32);
  v13 = v3[5];
  v14 = v3[6];
  v28 = *(v3 + 56);
  v15 = v3[9];
  v31 = v3[8];
  v27 = v15;
  v26 = *(v3 + 80);
  v24 = v3[12];
  v25 = v3[11];
  v16 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v16 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (!v16 || (result = (*(a3 + 112))(), !v4))
  {
    v18 = HIBYTE(v11) & 0xF;
    if ((v11 & 0x2000000000000000) == 0)
    {
      v18 = v10 & 0xFFFFFFFFFFFFLL;
    }

    if (!v18 || (result = (*(a3 + 112))(v10, v11, 2, a2, a3), !v4))
    {
      if (!v12 || (result = (*(a3 + 104))(1, 3, a2, a3), !v4))
      {
        v19 = HIBYTE(v14) & 0xF;
        if ((v14 & 0x2000000000000000) == 0)
        {
          v19 = v13 & 0xFFFFFFFFFFFFLL;
        }

        if (!v19 || (result = (*(a3 + 112))(v13, v14, 4, a2, a3), !v4))
        {
          if (!v28 || (result = (*(a3 + 104))(1, 5, a2, a3), !v4))
          {
            if (!*(v31 + 16) || (v20 = *(a3 + 280), v21 = sub_2685CEBE8(), result = v20(v31, 6, &type metadata for Google_Protobuf_Option, v21, a2, a3), !v4))
            {
              if (!v27 || (v29 = v27, LOBYTE(v30) = v26, v22 = *(a3 + 128), v23 = sub_2685CFDA0(), result = v22(&v29, 7, &type metadata for Google_Protobuf_Syntax, v23, a2, a3), !v4))
              {
                v29 = v25;
                v30 = v24;
                sub_2685BA80C(v25, v24);
                UnknownStorage.traverse<A>(visitor:)(a1, a2, a3);
                return sub_2685B593C(v29, v30);
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t Google_Protobuf_Method.hashValue.getter()
{
  v1 = v0[5];
  v19 = v0[4];
  v20 = v1;
  v21 = *(v0 + 12);
  v2 = v0[1];
  v15 = *v0;
  v16 = v2;
  v3 = v0[3];
  v17 = v0[2];
  v18 = v3;
  sub_268689E94();
  v7 = v12;
  v8 = v13;
  v9 = v14;
  v5 = v10;
  v6 = v11;
  sub_2685D53D8(&v5);
  v13 = v8;
  v14 = v9;
  v11 = v6;
  v12 = v7;
  v10 = v5;
  return sub_268689EF4();
}

double sub_2685D5C3C@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0xE000000000000000;
  *(a1 + 56) = 0;
  *(a1 + 64) = MEMORY[0x277D84F90];
  *(a1 + 72) = 0;
  *(a1 + 80) = 1;
  result = 0.0;
  *(a1 + 88) = xmmword_26868A5E0;
  return result;
}

uint64_t sub_2685D5C94@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 88);
  v3 = *(v1 + 96);
  *a1 = v2;
  a1[1] = v3;
  return sub_2685BA80C(v2, v3);
}

uint64_t sub_2685D5CA0(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_2685B593C(*(v1 + 88), *(v1 + 96));
  *(v1 + 88) = v2;
  *(v1 + 96) = v3;
  return result;
}

uint64_t sub_2685D5D24@<X0>(void *a1@<X8>)
{
  if (qword_28028BC30 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = unk_28028C350;
  v2 = qword_28028C358;
  v3 = unk_28028C360;
  *a1 = qword_28028C348;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t sub_2685D5E0C()
{
  v1 = v0[5];
  v19 = v0[4];
  v20 = v1;
  v21 = *(v0 + 12);
  v2 = v0[1];
  v15 = *v0;
  v16 = v2;
  v3 = v0[3];
  v17 = v0[2];
  v18 = v3;
  sub_268689E94();
  v7 = v12;
  v8 = v13;
  v9 = v14;
  v5 = v10;
  v6 = v11;
  sub_2685D53D8(&v5);
  v13 = v8;
  v14 = v9;
  v11 = v6;
  v12 = v7;
  v10 = v5;
  return sub_268689EF4();
}

__n128 sub_2685D5EC4(__int128 *a1)
{
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[2];
  v21 = v1[3];
  v22 = v3;
  v23 = v4;
  v24 = *(v1 + 12);
  v6 = v1[1];
  v18 = *v1;
  v19 = v6;
  v20 = v5;
  v7 = *a1;
  v8 = a1[1];
  v9 = a1[2];
  v10 = a1[3];
  v17 = *(a1 + 8);
  v15 = v9;
  v16 = v10;
  v13 = v7;
  v14 = v8;
  sub_2685D53D8(&v13);
  v11 = v16;
  a1[2] = v15;
  a1[3] = v11;
  *(a1 + 8) = v17;
  result = v14;
  *a1 = v13;
  a1[1] = result;
  return result;
}

uint64_t sub_2685D5F68(uint64_t a1)
{
  v2 = v1[5];
  v20 = v1[4];
  v21 = v2;
  v22 = *(v1 + 12);
  v3 = v1[1];
  v16 = *v1;
  v17 = v3;
  v4 = v1[3];
  v18 = v1[2];
  v19 = v4;
  sub_268689E94();
  v8 = v13;
  v9 = v14;
  v10 = v15;
  v6 = v11;
  v7 = v12;
  sub_2685D53D8(&v6);
  v14 = v9;
  v15 = v10;
  v12 = v7;
  v13 = v8;
  v11 = v6;
  return sub_268689EF4();
}

uint64_t static Google_Protobuf_Mixin._protobuf_nameMap.getter@<X0>(void *a1@<X8>)
{
  if (qword_28028BC38 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = unk_28028C370;
  v2 = qword_28028C378;
  v3 = unk_28028C380;
  *a1 = qword_28028C368;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t Google_Protobuf_Mixin.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  result = v7(a2, a3);
  if (!v4)
  {
    while ((v9 & 1) == 0)
    {
      if (result == 1)
      {
        (*(a3 + 336))(v3, a2, a3);
      }

      else if (result == 2)
      {
        (*(a3 + 336))(v3 + 16, a2, a3);
      }

      result = v7(a2, a3);
    }
  }

  return result;
}

uint64_t sub_2685D61B0(uint64_t result)
{
  v2 = v1[1];
  v3 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = *v1 & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {
    MEMORY[0x26D61D8F0](1);
    v4 = sub_268689A24();
  }

  v5 = v1[3];
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = v1[2] & 0xFFFFFFFFFFFFLL;
  }

  if (v6)
  {
    MEMORY[0x26D61D8F0](2);
    v4 = sub_268689A24();
  }

  v7 = v1[4];
  v8 = v1[5];
  v9 = v8 >> 62;
  if ((v8 >> 62) > 1)
  {
    if (v9 != 2)
    {
      return v4;
    }

    v10 = *(v7 + 16);
    v11 = *(v7 + 24);
LABEL_16:
    if (v10 == v11)
    {
      return v4;
    }

    return sub_268689844();
  }

  if (v9)
  {
    v10 = v7;
    v11 = v7 >> 32;
    goto LABEL_16;
  }

  if ((v8 & 0xFF000000000000) != 0)
  {
    return sub_268689844();
  }

  return v4;
}

uint64_t sub_2685D6294(char **a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = v2[1];
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = *v2 & 0xFFFFFFFFFFFFLL;
  }

  if (v6)
  {
    sub_2685B301C(1);
    sub_2685B403C(": ", 2, v7);
    sub_2685B43A4(v4, v5);
    v8 = *a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a1 = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = sub_2685B3F48(0, *(v8 + 2) + 1, 1, v8);
      *a1 = v8;
    }

    v11 = *(v8 + 2);
    v10 = *(v8 + 3);
    if (v11 >= v10 >> 1)
    {
      v8 = sub_2685B3F48((v10 > 1), v11 + 1, 1, v8);
    }

    *(v8 + 2) = v11 + 1;
    v8[v11 + 32] = 10;
    *a1 = v8;
  }

  v12 = v2[2];
  v13 = v2[3];
  v14 = HIBYTE(v13) & 0xF;
  if ((v13 & 0x2000000000000000) == 0)
  {
    v14 = v12 & 0xFFFFFFFFFFFFLL;
  }

  if (v14)
  {
    sub_2685B301C(2);
    sub_2685B403C(": ", 2, v15);
    sub_2685B43A4(v12, v13);
    v16 = *a1;
    v17 = swift_isUniquelyReferenced_nonNull_native();
    *a1 = v16;
    if ((v17 & 1) == 0)
    {
      v16 = sub_2685B3F48(0, *(v16 + 2) + 1, 1, v16);
      *a1 = v16;
    }

    v19 = *(v16 + 2);
    v18 = *(v16 + 3);
    if (v19 >= v18 >> 1)
    {
      v16 = sub_2685B3F48((v18 > 1), v19 + 1, 1, v16);
    }

    *(v16 + 2) = v19 + 1;
    v16[v19 + 32] = 10;
    *a1 = v16;
  }

  result = v2[4];
  v21 = v2[5];
  v22 = v21 >> 62;
  if ((v21 >> 62) <= 1)
  {
    if (v22)
    {
      if (result == result >> 32)
      {
        return result;
      }
    }

    else if ((v21 & 0xFF000000000000) == 0)
    {
      return result;
    }

    goto LABEL_25;
  }

  if (v22 == 2 && *(result + 16) != *(result + 24))
  {
LABEL_25:
    if (*(a1 + 64) == 1)
    {
      return sub_26863B108(result, v21, a1);
    }
  }

  return result;
}

uint64_t Google_Protobuf_Mixin.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[1];
  v9 = v3[2];
  v10 = v3[3];
  v11 = v3[4];
  v12 = v3[5];
  v13 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v13 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v13 || (result = (*(a3 + 112))(), !v4))
  {
    v15 = HIBYTE(v10) & 0xF;
    if ((v10 & 0x2000000000000000) == 0)
    {
      v15 = v9 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 || (result = (*(a3 + 112))(v9, v10, 2, a2, a3), !v4))
    {
      sub_2685BA80C(v11, v12);
      UnknownStorage.traverse<A>(visitor:)(a1, a2, a3);
      return sub_2685B593C(v11, v12);
    }
  }

  return result;
}

uint64_t Google_Protobuf_Mixin.hashValue.getter()
{
  v1 = v0[1];
  v13 = *v0;
  v14 = v1;
  v15 = v0[2];
  sub_268689E94();
  v5 = v10;
  v6 = v11;
  v7 = v12;
  v3 = v8;
  v4 = v9;
  sub_2685D61B0(&v3);
  v11 = v6;
  v12 = v7;
  v9 = v4;
  v10 = v5;
  v8 = v3;
  return sub_268689EF4();
}

double sub_2685D6660@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  result = 0.0;
  *(a1 + 32) = xmmword_26868A5E0;
  return result;
}

uint64_t sub_2685D66C8@<X0>(void *a1@<X8>)
{
  if (qword_28028BC38 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = unk_28028C370;
  v2 = qword_28028C378;
  v3 = unk_28028C380;
  *a1 = qword_28028C368;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t sub_2685D67A0()
{
  v1 = v0[1];
  v13 = *v0;
  v14 = v1;
  v15 = v0[2];
  sub_268689E94();
  v5 = v10;
  v6 = v11;
  v7 = v12;
  v3 = v8;
  v4 = v9;
  sub_2685D61B0(&v3);
  v11 = v6;
  v12 = v7;
  v9 = v4;
  v10 = v5;
  v8 = v3;
  return sub_268689EF4();
}

__n128 sub_2685D6848(__int128 *a1)
{
  v3 = v1[1];
  v13 = *v1;
  v14 = v3;
  v15 = v1[2];
  v4 = a1[3];
  v10 = a1[2];
  v11 = v4;
  v12 = *(a1 + 8);
  v5 = a1[1];
  v8 = *a1;
  v9 = v5;
  sub_2685D61B0(&v8);
  v6 = v11;
  a1[2] = v10;
  a1[3] = v6;
  *(a1 + 8) = v12;
  result = v9;
  *a1 = v8;
  a1[1] = result;
  return result;
}

uint64_t sub_2685D68D4(uint64_t a1)
{
  v2 = v1[1];
  v14 = *v1;
  v15 = v2;
  v16 = v1[2];
  sub_268689E94();
  v6 = v11;
  v7 = v12;
  v8 = v13;
  v4 = v9;
  v5 = v10;
  sub_2685D61B0(&v4);
  v12 = v7;
  v13 = v8;
  v10 = v5;
  v11 = v6;
  v9 = v4;
  return sub_268689EF4();
}

BOOL _s20SiriOntologyProtobuf07Google_C6_MixinV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_268689E14() & 1) == 0 || (v2 != v6 || v4 != v7) && (sub_268689E14() & 1) == 0)
  {
    return 0;
  }

  sub_2685BA80C(v3, v5);
  sub_2685BA80C(v8, v9);
  v10 = sub_2686131DC(v3, v5, v8, v9);
  sub_2685B593C(v8, v9);
  sub_2685B593C(v3, v5);
  return v10;
}

BOOL _s20SiriOntologyProtobuf07Google_C7_MethodV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = *(a1 + 32);
  v5 = a1[5];
  v6 = a1[6];
  v26 = *(a1 + 56);
  v22 = a1[9];
  v21 = *(a1 + 80);
  v17 = a1[12];
  v18 = a1[11];
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  v11 = *(a2 + 48);
  v25 = *(a2 + 56);
  v23 = *(a2 + 64);
  v24 = a1[8];
  v20 = *(a2 + 72);
  v19 = *(a2 + 80);
  v15 = *(a2 + 96);
  v16 = *(a2 + 88);
  if ((*a1 != *a2 || a1[1] != *(a2 + 8)) && (sub_268689E14() & 1) == 0)
  {
    return 0;
  }

  if (v2 == v7 && v3 == v8)
  {
    if (v4 != v9)
    {
      return 0;
    }
  }

  else if (sub_268689E14() & 1) == 0 || ((v4 ^ v9))
  {
    return 0;
  }

  if (v5 == v10 && v6 == v11)
  {
    if (v26 != v25)
    {
      return 0;
    }
  }

  else if (sub_268689E14() & 1) == 0 || ((v26 ^ v25))
  {
    return 0;
  }

  if ((sub_26860D254(v24, v23) & 1) == 0)
  {
    return 0;
  }

  v12 = v22 != 0;
  if (!v21)
  {
    v12 = v22;
  }

  if (v19)
  {
    if (v20)
    {
      if (v12 != 1)
      {
        return 0;
      }
    }

    else if (v12)
    {
      return 0;
    }
  }

  else if (v12 != v20)
  {
    return 0;
  }

  sub_2685BA80C(v18, v17);
  sub_2685BA80C(v16, v15);
  v14 = sub_2686131DC(v18, v17, v16, v15);
  sub_2685B593C(v16, v15);
  sub_2685B593C(v18, v17);
  return v14;
}

BOOL _s20SiriOntologyProtobuf07Google_C4_ApiV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  if (v4 != v7)
  {

    v8 = sub_2685D46A4(v4, v7);

    if (!v8)
    {
      return 0;
    }
  }

  sub_2685BA80C(v2, v3);
  sub_2685BA80C(v5, v6);
  v9 = sub_2686131DC(v2, v3, v5, v6);
  sub_2685B593C(v5, v6);
  sub_2685B593C(v2, v3);
  return v9;
}

uint64_t sub_2685D6D50(uint64_t a1)
{
  *(v1 + 16) = 0;
  v3 = MEMORY[0x277D84F90];
  *(v1 + 32) = MEMORY[0x277D84F90];
  *(v1 + 40) = v3;
  *(v1 + 24) = 0xE000000000000000;
  *(v1 + 48) = 0;
  *(v1 + 56) = 0xE000000000000000;
  *(v1 + 64) = 0u;
  *(v1 + 96) = v3;
  *(v1 + 80) = 0u;
  *(v1 + 104) = 0;
  *(v1 + 112) = 1;
  swift_beginAccess();
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v4;
  *(v1 + 24) = v5;
  swift_beginAccess();
  v6 = *(a1 + 32);
  swift_beginAccess();
  *(v1 + 32) = v6;
  swift_beginAccess();
  v7 = *(a1 + 40);
  swift_beginAccess();
  *(v1 + 40) = v7;

  swift_beginAccess();
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  swift_beginAccess();
  *(v1 + 48) = v8;
  *(v1 + 56) = v9;

  swift_beginAccess();
  v10 = *(a1 + 64);
  v11 = *(a1 + 72);
  v12 = *(a1 + 80);
  v13 = *(a1 + 88);
  swift_beginAccess();
  v14 = *(v1 + 64);
  v15 = *(v1 + 72);
  v16 = *(v1 + 80);
  v17 = *(v1 + 88);
  *(v1 + 64) = v10;
  *(v1 + 72) = v11;
  *(v1 + 80) = v12;
  *(v1 + 88) = v13;
  sub_2685CE8D4(v10, v11, v12, v13);
  sub_2685CE920(v14, v15, v16, v17);
  swift_beginAccess();
  v18 = *(a1 + 96);
  swift_beginAccess();
  *(v1 + 96) = v18;

  swift_beginAccess();
  v19 = *(a1 + 104);
  LOBYTE(a1) = *(a1 + 112);
  swift_beginAccess();
  *(v1 + 104) = v19;
  *(v1 + 112) = a1;
  return v1;
}

unint64_t sub_2685D6FEC(uint64_t a1)
{
  result = sub_2685D7014();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2685D7014()
{
  result = qword_28028C388;
  if (!qword_28028C388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028C388);
  }

  return result;
}

unint64_t sub_2685D7094()
{
  result = qword_28028C390;
  if (!qword_28028C390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028C390);
  }

  return result;
}

unint64_t sub_2685D70E8()
{
  result = qword_28028C398;
  if (!qword_28028C398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028C398);
  }

  return result;
}

unint64_t sub_2685D7140()
{
  result = qword_28028C3A0;
  if (!qword_28028C3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028C3A0);
  }

  return result;
}

unint64_t sub_2685D7194(uint64_t a1)
{
  result = sub_2685D71BC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2685D71BC()
{
  result = qword_28028C3A8;
  if (!qword_28028C3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028C3A8);
  }

  return result;
}

unint64_t sub_2685D723C()
{
  result = qword_28028C3B0;
  if (!qword_28028C3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028C3B0);
  }

  return result;
}

unint64_t sub_2685D7290()
{
  result = qword_28028C3B8;
  if (!qword_28028C3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028C3B8);
  }

  return result;
}

unint64_t sub_2685D72E8()
{
  result = qword_28028C3C0;
  if (!qword_28028C3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028C3C0);
  }

  return result;
}

unint64_t sub_2685D733C(uint64_t a1)
{
  result = sub_2685D7364();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2685D7364()
{
  result = qword_28028C3C8;
  if (!qword_28028C3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028C3C8);
  }

  return result;
}

uint64_t sub_2685D73E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2685D7420()
{
  result = qword_28028C3D0;
  if (!qword_28028C3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028C3D0);
  }

  return result;
}

unint64_t sub_2685D7474()
{
  result = qword_28028C3D8;
  if (!qword_28028C3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028C3D8);
  }

  return result;
}

unint64_t sub_2685D74CC()
{
  result = qword_28028C3E0;
  if (!qword_28028C3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028C3E0);
  }

  return result;
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

uint64_t sub_2685D755C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_2685D75A4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t JSONEncodingError.hashValue.getter()
{
  v1 = *v0;
  sub_268689E94();
  MEMORY[0x26D61D8F0](v1);
  return sub_268689EF4();
}

unint64_t sub_2685D76A8()
{
  result = qword_28028C3E8;
  if (!qword_28028C3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028C3E8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for JSONEncodingError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for JSONEncodingError(uint64_t result, unsigned int a2, unsigned int a3)
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

char *sub_2685D784C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = v3;
  v6 = a1;
  if (a2 == 1)
  {
    if (v3[17])
    {
      *v3 = ",";
      *(v3 + 1) = 1;
      *(v3 + 8) = 2;
      return sub_2686318C8(v6);
    }

    v8 = v3[16];
    if (v8)
    {
      __break(1u);
    }

    else if (*v3)
    {
      sub_2685B403C(*v3, *(v3 + 1), v8);
      return sub_2686318C8(v6);
    }

    __break(1u);
    goto LABEL_17;
  }

  sub_2685B403C(":", 1, a3);
  v4 = v6;
  if (v6 < 0)
  {
    v3 = *(v3 + 3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v5 + 3) = v3;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_11:
      v11 = *(v3 + 2);
      v12 = *(v3 + 3);
      v13 = v11 + 1;
      if (v11 >= v12 >> 1)
      {
        v14 = v3;
        v15 = *(v3 + 2);
        v16 = sub_2685B3F48((v12 > 1), v11 + 1, 1, v14);
        v11 = v15;
        v3 = v16;
      }

      *(v3 + 2) = v13;
      v3[v11 + 32] = 45;
      *(v5 + 3) = v3;
      v7 = -v4;
      return sub_2686328AC(v7);
    }

LABEL_17:
    v3 = sub_2685B3F48(0, *(v3 + 2) + 1, 1, v3);
    *(v5 + 3) = v3;
    goto LABEL_11;
  }

  v7 = v6;
  return sub_2686328AC(v7);
}

char *sub_2685D79A0(char *result, uint64_t a2)
{
  if (a2 != 1)
  {
    v3 = ":";
    v4 = result;
    v5 = ":";
    v6 = 1;
LABEL_8:
    sub_2685B403C(v5, v6, v3);
    result = v4;
    return sub_268631A50(result);
  }

  if (*(v2 + 17))
  {
    *v2 = ",";
    *(v2 + 8) = 1;
    *(v2 + 16) = 2;
    return sub_268631A50(result);
  }

  if (*(v2 + 16))
  {
    __break(1u);
  }

  else
  {
    v3 = *v2;
    if (*v2)
    {
      v6 = *(v2 + 8);
      v4 = result;
      v5 = *v2;
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2685D7A50@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v4 = result;
  if (a2 != 1)
  {
    sub_2685B403C(":", 1, a3);
    return sub_2686328AC(v4);
  }

  if ((*(v3 + 17) & 1) == 0)
  {
    v5 = *(v3 + 16);
    if (v5)
    {
      __break(1u);
    }

    else
    {
      result = *v3;
      if (*v3)
      {
        sub_2685B403C(result, *(v3 + 8), v5);
        goto LABEL_8;
      }
    }

    __break(1u);
    return result;
  }

  *v3 = ",";
  *(v3 + 8) = 1;
  *(v3 + 16) = 2;
LABEL_8:
  v7 = (v3 + 24);
  v6 = *(v3 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v7 = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_2685B3F48(0, *(v6 + 2) + 1, 1, v6);
    *v7 = v6;
  }

  v10 = *(v6 + 2);
  v9 = *(v6 + 3);
  if (v10 >= v9 >> 1)
  {
    v6 = sub_2685B3F48((v9 > 1), v10 + 1, 1, v6);
  }

  *(v6 + 2) = v10 + 1;
  v6[v10 + 32] = 34;
  *v7 = v6;
  sub_2686328AC(v4);
  v11 = *v7;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v7 = v11;
  if ((result & 1) == 0)
  {
    result = sub_2685B3F48(0, *(v11 + 16) + 1, 1, v11);
    v11 = result;
    *v7 = result;
  }

  v13 = *(v11 + 16);
  v12 = *(v11 + 24);
  if (v13 >= v12 >> 1)
  {
    result = sub_2685B3F48((v12 > 1), v13 + 1, 1, v11);
    v11 = result;
  }

  *(v11 + 16) = v13 + 1;
  *(v11 + v13 + 32) = 34;
  *v7 = v11;
  return result;
}

char *sub_2685D7C04@<X0>(char *result@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v4 = result;
  if (a2 != 1)
  {
    result = ":";
    v5 = 1;
LABEL_8:
    sub_2685B403C(result, v5, a3);
    goto LABEL_9;
  }

  if ((*(v3 + 17) & 1) == 0)
  {
    a3 = *(v3 + 16);
    if (a3)
    {
      __break(1u);
    }

    else
    {
      result = *v3;
      if (*v3)
      {
        v5 = *(v3 + 8);
        goto LABEL_8;
      }
    }

    __break(1u);
    return result;
  }

  *v3 = ",";
  *(v3 + 8) = 1;
  *(v3 + 16) = 2;
LABEL_9:
  v7 = (v3 + 24);
  v6 = *(v3 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v7 = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_2685B3F48(0, *(v6 + 2) + 1, 1, v6);
    *v7 = v6;
  }

  v10 = *(v6 + 2);
  v9 = *(v6 + 3);
  if (v10 >= v9 >> 1)
  {
    v6 = sub_2685B3F48((v9 > 1), v10 + 1, 1, v6);
  }

  *(v6 + 2) = v10 + 1;
  v6[v10 + 32] = 34;
  *v7 = v6;
  sub_2686328AC(v4);
  v11 = *v7;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v7 = v11;
  if ((result & 1) == 0)
  {
    result = sub_2685B3F48(0, *(v11 + 2) + 1, 1, v11);
    v11 = result;
    *v7 = result;
  }

  v13 = *(v11 + 2);
  v12 = *(v11 + 3);
  if (v13 >= v12 >> 1)
  {
    result = sub_2685B3F48((v12 > 1), v13 + 1, 1, v11);
    v11 = result;
  }

  *(v11 + 2) = v13 + 1;
  v11[v13 + 32] = 34;
  *v7 = v11;
  return result;
}

char *sub_2685D7DA8@<X0>(char *result@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v4 = result;
  if (a2 == 1)
  {
    if (*(v3 + 17))
    {
      *v3 = ",";
      *(v3 + 8) = 1;
      *(v3 + 16) = 2;
      return sub_268631BCC(v4 & 1);
    }

    v8 = *(v3 + 16);
    if (v8)
    {
      __break(1u);
    }

    else
    {
      result = *v3;
      if (*v3)
      {
        sub_2685B403C(result, *(v3 + 8), v8);
        return sub_268631BCC(v4 & 1);
      }
    }

    __break(1u);
  }

  else
  {
    sub_2685B403C(":", 1, a3);
    if (v4)
    {
      v6 = "true";
      v7 = 4;
    }

    else
    {
      v6 = "false";
      v7 = 5;
    }

    return sub_2685B403C(v6, v7, v5);
  }

  return result;
}

char *sub_2685D7E7C(char *result, unint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
    v4 = ":";
    v5 = result;
    v6 = ":";
    v7 = a2;
    v8 = 1;
LABEL_8:
    sub_2685B403C(v6, v8, v4);
    result = v5;
    a2 = v7;
    return sub_268631D18(result, a2);
  }

  if (*(v3 + 17))
  {
    *v3 = ",";
    *(v3 + 8) = 1;
    *(v3 + 16) = 2;
    return sub_268631D18(result, a2);
  }

  if (*(v3 + 16))
  {
    __break(1u);
  }

  else
  {
    v4 = *v3;
    if (*v3)
    {
      v5 = result;
      v6 = *v3;
      v7 = a2;
      v8 = *(v3 + 8);
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

char *sub_2685D80D0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, char *a3@<X8>)
{
  v4 = v3;
  sub_2685B403C(":", 1, a3);
  if ((*(v3 + 34) & 1) != 0 || (sub_2685C23CC(a1, a2, v17), HIBYTE(v20) > 0xFEu))
  {
    v7 = (*(a2 + 40))(a1, a2);
    if ((v7 & 0x8000000000000000) != 0)
    {
      v8 = v7;
      v9 = *(v3 + 24);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v4 + 24) = v9;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v9 = sub_2685B3F48(0, *(v9 + 2) + 1, 1, v9);
        *(v4 + 24) = v9;
      }

      v12 = *(v9 + 2);
      v11 = *(v9 + 3);
      if (v12 >= v11 >> 1)
      {
        v9 = sub_2685B3F48((v11 > 1), v12 + 1, 1, v9);
      }

      *(v9 + 2) = v12 + 1;
      v9[v12 + 32] = 45;
      *(v4 + 24) = v9;
      v7 = -v8;
    }

    return sub_2686328AC(v7);
  }

  else
  {
    v14 = v18;
    v15 = v19;
    if ((v20 & 0x100) != 0)
    {
      v14 = sub_268689D04();
      v15 = v16;
    }

    sub_268631D18(v14, v15);
  }
}

uint64_t sub_2685D8238@<X0>(char *a1@<X8>)
{
  sub_2685B403C(":", 1, a1);
  v2 = *(v1 + 35);
  v7[0] = *(v1 + 34);
  v7[1] = v2;
  v3 = v7;
  v5 = Message.jsonString(options:)(v3);
  result = v5._countAndFlagsBits;
  if (!v6)
  {
    return sub_2686689EC(v5._countAndFlagsBits, v5._object);
  }

  return result;
}

__n128 __swift_memcpy36_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2685D82E4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 36))
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

uint64_t sub_2685D832C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 36) = 1;
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

    *(result + 36) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t BinaryDecodingError.hashValue.getter()
{
  v1 = *v0;
  sub_268689E94();
  MEMORY[0x26D61D8F0](v1);
  return sub_268689EF4();
}

unint64_t sub_2685D846C()
{
  result = qword_28028C3F0;
  if (!qword_28028C3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028C3F0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BinaryDecodingError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for BinaryDecodingError(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_2685D8628()
{
  v4 = sub_268689DF4();
  v5 = v0;
  MEMORY[0x26D61D4B0](46, 0xE100000000000000);
  v1 = sub_268689DF4();
  MEMORY[0x26D61D4B0](v1);

  MEMORY[0x26D61D4B0](46, 0xE100000000000000);
  v2 = sub_268689DF4();
  MEMORY[0x26D61D4B0](v2);

  qword_28028C3F8 = v4;
  unk_28028C400 = v5;
  return result;
}

uint64_t static Version.versionString.getter()
{
  if (qword_28028BC40 != -1)
  {
    swift_once();
  }

  v0 = qword_28028C3F8;

  return v0;
}

SiriOntologyProtobuf::BinaryDecodingOptions __swiftcall BinaryDecodingOptions.init()()
{
  *v0 = 100;
  *(v0 + 8) = 0;
  return result;
}

uint64_t getEnumTagSinglePayload for BinaryDecodingOptions(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for BinaryDecodingOptions(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t Google_Protobuf_Struct.init(dictionaryLiteral:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = sub_2686892D4(MEMORY[0x277D84F90]);
  v4 = a1;
  v33 = *(a1 + 16);
  if (!v33)
  {
LABEL_16:

    *a2 = v3;
    *(a2 + 8) = xmmword_26868A5E0;
    return result;
  }

  v5 = 0;
  v6 = (v4 + 64);
  v32 = v4;
  while (v5 < *(v4 + 16))
  {
    v12 = *(v6 - 4);
    v11 = *(v6 - 3);
    v14 = *(v6 - 2);
    v13 = *(v6 - 1);
    v15 = *v6;

    sub_2685BA80C(v14, v13);

    sub_2685BA80C(v14, v13);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = sub_2685C3084(v12, v11);
    v19 = v3[2];
    v20 = (v18 & 1) == 0;
    v21 = __OFADD__(v19, v20);
    v22 = v19 + v20;
    if (v21)
    {
      goto LABEL_18;
    }

    v23 = v18;
    if (v3[3] < v22)
    {
      sub_268687284(v22, isUniquelyReferenced_nonNull_native);
      v17 = sub_2685C3084(v12, v11);
      if ((v23 & 1) != (v24 & 1))
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v23)
      {
        goto LABEL_3;
      }

      goto LABEL_12;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_11;
    }

    v29 = v17;
    sub_268688850();
    v17 = v29;
    if (v23)
    {
LABEL_3:
      v7 = v17;

      v8 = (v3[7] + 24 * v7);
      v9 = *v8;
      v10 = v8[1];
      *v8 = v14;
      v8[1] = v13;
      v8[2] = v15;
      sub_2685B593C(v9, v10);

      sub_2685B593C(v14, v13);

      goto LABEL_4;
    }

LABEL_12:
    v3[(v17 >> 6) + 8] |= 1 << v17;
    v25 = (v3[6] + 16 * v17);
    *v25 = v12;
    v25[1] = v11;
    v26 = (v3[7] + 24 * v17);
    *v26 = v14;
    v26[1] = v13;
    v26[2] = v15;
    sub_2685B593C(v14, v13);

    v27 = v3[2];
    v21 = __OFADD__(v27, 1);
    v28 = v27 + 1;
    if (v21)
    {
      goto LABEL_19;
    }

    v3[2] = v28;
LABEL_4:
    ++v5;
    v6 += 5;
    v4 = v32;
    if (v33 == v5)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  result = sub_268689E34();
  __break(1u);
  return result;
}

_BYTE *sub_2685D8AEC(_BYTE *a1)
{
  v2 = sub_2686899A4();
  MEMORY[0x28223BE20](v2 - 8);
  v43 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v4) = *a1;
  LOBYTE(a1) = a1[1];
  v45 = *v1;

  v6 = sub_2685B3F48(0, 1, 1, MEMORY[0x277D84F90]);
  v8 = *(v6 + 2);
  v7 = *(v6 + 3);
  v9 = (v8 + 1);
  if (v8 < v7 >> 1)
  {
    goto LABEL_2;
  }

LABEL_31:
  v6 = sub_2685B3F48((v7 > 1), v9, 1, v6);
LABEL_2:
  v7 = 0;
  v44 = 0;
  v41 = 0;
  v42 = 0;
  *(v6 + 2) = v9;
  v6[v8 + 32] = 123;
  v50 = 0uLL;
  v11 = v45 + 64;
  v10 = *(v45 + 64);
  v12 = 1 << *(v45 + 32);
  v13 = -1;
  LOWORD(v51) = 256;
  *(&v51 + 1) = v6;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v10;
  LOWORD(v52) = 256;
  BYTE2(v52) = v4;
  HIBYTE(v52) = a1;
  v4 = (v12 + 63) >> 6;
  v15 = 1;
  v40 = v45 + 64;
  if (v14)
  {
    while (1)
    {
      v16 = v7;
LABEL_9:
      v17 = __clz(__rbit64(v14)) | (v16 << 6);
      v18 = (*(v45 + 48) + 16 * v17);
      v19 = *v18;
      v8 = v18[1];
      v20 = (*(v45 + 56) + 24 * v17);
      v22 = *v20;
      v21 = v20[1];
      a1 = v20[2];
      v46 = v21;
      v47 = v19;
      if (v15)
      {
        *&v50 = ",";
        *(&v50 + 1) = 1;
        v42 = 2;
        LOWORD(v51) = 2;

        sub_2685BA80C(v22, v21);

        v44 = ",";
        v41 = 1;
      }

      else
      {
        v7 = v42;
        if (v42)
        {
          goto LABEL_29;
        }

        v7 = v44;
        if (!v44)
        {
          goto LABEL_30;
        }

        sub_2685BA80C(v22, v21);

        sub_2685B403C(v44, v41, v23);
      }

      sub_268631D18(v47, v8);

      sub_2685B403C(":", 1, v24);
      if (HIBYTE(v52))
      {
        v25 = 256;
      }

      else
      {
        v25 = 0;
      }

      v26 = v22;
      v8 = v46;
      v47 = a1;
      v27 = v53;
      v28 = sub_268667DB8(v25 | BYTE2(v52), v22, v46, a1);
      v53 = v27;
      if (v27)
      {
        sub_2685B593C(v22, v8);

        v48[0] = v50;
        v48[1] = v51;
        v49 = v52;
        sub_2685D9A5C(v48);
        return a1;
      }

      v30 = v28;
      v31 = v29;
      sub_268689994();
      result = sub_268689964();
      if (!v33)
      {
        __break(1u);
        goto LABEL_33;
      }

      v34 = result;
      a1 = v33;
      v14 &= v14 - 1;
      sub_2685B593C(v30, v31);
      v9 = &v51 + 8;
      sub_2686689EC(v34, a1);
      sub_2685B593C(v26, v8);

      v15 = 0;
      v7 = v16;
      v11 = v40;
      if (!v14)
      {
        goto LABEL_6;
      }
    }
  }

  while (1)
  {
LABEL_6:
    v16 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    if (v16 >= v4)
    {
      break;
    }

    v14 = *(v11 + 8 * v16);
    ++v7;
    if (v14)
    {
      goto LABEL_9;
    }
  }

  v35 = *(&v51 + 1);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v35 = sub_2685B3F48(0, *(v35 + 2) + 1, 1, v35);
  }

  v37 = *(v35 + 2);
  v36 = *(v35 + 3);
  if (v37 >= v36 >> 1)
  {
    v35 = sub_2685B3F48((v36 > 1), v37 + 1, 1, v35);
  }

  *(v35 + 2) = v37 + 1;
  v35[v37 + 32] = 125;
  *(&v51 + 1) = v35;
  LOWORD(v52) = 44;
  *&v48[0] = v35;
  sub_268689994();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C318, &unk_2686929B0);
  sub_2685B5450();
  a1 = sub_268689974();
  v39 = v38;

  if (v39)
  {
    return a1;
  }

LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_2685D8F60(uint64_t *a1)
{
  result = sub_2685BE1FC(123);
  if (!v2)
  {
    v5 = a1[5];
    v6 = __OFSUB__(v5, 1);
    v7 = v5 - 1;
    if (v6)
    {
      __break(1u);
      return result;
    }

    a1[5] = v7;
    if (v7 < 0)
    {
      sub_2685BD910();
      swift_allocError();
      v9 = xmmword_26868A5D0;
    }

    else
    {
      result = sub_2685BE428();
      if (result)
      {
        return result;
      }

      v11 = a1[1];
      v10 = a1[2];
      if (v10 != v11)
      {
        v12 = xmmword_26868A5E0;
        do
        {
          v13 = *a1;
          while (1)
          {
            v14 = *(v13 + v10);
            v15 = v14 > 0x20;
            v16 = (1 << v14) & 0x100002600;
            if (v15 || v16 == 0)
            {
              break;
            }

            a1[2] = ++v10;
            if (v11 == v10)
            {
              goto LABEL_8;
            }
          }

          if (v11 == v10)
          {
            break;
          }

          if (*(*a1 + v10) != 34 || (v23 = v12, sub_2685BC360(), !v19))
          {
            sub_2685BD910();
            swift_allocError();
            v9 = xmmword_26868A570;
            goto LABEL_9;
          }

          v20 = v18;
          v21 = v19;
          sub_2685BE1FC(58);
          type metadata accessor for Google_Protobuf_Value._StorageClass();
          inited = swift_initStaticObject();
          sub_268667698(a1);
          sub_2685BA80C(v23, *(&v23 + 1));

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v25 = *v1;
          *v1 = 0x8000000000000000;
          sub_268687EB8(v23, *(&v23 + 1), inited, v20, v21, isUniquelyReferenced_nonNull_native);

          *v1 = v25;
          if (sub_2685BE428())
          {
            sub_2685B593C(v23, *(&v23 + 1));
          }

          sub_2685BE1FC(44);
          sub_2685B593C(v23, *(&v23 + 1));

          v11 = a1[1];
          v10 = a1[2];
          v12 = v23;
        }

        while (v10 != v11);
      }

LABEL_8:
      sub_2685BD910();
      swift_allocError();
      v9 = xmmword_26868A580;
    }

LABEL_9:
    *v8 = v9;
    return swift_willThrow();
  }

  return result;
}

double Google_Protobuf_Struct.init(fields:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2686892D4(MEMORY[0x277D84F90]);

  result = 0.0;
  *(a2 + 8) = xmmword_26868A5E0;
  *a2 = a1;
  return result;
}

unint64_t Google_Protobuf_Struct.subscript.getter@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *v3;
  if (*(v5 + 16) && (result = sub_2685C3084(result, a2), (v6 & 1) != 0))
  {
    v7 = (*(v5 + 56) + 24 * result);
    v8 = *v7;
    v9 = v7[1];
    v10 = v7[2];
    *a3 = *v7;
    a3[1] = v9;
    a3[2] = v10;
    sub_2685BA80C(v8, v9);
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  return result;
}

double sub_2685D934C@<D0>(uint64_t *a1@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v4 = a2[1];
  v10 = *a1;
  v11 = *(a1 + 1);
  Google_Protobuf_Struct.subscript.getter(v5, v4, &v8);
  v6 = v9;
  result = *&v8;
  *a3 = v8;
  *(a3 + 16) = v6;
  return result;
}

uint64_t sub_2685D93A8(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];

  sub_2685CEBA8(v5, v6, v7);
  return sub_2685C2F80(v5, v6, v7, v3, v4);
}

uint64_t Google_Protobuf_Struct.subscript.setter(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1[2];
  if (v6)
  {
    v8 = *a1;
    v7 = a1[1];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11[0] = *v3;
    *v3 = 0x8000000000000000;
    sub_268687EB8(v8, v7, v6, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v11[0];
  }

  else
  {
    sub_2685D966C(a2, a3, v11);

    return sub_2685C31B4(v11[0], v11[1], v11[2]);
  }

  return result;
}

void (*Google_Protobuf_Struct.subscript.modify(uint64_t **a1, uint64_t a2, uint64_t a3))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x30uLL);
  }

  v8 = v7;
  *a1 = v7;
  v7[4] = a3;
  v7[5] = v3;
  v7[3] = a2;
  v9 = *v3;
  if (*(v9 + 16) && (v10 = sub_2685C3084(a2, a3), (v11 & 1) != 0))
  {
    v12 = (*(v9 + 56) + 24 * v10);
    v13 = *v12;
    v14 = v12[1];
    v15 = v12[2];
    *v8 = *v12;
    v8[1] = v14;
    v8[2] = v15;
    sub_2685BA80C(v13, v14);
  }

  else
  {
    *v8 = 0;
    v8[1] = 0;
    v8[2] = 0;
  }

  return sub_2685D95AC;
}

void sub_2685D95AC(uint64_t **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[4];
  v5 = **a1;
  v6 = (*a1)[1];
  v7 = (*a1)[2];

  v8 = v3[3];
  if (a2)
  {
    sub_2685CEBA8(v5, v6, v7);
    sub_2685C2F80(v5, v6, v7, v8, v4);
    sub_2685C31B4(*v3, v3[1], v3[2]);
  }

  else
  {
    sub_2685C2F80(v5, v6, v7, v3[3], v4);
  }

  free(v3);
}

uint64_t sub_2685D966C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  result = sub_2685C3084(a1, a2);
  if (v7)
  {
    v8 = result;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v13 = *v4;
    *v4 = 0x8000000000000000;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_268688850();
      v10 = v13;
    }

    v11 = *(v10 + 56) + 24 * v8;
    v12 = *(v11 + 16);
    *a3 = *v11;
    *(a3 + 16) = v12;
    result = sub_2685D98A0(v8, v10);
    *v4 = v10;
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
  }

  return result;
}

uint64_t sub_2685D9724(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_268689CB4() + 1) & ~v5;
    do
    {
      v11 = *(a2 + 48);
      v12 = (v11 + 8 * v6);
      result = sub_268689E84();
      v13 = result & v7;
      if (v3 >= v8)
      {
        if (v13 >= v8 && v3 >= v13)
        {
LABEL_15:
          v16 = (v11 + 8 * v3);
          if (v3 != v6 || v16 >= v12 + 1)
          {
            *v16 = *v12;
          }

          v17 = *(a2 + 56);
          v18 = v17 + 40 * v3;
          v19 = (v17 + 40 * v6);
          if (v3 != v6 || v18 >= v19 + 40)
          {
            v9 = *v19;
            v10 = v19[1];
            *(v18 + 32) = *(v19 + 4);
            *v18 = v9;
            *(v18 + 16) = v10;
            v3 = v6;
          }
        }
      }

      else if (v13 >= v8 || v3 >= v13)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_2685D98A0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_268689CB4() + 1) & ~v5;
    do
    {
      sub_268689E94();

      sub_268689A24();
      v10 = sub_268689EF4();

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
        v16 = v15 + 24 * v3;
        v17 = (v15 + 24 * v6);
        if (v3 != v6 || v16 >= v17 + 24)
        {
          v9 = *v17;
          *(v16 + 16) = *(v17 + 2);
          *v16 = v9;
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

uint64_t sub_2685D9AB0(uint64_t a1, uint64_t a2)
{
  result = MEMORY[0x26D61D8F0](a2);
  v5 = *(a1 + 16);
  if (v5)
  {
    v21 = v2;
    v24 = v2[2];
    v25 = v2[3];
    v26 = *(v2 + 8);
    v22 = *v2;
    v23 = v2[1];
    v6 = v5 - 1;
    for (i = (a1 + 48); ; i += 3)
    {
      v8 = *(i - 2);
      v9 = *(i - 1);
      v10 = *i;
      swift_beginAccess();
      v11 = v10[3];
      v12 = HIBYTE(v11) & 0xF;
      if ((v11 & 0x2000000000000000) == 0)
      {
        v12 = v10[2] & 0xFFFFFFFFFFFFLL;
      }

      if (v12)
      {
        MEMORY[0x26D61D8F0](1);
        sub_2685BA80C(v8, v9);

        sub_268689A24();
      }

      else
      {
        sub_2685BA80C(v8, v9);
      }

      swift_beginAccess();
      v13 = v10[6];
      if (v13)
      {
        v14 = v10[4];
        v15 = v10[5];
        MEMORY[0x26D61D8F0](2);
        swift_beginAccess();
        v16 = *(v13 + 24);
        v17 = HIBYTE(v16) & 0xF;
        if ((v16 & 0x2000000000000000) == 0)
        {
          v17 = *(v13 + 16) & 0xFFFFFFFFFFFFLL;
        }

        if (v17)
        {
          sub_2685CEBA8(v14, v15, v13);

          sub_268689A24();

          sub_2685C31B4(v14, v15, v13);
        }
      }

      v18 = v9 >> 62;
      if ((v9 >> 62) > 1)
      {
        break;
      }

      if (v18)
      {
        v19 = v8;
        v20 = v8 >> 32;
        goto LABEL_20;
      }

      if ((v9 & 0xFF000000000000) != 0)
      {
        goto LABEL_21;
      }

LABEL_22:
      sub_2685B593C(v8, v9);

      if (!v6)
      {
        v21[2] = v24;
        v21[3] = v25;
        *(v21 + 8) = v26;
        *v21 = v22;
        v21[1] = v23;
        return result;
      }

      --v6;
    }

    if (v18 != 2)
    {
      goto LABEL_22;
    }

    v19 = *(v8 + 16);
    v20 = *(v8 + 24);
LABEL_20:
    if (v19 == v20)
    {
      goto LABEL_22;
    }

LABEL_21:
    sub_268689844();
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_2685D9D28(uint64_t a1, uint64_t a2)
{
  v4 = v3;
  result = MEMORY[0x26D61D8F0](a2);
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = v2[3];
    v26 = v2[2];
    v27 = v8;
    v28 = *(v2 + 8);
    v9 = v2[1];
    v24 = *v2;
    v25 = v9;
    v10 = (a1 + 32);
    for (i = v7 - 1; ; --i)
    {
      v12 = v10[5];
      v29[4] = v10[4];
      v29[5] = v12;
      v13 = v10[7];
      v29[6] = v10[6];
      v29[7] = v13;
      v14 = v10[1];
      v29[0] = *v10;
      v29[1] = v14;
      v15 = v10[3];
      v29[2] = v10[2];
      v29[3] = v15;
      v23 = v28;
      v21 = v26;
      v22 = v27;
      v19 = v24;
      v20 = v25;
      sub_268618EC0(v29, &v18);
      sub_2685CA148(&v19);
      if (v4)
      {
        MEMORY[0x26D61DC90](v4);
        v4 = 0;
      }

      result = sub_268618F1C(v29);
      if (!i)
      {
        break;
      }

      v26 = v21;
      v27 = v22;
      v28 = v23;
      v24 = v19;
      v25 = v20;
      v10 += 8;
    }

    v16 = v22;
    v2[2] = v21;
    v2[3] = v16;
    *(v2 + 8) = v23;
    v17 = v20;
    *v2 = v19;
    v2[1] = v17;
  }

  return result;
}

__n128 sub_2685D9E4C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  MEMORY[0x26D61D8F0](a2);
  v33 = *(a1 + 16);
  if (!v33)
  {
    return result;
  }

  v6 = 0;
  v44 = v2[2];
  v45 = v2[3];
  v46 = *(v2 + 8);
  v42 = *v2;
  v43 = v2[1];
  v31 = v2;
  v32 = a1 + 32;
  while (2)
  {
    v7 = (v32 + 48 * v6);
    v8 = *v7;
    v9 = v7[1];
    v10 = *(v7 + 4);
    v11 = v7[3];
    v12 = v7[4];
    v13 = v7[5];
    v39 = v44;
    v40 = v45;
    v41 = v46;
    v37 = v42;
    v38 = v43;
    v14 = HIBYTE(v9) & 0xF;
    if ((v9 & 0x2000000000000000) == 0)
    {
      v14 = v8 & 0xFFFFFFFFFFFFLL;
    }

    if (!v14)
    {

      sub_2685BA80C(v12, v13);
      if (!v10)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    MEMORY[0x26D61D8F0](1);

    sub_2685BA80C(v12, v13);
    sub_268689A24();
    if (v10)
    {
LABEL_7:
      MEMORY[0x26D61D8F0](2);
      MEMORY[0x26D61D920](v10);
    }

LABEL_8:
    v15 = *(v11 + 16);
    if (!v15)
    {
      goto LABEL_32;
    }

    v34 = v13;
    v35 = v12;
    v36 = v6;
    MEMORY[0x26D61D8F0](3);
    v47 = v15 - 1;
    for (i = (v11 + 48); ; i += 3)
    {
      v18 = *(i - 2);
      v17 = *(i - 1);
      v19 = *i;
      swift_beginAccess();
      v20 = v19[3];
      v21 = HIBYTE(v20) & 0xF;
      if ((v20 & 0x2000000000000000) == 0)
      {
        v21 = v19[2] & 0xFFFFFFFFFFFFLL;
      }

      if (v21)
      {
        MEMORY[0x26D61D8F0](1);
        sub_2685BA80C(v18, v17);

        sub_268689A24();
      }

      else
      {
        sub_2685BA80C(v18, v17);
      }

      swift_beginAccess();
      v22 = v19[6];
      if (v22)
      {
        v23 = v19[4];
        v24 = v19[5];
        MEMORY[0x26D61D8F0](2);
        swift_beginAccess();
        v25 = *(v22 + 24);
        v26 = HIBYTE(v25) & 0xF;
        if ((v25 & 0x2000000000000000) == 0)
        {
          v26 = *(v22 + 16) & 0xFFFFFFFFFFFFLL;
        }

        if (v26)
        {
          sub_2685CEBA8(v23, v24, v22);

          sub_268689A24();

          sub_2685C31B4(v23, v24, v22);
        }
      }

      v27 = v17 >> 62;
      if ((v17 >> 62) > 1)
      {
        if (v27 == 2 && *(v18 + 16) != *(v18 + 24))
        {
          goto LABEL_28;
        }
      }

      else
      {
        if (v27)
        {
          if (v18 == v18 >> 32)
          {
            goto LABEL_29;
          }

LABEL_28:
          sub_268689844();
          goto LABEL_29;
        }

        if ((v17 & 0xFF000000000000) != 0)
        {
          goto LABEL_28;
        }
      }

LABEL_29:
      sub_2685B593C(v18, v17);

      if (!v47)
      {
        break;
      }

      --v47;
    }

    v39 = v44;
    v40 = v45;
    v41 = v46;
    v37 = v42;
    v38 = v43;
    v3 = v31;
    v6 = v36;
    v13 = v34;
    v12 = v35;
LABEL_32:
    v28 = v13 >> 62;
    if ((v13 >> 62) > 1)
    {
      if (v28 != 2)
      {
        goto LABEL_43;
      }

      v29 = *(v12 + 16);
      v30 = *(v12 + 24);
LABEL_41:
      if (v29 == v30)
      {
        goto LABEL_43;
      }

      goto LABEL_42;
    }

    if (v28)
    {
      v29 = v12;
      v30 = v12 >> 32;
      goto LABEL_41;
    }

    if ((v13 & 0xFF000000000000) != 0)
    {
LABEL_42:
      sub_268689844();
    }

LABEL_43:
    ++v6;

    sub_2685B593C(v12, v13);
    if (v6 != v33)
    {
      v44 = v39;
      v45 = v40;
      v46 = v41;
      v42 = v37;
      v43 = v38;
      continue;
    }

    break;
  }

  v3[2] = v39;
  v3[3] = v40;
  *(v3 + 8) = v41;
  result = v38;
  *v3 = v37;
  v3[1] = v38;
  return result;
}

uint64_t sub_2685DA2B0(uint64_t a1, uint64_t a2)
{
  result = MEMORY[0x26D61D8F0](a2);
  v5 = *(a1 + 16);
  if (v5)
  {
    v20 = *(v2 + 32);
    v21 = *(v2 + 48);
    v22 = *(v2 + 64);
    v18 = *v2;
    v19 = *(v2 + 16);
    v6 = v5 - 1;
    for (i = (a1 + 72); ; i += 6)
    {
      v8 = *(i - 4);
      v10 = *(i - 3);
      v9 = *(i - 2);
      v11 = *(i - 1);
      v12 = *i;
      v13 = HIBYTE(v8) & 0xF;
      if ((v8 & 0x2000000000000000) == 0)
      {
        v13 = *(i - 5) & 0xFFFFFFFFFFFFLL;
      }

      if (v13)
      {
        MEMORY[0x26D61D8F0](1, v19, v18);

        sub_2685BA80C(v11, v12);
        sub_268689A24();
      }

      else
      {

        sub_2685BA80C(v11, v12);
      }

      v14 = HIBYTE(v9) & 0xF;
      if ((v9 & 0x2000000000000000) == 0)
      {
        v14 = v10 & 0xFFFFFFFFFFFFLL;
      }

      if (v14)
      {
        MEMORY[0x26D61D8F0](2);
        sub_268689A24();
      }

      v15 = v12 >> 62;
      if ((v12 >> 62) > 1)
      {
        break;
      }

      if (v15)
      {
        v16 = v11;
        v17 = v11 >> 32;
        goto LABEL_19;
      }

      if ((v12 & 0xFF000000000000) != 0)
      {
        goto LABEL_20;
      }

LABEL_21:

      result = sub_2685B593C(v11, v12);
      if (!v6)
      {
        *(v2 + 32) = v20;
        *(v2 + 48) = v21;
        *(v2 + 64) = v22;
        *v2 = v18;
        *(v2 + 16) = v19;
        return result;
      }

      --v6;
    }

    if (v15 != 2)
    {
      goto LABEL_21;
    }

    v16 = *(v11 + 16);
    v17 = *(v11 + 24);
LABEL_19:
    if (v16 == v17)
    {
      goto LABEL_21;
    }

LABEL_20:
    sub_268689844();
    goto LABEL_21;
  }

  return result;
}

__n128 sub_2685DA4A8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  MEMORY[0x26D61D8F0](a2);
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = v2[3];
    v65 = v2[2];
    v66 = v7;
    v67 = *(v2 + 8);
    v8 = v2[1];
    v63 = *v2;
    v64 = v8;
    v38 = v2;
    v39 = a1 + 32;
    v9 = 0;
    v37 = v6;
    while (1)
    {
      v10 = (v39 + 104 * v9);
      v11 = v10[5];
      v60 = v10[4];
      v61 = v11;
      v62 = *(v10 + 12);
      v12 = v10[1];
      v56 = *v10;
      v57 = v12;
      v13 = v10[3];
      v58 = v10[2];
      v59 = v13;
      v55 = v67;
      v53 = v65;
      v54 = v66;
      v51 = v63;
      v52 = v64;
      v14 = HIBYTE(*(&v56 + 1)) & 0xFLL;
      if ((*(&v56 + 1) & 0x2000000000000000) == 0)
      {
        v14 = v56 & 0xFFFFFFFFFFFFLL;
      }

      v40 = v9;
      if (v14)
      {
        MEMORY[0x26D61D8F0](1);
        sub_268618E10(&v56, &v46);
        sub_268689A24();
      }

      else
      {
        sub_268618E10(&v56, &v46);
      }

      v15 = HIBYTE(*(&v57 + 1)) & 0xFLL;
      if ((*(&v57 + 1) & 0x2000000000000000) == 0)
      {
        v15 = v57 & 0xFFFFFFFFFFFFLL;
      }

      if (v15)
      {
        MEMORY[0x26D61D8F0](2);
        sub_268689A24();
      }

      if (v58 == 1)
      {
        MEMORY[0x26D61D8F0](3);
        sub_268689EB4();
      }

      v16 = BYTE7(v59) & 0xF;
      if ((v59 & 0x2000000000000000) == 0)
      {
        v16 = *(&v58 + 1) & 0xFFFFFFFFFFFFLL;
      }

      if (v16)
      {
        MEMORY[0x26D61D8F0](4);
        sub_268689A24();
      }

      if (BYTE8(v59) == 1)
      {
        MEMORY[0x26D61D8F0](5);
        sub_268689EB4();
      }

      v17 = v60;
      if (*(v60 + 16))
      {
        MEMORY[0x26D61D8F0](6);
        v18 = *(v17 + 16);
        if (v18)
        {
          v48 = v53;
          v49 = v54;
          v50 = v55;
          v46 = v51;
          v47 = v52;
          v68 = v18 - 1;
          for (i = (v17 + 48); ; i += 3)
          {
            v20 = *(i - 2);
            v21 = *(i - 1);
            v22 = *i;
            v43 = v48;
            v44 = v49;
            v45 = v50;
            v41 = v46;
            v42 = v47;
            swift_beginAccess();
            v23 = v22[3];
            v24 = HIBYTE(v23) & 0xF;
            if ((v23 & 0x2000000000000000) == 0)
            {
              v24 = v22[2] & 0xFFFFFFFFFFFFLL;
            }

            if (v24)
            {
              MEMORY[0x26D61D8F0](1);
              sub_2685BA80C(v20, v21);

              sub_268689A24();
            }

            else
            {
              sub_2685BA80C(v20, v21);
            }

            swift_beginAccess();
            v25 = v22[6];
            if (v25)
            {
              v26 = v22[4];
              v27 = v22[5];
              MEMORY[0x26D61D8F0](2);
              swift_beginAccess();
              v28 = *(v25 + 24);
              v29 = HIBYTE(v28) & 0xF;
              if ((v28 & 0x2000000000000000) == 0)
              {
                v29 = *(v25 + 16) & 0xFFFFFFFFFFFFLL;
              }

              if (v29)
              {
                sub_2685CEBA8(v26, v27, v25);

                sub_268689A24();

                sub_2685C31B4(v26, v27, v25);
              }
            }

            v30 = v21 >> 62;
            if ((v21 >> 62) > 1)
            {
              if (v30 == 2 && *(v20 + 16) != *(v20 + 24))
              {
                goto LABEL_41;
              }
            }

            else
            {
              if (v30)
              {
                if (v20 == v20 >> 32)
                {
                  goto LABEL_42;
                }

LABEL_41:
                sub_268689844();
                goto LABEL_42;
              }

              if ((v21 & 0xFF000000000000) != 0)
              {
                goto LABEL_41;
              }
            }

LABEL_42:
            sub_2685B593C(v20, v21);

            if (!v68)
            {
              v53 = v43;
              v54 = v44;
              v55 = v45;
              v51 = v41;
              v52 = v42;
              v6 = v37;
              v3 = v38;
              break;
            }

            v48 = v43;
            v49 = v44;
            v50 = v45;
            v46 = v41;
            v47 = v42;
            --v68;
          }
        }
      }

      if (*(&v60 + 1))
      {
        if (v61)
        {
          v31 = 1;
        }

        else
        {
          v31 = *(&v60 + 1);
        }

        MEMORY[0x26D61D8F0](7);
        MEMORY[0x26D61D8F0](v31);
      }

      v32 = v62 >> 62;
      if ((v62 >> 62) > 1)
      {
        break;
      }

      v33 = v40;
      if (v32)
      {
        v34 = SDWORD2(v61);
        v35 = *(&v61 + 1) >> 32;
        goto LABEL_57;
      }

      if ((v62 & 0xFF000000000000) != 0)
      {
        goto LABEL_58;
      }

LABEL_59:
      v9 = v33 + 1;
      sub_268618E6C(&v56);
      if (v9 == v6)
      {
        v36 = v54;
        v3[2] = v53;
        v3[3] = v36;
        *(v3 + 8) = v55;
        result = v52;
        *v3 = v51;
        v3[1] = result;
        return result;
      }

      v65 = v53;
      v66 = v54;
      v67 = v55;
      v63 = v51;
      v64 = v52;
    }

    v33 = v40;
    if (v32 != 2)
    {
      goto LABEL_59;
    }

    v34 = *(*(&v61 + 1) + 16);
    v35 = *(*(&v61 + 1) + 24);
LABEL_57:
    if (v34 == v35)
    {
      goto LABEL_59;
    }

LABEL_58:
    sub_268689844();
    goto LABEL_59;
  }

  return result;
}

uint64_t sub_2685DA980(uint64_t a1, uint64_t a2)
{
  result = MEMORY[0x26D61D8F0](a2);
  v5 = *(a1 + 16);
  if (!v5)
  {
    return result;
  }

  v33 = v2;
  v6 = 0;
  v7 = v2[3];
  v61 = v2[2];
  v62 = v7;
  v63 = *(v2 + 8);
  v8 = v2[1];
  v59 = *v2;
  v60 = v8;
  v9 = a1 + 32;
  v64 = v5;
  v34 = a1 + 32;
  while (2)
  {
    v10 = (v9 + 120 * v6);
    v11 = v10[5];
    v55 = v10[4];
    v56 = v11;
    v57 = v10[6];
    v58 = *(v10 + 14);
    v12 = v10[1];
    v51 = *v10;
    v52 = v12;
    v13 = v10[3];
    v53 = v10[2];
    v54 = v13;
    v14 = v51;
    v50 = v63;
    v48 = v61;
    v49 = v62;
    v46 = v59;
    v47 = v60;
    if (!*(v51 + 16) || (MEMORY[0x26D61D8F0](2), (v15 = *(v14 + 16)) == 0))
    {
      sub_268619040(&v51, v40);
      if (!v53)
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    }

    v43 = v48;
    v44 = v49;
    v45 = v50;
    v41 = v46;
    v42 = v47;
    sub_268619040(&v51, v40);
    v16 = v15 - 1;
    v17 = (v14 + 64);
    while (1)
    {
      v18 = *(v17 - 4);
      v19 = *(v17 - 3);
      v20 = *v17;
      v37 = v43;
      v38 = v44;
      v39 = v45;
      v35 = v41;
      v36 = v42;
      if (*(v17 - 1))
      {
        MEMORY[0x26D61D8F0](1);
        sub_2685BA80C(v18, v19);

        sub_268689A24();
        if (v20 == 2)
        {
          goto LABEL_9;
        }

LABEL_8:
        MEMORY[0x26D61D8F0](2);
        sub_268689EB4();
        goto LABEL_9;
      }

      sub_2685BA80C(v18, v19);
      if (v20 != 2)
      {
        goto LABEL_8;
      }

LABEL_9:
      v21 = v19 >> 62;
      if ((v19 >> 62) > 1)
      {
        if (v21 == 2 && *(v18 + 16) != *(v18 + 24))
        {
          goto LABEL_19;
        }
      }

      else
      {
        if (v21)
        {
          if (v18 == v18 >> 32)
          {
            goto LABEL_20;
          }

LABEL_19:
          sub_268689844();
          goto LABEL_20;
        }

        if ((v19 & 0xFF000000000000) != 0)
        {
          goto LABEL_19;
        }
      }

LABEL_20:
      sub_2685B593C(v18, v19);

      if (!v16)
      {
        break;
      }

      v17 += 40;
      v43 = v37;
      v44 = v38;
      v45 = v39;
      v41 = v35;
      v42 = v36;
      --v16;
    }

    v48 = v37;
    v49 = v38;
    v50 = v39;
    v46 = v35;
    v47 = v36;
    v5 = v64;
    v9 = v34;
    if (v53)
    {
LABEL_23:
      MEMORY[0x26D61D8F0](3);
      sub_268689A24();
    }

LABEL_24:
    if (v54)
    {
      if (v55)
      {
        goto LABEL_26;
      }

LABEL_40:
      v28 = *(&v54 + 1);
      MEMORY[0x26D61D8F0](5);
      MEMORY[0x26D61D920](v28);
      if (v56)
      {
        goto LABEL_31;
      }

LABEL_27:
      v22 = *(&v55 + 1);
      MEMORY[0x26D61D8F0](6);
      if ((v22 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v23 = v22;
      }

      else
      {
        v23 = 0;
      }

      MEMORY[0x26D61D920](v23);
      goto LABEL_31;
    }

    v27 = *(&v53 + 1);
    MEMORY[0x26D61D8F0](4);
    MEMORY[0x26D61D920](v27);
    if ((v55 & 1) == 0)
    {
      goto LABEL_40;
    }

LABEL_26:
    if ((v56 & 1) == 0)
    {
      goto LABEL_27;
    }

LABEL_31:
    v24 = v57;
    if (v57 >> 60 != 15)
    {
      v25 = *(&v56 + 1);
      MEMORY[0x26D61D8F0](7);
      sub_2685BA80C(v25, v24);
      sub_268689844();
      sub_2685B98FC(v25, v24);
    }

    if (v58)
    {
      MEMORY[0x26D61D8F0](8);
      sub_268689A24();
    }

    v26 = v52 >> 62;
    if ((v52 >> 62) > 1)
    {
      if (v26 != 2)
      {
        goto LABEL_49;
      }

      v29 = *(*(&v51 + 1) + 16);
      v30 = *(*(&v51 + 1) + 24);
LABEL_47:
      if (v29 == v30)
      {
        goto LABEL_49;
      }

      goto LABEL_48;
    }

    if (v26)
    {
      v29 = SDWORD2(v51);
      v30 = *(&v51 + 1) >> 32;
      goto LABEL_47;
    }

    if ((v52 & 0xFF000000000000) != 0)
    {
LABEL_48:
      sub_268689844();
    }

LABEL_49:
    ++v6;
    result = sub_268619078(&v51);
    if (v6 != v5)
    {
      v61 = v48;
      v62 = v49;
      v63 = v50;
      v59 = v46;
      v60 = v47;
      continue;
    }

    break;
  }

  v31 = v49;
  v33[2] = v48;
  v33[3] = v31;
  *(v33 + 8) = v50;
  v32 = v47;
  *v33 = v46;
  v33[1] = v32;
  return result;
}

uint64_t sub_2685DADA8(uint64_t a1, uint64_t a2)
{
  result = MEMORY[0x26D61D8F0](a2);
  v5 = *(a1 + 16);
  if (v5)
  {
    v16 = v2[2];
    v17 = v2[3];
    v18 = *(v2 + 8);
    v14 = *v2;
    v15 = v2[1];
    v6 = v5 - 1;
    for (i = (a1 + 64); ; i += 40)
    {
      v8 = *(i - 4);
      v9 = *(i - 3);
      v10 = *i;
      if (*(i - 1))
      {
        break;
      }

      sub_2685BA80C(v8, v9);
      if (v10 != 2)
      {
        goto LABEL_5;
      }

LABEL_6:
      v11 = v9 >> 62;
      if ((v9 >> 62) > 1)
      {
        if (v11 != 2)
        {
          goto LABEL_17;
        }

        v12 = *(v8 + 16);
        v13 = *(v8 + 24);
LABEL_15:
        if (v12 == v13)
        {
          goto LABEL_17;
        }

LABEL_16:
        sub_268689844();
        goto LABEL_17;
      }

      if (v11)
      {
        v12 = v8;
        v13 = v8 >> 32;
        goto LABEL_15;
      }

      if ((v9 & 0xFF000000000000) != 0)
      {
        goto LABEL_16;
      }

LABEL_17:
      sub_2685B593C(v8, v9);

      if (!v6)
      {
        v2[2] = v16;
        v2[3] = v17;
        *(v2 + 8) = v18;
        *v2 = v14;
        v2[1] = v15;
        return result;
      }

      --v6;
    }

    MEMORY[0x26D61D8F0](1);
    sub_2685BA80C(v8, v9);

    sub_268689A24();
    if (v10 == 2)
    {
      goto LABEL_6;
    }

LABEL_5:
    MEMORY[0x26D61D8F0](2);
    sub_268689EB4();
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_2685DAF64(uint64_t a1, uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  result = MEMORY[0x26D61D8F0](a2);
  v8 = *(a1 + 16);
  if (v8)
  {
    v9 = v2[3];
    v83 = v2[2];
    v84 = v9;
    v85 = *(v2 + 8);
    v10 = v2[1];
    v81 = *v2;
    v82 = v10;
    v51 = v2;
    v52 = a1 + 32;
    v11 = 0;
    v50 = v8;
    while (1)
    {
      v56 = v11;
      v12 = (v52 + 24 * v11);
      v13 = *v12;
      v14 = v12[1];
      v15 = v12[2];
      v78 = v83;
      v79 = v84;
      v80 = v85;
      v76 = v81;
      v77 = v82;
      swift_beginAccess();
      v54 = v14;
      v55 = v13;
      if (*(v15 + 24))
      {
        MEMORY[0x26D61D8F0](1);
        sub_2685BA80C(v13, v14);

        sub_268689A24();
      }

      else
      {
        sub_2685BA80C(v13, v14);
      }

      swift_beginAccess();
      v57 = v15;
      if (*(*(v15 + 32) + 16))
      {
        v53 = *(v15 + 32);
        MEMORY[0x26D61D8F0](2);
        v16 = *(v53 + 16);
        if (v16)
        {
          v73 = v78;
          v74 = v79;
          v75 = v80;
          v71 = v76;
          v72 = v77;
          v17 = v16 - 1;
          for (i = ( + 48); ; i += 3)
          {
            v20 = *(i - 2);
            v19 = *(i - 1);
            v21 = *i;
            v68 = v73;
            v69 = v74;
            v70 = v75;
            v66 = v71;
            v67 = v72;
            swift_beginAccess();
            if (*(v21 + 24))
            {
              MEMORY[0x26D61D8F0](1);
              sub_2685BA80C(v20, v19);

              sub_268689A24();
            }

            else
            {
              sub_2685BA80C(v20, v19);
            }

            swift_beginAccess();
            if (*(v21 + 40))
            {
              MEMORY[0x26D61D8F0](2);

              sub_268689A24();
            }

            v86 = v19;
            swift_beginAccess();
            if (*(v21 + 56))
            {
              MEMORY[0x26D61D8F0](3);

              sub_268689A24();
            }

            swift_beginAccess();
            v22 = *(v21 + 64);
            if (v22)
            {
              break;
            }

LABEL_28:
            v31 = v86;
            swift_beginAccess();
            if (*(v21 + 98) != 2)
            {
              MEMORY[0x26D61D8F0](5);
              sub_268689EB4();
            }

            swift_beginAccess();
            if (*(v21 + 99) != 2)
            {
              MEMORY[0x26D61D8F0](6);
              sub_268689EB4();
            }

            v32 = v31 >> 62;
            if ((v31 >> 62) > 1)
            {
              if (v32 == 2 && *(v20 + 16) != *(v20 + 24))
              {
                goto LABEL_40;
              }
            }

            else
            {
              if (v32)
              {
                if (v20 == v20 >> 32)
                {
                  goto LABEL_41;
                }

LABEL_40:
                sub_268689844();
                goto LABEL_41;
              }

              if ((v31 & 0xFF000000000000) != 0)
              {
                goto LABEL_40;
              }
            }

LABEL_41:
            sub_2685B593C(v20, v31);

            if (!v17)
            {

              v78 = v68;
              v79 = v69;
              v80 = v70;
              v76 = v66;
              v77 = v67;
              v8 = v50;
              v5 = v51;
              goto LABEL_53;
            }

            v73 = v68;
            v74 = v69;
            v75 = v70;
            v71 = v66;
            v72 = v67;
            --v17;
          }

          v58 = v20;
          v59 = i;
          v60 = v17;
          v23 = v4;
          v25 = *(v21 + 72);
          v24 = *(v21 + 80);
          v26 = *(v21 + 88);
          v27 = *(v21 + 96);
          v28 = *(v21 + 96);
          MEMORY[0x26D61D8F0](4);
          v63 = v68;
          v64 = v69;
          v65 = v70;
          v61 = v66;
          v62 = v67;
          if (v28 != 2)
          {
            MEMORY[0x26D61D8F0](33);
            sub_268689EB4();
          }

          if ((v27 >> 8) != 3)
          {
            MEMORY[0x26D61D8F0](34);
            MEMORY[0x26D61D8F0](v27 >> 8);
          }

          v29 = *(v22 + 16);

          sub_2685BA80C(v25, v24);

          if (v29)
          {
            v30 = v23;
            sub_2685DA980(v22, 999);
            if (v23)
            {
              MEMORY[0x26D61DC90](v23);
              v4 = 0;
              v17 = v60;
LABEL_27:
              sub_268601C90(v22, v25, v24, v26);
              v68 = v63;
              v69 = v64;
              v70 = v65;
              v66 = v61;
              v67 = v62;
              v20 = v58;
              i = v59;
              goto LABEL_28;
            }
          }

          else
          {
            v30 = v23;
          }

          v17 = v60;
          sub_2685DC564(&v61, 1000, 0x20000000, v26);
          v4 = v30;
          if (v30)
          {
            MEMORY[0x26D61DC90](v30);
            v4 = 0;
            goto LABEL_27;
          }

          v33 = v24 >> 62;
          if ((v24 >> 62) > 1)
          {
            if (v33 != 2)
            {
              goto LABEL_27;
            }

            v34 = *(v25 + 16);
            v35 = *(v25 + 24);
          }

          else
          {
            if (!v33)
            {
              if ((v24 & 0xFF000000000000) == 0)
              {
                goto LABEL_27;
              }

              goto LABEL_51;
            }

            v34 = v25;
            v35 = v25 >> 32;
          }

          if (v34 == v35)
          {
            goto LABEL_27;
          }

LABEL_51:
          sub_268689844();
          goto LABEL_27;
        }
      }

LABEL_53:
      swift_beginAccess();
      v36 = *(v57 + 40);
      if (v36)
      {
        break;
      }

LABEL_61:
      v42 = v54 >> 62;
      if ((v54 >> 62) > 1)
      {
        if (v42 != 2)
        {
          goto LABEL_70;
        }

        v43 = *(v55 + 16);
        v44 = *(v55 + 24);
LABEL_68:
        if (v43 == v44)
        {
          goto LABEL_70;
        }

LABEL_69:
        sub_268689844();
        goto LABEL_70;
      }

      if (v42)
      {
        v43 = v55;
        v44 = v55 >> 32;
        goto LABEL_68;
      }

      if ((v54 & 0xFF000000000000) != 0)
      {
        goto LABEL_69;
      }

LABEL_70:
      v11 = v56 + 1;
      sub_2685B593C(v55, v54);

      if (v56 + 1 == v8)
      {
        v48 = v79;
        v5[2] = v78;
        v5[3] = v48;
        *(v5 + 8) = v80;
        v49 = v77;
        *v5 = v76;
        v5[1] = v49;
        return result;
      }

      v83 = v78;
      v84 = v79;
      v85 = v80;
      v81 = v76;
      v82 = v77;
    }

    v37 = *(v57 + 48);
    v38 = *(v57 + 56);
    v39 = *(v57 + 64);
    v40 = *(v57 + 72);
    MEMORY[0x26D61D8F0](3);
    v73 = v78;
    v74 = v79;
    v75 = v80;
    v71 = v76;
    v72 = v77;
    if (v40 != 2)
    {
      MEMORY[0x26D61D8F0](33);
      sub_268689EB4();
    }

    v41 = *(v36 + 16);

    sub_2685BA80C(v37, v38);

    if (v41 && (sub_2685DA980(v36, 999), v4) || (sub_2685DC564(&v71, 1000, 0x20000000, v39), v4))
    {
      MEMORY[0x26D61DC90](v4);
      v4 = 0;
LABEL_60:
      sub_268601C90(v36, v37, v38, v39);
      v78 = v73;
      v79 = v74;
      v80 = v75;
      v76 = v71;
      v77 = v72;
      goto LABEL_61;
    }

    v45 = v38 >> 62;
    if ((v38 >> 62) > 1)
    {
      if (v45 != 2)
      {
        goto LABEL_60;
      }

      v46 = *(v37 + 16);
      v47 = *(v37 + 24);
    }

    else
    {
      if (!v45)
      {
        if ((v38 & 0xFF000000000000) == 0)
        {
          goto LABEL_60;
        }

        goto LABEL_80;
      }

      v46 = v37;
      v47 = v37 >> 32;
    }

    if (v46 == v47)
    {
      goto LABEL_60;
    }

LABEL_80:
    sub_268689844();
    goto LABEL_60;
  }

  return result;
}

__n128 sub_2685DB708(uint64_t a1, uint64_t a2)
{
  MEMORY[0x26D61D8F0](a2);
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = v2[3];
    v43 = v2[2];
    v44 = v6;
    v45 = *(v2 + 8);
    v7 = v2[1];
    v28 = v2;
    v41 = *v2;
    v42 = v7;
    v8 = v5 - 1;
    for (i = (a1 + 48); ; i += 3)
    {
      v10 = *(i - 2);
      v11 = *(i - 1);
      v12 = *i;
      v38 = v43;
      v39 = v44;
      v40 = v45;
      v36 = v41;
      v37 = v42;
      swift_beginAccess();
      if (*(v12 + 24))
      {
        MEMORY[0x26D61D8F0](1);
        sub_2685BA80C(v10, v11);

        sub_268689A24();
      }

      else
      {
        sub_2685BA80C(v10, v11);
      }

      swift_beginAccess();
      if ((*(v12 + 36) & 1) == 0)
      {
        v13 = *(v12 + 32);
        MEMORY[0x26D61D8F0](2);
        MEMORY[0x26D61D920](v13);
      }

      swift_beginAccess();
      v14 = *(v12 + 40);
      if (v14)
      {
        break;
      }

LABEL_18:
      v21 = v11 >> 62;
      if ((v11 >> 62) > 1)
      {
        if (v21 != 2)
        {
          goto LABEL_27;
        }

        v22 = *(v10 + 16);
        v23 = *(v10 + 24);
LABEL_25:
        if (v22 == v23)
        {
          goto LABEL_27;
        }

LABEL_26:
        sub_268689844();
        goto LABEL_27;
      }

      if (v21)
      {
        v22 = v10;
        v23 = v10 >> 32;
        goto LABEL_25;
      }

      if ((v11 & 0xFF000000000000) != 0)
      {
        goto LABEL_26;
      }

LABEL_27:
      sub_2685B593C(v10, v11);

      if (!v8)
      {
        v27 = v39;
        v28[2] = v38;
        v28[3] = v27;
        *(v28 + 8) = v40;
        result = v37;
        *v28 = v36;
        v28[1] = result;
        return result;
      }

      v43 = v38;
      v44 = v39;
      v45 = v40;
      v41 = v36;
      v42 = v37;
      --v8;
    }

    v29 = i;
    v30 = v8;
    v15 = *(v12 + 48);
    v16 = *(v12 + 56);
    v17 = *(v12 + 64);
    v18 = *(v12 + 72);
    MEMORY[0x26D61D8F0](3);
    v33 = v38;
    v34 = v39;
    v35 = v40;
    v31 = v36;
    v32 = v37;
    if (v18 != 2)
    {
      MEMORY[0x26D61D8F0](1);
      sub_268689EB4();
    }

    v19 = *(v14 + 16);

    sub_2685BA80C(v15, v16);

    if (v19)
    {
      v20 = v46;
      sub_2685DA980(v14, 999);
      if (v20)
      {
LABEL_16:
        MEMORY[0x26D61DC90](v20);
        v46 = 0;
LABEL_17:
        sub_268601C90(v14, v15, v16, v17);
        v38 = v33;
        v39 = v34;
        v40 = v35;
        v36 = v31;
        v37 = v32;
        i = v29;
        v8 = v30;
        goto LABEL_18;
      }
    }

    else
    {
      v20 = v46;
    }

    sub_2685DC564(&v31, 1000, 0x20000000, v17);
    if (v20)
    {
      goto LABEL_16;
    }

    v24 = v16 >> 62;
    v46 = 0;
    if ((v16 >> 62) > 1)
    {
      if (v24 != 2)
      {
        goto LABEL_17;
      }

      v25 = *(v15 + 16);
      v26 = *(v15 + 24);
    }

    else
    {
      if (!v24)
      {
        if ((v16 & 0xFF000000000000) == 0)
        {
          goto LABEL_17;
        }

        goto LABEL_37;
      }

      v25 = v15;
      v26 = v15 >> 32;
    }

    if (v25 == v26)
    {
      goto LABEL_17;
    }

LABEL_37:
    sub_268689844();
    goto LABEL_17;
  }

  return result;
}

uint64_t sub_2685DBA60(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, __int128 *))
{
  v6 = v4;
  result = MEMORY[0x26D61D8F0](a2);
  v9 = *(a1 + 16);
  if (v9)
  {
    v10 = v3[3];
    v29 = v3[2];
    v30 = v10;
    v31 = *(v3 + 8);
    v11 = v3[1];
    v27 = *v3;
    v28 = v11;
    v12 = v9 - 1;
    for (i = a1 + 48; ; i += 24)
    {
      v14 = *(i - 16);
      v15 = *(i - 8);
      v24 = v29;
      v25 = v30;
      v26 = v31;
      v22 = v27;
      v23 = v28;
      sub_2685BA80C(v14, v15);

      a3(v16, &v22);
      if (v6)
      {
        MEMORY[0x26D61DC90](v6);
        v6 = 0;
        goto LABEL_5;
      }

      v17 = v15 >> 62;
      if ((v15 >> 62) > 1)
      {
        break;
      }

      if (v17)
      {
        v18 = v14;
        v19 = v14 >> 32;
        goto LABEL_14;
      }

      if ((v15 & 0xFF000000000000) != 0)
      {
        goto LABEL_15;
      }

LABEL_5:
      sub_2685B593C(v14, v15);

      if (!v12)
      {
        v20 = v25;
        v3[2] = v24;
        v3[3] = v20;
        *(v3 + 8) = v26;
        v21 = v23;
        *v3 = v22;
        v3[1] = v21;
        return result;
      }

      v29 = v24;
      v30 = v25;
      v31 = v26;
      v27 = v22;
      v28 = v23;
      --v12;
    }

    if (v17 != 2)
    {
      goto LABEL_5;
    }

    v18 = *(v14 + 16);
    v19 = *(v14 + 24);
LABEL_14:
    if (v18 == v19)
    {
      goto LABEL_5;
    }

LABEL_15:
    sub_268689844();
    goto LABEL_5;
  }

  return result;
}

uint64_t sub_2685DBBD8(uint64_t a1, uint64_t a2)
{
  result = MEMORY[0x26D61D8F0](a2);
  v5 = *(a1 + 16);
  if (v5)
  {
    v18 = v2[2];
    v19 = v2[3];
    v20 = *(v2 + 8);
    v16 = *v2;
    v17 = v2[1];
    v6 = v5 - 1;
    for (i = (a1 + 60); ; i += 32)
    {
      v8 = *(i - 28);
      v9 = *(i - 20);
      v10 = *(i - 3);
      v11 = *(i - 1);
      v12 = *i;
      if ((*(i - 8) & 1) == 0)
      {
        MEMORY[0x26D61D8F0](1);
        result = MEMORY[0x26D61D920](v10);
      }

      if ((v12 & 1) == 0)
      {
        MEMORY[0x26D61D8F0](2);
        result = MEMORY[0x26D61D920](v11);
      }

      v13 = v9 >> 62;
      if ((v9 >> 62) > 1)
      {
        break;
      }

      if (v13)
      {
        v14 = v8;
        v15 = v8 >> 32;
        goto LABEL_14;
      }

      if ((v9 & 0xFF000000000000) != 0)
      {
        goto LABEL_15;
      }

LABEL_16:
      if (!v6)
      {
        v2[2] = v18;
        v2[3] = v19;
        *(v2 + 8) = v20;
        *v2 = v16;
        v2[1] = v17;
        return result;
      }

      --v6;
    }

    if (v13 != 2)
    {
      goto LABEL_16;
    }

    v14 = *(v8 + 16);
    v15 = *(v8 + 24);
LABEL_14:
    if (v14 == v15)
    {
      goto LABEL_16;
    }

LABEL_15:
    sub_2685BA80C(v8, v9);
    sub_268689844();
    result = sub_2685B593C(v8, v9);
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_2685DBD70(uint64_t a1, uint64_t a2)
{
  result = MEMORY[0x26D61D8F0](a2);
  v18 = *(a1 + 16);
  if (v18)
  {
    v5 = 0;
    v23 = v2[2];
    v24 = v2[3];
    v25 = *(v2 + 8);
    v21 = *v2;
    v22 = v2[1];
    v17 = a1 + 32;
    while (1)
    {
      v6 = (v17 + 56 * v5);
      v8 = *v6;
      v7 = v6[1];
      v9 = v6[2];
      v10 = v6[4];
      v19 = *(v6 + 10);
      v11 = *(v6 + 44);
      v20 = *(v6 + 12);
      v26 = *(v6 + 52);
      v12 = *(*v6 + 16);
      if (v12)
      {
        MEMORY[0x26D61D8F0](1);
        MEMORY[0x26D61D8F0](*(v8 + 16));
        v13 = v8 + 32;
        do
        {
          v13 += 4;
          sub_268689EC4();
          --v12;
        }

        while (v12);
      }

      if (v10)
      {
        break;
      }

      sub_2685BA80C(v7, v9);
      if ((v11 & 1) == 0)
      {
        goto LABEL_8;
      }

LABEL_9:
      if ((v26 & 1) == 0)
      {
        MEMORY[0x26D61D8F0](4);
        MEMORY[0x26D61D920](v20);
      }

      v14 = v9 >> 62;
      if ((v9 >> 62) > 1)
      {
        if (v14 != 2)
        {
          goto LABEL_22;
        }

        v15 = *(v7 + 16);
        v16 = *(v7 + 24);
      }

      else
      {
        if (!v14)
        {
          if ((v9 & 0xFF000000000000) == 0)
          {
            goto LABEL_22;
          }

LABEL_21:
          sub_268689844();
          goto LABEL_22;
        }

        v15 = v7;
        v16 = v7 >> 32;
      }

      if (v15 != v16)
      {
        goto LABEL_21;
      }

LABEL_22:
      ++v5;

      sub_2685B593C(v7, v9);

      if (v5 == v18)
      {
        v2[2] = v23;
        v2[3] = v24;
        *(v2 + 8) = v25;
        *v2 = v21;
        v2[1] = v22;
        return result;
      }
    }

    MEMORY[0x26D61D8F0](2);

    sub_2685BA80C(v7, v9);

    sub_268689A24();
    if (v11)
    {
      goto LABEL_9;
    }

LABEL_8:
    MEMORY[0x26D61D8F0](3);
    MEMORY[0x26D61D920](v19);
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_2685DBFC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = a1;
  v5 = v4;
  v9 = a4 + 64;
  v10 = 1 << *(a4 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a4 + 64);
  v13 = (v10 + 63) >> 6;

  v14 = 0;
  v33 = MEMORY[0x277D84F90];
  while (v12)
  {
LABEL_9:
    v16 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v17 = *(*(a4 + 48) + ((v14 << 9) | (8 * v16)));
    if (v17 >= a2 && v17 < a3)
    {
      v32 = v5;
      v18 = v33;
      v35[0] = v33;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2685C4674(0, *(v33 + 2) + 1, 1);
        v18 = v35[0];
      }

      v20 = *(v18 + 2);
      v19 = *(v18 + 3);
      v21 = v18;
      v22 = v20 + 1;
      v5 = v32;
      if (v20 >= v19 >> 1)
      {
        v34 = v20 + 1;
        v31 = v20;
        sub_2685C4674((v19 > 1), v20 + 1, 1);
        v5 = v32;
        v22 = v34;
        v20 = v31;
        v21 = v35[0];
      }

      *(v21 + 2) = v22;
      v33 = v21;
      *&v21[8 * v20 + 32] = v17;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_25;
    }

    if (v15 >= v13)
    {
      break;
    }

    v12 = *(v9 + 8 * v15);
    ++v14;
    if (v12)
    {
      v14 = v15;
      goto LABEL_9;
    }
  }

  v35[0] = v33;

  sub_2685C3CDC(v35);
  v12 = v5;
  if (v5)
  {
    goto LABEL_28;
  }

  v23 = v35[0];
  v24 = *(v35[0] + 2);
  if (!v24)
  {
LABEL_23:
  }

  v25 = 0;
  while (v25 < *(v23 + 2))
  {
    if (!*(a4 + 16))
    {
      goto LABEL_26;
    }

    v26 = sub_2685B351C(*&v23[8 * v25 + 32]);
    if ((v27 & 1) == 0)
    {
      goto LABEL_27;
    }

    sub_2685B1724(*(a4 + 56) + 40 * v26, v35);
    v29 = v36;
    v28 = v37;
    __swift_project_boxed_opaque_existential_1(v35, v36);
    (*(v28 + 48))(v38, &type metadata for TextFormatEncodingVisitor, &off_28792DA88, v29, v28);
    ++v25;
    __swift_destroy_boxed_opaque_existential_1(v35);
    if (v24 == v25)
    {
      goto LABEL_23;
    }
  }

LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  MEMORY[0x26D61DC90](v12);

  __break(1u);
  return result;
}