void sub_24279CEEC(_BYTE *a1)
{
  if (*a1 == 1)
  {
    sub_24279D02C(a1);
  }

  else
  {
    if (qword_281349520 != -1)
    {
      swift_once();
    }

    v2 = sub_2427B8F0C();
    __swift_project_value_buffer(v2, qword_281349DA8);
    v3 = sub_2427B8EEC();
    v4 = sub_2427B90CC();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_24279B000, v3, v4, "Reminders changed prior to starting; scheduling a catch-up sync for after we're started", v5, 2u);
      MEMORY[0x245D19310](v5, -1, -1);
    }

    a1[1] = 1;
  }
}

uint64_t sub_24279D02C(uint64_t a1)
{
  v3 = os_transaction_create();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC0850, &qword_2427BAF98);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2427BAF20;
  *(inited + 32) = 0x746361736E617274;
  *(inited + 40) = 0xEB000000006E6F69;
  *(inited + 48) = v3;
  swift_unknownObjectRetain();
  v5 = sub_24279D160(inited);
  swift_setDeallocating();
  sub_24279D394(inited + 32);
  v6 = *(v1 + 16);
  sub_24279D3FC(v5);

  v7 = sub_2427B8F5C();

  [v6 updateTagsAndExecuteBlock:0 withContext:v7];

  result = swift_unknownObjectRelease();
  *(a1 + 2) = 1;
  return result;
}

unint64_t sub_24279D160(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC07D8, &qword_2427BAE78);
    v3 = sub_2427B933C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      swift_unknownObjectRetain();

      result = sub_24279D264(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_24279D264(uint64_t a1, uint64_t a2)
{
  sub_2427B940C();
  sub_2427B8FCC();
  v4 = sub_2427B943C();

  return sub_24279D2DC(a1, a2, v4);
}

unint64_t sub_24279D2DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_2427B939C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_24279D394(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC0858, &qword_2427BAFA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24279D3FC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC0860, &qword_2427BAFA8);
    v2 = sub_2427B933C();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (*(a1 + 48) + 16 * (__clz(__rbit64(v5)) | (v9 << 6)));
    v14 = v13[1];
    *&v30[0] = *v13;
    *(&v30[0] + 1) = v14;
    swift_unknownObjectRetain();

    swift_dynamicCast();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC0868, &qword_2427BAFB0);
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_24279D6CC(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_24279D6CC(v29, v30);
    result = sub_2427B919C();
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v7 + 8 * (v16 >> 6))) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = *(v7 + 8 * v17);
        if (v21 != -1)
        {
          v10 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v16) & ~*(v7 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v22;
    *(v11 + 16) = v23;
    *(v11 + 32) = v24;
    result = sub_24279D6CC(v30, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

_OWORD *sub_24279D6CC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_24279D6DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_2427B901C();
    if (!v3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v5 = 0;
  if (a3)
  {
LABEL_3:
    v3 = sub_2427B8F6C();
  }

LABEL_4:

  v4(v5, v3);
}

uint64_t sub_24279D7A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_24279D7FC();
  }

  return result;
}

void sub_24279D7FC()
{
  v1 = sub_2427B8F3C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v16[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v0 + 24);
  *v4 = v5;
  (*(v2 + 104))(v4, *MEMORY[0x277D85200], v1);
  v6 = v5;
  LOBYTE(v5) = sub_2427B8F4C();
  (*(v2 + 8))(v4, v1);
  if ((v5 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_4;
  }

  v7 = *(v0 + 40);
  v8 = sub_2427B8FAC();
  LODWORD(v7) = [v7 getBooleanPreference:v8 defaultValue:0];

  if (!v7)
  {
    v13 = sub_24279DAB8();
    type metadata accessor for IntegrationSync();
    inited = swift_initStackObject();
    v15 = os_transaction_create();
    inited[8] = 0;
    inited[9] = v15;
    inited[2] = v13;
    inited[3] = 0xD000000000000015;
    inited[4] = 0x80000002427BAA70;
    inited[5] = 0x7265646E696D6552;
    inited[6] = 0xE900000000000073;
    inited[7] = sub_24279F2A0;
    sub_24279DD14();
    swift_setDeallocating();

    swift_unknownObjectRelease();
    return;
  }

  if (qword_281349520 != -1)
  {
    goto LABEL_9;
  }

LABEL_4:
  v9 = sub_2427B8F0C();
  __swift_project_value_buffer(v9, qword_281349DA8);
  v10 = sub_2427B8EEC();
  v11 = sub_2427B90BC();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_24279B000, v10, v11, "Skipping an integration sync because the user default for disabling integration syncing is set", v12, 2u);
    MEMORY[0x245D19310](v12, -1, -1);
  }
}

uint64_t sub_24279DAB8()
{
  if (!MEMORY[0x277D44848])
  {
    return MEMORY[0x277D84F90];
  }

  v0 = type metadata accessor for ReminderIntegrationDataSource();
  v1 = swift_allocObject();
  v1[2] = [objc_allocWithZone(MEMORY[0x277D44848]) init];
  v1[3] = 0;
  v1[4] = sub_24279DBDC(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC0848, &unk_2427BAF88);
  result = swift_allocObject();
  *(result + 16) = xmmword_2427BAF20;
  *(result + 32) = 0x656C756465686373;
  *(result + 40) = 0xE900000000000064;
  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 64) = 0xD000000000000013;
  *(result + 72) = 0x80000002427BAA90;
  *(result + 80) = v1;
  *(result + 104) = v0;
  *(result + 112) = &off_285511618;
  return result;
}

