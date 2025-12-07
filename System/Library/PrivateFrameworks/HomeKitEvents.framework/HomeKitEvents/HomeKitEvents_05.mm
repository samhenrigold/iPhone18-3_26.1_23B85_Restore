void sub_2541A17E4(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

unint64_t sub_2541A199C()
{
  result = qword_27F5B9F68[0];
  if (!qword_27F5B9F68[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_27F5B9F68);
  }

  return result;
}

uint64_t sub_2541A1A00(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    v3 = result;
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      result = type metadata accessor for Promise(319, v3, v4, v5);
      if (v7 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_2541A1A98(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B90C0, &qword_254253F20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2541A1B08(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B90C0, &qword_254253F20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2541A1B70(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25412F818;

  return sub_2541A0E54(a1, v4);
}

uint64_t sub_2541A1C28(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25412F724;

  return sub_2541A0E54(a1, v4);
}

id sub_2541A1CE0(id result, char a2)
{
  if (a2)
  {
    return result;
  }

  return result;
}

uint64_t sub_2541A1CEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v4[4];
  v8 = *(type metadata accessor for Promise.ValueType(0, v7, a3, a4) - 8);
  v9 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v10 = v4[2];
  v11 = v4[3];
  v12 = *(v4 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_25412F818;

  return sub_2541A0538(a1, v10, v11, v4 + v9, v12, v7);
}

uint64_t sub_2541A1E20(uint64_t result, char a2)
{
  if (a2 == 2)
  {
  }

  return v2;
}

uint64_t sub_2541A1E3C(uint64_t result, char a2)
{
  if (a2 == 2)
  {
  }

  return v2;
}

uint64_t sub_2541A1E8C(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8848, &qword_254261820) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_25412F818;

  return sub_25419F9A8(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_2541A1F90(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8848, &qword_254261820);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - v5;
  swift_beginAccess();
  if (*(v1 + 120) != 255)
  {
    return *(v1 + 112);
  }

  v8 = *(v1 + 128);
  if (v8)
  {
    (*(v4 + 16))(v6, a1, v3);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_2541B0F60(0, v8[2] + 1, 1, v8);
    }

    v10 = v8[2];
    v9 = v8[3];
    if (v10 >= v9 >> 1)
    {
      v8 = sub_2541B0F60((v9 > 1), v10 + 1, 1, v8);
    }

    v8[2] = v10 + 1;
    (*(v4 + 32))(v8 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v10, v6, v3);

    return 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9FF8, &qword_254258110);
    v11 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_254254360;
    (*(v4 + 16))(v12 + v11, a1, v3);
    result = 0;
    *(v1 + 128) = v12;
  }

  return result;
}

id sub_2541A21AC(id result, char a2)
{
  if (a2 != -1)
  {
    return sub_2541A1CE0(result, a2 & 1);
  }

  return result;
}

uint64_t sub_2541A21C4(uint64_t a1)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5BAF10, &qword_254253F40);
  v5 = *(sub_25424E098() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_25412F724;

  return sub_25419FAF0(a1, v7, v8, v9, v1 + v6);
}

uint64_t static SharedZoneLookup.zoneID(for:homeIdentifier:target:BOOL:)(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_254142718;

  return sub_2541A23BC(a1, a2, a3, a4);
}

uint64_t sub_2541A23BC(uint64_t a1, uint64_t a2, _BYTE *a3, char a4)
{
  *(v4 + 384) = a4;
  *(v4 + 176) = a1;
  *(v4 + 184) = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BAF00, &qword_254258178);
  *(v4 + 192) = v6;
  *(v4 + 200) = *(v6 - 8);
  *(v4 + 208) = swift_task_alloc();
  v7 = sub_25424DAA8();
  *(v4 + 216) = v7;
  *(v4 + 224) = *(v7 - 8);
  *(v4 + 232) = swift_task_alloc();
  *(v4 + 240) = swift_task_alloc();
  *(v4 + 248) = swift_task_alloc();
  *(v4 + 256) = swift_task_alloc();
  *(v4 + 264) = swift_task_alloc();
  *(v4 + 272) = swift_task_alloc();
  *(v4 + 280) = swift_task_alloc();
  *(v4 + 288) = swift_task_alloc();
  *(v4 + 385) = *a3;

  return MEMORY[0x2822009F8](sub_2541A2548, 0, 0);
}

uint64_t sub_2541A2548()
{
  v22 = v0;
  v1 = *(v0 + 385);
  v3 = *(v0 + 176);
  v2 = *(v0 + 184);
  type metadata accessor for Configuration();
  v21 = v1;
  *(v0 + 296) = static Configuration.zoneName(forHomeIdentifier:target:)(v2, &v21);
  *(v0 + 304) = v4;
  if ([v3 databaseScope] == 2)
  {
    sub_254148D7C(0, &qword_27F5BBF00, 0x277CBC5F8);
    sub_25424DCB8();
    v5 = sub_25424E458();

    v6 = *(v0 + 8);

    return v6(v5);
  }

  else if (*(v0 + 384) == 1)
  {
    if (qword_27F5B8428 != -1)
    {
      swift_once();
    }

    v8 = qword_27F5BC838;
    *(v0 + 312) = qword_27F5BC838;

    return MEMORY[0x2822009F8](sub_2541A2968, v8, 0);
  }

  else
  {
    sub_25421A804(*(v0 + 280));
    v9 = sub_25424DA88();
    v10 = sub_25424E448();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_254124000, v9, v10, "Fetching zones in shared database", v11, 2u);
      MEMORY[0x259C07330](v11, -1, -1);
    }

    v12 = *(v0 + 280);
    v14 = *(v0 + 216);
    v13 = *(v0 + 224);
    v16 = *(v0 + 200);
    v15 = *(v0 + 208);
    v17 = *(v0 + 192);
    v20 = *(v0 + 176);

    v18 = *(v13 + 8);
    *(v0 + 336) = v18;
    v18(v12, v14);
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 168;
    *(v0 + 24) = sub_2541A2EB8;
    swift_continuation_init();
    *(v0 + 136) = v17;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 112));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA000, &unk_254258180);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BAF10, &qword_254253F40);
    sub_25424E068();
    (*(v16 + 32))(boxed_opaque_existential_1, v15, v17);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_2541D34A4;
    *(v0 + 104) = &block_descriptor_3;
    [v20 fetchAllRecordZonesWithCompletionHandler_];
    (*(v16 + 8))(boxed_opaque_existential_1, v17);

    return MEMORY[0x282200938](v0 + 16);
  }
}

uint64_t sub_2541A2968()
{
  v1 = v0[39];
  swift_beginAccess();
  v2 = *(v1 + 128);
  if (*(v2 + 16))
  {
    v4 = v0[37];
    v3 = v0[38];

    v5 = sub_25422095C(v4, v3);
    if (v6)
    {
      v7 = (*(v2 + 56) + 16 * v5);
      v0[40] = *v7;
      v0[41] = v7[1];

      v8 = sub_2541A2CBC;
    }

    else
    {

      v8 = sub_2541A42E0;
    }
  }

  else
  {
    v8 = sub_2541A2A5C;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_2541A2A5C()
{
  sub_25421A804(v0[35]);
  v1 = sub_25424DA88();
  v2 = sub_25424E448();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_254124000, v1, v2, "Fetching zones in shared database", v3, 2u);
    MEMORY[0x259C07330](v3, -1, -1);
  }

  v4 = v0[35];
  v6 = v0[27];
  v5 = v0[28];
  v8 = v0[25];
  v7 = v0[26];
  v9 = v0[24];
  v13 = v0[22];

  v10 = *(v5 + 8);
  v0[42] = v10;
  v10(v4, v6);
  v0[2] = v0;
  v0[7] = v0 + 21;
  v0[3] = sub_2541A2EB8;
  swift_continuation_init();
  v0[17] = v9;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA000, &unk_254258180);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BAF10, &qword_254253F40);
  sub_25424E068();
  (*(v8 + 32))(boxed_opaque_existential_1, v7, v9);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2541D34A4;
  v0[13] = &block_descriptor_3;
  [v13 fetchAllRecordZonesWithCompletionHandler_];
  (*(v8 + 8))(boxed_opaque_existential_1, v9);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2541A2CBC()
{
  v1 = v0[36];
  sub_254148D7C(0, &qword_27F5BBF00, 0x277CBC5F8);
  v2 = sub_25424E458();
  sub_25421A804(v1);
  v3 = v2;
  v4 = sub_25424DA88();
  v5 = sub_25424E408();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v3;
    *v7 = v3;
    v8 = v3;
    _os_log_impl(&dword_254124000, v4, v5, "Using cached owner name for zone: %@", v6, 0xCu);
    sub_2541A4278(v7);
    MEMORY[0x259C07330](v7, -1, -1);
    MEMORY[0x259C07330](v6, -1, -1);
  }

  v9 = v0[36];
  v10 = v0[27];
  v11 = v0[28];

  (*(v11 + 8))(v9, v10);

  v12 = v0[1];

  return v12(v3);
}

uint64_t sub_2541A2EB8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 344) = v1;
  if (v1)
  {

    v2 = sub_2541A4068;
  }

  else
  {
    v2 = sub_2541A2FD0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2541A2FD0()
{
  v86 = v0;
  v1 = *(v0 + 272);
  v2 = *(v0 + 168);
  *(v0 + 352) = v2;

  sub_25421A804(v1);

  v3 = sub_25424DA88();
  LOBYTE(v4) = sub_25424E408();
  if (!os_log_type_enabled(v3, v4))
  {
    swift_bridgeObjectRelease_n();
    goto LABEL_6;
  }

  v5 = swift_slowAlloc();
  *v5 = 134217984;
  if (v2 >> 62)
  {
    goto LABEL_25;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_25424E868())
  {

    *(v5 + 4) = i;

    _os_log_impl(&dword_254124000, v3, v4, "Fetched %ld zone(s) in shared database", v5, 0xCu);
    MEMORY[0x259C07330](v5, -1, -1);
LABEL_6:

    v7 = *(v0 + 336);
    v9 = *(v0 + 264);
    v8 = *(v0 + 272);
    v10 = *(v0 + 216);
    v11 = *(v0 + 224) + 8;
    *(v0 + 360) = v11 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v7(v8, v10);
    sub_25421A804(v9);

    v12 = sub_25424DA88();
    v13 = sub_25424E418();

    v14 = os_log_type_enabled(v12, v13);
    v15 = *(v0 + 336);
    v16 = *(v0 + 264);
    v17 = *(v0 + 216);
    if (v14)
    {
      v83 = *(v0 + 336);
      v18 = swift_slowAlloc();
      v81 = v16;
      v19 = swift_slowAlloc();
      v85[0] = v19;
      *v18 = 136315138;
      v20 = sub_254148D7C(0, &qword_27F5BAF90, 0x277CBC5E8);
      v21 = MEMORY[0x259C05E60](v2, v20);
      v23 = sub_2542203C4(v21, v22, v85);

      *(v18 + 4) = v23;
      _os_log_impl(&dword_254124000, v12, v13, "%s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      MEMORY[0x259C07330](v19, -1, -1);
      MEMORY[0x259C07330](v18, -1, -1);

      v83(v81, v17);
    }

    else
    {

      v15(v16, v17);
    }

    v3 = v11;
    if ((*(v0 + 384) & 1) == 0)
    {
      goto LABEL_46;
    }

    v85[0] = MEMORY[0x277D84F90];
    v79 = v0;
    if (v2 >> 62)
    {
      break;
    }

    v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      goto LABEL_27;
    }

LABEL_12:
    v5 = 0;
    v0 = v2 & 0xC000000000000001;
    v24 = v2 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v0)
      {
        v25 = v2;
        v26 = MEMORY[0x259C06580](v5, v2);
      }

      else
      {
        if (v5 >= *(v24 + 16))
        {
          goto LABEL_24;
        }

        v25 = v2;
        v26 = *(v2 + 8 * v5 + 32);
      }

      v27 = v26;
      v2 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v28 = [v26 zoneID];
      v29 = [v28 zoneName];

      sub_25424DCB8();
      v3 = sub_25424DE48();

      if (v3)
      {
        sub_25424E718();
        sub_25424E748();
        sub_25424E758();
        v3 = v85;
        sub_25424E728();
      }

      else
      {
      }

      ++v5;
      v49 = v2 == v4;
      v2 = v25;
      if (v49)
      {
        v30 = v85[0];
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    ;
  }

  v4 = sub_25424E868();
  if (v4)
  {
    goto LABEL_12;
  }

LABEL_27:
  v30 = MEMORY[0x277D84F90];
LABEL_28:
  v0 = v79;
  *(v79 + 368) = v30;
  v31 = v30 < 0 || (v30 & 0x4000000000000000) != 0;
  if (v31)
  {
    if (sub_25424E868())
    {
      goto LABEL_33;
    }
  }

  else if (*(v30 + 16))
  {
LABEL_33:
    sub_25421A804(*(v79 + 256));

    v32 = sub_25424DA88();
    v33 = sub_25424E408();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 134217984;
      if (v31)
      {
        v35 = sub_25424E868();
      }

      else
      {
        v35 = *(v30 + 16);
      }

      *(v34 + 4) = v35;

      _os_log_impl(&dword_254124000, v32, v33, "Caching owner name for %ld zones", v34, 0xCu);
      MEMORY[0x259C07330](v34, -1, -1);
    }

    else
    {
    }

    (*(v79 + 336))(*(v79 + 256), *(v79 + 216));
    if (qword_27F5B8428 != -1)
    {
      swift_once();
    }

    v36 = qword_27F5BC838;
    *(v79 + 376) = qword_27F5BC838;

    return MEMORY[0x2822009F8](sub_2541A3A88, v36, 0);
  }

LABEL_46:
  v37 = (v0 + 352);
  v38 = *(v0 + 352);
  if (v38 >> 62)
  {
LABEL_75:
    v39 = sub_25424E868();
    v38 = *v37;
    if (v39)
    {
      goto LABEL_48;
    }

    goto LABEL_67;
  }

  v39 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v39)
  {
LABEL_67:
    v63 = *(v0 + 240);

    sub_25421A804(v63);

    v64 = sub_25424DA88();
    v65 = sub_25424E428();

    v66 = os_log_type_enabled(v64, v65);
    v67 = *(v0 + 336);
    v68 = *(v0 + 304);
    if (v66)
    {
      v69 = *(v0 + 296);
      v70 = *(v0 + 240);
      v71 = *(v0 + 216);
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v85[0] = v73;
      *v72 = 136315138;
      v74 = sub_2542203C4(v69, v68, v85);

      *(v72 + 4) = v74;
      _os_log_impl(&dword_254124000, v64, v65, "Unable to find shared zone with name %s", v72, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v73);
      MEMORY[0x259C07330](v73, -1, -1);
      MEMORY[0x259C07330](v72, -1, -1);
    }

    else
    {
      v70 = *(v0 + 240);
      v71 = *(v0 + 216);
    }

    v67(v70, v71);
    sub_254182650();
    swift_allocError();
    *v75 = 0xD000000000000024;
    v75[1] = 0x8000000254250A70;
    swift_willThrow();

    v76 = *(v0 + 8);

    return v76();
  }

LABEL_48:
  v40 = 0;
  v82 = v2 & 0xFFFFFFFFFFFFFF8;
  v84 = v2 & 0xC000000000000001;
  v80 = v38 + 32;
  v78 = v37;
  while (1)
  {
    if (v84)
    {
      v41 = MEMORY[0x259C06580](v40, *v78);
    }

    else
    {
      if (v40 >= *(v82 + 16))
      {
        goto LABEL_74;
      }

      v41 = *(v80 + 8 * v40);
    }

    v2 = v41;
    v37 = (v40 + 1);
    if (__OFADD__(v40, 1))
    {
      __break(1u);
LABEL_74:
      __break(1u);
      goto LABEL_75;
    }

    v42 = *(v0 + 296);
    v43 = *(v0 + 304);
    v44 = [v41 zoneID];
    v45 = [v44 zoneName];

    v46 = sub_25424DCB8();
    v48 = v47;

    v49 = v46 == v42 && v48 == v43;
    if (v49)
    {
      break;
    }

    v50 = sub_25424EAB8();

    if (v50)
    {
      goto LABEL_62;
    }

    ++v40;
    if (v37 == v39)
    {
      goto LABEL_67;
    }
  }

LABEL_62:
  v51 = *(v0 + 248);

  v52 = [v2 zoneID];
  sub_25421A804(v51);
  v53 = v52;
  v54 = sub_25424DA88();
  v55 = sub_25424E448();

  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    *v56 = 138412290;
    *(v56 + 4) = v53;
    *v57 = v53;
    v58 = v53;
    _os_log_impl(&dword_254124000, v54, v55, "Found shared zone for query: %@", v56, 0xCu);
    sub_2541A4278(v57);
    MEMORY[0x259C07330](v57, -1, -1);
    MEMORY[0x259C07330](v56, -1, -1);
  }

  v59 = *(v0 + 336);
  v60 = *(v0 + 248);
  v61 = *(v0 + 216);

  v59(v60, v61);

  v62 = *(v0 + 8);

  return v62(v53);
}

uint64_t sub_2541A3A88()
{
  sub_2541BED64(*(v0 + 368), 1);

  return MEMORY[0x2822009F8](sub_2541A3B00, 0, 0);
}

uint64_t sub_2541A3B00()
{
  v50 = v0;
  v1 = v0 + 44;
  v2 = v0[44];
  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v4 = v0[44];
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_22:
    v29 = v0[30];

    sub_25421A804(v29);

    v30 = sub_25424DA88();
    v31 = sub_25424E428();

    v32 = os_log_type_enabled(v30, v31);
    v33 = v0[42];
    v34 = v0[38];
    if (v32)
    {
      v35 = v0[37];
      v36 = v0[30];
      v37 = v0[27];
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v49 = v39;
      *v38 = 136315138;
      v40 = sub_2542203C4(v35, v34, &v49);

      *(v38 + 4) = v40;
      _os_log_impl(&dword_254124000, v30, v31, "Unable to find shared zone with name %s", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v39);
      MEMORY[0x259C07330](v39, -1, -1);
      MEMORY[0x259C07330](v38, -1, -1);

      v33(v36, v37);
    }

    else
    {
      v41 = v0[30];
      v42 = v0[27];

      v33(v41, v42);
    }

    sub_254182650();
    swift_allocError();
    *v43 = 0xD000000000000024;
    v43[1] = 0x8000000254250A70;
    swift_willThrow();

    v44 = v0[1];

    return v44();
  }

LABEL_30:
  v3 = sub_25424E868();
  v4 = *v1;
  if (!v3)
  {
    goto LABEL_22;
  }

LABEL_3:
  v5 = 0;
  v47 = v2 & 0xFFFFFFFFFFFFFF8;
  v48 = v2 & 0xC000000000000001;
  v45 = v1;
  v46 = v4 + 32;
  while (1)
  {
    if (v48)
    {
      v6 = MEMORY[0x259C06580](v5, *v45);
    }

    else
    {
      if (v5 >= *(v47 + 16))
      {
        goto LABEL_29;
      }

      v6 = *(v46 + 8 * v5);
    }

    v2 = v6;
    v7 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v1 = v0[37];
    v8 = v0[38];
    v9 = [v6 zoneID];
    v10 = [v9 zoneName];

    v11 = sub_25424DCB8();
    v13 = v12;

    if (v11 == v1 && v13 == v8)
    {
      break;
    }

    v15 = sub_25424EAB8();

    if (v15)
    {
      goto LABEL_17;
    }

    ++v5;
    if (v7 == v3)
    {
      goto LABEL_22;
    }
  }

LABEL_17:
  v16 = v0[31];

  v17 = [v2 zoneID];
  sub_25421A804(v16);
  v18 = v17;
  v19 = sub_25424DA88();
  v20 = sub_25424E448();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v21 = 138412290;
    *(v21 + 4) = v18;
    *v22 = v18;
    v23 = v18;
    _os_log_impl(&dword_254124000, v19, v20, "Found shared zone for query: %@", v21, 0xCu);
    sub_2541A4278(v22);
    MEMORY[0x259C07330](v22, -1, -1);
    MEMORY[0x259C07330](v21, -1, -1);
  }

  v24 = v0[42];
  v25 = v0[31];
  v26 = v0[27];

  v24(v25, v26);

  v27 = v0[1];

  return v27(v18);
}

uint64_t sub_2541A4068(uint64_t a1)
{
  v2 = v1[43];
  v3 = v1[29];
  swift_willThrow();
  sub_25421A804(v3);
  v4 = v2;
  v5 = sub_25424DA88();
  v6 = sub_25424E428();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v1[43];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_254124000, v5, v6, "Failed to fetch shared database zones: %{public}@", v8, 0xCu);
    sub_2541A4278(v9);
    MEMORY[0x259C07330](v9, -1, -1);
    MEMORY[0x259C07330](v8, -1, -1);
  }

  v12 = v1[42];
  v13 = v1[29];
  v14 = v1[27];

  v12(v13, v14);
  swift_willThrow();

  v15 = v1[1];

  return v15();
}

uint64_t sub_2541A4278(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BBED0, &qword_254253F80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t EventWriterScope.rawValue.getter()
{
  if (*v0)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

HomeKitEvents::EventWriterScope_optional __swiftcall EventWriterScope.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (rawValue == 1)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

void *sub_2541A4320@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result == 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  *a2 = v3;
  return result;
}

void sub_2541A4340(uint64_t *a1@<X8>)
{
  v2 = 1;
  if (*v1)
  {
    v2 = 2;
  }

  *a1 = v2;
}

uint64_t sub_2541A4368()
{
  v1 = *v0;
  sub_25424EBD8();
  if (v1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  MEMORY[0x259C06AA0](v2);
  return sub_25424EC28();
}

uint64_t sub_2541A43B8()
{
  if (*v0)
  {
    v1 = 2;
  }

  else
  {
    v1 = 1;
  }

  return MEMORY[0x259C06AA0](v1);
}

uint64_t sub_2541A43F0(uint64_t a1)
{
  v2 = *v1;
  sub_25424EBD8();
  if (v2)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  MEMORY[0x259C06AA0](v3);
  return sub_25424EC28();
}

uint64_t EventWriterScope.description.getter()
{
  if (*v0)
  {
    return 0x646572616873;
  }

  else
  {
    return 0x64656E776FLL;
  }
}

uint64_t sub_2541A4470()
{
  if (*v0)
  {
    return 0x646572616873;
  }

  else
  {
    return 0x64656E776FLL;
  }
}

HMVEventWriter __swiftcall HMVEventWriter.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t HMVEventWriter.writeEvents(_:)(uint64_t a1)
{
  *(v1 + 32) = 0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2541A4604;

  return sub_254223BC0(a1, (v1 + 32));
}

uint64_t sub_2541A4604()
{
  v2 = *v1;
  *(v2 + 24) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2541A50D0, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t HMVEventWriter.writeEvents(_:scope:)(uint64_t a1, _BYTE *a2)
{
  *(v2 + 32) = *a2;
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2541A4604;

  return sub_254223BC0(a1, (v2 + 32));
}

uint64_t HMVEventWriter.writeFakeEvents(date:homeIdentifier:count:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25412F818;

  return sub_254224488(a1, a2, a3);
}

uint64_t sub_2541A48B4(uint64_t a1)
{
  *(v1 + 32) = 0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2541A4604;

  return sub_254223BC0(a1, (v1 + 32));
}

uint64_t sub_2541A496C(uint64_t a1, _BYTE *a2)
{
  *(v2 + 32) = *a2;
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2541A4A28;

  return sub_254223BC0(a1, (v2 + 32));
}

uint64_t sub_2541A4A28()
{
  v2 = *v1;
  *(v2 + 24) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_25419EFB4, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_2541A4B5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25412F724;

  return sub_254224488(a1, a2, a3);
}

unint64_t sub_2541A4C20()
{
  result = qword_27F5BA008;
  if (!qword_27F5BA008)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5BA010, &qword_254258208);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA008);
  }

  return result;
}

