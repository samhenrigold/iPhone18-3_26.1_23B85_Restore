uint64_t sub_1B0BF0A30(uint64_t a1, unint64_t a2, int a3, uint64_t a4, void (*a5)(unint64_t, uint64_t, uint64_t, uint64_t, double), uint64_t a6, void (*a7)(uint64_t, uint64_t, uint64_t), uint64_t a8)
{
  v46 = a6;
  v9 = v8;
  v41[1] = a8;
  v42 = a7;
  v44 = a2;
  v45 = a5;
  v43 = a3;
  v12 = _s6LoggerVMa_0(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v41 - v16;
  v18 = type metadata accessor for ConnectionState(0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for UnauthenticatedStateWithTasks(0);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = v41 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B038CA0C(v9, v20, type metadata accessor for ConnectionState);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B04478FC(v20, v23, type metadata accessor for UnauthenticatedStateWithTasks);
    v24 = v47;
    v25 = sub_1B0C3A99C(a1, v44, v43 & 1, v45, v46, a4);
    if (!v24)
    {
      v28 = v27;
      v29 = v26;
      v30 = v25;
      sub_1B038C704(v9, type metadata accessor for ConnectionState);
      sub_1B038CA0C(v23, v9, type metadata accessor for UnauthenticatedStateWithTasks);
      swift_storeEnumTagMultiPayload();
      if (v28 != -1)
      {
        v42(v30, v29, v28 & 1);
        sub_1B0BF6ED4(v30, v29, v28);
      }
    }

    return sub_1B038C704(v23, type metadata accessor for UnauthenticatedStateWithTasks);
  }

  else
  {
    sub_1B038C704(v20, type metadata accessor for ConnectionState);
    sub_1B038CA0C(a4, v17, _s6LoggerVMa_0);
    sub_1B038CA0C(a4, v14, _s6LoggerVMa_0);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v32 = sub_1B0E43988();
    v33 = sub_1B0E458E8();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v48 = v35;
      *v34 = 0x204100302;
      *(v34 + 8) = 256;
      v36 = v14[*(v12 + 20)];
      sub_1B038C704(v14, _s6LoggerVMa_0);
      *(v34 + 10) = v36;
      *(v34 + 11) = 2082;
      v37 = *&v17[*(v12 + 20) + 4];
      sub_1B038C704(v17, _s6LoggerVMa_0);
      v38 = ConnectionID.debugDescription.getter(v37);
      v40 = sub_1B0399D64(v38, v39, &v48);

      *(v34 + 13) = v40;
      _os_log_impl(&dword_1B0389000, v32, v33, "[%.*hhx-%{public}s] Received HandshakeQuery, but not in unauthenticated state.", v34, 0x15u);
      __swift_destroy_boxed_opaque_existential_0(v35);
      MEMORY[0x1B272C230](v35, -1, -1);
      MEMORY[0x1B272C230](v34, -1, -1);
    }

    else
    {
      sub_1B038C704(v14, _s6LoggerVMa_0);

      sub_1B038C704(v17, _s6LoggerVMa_0);
    }

    sub_1B0BF6E80();
    swift_allocError();
    return swift_willThrow();
  }
}

uint64_t sub_1B0BF0E90(unint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v6 = _s6LoggerVMa_0(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v28 - v10;
  v12 = type metadata accessor for ConnectionState(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for UnauthenticatedStateWithTasks(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B04478FC(v3, v14, type metadata accessor for ConnectionState);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B04478FC(v14, v17, type metadata accessor for UnauthenticatedStateWithTasks);
    sub_1B0C3ABE0(a1, a2);
    sub_1B04478FC(v17, v3, type metadata accessor for UnauthenticatedStateWithTasks);
  }

  else
  {
    sub_1B038C704(v14, type metadata accessor for ConnectionState);
    sub_1B038CA0C(a2, v11, _s6LoggerVMa_0);
    sub_1B038CA0C(a2, v8, _s6LoggerVMa_0);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v18 = sub_1B0E43988();
    v19 = sub_1B0E458E8();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v30 = v29;
      *v20 = 0x204100302;
      *(v20 + 8) = 256;
      v21 = v8[*(v6 + 20)];
      sub_1B038C704(v8, _s6LoggerVMa_0);
      *(v20 + 10) = v21;
      *(v20 + 11) = 2082;
      v22 = *&v11[*(v6 + 20) + 4];
      sub_1B038C704(v11, _s6LoggerVMa_0);
      v23 = ConnectionID.debugDescription.getter(v22);
      v25 = sub_1B0399D64(v23, v24, &v30);

      *(v20 + 13) = v25;
      _os_log_impl(&dword_1B0389000, v18, v19, "[%.*hhx-%{public}s] Received did-start-TLS, but not in unauthenticated state.", v20, 0x15u);
      v26 = v29;
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x1B272C230](v26, -1, -1);
      MEMORY[0x1B272C230](v20, -1, -1);
    }

    else
    {
      sub_1B038C704(v8, _s6LoggerVMa_0);

      sub_1B038C704(v11, _s6LoggerVMa_0);
    }
  }

  return swift_storeEnumTagMultiPayload();
}

uint64_t ConnectionState.hasMailboxSelected.getter()
{
  v1 = v0;
  v2 = type metadata accessor for ConnectionState(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1B038CA0C(v1, v4, type metadata accessor for ConnectionState);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    memcpy(v12, v4, 0x162uLL);
    v5 = *(v4 + 21);
    v13[8] = *(v4 + 20);
    v13[9] = v5;
    v14 = *(v4 + 176);
    v6 = *(v4 + 17);
    v13[4] = *(v4 + 16);
    v13[5] = v6;
    v7 = *(v4 + 19);
    v13[6] = *(v4 + 18);
    v13[7] = v7;
    v8 = *(v4 + 13);
    v13[0] = *(v4 + 12);
    v13[1] = v8;
    v9 = *(v4 + 15);
    v13[2] = *(v4 + 14);
    v13[3] = v9;
    if (sub_1B0BE2780(v13) == 2)
    {
      sub_1B03DB9A4(v13);
      sub_1B0BE278C(v12);
      return 1;
    }

    sub_1B0BE278C(v12);
  }

  else
  {
    sub_1B038C704(v4, type metadata accessor for ConnectionState);
  }

  return 0;
}

uint64_t static AuthenticatedState.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  if (sub_1B0BE5360(*a1, *a2) & 1) != 0 && (v4 = *(a1 + 120), v5 = *(a1 + 152), v31[8] = *(a1 + 136), v31[9] = v5, v31[10] = *(a1 + 168), v6 = *(a1 + 56), v7 = *(a1 + 88), v31[4] = *(a1 + 72), v31[5] = v7, v31[6] = *(a1 + 104), v31[7] = v4, v8 = *(a1 + 24), v31[0] = *(a1 + 8), v31[1] = v8, v31[2] = *(a1 + 40), v31[3] = v6, v9 = *(a2 + 120), v10 = *(a2 + 152), v30[8] = *(a2 + 136), v30[9] = v10, v30[10] = *(a2 + 168), v11 = *(a2 + 56), v12 = *(a2 + 88), v30[4] = *(a2 + 72), v30[5] = v12, v30[6] = *(a2 + 104), v30[7] = v9, v13 = *(a2 + 24), v30[0] = *(a2 + 8), v30[1] = v13, v30[2] = *(a2 + 40), v30[3] = v11, (static ServerID.__derived_struct_equals(_:_:)(v31, v30)) && (sub_1B038F0C4(*(a1 + 184), *(a2 + 184)))
  {
    v14 = *(a1 + 336);
    v28[8] = *(a1 + 320);
    v28[9] = v14;
    v29 = *(a1 + 352);
    v15 = *(a1 + 272);
    v28[4] = *(a1 + 256);
    v28[5] = v15;
    v16 = *(a1 + 304);
    v28[6] = *(a1 + 288);
    v28[7] = v16;
    v17 = *(a1 + 208);
    v28[0] = *(a1 + 192);
    v28[1] = v17;
    v18 = *(a1 + 240);
    v28[2] = *(a1 + 224);
    v28[3] = v18;
    v19 = *(a2 + 336);
    v26[8] = *(a2 + 320);
    v26[9] = v19;
    v27 = *(a2 + 352);
    v20 = *(a2 + 272);
    v26[4] = *(a2 + 256);
    v26[5] = v20;
    v21 = *(a2 + 304);
    v26[6] = *(a2 + 288);
    v26[7] = v21;
    v22 = *(a2 + 208);
    v26[0] = *(a2 + 192);
    v26[1] = v22;
    v23 = *(a2 + 240);
    v26[2] = *(a2 + 224);
    v26[3] = v23;
    v24 = sub_1B0BF4164(v28, v26);
  }

  else
  {
    v24 = 0;
  }

  return v24 & 1;
}

uint64_t ConnectionState.kind.getter()
{
  v1 = type metadata accessor for ConnectionState(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B038CA0C(v0, v3, type metadata accessor for ConnectionState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_1B038C704(v3, type metadata accessor for ConnectionState);
      return 6;
    }

    else if (EnumCaseMultiPayload == 4)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1B038C704(v3, type metadata accessor for ConnectionState);
      return 2;
    }

    else
    {
      sub_1B038C704(v3, type metadata accessor for ConnectionState);
      return 3;
    }
  }

  else
  {
    v6 = sub_1B0E43DF8();
    v7 = *(v6 - 8);
    v8 = (*(v7 + 88))(v3, v6) == *MEMORY[0x1E6977C18];
    (*(v7 + 8))(v3, v6);
    return v8;
  }
}

uint64_t ConnectionState.Kind.hashValue.getter(unsigned __int8 a1)
{
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](a1);
  return sub_1B0E46CB8();
}

uint64_t ConnectionState.nonSensitiveShortLogDescription.getter()
{
  v1 = type metadata accessor for UnauthenticatedState(0);
  MEMORY[0x1EEE9AC00](v1);
  v29 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for UnauthenticatedStateWithTasks(0);
  MEMORY[0x1EEE9AC00](v3);
  v30 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1B0E43DF8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v28 - v10;
  v12 = type metadata accessor for ConnectionState(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B038CA0C(v0, v14, type metadata accessor for ConnectionState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_1B038C704(v14, type metadata accessor for ConnectionState);
      return 0xD000000000000014;
    }

    else if (EnumCaseMultiPayload == 4)
    {
      return 0x64656C696166;
    }

    else
    {
      return 0x656C6C65636E6163;
    }
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v16 = v30;
      sub_1B04478FC(v14, v30, type metadata accessor for UnauthenticatedStateWithTasks);
      v17 = v29;
      sub_1B038CA0C(v16 + *(v3 + 24), v29, type metadata accessor for UnauthenticatedState);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 1u:
        case 5u:
          sub_1B038C704(v17, type metadata accessor for UnauthenticatedState);
          sub_1B038C704(v16, type metadata accessor for UnauthenticatedStateWithTasks);
          result = 0xD000000000000026;
          break;
        case 2u:
          sub_1B038C704(v16, type metadata accessor for UnauthenticatedStateWithTasks);
          sub_1B038C704(v17, type metadata accessor for UnauthenticatedState);
          result = 0xD00000000000001FLL;
          break;
        case 3u:
          sub_1B038C704(v17, type metadata accessor for UnauthenticatedState);
          sub_1B038C704(v16, type metadata accessor for UnauthenticatedStateWithTasks);
          result = 0xD000000000000022;
          break;
        case 4u:
          sub_1B038C704(v17, type metadata accessor for UnauthenticatedState);
          sub_1B038C704(v16, type metadata accessor for UnauthenticatedStateWithTasks);
          result = 0xD000000000000020;
          break;
        case 6u:
          sub_1B038C704(v17, type metadata accessor for UnauthenticatedState);
          sub_1B038C704(v16, type metadata accessor for UnauthenticatedStateWithTasks);
          result = 0xD000000000000024;
          break;
        case 7u:
          sub_1B038C704(v17, type metadata accessor for UnauthenticatedState);
          sub_1B038C704(v16, type metadata accessor for UnauthenticatedStateWithTasks);
          result = 0xD00000000000002FLL;
          break;
        case 8u:
          sub_1B038C704(v17, type metadata accessor for UnauthenticatedState);
          sub_1B038C704(v16, type metadata accessor for UnauthenticatedStateWithTasks);
          result = 0xD000000000000023;
          break;
        case 9u:
          sub_1B038C704(v17, type metadata accessor for UnauthenticatedState);
          sub_1B038C704(v16, type metadata accessor for UnauthenticatedStateWithTasks);
          result = 0xD000000000000015;
          break;
        case 0xAu:
          sub_1B038C704(v17, type metadata accessor for UnauthenticatedState);
          sub_1B038C704(v16, type metadata accessor for UnauthenticatedStateWithTasks);
          result = 0xD000000000000017;
          break;
        case 0xBu:
          sub_1B038C704(v16, type metadata accessor for UnauthenticatedStateWithTasks);
          result = 0xD00000000000001BLL;
          break;
        case 0xCu:
          goto LABEL_27;
        case 0xDu:
          sub_1B038C704(v16, type metadata accessor for UnauthenticatedStateWithTasks);
          result = 0xD00000000000001CLL;
          break;
        case 0xEu:
          sub_1B038C704(v16, type metadata accessor for UnauthenticatedStateWithTasks);
          result = 0xD00000000000001ELL;
          break;
        case 0xFu:
          sub_1B038C704(v16, type metadata accessor for UnauthenticatedStateWithTasks);
          result = 0xD00000000000002CLL;
          break;
        default:
          sub_1B038C704(v17, type metadata accessor for UnauthenticatedState);
LABEL_27:
          sub_1B038C704(v16, type metadata accessor for UnauthenticatedStateWithTasks);
          result = 0xD00000000000002BLL;
          break;
      }

      return result;
    }

    memcpy(v31, v14, 0x162uLL);
    v20 = *(v14 + 21);
    v32[8] = *(v14 + 20);
    v32[9] = v20;
    v33 = *(v14 + 176);
    v21 = *(v14 + 17);
    v32[4] = *(v14 + 16);
    v32[5] = v21;
    v22 = *(v14 + 19);
    v32[6] = *(v14 + 18);
    v32[7] = v22;
    v23 = *(v14 + 13);
    v32[0] = *(v14 + 12);
    v32[1] = v23;
    v24 = *(v14 + 15);
    v32[2] = *(v14 + 14);
    v32[3] = v24;
    v25 = sub_1B0BE2780(v32);
    sub_1B03DB9A4(v32);
    sub_1B0BE278C(v31);
    if (v25)
    {
      if (v25 == 1)
      {
        return 0xD000000000000019;
      }

      else
      {
        return 0xD000000000000018;
      }
    }

    return 0xD000000000000013;
  }

  v19 = (*(v6 + 88))(v14, v5);
  if (v19 == *MEMORY[0x1E6977C18])
  {
    (*(v6 + 8))(v14, v5);
    return 0xD000000000000013;
  }

  if (v19 == *MEMORY[0x1E6977C10])
  {
    (*(v6 + 8))(v14, v5);
    return 0xD000000000000012;
  }

  if (v19 == *MEMORY[0x1E6977C08])
  {
    return 0xD000000000000011;
  }

  if (v19 == *MEMORY[0x1E6977C28])
  {
    return 0xD000000000000015;
  }

  if (v19 == *MEMORY[0x1E6977C00])
  {
    return 0xD000000000000011;
  }

  if (v19 == *MEMORY[0x1E6977C20])
  {
    return 0xD000000000000015;
  }

  (*(v6 + 32))(v11, v14, v5);
  v31[0] = 0x697463656E6E6F63;
  v31[1] = 0xEB0000000028676ELL;
  (*(v6 + 16))(v8, v11, v5);
  v26 = sub_1B0E44B88();
  MEMORY[0x1B2726E80](v26);

  MEMORY[0x1B2726E80](41, 0xE100000000000000);
  v27 = v31[0];
  (*(v6 + 8))(v11, v5);
  return v27;
}

uint64_t sub_1B0BF2228(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 144);
  v13[8] = *(a1 + 128);
  v13[9] = v2;
  v14 = *(a1 + 160);
  v3 = *(a1 + 80);
  v13[4] = *(a1 + 64);
  v13[5] = v3;
  v4 = *(a1 + 112);
  v13[6] = *(a1 + 96);
  v13[7] = v4;
  v5 = *(a1 + 16);
  v13[0] = *a1;
  v13[1] = v5;
  v6 = *(a1 + 48);
  v13[2] = *(a1 + 32);
  v13[3] = v6;
  v7 = *(a2 + 144);
  v15[8] = *(a2 + 128);
  v15[9] = v7;
  v16 = *(a2 + 160);
  v8 = *(a2 + 80);
  v15[4] = *(a2 + 64);
  v15[5] = v8;
  v9 = *(a2 + 112);
  v15[6] = *(a2 + 96);
  v15[7] = v9;
  v10 = *(a2 + 16);
  v15[0] = *a2;
  v15[1] = v10;
  v11 = *(a2 + 48);
  v15[2] = *(a2 + 32);
  v15[3] = v11;
  return sub_1B0BF4164(v13, v15) & 1;
}

uint64_t sub_1B0BF22BC(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 120);
  v5 = *(a1 + 152);
  v33[8] = *(a1 + 136);
  v33[9] = v5;
  v33[10] = *(a1 + 168);
  v6 = *(a1 + 56);
  v7 = *(a1 + 88);
  v33[4] = *(a1 + 72);
  v33[5] = v7;
  v33[6] = *(a1 + 104);
  v33[7] = v4;
  v8 = *(a1 + 24);
  v33[0] = *(a1 + 8);
  v33[1] = v8;
  v33[2] = *(a1 + 40);
  v33[3] = v6;
  v9 = *(a1 + 184);
  v10 = *(a1 + 336);
  v29[8] = *(a1 + 320);
  v29[9] = v10;
  v30 = *(a1 + 352);
  v11 = *(a1 + 272);
  v29[4] = *(a1 + 256);
  v29[5] = v11;
  v12 = *(a1 + 304);
  v29[6] = *(a1 + 288);
  v29[7] = v12;
  v13 = *(a1 + 208);
  v29[0] = *(a1 + 192);
  v29[1] = v13;
  v14 = *(a1 + 240);
  v29[2] = *(a1 + 224);
  v29[3] = v14;
  v15 = *a2;
  v16 = *(a2 + 120);
  v17 = *(a2 + 152);
  v34[8] = *(a2 + 136);
  v34[9] = v17;
  v34[10] = *(a2 + 168);
  v18 = *(a2 + 56);
  v19 = *(a2 + 88);
  v34[4] = *(a2 + 72);
  v34[5] = v19;
  v34[6] = *(a2 + 104);
  v34[7] = v16;
  v20 = *(a2 + 24);
  v34[0] = *(a2 + 8);
  v34[1] = v20;
  v34[2] = *(a2 + 40);
  v34[3] = v18;
  v21 = *(a2 + 184);
  v22 = *(a2 + 336);
  v31[8] = *(a2 + 320);
  v31[9] = v22;
  v32 = *(a2 + 352);
  v23 = *(a2 + 272);
  v31[4] = *(a2 + 256);
  v31[5] = v23;
  v24 = *(a2 + 304);
  v31[6] = *(a2 + 288);
  v31[7] = v24;
  v25 = *(a2 + 208);
  v31[0] = *(a2 + 192);
  v31[1] = v25;
  v26 = *(a2 + 240);
  v31[2] = *(a2 + 224);
  v31[3] = v26;
  if (sub_1B0BE5360(v3, v15) & 1) != 0 && (static ServerID.__derived_struct_equals(_:_:)(v33, v34) & 1) != 0 && (sub_1B038F0C4(v9, v21))
  {
    v27 = sub_1B0BF4164(v29, v31);
  }

  else
  {
    v27 = 0;
  }

  return v27 & 1;
}

uint64_t MailboxSelectionFailure.mailbox.setter(uint64_t a1, int a2)
{

  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t MailboxSelectionFailure.response.getter()
{
  v1 = v0[2];
  sub_1B0B6DCB0(v1, v0[3], v0[4]);
  return v1;
}

uint64_t MailboxSelectionFailure.response.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B0B6DCF0(v3[2], v3[3], v3[4]);
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  return result;
}

uint64_t sub_1B0BF2560(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return _s15IMAP2Connection23MailboxSelectionFailureV23__derived_struct_equalsySbAC_ACtFZ_0(v5, v7) & 1;
}

double AuthenticatedState.mailboxSelection.getter()
{
  v1 = *(v0 + 336);
  v8[8] = *(v0 + 320);
  v8[9] = v1;
  v9 = *(v0 + 352);
  v2 = *(v0 + 272);
  v8[4] = *(v0 + 256);
  v8[5] = v2;
  v3 = *(v0 + 304);
  v8[6] = *(v0 + 288);
  v8[7] = v3;
  v4 = *(v0 + 208);
  v8[0] = *(v0 + 192);
  v8[1] = v4;
  v5 = *(v0 + 240);
  v8[2] = *(v0 + 224);
  v8[3] = v5;
  v6 = sub_1B0BE2780(v8);
  sub_1B03DB9A4(v8);
  if (v6)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  return result;
}