unint64_t sub_24279DBDC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC07D0, &qword_2427BAE70);
    v3 = sub_2427B933C();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_24279D264(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void sub_24279DD14()
{
  v127 = *MEMORY[0x277D85DE8];
  v115 = MEMORY[0x277D84FA0];
  v109 = v0[3];
  v111 = v0[4];
  v107 = v0[2];
  v113 = *(v107 + 16);
  if (v113)
  {
    v2 = v107 + 32;
    v105 = v0[6];
    v106 = v0[5];
    v102 = v0[8];
    v103 = v0[7];
    do
    {
      sub_24279EC1C(v2, &v122);
      v3 = v122;
      v4 = v123;

      sub_24279EC78(&v116, v3, v4);

      sub_24279EC1C(&v122, &v116);
      v5 = type metadata accessor for IntegrationSync.SyncDataProvider();
      v1 = swift_allocObject();

      v6 = MEMORY[0x277D84F90];
      *(v1 + 168) = sub_24279F1A4(MEMORY[0x277D84F90], &qword_27ECC0810, &qword_2427BAEA8);
      *(v1 + 176) = sub_24279F1A4(v6, &qword_27ECC0808, &qword_2427BAEA0);
      *(v1 + 184) = 0;
      *(v1 + 16) = v103;
      *(v1 + 24) = v102;

      v7 = v103();
      v8 = v119;
      *(v1 + 72) = v118;
      *(v1 + 88) = v8;
      *(v1 + 104) = v120;
      v9 = v117;
      *(v1 + 40) = v116;
      *(v1 + 32) = v7;
      *(v1 + 136) = v109;
      *(v1 + 144) = v111;
      *(v1 + 152) = v106;
      *(v1 + 160) = v105;
      *(v1 + 120) = v121;
      *(v1 + 128) = v107;
      *(v1 + 56) = v9;
      type metadata accessor for IntegrationCollectionSync();
      inited = swift_initStackObject();
      *(&v117 + 1) = v5;
      *&v118 = &off_285511360;
      *&v116 = v1;
      swift_retain_n();
      *(inited + 64) = sub_24279F380(v6);
      sub_24279F31C(&v116, inited + 16);
      v11 = *(v1 + 32);
      *(inited + 56) = v11;
      v12 = v11;

      sub_24279EC1C(v1 + 40, inited + 72);
      __swift_destroy_boxed_opaque_existential_1(&v116);
      sub_24279F4F0();
      sub_2427A51EC(&v122);
      swift_setDeallocating();
      __swift_destroy_boxed_opaque_existential_1(inited + 16);

      sub_2427A51EC(inited + 72);

      v2 += 88;
      --v113;
    }

    while (v113);
  }

  v13 = (*(v97 + 56))();
  v14 = *(v97 + 24);
  v16 = *(v97 + 32);
  v15 = *(v97 + 40);
  v17 = *(v97 + 48);
  v122 = *(v97 + 16);
  v123 = v14;
  v124 = v16;
  v125 = v15;
  v126 = v17;

  v26 = sub_2427A0D44(v13);
  v91 = v14;
  v101 = v13;

  v100 = 0;
  v28 = 0;
  v29 = v26 + 8;
  v30 = 1 << *(v26 + 32);
  if (v30 < 64)
  {
    v31 = ~(-1 << v30);
  }

  else
  {
    v31 = -1;
  }

  v32 = v31 & v26[8];
  v33 = (v30 + 63) >> 6;
  *&v27 = 136315394;
  v90 = v27;
  v95 = v26;
  v93 = v33;
  v94 = v26 + 8;
LABEL_15:
  if (v32)
  {
LABEL_20:
    v35 = v32;
    v96 = v28;
    v36 = __clz(__rbit64(v32)) | (v28 << 6);
    v37 = (v26[6] + 16 * v36);
    v38 = v37[1];
    v92 = *v37;
    v39 = *(v26[7] + 8 * v36);

    v99 = v39;
    v40 = [v99 calendarsForEntityType_];
    sub_2427A152C(0, &qword_2813494D8, 0x277CC59B0);
    sub_2427A1B38();
    v41 = sub_2427B904C();

    if ((v41 & 0xC000000000000001) != 0)
    {
      sub_2427B916C();
      sub_2427B906C();
      v42 = *(&v116 + 1);
      v41 = v116;
      v44 = *(&v117 + 1);
      v43 = v117;
      v45 = v118;
    }

    else
    {
      v44 = 0;
      v46 = -1 << *(v41 + 32);
      v42 = v41 + 56;
      v47 = ~v46;
      v48 = -v46;
      if (v48 < 64)
      {
        v49 = ~(-1 << v48);
      }

      else
      {
        v49 = -1;
      }

      v45 = v49 & *(v41 + 56);
      v43 = v47;
    }

    v104 = 0;
    v98 = (v35 - 1) & v35;
    v50 = (v43 + 64) >> 6;
    v110 = v42;
    v112 = v38;
    v108 = v50;
    while (2)
    {
      v51 = v44;
      while (1)
      {
        if (v41 < 0)
        {
          if (!sub_2427B918C() || (swift_dynamicCast(), v55 = v122, v44 = v51, v54 = v45, !v122))
          {
LABEL_62:
            sub_24279EC14();
            v26 = v95;
            v32 = v98;
            if (v104)
            {
LABEL_14:

              v33 = v93;
              v29 = v94;
              v28 = v96;
              goto LABEL_15;
            }

            if (qword_281349520 != -1)
            {
              swift_once();
            }

            v77 = sub_2427B8F0C();
            __swift_project_value_buffer(v77, qword_281349DA8);
            v78 = v99;

            v79 = sub_2427B8EEC();
            v80 = sub_2427B90BC();

            if (os_log_type_enabled(v79, v80))
            {
              v81 = swift_slowAlloc();
              v1 = swift_slowAlloc();
              v122 = v1;
              *v81 = v90;
              *(v81 + 4) = sub_2427A1BEC(v91, v16, &v122);
              *(v81 + 12) = 2080;
              if (v112)
              {
                v82 = v92;
              }

              else
              {
                v82 = 0x296C6C756E28;
              }

              if (v112)
              {
                v83 = v112;
              }

              else
              {
                v83 = 0xE600000000000000;
              }

              v84 = sub_2427A1BEC(v82, v83, &v122);

              *(v81 + 14) = v84;
              _os_log_impl(&dword_24279B000, v79, v80, "Source %s with persona %s has no calendars and will be removed.", v81, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x245D19310](v1, -1, -1);
              MEMORY[0x245D19310](v81, -1, -1);
            }

            v122 = 0;
            if ([v101 removeSource:v78 commit:0 error:&v122])
            {
              v85 = v122;
              v100 = 1;
              v32 = v98;
              goto LABEL_14;
            }

            v89 = v122;

            v1 = sub_2427B8C4C();

            swift_willThrow();

            goto LABEL_6;
          }
        }

        else
        {
          v52 = v51;
          v53 = v45;
          v44 = v51;
          if (!v45)
          {
            while (1)
            {
              v44 = v52 + 1;
              if (__OFADD__(v52, 1))
              {
                break;
              }

              if (v44 >= v50)
              {
                goto LABEL_62;
              }

              v53 = *(v42 + 8 * v44);
              ++v52;
              if (v53)
              {
                goto LABEL_34;
              }
            }

            __break(1u);
            goto LABEL_83;
          }

LABEL_34:
          v54 = (v53 - 1) & v53;
          v55 = *(*(v41 + 48) + ((v44 << 9) | (8 * __clz(__rbit64(v53)))));
          if (!v55)
          {
            goto LABEL_62;
          }
        }

        v114 = v54;
        v56 = v41;
        v57 = v16;
        v58 = v55;
        v59 = [v55 externalID];
        if (!v59)
        {
          break;
        }

        v60 = v59;
        v61 = sub_2427B8FBC();
        v1 = v62;

        if (!*(v115 + 16))
        {
          goto LABEL_49;
        }

        sub_2427B940C();

        sub_2427B8FCC();
        v63 = sub_2427B943C();
        v64 = -1 << *(v115 + 32);
        v65 = v63 & ~v64;
        if (((*(v115 + 56 + ((v65 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v65) & 1) == 0)
        {
LABEL_48:

          goto LABEL_49;
        }

        v66 = ~v64;
        while (1)
        {
          v67 = (*(v115 + 48) + 16 * v65);
          v68 = *v67 == v61 && v67[1] == v1;
          if (v68 || (sub_2427B939C() & 1) != 0)
          {
            break;
          }

          v65 = (v65 + 1) & v66;
          if (((*(v115 + 56 + ((v65 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v65) & 1) == 0)
          {
            goto LABEL_48;
          }
        }

        swift_bridgeObjectRelease_n();

        v104 = 1;
        v51 = v44;
        v45 = v114;
        v16 = v57;
        v41 = v56;
        v50 = v108;
        v42 = v110;
      }

      v61 = 0;
      v1 = 0;
LABEL_49:
      if (qword_281349520 != -1)
      {
        swift_once();
      }

      v69 = sub_2427B8F0C();
      __swift_project_value_buffer(v69, qword_281349DA8);

      v70 = sub_2427B8EEC();
      v71 = sub_2427B90BC();

      if (os_log_type_enabled(v70, v71))
      {
        v72 = swift_slowAlloc();
        v73 = swift_slowAlloc();
        v122 = v73;
        *v72 = 136315138;
        if (v1)
        {
          v74 = v61;
        }

        else
        {
          v74 = 0x296C6C756E28;
        }

        if (!v1)
        {
          v1 = 0xE600000000000000;
        }

        v75 = sub_2427A1BEC(v74, v1, &v122);

        *(v72 + 4) = v75;
        _os_log_impl(&dword_24279B000, v70, v71, "Removing a calendar with an unknown identifier %s", v72, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v73);
        MEMORY[0x245D19310](v73, -1, -1);
        MEMORY[0x245D19310](v72, -1, -1);
      }

      else
      {
      }

      v16 = v57;
      v122 = 0;
      v41 = v56;
      v50 = v108;
      if ([v101 removeCalendar:v58 commit:0 error:&v122])
      {
        v76 = v122;

        v100 = 1;
        v42 = v110;
        v45 = v114;
        continue;
      }

      break;
    }

    v87 = v122;

    v1 = sub_2427B8C4C();

    swift_willThrow();

    sub_24279EC14();
  }

  else
  {
    while (1)
    {
      v34 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
LABEL_83:
        __break(1u);
        goto LABEL_84;
      }

      if (v34 >= v33)
      {
        break;
      }

      v32 = v29[v34];
      ++v28;
      if (v32)
      {
        v28 = v34;
        goto LABEL_20;
      }
    }

    if ((v100 & 1) == 0)
    {

      return;
    }

    v122 = 0;
    if ([v101 commitWithRollback_])
    {
      v86 = v122;

      return;
    }

    v88 = v122;
    v1 = sub_2427B8C4C();

    swift_willThrow();
  }

LABEL_6:
  if (qword_281349520 != -1)
  {
LABEL_84:
    swift_once();
  }

  v18 = sub_2427B8F0C();
  __swift_project_value_buffer(v18, qword_281349DA8);
  v19 = v1;
  v20 = sub_2427B8EEC();
  v21 = sub_2427B90BC();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v22 = 138412290;
    v24 = v1;
    v25 = _swift_stdlib_bridgeErrorToNSError();
    *(v22 + 4) = v25;
    *v23 = v25;
    _os_log_impl(&dword_24279B000, v20, v21, "Calendar cleanup following sync failed: %@", v22, 0xCu);
    sub_2427A6EF8(v23);
    MEMORY[0x245D19310](v23, -1, -1);
    MEMORY[0x245D19310](v22, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_24279EC78(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_2427B940C();
  sub_2427B8FCC();
  v8 = sub_2427B943C();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_2427B939C() & 1) != 0)
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

    sub_24279F000(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_24279EDC8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC0818, &qword_2427BAEB0);
  result = sub_2427B91BC();
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
      sub_2427B940C();

      sub_2427B8FCC();
      result = sub_2427B943C();
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

uint64_t sub_24279F000(uint64_t result, uint64_t a2, unint64_t a3, char a4)
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
    sub_2427A6984(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_2427A6BE4();
      goto LABEL_16;
    }

    sub_24279EDC8(v8 + 1);
  }

  v10 = *v4;
  sub_2427B940C();
  sub_2427B8FCC();
  result = sub_2427B943C();
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

      result = sub_2427B939C();
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
  result = sub_2427B93AC();
  __break(1u);
  return result;
}

unint64_t sub_24279F1A4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_2427B933C();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      v10 = v9;
      result = sub_2427A171C(v7, v8);
      if (v12)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v5[6] + 16 * result);
      *v13 = v7;
      v13[1] = v8;
      *(v5[7] + 8 * result) = v10;
      v14 = v5[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v5[2] = v16;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

id sub_24279F2A0()
{
  result = [objc_allocWithZone(MEMORY[0x277CC5A40]) initWithEKOptions_];
  if (result)
  {
    v1 = result;
    [result setAllowsIntegrationModifications_];
    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24279F31C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_24279F380(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC0800, &unk_2427BBCC0);
    v3 = sub_2427B933C();

    for (i = (a1 + 64); ; i += 5)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      v10 = v9;
      result = sub_2427B6A88(v5, v6, v7, v8);
      if (v12)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v3[6] + 32 * result);
      *v13 = v5;
      v13[1] = v6;
      v13[2] = v7;
      v13[3] = v8;
      *(v3[7] + 8 * result) = v10;
      v14 = v3[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v3[2] = v16;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

void sub_24279F4F0()
{
  v2 = v0;
  v60 = *MEMORY[0x277D85DE8];
  v3 = v0[5];
  v4 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v3);
  v5 = v0[11];
  v6 = v0[12];
  v7 = (*(v4 + 32))(v2[11], v2[12], v3, v4);
  if (!v1)
  {
    v8 = v7;
    v9 = [v7 externalModificationTag];
    if (v9)
    {
      v10 = v9;
      v11 = sub_2427B8FBC();
      v13 = v12;
    }

    else
    {

      v11 = 0;
      v13 = 0;
    }

    if (qword_281349520 != -1)
    {
      swift_once();
    }

    v14 = sub_2427B8F0C();
    __swift_project_value_buffer(v14, qword_281349DA8);

    v15 = sub_2427B8EEC();
    v16 = sub_2427B90AC();

    v50 = v5;
    if (os_log_type_enabled(v15, v16))
    {
      v51 = v11;
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v54 = v18;
      *v17 = 136446722;
      *(v17 + 4) = sub_2427A1BEC(v2[9], v2[10], &v54);
      *(v17 + 12) = 2080;
      *(v17 + 14) = sub_2427A1BEC(v2[13], v2[14], &v54);
      *(v17 + 22) = 2082;
      if (v13)
      {
        v19 = 1752459639;
      }

      else
      {
        v19 = 0x74756F68746977;
      }

      if (v13)
      {
        v20 = 0xE400000000000000;
      }

      else
      {
        v20 = 0xE700000000000000;
      }

      v21 = sub_2427A1BEC(v19, v20, &v54);

      *(v17 + 24) = v21;
      _os_log_impl(&dword_24279B000, v15, v16, "Requesting a sync of %{public}s %s %{public}s a previous mod tag.", v17, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x245D19310](v18, -1, -1);
      v22 = v17;
      v11 = v51;
      MEMORY[0x245D19310](v22, -1, -1);
    }

    v23 = MEMORY[0x245D18D70]();
    v24 = v2[18];
    v25 = v2[19];
    __swift_project_boxed_opaque_existential_1(v2 + 15, v24);
    v53[0] = v11;
    v53[1] = v13;
    (*(v25 + 8))(&v54, v53, v24, v25);
    v52 = v11;

    v48 = v54;
    v49 = v55;
    v27 = v56;
    v26 = v57;
    v28 = v58;
    v29 = v59;
    objc_autoreleasePoolPop(v23);
    v30 = v29;
    if (v29)
    {
      v54 = v27;
      v55 = v26;
      v56 = v28;

      sub_2427A4290(&v54);
      v31 = v27;
      v32 = v26;
      v33 = v28;
      v34 = 1;
    }

    else
    {
      v54 = v27;

      sub_2427B4804(&v54);
      v31 = v27;
      v32 = v26;
      v33 = v28;
      v34 = 0;
    }

    sub_2427A5188(v31, v32, v33, v34);
    if (v49)
    {
      if (v13)
      {
        if (v48 != v52 || v49 != v13)
        {
          v35 = sub_2427B939C();

          if ((v35 & 1) == 0)
          {
            goto LABEL_27;
          }
        }

LABEL_32:
        v43 = v2[7];
        v54 = 0;
        v44 = [v43 commitWithRollback_];
        v45 = v54;
        if (v44)
        {

          sub_2427A5188(v27, v26, v28, v30);
        }

        else
        {
          v46 = v45;
          sub_2427B8C4C();

          swift_willThrow();

          sub_2427A5188(v27, v26, v28, v30);
        }

        return;
      }
    }

    else
    {
      if (!v13)
      {
        goto LABEL_32;
      }

      v48 = 0;
    }

LABEL_27:
    v36 = v28;
    v37 = v2[5];
    v38 = v2[6];
    __swift_project_boxed_opaque_existential_1(v2 + 2, v37);
    v39 = (*(v38 + 32))(v50, v6, v37, v38);
    if (v49)
    {
      v40 = sub_2427B8FAC();
    }

    else
    {
      v40 = 0;
    }

    [v39 setExternalModificationTag_];

    v41 = v2[7];
    v54 = 0;
    if (![v41 saveCalendar:v39 commit:0 error:&v54])
    {
      v47 = v54;
      sub_2427B8C4C();

      swift_willThrow();

      sub_2427A5188(v27, v26, v36, v30);

      return;
    }

    v42 = v54;

    v28 = v36;
    goto LABEL_32;
  }
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_24279FBD8(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v124 = *MEMORY[0x277D85DE8];
  swift_beginAccess();
  v7 = v2[21];
  if (v7[2])
  {

    v8 = sub_2427A171C(a1, a2);
    if (v9)
    {
      v3 = *(v7[7] + 8 * v8);
LABEL_4:

      return v3;
    }
  }

  v10 = sub_2427A08AC(a1, a2);
  if (v116)
  {
    return v3;
  }

  v107 = v10;
  v108 = a1;
  v114 = a2;
  v11 = [v10 calendarsForEntityType_];
  sub_2427A152C(0, &qword_2813494D8, 0x277CC59B0);
  sub_2427A1B38();
  v12 = sub_2427B904C();

  if ((v12 & 0xC000000000000001) != 0)
  {
    sub_2427B916C();
    sub_2427B906C();
    v12 = v119;
    v14 = v120;
    v15 = v121;
    v16 = v122;
    v17 = v123;
  }

  else
  {
    v16 = 0;
    v18 = -1 << *(v12 + 32);
    v14 = v12 + 56;
    v19 = ~v18;
    v20 = -v18;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v17 = v21 & *(v12 + 56);
    v15 = v19;
  }

  v111 = 0;
  v22 = (v15 + 64) >> 6;
  if (v114)
  {
    v23 = v108;
  }

  else
  {
    v23 = 0x746C75616665643CLL;
  }

  v24 = 0xE90000000000003ELL;
  if (v114)
  {
    v24 = v114;
  }

  v105 = v24;
  v106 = v23;
  *&v13 = 136315650;
  v104 = v13;
  v109 = v12;
  v110 = v14;
  v113 = v22;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        if (v12 < 0)
        {
          v28 = sub_2427B918C();
          if (!v28 || (v117 = v28, swift_dynamicCast(), v3 = v118[0], v27 = v17, !v118[0]))
          {
LABEL_91:
            sub_24279EC14();
            v22 = v107;
            v3 = v111;
            if (v111)
            {

              return v3;
            }

            v3 = [objc_opt_self() calendarForEntityType:0 eventStore:v4[4]];

            v94 = sub_2427B8FAC();

            [v3 setTitle_];

            v95 = sub_2427B8FAC();

            [v3 setExternalID_];

            [v3 setSource_];
            [v3 setImmutable_];
            v96 = v4[4];
            v118[0] = 0;
            v97 = [v96 saveCalendar:v3 commit:1 error:v118];
            v98 = v118[0];
            if (!v97)
            {
              v100 = v118[0];
              sub_2427B8C4C();

              swift_willThrow();
              return v3;
            }

            if (!v4[23])
            {
              v102 = v118[0];

              return v3;
            }

            v118[0] = v4[23];
            v99 = v98;

            v3 = v3;
            MEMORY[0x245D18880]();
            if (*((v118[0] & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v118[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
LABEL_97:
              sub_2427B903C();

              v4[23] = v118[0];
              goto LABEL_4;
            }

LABEL_109:
            sub_2427B902C();
            goto LABEL_97;
          }
        }

        else
        {
          v25 = v16;
          v26 = v17;
          if (!v17)
          {
            while (1)
            {
              v16 = v25 + 1;
              if (__OFADD__(v25, 1))
              {
                break;
              }

              if (v16 >= v22)
              {
                goto LABEL_91;
              }

              v26 = *(v14 + 8 * v16);
              ++v25;
              if (v26)
              {
                goto LABEL_25;
              }
            }

            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
            goto LABEL_109;
          }

LABEL_25:
          v27 = (v26 - 1) & v26;
          v3 = *(*(v12 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v26)))));
          if (!v3)
          {
            goto LABEL_91;
          }
        }

        v115 = v27;
        v29 = [v3 externalID];
        if (v29)
        {
          v30 = v29;
          v31 = sub_2427B8FBC();
          v33 = v32;

          v22 = v113;
          if (v33)
          {
            if (v31 == v4[5] && v33 == v4[6])
            {

              break;
            }

            v35 = sub_2427B939C();

            if (v35)
            {
              break;
            }
          }
        }

        v17 = v115;
      }

      if (v111)
      {
        break;
      }

      v75 = v12;
      swift_beginAccess();
      v76 = v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v117 = v4[21];
      v78 = v117;
      v4[21] = 0x8000000000000000;
      v79 = sub_2427A171C(v108, v114);
      v81 = v78[2];
      v82 = (v80 & 1) == 0;
      v63 = __OFADD__(v81, v82);
      v83 = v81 + v82;
      if (v63)
      {
        __break(1u);
LABEL_111:
        __break(1u);
      }

      v84 = v80;
      if (v78[3] >= v83)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v92 = v79;
          sub_2427B7614();
          v79 = v92;
        }
      }

      else
      {
        sub_2427A1BA0(v83, isUniquelyReferenced_nonNull_native);
        v79 = sub_2427A171C(v108, v114);
        if ((v84 & 1) != (v85 & 1))
        {
          goto LABEL_115;
        }
      }

      v12 = v75;
      v86 = v117;
      if (v84)
      {
        v87 = v117[7];
        v88 = *(v87 + 8 * v79);
        *(v87 + 8 * v79) = v76;
      }

      else
      {
        v117[(v79 >> 6) + 8] |= 1 << v79;
        v89 = (v86[6] + 16 * v79);
        *v89 = v108;
        v89[1] = v114;
        *(v86[7] + 8 * v79) = v76;
        v90 = v86[2];
        v63 = __OFADD__(v90, 1);
        v91 = v90 + 1;
        if (v63)
        {
          goto LABEL_111;
        }

        v86[2] = v91;
      }

      v22 = v113;
      v17 = v115;
      v4[21] = v86;
      swift_endAccess();
      v111 = v3;
      v14 = v110;
    }

    v36 = qword_281349520;
    v112 = v111;
    if (v36 != -1)
    {
      swift_once();
    }

    v37 = sub_2427B8F0C();
    __swift_project_value_buffer(v37, qword_281349DA8);

    v38 = sub_2427B8EEC();
    v39 = sub_2427B90BC();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v118[0] = v41;
      *v40 = v104;
      v42 = v4[5];
      v43 = v4[6];

      v44 = sub_2427A1BEC(v42, v43, v118);

      *(v40 + 4) = v44;
      *(v40 + 12) = 2080;
      v46 = v4[17];
      v45 = v4[18];

      v47 = sub_2427A1BEC(v46, v45, v118);

      *(v40 + 14) = v47;
      *(v40 + 22) = 2080;

      v48 = sub_2427A1BEC(v106, v105, v118);

      *(v40 + 24) = v48;
      _os_log_impl(&dword_24279B000, v38, v39, "Duplicate calendar with ID %s in source %s in persona %s. Arbitrarily keeping the first one and deleting this one. Resetting mod tag on the first to cause a full sync.", v40, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x245D19310](v41, -1, -1);
      MEMORY[0x245D19310](v40, -1, -1);
    }

    v49 = [v3 eventStore];
    if (!v49)
    {
      __break(1u);
LABEL_113:
      __break(1u);
LABEL_114:
      __break(1u);
LABEL_115:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC07E0, &unk_2427BAE80);
      result = sub_2427B93BC();
      __break(1u);
      return result;
    }

    v50 = v49;
    v118[0] = 0;
    v51 = [v49 removeCalendar:v3 commit:0 error:v118];

    v52 = v118[0];
    if (!v51)
    {
      goto LABEL_99;
    }

    v53 = v118[0];
    [v112 setExternalModificationTag_];
    v54 = [v112 eventStore];
    if (!v54)
    {
      goto LABEL_113;
    }

    v55 = v54;
    v118[0] = 0;
    v56 = [v54 saveCalendar:v112 commit:0 error:v118];

    v52 = v118[0];
    if (!v56)
    {
LABEL_99:
      v101 = v52;

      sub_2427B8C4C();
      swift_willThrow();

      goto LABEL_101;
    }

    v57 = v118[0];
    v118[0] = sub_2427A61B8();
    v58 = v3;
    v22 = sub_2427A70F0(v118, v58);

    v3 = v118[0];
    v59 = v118[0] >> 62;
    if (v118[0] >> 62)
    {
      v60 = sub_2427B917C();
      v61 = v60 - v22;
      if (v60 < v22)
      {
        goto LABEL_104;
      }
    }

    else
    {
      v60 = *((v118[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
      v61 = v60 - v22;
      if (v60 < v22)
      {
        goto LABEL_104;
      }
    }

    if (v22 < 0)
    {
      goto LABEL_105;
    }

    if (v59)
    {
      v62 = sub_2427B917C();
    }

    else
    {
      v62 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v62 < v60)
    {
      goto LABEL_106;
    }

    v63 = __OFSUB__(0, v61);
    v64 = -v61;
    if (v63)
    {
      goto LABEL_107;
    }

    if (v59)
    {
      v65 = sub_2427B917C();
    }

    else
    {
      v65 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v63 = __OFADD__(v65, v64);
    v66 = v65 + v64;
    if (v63)
    {
      goto LABEL_108;
    }

    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (v59)
    {
      isUniquelyReferenced_nonNull_bridgeObject = 0;
    }

    if (isUniquelyReferenced_nonNull_bridgeObject == 1 && v66 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v14 = v110;
    }

    else
    {
      if (v59)
      {
        sub_2427B917C();
      }

      v14 = v110;
      v3 = sub_2427B91EC();
      v118[0] = v3;
    }

    sub_2427A7350(v22, v60, 0);
    v4[23] = v3;

    v68 = v4[7];
    v69 = v4[8];
    if (v114)
    {
      v12 = v109;
      v22 = v113;
      if (v69 && (v68 == v108 && v69 == v114 || (sub_2427B939C() & 1) != 0))
      {
LABEL_72:

        v70 = v112;
        goto LABEL_77;
      }
    }

    else
    {
      v12 = v109;
      v22 = v113;
      if (!v69)
      {
        goto LABEL_72;
      }
    }

    v70 = sub_24279FBD8(v68, v69);

    [v70 setExternalModificationTag_];
    v71 = [v70 eventStore];
    if (!v71)
    {
      goto LABEL_114;
    }

    v72 = v71;

    v117 = 0;
    v73 = [v72 saveCalendar:v70 commit:0 error:&v117];

    if (!v73)
    {
      break;
    }

    v74 = v117;

    v14 = v110;
LABEL_77:

    v17 = v115;
  }

  v103 = v117;

  sub_2427B8C4C();
  swift_willThrow();

LABEL_101:
  sub_24279EC14();
  return v3;
}

id sub_2427A08AC(uint64_t a1, uint64_t a2)
{
  v5 = v2;
  v33[6] = *MEMORY[0x277D85DE8];
  sub_2427A0C58();
  if (!v3)
  {
    swift_beginAccess();
    v9 = v2[22];
    if (*(v9 + 16))
    {

      v10 = sub_2427A171C(a1, a2);
      if (v11)
      {
        v12 = *(*(v9 + 56) + 8 * v10);

        return v12;
      }
    }

    result = [objc_opt_self() sourceWithEventStore_];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v13 = result;
    v30 = a1;
    v31 = a2;
    if (a2)
    {
      v14 = sub_2427B8FAC();
    }

    else
    {
      v14 = 0;
    }

    [v13 setPendingPersonaIdentifierForNewSource_];

    v15 = v5[19];
    v16 = v5[20];

    v17 = [v13 title];
    v18 = sub_2427B8FBC();
    v20 = v19;

    if (v18 == v15 && v20 == v16)
    {
    }

    else
    {
      v21 = sub_2427B939C();

      if (v21)
      {
      }

      else
      {
        v22 = sub_2427B8FAC();
        [v13 setTitle_];
      }
    }

    [v13 setSourceType_];

    v23 = sub_2427B8FAC();

    [v13 setExternalID_];

    v24 = v5[4];
    v33[0] = 0;
    v4 = v13;
    v25 = [v24 saveSource:v4 commit:1 error:v33];
    v26 = v33[0];
    if (v25)
    {
      swift_beginAccess();

      v27 = v26;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v32 = v5[22];
      v5[22] = 0x8000000000000000;
      sub_2427A1574(v4, v30, v31, isUniquelyReferenced_nonNull_native);

      v5[22] = v32;
      swift_endAccess();
    }

    else
    {
      v29 = v33[0];

      sub_2427B8C4C();
      swift_willThrow();
    }
  }

  return v4;
}

uint64_t sub_2427A0C58()
{
  result = swift_beginAccess();
  if (!*(*(v0 + 176) + 16))
  {
    v3 = v0;
    v4 = *(v0 + 32);

    v5 = v4;
    v6 = sub_2427A0D44(v5);

    if (!v1)
    {
      *(v3 + 176) = v6;
    }
  }

  return result;
}

void *sub_2427A0D44(void *a1)
{
  v73[1] = *MEMORY[0x277D85DE8];
  v4 = v1[1];
  v5 = v1[2];
  v65 = v1[4];
  v66 = v1[3];
  v6 = sub_24279F1A4(MEMORY[0x277D84F90], &qword_27ECC0808, &qword_2427BAEA0);
  v63 = a1;
  v7 = [a1 sources];
  sub_2427A152C(0, &qword_281349468, 0x277CC5AC8);
  v8 = sub_2427B901C();

  if (v8 >> 62)
  {
    v71 = sub_2427B917C();
    if (v71)
    {
      goto LABEL_3;
    }

LABEL_60:

    return v6;
  }

  v71 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v71)
  {
    goto LABEL_60;
  }

LABEL_3:
  v61 = 0;
  v10 = 0;
  v72 = v8 & 0xC000000000000001;
  v70 = v8 & 0xFFFFFFFFFFFFFF8;
  *&v9 = 138412290;
  v60 = v9;
  v11 = v71;
  v67 = v4;
  v68 = v5;
  v69 = v8;
  do
  {
    while (1)
    {
      if (v72)
      {
        v12 = MEMORY[0x245D18A70](v10, v8);
      }

      else
      {
        if (v10 >= *(v70 + 16))
        {
          goto LABEL_57;
        }

        v12 = *(v8 + 8 * v10 + 32);
      }

      v2 = v12;
      v13 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        v58 = v7;

        sub_2427B8C4C();

        swift_willThrow();

        return v6;
      }

      v7 = [v12 sourceType];
      if (v7 != sub_2427B909C() || (v14 = [v2 externalID]) == 0)
      {

        goto LABEL_5;
      }

      v15 = v14;
      v16 = sub_2427B8FBC();
      v7 = v17;

      if (v16 == v4 && v7 == v5)
      {
      }

      else
      {
        v18 = sub_2427B939C();

        v11 = v71;
        if ((v18 & 1) == 0)
        {
          goto LABEL_40;
        }
      }

      v19 = [v2 personaIdentifier];
      if (v19)
      {
        v20 = v19;
        v21 = sub_2427B8FBC();
        v23 = v22;

        if (!v6[2])
        {
          goto LABEL_32;
        }
      }

      else
      {
        v21 = 0;
        v23 = 0;
        if (!v6[2])
        {
          goto LABEL_32;
        }
      }

      sub_2427A171C(v21, v23);
      if (v24)
      {
        v64 = v6;
        if (qword_281349520 != -1)
        {
          swift_once();
        }

        v25 = sub_2427B8F0C();
        __swift_project_value_buffer(v25, qword_281349DA8);

        v26 = sub_2427B8EEC();
        v27 = sub_2427B90BC();

        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          v62 = swift_slowAlloc();
          v73[0] = v62;
          *v28 = 136315394;
          *(v28 + 4) = sub_2427A1BEC(v67, v68, v73);
          *(v28 + 12) = 2080;
          if (v23)
          {
            v29 = v21;
          }

          else
          {
            v29 = 0x746C75616665643CLL;
          }

          if (v23)
          {
            v30 = v23;
          }

          else
          {
            v30 = 0xE90000000000003ELL;
          }

          v31 = sub_2427A1BEC(v29, v30, v73);

          *(v28 + 14) = v31;
          _os_log_impl(&dword_24279B000, v26, v27, "Duplicate source with ID %s for persona %s. Arbitrarily removing one.", v28, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x245D19310](v62, -1, -1);
          MEMORY[0x245D19310](v28, -1, -1);
        }

        else
        {
        }

        v73[0] = 0;
        v42 = [v63 removeSource:v2 commit:1 error:v73];
        v7 = v73[0];
        v5 = v68;
        if (v42)
        {
          v43 = v73[0];
        }

        else
        {
          v44 = v73[0];
          v45 = sub_2427B8C4C();

          swift_willThrow();
          v46 = v45;
          v47 = sub_2427B8EEC();
          v7 = sub_2427B90BC();

          if (os_log_type_enabled(v47, v7))
          {
            v48 = swift_slowAlloc();
            v49 = swift_slowAlloc();
            *v48 = v60;
            v50 = v45;
            v51 = _swift_stdlib_bridgeErrorToNSError();
            *(v48 + 4) = v51;
            *v49 = v51;
            _os_log_impl(&dword_24279B000, v47, v7, "Error removing source: %@", v48, 0xCu);
            sub_2427A6EF8(v49);
            v52 = v49;
            v6 = v64;
            MEMORY[0x245D19310](v52, -1, -1);
            MEMORY[0x245D19310](v48, -1, -1);
          }

          else
          {
          }
        }

        v4 = v67;
        goto LABEL_48;
      }

LABEL_32:

      v32 = [v2 personaIdentifier];
      if (v32)
      {
        v33 = v32;
        v34 = sub_2427B8FBC();
        v36 = v35;
      }

      else
      {
        v34 = 0;
        v36 = 0;
      }

      v4 = v67;
      v5 = v68;
      v2 = v2;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v73[0] = v6;
      sub_2427A1574(v2, v34, v36, isUniquelyReferenced_nonNull_native);

      v6 = v73[0];
      v38 = [v2 title];
      v39 = sub_2427B8FBC();
      v7 = v40;

      if (v39 == v66 && v7 == v65)
      {
        break;
      }

      v41 = sub_2427B939C();

      v11 = v71;
      if (v41)
      {

LABEL_40:
        v8 = v69;
        goto LABEL_5;
      }

      v53 = sub_2427B8FAC();
      [v2 setTitle_];

      v73[0] = 0;
      v54 = [v63 saveSource:v2 commit:0 error:v73];

      v7 = v73[0];
      if (!v54)
      {
        goto LABEL_58;
      }

      v55 = v73[0];

      v61 = 1;
      ++v10;
      v8 = v69;
      if (v13 == v71)
      {

        goto LABEL_53;
      }
    }

LABEL_48:
    v8 = v69;
    v11 = v71;
LABEL_5:
    ++v10;
  }

  while (v13 != v11);

  if ((v61 & 1) == 0)
  {
    return v6;
  }

LABEL_53:
  v73[0] = 0;
  if ([v63 commitWithRollback_])
  {
    v56 = v73[0];
  }

  else
  {
    v57 = v73[0];
    sub_2427B8C4C();

    swift_willThrow();
  }

  return v6;
}

uint64_t sub_2427A152C(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_2427A1574(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2427A171C(a2, a3);
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
      sub_2427A17B0(v16, a4 & 1, &qword_27ECC0808, &qword_2427BAEA0);
      v11 = sub_2427A171C(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC07E0, &unk_2427BAE80);
        sub_2427B93BC();
        __break(1u);
        return MEMORY[0x2821F96F8]();
      }
    }

    else
    {
      v19 = v11;
      sub_2427B7628(&qword_27ECC0808, &qword_2427BAEA0);
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

unint64_t sub_2427A171C(uint64_t a1, uint64_t a2)
{
  sub_2427B940C();
  sub_2427B942C();
  if (a2)
  {
    sub_2427B8FCC();
  }

  v4 = sub_2427B943C();

  return sub_2427A1A6C(a1, a2, v4);
}

uint64_t sub_2427A17B0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v33 = v6;
  result = sub_2427B932C();
  v9 = result;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(*(v7 + 56) + 8 * v21);
      v34 = *(*(v7 + 48) + 16 * v21);
      v23 = *(*(v7 + 48) + 16 * v21 + 8);
      if ((v33 & 1) == 0)
      {

        v24 = v22;
      }

      sub_2427B940C();
      sub_2427B942C();
      if (v23)
      {
        sub_2427B8FCC();
      }

      result = sub_2427B943C();
      v25 = -1 << *(v9 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v16 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v16 + 8 * v27);
          if (v31 != -1)
          {
            v17 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v26) & ~*(v16 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + 16 * v17) = v34;
      *(*(v9 + 56) + 8 * v17) = v22;
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
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

    if ((v33 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_35;
    }

    v32 = 1 << *(v7 + 32);
    v5 = v4;
    if (v32 >= 64)
    {
      bzero((v7 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v32;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v9;
  return result;
}

unint64_t sub_2427A1A6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if ((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v9 = ~v5;
    v10 = *(v3 + 48);
    do
    {
      v11 = (v10 + 16 * v6);
      v12 = v11[1];
      if (v12)
      {
        if (a2)
        {
          v13 = *v11 == a1 && v12 == a2;
          if (v13 || (sub_2427B939C() & 1) != 0)
          {
            return v6;
          }
        }
      }

      else if (!a2)
      {
        return v6;
      }

      v6 = (v6 + 1) & v9;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_2427A1B38()
{
  result = qword_2813494D0;
  if (!qword_2813494D0)
  {
    sub_2427A152C(255, &qword_2813494D8, 0x277CC59B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813494D0);
  }

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

unint64_t sub_2427A1BEC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2427A1EA8(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_2427A20A4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

void *sub_2427A1CB8(uint64_t a1, unint64_t a2)
{
  v3 = sub_2427A1D04(a1, a2);
  sub_2427A1FB8(&unk_2855111A8);
  return v3;
}

void *sub_2427A1D04(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_2427A1E34(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_2427B91FC();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_2427B8FDC();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2427A1E34(v10, 0);
        result = sub_2427B91CC();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

void *sub_2427A1E34(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC07F0, &unk_2427BAE90);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unint64_t sub_2427A1EA8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_2427A1CB8(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_2427B91FC();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_2427A1FB8(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_2427A6890(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_2427A20A4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2427A2100@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC08B8, &qword_2427BB090);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v45 - v8;
  v55 = v5;
  v56 = v6;
  sub_2427A2778(&v55, &v45 - v8);
  v10 = sub_2427B8E7C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2427B8DDC();
  if (v3)
  {
    return sub_2427A4230(v9, &qword_27ECC08B8, &qword_2427BB090);
  }

  v57 = v11;
  v53 = a2;
  v51 = v2;
  v15 = sub_2427B8EAC();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2427B8E4C();
  sub_2427A3344(&v55);
  (*(v16 + 8))(v18, v15);
  v52 = v55;
  v54 = v56;
  v19 = sub_2427B8E6C();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v45 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2427B8E5C();
  v23 = (*(v20 + 88))(v22, v19);
  if (MEMORY[0x277D45AB8] && v23 == *MEMORY[0x277D45AB8])
  {
    (*(v20 + 96))(v22, v19);
    v24 = sub_2427B8E3C();
    v50 = &v45;
    v25 = *(v24 - 8);
    MEMORY[0x28223BE20](v24);
    v27 = &v45 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v25 + 32))(v27, v22, v24);
    v28 = sub_2427B8E2C();
    sub_2427A3844(v28);
    v49 = v29;

    (*(v25 + 8))(v27, v24);
    (*(v57 + 8))(v13, v10);
    result = sub_2427A4230(v9, &qword_27ECC08B8, &qword_2427BB090);
    v30 = 0;
    v31 = 0;
    v32 = 0;
LABEL_9:
    v44 = v53;
    *v53 = v52;
    v44[1] = v54;
    v44[2] = v49;
    v44[3] = v30;
    v44[4] = v31;
    *(v44 + 40) = v32;
    return result;
  }

  if (MEMORY[0x277D45AB0] && v23 == *MEMORY[0x277D45AB0])
  {
    (*(v20 + 96))(v22, v19);
    v33 = sub_2427B8E1C();
    v50 = &v45;
    v34 = *(v33 - 8);
    v47 = v33;
    v48 = v34;
    MEMORY[0x28223BE20](v33);
    v36 = &v45 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v37 + 32))(v36, v22);
    v38 = sub_2427B8DFC();
    sub_2427A3844(v38);
    v49 = v39;

    v40 = sub_2427B8E0C();
    sub_2427A3844(v40);
    v46 = v41;

    v42 = sub_2427B8DEC();
    v43 = v51;

    v31 = sub_2427A3B8C(v42, v43);

    (*(v48 + 8))(v36, v47);
    (*(v57 + 8))(v13, v10);
    sub_2427A4230(v9, &qword_27ECC08B8, &qword_2427BB090);

    v30 = v46;
    v32 = 1;
    goto LABEL_9;
  }

  sub_2427ACFA4();
  swift_allocError();
  swift_willThrow();
  (*(v57 + 8))(v13, v10);
  sub_2427A4230(v9, &qword_27ECC08B8, &qword_2427BB090);
  return (*(v20 + 8))(v22, v19);
}

uint64_t sub_2427A2778@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (!a1[1])
  {
    if (qword_281349518 != -1)
    {
      swift_once();
    }

    v10 = sub_2427B8F0C();
    __swift_project_value_buffer(v10, qword_281349D90);
    v6 = sub_2427B8EEC();
    v7 = sub_2427B90BC();
    if (!os_log_type_enabled(v6, v7))
    {
      goto LABEL_12;
    }

    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = "Token missing; will do a full reminder sync";
    goto LABEL_11;
  }

  v3 = sub_2427B8CAC();
  if (v4 >> 60 == 15)
  {
    if (qword_281349518 != -1)
    {
      swift_once();
    }

    v5 = sub_2427B8F0C();
    __swift_project_value_buffer(v5, qword_281349D90);
    v6 = sub_2427B8EEC();
    v7 = sub_2427B90BC();
    if (!os_log_type_enabled(v6, v7))
    {
      goto LABEL_12;
    }

    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = "Token encoding not valid; will do a full reminder sync";
LABEL_11:
    _os_log_impl(&dword_24279B000, v6, v7, v9, v8, 2u);
    MEMORY[0x245D19310](v8, -1, -1);
LABEL_12:

    v11 = sub_2427B8EAC();
    v12 = *(*(v11 - 8) + 56);

    return v12(a2, 1, 1, v11);
  }

  v14 = v3;
  v15 = v4;
  sub_2427B8C0C();
  swift_allocObject();
  sub_2427B8BFC();
  sub_2427A2EA4();
  sub_2427B8BEC();

  v16 = v31;
  v18 = v32;
  v17 = v33;
  if (v31 == 2)
  {
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC08B8, &qword_2427BB090);
    MEMORY[0x28223BE20](v19 - 8);
    v21 = &v30 - v20;
    sub_2427A3288(v32, v33);
    sub_2427B8E9C();
    sub_2427A32DC(v14, v15);
    sub_2427A32F0(v18, v17);
    v27 = sub_2427B8EAC();
    v28 = *(v27 - 8);
    v29 = *(v28 + 56);
    v29(v21, 0, 1, v27);
    (*(v28 + 32))(a2, v21, v27);
    return (v29)(a2, 0, 1, v27);
  }

  else
  {
    if (qword_281349518 != -1)
    {
      swift_once();
    }

    v22 = sub_2427B8F0C();
    __swift_project_value_buffer(v22, qword_281349D90);
    sub_2427A3288(v32, v33);
    v23 = sub_2427B8EEC();
    v24 = sub_2427B90BC();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 67109376;
      *(v25 + 4) = v16;
      sub_2427A32F0(v18, v17);
      *(v25 + 8) = 1024;
      *(v25 + 10) = 2;
      _os_log_impl(&dword_24279B000, v23, v24, "Token version has changed (have = %u; current = %u); will do a full reminder sync", v25, 0xEu);
      MEMORY[0x245D19310](v25, -1, -1);
    }

    else
    {
      sub_2427A32F0(v32, v33);
    }

    sub_2427A32DC(v14, v15);

    sub_2427A32F0(v18, v17);
    v26 = sub_2427B8EAC();
    return (*(*(v26 - 8) + 56))(a2, 1, 1, v26);
  }
}

unint64_t sub_2427A2EA4()
{
  result = qword_2813494F0;
  if (!qword_2813494F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813494F0);
  }

  return result;
}

uint64_t sub_2427A2EF8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC0918, &qword_2427BB288);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-v5];
  v7 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  sub_2427A30EC();
  sub_2427B944C();
  if (!v1)
  {
    v9[16] = 0;
    v7 = sub_2427B935C();
    v9[15] = 1;
    sub_2427A3234();
    sub_2427B934C();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v7;
}

uint64_t sub_2427A30BC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2427A2EF8(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

unint64_t sub_2427A30EC()
{
  result = qword_281349510;
  if (!qword_281349510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281349510);
  }

  return result;
}

uint64_t sub_2427A314C()
{
  if (*v0)
  {
    return 1635017060;
  }

  else
  {
    return 0x6E6F6973726576;
  }
}

uint64_t storeEnumTagSinglePayload for VersionTaggedData.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2427A3234()
{
  result = qword_281349D80;
  if (!qword_281349D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281349D80);
  }

  return result;
}

uint64_t sub_2427A3288(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_2427A32DC(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2427A32F0(result, a2);
  }

  return result;
}

uint64_t sub_2427A32F0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_2427A3344@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_2427B8E8C();
  v4 = v3;
  sub_2427B8C3C();
  swift_allocObject();
  sub_2427A3288(v2, v4);
  sub_2427B8C2C();
  sub_2427A35E0();
  v5 = sub_2427B8C1C();
  v7 = v6;

  v8 = sub_2427B8CCC();
  v10 = v9;
  sub_2427A32F0(v5, v7);
  sub_2427A32F0(v2, v4);
  result = sub_2427A32F0(v2, v4);
  *a1 = v8;
  a1[1] = v10;
  return result;
}

unint64_t sub_2427A35E0()
{
  result = qword_2813494F8;
  if (!qword_2813494F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813494F8);
  }

  return result;
}

