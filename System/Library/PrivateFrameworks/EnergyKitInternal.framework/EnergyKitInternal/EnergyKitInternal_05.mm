uint64_t static LoadEvent.reset(timestamp:deviceID:type:siteID:followingGuidance:guidanceID:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, char *a5@<X4>, int a6@<W5>, uint64_t a7@<X8>)
{
  v38 = a7;
  v39 = a6;
  v44 = a5;
  v40 = a4;
  v41 = a3;
  v42 = a2;
  v43 = a1;
  Event = type metadata accessor for LoadEvent(0);
  MEMORY[0x28223BE20](Event);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CCB8, &qword_20DF4AC48);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - v11;
  v13 = sub_20DF47564();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_20DF474E4();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = *v40;
  LODWORD(v40) = *(v40 + 8);
  (*(v18 + 16))(v20, v43, v17);
  v21 = *(v14 + 16);
  v43 = v16;
  v21(v16, v44, v13);
  v22 = *(v14 + 56);
  v44 = v12;
  v23 = v12;
  v24 = v41;
  v22(v23, 1, 1, v13);
  sub_20DF47554();
  *&v9[Event[16]] = 0x3FF0000000000000;
  v25 = v42;
  v26 = sub_20DF4407C(v42, v24);
  if (!v26 || (v39 & 1) != 0)
  {
    if (v26)
    {
      v34 = 1;
    }

    else
    {
      v34 = 5;
    }

    sub_20DEDD4D8();
    swift_allocError();
    *v35 = v34;
    swift_willThrow();
    v36 = *(v14 + 8);
    v36(v43, v13);
    (*(v18 + 8))(v20, v17);
    sub_20DED8730(v44, &qword_27C84CCB8, &qword_20DF4AC48);
    return (v36)(v9, v13);
  }

  else
  {
    (*(v18 + 32))(&v9[Event[5]], v20, v17);
    v27 = &v9[Event[6]];
    *v27 = 4;
    v27[8] = 1;
    *&v9[Event[7]] = 0;
    v28 = &v9[Event[8]];
    *v28 = v25;
    v28[1] = v24;
    v29 = &v9[Event[9]];
    *v29 = v37;
    v29[8] = v40;
    (*(v14 + 32))(&v9[Event[10]], v43, v13);
    v9[Event[11]] = 0;
    v30 = &v9[Event[13]];
    *v30 = 0;
    v30[8] = 0;
    v31 = &v9[Event[12]];
    *v31 = 0;
    v31[8] = 0;
    v32 = v44;
    sub_20DF40E2C(v44, &v9[Event[15]]);
    v9[Event[14]] = 1;
    sub_20DF41234(v9, v38);

    sub_20DED8730(v32, &qword_27C84CCB8, &qword_20DF4AC48);
    return sub_20DF41298(v9);
  }
}

uint64_t static LoadEvent.reset(timestamp:deviceID:type:siteID:followingGuidance:energyFlowDirection:guidanceID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, _BYTE *a5@<X4>, int a6@<W5>, unsigned __int8 *a7@<X6>, uint64_t a8@<X8>)
{
  v41 = a8;
  v46 = a2;
  v47 = a7;
  v42 = a6;
  v48 = a5;
  v43 = a4;
  v44 = a1;
  v45 = a3;
  Event = type metadata accessor for LoadEvent(0);
  MEMORY[0x28223BE20](Event);
  v10 = &v38[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CCB8, &qword_20DF4AC48);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v38[-v12];
  v14 = sub_20DF47564();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v38[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = sub_20DF474E4();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v38[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v40 = *v43;
  v39 = *(v43 + 8);
  LODWORD(v43) = *v47;
  (*(v19 + 16))(v21, v44, v18);
  v22 = *(v15 + 16);
  v47 = v17;
  v22(v17, v48, v14);
  v23 = *(v15 + 56);
  v48 = v13;
  v24 = v13;
  v25 = v45;
  v23(v24, 1, 1, v14);
  sub_20DF47554();
  *&v10[Event[16]] = 0x3FF0000000000000;
  v26 = v46;
  v27 = sub_20DF4407C(v46, v25);
  if (!v27 || (v42 & 1) != 0)
  {
    if (v27)
    {
      v35 = 1;
    }

    else
    {
      v35 = 5;
    }

    sub_20DEDD4D8();
    swift_allocError();
    *v36 = v35;
    swift_willThrow();
    v37 = *(v15 + 8);
    v37(v47, v14);
    (*(v19 + 8))(v21, v18);
    sub_20DED8730(v48, &qword_27C84CCB8, &qword_20DF4AC48);
    return (v37)(v10, v14);
  }

  else
  {
    (*(v19 + 32))(&v10[Event[5]], v21, v18);
    v28 = &v10[Event[6]];
    *v28 = 4;
    v28[8] = 1;
    *&v10[Event[7]] = 0;
    v29 = &v10[Event[8]];
    *v29 = v26;
    v29[1] = v25;
    v30 = &v10[Event[9]];
    *v30 = v40;
    v30[8] = v39;
    (*(v15 + 32))(&v10[Event[10]], v47, v14);
    v10[Event[11]] = 0;
    v31 = &v10[Event[13]];
    *v31 = 0;
    v31[8] = 0;
    v32 = &v10[Event[12]];
    *v32 = 0;
    v32[8] = 0;
    v33 = v48;
    sub_20DF40E2C(v48, &v10[Event[15]]);
    v10[Event[14]] = v43;
    sub_20DF41234(v10, v41);

    sub_20DED8730(v33, &qword_27C84CCB8, &qword_20DF4AC48);
    return sub_20DF41298(v10);
  }
}

uint64_t static LoadEvent.submit(events:)(uint64_t a1)
{
  v1[5] = a1;
  v2 = sub_20DF47BD4();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DF41FD4, 0, 0);
}

uint64_t sub_20DF41FD4()
{
  v17 = v0;
  if (qword_281122988[0] != -1)
  {
    swift_once();
  }

  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  v4 = __swift_project_value_buffer(v3, qword_281122F18);
  swift_beginAccess();
  (*(v2 + 16))(v1, v4, v3);

  v5 = sub_20DF47BB4();
  v6 = sub_20DF48004();
  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[7];
  v8 = v0[8];
  v11 = v0[5];
  v10 = v0[6];
  if (v7)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v16 = v13;
    *v12 = 136315394;
    *(v12 + 4) = sub_20DED38E8(0x652874696D627573, 0xEF293A73746E6576, &v16);
    *(v12 + 12) = 2048;
    *(v12 + 14) = *(v11 + 16);

    _os_log_impl(&dword_20DEAF000, v5, v6, "%s: %ld", v12, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x20F329700](v13, -1, -1);
    MEMORY[0x20F329700](v12, -1, -1);
  }

  else
  {
  }

  (*(v9 + 8))(v8, v10);

  v14 = v0[1];

  return v14();
}

