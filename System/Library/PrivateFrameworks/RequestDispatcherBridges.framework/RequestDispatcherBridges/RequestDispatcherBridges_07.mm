id sub_2236DBC34(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_223729D38();
  v10 = v9;
  v11 = qword_28132B848;
  swift_beginAccess();
  v12 = *(v4 + v11);
  if (*(v12 + 16) && (, v13 = sub_2236261A0(v8, v10), v15 = v14, , (v15 & 1) != 0))
  {
    v36 = *(*(v12 + 56) + 24 * v13);
    swift_unknownObjectRetain();

    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v16 = sub_22372AC98();
    __swift_project_value_buffer(v16, qword_28132B680);
    v17 = sub_22372AC88();
    v18 = sub_22372B268();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v37 = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_223623274(0xD000000000000036, 0x80000002237374F0, &v37);
      _os_log_impl(&dword_223620000, v17, v18, "Dispatching message %s to a RequestController async", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
      MEMORY[0x223DE8A80](v20, -1, -1);
      MEMORY[0x223DE8A80](v19, -1, -1);
    }

    v21 = swift_allocObject();
    *(v21 + 16) = a2;
    *(v21 + 24) = a3;
    *(v21 + 32) = v36;
    *(v21 + 48) = a1;
    swift_unknownObjectRetain_n();
    v22 = a1;

    sub_22372A8D8();

    swift_unknownObjectRelease_n();
  }

  else
  {

    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v24 = sub_22372AC98();
    __swift_project_value_buffer(v24, qword_28132B680);
    v25 = a1;
    v26 = sub_22372AC88();
    v27 = sub_22372B278();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v37 = v29;
      *v28 = 136315138;
      v30 = [v25 debugDescription];
      v31 = sub_22372AFE8();
      v33 = v32;

      v34 = sub_223623274(v31, v33, &v37);

      *(v28 + 4) = v34;
      _os_log_impl(&dword_223620000, v26, v27, "Could not find a RequestProcessor for message: %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v29);
      MEMORY[0x223DE8A80](v29, -1, -1);
      MEMORY[0x223DE8A80](v28, -1, -1);
    }

    sub_2236EA17C();
    swift_allocError();
    *v35 = v25;
    *(v35 + 8) = 0;
    *(v35 + 16) = 1;
    swift_willThrow();
    return v25;
  }
}

id sub_2236DC060(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_223729D38();
  v10 = v9;
  v11 = qword_28132B848;
  swift_beginAccess();
  v12 = *(v4 + v11);
  if (*(v12 + 16) && (, v13 = sub_2236261A0(v8, v10), v15 = v14, , (v15 & 1) != 0))
  {
    v36 = *(*(v12 + 56) + 24 * v13);
    swift_unknownObjectRetain();

    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v16 = sub_22372AC98();
    __swift_project_value_buffer(v16, qword_28132B680);
    v17 = sub_22372AC88();
    v18 = sub_22372B268();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v37 = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_223623274(0xD000000000000027, 0x8000000223737900, &v37);
      _os_log_impl(&dword_223620000, v17, v18, "Dispatching message %s to a RequestController async", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
      MEMORY[0x223DE8A80](v20, -1, -1);
      MEMORY[0x223DE8A80](v19, -1, -1);
    }

    v21 = swift_allocObject();
    *(v21 + 16) = a2;
    *(v21 + 24) = a3;
    *(v21 + 32) = v36;
    *(v21 + 48) = a1;
    swift_unknownObjectRetain_n();
    v22 = a1;

    sub_22372A8D8();

    swift_unknownObjectRelease_n();
  }

  else
  {

    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v24 = sub_22372AC98();
    __swift_project_value_buffer(v24, qword_28132B680);
    v25 = a1;
    v26 = sub_22372AC88();
    v27 = sub_22372B278();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v37 = v29;
      *v28 = 136315138;
      v30 = [v25 debugDescription];
      v31 = sub_22372AFE8();
      v33 = v32;

      v34 = sub_223623274(v31, v33, &v37);

      *(v28 + 4) = v34;
      _os_log_impl(&dword_223620000, v26, v27, "Could not find a RequestProcessor for message: %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v29);
      MEMORY[0x223DE8A80](v29, -1, -1);
      MEMORY[0x223DE8A80](v28, -1, -1);
    }

    sub_2236EA17C();
    swift_allocError();
    *v35 = v25;
    *(v35 + 8) = 0;
    *(v35 + 16) = 1;
    swift_willThrow();
    return v25;
  }
}

id sub_2236DC48C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_223729D38();
  v10 = v9;
  v11 = qword_28132B848;
  swift_beginAccess();
  v12 = *(v4 + v11);
  if (*(v12 + 16) && (, v13 = sub_2236261A0(v8, v10), v15 = v14, , (v15 & 1) != 0))
  {
    v36 = *(*(v12 + 56) + 24 * v13);
    swift_unknownObjectRetain();

    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v16 = sub_22372AC98();
    __swift_project_value_buffer(v16, qword_28132B680);
    v17 = sub_22372AC88();
    v18 = sub_22372B268();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v37 = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_223623274(0xD000000000000019, 0x8000000223737810, &v37);
      _os_log_impl(&dword_223620000, v17, v18, "Dispatching message %s to a RequestController async", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
      MEMORY[0x223DE8A80](v20, -1, -1);
      MEMORY[0x223DE8A80](v19, -1, -1);
    }

    v21 = swift_allocObject();
    *(v21 + 16) = a2;
    *(v21 + 24) = a3;
    *(v21 + 32) = v36;
    *(v21 + 48) = a1;
    swift_unknownObjectRetain_n();
    v22 = a1;

    sub_22372A8D8();

    swift_unknownObjectRelease_n();
  }

  else
  {

    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v24 = sub_22372AC98();
    __swift_project_value_buffer(v24, qword_28132B680);
    v25 = a1;
    v26 = sub_22372AC88();
    v27 = sub_22372B278();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v37 = v29;
      *v28 = 136315138;
      v30 = [v25 debugDescription];
      v31 = sub_22372AFE8();
      v33 = v32;

      v34 = sub_223623274(v31, v33, &v37);

      *(v28 + 4) = v34;
      _os_log_impl(&dword_223620000, v26, v27, "Could not find a RequestProcessor for message: %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v29);
      MEMORY[0x223DE8A80](v29, -1, -1);
      MEMORY[0x223DE8A80](v28, -1, -1);
    }

    sub_2236EA17C();
    swift_allocError();
    *v35 = v25;
    *(v35 + 8) = 0;
    *(v35 + 16) = 1;
    swift_willThrow();
    return v25;
  }
}

id sub_2236DC8B8(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_223729D38();
  v10 = v9;
  v11 = qword_28132B848;
  swift_beginAccess();
  v12 = *(v4 + v11);
  if (*(v12 + 16) && (, v13 = sub_2236261A0(v8, v10), v15 = v14, , (v15 & 1) != 0))
  {
    v36 = *(*(v12 + 56) + 24 * v13);
    swift_unknownObjectRetain();

    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v16 = sub_22372AC98();
    __swift_project_value_buffer(v16, qword_28132B680);
    v17 = sub_22372AC88();
    v18 = sub_22372B268();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v37 = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_223623274(0xD000000000000014, 0x8000000223736AD0, &v37);
      _os_log_impl(&dword_223620000, v17, v18, "Dispatching message %s to a RequestController async", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
      MEMORY[0x223DE8A80](v20, -1, -1);
      MEMORY[0x223DE8A80](v19, -1, -1);
    }

    v21 = swift_allocObject();
    *(v21 + 16) = a2;
    *(v21 + 24) = a3;
    *(v21 + 32) = v36;
    *(v21 + 48) = a1;
    swift_unknownObjectRetain_n();
    v22 = a1;

    sub_22372A8D8();

    swift_unknownObjectRelease_n();
  }

  else
  {

    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v24 = sub_22372AC98();
    __swift_project_value_buffer(v24, qword_28132B680);
    v25 = a1;
    v26 = sub_22372AC88();
    v27 = sub_22372B278();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v37 = v29;
      *v28 = 136315138;
      v30 = [v25 debugDescription];
      v31 = sub_22372AFE8();
      v33 = v32;

      v34 = sub_223623274(v31, v33, &v37);

      *(v28 + 4) = v34;
      _os_log_impl(&dword_223620000, v26, v27, "Could not find a RequestProcessor for message: %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v29);
      MEMORY[0x223DE8A80](v29, -1, -1);
      MEMORY[0x223DE8A80](v28, -1, -1);
    }

    sub_2236EA17C();
    swift_allocError();
    *v35 = v25;
    *(v35 + 8) = 0;
    *(v35 + 16) = 1;
    swift_willThrow();
    return v25;
  }
}

id sub_2236DCCE4(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_223729D38();
  v10 = v9;
  v11 = qword_28132B848;
  swift_beginAccess();
  v12 = *(v4 + v11);
  if (*(v12 + 16) && (, v13 = sub_2236261A0(v8, v10), v15 = v14, , (v15 & 1) != 0))
  {
    v36 = *(*(v12 + 56) + 24 * v13);
    swift_unknownObjectRetain();

    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v16 = sub_22372AC98();
    __swift_project_value_buffer(v16, qword_28132B680);
    v17 = sub_22372AC88();
    v18 = sub_22372B268();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v37 = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_223623274(0xD00000000000001DLL, 0x80000002237377C0, &v37);
      _os_log_impl(&dword_223620000, v17, v18, "Dispatching message %s to a RequestController async", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
      MEMORY[0x223DE8A80](v20, -1, -1);
      MEMORY[0x223DE8A80](v19, -1, -1);
    }

    v21 = swift_allocObject();
    *(v21 + 16) = a2;
    *(v21 + 24) = a3;
    *(v21 + 32) = v36;
    *(v21 + 48) = a1;
    swift_unknownObjectRetain_n();
    v22 = a1;

    sub_22372A8D8();

    swift_unknownObjectRelease_n();
  }

  else
  {

    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v24 = sub_22372AC98();
    __swift_project_value_buffer(v24, qword_28132B680);
    v25 = a1;
    v26 = sub_22372AC88();
    v27 = sub_22372B278();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v37 = v29;
      *v28 = 136315138;
      v30 = [v25 debugDescription];
      v31 = sub_22372AFE8();
      v33 = v32;

      v34 = sub_223623274(v31, v33, &v37);

      *(v28 + 4) = v34;
      _os_log_impl(&dword_223620000, v26, v27, "Could not find a RequestProcessor for message: %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v29);
      MEMORY[0x223DE8A80](v29, -1, -1);
      MEMORY[0x223DE8A80](v28, -1, -1);
    }

    sub_2236EA17C();
    swift_allocError();
    *v35 = v25;
    *(v35 + 8) = 0;
    *(v35 + 16) = 1;
    swift_willThrow();
    return v25;
  }
}

id sub_2236DD110(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_223729D38();
  v10 = v9;
  v11 = qword_28132B848;
  swift_beginAccess();
  v12 = *(v4 + v11);
  if (*(v12 + 16) && (, v13 = sub_2236261A0(v8, v10), v15 = v14, , (v15 & 1) != 0))
  {
    v36 = *(*(v12 + 56) + 24 * v13);
    swift_unknownObjectRetain();

    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v16 = sub_22372AC98();
    __swift_project_value_buffer(v16, qword_28132B680);
    v17 = sub_22372AC88();
    v18 = sub_22372B268();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v37 = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_223623274(0xD00000000000001BLL, 0x8000000223737770, &v37);
      _os_log_impl(&dword_223620000, v17, v18, "Dispatching message %s to a RequestController async", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
      MEMORY[0x223DE8A80](v20, -1, -1);
      MEMORY[0x223DE8A80](v19, -1, -1);
    }

    v21 = swift_allocObject();
    *(v21 + 16) = a2;
    *(v21 + 24) = a3;
    *(v21 + 32) = v36;
    *(v21 + 48) = a1;
    swift_unknownObjectRetain_n();
    v22 = a1;

    sub_22372A8D8();

    swift_unknownObjectRelease_n();
  }

  else
  {

    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v24 = sub_22372AC98();
    __swift_project_value_buffer(v24, qword_28132B680);
    v25 = a1;
    v26 = sub_22372AC88();
    v27 = sub_22372B278();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v37 = v29;
      *v28 = 136315138;
      v30 = [v25 debugDescription];
      v31 = sub_22372AFE8();
      v33 = v32;

      v34 = sub_223623274(v31, v33, &v37);

      *(v28 + 4) = v34;
      _os_log_impl(&dword_223620000, v26, v27, "Could not find a RequestProcessor for message: %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v29);
      MEMORY[0x223DE8A80](v29, -1, -1);
      MEMORY[0x223DE8A80](v28, -1, -1);
    }

    sub_2236EA17C();
    swift_allocError();
    *v35 = v25;
    *(v35 + 8) = 0;
    *(v35 + 16) = 1;
    swift_willThrow();
    return v25;
  }
}

id sub_2236DD53C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_223729D38();
  v10 = v9;
  v11 = qword_28132B848;
  swift_beginAccess();
  v12 = *(v4 + v11);
  if (*(v12 + 16) && (, v13 = sub_2236261A0(v8, v10), v15 = v14, , (v15 & 1) != 0))
  {
    v36 = *(*(v12 + 56) + 24 * v13);
    swift_unknownObjectRetain();

    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v16 = sub_22372AC98();
    __swift_project_value_buffer(v16, qword_28132B680);
    v17 = sub_22372AC88();
    v18 = sub_22372B268();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v37 = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_223623274(0xD00000000000001ALL, 0x8000000223737860, &v37);
      _os_log_impl(&dword_223620000, v17, v18, "Dispatching message %s to a RequestController async", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
      MEMORY[0x223DE8A80](v20, -1, -1);
      MEMORY[0x223DE8A80](v19, -1, -1);
    }

    v21 = swift_allocObject();
    *(v21 + 16) = a2;
    *(v21 + 24) = a3;
    *(v21 + 32) = v36;
    *(v21 + 48) = a1;
    swift_unknownObjectRetain_n();
    v22 = a1;

    sub_22372A8D8();

    swift_unknownObjectRelease_n();
  }

  else
  {

    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v24 = sub_22372AC98();
    __swift_project_value_buffer(v24, qword_28132B680);
    v25 = a1;
    v26 = sub_22372AC88();
    v27 = sub_22372B278();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v37 = v29;
      *v28 = 136315138;
      v30 = [v25 debugDescription];
      v31 = sub_22372AFE8();
      v33 = v32;

      v34 = sub_223623274(v31, v33, &v37);

      *(v28 + 4) = v34;
      _os_log_impl(&dword_223620000, v26, v27, "Could not find a RequestProcessor for message: %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v29);
      MEMORY[0x223DE8A80](v29, -1, -1);
      MEMORY[0x223DE8A80](v28, -1, -1);
    }

    sub_2236EA17C();
    swift_allocError();
    *v35 = v25;
    *(v35 + 8) = 0;
    *(v35 + 16) = 1;
    swift_willThrow();
    return v25;
  }
}

id sub_2236DD968(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_223729D38();
  v10 = v9;
  v11 = qword_28132B848;
  swift_beginAccess();
  v12 = *(v4 + v11);
  if (*(v12 + 16) && (, v13 = sub_2236261A0(v8, v10), v15 = v14, , (v15 & 1) != 0))
  {
    v36 = *(*(v12 + 56) + 24 * v13);
    swift_unknownObjectRetain();

    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v16 = sub_22372AC98();
    __swift_project_value_buffer(v16, qword_28132B680);
    v17 = sub_22372AC88();
    v18 = sub_22372B268();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v37 = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_223623274(0xD000000000000015, 0x8000000223737600, &v37);
      _os_log_impl(&dword_223620000, v17, v18, "Dispatching message %s to a RequestController async", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
      MEMORY[0x223DE8A80](v20, -1, -1);
      MEMORY[0x223DE8A80](v19, -1, -1);
    }

    v21 = swift_allocObject();
    *(v21 + 16) = a2;
    *(v21 + 24) = a3;
    *(v21 + 32) = v36;
    *(v21 + 48) = a1;
    swift_unknownObjectRetain_n();
    v22 = a1;

    sub_22372A8D8();

    swift_unknownObjectRelease_n();
  }

  else
  {

    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v24 = sub_22372AC98();
    __swift_project_value_buffer(v24, qword_28132B680);
    v25 = a1;
    v26 = sub_22372AC88();
    v27 = sub_22372B278();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v37 = v29;
      *v28 = 136315138;
      v30 = [v25 debugDescription];
      v31 = sub_22372AFE8();
      v33 = v32;

      v34 = sub_223623274(v31, v33, &v37);

      *(v28 + 4) = v34;
      _os_log_impl(&dword_223620000, v26, v27, "Could not find a RequestProcessor for message: %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v29);
      MEMORY[0x223DE8A80](v29, -1, -1);
      MEMORY[0x223DE8A80](v28, -1, -1);
    }

    sub_2236EA17C();
    swift_allocError();
    *v35 = v25;
    *(v35 + 8) = 0;
    *(v35 + 16) = 1;
    swift_willThrow();
    return v25;
  }
}

id sub_2236DDD94(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_223729D38();
  v10 = v9;
  v11 = qword_28132B848;
  swift_beginAccess();
  v12 = *(v4 + v11);
  if (*(v12 + 16) && (, v13 = sub_2236261A0(v8, v10), v15 = v14, , (v15 & 1) != 0))
  {
    v36 = *(*(v12 + 56) + 24 * v13);
    swift_unknownObjectRetain();

    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v16 = sub_22372AC98();
    __swift_project_value_buffer(v16, qword_28132B680);
    v17 = sub_22372AC88();
    v18 = sub_22372B268();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v37 = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_223623274(0xD00000000000002CLL, 0x80000002237374C0, &v37);
      _os_log_impl(&dword_223620000, v17, v18, "Dispatching message %s to a RequestController async", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
      MEMORY[0x223DE8A80](v20, -1, -1);
      MEMORY[0x223DE8A80](v19, -1, -1);
    }

    v21 = swift_allocObject();
    *(v21 + 16) = a2;
    *(v21 + 24) = a3;
    *(v21 + 32) = v36;
    *(v21 + 48) = a1;
    swift_unknownObjectRetain_n();
    v22 = a1;

    sub_22372A8D8();

    swift_unknownObjectRelease_n();
  }

  else
  {

    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v24 = sub_22372AC98();
    __swift_project_value_buffer(v24, qword_28132B680);
    v25 = a1;
    v26 = sub_22372AC88();
    v27 = sub_22372B278();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v37 = v29;
      *v28 = 136315138;
      v30 = [v25 debugDescription];
      v31 = sub_22372AFE8();
      v33 = v32;

      v34 = sub_223623274(v31, v33, &v37);

      *(v28 + 4) = v34;
      _os_log_impl(&dword_223620000, v26, v27, "Could not find a RequestProcessor for message: %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v29);
      MEMORY[0x223DE8A80](v29, -1, -1);
      MEMORY[0x223DE8A80](v28, -1, -1);
    }

    sub_2236EA17C();
    swift_allocError();
    *v35 = v25;
    *(v35 + 8) = 0;
    *(v35 + 16) = 1;
    swift_willThrow();
    return v25;
  }
}

id sub_2236DE1C0(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_223729D38();
  v10 = v9;
  v11 = qword_28132B848;
  swift_beginAccess();
  v12 = *(v4 + v11);
  if (*(v12 + 16) && (, v13 = sub_2236261A0(v8, v10), v15 = v14, , (v15 & 1) != 0))
  {
    v36 = *(*(v12 + 56) + 24 * v13);
    swift_unknownObjectRetain();

    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v16 = sub_22372AC98();
    __swift_project_value_buffer(v16, qword_28132B680);
    v17 = sub_22372AC88();
    v18 = sub_22372B268();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v37 = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_223623274(0xD000000000000019, 0x8000000223735150, &v37);
      _os_log_impl(&dword_223620000, v17, v18, "Dispatching message %s to a RequestController async", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
      MEMORY[0x223DE8A80](v20, -1, -1);
      MEMORY[0x223DE8A80](v19, -1, -1);
    }

    v21 = swift_allocObject();
    *(v21 + 16) = a2;
    *(v21 + 24) = a3;
    *(v21 + 32) = v36;
    *(v21 + 48) = a1;
    swift_unknownObjectRetain_n();
    v22 = a1;

    sub_22372A8D8();

    swift_unknownObjectRelease_n();
  }

  else
  {

    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v24 = sub_22372AC98();
    __swift_project_value_buffer(v24, qword_28132B680);
    v25 = a1;
    v26 = sub_22372AC88();
    v27 = sub_22372B278();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v37 = v29;
      *v28 = 136315138;
      v30 = [v25 debugDescription];
      v31 = sub_22372AFE8();
      v33 = v32;

      v34 = sub_223623274(v31, v33, &v37);

      *(v28 + 4) = v34;
      _os_log_impl(&dword_223620000, v26, v27, "Could not find a RequestProcessor for message: %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v29);
      MEMORY[0x223DE8A80](v29, -1, -1);
      MEMORY[0x223DE8A80](v28, -1, -1);
    }

    sub_2236EA17C();
    swift_allocError();
    *v35 = v25;
    *(v35 + 8) = 0;
    *(v35 + 16) = 1;
    swift_willThrow();
    return v25;
  }
}

id sub_2236DE5EC(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_223729D38();
  v10 = v9;
  v11 = qword_28132B848;
  swift_beginAccess();
  v12 = *(v4 + v11);
  if (*(v12 + 16) && (, v13 = sub_2236261A0(v8, v10), v15 = v14, , (v15 & 1) != 0))
  {
    v36 = *(*(v12 + 56) + 24 * v13);
    swift_unknownObjectRetain();

    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v16 = sub_22372AC98();
    __swift_project_value_buffer(v16, qword_28132B680);
    v17 = sub_22372AC88();
    v18 = sub_22372B268();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v37 = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_223623274(0xD000000000000018, 0x80000002237371C0, &v37);
      _os_log_impl(&dword_223620000, v17, v18, "Dispatching message %s to a RequestController async", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
      MEMORY[0x223DE8A80](v20, -1, -1);
      MEMORY[0x223DE8A80](v19, -1, -1);
    }

    v21 = swift_allocObject();
    *(v21 + 16) = a2;
    *(v21 + 24) = a3;
    *(v21 + 32) = v36;
    *(v21 + 48) = a1;
    swift_unknownObjectRetain_n();
    v22 = a1;

    sub_22372A8D8();

    swift_unknownObjectRelease_n();
  }

  else
  {

    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v24 = sub_22372AC98();
    __swift_project_value_buffer(v24, qword_28132B680);
    v25 = a1;
    v26 = sub_22372AC88();
    v27 = sub_22372B278();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v37 = v29;
      *v28 = 136315138;
      v30 = [v25 debugDescription];
      v31 = sub_22372AFE8();
      v33 = v32;

      v34 = sub_223623274(v31, v33, &v37);

      *(v28 + 4) = v34;
      _os_log_impl(&dword_223620000, v26, v27, "Could not find a RequestProcessor for message: %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v29);
      MEMORY[0x223DE8A80](v29, -1, -1);
      MEMORY[0x223DE8A80](v28, -1, -1);
    }

    sub_2236EA17C();
    swift_allocError();
    *v35 = v25;
    *(v35 + 8) = 0;
    *(v35 + 16) = 1;
    swift_willThrow();
    return v25;
  }
}

id sub_2236DEA18(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_223729D38();
  v10 = v9;
  v11 = qword_28132B848;
  swift_beginAccess();
  v12 = *(v4 + v11);
  if (*(v12 + 16) && (, v13 = sub_2236261A0(v8, v10), v15 = v14, , (v15 & 1) != 0))
  {
    v36 = *(*(v12 + 56) + 24 * v13);
    swift_unknownObjectRetain();

    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v16 = sub_22372AC98();
    __swift_project_value_buffer(v16, qword_28132B680);
    v17 = sub_22372AC88();
    v18 = sub_22372B268();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v37 = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_223623274(0xD000000000000014, 0x8000000223737AE0, &v37);
      _os_log_impl(&dword_223620000, v17, v18, "Dispatching message %s to a RequestController async", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
      MEMORY[0x223DE8A80](v20, -1, -1);
      MEMORY[0x223DE8A80](v19, -1, -1);
    }

    v21 = swift_allocObject();
    *(v21 + 16) = a2;
    *(v21 + 24) = a3;
    *(v21 + 32) = v36;
    *(v21 + 48) = a1;
    swift_unknownObjectRetain_n();
    v22 = a1;

    sub_22372A8D8();

    swift_unknownObjectRelease_n();
  }

  else
  {

    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v24 = sub_22372AC98();
    __swift_project_value_buffer(v24, qword_28132B680);
    v25 = a1;
    v26 = sub_22372AC88();
    v27 = sub_22372B278();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v37 = v29;
      *v28 = 136315138;
      v30 = [v25 debugDescription];
      v31 = sub_22372AFE8();
      v33 = v32;

      v34 = sub_223623274(v31, v33, &v37);

      *(v28 + 4) = v34;
      _os_log_impl(&dword_223620000, v26, v27, "Could not find a RequestProcessor for message: %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v29);
      MEMORY[0x223DE8A80](v29, -1, -1);
      MEMORY[0x223DE8A80](v28, -1, -1);
    }

    sub_2236EA17C();
    swift_allocError();
    *v35 = v25;
    *(v35 + 8) = 0;
    *(v35 + 16) = 1;
    swift_willThrow();
    return v25;
  }
}