unint64_t sub_2541A4C88()
{
  result = qword_27F5BA018;
  if (!qword_27F5BA018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA018);
  }

  return result;
}

uint64_t dispatch thunk of EventWriterProtocol.writeEvents(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25412F818;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of EventWriterProtocol.writeEvents(_:scope:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 16) + **(a4 + 16));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_25412F724;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of EventWriterProtocol.writeFakeEvents(date:homeIdentifier:count:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 24) + **(a5 + 24));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_25412F818;

  return v13(a1, a2, a3, a4, a5);
}

unint64_t type metadata accessor for HMVEventWriter()
{
  result = qword_27F5BA020;
  if (!qword_27F5BA020)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F5BA020);
  }

  return result;
}

uint64_t sub_2541A50D4()
{
  v0 = sub_25424E128();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25424E0D8();
  v4 = sub_25424E0E8();
  v5 = *(v1 + 8);
  v5(v3, v0);
  if (v4)
  {
    return 25;
  }

  sub_25424E108();
  v7 = sub_25424E0E8();
  v5(v3, v0);
  if (v7)
  {
    return -1;
  }

  sub_25424E0F8();
  v8 = sub_25424E0E8();
  v5(v3, v0);
  if (v8)
  {
    return 17;
  }

  else
  {
    return 9;
  }
}

uint64_t sub_2541A5230@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  v6 = result;
  v8 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v8 == 2)
    {
      v10 = *(a2 + 16);
      v9 = *(a2 + 24);
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }
  }

  else
  {
    if (v8)
    {
      v9 = a2 >> 32;
    }

    else
    {
      v9 = BYTE6(a3);
    }

    if (v8)
    {
      v10 = a2;
    }

    else
    {
      v10 = 0;
    }
  }

  v11 = sub_2541A5BB0(v10, v9, a2, a3);
  if (v6 && v11 < v6)
  {
    if (v8 <= 1)
    {
      if (!v8)
      {
        goto LABEL_28;
      }

      v12 = a2 >> 32;
      goto LABEL_26;
    }

    if (v8 != 2)
    {
      goto LABEL_28;
    }

    v12 = *(a2 + 24);
LABEL_24:
    result = *(a2 + 16);
    goto LABEL_27;
  }

  v12 = sub_2541347C8(v10, v6, a2, a3);
  result = 0;
  if (v8 > 1)
  {
    if (v8 != 3)
    {
      goto LABEL_24;
    }
  }

  else if (v8)
  {
LABEL_26:
    result = a2;
  }

LABEL_27:
  if (v12 >= result)
  {
LABEL_28:
    v13 = sub_25424D4B8();
    v15 = v14;
    result = sub_254134D04(a2, a3);
    *a4 = v13;
    a4[1] = v15;
    return result;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_2541A53A8(uint64_t result, uint64_t a2, uint64_t (*a3)(void))
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    a3(0);
    return a2;
  }

  return result;
}

uint64_t sub_2541A5440(uint64_t result, unint64_t a2, unint64_t *a3)
{
  v5 = result;
  v6 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v6)
    {
      v7 = BYTE6(a2);
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (v6 != 2)
  {
    v7 = 0;
    goto LABEL_11;
  }

  v9 = *(result + 16);
  v8 = *(result + 24);
  v7 = v8 - v9;
  if (__OFSUB__(v8, v9))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    v7 = HIDWORD(result) - result;
  }

LABEL_11:
  result = sub_2541A5C64();
  if (v7 < result)
  {
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v27 = a3;
  if (v6 > 1)
  {
    v10 = 0;
    if (v6 == 2)
    {
      v10 = *(v5 + 16);
    }
  }

  else if (v6)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0;
  }

  v11 = sub_2541A5C64();
  v12 = sub_2541347C8(v10, v11, v5, a2);
  v13 = sub_2541AF3E4(2052476232, 0xE400000000000000);
  v15 = v14;
  sub_254140660(v13, v14);
  sub_2541A5230(3, v13, v15, &v28);
  v16 = v28;
  v17 = v29;
  v18 = sub_2541A5718(v28, v29, v5, a2);
  sub_254134D04(v16, v17);
  if ((v18 & 1) == 0)
  {
    v25 = 0x8000000254250AA0;
    v26 = 0xD000000000000023;
    goto LABEL_26;
  }

  sub_2541347C8(v10, 3, v5, a2);
  result = sub_25424D4C8();
  if (result < 0x7Au)
  {
    goto LABEL_31;
  }

  if (result != 122)
  {
    v25 = 0x8000000254250AD0;
    v26 = 0xD00000000000002FLL;
LABEL_26:
    *v27 = v26;
    v27[1] = v25;
    v28 = v26;
    v29 = v25;
    sub_254182650();
    swift_willThrowTypedImpl();
    v23 = v5;
    v24 = a2;
    goto LABEL_27;
  }

  result = sub_2541347C8(v10, 4, v5, a2);
  if (v12 >= result)
  {
    v19 = sub_25424D4B8();
    v21 = v20;
    v22 = sub_2542435B8(v19, v20);
    if (!(v22 >> 28))
    {
      v18 = v22;
      sub_254134D04(v13, v15);
      sub_254134D04(v19, v21);
      sub_254134D04(v5, a2);
      return v18;
    }

    *v27 = 0xD00000000000002ELL;
    v27[1] = 0x8000000254250B00;
    v28 = 0xD00000000000002ELL;
    v29 = 0x8000000254250B00;
    sub_254182650();
    swift_willThrowTypedImpl();
    sub_254134D04(v5, a2);
    v23 = v19;
    v24 = v21;
LABEL_27:
    sub_254134D04(v23, v24);
    sub_254134D04(v13, v15);
    return v18;
  }

LABEL_33:
  __break(1u);
  __break(1u);
  return result;
}

uint64_t sub_2541A5718(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = sub_25424D548();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v20[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v14 = &v20[-v13];
  sub_254140660(a1, a2);
  sub_25424D558();
  sub_254140660(a3, a4);
  sub_25424D558();
  sub_2541A5D00();
  while (1)
  {
    sub_25424E5C8();
    if (v20[15])
    {
      v18 = *(v9 + 8);
      v18(v12, v8);
      sub_25424E5C8();
      v18(v14, v8);
      return v20[13];
    }

    v15 = v20[14];
    sub_25424E5C8();
    if (v20[11])
    {
      break;
    }

    if (v15 != v20[10])
    {
      v16 = *(v9 + 8);
      v16(v12, v8);
      v16(v14, v8);
      return 0;
    }
  }

  v19 = *(v9 + 8);
  v19(v12, v8);
  v19(v14, v8);
  return 1;
}

uint64_t sub_2541A5998(unint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = sub_2541AF3E4(2052476232, 0xE400000000000000);
  v27 = v2;
  v28 = v3;
  v4 = v3 >> 62;
  if ((v3 >> 62) <= 1)
  {
    if (!v4)
    {
      v5 = BYTE6(v3);
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (v4 != 2)
  {
    v5 = 0;
    goto LABEL_11;
  }

  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = __OFSUB__(v6, v7);
  v5 = v6 - v7;
  if (v8)
  {
    __break(1u);
LABEL_8:
    LODWORD(v5) = HIDWORD(v2) - v2;
    if (__OFSUB__(HIDWORD(v2), v2))
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v5 = v5;
  }

LABEL_11:
  if (__OFSUB__(v5, 1))
  {
    __break(1u);
    goto LABEL_37;
  }

  sub_25424D4C8();
  sub_25424D4D8();
  if ((a1 & 0x8000000000000000) != 0)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (HIDWORD(a1))
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  LODWORD(v26[0]) = bswap32(a1);
  v9 = sub_2541AF8F4(v26, v26 + 4);
  v11 = v9;
  v12 = v10;
  v13 = v27;
  v14 = v28;
  v15 = v28 >> 62;
  if ((v28 >> 62) <= 1)
  {
    if (!v15)
    {
      v16 = BYTE6(v28);
      goto LABEL_24;
    }

    goto LABEL_21;
  }

  if (v15 != 2)
  {
    v16 = 0;
    goto LABEL_24;
  }

  v18 = *(v27 + 16);
  v17 = *(v27 + 24);
  v8 = __OFSUB__(v17, v18);
  v16 = v17 - v18;
  if (v8)
  {
    __break(1u);
LABEL_21:
    LODWORD(v16) = HIDWORD(v13) - v13;
    if (__OFSUB__(HIDWORD(v13), v13))
    {
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
    }

    v16 = v16;
  }

LABEL_24:
  v19 = v10 >> 62;
  if ((v10 >> 62) <= 1)
  {
    if (!v19)
    {
      v20 = BYTE6(v10);
      goto LABEL_34;
    }

    goto LABEL_31;
  }

  if (v19 != 2)
  {
    v20 = 0;
    goto LABEL_34;
  }

  v22 = *(v9 + 16);
  v21 = *(v9 + 24);
  v8 = __OFSUB__(v21, v22);
  v20 = v21 - v22;
  if (v8)
  {
    __break(1u);
LABEL_31:
    LODWORD(v20) = HIDWORD(v9) - v9;
    if (__OFSUB__(HIDWORD(v9), v9))
    {
      goto LABEL_42;
    }

    v20 = v20;
  }

LABEL_34:
  if (__OFADD__(v16, v20))
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v26[0] = sub_2541EFFDC(v16 + v20);
  v26[1] = v23;
  sub_25424D528();
  sub_25424D528();
  sub_254134D04(v11, v12);
  v24 = v26[0];
  sub_254134D04(v13, v14);
  return v24;
}

uint64_t sub_2541A5BB0(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v4 == 2)
    {
      v6 = *(a3 + 16);
      v5 = *(a3 + 24);
    }

    else
    {
      v5 = 0;
      v6 = 0;
    }
  }

  else
  {
    v5 = a3 >> 32;
    if (v4)
    {
      v6 = a3;
    }

    else
    {
      v5 = BYTE6(a4);
      v6 = 0;
    }
  }

  if (v5 < result || v6 > result)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a4);
    if (v4)
    {
      v7 = a3 >> 32;
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7 < a2 || v8 > a2)
  {
    goto LABEL_22;
  }

  v9 = __OFSUB__(a2, result);
  result = a2 - result;
  if (v9)
  {
LABEL_23:
    __break(1u);
  }

  return result;
}

uint64_t sub_2541A5C64()
{
  v0 = sub_2541AF3E4(2052476232, 0xE400000000000000);
  v2 = v1 >> 62;
  if ((v1 >> 62) <= 1)
  {
    if (!v2)
    {
      v3 = BYTE6(v1);
      sub_254134D04(v0, v1);
      v4 = v3;
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (v2 != 2)
  {
    sub_254134D04(v0, v1);
    v4 = 0;
    goto LABEL_11;
  }

  v6 = *(v0 + 16);
  v5 = *(v0 + 24);
  v0 = sub_254134D04(v0, v1);
  v4 = v5 - v6;
  if (__OFSUB__(v5, v6))
  {
    __break(1u);
LABEL_8:
    v7 = HIDWORD(v0);
    v8 = v0;
    result = sub_254134D04(v0, v1);
    LODWORD(v4) = v7 - v8;
    if (__OFSUB__(v7, v8))
    {
LABEL_14:
      __break(1u);
      return result;
    }

    v4 = v4;
  }

LABEL_11:
  result = v4 + 4;
  if (__OFADD__(v4, 4))
  {
    __break(1u);
    goto LABEL_14;
  }

  return result;
}

unint64_t sub_2541A5D00()
{
  result = qword_27F5BA028[0];
  if (!qword_27F5BA028[0])
  {
    sub_25424D548();
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F5BA028);
  }

  return result;
}

uint64_t sub_2541A5D60()
{
  sub_25424DD28();
  v0 = os_variant_allows_internal_security_policies();

  if (v0)
  {
    sub_25424DD28();
    has_internal_diagnostics = os_variant_has_internal_diagnostics();
  }

  else
  {
    has_internal_diagnostics = 0;
  }

  byte_281407088 = has_internal_diagnostics;
  return result;
}

uint64_t static OSVariant.isInternalBuild.getter()
{
  if (qword_281407080 != -1)
  {
    swift_once();
  }

  return byte_281407088;
}

uint64_t DiscardingAsyncCache.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a3;
  return MEMORY[0x2822009F8](sub_2541A5E78, 0, 0);
}

uint64_t sub_2541A5E78()
{
  (*(*(*(v0[3] + 24) - 8) + 56))(v0[2], 1, 1);
  v1 = v0[1];

  return v1();
}

uint64_t DiscardingAsyncCache.get(_:)(uint64_t a1, void *a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v6 = a2[2];
  v5 = a2[3];
  v7 = a2[4];
  *v4 = v2;
  v4[1] = sub_2541A5FB8;

  return sub_2541A66FC(v6, v5, v7);
}

uint64_t sub_2541A5FB8(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_2541A60DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25412F724;

  return DiscardingAsyncCache.subscript.getter(a1, v6, a3);
}

uint64_t sub_2541A617C(uint64_t a1, void *a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v6 = a2[2];
  v5 = a2[3];
  v7 = a2[4];
  *v4 = v2;
  v4[1] = sub_2541A67F0;

  return sub_2541A66FC(v6, v5, v7);
}

unint64_t sub_2541A622C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25424DC18();

  return sub_2541A6288(a1, v6, a2, a3);
}

unint64_t sub_2541A6288(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21[1] = a1;
  v21[2] = a4;
  MEMORY[0x28223BE20](a1);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v4;
  v9 = -1 << *(v4 + 32);
  v11 = v10 & ~v9;
  v21[0] = v4 + 64;
  if ((*(v4 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v9;
    v15 = *(v6 + 16);
    v13 = v6 + 16;
    v14 = v15;
    v16 = *(v13 + 56);
    v17 = (v13 - 8);
    do
    {
      v18 = v13;
      v14(v8, *(v22 + 48) + v16 * v11, a3);
      v19 = sub_25424DC98();
      (*v17)(v8, a3);
      if (v19)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      v13 = v18;
    }

    while (((*(v21[0] + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

unint64_t sub_2541A6410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v12 = v23 - v11;
  if (sub_25424E008())
  {
    sub_25424E8A8();
    v13 = sub_25424E898();
  }

  else
  {
    v13 = MEMORY[0x277D84F98];
  }

  result = sub_25424E008();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (sub_25424DFF8())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_25424E6B8();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_2541A622C(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}

uint64_t sub_2541A66FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_2541A6720, 0, 0);
}

uint64_t sub_2541A6720()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  swift_getTupleTypeMetadata2();
  v4 = sub_25424DFD8();
  v5 = sub_2541A6410(v4, v3, v1, v2);

  v6 = v0[1];

  return v6(v5);
}

uint64_t collectDiagnostics(includeSensitiveData:)(uint64_t a1, char a2)
{
  *(v2 + 48) = a2;
  *(v2 + 16) = a1;
  return MEMORY[0x2822009F8](sub_2541A6818, 0, 0);
}

uint64_t sub_2541A6818()
{
  v1 = *(v0 + 48);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  *(v0 + 32) = v3;
  *v3 = v0;
  v3[1] = sub_2541A68F4;
  v4 = *(v0 + 16);

  return sub_2541A6A30(v4, sub_2541A7328, v2);
}

uint64_t sub_2541A68F4()
{
  v2 = *v1;
  *(v2 + 40) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_25412FA44, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_2541A6A30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_2541A6A54, 0, 0);
}

uint64_t sub_2541A6A54()
{
  type metadata accessor for XPCDiagnosticExtensionClient();
  v1 = swift_allocObject();
  *(v0 + 40) = v1;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0;
  v7 = *(v0 + 24);
  sub_2541FB7CC();
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *(v2 + 16) = v1;
  *(v2 + 24) = v7;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = sub_25424D418();
  *v3 = v0;
  v3[1] = sub_2541A6B88;
  v5 = *(v0 + 16);

  return MEMORY[0x2822008A0](v5, 0, 0, 0xD00000000000002BLL, 0x8000000254250B50, sub_2541A7330, v2, v4);
}

uint64_t sub_2541A6B88()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_2541A6D28;
  }

  else
  {

    v2 = sub_2541A6CA4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2541A6CA4()
{
  v1 = *(v0 + 40);
  [*(v1 + 16) invalidate];
  v2 = *(v1 + 16);
  *(v1 + 16) = 0;

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2541A6D28()
{
  v1 = *(v0 + 40);

  [*(v1 + 16) invalidate];
  v2 = *(v1 + 16);
  *(v1 + 16) = 0;

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2541A6DB0(uint64_t a1, void *a2, void (*a3)(void))
{
  v20 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8860, &qword_254252D40);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v20 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8868, &qword_254252D48);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v20 - v10;
  (*(v9 + 16))(&v20 - v10, a1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA0B0, &qword_2542583F8);
  v12 = swift_allocObject();
  swift_defaultActor_initialize();
  v13 = *(*v12 + 112);
  v14 = *(v9 + 56);
  v14(v12 + v13, 1, 1, v8);
  (*(v9 + 32))(v7, v11, v8);
  v14(v7, 0, 1, v8);
  swift_beginAccess();
  sub_2541A733C(v7, v12 + v13);
  swift_endAccess();
  v15 = a2[5];
  v16 = a2[6];
  a2[5] = sub_2541A73AC;
  a2[6] = v12;

  sub_25412DC98(v15, v16);
  v17 = a2[3];
  v18 = a2[4];
  a2[3] = sub_2541A73B4;
  a2[4] = v12;

  sub_25412DC98(v17, v18);
  sub_2541FBAB0();
  v20();

  return swift_unknownObjectRelease();
}

void sub_2541A7034(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B90C0, &qword_254253F20);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;
  sub_254132998();
  v5 = swift_allocError();
  *v6 = 0;
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  v8 = sub_25424E128();
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = a1;
  v9[5] = sub_2541A75A8;
  v9[6] = v7;
  v10 = v5;

  sub_25419CC1C(0, 0, v4, &unk_254258408, v9);
}

void sub_2541A71AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B90C0, &qword_254253F20);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;
  sub_254132998();
  v5 = swift_allocError();
  *v6 = 1;
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  v8 = sub_25424E128();
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = a1;
  v9[5] = sub_2541A7410;
  v9[6] = v7;
  v10 = v5;

  sub_25419CC1C(0, 0, v4, &unk_254258400, v9);
}

uint64_t sub_2541A733C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8860, &qword_254252D40);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2541A73BC(uint64_t a1, id *a2)
{
  v2 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8868, &qword_254252D48);
  return sub_25424E078();
}

uint64_t sub_2541A7418(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_25412F818;

  return sub_254131310(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_2541A74E0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_25412F724;

  return sub_254131310(a1, v4, v5, v6, v7, v8);
}

uint64_t QueryResultAsyncSequence.makeAsyncIterator()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA1F0, &qword_254258410);

  return sub_25424E178();
}

uint64_t sub_2541A75F4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA1F0, &qword_254258410);
  sub_25424E178();

  return sub_2541A7D90(v0);
}

uint64_t QueryResultAsyncSequence.Iterator.next()(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA0B8, &qword_254258420);
  *v3 = v1;
  v3[1] = sub_25412F724;

  return MEMORY[0x2822005B0](a1, v4);
}

unint64_t sub_2541A7704()
{
  result = qword_27F5BA0C0;
  if (!qword_27F5BA0C0)
  {
    type metadata accessor for QueryResultAsyncSequence.Iterator(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA0C0);
  }

  return result;
}

uint64_t sub_2541A777C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA0B8, &qword_254258420);
  *v3 = v1;
  v3[1] = sub_25412F818;

  return MEMORY[0x2822005B0](a1, v4);
}

uint64_t sub_2541A7838(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a3;
  v6[5] = a4;
  v6[3] = a2;
  v10 = swift_task_alloc();
  v6[6] = v10;
  *v10 = v6;
  v10[1] = sub_2541A78F4;

  return MEMORY[0x282200308](a1, a5, a6);
}

uint64_t sub_2541A78F4()
{
  v2 = *v1;
  v2[7] = v0;

  if (v0)
  {
    if (v2[3])
    {
      swift_getObjectType();
      v3 = sub_25424E058();
      v5 = v4;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    return MEMORY[0x2822009F8](sub_2541A7A64, v3, v5);
  }

  else
  {
    v6 = v2[1];

    return v6();
  }
}

uint64_t sub_2541A7A64()
{
  v1 = v0[7];
  v2 = v0[5];
  v0[2] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BAF10, &qword_254253F40);
  swift_willThrowTypedImpl();
  *v2 = v1;
  v3 = v0[1];

  return v3();
}

uint64_t __swift_get_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v8 = *(*(v7 - 8) + 48);

  return v8(a1, a2, v7);
}

uint64_t __swift_store_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v9 = *(*(v8 - 8) + 56);

  return v9(a1, a2, a2, v8);
}

void sub_2541A7C98(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, void))
{
  sub_2541A7D0C(319, a4, a5);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_2541A7D0C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    v6 = type metadata accessor for SomeEvent(255);
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5BAF10, &qword_254253F40);
    v8 = a3(a1, v6, v7, MEMORY[0x277D84950]);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_2541A7D90(uint64_t a1)
{
  ResultAsyncSequence = type metadata accessor for QueryResultAsyncSequence(0);
  (*(*(ResultAsyncSequence - 8) + 8))(a1, ResultAsyncSequence);
  return a1;
}

HomeKitEvents::SecuritySystemEvent::State_optional __swiftcall SecuritySystemEvent.State.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue > 8)
  {
    *v1 = 8;
  }

  else
  {
    *v1 = byte_25425882E[rawValue];
  }

  return rawValue;
}

uint64_t sub_2541A7E58()
{
  v1 = *v0;
  sub_25424EBD8();
  MEMORY[0x259C06AA0](qword_254258870[v1]);
  return sub_25424EC28();
}

uint64_t sub_2541A7EE0(uint64_t a1)
{
  v2 = *v1;
  sub_25424EBD8();
  MEMORY[0x259C06AA0](qword_254258870[v2]);
  return sub_25424EC28();
}

