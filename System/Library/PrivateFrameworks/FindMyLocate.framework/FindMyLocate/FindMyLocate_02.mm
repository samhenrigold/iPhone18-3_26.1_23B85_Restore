uint64_t sub_1B7FE8124(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Friend(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B7FE8188(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1B7FBA3EC;

  return sub_1B7FE77C4(a1, v4, v5, v6, v7);
}

uint64_t sub_1B7FE8254(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B7FE829C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1684632949;
  if (a1 > 1u)
  {
    v5 = a1 == 2;
    v3 = 0xEF44496E6F697463;
    v4 = 0xEA00000000007265;
    if (a1 == 2)
    {
      v6 = 0x656E6E6F43637078;
    }

    else
    {
      v6 = 0x696669746E656469;
    }
  }

  else
  {
    v3 = 0xE400000000000000;
    v4 = 0xEE00657079546E6FLL;
    v5 = a1 == 0;
    if (a1)
    {
      v6 = 0x697463656E6E6F63;
    }

    else
    {
      v6 = 1684632949;
    }
  }

  if (v5)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  v8 = 0xE400000000000000;
  v9 = 0x656E6E6F43637078;
  v10 = 0xEF44496E6F697463;
  if (a2 != 2)
  {
    v9 = 0x696669746E656469;
    v10 = 0xEA00000000007265;
  }

  if (a2)
  {
    v2 = 0x697463656E6E6F63;
    v8 = 0xEE00657079546E6FLL;
  }

  if (a2 <= 1u)
  {
    v11 = v2;
  }

  else
  {
    v11 = v9;
  }

  if (a2 <= 1u)
  {
    v12 = v8;
  }

  else
  {
    v12 = v10;
  }

  if (v6 == v11 && v7 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_1B80C981C();
  }

  return v13 & 1;
}

uint64_t sub_1B7FE840C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 3u)
  {
    v11 = 0xE700000000000000;
    v12 = 0x4C64696C61766E69;
    v13 = 0xEF6E6F697461636FLL;
    if (a1 != 2)
    {
      v12 = 0x64656C6261736964;
      v13 = 0xE800000000000000;
    }

    v14 = 0x656C74746F726874;
    if (a1)
    {
      v11 = 0xE900000000000064;
    }

    else
    {
      v14 = 0x636972656E6567;
    }

    if (a1 <= 1u)
    {
      v9 = v14;
    }

    else
    {
      v9 = v12;
    }

    if (v2 <= 1)
    {
      v10 = v11;
    }

    else
    {
      v10 = v13;
    }
  }

  else
  {
    v3 = 0x7373654D646E6573;
    v4 = 0xEB00000000656761;
    v5 = 0xD000000000000012;
    v6 = 0x80000001B80CB600;
    if (a1 != 7)
    {
      v5 = 0xD000000000000014;
      v6 = 0x80000001B80CB620;
    }

    if (a1 != 6)
    {
      v3 = v5;
      v4 = v6;
    }

    v7 = 0x696C616974696E69;
    v8 = 0xEE006E6F6974617ALL;
    if (a1 != 4)
    {
      v7 = 0x7550746F6E6E6163;
      v8 = 0xED00006873696C62;
    }

    if (a1 <= 5u)
    {
      v9 = v7;
    }

    else
    {
      v9 = v3;
    }

    if (v2 <= 5)
    {
      v10 = v8;
    }

    else
    {
      v10 = v4;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v15 = 0xEF6E6F697461636FLL;
        if (v9 != 0x4C64696C61766E69)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v15 = 0xE800000000000000;
        if (v9 != 0x64656C6261736964)
        {
          goto LABEL_52;
        }
      }
    }

    else if (a2)
    {
      v15 = 0xE900000000000064;
      if (v9 != 0x656C74746F726874)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v15 = 0xE700000000000000;
      if (v9 != 0x636972656E6567)
      {
        goto LABEL_52;
      }
    }
  }

  else if (a2 <= 5u)
  {
    if (a2 == 4)
    {
      v15 = 0xEE006E6F6974617ALL;
      if (v9 != 0x696C616974696E69)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v15 = 0xED00006873696C62;
      if (v9 != 0x7550746F6E6E6163)
      {
LABEL_52:
        v16 = sub_1B80C981C();
        goto LABEL_53;
      }
    }
  }

  else if (a2 == 6)
  {
    v15 = 0xEB00000000656761;
    if (v9 != 0x7373654D646E6573)
    {
      goto LABEL_52;
    }
  }

  else if (a2 == 7)
  {
    v15 = 0x80000001B80CB600;
    if (v9 != 0xD000000000000012)
    {
      goto LABEL_52;
    }
  }

  else
  {
    v15 = 0x80000001B80CB620;
    if (v9 != 0xD000000000000014)
    {
      goto LABEL_52;
    }
  }

  if (v10 != v15)
  {
    goto LABEL_52;
  }

  v16 = 1;
LABEL_53:

  return v16 & 1;
}

uint64_t sub_1B7FE873C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = &off_1B80CB290;
  v3 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0xD00000000000001FLL;
    }

    else
    {
      v5 = 0xD00000000000001DLL;
    }

    if (v3)
    {
      v4 = "FMLDevicesChangedNotification";
    }

    else
    {
      v4 = &off_1B80CB290;
    }
  }

  else if (a1 == 2)
  {
    v4 = "FMLFollowersChangedNotification";
    v5 = 0xD000000000000020;
  }

  else if (a1 == 3)
  {
    v4 = "ngedNotification";
    v5 = 0xD000000000000023;
  }

  else
  {
    v4 = "ializedNotification";
    v5 = 0xD00000000000001ELL;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0xD00000000000001FLL;
    }

    else
    {
      v6 = 0xD00000000000001DLL;
    }

    if (a2)
    {
      v2 = "FMLDevicesChangedNotification";
    }
  }

  else if (a2 == 2)
  {
    v2 = "FMLFollowersChangedNotification";
    v6 = 0xD000000000000020;
  }

  else
  {
    v2 = "ngedNotification";
    if (a2 == 3)
    {
      v6 = 0xD000000000000023;
    }

    else
    {
      v6 = 0xD00000000000001ELL;
    }

    if (a2 != 3)
    {
      v2 = "ializedNotification";
    }
  }

  if (v5 == v6 && (v4 | 0x8000000000000000) == (v2 | 0x8000000000000000))
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1B80C981C();
  }

  return v7 & 1;
}

uint64_t sub_1B7FE88A0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x656D6F683C21245FLL;
  v3 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x6B726F773C21245FLL;
    }

    else
    {
      v4 = 0x656D6F683C21245FLL;
    }

    v5 = 0xEC0000005F24213ELL;
  }

  else if (a1 == 2)
  {
    v4 = 0x6F6863733C21245FLL;
    v5 = 0xEE005F24213E6C6FLL;
  }

  else
  {
    if (a1 == 3)
    {
      v4 = 0x3E6D79673C21245FLL;
    }

    else
    {
      v4 = 0x6568746F3C21245FLL;
    }

    if (v3 == 3)
    {
      v5 = 0xEB000000005F2421;
    }

    else
    {
      v5 = 0xED00005F24213E72;
    }
  }

  v6 = 0x6F6863733C21245FLL;
  v7 = 0xEE005F24213E6C6FLL;
  v8 = 0x3E6D79673C21245FLL;
  v9 = 0xEB000000005F2421;
  if (a2 != 3)
  {
    v8 = 0x6568746F3C21245FLL;
    v9 = 0xED00005F24213E72;
  }

  if (a2 != 2)
  {
    v6 = v8;
    v7 = v9;
  }

  if (a2)
  {
    v2 = 0x6B726F773C21245FLL;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v6;
  }

  if (a2 <= 1u)
  {
    v11 = 0xEC0000005F24213ELL;
  }

  else
  {
    v11 = v7;
  }

  if (v4 == v10 && v5 == v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_1B80C981C();
  }

  return v12 & 1;
}

uint64_t sub_1B7FE8A5C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x65766F6D6572;
    }

    else
    {
      v4 = 6579297;
    }

    if (v2)
    {
      v3 = 0xE600000000000000;
    }

    else
    {
      v3 = 0xE300000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE600000000000000;
    v4 = 0x796669646F6DLL;
  }

  else if (a1 == 3)
  {
    v3 = 0xE500000000000000;
    v4 = 0x726566666FLL;
  }

  else
  {
    v3 = 0xE600000000000000;
    v4 = 0x657469766E69;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x65766F6D6572;
    }

    else
    {
      v9 = 6579297;
    }

    if (a2)
    {
      v8 = 0xE600000000000000;
    }

    else
    {
      v8 = 0xE300000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xE500000000000000;
    v6 = 0x726566666FLL;
    if (a2 != 3)
    {
      v6 = 0x657469766E69;
      v5 = 0xE600000000000000;
    }

    if (a2 == 2)
    {
      v7 = 0x796669646F6DLL;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xE600000000000000;
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
    v10 = sub_1B80C981C();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_1B7FE8BC0(uint64_t a1)
{
  v2[18] = a1;
  v2[19] = v1;
  v2[20] = *v1;
  v2[21] = *(type metadata accessor for Friend(0) - 8);
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B7FE8D10, v1, 0);
}

uint64_t sub_1B7FE8D10()
{
  v16 = v0;
  if (qword_1ED8DD6D0 != -1)
  {
    swift_once();
  }

  v1 = sub_1B80C900C();
  v0[16].i64[0] = __swift_project_value_buffer(v1, qword_1ED8DDE78);

  v2 = sub_1B80C8FEC();
  v3 = sub_1B80C941C();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[9].i64[0];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15 = v6;
    *v5 = 136446466;
    *(v5 + 4) = sub_1B7FB84FC(0xD000000000000022, 0x80000001B80CC450, &v15);
    *(v5 + 12) = 2080;
    v7 = MEMORY[0x1B8CB7B30](v4, &type metadata for HandleType);
    v9 = sub_1B7FB84FC(v7, v8, &v15);

    *(v5 + 14) = v9;
    _os_log_impl(&dword_1B7FB5000, v2, v3, "%{public}s of types: %s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B8CB8970](v6, -1, -1);
    MEMORY[0x1B8CB8970](v5, -1, -1);
  }

  v10 = v0[10].i64[0];
  v11 = swift_task_alloc();
  v0[16].i64[1] = v11;
  v11[1] = vextq_s8(v0[9], v0[9], 8uLL);
  v11[2].i64[0] = v10;
  v12 = swift_task_alloc();
  v0[17].i64[0] = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F80, &qword_1B80D2708);
  *v12 = v0;
  v12[1] = sub_1B7FE8FA0;

  return MEMORY[0x1EEE04418](&v0[8].u64[1], 0x2873646E65697266, 0xEE00293A68746977, sub_1B7FF4260, v11, v13);
}

uint64_t sub_1B7FE8FA0()
{
  v2 = *v1;
  *(*v1 + 280) = v0;

  if (v0)
  {
    v3 = *(v2 + 152);
    v4 = sub_1B7FE9BF0;
  }

  else
  {
    v5 = *(v2 + 152);

    v4 = sub_1B7FE90C8;
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

void sub_1B7FE90C8()
{
  v2 = v0[17];
  v1 = v0[18];
  v78 = *(v1 + 16);
  if (!v78)
  {
LABEL_88:

    v70 = v0[1];

    v70(v2);
    return;
  }

  v88 = v0[29];
  v89 = v0[31];
  v87 = v0[27];
  v85 = v0[23];
  v86 = v0[25];
  v3 = v0[21];
  v4 = v0[19];
  v5 = OBJC_IVAR____TtCC12FindMyLocate7Session20FriendshipConnection_pendingOffers;
  v6 = OBJC_IVAR____TtCC12FindMyLocate7Session20FriendshipConnection_futureFollowings;
  v7 = OBJC_IVAR____TtCC12FindMyLocate7Session20FriendshipConnection_futureFollowers;
  v8 = OBJC_IVAR____TtCC12FindMyLocate7Session20FriendshipConnection_followings;
  v77 = v1 + 32;
  v71 = OBJC_IVAR____TtCC12FindMyLocate7Session20FriendshipConnection_followers;
  swift_beginAccess();
  v72 = v8;
  swift_beginAccess();
  v73 = v7;
  swift_beginAccess();
  v74 = v6;
  swift_beginAccess();
  v76 = v4;
  v75 = v5;
  swift_beginAccess();
  v9 = 0;
  while (1)
  {
    v12 = *(v77 + v9);
    v84 = v9;
    if (v12 > 1)
    {
      break;
    }

    if (*(v77 + v9))
    {
      v46 = *(v2 + 16);
      if (v46)
      {
        v47 = 0;
        v15 = MEMORY[0x1E69E7CC0];
        v83 = *(v2 + 16);
        while (v47 < *(v2 + 16))
        {
          v48 = (*(v3 + 80) + 32) & ~*(v3 + 80);
          v49 = *(v3 + 72);
          sub_1B7FF4050(v2 + v48 + v49 * v47, v0[29], type metadata accessor for Friend);
          v50 = v0[29];
          if (*(v88 + 176) == 1)
          {
            sub_1B7FE8124(v50, v0[28]);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1B8092B88(0, *(v15 + 16) + 1, 1);
              v46 = v83;
            }

            v52 = *(v15 + 16);
            v51 = *(v15 + 24);
            if (v52 >= v51 >> 1)
            {
              sub_1B8092B88((v51 > 1), v52 + 1, 1);
              v46 = v83;
            }

            v53 = v0[28];
            *(v15 + 16) = v52 + 1;
            sub_1B7FE8124(v53, v15 + v48 + v52 * v49);
          }

          else
          {
            sub_1B7FF3FF0(v50, type metadata accessor for Friend);
          }

          if (v46 == ++v47)
          {
            goto LABEL_84;
          }
        }

        __break(1u);
LABEL_92:
        __break(1u);
LABEL_93:
        __break(1u);
LABEL_94:
        __break(1u);
        goto LABEL_95;
      }

      v15 = MEMORY[0x1E69E7CC0];
LABEL_84:

      v67 = sub_1B80C8FEC();
      v68 = sub_1B80C941C();
      v56 = v84;
      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        *v69 = 134217984;
        *(v69 + 4) = *(v15 + 16);

        _os_log_impl(&dword_1B7FB5000, v67, v68, "Caching followings count: %ld.", v69, 0xCu);
        MEMORY[0x1B8CB8970](v69, -1, -1);
      }

      else
      {
      }

      v10 = v76;
      v11 = v72;
    }

    else
    {
      v22 = *(v2 + 16);
      if (v22)
      {
        v23 = 0;
        v15 = MEMORY[0x1E69E7CC0];
        v80 = *(v2 + 16);
        while (v23 < *(v2 + 16))
        {
          v24 = (*(v3 + 80) + 32) & ~*(v3 + 80);
          v25 = *(v3 + 72);
          sub_1B7FF4050(v2 + v24 + v25 * v23, v0[31], type metadata accessor for Friend);
          v26 = v0[31];
          if (*(v89 + 176))
          {
            sub_1B7FF3FF0(v26, type metadata accessor for Friend);
          }

          else
          {
            sub_1B7FE8124(v26, v0[30]);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1B8092B88(0, *(v15 + 16) + 1, 1);
              v22 = v80;
            }

            v28 = *(v15 + 16);
            v27 = *(v15 + 24);
            if (v28 >= v27 >> 1)
            {
              sub_1B8092B88((v27 > 1), v28 + 1, 1);
              v22 = v80;
            }

            v29 = v0[30];
            *(v15 + 16) = v28 + 1;
            sub_1B7FE8124(v29, v15 + v24 + v28 * v25);
          }

          if (v22 == ++v23)
          {
            goto LABEL_79;
          }
        }

        goto LABEL_94;
      }

      v15 = MEMORY[0x1E69E7CC0];
LABEL_79:

      v64 = sub_1B80C8FEC();
      v65 = sub_1B80C941C();
      v56 = v84;
      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        *v66 = 134217984;
        *(v66 + 4) = *(v15 + 16);

        _os_log_impl(&dword_1B7FB5000, v64, v65, "Caching followers count: %ld.", v66, 0xCu);
        MEMORY[0x1B8CB8970](v66, -1, -1);
      }

      else
      {
      }

      v10 = v76;
      v11 = v71;
    }

LABEL_5:
    *(v10 + v11) = v15;
    v9 = v56 + 1;

    if (v9 == v78)
    {
      goto LABEL_88;
    }
  }

  if (v12 == 2)
  {
    v30 = *(v2 + 16);
    if (v30)
    {
      v31 = 0;
      v15 = MEMORY[0x1E69E7CC0];
      v81 = *(v2 + 16);
      while (v31 < *(v2 + 16))
      {
        v32 = (*(v3 + 80) + 32) & ~*(v3 + 80);
        v33 = *(v3 + 72);
        sub_1B7FF4050(v2 + v32 + v33 * v31, v0[27], type metadata accessor for Friend);
        v34 = v0[27];
        if (*(v87 + 176) == 2)
        {
          sub_1B7FE8124(v34, v0[26]);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1B8092B88(0, *(v15 + 16) + 1, 1);
            v30 = v81;
          }

          v36 = *(v15 + 16);
          v35 = *(v15 + 24);
          if (v36 >= v35 >> 1)
          {
            sub_1B8092B88((v35 > 1), v36 + 1, 1);
            v30 = v81;
          }

          v37 = v0[26];
          *(v15 + 16) = v36 + 1;
          sub_1B7FE8124(v37, v15 + v32 + v36 * v33);
        }

        else
        {
          sub_1B7FF3FF0(v34, type metadata accessor for Friend);
        }

        if (v30 == ++v31)
        {
          goto LABEL_66;
        }
      }

      goto LABEL_92;
    }

    v15 = MEMORY[0x1E69E7CC0];
LABEL_66:

    v54 = sub_1B80C8FEC();
    v55 = sub_1B80C941C();
    v56 = v84;
    if (os_log_type_enabled(v54, v55))
    {
      v57 = swift_slowAlloc();
      *v57 = 134217984;
      *(v57 + 4) = *(v15 + 16);

      _os_log_impl(&dword_1B7FB5000, v54, v55, "Caching futureFollowers count: %ld.", v57, 0xCu);
      MEMORY[0x1B8CB8970](v57, -1, -1);
    }

    else
    {
    }

    v10 = v76;
    v11 = v73;
    goto LABEL_5;
  }

  if (v12 == 3)
  {
    v13 = *(v2 + 16);
    if (v13)
    {
      v14 = 0;
      v15 = MEMORY[0x1E69E7CC0];
      v79 = *(v2 + 16);
      while (v14 < *(v2 + 16))
      {
        v16 = (*(v3 + 80) + 32) & ~*(v3 + 80);
        v17 = *(v3 + 72);
        sub_1B7FF4050(v2 + v16 + v17 * v14, v0[25], type metadata accessor for Friend);
        v18 = v0[25];
        if (*(v86 + 176) == 3)
        {
          sub_1B7FE8124(v18, v0[24]);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1B8092B88(0, *(v15 + 16) + 1, 1);
            v13 = v79;
          }

          v20 = *(v15 + 16);
          v19 = *(v15 + 24);
          if (v20 >= v19 >> 1)
          {
            sub_1B8092B88((v19 > 1), v20 + 1, 1);
            v13 = v79;
          }

          v21 = v0[24];
          *(v15 + 16) = v20 + 1;
          sub_1B7FE8124(v21, v15 + v16 + v20 * v17);
        }

        else
        {
          sub_1B7FF3FF0(v18, type metadata accessor for Friend);
        }

        if (v13 == ++v14)
        {
          goto LABEL_69;
        }
      }

      goto LABEL_93;
    }

    v15 = MEMORY[0x1E69E7CC0];
LABEL_69:

    v58 = sub_1B80C8FEC();
    v59 = sub_1B80C941C();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 134217984;
      *(v60 + 4) = *(v15 + 16);

      _os_log_impl(&dword_1B7FB5000, v58, v59, "Caching futureFollowing count: %ld.", v60, 0xCu);
      MEMORY[0x1B8CB8970](v60, -1, -1);
    }

    else
    {
    }

    v56 = v84;

    v10 = v76;
    v11 = v74;
    goto LABEL_5;
  }

  v38 = *(v2 + 16);
  if (!v38)
  {
    v15 = MEMORY[0x1E69E7CC0];
LABEL_74:

    v61 = sub_1B80C8FEC();
    v62 = sub_1B80C941C();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      *v63 = 134217984;
      *(v63 + 4) = *(v15 + 16);

      _os_log_impl(&dword_1B7FB5000, v61, v62, "Caching pendingOffers count: %ld.", v63, 0xCu);
      MEMORY[0x1B8CB8970](v63, -1, -1);
    }

    else
    {
    }

    v56 = v84;

    v10 = v76;
    v11 = v75;
    goto LABEL_5;
  }

  v39 = 0;
  v15 = MEMORY[0x1E69E7CC0];
  v82 = *(v2 + 16);
  while (v39 < *(v2 + 16))
  {
    v40 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v41 = *(v3 + 72);
    sub_1B7FF4050(v2 + v40 + v41 * v39, v0[23], type metadata accessor for Friend);
    v42 = v0[23];
    if (*(v85 + 176) == 4)
    {
      sub_1B7FE8124(v42, v0[22]);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1B8092B88(0, *(v15 + 16) + 1, 1);
        v38 = v82;
      }

      v44 = *(v15 + 16);
      v43 = *(v15 + 24);
      if (v44 >= v43 >> 1)
      {
        sub_1B8092B88((v43 > 1), v44 + 1, 1);
        v38 = v82;
      }

      v45 = v0[22];
      *(v15 + 16) = v44 + 1;
      sub_1B7FE8124(v45, v15 + v40 + v44 * v41);
    }

    else
    {
      sub_1B7FF3FF0(v42, type metadata accessor for Friend);
    }

    if (v38 == ++v39)
    {
      goto LABEL_74;
    }
  }

LABEL_95:
  __break(1u);
}

uint64_t sub_1B7FE9BF0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B7FE9CDC()
{
  v1[8] = v0;
  v1[9] = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA65FF0, &qword_1B80D2620);
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B7FE9DAC, v0, 0);
}

uint64_t sub_1B7FE9DAC()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = OBJC_IVAR____TtCC12FindMyLocate7Session20FriendshipConnection_friendshipContinuation;
  swift_beginAccess();
  sub_1B7FB8448(v2 + v3, v1, &unk_1EBA65FF0, &qword_1B80D2620);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F08, &qword_1B80D2550);
  v5 = *(*(v4 - 8) + 48);
  LODWORD(v3) = v5(v1, 1, v4);
  sub_1B7FB86D4(v1, &unk_1EBA65FF0, &qword_1B80D2620);
  if (v3 == 1 && (v6 = v0[10], v7 = v0[8], v8 = OBJC_IVAR____TtCC12FindMyLocate7Session20FriendshipConnection_internalFollowingContinuation, swift_beginAccess(), sub_1B7FB8448(v7 + v8, v6, &unk_1EBA65FF0, &qword_1B80D2620), v9 = v5(v6, 1, v4), sub_1B7FB86D4(v6, &unk_1EBA65FF0, &qword_1B80D2620), v9 == 1))
  {

    v10 = v0[1];

    return v10();
  }

  else
  {
    if (qword_1ED8DD6D0 != -1)
    {
      swift_once();
    }

    v12 = sub_1B80C900C();
    __swift_project_value_buffer(v12, qword_1ED8DDE78);
    v13 = sub_1B80C8FEC();
    v14 = sub_1B80C941C();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1B7FB5000, v13, v14, "Retry updating Friends", v15, 2u);
      MEMORY[0x1B8CB8970](v15, -1, -1);
    }

    v17 = v0[8];
    v16 = v0[9];

    v18 = swift_task_alloc();
    v0[12] = v18;
    *(v18 + 16) = v17;
    *(v18 + 24) = v16;
    v19 = swift_task_alloc();
    v0[13] = v19;
    *v19 = v0;
    v19[1] = sub_1B7FEA0D0;
    v20 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE04418](v19, 0xD000000000000014, 0x80000001B80CC480, sub_1B7FF47BC, v18, v20);
  }
}

uint64_t sub_1B7FEA0D0()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = *(v2 + 64);
    v4 = sub_1B7FEA264;
  }

  else
  {
    v5 = *(v2 + 64);

    v4 = sub_1B7FEA1F8;
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1B7FEA1F8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B7FEA264()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B7FEA2DC(uint64_t a1, char a2)
{
  *(v3 + 88) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  *(v3 + 32) = *v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA65FE0, &qword_1B80D2720);
  *(v3 + 40) = v4;
  *(v3 + 48) = *(v4 - 8);
  *(v3 + 56) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B7FEA3D4, v2, 0);
}

uint64_t sub_1B7FEA3D4()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v4 = *(v0 + 32);
  v3 = *(v0 + 40);
  v5 = *(v0 + 88);
  v6 = *(v0 + 24);
  type metadata accessor for FriendStreamChange(0);
  v7 = swift_task_alloc();
  *(v7 + 16) = v5;
  *(v7 + 24) = v6;
  *(v7 + 32) = v4;
  (*(v2 + 104))(v1, *MEMORY[0x1E69E8650], v3);
  sub_1B80C934C();

  v8 = swift_task_alloc();
  *(v0 + 64) = v8;
  *(v8 + 16) = v6;
  *(v8 + 24) = v4;
  v9 = swift_task_alloc();
  *(v0 + 72) = v9;
  *v9 = v0;
  v9[1] = sub_1B7FEA55C;
  v10 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE04418](v9, 0xD000000000000014, 0x80000001B80CC480, sub_1B7FF4278, v8, v10);
}

uint64_t sub_1B7FEA55C()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = *(v2 + 24);
    v4 = sub_1B7FEA6E8;
  }

  else
  {
    v5 = *(v2 + 24);

    v4 = sub_1B7FEA684;
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1B7FEA684()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B7FEA6E8()
{
  v1 = *(v0 + 16);

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F88, &qword_1B80D2728);
  (*(*(v2 - 8) + 8))(v1, v2);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1B7FEA79C(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v22 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F08, &qword_1B80D2550);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v21 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA66000, &unk_1B80D2630);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v21 - v13;
  v15 = sub_1B80C92CC();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  (*(v8 + 16))(v11, a1, v7);
  v16 = sub_1B7FF414C();
  v17 = (*(v8 + 80) + 48) & ~*(v8 + 80);
  v18 = (v9 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  *(v19 + 16) = a3;
  *(v19 + 24) = v16;
  *(v19 + 32) = a2;
  *(v19 + 40) = a3;
  (*(v8 + 32))(v19 + v17, v11, v7);
  *(v19 + v18) = v22;
  swift_retain_n();
  sub_1B80A1D3C(0, 0, v14, &unk_1B80D2738, v19);
}

uint64_t sub_1B7FEA9C0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 48) = a5;
  *(v6 + 56) = a6;
  *(v6 + 168) = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA65FF0, &qword_1B80D2620);
  *(v6 + 64) = swift_task_alloc();
  *(v6 + 72) = type metadata accessor for FriendStreamChange(0);
  *(v6 + 80) = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F70, &qword_1B80D26D8);
  *(v6 + 88) = v8;
  *(v6 + 96) = *(v8 - 8);
  *(v6 + 104) = swift_task_alloc();
  v9 = type metadata accessor for Friend(0);
  *(v6 + 112) = v9;
  *(v6 + 120) = *(v9 - 8);
  *(v6 + 128) = swift_task_alloc();
  *(v6 + 136) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B7FEAB64, a5, 0);
}

uint64_t sub_1B7FEAB64()
{
  if (*(v0 + 168) == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 144) = v1;
    *v1 = v0;
    v1[1] = sub_1B7FEAD6C;

    return sub_1B7FE8BC0(&unk_1F2FF9458);
  }

  else
  {
    v4 = *(v0 + 56);
    v3 = *(v0 + 64);
    v5 = *(v0 + 48);
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F08, &qword_1B80D2550);
    v7 = *(v6 - 8);
    (*(v7 + 16))(v3, v4, v6);
    (*(v7 + 56))(v3, 0, 1, v6);
    v8 = OBJC_IVAR____TtCC12FindMyLocate7Session20FriendshipConnection_friendshipContinuation;
    swift_beginAccess();
    sub_1B7FF450C(v3, v5 + v8, &unk_1EBA65FF0, &qword_1B80D2620);
    swift_endAccess();

    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_1B7FEAD6C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 152) = a1;
  *(v4 + 160) = v1;

  v5 = *(v3 + 48);
  if (v1)
  {
    v6 = sub_1B7FEB390;
  }

  else
  {
    v6 = sub_1B7FEAEA0;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1B7FEAEA0()
{
  v41 = v0;
  if (qword_1ED8DD6D0 != -1)
  {
    swift_once();
  }

  v1 = sub_1B80C900C();
  __swift_project_value_buffer(v1, qword_1ED8DDE78);

  v2 = sub_1B80C8FEC();
  v3 = sub_1B80C941C();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[19];
    v5 = v0[14];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v40 = v7;
    *v6 = 141558275;
    *(v6 + 4) = 1752392040;
    *(v6 + 12) = 2081;
    v8 = MEMORY[0x1B8CB7B30](v4, v5);
    v10 = sub_1B7FB84FC(v8, v9, &v40);

    *(v6 + 14) = v10;
    _os_log_impl(&dword_1B7FB5000, v2, v3, "receiveInitialUpdates: %{private,mask.hash}s", v6, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x1B8CB8970](v7, -1, -1);
    MEMORY[0x1B8CB8970](v6, -1, -1);
  }

  v11 = v0[19];
  v12 = *(v11 + 16);
  if (v12)
  {
    v13 = v0[15];
    v14 = v11 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v38 = (v0[12] + 8);
    v39 = *(v13 + 72);
    do
    {
      v25 = v0[16];
      v24 = v0[17];
      sub_1B7FF4050(v14, v24, type metadata accessor for Friend);
      sub_1B7FF4050(v24, v25, type metadata accessor for Friend);
      v26 = sub_1B80C8FEC();
      v27 = sub_1B80C941C();
      v28 = os_log_type_enabled(v26, v27);
      v29 = v0[16];
      if (v28)
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v40 = v16;
        *v15 = 136315138;
        v17 = Friend.description.getter();
        v19 = v18;
        sub_1B7FF3FF0(v29, type metadata accessor for Friend);
        v20 = sub_1B7FB84FC(v17, v19, &v40);

        *(v15 + 4) = v20;
        _os_log_impl(&dword_1B7FB5000, v26, v27, "Sending initial friend update: %s", v15, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v16);
        MEMORY[0x1B8CB8970](v16, -1, -1);
        MEMORY[0x1B8CB8970](v15, -1, -1);
      }

      else
      {

        sub_1B7FF3FF0(v29, type metadata accessor for Friend);
      }

      v21 = v0[17];
      v22 = v0[13];
      v23 = v0[11];
      sub_1B7FF4050(v21, v0[10], type metadata accessor for Friend);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F08, &qword_1B80D2550);
      sub_1B80C92EC();
      (*v38)(v22, v23);
      sub_1B7FF3FF0(v21, type metadata accessor for Friend);
      v14 += v39;
      --v12;
    }

    while (v12);
  }

  v31 = v0[7];
  v30 = v0[8];
  v32 = v0[6];
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F08, &qword_1B80D2550);
  v34 = *(v33 - 8);
  (*(v34 + 16))(v30, v31, v33);
  (*(v34 + 56))(v30, 0, 1, v33);
  v35 = OBJC_IVAR____TtCC12FindMyLocate7Session20FriendshipConnection_friendshipContinuation;
  swift_beginAccess();
  sub_1B7FF450C(v30, v32 + v35, &unk_1EBA65FF0, &qword_1B80D2620);
  swift_endAccess();

  v36 = v0[1];

  return v36();
}