uint64_t sub_2427A3634(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v13 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC0910, &qword_2427BB280);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2427A30EC();
  sub_2427B945C();
  LOBYTE(v14) = 0;
  sub_2427B937C();
  if (!v4)
  {
    v14 = a3;
    v15 = v13;
    v16 = 1;
    sub_2427A3288(a3, v13);
    sub_2427A37F0();
    sub_2427B936C();
    sub_2427A32F0(v14, v15);
  }

  return (*(v8 + 8))(v10, v7);
}

unint64_t sub_2427A37F0()
{
  result = qword_281349D88;
  if (!qword_281349D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281349D88);
  }

  return result;
}

void sub_2427A3844(uint64_t a1)
{
  v32 = sub_2427B8C9C();
  v2 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v30 = v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_2427B916C();
    sub_2427A152C(0, &unk_2813494C0, 0x277D44708);
    sub_2427A4C30();
    sub_2427B906C();
    a1 = v36;
    v4 = v37;
    v5 = v38;
    v6 = v39;
    v7 = v40;
  }

  else
  {
    v8 = -1 << *(a1 + 32);
    v4 = a1 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(a1 + 56);

    v6 = 0;
  }

  v28[1] = v5;
  v11 = (v5 + 64) >> 6;
  v29 = (v2 + 8);
  v12 = MEMORY[0x277D84F90];
  v31 = a1;
  if (a1 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v13 = v6;
    v14 = v7;
    v15 = v6;
    if (!v7)
    {
      break;
    }

LABEL_12:
    v16 = (v14 - 1) & v14;
    v17 = *(*(a1 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (!v17)
    {
LABEL_22:
      sub_24279EC14();
      return;
    }

    while (1)
    {
      v33 = v16;
      v19 = MEMORY[0x245D18D70]();
      v20 = [v17 urlRepresentation];
      v21 = v30;
      sub_2427B8C7C();

      v22 = sub_2427B8C5C();
      v24 = v23;
      (*v29)(v21, v32);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_2427ABCB4(0, *(v12 + 2) + 1, 1, v12);
      }

      v26 = *(v12 + 2);
      v25 = *(v12 + 3);
      if (v26 >= v25 >> 1)
      {
        v12 = sub_2427ABCB4((v25 > 1), v26 + 1, 1, v12);
      }

      *(v12 + 2) = v26 + 1;
      v27 = &v12[16 * v26];
      *(v27 + 4) = v22;
      *(v27 + 5) = v24;
      objc_autoreleasePoolPop(v19);

      v6 = v15;
      v7 = v33;
      a1 = v31;
      if ((v31 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      v18 = sub_2427B918C();
      if (v18)
      {
        v34 = v18;
        sub_2427A152C(0, &unk_2813494C0, 0x277D44708);
        swift_dynamicCast();
        v17 = v35;
        v15 = v6;
        v16 = v7;
        if (v35)
        {
          continue;
        }
      }

      goto LABEL_22;
    }
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v11)
    {
      goto LABEL_22;
    }

    v14 = *(v4 + 8 * v15);
    ++v13;
    if (v14)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_2427A3B8C(uint64_t a1, uint64_t a2)
{
  v61 = sub_2427B8C9C();
  v4 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v60 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 0xC000000000000001) != 0)
  {
    v6 = sub_2427B917C();
  }

  else
  {
    v6 = *(a1 + 16);
  }

  v73 = MEMORY[0x277D84F90];
  sub_2427A4104(0, v6 & ~(v6 >> 63), 0);
  v7 = v73;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_2427B916C();
    sub_2427A152C(0, &unk_2813494C0, 0x277D44708);
    sub_2427A4C30();
    sub_2427B906C();
    a1 = v68;
    v8 = v69;
    v9 = v70;
    v10 = v71;
    v11 = v72;
    if ((v6 & 0x8000000000000000) == 0)
    {
      goto LABEL_6;
    }

LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v31 = -1 << *(a1 + 32);
  v8 = a1 + 56;
  v9 = ~v31;
  v32 = -v31;
  if (v32 < 64)
  {
    v33 = ~(-1 << v32);
  }

  else
  {
    v33 = -1;
  }

  v11 = v33 & *(a1 + 56);

  v10 = 0;
  if (v6 < 0)
  {
    goto LABEL_26;
  }

LABEL_6:
  v59 = *MEMORY[0x277CF7AA0];
  v55 = v9;
  if (v6)
  {
    v58 = v6;
    v53 = a2;
    v54 = v4;
    v12 = 0;
    v13 = (v9 + 64) >> 6;
    v56 = a1 & 0x7FFFFFFFFFFFFFFFLL;
    v57 = (v4 + 8);
    v14 = v7;
    v63 = v8;
    v64 = a1;
    v62 = v13;
    while (1)
    {
      if (a1 < 0)
      {
        v18 = sub_2427B918C();
        if (!v18)
        {
          goto LABEL_45;
        }

        v66 = v18;
        sub_2427A152C(0, &unk_2813494C0, 0x277D44708);
        swift_dynamicCast();
        v17 = v67;
        if (!v67)
        {
          goto LABEL_45;
        }
      }

      else
      {
        if (!v11)
        {
          while (1)
          {
            v15 = v10 + 1;
            if (__OFADD__(v10, 1))
            {
              break;
            }

            if (v15 >= v13)
            {
              goto LABEL_45;
            }

            v11 = *(v8 + 8 * v15);
            ++v10;
            if (v11)
            {
              v10 = v15;
              goto LABEL_14;
            }
          }

          __break(1u);
          goto LABEL_44;
        }

LABEL_14:
        v16 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v17 = *(*(a1 + 48) + ((v10 << 9) | (8 * v16)));
        if (!v17)
        {
          goto LABEL_45;
        }
      }

      v19 = sub_2427B8FBC();
      v65 = v20;
      v21 = v14;
      v22 = [v17 urlRepresentation];
      v23 = v60;
      sub_2427B8C7C();

      v14 = v21;
      v24 = sub_2427B8C5C();
      v26 = v25;
      (*v57)(v23, v61);

      v73 = v14;
      v28 = *(v14 + 16);
      v27 = *(v14 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_2427A4104((v27 > 1), v28 + 1, 1);
        v14 = v73;
      }

      ++v12;
      *(v14 + 16) = v28 + 1;
      v29 = (v14 + 32 * v28);
      v30 = v65;
      v29[4] = v19;
      v29[5] = v30;
      v29[6] = v24;
      v29[7] = v26;
      v8 = v63;
      a1 = v64;
      v13 = v62;
      if (v12 == v58)
      {
        v4 = v54;
        goto LABEL_28;
      }
    }
  }

LABEL_27:
  v56 = a1 & 0x7FFFFFFFFFFFFFFFLL;
  v13 = (v9 + 64) >> 6;
  v14 = v7;
LABEL_28:
  v64 = a1;
  v65 = (v4 + 8);
  v62 = v13;
  v63 = v8;
  if (a1 < 0)
  {
    goto LABEL_35;
  }

  while (1)
  {
    v34 = v10;
    v35 = v11;
    v36 = v10;
    if (!v11)
    {
      break;
    }

LABEL_33:
    v37 = (v35 - 1) & v35;
    v38 = *(*(a1 + 48) + ((v36 << 9) | (8 * __clz(__rbit64(v35)))));
    if (!v38)
    {
LABEL_41:
      sub_24279EC14();
      return v14;
    }

    while (1)
    {
      v40 = sub_2427B8FBC();
      v42 = v41;
      v43 = v14;
      v44 = [v38 urlRepresentation];
      v45 = v60;
      sub_2427B8C7C();

      v14 = v43;
      v46 = sub_2427B8C5C();
      v48 = v47;
      (*v65)(v45, v61);

      v73 = v14;
      v50 = *(v14 + 16);
      v49 = *(v14 + 24);
      if (v50 >= v49 >> 1)
      {
        sub_2427A4104((v49 > 1), v50 + 1, 1);
        v14 = v73;
      }

      *(v14 + 16) = v50 + 1;
      v51 = (v14 + 32 * v50);
      v51[4] = v40;
      v51[5] = v42;
      v51[6] = v46;
      v51[7] = v48;
      v10 = v36;
      v11 = v37;
      v8 = v63;
      a1 = v64;
      v13 = v62;
      if ((v64 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_35:
      v39 = sub_2427B918C();
      if (v39)
      {
        v66 = v39;
        sub_2427A152C(0, &unk_2813494C0, 0x277D44708);
        swift_dynamicCast();
        v38 = v67;
        v36 = v10;
        v37 = v11;
        if (v67)
        {
          continue;
        }
      }

      goto LABEL_41;
    }
  }

  while (1)
  {
    v36 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      break;
    }

    if (v36 >= v13)
    {
      goto LABEL_41;
    }

    v35 = *(v8 + 8 * v36);
    ++v34;
    if (v35)
    {
      goto LABEL_33;
    }
  }

LABEL_44:
  __break(1u);
LABEL_45:

  __break(1u);
  return result;
}

char *sub_2427A4104(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2427A4124(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2427A4124(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC08F0, &qword_2427BB0C0);
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

uint64_t sub_2427A4230(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_2427A4290(uint64_t *a1)
{
  v3 = v2;
  v4 = v1;
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  if (qword_281349520 != -1)
  {
    swift_once();
  }

  v8 = sub_2427B8F0C();
  __swift_project_value_buffer(v8, qword_281349DA8);

  v9 = sub_2427B8EEC();
  v10 = sub_2427B90CC();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v18 = v12;
    *v11 = 136446978;
    *(v11 + 4) = sub_2427A1BEC(v4[9], v4[10], &v18);
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_2427A1BEC(v4[13], v4[14], &v18);
    *(v11 + 22) = 2048;
    *(v11 + 24) = *(v5 + 16);
    *(v11 + 32) = 2048;
    *(v11 + 34) = *(v6 + 16);

    _os_log_impl(&dword_24279B000, v9, v10, "Performing an incremental sync for collection %{public}s %s with %ld updated or inserted items and %ld deleted items", v11, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x245D19310](v12, -1, -1);
    MEMORY[0x245D19310](v11, -1, -1);

    v13 = *(v6 + 16);
    if (!v13)
    {
      goto LABEL_13;
    }

LABEL_7:
    v14 = 0;
    while (1)
    {
      v15 = MEMORY[0x245D18D70]();
      sub_2427B5E14(v14, v4, 50, v6, &v18);
      if (v3)
      {
        goto LABEL_21;
      }

      v3 = 0;
      if (__OFADD__(v14, 50))
      {
        v14 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v14 += 50;
      }

      objc_autoreleasePoolPop(v15);
      if (v14 >= v13)
      {
        goto LABEL_13;
      }
    }
  }

  v13 = *(v6 + 16);
  if (v13)
  {
    goto LABEL_7;
  }

LABEL_13:
  v16 = *(v5 + 16);
  if (!v16)
  {
LABEL_20:
    sub_2427A454C(v7);
    return;
  }

  v17 = 0;
  while (1)
  {
    v15 = MEMORY[0x245D18D70]();
    sub_2427B6510(v17, v4, 50, v5, &v18);
    if (v3)
    {
      break;
    }

    v3 = 0;
    if (__OFADD__(v17, 50))
    {
      v17 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v17 += 50;
    }

    objc_autoreleasePoolPop(v15);
    if (v17 >= v16)
    {
      goto LABEL_20;
    }
  }

LABEL_21:
  objc_autoreleasePoolPop(v15);
}

char *sub_2427A454C(uint64_t a1)
{
  v3 = v1;
  v35[1] = *MEMORY[0x277D85DE8];
  v5 = *(v3 + 144);
  v6 = *(v3 + 152);
  __swift_project_boxed_opaque_existential_1((v3 + 120), v5);
  result = (*(v6 + 24))(a1, v5, v6);
  if (!v2)
  {
    v8 = *(result + 2);
    if (v8)
    {
      v9 = 0;
      v10 = 0;
      v31 = -v8;
      v32 = result;
      v11 = result + 72;
      v33 = v3;
      v29 = result + 72;
LABEL_5:
      v30 = v9;
      v12 = &v11[48 * v10];
      v13 = v10 + 1;
      do
      {
        if ((v13 - 1) >= *(result + 2))
        {
          __break(1u);
        }

        v15 = *(v12 - 1);
        v14 = *v12;
        v34 = v13;
        v16 = *(v3 + 56);
        swift_bridgeObjectRetain_n();

        v17 = v15;
        v18 = v15;
        v19 = v14;
        sub_2427A3288(v18, v14);
        v20 = sub_2427B8FAC();

        v21 = sub_2427B8FAC();

        v22 = [v16 colorWithProviderIdentifier:v20 externalIdentifier:v21];

        if (v22)
        {
          v23 = sub_2427B8CBC();
          [v22 setData_];

          v24 = *(v33 + 56);
          v35[0] = 0;
          if (![v24 saveColor:v22 commit:0 error:v35])
          {
            v28 = v35[0];

            sub_2427B8C4C();

            swift_willThrow();

            return sub_2427A32F0(v17, v19);
          }

          v10 = v34;
          v25 = v35[0];

          sub_2427A32F0(v17, v19);
          v9 = 1;
          result = v32;
          v3 = v33;
          v11 = v29;
          if (v31 + v34)
          {
            goto LABEL_5;
          }

          goto LABEL_14;
        }

        sub_2427A32F0(v17, v19);
        v3 = v33;
        v13 = v34 + 1;
        result = v32;
        v12 += 6;
      }

      while (v31 + v34 + 1 != 1);

      if (v30)
      {
LABEL_14:
        v26 = *(v3 + 56);
        v35[0] = 0;
        if ([v26 commitWithRollback_])
        {
          return v35[0];
        }

        else
        {
          v27 = v35[0];
          sub_2427B8C4C();

          return swift_willThrow();
        }
      }
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_2427A48C0(uint64_t a1)
{
  v12[1] = *MEMORY[0x277D85DE8];
  sub_2427A4A54(a1);
  v2 = *(v1 + 16);
  v3 = sub_2427A152C(0, &unk_2813494C0, 0x277D44708);
  v4 = sub_2427B8FFC();

  v12[0] = 0;
  v5 = [v2 fetchListsWithObjectIDs:v4 error:v12];

  v6 = v12[0];
  if (v5)
  {
    sub_2427A152C(0, &qword_281349470, 0x277D44668);
    sub_2427A4C30();
    v7 = sub_2427B8F6C();
    v8 = v6;

    sub_2427A4C98(v7);
    v3 = v9;
  }

  else
  {
    v10 = v12[0];
    sub_2427B8C4C();

    swift_willThrow();
  }

  return v3;
}

uint64_t sub_2427A4A54(uint64_t a1)
{
  v2 = MEMORY[0x277D84F90];
  v18 = MEMORY[0x277D84F90];
  v3 = *(a1 + 16);
  result = swift_retain_n();
  if (v3)
  {
    v5 = 0;
    v6 = a1 + 56;
    v17 = a1 + 56;
    do
    {
      v7 = (v6 + 32 * v5);
      v8 = v5;
      while (1)
      {
        if (v8 >= v3)
        {
          __break(1u);
LABEL_21:
          __break(1u);
          return result;
        }

        v5 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_21;
        }

        v10 = *(v7 - 3);
        v9 = *(v7 - 2);
        v12 = *(v7 - 1);
        v11 = *v7;
        if (v10 == sub_2427B8FBC() && v9 == v13)
        {
          break;
        }

        v15 = sub_2427B939C();

        if (v15)
        {
          goto LABEL_15;
        }

LABEL_5:
        ++v8;
        v7 += 4;
        if (v5 == v3)
        {
          goto LABEL_19;
        }
      }

LABEL_15:
      v16 = sub_2427AC710(v12, v11);

      if (!v16)
      {
        goto LABEL_5;
      }

      MEMORY[0x245D18880](result);
      if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2427B902C();
      }

      result = sub_2427B903C();
      v2 = v18;
      v6 = v17;
    }

    while (v5 != v3);
  }

LABEL_19:

  return v2;
}

unint64_t sub_2427A4C30()
{
  result = qword_2813494B8;
  if (!qword_2813494B8)
  {
    sub_2427A152C(255, &unk_2813494C0, 0x277D44708);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813494B8);
  }

  return result;
}

void sub_2427A4C98(unint64_t a1)
{
  v56 = sub_2427B8C9C();
  v2 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v55 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 0xC000000000000001) != 0)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = sub_2427B926C() | 0x8000000000000000;
  }

  else
  {
    v8 = -1 << *(a1 + 32);
    v5 = ~v8;
    v4 = a1 + 64;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v6 = v10 & *(a1 + 64);
    v7 = a1;
  }

  v11 = 0;
  v57 = v5;
  v12 = (v5 + 64) >> 6;
  v54 = (v2 + 8);
  v53 = *MEMORY[0x277CF7AA0];
  v58 = MEMORY[0x277D84F90];
  v59 = v12;
  v60 = v7;
LABEL_8:
  v13 = v11;
  v14 = v6;
  v15 = v62;
  if ((v7 & 0x8000000000000000) != 0)
  {
LABEL_9:
    v62 = v15;
    v16 = sub_2427B92EC();
    if (v16)
    {
      v18 = v17;
      v63 = v16;
      sub_2427A152C(0, &unk_2813494C0, 0x277D44708);
      swift_dynamicCast();
      v19 = v64;
      v63 = v18;
      sub_2427A152C(0, &qword_281349470, 0x277D44668);
      swift_dynamicCast();
      v20 = v64;
      v11 = v13;
      v61 = v14;
      if (v19)
      {
        goto LABEL_17;
      }
    }

LABEL_25:
    sub_24279EC14();
  }

  else
  {
    while (1)
    {
      v21 = v13;
      v22 = v14;
      v11 = v13;
      if (!v14)
      {
        break;
      }

LABEL_16:
      v61 = (v22 - 1) & v22;
      v62 = v15;
      v23 = (v11 << 9) | (8 * __clz(__rbit64(v22)));
      v24 = *(*(v7 + 56) + v23);
      v19 = *(*(v7 + 48) + v23);
      v20 = v24;
      if (!v19)
      {
        goto LABEL_25;
      }

LABEL_17:
      v25 = sub_2427B8EDC();
      v26 = *(v25 - 8);
      MEMORY[0x28223BE20](v25);
      v28 = &v48 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
      v29 = v19;
      v30 = v20;
      v31 = [v30 color];
      sub_2427B8ECC();
      v32 = v62;
      v33 = sub_2427B8EBC();
      if (!v32)
      {
        v62 = 0;
        v51 = v34;
        v52 = v33;
        v50 = [v29 urlRepresentation];
        v35 = v55;
        sub_2427B8C7C();

        v36 = sub_2427B8C5C();
        v49 = v37;
        v50 = v36;
        (*v54)(v35, v56);
        v38 = sub_2427B8FBC();
        v48 = v39;
        (*(v26 + 8))(v28, v25);

        v40 = v58;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v40 = sub_2427ABDC0(0, *(v40 + 2) + 1, 1, v40);
        }

        v12 = v59;
        v7 = v60;
        v6 = v61;
        v42 = *(v40 + 2);
        v41 = *(v40 + 3);
        v43 = v51;
        v44 = v52;
        if (v42 >= v41 >> 1)
        {
          v47 = sub_2427ABDC0((v41 > 1), v42 + 1, 1, v40);
          v43 = v51;
          v44 = v52;
          v40 = v47;
        }

        *(v40 + 2) = v42 + 1;
        v58 = v40;
        v45 = &v40[48 * v42];
        v46 = v48;
        *(v45 + 4) = v38;
        *(v45 + 5) = v46;
        *(v45 + 6) = v50;
        *(v45 + 7) = v49;
        *(v45 + 8) = v44;
        *(v45 + 9) = v43;
        goto LABEL_8;
      }

      (*(v26 + 8))(v28, v25);
      v15 = 0;
      v13 = v11;
      v7 = v60;
      v14 = v61;
      v12 = v59;
      if ((v60 & 0x8000000000000000) != 0)
      {
        goto LABEL_9;
      }
    }

    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v11 >= v12)
      {
        goto LABEL_25;
      }

      v22 = *(v4 + 8 * v11);
      ++v21;
      if (v22)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }
}