BOOL ConnectionState.isConnectingOrAuthenticating.getter()
{
  v1 = type metadata accessor for ConnectionState(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B038CA0C(v0, v3, type metadata accessor for ConnectionState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    v5 = EnumCaseMultiPayload < 2;
LABEL_6:
    sub_1B038C704(v3, type metadata accessor for ConnectionState);
    return v5;
  }

  if ((EnumCaseMultiPayload - 4) >= 2)
  {
    v5 = 0;
    goto LABEL_6;
  }

  return 0;
}

uint64_t ConnectionState.hasMailboxSelected(_:)(uint64_t a1, unsigned int a2)
{
  v3 = v2;
  v6 = type metadata accessor for ConnectionState(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B038CA0C(v3, v8, type metadata accessor for ConnectionState);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_1B038C704(v8, type metadata accessor for ConnectionState);
LABEL_8:
    v17 = 0;
    return v17 & 1;
  }

  memcpy(v21, v8, sizeof(v21));
  v9 = *(v8 + 21);
  v22[8] = *(v8 + 20);
  v22[9] = v9;
  v23 = *(v8 + 176);
  v10 = *(v8 + 17);
  v22[4] = *(v8 + 16);
  v22[5] = v10;
  v11 = *(v8 + 19);
  v22[6] = *(v8 + 18);
  v22[7] = v11;
  v12 = *(v8 + 13);
  v22[0] = *(v8 + 12);
  v22[1] = v12;
  v13 = *(v8 + 15);
  v22[2] = *(v8 + 14);
  v22[3] = v13;
  if (sub_1B0BE2780(v22) != 2)
  {
    sub_1B0BE278C(v21);
    goto LABEL_8;
  }

  v14 = sub_1B03DB9A4(v22);
  v15 = *v14;
  v16 = *(v14 + 8);
  v19[0] = *&v21[192];
  v19[1] = *&v21[208];
  v19[4] = *&v21[256];
  v19[5] = *&v21[272];
  v19[2] = *&v21[224];
  v19[3] = *&v21[240];
  v20 = *&v21[352];
  v19[8] = *&v21[320];
  v19[9] = *&v21[336];
  v19[6] = *&v21[288];
  v19[7] = *&v21[304];
  sub_1B03DB9A4(v19);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0BE278C(v21);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0BE27E0(&v21[192]);
  if ((v16 | (v16 << 32)) != (a2 | (a2 << 32)))
  {

    goto LABEL_8;
  }

  v17 = sub_1B04520BC(v15, a1);

  return v17 & 1;
}

uint64_t ConnectionState.mailboxSelectionIsInProgress(_:)(uint64_t a1, unsigned int a2)
{
  v3 = v2;
  v6 = type metadata accessor for ConnectionState(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v18[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1B038CA0C(v3, v8, type metadata accessor for ConnectionState);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_1B038C704(v8, type metadata accessor for ConnectionState);
LABEL_7:
    v15 = 0;
    return v15 & 1;
  }

  memcpy(v18, v8, 0x162uLL);
  v9 = *(v8 + 21);
  v19[8] = *(v8 + 20);
  v19[9] = v9;
  v20 = *(v8 + 176);
  v10 = *(v8 + 17);
  v19[4] = *(v8 + 16);
  v19[5] = v10;
  v11 = *(v8 + 19);
  v19[6] = *(v8 + 18);
  v19[7] = v11;
  v12 = *(v8 + 13);
  v19[0] = *(v8 + 12);
  v19[1] = v12;
  v13 = *(v8 + 15);
  v19[2] = *(v8 + 14);
  v19[3] = v13;
  if (sub_1B0BE2780(v19) != 1 || (v14 = sub_1B03DB9A4(v19), (*(v14 + 8) | (*(v14 + 8) << 32)) != (a2 | (a2 << 32))))
  {
    sub_1B0BE278C(v18);
    goto LABEL_7;
  }

  v15 = sub_1B04520BC(*v14, a1);
  sub_1B0BE278C(v18);
  return v15 & 1;
}

uint64_t ConnectionState.selectedMailbox.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ConnectionState(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v21[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1B038CA0C(v2, v6, type metadata accessor for ConnectionState);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    result = sub_1B038C704(v6, type metadata accessor for ConnectionState);
LABEL_6:
    v19 = 0;
    v20 = 0;
    v15 = 0uLL;
    v16 = 0uLL;
    v17 = 0uLL;
    v18 = 0uLL;
    goto LABEL_7;
  }

  memcpy(v24, v6, sizeof(v24));
  v7 = *(v6 + 21);
  v25[8] = *(v6 + 20);
  v25[9] = v7;
  v26 = *(v6 + 176);
  v8 = *(v6 + 17);
  v25[4] = *(v6 + 16);
  v25[5] = v8;
  v9 = *(v6 + 19);
  v25[6] = *(v6 + 18);
  v25[7] = v9;
  v10 = *(v6 + 13);
  v25[0] = *(v6 + 12);
  v25[1] = v10;
  v11 = *(v6 + 15);
  v25[2] = *(v6 + 14);
  v25[3] = v11;
  if (sub_1B0BE2780(v25) != 2)
  {
    result = sub_1B0BE278C(v24);
    goto LABEL_6;
  }

  v12 = sub_1B03DB9A4(v25);
  v22[8] = *&v24[320];
  v22[9] = *&v24[336];
  v23 = *&v24[352];
  v22[4] = *&v24[256];
  v22[5] = *&v24[272];
  v22[6] = *&v24[288];
  v22[7] = *&v24[304];
  v22[0] = *&v24[192];
  v22[1] = *&v24[208];
  v22[2] = *&v24[224];
  v22[3] = *&v24[240];
  v13 = sub_1B03DB9A4(v22);
  sub_1B0B37A20(v13, v21);
  result = sub_1B0BE278C(v24);
  v15 = *v12;
  v16 = *(v12 + 16);
  v17 = *(v12 + 32);
  v18 = *(v12 + 48);
  v19 = *(v12 + 64);
  v20 = *(v12 + 72) | (*(v12 + 74) << 16);
LABEL_7:
  *a1 = v15;
  *(a1 + 16) = v16;
  *(a1 + 32) = v17;
  *(a1 + 48) = v18;
  *(a1 + 64) = v19;
  *(a1 + 72) = v20;
  *(a1 + 74) = BYTE2(v20);
  return result;
}

uint64_t ConnectionState.anyMailboxSelectionIsInProgress.getter()
{
  v1 = v0;
  v2 = type metadata accessor for ConnectionState(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1B038CA0C(v1, v4, type metadata accessor for ConnectionState);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    memcpy(v12, v4, 0x162uLL);
    v5 = *(v4 + 21);
    v13[8] = *(v4 + 20);
    v13[9] = v5;
    v14 = *(v4 + 176);
    v6 = *(v4 + 17);
    v13[4] = *(v4 + 16);
    v13[5] = v6;
    v7 = *(v4 + 19);
    v13[6] = *(v4 + 18);
    v13[7] = v7;
    v8 = *(v4 + 13);
    v13[0] = *(v4 + 12);
    v13[1] = v8;
    v9 = *(v4 + 15);
    v13[2] = *(v4 + 14);
    v13[3] = v9;
    if (sub_1B0BE2780(v13) == 1)
    {
      sub_1B03DB9A4(v13);
      sub_1B0BE278C(v12);
      return 1;
    }

    sub_1B0BE278C(v12);
  }

  else
  {
    sub_1B038C704(v4, type metadata accessor for ConnectionState);
  }

  return 0;
}

uint64_t sub_1B0BF2E10(unint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ConnectionState(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B038CA0C(v2, v6, type metadata accessor for ConnectionState);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    return sub_1B038C704(v6, type metadata accessor for ConnectionState);
  }

  memcpy(v53, v6, sizeof(v53));
  v7 = *(v6 + 19);
  v8 = *(v6 + 21);
  v48 = *(v6 + 20);
  v49 = v8;
  v9 = *(v6 + 15);
  v10 = *(v6 + 17);
  v44 = *(v6 + 16);
  v45 = v10;
  v11 = *(v6 + 17);
  v12 = *(v6 + 19);
  v46 = *(v6 + 18);
  v47 = v12;
  v13 = *(v6 + 13);
  v40 = *(v6 + 12);
  v41 = v13;
  v14 = *(v6 + 15);
  v16 = *(v6 + 12);
  v15 = *(v6 + 13);
  v42 = *(v6 + 14);
  v43 = v14;
  v17 = *(v6 + 21);
  v51[8] = v48;
  v51[9] = v17;
  v51[4] = v44;
  v51[5] = v11;
  v51[6] = v46;
  v51[7] = v7;
  v51[0] = v16;
  v51[1] = v15;
  v50 = *(v6 + 176);
  v52 = *(v6 + 176);
  v51[2] = v42;
  v51[3] = v9;
  if (sub_1B0BE2780(v51) == 2)
  {
    v18 = sub_1B03DB9A4(v51);
    v25[8] = v48;
    v25[9] = v49;
    v26 = v50;
    v25[4] = v44;
    v25[5] = v45;
    v25[6] = v46;
    v25[7] = v47;
    v25[0] = v40;
    v25[1] = v41;
    v25[2] = v42;
    v25[3] = v43;
    v19 = sub_1B03DB9A4(v25);
    sub_1B0B37A20(v19, v35);
    sub_1B038C704(v2, type metadata accessor for ConnectionState);
    v20 = *v18;
    v37 = v18[1];
    v21 = v18[3];
    v38 = v18[2];
    v39[0] = v21;
    *(v39 + 11) = *(v18 + 59);
    v36 = v20;
    sub_1B0C27A74(a1);
    v29 = v38;
    v30[0] = v39[0];
    *(v30 + 11) = *(v39 + 11);
    v27 = v36;
    v28 = v37;
    sub_1B0BF6E18(&v27);
    v32[8] = *&v53[320];
    v32[9] = *&v53[336];
    v33 = *&v53[352];
    v32[4] = *&v53[256];
    v32[5] = *&v53[272];
    v32[6] = *&v53[288];
    v32[7] = *&v53[304];
    v32[0] = *&v53[192];
    v32[1] = *&v53[208];
    v32[2] = *&v53[224];
    v32[3] = *&v53[240];
    sub_1B0BE27E0(v32);
    *&v53[320] = v30[5];
    *&v53[336] = v30[6];
    *&v53[352] = v31;
    *&v53[256] = v30[1];
    *&v53[272] = v30[2];
    *&v53[304] = v30[4];
    *&v53[288] = v30[3];
    *&v53[192] = v27;
    *&v53[208] = v28;
    *&v53[240] = v30[0];
    *&v53[224] = v29;
    memcpy(v34, v53, 0x162uLL);
    memcpy(v2, v53, 0x162uLL);
    swift_storeEnumTagMultiPayload();
    memcpy(v35, v53, 0x162uLL);
    sub_1B0BF6EEC(v34, &v24);
  }

  else
  {
    memcpy(v35, v53, 0x162uLL);
  }

  return sub_1B0BE278C(v35);
}

uint64_t sub_1B0BF3180(uint64_t *a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  v34 = a4;
  v7 = type metadata accessor for ClientCommand(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _s6LoggerVMa_0(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v32 - v14;
  sub_1B038CA0C(a2, &v32 - v14, _s6LoggerVMa_0);
  sub_1B038CA0C(a2, v12, _s6LoggerVMa_0);
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0BF7124(a1, v35);
  v16 = sub_1B0E43988();
  v17 = sub_1B0E458C8();
  sub_1B0BF6F78(a1);
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v33 = a3;
    v19 = v18;
    v32 = swift_slowAlloc();
    v35[0] = v32;
    *v19 = 68158466;
    *(v19 + 4) = 2;
    *(v19 + 8) = 256;
    v20 = v12[*(v10 + 20)];
    sub_1B038C704(v12, _s6LoggerVMa_0);
    *(v19 + 10) = v20;
    *(v19 + 11) = 2082;
    v21 = *&v15[*(v10 + 20) + 4];
    sub_1B038C704(v15, _s6LoggerVMa_0);
    v22 = ConnectionID.debugDescription.getter(v21);
    v24 = sub_1B0399D64(v22, v23, v35);

    *(v19 + 13) = v24;
    *(v19 + 21) = 2082;
    v25 = sub_1B0C2D8A8();
    v27 = sub_1B0399D64(v25, v26, v35);

    *(v19 + 23) = v27;
    _os_log_impl(&dword_1B0389000, v16, v17, "[%.*hhx-%{public}s] Authentication is sending %{public}s.", v19, 0x1Fu);
    v28 = v32;
    swift_arrayDestroy();
    MEMORY[0x1B272C230](v28, -1, -1);
    v29 = v19;
    a3 = v33;
    MEMORY[0x1B272C230](v29, -1, -1);
  }

  else
  {
    sub_1B038C704(v12, _s6LoggerVMa_0);

    sub_1B038C704(v15, _s6LoggerVMa_0);
  }

  sub_1B0BF7124(a1, v35);
  sub_1B0BF34C4(a1, v9);
  v30 = a3(v9);
  sub_1B038C704(v9, type metadata accessor for ClientCommand);
  return v30;
}

uint64_t sub_1B0BF34C4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  v8 = *(a1 + 64);
  if (v8 > 2)
  {
    if (v8 == 3)
    {
      *a2 = v4;
      type metadata accessor for ClientCommand(0);
    }

    else
    {
      v11 = a1[5];
      v10 = a1[6];
      v12 = a1[7];
      if (v8 == 4)
      {
        *a2 = v4;
        *(a2 + 8) = v3;
        *(a2 + 16) = v5;
        *(a2 + 24) = v6;
        *(a2 + 32) = v7;
        *(a2 + 40) = v11;
        *(a2 + 48) = v10;
        *(a2 + 56) = v12;
      }

      type metadata accessor for ClientCommand(0);
    }
  }

  else if (*(a1 + 64))
  {
    if (v8 != 1)
    {
      v15 = a1[1];
      v16 = v4;
      v17 = v5;
      sub_1B03B5C80(&v16, &v14, &qword_1EB6E5570, &qword_1B0ED2738);
      sub_1B03B5C80(&v15, &v14, &qword_1EB6E5578, &qword_1B0ED2740);
      sub_1B03B5C80(&v17, &v14, &qword_1EB6E5580, &qword_1B0ED2748);
      sub_1B0BF6F78(a1);
      *a2 = v4;
      *(a2 + 8) = v3;
      *(a2 + 16) = v5;
      type metadata accessor for ClientCommand(0);
      return swift_storeEnumTagMultiPayload();
    }

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0BF6F78(a1);
    *a2 = v4;
    *(a2 + 8) = v3;
    *(a2 + 16) = v5;
    *(a2 + 24) = v6;
    *(a2 + 38) = BYTE6(v7);
    *(a2 + 36) = WORD2(v7);
    *(a2 + 32) = v7;
    type metadata accessor for ClientCommand(0);
  }

  else
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0BF6F78(a1);
    *a2 = v4;
    *(a2 + 8) = v3;
    *(a2 + 16) = v5;
    *(a2 + 24) = v6;
    type metadata accessor for ClientCommand(0);
  }

  return swift_storeEnumTagMultiPayload();
}

void sub_1B0BF3738(__int128 *a1, uint64_t a2)
{
  v119 = a2;
  v118 = _s6LoggerVMa_0(0);
  MEMORY[0x1EEE9AC00](v118);
  v4 = &v112 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v112 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v112 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v112 - v12;
  v14 = a1[7];
  v15 = a1[9];
  v156 = a1[8];
  v157 = v15;
  v16 = a1[3];
  v17 = a1[5];
  v152 = a1[4];
  v153 = v17;
  v18 = a1[5];
  v19 = a1[7];
  v154 = a1[6];
  v155 = v19;
  v20 = a1[1];
  v148 = *a1;
  v149 = v20;
  v21 = a1[3];
  v23 = *a1;
  v22 = a1[1];
  v150 = a1[2];
  v151 = v21;
  v24 = a1[9];
  v159[8] = v156;
  v159[9] = v24;
  v159[4] = v152;
  v159[5] = v18;
  v159[6] = v154;
  v159[7] = v14;
  v159[0] = v23;
  v159[1] = v22;
  v158 = *(a1 + 80);
  v160 = *(a1 + 80);
  v159[2] = v150;
  v159[3] = v16;
  if (sub_1B0BE2780(v159) == 1)
  {
    v25 = sub_1B03DB9A4(v159);
    v26 = v25;
    v28 = (v25 + 16);
    v27 = *(v25 + 16);
    v30 = *(v25 + 24);
    v29 = *(v25 + 32);
    v31 = *(v25 + 40);
    v32 = *(v25 + 90);
    v33 = v32 >> 5;
    if (v33 > 2)
    {
      if (v33 != 3)
      {
        return;
      }

      v115 = *(v25 + 16);
      v116 = v29;
      v117 = v30;
      v54 = a1[9];
      v145 = a1[8];
      v146 = v54;
      v147 = *(a1 + 80);
      v55 = a1[5];
      v141 = a1[4];
      v142 = v55;
      v56 = a1[7];
      v143 = a1[6];
      v144 = v56;
      v57 = a1[1];
      v137 = *a1;
      v138 = v57;
      v58 = a1[3];
      v139 = a1[2];
      v140 = v58;
      sub_1B0BE2E00(&v148, &v126);
      sub_1B0BF6D44(v28, &v126);
      sub_1B0BE27E0(&v137);
      if (v31 == 0xFF)
      {
        v59 = v119;
        sub_1B038CA0C(v119, v7, _s6LoggerVMa_0);
        sub_1B038CA0C(v59, v4, _s6LoggerVMa_0);
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        v134 = v156;
        v135 = v157;
        v136 = v158;
        v130 = v152;
        v131 = v153;
        v132 = v154;
        v133 = v155;
        v126 = v148;
        v127 = v149;
        v128 = v150;
        v129 = v151;
        v60 = sub_1B03DB9A4(&v126);
        sub_1B0BE2834(v60, &v121);
        v61 = sub_1B0E43988();
        v62 = sub_1B0E458E8();
        sub_1B0BE27E0(&v148);
        if (os_log_type_enabled(v61, v62))
        {
          v63 = swift_slowAlloc();
          LODWORD(v117) = v62;
          v64 = v63;
          v119 = swift_slowAlloc();
          v120 = v119;
          *v64 = 68158723;
          *(v64 + 4) = 2;
          *(v64 + 8) = 256;
          v116 = v61;
          v65 = v118;
          v66 = v4[*(v118 + 20)];
          sub_1B038C704(v4, _s6LoggerVMa_0);
          *(v64 + 10) = v66;
          *(v64 + 11) = 2082;
          v67 = *&v7[*(v65 + 20) + 4];
          sub_1B038C704(v7, _s6LoggerVMa_0);
          v68 = ConnectionID.debugDescription.getter(v67);
          v70 = sub_1B0399D64(v68, v69, &v120);

          *(v64 + 13) = v70;
          *(v64 + 21) = 2160;
          *(v64 + 23) = 0x786F626C69616DLL;
          *(v64 + 31) = 2085;
          v71 = *(v26 + 8);
          *&v121 = *v26;
          DWORD2(v121) = v71;
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v72 = sub_1B0E44BA8();
          v74 = sub_1B0399D64(v72, v73, &v120);

          *(v64 + 33) = v74;
          v75 = v116;
          _os_log_impl(&dword_1B0389000, v116, v117, "[%.*hhx-%{public}s] Unable to select mailbox '%{sensitive,mask.mailbox}s' because attributes were missing.", v64, 0x29u);
          v76 = v119;
          swift_arrayDestroy();
          MEMORY[0x1B272C230](v76, -1, -1);
          MEMORY[0x1B272C230](v64, -1, -1);
        }

        else
        {
          sub_1B038C704(v4, _s6LoggerVMa_0);

          sub_1B038C704(v7, _s6LoggerVMa_0);
        }

        v100 = *v26;
        v101 = *(v26 + 8);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0BE27E0(&v148);
        *&v121 = v100;
        *(&v121 + 1) = v101;
        *&v123 = 0;
        v122 = 0uLL;
        sub_1B0BF6DA0(&v121);
        v102 = v124[6];
        a1[8] = v124[5];
        a1[9] = v102;
        *(a1 + 80) = v125;
        v103 = v124[2];
        a1[4] = v124[1];
        a1[5] = v103;
        v104 = v124[4];
        a1[6] = v124[3];
        a1[7] = v104;
        v105 = v122;
        *a1 = v121;
        a1[1] = v105;
        v53 = v123;
        v52 = v124[0];
      }

      else
      {
        v77 = v119;
        sub_1B038CA0C(v119, v13, _s6LoggerVMa_0);
        sub_1B038CA0C(v77, v10, _s6LoggerVMa_0);
        sub_1B0BF6E04(*(v26 + 16), *(v26 + 24), *(v26 + 32), *(v26 + 40));
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0BE2E00(&v148, &v126);
        sub_1B0BF6D44(v28, &v126);
        v78 = sub_1B0E43988();
        v79 = sub_1B0E458E8();
        sub_1B0BE27E0(&v148);
        sub_1B0BF6CA4(v28);
        if (os_log_type_enabled(v78, v79))
        {
          v80 = swift_slowAlloc();
          v119 = swift_slowAlloc();
          *&v121 = v119;
          *v80 = 68158979;
          *(v80 + 4) = 2;
          *(v80 + 8) = 256;
          v114 = v78;
          v81 = v118;
          v112 = v10[*(v118 + 20)];
          v113 = v79;
          sub_1B038C704(v10, _s6LoggerVMa_0);
          *(v80 + 10) = v112;
          *(v80 + 11) = 2082;
          v82 = *&v13[*(v81 + 20) + 4];
          sub_1B038C704(v13, _s6LoggerVMa_0);
          v83 = ConnectionID.debugDescription.getter(v82);
          v85 = sub_1B0399D64(v83, v84, &v121);

          *(v80 + 13) = v85;
          *(v80 + 21) = 2160;
          *(v80 + 23) = 0x786F626C69616DLL;
          *(v80 + 31) = 2085;
          v86 = *(v26 + 8);
          *&v126 = *v26;
          DWORD2(v126) = v86;
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v87 = sub_1B0E44BA8();
          v89 = sub_1B0399D64(v87, v88, &v121);

          *(v80 + 33) = v89;
          *(v80 + 41) = 2082;
          v90 = v115;
          sub_1B04420D8(v115);
          v91 = v116;
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          v92 = ResponseText.debugDescription.getter(v90, v117, v91);
          v94 = v93;
          sub_1B0447F00(v90);

          v95 = sub_1B0399D64(v92, v94, &v121);

          *(v80 + 43) = v95;
          v96 = v114;
          _os_log_impl(&dword_1B0389000, v114, v113, "[%.*hhx-%{public}s] Unable to select mailbox '%{sensitive,mask.mailbox}s': %{public}s", v80, 0x33u);
          v97 = v119;
          swift_arrayDestroy();
          v98 = v97;
          v99 = v117;
          MEMORY[0x1B272C230](v98, -1, -1);
          MEMORY[0x1B272C230](v80, -1, -1);

          sub_1B0BF6CA4(v28);
        }

        else
        {
          sub_1B038C704(v10, _s6LoggerVMa_0);

          sub_1B0BF6CA4(v28);
          sub_1B038C704(v13, _s6LoggerVMa_0);
          v91 = v116;
          v99 = v117;
          v90 = v115;
        }

        v106 = *v26;
        v107 = *(v26 + 8);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B04420D8(v90);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0BF6CA4(v28);
        sub_1B0BE27E0(&v148);
        *&v126 = v106;
        *(&v126 + 1) = v107;
        *&v127 = v90;
        *(&v127 + 1) = v99;
        *&v128 = v91;
        sub_1B0BF6DA0(&v126);
        v108 = v135;
        a1[8] = v134;
        a1[9] = v108;
        *(a1 + 80) = v136;
        v109 = v131;
        a1[4] = v130;
        a1[5] = v109;
        v110 = v133;
        a1[6] = v132;
        a1[7] = v110;
        v111 = v127;
        *a1 = v126;
        a1[1] = v111;
        v53 = v128;
        v52 = v129;
      }
    }

    else
    {
      if (v33 < 2)
      {
        return;
      }

      v119 = *(v25 + 48);
      v34 = *(v25 + 64);
      v118 = *(v25 + 56);
      v35 = *(v25 + 72);
      v117 = *(v25 + 80);
      v36 = *(v25 + 88) | (v32 << 16);
      v37 = a1[5];
      v130 = a1[4];
      v131 = v37;
      v136 = *(a1 + 80);
      v38 = a1[9];
      v134 = a1[8];
      v135 = v38;
      v39 = a1[7];
      v132 = a1[6];
      v133 = v39;
      v40 = a1[3];
      v128 = a1[2];
      v129 = v40;
      v41 = a1[1];
      v126 = *a1;
      v127 = v41;
      v43 = *(v25 + 48);
      v42 = *(v25 + 64);
      v44 = *(v25 + 32);
      *(v124 + 11) = *(v25 + 75);
      v122 = v44;
      v123 = v43;
      v124[0] = v42;
      v121 = *v28;
      BYTE10(v124[1]) &= 0x1Fu;
      v45 = v29;
      v46 = v27;
      v47 = v30;
      sub_1B0B37A20(&v121, &v137);
      sub_1B0BE27E0(&v126);
      *&v137 = v46;
      *(&v137 + 1) = v47;
      *&v138 = v45;
      *(&v138 + 1) = v31;
      *&v139 = v119;
      *(&v139 + 1) = v118;
      *&v140 = v34;
      *(&v140 + 1) = v35;
      *&v141 = v117;
      BYTE10(v141) = BYTE2(v36) & 0x1F;
      WORD4(v141) = v36;
      sub_1B0BF6E18(&v137);
      v48 = v146;
      a1[8] = v145;
      a1[9] = v48;
      *(a1 + 80) = v147;
      v49 = v142;
      a1[4] = v141;
      a1[5] = v49;
      v50 = v144;
      a1[6] = v143;
      a1[7] = v50;
      v51 = v138;
      *a1 = v137;
      a1[1] = v51;
      v53 = v139;
      v52 = v140;
    }

    a1[2] = v53;
    a1[3] = v52;
  }
}

uint64_t _s15IMAP2Connection23MailboxSelectionFailureV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t result, uint64_t *a2)
{
  if ((*(result + 8) | (*(result + 8) << 32)) != (*(a2 + 2) | (*(a2 + 2) << 32)))
  {
    return 0;
  }

  v2 = *result;
  v3 = *a2;
  v4 = *(*result + 16);
  if (v4 != *(*a2 + 16))
  {
    return 0;
  }

  if (v4)
  {
    v5 = v2 == v3;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
LABEL_11:
    v8 = *(result + 32);
    v9 = a2[4];
    if (v8)
    {
      if (v9)
      {
        v10 = *(result + 16);
        v11 = *(result + 24);
        v12 = a2[2];
        v13 = a2[3];
        sub_1B04420D8(v12);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v14 = static ResponseText.__derived_struct_equals(_:_:)(v10, v11, v8, v12, v13, v9);
        sub_1B0447F00(v12);

        if (v14)
        {
          return 1;
        }
      }
    }

    else if (!v9)
    {
      return 1;
    }

    return 0;
  }

  v6 = (v2 + 32);
  v7 = (v3 + 32);
  while (v4)
  {
    if (*v6 != *v7)
    {
      return 0;
    }

    ++v6;
    ++v7;
    if (!--v4)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0BF4164(uint64_t a1, __int128 *a2)
{
  v4 = a2[9];
  v99 = a2[8];
  v100 = v4;
  v101 = *(a2 + 80);
  v5 = a2[5];
  v95 = a2[4];
  v96 = v5;
  v6 = a2[7];
  v97 = a2[6];
  v98 = v6;
  v7 = a2[1];
  v91 = *a2;
  v92 = v7;
  v8 = a2[3];
  v93 = a2[2];
  v94 = v8;
  v9 = *(a1 + 144);
  v73[8] = *(a1 + 128);
  v73[9] = v9;
  v74 = *(a1 + 160);
  v10 = *(a1 + 80);
  v73[4] = *(a1 + 64);
  v73[5] = v10;
  v11 = *(a1 + 112);
  v73[6] = *(a1 + 96);
  v73[7] = v11;
  v12 = *(a1 + 16);
  v73[0] = *a1;
  v73[1] = v12;
  v13 = *(a1 + 48);
  v73[2] = *(a1 + 32);
  v73[3] = v13;
  v14 = sub_1B0BE2780(v73);
  v15 = sub_1B03DB9A4(v73);
  if (!v14)
  {
    v24 = *v15;
    v23 = *(v15 + 8);
    v26 = *(v15 + 16);
    v25 = *(v15 + 24);
    v27 = *(v15 + 32);
    v28 = a2[9];
    v83 = a2[8];
    v84 = v28;
    v85 = *(a2 + 80);
    v29 = a2[5];
    v79 = a2[4];
    v80 = v29;
    v30 = a2[7];
    v81 = a2[6];
    v82 = v30;
    v31 = a2[1];
    v75 = *a2;
    v76 = v31;
    v32 = a2[3];
    v77 = a2[2];
    v78 = v32;
    if (sub_1B0BE2780(&v75))
    {
      goto LABEL_14;
    }

    v33 = sub_1B03DB9A4(&v75);
    v34 = *v33;
    v35 = v33[1];
    v37 = v33[2];
    v36 = v33[3];
    v38 = v33[4];
    if (v24)
    {
      if (v34)
      {
        *&v53 = *v33;
        DWORD2(v53) = v35;
        *&v54 = v37;
        *(&v54 + 1) = v36;
        *&v55 = v38;
        v86 = v24;
        v87 = v23;
        v88 = v26;
        v89 = v25;
        v90 = v27;
        v39 = v38;
        v40 = v36;
        sub_1B0BE2E00(a2, &v63);
        sub_1B0BE2E00(a1, &v63);
        v41 = _s15IMAP2Connection23MailboxSelectionFailureV23__derived_struct_equalsySbAC_ACtFZ_0(&v86, &v53);

        sub_1B0B6DCF0(v37, v40, v39);
        sub_1B0BE27E0(a1);
        if (v41)
        {
          v22 = 1;
          return v22 & 1;
        }

LABEL_14:
        v22 = 0;
        return v22 & 1;
      }
    }

    else if (!v34)
    {
      v70 = v99;
      v71 = v100;
      v72 = v101;
      *&v66[16] = v95;
      v67 = v96;
      v68 = v97;
      v69 = v98;
      v63 = v91;
      v64 = v92;
      v65 = v93;
      *v66 = v94;
      v51 = sub_1B03DB9A4(&v63);
      sub_1B0BE2DA8(*v51, v51[1], v51[2], v51[3], v51[4]);
      v22 = 1;
      return v22 & 1;
    }

    v48 = a2;
    v52 = v38;
    v49 = v36;
    sub_1B0BE2E00(v48, &v63);
    sub_1B0BE2E00(a1, &v63);
    sub_1B0BF5EF8(v24, v23, v26, v25, v27);
    sub_1B0BF5EF8(v34, v35, v37, v49, v52);
    goto LABEL_14;
  }

  if (v14 != 1)
  {
    v64 = *(v15 + 16);
    v65 = *(v15 + 32);
    *v66 = *(v15 + 48);
    *&v66[11] = *(v15 + 59);
    v63 = *v15;
    v42 = a2[9];
    v83 = a2[8];
    v84 = v42;
    v85 = *(a2 + 80);
    v43 = a2[5];
    v79 = a2[4];
    v80 = v43;
    v44 = a2[7];
    v81 = a2[6];
    v82 = v44;
    v45 = a2[1];
    v75 = *a2;
    v76 = v45;
    v46 = a2[3];
    v77 = a2[2];
    v78 = v46;
    if (sub_1B0BE2780(&v75) == 2)
    {
      v47 = sub_1B03DB9A4(&v75);
      v54 = v47[1];
      v55 = v47[2];
      *v56 = v47[3];
      *&v56[11] = *(v47 + 59);
      v53 = *v47;
      v22 = _s15IMAP2Connection15SelectedMailboxV23__derived_struct_equalsySbAC_ACtFZ_0(&v63, &v53);
      return v22 & 1;
    }

    goto LABEL_14;
  }

  v82 = *(v15 + 112);
  v83 = *(v15 + 128);
  v84 = *(v15 + 144);
  v85 = *(v15 + 160);
  v78 = *(v15 + 48);
  v79 = *(v15 + 64);
  v80 = *(v15 + 80);
  v81 = *(v15 + 96);
  v75 = *v15;
  v76 = *(v15 + 16);
  v77 = *(v15 + 32);
  v16 = a2[1];
  v53 = *a2;
  v54 = v16;
  v17 = a2[5];
  *&v56[16] = a2[4];
  v57 = v17;
  v18 = a2[3];
  v55 = a2[2];
  *v56 = v18;
  v62 = *(a2 + 80);
  v19 = a2[9];
  v60 = a2[8];
  v61 = v19;
  v20 = a2[7];
  v58 = a2[6];
  v59 = v20;
  if (sub_1B0BE2780(&v53) != 1)
  {
    goto LABEL_14;
  }

  v21 = sub_1B03DB9A4(&v53);
  v69 = *(v21 + 112);
  v70 = *(v21 + 128);
  v71 = *(v21 + 144);
  v72 = *(v21 + 160);
  *v66 = *(v21 + 48);
  *&v66[16] = *(v21 + 64);
  v67 = *(v21 + 80);
  v68 = *(v21 + 96);
  v63 = *v21;
  v64 = *(v21 + 16);
  v65 = *(v21 + 32);
  v22 = sub_1B0C0AC10(&v75, &v63);
  return v22 & 1;
}

uint64_t sub_1B0BF4574(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5568, &qword_1B0ED2730);
    v3 = sub_1B0E46228();
    v4 = 0;
    v5 = v3 + 56;
    v28 = v1;
    v29 = a1 + 32;
    v27 = v3;
    while (1)
    {
      v30 = v4;
      v6 = (v29 + 32 * v4);
      v8 = *v6;
      v7 = v6[1];
      v9 = v6[2];
      v10 = *(v6 + 24);
      sub_1B0E46C28();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      sub_1B0E46C68();
      if (v10 != 1)
      {
        MEMORY[0x1B2728DB0](v9 >> 14);
      }

      result = sub_1B0E46CB8();
      v12 = ~(-1 << *(v3 + 32));
      v13 = result & v12;
      v14 = (result & v12) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v12);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        do
        {
          v18 = v17 + 32 * v13;
          result = *v18;
          v19 = *(v18 + 16);
          v20 = *(v18 + 24);
          v21 = *v18 == v8 && *(v18 + 8) == v7;
          if (v21 || (result = sub_1B0E46A78(), (result & 1) != 0))
          {
            if (v20)
            {
              if (v10)
              {
                goto LABEL_3;
              }
            }

            else
            {
              if (((v19 ^ v9) & 0xFFFFFFFFFFFFC000) != 0)
              {
                v22 = 1;
              }

              else
              {
                v22 = v10;
              }

              if ((v22 & 1) == 0)
              {
LABEL_3:

                v3 = v27;
                v1 = v28;
                goto LABEL_4;
              }
            }
          }

          v13 = (v13 + 1) & v12;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
        }

        while ((v15 & (1 << v13)) != 0);
        v3 = v27;
        v1 = v28;
        v17 = *(v27 + 48);
      }

      *(v5 + 8 * v14) = v15 | v16;
      v23 = v17 + 32 * v13;
      *v23 = v8;
      *(v23 + 8) = v7;
      *(v23 + 16) = v9;
      *(v23 + 24) = v10;
      v24 = *(v3 + 16);
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        break;
      }

      *(v3 + 16) = v26;