uint64_t SecuritySystemEvent.state.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for SecuritySystemEvent(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t type metadata accessor for SecuritySystemEvent(uint64_t a1)
{
  result = qword_27F5BA170;
  if (!qword_27F5BA170)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SecuritySystemEvent.init(date:homeIdentifier:roomIdentifier:roomName:accessoryIdentifier:accessoryName:state:userIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char *a10, uint64_t a11)
{
  v30 = *a10;
  v17 = sub_25424D8B8();
  (*(*(v17 - 8) + 32))(a9, a1, v17);
  v18 = type metadata accessor for EventBase(0);
  v19 = v18[5];
  v20 = sub_25424D948();
  v21 = *(*(v20 - 8) + 32);
  v21(a9 + v19, a2, v20);
  *(a9 + v18[6]) = 2;
  v22 = (a9 + v18[7]);
  *v22 = 15;
  v23 = type metadata accessor for AccessoryEventBase(0);
  v22[1] = 0;
  v22[2] = 0;
  v21(a9 + v23[5], a3, v20);
  v24 = (a9 + v23[6]);
  *v24 = a4;
  v24[1] = a5;
  v21(a9 + v23[7], a6, v20);
  v25 = (a9 + v23[8]);
  *v25 = a7;
  v25[1] = a8;
  sub_25414A348(a11, a9 + v23[9]);
  result = type metadata accessor for SecuritySystemEvent(0);
  *(a9 + *(result + 20)) = v30;
  return result;
}

uint64_t SecuritySystemEvent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for AccessoryEventBaseLegacy(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v11[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_254140708(a1, v11);
  sub_254231924(v11, v7);
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_254148F44(a1, v11);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v9 = v11[0];
  sub_25414A414(v7, a2);
  result = type metadata accessor for SecuritySystemEvent(0);
  *(a2 + *(result + 20)) = v9;
  return result;
}

uint64_t SecuritySystemEvent.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8E60, &qword_254254A10);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9[-v6];
  result = sub_254231F94(a1);
  if (!v2)
  {
    v9[15] = *(v1 + *(type metadata accessor for SecuritySystemEvent(0) + 20));
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_25412F1C4();
    sub_25424EC78();
    v9[14] = 1;
    sub_2541A83F4();
    sub_25424EA18();
    return (*(v5 + 8))(v7, v4);
  }

  return result;
}

unint64_t sub_2541A83F4()
{
  result = qword_27F5BA0F8;
  if (!qword_27F5BA0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA0F8);
  }

  return result;
}

uint64_t SecuritySystemEvent.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25424D8B8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t SecuritySystemEvent.category.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for EventBase(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t SecuritySystemEvent.roomName.getter()
{
  v1 = *(v0 + *(type metadata accessor for AccessoryEventBase(0) + 24));

  return v1;
}

uint64_t SecuritySystemEvent.accessoryIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AccessoryEventBase(0) + 28);
  v4 = sub_25424D948();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SecuritySystemEvent.accessoryName.getter()
{
  v1 = *(v0 + *(type metadata accessor for AccessoryEventBase(0) + 32));

  return v1;
}

uint64_t SecuritySystemEvent.userIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AccessoryEventBase(0) + 36);

  return sub_254149770(v3, a1);
}

BOOL static SecuritySystemEvent.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (!_s13HomeKitEvents9FakeEventV2eeoiySbAC_ACtFZ_0(a1, a2))
  {
    return 0;
  }

  v4 = type metadata accessor for SecuritySystemEvent(0);
  return qword_254258870[*(a1 + *(v4 + 20))] == qword_254258870[*(a2 + *(v4 + 20))];
}

uint64_t SecuritySystemEvent.hash(into:)(uint64_t a1)
{
  v2 = sub_25424D948();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B8E50, &qword_254254390);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v13 - v7;
  sub_25424D8B8();
  sub_2541A8E70(&qword_27F5B89C0, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_25424DC28();
  v9 = type metadata accessor for EventBase(0);
  sub_2541A8E70(&qword_27F5B89A8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_25424DC28();
  MEMORY[0x259C06AA0](qword_254258838[*(v1 + *(v9 + 24))]);
  v10 = type metadata accessor for AccessoryEventBase(0);
  sub_25424DC28();
  sub_25424DD88();
  sub_25424DC28();
  sub_25424DD88();
  sub_254149770(v1 + *(v10 + 36), v8);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    sub_25424EBF8();
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    sub_25424EBF8();
    sub_25424DC28();
    (*(v3 + 8))(v5, v2);
  }

  v11 = type metadata accessor for SecuritySystemEvent(0);
  return MEMORY[0x259C06AA0](qword_254258870[*(v1 + *(v11 + 20))]);
}

uint64_t SecuritySystemEvent.hashValue.getter()
{
  sub_25424EBD8();
  SecuritySystemEvent.hash(into:)(v1);
  return sub_25424EC28();
}

uint64_t sub_2541A8A20()
{
  sub_25424EBD8();
  SecuritySystemEvent.hash(into:)(v1);
  return sub_25424EC28();
}

uint64_t sub_2541A8A64(uint64_t a1)
{
  sub_25424EBD8();
  SecuritySystemEvent.hash(into:)(v2);
  return sub_25424EC28();
}

unint64_t sub_2541A8BBC()
{
  result = qword_27F5BA100;
  if (!qword_27F5BA100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA100);
  }

  return result;
}

unint64_t sub_2541A8C14()
{
  result = qword_27F5BA108;
  if (!qword_27F5BA108)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5BA110, &qword_2542585B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA108);
  }

  return result;
}

unint64_t sub_2541A8C7C()
{
  result = qword_27F5BA118;
  if (!qword_27F5BA118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA118);
  }

  return result;
}

uint64_t sub_2541A8CD0(void *a1)
{
  a1[1] = sub_2541A8E70(&qword_27F5BA128, type metadata accessor for SecuritySystemEvent, &protocol conformance descriptor for SecuritySystemEvent);
  a1[2] = sub_2541A8E70(&qword_27F5BA130, type metadata accessor for SecuritySystemEvent, &protocol conformance descriptor for SecuritySystemEvent);
  result = sub_2541A8E70(&qword_27F5BA138, type metadata accessor for SecuritySystemEvent, &protocol conformance descriptor for SecuritySystemEvent);
  a1[3] = result;
  return result;
}

uint64_t sub_2541A8DC4(void *a1)
{
  a1[1] = sub_2541A8E70(&qword_27F5BA148, type metadata accessor for SecuritySystemEvent, &protocol conformance descriptor for SecuritySystemEvent);
  a1[2] = sub_2541A8E70(&qword_27F5BA150, type metadata accessor for SecuritySystemEvent, &unk_2542586E0);
  result = sub_2541A8E70(&qword_27F5BA158, type metadata accessor for SecuritySystemEvent, &protocol conformance descriptor for SecuritySystemEvent);
  a1[3] = result;
  return result;
}

uint64_t sub_2541A8E70(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2541A8F00(void *a1)
{
  a1[1] = sub_25414ADD0();
  a1[2] = sub_2541A83F4();
  result = sub_2541A8F38();
  a1[3] = result;
  return result;
}

unint64_t sub_2541A8F38()
{
  result = qword_27F5BA160;
  if (!qword_27F5BA160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA160);
  }

  return result;
}

unint64_t sub_2541A8F8C(uint64_t a1)
{
  result = sub_2541A8FB4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2541A8FB4()
{
  result = qword_27F5BA168;
  if (!qword_27F5BA168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA168);
  }

  return result;
}

unint64_t sub_2541A9008(uint64_t a1)
{
  result = sub_2541A8C7C();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2541A9058(uint64_t a1)
{
  result = type metadata accessor for AccessoryEventBaseLegacy(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_2541A90DC()
{
  result = qword_27F5BA180;
  if (!qword_27F5BA180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA180);
  }

  return result;
}

uint64_t sub_2541A9134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B90C0, &qword_254253F20);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_254132DF4(a3, v22 - v9, &unk_27F5B90C0, &qword_254253F20);
  v11 = sub_25424E128();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_254132E5C(v10, &unk_27F5B90C0, &qword_254253F20);
  }

  else
  {
    sub_25424E118();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_25424E058();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_25424DD28() + 32;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B8DF0, &qword_254253F38);
      v19 = (v17 | v15);
      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_254132E5C(a3, &unk_27F5B90C0, &qword_254253F20);

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

  sub_254132E5C(a3, &unk_27F5B90C0, &qword_254253F20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B8DF0, &qword_254253F38);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_2541A93F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B90C0, &qword_254253F20);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_254132DF4(a3, v22 - v9, &unk_27F5B90C0, &qword_254253F20);
  v11 = sub_25424E128();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_254132E5C(v10, &unk_27F5B90C0, &qword_254253F20);
  }

  else
  {
    sub_25424E118();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_25424E058();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_25424DD28() + 32;

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

      sub_254132E5C(a3, &unk_27F5B90C0, &qword_254253F20);

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

  sub_254132E5C(a3, &unk_27F5B90C0, &qword_254253F20);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

void *QueryController.__allocating_init()()
{
  v1 = v0;
  if (qword_27F5B8468 != -1)
  {
    swift_once();
  }

  v2 = *(off_27F5BAFB0 + 2);
  MetricsObserver = type metadata accessor for QueryMetricsObserver();
  v4 = sub_2541BE050();
  ObjectType = swift_getObjectType();
  LOBYTE(v14[0]) = v4 & 1;
  v6 = vdupq_n_s64(v4);
  *v6.i8 = vand_s8(vmovn_s32(vuzp1q_s32(vshlq_u64(v6, xmmword_2542588C0), vshlq_u64(v6, xmmword_2542588B0))), 0x1000100010001);
  *(v14 + 1) = vuzp1_s8(*v6.i8, *v6.i8).u32[0];
  swift_unknownObjectRetain();
  v7 = sub_25414BE2C(v14, v2, MetricsObserver, &type metadata for Configuration.DefaultFeaturesDataSource, ObjectType, &off_2866378F0);
  sub_25414AE28(v2);
  v8 = sub_2541BE050();
  type metadata accessor for Configuration();
  swift_unknownObjectRetain();
  v9 = sub_2541BC434();
  sub_2541A9928(v14, v9);
  v12 = v8 & 1;
  v10 = vdupq_n_s64(v8);
  *v10.i8 = vand_s8(vmovn_s32(vuzp1q_s32(vshlq_u64(v10, xmmword_2542588C0), vshlq_u64(v10, xmmword_2542588B0))), 0x1000100010001);
  v13 = vuzp1_s8(*v10.i8, *v10.i8).u32[0];
  return sub_2541AEB20(&v12, v7, v2, 0, v14, v1, &type metadata for Configuration.DefaultFeaturesDataSource, ObjectType, &off_2866378F0);
}

uint64_t QueryController.deinit()
{
  v1 = *(*(v0 + 56) + OBJC_IVAR____TtC13HomeKitEvents20QueryMetricsObserver_logEventDispatcher);
  if (v1)
  {
    [v1 removeObserver_];
  }

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 80));
  return v0;
}

uint64_t QueryController.__deallocating_deinit()
{
  v1 = *(*(v0 + 56) + OBJC_IVAR____TtC13HomeKitEvents20QueryMetricsObserver_logEventDispatcher);
  if (v1)
  {
    [v1 removeObserver_];
  }

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 80));

  return MEMORY[0x2821FE8D8](v0, 120, 7);
}

double *sub_2541A9928@<X0>(double **a1@<X8>, double a2@<D0>)
{
  if (a2 <= 0.0)
  {
    if (a2 != 0.0)
    {
      a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8FF8, &qword_254254398);
      result = sub_25414081C(&unk_27F5B9000, &qword_27F5B8FF8, &qword_254254398, &protocol conformance descriptor for DiscardingAsyncCache<A, B>);
      a1[4] = result;
      return result;
    }

    v4 = &qword_27F5BA208;
    v5 = &qword_254258968;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA208, &qword_254258968);
    v7 = swift_allocObject();
    swift_defaultActor_initialize();
    *(v7 + 112) = MEMORY[0x277D84F98];
    a1[3] = v10;
    v8 = &unk_27F5BA210;
    v9 = &protocol conformance descriptor for SimpleAsyncCache<A, B>;
  }

  else
  {
    v4 = &qword_27F5BA218;
    v5 = &qword_254258970;
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA218, &qword_254258970);
    v7 = swift_allocObject();
    swift_defaultActor_initialize();
    *(v7 + 120) = MEMORY[0x277D84F98];
    *(v7 + 128) = 0;
    *(v7 + 112) = a2;
    a1[3] = v6;
    v8 = &unk_27F5BA220;
    v9 = &protocol conformance descriptor for ExpiringAsyncCache<A, B>;
  }

  result = sub_25414081C(v8, v4, v5, v9);
  a1[4] = result;
  *a1 = v7;
  return result;
}

uint64_t (*sub_2541A9A9C(char *a1))()
{
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA190, &qword_2542543A0);
  v2 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v20 = &v20 - v3;
  v23 = sub_25424D8B8();
  v21 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for EventQuery(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA1F0, &qword_254258410);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v13 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v20 - v14;
  sub_2541A9DDC(a1, v8);
  sub_25424D898();
  v24 = v8;
  v25 = v5;
  type metadata accessor for SomeEvent(0);
  (*(v2 + 104))(v20, *MEMORY[0x277D858A0], v22);
  sub_25424E278();
  (*(v21 + 8))(v5, v23);
  sub_2541AEBEC(v8);
  v16 = *(v10 + 32);
  v16(v13, v15, v9);
  v17 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v18 = swift_allocObject();
  v16((v18 + v17), v13, v9);
  return sub_2541AF020;
}

uint64_t sub_2541A9DDC@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v96 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B8E50, &qword_254254390);
  MEMORY[0x28223BE20](v5 - 8);
  v120 = &v95 - v6;
  v98 = sub_25424D218();
  v97 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v112 = &v95 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = type metadata accessor for EventQuery.Configuration(0);
  v8 = MEMORY[0x28223BE20](v114);
  v107 = &v95 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v95 = &v95 - v10;
  v109 = sub_25424E128();
  v108 = *(v109 - 1);
  MEMORY[0x28223BE20](v109);
  v106 = &v95 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_25424D8B8();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v99 = &v95 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v95 - v17;
  v101 = &v95 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v95 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v95 - v22;
  v113 = &v95 - v22;
  v111 = sub_25424D948();
  v119 = *(v111 - 8);
  v24 = MEMORY[0x28223BE20](v111);
  v118 = &v95 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v116 = &v95 - v27;
  MEMORY[0x28223BE20](v26);
  v123 = &v95 - v28;
  sub_25424D938();
  v102 = *(v3 + 56);
  v29 = v102;
  Base = type metadata accessor for QueryBase(0);
  v31 = *(v13 + 16);
  v105 = Base[5];
  (v31)(v23, &a1[v105], v12);
  v104 = Base[6];
  v121 = v21;
  (v31)(v21, &a1[v104], v12);
  v32 = Base[7];
  v103 = Base[8];
  v117 = *&a1[v32];
  v110 = a1;
  LODWORD(v115) = a1[v103];
  sub_254140708(v29 + OBJC_IVAR____TtC13HomeKitEvents20QueryMetricsObserver_features, &v131);
  (v31)(v18, v23, v12);
  v33 = v99;
  (v31)(v99, v21, v12);
  LogEvent = type metadata accessor for QueryLogEvent(0);
  v34 = objc_allocWithZone(LogEvent);
  v35 = &v34[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_queryStartTime];
  *v35 = 0;
  v35[8] = 1;
  *&v34[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_numFetchedCKRecords] = 0;
  *&v34[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_totalCKRecordSize] = 0;
  *&v34[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_numCKQueries] = 0;
  *&v34[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_numCKQueriesSucceeded] = 0;
  v34[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_ckQueryCancelled] = 0;
  v34[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_ckQueryDroppedEvents] = 0;
  v34[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_ckQueryReachedLimit] = 0;
  v34[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_ckQueryTerminatedStream] = 0;
  v34[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_ckQueryResultNotHandled] = 0;
  v34[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_ckQueryResultProcessingEncounteredError] = 0;
  v34[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_ckQueryEncounteredError] = 0;
  v36 = &v34[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_ckQueryExecutionStartTime];
  *v36 = 0;
  v36[8] = 1;
  v37 = &v34[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_ckQueryExecutionEndTime];
  *v37 = 0;
  v37[8] = 1;
  *&v34[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_numProcessedEvents] = 0;
  *&v34[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_numIgnoredExpiredRecords] = 0;
  *&v34[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_numIgnoredNoCreationDateRecords] = 0;
  *&v34[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_numIgnoredNonUUIDNameRecords] = 0;
  *&v34[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_numEventsSavedToCache] = 0;
  *&v34[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_numEmittedEvents] = 0;
  v34[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_processingDroppedEvents] = 0;
  v34[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_processingReachedLimit] = 0;
  v34[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_processingTerminatedStream] = 0;
  v34[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_processingResultNotHandled] = 0;
  v34[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_processingEncounteredError] = 0;
  v34[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_cancelled] = 0;
  v34[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_succeeded] = 0;
  v38 = &v34[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_coreAnalyticsEventName];
  *v38 = 0xD000000000000027;
  v38[1] = 0x8000000254250B80;
  *&v34[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_coreAnalyticsEventOptions] = 0;
  v39 = v132;
  v40 = v133;
  __swift_project_boxed_opaque_existential_1(&v131, v132);
  v34[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_subqueriesEnabled] = (*(v40 + 16))(v39, v40) & 1;
  v41 = v101;
  (v31)(&v34[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_queryStartDate], v101, v12);
  (v31)(&v34[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_queryEndDate], v33, v12);
  *&v34[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_limit] = v117;
  v34[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_queryType] = 1;
  v34[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_scope] = v115;
  v130.receiver = v34;
  v130.super_class = LogEvent;
  v42 = objc_msgSendSuper2(&v130, sel_init);
  v43 = *(v13 + 8);
  (v43)(v33, v12);
  (v43)(v41, v12);
  __swift_destroy_boxed_opaque_existential_1(&v131);
  v44 = *(v102 + OBJC_IVAR____TtC13HomeKitEvents20QueryMetricsObserver_pendingQueryLogEvents);
  os_unfair_lock_lock((v44 + 24));
  v45 = v42;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v131 = *(v44 + 16);
  *(v44 + 16) = 0x8000000000000000;
  v47 = v123;
  sub_2541AE4A0(v45, v123, isUniquelyReferenced_nonNull_native);
  *(v44 + 16) = v131;
  os_unfair_lock_unlock((v44 + 24));

  (v43)(v121, v12);
  v48 = v113;
  v43();
  v49 = v122;
  v115 = *(v122 + 64);
  v50 = v106;
  sub_25424E1D8();
  v102 = sub_2541A50D4();
  (*(v108 + 8))(v50, v109);
  v51 = *(v49 + 72);
  sub_254140708(v49 + 16, &v131);
  v52 = v103;
  v53 = v47;
  v54 = v116;
  v55 = v51;
  if (v51)
  {
    goto LABEL_4;
  }

  v56 = v103;
  v48 = v116;
  if (qword_27F5B8420 != -1)
  {
    goto LABEL_24;
  }

  while (1)
  {
    v55 = qword_27F5BA548;
    v57 = qword_27F5BA548;
    v53 = v123;
    v54 = v48;
    v48 = v113;
    v52 = v56;
LABEL_4:
    v106 = v55;
    v58 = v110;
    v103 = *(v52 + v110);
    v59 = v119;
    v60 = v31;
    v62 = v119 + 16;
    v61 = *(v119 + 16);
    v63 = v111;
    v61(v54, v53, v111);
    v109 = v61;
    v108 = v62;
    v61(v118, v58, v63);
    v60(v48, &v58[v105], v12);
    v60(v121, &v58[v104], v12);
    v64 = v51;
    v65 = v112;
    sub_25424D1E8();
    v66 = type metadata accessor for HomeQuery(0);
    v12 = *&v58[*(v66 + 20)];
    (*(v59 + 56))(v120, 1, 1, v63);
    LODWORD(v62) = v58[*(v66 + 24)];
    sub_254140708(v122 + 80, &v128);
    v51 = v63;
    LODWORD(v121) = v62;
    if (!v12 || !sub_2541538B4(6, v12))
    {
      break;
    }

    *&v125 = MEMORY[0x277D84FA0];
    v67 = 1 << *(v12 + 32);
    v68 = -1;
    if (v67 < 64)
    {
      v68 = ~(-1 << v67);
    }

    v31 = v68 & *(v12 + 56);
    v69 = (v67 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    swift_unknownObjectRetain();
    v70 = 0;
    v56 = v107;
    while (v31)
    {
      v71 = v70;
LABEL_15:
      v72 = __clz(__rbit64(v31));
      v31 &= v31 - 1;
      v73 = *(*(v12 + 48) + (v72 | (v71 << 6)));
      if (v73 >= 6)
      {
        sub_254168D1C(&v124, 0);
        sub_254168D1C(&v124, 1);
        v73 = 2;
      }

      sub_254168D1C(&v124, v73);
      v70 = v71;
    }

    while (1)
    {
      v71 = v70 + 1;
      if (__OFADD__(v70, 1))
      {
        break;
      }

      if (v71 >= v69)
      {

        v75 = v125;
        v74 = v112;
        v51 = v111;
        goto LABEL_19;
      }

      v31 = *(v12 + 56 + 8 * v71);
      ++v70;
      if (v31)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_24:
    swift_once();
  }

  v74 = v65;

  swift_unknownObjectRetain();
  v75 = 0;
  v56 = v107;
LABEL_19:
  v76 = v12;
  v77 = v103 | 0x8000000000000000;
  sub_254140708(&v131, v56);
  v56[5] = v106;
  v56[6] = v77;
  v56[7] = 0;
  v78 = v114;
  v79 = v116;
  v80 = v109;
  v109(v56 + *(v114 + 24), v116, v51);
  v81 = v118;
  v80(v56 + v78[7], v118, v51);
  v82 = v97;
  v83 = v98;
  (*(v97 + 16))(v56 + v78[8], v74, v98);
  *(v56 + v78[9]) = v76;
  *(v56 + v78[10]) = v75;
  v84 = v120;
  sub_254132DF4(v120, v56 + v78[11], &unk_27F5B8E50, &qword_254254390);
  v85 = v56 + v78[12];
  *v85 = v117;
  v85[8] = 0;
  *(v56 + v78[13]) = 0;
  *(v56 + v78[14]) = 0;
  v86 = v56 + v78[15];
  *v86 = v102;
  v86[8] = 0;
  sub_254132E5C(v84, &unk_27F5B8E50, &qword_254254390);
  (*(v82 + 8))(v74, v83);
  v87 = *(v119 + 8);
  v88 = v81;
  v89 = v51;
  v87(v88, v51);
  v87(v79, v51);
  __swift_destroy_boxed_opaque_existential_1(&v131);
  *(v56 + v78[16]) = v115;
  *(v56 + v78[17]) = 24;
  if (v129)
  {
    sub_25412DC4C(&v128, &v125);
  }

  else
  {
    v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8FF8, &qword_254254398);
    v127 = sub_25414081C(&unk_27F5B9000, &qword_27F5B8FF8, &qword_254254398, &protocol conformance descriptor for DiscardingAsyncCache<A, B>);
  }

  v90 = v96;
  v91 = v95;
  v92 = v121;
  v93 = v114;
  sub_25412DC4C(&v125, v56 + *(v114 + 72));
  *(v56 + v93[19]) = 3000;
  *(v56 + v93[20]) = 5;
  *(v56 + v93[21]) = 0;
  *(v56 + v93[22]) = v92;
  sub_2541AEFB8(v56, v91, type metadata accessor for EventQuery.Configuration);
  sub_25414C6E4(v91, v90);
  return (v87)(v123, v89);
}