uint64_t sub_2427A5188(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{

  if (a4)
  {
  }

  return result;
}

uint64_t sub_2427A5240()
{

  sub_2427A51EC(v0 + 40);

  return MEMORY[0x2821FE8D8](v0, 192, 7);
}

uint64_t sub_2427A52D0()
{

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t sub_2427A5318()
{
  MEMORY[0x245D19370](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2427A5350()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2427A53C8(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = sub_2427B8D2C();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC08E0, &qword_2427BB0B8);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC08D8, &qword_2427BB0B0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[12];

  return v15(v16, a2, v14);
}

uint64_t sub_2427A554C(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_2427B8D2C();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC08E0, &qword_2427BB0B8);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC08D8, &qword_2427BB0B0);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[12];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_2427A56D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC0890, &qword_2427BB3B0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 32));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }
}

uint64_t sub_2427A57A8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC0890, &qword_2427BB3B0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 32)) = a2;
  }

  return result;
}

uint64_t IntegrationData.collections.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t IntegrationData.sourceID.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t IntegrationData.sourceID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t IntegrationData.sourceTitle.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t IntegrationData.sourceTitle.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

void __swiftcall IntegrationData.init(collections:sourceID:sourceTitle:)(CalendarIntegrationSupport::IntegrationData *__return_ptr retstr, Swift::OpaquePointer collections, Swift::String sourceID, Swift::String sourceTitle)
{
  retstr->collections = collections;
  retstr->sourceID = sourceID;
  retstr->sourceTitle = sourceTitle;
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

uint64_t sub_2427A5C60(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_2427A5CA8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2427A5D0C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2427A5D2C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

void type metadata accessor for os_unfair_lock_s()
{
  if (!qword_2813494A0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_2813494A0);
    }
  }
}

