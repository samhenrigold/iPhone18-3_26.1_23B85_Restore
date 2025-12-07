uint64_t sub_22706D8B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ServerConnectionType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22706D914(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB570, &unk_227670FC0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22706D984(uint64_t a1, uint64_t a2)
{
  v4 = sub_2276624A0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ServerConnectionType(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9FA0, &qword_2276770D8);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v21 - v12;
  v15 = *(v14 + 56);
  sub_22706D8B0(a1, &v21 - v12);
  sub_22706D8B0(a2, &v13[v15]);
  v16 = *(v5 + 48);
  v17 = v16(v13, 2, v4);
  if (!v17)
  {
    sub_22706D8B0(v13, v10);
    if (!v16(&v13[v15], 2, v4))
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      v18 = sub_227662420();
      v20 = *(v5 + 8);
      v20(v7, v4);
      v20(v10, v4);
      sub_22706DC8C(v13);
      return v18 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_9;
  }

  if (v17 == 1)
  {
    if (v16(&v13[v15], 2, v4) != 1)
    {
      goto LABEL_9;
    }
  }

  else if (v16(&v13[v15], 2, v4) != 2)
  {
LABEL_9:
    sub_22706DC24(v13);
    v18 = 0;
    return v18 & 1;
  }

  sub_22706DC8C(v13);
  v18 = 1;
  return v18 & 1;
}

uint64_t sub_22706DC24(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9FA0, &qword_2276770D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22706DC8C(uint64_t a1)
{
  v2 = type metadata accessor for ServerConnectionType(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22706DCE8()
{
  v1 = OBJC_IVAR____TtC15SeymourServices17OfflineScriptLink__shrinkJsFootprintEnabled;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC880, &unk_227671C60);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC15SeymourServices17OfflineScriptLink_dispatchService));

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC15SeymourServices17OfflineScriptLink_fileStore));
  sub_226EA4FC0(v0 + OBJC_IVAR____TtC15SeymourServices17OfflineScriptLink_state);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for OfflineScriptLink(uint64_t a1)
{
  result = qword_2813A28B8;
  if (!qword_2813A28B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22706DE24(uint64_t a1)
{
  sub_226F57660();
  if (v1 <= 0x3F)
  {
    type metadata accessor for ScriptLinkState(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

unint64_t sub_22706DF0C()
{
  result = qword_27D7B9FA8;
  if (!qword_27D7B9FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B9FA8);
  }

  return result;
}

BOOL sub_22706DF60(uint64_t a1, uint64_t a2)
{
  v4 = sub_22766D280();
  v6 = v5;
  if (v4 == sub_22766C000() && v6 == v7)
  {
  }

  else
  {
    v9 = sub_22766D190();

    if ((v9 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  if (sub_22706E044(a1, a2))
  {
    return 1;
  }

LABEL_10:

  return sub_22706E098(a1, a2);
}

BOOL sub_22706E098(uint64_t a1, uint64_t a2)
{
  v2 = sub_22766D280();
  v4 = v3;
  if (v2 == sub_22766C000() && v4 == v5)
  {

    return sub_22766D270() == 3027;
  }

  v7 = sub_22766D190();

  result = 0;
  if (v7)
  {
    return sub_22766D270() == 3027;
  }

  return result;
}

uint64_t sub_22706E154@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D53CB0];
  v3 = sub_2276694E0();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_22706E1C8@<X0>(uint64_t *a2@<X8>)
{
  result = sub_2276633E0();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_22706E1F0(uint64_t a1)
{
  *(a1 + 24) = sub_22706E258(&qword_2813A5810, &unk_227673E30);
  result = sub_22706E258(&unk_2813A5800, MEMORY[0x277D4FF90]);
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_22706E258(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_227663480();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22706E300()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_22706E35C()
{
  v1 = *(v0 + 8);
  sub_22766D370();
  if (v1)
  {
    MEMORY[0x22AA996B0](1);
    sub_22766C100();
  }

  else
  {
    MEMORY[0x22AA996B0](0);
  }

  return sub_22766D3F0();
}

uint64_t sub_22706E3CC(uint64_t a1)
{
  if (!*(v1 + 8))
  {
    return MEMORY[0x22AA996B0](0);
  }

  MEMORY[0x22AA996B0](1);

  return sub_22766C100();
}

uint64_t sub_22706E444(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_22766D370();
  if (v2)
  {
    MEMORY[0x22AA996B0](1);
    sub_22766C100();
  }

  else
  {
    MEMORY[0x22AA996B0](0);
  }

  return sub_22766D3F0();
}

uint64_t sub_22706E4B0(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (v4)
    {
      if (*a1 != *a2 || v3 != v4)
      {
        return sub_22766D190();
      }

      return 1;
    }

    return 0;
  }

  return !v4;
}

unint64_t sub_22706E4F8()
{
  result = qword_27D7B9FC8;
  if (!qword_27D7B9FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B9FC8);
  }

  return result;
}

uint64_t sub_22706E54C(uint64_t a1, unsigned int a2)
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

uint64_t sub_22706E59C(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_22706E5F0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_22706E608(void *result, int a2)
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

void sub_22706E638(void *a1)
{
  v3 = sub_227662190();
  v4 = [a1 identifier];
  if (!v4)
  {
    goto LABEL_6;
  }

  v5 = v4;
  sub_22766C000();

  v6 = [a1 dateReleased];
  if (!v6)
  {

LABEL_6:
    v8 = sub_227664DD0();
    sub_22706F008(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, *MEMORY[0x277D51028], v8);
    swift_willThrow();
    goto LABEL_7;
  }

  v7 = v6;
  sub_22766C000();

  sub_226ED4548([a1 categoryIdentifiers]);
  if (v1)
  {
  }

  else
  {
    sub_227662100();
    sub_227665870();
  }

LABEL_7:
}

void sub_22706E864(void *a1, uint64_t a2)
{
  v5 = sub_227662190();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_227665880();
  v9 = sub_22766BFD0();

  [a1 setIdentifier_];

  v10 = sub_2276658A0();
  v11 = sub_2275335E8(v10);
  if (!v2)
  {
    sub_227533858(a2, v11);
    v13 = v12;

    [a1 setCategoryIdentifiers_];

    sub_227665890();
    sub_2276620E0();
    (*(v6 + 8))(v8, v5);
    v14 = sub_22766BFD0();

    [a1 setDateReleased_];
  }
}

void *static CatalogTipReference.representativeSamples()()
{
  v25 = sub_227662190();
  v18 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v24 = v17 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9FD0, &qword_2276772D0);
  v1 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v3 = v17 - v2;
  v22 = sub_2276658B0();
  v4 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22766C090();
  v8 = sub_22766C2D0();
  v9 = MEMORY[0x22AA8E410]();
  v34 = v8;
  v35[0] = v7;
  v35[1] = v35;
  v35[2] = &v34;
  v33 = v9;
  v35[3] = &v33;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E30, &unk_227672460);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9FD8, &qword_2276772D8);
  v27 = sub_226F5BF60(&qword_27D7B8500, &qword_27D7B84E0, &qword_22767C6B0);
  v28 = sub_226F5BF60(&qword_27D7B9FE0, &qword_27D7B8E30, &unk_227672460);
  v29 = sub_226F5BF60(&qword_27D7B9FE8, &qword_27D7B9FD8, &qword_2276772D8);
  v10 = sub_2276638E0();

  v11 = *(v10 + 16);
  if (v11)
  {
    v26 = MEMORY[0x277D84F90];
    result = sub_226F1FF28(0, v11, 0);
    v13 = 0;
    v14 = v26;
    v19 = v10 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
    v18 += 2;
    v17[1] = v4 + 32;
    v20 = v1;
    v21 = v10;
    while (v13 < *(v10 + 16))
    {
      sub_22706EED8(v19 + *(v1 + 72) * v13, v3);
      (*v18)(v24, &v3[*(v23 + 64)], v25);

      sub_227665870();
      sub_22706EF48(v3);
      v26 = v14;
      v16 = *(v14 + 16);
      v15 = *(v14 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_226F1FF28((v15 > 1), v16 + 1, 1);
        v14 = v26;
      }

      ++v13;
      *(v14 + 16) = v16 + 1;
      result = (*(v4 + 32))(v14 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v16, v6, v22);
      v1 = v20;
      v10 = v21;
      if (v11 == v13)
      {

        return v14;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_22706EED8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9FD0, &qword_2276772D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22706EF48(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9FD0, &qword_2276772D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22706EFB0(uint64_t a1)
{
  result = sub_22706F008(&qword_27D7B9FF0, MEMORY[0x277D519E0], &protocol conformance descriptor for CatalogTipReference);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22706F008(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_22706F064()
{
  result = qword_27D7B9FF8;
  if (!qword_27D7B9FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B9FF8);
  }

  return result;
}

unint64_t sub_22706F0B8(uint64_t a1)
{
  result = sub_22706F0E0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22706F0E0()
{
  result = qword_27D7BA000;
  if (!qword_27D7BA000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BA000);
  }

  return result;
}

uint64_t sub_22706F134(uint64_t a1)
{
  v1 = sub_22766C090();
  v2 = *(v1 + 16);
  if (v2)
  {
    v11 = MEMORY[0x277D84F90];
    sub_226F1EE70(0, v2, 0);
    v3 = v11;
    v4 = (v1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      v7 = *(v11 + 16);
      v8 = *(v11 + 24);

      if (v7 >= v8 >> 1)
      {
        sub_226F1EE70((v8 > 1), v7 + 1, 1);
      }

      *(v11 + 16) = v7 + 1;
      v9 = v11 + 16 * v7;
      *(v9 + 32) = v6;
      *(v9 + 40) = v5;
      v4 += 2;
      --v2;
    }

    while (v2);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v3;
}

uint64_t sub_22706F27C(sqlite3_stmt *a1, int a2, unint64_t a3, unint64_t a4, unsigned __int8 a5)
{
  v51 = *MEMORY[0x277D85DE8];
  if (a5 > 2u)
  {
    if (a5 != 3)
    {
      if (a5 != 4)
      {
        result = sqlite3_bind_null(a1, a2);
        if (!result)
        {
          return result;
        }

        if (result != 101)
        {
          if (result != 100)
          {
            goto LABEL_24;
          }

          return 1;
        }

        return 2;
      }

      v7 = a4 >> 62;
      if ((a4 >> 62) <= 1)
      {
        if (!v7)
        {
          *&v50 = a3;
          LODWORD(v5) = BYTE6(a4);
          WORD4(v50) = a4;
          BYTE10(v50) = BYTE2(a4);
          BYTE11(v50) = BYTE3(a4);
          BYTE12(v50) = BYTE4(a4);
          BYTE13(v50) = BYTE5(a4);
          if (qword_27D7B7EF0 == -1)
          {
LABEL_11:
            v8 = qword_27D7CE2C0;
            v9 = &v50;
            v10 = v5;
LABEL_58:
            v34 = sqlite3_bind_blob(a1, a2, v9, v10, v8);
            return sub_2273946A4(v34);
          }

LABEL_72:
          v40 = a1;
          v41 = a2;
          swift_once();
          a1 = v40;
          a2 = v41;
          goto LABEL_11;
        }

        v30 = HIDWORD(a3);
        LODWORD(v18) = HIDWORD(a3) - a3;
        if (!__OFSUB__(HIDWORD(a3), a3))
        {
          v35 = a3;
          if (a3 <= a3 >> 32)
          {
            v19 = a1;
            v20 = a2;
            v36 = sub_227662060();
            if (v36)
            {
              v22 = v36;
              v37 = sub_227662090();
              if (!__OFSUB__(v35, v37))
              {
                v22 = (v22 + v35 - v37);
                sub_227662080();
                if (v22)
                {
                  if (qword_27D7B7EF0 == -1)
                  {
LABEL_55:
                    v8 = qword_27D7CE2C0;
                    a1 = v19;
                    a2 = v20;
                    v9 = v22;
                    v10 = v18;
                    goto LABEL_58;
                  }

LABEL_80:
                  swift_once();
                  goto LABEL_55;
                }

LABEL_64:
                sub_22706F95C();
                swift_allocError();
                *v14 = 0;
                *(v14 + 8) = 0;
                v15 = 2;
                goto LABEL_65;
              }

              __break(1u);
              goto LABEL_79;
            }

            goto LABEL_63;
          }

          __break(1u);
          goto LABEL_77;
        }

        goto LABEL_74;
      }

      if (v7 != 2)
      {
        *(&v50 + 6) = 0;
        *&v50 = 0;
        if (qword_27D7B7EF0 == -1)
        {
LABEL_57:
          v8 = qword_27D7CE2C0;
          v9 = &v50;
          v10 = 0;
          goto LABEL_58;
        }

LABEL_75:
        v42 = a1;
        v43 = a2;
        swift_once();
        a1 = v42;
        a2 = v43;
        goto LABEL_57;
      }

      v17 = *(a3 + 16);
      v16 = *(a3 + 24);
      v18 = v16 - v17;
      if (__OFSUB__(v16, v17))
      {
        __break(1u);
LABEL_74:
        __break(1u);
        goto LABEL_75;
      }

      if (v18 >= 0xFFFFFFFF80000000)
      {
        if (v18 <= 0x7FFFFFFF)
        {
          v19 = a1;
          v20 = a2;
          v21 = sub_227662060();
          if (v21)
          {
            v22 = v21;
            v23 = sub_227662090();
            if (!__OFSUB__(v17, v23))
            {
              v24 = (v22 + v17 - v23);
              sub_227662080();
              if (v24)
              {
                if (qword_27D7B7EF0 != -1)
                {
                  swift_once();
                }

                v8 = qword_27D7CE2C0;
                a1 = v19;
                a2 = v20;
                v9 = v24;
                v10 = v18;
                goto LABEL_58;
              }

              goto LABEL_64;
            }

LABEL_79:
            __break(1u);
            goto LABEL_80;
          }

LABEL_63:
          sub_227662080();
          goto LABEL_64;
        }

LABEL_71:
        __break(1u);
        goto LABEL_72;
      }

LABEL_70:
      __break(1u);
      goto LABEL_71;
    }

    if ((a4 & 0x1000000000000000) != 0)
    {
      v5 = a1;
      v38 = a2;
      v39 = a3;
      a1 = sub_22766C160();
      if (a1 < 0xFFFFFFFF80000000)
      {
        __break(1u);
        goto LABEL_70;
      }

      v11 = a1;
      a2 = v38;
      a1 = v5;
      a3 = v39;
    }

    else
    {
      if ((a4 & 0x2000000000000000) != 0)
      {
        goto LABEL_42;
      }

      v11 = a3 & 0xFFFFFFFFFFFFLL;
    }

    if (v11 > 0x7FFFFFFF)
    {
      __break(1u);
      goto LABEL_21;
    }

LABEL_42:
    MEMORY[0x28223BE20](a1);
    MEMORY[0x28223BE20](v27);
    if ((v29 & 0x1000000000000000) == 0)
    {
      if ((v29 & 0x2000000000000000) != 0)
      {
        *&v50 = v28;
        *(&v50 + 1) = v29 & 0xFFFFFFFFFFFFFFLL;
        if (qword_27D7B7EF0 == -1)
        {
LABEL_60:
          v32 = qword_27D7CE2C0;
          v33 = &v50;
LABEL_61:
          v34 = sqlite3_bind_text(a1, a2, v33, v30, v32);
          return sub_2273946A4(v34);
        }

LABEL_77:
        v44 = a1;
        v45 = a2;
        v46 = v30;
        swift_once();
        LODWORD(v30) = v46;
        a1 = v44;
        a2 = v45;
        goto LABEL_60;
      }

      if ((v28 & 0x1000000000000000) != 0)
      {
        v31 = v29 & 0xFFFFFFFFFFFFFFFLL;
        if (qword_27D7B7EF0 != -1)
        {
          v47 = a1;
          v48 = a2;
          v49 = v30;
          swift_once();
          LODWORD(v30) = v49;
          a1 = v47;
          a2 = v48;
        }

        v32 = qword_27D7CE2C0;
        v33 = (v31 + 32);
        goto LABEL_61;
      }
    }

    sub_22766CE10();
    v34 = v50;
    return sub_2273946A4(v34);
  }

  if (a5)
  {
    if (a5 == 1)
    {
      result = sqlite3_bind_int(a1, a2, a3);
      if (!result)
      {
        return result;
      }

      goto LABEL_13;
    }

LABEL_21:
    result = sqlite3_bind_int64(a1, a2, a3);
    if (!result)
    {
      return result;
    }

    if (result != 101)
    {
      if (result != 100)
      {
        goto LABEL_24;
      }

      return 1;
    }

    return 2;
  }

  result = sqlite3_bind_double(a1, a2, *&a3);
  if (!result)
  {
    return result;
  }

LABEL_13:
  if (result == 100)
  {
    return 1;
  }

  if (result == 101)
  {
    return 2;
  }

LABEL_24:
  v12 = result;
  v13 = _s15SeymourServices19SQLiteDatabaseErrorO8rawValueACSgs5Int32V_tcfC_0(result);
  if (v13 == 28)
  {
    sub_22706F95C();
    swift_allocError();
    *v14 = v12;
    *(v14 + 8) = 0;
    v15 = 1;
LABEL_65:
    *(v14 + 16) = v15;
    return swift_willThrow();
  }

  v25 = v13;
  sub_22706F9EC();
  swift_allocError();
  *v26 = v25;
  return swift_willThrow();
}

uint64_t sub_22706F8C4@<X0>(char *a1@<X0>, sqlite3_stmt *a2@<X1>, int a3@<W2>, int a4@<W3>, _DWORD *a5@<X8>)
{
  if (qword_27D7B7EF0 != -1)
  {
    v10 = a4;
    swift_once();
    a4 = v10;
  }

  result = sqlite3_bind_text(a2, a3, a1, a4, qword_27D7CE2C0);
  *a5 = result;
  return result;
}

unint64_t sub_22706F95C()
{
  result = qword_27D7BA008;
  if (!qword_27D7BA008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BA008);
  }

  return result;
}

unint64_t sub_22706F9EC()
{
  result = qword_27D7BA010;
  if (!qword_27D7BA010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BA010);
  }

  return result;
}

uint64_t sub_22706FA40()
{
  v1 = [v0 options];
  sub_226E99364(0, &qword_28139D210, 0x277D82BB8);
  v2 = sub_22766BEB0();

  v3 = sub_22766C000();
  if (!*(v2 + 16))
  {

    goto LABEL_7;
  }

  v5 = sub_226E92000(v3, v4);
  v7 = v6;

  if ((v7 & 1) == 0)
  {
LABEL_7:

    goto LABEL_8;
  }

  v8 = *(*(v2 + 56) + 8 * v5);

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    sub_22766BFF0();
  }

LABEL_8:
  result = sub_22766CFB0();
  __break(1u);
  return result;
}

void *sub_22706FBD8()
{
  [v0 copy];
  sub_22766CC20();
  swift_unknownObjectRelease();
  sub_226E99364(0, &qword_28139D238, 0x277CBE4E0);
  if (swift_dynamicCast())
  {
    sub_226E99364(0, &qword_28139D220, 0x277CCABB0);
    v1 = sub_22766CB10();
    [v4 setOption:v1 forKey:*MEMORY[0x277CBE1D8]];

    v2 = sub_22766CB10();
    [v4 setOption:v2 forKey:*MEMORY[0x277CBE178]];

    return v4;
  }

  else
  {
    result = sub_22766CFB0();
    __break(1u);
  }

  return result;
}

void sub_22706FD30(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_227662750();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v29 - v9;
  v12 = MEMORY[0x28223BE20](v11);
  v14 = v29 - v13;
  v15 = [a1 identifier];
  if (!v15)
  {
    goto LABEL_9;
  }

  v29[3] = a2;
  v16 = v15;
  v29[2] = sub_22766C000();
  v18 = v17;

  v19 = [a1 completingSessionIdentifier];
  if (!v19)
  {
    goto LABEL_8;
  }

  v29[5] = v18;
  v20 = v19;
  v29[1] = sub_22766C000();
  v22 = v21;

  v23 = [a1 completionDate];
  if (!v23)
  {

LABEL_8:

    goto LABEL_9;
  }

  v24 = v23;
  v29[0] = v22;
  sub_227662710();

  (*(v5 + 32))(v14, v10, v4);
  v25 = [a1 programIdentifier];
  if (v25)
  {
    v26 = v25;
    sub_22766C000();

    (*(v5 + 16))(v7, v14, v4);
    sub_227665280();

    (*(v5 + 8))(v14, v4);
    return;
  }

  (*(v5 + 8))(v14, v4);
LABEL_9:
  v27 = sub_227664DD0();
  sub_227070810(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
  swift_allocError();
  (*(*(v27 - 8) + 104))(v28, *MEMORY[0x277D51028], v27);
  swift_willThrow();
}

void *static ProgramCompletion.representativeSamples()()
{
  v33 = sub_227662750();
  v0 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v32 = v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA018, &qword_227677428);
  v2 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v29 = v22 - v3;
  v30 = sub_2276652D0();
  v4 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22766C090();
  v8 = sub_22766C090();
  v9 = sub_22766C090();
  v10 = sub_227662630();
  v46 = v8;
  v47[0] = v7;
  v47[1] = v47;
  v47[2] = &v46;
  v44 = v10;
  v45 = v9;
  v47[3] = &v45;
  v47[4] = &v44;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
  v41 = v40;
  v42 = v40;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8CF0, &qword_227671E48);
  v36 = sub_226F5BF60(&qword_27D7B8500, &qword_27D7B84E0, &qword_22767C6B0);
  v37 = v36;
  v38 = v36;
  v39 = sub_226F5BF60(&qword_27D7B8D10, &qword_27D7B8CF0, &qword_227671E48);
  v11 = sub_2276638E0();

  v12 = *(v11 + 16);
  if (v12)
  {
    v35 = MEMORY[0x277D84F90];
    result = sub_226F1FA68(0, v12, 0);
    v14 = 0;
    v15 = v35;
    v24 = v11 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v23 = (v0 + 16);
    v22[1] = v4 + 32;
    v28 = v2;
    v27 = v4;
    v26 = v11;
    v25 = v12;
    v16 = v32;
    while (v14 < *(v11 + 16))
    {
      v17 = v24 + *(v2 + 72) * v14;
      v34 = v15;
      v18 = v29;
      sub_227070550(v17, v29);
      (*v23)(v16, v18 + *(v31 + 80), v33);

      sub_227665280();
      v19 = v18;
      v15 = v34;
      sub_2270705C0(v19);
      v35 = v15;
      v21 = *(v15 + 16);
      v20 = *(v15 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_226F1FA68((v20 > 1), v21 + 1, 1);
        v15 = v35;
      }

      ++v14;
      *(v15 + 16) = v21 + 1;
      result = (*(v27 + 32))(v15 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v21, v6, v30);
      v2 = v28;
      v11 = v26;
      if (v25 == v14)
      {

        return v15;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_227070550(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA018, &qword_227677428);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2270705C0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA018, &qword_227677428);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_227070628(uint64_t a1)
{
  result = sub_227070810(&qword_2813A5700, MEMORY[0x277D515B0], &protocol conformance descriptor for ProgramCompletion);
  *(a1 + 8) = result;
  return result;
}

void sub_227070680(void *a1)
{
  v2 = sub_227662750();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_227665290();
  v6 = sub_22766BFD0();

  [a1 setIdentifier_];

  sub_2276652B0();
  v7 = sub_22766BFD0();

  [a1 setProgramIdentifier_];

  sub_2276652C0();
  v8 = sub_22766BFD0();

  [a1 setCompletingSessionIdentifier_];

  sub_2276652A0();
  v9 = sub_2276626A0();
  (*(v3 + 8))(v5, v2);
  [a1 setCompletionDate_];
}

uint64_t sub_227070810(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_227070868(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8CC8, &unk_227689B50);
  MEMORY[0x28223BE20](v3 - 8);
  v25 = &v24 - v4;
  v5 = sub_227662750();
  MEMORY[0x28223BE20](v5 - 8);
  MEMORY[0x28223BE20](v6);
  v7 = sub_2276627D0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1;
  v12 = [v11 metadata];
  if (v12)
  {
    v13 = v12;
    v14 = sub_22766BEB0();

    v15 = sub_22766C000();
    if (*(v14 + 16))
    {
      v17 = sub_226E92000(v15, v16);
      v19 = v18;

      if (v19)
      {
        sub_226E97CC0(*(v14 + 56) + 32 * v17, v27);

        swift_dynamicCast();
        goto LABEL_7;
      }
    }

    else
    {
    }
  }

LABEL_7:
  v20 = [v11 UUID];

  sub_2276627B0();
  sub_227662770();
  (*(v8 + 8))(v10, v7);
  v21 = [v11 startDate];
  sub_227662710();

  v22 = [v11 endDate];
  sub_227662710();

  v23 = sub_227664950();
  (*(*(v23 - 8) + 56))(v25, 1, 1, v23);
  sub_227666B90();
}

void sub_227070BE8(void *a1)
{
  v2 = [a1 feature];
  if (v2)
  {
    v3 = v2;
    sub_22766C000();

    sub_227071084();
    sub_227663AE0();
    sub_2276666F0();
  }

  else
  {
    v4 = sub_227664DD0();
    sub_2270712C0(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
    swift_allocError();
    (*(*(v4 - 8) + 104))(v5, *MEMORY[0x277D51028], v4);
    swift_willThrow();
  }
}

void *static PrivacyAcknowledgement.representativeSamples()()
{
  v19 = sub_227666710();
  v0 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v2 = &v15 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_227071030();
  sub_227071084();
  v3 = sub_227663B50();
  sub_2270710D8();
  sub_22707112C();
  v25 = sub_227663B50();
  v26[0] = v3;
  v26[1] = v26;
  v26[2] = &v25;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA040, &qword_2276774E0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA048, &qword_2276774E8);
  v21 = sub_226F5BF60(&qword_27D7BA050, &qword_27D7BA040, &qword_2276774E0);
  v22 = sub_226F5BF60(&qword_27D7BA058, &qword_27D7BA048, &qword_2276774E8);
  v4 = sub_2276638E0();

  v5 = *(v4 + 16);
  if (v5)
  {
    v20 = MEMORY[0x277D84F90];
    result = sub_226F1FF48(0, v5, 0);
    v7 = 0;
    v8 = v20;
    v15 = v0 + 32;
    v16 = v5;
    v9 = (v4 + 72);
    v17 = v4;
    v18 = v0;
    while (v7 < *(v4 + 16))
    {
      v11 = *(v9 - 2);
      v10 = *(v9 - 1);
      v12 = *v9;
      sub_226EB396C(*(v9 - 5), *(v9 - 4), *(v9 - 24));
      sub_226EB396C(v11, v10, v12);
      sub_2276666F0();
      v20 = v8;
      v14 = *(v8 + 16);
      v13 = *(v8 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_226F1FF48((v13 > 1), v14 + 1, 1);
        v8 = v20;
      }

      ++v7;
      *(v8 + 16) = v14 + 1;
      result = (*(v18 + 32))(v8 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v14, v2, v19);
      v9 += 48;
      v4 = v17;
      if (v16 == v7)
      {

        return v8;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

unint64_t sub_227071030()
{
  result = qword_27D7BA020;
  if (!qword_27D7BA020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BA020);
  }

  return result;
}

unint64_t sub_227071084()
{
  result = qword_27D7BA028;
  if (!qword_27D7BA028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BA028);
  }

  return result;
}

unint64_t sub_2270710D8()
{
  result = qword_27D7BA030;
  if (!qword_27D7BA030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BA030);
  }

  return result;
}

unint64_t sub_22707112C()
{
  result = qword_27D7BA038;
  if (!qword_27D7BA038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BA038);
  }

  return result;
}

void sub_2270711A4(void *a1)
{
  v2 = sub_227666700();
  v4 = v3;
  v6 = v5 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA060, qword_227677538);
  sub_227663AD0();
  v7 = sub_22766BFD0();
  sub_226EB2DFC(v2, v4, v6);

  [a1 setFeature_];
}

uint64_t sub_227071268(uint64_t a1)
{
  result = sub_2270712C0(&qword_2813A5688, MEMORY[0x277D52578], &protocol conformance descriptor for PrivacyAcknowledgement);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2270712C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_227071308@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D53D00];
  v3 = sub_2276694E0();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_227071388@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2276668E0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2270713B0(uint64_t a1)
{
  *(a1 + 24) = sub_227071418(&qword_2813A5680, &unk_227673850);
  result = sub_227071418(&qword_2813A5678, MEMORY[0x277D52708]);
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_227071418(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_2276668F0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22707145C()
{
  v1 = v0;
  v2 = sub_227669A70();
  v25 = v2;
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22766B390();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  sub_22766B370();
  (*(v7 + 8))(v9, v6);
  v10 = *(v1 + 16);
  ObjectType = swift_getObjectType();
  v29 = v10;
  v11 = *MEMORY[0x277D4E830];
  v12 = v3 + 104;
  v26 = *(v3 + 104);
  v26(v5, v11, v2);
  swift_allocObject();
  v27 = v1;
  swift_weakInit();
  sub_227666130();
  swift_unknownObjectRetain_n();
  sub_227669E90();

  v23 = *(v3 + 8);
  v28 = v3 + 8;
  v13 = v25;
  v23(v5, v25);
  swift_unknownObjectRelease();
  v29 = v10;
  v14 = v26;
  v26(v5, *MEMORY[0x277D4E418], v13);
  swift_allocObject();
  swift_weakInit();
  v22[0] = sub_227666230();
  v22[1] = sub_2276631F0();
  swift_unknownObjectRetain();
  sub_227669E80();

  v15 = v25;
  v16 = v23;
  v23(v5, v25);
  swift_unknownObjectRelease();
  v29 = v10;
  v14(v5, *MEMORY[0x277D4E650], v15);
  v22[2] = v12;
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669E80();

  v16(v5, v15);
  swift_unknownObjectRelease();
  v29 = v10;
  v17 = v26;
  v26(v5, *MEMORY[0x277D4E448], v15);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669E80();

  v18 = v25;
  v16(v5, v25);
  swift_unknownObjectRelease();
  v29 = v10;
  v17(v5, *MEMORY[0x277D4E4C8], v18);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669EA0();

  v19 = v25;
  v20 = v23;
  v23(v5, v25);
  swift_unknownObjectRelease();
  v29 = v10;
  v26(v5, *MEMORY[0x277D4E580], v19);
  swift_allocObject();
  swift_weakInit();
  sub_2276666C0();
  sub_227664900();
  sub_227669E80();

  v20(v5, v19);
  swift_unknownObjectRelease();
  v29 = v10;
  v26(v5, *MEMORY[0x277D4E5B8], v19);
  swift_allocObject();
  swift_weakInit();
  sub_227669E90();

  v20(v5, v19);
  return swift_unknownObjectRelease();
}

uint64_t sub_227071C1C@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_22766B390();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 40, v12);

    v8 = *__swift_project_boxed_opaque_existential_0(v12, v12[3]);
    sub_22766A730();
    sub_22766B370();
    (*(v4 + 8))(v6, v3);
    __swift_project_boxed_opaque_existential_0((v8 + 32), *(v8 + 56));
    sub_227345AA0(a2);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B96C0, &unk_227684560);
    (*(*(v9 - 8) + 56))(a2, 0, 1, v9);
    return __swift_destroy_boxed_opaque_existential_0(v12);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B96C0, &unk_227684560);
    return (*(*(v11 - 8) + 56))(a2, 1, 1, v11);
  }
}

uint64_t sub_227071E2C@<X0>(void *a1@<X0>, uint64_t a3@<X8>)
{
  v5 = sub_22766B390();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 40, v14);

    v10 = *__swift_project_boxed_opaque_existential_0(v14, v14[3]);
    sub_22766A730();
    sub_22766B370();
    (*(v6 + 8))(v8, v5);
    __swift_project_boxed_opaque_existential_0((v10 + 32), *(v10 + 56));
    sub_227350054(a1, a3);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9670, qword_2276748A0);
    (*(*(v11 - 8) + 56))(a3, 0, 1, v11);
    return __swift_destroy_boxed_opaque_existential_0(v14);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9670, qword_2276748A0);
    return (*(*(v13 - 8) + 56))(a3, 1, 1, v13);
  }
}

uint64_t sub_227072044@<X0>(uint64_t *a1@<X0>, uint64_t a3@<X8>)
{
  v5 = sub_22766B390();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = a1[1];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 40, v16);

    v12 = *__swift_project_boxed_opaque_existential_0(v16, v16[3]);
    sub_22766A730();
    sub_22766B370();
    (*(v6 + 8))(v8, v5);
    __swift_project_boxed_opaque_existential_0((v12 + 32), *(v12 + 56));
    sub_22734AE4C(v9, v10, a3);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA1B0, &unk_2276775B0);
    (*(*(v13 - 8) + 56))(a3, 0, 1, v13);
    return __swift_destroy_boxed_opaque_existential_0(v16);
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA1B0, &unk_2276775B0);
    return (*(*(v15 - 8) + 56))(a3, 1, 1, v15);
  }
}

