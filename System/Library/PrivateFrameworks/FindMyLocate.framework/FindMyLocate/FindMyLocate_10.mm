uint64_t sub_1B80ACBF0()
{
  v2 = *v1;
  *(v2 + 88) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B80ACD34, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t Session.stopRefreshingLocation(forHandles:priority:clientID:)(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 16) = a1;
  *(v4 + 65) = *a2;
  return MEMORY[0x1EEE6DFA0](sub_1B80ACD78, 0, 0);
}

uint64_t sub_1B80ACD78()
{
  v39 = v0;
  if (qword_1ED8DD6B0 != -1)
  {
    swift_once();
  }

  v1 = sub_1B80C900C();
  __swift_project_value_buffer(v1, qword_1ED8DDE50);

  v2 = sub_1B80C8FEC();
  v3 = sub_1B80C941C();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 16);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v37 = v6;
    *v5 = 136446979;
    *(v5 + 4) = sub_1B7FB84FC(0xD000000000000035, 0x80000001B80CE6C0, &v37);
    *(v5 + 12) = 2160;
    *(v5 + 14) = 1752392040;
    *(v5 + 22) = 2081;
    v7 = *(v4 + 16);
    v8 = MEMORY[0x1E69E7CC0];
    if (v7)
    {
      v33 = v6;
      v34 = v3;
      v35 = v5;
      v36 = v2;
      v9 = *(v0 + 16);
      *v38 = MEMORY[0x1E69E7CC0];
      sub_1B7FCF988(0, v7, 0);
      v8 = *v38;
      v10 = *(*v38 + 16);
      v11 = 16 * v10;
      v12 = (v9 + 40);
      do
      {
        v13 = *(v12 - 1);
        v14 = *v12;
        *v38 = v8;
        v15 = *(v8 + 24);

        if (v10 >= v15 >> 1)
        {
          sub_1B7FCF988((v15 > 1), v10 + 1, 1);
          v8 = *v38;
        }

        *(v8 + 16) = v10 + 1;
        v16 = v8 + v11;
        *(v16 + 32) = v13;
        *(v16 + 40) = v14;
        v11 += 16;
        v12 += 22;
        ++v10;
        --v7;
      }

      while (v7);
      v2 = v36;
      v5 = v35;
      v3 = v34;
      v6 = v33;
    }

    v17 = *(v0 + 65);
    v18 = MEMORY[0x1B8CB7B30](v8, MEMORY[0x1E69E6158]);
    v20 = v19;

    v21 = sub_1B7FB84FC(v18, v20, &v37);

    *(v5 + 24) = v21;
    *(v5 + 32) = 2082;
    v22 = 0xE800000000000000;
    v23 = 0x776F6C6C6168732ELL;
    v24 = 0xE500000000000000;
    v25 = 0x6576696C2ELL;
    if (v17 != 2)
    {
      v25 = 0xD000000000000014;
      v24 = 0x80000001B80CBF40;
    }

    if (!v17)
    {
      v23 = 0xD000000000000015;
      v22 = 0x80000001B80CBFD0;
    }

    if (v17 <= 1)
    {
      v26 = v23;
    }

    else
    {
      v26 = v25;
    }

    if (v17 <= 1)
    {
      v27 = v22;
    }

    else
    {
      v27 = v24;
    }

    v28 = sub_1B7FB84FC(v26, v27, &v37);

    *(v5 + 34) = v28;
    _os_log_impl(&dword_1B7FB5000, v2, v3, "%{public}s for %{private,mask.hash}s priority: %{public}s", v5, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x1B8CB8970](v6, -1, -1);
    MEMORY[0x1B8CB8970](v5, -1, -1);
  }

  if (*(*(v0 + 16) + 16))
  {
    v38[0] = 0;
    _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(v38);
    v29 = swift_task_alloc();
    *(v0 + 40) = v29;
    *v29 = v0;
    v29[1] = sub_1B80AD1A0;

    return sub_1B7FC225C();
  }

  else
  {
    sub_1B8010040();
    swift_allocError();
    *v31 = 3;
    swift_willThrow();
    v32 = *(v0 + 8);

    return v32();
  }
}

uint64_t sub_1B80AD1A0()
{

  return MEMORY[0x1EEE6DFA0](sub_1B80AD29C, 0, 0);
}

uint64_t sub_1B80AD29C()
{
  *(v0 + 64) = *(v0 + 65);
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_1B80AD348;
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);

  return sub_1B801A6B8(v3, (v0 + 64), v2);
}

uint64_t sub_1B80AD348()
{
  v2 = *v1;
  *(v2 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B80AD47C, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t Session.stopRefreshingLocation(clientID:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B80AD4B4, 0, 0);
}

uint64_t sub_1B80AD4B4()
{
  v10 = v0;
  if (qword_1ED8DD6B0 != -1)
  {
    swift_once();
  }

  v1 = sub_1B80C900C();
  __swift_project_value_buffer(v1, qword_1ED8DDE50);
  v2 = sub_1B80C8FEC();
  v3 = sub_1B80C941C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v9 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_1B7FB84FC(0xD000000000000021, 0x80000001B80CCC50, &v9);
    _os_log_impl(&dword_1B7FB5000, v2, v3, "%{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x1B8CB8970](v5, -1, -1);
    MEMORY[0x1B8CB8970](v4, -1, -1);
  }

  v8 = 0;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v8);
  v6 = swift_task_alloc();
  *(v0 + 32) = v6;
  *v6 = v0;
  v6[1] = sub_1B80AD66C;

  return sub_1B7FC225C();
}

uint64_t sub_1B80AD66C()
{

  return MEMORY[0x1EEE6DFA0](sub_1B80AD768, 0, 0);
}

uint64_t sub_1B80AD768()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_1B7FCE788;
  v2 = *(v0 + 16);

  return sub_1B801B980(v2);
}

uint64_t Session.cachedLocation(for:includeAddress:)(uint64_t a1, char a2)
{
  *(v3 + 48) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  return MEMORY[0x1EEE6DFA0](sub_1B80AD828, 0, 0);
}

uint64_t sub_1B80AD828()
{
  v30 = v0;
  v1 = *(*(v0 + 16) + 16);
  if (v1)
  {
    if (qword_1ED8DD6B0 != -1)
    {
      swift_once();
    }

    v2 = sub_1B80C900C();
    __swift_project_value_buffer(v2, qword_1ED8DDE50);

    v3 = sub_1B80C8FEC();
    v4 = sub_1B80C941C();

    if (os_log_type_enabled(v3, v4))
    {
      v26 = v4;
      log = v3;
      v5 = *(v0 + 16);
      v6 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v28 = v24;
      *v6 = 141558531;
      *(v6 + 4) = 1752392040;
      buf = v6;
      *(v6 + 12) = 2081;
      *v29 = MEMORY[0x1E69E7CC0];
      sub_1B7FCF988(0, v1, 0);
      v7 = *v29;
      v8 = *(*v29 + 16);
      v9 = 16 * v8;
      v10 = (v5 + 40);
      do
      {
        v11 = *(v10 - 1);
        v12 = *v10;
        *v29 = v7;
        v13 = *(v7 + 24);

        if (v8 >= v13 >> 1)
        {
          sub_1B7FCF988((v13 > 1), v8 + 1, 1);
          v7 = *v29;
        }

        *(v7 + 16) = v8 + 1;
        v14 = v7 + v9;
        *(v14 + 32) = v11;
        *(v14 + 40) = v12;
        v9 += 16;
        v10 += 22;
        ++v8;
        --v1;
      }

      while (v1);
      v18 = *(v0 + 48);
      v19 = MEMORY[0x1B8CB7B30](v7, MEMORY[0x1E69E6158]);
      v21 = v20;

      v22 = sub_1B7FB84FC(v19, v21, &v28);

      *(buf + 14) = v22;
      *(buf + 11) = 1024;
      *(buf + 6) = v18;
      v3 = log;
      _os_log_impl(&dword_1B7FB5000, log, v26, "cachedLocation for %{private,mask.hash}s, includeAddress: %{BOOL}d", buf, 0x1Cu);
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x1B8CB8970](v24, -1, -1);
      MEMORY[0x1B8CB8970](buf, -1, -1);
    }

    v29[0] = 0;
    _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(v29);
    v23 = swift_task_alloc();
    *(v0 + 32) = v23;
    *v23 = v0;
    v23[1] = sub_1B80ADB74;

    return sub_1B7FC225C();
  }

  else
  {
    sub_1B8010040();
    swift_allocError();
    *v15 = 3;
    swift_willThrow();
    v16 = *(v0 + 8);

    return v16();
  }
}

uint64_t sub_1B80ADB74()
{

  return MEMORY[0x1EEE6DFA0](sub_1B80ADC70, 0, 0);
}

uint64_t sub_1B80ADC70()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_1B80ADD14;
  v2 = *(v0 + 48);
  v3 = *(v0 + 16);

  return sub_1B8021E30(v3, v2, 1);
}

uint64_t sub_1B80ADD14(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t Session.locations(for:reverseGeocode:)(uint64_t a1, char a2)
{
  *(v3 + 728) = v2;
  *(v3 + 824) = a2;
  *(v3 + 720) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B80ADE3C, 0, 0);
}

uint64_t sub_1B80ADE3C()
{
  v36 = v0;
  v1 = *(v0 + 720);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    do
    {
      v4 = *(v0 + 824);
      v6 = v3[1];
      v5 = v3[2];
      *(v0 + 16) = *v3;
      *(v0 + 32) = v6;
      *(v0 + 48) = v5;
      v7 = v3[6];
      v9 = v3[3];
      v8 = v3[4];
      *(v0 + 96) = v3[5];
      *(v0 + 112) = v7;
      *(v0 + 64) = v9;
      *(v0 + 80) = v8;
      v10 = v3[10];
      v12 = v3[7];
      v11 = v3[8];
      *(v0 + 160) = v3[9];
      *(v0 + 176) = v10;
      *(v0 + 128) = v12;
      *(v0 + 144) = v11;
      v13 = v3[9];
      v33 = v3[8];
      v34 = v13;
      v35 = v3[10];
      v14 = v3[5];
      v29 = v3[4];
      v30 = v14;
      v15 = v3[7];
      v31 = v3[6];
      v32 = v15;
      v16 = v3[1];
      v25 = *v3;
      v26 = v16;
      v17 = v3[3];
      v27 = v3[2];
      v28 = v17;
      sub_1B7FC8DA4(v0 + 16, v0 + 192);
      sub_1B80B6254(&v25, v4);
      v18 = v34;
      *(v0 + 672) = v33;
      *(v0 + 688) = v18;
      *(v0 + 704) = v35;
      v19 = v30;
      *(v0 + 608) = v29;
      *(v0 + 624) = v19;
      v20 = v32;
      *(v0 + 640) = v31;
      *(v0 + 656) = v20;
      v21 = v26;
      *(v0 + 544) = v25;
      *(v0 + 560) = v21;
      v22 = v28;
      *(v0 + 576) = v27;
      *(v0 + 592) = v22;
      sub_1B7FCAD28(v0 + 544);
      v3 += 11;
      --v2;
    }

    while (v2);
  }

  LOBYTE(v25) = 0;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v25);
  v23 = swift_task_alloc();
  *(v0 + 736) = v23;
  *v23 = v0;
  v23[1] = sub_1B80AE024;

  return sub_1B7FC225C();
}

uint64_t sub_1B80AE024()
{

  return MEMORY[0x1EEE6DFA0](sub_1B80AE120, 0, 0);
}

uint64_t sub_1B80AE120()
{
  v0[93] = *(v0[91] + 56);
  v1 = swift_task_alloc();
  v0[94] = v1;
  *v1 = v0;
  v1[1] = sub_1B80AE1C0;
  v2 = v0[90];

  return sub_1B803A944(v2);
}

uint64_t sub_1B80AE1C0(uint64_t a1)
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
    *(v4 + 760) = a1;

    return MEMORY[0x1EEE6DFA0](sub_1B80AE30C, 0, 0);
  }
}

uint64_t sub_1B80AE30C()
{
  v4 = v0;
  v3 = 0;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v3);
  v1 = swift_task_alloc();
  *(v0 + 768) = v1;
  *v1 = v0;
  v1[1] = sub_1B80AE3A8;

  return sub_1B7FC225C();
}

uint64_t sub_1B80AE3A8()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 776) = v3;
  *v3 = v2;
  v3[1] = sub_1B80AE500;
  v4 = *(v1 + 760);

  return sub_1B80283B4(v4);
}

uint64_t sub_1B80AE500(uint64_t a1)
{
  *(*v1 + 784) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1B80AE620, 0, 0);
}

uint64_t sub_1B80AE620()
{
  v13 = v0;
  if (qword_1ED8DD6B0 != -1)
  {
    swift_once();
  }

  v1 = sub_1B80C900C();
  *(v0 + 792) = __swift_project_value_buffer(v1, qword_1ED8DDE50);

  v2 = sub_1B80C8FEC();
  v3 = sub_1B80C941C();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136446466;
    *(v4 + 4) = sub_1B7FB84FC(0xD00000000000001ELL, 0x80000001B80CCBF0, &v12);
    *(v4 + 12) = 2080;
    type metadata accessor for Location(0);
    sub_1B8032C04();
    v6 = sub_1B80C902C();
    v8 = sub_1B7FB84FC(v6, v7, &v12);

    *(v4 + 14) = v8;
    _os_log_impl(&dword_1B7FB5000, v2, v3, "%{public}s Cached (on-disk) locations: %s", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B8CB8970](v5, -1, -1);
    MEMORY[0x1B8CB8970](v4, -1, -1);
  }

  v11 = 0;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v11);
  v9 = swift_task_alloc();
  *(v0 + 800) = v9;
  *v9 = v0;
  v9[1] = sub_1B80AE858;

  return sub_1B7FC225C();
}

uint64_t sub_1B80AE858()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 808) = v3;
  *v3 = v2;
  v3[1] = sub_1B80AE9B4;
  v4 = *(v1 + 784);
  v5 = *(v1 + 824);

  return sub_1B8029930(v4, v5);
}

uint64_t sub_1B80AE9B4(uint64_t a1)
{
  *(*v1 + 816) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1B80AEAD4, 0, 0);
}

uint64_t sub_1B80AEAD4()
{
  v13 = v0;

  v1 = sub_1B80C8FEC();
  v2 = sub_1B80C941C();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 824);
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136446722;
    *(v4 + 4) = sub_1B7FB84FC(0xD00000000000001ELL, 0x80000001B80CCBF0, &v12);
    *(v4 + 12) = 1024;
    *(v4 + 14) = v3;
    *(v4 + 18) = 2080;
    type metadata accessor for Location(0);
    sub_1B8032C04();
    v6 = sub_1B80C902C();
    v8 = sub_1B7FB84FC(v6, v7, &v12);

    *(v4 + 20) = v8;
    _os_log_impl(&dword_1B7FB5000, v1, v2, "%{public}s reverseGeocode:%{BOOL}d:  location:%s", v4, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x1B8CB8970](v5, -1, -1);
    MEMORY[0x1B8CB8970](v4, -1, -1);
  }

  v9 = *(v0 + 8);
  v10 = *(v0 + 816);

  return v9(v10);
}

uint64_t Session.latestLocations(for:includeAddress:clientID:)(uint64_t a1, char a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 128) = a2;
  *(v4 + 16) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B80AECC0, 0, 0);
}

uint64_t sub_1B80AECC0()
{
  v31 = v0;
  v1 = v0;
  if (qword_1ED8DD6B0 != -1)
  {
    swift_once();
  }

  v2 = sub_1B80C900C();
  *(v0 + 40) = __swift_project_value_buffer(v2, qword_1ED8DDE50);

  v3 = sub_1B80C8FEC();
  v4 = sub_1B80C941C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 16);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v29 = v7;
    *v6 = 136446979;
    *(v6 + 4) = sub_1B7FB84FC(0xD00000000000002DLL, 0x80000001B80CE700, &v29);
    *(v6 + 12) = 2160;
    *(v6 + 14) = 1752392040;
    *(v6 + 22) = 2081;
    v8 = *(v5 + 16);
    v9 = MEMORY[0x1E69E7CC0];
    if (v8)
    {
      v25 = v7;
      v26 = v4;
      v27 = v3;
      v28 = v0;
      v10 = *(v0 + 16);
      v30 = MEMORY[0x1E69E7CC0];
      sub_1B7FCF988(0, v8, 0);
      v9 = v30;
      v11 = *(v30 + 16);
      v12 = 16 * v11;
      v13 = (v10 + 40);
      do
      {
        v14 = *(v13 - 1);
        v15 = *v13;
        v30 = v9;
        v16 = *(v9 + 24);

        if (v11 >= v16 >> 1)
        {
          sub_1B7FCF988((v16 > 1), v11 + 1, 1);
          v9 = v30;
        }

        *(v9 + 16) = v11 + 1;
        v17 = v9 + v12;
        *(v17 + 32) = v14;
        *(v17 + 40) = v15;
        v12 += 16;
        v13 += 22;
        ++v11;
        --v8;
      }

      while (v8);
      v3 = v27;
      v1 = v28;
      v4 = v26;
      v7 = v25;
    }

    v18 = *(v1 + 128);
    v19 = MEMORY[0x1B8CB7B30](v9, MEMORY[0x1E69E6158]);
    v21 = v20;

    v22 = sub_1B7FB84FC(v19, v21, &v29);

    *(v6 + 24) = v22;
    *(v6 + 32) = 1024;
    *(v6 + 34) = v18;
    _os_log_impl(&dword_1B7FB5000, v3, v4, "%{public}s handles: %{private,mask.hash}s includeAddress: %{BOOL}d", v6, 0x26u);
    swift_arrayDestroy();
    MEMORY[0x1B8CB8970](v7, -1, -1);
    MEMORY[0x1B8CB8970](v6, -1, -1);
  }

  LOBYTE(v30) = 0;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v30);
  v23 = swift_task_alloc();
  *(v1 + 48) = v23;
  *v23 = v1;
  v23[1] = sub_1B80AEFDC;

  return sub_1B7FC225C();
}

uint64_t sub_1B80AEFDC()
{

  return MEMORY[0x1EEE6DFA0](sub_1B80AF0D8, 0, 0);
}

uint64_t sub_1B80AF0D8()
{
  v0[7] = *(v0[4] + 56);
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_1B80AF178;
  v3 = v0[2];
  v2 = v0[3];

  return sub_1B8034B88(v3, v2);
}

