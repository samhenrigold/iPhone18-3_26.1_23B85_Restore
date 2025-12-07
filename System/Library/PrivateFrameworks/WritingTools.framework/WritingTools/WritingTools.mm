uint64_t sub_274C9AC88()
{
  v0 = sub_274C9B4E4();
  __swift_allocate_value_buffer(v0, qword_280E20B68);
  __swift_project_value_buffer(v0, qword_280E20B68);
  return sub_274C9B4D4();
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_274C9ADD0(uint64_t a1)
{
  v2 = sub_274C9B444();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, a1, v2);
  result = (*(v3 + 88))(v5, v2);
  v7 = result == *MEMORY[0x277D0DFA8];
  if (result != *MEMORY[0x277D0DFA8] && (result != *MEMORY[0x277D0DFB0] ? (v8 = result == *MEMORY[0x277D0E278]) : (v8 = 0), v8))
  {
    v7 = 1;
  }

  else
  {
    result = (*(v3 + 8))(v5, v2);
  }

  byte_280E20B58 = v7;
  return result;
}

uint64_t sub_274C9AF14()
{
  v0 = sub_274C9B444();
  v26 = *(v0 - 8);
  v27 = v0;
  v1 = MEMORY[0x28223BE20](v0);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v5 = &v24 - v4;
  v6 = sub_274C9B484();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_274C9B464();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_274C9B4B4();
  v15 = MEMORY[0x28223BE20](v14);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = byte_280E20B58;
  if (byte_280E20B58 == 2)
  {
    v24 = v16;
    v25 = v15;
    (*(v7 + 104))(v9, *MEMORY[0x277D0E2D8], v6);
    sub_274C9B454();
    sub_274C9B494();
    (*(v11 + 8))(v13, v10);
    qword_280E20B60 = sub_274C9B4A4();

    sub_274C9B474();
    v21 = v26;
    v20 = v27;
    (*(v26 + 32))(v3, v5, v27);
    v22 = (*(v21 + 88))(v3, v20);
    v19 = v22 == *MEMORY[0x277D0DFA8];
    if (v22 == *MEMORY[0x277D0DFA8] || v22 == *MEMORY[0x277D0DFB0] || v22 != *MEMORY[0x277D0E278])
    {
      (*(v21 + 8))(v3, v20);
    }

    else
    {
      v19 = 1;
    }

    byte_280E20B58 = v19;
    (*(v24 + 8))(v18, v25);
  }

  return v19 & 1;
}

uint64_t sub_274C9B2DC()
{
  v0 = [objc_opt_self() sharedConnection];
  if (v0)
  {
    v1 = v0;
    v2 = [v0 isWritingToolsAllowed];

    v3 = sub_274C9AF14();
    v4 = v3;
    v5 = v2 & v3;
    if (byte_280E20B48 == 2 || ((v5 ^ byte_280E20B48) & 1) != 0)
    {
      byte_280E20B48 = v2 & v3;
      if (qword_280E20B50 != -1)
      {
        swift_once();
      }

      v6 = sub_274C9B4E4();
      __swift_project_value_buffer(v6, qword_280E20B68);
      v7 = sub_274C9B4C4();
      v8 = sub_274C9B4F4();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 67109376;
        *(v9 + 4) = v2;
        *(v9 + 8) = 1024;
        *(v9 + 10) = v4 & 1;
        _os_log_impl(&dword_274C98000, v7, v8, "isAvailable value changed: isMDMAllowed = %{BOOL}d, gmAvailable (current) = %{BOOL}d", v9, 0xEu);
        MEMORY[0x277C68060](v9, -1, -1);
      }
    }

    return v5;
  }

  else
  {
    __break(1u);
    return sub_274C9B444();
  }
}