uint64_t sub_22707226C@<X0>(void *a1@<X0>, uint64_t a3@<X8>)
{
  v5 = sub_22766B390();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 40, v14);

    v10 = *__swift_project_boxed_opaque_existential_0(v14, v14[3]);
    sub_22766A730();
    sub_22766B370();
    (*(v6 + 8))(v8, v5);
    __swift_project_boxed_opaque_existential_0((v10 + 32), *(v10 + 56));
    sub_227351318(a1, a3);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9670, qword_2276748A0);
    (*(*(v11 - 8) + 56))(a3, 0, 1, v11);
    return __swift_destroy_boxed_opaque_existential_0(v14);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9670, qword_2276748A0);
    return (*(*(v13 - 8) + 56))(a3, 1, 1, v13);
  }
}

uint64_t sub_227072484@<X0>(void *a1@<X0>, uint64_t a3@<X8>)
{
  v5 = sub_22766B390();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 40, v14);

    v10 = *__swift_project_boxed_opaque_existential_0(v14, v14[3]);
    sub_22766A730();
    sub_22766B370();
    (*(v6 + 8))(v8, v5);
    __swift_project_boxed_opaque_existential_0((v10 + 32), *(v10 + 56));
    sub_227352674(a1, a3);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
    (*(*(v11 - 8) + 56))(a3, 0, 1, v11);
    return __swift_destroy_boxed_opaque_existential_0(v14);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
    return (*(*(v13 - 8) + 56))(a3, 1, 1, v13);
  }
}

uint64_t sub_22707269C@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v5 = sub_22766B390();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 40, v16);

    v10 = *__swift_project_boxed_opaque_existential_0(v16, v16[3]);
    sub_22766A730();
    sub_22766B370();
    (*(v6 + 8))(v8, v5);
    v11 = v10[18];
    v12 = v10[19];
    __swift_project_boxed_opaque_existential_0(v10 + 15, v11);
    (*(v12 + 16))(a1, v11, v12);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA068, &qword_2276775A8);
    (*(*(v13 - 8) + 56))(a3, 0, 1, v13);
    return __swift_destroy_boxed_opaque_existential_0(v16);
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA068, &qword_2276775A8);
    return (*(*(v15 - 8) + 56))(a3, 1, 1, v15);
  }
}

uint64_t sub_2270728D8@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_22766B390();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 40, v14);

    v8 = *__swift_project_boxed_opaque_existential_0(v14, v14[3]);
    sub_22766A730();
    sub_22766B370();
    (*(v4 + 8))(v6, v3);
    v9 = v8[18];
    v10 = v8[19];
    __swift_project_boxed_opaque_existential_0(v8 + 15, v9);
    (*(v10 + 24))(v9, v10);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA068, &qword_2276775A8);
    (*(*(v11 - 8) + 56))(a2, 0, 1, v11);
    return __swift_destroy_boxed_opaque_existential_0(v14);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA068, &qword_2276775A8);
    return (*(*(v13 - 8) + 56))(a2, 1, 1, v13);
  }
}