id sub_2236DEE44(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_223729D38();
  v10 = v9;
  v11 = qword_28132B848;
  swift_beginAccess();
  v12 = *(v4 + v11);
  if (*(v12 + 16) && (, v13 = sub_2236261A0(v8, v10), v15 = v14, , (v15 & 1) != 0))
  {
    v36 = *(*(v12 + 56) + 24 * v13);
    swift_unknownObjectRetain();

    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v16 = sub_22372AC98();
    __swift_project_value_buffer(v16, qword_28132B680);
    v17 = sub_22372AC88();
    v18 = sub_22372B268();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v37 = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_223623274(0xD00000000000001DLL, 0x8000000223737670, &v37);
      _os_log_impl(&dword_223620000, v17, v18, "Dispatching message %s to a RequestController async", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
      MEMORY[0x223DE8A80](v20, -1, -1);
      MEMORY[0x223DE8A80](v19, -1, -1);
    }

    v21 = swift_allocObject();
    *(v21 + 16) = a2;
    *(v21 + 24) = a3;
    *(v21 + 32) = v36;
    *(v21 + 48) = a1;
    swift_unknownObjectRetain_n();
    v22 = a1;

    sub_22372A8D8();

    swift_unknownObjectRelease_n();
  }

  else
  {

    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v24 = sub_22372AC98();
    __swift_project_value_buffer(v24, qword_28132B680);
    v25 = a1;
    v26 = sub_22372AC88();
    v27 = sub_22372B278();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v37 = v29;
      *v28 = 136315138;
      v30 = [v25 debugDescription];
      v31 = sub_22372AFE8();
      v33 = v32;

      v34 = sub_223623274(v31, v33, &v37);

      *(v28 + 4) = v34;
      _os_log_impl(&dword_223620000, v26, v27, "Could not find a RequestProcessor for message: %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v29);
      MEMORY[0x223DE8A80](v29, -1, -1);
      MEMORY[0x223DE8A80](v28, -1, -1);
    }

    sub_2236EA17C();
    swift_allocError();
    *v35 = v25;
    *(v35 + 8) = 0;
    *(v35 + 16) = 1;
    swift_willThrow();
    return v25;
  }
}

id sub_2236DF270(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_223729D38();
  v10 = v9;
  v11 = qword_28132B848;
  swift_beginAccess();
  v12 = *(v4 + v11);
  if (*(v12 + 16) && (, v13 = sub_2236261A0(v8, v10), v15 = v14, , (v15 & 1) != 0))
  {
    v36 = *(*(v12 + 56) + 24 * v13);
    swift_unknownObjectRetain();

    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v16 = sub_22372AC98();
    __swift_project_value_buffer(v16, qword_28132B680);
    v17 = sub_22372AC88();
    v18 = sub_22372B268();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v37 = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_223623274(0xD000000000000011, 0x8000000223737440, &v37);
      _os_log_impl(&dword_223620000, v17, v18, "Dispatching message %s to a RequestController async", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
      MEMORY[0x223DE8A80](v20, -1, -1);
      MEMORY[0x223DE8A80](v19, -1, -1);
    }

    v21 = swift_allocObject();
    *(v21 + 16) = a2;
    *(v21 + 24) = a3;
    *(v21 + 32) = v36;
    *(v21 + 48) = a1;
    swift_unknownObjectRetain_n();
    v22 = a1;

    sub_22372A8D8();

    swift_unknownObjectRelease_n();
  }

  else
  {

    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v24 = sub_22372AC98();
    __swift_project_value_buffer(v24, qword_28132B680);
    v25 = a1;
    v26 = sub_22372AC88();
    v27 = sub_22372B278();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v37 = v29;
      *v28 = 136315138;
      v30 = [v25 debugDescription];
      v31 = sub_22372AFE8();
      v33 = v32;

      v34 = sub_223623274(v31, v33, &v37);

      *(v28 + 4) = v34;
      _os_log_impl(&dword_223620000, v26, v27, "Could not find a RequestProcessor for message: %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v29);
      MEMORY[0x223DE8A80](v29, -1, -1);
      MEMORY[0x223DE8A80](v28, -1, -1);
    }

    sub_2236EA17C();
    swift_allocError();
    *v35 = v25;
    *(v35 + 8) = 0;
    *(v35 + 16) = 1;
    swift_willThrow();
    return v25;
  }
}

id sub_2236DF69C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_223729D38();
  v10 = v9;
  v11 = qword_28132B848;
  swift_beginAccess();
  v12 = *(v4 + v11);
  if (*(v12 + 16) && (, v13 = sub_2236261A0(v8, v10), v15 = v14, , (v15 & 1) != 0))
  {
    v36 = *(*(v12 + 56) + 24 * v13);
    swift_unknownObjectRetain();

    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v16 = sub_22372AC98();
    __swift_project_value_buffer(v16, qword_28132B680);
    v17 = sub_22372AC88();
    v18 = sub_22372B268();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v37 = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_223623274(0xD000000000000026, 0x80000002237376C0, &v37);
      _os_log_impl(&dword_223620000, v17, v18, "Dispatching message %s to a RequestController async", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
      MEMORY[0x223DE8A80](v20, -1, -1);
      MEMORY[0x223DE8A80](v19, -1, -1);
    }

    v21 = swift_allocObject();
    *(v21 + 16) = a2;
    *(v21 + 24) = a3;
    *(v21 + 32) = v36;
    *(v21 + 48) = a1;
    swift_unknownObjectRetain_n();
    v22 = a1;

    sub_22372A8D8();

    swift_unknownObjectRelease_n();
  }

  else
  {

    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v24 = sub_22372AC98();
    __swift_project_value_buffer(v24, qword_28132B680);
    v25 = a1;
    v26 = sub_22372AC88();
    v27 = sub_22372B278();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v37 = v29;
      *v28 = 136315138;
      v30 = [v25 debugDescription];
      v31 = sub_22372AFE8();
      v33 = v32;

      v34 = sub_223623274(v31, v33, &v37);

      *(v28 + 4) = v34;
      _os_log_impl(&dword_223620000, v26, v27, "Could not find a RequestProcessor for message: %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v29);
      MEMORY[0x223DE8A80](v29, -1, -1);
      MEMORY[0x223DE8A80](v28, -1, -1);
    }

    sub_2236EA17C();
    swift_allocError();
    *v35 = v25;
    *(v35 + 8) = 0;
    *(v35 + 16) = 1;
    swift_willThrow();
    return v25;
  }
}

id sub_2236DFAC8(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_223729D38();
  v10 = v9;
  v11 = qword_28132B848;
  swift_beginAccess();
  v12 = *(v4 + v11);
  if (*(v12 + 16) && (, v13 = sub_2236261A0(v8, v10), v15 = v14, , (v15 & 1) != 0))
  {
    v36 = *(*(v12 + 56) + 24 * v13);
    swift_unknownObjectRetain();

    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v16 = sub_22372AC98();
    __swift_project_value_buffer(v16, qword_28132B680);
    v17 = sub_22372AC88();
    v18 = sub_22372B268();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v37 = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_223623274(0xD00000000000001CLL, 0x8000000223737210, &v37);
      _os_log_impl(&dword_223620000, v17, v18, "Dispatching message %s to a RequestController async", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
      MEMORY[0x223DE8A80](v20, -1, -1);
      MEMORY[0x223DE8A80](v19, -1, -1);
    }

    v21 = swift_allocObject();
    *(v21 + 16) = a2;
    *(v21 + 24) = a3;
    *(v21 + 32) = v36;
    *(v21 + 48) = a1;
    swift_unknownObjectRetain_n();
    v22 = a1;

    sub_22372A8D8();

    swift_unknownObjectRelease_n();
  }

  else
  {

    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v24 = sub_22372AC98();
    __swift_project_value_buffer(v24, qword_28132B680);
    v25 = a1;
    v26 = sub_22372AC88();
    v27 = sub_22372B278();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v37 = v29;
      *v28 = 136315138;
      v30 = [v25 debugDescription];
      v31 = sub_22372AFE8();
      v33 = v32;

      v34 = sub_223623274(v31, v33, &v37);

      *(v28 + 4) = v34;
      _os_log_impl(&dword_223620000, v26, v27, "Could not find a RequestProcessor for message: %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v29);
      MEMORY[0x223DE8A80](v29, -1, -1);
      MEMORY[0x223DE8A80](v28, -1, -1);
    }

    sub_2236EA17C();
    swift_allocError();
    *v35 = v25;
    *(v35 + 8) = 0;
    *(v35 + 16) = 1;
    swift_willThrow();
    return v25;
  }
}

id sub_2236DFEF4(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_223729D38();
  v10 = v9;
  v11 = qword_28132B848;
  swift_beginAccess();
  v12 = *(v4 + v11);
  if (*(v12 + 16) && (, v13 = sub_2236261A0(v8, v10), v15 = v14, , (v15 & 1) != 0))
  {
    v36 = *(*(v12 + 56) + 24 * v13);
    swift_unknownObjectRetain();

    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v16 = sub_22372AC98();
    __swift_project_value_buffer(v16, qword_28132B680);
    v17 = sub_22372AC88();
    v18 = sub_22372B268();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v37 = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_223623274(0xD000000000000025, 0x80000002237379C0, &v37);
      _os_log_impl(&dword_223620000, v17, v18, "Dispatching message %s to a RequestController async", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
      MEMORY[0x223DE8A80](v20, -1, -1);
      MEMORY[0x223DE8A80](v19, -1, -1);
    }

    v21 = swift_allocObject();
    *(v21 + 16) = a2;
    *(v21 + 24) = a3;
    *(v21 + 32) = v36;
    *(v21 + 48) = a1;
    swift_unknownObjectRetain_n();
    v22 = a1;

    sub_22372A8D8();

    swift_unknownObjectRelease_n();
  }

  else
  {

    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v24 = sub_22372AC98();
    __swift_project_value_buffer(v24, qword_28132B680);
    v25 = a1;
    v26 = sub_22372AC88();
    v27 = sub_22372B278();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v37 = v29;
      *v28 = 136315138;
      v30 = [v25 debugDescription];
      v31 = sub_22372AFE8();
      v33 = v32;

      v34 = sub_223623274(v31, v33, &v37);

      *(v28 + 4) = v34;
      _os_log_impl(&dword_223620000, v26, v27, "Could not find a RequestProcessor for message: %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v29);
      MEMORY[0x223DE8A80](v29, -1, -1);
      MEMORY[0x223DE8A80](v28, -1, -1);
    }

    sub_2236EA17C();
    swift_allocError();
    *v35 = v25;
    *(v35 + 8) = 0;
    *(v35 + 16) = 1;
    swift_willThrow();
    return v25;
  }
}

id sub_2236E0320(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_223729D38();
  v10 = v9;
  v11 = qword_28132B848;
  swift_beginAccess();
  v12 = *(v4 + v11);
  if (*(v12 + 16) && (, v13 = sub_2236261A0(v8, v10), v15 = v14, , (v15 & 1) != 0))
  {
    v36 = *(*(v12 + 56) + 24 * v13);
    swift_unknownObjectRetain();

    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v16 = sub_22372AC98();
    __swift_project_value_buffer(v16, qword_28132B680);
    v17 = sub_22372AC88();
    v18 = sub_22372B268();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v37 = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_223623274(0xD000000000000021, 0x8000000223737960, &v37);
      _os_log_impl(&dword_223620000, v17, v18, "Dispatching message %s to a RequestController async", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
      MEMORY[0x223DE8A80](v20, -1, -1);
      MEMORY[0x223DE8A80](v19, -1, -1);
    }

    v21 = swift_allocObject();
    *(v21 + 16) = a2;
    *(v21 + 24) = a3;
    *(v21 + 32) = v36;
    *(v21 + 48) = a1;
    swift_unknownObjectRetain_n();
    v22 = a1;

    sub_22372A8D8();

    swift_unknownObjectRelease_n();
  }

  else
  {

    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v24 = sub_22372AC98();
    __swift_project_value_buffer(v24, qword_28132B680);
    v25 = a1;
    v26 = sub_22372AC88();
    v27 = sub_22372B278();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v37 = v29;
      *v28 = 136315138;
      v30 = [v25 debugDescription];
      v31 = sub_22372AFE8();
      v33 = v32;

      v34 = sub_223623274(v31, v33, &v37);

      *(v28 + 4) = v34;
      _os_log_impl(&dword_223620000, v26, v27, "Could not find a RequestProcessor for message: %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v29);
      MEMORY[0x223DE8A80](v29, -1, -1);
      MEMORY[0x223DE8A80](v28, -1, -1);
    }

    sub_2236EA17C();
    swift_allocError();
    *v35 = v25;
    *(v35 + 8) = 0;
    *(v35 + 16) = 1;
    swift_willThrow();
    return v25;
  }
}

id sub_2236E074C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_223729D38();
  v10 = v9;
  v11 = qword_28132B848;
  swift_beginAccess();
  v12 = *(v4 + v11);
  if (*(v12 + 16) && (, v13 = sub_2236261A0(v8, v10), v15 = v14, , (v15 & 1) != 0))
  {
    v36 = *(*(v12 + 56) + 24 * v13);
    swift_unknownObjectRetain();

    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v16 = sub_22372AC98();
    __swift_project_value_buffer(v16, qword_28132B680);
    v17 = sub_22372AC88();
    v18 = sub_22372B268();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v37 = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_223623274(0xD000000000000027, 0x8000000223737300, &v37);
      _os_log_impl(&dword_223620000, v17, v18, "Dispatching message %s to a RequestController async", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
      MEMORY[0x223DE8A80](v20, -1, -1);
      MEMORY[0x223DE8A80](v19, -1, -1);
    }

    v21 = swift_allocObject();
    *(v21 + 16) = a2;
    *(v21 + 24) = a3;
    *(v21 + 32) = v36;
    *(v21 + 48) = a1;
    swift_unknownObjectRetain_n();
    v22 = a1;

    sub_22372A8D8();

    swift_unknownObjectRelease_n();
  }

  else
  {

    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v24 = sub_22372AC98();
    __swift_project_value_buffer(v24, qword_28132B680);
    v25 = a1;
    v26 = sub_22372AC88();
    v27 = sub_22372B278();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v37 = v29;
      *v28 = 136315138;
      v30 = [v25 debugDescription];
      v31 = sub_22372AFE8();
      v33 = v32;

      v34 = sub_223623274(v31, v33, &v37);

      *(v28 + 4) = v34;
      _os_log_impl(&dword_223620000, v26, v27, "Could not find a RequestProcessor for message: %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v29);
      MEMORY[0x223DE8A80](v29, -1, -1);
      MEMORY[0x223DE8A80](v28, -1, -1);
    }

    sub_2236EA17C();
    swift_allocError();
    *v35 = v25;
    *(v35 + 8) = 0;
    *(v35 + 16) = 1;
    swift_willThrow();
    return v25;
  }
}

id sub_2236E0B78(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_223729D38();
  v10 = v9;
  v11 = qword_28132B848;
  swift_beginAccess();
  v12 = *(v4 + v11);
  if (*(v12 + 16) && (, v13 = sub_2236261A0(v8, v10), v15 = v14, , (v15 & 1) != 0))
  {
    v36 = *(*(v12 + 56) + 24 * v13);
    swift_unknownObjectRetain();

    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v16 = sub_22372AC98();
    __swift_project_value_buffer(v16, qword_28132B680);
    v17 = sub_22372AC88();
    v18 = sub_22372B268();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v37 = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_223623274(0xD000000000000019, 0x80000002237378B0, &v37);
      _os_log_impl(&dword_223620000, v17, v18, "Dispatching message %s to a RequestController async", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
      MEMORY[0x223DE8A80](v20, -1, -1);
      MEMORY[0x223DE8A80](v19, -1, -1);
    }

    v21 = swift_allocObject();
    *(v21 + 16) = a2;
    *(v21 + 24) = a3;
    *(v21 + 32) = v36;
    *(v21 + 48) = a1;
    swift_unknownObjectRetain_n();
    v22 = a1;

    sub_22372A8D8();

    swift_unknownObjectRelease_n();
  }

  else
  {

    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v24 = sub_22372AC98();
    __swift_project_value_buffer(v24, qword_28132B680);
    v25 = a1;
    v26 = sub_22372AC88();
    v27 = sub_22372B278();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v37 = v29;
      *v28 = 136315138;
      v30 = [v25 debugDescription];
      v31 = sub_22372AFE8();
      v33 = v32;

      v34 = sub_223623274(v31, v33, &v37);

      *(v28 + 4) = v34;
      _os_log_impl(&dword_223620000, v26, v27, "Could not find a RequestProcessor for message: %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v29);
      MEMORY[0x223DE8A80](v29, -1, -1);
      MEMORY[0x223DE8A80](v28, -1, -1);
    }

    sub_2236EA17C();
    swift_allocError();
    *v35 = v25;
    *(v35 + 8) = 0;
    *(v35 + 16) = 1;
    swift_willThrow();
    return v25;
  }
}

uint64_t sub_2236E0FA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_2236E0FCC, 0, 0);
}

uint64_t sub_2236E0FCC()
{
  v13 = v0;
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v1 = sub_22372AC98();
  __swift_project_value_buffer(v1, qword_28132B680);
  v2 = sub_22372AC88();
  v3 = sub_22372B268();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_223623274(0xD000000000000036, 0x80000002237374F0, &v12);
    _os_log_impl(&dword_223620000, v2, v3, "Really routing message %s to a RequestController", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x223DE8A80](v5, -1, -1);
    MEMORY[0x223DE8A80](v4, -1, -1);
  }

  v6 = (*(v0 + 16))(*(v0 + 32), *(v0 + 40));
  *(v0 + 56) = v7;
  v11 = (v6 + *v6);
  v8 = swift_task_alloc();
  *(v0 + 64) = v8;
  *v8 = v0;
  v8[1] = sub_22363AC74;
  v9 = *(v0 + 48);

  return v11(v9);
}

uint64_t sub_2236E11EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_2236E1214, 0, 0);
}

uint64_t sub_2236E1214()
{
  v13 = v0;
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v1 = sub_22372AC98();
  __swift_project_value_buffer(v1, qword_28132B680);
  v2 = sub_22372AC88();
  v3 = sub_22372B268();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_223623274(0xD000000000000027, 0x8000000223737900, &v12);
    _os_log_impl(&dword_223620000, v2, v3, "Really routing message %s to a RequestController", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x223DE8A80](v5, -1, -1);
    MEMORY[0x223DE8A80](v4, -1, -1);
  }

  v6 = (*(v0 + 16))(*(v0 + 32), *(v0 + 40));
  *(v0 + 56) = v7;
  v11 = (v6 + *v6);
  v8 = swift_task_alloc();
  *(v0 + 64) = v8;
  *v8 = v0;
  v8[1] = sub_22363AC74;
  v9 = *(v0 + 48);

  return v11(v9);
}

uint64_t sub_2236E1434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_2236E145C, 0, 0);
}

uint64_t sub_2236E145C()
{
  v13 = v0;
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v1 = sub_22372AC98();
  __swift_project_value_buffer(v1, qword_28132B680);
  v2 = sub_22372AC88();
  v3 = sub_22372B268();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_223623274(0xD000000000000019, 0x8000000223737810, &v12);
    _os_log_impl(&dword_223620000, v2, v3, "Really routing message %s to a RequestController", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x223DE8A80](v5, -1, -1);
    MEMORY[0x223DE8A80](v4, -1, -1);
  }

  v6 = (*(v0 + 16))(*(v0 + 32), *(v0 + 40));
  *(v0 + 56) = v7;
  v11 = (v6 + *v6);
  v8 = swift_task_alloc();
  *(v0 + 64) = v8;
  *v8 = v0;
  v8[1] = sub_22363AC74;
  v9 = *(v0 + 48);

  return v11(v9);
}

uint64_t sub_2236E167C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_2236E16A4, 0, 0);
}

uint64_t sub_2236E16A4()
{
  v13 = v0;
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v1 = sub_22372AC98();
  __swift_project_value_buffer(v1, qword_28132B680);
  v2 = sub_22372AC88();
  v3 = sub_22372B268();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_223623274(0xD000000000000014, 0x8000000223736AD0, &v12);
    _os_log_impl(&dword_223620000, v2, v3, "Really routing message %s to a RequestController", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x223DE8A80](v5, -1, -1);
    MEMORY[0x223DE8A80](v4, -1, -1);
  }

  v6 = (*(v0 + 16))(*(v0 + 32), *(v0 + 40));
  *(v0 + 56) = v7;
  v11 = (v6 + *v6);
  v8 = swift_task_alloc();
  *(v0 + 64) = v8;
  *v8 = v0;
  v8[1] = sub_22363AC74;
  v9 = *(v0 + 48);

  return v11(v9);
}

uint64_t sub_2236E18C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_2236E18EC, 0, 0);
}

uint64_t sub_2236E18EC()
{
  v13 = v0;
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v1 = sub_22372AC98();
  __swift_project_value_buffer(v1, qword_28132B680);
  v2 = sub_22372AC88();
  v3 = sub_22372B268();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_223623274(0xD00000000000001DLL, 0x80000002237377C0, &v12);
    _os_log_impl(&dword_223620000, v2, v3, "Really routing message %s to a RequestController", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x223DE8A80](v5, -1, -1);
    MEMORY[0x223DE8A80](v4, -1, -1);
  }

  v6 = (*(v0 + 16))(*(v0 + 32), *(v0 + 40));
  *(v0 + 56) = v7;
  v11 = (v6 + *v6);
  v8 = swift_task_alloc();
  *(v0 + 64) = v8;
  *v8 = v0;
  v8[1] = sub_22363AC74;
  v9 = *(v0 + 48);

  return v11(v9);
}

uint64_t sub_2236E1B0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_2236E1B34, 0, 0);
}

uint64_t sub_2236E1B34()
{
  v13 = v0;
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v1 = sub_22372AC98();
  __swift_project_value_buffer(v1, qword_28132B680);
  v2 = sub_22372AC88();
  v3 = sub_22372B268();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_223623274(0xD00000000000001BLL, 0x8000000223737770, &v12);
    _os_log_impl(&dword_223620000, v2, v3, "Really routing message %s to a RequestController", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x223DE8A80](v5, -1, -1);
    MEMORY[0x223DE8A80](v4, -1, -1);
  }

  v6 = (*(v0 + 16))(*(v0 + 32), *(v0 + 40));
  *(v0 + 56) = v7;
  v11 = (v6 + *v6);
  v8 = swift_task_alloc();
  *(v0 + 64) = v8;
  *v8 = v0;
  v8[1] = sub_22363AC74;
  v9 = *(v0 + 48);

  return v11(v9);
}

uint64_t sub_2236E1D54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_2236E1D7C, 0, 0);
}

uint64_t sub_2236E1D7C()
{
  v13 = v0;
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v1 = sub_22372AC98();
  __swift_project_value_buffer(v1, qword_28132B680);
  v2 = sub_22372AC88();
  v3 = sub_22372B268();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_223623274(0xD00000000000001ALL, 0x8000000223737860, &v12);
    _os_log_impl(&dword_223620000, v2, v3, "Really routing message %s to a RequestController", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x223DE8A80](v5, -1, -1);
    MEMORY[0x223DE8A80](v4, -1, -1);
  }

  v6 = (*(v0 + 16))(*(v0 + 32), *(v0 + 40));
  *(v0 + 56) = v7;
  v11 = (v6 + *v6);
  v8 = swift_task_alloc();
  *(v0 + 64) = v8;
  *v8 = v0;
  v8[1] = sub_22363AC74;
  v9 = *(v0 + 48);

  return v11(v9);
}

uint64_t sub_2236E1F9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_2236E1FC4, 0, 0);
}

uint64_t sub_2236E1FC4()
{
  v13 = v0;
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v1 = sub_22372AC98();
  __swift_project_value_buffer(v1, qword_28132B680);
  v2 = sub_22372AC88();
  v3 = sub_22372B268();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_223623274(0xD000000000000015, 0x8000000223737600, &v12);
    _os_log_impl(&dword_223620000, v2, v3, "Really routing message %s to a RequestController", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x223DE8A80](v5, -1, -1);
    MEMORY[0x223DE8A80](v4, -1, -1);
  }

  v6 = (*(v0 + 16))(*(v0 + 32), *(v0 + 40));
  *(v0 + 56) = v7;
  v11 = (v6 + *v6);
  v8 = swift_task_alloc();
  *(v0 + 64) = v8;
  *v8 = v0;
  v8[1] = sub_22363AC74;
  v9 = *(v0 + 48);

  return v11(v9);
}

uint64_t sub_2236E21E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_2236E220C, 0, 0);
}

uint64_t sub_2236E220C()
{
  v13 = v0;
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v1 = sub_22372AC98();
  __swift_project_value_buffer(v1, qword_28132B680);
  v2 = sub_22372AC88();
  v3 = sub_22372B268();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_223623274(0xD00000000000002CLL, 0x80000002237374C0, &v12);
    _os_log_impl(&dword_223620000, v2, v3, "Really routing message %s to a RequestController", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x223DE8A80](v5, -1, -1);
    MEMORY[0x223DE8A80](v4, -1, -1);
  }

  v6 = (*(v0 + 16))(*(v0 + 32), *(v0 + 40));
  *(v0 + 56) = v7;
  v11 = (v6 + *v6);
  v8 = swift_task_alloc();
  *(v0 + 64) = v8;
  *v8 = v0;
  v8[1] = sub_22363AC74;
  v9 = *(v0 + 48);

  return v11(v9);
}

uint64_t sub_2236E242C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_2236E2454, 0, 0);
}

uint64_t sub_2236E2454()
{
  v13 = v0;
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v1 = sub_22372AC98();
  __swift_project_value_buffer(v1, qword_28132B680);
  v2 = sub_22372AC88();
  v3 = sub_22372B268();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_223623274(0xD000000000000019, 0x8000000223735150, &v12);
    _os_log_impl(&dword_223620000, v2, v3, "Really routing message %s to a RequestController", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x223DE8A80](v5, -1, -1);
    MEMORY[0x223DE8A80](v4, -1, -1);
  }

  v6 = (*(v0 + 16))(*(v0 + 32), *(v0 + 40));
  *(v0 + 56) = v7;
  v11 = (v6 + *v6);
  v8 = swift_task_alloc();
  *(v0 + 64) = v8;
  *v8 = v0;
  v8[1] = sub_22363AC74;
  v9 = *(v0 + 48);

  return v11(v9);
}

uint64_t sub_2236E2674(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_2236E269C, 0, 0);
}