uint64_t sub_1B7FEB390()
{
  v23 = v0;
  if (qword_1ED8DD6D0 != -1)
  {
    swift_once();
  }

  v1 = v0[20];
  v2 = sub_1B80C900C();
  __swift_project_value_buffer(v2, qword_1ED8DDE78);
  v3 = v1;
  v4 = sub_1B80C8FEC();
  v5 = sub_1B80C93FC();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[20];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v22 = v9;
    *v8 = 136446210;
    v0[5] = v7;
    v10 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65FC0, &unk_1B80D2430);
    v11 = sub_1B80C90EC();
    v13 = sub_1B7FB84FC(v11, v12, &v22);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_1B7FB5000, v4, v5, "Failed to send inital friends update %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x1B8CB8970](v9, -1, -1);
    MEMORY[0x1B8CB8970](v8, -1, -1);
  }

  else
  {
  }

  v15 = v0[7];
  v14 = v0[8];
  v16 = v0[6];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F08, &qword_1B80D2550);
  v18 = *(v17 - 8);
  (*(v18 + 16))(v14, v15, v17);
  (*(v18 + 56))(v14, 0, 1, v17);
  v19 = OBJC_IVAR____TtCC12FindMyLocate7Session20FriendshipConnection_friendshipContinuation;
  swift_beginAccess();
  sub_1B7FF450C(v14, v16 + v19, &unk_1EBA65FF0, &qword_1B80D2620);
  swift_endAccess();

  v20 = v0[1];

  return v20();
}

uint64_t sub_1B7FEB668()
{
  v1[8] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F08, &qword_1B80D2550);
  v1[9] = v2;
  v1[10] = *(v2 - 8);
  v1[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA65FF0, &qword_1B80D2620);
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B7FEB778, v0, 0);
}

uint64_t sub_1B7FEB778()
{
  v1 = v0[13];
  v2 = v0[9];
  v3 = v0[10];
  v4 = v0[8];
  v5 = OBJC_IVAR____TtCC12FindMyLocate7Session20FriendshipConnection_friendshipContinuation;
  swift_beginAccess();
  sub_1B7FB8448(v4 + v5, v1, &unk_1EBA65FF0, &qword_1B80D2620);
  v6 = (*(v3 + 48))(v1, 1, v2);
  v7 = v0[13];
  if (v6)
  {
    sub_1B7FB86D4(v0[13], &unk_1EBA65FF0, &qword_1B80D2620);
  }

  else
  {
    v9 = v0[10];
    v8 = v0[11];
    v10 = v0[9];
    (*(v9 + 16))(v8, v0[13], v10);
    sub_1B7FB86D4(v7, &unk_1EBA65FF0, &qword_1B80D2620);
    sub_1B80C92FC();
    (*(v9 + 8))(v8, v10);
  }

  v11 = v0[12];
  (*(v0[10] + 56))(v11, 1, 1, v0[9]);
  swift_beginAccess();
  sub_1B7FF450C(v11, v4 + v5, &unk_1EBA65FF0, &qword_1B80D2620);
  swift_endAccess();

  v12 = v0[1];

  return v12();
}

uint64_t sub_1B7FEB948(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F08, &qword_1B80D2550);
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v2[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F58, &qword_1B80D26B8);
  v2[14] = swift_task_alloc();
  v2[15] = type metadata accessor for FriendStreamChange(0);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = *(type metadata accessor for Friend(0) - 8);
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F60, &qword_1B80D26C0);
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA65FF0, &qword_1B80D2620);
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B7FEBB98, v1, 0);
}

uint64_t sub_1B7FEBB98()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 88);
  v3 = *(v0 + 96);
  v4 = *(v0 + 80);
  v5 = OBJC_IVAR____TtCC12FindMyLocate7Session20FriendshipConnection_friendshipContinuation;
  *(v0 + 224) = OBJC_IVAR____TtCC12FindMyLocate7Session20FriendshipConnection_friendshipContinuation;
  swift_beginAccess();
  sub_1B7FB8448(v4 + v5, v1, &unk_1EBA65FF0, &qword_1B80D2620);
  v6 = *(v3 + 48);
  *(v0 + 232) = v6;
  *(v0 + 240) = (v3 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  LODWORD(v2) = v6(v1, 1, v2);
  sub_1B7FB86D4(v1, &unk_1EBA65FF0, &qword_1B80D2620);
  if (v2 == 1)
  {
    v7 = *(v0 + 208);
    v9 = *(v0 + 80);
    v8 = *(v0 + 88);
    v10 = OBJC_IVAR____TtCC12FindMyLocate7Session20FriendshipConnection_internalFollowingContinuation;
    swift_beginAccess();
    sub_1B7FB8448(v9 + v10, v7, &unk_1EBA65FF0, &qword_1B80D2620);
    LODWORD(v8) = v6(v7, 1, v8);
    sub_1B7FB86D4(v7, &unk_1EBA65FF0, &qword_1B80D2620);
    if (v8 == 1)
    {
LABEL_13:

      v30 = *(v0 + 8);

      return v30();
    }
  }

  v11 = *(v0 + 144);
  v12 = *(v0 + 72);
  v13 = *(v12 + 32);
  *(v0 + 296) = v13;
  v14 = -1;
  v15 = -1 << v13;
  if (-(-1 << v13) < 64)
  {
    v14 = ~(-1 << -v15);
  }

  v16 = v14 & *(v12 + 64);

  if (v16)
  {
    v17 = 0;
LABEL_10:
    v21 = *(v0 + 176);
    v20 = *(v0 + 184);
    v22 = __clz(__rbit64(v16));
    v23 = (v16 - 1) & v16;
    v24 = v22 | (v17 << 6);
    sub_1B7FF4050(*(v12 + 48) + *(v11 + 72) * v24, v21, type metadata accessor for Friend);
    v25 = *(*(v12 + 56) + v24);
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F68, &qword_1B80D26C8);
    v27 = *(v26 + 48);
    sub_1B7FE8124(v21, v20);
    *(v20 + v27) = v25;
    (*(*(v26 - 8) + 56))(v20, 0, 1, v26);
    v19 = v17;
  }

  else
  {
    v18 = 0;
    v19 = ((63 - v15) >> 6) - 1;
    while (v19 != v18)
    {
      v17 = v18 + 1;
      v16 = *(v12 + 72 + 8 * v18++);
      if (v16)
      {
        goto LABEL_10;
      }
    }

    v47 = *(v0 + 184);
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F68, &qword_1B80D26C8);
    (*(*(v48 - 8) + 56))(v47, 1, 1, v48);
    v23 = 0;
  }

  *(v0 + 248) = v23;
  *(v0 + 256) = v19;
  v28 = *(v0 + 192);
  sub_1B7FC8F2C(*(v0 + 184), v28, &qword_1EBA65F60, &qword_1B80D26C0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F68, &qword_1B80D26C8);
  if ((*(*(v29 - 8) + 48))(v28, 1, v29) == 1)
  {

    goto LABEL_13;
  }

  v32 = *(v0 + 192);
  v33 = *(v0 + 168);
  v34 = *(v32 + *(v29 + 48));
  *(v0 + 297) = v34;
  sub_1B7FE8124(v32, v33);
  if (qword_1ED8DD6D0 != -1)
  {
    swift_once();
  }

  v35 = *(v0 + 160);
  v36 = *(v0 + 168);
  v37 = *(v0 + 152);
  v38 = sub_1B80C900C();
  *(v0 + 264) = __swift_project_value_buffer(v38, qword_1ED8DDE78);
  sub_1B7FF4050(v36, v35, type metadata accessor for Friend);
  sub_1B7FF4050(v36, v37, type metadata accessor for Friend);
  v39 = sub_1B80C8FEC();
  v40 = sub_1B80C941C();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    *(v0 + 64) = v42;
    *v41 = 136446979;
    if (v34 <= 1)
    {
      if (v34)
      {
        v43 = 0xE600000000000000;
        v44 = 0x65766F6D6572;
      }

      else
      {
        v43 = 0xE300000000000000;
        v44 = 6579297;
      }
    }

    else if (v34 == 2)
    {
      v43 = 0xE600000000000000;
      v44 = 0x796669646F6DLL;
    }

    else if (v34 == 3)
    {
      v43 = 0xE500000000000000;
      v44 = 0x726566666FLL;
    }

    else
    {
      v43 = 0xE600000000000000;
      v44 = 0x657469766E69;
    }

    v50 = *(v0 + 152);
    v49 = *(v0 + 160);
    v51 = sub_1B7FB84FC(v44, v43, (v0 + 64));

    *(v41 + 4) = v51;
    *(v41 + 12) = 2160;
    *(v41 + 14) = 1752392040;
    *(v41 + 22) = 2081;
    v52 = *v49;
    v53 = v49[1];

    sub_1B7FF3FF0(v49, type metadata accessor for Friend);
    v54 = sub_1B7FB84FC(v52, v53, (v0 + 64));

    *(v41 + 24) = v54;
    *(v41 + 32) = 2082;
    v55 = 0xE900000000000072;
    v56 = *(v50 + 176);
    v57 = 0x65776F6C6C6F662ELL;
    v58 = 0xEF7265776F6C6C6FLL;
    v59 = 0x466572757475662ELL;
    v60 = 0xD000000000000010;
    v61 = 0xED0000726566664FLL;
    if (v56 == 3)
    {
      v61 = 0x80000001B80CBD30;
    }

    else
    {
      v60 = 0x676E69646E65702ELL;
    }

    if (v56 != 2)
    {
      v59 = v60;
      v58 = v61;
    }

    if (*(v50 + 176))
    {
      v57 = 0x69776F6C6C6F662ELL;
      v55 = 0xEA0000000000676ELL;
    }

    if (*(v50 + 176) <= 1u)
    {
      v62 = v57;
    }

    else
    {
      v62 = v59;
    }

    if (*(v50 + 176) <= 1u)
    {
      v63 = v55;
    }

    else
    {
      v63 = v58;
    }

    sub_1B7FF3FF0(*(v0 + 152), type metadata accessor for Friend);
    v64 = sub_1B7FB84FC(v62, v63, (v0 + 64));

    *(v41 + 34) = v64;
    _os_log_impl(&dword_1B7FB5000, v39, v40, "friendsUpdated %{public}s handle: %{private,mask.hash}s type: %{public}s", v41, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x1B8CB8970](v42, -1, -1);
    MEMORY[0x1B8CB8970](v41, -1, -1);
  }

  else
  {
    v46 = *(v0 + 152);
    v45 = *(v0 + 160);

    sub_1B7FF3FF0(v46, type metadata accessor for Friend);
    sub_1B7FF3FF0(v45, type metadata accessor for Friend);
  }

  v65 = swift_task_alloc();
  *(v0 + 272) = v65;
  *v65 = v0;
  v65[1] = sub_1B7FEC3A0;
  v66 = *(v0 + 72);

  return sub_1B7FEDB08(v66);
}

uint64_t sub_1B7FEC3A0()
{
  v1 = *(*v0 + 80);

  return MEMORY[0x1EEE6DFA0](sub_1B7FEC4B0, v1, 0);
}

uint64_t sub_1B7FEC4B0()
{
  v2 = 0x65766F6D6572;
  if (*(v0 + 297) <= 1u && !*(v0 + 297))
  {
    goto LABEL_5;
  }

  v3 = sub_1B80C981C();

  if (v3)
  {
    goto LABEL_7;
  }

  if (*(v0 + 297) != 1)
  {
    sub_1B80C981C();
  }

  else
  {
LABEL_5:
  }

LABEL_7:
  v4 = *(v0 + 168);
  sub_1B7FF4050(v4, *(v0 + 136), type metadata accessor for Friend);
  swift_storeEnumTagMultiPayload();
  if (*(v4 + 176) == 1)
  {
    v5 = sub_1B80C8FEC();
    v6 = sub_1B80C941C();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1B7FB5000, v5, v6, "Internal FriendStream with following updates", v7, 2u);
      MEMORY[0x1B8CB8970](v7, -1, -1);
    }

    v8 = swift_task_alloc();
    *(v0 + 280) = v8;
    *v8 = v0;
    v8[1] = sub_1B7FECFD8;
    v9 = *(v0 + 136);

    return sub_1B7FF5020(v9);
  }

  v11 = *(v0 + 232);
  v12 = *(v0 + 200);
  v13 = *(v0 + 88);
  sub_1B7FB8448(*(v0 + 80) + *(v0 + 224), v12, &unk_1EBA65FF0, &qword_1B80D2620);
  v14 = v11(v12, 1, v13);
  v15 = *(v0 + 200);
  v16 = *(v0 + 168);
  v17 = *(v0 + 136);
  if (v14)
  {
    sub_1B7FF3FF0(*(v0 + 136), type metadata accessor for FriendStreamChange);
    sub_1B7FF3FF0(v16, type metadata accessor for Friend);
    sub_1B7FB86D4(v15, &unk_1EBA65FF0, &qword_1B80D2620);
    v18 = 1;
  }

  else
  {
    v19 = *(v0 + 128);
    v1 = *(v0 + 104);
    v21 = *(v0 + 88);
    v20 = *(v0 + 96);
    (*(v20 + 16))(v1, *(v0 + 200), v21);
    sub_1B7FB86D4(v15, &unk_1EBA65FF0, &qword_1B80D2620);
    sub_1B7FF4050(v17, v19, type metadata accessor for FriendStreamChange);
    sub_1B80C92EC();
    (*(v20 + 8))(v1, v21);
    v2 = 0x65766F6D6572;
    sub_1B7FF3FF0(v17, type metadata accessor for FriendStreamChange);
    sub_1B7FF3FF0(v16, type metadata accessor for Friend);
    v18 = 0;
  }

  v22 = *(v0 + 112);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F70, &qword_1B80D26D8);
  (*(*(v23 - 8) + 56))(v22, v18, 1, v23);
  sub_1B7FB86D4(v22, &qword_1EBA65F58, &qword_1B80D26B8);
  v24 = *(v0 + 248);
  v25 = *(v0 + 256);
  if (!v24)
  {
    v27 = ((1 << *(v0 + 296)) + 63) >> 6;
    if (v27 <= (v25 + 1))
    {
      v28 = v25 + 1;
    }

    else
    {
      v28 = ((1 << *(v0 + 296)) + 63) >> 6;
    }

    v29 = v28 - 1;
    while (1)
    {
      v30 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v30 >= v27)
      {
        v53 = *(v0 + 184);
        v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F68, &qword_1B80D26C8);
        (*(*(v54 - 8) + 56))(v53, 1, 1, v54);
        v33 = 0;
        goto LABEL_27;
      }

      v26 = *(v0 + 72);
      v24 = *(v26 + 8 * v30 + 64);
      ++v25;
      if (v24)
      {
        v25 = v30;
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_61:
    swift_once();
    goto LABEL_32;
  }

  v26 = *(v0 + 72);
LABEL_26:
  v32 = *(v0 + 176);
  v31 = *(v0 + 184);
  v33 = (v24 - 1) & v24;
  v34 = __clz(__rbit64(v24)) | (v25 << 6);
  sub_1B7FF4050(*(v26 + 48) + *(*(v0 + 144) + 72) * v34, v32, type metadata accessor for Friend);
  LOBYTE(v34) = *(*(v26 + 56) + v34);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F68, &qword_1B80D26C8);
  v36 = *(v35 + 48);
  sub_1B7FE8124(v32, v31);
  *(v31 + v36) = v34;
  (*(*(v35 - 8) + 56))(v31, 0, 1, v35);
  v29 = v25;
LABEL_27:
  *(v0 + 248) = v33;
  *(v0 + 256) = v29;
  v37 = *(v0 + 192);
  sub_1B7FC8F2C(*(v0 + 184), v37, &qword_1EBA65F60, &qword_1B80D26C0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F68, &qword_1B80D26C8);
  if ((*(*(v38 - 8) + 48))(v37, 1, v38) == 1)
  {

    v39 = *(v0 + 8);

    return v39();
  }

  v40 = *(v0 + 192);
  v41 = *(v0 + 168);
  LODWORD(v1) = *(v40 + *(v38 + 48));
  *(v0 + 297) = v1;
  sub_1B7FE8124(v40, v41);
  if (qword_1ED8DD6D0 != -1)
  {
    goto LABEL_61;
  }

LABEL_32:
  v43 = *(v0 + 160);
  v42 = *(v0 + 168);
  v44 = *(v0 + 152);
  v45 = sub_1B80C900C();
  *(v0 + 264) = __swift_project_value_buffer(v45, qword_1ED8DDE78);
  sub_1B7FF4050(v42, v43, type metadata accessor for Friend);
  sub_1B7FF4050(v42, v44, type metadata accessor for Friend);
  v46 = sub_1B80C8FEC();
  v47 = sub_1B80C941C();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    *(v0 + 64) = v49;
    *v48 = 136446979;
    if (v1 <= 1)
    {
      if (v1)
      {
        v50 = 0xE600000000000000;
      }

      else
      {
        v2 = 6579297;
        v50 = 0xE300000000000000;
      }
    }

    else if (v1 == 2)
    {
      v50 = 0xE600000000000000;
      v2 = 0x796669646F6DLL;
    }

    else if (v1 == 3)
    {
      v50 = 0xE500000000000000;
      v2 = 0x726566666FLL;
    }

    else
    {
      v50 = 0xE600000000000000;
      v2 = 0x657469766E69;
    }

    v56 = *(v0 + 152);
    v55 = *(v0 + 160);
    v57 = sub_1B7FB84FC(v2, v50, (v0 + 64));

    *(v48 + 4) = v57;
    *(v48 + 12) = 2160;
    *(v48 + 14) = 1752392040;
    *(v48 + 22) = 2081;
    v58 = *v55;
    v59 = v55[1];

    sub_1B7FF3FF0(v55, type metadata accessor for Friend);
    v60 = sub_1B7FB84FC(v58, v59, (v0 + 64));

    *(v48 + 24) = v60;
    *(v48 + 32) = 2082;
    v61 = *(v56 + 176);
    if (v61 <= 1)
    {
      if (*(v56 + 176))
      {
        v63 = 0x69776F6C6C6F662ELL;
      }

      else
      {
        v63 = 0x65776F6C6C6F662ELL;
      }

      if (*(v56 + 176))
      {
        v62 = 0xEA0000000000676ELL;
      }

      else
      {
        v62 = 0xE900000000000072;
      }
    }

    else if (v61 == 2)
    {
      v62 = 0xEF7265776F6C6C6FLL;
      v63 = 0x466572757475662ELL;
    }

    else if (v61 == 3)
    {
      v62 = 0x80000001B80CBD30;
      v63 = 0xD000000000000010;
    }

    else
    {
      v62 = 0xED0000726566664FLL;
      v63 = 0x676E69646E65702ELL;
    }

    sub_1B7FF3FF0(*(v0 + 152), type metadata accessor for Friend);
    v64 = sub_1B7FB84FC(v63, v62, (v0 + 64));

    *(v48 + 34) = v64;
    _os_log_impl(&dword_1B7FB5000, v46, v47, "friendsUpdated %{public}s handle: %{private,mask.hash}s type: %{public}s", v48, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x1B8CB8970](v49, -1, -1);
    MEMORY[0x1B8CB8970](v48, -1, -1);
  }

  else
  {
    v52 = *(v0 + 152);
    v51 = *(v0 + 160);

    sub_1B7FF3FF0(v52, type metadata accessor for Friend);
    sub_1B7FF3FF0(v51, type metadata accessor for Friend);
  }

  v65 = swift_task_alloc();
  *(v0 + 272) = v65;
  *v65 = v0;
  v65[1] = sub_1B7FEC3A0;
  v66 = *(v0 + 72);

  return sub_1B7FEDB08(v66);
}

uint64_t sub_1B7FECFD8()
{
  v2 = *v1;
  *(*v1 + 288) = v0;

  v3 = *(v2 + 80);
  if (v0)
  {
    v4 = sub_1B7FED9C0;
  }

  else
  {
    v4 = sub_1B7FED104;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1B7FED104()
{
  v2 = *(v0 + 232);
  v3 = *(v0 + 200);
  v4 = *(v0 + 88);
  sub_1B7FB8448(*(v0 + 80) + *(v0 + 224), v3, &unk_1EBA65FF0, &qword_1B80D2620);
  v5 = v2(v3, 1, v4);
  v6 = *(v0 + 200);
  v7 = *(v0 + 168);
  v8 = *(v0 + 136);
  if (v5)
  {
    sub_1B7FF3FF0(*(v0 + 136), type metadata accessor for FriendStreamChange);
    sub_1B7FF3FF0(v7, type metadata accessor for Friend);
    sub_1B7FB86D4(v6, &unk_1EBA65FF0, &qword_1B80D2620);
    v9 = 1;
  }

  else
  {
    v10 = *(v0 + 128);
    v1 = *(v0 + 104);
    v11 = *(v0 + 88);
    v12 = *(v0 + 96);
    (*(v12 + 16))(v1, *(v0 + 200), v11);
    sub_1B7FB86D4(v6, &unk_1EBA65FF0, &qword_1B80D2620);
    sub_1B7FF4050(v8, v10, type metadata accessor for FriendStreamChange);
    sub_1B80C92EC();
    (*(v12 + 8))(v1, v11);
    sub_1B7FF3FF0(v8, type metadata accessor for FriendStreamChange);
    sub_1B7FF3FF0(v7, type metadata accessor for Friend);
    v9 = 0;
  }

  v13 = *(v0 + 112);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F70, &qword_1B80D26D8);
  (*(*(v14 - 8) + 56))(v13, v9, 1, v14);
  sub_1B7FB86D4(v13, &qword_1EBA65F58, &qword_1B80D26B8);
  v15 = *(v0 + 248);
  v16 = *(v0 + 256);
  if (!v15)
  {
    v18 = ((1 << *(v0 + 296)) + 63) >> 6;
    if (v18 <= (v16 + 1))
    {
      v19 = v16 + 1;
    }

    else
    {
      v19 = ((1 << *(v0 + 296)) + 63) >> 6;
    }

    v20 = v19 - 1;
    while (1)
    {
      v21 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v21 >= v18)
      {
        v46 = *(v0 + 184);
        v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F68, &qword_1B80D26C8);
        (*(*(v47 - 8) + 56))(v46, 1, 1, v47);
        v24 = 0;
        goto LABEL_15;
      }

      v17 = *(v0 + 72);
      v15 = *(v17 + 8 * v21 + 64);
      ++v16;
      if (v15)
      {
        v16 = v21;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_49:
    swift_once();
    goto LABEL_20;
  }

  v17 = *(v0 + 72);
LABEL_14:
  v22 = *(v0 + 176);
  v23 = *(v0 + 184);
  v24 = (v15 - 1) & v15;
  v25 = __clz(__rbit64(v15)) | (v16 << 6);
  sub_1B7FF4050(*(v17 + 48) + *(*(v0 + 144) + 72) * v25, v22, type metadata accessor for Friend);
  LOBYTE(v25) = *(*(v17 + 56) + v25);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F68, &qword_1B80D26C8);
  v27 = *(v26 + 48);
  sub_1B7FE8124(v22, v23);
  *(v23 + v27) = v25;
  (*(*(v26 - 8) + 56))(v23, 0, 1, v26);
  v20 = v16;
LABEL_15:
  *(v0 + 248) = v24;
  *(v0 + 256) = v20;
  v28 = *(v0 + 192);
  sub_1B7FC8F2C(*(v0 + 184), v28, &qword_1EBA65F60, &qword_1B80D26C0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F68, &qword_1B80D26C8);
  if ((*(*(v29 - 8) + 48))(v28, 1, v29) == 1)
  {

    v30 = *(v0 + 8);

    return v30();
  }

  v32 = *(v0 + 192);
  v33 = *(v0 + 168);
  LODWORD(v1) = *(v32 + *(v29 + 48));
  *(v0 + 297) = v1;
  sub_1B7FE8124(v32, v33);
  if (qword_1ED8DD6D0 != -1)
  {
    goto LABEL_49;
  }

LABEL_20:
  v34 = *(v0 + 160);
  v35 = *(v0 + 168);
  v36 = *(v0 + 152);
  v37 = sub_1B80C900C();
  *(v0 + 264) = __swift_project_value_buffer(v37, qword_1ED8DDE78);
  sub_1B7FF4050(v35, v34, type metadata accessor for Friend);
  sub_1B7FF4050(v35, v36, type metadata accessor for Friend);
  v38 = sub_1B80C8FEC();
  v39 = sub_1B80C941C();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *(v0 + 64) = v41;
    *v40 = 136446979;
    if (v1 <= 1)
    {
      if (v1)
      {
        v42 = 0xE600000000000000;
        v43 = 0x65766F6D6572;
      }

      else
      {
        v42 = 0xE300000000000000;
        v43 = 6579297;
      }
    }

    else if (v1 == 2)
    {
      v42 = 0xE600000000000000;
      v43 = 0x796669646F6DLL;
    }

    else if (v1 == 3)
    {
      v42 = 0xE500000000000000;
      v43 = 0x726566666FLL;
    }

    else
    {
      v42 = 0xE600000000000000;
      v43 = 0x657469766E69;
    }

    v49 = *(v0 + 152);
    v48 = *(v0 + 160);
    v50 = sub_1B7FB84FC(v43, v42, (v0 + 64));

    *(v40 + 4) = v50;
    *(v40 + 12) = 2160;
    *(v40 + 14) = 1752392040;
    *(v40 + 22) = 2081;
    v51 = *v48;
    v52 = v48[1];

    sub_1B7FF3FF0(v48, type metadata accessor for Friend);
    v53 = sub_1B7FB84FC(v51, v52, (v0 + 64));

    *(v40 + 24) = v53;
    *(v40 + 32) = 2082;
    v54 = *(v49 + 176);
    if (v54 <= 1)
    {
      if (*(v49 + 176))
      {
        v56 = 0x69776F6C6C6F662ELL;
      }

      else
      {
        v56 = 0x65776F6C6C6F662ELL;
      }

      if (*(v49 + 176))
      {
        v55 = 0xEA0000000000676ELL;
      }

      else
      {
        v55 = 0xE900000000000072;
      }
    }

    else if (v54 == 2)
    {
      v55 = 0xEF7265776F6C6C6FLL;
      v56 = 0x466572757475662ELL;
    }

    else if (v54 == 3)
    {
      v55 = 0x80000001B80CBD30;
      v56 = 0xD000000000000010;
    }

    else
    {
      v55 = 0xED0000726566664FLL;
      v56 = 0x676E69646E65702ELL;
    }

    sub_1B7FF3FF0(*(v0 + 152), type metadata accessor for Friend);
    v57 = sub_1B7FB84FC(v56, v55, (v0 + 64));

    *(v40 + 34) = v57;
    _os_log_impl(&dword_1B7FB5000, v38, v39, "friendsUpdated %{public}s handle: %{private,mask.hash}s type: %{public}s", v40, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x1B8CB8970](v41, -1, -1);
    MEMORY[0x1B8CB8970](v40, -1, -1);
  }

  else
  {
    v45 = *(v0 + 152);
    v44 = *(v0 + 160);

    sub_1B7FF3FF0(v45, type metadata accessor for Friend);
    sub_1B7FF3FF0(v44, type metadata accessor for Friend);
  }

  v58 = swift_task_alloc();
  *(v0 + 272) = v58;
  *v58 = v0;
  v58[1] = sub_1B7FEC3A0;
  v59 = *(v0 + 72);

  return sub_1B7FEDB08(v59);
}

uint64_t sub_1B7FED9C0()
{
  v1 = v0[21];
  v2 = v0[17];

  sub_1B7FF3FF0(v2, type metadata accessor for FriendStreamChange);
  sub_1B7FF3FF0(v1, type metadata accessor for Friend);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1B7FEDB08(uint64_t a1)
{
  v2[122] = v1;
  v2[121] = a1;
  v3 = type metadata accessor for Friend(0);
  v2[123] = v3;
  v2[124] = *(v3 - 8);
  v2[125] = swift_task_alloc();
  v2[126] = swift_task_alloc();
  v2[127] = swift_task_alloc();
  v2[128] = swift_task_alloc();
  v2[129] = swift_task_alloc();
  v2[130] = swift_task_alloc();
  v2[131] = swift_task_alloc();
  v2[132] = swift_task_alloc();
  v2[133] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F60, &qword_1B80D26C0);
  v2[134] = swift_task_alloc();
  v2[135] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B7FEDC70, v1, 0);
}