uint64_t sub_227072B70(uint64_t a1)
{
  v34 = sub_227663480();
  v3 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v33 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v5)
  {
    v26 = v1;
    v38 = MEMORY[0x277D84F90];
    sub_226F1EF90();
    v37 = v38;
    v7 = a1 + 56;
    result = sub_22766CC90();
    v8 = result;
    v9 = 0;
    v31 = v3 + 8;
    v32 = v3 + 16;
    v27 = a1 + 64;
    v28 = v5;
    v29 = v3;
    v30 = a1 + 56;
    while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(a1 + 32))
    {
      v11 = v8 >> 6;
      if ((*(v7 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_22;
      }

      v35 = *(a1 + 36);
      v12 = v33;
      v13 = v34;
      (*(v3 + 16))(v33, *(a1 + 48) + *(v3 + 72) * v8, v34);
      v36 = sub_227663410();
      v15 = v14;
      result = (*(v3 + 8))(v12, v13);
      v16 = v37;
      v38 = v37;
      v17 = *(v37 + 16);
      if (v17 >= *(v37 + 24) >> 1)
      {
        result = sub_226F1EF90();
        v16 = v38;
      }

      *(v16 + 16) = v17 + 1;
      v18 = v16 + 16 * v17;
      *(v18 + 32) = v36;
      *(v18 + 40) = v15;
      v10 = 1 << *(a1 + 32);
      if (v8 >= v10)
      {
        goto LABEL_23;
      }

      v7 = v30;
      v19 = *(v30 + 8 * v11);
      if ((v19 & (1 << v8)) == 0)
      {
        goto LABEL_24;
      }

      v37 = v16;
      if (v35 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v20 = v19 & (-2 << (v8 & 0x3F));
      if (v20)
      {
        v10 = __clz(__rbit64(v20)) | v8 & 0x7FFFFFFFFFFFFFC0;
        v3 = v29;
      }

      else
      {
        v21 = v11 << 6;
        v22 = v11 + 1;
        v23 = (v27 + 8 * v11);
        v3 = v29;
        while (v22 < (v10 + 63) >> 6)
        {
          v25 = *v23++;
          v24 = v25;
          v21 += 64;
          ++v22;
          if (v25)
          {
            result = sub_226EB526C(v8, v35, 0);
            v10 = __clz(__rbit64(v24)) + v21;
            goto LABEL_4;
          }
        }

        result = sub_226EB526C(v8, v35, 0);
      }

LABEL_4:
      ++v9;
      v8 = v10;
      if (v9 == v28)
      {
        return v37;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

void sub_227072E78(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v23 = MEMORY[0x277D84F90];
    sub_226F1FF68(0, v1, 0);
    v3 = a1 + 56;
    v4 = sub_22766CC90();
    v5 = 0;
    v20 = v1;
    while ((v4 & 0x8000000000000000) == 0 && v4 < 1 << *(a1 + 32))
    {
      v7 = v4 >> 6;
      if ((*(v3 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
      {
        goto LABEL_21;
      }

      v21 = *(a1 + 36);
      v8 = (*(a1 + 48) + 16 * v4);
      v9 = v8[1];
      v22 = *v8;
      v10 = *(v23 + 16);
      v11 = *(v23 + 24);

      if (v10 >= v11 >> 1)
      {
        sub_226F1FF68((v11 > 1), v10 + 1, 1);
      }

      *(v23 + 16) = v10 + 1;
      v12 = v23 + 24 * v10;
      *(v12 + 32) = v22;
      *(v12 + 40) = v9;
      *(v12 + 48) = 2;
      v6 = 1 << *(a1 + 32);
      if (v4 >= v6)
      {
        goto LABEL_22;
      }

      v3 = a1 + 56;
      v13 = *(a1 + 56 + 8 * v7);
      if ((v13 & (1 << v4)) == 0)
      {
        goto LABEL_23;
      }

      if (v21 != *(a1 + 36))
      {
        goto LABEL_24;
      }

      v14 = v13 & (-2 << (v4 & 0x3F));
      if (v14)
      {
        v6 = __clz(__rbit64(v14)) | v4 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v15 = v7 << 6;
        v16 = v7 + 1;
        v17 = (a1 + 64 + 8 * v7);
        while (v16 < (v6 + 63) >> 6)
        {
          v19 = *v17++;
          v18 = v19;
          v15 += 64;
          ++v16;
          if (v19)
          {
            sub_226EB526C(v4, v21, 0);
            v6 = __clz(__rbit64(v18)) + v15;
            goto LABEL_4;
          }
        }

        sub_226EB526C(v4, v21, 0);
      }

LABEL_4:
      ++v5;
      v4 = v6;
      if (v5 == v20)
      {
        return;
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
  }
}

uint64_t sub_2270730AC(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t))
{
  v38 = a3;
  v37 = a2(0);
  v5 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v36 = v30 - v6;
  v7 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v7)
  {
    v30[1] = v3;
    v43 = MEMORY[0x277D84F90];
    sub_226F1EFF0(0, v7, 0);
    v41 = a1 + 56;
    v42 = v43;
    result = sub_22766CC90();
    v9 = result;
    v10 = 0;
    v34 = v5 + 8;
    v35 = v5 + 16;
    v31 = a1 + 64;
    v32 = v7;
    v33 = v5;
    while ((v9 & 0x8000000000000000) == 0 && v9 < 1 << *(a1 + 32))
    {
      v13 = v9 >> 6;
      if ((*(v41 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
      {
        goto LABEL_22;
      }

      v39 = *(a1 + 36);
      v14 = v36;
      v15 = v37;
      v16 = (*(v5 + 16))(v36, *(a1 + 48) + *(v5 + 72) * v9, v37);
      v40 = v38(v16);
      v18 = v17;
      result = (*(v5 + 8))(v14, v15);
      v19 = v42;
      v43 = v42;
      v21 = *(v42 + 16);
      v20 = *(v42 + 24);
      if (v21 >= v20 >> 1)
      {
        result = sub_226F1EFF0((v20 > 1), v21 + 1, 1);
        v19 = v43;
      }

      *(v19 + 16) = v21 + 1;
      v22 = v19 + 16 * v21;
      *(v22 + 32) = v40;
      *(v22 + 40) = v18;
      v11 = 1 << *(a1 + 32);
      if (v9 >= v11)
      {
        goto LABEL_23;
      }

      v23 = *(v41 + 8 * v13);
      if ((v23 & (1 << v9)) == 0)
      {
        goto LABEL_24;
      }

      v42 = v19;
      if (v39 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v24 = v23 & (-2 << (v9 & 0x3F));
      if (v24)
      {
        v11 = __clz(__rbit64(v24)) | v9 & 0x7FFFFFFFFFFFFFC0;
        v12 = v32;
        v5 = v33;
      }

      else
      {
        v25 = v13 << 6;
        v26 = v13 + 1;
        v12 = v32;
        v27 = (v31 + 8 * v13);
        v5 = v33;
        while (v26 < (v11 + 63) >> 6)
        {
          v29 = *v27++;
          v28 = v29;
          v25 += 64;
          ++v26;
          if (v29)
          {
            result = sub_226EB526C(v9, v39, 0);
            v11 = __clz(__rbit64(v28)) + v25;
            goto LABEL_4;
          }
        }

        result = sub_226EB526C(v9, v39, 0);
      }

LABEL_4:
      ++v10;
      v9 = v11;
      if (v10 == v12)
      {
        return v42;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_2270733BC(uint64_t a1)
{
  v3 = sub_2276624A0();
  MEMORY[0x28223BE20](v3 - 8);
  v48 = v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_227664AE0();
  MEMORY[0x28223BE20](v47);
  v50 = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v46 = v36 - v7;
  v56 = sub_2276639B0();
  v8 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v55 = v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_227666070();
  v10 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v49 = v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v12)
  {
    v36[1] = v1;
    v58 = MEMORY[0x277D84F90];
    sub_226F1F4C8(0, v12, 0);
    v57 = v58;
    v54 = a1 + 56;
    result = sub_22766CC90();
    v14 = result;
    v15 = 0;
    v41 = (v8 + 8);
    v42 = v8 + 16;
    v43 = v10;
    v40 = v10 + 32;
    v37 = a1 + 64;
    v38 = v12;
    v44 = a1;
    v39 = v8;
    while ((v14 & 0x8000000000000000) == 0 && v14 < 1 << *(a1 + 32))
    {
      v17 = v14 >> 6;
      if ((*(v54 + 8 * (v14 >> 6)) & (1 << v14)) == 0)
      {
        goto LABEL_24;
      }

      v18 = *(a1 + 36);
      v51 = v15;
      v52 = v18;
      (*(v8 + 16))(v55, *(a1 + 48) + *(v8 + 72) * v14, v56);
      sub_227663910();
      v20 = v19;
      v21 = v46;
      sub_227663970();
      sub_226F322FC(v21, v50);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v53 = v20;
      if (EnumCaseMultiPayload <= 1)
      {
        sub_226F32360(v50);
      }

      v23 = v55;
      sub_2276639A0();
      sub_227663990();
      sub_227663930();
      sub_227663940();
      sub_227663960();
      v24 = v49;
      sub_227665FF0();
      (*v41)(v23, v56);
      v25 = v57;
      v58 = v57;
      v27 = *(v57 + 16);
      v26 = *(v57 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_226F1F4C8((v26 > 1), v27 + 1, 1);
        v24 = v49;
        v25 = v58;
      }

      *(v25 + 16) = v27 + 1;
      v28 = (*(v43 + 80) + 32) & ~*(v43 + 80);
      v57 = v25;
      result = (*(v43 + 32))(v25 + v28 + *(v43 + 72) * v27, v24, v45);
      a1 = v44;
      v16 = 1 << *(v44 + 32);
      if (v14 >= v16)
      {
        goto LABEL_25;
      }

      v29 = *(v54 + 8 * v17);
      if ((v29 & (1 << v14)) == 0)
      {
        goto LABEL_26;
      }

      if (v52 != *(v44 + 36))
      {
        goto LABEL_27;
      }

      v30 = v29 & (-2 << (v14 & 0x3F));
      if (v30)
      {
        v16 = __clz(__rbit64(v30)) | v14 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v31 = v17 << 6;
        v32 = v17 + 1;
        v33 = (v37 + 8 * v17);
        while (v32 < (v16 + 63) >> 6)
        {
          v35 = *v33++;
          v34 = v35;
          v31 += 64;
          ++v32;
          if (v35)
          {
            result = sub_226EB526C(v14, v52, 0);
            v16 = __clz(__rbit64(v34)) + v31;
            goto LABEL_4;
          }
        }

        result = sub_226EB526C(v14, v52, 0);
      }

LABEL_4:
      v15 = v51 + 1;
      v14 = v16;
      v8 = v39;
      if (v51 + 1 == v38)
      {
        return v57;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  return result;
}

void *sub_227073914(uint64_t a1)
{
  v1 = 0;
  v2 = MEMORY[0x277D84F98];
  v3 = a1 + 56;
  v46 = MEMORY[0x277D84F98];
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 56);
  v7 = (v4 + 63) >> 6;
  v39 = v7;
  v40 = a1 + 56;
  while (v6)
  {
LABEL_9:
    v9 = *(a1 + 48) + 24 * (__clz(__rbit64(v6)) | (v1 << 6));
    v11 = *v9;
    v10 = *(v9 + 8);
    v12 = *(v9 + 16);
    v13 = sub_226F491D4(v12);
    v15 = v2[2];
    v16 = (v14 & 1) == 0;
    v17 = v15 + v16;
    if (__OFADD__(v15, v16))
    {
      goto LABEL_24;
    }

    v18 = v13;
    v19 = v14;
    v42 = v2;
    v44 = v11;
    v20 = v2[3];
    v45 = v10;
    sub_226F04958(v11, v10, v12);
    if (v20 >= v17)
    {
      v7 = v39;
      v2 = v42;
      v23 = v18;
    }

    else
    {
      sub_226FE8EFC(v17, 1);
      v2 = v46;
      v21 = sub_226F491D4(v12);
      if ((v19 & 1) != (v22 & 1))
      {
        goto LABEL_26;
      }

      v23 = v21;
      v7 = v39;
    }

    v6 &= v6 - 1;
    v3 = v40;
    if (v19)
    {
      v24 = v2[7];
      v25 = *(v24 + 8 * v23);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v24 + 8 * v23) = v25;
      v43 = v24;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v25 = sub_2273A5594(0, *(v25 + 2) + 1, 1, v25);
        *(v24 + 8 * v23) = v25;
      }

      v28 = *(v25 + 2);
      v27 = *(v25 + 3);
      v29 = v28 + 1;
      v31 = v44;
      v30 = v45;
      if (v28 >= v27 >> 1)
      {
        v37 = sub_2273A5594((v27 > 1), v28 + 1, 1, v25);
        v29 = v28 + 1;
        v31 = v44;
        v30 = v45;
        v25 = v37;
        *(v43 + 8 * v23) = v37;
      }

      *(v25 + 2) = v29;
      v32 = &v25[24 * v28];
      *(v32 + 4) = v31;
      *(v32 + 5) = v30;
      v32[48] = v12;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA0A0, qword_227677990);
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_227670CD0;
      *(v33 + 32) = v44;
      *(v33 + 40) = v45;
      *(v33 + 48) = v12;
      v2[(v23 >> 6) + 8] |= 1 << v23;
      *(v2[6] + 8 * v23) = v12;
      *(v2[7] + 8 * v23) = v33;
      v34 = v2[2];
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
        goto LABEL_25;
      }

      v2[2] = v36;
    }
  }

  while (1)
  {
    v8 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      break;
    }

    if (v8 >= v7)
    {

      return v2;
    }

    v6 = *(v3 + 8 * v8);
    ++v1;
    if (v6)
    {
      v1 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = sub_22766D220();
  __break(1u);
  return result;
}

char *sub_227073D54(unint64_t a1, uint64_t (*a2)(void))
{
  if (a1 >> 62)
  {
    v4 = sub_22766CD20();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = MEMORY[0x277D84F90];
  if (!v4)
  {
    return v5;
  }

  v15 = MEMORY[0x277D84F90];
  result = sub_226F1ED50(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v5 = v15;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v4; ++i)
      {
        MEMORY[0x22AA991A0](i, a1);
        a2(0);
        swift_dynamicCast();
        v15 = v5;
        v9 = *(v5 + 16);
        v8 = *(v5 + 24);
        if (v9 >= v8 >> 1)
        {
          sub_226F1ED50((v8 > 1), v9 + 1, 1);
          v5 = v15;
        }

        *(v5 + 16) = v9 + 1;
        sub_226F04970(v14, (v5 + 32 * v9 + 32));
      }
    }

    else
    {
      v10 = (a1 + 32);
      a2(0);
      do
      {
        v11 = *v10;
        swift_dynamicCast();
        v15 = v5;
        v13 = *(v5 + 16);
        v12 = *(v5 + 24);
        if (v13 >= v12 >> 1)
        {
          sub_226F1ED50((v12 > 1), v13 + 1, 1);
          v5 = v15;
        }

        *(v5 + 16) = v13 + 1;
        sub_226F04970(v14, (v5 + 32 * v13 + 32));
        ++v10;
        --v4;
      }

      while (v4);
    }

    return v5;
  }

  __break(1u);
  return result;
}

uint64_t sub_227073F2C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v10 = MEMORY[0x277D84F90];
    sub_226F1EFF0(0, v1, 0);
    v2 = v10;
    v4 = a1 + 40;
    do
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
      swift_dynamicCast();
      v5 = v9;
      v7 = *(v10 + 16);
      v6 = *(v10 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_226F1EFF0((v6 > 1), v7 + 1, 1);
        v5 = v9;
      }

      *(v10 + 16) = v7 + 1;
      *(v10 + 16 * v7 + 32) = v5;
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_227074044(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v11 = MEMORY[0x277D84F90];
    sub_226F1F5E8(0, v1, 0);
    v2 = v11;
    v4 = a1 + 32;
    do
    {
      v4 += 4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA098, &qword_227677738);
      swift_dynamicCast();
      v6 = *(v11 + 16);
      v5 = *(v11 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_226F1F5E8((v5 > 1), v6 + 1, 1);
      }

      *(v11 + 16) = v6 + 1;
      v7 = v11 + 8 * v6;
      *(v7 + 32) = v9;
      *(v7 + 36) = v10;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_22707415C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v9 = MEMORY[0x277D84F90];
    sub_226F1ED50(0, v1, 0);
    v2 = v9;
    v4 = a1 + 40;
    do
    {

      swift_dynamicCast();
      v9 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_226F1ED50((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      *(v2 + 16) = v6 + 1;
      sub_226F04970(&v8, (v2 + 32 * v6 + 32));
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void sub_22707425C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v5 = MEMORY[0x277D84F98];
  v32 = MEMORY[0x277D84F98];
  v6 = a1 + 64;
  v7 = 1 << *(a1 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  while (v9)
  {
LABEL_10:
    v13 = *(*(a1 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v9)))));

    v15 = a4(v14, a2, a3);
    if (v4)
    {

      return;
    }

    v16 = v15;
    v9 &= v9 - 1;

    if (v16)
    {
      v17 = *(v5 + 16);
      if (*(v5 + 24) <= v17)
      {
        sub_226FE466C(v17 + 1, 1);
        v5 = v32;
      }

      v18 = sub_22766D360();
      v19 = v5 + 64;
      v20 = -1 << *(v5 + 32);
      v21 = v18 & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v5 + 64 + 8 * (v21 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v20) >> 6;
        while (++v22 != v25 || (v24 & 1) == 0)
        {
          v26 = v22 == v25;
          if (v22 == v25)
          {
            v22 = 0;
          }

          v24 |= v26;
          v27 = *(v19 + 8 * v22);
          if (v27 != -1)
          {
            v23 = __clz(__rbit64(~v27)) + (v22 << 6);
            goto LABEL_24;
          }
        }

        goto LABEL_28;
      }

      v23 = __clz(__rbit64((-1 << v21) & ~*(v5 + 64 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_24:
      *(v19 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      *(*(v5 + 48) + 8 * v23) = v13;
      *(*(v5 + 56) + 8 * v23) = v16;
      ++*(v5 + 16);
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v10)
    {

      return;
    }

    v9 = *(v6 + 8 * v12);
    ++v11;
    if (v9)
    {
      v11 = v12;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
}

id sub_2270744C4()
{
  v0 = sub_227664F20();
  v1 = sub_2270361EC(v0);
  sub_22707425C(v1, 4, &selRef_orPredicateWithSubpredicates_, sub_227077428);
  v3 = v2;

  v4 = sub_227664F10();
  v5 = sub_2270361EC(v4);
  sub_22707425C(v5, 5, &selRef_andPredicateWithSubpredicates_, sub_227077428);
  v7 = v6;

  v8 = *(v3 + 16);
  if (!v8)
  {
    goto LABEL_6;
  }

  v9 = sub_226ECC830(*(v3 + 16), 0);
  v10 = sub_2274CF834();
  result = sub_226EBB21C(v16);
  if (v10 == v8)
  {
    v12 = *(v7 + 16);
    if (v12)
    {
      while (1)
      {
        v13 = sub_226ECC830(v12, 0);
        v7 = sub_2274CF834();
        sub_226EBB21C(v16);
        if (v7 == v12)
        {
          break;
        }

        __break(1u);
LABEL_6:

        v9 = MEMORY[0x277D84F90];
        v12 = *(v7 + 16);
        if (!v12)
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
LABEL_7:

      v13 = MEMORY[0x277D84F90];
    }

    sub_22745F2F8(v13);
    sub_226E99364(0, &qword_281398B58, 0x277CCAC30);
    v14 = sub_22766C2B0();

    v15 = [objc_opt_self() andPredicateWithSubpredicates_];

    return v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_2270746A0(uint64_t a1, uint64_t a2)
{

  v3 = sub_227073914(a2);
  sub_22707425C(v3, 4, &selRef_orPredicateWithSubpredicates_, sub_2270779EC);
  v5 = v4;

  v7 = sub_227073914(v6);
  sub_22707425C(v7, 5, &selRef_andPredicateWithSubpredicates_, sub_2270779EC);
  v9 = v8;

  v10 = *(v5 + 16);
  if (!v10)
  {
    goto LABEL_6;
  }

  v11 = sub_226ECC830(*(v5 + 16), 0);
  v12 = sub_2274CF834();
  result = sub_226EBB21C(v18);
  if (v12 == v10)
  {
    v14 = *(v9 + 16);
    if (v14)
    {
      while (1)
      {
        v15 = sub_226ECC830(v14, 0);
        v9 = sub_2274CF834();
        sub_226EBB21C(v18);
        if (v9 == v14)
        {
          break;
        }

        __break(1u);
LABEL_6:

        v11 = MEMORY[0x277D84F90];
        v14 = *(v9 + 16);
        if (!v14)
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
LABEL_7:

      v15 = MEMORY[0x277D84F90];
    }

    sub_22745F2F8(v15);
    sub_226E99364(0, &qword_281398B58, 0x277CCAC30);
    v16 = sub_22766C2B0();

    v17 = [objc_opt_self() andPredicateWithSubpredicates_];

    return v17;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22707488C(uint64_t a1, void (***a2)(char *, uint64_t, uint64_t))
{
  v5 = sub_2276624A0();
  MEMORY[0x28223BE20](v5 - 8);
  v110 = &v97 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9688, &qword_2276776E0);
  MEMORY[0x28223BE20](v7 - 8);
  v118 = &v97 - v8;
  v121 = sub_227664AE0();
  v106 = *(v121 - 8);
  MEMORY[0x28223BE20](v121);
  v109 = &v97 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v108 = &v97 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA070, &qword_2276776E8);
  MEMORY[0x28223BE20](v12 - 8);
  v117 = &v97 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA078, &unk_2276776F0);
  MEMORY[0x28223BE20](v14 - 8);
  v120 = &v97 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9680, &unk_227671520);
  MEMORY[0x28223BE20](v16 - 8);
  v119 = &v97 - v17;
  v122 = sub_2276639B0();
  v107 = *(v122 - 8);
  MEMORY[0x28223BE20](v122);
  v105 = &v97 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_227666070();
  v123 = *(v19 - 8);
  v124 = v19;
  MEMORY[0x28223BE20](v19);
  v115 = a2;
  v116 = &v97 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  v22 = *v21;
  v23 = v21[1];
  v24 = *(v21 + 16);
  v25 = v21[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9698, &qword_2276776A0);
  v26 = swift_allocObject();
  v27 = v22;
  v28 = v23;

  sub_22766A070();
  *(v26 + 16) = v27;
  *(v26 + 24) = v28;
  *(v26 + 32) = v24;
  *(v26 + 40) = v25;
  swift_getKeyPath();
  v129 = a1;
  v29 = sub_2270730AC(a1, MEMORY[0x277D52038], MEMORY[0x277D52030]);
  v30 = v2;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8470, qword_227677CA0);
  v128 = v114;
  v127 = v29;
  v31 = sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v113 = v31;
  v32 = sub_22766C820();
  sub_226E93170(&v127, v125, &unk_27D7BC990, &qword_227670A30);
  v33 = v126;
  if (v126)
  {
    v34 = __swift_project_boxed_opaque_existential_0(v125, v126);
    v35 = *(v33 - 8);
    v36 = MEMORY[0x28223BE20](v34);
    v38 = &v97 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v35 + 16))(v38, v36);
    v39 = sub_22766D170();
    (*(v35 + 8))(v38, v33);
    __swift_destroy_boxed_opaque_existential_0(v125);
  }

  else
  {
    v39 = 0;
  }

  v112 = objc_opt_self();
  v40 = [v112 expressionForConstantValue_];
  swift_unknownObjectRelease();
  [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B96A8 &unk_2276776D0))];

  sub_226E97D1C(&v127, &unk_27D7BC990, &qword_227670A30);
  v41 = &qword_2813B2078;
  swift_beginAccess();
  v42 = sub_22766A080();
  v44 = v43;
  MEMORY[0x22AA985C0]();
  if (*((*v44 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_35;
  }

  while (1)
  {
    sub_22766C3A0();
    v42(&v127, 0);
    swift_endAccess();

    v45 = sub_227231CB8(100);
    if (v30)
    {
      break;
    }

    v111 = v45;
    swift_setDeallocating();

    v48 = *v41;
    v49 = sub_22766A100();
    v50 = *(v49 - 8);
    v104 = *(v50 + 8);
    v103 = (v50 + 8);
    (v104)(v26 + v48, v49);
    swift_deallocClassInstance();
    v51 = __swift_project_boxed_opaque_existential_0(v115, *(v115 + 3));
    v52 = *v51;
    v53 = v51[1];
    v54 = *(v51 + 16);
    v55 = v51[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA080, &qword_227677700);
    v56 = swift_allocObject();
    v57 = v52;
    v58 = v53;

    sub_22766A070();
    *(v56 + 16) = v57;
    *(v56 + 24) = v58;
    *(v56 + 32) = v54;
    *(v56 + 40) = v55;
    KeyPath = swift_getKeyPath();
    v60 = sub_2270730AC(v129, MEMORY[0x277D52038], MEMORY[0x277D52030]);
    v42 = 0;
    v128 = v114;
    v127 = v60;

    v61 = sub_22766C820();
    sub_226E93170(&v127, v125, &unk_27D7BC990, &qword_227670A30);
    v62 = v126;
    if (v126)
    {
      v63 = __swift_project_boxed_opaque_existential_0(v125, v126);
      v115 = &v97;
      v64 = *(v62 - 8);
      v65 = MEMORY[0x28223BE20](v63);
      v67 = &v97 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v64 + 16))(v67, v65);
      v68 = sub_22766D170();
      v69 = v67;
      v42 = 0;
      (*(v64 + 8))(v69, v62);
      __swift_destroy_boxed_opaque_existential_0(v125);
    }

    else
    {
      v68 = 0;
    }

    v30 = v116;
    v70 = [v112 expressionForConstantValue_];
    swift_unknownObjectRelease();
    [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA088 &qword_227677730))];

    sub_226E97D1C(&v127, &unk_27D7BC990, &qword_227670A30);
    swift_beginAccess();
    v71 = sub_22766A080();
    v73 = v72;
    MEMORY[0x22AA985C0]();
    if (*((*v73 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v73 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v116 = KeyPath;
      sub_22766C360();
    }

    sub_22766C3A0();
    v71(&v127, 0);
    swift_endAccess();

    v115 = sub_227231FB8(100);
    swift_setDeallocating();

    (v104)(v56 + qword_2813B2078, v49);
    swift_deallocClassInstance();
    v75 = v129 + 56;
    v76 = 1 << *(v129 + 32);
    v77 = -1;
    if (v76 < 64)
    {
      v77 = ~(-1 << v76);
    }

    v26 = v77 & *(v129 + 56);
    v78 = (v76 + 63) >> 6;
    v112 = (v123 + 16);
    v106 += 7;
    v104 = (v107 + 56);
    v103 = (v123 + 8);
    v102 = (v107 + 48);
    v97 = (v107 + 32);

    v41 = 0;
    v98 = MEMORY[0x277D84F90];
    v114 = v75;
    v113 = v78;
LABEL_17:
    v79 = v41;
    v80 = v117;
    v81 = v118;
    if (!v26)
    {
      goto LABEL_19;
    }

    do
    {
      v41 = v79;
LABEL_22:
      v82 = (*(v123 + 16))(v30, *(v129 + 48) + *(v123 + 72) * (__clz(__rbit64(v26)) | (v41 << 6)), v124);
      MEMORY[0x28223BE20](v82);
      *(&v97 - 2) = v30;
      v83 = v120;
      sub_2275439B4(sub_227079780, v111, v120);
      MEMORY[0x28223BE20](v84);
      *(&v97 - 2) = v30;
      sub_2275439E0(sub_2270797B4, v115, v80);
      sub_227075AA8(v30, v83, v80, v81);
      if (v42)
      {

        v85 = 1;
        (*v106)(v81, 1, 1, v121);
        sub_226E97D1C(v80, &qword_27D7BA070, &qword_2276776E8);
        sub_226E97D1C(v83, &qword_27D7BA078, &unk_2276776F0);
        sub_226E97D1C(v81, &qword_27D7B9688, &qword_2276776E0);
        v116 = 0;
        v86 = v119;
      }

      else
      {
        v116 = 0;
        (*v106)(v81, 0, 1, v121);
        v87 = v108;
        sub_226F322FC(v81, v108);
        v101 = sub_227666000();
        v100 = v88;
        sub_2270797E8(v87, v109);
        sub_227666060();
        v99 = sub_227666050();
        sub_227666010();
        sub_227666020();
        sub_227666030();
        v86 = v119;
        v81 = v118;
        sub_227663900();
        v89 = v87;
        v80 = v117;
        sub_226F32360(v89);
        sub_226E97D1C(v80, &qword_27D7BA070, &qword_2276776E8);
        sub_226E97D1C(v83, &qword_27D7BA078, &unk_2276776F0);
        v85 = 0;
      }

      v26 &= v26 - 1;
      v90 = v85;
      v91 = v122;
      (*v104)(v86, v90, 1, v122);
      (*v103)(v30, v124);
      if ((*v102)(v86, 1, v91) != 1)
      {
        v92 = *v97;
        (*v97)(v105, v86, v122);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v42 = v116;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v98 = sub_2273A4EA4(0, *(v98 + 2) + 1, 1, v98);
        }

        v95 = *(v98 + 2);
        v94 = *(v98 + 3);
        if (v95 >= v94 >> 1)
        {
          v98 = sub_2273A4EA4((v94 > 1), v95 + 1, 1, v98);
        }

        v96 = v98;
        *(v98 + 2) = v95 + 1;
        v92(&v96[((*(v107 + 80) + 32) & ~*(v107 + 80)) + *(v107 + 72) * v95], v105, v122);
        v75 = v114;
        v78 = v113;
        goto LABEL_17;
      }

      sub_226E97D1C(v86, &qword_27D7B9680, &unk_227671520);
      v79 = v41;
      v42 = v116;
      v75 = v114;
      v78 = v113;
    }

    while (v26);
LABEL_19:
    while (1)
    {
      v41 = (v79 + 1);
      if (__OFADD__(v79, 1))
      {
        break;
      }

      if (v41 >= v78)
      {

        v46 = sub_226F3FF8C(v98);

        return v46;
      }

      v26 = *(v75 + 8 * v41);
      v79 = (v79 + 1);
      if (v26)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_35:
    sub_22766C360();
  }

  swift_setDeallocating();

  v46 = *v41;
  v47 = sub_22766A100();
  (*(*(v47 - 8) + 8))(v26 + v46, v47);
  swift_deallocClassInstance();
  return v46;
}

uint64_t sub_227075AA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v62 = a4;
  v58 = a2;
  v59 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA078, &unk_2276776F0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v52 - v6;
  v8 = sub_2276668A0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_227666070();
  v56 = *(v12 - 8);
  v57 = v12;
  MEMORY[0x28223BE20](v12);
  v53 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v52 = &v52 - v15;
  v16 = sub_22766B390();
  v60 = *(v16 - 8);
  v61 = v16;
  MEMORY[0x28223BE20](v16);
  v55 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v54 = &v52 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA070, &qword_2276776E8);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v52 - v21;
  v23 = sub_2276687D0();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v52 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_227666040();
  if (v27)
  {
    if (v27 == 1)
    {
      sub_226E93170(v59, v22, &qword_27D7BA070, &qword_2276776E8);
      if ((*(v24 + 48))(v22, 1, v23) == 1)
      {
        sub_226E97D1C(v22, &qword_27D7BA070, &qword_2276776E8);
        v28 = v54;
        sub_22766A6C0();
        v30 = v56;
        v29 = v57;
        v31 = v52;
        (*(v56 + 16))(v52, a1, v57);
        v32 = sub_22766B380();
        v33 = sub_22766C890();
        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          v35 = swift_slowAlloc();
          v63 = v35;
          *v34 = 141558274;
          *(v34 + 4) = 1752392040;
          *(v34 + 12) = 2080;
          sub_22707FCA0(&qword_27D7BA090, MEMORY[0x277D52038], MEMORY[0x277D52050]);
          v36 = sub_22766D140();
          v37 = v31;
          v39 = v38;
          (*(v30 + 8))(v37, v29);
          v40 = sub_226E97AE8(v36, v39, &v63);

          *(v34 + 14) = v40;
          v41 = "Missing mediaStreamMetadata for %{mask.hash}s";
LABEL_10:
          _os_log_impl(&dword_226E8E000, v32, v33, v41, v34, 0x16u);
          __swift_destroy_boxed_opaque_existential_0(v35);
          MEMORY[0x22AA9A450](v35, -1, -1);
          MEMORY[0x22AA9A450](v34, -1, -1);

LABEL_13:
          (*(v60 + 8))(v28, v61);
          v48 = sub_227663190();
          sub_22707FCA0(&qword_27D7B9620, MEMORY[0x277D4FDC8], MEMORY[0x277D4FDD0]);
          swift_allocError();
          (*(*(v48 - 8) + 104))(v49, *MEMORY[0x277D4FD08], v48);
          return swift_willThrow();
        }

        goto LABEL_12;
      }

      v47 = *(v24 + 32);
      v47(v26, v22, v23);
      v47(v62, v26, v23);
      sub_227664AE0();
    }

    else
    {
      sub_226E93170(v58, v7, &qword_27D7BA078, &unk_2276776F0);
      if ((*(v9 + 48))(v7, 1, v8) == 1)
      {
        sub_226E97D1C(v7, &qword_27D7BA078, &unk_2276776F0);
        v28 = v55;
        sub_22766A6C0();
        v30 = v56;
        v29 = v57;
        v31 = v53;
        (*(v56 + 16))(v53, a1, v57);
        v32 = sub_22766B380();
        v33 = sub_22766C890();
        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          v35 = swift_slowAlloc();
          v63 = v35;
          *v34 = 141558274;
          *(v34 + 4) = 1752392040;
          *(v34 + 12) = 2080;
          sub_22707FCA0(&qword_27D7BA090, MEMORY[0x277D52038], MEMORY[0x277D52050]);
          v42 = sub_22766D140();
          v43 = v31;
          v45 = v44;
          (*(v30 + 8))(v43, v29);
          v46 = sub_226E97AE8(v42, v45, &v63);

          *(v34 + 14) = v46;
          v41 = "Missing keyMetadata for %{mask.hash}s";
          goto LABEL_10;
        }

LABEL_12:

        (*(v30 + 8))(v31, v29);
        goto LABEL_13;
      }

      v51 = *(v9 + 32);
      v51(v11, v7, v8);
      v51(v62, v11, v8);
      sub_227664AE0();
    }
  }

  else
  {
    sub_227664AE0();
  }

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_2270762C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v3 = a3();
  v5 = v4;
  if (v3 == sub_227666000() && v5 == v6)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_22766D190();
  }

  return v7 & 1;
}

uint64_t sub_227076360(void (***a1)(char *, uint64_t, uint64_t))
{
  v3 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v4 = *v3;
  v5 = v3[1];
  v6 = *(v3 + 16);
  v7 = v3[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8598, &unk_227677B90);
  v8 = swift_allocObject();
  v9 = v4;
  v10 = v5;

  sub_22766A070();
  *(v8 + 16) = v9;
  *(v8 + 24) = v10;
  *(v8 + 32) = v6;
  *(v8 + 40) = v7;
  v11 = sub_2272322B8(100);
  if (v1)
  {
    swift_setDeallocating();

    v12 = qword_2813B2078;
    v13 = sub_22766A100();
    (*(*(v13 - 8) + 8))(v8 + v12, v13);
    swift_deallocClassInstance();
  }

  else
  {
    v14 = v11;
    swift_setDeallocating();

    v15 = qword_2813B2078;
    v16 = sub_22766A100();
    (*(*(v16 - 8) + 8))(v8 + v15, v16);
    swift_deallocClassInstance();
    v8 = sub_22707488C(v14, a1);
  }

  return v8;
}

uint64_t sub_2270765A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = __swift_project_boxed_opaque_existential_0(a3, a3[3]);
  v8 = *v7;
  v9 = v7[1];
  v10 = *(v7 + 16);
  v11 = v7[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85E8, &qword_227677740);
  v12 = swift_allocObject();
  v13 = v8;
  v14 = v9;

  sub_22766A070();
  *(v12 + 16) = v13;
  *(v12 + 24) = v14;
  *(v12 + 32) = v10;
  *(v12 + 40) = v11;
  swift_getKeyPath();
  v35[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  v35[0] = a1;
  v35[1] = a2;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v15 = sub_22766C820();
  sub_226E93170(v35, v33, &unk_27D7BC990, &qword_227670A30);
  v16 = v34;
  if (v34)
  {
    v17 = __swift_project_boxed_opaque_existential_0(v33, v34);
    v18 = *(v16 - 8);
    v19 = MEMORY[0x28223BE20](v17);
    v21 = v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v18 + 16))(v21, v19);
    v22 = sub_22766D170();
    (*(v18 + 8))(v21, v16);
    __swift_destroy_boxed_opaque_existential_0(v33);
  }

  else
  {
    v22 = 0;
  }

  v23 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v24 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE6B0 &unk_227671120))];

  sub_226E97D1C(v35, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v25 = v24;
  v26 = sub_22766A080();
  v28 = v27;
  MEMORY[0x22AA985C0]();
  if (*((*v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v26(v35, 0);
  swift_endAccess();

  v29 = MEMORY[0x22AA99A00]();
  sub_2275444CC(a4);
  objc_autoreleasePoolPop(v29);
  swift_setDeallocating();

  v30 = qword_2813B2078;
  v31 = sub_22766A100();
  (*(*(v31 - 8) + 8))(v12 + v30, v31);
  return swift_deallocClassInstance();
}

uint64_t sub_2270769D4(void (***a1)(char *, uint64_t, uint64_t), uint64_t a2)
{
  v74 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v70 - v7;
  v9 = a1[3];
  v73 = a1;
  v10 = __swift_project_boxed_opaque_existential_0(a1, v9);
  v11 = *v10;
  v12 = v10[1];
  v13 = *(v10 + 16);
  v14 = v10[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9698, &qword_2276776A0);
  v15 = swift_allocObject();
  v16 = v11;
  v17 = v12;

  sub_22766A070();
  *(v15 + 16) = v16;
  *(v15 + 24) = v17;
  *(v15 + 32) = v13;
  *(v15 + 40) = v14;
  swift_getKeyPath();
  v18 = sub_227662750();
  v19 = *(v18 - 8);
  (*(v19 + 16))(v8, v74, v18);
  (*(v19 + 56))(v8, 0, 1, v18);
  sub_226E93170(v8, v5, &qword_27D7B9690, qword_227670B50);
  if ((*(v19 + 48))(v5, 1, v18) == 1)
  {
    sub_226E97D1C(v5, &qword_27D7B9690, qword_227670B50);
    v77 = 0u;
    v78 = 0u;
  }

  else
  {
    *(&v78 + 1) = v18;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v77);
    (*(v19 + 32))(boxed_opaque_existential_0, v5, v18);
  }

  v21 = sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v74 = v21;
  v22 = sub_22766C820();
  sub_226E93170(&v77, v75, &unk_27D7BC990, &qword_227670A30);
  v23 = v76;
  if (v76)
  {
    v24 = __swift_project_boxed_opaque_existential_0(v75, v76);
    v25 = *(v23 - 8);
    v26 = MEMORY[0x28223BE20](v24);
    v28 = &v70 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v25 + 16))(v28, v26);
    v29 = sub_22766D170();
    (*(v25 + 8))(v28, v23);
    __swift_destroy_boxed_opaque_existential_0(v75);
  }

  else
  {
    v29 = 0;
  }

  v30 = objc_opt_self();
  v31 = [v30 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v32 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B96A8 &unk_2276776D0))];

  sub_226E97D1C(v8, &qword_27D7B9690, qword_227670B50);
  sub_226E97D1C(&v77, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v33 = v32;
  v34 = sub_22766A080();
  v36 = v35;
  MEMORY[0x22AA985C0]();
  if (*((*v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v34(&v77, 0);
  swift_endAccess();

  KeyPath = swift_getKeyPath();
  v38 = v79;
  sub_2273FC970(KeyPath);
  if (v38)
  {

    swift_setDeallocating();

    v40 = qword_2813B2078;
    v41 = sub_22766A100();
    (*(*(v41 - 8) + 8))(v15 + v40, v41);
    swift_deallocClassInstance();
  }

  else
  {
    v79 = v30;
    v42 = sub_226F3E6A8(v39);

    swift_setDeallocating();

    v43 = qword_2813B2078;
    v44 = sub_22766A100();
    v45 = *(v44 - 8);
    v71 = *(v45 + 8);
    v72 = v44;
    v70 = v45 + 8;
    v71(v15 + v43);
    swift_deallocClassInstance();
    v46 = __swift_project_boxed_opaque_existential_0(v73, v73[3]);
    v47 = *v46;
    v48 = v46[1];
    v49 = *(v46 + 16);
    v50 = v46[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8598, &unk_227677B90);
    v51 = swift_allocObject();
    v52 = v47;
    v53 = v48;

    sub_22766A070();
    *(v51 + 16) = v52;
    *(v51 + 24) = v53;
    *(v51 + 32) = v49;
    *(v51 + 40) = v50;
    swift_getKeyPath();
    sub_227230638(v42);
    v55 = v54;

    *(&v78 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8588, &unk_227672CD0);
    *&v77 = v55;

    v56 = sub_22766C820();
    sub_226E93170(&v77, v75, &unk_27D7BC990, &qword_227670A30);
    v57 = v76;
    if (v76)
    {
      v58 = __swift_project_boxed_opaque_existential_0(v75, v76);
      v59 = *(v57 - 8);
      v60 = MEMORY[0x28223BE20](v58);
      v62 = &v70 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v59 + 16))(v62, v60);
      v63 = sub_22766D170();
      (*(v59 + 8))(v62, v57);
      __swift_destroy_boxed_opaque_existential_0(v75);
    }

    else
    {
      v63 = 0;
    }

    v64 = [v79 expressionForConstantValue_];
    swift_unknownObjectRelease();
    [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85A0 &qword_22767FF20))];

    sub_226E97D1C(&v77, &unk_27D7BC990, &qword_227670A30);
    swift_beginAccess();
    v65 = sub_22766A080();
    v67 = v66;
    MEMORY[0x22AA985C0]();
    if (*((*v67 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v67 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_22766C360();
    }

    sub_22766C3A0();
    v65(&v77, 0);
    swift_endAccess();

    v69 = sub_2272322B8(100);
    swift_setDeallocating();

    (v71)(v51 + qword_2813B2078, v72);
    swift_deallocClassInstance();
    v40 = sub_22707488C(v69, v73);
  }

  return v40;
}

id sub_227077428(uint64_t a1, uint64_t a2, SEL *a3)
{
  v41 = a3;
  v43 = a2;
  v3 = 0;
  v4 = *(a1 + 16);
  v5 = MEMORY[0x277D84F90];
  v48 = MEMORY[0x277D84F90];
  v6 = a1 + 48;
  v42 = a1 + 48;
LABEL_2:
  v7 = (v6 + 24 * v3);
  while (v4 != v3)
  {
    if (v3 >= v4)
    {
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      if (!sub_22766CD20())
      {
        goto LABEL_25;
      }

LABEL_21:
      sub_226E99364(0, &qword_281398B58, 0x277CCAC30);
      v37 = sub_22766C2B0();

      v38 = [objc_opt_self() *v41];

      return v38;
    }

    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      goto LABEL_23;
    }

    v10 = *v7;
    v7 += 24;
    v9 = v10;
    ++v3;
    if (v10)
    {
      if (v9 == 1)
      {
        swift_getKeyPath();
        v11 = sub_227664570();
        v47 = MEMORY[0x277D83B88];
        v46[0] = v11;
        sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

        v12 = sub_22766C820();
        sub_226E93170(v46, v44, &unk_27D7BC990, &qword_227670A30);
        v13 = v45;
        if (v45)
        {
          v14 = __swift_project_boxed_opaque_existential_0(v44, v45);
          v15 = *(v13 - 8);
          v16 = MEMORY[0x28223BE20](v14);
          v18 = v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v15 + 16))(v18, v16);
          v19 = sub_22766D170();
          (*(v15 + 8))(v18, v13);
          v6 = v42;
          __swift_destroy_boxed_opaque_existential_0(v44);
        }

        else
        {
          v19 = 0;
        }

        v32 = [objc_opt_self() expressionForConstantValue_];
        swift_unknownObjectRelease();
        v33 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE6B0, &unk_227671120));
        [v33 initWithLeftExpression:v12 rightExpression:v32 modifier:0 type:v43 options:0];

        v34 = sub_226E97D1C(v46, &unk_27D7BC990, &qword_227670A30);
      }

      else
      {
        v20 = *(v7 - 5);
        v21 = *(v7 - 4);
        KeyPath = swift_getKeyPath();
        v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
        v46[0] = v20;
        v46[1] = v21;
        sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);
        sub_226F04958(v20, v21, 2);
        sub_226F04958(v20, v21, 2);

        v23 = sub_22766C820();
        sub_226E93170(v46, v44, &unk_27D7BC990, &qword_227670A30);
        v24 = v45;
        if (v45)
        {
          v25 = __swift_project_boxed_opaque_existential_0(v44, v45);
          v40[0] = v40;
          v40[1] = KeyPath;
          v26 = v23;
          v27 = *(v24 - 8);
          v28 = MEMORY[0x28223BE20](v25);
          v30 = v40 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v27 + 16))(v30, v28);
          v31 = sub_22766D170();
          (*(v27 + 8))(v30, v24);
          v23 = v26;
          __swift_destroy_boxed_opaque_existential_0(v44);
        }

        else
        {
          v31 = 0;
        }

        v35 = [objc_opt_self() expressionForConstantValue_];
        swift_unknownObjectRelease();
        v36 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE6B0, &unk_227671120));
        [v36 initWithLeftExpression:v23 rightExpression:v35 modifier:0 type:v43 options:0];
        sub_226EE28B0(v20, v21, 2);

        v34 = sub_226E97D1C(v46, &unk_27D7BC990, &qword_227670A30);
        v6 = v42;
      }

      MEMORY[0x22AA985C0](v34);
      if (*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_22766C360();
      }

      sub_22766C3A0();
      v5 = v48;
      v3 = v8;
      goto LABEL_2;
    }
  }

  if (v5 >> 62)
  {
    goto LABEL_24;
  }

  if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_21;
  }