uint64_t sub_2236E269C()
{
  v13 = v0;
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v1 = sub_22372AC98();
  __swift_project_value_buffer(v1, qword_28132B680);
  v2 = sub_22372AC88();
  v3 = sub_22372B268();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_223623274(0xD000000000000018, 0x80000002237371C0, &v12);
    _os_log_impl(&dword_223620000, v2, v3, "Really routing message %s to a RequestController", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x223DE8A80](v5, -1, -1);
    MEMORY[0x223DE8A80](v4, -1, -1);
  }

  v6 = (*(v0 + 16))(*(v0 + 32), *(v0 + 40));
  *(v0 + 56) = v7;
  v11 = (v6 + *v6);
  v8 = swift_task_alloc();
  *(v0 + 64) = v8;
  *v8 = v0;
  v8[1] = sub_22363AC74;
  v9 = *(v0 + 48);

  return v11(v9);
}

uint64_t sub_2236E28BC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2236E2920()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2236E2984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_2236E29AC, 0, 0);
}

uint64_t sub_2236E29AC()
{
  v13 = v0;
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v1 = sub_22372AC98();
  __swift_project_value_buffer(v1, qword_28132B680);
  v2 = sub_22372AC88();
  v3 = sub_22372B268();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_223623274(0xD000000000000014, 0x8000000223737AE0, &v12);
    _os_log_impl(&dword_223620000, v2, v3, "Really routing message %s to a RequestController", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x223DE8A80](v5, -1, -1);
    MEMORY[0x223DE8A80](v4, -1, -1);
  }

  v6 = (*(v0 + 16))(*(v0 + 32), *(v0 + 40));
  *(v0 + 56) = v7;
  v11 = (v6 + *v6);
  v8 = swift_task_alloc();
  *(v0 + 64) = v8;
  *v8 = v0;
  v8[1] = sub_22363AC74;
  v9 = *(v0 + 48);

  return v11(v9);
}

uint64_t sub_2236E2BCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_2236E2BF4, 0, 0);
}

uint64_t sub_2236E2BF4()
{
  v13 = v0;
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v1 = sub_22372AC98();
  __swift_project_value_buffer(v1, qword_28132B680);
  v2 = sub_22372AC88();
  v3 = sub_22372B268();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_223623274(0xD00000000000001DLL, 0x8000000223737670, &v12);
    _os_log_impl(&dword_223620000, v2, v3, "Really routing message %s to a RequestController", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x223DE8A80](v5, -1, -1);
    MEMORY[0x223DE8A80](v4, -1, -1);
  }

  v6 = (*(v0 + 16))(*(v0 + 32), *(v0 + 40));
  *(v0 + 56) = v7;
  v11 = (v6 + *v6);
  v8 = swift_task_alloc();
  *(v0 + 64) = v8;
  *v8 = v0;
  v8[1] = sub_22363AC74;
  v9 = *(v0 + 48);

  return v11(v9);
}

uint64_t sub_2236E2E14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_2236E2E3C, 0, 0);
}

uint64_t sub_2236E2E3C()
{
  v13 = v0;
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v1 = sub_22372AC98();
  __swift_project_value_buffer(v1, qword_28132B680);
  v2 = sub_22372AC88();
  v3 = sub_22372B268();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_223623274(0xD000000000000011, 0x8000000223737440, &v12);
    _os_log_impl(&dword_223620000, v2, v3, "Really routing message %s to a RequestController", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x223DE8A80](v5, -1, -1);
    MEMORY[0x223DE8A80](v4, -1, -1);
  }

  v6 = (*(v0 + 16))(*(v0 + 32), *(v0 + 40));
  *(v0 + 56) = v7;
  v11 = (v6 + *v6);
  v8 = swift_task_alloc();
  *(v0 + 64) = v8;
  *v8 = v0;
  v8[1] = sub_22363AC74;
  v9 = *(v0 + 48);

  return v11(v9);
}

uint64_t sub_2236E305C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_2236E3084, 0, 0);
}

uint64_t sub_2236E3084()
{
  v13 = v0;
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v1 = sub_22372AC98();
  __swift_project_value_buffer(v1, qword_28132B680);
  v2 = sub_22372AC88();
  v3 = sub_22372B268();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_223623274(0xD000000000000026, 0x80000002237376C0, &v12);
    _os_log_impl(&dword_223620000, v2, v3, "Really routing message %s to a RequestController", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x223DE8A80](v5, -1, -1);
    MEMORY[0x223DE8A80](v4, -1, -1);
  }

  v6 = (*(v0 + 16))(*(v0 + 32), *(v0 + 40));
  *(v0 + 56) = v7;
  v11 = (v6 + *v6);
  v8 = swift_task_alloc();
  *(v0 + 64) = v8;
  *v8 = v0;
  v8[1] = sub_22363AC74;
  v9 = *(v0 + 48);

  return v11(v9);
}

uint64_t sub_2236E32A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_2236E32CC, 0, 0);
}

uint64_t sub_2236E32CC()
{
  v13 = v0;
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v1 = sub_22372AC98();
  __swift_project_value_buffer(v1, qword_28132B680);
  v2 = sub_22372AC88();
  v3 = sub_22372B268();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_223623274(0xD00000000000001CLL, 0x8000000223737210, &v12);
    _os_log_impl(&dword_223620000, v2, v3, "Really routing message %s to a RequestController", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x223DE8A80](v5, -1, -1);
    MEMORY[0x223DE8A80](v4, -1, -1);
  }

  v6 = (*(v0 + 16))(*(v0 + 32), *(v0 + 40));
  *(v0 + 56) = v7;
  v11 = (v6 + *v6);
  v8 = swift_task_alloc();
  *(v0 + 64) = v8;
  *v8 = v0;
  v8[1] = sub_22363AC74;
  v9 = *(v0 + 48);

  return v11(v9);
}

uint64_t sub_2236E34EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_2236E3514, 0, 0);
}

uint64_t sub_2236E3514()
{
  v13 = v0;
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v1 = sub_22372AC98();
  __swift_project_value_buffer(v1, qword_28132B680);
  v2 = sub_22372AC88();
  v3 = sub_22372B268();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_223623274(0xD000000000000025, 0x80000002237379C0, &v12);
    _os_log_impl(&dword_223620000, v2, v3, "Really routing message %s to a RequestController", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x223DE8A80](v5, -1, -1);
    MEMORY[0x223DE8A80](v4, -1, -1);
  }

  v6 = (*(v0 + 16))(*(v0 + 32), *(v0 + 40));
  *(v0 + 56) = v7;
  v11 = (v6 + *v6);
  v8 = swift_task_alloc();
  *(v0 + 64) = v8;
  *v8 = v0;
  v8[1] = sub_22363AC74;
  v9 = *(v0 + 48);

  return v11(v9);
}

uint64_t sub_2236E3734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_2236E375C, 0, 0);
}

uint64_t sub_2236E375C()
{
  v13 = v0;
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v1 = sub_22372AC98();
  __swift_project_value_buffer(v1, qword_28132B680);
  v2 = sub_22372AC88();
  v3 = sub_22372B268();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_223623274(0xD000000000000021, 0x8000000223737960, &v12);
    _os_log_impl(&dword_223620000, v2, v3, "Really routing message %s to a RequestController", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x223DE8A80](v5, -1, -1);
    MEMORY[0x223DE8A80](v4, -1, -1);
  }

  v6 = (*(v0 + 16))(*(v0 + 32), *(v0 + 40));
  *(v0 + 56) = v7;
  v11 = (v6 + *v6);
  v8 = swift_task_alloc();
  *(v0 + 64) = v8;
  *v8 = v0;
  v8[1] = sub_22363AC74;
  v9 = *(v0 + 48);

  return v11(v9);
}

uint64_t sub_2236E397C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_2236E39A4, 0, 0);
}

uint64_t sub_2236E39A4()
{
  v13 = v0;
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v1 = sub_22372AC98();
  __swift_project_value_buffer(v1, qword_28132B680);
  v2 = sub_22372AC88();
  v3 = sub_22372B268();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_223623274(0xD000000000000027, 0x8000000223737300, &v12);
    _os_log_impl(&dword_223620000, v2, v3, "Really routing message %s to a RequestController", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x223DE8A80](v5, -1, -1);
    MEMORY[0x223DE8A80](v4, -1, -1);
  }

  v6 = (*(v0 + 16))(*(v0 + 32), *(v0 + 40));
  *(v0 + 56) = v7;
  v11 = (v6 + *v6);
  v8 = swift_task_alloc();
  *(v0 + 64) = v8;
  *v8 = v0;
  v8[1] = sub_22363AC74;
  v9 = *(v0 + 48);

  return v11(v9);
}

uint64_t sub_2236E3BC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_2236E3BEC, 0, 0);
}

uint64_t sub_2236E3BEC()
{
  v13 = v0;
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v1 = sub_22372AC98();
  __swift_project_value_buffer(v1, qword_28132B680);
  v2 = sub_22372AC88();
  v3 = sub_22372B268();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_223623274(0xD000000000000019, 0x80000002237378B0, &v12);
    _os_log_impl(&dword_223620000, v2, v3, "Really routing message %s to a RequestController", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x223DE8A80](v5, -1, -1);
    MEMORY[0x223DE8A80](v4, -1, -1);
  }

  v6 = (*(v0 + 16))(*(v0 + 32), *(v0 + 40));
  *(v0 + 56) = v7;
  v11 = (v6 + *v6);
  v8 = swift_task_alloc();
  *(v0 + 64) = v8;
  *v8 = v0;
  v8[1] = sub_22363AC74;
  v9 = *(v0 + 48);

  return v11(v9);
}

uint64_t sub_2236E3E0C(uint64_t a1, unint64_t a2)
{
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v4 = sub_22372AC98();
  __swift_project_value_buffer(v4, qword_28132B680);

  v5 = sub_22372AC88();
  v6 = sub_22372B268();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11[0] = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_223623274(a1, a2, v11);
    _os_log_impl(&dword_223620000, v5, v6, "Unloading RequestController with requestId: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x223DE8A80](v8, -1, -1);
    MEMORY[0x223DE8A80](v7, -1, -1);
  }

  swift_beginAccess();
  v9 = sub_223718C48(a1, a2);
  result = swift_endAccess();
  if (v9)
  {
    sub_22372A8C8();

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_2236E3FB4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v52 = type metadata accessor for RequestInfo.UserQuery(0);
  v8 = *(v52 - 8);
  MEMORY[0x28223BE20](v52, v9);
  v50 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for RequestInfo.UserInput(0);
  v13 = MEMORY[0x28223BE20](v11 - 8, v12);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v17 = *(v4 + qword_28132B8A0);
    v18 = v17;
  }

  else
  {
    MEMORY[0x28223BE20](v13, v14);
    *(&v49 - 2) = a2;
    *(&v49 - 1) = v4;
    v19 = objc_allocWithZone(sub_22372A408());
    v20 = sub_22372A3D8();
    v22 = *(v4 + qword_28132B8A0);
    if (v22)
    {
      v23 = MEMORY[0x28223BE20](v20, v21);
      *(&v49 - 2) = v22;
      *(&v49 - 1) = v23;
      v24 = v23;
      v25 = objc_allocWithZone(sub_22372A328());
      v26 = v22;
      v17 = sub_22372A2E8();
    }

    else
    {

      v17 = 0;
    }
  }

  v51 = *(v4 + qword_28132A1D8);
  v27 = v17;
  v28 = sub_2236C5CF4(a1);
  MEMORY[0x28223BE20](v28, v29);
  *(&v49 - 4) = v4;
  *(&v49 - 3) = a1;
  *(&v49 - 2) = v17;
  v30 = objc_allocWithZone(sub_223728F88());
  v31 = sub_223728ED8();
  v53 = v27;

  if (v31)
  {
    v32 = v31;
    sub_22363B540(v32, v28, v4, MEMORY[0x277D5CC60]);

    v33 = sub_22372A768();
    v35 = v34;
    v37 = *(a1 + 16);
    v36 = *(a1 + 24);
    v38 = OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_userInput;
    swift_beginAccess();
    sub_2236397B0(a1 + v38, v16, type metadata accessor for RequestInfo.UserInput);
    v39 = (*(v8 + 48))(v16, 1, v52);
    v40 = 0;
    v41 = 0;
    if (v39 != 1)
    {
      v42 = v16;
      v43 = v50;
      sub_223639818(v42, v50, type metadata accessor for RequestInfo.UserQuery);
      v40 = *(v43 + 32);
      v41 = *(v43 + 40);

      sub_22363B214(v43, type metadata accessor for RequestInfo.UserQuery);
    }

    sub_2236C5458(v33, v35, v37, v36, v40, v41, *(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_rewrittenUtteranceIndex), *(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_rewrittenUtteranceIndex + 8));
  }

  else
  {
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v44 = sub_22372AC98();
    __swift_project_value_buffer(v44, qword_28132B680);
    v45 = sub_22372AC88();
    v46 = sub_22372B278();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_223620000, v45, v46, "Could not construct StartChildTextRequestMessage", v47, 2u);
      MEMORY[0x223DE8A80](v47, -1, -1);
    }

    type metadata accessor for RequestControllerBridgeInternalErrors(0);
    sub_2236233E0(qword_28132A9A0, type metadata accessor for RequestControllerBridgeInternalErrors, byte_223731918);
    swift_allocError();
    *v48 = 0xD00000000000001CLL;
    v48[1] = 0x8000000223737210;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }
}

uint64_t sub_2236E4500(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22372A3F8();
  v4 = qword_28132B870;
  swift_beginAccess();
  if (*(a3 + v4) >> 62)
  {
    sub_22372B558();
  }

  return sub_22372A3E8();
}

uint64_t sub_2236E4590(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v39[1] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F900, &qword_223733FF0);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v42 = v39 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F700, &qword_223731D88);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v41 = v39 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F6F0, &qword_223732CD0);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v40 = v39 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
  MEMORY[0x28223BE20](v16 - 8, v17);
  v19 = v39 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E9A0, &qword_223731970);
  MEMORY[0x28223BE20](v20 - 8, v21);
  v23 = v39 - v22;
  v24 = a4;
  sub_22372A728();
  sub_223728F08();
  v25 = *MEMORY[0x277D5CDE8];
  v26 = sub_223729DE8();
  v27 = *(v26 - 8);
  (*(v27 + 104))(v23, v25, v26);
  (*(v27 + 56))(v23, 0, 1, v26);
  sub_223728F58();
  sub_22372A778();
  v28 = sub_223727408();
  v29 = *(v28 - 8);
  v30 = *(v29 + 56);
  v30(v19, 0, 1, v28);
  sub_223728F78();

  sub_223728F68();
  v31 = qword_28132B858;
  swift_beginAccess();
  sub_223634890(a2 + v31, v40, &unk_27D08F6F0, &qword_223732CD0);
  sub_223728F18();
  sub_223728F38();
  sub_22372A768();
  sub_223728EE8();
  (*(v29 + 16))(v19, a3 + OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_orchestrationTaskId, v28);
  v30(v19, 0, 1, v28);
  sub_223728F48();
  v32 = qword_28132B898;
  swift_beginAccess();
  sub_223634890(a2 + v32, v41, &unk_27D08F700, &qword_223731D88);
  sub_223728EF8();
  v33 = OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_nlRoutingDecision;
  swift_beginAccess();
  v34 = sub_2237287C8();
  v35 = *(v34 - 8);
  v36 = a3 + v33;
  v37 = v42;
  (*(v35 + 16))(v42, v36, v34);
  (*(v35 + 56))(v37, 0, 1, v34);
  return sub_223728F28();
}

uint64_t sub_2236E4A34(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F720, &unk_223731DA0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v48 - v4;
  v6 = sub_22372A2C8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v61 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_223727408();
  v12 = MEMORY[0x28223BE20](v10, v11);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a1 + 16);
  v49 = a1;
  v51 = v17;
  if (v17)
  {
    v19 = *(v14 + 16);
    v18 = v14 + 16;
    v20 = a1 + ((*(v18 + 64) + 32) & ~*(v18 + 64));
    v58 = *(v18 + 56);
    v59 = v19;
    v56 = (v7 + 48);
    v57 = (v18 - 8);
    v21 = MEMORY[0x277D84F90];
    v52 = v7;
    v53 = v6;
    v54 = v10;
    v55 = (v7 + 32);
    v22 = v17;
    do
    {
      v23 = v18;
      v24 = v59(v16, v20, v10);
      MEMORY[0x28223BE20](v24, v25);
      *(&v48 - 2) = v16;
      sub_22372A2A8();
      (*v57)(v16, v10);
      if ((*v56)(v5, 1, v6) == 1)
      {
        v12 = sub_223626478(v5, &unk_27D08F720, &unk_223731DA0);
      }

      else
      {
        v26 = *v55;
        (*v55)(v61, v5, v6);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_223711220(0, v21[2] + 1, 1, v21);
        }

        v28 = v21[2];
        v27 = v21[3];
        if (v28 >= v27 >> 1)
        {
          v21 = sub_223711220((v27 > 1), v28 + 1, 1, v21);
        }

        v21[2] = v28 + 1;
        v29 = v21 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v28;
        v6 = v53;
        v12 = (v26)(v29, v61, v53);
        v10 = v54;
      }

      v20 += v58;
      --v22;
      v18 = v23;
    }

    while (v22);
  }

  else
  {
    v21 = MEMORY[0x277D84F90];
  }

  if (v21[2] != v51)
  {

    goto LABEL_20;
  }

  MEMORY[0x28223BE20](v12, v13);
  v30 = v50;
  *(&v48 - 2) = v21;
  *(&v48 - 1) = v30;
  v31 = objc_allocWithZone(sub_223729448());
  v32 = sub_2237293F8();

  if (!v32)
  {
LABEL_20:
    type metadata accessor for RequestControllerBridgeInternalErrors(0);
    sub_2236233E0(qword_28132A9A0, type metadata accessor for RequestControllerBridgeInternalErrors, byte_223731918);
    swift_allocError();
    *v47 = 0xD000000000000020;
    v47[1] = 0x80000002237371E0;
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v33 = sub_22372AC98();
  __swift_project_value_buffer(v33, qword_28132B680);
  v34 = v32;
  v35 = v49;

  v36 = sub_22372AC88();
  v37 = sub_22372B268();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = v10;
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v60[0] = v41;
    *v38 = 138412546;
    *(v38 + 4) = v34;
    *v40 = v32;
    *(v38 + 12) = 2080;
    v42 = v34;
    v43 = MEMORY[0x223DE7B80](v35, v39);
    v45 = sub_223623274(v43, v44, v60);

    *(v38 + 14) = v45;
    _os_log_impl(&dword_223620000, v36, v37, "Posting %@ with taskIds: %s", v38, 0x16u);
    sub_223626478(v40, &unk_27D08F250, &unk_22372D1D0);
    MEMORY[0x223DE8A80](v40, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v41);
    MEMORY[0x223DE8A80](v41, -1, -1);
    MEMORY[0x223DE8A80](v38, -1, -1);
  }

  sub_22372A758();
  __swift_project_boxed_opaque_existential_1(v60, v60[3]);
  sub_223729D88();

  return __swift_destroy_boxed_opaque_existential_1Tm(v60);
}

uint64_t sub_2236E508C(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v10 - v5;
  v7 = sub_223727408();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v6, a2, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  return sub_22372A2B8();
}

uint64_t sub_2236E518C(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E9A0, &qword_223731970);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v15 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v15 - v8;

  sub_223729408();
  sub_22372A728();
  sub_223729418();
  sub_22372A778();
  v10 = sub_223727408();
  (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  sub_223729438();
  v11 = *MEMORY[0x277D5CDE8];
  v12 = sub_223729DE8();
  v13 = *(v12 - 8);
  (*(v13 + 104))(v5, v11, v12);
  (*(v13 + 56))(v5, 0, 1, v12);
  return sub_223729428();
}

uint64_t sub_2236E5364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v40[5] = a8;
  v40[6] = a7;
  v40[3] = a6;
  v40[4] = a5;
  v40[1] = a4;
  v40[2] = a3;
  v44 = a12;
  v45 = a13;
  v42 = a11;
  v43 = a10;
  v41 = a9;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F730, &unk_223731DB0);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v16 = v40 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F738, &unk_2237324D0);
  MEMORY[0x28223BE20](v17 - 8, v18);
  v20 = v40 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E990, &qword_22372FCF0);
  MEMORY[0x28223BE20](v21 - 8, v22);
  v24 = v40 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
  MEMORY[0x28223BE20](v25 - 8, v26);
  v28 = v40 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E9A0, &qword_223731970);
  MEMORY[0x28223BE20](v29 - 8, v30);
  v32 = v40 - v31;
  sub_22372A728();
  sub_223728FE8();
  v33 = *MEMORY[0x277D5CDE8];
  v34 = sub_223729DE8();
  v35 = *(v34 - 8);
  (*(v35 + 104))(v32, v33, v34);
  (*(v35 + 56))(v32, 0, 1, v34);
  sub_223729028();
  sub_22372A778();
  v36 = sub_223727408();
  (*(*(v36 - 8) + 56))(v28, 0, 1, v36);
  sub_223729058();

  sub_223729048();

  sub_223728FF8();

  sub_223729018();
  v37 = sub_22372A548();
  v38 = *(v37 - 8);
  (*(v38 + 16))(v24, v41, v37);
  (*(v38 + 56))(v24, 0, 1, v37);
  sub_223729038();

  sub_223729068();
  sub_223634890(v44, v20, &qword_27D08F738, &unk_2237324D0);
  sub_223728FD8();
  sub_223634890(v45, v16, &qword_27D08F730, &unk_223731DB0);
  return sub_223729008();
}

uint64_t sub_2236E577C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v57[5] = a8;
  v57[6] = a7;
  v57[3] = a6;
  v57[4] = a5;
  v57[1] = a4;
  v57[2] = a3;
  v66 = a15;
  v67 = a16;
  v64 = a14;
  v61 = a12;
  v62 = a13;
  v59 = a11;
  v60 = a10;
  v58 = a9;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F760, &qword_223731DD0);
  MEMORY[0x28223BE20](v16 - 8, v17);
  v65 = v57 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F768, &qword_223731DD8);
  MEMORY[0x28223BE20](v19 - 8, v20);
  v63 = v57 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F770, &qword_223731DE0);
  MEMORY[0x28223BE20](v22 - 8, v23);
  v25 = v57 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F730, &unk_223731DB0);
  MEMORY[0x28223BE20](v26 - 8, v27);
  v57[0] = v57 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F738, &unk_2237324D0);
  MEMORY[0x28223BE20](v29 - 8, v30);
  v32 = v57 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E990, &qword_22372FCF0);
  MEMORY[0x28223BE20](v33 - 8, v34);
  v36 = v57 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
  MEMORY[0x28223BE20](v37 - 8, v38);
  v40 = v57 - v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E9A0, &qword_223731970);
  MEMORY[0x28223BE20](v41 - 8, v42);
  v44 = v57 - v43;
  sub_22372A728();
  sub_223729768();
  v45 = *MEMORY[0x277D5CDE8];
  v46 = sub_223729DE8();
  v47 = *(v46 - 8);
  (*(v47 + 104))(v44, v45, v46);
  (*(v47 + 56))(v44, 0, 1, v46);
  sub_2237297C8();
  sub_22372A778();
  v48 = sub_223727408();
  (*(*(v48 - 8) + 56))(v40, 0, 1, v48);
  sub_2237297F8();

  sub_2237297E8();

  sub_223729748();

  sub_2237297B8();
  v49 = sub_22372A548();
  v50 = *(v49 - 8);
  (*(v50 + 16))(v36, v58, v49);
  (*(v50 + 56))(v36, 0, 1, v49);
  sub_2237297D8();

  sub_223729808();
  sub_223634890(v61, v32, &qword_27D08F738, &unk_2237324D0);
  sub_223729758();
  sub_223634890(v62, v57[0], &qword_27D08F730, &unk_223731DB0);
  sub_223729788();
  v51 = sub_223729D78();
  v52 = *(v51 - 8);
  (*(v52 + 16))(v25, v64, v51);
  (*(v52 + 56))(v25, 0, 1, v51);
  sub_223729798();
  v53 = sub_223729728();
  v54 = *(v53 - 8);
  v55 = v63;
  (*(v54 + 16))(v63, v66, v53);
  (*(v54 + 56))(v55, 0, 1, v53);
  sub_223729778();
  sub_223634890(v67, v65, &qword_27D08F760, &qword_223731DD0);
  return sub_2237297A8();
}

uint64_t sub_2236E5DC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_allocWithZone(sub_223728918());
  v5 = sub_2237288A8();
  if (v5)
  {
    v6 = v5;
    sub_22372A758();
    __swift_project_boxed_opaque_existential_1(v14, v14[3]);
    sub_223729D88();

    return __swift_destroy_boxed_opaque_existential_1Tm(v14);
  }

  else
  {
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v8 = sub_22372AC98();
    __swift_project_value_buffer(v8, qword_28132B680);

    v9 = sub_22372AC88();
    v10 = sub_22372B278();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v14[0] = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_223623274(*(a1 + 16), *(a1 + 24), v14);
      _os_log_impl(&dword_223620000, v9, v10, "Could not create NLRoutingDecisionMessage for requestId: %s. Missing fields?", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      MEMORY[0x223DE8A80](v12, -1, -1);
      MEMORY[0x223DE8A80](v11, -1, -1);
    }

    type metadata accessor for RequestControllerBridgeInternalErrors(0);
    sub_2236233E0(qword_28132A9A0, type metadata accessor for RequestControllerBridgeInternalErrors, byte_223731918);
    swift_allocError();
    *v13 = 0xD000000000000018;
    v13[1] = 0x80000002237371C0;
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }
}

uint64_t sub_2236E601C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F900, &qword_223733FF0);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v26 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v26 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E9A0, &qword_223731970);
  MEMORY[0x28223BE20](v14 - 8, v15);
  v17 = &v26 - v16;
  v18 = *MEMORY[0x277D5CDE8];
  v19 = sub_223729DE8();
  v20 = *(v19 - 8);
  (*(v20 + 104))(v17, v18, v19);
  (*(v20 + 56))(v17, 0, 1, v19);
  sub_2237288E8();
  sub_22372A728();
  sub_2237288C8();
  sub_22372A778();
  v21 = sub_223727408();
  (*(*(v21 - 8) + 56))(v13, 0, 1, v21);
  sub_223728908();

  sub_2237288F8();
  v22 = OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_nlRoutingDecision;
  swift_beginAccess();
  v23 = sub_2237287C8();
  v24 = *(v23 - 8);
  (*(v24 + 16))(v9, a3 + v22, v23);
  (*(v24 + 56))(v9, 0, 1, v23);
  sub_2237288B8();

  return sub_2237288D8();
}