uint64_t sub_1B80AF178(uint64_t a1)
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
    *(v4 + 72) = a1;

    return MEMORY[0x1EEE6DFA0](sub_1B80AF2C4, 0, 0);
  }
}

uint64_t sub_1B80AF2C4()
{
  v4 = v0;
  v3 = 0;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v3);
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_1B80AF360;

  return sub_1B7FC225C();
}

uint64_t sub_1B80AF360()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 88) = v3;
  *v3 = v2;
  v3[1] = sub_1B80AF4B8;
  v4 = *(v1 + 72);

  return sub_1B80283B4(v4);
}

uint64_t sub_1B80AF4B8(uint64_t a1)
{
  *(*v1 + 96) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1B80AF5D8, 0, 0);
}

uint64_t sub_1B80AF5D8()
{
  v4 = v0;
  v3 = 0;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v3);
  v1 = swift_task_alloc();
  *(v0 + 104) = v1;
  *v1 = v0;
  v1[1] = sub_1B80AF674;

  return sub_1B7FC225C();
}

uint64_t sub_1B80AF674()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 112) = v3;
  *v3 = v2;
  v3[1] = sub_1B80AF7D0;
  v4 = *(v1 + 96);
  v5 = *(v1 + 128);

  return sub_1B8029930(v4, v5);
}

uint64_t sub_1B80AF7D0(uint64_t a1)
{
  *(*v1 + 120) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1B80AF8F0, 0, 0);
}

uint64_t sub_1B80AF8F0()
{
  v13 = v0;

  v1 = sub_1B80C8FEC();
  v2 = sub_1B80C941C();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 128);
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136446722;
    *(v4 + 4) = sub_1B7FB84FC(0xD00000000000002DLL, 0x80000001B80CE700, &v12);
    *(v4 + 12) = 1024;
    *(v4 + 14) = v3;
    *(v4 + 18) = 2080;
    type metadata accessor for Location(0);
    sub_1B8032C04();
    v6 = sub_1B80C902C();
    v8 = sub_1B7FB84FC(v6, v7, &v12);

    *(v4 + 20) = v8;
    _os_log_impl(&dword_1B7FB5000, v1, v2, "%{public}s includeAddress:%{BOOL}d:  location:%s", v4, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x1B8CB8970](v5, -1, -1);
    MEMORY[0x1B8CB8970](v4, -1, -1);
  }

  v9 = *(v0 + 8);
  v10 = *(v0 + 120);

  return v9(v10);
}

uint64_t Session.subscribeToBackgroundProactiveLocations(clientID:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B80AFAD4, 0, 0);
}

uint64_t sub_1B80AFAD4()
{
  v4 = v0;
  v3 = 0;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v3);
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1B80AFB70;

  return sub_1B7FC225C();
}

uint64_t sub_1B80AFB70()
{

  return MEMORY[0x1EEE6DFA0](sub_1B80AFC6C, 0, 0);
}

uint64_t sub_1B80AFC6C()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_1B7FCE788;
  v2 = *(v0 + 16);

  return sub_1B801E8AC(v2);
}

uint64_t Session.locationStream(handles:priority:reverseGeocode:)(uint64_t a1, uint64_t a2, _BYTE *a3, char a4)
{
  *(v5 + 24) = a2;
  *(v5 + 32) = v4;
  *(v5 + 57) = a4;
  *(v5 + 16) = a1;
  *(v5 + 58) = *a3;
  return MEMORY[0x1EEE6DFA0](sub_1B80AFD38, 0, 0);
}

uint64_t sub_1B80AFD38()
{
  v4 = v0;
  v3 = 0;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v3);
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_1B80AFDD4;

  return sub_1B7FC225C();
}

uint64_t sub_1B80AFDD4()
{

  return MEMORY[0x1EEE6DFA0](sub_1B80AFED0, 0, 0);
}

uint64_t sub_1B80AFED0()
{
  v1 = *(v0 + 58);
  v2 = *(*(v0 + 32) + 56);
  *(v0 + 48) = v2;
  *(v0 + 56) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B80AFEFC, v2, 0);
}

uint64_t sub_1B80AFEFC()
{
  sub_1B8014CCC(*(v0 + 24), (v0 + 56), *(v0 + 57));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t Session.startRefreshingLocation(forHandles:priority:)(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  *(v4 + 56) = a2;
  *(v4 + 64) = v3;
  *(v4 + 48) = a1;
  type metadata accessor for ClientID(0);
  *(v4 + 72) = swift_task_alloc();
  *(v4 + 105) = *a3;

  return MEMORY[0x1EEE6DFA0](sub_1B80B0008, 0, 0);
}

uint64_t sub_1B80B0008()
{
  v4 = v0;
  v3 = 0;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v3);
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_1B80B00A4;

  return sub_1B7FC225C();
}

uint64_t sub_1B80B00A4()
{

  return MEMORY[0x1EEE6DFA0](sub_1B80B01A0, 0, 0);
}

uint64_t sub_1B80B01A0()
{
  v17 = v0;
  v1 = *(v0 + 64);
  *(v0 + 104) = *(v0 + 105);
  v2 = *(v1 + 104);
  v3 = *(v1 + 88);
  *(v0 + 16) = *(v1 + 80);
  *(v0 + 24) = v3;
  *(v0 + 40) = v2;
  v4 = objc_opt_self();

  v5 = [v4 mainBundle];
  v6 = [v5 bundleIdentifier];

  if (v6)
  {
    v7 = sub_1B80C90BC();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v10 = *(v0 + 72);
  v16 = 0;
  ClientID.init(identifier:connectionType:)(v7, v9, &v16, v10);
  v11 = swift_task_alloc();
  *(v0 + 88) = v11;
  *v11 = v0;
  v11[1] = sub_1B80B0314;
  v12 = *(v0 + 72);
  v13 = *(v0 + 48);
  v14 = *(v0 + 56);

  return sub_1B8017590(v13, v14, (v0 + 104), v0 + 16, v12);
}

uint64_t sub_1B80B0314()
{
  v2 = *(*v1 + 72);
  v3 = *v1;
  *(*v1 + 96) = v0;

  sub_1B7FD06B4(v2);

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B80B64A0, 0, 0);
  }

  else
  {

    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t Session.addHandlesToLocationStream(_:priority:)(uint64_t a1, _BYTE *a2)
{
  *(v3 + 48) = a1;
  *(v3 + 56) = v2;
  type metadata accessor for ClientID(0);
  *(v3 + 64) = swift_task_alloc();
  *(v3 + 97) = *a2;

  return MEMORY[0x1EEE6DFA0](sub_1B80B053C, 0, 0);
}

uint64_t sub_1B80B053C()
{
  v6 = v0;
  if (*(v0[6] + 16))
  {
    v5[0] = 0;
    _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(v5);
    v1 = swift_task_alloc();
    v0[9] = v1;
    *v1 = v0;
    v1[1] = sub_1B80B0658;

    return sub_1B7FC225C();
  }

  else
  {
    sub_1B8010040();
    swift_allocError();
    *v3 = 3;
    swift_willThrow();

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_1B80B0658()
{

  return MEMORY[0x1EEE6DFA0](sub_1B80B0754, 0, 0);
}

uint64_t sub_1B80B0754()
{
  v16 = v0;
  v1 = *(v0 + 56);
  *(v0 + 96) = *(v0 + 97);
  v2 = *(v1 + 104);
  v3 = *(v1 + 88);
  *(v0 + 16) = *(v1 + 80);
  *(v0 + 24) = v3;
  *(v0 + 40) = v2;
  v4 = objc_opt_self();

  v5 = [v4 mainBundle];
  v6 = [v5 bundleIdentifier];

  if (v6)
  {
    v7 = sub_1B80C90BC();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v10 = *(v0 + 64);
  v15 = 0;
  ClientID.init(identifier:connectionType:)(v7, v9, &v15, v10);
  v11 = swift_task_alloc();
  *(v0 + 80) = v11;
  *v11 = v0;
  v11[1] = sub_1B80B08CC;
  v12 = *(v0 + 64);
  v13 = *(v0 + 48);

  return sub_1B8018FD8(v13, (v0 + 96), v0 + 16, 0, v12);
}

uint64_t sub_1B80B08CC()
{
  v2 = *v1;
  v2[11] = v0;

  if (v0)
  {
    sub_1B7FD06B4(v2[8]);

    return MEMORY[0x1EEE6DFA0](sub_1B80B0A30, 0, 0);
  }

  else
  {
    sub_1B7FD06B4(v2[8]);

    v3 = v2[1];

    return v3();
  }
}

uint64_t sub_1B80B0A30()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t Session.cachedLocation(for:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B803CC50;

  return Session.cachedLocation(for:includeAddress:)(a1, 0);
}

uint64_t Session.locations(for:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B804E0A8;

  return Session.locations(for:reverseGeocode:)(a1, 0);
}

uint64_t Session.renewSubscription(priority:handles:)(_BYTE *a1, uint64_t a2)
{
  v4 = v2;
  v6 = *v4;
  *(v3 + 88) = a2;
  *(v3 + 96) = v6;
  type metadata accessor for ClientID(0);
  *(v3 + 104) = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660B0, &qword_1B80D2E20);
  *(v3 + 112) = v7;
  *(v3 + 120) = *(v7 - 8);
  *(v3 + 128) = swift_task_alloc();
  *(v3 + 225) = *a1;

  return MEMORY[0x1EEE6DFA0](sub_1B80B0CEC, 0, 0);
}

uint64_t sub_1B80B0CEC()
{
  v34 = v0;
  v33[0] = *(v0 + 88);

  sub_1B80B577C(v33);
  v1 = v33[0];
  *(v0 + 136) = v33[0];
  v2 = *(v1 + 2);
  v3 = MEMORY[0x1E69E7CC0];
  v32 = v1;
  if (v2)
  {
    v33[0] = MEMORY[0x1E69E7CC0];
    sub_1B7FCF988(0, v2, 0);
    v3 = v33[0];
    v4 = *(v33[0] + 2);
    v5 = 16 * v4;
    v6 = (v1 + 40);
    do
    {
      v8 = *(v6 - 1);
      v7 = *v6;
      v33[0] = v3;
      v9 = v4 + 1;
      v10 = *(v3 + 3);

      if (v4 >= v10 >> 1)
      {
        sub_1B7FCF988((v10 > 1), v9, 1);
        v3 = v33[0];
      }

      *(v3 + 2) = v9;
      v11 = &v3[v5];
      *(v11 + 4) = v8;
      *(v11 + 5) = v7;
      v5 += 16;
      v6 += 2;
      ++v4;
      --v2;
    }

    while (v2);
  }

  *(v0 + 80) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66070, &qword_1B80D6930);
  sub_1B807E2E0();
  v12 = sub_1B80C906C();
  v14 = v13;

  *(v0 + 144) = v12;
  *(v0 + 152) = v14;
  if (qword_1ED8DD6B0 != -1)
  {
    swift_once();
  }

  v15 = sub_1B80C900C();
  *(v0 + 160) = __swift_project_value_buffer(v15, qword_1ED8DDE50);
  swift_retain_n();

  v16 = sub_1B80C8FEC();
  v17 = sub_1B80C941C();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = *(v0 + 225);
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v33[0] = v20;
    *v19 = 136446722;
    v21 = 0xE800000000000000;
    v22 = 0x776F6C6C6168732ELL;
    v23 = 0xE500000000000000;
    v24 = 0x6576696C2ELL;
    if (v18 != 2)
    {
      v24 = 0xD000000000000014;
      v23 = 0x80000001B80CBF40;
    }

    if (!v18)
    {
      v22 = 0xD000000000000015;
      v21 = 0x80000001B80CBFD0;
    }

    if (v18 <= 1)
    {
      v25 = v22;
    }

    else
    {
      v25 = v24;
    }

    if (v18 <= 1)
    {
      v26 = v21;
    }

    else
    {
      v26 = v23;
    }

    v27 = sub_1B7FB84FC(v25, v26, v33);

    *(v19 + 4) = v27;
    *(v19 + 12) = 2048;
    v28 = *(v32 + 2);

    *(v19 + 14) = v28;

    *(v19 + 22) = 2080;
    *(v19 + 24) = sub_1B7FB84FC(v12, v14, v33);
    _os_log_impl(&dword_1B7FB5000, v16, v17, "Renewing %{public}s subscription for %ld handles: %s", v19, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1B8CB8970](v20, -1, -1);
    MEMORY[0x1B8CB8970](v19, -1, -1);
  }

  else
  {
  }

  LOBYTE(v33[0]) = 2;
  RequestOrigin.init(_:)(v33);
  v29 = *(v0 + 40);
  *(v0 + 48) = *(v0 + 16);
  *(v0 + 56) = *(v0 + 24);
  *(v0 + 72) = v29;
  swift_allocObject();
  v30 = swift_task_alloc();
  *(v0 + 168) = v30;
  *v30 = v0;
  v30[1] = sub_1B80B1134;

  return Session.init(_:)(v0 + 48);
}

uint64_t sub_1B80B1134(uint64_t a1)
{
  *(*v1 + 176) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1B80B1234, 0, 0);
}

uint64_t sub_1B80B1234()
{
  v24 = v0;
  v1 = v0[11];
  v2 = *(v1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v22 = MEMORY[0x1E69E7CC0];
    sub_1B8092BA8(0, v2, 0);
    v4 = v22;
    v5 = (v1 + 40);
    do
    {
      v6 = *(v5 - 1);
      v7 = *v5;
      swift_bridgeObjectRetain_n();
      v8 = sub_1B8083930(v3);
      Handle.init(withID:serverID:pushIdentifiers:expiresByGroupId:siblingIdentifiers:favoriteOrder:)(v6, v7, 0, 0, v3, v8, v3, 0, v23, 0);

      v10 = *(v22 + 16);
      v9 = *(v22 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_1B8092BA8((v9 > 1), v10 + 1, 1);
      }

      *(v22 + 16) = v10 + 1;
      v11 = (v22 + 176 * v10);
      v12 = v23[0];
      v13 = v23[2];
      v11[3] = v23[1];
      v11[4] = v13;
      v11[2] = v12;
      v14 = v23[3];
      v15 = v23[4];
      v16 = v23[6];
      v11[7] = v23[5];
      v11[8] = v16;
      v11[5] = v14;
      v11[6] = v15;
      v17 = v23[7];
      v18 = v23[8];
      v19 = v23[10];
      v11[11] = v23[9];
      v11[12] = v19;
      v11[9] = v17;
      v11[10] = v18;
      v5 += 2;
      --v2;
    }

    while (v2);
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  v0[23] = v4;
  LOBYTE(v23[0]) = 0;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(v23);
  v20 = swift_task_alloc();
  v0[24] = v20;
  *v20 = v0;
  v20[1] = sub_1B80B1400;

  return sub_1B7FC225C();
}

uint64_t sub_1B80B1400()
{

  return MEMORY[0x1EEE6DFA0](sub_1B80B14FC, 0, 0);
}

uint64_t sub_1B80B14FC()
{
  v1 = *(v0 + 225);
  v2 = *(*(v0 + 176) + 56);
  *(v0 + 200) = v2;
  *(v0 + 224) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B80B1528, v2, 0);
}

uint64_t sub_1B80B1528()
{
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v3 = *(v0 + 112);
  sub_1B8014CCC(*(v0 + 184), (v0 + 224), 0);

  (*(v2 + 8))(v1, v3);

  return MEMORY[0x1EEE6DFA0](sub_1B80B15DC, 0, 0);
}

uint64_t sub_1B80B15DC()
{
  v11 = v0;
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    v3 = sub_1B80C90BC();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  v6 = *(v0 + 104);
  v10 = 0;
  ClientID.init(identifier:connectionType:)(v3, v5, &v10, v6);
  v7 = swift_task_alloc();
  *(v0 + 208) = v7;
  *v7 = v0;
  v7[1] = sub_1B80B16F8;
  v8 = *(v0 + 104);

  return Session.stopRefreshingLocation(clientID:)(v8);
}

uint64_t sub_1B80B16F8()
{
  v2 = *v1;
  *(*v1 + 216) = v0;

  sub_1B7FD06B4(*(v2 + 104));
  if (v0)
  {
    v3 = sub_1B80B18B4;
  }

  else
  {

    v3 = sub_1B80B183C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B80B183C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B80B18B4()
{
  v28 = v0;
  v1 = *(v0 + 216);

  v2 = v1;
  v3 = sub_1B80C8FEC();
  v4 = sub_1B80C93FC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 225);
    v6 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v27 = v26;
    *v6 = 136446978;
    v7 = 0xE800000000000000;
    v8 = 0x776F6C6C6168732ELL;
    v9 = 0xE500000000000000;
    v10 = 0x6576696C2ELL;
    if (v5 != 2)
    {
      v10 = 0xD000000000000014;
      v9 = 0x80000001B80CBF40;
    }

    if (!v5)
    {
      v8 = 0xD000000000000015;
      v7 = 0x80000001B80CBFD0;
    }

    if (v5 <= 1)
    {
      v11 = v8;
    }

    else
    {
      v11 = v10;
    }

    if (v5 <= 1)
    {
      v12 = v7;
    }

    else
    {
      v12 = v9;
    }

    v13 = *(v0 + 216);
    v15 = *(v0 + 144);
    v14 = *(v0 + 152);
    v16 = *(v0 + 136);
    v17 = sub_1B7FB84FC(v11, v12, &v27);

    *(v6 + 4) = v17;
    *(v6 + 12) = 2048;
    v18 = *(v16 + 16);

    *(v6 + 14) = v18;

    *(v6 + 22) = 2080;
    v19 = sub_1B7FB84FC(v15, v14, &v27);

    *(v6 + 24) = v19;
    *(v6 + 32) = 2112;
    v20 = v13;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 34) = v21;
    *v25 = v21;
    _os_log_impl(&dword_1B7FB5000, v3, v4, "Failed to renew %{public}s subscription for %ld handles: %s, error: %@", v6, 0x2Au);
    sub_1B80B6438(v25);
    MEMORY[0x1B8CB8970](v25, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x1B8CB8970](v26, -1, -1);
    MEMORY[0x1B8CB8970](v6, -1, -1);
  }

  else
  {
    v22 = *(v0 + 216);
  }

  v23 = *(v0 + 8);

  return v23();
}