LABEL_25:

  return 0;
}

id sub_2270779EC(uint64_t a1, uint64_t a2, SEL *a3)
{
  v39 = a3;
  v42 = a2;
  v3 = MEMORY[0x277D84F90];
  v48 = MEMORY[0x277D84F90];
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = (a1 + 48);
    while (1)
    {
      v6 = *(v5 - 2);
      if (!*v5)
      {
        break;
      }

      if (*v5 == 1)
      {
        swift_getKeyPath();
        v7 = sub_227664C10();
        v9 = v8;
        v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
        v45 = v7;
        v46 = v9;
        sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

        v10 = sub_22766C820();
        sub_226E93170(&v45, v43, &unk_27D7BC990, &qword_227670A30);
        v11 = v44;
        if (v44)
        {
LABEL_8:
          v15 = __swift_project_boxed_opaque_existential_0(v43, v44);
          v16 = *(v11 - 8);
          v17 = MEMORY[0x28223BE20](v15);
          v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v16 + 16))(v19, v17);
          v20 = sub_22766D170();
          (*(v16 + 8))(v19, v11);
          __swift_destroy_boxed_opaque_existential_0(v43);
        }

        else
        {
          v20 = 0;
        }

        goto LABEL_13;
      }

      v21 = *(v5 - 1);
      swift_getKeyPath();
      v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
      v45 = v6;
      v46 = v21;
      sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);
      sub_226F04958(v6, v21, 2);
      sub_226F04958(v6, v21, 2);

      v22 = sub_22766C820();
      sub_226E93170(&v45, v43, &unk_27D7BC990, &qword_227670A30);
      v23 = v44;
      if (v44)
      {
        v24 = __swift_project_boxed_opaque_existential_0(v43, v44);
        v40 = &v38;
        v41 = v22;
        v25 = *(v23 - 8);
        v26 = MEMORY[0x28223BE20](v24);
        v28 = &v38 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v25 + 16))(v28, v26);
        v29 = sub_22766D170();
        (*(v25 + 8))(v28, v23);
        v22 = v41;
        __swift_destroy_boxed_opaque_existential_0(v43);
      }

      else
      {
        v29 = 0;
      }

      v32 = [objc_opt_self() expressionForConstantValue_];
      swift_unknownObjectRelease();
      v33 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB900, &unk_22767CDD0));
      [v33 initWithLeftExpression:v22 rightExpression:v32 modifier:0 type:v42 options:0];

      sub_226EE28B0(v6, v21, 2);

LABEL_16:
      v34 = sub_226E97D1C(&v45, &unk_27D7BC990, &qword_227670A30);
      MEMORY[0x22AA985C0](v34);
      if (*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_22766C360();
      }

      v5 += 24;
      sub_22766C3A0();
      if (!--v4)
      {
        v3 = v48;
        goto LABEL_20;
      }
    }

    swift_getKeyPath();
    v12 = sub_227663FB0();
    v14 = v13;
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
    v45 = v12;
    v46 = v14;
    sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

    v10 = sub_22766C820();
    sub_226E93170(&v45, v43, &unk_27D7BC990, &qword_227670A30);
    v11 = v44;
    if (v44)
    {
      goto LABEL_8;
    }

    v20 = 0;
LABEL_13:
    v30 = [objc_opt_self() expressionForConstantValue_];
    swift_unknownObjectRelease();
    v31 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB900, &unk_22767CDD0));
    [v31 initWithLeftExpression:v10 rightExpression:v30 modifier:0 type:v42 options:0];

    goto LABEL_16;
  }

LABEL_20:
  if (v3 >> 62)
  {
    if (sub_22766CD20())
    {
      goto LABEL_22;
    }

LABEL_24:

    return 0;
  }

  if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_24;
  }

LABEL_22:
  sub_226E99364(0, &qword_281398B58, 0x277CCAC30);
  v35 = sub_22766C2B0();

  v36 = [objc_opt_self() *v39];

  return v36;
}

unint64_t *sub_227078108(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_22707A4E0(v7, a2, a3, a4);
    v9 = v8;
    swift_bridgeObjectRelease_n();

    return v9;
  }

  return result;
}

void sub_2270781A4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_22766B390();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A6C0();
  sub_22766B370();
  (*(v7 + 8))(v9, v6);
  v10 = a3[3];
  v78 = a3;
  v11 = __swift_project_boxed_opaque_existential_0(a3, v10);
  v12 = *v11;
  v13 = v11[1];
  v14 = *(v11 + 16);
  v15 = v11[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85E8, &qword_227677740);
  v16 = swift_allocObject();
  v17 = v12;
  v18 = v13;

  sub_22766A070();
  v73 = v18;
  v74 = v17;
  *(v16 + 16) = v17;
  *(v16 + 24) = v18;
  LODWORD(v87) = v14;
  *(v16 + 32) = v14;
  *(v16 + 40) = v15;
  swift_getKeyPath();
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  v86 = v76;
  v79 = a1;
  v84 = a1;
  v85 = a2;
  v19 = sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);
  v80 = a2;

  v77 = v19;
  v20 = sub_22766C820();
  sub_226E93170(&v84, v82, &unk_27D7BC990, &qword_227670A30);
  v21 = v83;
  if (v83)
  {
    v22 = __swift_project_boxed_opaque_existential_0(v82, v83);
    v23 = *(v21 - 8);
    v24 = MEMORY[0x28223BE20](v22);
    v26 = &v72 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v23 + 16))(v26, v24);
    v27 = sub_22766D170();
    (*(v23 + 8))(v26, v21);
    __swift_destroy_boxed_opaque_existential_0(v82);
  }

  else
  {
    v27 = 0;
  }

  v75 = objc_opt_self();
  v28 = [v75 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v29 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE6B0 &unk_227671120))];

  sub_226E97D1C(&v84, &unk_27D7BC990, &qword_227670A30);
  v30 = qword_2813B2078;
  swift_beginAccess();
  v31 = v29;
  v32 = sub_22766A080();
  v34 = v33;
  MEMORY[0x22AA985C0]();
  if (*((*v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v32(&v84, 0);
  swift_endAccess();

  v35 = sub_227542468(v16 + v30, v87, v15);
  if (v35)
  {
    if (v35 != 1)
    {
      swift_willThrow();
      goto LABEL_24;
    }
  }

  else
  {
    v54 = v81;
    v55 = sub_227284664(0);
    if (v54)
    {
      goto LABEL_24;
    }

    v56 = v55;
    [v55 setResultType_];
    sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
    v57 = sub_22766C9E0();
    v81 = 0;
    v70 = sub_226EDAB24(v57);

    sub_226EDAB78(v70, v73);
  }

  v36 = __swift_project_boxed_opaque_existential_0(v78, v78[3]);
  v37 = *v36;
  v38 = v36[1];
  v39 = *(v36 + 16);
  v40 = v36[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85D8, qword_227687220);
  v41 = swift_allocObject();
  v42 = v37;
  v43 = v38;

  sub_22766A070();
  v78 = v42;
  *(v41 + 16) = v42;
  *(v41 + 24) = v43;
  v74 = v43;
  *(v41 + 32) = v39;
  *(v41 + 40) = v40;
  swift_getKeyPath();
  v86 = v76;
  v84 = v79;
  v85 = v80;

  v44 = sub_22766C820();
  sub_226E93170(&v84, v82, &unk_27D7BC990, &qword_227670A30);
  v45 = v83;
  if (v83)
  {
    v46 = __swift_project_boxed_opaque_existential_0(v82, v83);
    v87 = &v72;
    v47 = v40;
    v48 = v39;
    v49 = *(v45 - 8);
    v50 = MEMORY[0x28223BE20](v46);
    v52 = &v72 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v49 + 16))(v52, v50);
    v53 = sub_22766D170();
    (*(v49 + 8))(v52, v45);
    v39 = v48;
    v40 = v47;
    __swift_destroy_boxed_opaque_existential_0(v82);
  }

  else
  {
    v53 = 0;
  }

  v58 = [v75 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v59 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85E0 qword_227677890))];

  sub_226E97D1C(&v84, &unk_27D7BC990, &qword_227670A30);
  v60 = qword_2813B2078;
  swift_beginAccess();
  v61 = v59;
  v62 = sub_22766A080();
  v64 = v63;
  MEMORY[0x22AA985C0]();
  if (*((*v64 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v64 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v87 = *((*v64 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v62(&v84, 0);
  swift_endAccess();

  v65 = sub_227542420(v41 + v60, v39, v40);
  if (v65)
  {
    if (v65 != 1)
    {
      swift_willThrow();
    }
  }

  else
  {
    v66 = v81;
    v67 = sub_227284A84(0);
    if (!v66)
    {
      v68 = v67;
      [v67 setResultType_];
      sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
      v69 = sub_22766C9E0();
      v71 = sub_226EDAB24(v69);

      sub_226EDAB78(v71, v74);

      return;
    }
  }

LABEL_24:
}

void sub_227078AE0(uint64_t a1, void *a2)
{
  v83 = a2;
  v91 = sub_2276639B0();
  v3 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v5 = v80 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v89[0] = MEMORY[0x277D84F90];
    sub_226F1EF90();
    v7 = v89[0];
    v9 = *(v3 + 16);
    v8 = v3 + 16;
    v10 = a1 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
    v85 = *(v8 + 56);
    v86 = v9;
    v84 = (v8 - 8);
    do
    {
      v11 = v91;
      v12 = v8;
      v86(v5, v10, v91);
      v13 = sub_227663910();
      v15 = v14;
      (*v84)(v5, v11);
      v89[0] = v7;
      v16 = *(v7 + 16);
      v17 = v7;
      if (v16 >= *(v7 + 24) >> 1)
      {
        sub_226F1EF90();
        v17 = v89[0];
      }

      *(v17 + 16) = v16 + 1;
      v18 = v17 + 16 * v16;
      *(v18 + 32) = v13;
      *(v18 + 40) = v15;
      v10 += v85;
      --v6;
      v7 = v17;
      v8 = v12;
    }

    while (v6);
  }

  v19 = __swift_project_boxed_opaque_existential_0(v83, v83[3]);
  v20 = *v19;
  v21 = v19[1];
  v22 = *(v19 + 16);
  v23 = v19[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8598, &unk_227677B90);
  v24 = swift_allocObject();
  v25 = v20;
  v26 = v21;

  sub_22766A070();
  v86 = v25;
  *(v24 + 16) = v25;
  *(v24 + 24) = v26;
  v84 = v26;
  LODWORD(v85) = v22;
  *(v24 + 32) = v22;
  *(v24 + 40) = v23;
  swift_getKeyPath();
  v91 = v7;
  v27 = sub_227073F2C(v7);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8470, qword_227677CA0);
  v90 = v81;
  v89[0] = v27;
  v28 = sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v80[1] = v28;
  v29 = sub_22766C820();
  sub_226E93170(v89, v87, &unk_27D7BC990, &qword_227670A30);
  v30 = v88;
  if (v88)
  {
    v31 = __swift_project_boxed_opaque_existential_0(v87, v88);
    v32 = *(v30 - 8);
    v33 = MEMORY[0x28223BE20](v31);
    v35 = v80 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v32 + 16))(v35, v33);
    v36 = sub_22766D170();
    (*(v32 + 8))(v35, v30);
    __swift_destroy_boxed_opaque_existential_0(v87);
  }

  else
  {
    v36 = 0;
  }

  v80[0] = objc_opt_self();
  v37 = [v80[0] expressionForConstantValue_];
  swift_unknownObjectRelease();
  [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85A0 &qword_22767FF20))];

  sub_226E97D1C(v89, &unk_27D7BC990, &qword_227670A30);
  v38 = qword_2813B2078;
  swift_beginAccess();
  v39 = sub_22766A080();
  v41 = v40;
  MEMORY[0x22AA985C0]();
  if (*((*v41 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v41 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v39(v89, 0);
  swift_endAccess();

  v42 = sub_2275424F8(v24 + v38, v85, v23);
  if (v42)
  {
    v43 = v91;
    v44 = v86;
    if (v42 == 1)
    {

      goto LABEL_14;
    }

    swift_willThrow();
LABEL_19:

    swift_setDeallocating();
    v66 = qword_2813B2078;
    v67 = sub_22766A100();
    (*(*(v67 - 8) + 8))(v24 + v66, v67);
    swift_deallocClassInstance();
    return;
  }

  v62 = v82;
  v63 = sub_227284694(0);
  v43 = v91;
  v44 = v86;
  if (v62)
  {
    goto LABEL_19;
  }

  v64 = v63;
  [v63 setResultType_];
  sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
  v65 = sub_22766C9E0();
  v82 = 0;
  v78 = sub_226EDAB24(v65);

  sub_226EDAB78(v78, v84);

LABEL_14:
  v45 = __swift_project_boxed_opaque_existential_0(v83, v83[3]);
  v46 = *v45;
  v47 = v45[1];
  v48 = *(v45 + 16);
  v49 = v45[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9698, &qword_2276776A0);
  v50 = swift_allocObject();
  v51 = v46;
  v52 = v47;

  sub_22766A070();
  v85 = v52;
  v86 = v51;
  *(v50 + 16) = v51;
  *(v50 + 24) = v52;
  LODWORD(v91) = v48;
  *(v50 + 32) = v48;
  *(v50 + 40) = v49;
  swift_getKeyPath();
  v53 = sub_227073F2C(v43);

  v90 = v81;
  v89[0] = v53;

  v54 = sub_22766C820();
  sub_226E93170(v89, v87, &unk_27D7BC990, &qword_227670A30);
  v55 = v88;
  if (v88)
  {
    v56 = __swift_project_boxed_opaque_existential_0(v87, v88);
    v57 = *(v55 - 8);
    v58 = MEMORY[0x28223BE20](v56);
    v60 = v80 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v57 + 16))(v60, v58);
    v61 = sub_22766D170();
    (*(v57 + 8))(v60, v55);
    __swift_destroy_boxed_opaque_existential_0(v87);
  }

  else
  {
    v61 = 0;
  }

  v68 = [v80[0] expressionForConstantValue_];
  swift_unknownObjectRelease();
  [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B96A8 &unk_2276776D0))];

  sub_226E97D1C(v89, &unk_27D7BC990, &qword_227670A30);
  v69 = qword_2813B2078;
  swift_beginAccess();
  v70 = sub_22766A080();
  v72 = v71;
  MEMORY[0x22AA985C0]();
  if (*((*v72 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v72 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v70(v89, 0);
  swift_endAccess();

  v73 = sub_2275424B0(v50 + v69, v91, v49);
  if (v73)
  {
    if (v73 != 1)
    {
      swift_willThrow();
    }
  }

  else
  {
    v74 = v82;
    v75 = sub_22728467C(0);
    if (!v74)
    {
      v76 = v75;
      [v75 setResultType_];
      sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
      v77 = sub_22766C9E0();
      v79 = sub_226EDAB24(v77);

      sub_226EDAB78(v79, v85);

      return;
    }
  }
}

void sub_227079538(uint64_t a1, void *a2)
{
  v5 = sub_22766B390();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  sub_227556AA8(a1, v9[1], *(v9 + 16), v9[3]);
  if (!v2)
  {
    v17[1] = 0;
    sub_22766A6C0();

    v10 = sub_22766B380();
    v11 = sub_22766C8B0();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v18 = v13;
      *v12 = 141558274;
      *(v12 + 4) = 1752392040;
      *(v12 + 12) = 2080;
      sub_227663180();
      sub_22707FCA0(&qword_28139BD58, MEMORY[0x277D4FCA8], MEMORY[0x277D4FCB0]);
      v14 = sub_22766C610();
      v16 = sub_226E97AE8(v14, v15, &v18);

      *(v12 + 14) = v16;
      _os_log_impl(&dword_226E8E000, v10, v11, "Inserted %{mask.hash}s", v12, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x22AA9A450](v13, -1, -1);
      MEMORY[0x22AA9A450](v12, -1, -1);
    }

    (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_2270797E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_227664AE0();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_22707984C(uint64_t a1, void *a2)
{
  v3 = v2;
  v107 = a2;
  v108 = sub_2276624A0();
  v5 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v111 = &v95 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v99 = &v95 - v8;
  v9 = sub_22766B390();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v95 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A6C0();
  sub_22766B370();
  (*(v10 + 8))(v12, v9);
  v13 = a1 + 56;
  v14 = 1 << *(a1 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(a1 + 56);
  v17 = (v14 + 63) >> 6;
  v98 = v5 + 16;
  v97 = v5 + 32;
  v101 = v5;
  v100 = (v5 + 8);
  v102 = a1;

  v18 = 0;
  v96 = a1 + 56;
  v95 = v17;
  while (v16)
  {
    v109 = v3;
LABEL_12:
    v23 = v101;
    v24 = v99;
    v25 = v108;
    (*(v101 + 16))(v99, *(v102 + 48) + *(v101 + 72) * (__clz(__rbit64(v16)) | (v18 << 6)), v108);
    (*(v23 + 32))(v111, v24, v25);
    v26 = __swift_project_boxed_opaque_existential_0(v107, v107[3]);
    v27 = *v26;
    v28 = v26[1];
    v29 = *(v26 + 16);
    v30 = v26[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8580, &qword_2276777B0);
    v31 = swift_allocObject();
    v32 = v27;
    v33 = v28;

    sub_22766A070();
    v112 = v33;
    v113 = v32;
    *(v31 + 16) = v32;
    *(v31 + 24) = v33;
    v106 = v29;
    *(v31 + 32) = v29;
    v110 = v31;
    v119 = v30;
    *(v31 + 40) = v30;
    swift_getKeyPath();
    v34 = sub_227662390();
    v36 = v35;
    v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
    v118 = v105;
    v116 = v34;
    v117 = v36;
    v37 = sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

    v104 = v37;
    v38 = sub_22766C820();
    sub_226E93170(&v116, v114, &unk_27D7BC990, &qword_227670A30);
    v39 = v115;
    if (v115)
    {
      v40 = __swift_project_boxed_opaque_existential_0(v114, v115);
      v41 = *(v39 - 8);
      v42 = MEMORY[0x28223BE20](v40);
      v44 = &v95 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v41 + 16))(v44, v42);
      v45 = sub_22766D170();
      (*(v41 + 8))(v44, v39);
      __swift_destroy_boxed_opaque_existential_0(v114);
    }

    else
    {
      v45 = 0;
    }

    v103 = objc_opt_self();
    v46 = [v103 expressionForConstantValue_];
    swift_unknownObjectRelease();
    v47 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8590 &unk_2276777E0))];

    sub_226E97D1C(&v116, &unk_27D7BC990, &qword_227670A30);
    v48 = qword_2813B2078;
    v49 = v110;
    swift_beginAccess();
    v50 = v47;
    v51 = sub_22766A080();
    v53 = v52;
    MEMORY[0x22AA985C0]();
    if (*((*v53 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v53 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_22766C360();
    }

    sub_22766C3A0();
    v51(&v116, 0);
    swift_endAccess();

    v54 = sub_2275425D0(v49 + v48, v106, v119);
    if (v54)
    {
      if (v54 != 1)
      {
LABEL_31:
        swift_willThrow();
LABEL_32:
        v92 = v113;
        (*v100)(v111, v108);

        swift_setDeallocating();
        v93 = qword_2813B2078;
        v94 = sub_22766A100();
        (*(*(v94 - 8) + 8))(v49 + v93, v94);
        swift_deallocClassInstance();
        return;
      }
    }

    else
    {
      v55 = v109;
      v56 = sub_2272846AC(0);
      if (v55)
      {
        goto LABEL_32;
      }

      v57 = v56;
      [v56 setResultType_];
      sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
      v58 = sub_22766C9E0();
      v109 = 0;
      v59 = sub_226EDAB24(v58);

      sub_226EDAB78(v59, v112);
    }

    v60 = __swift_project_boxed_opaque_existential_0(v107, v107[3]);
    v61 = *v60;
    v62 = v60[1];
    v63 = *(v60 + 16);
    v64 = v60[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BE600, &qword_2276711C8);
    v65 = swift_allocObject();
    v66 = v61;
    v67 = v62;
    v49 = v65;
    v68 = v67;

    sub_22766A070();
    v112 = v68;
    v113 = v66;
    *(v49 + 16) = v66;
    *(v49 + 24) = v68;
    v106 = v63;
    *(v49 + 32) = v63;
    v119 = v64;
    *(v49 + 40) = v64;
    swift_getKeyPath();
    v69 = sub_227662390();
    v118 = v105;
    v116 = v69;
    v117 = v70;

    v71 = sub_22766C820();
    sub_226E93170(&v116, v114, &unk_27D7BC990, &qword_227670A30);
    v72 = v115;
    if (v115)
    {
      v73 = __swift_project_boxed_opaque_existential_0(v114, v115);
      v110 = v49;
      v74 = *(v72 - 8);
      v75 = MEMORY[0x28223BE20](v73);
      v77 = &v95 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v74 + 16))(v77, v75);
      v78 = sub_22766D170();
      (*(v74 + 8))(v77, v72);
      v49 = v110;
      __swift_destroy_boxed_opaque_existential_0(v114);
    }

    else
    {
      v78 = 0;
    }

    v79 = [v103 expressionForConstantValue_];
    swift_unknownObjectRelease();
    v80 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BE610 &qword_2276711F8))];

    sub_226E97D1C(&v116, &unk_27D7BC990, &qword_227670A30);
    v81 = qword_2813B2078;
    swift_beginAccess();
    v82 = v80;
    v83 = sub_22766A080();
    v85 = v84;
    MEMORY[0x22AA985C0]();
    if (*((*v85 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v85 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_22766C360();
    }

    sub_22766C3A0();
    v83(&v116, 0);
    swift_endAccess();

    v86 = sub_227542588(v49 + v81, v106, v119);
    if (v86)
    {
      v3 = v109;
      v19 = v112;
      if (v86 != 1)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v87 = v109;
      v88 = sub_2272846C4(0);
      v3 = v87;
      if (v87)
      {
        goto LABEL_32;
      }

      v89 = v88;
      [v88 setResultType_];
      sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
      v90 = sub_22766C9E0();
      v91 = sub_226EDAB24(v90);

      v19 = v112;
      sub_226EDAB78(v91, v112);
    }

    v16 &= v16 - 1;
    (*v100)(v111, v108);

    swift_setDeallocating();
    v20 = qword_2813B2078;
    v21 = sub_22766A100();
    (*(*(v21 - 8) + 8))(v49 + v20, v21);
    swift_deallocClassInstance();
    v13 = v96;
    v17 = v95;
  }

  while (1)
  {
    v22 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v22 >= v17)
    {

      return;
    }

    v16 = *(v13 + 8 * v22);
    ++v18;
    if (v16)
    {
      v109 = v3;
      v18 = v22;
      goto LABEL_12;
    }
  }

  __break(1u);
}