uint64_t IntegrationCollection.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t IntegrationCollection.identifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t IntegrationCollection.collectionPersonaIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t IntegrationCollection.collectionPersonaIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t IntegrationCollection.title.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t IntegrationCollection.title.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t IntegrationCollection.dataSource.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 48);

  return sub_2427A5F88(a1, v1 + 48);
}

uint64_t sub_2427A5F88(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t IntegrationCollection.init(identifier:title:dataSource:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, __int128 *a5@<X4>, void *a6@<X8>)
{
  a6[2] = 0;
  a6[3] = 0;
  *a6 = a1;
  a6[1] = a2;
  a6[4] = a3;
  a6[5] = a4;
  return sub_2427A5F88(a5, (a6 + 6));
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

uint64_t sub_2427A5FFC(uint64_t a1, int a2)
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

uint64_t sub_2427A6044(uint64_t result, int a2, int a3)
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

uint64_t IntegrationSync.__allocating_init(eventStoreProvider:integrationData:)(id (*a1)(), uint64_t a2, __int128 *a3)
{
  v6 = swift_allocObject();
  v12 = a3[1];
  v13 = *a3;
  v7 = *(a3 + 4);
  v8 = os_transaction_create();
  if (a1)
  {
    v9 = a2;
  }

  else
  {
    v9 = 0;
  }

  *(v6 + 64) = v9;
  *(v6 + 72) = v8;
  if (a1)
  {
    v10 = a1;
  }

  else
  {
    v10 = sub_24279F2A0;
  }

  *(v6 + 16) = v13;
  *(v6 + 32) = v12;
  *(v6 + 48) = v7;
  *(v6 + 56) = v10;
  return v6;
}

uint64_t IntegrationSync.init(eventStoreProvider:integrationData:)(id (*a1)(), uint64_t a2, __int128 *a3)
{
  v11 = a3[1];
  v12 = *a3;
  v6 = *(a3 + 4);
  v7 = os_transaction_create();
  if (a1)
  {
    v8 = a2;
  }

  else
  {
    v8 = 0;
  }

  *(v3 + 64) = v8;
  *(v3 + 72) = v7;
  if (a1)
  {
    v9 = a1;
  }

  else
  {
    v9 = sub_24279F2A0;
  }

  *(v3 + 16) = v12;
  *(v3 + 32) = v11;
  *(v3 + 48) = v6;
  *(v3 + 56) = v9;
  return v3;
}

void *sub_2427A61B8()
{
  v2 = v0[23];
  if (v2)
  {

    return v2;
  }

  v2 = v0;
  sub_2427A0C58();
  if (v1)
  {
    return v2;
  }

  v36 = 0;
  swift_beginAccess();
  v3 = v0[22];
  v4 = *(v3 + 16);
  v5 = MEMORY[0x277D84F90];
  v44 = v2;
  if (!v4)
  {
    v6 = MEMORY[0x277D84F90];
    v45 = MEMORY[0x277D84F90];
    if ((MEMORY[0x277D84F90] & 0x8000000000000000) != 0)
    {
      goto LABEL_50;
    }

    goto LABEL_9;
  }

  v6 = sub_2427A6808(v4, 0);
  v7 = sub_2427A6D40(&v45, (v6 + 32), v4, v3);

  result = sub_24279EC14();
  if (v7 == v4)
  {
    v45 = v5;
    if ((v6 & 0x8000000000000000) != 0)
    {
      goto LABEL_50;
    }

LABEL_9:
    if ((v6 & 0x4000000000000000) != 0)
    {
      goto LABEL_50;
    }

    v9 = *(v6 + 16);
    if (!v9)
    {
      goto LABEL_51;
    }

    while (1)
    {
      v10 = 0;
      v41 = v6 & 0xC000000000000001;
      v38 = (v6 + 32);
      v37 = MEMORY[0x277D84F90];
      v39 = v9;
      v40 = v6;
      while (1)
      {
        if (v41)
        {
          v11 = MEMORY[0x245D18A70](v10, v6);
        }

        else
        {
          if (v10 >= *(v6 + 16))
          {
            goto LABEL_49;
          }

          v11 = v38[v10];
        }

        v12 = v11;
        v13 = __OFADD__(v10, 1);
        v14 = v10 + 1;
        if (v13)
        {
          break;
        }

        v15 = [v11 calendarsForEntityType_];
        sub_2427A152C(0, &qword_2813494D8, 0x277CC59B0);
        sub_2427A1B38();
        v16 = sub_2427B904C();

        v42 = v12;
        v43 = v14;
        if ((v16 & 0xC000000000000001) != 0)
        {
          sub_2427B916C();
          sub_2427B906C();
          v16 = v46;
          v17 = v47;
          v18 = v48;
          v19 = v49;
          v20 = v50;
        }

        else
        {
          v19 = 0;
          v21 = -1 << *(v16 + 32);
          v17 = v16 + 56;
          v18 = ~v21;
          v22 = -v21;
          if (v22 < 64)
          {
            v23 = ~(-1 << v22);
          }

          else
          {
            v23 = -1;
          }

          v20 = v23 & *(v16 + 56);
        }

        v24 = (v18 + 64) >> 6;
        while (1)
        {
          v6 = v20;
          if ((v16 & 0x8000000000000000) == 0)
          {
            break;
          }

          if (!sub_2427B918C())
          {
            goto LABEL_12;
          }

          swift_dynamicCast();
          v27 = v51;
          if (!v51)
          {
            goto LABEL_12;
          }

LABEL_35:
          v28 = [v27 externalID];
          if (!v28)
          {
            goto LABEL_25;
          }

          v29 = v28;
          v30 = sub_2427B8FBC();
          v32 = v31;

          if (!v32)
          {
            goto LABEL_25;
          }

          if (v30 == v44[5] && v32 == v44[6])
          {

            goto LABEL_44;
          }

          v34 = sub_2427B939C();

          if (v34)
          {
LABEL_44:
            v35 = v27;
            MEMORY[0x245D18880]();
            if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_2427B902C();
            }

            sub_2427B903C();

            v37 = v45;
          }

          else
          {
LABEL_25:
          }
        }

        v25 = v19;
        v26 = v20;
        if (!v20)
        {
          while (1)
          {
            v19 = v25 + 1;
            if (__OFADD__(v25, 1))
            {
              break;
            }

            if (v19 >= v24)
            {
              goto LABEL_12;
            }

            v26 = *(v17 + 8 * v19);
            ++v25;
            if (v26)
            {
              goto LABEL_31;
            }
          }

          __break(1u);
          break;
        }

LABEL_31:
        v20 = (v26 - 1) & v26;
        v27 = *(*(v16 + 48) + ((v19 << 9) | (8 * __clz(__rbit64(v26)))));
        if (v27)
        {
          goto LABEL_35;
        }

LABEL_12:
        sub_24279EC14();

        v6 = v40;
        v10 = v43;
        if (v43 == v39)
        {
          goto LABEL_52;
        }
      }

      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      v9 = sub_2427B917C();
      if (!v9)
      {
LABEL_51:
        v37 = MEMORY[0x277D84F90];
LABEL_52:

        v2 = v37;
        v44[23] = v37;

        return v2;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2427A6624()
{
  v1 = v0;
  v2 = v0[2];

  v4 = v2(v3);

  v5 = v0[4];
  v0[4] = v4;

  swift_beginAccess();
  v6 = MEMORY[0x277D84F98];
  v1[22] = MEMORY[0x277D84F98];

  swift_beginAccess();
  v1[21] = v6;

  v1[23] = 0;
}

void *IntegrationSync.deinit()
{

  swift_unknownObjectRelease();
  return v0;
}

uint64_t IntegrationSync.__deallocating_deinit()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8D8](v0, 80, 7);
}

void *sub_2427A6808(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC07E8, &unk_2427BBCD0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

char *sub_2427A6890(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC07F0, &unk_2427BAE90);
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

uint64_t sub_2427A6984(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC0818, &qword_2427BAEB0);
  result = sub_2427B91BC();
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
      sub_2427B940C();
      sub_2427B8FCC();
      result = sub_2427B943C();
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

void *sub_2427A6BE4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC0818, &qword_2427BAEB0);
  v2 = *v0;
  v3 = sub_2427B91AC();
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

void *sub_2427A6D40(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
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
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        v22 = v18;
        goto LABEL_24;
      }

      ++v11;
      v19 = v18;
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
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_2427A6E94(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_2427B917C();
  }

  return sub_2427B91EC();
}

uint64_t sub_2427A6EF8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC07C0, &qword_2427BADB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_2427A6FF8(unint64_t a1, uint64_t a2)
{
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_17:
    v5 = sub_2427B917C();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  while (1)
  {
    if (v5 == v6)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x245D18A70](v6, a1);
    }

    else
    {
      if (v6 >= *(v4 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v7 = *(a1 + 8 * v6 + 32);
    }

    v8 = v7;
    v9 = [v7 isEqual_];

    if (v9)
    {
      return v6;
    }

    if (__OFADD__(v6++, 1))
    {
      goto LABEL_16;
    }
  }
}

unint64_t sub_2427A70F0(unint64_t *a1, uint64_t a2)
{
  v5 = *a1;
  result = sub_2427A6FF8(*a1, a2);
  v8 = result;
  if (v2)
  {
    return v8;
  }

  if (v7)
  {
    if (v5 >> 62)
    {
      return sub_2427B917C();
    }

    return *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    return result;
  }

  v24 = a1;
  while (1)
  {
    if (v5 >> 62)
    {
      if (v9 == sub_2427B917C())
      {
        return v8;
      }
    }

    else if (v9 == *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v8;
    }

    if ((v5 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x245D18A70](v9, v5);
      goto LABEL_15;
    }

    if ((v9 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v9 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_40;
    }

    v11 = *(v5 + 8 * v9 + 32);
LABEL_15:
    v12 = v11;
    v13 = [v11 isEqual_];

    if ((v13 & 1) == 0)
    {
      if (v8 != v9)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v14 = MEMORY[0x245D18A70](v8, v5);
          v15 = MEMORY[0x245D18A70](v9, v5);
        }

        else
        {
          if ((v8 & 0x8000000000000000) != 0)
          {
            goto LABEL_44;
          }

          v16 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v8 >= v16)
          {
            goto LABEL_45;
          }

          if (v9 >= v16)
          {
            goto LABEL_46;
          }

          v17 = *(v5 + 32 + 8 * v9);
          v14 = *(v5 + 32 + 8 * v8);
          v15 = v17;
        }

        v18 = v15;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v5 & 0x8000000000000000) != 0 || (v5 & 0x4000000000000000) != 0)
        {
          v5 = sub_2427A6E94(v5);
          v19 = (v5 >> 62) & 1;
        }

        else
        {
          LODWORD(v19) = 0;
        }

        v20 = v5 & 0xFFFFFFFFFFFFFF8;
        v21 = *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20);
        *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20) = v18;

        if ((v5 & 0x8000000000000000) != 0 || v19)
        {
          v5 = sub_2427A6E94(v5);
          v20 = v5 & 0xFFFFFFFFFFFFFF8;
          if ((v9 & 0x8000000000000000) != 0)
          {
LABEL_37:
            __break(1u);
            return v8;
          }
        }

        else if ((v9 & 0x8000000000000000) != 0)
        {
          goto LABEL_37;
        }

        if (v9 >= *(v20 + 16))
        {
          goto LABEL_43;
        }

        v22 = v20 + 8 * v9;
        v23 = *(v22 + 32);
        *(v22 + 32) = v14;

        *v24 = v5;
      }

      v10 = __OFADD__(v8++, 1);
      if (v10)
      {
        goto LABEL_42;
      }
    }

    v10 = __OFADD__(v9++, 1);
    if (v10)
    {
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
  return sub_2427B917C();
}