uint64_t static LoadEvent.send(events:)(uint64_t a1)
{
  v2 = sub_20DF47BD4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281122988[0] != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v2, qword_281122F18);
  swift_beginAccess();
  (*(v3 + 16))(v5, v6, v2);

  v7 = sub_20DF47BB4();
  v8 = sub_20DF48004();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v12 = v10;
    *v9 = 136315394;
    *(v9 + 4) = sub_20DED38E8(0x65766528646E6573, 0xED0000293A73746ELL, &v12);
    *(v9 + 12) = 2048;
    *(v9 + 14) = *(a1 + 16);

    _os_log_impl(&dword_20DEAF000, v7, v8, "%s: %ld", v9, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x20F329700](v10, -1, -1);
    MEMORY[0x20F329700](v9, -1, -1);
  }

  else
  {
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_20DF42428()
{
  v0 = sub_20DF47374();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v10 - v6;
  __swift_allocate_value_buffer(v5, qword_27C851FC8);
  __swift_project_value_buffer(v0, qword_27C851FC8);
  sub_20DF47344();
  sub_20DF47334();
  sub_20DF47354();
  v8 = *(v1 + 8);
  v8(v4, v0);
  return (v8)(v7, v0);
}

uint64_t sub_20DF42564(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = 0;
    v16 = a2 & 0xFFFFFFFFFFFFFFLL;
    v14 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    while (1)
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        sub_20DF48144();
        v9 = v8;
      }

      else
      {
        if ((a2 & 0x2000000000000000) != 0)
        {
          v15[0] = a1;
          v15[1] = v16;
          v7 = v15 + v5;
        }

        else
        {
          v6 = v14;
          if ((a1 & 0x1000000000000000) == 0)
          {
            v6 = sub_20DF481A4();
          }

          v7 = (v6 + v5);
        }

        if ((*v7 & 0x80000000) == 0)
        {
          goto LABEL_14;
        }

        v12 = (__clz(*v7 ^ 0xFF) - 24);
        if (v12 > 2)
        {
          if (v12 == 3)
          {
            v9 = 3;
          }

          else
          {
            v9 = 4;
          }

          goto LABEL_15;
        }

        if (v12 == 1)
        {
LABEL_14:
          v9 = 1;
        }

        else
        {
          v9 = 2;
        }
      }

LABEL_15:
      if (qword_27C84C758 != -1)
      {
        swift_once();
      }

      v10 = sub_20DF47374();
      __swift_project_value_buffer(v10, qword_27C851FC8);
      v11 = sub_20DF47364();
      if (v11)
      {
        v5 += v9;
        if (v5 < v2)
        {
          continue;
        }
      }

      return v11 & 1;
    }
  }

  v11 = 1;
  return v11 & 1;
}

uint64_t sub_20DF42744(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  sub_20DF47D64();
  return sub_20DF47DA4();
}