uint64_t Session.processLocationPayload(_:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B80B1BBC, 0, 0);
}

uint64_t sub_1B80B1BBC()
{
  v4 = v0;
  v3 = 0;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v3);
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_1B80B1C58;

  return sub_1B7FC225C();
}

uint64_t sub_1B80B1C58()
{

  return MEMORY[0x1EEE6DFA0](sub_1B80B1D54, 0, 0);
}

uint64_t sub_1B80B1D54()
{
  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_1B8012DD4;
  v3 = v0[2];
  v2 = v0[3];

  return sub_1B802CE10(v3, v2);
}

uint64_t Session.processLocationCommandPayload(_:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B80B1E14, 0, 0);
}

uint64_t sub_1B80B1E14()
{
  v4 = v0;
  v3 = 0;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v3);
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_1B80B1EB0;

  return sub_1B7FC225C();
}

uint64_t sub_1B80B1EB0()
{

  return MEMORY[0x1EEE6DFA0](sub_1B80B1FAC, 0, 0);
}

uint64_t sub_1B80B1FAC()
{
  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_1B8012DD4;
  v3 = v0[2];
  v2 = v0[3];

  return sub_1B802D800(v3, v2);
}

uint64_t Session.publishLocation(_:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B80B206C, 0, 0);
}

uint64_t sub_1B80B206C()
{
  v4 = v0;
  v3 = 0;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v3);
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_1B80B2108;

  return sub_1B7FC225C();
}

uint64_t sub_1B80B2108()
{

  return MEMORY[0x1EEE6DFA0](sub_1B80B2204, 0, 0);
}

uint64_t sub_1B80B2204()
{
  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_1B8012DD4;
  v3 = v0[2];
  v2 = v0[3];

  return sub_1B802E160(v3, v2);
}

uint64_t sub_1B80B22C0()
{
  v4 = v0;
  v3 = 0;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v3);
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1B80B235C;

  return sub_1B7FC225C();
}

uint64_t sub_1B80B235C()
{

  return MEMORY[0x1EEE6DFA0](sub_1B80B2458, 0, 0);
}

uint64_t sub_1B80B2458()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1B80B64A4;

  return sub_1B803D728();
}

uint64_t Session.setSharingKey(_:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B80B2510, 0, 0);
}

uint64_t sub_1B80B2510()
{
  v4 = v0;
  v3 = 0;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v3);
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_1B80B25AC;

  return sub_1B7FC225C();
}

uint64_t sub_1B80B25AC()
{

  return MEMORY[0x1EEE6DFA0](sub_1B80B26A8, 0, 0);
}

uint64_t sub_1B80B26A8()
{
  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_1B8012C24;
  v3 = v0[2];
  v2 = v0[3];

  return sub_1B803DA3C(v3, v2);
}

uint64_t sub_1B80B2764()
{
  v4 = v0;
  v3 = 0;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v3);
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1B80B2800;

  return sub_1B7FC225C();
}

uint64_t sub_1B80B2800()
{

  return MEMORY[0x1EEE6DFA0](sub_1B80B28FC, 0, 0);
}

uint64_t sub_1B80B28FC()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1B8048BB0;

  return sub_1B803DD4C();
}

uint64_t sub_1B80B29B0()
{
  v4 = v0;
  v3 = 0;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v3);
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1B80B2A4C;

  return sub_1B7FC225C();
}

uint64_t sub_1B80B2A4C()
{

  return MEMORY[0x1EEE6DFA0](sub_1B80B2B48, 0, 0);
}

uint64_t sub_1B80B2B48()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1B80B64A4;

  return sub_1B803E170();
}

uint64_t sub_1B80B2BFC()
{
  v4 = v0;
  v3 = 0;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v3);
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1B80B2C98;

  return sub_1B7FC225C();
}

uint64_t sub_1B80B2C98()
{

  return MEMORY[0x1EEE6DFA0](sub_1B80B2D94, 0, 0);
}

uint64_t sub_1B80B2D94()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1B80B64A4;

  return sub_1B803E470();
}

uint64_t Session.processIDSServiceMessage(_:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B80B2E4C, 0, 0);
}

uint64_t sub_1B80B2E4C()
{
  v4 = v0;
  v3 = 0;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v3);
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_1B80B2EE8;

  return sub_1B7FC225C();
}

uint64_t sub_1B80B2EE8()
{

  return MEMORY[0x1EEE6DFA0](sub_1B80B2FE4, 0, 0);
}

uint64_t sub_1B80B2FE4()
{
  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_1B80B3080;
  v3 = v0[2];
  v2 = v0[3];

  return sub_1B803E8B0(v3, v2);
}

uint64_t sub_1B80B3080(uint64_t a1, uint64_t a2)
{
  v10 = *v3;

  v8 = *(v10 + 8);
  if (!v2)
  {
    v6 = a1;
    v7 = a2;
  }

  return v8(v6, v7);
}

uint64_t sub_1B80B31B0()
{
  v4 = v0;
  v3 = 0;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v3);
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1B80B324C;

  return sub_1B7FC225C();
}

uint64_t sub_1B80B324C()
{

  return MEMORY[0x1EEE6DFA0](sub_1B80B3348, 0, 0);
}

uint64_t sub_1B80B3348()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1B80B33DC;

  return sub_1B803ED54();
}

uint64_t sub_1B80B33DC(uint64_t a1, uint64_t a2)
{
  v10 = *v3;

  v8 = *(v10 + 8);
  if (!v2)
  {
    v6 = a1;
    v7 = a2;
  }

  return v8(v6, v7);
}

uint64_t sub_1B80B350C()
{
  v4 = v0;
  v3 = 0;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v3);
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1B80B35A8;

  return sub_1B7FC225C();
}

uint64_t sub_1B80B35A8()
{

  return MEMORY[0x1EEE6DFA0](sub_1B80B36A4, 0, 0);
}

uint64_t sub_1B80B36A4()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1B804FA0C;

  return sub_1B803F194();
}

uint64_t sub_1B80B3758()
{
  v4 = v0;
  v3 = 0;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v3);
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1B80B37F4;

  return sub_1B7FC225C();
}

uint64_t sub_1B80B37F4()
{

  return MEMORY[0x1EEE6DFA0](sub_1B80B38F0, 0, 0);
}

uint64_t sub_1B80B38F0()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1B804FA0C;

  return sub_1B803F48C();
}

uint64_t sub_1B80B39A4()
{
  v4 = v0;
  v3 = 0;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v3);
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1B80B3A40;

  return sub_1B7FC225C();
}

uint64_t sub_1B80B3A40()
{

  return MEMORY[0x1EEE6DFA0](sub_1B80B3B3C, 0, 0);
}

uint64_t sub_1B80B3B3C()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1B804FA0C;

  return sub_1B803F784();
}

uint64_t Session.publishCurrentLocationToStewie()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B80B3BF0, 0, 0);
}

uint64_t sub_1B80B3BF0()
{
  v4 = v0;
  v3 = 0;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v3);
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1B80B3C8C;

  return sub_1B7FC225C();
}

uint64_t sub_1B80B3C8C()
{

  return MEMORY[0x1EEE6DFA0](sub_1B80B3D88, 0, 0);
}

uint64_t sub_1B80B3D88()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_1B7FCE788;
  v2 = *(v0 + 16);

  return sub_1B803FA84(v2);
}

uint64_t Session.stewiePublishResult()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B80B3E44, 0, 0);
}

uint64_t sub_1B80B3E44()
{
  v4 = v0;
  v3 = 0;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v3);
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1B80B3EE0;

  return sub_1B7FC225C();
}

uint64_t sub_1B80B3EE0()
{

  return MEMORY[0x1EEE6DFA0](sub_1B80B3FDC, 0, 0);
}

uint64_t sub_1B80B3FDC()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_1B7FCE788;
  v2 = *(v0 + 16);

  return sub_1B803FD8C(v2);
}

uint64_t Session.currentStewieState()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B80B4098, 0, 0);
}

uint64_t sub_1B80B4098()
{
  v4 = v0;
  v3 = 0;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v3);
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1B80B4134;

  return sub_1B7FC225C();
}

uint64_t sub_1B80B4134()
{

  return MEMORY[0x1EEE6DFA0](sub_1B80B4230, 0, 0);
}

uint64_t sub_1B80B4230()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_1B7FCE7A0;
  v2 = *(v0 + 16);

  return sub_1B8040090(v2);
}

uint64_t Session.startMonitoringStewieState()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B7FCB400, 0, 0);
}

uint64_t sub_1B80B430C()
{
  v4 = v0;
  v3 = 0;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v3);
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1B80B43A8;

  return sub_1B7FC225C();
}

uint64_t sub_1B80B43A8()
{

  return MEMORY[0x1EEE6DFA0](sub_1B80B44A4, 0, 0);
}

uint64_t sub_1B80B44A4()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1B804FA0C;

  return sub_1B804029C();
}

uint64_t Session.addHandlesToLocationStream(_:priority:reverseGeocode:)(uint64_t a1, _BYTE *a2, char a3)
{
  *(v4 + 57) = a3;
  *(v4 + 16) = a1;
  *(v4 + 24) = v3;
  type metadata accessor for ClientID(0);
  *(v4 + 32) = swift_task_alloc();
  *(v4 + 58) = *a2;

  return MEMORY[0x1EEE6DFA0](sub_1B80B45D8, 0, 0);
}

uint64_t sub_1B80B45D8()
{
  v13 = v0;
  *(v0 + 56) = *(v0 + 58);
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    v3 = sub_1B80C90BC();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  v6 = *(v0 + 32);
  v12 = 0;
  ClientID.init(identifier:connectionType:)(v3, v5, &v12, v6);
  v7 = swift_task_alloc();
  *(v0 + 40) = v7;
  *v7 = v0;
  v7[1] = sub_1B80B4710;
  v8 = *(v0 + 32);
  v9 = *(v0 + 57);
  v10 = *(v0 + 16);

  return Session.addHandlesToLocationStream(_:priority:reverseGeocode:clientID:)(v10, (v0 + 56), v9, v8);
}

uint64_t sub_1B80B4710()
{
  v2 = *(*v1 + 32);
  v3 = *v1;
  *(v3 + 48) = v0;

  sub_1B7FD06B4(v2);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B8011CE8, 0, 0);
  }

  else
  {

    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t Session.stopRefreshingLocation(forHandles:priority:)(uint64_t a1, _BYTE *a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  type metadata accessor for ClientID(0);
  *(v3 + 32) = swift_task_alloc();
  *(v3 + 57) = *a2;

  return MEMORY[0x1EEE6DFA0](sub_1B80B4910, 0, 0);
}

uint64_t sub_1B80B4910()
{
  v12 = v0;
  *(v0 + 56) = *(v0 + 57);
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    v3 = sub_1B80C90BC();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  v6 = *(v0 + 32);
  v11 = 0;
  ClientID.init(identifier:connectionType:)(v3, v5, &v11, v6);
  v7 = swift_task_alloc();
  *(v0 + 40) = v7;
  *v7 = v0;
  v7[1] = sub_1B80B4A44;
  v8 = *(v0 + 32);
  v9 = *(v0 + 16);

  return Session.stopRefreshingLocation(forHandles:priority:clientID:)(v9, (v0 + 56), v8);
}

uint64_t sub_1B80B4A44()
{
  v2 = *(*v1 + 32);
  v3 = *v1;
  *(v3 + 48) = v0;

  sub_1B7FD06B4(v2);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B7FFAF74, 0, 0);
  }

  else
  {

    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t Session.stopRefreshingLocation()()
{
  *(v1 + 16) = v0;
  type metadata accessor for ClientID(0);
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B80B4C38, 0, 0);
}

uint64_t sub_1B80B4C38()
{
  v11 = v0;
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    v3 = sub_1B80C90BC();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  v6 = *(v0 + 24);
  v10 = 0;
  ClientID.init(identifier:connectionType:)(v3, v5, &v10, v6);
  v7 = swift_task_alloc();
  *(v0 + 32) = v7;
  *v7 = v0;
  v7[1] = sub_1B80B4D50;
  v8 = *(v0 + 24);

  return Session.stopRefreshingLocation(clientID:)(v8);
}

uint64_t sub_1B80B4D50()
{
  v2 = *(*v1 + 24);
  v3 = *v1;
  *(v3 + 40) = v0;

  sub_1B7FD06B4(v2);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B80B4EB4, 0, 0);
  }

  else
  {

    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_1B80B4EB4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t Session.latestLocations(for:includeAddress:)(uint64_t a1, char a2)
{
  *(v3 + 56) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  type metadata accessor for ClientID(0);
  *(v3 + 32) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B80B4FAC, 0, 0);
}

uint64_t sub_1B80B4FAC()
{
  v13 = v0;
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    v3 = sub_1B80C90BC();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  v6 = *(v0 + 32);
  v12 = 0;
  ClientID.init(identifier:connectionType:)(v3, v5, &v12, v6);
  v7 = swift_task_alloc();
  *(v0 + 40) = v7;
  *v7 = v0;
  v7[1] = sub_1B80B50CC;
  v8 = *(v0 + 32);
  v9 = *(v0 + 56);
  v10 = *(v0 + 16);

  return Session.latestLocations(for:includeAddress:clientID:)(v10, v9, v8);
}

uint64_t sub_1B80B50CC(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 48) = v1;

  sub_1B7FD06B4(*(v4 + 32));
  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B7FFAF74, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6(a1);
  }
}

uint64_t Session.subscribeToBackgroundProactiveLocations()()
{
  *(v1 + 16) = v0;
  type metadata accessor for ClientID(0);
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B80B52CC, 0, 0);
}

uint64_t sub_1B80B52CC()
{
  v11 = v0;
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    v3 = sub_1B80C90BC();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  v6 = *(v0 + 24);
  v9 = 0;
  ClientID.init(identifier:connectionType:)(v3, v5, &v9, v6);
  v10 = 0;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v10);
  v7 = swift_task_alloc();
  *(v0 + 32) = v7;
  *v7 = v0;
  v7[1] = sub_1B80B53EC;

  return sub_1B7FC225C();
}

uint64_t sub_1B80B53EC()
{

  return MEMORY[0x1EEE6DFA0](sub_1B80B54E8, 0, 0);
}

uint64_t sub_1B80B54E8()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_1B80B5584;
  v2 = *(v0 + 24);

  return sub_1B801E8AC(v2);
}

uint64_t sub_1B80B5584()
{
  v2 = *v1;
  v2[6] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B80B56D0, 0, 0);
  }

  else
  {
    sub_1B7FD06B4(v2[3]);

    v3 = v2[1];

    return v3();
  }
}