uint64_t sub_2427A7350(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  sub_2427A152C(0, &qword_2813494D8, 0x277CC59B0);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_2427B917C();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_2427B917C();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

unint64_t sub_2427A7460(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC07C8, &qword_2427BBCE0);
    v3 = sub_2427B933C();

    for (i = (a1 + 80); ; i += 7)
    {
      v5 = *(i - 5);
      v6 = *(i - 4);
      v7 = *(i - 3);
      v8 = *(i - 2);
      v9 = *(i - 1);
      v10 = *i;
      v11 = *(i - 6);

      sub_2427A3288(v9, v10);
      result = sub_2427B6B28(v11);
      if (v13)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v11;
      v14 = (v3[7] + 48 * result);
      *v14 = v5;
      v14[1] = v6;
      v14[2] = v7;
      v14[3] = v8;
      v14[4] = v9;
      v14[5] = v10;
      v15 = v3[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v3[2] = v17;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

id IntegrationServer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

char *IntegrationServer.init()()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC26CalendarIntegrationSupport17IntegrationServer_syncManager;
  type metadata accessor for IntegrationSyncManager();
  swift_allocObject();
  *&v0[v2] = sub_2427A7EB8();
  v3 = OBJC_IVAR____TtC26CalendarIntegrationSupport17IntegrationServer_lock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC0830, &unk_2427BAEC0);
  v4 = swift_allocObject();
  *(v4 + 20) = 0;
  *(v4 + 16) = 0;
  *&v0[v3] = v4;
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = objc_allocWithZone(MEMORY[0x277CF77B8]);
  aBlock[4] = sub_2427A7B4C;
  aBlock[5] = v5;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2427A7B54;
  aBlock[3] = &block_descriptor;
  v7 = _Block_copy(aBlock);

  v8 = [v6 initWithStateChangedCallback_];
  _Block_release(v7);

  *&v1[OBJC_IVAR____TtC26CalendarIntegrationSupport17IntegrationServer_deviceLockObserver] = v8;
  v13.receiver = v1;
  v13.super_class = type metadata accessor for IntegrationServer();
  v9 = objc_msgSendSuper2(&v13, sel_init);
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v10 = *&v9[OBJC_IVAR____TtC26CalendarIntegrationSupport17IntegrationServer_deviceLockObserver];
  v11 = v9;
  if ([v10 hasBeenUnlockedSinceBoot])
  {
    sub_2427A7A24();
  }

  return v11;
}

void sub_2427A77C0(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_2427A7A24();
  }
}

void sub_2427A78DC()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC26CalendarIntegrationSupport17IntegrationServer_syncManager) + 32);
  os_unfair_lock_lock((v1 + 20));
  sub_24279CFF8((v1 + 16));

  os_unfair_lock_unlock((v1 + 20));
}

void sub_2427A7940()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC26CalendarIntegrationSupport17IntegrationServer_syncManager) + 32);
  os_unfair_lock_lock((v1 + 20));
  sub_2427A7BD4((v1 + 16));

  os_unfair_lock_unlock((v1 + 20));
}

void sub_2427A7A24()
{
  v1 = *(v0 + OBJC_IVAR____TtC26CalendarIntegrationSupport17IntegrationServer_lock);
  os_unfair_lock_lock((v1 + 20));
  sub_2427A7E14((v1 + 16), &v3);
  os_unfair_lock_unlock((v1 + 20));
  if (v3 == 1)
  {
    v2 = *(*(v0 + OBJC_IVAR____TtC26CalendarIntegrationSupport17IntegrationServer_syncManager) + 32);
    os_unfair_lock_lock((v2 + 20));
    sub_2427A7E84((v2 + 16));
    os_unfair_lock_unlock((v2 + 20));
  }
}

id IntegrationServer.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for IntegrationServer();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_2427A7B54(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t getEnumTagSinglePayload for IntegrationServer.StartedState(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for IntegrationServer.StartedState(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
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
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
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

_BYTE *sub_2427A7E14@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X8>)
{
  if (*result == 1 && (result[1] & 1) != 0)
  {
    v4 = 0;
  }

  else
  {
    v5 = result;
    result = (*(v2 + 16))();
    v4 = *v5 & v5[1];
  }

  *a2 = v4 & 1;
  return result;
}

void *sub_2427A7EB8()
{
  v1 = v0;
  v2 = sub_2427B90DC();
  MEMORY[0x28223BE20](v2);
  v3 = sub_2427B8F2C();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = sub_2427B90EC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC0870, &qword_2427BAFB8);
  v8 = swift_allocObject();
  *(v8 + 20) = 0;
  *(v8 + 16) = 0;
  *(v8 + 18) = 0;
  v0[4] = v8;
  sub_2427B8FBC();
  v9 = objc_allocWithZone(MEMORY[0x277CF7818]);
  v10 = sub_2427B8FAC();

  v11 = [v9 initWithDomain_];

  v0[5] = v11;
  sub_2427A86FC();
  (*(v5 + 104))(v7, *MEMORY[0x277D85268], v4);
  sub_2427B8F1C();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_2427A8748();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC0878, &unk_2427BAFC0);
  sub_2427A87A0();
  sub_2427B913C();
  v0[3] = sub_2427B90FC();
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = v1[3];
  v14 = objc_allocWithZone(MEMORY[0x277CF7760]);
  aBlock[4] = sub_24279D79C;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24279D6DC;
  aBlock[3] = &block_descriptor_0;
  v15 = _Block_copy(aBlock);

  v16 = [v14 initWithQueue:v13 andBlock:v15];
  _Block_release(v15);

  v1[2] = v16;
  swift_beginAccess();
  swift_weakAssign();

  return v1;
}

void sub_2427A82B8(_BYTE *a1)
{
  if (a1[1] != 1)
  {
    return;
  }

  if (a1[2] == 1)
  {
    if (qword_281349520 != -1)
    {
      swift_once();
    }

    v1 = sub_2427B8F0C();
    __swift_project_value_buffer(v1, qword_281349DA8);
    oslog = sub_2427B8EEC();
    v2 = sub_2427B90AC();
    if (!os_log_type_enabled(oslog, v2))
    {
      goto LABEL_21;
    }

    v3 = swift_slowAlloc();
    *v3 = 0;
    v4 = "Catch-up sync requested, but not required";
LABEL_20:
    _os_log_impl(&dword_24279B000, oslog, v2, v4, v3, 2u);
    MEMORY[0x245D19310](v3, -1, -1);
LABEL_21:

    return;
  }

  if ((*a1 & 1) == 0)
  {
    if (qword_281349520 != -1)
    {
      swift_once();
    }

    v10 = sub_2427B8F0C();
    __swift_project_value_buffer(v10, qword_281349DA8);
    oslog = sub_2427B8EEC();
    v2 = sub_2427B90CC();
    if (!os_log_type_enabled(oslog, v2))
    {
      goto LABEL_21;
    }

    v3 = swift_slowAlloc();
    *v3 = 0;
    v4 = "Catch-up sync requested, but sync manager not yet started";
    goto LABEL_20;
  }

  if (qword_281349520 != -1)
  {
    swift_once();
  }

  v6 = sub_2427B8F0C();
  __swift_project_value_buffer(v6, qword_281349DA8);
  v7 = sub_2427B8EEC();
  v8 = sub_2427B90CC();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_24279B000, v7, v8, "Performing catch-up sync", v9, 2u);
    MEMORY[0x245D19310](v9, -1, -1);
  }

  sub_24279D02C(a1);
}

uint64_t sub_2427A8558()
{

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t __swift_memcpy3_1(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for IntegrationSyncManager.State(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }
  }

  v4 = *a1;
  v5 = v4 >= 2;
  v6 = (v4 + 2147483646) & 0x7FFFFFFF;
  if (!v5)
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for IntegrationSyncManager.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554177) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFE)
  {
    v3 = 0;
  }

  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
    if (v3)
    {
      v4 = ((a2 - 255) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *result = a2 + 1;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

unint64_t sub_2427A86FC()
{
  result = qword_281349488;
  if (!qword_281349488)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281349488);
  }

  return result;
}

unint64_t sub_2427A8748()
{
  result = qword_281349490;
  if (!qword_281349490)
  {
    sub_2427B90DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281349490);
  }

  return result;
}

unint64_t sub_2427A87A0()
{
  result = qword_2813494E0;
  if (!qword_2813494E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECC0878, &unk_2427BAFC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813494E0);
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

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t getEnumTagSinglePayload for CalendarIntegrationSupportLog(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for CalendarIntegrationSupportLog(_WORD *result, int a2, int a3)
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

uint64_t sub_2427A8980(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_2427B8F0C();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_2427B8EFC();
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

uint64_t sub_2427A8A64()
{
  sub_2427B940C();
  MEMORY[0x245D18CB0](0);
  return sub_2427B943C();
}

uint64_t sub_2427A8AD0(uint64_t a1)
{
  sub_2427B940C();
  MEMORY[0x245D18CB0](0);
  return sub_2427B943C();
}

id sub_2427A8B20(uint64_t a1)
{
  v2 = v1;
  v20[1] = *MEMORY[0x277D85DE8];
  sub_2427A9A90(a1);
  v4 = *(v1 + 16);
  sub_2427A152C(0, &unk_2813494C0, 0x277D44708);
  v5 = sub_2427B8FFC();

  v20[0] = 0;
  v6 = [v4 fetchRemindersWithObjectIDs:v5 error:v20];

  v7 = v20[0];
  if (v6)
  {
    sub_2427A152C(0, &qword_2813494B0, 0x277D44758);
    sub_2427A4C30();
    v8 = sub_2427B8F6C();
    v9 = v7;

    if ((v8 & 0xC000000000000001) != 0)
    {
      v10 = sub_2427B917C();
    }

    else
    {
      v10 = *(v8 + 16);
    }

    v12 = *(a1 + 16);
    if (v10 != v12)
    {
      if (qword_281349518 != -1)
      {
        swift_once();
      }

      v13 = sub_2427B8F0C();
      __swift_project_value_buffer(v13, qword_281349D90);

      v14 = sub_2427B8EEC();
      v15 = sub_2427B90BC();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 134218240;
        *(v16 + 4) = v12;

        *(v16 + 12) = 2048;
        if ((v8 & 0xC000000000000001) != 0)
        {
          v17 = sub_2427B917C();
        }

        else
        {
          v17 = *(v8 + 16);
        }

        *(v16 + 14) = v17;

        _os_log_impl(&dword_24279B000, v14, v15, "Requested reminders for %ld ids but only received %ld reminders", v16, 0x16u);
        MEMORY[0x245D19310](v16, -1, -1);
      }

      else
      {
      }
    }

    v20[0] = sub_2427A7460(MEMORY[0x277D84F90]);
    MEMORY[0x28223BE20](v20[0]);
    v19[2] = v20;
    v19[3] = v2;
    v11 = sub_2427ACB24(v8, sub_2427ACE64, v19);
  }

  else
  {
    v11 = v20[0];
    sub_2427B8C4C();

    swift_willThrow();
  }

  return v11;
}

void sub_2427A8E40(void *a1@<X1>, uint64_t *a2@<X2>, uint64_t a3@<X3>, char *a4@<X8>)
{
  v78 = a3;
  v7 = sub_2427B8D5C();
  v74 = *(v7 - 8);
  v75 = v7;
  MEMORY[0x28223BE20](v7);
  v73 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1;
  sub_2427A9228(v9, a4);
  v72 = v9;
  v10 = [v9 list];
  v11 = [v10 objectID];
  v12 = v11;
  v13 = *a2;
  v14 = *(*a2 + 16);
  v79 = a4;
  if (v14 && (v15 = sub_2427B6B28(v11), (v16 & 1) != 0))
  {
    v17 = (*(v13 + 56) + 48 * v15);
    v18 = *v17;
    v19 = v17[1];
    v20 = v17[3];
    v70 = v17[2];
    v71 = v18;
    v22 = v17[4];
    v21 = v17[5];
    v23 = &a4[*(type metadata accessor for IntegrationEntry(0) + 52)];
    v24 = *v23;
    v69 = v23[1];
    v76 = v12;
    v77 = v10;
    v26 = v23[2];
    v25 = v23[3];
    v27 = v23[4];
    v28 = v23[5];

    sub_2427A3288(v22, v21);
    v29 = v26;
    v30 = v25;
    v12 = v76;
    v10 = v77;
    sub_2427ACEDC(v24, v69, v29, v30, v27, v28);
    v31 = v70;
    *v23 = v71;
    v23[1] = v19;
    v23[2] = v31;
    v23[3] = v20;
    v23[4] = v22;
    v23[5] = v21;
  }

  else
  {
    sub_2427A984C(v10, v12, &v81);
    v32 = *(&v81 + 1);
    if (*(&v81 + 1))
    {
      v71 = a2;
      v34 = v84;
      v33 = v85;
      v35 = v83;
      v69 = v81;
      v70 = v82;
      v36 = *(type metadata accessor for IntegrationEntry(0) + 52);
      v76 = v12;
      v77 = v10;
      v37 = &a4[v36];
      v38 = *&a4[v36];
      v39 = *(v37 + 1);
      v68 = v38;
      v40 = *(v37 + 2);
      v41 = *(v37 + 3);
      v43 = *(v37 + 4);
      v42 = *(v37 + 5);

      sub_2427A3288(v34, v33);
      v44 = v40;
      v12 = v76;
      sub_2427ACEDC(v68, v39, v44, v41, v43, v42);
      v46 = v69;
      v45 = v70;
      *v37 = v69;
      *(v37 + 1) = v32;
      *(v37 + 2) = v45;
      *(v37 + 3) = v35;
      *(v37 + 4) = v34;
      *(v37 + 5) = v33;
      v10 = v77;
      *&v81 = v46;
      *(&v81 + 1) = v32;
      v82 = v45;
      v83 = v35;
      v84 = v34;
      v85 = v33;
      v47 = v12;
      v48 = v71;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v80 = *v48;
      sub_2427B7108(&v81, v47, isUniquelyReferenced_nonNull_native);

      *v48 = v80;
    }
  }

  v50 = [v10 account];
  v51 = [v50 externalIdentifier];

  if (v51)
  {
    v52 = sub_2427B8FBC();
    v54 = v53;
  }

  else
  {
    v52 = 0;
    v54 = 0;
  }

  v55 = v79;
  v56 = sub_2427A9BB8(v52, v54);
  v58 = v57;

  v59 = type metadata accessor for IntegrationEntry(0);
  v60 = &v55[*(v59 + 56)];

  *v60 = v56;
  v60[1] = v58;
  v61 = &v55[*(v59 + 60)];
  v62 = v61[1];
  if (v62)
  {
    v63 = *v61;
  }

  else
  {
    v64 = [v72 objectID];
    v65 = [v64 uuid];

    v66 = v73;
    sub_2427B8D4C();

    v63 = sub_2427B8D3C();
    v62 = v67;

    (*(v74 + 8))(v66, v75);
  }

  *v61 = v63;
  v61[1] = v62;
}

void sub_2427A9228(void *a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC08D8, &qword_2427BB0B0);
  MEMORY[0x28223BE20](v4 - 8);
  v72 = v61 - v5;
  v6 = sub_2427B8BDC();
  v69 = *(v6 - 8);
  v70 = v6;
  v7 = MEMORY[0x28223BE20](v6);
  v65 = v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v66 = v61 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v63 = v61 - v12;
  MEMORY[0x28223BE20](v11);
  v64 = v61 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC08E0, &qword_2427BB0B8);
  MEMORY[0x28223BE20](v14 - 8);
  v68 = v61 - v15;
  v16 = sub_2427B8C9C();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for IntegrationEntry(0);
  v21 = v20[7];
  v22 = sub_2427B8DBC();
  v23 = *(v22 - 8);
  v24 = *(v23 + 56);
  v67 = v21;
  v61[1] = v23 + 56;
  v62 = v24;
  v24(&a2[v21], 1, 1, v22);
  v25 = v20[12];
  v26 = type metadata accessor for IntegrationRecurrence(0);
  v27 = *(*(v26 - 8) + 56);
  v71 = v25;
  v27(&a2[v25], 1, 1, v26);
  v28 = &a2[v20[13]];
  *(v28 + 1) = 0u;
  *(v28 + 2) = 0u;
  *v28 = 0u;
  v29 = [a1 objectID];
  v30 = [v29 urlRepresentation];

  sub_2427B8C7C();
  v31 = sub_2427B8C5C();
  v33 = v32;
  (*(v17 + 8))(v19, v16);
  *a2 = v31;
  *(a2 + 1) = v33;
  REMReminder.startDate.getter(&a2[v20[5]]);
  REMReminder.startDate.getter(&a2[v20[6]]);
  v34 = [a1 effectiveDisplayDateComponents_forCalendar];
  if (v34)
  {
    v35 = v63;
    v36 = v34;
    sub_2427B8BAC();

    v38 = v69;
    v37 = v70;
    v39 = v64;
    (*(v69 + 32))(v64, v35, v70);
    v40 = v68;
    sub_2427B8BCC();
    (*(v38 + 8))(v39, v37);
  }

  else
  {
    v40 = v68;
    v62(v68, 1, 1, v22);
    v38 = v69;
    v37 = v70;
  }

  sub_2427ACF3C(v40, &a2[v67], &qword_27ECC08E0, &qword_2427BB0B8);
  v41 = [a1 titleAsString];
  if (v41)
  {
    v42 = v41;
    v43 = sub_2427B8FBC();
    v45 = v44;
  }

  else
  {
    v43 = 0;
    v45 = 0xE000000000000000;
  }

  v46 = &a2[v20[8]];
  *v46 = v43;
  v46[1] = v45;
  v47 = [a1 dueDateComponents];
  if (v47)
  {
    v48 = v65;
    v49 = v47;
    sub_2427B8BAC();

    v50 = v66;
    (*(v38 + 32))(v66, v48, v37);
    sub_2427B8BBC();
    v52 = v51;
    (*(v38 + 8))(v50, v37);
  }

  else
  {
    v52 = 0;
  }

  v53 = &a2[v20[14]];
  a2[v20[9]] = v52 & 1;
  a2[v20[10]] = [a1 isCompleted];
  v54 = v72;
  REMReminder.recurrence.getter(v72);
  sub_2427ACF3C(v54, &a2[v71], &qword_27ECC08D8, &qword_2427BB0B0);
  v73 = a1;
  sub_2427A152C(0, &qword_2813494B0, 0x277D44758);
  sub_2427B8DCC();
  *&a2[v20[11]] = REMReminderDefaultPriorityForPriorityLevel();
  sub_2427ACEDC(*v28, *(v28 + 1), *(v28 + 2), *(v28 + 3), *(v28 + 4), *(v28 + 5));
  *(v28 + 1) = 0u;
  *(v28 + 2) = 0u;
  *v28 = 0u;
  *v53 = 0;
  *(v53 + 1) = 0;
  v55 = [a1 externalIdentifier];
  if (v55)
  {
    v56 = v55;
    v57 = sub_2427B8FBC();
    v59 = v58;
  }

  else
  {

    v57 = 0;
    v59 = 0;
  }

  v60 = &a2[v20[15]];
  *v60 = v57;
  v60[1] = v59;
}