unint64_t sub_20DF427C8(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x6D617473656D6974;
      break;
    case 2:
      result = 0x6574617473;
      break;
    case 3:
      result = 0x6C6576656CLL;
      break;
    case 4:
      result = 0x4449656369766564;
      break;
    case 5:
      result = 1701869940;
      break;
    case 6:
      result = 0x444965746973;
      break;
    case 7:
      result = 0xD000000000000011;
      break;
    case 8:
      result = 0x7265776F70;
      break;
    case 9:
      result = 0x796772656E65;
      break;
    case 10:
      result = 0xD000000000000013;
      break;
    case 11:
      result = 0x65636E6164697567;
      break;
    case 12:
      result = 0x6E6F6973726576;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_20DF42918@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_20DF45658(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_20DF4294C(uint64_t a1)
{
  v2 = sub_20DF44288();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20DF42988(uint64_t a1)
{
  v2 = sub_20DF44288();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LoadEvent.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D240, &qword_20DF4C208);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20DF44288();
  sub_20DF484F4();
  LOBYTE(v17) = 0;
  sub_20DF47564();
  sub_20DF45A68(&qword_27C84C820, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
  sub_20DF48384();
  if (!v2)
  {
    Event = type metadata accessor for LoadEvent(0);
    LOBYTE(v17) = 1;
    sub_20DF474E4();
    sub_20DF45A68(&qword_27C84CC50, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
    sub_20DF48384();
    v9 = Event;
    v10 = (v3 + *(Event + 24));
    v11 = *v10;
    LOBYTE(v10) = *(v10 + 8);
    v17 = v11;
    v18 = v10;
    v19 = 2;
    sub_20DF442DC();
    sub_20DF48384();
    LOBYTE(v17) = 3;
    sub_20DF48394();
    LOBYTE(v17) = 4;
    sub_20DF48344();
    v12 = (v3 + *(v9 + 36));
    v13 = *v12;
    LOBYTE(v12) = *(v12 + 8);
    v17 = v13;
    v18 = v12;
    v19 = 5;
    sub_20DF44330();
    sub_20DF48384();
    LOBYTE(v17) = 6;
    sub_20DF48384();
    LOBYTE(v17) = 7;
    sub_20DF48354();
    LOBYTE(v17) = 8;
    sub_20DF48324();
    LOBYTE(v17) = 9;
    sub_20DF48324();
    LOBYTE(v17) = *(v3 + *(v9 + 56));
    v19 = 10;
    sub_20DF44384();
    sub_20DF48384();
    LOBYTE(v17) = 11;
    sub_20DF48334();
    LOBYTE(v17) = 12;
    sub_20DF48364();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t LoadEvent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CCB8, &qword_20DF4AC48);
  MEMORY[0x28223BE20](v4 - 8);
  v47 = &v44 - v5;
  v6 = sub_20DF474E4();
  v50 = *(v6 - 8);
  v51 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20DF47564();
  v55 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v44 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D268, &qword_20DF4C210);
  v48 = *(v15 - 8);
  v49 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = &v44 - v16;
  Event = type metadata accessor for LoadEvent(0);
  MEMORY[0x28223BE20](Event);
  v54 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20DF47554();
  v19 = a1[3];
  v53 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_20DF44288();
  v52 = v17;
  sub_20DF484E4();
  if (v2)
  {
    v20 = v54;
    __swift_destroy_boxed_opaque_existential_1(v53);
    return (*(v55 + 8))(v20, v9);
  }

  else
  {
    v45 = v12;
    LOBYTE(v58) = 0;
    sub_20DF45A68(&qword_27C84C870, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
    sub_20DF482E4();
    v21 = v54;
    (*(v55 + 40))(v54, v14, v9);
    LOBYTE(v58) = 1;
    sub_20DF45A68(&qword_27C84CC70, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
    v22 = v51;
    sub_20DF482E4();
    v23 = v9;
    v24 = Event;
    (*(v50 + 32))(&v21[Event[5]], v8, v22);
    v57 = 2;
    sub_20DF443D8();
    sub_20DF482E4();
    v25 = v59;
    v26 = &v21[v24[6]];
    *v26 = v58;
    v26[8] = v25;
    LOBYTE(v58) = 3;
    *&v21[v24[7]] = sub_20DF482F4();
    LOBYTE(v58) = 4;
    v27 = sub_20DF482A4();
    v28 = &v21[v24[8]];
    *v28 = v27;
    v28[1] = v29;
    v57 = 5;
    sub_20DF4442C();
    sub_20DF482E4();
    v30 = v59;
    v31 = &v21[v24[9]];
    *v31 = v58;
    v31[8] = v30;
    LOBYTE(v58) = 6;
    v32 = v45;
    sub_20DF482E4();
    (*(v55 + 32))(&v21[v24[10]], v32, v23);
    LOBYTE(v58) = 7;
    v21[v24[11]] = sub_20DF482B4() & 1;
    LOBYTE(v58) = 8;
    v33 = sub_20DF48284();
    v34 = &v21[Event[12]];
    *v34 = v33;
    v34[8] = v35 & 1;
    LOBYTE(v58) = 9;
    v36 = sub_20DF48284();
    v37 = &v54[Event[13]];
    *v37 = v36;
    v37[8] = v38 & 1;
    v57 = 10;
    sub_20DF44480();
    sub_20DF482E4();
    v54[Event[14]] = v58;
    LOBYTE(v58) = 11;
    sub_20DF48294();
    sub_20DF444D4(v47, &v54[Event[15]]);
    LOBYTE(v58) = 12;
    sub_20DF482C4();
    v40 = v39;
    v41 = Event[16];
    (*(v48 + 8))(v52, v49);
    v42 = v54;
    *&v54[v41] = v40;
    sub_20DF41234(v42, v46);
    __swift_destroy_boxed_opaque_existential_1(v53);
    return sub_20DF41298(v42);
  }
}

uint64_t sub_20DF437A4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_20DF47564();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

BOOL _s17EnergyKitInternal9LoadEventV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_20DF47564();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CCB8, &qword_20DF4AC48);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v43 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84D3A0, &unk_20DF4CF80);
  MEMORY[0x28223BE20](v11);
  v13 = &v43 - v12;
  if ((sub_20DF47534() & 1) == 0)
  {
    return 0;
  }

  Event = type metadata accessor for LoadEvent(0);
  if ((sub_20DF474A4() & 1) == 0)
  {
    return 0;
  }

  v15 = Event[6];
  v16 = *(a1 + v15);
  v17 = a2 + v15;
  v18 = *(a2 + v15);
  if (*(v17 + 8) == 1)
  {
    if (v18 <= 1)
    {
      if (v18)
      {
        if (v16 != 1)
        {
          return 0;
        }
      }

      else if (v16)
      {
        return 0;
      }
    }

    else if (v18 == 2)
    {
      if (v16 != 2)
      {
        return 0;
      }
    }

    else if (v18 == 3)
    {
      if (v16 != 3)
      {
        return 0;
      }
    }

    else if (v16 != 4)
    {
      return 0;
    }
  }

  else if (v16 != v18)
  {
    return 0;
  }

  if (*(a1 + Event[7]) != *(a2 + Event[7]))
  {
    return 0;
  }

  v19 = Event[8];
  v20 = *(a1 + v19);
  v21 = *(a1 + v19 + 8);
  v22 = (a2 + v19);
  if ((v20 != *v22 || v21 != v22[1]) && (sub_20DF483D4() & 1) == 0)
  {
    return 0;
  }

  v23 = Event[9];
  v24 = *(a1 + v23);
  v25 = a2 + v23;
  v26 = *(a2 + v23);
  if (*(v25 + 8) == 1)
  {
    if (v26)
    {
      if (v26 == 1)
      {
        if (v24 != 1)
        {
          return 0;
        }
      }

      else if (v24 != 2)
      {
        return 0;
      }
    }

    else if (v24)
    {
      return 0;
    }
  }

  else if (v24 != v26)
  {
    return 0;
  }

  if ((sub_20DF47534() & 1) == 0 || *(a1 + Event[11]) != *(a2 + Event[11]))
  {
    return 0;
  }

  v28 = Event[12];
  v29 = (a1 + v28);
  v30 = *(a1 + v28 + 8);
  v31 = (a2 + v28);
  v32 = *(a2 + v28 + 8);
  if (v30)
  {
    if (!v32)
    {
      return 0;
    }
  }

  else
  {
    if (*v29 != *v31)
    {
      LOBYTE(v32) = 1;
    }

    if (v32)
    {
      return 0;
    }
  }

  v33 = Event[13];
  v34 = (a1 + v33);
  v35 = *(a1 + v33 + 8);
  v36 = (a2 + v33);
  v37 = *(a2 + v33 + 8);
  if (v35)
  {
    if (!v37)
    {
      return 0;
    }
  }

  else
  {
    if (*v34 != *v36)
    {
      LOBYTE(v37) = 1;
    }

    if (v37)
    {
      return 0;
    }
  }

  if (*(a1 + Event[14]) != *(a2 + Event[14]))
  {
    return 0;
  }

  v38 = Event[15];
  v39 = *(v11 + 48);
  sub_20DF40E2C(a1 + v38, v13);
  v44 = v39;
  sub_20DF40E2C(a2 + v38, &v13[v39]);
  v40 = *(v5 + 48);
  if (v40(v13, 1, v4) != 1)
  {
    sub_20DF40E2C(v13, v10);
    if (v40(&v13[v44], 1, v4) == 1)
    {
      (*(v5 + 8))(v10, v4);
      goto LABEL_54;
    }

    (*(v5 + 32))(v7, &v13[v44], v4);
    sub_20DF45A68(&qword_27C84D3A8, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
    v41 = sub_20DF47CF4();
    v42 = *(v5 + 8);
    v42(v7, v4);
    v42(v10, v4);
    sub_20DED8730(v13, &qword_27C84CCB8, &qword_20DF4AC48);
    if (v41)
    {
      return *(a1 + Event[16]) == *(a2 + Event[16]);
    }

    return 0;
  }

  if (v40(&v13[v44], 1, v4) != 1)
  {
LABEL_54:
    sub_20DED8730(v13, &qword_27C84D3A0, &unk_20DF4CF80);
    return 0;
  }

  sub_20DED8730(v13, &qword_27C84CCB8, &qword_20DF4AC48);
  return *(a1 + Event[16]) == *(a2 + Event[16]);
}

uint64_t sub_20DF43D14(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 6710895 && a2 == 0xE300000000000000;
  if (v3 || (sub_20DF483D4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 28271 && a2 == 0xE200000000000000 || (sub_20DF483D4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656767756C706E75 && a2 == 0xE900000000000064 || (sub_20DF483D4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x64656767756C70 && a2 == 0xE700000000000000 || (sub_20DF483D4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7465736572 && a2 == 0xE500000000000000 || (sub_20DF483D4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x4E474F4345524E55 && a2 == 0xEC00000044455A49)
  {

    return 5;
  }

  else
  {
    v6 = sub_20DF483D4();

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

uint64_t sub_20DF43F10(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726568746FLL && a2 == 0xE500000000000000;
  if (v4 || (sub_20DF483D4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1667331688 && a2 == 0xE400000000000000 || (sub_20DF483D4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6369727463656C65 && a2 == 0xEF656C6369686556 || (sub_20DF483D4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4E474F4345524E55 && a2 == 0xEC00000044455A49)
  {

    return 3;
  }

  else
  {
    v6 = sub_20DF483D4();

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

BOOL sub_20DF4407C(uint64_t a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CCB8, &qword_20DF4AC48);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16 - v5;
  sub_20DF47504();
  v7 = sub_20DF47564();
  v8 = 1;
  v9 = (*(*(v7 - 8) + 48))(v6, 1, v7);
  sub_20DED8730(v6, &qword_27C84CCB8, &qword_20DF4AC48);
  if (v9 == 1)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v10 = HIBYTE(a2) & 0xF;
    }

    else
    {
      v10 = a1 & 0xFFFFFFFFFFFFLL;
    }

    if (!v10)
    {
      return 0;
    }

    if ((a2 & 0x1000000000000000) != 0)
    {
      if (sub_20DF47D94() > 63)
      {
        return 0;
      }
    }

    else if (v10 > 63)
    {
      return 0;
    }

    if ((sub_20DF42564(a1, a2) & 1) == 0)
    {
      return 0;
    }

    sub_20DF3E204(a1, a2);
    if (!v11)
    {
      return 0;
    }

    sub_20DF42744(a1, a2);
    if (v12)
    {
      if (sub_20DF47CB4())
      {

LABEL_14:
        if (sub_20DF47CB4())
        {

          return 1;
        }

        v14 = sub_20DF47CC4();

        return (v14 & 1) != 0;
      }

      v13 = sub_20DF47CC4();

      if (v13)
      {
        goto LABEL_14;
      }
    }

    return 0;
  }

  return v8;
}

unint64_t sub_20DF44288()
{
  result = qword_27C84D248;
  if (!qword_27C84D248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84D248);
  }

  return result;
}

unint64_t sub_20DF442DC()
{
  result = qword_27C84D250;
  if (!qword_27C84D250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84D250);
  }

  return result;
}

unint64_t sub_20DF44330()
{
  result = qword_27C84D258;
  if (!qword_27C84D258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84D258);
  }

  return result;
}

unint64_t sub_20DF44384()
{
  result = qword_27C84D260;
  if (!qword_27C84D260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84D260);
  }

  return result;
}

unint64_t sub_20DF443D8()
{
  result = qword_27C84D270;
  if (!qword_27C84D270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84D270);
  }

  return result;
}

unint64_t sub_20DF4442C()
{
  result = qword_27C84D278;
  if (!qword_27C84D278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84D278);
  }

  return result;
}

unint64_t sub_20DF44480()
{
  result = qword_27C84D280;
  if (!qword_27C84D280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84D280);
  }

  return result;
}

uint64_t sub_20DF444D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C84CCB8, &qword_20DF4AC48);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_20DF445D4(uint64_t a1)
{
  sub_20DF47564();
  if (v1 <= 0x3F)
  {
    sub_20DF474E4();
    if (v2 <= 0x3F)
    {
      sub_20DF446E0();
      if (v3 <= 0x3F)
      {
        sub_20DF44730(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_20DF446E0()
{
  if (!qword_27C84D298)
  {
    v0 = sub_20DF48064();
    if (!v1)
    {
      atomic_store(v0, &qword_27C84D298);
    }
  }
}

void sub_20DF44730(uint64_t a1)
{
  if (!qword_27C84D2A0)
  {
    sub_20DF47564();
    v1 = sub_20DF48064();
    if (!v2)
    {
      atomic_store(v1, &qword_27C84D2A0);
    }
  }
}

uint64_t getEnumTagSinglePayload for LoadEvent.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LoadEvent.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LoadDeviceType.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for LoadDeviceType.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_20DF44AD4(unsigned int *a1, int a2)
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

_WORD *sub_20DF44B24(_WORD *result, int a2, int a3)
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

unint64_t sub_20DF44BB4()
{
  result = qword_27C84D2A8;
  if (!qword_27C84D2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84D2A8);
  }

  return result;
}

unint64_t sub_20DF44C0C()
{
  result = qword_27C84D2B0;
  if (!qword_27C84D2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84D2B0);
  }

  return result;
}

unint64_t sub_20DF44C64()
{
  result = qword_27C84D2B8;
  if (!qword_27C84D2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84D2B8);
  }

  return result;
}

unint64_t sub_20DF44CBC()
{
  result = qword_27C84D2C0;
  if (!qword_27C84D2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84D2C0);
  }

  return result;
}

unint64_t sub_20DF44D14()
{
  result = qword_27C84D2C8;
  if (!qword_27C84D2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84D2C8);
  }

  return result;
}

unint64_t sub_20DF44D6C()
{
  result = qword_27C84D2D0;
  if (!qword_27C84D2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84D2D0);
  }

  return result;
}

unint64_t sub_20DF44DC4()
{
  result = qword_27C84D2D8;
  if (!qword_27C84D2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84D2D8);
  }

  return result;
}

unint64_t sub_20DF44E1C()
{
  result = qword_27C84D2E0;
  if (!qword_27C84D2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84D2E0);
  }

  return result;
}

unint64_t sub_20DF44E74()
{
  result = qword_27C84D2E8;
  if (!qword_27C84D2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84D2E8);
  }

  return result;
}