uint64_t sub_1B80B56D0()
{
  sub_1B7FD06B4(*(v0 + 24));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B80B577C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1B80B5768(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1B80B57E8(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1B80B57E8(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1B80C97EC();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = sub_1B80C924C();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1B80B59B0(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1B80B58E0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1B80B58E0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_1B80C981C(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1B80B59B0(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_1B80B6240(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_1B80B5F8C((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_1B80C981C();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_1B80C981C();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1B807DDD0(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_1B807DDD0((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
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
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_1B80B5F8C((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1B80B6240(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_1B80B61B4(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = v9 + a4;
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_1B80C981C(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_1B80B5F8C(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_1B80C981C() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_1B80C981C() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_1B80B61B4(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1B80B6240(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

void sub_1B80B6254(_OWORD *a1, char a2)
{
  v3 = a1[9];
  v14[8] = a1[8];
  v14[9] = v3;
  v14[10] = a1[10];
  v4 = a1[5];
  v14[4] = a1[4];
  v14[5] = v4;
  v5 = a1[7];
  v14[6] = a1[6];
  v14[7] = v5;
  v6 = a1[1];
  v14[0] = *a1;
  v14[1] = v6;
  v7 = a1[3];
  v14[2] = a1[2];
  v14[3] = v7;
  if (qword_1ED8DD6B0 != -1)
  {
    swift_once();
  }

  v8 = sub_1B80C900C();
  __swift_project_value_buffer(v8, qword_1ED8DDE50);
  sub_1B7FC8DA4(v14, v13);
  v9 = sub_1B80C8FEC();
  v10 = sub_1B80C941C();
  sub_1B7FCAD28(v14);
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13[0] = v12;
    *v11 = 136446979;
    *(v11 + 4) = sub_1B7FB84FC(0xD00000000000001ELL, 0x80000001B80CCBF0, v13);
    *(v11 + 12) = 2160;
    *(v11 + 14) = 1752392040;
    *(v11 + 22) = 2081;
    *(v11 + 24) = sub_1B7FB84FC(*&v14[0], *(&v14[0] + 1), v13);
    *(v11 + 32) = 1024;
    *(v11 + 34) = a2 & 1;
    _os_log_impl(&dword_1B7FB5000, v9, v10, "%{public}s handle: %{private,mask.hash}s reverseGeocode: %{BOOL}d", v11, 0x26u);
    swift_arrayDestroy();
    MEMORY[0x1B8CB8970](v12, -1, -1);
    MEMORY[0x1B8CB8970](v11, -1, -1);
  }
}

uint64_t sub_1B80B6438(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65EE8, &qword_1B80D2478);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Session.decryptNotification(encryptedPayload:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1B80B64CC, 0, 0);
}

uint64_t sub_1B80B64CC()
{
  v4 = v0;
  v3 = 0;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v3);
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_1B80B6568;

  return sub_1B7FC225C();
}

uint64_t sub_1B80B6568()
{

  return MEMORY[0x1EEE6DFA0](sub_1B80B6664, 0, 0);
}

uint64_t sub_1B80B6664()
{
  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_1B80A66D4;
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];

  return sub_1B803576C(v4, v2, v3);
}

uint64_t Session.peerToken(peer:)(_OWORD *a1)
{
  *(v2 + 544) = v1;
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
  return MEMORY[0x1EEE6DFA0](sub_1B80B6754, 0, 0);
}

uint64_t sub_1B80B6754()
{
  v10 = v0;
  if (qword_1ED8DD6B0 != -1)
  {
    swift_once();
  }

  v1 = sub_1B80C900C();
  __swift_project_value_buffer(v1, qword_1ED8DDE50);
  sub_1B7FC8DA4((v0 + 2), (v0 + 24));
  v2 = sub_1B80C8FEC();
  v3 = sub_1B80C941C();
  sub_1B7FCAD28((v0 + 2));
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v9 = v5;
    *v4 = 136446723;
    *(v4 + 4) = sub_1B7FB84FC(0xD000000000000010, 0x80000001B80CE730, &v9);
    *(v4 + 12) = 2160;
    *(v4 + 14) = 1752392040;
    *(v4 + 22) = 2081;
    *(v4 + 24) = sub_1B7FB84FC(v0[2], v0[3], &v9);
    _os_log_impl(&dword_1B7FB5000, v2, v3, "%{public}s for %{private,mask.hash}s!", v4, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1B8CB8970](v5, -1, -1);
    MEMORY[0x1B8CB8970](v4, -1, -1);
  }

  v8 = 1;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v8);
  v6 = swift_task_alloc();
  v0[69] = v6;
  *v6 = v0;
  v6[1] = sub_1B80B6960;

  return sub_1B7FC225C();
}

uint64_t sub_1B80B6960()
{

  return MEMORY[0x1EEE6DFA0](sub_1B80B6A5C, 0, 0);
}

uint64_t sub_1B80B6A5C()
{
  v1 = *(v0 + 160);
  *(v0 + 496) = *(v0 + 144);
  *(v0 + 512) = v1;
  *(v0 + 528) = *(v0 + 176);
  v2 = *(v0 + 96);
  *(v0 + 432) = *(v0 + 80);
  *(v0 + 448) = v2;
  v3 = *(v0 + 128);
  *(v0 + 464) = *(v0 + 112);
  *(v0 + 480) = v3;
  v4 = *(v0 + 32);
  *(v0 + 368) = *(v0 + 16);
  *(v0 + 384) = v4;
  v5 = *(v0 + 64);
  *(v0 + 400) = *(v0 + 48);
  *(v0 + 416) = v5;
  v6 = swift_task_alloc();
  *(v0 + 560) = v6;
  *v6 = v0;
  v6[1] = sub_1B80B6B28;

  return sub_1B7FFDAB8((v0 + 368));
}

uint64_t sub_1B80B6B28(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 568) = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B80B6C64, 0, 0);
  }

  else
  {
    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_1B80B6C9C()
{
  v10 = v0;
  if (qword_1ED8DD6B0 != -1)
  {
    swift_once();
  }

  v1 = sub_1B80C900C();
  __swift_project_value_buffer(v1, qword_1ED8DDE50);
  v2 = sub_1B80C8FEC();
  v3 = sub_1B80C941C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v9 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_1B7FB84FC(0x6B6F5472656E776FLL, 0xEC00000029286E65, &v9);
    _os_log_impl(&dword_1B7FB5000, v2, v3, "%{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x1B8CB8970](v5, -1, -1);
    MEMORY[0x1B8CB8970](v4, -1, -1);
  }

  v8 = 1;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v8);
  v6 = swift_task_alloc();
  *(v0 + 24) = v6;
  *v6 = v0;
  v6[1] = sub_1B80B6E5C;

  return sub_1B7FC225C();
}

uint64_t sub_1B80B6E5C()
{

  return MEMORY[0x1EEE6DFA0](sub_1B80B6F58, 0, 0);
}

uint64_t sub_1B80B6F58()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1B805CC14;

  return sub_1B7FFEF04();
}

uint64_t sub_1B80B700C()
{
  v10 = v0;
  if (qword_1ED8DD6B0 != -1)
  {
    swift_once();
  }

  v1 = sub_1B80C900C();
  __swift_project_value_buffer(v1, qword_1ED8DDE50);
  v2 = sub_1B80C8FEC();
  v3 = sub_1B80C941C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v9 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_1B7FB84FC(0xD00000000000001ALL, 0x80000001B80CC520, &v9);
    _os_log_impl(&dword_1B7FB5000, v2, v3, "%{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x1B8CB8970](v5, -1, -1);
    MEMORY[0x1B8CB8970](v4, -1, -1);
  }

  v8 = 1;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v8);
  v6 = swift_task_alloc();
  *(v0 + 24) = v6;
  *v6 = v0;
  v6[1] = sub_1B80B71C8;

  return sub_1B7FC225C();
}

uint64_t sub_1B80B71C8()
{

  return MEMORY[0x1EEE6DFA0](sub_1B80B72C4, 0, 0);
}

uint64_t sub_1B80B72C4()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1B8048BB0;

  return sub_1B7FFAD00();
}

uint64_t sub_1B80B7384@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x4D676E697373696DLL && a2 == 0xEF65636976654465)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1B80C981C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1B80B7414(uint64_t a1)
{
  v2 = sub_1B80B76DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B80B7450(uint64_t a1)
{
  v2 = sub_1B80B76DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B80B748C(uint64_t a1)
{
  v2 = sub_1B80B7730();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B80B74C8(uint64_t a1)
{
  v2 = sub_1B80B7730();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PreferenceError.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67428, &qword_1B80DCD00);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67430, &qword_1B80DCD08);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B80B76DC();
  sub_1B80C99DC();
  sub_1B80B7730();
  sub_1B80C974C();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_1B80B76DC()
{
  result = qword_1EBA67438;
  if (!qword_1EBA67438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67438);
  }

  return result;
}

unint64_t sub_1B80B7730()
{
  result = qword_1EBA67440;
  if (!qword_1EBA67440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67440);
  }

  return result;
}

uint64_t PreferenceError.hashValue.getter()
{
  sub_1B80C993C();
  MEMORY[0x1B8CB8250](0);
  return sub_1B80C997C();
}

uint64_t PreferenceError.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67448, &qword_1B80DCD10);
  v25 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v19 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67450, &unk_1B80DCD18);
  v20 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B80B76DC();
  sub_1B80C99BC();
  if (v1)
  {
    goto LABEL_6;
  }

  v19 = a1;
  v9 = v25;
  v10 = v20;
  v11 = sub_1B80C973C();
  v12 = (2 * *(v11 + 16)) | 1;
  v21 = v11;
  v22 = v11 + 32;
  v23 = 0;
  v24 = v12;
  if ((sub_1B7FCA428() & 1) != 0 || v23 != v24 >> 1)
  {
    v13 = v6;
    v14 = sub_1B80C955C();
    swift_allocError();
    v16 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66310, &qword_1B80D3ED0);
    *v16 = &type metadata for PreferenceError;
    sub_1B80C969C();
    sub_1B80C954C();
    (*(*(v14 - 8) + 104))(v16, *MEMORY[0x1E69E6AF8], v14);
    swift_willThrow();
    (*(v10 + 8))(v8, v13);
    swift_unknownObjectRelease();
    a1 = v19;
LABEL_6:
    v18 = a1;
    return __swift_destroy_boxed_opaque_existential_0(v18);
  }

  sub_1B80B7730();
  sub_1B80C968C();
  (*(v9 + 8))(v5, v3);
  (*(v10 + 8))(v8, v6);
  swift_unknownObjectRelease();
  v18 = v19;
  return __swift_destroy_boxed_opaque_existential_0(v18);
}

uint64_t sub_1B80B7B54(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67428, &qword_1B80DCD00);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67430, &qword_1B80DCD08);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B80B76DC();
  sub_1B80C99DC();
  sub_1B80B7730();
  sub_1B80C974C();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t Session.setActiveLocationSharingDevice(_:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B80B7D50, 0, 0);
}

uint64_t sub_1B80B7D50()
{
  v4 = v0;
  v3 = 2;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v3);
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_1B80B7DF0;

  return sub_1B7FC225C();
}

uint64_t sub_1B80B7DF0()
{

  return MEMORY[0x1EEE6DFA0](sub_1B80B7EEC, 0, 0);
}

uint64_t sub_1B80B7EEC()
{
  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_1B8012C24;
  v3 = v0[2];
  v2 = v0[3];

  return sub_1B80523B4(v3, v2);
}

uint64_t Session.hideMyLocation(hidden:)(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 40) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B80B7FAC, 0, 0);
}

uint64_t sub_1B80B7FAC()
{
  v4 = v0;
  v3 = 2;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v3);
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1B80B804C;

  return sub_1B7FC225C();
}

uint64_t sub_1B80B804C()
{

  return MEMORY[0x1EEE6DFA0](sub_1B80B8148, 0, 0);
}

uint64_t sub_1B80B8148()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1B8048BB0;
  v2 = *(v0 + 40);

  return sub_1B8052F64(v2);
}

uint64_t Session.allowFriendshipRequests(allowed:)(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 40) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B80B8208, 0, 0);
}

uint64_t sub_1B80B8208()
{
  v4 = v0;
  v3 = 2;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v3);
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1B80B82A8;

  return sub_1B7FC225C();
}

uint64_t sub_1B80B82A8()
{

  return MEMORY[0x1EEE6DFA0](sub_1B80B83A4, 0, 0);
}

uint64_t sub_1B80B83A4()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1B804FA0C;
  v2 = *(v0 + 40);

  return sub_1B80537F4(v2);
}

uint64_t Session.activeLocationSharingDevice(cached:)(uint64_t a1, char a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  if (a2)
  {
    v4 = sub_1B80B8474;
  }

  else
  {
    v4 = sub_1B80B87C4;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B80B8474()
{
  v4 = v0;
  v3 = 2;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v3);
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1B80B8514;

  return sub_1B7FC225C();
}

uint64_t sub_1B80B8514()
{

  return MEMORY[0x1EEE6DFA0](sub_1B80B8610, 0, 0);
}

uint64_t sub_1B80B8610()
{
  v1 = *(*(v0 + 24) + 48);
  *(v0 + 40) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B80B8634, v1, 0);
}

uint64_t sub_1B80B8634()
{
  v1 = *(v0 + 40) + OBJC_IVAR____TtCC12FindMyLocate7Session18SettingsConnection_meDevice;
  v2 = *v1;
  *(v0 + 48) = *v1;
  v3 = *(v1 + 8);
  *(v0 + 56) = v3;
  v4 = *(v1 + 16);
  *(v0 + 64) = v4;
  v5 = *(v1 + 24);
  *(v0 + 72) = v5;
  v6 = *(v1 + 32);
  *(v0 + 80) = v6;
  v7 = *(v1 + 40);
  *(v0 + 88) = v7;
  *(v0 + 112) = *(v1 + 48);
  sub_1B8051E5C(v2, v3, v4, v5, v6, v7);

  return MEMORY[0x1EEE6DFA0](sub_1B80B86E4, 0, 0);
}

uint64_t sub_1B80B86E4()
{
  v1 = *(v0 + 56);
  if (v1)
  {
    v2 = *(v0 + 112);
    v4 = *(v0 + 80);
    v3 = *(v0 + 88);
    v5 = *(v0 + 64);
    v6 = *(v0 + 16);
    *v6 = *(v0 + 48);
    *(v6 + 8) = v1;
    *(v6 + 16) = v5;
    *(v6 + 32) = v4;
    *(v6 + 40) = v3;
    *(v6 + 48) = v2 & 1;
    *(v6 + 49) = BYTE1(v2) & 1;
    *(v6 + 50) = BYTE2(v2) & 1;
    *(v6 + 51) = HIBYTE(v2) & 1;
  }

  else
  {
    sub_1B80B9A0C();
    swift_allocError();
    swift_willThrow();
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1B80B87C4()
{
  v4 = v0;
  v3 = 2;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v3);
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_1B80B8864;

  return sub_1B7FC225C();
}

uint64_t sub_1B80B8864()
{

  return MEMORY[0x1EEE6DFA0](sub_1B80B8960, 0, 0);
}

uint64_t sub_1B80B8960()
{
  v1 = swift_task_alloc();
  *(v0 + 104) = v1;
  *v1 = v0;
  v1[1] = sub_1B80B8A00;
  v2 = *(v0 + 16);

  return sub_1B80541C4(v2, 0);
}

uint64_t sub_1B80B8A00()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t Session.thisDeviceWithCompanion()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B80B8B14, 0, 0);
}

uint64_t sub_1B80B8B14()
{
  v4 = v0;
  v3 = 2;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v3);
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1B80B8BB4;

  return sub_1B7FC225C();
}

uint64_t sub_1B80B8BB4()
{

  return MEMORY[0x1EEE6DFA0](sub_1B80B8CB0, 0, 0);
}

uint64_t sub_1B80B8CB0()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_1B7FCE7A0;
  v2 = *(v0 + 16);

  return sub_1B8054D64(v2);
}

uint64_t Session.isMyLocationEnabled(cached:)(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 40) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B80B8D70, 0, 0);
}

uint64_t sub_1B80B8D70()
{
  v4 = v0;
  v3 = 2;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v3);
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1B80B8E10;

  return sub_1B7FC225C();
}

uint64_t sub_1B80B8E10()
{

  return MEMORY[0x1EEE6DFA0](sub_1B80B8F0C, 0, 0);
}

uint64_t sub_1B80B8F0C()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1B80B8FA8;
  v2 = *(v0 + 40);

  return sub_1B80558C4(v2);
}

uint64_t sub_1B80B8FA8(char a1)
{
  v7 = *v2;

  v4 = *(v7 + 8);
  if (v1)
  {
    v5 = 0;
  }

  else
  {
    v5 = a1 & 1;
  }

  return v4(v5);
}

uint64_t Session.areFriendshipRequestsAllowed(cached:)(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 40) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B80B90D4, 0, 0);
}

uint64_t sub_1B80B90D4()
{
  v4 = v0;
  v3 = 2;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v3);
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1B80B9174;

  return sub_1B7FC225C();
}

uint64_t sub_1B80B9174()
{

  return MEMORY[0x1EEE6DFA0](sub_1B80B9270, 0, 0);
}

uint64_t sub_1B80B9270()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1B80B9CA8;
  v2 = *(v0 + 40);

  return sub_1B805637C(v2);
}

uint64_t Session.startMonitoringActiveLocationSharingDeviceChange()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B80B932C, 0, 0);
}

uint64_t sub_1B80B932C()
{
  v4 = v0;
  v3 = 2;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v3);
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1B80B93CC;

  return sub_1B7FC225C();
}

uint64_t sub_1B80B93CC()
{

  return MEMORY[0x1EEE6DFA0](sub_1B80B94C8, 0, 0);
}

uint64_t sub_1B80B94C8()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_1B7FCE788;
  v2 = *(v0 + 16);

  return sub_1B804FC10(v2);
}

uint64_t Session.startMonitoringPreferencesChange()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B80B9584, 0, 0);
}

uint64_t sub_1B80B9584()
{
  v4 = v0;
  v3 = 2;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v3);
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1B80B9624;

  return sub_1B7FC225C();
}

uint64_t sub_1B80B9624()
{

  return MEMORY[0x1EEE6DFA0](sub_1B80B9720, 0, 0);
}

uint64_t sub_1B80B9720()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_1B7FCE788;
  v2 = *(v0 + 16);

  return sub_1B8050354(v2);
}

uint64_t sub_1B80B97DC()
{
  v4 = v0;
  v3 = 2;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v3);
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1B80B987C;

  return sub_1B7FC225C();
}

uint64_t sub_1B80B987C()
{

  return MEMORY[0x1EEE6DFA0](sub_1B80B9978, 0, 0);
}

uint64_t sub_1B80B9978()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1B804FA0C;

  return sub_1B8058214();
}

unint64_t sub_1B80B9A0C()
{
  result = qword_1ED8DD440;
  if (!qword_1ED8DD440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DD440);
  }

  return result;
}

unint64_t sub_1B80B9A64()
{
  result = qword_1EBA67458;
  if (!qword_1EBA67458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67458);
  }

  return result;
}

unint64_t sub_1B80B9AEC()
{
  result = qword_1EBA67460;
  if (!qword_1EBA67460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67460);
  }

  return result;
}

unint64_t sub_1B80B9B44()
{
  result = qword_1EBA67468;
  if (!qword_1EBA67468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67468);
  }

  return result;
}

unint64_t sub_1B80B9B9C()
{
  result = qword_1EBA67470;
  if (!qword_1EBA67470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67470);
  }

  return result;
}

unint64_t sub_1B80B9BF4()
{
  result = qword_1EBA67478;
  if (!qword_1EBA67478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67478);
  }

  return result;
}

unint64_t sub_1B80B9C4C()
{
  result = qword_1EBA67480;
  if (!qword_1EBA67480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67480);
  }

  return result;
}

FindMyLocate::LocalUserNotificationCategory_optional __swiftcall LocalUserNotificationCategory.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B80C967C();

  v5 = 13;
  if (v3 < 0xD)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t LocalUserNotificationCategory.rawValue.getter()
{
  result = 0x5F544C5541464544;
  switch(*v0)
  {
    case 1:
      return result;
    case 2:
      result = 0x45434E45464F4547;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0xD000000000000015;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    case 6:
      result = 0x4F4C5F524546464FLL;
      break;
    case 7:
      result = 0xD000000000000013;
      break;
    case 8:
      result = 0xD000000000000012;
      break;
    case 9:
      result = 0x525F455449564E49;
      break;
    case 0xA:
      result = 0x465F594649544F4ELL;
      break;
    case 0xB:
    case 0xC:
      result = 0xD00000000000002FLL;
      break;
    default:
      result = 0xD00000000000002DLL;
      break;
  }

  return result;
}

uint64_t sub_1B80B9EAC()
{
  v0 = LocalUserNotificationCategory.rawValue.getter();
  v2 = v1;
  if (v0 == LocalUserNotificationCategory.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1B80C981C();
  }

  return v5 & 1;
}

unint64_t sub_1B80B9F4C()
{
  result = qword_1EBA67488;
  if (!qword_1EBA67488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67488);
  }

  return result;
}

uint64_t sub_1B80B9FA0()
{
  sub_1B80C993C();
  LocalUserNotificationCategory.rawValue.getter();
  sub_1B80C911C();

  return sub_1B80C997C();
}

uint64_t sub_1B80BA008(uint64_t a1)
{
  LocalUserNotificationCategory.rawValue.getter();
  sub_1B80C911C();
}

uint64_t sub_1B80BA06C(uint64_t a1)
{
  sub_1B80C993C();
  LocalUserNotificationCategory.rawValue.getter();
  sub_1B80C911C();

  return sub_1B80C997C();
}

unint64_t sub_1B80BA0DC@<X0>(unint64_t *a1@<X8>)
{
  result = LocalUserNotificationCategory.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1B80BA1C4()
{
  result = qword_1EBA67490;
  if (!qword_1EBA67490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67490);
  }

  return result;
}

uint64_t sub_1B80BA218(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 52))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1B80BA274(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 52) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 52) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