uint64_t sub_2236E631C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_allocWithZone(sub_223729AB8());
  v5 = sub_223729A58();
  if (v5)
  {
    v6 = v5;
    sub_22372A758();
    __swift_project_boxed_opaque_existential_1(v13, v13[3]);
    sub_223729D88();

    return __swift_destroy_boxed_opaque_existential_1Tm(v13);
  }

  else
  {
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v8 = sub_22372AC98();
    __swift_project_value_buffer(v8, qword_28132B680);
    v9 = sub_22372AC88();
    v10 = sub_22372B278();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_223620000, v9, v10, "Could not construct StoppedListeningForTextContinuationMessage", v11, 2u);
      MEMORY[0x223DE8A80](v11, -1, -1);
    }

    type metadata accessor for RequestControllerBridgeInternalErrors(0);
    sub_2236233E0(qword_28132A9A0, type metadata accessor for RequestControllerBridgeInternalErrors, byte_223731918);
    swift_allocError();
    *v12 = 0xD00000000000002ALL;
    v12[1] = 0x8000000223737190;
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }
}

uint64_t sub_2236E651C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v19[1] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = v19 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E9A0, &qword_223731970);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = v19 - v12;
  sub_22372A728();
  sub_223729A68();
  v14 = *MEMORY[0x277D5CDE8];
  v15 = sub_223729DE8();
  v16 = *(v15 - 8);
  (*(v16 + 104))(v13, v14, v15);
  (*(v16 + 56))(v13, 0, 1, v15);
  sub_223729A78();
  sub_22372A778();
  v17 = sub_223727408();
  (*(*(v17 - 8) + 56))(v9, 0, 1, v17);
  sub_223729AA8();

  sub_223729A98();

  return sub_223729A88();
}

uint64_t sub_2236E672C(uint64_t a1)
{
  v4 = sub_223727408();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = a1;
  v41 = v1;
  v9 = objc_allocWithZone(sub_223729538());
  v10 = sub_2237294E8();
  if (v10)
  {
    v11 = v10;
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v12 = sub_22372AC98();
    __swift_project_value_buffer(v12, qword_28132B680);
    (*(v5 + 16))(v8, a1, v4);
    v13 = v11;
    v14 = sub_22372AC88();
    v15 = sub_22372B268();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v42[6] = v2;
      v17 = v16;
      v36 = v16;
      v39 = swift_slowAlloc();
      v42[0] = v39;
      *v17 = 136315394;
      v18 = v13;
      v38 = v15;
      v19 = v18;
      v20 = [v18 description];
      v21 = sub_22372AFE8();
      v37 = v14;
      v22 = v21;
      v23 = v13;
      v25 = v24;

      v26 = sub_223623274(v22, v25, v42);
      v13 = v23;

      v27 = v36;
      *(v36 + 4) = v26;
      *(v27 + 12) = 2080;
      sub_2236233E0(&qword_28132B600, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v28 = sub_22372B6B8();
      v30 = v29;
      (*(v5 + 8))(v8, v4);
      v31 = sub_223623274(v28, v30, v42);

      *(v27 + 14) = v31;
      v32 = v37;
      _os_log_impl(&dword_223620000, v37, v38, "Posting %s with taskId: %s", v27, 0x16u);
      v33 = v39;
      swift_arrayDestroy();
      MEMORY[0x223DE8A80](v33, -1, -1);
      MEMORY[0x223DE8A80](v27, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v8, v4);
    }

    sub_22372A758();
    __swift_project_boxed_opaque_existential_1(v42, v42[3]);
    sub_223729D88();

    return __swift_destroy_boxed_opaque_existential_1Tm(v42);
  }

  else
  {
    type metadata accessor for RequestControllerBridgeInternalErrors(0);
    sub_2236233E0(qword_28132A9A0, type metadata accessor for RequestControllerBridgeInternalErrors, byte_223731918);
    swift_allocError();
    *v34 = 0xD000000000000021;
    v34[1] = 0x8000000223737160;
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }
}

uint64_t sub_2236E6B54(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E9A0, &qword_223731970);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v18 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v18 - v9;
  v11 = sub_223727408();
  v12 = *(v11 - 8);
  (*(v12 + 16))(v10, a2, v11);
  v13 = *(v12 + 56);
  v13(v10, 0, 1, v11);
  sub_2237294F8();
  v14 = *MEMORY[0x277D5CDE8];
  v15 = sub_223729DE8();
  v16 = *(v15 - 8);
  (*(v16 + 104))(v6, v14, v15);
  (*(v16 + 56))(v6, 0, 1, v15);
  sub_223729518();
  sub_22372A728();
  sub_223729508();
  sub_22372A778();
  v13(v10, 0, 1, v11);
  return sub_223729528();
}

uint64_t sub_2236E6D88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v18 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E9A0, &qword_223731970);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v18 - v11;
  v13 = *MEMORY[0x277D5CDE8];
  v14 = sub_223729DE8();
  v15 = *(v14 - 8);
  (*(v15 + 104))(v12, v13, v14);
  (*(v15 + 56))(v12, 0, 1, v14);
  sub_223728158();
  sub_22372A728();
  sub_223728138();
  sub_22372A778();
  v16 = sub_223727408();
  (*(*(v16 - 8) + 56))(v8, 0, 1, v16);
  sub_223728178();

  sub_223728168();
  return sub_223728148();
}

uint64_t sub_2236E6F88(unint64_t a1, uint64_t a2)
{
  v5 = qword_28132B870;
  swift_beginAccess();
  v6 = *(v2 + v5);
  v24 = v5;
  if (v6 >> 62)
  {
    goto LABEL_33;
  }

  v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:

  v8 = 0;
  while (1)
  {
    if (v7 == v8)
    {

      return sub_2236E7284(MEMORY[0x277D84F90]);
    }

    if ((v6 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x223DE7ED0](v8, v6);
    }

    else
    {
      if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        v7 = sub_22372B558();
        goto LABEL_3;
      }

      v9 = *(v6 + 8 * v8 + 32);
    }

    if (*(v9 + 16) == a1 && *(v9 + 24) == a2)
    {

      goto LABEL_20;
    }

    v11 = sub_22372B6E8();

    if (v11)
    {
      break;
    }

    if (__OFADD__(v8++, 1))
    {
      goto LABEL_32;
    }
  }

LABEL_20:
  v13 = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    __break(1u);
LABEL_35:
    v16 = v8 + 1;
    v15 = sub_22372B558();
    if (v15 < 0)
    {
      __break(1u);
      goto LABEL_37;
    }

    goto LABEL_48;
  }

  a1 = v24;
  v14 = *(v2 + v24);
  if (v14 >> 62)
  {
    goto LABEL_35;
  }

  v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v13 >= v15)
  {
    return sub_2236E7284(MEMORY[0x277D84F90]);
  }

  while (1)
  {
    v16 = *(v2 + a1);
    v17 = v16 & 0xFFFFFFFFFFFFFF8;
    v7 = v16 >> 62;
    if (v16 >> 62)
    {
      break;
    }

    v2 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2 >= v13)
    {
      if ((v16 & 0xC000000000000001) == 0)
      {
        goto LABEL_52;
      }

      goto LABEL_26;
    }

LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    v13 = v16;
    if (v16 >= v15)
    {
      return sub_2236E7284(MEMORY[0x277D84F90]);
    }
  }

LABEL_37:
  if ((v16 & 0x8000000000000000) != 0)
  {
    a1 = v16;
  }

  else
  {
    a1 = v17;
  }

  v21 = v13;
  v15 = sub_22372B558();
  if (v15 < v21)
  {
    goto LABEL_46;
  }

  v2 = v15;
  v15 = sub_22372B558();
  if (v15 < v21)
  {
    goto LABEL_47;
  }

  v15 = sub_22372B558();
  if (v15 < v2)
  {
    __break(1u);
    goto LABEL_44;
  }

  v13 = v21;
  if ((v16 & 0xC000000000000001) == 0)
  {
LABEL_52:
    swift_bridgeObjectRetain_n();
    goto LABEL_53;
  }

LABEL_26:
  if (v13 == v2)
  {
    goto LABEL_52;
  }

  if (v13 >= v2)
  {
    goto LABEL_45;
  }

  v18 = v13;
  type metadata accessor for RequestInfo(0);
  swift_bridgeObjectRetain_n();
  v19 = v18;
  do
  {
    v20 = v19 + 1;
    sub_22372B478();
    v19 = v20;
  }

  while (v2 != v20);
LABEL_53:

  if (!v7)
  {
    return v16 & 0xFFFFFFFFFFFFFF8;
  }

  v23 = sub_22372B568();

  return v23;
}

unint64_t sub_2236E7284(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v3 = sub_22372B558();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x277D84F90];
  }

  v4 = v3;
  v5 = sub_22369C0C4();
  sub_22363B070(v5 + 32, v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

void *sub_2236E732C(void *a1)
{
  v2 = v1;
  result = sub_223727ED8();
  if (!result)
  {
    return result;
  }

  v5 = result;
  v6 = [result refId];
  if (v6)
  {
    v7 = v6;
    v8 = sub_22372AFE8();
    v10 = v9;

    v11 = sub_223729D38();
    if (v10)
    {
      if (v8 == v11 && v10 == v12)
      {
      }

      else
      {
        v14 = sub_22372B6E8();

        if ((v14 & 1) == 0)
        {
          goto LABEL_17;
        }
      }

      v15 = sub_223729D38();
      v17 = v16;
      if (v15 != sub_22372A768() || v17 != v18)
      {
        v21 = sub_22372B6E8();

        if ((v21 & 1) == 0)
        {
          sub_22372A768();
          v22 = sub_22372AFD8();

          [v5 setRefId_];
        }

        goto LABEL_17;
      }
    }
  }

  else
  {
    sub_223729D38();
  }

LABEL_17:
  v19 = swift_allocObject();
  *(v19 + 16) = v2;
  *(v19 + 24) = a1;

  v20 = a1;
  sub_2236E78BC(v5, sub_2236E9D50, v19);
}

uint64_t sub_2236E7528(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = sub_22372AE88();
  v23 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_22372AEB8();
  v11 = *(v22 - 8);
  MEMORY[0x28223BE20](v22, v12);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22372A738();
  v16 = swift_allocObject();
  v16[2] = a3;
  v16[3] = a4;
  v16[4] = a1;
  aBlock[4] = sub_2236E9D58;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22365ACE8;
  aBlock[3] = &block_descriptor_16;
  v17 = _Block_copy(aBlock);
  v18 = a1;

  v19 = a4;
  sub_22372AEA8();
  v24 = MEMORY[0x277D84F90];
  sub_2236233E0(&qword_281328E38, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08EA30, &qword_22372D6F8);
  sub_223660728(&qword_281328DE8, &unk_27D08EA30, &qword_22372D6F8, MEMORY[0x277D83970]);
  sub_22372B3E8();
  MEMORY[0x223DE7D20](0, v14, v10, v17);
  _Block_release(v17);

  (*(v23 + 8))(v10, v7);
  (*(v11 + 8))(v14, v22);
}

uint64_t sub_2236E7814(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_2236E8158(a2, a3);
  sub_22372A758();
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_223729D88();

  return __swift_destroy_boxed_opaque_existential_1Tm(v5);
}

uint64_t sub_2236E78BC(void *a1, uint64_t a2, uint64_t a3)
{
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v6 = sub_22372AC98();
  __swift_project_value_buffer(v6, qword_28132B680);
  v7 = a1;
  v8 = sub_22372AC88();
  v9 = sub_22372B268();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    *(v10 + 4) = v7;
    *v11 = v7;
    v12 = v7;
    _os_log_impl(&dword_223620000, v8, v9, "Submitting ace command from FlowOutput %@", v10, 0xCu);
    sub_223626478(v11, &unk_27D08F250, &unk_22372D1D0);
    MEMORY[0x223DE8A80](v11, -1, -1);
    MEMORY[0x223DE8A80](v10, -1, -1);
  }

  if (sub_22370C1B0())
  {
    sub_2236E7ADC();
  }

  if (sub_22370C6B8())
  {
    sub_2236E7D14();
  }

  v13 = sub_22372A748();
  v16[4] = a2;
  v16[5] = a3;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 1107296256;
  v16[2] = sub_22365AC5C;
  v16[3] = &block_descriptor_7;
  v14 = _Block_copy(v16);

  [v13 handleCommand:v7 completion:v14];
  _Block_release(v14);
  return swift_unknownObjectRelease();
}

void sub_2236E7ADC()
{
  v0 = objc_allocWithZone(sub_223729E08());
  v1 = sub_223729DF8();
  if (v1)
  {
    v2 = v1;
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v3 = sub_22372AC98();
    __swift_project_value_buffer(v3, qword_28132B680);
    v4 = sub_22372AC88();
    v5 = sub_22372B268();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_223620000, v4, v5, "Going to post SiriWillPromptMessage", v6, 2u);
      MEMORY[0x223DE8A80](v6, -1, -1);
    }

    sub_22372A758();
    __swift_project_boxed_opaque_existential_1(v11, v11[3]);
    sub_223729D88();

    __swift_destroy_boxed_opaque_existential_1Tm(v11);
  }

  else
  {
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v7 = sub_22372AC98();
    __swift_project_value_buffer(v7, qword_28132B680);
    oslog = sub_22372AC88();
    v8 = sub_22372B278();
    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_223620000, oslog, v8, "Could not create SiriWillPromptMessage", v9, 2u);
      MEMORY[0x223DE8A80](v9, -1, -1);
    }
  }
}

void sub_2236E7D14()
{
  v0 = objc_allocWithZone(sub_223729E28());
  v1 = sub_223729E18();
  if (v1)
  {
    v2 = v1;
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v3 = sub_22372AC98();
    __swift_project_value_buffer(v3, qword_28132B680);
    v4 = sub_22372AC88();
    v5 = sub_22372B268();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_223620000, v4, v5, "Going to post SiriWillAskForConfirmationMessage", v6, 2u);
      MEMORY[0x223DE8A80](v6, -1, -1);
    }

    sub_22372A758();
    __swift_project_boxed_opaque_existential_1(v11, v11[3]);
    sub_223729D88();

    __swift_destroy_boxed_opaque_existential_1Tm(v11);
  }

  else
  {
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v7 = sub_22372AC98();
    __swift_project_value_buffer(v7, qword_28132B680);
    oslog = sub_22372AC88();
    v8 = sub_22372B278();
    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_223620000, oslog, v8, "Could not create SiriWillAskForConfirmationMessage", v9, 2u);
      MEMORY[0x223DE8A80](v9, -1, -1);
    }
  }
}

uint64_t sub_2236E7F4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *), uint64_t (*a4)(uint64_t), uint64_t (*a5)(char *), uint64_t (*a6)(uint64_t))
{
  v25 = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E9A0, &qword_223731970);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v16 = &v24 - v15;
  v17 = *MEMORY[0x277D5CDE8];
  v18 = sub_223729DE8();
  v19 = *(v18 - 8);
  (*(v19 + 104))(v16, v17, v18);
  (*(v19 + 56))(v16, 0, 1, v18);
  a3(v16);
  v20 = sub_22372A728();
  a4(v20);
  sub_22372A778();
  v21 = sub_223727408();
  (*(*(v21 - 8) + 56))(v12, 0, 1, v21);
  a5(v12);
  v22 = sub_22372A768();
  return v25(v22);
}

uint64_t sub_2236E8158(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(sub_223728BB8());
  result = sub_223728B48();
  if (!result)
  {
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v4 = sub_22372AC98();
    __swift_project_value_buffer(v4, qword_28132B680);
    v5 = sub_22372AC88();
    v6 = sub_22372B278();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_223620000, v5, v6, "Failed to create FlowOutputResponseMessage: Missing fields?", v7, 2u);
      MEMORY[0x223DE8A80](v7, -1, -1);
    }

    type metadata accessor for RequestControllerBridgeInternalErrors(0);
    sub_2236233E0(qword_28132A9A0, type metadata accessor for RequestControllerBridgeInternalErrors, byte_223731918);
    swift_allocError();
    *v8 = 0xD000000000000019;
    v8[1] = 0x8000000223737140;
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_2236E8304(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v20 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E9A0, &qword_223731970);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v20 - v11;
  v13 = *MEMORY[0x277D5CDE8];
  v14 = sub_223729DE8();
  v15 = *(v14 - 8);
  (*(v15 + 104))(v12, v13, v14);
  (*(v15 + 56))(v12, 0, 1, v14);
  sub_223728B78();
  sub_22372A728();
  sub_223728B58();
  sub_22372A778();
  v16 = sub_223727408();
  v17 = *(*(v16 - 8) + 56);
  v17(v8, 0, 1, v16);
  sub_223728BA8();
  sub_223729D38();
  sub_223728B98();
  sub_223729DB8();
  v17(v8, 0, 1, v16);
  sub_223728B88();
  v18 = a4;
  return sub_223728B68();
}

void sub_2236E8534(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_223727408();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_allocWithZone(MEMORY[0x277D476E8]) init];
  sub_2237273F8();
  sub_2237273B8();
  (*(v7 + 8))(v10, v6);
  v12 = sub_22372AFD8();

  [v11 setAceId_];

  v13 = v11;
  sub_22372A768();
  v14 = sub_22372AFD8();

  [v13 setRefId_];

  v15 = sub_22372A748();
  v16 = swift_allocObject();
  v16[2] = v3;
  v16[3] = a1;
  v16[4] = a2;
  aBlock[4] = sub_2236E8CD8;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22365AC5C;
  aBlock[3] = &block_descriptor_4;
  v17 = _Block_copy(aBlock);

  sub_22363C4E4(a1, a2);

  [v15 handleCommand:v13 completion:v17];
  _Block_release(v17);
  swift_unknownObjectRelease();
}

void sub_2236E8798(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v7 = sub_22372AC98();
  __swift_project_value_buffer(v7, qword_28132B680);

  v8 = sub_22372AC88();
  v9 = sub_22372B268();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v15 = v11;
    *v10 = 136315138;
    v12 = sub_22372A768();
    v14 = sub_223623274(v12, v13, &v15);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_223620000, v8, v9, "SARequestCompleted command submitted for requestId: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x223DE8A80](v11, -1, -1);
    MEMORY[0x223DE8A80](v10, -1, -1);
  }

  if (a4)
  {
    a4(a1, a2);
  }
}

uint64_t sub_2236E89B4()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + qword_28132A1A0));

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + qword_28132A1C0));

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + qword_28132A1F0));
  sub_223626478(v0 + qword_28132B8A8, &unk_27D08E990, &qword_22372FCF0);

  sub_223626478(v0 + qword_28132B858, &unk_27D08F6F0, &qword_223732CD0);

  sub_223626478(v0 + qword_28132B888, &qword_27D08E9D0, &qword_22372D1E0);
  sub_223626478(v0 + qword_28132B898, &unk_27D08F700, &qword_223731D88);
}

void sub_2236E8BBC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22372B3A8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_2236E8C40(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_2236E8C88(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2236E8CFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32[1] = a4;
  v32[2] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08E978, &qword_22372D170);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v32[3] = v32 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E980, &qword_22372D178);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F7A0, &unk_22372D180);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = v32 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E990, &qword_22372FCF0);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v16 = v32 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
  MEMORY[0x28223BE20](v17 - 8, v18);
  v20 = v32 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E9A0, &qword_223731970);
  MEMORY[0x28223BE20](v21 - 8, v22);
  v24 = v32 - v23;
  v25 = *MEMORY[0x277D5CDE8];
  v26 = sub_223729DE8();
  v27 = *(v26 - 8);
  (*(v27 + 104))(v24, v25, v26);
  (*(v27 + 56))(v24, 0, 1, v26);
  sub_223727FE8();
  sub_223729D98();
  sub_223727F88();
  sub_223729D58();
  v28 = sub_223727408();
  (*(*(v28 - 8) + 56))(v20, 0, 1, v28);
  sub_223728018();

  sub_223728008();
  sub_223728D08();
  v29 = sub_22372A548();
  (*(*(v29 - 8) + 56))(v16, 0, 1, v29);
  sub_223727FF8();
  sub_223728CF8();
  sub_223727FA8();
  sub_223727F48();
  v30 = sub_223727F38();
  (*(*(v30 - 8) + 56))(v12, 0, 1, v30);
  sub_223727FB8();
  sub_223727F58();
  sub_223727FC8();
  sub_223727F28();
  sub_223727F98();
  sub_223727F68();
  return sub_223727FD8();
}

uint64_t sub_2236E912C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24[1] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08E978, &qword_22372D170);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E990, &qword_22372FCF0);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = v24 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E9A0, &qword_223731970);
  MEMORY[0x28223BE20](v14 - 8, v15);
  v17 = v24 - v16;
  v18 = *MEMORY[0x277D5CDE8];
  v19 = sub_223729DE8();
  v20 = *(v19 - 8);
  (*(v20 + 104))(v17, v18, v19);
  (*(v20 + 56))(v17, 0, 1, v19);
  sub_223728348();
  sub_223729D98();
  sub_2237282F8();
  sub_223729D58();
  v21 = sub_223727408();
  (*(*(v21 - 8) + 56))(v13, 0, 1, v21);
  sub_223728378();

  sub_223728368();
  sub_223728CF8();
  sub_223728308();
  sub_2237282B8();
  sub_223728318();
  sub_2237282D8();
  sub_223728338();
  sub_223728D08();
  v22 = sub_22372A548();
  (*(*(v22 - 8) + 56))(v9, 0, 1, v22);
  sub_223728358();
  sub_2237282C8();
  return sub_223728328();
}

uint64_t sub_2236E9458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E990, &qword_22372FCF0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v22 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v22 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E9A0, &qword_223731970);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v22 - v14;
  v16 = *MEMORY[0x277D5CDE8];
  v17 = sub_223729DE8();
  v18 = *(v17 - 8);
  (*(v18 + 104))(v15, v16, v17);
  (*(v18 + 56))(v15, 0, 1, v17);
  sub_223728AF8();
  sub_223729D98();
  sub_223728AB8();
  sub_223729D58();
  v19 = sub_223727408();
  (*(*(v19 - 8) + 56))(v11, 0, 1, v19);
  sub_223728B28();

  sub_223728B18();
  sub_223728CF8();
  sub_223728AD8();
  sub_223728A88();
  sub_223728AC8();
  sub_223728AA8();
  sub_223728AE8();
  sub_223728D08();
  v20 = sub_22372A548();
  (*(*(v20 - 8) + 56))(v7, 0, 1, v20);
  return sub_223728B08();
}

uint64_t sub_2236E971C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E990, &qword_22372FCF0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v22 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E9A0, &qword_223731970);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v22 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v22 - v14;
  sub_223729D98();
  sub_223728C78();

  sub_223728CC8();
  sub_223729D58();
  v16 = sub_223727408();
  (*(*(v16 - 8) + 56))(v15, 0, 1, v16);
  sub_223728CD8();
  v17 = *MEMORY[0x277D5CDE8];
  v18 = sub_223729DE8();
  v19 = *(v18 - 8);
  (*(v19 + 104))(v11, v17, v18);
  (*(v19 + 56))(v11, 0, 1, v18);
  sub_223728CA8();
  sub_223728C58();
  sub_223728C98();
  sub_223728CF8();
  sub_223728C88();
  sub_223728D08();
  v20 = sub_22372A548();
  (*(*(v20 - 8) + 56))(v7, 0, 1, v20);
  return sub_223728CB8();
}

uint64_t sub_2236E99C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F778, &qword_223731E08);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v22 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E9A0, &qword_223731970);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v22 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v22 - v14;
  sub_223729D98();
  sub_223729B98();
  sub_223729D38();
  sub_223729BD8();
  sub_223729D58();
  v16 = sub_223727408();
  (*(*(v16 - 8) + 56))(v15, 0, 1, v16);
  sub_223729BE8();
  v17 = *MEMORY[0x277D5CDE8];
  v18 = sub_223729DE8();
  v19 = *(v18 - 8);
  (*(v19 + 104))(v11, v17, v18);
  (*(v19 + 56))(v11, 0, 1, v18);
  sub_223729BB8();

  sub_223729BC8();
  sub_223729B78();
  v20 = sub_22372A4D8();
  (*(*(v20 - 8) + 56))(v7, 0, 1, v20);
  return sub_223729BA8();
}

uint64_t sub_2236E9D64(uint64_t (*a1)(void))
{
  a1();

  return sub_22372B818();
}

uint64_t sub_2236E9DDC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_22372B558();
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
      result = sub_22372B558();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_223660728(&qword_27D08F7C0, &qword_27D08F7B8, &qword_223732180, MEMORY[0x277D83988]);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F7B8, &qword_223732180);
            v9 = sub_2236F4860(v13, i, a3);
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
        sub_223630584(0, &qword_281328D00, 0x277D47140);
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

uint64_t sub_2236E9F90(uint64_t a1, uint64_t a2, uint64_t a3)
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
  type metadata accessor for RequestInfo(0);
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
  result = sub_22372B558();
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
    result = sub_22372B558();
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

uint64_t sub_2236EA090(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a2;
    v5 = a1;
    v6 = *v4;
    v7 = *v4 >> 62;
    if (!v7)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_22372B558();
  if (result < v3)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v3, v5))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = v5 - v3;
  if (__OFSUB__(0, v3 - v5))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v7)
  {
    v10 = sub_22372B558();
  }

  else
  {
    v10 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = __OFADD__(v10, v9);
  result = v10 + v9;
  if (v11)
  {
    goto LABEL_18;
  }

  sub_2236F47D4(result, 1);

  return sub_2236E9F90(v5, v3, 0);
}

unint64_t sub_2236EA17C()
{
  result = qword_27D08F748;
  if (!qword_27D08F748)
  {
    result = swift_getWitnessTable(aA_3, &type metadata for RequestControllerBridgeRequestProcessorErrors, v0, v1);
    atomic_store(result, &qword_27D08F748);
  }

  return result;
}