uint64_t sub_1B7FEDC70()
{
  v217 = v1;
  v2 = *(v1 + 968);
  v215 = (v1 + 960);
  v3 = *(v2 + 32);
  *(v1 + 1176) = v3;
  v4 = 1 << v3;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(v2 + 64);
  *(v1 + 1088) = OBJC_IVAR____TtCC12FindMyLocate7Session20FriendshipConnection_pendingOffers;
  *(v1 + 1096) = OBJC_IVAR____TtCC12FindMyLocate7Session20FriendshipConnection_futureFollowings;
  *(v1 + 1104) = OBJC_IVAR____TtCC12FindMyLocate7Session20FriendshipConnection_futureFollowers;
  *(v1 + 1112) = OBJC_IVAR____TtCC12FindMyLocate7Session20FriendshipConnection_followings;
  *(v1 + 1120) = OBJC_IVAR____TtCC12FindMyLocate7Session20FriendshipConnection_owningSession;
  *(v1 + 1128) = OBJC_IVAR____TtCC12FindMyLocate7Session20FriendshipConnection_followers;

  v7 = 0;
  while (1)
  {
    if (!v6)
    {
      v13 = ((1 << *(v1 + 1176)) + 63) >> 6;
      if (v13 <= (v7 + 1))
      {
        v14 = v7 + 1;
      }

      else
      {
        v14 = ((1 << *(v1 + 1176)) + 63) >> 6;
      }

      v15 = v14 - 1;
      while (1)
      {
        v16 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        if (v16 >= v13)
        {
          v37 = *(v1 + 1072);
          v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F68, &qword_1B80D26C8);
          (*(*(v38 - 8) + 56))(v37, 1, 1, v38);
          v19 = 0;
          goto LABEL_19;
        }

        v12 = *(v1 + 968);
        v6 = *(v12 + 8 * v16 + 64);
        ++v7;
        if (v6)
        {
          v7 = v16;
          goto LABEL_18;
        }
      }

      __break(1u);
      goto LABEL_166;
    }

    v12 = *(v1 + 968);
LABEL_18:
    v17 = *(v1 + 1072);
    v18 = *(v1 + 1064);
    v19 = (v6 - 1) & v6;
    v20 = __clz(__rbit64(v6)) | (v7 << 6);
    sub_1B7FF4050(*(v12 + 48) + *(*(v1 + 992) + 72) * v20, v18, type metadata accessor for Friend);
    LOBYTE(v20) = *(*(v12 + 56) + v20);
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F68, &qword_1B80D26C8);
    v22 = *(v21 + 48);
    sub_1B7FE8124(v18, v17);
    *(v17 + v22) = v20;
    (*(*(v21 - 8) + 56))(v17, 0, 1, v21);
    v15 = v7;
LABEL_19:
    *(v1 + 1144) = v15;
    *(v1 + 1136) = v19;
    v23 = *(v1 + 1080);
    sub_1B7FC8F2C(*(v1 + 1072), v23, &qword_1EBA65F60, &qword_1B80D26C0);
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F68, &qword_1B80D26C8);
    if ((*(*(v24 - 8) + 48))(v23, 1, v24) == 1)
    {

      goto LABEL_159;
    }

    v25 = *(v1 + 1080);
    v26 = *(v25 + *(v24 + 48));
    sub_1B7FE8124(v25, *(v1 + 1056));
    if (qword_1ED8DD6D0 != -1)
    {
      swift_once();
    }

    v27 = *(v1 + 1056);
    v28 = *(v1 + 1048);
    v29 = sub_1B80C900C();
    __swift_project_value_buffer(v29, qword_1ED8DDE78);
    sub_1B7FF4050(v27, v28, type metadata accessor for Friend);
    v30 = sub_1B80C8FEC();
    v31 = sub_1B80C941C();
    if (!os_log_type_enabled(v30, v31))
    {
      v36 = *(v1 + 1048);

      sub_1B7FF3FF0(v36, type metadata accessor for Friend);
      goto LABEL_45;
    }

    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v215 = v33;
    *v32 = 136446466;
    if (v26 <= 1)
    {
      if (v26)
      {
        v34 = 0xE700000000000000;
        v39 = 0x766F6D65722ELL;
        goto LABEL_34;
      }

      v34 = 0xE400000000000000;
      v35 = 1684300078;
    }

    else
    {
      if (v26 == 2)
      {
        v34 = 0xE700000000000000;
        v35 = 0x796669646F6D2ELL;
        goto LABEL_35;
      }

      if (v26 != 3)
      {
        v34 = 0xE700000000000000;
        v39 = 0x7469766E692ELL;
LABEL_34:
        v35 = v39 & 0xFFFFFFFFFFFFLL | 0x65000000000000;
        goto LABEL_35;
      }

      v34 = 0xE600000000000000;
      v35 = 0x726566666F2ELL;
    }

LABEL_35:
    v40 = *(v1 + 1048);
    v41 = sub_1B7FB84FC(v35, v34, v215);

    *(v32 + 4) = v41;
    *(v32 + 12) = 2082;
    v42 = *(v40 + 176);
    if (v42 <= 1)
    {
      if (*(v40 + 176))
      {
        v44 = 0xEA0000000000676ELL;
        v43 = 0x69776F6C6C6F662ELL;
      }

      else
      {
        v44 = 0xE900000000000072;
        v43 = 0x65776F6C6C6F662ELL;
      }
    }

    else if (v42 == 2)
    {
      v43 = 0x466572757475662ELL;
      v44 = 0xEF7265776F6C6C6FLL;
    }

    else if (v42 == 3)
    {
      v43 = 0xD000000000000010;
      v44 = 0x80000001B80CBD30;
    }

    else
    {
      v43 = 0x676E69646E65702ELL;
      v44 = 0xED0000726566664FLL;
    }

    sub_1B7FF3FF0(*(v1 + 1048), type metadata accessor for Friend);
    v45 = sub_1B7FB84FC(v43, v44, v215);

    *(v32 + 14) = v45;
    _os_log_impl(&dword_1B7FB5000, v30, v31, "Updating friends cache %{public}s %{public}s", v32, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B8CB8970](v33, -1, -1);
    MEMORY[0x1B8CB8970](v32, -1, -1);

LABEL_45:
    v0 = *(v1 + 1056);
    v46 = *(v0 + 176);
    if (v46 <= 1)
    {
      break;
    }

    if (v46 == 2)
    {
      if (v26 == 1)
      {
        v88 = *(v1 + 1104);
        v89 = *(v1 + 976);
        v90 = swift_task_alloc();
        *(v90 + 16) = v0;
        swift_beginAccess();
        result = sub_1B7FF8190(sub_1B7FF4794, v90);
        v0 = *(v89 + v88);
        v91 = *(v0 + 16);
        v92 = v91 - result;
        if (v91 < result)
        {
          goto LABEL_178;
        }

        v93 = result;
        if (result < 0)
        {
          goto LABEL_182;
        }

        v94 = result - v91;
        v95 = result;
        if (__OFADD__(v91, result - v91))
        {
          goto LABEL_185;
        }

        v96 = *(v1 + 1104);
        v97 = *(v1 + 976);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v97 + v96) = v0;
        if (!isUniquelyReferenced_nonNull_native || v95 > *(v0 + 24) >> 1)
        {
          v99 = *(v1 + 1104);
          v100 = *(v1 + 976);
          if (v91 <= v95)
          {
            v101 = v91 - v92;
          }

          else
          {
            v101 = v91;
          }

          v0 = sub_1B807DA7C(isUniquelyReferenced_nonNull_native, v101, 1, v0);
          *(v100 + v99) = v0;
        }

        v102 = *(v1 + 992);
        v103 = v0 + ((*(v102 + 80) + 32) & ~*(v102 + 80));
        v104 = *(v102 + 72);
        v105 = v104 * v93;
        result = swift_arrayDestroy();
        if (v91 != v93)
        {
          if (v105 < v104 * v91 || v103 + v104 * v93 >= v103 + v104 * v91 + (*(v0 + 16) - v91) * v104)
          {
            result = swift_arrayInitWithTakeFrontToBack();
          }

          else if (v105 != v104 * v91)
          {
            result = swift_arrayInitWithTakeBackToFront();
          }

          v160 = *(v0 + 16);
          v161 = __OFADD__(v160, v94);
          v162 = v160 + v94;
          if (v161)
          {
            goto LABEL_190;
          }

          *(v0 + 16) = v162;
        }

        *(*(v1 + 976) + *(v1 + 1104)) = v0;
LABEL_156:
        swift_endAccess();

        goto LABEL_7;
      }

      if (!v26)
      {
        v65 = *(v1 + 1104);
        v66 = *(v1 + 976);
        sub_1B7FF4050(*(v1 + 1056), *(v1 + 1016), type metadata accessor for Friend);
        swift_beginAccess();
        v0 = *(v66 + v65);
        v67 = swift_isUniquelyReferenced_nonNull_native();
        *(v66 + v65) = v0;
        if ((v67 & 1) == 0)
        {
          v171 = *(v1 + 1104);
          v172 = *(v1 + 976);
          v0 = sub_1B807DA7C(0, *(v0 + 16) + 1, 1, v0);
          *(v172 + v171) = v0;
        }

        v69 = *(v0 + 16);
        v68 = *(v0 + 24);
        if (v69 >= v68 >> 1)
        {
          v0 = sub_1B807DA7C((v68 > 1), v69 + 1, 1, v0);
        }

        v70 = *(v1 + 1104);
        v71 = *(v1 + 1016);
        v72 = *(v1 + 992);
        v73 = *(v1 + 976);
        *(v0 + 16) = v69 + 1;
        sub_1B7FE8124(v71, v0 + ((*(v72 + 80) + 32) & ~*(v72 + 80)) + *(v72 + 72) * v69);
        *(v73 + v70) = v0;
        goto LABEL_6;
      }
    }

    else if (v46 == 3)
    {
      if (v26 == 1)
      {
        v106 = *(v1 + 1096);
        v107 = *(v1 + 976);
        v108 = swift_task_alloc();
        *(v108 + 16) = v0;
        swift_beginAccess();
        result = sub_1B7FF8190(sub_1B7FF4794, v108);
        v0 = *(v107 + v106);
        v109 = *(v0 + 16);
        v110 = v109 - result;
        if (v109 < result)
        {
          __break(1u);
LABEL_176:
          __break(1u);
LABEL_177:
          __break(1u);
LABEL_178:
          __break(1u);
LABEL_179:
          __break(1u);
LABEL_180:
          __break(1u);
LABEL_181:
          __break(1u);
LABEL_182:
          __break(1u);
LABEL_183:
          __break(1u);
LABEL_184:
          __break(1u);
LABEL_185:
          __break(1u);
LABEL_186:
          __break(1u);
LABEL_187:
          __break(1u);
LABEL_188:
          __break(1u);
LABEL_189:
          __break(1u);
LABEL_190:
          __break(1u);
LABEL_191:
          __break(1u);
          return result;
        }

        v111 = result;
        if (result < 0)
        {
          goto LABEL_181;
        }

        v112 = result - v109;
        v113 = result;
        if (__OFADD__(v109, result - v109))
        {
          goto LABEL_184;
        }

        v114 = *(v1 + 1096);
        v115 = *(v1 + 976);
        v116 = swift_isUniquelyReferenced_nonNull_native();
        *(v115 + v114) = v0;
        if (!v116 || v113 > *(v0 + 24) >> 1)
        {
          v117 = *(v1 + 1096);
          v118 = *(v1 + 976);
          if (v109 <= v113)
          {
            v119 = v109 - v110;
          }

          else
          {
            v119 = v109;
          }

          v0 = sub_1B807DA7C(v116, v119, 1, v0);
          *(v118 + v117) = v0;
        }

        v120 = *(v1 + 992);
        v121 = v0 + ((*(v120 + 80) + 32) & ~*(v120 + 80));
        v122 = *(v120 + 72);
        v123 = v122 * v111;
        result = swift_arrayDestroy();
        if (v109 != v111)
        {
          if (v123 < v122 * v109 || v121 + v122 * v111 >= v121 + v122 * v109 + (*(v0 + 16) - v109) * v122)
          {
            result = swift_arrayInitWithTakeFrontToBack();
          }

          else if (v123 != v122 * v109)
          {
            result = swift_arrayInitWithTakeBackToFront();
          }

          v163 = *(v0 + 16);
          v161 = __OFADD__(v163, v112);
          v164 = v163 + v112;
          if (v161)
          {
            goto LABEL_187;
          }

          *(v0 + 16) = v164;
        }

        *(*(v1 + 976) + *(v1 + 1096)) = v0;
        goto LABEL_156;
      }

      if (!v26)
      {
        v47 = *(v1 + 1096);
        v48 = *(v1 + 976);
        sub_1B7FF4050(*(v1 + 1056), *(v1 + 1008), type metadata accessor for Friend);
        swift_beginAccess();
        v0 = *(v48 + v47);
        v49 = swift_isUniquelyReferenced_nonNull_native();
        *(v48 + v47) = v0;
        if ((v49 & 1) == 0)
        {
          v173 = *(v1 + 1096);
          v174 = *(v1 + 976);
          v0 = sub_1B807DA7C(0, *(v0 + 16) + 1, 1, v0);
          *(v174 + v173) = v0;
        }

        v51 = *(v0 + 16);
        v50 = *(v0 + 24);
        if (v51 >= v50 >> 1)
        {
          v0 = sub_1B807DA7C((v50 > 1), v51 + 1, 1, v0);
        }

        v52 = *(v1 + 1096);
        v53 = *(v1 + 1008);
        v54 = *(v1 + 992);
        v55 = *(v1 + 976);
        *(v0 + 16) = v51 + 1;
        sub_1B7FE8124(v53, v0 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v51);
        *(v55 + v52) = v0;
LABEL_6:
        swift_endAccess();
      }
    }

    else
    {
      if (v26 == 1)
      {
        v124 = *(v1 + 1088);
        v125 = *(v1 + 976);
        v126 = swift_task_alloc();
        *(v126 + 16) = v0;
        swift_beginAccess();
        result = sub_1B7FF8190(sub_1B7FF4794, v126);
        v0 = *(v125 + v124);
        v127 = *(v0 + 16);
        v128 = v127 - result;
        if (v127 < result)
        {
          goto LABEL_177;
        }

        v129 = result;
        if (result < 0)
        {
          goto LABEL_180;
        }

        v130 = result;
        if (__OFADD__(v127, result - v127))
        {
          goto LABEL_183;
        }

        v214 = result - v127;
        v131 = *(v1 + 1088);
        v132 = *(v1 + 976);
        v133 = swift_isUniquelyReferenced_nonNull_native();
        *(v132 + v131) = v0;
        if (!v133 || v130 > *(v0 + 24) >> 1)
        {
          v134 = *(v1 + 1088);
          v135 = *(v1 + 976);
          if (v127 <= v130)
          {
            v136 = v127 - v128;
          }

          else
          {
            v136 = v127;
          }

          v0 = sub_1B807DA7C(v133, v136, 1, v0);
          *(v135 + v134) = v0;
        }

        v137 = *(v1 + 992);
        v138 = v0 + ((*(v137 + 80) + 32) & ~*(v137 + 80));
        v139 = *(v137 + 72);
        v140 = v139 * v129;
        result = swift_arrayDestroy();
        if (v127 != v129)
        {
          if (v140 < v139 * v127 || v138 + v139 * v129 >= v138 + v139 * v127 + (*(v0 + 16) - v127) * v139)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v141 = v214;
          }

          else
          {
            v141 = v214;
            if (v140 != v139 * v127)
            {
              result = swift_arrayInitWithTakeBackToFront();
            }
          }

          v165 = *(v0 + 16);
          v161 = __OFADD__(v165, v141);
          v166 = v165 + v141;
          if (v161)
          {
            goto LABEL_188;
          }

          *(v0 + 16) = v166;
        }

        *(*(v1 + 976) + *(v1 + 1088)) = v0;
        goto LABEL_156;
      }

      if (!v26)
      {
        v74 = *(v1 + 1088);
        v75 = *(v1 + 976);
        sub_1B7FF4050(*(v1 + 1056), *(v1 + 1000), type metadata accessor for Friend);
        swift_beginAccess();
        v0 = *(v75 + v74);
        v76 = swift_isUniquelyReferenced_nonNull_native();
        *(v75 + v74) = v0;
        if ((v76 & 1) == 0)
        {
          v175 = *(v1 + 1088);
          v176 = *(v1 + 976);
          v0 = sub_1B807DA7C(0, *(v0 + 16) + 1, 1, v0);
          *(v176 + v175) = v0;
        }

        v78 = *(v0 + 16);
        v77 = *(v0 + 24);
        if (v78 >= v77 >> 1)
        {
          v0 = sub_1B807DA7C((v77 > 1), v78 + 1, 1, v0);
        }

        v79 = *(v1 + 1088);
        v80 = *(v1 + 1000);
        v81 = *(v1 + 992);
        v82 = *(v1 + 976);
        *(v0 + 16) = v78 + 1;
        sub_1B7FE8124(v80, v0 + ((*(v81 + 80) + 32) & ~*(v81 + 80)) + *(v81 + 72) * v78);
        *(v82 + v79) = v0;
        goto LABEL_6;
      }
    }

LABEL_7:
    sub_1B7FF3FF0(*(v1 + 1056), type metadata accessor for Friend);
    v7 = *(v1 + 1144);
    v6 = *(v1 + 1136);
  }

  if (!*(v0 + 176))
  {
    if (v26 == 1)
    {
      v142 = *(v1 + 1128);
      v143 = *(v1 + 976);
      v144 = swift_task_alloc();
      *(v144 + 16) = v0;
      swift_beginAccess();
      result = sub_1B7FF8190(sub_1B7FF4794, v144);
      v0 = *(v143 + v142);
      v145 = *(v0 + 16);
      v146 = v145 - result;
      if (v145 < result)
      {
        goto LABEL_176;
      }

      v147 = result;
      if (result < 0)
      {
        goto LABEL_179;
      }

      v148 = result - v145;
      v149 = result;
      if (__OFADD__(v145, result - v145))
      {
        goto LABEL_186;
      }

      v150 = *(v1 + 1128);
      v151 = *(v1 + 976);
      v152 = swift_isUniquelyReferenced_nonNull_native();
      *(v151 + v150) = v0;
      if (!v152 || v149 > *(v0 + 24) >> 1)
      {
        v153 = *(v1 + 1128);
        v154 = *(v1 + 976);
        if (v145 <= v149)
        {
          v155 = v145 - v146;
        }

        else
        {
          v155 = v145;
        }

        v0 = sub_1B807DA7C(v152, v155, 1, v0);
        *(v154 + v153) = v0;
      }

      v156 = *(v1 + 992);
      v157 = v0 + ((*(v156 + 80) + 32) & ~*(v156 + 80));
      v158 = *(v156 + 72);
      v159 = v158 * v147;
      result = swift_arrayDestroy();
      if (v145 != v147)
      {
        if (v159 < v158 * v145 || v157 + v158 * v147 >= v157 + v158 * v145 + (*(v0 + 16) - v145) * v158)
        {
          result = swift_arrayInitWithTakeFrontToBack();
        }

        else if (v159 != v158 * v145)
        {
          result = swift_arrayInitWithTakeBackToFront();
        }

        v167 = *(v0 + 16);
        v161 = __OFADD__(v167, v148);
        v168 = v167 + v148;
        if (v161)
        {
          goto LABEL_189;
        }

        *(v0 + 16) = v168;
      }

      *(*(v1 + 976) + *(v1 + 1128)) = v0;
      goto LABEL_156;
    }

    if (!v26)
    {
      v56 = *(v1 + 1128);
      v57 = *(v1 + 976);
      sub_1B7FF4050(*(v1 + 1056), *(v1 + 1040), type metadata accessor for Friend);
      swift_beginAccess();
      v0 = *(v57 + v56);
      v58 = swift_isUniquelyReferenced_nonNull_native();
      *(v57 + v56) = v0;
      if ((v58 & 1) == 0)
      {
        v177 = *(v1 + 1128);
        v178 = *(v1 + 976);
        v0 = sub_1B807DA7C(0, *(v0 + 16) + 1, 1, v0);
        *(v178 + v177) = v0;
      }

      v60 = *(v0 + 16);
      v59 = *(v0 + 24);
      if (v60 >= v59 >> 1)
      {
        v0 = sub_1B807DA7C((v59 > 1), v60 + 1, 1, v0);
      }

      v61 = *(v1 + 1128);
      v62 = *(v1 + 1040);
      v63 = *(v1 + 992);
      v64 = *(v1 + 976);
      *(v0 + 16) = v60 + 1;
      sub_1B7FE8124(v62, v0 + ((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v60);
      *(v64 + v61) = v0;
      goto LABEL_6;
    }

    goto LABEL_7;
  }

  if (!v26)
  {
    v83 = *(v1 + 1112);
    v84 = *(v1 + 976);
    sub_1B7FF4050(*(v1 + 1056), *(v1 + 1032), type metadata accessor for Friend);
    swift_beginAccess();
    v0 = *(v84 + v83);
    v85 = swift_isUniquelyReferenced_nonNull_native();
    *(v84 + v83) = v0;
    if ((v85 & 1) == 0)
    {
      v169 = *(v1 + 1112);
      v170 = *(v1 + 976);
      v0 = sub_1B807DA7C(0, *(v0 + 16) + 1, 1, v0);
      *(v170 + v169) = v0;
    }

    v87 = *(v0 + 16);
    v86 = *(v0 + 24);
    if (v87 >= v86 >> 1)
    {
      v0 = sub_1B807DA7C((v86 > 1), v87 + 1, 1, v0);
    }

    v8 = *(v1 + 1112);
    v9 = *(v1 + 1032);
    v10 = *(v1 + 992);
    v11 = *(v1 + 976);
    *(v0 + 16) = v87 + 1;
    sub_1B7FE8124(v9, v0 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v87);
    *(v11 + v8) = v0;
    goto LABEL_6;
  }

  if (v26 != 1)
  {
    goto LABEL_7;
  }

  v180 = *(v1 + 1112);
  v181 = *(v1 + 976);
  v182 = swift_task_alloc();
  *(v182 + 16) = v0;
  swift_beginAccess();
  result = sub_1B7FF8190(sub_1B7FF40B8, v182);
  *(v1 + 1152) = 0;
  v184 = *(*(v181 + v180) + 16);
  if (v184 < result)
  {
    goto LABEL_191;
  }

  v185 = *(v1 + 1056);
  v186 = *(v1 + 1024);
  sub_1B7FF8700(result, v184);
  swift_endAccess();

  sub_1B7FF4050(v185, v186, type metadata accessor for Friend);
  v0 = sub_1B80C8FEC();
  v187 = sub_1B80C941C();
  v188 = os_log_type_enabled(v0, v187);
  v6 = *(v1 + 1024);
  if (v188)
  {
    v189 = swift_slowAlloc();
    v190 = swift_slowAlloc();
    v216[0] = v190;
    *v189 = 141558275;
    *(v189 + 4) = 1752392040;
    *(v189 + 12) = 2081;
    v191 = *v6;
    v192 = *(v6 + 8);

    sub_1B7FF3FF0(v6, type metadata accessor for Friend);
    v193 = sub_1B7FB84FC(v191, v192, v216);

    *(v189 + 14) = v193;
    _os_log_impl(&dword_1B7FB5000, v0, v187, "Removing cached location for following: %{private,mask.hash}s", v189, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v190);
    MEMORY[0x1B8CB8970](v190, -1, -1);
    MEMORY[0x1B8CB8970](v189, -1, -1);

    goto LABEL_167;
  }

LABEL_166:

  sub_1B7FF3FF0(v6, type metadata accessor for Friend);
LABEL_167:
  if (swift_weakLoadStrong() && (v194 = sub_1B7FF1014(), *(v1 + 1160) = v194, , v194))
  {
    v195 = *(v1 + 1056);
    v196 = *v195;
    v197 = v195[2];
    *(v1 + 208) = v195[1];
    *(v1 + 224) = v197;
    *(v1 + 192) = v196;
    v198 = v195[3];
    v199 = v195[4];
    v200 = v195[6];
    *(v1 + 272) = v195[5];
    *(v1 + 288) = v200;
    *(v1 + 240) = v198;
    *(v1 + 256) = v199;
    v201 = v195[7];
    v202 = v195[8];
    v203 = v195[10];
    *(v1 + 336) = v195[9];
    *(v1 + 352) = v203;
    *(v1 + 304) = v201;
    *(v1 + 320) = v202;
    v204 = *(v1 + 352);
    *(v1 + 512) = *(v1 + 336);
    *(v1 + 528) = v204;
    v205 = *(v1 + 320);
    *(v1 + 480) = *(v1 + 304);
    *(v1 + 496) = v205;
    v206 = *(v1 + 288);
    *(v1 + 448) = *(v1 + 272);
    *(v1 + 464) = v206;
    v207 = *(v1 + 256);
    *(v1 + 416) = *(v1 + 240);
    *(v1 + 432) = v207;
    v208 = *(v1 + 224);
    *(v1 + 384) = *(v1 + 208);
    *(v1 + 400) = v208;
    *(v1 + 368) = *(v1 + 192);
    sub_1B7FC8DA4(v1 + 192, v1 + 544);
    v209 = swift_task_alloc();
    *(v1 + 1168) = v209;
    *v209 = v1;
    v209[1] = sub_1B7FEF244;

    return sub_1B80134B0((v1 + 368));
  }

  else
  {
    v210 = sub_1B80C8FEC();
    v211 = sub_1B80C93FC();
    if (os_log_type_enabled(v210, v211))
    {
      v212 = swift_slowAlloc();
      v213 = swift_slowAlloc();
      v216[0] = v213;
      *v212 = 136446210;
      *(v212 + 4) = sub_1B7FB84FC(0xD000000000000015, 0x80000001B80CC410, v216);
      _os_log_impl(&dword_1B7FB5000, v210, v211, "%{public}s missing LocationConnection.", v212, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v213);
      MEMORY[0x1B8CB8970](v213, -1, -1);
      MEMORY[0x1B8CB8970](v212, -1, -1);
    }

    sub_1B7FF3FF0(*(v1 + 1056), type metadata accessor for Friend);
LABEL_159:

    v179 = *(v1 + 8);

    return v179();
  }
}

uint64_t sub_1B7FEF244()
{
  v1 = *v0;
  v2 = *(*v0 + 976);

  v3 = v1[32];
  v1[9] = v1[31];
  v1[10] = v3;
  v1[11] = v1[33];
  v4 = v1[28];
  v1[5] = v1[27];
  v1[6] = v4;
  v5 = v1[30];
  v1[7] = v1[29];
  v1[8] = v5;
  v6 = v1[24];
  v1[1] = v1[23];
  v1[2] = v6;
  v7 = v1[26];
  v1[3] = v1[25];
  v1[4] = v7;
  sub_1B7FCAD28((v1 + 1));

  return MEMORY[0x1EEE6DFA0](sub_1B7FEF38C, v2, 0);
}

uint64_t sub_1B7FEF38C()
{
  v202 = v1;
  v200 = (v1 + 960);

  v199 = *(v1 + 1152);
  do
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          sub_1B7FF3FF0(*(v1 + 1056), type metadata accessor for Friend);
          v3 = *(v1 + 1144);
          v4 = *(v1 + 1136);
          if (!v4)
          {
            v5 = ((1 << *(v1 + 1176)) + 63) >> 6;
            if (v5 <= (v3 + 1))
            {
              v6 = v3 + 1;
            }

            else
            {
              v6 = ((1 << *(v1 + 1176)) + 63) >> 6;
            }

            v7 = v6 - 1;
            while (1)
            {
              v8 = v3 + 1;
              if (__OFADD__(v3, 1))
              {
                break;
              }

              if (v8 >= v5)
              {
                v28 = *(v1 + 1072);
                v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F68, &qword_1B80D26C8);
                (*(*(v29 - 8) + 56))(v28, 1, 1, v29);
                v11 = 0;
                goto LABEL_15;
              }

              v2 = *(v1 + 968);
              v4 = v2[v8 + 8];
              ++v3;
              if (v4)
              {
                v3 = v8;
                goto LABEL_14;
              }
            }

            __break(1u);
            goto LABEL_163;
          }

          v2 = *(v1 + 968);
LABEL_14:
          v9 = *(v1 + 1072);
          v10 = *(v1 + 1064);
          v11 = (v4 - 1) & v4;
          v12 = __clz(__rbit64(v4)) | (v3 << 6);
          sub_1B7FF4050(v2[6] + *(*(v1 + 992) + 72) * v12, v10, type metadata accessor for Friend);
          LOBYTE(v12) = *(v2[7] + v12);
          v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F68, &qword_1B80D26C8);
          v13 = *(v2 + 12);
          sub_1B7FE8124(v10, v9);
          *(v9 + v13) = v12;
          (*(*(v2 - 1) + 56))(v9, 0, 1, v2);
          v7 = v3;