Swift::Void __swiftcall Fence.UpdateStream.close()()
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + 16);
    MEMORY[0x1EEE9AC00](Strong);
    os_unfair_lock_lock(v1 + 8);
    sub_1B80BA38C(&v1[4]);
    os_unfair_lock_unlock(v1 + 8);
  }

  swift_weakAssign();
}

uint64_t Fence.UpdateStream.deinit()
{
  v1 = sub_1B80C8E9C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = (*(v2 + 16))(v4, v0 + OBJC_IVAR____TtCV12FindMyLocate5Fence12UpdateStream_id, v1);
    v8 = *(v6 + 16);
    MEMORY[0x1EEE9AC00](v7);
    *&v10[-16] = v4;
    os_unfair_lock_lock(v8 + 8);
    sub_1B80BAC9C(&v8[4]);
    os_unfair_lock_unlock(v8 + 8);

    (*(v2 + 8))(v4, v1);
  }

  swift_weakDestroy();
  (*(v2 + 8))(v0 + OBJC_IVAR____TtCV12FindMyLocate5Fence12UpdateStream_id, v1);
  sub_1B80BA548(v0 + OBJC_IVAR____TtCV12FindMyLocate5Fence12UpdateStream_iterator);
  return v0;
}

uint64_t sub_1B80BA548(uint64_t a1)
{
  updated = type metadata accessor for Fence.UpdateStream.AsyncIterator(0);
  (*(*(updated - 8) + 8))(a1, updated);
  return a1;
}

uint64_t Fence.UpdateStream.__deallocating_deinit()
{
  v1 = sub_1B80C8E9C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = (*(v2 + 16))(v4, v0 + OBJC_IVAR____TtCV12FindMyLocate5Fence12UpdateStream_id, v1);
    v8 = *(v6 + 16);
    MEMORY[0x1EEE9AC00](v7);
    *&v10[-16] = v4;
    os_unfair_lock_lock(v8 + 8);
    sub_1B80BAC9C(&v8[4]);
    os_unfair_lock_unlock(v8 + 8);

    (*(v2 + 8))(v4, v1);
  }

  swift_weakDestroy();
  (*(v2 + 8))(v0 + OBJC_IVAR____TtCV12FindMyLocate5Fence12UpdateStream_id, v1);
  sub_1B80BA548(v0 + OBJC_IVAR____TtCV12FindMyLocate5Fence12UpdateStream_iterator);
  return swift_deallocClassInstance();
}

uint64_t Fence.UpdateStream.AsyncIterator.next()(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67498, qword_1B80DD250);
  *v3 = v1;
  v3[1] = sub_1B7FBA3EC;

  return MEMORY[0x1EEE6D9D0](a1, v4);
}

uint64_t sub_1B80BA830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a2;
  v6[4] = a3;
  v10 = swift_task_alloc();
  v6[5] = v10;
  *v10 = v6;
  v10[1] = sub_1B80BA8E8;

  return MEMORY[0x1EEE6D8C8](a1, a5, a6);
}

uint64_t sub_1B80BA8E8()
{
  v2 = *(*v1 + 24);
  *(*v1 + 48) = v0;

  if (v0)
  {
    if (v2)
    {
      swift_getObjectType();
      v3 = sub_1B80C926C();
      v5 = v4;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    v6 = sub_1B80BAA78;
  }

  else
  {
    if (v2)
    {
      swift_getObjectType();
      v3 = sub_1B80C926C();
      v5 = v7;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    v6 = sub_1B7FFAF5C;
  }

  return MEMORY[0x1EEE6DFA0](v6, v3, v5);
}

uint64_t sub_1B80BAA78()
{
  v0[2] = v0[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65FC0, &unk_1B80D2430);
  swift_dynamicCast();
  swift_willThrowTypedImpl();
  v1 = v0[1];

  return v1();
}

unint64_t sub_1B80BAB30()
{
  result = qword_1EBA674A0;
  if (!qword_1EBA674A0)
  {
    type metadata accessor for Fence.UpdateStream.AsyncIterator(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA674A0);
  }

  return result;
}

double sub_1B80BAB88@<D0>(uint64_t a1@<X8>)
{
  sub_1B7FBF9C0(*v1 + OBJC_IVAR____TtCV12FindMyLocate5Fence12UpdateStream_iterator, a1);

  return result;
}

uint64_t sub_1B80BABF0(uint64_t *a1, int a2)
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

uint64_t sub_1B80BAC38(uint64_t result, int a2, int a3)
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

uint64_t type metadata accessor for FriendshipRequestStreamChange(uint64_t a1)
{
  result = qword_1EBA674A8;
  if (!qword_1EBA674A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B80BAD04(uint64_t a1)
{
  result = type metadata accessor for FriendshipRequest(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t FriendshipAction.rawValue.getter()
{
  v1 = *v0;
  v2 = 6579297;
  v3 = 0x796669646F6DLL;
  v4 = 0x726566666FLL;
  if (v1 != 3)
  {
    v4 = 0x657469766E69;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x65766F6D6572;
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

uint64_t FriendshipAction.description.getter()
{
  v1 = *v0;
  v2 = 1684300078;
  v3 = 0x796669646F6D2ELL;
  v4 = 0x726566666F2ELL;
  if (v1 != 3)
  {
    v4 = 0x657469766E692ELL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x65766F6D65722ELL;
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

FindMyLocate::FriendshipAction_optional __swiftcall FriendshipAction.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B80C967C();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1B80BAEE0()
{
  sub_1B80C993C();
  sub_1B80C911C();

  return sub_1B80C997C();
}

uint64_t sub_1B80BAFAC(uint64_t a1)
{
  sub_1B80C911C();
}

uint64_t sub_1B80BB064(uint64_t a1)
{
  sub_1B80C993C();
  sub_1B80C911C();

  return sub_1B80C997C();
}

void sub_1B80BB138(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 6579297;
  v5 = 0xE600000000000000;
  v6 = 0x796669646F6DLL;
  v7 = 0xE500000000000000;
  v8 = 0x726566666FLL;
  if (v2 != 3)
  {
    v8 = 0x657469766E69;
    v7 = 0xE600000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x65766F6D6572;
    v3 = 0xE600000000000000;
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

uint64_t sub_1B80BB270()
{
  v1 = *v0;
  v2 = 1684300078;
  v3 = 0x796669646F6D2ELL;
  v4 = 0x726566666F2ELL;
  if (v1 != 3)
  {
    v4 = 0x657469766E692ELL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x65766F6D65722ELL;
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

uint64_t sub_1B80BB300(uint64_t a1)
{
  v2 = sub_1B80BBC8C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B80BB33C(uint64_t a1)
{
  v2 = sub_1B80BBC8C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B80BB378()
{
  v1 = 0x6465766F6D6572;
  if (*v0 != 1)
  {
    v1 = 0x6465696669646F6DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6465646461;
  }
}

uint64_t sub_1B80BB3D0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B80BCA9C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B80BB3F8(uint64_t a1)
{
  v2 = sub_1B80BBB2C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B80BB434(uint64_t a1)
{
  v2 = sub_1B80BBB2C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B80BB470(uint64_t a1)
{
  v2 = sub_1B80BBBE4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B80BB4AC(uint64_t a1)
{
  v2 = sub_1B80BBBE4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B80BB4E8(uint64_t a1)
{
  v2 = sub_1B80BBC38();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B80BB524(uint64_t a1)
{
  v2 = sub_1B80BBC38();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FriendStreamChange.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA674B8, &qword_1B80DD3B0);
  v39 = *(v2 - 8);
  v40 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v38 = &v31 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA674C0, &qword_1B80DD3B8);
  v36 = *(v4 - 8);
  v37 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v35 = &v31 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA674C8, &qword_1B80DD3C0);
  v33 = *(v6 - 8);
  v34 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v32 = &v31 - v7;
  v42 = type metadata accessor for Friend(0);
  v8 = MEMORY[0x1EEE9AC00](v42);
  v31 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v31 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v31 - v13;
  v15 = type metadata accessor for FriendStreamChange(0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA674D0, &qword_1B80DD3C8);
  v18 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v20 = &v31 - v19;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B80BBB2C();
  sub_1B80C99DC();
  sub_1B80BBB80(v41, v17);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v22 = (v18 + 8);
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1B80BC53C(v17, v12, type metadata accessor for Friend);
      v45 = 1;
      sub_1B80BBC38();
      v23 = v35;
      v24 = v43;
      sub_1B80C974C();
      sub_1B808D93C(&qword_1EBA67048, &protocol conformance descriptor for Friend);
      v25 = v37;
      sub_1B80C97DC();
      v26 = v36;
    }

    else
    {
      v12 = v31;
      sub_1B80BC53C(v17, v31, type metadata accessor for Friend);
      v46 = 2;
      sub_1B80BBBE4();
      v23 = v38;
      v24 = v43;
      sub_1B80C974C();
      sub_1B808D93C(&qword_1EBA67048, &protocol conformance descriptor for Friend);
      v25 = v40;
      sub_1B80C97DC();
      v26 = v39;
    }

    (*(v26 + 8))(v23, v25);
    v29 = v12;
  }

  else
  {
    sub_1B80BC53C(v17, v14, type metadata accessor for Friend);
    v44 = 0;
    sub_1B80BBC8C();
    v27 = v32;
    v24 = v43;
    sub_1B80C974C();
    sub_1B808D93C(&qword_1EBA67048, &protocol conformance descriptor for Friend);
    v28 = v34;
    sub_1B80C97DC();
    (*(v33 + 8))(v27, v28);
    v29 = v14;
  }

  sub_1B7FE7C34(v29);
  return (*v22)(v20, v24);
}

unint64_t sub_1B80BBB2C()
{
  result = qword_1EBA674D8;
  if (!qword_1EBA674D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA674D8);
  }

  return result;
}

uint64_t sub_1B80BBB80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FriendStreamChange(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B80BBBE4()
{
  result = qword_1EBA674E0;
  if (!qword_1EBA674E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA674E0);
  }

  return result;
}

unint64_t sub_1B80BBC38()
{
  result = qword_1EBA674E8;
  if (!qword_1EBA674E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA674E8);
  }

  return result;
}

unint64_t sub_1B80BBC8C()
{
  result = qword_1EBA674F0;
  if (!qword_1EBA674F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA674F0);
  }

  return result;
}

uint64_t FriendStreamChange.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA674F8, &qword_1B80DD3D0);
  v4 = *(v3 - 8);
  v63 = v3;
  v64 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v67 = &v54 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67500, &qword_1B80DD3D8);
  v7 = *(v6 - 8);
  v61 = v6;
  v62 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v66 = &v54 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67508, &qword_1B80DD3E0);
  v59 = *(v9 - 8);
  v60 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v65 = &v54 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67510, &unk_1B80DD3E8);
  v69 = *(v11 - 8);
  v70 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v54 - v12;
  v14 = type metadata accessor for FriendStreamChange(0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v54 - v19;
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v54 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v54 - v24;
  v26 = a1[3];
  v72 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v26);
  sub_1B80BBB2C();
  v27 = v71;
  sub_1B80C99BC();
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
    v33 = sub_1B80C973C();
    v34 = (2 * *(v33 + 16)) | 1;
    v73 = v33;
    v74 = v33 + 32;
    v75 = 0;
    v76 = v34;
    v35 = sub_1B7FCD6E4();
    if (v35 == 3 || v75 != v76 >> 1)
    {
      v39 = sub_1B80C955C();
      swift_allocError();
      v41 = v40;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66310, &qword_1B80D3ED0);
      *v41 = v58;
      sub_1B80C969C();
      sub_1B80C954C();
      (*(*(v39 - 8) + 104))(v41, *MEMORY[0x1E69E6AF8], v39);
      swift_willThrow();
    }

    else
    {
      if (v35)
      {
        if (v35 == 1)
        {
          v77 = 1;
          sub_1B80BBC38();
          v36 = v71;
          sub_1B80C968C();
          v37 = v30;
          v38 = v69;
          if (v36)
          {
            goto LABEL_9;
          }

          v71 = v25;
          type metadata accessor for Friend(0);
          sub_1B808D93C(qword_1ED8DD290, &protocol conformance descriptor for Friend);
          v51 = v55;
          v52 = v61;
          sub_1B80C972C();
          (*(v62 + 8))(v28, v52);
          (*(v38 + 8))(v13, v70);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v44 = v51;
        }

        else
        {
          v77 = 2;
          sub_1B80BBBE4();
          v46 = v31;
          v47 = v71;
          sub_1B80C968C();
          v48 = v69;
          if (v47)
          {
            goto LABEL_9;
          }

          v37 = v30;
          v71 = v25;
          type metadata accessor for Friend(0);
          sub_1B808D93C(qword_1ED8DD290, &protocol conformance descriptor for Friend);
          v49 = v57;
          v50 = v63;
          sub_1B80C972C();
          (*(v64 + 8))(v46, v50);
          (*(v48 + 8))(v13, v32);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v44 = v49;
        }

LABEL_17:
        v53 = v71;
        sub_1B80BC53C(v44, v71, type metadata accessor for FriendStreamChange);
        sub_1B80BC53C(v53, v37, type metadata accessor for FriendStreamChange);
        return __swift_destroy_boxed_opaque_existential_0(v72);
      }

      v77 = 0;
      sub_1B80BBC8C();
      v43 = v71;
      sub_1B80C968C();
      if (!v43)
      {
        v71 = v25;
        type metadata accessor for Friend(0);
        sub_1B808D93C(qword_1ED8DD290, &protocol conformance descriptor for Friend);
        v44 = v56;
        v45 = v60;
        sub_1B80C972C();
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

  return __swift_destroy_boxed_opaque_existential_0(v72);
}

uint64_t sub_1B80BC53C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1B80BC5A8()
{
  result = qword_1EBA67518;
  if (!qword_1EBA67518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67518);
  }

  return result;
}

unint64_t sub_1B80BC680()
{
  result = qword_1EBA67520;
  if (!qword_1EBA67520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67520);
  }

  return result;
}

unint64_t sub_1B80BC6D8()
{
  result = qword_1EBA67528;
  if (!qword_1EBA67528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67528);
  }

  return result;
}

unint64_t sub_1B80BC730()
{
  result = qword_1EBA67530;
  if (!qword_1EBA67530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67530);
  }

  return result;
}

unint64_t sub_1B80BC788()
{
  result = qword_1EBA67538;
  if (!qword_1EBA67538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67538);
  }

  return result;
}

unint64_t sub_1B80BC7E0()
{
  result = qword_1EBA67540;
  if (!qword_1EBA67540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67540);
  }

  return result;
}

unint64_t sub_1B80BC838()
{
  result = qword_1EBA67548;
  if (!qword_1EBA67548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67548);
  }

  return result;
}

unint64_t sub_1B80BC890()
{
  result = qword_1EBA67550;
  if (!qword_1EBA67550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67550);
  }

  return result;
}

unint64_t sub_1B80BC8E8()
{
  result = qword_1EBA67558;
  if (!qword_1EBA67558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67558);
  }

  return result;
}

unint64_t sub_1B80BC940()
{
  result = qword_1EBA67560;
  if (!qword_1EBA67560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67560);
  }

  return result;
}

unint64_t sub_1B80BC998()
{
  result = qword_1EBA67568;
  if (!qword_1EBA67568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67568);
  }

  return result;
}

unint64_t sub_1B80BC9F0()
{
  result = qword_1EBA67570;
  if (!qword_1EBA67570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67570);
  }

  return result;
}

unint64_t sub_1B80BCA48()
{
  result = qword_1EBA67578;
  if (!qword_1EBA67578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67578);
  }

  return result;
}