uint64_t sub_2236EA26C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_2236242EC;

  return sub_2236E167C(v2, v3, v4, v5, v6);
}

uint64_t sub_2236EA328(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2236242EC;

  return sub_2236CFD9C(a1, v5, v4);
}

uint64_t sub_2236EA3D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_2236EA450(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F760, &qword_223731DD0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2236EA4CC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_2236242EC;

  return sub_2236E397C(v2, v3, v4, v5, v6);
}

uint64_t sub_2236EA588(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2236242EC;

  return sub_2236D22E4(a1, v5, v4);
}

uint64_t sub_2236EA630(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2236242EC;

  return sub_2236D16AC(a1, v4, v5, v7, v6);
}

void sub_2236EA6F0()
{
  v1 = v0;
  v2 = type metadata accessor for RequestInfo.UserInput(0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v19[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for RequestInfo.UserQuery(0);
  v7 = *(v6 + 28);
  v8 = sub_223728858();
  (*(*(v8 - 8) + 56))(&v5[v7], 1, 1, v8);
  v9 = *(v6 + 32);
  v10 = sub_2237287E8();
  (*(*(v10 - 8) + 56))(&v5[v9], 1, 1, v10);
  *(v5 + 1) = 0u;
  *(v5 + 2) = 0u;
  *v5 = 0u;
  (*(*(v6 - 8) + 56))(v5, 0, 1, v6);
  v11 = sub_22362D128(v5);
  sub_22363B214(v5, type metadata accessor for RequestInfo.UserInput);
  v20 = v1;
  v21 = v11;
  v12 = objc_allocWithZone(sub_2237295B8());
  v13 = sub_223729548();
  if (v13)
  {
    v14 = v13;
    sub_22363B540(v13, 1, v1, MEMORY[0x277D5CCB0]);
  }

  else
  {
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v15 = sub_22372AC98();
    __swift_project_value_buffer(v15, qword_28132B680);
    v16 = sub_22372AC88();
    v17 = sub_22372B278();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_223620000, v16, v17, "Could not construct StartChildCandidateRequestMessage. Missing fields?", v18, 2u);
      MEMORY[0x223DE8A80](v18, -1, -1);
    }
  }
}

void *sub_2236EA99C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v24[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F788, &qword_223731E68);
  v24[4] = sub_223660728(&unk_281328CF0, &unk_27D08F788, &qword_223731E68, MEMORY[0x277D83FC0]);
  v9 = swift_allocObject();
  v24[0] = v9;
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = a3;
  v9[5] = a4;
  v10 = qword_281328E58;
  swift_unknownObjectRetain();
  if (v10 != -1)
  {
    swift_once();
  }

  v11 = sub_22372AC98();
  __swift_project_value_buffer(v11, qword_28132B680);
  sub_223623934(v24, v23);
  v12 = sub_22372AC88();
  v13 = sub_22372B268();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 134217984;
    result = __swift_project_boxed_opaque_existential_1(v23, v23[3]);
    v16 = result[2];
    v17 = result[3] >> 1;
    v18 = v17 - v16;
    if (__OFSUB__(v17, v16))
    {
      __break(1u);
      return result;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    *(v14 + 4) = v18;
    _os_log_impl(&dword_223620000, v12, v13, "Deferring %ld remaining child requests for once the current multi-turn task is complete.", v14, 0xCu);
    MEMORY[0x223DE8A80](v14, -1, -1);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
  }

  if (a3 != a4 >> 1)
  {
    v19 = sub_22372AC88();
    v20 = sub_22372B268();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_223620000, v19, v20, "Flow completed with prompt, saving remaining conjunction requests for when this task is complete.", v21, 2u);
      MEMORY[0x223DE8A80](v21, -1, -1);
    }
  }

  swift_beginAccess();
  v22 = swift_unknownObjectRetain();
  sub_2236F48E8(v22, a2, a3, a4);
  swift_endAccess();
  swift_unknownObjectRelease();
  return __swift_destroy_boxed_opaque_existential_1Tm(v24);
}

uint64_t sub_2236EAC3C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_2236242EC;

  return sub_2236E2674(v2, v3, v4, v5, v6);
}

uint64_t sub_2236EACF8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2236242EC;

  return sub_2236D03E4(a1, v5, v4);
}

uint64_t sub_2236EADA0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2236242EC;

  return sub_2236CFD9C(a1, v5, v4);
}

uint64_t sub_2236EAE48(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2236242EC;

  return sub_2236CFD9C(a1, v5, v4);
}

uint64_t sub_2236EAEF0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_223624EA4;

  return sub_2236CF938();
}

uint64_t sub_2236EAFB0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_2236242EC;

  return sub_2236E2E14(v2, v3, v4, v5, v6);
}

uint64_t sub_2236EB06C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2236242EC;

  return sub_2236CF798(a1, v5, v4);
}

uint64_t sub_2236EB114()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_2236242EC;

  return sub_2236E21E4(v2, v3, v4, v5, v6);
}

uint64_t sub_2236EB1D0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2236242EC;

  return sub_2236CEB38(a1, v5, v4);
}

uint64_t sub_2236EB284()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_2236242EC;

  return sub_2236E0FA4(v2, v3, v4, v5, v6);
}

uint64_t sub_2236EB340(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2236242EC;

  return sub_2236CE414(a1, v5, v4);
}

uint64_t sub_2236EB3F4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2236242EC;

  return sub_2236CCC98(a1, v5, v4);
}

uint64_t sub_2236EB49C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_2236242EC;

  return sub_2236E242C(v2, v3, v4, v5, v6);
}

uint64_t sub_2236EB558(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2236242EC;

  return sub_2236CCC98(a1, v5, v4);
}

uint64_t sub_2236EB60C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_2236242EC;

  return sub_2236E1F9C(v2, v3, v4, v5, v6);
}

uint64_t sub_2236EB6C8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2236242EC;

  return sub_2236CC6E4(a1, v5, v4);
}

uint64_t sub_2236EB770()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_2236242EC;

  return sub_2236E2BCC(v2, v3, v4, v5, v6);
}

uint64_t sub_2236EB82C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2236242EC;

  return sub_2236CB650(a1, v5, v4);
}

uint64_t sub_2236EB8EC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_2236242EC;

  return sub_2236E305C(v2, v3, v4, v5, v6);
}

uint64_t sub_2236EB9A8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2236242EC;

  return sub_2236CB0E0(a1, v5, v4);
}

uint64_t sub_2236EBA64()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_2236242EC;

  return sub_2236E1B0C(v2, v3, v4, v5, v6);
}

uint64_t sub_2236EBB20(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2236242EC;

  return sub_2236CA0C4(a1, v5, v4);
}

uint64_t sub_2236EBBD4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_2236242EC;

  return sub_2236E18C4(v2, v3, v4, v5, v6);
}

uint64_t sub_2236EBC90(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2236242EC;

  return sub_2236C92E8(a1, v5, v4);
}

uint64_t sub_2236EBD38()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_2236242EC;

  return sub_2236E1434(v2, v3, v4, v5, v6);
}

uint64_t sub_2236EBDF4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2236242EC;

  return sub_2236C8580(a1, v5, v4);
}

uint64_t sub_2236EBE9C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_2236242EC;

  return sub_2236E1D54(v2, v3, v4, v5, v6);
}

void sub_2236EBF58(void *a1, void *a2)
{
  v3 = v2;
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v6 = sub_22372AC98();
  __swift_project_value_buffer(v6, qword_28132B680);
  v7 = sub_22372AC88();
  v8 = sub_22372B268();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_223620000, v7, v8, "RequestControllerBridgeRequestProcessor: Handling RunPOMMESRequest ace command", v9, 2u);
    MEMORY[0x223DE8A80](v9, -1, -1);
  }

  v10 = [a1 refId];
  if (v10 || (v10 = [a2 requestID]) != 0)
  {
    v11 = v10;
    v12 = sub_22372AFE8();
    v14 = v13;

    if (v12 == sub_22372A768() && v14 == v15)
    {
    }

    else
    {
      v16 = sub_22372B6E8();

      if ((v16 & 1) == 0)
      {

        v39 = sub_22372AC88();
        v26 = sub_22372B278();

        if (os_log_type_enabled(v39, v26))
        {
          v27 = swift_slowAlloc();
          v28 = swift_slowAlloc();
          v40[0] = v28;
          *v27 = 136315394;
          v29 = sub_223623274(v12, v14, v40);

          *(v27 + 4) = v29;
          *(v27 + 12) = 2080;
          v30 = sub_22372A768();
          v32 = sub_223623274(v30, v31, v40);

          *(v27 + 14) = v32;
          _os_log_impl(&dword_223620000, v39, v26, "requestId of RunPOMMESRequest ace command: %s does not match the requestId of the RequestProcessor %s, dropping.", v27, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x223DE8A80](v28, -1, -1);
          MEMORY[0x223DE8A80](v27, -1, -1);

          return;
        }

        goto LABEL_26;
      }
    }

    if (*(v3 + qword_28132B8C0))
    {

      [a1 copy];
      sub_22372B3D8();
      swift_unknownObjectRelease();
      sub_223630584(0, &qword_281328D30, 0x277D476A0);
      if (swift_dynamicCast())
      {
        v17 = v40[5];
        v18 = sub_22372AFD8();
        [v17 setRefId_];

        MEMORY[0x28223BE20](v19, v20);
        v21 = objc_allocWithZone(sub_223728518());
        v22 = sub_2237284A8();

        if (v22)
        {
          sub_22372A758();
          __swift_project_boxed_opaque_existential_1(v40, v40[3]);
          sub_223729D88();

          __swift_destroy_boxed_opaque_existential_1Tm(v40);
        }

        else
        {
          v36 = sub_22372AC88();
          v37 = sub_22372B278();
          if (os_log_type_enabled(v36, v37))
          {
            v38 = swift_slowAlloc();
            *v38 = 0;
            _os_log_impl(&dword_223620000, v36, v37, "Could not build RunPommesRequestMessage. Missing fields?", v38, 2u);
            MEMORY[0x223DE8A80](v38, -1, -1);
          }
        }
      }

      else
      {

        v33 = sub_22372AC88();
        v34 = sub_22372B278();
        if (os_log_type_enabled(v33, v34))
        {
          v35 = swift_slowAlloc();
          *v35 = 0;
          _os_log_impl(&dword_223620000, v33, v34, "Unable to copy command as SARDRunPOMMESRequest. Dropping.", v35, 2u);
          MEMORY[0x223DE8A80](v35, -1, -1);
        }
      }

      return;
    }

    v39 = sub_22372AC88();
    v23 = sub_22372B278();
    if (os_log_type_enabled(v39, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      v25 = "Unable to find eager child info for the local request, dropping.";
LABEL_24:
      _os_log_impl(&dword_223620000, v39, v23, v25, v24, 2u);
      MEMORY[0x223DE8A80](v24, -1, -1);
    }
  }

  else
  {
    v39 = sub_22372AC88();
    v23 = sub_22372B278();
    if (os_log_type_enabled(v39, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      v25 = "Could not find a refId in the RunPOMMESRequest ace command, dropping.";
      goto LABEL_24;
    }
  }

LABEL_26:
}

uint64_t sub_2236EC58C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_2236242EC;

  return sub_2236E3BC4(v2, v3, v4, v5, v6);
}

uint64_t sub_2236EC648()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_2236242EC;

  return sub_2236E11EC(v2, v3, v4, v5, v6);
}

uint64_t sub_2236EC704()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_2236242EC;

  return sub_2236E3734(v2, v3, v4, v5, v6);
}

uint64_t sub_2236EC7C0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_2236242EC;

  return sub_2236E34EC(v2, v3, v4, v5, v6);
}

uint64_t sub_2236EC87C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_2236242EC;

  return sub_2236E32A4(v2, v3, v4, v5, v6);
}

uint64_t sub_2236EC938()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_2236242EC;

  return sub_2236E2984(v2, v3, v4, v5, v6);
}

uint64_t get_enum_tag_for_layout_string_24RequestDispatcherBridges0a16ControllerBridgeA15ProcessorErrorsO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_2236ECA18(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_2236ECA60(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_2236ECAA4(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_2236ECAE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F7C8, qword_223732310);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F7D0, &unk_223732EC0);
  v13 = *(*(v12 - 8) + 72);
  v14 = (*(*(v12 - 8) + 80) + 32) & ~*(*(v12 - 8) + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_2237322A0;
  v16 = v15 + v14;
  v17 = (v15 + v14 + *(v12 + 48));
  sub_22372A568();
  *v17 = 0xD000000000000017;
  v17[1] = 0x8000000223734650;
  v18 = (v16 + v13 + *(v12 + 48));
  sub_22372A5A8();
  *v18 = 0xD000000000000013;
  v18[1] = 0x8000000223736E10;
  v19 = *(v12 + 48);
  if (qword_28132B4D0 != -1)
  {
    swift_once();
  }

  v20 = (v16 + 2 * v13 + v19);
  v21 = sub_22372A608();
  v22 = __swift_project_value_buffer(v21, qword_28132BA28);
  (*(*(v21 - 8) + 16))(v16 + 2 * v13, v22, v21);
  *v20 = a1;
  v20[1] = a2;
  v23 = (v16 + 3 * v13 + *(v12 + 48));

  sub_22372A5C8();
  *v23 = a3;
  v23[1] = a4;
  v24 = (v16 + 4 * v13 + *(v12 + 48));

  sub_22372A578();
  *v24 = a5;
  v24[1] = a6;
  v25 = (v16 + 5 * v13 + *(v12 + 48));

  sub_22372A5F8();
  *v25 = a7;
  v25[1] = a8;
  v26 = (v16 + 6 * v13 + *(v12 + 48));

  sub_22372A5E8();
  *v26 = a9;
  v26[1] = a10;

  return v15;
}

void sub_2236ECD8C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_223727408();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_allocWithZone(MEMORY[0x277D47A20]) init];
  sub_2237273F8();
  sub_2237273B8();
  (*(v5 + 8))(v8, v4);
  v10 = sub_22372AFD8();

  [v9 setAceId_];

  v11 = v9;
  v12 = sub_22372AFD8();
  [v11 setRefId_];

  v13 = sub_22372AFD8();
  [v11 setReason_];

  v14 = *(v3 + 16);
  aBlock[4] = sub_2236ECFD0;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22365AC5C;
  aBlock[3] = &block_descriptor_8;
  v15 = _Block_copy(aBlock);
  [v14 handleCommand:v11 completion:v15];
  _Block_release(v15);
}

void sub_2236ECFDC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_223727408();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v9 = sub_22372AC98();
  __swift_project_value_buffer(v9, qword_28132B680);
  v10 = sub_22372AC88();
  v11 = sub_22372B268();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_223620000, v10, v11, "Sending RequestCompleted to end the request", v12, 2u);
    MEMORY[0x223DE8A80](v12, -1, -1);
  }

  v13 = [objc_allocWithZone(MEMORY[0x277D476E8]) init];
  sub_2237273F8();
  sub_2237273B8();
  (*(v5 + 8))(v8, v4);
  v14 = sub_22372AFD8();

  [v13 setAceId_];

  v15 = v13;
  v16 = sub_22372AFD8();
  [v15 setRefId_];

  v17 = *(v3 + 16);
  aBlock[4] = sub_2236ED29C;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22365AC5C;
  aBlock[3] = &block_descriptor_5;
  v18 = _Block_copy(aBlock);
  [v17 handleCommand:v15 completion:v18];
  _Block_release(v18);
}

void sub_2236ED29C()
{
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v0 = sub_22372AC98();
  __swift_project_value_buffer(v0, qword_28132B680);
  oslog = sub_22372AC88();
  v1 = sub_22372B268();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_223620000, oslog, v1, "Sent RequestCompleted to end the request", v2, 2u);
    MEMORY[0x223DE8A80](v2, -1, -1);
  }
}

void sub_2236ED384(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_223727408();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_allocWithZone(MEMORY[0x277D471E8]) init];
  sub_2237273F8();
  sub_2237273B8();
  (*(v5 + 8))(v8, v4);
  v10 = sub_22372AFD8();

  [v9 setAceId_];

  v11 = sub_22372AFD8();
  [v9 setRefId_];

  v12 = *(v3 + 16);
  aBlock[4] = sub_2236ED580;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22365AC5C;
  aBlock[3] = &block_descriptor_5;
  v13 = _Block_copy(aBlock);
  [v12 handleCommand:v9 completion:v13];
  _Block_release(v13);
}

void sub_2236ED58C(uint64_t a1, void *a2, const char *a3, ...)
{
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v5 = sub_22372AC98();
  __swift_project_value_buffer(v5, qword_28132B680);
  v6 = a2;
  oslog = sub_22372AC88();
  v7 = sub_22372B268();

  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 136315138;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F990, &unk_22372FDA0);
    v10 = sub_22372B398();
    v12 = sub_223623274(v10, v11, &v14);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_223620000, oslog, v7, a3, v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x223DE8A80](v9, -1, -1);
    MEMORY[0x223DE8A80](v8, -1, -1);
  }

  else
  {
  }
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2236ED760(uint64_t a1, uint64_t a2)
{
  type metadata accessor for RequestControllerMitigationHandler();
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t sub_2236ED7A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2236242EC;

  return v9(a1, a2, a3);
}

uint64_t sub_2236ED8D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 16) + **(a3 + 16));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2236242EC;

  return v9(a1, a2, a3);
}

uint64_t sub_2236ED9F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 24) + **(a3 + 24));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2236242EC;

  return v9(a1, a2, a3);
}

uint64_t sub_2236EDB20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 32) + **(a3 + 32));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2236242EC;

  return v9(a1, a2, a3);
}

uint64_t sub_2236EDC48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 40) + **(a3 + 40));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2236242EC;

  return v9(a1, a2, a3);
}

uint64_t sub_2236EDD70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 48) + **(a3 + 48));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2236242EC;

  return v9(a1, a2, a3);
}

uint64_t sub_2236EDE98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 56) + **(a3 + 56));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2236242EC;

  return v9(a1, a2, a3);
}

uint64_t sub_2236EDFC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 64) + **(a3 + 64));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2236242EC;

  return v9(a1, a2, a3);
}

uint64_t sub_2236EE0E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 72) + **(a3 + 72));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2236242EC;

  return v9(a1, a2, a3);
}

uint64_t sub_2236EE210(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 80) + **(a3 + 80));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2236242EC;

  return v9(a1, a2, a3);
}

uint64_t sub_2236EE338(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 88) + **(a3 + 88));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2236242EC;

  return v9(a1, a2, a3);
}

uint64_t sub_2236EE460(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 96) + **(a3 + 96));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2236242EC;

  return v9(a1, a2, a3);
}

uint64_t sub_2236EE588(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 104) + **(a3 + 104));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2236242EC;

  return v9(a1, a2, a3);
}

uint64_t sub_2236EE6B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 112) + **(a3 + 112));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2236242EC;

  return v9(a1, a2, a3);
}

uint64_t sub_2236EE7D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 120) + **(a3 + 120));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2236242EC;

  return v9(a1, a2, a3);
}

uint64_t sub_2236EE900(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 128) + **(a3 + 128));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2236242EC;

  return v9(a1, a2, a3);
}

uint64_t sub_2236EEA28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 136) + **(a3 + 136));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_223624EA4;

  return v9(a1, a2, a3);
}

uint64_t sub_2236EEB50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 144) + **(a3 + 144));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2236242EC;

  return v9(a1, a2, a3);
}

uint64_t sub_2236EEC78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 152) + **(a3 + 152));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2236242EC;

  return v9(a1, a2, a3);
}

uint64_t sub_2236EEDA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 160) + **(a3 + 160));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2236242EC;

  return v9(a1, a2, a3);
}

uint64_t sub_2236EEEC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 168) + **(a3 + 168));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2236242EC;

  return v9(a1, a2, a3);
}

uint64_t sub_2236EEFF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 176) + **(a3 + 176));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2236242EC;

  return v9(a1, a2, a3);
}

uint64_t sub_2236EF118(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 184) + **(a3 + 184));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2236242EC;

  return v9(a1, a2, a3);
}

uint64_t sub_2236EF240(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 192) + **(a3 + 192));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2236242EC;

  return v9(a1, a2, a3);
}

uint64_t sub_2236EF368(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 200) + **(a3 + 200));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2236242EC;

  return v9(a1, a2, a3);
}

uint64_t sub_2236EF490(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 208) + **(a3 + 208));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2236242EC;

  return v9(a1, a2, a3);
}

uint64_t sub_2236EF5B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 216) + **(a3 + 216));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2236242EC;

  return v9(a1, a2, a3);
}

id sub_2236EF704()
{
  v1 = v0;
  v2 = sub_223729D78();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = (&v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v3 + 16))(v6, v1, v2);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x277D5CD98])
  {
    (*(v3 + 96))(v6, v2);
    v8 = *v6;
    result = [*v6 recognition];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v10 = result;
    v11 = [result oneBestTranscript];

    if (v11)
    {
      v12 = sub_22372AFE8();

      return v12;
    }
  }

  else
  {
    if (v7 == *MEMORY[0x277D5CD90])
    {
      (*(v3 + 96))(v6, v2);
      return *v6;
    }

    (*(v3 + 8))(v6, v2);
  }

  return 0;
}

uint64_t sub_2236EF8D8@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2237287C8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4);
  v9 = (*(v5 + 88))(v8, v4);
  if (v9 == *MEMORY[0x277D5CB90] || v9 == *MEMORY[0x277D5CB78])
  {
    v10 = *(v5 + 8);
    v10(a1, v4);
    v10(v8, v4);
LABEL_4:
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F680, &unk_223731E20);
    return (*(*(v11 - 8) + 56))(a2, 1, 1, v11);
  }

  if (v9 == *MEMORY[0x277D5CB70])
  {
    v13 = *(v5 + 8);
    v13(v8, v4);
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v14 = sub_22372AC98();
    __swift_project_value_buffer(v14, qword_28132B680);
    v15 = sub_22372AC88();
    v16 = sub_22372B278();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_223620000, v15, v16, "Unexpected conversation from .queryRewrite routing decision to RequestRoute", v17, 2u);
      MEMORY[0x223DE8A80](v17, -1, -1);
    }

    v13(a1, v4);
    goto LABEL_4;
  }

  if (v9 == *MEMORY[0x277D5CB88])
  {
    (*(v5 + 8))(a1, v4);
    (*(v5 + 96))(v8, v4);
    v18 = sub_223729FB8();
    (*(*(v18 - 8) + 32))(a2, v8, v18);
    v19 = type metadata accessor for IntelligenceFlowPrescribedTool(0);
LABEL_13:
    swift_storeEnumTagMultiPayload();
    (*(*(v19 - 8) + 56))(a2, 0, 1, v19);
LABEL_14:
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F680, &unk_223731E20);
    return (*(*(v20 - 8) + 56))(a2, 0, 1, v20);
  }

  if (v9 == *MEMORY[0x277D5CB80])
  {
    (*(v5 + 8))(a1, v4);
    goto LABEL_4;
  }

  if (v9 == *MEMORY[0x277D5CBA0])
  {
    (*(v5 + 8))(a1, v4);
    v21 = type metadata accessor for IntelligenceFlowPrescribedTool(0);
    (*(*(v21 - 8) + 56))(a2, 1, 1, v21);
    goto LABEL_14;
  }

  v22 = *MEMORY[0x277D5CB98];
  v23 = *(v5 + 8);
  v24 = v9;
  v23(a1, v4);
  if (v24 == v22)
  {
    v25 = *MEMORY[0x277D5CC50];
    v26 = sub_223728E18();
    (*(*(v26 - 8) + 104))(a2, v25, v26);
    v19 = type metadata accessor for IntelligenceFlowPrescribedTool(0);
    goto LABEL_13;
  }

  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F680, &unk_223731E20);
  (*(*(v27 - 8) + 56))(a2, 1, 1, v27);
  return (v23)(v8, v4);
}