unint64_t sub_20DF44ECC()
{
  result = qword_27C84D2F0;
  if (!qword_27C84D2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84D2F0);
  }

  return result;
}

unint64_t sub_20DF44F24()
{
  result = qword_27C84D2F8;
  if (!qword_27C84D2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84D2F8);
  }

  return result;
}

unint64_t sub_20DF44F7C()
{
  result = qword_27C84D300;
  if (!qword_27C84D300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84D300);
  }

  return result;
}

unint64_t sub_20DF44FD4()
{
  result = qword_27C84D308;
  if (!qword_27C84D308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84D308);
  }

  return result;
}

unint64_t sub_20DF4502C()
{
  result = qword_27C84D310;
  if (!qword_27C84D310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84D310);
  }

  return result;
}

unint64_t sub_20DF45084()
{
  result = qword_27C84D318;
  if (!qword_27C84D318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84D318);
  }

  return result;
}

unint64_t sub_20DF450DC()
{
  result = qword_27C84D320;
  if (!qword_27C84D320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84D320);
  }

  return result;
}

unint64_t sub_20DF45134()
{
  result = qword_27C84D328;
  if (!qword_27C84D328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84D328);
  }

  return result;
}

unint64_t sub_20DF4518C()
{
  result = qword_27C84D330;
  if (!qword_27C84D330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84D330);
  }

  return result;
}