LABEL_15:
          *(v1 + 1144) = v7;
          *(v1 + 1136) = v11;
          v14 = *(v1 + 1080);
          sub_1B7FC8F2C(*(v1 + 1072), v14, &qword_1EBA65F60, &qword_1B80D26C0);
          v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F68, &qword_1B80D26C8);
          if ((*(*(v15 - 8) + 48))(v14, 1, v15) == 1)
          {

            goto LABEL_156;
          }

          v16 = *(v1 + 1080);
          v17 = *(v16 + *(v15 + 48));
          sub_1B7FE8124(v16, *(v1 + 1056));
          if (qword_1ED8DD6D0 != -1)
          {
            swift_once();
          }

          v18 = *(v1 + 1056);
          v19 = *(v1 + 1048);
          v20 = sub_1B80C900C();
          __swift_project_value_buffer(v20, qword_1ED8DDE78);
          sub_1B7FF4050(v18, v19, type metadata accessor for Friend);
          v21 = sub_1B80C8FEC();
          v22 = sub_1B80C941C();
          if (!os_log_type_enabled(v21, v22))
          {
            v27 = *(v1 + 1048);

            sub_1B7FF3FF0(v27, type metadata accessor for Friend);
            goto LABEL_44;
          }

          v23 = swift_slowAlloc();
          v24 = swift_slowAlloc();
          *v200 = v24;
          *v23 = 136446466;
          if (v17 <= 1)
          {
            if (v17)
            {
              v25 = 0xE700000000000000;
              v30 = 0x766F6D65722ELL;
              goto LABEL_30;
            }

            v25 = 0xE400000000000000;
            v26 = 1684300078;
          }

          else
          {
            if (v17 == 2)
            {
              v25 = 0xE700000000000000;
              v26 = 0x796669646F6D2ELL;
              goto LABEL_31;
            }

            if (v17 != 3)
            {
              v25 = 0xE700000000000000;
              v30 = 0x7469766E692ELL;
LABEL_30:
              v26 = v30 & 0xFFFFFFFFFFFFLL | 0x65000000000000;
              goto LABEL_31;
            }

            v25 = 0xE600000000000000;
            v26 = 0x726566666F2ELL;
          }

LABEL_31:
          v31 = *(v1 + 1048);
          v32 = sub_1B7FB84FC(v26, v25, v200);

          *(v23 + 4) = v32;
          *(v23 + 12) = 2082;
          v33 = *(v31 + 176);
          if (v33 <= 1)
          {
            v34 = *(v31 + 176) ? 0x69776F6C6C6F662ELL : 0x65776F6C6C6F662ELL;
            v35 = *(v31 + 176) ? 0xEA0000000000676ELL : 0xE900000000000072;
          }

          else if (v33 == 2)
          {
            v34 = 0x466572757475662ELL;
            v35 = 0xEF7265776F6C6C6FLL;
          }

          else if (v33 == 3)
          {
            v34 = 0xD000000000000010;
            v35 = 0x80000001B80CBD30;
          }

          else
          {
            v34 = 0x676E69646E65702ELL;
            v35 = 0xED0000726566664FLL;
          }

          sub_1B7FF3FF0(*(v1 + 1048), type metadata accessor for Friend);
          v2 = sub_1B7FB84FC(v34, v35, v200);

          *(v23 + 14) = v2;
          _os_log_impl(&dword_1B7FB5000, v21, v22, "Updating friends cache %{public}s %{public}s", v23, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1B8CB8970](v24, -1, -1);
          MEMORY[0x1B8CB8970](v23, -1, -1);

LABEL_44:
          v0 = *(v1 + 1056);
          v36 = *(v0 + 176);
          if (v36 <= 1)
          {
            break;
          }

          if (v36 == 2)
          {
            if (v17 == 1)
            {
              v77 = *(v1 + 1104);
              v78 = *(v1 + 976);
              v79 = swift_task_alloc();
              *(v79 + 16) = v0;
              swift_beginAccess();
              result = sub_1B7FF8190(sub_1B7FF4794, v79);
              v0 = *(v78 + v77);
              v2 = *(v0 + 16);
              v80 = v2 - result;
              if (v2 < result)
              {
                goto LABEL_175;
              }

              v81 = result;
              if (result < 0)
              {
                goto LABEL_179;
              }

              v82 = result - v2;
              v83 = result;
              if (__OFADD__(v2, result - v2))
              {
                goto LABEL_182;
              }

              v84 = *(v1 + 1104);
              v85 = *(v1 + 976);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              *(v85 + v84) = v0;
              if (!isUniquelyReferenced_nonNull_native || v83 > *(v0 + 24) >> 1)
              {
                v87 = *(v1 + 1104);
                v88 = *(v1 + 976);
                if (v2 <= v83)
                {
                  v89 = v2 - v80;
                }

                else
                {
                  v89 = v2;
                }

                v0 = sub_1B807DA7C(isUniquelyReferenced_nonNull_native, v89, 1, v0);
                *(v88 + v87) = v0;
              }

              v90 = *(v1 + 992);
              v91 = v0 + ((*(v90 + 80) + 32) & ~*(v90 + 80));
              v92 = *(v90 + 72);
              v93 = v92 * v81;
              result = swift_arrayDestroy();
              if (v2 != v81)
              {
                if (v93 < v92 * v2 || v91 + v92 * v81 >= v91 + v92 * v2 + (*(v0 + 16) - v2) * v92)
                {
                  result = swift_arrayInitWithTakeFrontToBack();
                }

                else if (v93 != v92 * v2)
                {
                  result = swift_arrayInitWithTakeBackToFront();
                }

                v145 = *(v0 + 16);
                v146 = __OFADD__(v145, v82);
                v147 = v145 - v80;
                if (v146)
                {
                  goto LABEL_187;
                }

                *(v0 + 16) = v147;
              }

              *(*(v1 + 976) + *(v1 + 1104)) = v0;
              goto LABEL_3;
            }

            if (!v17)
            {
              v53 = *(v1 + 1104);
              v54 = *(v1 + 976);
              sub_1B7FF4050(*(v1 + 1056), *(v1 + 1016), type metadata accessor for Friend);
              swift_beginAccess();
              v0 = *(v54 + v53);
              v55 = swift_isUniquelyReferenced_nonNull_native();
              *(v54 + v53) = v0;
              if ((v55 & 1) == 0)
              {
                v156 = *(v1 + 1104);
                v157 = *(v1 + 976);
                v0 = sub_1B807DA7C(0, *(v0 + 16) + 1, 1, v0);
                *(v157 + v156) = v0;
              }

              v57 = *(v0 + 16);
              v56 = *(v0 + 24);
              if (v57 >= v56 >> 1)
              {
                v0 = sub_1B807DA7C((v56 > 1), v57 + 1, 1, v0);
              }

              v58 = *(v1 + 1104);
              v59 = *(v1 + 1016);
              v60 = *(v1 + 992);
              v2 = *(v1 + 976);
              *(v0 + 16) = v57 + 1;
              sub_1B7FE8124(v59, v0 + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v57);
              *(v2 + v58) = v0;
              swift_endAccess();
            }
          }

          else if (v36 == 3)
          {
            if (v17 == 1)
            {
              v94 = *(v1 + 1096);
              v95 = *(v1 + 976);
              v96 = swift_task_alloc();
              *(v96 + 16) = v0;
              swift_beginAccess();
              result = sub_1B7FF8190(sub_1B7FF4794, v96);
              v0 = *(v95 + v94);
              v2 = *(v0 + 16);
              v97 = v2 - result;
              if (v2 < result)
              {
                __break(1u);
LABEL_173:
                __break(1u);
LABEL_174:
                __break(1u);
LABEL_175:
                __break(1u);
LABEL_176:
                __break(1u);
LABEL_177:
                __break(1u);
LABEL_178:
                __break(1u);
LABEL_179:
                __break(1u);
LABEL_180:
                __break(1u);
LABEL_181:
                __break(1u);
LABEL_182:
                __break(1u);
LABEL_183:
                __break(1u);
LABEL_184:
                __break(1u);
LABEL_185:
                __break(1u);
LABEL_186:
                __break(1u);
LABEL_187:
                __break(1u);
LABEL_188:
                __break(1u);
                return result;
              }

              v98 = result;
              if (result < 0)
              {
                goto LABEL_178;
              }

              v99 = result - v2;
              v100 = result;
              if (__OFADD__(v2, result - v2))
              {
                goto LABEL_181;
              }

              v101 = *(v1 + 1096);
              v102 = *(v1 + 976);
              v103 = swift_isUniquelyReferenced_nonNull_native();
              *(v102 + v101) = v0;
              if (!v103 || v100 > *(v0 + 24) >> 1)
              {
                v104 = *(v1 + 1096);
                v105 = *(v1 + 976);
                if (v2 <= v100)
                {
                  v106 = v2 - v97;
                }

                else
                {
                  v106 = v2;
                }

                v0 = sub_1B807DA7C(v103, v106, 1, v0);
                *(v105 + v104) = v0;
              }

              v107 = *(v1 + 992);
              v108 = v0 + ((*(v107 + 80) + 32) & ~*(v107 + 80));
              v109 = *(v107 + 72);
              v110 = v109 * v98;
              result = swift_arrayDestroy();
              if (v2 != v98)
              {
                if (v110 < v109 * v2 || v108 + v109 * v98 >= v108 + v109 * v2 + (*(v0 + 16) - v2) * v109)
                {
                  result = swift_arrayInitWithTakeFrontToBack();
                }

                else if (v110 != v109 * v2)
                {
                  result = swift_arrayInitWithTakeBackToFront();
                }

                v148 = *(v0 + 16);
                v146 = __OFADD__(v148, v99);
                v149 = v148 - v97;
                if (v146)
                {
                  goto LABEL_184;
                }

                *(v0 + 16) = v149;
              }

              *(*(v1 + 976) + *(v1 + 1096)) = v0;
LABEL_3:
              swift_endAccess();
            }

            else if (!v17)
            {
              v37 = *(v1 + 1096);
              v38 = *(v1 + 976);
              sub_1B7FF4050(*(v1 + 1056), *(v1 + 1008), type metadata accessor for Friend);
              swift_beginAccess();
              v0 = *(v38 + v37);
              v39 = swift_isUniquelyReferenced_nonNull_native();
              *(v38 + v37) = v0;
              if ((v39 & 1) == 0)
              {
                v158 = *(v1 + 1096);
                v159 = *(v1 + 976);
                v0 = sub_1B807DA7C(0, *(v0 + 16) + 1, 1, v0);
                *(v159 + v158) = v0;
              }

              v41 = *(v0 + 16);
              v40 = *(v0 + 24);
              if (v41 >= v40 >> 1)
              {
                v0 = sub_1B807DA7C((v40 > 1), v41 + 1, 1, v0);
              }

              v42 = *(v1 + 1096);
              v43 = *(v1 + 1008);
              v44 = *(v1 + 992);
              v2 = *(v1 + 976);
              *(v0 + 16) = v41 + 1;
              sub_1B7FE8124(v43, v0 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v41);
              *(v2 + v42) = v0;
              swift_endAccess();
            }
          }

          else
          {
            if (v17 == 1)
            {
              v111 = *(v1 + 1088);
              v112 = *(v1 + 976);
              v113 = swift_task_alloc();
              *(v113 + 16) = v0;
              swift_beginAccess();
              result = sub_1B7FF8190(sub_1B7FF4794, v113);
              v0 = *(v112 + v111);
              v2 = *(v0 + 16);
              v114 = v2 - result;
              if (v2 < result)
              {
                goto LABEL_174;
              }

              v115 = result;
              if (result < 0)
              {
                goto LABEL_177;
              }

              v116 = result;
              if (__OFADD__(v2, result - v2))
              {
                goto LABEL_180;
              }

              v117 = *(v1 + 1088);
              v118 = *(v1 + 976);
              v119 = swift_isUniquelyReferenced_nonNull_native();
              *(v118 + v117) = v0;
              if (!v119 || v116 > *(v0 + 24) >> 1)
              {
                v120 = *(v1 + 1088);
                v121 = *(v1 + 976);
                if (v2 <= v116)
                {
                  v122 = v2 - v114;
                }

                else
                {
                  v122 = v2;
                }

                v0 = sub_1B807DA7C(v119, v122, 1, v0);
                *(v121 + v120) = v0;
              }

              v123 = *(v1 + 992);
              v124 = v0 + ((*(v123 + 80) + 32) & ~*(v123 + 80));
              v125 = *(v123 + 72);
              v126 = v125 * v115;
              result = swift_arrayDestroy();
              if (v2 != v115)
              {
                if (v126 < v125 * v2 || v124 + v125 * v115 >= v124 + v125 * v2 + (*(v0 + 16) - v2) * v125)
                {
                  result = swift_arrayInitWithTakeFrontToBack();
                  v127 = -v114;
                }

                else
                {
                  v127 = -v114;
                  if (v126 != v125 * v2)
                  {
                    result = swift_arrayInitWithTakeBackToFront();
                  }
                }

                v150 = *(v0 + 16);
                v146 = __OFADD__(v150, v127);
                v151 = v150 + v127;
                if (v146)
                {
                  goto LABEL_185;
                }

                *(v0 + 16) = v151;
              }

              *(*(v1 + 976) + *(v1 + 1088)) = v0;
              goto LABEL_3;
            }

            if (!v17)
            {
              v61 = *(v1 + 1088);
              v62 = *(v1 + 976);
              sub_1B7FF4050(*(v1 + 1056), *(v1 + 1000), type metadata accessor for Friend);
              swift_beginAccess();
              v0 = *(v62 + v61);
              v63 = swift_isUniquelyReferenced_nonNull_native();
              *(v62 + v61) = v0;
              if ((v63 & 1) == 0)
              {
                v160 = *(v1 + 1088);
                v161 = *(v1 + 976);
                v0 = sub_1B807DA7C(0, *(v0 + 16) + 1, 1, v0);
                *(v161 + v160) = v0;
              }

              v65 = *(v0 + 16);
              v64 = *(v0 + 24);
              if (v65 >= v64 >> 1)
              {
                v0 = sub_1B807DA7C((v64 > 1), v65 + 1, 1, v0);
              }

              v66 = *(v1 + 1088);
              v67 = *(v1 + 1000);
              v68 = *(v1 + 992);
              v2 = *(v1 + 976);
              *(v0 + 16) = v65 + 1;
              sub_1B7FE8124(v67, v0 + ((*(v68 + 80) + 32) & ~*(v68 + 80)) + *(v68 + 72) * v65);
              *(v2 + v66) = v0;
              swift_endAccess();
            }
          }
        }

        if (*(v0 + 176))
        {
          break;
        }

        if (v17 == 1)
        {
          v128 = *(v1 + 1128);
          v129 = *(v1 + 976);
          v130 = swift_task_alloc();
          *(v130 + 16) = v0;
          swift_beginAccess();
          result = sub_1B7FF8190(sub_1B7FF4794, v130);
          v0 = *(v129 + v128);
          v2 = *(v0 + 16);
          v131 = v2 - result;
          if (v2 < result)
          {
            goto LABEL_173;
          }

          v132 = result;
          if (result < 0)
          {
            goto LABEL_176;
          }

          v133 = result - v2;
          v134 = result;
          if (__OFADD__(v2, result - v2))
          {
            goto LABEL_183;
          }

          v135 = *(v1 + 1128);
          v136 = *(v1 + 976);
          v137 = swift_isUniquelyReferenced_nonNull_native();
          *(v136 + v135) = v0;
          if (!v137 || v134 > *(v0 + 24) >> 1)
          {
            v138 = *(v1 + 1128);
            v139 = *(v1 + 976);
            if (v2 <= v134)
            {
              v140 = v2 - v131;
            }

            else
            {
              v140 = v2;
            }

            v0 = sub_1B807DA7C(v137, v140, 1, v0);
            *(v139 + v138) = v0;
          }

          v141 = *(v1 + 992);
          v142 = v0 + ((*(v141 + 80) + 32) & ~*(v141 + 80));
          v143 = *(v141 + 72);
          v144 = v143 * v132;
          result = swift_arrayDestroy();
          if (v2 != v132)
          {
            if (v144 < v143 * v2 || v142 + v143 * v132 >= v142 + v143 * v2 + (*(v0 + 16) - v2) * v143)
            {
              result = swift_arrayInitWithTakeFrontToBack();
            }

            else if (v144 != v143 * v2)
            {
              result = swift_arrayInitWithTakeBackToFront();
            }

            v152 = *(v0 + 16);
            v146 = __OFADD__(v152, v133);
            v153 = v152 - v131;
            if (v146)
            {
              goto LABEL_186;
            }

            *(v0 + 16) = v153;
          }

          *(*(v1 + 976) + *(v1 + 1128)) = v0;
          goto LABEL_3;
        }

        if (!v17)
        {
          v45 = *(v1 + 1128);
          v46 = *(v1 + 976);
          sub_1B7FF4050(*(v1 + 1056), *(v1 + 1040), type metadata accessor for Friend);
          swift_beginAccess();
          v0 = *(v46 + v45);
          v47 = swift_isUniquelyReferenced_nonNull_native();
          *(v46 + v45) = v0;
          if ((v47 & 1) == 0)
          {
            v162 = *(v1 + 1128);
            v163 = *(v1 + 976);
            v0 = sub_1B807DA7C(0, *(v0 + 16) + 1, 1, v0);
            *(v163 + v162) = v0;
          }

          v49 = *(v0 + 16);
          v48 = *(v0 + 24);
          if (v49 >= v48 >> 1)
          {
            v0 = sub_1B807DA7C((v48 > 1), v49 + 1, 1, v0);
          }

          v50 = *(v1 + 1128);
          v51 = *(v1 + 1040);
          v52 = *(v1 + 992);
          v2 = *(v1 + 976);
          *(v0 + 16) = v49 + 1;
          sub_1B7FE8124(v51, v0 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v49);
          *(v2 + v50) = v0;
          swift_endAccess();
        }
      }

      if (v17)
      {
        break;
      }

      v69 = *(v1 + 1112);
      v70 = *(v1 + 976);
      sub_1B7FF4050(*(v1 + 1056), *(v1 + 1032), type metadata accessor for Friend);
      swift_beginAccess();
      v0 = *(v70 + v69);
      v71 = swift_isUniquelyReferenced_nonNull_native();
      *(v70 + v69) = v0;
      if ((v71 & 1) == 0)
      {
        v154 = *(v1 + 1112);
        v155 = *(v1 + 976);
        v0 = sub_1B807DA7C(0, *(v0 + 16) + 1, 1, v0);
        *(v155 + v154) = v0;
      }

      v73 = *(v0 + 16);
      v72 = *(v0 + 24);
      if (v73 >= v72 >> 1)
      {
        v0 = sub_1B807DA7C((v72 > 1), v73 + 1, 1, v0);
      }

      v74 = *(v1 + 1112);
      v75 = *(v1 + 1032);
      v76 = *(v1 + 992);
      v2 = *(v1 + 976);
      *(v0 + 16) = v73 + 1;
      sub_1B7FE8124(v75, v0 + ((*(v76 + 80) + 32) & ~*(v76 + 80)) + *(v76 + 72) * v73);
      *(v2 + v74) = v0;
      swift_endAccess();
    }
  }

  while (v17 != 1);
  v165 = *(v1 + 1112);
  v166 = *(v1 + 976);
  v167 = swift_task_alloc();
  *(v167 + 16) = v0;
  swift_beginAccess();
  result = sub_1B7FF8190(sub_1B7FF40B8, v167);
  *(v1 + 1152) = v199;
  v169 = *(*(v166 + v165) + 16);
  if (v169 < result)
  {
    goto LABEL_188;
  }

  v170 = *(v1 + 1056);
  v171 = *(v1 + 1024);
  sub_1B7FF8700(result, v169);
  swift_endAccess();

  sub_1B7FF4050(v170, v171, type metadata accessor for Friend);
  v0 = sub_1B80C8FEC();
  v172 = sub_1B80C941C();
  v173 = os_log_type_enabled(v0, v172);
  v2 = *(v1 + 1024);
  if (v173)
  {
    v174 = swift_slowAlloc();
    v175 = swift_slowAlloc();
    v201[0] = v175;
    *v174 = 141558275;
    *(v174 + 4) = 1752392040;
    *(v174 + 12) = 2081;
    v176 = *v2;
    v177 = v2[1];

    sub_1B7FF3FF0(v2, type metadata accessor for Friend);
    v178 = sub_1B7FB84FC(v176, v177, v201);

    *(v174 + 14) = v178;
    _os_log_impl(&dword_1B7FB5000, v0, v172, "Removing cached location for following: %{private,mask.hash}s", v174, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v175);
    MEMORY[0x1B8CB8970](v175, -1, -1);
    MEMORY[0x1B8CB8970](v174, -1, -1);

    goto LABEL_164;
  }

LABEL_163:

  sub_1B7FF3FF0(v2, type metadata accessor for Friend);
LABEL_164:
  if (swift_weakLoadStrong() && (v179 = sub_1B7FF1014(), *(v1 + 1160) = v179, , v179))
  {
    v180 = *(v1 + 1056);
    v181 = *v180;
    v182 = v180[2];
    *(v1 + 208) = v180[1];
    *(v1 + 224) = v182;
    *(v1 + 192) = v181;
    v183 = v180[3];
    v184 = v180[4];
    v185 = v180[6];
    *(v1 + 272) = v180[5];
    *(v1 + 288) = v185;
    *(v1 + 240) = v183;
    *(v1 + 256) = v184;
    v186 = v180[7];
    v187 = v180[8];
    v188 = v180[10];
    *(v1 + 336) = v180[9];
    *(v1 + 352) = v188;
    *(v1 + 304) = v186;
    *(v1 + 320) = v187;
    v189 = *(v1 + 352);
    *(v1 + 512) = *(v1 + 336);
    *(v1 + 528) = v189;
    v190 = *(v1 + 320);
    *(v1 + 480) = *(v1 + 304);
    *(v1 + 496) = v190;
    v191 = *(v1 + 288);
    *(v1 + 448) = *(v1 + 272);
    *(v1 + 464) = v191;
    v192 = *(v1 + 256);
    *(v1 + 416) = *(v1 + 240);
    *(v1 + 432) = v192;
    v193 = *(v1 + 224);
    *(v1 + 384) = *(v1 + 208);
    *(v1 + 400) = v193;
    *(v1 + 368) = *(v1 + 192);
    sub_1B7FC8DA4(v1 + 192, v1 + 544);
    v194 = swift_task_alloc();
    *(v1 + 1168) = v194;
    *v194 = v1;
    v194[1] = sub_1B7FEF244;

    return sub_1B80134B0((v1 + 368));
  }

  else
  {
    v195 = sub_1B80C8FEC();
    v196 = sub_1B80C93FC();
    if (os_log_type_enabled(v195, v196))
    {
      v197 = swift_slowAlloc();
      v198 = swift_slowAlloc();
      v201[0] = v198;
      *v197 = 136446210;
      *(v197 + 4) = sub_1B7FB84FC(0xD000000000000015, 0x80000001B80CC410, v201);
      _os_log_impl(&dword_1B7FB5000, v195, v196, "%{public}s missing LocationConnection.", v197, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v198);
      MEMORY[0x1B8CB8970](v198, -1, -1);
      MEMORY[0x1B8CB8970](v197, -1, -1);
    }

    sub_1B7FF3FF0(*(v1 + 1056), type metadata accessor for Friend);
LABEL_156:

    v164 = *(v1 + 8);

    return v164();
  }
}

uint64_t sub_1B7FF08C0@<X0>(__int128 *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v74 = a2;
  v9 = type metadata accessor for Friend(0);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = (&v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = MEMORY[0x1EEE9AC00](v11);
  v70 = &v67 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v67 - v16;
  v18 = a1[9];
  v106 = a1[8];
  v107 = v18;
  v108 = a1[10];
  v19 = a1[5];
  v102 = a1[4];
  v103 = v19;
  v20 = a1[7];
  v104 = a1[6];
  v105 = v20;
  v21 = a1[1];
  v98 = *a1;
  v99 = v21;
  v22 = a1[3];
  v100 = a1[2];
  v101 = v22;
  if (qword_1ED8DD6D0 != -1)
  {
LABEL_23:
    swift_once();
  }

  v23 = sub_1B80C900C();
  v24 = __swift_project_value_buffer(v23, qword_1ED8DDE78);
  sub_1B7FC8DA4(&v98, &v87);

  v72 = v24;
  v25 = sub_1B80C8FEC();
  v26 = sub_1B80C941C();
  sub_1B7FCAD28(&v98);

  v27 = os_log_type_enabled(v25, v26);
  v73 = a4;
  v71 = v17;
  if (v27)
  {
    v28 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v86[0] = v68;
    *v28 = 136315394;
    v83 = v106;
    v84 = v107;
    v85 = v108;
    v79 = v102;
    v80 = v103;
    v81 = v104;
    v82 = v105;
    v75 = v98;
    v76 = v99;
    v77 = v100;
    v78 = v101;
    sub_1B7FC8DA4(&v98, &v87);
    v29 = Handle.description.getter();
    v69 = v5;
    v31 = v30;
    v95 = v83;
    v96 = v84;
    v97 = v85;
    v91 = v79;
    v92 = v80;
    v93 = v81;
    v94 = v82;
    v87 = v75;
    v88 = v76;
    v89 = v77;
    v90 = v78;
    sub_1B7FCAD28(&v87);
    v32 = sub_1B7FB84FC(v29, v31, v86);

    *(v28 + 4) = v32;
    *(v28 + 12) = 2080;
    *&v75 = v74;
    *(&v75 + 1) = a3;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65D98, &qword_1B80DE6E0);
    v33 = sub_1B80C90EC();
    v35 = sub_1B7FB84FC(v33, v34, v86);

    *(v28 + 14) = v35;
    v5 = v69;
    _os_log_impl(&dword_1B7FB5000, v25, v26, "Getting cached offer expiration for %s groupId: %s", v28, 0x16u);
    v36 = v68;
    swift_arrayDestroy();
    MEMORY[0x1B8CB8970](v36, -1, -1);
    MEMORY[0x1B8CB8970](v28, -1, -1);
  }

  v37 = sub_1B80C967C();

  v38 = v37 == 1;
  if (v37 == 2)
  {
    v38 = 2;
  }

  LODWORD(v74) = v38;
  v39 = OBJC_IVAR____TtCC12FindMyLocate7Session20FriendshipConnection_followers;
  swift_beginAccess();
  a4 = *(v5 + v39);
  a3 = *(a4 + 16);

  if (a3)
  {
    v17 = 0;
    while (1)
    {
      if (v17 >= *(a4 + 16))
      {
        __break(1u);
        goto LABEL_23;
      }

      sub_1B7FF4050(a4 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v17, v13, type metadata accessor for Friend);
      v40 = v13[9];
      v95 = v13[8];
      v96 = v40;
      v97 = v13[10];
      v41 = v13[5];
      v91 = v13[4];
      v92 = v41;
      v42 = v13[7];
      v93 = v13[6];
      v94 = v42;
      v43 = v13[1];
      v87 = *v13;
      v88 = v43;
      v44 = v13[3];
      v89 = v13[2];
      v90 = v44;
      v5 = sub_1B80C90FC();
      v46 = v45;
      if (v5 == sub_1B80C90FC() && v46 == v47)
      {
        break;
      }

      v48 = sub_1B80C981C();
      sub_1B7FC8DA4(&v87, &v75);

      sub_1B7FCAD28(&v87);
      if (v48)
      {
        goto LABEL_17;
      }

      ++v17;
      sub_1B7FF3FF0(v13, type metadata accessor for Friend);
      if (a3 == v17)
      {
        goto LABEL_13;
      }
    }

    sub_1B7FC8DA4(&v87, &v75);

    sub_1B7FCAD28(&v87);
LABEL_17:

    v54 = v70;
    sub_1B7FE8124(v13, v70);
    v55 = v71;
    sub_1B7FE8124(v54, v71);
    v56 = *(v55 + 56);
    if (*(v56 + 16) && (v57 = sub_1B7FDA32C(v74), (v58 & 1) != 0))
    {
      v59 = v57;
      v60 = *(v56 + 56);
      v61 = sub_1B80C8E2C();
      v62 = *(v61 - 8);
      v63 = v62;
      v64 = v60 + *(v62 + 72) * v59;
      v65 = v73;
      (*(v62 + 16))(v73, v64, v61);
      (*(v63 + 56))(v65, 0, 1, v61);
    }

    else
    {
      v66 = sub_1B80C8E2C();
      (*(*(v66 - 8) + 56))(v73, 1, 1, v66);
    }

    return sub_1B7FF3FF0(v55, type metadata accessor for Friend);
  }

  else
  {
LABEL_13:

    v49 = sub_1B80C8FEC();
    v50 = sub_1B80C941C();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_1B7FB5000, v49, v50, "Trying to get cached offer expiration for handle that is not a follower, returning nil", v51, 2u);
      MEMORY[0x1B8CB8970](v51, -1, -1);
    }

    v52 = sub_1B80C8E2C();
    return (*(*(v52 - 8) + 56))(v73, 1, 1, v52);
  }
}

uint64_t sub_1B7FF1014()
{
  v1 = v0[7];
  v14[3] = _s18LocationConnectionCMa(0);
  v14[4] = &off_1F2FF65B0;
  v14[0] = v1;
  v2 = v0[5];
  v15[3] = _s20FriendshipConnectionCMa(0);
  v15[4] = &off_1F2FF6440;
  v15[0] = v2;
  v3 = v0[6];
  v16[3] = _s18SettingsConnectionCMa(0);
  v16[4] = &off_1F2FF6520;
  v16[0] = v3;
  v4 = v0[4];
  v17[3] = _s15FenceConnectionCMa(0);
  v17[4] = &off_1F2FFA948;
  v17[0] = v4;

  sub_1B7FF40E8(v14, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F78, &qword_1B80D26E0);
  if ((swift_dynamicCast() & 1) != 0 && (v5 = v13, , v5))
  {
    v6 = v14;
  }

  else
  {
    v6 = v15;
    sub_1B7FF40E8(v15, v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F78, &qword_1B80D26E0);
    if ((swift_dynamicCast() & 1) == 0 || (v7 = v13, , !v7))
    {
      v6 = v16;
      sub_1B7FF40E8(v16, v12);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F78, &qword_1B80D26E0);
      if ((swift_dynamicCast() & 1) == 0 || (v8 = v13, , !v8))
      {
        v6 = v17;
        sub_1B7FF40E8(v17, v12);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F78, &qword_1B80D26E0);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_13;
        }

        v9 = v13;

        if (!v9)
        {
          goto LABEL_13;
        }
      }
    }
  }

  sub_1B7FF40E8(v6, v12);
  if ((swift_dynamicCast() & 1) == 0 || (v10 = v13) == 0)
  {
    __break(1u);
LABEL_13:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F78, &qword_1B80D26E0);
    v10 = 0;
  }

  swift_arrayDestroy();
  return v10;
}