uint64_t sub_2236EFE0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v74 = a2;
  v3 = sub_22372A2D8();
  v69 = *(v3 - 8);
  v70 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v68 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_223729FB8();
  v73 = *(v67 - 8);
  MEMORY[0x28223BE20](v67, v6);
  v71 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_223728E18();
  v65 = *(v8 - 8);
  v66 = v8;
  v10 = MEMORY[0x28223BE20](v8, v9);
  v72 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v12);
  v64 = &v64 - v13;
  v14 = type metadata accessor for IntelligenceFlowPrescribedTool(0);
  v15 = *(v14 - 8);
  v17 = MEMORY[0x28223BE20](v14, v16);
  v19 = &v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v20);
  v22 = &v64 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F680, &unk_223731E20);
  v24 = *(v23 - 8);
  v26 = MEMORY[0x28223BE20](v23, v25);
  v28 = &v64 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26, v29);
  v31 = &v64 - v30;
  v32 = type metadata accessor for RequestInfo.RequestRoute(0);
  MEMORY[0x28223BE20](v32 - 8, v33);
  v35 = &v64 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2236F16E0(a1, v35, type metadata accessor for RequestInfo.RequestRoute);
  if ((*(v24 + 48))(v35, 1, v23) == 1)
  {
    sub_223644698(a1, type metadata accessor for RequestInfo.RequestRoute);
    v36 = *MEMORY[0x277D5D010];
    v37 = sub_22372A098();
    return (*(*(v37 - 8) + 104))(v74, v36, v37);
  }

  v39 = v74;
  sub_2236F1670(v35, v31);
  sub_223634890(v31, v28, &qword_27D08F680, &unk_223731E20);
  v40 = v31;
  if ((*(v15 + 48))(v28, 1, v14) == 1)
  {
    sub_223626478(v28, &qword_27D08F680, &unk_223731E20);
    sub_22372A088();
    sub_2236F17B0();
    sub_223727A38();
    sub_223727A18();

    sub_223644698(a1, type metadata accessor for RequestInfo.RequestRoute);
    v41 = v31;
LABEL_20:
    sub_223626478(v41, &qword_27D08F680, &unk_223731E20);
    v53 = MEMORY[0x277D5D000];
    goto LABEL_21;
  }

  v42 = v22;
  sub_2236F1748(v28, v22, type metadata accessor for IntelligenceFlowPrescribedTool);
  sub_2236F16E0(v22, v19, type metadata accessor for IntelligenceFlowPrescribedTool);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v43 = v73;
    v44 = v71;
    v45 = v67;
    (*(v73 + 32))(v71, v19, v67);
    v46 = v68;
    sub_223729F18();
    v47 = (*(v69 + 88))(v46, v70);
    if (v47 == *MEMORY[0x277D5D100])
    {
      sub_22372A088();
      sub_2236F17B0();
      sub_223727A28();
      sub_223644698(a1, type metadata accessor for RequestInfo.RequestRoute);
      (*(v43 + 8))(v44, v45);
    }

    else if (v47 == *MEMORY[0x277D5D110])
    {
      sub_22372A088();
      sub_2236F17B0();
      sub_223727A28();
      sub_223644698(a1, type metadata accessor for RequestInfo.RequestRoute);
      (*(v73 + 8))(v44, v45);
    }

    else
    {
      v54 = (v73 + 8);
      if (v47 == *MEMORY[0x277D5D0F8])
      {
        sub_22372A088();
        sub_2236F17B0();
        sub_223727A28();
        sub_223644698(a1, type metadata accessor for RequestInfo.RequestRoute);
        (*v54)(v44, v45);
      }

      else
      {
        v58 = *MEMORY[0x277D5D108];
        v59 = v47;
        sub_22372A088();
        sub_2236F17B0();
        if (v59 != v58)
        {
          sub_223727A28();
          sub_223644698(a1, type metadata accessor for RequestInfo.RequestRoute);
          (*v54)(v71, v45);
          sub_223644698(v22, type metadata accessor for IntelligenceFlowPrescribedTool);
          sub_223626478(v40, &qword_27D08F680, &unk_223731E20);
          v62 = *MEMORY[0x277D5D000];
          v63 = sub_22372A098();
          (*(*(v63 - 8) + 104))(v39, v62, v63);
          return (*(v69 + 8))(v68, v70);
        }

        sub_223727A28();
        sub_223644698(a1, type metadata accessor for RequestInfo.RequestRoute);
        (*v54)(v71, v45);
      }
    }

    goto LABEL_19;
  }

  v48 = v64;
  v49 = v65;
  v50 = v66;
  (*(v65 + 32))(v64, v19, v66);
  v51 = v72;
  (*(v49 + 16))(v72, v48, v50);
  v52 = (*(v49 + 88))(v51, v50);
  if (v52 != *MEMORY[0x277D5CC50])
  {
    if (v52 != *MEMORY[0x277D5CC48])
    {
      sub_223644698(a1, type metadata accessor for RequestInfo.RequestRoute);
      v55 = *(v49 + 8);
      v55(v48, v50);
      sub_223644698(v42, type metadata accessor for IntelligenceFlowPrescribedTool);
      sub_223626478(v40, &qword_27D08F680, &unk_223731E20);
      v56 = *MEMORY[0x277D5D020];
      v57 = sub_22372A098();
      (*(*(v57 - 8) + 104))(v39, v56, v57);
      return (v55)(v72, v50);
    }

    sub_22372A088();
    sub_2236F17B0();
    sub_223727A28();
    sub_223644698(a1, type metadata accessor for RequestInfo.RequestRoute);
    (*(v49 + 8))(v48, v50);
LABEL_19:
    sub_223644698(v42, type metadata accessor for IntelligenceFlowPrescribedTool);
    v41 = v40;
    goto LABEL_20;
  }

  sub_223644698(a1, type metadata accessor for RequestInfo.RequestRoute);
  (*(v49 + 8))(v48, v50);
  sub_223644698(v42, type metadata accessor for IntelligenceFlowPrescribedTool);
  sub_223626478(v40, &qword_27D08F680, &unk_223731E20);
  v53 = MEMORY[0x277D5D020];
LABEL_21:
  v60 = *v53;
  v61 = sub_22372A098();
  return (*(*(v61 - 8) + 104))(v39, v60, v61);
}

uint64_t sub_2236F0954()
{
  v1 = type metadata accessor for RequestInfo.UserQuery(0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = (&v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for RequestInfo.UserInput(0);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_userInput;
  swift_beginAccess();
  sub_2236F16E0(v0 + v10, v9, type metadata accessor for RequestInfo.UserInput);
  if ((*(v2 + 48))(v9, 1, v1) == 1)
  {
    LOBYTE(v11) = 0;
    return v11 & 1;
  }

  sub_2236F1748(v9, v5, type metadata accessor for RequestInfo.UserQuery);
  v12 = v5[3];
  v11 = v5[1];
  if (!v12)
  {

    sub_223644698(v5, type metadata accessor for RequestInfo.UserQuery);
    if (!v11)
    {
      return v11 & 1;
    }

LABEL_13:
    LOBYTE(v11) = 1;
    return v11 & 1;
  }

  if (!v11)
  {
    sub_223644698(v5, type metadata accessor for RequestInfo.UserQuery);
    goto LABEL_13;
  }

  if (v5[2] == *v5 && v12 == v11)
  {
    LOBYTE(v11) = 0;
  }

  else
  {
    LOBYTE(v11) = sub_22372B6E8() ^ 1;
  }

  sub_223644698(v5, type metadata accessor for RequestInfo.UserQuery);
  return v11 & 1;
}

void sub_2236F0B88(uint64_t a1)
{
  sub_223727408();
  if (v1 <= 0x3F)
  {
    sub_22372A548();
    if (v2 <= 0x3F)
    {
      type metadata accessor for RequestInfo.UserInput(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for RequestInfo.RequestRoute(319);
        if (v4 <= 0x3F)
        {
          sub_2236F0FDC(319, &qword_28132B518, MEMORY[0x277D5D028]);
          if (v5 <= 0x3F)
          {
            sub_2236F0FDC(319, &qword_28132B570, MEMORY[0x277D5CD88]);
            if (v6 <= 0x3F)
            {
              sub_2237287C8();
              if (v7 <= 0x3F)
              {
                swift_updateClassMetadata2();
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_2236F0E0C(uint64_t a1)
{
  sub_2236F0FDC(319, qword_2813292A8, type metadata accessor for IntelligenceFlowPrescribedTool);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

uint64_t sub_2236F0EA8(uint64_t a1)
{
  v1 = type metadata accessor for RequestInfo.UserQuery(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_2236F0F00(uint64_t a1)
{
  sub_2236B7B74();
  if (v1 <= 0x3F)
  {
    sub_2236F0FDC(319, &qword_28132B580, MEMORY[0x277D5CBD8]);
    if (v2 <= 0x3F)
    {
      sub_2236F0FDC(319, &qword_28132B588, MEMORY[0x277D5CBB8]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2236F0FDC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22372B3A8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2236F1070(uint64_t a1, unsigned int *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08E9B8, &qword_22372D190);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v11 - v5;
  swift_getKeyPath();
  v7 = *a2;
  v8 = sub_22372A0B8();
  v9 = *(v8 - 8);
  (*(v9 + 104))(v6, v7, v8);
  (*(v9 + 56))(v6, 0, 1, v8);
  return sub_223727A08();
}

uint64_t sub_2236F119C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IntelligenceFlowPrescribedTool(0);
  v35 = *(v4 - 8);
  v36 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v33 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F680, &unk_223731E20);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v34 = &v33 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F7D8, &qword_223732518);
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v33 - v13;
  v15 = type metadata accessor for RequestInfo.RequestRoute(0);
  MEMORY[0x28223BE20](v15 - 8, v16);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F7E0, &qword_223732520);
  v21 = MEMORY[0x28223BE20](v19 - 8, v20);
  v23 = &v33 - v22;
  v24 = *(v21 + 56);
  sub_2236F16E0(a1, &v33 - v22, type metadata accessor for RequestInfo.RequestRoute);
  sub_2236F16E0(a2, &v23[v24], type metadata accessor for RequestInfo.RequestRoute);
  v25 = *(v8 + 48);
  if (v25(v23, 1, v7) == 1)
  {
    if (v25(&v23[v24], 1, v7) == 1)
    {
LABEL_3:
      sub_223644698(v23, type metadata accessor for RequestInfo.RequestRoute);
      return 1;
    }

    goto LABEL_6;
  }

  sub_2236F16E0(v23, v18, type metadata accessor for RequestInfo.RequestRoute);
  if (v25(&v23[v24], 1, v7) != 1)
  {
    v27 = *(v11 + 48);
    sub_2236F1670(v18, v14);
    sub_2236F1670(&v23[v24], &v14[v27]);
    v28 = v36;
    v29 = *(v35 + 48);
    if (v29(v14, 1, v36) == 1)
    {
      if (v29(&v14[v27], 1, v28) == 1)
      {
        sub_223626478(v14, &qword_27D08F680, &unk_223731E20);
        goto LABEL_3;
      }
    }

    else
    {
      v30 = v34;
      sub_223634890(v14, v34, &qword_27D08F680, &unk_223731E20);
      if (v29(&v14[v27], 1, v28) != 1)
      {
        v31 = v33;
        sub_2236F1748(&v14[v27], v33, type metadata accessor for IntelligenceFlowPrescribedTool);
        v32 = sub_2236C2C48(v30, v31);
        sub_223644698(v31, type metadata accessor for IntelligenceFlowPrescribedTool);
        sub_223644698(v30, type metadata accessor for IntelligenceFlowPrescribedTool);
        sub_223626478(v14, &qword_27D08F680, &unk_223731E20);
        if (v32)
        {
          goto LABEL_3;
        }

        goto LABEL_13;
      }

      sub_223644698(v30, type metadata accessor for IntelligenceFlowPrescribedTool);
    }

    sub_223626478(v14, &qword_27D08F7D8, &qword_223732518);
LABEL_13:
    sub_223644698(v23, type metadata accessor for RequestInfo.RequestRoute);
    return 0;
  }

  sub_223626478(v18, &qword_27D08F680, &unk_223731E20);
LABEL_6:
  sub_223626478(v23, &qword_27D08F7E0, &qword_223732520);
  return 0;
}

uint64_t sub_2236F1670(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F680, &unk_223731E20);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2236F16E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2236F1748(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_2236F17B0()
{
  result = qword_27D08E9B0;
  if (!qword_27D08E9B0)
  {
    v3 = sub_22372A088();
    result = swift_getWitnessTable(MEMORY[0x277D5CFE8], v3, v0, v1);
    atomic_store(result, &qword_27D08E9B0);
  }

  return result;
}

uint64_t sub_2236F184C(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F840, &qword_2237326E8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2236F2154();
  sub_22372B7E8();
  v10[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F828, &qword_2237326E0);
  sub_2236F21A8(&qword_27D08F848, &qword_27D08F850, MEMORY[0x277D5D070], MEMORY[0x277D83948]);
  sub_22372B6A8();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_2236F19FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x8000000223737D30 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_22372B6E8();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_2236F1A90(uint64_t a1)
{
  v2 = sub_2236F2154();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2236F1ACC(uint64_t a1)
{
  v2 = sub_2236F2154();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_2236F1B08@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_2236F1F98(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_2236F1B50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  sub_22372A178();

  return sub_22372A168();
}

void *sub_2236F1BB8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2236F1BD8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2236F1BD8(void *result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F810, &qword_223732600);
  v10 = *(sub_223727408() - 8);
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
  v15 = *(sub_223727408() - 8);
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

uint64_t sub_2236F1E0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RequestInfo.UserQuery(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2236F1E70(uint64_t a1)
{
  v2 = type metadata accessor for RequestInfo.UserQuery(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2236F1EEC()
{
  result = qword_28132AA78;
  if (!qword_28132AA78)
  {
    result = swift_getWitnessTable(byte_223732674, &type metadata for RequestSummaryContainerImpl, v0, v1);
    atomic_store(result, &qword_28132AA78);
  }

  return result;
}

unint64_t sub_2236F1F44()
{
  result = qword_28132AA80;
  if (!qword_28132AA80)
  {
    result = swift_getWitnessTable(byte_22373264C, &type metadata for RequestSummaryContainerImpl, v0, v1);
    atomic_store(result, &qword_28132AA80);
  }

  return result;
}

void *sub_2236F1F98(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F818, &qword_2237326D8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = v10 - v6;
  v8 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2236F2154();
  sub_22372B7D8();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F828, &qword_2237326E0);
    sub_2236F21A8(&qword_27D08F830, &qword_27D08F838, MEMORY[0x277D5D078], MEMORY[0x277D83978]);
    sub_22372B648();
    (*(v4 + 8))(v7, v3);
    v8 = v10[1];
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return v8;
}

unint64_t sub_2236F2154()
{
  result = qword_27D08F820;
  if (!qword_27D08F820)
  {
    result = swift_getWitnessTable(aU_0, &type metadata for RequestSummaryContainerImpl.CodingKeys, v0, v1);
    atomic_store(result, &qword_27D08F820);
  }

  return result;
}

uint64_t sub_2236F21A8(unint64_t *a1, unint64_t *a2, const char *a3, const char *a4)
{
  result = *a1;
  if (!result)
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D08F828, &qword_2237326E0);
    v10 = sub_2236F2230(a2, a3);
    result = swift_getWitnessTable(a4, v9, &v10);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2236F2230(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = sub_22372A1B8();
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2236F2288()
{
  result = qword_27D08F858;
  if (!qword_27D08F858)
  {
    result = swift_getWitnessTable(aY_1, &type metadata for RequestSummaryContainerImpl.CodingKeys, v0, v1);
    atomic_store(result, &qword_27D08F858);
  }

  return result;
}

unint64_t sub_2236F22E0()
{
  result = qword_27D08F860;
  if (!qword_27D08F860)
  {
    result = swift_getWitnessTable(byte_2237326FC, &type metadata for RequestSummaryContainerImpl.CodingKeys, v0, v1);
    atomic_store(result, &qword_27D08F860);
  }

  return result;
}

unint64_t sub_2236F2338()
{
  result = qword_27D08F868;
  if (!qword_27D08F868)
  {
    result = swift_getWitnessTable(byte_223732724, &type metadata for RequestSummaryContainerImpl.CodingKeys, v0, v1);
    atomic_store(result, &qword_27D08F868);
  }

  return result;
}

unint64_t sub_2236F23BC(uint64_t a1)
{
  result = sub_2236F23E4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2236F23E4()
{
  result = qword_27D08F870;
  if (!qword_27D08F870)
  {
    v3 = sub_223727CE8();
    result = swift_getWitnessTable(MEMORY[0x277D1CDA0], v3, v0, v1);
    atomic_store(result, &qword_27D08F870);
  }

  return result;
}

uint64_t dispatch thunk of SessionClientAsync.startSession(id:config:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 24) + **(a6 + 24));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_2236242EC;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of SessionClientAsync.endSession(id:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 32) + **(a3 + 32));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_223624EA4;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of SessionClientAsync.send(message:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 40) + **(a3 + 40));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2236242EC;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of SessionClientAsync.fetchSessionClientId()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 48) + **(a3 + 48));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2236242EC;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of SessionClientAsync.subscribe()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 56) + **(a3 + 56));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2236242EC;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of SessionClientAsync.cleanupSession()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 64) + **(a2 + 64));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2236242EC;

  return v7(a1, a2);
}

uint64_t IFMessagesStream.makeAsyncIterator()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F288, qword_22372FDB0);
  MEMORY[0x28223BE20](v0, v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F2B8, &qword_22372FE00);
  MEMORY[0x28223BE20](v2 - 8, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F880, &qword_223732900);
  MEMORY[0x223DE8000]();
  sub_223660728(&qword_27D08F888, &qword_27D08F288, qword_22372FDB0, MEMORY[0x277D858E0]);
  sub_22372B1E8();
  sub_22372B5A8();
  return sub_22372B5C8();
}

uint64_t IFMessagesStream.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v1 = OBJC_IVAR____TtC24RequestDispatcherBridges16IFMessagesStream_backingStream;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F880, &qword_223732900);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t IFMessagesStream.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v1 = OBJC_IVAR____TtC24RequestDispatcherBridges16IFMessagesStream_backingStream;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F880, &qword_223732900);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_2236F2E3C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F288, qword_22372FDB0);
  MEMORY[0x28223BE20](v0, v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F2B8, &qword_22372FE00);
  MEMORY[0x28223BE20](v2 - 8, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F880, &qword_223732900);
  MEMORY[0x223DE8000]();
  sub_223660728(&qword_27D08F888, &qword_27D08F288, qword_22372FDB0, MEMORY[0x277D858E0]);
  sub_22372B1E8();
  sub_22372B5A8();
  sub_22372B5C8();
}

uint64_t type metadata accessor for IFMessagesStream(uint64_t a1)
{
  result = qword_27D08F8A0;
  if (!qword_27D08F8A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2236F3024(uint64_t a1)
{
  sub_2236F30D8(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_2236F30D8(uint64_t a1)
{
  if (!qword_27D08F8B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D08F288, qword_22372FDB0);
    sub_223660728(&qword_27D08F888, &qword_27D08F288, qword_22372FDB0, MEMORY[0x277D858E0]);
    v1 = sub_22372B5D8();
    if (!v2)
    {
      atomic_store(v1, &qword_27D08F8B0);
    }
  }
}

id static ResponseRenderingUtil.makeUtteranceView(printedDialog:spokenDialog:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_223727408();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = 0;
  if (a2 | a4)
  {
    v11 = [objc_allocWithZone(MEMORY[0x277D47A00]) init];
    sub_2237273F8();
    sub_2237273B8();
    (*(v7 + 8))(v10, v6);
    v12 = sub_22372AFD8();

    [v11 setAceId_];

    v13 = v11;
    if (a4)
    {
      v14 = sub_22372AFD8();
    }

    else
    {
      v14 = 0;
    }

    [v11 setSpeakableText_];

    if (a2)
    {
      a2 = sub_22372AFD8();
    }

    [v11 setText_];
  }

  return v11;
}

void *static ResponseRenderingUtil.makeSnippetView(responseMode:deviceIdiom:snippetPluginModel:)(uint64_t a1, unint64_t a2, uint64_t a3, void *a4)
{
  v68 = a4;
  v73 = a1;
  v65 = sub_223727408();
  v6 = *(v65 - 8);
  MEMORY[0x28223BE20](v65, v7);
  v64 = &v60[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F8B8, &qword_2237329C0);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v69 = &v60[-v11];
  v71 = sub_2237279F8();
  v12 = *(v71 - 8);
  MEMORY[0x28223BE20](v71, v13);
  v66 = &v60[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = sub_2237279D8();
  v16 = *(v15 - 8);
  v18 = MEMORY[0x28223BE20](v15, v17);
  v20 = &v60[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v18, v21);
  v23 = &v60[-v22];
  if (qword_281328E50 != -1)
  {
    swift_once();
  }

  v70 = v12;
  v24 = sub_22372AC98();
  v25 = __swift_project_value_buffer(v24, qword_28132B668);
  v26 = *(v16 + 16);
  v67 = a3;
  v26(v23, a3, v15);

  v72 = v25;
  v27 = sub_22372AC88();
  v28 = sub_22372B268();

  v29 = os_log_type_enabled(v27, v28);
  v74 = a2;
  if (v29)
  {
    v30 = swift_slowAlloc();
    v63 = v6;
    v31 = v30;
    v62 = swift_slowAlloc();
    v75 = v62;
    *v31 = 136315394;
    v61 = v28;
    v32 = v73;
    *(v31 + 4) = sub_223623274(v73, a2, &v75);
    *(v31 + 12) = 2080;
    v26(v20, v23, v15);
    v33 = sub_22372B038();
    v35 = v34;
    (*(v16 + 8))(v23, v15);
    v36 = sub_223623274(v33, v35, &v75);

    *(v31 + 14) = v36;
    _os_log_impl(&dword_223620000, v27, v61, "ResponseMode = %s, DeviceIdiom = %s", v31, 0x16u);
    v37 = v62;
    swift_arrayDestroy();
    MEMORY[0x223DE8A80](v37, -1, -1);
    v38 = v31;
    v6 = v63;
    MEMORY[0x223DE8A80](v38, -1, -1);
  }

  else
  {

    (*(v16 + 8))(v23, v15);
    v32 = v73;
  }

  if (sub_22372AFE8() == v32 && v39 == v74)
  {
  }

  else
  {
    v40 = sub_22372B6E8();

    if ((v40 & 1) == 0)
    {

      v41 = v69;
      sub_2237279E8();
      v43 = v70;
      v42 = v71;
      if ((*(v70 + 48))(v41, 1, v71) == 1)
      {
        sub_223626478(v41, &qword_27D08F8B8, &qword_2237329C0);
      }

      else
      {
        v44 = v66;
        (*(v43 + 32))(v66, v41, v42);
        __swift_project_boxed_opaque_existential_1(v68, v68[3]);
        v45 = sub_2237274C8();
        (*(v43 + 8))(v44, v42);
        if ((v45 & 1) == 0)
        {
          v50 = v68[3];
          v51 = v68[4];
          __swift_project_boxed_opaque_existential_1(v68, v50);
          v52 = sub_22372AFE8();
          v54 = v53;
          v55 = v64;
          sub_2237273F8();
          v56 = sub_2237273B8();
          v58 = v57;
          (*(v6 + 8))(v55, v65);
          v59 = sub_2236F49EC(v52, v54, 0, 0, v56, v58, v50, v51);

          return v59;
        }
      }
    }
  }

  v46 = sub_22372AC88();
  v47 = sub_22372B268();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    *v48 = 0;
    _os_log_impl(&dword_223620000, v46, v47, "showResultSnippet is false, skipping creating SnippetView", v48, 2u);
    MEMORY[0x223DE8A80](v48, -1, -1);
  }

  return 0;
}

uint64_t static ResponseRenderingUtil.makeSnippetViews(responseMode:modelData:bundleName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v55 = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F8C0, &qword_2237329C8);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v53 - v11;
  v13 = sub_223727CC8();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_223727148();
  swift_allocObject();
  v18 = sub_223727138();
  v19 = sub_223727AA8();
  sub_2236F50E8();
  v56 = v18;
  sub_223727128();
  v54 = v14;
  v20 = *(v19 - 8);
  (*(v20 + 56))(v12, 0, 1, v19);
  if ((*(v20 + 88))(v12, v19) != *MEMORY[0x277D1C518])
  {
    (*(v20 + 8))(v12, v19);
    v40 = sub_22372AFE8();
    v42 = sub_2236F3F98(a3, a4, a5, v55, v40, v41);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EB48, qword_2237329D0);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_22372FCE0;
    *(v37 + 32) = v42;
    goto LABEL_11;
  }

  (*(v20 + 96))(v12, v19);
  v21 = v17;
  v22 = v13;
  (*(v54 + 32))(v17, v12, v13);
  if (qword_281328E50 != -1)
  {
    swift_once();
  }

  v23 = sub_22372AC98();
  __swift_project_value_buffer(v23, qword_28132B668);
  v24 = sub_22372AC88();
  v25 = sub_22372B268();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_223620000, v24, v25, "Unpacking siriSDSView", v26, 2u);
    MEMORY[0x223DE8A80](v26, -1, -1);
  }

  v57 = MEMORY[0x277D84F90];
  v27 = sub_223727CB8();
  v29 = v28;
  v30 = sub_223727C88();
  v32 = v31;
  v33 = sub_22372AFE8();
  sub_2236F3F98(v27, v29, v30, v32, v33, v34);

  v35 = sub_223661270(v27, v29);
  MEMORY[0x223DE7B50](v35);
  v36 = v54;
  if (*((v57 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v57 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22372B148();
  }

  sub_22372B158();
  v37 = v57;
  v38 = sub_223727C98();
  if (v39 >> 60 == 15)
  {
    (*(v36 + 8))(v21, v22);
LABEL_11:

    return v37;
  }

  v44 = v38;
  v45 = v39;
  v46 = sub_223727CA8();
  if (!v47)
  {
    (*(v36 + 8))(v21, v22);
    sub_22366FAB4(v44, v45);
    goto LABEL_11;
  }

  v48 = v46;
  v49 = v47;
  v50 = sub_22372AFE8();
  sub_2236F3F98(v44, v45, v48, v49, v50, v51);

  MEMORY[0x223DE7B50](v52);
  if (*((v57 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v57 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22372B148();
  }

  sub_22372B158();

  sub_22366FAB4(v44, v45);
  (*(v36 + 8))(v21, v22);
  return v57;
}

id sub_2236F3F98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v27[1] = a6;
  v27[2] = a1;
  v27[3] = a2;
  v6 = sub_223727408();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_allocWithZone(MEMORY[0x277D47AF0]) init];
  sub_2237273F8();
  sub_2237273B8();
  v12 = *(v7 + 8);
  v12(v10, v6);
  v13 = sub_22372AFD8();

  [v11 setAceId_];

  v14 = v11;
  sub_2237273F8();
  sub_2237273B8();
  v12(v10, v6);
  v15 = sub_22372AFD8();

  [v14 setViewId_];

  v16 = sub_22372AFD8();
  [v14 setBundleName_];

  v17 = sub_22372AFD8();
  [v14 setItemType_];

  v18 = sub_223727348();
  [v14 setModelData_];

  if (qword_281328E50 != -1)
  {
    swift_once();
  }

  v19 = sub_22372AC98();
  __swift_project_value_buffer(v19, qword_28132B668);
  v20 = v14;
  v21 = sub_22372AC88();
  v22 = sub_22372B268();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v23 = 138412290;
    *(v23 + 4) = v20;
    *v24 = v20;
    v25 = v20;
    _os_log_impl(&dword_223620000, v21, v22, "Returning snippet = %@", v23, 0xCu);
    sub_223626478(v24, &unk_27D08F250, &unk_22372D1D0);
    MEMORY[0x223DE8A80](v24, -1, -1);
    MEMORY[0x223DE8A80](v23, -1, -1);
  }

  return v20;
}

unint64_t static ResponseRenderingUtil.makeAddViews(utteranceViews:snippetViews:listenAfterSpeaking:requestId:)(unint64_t a1, unint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v36[2] = a4;
  v8 = sub_223727408();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1 >> 62;
  if (a3)
  {
    if (v13)
    {
      v14 = sub_22372B558();
      if (v14)
      {
LABEL_4:
        v15 = __OFSUB__(v14, 1);
        result = v14 - 1;
        if (v15)
        {
          __break(1u);
        }

        else if ((a1 & 0xC000000000000001) == 0)
        {
          if ((result & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (result < *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v17 = a1 + 8 * result;
LABEL_20:
            v23 = *(v17 + 32);
LABEL_21:
            v24 = v23;
            sub_223630584(0, &qword_27D08EAE0, 0x277CCABB0);
            v25 = sub_22372B358();
            [v24 setListenAfterSpeaking_];

LABEL_22:
            goto LABEL_23;
          }

          __break(1u);
LABEL_31:
          swift_once();
LABEL_11:
          v18 = sub_22372AC98();
          v36[1] = __swift_project_value_buffer(v18, qword_28132B668);
          v19 = sub_22372AC88();
          v20 = sub_22372B268();
          if (os_log_type_enabled(v19, v20))
          {
            v21 = swift_slowAlloc();
            *v21 = 0;
            _os_log_impl(&dword_223620000, v19, v20, "UtteranceViews are empty but listenAfterSpeaking is true. Attempting to set listenAfterSpeaking on the last Snippet View.", v21, 2u);
            MEMORY[0x223DE8A80](v21, -1, -1);
          }

          if (a2 >> 62)
          {
            v22 = sub_22372B558();
            if (v22)
            {
              goto LABEL_15;
            }
          }

          else
          {
            v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v22)
            {
LABEL_15:
              v15 = __OFSUB__(v22, 1);
              result = v22 - 1;
              if (v15)
              {
                __break(1u);
              }

              else if ((a2 & 0xC000000000000001) == 0)
              {
                if ((result & 0x8000000000000000) != 0)
                {
                  __break(1u);
                }

                else if (result < *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  v17 = a2 + 8 * result;
                  goto LABEL_20;
                }

                __break(1u);
                return result;
              }

              v33 = a2;
LABEL_37:
              v23 = MEMORY[0x223DE7ED0](result, v33);
              goto LABEL_21;
            }
          }

          v25 = sub_22372AC88();
          v34 = sub_22372B278();
          if (os_log_type_enabled(v25, v34))
          {
            v35 = swift_slowAlloc();
            *v35 = 0;
            _os_log_impl(&dword_223620000, v25, v34, "Snippet views are empty, unable to set listenAfterSpeaking", v35, 2u);
            MEMORY[0x223DE8A80](v35, -1, -1);
          }

          goto LABEL_22;
        }

        v33 = a1;
        goto LABEL_37;
      }
    }

    else
    {
      v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v14)
      {
        goto LABEL_4;
      }
    }

    if (qword_281328E50 == -1)
    {
      goto LABEL_11;
    }

    goto LABEL_31;
  }

LABEL_23:
  v36[3] = MEMORY[0x277D84F90];
  if (v13)
  {
    sub_223630584(0, &qword_281328D00, 0x277D47140);

    v32 = sub_22372B548();

    a1 = v32;
  }

  else
  {

    sub_22372B6F8();
    sub_223630584(0, &qword_281328D00, 0x277D47140);
  }

  sub_223639A04(a1, sub_2236E9DDC);

  sub_223639A04(v26, sub_2236E9DDC);
  v27 = [objc_allocWithZone(MEMORY[0x277D479E8]) init];
  sub_2237273F8();
  sub_2237273B8();
  (*(v9 + 8))(v12, v8);
  v28 = sub_22372AFD8();

  [v27 setAceId_];

  v29 = v27;
  v30 = sub_22372AFD8();
  [v29 setRefId_];

  sub_223630584(0, &qword_281328D00, 0x277D47140);
  v31 = sub_22372B118();

  [v29 setViews_];

  [v29 setDialogPhase_];
  return v29;
}

uint64_t (*sub_2236F47D8(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x223DE7ED0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_2236F4858;
  }

  __break(1u);
  return result;
}

void (*sub_2236F4860(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x223DE7ED0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_2236F48E0;
  }

  __break(1u);
  return result;
}

uint64_t sub_2236F48E8(void x0_0, uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = a3 >> 1;
  v7 = (a3 >> 1) - a2;
  if (__OFSUB__(a3 >> 1, a2))
  {
    __break(1u);
  }

  else
  {
    v5 = a2;
    if (!(*v4 >> 62))
    {
      v8 = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v9 = __OFADD__(v8, v7);
      result = v8 + v7;
      if (!v9)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  v14 = sub_22372B558();
  v9 = __OFADD__(v14, v7);
  result = v14 + v7;
  if (v9)
  {
    goto LABEL_15;
  }

LABEL_4:
  result = sub_22363AFD0(result, 1);
  v11 = *v4;
  if (v6 == v5)
  {
    if (v7 <= 0)
    {
LABEL_11:
      *v4 = v11;
      return result;
    }

    __break(1u);
  }

  if ((*((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1) - *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) < v7)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  type metadata accessor for RequestInfo(0);
  result = swift_arrayInitWithCopy();
  if (v7 <= 0)
  {
    goto LABEL_11;
  }

  v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v9 = __OFADD__(v12, v7);
  v13 = v12 + v7;
  if (!v9)
  {
    *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) = v13;
    goto LABEL_11;
  }

LABEL_17:
  __break(1u);
  return result;
}

void *sub_2236F49EC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v67 = a5;
  v68 = a6;
  v12 = sub_223727408();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2237274D8();
  if (v18 >> 60 == 15)
  {
    goto LABEL_19;
  }

  v19 = v18 >> 62;
  if ((v18 >> 62) > 1)
  {
    if (v19 != 2 || *(v17 + 16) == *(v17 + 24))
    {
      goto LABEL_18;
    }
  }

  else if (v19)
  {
    if (v17 == v17 >> 32)
    {
LABEL_18:
      sub_22366FAB4(v17, v18);
LABEL_19:
      if (qword_281328E50 != -1)
      {
        swift_once();
      }

      v48 = sub_22372AC98();
      __swift_project_value_buffer(v48, qword_28132B668);
      v49 = sub_22372AC88();
      v50 = sub_22372B278();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        *v51 = 0;
        _os_log_impl(&dword_223620000, v49, v50, "SnippetPluginModel has no Data. Unable to build AceView.", v51, 2u);
        MEMORY[0x223DE8A80](v51, -1, -1);
      }

      return 0;
    }
  }

  else if ((v18 & 0xFF000000000000) == 0)
  {
    goto LABEL_18;
  }

  v63 = a4;
  v64 = a1;
  v62 = a3;
  v65 = v17;
  v66 = v18;
  if (qword_281328E50 != -1)
  {
    swift_once();
  }

  v20 = sub_22372AC98();
  v21 = __swift_project_value_buffer(v20, qword_28132B668);
  v22 = sub_22372AC88();
  v23 = sub_22372B268();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = v21;
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_223620000, v22, v23, "Building snippet for Response", v25, 2u);
    v26 = v25;
    v21 = v24;
    MEMORY[0x223DE8A80](v26, -1, -1);
  }

  v27 = sub_22372AC88();
  v28 = sub_22372B268();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v61[1] = v21;
    v30 = v29;
    v31 = swift_slowAlloc();
    v69 = v31;
    *v30 = 136315138;
    *(v30 + 4) = sub_223623274(v64, a2, &v69);
    _os_log_impl(&dword_223620000, v27, v28, "VisualLocation is set to %s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v31);
    MEMORY[0x223DE8A80](v31, -1, -1);
    MEMORY[0x223DE8A80](v30, -1, -1);
  }

  v32 = [objc_allocWithZone(MEMORY[0x277D47AF0]) init];
  sub_2237273F8();
  sub_2237273B8();
  (*(v13 + 8))(v16, v12);
  v33 = sub_22372AFD8();

  [v32 setAceId_];

  v34 = v32;
  v35 = sub_22372AFD8();
  [v34 setViewId_];

  sub_2237274B8();
  v36 = sub_22372AFD8();

  [v34 setBundleName_];

  v37 = sub_22372AFD8();
  [v34 setItemType_];

  v38 = sub_223727348();
  [v34 setModelData_];

  v39 = v63;
  if (v63)
  {
    v40 = v62;
    v41 = sub_22372AFD8();
    [v34 setResponseViewId_];

    v42 = sub_22372AC88();
    v43 = sub_22372B268();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v46 = v39;
      v47 = v45;
      v69 = v45;
      *v44 = 136315138;
      *(v44 + 4) = sub_223623274(v40, v46, &v69);
      _os_log_impl(&dword_223620000, v42, v43, "ResponseViewId is set to %s", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v47);
      MEMORY[0x223DE8A80](v47, -1, -1);
LABEL_26:
      MEMORY[0x223DE8A80](v44, -1, -1);
    }
  }

  else
  {
    v42 = sub_22372AC88();
    v53 = sub_22372B268();
    if (os_log_type_enabled(v42, v53))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_223620000, v42, v53, "ResponseViewId is nil, not set by domain", v44, 2u);
      goto LABEL_26;
    }
  }

  v54 = v34;
  v55 = sub_22372AC88();
  v56 = sub_22372B268();
  v57 = v54;

  if (os_log_type_enabled(v55, v56))
  {
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    *v58 = 138412290;
    *(v58 + 4) = v57;
    *v59 = v57;
    v60 = v57;
    _os_log_impl(&dword_223620000, v55, v56, "Returning snippet = %@", v58, 0xCu);
    sub_223626478(v59, &unk_27D08F250, &unk_22372D1D0);
    MEMORY[0x223DE8A80](v59, -1, -1);
    MEMORY[0x223DE8A80](v58, -1, -1);
  }

  sub_22366FAB4(v65, v66);

  return v57;
}