uint64_t sub_2541AACB8(char *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA190, &qword_2542543A0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11[-v4];
  ResultAsyncSequence = type metadata accessor for QueryResultAsyncSequence(0);
  MEMORY[0x28223BE20](ResultAsyncSequence);
  v7 = type metadata accessor for EventQuery(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2541A9DDC(a1, v9);
  v12 = v9;
  type metadata accessor for SomeEvent(0);
  (*(v3 + 104))(v5, *MEMORY[0x277D858A0], v2);
  sub_25424E278();
  sub_2541AEC48(&qword_27F5BA198, type metadata accessor for QueryResultAsyncSequence, &protocol conformance descriptor for QueryResultAsyncSequence);
  sub_25424EA48();
  return sub_2541AEBEC(v9);
}

uint64_t sub_2541AAEEC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BA1D0, &unk_2542544C0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - v6;
  v8 = type metadata accessor for EventQuery(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B90C0, &qword_254253F20);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v20 - v13;
  v15 = sub_25424E128();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  sub_2541AEDF4(a2, v11, type metadata accessor for EventQuery);
  (*(v5 + 16))(v7, a1, v4);
  v16 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v17 = (v10 + *(v5 + 80) + v16) & ~*(v5 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  sub_2541AEFB8(v11, v18 + v16, type metadata accessor for EventQuery);
  (*(v5 + 32))(v18 + v17, v7, v4);
  sub_2541A93F0(0, 0, v14, &unk_254258950, v18);
}

uint64_t sub_2541AB198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v6 = type metadata accessor for SomeEvent(0);
  v5[6] = v6;
  v5[7] = *(v6 - 8);
  v5[8] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BA1E0, &qword_254254560);
  v5[9] = v7;
  v5[10] = *(v7 - 8);
  v5[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9110, &qword_254254530);
  v5[12] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA190, &qword_2542543A0);
  v5[13] = v8;
  v5[14] = *(v8 - 8);
  v5[15] = swift_task_alloc();
  v9 = sub_25424D8B8();
  v5[16] = v9;
  v5[17] = *(v9 - 8);
  v5[18] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA1F0, &qword_254258410);
  v5[19] = v10;
  v5[20] = *(v10 - 8);
  v5[21] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA0B8, &qword_254258420);
  v5[22] = v11;
  v5[23] = *(v11 - 8);
  v5[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2541AB48C, 0, 0);
}

uint64_t sub_2541AB48C(uint64_t a1)
{
  v3 = v1[20];
  v2 = v1[21];
  v4 = v1[18];
  v16 = v1[19];
  v5 = v1[17];
  v6 = v1[14];
  v7 = v1[15];
  v14 = v1[13];
  v15 = v1[16];
  v8 = v1[4];
  sub_25424D898();
  v9 = swift_task_alloc();
  *(v9 + 16) = v8;
  *(v9 + 24) = v4;
  (*(v6 + 104))(v7, *MEMORY[0x277D858A0], v14);
  sub_25424E278();

  (*(v5 + 8))(v4, v15);
  sub_25424E178();
  (*(v3 + 8))(v2, v16);
  v10 = swift_task_alloc();
  v1[25] = v10;
  *v10 = v1;
  v10[1] = sub_2541AB62C;
  v11 = v1[22];
  v12 = v1[12];

  return MEMORY[0x2822005A8](v12, 0, 0, v11, v1 + 2);
}

uint64_t sub_2541AB62C()
{

  if (v0)
  {
    v1 = sub_2541AB96C;
  }

  else
  {
    v1 = sub_2541AB73C;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_2541AB73C()
{
  v1 = v0[12];
  if ((*(v0[7] + 48))(v1, 1, v0[6]) == 1)
  {
    (*(v0[23] + 8))(v0[24], v0[22]);
    v0[3] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BA1D0, &unk_2542544C0);
    sub_25424E238();

    v2 = v0[1];

    return v2();
  }

  else
  {
    v5 = v0[10];
    v4 = v0[11];
    v6 = v0[9];
    sub_2541AEFB8(v1, v0[8], type metadata accessor for SomeEvent);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BA1D0, &unk_2542544C0);
    sub_25424E228();
    (*(v5 + 8))(v4, v6);
    v7 = swift_task_alloc();
    v0[25] = v7;
    *v7 = v0;
    v7[1] = sub_2541AB62C;
    v8 = v0[22];
    v9 = v0[12];

    return MEMORY[0x2822005A8](v9, 0, 0, v8, v0 + 2);
  }
}

uint64_t sub_2541AB96C()
{
  (*(v0[23] + 8))(v0[24], v0[22]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2541ABA44(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_2541ABA64, 0, 0);
}

uint64_t sub_2541ABA64()
{
  v1 = v0[2];
  sub_2541AEDF4(v0[3], v1, type metadata accessor for SomeEvent);
  v2 = type metadata accessor for SomeEvent(0);
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  v3 = v0[1];

  return v3();
}

uint64_t QueryController.start(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  boxed_opaque_existential_1 = a2;
  v106 = type metadata accessor for EventDigestQuery.Configuration(0);
  MEMORY[0x28223BE20](v106);
  v97 = &v85 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_25424D218();
  v103 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v101 = &v85 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for EventDigestQuery(0);
  MEMORY[0x28223BE20](v6 - 8);
  v105 = &v85 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_25424E128();
  v96 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v95 = &v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25424D8B8();
  v91 = *(v9 - 8);
  v10 = v91;
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = v13;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v85 - v15;
  v86 = &v85 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v85 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v85 - v20;
  v99 = sub_25424D948();
  v114 = *(v99 - 8);
  v22 = MEMORY[0x28223BE20](v99);
  v102 = &v85 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v111 = &v85 - v25;
  MEMORY[0x28223BE20](v24);
  v113 = &v85 - v26;
  sub_25424D938();
  v90 = *(v2 + 56);
  v27 = v90;
  Base = type metadata accessor for QueryBase(0);
  v108 = Base[5];
  v29 = *(v10 + 16);
  v88 = v21;
  v29(v21, a1 + v108, v9);
  v93 = Base[6];
  v110 = v19;
  v29(v19, a1 + v93, v9);
  v30 = Base[8];
  v112 = *(a1 + Base[7]);
  v98 = a1;
  v94 = v30;
  LODWORD(v89) = *(a1 + v30);
  sub_254140708(v27 + OBJC_IVAR____TtC13HomeKitEvents20QueryMetricsObserver_features, &v121);
  v29(v16, v21, v9);
  v29(v13, v19, v9);
  LogEvent = type metadata accessor for QueryLogEvent(0);
  v32 = objc_allocWithZone(LogEvent);
  v33 = &v32[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_queryStartTime];
  *v33 = 0;
  v33[8] = 1;
  *&v32[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_numFetchedCKRecords] = 0;
  *&v32[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_totalCKRecordSize] = 0;
  *&v32[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_numCKQueries] = 0;
  *&v32[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_numCKQueriesSucceeded] = 0;
  v32[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_ckQueryCancelled] = 0;
  v32[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_ckQueryDroppedEvents] = 0;
  v32[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_ckQueryReachedLimit] = 0;
  v32[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_ckQueryTerminatedStream] = 0;
  v32[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_ckQueryResultNotHandled] = 0;
  v32[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_ckQueryResultProcessingEncounteredError] = 0;
  v32[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_ckQueryEncounteredError] = 0;
  v34 = &v32[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_ckQueryExecutionStartTime];
  *v34 = 0;
  v34[8] = 1;
  v35 = &v32[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_ckQueryExecutionEndTime];
  *v35 = 0;
  v35[8] = 1;
  *&v32[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_numProcessedEvents] = 0;
  *&v32[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_numIgnoredExpiredRecords] = 0;
  *&v32[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_numIgnoredNoCreationDateRecords] = 0;
  *&v32[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_numIgnoredNonUUIDNameRecords] = 0;
  *&v32[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_numEventsSavedToCache] = 0;
  *&v32[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_numEmittedEvents] = 0;
  v32[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_processingDroppedEvents] = 0;
  v32[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_processingReachedLimit] = 0;
  v32[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_processingTerminatedStream] = 0;
  v32[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_processingResultNotHandled] = 0;
  v32[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_processingEncounteredError] = 0;
  v32[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_cancelled] = 0;
  v32[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_succeeded] = 0;
  v36 = &v32[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_coreAnalyticsEventName];
  *v36 = 0xD000000000000027;
  v36[1] = 0x8000000254250B80;
  *&v32[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_coreAnalyticsEventOptions] = 0;
  v37 = v122;
  v38 = v123;
  __swift_project_boxed_opaque_existential_1(&v121, v122);
  v32[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_subqueriesEnabled] = (*(v38 + 16))(v37, v38) & 1;
  v39 = v86;
  v29(&v32[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_queryStartDate], v86, v9);
  v40 = v87;
  v92 = v29;
  v29(&v32[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_queryEndDate], v87, v9);
  *&v32[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_limit] = v112;
  v32[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_queryType] = 2;
  v32[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_scope] = v89;
  v120.receiver = v32;
  v120.super_class = LogEvent;
  v41 = objc_msgSendSuper2(&v120, sel_init);
  v42 = *(v91 + 8);
  (v42)(v40, v9);
  (v42)(v39, v9);
  __swift_destroy_boxed_opaque_existential_1(&v121);
  v43 = *(v90 + OBJC_IVAR____TtC13HomeKitEvents20QueryMetricsObserver_pendingQueryLogEvents);
  os_unfair_lock_lock((v43 + 24));
  v44 = v41;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v121 = *(v43 + 16);
  *(v43 + 16) = 0x8000000000000000;
  sub_2541AE4A0(v44, v113, isUniquelyReferenced_nonNull_native);
  *(v43 + 16) = v121;
  v46 = v114;
  os_unfair_lock_unlock((v43 + 24));

  (v42)(v110, v9);
  v47 = v88;
  v42();
  v48 = v109;
  v90 = *(v109 + 64);
  v49 = v95;
  sub_25424E1D8();
  v50 = sub_2541A50D4();
  v51 = v108;
  v91 = v50;
  (*(v96 + 8))(v49, v107);
  v52 = *(v48 + 72);
  v107 = type metadata accessor for DigestQuery.AsyncEventSequence(0);
  v53 = boxed_opaque_existential_1;
  boxed_opaque_existential_1[3] = v107;
  v53[4] = sub_2541AEC48(&unk_27F5BA1A0, type metadata accessor for DigestQuery.AsyncEventSequence, &unk_25425DD10);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v53);
  v54 = v111;
  v55 = v52;
  if (!v52)
  {
    v56 = v111;
    if (qword_27F5B8420 != -1)
    {
      swift_once();
    }

    v55 = qword_27F5BA548;
    v57 = qword_27F5BA548;
    v54 = v56;
    v51 = v108;
  }

  v96 = v55;
  v58 = v98;
  v59 = v94;
  v95 = *(v98 + v94);
  v89 = *(v46 + 16);
  v60 = v99;
  v89(v54, v98, v99);
  v61 = v58 + v51;
  v62 = v9;
  v63 = v9;
  v64 = v92;
  v92(v47, v61, v62);
  v64(v110, v58 + v93, v63);
  v65 = v52;
  v66 = v101;
  sub_25424D1E8();
  LODWORD(v110) = *(v58 + v59);
  v67 = *(v58 + *(type metadata accessor for DigestQuery(0) + 20));
  v68 = v102;
  v69 = v113;
  v89(v102, v113, v60);
  sub_254140708(v109 + 16, &v121);
  sub_254132DF4(&v121, &v115, &qword_27F5BC7B0, &qword_2542588D8);
  v70 = v60;
  if (v116)
  {
    sub_25412DC4C(&v115, &v117);
    v71 = v90;
    swift_unknownObjectRetain();
  }

  else
  {
    v118 = &type metadata for Configuration.DefaultFeaturesDataSource;
    v119 = &off_2866378F0;
    v71 = v90;
    swift_unknownObjectRetain();
    v72 = sub_2541BE050();
    LOBYTE(v117) = v72 & 1;
    v73 = vdupq_n_s64(v72);
    *v73.i8 = vand_s8(vmovn_s32(vuzp1q_s32(vshlq_u64(v73, xmmword_2542588C0), vshlq_u64(v73, xmmword_2542588B0))), 0x1000100010001);
    *(&v117 + 1) = vuzp1_s8(*v73.i8, *v73.i8).u32[0];
    if (v116)
    {
      sub_254132E5C(&v115, &qword_27F5BC7B0, &qword_2542588D8);
    }
  }

  v74 = v95 | 0x8000000000000000;
  sub_254132E5C(&v121, &qword_27F5BC7B0, &qword_2542588D8);
  v75 = v97;
  sub_25412DC4C(&v117, v97);
  v76 = v96;
  *(v75 + 5) = v71;
  *(v75 + 6) = v76;
  *(v75 + 7) = v74;
  *(v75 + 8) = 0;
  v77 = v106;
  v78 = v114;
  v79 = *(v114 + 32);
  v79(&v75[*(v106 + 28)], v111, v70);
  (*(v103 + 32))(&v75[v77[8]], v66, v104);
  *&v75[v77[9]] = 0;
  v80 = &v75[v77[10]];
  *v80 = 0;
  v80[8] = 1;
  v75[v77[11]] = 0;
  v75[v77[12]] = 0;
  v75[v77[13]] = v110;
  v75[v77[14]] = v67;
  v79(&v75[v77[15]], v68, v70);
  *&v75[v77[16]] = v91;
  v81 = v105;
  sub_2541AEFB8(v75, v105, type metadata accessor for EventDigestQuery.Configuration);
  v82 = v81;
  v83 = boxed_opaque_existential_1;
  sub_2541AEFB8(v82, boxed_opaque_existential_1, type metadata accessor for EventDigestQuery);
  *(v83 + *(v107 + 20)) = v112;
  return (*(v78 + 8))(v69, v70);
}

uint64_t QueryController.energyKitOldestDigestStartDate(homeIdentifier:scope:qualityOfService:)(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4)
{
  *(v4 + 32) = *a3;
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_2541A4A28;

  return QueryController.energyKitOldestEventDate(homeIdentifier:scope:qualityOfService:)(a1, a2, (v4 + 32), a4);
}

uint64_t QueryController.energyKitOldestEventDate(homeIdentifier:scope:qualityOfService:)(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4)
{
  *(v5 + 88) = a4;
  *(v5 + 96) = v4;
  *(v5 + 72) = a1;
  *(v5 + 80) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BA1B0, qword_2542544A0);
  *(v5 + 104) = swift_task_alloc();
  *(v5 + 112) = swift_task_alloc();
  v7 = sub_25424D8B8();
  *(v5 + 120) = v7;
  *(v5 + 128) = *(v7 - 8);
  *(v5 + 136) = swift_task_alloc();
  *(v5 + 144) = swift_task_alloc();
  *(v5 + 152) = swift_task_alloc();
  *(v5 + 160) = swift_task_alloc();
  *(v5 + 168) = swift_task_alloc();
  *(v5 + 176) = swift_task_alloc();
  v8 = sub_25424D948();
  *(v5 + 184) = v8;
  *(v5 + 192) = *(v8 - 8);
  *(v5 + 200) = swift_task_alloc();
  *(v5 + 336) = *a3;

  return MEMORY[0x2822009F8](sub_2541ACACC, 0, 0);
}

uint64_t sub_2541ACACC(uint64_t a1)
{
  v52 = v1;
  v44 = *(v1 + 336);
  v3 = *(v1 + 168);
  v2 = *(v1 + 176);
  v4 = *(v1 + 152);
  v5 = *(v1 + 160);
  v42 = v5;
  v6 = *(v1 + 120);
  v7 = *(v1 + 128);
  v8 = *(v1 + 96);
  v47 = *(v1 + 200);
  v49 = v8;
  sub_25424D938();
  v9 = *(v8 + 56);
  v45 = v9;
  v46 = v2;
  sub_25424D6D8();
  sub_25424D7B8();
  sub_254140708(v9 + OBJC_IVAR____TtC13HomeKitEvents20QueryMetricsObserver_features, v1 + 16);
  v10 = *(v7 + 16);
  v10(v5, v2, v6);
  v10(v4, v3, v6);
  LogEvent = type metadata accessor for QueryLogEvent(0);
  v11 = objc_allocWithZone(LogEvent);
  v12 = &v11[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_queryStartTime];
  *v12 = 0;
  v12[8] = 1;
  *&v11[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_numFetchedCKRecords] = 0;
  *&v11[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_totalCKRecordSize] = 0;
  *&v11[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_numCKQueries] = 0;
  *&v11[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_numCKQueriesSucceeded] = 0;
  v11[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_ckQueryCancelled] = 0;
  v11[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_ckQueryDroppedEvents] = 0;
  v11[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_ckQueryReachedLimit] = 0;
  v11[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_ckQueryTerminatedStream] = 0;
  v11[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_ckQueryResultNotHandled] = 0;
  v11[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_ckQueryResultProcessingEncounteredError] = 0;
  v11[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_ckQueryEncounteredError] = 0;
  v13 = &v11[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_ckQueryExecutionStartTime];
  *v13 = 0;
  v13[8] = 1;
  v14 = &v11[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_ckQueryExecutionEndTime];
  *v14 = 0;
  v14[8] = 1;
  *&v11[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_numProcessedEvents] = 0;
  *&v11[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_numIgnoredExpiredRecords] = 0;
  *&v11[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_numIgnoredNoCreationDateRecords] = 0;
  *&v11[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_numIgnoredNonUUIDNameRecords] = 0;
  *&v11[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_numEventsSavedToCache] = 0;
  *&v11[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_numEmittedEvents] = 0;
  v11[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_processingDroppedEvents] = 0;
  v11[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_processingReachedLimit] = 0;
  v11[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_processingTerminatedStream] = 0;
  v11[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_processingResultNotHandled] = 0;
  v11[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_processingEncounteredError] = 0;
  v11[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_cancelled] = 0;
  v11[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_succeeded] = 0;
  v15 = &v11[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_coreAnalyticsEventName];
  *v15 = 0xD000000000000027;
  v15[1] = 0x8000000254250B80;
  *&v11[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_coreAnalyticsEventOptions] = 0;
  v17 = *(v1 + 40);
  v16 = *(v1 + 48);
  __swift_project_boxed_opaque_existential_1((v1 + 16), v17);
  v11[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_subqueriesEnabled] = (*(v16 + 16))(v17, v16) & 1;
  v10(&v11[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_queryStartDate], v42, v6);
  v10(&v11[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_queryEndDate], v4, v6);
  *&v11[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_limit] = 1;
  v11[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_queryType] = 2;
  v11[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_scope] = v44;
  *(v1 + 56) = v11;
  *(v1 + 64) = LogEvent;
  v18 = objc_msgSendSuper2((v1 + 56), sel_init);
  v19 = *(v7 + 8);
  v19(v4, v6);
  v19(v42, v6);
  __swift_destroy_boxed_opaque_existential_1((v1 + 16));
  v20 = *(v45 + OBJC_IVAR____TtC13HomeKitEvents20QueryMetricsObserver_pendingQueryLogEvents);
  os_unfair_lock_lock((v20 + 24));
  v21 = v18;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v51[0] = *(v20 + 16);
  *(v20 + 16) = 0x8000000000000000;
  sub_2541AE4A0(v21, v47, isUniquelyReferenced_nonNull_native);
  *(v20 + 16) = v51[0];
  os_unfair_lock_unlock((v20 + 24));

  v19(v3, v6);
  v19(v46, v6);
  v23 = *(v49 + 72);
  if (v23)
  {
    v24 = *(v49 + 72);
  }

  else
  {
    if (qword_27F5B8420 != -1)
    {
      swift_once();
    }

    v24 = qword_27F5BA548;
    v23 = 0;
  }

  *(v1 + 208) = v24;
  v50 = *(v1 + 336);
  v25 = *(v1 + 200);
  v26 = *(v1 + 80);
  v48 = *(v1 + 88);
  v27 = objc_allocWithZone(MEMORY[0x277CBC4F8]);
  v28 = v23;
  v29 = [v27 init];
  *(v1 + 216) = v29;
  v51[0] = v29;
  sub_2541ADC0C(v51, v24);
  *(v1 + 224) = sub_254148D7C(0, &unk_27F5B9010, 0x277CBC578);
  v30 = objc_opt_self();
  *(v1 + 232) = v30;
  v31 = [v30 predicateWithValue_];
  v32 = sub_25424E538();
  *(v1 + 240) = v32;
  *(v1 + 248) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BA1C0, &qword_2542543B0);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_254254370;
  v34 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v35 = sub_25424DCA8();
  v36 = [v34 initWithKey:v35 ascending:1];

  *(v33 + 32) = v36;
  *(v1 + 256) = sub_254148D7C(0, &unk_27F5B9020, 0x277CCAC98);
  v37 = sub_25424DF88();

  [v32 setSortDescriptors_];

  v38 = swift_task_alloc();
  *(v1 + 264) = v38;
  *(v38 + 16) = v26;
  *(v38 + 24) = 1;
  *(v38 + 32) = v32;
  *(v38 + 40) = v25;
  *(v38 + 48) = &unk_2866333A0;
  *(v38 + 56) = v48;
  v39 = swift_task_alloc();
  *(v1 + 272) = v39;
  *v39 = v1;
  v39[1] = sub_2541AD23C;
  v40 = *(v1 + 112);

  return sub_25414D344(v40, &unk_2542588F0, v38, v24, v50 | 0x8000000000000000, v29);
}

uint64_t sub_2541AD23C()
{
  *(*v1 + 280) = v0;

  if (v0)
  {
    v2 = sub_2541AD70C;
  }

  else
  {
    v2 = sub_2541AD370;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2541AD370()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);
  v3 = *(v0 + 112);

  v4 = *(v2 + 48);
  *(v0 + 288) = v4;
  *(v0 + 296) = (v2 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v4(v3, 1, v1) == 1)
  {
    v5 = *(v0 + 232);
    v29 = *(v0 + 336);
    v6 = *(v0 + 200);
    v30 = *(v0 + 208);
    v31 = *(v0 + 216);
    v7 = *(v0 + 80);
    v8 = *(v0 + 88);
    sub_254132E5C(*(v0 + 112), &unk_27F5BA1B0, qword_2542544A0);
    v9 = [v5 predicateWithValue_];
    v10 = sub_25424E538();
    *(v0 + 304) = v10;
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_254254370;
    v12 = objc_allocWithZone(MEMORY[0x277CCAC98]);
    v13 = sub_25424DCA8();
    v14 = [v12 initWithKey:v13 ascending:1];

    *(v11 + 32) = v14;
    v15 = sub_25424DF88();

    [v10 setSortDescriptors_];

    v16 = swift_task_alloc();
    *(v0 + 312) = v16;
    *(v16 + 16) = v7;
    *(v16 + 24) = 1;
    *(v16 + 32) = v10;
    *(v16 + 40) = v6;
    *(v16 + 48) = &unk_2866333D0;
    *(v16 + 56) = v8;
    *(v16 + 64) = 1702125924;
    *(v16 + 72) = 0xE400000000000000;
    v17 = swift_task_alloc();
    *(v0 + 320) = v17;
    *v17 = v0;
    v17[1] = sub_2541AD81C;
    v18 = *(v0 + 104);

    return sub_25414D344(v18, &unk_2542543C0, v16, v30, v29 | 0x8000000000000000, v31);
  }

  else
  {
    v21 = *(v0 + 208);
    v20 = *(v0 + 216);
    v22 = *(v0 + 144);
    v23 = *(v0 + 120);
    v24 = *(v0 + 128);
    v25 = *(v0 + 112);
    v26 = *(v0 + 72);
    (*(*(v0 + 192) + 8))(*(v0 + 200), *(v0 + 184));

    v27 = *(v24 + 32);
    v27(v22, v25, v23);
    v27(v26, v22, v23);
    (*(*(v0 + 128) + 56))(*(v0 + 72), 0, 1, *(v0 + 120));

    v28 = *(v0 + 8);

    return v28();
  }
}