uint64_t sub_1B80BCA9C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6465646461 && a2 == 0xE500000000000000;
  if (v4 || (sub_1B80C981C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6465766F6D6572 && a2 == 0xE700000000000000 || (sub_1B80C981C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6465696669646F6DLL && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1B80C981C();

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

unint64_t sub_1B80BCBB0()
{
  result = qword_1EBA67580;
  if (!qword_1EBA67580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67580);
  }

  return result;
}

uint64_t sub_1B80BCC08()
{
  if (*v0)
  {
    return 0x6465766F6D6572;
  }

  else
  {
    return 0x64657461647075;
  }
}

uint64_t sub_1B80BCC3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x64657461647075 && a2 == 0xE700000000000000;
  if (v6 || (sub_1B80C981C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6465766F6D6572 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B80C981C();

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

uint64_t sub_1B80BCD18(uint64_t a1)
{
  v2 = sub_1B80BD520();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B80BCD54(uint64_t a1)
{
  v2 = sub_1B80BD520();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B80BCD90(uint64_t a1)
{
  v2 = sub_1B80BD5D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B80BCDCC(uint64_t a1)
{
  v2 = sub_1B80BD5D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B80BCE08()
{
  if (*v0)
  {
    return 12639;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_1B80BCE24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (sub_1B80C981C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 12639 && a2 == 0xE200000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B80C981C();

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

uint64_t sub_1B80BCEF0(uint64_t a1)
{
  v2 = sub_1B80BD62C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B80BCF2C(uint64_t a1)
{
  v2 = sub_1B80BD62C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LocationStreamChange.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67588, &qword_1B80DDA40);
  v36 = *(v2 - 8);
  v37 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v35 = &v33 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67590, &qword_1B80DDA48);
  v39 = *(v4 - 8);
  v40 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v38 = &v33 - v5;
  v34 = type metadata accessor for Location(0);
  MEMORY[0x1EEE9AC00](v34);
  v42 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for LocationStreamChange(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67598, &unk_1B80DDA50);
  v10 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v12 = &v33 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B80BD520();
  sub_1B80C99DC();
  sub_1B80BD574(v41, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = v9[9];
    v64 = v9[8];
    v65 = v13;
    v66 = v9[10];
    v14 = v9[5];
    v60 = v9[4];
    v61 = v14;
    v15 = v9[7];
    v62 = v9[6];
    v63 = v15;
    v16 = v9[1];
    v56 = *v9;
    v57 = v16;
    v17 = v9[3];
    v58 = v9[2];
    v59 = v17;
    LOBYTE(v45) = 1;
    sub_1B80BD5D8();
    v18 = v35;
    v19 = v67;
    sub_1B80C974C();
    v53 = v64;
    v54 = v65;
    v55 = v66;
    v49 = v60;
    v50 = v61;
    v51 = v62;
    v52 = v63;
    v45 = v56;
    v46 = v57;
    v47 = v58;
    v48 = v59;
    sub_1B7FDC224();
    v20 = v37;
    sub_1B80C97DC();
    (*(v36 + 8))(v18, v20);
    (*(v10 + 8))(v12, v19);
  }

  else
  {
    v21 = v10;
    v22 = (v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660E8, &qword_1B80D2EB0) + 48));
    v23 = v22[9];
    v64 = v22[8];
    v65 = v23;
    v66 = v22[10];
    v24 = v22[5];
    v60 = v22[4];
    v61 = v24;
    v25 = v22[7];
    v62 = v22[6];
    v63 = v25;
    v26 = v22[1];
    v56 = *v22;
    v57 = v26;
    v27 = v22[3];
    v58 = v22[2];
    v59 = v27;
    sub_1B80BDE68(v9, v42, type metadata accessor for Location);
    LOBYTE(v45) = 0;
    sub_1B80BD62C();
    v28 = v38;
    v29 = v67;
    sub_1B80C974C();
    LOBYTE(v45) = 0;
    sub_1B80BDED0(&qword_1EBA675B8, &protocol conformance descriptor for Location);
    v30 = v40;
    v31 = v43;
    sub_1B80C97DC();
    if (v31)
    {
      sub_1B7FCAD28(&v56);
      (*(v39 + 8))(v28, v30);
      sub_1B7FD7CBC(v42);
      return (*(v21 + 8))(v12, v29);
    }

    v53 = v64;
    v54 = v65;
    v55 = v66;
    v49 = v60;
    v50 = v61;
    v51 = v62;
    v52 = v63;
    v45 = v56;
    v46 = v57;
    v47 = v58;
    v48 = v59;
    v44 = 1;
    sub_1B7FDC224();
    sub_1B80C97DC();
    (*(v39 + 8))(v28, v30);
    sub_1B7FD7CBC(v42);
    (*(v21 + 8))(v12, v29);
  }

  return sub_1B7FCAD28(&v56);
}

unint64_t sub_1B80BD520()
{
  result = qword_1EBA675A0;
  if (!qword_1EBA675A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA675A0);
  }

  return result;
}

uint64_t sub_1B80BD574(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocationStreamChange(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B80BD5D8()
{
  result = qword_1EBA675A8;
  if (!qword_1EBA675A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA675A8);
  }

  return result;
}

unint64_t sub_1B80BD62C()
{
  result = qword_1EBA675B0;
  if (!qword_1EBA675B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA675B0);
  }

  return result;
}

uint64_t LocationStreamChange.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA675C0, &qword_1B80DDA60);
  v44 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v47 = &v41 - v3;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA675C8, &qword_1B80DDA68);
  v46 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v50 = &v41 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA675D0, &unk_1B80DDA70);
  v49 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v41 - v6;
  v8 = type metadata accessor for LocationStreamChange(0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v41 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v41 - v15;
  v17 = a1[3];
  v67 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_1B80BD520();
  v18 = v51;
  sub_1B80C99BC();
  if (!v18)
  {
    v41 = v11;
    v19 = v47;
    v42 = v16;
    v51 = v8;
    v20 = v48;
    v21 = sub_1B80C973C();
    v22 = (2 * *(v21 + 16)) | 1;
    v63 = v21;
    v64 = v21 + 32;
    v65 = 0;
    v66 = v22;
    v23 = sub_1B7FCC41C();
    if (v23 == 2 || v65 != v66 >> 1)
    {
      v34 = sub_1B80C955C();
      swift_allocError();
      v36 = v35;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66310, &qword_1B80D3ED0);
      *v36 = v51;
      sub_1B80C969C();
      sub_1B80C954C();
      (*(*(v34 - 8) + 104))(v36, *MEMORY[0x1E69E6AF8], v34);
      swift_willThrow();
      (*(v49 + 8))(v7, v5);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v23)
      {
        LOBYTE(v52) = 1;
        sub_1B80BD5D8();
        v24 = v19;
        sub_1B80C968C();
        v25 = v49;
        sub_1B7FDC440();
        v26 = v43;
        sub_1B80C972C();
        (*(v44 + 8))(v24, v26);
        (*(v25 + 8))(v7, v5);
        swift_unknownObjectRelease();
        v27 = v61;
        v28 = v41;
        v41[8] = v60;
        v28[9] = v27;
        v28[10] = v62;
        v29 = v57;
        v28[4] = v56;
        v28[5] = v29;
        v30 = v59;
        v28[6] = v58;
        v28[7] = v30;
        v31 = v53;
        *v28 = v52;
        v28[1] = v31;
        v32 = v55;
        v28[2] = v54;
        v28[3] = v32;
        swift_storeEnumTagMultiPayload();
        v33 = v42;
        sub_1B80BDE68(v28, v42, type metadata accessor for LocationStreamChange);
      }

      else
      {
        LOBYTE(v52) = 0;
        sub_1B80BD62C();
        sub_1B80C968C();
        v37 = v49;
        type metadata accessor for Location(0);
        LOBYTE(v52) = 0;
        sub_1B80BDED0(&qword_1ED8DBC38, &protocol conformance descriptor for Location);
        v38 = v14;
        v39 = v45;
        sub_1B80C972C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660E8, &qword_1B80D2EB0);
        LOBYTE(v52) = 1;
        sub_1B7FDC440();
        sub_1B80C972C();
        (*(v46 + 8))(v50, v39);
        (*(v37 + 8))(v7, v5);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v33 = v42;
        sub_1B80BDE68(v38, v42, type metadata accessor for LocationStreamChange);
      }

      sub_1B80BDE68(v33, v20, type metadata accessor for LocationStreamChange);
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v67);
}

uint64_t sub_1B80BDE68(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B80BDED0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Location(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B80BDF78()
{
  result = qword_1EBA675D8;
  if (!qword_1EBA675D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA675D8);
  }

  return result;
}

unint64_t sub_1B80BDFD0()
{
  result = qword_1EBA675E0;
  if (!qword_1EBA675E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA675E0);
  }

  return result;
}

unint64_t sub_1B80BE028()
{
  result = qword_1EBA675E8;
  if (!qword_1EBA675E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA675E8);
  }

  return result;
}

unint64_t sub_1B80BE080()
{
  result = qword_1EBA675F0;
  if (!qword_1EBA675F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA675F0);
  }

  return result;
}

unint64_t sub_1B80BE0D8()
{
  result = qword_1EBA675F8;
  if (!qword_1EBA675F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA675F8);
  }

  return result;
}

unint64_t sub_1B80BE130()
{
  result = qword_1EBA67600;
  if (!qword_1EBA67600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67600);
  }

  return result;
}

unint64_t sub_1B80BE188()
{
  result = qword_1EBA67608;
  if (!qword_1EBA67608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67608);
  }

  return result;
}

unint64_t sub_1B80BE1E0()
{
  result = qword_1EBA67610;
  if (!qword_1EBA67610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67610);
  }

  return result;
}

unint64_t sub_1B80BE238()
{
  result = qword_1EBA67618;
  if (!qword_1EBA67618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67618);
  }

  return result;
}

uint64_t PreferenceStreamChange.description.getter()
{
  v1 = *v0;
  if (*(v0 + 52) > 1u)
  {
    if (*(v0 + 52) != 2)
    {
      return 0x6C616974696E692ELL;
    }

    sub_1B80C952C();

    v14[0] = 0xD000000000000010;
    v14[1] = 0x80000001B80CE790;
  }

  else
  {
    if (!*(v0 + 52))
    {
      v3 = v0[1];
      v2 = v0[2];
      v4 = v0[3];
      v5 = v0[4];
      v6 = v0[5];
      v7 = *(v0 + 12);
      v18 = 0x6369766544656D2ELL;
      v19 = 0xEA00000000002865;
      if (v3)
      {
        v14[0] = v1;
        v14[1] = v3;
        v14[2] = v2;
        v14[3] = v4;
        v14[4] = v5;
        v14[5] = v6;
        v15 = v7 & 0x101;
        v16 = BYTE2(v7) & 1;
        v17 = HIBYTE(v7) & 1;
        v8 = Device.description.getter();
        v10 = v9;
      }

      else
      {
        v10 = 0xE400000000000000;
        v8 = 1701736302;
      }

      MEMORY[0x1B8CB7A40](v8, v10);

      MEMORY[0x1B8CB7A40](41, 0xE100000000000000);
      return v18;
    }

    strcpy(v14, ".myLocation(");
    BYTE5(v14[1]) = 0;
    HIWORD(v14[1]) = -5120;
  }

  if (v1)
  {
    v11 = 1702195828;
  }

  else
  {
    v11 = 0x65736C6166;
  }

  if (v1)
  {
    v12 = 0xE400000000000000;
  }

  else
  {
    v12 = 0xE500000000000000;
  }

  MEMORY[0x1B8CB7A40](v11, v12);

  MEMORY[0x1B8CB7A40](41, 0xE100000000000000);
  return v14[0];
}

uint64_t sub_1B80BE438()
{
  v1 = 0x696C616974696E69;
  v2 = 0x697461636F4C796DLL;
  if (*v0 != 2)
  {
    v2 = 0x6552646E65697266;
  }

  if (*v0)
  {
    v1 = 0x656369766544656DLL;
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

uint64_t sub_1B80BE4CC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B80BFEC8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B80BE4F4(uint64_t a1)
{
  v2 = sub_1B80BEED0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B80BE530(uint64_t a1)
{
  v2 = sub_1B80BEED0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B80BE584@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6465776F6C6C61 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1B80C981C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1B80BE60C(uint64_t a1)
{
  v2 = sub_1B80BEF24();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B80BE648(uint64_t a1)
{
  v2 = sub_1B80BEF24();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B80BE684(uint64_t a1)
{
  v2 = sub_1B80BF020();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B80BE6C0(uint64_t a1)
{
  v2 = sub_1B80BF020();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B80BE710@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656369766564 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1B80C981C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1B80BE794(uint64_t a1)
{
  v2 = sub_1B80BEFCC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B80BE7D0(uint64_t a1)
{
  v2 = sub_1B80BEFCC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B80BE824@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x64656C62616E65 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1B80C981C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1B80BE8AC(uint64_t a1)
{
  v2 = sub_1B80BEF78();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B80BE8E8(uint64_t a1)
{
  v2 = sub_1B80BEF78();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PreferenceStreamChange.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67620, &qword_1B80DDE50);
  v38 = *(v3 - 8);
  v39 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v37 = &v26[-v4];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67628, &qword_1B80DDE58);
  v35 = *(v5 - 8);
  v36 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v26[-v6];
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67630, &qword_1B80DDE60);
  v32 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v8 = &v26[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67638, &qword_1B80DDE68);
  v31 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v26[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67640, &qword_1B80DDE70);
  v41 = *(v12 - 8);
  v42 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v26[-v13];
  v15 = *v1;
  v30 = v1[1];
  v40 = v15;
  v16 = *(v1 + 5);
  v29 = *(v1 + 4);
  v28 = v16;
  v27 = *(v1 + 12);
  v17 = *(v1 + 52);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B80BEED0();
  sub_1B80C99DC();
  if (v17 <= 1)
  {
    if (!v17)
    {
      LOBYTE(v45) = 1;
      sub_1B80BEFCC();
      v18 = v42;
      sub_1B80C974C();
      v45 = v40;
      v46 = v30;
      v47 = v29;
      v48 = v28;
      v49 = v27;
      sub_1B806F1E8();
      v19 = v33;
      sub_1B80C977C();
      (*(v32 + 8))(v8, v19);
      return (*(v41 + 8))(v14, v18);
    }

    v43 = v40;
    LOBYTE(v45) = 2;
    sub_1B80BEF78();
    v21 = v34;
    v22 = v42;
    sub_1B80C974C();
    v23 = v36;
    sub_1B80C979C();
    v24 = v35;
    goto LABEL_7;
  }

  if (v17 == 2)
  {
    v44 = v40;
    LOBYTE(v45) = 3;
    sub_1B80BEF24();
    v21 = v37;
    v22 = v42;
    sub_1B80C974C();
    v23 = v39;
    sub_1B80C979C();
    v24 = v38;
LABEL_7:
    (*(v24 + 8))(v21, v23);
    return (*(v41 + 8))(v14, v22);
  }

  LOBYTE(v45) = 0;
  sub_1B80BF020();
  v25 = v42;
  sub_1B80C974C();
  (*(v31 + 8))(v11, v9);
  return (*(v41 + 8))(v14, v25);
}

unint64_t sub_1B80BEED0()
{
  result = qword_1ED8DD520;
  if (!qword_1ED8DD520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DD520);
  }

  return result;
}

unint64_t sub_1B80BEF24()
{
  result = qword_1ED8DC8C8;
  if (!qword_1ED8DC8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC8C8);
  }

  return result;
}

unint64_t sub_1B80BEF78()
{
  result = qword_1ED8DC8D8[0];
  if (!qword_1ED8DC8D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED8DC8D8);
  }

  return result;
}

unint64_t sub_1B80BEFCC()
{
  result = qword_1ED8DC8D0;
  if (!qword_1ED8DC8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC8D0);
  }

  return result;
}

unint64_t sub_1B80BF020()
{
  result = qword_1ED8DD4F8;
  if (!qword_1ED8DD4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DD4F8);
  }

  return result;
}

uint64_t PreferenceStreamChange.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67648, &qword_1B80DDE78);
  v60 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v63 = &v52 - v3;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67650, &qword_1B80DDE80);
  v59 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v61 = &v52 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67658, &qword_1B80DDE88);
  v6 = *(v5 - 8);
  v57 = v5;
  v58 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v52 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67660, &qword_1B80DDE90);
  v55 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v52 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67668, &unk_1B80DDE98);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v52 - v14;
  v16 = a1[3];
  v75 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1B80BEED0();
  v17 = v65;
  sub_1B80C99BC();
  if (!v17)
  {
    v18 = v11;
    v53 = v9;
    v19 = v8;
    v20 = v61;
    v21 = v62;
    v54 = 0;
    v65 = v13;
    v23 = v63;
    v22 = v64;
    v24 = sub_1B80C973C();
    v25 = (2 * *(v24 + 16)) | 1;
    v71 = v24;
    v72 = v24 + 32;
    v73 = 0;
    v74 = v25;
    v26 = sub_1B7FC72BC();
    if (v26 == 4 || v73 != v74 >> 1)
    {
      v35 = v12;
      v36 = sub_1B80C955C();
      swift_allocError();
      v38 = v37;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66310, &qword_1B80D3ED0);
      *v38 = &type metadata for PreferenceStreamChange;
      sub_1B80C969C();
      sub_1B80C954C();
      (*(*(v36 - 8) + 104))(v38, *MEMORY[0x1E69E6AF8], v36);
      swift_willThrow();
      (*(v65 + 8))(v15, v35);
    }

    else
    {
      if (v26 > 1u)
      {
        v40 = v65;
        if (v26 == 2)
        {
          LOBYTE(v66) = 2;
          sub_1B80BEF78();
          v41 = v54;
          sub_1B80C968C();
          if (!v41)
          {
            v42 = v22;
            v43 = v21;
            v50 = sub_1B80C96EC();
            (*(v59 + 8))(v20, v43);
            (*(v40 + 8))(v15, v12);
            swift_unknownObjectRelease();
            v31 = 0;
            v30 = v50 & 1;
            v34 = 1;
LABEL_22:
            *v42 = v31 | v30;
            *(v42 + 8) = v32;
            *(v42 + 24) = v33;
            *(v42 + 40) = v28;
            *(v42 + 48) = v29;
            *(v42 + 52) = v34;
            return __swift_destroy_boxed_opaque_existential_0(v75);
          }
        }

        else
        {
          LOBYTE(v66) = 3;
          sub_1B80BEF24();
          v45 = v23;
          v46 = v54;
          sub_1B80C968C();
          if (!v46)
          {
            v42 = v22;
            v48 = v12;
            v49 = v56;
            v51 = sub_1B80C96EC();
            (*(v60 + 8))(v45, v49);
            (*(v40 + 8))(v15, v48);
            swift_unknownObjectRelease();
            v31 = 0;
            v30 = v51 & 1;
            v34 = 2;
            goto LABEL_22;
          }
        }
      }

      else
      {
        if (v26)
        {
          LOBYTE(v66) = 1;
          sub_1B80BEFCC();
          v44 = v54;
          sub_1B80C968C();
          if (!v44)
          {
            sub_1B805B96C();
            v47 = v57;
            sub_1B80C96CC();
            (*(v58 + 8))(v19, v47);
            (*(v65 + 8))(v15, v12);
            swift_unknownObjectRelease();
            v34 = 0;
            v30 = v66;
            v32 = v67;
            v33 = v68;
            v28 = v69;
            v29 = v70;
            v31 = v66 & 0xFFFFFFFFFFFFFF00;
            goto LABEL_20;
          }
        }

        else
        {
          LOBYTE(v66) = 0;
          sub_1B80BF020();
          v27 = v54;
          sub_1B80C968C();
          if (!v27)
          {
            (*(v55 + 8))(v18, v53);
            (*(v65 + 8))(v15, v12);
            swift_unknownObjectRelease();
            v28 = 0;
            v29 = 0;
            v30 = 0;
            v31 = 0;
            v32 = 0uLL;
            v33 = 0uLL;
            v34 = 3;
LABEL_20:
            v42 = v22;
            goto LABEL_22;
          }
        }

        v40 = v65;
      }

      (*(v40 + 8))(v15, v12);
    }

    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_0(v75);
}

uint64_t get_enum_tag_for_layout_string_12FindMyLocate22PreferenceStreamChangeO(uint64_t a1)
{
  if ((*(a1 + 52) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 52) & 3;
  }
}

uint64_t sub_1B80BF8E0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 53))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 52);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1B80BF928(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 52) = 0;
    *(result + 48) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 53) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 53) = 0;
    }

    if (a2)
    {
      *(result + 52) = -a2;
    }
  }

  return result;
}

uint64_t sub_1B80BF980(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 36) = 0u;
    LOBYTE(a2) = 3;
  }

  *(result + 52) = a2;
  return result;
}

unint64_t sub_1B80BF9FC()
{
  result = qword_1EBA67670;
  if (!qword_1EBA67670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67670);
  }

  return result;
}