unint64_t sub_2236F50E8()
{
  result = qword_27D08F8C8;
  if (!qword_27D08F8C8)
  {
    v3 = sub_223727AA8();
    result = swift_getWitnessTable(MEMORY[0x277D1C548], v3, v0, v1);
    atomic_store(result, &qword_27D08F8C8);
  }

  return result;
}

void *sub_2236F5150(uint64_t a1)
{
  v2 = sub_22372B3F8();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return sub_22370B490(&v4, v2, *(a1 + 36), 0, a1);
  }
}

uint64_t sub_2236F51DC()
{
  sub_22372B7A8();
  sub_22372B078();

  return sub_22372B7C8();
}

uint64_t sub_2236F52E8(uint64_t a1)
{
  sub_22372B078();
}

uint64_t sub_2236F53E0(uint64_t a1)
{
  sub_22372B7A8();
  sub_22372B078();

  return sub_22372B7C8();
}

unint64_t sub_2236F54E8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_22370BC34(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_2236F5518(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB0000000064657ALL;
  v4 = 0x696C616974696E69;
  v5 = 0x8000000223734360;
  v6 = 0xD00000000000001FLL;
  v7 = 0xEC00000064657A69;
  v8 = 0x6C616E6946707274;
  if (v2 != 3)
  {
    v8 = 0xD000000000000010;
    v7 = 0x8000000223734390;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x6E69766965636572;
    v3 = 0xED00007350525467;
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

uint64_t sub_2236F55E0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_223729F08();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F6F0, &qword_223732CD0);
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2236F56D8, v1, 0);
}

uint64_t sub_2236F56D8()
{
  v32 = v0;
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = sub_22372AC98();
  __swift_project_value_buffer(v2, qword_28132B680);
  v3 = v1;

  v4 = sub_22372AC88();
  v5 = sub_22372B268();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = *(v0 + 16);
    v6 = *(v0 + 24);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v8 = 138412546;
    *(v8 + 4) = v7;
    *v9 = v7;
    *(v8 + 12) = 2080;
    v11 = *(v6 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_state);
    v31 = v10;
    v12 = 0xEB0000000064657ALL;
    v13 = 0x696C616974696E69;
    v14 = 0x8000000223734360;
    v15 = 0xD00000000000001FLL;
    v16 = 0xEC00000064657A69;
    v17 = 0x6C616E6946707274;
    if (v11 != 3)
    {
      v17 = 0xD000000000000010;
      v16 = 0x8000000223734390;
    }

    if (v11 != 2)
    {
      v15 = v17;
      v14 = v16;
    }

    if (v11)
    {
      v13 = 0x6E69766965636572;
      v12 = 0xED00007350525467;
    }

    if (v11 <= 1)
    {
      v18 = v13;
    }

    else
    {
      v18 = v15;
    }

    if (v11 <= 1)
    {
      v19 = v12;
    }

    else
    {
      v19 = v14;
    }

    v20 = v10;
    v21 = *(v0 + 16);
    v22 = sub_223623274(v18, v19, &v31);

    *(v8 + 14) = v22;
    _os_log_impl(&dword_223620000, v4, v5, "Received %@ when state: %s", v8, 0x16u);
    sub_223626478(v9, &unk_27D08F250, &unk_22372D1D0);
    MEMORY[0x223DE8A80](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    MEMORY[0x223DE8A80](v20, -1, -1);
    MEMORY[0x223DE8A80](v8, -1, -1);
  }

  v23 = *(v0 + 48);
  v24 = *(v0 + 56);
  v25 = *(v0 + 32);
  v26 = *(v0 + 40);
  sub_223728058();
  v27 = sub_223729EE8();
  (*(*(v27 - 8) + 56))(v24, 0, 1, v27);
  v28 = sub_223728048();
  (*(v26 + 104))(v23, *MEMORY[0x277D5CF40], v25);
  sub_22363DF70(v24, v28, v23);

  (*(v26 + 8))(v23, v25);
  sub_223626478(v24, &unk_27D08F6F0, &qword_223732CD0);

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_2236F5A7C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_223729F08();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F6F0, &qword_223732CD0);
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2236F5B74, v1, 0);
}

uint64_t sub_2236F5B74()
{
  v32 = v0;
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = sub_22372AC98();
  __swift_project_value_buffer(v2, qword_28132B680);
  v3 = v1;

  v4 = sub_22372AC88();
  v5 = sub_22372B268();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = *(v0 + 16);
    v6 = *(v0 + 24);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v8 = 138412546;
    *(v8 + 4) = v7;
    *v9 = v7;
    *(v8 + 12) = 2080;
    v11 = *(v6 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_state);
    v31 = v10;
    v12 = 0xEB0000000064657ALL;
    v13 = 0x696C616974696E69;
    v14 = 0x8000000223734360;
    v15 = 0xD00000000000001FLL;
    v16 = 0xEC00000064657A69;
    v17 = 0x6C616E6946707274;
    if (v11 != 3)
    {
      v17 = 0xD000000000000010;
      v16 = 0x8000000223734390;
    }

    if (v11 != 2)
    {
      v15 = v17;
      v14 = v16;
    }

    if (v11)
    {
      v13 = 0x6E69766965636572;
      v12 = 0xED00007350525467;
    }

    if (v11 <= 1)
    {
      v18 = v13;
    }

    else
    {
      v18 = v15;
    }

    if (v11 <= 1)
    {
      v19 = v12;
    }

    else
    {
      v19 = v14;
    }

    v20 = v10;
    v21 = *(v0 + 16);
    v22 = sub_223623274(v18, v19, &v31);

    *(v8 + 14) = v22;
    _os_log_impl(&dword_223620000, v4, v5, "Received %@ when state: %s", v8, 0x16u);
    sub_223626478(v9, &unk_27D08F250, &unk_22372D1D0);
    MEMORY[0x223DE8A80](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    MEMORY[0x223DE8A80](v20, -1, -1);
    MEMORY[0x223DE8A80](v8, -1, -1);
  }

  v23 = *(v0 + 48);
  v24 = *(v0 + 56);
  v25 = *(v0 + 32);
  v26 = *(v0 + 40);
  sub_223729168();
  v27 = sub_223729EE8();
  (*(*(v27 - 8) + 56))(v24, 0, 1, v27);
  v28 = sub_223729148();
  (*(v26 + 104))(v23, *MEMORY[0x277D5CF40], v25);
  sub_22363DF70(v24, v28, v23);

  (*(v26 + 8))(v23, v25);
  sub_223626478(v24, &unk_27D08F6F0, &qword_223732CD0);

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_2236F5F18(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_223729F08();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F6F0, &qword_223732CD0);
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2236F6010, v1, 0);
}

uint64_t sub_2236F6010()
{
  v32 = v0;
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = sub_22372AC98();
  __swift_project_value_buffer(v2, qword_28132B680);
  v3 = v1;

  v4 = sub_22372AC88();
  v5 = sub_22372B268();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = *(v0 + 16);
    v6 = *(v0 + 24);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v8 = 138412546;
    *(v8 + 4) = v7;
    *v9 = v7;
    *(v8 + 12) = 2080;
    v11 = *(v6 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_state);
    v31 = v10;
    v12 = 0xEB0000000064657ALL;
    v13 = 0x696C616974696E69;
    v14 = 0x8000000223734360;
    v15 = 0xD00000000000001FLL;
    v16 = 0xEC00000064657A69;
    v17 = 0x6C616E6946707274;
    if (v11 != 3)
    {
      v17 = 0xD000000000000010;
      v16 = 0x8000000223734390;
    }

    if (v11 != 2)
    {
      v15 = v17;
      v14 = v16;
    }

    if (v11)
    {
      v13 = 0x6E69766965636572;
      v12 = 0xED00007350525467;
    }

    if (v11 <= 1)
    {
      v18 = v13;
    }

    else
    {
      v18 = v15;
    }

    if (v11 <= 1)
    {
      v19 = v12;
    }

    else
    {
      v19 = v14;
    }

    v20 = v10;
    v21 = *(v0 + 16);
    v22 = sub_223623274(v18, v19, &v31);

    *(v8 + 14) = v22;
    _os_log_impl(&dword_223620000, v4, v5, "Received %@ when state: %s", v8, 0x16u);
    sub_223626478(v9, &unk_27D08F250, &unk_22372D1D0);
    MEMORY[0x223DE8A80](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    MEMORY[0x223DE8A80](v20, -1, -1);
    MEMORY[0x223DE8A80](v8, -1, -1);
  }

  v23 = *(v0 + 48);
  v24 = *(v0 + 56);
  v25 = *(v0 + 32);
  v26 = *(v0 + 40);
  sub_223728DE8();
  v27 = sub_223729EE8();
  (*(*(v27 - 8) + 56))(v24, 0, 1, v27);
  v28 = sub_223728DD8();
  (*(v26 + 104))(v23, *MEMORY[0x277D5CF28], v25);
  sub_22363DF70(v24, v28, v23);

  (*(v26 + 8))(v23, v25);
  sub_223626478(v24, &unk_27D08F6F0, &qword_223732CD0);

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_2236F63D4()
{
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = sub_22372AC98();
  __swift_project_value_buffer(v2, qword_28132B680);
  v3 = v1;
  v4 = sub_22372AC88();
  v5 = sub_22372B278();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 16);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&dword_223620000, v4, v5, "Unexpectedly received %@ at root level", v7, 0xCu);
    sub_223626478(v8, &unk_27D08F250, &unk_22372D1D0);
    MEMORY[0x223DE8A80](v8, -1, -1);
    MEMORY[0x223DE8A80](v7, -1, -1);
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_2236F6554(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F7C8, qword_223732310);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F7D0, &unk_223732EC0);
  v3 = *(*(v2 - 8) + 72);
  v4 = (*(*(v2 - 8) + 80) + 32) & ~*(*(v2 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_223732A30;
  v6 = v5 + v4;
  v7 = (v6 + *(v2 + 48));
  sub_22372A568();
  *v7 = 0xD000000000000017;
  v7[1] = 0x8000000223734650;
  v8 = (v6 + v3 + *(v2 + 48));
  sub_22372A5A8();
  *v8 = 0xD00000000000001FLL;
  v8[1] = 0x8000000223736D90;
  if (qword_28132B4D0 != -1)
  {
    swift_once();
  }

  v9 = sub_22372A608();
  v10 = __swift_project_value_buffer(v9, qword_28132BA28);
  (*(*(v9 - 8) + 16))(v6 + 2 * v3, v10, v9);
  v11 = *(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_state);
  v12 = 0xEB0000000064657ALL;
  v13 = 0x696C616974696E69;
  v14 = 0x8000000223734360;
  v15 = 0xEC00000064657A69;
  v16 = 0x6C616E6946707274;
  if (v11 != 3)
  {
    v16 = 0xD000000000000010;
    v15 = 0x8000000223734390;
  }

  if (v11 == 2)
  {
    v17 = 0xD00000000000001FLL;
  }

  else
  {
    v17 = v16;
  }

  if (v11 != 2)
  {
    v14 = v15;
  }

  if (*(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_state))
  {
    v13 = 0x6E69766965636572;
    v12 = 0xED00007350525467;
  }

  if (*(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_state) <= 1u)
  {
    v18 = v13;
  }

  else
  {
    v18 = v17;
  }

  if (*(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_state) <= 1u)
  {
    v19 = v12;
  }

  else
  {
    v19 = v14;
  }

  v20 = (v6 + 2 * v3 + *(v2 + 48));
  MEMORY[0x223DE7AD0](v18, v19);

  *v20 = 0;
  v20[1] = 0xE000000000000000;
  v21 = (v6 + 3 * v3 + *(v2 + 48));
  sub_22372A578();
  v22 = a1[17];
  *v21 = a1[16];
  v21[1] = v22;
  v23 = (v6 + 4 * v3 + *(v2 + 48));

  sub_22372A5F8();
  sub_223727408();
  sub_223623428(&qword_28132B600, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  *v23 = sub_22372B6B8();
  v23[1] = v24;
  v25 = (v6 + 5 * v3 + *(v2 + 48));
  sub_22372A5E8();
  v26 = a1[15];
  *v25 = a1[14];
  v25[1] = v26;

  return v5;
}

void sub_2236F68B4(uint64_t a1, void *a2)
{
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v3 = sub_22372AC98();
  __swift_project_value_buffer(v3, qword_28132B680);
  v4 = a2;
  oslog = sub_22372AC88();
  v5 = sub_22372B268();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    v8 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F990, &unk_22372FDA0);
    v9 = sub_22372B038();
    v11 = sub_223623274(v9, v10, &v13);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_223620000, oslog, v5, "Sent pending SpeechRecognized for request that was just activated, error: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x223DE8A80](v7, -1, -1);
    MEMORY[0x223DE8A80](v6, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_2236F6A58(uint64_t a1)
{
  v2[14] = a1;
  v2[15] = v1;
  v3 = sub_22372A1D8();
  v2[16] = v3;
  v2[17] = *(v3 - 8);
  v2[18] = swift_task_alloc();
  v4 = sub_223727408();
  v2[19] = v4;
  v2[20] = *(v4 - 8);
  v2[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08E9D0, &qword_22372D1E0);
  v2[22] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F8D0, &qword_223732CC8);
  v2[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2236F6BE4, v1, 0);
}

uint64_t sub_2236F6BE4()
{
  v72 = v0;
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v1 = 0xEB0000000064657ALL;
  v68 = 0x696C616974696E69;
  v2 = *(v0 + 112);
  v3 = sub_22372AC98();
  __swift_project_value_buffer(v3, qword_28132B680);
  v4 = v2;

  v5 = sub_22372AC88();
  v6 = sub_22372B268();

  v7 = &unk_28132B000;
  if (os_log_type_enabled(v5, v6))
  {
    v9 = *(v0 + 112);
    v8 = *(v0 + 120);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v10 = 138412546;
    *(v10 + 4) = v9;
    *v11 = v9;
    *(v10 + 12) = 2080;
    v13 = *(v8 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_state);
    v71[0] = v12;
    v14 = 0x8000000223734360;
    v15 = 0xD00000000000001FLL;
    v16 = 0x6C616E6946707274;
    v17 = 0xEC00000064657A69;
    if (v13 != 3)
    {
      v16 = 0xD000000000000010;
      v17 = 0x8000000223734390;
    }

    if (v13 != 2)
    {
      v15 = v16;
      v14 = v17;
    }

    v18 = 0x696C616974696E69;
    if (v13)
    {
      v18 = 0x6E69766965636572;
    }

    v1 = 0xEB0000000064657ALL;
    v19 = 0xED00007350525467;
    if (!v13)
    {
      v19 = 0xEB0000000064657ALL;
    }

    if (v13 <= 1)
    {
      v20 = v18;
    }

    else
    {
      v20 = v15;
    }

    if (v13 <= 1)
    {
      v21 = v19;
    }

    else
    {
      v21 = v14;
    }

    v22 = v12;
    v23 = *(v0 + 112);
    v24 = sub_223623274(v20, v21, v71);

    *(v10 + 14) = v24;
    _os_log_impl(&dword_223620000, v5, v6, "Received %@ when state: %s", v10, 0x16u);
    sub_223626478(v11, &unk_27D08F250, &unk_22372D1D0);
    MEMORY[0x223DE8A80](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
    MEMORY[0x223DE8A80](v22, -1, -1);
    MEMORY[0x223DE8A80](v10, -1, -1);

    v7 = &unk_28132B000;
  }

  else
  {
  }

  v25 = *(v0 + 120);
  v26 = v7[311];
  if (*(v25 + v26) > 1u || *(v25 + v26))
  {
    v27 = sub_22372B6E8();

    if ((v27 & 1) == 0)
    {
LABEL_25:
      swift_retain_n();
      v29 = sub_22372AC88();
      v30 = sub_22372B278();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v71[0] = v32;
        *v31 = 136315394;
        v33 = *(v25 + v26);
        if (v33 <= 1)
        {
          if (*(v25 + v26))
          {
            v68 = 0x6E69766965636572;
            v1 = 0xED00007350525467;
          }
        }

        else if (v33 == 2)
        {
          v1 = 0x8000000223734360;
          v68 = 0xD00000000000001FLL;
        }

        else if (v33 == 3)
        {
          v68 = 0x6C616E6946707274;
          v1 = 0xEC00000064657A69;
        }

        else
        {
          v68 = 0xD000000000000010;
          v1 = 0x8000000223734390;
        }

        v62 = *(v0 + 120);
        v63 = sub_223623274(v68, v1, v71);

        *(v31 + 4) = v63;
        *(v31 + 12) = 1024;
        v64 = v62 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_context;
        swift_beginAccess();
        LODWORD(v64) = *(v64 + 4);

        *(v31 + 14) = v64;

        _os_log_impl(&dword_223620000, v29, v30, "Received ASRReadyForNewTurnMessage while the controller's state is: %s, isActive: %{BOOL}d", v31, 0x12u);
        __swift_destroy_boxed_opaque_existential_1Tm(v32);
        MEMORY[0x223DE8A80](v32, -1, -1);
        MEMORY[0x223DE8A80](v31, -1, -1);
      }

      else
      {
      }

      sub_223657180();
      swift_allocError();
      *v65 = xmmword_223732A20;
      *(v65 + 16) = 4;
      swift_willThrow();

      v61 = *(v0 + 8);
      goto LABEL_45;
    }
  }

  else
  {
  }

  v28 = *(v0 + 120) + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_context;
  swift_beginAccess();
  if (*(v28 + 4))
  {
    goto LABEL_25;
  }

  v35 = *(v0 + 176);
  v34 = *(v0 + 184);
  v69 = *(v0 + 168);
  v37 = *(v0 + 128);
  v36 = *(v0 + 136);
  v38 = *(v0 + 120);
  *(v28 + 4) = 0;
  *v28 = 1;
  v39 = sub_223728958();
  v40 = type metadata accessor for RootRequestController.RequestContext(0);
  v41 = v28 + *(v40 + 64);
  *v41 = v39;
  *(v41 + 8) = 0;
  sub_223728938();
  (*(v36 + 56))(v34, 0, 1, v37);
  swift_beginAccess();
  sub_2236719F4(v34, v28 + *(v40 + 60), &unk_27D08F8D0, &qword_223732CC8);
  swift_endAccess();
  *(v28 + 56) = sub_223728948();
  *(v28 + 64) = v42;

  v43 = *MEMORY[0x277D5CF40];
  v44 = sub_223729F08();
  v45 = *(v44 - 8);
  (*(v45 + 104))(v35, v43, v44);
  (*(v45 + 56))(v35, 0, 1, v44);
  v46 = OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_requestType;
  swift_beginAccess();
  sub_2236719F4(v35, v38 + v46, &qword_27D08E9D0, &qword_22372D1E0);
  swift_endAccess();
  v47 = sub_223729D98();
  v49 = v48;
  sub_223729D58();
  sub_223708784(v47, v49, v69);
  v51 = *(v0 + 136);
  v50 = *(v0 + 144);
  v52 = *(v0 + 120);
  v70 = *(v0 + 128);
  (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));

  v53 = *(v52 + 112);
  v54 = *(v52 + 120);
  LOBYTE(v52) = *(v28 + 2);
  sub_223728938();
  v67 = v53;
  v55 = v53;
  v56 = v54;
  sub_2236C4390(v55, v54, v52, v50);
  (*(v51 + 8))(v50, v70);
  if (qword_281328E80 != -1)
  {
    swift_once();
  }

  v57 = sub_22372A648();
  __swift_project_value_buffer(v57, qword_28132B6C8);

  sub_22372A628();

  if (*(v28 + 2) == 1)
  {
    v58 = sub_22372AC88();
    v59 = sub_22372B268();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&dword_223620000, v58, v59, "Found an active Siri prompt, will activate the request", v60, 2u);
      MEMORY[0x223DE8A80](v60, -1, -1);
    }

    sub_223703AD0(v67, v56, 0, 0);
  }

  v61 = *(v0 + 8);