uint64_t sub_2541AD70C()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);
  v3 = *(v0 + 192);

  (*(v3 + 8))(*(v0 + 200), *(v0 + 184));

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_2541AD81C()
{
  *(*v1 + 328) = v0;

  if (v0)
  {
    v2 = sub_2541ADB00;
  }

  else
  {
    v2 = sub_2541AD950;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2541AD950()
{
  v1 = *(v0 + 288);
  v3 = *(v0 + 208);
  v2 = *(v0 + 216);
  v5 = *(v0 + 192);
  v4 = *(v0 + 200);
  v6 = *(v0 + 184);
  v7 = *(v0 + 120);
  v8 = *(v0 + 104);

  (*(v5 + 8))(v4, v6);
  if (v1(v8, 1, v7) == 1)
  {
    sub_254132E5C(*(v0 + 104), &unk_27F5BA1B0, qword_2542544A0);
    v9 = 1;
  }

  else
  {
    v10 = *(v0 + 136);
    v11 = *(v0 + 120);
    v12 = *(v0 + 72);
    v13 = *(*(v0 + 128) + 32);
    v13(v10, *(v0 + 104), v11);
    v13(v12, v10, v11);
    v9 = 0;
  }

  (*(*(v0 + 128) + 56))(*(v0 + 72), v9, 1, *(v0 + 120));

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_2541ADB00()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);

  (*(*(v0 + 192) + 8))(*(v0 + 200), *(v0 + 184));

  v3 = *(v0 + 8);

  return v3();
}

void sub_2541ADC0C(void **a1, uint64_t a2)
{
  v3 = *a1;
  v16[2] = 0;
  v16[3] = 0xE000000000000000;
  sub_25424E688();
  v16[0] = 47;
  v16[1] = 0xE100000000000000;
  v15[2] = v16;
  v4 = sub_2541D870C(0x7FFFFFFFFFFFFFFFLL, 1, sub_254148F24, v15, 0xD000000000000023, 0x8000000254250C60, "encryptionKeyCache");
  if (v4[2])
  {
    v5 = v4[4];
    v6 = v4[5];
    v7 = v4[6];
    v8 = v4[7];

    v9 = MEMORY[0x259C05BF0](v5, v6, v7, v8);
    v11 = v10;

    MEMORY[0x259C05CA0](v9, v11);

    MEMORY[0x259C05CA0](0xD000000000000015, 0x8000000254250C90);
    v12 = sub_25424DCA8();

    [v3 setName_];

    v13 = [v3 defaultConfiguration];
    if (v13)
    {
      v14 = v13;
      [v13 setContainer_];

      return;
    }
  }

  else
  {

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_2541ADDC0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA1F0, &qword_254258410);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA0B8, &qword_254258420);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - v10;
  (*(v5 + 16))(v7, a1, v4);
  sub_25414081C(&qword_27F5BA1F8, &qword_27F5BA1F0, &qword_254258410, MEMORY[0x277D858E0]);
  sub_25424E208();
  *a2 = 0;
  a2[1] = 0;
  sub_25412DC98(0, 0);
  v12 = swift_allocBox();
  result = (*(v9 + 32))(v13, v11, v8);
  *a2 = &unk_254258960;
  a2[1] = v12;
  return result;
}

uint64_t sub_2541ADFB4(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA0B8, &qword_254258420);
  v2[7] = swift_projectBox();

  return MEMORY[0x2822009F8](sub_2541AE040, 0, 0);
}

uint64_t sub_2541AE040()
{
  swift_beginAccess();
  v1 = sub_25414081C(&qword_27F5BA200, &qword_27F5BA0B8, &qword_254258420, MEMORY[0x277D858D0]);
  v2 = swift_task_alloc();
  v0[8] = v2;
  *v2 = v0;
  v2[1] = sub_2541AE128;
  v3 = v0[6];
  v4 = v0[5];

  return MEMORY[0x282200308](v4, v3, v1);
}

uint64_t sub_2541AE128()
{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2541AE264, 0, 0);
  }

  else
  {
    swift_endAccess();
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_2541AE264()
{
  swift_endAccess();
  v1 = *(v0 + 8);

  return v1();
}

_OWORD *sub_2541AE2C8(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_25424E848();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_2542208F8(a2);
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
      sub_2542228C8();
      goto LABEL_7;
    }

    sub_254220E7C(v17, a3 & 1);
    v23 = sub_2542208F8(a2);
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
      return sub_2541AE938(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_25424EB38();
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

  return sub_25412DCA8(a1, v21);
}

void sub_2541AE4A0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_25424D948();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_2542209D4(a2);
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
      sub_254222CC4();
      goto LABEL_7;
    }

    sub_2542214DC(v17, a3 & 1);
    v23 = sub_2542209D4(a2);
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
      sub_2541AE9F8(v14, v11, a1, v20);
      return;
    }

LABEL_15:
    sub_25424EB38();
    __break(1u);
    return;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = *(v21 + 8 * v14);
  *(v21 + 8 * v14) = a1;
}

uint64_t sub_2541AE66C(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_25422095C(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_254222F38();
      v11 = v19;
      goto LABEL_8;
    }

    sub_2542218B8(v16, a4 & 1);
    v11 = sub_25422095C(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_25424EB38();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 40 * v11);
    __swift_destroy_boxed_opaque_existential_1(v22);

    return sub_25412DC4C(a1, v22);
  }

  else
  {
    sub_2541AEAB0(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_2541AE7C0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_25422095C(a2, a3);
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
      sub_254222624(v16, a4 & 1);
      v11 = sub_25422095C(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_25424EB38();
        __break(1u);
        return MEMORY[0x2821F96F8]();
      }
    }

    else
    {
      v19 = v11;
      sub_2542237AC();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return MEMORY[0x2821F96F8]();
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

_OWORD *sub_2541AE938(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_25424E848();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  result = sub_25412DCA8(a3, (a4[7] + 32 * a1));
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

uint64_t sub_2541AE9F8(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_25424D948();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
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

uint64_t sub_2541AEAB0(unint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_25412DC4C(a4, a5[7] + 40 * a1);
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

void *sub_2541AEB20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v19 = a7;
  v20 = a9;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v18);
  (*(*(a7 - 8) + 32))(boxed_opaque_existential_1, a1, a7);
  type metadata accessor for QueryController();
  v16 = swift_allocObject();
  sub_25412DC4C(&v18, (v16 + 2));
  v16[7] = a2;
  v16[8] = a3;
  v16[9] = a4;
  sub_25412DC4C(a5, (v16 + 10));
  return v16;
}

uint64_t sub_2541AEBEC(uint64_t a1)
{
  v2 = type metadata accessor for EventQuery(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2541AEC48(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2541AEC90(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = *(v2 + 40);
  v11 = *(v2 + 48);
  v10 = *(v2 + 56);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_25412F818;

  return sub_25424B12C(a1, a2, v6, v7, v8, v9, v11, v10);
}

uint64_t sub_2541AEDF4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2541AEE5C(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for EventQuery(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BA1D0, &unk_2542544C0) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_25412F818;

  return sub_2541AB198(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_2541AEFB8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2541AF020@<X0>(void *a1@<X8>)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA1F0, &qword_254258410) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_2541ADDC0(v4, a1);
}

uint64_t sub_2541AF09C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_25412F818;

  return sub_2541ADFB4(a1, v1);
}

uint64_t Date.formattedElapsedTimeInterval.getter(uint64_t a1)
{
  sub_25424D868();
  v1 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
  [v1 setMaximumFractionDigits_];
  v2 = sub_25424E288();
  v3 = [v1 stringForObjectValue_];

  if (v3)
  {
    v4 = sub_25424DCB8();

    v1 = v3;
  }

  else
  {
    v4 = sub_25424E298();
  }

  return v4;
}

uint64_t static Date.formattedTimeInterval(_:)(double a1)
{
  v1 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
  [v1 setMaximumFractionDigits_];
  v2 = sub_25424E288();
  v3 = [v1 stringForObjectValue_];

  if (v3)
  {
    v4 = sub_25424DCB8();

    v1 = v3;
  }

  else
  {
    v4 = sub_25424E298();
  }

  return v4;
}

uint64_t Date.init(weeksSinceReferenceDate:)(uint64_t result)
{
  if ((result * 7) >> 64 != (7 * result) >> 63)
  {
    __break(1u);
    goto LABEL_7;
  }

  if ((7 * result * 24) >> 64 != (168 * result) >> 63)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if ((168 * result * 60) >> 64 != (10080 * result) >> 63)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if ((10080 * result * 60) >> 64 == (604800 * result) >> 63)
  {
    return sub_25424D568();
  }

LABEL_9:
  __break(1u);
  return result;
}

void Date.weeksSinceReferenceDate.getter(uint64_t a1)
{
  sub_25424D578();
  if ((*&v1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v1 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v1 >= 9.22337204e18)
  {
LABEL_7:
    __break(1u);
  }
}

uint64_t sub_2541AF3E4(uint64_t a1, unint64_t a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v39[0] = a1;
  v39[1] = a2;
  *&v42 = a1;
  *(&v42 + 1) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA2A0, &qword_254258C18);
  if (swift_dynamicCast())
  {
    sub_25412DC4C(__src, &v43);
    __swift_project_boxed_opaque_existential_1(&v43, v44);
    sub_25424D308();
    __src[0] = v42;
    __swift_destroy_boxed_opaque_existential_1(&v43);
    goto LABEL_63;
  }

  v41 = 0;
  memset(__src, 0, sizeof(__src));
  sub_2541B2140(__src);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_25424E708();
  }

  sub_2541B1394(&v43, v4, v5);
  v6 = *(&v43 + 1);
  v7 = v43;
  if (*(&v43 + 1) >> 60 != 15)
  {
    __src[0] = v43;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = sub_2541B1BA0(v8);
  *(&__src[0] + 1) = v9;
  MEMORY[0x28223BE20](*&__src[0]);
  v34[2] = v39;
  v10 = sub_2541EF440(sub_2541B21A8, v34);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        sub_25424D488();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v36 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v42 + 7) = 0;
  *&v42 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v35 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v37 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v38 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = sub_2541B1288(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = sub_25424DDF8();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = sub_25424DE28();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v43 = v14;
      *(&v43 + 1) = v38;
      v31 = *(&v43 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v37;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = sub_25424E708();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = sub_2541B1288(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = sub_25424DE08();
LABEL_52:
    *(&v42 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v43 = v42;
      *(&v43 + 6) = *(&v42 + 6);
      sub_25424D4A8();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v35;
  if (v24)
  {
    *&v43 = v42;
    *(&v43 + 6) = *(&v42 + 6);
    sub_25424D4A8();
    sub_254134CF0(v36, v6);
    goto LABEL_62;
  }

LABEL_57:

  sub_254134CF0(v36, v6);
LABEL_63:
  v32 = __src[0];
  sub_254140660(*&__src[0], *(&__src[0] + 1));

  sub_254134D04(v32, *(&v32 + 1));
  return v32;
}

uint64_t sub_2541AF8F4(uint64_t a1, uint64_t a2)
{
  v8[3] = MEMORY[0x277D838B0];
  v8[4] = MEMORY[0x277CC9C18];
  v8[0] = a1;
  v8[1] = a2;
  v2 = __swift_project_boxed_opaque_existential_1(v8, MEMORY[0x277D838B0]);
  v3 = *v2;
  if (*v2 && (v4 = v2[1], v5 = v4 - v3, v4 != v3))
  {
    if (v5 <= 14)
    {
      v6 = sub_2541BEA18(v3, v4);
    }

    else if (v5 >= 0x7FFFFFFF)
    {
      v6 = sub_2541BEAD0(v3, v4);
    }

    else
    {
      v6 = sub_2541BEB4C(v3, v4);
    }
  }

  else
  {
    v6 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1(v8);
  return v6;
}

uint64_t FakeEvent.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25424D8B8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t FakeEvent.category.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for EventBase(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t FakeEvent.roomName.getter()
{
  v1 = *(v0 + *(type metadata accessor for AccessoryEventBase(0) + 24));

  return v1;
}

uint64_t FakeEvent.accessoryIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AccessoryEventBase(0) + 28);
  v4 = sub_25424D948();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FakeEvent.accessoryName.getter()
{
  v1 = *(v0 + *(type metadata accessor for AccessoryEventBase(0) + 32));

  return v1;
}

uint64_t FakeEvent.userIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AccessoryEventBase(0) + 36);

  return sub_254149770(v3, a1);
}

uint64_t FakeEvent.hash(into:)(uint64_t a1)
{
  v2 = sub_25424D948();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B8E50, &qword_254254390);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v12 - v7;
  sub_25424D8B8();
  sub_2541B1F1C(&qword_27F5B89C0, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_25424DC28();
  v9 = type metadata accessor for EventBase(0);
  sub_2541B1F1C(&qword_27F5B89A8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_25424DC28();
  MEMORY[0x259C06AA0](qword_254258C50[*(v1 + *(v9 + 24))]);
  v10 = type metadata accessor for AccessoryEventBase(0);
  sub_25424DC28();
  sub_25424DD88();
  sub_25424DC28();
  sub_25424DD88();
  sub_254149770(v1 + *(v10 + 36), v8);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    sub_25424EBF8();
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    sub_25424EBF8();
    sub_25424DC28();
    (*(v3 + 8))(v5, v2);
  }

  return MEMORY[0x259C06AA0](0);
}

uint64_t FakeEvent.hashValue.getter()
{
  sub_25424EBD8();
  FakeEvent.hash(into:)(v1);
  return sub_25424EC28();
}

uint64_t sub_2541AFF30()
{
  sub_25424EBD8();
  FakeEvent.hash(into:)(v1);
  return sub_25424EC28();
}

uint64_t sub_2541AFF74(uint64_t a1)
{
  sub_25424EBD8();
  FakeEvent.hash(into:)(v2);
  return sub_25424EC28();
}

unint64_t FakeEvent.init(date:homeIdentifier:category:roomIdentifier:roomName:accessoryIdentifier:accessoryName:userIdentifier:state:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v51 = a8;
  v57 = a7;
  v63 = a2;
  v64 = a6;
  v60 = a5;
  v61 = a4;
  v59 = a9;
  v13 = sub_25424D948();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v62 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v51 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v51 - v20;
  v22 = sub_25424D8B8();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v51 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for AccessoryEventBaseLegacy(0);
  MEMORY[0x28223BE20](v26 - 8);
  v28 = &v51 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *a3;
  v30 = *(v23 + 16);
  v54 = v25;
  v55 = v22;
  v31 = v25;
  v32 = v64;
  v58 = a1;
  v30(v31, a1, v22);
  v33 = v14[2];
  v56 = v21;
  v33(v21, v63, v13);
  if (v29 == 7)
  {
    result = sub_25418E184(3uLL);
    if (result > 2)
    {
      __break(1u);
      return result;
    }

    LOBYTE(v29) = byte_286633480[result + 32];
  }

  v52 = a11;
  v53 = v19;
  v33(v19, v61, v13);
  if (!v32)
  {
    v35 = sub_25418E184(0xBuLL);
    v60 = sub_2541922E4(v35 + 5);
    v64 = v36;
  }

  v37 = v57;
  v33(v62, v57, v13);
  if (a10)
  {
    v38 = a10;
    v39 = v51;
  }

  else
  {
    v40 = sub_25418E184(0x10uLL);
    v39 = sub_2541922E4(v40 + 5);
    v38 = v41;
  }

  v42 = v14[1];
  v42(v37, v13);
  v42(v61, v13);
  v42(v63, v13);
  v43 = v55;
  (*(v23 + 8))(v58, v55);
  (*(v23 + 32))(v28, v54, v43);
  v44 = type metadata accessor for EventBase(0);
  v45 = v14[4];
  v45(&v28[v44[5]], v56, v13);
  v28[v44[6]] = v29;
  v46 = &v28[v44[7]];
  *v46 = 15;
  v47 = type metadata accessor for AccessoryEventBase(0);
  *(v46 + 1) = 0;
  *(v46 + 2) = 0;
  v45(&v28[v47[5]], v53, v13);
  v48 = &v28[v47[6]];
  v49 = v64;
  *v48 = v60;
  v48[1] = v49;
  v45(&v28[v47[7]], v62, v13);
  v50 = &v28[v47[8]];
  *v50 = v39;
  v50[1] = v38;
  sub_25414A348(v52, &v28[v47[9]]);
  return sub_25414A414(v28, v59);
}

BOOL FakeEvent.isIncludedInSecurityGroup.getter()
{
  v1 = *(v0 + *(type metadata accessor for EventBase(0) + 24));

  return sub_2541DA534(v1, &unk_2866334D0);
}

uint64_t FakeEvent.tags.getter()
{
  v1 = v0;
  v2 = sub_25424D8B8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FakeEvent(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9270, &qword_254253EF0);
  v9 = swift_allocObject();
  v19 = xmmword_2542542D0;
  *(v9 + 16) = xmmword_2542542D0;
  *(v9 + 32) = xmmword_254252DC0;
  *(v9 + 48) = sub_2541B1598(v1, type metadata accessor for FakeEvent, type metadata accessor for FakeEvent, type metadata accessor for FakeEvent);
  *(v9 + 56) = v10;
  v11 = type metadata accessor for EventBase(0);
  if (sub_2541DA534(*(v1 + *(v11 + 24)), &unk_286632E98))
  {
    sub_2541B2284(v1, v8, type metadata accessor for FakeEvent);
    (*(v3 + 16))(v5, v8, v2);
    sub_2541B22EC(v8, type metadata accessor for FakeEvent);
    sub_2541DE894(v5);
    v13 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9380, &qword_254254800);
    v14 = swift_allocObject();
    *(v14 + 16) = v19;
    *(v14 + 32) = v13;
    *(v14 + 33) = -1;
    v15 = sub_2541B1AC4(v14);
    v17 = v16;

    (*(v3 + 8))(v5, v2);
    v9 = sub_2541B09E0(1, 3, 1, v9);
    *(v9 + 16) = 3;
    *(v9 + 64) = v15;
    *(v9 + 72) = v17;
  }

  return v9;
}

uint64_t FakeEvent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for AccessoryEventBaseLegacy(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v10[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_254140708(a1, v10);
  sub_254231924(v10, v7);
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_254148F78(a1);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_25414A414(v7, a2);
}

uint64_t FakeEvent.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8E60, &qword_254254A10);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8 - v5;
  result = sub_254231F94(a1);
  if (!v1)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_25412F1C4();
    sub_25424EC78();
    v9 = 1;
    sub_2541B1C40();
    sub_25424EA18();
    return (*(v4 + 8))(v6, v3);
  }

  return result;
}

char *sub_2541B09E0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9270, &qword_254253EF0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2541B0AEC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA2B0, &qword_254258C28);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

char *sub_2541B0BE0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA2C8, &qword_254258C38);
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
    v10 = MEMORY[0x277D84F90];
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

void *sub_2541B0D3C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
    v17 = MEMORY[0x277D84F90];
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

void *sub_2541B0F84(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v18) == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

char *sub_2541B116C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA2C0, &qword_254258C30);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 368);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 368 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