uint64_t sub_1B7FF12A4()
{
  v1 = v0[7];
  v14[3] = _s18LocationConnectionCMa(0);
  v14[4] = &off_1F2FF65B0;
  v14[0] = v1;
  v2 = v0[5];
  v15[3] = _s20FriendshipConnectionCMa(0);
  v15[4] = &off_1F2FF6440;
  v15[0] = v2;
  v3 = v0[6];
  v16[3] = _s18SettingsConnectionCMa(0);
  v16[4] = &off_1F2FF6520;
  v16[0] = v3;
  v4 = v0[4];
  v17[3] = _s15FenceConnectionCMa(0);
  v17[4] = &off_1F2FFA948;
  v17[0] = v4;

  sub_1B7FF40E8(v14, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F78, &qword_1B80D26E0);
  if ((swift_dynamicCast() & 1) != 0 && (v5 = v13, , v5))
  {
    v6 = v14;
  }

  else
  {
    v6 = v15;
    sub_1B7FF40E8(v15, v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F78, &qword_1B80D26E0);
    if ((swift_dynamicCast() & 1) == 0 || (v7 = v13, , !v7))
    {
      v6 = v16;
      sub_1B7FF40E8(v16, v12);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F78, &qword_1B80D26E0);
      if ((swift_dynamicCast() & 1) == 0 || (v8 = v13, , !v8))
      {
        v6 = v17;
        sub_1B7FF40E8(v17, v12);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F78, &qword_1B80D26E0);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_13;
        }

        v9 = v13;

        if (!v9)
        {
          goto LABEL_13;
        }
      }
    }
  }

  sub_1B7FF40E8(v6, v12);
  if ((swift_dynamicCast() & 1) == 0 || (v10 = v13) == 0)
  {
    __break(1u);
LABEL_13:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F78, &qword_1B80D26E0);
    v10 = 0;
  }

  swift_arrayDestroy();
  return v10;
}

uint64_t sub_1B7FF1534(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA65FA0, &unk_1B80D2610);
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v4 = type metadata accessor for Friend(0);
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA66000, &unk_1B80D2630);
  v3[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B7FF1698, v2, 0);
}

uint64_t sub_1B7FF1698(uint64_t a1)
{
  *(v1 + 136) = sub_1B7FF414C();
  v2 = swift_task_alloc();
  *(v1 + 144) = v2;
  *v2 = v1;
  v2[1] = sub_1B7FF1784;

  return MEMORY[0x1EEE6DDE0]();
}

uint64_t sub_1B7FF1784()
{
  v1 = *(*v0 + 56);

  return MEMORY[0x1EEE6DFA0](sub_1B7FF1894, v1, 0);
}

uint64_t sub_1B7FF1894()
{
  v1 = v0[7];
  v2 = OBJC_IVAR____TtCC12FindMyLocate7Session20FriendshipConnection__friendsWithPrettyName;
  v0[19] = OBJC_IVAR____TtCC12FindMyLocate7Session20FriendshipConnection__friendsWithPrettyName;
  swift_beginAccess();
  v0[20] = *(v1 + v2);
  if ()
  {

    v3 = swift_task_alloc();
    v0[23] = v3;
    *v3 = v0;
    v3[1] = sub_1B7FF1D58;

    return MEMORY[0x1EEE6DDE0]();
  }

  else
  {
    v4 = swift_task_alloc();
    v0[21] = v4;
    *v4 = v0;
    v4[1] = sub_1B7FF1A20;

    return sub_1B7FE8BC0(&unk_1F2FF94E8);
  }
}

uint64_t sub_1B7FF1A20(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {

    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    v8 = *(v4 + 56);
    *(v4 + 176) = a1;

    return MEMORY[0x1EEE6DFA0](sub_1B7FF1BC0, v8, 0);
  }
}

uint64_t sub_1B7FF1BC0()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[7];
  *(v3 + v0[19]) = v0[22];

  v4 = sub_1B80C92CC();
  (*(*(v4 - 8) + 56))(v1, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = v3;
  v5[3] = v2;
  v5[4] = v3;
  swift_retain_n();
  sub_1B80A4870(0, 0, v1, &unk_1B80D2700, v5);

  v6 = swift_task_alloc();
  v0[23] = v6;
  *v6 = v0;
  v6[1] = sub_1B7FF1D58;

  return MEMORY[0x1EEE6DDE0]();
}

uint64_t sub_1B7FF1D58()
{
  v1 = *(*v0 + 56);

  return MEMORY[0x1EEE6DFA0](sub_1B7FF1E68, v1, 0);
}

void sub_1B7FF1E68()
{
  *(v0 + 192) = *(*(v0 + 56) + *(v0 + 152));

  if (!v1)
  {
    v4 = MEMORY[0x1E69E7CC0];
LABEL_29:

    v29 = *(v0 + 8);

    v29(v4);
    return;
  }

  v2 = *(v1 + 16);
  *(v0 + 200) = v2;
  if (!v2)
  {
    v4 = MEMORY[0x1E69E7CC0];
LABEL_28:

    goto LABEL_29;
  }

  v3 = 0;
  *(v0 + 248) = *(*(v0 + 88) + 80);
  v4 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    *(v0 + 208) = v3;
    *(v0 + 216) = v4;
    v5 = *(v0 + 192);
    if (v3 >= *(v5 + 16))
    {
      __break(1u);
      return;
    }

    v6 = *(v0 + 120);
    v7 = v5 + ((*(v0 + 248) + 32) & ~*(v0 + 248));
    v8 = *(*(v0 + 88) + 72);
    *(v0 + 224) = v8;
    sub_1B7FF4050(v7 + v8 * v3, v6, type metadata accessor for Friend);
    if (sub_1B7FBB9C4())
    {
      break;
    }

    (*(*(v0 + 88) + 56))(*(v0 + 72), 1, 1, *(v0 + 80));
    v9 = *(v0 + 72);
    if ((*(*(v0 + 88) + 48))(v9, 1, *(v0 + 80)) == 1)
    {
      sub_1B7FB86D4(v9, &unk_1EBA65FA0, &unk_1B80D2610);
    }

    else
    {
      v10 = *(v0 + 112);
      v11 = *(v0 + 40);
      sub_1B7FE8124(v9, v10);
      if (v11(v10))
      {
        sub_1B7FF4050(*(v0 + 112), *(v0 + 104), type metadata accessor for Friend);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v4 = *(v0 + 216);
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v4 = sub_1B807DA7C(0, v4[2] + 1, 1, *(v0 + 216));
        }

        v14 = v4[2];
        v13 = v4[3];
        if (v14 >= v13 >> 1)
        {
          v4 = sub_1B807DA7C((v13 > 1), v14 + 1, 1, v4);
        }

        v15 = *(v0 + 224);
        v16 = *(v0 + 120);
        v17 = *(v0 + 104);
        v18 = (*(v0 + 248) + 32) & ~*(v0 + 248);
        sub_1B7FF3FF0(*(v0 + 112), type metadata accessor for Friend);
        sub_1B7FF3FF0(v16, type metadata accessor for Friend);
        v4[2] = v14 + 1;
        sub_1B7FE8124(v17, v4 + v18 + v15 * v14);
        goto LABEL_5;
      }

      sub_1B7FF3FF0(*(v0 + 112), type metadata accessor for Friend);
    }

    if ((*(v0 + 40))(*(v0 + 120)))
    {
      sub_1B7FF4050(*(v0 + 120), *(v0 + 96), type metadata accessor for Friend);
      v19 = swift_isUniquelyReferenced_nonNull_native();
      v4 = *(v0 + 216);
      if ((v19 & 1) == 0)
      {
        v4 = sub_1B807DA7C(0, v4[2] + 1, 1, *(v0 + 216));
      }

      v21 = v4[2];
      v20 = v4[3];
      if (v21 >= v20 >> 1)
      {
        v4 = sub_1B807DA7C((v20 > 1), v21 + 1, 1, v4);
      }

      v22 = *(v0 + 224);
      v23 = *(v0 + 96);
      v24 = (*(v0 + 248) + 32) & ~*(v0 + 248);
      sub_1B7FF3FF0(*(v0 + 120), type metadata accessor for Friend);
      v4[2] = v21 + 1;
      sub_1B7FE8124(v23, v4 + v24 + v22 * v21);
    }

    else
    {
      sub_1B7FF3FF0(*(v0 + 120), type metadata accessor for Friend);
      v4 = *(v0 + 216);
    }

LABEL_5:
    v3 = *(v0 + 208) + 1;
    if (v3 == *(v0 + 200))
    {
      goto LABEL_28;
    }
  }

  v25 = *(v0 + 160);
  v26 = swift_task_alloc();
  *(v0 + 232) = v26;
  *v26 = v0;
  v26[1] = sub_1B7FF2310;
  v27 = *(v0 + 120);
  v28 = *(v0 + 64);

  sub_1B7FF47C0(v28, v27, v25 != 0);
}

uint64_t sub_1B7FF2310()
{
  v2 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    v3 = *(v2 + 56);

    v4 = sub_1B7FF289C;
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 56);
    v4 = sub_1B7FF2438;
  }

  return MEMORY[0x1EEE6DFA0](v4, v5, 0);
}

uint64_t sub_1B7FF2438()
{
  sub_1B7FC8F2C(*(v0 + 64), *(v0 + 72), &unk_1EBA65FA0, &unk_1B80D2610);
  while (1)
  {
    v1 = *(v0 + 72);
    if ((*(*(v0 + 88) + 48))(v1, 1, *(v0 + 80)) == 1)
    {
      sub_1B7FB86D4(v1, &unk_1EBA65FA0, &unk_1B80D2610);
      goto LABEL_11;
    }

    v2 = *(v0 + 112);
    v3 = *(v0 + 40);
    sub_1B7FE8124(v1, v2);
    if ((v3(v2) & 1) == 0)
    {
      sub_1B7FF3FF0(*(v0 + 112), type metadata accessor for Friend);
LABEL_11:
      if ((*(v0 + 40))(*(v0 + 120)))
      {
        sub_1B7FF4050(*(v0 + 120), *(v0 + 96), type metadata accessor for Friend);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v5 = *(v0 + 216);
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v5 = sub_1B807DA7C(0, v5[2] + 1, 1, *(v0 + 216));
        }

        v15 = v5[2];
        v14 = v5[3];
        if (v15 >= v14 >> 1)
        {
          v5 = sub_1B807DA7C((v14 > 1), v15 + 1, 1, v5);
        }

        v16 = *(v0 + 224);
        v17 = *(v0 + 96);
        v18 = (*(v0 + 248) + 32) & ~*(v0 + 248);
        sub_1B7FF3FF0(*(v0 + 120), type metadata accessor for Friend);
        v5[2] = v15 + 1;
        result = sub_1B7FE8124(v17, v5 + v18 + v16 * v15);
      }

      else
      {
        result = sub_1B7FF3FF0(*(v0 + 120), type metadata accessor for Friend);
        v5 = *(v0 + 216);
      }

      goto LABEL_18;
    }

    sub_1B7FF4050(*(v0 + 112), *(v0 + 104), type metadata accessor for Friend);
    v4 = swift_isUniquelyReferenced_nonNull_native();
    v5 = *(v0 + 216);
    if ((v4 & 1) == 0)
    {
      v5 = sub_1B807DA7C(0, v5[2] + 1, 1, *(v0 + 216));
    }

    v7 = v5[2];
    v6 = v5[3];
    if (v7 >= v6 >> 1)
    {
      v5 = sub_1B807DA7C((v6 > 1), v7 + 1, 1, v5);
    }

    v8 = *(v0 + 224);
    v9 = *(v0 + 120);
    v10 = *(v0 + 104);
    v11 = (*(v0 + 248) + 32) & ~*(v0 + 248);
    sub_1B7FF3FF0(*(v0 + 112), type metadata accessor for Friend);
    sub_1B7FF3FF0(v9, type metadata accessor for Friend);
    v5[2] = v7 + 1;
    result = sub_1B7FE8124(v10, v5 + v11 + v8 * v7);
LABEL_18:
    v19 = *(v0 + 208) + 1;
    if (v19 == *(v0 + 200))
    {
      break;
    }

    *(v0 + 208) = v19;
    *(v0 + 216) = v5;
    v20 = *(v0 + 192);
    if (v19 >= *(v20 + 16))
    {
      __break(1u);
      return result;
    }

    v21 = *(v0 + 120);
    v22 = v20 + ((*(v0 + 248) + 32) & ~*(v0 + 248));
    v23 = *(*(v0 + 88) + 72);
    *(v0 + 224) = v23;
    sub_1B7FF4050(v22 + v23 * v19, v21, type metadata accessor for Friend);
    if (sub_1B7FBB9C4())
    {
      v25 = *(v0 + 160);
      v26 = swift_task_alloc();
      *(v0 + 232) = v26;
      *v26 = v0;
      v26[1] = sub_1B7FF2310;
      v27 = *(v0 + 120);
      v28 = *(v0 + 64);

      return sub_1B7FF47C0(v28, v27, v25 != 0);
    }

    (*(*(v0 + 88) + 56))(*(v0 + 72), 1, 1, *(v0 + 80));
  }

  v24 = *(v0 + 8);

  return v24(v5);
}

uint64_t sub_1B7FF289C()
{
  v1 = *(v0 + 120);

  sub_1B7FF3FF0(v1, type metadata accessor for Friend);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1B7FF297C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1B7FBA3EC;

  return sub_1B7FF55EC();
}

uint64_t sub_1B7FF2A0C(uint64_t a1, _OWORD *a2)
{
  *(v3 + 192) = a1;
  *(v3 + 200) = v2;
  *(v3 + 208) = *v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F90, &qword_1B80D2750);
  *(v3 + 216) = v5;
  *(v3 + 224) = *(v5 - 8);
  *(v3 + 232) = swift_task_alloc();
  v6 = a2[9];
  *(v3 + 144) = a2[8];
  *(v3 + 160) = v6;
  *(v3 + 176) = a2[10];
  v7 = a2[5];
  *(v3 + 80) = a2[4];
  *(v3 + 96) = v7;
  v8 = a2[7];
  *(v3 + 112) = a2[6];
  *(v3 + 128) = v8;
  v9 = a2[1];
  *(v3 + 16) = *a2;
  *(v3 + 32) = v9;
  v10 = a2[3];
  *(v3 + 48) = a2[2];
  *(v3 + 64) = v10;

  return MEMORY[0x1EEE6DFA0](sub_1B7FF2B34, v2, 0);
}

uint64_t sub_1B7FF2B34()
{
  v1 = v0[26];
  v2 = v0[25];
  (*(v0[28] + 104))(v0[29], *MEMORY[0x1E69E8650], v0[27]);
  sub_1B80C934C();
  v3 = swift_task_alloc();
  v0[30] = v3;
  v3[2] = v2;
  v3[3] = v0 + 2;
  v3[4] = v1;
  v4 = swift_task_alloc();
  v0[31] = v4;
  *v4 = v0;
  v4[1] = sub_1B7FF2C88;
  v5 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE04418](v4, 0xD000000000000015, 0x80000001B80CC4C0, sub_1B7FF45AC, v3, v5);
}

uint64_t sub_1B7FF2C88()
{
  v2 = *v1;
  *(*v1 + 256) = v0;

  if (v0)
  {
    v3 = *(v2 + 200);
    v4 = sub_1B7FF2E14;
  }

  else
  {
    v5 = *(v2 + 200);

    v4 = sub_1B7FF2DB0;
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1B7FF2DB0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B7FF2E14()
{
  v1 = *(v0 + 192);

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F98, &qword_1B80D2758);
  (*(*(v2 - 8) + 8))(v1, v2);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1B7FF2EC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F20, &qword_1B80D2628);
  v5[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B7FF2F68, a4, 0);
}

uint64_t sub_1B7FF2F68()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F10, &qword_1B80D2558);
  v5 = *(v4 - 8);
  (*(v5 + 16))(v2, v1, v4);
  (*(v5 + 56))(v2, 0, 1, v4);
  v6 = OBJC_IVAR____TtCC12FindMyLocate7Session20FriendshipConnection_rangingContinuation;
  swift_beginAccess();
  sub_1B7FF450C(v2, v3 + v6, &qword_1EBA65F20, &qword_1B80D2628);
  swift_endAccess();

  v7 = v0[1];

  return v7();
}

uint64_t sub_1B7FF30A4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F90, &qword_1B80D2750);
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B7FF3198, v1, 0);
}

uint64_t sub_1B7FF3198()
{
  v1 = v0[4];
  v2 = v0[3];
  (*(v0[6] + 104))(v0[7], *MEMORY[0x1E69E8650], v0[5]);
  sub_1B80C934C();
  v3 = swift_task_alloc();
  v0[8] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_1B7FF32DC;
  v5 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE04418](v4, 0xD000000000000013, 0x80000001B80CC4A0, sub_1B7FF4400, v3, v5);
}

uint64_t sub_1B7FF32DC()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = *(v2 + 24);
    v4 = sub_1B7FF3404;
  }

  else
  {
    v5 = *(v2 + 24);

    v4 = sub_1B7FF47B0;
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1B7FF3404()
{
  v1 = *(v0 + 16);

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F98, &qword_1B80D2758);
  (*(*(v2 - 8) + 8))(v1, v2);

  v3 = *(v0 + 8);

  return v3();
}

double sub_1B7FF34B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F10, &qword_1B80D2558);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA66000, &unk_1B80D2630);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v19 - v12;
  v14 = sub_1B80C92CC();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  (*(v8 + 16))(v10, a1, v7);
  v15 = sub_1B7FF414C();
  v16 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = a2;
  *(v17 + 3) = v15;
  *(v17 + 4) = a2;
  (*(v8 + 32))(&v17[v16], v10, v7);
  swift_retain_n();
  sub_1B80A1D3C(0, 0, v13, a4, v17);

  return result;
}

uint64_t sub_1B7FF36AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F20, &qword_1B80D2628);
  v5[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B7FF47B4, a4, 0);
}

uint64_t sub_1B7FF374C(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F10, &qword_1B80D2558);
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F20, &qword_1B80D2628);
  v2[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F48, &qword_1B80D2698);
  v2[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B7FF3888, v1, 0);
}

uint64_t sub_1B7FF3888()
{
  if (qword_1ED8DD6D0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 56);
  v2 = sub_1B80C900C();
  __swift_project_value_buffer(v2, qword_1ED8DDE78);
  v3 = v1;
  v4 = sub_1B80C8FEC();
  v5 = sub_1B80C941C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 56);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&dword_1B7FB5000, v4, v5, "discovered: %@", v7, 0xCu);
    sub_1B7FB86D4(v8, &qword_1EBA65EE8, &qword_1B80D2478);
    MEMORY[0x1B8CB8970](v8, -1, -1);
    MEMORY[0x1B8CB8970](v7, -1, -1);
  }

  v10 = *(v0 + 96);
  v11 = *(v0 + 72);
  v12 = *(v0 + 80);
  v13 = *(v0 + 64);

  v14 = OBJC_IVAR____TtCC12FindMyLocate7Session20FriendshipConnection_rangingContinuation;
  swift_beginAccess();
  sub_1B7FB8448(v13 + v14, v10, &qword_1EBA65F20, &qword_1B80D2628);
  if ((*(v12 + 48))(v10, 1, v11))
  {
    sub_1B7FB86D4(*(v0 + 96), &qword_1EBA65F20, &qword_1B80D2628);
    v15 = 1;
  }

  else
  {
    v16 = *(v0 + 96);
    v18 = *(v0 + 80);
    v17 = *(v0 + 88);
    v19 = *(v0 + 72);
    v20 = *(v0 + 56);
    (*(v18 + 16))(v17, v16, v19);
    sub_1B7FB86D4(v16, &qword_1EBA65F20, &qword_1B80D2628);
    *(v0 + 40) = v20;
    *(v0 + 48) = 0;
    v21 = v20;
    sub_1B80C92EC();
    (*(v18 + 8))(v17, v19);
    v15 = 0;
  }

  v22 = *(v0 + 104);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F50, &qword_1B80D26A0);
  (*(*(v23 - 8) + 56))(v22, v15, 1, v23);
  sub_1B7FB86D4(v22, &qword_1EBA65F48, &qword_1B80D2698);

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_1B7FF3B98(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F10, &qword_1B80D2558);
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F20, &qword_1B80D2628);
  v2[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F48, &qword_1B80D2698);
  v2[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B7FF3CD4, v1, 0);
}

uint64_t sub_1B7FF3CD4()
{
  if (qword_1ED8DD6D0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 56);
  v2 = sub_1B80C900C();
  __swift_project_value_buffer(v2, qword_1ED8DDE78);
  v3 = v1;
  v4 = sub_1B80C8FEC();
  v5 = sub_1B80C941C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 56);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&dword_1B7FB5000, v4, v5, "updated: %@", v7, 0xCu);
    sub_1B7FB86D4(v8, &qword_1EBA65EE8, &qword_1B80D2478);
    MEMORY[0x1B8CB8970](v8, -1, -1);
    MEMORY[0x1B8CB8970](v7, -1, -1);
  }

  v10 = *(v0 + 96);
  v11 = *(v0 + 72);
  v12 = *(v0 + 80);
  v13 = *(v0 + 64);

  v14 = OBJC_IVAR____TtCC12FindMyLocate7Session20FriendshipConnection_rangingContinuation;
  swift_beginAccess();
  sub_1B7FB8448(v13 + v14, v10, &qword_1EBA65F20, &qword_1B80D2628);
  if ((*(v12 + 48))(v10, 1, v11))
  {
    sub_1B7FB86D4(*(v0 + 96), &qword_1EBA65F20, &qword_1B80D2628);
    v15 = 1;
  }

  else
  {
    v16 = *(v0 + 96);
    v18 = *(v0 + 80);
    v17 = *(v0 + 88);
    v19 = *(v0 + 72);
    v20 = *(v0 + 56);
    (*(v18 + 16))(v17, v16, v19);
    sub_1B7FB86D4(v16, &qword_1EBA65F20, &qword_1B80D2628);
    *(v0 + 40) = v20;
    *(v0 + 48) = 1;
    v21 = v20;
    sub_1B80C92EC();
    (*(v18 + 8))(v17, v19);
    v15 = 0;
  }

  v22 = *(v0 + 104);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F50, &qword_1B80D26A0);
  (*(*(v23 - 8) + 56))(v22, v15, 1, v23);
  sub_1B7FB86D4(v22, &qword_1EBA65F48, &qword_1B80D2698);

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_1B7FF3FF0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B7FF4050(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B7FF40E8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_1B7FF414C()
{
  result = qword_1ED8DD560;
  if (!qword_1ED8DD560)
  {
    _s20FriendshipConnectionCMa(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DD560);
  }

  return result;
}

uint64_t sub_1B7FF41AC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1B7FBA3EC;

  return sub_1B7FF297C();
}

uint64_t sub_1B7FF4280(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F08, &qword_1B80D2550) - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + 32);
  v10 = *(v1 + 40);
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1B7FC253C;

  return sub_1B7FEA9C0(a1, v7, v8, v9, v10, v1 + v6);
}

uint64_t sub_1B7FF4408(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F10, &qword_1B80D2558) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1B7FC253C;

  return sub_1B7FF36AC(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1B7FF450C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t objectdestroy_31Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F10, &qword_1B80D2558);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1B7FF4690(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F10, &qword_1B80D2558) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1B7FBA3EC;

  return sub_1B7FF2EC8(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1B7FF47C0(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 936) = v3;
  *(v4 + 984) = a3;
  *(v4 + 928) = a2;
  *(v4 + 920) = a1;
  v5 = type metadata accessor for Friend(0);
  *(v4 + 944) = v5;
  *(v4 + 952) = *(v5 - 8);
  *(v4 + 960) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B7FF488C, v3, 0);
}

uint64_t sub_1B7FF488C()
{
  v22 = v0;
  v1 = *(v0 + 984);
  v2 = *(v0 + 928);
  v4 = v2[1];
  v3 = v2[2];
  *(v0 + 16) = *v2;
  *(v0 + 32) = v4;
  *(v0 + 48) = v3;
  v5 = v2[6];
  v7 = v2[3];
  v6 = v2[4];
  *(v0 + 96) = v2[5];
  *(v0 + 112) = v5;
  *(v0 + 64) = v7;
  *(v0 + 80) = v6;
  v8 = v2[10];
  v10 = v2[7];
  v9 = v2[8];
  *(v0 + 160) = v2[9];
  *(v0 + 176) = v8;
  *(v0 + 128) = v10;
  *(v0 + 144) = v9;
  if (v1 == 1)
  {
    if (qword_1ED8DD6D0 != -1)
    {
      swift_once();
    }

    v11 = sub_1B80C900C();
    __swift_project_value_buffer(v11, qword_1ED8DDE78);
    sub_1B7FC8DA4(v0 + 16, v0 + 192);
    v12 = sub_1B80C8FEC();
    v13 = sub_1B80C941C();
    sub_1B7FCAD28(v0 + 16);
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v21 = v15;
      *v14 = 141558275;
      *(v14 + 4) = 1752392040;
      *(v14 + 12) = 2081;
      *(v14 + 14) = sub_1B7FB84FC(*(v0 + 16), *(v0 + 24), &v21);
      _os_log_impl(&dword_1B7FB5000, v12, v13, "Query Friend:%{private,mask.hash}s's prettyName through cache", v14, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x1B8CB8970](v15, -1, -1);
      MEMORY[0x1B8CB8970](v14, -1, -1);
    }

    sub_1B7FF414C();
    v16 = swift_task_alloc();
    *(v0 + 968) = v16;
    *v16 = v0;
    v16[1] = sub_1B7FF4B58;

    return MEMORY[0x1EEE6DDE0]();
  }

  else
  {
    v17 = swift_task_alloc();
    *(v0 + 976) = v17;
    *v17 = v0;
    v17[1] = sub_1B7FF4F08;
    v18 = *(v0 + 928);
    v19 = *(v0 + 920);

    return sub_1B7FF5E2C(v19, v18);
  }
}

uint64_t sub_1B7FF4B58()
{
  v1 = *(*v0 + 936);

  return MEMORY[0x1EEE6DFA0](sub_1B7FF4C68, v1, 0);
}

void sub_1B7FF4C68()
{
  v1 = *(v0 + 936);
  v2 = OBJC_IVAR____TtCC12FindMyLocate7Session20FriendshipConnection__friendsWithPrettyName;
  swift_beginAccess();
  v3 = *(v1 + v2);

  if (!v3)
  {
    (*(*(v0 + 952) + 56))(*(v0 + 920), 1, 1, *(v0 + 944));
    goto LABEL_13;
  }

  v4 = *(v3 + 16);
  if (!v4)
  {
LABEL_9:
    v21 = *(v0 + 952);
    v22 = *(v0 + 944);
    v23 = *(v0 + 920);

    (*(v21 + 56))(v23, 1, 1, v22);
LABEL_13:

    v28 = *(v0 + 8);

    v28();
    return;
  }

  v5 = 0;
  v6 = *(v0 + 952);
  while (v5 < *(v3 + 16))
  {
    v7 = *(v0 + 960);
    sub_1B7FF8820(v3 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v5, v7, type metadata accessor for Friend);
    v9 = v7[1];
    v8 = v7[2];
    *(v0 + 368) = *v7;
    *(v0 + 384) = v9;
    *(v0 + 400) = v8;
    v10 = v7[6];
    v12 = v7[3];
    v11 = v7[4];
    *(v0 + 448) = v7[5];
    *(v0 + 464) = v10;
    *(v0 + 416) = v12;
    *(v0 + 432) = v11;
    v13 = v7[10];
    v15 = v7[7];
    v14 = v7[8];
    *(v0 + 512) = v7[9];
    *(v0 + 528) = v13;
    *(v0 + 480) = v15;
    *(v0 + 496) = v14;
    v16 = sub_1B80C90FC();
    v18 = v17;
    if (v16 == sub_1B80C90FC() && v18 == v19)
    {
      sub_1B7FC8DA4(v0 + 368, v0 + 720);

      sub_1B7FCAD28(v0 + 368);
LABEL_12:
      v24 = *(v0 + 960);
      v25 = *(v0 + 952);
      v26 = *(v0 + 944);
      v27 = *(v0 + 920);

      sub_1B7FE8124(v24, v27);
      (*(v25 + 56))(v27, 0, 1, v26);
      goto LABEL_13;
    }

    v20 = sub_1B80C981C();
    sub_1B7FC8DA4(v0 + 368, v0 + 544);

    sub_1B7FCAD28(v0 + 368);
    if (v20)
    {
      goto LABEL_12;
    }

    ++v5;
    sub_1B7FF87C0(*(v0 + 960), type metadata accessor for Friend);
    if (v4 == v5)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_1B7FF4F08()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1B7FF5020(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA65FA0, &unk_1B80D2610);
  v2[8] = swift_task_alloc();
  type metadata accessor for Friend(0);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v2[11] = type metadata accessor for FriendStreamChange(0);
  v2[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B7FF5124, v1, 0);
}

uint64_t sub_1B7FF5124(__n128 a1)
{
  v2 = v1[12];
  v3 = v1[6];
  *(v1[7] + OBJC_IVAR____TtCC12FindMyLocate7Session20FriendshipConnection_isSyncingContact) = 1;
  sub_1B7FF8820(v3, v2, type metadata accessor for FriendStreamChange);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v5 = v1[12];
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1B7FE8124(v5, v1[9]);
      v7 = sub_1B7FE5C40((v1 + 2));
      if (*v6)
      {
        v8 = v6;
        v9 = v1[9];
        v10 = swift_task_alloc();
        *(v10 + 16) = v9;
        result = sub_1B7FF8190(sub_1B7FF8BB0, v10);
        v12 = *(*v8 + 16);
        if (v12 < result)
        {
          __break(1u);
          return result;
        }

        sub_1B7FF8700(result, v12);
      }

      (v7)(v1 + 2, 0);
      v5 = v1[9];
      v13 = type metadata accessor for Friend;
    }

    else
    {
      v13 = type metadata accessor for FriendStreamChange;
    }

    sub_1B7FF87C0(v5, v13);
    sub_1B7FE60A0();

    v17 = v1[1];

    return v17();
  }

  else
  {
    sub_1B7FE8124(v5, v1[10]);
    v14 = swift_task_alloc();
    v1[13] = v14;
    *v14 = v1;
    v14[1] = sub_1B7FF5354;
    v15 = v1[10];
    v16 = v1[8];

    return sub_1B7FF5E2C(v16, v15);
  }
}