unint64_t sub_20DF451E4()
{
  result = qword_27C84D338;
  if (!qword_27C84D338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84D338);
  }

  return result;
}

unint64_t sub_20DF4523C()
{
  result = qword_27C84D340;
  if (!qword_27C84D340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84D340);
  }

  return result;
}

unint64_t sub_20DF45294()
{
  result = qword_27C84D348;
  if (!qword_27C84D348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84D348);
  }

  return result;
}

unint64_t sub_20DF452EC()
{
  result = qword_27C84D350;
  if (!qword_27C84D350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84D350);
  }

  return result;
}

unint64_t sub_20DF45344()
{
  result = qword_27C84D358;
  if (!qword_27C84D358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84D358);
  }

  return result;
}

unint64_t sub_20DF4539C()
{
  result = qword_27C84D360;
  if (!qword_27C84D360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84D360);
  }

  return result;
}

unint64_t sub_20DF453F4()
{
  result = qword_27C84D368;
  if (!qword_27C84D368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84D368);
  }

  return result;
}

unint64_t sub_20DF4544C()
{
  result = qword_27C84D370;
  if (!qword_27C84D370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84D370);
  }

  return result;
}

unint64_t sub_20DF454A4()
{
  result = qword_27C84D378;
  if (!qword_27C84D378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84D378);
  }

  return result;
}