unint64_t sub_2541B1288(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_25424DE38();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x259C05CD0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

unint64_t sub_2541B1304(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = result;
    v5 = 0;
    MEMORY[0x259C07350](&v5, 8);
    v3 = v5 * v2;
    if (v3 < v1)
    {
      for (i = -v1 % v1; i > v3; v3 = v5 * v2)
      {
        v5 = 0;
        MEMORY[0x259C07350](&v5, 8);
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

uint64_t *sub_2541B1394@<X0>(uint64_t *__return_ptr a1@<X8>, _BYTE *__src@<X0>, unint64_t a3@<X1>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a3)
  {
    if (a3 <= 14)
    {
      result = sub_2541BEA18(__src, &__src[a3]);
      v6 = v9 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      sub_25424D2B8();
      swift_allocObject();
      v8 = sub_25424D258();
      if (a3 >= 0x7FFFFFFF)
      {
        sub_25424D468();
        result = swift_allocObject();
        result[2] = 0;
        result[3] = a3;
        v6 = v8 | 0x8000000000000000;
      }

      else
      {
        result = (a3 << 32);
        v6 = v8 | 0x4000000000000000;
      }
    }
  }

  *a1 = result;
  a1[1] = v6;
  return result;
}

void *sub_2541B145C(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = (a1)(&v6, 0, 0, 0, a4);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2541B14C8@<X0>(uint64_t result@<X0>, void *a4@<X8>)
{
  if (result)
  {
    result = sub_25424E698();
    if ((v5 & 1) == 0)
    {
      *a4 = 0;
      a4[1] = 0xE000000000000000;
      a4[2] = 15;
      a4[3] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2541B1598(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v8 = sub_25424D8B8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a2(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v19 - v13;
  sub_2541B2284(a1, &v19 - v13, a3);
  LOBYTE(a3) = v14[*(type metadata accessor for EventBase(0) + 24)];
  (*(v9 + 16))(v11, v14, v8);
  sub_2541B22EC(v14, a4);
  sub_2541DE894(v11);
  LOBYTE(a4) = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9380, &qword_254254800);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_2542542D0;
  *(v16 + 32) = a4;
  *(v16 + 33) = 0xFF070504030201uLL >> (8 * a3);
  v17 = sub_2541B1AC4(v16);

  (*(v9 + 8))(v11, v8);
  return v17;
}

uint64_t type metadata accessor for FakeEvent(uint64_t a1)
{
  result = qword_27F5BA290;
  if (!qword_27F5BA290)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2541B1AC4(uint64_t a1)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA2D0, &qword_254258C40);
  v10 = sub_25414081C(&qword_27F5BA2D8, &qword_27F5BA2D0, &qword_254258C40, MEMORY[0x277CC9C28]);
  v8[0] = a1;
  v2 = __swift_project_boxed_opaque_existential_1(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  sub_2541BE964(v3, &v3[v4], &v7);
  v5 = v7;
  __swift_destroy_boxed_opaque_existential_1(v8);
  return v5;
}

uint64_t sub_2541B1BA0(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      return sub_2541BE9F8(result);
    }

    else
    {
      sub_25424D2B8();
      swift_allocObject();
      sub_25424D278();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_25424D468();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

unint64_t sub_2541B1C40()
{
  result = qword_27F5BA228;
  if (!qword_27F5BA228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA228);
  }

  return result;
}

unint64_t sub_2541B1C98()
{
  result = qword_27F5BA230;
  if (!qword_27F5BA230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA230);
  }

  return result;
}

unint64_t sub_2541B1D34()
{
  result = qword_27F5BA248;
  if (!qword_27F5BA248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA248);
  }

  return result;
}

uint64_t sub_2541B1D88(uint64_t a1)
{
  result = sub_2541B1F1C(&qword_27F5BA250, type metadata accessor for FakeEvent, &protocol conformance descriptor for FakeEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2541B1DE0(void *a1)
{
  a1[1] = sub_2541B1F1C(&qword_27F5BA258, type metadata accessor for FakeEvent, &protocol conformance descriptor for FakeEvent);
  a1[2] = sub_2541B1F1C(&qword_27F5BA260, type metadata accessor for FakeEvent, &protocol conformance descriptor for FakeEvent);
  result = sub_2541B1F1C(&qword_27F5BA268, type metadata accessor for FakeEvent, &protocol conformance descriptor for FakeEvent);
  a1[3] = result;
  return result;
}

uint64_t sub_2541B1F1C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2541B1F64(void *a1)
{
  a1[1] = sub_25414AD7C();
  a1[2] = sub_2541B1C40();
  result = sub_2541B1F9C();
  a1[3] = result;
  return result;
}

unint64_t sub_2541B1F9C()
{
  result = qword_27F5BA280;
  if (!qword_27F5BA280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA280);
  }

  return result;
}

unint64_t sub_2541B1FF0(uint64_t a1)
{
  result = sub_2541B2018();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2541B2018()
{
  result = qword_27F5BA288;
  if (!qword_27F5BA288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA288);
  }

  return result;
}

unint64_t sub_2541B206C(uint64_t a1)
{
  result = sub_2541B1D34();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2541B20BC(uint64_t a1)
{
  result = type metadata accessor for AccessoryEventBaseLegacy(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2541B2140(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA2A8, &qword_254258C20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_2541B21A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_2541B145C(sub_2541B2210, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

unint64_t sub_2541B2230()
{
  result = qword_27F5BA2B8;
  if (!qword_27F5BA2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA2B8);
  }

  return result;
}

uint64_t sub_2541B2284(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2541B22EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t static HMVCommands.createEncryptionKey(homeIdentifier:keyIdentifier:skipZoneCreation:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 56) = a3;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  return MEMORY[0x2822009F8](sub_2541B2370, 0, 0);
}

uint64_t sub_2541B2370()
{
  v1 = *(v0 + 56);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *(v2 + 16) = *(v0 + 16);
  *(v2 + 32) = v1;
  v3 = swift_task_alloc();
  *(v0 + 40) = v3;
  *v3 = v0;
  v3[1] = sub_2541B244C;

  return (sub_25412FDA0)();
}

uint64_t sub_2541B244C()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_25417EB88;
  }

  else
  {

    v2 = sub_25412FA2C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_2541B2568(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = sub_25424D8E8();
  v9 = sub_25424D8E8();
  v11[4] = sub_2541B2DA0;
  v11[5] = a2;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_2541ED26C;
  v11[3] = &block_descriptor_17;
  v10 = _Block_copy(v11);

  [a1 hmvutilCreateEncryptionKeyWithHomeIdentifier:v8 keyIdentifier:v9 skipZoneCreation:a5 & 1 reply:v10];
  _Block_release(v10);
}

uint64_t sub_2541B2680(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B90C0, &qword_254253F20);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17 - v5;
  if (a1)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = a1;
    v8 = sub_25424E128();
    (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
    v9 = swift_allocObject();
    v9[2] = 0;
    v9[3] = 0;
    v9[4] = a2;
    v9[5] = sub_254132F4C;
    v9[6] = v7;

    v10 = a1;
    v11 = &unk_254258CA8;
    v12 = v6;
    v13 = v9;
  }

  else
  {
    v14 = sub_25424E128();
    (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
    v15 = swift_allocObject();
    v15[2] = 0;
    v15[3] = 0;
    v15[4] = a2;
    v15[5] = sub_2541B2DB4;
    v15[6] = 0;

    v11 = &unk_254258CA0;
    v12 = v6;
    v13 = v15;
  }

  sub_25419CC1C(0, 0, v12, v11, v13);
}

uint64_t static HMVCommands.deleteEncryptionKey(homeIdentifier:keyIdentifier:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_2541B2898, 0, 0);
}

uint64_t sub_2541B2898()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *(v1 + 16) = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_2541B2968;

  return sub_25412FDA0(sub_25412FDA0, sub_2541B2B80, v1);
}

uint64_t sub_2541B2968()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_2541B2DB8;
  }

  else
  {

    v2 = sub_2541B2DAC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_2541B2A84(void *a1, uint64_t a2)
{
  v4 = sub_25424D8E8();
  v5 = sub_25424D8E8();
  v7[4] = sub_2541B2D80;
  v7[5] = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = sub_2541ED26C;
  v7[3] = &block_descriptor_4;
  v6 = _Block_copy(v7);

  [a1 hmvutilDeleteEncryptionKeyWithHomeIdentifier:v4 keyIdentifier:v5 reply:v6];
  _Block_release(v6);
}

uint64_t sub_2541B2B88(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B90C0, &qword_254253F20);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17 - v5;
  if (a1)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = a1;
    v8 = sub_25424E128();
    (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
    v9 = swift_allocObject();
    v9[2] = 0;
    v9[3] = 0;
    v9[4] = a2;
    v9[5] = sub_25412F60C;
    v9[6] = v7;

    v10 = a1;
    v11 = &unk_254258C98;
    v12 = v6;
    v13 = v9;
  }

  else
  {
    v14 = sub_25424E128();
    (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
    v15 = swift_allocObject();
    v15[2] = 0;
    v15[3] = 0;
    v15[4] = a2;
    v15[5] = sub_25412F540;
    v15[6] = 0;

    v11 = &unk_254252CB0;
    v12 = v6;
    v13 = v15;
  }

  sub_25419CC1C(0, 0, v12, v11, v13);
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t EnergyKit.SomeEnergyKitEvent.anyEnergyKitEvent.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnergyKit.SomeEnergyKitEvent(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2541B3030(v2, v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      SessionEvent = type metadata accessor for EnergyKit.LoadSessionEvent(0);
      v8 = sub_2541B5374(&qword_27F5B9180, type metadata accessor for EnergyKit.LoadSessionEvent, &unk_25426029C);
      v9 = type metadata accessor for EnergyKit.LoadSessionEvent;
    }

    else
    {
      SessionEvent = type metadata accessor for EnergyKit.LoadDailyDigestEvent(0);
      v8 = sub_2541B5374(&qword_27F5B9170, type metadata accessor for EnergyKit.LoadDailyDigestEvent, &unk_254261DB4);
      v9 = type metadata accessor for EnergyKit.LoadDailyDigestEvent;
    }
  }

  else
  {
    SessionEvent = type metadata accessor for EnergyKit.LoadEvent(0);
    v8 = sub_2541B5374(&qword_27F5B9188, type metadata accessor for EnergyKit.LoadEvent, &unk_25425335C);
    v9 = type metadata accessor for EnergyKit.LoadEvent;
  }

  v10 = v9;
  v19 = v8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v17);
  sub_2541B52C4(v6, boxed_opaque_existential_1, v10);
  sub_25412DC4C(&v17, v20);
  v12 = v21;
  v13 = v22;
  v14 = __swift_project_boxed_opaque_existential_1(v20, v21);
  a1[3] = v12;
  a1[4] = *(v13 + 8);
  v15 = __swift_allocate_boxed_opaque_existential_1(a1);
  (*(*(v12 - 8) + 16))(v15, v14, v12);
  return __swift_destroy_boxed_opaque_existential_1(v20);
}

uint64_t type metadata accessor for EnergyKit.SomeEnergyKitEvent(uint64_t a1)
{
  result = qword_27F5BA380;
  if (!qword_27F5BA380)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2541B3030(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EnergyKit.SomeEnergyKitEvent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2541B3098()
{
  v1 = 0x7373655364616F6CLL;
  if (*v0 != 1)
  {
    v1 = 0x6C69614464616F6CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1684107116;
  }
}

uint64_t sub_2541B3100@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2541B58A4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2541B3128(uint64_t a1)
{
  v2 = sub_2541B5174();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2541B3164(uint64_t a1)
{
  v2 = sub_2541B5174();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2541B31A0(uint64_t a1)
{
  v2 = sub_2541B5270();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2541B31DC(uint64_t a1)
{
  v2 = sub_2541B5270();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2541B3218(uint64_t a1)
{
  v2 = sub_2541B51C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2541B3254(uint64_t a1)
{
  v2 = sub_2541B51C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2541B3290(uint64_t a1)
{
  v2 = sub_2541B521C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2541B32CC(uint64_t a1)
{
  v2 = sub_2541B521C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t EnergyKit.SomeEnergyKitEvent.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA2E8, &qword_254258CB0);
  v41 = *(v2 - 8);
  v42 = v2;
  MEMORY[0x28223BE20](v2);
  v40 = &Event - v3;
  DailyDigestEvent = type metadata accessor for EnergyKit.LoadDailyDigestEvent(0);
  MEMORY[0x28223BE20](DailyDigestEvent);
  v39 = &Event - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA2F0, &qword_254258CB8);
  v36 = *(v5 - 8);
  v37 = v5;
  MEMORY[0x28223BE20](v5);
  v35 = &Event - v6;
  SessionEvent = type metadata accessor for EnergyKit.LoadSessionEvent(0);
  MEMORY[0x28223BE20](SessionEvent);
  v34 = &Event - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA2F8, &qword_254258CC0);
  v31 = *(v8 - 8);
  v32 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &Event - v9;
  Event = type metadata accessor for EnergyKit.LoadEvent(0);
  MEMORY[0x28223BE20](Event);
  v12 = &Event - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for EnergyKit.SomeEnergyKitEvent(0);
  MEMORY[0x28223BE20](v13);
  v15 = &Event - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA300, &qword_254258CC8);
  v16 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v18 = &Event - v17;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2541B5174();
  sub_25424EC78();
  sub_2541B3030(v43, v15);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v20 = (v16 + 8);
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v21 = type metadata accessor for EnergyKit.LoadSessionEvent;
      v22 = v34;
      sub_2541B52C4(v15, v34, type metadata accessor for EnergyKit.LoadSessionEvent);
      v46 = 1;
      sub_2541B521C();
      v23 = v35;
      v24 = v44;
      sub_25424E9A8();
      sub_2541B5374(&qword_27F5BA328, type metadata accessor for EnergyKit.LoadSessionEvent, &protocol conformance descriptor for EnergyKit.LoadSessionEvent);
      v25 = v37;
      sub_25424EA18();
      v26 = v36;
    }

    else
    {
      v21 = type metadata accessor for EnergyKit.LoadDailyDigestEvent;
      v22 = v39;
      sub_2541B52C4(v15, v39, type metadata accessor for EnergyKit.LoadDailyDigestEvent);
      v47 = 2;
      sub_2541B51C8();
      v23 = v40;
      v24 = v44;
      sub_25424E9A8();
      sub_2541B5374(&qword_27F5BA318, type metadata accessor for EnergyKit.LoadDailyDigestEvent, &protocol conformance descriptor for EnergyKit.LoadDailyDigestEvent);
      v25 = v42;
      sub_25424EA18();
      v26 = v41;
    }

    (*(v26 + 8))(v23, v25);
    sub_2541B5A30(v22, v21);
    return (*v20)(v18, v24);
  }

  else
  {
    sub_2541B52C4(v15, v12, type metadata accessor for EnergyKit.LoadEvent);
    v45 = 0;
    sub_2541B5270();
    v27 = v44;
    sub_25424E9A8();
    sub_2541B5374(&qword_27F5B8B50, type metadata accessor for EnergyKit.LoadEvent, &protocol conformance descriptor for EnergyKit.LoadEvent);
    v28 = v32;
    sub_25424EA18();
    (*(v31 + 8))(v10, v28);
    sub_2541B5A30(v12, type metadata accessor for EnergyKit.LoadEvent);
    return (*v20)(v18, v27);
  }
}

uint64_t EnergyKit.SomeEnergyKitEvent.hash(into:)(uint64_t a1)
{
  DailyDigestEvent = type metadata accessor for EnergyKit.LoadDailyDigestEvent(0);
  MEMORY[0x28223BE20](DailyDigestEvent - 8);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  SessionEvent = type metadata accessor for EnergyKit.LoadSessionEvent(0);
  MEMORY[0x28223BE20](SessionEvent - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  Event = type metadata accessor for EnergyKit.LoadEvent(0);
  MEMORY[0x28223BE20](Event);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for EnergyKit.SomeEnergyKitEvent(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2541B3030(v1, v14);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v16 = type metadata accessor for EnergyKit.LoadSessionEvent;
      sub_2541B52C4(v14, v8, type metadata accessor for EnergyKit.LoadSessionEvent);
      MEMORY[0x259C06AA0](1);
      EnergyKit.LoadSessionEvent.hash(into:)(a1);
      v17 = v8;
    }

    else
    {
      v16 = type metadata accessor for EnergyKit.LoadDailyDigestEvent;
      sub_2541B52C4(v14, v5, type metadata accessor for EnergyKit.LoadDailyDigestEvent);
      MEMORY[0x259C06AA0](2);
      EnergyKit.LoadDailyDigestEvent.hash(into:)(a1);
      v17 = v5;
    }

    v19 = v16;
  }

  else
  {
    sub_2541B52C4(v14, v11, type metadata accessor for EnergyKit.LoadEvent);
    MEMORY[0x259C06AA0](0);
    sub_25424D8B8();
    sub_2541B5374(&qword_27F5B89C0, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
    sub_25424DC28();
    v18 = type metadata accessor for EventBase(0);
    sub_25424D948();
    sub_2541B5374(&qword_27F5B89A8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    sub_25424DC28();
    MEMORY[0x259C06AA0](qword_254259280[v11[*(v18 + 24)]]);
    type metadata accessor for EnergyKit.EventBase(0);
    sub_25424DC28();
    sub_25424DD88();
    sub_25424DD88();
    EnergyKit.LoadEvent.State.hash(into:)(a1);
    v17 = v11;
    v19 = type metadata accessor for EnergyKit.LoadEvent;
  }

  return sub_2541B5A30(v17, v19);
}

uint64_t EnergyKit.SomeEnergyKitEvent.hashValue.getter()
{
  sub_25424EBD8();
  EnergyKit.SomeEnergyKitEvent.hash(into:)(v1);
  return sub_25424EC28();
}

uint64_t EnergyKit.SomeEnergyKitEvent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA338, &qword_254258CD0);
  v4 = *(v3 - 8);
  v63 = v3;
  v64 = v4;
  MEMORY[0x28223BE20](v3);
  v67 = &v54 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA340, &qword_254258CD8);
  v7 = *(v6 - 8);
  v61 = v6;
  v62 = v7;
  MEMORY[0x28223BE20](v6);
  v66 = &v54 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA348, &qword_254258CE0);
  v59 = *(v9 - 8);
  v60 = v9;
  MEMORY[0x28223BE20](v9);
  v65 = &v54 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA350, &unk_254258CE8);
  v69 = *(v11 - 8);
  v70 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v54 - v12;
  v14 = type metadata accessor for EnergyKit.SomeEnergyKitEvent(0);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v54 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v54 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v54 - v24;
  v26 = a1[3];
  v72 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v26);
  sub_2541B5174();
  v27 = v71;
  sub_25424EC68();
  if (!v27)
  {
    v55 = v20;
    v56 = v23;
    v57 = v17;
    v29 = v65;
    v28 = v66;
    v71 = 0;
    v58 = v14;
    v31 = v67;
    v30 = v68;
    v32 = v70;
    v33 = sub_25424E988();
    v34 = (2 * *(v33 + 16)) | 1;
    v73 = v33;
    v74 = v33 + 32;
    v75 = 0;
    v76 = v34;
    v35 = sub_254140884();
    if (v35 == 3 || v75 != v76 >> 1)
    {
      v39 = sub_25424E6F8();
      swift_allocError();
      v41 = v40;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8A70, &qword_254252F40);
      *v41 = v58;
      sub_25424E908();
      sub_25424E6E8();
      (*(*(v39 - 8) + 104))(v41, *MEMORY[0x277D84160], v39);
      swift_willThrow();
    }

    else
    {
      if (v35)
      {
        if (v35 == 1)
        {
          v77 = 1;
          sub_2541B521C();
          v36 = v71;
          sub_25424E8F8();
          v37 = v30;
          v38 = v69;
          if (v36)
          {
            goto LABEL_9;
          }

          v71 = v25;
          type metadata accessor for EnergyKit.LoadSessionEvent(0);
          sub_2541B5374(&qword_27F5BA360, type metadata accessor for EnergyKit.LoadSessionEvent, &protocol conformance descriptor for EnergyKit.LoadSessionEvent);
          v51 = v55;
          v52 = v61;
          sub_25424E978();
          (*(v62 + 8))(v28, v52);
          (*(v38 + 8))(v13, v70);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v44 = v51;
        }

        else
        {
          v77 = 2;
          sub_2541B51C8();
          v46 = v31;
          v47 = v71;
          sub_25424E8F8();
          v48 = v69;
          if (v47)
          {
            goto LABEL_9;
          }

          v37 = v30;
          v71 = v25;
          type metadata accessor for EnergyKit.LoadDailyDigestEvent(0);
          sub_2541B5374(&qword_27F5BA358, type metadata accessor for EnergyKit.LoadDailyDigestEvent, &protocol conformance descriptor for EnergyKit.LoadDailyDigestEvent);
          v49 = v57;
          v50 = v63;
          sub_25424E978();
          (*(v64 + 8))(v46, v50);
          (*(v48 + 8))(v13, v32);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v44 = v49;
        }

LABEL_17:
        v53 = v71;
        sub_2541B52C4(v44, v71, type metadata accessor for EnergyKit.SomeEnergyKitEvent);
        sub_2541B52C4(v53, v37, type metadata accessor for EnergyKit.SomeEnergyKitEvent);
        return __swift_destroy_boxed_opaque_existential_1(v72);
      }

      v77 = 0;
      sub_2541B5270();
      v43 = v71;
      sub_25424E8F8();
      if (!v43)
      {
        v71 = v25;
        type metadata accessor for EnergyKit.LoadEvent(0);
        sub_2541B5374(&qword_27F5B8B48, type metadata accessor for EnergyKit.LoadEvent, &protocol conformance descriptor for EnergyKit.LoadEvent);
        v44 = v56;
        v45 = v60;
        sub_25424E978();
        (*(v59 + 8))(v29, v45);
        (*(v69 + 8))(v13, v32);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v37 = v30;
        goto LABEL_17;
      }
    }

LABEL_9:
    (*(v69 + 8))(v13, v32);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v72);
}

uint64_t sub_2541B4610()
{
  sub_25424EBD8();
  EnergyKit.SomeEnergyKitEvent.hash(into:)(v1);
  return sub_25424EC28();
}

uint64_t sub_2541B4654(uint64_t a1)
{
  sub_25424EBD8();
  EnergyKit.SomeEnergyKitEvent.hash(into:)(v2);
  return sub_25424EC28();
}

uint64_t EnergyKit.SomeEnergyKitEvent.init(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  DailyDigestEvent = type metadata accessor for EnergyKit.LoadDailyDigestEvent(0);
  MEMORY[0x28223BE20](DailyDigestEvent);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  SessionEvent = type metadata accessor for EnergyKit.LoadSessionEvent(0);
  MEMORY[0x28223BE20](SessionEvent);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  Event = type metadata accessor for EnergyKit.LoadEvent(0);
  MEMORY[0x28223BE20](Event);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for EnergyKit.SomeEnergyKitEvent(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_254140708(a1, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA368, &qword_254258CF8);
  if (swift_dynamicCast())
  {
    sub_2541B52C4(v11, v14, type metadata accessor for EnergyKit.LoadEvent);
LABEL_7:
    swift_storeEnumTagMultiPayload();
    __swift_destroy_boxed_opaque_existential_1(v22);
    sub_2541B52C4(v14, v18, type metadata accessor for EnergyKit.SomeEnergyKitEvent);
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  if (swift_dynamicCast())
  {
    sub_2541B52C4(v8, v14, type metadata accessor for EnergyKit.LoadSessionEvent);
    goto LABEL_7;
  }

  if (swift_dynamicCast())
  {
    sub_2541B52C4(v5, v14, type metadata accessor for EnergyKit.LoadDailyDigestEvent);
    goto LABEL_7;
  }

  v20 = 0;
  v21 = 0xE000000000000000;
  sub_25424E688();
  MEMORY[0x259C05CA0](0xD000000000000019, 0x8000000254250CF0);
  v19 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA370, &qword_254258D00);
  v16 = sub_25424DD08();
  MEMORY[0x259C05CA0](v16);

  MEMORY[0x259C05CA0](8250, 0xE200000000000000);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25424EA98();
  result = sub_25424E858();
  __break(1u);
  return result;
}

uint64_t _s13HomeKitEvents06EnergyB0O04SomedB5EventO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  DailyDigestEvent = type metadata accessor for EnergyKit.LoadDailyDigestEvent(0);
  MEMORY[0x28223BE20](DailyDigestEvent);
  v69 = &SessionEvent - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  SessionEvent = type metadata accessor for EnergyKit.LoadSessionEvent(0);
  MEMORY[0x28223BE20](SessionEvent);
  v68 = &SessionEvent - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  Event = type metadata accessor for EnergyKit.LoadEvent(0);
  MEMORY[0x28223BE20](Event);
  v8 = &SessionEvent - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for EnergyKit.SomeEnergyKitEvent(0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &SessionEvent - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &SessionEvent - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &SessionEvent - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA3F0, &unk_254259270);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v21 = &SessionEvent - v20;
  v22 = *(v19 + 56);
  sub_2541B3030(a1, &SessionEvent - v20);
  sub_2541B3030(a2, &v21[v22]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_2541B3030(v21, v15);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v24 = v68;
        sub_2541B52C4(&v21[v22], v68, type metadata accessor for EnergyKit.LoadSessionEvent);
        if (_s13HomeKitEvents38ThermostatReducedEnergyAutomationEventV0defG7TriggerO19ReducePeriodDetailsV2eeoiySbAG_AGtFZ_0())
        {
          v25 = type metadata accessor for EventBase(0);
          if ((sub_25424D8F8() & 1) != 0 && qword_254259280[v15[*(v25 + 24)]] == qword_254259280[*(v24 + *(v25 + 24))])
          {
            v26 = type metadata accessor for EnergyKit.EventBase(0);
            if (sub_25424D8F8())
            {
              if (v27 = *(v26 + 24), v28 = *&v15[v27], v29 = *&v15[v27 + 8], v30 = (v24 + v27), v28 == *v30) && v29 == v30[1] || (sub_25424EAB8())
              {
                if (v31 = *(v26 + 28), v32 = *&v15[v31], v33 = *&v15[v31 + 8], v34 = (v24 + v31), v32 == *v34) && v33 == v34[1] || (sub_25424EAB8())
                {
                  if (sub_254204A80(&v15[*(SessionEvent + 20)], v24 + *(SessionEvent + 20)))
                  {
                    v35 = type metadata accessor for EnergyKit.LoadSessionEvent;
                    sub_2541B5A30(v24, type metadata accessor for EnergyKit.LoadSessionEvent);
                    v36 = v15;
LABEL_48:
                    v51 = v35;
                    goto LABEL_49;
                  }
                }
              }
            }
          }
        }

        v52 = type metadata accessor for EnergyKit.LoadSessionEvent;
        sub_2541B5A30(v24, type metadata accessor for EnergyKit.LoadSessionEvent);
        v53 = v15;
LABEL_51:
        v54 = v52;
LABEL_52:
        sub_2541B5A30(v53, v54);
        sub_2541B5A30(v21, type metadata accessor for EnergyKit.SomeEnergyKitEvent);
        return 0;
      }

      v37 = type metadata accessor for EnergyKit.LoadSessionEvent;
      v38 = v15;
    }

    else
    {
      sub_2541B3030(v21, v12);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v39 = &v21[v22];
        v40 = v69;
        sub_2541B52C4(v39, v69, type metadata accessor for EnergyKit.LoadDailyDigestEvent);
        if (_s13HomeKitEvents38ThermostatReducedEnergyAutomationEventV0defG7TriggerO19ReducePeriodDetailsV2eeoiySbAG_AGtFZ_0())
        {
          v41 = type metadata accessor for EventBase(0);
          if ((sub_25424D8F8() & 1) != 0 && qword_254259280[v12[*(v41 + 24)]] == qword_254259280[*(v40 + *(v41 + 24))])
          {
            v42 = type metadata accessor for EnergyKit.EventBase(0);
            if (sub_25424D8F8())
            {
              if (v43 = *(v42 + 24), v44 = *&v12[v43], v45 = *&v12[v43 + 8], v46 = (v40 + v43), v44 == *v46) && v45 == v46[1] || (sub_25424EAB8())
              {
                if (v47 = *(v42 + 28), v48 = *&v12[v47], v49 = *&v12[v47 + 8], v50 = (v40 + v47), v48 == *v50) && v49 == v50[1] || (sub_25424EAB8())
                {
                  if (sub_254229D50(&v12[*(DailyDigestEvent + 20)], v40 + *(DailyDigestEvent + 20)))
                  {
                    sub_2541B5A30(v40, type metadata accessor for EnergyKit.LoadDailyDigestEvent);
                    v36 = v12;
                    v51 = type metadata accessor for EnergyKit.LoadDailyDigestEvent;
LABEL_49:
                    sub_2541B5A30(v36, v51);
                    sub_2541B5A30(v21, type metadata accessor for EnergyKit.SomeEnergyKitEvent);
                    return 1;
                  }
                }
              }
            }
          }
        }

        sub_2541B5A30(v40, type metadata accessor for EnergyKit.LoadDailyDigestEvent);
        v53 = v12;
        v54 = type metadata accessor for EnergyKit.LoadDailyDigestEvent;
        goto LABEL_52;
      }

      v37 = type metadata accessor for EnergyKit.LoadDailyDigestEvent;
      v38 = v12;
    }
  }

  else
  {
    sub_2541B3030(v21, v17);
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_2541B52C4(&v21[v22], v8, type metadata accessor for EnergyKit.LoadEvent);
      if (_s13HomeKitEvents38ThermostatReducedEnergyAutomationEventV0defG7TriggerO19ReducePeriodDetailsV2eeoiySbAG_AGtFZ_0())
      {
        v55 = type metadata accessor for EventBase(0);
        if ((sub_25424D8F8() & 1) != 0 && qword_254259280[v17[*(v55 + 24)]] == qword_254259280[v8[*(v55 + 24)]])
        {
          v56 = type metadata accessor for EnergyKit.EventBase(0);
          if (sub_25424D8F8())
          {
            if (v57 = *(v56 + 24), v58 = *&v17[v57], v59 = *&v17[v57 + 8], v60 = &v8[v57], v58 == *v60) && v59 == *(v60 + 1) || (sub_25424EAB8())
            {
              if (v61 = *(v56 + 28), v62 = *&v17[v61], v63 = *&v17[v61 + 8], v64 = &v8[v61], v62 == *v64) && v63 == *(v64 + 1) || (sub_25424EAB8())
              {
                if (_s13HomeKitEvents06EnergyB0O9LoadEventV5StateV2eeoiySbAG_AGtFZ_0(&v17[*(Event + 20)], &v8[*(Event + 20)]))
                {
                  v35 = type metadata accessor for EnergyKit.LoadEvent;
                  sub_2541B5A30(v8, type metadata accessor for EnergyKit.LoadEvent);
                  v36 = v17;
                  goto LABEL_48;
                }
              }
            }
          }
        }
      }

      v52 = type metadata accessor for EnergyKit.LoadEvent;
      sub_2541B5A30(v8, type metadata accessor for EnergyKit.LoadEvent);
      v53 = v17;
      goto LABEL_51;
    }

    v37 = type metadata accessor for EnergyKit.LoadEvent;
    v38 = v17;
  }

  sub_2541B5A30(v38, v37);
  sub_2541B59C8(v21);
  return 0;
}

unint64_t sub_2541B5174()
{
  result = qword_27F5BA308;
  if (!qword_27F5BA308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA308);
  }

  return result;
}