LABEL_4:
      v4 = v30 + 1;
      if (v30 + 1 == v1)
      {
        return v3;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

uint64_t sub_1B0BF4770(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1B0BF70D0();
  result = MEMORY[0x1B2727570](v2, &type metadata for Capability, v3);
  v11 = result;
  if (v2)
  {
    v5 = (a1 + 56);
    do
    {
      v6 = *v5;
      v8 = *(v5 - 2);
      v7 = *(v5 - 1);
      v9 = *(v5 - 3);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0C1FB18(v10, v9, v8, v7, v6);

      v5 += 32;
      --v2;
    }

    while (v2);
    return v11;
  }

  return result;
}

uint64_t sub_1B0BF4820(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = _s6LoggerVMa_0(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v72 - v12;
  v79 = type metadata accessor for ClientCommand(0);
  MEMORY[0x1EEE9AC00](v79);
  v80 = (&v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = type metadata accessor for ConnectionState(0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B038CA0C(a3, v17, type metadata accessor for ConnectionState);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    return sub_1B038C704(v17, type metadata accessor for ConnectionState);
  }

  v76 = a3;
  v77 = a4;
  v73 = a2;
  v74 = v10;
  v72 = v8;
  v75 = v13;
  v78 = a1;
  v18 = *v17;
  v19 = *(v17 + 120);
  v20 = *(v17 + 152);
  v118 = *(v17 + 136);
  v119 = v20;
  v120 = *(v17 + 168);
  v21 = *(v17 + 56);
  v22 = *(v17 + 88);
  v114 = *(v17 + 72);
  v115 = v22;
  v116 = *(v17 + 104);
  v117 = v19;
  v23 = *(v17 + 24);
  v110 = *(v17 + 8);
  v111 = v23;
  v112 = *(v17 + 40);
  v113 = v21;
  v24 = *(v17 + 23);
  v25 = *(v17 + 21);
  v107 = *(v17 + 20);
  v108 = v25;
  v109 = *(v17 + 176);
  v26 = *(v17 + 17);
  v103 = *(v17 + 16);
  v104 = v26;
  v27 = *(v17 + 19);
  v105 = *(v17 + 18);
  v106 = v27;
  v28 = *(v17 + 13);
  v99 = *(v17 + 12);
  v100 = v28;
  v29 = *(v17 + 15);
  v101 = *(v17 + 14);
  v102 = v29;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v30 = Capability.id.unsafeMutableAddressor();
  v31 = *v30;
  v32 = v30[1];
  v33 = v30[2];
  v34 = *(v30 + 24);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  LOBYTE(v31) = sub_1B039F8EC(v31, v32, v33, v34, v18);
  v35 = v18;

  if ((v31 & 1) != 0 && (v36 = v78, (sub_1B038F0C4(v24, v78) & 1) == 0))
  {
    v39 = v76;
    sub_1B038C704(v76, type metadata accessor for ConnectionState);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

    *&v98[120] = v117;
    *&v98[136] = v118;
    *&v98[152] = v119;
    *&v98[168] = v120;
    *&v98[56] = v113;
    *&v98[72] = v114;
    *&v98[88] = v115;
    *&v98[104] = v116;
    *&v98[8] = v110;
    *&v98[24] = v111;
    *&v98[40] = v112;
    *v98 = v18;
    *&v98[184] = v36;
    *&v98[320] = v107;
    *&v98[336] = v108;
    *&v98[352] = v109;
    *&v98[256] = v103;
    *&v98[272] = v104;
    *&v98[304] = v106;
    *&v98[288] = v105;
    *&v98[192] = v99;
    *&v98[208] = v100;
    *&v98[240] = v102;
    *&v98[224] = v101;
    memcpy(v39, v98, 0x162uLL);
    swift_storeEnumTagMultiPayload();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0BF6EEC(v98, v81);
    sub_1B0C090B4(v36, v121);
    *(v81 + 7) = v121[0];
    *(&v81[2] + 7) = v121[1];
    *(&v81[4] + 7) = v121[2];
    *(&v81[6] + 7) = v121[3];
    *(&v81[8] + 7) = v122;
    v93 = 3;
    *&v94[16] = *&v81[2];
    *&v94[32] = *&v81[4];
    *&v94[48] = *&v81[6];
    *&v94[63] = *(&v81[7] + 7);
    *v94 = *v81;
    v96 = 0;
    v95 = 0;
    v97 = 0;
    v127 = v122;
    v125 = *&v94[39];
    v126 = *&v94[55];
    v123 = *&v94[7];
    v124 = *&v94[23];
    v40 = sub_1B0C06D08(*&v94[7]);
    v42 = v41;
    v44 = v43;
    sub_1B0BF6F24(&v93);
    v45 = v80;
    *v80 = v40;
    *(v45 + 8) = v42;
    *(v45 + 16) = v44;
    swift_storeEnumTagMultiPayload();

    v79 = CommandConnection.send(_:)(v45);
    v47 = v46;
    CommandConnection.flush()();
    sub_1B038C704(v45, type metadata accessor for ClientCommand);
    if (v47)
    {
    }

    else
    {
      v76 = v44;
      v77 = v42;
      v80 = v40;
      v48 = v73;
      v49 = v75;
      sub_1B038CA0C(v73, v75, _s6LoggerVMa_0);
      v50 = v74;
      sub_1B038CA0C(v48, v74, _s6LoggerVMa_0);
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v51 = sub_1B0E43988();
      v52 = sub_1B0E45908();

      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        v73 = v35;
        v54 = v53;
        v55 = swift_slowAlloc();
        v56 = v50;
        v57 = v55;
        v81[0] = v55;
        *v54 = 68158722;
        *(v54 + 4) = 2;
        *(v54 + 8) = 256;
        v58 = v72;
        v59 = *(v56 + *(v72 + 20));
        sub_1B038C704(v56, _s6LoggerVMa_0);
        *(v54 + 10) = v59;
        *(v54 + 11) = 2082;
        v60 = *(v49 + *(v58 + 20) + 4);
        sub_1B038C704(v49, _s6LoggerVMa_0);
        v61 = ConnectionID.debugDescription.getter(v60);
        v63 = sub_1B0399D64(v61, v62, v81);

        *(v54 + 13) = v63;
        *(v54 + 21) = 2080;
        v64 = sub_1B0C091FC(v78);
        if (v65)
        {
          v66 = v65;
        }

        else
        {
          v64 = 4999502;
          v66 = 0xE300000000000000;
        }

        v67 = sub_1B0399D64(v64, v66, v81);

        *(v54 + 23) = v67;
        *(v54 + 31) = 2082;
        v36 = v78;
        v68 = Tag.debugDescription.getter(v79 & 0xFFFFFFFF000000FFLL);
        v70 = sub_1B0399D64(v68, v69, v81);

        *(v54 + 33) = v70;
        _os_log_impl(&dword_1B0389000, v51, v52, "[%.*hhx-%{public}s] Sending connection traits %s as %{public}s", v54, 0x29u);
        swift_arrayDestroy();
        MEMORY[0x1B272C230](v57, -1, -1);
        v71 = v54;
        v35 = v73;
        MEMORY[0x1B272C230](v71, -1, -1);
      }

      else
      {
        sub_1B038C704(v50, _s6LoggerVMa_0);

        sub_1B038C704(v49, _s6LoggerVMa_0);
      }
    }

    *&v81[15] = v117;
    *&v81[17] = v118;
    *&v81[19] = v119;
    *&v81[21] = v120;
    *&v81[7] = v113;
    *&v81[9] = v114;
    *&v81[11] = v115;
    *&v81[13] = v116;
    *&v81[1] = v110;
    *&v81[3] = v111;
    v81[0] = v35;
    *&v81[5] = v112;
    v81[23] = v36;
    v90 = v107;
    v91 = v108;
    v92 = v109;
    v86 = v103;
    v87 = v104;
    v89 = v106;
    v88 = v105;
    v82 = v99;
    v83 = v100;
    v85 = v102;
    v84 = v101;
    v38 = v81;
  }

  else
  {
    *&v98[120] = v117;
    *&v98[136] = v118;
    *&v98[152] = v119;
    *&v98[168] = v120;
    *&v98[56] = v113;
    *&v98[72] = v114;
    *&v98[88] = v115;
    *&v98[104] = v116;
    *&v98[8] = v110;
    *&v98[24] = v111;
    *&v98[40] = v112;
    *v98 = v18;
    *&v98[184] = v24;
    *&v98[320] = v107;
    *&v98[336] = v108;
    *&v98[352] = v109;
    *&v98[256] = v103;
    *&v98[272] = v104;
    *&v98[304] = v106;
    *&v98[288] = v105;
    *&v98[192] = v99;
    *&v98[208] = v100;
    *&v98[240] = v102;
    *&v98[224] = v101;
    v38 = v98;
  }

  return sub_1B0BE278C(v38);
}

uint64_t sub_1B0BF5170(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5550, &qword_1B0ED2720);
    v2 = sub_1B0E46228();
    v3 = v2 + 56;
    while (1)
    {
      sub_1B0E46C28();
      MEMORY[0x1B2728D70](0);
      result = sub_1B0E46CB8();
      v5 = result & ~(-1 << *(v2 + 32));
      v6 = v5 >> 6;
      v7 = *(v3 + 8 * (v5 >> 6));
      v8 = 1 << v5;
      if ((v8 & v7) == 0)
      {
        *(v3 + 8 * v6) = v8 | v7;
        v9 = *(v2 + 16);
        v10 = __OFADD__(v9, 1);
        v11 = v9 + 1;
        if (v10)
        {
          __break(1u);
          return result;
        }

        *(v2 + 16) = v11;
      }

      if (!--v1)
      {
        return v2;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

unint64_t sub_1B0BF5254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v60 = a5;
  v61 = type metadata accessor for ClientCommand(0);
  MEMORY[0x1EEE9AC00](v61);
  v12 = &v55[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v59 = _s6LoggerVMa_0(0);
  MEMORY[0x1EEE9AC00](v59);
  v14 = &v55[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v55[-v16];
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v55[-v19];
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v55[-v22];
  if (a2 < 0)
  {
    sub_1B038CA0C(a4, v17, _s6LoggerVMa_0);
    sub_1B038CA0C(a4, v14, _s6LoggerVMa_0);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v38 = sub_1B0E43988();
    v39 = sub_1B0E45908();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v60 = a1;
      v41 = v40;
      v57 = swift_slowAlloc();
      v64 = v57;
      *v41 = 68158723;
      *(v41 + 4) = 2;
      *(v41 + 8) = 256;
      v42 = v59;
      v43 = *(v59 + 20);
      v56 = v39;
      v44 = v14[v43];
      v58 = a6;
      sub_1B038C704(v14, _s6LoggerVMa_0);
      *(v41 + 10) = v44;
      *(v41 + 11) = 2082;
      v45 = *&v17[*(v42 + 20) + 4];
      sub_1B038C704(v17, _s6LoggerVMa_0);
      v46 = ConnectionID.debugDescription.getter(v45);
      v48 = sub_1B0399D64(v46, v47, &v64);

      *(v41 + 13) = v48;
      *(v41 + 21) = 2160;
      *(v41 + 23) = 0x786F626C69616DLL;
      *(v41 + 31) = 2085;
      v62 = v60;
      v63 = a2;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v49 = sub_1B0E44BA8();
      v51 = sub_1B0399D64(v49, v50, &v64);

      *(v41 + 33) = v51;
      _os_log_impl(&dword_1B0389000, v38, v56, "[%.*hhx-%{public}s] Mailbox selection: Requesting mailbox status '%{sensitive,mask.mailbox}s'.", v41, 0x29u);
      v52 = v57;
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v52, -1, -1);
      a1 = v60;
      MEMORY[0x1B272C230](v41, -1, -1);
    }

    else
    {
      sub_1B038C704(v14, _s6LoggerVMa_0);

      sub_1B038C704(v17, _s6LoggerVMa_0);
    }

    *v12 = a1;
    *(v12 + 2) = a2;
    *(v12 + 2) = a3;
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    sub_1B038CA0C(a4, &v55[-v22], _s6LoggerVMa_0);
    sub_1B038CA0C(a4, v20, _s6LoggerVMa_0);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v24 = sub_1B0E43988();
    v25 = sub_1B0E45908();
    sub_1B0BF6CF8(a1, a2);
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v56 = v25;
      v27 = v26;
      v57 = swift_slowAlloc();
      v64 = v57;
      *v27 = 68158723;
      *(v27 + 4) = 2;
      *(v27 + 8) = 256;
      v28 = v59;
      v29 = v20[*(v59 + 20)];
      v58 = a6;
      sub_1B038C704(v20, _s6LoggerVMa_0);
      *(v27 + 10) = v29;
      *(v27 + 11) = 2082;
      v30 = *&v23[*(v28 + 20) + 4];
      sub_1B038C704(v23, _s6LoggerVMa_0);
      v31 = ConnectionID.debugDescription.getter(v30);
      v33 = sub_1B0399D64(v31, v32, &v64);

      *(v27 + 13) = v33;
      *(v27 + 21) = 2160;
      *(v27 + 23) = 0x786F626C69616DLL;
      *(v27 + 31) = 2085;
      v62 = a1;
      v63 = a2;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v34 = sub_1B0E44BA8();
      v36 = sub_1B0399D64(v34, v35, &v64);

      *(v27 + 33) = v36;
      _os_log_impl(&dword_1B0389000, v24, v56, "[%.*hhx-%{public}s] Selecting mailbox '%{sensitive,mask.mailbox}s'.", v27, 0x29u);
      v37 = v57;
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v37, -1, -1);
      MEMORY[0x1B272C230](v27, -1, -1);
    }

    else
    {
      sub_1B038C704(v20, _s6LoggerVMa_0);

      sub_1B038C704(v23, _s6LoggerVMa_0);
    }

    *v12 = a1;
    *(v12 + 2) = a2;
    *(v12 + 2) = v60;
    swift_storeEnumTagMultiPayload();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  v53 = CommandConnection.send(_:)(v12);
  CommandConnection.flush()();
  sub_1B038C704(v12, type metadata accessor for ClientCommand);
  return v53;
}

uint64_t sub_1B0BF58F8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_1B0E46228();
    v6 = 0;
    v7 = v5 + 56;
    v8 = a1 + 32;
    while (1)
    {
      v12 = *(v8 + v6);
      sub_1B0E46C28();
      MEMORY[0x1B2728D70](v12);
      result = sub_1B0E46CB8();
      v14 = ~(-1 << *(v5 + 32));
      v15 = result & v14;
      v16 = (result & v14) >> 6;
      v17 = *(v7 + 8 * v16);
      v18 = 1 << (result & v14);
      v19 = *(v5 + 48);
      if ((v18 & v17) != 0)
      {
        while (*(v19 + v15) != v12)
        {
          v15 = (v15 + 1) & v14;
          v16 = v15 >> 6;
          v17 = *(v7 + 8 * (v15 >> 6));
          v18 = 1 << v15;
          if (((1 << v15) & v17) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v7 + 8 * v16) = v18 | v17;
        *(v19 + v15) = v12;
        v9 = *(v5 + 16);
        v10 = __OFADD__(v9, 1);
        v11 = v9 + 1;
        if (v10)
        {
          __break(1u);
          return result;
        }

        *(v5 + 16) = v11;
      }

      if (++v6 == v3)
      {
        return v5;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

int8x16_t sub_1B0BF5A2C(uint64_t a1)
{
  v1 = *(a1 + 160);
  v2 = *(a1 + 72) & 0x1FFFFFFFFLL;
  v3 = *(a1 + 88) & 0x1E101FFLL;
  *(a1 + 48) &= 0x1FFFFFFFFuLL;
  *(a1 + 72) = v2;
  *(a1 + 88) = v3;
  *(a1 + 112) = vandq_s8(*(a1 + 112), xmmword_1B0ED0F80);
  result = vandq_s8(*(a1 + 136), vdupq_n_s64(0x1FFFFFFFFuLL));
  *(a1 + 136) = result;
  *(a1 + 160) = v1 & 0x1FF | 0x4000;
  return result;
}

unint64_t sub_1B0BF5A98()
{
  result = qword_1EB6E5548;
  if (!qword_1EB6E5548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5548);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12NIOIMAPCore212ResponseTextVSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_15IMAP2Connection23MailboxSelectionFailureVSg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_15IMAP2Connection21MailboxSelectionStateV5ErrorO(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 > 2)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t get_enum_tag_for_layout_string_15IMAP2Connection21MailboxSelectionStateV0E0O(uint64_t a1)
{
  if ((*(a1 + 72) | (*(a1 + 74) << 16)) << 8 >> 8 >= 0)
  {
    return *(a1 + 74) >> 5;
  }

  else
  {
    return (*a1 + 4);
  }
}

uint64_t sub_1B0BF5B70(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 354))
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

uint64_t sub_1B0BF5BB8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 344) = 0;
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
    *(result + 328) = 0u;
    *(result + 352) = 0;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 354) = 1;
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

    *(result + 354) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_15IMAP2Connection18AuthenticatedStateV16MailboxSelectionO(uint64_t a1)
{
  if ((*(a1 + 12) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 12) & 3;
  }
}

uint64_t sub_1B0BF5C94(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 13))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 12);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1B0BF5CDC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 12) = 0;
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 13) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 13) = 0;
    }

    if (a2)
    {
      *(result + 12) = -a2;
    }
  }

  return result;
}

uint64_t sub_1B0BF5D24(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 12) = a2;
  return result;
}

__n128 __swift_memcpy162_8(uint64_t a1, __int128 *a2)
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
  *(a1 + 160) = *(a2 + 80);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_1B0BF5D8C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 162))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 72) >> 2) & 0x80000000 | (*(a1 + 48) >> 33);
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_1B0BF5DEC(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 152) = 0;
    result = 0.0;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 160) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 162) = 1;
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
      result = 0.0;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
      *(a1 + 48) = -a2 << 33;
      *(a1 + 56) = 0;
      *(a1 + 64) = 0;
      *(a1 + 72) = 0x200000000;
      *(a1 + 80) = 0u;
      *(a1 + 96) = 0u;
      *(a1 + 112) = 0u;
      *(a1 + 128) = 0u;
      *(a1 + 144) = 0u;
      *(a1 + 160) = 0;
      return result;
    }

    *(a1 + 162) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

int8x16_t sub_1B0BF5E80(uint64_t a1, __int16 a2)
{
  v2 = *(a1 + 72) & 0x1FFFFFFFFLL;
  v3 = *(a1 + 88) & 0x1E101FFLL;
  v4 = *(a1 + 160) & 0x1FF | (a2 << 14);
  *(a1 + 48) &= 0x1FFFFFFFFuLL;
  *(a1 + 72) = v2;
  *(a1 + 88) = v3;
  *(a1 + 112) = vandq_s8(*(a1 + 112), xmmword_1B0ED0F80);
  result = vandq_s8(*(a1 + 136), vdupq_n_s64(0x1FFFFFFFFuLL));
  *(a1 + 136) = result;
  *(a1 + 160) = v4;
  return result;
}

uint64_t sub_1B0BF5EF8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (result)
  {

    return sub_1B0B6DCF0(a3, a4, a5);
  }

  return result;
}