unint64_t sub_20DF454FC()
{
  result = qword_27C84D380;
  if (!qword_27C84D380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84D380);
  }

  return result;
}

unint64_t sub_20DF45554()
{
  result = qword_27C84D388;
  if (!qword_27C84D388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84D388);
  }

  return result;
}

unint64_t sub_20DF455AC()
{
  result = qword_27C84D390;
  if (!qword_27C84D390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84D390);
  }

  return result;
}

unint64_t sub_20DF45604()
{
  result = qword_27C84D398;
  if (!qword_27C84D398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84D398);
  }

  return result;
}

uint64_t sub_20DF45658(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_20DF483D4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070 || (sub_20DF483D4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000 || (sub_20DF483D4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C6576656CLL && a2 == 0xE500000000000000 || (sub_20DF483D4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4449656369766564 && a2 == 0xE800000000000000 || (sub_20DF483D4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_20DF483D4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x444965746973 && a2 == 0xE600000000000000 || (sub_20DF483D4() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000011 && 0x800000020DF503F0 == a2 || (sub_20DF483D4() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x7265776F70 && a2 == 0xE500000000000000 || (sub_20DF483D4() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x796772656E65 && a2 == 0xE600000000000000 || (sub_20DF483D4() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000013 && 0x800000020DF50410 == a2 || (sub_20DF483D4() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x65636E6164697567 && a2 == 0xEA00000000004449 || (sub_20DF483D4() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000)
  {

    return 12;
  }

  else
  {
    v6 = sub_20DF483D4();

    if (v6)
    {
      return 12;
    }

    else
    {
      return 13;
    }
  }
}

uint64_t sub_20DF45A68(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t HomeEnergyError.description.getter()
{
  result = 0x206E776F6E6B6E55;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      result = 0xD000000000000014;
      break;
    case 3:
      result = 0xD00000000000001ELL;
      break;
    case 4:
      result = 0xD000000000000018;
      break;
    case 5:
      result = 0xD000000000000020;
      break;
    case 6:
      result = 0xD000000000000021;
      break;
    case 7:
    case 0xE:
      result = 0xD000000000000019;
      break;
    case 8:
      result = 0x6C706D6920746F4ELL;
      break;
    case 9:
      result = 0x69746E6520746F4ELL;
      break;
    case 0xA:
      result = 0x746F6E2065746953;
      break;
    case 0xB:
      result = 0x6E6F697461636F4CLL;
      break;
    case 0xC:
      result = 0xD000000000000017;
      break;
    case 0xD:
      result = 0x74694B64756F6C43;
      break;
    case 0xF:
      result = 0xD000000000000023;
      break;
    case 0x10:
    case 0x15:
      result = 0xD00000000000001BLL;
      break;
    case 0x11:
    case 0x1E:
      result = 0xD00000000000001CLL;
      break;
    case 0x12:
      result = 0xD000000000000018;
      break;
    case 0x13:
      result = 0xD000000000000018;
      break;
    case 0x14:
      result = 0xD000000000000013;
      break;
    case 0x16:
      result = 0x20656E6F5A204B43;
      break;
    case 0x17:
      result = 0xD00000000000001ALL;
      break;
    case 0x18:
      result = 0xD00000000000002ALL;
      break;
    case 0x19:
      result = 0xD00000000000001DLL;
      break;
    case 0x1A:
      result = 0xD000000000000029;
      break;
    case 0x1B:
      result = 0xD000000000000010;
      break;
    case 0x1C:
      result = 0x6920444965746953;
      break;
    case 0x1D:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

EnergyKitInternal::HomeEnergyError_optional __swiftcall HomeEnergyError.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 0;
  v3 = 13;
  switch(rawValue)
  {
    case 0:
      goto LABEL_25;
    case 1:
      v2 = 1;
      goto LABEL_25;
    case 2:
      v2 = 2;
      goto LABEL_25;
    case 3:
      v2 = 3;
      goto LABEL_25;
    case 4:
      v2 = 4;
      goto LABEL_25;
    case 5:
      v2 = 5;
      goto LABEL_25;
    case 6:
      v2 = 6;
      goto LABEL_25;
    case 7:
      v2 = 7;
      goto LABEL_25;
    case 8:
      v2 = 8;
      goto LABEL_25;
    case 9:
      v2 = 9;
      goto LABEL_25;
    case 10:
      v2 = 10;
      goto LABEL_25;
    case 11:
      v2 = 11;
      goto LABEL_25;
    case 12:
      v2 = 12;
LABEL_25:
      v3 = v2;
      goto LABEL_26;
    case 13:
LABEL_26:
      *v1 = v3;
      break;
    case 14:
      *v1 = 14;
      break;
    case 15:
      *v1 = 15;
      break;
    case 16:
      *v1 = 16;
      break;
    case 17:
      *v1 = 17;
      break;
    case 18:
      *v1 = 18;
      break;
    case 19:
      *v1 = 19;
      break;
    case 20:
      *v1 = 20;
      break;
    case 21:
      *v1 = 21;
      break;
    case 22:
      *v1 = 22;
      break;
    case 23:
      *v1 = 23;
      break;
    case 24:
      *v1 = 24;
      break;
    case 25:
      *v1 = 25;
      break;
    case 26:
      *v1 = 26;
      break;
    case 27:
      *v1 = 27;
      break;
    case 28:
      *v1 = 28;
      break;
    case 29:
      *v1 = 29;
      break;
    case 30:
      *v1 = 30;
      break;
    default:
      *v1 = 31;
      break;
  }

  return rawValue;
}

unint64_t sub_20DF46040()
{
  result = qword_27C84D3B0;
  if (!qword_27C84D3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C84D3B0);
  }

  return result;
}

uint64_t sub_20DF4609C(uint64_t a1, uint64_t a2)
{
  v4 = sub_20DF46248();
  v5 = sub_20DF4629C();

  return MEMORY[0x2821FE2D0](a1, a2, v4, v5);
}

uint64_t getEnumTagSinglePayload for HomeEnergyError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE2)
  {
    goto LABEL_17;
  }

  if (a2 + 30 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 30) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 30;
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

      return (*a1 | (v4 << 8)) - 30;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 30;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1F;
  v8 = v6 - 31;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HomeEnergyError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 30 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 30) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE2)
  {
    v4 = 0;
  }

  if (a2 > 0xE1)
  {
    v5 = ((a2 - 226) >> 8) + 1;
    *result = a2 + 30;
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
    *result = a2 + 30;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_20DF46248()
{
  result = qword_281122968;
  if (!qword_281122968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281122968);
  }

  return result;
}

unint64_t sub_20DF4629C()
{
  result = qword_2811225A0;
  if (!qword_2811225A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811225A0);
  }

  return result;
}

uint64_t EnergyDevice.identifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_20DF46320(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 32) = v3;
  *(v4 + 40) = v2;
}

uint64_t sub_20DF46380()
{
  swift_beginAccess();
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_20DF463CC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

uint64_t sub_20DF46470(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 48) = v3;
  *(v4 + 56) = v2;
}

uint64_t sub_20DF464D0()
{
  swift_beginAccess();
  v1 = *(v0 + 48);

  return v1;
}

uint64_t sub_20DF4651C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
}

uint64_t static EnergyDevice.allDevices.getter()
{
  if (qword_27C84C760 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t EnergyDevice.__allocating_init(identifier:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_20DEBBAA8;

  return sub_20DF46CB4(a1, a2);
}

uint64_t EnergyDevice.__allocating_init(clientProvidedId:)(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = sub_20DF47564();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DF467C0, 0, 0);
}

uint64_t sub_20DF467C0()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  sub_20DF47A24();
  sub_20DF47914();
  sub_20DF474F4();
  v4 = sub_20DF47514();
  v6 = v5;
  (*(v2 + 8))(v1, v3);
  if (qword_27C84C760 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (*(off_27C84D3B8 + 2))
  {
    sub_20DEEFAE0(v4, v6);
  }

  swift_endAccess();

  v7 = v0[1];

  return v7(0);
}

uint64_t static EnergyDevice.register(name:site:properties:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[16] = a3;
  v4[17] = a4;
  v4[14] = a1;
  v4[15] = a2;
  v5 = sub_20DF47564();
  v4[18] = v5;
  v4[19] = *(v5 - 8);
  v4[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DF469CC, 0, 0);
}

uint64_t sub_20DF469CC(uint64_t a1)
{
  if (*(v1[17] + 16) && (v2 = sub_20DEEFAE0(0xD000000000000010, 0x800000020DF506F0), (v3 & 1) != 0) && (sub_20DEBA2EC(*(v1[17] + 56) + 32 * v2, (v1 + 2)), (swift_dynamicCast() & 1) != 0))
  {
    sub_20DF47A24();
    sub_20DF47914();
    sub_20DF474F4();
  }

  else
  {
    sub_20DF47554();
  }

  v5 = v1[19];
  v4 = v1[20];
  v6 = v1[18];
  v7 = v1[15];
  v8 = v1[16];
  v9 = v1[14];
  v10 = sub_20DF47514();
  v12 = v11;
  (*(v5 + 8))(v4, v6);
  v13 = *(v8 + 16);

  v14 = sub_20DF479B4();
  v16 = v15;

  type metadata accessor for EnergyDevice();
  v17 = swift_allocObject();
  v17[7] = 0;
  v17[6] = 0;
  v17[2] = v10;
  v17[3] = v12;
  v17[4] = v9;
  v17[5] = v7;
  swift_beginAccess();
  v17[6] = v14;
  v17[7] = v16;
  v18 = qword_27C84C760;

  if (v18 != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22 = off_27C84D3B8;
  off_27C84D3B8 = 0x8000000000000000;
  sub_20DF0ED04(v17, v10, v12, isUniquelyReferenced_nonNull_native);

  off_27C84D3B8 = v22;
  swift_endAccess();

  v20 = v1[1];

  return v20(v17);
}

void *EnergyDevice.deinit()
{

  return v0;
}

uint64_t EnergyDevice.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

uint64_t sub_20DF46CB4(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x2822009F8](sub_20DF46CD4, 0, 0);
}

uint64_t sub_20DF46CD4()
{
  if (qword_27C84C760 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (*(off_27C84D3B8 + 2))
  {
    sub_20DEEFAE0(v0[5], v0[6]);
  }

  swift_endAccess();

  v1 = v0[1];

  return v1(0);
}

uint64_t dispatch thunk of EnergyDevice.suspend()()
{
  v4 = (*(*v0 + 160) + **(*v0 + 160));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_20DEDA9C0;

  return v4();
}

uint64_t dispatch thunk of EnergyDevice.resume()()
{
  v4 = (*(*v0 + 168) + **(*v0 + 168));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_20DEDA9C0;

  return v4();
}

uint64_t dispatch thunk of EnergyDevice.sendLoadUpdate(update:)(uint64_t a1)
{
  v6 = (*(*v1 + 176) + **(*v1 + 176));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_20DEDA9C0;

  return v6(a1);
}

uint64_t dispatch thunk of EnergyDevice.unregister()()
{
  v4 = (*(*v0 + 184) + **(*v0 + 184));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_20DEBA16C;

  return v4();
}