LABEL_45:

  return v61();
}

uint64_t sub_2236F75A8(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F7C8, qword_223732310);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F7D0, &unk_223732EC0);
  v3 = *(*(v2 - 8) + 72);
  v4 = (*(*(v2 - 8) + 80) + 32) & ~*(*(v2 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_223732A30;
  v6 = v5 + v4;
  v7 = (v6 + *(v2 + 48));
  sub_22372A568();
  *v7 = 0xD000000000000017;
  v7[1] = 0x8000000223734650;
  v8 = (v6 + v3 + *(v2 + 48));
  sub_22372A5A8();
  *v8 = 0xD00000000000001BLL;
  v8[1] = 0x8000000223736D50;
  if (qword_28132B4D0 != -1)
  {
    swift_once();
  }

  v9 = sub_22372A608();
  v10 = __swift_project_value_buffer(v9, qword_28132BA28);
  (*(*(v9 - 8) + 16))(v6 + 2 * v3, v10, v9);
  v11 = *(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_state);
  v12 = 0xEB0000000064657ALL;
  v13 = 0x696C616974696E69;
  v14 = 0x8000000223734360;
  v15 = 0xD00000000000001FLL;
  v16 = 0xEC00000064657A69;
  v17 = 0x6C616E6946707274;
  if (v11 != 3)
  {
    v17 = 0xD000000000000010;
    v16 = 0x8000000223734390;
  }

  if (v11 != 2)
  {
    v15 = v17;
    v14 = v16;
  }

  if (*(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_state))
  {
    v13 = 0x6E69766965636572;
    v12 = 0xED00007350525467;
  }

  if (*(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_state) <= 1u)
  {
    v18 = v13;
  }

  else
  {
    v18 = v15;
  }

  if (*(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_state) <= 1u)
  {
    v19 = v12;
  }

  else
  {
    v19 = v14;
  }

  v20 = (v6 + 2 * v3 + *(v2 + 48));
  MEMORY[0x223DE7AD0](v18, v19);

  *v20 = 0;
  v20[1] = 0xE000000000000000;
  v21 = (v6 + 3 * v3 + *(v2 + 48));
  sub_22372A578();
  v22 = a1[17];
  *v21 = a1[16];
  v21[1] = v22;
  v23 = (v6 + 4 * v3 + *(v2 + 48));

  sub_22372A5F8();
  sub_223727408();
  sub_223623428(&qword_28132B600, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  *v23 = sub_22372B6B8();
  v23[1] = v24;
  v25 = (v6 + 5 * v3 + *(v2 + 48));
  sub_22372A5E8();
  v26 = a1[15];
  *v25 = a1[14];
  v25[1] = v26;

  return v5;
}

uint64_t sub_2236F7910(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_2236F7930, v1, 0);
}

uint64_t sub_2236F7930()
{
  v26 = v0;
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = sub_22372AC98();
  __swift_project_value_buffer(v2, qword_28132B680);
  v3 = v1;

  v4 = sub_22372AC88();
  v5 = sub_22372B268();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = *(v0 + 16);
    v6 = *(v0 + 24);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v8 = 138412546;
    *(v8 + 4) = v7;
    *v9 = v7;
    *(v8 + 12) = 2080;
    v11 = *(v6 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_state);
    v25 = v10;
    v12 = 0xEB0000000064657ALL;
    v13 = 0x696C616974696E69;
    v14 = 0x8000000223734360;
    v15 = 0xD00000000000001FLL;
    v16 = 0xEC00000064657A69;
    v17 = 0x6C616E6946707274;
    if (v11 != 3)
    {
      v17 = 0xD000000000000010;
      v16 = 0x8000000223734390;
    }

    if (v11 != 2)
    {
      v15 = v17;
      v14 = v16;
    }

    if (v11)
    {
      v13 = 0x6E69766965636572;
      v12 = 0xED00007350525467;
    }

    if (v11 <= 1)
    {
      v18 = v13;
    }

    else
    {
      v18 = v15;
    }

    if (v11 <= 1)
    {
      v19 = v12;
    }

    else
    {
      v19 = v14;
    }

    v20 = v10;
    v21 = *(v0 + 16);
    v22 = sub_223623274(v18, v19, &v25);

    *(v8 + 14) = v22;
    _os_log_impl(&dword_223620000, v4, v5, "Received %@ when state: %s", v8, 0x16u);
    sub_223626478(v9, &unk_27D08F250, &unk_22372D1D0);
    MEMORY[0x223DE8A80](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    MEMORY[0x223DE8A80](v20, -1, -1);
    MEMORY[0x223DE8A80](v8, -1, -1);
  }

  sub_2236F8BDC(*(v0 + 16), &off_2836C7068);
  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_2236F7C08(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_2236F7C28, v1, 0);
}

uint64_t sub_2236F7C28()
{
  v26 = v0;
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = sub_22372AC98();
  __swift_project_value_buffer(v2, qword_28132B680);
  v3 = v1;

  v4 = sub_22372AC88();
  v5 = sub_22372B268();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = *(v0 + 16);
    v6 = *(v0 + 24);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v8 = 138412546;
    *(v8 + 4) = v7;
    *v9 = v7;
    *(v8 + 12) = 2080;
    v11 = *(v6 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_state);
    v25 = v10;
    v12 = 0xEB0000000064657ALL;
    v13 = 0x696C616974696E69;
    v14 = 0x8000000223734360;
    v15 = 0xD00000000000001FLL;
    v16 = 0xEC00000064657A69;
    v17 = 0x6C616E6946707274;
    if (v11 != 3)
    {
      v17 = 0xD000000000000010;
      v16 = 0x8000000223734390;
    }

    if (v11 != 2)
    {
      v15 = v17;
      v14 = v16;
    }

    if (v11)
    {
      v13 = 0x6E69766965636572;
      v12 = 0xED00007350525467;
    }

    if (v11 <= 1)
    {
      v18 = v13;
    }

    else
    {
      v18 = v15;
    }

    if (v11 <= 1)
    {
      v19 = v12;
    }

    else
    {
      v19 = v14;
    }

    v20 = v10;
    v21 = *(v0 + 16);
    v22 = sub_223623274(v18, v19, &v25);

    *(v8 + 14) = v22;
    _os_log_impl(&dword_223620000, v4, v5, "Received %@ when state: %s", v8, 0x16u);
    sub_223626478(v9, &unk_27D08F250, &unk_22372D1D0);
    MEMORY[0x223DE8A80](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    MEMORY[0x223DE8A80](v20, -1, -1);
    MEMORY[0x223DE8A80](v8, -1, -1);
  }

  sub_2236F8BDC(*(v0 + 16), &off_2836C7078);
  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_2236F7F00(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = type metadata accessor for RootRequestController.TRPCache(0);
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2236F7FD8, v1, 0);
}

uint64_t sub_2236F7FD8()
{
  v93 = v0;
  if (qword_281328E58 != -1)
  {
LABEL_72:
    swift_once();
  }

  v1 = *(v0 + 64);
  v2 = sub_22372AC98();
  __swift_project_value_buffer(v2, qword_28132B680);
  v3 = v1;

  v4 = sub_22372AC88();
  v5 = sub_22372B268();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 64);
    v7 = *(v0 + 72);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v8 = 138412546;
    *(v8 + 4) = v6;
    *v9 = v6;
    *(v8 + 12) = 2080;
    v11 = *(v7 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_state);
    v92[0] = v10;
    v12 = 0x8000000223734360;
    v13 = 0xD00000000000001FLL;
    v14 = 0x6C616E6946707274;
    v15 = 0xEC00000064657A69;
    if (v11 != 3)
    {
      v14 = 0xD000000000000010;
      v15 = 0x8000000223734390;
    }

    if (v11 != 2)
    {
      v13 = v14;
      v12 = v15;
    }

    v16 = 0x696C616974696E69;
    if (v11)
    {
      v16 = 0x6E69766965636572;
    }

    v17 = 0xEB0000000064657ALL;
    if (v11)
    {
      v17 = 0xED00007350525467;
    }

    if (v11 <= 1)
    {
      v18 = v16;
    }

    else
    {
      v18 = v13;
    }

    if (v11 <= 1)
    {
      v19 = v17;
    }

    else
    {
      v19 = v12;
    }

    v20 = v10;
    v21 = *(v0 + 64);
    v22 = sub_223623274(v18, v19, v92);

    *(v8 + 14) = v22;
    _os_log_impl(&dword_223620000, v4, v5, "Received %@ when state: %s", v8, 0x16u);
    sub_223626478(v9, &unk_27D08F250, &unk_22372D1D0);
    MEMORY[0x223DE8A80](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    MEMORY[0x223DE8A80](v20, -1, -1);
    MEMORY[0x223DE8A80](v8, -1, -1);
  }

  else
  {
  }

  v23 = *(v0 + 72);
  v24 = OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_state;
  if (*(v23 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_state) <= 1u && !*(v23 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_state))
  {
    goto LABEL_24;
  }

  v25 = sub_22372B6E8();

  if (v25)
  {
LABEL_26:
    v27 = *(v0 + 80);
    v90 = *(v0 + 88);
    v28 = *(v0 + 72);
    *(v23 + v24) = 1;
    v29 = sub_2237298C8();
    v30 = v29 + 64;
    v31 = -1 << *(v29 + 32);
    if (-v31 < 64)
    {
      v32 = ~(-1 << -v31);
    }

    else
    {
      v32 = -1;
    }

    v33 = v32 & *(v29 + 64);
    v34 = v28 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_context;
    v89 = v29;

    swift_beginAccess();
    v35 = 0;
    v36 = (63 - v31) >> 6;
    v87 = v36;
    for (i = v30; ; v30 = i)
    {
      if (!v33)
      {
        while (1)
        {
          v38 = v35 + 1;
          if (__OFADD__(v35, 1))
          {
            break;
          }

          if (v38 >= v36)
          {

            v76 = *(v0 + 8);
            goto LABEL_52;
          }

          v33 = *(v30 + 8 * v38);
          ++v35;
          if (v33)
          {
            v35 = v38;
            goto LABEL_37;
          }
        }

        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
        goto LABEL_72;
      }

LABEL_37:
      v39 = *(*(v89 + 56) + 8 * (__clz(__rbit64(v33)) | (v35 << 6)));

      v91 = v39;
      v40 = sub_223728CF8();
      v42 = *(v34 + 8);
      if (*(v42 + 16))
      {
        v43 = sub_2236261A0(v40, v41);
        v45 = v44;

        if (v45)
        {
          v47 = *(v0 + 104);
          v46 = *(v0 + 112);
          sub_22370BCAC(*(v42 + 56) + *(v90 + 72) * v43, v47);
          sub_22370BE08(v47, v46);
          goto LABEL_42;
        }
      }

      else
      {
      }

      v48 = *(v0 + 112);
      *v48 = 0u;
      *(v48 + 1) = 0u;
      v49 = v27[7];
      v50 = sub_2237287C8();
      (*(*(v50 - 8) + 56))(&v48[v49], 1, 1, v50);
      v48[v27[8]] = 0;
      v51 = &v48[v27[9]];
      *v51 = 0;
      *(v51 + 1) = 0;
LABEL_42:
      v52 = *(v0 + 112);
      v53 = *(v0 + 96);
      v54 = sub_223728CF8();
      v56 = v55;
      v57 = (v52 + v27[9]);

      *v57 = v54;
      v57[1] = v56;
      v58 = sub_223728CF8();
      v60 = v59;
      swift_beginAccess();
      sub_22370BCAC(v52, v53);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v92[0] = *(v34 + 8);
      v62 = v92[0];
      v63 = sub_2236261A0(v58, v60);
      v65 = v62[2];
      v66 = (v64 & 1) == 0;
      v67 = __OFADD__(v65, v66);
      v68 = v65 + v66;
      if (v67)
      {
        goto LABEL_70;
      }

      v69 = v64;
      if (v62[3] >= v68)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v75 = v63;
          sub_22365FD20();
          v63 = v75;
          v62 = v92[0];
        }
      }

      else
      {
        sub_22368D374(v68, isUniquelyReferenced_nonNull_native);
        v62 = v92[0];
        v63 = sub_2236261A0(v58, v60);
        if ((v69 & 1) != (v70 & 1))
        {

          return sub_22372B708();
        }
      }

      v71 = *(v0 + 96);
      if (v69)
      {
        sub_22370C058(*(v0 + 96), v62[7] + *(v90 + 72) * v63);
      }

      else
      {
        v62[(v63 >> 6) + 8] |= 1 << v63;
        v72 = (v62[6] + 16 * v63);
        *v72 = v58;
        v72[1] = v60;
        sub_22370BE08(v71, v62[7] + *(v90 + 72) * v63);
        v73 = v62[2];
        v67 = __OFADD__(v73, 1);
        v74 = v73 + 1;
        if (v67)
        {
          goto LABEL_71;
        }

        v62[2] = v74;
      }

      v33 &= v33 - 1;
      v37 = *(v0 + 112);
      *(v34 + 8) = v62;
      swift_endAccess();
      sub_2236453C4(v37, type metadata accessor for RootRequestController.TRPCache);

      v36 = v87;
    }
  }

  if (*(v23 + v24) <= 1u && *(v23 + v24))
  {
LABEL_24:

    goto LABEL_26;
  }

  v26 = sub_22372B6E8();

  if (v26)
  {
    goto LABEL_26;
  }

  v78 = sub_22372AC88();
  v79 = sub_22372B278();

  if (os_log_type_enabled(v78, v79))
  {
    v80 = 0xEB0000000064657ALL;
    v81 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v92[0] = v82;
    *v81 = 136315138;
    v83 = *(v23 + v24);
    if (v83 <= 1)
    {
      v84 = 0x696C616974696E69;
      if (*(v23 + v24))
      {
        v84 = 0x6E69766965636572;
        v80 = 0xED00007350525467;
      }
    }

    else if (v83 == 2)
    {
      v80 = 0x8000000223734360;
      v84 = 0xD00000000000001FLL;
    }

    else if (v83 == 3)
    {
      v84 = 0x6C616E6946707274;
      v80 = 0xEC00000064657A69;
    }

    else
    {
      v84 = 0xD000000000000010;
      v80 = 0x8000000223734390;
    }

    v85 = sub_223623274(v84, v80, v92);

    *(v81 + 4) = v85;
    _os_log_impl(&dword_223620000, v78, v79, "Received MultiUserRootTRPCandidateRequestMessage when state: %s", v81, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v82);
    MEMORY[0x223DE8A80](v82, -1, -1);
    MEMORY[0x223DE8A80](v81, -1, -1);
  }

  sub_223657180();
  swift_allocError();
  *v86 = xmmword_223732A20;
  *(v86 + 16) = 4;
  swift_willThrow();

  v76 = *(v0 + 8);
LABEL_52:

  return v76();
}

uint64_t sub_2236F8A5C()
{
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = sub_22372AC98();
  __swift_project_value_buffer(v2, qword_28132B680);
  v3 = v1;
  v4 = sub_22372AC88();
  v5 = sub_22372B268();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 16);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&dword_223620000, v4, v5, "Received %@", v7, 0xCu);
    sub_223626478(v8, &unk_27D08F250, &unk_22372D1D0);
    MEMORY[0x223DE8A80](v8, -1, -1);
    MEMORY[0x223DE8A80](v7, -1, -1);
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_2236F8BDC(void *a1, uint64_t a2)
{
  v85 = a2;
  v5 = 0xEB0000000064657ALL;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F928, &unk_223732ED0);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = v79 - v8;
  v10 = type metadata accessor for RootRequestController.TRPCache(0);
  v82 = *(v10 - 1);
  v12 = MEMORY[0x28223BE20](v10, v11);
  MEMORY[0x28223BE20](v12, v13);
  v84 = v79 - v14;
  v15 = OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_state;
  v16 = *(v2 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_state);
  v80 = v17;
  if (!v16)
  {
    goto LABEL_5;
  }

  v18 = 0x696C616974696E69;
  v19 = sub_22372B6E8();

  if (v19)
  {
    goto LABEL_7;
  }

  if (*(v87 + v15) > 1u || !*(v87 + v15))
  {
    v20 = sub_22372B6E8();

    if ((v20 & 1) == 0)
    {
      v66 = v15;
      if (qword_281328E58 != -1)
      {
        swift_once();
      }

      v67 = sub_22372AC98();
      __swift_project_value_buffer(v67, qword_28132B680);
      v68 = v87;

      v69 = sub_22372AC88();
      v70 = sub_22372B278();

      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        v72 = swift_slowAlloc();
        *&v89[0] = v72;
        *v71 = 136315138;
        v73 = *(v68 + v66);
        if (v73 <= 1)
        {
          if (*(v68 + v66))
          {
            v18 = 0x6E69766965636572;
            v5 = 0xED00007350525467;
          }
        }

        else if (v73 == 2)
        {
          v5 = 0x8000000223734360;
          v18 = 0xD00000000000001FLL;
        }

        else if (v73 == 3)
        {
          v18 = 0x6C616E6946707274;
          v5 = 0xEC00000064657A69;
        }

        else
        {
          v18 = 0xD000000000000010;
          v5 = 0x8000000223734390;
        }

        v77 = sub_223623274(v18, v5, v89);

        *(v71 + 4) = v77;
        _os_log_impl(&dword_223620000, v69, v70, "Received TRPCandidateRequestMessage when state: %s", v71, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v72);
        MEMORY[0x223DE8A80](v72, -1, -1);
        MEMORY[0x223DE8A80](v71, -1, -1);
      }

      sub_223657180();
      swift_allocError();
      *v78 = xmmword_223732A20;
      *(v78 + 16) = 4;
      return swift_willThrow();
    }
  }

  else
  {
LABEL_5:
  }

LABEL_7:
  v81 = v15;
  v79[1] = v3;
  ObjectType = swift_getObjectType();
  v21 = sub_223728CF8();
  v23 = v22;
  v24 = v87 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_context;
  swift_beginAccess();
  v86 = v24;
  v25 = *(v24 + 8);
  if (*(v25 + 16))
  {
    v26 = sub_2236261A0(v21, v23);
    v28 = v27;

    if (v28)
    {
      v29 = *(v25 + 56) + v82[9] * v26;
      v30 = v80;
      sub_22370BCAC(v29, v80);
      v31 = v84;
      sub_22370BE08(v30, v84);
      goto LABEL_12;
    }
  }

  else
  {
  }

  v31 = v84;
  *v84 = 0u;
  *(v31 + 1) = 0u;
  v32 = v10[7];
  v33 = sub_2237287C8();
  (*(*(v33 - 8) + 56))(&v31[v32], 1, 1, v33);
  v31[v10[8]] = 0;
  v34 = &v31[v10[9]];
  *v34 = 0;
  *(v34 + 1) = 0;
LABEL_12:
  v35 = *v31;
  v36 = a1;
  v37 = a1;

  v38 = v85;
  *v31 = v36;
  *(v31 + 1) = v38;
  v39 = v31;
  v40 = sub_223728CF8();
  v42 = v41;
  sub_22370BCAC(v39, v9);
  (v82[7])(v9, 0, 1, v10);
  v43 = v86;
  swift_beginAccess();
  sub_223714400(v9, v40, v42);
  v44 = *(v43 + 24);
  *(v43 + 24) = v36;
  *(v43 + 32) = v38;
  swift_endAccess();

  *(v87 + v81) = 1;
  v45 = *(v38 + 8);
  v82 = v37;
  v81 = v38 + 8;
  v80 = v45;
  v46 = v45(ObjectType, v38);
  v47 = *(v46 + 16);
  if (v47)
  {
    v90 = MEMORY[0x277D84F90];
    sub_22372B4F8();
    v48 = v46 + 32;
    do
    {
      sub_223634890(v48, v89, &qword_27D08F7B0, &qword_22372DD30);
      v88[0] = v89[0];
      v88[1] = v89[1];
      v88[2] = v89[2];
      __swift_destroy_boxed_opaque_existential_1Tm(v88 + 1);
      sub_22372B4D8();
      sub_22372B508();
      sub_22372B518();
      sub_22372B4E8();
      v48 += 48;
      --v47;
    }

    while (v47);

    v49 = v90;
  }

  else
  {

    v49 = MEMORY[0x277D84F90];
  }

  v50 = v49 & 0xFFFFFFFFFFFFFF8;
  if (v49 >> 62)
  {
LABEL_57:
    v51 = sub_22372B558();
  }

  else
  {
    v51 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v52 = 0;
  do
  {
    v53 = v52;
    if (v51 == v52)
    {
      break;
    }

    if ((v49 & 0xC000000000000001) != 0)
    {
      v54 = MEMORY[0x223DE7ED0](v52, v49);
    }

    else
    {
      if (v52 >= *(v50 + 16))
      {
        goto LABEL_55;
      }

      v54 = *(v49 + 8 * v52 + 32);
    }

    v55 = v54;
    if (__OFADD__(v53, 1))
    {
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

    v56 = [v54 speechEvent];

    v52 = v53 + 1;
  }

  while (v56 != 17);

  v57 = v85;
  *(v86 + 1) = v51 != v53;
  v58 = v80(ObjectType, v57);
  v59 = v58;
  v60 = *(v58 + 16);
  v50 = 1;
  if (v60)
  {
    v61 = 0;
    v49 = v58 + 32;
    while (v61 < *(v59 + 16))
    {
      sub_223634890(v49, v89, &qword_27D08F7B0, &qword_22372DD30);
      sub_223634890(v89, v88, &qword_27D08F7B0, &qword_22372DD30);
      v50 = *&v88[0];
      v62 = [*&v88[0] speechPackage];

      if (v62 && (v63 = [v62 recognition], v62, v63))
      {
        v64 = [v63 oneBestTranscript];

        __swift_destroy_boxed_opaque_existential_1Tm(v88 + 1);
        if (v64)
        {

          sub_223626478(v89, &qword_27D08F7B0, &qword_22372DD30);
          v65 = 0;
          goto LABEL_47;
        }

        sub_223626478(v89, &qword_27D08F7B0, &qword_22372DD30);
      }

      else
      {
        sub_223626478(v89, &qword_27D08F7B0, &qword_22372DD30);
        __swift_destroy_boxed_opaque_existential_1Tm(v88 + 1);
      }

      ++v61;
      v49 += 48;
      if (v60 == v61)
      {
        v65 = 1;
        goto LABEL_47;
      }
    }

    goto LABEL_56;
  }

  v65 = 1;
LABEL_47:

  v75 = v86;
  v74 = v87;
  *(v86 + 5) = v65;
  __swift_project_boxed_opaque_existential_1((v74 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_promptStateManager), *(v74 + OBJC_IVAR____TtC24RequestDispatcherBridges21RootRequestController_promptStateManager + 24));
  sub_2236BB9DC(v65, (*(v75 + 4) & 1) == 0);
  return sub_2236453C4(v84, type metadata accessor for RootRequestController.TRPCache);
}