unint64_t sub_2541B51C8()
{
  result = qword_27F5BA310;
  if (!qword_27F5BA310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA310);
  }

  return result;
}

unint64_t sub_2541B521C()
{
  result = qword_27F5BA320;
  if (!qword_27F5BA320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA320);
  }

  return result;
}

unint64_t sub_2541B5270()
{
  result = qword_27F5BA330;
  if (!qword_27F5BA330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA330);
  }

  return result;
}

uint64_t sub_2541B52C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2541B5374(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2541B53BC(uint64_t a1)
{
  result = type metadata accessor for EnergyKit.LoadEvent(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for EnergyKit.LoadSessionEvent(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for EnergyKit.LoadDailyDigestEvent(319);
      if (v4 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_2541B5488()
{
  result = qword_27F5BA390;
  if (!qword_27F5BA390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA390);
  }

  return result;
}

unint64_t sub_2541B54E0()
{
  result = qword_27F5BA398;
  if (!qword_27F5BA398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA398);
  }

  return result;
}

unint64_t sub_2541B5538()
{
  result = qword_27F5BA3A0;
  if (!qword_27F5BA3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA3A0);
  }

  return result;
}

unint64_t sub_2541B5590()
{
  result = qword_27F5BA3A8;
  if (!qword_27F5BA3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA3A8);
  }

  return result;
}

unint64_t sub_2541B55E8()
{
  result = qword_27F5BA3B0;
  if (!qword_27F5BA3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA3B0);
  }

  return result;
}

unint64_t sub_2541B5640()
{
  result = qword_27F5BA3B8;
  if (!qword_27F5BA3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA3B8);
  }

  return result;
}

unint64_t sub_2541B5698()
{
  result = qword_27F5BA3C0;
  if (!qword_27F5BA3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA3C0);
  }

  return result;
}

unint64_t sub_2541B56F0()
{
  result = qword_27F5BA3C8;
  if (!qword_27F5BA3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA3C8);
  }

  return result;
}

unint64_t sub_2541B5748()
{
  result = qword_27F5BA3D0;
  if (!qword_27F5BA3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA3D0);
  }

  return result;
}

unint64_t sub_2541B57A0()
{
  result = qword_27F5BA3D8;
  if (!qword_27F5BA3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA3D8);
  }

  return result;
}

unint64_t sub_2541B57F8()
{
  result = qword_27F5BA3E0;
  if (!qword_27F5BA3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA3E0);
  }

  return result;
}

unint64_t sub_2541B5850()
{
  result = qword_27F5BA3E8;
  if (!qword_27F5BA3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA3E8);
  }

  return result;
}

uint64_t sub_2541B58A4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684107116 && a2 == 0xE400000000000000;
  if (v3 || (sub_25424EAB8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7373655364616F6CLL && a2 == 0xEB000000006E6F69 || (sub_25424EAB8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C69614464616F6CLL && a2 == 0xEF74736567694479)
  {

    return 2;
  }

  else
  {
    v6 = sub_25424EAB8();

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

uint64_t sub_2541B59C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA3F0, &unk_254259270);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2541B5A30(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2541B5A90(unsigned __int8 a1)
{
  sub_25424EBD8();
  sub_25424DD88();

  return sub_25424EC28();
}

uint64_t DigestRecord.identifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25424D948();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t DigestRecord.tags.getter()
{
  type metadata accessor for DigestRecord(0);
}

uint64_t DigestRecord.home.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DigestRecord(0) + 28);
  v4 = sub_25424D948();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t DigestRecord.start.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for DigestRecord(0) + 28);
  v4 = *(type metadata accessor for DigestRecord.Metadata(0) + 20);
  v5 = sub_25424D8B8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t DigestRecord.end.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for DigestRecord(0) + 28);
  v4 = *(type metadata accessor for DigestRecord.Metadata(0) + 24);
  v5 = sub_25424D8B8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t DigestRecord.categories.getter()
{
  type metadata accessor for DigestRecord(0);
  type metadata accessor for DigestRecord.Metadata(0);
}

uint64_t DigestRecord.events.getter@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for DigestRecord(0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B92D0, &qword_2542546F0);
  a1[3] = v2;
  a1[4] = sub_25414081C(&qword_27F5B92D8, &qword_27F5B92D0, &qword_2542546F0, &unk_254254798);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  sub_25424D3D8();
  *(boxed_opaque_existential_1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B92E0, &qword_2542546F8) + 36)) = 0x4000;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5B92E8, &unk_254254700);
  *(boxed_opaque_existential_1 + *(result + 36)) = 1;
  *(boxed_opaque_existential_1 + *(v2 + 36)) = 0;
  return result;
}

uint64_t DigestRecord.Encoding.hashValue.getter()
{
  sub_25424EBD8();
  MEMORY[0x259C06AA0](0);
  return sub_25424EC28();
}

uint64_t DigestRecord.Metadata.init(home:start:end:categories:count:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = sub_25424D948();
  (*(*(v12 - 8) + 32))(a6, a1, v12);
  v13 = type metadata accessor for DigestRecord.Metadata(0);
  v14 = v13[5];
  v15 = sub_25424D8B8();
  v16 = *(*(v15 - 8) + 32);
  v16(a6 + v14, a2, v15);
  result = (v16)(a6 + v13[6], a3, v15);
  *(a6 + v13[7]) = a4;
  *(a6 + v13[8]) = a5;
  return result;
}

uint64_t static DigestRecord.recordIdentifier(homeIdentifier:date:categories:)@<X0>(uint64_t a3@<X2>, uint64_t x8_0@<X8>)
{
  v20 = *MEMORY[0x277D85DE8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9270, &qword_254253EF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2542542D0;
  if (qword_27F5B8408 != -1)
  {
    swift_once();
  }

  v7 = sub_25424D948();
  __swift_project_value_buffer(v7, qword_27F5BA3F8);
  v19[0] = sub_25424D928();
  v19[1] = v8;
  sub_25424D928();
  *(inited + 32) = sub_2541BAC60(v19, 0x10uLL);
  *(inited + 40) = v9;
  sub_25424D578();
  if ((*&v10 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v10 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
  }

  if (v10 >= 9.22337204e18)
  {
    goto LABEL_12;
  }

  v18 = bswap64(v10 / 604800);
  sub_25419CB50(&v18, v19, v19);
  *(inited + 48) = *v19;
  if (a3 && *(a3 + 16))
  {

    v18 = bswap64(sub_2541BAA5C(v11));
    sub_25419CB50(&v18, v19, v19);
    v12 = v19[0];
    v13 = v19[1];
    inited = sub_2541B09E0(1, 3, 1, inited);
    *(inited + 16) = 3;
    *(inited + 64) = v12;
    *(inited + 72) = v13;
  }

  v19[0] = sub_25424D928();
  v19[1] = v14;
  sub_25424D928();
  v15 = sub_2541BAC60(v19, 0x10uLL);
  return sub_25420B638(v15, v16, inited, x8_0);
}

uint64_t static DigestRecord.encode<A>(events:to:encoding:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[5] = a1;
  v5[6] = a2;
  v7 = sub_25424E7E8();
  v5[9] = v7;
  WitnessTable = swift_getWitnessTable();
  v5[10] = WitnessTable;
  DigestEventSequence = type metadata accessor for AsyncCreateDigestEventSequence(255, v7, WitnessTable, v9);
  v5[11] = DigestEventSequence;
  v11 = swift_getWitnessTable();
  v5[12] = v11;
  v13 = type metadata accessor for AsyncCompressionStream.AsyncIterator(0, DigestEventSequence, v11, v12);
  v5[13] = v13;
  v5[14] = *(v13 - 8);
  v5[15] = swift_task_alloc();
  v15 = type metadata accessor for AsyncCompressionStream(0, DigestEventSequence, v11, v14);
  v5[16] = v15;
  v5[17] = *(v15 - 8);
  v5[18] = swift_task_alloc();
  v16 = sub_25424D418();
  v5[19] = v16;
  v5[20] = *(v16 - 8);
  v5[21] = swift_task_alloc();
  v5[22] = *(DigestEventSequence - 8);
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  v5[25] = *(a4 - 8);
  v5[26] = swift_task_alloc();
  v5[27] = *(v7 - 8);
  v5[28] = swift_task_alloc();
  v5[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2541B6614, 0, 0);
}

uint64_t sub_2541B6614()
{
  v1 = sub_25424D3B8();
  if (v1)
  {
    v8 = v0[28];
    v7 = v0[29];
    v9 = v0[27];
    v10 = v0[22];
    v11 = v0[20];
    v16 = v0[24];
    v17 = v0[21];
    v20 = v0[23];
    v21 = v0[18];
    v23 = v0[15];
    v24 = v0[16];
    v22 = v0[12];
    v18 = v0[19];
    v19 = v0[11];
    v12 = v0[9];
    v15 = v0[6];
    (*(v0[25] + 16))(v0[26], v0[5], v0[7]);
    sub_25424E218();
    (*(v9 + 16))(v8, v7, v12);
    sub_2541D2914(v8, v12, v16);
    (*(v11 + 16))(v17, v15, v18);
    type metadata accessor for AsyncFileOutputStream(0);
    swift_allocObject();
    v0[30] = AsyncFileOutputStream.init(url:)(v17);
    (*(v10 + 16))(v20, v16, v19);
    sub_2541ED664(v20, 0x8000, v19, v22, v21);
    sub_2541ED6F8(v24, v23);
    v13 = swift_task_alloc();
    v0[31] = v13;
    WitnessTable = swift_getWitnessTable();
    *v13 = v0;
    v13[1] = sub_2541B6858;
    v4 = v0[13];
    v1 = (v0 + 2);
    v6 = v0 + 4;
    v2 = 0;
    v3 = 0;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x282200320](v1, v2, v3, v4, WitnessTable, v6);
}

uint64_t sub_2541B6858()
{

  if (v0)
  {
    v1 = sub_2541B72D4;
  }

  else
  {
    v1 = sub_2541B6968;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_2541B6968()
{
  v1 = v0[2];
  v2 = v0[3];
  v0[32] = v1;
  v0[33] = v2;
  v3 = v0[30];
  if (v2 >> 60 == 15)
  {
    (*(v0[14] + 8))(v0[15], v0[13]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA410, &unk_2542592D0);
    sub_25424E158();
    v4 = swift_task_alloc();
    v0[37] = v4;
    *v4 = v0;
    v4[1] = sub_2541B6E58;

    return MEMORY[0x282200460]();
  }

  else
  {
    v5 = swift_task_alloc();
    v0[34] = v5;
    v5[2] = v3;
    v5[3] = v1;
    v5[4] = v2;
    v6 = swift_task_alloc();
    v0[35] = v6;
    *v6 = v0;
    v6[1] = sub_2541B6B40;
    v7 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x2822008A0](v6, 0, 0, 0x7973416574697277, 0xEE00293A5F28636ELL, sub_2541BAD10, v5, v7);
  }
}

uint64_t sub_2541B6B40()
{
  *(*v1 + 288) = v0;

  if (v0)
  {
    v2 = sub_2541B6D34;
  }

  else
  {

    v2 = sub_2541B6C5C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2541B6C5C()
{
  sub_254134CF0(v0[32], v0[33]);
  v1 = swift_task_alloc();
  v0[31] = v1;
  WitnessTable = swift_getWitnessTable();
  *v1 = v0;
  v1[1] = sub_2541B6858;
  v3 = v0[13];

  return MEMORY[0x282200320](v0 + 2, 0, 0, v3, WitnessTable, v0 + 4);
}

uint64_t sub_2541B6D34()
{
  v1 = v0[33];
  v2 = v0[32];
  v4 = v0[14];
  v3 = v0[15];
  v5 = v0[13];

  sub_254134CF0(v2, v1);
  (*(v4 + 8))(v3, v5);
  v0[38] = v0[36];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA410, &unk_2542592D0);
  sub_25424E158();
  v6 = swift_task_alloc();
  v0[39] = v6;
  *v6 = v0;
  v6[1] = sub_2541B708C;

  return MEMORY[0x282200460]();
}

uint64_t sub_2541B6E58()
{

  return MEMORY[0x2822009F8](sub_2541B6F54, 0, 0);
}

uint64_t sub_2541B6F54()
{
  v1 = v0[29];
  v2 = v0[27];
  v3 = v0[24];
  v4 = v0[22];
  v5 = v0[17];
  v6 = v0[18];
  v7 = v0[16];
  v8 = v0[11];
  v9 = v0[9];

  (*(v5 + 8))(v6, v7);
  (*(v4 + 8))(v3, v8);
  (*(v2 + 8))(v1, v9);

  v10 = v0[1];

  return v10();
}

uint64_t sub_2541B708C()
{

  return MEMORY[0x2822009F8](sub_2541B7188, 0, 0);
}

uint64_t sub_2541B7188(uint64_t a1)
{
  v2 = v1[29];
  v3 = v1[27];
  v4 = v1[22];
  v5 = v1[17];
  v6 = v1[18];
  v7 = v1[16];
  v8 = v1[11];
  v11 = v1[9];
  v12 = v1[24];
  swift_willThrow();

  (*(v5 + 8))(v6, v7);
  (*(v4 + 8))(v12, v8);
  (*(v3 + 8))(v2, v11);

  v9 = v1[1];

  return v9();
}

uint64_t sub_2541B72D4()
{
  (*(v0[14] + 8))(v0[15], v0[13]);
  v0[38] = v0[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA410, &unk_2542592D0);
  sub_25424E158();
  v1 = swift_task_alloc();
  v0[39] = v1;
  *v1 = v0;
  v1[1] = sub_2541B708C;

  return MEMORY[0x282200460]();
}

uint64_t sub_2541B73C8(uint64_t a1, uint64_t a2)
{
  v2[6] = a1;
  v2[7] = a2;
  v2[8] = type metadata accessor for EventRecord.DecodedEvent(0);
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2541B745C, 0, 0);
}

uint64_t sub_2541B745C()
{
  v1 = v0[9];
  v2 = v0[6];
  sub_2541BB7B4(v0[7], v1, type metadata accessor for SomeEvent);
  swift_storeEnumTagMultiPayload();
  static EventRecord.encodeEvent(_:)(v1, v2);
  sub_2541BB81C(v0[9], type metadata accessor for EventRecord.DecodedEvent);

  v3 = v0[1];

  return v3();
}

uint64_t DigestRecord.init(identifier:fileURL:metadata:encoding:tags:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  result = sub_25424D3B8();
  if (result)
  {
    v11 = sub_25424D948();
    (*(*(v11 - 8) + 32))(a5, a1, v11);
    v12 = type metadata accessor for DigestRecord(0);
    *(a5 + v12[5]) = a4;
    sub_2541BAD1C(a3, a5 + v12[7]);
    v13 = v12[8];
    v14 = sub_25424D418();
    v15 = *(*(v14 - 8) + 32);

    return v15(a5 + v13, a2, v14);
  }

  else
  {
    __break(1u);
  }

  return result;
}

CKRecord __swiftcall DigestRecord.toCKRecord(zoneID:)(CKRecordZoneID zoneID)
{
  v2 = v1;
  sub_254148D7C(0, &qword_27F5BA418, 0x277CBC5D0);
  sub_25424D8D8();
  v4 = zoneID.super.isa;
  v5 = sub_25424E3C8();
  sub_254148D7C(0, &unk_27F5B8E30, 0x277CBC5A0);
  v21 = v5;
  v6 = sub_25424E548();
  v7 = sub_25424D8B8();
  v23 = v7;
  v24 = MEMORY[0x277CBBBE8];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v22);
  v9 = type metadata accessor for DigestRecord(0);
  v10 = v2 + *(v9 + 28);
  v11 = type metadata accessor for DigestRecord.Metadata(0);
  v12 = *(*(v7 - 8) + 16);
  v12(boxed_opaque_existential_1, v10 + *(v11 + 20), v7);
  sub_25424E528();
  v23 = v7;
  v24 = MEMORY[0x277CBBBE8];
  v13 = __swift_allocate_boxed_opaque_existential_1(v22);
  v12(v13, v10 + *(v11 + 24), v7);
  sub_25424E528();
  v14 = *(v2 + *(v9 + 20));
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9248, &qword_2542545B0);
  v24 = sub_2541BAD80();
  v22[0] = v14;

  sub_25424E528();
  v15 = objc_allocWithZone(MEMORY[0x277CBC190]);
  v16 = sub_25424D3E8();
  [v15 initWithFileURL_];

  sub_25424E578();
  v17 = [v6 encryptedValues];
  swift_getObjectType();
  v23 = MEMORY[0x277D84A28];
  v24 = MEMORY[0x277CBBEF0];
  v22[0] = 1;
  sub_25424E528();
  v18 = sub_2541BADFC(v10);
  v23 = MEMORY[0x277CC9318];
  v24 = MEMORY[0x277CBBBE0];
  v22[0] = v18;
  v22[1] = v19;
  sub_25424E528();

  swift_unknownObjectRelease();
  return v6;
}

uint64_t static DigestRecord.encodeUncompressed<A>(events:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  v5 = sub_25424E7C8();
  v4[9] = v5;
  WitnessTable = swift_getWitnessTable();
  v4[10] = WitnessTable;
  v8 = type metadata accessor for AsyncSequenceAdapter(255, v5, WitnessTable, v7);
  v4[11] = v8;
  v9 = swift_getWitnessTable();
  v4[12] = v9;
  DigestEvent = type metadata accessor for AsyncCreateDigestEventSequence.AsyncIterator(0, v8, v9, v10);
  v4[13] = DigestEvent;
  v4[14] = *(DigestEvent - 8);
  v4[15] = swift_task_alloc();
  v12 = sub_25424D418();
  v4[16] = v12;
  v4[17] = *(v12 - 8);
  v4[18] = swift_task_alloc();
  DigestEventSequence = type metadata accessor for AsyncCreateDigestEventSequence(0, v8, v9, v13);
  v4[19] = DigestEventSequence;
  v4[20] = *(DigestEventSequence - 8);
  v4[21] = swift_task_alloc();
  v4[22] = *(v8 - 8);
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v15 = sub_25424E6A8();
  v4[25] = v15;
  v4[26] = *(v15 - 8);
  v4[27] = swift_task_alloc();
  v4[28] = *(v5 - 8);
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2541B7D30, 0, 0);
}