unint64_t sub_1B80BFA54()
{
  result = qword_1EBA67678;
  if (!qword_1EBA67678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67678);
  }

  return result;
}

unint64_t sub_1B80BFAAC()
{
  result = qword_1EBA67680;
  if (!qword_1EBA67680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67680);
  }

  return result;
}

unint64_t sub_1B80BFB04()
{
  result = qword_1EBA67688;
  if (!qword_1EBA67688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67688);
  }

  return result;
}

unint64_t sub_1B80BFB5C()
{
  result = qword_1ED8DD4E8;
  if (!qword_1ED8DD4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DD4E8);
  }

  return result;
}

unint64_t sub_1B80BFBB4()
{
  result = qword_1ED8DD4F0;
  if (!qword_1ED8DD4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DD4F0);
  }

  return result;
}

unint64_t sub_1B80BFC0C()
{
  result = qword_1ED8DD500;
  if (!qword_1ED8DD500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DD500);
  }

  return result;
}

unint64_t sub_1B80BFC64()
{
  result = qword_1ED8DD508;
  if (!qword_1ED8DD508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DD508);
  }

  return result;
}

unint64_t sub_1B80BFCBC()
{
  result = qword_1ED8DD528;
  if (!qword_1ED8DD528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DD528);
  }

  return result;
}

unint64_t sub_1B80BFD14()
{
  result = qword_1ED8DD530;
  if (!qword_1ED8DD530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DD530);
  }

  return result;
}

unint64_t sub_1B80BFD6C()
{
  result = qword_1ED8DD4D8;
  if (!qword_1ED8DD4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DD4D8);
  }

  return result;
}

unint64_t sub_1B80BFDC4()
{
  result = qword_1ED8DD4E0;
  if (!qword_1ED8DD4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DD4E0);
  }

  return result;
}

unint64_t sub_1B80BFE1C()
{
  result = qword_1ED8DD510;
  if (!qword_1ED8DD510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DD510);
  }

  return result;
}

unint64_t sub_1B80BFE74()
{
  result = qword_1ED8DD518;
  if (!qword_1ED8DD518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DD518);
  }

  return result;
}

uint64_t sub_1B80BFEC8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696C616974696E69 && a2 == 0xEB0000000064657ALL;
  if (v4 || (sub_1B80C981C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656369766544656DLL && a2 == 0xE800000000000000 || (sub_1B80C981C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x697461636F4C796DLL && a2 == 0xEA00000000006E6FLL || (sub_1B80C981C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6552646E65697266 && a2 == 0xEE00737473657571)
  {

    return 3;
  }

  else
  {
    v6 = sub_1B80C981C();

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

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_1B80C0060(uint64_t a1, unsigned int a2)
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

uint64_t sub_1B80C00A8(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t static LocalizationUtility.localizedString(key:table:)(uint64_t a1, uint64_t a2, _BYTE *a3, __n128 a4)
{
  type metadata accessor for BundleHelper();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  v6 = sub_1B80C8C8C();

  return v6;
}

uint64_t LocalizationUtility.Table.hashValue.getter()
{
  v1 = *v0;
  sub_1B80C993C();
  MEMORY[0x1B8CB8250](v1);
  return sub_1B80C997C();
}

uint64_t sub_1B80C029C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v14 = MEMORY[0x1E69E7CC0];
    sub_1B8092BC8(0, v1, 0);
    v2 = v14;
    v4 = (a1 + 40);
    v5 = MEMORY[0x1E69E6158];
    do
    {
      v7 = *(v4 - 1);
      v6 = *v4;
      v14 = v2;
      v8 = *(v2 + 16);
      v9 = *(v2 + 24);

      if (v8 >= v9 >> 1)
      {
        sub_1B8092BC8((v9 > 1), v8 + 1, 1);
        v2 = v14;
      }

      v12 = v5;
      v13 = sub_1B806BEAC();
      *&v11 = v7;
      *(&v11 + 1) = v6;
      *(v2 + 16) = v8 + 1;
      sub_1B80C0530(&v11, v2 + 40 * v8 + 32);
      v4 += 2;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1B80C039C(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4)
{
  type metadata accessor for BundleHelper();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = [objc_opt_self() bundleForClass_];
  sub_1B80C8C8C();

  sub_1B80C029C(a4);
  v7 = sub_1B80C90CC();

  return v7;
}

unint64_t sub_1B80C04BC()
{
  result = qword_1EBA67690;
  if (!qword_1EBA67690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67690);
  }

  return result;
}

uint64_t sub_1B80C0530(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t ClientID.init(identifier:connectionType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a3;
  if (a2)
  {

    v8 = sub_1B80C909C();
    v10 = v9;
  }

  else
  {
    v11 = [objc_opt_self() processInfo];
    [v11 processIdentifier];

    sub_1B80C991C();
    sub_1B804B6D0();
    v8 = sub_1B80C960C();
    v10 = v12;
  }

  sub_1B7FDAA44();
  sub_1B80C8BBC();
  sub_1B7FC3CCC(v8, v10);
  v13 = type metadata accessor for ClientID(0);
  v14 = (a4 + v13[6]);
  *v14 = a1;
  v14[1] = a2;
  *(a4 + v13[5]) = v7;
  v15 = v13[7];
  v16 = sub_1B80C8E9C();
  return (*(*(v16 - 8) + 56))(a4 + v15, 1, 1, v16);
}

uint64_t ClientID.init(xpcConnectionID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B80C8E9C();
  v10 = *(v4 - 8);
  (*(v10 + 16))(a2, a1, v4);
  v5 = type metadata accessor for ClientID(0);
  v6 = (a2 + v5[6]);
  *v6 = 0;
  v6[1] = 0;
  *(a2 + v5[5]) = 0;
  v7 = v5[7];
  (*(v10 + 32))(a2 + v7, a1, v4);
  v8 = *(v10 + 56);

  return v8(a2 + v7, 0, 1, v4);
}

uint64_t sub_1B80C07C8(uint64_t a1)
{
  v2 = sub_1B80C0BE0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B80C0804(uint64_t a1)
{
  v2 = sub_1B80C0BE0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B80C0840(uint64_t a1)
{
  v2 = sub_1B7FCE400();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B80C087C(uint64_t a1)
{
  v2 = sub_1B7FCE400();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B80C08B8(uint64_t a1)
{
  v2 = sub_1B7FCE2A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B80C08F4(uint64_t a1)
{
  v2 = sub_1B7FCE2A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ClientID.ConnectionType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67698, &qword_1B80DE6A0);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA676A0, &qword_1B80DE6A8);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA676A8, &qword_1B80DE6B0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7FCE400();
  sub_1B80C99DC();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_1B80C0BE0();
    v14 = v18;
    sub_1B80C974C();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_1B7FCE2A0();
    sub_1B80C974C();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

unint64_t sub_1B80C0BE0()
{
  result = qword_1EBA676B0;
  if (!qword_1EBA676B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA676B0);
  }

  return result;
}

uint64_t ClientID.ConnectionType.hashValue.getter()
{
  v1 = *v0;
  sub_1B80C993C();
  MEMORY[0x1B8CB8250](v1);
  return sub_1B80C997C();
}

uint64_t ClientID.uuid.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B80C8E9C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ClientID.identifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for ClientID(0) + 24));

  return v1;
}

uint64_t ClientID.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA676D8, &qword_1B80DE6D8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7FD03B0();
  sub_1B80C99DC();
  LOBYTE(v11) = 0;
  sub_1B80C8E9C();
  sub_1B7FCE654(&qword_1ED8DC388, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
  sub_1B80C97DC();
  if (!v2)
  {
    v9 = type metadata accessor for ClientID(0);
    LOBYTE(v11) = *(v3 + *(v9 + 20));
    v12 = 1;
    sub_1B80C0FE4();
    sub_1B80C97DC();
    LOBYTE(v11) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA667B0, &qword_1B80D68E8);
    sub_1B80C1038();
    sub_1B80C97DC();
    v11 = *(v3 + *(v9 + 24));
    v12 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65D98, &qword_1B80DE6E0);
    sub_1B80C10EC();
    sub_1B80C97DC();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1B80C0FE4()
{
  result = qword_1ED8DBC48;
  if (!qword_1ED8DBC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DBC48);
  }

  return result;
}

unint64_t sub_1B80C1038()
{
  result = qword_1ED8DC380;
  if (!qword_1ED8DC380)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA667B0, &qword_1B80D68E8);
    sub_1B7FCE654(&qword_1ED8DC388, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC380);
  }

  return result;
}

unint64_t sub_1B80C10EC()
{
  result = qword_1ED8DBC18;
  if (!qword_1ED8DBC18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA65D98, &qword_1B80DE6E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DBC18);
  }

  return result;
}

uint64_t sub_1B80C1174()
{
  sub_1B80C993C();
  sub_1B80C911C();

  return sub_1B80C997C();
}

uint64_t sub_1B80C124C(uint64_t a1)
{
  sub_1B80C911C();
}

uint64_t sub_1B80C1310(uint64_t a1)
{
  sub_1B80C993C();
  sub_1B80C911C();

  return sub_1B80C997C();
}

unint64_t sub_1B80C13E4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1B80C1B84(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1B80C1414(uint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1684632949;
  v4 = 0xEF44496E6F697463;
  v5 = 0x656E6E6F43637078;
  if (*v1 != 2)
  {
    v5 = 0x696669746E656469;
    v4 = 0xEA00000000007265;
  }

  if (*v1)
  {
    v3 = 0x697463656E6E6F63;
    v2 = 0xEE00657079546E6FLL;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_1B80C14A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B80C1B84(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B80C14D0(uint64_t a1)
{
  v2 = sub_1B7FD03B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B80C150C(uint64_t a1)
{
  v2 = sub_1B7FD03B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ClientID.hashValue.getter()
{
  sub_1B80C993C();
  ClientID.hash(into:)(v1);
  return sub_1B80C997C();
}

uint64_t sub_1B80C158C()
{
  sub_1B80C993C();
  ClientID.hash(into:)(v1);
  return sub_1B80C997C();
}

unint64_t sub_1B80C15EC()
{
  result = qword_1EBA676E0;
  if (!qword_1EBA676E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA676E0);
  }

  return result;
}

void sub_1B80C1688(uint64_t a1)
{
  sub_1B80C8E9C();
  if (v1 <= 0x3F)
  {
    sub_1B80C172C();
    if (v2 <= 0x3F)
    {
      sub_1B80C177C(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B80C172C()
{
  if (!qword_1ED8DD578)
  {
    v0 = sub_1B80C946C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED8DD578);
    }
  }
}

void sub_1B80C177C(uint64_t a1)
{
  if (!qword_1ED8DDA90)
  {
    sub_1B80C8E9C();
    v1 = sub_1B80C946C();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED8DDA90);
    }
  }
}

unint64_t sub_1B80C1818()
{
  result = qword_1EBA676E8;
  if (!qword_1EBA676E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA676E8);
  }

  return result;
}

unint64_t sub_1B80C1870()
{
  result = qword_1EBA676F0;
  if (!qword_1EBA676F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA676F0);
  }

  return result;
}

unint64_t sub_1B80C18C8()
{
  result = qword_1ED8DC3E8;
  if (!qword_1ED8DC3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC3E8);
  }

  return result;
}

unint64_t sub_1B80C1920()
{
  result = qword_1ED8DC3F0;
  if (!qword_1ED8DC3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC3F0);
  }

  return result;
}

unint64_t sub_1B80C1978()
{
  result = qword_1ED8DC3B8;
  if (!qword_1ED8DC3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC3B8);
  }

  return result;
}

unint64_t sub_1B80C19D0()
{
  result = qword_1ED8DC3C0;
  if (!qword_1ED8DC3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC3C0);
  }

  return result;
}

unint64_t sub_1B80C1A28()
{
  result = qword_1ED8DC3A8;
  if (!qword_1ED8DC3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC3A8);
  }

  return result;
}

unint64_t sub_1B80C1A80()
{
  result = qword_1ED8DC3B0;
  if (!qword_1ED8DC3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC3B0);
  }

  return result;
}

unint64_t sub_1B80C1AD8()
{
  result = qword_1ED8DC3D0;
  if (!qword_1ED8DC3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC3D0);
  }

  return result;
}

unint64_t sub_1B80C1B30()
{
  result = qword_1ED8DC3D8;
  if (!qword_1ED8DC3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC3D8);
  }

  return result;
}

unint64_t sub_1B80C1B84(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B80C967C();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t CommunicationError.description.getter()
{
  v1 = 0xD000000000000019;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000001BLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD00000000000001BLL;
  }
}

unint64_t CommunicationError.errorUserInfo.getter()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66F38, &unk_1B80DECA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B80D1EB0;
  *(inited + 32) = sub_1B80C90BC();
  *(inited + 40) = v3;
  v4 = 0xD000000000000019;
  v5 = "09D49612BundleHelper";
  if (v1 == 1)
  {
    v5 = "ResultObject encoding error";
  }

  else
  {
    v4 = 0xD00000000000001BLL;
  }

  if (v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xD00000000000001BLL;
  }

  if (v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = "Missing Trampoline object";
  }

  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v6;
  *(inited + 56) = v7 | 0x8000000000000000;
  v8 = sub_1B8083464(inited);
  swift_setDeallocating();
  sub_1B8083594(inited + 32);
  return v8;
}

FindMyLocate::CommunicationError_optional __swiftcall CommunicationError.init(rawValue:)(Swift::Int rawValue)
{
  v2 = rawValue + 24;
  if ((rawValue - 1000) >= 3)
  {
    v2 = 3;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_1B80C1D60(uint64_t a1)
{
  v2 = sub_1B80C1ED4();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1B80C1D9C(uint64_t a1)
{
  v2 = sub_1B80C1ED4();
  v3 = sub_1B80C1F28();
  v4 = sub_1B804B6D0();

  return MEMORY[0x1EEDC6AB0](a1, v2, v3, v4);
}

unint64_t sub_1B80C1E18()
{
  result = qword_1EBA67700;
  if (!qword_1EBA67700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67700);
  }

  return result;
}

unint64_t sub_1B80C1E70()
{
  result = qword_1EBA67708;
  if (!qword_1EBA67708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67708);
  }

  return result;
}

unint64_t sub_1B80C1ED4()
{
  result = qword_1EBA67710;
  if (!qword_1EBA67710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67710);
  }

  return result;
}

unint64_t sub_1B80C1F28()
{
  result = qword_1EBA67718;
  if (!qword_1EBA67718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67718);
  }

  return result;
}

void *ResultObject.internalValue.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12FindMyLocate12ResultObject_internalValue);
  sub_1B80C1FE4(v1, *(v0 + OBJC_IVAR____TtC12FindMyLocate12ResultObject_internalValue + 8), *(v0 + OBJC_IVAR____TtC12FindMyLocate12ResultObject_internalValue + 16));
  return v1;
}

id sub_1B80C1FE4(id a1, unint64_t a2, char a3)
{
  if (a3)
  {
    return a1;
  }

  else
  {
    return sub_1B7FC62D8(a1, a2);
  }
}

id static ResultObject.success(_:)(uint64_t a1, unint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = &v5[OBJC_IVAR____TtC12FindMyLocate12ResultObject_internalValue];
  *v6 = a1;
  *(v6 + 1) = a2;
  v6[16] = 0;
  sub_1B7FC62D8(a1, a2);
  v8.receiver = v5;
  v8.super_class = v2;
  return objc_msgSendSuper2(&v8, sel_init);
}

id ResultObject.__allocating_init(data:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = &v5[OBJC_IVAR____TtC12FindMyLocate12ResultObject_internalValue];
  *v6 = a1;
  *(v6 + 1) = a2;
  v6[16] = 0;
  v8.receiver = v5;
  v8.super_class = v2;
  return objc_msgSendSuper2(&v8, sel_init);
}

id static ResultObject.failure(_:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = &v3[OBJC_IVAR____TtC12FindMyLocate12ResultObject_internalValue];
  *v4 = a1;
  *(v4 + 1) = 0;
  v4[16] = 1;
  v5 = a1;
  v7.receiver = v3;
  v7.super_class = v1;
  return objc_msgSendSuper2(&v7, sel_init);
}

id ResultObject.__allocating_init(error:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = &v3[OBJC_IVAR____TtC12FindMyLocate12ResultObject_internalValue];
  *v4 = a1;
  *(v4 + 1) = 0;
  v4[16] = 1;
  v6.receiver = v3;
  v6.super_class = v1;
  return objc_msgSendSuper2(&v6, sel_init);
}

uint64_t ResultObject.__allocating_init(_:)(int *a1)
{
  v2[4] = v1;
  v2[5] = objc_allocWithZone(v1);
  v6 = (a1 + *a1);
  v4 = swift_task_alloc();
  v2[6] = v4;
  *v4 = v2;
  v4[1] = sub_1B80C229C;

  return v6();
}

uint64_t sub_1B80C229C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 56) = v2;

  if (v2)
  {
    v7 = sub_1B80C246C;
  }

  else
  {
    *(v6 + 64) = a2;
    *(v6 + 72) = a1;
    v7 = sub_1B80C23D0;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1B80C23D0()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = *(v0 + 56) != 0;
  v4 = (v1 + OBJC_IVAR____TtC12FindMyLocate12ResultObject_internalValue);
  *v4 = vextq_s8(*(v0 + 64), *(v0 + 64), 8uLL);
  v4[1].i8[0] = v3;
  *(v0 + 16) = v1;
  *(v0 + 24) = v2;
  v5 = objc_msgSendSuper2((v0 + 16), sel_init);
  v6 = *(v0 + 8);

  return v6(v5);
}

uint64_t sub_1B80C246C()
{
  super_class = v0[3].super_class;
  receiver = v0[2].receiver;
  v2 = v0[2].super_class;
  v4 = v2 + OBJC_IVAR____TtC12FindMyLocate12ResultObject_internalValue;
  *v4 = super_class;
  *(v4 + 1) = 0;
  v4[16] = super_class != 0;
  v0[1].receiver = v2;
  v0[1].super_class = receiver;
  v5 = objc_msgSendSuper2(v0 + 1, sel_init);
  v6 = v0->super_class;

  return v6(v5);
}

uint64_t ResultObject.init(_:)(int *a1)
{
  v2[4] = v1;
  v2[5] = swift_getObjectType();
  v6 = (a1 + *a1);
  v4 = swift_task_alloc();
  v2[6] = v4;
  *v4 = v2;
  v4[1] = sub_1B80C2608;

  return v6();
}