uint64_t sub_1B7FF5354()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = *(v2 + 56);
    v4 = sub_1B7FF5540;
  }

  else
  {
    v5 = *(v2 + 56);
    sub_1B7FB86D4(*(v2 + 64), &unk_1EBA65FA0, &unk_1B80D2610);
    v4 = sub_1B7FF5488;
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1B7FF5488()
{
  sub_1B7FF87C0(*(v0 + 80), type metadata accessor for Friend);
  sub_1B7FE60A0();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B7FF5540()
{
  sub_1B7FF87C0(*(v0 + 80), type metadata accessor for Friend);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B7FF55EC()
{
  v1[5] = v0;
  v1[6] = *v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA65FE0, &qword_1B80D2720);
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F88, &qword_1B80D2728);
  v1[10] = v3;
  v1[11] = *(v3 - 8);
  v1[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA65FF0, &qword_1B80D2620);
  v1[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B7FF5780, 0, 0);
}

uint64_t sub_1B7FF5780()
{
  if (qword_1ED8DD6D0 != -1)
  {
    swift_once();
  }

  v1 = sub_1B80C900C();
  __swift_project_value_buffer(v1, qword_1ED8DDE78);
  v2 = sub_1B80C8FEC();
  v3 = sub_1B80C941C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1B7FB5000, v2, v3, "Query Friend  start an internal friend update stream to listen for friendship changes and update the cache as needed", v4, 2u);
    MEMORY[0x1B8CB8970](v4, -1, -1);
  }

  v5 = *(v0 + 40);

  return MEMORY[0x1EEE6DFA0](sub_1B7FF58A0, v5, 0);
}

uint64_t sub_1B7FF58A0()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 40);
  v3 = OBJC_IVAR____TtCC12FindMyLocate7Session20FriendshipConnection_internalFollowingContinuation;
  swift_beginAccess();
  sub_1B7FB8448(v2 + v3, v1, &unk_1EBA65FF0, &qword_1B80D2620);

  return MEMORY[0x1EEE6DFA0](sub_1B7FF594C, 0, 0);
}

uint64_t sub_1B7FF594C()
{
  v1 = v0[13];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F08, &qword_1B80D2550);
  v3 = (*(*(v2 - 8) + 48))(v1, 1, v2);
  sub_1B7FB86D4(v1, &unk_1EBA65FF0, &qword_1B80D2620);
  if (v3 == 1)
  {
    v5 = v0[11];
    v4 = v0[12];
    v7 = v0[9];
    v6 = v0[10];
    v8 = v0[7];
    v9 = v0[8];
    v10 = v0[5];
    type metadata accessor for FriendStreamChange(0);
    (*(v9 + 104))(v7, *MEMORY[0x1E69E8650], v8);
    sub_1B80C934C();
    (*(v5 + 8))(v4, v6);

    return MEMORY[0x1EEE6DFA0](sub_1B7FF5B14, v10, 0);
  }

  else
  {

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_1B7FF5B14()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = swift_task_alloc();
  v0[14] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[15] = v4;
  *v4 = v0;
  v4[1] = sub_1B7FF5C00;
  v5 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE04418](v4, 0xD000000000000014, 0x80000001B80CC480, sub_1B7FF4278, v3, v5);
}

uint64_t sub_1B7FF5C00()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = *(v2 + 40);
    v4 = sub_1B7FF5DA0;
  }

  else
  {
    v5 = *(v2 + 40);

    v4 = sub_1B7FF5D28;
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1B7FF5D28()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B7FF5DA0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B7FF5E2C(uint64_t a1, uint64_t a2)
{
  v3[32] = a2;
  v3[33] = v2;
  v3[31] = a1;
  v4 = sub_1B80C8E2C();
  v3[34] = v4;
  v3[35] = *(v4 - 8);
  v3[36] = swift_task_alloc();
  v5 = type metadata accessor for Friend(0);
  v3[37] = v5;
  v3[38] = *(v5 - 8);
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B7FF5F8C, v2, 0);
}

uint64_t sub_1B7FF5F8C()
{
  v131 = v0;
  v130[1] = *MEMORY[0x1E69E9840];
  if (qword_1ED8DD6D0 != -1)
  {
LABEL_38:
    swift_once();
  }

  v1 = v0[40];
  v2 = v0[32];
  v3 = sub_1B80C900C();
  v0[41] = __swift_project_value_buffer(v3, qword_1ED8DDE78);
  sub_1B7FF8820(v2, v1, type metadata accessor for Friend);
  v4 = sub_1B80C8FEC();
  v5 = sub_1B80C941C();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[40];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v130[0] = v9;
    *v8 = 141558275;
    *(v8 + 4) = 1752392040;
    *(v8 + 12) = 2081;
    v10 = *v7;
    v11 = v7[1];

    sub_1B7FF87C0(v7, type metadata accessor for Friend);
    v12 = sub_1B7FB84FC(v10, v11, v130);

    *(v8 + 14) = v12;
    _os_log_impl(&dword_1B7FB5000, v4, v5, "Query Friend:%{private,mask.hash}s through Contact", v8, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x1B8CB8970](v9, -1, -1);
    MEMORY[0x1B8CB8970](v8, -1, -1);
  }

  else
  {

    sub_1B7FF87C0(v7, type metadata accessor for Friend);
  }

  v13 = v0[32];
  v14 = *v13;
  v15 = v13[1];
  v0[24] = *v13;
  v0[25] = v15;
  v0[26] = 64;
  v0[27] = 0xE100000000000000;
  sub_1B7FB6CB8();
  v16 = sub_1B80C949C();
  v17 = objc_opt_self();
  v123 = v15;
  v125 = v14;
  if (v16)
  {
    v18 = sub_1B80C90AC();
    v19 = &selRef_predicateForContactsMatchingEmailAddress_;
  }

  else
  {
    v20 = objc_allocWithZone(MEMORY[0x1E695CF50]);
    v21 = sub_1B80C90AC();
    v18 = [v20 initWithStringValue_];

    v19 = &selRef_predicateForContactsMatchingPhoneNumber_;
  }

  v127 = [v17 *v19];
  v0[42] = v127;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65FB0, &unk_1B80D27B0);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1B80D2790;
  v23 = *MEMORY[0x1E695C410];
  v24 = *MEMORY[0x1E695C258];
  v25 = MEMORY[0x1E695C240];
  *(v22 + 32) = *MEMORY[0x1E695C410];
  *(v22 + 40) = v24;
  v26 = *v25;
  v27 = *MEMORY[0x1E695C230];
  *(v22 + 48) = *v25;
  *(v22 + 56) = v27;
  v28 = *MEMORY[0x1E695C2F0];
  v29 = *MEMORY[0x1E695C310];
  *(v22 + 64) = *MEMORY[0x1E695C2F0];
  *(v22 + 72) = v29;
  v30 = *MEMORY[0x1E695C208];
  v31 = *MEMORY[0x1E695C330];
  v32 = MEMORY[0x1E695C360];
  *(v22 + 80) = *MEMORY[0x1E695C208];
  *(v22 + 88) = v31;
  v33 = *v32;
  *(v22 + 96) = *v32;
  v0[28] = v22;
  v129 = v0;
  v34 = objc_opt_self();
  v35 = v23;
  v36 = v24;
  v37 = v26;
  v38 = v27;
  v39 = v28;
  v40 = v29;
  v41 = v30;
  v42 = v31;
  v43 = v33;
  v44 = v34;
  v0 = v129;
  v45 = [v44 descriptorForRequiredKeysForStyle_];
  MEMORY[0x1B8CB7AF0]();
  if (*((v0[28] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[28] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1B80C923C();
  }

  sub_1B80C925C();
  v46 = sub_1B7FE5BCC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65FB8, &qword_1B80D27C0);
  v47 = sub_1B80C91FC();

  v129[29] = 0;
  v48 = [v46 unifiedContactsMatchingPredicate:v127 keysToFetch:v47 error:v129 + 29];

  v49 = v129[29];
  if (v48)
  {
    sub_1B7FF8888();
    v50 = sub_1B80C921C();
    v51 = v49;

    if (v50 >> 62)
    {
      v52 = sub_1B80C963C();
      if (v52)
      {
LABEL_13:
        v53 = 0;
        while (1)
        {
          if ((v50 & 0xC000000000000001) != 0)
          {
            v54 = MEMORY[0x1B8CB7E40](v53, v50);
          }

          else
          {
            if (v53 >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_37;
            }

            v54 = *(v50 + 8 * v53 + 32);
          }

          v55 = v54;
          v129[43] = v54;
          v56 = v53 + 1;
          if (__OFADD__(v53, 1))
          {
            __break(1u);
LABEL_37:
            __break(1u);
            goto LABEL_38;
          }

          v57 = [v44 stringFromContact:v54 style:0];
          if (v57)
          {
            break;
          }

          ++v53;
          if (v56 == v52)
          {
            goto LABEL_40;
          }
        }

        v70 = v129[35];
        v69 = v129[36];
        v116 = v129[34];
        v71 = v129[32];
        v72 = v57;

        v128 = sub_1B80C90BC();
        v122 = v73;

        v74 = v71[7];
        v75 = v71[14];
        v76 = v71[21];
        v121 = v71[20];
        v77 = [v55 identifier];
        v78 = sub_1B80C90BC();
        v119 = v79;
        v120 = v78;

        v80 = v71[19];
        sub_1B7FCEC00(v125, v123);
        v118 = sub_1B80C90FC();
        v82 = v81;

        v126 = v76;

        v124 = v74;

        sub_1B80C8E1C();
        sub_1B80C8DDC();
        v84 = v83;
        (*(v70 + 8))(v69, v116);
        v85 = *(v80 + 16);
        if (v85)
        {
          v130[0] = MEMORY[0x1E69E7CC0];

          sub_1B7FCF988(0, v85, 0);
          v86 = v130[0];
          v87 = v80 + 40;
          do
          {
            v88 = sub_1B80C90FC();
            v130[0] = v86;
            v91 = *(v86 + 16);
            v90 = *(v86 + 24);
            if (v91 >= v90 >> 1)
            {
              v117 = v88;
              v93 = v89;
              sub_1B7FCF988((v90 > 1), v91 + 1, 1);
              v89 = v93;
              v88 = v117;
              v86 = v130[0];
            }

            *(v86 + 16) = v91 + 1;
            v92 = v86 + 16 * v91;
            *(v92 + 32) = v88;
            *(v92 + 40) = v89;
            v87 += 16;
            --v85;
          }

          while (v85);
        }

        else
        {

          v86 = MEMORY[0x1E69E7CC0];
        }

        v99 = v129[39];
        v100 = v129[37];
        v101 = v129[32];
        v102 = *(v101 + 176);
        sub_1B7FB8448(v101 + v100[10], v99 + v100[10], &unk_1EBA65FD0, &unk_1B80D1920);
        sub_1B7FB8448(v101 + v100[12], v99 + v100[12], &unk_1EBA65FD0, &unk_1B80D1920);
        v103 = *(v101 + v100[15]);
        sub_1B7FF88D4(v129 + 1);
        *(v99 + v100[11]) = 2;
        *v99 = v118;
        *(v99 + 8) = v82;
        *(v99 + 16) = v118;
        *(v99 + 24) = v82;
        *(v99 + 32) = 0;
        *(v99 + 40) = 0;
        *(v99 + 48) = 0;
        *(v99 + 56) = v124;
        *(v99 + 64) = floor(v84 * 1000.0);
        *(v99 + 72) = 0u;
        *(v99 + 88) = 0u;
        *(v99 + 104) = 1;
        *(v99 + 112) = v75;
        *(v99 + 120) = v128;
        *(v99 + 128) = v122;
        *(v99 + 136) = v120;
        *(v99 + 144) = v119;
        *(v99 + 152) = v86;
        *(v99 + 160) = v121;
        *(v99 + 168) = v126;
        *(v99 + 176) = v102;
        *(v99 + v100[14]) = 2;
        *(v99 + 177) = 0;
        *(v99 + v100[15]) = v103;
        v104 = (v99 + v100[13]);
        v105 = *(v129 + 1);
        v106 = *(v129 + 3);
        v104[1] = *(v129 + 2);
        v104[2] = v106;
        *v104 = v105;
        v107 = *(v129 + 4);
        v108 = *(v129 + 5);
        v109 = *(v129 + 7);
        v104[5] = *(v129 + 6);
        v104[6] = v109;
        v104[3] = v107;
        v104[4] = v108;
        v110 = *(v129 + 8);
        v111 = *(v129 + 9);
        v112 = *(v129 + 11);
        v104[9] = *(v129 + 10);
        v104[10] = v112;
        v104[7] = v110;
        v104[8] = v111;
        v113 = swift_task_alloc();
        v129[44] = v113;
        *v113 = v129;
        v113[1] = sub_1B7FF6AA0;
        v114 = v129[39];
        goto LABEL_41;
      }
    }

    else
    {
      v52 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v52)
      {
        goto LABEL_13;
      }
    }

LABEL_40:

    v115 = swift_task_alloc();
    v129[46] = v115;
    *v115 = v129;
    v115[1] = sub_1B7FF6CF0;
    v114 = v129[32];
LABEL_41:

    return sub_1B7FF73B8(v114);
  }

  v58 = v49;
  v59 = sub_1B80C8D0C();

  swift_willThrow();
  v60 = v59;
  v61 = sub_1B80C8FEC();
  v62 = sub_1B80C93FC();

  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v130[0] = v64;
    *v63 = 136446210;
    v129[30] = v59;
    v65 = v59;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65FC0, &unk_1B80D2430);
    v66 = sub_1B80C90EC();
    v68 = sub_1B7FB84FC(v66, v67, v130);

    *(v63 + 4) = v68;
    _os_log_impl(&dword_1B7FB5000, v61, v62, "Contacts match error %{public}s", v63, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v64);
    MEMORY[0x1B8CB8970](v64, -1, -1);
    MEMORY[0x1B8CB8970](v63, -1, -1);
  }

  else
  {
  }

  v94 = v129[37];
  v95 = v129[38];
  v96 = v129[31];
  sub_1B7FF8820(v129[32], v96, type metadata accessor for Friend);
  (*(v95 + 56))(v96, 0, 1, v94);

  v97 = v129[1];

  return v97();
}

uint64_t sub_1B7FF6AA0()
{
  v2 = *v1;
  *(*v1 + 360) = v0;

  v3 = *(v2 + 264);
  if (v0)
  {
    v4 = sub_1B7FF6F4C;
  }

  else
  {
    v4 = sub_1B7FF6BF8;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1B7FF6BF8()
{
  v1 = *(v0 + 336);
  v3 = *(v0 + 304);
  v2 = *(v0 + 312);
  v4 = *(v0 + 296);
  v5 = *(v0 + 248);

  sub_1B7FE8124(v2, v5);
  (*(v3 + 56))(v5, 0, 1, v4);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1B7FF6CF0()
{
  v2 = *v1;
  *(*v1 + 376) = v0;

  v3 = *(v2 + 264);
  if (v0)
  {
    v4 = sub_1B7FF7194;
  }

  else
  {
    v4 = sub_1B7FF6E48;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1B7FF6E48()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 304);
  v4 = *(v0 + 248);
  v3 = *(v0 + 256);

  sub_1B7FF8820(v3, v4, type metadata accessor for Friend);
  (*(v2 + 56))(v4, 0, 1, v1);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1B7FF6F4C()
{
  v19 = v0;
  v18[1] = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 336);
  v2 = *(v0 + 312);

  sub_1B7FF87C0(v2, type metadata accessor for Friend);
  v3 = *(v0 + 360);
  v4 = v3;
  v5 = sub_1B80C8FEC();
  v6 = sub_1B80C93FC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18[0] = v8;
    *v7 = 136446210;
    *(v0 + 240) = v3;
    v9 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65FC0, &unk_1B80D2430);
    v10 = sub_1B80C90EC();
    v12 = sub_1B7FB84FC(v10, v11, v18);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_1B7FB5000, v5, v6, "Contacts match error %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1B8CB8970](v8, -1, -1);
    MEMORY[0x1B8CB8970](v7, -1, -1);
  }

  else
  {
  }

  v13 = *(v0 + 296);
  v14 = *(v0 + 304);
  v15 = *(v0 + 248);
  sub_1B7FF8820(*(v0 + 256), v15, type metadata accessor for Friend);
  (*(v14 + 56))(v15, 0, 1, v13);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_1B7FF7194()
{
  v17 = v0;
  v16[1] = *MEMORY[0x1E69E9840];

  v1 = *(v0 + 376);
  v2 = v1;
  v3 = sub_1B80C8FEC();
  v4 = sub_1B80C93FC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v16[0] = v6;
    *v5 = 136446210;
    *(v0 + 240) = v1;
    v7 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65FC0, &unk_1B80D2430);
    v8 = sub_1B80C90EC();
    v10 = sub_1B7FB84FC(v8, v9, v16);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_1B7FB5000, v3, v4, "Contacts match error %{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x1B8CB8970](v6, -1, -1);
    MEMORY[0x1B8CB8970](v5, -1, -1);
  }

  else
  {
  }

  v11 = *(v0 + 296);
  v12 = *(v0 + 304);
  v13 = *(v0 + 248);
  sub_1B7FF8820(*(v0 + 256), v13, type metadata accessor for Friend);
  (*(v12 + 56))(v13, 0, 1, v11);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_1B7FF73B8(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  v2[12] = *(type metadata accessor for Friend(0) - 8);
  v2[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B7FF7474, v1, 0);
}

uint64_t sub_1B7FF7474()
{
  v1 = v0 + 2;
  v3 = sub_1B7FE5C40((v0 + 2));
  if (*v2)
  {
    v4 = v2;
    v5 = v0[10];
    v6 = swift_task_alloc();
    *(v6 + 16) = v5;
    v7 = 0;
    v8 = sub_1B7FF8190(sub_1B7FF88F4, v6);
    v9 = *(*v4 + 16);
    if (v9 < v8)
    {
      __break(1u);
LABEL_13:
      v1 = sub_1B807DA7C(0, v1[2] + 1, 1, v1);
      *v7 = v1;
      goto LABEL_6;
    }

    sub_1B7FF8700(v8, v9);
  }

  v6 = (v0 + 6);
  (v3)(v0 + 2, 0);
  v4 = sub_1B7FE5C40((v0 + 6));
  if (!*v10)
  {
    goto LABEL_9;
  }

  v7 = v10;
  sub_1B7FF8820(v0[10], v0[13], type metadata accessor for Friend);
  v1 = *v7;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v7 = v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_6:
  v13 = v1[2];
  v12 = v1[3];
  if (v13 >= v12 >> 1)
  {
    v1 = sub_1B807DA7C((v12 > 1), v13 + 1, 1, v1);
    *v7 = v1;
  }

  v15 = v0[12];
  v14 = v0[13];
  v1[2] = v13 + 1;
  sub_1B7FE8124(v14, v1 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v13);
LABEL_9:
  (v4)(v6, 0);

  v16 = v0[1];

  return v16();
}

double sub_1B7FF765C(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA66000, &unk_1B80D2630);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v10 - v3;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = sub_1B80C92CC();
    (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
    v9 = swift_allocObject();
    v9[2] = 0;
    v9[3] = 0;
    v9[4] = v7;
    sub_1B80A4870(0, 0, v4, &unk_1B80D27F8, v9);
  }

  return result;
}

uint64_t sub_1B7FF777C(uint64_t a1, uint64_t a2)
{
  v3 = sub_1B80C8C0C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  sub_1B80C8BFC();

  v7(v6);

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1B7FF7890()
{
  sub_1B7FF414C();
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_1B7FF7978;

  return MEMORY[0x1EEE6DDE0]();
}

uint64_t sub_1B7FF7978()
{
  v1 = *(*v0 + 40);

  return MEMORY[0x1EEE6DFA0](sub_1B7FF7A88, v1, 0);
}

uint64_t sub_1B7FF7A88()
{
  v1 = v0[5];
  v2 = OBJC_IVAR____TtCC12FindMyLocate7Session20FriendshipConnection__friendsWithPrettyName;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v0[7] = v3;
  if (v3)
  {

    v4 = swift_task_alloc();
    v0[8] = v4;
    *v4 = v0;
    v4[1] = sub_1B7FF7B98;

    return sub_1B7FE6218(v3);
  }

  else
  {
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_1B7FF7B98()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

double sub_1B7FF7CA8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F08, &qword_1B80D2550);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA66000, &unk_1B80D2630);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v15 - v9;
  v11 = sub_1B80C92CC();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  (*(v5 + 16))(v7, a1, v4);
  v12 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = 0;
  *(v13 + 3) = 0;
  *(v13 + 4) = a2;
  (*(v5 + 32))(&v13[v12], v7, v4);

  sub_1B80A1D3C(0, 0, v10, &unk_1B80D27E8, v13);

  return result;
}

uint64_t sub_1B7FF7E94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA65FF0, &qword_1B80D2620);
  v5[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B7FF7F34, a4, 0);
}

uint64_t sub_1B7FF7F34()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F08, &qword_1B80D2550);
  v5 = *(v4 - 8);
  (*(v5 + 16))(v2, v1, v4);
  (*(v5 + 56))(v2, 0, 1, v4);
  v6 = OBJC_IVAR____TtCC12FindMyLocate7Session20FriendshipConnection_internalFollowingContinuation;
  swift_beginAccess();
  sub_1B7FF8A84(v2, v3 + v6);
  swift_endAccess();

  v7 = v0[1];

  return v7();
}

uint64_t sub_1B7FF8060(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[9];
  v19[8] = a1[8];
  v19[9] = v2;
  v19[10] = a1[10];
  v3 = a1[5];
  v19[4] = a1[4];
  v19[5] = v3;
  v4 = a1[7];
  v19[6] = a1[6];
  v19[7] = v4;
  v5 = a1[1];
  v19[0] = *a1;
  v19[1] = v5;
  v6 = a1[3];
  v19[2] = a1[2];
  v19[3] = v6;
  v7 = a2[9];
  v20[8] = a2[8];
  v20[9] = v7;
  v20[10] = a2[10];
  v8 = a2[5];
  v20[4] = a2[4];
  v20[5] = v8;
  v9 = a2[7];
  v20[6] = a2[6];
  v20[7] = v9;
  v10 = a2[1];
  v20[0] = *a2;
  v20[1] = v10;
  v11 = a2[3];
  v20[2] = a2[2];
  v20[3] = v11;
  v12 = sub_1B80C90FC();
  v14 = v13;
  if (v12 == sub_1B80C90FC() && v14 == v15)
  {
    v16 = 1;
  }

  else
  {
    v16 = sub_1B80C981C();
  }

  sub_1B7FC8DA4(v19, v18);
  sub_1B7FC8DA4(v20, v18);

  sub_1B7FCAD28(v20);
  sub_1B7FCAD28(v19);
  return v16 & 1;
}