uint64_t sub_2541B7D30()
{
  v1 = sub_25424D3B8();
  if (v1)
  {
    v7 = v0[30];
    v8 = v0[27];
    v9 = v0[28];
    v10 = v0[25];
    v11 = v0[26];
    v17 = v0[29];
    v18 = v0[24];
    v20 = v0[23];
    v12 = v0[22];
    v22 = v0[21];
    v26 = v0[19];
    v13 = v0[17];
    v23 = v0[18];
    v24 = v0[16];
    v25 = v0[15];
    v19 = v0[11];
    v14 = v0[9];
    v21 = v0[6];
    MEMORY[0x259C05D80](v0[7], v0[8]);
    swift_getWitnessTable();
    sub_25424E8D8();
    (*(v11 + 8))(v8, v10);
    (*(v9 + 16))(v17, v7, v14);
    sub_2541D2914(v17, v14, v18);
    (*(v12 + 16))(v20, v18, v19);
    sub_2541D2914(v20, v19, v22);
    (*(v13 + 16))(v23, v21, v24);
    type metadata accessor for AsyncFileOutputStream(0);
    swift_allocObject();
    v0[31] = AsyncFileOutputStream.init(url:)(v23);
    sub_2541EA418(v26, v25);
    v15 = swift_task_alloc();
    v0[32] = v15;
    WitnessTable = swift_getWitnessTable();
    *v15 = v0;
    v15[1] = sub_2541B7FB4;
    v4 = v0[13];
    v1 = (v0 + 2);
    v6 = v0 + 4;
    v2 = 0;
    v3 = 0;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x282200320](v1, v2, v3, v4, WitnessTable, v6);
}

uint64_t sub_2541B7FB4()
{

  if (v0)
  {
    v1 = sub_2541B8A38;
  }

  else
  {
    v1 = sub_2541B80C4;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_2541B80C4()
{
  v1 = v0[2];
  v2 = v0[3];
  v0[33] = v1;
  v0[34] = v2;
  v3 = v0[31];
  if (v2 >> 60 == 15)
  {
    (*(v0[14] + 8))(v0[15], v0[13]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA410, &unk_2542592D0);
    sub_25424E158();
    v4 = swift_task_alloc();
    v0[38] = v4;
    *v4 = v0;
    v4[1] = sub_2541B85B4;

    return MEMORY[0x282200460]();
  }

  else
  {
    v5 = swift_task_alloc();
    v0[35] = v5;
    v5[2] = v3;
    v5[3] = v1;
    v5[4] = v2;
    v6 = swift_task_alloc();
    v0[36] = v6;
    *v6 = v0;
    v6[1] = sub_2541B829C;
    v7 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x2822008A0](v6, 0, 0, 0x7973416574697277, 0xEE00293A5F28636ELL, sub_2541BB958, v5, v7);
  }
}

uint64_t sub_2541B829C()
{
  *(*v1 + 296) = v0;

  if (v0)
  {
    v2 = sub_2541B8490;
  }

  else
  {

    v2 = sub_2541B83B8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2541B83B8()
{
  sub_254134CF0(v0[33], v0[34]);
  v1 = swift_task_alloc();
  v0[32] = v1;
  WitnessTable = swift_getWitnessTable();
  *v1 = v0;
  v1[1] = sub_2541B7FB4;
  v3 = v0[13];

  return MEMORY[0x282200320](v0 + 2, 0, 0, v3, WitnessTable, v0 + 4);
}

uint64_t sub_2541B8490()
{
  v1 = v0[34];
  v2 = v0[33];
  v4 = v0[14];
  v3 = v0[15];
  v5 = v0[13];

  sub_254134CF0(v2, v1);
  (*(v4 + 8))(v3, v5);
  v0[39] = v0[37];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA410, &unk_2542592D0);
  sub_25424E158();
  v6 = swift_task_alloc();
  v0[40] = v6;
  *v6 = v0;
  v6[1] = sub_2541B87EC;

  return MEMORY[0x282200460]();
}

uint64_t sub_2541B85B4()
{

  return MEMORY[0x2822009F8](sub_2541B86B0, 0, 0);
}

uint64_t sub_2541B86B0()
{
  v1 = v0[30];
  v2 = v0[28];
  v3 = v0[24];
  v5 = v0[21];
  v4 = v0[22];
  v7 = v0[19];
  v6 = v0[20];
  v8 = v0[11];
  v9 = v0[9];

  (*(v6 + 8))(v5, v7);
  (*(v4 + 8))(v3, v8);
  (*(v2 + 8))(v1, v9);

  v10 = v0[1];

  return v10();
}

uint64_t sub_2541B87EC()
{

  return MEMORY[0x2822009F8](sub_2541B88E8, 0, 0);
}

uint64_t sub_2541B88E8(uint64_t a1)
{
  v2 = v1[30];
  v3 = v1[28];
  v5 = v1[21];
  v4 = v1[22];
  v6 = v1[19];
  v7 = v1[20];
  v8 = v1[11];
  v11 = v1[9];
  v12 = v1[24];
  swift_willThrow();

  (*(v7 + 8))(v5, v6);
  (*(v4 + 8))(v12, v8);
  (*(v3 + 8))(v2, v11);

  v9 = v1[1];

  return v9();
}

uint64_t sub_2541B8A38()
{
  (*(v0[14] + 8))(v0[15], v0[13]);
  v0[39] = v0[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA410, &unk_2542592D0);
  sub_25424E158();
  v1 = swift_task_alloc();
  v0[40] = v1;
  *v1 = v0;
  v1[1] = sub_2541B87EC;

  return MEMORY[0x282200460]();
}

uint64_t sub_2541B8B2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for EventRecord.DecodedEvent(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2541BB7B4(a1, v6, type metadata accessor for SomeEvent);
  swift_storeEnumTagMultiPayload();
  static EventRecord.encodeEvent(_:)(v6, a2);
  return sub_2541BB81C(v6, type metadata accessor for EventRecord.DecodedEvent);
}

uint64_t sub_2541B8C9C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B8E50, &qword_254254390);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_25424D948();
  __swift_allocate_value_buffer(v3, qword_27F5BA3F8);
  v4 = __swift_project_value_buffer(v3, qword_27F5BA3F8);
  sub_25424D8C8();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_2541B8E18(uint64_t a1)
{
  sub_25424DD88();
}

unint64_t sub_2541B8EEC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2541BB68C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_2541B8F1C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x73746E657665;
  v5 = 0xE500000000000000;
  v6 = 0x7472617473;
  v7 = 0xE300000000000000;
  v8 = 6581861;
  if (v2 != 4)
  {
    v8 = 1936154996;
    v7 = 0xE400000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE800000000000000;
  v10 = 0x617461646174656DLL;
  if (v2 != 1)
  {
    v10 = 1701869940;
    v9 = 0xE400000000000000;
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

void sub_2541B8FB8(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_25424D418();
  v77 = *(v4 - 8);
  v78 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v75 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v76 = &v68 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA4C8, "pV");
  MEMORY[0x28223BE20](v8 - 8);
  v81 = &v68 - v9;
  v10 = type metadata accessor for DigestRecord.Metadata(0);
  v79 = *(v10 - 8);
  v80 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B8E50, &qword_254254390);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v68 - v14;
  v83 = sub_25424D948();
  v16 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v18 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_25424E558() == 0x694473746E657645 && v19 == 0xEC00000074736567)
  {
  }

  else
  {
    v20 = sub_25424EAB8();

    if ((v20 & 1) == 0)
    {
      v38 = type metadata accessor for DigestRecord(0);
      *&v84 = 0;
      *(&v84 + 1) = 0xE000000000000000;
      sub_25424E688();

      *&v84 = 0xD00000000000001FLL;
      *(&v84 + 1) = 0x8000000254250D10;
      v39 = sub_25424E558();
      MEMORY[0x259C05CA0](v39);

      v40 = v84;
      sub_2541BB760();
      swift_allocError();
      *v41 = v38;
      *(v41 + 8) = v40;
      swift_willThrow();

      return;
    }
  }

  v73 = a2;
  v74 = v12;
  v21 = [a1 recordID];
  v22 = [v21 recordName];
  sub_25424DCB8();

  sub_25424D8C8();

  v23 = v16;
  v24 = *(v16 + 48);
  v25 = v83;
  if (v24(v15, 1, v83) == 1)
  {
    sub_254132E5C(v15, &unk_27F5B8E50, &qword_254254390);
    v26 = type metadata accessor for DigestRecord(0);
    *&v84 = 0;
    *(&v84 + 1) = 0xE000000000000000;
    sub_25424E688();

    *&v84 = 0xD00000000000002FLL;
    *(&v84 + 1) = 0x8000000254250D30;
    v27 = a1;
    v28 = [a1 recordID];
    v29 = [v28 recordName];

    v30 = sub_25424DCB8();
    v32 = v31;

    MEMORY[0x259C05CA0](v30, v32);

    v33 = v84;
    sub_2541BB760();
    swift_allocError();
    *v34 = v26 | 0x8000000000000000;
    *(v34 + 8) = v33;
    swift_willThrow();

    return;
  }

  (*(v23 + 32))(v18, v15, v25);
  v35 = [a1 encryptedValues];
  v36 = v82;
  v37 = sub_25422FEFC(2u, v35);
  if (v36)
  {
    swift_unknownObjectRelease();

LABEL_13:
    (*(v23 + 8))(v18, v25);
    return;
  }

  v82 = a1;
  v42 = v21;
  if (v37 != 1)
  {
    v43 = v37;
    v44 = type metadata accessor for DigestRecord(0);
    *&v84 = 0;
    *(&v84 + 1) = 0xE000000000000000;
    sub_25424E688();
    MEMORY[0x259C05CA0](0x6E6F2065756C6156, 0xEF20646C65696620);
    LOBYTE(v85) = 2;
    sub_25424E7D8();
    MEMORY[0x259C05CA0](0x6E6B6E7520736920, 0xED0000203A6E776FLL);
    v85 = v43;
    v45 = sub_25424EA58();
    MEMORY[0x259C05CA0](v45);

    v46 = v84;
    sub_2541BB760();
    swift_allocError();
    *v47 = v44 | 0x2000000000000000;
    *(v47 + 8) = v46;
    swift_willThrow();

    swift_unknownObjectRelease();
    goto LABEL_13;
  }

  swift_unknownObjectRetain();
  sub_254230304(1u, v35, &v84);
  swift_unknownObjectRelease();
  v72 = *(&v84 + 1);
  v48 = v84;
  sub_25424D168();
  swift_allocObject();
  v71 = v35;
  sub_25424D158();
  sub_2541BB03C(&qword_27F5BA4D8, type metadata accessor for DigestRecord.Metadata, &protocol conformance descriptor for DigestRecord.Metadata);
  v50 = v80;
  v49 = v81;
  v70 = v48;
  sub_25424D138();
  v69 = v42;

  (*(v79 + 56))(v49, 0, 1, v50);
  sub_2541BAD1C(v49, v74);
  v51 = v82;
  v52 = sub_25423072C(0, v51);

  v53 = [v52 fileURL];
  if (v53)
  {
    v54 = v75;
    v55 = v53;
    sub_25424D3F8();

    v57 = v76;
    v56 = v77;
    v58 = *(v77 + 32);
    v81 = v52;
    v59 = v78;
    v58(v76, v54, v78);
    v60 = *(v23 + 16);
    v61 = v73;
    v82 = v18;
    v60(v73, v18, v83);
    v62 = type metadata accessor for DigestRecord(0);
    (*(v56 + 16))(v61 + *(v62 + 32), v57, v59);
    v80 = v62;
    v63 = v61 + *(v62 + 28);
    v64 = v74;
    sub_2541BB7B4(v74, v63, type metadata accessor for DigestRecord.Metadata);
    LOBYTE(v54) = sub_25424D3B8();

    sub_254134D04(v70, v72);
    swift_unknownObjectRelease();

    (*(v56 + 8))(v57, v59);
    sub_2541BB81C(v64, type metadata accessor for DigestRecord.Metadata);
    (*(v23 + 8))(v82, v83);
    if (v54)
    {
      *(v61 + *(v80 + 20)) = MEMORY[0x277D84F90];
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v65 = type metadata accessor for DigestRecord(0);
    *&v84 = 0;
    *(&v84 + 1) = 0xE000000000000000;
    sub_25424E688();
    MEMORY[0x259C05CA0](0x6E6F2065756C6156, 0xEF20646C65696620);
    LOBYTE(v85) = 0;
    sub_25424E7D8();
    MEMORY[0x259C05CA0](0x206F6E2073616820, 0xEF4C5255656C6966);
    v66 = v84;
    sub_2541BB760();
    swift_allocError();
    *v67 = v65 | 0x8000000000000000;
    *(v67 + 8) = v66;
    swift_willThrow();

    sub_254134D04(v70, v72);
    swift_unknownObjectRelease();

    sub_2541BB81C(v74, type metadata accessor for DigestRecord.Metadata);
    (*(v23 + 8))(v18, v83);
  }
}

uint64_t sub_2541B9BFC()
{
  sub_25424EBD8();
  sub_25424DD88();

  return sub_25424EC28();
}

uint64_t sub_2541B9CCC(uint64_t a1)
{
  sub_25424DD88();
}

uint64_t sub_2541B9D88(uint64_t a1)
{
  sub_25424EBD8();
  sub_25424DD88();

  return sub_25424EC28();
}

unint64_t sub_2541B9E54@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2541BB6D8(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_2541B9E84(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1701670760;
  v5 = 0xE300000000000000;
  v6 = 6581861;
  v7 = 0xEA00000000007365;
  v8 = 0x69726F6765746163;
  if (v2 != 3)
  {
    v8 = 0x746E756F63;
    v7 = 0xE500000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x7472617473;
    v3 = 0xE500000000000000;
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

uint64_t sub_2541B9F10()
{
  v1 = *v0;
  v2 = 1701670760;
  v3 = 6581861;
  v4 = 0x69726F6765746163;
  if (v1 != 3)
  {
    v4 = 0x746E756F63;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x7472617473;
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

unint64_t sub_2541B9F98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2541BB6D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2541B9FC0(uint64_t a1)
{
  v2 = sub_2541BAFE8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2541B9FFC(uint64_t a1)
{
  v2 = sub_2541BAFE8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DigestRecord.Metadata.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA428, &unk_2542592E8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2541BAFE8();
  sub_25424EC78();
  v16 = 0;
  sub_25424D948();
  sub_2541BB03C(&qword_27F5B89D8, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
  sub_25424EA18();
  if (!v2)
  {
    v9 = type metadata accessor for DigestRecord.Metadata(0);
    v15 = 1;
    sub_25424D8B8();
    sub_2541BB03C(&qword_27F5B8C78, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
    sub_25424EA18();
    v14 = 2;
    sub_25424EA18();
    v11[1] = *(v3 + *(v9 + 28));
    v13 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9060, &qword_254254410);
    sub_2541BB084(&qword_27F5BA438, sub_2541406B4, MEMORY[0x277D83B50]);
    sub_25424EA18();
    v12 = 4;
    sub_25424EA08();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t DigestRecord.Metadata.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = sub_25424D8B8();
  v4 = *(v3 - 8);
  v34 = v3;
  v35 = v4;
  v5 = MEMORY[0x28223BE20](v3);
  v33 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = v30 - v7;
  v9 = sub_25424D948();
  v36 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v37 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA440, &qword_2542592F8);
  v38 = *(v11 - 8);
  v39 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = v30 - v12;
  v14 = type metadata accessor for DigestRecord.Metadata(0);
  MEMORY[0x28223BE20](v14);
  v16 = v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2541BAFE8();
  v40 = v13;
  v17 = v41;
  sub_25424EC68();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v31 = v14;
  v41 = a1;
  v47 = 0;
  sub_2541BB03C(&qword_27F5B89F0, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
  v18 = v37;
  sub_25424E978();
  (*(v36 + 32))(v16, v18, v9);
  v46 = 1;
  sub_2541BB03C(&qword_27F5B8CA8, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
  v19 = v34;
  sub_25424E978();
  v30[1] = v9;
  v20 = *(v31 + 20);
  v21 = v8;
  v22 = v19;
  v23 = *(v35 + 32);
  v37 = v16;
  v23(&v16[v20], v21, v19);
  v45 = 2;
  v24 = v33;
  sub_25424E978();
  v25 = v41;
  v26 = v31;
  v23(&v37[*(v31 + 24)], v24, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9060, &qword_254254410);
  v44 = 3;
  sub_2541BB084(&qword_27F5BA448, sub_2541407C8, MEMORY[0x277D83B70]);
  sub_25424E978();
  v27 = v37;
  *&v37[*(v26 + 28)] = v42;
  v43 = 4;
  v28 = sub_25424E968();
  (*(v38 + 8))(v40, v39);
  *(v27 + *(v26 + 32)) = v28;
  sub_2541BB7B4(v27, v32, type metadata accessor for DigestRecord.Metadata);
  __swift_destroy_boxed_opaque_existential_1(v25);
  return sub_2541BB81C(v27, type metadata accessor for DigestRecord.Metadata);
}

uint64_t sub_2541BAA1C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_2541BB728(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_2541BAA5C(uint64_t a1)
{
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9060, &qword_254254410);
  v25 = sub_25414081C(&qword_27F5BA4E8, &qword_27F5B9060, &qword_254254410, MEMORY[0x277D83B68]);
  v23[0] = a1;
  v2 = __swift_project_boxed_opaque_existential_1(v23, v24);
  MEMORY[0x28223BE20](v2);
  v4 = &v18[-v3];
  (*(v5 + 16))(&v18[-v3]);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v20);
  v7 = 0;
  v8 = -1 << *(*v4 + 32);
  v9 = ~v8;
  v10 = (*v4 + 56);
  v11 = *v10;
  v12 = -v8;
  v13 = v12 < 64;
  v14 = -1 << v12;
  if (v13)
  {
    v15 = ~v14;
  }

  else
  {
    v15 = -1;
  }

  *boxed_opaque_existential_1 = *v4;
  boxed_opaque_existential_1[1] = v10;
  boxed_opaque_existential_1[2] = v9;
  boxed_opaque_existential_1[3] = 0;
  boxed_opaque_existential_1[4] = v15 & v11;
  while (1)
  {
    do
    {
      __swift_mutable_project_boxed_opaque_existential_1(v20, AssociatedTypeWitness);
      sub_25424E5C8();
    }

    while (v19 < 5u || v19 == 6);
    if (v19 != 5)
    {
      break;
    }

    if ((v7 & 1) == 0)
    {
      v7 = 1;
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v20);
  __swift_destroy_boxed_opaque_existential_1(v23);
  return v7;
}

unint64_t sub_2541BAC60(_BYTE *a1, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_2541BEA18(a1, &a1[a2]);
  }

  sub_25424D2B8();
  swift_allocObject();
  sub_25424D258();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  sub_25424D468();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

uint64_t sub_2541BAD1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DigestRecord.Metadata(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2541BAD80()
{
  result = qword_27F5BA420;
  if (!qword_27F5BA420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5B9248, &qword_2542545B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA420);
  }

  return result;
}

uint64_t sub_2541BADFC(uint64_t a1)
{
  v2 = sub_25424D188();
  MEMORY[0x28223BE20](v2 - 8);
  v7 = type metadata accessor for DigestRecord.Metadata(0);
  v8 = sub_2541BB03C(&qword_27F5BA4E0, type metadata accessor for DigestRecord.Metadata, &protocol conformance descriptor for DigestRecord.Metadata);
  v3 = __swift_allocate_boxed_opaque_existential_1(&v6);
  sub_2541BB7B4(a1, v3, type metadata accessor for DigestRecord.Metadata);
  sub_25424D1C8();
  swift_allocObject();
  sub_25424D1B8();
  sub_25424D178();
  sub_25424D198();
  __swift_project_boxed_opaque_existential_1(&v6, v7);
  v4 = sub_25424D1A8();

  __swift_destroy_boxed_opaque_existential_1(&v6);
  return v4;
}

unint64_t sub_2541BAFE8()
{
  result = qword_27F5BA430;
  if (!qword_27F5BA430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA430);
  }

  return result;
}

uint64_t sub_2541BB03C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2541BB084(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5B9060, &qword_254254410);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2541BB100()
{
  result = qword_27F5BA450;
  if (!qword_27F5BA450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA450);
  }

  return result;
}

void sub_2541BB17C(uint64_t a1)
{
  sub_25424D948();
  if (v1 <= 0x3F)
  {
    sub_2541BB238();
    if (v2 <= 0x3F)
    {
      type metadata accessor for DigestRecord.Metadata(319);
      if (v3 <= 0x3F)
      {
        sub_25424D418();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2541BB238()
{
  if (!qword_27F5BA468)
  {
    v0 = sub_25424E048();
    if (!v1)
    {
      atomic_store(v0, &qword_27F5BA468);
    }
  }
}

void sub_2541BB2C0(uint64_t a1)
{
  sub_25424D948();
  if (v1 <= 0x3F)
  {
    sub_25424D8B8();
    if (v2 <= 0x3F)
    {
      sub_2541BB364(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2541BB364(uint64_t a1)
{
  if (!qword_27F5BA480)
  {
    sub_2541BB3C0();
    v1 = sub_25424E2F8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F5BA480);
    }
  }
}

unint64_t sub_2541BB3C0()
{
  result = qword_27F5BA488;
  if (!qword_27F5BA488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA488);
  }

  return result;
}

unint64_t sub_2541BB428()
{
  result = qword_27F5BA490;
  if (!qword_27F5BA490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA490);
  }

  return result;
}

unint64_t sub_2541BB480()
{
  result = qword_27F5BA498;
  if (!qword_27F5BA498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA498);
  }

  return result;
}

unint64_t sub_2541BB4D8()
{
  result = qword_27F5BA4A0;
  if (!qword_27F5BA4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA4A0);
  }

  return result;
}

unint64_t sub_2541BB530()
{
  result = qword_27F5BA4A8;
  if (!qword_27F5BA4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA4A8);
  }

  return result;
}

unint64_t sub_2541BB588()
{
  result = qword_27F5BA4B0;
  if (!qword_27F5BA4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA4B0);
  }

  return result;
}

unint64_t sub_2541BB5E0()
{
  result = qword_27F5BA4B8;
  if (!qword_27F5BA4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA4B8);
  }

  return result;
}

unint64_t sub_2541BB638()
{
  result = qword_27F5BA4C0;
  if (!qword_27F5BA4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA4C0);
  }

  return result;
}

unint64_t sub_2541BB68C(uint64_t a1, uint64_t a2)
{
  v2 = sub_25424E8E8();

  if (v2 >= 6)
  {
    return 6;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_2541BB6D8(uint64_t a1, uint64_t a2)
{
  v2 = sub_25424E8E8();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2541BB728(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

unint64_t sub_2541BB760()
{
  result = qword_27F5BA4D0;
  if (!qword_27F5BA4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA4D0);
  }

  return result;
}

uint64_t sub_2541BB7B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2541BB81C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

unint64_t sub_2541BB904()
{
  result = qword_27F5BA4F0;
  if (!qword_27F5BA4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5BA4F0);
  }

  return result;
}

HomeKitEvents::QueryScope_optional __swiftcall QueryScope.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (rawValue == 1)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}