unint64_t sub_1B0BF5F50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v60 = a5;
  v61 = type metadata accessor for ClientCommand(0);
  MEMORY[0x1EEE9AC00](v61);
  v12 = &v55[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v59 = _s6LoggerVMa_0(0);
  MEMORY[0x1EEE9AC00](v59);
  v14 = &v55[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v55[-v16];
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v55[-v19];
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v55[-v22];
  if (a2 < 0)
  {
    sub_1B038CA0C(a4, v17, _s6LoggerVMa_0);
    sub_1B038CA0C(a4, v14, _s6LoggerVMa_0);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v38 = sub_1B0E43988();
    v39 = sub_1B0E45908();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v60 = a1;
      v41 = v40;
      v57 = swift_slowAlloc();
      v64 = v57;
      *v41 = 68158723;
      *(v41 + 4) = 2;
      *(v41 + 8) = 256;
      v42 = v59;
      v43 = *(v59 + 20);
      v56 = v39;
      v44 = v14[v43];
      v58 = a6;
      sub_1B038C704(v14, _s6LoggerVMa_0);
      *(v41 + 10) = v44;
      *(v41 + 11) = 2082;
      v45 = *&v17[*(v42 + 20) + 4];
      sub_1B038C704(v17, _s6LoggerVMa_0);
      v46 = ConnectionID.debugDescription.getter(v45);
      v48 = sub_1B0399D64(v46, v47, &v64);

      *(v41 + 13) = v48;
      *(v41 + 21) = 2160;
      *(v41 + 23) = 0x786F626C69616DLL;
      *(v41 + 31) = 2085;
      v62 = v60;
      v63 = a2;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v49 = sub_1B0E44BA8();
      v51 = sub_1B0399D64(v49, v50, &v64);

      *(v41 + 33) = v51;
      _os_log_impl(&dword_1B0389000, v38, v56, "[%.*hhx-%{public}s] Mailbox selection: Requesting mailbox status '%{sensitive,mask.mailbox}s'.", v41, 0x29u);
      v52 = v57;
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v52, -1, -1);
      a1 = v60;
      MEMORY[0x1B272C230](v41, -1, -1);
    }

    else
    {
      sub_1B038C704(v14, _s6LoggerVMa_0);

      sub_1B038C704(v17, _s6LoggerVMa_0);
    }

    *v12 = a1;
    *(v12 + 2) = a2;
    *(v12 + 2) = a3;
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    sub_1B038CA0C(a4, &v55[-v22], _s6LoggerVMa_0);
    sub_1B038CA0C(a4, v20, _s6LoggerVMa_0);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v24 = sub_1B0E43988();
    v25 = sub_1B0E45908();
    sub_1B0BF6CF8(a1, a2);
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v56 = v25;
      v27 = v26;
      v57 = swift_slowAlloc();
      v64 = v57;
      *v27 = 68158723;
      *(v27 + 4) = 2;
      *(v27 + 8) = 256;
      v28 = v59;
      v29 = v20[*(v59 + 20)];
      v58 = a6;
      sub_1B038C704(v20, _s6LoggerVMa_0);
      *(v27 + 10) = v29;
      *(v27 + 11) = 2082;
      v30 = *&v23[*(v28 + 20) + 4];
      sub_1B038C704(v23, _s6LoggerVMa_0);
      v31 = ConnectionID.debugDescription.getter(v30);
      v33 = sub_1B0399D64(v31, v32, &v64);

      *(v27 + 13) = v33;
      *(v27 + 21) = 2160;
      *(v27 + 23) = 0x786F626C69616DLL;
      *(v27 + 31) = 2085;
      v62 = a1;
      v63 = a2;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v34 = sub_1B0E44BA8();
      v36 = sub_1B0399D64(v34, v35, &v64);

      *(v27 + 33) = v36;
      _os_log_impl(&dword_1B0389000, v24, v56, "[%.*hhx-%{public}s] Selecting mailbox '%{sensitive,mask.mailbox}s'.", v27, 0x29u);
      v37 = v57;
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v37, -1, -1);
      MEMORY[0x1B272C230](v27, -1, -1);
    }

    else
    {
      sub_1B038C704(v20, _s6LoggerVMa_0);

      sub_1B038C704(v23, _s6LoggerVMa_0);
    }

    *v12 = a1;
    *(v12 + 2) = a2;
    *(v12 + 2) = v60;
    swift_storeEnumTagMultiPayload();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  v53 = CommandConnection.send(_:)(v12);
  sub_1B038C704(v12, type metadata accessor for ClientCommand);
  return v53;
}

uint64_t sub_1B0BF65C8(uint64_t a1, uint64_t (*a2)(__n128), uint64_t a3, uint64_t (*a4)(__n128), uint64_t a5)
{
  v10 = type metadata accessor for ConnectionState(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v80 - v14;
  swift_retain_n();
  v16 = sub_1B044D8E4();
  sub_1B038CA0C(a2, v15, type metadata accessor for ConnectionState);
  if (swift_getEnumCaseMultiPayload() != 2)
  {

    sub_1B038C704(v15, type metadata accessor for ConnectionState);
    goto LABEL_20;
  }

  v88 = a5;
  sub_1B038C704(a2, type metadata accessor for ConnectionState);
  memcpy(v119, v15, 0x162uLL);
  v17 = *(v15 + 19);
  v18 = *(v15 + 21);
  v113 = *(v15 + 20);
  v114 = v18;
  v19 = *(v15 + 15);
  v20 = *(v15 + 17);
  v109 = *(v15 + 16);
  v110 = v20;
  v21 = *(v15 + 17);
  v22 = *(v15 + 19);
  v111 = *(v15 + 18);
  v112 = v22;
  v23 = *(v15 + 13);
  v105 = *(v15 + 12);
  v106 = v23;
  v24 = *(v15 + 15);
  v26 = *(v15 + 12);
  v25 = *(v15 + 13);
  v107 = *(v15 + 14);
  v108 = v24;
  v27 = *(v15 + 21);
  v116[8] = v113;
  v116[9] = v27;
  v116[4] = v109;
  v116[5] = v21;
  v116[6] = v111;
  v116[7] = v17;
  v116[0] = v26;
  v116[1] = v25;
  v115 = *(v15 + 176);
  v117 = *(v15 + 176);
  v116[2] = v107;
  v116[3] = v19;
  if (sub_1B0BE2780(v116) == 1)
  {
    v86 = a4;
    v89 = a1;
    v28 = sub_1B03DB9A4(v116);
    v96[8] = v119[20];
    v96[9] = v119[21];
    v97 = v119[22];
    v96[4] = v119[16];
    v96[5] = v119[17];
    v96[6] = v119[18];
    v96[7] = v119[19];
    v96[0] = v119[12];
    v96[1] = v119[13];
    v96[2] = v119[14];
    v96[3] = v119[15];
    v98[8] = v113;
    v98[9] = v114;
    v99 = v115;
    v98[4] = v109;
    v98[5] = v110;
    v98[6] = v111;
    v98[7] = v112;
    v98[0] = v105;
    v98[1] = v106;
    v98[2] = v107;
    v98[3] = v108;
    v29 = sub_1B03DB9A4(v98);
    sub_1B0BE2834(v29, &v90);
    sub_1B0BE27E0(v96);
    v30 = *v28;
    v31 = *(v28 + 8);
    v104 = *v28;
    v32 = *(v28 + 16);
    v33 = *(v28 + 24);
    v34 = *(v28 + 32);
    v35 = *(v28 + 40);
    v37 = *(v28 + 48);
    v36 = *(v28 + 56);
    v38 = *(v28 + 64);
    v39 = *(v28 + 72);
    v40 = *(v28 + 80);
    v41 = *(v28 + 88) | (*(v28 + 90) << 16);
    v42 = *(v28 + 91);
    v43 = *(v28 + 107);
    v44 = *(v28 + 123);
    v45 = *(v28 + 139);
    *(v103 + 15) = *(v28 + 154);
    v102 = v44;
    v103[0] = v45;
    v100 = v42;
    v101 = v43;
    if ((v41 & 0xE00000) == 0x800000)
    {
      v46 = v37 | v36 | v38;
      if (!(v34 | v33 | v32 | v35 | v46 | v39 | v40) && v41 == 0x800000)
      {
        v87 = v37;
        v88 = v32;
        v80 = v39;
        v81 = v38;
        v82 = v40;
        v83 = v36;
        v84 = v34;
        v85 = v33;
        v47 = v30;
        v48 = v31;

        v49 = (v86)(v47, v48, 0, v89, v16, a3);
        LOBYTE(v47) = v50;

        if (v47)
        {
          v51 = 0x800000;
          v53 = v84;
          v52 = v85;
          v55 = v82;
          v54 = v83;
          v37 = v87;
          v56 = v88;
          v58 = v80;
          v57 = v81;
        }

        else
        {
          v69 = v87;
          v71 = v84;
          v70 = v85;
          *&v90 = v88;
          *(&v90 + 1) = v85;
          *&v91 = v84;
          *(&v91 + 1) = v35;
          v87 = v10;
          v88 = v49;
          v72 = v82;
          v73 = v83;
          *&v92 = v69;
          *(&v92 + 1) = v83;
          *&v93 = v81;
          *(&v93 + 1) = v80;
          *&v94 = v82;
          BYTE10(v94) = 0x80;
          WORD4(v94) = 0;
          sub_1B0BF6CA4(&v90);
          v55 = v72;
          v56 = v88;
          v54 = v73;
          v53 = v71;
          v52 = v70;
          v37 = 0;
          v57 = 0;
          v58 = 0;
          v51 = 0;
        }

        goto LABEL_18;
      }

      if (v41 == 0x800000 && v32 == 1 && !(v34 | v33 | v35 | v46 | v39 | v40))
      {
        v80 = v39;
        v81 = v38;
        v82 = v40;
        v83 = v36;
        v84 = v34;
        v85 = v33;
        v87 = v31;

        v59 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v88 = (v86)(v59, v87 | 0x8000000000000000, v88, v89, v16, a3);
        LODWORD(v87) = v60;

        if (v87)
        {
          v51 = 0x800000;
          v56 = 1;
          v53 = v84;
          v52 = v85;
          v55 = v82;
          v54 = v83;
          v58 = v80;
          v57 = v81;
        }

        else
        {
          v74 = v85;
          *&v90 = 1;
          *(&v90 + 1) = v85;
          v75 = v37;
          v77 = v83;
          v76 = v84;
          *&v91 = v84;
          *(&v91 + 1) = v35;
          *&v92 = v75;
          *(&v92 + 1) = v83;
          *&v93 = v81;
          *(&v93 + 1) = v80;
          v87 = v10;
          v78 = v82;
          *&v94 = v82;
          BYTE10(v94) = 0x80;
          WORD4(v94) = 0;
          sub_1B0BF6CA4(&v90);
          v55 = v78;
          v56 = v88;
          v54 = v77;
          v53 = v76;
          v52 = v74;
          v37 = 0;
          v57 = 0;
          v58 = 0;
          v51 = 0x200000;
        }

        goto LABEL_18;
      }
    }

    v87 = v37;
    v88 = v32;
    v61 = v33;
    v84 = a3;
    v85 = v12;
    v62 = v35;
    v63 = v34;
    v64 = v36;
    v86 = a2;
    v65 = v40;
    v66 = v38;
    v67 = v39;
    v68 = v41;

    v51 = v68;
    v58 = v67;
    v57 = v66;
    v55 = v65;
    v37 = v87;
    v56 = v88;
    v12 = v85;
    a2 = v86;
    v54 = v64;
    v53 = v63;
    v35 = v62;
    v52 = v61;
LABEL_18:
    v90 = v104;
    *(&v95[1] + 11) = v101;
    *(&v95[2] + 11) = v102;
    *(&v95[3] + 11) = v103[0];
    *&v91 = v56;
    *(&v91 + 1) = v52;
    *&v92 = v53;
    *(&v92 + 1) = v35;
    *&v93 = v37;
    *(&v93 + 1) = v54;
    *&v94 = v57;
    *(&v94 + 1) = v58;
    *&v95[0] = v55;
    WORD4(v95[0]) = v51;
    BYTE10(v95[0]) = BYTE2(v51);
    *(&v95[4] + 10) = *(v103 + 15);
    *(v95 + 11) = v100;
    sub_1B0BF5A2C(&v90);
    v119[20] = v95[3];
    v119[21] = v95[4];
    LOWORD(v119[22]) = v95[5];
    v119[16] = v94;
    v119[17] = v95[0];
    v119[18] = v95[1];
    v119[19] = v95[2];
    v119[12] = v90;
    v119[13] = v91;
    v119[14] = v92;
    v119[15] = v93;
    a1 = v89;
    goto LABEL_19;
  }

LABEL_19:
  memcpy(a2, v119, 0x162uLL);
  swift_storeEnumTagMultiPayload();
LABEL_20:
  sub_1B038CA0C(a2, v12, type metadata accessor for ConnectionState);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_1B038C704(a2, type metadata accessor for ConnectionState);
    memcpy(v118, v12, sizeof(v118));
    sub_1B0BF3738(&v118[192], a1);
    memcpy(a2, v118, 0x162uLL);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    sub_1B038C704(v12, type metadata accessor for ConnectionState);
  }
}

uint64_t sub_1B0BF6CF8(uint64_t a1, uint64_t a2)
{

  if (a2 < 0)
  {
  }

  return result;
}

int8x16_t sub_1B0BF6DA0(uint64_t a1)
{
  v1 = *(a1 + 72) & 0x1FFFFFFFFLL;
  v2 = *(a1 + 88) & 0x1E101FFLL;
  v3 = *(a1 + 160) & 0x1FF;
  *(a1 + 48) &= 0x1FFFFFFFFuLL;
  *(a1 + 72) = v1;
  *(a1 + 88) = v2;
  *(a1 + 112) = vandq_s8(*(a1 + 112), xmmword_1B0ED0F80);
  result = vandq_s8(*(a1 + 136), vdupq_n_s64(0x1FFFFFFFFuLL));
  *(a1 + 136) = result;
  *(a1 + 160) = v3;
  return result;
}

double sub_1B0BF6E04(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 != 0xFF)
  {
    return sub_1B0A91FD0(a1, a2, a3, a4);
  }

  return result;
}

int8x16_t sub_1B0BF6E18(uint64_t a1)
{
  v1 = *(a1 + 160);
  v2 = *(a1 + 72) & 0x1FFFFFFFFLL;
  v3 = *(a1 + 88) & 0x1E101FFLL;
  *(a1 + 48) &= 0x1FFFFFFFFuLL;
  *(a1 + 72) = v2;
  *(a1 + 88) = v3;
  *(a1 + 112) = vandq_s8(*(a1 + 112), xmmword_1B0ED0F80);
  result = vandq_s8(*(a1 + 136), vdupq_n_s64(0x1FFFFFFFFuLL));
  *(a1 + 136) = result;
  *(a1 + 160) = v1 & 0x1FF | 0x8000;
  return result;
}

unint64_t sub_1B0BF6E80()
{
  result = qword_1EB6E5560;
  if (!qword_1EB6E5560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5560);
  }

  return result;
}