uint64_t sub_1B80C2608(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 56) = v2;

  if (v2)
  {
    v7 = sub_1B80C27D8;
  }

  else
  {
    *(v6 + 64) = a2;
    *(v6 + 72) = a1;
    v7 = sub_1B80C273C;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1B80C273C()
{
  v1 = *(v0 + 56) != 0;
  v2 = *(v0 + 32);
  v3 = (*(v0 + 32) + OBJC_IVAR____TtC12FindMyLocate12ResultObject_internalValue);
  *v3 = vextq_s8(*(v0 + 64), *(v0 + 64), 8uLL);
  v3[1].i8[0] = v1;
  *(v0 + 16) = v2;
  v4 = objc_msgSendSuper2((v0 + 16), sel_init);
  v5 = *(v0 + 8);

  return v5(v4);
}

uint64_t sub_1B80C27D8()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 32);
  v3 = *(v0 + 32) + OBJC_IVAR____TtC12FindMyLocate12ResultObject_internalValue;
  *v3 = v1;
  *(v3 + 8) = 0;
  *(v3 + 16) = v1 != 0;
  *(v0 + 16) = v2;
  v4 = objc_msgSendSuper2((v0 + 16), sel_init);
  v5 = *(v0 + 8);

  return v5(v4);
}

id ResultObject.init(data:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = &v2[OBJC_IVAR____TtC12FindMyLocate12ResultObject_internalValue];
  *v6 = a1;
  *(v6 + 1) = a2;
  v6[16] = 0;
  v8.receiver = v2;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_init);
}

id ResultObject.init(error:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR____TtC12FindMyLocate12ResultObject_internalValue];
  *v4 = a1;
  *(v4 + 1) = 0;
  v4[16] = 1;
  v6.receiver = v1;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, sel_init);
}

Swift::Void __swiftcall ResultObject.encode(with:)(NSCoder with)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA67728, &qword_1B80DEE10);
  sub_1B80C999C();
  if (v7 >> 60 == 15)
  {
    v2 = 0;
  }

  else
  {
    v2 = sub_1B80C8D1C();
    sub_1B7FC72F8(v6, v7);
  }

  v3 = sub_1B80C90AC();
  [(objc_class *)with.super.isa encodeObject:v2 forKey:v3];

  sub_1B80C998C();
  if (v6)
  {
    v4 = sub_1B80C8CFC();
  }

  else
  {
    v4 = 0;
  }

  v5 = sub_1B80C90AC();
  [(objc_class *)with.super.isa encodeObject:v4 forKey:v5];
}

id ResultObject.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_1B80C2C80();

  return v4;
}

id ResultObject.init(coder:)(void *a1)
{
  v2 = sub_1B80C2C80();

  return v2;
}

id ResultObject.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ResultObject.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1B80C2C80()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  sub_1B7FBFCCC(0, &qword_1EBA67738, 0x1E695DEF0);
  v3 = sub_1B80C945C();
  sub_1B7FBFCCC(0, &qword_1EBA67740, 0x1E696ABC0);
  v4 = sub_1B80C945C();
  if (v4)
  {
    v5 = v4;

    v3 = 0;
  }

  else
  {
    if (v3)
    {
      v7 = v3;
      v5 = sub_1B80C8D3C();
      v3 = v8;

      v6 = 0;
      goto LABEL_6;
    }

    sub_1B80C1E70();
    v5 = swift_allocError();
    *v11 = 2;
  }

  v6 = 1;
LABEL_6:
  v9 = &v1[OBJC_IVAR____TtC12FindMyLocate12ResultObject_internalValue];
  *v9 = v5;
  *(v9 + 1) = v3;
  v9[16] = v6;
  v12.receiver = v1;
  v12.super_class = ObjectType;
  return objc_msgSendSuper2(&v12, sel_init);
}

uint64_t dispatch thunk of ResultObject.__allocating_init(_:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(v2 + 88) + **(v2 + 88));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1B80A24D0;

  return v8(a1, a2);
}

uint64_t sub_1B80C2F50(uint64_t a1)
{
  v2 = sub_1B80C36A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B80C2F8C(uint64_t a1)
{
  v2 = sub_1B80C36A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B80C2FC8(uint64_t a1)
{
  v2 = sub_1B7FC38C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B80C3004(uint64_t a1)
{
  v2 = sub_1B7FC38C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B80C3040(uint64_t a1)
{
  v2 = sub_1B80C374C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B80C307C(uint64_t a1)
{
  v2 = sub_1B80C374C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B80C30B8(uint64_t a1)
{
  v2 = sub_1B80C36F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B80C30F4(uint64_t a1)
{
  v2 = sub_1B80C36F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B80C3130(uint64_t a1)
{
  v2 = sub_1B80C35A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B80C316C(uint64_t a1)
{
  v2 = sub_1B80C35A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B80C31A8()
{
  if (*v0)
  {
    return 0x7461446C69746E75;
  }

  else
  {
    return 0x656C646E6168;
  }
}

uint64_t sub_1B80C31E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656C646E6168 && a2 == 0xE600000000000000;
  if (v6 || (sub_1B80C981C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7461446C69746E75 && a2 == 0xE900000000000065)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B80C981C();

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

uint64_t sub_1B80C32C4(uint64_t a1)
{
  v2 = sub_1B80C3650();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B80C3300(uint64_t a1)
{
  v2 = sub_1B80C3650();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B80C333C(uint64_t a1)
{
  v2 = sub_1B80C37A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B80C3378(uint64_t a1)
{
  v2 = sub_1B80C37A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B80C33B4(uint64_t a1)
{
  v2 = sub_1B7FC39E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B80C33F0(uint64_t a1)
{
  v2 = sub_1B7FC39E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B80C342C()
{
  if (*v0)
  {
    return 0x6E6F697469736F70;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_1B80C345C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v5 || (sub_1B80C981C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E6F697469736F70 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B80C981C();

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

uint64_t sub_1B80C3530(uint64_t a1)
{
  v2 = sub_1B80C35FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B80C356C(uint64_t a1)
{
  v2 = sub_1B80C35FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1B80C35A8()
{
  result = qword_1EBA67790;
  if (!qword_1EBA67790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67790);
  }

  return result;
}

unint64_t sub_1B80C35FC()
{
  result = qword_1EBA67798;
  if (!qword_1EBA67798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67798);
  }

  return result;
}

unint64_t sub_1B80C3650()
{
  result = qword_1EBA677A8;
  if (!qword_1EBA677A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA677A8);
  }

  return result;
}

unint64_t sub_1B80C36A4()
{
  result = qword_1EBA677B0;
  if (!qword_1EBA677B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA677B0);
  }

  return result;
}

unint64_t sub_1B80C36F8()
{
  result = qword_1ED8DC128;
  if (!qword_1ED8DC128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC128);
  }

  return result;
}

unint64_t sub_1B80C374C()
{
  result = qword_1EBA677B8;
  if (!qword_1EBA677B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA677B8);
  }

  return result;
}

unint64_t sub_1B80C37A0()
{
  result = qword_1EBA677C0;
  if (!qword_1EBA677C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA677C0);
  }

  return result;
}

uint64_t sub_1B80C37F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B80C3854(uint64_t a1)
{
  v2 = sub_1B7FC96B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B80C3890(uint64_t a1)
{
  v2 = sub_1B7FC96B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B80C38CC(uint64_t a1)
{
  v2 = sub_1B7FC9704();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B80C3908(uint64_t a1)
{
  v2 = sub_1B7FC9704();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B80C3944(uint64_t a1)
{
  v2 = sub_1B7FC5AD4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B80C3980(uint64_t a1)
{
  v2 = sub_1B7FC5AD4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B80C39BC(uint64_t a1)
{
  v2 = sub_1B80C3C44();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B80C39F8(uint64_t a1)
{
  v2 = sub_1B80C3C44();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B80C3A34(uint64_t a1)
{
  v2 = sub_1B80C3BF0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B80C3A70(uint64_t a1)
{
  v2 = sub_1B80C3BF0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B80C3AAC(uint64_t a1)
{
  v2 = sub_1B80C3B9C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B80C3AE8(uint64_t a1)
{
  v2 = sub_1B80C3B9C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B80C3B24(uint64_t a1)
{
  v2 = sub_1B7FC5B28();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B80C3B60(uint64_t a1)
{
  v2 = sub_1B7FC5B28();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1B80C3B9C()
{
  result = qword_1EBA67868;
  if (!qword_1EBA67868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67868);
  }

  return result;
}

unint64_t sub_1B80C3BF0()
{
  result = qword_1ED8DC318;
  if (!qword_1ED8DC318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC318);
  }

  return result;
}

unint64_t sub_1B80C3C44()
{
  result = qword_1EBA67878;
  if (!qword_1EBA67878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67878);
  }

  return result;
}

unint64_t sub_1B80C3C9C()
{
  result = qword_1EBA678B0;
  if (!qword_1EBA678B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA678B0);
  }

  return result;
}

unint64_t sub_1B80C3CF4()
{
  result = qword_1EBA678B8;
  if (!qword_1EBA678B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA678B8);
  }

  return result;
}

unint64_t sub_1B80C3D4C()
{
  result = qword_1EBA678C0;
  if (!qword_1EBA678C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA678C0);
  }

  return result;
}

unint64_t sub_1B80C3DA4()
{
  result = qword_1EBA678C8;
  if (!qword_1EBA678C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA678C8);
  }

  return result;
}

unint64_t sub_1B80C3DFC()
{
  result = qword_1EBA678D0;
  if (!qword_1EBA678D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA678D0);
  }

  return result;
}

unint64_t sub_1B80C3E54()
{
  result = qword_1EBA678D8;
  if (!qword_1EBA678D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA678D8);
  }

  return result;
}

unint64_t sub_1B80C3EAC()
{
  result = qword_1EBA678E0;
  if (!qword_1EBA678E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA678E0);
  }

  return result;
}

unint64_t sub_1B80C3F04()
{
  result = qword_1EBA678E8;
  if (!qword_1EBA678E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA678E8);
  }

  return result;
}

unint64_t sub_1B80C3F5C()
{
  result = qword_1EBA678F0;
  if (!qword_1EBA678F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA678F0);
  }

  return result;
}

unint64_t sub_1B80C3FB4()
{
  result = qword_1EBA678F8;
  if (!qword_1EBA678F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA678F8);
  }

  return result;
}

unint64_t sub_1B80C400C()
{
  result = qword_1EBA67900;
  if (!qword_1EBA67900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67900);
  }

  return result;
}

unint64_t sub_1B80C4064()
{
  result = qword_1EBA67908;
  if (!qword_1EBA67908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67908);
  }

  return result;
}

uint64_t dispatch thunk of FriendshipProtocol.respondToInviteRequest(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1B7FC253C;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of FriendshipProtocol.allFriends()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 16) + **(a3 + 16));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1B7FC253C;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of FriendshipProtocol.startFriendsUpdate()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 24) + **(a2 + 24));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B7FC253C;

  return v7(a1, a2);
}

uint64_t dispatch thunk of FriendshipProtocol.friends(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 32) + **(a3 + 32));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1B80C5B50;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of FriendshipProtocol.friendshipState(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 40) + **(a4 + 40));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1B7FC253C;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of FriendshipProtocol.offerExpiration(for:fromHandle:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 48) + **(a5 + 48));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1B7FC253C;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of FriendshipProtocol.offerExpiration(for:groupId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 56) + **(a6 + 56));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1B7FC253C;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of FriendshipProtocol.sendFriendshipOffer(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 64) + **(a4 + 64));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1B7FC253C;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of FriendshipProtocol.sendFriendshipInvite(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 72) + **(a4 + 72));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1B7FC253C;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of FriendshipProtocol.stopSharingMyLocation(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 80) + **(a4 + 80));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1B7FBA3EC;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of FriendshipProtocol.peerToken(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 88) + **(a3 + 88));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1B80C5B50;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of FriendshipProtocol.ownerToken()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 96) + **(a2 + 96));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B80C4F04;

  return v7(a1, a2);
}

uint64_t sub_1B80C4F04(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t dispatch thunk of FriendshipProtocol.startRanging(handle:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 104) + **(a3 + 104));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1B7FC253C;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of FriendshipProtocol.startOwnerRanging()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 112) + **(a2 + 112));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B7FC253C;

  return v7(a1, a2);
}

uint64_t dispatch thunk of FriendshipProtocol.stopRanging()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 120) + **(a2 + 120));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B7FC253C;

  return v7(a1, a2);
}

uint64_t dispatch thunk of FriendshipProtocol.resetTokenDatabase()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 128) + **(a2 + 128));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B7FC253C;

  return v7(a1, a2);
}

uint64_t dispatch thunk of FriendshipProtocol.removePeerToken(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 136) + **(a3 + 136));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1B7FC253C;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of FriendshipProtocol.requestOwnerToken(force:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 144) + **(a3 + 144));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1B7FC253C;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of FriendshipProtocol.stopConfigRangingSession()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 152) + **(a2 + 152));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B7FC253C;

  return v7(a1, a2);
}

uint64_t dispatch thunk of FriendshipServiceClientProtocol.updateFriends(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1B7FC253C;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of FriendshipServiceClientProtocol.didDiscover(nearbyObject:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 16) + **(a3 + 16));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1B7FC253C;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of FriendshipServiceClientProtocol.didUpdate(nearbyObject:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 24) + **(a3 + 24));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1B7FC253C;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of LocationProtocol.startRefreshingLocation(_:clientID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1B80C4F04;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of LocationProtocol.stopRefreshingLocation(for:priority:clientID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 16) + **(a5 + 16));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1B7FC253C;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of LocationProtocol.stopRefreshingAllLocations(clientID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 24) + **(a3 + 24));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1B7FC253C;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of LocationProtocol.locations(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 32) + **(a3 + 32));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1B80C5B50;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of LocationProtocol.subscribeToBackgroundProactiveLocations(clientID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 40) + **(a3 + 40));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1B80C5B50;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of LocationProtocol.latestLocations(for:clientID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 48) + **(a4 + 48));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1B80C5B50;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of LocationProtocol.decryptNotification(payload:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 56) + **(a5 + 56));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1B7FC253C;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of LocationProtocol.processLocationPayload(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 64) + **(a4 + 64));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1B7FC253C;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of LocationProtocol.processLocationCommandPayload(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 72) + **(a4 + 72));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1B7FC253C;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of LocationProtocol.publishLocation(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 80) + **(a4 + 80));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1B7FC253C;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of LocationProtocol.getSharingKey()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 88) + **(a2 + 88));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B80C7B80;

  return v7(a1, a2);
}

uint64_t dispatch thunk of LocationProtocol.setSharingKey(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 96) + **(a4 + 96));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1B7FC253C;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of LocationProtocol.performKeyRoll()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 104) + **(a2 + 104));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B7FC253C;

  return v7(a1, a2);
}

uint64_t dispatch thunk of LocationProtocol.getSharedKeys()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 112) + **(a2 + 112));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B80C7B80;

  return v7(a1, a2);
}

uint64_t dispatch thunk of LocationProtocol.getCachedLocations()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 120) + **(a2 + 120));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B80C7B80;

  return v7(a1, a2);
}

uint64_t dispatch thunk of LocationProtocol.processIDSServiceMessage(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 128) + **(a4 + 128));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1B80C7B80;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of LocationProtocol.fetchConfig()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 136) + **(a2 + 136));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B80C6F18;

  return v7(a1, a2);
}

uint64_t sub_1B80C6F18(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t dispatch thunk of LocationProtocol.clearCachedConfig()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 144) + **(a2 + 144));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B7FC253C;

  return v7(a1, a2);
}

uint64_t dispatch thunk of LocationProtocol.triggerStewieProactiveNotification()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 152) + **(a2 + 152));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B7FC253C;

  return v7(a1, a2);
}

uint64_t dispatch thunk of LocationProtocol.dismissStewieNotifications()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 160) + **(a2 + 160));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B7FC253C;

  return v7(a1, a2);
}

uint64_t dispatch thunk of LocationProtocol.publishCurrentLocationToStewie()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 168) + **(a3 + 168));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1B7FBA3EC;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of LocationProtocol.stewiePublishResult()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 176) + **(a3 + 176));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1B7FC253C;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of LocationProtocol.currentStewieState()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 184) + **(a3 + 184));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1B7FC253C;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of LocationProtocol.stopMonitoringStewieState()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 192) + **(a2 + 192));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B7FC253C;

  return v7(a1, a2);
}

uint64_t dispatch thunk of LocationServiceClientProtocol.locationsForHandles(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1B7FC253C;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of LocationServiceClientProtocol.locationsUnavailable(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 16) + **(a3 + 16));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1B7FC253C;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of LocationServiceClientProtocol.stewieServiceStateChanged(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 24) + **(a3 + 24));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1B7FC253C;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of SettingsProtocol.setActiveLocationSharingDevice(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1B7FC253C;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of SettingsProtocol.hideMyLocation(hidden:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 16) + **(a3 + 16));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1B7FBA3EC;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of SettingsProtocol.allowFriendshipRequests(allowed:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 24) + **(a3 + 24));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1B7FC253C;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of SettingsProtocol.activeLocationSharingDevice(cached:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 32) + **(a4 + 32));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1B7FC253C;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of SettingsProtocol.thisDeviceWithCompanion()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 40) + **(a3 + 40));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1B7FC253C;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of SettingsProtocol.isMyLocationEnabled(cached:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 48) + **(a3 + 48));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1B80C4F04;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of SettingsProtocol.areFriendshipRequestsAllowed(cached:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 56) + **(a3 + 56));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1B80C5B50;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of SettingsProtocol.startMonitoringPreferencesChangeForClient()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 64) + **(a2 + 64));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B7FC253C;

  return v7(a1, a2);
}

uint64_t dispatch thunk of SettingsProtocol.allDevices(cached:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 72) + **(a3 + 72));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1B80C4F04;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of SettingsProtocol.emulateShowSaveMeAlertCommand()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 80) + **(a2 + 80));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B7FC253C;

  return v7(a1, a2);
}

uint64_t dispatch thunk of SettingsServiceClientProtocol.meDeviceUpdated(meDevice:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1B7FC253C;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of SettingsServiceClientProtocol.preferencesUpdated(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 16) + **(a3 + 16));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1B7FC253C;

  return v9(a1, a2, a3);
}