uint64_t sub_1B7FF8190(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  v6 = type metadata accessor for Friend(0);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v33 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v33 - v14;
  v16 = *v2;
  result = sub_1B7FF84B8(a1, a2, *v2);
  if (!v3)
  {
    v40 = v15;
    v43 = 0;
    if (v18)
    {
      return v16[2];
    }

    v33 = v2;
    v34 = v10;
    v37 = a1;
    v41 = result;
    v19 = result + 1;
    if (!__OFADD__(result, 1))
    {
      v21 = v16 + 2;
      v20 = v16[2];
      v22 = v40;
      if (v19 == v20)
      {
        return v41;
      }

      v35 = a2;
      v36 = v7;
      while (v19 < v20)
      {
        v23 = (*(v7 + 80) + 32) & ~*(v7 + 80);
        v42 = v16;
        v38 = v23;
        v24 = v16 + v23;
        v25 = *(v7 + 72);
        v39 = v25 * v19;
        sub_1B7FF8820(&v24[v25 * v19], v22, type metadata accessor for Friend);
        v26 = v43;
        v27 = v37(v22);
        result = sub_1B7FF87C0(v22, type metadata accessor for Friend);
        v43 = v26;
        if (v26)
        {
          return result;
        }

        if (v27)
        {
          v7 = v36;
          v22 = v40;
          v16 = v42;
        }

        else
        {
          v22 = v40;
          v28 = v41;
          if (v19 == v41)
          {
            v7 = v36;
            v16 = v42;
          }

          else
          {
            if ((v41 & 0x8000000000000000) != 0)
            {
              goto LABEL_26;
            }

            v29 = *v21;
            if (v41 >= *v21)
            {
              goto LABEL_27;
            }

            v30 = v25 * v41;
            result = sub_1B7FF8820(&v24[v25 * v41], v13, type metadata accessor for Friend);
            if (v19 >= v29)
            {
              goto LABEL_28;
            }

            v31 = v39;
            sub_1B7FF8820(&v24[v39], v34, type metadata accessor for Friend);
            v16 = v42;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v16 = sub_1B7FF85A4(v16);
            }

            v32 = v16 + v38;
            result = sub_1B7FF8914(v34, v16 + v38 + v30);
            v7 = v36;
            if (v19 >= v16[2])
            {
              goto LABEL_29;
            }

            result = sub_1B7FF8914(v13, &v32[v31]);
            *v33 = v16;
            v28 = v41;
          }

          v41 = v28 + 1;
        }

        ++v19;
        v21 = v16 + 2;
        v20 = v16[2];
        if (v19 == v20)
        {
          return v41;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1B7FF84B8(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  v8 = *(type metadata accessor for Friend(0) - 8);
  v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v10 = *(v8 + 72);
  while (1)
  {
    v11 = a1(v9);
    if (v3 || (v11 & 1) != 0)
    {
      break;
    }

    ++v7;
    v9 += v10;
    if (v4 == v7)
    {
      return 0;
    }
  }

  return v7;
}

unint64_t sub_1B7FF85B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = type metadata accessor for Friend(0);
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

unint64_t sub_1B7FF8700(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_1B807DA7C(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_1B7FF85B8(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t sub_1B7FF87C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B7FF8820(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1B7FF8888()
{
  result = qword_1EBA65FC8;
  if (!qword_1EBA65FC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBA65FC8);
  }

  return result;
}

double sub_1B7FF88D4(_OWORD *a1)
{
  result = 0.0;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_1B7FF8914(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Friend(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B7FF8980(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F08, &qword_1B80D2550) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1B7FBA3EC;

  return sub_1B7FF7E94(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1B7FF8A84(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA65FF0, &qword_1B80D2620);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B7FF8AFC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B7FBA3EC;

  return sub_1B7FF7870(a1, v4, v5, v6);
}

uint64_t sub_1B7FF8BCC(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v2[5] = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1B7FF8C14, v1, 0);
}

uint64_t sub_1B7FF8C14()
{
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  v2[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2[2].i64[0] = v1;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F80, &qword_1B80D2708);
  *v3 = v0;
  v3[1] = sub_1B7FF8D20;

  return MEMORY[0x1EEE04418](v0 + 16, 0x2873646E65697266, 0xEE00293A68746977, sub_1B8011C6C, v2, v4);
}

uint64_t sub_1B7FF8D20()
{
  v2 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = *(v2 + 32);
    v4 = sub_1B7FF8E48;
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = sub_1B8011D04;
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1B7FF8E48()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B7FF8ECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[34] = a6;
  v7[35] = a7;
  v7[32] = a4;
  v7[33] = a5;
  return MEMORY[0x1EEE6DFA0](sub_1B7FF8EF0, 0, 0);
}

uint64_t sub_1B7FF8EF0()
{

  v1 = swift_task_alloc();
  *(v0 + 288) = v1;
  v2 = _s20FriendshipConnectionCMa(0);
  v3 = sub_1B8011BA4(&qword_1ED8DD4B8, _s20FriendshipConnectionCMa, &unk_1B80D25B0);
  *v1 = v0;
  v1[1] = sub_1B7FF8FFC;
  v4 = *(v0 + 264);

  return MEMORY[0x1EEE04428](v0 + 240, sub_1B8011C68, v4, v2, v3);
}

uint64_t sub_1B7FF8FFC()
{
  *(*v1 + 296) = v0;

  if (v0)
  {
    v2 = sub_1B7FF948C;
  }

  else
  {

    v2 = sub_1B7FF9118;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B7FF9118()
{
  v32 = v0;
  v1 = *(v0 + 296);
  v2 = *(v0 + 272);
  v3 = *(v0 + 240);
  sub_1B80C8CEC();
  swift_allocObject();
  sub_1B80C8CDC();
  v5 = v2[1];
  v4 = v2[2];
  *(v0 + 16) = *v2;
  *(v0 + 32) = v5;
  *(v0 + 48) = v4;
  v6 = v2[6];
  v8 = v2[3];
  v7 = v2[4];
  *(v0 + 96) = v2[5];
  *(v0 + 112) = v6;
  *(v0 + 64) = v8;
  *(v0 + 80) = v7;
  v9 = v2[10];
  v11 = v2[7];
  v10 = v2[8];
  *(v0 + 160) = v2[9];
  *(v0 + 176) = v9;
  *(v0 + 128) = v11;
  *(v0 + 144) = v10;
  sub_1B7FDC224();
  v12 = sub_1B80C8CCC();
  if (v1)
  {

    swift_unknownObjectRelease();
    if (qword_1ED8DD6D0 != -1)
    {
      swift_once();
    }

    v14 = sub_1B80C900C();
    __swift_project_value_buffer(v14, qword_1ED8DDE78);
    v15 = v1;
    v16 = sub_1B80C8FEC();
    v17 = sub_1B80C93FC();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v31 = v20;
      *v18 = 136446466;
      *(v18 + 4) = sub_1B7FB84FC(0xD000000000000015, 0x80000001B80CC4C0, &v31);
      *(v18 + 12) = 2114;
      v21 = sub_1B80C8CFC();
      *(v18 + 14) = v21;
      *v19 = v21;
      _os_log_impl(&dword_1B7FB5000, v16, v17, "Failed to create proxy in %{public}s: %{public}@", v18, 0x16u);
      sub_1B7FB86D4(v19, &qword_1EBA65EE8, &qword_1B80D2478);
      MEMORY[0x1B8CB8970](v19, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x1B8CB8970](v20, -1, -1);
      MEMORY[0x1B8CB8970](v18, -1, -1);
    }

    *(v0 + 248) = v1;
    sub_1B80C8ACC();
  }

  else
  {
    v22 = *(v0 + 280);
    v23 = *(v0 + 264);
    v24 = v12;
    v25 = v13;

    v26 = sub_1B80C8D1C();
    v27 = swift_allocObject();
    *(v27 + 16) = v23;
    *(v27 + 24) = v22;
    *(v0 + 224) = sub_1B800FF30;
    *(v0 + 232) = v27;
    *(v0 + 192) = MEMORY[0x1E69E9820];
    *(v0 + 200) = 1107296256;
    *(v0 + 208) = sub_1B7FCE114;
    *(v0 + 216) = &block_descriptor_86;
    v28 = _Block_copy((v0 + 192));

    [v3 startRangingWithHandle:v26 completion:v28];
    _Block_release(v28);

    sub_1B7FC3CCC(v24, v25);
    swift_unknownObjectRelease();
  }

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_1B7FF948C()
{
  v13 = v0;

  v1 = v0[37];
  if (qword_1ED8DD6D0 != -1)
  {
    swift_once();
  }

  v2 = sub_1B80C900C();
  __swift_project_value_buffer(v2, qword_1ED8DDE78);
  v3 = v1;
  v4 = sub_1B80C8FEC();
  v5 = sub_1B80C93FC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v6 = 136446466;
    *(v6 + 4) = sub_1B7FB84FC(0xD000000000000015, 0x80000001B80CC4C0, &v12);
    *(v6 + 12) = 2114;
    v9 = sub_1B80C8CFC();
    *(v6 + 14) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1B7FB5000, v4, v5, "Failed to create proxy in %{public}s: %{public}@", v6, 0x16u);
    sub_1B7FB86D4(v7, &qword_1EBA65EE8, &qword_1B80D2478);
    MEMORY[0x1B8CB8970](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1B8CB8970](v8, -1, -1);
    MEMORY[0x1B8CB8970](v6, -1, -1);
  }

  v0[31] = v1;
  sub_1B80C8ACC();

  v10 = v0[1];

  return v10();
}

void sub_1B7FF968C(void *a1)
{
  if (a1)
  {
    v2 = a1;
    if (qword_1ED8DD6D0 != -1)
    {
      swift_once();
    }

    v3 = sub_1B80C900C();
    __swift_project_value_buffer(v3, qword_1ED8DDE78);
    v4 = a1;
    v5 = sub_1B80C8FEC();
    v6 = sub_1B80C93FC();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v18 = v8;
      *v7 = 136446466;
      *(v7 + 4) = sub_1B7FB84FC(0xD000000000000015, 0x80000001B80CC4C0, &v18);
      *(v7 + 12) = 2082;
      v9 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65FC0, &unk_1B80D2430);
      v10 = sub_1B80C90EC();
      v12 = sub_1B7FB84FC(v10, v11, &v18);

      *(v7 + 14) = v12;
      _os_log_impl(&dword_1B7FB5000, v5, v6, "%{public}s error %{public}s!", v7, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B8CB8970](v8, -1, -1);
      MEMORY[0x1B8CB8970](v7, -1, -1);
    }

    v18 = a1;
    sub_1B80C8ACC();
  }

  else
  {
    if (qword_1ED8DD6D0 != -1)
    {
      swift_once();
    }

    v13 = sub_1B80C900C();
    __swift_project_value_buffer(v13, qword_1ED8DDE78);
    v14 = sub_1B80C8FEC();
    v15 = sub_1B80C941C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v18 = v17;
      *v16 = 136446210;
      *(v16 + 4) = sub_1B7FB84FC(0xD000000000000015, 0x80000001B80CC4C0, &v18);
      _os_log_impl(&dword_1B7FB5000, v14, v15, "%{public}s succeeded!", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x1B8CB8970](v17, -1, -1);
      MEMORY[0x1B8CB8970](v16, -1, -1);
    }

    sub_1B80C8AEC();
  }
}

uint64_t sub_1B7FF99A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[10] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1B7FF99C8, 0, 0);
}

uint64_t sub_1B7FF99C8()
{

  v1 = swift_task_alloc();
  *(v0 + 104) = v1;
  v2 = _s20FriendshipConnectionCMa(0);
  v3 = sub_1B8011BA4(&qword_1ED8DD4B8, _s20FriendshipConnectionCMa, &unk_1B80D25B0);
  *v1 = v0;
  v1[1] = sub_1B7FF9AD4;
  v4 = *(v0 + 88);

  return MEMORY[0x1EEE04428](v0 + 64, sub_1B8011C68, v4, v2, v3);
}

uint64_t sub_1B7FF9AD4()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_1B7FF9D14;
  }

  else
  {

    v2 = sub_1B7FF9BF0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B7FF9BF0()
{
  v1 = *(v0 + 64);
  v2 = swift_allocObject();
  *(v2 + 16) = *(v0 + 88);
  *(v0 + 48) = sub_1B800FE18;
  *(v0 + 56) = v2;
  *(v0 + 16) = MEMORY[0x1E69E9820];
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = sub_1B7FCE114;
  *(v0 + 40) = &block_descriptor_73;
  v3 = _Block_copy((v0 + 16));

  [v1 startOwnerRangingWithCompletion_];
  _Block_release(v3);
  swift_unknownObjectRelease();
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1B7FF9D14()
{
  v14 = v0;

  if (qword_1ED8DD6D0 != -1)
  {
    swift_once();
  }

  v1 = v0[14];
  v2 = sub_1B80C900C();
  __swift_project_value_buffer(v2, qword_1ED8DDE78);
  v3 = v1;
  v4 = sub_1B80C8FEC();
  v5 = sub_1B80C93FC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v6 = 136446466;
    *(v6 + 4) = sub_1B7FB84FC(0xD000000000000013, 0x80000001B80CC4A0, &v13);
    *(v6 + 12) = 2114;
    v9 = sub_1B80C8CFC();
    *(v6 + 14) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1B7FB5000, v4, v5, "Failed to create proxy in %{public}s: %{public}@", v6, 0x16u);
    sub_1B7FB86D4(v7, &qword_1EBA65EE8, &qword_1B80D2478);
    MEMORY[0x1B8CB8970](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1B8CB8970](v8, -1, -1);
    MEMORY[0x1B8CB8970](v6, -1, -1);
  }

  v10 = v0[14];
  v0[9] = v10;
  sub_1B80C8ACC();

  v11 = v0[1];

  return v11();
}

void sub_1B7FF9F1C(void *a1)
{
  if (a1)
  {
    v2 = a1;
    if (qword_1ED8DD6D0 != -1)
    {
      swift_once();
    }

    v3 = sub_1B80C900C();
    __swift_project_value_buffer(v3, qword_1ED8DDE78);
    v4 = a1;
    v5 = sub_1B80C8FEC();
    v6 = sub_1B80C93FC();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v18 = v8;
      *v7 = 136446466;
      *(v7 + 4) = sub_1B7FB84FC(0xD000000000000013, 0x80000001B80CC4A0, &v18);
      *(v7 + 12) = 2082;
      v9 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65FC0, &unk_1B80D2430);
      v10 = sub_1B80C90EC();
      v12 = sub_1B7FB84FC(v10, v11, &v18);

      *(v7 + 14) = v12;
      _os_log_impl(&dword_1B7FB5000, v5, v6, "%{public}s error %{public}s!", v7, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B8CB8970](v8, -1, -1);
      MEMORY[0x1B8CB8970](v7, -1, -1);
    }

    v18 = a1;
    sub_1B80C8ACC();
  }

  else
  {
    if (qword_1ED8DD6D0 != -1)
    {
      swift_once();
    }

    v13 = sub_1B80C900C();
    __swift_project_value_buffer(v13, qword_1ED8DDE78);
    v14 = sub_1B80C8FEC();
    v15 = sub_1B80C941C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v18 = v17;
      *v16 = 136446210;
      *(v16 + 4) = sub_1B7FB84FC(0xD000000000000013, 0x80000001B80CC4A0, &v18);
      _os_log_impl(&dword_1B7FB5000, v14, v15, "%{public}s succeeded!", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x1B8CB8970](v17, -1, -1);
      MEMORY[0x1B8CB8970](v16, -1, -1);
    }

    sub_1B80C8AEC();
  }
}

uint64_t sub_1B7FFA214()
{
  *(v1 + 16) = v0;
  *(v1 + 24) = *v0;
  return MEMORY[0x1EEE6DFA0](sub_1B7FFA25C, v0, 0);
}

uint64_t sub_1B7FFA25C()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = swift_task_alloc();
  v0[4] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_1B7FFA350;
  v5 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE04418](v4, 0x676E6152706F7473, 0xED00002928676E69, sub_1B8011CFC, v3, v5);
}

uint64_t sub_1B7FFA350()
{
  v2 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v3 = *(v2 + 16);
    v4 = sub_1B8011CE8;
  }

  else
  {
    v5 = *(v2 + 16);

    v4 = sub_1B8011C90;
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1B7FFA478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[10] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1B7FFA49C, 0, 0);
}

uint64_t sub_1B7FFA49C()
{

  v1 = swift_task_alloc();
  *(v0 + 104) = v1;
  v2 = _s20FriendshipConnectionCMa(0);
  v3 = sub_1B8011BA4(&qword_1ED8DD4B8, _s20FriendshipConnectionCMa, &unk_1B80D25B0);
  *v1 = v0;
  v1[1] = sub_1B7FFA5A8;
  v4 = *(v0 + 88);

  return MEMORY[0x1EEE04428](v0 + 64, sub_1B8011C68, v4, v2, v3);
}

uint64_t sub_1B7FFA5A8()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_1B7FFA7E8;
  }

  else
  {

    v2 = sub_1B7FFA6C4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B7FFA6C4()
{
  v1 = *(v0 + 64);
  v2 = swift_allocObject();
  *(v2 + 16) = *(v0 + 88);
  *(v0 + 48) = sub_1B800FD10;
  *(v0 + 56) = v2;
  *(v0 + 16) = MEMORY[0x1E69E9820];
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = sub_1B7FCE114;
  *(v0 + 40) = &block_descriptor_60;
  v3 = _Block_copy((v0 + 16));

  [v1 stopRangingWithCompletion_];
  _Block_release(v3);
  swift_unknownObjectRelease();
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1B7FFA7E8()
{
  v14 = v0;

  if (qword_1ED8DD6D0 != -1)
  {
    swift_once();
  }

  v1 = v0[14];
  v2 = sub_1B80C900C();
  __swift_project_value_buffer(v2, qword_1ED8DDE78);
  v3 = v1;
  v4 = sub_1B80C8FEC();
  v5 = sub_1B80C93FC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v6 = 136446466;
    *(v6 + 4) = sub_1B7FB84FC(0x676E6152706F7473, 0xED00002928676E69, &v13);
    *(v6 + 12) = 2114;
    v9 = sub_1B80C8CFC();
    *(v6 + 14) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1B7FB5000, v4, v5, "Failed to create proxy in %{public}s: %{public}@", v6, 0x16u);
    sub_1B7FB86D4(v7, &qword_1EBA65EE8, &qword_1B80D2478);
    MEMORY[0x1B8CB8970](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1B8CB8970](v8, -1, -1);
    MEMORY[0x1B8CB8970](v6, -1, -1);
  }

  v10 = v0[14];
  v0[9] = v10;
  sub_1B80C8ACC();

  v11 = v0[1];

  return v11();
}

void sub_1B7FFA9F8(void *a1)
{
  if (a1)
  {
    v2 = a1;
    if (qword_1ED8DD6D0 != -1)
    {
      swift_once();
    }

    v3 = sub_1B80C900C();
    __swift_project_value_buffer(v3, qword_1ED8DDE78);
    v4 = a1;
    v5 = sub_1B80C8FEC();
    v6 = sub_1B80C93FC();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v18 = v8;
      *v7 = 136446466;
      *(v7 + 4) = sub_1B7FB84FC(0x676E6152706F7473, 0xED00002928676E69, &v18);
      *(v7 + 12) = 2082;
      v9 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65FC0, &unk_1B80D2430);
      v10 = sub_1B80C90EC();
      v12 = sub_1B7FB84FC(v10, v11, &v18);

      *(v7 + 14) = v12;
      _os_log_impl(&dword_1B7FB5000, v5, v6, "%{public}s error %{public}s!", v7, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B8CB8970](v8, -1, -1);
      MEMORY[0x1B8CB8970](v7, -1, -1);
    }

    v18 = a1;
    sub_1B80C8ACC();
  }

  else
  {
    if (qword_1ED8DD6D0 != -1)
    {
      swift_once();
    }

    v13 = sub_1B80C900C();
    __swift_project_value_buffer(v13, qword_1ED8DDE78);
    v14 = sub_1B80C8FEC();
    v15 = sub_1B80C941C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v18 = v17;
      *v16 = 136446210;
      *(v16 + 4) = sub_1B7FB84FC(0x676E6152706F7473, 0xED00002928676E69, &v18);
      _os_log_impl(&dword_1B7FB5000, v14, v15, "%{public}s succeeded!", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x1B8CB8970](v17, -1, -1);
      MEMORY[0x1B8CB8970](v16, -1, -1);
    }

    sub_1B80C8AEC();
  }
}

uint64_t sub_1B7FFAD00()
{
  *(v1 + 16) = v0;
  *(v1 + 24) = *v0;
  return MEMORY[0x1EEE6DFA0](sub_1B7FFAD48, v0, 0);
}

uint64_t sub_1B7FFAD48()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = swift_task_alloc();
  v0[4] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_1B7FFAE34;
  v5 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE04418](v4, 0xD00000000000001ALL, 0x80000001B80CC520, sub_1B8011CEC, v3, v5);
}

uint64_t sub_1B7FFAE34()
{
  v2 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v3 = *(v2 + 16);
    v4 = sub_1B7FFAF74;
  }

  else
  {
    v5 = *(v2 + 16);

    v4 = sub_1B7FFAF5C;
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1B7FFAF74()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B7FFAFD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[10] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1B7FFAFFC, 0, 0);
}

uint64_t sub_1B7FFAFFC()
{

  v1 = swift_task_alloc();
  *(v0 + 104) = v1;
  v2 = _s20FriendshipConnectionCMa(0);
  v3 = sub_1B8011BA4(&qword_1ED8DD4B8, _s20FriendshipConnectionCMa, &unk_1B80D25B0);
  *v1 = v0;
  v1[1] = sub_1B7FFB108;
  v4 = *(v0 + 88);

  return MEMORY[0x1EEE04428](v0 + 64, sub_1B7FE58F0, v4, v2, v3);
}

uint64_t sub_1B7FFB108()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_1B7FFB348;
  }

  else
  {

    v2 = sub_1B7FFB224;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B7FFB224()
{
  v1 = *(v0 + 64);
  v2 = swift_allocObject();
  *(v2 + 16) = *(v0 + 88);
  *(v0 + 48) = sub_1B800F8F0;
  *(v0 + 56) = v2;
  *(v0 + 16) = MEMORY[0x1E69E9820];
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = sub_1B7FCE114;
  *(v0 + 40) = &block_descriptor_3;
  v3 = _Block_copy((v0 + 16));

  [v1 stopConfigRangingSessionWithCompletion_];
  _Block_release(v3);
  swift_unknownObjectRelease();
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1B7FFB348()
{
  v14 = v0;

  if (qword_1ED8DD6D0 != -1)
  {
    swift_once();
  }

  v1 = v0[14];
  v2 = sub_1B80C900C();
  __swift_project_value_buffer(v2, qword_1ED8DDE78);
  v3 = v1;
  v4 = sub_1B80C8FEC();
  v5 = sub_1B80C93FC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v6 = 136446466;
    *(v6 + 4) = sub_1B7FB84FC(0xD00000000000001ALL, 0x80000001B80CC520, &v13);
    *(v6 + 12) = 2114;
    v9 = sub_1B80C8CFC();
    *(v6 + 14) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1B7FB5000, v4, v5, "Failed to create proxy in %{public}s: %{public}@", v6, 0x16u);
    sub_1B7FB86D4(v7, &qword_1EBA65EE8, &qword_1B80D2478);
    MEMORY[0x1B8CB8970](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1B8CB8970](v8, -1, -1);
    MEMORY[0x1B8CB8970](v6, -1, -1);
  }

  v10 = v0[14];
  v0[9] = v10;
  sub_1B80C8ACC();

  v11 = v0[1];

  return v11();
}

void sub_1B7FFB550(void *a1)
{
  if (a1)
  {
    v2 = a1;
    if (qword_1ED8DD6D0 != -1)
    {
      swift_once();
    }

    v3 = sub_1B80C900C();
    __swift_project_value_buffer(v3, qword_1ED8DDE78);
    v4 = a1;
    v5 = sub_1B80C8FEC();
    v6 = sub_1B80C93FC();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v18 = v8;
      *v7 = 136446466;
      *(v7 + 4) = sub_1B7FB84FC(0xD00000000000001ALL, 0x80000001B80CC520, &v18);
      *(v7 + 12) = 2082;
      v9 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65FC0, &unk_1B80D2430);
      v10 = sub_1B80C90EC();
      v12 = sub_1B7FB84FC(v10, v11, &v18);

      *(v7 + 14) = v12;
      _os_log_impl(&dword_1B7FB5000, v5, v6, "%{public}s error %{public}s!", v7, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B8CB8970](v8, -1, -1);
      MEMORY[0x1B8CB8970](v7, -1, -1);
    }

    v18 = a1;
    sub_1B80C8ACC();
  }

  else
  {
    if (qword_1ED8DD6D0 != -1)
    {
      swift_once();
    }

    v13 = sub_1B80C900C();
    __swift_project_value_buffer(v13, qword_1ED8DDE78);
    v14 = sub_1B80C8FEC();
    v15 = sub_1B80C941C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v18 = v17;
      *v16 = 136446210;
      *(v16 + 4) = sub_1B7FB84FC(0xD00000000000001ALL, 0x80000001B80CC520, &v18);
      _os_log_impl(&dword_1B7FB5000, v14, v15, "%{public}s succeeded!", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x1B8CB8970](v17, -1, -1);
      MEMORY[0x1B8CB8970](v16, -1, -1);
    }

    sub_1B80C8AEC();
  }
}

uint64_t sub_1B7FFB848()
{
  *(v1 + 16) = v0;
  *(v1 + 24) = *v0;
  return MEMORY[0x1EEE6DFA0](sub_1B7FFB890, v0, 0);
}

uint64_t sub_1B7FFB890()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = swift_task_alloc();
  v0[4] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_1B7FFA350;
  v5 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE04418](v4, 0xD000000000000014, 0x80000001B80CC580, sub_1B8011CF8, v3, v5);
}

uint64_t sub_1B7FFB97C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[10] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1B7FFB9A0, 0, 0);
}

uint64_t sub_1B7FFB9A0()
{

  v1 = swift_task_alloc();
  *(v0 + 104) = v1;
  v2 = _s20FriendshipConnectionCMa(0);
  v3 = sub_1B8011BA4(&qword_1ED8DD4B8, _s20FriendshipConnectionCMa, &unk_1B80D25B0);
  *v1 = v0;
  v1[1] = sub_1B7FFBAAC;
  v4 = *(v0 + 88);

  return MEMORY[0x1EEE04428](v0 + 64, sub_1B8011C68, v4, v2, v3);
}

uint64_t sub_1B7FFBAAC()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_1B7FFBCEC;
  }

  else
  {

    v2 = sub_1B7FFBBC8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B7FFBBC8()
{
  v1 = *(v0 + 64);
  v2 = swift_allocObject();
  *(v2 + 16) = *(v0 + 88);
  *(v0 + 48) = sub_1B800FC08;
  *(v0 + 56) = v2;
  *(v0 + 16) = MEMORY[0x1E69E9820];
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = sub_1B7FCE114;
  *(v0 + 40) = &block_descriptor_47;
  v3 = _Block_copy((v0 + 16));

  [v1 resetTokenDatabaseWithCompletion_];
  _Block_release(v3);
  swift_unknownObjectRelease();
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1B7FFBCEC()
{
  v14 = v0;

  if (qword_1ED8DD6D0 != -1)
  {
    swift_once();
  }

  v1 = v0[14];
  v2 = sub_1B80C900C();
  __swift_project_value_buffer(v2, qword_1ED8DDE78);
  v3 = v1;
  v4 = sub_1B80C8FEC();
  v5 = sub_1B80C93FC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v6 = 136446466;
    *(v6 + 4) = sub_1B7FB84FC(0xD000000000000014, 0x80000001B80CC580, &v13);
    *(v6 + 12) = 2114;
    v9 = sub_1B80C8CFC();
    *(v6 + 14) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1B7FB5000, v4, v5, "Failed to create proxy in %{public}s: %{public}@", v6, 0x16u);
    sub_1B7FB86D4(v7, &qword_1EBA65EE8, &qword_1B80D2478);
    MEMORY[0x1B8CB8970](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1B8CB8970](v8, -1, -1);
    MEMORY[0x1B8CB8970](v6, -1, -1);
  }

  v10 = v0[14];
  v0[9] = v10;
  sub_1B80C8ACC();

  v11 = v0[1];

  return v11();
}

void sub_1B7FFBEF4(void *a1)
{
  if (a1)
  {
    v2 = a1;
    if (qword_1ED8DD6D0 != -1)
    {
      swift_once();
    }

    v3 = sub_1B80C900C();
    __swift_project_value_buffer(v3, qword_1ED8DDE78);
    v4 = a1;
    v5 = sub_1B80C8FEC();
    v6 = sub_1B80C93FC();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v18 = v8;
      *v7 = 136446466;
      *(v7 + 4) = sub_1B7FB84FC(0xD000000000000014, 0x80000001B80CC580, &v18);
      *(v7 + 12) = 2082;
      v9 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65FC0, &unk_1B80D2430);
      v10 = sub_1B80C90EC();
      v12 = sub_1B7FB84FC(v10, v11, &v18);

      *(v7 + 14) = v12;
      _os_log_impl(&dword_1B7FB5000, v5, v6, "%{public}s error %{public}s!", v7, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B8CB8970](v8, -1, -1);
      MEMORY[0x1B8CB8970](v7, -1, -1);
    }

    v18 = a1;
    sub_1B80C8ACC();
  }

  else
  {
    if (qword_1ED8DD6D0 != -1)
    {
      swift_once();
    }

    v13 = sub_1B80C900C();
    __swift_project_value_buffer(v13, qword_1ED8DDE78);
    v14 = sub_1B80C8FEC();
    v15 = sub_1B80C941C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v18 = v17;
      *v16 = 136446210;
      *(v16 + 4) = sub_1B7FB84FC(0xD000000000000014, 0x80000001B80CC580, &v18);
      _os_log_impl(&dword_1B7FB5000, v14, v15, "%{public}s succeeded!", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x1B8CB8970](v17, -1, -1);
      MEMORY[0x1B8CB8970](v16, -1, -1);
    }

    sub_1B80C8AEC();
  }
}

uint64_t sub_1B7FFC1EC(_OWORD *a1)
{
  *(v2 + 192) = v1;
  *(v2 + 200) = *v1;
  v3 = a1[9];
  *(v2 + 144) = a1[8];
  *(v2 + 160) = v3;
  *(v2 + 176) = a1[10];
  v4 = a1[5];
  *(v2 + 80) = a1[4];
  *(v2 + 96) = v4;
  v5 = a1[7];
  *(v2 + 112) = a1[6];
  *(v2 + 128) = v5;
  v6 = a1[1];
  *(v2 + 16) = *a1;
  *(v2 + 32) = v6;
  v7 = a1[3];
  *(v2 + 48) = a1[2];
  *(v2 + 64) = v7;
  return MEMORY[0x1EEE6DFA0](sub_1B7FFC264, v1, 0);
}

uint64_t sub_1B7FFC264()
{
  v2 = v0[24];
  v1 = v0[25];
  v3 = swift_task_alloc();
  v0[26] = v3;
  v3[2] = v2;
  v3[3] = v0 + 2;
  v3[4] = v1;
  v4 = swift_task_alloc();
  v0[27] = v4;
  *v4 = v0;
  v4[1] = sub_1B7FFC360;
  v5 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE04418](v4, 0xD000000000000015, 0x80000001B80CC560, sub_1B8011C78, v3, v5);
}

uint64_t sub_1B7FFC360()
{
  v2 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {
    v3 = *(v2 + 192);
    v4 = sub_1B7FFC488;
  }

  else
  {
    v5 = *(v2 + 192);

    v4 = sub_1B7FFAF5C;
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1B7FFC488()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B7FFC4EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[34] = a6;
  v7[35] = a7;
  v7[32] = a4;
  v7[33] = a5;
  return MEMORY[0x1EEE6DFA0](sub_1B7FFC510, 0, 0);
}

uint64_t sub_1B7FFC510()
{

  v1 = swift_task_alloc();
  *(v0 + 288) = v1;
  v2 = _s20FriendshipConnectionCMa(0);
  v3 = sub_1B8011BA4(&qword_1ED8DD4B8, _s20FriendshipConnectionCMa, &unk_1B80D25B0);
  *v1 = v0;
  v1[1] = sub_1B7FFC61C;
  v4 = *(v0 + 264);

  return MEMORY[0x1EEE04428](v0 + 240, sub_1B8011C68, v4, v2, v3);
}

uint64_t sub_1B7FFC61C()
{
  *(*v1 + 296) = v0;

  if (v0)
  {
    v2 = sub_1B7FFCAAC;
  }

  else
  {

    v2 = sub_1B7FFC738;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B7FFC738()
{
  v32 = v0;
  v1 = *(v0 + 296);
  v2 = *(v0 + 272);
  v3 = *(v0 + 240);
  sub_1B80C8CEC();
  swift_allocObject();
  sub_1B80C8CDC();
  v5 = v2[1];
  v4 = v2[2];
  *(v0 + 16) = *v2;
  *(v0 + 32) = v5;
  *(v0 + 48) = v4;
  v6 = v2[6];
  v8 = v2[3];
  v7 = v2[4];
  *(v0 + 96) = v2[5];
  *(v0 + 112) = v6;
  *(v0 + 64) = v8;
  *(v0 + 80) = v7;
  v9 = v2[10];
  v11 = v2[7];
  v10 = v2[8];
  *(v0 + 160) = v2[9];
  *(v0 + 176) = v9;
  *(v0 + 128) = v11;
  *(v0 + 144) = v10;
  sub_1B7FDC224();
  v12 = sub_1B80C8CCC();
  if (v1)
  {

    swift_unknownObjectRelease();
    if (qword_1ED8DD6D0 != -1)
    {
      swift_once();
    }

    v14 = sub_1B80C900C();
    __swift_project_value_buffer(v14, qword_1ED8DDE78);
    v15 = v1;
    v16 = sub_1B80C8FEC();
    v17 = sub_1B80C93FC();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v31 = v20;
      *v18 = 136446466;
      *(v18 + 4) = sub_1B7FB84FC(0xD000000000000015, 0x80000001B80CC560, &v31);
      *(v18 + 12) = 2114;
      v21 = sub_1B80C8CFC();
      *(v18 + 14) = v21;
      *v19 = v21;
      _os_log_impl(&dword_1B7FB5000, v16, v17, "Failed to create proxy in %{public}s: %{public}@", v18, 0x16u);
      sub_1B7FB86D4(v19, &qword_1EBA65EE8, &qword_1B80D2478);
      MEMORY[0x1B8CB8970](v19, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x1B8CB8970](v20, -1, -1);
      MEMORY[0x1B8CB8970](v18, -1, -1);
    }

    *(v0 + 248) = v1;
    sub_1B80C8ACC();
  }

  else
  {
    v22 = *(v0 + 280);
    v23 = *(v0 + 264);
    v24 = v12;
    v25 = v13;

    v26 = sub_1B80C8D1C();
    v27 = swift_allocObject();
    *(v27 + 16) = v23;
    *(v27 + 24) = v22;
    *(v0 + 224) = sub_1B800FB00;
    *(v0 + 232) = v27;
    *(v0 + 192) = MEMORY[0x1E69E9820];
    *(v0 + 200) = 1107296256;
    *(v0 + 208) = sub_1B7FCE114;
    *(v0 + 216) = &block_descriptor_34;
    v28 = _Block_copy((v0 + 192));

    [v3 removePeerTokenWithHandle:v26 completion:v28];
    _Block_release(v28);

    sub_1B7FC3CCC(v24, v25);
    swift_unknownObjectRelease();
  }

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_1B7FFCAAC()
{
  v13 = v0;

  v1 = v0[37];
  if (qword_1ED8DD6D0 != -1)
  {
    swift_once();
  }

  v2 = sub_1B80C900C();
  __swift_project_value_buffer(v2, qword_1ED8DDE78);
  v3 = v1;
  v4 = sub_1B80C8FEC();
  v5 = sub_1B80C93FC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v6 = 136446466;
    *(v6 + 4) = sub_1B7FB84FC(0xD000000000000015, 0x80000001B80CC560, &v12);
    *(v6 + 12) = 2114;
    v9 = sub_1B80C8CFC();
    *(v6 + 14) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1B7FB5000, v4, v5, "Failed to create proxy in %{public}s: %{public}@", v6, 0x16u);
    sub_1B7FB86D4(v7, &qword_1EBA65EE8, &qword_1B80D2478);
    MEMORY[0x1B8CB8970](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1B8CB8970](v8, -1, -1);
    MEMORY[0x1B8CB8970](v6, -1, -1);
  }

  v0[31] = v1;
  sub_1B80C8ACC();

  v10 = v0[1];

  return v10();
}

void sub_1B7FFCCAC(void *a1)
{
  if (a1)
  {
    v2 = a1;
    if (qword_1ED8DD6D0 != -1)
    {
      swift_once();
    }

    v3 = sub_1B80C900C();
    __swift_project_value_buffer(v3, qword_1ED8DDE78);
    v4 = a1;
    v5 = sub_1B80C8FEC();
    v6 = sub_1B80C93FC();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v18 = v8;
      *v7 = 136446466;
      *(v7 + 4) = sub_1B7FB84FC(0xD000000000000015, 0x80000001B80CC560, &v18);
      *(v7 + 12) = 2082;
      v9 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65FC0, &unk_1B80D2430);
      v10 = sub_1B80C90EC();
      v12 = sub_1B7FB84FC(v10, v11, &v18);

      *(v7 + 14) = v12;
      _os_log_impl(&dword_1B7FB5000, v5, v6, "%{public}s error %{public}s!", v7, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B8CB8970](v8, -1, -1);
      MEMORY[0x1B8CB8970](v7, -1, -1);
    }

    v18 = a1;
    sub_1B80C8ACC();
  }

  else
  {
    if (qword_1ED8DD6D0 != -1)
    {
      swift_once();
    }

    v13 = sub_1B80C900C();
    __swift_project_value_buffer(v13, qword_1ED8DDE78);
    v14 = sub_1B80C8FEC();
    v15 = sub_1B80C941C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v18 = v17;
      *v16 = 136446210;
      *(v16 + 4) = sub_1B7FB84FC(0xD000000000000015, 0x80000001B80CC560, &v18);
      _os_log_impl(&dword_1B7FB5000, v14, v15, "%{public}s succeeded!", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x1B8CB8970](v17, -1, -1);
      MEMORY[0x1B8CB8970](v16, -1, -1);
    }

    sub_1B80C8AEC();
  }
}