uint64_t sub_1B0BF6ED4(uint64_t result, unint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1B0BCDEB0(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1B0BF6FCC(uint64_t *a1)
{
  v3 = *(_s6LoggerVMa_0(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 8);

  return sub_1B0BF3180(a1, v1 + v4, v6, v7);
}

unint64_t sub_1B0BF70D0()
{
  result = qword_1EB6DE9D8;
  if (!qword_1EB6DE9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6DE9D8);
  }

  return result;
}

uint64_t sub_1B0BF71E4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x6C69662D6B636162;
    }

    else
    {
      v4 = 0x72657865646E69;
    }

    if (v2)
    {
      v3 = 0xE90000000000006CLL;
    }

    else
    {
      v3 = 0xE700000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE800000000000000;
    v4 = 0x6574616E6F646572;
  }

  else if (a1 == 3)
  {
    v3 = 0xE800000000000000;
    v4 = 0x6369646F69726570;
  }

  else
  {
    v3 = 0xE400000000000000;
    v4 = 1752397168;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x6C69662D6B636162;
    }

    else
    {
      v9 = 0x72657865646E69;
    }

    if (a2)
    {
      v8 = 0xE90000000000006CLL;
    }

    else
    {
      v8 = 0xE700000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xE800000000000000;
    v6 = 0x6369646F69726570;
    if (a2 != 3)
    {
      v6 = 1752397168;
      v5 = 0xE400000000000000;
    }

    if (a2 == 2)
    {
      v7 = 0x6574616E6F646572;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xE800000000000000;
    }

    else
    {
      v8 = v5;
    }

    if (v4 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v8)
  {
LABEL_33:
    v10 = sub_1B0E46A78();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t ConnectionTrait.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x72657865646E69;
  v2 = 0x6574616E6F646572;
  v3 = 0x6369646F69726570;
  if (a1 != 3)
  {
    v3 = 1752397168;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 0x6C69662D6B636162;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1B0BF7410@<X0>(Swift::String *a1@<X0>, IMAP2Connection::ConnectionTrait_optional *a2@<X8>)
{
  result = _s15IMAP2Connection0B5TraitO8rawValueACSgSS_tcfC_0(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

void sub_1B0BF7440(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x72657865646E69;
  v5 = 0xE800000000000000;
  v6 = 0x6574616E6F646572;
  v7 = 0xE800000000000000;
  v8 = 0x6369646F69726570;
  if (v2 != 3)
  {
    v8 = 1752397168;
    v7 = 0xE400000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x6C69662D6B636162;
    v3 = 0xE90000000000006CLL;
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

uint64_t sub_1B0BF74DC()
{
  sub_1B0E46C28();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  return sub_1B0E46CB8();
}

uint64_t sub_1B0BF75BC(uint64_t a1)
{
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_1B0BF7688(uint64_t a1)
{
  sub_1B0E46C28();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  return sub_1B0E46CB8();
}

unint64_t _s15IMAP2Connection0B5TraitO8rawValueACSgSS_tcfC_0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B0E467E8();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

uint64_t ConnectionUsage.mailboxesUsage.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

unint64_t ConnectionUsage.nonMailboxUsage.setter(uint64_t a1)
{
  result = sub_1B03C81E4(*(v1 + 8));
  *(v1 + 8) = a1;
  return result;
}

BOOL static ConnectionUsage.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if ((_s15IMAP2Connection23MailboxesSelectionUsageV23__derived_struct_equalsySbAC_ACtFZ_0(a1, a3) & 1) == 0)
  {
    return 0;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      if (a4 != 1)
      {
        return 0;
      }
    }

    else if (a4 < 2 || (sub_1B0BE9028(a2, a4) & 1) == 0)
    {
      return 0;
    }

    return 1;
  }

  return !a4;
}

uint64_t static ConnectionUsage.NonMailboxUsage.__derived_enum_equals(_:_:)(uint64_t a1, unint64_t a2)
{
  if (!a1)
  {
    return !a2;
  }

  if (a1 == 1)
  {
    return a2 == 1;
  }

  if (a2 < 2)
  {
    return 0;
  }

  return sub_1B0BE9028(a1, a2);
}

BOOL sub_1B0BF793C(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((_s15IMAP2Connection23MailboxesSelectionUsageV23__derived_struct_equalsySbAC_ACtFZ_0(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  if (v2)
  {
    if (v2 == 1)
    {
      if (v3 != 1)
      {
        return 0;
      }
    }

    else if (v3 < 2 || (sub_1B0BE9028(v2, v3) & 1) == 0)
    {
      return 0;
    }

    return 1;
  }

  return !v3;
}

uint64_t sub_1B0BF79D4(uint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (!v2)
  {
    return !v3;
  }

  if (v2 == 1)
  {
    return v3 == 1;
  }

  if (v3 < 2)
  {
    return 0;
  }

  return sub_1B0BE9028(v2, v3);
}

uint64_t _s15IMAP2Connection07CommandB0C12RecentErrorsV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CommandConnection.RecentErrors.Error(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v18 - v9);
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
LABEL_11:
    v16 = 0;
    return v16 & 1;
  }

  if (v11 && a1 != a2)
  {
    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    while (1)
    {
      sub_1B0BF8140(v13, v10);
      sub_1B0BF8140(v14, v6);
      if (*v10 != *v6)
      {
        break;
      }

      v16 = _s15IMAP2Connection07CommandB0C12RecentErrorsV5ErrorV4KindO21__derived_enum_equalsySbAI_AItFZ_0(v10 + *(v4 + 20), v6 + *(v4 + 20));
      sub_1B0BF81A4(v6);
      sub_1B0BF81A4(v10);
      if (v16)
      {
        v14 += v15;
        v13 += v15;
        if (--v11)
        {
          continue;
        }
      }

      return v16 & 1;
    }

    sub_1B0BF81A4(v6);
    sub_1B0BF81A4(v10);
    goto LABEL_11;
  }

  v16 = 1;
  return v16 & 1;
}

uint64_t sub_1B0BF7BC0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 48);
    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      v8 = *(v3 - 2);
      v9 = *(v3 - 1);
      v10 = *v3;
      if (v7 <= 2)
      {
        break;
      }

      if (*i <= 4u)
      {
        if (v7 == 3)
        {
          if (v10 != 3)
          {
            return 0;
          }
        }

        else if (v10 != 4)
        {
          return 0;
        }

LABEL_24:
        if ((v5 != v8 || v6 != v9) && (sub_1B0E46A78() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_6;
      }

      if (v7 == 5)
      {
        if (v10 != 5)
        {
          return 0;
        }

        goto LABEL_24;
      }

      if (v5 > 1)
      {
        v12 = v5 ^ 2;
        result = 0;
        if (v12 | v6)
        {
          if (v10 != 6 || v8 != 3)
          {
            return result;
          }
        }

        else if (v10 != 6 || v8 != 2)
        {
          return result;
        }

LABEL_41:
        if (v9)
        {
          return result;
        }

        goto LABEL_6;
      }

      if (v5 | v6)
      {
        if (v10 != 6)
        {
          return 0;
        }

        result = 0;
        if (v8 != 1)
        {
          return result;
        }

        goto LABEL_41;
      }

      result = 0;
      if (v10 != 6 || v9 | v8)
      {
        return result;
      }

LABEL_6:
      v3 += 24;
      if (!--v2)
      {
        return 1;
      }
    }

    if (*i)
    {
      if (v7 == 1)
      {
        if (v10 != 1)
        {
          return 0;
        }
      }

      else if (v10 != 2)
      {
        return 0;
      }
    }

    else if (*v3)
    {
      return 0;
    }

    goto LABEL_24;
  }

  return 1;
}

uint64_t _s15IMAP2Connection23MailboxesSelectionUsageV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = 0;
  v4 = result + 32;
  v5 = a2 + 32;
  while (v3 != v2)
  {
    v6 = v4 + 40 * v3;
    v7 = v5 + 40 * v3;
    if (*v6 != *v7)
    {
      return 0;
    }

    if ((*(v6 + 16) | (*(v6 + 16) << 32)) != (*(v7 + 16) | (*(v7 + 16) << 32)))
    {
      return 0;
    }

    v8 = *(v6 + 8);
    v9 = *(v7 + 8);
    v10 = *(v8 + 16);
    if (v10 != *(v9 + 16))
    {
      return 0;
    }

    v11 = *(v6 + 24);
    v12 = *(v6 + 32);
    v13 = *(v7 + 24);
    v14 = *(v7 + 32);
    if (v10)
    {
      v15 = v8 == v9;
    }

    else
    {
      v15 = 1;
    }

    if (!v15)
    {
      v16 = (v8 + 32);
      result = v9 + 32;
      while (v10)
      {
        if (*v16 != *result)
        {
          return 0;
        }

        ++v16;
        ++result;
        if (!--v10)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
      break;
    }

LABEL_17:
    if (v12)
    {
      if (v11)
      {
        if (v11 == 1)
        {
          if (v13 != 1)
          {
            LOBYTE(v14) = 0;
          }

          if ((v14 & 1) == 0)
          {
            return 0;
          }
        }

        else
        {
          if (v13 <= 1)
          {
            v14 = 0;
          }

          if (v14 != 1)
          {
            return 0;
          }
        }
      }

      else
      {
        if (v13)
        {
          LOBYTE(v14) = 0;
        }

        if ((v14 & 1) == 0)
        {
          return 0;
        }
      }
    }

    else
    {
      if (v11 != v13)
      {
        LOBYTE(v14) = 1;
      }

      if (v14)
      {
        return 0;
      }
    }

    ++v3;
    result = 1;
    if (v3 == v2)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0BF7EA0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B0BF7EF4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_1B0BF7F50(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_1B0BF7F80(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v36 = v2;
  v37 = v3;
  v5 = (a1 + 32);
  v6 = (a2 + 32);
  for (i = v4 - 1; ; --i)
  {
    v8 = v5[3];
    v20 = v5[2];
    v21 = v8;
    v9 = v5[4];
    v10 = v5[1];
    v18 = *v5;
    v19 = v10;
    v11 = v6[3];
    v25 = v6[2];
    v26 = v11;
    v27 = v6[4];
    v12 = *v6;
    v24 = v6[1];
    v22 = v9;
    v23 = v12;
    v13 = v10;
    if ((*(&v21 + 1) & 0x1000000000000000) != 0)
    {
      v28[0] = v18;
      v28[1] = v19;
      v28[2] = v20;
      v29 = v21;
      v30 = *(&v21 + 1) & 0xEFFFFFFFFFFFFFFFLL;
      v31 = v22;
      if ((*(&v26 + 1) & 0x1000000000000000) == 0)
      {
        return 0;
      }

      v32[0] = v23;
      v32[1] = v24;
      v32[2] = v25;
      v33 = v26;
      v34 = *(&v26 + 1) & 0xEFFFFFFFFFFFFFFFLL;
      v35 = v27;
      sub_1B0BD6700(&v23, v17);
      sub_1B0BD6700(&v18, v17);
      v15 = sub_1B0C0FEBC(v28, v32);
      sub_1B0BD2F90(&v23);
      sub_1B0BD2F90(&v18);
      if ((v15 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if ((HIBYTE(v26) & 0x10) != 0)
      {
        return 0;
      }

      v14 = v24;
      if (v18 != v23 && (sub_1B0E46A78() & 1) == 0)
      {
        return 0;
      }

      if (v13 != v14 && (sub_1B0E46A78() & 1) == 0)
      {
        return 0;
      }
    }

    if (!i)
    {
      break;
    }

    v6 += 5;
    v5 += 5;
  }

  return 1;
}

uint64_t sub_1B0BF8140(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CommandConnection.RecentErrors.Error(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B0BF81A4(uint64_t a1)
{
  v2 = type metadata accessor for CommandConnection.RecentErrors.Error(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t CommandConnection.Constraint.hashValue.getter(char a1)
{
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](a1 & 1);
  return sub_1B0E46CB8();
}

unint64_t sub_1B0BF8284()
{
  result = qword_1EB6E55A8;
  if (!qword_1EB6E55A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E55A8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_15IMAP2Connection14AuthenticationO7CRAMMD5V5StateO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
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

uint64_t sub_1B0BF8334(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3A && *(a1 + 128))
  {
    return (*a1 + 58);
  }

  v3 = (*(a1 + 56) >> 58) & 0xC;
  v4 = (((*(a1 + 79) & 0x30 | v3) >> 3) & 0xFFFFFFC7 | (8 * (v3 & 7 | (*(a1 + 40) >> 60) & 3))) ^ 0x3F;
  if (v4 >= 0x39)
  {
    v4 = -1;
  }

  return v4 + 1;
}

uint64_t sub_1B0BF83A4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x39)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 58;
    if (a3 >= 0x3A)
    {
      *(result + 128) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3A)
    {
      *(result + 128) = 0;
    }

    if (a2)
    {
      *result = 0u;
      *(result + 16) = 0u;
      v3 = (-a2 >> 3) & 7 | (8 * (-a2 & 0x3F));
      *(result + 32) = 0;
      *(result + 40) = ((-a2 >> 3) & 3) << 60;
      *(result + 48) = 0;
      *(result + 56) = (v3 << 58) & 0x3000000000000000;
      *(result + 64) = 0;
      *(result + 72) = (v3 << 56) & 0x3000000000000000;
    }
  }

  return result;
}

uint64_t sub_1B0BF8444(unint64_t a1, unint64_t a2)
{
  v47 = *MEMORY[0x1E69E9840];
  v4 = a2 >> 62;
  v31 = HIDWORD(a1);
  if ((a2 >> 62) <= 1)
  {
    if (!v4)
    {
      v5 = BYTE6(a2);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v4 != 2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v5 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_49;
    }

    v5 = HIDWORD(a1) - a1;
  }

LABEL_10:
  v8 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v46 = MEMORY[0x1E69E7CC0];
    v32 = a2 >> 62;
    sub_1B041D32C(0, v5 & ~(v5 >> 63), 0);
    v9 = v32;
    if (v32)
    {
      if (v32 == 2)
      {
        v10 = *(a1 + 16);
      }

      else
      {
        v10 = a1;
      }
    }

    else
    {
      v10 = 0;
    }

    v33 = v10;
    if (v5 < 0)
    {
      goto LABEL_48;
    }

    v11 = 0;
    v8 = v46;
    v30 = &v34 + v10;
    do
    {
      if (v11 >= v5)
      {
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
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
      }

      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_41;
      }

      v13 = v33 + v11;
      if (v9 == 2)
      {
        if (v13 < *(a1 + 16))
        {
          goto LABEL_43;
        }

        if (v13 >= *(a1 + 24))
        {
          goto LABEL_45;
        }

        v18 = sub_1B0E42A98();
        if (!v18)
        {
          goto LABEL_51;
        }

        v15 = v18;
        v19 = sub_1B0E42AC8();
        v17 = v13 - v19;
        if (__OFSUB__(v13, v19))
        {
          goto LABEL_47;
        }
      }

      else
      {
        if (v9 != 1)
        {
          if (v13 >= BYTE6(a2))
          {
            goto LABEL_42;
          }

          v34 = a1;
          v35 = BYTE2(a1);
          v36 = BYTE3(a1);
          v37 = v31;
          v38 = BYTE5(a1);
          v39 = BYTE6(a1);
          v40 = HIBYTE(a1);
          v41 = a2;
          v42 = BYTE2(a2);
          v43 = BYTE3(a2);
          v44 = BYTE4(a2);
          v45 = BYTE5(a2);
          v20 = v30[v11];
          goto LABEL_36;
        }

        if (v13 < a1 || v13 >= a1 >> 32)
        {
          goto LABEL_44;
        }

        v14 = sub_1B0E42A98();
        if (!v14)
        {
          goto LABEL_50;
        }

        v15 = v14;
        v16 = sub_1B0E42AC8();
        v17 = v13 - v16;
        if (__OFSUB__(v13, v16))
        {
          goto LABEL_46;
        }
      }

      v20 = *(v15 + v17);
      v9 = v32;
LABEL_36:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E55C8, &qword_1B0ED3128);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1B0EC1E70;
      *(v21 + 56) = MEMORY[0x1E69E7508];
      *(v21 + 64) = MEMORY[0x1E69E7558];
      *(v21 + 32) = v20;
      v22 = sub_1B0E44B18();
      v46 = v8;
      v25 = *(v8 + 16);
      v24 = *(v8 + 24);
      if (v25 >= v24 >> 1)
      {
        v29 = v22;
        v27 = v23;
        sub_1B041D32C((v24 > 1), v25 + 1, 1);
        v9 = v32;
        v23 = v27;
        v22 = v29;
        v8 = v46;
      }

      *(v8 + 16) = v25 + 1;
      v26 = v8 + 16 * v25;
      *(v26 + 32) = v22;
      *(v26 + 40) = v23;
      ++v11;
    }

    while (v12 != v5);
  }

  return v8;
}

BOOL sub_1B0BF87C0(uint64_t a1, __int128 *a2)
{
  v2 = *(a1 + 48);
  v21[2] = *(a1 + 32);
  v21[3] = v2;
  v21[4] = *(a1 + 64);
  v3 = *(a1 + 16);
  v21[0] = *a1;
  v21[1] = v3;
  v4 = *(a1 + 80);
  v5 = *(a1 + 88);
  v6 = *(a1 + 96);
  v7 = *(a1 + 104);
  v19 = *(a1 + 120);
  v20 = *(a1 + 112);
  v8 = *a2;
  v9 = a2[1];
  v10 = a2[4];
  v22[3] = a2[3];
  v22[4] = v10;
  v11 = a2[2];
  v22[1] = v9;
  v22[2] = v11;
  v22[0] = v8;
  v13 = *(a2 + 10);
  v12 = *(a2 + 11);
  v14 = *(a2 + 12);
  v15 = *(a2 + 13);
  v16 = *(a2 + 14);
  v17 = *(a2 + 15);
  if ((sub_1B0C0FEBC(v21, v22) & 1) == 0)
  {
    return 0;
  }

  if (v5 >> 60 == 11)
  {
    if (v12 >> 60 != 11)
    {
      return 0;
    }
  }

  else if (v5 >> 60 == 15)
  {
    if (v12 >> 60 != 15)
    {
      return 0;
    }
  }

  else if (((v12 >> 60) | 4) == 0xF || !sub_1B0AB8858(v4, v5, v13, v12))
  {
    return 0;
  }

  if (!sub_1B0AB8858(v6, v7, v14, v15))
  {
    return 0;
  }

  return sub_1B0AB8858(v20, v19, v16, v17);
}

uint64_t sub_1B0BF8914()
{
  v1 = v0[11];
  if (v1 >> 60 == 11)
  {
    sub_1B0BCD47C();
    swift_allocError();
    *v3 = xmmword_1B0ECE570;
    *(v3 + 16) = 1;
    return swift_willThrow();
  }

  else if (v1 >> 60 == 15)
  {
    return 0;
  }

  else
  {
    v4 = v0[10];
    sub_1B03B2000(v4, v0[11]);
    sub_1B0BD1354(v4, v1);
    *(v0 + 5) = xmmword_1B0ECD820;
    v5 = sub_1B0BF8AAC(v0[12], v0[13], v0[14], v0[15], v4, v1);
    sub_1B0BD1354(v4, v1);
    return v5;
  }
}

uint64_t sub_1B0BF8A08(uint64_t a1, unint64_t a2)
{
  v3 = *(v2 + 88);
  if (v3 >> 60 == 15)
  {
    v4 = *(v2 + 80);
    sub_1B03B2000(a1, a2);
    result = sub_1B0BD1354(v4, v3);
    *(v2 + 80) = a1;
    *(v2 + 88) = a2;
  }

  else
  {
    sub_1B0BCD47C();
    swift_allocError();
    *v8 = xmmword_1B0ECE570;
    *(v8 + 16) = 1;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1B0BF8AAC(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v47 = a1;
  v48 = a2;
  v10 = sub_1B0E44508();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E55B0, &qword_1B0ED3120);
  v46 = *(v14 - 8);
  v15 = v46;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v43 - v16;
  v51 = a5;
  v52 = a6;
  v55 = a3;
  v56 = a4;
  sub_1B03B2000(a5, a6);
  sub_1B03B2000(a3, a4);
  sub_1B0E444F8();
  sub_1B0E44568();
  sub_1B0BF8F04();
  sub_1B08DEFE0();
  v45 = v17;
  sub_1B0E44518();
  (*(v11 + 8))(v13, v10);
  sub_1B0391D50(v51, v52);
  v53 = v14;
  v54 = sub_1B039E3F8(&qword_1EB6E55C0, &qword_1EB6E55B0, &qword_1B0ED3120, MEMORY[0x1E69664B0]);
  v18 = __swift_allocate_boxed_opaque_existential_1(&v51);
  v19 = *(v15 + 16);
  v44 = v14;
  v19(v18, v17, v14);
  __swift_project_boxed_opaque_existential_0(&v51, v53);
  sub_1B0E42B88();
  v20 = v55;
  v21 = v56;
  __swift_destroy_boxed_opaque_existential_0(&v51);
  v51 = sub_1B0BF8444(v20, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
  sub_1B039E3F8(&qword_1EB6DB070, &qword_1EB6E2A70, &qword_1B0E9B5F0, MEMORY[0x1E69E6310]);
  v22 = sub_1B0E448E8();
  v24 = v23;
  sub_1B0391D50(v20, v21);

  v25 = sub_1B0C01268(32, 0xE100000000000000);
  v27 = v26;
  v28 = v47;
  v29 = v48;
  v49 = v47;
  v50 = v48;
  v53 = MEMORY[0x1E6969080];
  v54 = MEMORY[0x1E6969078];
  v51 = v25;
  v52 = v26;
  v30 = MEMORY[0x1E6969080];
  v31 = __swift_project_boxed_opaque_existential_0(&v51, MEMORY[0x1E6969080]);
  v32 = *v31;
  v33 = v31[1];
  sub_1B03B2000(v28, v29);
  sub_1B03B2000(v25, v27);
  sub_1B0C05070(v32, v33, &v49);
  sub_1B0391D50(v25, v27);
  __swift_destroy_boxed_opaque_existential_0(&v51);
  v34 = v49;
  v35 = v50;
  v36 = sub_1B0C01268(v22, v24);
  v38 = v37;
  v55 = v34;
  v56 = v35;
  v53 = v30;
  v54 = MEMORY[0x1E6969078];
  v51 = v36;
  v52 = v37;
  v39 = __swift_project_boxed_opaque_existential_0(&v51, v30);
  v40 = *v39;
  v41 = v39[1];
  sub_1B03B2000(v34, v35);
  sub_1B03B2000(v36, v38);
  sub_1B0C05070(v40, v41, &v55);
  sub_1B0391D50(v36, v38);
  sub_1B0391D50(v34, v35);
  (*(v46 + 8))(v45, v44);
  __swift_destroy_boxed_opaque_existential_0(&v51);
  return v55;
}

unint64_t sub_1B0BF8F04()
{
  result = qword_1EB6E55B8;
  if (!qword_1EB6E55B8)
  {
    sub_1B0E44568();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E55B8);
  }

  return result;
}

uint64_t sub_1B0BF8F6C()
{
  v1 = v0;
  v2 = *(v0 + 72);
  if (v2)
  {
    v3 = *(v1 + 64);
    v4 = *(v1 + 24);
    v6 = *(v1 + 40);
    v5 = *(v1 + 48);
    v7 = swift_allocObject();
    *(v7 + 16) = v3;
    *(v7 + 24) = v2;
    *(v7 + 32) = v6;
    *(v7 + 40) = v5;
    *(v7 + 48) = v4;
    swift_retain_n();

    sub_1B0E43DA8();
  }

  return swift_deallocClassInstance();
}

uint64_t DataTransferReport.receivedTransportByteCount.setter(uint64_t result)
{
  *(v1 + 24) = result;
  return result;
}

{
  *v1 = result;
  return result;
}

void (*DataTransferReport.receivedTransportByteCount.modify())()
{
  return __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1;
}

{
  return __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1;
}

uint64_t DataTransferReport.sentTransportByteCount.setter(uint64_t result)
{
  *(v1 + 32) = result;
  return result;
}

{
  *(v1 + 8) = result;
  return result;
}

void (*DataTransferReport.sentTransportByteCount.modify())()
{
  return __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1;
}

{
  return __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1;
}

uint64_t DataTransferReport.init(connection:start:duration:receivedTransportByteCount:sentTransportByteCount:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a6;
  *(a5 + 24) = a3;
  *(a5 + 32) = a4;
  return result;
}

unint64_t DataTransferReport.receivedApplicationBitrate.getter()
{
  v1 = *(v0 + 16);
  if (v1 <= 0.0)
  {
    return 0;
  }

  v2 = *(v0 + 24);
  if ((v2 - 0x1000000000000000) >> 61 == 7)
  {
    v3 = (8 * v2) / v1;
    v4 = round(v3);
    v5 = v4 >= 9.22337204e18 || v4 <= -9.22337204e18;
    v6 = llround(v3);
    if (v5)
    {
      return 0;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t DataTransferReport.sentApplicationBitrate.getter()
{
  v1 = *(v0 + 16);
  if (v1 <= 0.0)
  {
    return 0;
  }

  v2 = *(v0 + 32);
  if ((v2 - 0x1000000000000000) >> 61 == 7)
  {
    v3 = (8 * v2) / v1;
    v4 = round(v3);
    v5 = v4 >= 9.22337204e18 || v4 <= -9.22337204e18;
    v6 = llround(v3);
    if (v5)
    {
      return 0;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B0BF92E4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B0BF9304(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
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

  *(result + 40) = v3;
  return result;
}

ValueMetadata *type metadata accessor for DataTransferReport()
{
  return &type metadata for DataTransferReport;
}

{
  return &type metadata for DataTransferReport;
}

uint64_t sub_1B0BF9348(uint64_t a1, int a2)
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

uint64_t sub_1B0BF9390(uint64_t result, int a2, int a3)
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

int *sub_1B0BF93DC@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v5 = v4;
  v6 = v3;
  LODWORD(v113) = a2;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E55E8, &qword_1B0ED3430);
  MEMORY[0x1EEE9AC00](v104);
  v101 = &v92 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v114 = &v92 - v11;
  v100 = type metadata accessor for Deflate.PartialResult(0);
  MEMORY[0x1EEE9AC00](v100);
  v13 = &v92 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = type metadata accessor for Deflate.InputBuffer(0);
  MEMORY[0x1EEE9AC00](v112);
  v94 = &v92 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v99 = (&v92 - v16);
  MEMORY[0x1EEE9AC00](v17);
  v96 = (&v92 - v18);
  MEMORY[0x1EEE9AC00](v19);
  v103 = (&v92 - v20);
  MEMORY[0x1EEE9AC00](v21);
  v102 = (&v92 - v22);
  MEMORY[0x1EEE9AC00](v23);
  v25 = (&v92 - v24);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v92 - v27;
  v115 = sub_1B0E443C8();
  v95 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115);
  v110 = &v92 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v92 - v31;
  if (sub_1B0BF9E98())
  {
    sub_1B0E44378();
    v33 = *(v3 + 16);
    result = swift_beginAccess();
    v35 = *(v33 + 32);
    if (v35 < 0)
    {
LABEL_57:
      __break(1u);
    }

    else
    {
      v36 = *(v33 + 56);
      if ((v36 & 0x8000000000000000) == 0)
      {
        result = type metadata accessor for Deflate.Result(0);
        v37 = 0;
        v38 = (a3 + result[5]);
        *v38 = 0;
        v38[1] = 0;
LABEL_5:
        v39 = (a3 + result[6]);
        *v39 = v35;
        v39[1] = v36;
        *(a3 + result[7]) = v37;
        return result;
      }
    }

    __break(1u);
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  result = sub_1B0BFA03C(v113 & 1, v32);
  if (v4)
  {
    return result;
  }

  v93 = a3;
  v92 = a1;
  sub_1B0BFBC60(a1, v28);
  v40 = (v95 + 32);
  v105 = v32;
  v106 = (v95 + 8);
  v41 = 1;
  v42 = v115;
  v111 = (v95 + 32);
  v98 = v25;
  v97 = v3;
  v109 = v13;
  while (1)
  {
    v108 = v41;
    sub_1B0BFBC60(v28, v25);
    result = swift_getEnumCaseMultiPayload();
    if (result == 1)
    {
      if (!*v25)
      {
        v44 = 0;
        goto LABEL_15;
      }

      v44 = v25[1] - *v25;
    }

    else
    {
      v45 = *v40;
      v46 = v110;
      v45(v110, v25, v42);
      v44 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
      v47 = v46;
      v40 = v111;
      result = (*v106)(v47, v42);
    }

    if ((v44 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

LABEL_15:
    v48 = *(v6 + 16);
    swift_beginAccess();

    v49 = deflateBound((v48 + 16), v44);
    swift_endAccess();

    if ((v49 & 0x8000000000000000) != 0)
    {
      goto LABEL_51;
    }

    v50 = __OFADD__(v49, 20);
    v51 = v49 + 20;
    if (v50)
    {
      goto LABEL_52;
    }

    if (qword_1EB6E5368 != -1)
    {
      result = swift_once();
    }

    if (v51 >= qword_1EB6E55D0 / 2)
    {
      if (!qword_1EB6E55D0)
      {
        goto LABEL_55;
      }

      v52 = (v51 >> 1) / qword_1EB6E55D0 + 1;
      v51 = qword_1EB6E55D0 * v52;
      if ((qword_1EB6E55D0 * v52) >> 64 != (qword_1EB6E55D0 * v52) >> 63)
      {
        goto LABEL_56;
      }
    }

    v53 = *(v6 + 16);
    v116[0] = 0;
    MEMORY[0x1EEE9AC00](result);
    *(&v92 - 6) = v28;
    *(&v92 - 5) = v53;
    *(&v92 - 4) = sub_1B0BFC6F4;
    *(&v92 - 3) = v54;
    *(&v92 - 2) = v116;

    v55 = v114;
    v56 = sub_1B0BFA830(v114, v51, sub_1B0BFC710, (&v92 - 8));
    if (v5)
    {
      (*v106)(v105, v115);

      return sub_1B0BFC7FC(v28, type metadata accessor for Deflate.InputBuffer);
    }

    v107 = 0;
    v57 = *(v104 + 48);
    LODWORD(v113) = v56 & 1;
    *(v55 + v57) = v56 & 1;
    v58 = v116[0];
    v59 = v103;
    sub_1B0BFBC60(v28, v103);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v62 = v110;
      v63 = v59;
      v61 = v115;
      (*v40)(v110, v63, v115);
      v60 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
      (*v106)(v62, v61);
LABEL_27:
      v64 = v58 == v60;
      v65 = v114;
      if (v64)
      {
        goto LABEL_29;
      }

      goto LABEL_32;
    }

    if (*v59)
    {
      v60 = v59[1] - *v59;
      v61 = v115;
      goto LABEL_27;
    }

    v65 = v55;
    v61 = v115;
    if (!v58)
    {
LABEL_29:
      v66 = v102;
      sub_1B0E44378();

      swift_storeEnumTagMultiPayload();
      goto LABEL_39;
    }

LABEL_32:
    v67 = v96;
    sub_1B0BFBC60(v28, v96);
    result = swift_getEnumCaseMultiPayload();
    if (result == 1)
    {
      if (*v67)
      {
        v68 = v67[1] - *v67;
      }

      else
      {
        v68 = 0;
      }
    }

    else
    {
      v69 = v110;
      (*v40)(v110, v67, v61);
      v68 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
      result = (*v106)(v69, v61);
    }

    v66 = v102;
    if (v68 < v58)
    {
      goto LABEL_54;
    }

    sub_1B0BFB8B4(v58, v68, v102);

    v65 = v114;
LABEL_39:
    v70 = v65;
    v71 = v101;
    sub_1B0BFC728(v70, v101);
    v40 = v111;
    v72 = *v111;
    v73 = v109;
    v74 = v115;
    (*v111)(v109, v71, v115);
    v75 = v100;
    v76 = *(v100 + 20);
    sub_1B0BFC798(v66, v73 + v76);
    *(v73 + *(v75 + 24)) = v113;
    sub_1B0E44388();
    sub_1B0BFC7FC(v28, type metadata accessor for Deflate.InputBuffer);
    sub_1B0BFBC60(v73 + v76, v28);
    v77 = v28;
    v78 = v28;
    v79 = v99;
    sub_1B0BFBC60(v78, v99);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v80 = v97;
      v25 = v98;
      if (*v79 && v79[1] != *v79)
      {
LABEL_44:
        result = sub_1B0BFC7FC(v109, type metadata accessor for Deflate.PartialResult);
        v28 = v77;
        goto LABEL_9;
      }
    }

    else
    {
      v81 = v110;
      v72(v110, v79, v74);
      sub_1B075CEE0();
      sub_1B0E45668();
      sub_1B0E456C8();
      (*v106)(v81, v74);
      v80 = v97;
      v25 = v98;
      if (v116[0] != v116[5])
      {
        goto LABEL_44;
      }
    }

    result = sub_1B0BFC7FC(v109, type metadata accessor for Deflate.PartialResult);
    v43 = v105;
    v28 = v77;
    if (!v113)
    {
      break;
    }

LABEL_9:
    v5 = v107;
    v41 = v108 + 1;
    v6 = v80;
    v42 = v115;
    if (__OFADD__(v108, 1))
    {
      goto LABEL_53;
    }
  }

  v83 = v95 + 16;
  v82 = *(v95 + 16);
  a3 = v93;
  v84 = v115;
  v82(v93, v105, v115);
  v85 = v94;
  sub_1B0BFBC60(v92, v94);
  v86 = v110;
  v82(v110, v43, v84);
  v114 = sub_1B0BFA4B0();
  v113 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
  v87 = v80;
  v88 = *(v83 - 8);
  v88(v86, v84);
  sub_1B0BFC7FC(v85, type metadata accessor for Deflate.InputBuffer);
  v88(v43, v84);
  sub_1B0BFC7FC(v28, type metadata accessor for Deflate.InputBuffer);
  v89 = *(v87 + 16);
  result = swift_beginAccess();
  v35 = *(v89 + 32);
  if (v35 < 0)
  {
    goto LABEL_59;
  }

  v36 = *(v89 + 56);
  if ((v36 & 0x8000000000000000) == 0)
  {
    result = type metadata accessor for Deflate.Result(0);
    v90 = (a3 + result[5]);
    v91 = v113;
    *v90 = v114;
    v90[1] = v91;
    v37 = v108;
    goto LABEL_5;
  }

LABEL_60:
  __break(1u);
  return result;
}

BOOL sub_1B0BF9E98()
{
  v1 = v0;
  v2 = sub_1B0E443C8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Deflate.InputBuffer(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B0BFBC60(v1, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    if (!*v8)
    {
      return 1;
    }

    return v8[1] == *v8;
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    sub_1B075CEE0();
    sub_1B0E45668();
    sub_1B0E456C8();
    (*(v3 + 8))(v5, v2);
    return v11[1] == v11[0];
  }
}

uint64_t sub_1B0BFA03C@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v42[4] = *MEMORY[0x1E69E9840];
  v38 = sub_1B0E442E8();
  v6 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v8 = (&v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E55E8, &qword_1B0ED3430);
  MEMORY[0x1EEE9AC00](v37);
  v10 = &v30 - v9;
  v11 = sub_1B0E443C8();
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v3 + 24) == (a1 & 1))
  {
    return sub_1B0E44378();
  }

  v32 = v13;
  v33 = v12;
  v31 = a2;
  *(v3 + 24) = a1 & 1;
  sub_1B0E44378();
  v36 = v42;
  v35 = *MEMORY[0x1E69E7FC8];
  v34 = (v6 + 104);
  while (1)
  {
    v16 = *(v3 + 16);
    pending = 0;
    swift_beginAccess();

    v17 = deflatePending((v16 + 16), &pending, 0);
    swift_endAccess();
    if (v17)
    {

      v18 = 1044;
    }

    else
    {
      v19 = pending;

      v18 = v19 + 21;
    }

    v20 = *(v3 + 16);

    v21 = swift_slowAlloc();
    v22 = v21 + v18;
    v23 = v39;
    v24 = sub_1B0BFC1C8(&pending, v21, v21 + v18, v20, v3);
    v39 = v23;
    if (v23)
    {
      MEMORY[0x1B272C230](v21, -1, -1);
      swift_willThrow();

      return (*(v32 + 8))(v15, v33);
    }

    if (v24 < 0 || v18 < v24)
    {
      break;
    }

    v25 = *(v37 + 48);
    v26 = swift_allocObject();
    *(v26 + 16) = v21;
    *(v26 + 24) = v22;
    v42[2] = sub_1B0BFCD70;
    v42[3] = v26;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    v42[0] = sub_1B038C908;
    v42[1] = &block_descriptor_28_0;
    v27 = _Block_copy(aBlock);
    *v8 = 0;
    v8[1] = v27;
    (*v34)(v8, v35, v38);
    sub_1B0E442F8();

    v28 = pending;
    v10[v25] = pending;
    sub_1B0E44388();
    sub_1B0BFCA28(v10);
    if ((v28 & 1) == 0)
    {
      return (*(v32 + 32))(v31, v15, v33);
    }
  }

  result = sub_1B0E465B8();
  __break(1u);
  return result;
}

uint64_t sub_1B0BFA4B0()
{
  v1 = v0;
  v2 = sub_1B0E443C8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Deflate.InputBuffer(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B0BFBC60(v1, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    if (*v8)
    {
      return v8[1] - *v8;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    v10 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
    (*(v3 + 8))(v5, v2);
    return v10;
  }
}

uint64_t sub_1B0BFA628(char a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  swift_beginAccess();

  v4 = deflate((v3 + 16), a1 & 1);
  swift_endAccess();
  if (v4 && v4 != -5)
  {
    sub_1B0BFC8A0();
    swift_allocError();
    *v5 = "deflate";
    *(v5 + 8) = 7;
    *(v5 + 16) = 2;
    *(v5 + 20) = v4;
    swift_willThrow();
  }
}

uint64_t sub_1B0BFA6F0(uint64_t a1)
{
  v2 = *(a1 + 16);
  swift_beginAccess();

  v3 = deflate((v2 + 16), 5);
  swift_endAccess();
  if (v3)
  {
    v4 = v3 == -5;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    v8 = "deflate";
    v9 = 7;
LABEL_14:
    sub_1B0BFC8A0();
    swift_allocError();
    *v10 = v8;
    *(v10 + 8) = v9;
    *(v10 + 16) = 2;
    *(v10 + 20) = v3;
    swift_willThrow();
  }

  v5 = *(a1 + 16);
  if (*(a1 + 24))
  {
    v6 = 5;
  }

  else
  {
    v6 = 1;
  }

  if (*(a1 + 24))
  {
    v7 = 0;
  }

  else
  {
    v7 = 4;
  }

  swift_beginAccess();

  v3 = deflateParams((v5 + 16), v6, v7);
  swift_endAccess();
  if (v3)
  {
    v8 = "deflateParams";
    v9 = 13;
    goto LABEL_14;
  }
}

uint64_t sub_1B0BFA830(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v17[1] = a1;
  v8 = sub_1B0E442E8();
  v17[0] = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = swift_slowAlloc();
  v12 = sub_1B0BFC290(&v19, v11, v11 + a2, v4, a3);
  if (v5)
  {
    MEMORY[0x1B272C230](v11, -1, -1);
    return swift_willThrow();
  }

  v14 = v17[0];
  if (a2 < 0)
  {
    __break(1u);
LABEL_9:
    result = sub_1B0E465B8();
    __break(1u);
    return result;
  }

  if (v12 < 0 || v12 > a2)
  {
    goto LABEL_9;
  }

  v15 = swift_allocObject();
  *(v15 + 16) = v11;
  *(v15 + 24) = v11 + a2;
  aBlock[4] = sub_1B0BFC85C;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B038C908;
  aBlock[3] = &block_descriptor_27;
  v16 = _Block_copy(aBlock);
  *v10 = 0;
  v10[1] = v16;
  (*(v14 + 104))(v10, *MEMORY[0x1E69E7FC8], v8);
  sub_1B0E442F8();

  return v19;
}

uint64_t sub_1B0BFAA84()
{

  return swift_deallocClassInstance();
}

int *sub_1B0BFAAE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v111 = sub_1B0E442E8();
  v121 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111);
  v110 = (&v94 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E55E8, &qword_1B0ED3430);
  MEMORY[0x1EEE9AC00](v109);
  v106 = &v94 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v118 = &v94 - v9;
  v105 = type metadata accessor for Deflate.PartialResult(0);
  MEMORY[0x1EEE9AC00](v105);
  v117 = &v94 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = type metadata accessor for Deflate.InputBuffer(0);
  MEMORY[0x1EEE9AC00](v122);
  v12 = &v94 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v104 = (&v94 - v14);
  MEMORY[0x1EEE9AC00](v15);
  v98 = (&v94 - v16);
  MEMORY[0x1EEE9AC00](v17);
  v108 = (&v94 - v18);
  MEMORY[0x1EEE9AC00](v19);
  v107 = &v94 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v112 = &v94 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v94 - v24;
  v113 = sub_1B0E443C8();
  v26 = *(v113 - 8);
  MEMORY[0x1EEE9AC00](v113);
  v115 = &v94 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v94 - v29;
  v31 = sub_1B0BF9E98();
  v119 = v3;
  if (v31)
  {
    sub_1B0E44378();
    v32 = *(v2 + 16);
    swift_beginAccess();
    v33 = *(v32 + 32);
    if (v33 < 0)
    {
LABEL_67:
      __break(1u);
    }

    else
    {
      v34 = *(v32 + 56);
      if ((v34 & 0x8000000000000000) == 0)
      {
        result = type metadata accessor for Deflate.Result(0);
        v36 = 0;
        v37 = (a2 + result[5]);
        *v37 = 0;
        v37[1] = 0;
LABEL_57:
        v91 = (a2 + result[6]);
        *v91 = v33;
        v91[1] = v34;
        *(a2 + result[7]) = v36;
        return result;
      }
    }

    __break(1u);
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v96 = v12;
  v103 = v2;
  v97 = a2;
  sub_1B0E44378();
  sub_1B0BFBC60(a1, v25);
  v120 = (v26 + 32);
  v114 = (v26 + 8);
  v101 = v124;
  v100 = *MEMORY[0x1E69E7FC8];
  v99 = (v121 + 104);
  v38 = 1;
  v39 = v112;
  v40 = v113;
  v95 = a1;
  v94 = v26;
  v102 = v30;
  while (1)
  {
    v116 = v38;
    sub_1B0BFBC60(v25, v39);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      if (*v39)
      {
        v42 = v39[1] - *v39;
      }

      else
      {
        v42 = 0;
      }
    }

    else
    {
      v43 = v115;
      (*v120)(v115, v39, v40);
      v42 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
      EnumCaseMultiPayload = (*v114)(v43, v40);
    }

    v44 = v103;
    v45 = (v42 * 3) >> 64;
    v46 = 3 * v42;
    if (v45 != v46 >> 63)
    {
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
      goto LABEL_67;
    }

    if (qword_1EB6E5368 != -1)
    {
      EnumCaseMultiPayload = swift_once();
    }

    if (v46 >= qword_1EB6E55D0 / 2)
    {
      v48 = v46 + qword_1EB6E55D0;
      if (__OFADD__(v46, qword_1EB6E55D0))
      {
        goto LABEL_62;
      }

      v49 = __OFSUB__(v48, 1);
      v50 = v48 - 1;
      if (v49)
      {
        goto LABEL_63;
      }

      if (!qword_1EB6E55D0)
      {
        goto LABEL_64;
      }

      if (qword_1EB6E55D0 == -1 && v50 == 0x8000000000000000)
      {
        goto LABEL_66;
      }

      v51 = v50 / qword_1EB6E55D0;
      if (v51 >= 4)
      {
        v51 = 4;
      }

      v47 = v51 * qword_1EB6E55D0;
      if ((v51 * qword_1EB6E55D0) >> 64 != (v51 * qword_1EB6E55D0) >> 63)
      {
        goto LABEL_65;
      }
    }

    else
    {
      v47 = v46 <= 20 ? 20 : v46;
    }

    v52 = *(v44 + 16);
    v126 = 0;
    MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);
    *(&v94 - 6) = v25;
    *(&v94 - 5) = v52;
    *(&v94 - 4) = sub_1B0BFCA90;
    *(&v94 - 3) = v44;
    v92 = &v126;

    v53 = swift_slowAlloc();
    v54 = v53 + v47;
    v55 = v119;
    v56 = sub_1B0BFC290(&v125, v53, v53 + v47, v52, sub_1B0BFCD7C);
    v119 = v55;
    if (v55)
    {
      MEMORY[0x1B272C230](v53, -1, -1);
      swift_willThrow();

      (*v114)(v102, v113);
      return sub_1B0BFC7FC(v25, type metadata accessor for Deflate.InputBuffer);
    }

    if (v47 < 0)
    {
      goto LABEL_59;
    }

    if (v56 < 0 || v47 < v56)
    {
      goto LABEL_71;
    }

    v57 = *(v109 + 48);
    v58 = swift_allocObject();
    *(v58 + 16) = v53;
    *(v58 + 24) = v54;
    v124[2] = sub_1B0BFCD70;
    v124[3] = v58;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    v124[0] = sub_1B038C908;
    v124[1] = &block_descriptor_36;
    v59 = _Block_copy(aBlock);
    v61 = v110;
    v60 = v111;
    *v110 = 0;
    v61[1] = v59;
    (*v99)(v61, v100, v60);
    v62 = v118;
    sub_1B0E442F8();

    LODWORD(v121) = v125;
    *(v62 + v57) = v125;
    v63 = v126;
    v64 = v108;
    sub_1B0BFBC60(v25, v108);
    v65 = swift_getEnumCaseMultiPayload();
    v66 = v107;
    v67 = v120;
    if (v65 == 1)
    {
      v40 = v113;
      if (*v64)
      {
        if (v63 == v64[1] - *v64)
        {
          goto LABEL_40;
        }
      }

      else if (!v63)
      {
LABEL_40:
        sub_1B0E44378();

        v72 = v66;
        swift_storeEnumTagMultiPayload();
        goto LABEL_47;
      }
    }

    else
    {
      v70 = v115;
      v40 = v113;
      (*v120)(v115, v64, v113);
      v71 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
      (*v114)(v70, v40);
      if (v63 == v71)
      {
        goto LABEL_40;
      }
    }

    v68 = v98;
    sub_1B0BFBC60(v25, v98);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      if (*v68)
      {
        v69 = v68[1] - *v68;
        if (v69 < v63)
        {
          goto LABEL_61;
        }
      }

      else
      {
        v69 = 0;
        if (v63 > 0)
        {
          goto LABEL_61;
        }
      }
    }

    else
    {
      v73 = v115;
      (*v67)(v115, v68, v40);
      v69 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
      (*v114)(v73, v40);
      if (v69 < v63)
      {
        goto LABEL_61;
      }
    }

    sub_1B0BFB8B4(v63, v69, v66);

    v72 = v66;
LABEL_47:
    v74 = v106;
    sub_1B0BFC728(v118, v106);
    v75 = *v120;
    v76 = v117;
    (*v120)(v117, v74, v40);
    v77 = v105;
    v78 = *(v105 + 20);
    sub_1B0BFC798(v72, v76 + v78);
    *(v76 + *(v77 + 24)) = v121;
    sub_1B0E44388();
    sub_1B0BFC7FC(v25, type metadata accessor for Deflate.InputBuffer);
    sub_1B0BFBC60(v76 + v78, v25);
    v79 = v104;
    sub_1B0BFBC60(v25, v104);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v39 = v112;
      if (*v79 && v79[1] != *v79)
      {
LABEL_52:
        sub_1B0BFC7FC(v117, type metadata accessor for Deflate.PartialResult);
        goto LABEL_7;
      }
    }

    else
    {
      v80 = v115;
      v75(v115, v79, v40);
      sub_1B075CEE0();
      sub_1B0E45668();
      sub_1B0E456C8();
      (*v114)(v80, v40);
      v39 = v112;
      if (aBlock[0] != v126)
      {
        goto LABEL_52;
      }
    }

    sub_1B0BFC7FC(v117, type metadata accessor for Deflate.PartialResult);
    if ((v121 & 1) == 0)
    {
      break;
    }

LABEL_7:
    v38 = v116 + 1;
    if (__OFADD__(v116, 1))
    {
      goto LABEL_60;
    }
  }

  v82 = v94 + 16;
  v81 = *(v94 + 16);
  v83 = v40;
  a2 = v97;
  v84 = v102;
  v81(v97, v102, v83);
  v85 = v96;
  sub_1B0BFBC60(v95, v96);
  v86 = v115;
  v81(v115, v84, v83);
  v122 = sub_1B0BFA4B0();
  v87 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
  v88 = *(v82 - 8);
  v88(v86, v83);
  sub_1B0BFC7FC(v85, type metadata accessor for Deflate.InputBuffer);
  v88(v84, v83);
  sub_1B0BFC7FC(v25, type metadata accessor for Deflate.InputBuffer);
  v89 = *(v103 + 16);
  swift_beginAccess();
  v33 = *(v89 + 32);
  if (v33 < 0)
  {
    goto LABEL_69;
  }

  v34 = *(v89 + 56);
  if ((v34 & 0x8000000000000000) == 0)
  {
    result = type metadata accessor for Deflate.Result(0);
    v90 = (a2 + result[5]);
    *v90 = v122;
    v90[1] = v87;
    v36 = v116;
    goto LABEL_57;
  }

LABEL_70:
  __break(1u);
LABEL_71:
  v93 = 0;
  v92 = 613;
  result = sub_1B0E465B8();
  __break(1u);
  return result;
}

uint64_t sub_1B0BFB794(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  swift_beginAccess();

  v3 = inflate((v2 + 16), 2);
  swift_endAccess();
  if (v3 && v3 != -5)
  {
    sub_1B0BFC8A0();
    swift_allocError();
    *v4 = "inflate";
    *(v4 + 8) = 7;
    *(v4 + 16) = 2;
    *(v4 + 20) = v3;
    swift_willThrow();
  }
}

uint64_t sub_1B0BFB858()
{

  return swift_deallocClassInstance();
}

void sub_1B0BFB8B4(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = sub_1B0E443C8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Deflate.InputBuffer(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = (&v18 - v13);
  v15 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
  }

  else
  {
    if (v15 < 1)
    {
      sub_1B0E44378();
    }

    else
    {
      sub_1B0BFBC60(v3, &v18 - v13);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v16 = *v14 + a1;
        if (*v14)
        {
          v17 = v16 + v15;
        }

        else
        {
          v17 = 0;
        }

        if (!*v14)
        {
          v16 = 0;
        }

        *a3 = v16;
        a3[1] = v17;
      }

      else
      {
        (*(v8 + 32))(v10, v14, v7);
        sub_1B0E44398();
        (*(v8 + 8))(v10, v7);
      }
    }

    swift_storeEnumTagMultiPayload();
  }
}

uint64_t sub_1B0BFBAC4()
{
  if (*(v0 + 128))
  {
    swift_beginAccess();
    inflateEnd((v0 + 16));
  }

  else
  {
    swift_beginAccess();
    deflateEnd((v0 + 16));
  }

  swift_endAccess();
  return swift_deallocClassInstance();
}

unint64_t sub_1B0BFBB94()
{
  result = qword_1EB6E55D8;
  if (!qword_1EB6E55D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E55D8);
  }

  return result;
}

unint64_t sub_1B0BFBBEC()
{
  result = qword_1EB6E55E0;
  if (!qword_1EB6E55E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E55E0);
  }

  return result;
}

uint64_t sub_1B0BFBC60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Deflate.InputBuffer(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B0BFBCC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, void *a5)
{
  v42 = a5;
  v9 = sub_1B0E443C8();
  v40 = *(v9 - 8);
  v41 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v36 - v13;
  v15 = type metadata accessor for Deflate.InputBuffer(0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = (v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v18);
  v20 = (v36 - v19);
  v21 = sub_1B0BF9E98();
  if (v21)
  {
    swift_beginAccess();
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    return a3(1);
  }

  v39 = v36;
  MEMORY[0x1EEE9AC00](v21);
  v37 = a2;
  v38 = a3;
  v36[-4] = a2;
  v36[-3] = a3;
  v36[1] = a4;
  v23 = v42;
  v36[-2] = a4;
  v36[-1] = v23;
  sub_1B0BFBC60(a1, v20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = *v20;
    v24 = v20[1];
    sub_1B0BFBC60(a1, v17);
    result = swift_getEnumCaseMultiPayload();
    if (result == 1)
    {
      v26 = v38;
      if (!*v17 || v17[1] == *v17)
      {
        return result;
      }
    }

    else
    {
      v31 = v40;
      v30 = v41;
      (*(v40 + 32))(v11, v17, v41);
      sub_1B075CEE0();
      sub_1B0E45668();
      sub_1B0E456C8();
      result = (*(v31 + 8))(v11, v30);
      v26 = v38;
      if (v44[0] == v44[4])
      {
        return result;
      }
    }

    v32 = v37;
    result = swift_beginAccess();
    *(v32 + 16) = v25;
    if (v25)
    {
      v33 = v24 - v25;
    }

    else
    {
      v33 = 0;
    }

    if ((v33 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v34 = v43;
      if (!HIDWORD(v33))
      {
        *(v32 + 24) = v33;
        result = v26(1);
        if (v34)
        {
          *(v32 + 16) = 0;
          *(v32 + 24) = 0;
        }

        else
        {
          v35 = *(v32 + 24);
          *(v32 + 16) = 0;
          *(v32 + 24) = 0;
          *v23 = v33 - v35;
        }

        return result;
      }
    }

    __break(1u);
    return result;
  }

  v28 = v40;
  v27 = v41;
  v29 = (*(v40 + 32))(v14, v20, v41);
  v44[0] = 0;
  MEMORY[0x1EEE9AC00](v29);
  v36[-4] = v14;
  v36[-3] = sub_1B0BFC874;
  v36[-2] = &v36[-6];
  v36[-1] = v44;
  sub_1B0E44318();
  if (v44[0])
  {
    swift_willThrow();
  }

  return (*(v28 + 8))(v14, v27);
}

uint64_t sub_1B0BFC0D4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t (*a6)(void), uint64_t a7, void *a8)
{
  result = swift_beginAccess();
  *(a5 + 16) = a1;
  if (a1)
  {
    v17 = a2 - a1;
  }

  else
  {
    v17 = 0;
  }

  if ((v17 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (HIDWORD(v17))
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  *(a5 + 24) = v17;
  result = a6(a4 & 1);
  if (v8)
  {
    *(a5 + 16) = 0;
    *(a5 + 24) = 0;
    return result;
  }

  v18 = *(a5 + 24);
  *(a5 + 16) = 0;
  *(a5 + 24) = 0;
  v19 = a3 + v17;
  if (__OFADD__(a3, v17))
  {
    goto LABEL_14;
  }

  v20 = __OFSUB__(v19, v18);
  v21 = v19 - v18;
  if (v20)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  *a8 = v21;
  return v18 != 0;
}

uint64_t sub_1B0BFC1C8(BOOL *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  result = swift_beginAccess();
  *(a4 + 40) = a2;
  if (a2)
  {
    v12 = a3 - a2;
  }

  else
  {
    v12 = 0;
  }

  if ((v12 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (HIDWORD(v12))
  {
LABEL_10:
    __break(1u);
    return result;
  }

  *(a4 + 48) = v12;
  sub_1B0BFA6F0(a5);
  if (!v5)
  {
    a3 = v12 - *(a4 + 48);
    *a1 = *(a4 + 48) == 0;
  }

  *(a4 + 40) = 0;
  *(a4 + 48) = 0;

  return a3;
}

unint64_t sub_1B0BFC290(BOOL *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  result = swift_beginAccess();
  *(a4 + 40) = a2;
  if (a2)
  {
    v12 = a3 - a2;
  }

  else
  {
    v12 = 0;
  }

  if ((v12 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (HIDWORD(v12))
  {
LABEL_10:
    __break(1u);
    return result;
  }

  *(a4 + 48) = v12;
  result = a5(result);
  if (!v5)
  {
    result = v12 - *(a4 + 48);
    *a1 = *(a4 + 48) == 0;
  }

  *(a4 + 40) = 0;
  *(a4 + 48) = 0;
  return result;
}

unint64_t sub_1B0BFC350(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B0E46298();

  v6 = sub_1B0E462C8();
  MEMORY[0x1B2726E80](v6);

  MEMORY[0x1B2726E80](46, 0xE100000000000000);
  v7 = sub_1B0BFC478(a1, a2, a3 & 0xFFFFFFFF000000FFLL);
  MEMORY[0x1B2726E80](v7);

  MEMORY[0x1B2726E80](10272, 0xE200000000000000);
  v8 = sub_1B0E469C8();
  MEMORY[0x1B2726E80](v8);

  MEMORY[0x1B2726E80](41, 0xE100000000000000);
  return 0xD000000000000017;
}

uint64_t sub_1B0BFC478(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (SHIDWORD(a3) <= -3)
  {
    if (SHIDWORD(a3) > -5)
    {
      if (HIDWORD(a3) != -4)
      {
        return 0x455F415441445F5ALL;
      }

      v3 = 0x5F4D454D5F5ALL;
    }

    else
    {
      if (HIDWORD(a3) == -6)
      {
        return 0x4F49535245565F5ALL;
      }

      if (HIDWORD(a3) != -5)
      {
        return sub_1B0E469C8();
      }

      v3 = 0x5F4655425F5ALL;
    }

    return v3 & 0xFFFFFFFFFFFFLL | 0x5245000000000000;
  }

  if (a3 < 0)
  {
    if (HIDWORD(a3) == -2)
    {
      return 0x4D41455254535F5ALL;
    }

    if (HIDWORD(a3) == -1)
    {
      return 0x4F4E5252455F5ALL;
    }
  }

  else
  {
    switch(HIDWORD(a3))
    {
      case 0:
        return 1263492954;
      case 2:
        return 0x445F4445454E5F5ALL;
      case 1:
        return 0x4D41455254535F5ALL;
    }
  }

  return sub_1B0E469C8();
}

uint64_t sub_1B0BFC61C(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, BOOL))
{
  result = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
  if (__OFADD__(a2, a3))
  {
    __break(1u);
  }

  else
  {
    if (a1)
    {
      v12 = a2 + a1;
    }

    else
    {
      v12 = 0;
    }

    result = a6(a1, v12, a3, a2 + a3 >= result);
    if (result)
    {
      *a4 = 1;
    }
  }

  return result;
}

uint64_t sub_1B0BFC6D4()
{
  result = sub_1B0BFC8F4();
  qword_1EB6E55D0 = result;
  return result;
}

uint64_t sub_1B0BFC728(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E55E8, &qword_1B0ED3430);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B0BFC798(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Deflate.InputBuffer(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B0BFC7FC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B0BFC85C()
{
  result = *(v0 + 16);
  if (result)
  {
    JUMPOUT(0x1B272C230);
  }

  return result;
}

unint64_t sub_1B0BFC8A0()
{
  result = qword_1EB6E55F0;
  if (!qword_1EB6E55F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E55F0);
  }

  return result;
}

uint64_t sub_1B0BFC8F4()
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = 0x700000006;
  v4 = 0;
  v3 = 4;
  if (!sysctl(v5, 2u, &v4, &v3, 0, 0))
  {
    return v4;
  }

  sub_1B0E46298();

  MEMORY[0x1B2725C20](v1);
  v2 = sub_1B0E469C8();
  MEMORY[0x1B2726E80](v2);

  result = sub_1B0E465B8();
  __break(1u);
  return result;
}

uint64_t sub_1B0BFCA28(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E55E8, &qword_1B0ED3430);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for SearchRequest.Predicate.Day(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SearchRequest.Predicate.Day(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

uint64_t sub_1B0BFCB54(uint64_t a1)
{
  result = sub_1B0E443C8();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Deflate.InputBuffer(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B0BFCC18(uint64_t a1)
{
  result = sub_1B0E443C8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B0BFCCA8(uint64_t a1)
{
  result = sub_1B0E443C8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1B0BFCD14()
{
  result = qword_1EB6E5608;
  if (!qword_1EB6E5608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E5608);
  }

  return result;
}

uint64_t sub_1B0BFCD94@<X0>(uint64_t a1@<X8>)
{
  v24 = type metadata accessor for Deflate.InputBuffer(0);
  MEMORY[0x1EEE9AC00](v24);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Deflate.Result(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v25 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5610, &qword_1B0ED35A0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v22 - v8;
  v10 = _s12OutputHelperV5ChunkVMa(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = _s12OutputHelperVMa(0);
  v15 = *(v14 + 24);
  sub_1B0BFD154(v1 + v15, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1B0BFD1C4(v9);
  }

  else
  {
    v23 = a1;
    sub_1B0BFD22C(v9, v13);
    v16 = sub_1B0E443C8();
    (*(*(v16 - 8) + 16))(v4, v13, v16);
    swift_storeEnumTagMultiPayload();
    v17 = v26;
    sub_1B0BF93DC(v4, v13[*(v10 + 20)], v25);
    if (v17)
    {
      sub_1B0BFD290(v4, type metadata accessor for Deflate.InputBuffer);
      sub_1B0BFD290(v13, _s12OutputHelperV5ChunkVMa);
      sub_1B0BFD1C4(v1 + v15);
      return (*(v11 + 56))(v1 + v15, 1, 1, v10);
    }

    sub_1B0BFD290(v4, type metadata accessor for Deflate.InputBuffer);
    v19 = v25;
    sub_1B0E44388();
    sub_1B0BFD290(v19, type metadata accessor for Deflate.Result);
    sub_1B0BFD290(v13, _s12OutputHelperV5ChunkVMa);
    sub_1B0BFD1C4(v1 + v15);
    (*(v11 + 56))(v1 + v15, 1, 1, v10);
    a1 = v23;
  }

  v20 = *(v14 + 20);
  v21 = sub_1B0E443C8();
  return (*(*(v21 - 8) + 16))(a1, v1 + v20, v21);
}

uint64_t sub_1B0BFD154(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5610, &qword_1B0ED35A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B0BFD1C4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5610, &qword_1B0ED35A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B0BFD22C(uint64_t a1, uint64_t a2)
{
  v4 = _s12OutputHelperV5ChunkVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B0BFD290(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1B0BFD318(uint64_t a1)
{
  sub_1B0E443C8();
  if (v1 <= 0x3F)
  {
    sub_1B0BFD3C4(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Deflate.Compressor();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B0BFD3C4(uint64_t a1)
{
  if (!qword_1EB6DCD28)
  {
    _s12OutputHelperV5ChunkVMa(255);
    v1 = sub_1B0E45D88();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB6DCD28);
    }
  }
}

uint64_t sub_1B0BFD444(uint64_t a1)
{
  result = sub_1B0E443C8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

double sub_1B0BFD4C8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned __int8 a4@<W3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v7 = a7;
  if (a4)
  {
    *&v44 = a1;
    *(&v44 + 1) = a2;
    *&v45 = a3;
    BYTE8(v45) = a4 | 0x40;
    sub_1B0BD6CF8(&v44);
    v64 = v52;
    v65 = v53;
    v66 = v54;
    v67 = v55;
    v60 = v48;
    v61 = v49;
    v62 = v50;
    v63 = v51;
    v56 = v44;
    v57 = v45;
    v58 = v46;
    v59 = v47;
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
    sub_1B0A91FD0(a1, a2, a3, a4);
    v76 = v64;
    v77 = v65;
    v78 = v66;
    v79 = v67;
    v72 = v60;
    v73 = v61;
    v74 = v62;
    v75 = v63;
    v68 = v56;
    v69 = v57;
    v70 = v58;
    v71 = v59;
    goto LABEL_27;
  }

  v38 = *(a5 + 16);
  if (!v38)
  {
    goto LABEL_23;
  }

  v12 = a6;
  v13 = 0;
  v14 = a5 + 32;
  v15 = a6 + 56;
  v37 = a5 + 32;
LABEL_5:
  v16 = (v14 + 32 * v13);
  v18 = *v16;
  v17 = v16[1];
  if (*(v12 + 16))
  {
    v41 = v13;
    v19 = v16[2];
    v20 = *(v16 + 24);
    sub_1B0E46C28();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    v43 = v19;
    sub_1B0E46C68();
    if ((v20 & 1) == 0)
    {
      MEMORY[0x1B2728DB0](v19 >> 14);
    }

    v21 = sub_1B0E46CB8();
    v22 = -1 << *(v12 + 32);
    v23 = v21 & ~v22;
    if (((*(v15 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
    {
      goto LABEL_25;
    }

    v42 = v41 + 1;
    v24 = ~v22;
    v25 = *(a6 + 48);
    while (1)
    {
      v26 = v25 + 32 * v23;
      v27 = *(v26 + 16);
      v28 = *(v26 + 24);
      v29 = *v26 == v18 && *(v26 + 8) == v17;
      if (v29 || (sub_1B0E46A78() & 1) != 0)
      {
        if (v28)
        {
          if (v20)
          {
            goto LABEL_22;
          }
        }

        else
        {
          if (((v27 ^ v43) & 0xFFFFFFFFFFFFC000) != 0)
          {
            v30 = 1;
          }

          else
          {
            v30 = v20;
          }

          if ((v30 & 1) == 0)
          {
LABEL_22:

            v14 = v37;
            v12 = a6;
            v13 = v42;
            if (v42 == v38)
            {
LABEL_23:
              sub_1B0BFD988(&v44);
              goto LABEL_26;
            }

            goto LABEL_5;
          }
        }
      }

      v23 = (v23 + 1) & v24;
      if (((*(v15 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
      {
        goto LABEL_25;
      }
    }
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
LABEL_25:
  *&v44 = v18;
  *(&v44 + 1) = v17;
  *&v45 = 0;
  BYTE8(v45) = 0x80;
  sub_1B0BD6CF8(&v44);
LABEL_26:
  v64 = v52;
  v65 = v53;
  v66 = v54;
  v67 = v55;
  v60 = v48;
  v61 = v49;
  v62 = v50;
  v63 = v51;
  v56 = v44;
  v57 = v45;
  v58 = v46;
  v59 = v47;
  __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
  v76 = v64;
  v77 = v65;
  v78 = v66;
  v79 = v67;
  v72 = v60;
  v73 = v61;
  v74 = v62;
  v75 = v63;
  v68 = v56;
  v69 = v57;
  v70 = v58;
  v71 = v59;
  v7 = a7;
LABEL_27:
  v31 = v77;
  *(v7 + 128) = v76;
  *(v7 + 144) = v31;
  *(v7 + 160) = v78;
  *(v7 + 176) = v79;
  v32 = v73;
  *(v7 + 64) = v72;
  *(v7 + 80) = v32;
  v33 = v75;
  *(v7 + 96) = v74;
  *(v7 + 112) = v33;
  v34 = v69;
  *v7 = v68;
  *(v7 + 16) = v34;
  result = *&v70;
  v36 = v71;
  *(v7 + 32) = v70;
  *(v7 + 48) = v36;
  return result;
}

double sub_1B0BFD838@<D0>(uint64_t a1@<X8>)
{
  *a1 = *(v1 + 8);
  *(a1 + 64) = 3;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return result;
}

uint64_t sub_1B0BFD84C(uint64_t a1)
{
  v2 = type metadata accessor for UntaggedResponse(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = (&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B0B7EAA4(a1, v4);
  if (swift_getEnumCaseMultiPayload() != 6)
  {
    return sub_1B0B7EB08(v4);
  }

  sub_1B0C1BAB0(*v4);
}

double sub_1B0BFD908@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned __int8 a4@<W3>, uint64_t a5@<X8>)
{
  sub_1B0BFD4C8(a1, a2, a3, a4, *(v5 + 8), *(v5 + 16), v13);
  v7 = v21;
  *(a5 + 128) = v20;
  *(a5 + 144) = v7;
  *(a5 + 160) = v22;
  *(a5 + 176) = v23;
  v8 = v17;
  *(a5 + 64) = v16;
  *(a5 + 80) = v8;
  v9 = v19;
  *(a5 + 96) = v18;
  *(a5 + 112) = v9;
  v10 = v13[1];
  *a5 = v13[0];
  *(a5 + 16) = v10;
  result = *&v14;
  v12 = v15;
  *(a5 + 32) = v14;
  *(a5 + 48) = v12;
  return result;
}

double sub_1B0BFD988(uint64_t a1)
{
  *a1 = 4;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0;
  *(a1 + 176) = 7;
  return result;
}

uint64_t sub_1B0BFD9CC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v26 = MEMORY[0x1E69E7CC0];
  sub_1B041D32C(0, v1, 0);
  v2 = v26;
  v25 = a1 + 56;
  result = sub_1B0E460B8();
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
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    result = sub_1B0E44B88();
    v13 = *(v26 + 16);
    v12 = *(v26 + 24);
    if (v13 >= v12 >> 1)
    {
      v22 = v11;
      v23 = result;
      sub_1B041D32C((v12 > 1), v13 + 1, 1);
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
      v19 = (a1 + 64 + 8 * v9);
      while (v18 < (v7 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          result = sub_1B0425168(v5, v10, 0);
          v7 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      result = sub_1B0425168(v5, v10, 0);
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

void *Event.Payload.shortLogIdentifier.getter(unint64_t a1)
{
  v2 = type metadata accessor for UntaggedResponse(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = a1 >> 60;
  if ((a1 >> 60) > 3)
  {
    if (v5 > 5)
    {
      if (v5 == 6)
      {
        return 0xD00000000000001ALL;
      }

      if (v5 == 7)
      {
        return 0xD000000000000020;
      }

      v31 = 0x3E7974706D653CLL;
      if (a1 != 0x8000000000000008)
      {
        v31 = 0xD000000000000010;
      }

      if (a1 == 0x8000000000000000)
      {
        return 0xD000000000000014;
      }

      else
      {
        return v31;
      }
    }

    if (v5 != 4)
    {
      v32 = a1 & 0xFFFFFFFFFFFFFFFLL;
      v33 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
      if (!v33)
      {
        return 0xD000000000000018;
      }

      v35 = *(v32 + 32);
      v34 = *(v32 + 40);
      *&v56 = 0;
      *(&v56 + 1) = 0xE000000000000000;
      sub_1B0B6DCB0(v35, v34, v33);
      sub_1B0B6DCB0(v35, v34, v33);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0E46298();

      *&v52[0] = 0xD000000000000019;
      *(&v52[0] + 1) = 0x80000001B0F2CE30;
      *&v56 = v35;
      *(&v56 + 1) = v34;
      *&v57 = v33;
      sub_1B04420D8(v35);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v36 = sub_1B0E44BA8();
      MEMORY[0x1B2726E80](v36);

      sub_1B0447F00(v35);

      sub_1B0B6DCF0(v35, v34, v33);
      return *&v52[0];
    }

    v12 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10) | (*((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x14) << 32);
    if (*((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x30))
    {
      if (*((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x30) != 1)
      {
        *&v56 = Tag.debugDescription.getter(v12);
        *(&v56 + 1) = v50;
        v14 = 1145127456;
        v40 = 0xE400000000000000;
        goto LABEL_42;
      }

      *&v56 = Tag.debugDescription.getter(v12);
      *(&v56 + 1) = v13;
      v14 = 5197344;
    }

    else
    {
      *&v56 = Tag.debugDescription.getter(v12);
      *(&v56 + 1) = v49;
      v14 = 4935456;
    }

    v40 = 0xE300000000000000;
LABEL_42:
    MEMORY[0x1B2726E80](v14, v40);
    return v56;
  }

  if (v5 > 1)
  {
    if (v5 == 2)
    {
      v10 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
      v57 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v11 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
      v58 = v10;
      v59[0] = v11;
      *(v59 + 11) = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x4B);
      v56 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v54 = 0;
      v55 = 0xE000000000000000;
      sub_1B0B37A20(&v56, v52);
      MEMORY[0x1B2726E80](0x656C657320646944, 0xEC00000027207463);
      v52[2] = v58;
      v53[0] = v59[0];
      *(v53 + 11) = *(v59 + 11);
      v52[0] = v56;
      v52[1] = v57;
      sub_1B0E46508();
      sub_1B0B37A7C(&v56);
      MEMORY[0x1B2726E80](39, 0xE100000000000000);
      return v54;
    }

    else
    {
      v28 = swift_projectBox();
      sub_1B0B7EAA4(v28, v4);
      *&v56 = 8234;
      *(&v56 + 1) = 0xE200000000000000;
      v29 = UntaggedResponse.name.getter();
      MEMORY[0x1B2726E80](v29);

      v30 = v56;
      sub_1B0B7EB08(v4);
      return v30;
    }
  }

  if (!v5)
  {
    *&v56 = sub_1B0BFD9CC(*(a1 + 16));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
    sub_1B03B11C4();
    v7 = sub_1B0E448E8();
    v9 = v8;

    *&v56 = 0;
    *(&v56 + 1) = 0xE000000000000000;
    sub_1B0E46298();

    *&v56 = 0xD00000000000001ELL;
    *(&v56 + 1) = 0x80000001B0F2CE70;
    MEMORY[0x1B2726E80](v7, v9);
LABEL_32:

    v14 = 125;
    v40 = 0xE100000000000000;
    goto LABEL_42;
  }

  v15 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
  v16 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
  v17 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
  v18 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
  v19 = *(v17 + 16);
  *&v52[0] = MEMORY[0x1E69E7CC0];
  sub_1B041D32C(0, v19, 0);
  v20 = *&v52[0];
  ConnectionCommandIDSet.makeIterator()(v16, v17, v18);
  if (!v19)
  {
LABEL_30:
    sub_1B0E466E8();
    if ((BYTE8(v56) & 1) == 0)
    {
      v41 = v56;
      do
      {
        LOBYTE(v56) = v41;
        DWORD1(v56) = HIDWORD(v41);
        v42 = sub_1B0E44B88();
        *&v52[0] = v20;
        v45 = *(v20 + 16);
        v44 = *(v20 + 24);
        if (v45 >= v44 >> 1)
        {
          v47 = v42;
          v48 = v43;
          sub_1B041D32C((v44 > 1), v45 + 1, 1);
          v43 = v48;
          v42 = v47;
          v20 = *&v52[0];
        }

        *(v20 + 16) = v45 + 1;
        v46 = v20 + 16 * v45;
        *(v46 + 32) = v42;
        *(v46 + 40) = v43;
        sub_1B0E466E8();
        v41 = v56;
      }

      while (BYTE8(v56) != 1);
    }

    *&v56 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
    sub_1B03B11C4();
    v37 = sub_1B0E448E8();
    v39 = v38;

    *&v56 = 0;
    *(&v56 + 1) = 0xE000000000000000;
    sub_1B0E46298();
    MEMORY[0x1B2726E80](0xD000000000000015, 0x80000001B0F2CE50);
    *&v52[0] = v15;
    sub_1B0E46508();
    MEMORY[0x1B2726E80](8069161, 0xE300000000000000);
    MEMORY[0x1B2726E80](v37, v39);
    goto LABEL_32;
  }

  while (1)
  {
    result = sub_1B0E466E8();
    if (BYTE8(v56))
    {
      break;
    }

    v21 = sub_1B0E44B88();
    *&v52[0] = v20;
    v24 = *(v20 + 16);
    v23 = *(v20 + 24);
    if (v24 >= v23 >> 1)
    {
      v26 = v21;
      v27 = v22;
      sub_1B041D32C((v23 > 1), v24 + 1, 1);
      v22 = v27;
      v21 = v26;
      v20 = *&v52[0];
    }

    *(v20 + 16) = v24 + 1;
    v25 = v20 + 16 * v24;
    *(v25 + 32) = v21;
    *(v25 + 40) = v22;
    if (!--v19)
    {
      goto LABEL_30;
    }
  }

  __break(1u);
  return result;
}

unint64_t Event.payload.getter()
{
  v1 = *(v0 + 8);
  sub_1B044CD04(v1);
  return v1;
}

unint64_t Event.payload.setter(uint64_t a1)
{
  result = sub_1B044CEF8(*(v1 + 8));
  *(v1 + 8) = a1;
  return result;
}

uint64_t Event.runningCommandIDs.getter()
{
  v1 = *(v0 + 16);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v1;
}

uint64_t Event.runningCommandIDs.setter(int a1, uint64_t a2, uint64_t a3)
{

  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = a3;
  return result;
}

void (*Event.Payload.forEachCommand(_:)(void (*result)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, double), uint64_t a2, unint64_t a3))(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, double)
{
  if (a3 >> 60 == 4)
  {
    v4 = result;
    v5 = *((a3 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    v6 = *((a3 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
    v7 = *((a3 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
    v8 = *((a3 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
    v9 = *((a3 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
    v10 = sub_1B0A91FD0(v6, v7, v8, v9);
    v4(v5, v6, v7, v8, v9, v10);

    return sub_1B0BB6FE0(v6, v7, v8, v9);
  }

  return result;
}

char *sub_1B0BFE554(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B0BFE5F4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B0BFE574(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B0BFE6F8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B0BFE594(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B0BFE818(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B0BFE5B4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B0BFE90C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B0BFE5D4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B0BFEA24(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B0BFE5F4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4308, &qword_1B0EC5050);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1B0BFE6F8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5630, &qword_1B0ED5CF0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[80 * v8])
    {
      memmove(v12, v13, 80 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B0BFE818(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5640, &qword_1B0ED3868);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
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

char *sub_1B0BFE90C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5648, &qword_1B0ED3870);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1B0BFEA24(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5618, &qword_1B0ED3850);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t _s15IMAP2Connection5EventV7PayloadO21__derived_enum_equalsySbAE_AEtFZ_0(unint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for UntaggedResponse(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v51[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v51[-v8];
  v10 = a1 >> 60;
  if ((a1 >> 60) <= 3)
  {
    if (v10 > 1)
    {
      if (v10 == 2)
      {
        v24 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
        v54 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
        v55[0] = v24;
        *(v55 + 11) = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x4B);
        v25 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v52 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v53 = v25;
        if (a2 >> 60 == 2)
        {
          v26 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
          v57 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
          v58 = v26;
          v59[0] = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
          *(v59 + 11) = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x4B);
          v56 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
          sub_1B0B37A20(&v56, v51);
          v11 = _s15IMAP2Connection15SelectedMailboxV23__derived_struct_equalsySbAC_ACtFZ_0(&v52, &v56);
          sub_1B0B37A7C(&v56);
          return v11 & 1;
        }
      }

      else if (a2 >> 60 == 3)
      {
        v39 = swift_projectBox();
        v40 = swift_projectBox();
        sub_1B0B7EAA4(v39, v9);
        sub_1B0B7EAA4(v40, v6);
        v11 = static UntaggedResponse.__derived_enum_equals(_:_:)(v9, v6);
        sub_1B0B7EB08(v6);
        sub_1B0B7EB08(v9);
        return v11 & 1;
      }

      goto LABEL_54;
    }

    if (!v10)
    {
      v12 = *(a1 + 16);
      v13 = *(a1 + 136);
      v14 = *(a1 + 168);
      v55[5] = *(a1 + 152);
      v55[6] = v14;
      v55[7] = *(a1 + 184);
      v15 = *(a1 + 72);
      v16 = *(a1 + 104);
      v55[1] = *(a1 + 88);
      v55[2] = v16;
      v55[3] = *(a1 + 120);
      v55[4] = v13;
      v17 = *(a1 + 40);
      v52 = *(a1 + 24);
      v53 = v17;
      v54 = *(a1 + 56);
      v55[0] = v15;
      if (!(a2 >> 60))
      {
        v18 = *(a2 + 16);
        v19 = *(a2 + 152);
        v59[4] = *(a2 + 136);
        v59[5] = v19;
        v20 = *(a2 + 184);
        v59[6] = *(a2 + 168);
        v59[7] = v20;
        v21 = *(a2 + 88);
        v59[0] = *(a2 + 72);
        v59[1] = v21;
        v22 = *(a2 + 120);
        v59[2] = *(a2 + 104);
        v59[3] = v22;
        v23 = *(a2 + 40);
        v56 = *(a2 + 24);
        v57 = v23;
        v58 = *(a2 + 56);
        if (sub_1B0BE5360(v12, v18))
        {
          v11 = static ServerID.__derived_struct_equals(_:_:)(&v52, &v56);
          return v11 & 1;
        }
      }

LABEL_54:
      v11 = 0;
      return v11 & 1;
    }

    if (a2 >> 60 != 1)
    {
      goto LABEL_54;
    }

    v31 = a1 & 0xFFFFFFFFFFFFFFFLL;
    v32 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
    v34 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
    v33 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
    v35 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    v36 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
    v38 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
    v37 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
    if ((_s15IMAP2Connection07CommandB0C12RecentErrorsV23__derived_struct_equalsySbAE_AEtFZ_0(*(v31 + 16), v35) & 1) == 0 || v32 != v36 || (sub_1B0BE9028(v34, v38) & 1) == 0 || (sub_1B0BE9028(v33, v37) & 1) == 0)
    {
      goto LABEL_54;
    }

LABEL_52:
    v11 = 1;
    return v11 & 1;
  }

  if (v10 <= 5)
  {
    if (v10 == 4)
    {
      if (a2 >> 60 != 4)
      {
        goto LABEL_54;
      }

      v11 = 0;
      if (*((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10) != *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10) || *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x14) != *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x14))
      {
        return v11 & 1;
      }

      v27 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
      if (*((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x30))
      {
        if (*((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x30) == 1)
        {
          if (v27 != 1)
          {
            goto LABEL_54;
          }
        }

        else if (v27 != 2)
        {
          goto LABEL_54;
        }
      }

      else if (*((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x30))
      {
        goto LABEL_54;
      }

      if ((static ResponseText.__derived_struct_equals(_:_:)(*((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18), *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20), *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x28), *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x18), *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20), *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x28)) & 1) == 0)
      {
        goto LABEL_54;
      }
    }

    else
    {
      if (a2 >> 60 != 5)
      {
        goto LABEL_54;
      }

      v42 = a2 & 0xFFFFFFFFFFFFFFFLL;
      if ((*((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18) | (*((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18) << 32)) != (*((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x18) | (*((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x18) << 32)))
      {
        goto LABEL_54;
      }

      v43 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v44 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v45 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
      v46 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
      v47 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v48 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
      v49 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
      if ((sub_1B04520BC(v43, *(v42 + 16)) & 1) == 0)
      {
        goto LABEL_54;
      }

      if (v46)
      {
        if (!v49)
        {
          goto LABEL_54;
        }

        sub_1B0B6DCB0(v47, v48, v49);
        sub_1B0B6DCB0(v47, v48, v49);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v50 = static ResponseText.__derived_struct_equals(_:_:)(v44, v45, v46, v47, v48, v49);

        sub_1B0B6DCF0(v47, v48, v49);
        sub_1B0447F00(v47);

        if ((v50 & 1) == 0)
        {
          goto LABEL_54;
        }
      }

      else if (v49)
      {
        goto LABEL_54;
      }
    }

    goto LABEL_52;
  }

  if (v10 != 6)
  {
    if (v10 == 7)
    {
      if (a2 >> 60 == 7)
      {
        v11 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10) ^ *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10) ^ 1;
        return v11 & 1;
      }

      goto LABEL_54;
    }

    v41 = 0x8000000000000000;
    if (a1 == 0x8000000000000000 || (v41 = 0x8000000000000008, a1 == 0x8000000000000008))
    {
      if (a2 != v41)
      {
        goto LABEL_54;
      }
    }

    else if (a2 != 0x8000000000000010)
    {
      goto LABEL_54;
    }

    goto LABEL_52;
  }

  if (a2 >> 60 != 6)
  {
    goto LABEL_54;
  }

  v28 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
  v29 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);

  return sub_1B0429CE0(v28, v29);
}

ValueMetadata *type metadata accessor for Event()
{
  return &type metadata for Event;
}

{
  return &type metadata for Event;
}

uint64_t sub_1B0BFF044(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x78 && *(a1 + 8))
  {
    return (*a1 + 120);
  }

  v3 = ((*a1 >> 60) & 0x8F | (16 * (*a1 & 7))) ^ 0x7F;
  if (v3 >= 0x77)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1B0BFF094(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x77)
  {
    *result = a2 - 120;
    if (a3 >= 0x78)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x78)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 4) & 7 | (8 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_1B0BFF0F4(void *result, uint64_t a2)
{
  if (a2 < 8)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 60);
  }

  else
  {
    *result = (8 * (a2 - 8)) | 0x8000000000000000;
  }

  return result;
}

uint64_t sub_1B0BFF130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v58 = a5;
  v59 = a4;
  v57 = a3;
  v55 = sub_1B0E443C8();
  v7 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v48 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v49 = &v48 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v50 = &v48 - v12;
  v54 = sub_1B0E43828();
  v13 = *(v54 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v54);
  v53 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1B0E43CD8();
  v61 = *(v15 - 8);
  v62 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2070, &qword_1B0E9F040);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v56 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v52 = &v48 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v48 - v23;
  v25 = sub_1B0C055D0(a1, a2);
  v65 = 0;
  v66 = 0xE000000000000000;
  v63[0] = a1;
  v64 = HIDWORD(a1);
  sub_1B0E46508();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E49B0, &unk_1B0EC6FA0);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1B0EC6C30;
  *(v26 + 32) = v25;
  sub_1B0E43CC8();
  swift_allocObject();
  v60 = v25;

  v51 = sub_1B0E43C98();
  sub_1B0E44378();
  v27 = v55;
  (*(v7 + 56))(v24, 0, 1, v55);
  v28 = v53;
  v29 = v54;
  (*(v13 + 16))(v53, v57, v54);
  v30 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v31 = (v14 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = swift_allocObject();
  v33 = v32 + v30;
  v34 = v58;
  v35 = v28;
  v36 = v52;
  (*(v13 + 32))(v33, v35, v29);
  v37 = v27;
  v38 = (v32 + v31);
  *v38 = v59;
  v38[1] = v34;
  *v17 = sub_1B0C05ACC;
  v17[1] = v32;
  (*(v61 + 104))(v17, *MEMORY[0x1E6977BF8], v62);
  sub_1B03B5C80(v24, v36, &qword_1EB6E2070, &qword_1B0E9F040);
  v39 = *(v7 + 48);
  if (v39(v36, 1, v37) == 1)
  {

    sub_1B0398EFC(v36, &qword_1EB6E2070, &qword_1B0E9F040);
    v40 = v56;
    sub_1B03B5C80(v24, v56, &qword_1EB6E2070, &qword_1B0E9F040);
    if (v39(v40, 1, v37) == 1)
    {
      sub_1B0398EFC(v56, &qword_1EB6E2070, &qword_1B0E9F040);
      sub_1B0E43DD8();
    }

    else
    {
      v42 = v49;
      (*(v7 + 32))(v49, v56, v37);
      v43 = v48;
      (*(v7 + 16))(v48, v42, v37);
      v44 = sub_1B0C01788(v43);
      v46 = v45;
      sub_1B0E43DD8();

      sub_1B0391D50(v44, v46);

      (*(v7 + 8))(v42, v37);
    }
  }

  else
  {
    v41 = v50;
    (*(v7 + 32))(v50, v36, v37);

    sub_1B0E43DC8();

    (*(v7 + 8))(v41, v37);
  }

  (*(v61 + 8))(v17, v62);
  return sub_1B0398EFC(v24, &qword_1EB6E2070, &qword_1B0E9F040);
}

uint64_t sub_1B0BFF7B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v42 = a3;
  v44 = a2;
  v4 = sub_1B0E443C8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v38 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v39 = &v38 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v41 = &v38 - v10;
  v11 = sub_1B0E43CD8();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2070, &qword_1B0E9F040);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v40 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v38 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v38 - v21;
  if (qword_1EB6DCDA8 != -1)
  {
    swift_once();
  }

  sub_1B0E44008();
  swift_allocObject();

  v23 = sub_1B0E43FE8();
  v46 = sub_1B0E44118();
  v45 = a1;

  sub_1B0E44028();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E49B0, &unk_1B0EC6FA0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1B0EC6C30;
  *(v24 + 32) = v23;
  sub_1B0E43CC8();
  swift_allocObject();

  v25 = sub_1B0E43C98();
  sub_1B0E44378();
  (*(v5 + 56))(v22, 0, 1, v4);
  v26 = swift_allocObject();
  v27 = v42;
  *(v26 + 16) = v44;
  *(v26 + 24) = v27;
  *v14 = sub_1B0C05E9C;
  v14[1] = v26;
  v28 = *MEMORY[0x1E6977BF8];
  v43 = v12;
  v44 = v11;
  (*(v12 + 104))(v14, v28, v11);
  sub_1B03B5C80(v22, v19, &qword_1EB6E2070, &qword_1B0E9F040);
  v29 = *(v5 + 48);
  if (v29(v19, 1, v4) == 1)
  {
    v41 = v25;

    sub_1B0398EFC(v19, &qword_1EB6E2070, &qword_1B0E9F040);
    v30 = v40;
    sub_1B03B5C80(v22, v40, &qword_1EB6E2070, &qword_1B0E9F040);
    if (v29(v30, 1, v4) == 1)
    {
      sub_1B0398EFC(v30, &qword_1EB6E2070, &qword_1B0E9F040);
      sub_1B0E43DD8();
    }

    else
    {
      v32 = v39;
      (*(v5 + 32))(v39, v30, v4);
      v33 = v38;
      (*(v5 + 16))(v38, v32, v4);
      v34 = sub_1B0C01788(v33);
      v36 = v35;
      sub_1B0E43DD8();

      sub_1B0391D50(v34, v36);

      (*(v5 + 8))(v32, v4);
    }
  }

  else
  {
    v31 = v41;
    (*(v5 + 32))(v41, v19, v4);

    sub_1B0E43DC8();

    (*(v5 + 8))(v31, v4);
  }

  (*(v43 + 8))(v14, v44);
  return sub_1B0398EFC(v22, &qword_1EB6E2070, &qword_1B0E9F040);
}

uint64_t sub_1B0BFFDBC(int a1)
{
  v2 = sub_1B0E443C8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v33 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v32 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v36 = &v32 - v8;
  v9 = sub_1B0E43CD8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2070, &qword_1B0E9F040);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v35 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v32 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v32 - v19;
  if (qword_1EB6DCDA8 != -1)
  {
    swift_once();
  }

  sub_1B0E44008();
  swift_allocObject();

  v21 = sub_1B0E43FE8();
  v41 = &type metadata for ClientCommand.EncodingOptions;
  v39 = a1 & 0x1FF;
  v40 = BYTE2(a1) & 1;
  sub_1B0E44028();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E49B0, &unk_1B0EC6FA0);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1B0EC6C30;
  *(v22 + 32) = v21;
  sub_1B0E43CC8();
  swift_allocObject();

  sub_1B0E43C98();
  sub_1B0E44378();
  (*(v3 + 56))(v20, 0, 1, v2);
  v23 = *MEMORY[0x1E6977BF0];
  v37 = v10;
  v38 = v9;
  (*(v10 + 104))(v12, v23, v9);
  sub_1B03B5C80(v20, v17, &qword_1EB6E2070, &qword_1B0E9F040);
  v24 = *(v3 + 48);
  if (v24(v17, 1, v2) != 1)
  {
    v26 = v36;
    (*(v3 + 32))(v36, v17, v2);
    sub_1B0E43DC8();

LABEL_8:

    (*(v3 + 8))(v26, v2);
    goto LABEL_9;
  }

  v36 = v12;
  sub_1B0398EFC(v17, &qword_1EB6E2070, &qword_1B0E9F040);
  v25 = v35;
  sub_1B03B5C80(v20, v35, &qword_1EB6E2070, &qword_1B0E9F040);
  if (v24(v25, 1, v2) != 1)
  {
    v26 = v34;
    (*(v3 + 32))(v34, v25, v2);
    v27 = v33;
    (*(v3 + 16))(v33, v26, v2);
    v28 = sub_1B0C01788(v27);
    v30 = v29;
    v12 = v36;
    sub_1B0E43DD8();

    sub_1B0391D50(v28, v30);
    goto LABEL_8;
  }

  sub_1B0398EFC(v25, &qword_1EB6E2070, &qword_1B0E9F040);
  v12 = v36;
  sub_1B0E43DD8();

LABEL_9:
  (*(v37 + 8))(v12, v38);
  return sub_1B0398EFC(v20, &qword_1EB6E2070, &qword_1B0E9F040);
}

uint64_t sub_1B0C00370(uint64_t a1, uint64_t a2)
{
  v40 = a2;
  v42 = a1;
  v2 = sub_1B0E443C8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v36 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v37 = &v36 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v39 = &v36 - v8;
  v9 = sub_1B0E43CD8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2070, &qword_1B0E9F040);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v38 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v36 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v36 - v19;
  if (qword_1EB6DCDA8 != -1)
  {
    swift_once();
  }

  sub_1B0E44008();
  swift_allocObject();

  v21 = sub_1B0E43FE8();
  v44 = MEMORY[0x1E69E6370];
  v43[0] = 1;
  sub_1B0E44028();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E49B0, &unk_1B0EC6FA0);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1B0EC6C30;
  *(v22 + 32) = v21;
  sub_1B0E43CC8();
  swift_allocObject();

  v23 = sub_1B0E43C98();
  sub_1B0E44378();
  (*(v3 + 56))(v20, 0, 1, v2);
  v24 = swift_allocObject();
  v25 = v40;
  *(v24 + 16) = v42;
  *(v24 + 24) = v25;
  *v12 = sub_1B0C05BF4;
  v12[1] = v24;
  v26 = *MEMORY[0x1E6977BF8];
  v41 = v10;
  v42 = v9;
  (*(v10 + 104))(v12, v26, v9);
  sub_1B03B5C80(v20, v17, &qword_1EB6E2070, &qword_1B0E9F040);
  v27 = *(v3 + 48);
  if (v27(v17, 1, v2) == 1)
  {
    v39 = v23;

    sub_1B0398EFC(v17, &qword_1EB6E2070, &qword_1B0E9F040);
    v28 = v38;
    sub_1B03B5C80(v20, v38, &qword_1EB6E2070, &qword_1B0E9F040);
    if (v27(v28, 1, v2) == 1)
    {
      sub_1B0398EFC(v28, &qword_1EB6E2070, &qword_1B0E9F040);
      sub_1B0E43DD8();
    }

    else
    {
      v30 = v37;
      (*(v3 + 32))(v37, v28, v2);
      v31 = v36;
      (*(v3 + 16))(v36, v30, v2);
      v32 = sub_1B0C01788(v31);
      v34 = v33;
      sub_1B0E43DD8();

      sub_1B0391D50(v32, v34);

      (*(v3 + 8))(v30, v2);
    }
  }

  else
  {
    v29 = v39;
    (*(v3 + 32))(v39, v17, v2);

    sub_1B0E43DC8();

    (*(v3 + 8))(v29, v2);
  }

  (*(v41 + 8))(v12, v42);
  return sub_1B0398EFC(v20, &qword_1EB6E2070, &qword_1B0E9F040);
}

uint64_t sub_1B0C0097C()
{
  v0 = sub_1B0E443C8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v31 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v32 = &v30 - v4;
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v30 - v6;
  v7 = sub_1B0E43CD8();
  v36 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2070, &qword_1B0E9F040);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v33 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v30 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v30 - v16;
  if (qword_1EB6DCDA8 != -1)
  {
    swift_once();
  }

  sub_1B0E44008();
  swift_allocObject();

  v18 = sub_1B0E43FE8();
  v37 = &_s10WorkaroundON;
  sub_1B0E44028();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E49B0, &unk_1B0EC6FA0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1B0EC6C30;
  *(v19 + 32) = v18;
  sub_1B0E43CC8();
  swift_allocObject();

  sub_1B0E43C98();
  sub_1B0E44378();
  (*(v1 + 56))(v17, 0, 1, v0);
  v20 = *MEMORY[0x1E6977BF0];
  v21 = *(v36 + 104);
  v35 = v7;
  v21(v9, v20, v7);
  sub_1B03B5C80(v17, v14, &qword_1EB6E2070, &qword_1B0E9F040);
  v22 = *(v1 + 48);
  if (v22(v14, 1, v0) != 1)
  {
    v24 = v34;
    (*(v1 + 32))(v34, v14, v0);
    sub_1B0E43DC8();

LABEL_8:

    (*(v1 + 8))(v24, v0);
    goto LABEL_9;
  }

  v34 = v9;
  sub_1B0398EFC(v14, &qword_1EB6E2070, &qword_1B0E9F040);
  v23 = v33;
  sub_1B03B5C80(v17, v33, &qword_1EB6E2070, &qword_1B0E9F040);
  if (v22(v23, 1, v0) != 1)
  {
    v24 = v32;
    (*(v1 + 32))(v32, v23, v0);
    v25 = v31;
    (*(v1 + 16))(v31, v24, v0);
    v26 = sub_1B0C01788(v25);
    v28 = v27;
    v9 = v34;
    sub_1B0E43DD8();

    sub_1B0391D50(v26, v28);
    goto LABEL_8;
  }

  sub_1B0398EFC(v23, &qword_1EB6E2070, &qword_1B0E9F040);
  v9 = v34;
  sub_1B0E43DD8();

LABEL_9:
  (*(v36 + 8))(v9, v35);
  return sub_1B0398EFC(v17, &qword_1EB6E2070, &qword_1B0E9F040);
}

uint64_t sub_1B0C00F18(uint64_t a1)
{
  v18[5] = *MEMORY[0x1E69E9840];
  v14 = a1;
  *&v15 = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E56A8, &unk_1B0ED39A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5698, &qword_1B0ED3920);
  if (swift_dynamicCast())
  {
    sub_1B0450C74(v16, v18);
    __swift_project_boxed_opaque_existential_0(v18, v18[3]);
    sub_1B0E42B88();
    v16[0] = v15;
    __swift_destroy_boxed_opaque_existential_0Tm(v18);
    goto LABEL_31;
  }

  v17 = 0;
  memset(v16, 0, sizeof(v16));
  v1 = sub_1B0398EFC(v16, &qword_1EB6E56A0, &qword_1B0ED3928);
  v16[0] = xmmword_1B0ECF4A0;
  MEMORY[0x1EEE9AC00](v1);
  v13[2] = &v14;
  sub_1B0C03F68(sub_1B0C05D64, v13);
  v3 = *(&v16[0] + 1) >> 62;
  if ((*(&v16[0] + 1) >> 62) <= 1)
  {
    if (v3)
    {
      if (__OFSUB__(DWORD1(v16[0]), v16[0]))
      {
        goto LABEL_35;
      }

      if (v2 == DWORD1(v16[0]) - LODWORD(v16[0]))
      {
        goto LABEL_18;
      }
    }

    else if (v2 == BYTE14(v16[0]))
    {
      goto LABEL_18;
    }

    goto LABEL_13;
  }

  if (v3 == 2)
  {
    v5 = *(*&v16[0] + 16);
    v4 = *(*&v16[0] + 24);
    v6 = __OFSUB__(v4, v5);
    v7 = v4 - v5;
    if (v6)
    {
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
    }

    if (v2 == v7)
    {
      goto LABEL_18;
    }

LABEL_13:
    if (v3 == 2)
    {
      v8 = *(*&v16[0] + 24);
    }

    else if (v3 == 1)
    {
      v8 = *&v16[0] >> 32;
    }

    else
    {
      v8 = BYTE14(v16[0]);
    }

LABEL_28:
    if (v8 >= v2)
    {
      sub_1B0E42ED8();
      goto LABEL_30;
    }

    goto LABEL_33;
  }

  if (v2)
  {
    v8 = 0;
    goto LABEL_28;
  }

LABEL_18:
  memset(v18, 0, 15);
  sub_1B0E466E8();
  if (BYTE1(v15))
  {
    goto LABEL_30;
  }

  LOBYTE(v9) = 0;
  v10 = v15;
  do
  {
    *(v18 + v9) = v10;
    v9 = v9 + 1;
    if ((v9 >> 8))
    {
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    if (v9 == 14)
    {
      *&v15 = v18[0];
      *(&v15 + 6) = *(v18 + 6);
      sub_1B0E42EF8();
      LOBYTE(v9) = 0;
    }

    sub_1B0E466E8();
    v10 = v15;
  }

  while ((BYTE1(v15) & 1) == 0);
  if (v9)
  {
    *&v15 = v18[0];
    *(&v15 + 6) = *(v18 + 6);
    sub_1B0E42EF8();
  }

LABEL_30:

LABEL_31:
  v11 = v16[0];
  sub_1B03B2000(*&v16[0], *(&v16[0] + 1));

  sub_1B0391D50(v11, *(&v11 + 1));
  return v11;
}

uint64_t sub_1B0C01268(uint64_t a1, unint64_t a2)
{
  v45 = *MEMORY[0x1E69E9840];
  v39[0] = a1;
  v39[1] = a2;
  *&v42 = a1;
  *(&v42 + 1) = a2;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5698, &qword_1B0ED3920);
  if (swift_dynamicCast())
  {
    sub_1B0450C74(__src, &v43);
    __swift_project_boxed_opaque_existential_0(&v43, v44);
    sub_1B0E42B88();
    __src[0] = v42;
    __swift_destroy_boxed_opaque_existential_0Tm(&v43);
    goto LABEL_63;
  }

  v41 = 0;
  memset(__src, 0, sizeof(__src));
  sub_1B0398EFC(__src, &qword_1EB6E56A0, &qword_1B0ED3928);
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
    v4 = sub_1B0E46368();
  }

  sub_1B0C03CB4(&v43, v4, v5);
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
  *&__src[0] = sub_1B0C05530(v8);
  *(&__src[0] + 1) = v9;
  MEMORY[0x1EEE9AC00](*&__src[0]);
  v34[2] = v39;
  v10 = sub_1B0C042F4(sub_1B0C05B6C, v34);
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
        sub_1B0E42ED8();
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
      v28 = sub_1B0A6D6C4(v16, v14, v15);
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
      v8 = sub_1B0E44DC8();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = sub_1B0E44E08();
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
        v30 = sub_1B0E46368();
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

    v16 = sub_1B0A6D6C4(v16, v14, v15);
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

    v16 = sub_1B0E44DD8();
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
      sub_1B0E42EF8();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v35;
  if (v24)
  {
    *&v43 = v42;
    *(&v43 + 6) = *(&v42 + 6);
    sub_1B0E42EF8();
    sub_1B050755C(v36, v6);
    goto LABEL_62;
  }

LABEL_57:

  sub_1B050755C(v36, v6);
LABEL_63:
  v32 = __src[0];
  sub_1B03B2000(*&__src[0], *(&__src[0] + 1));

  sub_1B0391D50(v32, *(&v32 + 1));
  return v32;
}

uint64_t sub_1B0C01788(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5690, &qword_1B0ED3918);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v26 - v3;
  v5 = sub_1B0E441F8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1B0E443C8();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  (*(v10 + 16))(&v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v9, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5698, &qword_1B0ED3920);
  if (!swift_dynamicCast())
  {
    v27 = v6;
    v30 = 0;
    memset(v29, 0, sizeof(v29));
    sub_1B0398EFC(v29, &qword_1EB6E56A0, &qword_1B0ED3928);
    sub_1B03D6540(&qword_1EB6DB988, 255, MEMORY[0x1E69E7FD0], MEMORY[0x1E69E7FE0]);
    sub_1B0E44F38();
    if (*(&v31 + 1) >> 60 != 15)
    {
      v29[0] = v31;
      goto LABEL_33;
    }

    v26 = v31;
    v13 = sub_1B0E44F28();
    *&v29[0] = sub_1B0C05530(v13);
    *(&v29[0] + 1) = v14;
    MEMORY[0x1EEE9AC00](*&v29[0]);
    *(&v26 - 2) = a1;
    sub_1B0C04698(sub_1B0C05AB0, (&v26 - 2));
    v15 = *&v4[*(v2 + 48)];
    v16 = v27;
    (*(v27 + 32))(v8, v4, v5);
    v17 = *(&v29[0] + 1) >> 62;
    if ((*(&v29[0] + 1) >> 62) > 1)
    {
      if (v17 != 2)
      {
        if (!v15)
        {
          goto LABEL_20;
        }

        v22 = 0;
LABEL_31:
        if (v22 >= v15)
        {
          sub_1B0E42ED8();
          (*(v16 + 8))(v8, v5);
          goto LABEL_33;
        }

LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      v19 = *(*&v29[0] + 16);
      v18 = *(*&v29[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
      }

      if (v15 == v21)
      {
        goto LABEL_20;
      }
    }

    else if (v17)
    {
      if (__OFSUB__(DWORD1(v29[0]), v29[0]))
      {
        goto LABEL_37;
      }

      if (v15 == DWORD1(v29[0]) - LODWORD(v29[0]))
      {
        goto LABEL_20;
      }
    }

    else if (v15 == BYTE14(v29[0]))
    {
LABEL_20:
      sub_1B03D6540(&qword_1EB6DB990, 255, MEMORY[0x1E69E7F18], MEMORY[0x1E69E7F20]);
      *&v31 = 0;
      *(&v31 + 7) = 0;
      sub_1B0E45E38();
      if (BYTE1(v28) == 1)
      {
        goto LABEL_28;
      }

      LOBYTE(v23) = 0;
      while (1)
      {
        *(&v31 + v23) = v28;
        v23 = v23 + 1;
        if ((v23 >> 8))
        {
          break;
        }

        if (v23 == 14)
        {
          *&v28 = v31;
          *(&v28 + 6) = *(&v31 + 6);
          sub_1B0E42EF8();
          LOBYTE(v23) = 0;
        }

        sub_1B0E45E38();
        if (BYTE1(v28))
        {
          if (v23)
          {
            *&v28 = v31;
            *(&v28 + 6) = *(&v31 + 6);
            sub_1B0E42EF8();
            sub_1B050755C(v26, *(&v26 + 1));
            (*(v27 + 8))(v8, v5);
            goto LABEL_33;
          }

LABEL_28:
          (*(v27 + 8))(v8, v5);
          sub_1B050755C(v26, *(&v26 + 1));
          goto LABEL_33;
        }
      }

      __break(1u);
      goto LABEL_35;
    }

    if (v17 == 2)
    {
      v22 = *(*&v29[0] + 24);
    }

    else if (v17 == 1)
    {
      v22 = *&v29[0] >> 32;
    }

    else
    {
      v22 = BYTE14(v29[0]);
    }

    goto LABEL_31;
  }

  sub_1B0450C74(v29, &v31);
  __swift_project_boxed_opaque_existential_0(&v31, v32);
  sub_1B0E42B88();
  v29[0] = v28;
  __swift_destroy_boxed_opaque_existential_0Tm(&v31);
LABEL_33:
  v24 = *&v29[0];
  sub_1B03B2000(*&v29[0], *(&v29[0] + 1));
  (*(v10 + 8))(a1, v9);
  sub_1B0391D50(*&v29[0], *(&v29[0] + 1));
  return v24;
}

uint64_t sub_1B0C01DA0()
{
  v0 = sub_1B0E439A8();
  __swift_allocate_value_buffer(v0, qword_1EB6DCD58);
  __swift_project_value_buffer(v0, qword_1EB6DCD58);
  return sub_1B0E43998();
}

uint64_t sub_1B0C01E20()
{
  type metadata accessor for Framer();
  sub_1B03D6540(&qword_1EB6DCD80, v0, type metadata accessor for Framer, &unk_1B0ED38A0);
  sub_1B0E43FC8();
  swift_allocObject();
  result = sub_1B0E43FB8();
  qword_1EB737B98 = result;
  return result;
}

uint64_t sub_1B0C01EAC()
{
  v1 = *(v0 + 160);
  v8[8] = *(v0 + 144);
  v8[9] = v1;
  v2 = *(v0 + 192);
  v8[10] = *(v0 + 176);
  v8[11] = v2;
  v3 = *(v0 + 96);
  v8[4] = *(v0 + 80);
  v8[5] = v3;
  v4 = *(v0 + 128);
  v8[6] = *(v0 + 112);
  v8[7] = v4;
  v5 = *(v0 + 32);
  v8[0] = *(v0 + 16);
  v8[1] = v5;
  v6 = *(v0 + 64);
  v8[2] = *(v0 + 48);
  v8[3] = v6;
  sub_1B0C059F8(v8);

  sub_1B03D6500(*(v0 + 248), *(v0 + 256));
  return swift_deallocClassInstance();
}

uint64_t sub_1B0C01F58(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v49 = a4;
  v50 = a3;
  v46 = a2;
  v5 = sub_1B0E43868();
  v6 = *(v5 - 8);
  v51 = v5;
  v52 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v47 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v44 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E5A90, &unk_1B0EDC020);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v44 - v12;
  v14 = sub_1B0E441D8();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v44 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v44 - v22;
  v48 = a1;
  sub_1B03B5C80(a1, v13, &unk_1EB6E5A90, &unk_1B0EDC020);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1B0398EFC(v13, &unk_1EB6E5A90, &unk_1B0EDC020);
    v24 = tracingSignposter.unsafeMutableAddressor();
    v25 = v51;
    (*(v52 + 16))(v10, v24, v51);
    v26 = sub_1B0E43858();
    v27 = sub_1B0E45AE8();
    if (sub_1B0E45D38())
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      v29 = sub_1B0E43818();
      _os_signpost_emit_with_name_impl(&dword_1B0389000, v26, v27, v29, "Connection.didEnqueue", "", v28, 2u);
      MEMORY[0x1B272C230](v28, -1, -1);
    }

    (*(v52 + 8))(v10, v25);
  }

  else
  {
    (*(v15 + 32))(v23, v13, v14);
    v30 = tracingSignposter.unsafeMutableAddressor();
    v31 = v51;
    (*(v52 + 16))(v47, v30, v51);
    v32 = *(v15 + 16);
    v32(v20, v23, v14);
    v33 = sub_1B0E43858();
    v45 = sub_1B0E45AE8();
    if (sub_1B0E45D38())
    {
      v34 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v53 = v44;
      *v34 = 136315138;
      v32(v17, v20, v14);
      v35 = sub_1B0E44BA8();
      v37 = v36;
      v38 = *(v15 + 8);
      v38(v20, v14);
      v39 = sub_1B0399D64(v35, v37, &v53);

      *(v34 + 4) = v39;
      v40 = sub_1B0E43818();
      _os_signpost_emit_with_name_impl(&dword_1B0389000, v33, v45, v40, "Connection.didFailToSendData", "%s", v34, 0xCu);
      v41 = v44;
      __swift_destroy_boxed_opaque_existential_0Tm(v44);
      MEMORY[0x1B272C230](v41, -1, -1);
      MEMORY[0x1B272C230](v34, -1, -1);

      (*(v52 + 8))(v47, v51);
      v38(v23, v14);
    }

    else
    {

      v42 = *(v15 + 8);
      v42(v20, v14);
      (*(v52 + 8))(v47, v31);
      v42(v23, v14);
    }
  }

  return v50(v48);
}

uint64_t sub_1B0C02478(const void *a1, const void *a2, uint64_t a3)
{
  swift_beginAccess();
  ServerResponseFramingParser.append(_:)(a1, a2);
  return swift_endAccess();
}

uint64_t sub_1B0C024DC(uint64_t a1, uint64_t a2)
{
  v43[2] = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5530, &qword_1B0ED0CF8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v44 = v43 - v6;
  if (qword_1EB6DCD50 != -1)
  {
    swift_once();
  }

  v7 = sub_1B0E439A8();
  __swift_project_value_buffer(v7, qword_1EB6DCD58);

  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v8 = sub_1B0E43988();
  v9 = sub_1B0E45908();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *&v45 = v11;
    *v10 = 68158210;
    *(v10 + 4) = 2;
    *(v10 + 8) = 256;
    *(v10 + 10) = sub_1B04314DC(v11);

    *(v10 + 11) = 2082;
    v13 = sub_1B04314DC(v12);
    v14 = ConnectionID.debugDescription.getter(HIDWORD(v13));
    v16 = sub_1B0399D64(v14, v15, &v45);

    *(v10 + 13) = v16;
    _os_log_impl(&dword_1B0389000, v8, v9, "[%.*hhx-%{public}s] Adding TLS to the protocol stack.", v10, 0x15u);
    __swift_destroy_boxed_opaque_existential_0Tm(v11);
    MEMORY[0x1B272C230](v11, -1, -1);
    MEMORY[0x1B272C230](v10, -1, -1);
  }

  else
  {
  }

  v17 = v44;
  if (qword_1EB6DCDA8 != -1)
  {
    swift_once();
  }

  sub_1B0E44048();
  swift_allocObject();

  sub_1B0E44038();
  *(&v46 + 1) = MEMORY[0x1E69E6370];
  LOBYTE(v45) = 1;
  sub_1B0E44068();
  sub_1B0E440F8();
  sub_1B0E44058();

  if (*(&v46 + 1))
  {
    v18 = sub_1B0E43828();
    v19 = swift_dynamicCast();
    (*(*(v18 - 8) + 56))(v17, v19 ^ 1u, 1, v18);
  }

  else
  {
    sub_1B0398EFC(&v45, &qword_1EB6E29B0, &qword_1B0E9F008);
    v18 = sub_1B0E43828();
    (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  }

  sub_1B03B5C80(v17, v4, &qword_1EB6E5530, &qword_1B0ED0CF8);
  sub_1B0E43828();
  v20 = *(v18 - 8);
  if ((*(v20 + 48))(v4, 1, v18) == 1)
  {
    sub_1B0398EFC(v4, &qword_1EB6E5530, &qword_1B0ED0CF8);
    v45 = 0u;
    v46 = 0u;
  }

  else
  {
    *(&v46 + 1) = v18;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v45);
    (*(v20 + 32))(boxed_opaque_existential_0, v4, v18);
  }

  sub_1B0E44068();
  v22 = sub_1B0398EFC(v17, &qword_1EB6E5530, &qword_1B0ED0CF8);
  v23 = sub_1B04314DC(v22);
  *(&v46 + 1) = &type metadata for ConnectionLoggerID;
  LOBYTE(v45) = v23;
  DWORD1(v45) = HIDWORD(v23);
  sub_1B0E44068();
  v24 = v58;
  sub_1B0E440E8();
  if (v24)
  {
  }

  sub_1B0E440E8();
  sub_1B0E440A8();
  sub_1B0E440B8();
  sub_1B0E44108();
  ServerResponseFramingParser.init()(v57);
  v25 = v43[1];
  swift_beginAccess();
  v26 = *(v25 + 160);
  v53 = *(v25 + 144);
  v54 = v26;
  v27 = *(v25 + 192);
  v55 = *(v25 + 176);
  v56 = v27;
  v28 = *(v25 + 96);
  v49 = *(v25 + 80);
  v50 = v28;
  v29 = *(v25 + 128);
  v51 = *(v25 + 112);
  v52 = v29;
  v30 = *(v25 + 32);
  v45 = *(v25 + 16);
  v46 = v30;
  v31 = *(v25 + 64);
  v47 = *(v25 + 48);
  v48 = v31;
  v32 = v57[9];
  *(v25 + 144) = v57[8];
  *(v25 + 160) = v32;
  v33 = v57[11];
  *(v25 + 176) = v57[10];
  *(v25 + 192) = v33;
  v34 = v57[5];
  *(v25 + 80) = v57[4];
  *(v25 + 96) = v34;
  v35 = v57[7];
  *(v25 + 112) = v57[6];
  *(v25 + 128) = v35;
  v36 = v57[1];
  *(v25 + 16) = v57[0];
  *(v25 + 32) = v36;
  v37 = v57[3];
  *(v25 + 48) = v57[2];
  *(v25 + 64) = v37;
  sub_1B0C059F8(&v45);
  swift_beginAccess();
  *(v25 + 208) = MEMORY[0x1E69E7CC0];
  *(v25 + 216) = 0;
  *(v25 + 224) = 0;
  *(v25 + 232) = 0;
  *(v25 + 240) = 256;

  v38 = ClientCommand.EncodingOptions.rfc3501.unsafeMutableAddressor();
  v39 = *v38;
  v40 = v38[1];
  v41 = v38[2];

  *(v25 + 242) = v39;
  *(v25 + 243) = v40;
  *(v25 + 244) = v41;
  return result;
}