void sub_22707A4E0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a2;
  v40 = a1;
  v6 = sub_227663480();
  v9.n128_f64[0] = MEMORY[0x28223BE20](v6);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = 0;
  v48 = a3;
  v15 = *(a3 + 56);
  v14 = a3 + 56;
  v13 = v15;
  v16 = 1 << *(v14 - 24);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & v13;
  v19 = (v16 + 63) >> 6;
  v41 = 0;
  v42 = v8 + 16;
  v49 = a4 + 56;
  v43 = v8;
  v44 = (v8 + 8);
  v45 = v11;
  v46 = v7;
  while (v18)
  {
    v20 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
LABEL_13:
    v23 = v20 | (v12 << 6);
    v24 = *(v48 + 48);
    v25 = *(v43 + 72);
    v47 = v23;
    (*(v43 + 16))(v11, v24 + v25 * v23, v6, v9);
    v26 = sub_227663410();
    v28 = v27;
    if (*(a4 + 16) && (v29 = v26, sub_22766D370(), sub_22766C100(), v30 = sub_22766D3F0(), v31 = -1 << *(a4 + 32), v32 = v30 & ~v31, ((*(v49 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) != 0))
    {
      v33 = ~v31;
      while (1)
      {
        v34 = (*(a4 + 48) + 16 * v32);
        v35 = *v34 == v29 && v34[1] == v28;
        if (v35 || (sub_22766D190() & 1) != 0)
        {
          break;
        }

        v32 = (v32 + 1) & v33;
        if (((*(v49 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      v11 = v45;
      v6 = v46;
      (*v44)(v45, v46);
      *(v40 + ((v47 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v47;
      if (__OFADD__(v41++, 1))
      {
        __break(1u);
LABEL_26:
        v37 = v48;

        sub_22726AD50(v40, v39, v41, v37);
        return;
      }
    }

    else
    {
LABEL_5:

      v11 = v45;
      v6 = v46;
      (*v44)(v45, v46);
    }
  }

  v21 = v12;
  while (1)
  {
    v12 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v12 >= v19)
    {
      goto LABEL_26;
    }

    v22 = *(v14 + 8 * v12);
    ++v21;
    if (v22)
    {
      v20 = __clz(__rbit64(v22));
      v18 = (v22 - 1) & v22;
      goto LABEL_13;
    }
  }

  __break(1u);
}

uint64_t sub_22707A7E4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v53 = *MEMORY[0x277D85DE8];
  v6 = sub_227663480();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v51 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v8) = *(a1 + 32);
  v9 = v8 & 0x3F;
  v10 = ((1 << v8) + 63) >> 6;
  v11 = 8 * v10;

  v52 = a2;
  if (v9 > 0xD)
  {
    goto LABEL_30;
  }

  while (1)
  {
    v41 = v10;
    v42 = v3;
    v40 = &v40;
    MEMORY[0x28223BE20](v12);
    v43 = &v40 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v43, v11);
    v10 = 0;
    v13 = a1 + 56;
    v14 = 1 << *(a1 + 32);
    v15 = v14 < 64 ? ~(-1 << v14) : -1;
    v16 = v15 & *(a1 + 56);
    v11 = (v14 + 63) >> 6;
    v17 = v7 + 16;
    v18 = v7;
    v7 = a2 + 56;
    v48 = v17;
    v49 = v18;
    v44 = 0;
    v45 = (v18 + 8);
    v46 = v6;
    v47 = a1;
    while (v16)
    {
      v19 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_14:
      v22 = v19 | (v10 << 6);
      v23 = *(a1 + 48);
      v24 = *(v49 + 72);
      v50 = v22;
      (*(v49 + 16))(v51, v23 + v24 * v22, v6);
      v25 = sub_227663410();
      v27 = v26;
      if (*(v52 + 16) && (v28 = v25, sub_22766D370(), sub_22766C100(), v29 = sub_22766D3F0(), v30 = v52, v31 = -1 << *(v52 + 32), v32 = v29 & ~v31, ((*(v7 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) != 0))
      {
        v3 = ~v31;
        while (1)
        {
          v33 = (*(v30 + 48) + 16 * v32);
          v34 = *v33 == v28 && v33[1] == v27;
          if (v34 || (sub_22766D190() & 1) != 0)
          {
            break;
          }

          v32 = (v32 + 1) & v3;
          v30 = v52;
          if (((*(v7 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
          {
            goto LABEL_6;
          }
        }

        v6 = v46;
        (*v45)(v51, v46);
        *&v43[(v50 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v50;
        v35 = __OFADD__(v44++, 1);
        a1 = v47;
        if (v35)
        {
          __break(1u);
LABEL_27:
          v36 = sub_22726AD50(v43, v41, v44, a1);

          return v36;
        }
      }

      else
      {
LABEL_6:

        v6 = v46;
        (*v45)(v51, v46);
        a1 = v47;
      }
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v10 >= v11)
      {
        goto LABEL_27;
      }

      v21 = *(v13 + 8 * v10);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v16 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_30:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    a2 = v52;
  }

  v38 = swift_slowAlloc();
  v39 = v52;

  v36 = sub_227078108(v38, v10, a1, v39);

  MEMORY[0x22AA9A450](v38, -1, -1);

  return v36;
}

char *sub_22707AC34(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v78[5] = a3;
  v7 = sub_227664F30();
  v72 = *(v7 - 8);
  v73 = v7;
  MEMORY[0x28223BE20](v7);
  v74 = v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a4[3];
  v71 = a4;
  v10 = __swift_project_boxed_opaque_existential_0(a4, v9);
  v11 = *v10;
  v12 = v10[1];
  v13 = *(v10 + 16);
  v14 = v10[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85E8, &qword_227677740);
  v15 = swift_allocObject();
  v16 = v11;
  v17 = v12;

  sub_22766A070();
  *(v15 + 16) = v16;
  *(v15 + 24) = v17;
  *(v15 + 32) = v13;
  *(v15 + 40) = v14;
  swift_getKeyPath();
  v78[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  v78[0] = a1;
  v78[1] = a2;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v18 = sub_22766C820();
  sub_226E93170(v78, v76, &unk_27D7BC990, &qword_227670A30);
  v19 = v77;
  if (v77)
  {
    v20 = __swift_project_boxed_opaque_existential_0(v76, v77);
    v21 = *(v19 - 8);
    v22 = MEMORY[0x28223BE20](v20);
    v24 = v69 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v21 + 16))(v24, v22);
    v25 = sub_22766D170();
    (*(v21 + 8))(v24, v19);
    __swift_destroy_boxed_opaque_existential_0(v76);
  }

  else
  {
    v25 = 0;
  }

  v26 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v27 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE6B0 &unk_227671120))];

  sub_226E97D1C(v78, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v28 = v27;
  v29 = sub_22766A080();
  v31 = v30;
  MEMORY[0x22AA985C0]();
  if (*((*v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v29(v78, 0);
  swift_endAccess();

  v32 = sub_2270744C4();
  swift_beginAccess();
  v33 = sub_22766A080();
  v35 = v34;
  v36 = v32;
  MEMORY[0x22AA985C0]();
  if (*((*v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v33(v78, 0);
  swift_endAccess();

  v37 = v75;
  v38 = sub_2272328B8(100);
  if (v37)
  {
    swift_setDeallocating();

    KeyPath = qword_2813B2078;
    v40 = sub_22766A100();
    (*(*(v40 - 8) + 8))(v15 + KeyPath, v40);
    swift_deallocClassInstance();
  }

  else
  {
    v41 = v38;
    swift_setDeallocating();

    v42 = qword_2813B2078;
    v43 = sub_22766A100();
    v44 = *(v43 - 8);
    v45 = *(v44 + 8);
    v75 = v43;
    v69[1] = v44 + 8;
    v70 = v45;
    (v45)(v15 + v42);
    swift_deallocClassInstance();
    v46 = sub_227072B70(v41);
    v47 = sub_226F3E6A8(v46);

    sub_227072E78(v47);
    v49 = v48;
    v69[0] = 0;

    sub_226F44598(v49);

    sub_227664F00();
    v50 = sub_2270364AC();
    v52 = sub_2270746A0(v50, v51);

    v53 = __swift_project_boxed_opaque_existential_0(v71, v71[3]);
    v54 = *v53;
    v55 = v53[1];
    v56 = *(v53 + 16);
    v57 = v53[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8FC0, qword_22767B370);
    v58 = swift_allocObject();
    v59 = v54;
    v60 = v55;

    sub_22766A070();
    *(v58 + 16) = v59;
    *(v58 + 24) = v60;
    *(v58 + 32) = v56;
    *(v58 + 40) = v57;
    swift_beginAccess();
    v61 = sub_22766A080();
    v63 = v62;
    v64 = v52;
    MEMORY[0x22AA985C0]();
    if (*((*v63 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v63 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_22766C360();
    }

    sub_22766C3A0();
    v61(v78, 0);
    swift_endAccess();
    KeyPath = swift_getKeyPath();
    v65 = v69[0];
    sub_2273FC91C(KeyPath);
    if (v65)
    {

      swift_setDeallocating();

      v70(v58 + qword_2813B2078, v75);
      swift_deallocClassInstance();
    }

    else
    {
      v67 = sub_226F3E6A8(v66);

      swift_setDeallocating();

      v70(v58 + qword_2813B2078, v75);
      swift_deallocClassInstance();
      KeyPath = sub_22707A7E4(v41, v67);
    }

    (*(v72 + 8))(v74, v73);
  }

  return KeyPath;
}

char *sub_22707B578(void *a1)
{
  v2 = sub_22766B390();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A6C0();
  sub_22766B370();
  (*(v3 + 8))(v5, v2);
  v6 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v7 = *v6;
  v8 = v6[1];
  v9 = *(v6 + 16);
  v10 = v6[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8580, &qword_2276777B0);
  v11 = swift_allocObject();
  v12 = v7;
  v13 = v8;

  sub_22766A070();
  *(v11 + 16) = v12;
  *(v11 + 24) = v13;
  *(v11 + 32) = v9;
  *(v11 + 40) = v10;
  v14 = sub_2272325B8(100);
  swift_setDeallocating();

  v15 = qword_2813B2078;
  v16 = sub_22766A100();
  (*(*(v16 - 8) + 8))(v11 + v15, v16);
  swift_deallocClassInstance();
  return v14;
}

char *sub_22707B7C4(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  v4 = *v3;
  v5 = v3[1];
  v6 = *(v3 + 16);
  v7 = v3[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8580, &qword_2276777B0);
  v8 = swift_allocObject();
  v9 = v4;
  v10 = v5;

  sub_22766A070();
  *(v8 + 16) = v9;
  *(v8 + 24) = v10;
  *(v8 + 32) = v6;
  *(v8 + 40) = v7;
  swift_getKeyPath();
  v11 = sub_2270730AC(a1, MEMORY[0x277CC9260], MEMORY[0x277CC9210]);
  v30[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8470, qword_227677CA0);
  v30[0] = v11;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v12 = sub_22766C820();
  sub_226E93170(v30, v28, &unk_27D7BC990, &qword_227670A30);
  v13 = v29;
  if (v29)
  {
    v14 = __swift_project_boxed_opaque_existential_0(v28, v29);
    v15 = *(v13 - 8);
    v16 = MEMORY[0x28223BE20](v14);
    v18 = v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v15 + 16))(v18, v16);
    v19 = sub_22766D170();
    (*(v15 + 8))(v18, v13);
    __swift_destroy_boxed_opaque_existential_0(v28);
  }

  else
  {
    v19 = 0;
  }

  v20 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8590 &unk_2276777E0))];

  sub_226E97D1C(v30, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v21 = sub_22766A080();
  v23 = v22;
  MEMORY[0x22AA985C0]();
  if (*((*v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v21(v30, 0);
  swift_endAccess();

  v24 = sub_2272325B8(100);
  swift_setDeallocating();

  v25 = qword_2813B2078;
  v26 = sub_22766A100();
  (*(*(v26 - 8) + 8))(v8 + v25, v26);
  swift_deallocClassInstance();
  return v24;
}

void sub_22707BC10(uint64_t a1, void *a2)
{
  v5 = a2[3];
  v108 = a2;
  v6 = __swift_project_boxed_opaque_existential_0(a2, v5);
  v7 = *v6;
  v8 = v6[1];
  v9 = *(v6 + 16);
  v10 = v6[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8598, &unk_227677B90);
  v11 = swift_allocObject();
  v12 = v7;
  v13 = v8;

  sub_22766A070();
  *(v11 + 16) = v12;
  *(v11 + 24) = v13;
  *(v11 + 32) = v9;
  *(v11 + 40) = v10;
  swift_getKeyPath();
  v14 = sub_2270730AC(a1, MEMORY[0x277CC9260], MEMORY[0x277CC9210]);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8470, qword_227677CA0);
  v107 = v103;
  v106[0] = v14;
  v15 = sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v102 = v15;
  v16 = sub_22766C820();
  sub_226E93170(v106, v104, &unk_27D7BC990, &qword_227670A30);
  v17 = v105;
  if (v105)
  {
    v18 = __swift_project_boxed_opaque_existential_0(v104, v105);
    v19 = *(v17 - 8);
    v20 = MEMORY[0x28223BE20](v18);
    v22 = v92 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v19 + 16))(v22, v20);
    v23 = sub_22766D170();
    (*(v19 + 8))(v22, v17);
    __swift_destroy_boxed_opaque_existential_0(v104);
  }

  else
  {
    v23 = 0;
  }

  v101 = objc_opt_self();
  v24 = [v101 expressionForConstantValue_];
  swift_unknownObjectRelease();
  [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85A0 &qword_22767FF20))];

  sub_226E97D1C(v106, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v25 = sub_22766A080();
  v27 = v26;
  MEMORY[0x22AA985C0]();
  if (*((*v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v25(v106, 0);
  swift_endAccess();

  v28 = sub_2272F930C(0x64);
  if (v2)
  {
    swift_setDeallocating();

    v29 = qword_2813B2078;
    v30 = sub_22766A100();
    (*(*(v30 - 8) + 8))(v11 + v29, v30);
LABEL_22:
    swift_deallocClassInstance();
    return;
  }

  v100 = v28;
  swift_setDeallocating();

  v31 = qword_2813B2078;
  v32 = sub_22766A100();
  v33 = *(v32 - 8);
  v93 = *(v33 + 8);
  v94 = v32;
  v92[1] = v33 + 8;
  v93(v11 + v31);
  swift_deallocClassInstance();
  v34 = __swift_project_boxed_opaque_existential_0(v108, v108[3]);
  v35 = *v34;
  v36 = v34[1];
  v37 = *(v34 + 16);
  v38 = v34[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9698, &qword_2276776A0);
  v39 = swift_allocObject();
  v40 = v35;
  v41 = v36;

  sub_22766A070();
  v98 = v40;
  v99 = v38;
  *(v39 + 16) = v40;
  *(v39 + 24) = v41;
  v95 = v41;
  v97 = v37;
  *(v39 + 32) = v37;
  *(v39 + 40) = v38;
  swift_getKeyPath();
  v42 = sub_2270730AC(v100, MEMORY[0x277D52038], MEMORY[0x277D52030]);
  v96 = 0;
  v107 = v103;
  v106[0] = v42;

  v43 = sub_22766C820();
  sub_226E93170(v106, v104, &unk_27D7BC990, &qword_227670A30);
  v44 = v105;
  if (v105)
  {
    v45 = __swift_project_boxed_opaque_existential_0(v104, v105);
    v46 = *(v44 - 8);
    v47 = MEMORY[0x28223BE20](v45);
    v49 = v92 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v46 + 16))(v49, v47);
    v50 = sub_22766D170();
    (*(v46 + 8))(v49, v44);
    __swift_destroy_boxed_opaque_existential_0(v104);
  }

  else
  {
    v50 = 0;
  }

  v51 = [v101 expressionForConstantValue_];
  swift_unknownObjectRelease();
  [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B96A8 &unk_2276776D0))];

  sub_226E97D1C(v106, &unk_27D7BC990, &qword_227670A30);
  v52 = qword_2813B2078;
  swift_beginAccess();
  v53 = sub_22766A080();
  v55 = v54;
  MEMORY[0x22AA985C0]();
  if (*((*v55 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v55 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v53(v106, 0);
  swift_endAccess();

  v56 = sub_2275424B0(v39 + v52, v97, v99);
  if (v56)
  {
    v57 = v100;
    v58 = v98;
    if (v56 == 1)
    {

      goto LABEL_16;
    }

    swift_willThrow();
LABEL_21:

    swift_setDeallocating();
    (v93)(v39 + qword_2813B2078, v94);
    goto LABEL_22;
  }

  v77 = v96;
  v78 = sub_22728467C(0);
  v57 = v100;
  v58 = v98;
  if (v77)
  {
    goto LABEL_21;
  }

  v79 = v78;
  [v78 setResultType_];
  sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
  v80 = sub_22766C9E0();
  v90 = sub_226EDAB24(v80);

  sub_226EDAB78(v90, v95);

  v96 = 0;
LABEL_16:
  v59 = __swift_project_boxed_opaque_existential_0(v108, v108[3]);
  v60 = *v59;
  v61 = v59[1];
  v62 = *(v59 + 16);
  v63 = v59[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA080, &qword_227677700);
  v64 = swift_allocObject();
  v65 = v60;
  v66 = v61;

  sub_22766A070();
  v98 = v66;
  v99 = v65;
  *(v64 + 16) = v65;
  *(v64 + 24) = v66;
  LODWORD(v100) = v62;
  *(v64 + 32) = v62;
  v108 = v63;
  *(v64 + 40) = v63;
  swift_getKeyPath();
  v67 = v96;
  v68 = sub_2270730AC(v57, MEMORY[0x277D52038], MEMORY[0x277D52030]);

  v107 = v103;
  v106[0] = v68;

  v69 = sub_22766C820();
  sub_226E93170(v106, v104, &unk_27D7BC990, &qword_227670A30);
  v70 = v105;
  if (v105)
  {
    v71 = __swift_project_boxed_opaque_existential_0(v104, v105);
    v72 = *(v70 - 8);
    v73 = MEMORY[0x28223BE20](v71);
    v75 = v92 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v72 + 16))(v75, v73);
    v76 = sub_22766D170();
    (*(v72 + 8))(v75, v70);
    __swift_destroy_boxed_opaque_existential_0(v104);
  }

  else
  {
    v76 = 0;
  }

  v81 = [v101 expressionForConstantValue_];
  swift_unknownObjectRelease();
  [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA088 &qword_227677730))];

  sub_226E97D1C(v106, &unk_27D7BC990, &qword_227670A30);
  v82 = qword_2813B2078;
  swift_beginAccess();
  v83 = sub_22766A080();
  v85 = v84;
  MEMORY[0x22AA985C0]();
  if (*((*v85 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v85 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v103 = *((*v85 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v83(v106, 0);
  swift_endAccess();

  v86 = sub_227543098(v64 + v82, v100, v108);
  if (v86)
  {
    if (v86 != 1)
    {
      swift_willThrow();
    }

    goto LABEL_30;
  }

  v87 = sub_227284994(0);
  if (v67)
  {
LABEL_30:

    return;
  }

  v88 = v87;
  [v87 setResultType_];
  sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
  v89 = sub_22766C9E0();
  v91 = sub_226EDAB24(v89);

  sub_226EDAB78(v91, v98);
}

void sub_22707C950(uint64_t a1, void *a2)
{
  v78 = a2;
  v73 = sub_2276687D0();
  v80 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v69 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v68 = &v63 - v6;
  MEMORY[0x28223BE20](v7);
  v67 = &v63 - v8;
  v85 = sub_227664AE0();
  MEMORY[0x28223BE20](v85);
  v79 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v63 - v11;
  v74 = sub_2276668A0();
  v81 = *(v74 - 1);
  MEMORY[0x28223BE20](v74);
  v72 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v71 = &v63 - v15;
  MEMORY[0x28223BE20](v16);
  v70 = &v63 - v17;
  v18 = sub_2276639B0();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v63 - v23;
  v25 = sub_2270733BC(a1);
  v76 = v2;
  v77 = v25;
  v26 = a1 + 56;
  v27 = 1 << *(a1 + 32);
  v28 = -1;
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  v29 = v28 & *(a1 + 56);
  v30 = (v27 + 63) >> 6;
  v83 = v19 + 8;
  v84 = v19 + 16;
  v75 = (v81 + 4);
  v86 = a1;

  v31 = 0;
  v82 = MEMORY[0x277D84F90];
  while (1)
  {
    v32 = v31;
    if (!v29)
    {
      break;
    }

LABEL_8:
    v33 = __clz(__rbit64(v29));
    v29 &= v29 - 1;
    (*(v19 + 16))(v24, *(v86 + 48) + *(v19 + 72) * (v33 | (v31 << 6)), v18);
    sub_227663970();
    (*(v19 + 8))(v24, v18);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v66 = *v75;
      v66(v72, v12, v74);
      v66(v71, v72, v74);
      v66(v70, v71, v74);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v82 = sub_2273A65AC(0, *(v82 + 2) + 1, 1, v82);
      }

      v35 = *(v82 + 2);
      v34 = *(v82 + 3);
      v36 = v35 + 1;
      if (v35 >= v34 >> 1)
      {
        v65 = v35 + 1;
        v64 = v35;
        v39 = sub_2273A65AC((v34 > 1), v35 + 1, 1, v82);
        v36 = v65;
        v35 = v64;
        v82 = v39;
      }

      v38 = v81;
      v37 = v82;
      *(v82 + 2) = v36;
      v66(&v37[((*(v38 + 80) + 32) & ~*(v38 + 80)) + v38[9] * v35], v70, v74);
    }

    else
    {
      sub_226F32360(v12);
    }
  }

  while (1)
  {
    v31 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v31 >= v30)
    {
      break;
    }

    v29 = *(v26 + 8 * v31);
    ++v32;
    if (v29)
    {
      goto LABEL_8;
    }
  }

  v40 = v86;

  v41 = 1 << *(v40 + 32);
  v42 = -1;
  if (v41 < 64)
  {
    v42 = ~(-1 << v41);
  }

  v43 = v42 & *(v40 + 56);
  v44 = (v41 + 63) >> 6;
  v75 = (v80 + 32);

  v45 = 0;
  v81 = MEMORY[0x277D84F90];
  v46 = v79;
  while (v43)
  {
    v47 = v45;
LABEL_23:
    v48 = __clz(__rbit64(v43));
    v43 &= v43 - 1;
    (*(v19 + 16))(v21, *(v86 + 48) + *(v19 + 72) * (v48 | (v47 << 6)), v18);
    sub_227663970();
    (*(v19 + 8))(v21, v18);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_226F32360(v46);
      v45 = v47;
    }

    else
    {
      v49 = *v75;
      (*v75)(v69, v46, v73);
      v49(v68, v69, v73);
      v74 = v49;
      v49(v67, v68, v73);
      v50 = v81;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v50 = sub_2273A6584(0, v50[2] + 1, 1, v50);
      }

      v52 = v50[2];
      v51 = v50[3];
      v81 = v50;
      v53 = (v52 + 1);
      v46 = v79;
      if (v52 >= v51 >> 1)
      {
        v72 = (v52 + 1);
        v56 = sub_2273A6584((v51 > 1), v52 + 1, 1, v81);
        v53 = v72;
        v81 = v56;
      }

      v54 = v80;
      v55 = v81;
      v81[2] = v53;
      v74(&v55[((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v52], v67, v73);
      v45 = v47;
    }
  }

  while (1)
  {
    v47 = v45 + 1;
    if (__OFADD__(v45, 1))
    {
      break;
    }

    if (v47 >= v44)
    {

      v57 = v78;
      v58 = __swift_project_boxed_opaque_existential_0(v78, v78[3]);
      v59 = v76;
      sub_22756D81C(v77, v58[1], *(v58 + 16), v58[3]);

      if (v59)
      {
      }

      else
      {
        v60 = __swift_project_boxed_opaque_existential_0(v57, v57[3]);
        sub_2275616B4(v82, v60[1], *(v60 + 16), v60[3]);
        v61 = v81;

        v62 = __swift_project_boxed_opaque_existential_0(v57, v57[3]);
        sub_22756D164(v61, v62[1], *(v62 + 16), v62[3]);
      }

      return;
    }

    v43 = *(v26 + 8 * v47);
    ++v45;
    if (v43)
    {
      goto LABEL_23;
    }
  }

LABEL_35:
  __break(1u);
}

void sub_22707D144(void *a1)
{
  v2 = sub_22766B390();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A6C0();
  sub_22766B370();
  (*(v3 + 8))(v5, v2);
  v6 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v7 = *v6;
  v8 = v6[1];
  v9 = v6[3];
  v10 = *(v6 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8598, &unk_227677B90);
  v11 = swift_allocObject();
  v12 = v7;
  v13 = v8;

  sub_22766A070();
  *(v11 + 16) = v12;
  *(v11 + 24) = v13;
  *(v11 + 32) = v10;
  *(v11 + 40) = v9;
  v14 = qword_2813B2078;
  swift_beginAccess();
  v15 = sub_2275424F8(v11 + v14, v10, v9);
  if (v15)
  {
    if (v15 != 1)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v36 = v52;
    v37 = sub_227284694(0);
    if (v36)
    {
      goto LABEL_9;
    }

    v38 = v37;
    [v37 setResultType_];
    sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
    v39 = sub_22766C9E0();
    v52 = 0;
    v40 = sub_226EDAB24(v39);

    sub_226EDAB78(v40, v13);
  }

  v16 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v17 = *v16;
  v18 = v16[1];
  v19 = v16[3];
  v20 = *(v16 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9698, &qword_2276776A0);
  v21 = swift_allocObject();
  v22 = v17;
  v23 = v18;

  sub_22766A070();
  *(v21 + 16) = v22;
  *(v21 + 24) = v23;
  *(v21 + 32) = v20;
  *(v21 + 40) = v19;
  v24 = qword_2813B2078;
  swift_beginAccess();
  v25 = sub_2275424B0(v21 + v24, v20, v19);
  if (v25)
  {
    if (v25 == 1)
    {

      goto LABEL_7;
    }

LABEL_10:
    swift_willThrow();
    goto LABEL_9;
  }

  v41 = v52;
  v42 = sub_22728467C(0);
  if (v41)
  {
    goto LABEL_9;
  }

  v47 = v42;
  [v42 setResultType_];
  sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
  v48 = sub_22766C9E0();
  v52 = 0;
  v49 = sub_226EDAB24(v48);

  sub_226EDAB78(v49, v23);

LABEL_7:
  v26 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v27 = *v26;
  v28 = v26[1];
  v29 = v26[3];
  v30 = *(v26 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA080, &qword_227677700);
  v31 = swift_allocObject();
  v32 = v27;
  v33 = v28;

  sub_22766A070();
  *(v31 + 16) = v32;
  *(v31 + 24) = v33;
  *(v31 + 32) = v30;
  *(v31 + 40) = v29;
  v34 = qword_2813B2078;
  swift_beginAccess();
  v35 = sub_227543098(v31 + v34, v30, v29);
  if (v35)
  {
    if (v35 != 1)
    {
      swift_willThrow();
    }

    goto LABEL_9;
  }

  v43 = v52;
  v44 = sub_227284994(0);
  if (v43)
  {
LABEL_9:

    return;
  }

  v45 = v44;
  [v44 setResultType_];
  sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
  v46 = sub_22766C9E0();
  v50 = sub_226EDAB24(v46);

  sub_226EDAB78(v50, v33);
}

uint64_t sub_22707D6D4(unint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_project_boxed_opaque_existential_0(a3, a3[3]);
  v7 = sub_22744ECE8(a1, a2, *v6, v6[1], *(v6 + 16), v6[3]);
  v8 = sub_227284664(0);
  if (v3)
  {
  }

  else
  {
    v9 = v8;
    [v8 setResultType_];
    [v9 setFetchLimit_];
    [v9 setFetchOffset_];
    [v9 setIncludesSubentities_];
    sub_226E99364(0, &qword_28139D220, 0x277CCABB0);
    v7 = sub_22766C9D0();
  }

  return v7;
}

char *sub_22707D7F0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_0(a3, a3[3]);
  v6 = *v5;
  v7 = v5[1];
  v8 = *(v5 + 16);
  v9 = v5[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85E8, &qword_227677740);
  v10 = swift_allocObject();
  v11 = v6;
  v12 = v7;

  sub_22766A070();
  *(v10 + 16) = v11;
  *(v10 + 24) = v12;
  *(v10 + 32) = v8;
  *(v10 + 40) = v9;
  swift_getKeyPath();
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  v70[0] = a1;
  v70[1] = a2;
  v13 = sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v14 = sub_22766C820();
  sub_226E93170(v70, v68, &unk_27D7BC990, &qword_227670A30);
  v15 = v69;
  if (v69)
  {
    v16 = __swift_project_boxed_opaque_existential_0(v68, v69);
    v17 = *(v15 - 8);
    v18 = MEMORY[0x28223BE20](v16);
    v20 = v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v17 + 16))(v20, v18);
    v21 = sub_22766D170();
    (*(v17 + 8))(v20, v15);
    __swift_destroy_boxed_opaque_existential_0(v68);
  }

  else
  {
    v21 = 0;
  }

  v67 = objc_opt_self();
  v22 = [v67 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE6B0, &unk_227671120);
  v24 = &off_2785D6000;
  v25 = [objc_allocWithZone(v23) initWithLeftExpression:v14 rightExpression:v22 modifier:0 type:4 options:0];

  sub_226E97D1C(v70, &unk_27D7BC990, &qword_227670A30);
  v26 = qword_2813B2078;
  swift_beginAccess();
  v27 = v25;
  v72 = v26;
  v28 = sub_22766A080();
  v30 = v29;
  MEMORY[0x22AA985C0]();
  if (*((*v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v28(v70, 0);
  swift_endAccess();

  swift_getKeyPath();
  v31 = sub_227664570();
  v71 = MEMORY[0x277D83B88];
  v70[0] = v31;

  v32 = sub_22766C820();
  sub_226E93170(v70, v68, &unk_27D7BC990, &qword_227670A30);
  v33 = v69;
  if (v69)
  {
    v34 = __swift_project_boxed_opaque_existential_0(v68, v69);
    v66[1] = v13;
    v35 = v23;
    v36 = *(v33 - 8);
    v37 = MEMORY[0x28223BE20](v34);
    v39 = v66 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v36 + 16))(v39, v37);
    v40 = sub_22766D170();
    (*(v36 + 8))(v39, v33);
    v23 = v35;
    v24 = &off_2785D6000;
    __swift_destroy_boxed_opaque_existential_0(v68);
  }

  else
  {
    v40 = 0;
  }

  v41 = [v67 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v42 = [objc_allocWithZone(v23) v24[298]];

  sub_226E97D1C(v70, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v43 = v42;
  v44 = sub_22766A080();
  v46 = v45;
  MEMORY[0x22AA985C0]();
  if (*((*v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v44(v70, 0);
  swift_endAccess();

  swift_getKeyPath();
  v47 = sub_227664570();
  v71 = MEMORY[0x277D83B88];
  v70[0] = v47;

  v48 = sub_22766C820();
  sub_226E93170(v70, v68, &unk_27D7BC990, &qword_227670A30);
  v49 = v69;
  if (v69)
  {
    v50 = __swift_project_boxed_opaque_existential_0(v68, v69);
    v51 = *(v49 - 8);
    v52 = MEMORY[0x28223BE20](v50);
    v54 = v66 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v51 + 16))(v54, v52);
    v55 = sub_22766D170();
    (*(v51 + 8))(v54, v49);
    v24 = &off_2785D6000;
    __swift_destroy_boxed_opaque_existential_0(v68);
  }

  else
  {
    v55 = 0;
  }

  v56 = [v67 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v57 = [objc_allocWithZone(v23) v24[298]];

  sub_226E97D1C(v70, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v58 = v57;
  v59 = sub_22766A080();
  v61 = v60;
  MEMORY[0x22AA985C0]();
  if (*((*v61 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v61 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v59(v70, 0);
  swift_endAccess();

  v62 = sub_2272328B8(100);
  swift_setDeallocating();

  v63 = qword_2813B2078;
  v64 = sub_22766A100();
  (*(*(v64 - 8) + 8))(v10 + v63, v64);
  swift_deallocClassInstance();
  return v62;
}

void sub_22707E0E4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_22766B390();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v118 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A6C0();
  sub_22766B370();
  (*(v7 + 8))(v9, v6);
  v10 = a3[3];
  v124 = a3;
  v11 = __swift_project_boxed_opaque_existential_0(a3, v10);
  v12 = *v11;
  v13 = v11[1];
  v14 = *(v11 + 16);
  v15 = v11[3];
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85E8, &qword_227677740);
  v16 = swift_allocObject();
  v17 = v12;
  v18 = v13;

  sub_22766A070();
  *(v16 + 16) = v17;
  *(v16 + 24) = v18;
  *(v16 + 32) = v14;
  *(v16 + 40) = v15;
  swift_getKeyPath();
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  v134 = v122;
  v125 = a1;
  v132 = a1;
  v133 = a2;
  v19 = sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);
  v126 = a2;

  v135 = v19;
  v20 = sub_22766C820();
  sub_226E93170(&v132, v130, &unk_27D7BC990, &qword_227670A30);
  v21 = v131;
  if (v131)
  {
    v22 = __swift_project_boxed_opaque_existential_0(v130, v131);
    v23 = *(v21 - 8);
    v24 = MEMORY[0x28223BE20](v22);
    v26 = v118 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v23 + 16))(v26, v24);
    v27 = sub_22766D170();
    (*(v23 + 8))(v26, v21);
    __swift_destroy_boxed_opaque_existential_0(v130);
  }

  else
  {
    v27 = 0;
  }

  v28 = objc_opt_self();
  v29 = [v28 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE6B0, &unk_227671120);
  v30 = [objc_allocWithZone(v129) initWithLeftExpression:v20 rightExpression:v29 modifier:0 type:4 options:0];

  sub_226E97D1C(&v132, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v31 = v30;
  v32 = sub_22766A080();
  v34 = v33;
  MEMORY[0x22AA985C0]();
  v35 = *((*v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v36 = *((*v34 & 0xFFFFFFFFFFFFFF8) + 0x18);
  v128 = v28;
  if (v35 >= v36 >> 1)
  {
    sub_22766C360();
    v28 = v128;
  }

  sub_22766C3A0();
  v32(&v132, 0);
  swift_endAccess();

  swift_getKeyPath();
  v37 = sub_227664570();
  v134 = MEMORY[0x277D83B88];
  v132 = v37;

  v38 = sub_22766C820();
  sub_226E93170(&v132, v130, &unk_27D7BC990, &qword_227670A30);
  v39 = v131;
  if (v131)
  {
    v40 = __swift_project_boxed_opaque_existential_0(v130, v131);
    v41 = *(v39 - 8);
    v42 = MEMORY[0x28223BE20](v40);
    v44 = v118 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v41 + 16))(v44, v42);
    v45 = sub_22766D170();
    v46 = v44;
    v28 = v128;
    (*(v41 + 8))(v46, v39);
    __swift_destroy_boxed_opaque_existential_0(v130);
  }

  else
  {
    v45 = 0;
  }

  v47 = [v28 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v48 = [objc_allocWithZone(v129) initWithLeftExpression:v38 rightExpression:v47 modifier:0 type:4 options:0];

  sub_226E97D1C(&v132, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v49 = v48;
  v50 = sub_22766A080();
  v52 = v51;
  MEMORY[0x22AA985C0]();
  if (*((*v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v50(&v132, 0);
  swift_endAccess();

  v53 = v127;
  v54 = sub_2272328B8(100);
  if (v53)
  {
    swift_setDeallocating();

    v55 = qword_2813B2078;
    v56 = sub_22766A100();
    (*(*(v56 - 8) + 8))(v16 + v55, v56);
LABEL_30:
    swift_deallocClassInstance();
    return;
  }

  v121 = 0;
  v127 = v54;
  swift_setDeallocating();

  v57 = qword_2813B2078;
  v58 = sub_22766A100();
  v59 = *(v58 - 8);
  v119 = *(v59 + 8);
  v120 = v58;
  v118[1] = v59 + 8;
  v119(v16 + v57);
  swift_deallocClassInstance();
  v60 = __swift_project_boxed_opaque_existential_0(v124, v124[3]);
  v61 = *v60;
  v62 = v60[1];
  v63 = *(v60 + 16);
  v64 = v60[3];
  v65 = swift_allocObject();
  v66 = v61;
  v67 = v62;

  sub_22766A070();
  *(v65 + 16) = v66;
  *(v65 + 24) = v67;
  *(v65 + 32) = v63;
  *(v65 + 40) = v64;
  swift_getKeyPath();
  v134 = v122;
  v132 = v125;
  v133 = v126;

  v68 = sub_22766C820();
  sub_226E93170(&v132, v130, &unk_27D7BC990, &qword_227670A30);
  v69 = v131;
  if (v131)
  {
    v70 = __swift_project_boxed_opaque_existential_0(v130, v131);
    v71 = *(v69 - 8);
    v72 = MEMORY[0x28223BE20](v70);
    v74 = v118 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v71 + 16))(v74, v72);
    v75 = sub_22766D170();
    (*(v71 + 8))(v74, v69);
    __swift_destroy_boxed_opaque_existential_0(v130);
  }

  else
  {
    v75 = 0;
  }

  v76 = v128;
  v77 = [v128 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v78 = [objc_allocWithZone(v129) initWithLeftExpression:v68 rightExpression:v77 modifier:0 type:4 options:0];

  sub_226E97D1C(&v132, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v79 = v78;
  v80 = sub_22766A080();
  v82 = v81;
  MEMORY[0x22AA985C0]();
  if (*((*v82 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v82 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
    v76 = v128;
  }

  sub_22766C3A0();
  v80(&v132, 0);
  swift_endAccess();

  swift_getKeyPath();
  v83 = sub_227663450();
  v134 = MEMORY[0x277D83B88];
  v132 = v83;

  v84 = sub_22766C820();
  sub_226E93170(&v132, v130, &unk_27D7BC990, &qword_227670A30);
  v85 = v131;
  if (v131)
  {
    v86 = __swift_project_boxed_opaque_existential_0(v130, v131);
    v87 = *(v85 - 8);
    v88 = MEMORY[0x28223BE20](v86);
    v90 = v118 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v87 + 16))(v90, v88);
    v91 = sub_22766D170();
    v92 = v90;
    v76 = v128;
    (*(v87 + 8))(v92, v85);
    __swift_destroy_boxed_opaque_existential_0(v130);
  }

  else
  {
    v91 = 0;
  }

  v93 = [v76 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v94 = [objc_allocWithZone(v129) initWithLeftExpression:v84 rightExpression:v93 modifier:0 type:4 options:0];

  sub_226E97D1C(&v132, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v95 = v94;
  v96 = sub_22766A080();
  v98 = v97;
  MEMORY[0x22AA985C0]();
  if (*((*v98 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v98 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
    v76 = v128;
  }

  sub_22766C3A0();
  v96(&v132, 0);
  swift_endAccess();

  swift_getKeyPath();
  v99 = sub_227664570();
  v134 = MEMORY[0x277D83B88];
  v132 = v99;

  v100 = sub_22766C820();
  sub_226E93170(&v132, v130, &unk_27D7BC990, &qword_227670A30);
  v101 = v131;
  if (v131)
  {
    v102 = __swift_project_boxed_opaque_existential_0(v130, v131);
    v103 = *(v101 - 8);
    v104 = MEMORY[0x28223BE20](v102);
    v106 = v118 - ((v105 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v103 + 16))(v106, v104);
    v107 = sub_22766D170();
    v108 = v106;
    v76 = v128;
    (*(v103 + 8))(v108, v101);
    __swift_destroy_boxed_opaque_existential_0(v130);
  }

  else
  {
    v107 = 0;
  }

  v109 = [v76 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v110 = [objc_allocWithZone(v129) initWithLeftExpression:v100 rightExpression:v109 modifier:0 type:4 options:0];

  sub_226E97D1C(&v132, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v111 = v110;
  v112 = sub_22766A080();
  v114 = v113;
  MEMORY[0x22AA985C0]();
  if (*((*v114 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v114 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v112(&v132, 0);
  swift_endAccess();

  v115 = v121;
  v116 = sub_2272328B8(100);
  if (v115)
  {

    swift_setDeallocating();

    (v119)(v65 + qword_2813B2078, v120);
    goto LABEL_30;
  }

  v117 = v116;
  swift_setDeallocating();

  (v119)(v65 + qword_2813B2078, v120);
  swift_deallocClassInstance();
  sub_2273FB5EC(v117, v127);
}

id *sub_22707F154(void *a1, double a2)
{
  v71 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB570, &unk_227670FC0);
  MEMORY[0x28223BE20](v3 - 8);
  v74 = &v62 - v4;
  v75 = sub_2276624A0();
  v67 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v73 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22766B390();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A6C0();
  sub_22766B370();
  (*(v7 + 8))(v9, v6);
  v10 = sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);
  swift_getKeyPath();
  v11 = sub_22766C820();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8FE8, &qword_227672B80);
  v12 = swift_allocObject();
  v72 = xmmword_227670CD0;
  *(v12 + 16) = xmmword_227670CD0;
  *(v12 + 56) = v10;
  v69 = v10;
  *(v12 + 32) = v11;
  v64 = v11;
  v13 = sub_22766BFD0();
  v14 = sub_22766C2B0();

  v70 = objc_opt_self();
  v15 = [v70 expressionForFunction:v13 arguments:v14];

  v16 = [objc_allocWithZone(MEMORY[0x277CBE410]) init];
  v63 = v15;
  [v16 setExpression_];
  v17 = v16;
  v18 = sub_22766BFD0();
  [v17 setName_];

  [v17 setExpressionResultType_];
  v19 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v20 = sub_22766BFD0();
  v21 = [v19 initWithEntityName_];

  swift_getKeyPath();
  v22 = sub_22766C820();
  v23 = [v22 keyPath];

  v24 = sub_22766C000();
  v26 = v25;

  v27 = swift_allocObject();
  *(v27 + 16) = v72;
  v28 = MEMORY[0x277D837D0];
  *(v27 + 56) = MEMORY[0x277D837D0];
  *(v27 + 32) = v24;
  *(v27 + 40) = v26;

  v29 = sub_22766C2B0();

  [v21 setPropertiesToGroupBy_];

  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_2276728D0;
  *(v30 + 56) = v28;
  *&v72 = v24;
  *(v30 + 32) = v24;
  *(v30 + 40) = v26;
  *(v30 + 88) = sub_226E99364(0, &qword_281398A80, 0x277CBE410);
  *(v30 + 64) = v17;
  v62 = v17;

  v31 = sub_22766C2B0();

  [v21 setPropertiesToFetch_];

  v66 = v21;
  [v21 setResultType_];
  swift_getKeyPath();
  *(&v79 + 1) = MEMORY[0x277D839F8];
  *&v78 = a2;

  v32 = sub_22766C820();
  sub_226E93170(&v78, &v76, &unk_27D7BC990, &qword_227670A30);
  v33 = *(&v77 + 1);
  if (*(&v77 + 1))
  {
    v34 = __swift_project_boxed_opaque_existential_0(&v76, *(&v77 + 1));
    v28 = &v62;
    v35 = *(v33 - 8);
    v36 = MEMORY[0x28223BE20](v34);
    v38 = &v62 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v35 + 16))(v38, v36);
    v39 = sub_22766D170();
    (*(v35 + 8))(v38, v33);
    __swift_destroy_boxed_opaque_existential_0(&v76);
  }

  else
  {
    v39 = 0;
  }

  v40 = [v70 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v41 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85A0 &qword_22767FF20))];

  sub_226E97D1C(&v78, &unk_27D7BC990, &qword_227670A30);
  v42 = v66;
  [v66 setHavingPredicate_];

  __swift_project_boxed_opaque_existential_0(v71, v71[3]);
  if (sub_227669C10())
  {

    v28 = sub_227664DD0();
    sub_22707FCA0(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
    v43 = swift_allocError();
    (*(*(v28 - 1) + 13))(v44, *MEMORY[0x277D51010], v28);
    v65 = v43;
    swift_willThrow();

LABEL_8:
    return v28;
  }

  sub_226E99364(0, &qword_28139D2B0, 0x277CBEAC0);
  v45 = v68;
  v46 = sub_22766C9E0();
  v65 = v45;
  if (v45)
  {

    goto LABEL_8;
  }

  v48 = v46;
  if (v46 >> 62)
  {
    goto LABEL_34;
  }

  for (i = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22766CD20())
  {
    v50 = 0;
    v70 = (v48 & 0xFFFFFFFFFFFFFF8);
    v71 = (v48 & 0xC000000000000001);
    v51 = (v67 + 48);
    v68 = (v67 + 32);
    v52 = MEMORY[0x277D84F90];
    v69 = i;
    while (1)
    {
      if (v71)
      {
        v53 = MEMORY[0x22AA991A0](v50, v48);
      }

      else
      {
        if (v50 >= *(v70 + 2))
        {
          goto LABEL_33;
        }

        v53 = *(v48 + 8 * v50 + 32);
      }

      v54 = v53;
      v55 = v50 + 1;
      if (__OFADD__(v50, 1))
      {
        break;
      }

      *&v78 = v72;
      *(&v78 + 1) = v26;

      v56 = [v54 __swift_objectForKeyedSubscript_];
      swift_unknownObjectRelease();
      if (v56)
      {
        sub_22766CC20();
        swift_unknownObjectRelease();
      }

      else
      {
        v76 = 0u;
        v77 = 0u;
      }

      v57 = v74;
      v78 = v76;
      v79 = v77;
      if (*(&v77 + 1))
      {
        swift_dynamicCast();
      }

      else
      {
        sub_226E97D1C(&v78, &unk_27D7BC990, &qword_227670A30);
      }

      sub_227662310();

      v58 = v75;
      if ((*v51)(v57, 1, v75) == 1)
      {
        sub_226E97D1C(v57, &unk_27D7BB570, &unk_227670FC0);
      }

      else
      {
        v59 = *v68;
        (*v68)(v73, v57, v58);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v52 = sub_2273A4ECC(0, *(v52 + 2) + 1, 1, v52);
        }

        v61 = *(v52 + 2);
        v60 = *(v52 + 3);
        if (v61 >= v60 >> 1)
        {
          v52 = sub_2273A4ECC((v60 > 1), v61 + 1, 1, v52);
        }

        *(v52 + 2) = v61 + 1;
        v59(&v52[((*(v67 + 80) + 32) & ~*(v67 + 80)) + *(v67 + 72) * v61], v73, v75);
      }

      ++v50;
      if (v55 == v69)
      {
        goto LABEL_36;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    ;
  }

  v52 = MEMORY[0x277D84F90];
LABEL_36:

  v28 = sub_226F40798(v52);

  return v28;
}

uint64_t sub_22707FCA0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_22707FCE8(void *a1)
{
  v3 = sub_22766B390();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A6C0();
  sub_22766B370();
  (*(v4 + 8))(v6, v3);
  v7 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v8 = *v7;
  v9 = v7[1];
  v10 = v7[3];
  v11 = *(v7 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8580, &qword_2276777B0);
  v12 = swift_allocObject();
  v13 = v8;
  v14 = v9;

  sub_22766A070();
  *(v12 + 16) = v13;
  *(v12 + 24) = v14;
  *(v12 + 32) = v11;
  *(v12 + 40) = v10;
  v15 = qword_2813B2078;
  swift_beginAccess();
  v16 = sub_2275425D0(v12 + v15, v11, v10);
  if (v16)
  {
    if (v16 != 1)
    {
      swift_willThrow();
    }
  }

  else
  {
    v17 = sub_2272846AC(0);
    if (!v1)
    {
      v18 = v17;
      [v17 setResultType_];
      sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
      v19 = sub_22766C9E0();
      v20 = sub_226EDAB24(v19);

      sub_226EDAB78(v20, v14);

      return;
    }
  }
}

char *sub_22707FF94(void *a1)
{
  v2 = sub_22766B390();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A6C0();
  sub_22766B370();
  (*(v3 + 8))(v5, v2);
  v6 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v7 = *v6;
  v8 = v6[1];
  v9 = *(v6 + 16);
  v10 = v6[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85E8, &qword_227677740);
  v11 = swift_allocObject();
  v12 = v7;
  v13 = v8;

  sub_22766A070();
  *(v11 + 16) = v12;
  *(v11 + 24) = v13;
  *(v11 + 32) = v9;
  *(v11 + 40) = v10;
  v14 = sub_2272328B8(100);
  swift_setDeallocating();

  v15 = qword_2813B2078;
  v16 = sub_22766A100();
  (*(*(v16 - 8) + 8))(v11 + v15, v16);
  swift_deallocClassInstance();
  return v14;
}

void sub_2270801E0(void *a1)
{
  v3 = sub_22766B390();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A6C0();
  sub_22766B370();
  (*(v4 + 8))(v6, v3);
  v7 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v8 = *v7;
  v9 = v7[1];
  v10 = v7[3];
  v11 = *(v7 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85E8, &qword_227677740);
  v12 = swift_allocObject();
  v13 = v8;
  v14 = v9;

  sub_22766A070();
  *(v12 + 16) = v13;
  *(v12 + 24) = v14;
  *(v12 + 32) = v11;
  *(v12 + 40) = v10;
  v15 = qword_2813B2078;
  swift_beginAccess();
  v16 = sub_227542468(v12 + v15, v11, v10);
  if (v16)
  {
    if (v16 != 1)
    {
      swift_willThrow();
    }
  }

  else
  {
    v17 = sub_227284664(0);
    if (!v1)
    {
      v18 = v17;
      [v17 setResultType_];
      sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
      v19 = sub_22766C9E0();
      v20 = sub_226EDAB24(v19);

      sub_226EDAB78(v20, v14);

      return;
    }
  }
}

uint64_t sub_22708048C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v18[2] = a2;
  v19 = a4;
  v18[0] = a1;
  v18[1] = a3;
  v4 = sub_227662750();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_2276624A0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_227664B30();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v8, v18[0], v5, v11);

  sub_227662740();
  sub_227664B20();
  v14 = __swift_project_boxed_opaque_existential_0(v19, v19[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA0A8, &unk_227677A80);
  v15 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_227670CD0;
  (*(v10 + 16))(v16 + v15, v13, v9);
  sub_22756286C(v16, v14[1], *(v14 + 16), v14[3]);

  return (*(v10 + 8))(v13, v9);
}

void sub_227080718(uint64_t a1, uint64_t a2, void **a3, void *a4)
{
  v59 = a2;
  v60 = a3;
  v4 = __swift_project_boxed_opaque_existential_0(a4, a4[3]);
  v5 = *v4;
  v6 = v4[1];
  v7 = *(v4 + 16);
  v8 = v4[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85A8, &qword_227677A20);
  v9 = swift_allocObject();
  v10 = v5;
  v11 = v6;

  sub_22766A070();
  v55 = v11;
  v56 = v10;
  *(v9 + 16) = v10;
  *(v9 + 24) = v11;
  v62 = v7;
  *(v9 + 32) = v7;
  v61 = v8;
  *(v9 + 40) = v8;
  swift_getKeyPath();
  v12 = sub_227662390();
  v14 = v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  v67 = v15;
  v65 = v12;
  v66 = v14;
  v16 = sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v58 = v16;
  v17 = sub_22766C820();
  sub_226E93170(&v65, v63, &unk_27D7BC990, &qword_227670A30);
  v18 = v64;
  if (v64)
  {
    v19 = __swift_project_boxed_opaque_existential_0(v63, v64);
    v20 = *(v18 - 8);
    v21 = MEMORY[0x28223BE20](v19);
    v23 = &v55 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v20 + 16))(v23, v21);
    v24 = sub_22766D170();
    (*(v20 + 8))(v23, v18);
    __swift_destroy_boxed_opaque_existential_0(v63);
  }

  else
  {
    v24 = 0;
  }

  v25 = objc_opt_self();
  v26 = [v25 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85B0, qword_227671000);
  v27 = [objc_allocWithZone(v57) initWithLeftExpression:v17 rightExpression:v26 modifier:0 type:4 options:0];

  sub_226E97D1C(&v65, &unk_27D7BC990, &qword_227670A30);
  v28 = qword_2813B2078;
  swift_beginAccess();
  v29 = v27;
  v30 = sub_22766A080();
  v32 = v31;
  MEMORY[0x22AA985C0]();
  if (*((*v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v30(&v65, 0);
  swift_endAccess();

  swift_getKeyPath();
  v67 = v15;
  v65 = v59;
  v66 = v60;

  v33 = sub_22766C820();
  sub_226E93170(&v65, v63, &unk_27D7BC990, &qword_227670A30);
  v34 = v64;
  if (v64)
  {
    v35 = __swift_project_boxed_opaque_existential_0(v63, v64);
    v60 = &v55;
    v36 = v28;
    v37 = v25;
    v38 = *(v34 - 8);
    v39 = MEMORY[0x28223BE20](v35);
    v41 = &v55 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v38 + 16))(v41, v39);
    v42 = sub_22766D170();
    (*(v38 + 8))(v41, v34);
    v25 = v37;
    v28 = v36;
    __swift_destroy_boxed_opaque_existential_0(v63);
  }

  else
  {
    v42 = 0;
  }

  v43 = [v25 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v44 = [objc_allocWithZone(v57) initWithLeftExpression:v33 rightExpression:v43 modifier:0 type:4 options:0];

  sub_226E97D1C(&v65, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v45 = v44;
  v46 = sub_22766A080();
  v48 = v47;
  MEMORY[0x22AA985C0]();
  if (*((*v48 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v48 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v46(&v65, 0);
  swift_endAccess();

  v49 = sub_227542540(v9 + v28, v62, v61);
  if (v49)
  {
    if (v49 != 1)
    {
      swift_willThrow();
    }

    goto LABEL_15;
  }

  v50 = v68;
  v51 = sub_22723D128(0);
  if (v50)
  {
LABEL_15:

    return;
  }

  v52 = v51;
  [v51 setResultType_];
  sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
  v53 = sub_22766C9E0();
  v54 = sub_226EDAB24(v53);

  sub_226EDAB78(v54, v55);
}

unint64_t sub_227080DF0()
{
  result = qword_27D7BA0B0;
  if (!qword_27D7BA0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BA0B0);
  }

  return result;
}

uint64_t sub_227080E44(uint64_t a1)
{
  v43 = sub_227663180();
  v3 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v42 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_2276624A0();
  v5 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v8)
  {
    v39 = v7;
    v31 = v1;
    v47 = MEMORY[0x277D84F90];
    v33 = a1;
    sub_226F1F548(0, v8, 0);
    v10 = v5;
    v11 = v33;
    v45 = v33 + 56;
    v46 = v47;
    result = sub_22766CC90();
    v12 = result;
    v13 = 0;
    v37 = v3 + 8;
    v38 = v3 + 16;
    v40 = v10;
    v35 = v3;
    v36 = v10 + 32;
    v32 = v11 + 64;
    v34 = v8;
    while ((v12 & 0x8000000000000000) == 0 && v12 < 1 << *(v11 + 32))
    {
      v16 = v12 >> 6;
      if ((*(v45 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
      {
        goto LABEL_23;
      }

      v44 = *(v11 + 36);
      v18 = v42;
      v17 = v43;
      (*(v3 + 16))(v42, *(v11 + 48) + *(v3 + 72) * v12, v43);
      v19 = v39;
      sub_227663170();
      (*(v3 + 8))(v18, v17);
      v20 = v46;
      v47 = v46;
      v22 = *(v46 + 16);
      v21 = *(v46 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_226F1F548((v21 > 1), v22 + 1, 1);
        v20 = v47;
      }

      *(v20 + 16) = v22 + 1;
      v23 = (*(v40 + 80) + 32) & ~*(v40 + 80);
      v46 = v20;
      result = (*(v40 + 32))(v20 + v23 + *(v40 + 72) * v22, v19, v41);
      v14 = 1 << *(v11 + 32);
      if (v12 >= v14)
      {
        goto LABEL_24;
      }

      v24 = *(v45 + 8 * v16);
      if ((v24 & (1 << v12)) == 0)
      {
        goto LABEL_25;
      }

      if (v44 != *(v11 + 36))
      {
        goto LABEL_26;
      }

      v25 = v24 & (-2 << (v12 & 0x3F));
      if (v25)
      {
        v14 = __clz(__rbit64(v25)) | v12 & 0x7FFFFFFFFFFFFFC0;
        v15 = v34;
        v3 = v35;
      }

      else
      {
        v26 = v16 << 6;
        v27 = v16 + 1;
        v28 = (v32 + 8 * v16);
        v15 = v34;
        v3 = v35;
        while (v27 < (v14 + 63) >> 6)
        {
          v30 = *v28++;
          v29 = v30;
          v26 += 64;
          ++v27;
          if (v30)
          {
            result = sub_226EB526C(v12, v44, 0);
            v14 = __clz(__rbit64(v29)) + v26;
            goto LABEL_19;
          }
        }

        result = sub_226EB526C(v12, v44, 0);
LABEL_19:
        v11 = v33;
      }

      ++v13;
      v12 = v14;
      if (v13 == v15)
      {
        return v46;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  return result;
}

uint64_t sub_227081208(uint64_t a1)
{
  v35 = sub_2276624A0();
  v3 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v5)
  {
    v27 = v1;
    v39 = MEMORY[0x277D84F90];
    sub_226F1EFF0(0, v5, 0);
    v38 = v39;
    v7 = a1 + 56;
    result = sub_22766CC90();
    v8 = result;
    v9 = 0;
    v32 = v3 + 8;
    v33 = v3 + 16;
    v28 = a1 + 64;
    v29 = v5;
    v30 = v3;
    v31 = a1 + 56;
    while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(a1 + 32))
    {
      v11 = v8 >> 6;
      if ((*(v7 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_22;
      }

      v36 = *(a1 + 36);
      v12 = v34;
      v13 = v35;
      (*(v3 + 16))(v34, *(a1 + 48) + *(v3 + 72) * v8, v35);
      v37 = sub_227662390();
      v15 = v14;
      result = (*(v3 + 8))(v12, v13);
      v16 = v38;
      v39 = v38;
      v18 = *(v38 + 16);
      v17 = *(v38 + 24);
      if (v18 >= v17 >> 1)
      {
        result = sub_226F1EFF0((v17 > 1), v18 + 1, 1);
        v16 = v39;
      }

      *(v16 + 16) = v18 + 1;
      v19 = v16 + 16 * v18;
      *(v19 + 32) = v37;
      *(v19 + 40) = v15;
      v10 = 1 << *(a1 + 32);
      if (v8 >= v10)
      {
        goto LABEL_23;
      }

      v7 = v31;
      v20 = *(v31 + 8 * v11);
      if ((v20 & (1 << v8)) == 0)
      {
        goto LABEL_24;
      }

      v38 = v16;
      if (v36 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v21 = v20 & (-2 << (v8 & 0x3F));
      if (v21)
      {
        v10 = __clz(__rbit64(v21)) | v8 & 0x7FFFFFFFFFFFFFC0;
        v3 = v30;
      }

      else
      {
        v22 = v11 << 6;
        v23 = v11 + 1;
        v24 = (v28 + 8 * v11);
        v3 = v30;
        while (v23 < (v10 + 63) >> 6)
        {
          v26 = *v24++;
          v25 = v26;
          v22 += 64;
          ++v23;
          if (v26)
          {
            result = sub_226EB526C(v8, v36, 0);
            v10 = __clz(__rbit64(v25)) + v22;
            goto LABEL_4;
          }
        }

        result = sub_226EB526C(v8, v36, 0);
      }

LABEL_4:
      ++v9;
      v8 = v10;
      if (v9 == v29)
      {
        return v38;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_227081510(uint64_t a1)
{
  v3 = sub_227663480();
  MEMORY[0x28223BE20](v3);
  v36 = v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = v30 - v7;
  v9 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v9)
  {
    v30[1] = v1;
    v43 = MEMORY[0x277D84F90];
    v37 = v6;
    sub_226F1F568(0, v9, 0);
    v11 = v37;
    v41 = a1 + 56;
    v42 = v43;
    result = sub_22766CC90();
    v12 = result;
    v13 = 0;
    v34 = v11 + 8;
    v35 = v11 + 16;
    v32 = v9;
    v33 = v11 + 32;
    v31 = a1 + 64;
    while ((v12 & 0x8000000000000000) == 0 && v12 < 1 << *(a1 + 32))
    {
      if ((*(v41 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
      {
        goto LABEL_23;
      }

      v38 = v13;
      v39 = *(a1 + 36);
      v40 = v12 >> 6;
      v15 = *(v11 + 72);
      v16 = v36;
      (*(v11 + 16))(v36, *(a1 + 48) + v15 * v12, v3);
      sub_227663470();
      v11 = v37;
      (*(v37 + 8))(v16, v3);
      v17 = v42;
      v43 = v42;
      v18 = v8;
      v19 = a1;
      v21 = *(v42 + 16);
      v20 = *(v42 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_226F1F568((v20 > 1), v21 + 1, 1);
        v11 = v37;
        v17 = v43;
      }

      *(v17 + 16) = v21 + 1;
      v22 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v42 = v17;
      result = (*(v11 + 32))(v17 + v22 + v21 * v15, v18, v3);
      v14 = 1 << *(v19 + 32);
      if (v12 >= v14)
      {
        goto LABEL_24;
      }

      v23 = *(v41 + 8 * v40);
      if ((v23 & (1 << v12)) == 0)
      {
        goto LABEL_25;
      }

      a1 = v19;
      if (v39 != *(v19 + 36))
      {
        goto LABEL_26;
      }

      v24 = v23 & (-2 << (v12 & 0x3F));
      if (v24)
      {
        v14 = __clz(__rbit64(v24)) | v12 & 0x7FFFFFFFFFFFFFC0;
        v8 = v18;
      }

      else
      {
        v25 = v40 << 6;
        v26 = v40 + 1;
        v27 = (v31 + 8 * v40);
        v8 = v18;
        while (v26 < (v14 + 63) >> 6)
        {
          v29 = *v27++;
          v28 = v29;
          v25 += 64;
          ++v26;
          if (v29)
          {
            result = sub_226EB526C(v12, v39, 0);
            v14 = __clz(__rbit64(v28)) + v25;
            goto LABEL_19;
          }
        }

        result = sub_226EB526C(v12, v39, 0);
LABEL_19:
        v11 = v37;
      }

      v13 = v38 + 1;
      v12 = v14;
      if (v38 + 1 == v32)
      {
        return v42;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  return result;
}

uint64_t sub_2270818D0()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 24));
  __swift_destroy_boxed_opaque_existential_0((v0 + 64));

  return swift_deallocClassInstance();
}

uint64_t sub_22708193C@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v84 = a1;
  v95 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD9D0, &qword_227677B68);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v85 = v4;
  v86 = &v82 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v82 - v6;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9390, &unk_227677B70);
  v99 = *(v96 - 8);
  v8 = *(v99 + 8);
  MEMORY[0x28223BE20](v96);
  v87 = &v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v97 = &v82 - v10;
  MEMORY[0x28223BE20](v11);
  v98 = &v82 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v93 = *(v13 - 8);
  v94 = v13;
  MEMORY[0x28223BE20](v13);
  v89 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v90 = &v82 - v16;
  MEMORY[0x28223BE20](v17);
  v91 = &v82 - v18;
  v88 = v19;
  MEMORY[0x28223BE20](v20);
  v92 = &v82 - v21;
  v22 = sub_22766B390();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v82 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A6C0();
  v26 = sub_22766B380();
  v27 = sub_22766C8B0();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = v7;
    v29 = v2;
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_226E8E000, v26, v27, "Validation - Starting run", v30, 2u);
    v31 = v30;
    v2 = v29;
    v7 = v28;
    MEMORY[0x22AA9A450](v31, -1, -1);
  }

  (*(v23 + 8))(v25, v22);
  v32 = swift_allocObject();
  v33 = v100;
  v34 = v84;
  *(v32 + 16) = v100;
  *(v32 + 24) = v34;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA0B8, &unk_227677B80);
  sub_227669270();
  v35 = swift_allocObject();
  *(v35 + 16) = sub_227082A58;
  *(v35 + 24) = v33;
  v36 = v86;
  (*(v3 + 16))(v86, v7, v2);
  v37 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v38 = (v85 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  (*(v3 + 32))(v39 + v37, v36, v2);
  v40 = (v39 + v38);
  *v40 = sub_227082A60;
  v40[1] = v35;

  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9370, qword_227685C90);
  v41 = v97;
  sub_227669270();
  (*(v3 + 8))(v7, v2);
  v42 = swift_allocObject();
  *(v42 + 16) = sub_22708680C;
  *(v42 + 24) = v33;
  v43 = v99;
  v44 = *(v99 + 2);
  v84 = v99 + 16;
  v85 = v44;
  v45 = v87;
  v46 = v96;
  v44(v87, v41, v96);
  v47 = (v43[80] + 16) & ~v43[80];
  v83 = v47;
  v48 = (v8 + v47 + 7) & 0xFFFFFFFFFFFFFFF8;
  v49 = swift_allocObject();
  v82 = *(v43 + 4);
  v82(v49 + v47, v45, v46);
  v50 = (v49 + v48);
  *v50 = sub_227086814;
  v50[1] = v42;
  v51 = v100;

  v52 = v98;
  sub_227669270();
  v99 = *(v43 + 1);
  (v99)(v41, v46);
  v53 = swift_allocObject();
  *(v53 + 16) = sub_227086868;
  *(v53 + 24) = v51;
  v85(v41, v52, v46);
  v54 = v48;
  v55 = swift_allocObject();
  v82(v55 + v83, v41, v46);
  v56 = (v55 + v54);
  *v56 = sub_227087D64;
  v56[1] = v53;

  v57 = v90;
  sub_227669270();
  (v99)(v52, v46);
  v58 = swift_allocObject();
  v58[2] = 0xD000000000000024;
  v58[3] = 0x8000000227698670;
  v58[4] = 49;
  v59 = swift_allocObject();
  *(v59 + 16) = sub_226F323BC;
  *(v59 + 24) = v58;
  v60 = v93;
  v61 = v94;
  v62 = *(v93 + 16);
  v98 = (v93 + 16);
  v99 = v62;
  v63 = v89;
  (v62)(v89, v57, v94);
  v64 = *(v60 + 80);
  v96 = v64;
  v97 = ((v64 + 16) & ~v64);
  v65 = v97;
  v66 = &v97[v88 + 7] & 0xFFFFFFFFFFFFFFF8;
  v67 = swift_allocObject();
  v68 = *(v60 + 32);
  v68(&v65[v67], v63, v61);
  v69 = (v67 + v66);
  *v69 = sub_226F323DC;
  v69[1] = v59;
  v70 = v91;
  sub_227669270();
  v93 = *(v60 + 8);
  (v93)(v57, v61);
  v71 = swift_allocObject();
  v72 = v99;
  v73 = v100;
  *(v71 + 16) = sub_22708695C;
  *(v71 + 24) = v73;
  v72(v57, v70, v61);
  v74 = swift_allocObject();
  v68(&v97[v74], v57, v61);
  v75 = (v74 + v66);
  *v75 = sub_227086964;
  v75[1] = v71;

  v76 = v92;
  sub_227669270();
  v77 = v93;
  (v93)(v70, v61);
  v78 = swift_allocObject();
  *(v78 + 16) = sub_227083210;
  *(v78 + 24) = 0;
  (v99)(v70, v76, v61);
  v79 = swift_allocObject();
  v68(&v97[v79], v70, v61);
  v80 = (v79 + v66);
  *v80 = sub_226F5AAF8;
  v80[1] = v78;
  sub_227669270();
  return v77(v76, v61);
}

uint64_t sub_2270823B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a4;
  v7 = sub_22766B3B0();
  v27 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22766B3F0();
  v25 = *(v10 - 8);
  v26 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22766B3C0();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  sub_226E99364(0, &qword_2813A5840, 0x277D85C78);
  (*(v14 + 104))(v16, *MEMORY[0x277D851D0], v13);

  v18 = sub_22766C980();
  (*(v14 + 8))(v16, v13);
  v19 = swift_allocObject();
  v20 = v24;
  v19[2] = a3;
  v19[3] = v20;
  v19[4] = sub_226ECCE74;
  v19[5] = v17;
  aBlock[4] = sub_227087D10;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_226E9D72C;
  aBlock[3] = &block_descriptor_9;
  v21 = _Block_copy(aBlock);

  sub_22766B3D0();
  v28 = MEMORY[0x277D84F90];
  sub_227087D1C(&qword_2813A5870, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA240, &unk_227674420);
  sub_226E9CFD0(&qword_2813A5860, &unk_27D7BA240, &unk_227674420, MEMORY[0x277D83970]);
  sub_22766CC80();
  MEMORY[0x22AA98C80](0, v12, v9, v21);
  _Block_release(v21);

  (*(v27 + 8))(v9, v7);
  (*(v25 + 8))(v12, v26);
}

uint64_t sub_2270827C0(uint64_t a1, char *a2, void (*a3)(uint64_t, uint64_t, void, __n128))
{
  __swift_project_boxed_opaque_existential_0((a1 + 24), *(a1 + 48));
  sub_2274B1728(a2);
  v6 = v5;

  (a3)(v6, a2, 0);
}

uint64_t sub_2270828B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_22766B390();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A6C0();
  sub_22766B370();
  (*(v9 + 8))(v11, v8);
  v12 = a3[11];
  v13 = a3[12];
  __swift_project_boxed_opaque_existential_0(a3 + 8, v12);
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a1;

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9370, qword_227685C90);
  sub_226ECF5D8(sub_227087050, v14, v12, v15, v13, a4);
}

uint64_t sub_227082A90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v25[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v25[0] = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v25 - v9;
  v11 = sub_22766B390();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A6C0();
  sub_22766B370();
  (*(v12 + 8))(v14, v11);

  v15 = sub_227086AEC(a1, a2);

  v25[2] = v15;
  sub_226E99364(0, &qword_2813A5840, 0x277D85C78);
  v16 = sub_22766C950();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA0C8, qword_227677C60);
  sub_226E9CFD0(&qword_281398FB0, &qword_27D7BA0C8, qword_227677C60, MEMORY[0x277D83988]);
  sub_227669240();

  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_227086F08;
  *(v18 + 24) = v17;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_227086F10;
  *(v19 + 24) = v18;
  v20 = v25[0];
  (*(v6 + 16))(v25[0], v10, v5);
  v21 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v22 = swift_allocObject();
  (*(v6 + 32))(v22 + v21, v20, v5);
  v23 = (v22 + ((v7 + v21 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v23 = sub_227086F50;
  v23[1] = v19;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9370, qword_227685C90);
  sub_227669270();
  return (*(v6 + 8))(v10, v5);
}

uint64_t sub_227082E6C@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t *a1@<X0>, uint64_t a2@<X8>)@<X1>, uint64_t a3@<X8>)
{
  v19[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD9B0, &unk_227677C50);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v19 - v10;
  v12 = *(a2 + 11);
  v19[0] = *(a2 + 12);
  __swift_project_boxed_opaque_existential_0(a2 + 8, v12);
  v13 = swift_allocObject();
  *(v13 + 16) = a1;

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BEC90, &qword_2276873F0);
  sub_226ECF5D8(sub_227086AA0, v13, v12, v14, v19[0], v11);

  (*(v6 + 16))(v8, v11, v5);
  v15 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v16 = swift_allocObject();
  (*(v6 + 32))(v16 + v15, v8, v5);
  v17 = (v16 + ((v7 + v15 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v17 = sub_227086ABC;
  v17[1] = a2;

  sub_227669270();
  return (*(v6 + 8))(v11, v5);
}

uint64_t sub_2270830BC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22766B390();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A6C0();
  sub_22766B370();
  (*(v5 + 8))(v7, v4);
  v8 = a1[11];
  v9 = a1[12];
  __swift_project_boxed_opaque_existential_0(a1 + 8, v8);
  return sub_226ECF5D8(sub_2270844C0, 0, v8, MEMORY[0x277D84F78] + 8, v9, a2);
}

uint64_t sub_227083210(void *a1)
{
  v3 = sub_22766B390();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A6C0();
  v7 = a1;
  v8 = sub_22766B380();
  v9 = sub_22766C890();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v17[1] = v1;
    v11 = v10;
    v12 = swift_slowAlloc();
    v18 = v12;
    *v11 = 136446210;
    swift_getErrorValue();
    v13 = MEMORY[0x22AA995D0](v17[3], v17[4]);
    v15 = sub_226E97AE8(v13, v14, &v18);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_226E8E000, v8, v9, "Validation - Failed with error: %{public}s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x22AA9A450](v12, -1, -1);
    MEMORY[0x22AA9A450](v11, -1, -1);
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_2270833EC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v95 = a3;
  v96 = a4;
  v6 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v7 = *v6;
  v8 = v6[1];
  v9 = *(v6 + 16);
  v10 = v6[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8598, &unk_227677B90);
  v11 = swift_allocObject();
  v12 = v7;
  v13 = v8;

  v14 = MEMORY[0x277D84F90];
  sub_22766A070();
  *(v11 + 16) = v12;
  *(v11 + 24) = v13;
  *(v11 + 32) = v9;
  *(v11 + 40) = v10;
  swift_getKeyPath();
  v15 = *(a2 + 16);
  if (v15)
  {
    v101[0] = v14;
    sub_226F1EFF0(0, v15, 0);
    v16 = a2 + 32;
    do
    {
      ++v16;
      v17 = sub_227665FE0();
      v101[0] = v14;
      v20 = *(v14 + 16);
      v19 = *(v14 + 24);
      if (v20 >= v19 >> 1)
      {
        v97 = v18;
        v98 = v17;
        sub_226F1EFF0((v19 > 1), v20 + 1, 1);
        v18 = v97;
        v17 = v98;
        v14 = v101[0];
      }

      *(v14 + 16) = v20 + 1;
      v21 = v14 + 16 * v20;
      *(v21 + 32) = v17;
      *(v21 + 40) = v18;
      --v15;
    }

    while (v15);
  }

  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8470, qword_227677CA0);
  v101[0] = v14;
  v22 = sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v98 = v22;
  v23 = sub_22766C820();
  sub_226ED25F8(v101, v99);
  v24 = v100;
  if (v100)
  {
    v25 = __swift_project_boxed_opaque_existential_0(v99, v100);
    v26 = *(v24 - 8);
    v27 = MEMORY[0x28223BE20](v25);
    v29 = v92 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v26 + 16))(v29, v27);
    v30 = sub_22766D170();
    (*(v26 + 8))(v29, v24);
    __swift_destroy_boxed_opaque_existential_0(v99);
  }

  else
  {
    v30 = 0;
  }

  v97 = objc_opt_self();
  v31 = [v97 expressionForConstantValue_];
  swift_unknownObjectRelease();
  [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85A0 &qword_22767FF20))];

  sub_226E97D1C(v101, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v32 = sub_22766A080();
  v34 = v33;
  MEMORY[0x22AA985C0]();
  if (*((*v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v32(v101, 0);
  swift_endAccess();

  KeyPath = swift_getKeyPath();
  v36 = v103;
  sub_2273FC724(KeyPath);
  if (v36)
  {

    swift_setDeallocating();

    v38 = qword_2813B2078;
    v39 = sub_22766A100();
    (*(*(v39 - 8) + 8))(v11 + v38, v39);
    return swift_deallocClassInstance();
  }

  v103 = 0;
  v40 = sub_226F3E6A8(v37);

  swift_setDeallocating();

  v41 = qword_2813B2078;
  v42 = sub_22766A100();
  v43 = *(v42 - 8);
  v93 = *(v43 + 8);
  v94 = v42;
  v92[1] = v43 + 8;
  v93(v11 + v41);
  swift_deallocClassInstance();
  v44 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v45 = *v44;
  v46 = v44[1];
  v47 = *(v44 + 16);
  v48 = v44[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8580, &qword_2276777B0);
  v49 = swift_allocObject();
  v50 = v45;
  v51 = v46;

  sub_22766A070();
  *(v49 + 16) = v50;
  *(v49 + 24) = v51;
  *(v49 + 32) = v47;
  *(v49 + 40) = v48;
  swift_getKeyPath();
  v52 = sub_227664570();
  v102 = MEMORY[0x277D83B88];
  v101[0] = v52;

  v53 = sub_22766C820();
  sub_226ED25F8(v101, v99);
  v54 = v100;
  if (v100)
  {
    v55 = __swift_project_boxed_opaque_existential_0(v99, v100);
    v56 = v40;
    v57 = *(v54 - 8);
    v58 = MEMORY[0x28223BE20](v55);
    v60 = v92 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v57 + 16))(v60, v58);
    v61 = sub_22766D170();
    (*(v57 + 8))(v60, v54);
    v40 = v56;
    __swift_destroy_boxed_opaque_existential_0(v99);
  }

  else
  {
    v61 = 0;
  }

  v62 = [v97 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8590, &unk_2276777E0);
  v64 = [objc_allocWithZone(v63) initWithLeftExpression:v53 rightExpression:v62 modifier:0 type:4 options:0];

  sub_226E97D1C(v101, &unk_27D7BC990, &qword_227670A30);
  v65 = qword_2813B2078;
  swift_beginAccess();
  v66 = v64;
  v67 = sub_22766A080();
  v69 = v68;
  MEMORY[0x22AA985C0]();
  if (*((*v69 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v69 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v92[0] = v63;
    sub_22766C360();
    v63 = v92[0];
  }

  sub_22766C3A0();
  v67(v101, 0);
  swift_endAccess();

  swift_getKeyPath();
  sub_227230638(v40);
  v71 = v70;

  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8588, &unk_227672CD0);
  v101[0] = v71;

  v72 = sub_22766C820();
  sub_226ED25F8(v101, v99);
  v73 = v100;
  if (v100)
  {
    v74 = __swift_project_boxed_opaque_existential_0(v99, v100);
    v98 = v65;
    v75 = *(v73 - 8);
    v76 = MEMORY[0x28223BE20](v74);
    v78 = v92 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v75 + 16))(v78, v76);
    v79 = sub_22766D170();
    (*(v75 + 8))(v78, v73);
    __swift_destroy_boxed_opaque_existential_0(v99);
  }

  else
  {
    v79 = 0;
  }

  v80 = [v97 expressionForConstantValue_];
  swift_unknownObjectRelease();
  [objc_allocWithZone(v63) initWithLeftExpression:v72 rightExpression:v80 modifier:0 type:10 options:0];

  sub_226E97D1C(v101, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v81 = sub_22766A080();
  v83 = v82;
  MEMORY[0x22AA985C0]();
  if (*((*v83 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v83 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v81(v101, 0);
  swift_endAccess();

  v84 = v103;
  v85 = sub_2272325B8(100);
  if (v84)
  {
    swift_setDeallocating();

    (v93)(v49 + qword_2813B2078, v94);
    return swift_deallocClassInstance();
  }

  v87 = v85;
  swift_setDeallocating();

  (v93)(v49 + qword_2813B2078, v94);
  swift_deallocClassInstance();
  v88 = v95;

  v89 = sub_22708760C(v87, v88);

  v90 = sub_227080E44(v89);

  v91 = sub_226F40798(v90);

  *v96 = v91;
  return result;
}

uint64_t sub_227083FC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v41 = a2;
  v46 = a3;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v45 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v42 = v5;
  v43 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v44 = &v36 - v7;
  v8 = sub_2276624A0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22766B390();
  v39 = *(v12 - 8);
  v40 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A6C0();
  (*(v9 + 16))(v11, a1, v8);
  v15 = sub_22766B380();
  v16 = sub_22766C8B0();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v37 = a1;
    v18 = v17;
    v36 = swift_slowAlloc();
    v48 = v36;
    *v18 = 141558274;
    *(v18 + 4) = 1752392040;
    *(v18 + 12) = 2080;
    sub_227087D1C(&qword_28139BDD0, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v19 = sub_22766D140();
    v38 = v3;
    v21 = v20;
    (*(v9 + 8))(v11, v8);
    v22 = sub_226E97AE8(v19, v21, &v48);

    *(v18 + 14) = v22;
    _os_log_impl(&dword_226E8E000, v15, v16, "Validating - failing entry because of missing local URL by remote URL %{mask.hash}s", v18, 0x16u);
    v23 = v36;
    __swift_destroy_boxed_opaque_existential_0(v36);
    MEMORY[0x22AA9A450](v23, -1, -1);
    v24 = v18;
    a1 = v37;
    MEMORY[0x22AA9A450](v24, -1, -1);
  }

  else
  {

    (*(v9 + 8))(v11, v8);
  }

  (*(v39 + 8))(v14, v40);
  v25 = v44;
  sub_226F307BC(a1, v44);
  v26 = swift_allocObject();
  v26[2] = 0xD000000000000024;
  v26[3] = 0x8000000227698670;
  v26[4] = 84;
  v27 = swift_allocObject();
  *(v27 + 16) = sub_226F33024;
  *(v27 + 24) = v26;
  v28 = v45;
  v29 = v43;
  v30 = v47;
  (*(v45 + 16))(v43, v25, v47);
  v31 = (*(v28 + 80) + 16) & ~*(v28 + 80);
  v32 = (v42 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = swift_allocObject();
  (*(v28 + 32))(v33 + v31, v29, v30);
  v34 = (v33 + v32);
  *v34 = sub_226F32FE8;
  v34[1] = v27;
  sub_227669270();
  return (*(v28 + 8))(v25, v30);
}

uint64_t sub_2270844C0(void *a1)
{
  v2 = v1;
  v4 = sub_22766B390();
  v112 = *(v4 - 8);
  v113 = v4;
  MEMORY[0x28223BE20](v4);
  v111 = &v105 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = a1[3];
  v119 = a1;
  v7 = __swift_project_boxed_opaque_existential_0(a1, v6);
  v8 = *v7;
  v9 = v7[1];
  v10 = *(v7 + 16);
  v11 = v7[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8598, &unk_227677B90);
  v12 = swift_allocObject();
  v13 = v8;
  v14 = v9;

  sub_22766A070();
  *(v12 + 16) = v13;
  *(v12 + 24) = v14;
  *(v12 + 32) = v10;
  *(v12 + 40) = v11;
  swift_getKeyPath();
  v15 = sub_227665FE0();
  v17 = v16;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  v117[0] = v15;
  v117[1] = v17;
  v18 = sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v114 = v18;
  v19 = sub_22766C820();
  sub_226ED25F8(v117, v115);
  v20 = v116;
  if (v116)
  {
    v21 = __swift_project_boxed_opaque_existential_0(v115, v116);
    v22 = *(v20 - 8);
    v23 = MEMORY[0x28223BE20](v21);
    v25 = &v105 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v22 + 16))(v25, v23);
    v26 = sub_22766D170();
    (*(v22 + 8))(v25, v20);
    v2 = v1;
    __swift_destroy_boxed_opaque_existential_0(v115);
  }

  else
  {
    v26 = 0;
  }

  v27 = objc_opt_self();
  v28 = [v27 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v29 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85A0 &qword_22767FF20))];

  sub_226E97D1C(v117, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v30 = v29;
  v31 = sub_22766A080();
  v33 = v32;
  MEMORY[0x22AA985C0]();
  if (*((*v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v31(v117, 0);
  swift_endAccess();

  KeyPath = swift_getKeyPath();
  sub_2273FC724(KeyPath);
  if (v2)
  {

    swift_setDeallocating();

    v36 = qword_2813B2078;
    v37 = sub_22766A100();
    (*(*(v37 - 8) + 8))(v12 + v36, v37);
    return swift_deallocClassInstance();
  }

  v106 = v27;
  v110 = 0;
  v38 = sub_226F3E6A8(v35);

  swift_setDeallocating();

  v39 = qword_2813B2078;
  v40 = sub_22766A100();
  v41 = *(v40 - 8);
  v108 = *(v41 + 8);
  v109 = v40;
  v107 = v41 + 8;
  v108(v12 + v39);
  swift_deallocClassInstance();
  v42 = __swift_project_boxed_opaque_existential_0(v119, v119[3]);
  v43 = *v42;
  v44 = v42[1];
  v45 = *(v42 + 16);
  v46 = v42[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9698, &qword_2276776A0);
  v47 = swift_allocObject();
  v48 = v43;
  v49 = v44;

  sub_22766A070();
  *(v47 + 16) = v48;
  *(v47 + 24) = v49;
  *(v47 + 32) = v45;
  *(v47 + 40) = v46;
  swift_getKeyPath();
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B94F0, &unk_227670BA0);
  v117[0] = v38;

  v50 = sub_22766C820();
  sub_226ED25F8(v117, v115);
  v51 = v116;
  if (v116)
  {
    v52 = __swift_project_boxed_opaque_existential_0(v115, v116);
    v53 = *(v51 - 8);
    v54 = MEMORY[0x28223BE20](v52);
    v56 = &v105 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v53 + 16))(v56, v54);
    v57 = sub_22766D170();
    (*(v53 + 8))(v56, v51);
    __swift_destroy_boxed_opaque_existential_0(v115);
  }

  else
  {
    v57 = 0;
  }

  v58 = [v106 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B96A8, &unk_2276776D0);
  v59 = [objc_allocWithZone(v105) initWithLeftExpression:v50 rightExpression:v58 modifier:0 type:10 options:0];

  sub_226E97D1C(v117, &unk_27D7BC990, &qword_227670A30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC9A0, qword_2276758A0);
  v60 = swift_allocObject();
  *(v60 + 16) = xmmword_227670B30;
  *(v60 + 32) = v59;
  v61 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA0C0, &unk_227677C40));
  sub_226E99364(0, &qword_281398B58, 0x277CCAC30);
  v62 = v59;
  v63 = sub_22766C2B0();

  v64 = [v61 initWithType:0 subpredicates:v63];

  swift_beginAccess();
  v65 = v64;
  v66 = sub_22766A080();
  v68 = v67;
  MEMORY[0x22AA985C0]();
  v69 = v110;
  if (*((*v68 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v68 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v66(v117, 0);
  swift_endAccess();

  v70 = swift_getKeyPath();
  sub_2273FC970(v70);
  if (v69)
  {

LABEL_21:
    swift_setDeallocating();

    (v108)(v47 + qword_2813B2078, v109);
    return swift_deallocClassInstance();
  }

  v110 = 0;
  v72 = sub_226F3E6A8(v71);

  swift_setDeallocating();

  (v108)(v47 + qword_2813B2078, v109);
  swift_deallocClassInstance();
  v73 = __swift_project_boxed_opaque_existential_0(v119, v119[3]);
  v74 = *v73;
  v75 = v73[1];
  v76 = *(v73 + 16);
  v77 = v73[3];
  v47 = swift_allocObject();
  v78 = v74;
  v79 = v75;

  sub_22766A070();
  *(v47 + 16) = v78;
  *(v47 + 24) = v79;
  *(v47 + 32) = v76;
  *(v47 + 40) = v77;
  swift_getKeyPath();
  sub_227230638(v72);
  v81 = v80;

  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8588, &unk_227672CD0);
  v117[0] = v81;

  v82 = sub_22766C820();
  sub_226ED25F8(v117, v115);
  v83 = v116;
  if (v116)
  {
    v84 = __swift_project_boxed_opaque_existential_0(v115, v116);
    v85 = *(v83 - 8);
    v86 = MEMORY[0x28223BE20](v84);
    v88 = &v105 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v85 + 16))(v88, v86);
    v89 = sub_22766D170();
    (*(v85 + 8))(v88, v83);
    __swift_destroy_boxed_opaque_existential_0(v115);
  }

  else
  {
    v89 = 0;
  }

  v90 = [v106 expressionForConstantValue_];
  swift_unknownObjectRelease();
  [objc_allocWithZone(v105) initWithLeftExpression:v82 rightExpression:v90 modifier:0 type:10 options:0];

  sub_226E97D1C(v117, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v91 = sub_22766A080();
  v93 = v92;
  MEMORY[0x22AA985C0]();
  if (*((*v93 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v93 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v91(v117, 0);
  swift_endAccess();

  v94 = v110;
  sub_2272F9738(0x64);
  if (v94)
  {
    goto LABEL_21;
  }

  swift_setDeallocating();

  (v108)(v47 + qword_2813B2078, v109);
  swift_deallocClassInstance();
  v96 = v111;
  sub_22766A6C0();

  v97 = sub_22766B380();
  v98 = sub_22766C8B0();

  if (os_log_type_enabled(v97, v98))
  {
    v99 = swift_slowAlloc();
    v100 = swift_slowAlloc();
    v117[0] = v100;
    *v99 = 141558274;
    *(v99 + 4) = 1752392040;
    *(v99 + 12) = 2080;
    sub_2276668A0();
    sub_227087D1C(&unk_28139B620, MEMORY[0x277D526D0], MEMORY[0x277D526D8]);
    v101 = sub_22766C610();
    v103 = v102;

    v104 = sub_226E97AE8(v101, v103, v117);

    *(v99 + 14) = v104;
    _os_log_impl(&dword_226E8E000, v97, v98, "Validator - Deleted metadata missing references %{mask.hash}s", v99, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v100);
    MEMORY[0x22AA9A450](v100, -1, -1);
    MEMORY[0x22AA9A450](v99, -1, -1);
  }

  else
  {
  }

  return (*(v112 + 8))(v96, v113);
}

uint64_t sub_2270853A8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v102 = a3;
  v103 = a1;
  v4 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v5 = *v4;
  v6 = v4[1];
  v7 = *(v4 + 16);
  v8 = v4[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8598, &unk_227677B90);
  v9 = swift_allocObject();
  v10 = v5;
  v11 = v6;

  sub_22766A070();
  *(v9 + 16) = v10;
  *(v9 + 24) = v11;
  *(v9 + 32) = v7;
  *(v9 + 40) = v8;
  swift_getKeyPath();
  v12 = sub_227665FE0();
  v14 = v13;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  v109[0] = v12;
  v109[1] = v14;
  v15 = sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v111 = v15;
  v16 = sub_22766C820();
  sub_226ED25F8(v109, v107);
  v17 = v108;
  if (v108)
  {
    v18 = __swift_project_boxed_opaque_existential_0(v107, v108);
    v19 = *(v17 - 8);
    v20 = MEMORY[0x28223BE20](v18);
    v22 = v100 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v19 + 16))(v22, v20);
    v23 = sub_22766D170();
    (*(v19 + 8))(v22, v17);
    __swift_destroy_boxed_opaque_existential_0(v107);
  }

  else
  {
    v23 = 0;
  }

  v106 = objc_opt_self();
  v24 = [v106 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85A0, &qword_22767FF20);
  v25 = &off_2785D6000;
  v26 = [objc_allocWithZone(v104) initWithLeftExpression:v16 rightExpression:v24 modifier:0 type:4 options:0];

  sub_226E97D1C(v109, &unk_27D7BC990, &qword_227670A30);
  v27 = qword_2813B2078;
  swift_beginAccess();
  v28 = v26;
  v29 = sub_22766A080();
  v31 = v30;
  MEMORY[0x22AA985C0]();
  if (*((*v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v29(v109, 0);
  swift_endAccess();

  swift_getKeyPath();
  v32 = v105;
  v33 = sub_227081208(a2);
  v34 = v32;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8470, qword_227677CA0);
  v109[0] = v33;

  v35 = sub_22766C820();
  sub_226ED25F8(v109, v107);
  v36 = v108;
  if (v108)
  {
    v37 = __swift_project_boxed_opaque_existential_0(v107, v108);
    v105 = v27;
    v38 = *(v36 - 8);
    v39 = MEMORY[0x28223BE20](v37);
    v41 = v100 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v38 + 16))(v41, v39);
    v42 = sub_22766D170();
    (*(v38 + 8))(v41, v36);
    v25 = &off_2785D6000;
    v34 = v32;
    __swift_destroy_boxed_opaque_existential_0(v107);
  }

  else
  {
    v42 = 0;
  }

  v43 = [v106 expressionForConstantValue_];
  swift_unknownObjectRelease();
  [objc_allocWithZone(v104) v25[298]];

  sub_226E97D1C(v109, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v44 = sub_22766A080();
  v46 = v45;
  MEMORY[0x22AA985C0]();
  if (*((*v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v44(v109, 0);
  swift_endAccess();

  KeyPath = swift_getKeyPath();
  sub_2273FC724(KeyPath);
  if (v34)
  {

    swift_setDeallocating();

    v49 = qword_2813B2078;
    v50 = sub_22766A100();
    (*(*(v50 - 8) + 8))(v9 + v49, v50);
    return swift_deallocClassInstance();
  }

  v105 = 0;
  v100[0] = sub_226F3E6A8(v48);

  swift_setDeallocating();

  v51 = qword_2813B2078;
  v52 = sub_22766A100();
  v53 = *(v52 - 1);
  v54 = *(v53 + 8);
  v104 = v52;
  v100[1] = v53 + 8;
  v101 = v54;
  (v54)(v9 + v51);
  swift_deallocClassInstance();
  v55 = __swift_project_boxed_opaque_existential_0(v103, v103[3]);
  v56 = *v55;
  v57 = v55[1];
  v58 = *(v55 + 16);
  v59 = v55[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85E8, &qword_227677740);
  v60 = swift_allocObject();
  v61 = v56;
  v62 = v57;

  sub_22766A070();
  *(v60 + 16) = v61;
  *(v60 + 24) = v62;
  *(v60 + 32) = v58;
  *(v60 + 40) = v59;
  swift_getKeyPath();
  v63 = sub_227664570();
  v110 = MEMORY[0x277D83B88];
  v109[0] = v63;

  v64 = sub_22766C820();
  sub_226ED25F8(v109, v107);
  v65 = v108;
  if (v108)
  {
    v66 = __swift_project_boxed_opaque_existential_0(v107, v108);
    v67 = v25;
    v68 = *(v65 - 8);
    v69 = MEMORY[0x28223BE20](v66);
    v71 = v100 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v68 + 16))(v71, v69);
    v72 = sub_22766D170();
    (*(v68 + 8))(v71, v65);
    v25 = v67;
    __swift_destroy_boxed_opaque_existential_0(v107);
  }

  else
  {
    v72 = 0;
  }

  v73 = [v106 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE6B0, &unk_227671120);
  v75 = [objc_allocWithZone(v74) v25[298]];

  sub_226E97D1C(v109, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v76 = v75;
  v77 = sub_22766A080();
  v79 = v78;
  MEMORY[0x22AA985C0]();
  if (*((*v79 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v79 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v103 = *((*v79 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v77(v109, 0);
  swift_endAccess();

  swift_getKeyPath();
  sub_227230638(v100[0]);
  v81 = v80;

  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8588, &unk_227672CD0);
  v109[0] = v81;

  v82 = sub_22766C820();
  sub_226ED25F8(v109, v107);
  v83 = v108;
  if (v108)
  {
    v84 = __swift_project_boxed_opaque_existential_0(v107, v108);
    v111 = v100;
    v85 = v74;
    v86 = *(v83 - 8);
    v87 = MEMORY[0x28223BE20](v84);
    v89 = v100 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v86 + 16))(v89, v87);
    v90 = sub_22766D170();
    (*(v86 + 8))(v89, v83);
    v74 = v85;
    __swift_destroy_boxed_opaque_existential_0(v107);
  }

  else
  {
    v90 = 0;
  }

  v91 = [v106 expressionForConstantValue_];
  swift_unknownObjectRelease();
  [objc_allocWithZone(v74) initWithLeftExpression:v82 rightExpression:v91 modifier:0 type:10 options:0];

  sub_226E97D1C(v109, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v92 = sub_22766A080();
  v94 = v93;
  MEMORY[0x22AA985C0]();
  if (*((*v94 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v94 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v92(v109, 0);
  swift_endAccess();

  v95 = v105;
  v96 = sub_2272328B8(100);
  if (v95)
  {
    swift_setDeallocating();

    v101(v60 + qword_2813B2078, v104);
    return swift_deallocClassInstance();
  }

  v98 = v96;
  swift_setDeallocating();

  v101(v60 + qword_2813B2078, v104);
  swift_deallocClassInstance();
  v99 = sub_227081510(v98);

  *v102 = v99;
  return result;
}

void sub_227086148(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_227663480();
  v62 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v61 = v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v65 = *(v68 - 8);
  v8 = *(v65 + 64);
  MEMORY[0x28223BE20](v68);
  v60 = v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v59 = v50 - v10;
  MEMORY[0x28223BE20](v11);
  v66 = v50 - v12;
  v13 = sub_22766B390();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  sub_22766A6C0();

  v18 = sub_22766B380();
  v19 = sub_22766C8B0();

  v20 = os_log_type_enabled(v18, v19);
  v67 = v6;
  v50[0] = a3;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v63 = v13;
    v64 = v17;
    v22 = v21;
    v23 = swift_slowAlloc();
    v69 = v23;
    *v22 = 141558274;
    *(v22 + 4) = 1752392040;
    *(v22 + 12) = 2080;
    v24 = MEMORY[0x22AA98660](v64, v6);
    v26 = sub_226E97AE8(v24, v25, &v69);

    *(v22 + 14) = v26;
    _os_log_impl(&dword_226E8E000, v18, v19, "Validation - cancelling bundles because they're missing stream assets: %{mask.hash}s", v22, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v23);
    MEMORY[0x22AA9A450](v23, -1, -1);
    v27 = v22;
    v17 = v64;
    MEMORY[0x22AA9A450](v27, -1, -1);

    (*(v14 + 8))(v16, v63);
  }

  else
  {

    (*(v14 + 8))(v16, v13);
  }

  v28 = *(v17 + 16);
  v29 = MEMORY[0x277D84F90];
  v30 = v68;
  if (v28)
  {
    v69 = MEMORY[0x277D84F90];
    sub_226F1F4E8(0, v28, 0);
    v31 = *(v62 + 16);
    v32 = *(v62 + 80);
    v29 = v69;
    v57 = *(a2 + 16);
    v58 = v31;
    v33 = v17 + ((v32 + 32) & ~v32);
    v55 = *(v62 + 72);
    v56 = 0x8000000227698670;
    v35 = v65;
    v34 = v66;
    v53 = v8 + 7;
    v54 = v65 + 16;
    v62 += 16;
    v51 = (v62 - 8);
    v52 = v65 + 8;
    v50[1] = v65 + 32;
    do
    {
      v65 = v28;
      v66 = v29;
      v36 = v61;
      v64 = v33;
      v58(v61, v33, v67);
      v37 = v59;
      sub_226F25E48(v36, v59);
      v38 = swift_allocObject();
      v38[2] = 0xD000000000000024;
      v38[3] = v56;
      v38[4] = 128;
      v39 = swift_allocObject();
      *(v39 + 16) = sub_226F33024;
      *(v39 + 24) = v38;
      v40 = v60;
      (*(v35 + 16))(v60, v37, v30);
      v41 = *(v35 + 80);
      v42 = (v41 + 16) & ~v41;
      v43 = (v53 + v42) & 0xFFFFFFFFFFFFFFF8;
      v44 = swift_allocObject();
      v63 = *(v35 + 32);
      v63(v44 + v42, v40, v68);
      v45 = (v44 + v43);
      v30 = v68;
      *v45 = sub_226F32FE8;
      v45[1] = v39;
      sub_227669270();
      (*(v35 + 8))(v37, v30);
      v46 = v36;
      v29 = v66;
      (*v51)(v46, v67);
      v69 = v29;
      v48 = *(v29 + 16);
      v47 = *(v29 + 24);
      if (v48 >= v47 >> 1)
      {
        sub_226F1F4E8((v47 > 1), v48 + 1, 1);
        v29 = v69;
      }

      *(v29 + 16) = v48 + 1;
      v63(v29 + ((v41 + 32) & ~v41) + *(v35 + 72) * v48, v34, v30);
      v33 = v64 + v55;
      v28 = v65 - 1;
    }

    while (v65 != 1);
  }

  v69 = v29;
  sub_226E99364(0, &qword_2813A5840, 0x277D85C78);
  v49 = sub_22766C950();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA0C8, qword_227677C60);
  sub_226E9CFD0(&qword_281398FB0, &qword_27D7BA0C8, qword_227677C60, MEMORY[0x277D83988]);
  sub_227669240();
}

unint64_t *sub_227086898(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_22708706C(v7, a2, a3, a4);
    v9 = v8;
    swift_bridgeObjectRelease_n();

    return v9;
  }

  return result;
}

uint64_t sub_227086978(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9370, qword_227685C90);

  return sub_227669270();
}

void sub_227086A10(void (*a1)(void **), uint64_t a2, void (*a3)(void **__return_ptr))
{
  a3(&v5);
  v4 = v5;
  v6 = 0;
  a1(&v5);

  sub_226F38F34(v4, 0);
}

uint64_t sub_227086AEC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v40 = a2;
  v5 = sub_2276624A0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  MEMORY[0x28223BE20](v39);
  v45 = &v30 - v11;
  v12 = *(a1 + 16);
  v13 = MEMORY[0x277D84F90];
  if (!v12)
  {
    return v13;
  }

  v38 = v8;
  v46 = MEMORY[0x277D84F90];
  v41 = v10;
  v42 = v9;
  sub_226F1F4E8(0, v12, 0);
  v13 = v46;
  v44 = v42 + 56;
  v14 = sub_22766CC90();
  v15 = 0;
  v36 = v6 + 16;
  v37 = (v6 + 8);
  v16 = v42;
  v34 = v5;
  v35 = v41 + 32;
  v31 = v42 + 64;
  v32 = v12;
  v33 = v6;
  while ((v14 & 0x8000000000000000) == 0 && v14 < 1 << *(v16 + 32))
  {
    v17 = v14 >> 6;
    if ((*(v44 + 8 * (v14 >> 6)) & (1 << v14)) == 0)
    {
      goto LABEL_22;
    }

    v43 = v15;
    v18 = v13;
    v19 = *(v16 + 36);
    v13 = v38;
    (*(v6 + 16))(v38, *(v16 + 48) + *(v6 + 72) * v14, v5);
    sub_227083FC4(v13, v40, v45);
    if (v3)
    {
      goto LABEL_26;
    }

    v3 = 0;
    (*v37)(v13, v5);
    v13 = v18;
    v46 = v18;
    v20 = *(v18 + 16);
    v21 = *(v13 + 24);
    if (v20 >= v21 >> 1)
    {
      sub_226F1F4E8((v21 > 1), v20 + 1, 1);
      v13 = v46;
    }

    *(v13 + 16) = v20 + 1;
    (*(v41 + 32))(v13 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v20, v45, v39);
    v16 = v42;
    v5 = 1 << *(v42 + 32);
    if (v14 >= v5)
    {
      goto LABEL_23;
    }

    v22 = *(v44 + 8 * v17);
    if ((v22 & (1 << v14)) == 0)
    {
      goto LABEL_24;
    }

    if (v19 != *(v42 + 36))
    {
      goto LABEL_25;
    }

    v23 = v22 & (-2 << (v14 & 0x3F));
    if (v23)
    {
      v5 = __clz(__rbit64(v23)) | v14 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v24 = v17 << 6;
      v25 = v17 + 1;
      v26 = (v31 + 8 * v17);
      while (v25 < (v5 + 63) >> 6)
      {
        v28 = *v26++;
        v27 = v28;
        v24 += 64;
        ++v25;
        if (v28)
        {
          sub_226EB526C(v14, v19, 0);
          v16 = v42;
          v5 = __clz(__rbit64(v27)) + v24;
          goto LABEL_4;
        }
      }

      sub_226EB526C(v14, v19, 0);
      v16 = v42;
    }

LABEL_4:
    v15 = v43 + 1;
    v14 = v5;
    v6 = v33;
    v5 = v34;
    if (v43 + 1 == v32)
    {
      return v13;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  (*v37)(v13, v5);

  __break(1u);
  return result;
}

uint64_t sub_227086F10@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  return result;
}

uint64_t sub_227086F88(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

void sub_22708706C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v43[0] = a2;
  v48 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB570, &unk_227670FC0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v43 - v7;
  v9 = sub_2276624A0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v63 = v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v43 - v13;
  v15 = sub_227663180();
  v16 = *(v15 - 8);
  v18.n128_f64[0] = MEMORY[0x28223BE20](v15);
  v60 = v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = 0;
  v20 = 0;
  v21 = *(a3 + 56);
  v44 = a3 + 56;
  v22 = 1 << *(a3 + 32);
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  else
  {
    v23 = -1;
  }

  v24 = v23 & v21;
  v25 = (v22 + 63) >> 6;
  v56 = (v10 + 48);
  v57 = v16 + 16;
  v49 = (v10 + 32);
  v64 = a4 + 56;
  v62 = v10 + 16;
  v45 = v10;
  v67 = (v10 + 8);
  v54 = (v16 + 8);
  v55 = v25;
  v46 = v8;
  v47 = a3;
  v65 = v9;
  v66 = a4;
  v50 = v16;
  v51 = v17;
  while (v24)
  {
    v26 = __clz(__rbit64(v24));
    v59 = (v24 - 1) & v24;
LABEL_14:
    v29 = v26 | (v20 << 6);
    v30 = *(a3 + 48);
    v31 = *(v16 + 72);
    v58 = v29;
    (*(v16 + 16))(v60, v30 + v31 * v29, v15, v18);
    sub_227663160();
    if ((*v56)(v8, 1, v9) == 1)
    {
      sub_226E97D1C(v8, &unk_27D7BB570, &unk_227670FC0);
      goto LABEL_6;
    }

    (*v49)(v14, v8, v9);
    v32 = *(a4 + 16);
    v52 = v67 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    if (v32 && (sub_227087D1C(&qword_28139BDE0, MEMORY[0x277CC9260], MEMORY[0x277CC9270]), v33 = sub_22766BF50(), v34 = -1 << *(a4 + 32), v35 = v33 & ~v34, ((*(v64 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35) & 1) != 0))
    {
      v61 = ~v34;
      v36 = *(v45 + 72);
      v37 = *(v45 + 16);
      while (1)
      {
        v38 = v65;
        v39 = v63;
        v37(v63, *(v66 + 48) + v36 * v35, v65);
        sub_227087D1C(&qword_28139BDD8, MEMORY[0x277CC9260], MEMORY[0x277CC9278]);
        v40 = sub_22766BFB0();
        v41 = *v67;
        (*v67)(v39, v38);
        if (v40)
        {
          break;
        }

        v35 = (v35 + 1) & v61;
        if (((*(v64 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35) & 1) == 0)
        {
          v8 = v46;
          a3 = v47;
          v9 = v65;
          a4 = v66;
          v41(v14, v65);
          goto LABEL_21;
        }
      }

      v9 = v65;
      v41(v14, v65);
      v8 = v46;
      a3 = v47;
      a4 = v66;
      v16 = v50;
      v15 = v51;
LABEL_6:
      (*v54)(v60, v15);
      v25 = v55;
      v24 = v59;
    }

    else
    {
      (*v67)(v14, v9);
LABEL_21:
      v15 = v51;
      (*v54)(v60, v51);
      *(v48 + ((v58 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v58;
      v42 = __OFADD__(v53++, 1);
      v16 = v50;
      v25 = v55;
      v24 = v59;
      if (v42)
      {
        goto LABEL_28;
      }
    }
  }

  v27 = v20;
  while (1)
  {
    v20 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v20 >= v25)
    {

      sub_22726B078(v48, v43[0], v53, a3);
      return;
    }

    v28 = *(v44 + 8 * v20);
    ++v27;
    if (v28)
    {
      v26 = __clz(__rbit64(v28));
      v59 = (v28 - 1) & v28;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
}

uint64_t sub_22708760C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v73 = *MEMORY[0x277D85DE8];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB570, &unk_227670FC0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v46 - v7;
  v71 = sub_2276624A0();
  v9 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v68 = v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v46 - v12;
  v56 = sub_227663180();
  v14 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v65 = v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v15) = *(a1 + 32);
  v16 = v15 & 0x3F;
  v17 = ((1 << v15) + 63) >> 6;
  v18 = 8 * v17;

  if (v16 > 0xD)
  {
    goto LABEL_31;
  }

  while (2)
  {
    v47 = v17;
    v48 = v3;
    v46[1] = v46;
    MEMORY[0x28223BE20](v19);
    v51 = v46 - ((v18 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v51, v18);
    v57 = 0;
    v17 = 0;
    v20 = *(a1 + 56);
    v49 = a1 + 56;
    v21 = 1 << *(a1 + 32);
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v23 = v22 & v20;
    v24 = (v21 + 63) >> 6;
    v59 = (v9 + 48);
    v60 = v14 + 16;
    v52 = (v9 + 32);
    v69 = a2 + 56;
    v67 = v9 + 16;
    v72 = (v9 + 8);
    v58 = (v14 + 8);
    v18 = v71;
    v3 = v56;
    v61 = v24;
    v50 = a1;
    v53 = v9;
    v54 = v8;
    v70 = a2;
    v62 = v14;
    while (v23)
    {
      v25 = __clz(__rbit64(v23));
      v64 = (v23 - 1) & v23;
LABEL_15:
      v28 = v25 | (v17 << 6);
      v29 = *(a1 + 48);
      v30 = *(v14 + 72);
      v63 = v28;
      (*(v14 + 16))(v65, v29 + v30 * v28, v3);
      sub_227663160();
      if ((*v59)(v8, 1, v18) == 1)
      {
        sub_226E97D1C(v8, &unk_27D7BB570, &unk_227670FC0);
        goto LABEL_7;
      }

      (*v52)(v13, v8, v18);
      v31 = *(a2 + 16);
      v55 = v72 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      if (v31 && (sub_227087D1C(&qword_28139BDE0, MEMORY[0x277CC9260], MEMORY[0x277CC9270]), v32 = sub_22766BF50(), v33 = -1 << *(a2 + 32), v34 = v32 & ~v33, ((*(v69 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) != 0))
      {
        v35 = v13;
        v66 = ~v33;
        v36 = *(v9 + 72);
        v37 = *(v9 + 16);
        while (1)
        {
          v38 = v71;
          v39 = v68;
          v37(v68, *(v70 + 48) + v36 * v34, v71);
          sub_227087D1C(&qword_28139BDD8, MEMORY[0x277CC9260], MEMORY[0x277CC9278]);
          v40 = sub_22766BFB0();
          v41 = *v72;
          (*v72)(v39, v38);
          if (v40)
          {
            break;
          }

          v34 = (v34 + 1) & v66;
          if (((*(v69 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) == 0)
          {
            a2 = v70;
            v18 = v71;
            a1 = v50;
            v13 = v35;
            v3 = v56;
            v41(v13, v71);
            goto LABEL_22;
          }
        }

        v13 = v35;
        v18 = v71;
        v41(v35, v71);
        a2 = v70;
        a1 = v50;
        v9 = v53;
        v8 = v54;
        v3 = v56;
LABEL_7:
        v14 = v62;
        (*v58)(v65, v3);
        v24 = v61;
        v23 = v64;
      }

      else
      {
        (*v72)(v13, v18);
LABEL_22:
        (*v58)(v65, v3);
        v14 = v62;
        *&v51[(v63 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v63;
        v42 = __OFADD__(v57++, 1);
        v9 = v53;
        v8 = v54;
        v24 = v61;
        v23 = v64;
        if (v42)
        {
          goto LABEL_30;
        }
      }
    }

    v26 = v17;
    while (1)
    {
      v17 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v17 >= v24)
      {
        v43 = sub_22726B078(v51, v47, v57, a1);

        return v43;
      }

      v27 = *(v49 + 8 * v17);
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v64 = (v27 - 1) & v27;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v45 = swift_slowAlloc();

  v43 = sub_227086898(v45, v17, a1, a2);

  MEMORY[0x22AA9A450](v45, -1, -1);

  return v43;
}

uint64_t sub_227087D1C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_227087DA8(uint64_t a1)
{
  result = sub_2270884DC(&qword_2813A55C0, MEMORY[0x277D530A8], &unk_227672EB0);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_227087E3C(uint64_t a1)
{
  result = sub_2270884DC(&qword_2813A5598, MEMORY[0x277D53450], &unk_227673D00);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_227087ED0(uint64_t a1)
{
  result = sub_2270884DC(&qword_2813A5508, MEMORY[0x277D53BA0], &unk_227680918);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_227087F64(uint64_t a1)
{
  result = sub_2270884DC(&qword_2813A5540, MEMORY[0x277D538B8], &unk_22768E2C8);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_227087FF8(uint64_t a1)
{
  result = sub_2270884DC(&qword_2813A56B0, MEMORY[0x277D52498], &unk_22767F5F8);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_22708808C(uint64_t a1)
{
  result = sub_2270884DC(&qword_2813A5560, MEMORY[0x277D53708], &unk_227688C58);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_227088120(uint64_t a1)
{
  result = sub_2270884DC(&qword_2813A54F0, MEMORY[0x277D53C88], &unk_227673548);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2270881B4(uint64_t a1)
{
  result = sub_2270884DC(&qword_2813A57D8, MEMORY[0x277D502D0], &unk_2276753F0);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_227088248(uint64_t a1)
{
  result = sub_2270884DC(&qword_2813A5760, MEMORY[0x277D51068], &unk_227689A68);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2270882DC(uint64_t a1)
{
  result = sub_2270884DC(&qword_2813A5618, MEMORY[0x277D52D18], &unk_22767AEF0);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_227088370(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7, void (*a8)(uint64_t, void, void, void))
{
  v13 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
  v14 = *(a4 - 8);
  v15 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_227670CD0;
  (*(v14 + 16))(v16 + v15, v8, a4);
  a8(v16, v13[1], *(v13 + 16), v13[3]);
}

uint64_t sub_227088484(uint64_t a1)
{
  result = sub_2270884DC(&qword_2813A56E0, MEMORY[0x277D51CF0], &unk_227670D28);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2270884DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for AssetProgressUpdated(uint64_t a1)
{
  result = qword_2813A1320;
  if (!qword_2813A1320)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_227088598(uint64_t a1)
{
  result = sub_2276624A0();
  if (v2 <= 0x3F)
  {
    result = sub_227663CD0();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}