uint64_t sub_2427A984C@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v25 = a2;
  v5 = sub_2427B8C9C();
  v26 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2427B8EDC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [a1 color];
  sub_2427B8ECC();
  v13 = sub_2427B8EBC();
  v15 = v14;
  v16 = [v25 urlRepresentation];
  sub_2427B8C7C();

  v17 = sub_2427B8C5C();
  v19 = v18;
  (*(v26 + 8))(v7, v5);
  v20 = sub_2427B8FBC();
  v22 = v21;
  result = (*(v9 + 8))(v11, v8);
  *a3 = v20;
  a3[1] = v22;
  a3[2] = v17;
  a3[3] = v19;
  a3[4] = v13;
  a3[5] = v15;
  return result;
}

uint64_t sub_2427A9A90(uint64_t a1)
{
  v2 = MEMORY[0x277D84F90];
  v12 = MEMORY[0x277D84F90];
  v3 = *(a1 + 16);

  v5 = 0;
  v6 = a1 + 40;
LABEL_2:
  v7 = (v6 + 16 * v5);
  while (1)
  {
    if (v3 == v5)
    {

      return v2;
    }

    if (v5 >= v3)
    {
      break;
    }

    v8 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      goto LABEL_12;
    }

    v9 = *(v7 - 1);
    v10 = *v7;

    v11 = sub_2427AC710(v9, v10);

    ++v5;
    v7 += 2;
    if (v11)
    {
      MEMORY[0x245D18880](result);
      if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2427B902C();
      }

      result = sub_2427B903C();
      v2 = v12;
      v5 = v8;
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_2427A9BB8(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    v5 = *(v2 + 32);
    if (*(v5 + 16))
    {

      v6 = sub_24279D264(a1, a2);
      if (v7)
      {
        a1 = *(*(v5 + 56) + 16 * v6);

        return a1;
      }
    }

    v8 = *(v2 + 24);
    if (v8)
    {
      v9 = *(v2 + 24);
    }

    else
    {
      v10 = [objc_allocWithZone(MEMORY[0x277CB8F48]) init];
      v11 = *(v2 + 24);
      *(v2 + 24) = v10;
      v9 = v10;

      v8 = 0;
    }

    v12 = v8;
    v13 = sub_2427B8FAC();
    v14 = [v9 accountWithIdentifier_];

    if (v14)
    {
      v15 = [v14 cal_personaIdentifier];
      if (v15)
      {
        v16 = v15;
        a1 = sub_2427B8FBC();

        return a1;
      }
    }

    else
    {
      if (qword_281349520 != -1)
      {
        swift_once();
      }

      v17 = sub_2427B8F0C();
      __swift_project_value_buffer(v17, qword_281349DA8);

      v14 = sub_2427B8EEC();
      v18 = sub_2427B90BC();

      if (os_log_type_enabled(v14, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v22 = v20;
        *v19 = 136315138;
        *(v19 + 4) = sub_2427A1BEC(a1, a2, &v22);
        _os_log_impl(&dword_24279B000, v14, v18, "Could not find account with identifier %s", v19, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v20);
        MEMORY[0x245D19310](v20, -1, -1);
        MEMORY[0x245D19310](v19, -1, -1);
      }
    }

    return 0;
  }

  return a1;
}

uint64_t REMReminder.identifier.getter()
{
  v1 = sub_2427B8C9C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [v0 objectID];
  v6 = [v5 urlRepresentation];

  sub_2427B8C7C();
  v7 = sub_2427B8C5C();
  (*(v2 + 8))(v4, v1);
  return v7;
}

uint64_t REMReminder.startDate.getter@<X0>(uint64_t a1@<X8>)
{
  v57 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC0880, &unk_2427BB000);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v51 - v3;
  v5 = sub_2427B8D6C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2427B8D9C();
  v56 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_2427B8BDC();
  v12 = *(v55 - 8);
  v13 = MEMORY[0x28223BE20](v55);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v51 - v16;
  v18 = [v1 effectiveDisplayDateComponents_forCalendar];
  if (v18)
  {
    v54 = v9;
    v19 = v18;
    sub_2427B8BAC();

    (*(v6 + 104))(v8, *MEMORY[0x277CC9830], v5);
    sub_2427B8D7C();
    (*(v6 + 8))(v8, v5);
    sub_2427B8D8C();
    v20 = sub_2427B8D2C();
    v21 = *(v20 - 8);
    if ((*(v21 + 48))(v4, 1, v20) == 1)
    {
      sub_2427A4230(v4, &qword_27ECC0880, &unk_2427BB000);
      if (qword_281349520 != -1)
      {
        swift_once();
      }

      v22 = sub_2427B8F0C();
      __swift_project_value_buffer(v22, qword_281349DA8);
      v23 = v55;
      (*(v12 + 16))(v15, v17, v55);
      v24 = sub_2427B8EEC();
      v25 = sub_2427B90BC();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v52 = v26;
        v53 = swift_slowAlloc();
        v58 = v53;
        *v26 = 136315138;
        sub_2427ABFE4();
        v27 = sub_2427B938C();
        v28 = v23;
        v30 = v29;
        v31 = *(v12 + 8);
        v32 = v15;
        v33 = v28;
        v31(v32, v28);
        v34 = sub_2427A1BEC(v27, v30, &v58);

        v35 = v52;
        *(v52 + 1) = v34;
        _os_log_impl(&dword_24279B000, v24, v25, "We got a reminder with a due date that couldn't be converted to a date: %s", v35, 0xCu);
        v36 = v53;
        __swift_destroy_boxed_opaque_existential_1(v53);
        MEMORY[0x245D19310](v36, -1, -1);
        MEMORY[0x245D19310](v35, -1, -1);
      }

      else
      {

        v31 = *(v12 + 8);
        v31(v15, v23);
        v33 = v23;
      }

      v49 = v54;
      sub_2427B8CEC();
      (*(v56 + 8))(v11, v49);
      return (v31)(v17, v33);
    }

    else
    {
      (*(v56 + 8))(v11, v54);
      (*(v12 + 8))(v17, v55);
      return (*(v21 + 32))(v57, v4, v20);
    }
  }

  else
  {
    if (qword_281349520 != -1)
    {
      swift_once();
    }

    v37 = sub_2427B8F0C();
    __swift_project_value_buffer(v37, qword_281349DA8);
    v38 = v1;
    v39 = sub_2427B8EEC();
    v40 = sub_2427B90BC();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v58 = v42;
      *v41 = 136315138;
      v43 = [v38 titleAsString];
      if (v43)
      {
        v44 = v43;
        v45 = sub_2427B8FBC();
        v47 = v46;
      }

      else
      {
        v45 = 0;
        v47 = 0xE000000000000000;
      }

      v50 = sub_2427A1BEC(v45, v47, &v58);

      *(v41 + 4) = v50;
      _os_log_impl(&dword_24279B000, v39, v40, "We ended up with a reminder without a due date: %s", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v42);
      MEMORY[0x245D19310](v42, -1, -1);
      MEMORY[0x245D19310](v41, -1, -1);
    }

    return sub_2427B8CEC();
  }
}

uint64_t REMReminder.title.getter()
{
  v1 = [v0 titleAsString];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_2427B8FBC();

  return v3;
}

uint64_t REMReminder.timeZone.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_2427B8BDC();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - v9;
  v11 = [v2 effectiveDisplayDateComponents_forCalendar];
  if (v11)
  {
    v12 = v11;
    sub_2427B8BAC();

    (*(v5 + 32))(v10, v8, v4);
    sub_2427B8BCC();
    return (*(v5 + 8))(v10, v4);
  }

  else
  {
    v14 = sub_2427B8DBC();
    v15 = *(*(v14 - 8) + 56);

    return v15(a1, 1, 1, v14);
  }
}

uint64_t REMReminder.allDay.getter()
{
  v1 = v0;
  v2 = sub_2427B8BDC();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - v7;
  v9 = [v1 dueDateComponents];
  if (v9)
  {
    v10 = v9;
    sub_2427B8BAC();

    (*(v3 + 32))(v8, v6, v2);
    sub_2427B8BBC();
    v12 = v11;
    (*(v3 + 8))(v8, v2);
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t REMReminder.priority.getter()
{
  sub_2427A152C(0, &qword_2813494B0, 0x277D44758);
  sub_2427B8DCC();
  return REMReminderDefaultPriorityForPriorityLevel();
}

void REMReminder.recurrence.getter(uint64_t a1@<X8>)
{
  v3 = sub_2427B8D2C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v81 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC0890, &qword_2427BB3B0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v92 = &v81 - v14;
  if ([v1 isCompleted])
  {
    goto LABEL_2;
  }

  v15 = [v1 recurrenceRules];
  if (!v15)
  {
    goto LABEL_15;
  }

  v16 = v15;
  sub_2427A152C(0, &qword_281349480, 0x277D44738);
  v17 = sub_2427B901C();

  if (!(v17 >> 62))
  {
    if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_6;
    }

LABEL_44:

LABEL_2:
    v15 = 0;
LABEL_15:
    v32 = type metadata accessor for IntegrationRecurrence(v15);
    v33 = *(*(v32 - 8) + 56);

    v33(a1, 1, 1, v32);
    return;
  }

  if (!sub_2427B917C())
  {
    goto LABEL_44;
  }

LABEL_6:
  if ((v17 & 0xC000000000000001) != 0)
  {
    v18 = MEMORY[0x245D18A70](0, v17);
  }

  else
  {
    if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_47;
    }

    v18 = *(v17 + 32);
  }

  v19 = v18;

  v20 = [v19 frequency];
  if (v20 >= 5)
  {
    v21 = 3;
  }

  else
  {
    v21 = 0x4030201uLL >> (8 * v20);
  }

  v22 = [v19 interval];
  v91 = v19;
  v23 = [v19 recurrenceEnd];
  v90 = v21;
  v89 = v22;
  if (v23)
  {
    v24 = v23;
    v25 = [v23 endDate];
    if (v25)
    {
      v26 = v25;
      sub_2427B8D1C();

      v27 = *(v4 + 32);
      v27(v9, v7, v3);
      v28 = v92;
      v27(v92, v9, v3);
      v29 = type metadata accessor for IntegrationRecurrence.RecurrenceEnd(0);
      swift_storeEnumTagMultiPayload();
      v30 = *(*(v29 - 8) + 56);
      v31 = v28;
    }

    else
    {
      v35 = [v24 occurrenceCount];

      if ((v35 & 0x8000000000000000) != 0)
      {
        goto LABEL_67;
      }

      v36 = v92;
      *v92 = v35;
      v29 = type metadata accessor for IntegrationRecurrence.RecurrenceEnd(0);
      swift_storeEnumTagMultiPayload();
      v30 = *(*(v29 - 8) + 56);
      v31 = v36;
    }

    v30(v31, 0, 1, v29);
  }

  else
  {
    v34 = type metadata accessor for IntegrationRecurrence.RecurrenceEnd(0);
    (*(*(v34 - 8) + 56))(v92, 1, 1, v34);
  }

  v37 = v91;
  v38 = [v91 firstDayOfTheWeek];
  if (v38 >= 8)
  {
    v39 = 7;
  }

  else
  {
    v39 = 0x605040302010007uLL >> (8 * v38);
  }

  v40 = [v37 daysOfTheWeek];
  v88 = v39;
  if (v40)
  {
    v41 = v40;
    sub_2427A152C(0, &qword_27ECC08A0, 0x277D44720);
    v7 = sub_2427B901C();

    if (!(v7 >> 62))
    {
      v42 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v82 = v13;
      v83 = a1;
      if (v42)
      {
LABEL_28:
        if (v42 >= 1)
        {
          v43 = 0;
          v44 = MEMORY[0x277D84F90];
          do
          {
            if ((v7 & 0xC000000000000001) != 0)
            {
              v45 = MEMORY[0x245D18A70](v43, v7);
            }

            else
            {
              v45 = *(v7 + 8 * v43 + 32);
            }

            v46 = v45;
            v47 = [v45 dayOfTheWeek];
            if (v47 >= 8)
            {
              v48 = 1;
            }

            else
            {
              v48 = 0x605040302010001uLL >> (8 * v47);
            }

            v49 = [v46 weekNumber];
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v44 = sub_2427ABEE0(0, *(v44 + 2) + 1, 1, v44);
            }

            v51 = *(v44 + 2);
            v50 = *(v44 + 3);
            if (v51 >= v50 >> 1)
            {
              v44 = sub_2427ABEE0((v50 > 1), v51 + 1, 1, v44);
            }

            ++v43;

            *(v44 + 2) = v51 + 1;
            v52 = &v44[16 * v51];
            v52[32] = v48;
            *(v52 + 5) = v49;
          }

          while (v42 != v43);
          goto LABEL_49;
        }

        __break(1u);
LABEL_67:
        __break(1u);
        return;
      }

LABEL_48:
      v44 = MEMORY[0x277D84F90];
LABEL_49:

      v13 = v82;
      a1 = v83;
      v37 = v91;
      goto LABEL_50;
    }

LABEL_47:
    v42 = sub_2427B917C();
    v82 = v13;
    v83 = a1;
    if (v42)
    {
      goto LABEL_28;
    }

    goto LABEL_48;
  }

  v44 = 0;