uint64_t sub_1B7FFCFA4(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 56) = a1;
  *(v2 + 24) = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1B7FFCFF0, v1, 0);
}

uint64_t sub_1B7FFCFF0()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v0 + 56);
  v4 = swift_task_alloc();
  *(v0 + 32) = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  *(v4 + 32) = v1;
  v5 = swift_task_alloc();
  *(v0 + 40) = v5;
  *v5 = v0;
  v5[1] = sub_1B7FFA350;
  v6 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE04418](v5, 0xD000000000000019, 0x80000001B80CC540, sub_1B8011C74, v4, v6);
}

double sub_1B7FFD0F0(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA66000, &unk_1B80D2630);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v14 - v9;
  v11 = sub_1B80C92CC();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  *(v12 + 32) = a2;
  *(v12 + 40) = a1;
  *(v12 + 48) = a3;
  *(v12 + 56) = a4;

  sub_1B80A1D3C(0, 0, v10, &unk_1B80D2988, v12);

  return result;
}

uint64_t sub_1B7FFD220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  *(v7 + 88) = a5;
  *(v7 + 96) = a7;
  *(v7 + 120) = a6;
  *(v7 + 80) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1B7FFD248, 0, 0);
}

uint64_t sub_1B7FFD248()
{

  v1 = swift_task_alloc();
  *(v0 + 104) = v1;
  v2 = _s20FriendshipConnectionCMa(0);
  v3 = sub_1B8011BA4(&qword_1ED8DD4B8, _s20FriendshipConnectionCMa, &unk_1B80D25B0);
  *v1 = v0;
  v1[1] = sub_1B7FFD354;
  v4 = *(v0 + 88);

  return MEMORY[0x1EEE04428](v0 + 64, sub_1B8011C68, v4, v2, v3);
}

uint64_t sub_1B7FFD354()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_1B7FFD5A4;
  }

  else
  {

    v2 = sub_1B7FFD470;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B7FFD470()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 88);
  v3 = *(v0 + 96);
  v4 = *(v0 + 64);
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = v1;
  *(v5 + 32) = v3;
  *(v0 + 48) = sub_1B800F9E0;
  *(v0 + 56) = v5;
  *(v0 + 16) = MEMORY[0x1E69E9820];
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = sub_1B7FCE114;
  *(v0 + 40) = &block_descriptor_21;
  v6 = _Block_copy((v0 + 16));

  [v4 requestOwnerTokenWithForce:v1 completion:v6];
  _Block_release(v6);
  swift_unknownObjectRelease();
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1B7FFD5A4()
{
  v16 = v0;

  if (qword_1ED8DD6D0 != -1)
  {
    swift_once();
  }

  v1 = v0[14];
  v2 = sub_1B80C900C();
  __swift_project_value_buffer(v2, qword_1ED8DDE78);
  v3 = v1;
  v4 = sub_1B80C8FEC();
  v5 = sub_1B80C93FC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[14];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v7 = 136446466;
    *(v7 + 4) = sub_1B7FB84FC(0xD000000000000019, 0x80000001B80CC540, &v15);
    *(v7 + 12) = 2114;
    v10 = v6;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v11;
    *v8 = v11;
    _os_log_impl(&dword_1B7FB5000, v4, v5, "Failed to create proxy in %{public}s: %{public}@", v7, 0x16u);
    sub_1B7FB86D4(v8, &qword_1EBA65EE8, &qword_1B80D2478);
    MEMORY[0x1B8CB8970](v8, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x1B8CB8970](v9, -1, -1);
    MEMORY[0x1B8CB8970](v7, -1, -1);
  }

  v12 = v0[14];
  v0[9] = v12;
  sub_1B80C8ACC();

  v13 = v0[1];

  return v13();
}

void sub_1B7FFD7B4(void *a1, uint64_t a2, char a3)
{
  if (a1)
  {
    v4 = a1;
    if (qword_1ED8DD6D0 != -1)
    {
      swift_once();
    }

    v5 = sub_1B80C900C();
    __swift_project_value_buffer(v5, qword_1ED8DDE78);
    v6 = a1;
    v7 = sub_1B80C8FEC();
    v8 = sub_1B80C93FC();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v20 = v11;
      *v9 = 136446466;
      *(v9 + 4) = sub_1B7FB84FC(0xD000000000000019, 0x80000001B80CC540, &v20);
      *(v9 + 12) = 2114;
      v12 = a1;
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 14) = v13;
      *v10 = v13;
      _os_log_impl(&dword_1B7FB5000, v7, v8, "%{public}s error %{public}@!", v9, 0x16u);
      sub_1B7FB86D4(v10, &qword_1EBA65EE8, &qword_1B80D2478);
      MEMORY[0x1B8CB8970](v10, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x1B8CB8970](v11, -1, -1);
      MEMORY[0x1B8CB8970](v9, -1, -1);
    }

    v20 = a1;
    sub_1B80C8ACC();
  }

  else
  {
    if (qword_1ED8DD6D0 != -1)
    {
      swift_once();
    }

    v15 = sub_1B80C900C();
    __swift_project_value_buffer(v15, qword_1ED8DDE78);
    v16 = sub_1B80C8FEC();
    v17 = sub_1B80C941C();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v20 = v19;
      *v18 = 136446466;
      *(v18 + 4) = sub_1B7FB84FC(0xD000000000000019, 0x80000001B80CC540, &v20);
      *(v18 + 12) = 1024;
      *(v18 + 14) = a3 & 1;
      _os_log_impl(&dword_1B7FB5000, v16, v17, "%{public}s force? %{BOOL}d succeeded!", v18, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x1B8CB8970](v19, -1, -1);
      MEMORY[0x1B8CB8970](v18, -1, -1);
    }

    sub_1B80C8AEC();
  }
}

uint64_t sub_1B7FFDAB8(_OWORD *a1)
{
  *(v2 + 200) = v1;
  *(v2 + 208) = *v1;
  v3 = a1[9];
  *(v2 + 144) = a1[8];
  *(v2 + 160) = v3;
  *(v2 + 176) = a1[10];
  v4 = a1[5];
  *(v2 + 80) = a1[4];
  *(v2 + 96) = v4;
  v5 = a1[7];
  *(v2 + 112) = a1[6];
  *(v2 + 128) = v5;
  v6 = a1[1];
  *(v2 + 16) = *a1;
  *(v2 + 32) = v6;
  v7 = a1[3];
  *(v2 + 48) = a1[2];
  *(v2 + 64) = v7;
  return MEMORY[0x1EEE6DFA0](sub_1B7FFDB30, v1, 0);
}

uint64_t sub_1B7FFDB30()
{
  v2 = v0[25];
  v1 = v0[26];
  v3 = swift_task_alloc();
  v0[27] = v3;
  v3[2] = v2;
  v3[3] = v0 + 2;
  v3[4] = v1;
  v4 = swift_task_alloc();
  v0[28] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66010, &qword_1B80D29E0);
  *v4 = v0;
  v4[1] = sub_1B7FFDC40;

  return MEMORY[0x1EEE04418](v0 + 24, 0x656B6F5472656570, 0xEF293A726F66286ELL, sub_1B8011C70, v3, v5);
}

uint64_t sub_1B7FFDC40()
{
  v2 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    v3 = *(v2 + 200);
    v4 = sub_1B7FFDD84;
  }

  else
  {
    v5 = *(v2 + 200);

    v4 = sub_1B7FFDD68;
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1B7FFDD84()
{

  v1 = *(v0 + 8);

  return v1();
}

double sub_1B7FFDDE8(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA66000, &unk_1B80D2630);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v22[-v12];
  v14 = sub_1B80C92CC();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  *(v15 + 32) = a2;
  *(v15 + 40) = a1;
  v16 = a3[9];
  *(v15 + 176) = a3[8];
  *(v15 + 192) = v16;
  *(v15 + 208) = a3[10];
  v17 = a3[5];
  *(v15 + 112) = a3[4];
  *(v15 + 128) = v17;
  v18 = a3[7];
  *(v15 + 144) = a3[6];
  *(v15 + 160) = v18;
  v19 = a3[1];
  *(v15 + 48) = *a3;
  *(v15 + 64) = v19;
  v20 = a3[3];
  *(v15 + 80) = a3[2];
  *(v15 + 96) = v20;
  *(v15 + 224) = a4;

  sub_1B7FC8DA4(a3, v22);
  sub_1B80A1D3C(0, 0, v13, a6, v15);

  return result;
}

uint64_t sub_1B7FFDF50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[56] = a6;
  v7[57] = a7;
  v7[54] = a4;
  v7[55] = a5;
  return MEMORY[0x1EEE6DFA0](sub_1B7FFDF74, 0, 0);
}

uint64_t sub_1B7FFDF74()
{

  v1 = swift_task_alloc();
  *(v0 + 464) = v1;
  v2 = _s20FriendshipConnectionCMa(0);
  v3 = sub_1B8011BA4(&qword_1ED8DD4B8, _s20FriendshipConnectionCMa, &unk_1B80D25B0);
  *v1 = v0;
  v1[1] = sub_1B7FFE080;
  v4 = *(v0 + 440);

  return MEMORY[0x1EEE04428](v0 + 416, sub_1B8011C68, v4, v2, v3);
}

uint64_t sub_1B7FFE080()
{
  *(*v1 + 472) = v0;

  if (v0)
  {
    v2 = sub_1B7FFE574;
  }

  else
  {

    v2 = sub_1B7FFE19C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B7FFE19C()
{
  v41 = v0;
  v1 = *(v0 + 472);
  v2 = *(v0 + 448);
  v3 = *(v0 + 416);
  sub_1B80C8CEC();
  swift_allocObject();
  sub_1B80C8CDC();
  v5 = v2[1];
  v4 = v2[2];
  *(v0 + 16) = *v2;
  *(v0 + 32) = v5;
  *(v0 + 48) = v4;
  v6 = v2[6];
  v8 = v2[3];
  v7 = v2[4];
  *(v0 + 96) = v2[5];
  *(v0 + 112) = v6;
  *(v0 + 64) = v8;
  *(v0 + 80) = v7;
  v9 = v2[10];
  v11 = v2[7];
  v10 = v2[8];
  *(v0 + 160) = v2[9];
  *(v0 + 176) = v9;
  *(v0 + 128) = v11;
  *(v0 + 144) = v10;
  sub_1B7FDC224();
  v12 = sub_1B80C8CCC();
  if (v1)
  {

    swift_unknownObjectRelease();
    if (qword_1ED8DD6D0 != -1)
    {
      swift_once();
    }

    v14 = sub_1B80C900C();
    __swift_project_value_buffer(v14, qword_1ED8DDE78);
    v15 = v1;
    v16 = sub_1B80C8FEC();
    v17 = sub_1B80C93FC();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v40 = v20;
      *v18 = 136446466;
      *(v18 + 4) = sub_1B7FB84FC(0x656B6F5472656570, 0xEF293A726F66286ELL, &v40);
      *(v18 + 12) = 2114;
      v21 = sub_1B80C8CFC();
      *(v18 + 14) = v21;
      *v19 = v21;
      _os_log_impl(&dword_1B7FB5000, v16, v17, "Failed to create proxy in %{public}s: %{public}@", v18, 0x16u);
      sub_1B7FB86D4(v19, &qword_1EBA65EE8, &qword_1B80D2478);
      MEMORY[0x1B8CB8970](v19, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x1B8CB8970](v20, -1, -1);
      MEMORY[0x1B8CB8970](v18, -1, -1);
    }

    *(v0 + 424) = v1;
    sub_1B80C8ACC();
  }

  else
  {
    v22 = *(v0 + 448);
    v23 = *(v0 + 456);
    v24 = *(v0 + 440);
    v25 = v12;
    v26 = v13;

    v27 = sub_1B80C8D1C();
    v28 = swift_allocObject();
    *(v28 + 16) = v24;
    v29 = *v22;
    v30 = v22[1];
    *(v28 + 56) = v22[2];
    *(v28 + 40) = v30;
    *(v28 + 24) = v29;
    v31 = v22[3];
    v32 = v22[4];
    v33 = v22[5];
    *(v28 + 120) = v22[6];
    *(v28 + 104) = v33;
    *(v28 + 88) = v32;
    *(v28 + 72) = v31;
    v34 = v22[7];
    v35 = v22[8];
    v36 = v22[9];
    *(v28 + 184) = v22[10];
    *(v28 + 168) = v36;
    *(v28 + 152) = v35;
    *(v28 + 136) = v34;
    *(v28 + 200) = v23;
    *(v0 + 400) = sub_1B8010244;
    *(v0 + 408) = v28;
    *(v0 + 368) = MEMORY[0x1E69E9820];
    *(v0 + 376) = 1107296256;
    *(v0 + 384) = sub_1B7FC5CCC;
    *(v0 + 392) = &block_descriptor_112;
    v37 = _Block_copy((v0 + 368));

    sub_1B7FC8DA4(v22, v0 + 192);

    [v3 peerTokenWithHandle:v27 completion:v37];
    _Block_release(v37);

    sub_1B7FC3CCC(v25, v26);
    swift_unknownObjectRelease();
  }

  v38 = *(v0 + 8);

  return v38();
}

uint64_t sub_1B7FFE574()
{
  v13 = v0;

  v1 = v0[59];
  if (qword_1ED8DD6D0 != -1)
  {
    swift_once();
  }

  v2 = sub_1B80C900C();
  __swift_project_value_buffer(v2, qword_1ED8DDE78);
  v3 = v1;
  v4 = sub_1B80C8FEC();
  v5 = sub_1B80C93FC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v6 = 136446466;
    *(v6 + 4) = sub_1B7FB84FC(0x656B6F5472656570, 0xEF293A726F66286ELL, &v12);
    *(v6 + 12) = 2114;
    v9 = sub_1B80C8CFC();
    *(v6 + 14) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1B7FB5000, v4, v5, "Failed to create proxy in %{public}s: %{public}@", v6, 0x16u);
    sub_1B7FB86D4(v7, &qword_1EBA65EE8, &qword_1B80D2478);
    MEMORY[0x1B8CB8970](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1B8CB8970](v8, -1, -1);
    MEMORY[0x1B8CB8970](v6, -1, -1);
  }

  v0[53] = v1;
  sub_1B80C8ACC();

  v10 = v0[1];

  return v10();
}

void sub_1B7FFE77C(uint64_t a1, unint64_t a2, id a3, uint64_t a4, uint64_t *a5)
{
  if (a3)
  {
    v5 = a3;
    v6 = a3;
    if (qword_1ED8DD6D0 != -1)
    {
      swift_once();
    }

    v7 = sub_1B80C900C();
    __swift_project_value_buffer(v7, qword_1ED8DDE78);
    v8 = v5;
    v9 = sub_1B80C8FEC();
    v10 = sub_1B80C93FC();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v37[0] = v12;
      *v11 = 136446466;
      *(v11 + 4) = sub_1B7FB84FC(0x656B6F5472656570, 0xEF293A726F66286ELL, v37);
      *(v11 + 12) = 2082;
      v13 = v5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65FC0, &unk_1B80D2430);
      v14 = sub_1B80C90EC();
      v16 = sub_1B7FB84FC(v14, v15, v37);

      *(v11 + 14) = v16;
      _os_log_impl(&dword_1B7FB5000, v9, v10, "%{public}s error %{public}s!", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B8CB8970](v12, -1, -1);
      MEMORY[0x1B8CB8970](v11, -1, -1);
    }

    v37[0] = v5;
LABEL_13:
    sub_1B80C8ACC();

    return;
  }

  if (a2 >> 60 == 15)
  {
    if (qword_1ED8DD6D0 != -1)
    {
      swift_once();
    }

    v17 = sub_1B80C900C();
    __swift_project_value_buffer(v17, qword_1ED8DDE78);
    v18 = sub_1B80C8FEC();
    v19 = sub_1B80C93FC();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v37[0] = v21;
      *v20 = 136446210;
      *(v20 + 4) = sub_1B7FB84FC(0x656B6F5472656570, 0xEF293A726F66286ELL, v37);
      _os_log_impl(&dword_1B7FB5000, v18, v19, "Received nil response for %{public}s!", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x1B8CB8970](v21, -1, -1);
      MEMORY[0x1B8CB8970](v20, -1, -1);
    }

    sub_1B8010040();
    v5 = swift_allocError();
    *v22 = 1;
    v37[0] = v5;
    goto LABEL_13;
  }

  sub_1B7FBFCCC(0, &qword_1EBA65D40, 0x1E696ACD0);
  sub_1B7FBFCCC(0, &qword_1EBA65D48, 0x1E6977A98);
  sub_1B7FC62D8(a1, a2);
  v26 = a1;
  v36 = a2;
  v27 = sub_1B80C943C();
  if (qword_1ED8DD6D0 != -1)
  {
    swift_once();
  }

  v28 = sub_1B80C900C();
  __swift_project_value_buffer(v28, qword_1ED8DDE78);
  sub_1B7FC8DA4(a5, v37);
  v29 = v27;
  v30 = sub_1B80C8FEC();
  v31 = sub_1B80C941C();
  sub_1B7FCAD28(a5);

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v37[0] = v34;
    *v32 = 136446979;
    *(v32 + 4) = sub_1B7FB84FC(0x656B6F5472656570, 0xEF293A726F66286ELL, v37);
    *(v32 + 12) = 2160;
    *(v32 + 14) = 1752392040;
    *(v32 + 22) = 2081;
    *(v32 + 24) = sub_1B7FB84FC(*a5, a5[1], v37);
    *(v32 + 32) = 2112;
    *(v32 + 34) = v29;
    *v33 = v27;
    v35 = v29;
    _os_log_impl(&dword_1B7FB5000, v30, v31, "%{public}s for %{private,mask.hash}s succeeded: %@.", v32, 0x2Au);
    sub_1B7FB86D4(v33, &qword_1EBA65EE8, &qword_1B80D2478);
    MEMORY[0x1B8CB8970](v33, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x1B8CB8970](v34, -1, -1);
    MEMORY[0x1B8CB8970](v32, -1, -1);
  }

  v37[0] = v27;
  sub_1B80C8ADC();
  sub_1B7FC72F8(v26, v36);
}

uint64_t sub_1B7FFEF04()
{
  *(v1 + 24) = v0;
  *(v1 + 32) = *v0;
  return MEMORY[0x1EEE6DFA0](sub_1B7FFEF4C, v0, 0);
}

uint64_t sub_1B7FFEF4C()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[6] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66010, &qword_1B80D29E0);
  *v4 = v0;
  v4[1] = sub_1B7FFF050;

  return MEMORY[0x1EEE04418](v0 + 2, 0x6B6F5472656E776FLL, 0xEC00000029286E65, sub_1B8011CF0, v3, v5);
}

uint64_t sub_1B7FFF050()
{
  v2 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = *(v2 + 24);
    v4 = sub_1B7FFF194;
  }

  else
  {
    v5 = *(v2 + 24);

    v4 = sub_1B7FFF178;
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1B7FFF194()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B7FFF1F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[10] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1B7FFF21C, 0, 0);
}

uint64_t sub_1B7FFF21C()
{

  v1 = swift_task_alloc();
  *(v0 + 104) = v1;
  v2 = _s20FriendshipConnectionCMa(0);
  v3 = sub_1B8011BA4(&qword_1ED8DD4B8, _s20FriendshipConnectionCMa, &unk_1B80D25B0);
  *v1 = v0;
  v1[1] = sub_1B7FFF328;
  v4 = *(v0 + 88);

  return MEMORY[0x1EEE04428](v0 + 64, sub_1B8011C68, v4, v2, v3);
}

uint64_t sub_1B7FFF328()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_1B7FFF568;
  }

  else
  {

    v2 = sub_1B7FFF444;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B7FFF444()
{
  v1 = *(v0 + 64);
  v2 = swift_allocObject();
  *(v2 + 16) = *(v0 + 88);
  *(v0 + 48) = sub_1B8010038;
  *(v0 + 56) = v2;
  *(v0 + 16) = MEMORY[0x1E69E9820];
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = sub_1B7FC5CCC;
  *(v0 + 40) = &block_descriptor_99;
  v3 = _Block_copy((v0 + 16));

  [v1 ownerTokenWithCompletion_];
  _Block_release(v3);
  swift_unknownObjectRelease();
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1B7FFF568()
{
  v14 = v0;

  if (qword_1ED8DD6D0 != -1)
  {
    swift_once();
  }

  v1 = v0[14];
  v2 = sub_1B80C900C();
  __swift_project_value_buffer(v2, qword_1ED8DDE78);
  v3 = v1;
  v4 = sub_1B80C8FEC();
  v5 = sub_1B80C93FC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v6 = 136446466;
    *(v6 + 4) = sub_1B7FB84FC(0x6B6F5472656E776FLL, 0xEC00000029286E65, &v13);
    *(v6 + 12) = 2114;
    v9 = sub_1B80C8CFC();
    *(v6 + 14) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1B7FB5000, v4, v5, "Failed to create proxy in %{public}s: %{public}@", v6, 0x16u);
    sub_1B7FB86D4(v7, &qword_1EBA65EE8, &qword_1B80D2478);
    MEMORY[0x1B8CB8970](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1B8CB8970](v8, -1, -1);
    MEMORY[0x1B8CB8970](v6, -1, -1);
  }

  v10 = v0[14];
  v0[9] = v10;
  sub_1B80C8ACC();

  v11 = v0[1];

  return v11();
}

void sub_1B7FFF774(uint64_t a1, unint64_t a2, id a3)
{
  if (a3)
  {
    v3 = a3;
    v4 = a3;
    if (qword_1ED8DD6D0 != -1)
    {
      swift_once();
    }

    v5 = sub_1B80C900C();
    __swift_project_value_buffer(v5, qword_1ED8DDE78);
    v6 = v3;
    v7 = sub_1B80C8FEC();
    v8 = sub_1B80C93FC();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v34 = v10;
      *v9 = 136446466;
      *(v9 + 4) = sub_1B7FB84FC(0x6B6F5472656E776FLL, 0xEC00000029286E65, &v34);
      *(v9 + 12) = 2082;
      v11 = v3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65FC0, &unk_1B80D2430);
      v12 = sub_1B80C90EC();
      v14 = sub_1B7FB84FC(v12, v13, &v34);

      *(v9 + 14) = v14;
      _os_log_impl(&dword_1B7FB5000, v7, v8, "%{public}s error %{public}s!", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B8CB8970](v10, -1, -1);
      MEMORY[0x1B8CB8970](v9, -1, -1);
    }

    v34 = v3;
LABEL_13:
    sub_1B80C8ACC();

    return;
  }

  if (a2 >> 60 == 15)
  {
    if (qword_1ED8DD6D0 != -1)
    {
      swift_once();
    }

    v15 = sub_1B80C900C();
    __swift_project_value_buffer(v15, qword_1ED8DDE78);
    v16 = sub_1B80C8FEC();
    v17 = sub_1B80C93FC();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v34 = v19;
      *v18 = 136446210;
      *(v18 + 4) = sub_1B7FB84FC(0x6B6F5472656E776FLL, 0xEC00000029286E65, &v34);
      _os_log_impl(&dword_1B7FB5000, v16, v17, "Received nil response for %{public}s!", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x1B8CB8970](v19, -1, -1);
      MEMORY[0x1B8CB8970](v18, -1, -1);
    }

    sub_1B8010040();
    v3 = swift_allocError();
    *v20 = 1;
    v34 = v3;
    goto LABEL_13;
  }

  sub_1B7FBFCCC(0, &qword_1EBA65D40, 0x1E696ACD0);
  sub_1B7FBFCCC(0, &qword_1EBA65D48, 0x1E6977A98);
  sub_1B7FC62D8(a1, a2);
  v23 = a1;
  v24 = a2;
  v25 = sub_1B80C943C();
  if (qword_1ED8DD6D0 != -1)
  {
    swift_once();
  }

  v26 = sub_1B80C900C();
  __swift_project_value_buffer(v26, qword_1ED8DDE78);
  v27 = v25;
  v28 = sub_1B80C8FEC();
  v29 = sub_1B80C941C();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v34 = v32;
    *v30 = 136446466;
    *(v30 + 4) = sub_1B7FB84FC(0x6B6F5472656E776FLL, 0xEC00000029286E65, &v34);
    *(v30 + 12) = 2112;
    *(v30 + 14) = v27;
    *v31 = v25;
    v33 = v27;
    _os_log_impl(&dword_1B7FB5000, v28, v29, "%{public}s succeeded: %@", v30, 0x16u);
    sub_1B7FB86D4(v31, &qword_1EBA65EE8, &qword_1B80D2478);
    MEMORY[0x1B8CB8970](v31, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v32);
    MEMORY[0x1B8CB8970](v32, -1, -1);
    MEMORY[0x1B8CB8970](v30, -1, -1);
  }

  v34 = v25;
  sub_1B80C8ADC();
  sub_1B7FC72F8(v23, v24);
}

uint64_t sub_1B7FFFE78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[10] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1B7FFFE9C, 0, 0);
}

uint64_t sub_1B7FFFE9C()
{
  v1 = swift_allocObject();
  *(v0 + 104) = v1;
  *(v1 + 16) = *(v0 + 88);

  v2 = swift_task_alloc();
  *(v0 + 112) = v2;
  v3 = _s20FriendshipConnectionCMa(0);
  v4 = sub_1B8011BA4(&qword_1ED8DD4B8, _s20FriendshipConnectionCMa, &unk_1B80D25B0);
  *v2 = v0;
  v2[1] = sub_1B7FFFFD0;

  return MEMORY[0x1EEE04428](v0 + 64, sub_1B8011144, v1, v3, v4);
}

uint64_t sub_1B7FFFFD0()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_1B8000210;
  }

  else
  {

    v2 = sub_1B80000EC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B80000EC()
{
  v1 = *(v0 + 64);
  v2 = swift_allocObject();
  *(v2 + 16) = *(v0 + 88);
  *(v0 + 48) = sub_1B801114C;
  *(v0 + 56) = v2;
  *(v0 + 16) = MEMORY[0x1E69E9820];
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = sub_1B7FCE114;
  *(v0 + 40) = &block_descriptor_243;
  v3 = _Block_copy((v0 + 16));

  [v1 startFriendsUpdateWithCompletion_];
  _Block_release(v3);
  swift_unknownObjectRelease();
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1B8000210()
{
  v14 = v0;

  if (qword_1ED8DD6D0 != -1)
  {
    swift_once();
  }

  v1 = v0[15];
  v2 = sub_1B80C900C();
  __swift_project_value_buffer(v2, qword_1ED8DDE78);
  v3 = v1;
  v4 = sub_1B80C8FEC();
  v5 = sub_1B80C93FC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v6 = 136446466;
    *(v6 + 4) = sub_1B7FB84FC(0xD000000000000014, 0x80000001B80CC480, &v13);
    *(v6 + 12) = 2114;
    v9 = sub_1B80C8CFC();
    *(v6 + 14) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1B7FB5000, v4, v5, "Failed to create proxy in %{public}s: %{public}@", v6, 0x16u);
    sub_1B7FB86D4(v7, &qword_1EBA65EE8, &qword_1B80D2478);
    MEMORY[0x1B8CB8970](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1B8CB8970](v8, -1, -1);
    MEMORY[0x1B8CB8970](v6, -1, -1);
  }

  v10 = v0[15];
  v0[9] = v10;
  sub_1B80C8ACC();

  v11 = v0[1];

  return v11();
}