LABEL_50:
  v53 = [v37 daysOfTheMonth];
  if (v53)
  {
    v54 = v53;
    sub_2427A152C(0, &qword_27ECC0898, 0x277CCABB0);
    v55 = sub_2427B901C();

    v91 = sub_2427AB374(v55);
  }

  else
  {
    v91 = 0;
  }

  v56 = [v37 daysOfTheYear];
  if (v56)
  {
    v57 = v56;
    sub_2427A152C(0, &qword_27ECC0898, 0x277CCABB0);
    v58 = sub_2427B901C();

    v87 = sub_2427AB374(v58);
  }

  else
  {
    v87 = 0;
  }

  v59 = [v37 weeksOfTheYear];
  if (v59)
  {
    v60 = v59;
    sub_2427A152C(0, &qword_27ECC0898, 0x277CCABB0);
    v61 = sub_2427B901C();

    v86 = sub_2427AB374(v61);
  }

  else
  {
    v86 = 0;
  }

  v62 = [v37 monthsOfTheYear];
  if (v62)
  {
    v63 = v62;
    sub_2427A152C(0, &qword_27ECC0898, 0x277CCABB0);
    v64 = sub_2427B901C();

    v85 = sub_2427AB374(v64);
  }

  else
  {
    v85 = 0;
  }

  v65 = [v37 setPositions];
  if (v65)
  {
    v66 = v65;
    sub_2427A152C(0, &qword_27ECC0898, 0x277CCABB0);
    v67 = sub_2427B901C();

    v84 = sub_2427AB374(v67);
  }

  else
  {
    v84 = 0;
  }

  sub_2427AC03C(v92, v13);
  v68 = type metadata accessor for IntegrationRecurrence(0);
  v69 = v68[6];
  v70 = type metadata accessor for IntegrationRecurrence.RecurrenceEnd(0);
  (*(*(v70 - 8) + 56))(a1 + v69, 1, 1, v70);
  v71 = v68[7];
  *(a1 + v71) = 7;
  v72 = v68[9];
  v92 = v68[8];
  v73 = v68[10];
  v74 = v68[11];
  v75 = v13;
  v77 = v68[12];
  v76 = v68[13];
  sub_2427ACF3C(v75, a1 + v69, &qword_27ECC0890, &qword_2427BB3B0);
  *a1 = v90;
  *(a1 + 8) = v89;
  *(a1 + v71) = v88;
  v78 = v91;
  *(a1 + v92) = v44;
  *(a1 + v72) = v78;
  v79 = v86;
  *(a1 + v73) = v87;
  *(a1 + v74) = v79;
  v80 = v84;
  *(a1 + v77) = v85;
  *(a1 + v76) = v80;
  (*(*(v68 - 1) + 56))(a1, 0, 1, v68);
}

uint64_t sub_2427AB374(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_2427B917C())
  {
    v8 = MEMORY[0x277D84F90];
    sub_2427AC0CC(0, i & ~(i >> 63), 0);
    v4 = v8;
    if (v2)
    {
      v2 = sub_2427B917C();
      if (!v2)
      {
        return v4;
      }
    }

    else
    {
      v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v2)
      {
        return v4;
      }
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v5 = *(a1 + 32);
      goto LABEL_10;
    }

    __break(1u);
LABEL_14:
    ;
  }

  v5 = MEMORY[0x245D18A70](0, a1);
LABEL_10:
  v6 = v5;
  sub_2427B908C();

  return 0;
}

double REMReminder.color.getter@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_2427AB518()
{
  v1 = sub_2427B8C9C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [*v0 objectID];
  v6 = [v5 urlRepresentation];

  sub_2427B8C7C();
  v7 = sub_2427B8C5C();
  (*(v2 + 8))(v4, v1);
  return v7;
}

uint64_t sub_2427AB638@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2427B8BDC();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = [*v1 effectiveDisplayDateComponents_forCalendar];
  if (v10)
  {
    v11 = v10;
    sub_2427B8BAC();

    (*(v4 + 32))(v9, v7, v3);
    sub_2427B8BCC();
    return (*(v4 + 8))(v9, v3);
  }

  else
  {
    v13 = sub_2427B8DBC();
    v14 = *(*(v13 - 8) + 56);

    return v14(a1, 1, 1, v13);
  }
}

uint64_t sub_2427AB7D4()
{
  v1 = [*v0 titleAsString];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_2427B8FBC();

  return v3;
}

uint64_t sub_2427AB83C()
{
  v1 = sub_2427B8BDC();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v13 - v6;
  v8 = [*v0 dueDateComponents];
  if (v8)
  {
    v9 = v8;
    sub_2427B8BAC();

    (*(v2 + 32))(v7, v5, v1);
    sub_2427B8BBC();
    v11 = v10;
    (*(v2 + 8))(v7, v1);
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

uint64_t sub_2427AB9A4()
{
  sub_2427A152C(0, &qword_2813494B0, 0x277D44758);
  sub_2427B8DCC();
  return REMReminderDefaultPriorityForPriorityLevel();
}

double sub_2427ABA20@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_2427ABA3C()
{
  v1 = [*v0 externalIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_2427B8FBC();

  return v3;
}

uint64_t _s26CalendarIntegrationSupport0B10RecurrenceV7WeekdayO9hashValueSivg_0()
{
  v1 = *v0;
  sub_2427B940C();
  MEMORY[0x245D18CB0](v1);
  return sub_2427B943C();
}

uint64_t sub_2427ABB04(uint64_t a1)
{
  v2 = *v1;
  sub_2427B940C();
  MEMORY[0x245D18CB0](v2);
  return sub_2427B943C();
}

uint64_t sub_2427ABB48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v6 || (sub_2427B939C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1635017060 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2427B939C();

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

uint64_t sub_2427ABC3C(uint64_t a1)
{
  v2 = sub_2427A30EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2427ABC78(uint64_t a1)
{
  v2 = sub_2427A30EC();

  return MEMORY[0x2821FE720](a1, v2);
}

char *sub_2427ABCB4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC08A8, &qword_2427BB080);
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

char *sub_2427ABDC0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC08C0, &qword_2427BB098);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

char *sub_2427ABEE0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC08F8, &qword_2427BB0C8);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

unint64_t sub_2427ABFE4()
{
  result = qword_27ECC0888;
  if (!qword_27ECC0888)
  {
    sub_2427B8BDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC0888);
  }

  return result;
}

uint64_t sub_2427AC03C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC0890, &qword_2427BB3B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_2427AC0AC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2427AC0EC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2427AC0CC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2427AC2C4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2427AC0EC(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC08D0, &qword_2427BB0A8);
  v10 = *(type metadata accessor for IntegrationEntry(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for IntegrationEntry(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_2427AC2C4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC0900, &qword_2427BB0D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void sub_2427AC3C8(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a3)
  {
    if (sub_2427B929C() == *(a4 + 36))
    {
      sub_2427B92AC();
      sub_2427A152C(0, &unk_2813494C0, 0x277D44708);
      swift_dynamicCast();
      sub_2427B6B28(v6);
      v5 = v4;

      if (v5)
      {
        sub_2427B927C();
        sub_2427B92CC();
        swift_unknownObjectRelease();
        return;
      }

      goto LABEL_14;
    }

    __break(1u);
    goto LABEL_12;
  }

  if (a1 < 0 || -(-1 << *(a4 + 32)) <= a1)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (((*(a4 + 64 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> a1) & 1) == 0)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (*(a4 + 36) != a2)
  {
LABEL_15:
    __break(1u);
    return;
  }

  sub_2427B915C();
}

void sub_2427AC52C(void *a1, unint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  if ((a5 & 0xC000000000000001) != 0)
  {
    if (a4)
    {
      sub_2427B92DC();
      sub_2427A152C(0, &unk_2813494C0, 0x277D44708);
      swift_dynamicCast();
      sub_2427A152C(0, &qword_2813494B0, 0x277D44758);
      swift_dynamicCast();
      *a1 = v13;
      return;
    }

    goto LABEL_18;
  }

  if ((a4 & 1) == 0)
  {
LABEL_8:
    if ((a2 & 0x8000000000000000) == 0 && 1 << *(a5 + 32) > a2)
    {
      if ((*(a5 + 8 * (a2 >> 6) + 64) >> a2))
      {
        if (*(a5 + 36) == a3)
        {
          goto LABEL_12;
        }

LABEL_17:
        __break(1u);
LABEL_18:
        __break(1u);
        return;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (sub_2427B929C() != *(a5 + 36))
  {
    __break(1u);
    goto LABEL_15;
  }

  sub_2427B92AC();
  sub_2427A152C(0, &unk_2813494C0, 0x277D44708);
  swift_dynamicCast();
  a2 = sub_2427B6B28(v13);
  v9 = v8;

  if ((v9 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

LABEL_12:
  v10 = *(*(a5 + 48) + 8 * a2);
  v11 = *(*(a5 + 56) + 8 * a2);
  *a1 = v11;
  v10;
  v12 = v11;
}

id sub_2427AC710(uint64_t a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC08B0, &qword_2427BB088);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v24 - v5;
  v7 = sub_2427B8C9C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2427B8C8C();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_2427A4230(v6, &qword_27ECC08B0, &qword_2427BB088);
    if (qword_281349518 != -1)
    {
      swift_once();
    }

    v11 = sub_2427B8F0C();
    __swift_project_value_buffer(v11, qword_281349D90);

    v12 = sub_2427B8EEC();
    v13 = sub_2427B90BC();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v25 = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_2427A1BEC(a1, a2, &v25);
      _os_log_impl(&dword_24279B000, v12, v13, "Can't turn non-URL into reminder object ID %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x245D19310](v15, -1, -1);
      MEMORY[0x245D19310](v14, -1, -1);
    }

    return 0;
  }

  (*(v8 + 32))(v10, v6, v7);
  v16 = sub_2427B8C6C();
  v17 = [objc_opt_self() objectIDWithURL_];

  if (!v17)
  {
    if (qword_281349518 != -1)
    {
      swift_once();
    }

    v18 = sub_2427B8F0C();
    __swift_project_value_buffer(v18, qword_281349D90);

    v19 = sub_2427B8EEC();
    v20 = sub_2427B90BC();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v25 = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_2427A1BEC(a1, a2, &v25);
      _os_log_impl(&dword_24279B000, v19, v20, "invalid object ID URL %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x245D19310](v22, -1, -1);
      MEMORY[0x245D19310](v21, -1, -1);
    }

    (*(v8 + 8))(v10, v7);
    return 0;
  }

  (*(v8 + 8))(v10, v7);
  return v17;
}

uint64_t sub_2427ACB24(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v37 = a2;
  v38 = a3;
  v5 = type metadata accessor for IntegrationEntry(0);
  v36 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v8 = sub_2427B917C();
  }

  else
  {
    v8 = *(a1 + 16);
  }

  result = MEMORY[0x277D84F90];
  if (v8)
  {
    v45 = MEMORY[0x277D84F90];
    sub_2427AC0AC(0, v8 & ~(v8 >> 63), 0);
    v40 = v45;
    if (v39)
    {
      result = sub_2427B925C();
    }

    else
    {
      result = sub_2427B914C();
      v10 = *(a1 + 36);
    }

    v42 = result;
    v43 = v10;
    v44 = v39 != 0;
    if ((v8 & 0x8000000000000000) == 0)
    {
      v34 = v7;
      v35 = a1;
      v11 = 0;
      v12 = a1 & 0xFFFFFFFFFFFFFF8;
      if (a1 < 0)
      {
        v12 = a1;
      }

      v32[1] = v3;
      v32[2] = v12;
      v33 = v8;
      while (v11 < v8)
      {
        v19 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_26;
        }

        v21 = v42;
        v20 = v43;
        v22 = v44;
        sub_2427AC52C(v41, v42, v43, v44, a1);
        v24 = v23;
        v25 = v41[0];
        v26 = v34;
        v37();

        v27 = v40;
        v45 = v40;
        v29 = *(v40 + 16);
        v28 = *(v40 + 24);
        if (v29 >= v28 >> 1)
        {
          sub_2427AC0AC((v28 > 1), v29 + 1, 1);
          v27 = v45;
        }

        *(v27 + 16) = v29 + 1;
        v30 = (*(v36 + 80) + 32) & ~*(v36 + 80);
        v40 = v27;
        result = sub_2427ACE6C(v26, v27 + v30 + *(v36 + 72) * v29);
        if (v39)
        {
          a1 = v35;
          if (!v22)
          {
            goto LABEL_28;
          }

          if (sub_2427B928C())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v8 = v33;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC08C8, &qword_2427BB0A0);
          v31 = sub_2427B8F7C();
          sub_2427B92FC();
          result = v31(v41, 0);
        }

        else
        {
          a1 = v35;
          sub_2427AC3C8(v21, v20, v22, v35);
          v14 = v13;
          v16 = v15;
          v18 = v17;
          result = sub_2427ACED0(v21, v20, v22);
          v42 = v14;
          v43 = v16;
          v44 = v18 & 1;
          v8 = v33;
        }

        ++v11;
        if (v19 == v8)
        {
          sub_2427ACED0(v42, v43, v44);
          return v40;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  return result;
}

uint64_t sub_2427ACE6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IntegrationEntry(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2427ACED0(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

void sub_2427ACEDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (a2)
  {

    sub_2427A32F0(a5, a6);
  }
}

uint64_t sub_2427ACF3C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

unint64_t sub_2427ACFA4()
{
  result = qword_27ECC08E8;
  if (!qword_27ECC08E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC08E8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_2427AD040(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 24))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 16) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 16) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_2427AD094(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
      *(result + 16) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

unint64_t sub_2427AD0F8()
{
  result = qword_27ECC0908;
  if (!qword_27ECC0908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC0908);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VersionTaggedData.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

unint64_t sub_2427AD1FC()
{
  result = qword_27ECC0920;
  if (!qword_27ECC0920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC0920);
  }

  return result;
}

unint64_t sub_2427AD254()
{
  result = qword_281349500;
  if (!qword_281349500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281349500);
  }

  return result;
}

unint64_t sub_2427AD2AC()
{
  result = qword_281349508;
  if (!qword_281349508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281349508);
  }

  return result;
}

uint64_t IntegrationEntry.init<A>(entry:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC08D8, &qword_2427BB0B0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v36 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC08E0, &qword_2427BB0B8);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v36 - v12;
  v14 = type metadata accessor for IntegrationEntry(0);
  v15 = v14[7];
  v16 = sub_2427B8DBC();
  (*(*(v16 - 8) + 56))(&a4[v15], 1, 1, v16);
  v17 = v14[12];
  v18 = type metadata accessor for IntegrationRecurrence(0);
  (*(*(v18 - 8) + 56))(&a4[v17], 1, 1, v18);
  v19 = &a4[v14[13]];
  *(v19 + 1) = 0u;
  *(v19 + 2) = 0u;
  *v19 = 0u;
  v20 = v14[15];
  v36 = &a4[v14[14]];
  v37 = &a4[v20];
  *a4 = (*(a3 + 8))(a2, a3);
  *(a4 + 1) = v21;
  (*(a3 + 16))(a2, a3);
  (*(a3 + 24))(a2, a3);
  (*(a3 + 32))(a2, a3);
  sub_2427ACF3C(v13, &a4[v15], &qword_27ECC08E0, &qword_2427BB0B8);
  v22 = (*(a3 + 40))(a2, a3);
  v23 = &a4[v14[8]];
  *v23 = v22;
  *(v23 + 1) = v24;
  a4[v14[9]] = (*(a3 + 48))(a2, a3) & 1;
  a4[v14[10]] = (*(a3 + 56))(a2, a3) & 1;
  (*(a3 + 72))(a2, a3);
  sub_2427ACF3C(v10, &a4[v17], &qword_27ECC08D8, &qword_2427BB0B0);
  *&a4[v14[11]] = (*(a3 + 64))(a2, a3);
  (*(a3 + 80))(v38, a2, a3);
  v25 = v39;
  v26 = v40;
  sub_2427ACEDC(*v19, *(v19 + 1), *(v19 + 2), *(v19 + 3), *(v19 + 4), *(v19 + 5));
  v27 = v38[1];
  *v19 = v38[0];
  *(v19 + 1) = v27;
  *(v19 + 4) = v25;
  *(v19 + 5) = v26;
  v28 = (*(a3 + 88))(a2, a3);
  v29 = v36;
  *v36 = v28;
  *(v29 + 1) = v30;
  v31 = (*(a3 + 96))(a2, a3);
  v33 = v32;
  result = (*(*(a2 - 8) + 8))(a1, a2);
  v35 = v37;
  *v37 = v31;
  *(v35 + 1) = v33;
  return result;
}

uint64_t IntegrationColor.init(providerIdentifier:colorIdentifier:data:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

CalendarIntegrationSupport::IntegrationColor::Identifier __swiftcall IntegrationColor.Identifier.init(providerIdentifier:colorIdentifier:)(Swift::String providerIdentifier, Swift::String colorIdentifier)
{
  *v2 = providerIdentifier;
  v2[1] = colorIdentifier;
  result.colorIdentifier = colorIdentifier;
  result.providerIdentifier = providerIdentifier;
  return result;
}

uint64_t IntegrationRecurrence.init(frequency:interval:recurrenceEnd:firstDayOfTheWeek:daysOfTheWeek:daysOfTheMonth:daysOfTheYear:weeksOfTheYear:monthsOfTheYear:setPositions:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v12 = *a1;
  v24 = *a4;
  v13 = type metadata accessor for IntegrationRecurrence(0);
  v14 = v13[6];
  v15 = type metadata accessor for IntegrationRecurrence.RecurrenceEnd(0);
  (*(*(v15 - 8) + 56))(a9 + v14, 1, 1, v15);
  v16 = v13[7];
  *(a9 + v16) = 7;
  v17 = v13[8];
  v18 = v13[9];
  v20 = v13[10];
  v19 = v13[11];
  v21 = v13[12];
  v22 = v13[13];
  result = sub_2427ACF3C(a3, a9 + v14, &qword_27ECC0890, &qword_2427BB3B0);
  *a9 = v12;
  *(a9 + 8) = a2;
  *(a9 + v16) = v24;
  *(a9 + v17) = a5;
  *(a9 + v18) = a6;
  *(a9 + v20) = a7;
  *(a9 + v19) = a8;
  *(a9 + v21) = a10;
  *(a9 + v22) = a11;
  return result;
}

uint64_t sub_2427AD890(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}