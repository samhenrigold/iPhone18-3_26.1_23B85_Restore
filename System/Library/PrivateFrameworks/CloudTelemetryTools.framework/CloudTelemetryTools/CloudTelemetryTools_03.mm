uint64_t sub_22DF24768(char a1)
{
  *(*v1 + 320) = a1;

  return MEMORY[0x2822009F8](sub_22DF24894, 0, 0);
}

uint64_t sub_22DF24894()
{
  if (*(v0 + 320))
  {
    if (qword_27DA4BF40 != -1)
    {
      swift_once();
    }

    v1 = sub_22DF63734();
    *(v0 + 216) = __swift_project_value_buffer(v1, qword_27DA4E650);
    v2 = sub_22DF63714();
    v3 = sub_22DF63D24();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_22DEEA000, v2, v3, "fetching configuration from server", v4, 2u);
      MEMORY[0x2318DDBE0](v4, -1, -1);
    }

    v5 = *(v0 + 160);
    v6 = *(v0 + 168);
    v7 = *(v0 + 152);

    sub_22DF63414();
    v8 = (*(v6 + 48))(v7, 1, v5);
    if (v8 == 1)
    {
      __break(1u);
    }

    else
    {
      (*(*(v0 + 168) + 32))(*(v0 + 184), *(v0 + 152), *(v0 + 160));
      RequestOptions.globalRequestOptions.unsafeMutableAddressor();
      swift_beginAccess();
      v10 = objc_opt_self();

      v11 = [v10 mainBundle];
      v12 = [v11 bundleIdentifier];

      if (v12)
      {
        v14 = *(v0 + 184);
        v13 = *(v0 + 192);
        v15 = *(v0 + 160);
        v16 = *(v0 + 168);
        sub_22DF639B4();

        v17 = sub_22DF40530(1, 1);
        v20 = sub_22DF5A7E4(v17 & 0x101, v18, v19);
        *(v0 + 224) = v20;

        [v20 setTlsPinning_];
        *(v0 + 232) = [objc_allocWithZone(MEMORY[0x277CF36D8]) init];
        (*(v16 + 16))(v13, v14, v15);
        sub_22DF630E4();
        v21 = swift_task_alloc();
        *(v0 + 240) = v21;
        *v21 = v0;
        v21[1] = sub_22DF24D50;
        v8 = *(v0 + 144);
        v9 = v20;

        return MEMORY[0x2821463B8](v8, v9);
      }
    }

    __break(1u);
    return MEMORY[0x2821463B8](v8, v9);
  }

  if (qword_27DA4BF40 != -1)
  {
    swift_once();
  }

  v22 = sub_22DF63734();
  __swift_project_value_buffer(v22, qword_27DA4E650);
  v23 = sub_22DF63714();
  v24 = sub_22DF63D24();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_22DEEA000, v23, v24, "configuration fetch throttled", v25, 2u);
    MEMORY[0x2318DDBE0](v25, -1, -1);
  }

  sub_22DF26888();
  swift_allocError();
  *v26 = 0;
  *(v26 + 8) = 0;
  *(v26 + 16) = 3;
  swift_willThrow();

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_22DF24D50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *v4;
  v6[31] = a1;
  v6[32] = a2;
  v6[33] = a3;
  v6[34] = v3;

  v7 = v5[29];
  (*(v5[17] + 8))(v5[18], v5[16]);

  if (v3)
  {
    v8 = sub_22DF25A9C;
  }

  else
  {
    v8 = sub_22DF24F10;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_22DF24F10()
{
  v65 = v0;
  v64[1] = *MEMORY[0x277D85DE8];
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    v2 = v1;
    v3 = *(v0 + 264);
    v4 = [v2 statusCode];
    v5 = *(v0 + 264);
    if (v4 <= 199)
    {

LABEL_9:
      v21 = *(v0 + 256);
      v22 = *(v0 + 264);
      v23 = *(v0 + 248);
      v24 = *(v0 + 224);
      v62 = *(v0 + 184);
      v26 = *(v0 + 160);
      v25 = *(v0 + 168);
      v27 = [v2 statusCode];
      sub_22DF26888();
      v13 = swift_allocError();
      *v28 = v27;
      *(v28 + 8) = 0;
      *(v28 + 16) = 2;
      swift_willThrow();

      sub_22DEF7A34(v23, v21);
      (*(v25 + 8))(v62, v26);
      goto LABEL_12;
    }

    v6 = [v2 statusCode];

    if (v6 >= 300)
    {
      goto LABEL_9;
    }
  }

  v7 = objc_opt_self();
  v8 = sub_22DF634A4();
  *(v0 + 104) = 0;
  v9 = [v7 propertyListWithData:v8 options:0 format:0 error:v0 + 104];

  v10 = *(v0 + 104);
  if (!v9)
  {
    v29 = *(v0 + 256);
    v30 = *(v0 + 264);
    v31 = *(v0 + 248);
    v32 = *(v0 + 224);
    v63 = *(v0 + 184);
    v34 = *(v0 + 160);
    v33 = *(v0 + 168);
    v35 = v10;
    v13 = sub_22DF63334();

    swift_willThrow();
    sub_22DEF7A34(v31, v29);

    (*(v33 + 8))(v63, v34);
    goto LABEL_12;
  }

  v11 = v10;
  sub_22DF63E44();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47638, &qword_22DF660F0);
  if (!swift_dynamicCast())
  {
    v46 = *(v0 + 256);
    v47 = *(v0 + 264);
    v48 = *(v0 + 248);
    v49 = *(v0 + 224);
    v50 = *(v0 + 184);
    v51 = *(v0 + 160);
    v52 = *(v0 + 168);
    sub_22DF26888();
    v13 = swift_allocError();
    *v53 = 0xD000000000000028;
    *(v53 + 8) = 0x800000022DF6EB30;
    *(v53 + 16) = 0;
    swift_willThrow();
    sub_22DEF7A34(v48, v46);

    (*(v52 + 8))(v50, v51);
    goto LABEL_12;
  }

  v12 = *(v0 + 272);

  type metadata accessor for StorebagSigningConfiguration(0);
  sub_22DF633A4();
  sub_22DF634D4();
  if (v12)
  {
    v13 = v12;
    v14 = *(v0 + 264);
    v15 = *(v0 + 224);
    v17 = *(v0 + 176);
    v16 = *(v0 + 184);
    v18 = *(v0 + 160);
    v19 = *(v0 + 168);
    sub_22DEF7A34(*(v0 + 248), *(v0 + 256));

    v20 = *(v19 + 8);
    v20(v17, v18);
    v20(v16, v18);
LABEL_12:
    *(v0 + 304) = v13;
    v36 = v13;
    v37 = sub_22DF63714();
    v38 = sub_22DF63D24();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v64[0] = v40;
      *v39 = 136315138;
      swift_getErrorValue();
      v41 = sub_22DF64244();
      v43 = sub_22DEF0354(v41, v42, v64);

      *(v39 + 4) = v43;
      _os_log_impl(&dword_22DEEA000, v37, v38, "failed to fetch configuration from server with error (%s)", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v40);
      MEMORY[0x2318DDBE0](v40, -1, -1);
      MEMORY[0x2318DDBE0](v39, -1, -1);
    }

    v60 = (*(**(v0 + 200) + 168) + **(**(v0 + 200) + 168));
    v44 = swift_task_alloc();
    *(v0 + 312) = v44;
    *v44 = v0;
    v44[1] = sub_22DF25888;

    return v60();
  }

  v54 = *(v0 + 200);
  v56 = *(v0 + 168);
  v55 = *(v0 + 176);
  v57 = *(v0 + 160);
  v58 = *(v56 + 8);
  *(v0 + 280) = v58;
  *(v0 + 288) = (v56 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v58(v55, v57);
  v61 = (*(*v54 + 152) + **(*v54 + 152));
  v59 = swift_task_alloc();
  *(v0 + 296) = v59;
  *v59 = v0;
  v59[1] = sub_22DF255D0;

  return v61();
}

uint64_t sub_22DF255D0()
{

  return MEMORY[0x2822009F8](sub_22DF256F8, 0, 0);
}

uint64_t sub_22DF256F8(uint64_t a1)
{
  v2 = sub_22DF63714();
  v3 = sub_22DF63D24();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_22DEEA000, v2, v3, "successfully fetched configuration from server", v4, 2u);
    MEMORY[0x2318DDBE0](v4, -1, -1);
    v5 = v1[33];
    v6 = (v1 + 28);
  }

  else
  {
    v6 = (v1 + 33);
    v5 = v2;
    v2 = v1[28];
  }

  v7 = *v6;
  v8 = v1[35];
  v9 = v1[23];
  v10 = v1[20];

  v8(v9, v10);
  v11 = v1[31];
  v12 = v1[32];

  v13 = v1[1];

  return v13(v11, v12);
}

uint64_t sub_22DF25888()
{

  return MEMORY[0x2822009F8](sub_22DF259B0, 0, 0);
}

uint64_t sub_22DF259B0(uint64_t a1)
{
  swift_willThrow();

  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_22DF25A9C()
{
  v17 = v0;
  v16[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 184);
  v2 = *(v0 + 160);
  v3 = *(v0 + 168);

  (*(v3 + 8))(v1, v2);
  v4 = *(v0 + 272);
  *(v0 + 304) = v4;
  v5 = v4;
  v6 = sub_22DF63714();
  v7 = sub_22DF63D24();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16[0] = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = sub_22DF64244();
    v12 = sub_22DEF0354(v10, v11, v16);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_22DEEA000, v6, v7, "failed to fetch configuration from server with error (%s)", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x2318DDBE0](v9, -1, -1);
    MEMORY[0x2318DDBE0](v8, -1, -1);
  }

  v15 = (*(**(v0 + 200) + 168) + **(**(v0 + 200) + 168));
  v13 = swift_task_alloc();
  *(v0 + 312) = v13;
  *v13 = v0;
  v13[1] = sub_22DF25888;

  return v15();
}

uint64_t sub_22DF25D10()
{
  v1 = swift_task_alloc();
  *(v0 + 288) = v1;
  *v1 = v0;
  v1[1] = sub_22DF25DC8;

  return sub_22DF2438C();
}

uint64_t sub_22DF25DC8(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[37] = a1;
  v4[38] = a2;

  if (v2)
  {
    v5 = v4[1];

    return v5();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_22DF25F40, 0, 0);
  }
}

uint64_t sub_22DF25F40()
{
  v1 = objc_opt_self();
  v2 = sub_22DF634A4();
  v0[29] = 0;
  v3 = [v1 propertyListWithData:v2 options:0 format:0 error:v0 + 29];

  v4 = v0[29];
  if (!v3)
  {
    v33 = v4;
    v34 = sub_22DF63334();

    swift_willThrow();
    goto LABEL_36;
  }

  v5 = v4;
  sub_22DF63E44();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47638, &qword_22DF660F0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_36:
    v36 = v0[37];
    v35 = v0[38];
    v37 = 0x800000022DF6EB30;
    sub_22DF26888();
    swift_allocError();
    v39 = 0xD000000000000028;
LABEL_38:
    *v38 = v39;
    *(v38 + 8) = v37;
    *(v38 + 16) = 0;
    swift_willThrow();
    sub_22DEF7A34(v36, v35);
    v40 = v0[1];

    return v40();
  }

  v6 = v0[30];
  if (!*(v6 + 16) || (v7 = sub_22DEF08FC(0x67616265726F7453, 0xE800000000000000), (v8 & 1) == 0) || (sub_22DEF12A0(*(v6 + 56) + 32 * v7, (v0 + 6)), (swift_dynamicCast() & 1) == 0))
  {

    v36 = v0[37];
    v35 = v0[38];
    v37 = 0x800000022DF6EB60;
    sub_22DF26888();
    swift_allocError();
    v39 = 0xD00000000000004ALL;
    goto LABEL_38;
  }

  v9 = v0[31];
  if (!*(v9 + 16) || (v10 = sub_22DEF08FC(0x676E696E676953, 0xE700000000000000), (v11 & 1) == 0) || (sub_22DEF12A0(*(v9 + 56) + 32 * v10, (v0 + 10)), (swift_dynamicCast() & 1) == 0))
  {

    v36 = v0[37];
    v35 = v0[38];
    v37 = 0x800000022DF6EBB0;
    sub_22DF26888();
    swift_allocError();
    v39 = 0xD000000000000049;
    goto LABEL_38;
  }

  v12 = v0[32];
  if (!*(v12 + 16) || (v13 = sub_22DEF08FC(0x6D6E6F7269766E45, 0xEB00000000746E65), (v14 & 1) == 0) || (sub_22DEF12A0(*(v12 + 56) + 32 * v13, (v0 + 14)), (swift_dynamicCast() & 1) == 0))
  {

    v36 = v0[37];
    v35 = v0[38];
    v37 = 0x800000022DF6EC00;
    sub_22DF26888();
    swift_allocError();
    v39 = 0xD00000000000004DLL;
    goto LABEL_38;
  }

  v15 = v0[33];
  v48 = MEMORY[0x277D84F90];
  if (*(v15 + 16))
  {
    v16 = sub_22DEF08FC(0x64756F6C4369, 0xE600000000000000);
    if (v17)
    {
      sub_22DEF12A0(*(v15 + 56) + 32 * v16, (v0 + 18));
      if (swift_dynamicCast())
      {
        v46 = sub_22DF26E3C(v0[35]);

        sub_22DF26620(v46);
      }
    }
  }

  v18 = sub_22DF2E5EC();
  swift_beginAccess();
  if (*v18 == 1)
  {
    v43 = v15 + 64;
    v19 = -1;
    v20 = -1 << *(v15 + 32);
    if (-v20 < 64)
    {
      v19 = ~(-1 << -v20);
    }

    v21 = v15;
    v22 = v19 & *(v15 + 64);
    v23 = (63 - v20) >> 6;
    v47 = v21;

    v24 = 0;
    while (v22)
    {
LABEL_25:
      v26 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
      v27 = (v47[6] + ((v24 << 10) | (16 * v26)));
      v28 = *v27;
      if (*v27 != 0x64756F6C4369 || v27[1] != 0xE600000000000000)
      {
        v44 = v27[1];
        if ((sub_22DF64184() & 1) == 0)
        {
          if (v47[2])
          {

            v30 = sub_22DEF08FC(v28, v44);
            if (v31 & 1) != 0 && (sub_22DEF12A0(v47[7] + 32 * v30, (v0 + 22)), (swift_dynamicCast()))
            {
              v32 = v0[34];

              v45 = sub_22DF26E3C(v32);

              sub_22DF26620(v45);
            }

            else
            {
            }
          }
        }
      }
    }

    while (1)
    {
      v25 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
      }

      if (v25 >= v23)
      {
        break;
      }

      v22 = *(v43 + 8 * v25);
      ++v24;
      if (v22)
      {
        v24 = v25;
        goto LABEL_25;
      }
    }

    sub_22DEF7A34(v0[37], v0[38]);
  }

  else
  {
    sub_22DEF7A34(v0[37], v0[38]);
  }

  v42 = v0[1];

  return v42(v48);
}

uint64_t sub_22DF26620(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_22DF63E94();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_22DF63E94();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_22DF26A9C(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_22DF26B3C(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_22DF267B4(uint64_t a1, uint64_t a2)
{
  sub_22DF642A4();
  swift_getWitnessTable();
  sub_22DF636F4();
  return sub_22DF642D4();
}

uint64_t sub_22DF2681C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getWitnessTable();

  return sub_22DF636E4();
}

unint64_t sub_22DF26888()
{
  result = qword_27DA47990;
  if (!qword_27DA47990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA47990);
  }

  return result;
}

unint64_t sub_22DF268DC(uint64_t a1)
{
  sub_22DF642A4();
  type metadata accessor for CFString();
  sub_22DF274E4(&qword_27DA479C8, type metadata accessor for CFString, &unk_22DF680B8);
  sub_22DF636F4();
  v2 = sub_22DF642D4();

  return sub_22DF26990(a1, v2);
}

unint64_t sub_22DF26990(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString();
    sub_22DF274E4(&qword_27DA479C8, type metadata accessor for CFString, &unk_22DF680B8);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_22DF636E4();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_22DF26A9C(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_22DF63E94();
LABEL_9:
  result = sub_22DF63F54();
  *v2 = result;
  return result;
}

uint64_t sub_22DF26B3C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_22DF63E94();
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
      result = sub_22DF63E94();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_22DF27480();
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47998, ":.");
            v9 = sub_22DF26CBC(v13, i, a3);
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
        type metadata accessor for SecKey(0);
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

void (*sub_22DF26CBC(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x2318DCED0](a2, a3);
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
    return sub_22DF26D3C;
  }

  __break(1u);
  return result;
}

unint64_t sub_22DF26D44(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA479C0, &unk_22DF68050);
    v3 = sub_22DF64044();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_22DF268DC(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

uint64_t sub_22DF26E3C(uint64_t a1)
{
  v2 = 0;
  v3 = 0;
  v4 = MEMORY[0x277D84F90];
  v38 = MEMORY[0x277D84F90];
  v37 = *MEMORY[0x277CDC028];
  v36 = *MEMORY[0x277CDC060];
  v34 = *MEMORY[0x277CDC000];
  v35 = *MEMORY[0x277CDBFE0];
  do
  {
    v5 = v2;
    if (*(a1 + 16))
    {
      v6 = &unk_2841949F0 + 16 * v3;
      v7 = *(v6 + 4);
      v8 = *(v6 + 5);

      v9 = sub_22DEF08FC(v7, v8);
      if ((v10 & 1) == 0)
      {
        goto LABEL_2;
      }

      sub_22DEF12A0(*(a1 + 56) + 32 * v9, v39);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_2;
      }

      v11 = sub_22DF63474();
      v13 = v12;
      if (v12 >> 60 == 15)
      {
        if (qword_27DA4BF40 != -1)
        {
          swift_once();
        }

        v14 = sub_22DF63734();
        __swift_project_value_buffer(v14, qword_27DA4E650);
        v15 = sub_22DF63714();
        v16 = sub_22DF63D04();
        if (os_log_type_enabled(v15, v16))
        {
          v17 = swift_slowAlloc();
          *v17 = 0;
          v18 = v16;
          v19 = v15;
          v20 = "failed to parse configuration, failed to read public key data";
          goto LABEL_21;
        }

        goto LABEL_23;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA479A8, "<.");
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_22DF65910;
      *(inited + 32) = v37;
      *(inited + 40) = v36;
      *(inited + 48) = v35;
      *(inited + 56) = v34;
      v22 = v37;
      v23 = v36;
      v24 = v35;
      v25 = v34;
      sub_22DF26D44(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA479B0, &qword_22DF68048);
      swift_arrayDestroy();
      v26 = sub_22DF634A4();
      type metadata accessor for CFString();
      sub_22DF274E4(&qword_27DA479B8, type metadata accessor for CFString, &unk_22DF680E4);
      v27 = sub_22DF638C4();

      v28 = SecKeyCreateWithData(v26, v27, 0);

      if (!v28)
      {
        if (qword_27DA4BF40 != -1)
        {
          swift_once();
        }

        v31 = sub_22DF63734();
        __swift_project_value_buffer(v31, qword_27DA4E650);
        v15 = sub_22DF63714();
        v32 = sub_22DF63D04();
        if (os_log_type_enabled(v15, v32))
        {
          v17 = swift_slowAlloc();
          *v17 = 0;
          v18 = v32;
          v19 = v15;
          v20 = "failed to parse configuration, failed to decode public key";
LABEL_21:
          _os_log_impl(&dword_22DEEA000, v19, v18, v20, v17, 2u);
          MEMORY[0x2318DDBE0](v17, -1, -1);
        }

        sub_22DEF7A20(v11, v13);
LABEL_23:

LABEL_2:

        goto LABEL_3;
      }

      sub_22DEF7A20(v11, v13);

      v29 = v28;

      MEMORY[0x2318DCAF0](v30);
      if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_22DF63B94();
      }

      sub_22DF63BB4();

      v4 = v38;
    }

LABEL_3:
    v2 = 1;
    v3 = 1;
  }

  while ((v5 & 1) == 0);
  swift_arrayDestroy();
  return v4;
}

uint64_t sub_22DF2731C(uint64_t a1)
{
  result = sub_22DF63444();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_19CloudTelemetryTools28StorebagSigningConfigurationV5ErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_22DF273B8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_22DF27400(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t sub_22DF27444(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

unint64_t sub_22DF27480()
{
  result = qword_27DA479A0;
  if (!qword_27DA479A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DA47998, ":.");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA479A0);
  }

  return result;
}

uint64_t sub_22DF274E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_22DF2752C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_22DF27578(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47468, &qword_22DF697B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22DF275E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47468, &qword_22DF697B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22DF276E0()
{
  v0 = sub_22DF63734();
  __swift_allocate_value_buffer(v0, qword_27DA4C1D8);
  __swift_project_value_buffer(v0, qword_27DA4C1D8);
  return sub_22DF63724();
}

uint64_t sub_22DF27764(uint64_t a1)
{
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v2 + 112) = a1;
  return v2;
}

uint64_t sub_22DF277A4(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v2[7] = *v1;
  return MEMORY[0x2822009F8](sub_22DF277EC, v1, 0);
}

uint64_t sub_22DF277EC()
{
  v1 = v0[6];
  swift_beginAccess();
  if (*(*(v1 + 112) + 16))
  {
    v3 = v0[6];
    v4 = v0[7];
    v5 = v0[5];
    sub_22DF293CC(&qword_27DA479E0, v2, type metadata accessor for BackendGroup, &unk_22DF681F0);
    v6 = swift_task_alloc();
    v0[8] = v6;
    v6[2] = v3;
    v6[3] = v5;
    v6[4] = v4;
    v7 = swift_task_alloc();
    v0[9] = v7;
    *v7 = v0;
    v7[1] = sub_22DF279A4;

    return MEMORY[0x282200600]();
  }

  else
  {
    sub_22DF28164();
    swift_allocError();
    swift_willThrow();
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_22DF279A4()
{
  v1 = *(*v0 + 48);

  return MEMORY[0x2822009F8](sub_22DF0340C, v1, 0);
}

uint64_t sub_22DF27AF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[14] = a4;
  v5[15] = a5;
  v5[12] = a2;
  v5[13] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47460, &qword_22DF65310);
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22DF27BA4, a3, 0);
}

uint64_t sub_22DF27BA4()
{
  v1 = *(v0 + 104);
  swift_beginAccess();
  v3 = *(v1 + 112);
  v4 = *(v3 + 16);
  if (v4)
  {
    v31 = **(v0 + 96);
    v5 = sub_22DF63C34();
    v6 = *(v5 - 8);
    v29 = *(v6 + 56);
    v28 = (v6 + 48);
    v27 = (v6 + 8);

    v7 = 32;
    v30 = v5;
    v32 = v3;
    while (1)
    {
      v33 = v4;
      v11 = *(v0 + 128);
      v10 = *(v0 + 136);
      v12 = *(v0 + 112);
      v13 = *(v0 + 120);
      v14 = *(v0 + 104);
      v34 = *(v3 + v7);
      v29(v10, 1, 1, v5);
      v15 = swift_allocObject();
      *(v15 + 16) = 0;
      v16 = (v15 + 16);
      *(v15 + 24) = 0;
      *(v15 + 32) = v34;
      *(v15 + 48) = v12;
      *(v15 + 56) = v14;
      *(v15 + 64) = v13;
      sub_22DF28F90(v10, v11);
      LODWORD(v11) = (*v28)(v11, 1, v5);
      swift_unknownObjectRetain_n();

      v17 = *(v0 + 128);
      if (v11 == 1)
      {
        sub_22DEF1364(*(v0 + 128), &qword_27DA47460, &qword_22DF65310);
        if (*v16)
        {
          goto LABEL_9;
        }
      }

      else
      {
        sub_22DF63C24();
        (*v27)(v17, v5);
        if (*v16)
        {
LABEL_9:
          swift_getObjectType();
          swift_unknownObjectRetain();
          v18 = sub_22DF63BE4();
          v19 = v20;
          swift_unknownObjectRelease();
          goto LABEL_10;
        }
      }

      v18 = 0;
      v19 = 0;
LABEL_10:
      v21 = swift_allocObject();
      *(v21 + 16) = &unk_22DF68278;
      *(v21 + 24) = v15;

      if (v19 | v18)
      {
        v8 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v18;
        *(v0 + 40) = v19;
      }

      else
      {
        v8 = 0;
      }

      v9 = *(v0 + 136);
      *(v0 + 72) = 1;
      *(v0 + 80) = v8;
      *(v0 + 88) = v31;
      swift_task_create();

      swift_unknownObjectRelease();

      sub_22DEF1364(v9, &qword_27DA47460, &qword_22DF65310);
      v7 += 16;
      v3 = v32;
      v4 = v33 - 1;
      v5 = v30;
      if (v33 == 1)
      {

        break;
      }
    }
  }

  v22 = *(v0 + 104);
  v23 = sub_22DF293CC(&qword_27DA479E0, v2, type metadata accessor for BackendGroup, &unk_22DF681F0);
  v24 = swift_task_alloc();
  *(v0 + 144) = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA479F8, &qword_22DF68288);
  *v24 = v0;
  v24[1] = sub_22DF27F88;

  return MEMORY[0x2822002C8](v22, v23, v25);
}

uint64_t sub_22DF27F88()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_22DF280B4(uint64_t a1, uint64_t a2)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_22DEEFBD4;

  return sub_22DF27AF4(v8, a2, v5, v6, v7);
}

unint64_t sub_22DF28164()
{
  result = qword_27DA479E8;
  if (!qword_27DA479E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA479E8);
  }

  return result;
}

uint64_t sub_22DF281B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[16] = a5;
  v7[17] = a7;
  v7[15] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47A00, &qword_22DF68290);
  v7[18] = swift_task_alloc();
  v10 = sub_22DF630C4();
  v7[19] = v10;
  v7[20] = *(v10 - 8);
  v7[21] = swift_task_alloc();
  v11 = sub_22DF636C4();
  v7[22] = v11;
  v7[23] = *(v11 - 8);
  v7[24] = swift_task_alloc();
  v7[25] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47A08, &qword_22DF68298);
  v7[26] = swift_task_alloc();
  v12 = sub_22DF636D4();
  v7[27] = v12;
  v7[28] = *(v12 - 8);
  v7[29] = swift_task_alloc();
  ObjectType = swift_getObjectType();
  v16 = (*(a5 + 8) + **(a5 + 8));
  v14 = swift_task_alloc();
  v7[30] = v14;
  *v14 = v7;
  v14[1] = sub_22DF28488;

  return v16(a6, ObjectType, a5);
}

uint64_t sub_22DF28488()
{
  v2 = *v1;
  *(v2 + 248) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22DF287A0, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_22DF28614()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 120);
  swift_beginAccess();
  swift_unknownObjectRetain();
  v3 = sub_22DF290CC((v1 + 112), v2);
  v4 = swift_unknownObjectRelease();
  v6 = *(*(v1 + 112) + 16);
  if (v6 < v3)
  {
    __break(1u);
  }

  else
  {
    sub_22DF2930C(v3, v6);
    swift_endAccess();
    v4 = sub_22DF286F0;
    v6 = 0;
    v5 = 0;
  }

  return MEMORY[0x2822009F8](v4, v6, v5);
}

uint64_t sub_22DF286F0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22DF287A0()
{
  v44 = v0;
  v1 = *(v0 + 248);
  *(v0 + 80) = v1;
  v2 = *(v0 + 160);
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47CC0, &qword_22DF661F0);
  v4 = swift_dynamicCast();
  v5 = *(v2 + 56);
  if (v4)
  {
    v7 = *(v0 + 160);
    v6 = *(v0 + 168);
    v9 = *(v0 + 144);
    v8 = *(v0 + 152);
    v5(v9, 0, 1, v8);
    (*(v7 + 32))(v6, v9, v8);
    LOBYTE(v9) = sub_22DF63074();
    (*(v7 + 8))(v6, v8);
    if (v9)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v10 = *(v0 + 144);
    v5(v10, 1, 1, *(v0 + 152));
    sub_22DEF1364(v10, &qword_27DA47A00, &qword_22DF68290);
  }

  v11 = *(v0 + 248);
  v12 = *(v0 + 224);
  *(v0 + 88) = v11;
  v13 = v11;
  v14 = swift_dynamicCast();
  v15 = *(v12 + 56);
  if (v14)
  {
    v17 = *(v0 + 224);
    v16 = *(v0 + 232);
    v18 = *(v0 + 208);
    v19 = *(v0 + 216);
    v20 = *(v0 + 192);
    v41 = *(v0 + 200);
    v22 = *(v0 + 176);
    v21 = *(v0 + 184);
    v15(v18, 0, 1, v19);
    (*(v17 + 32))(v16, v18, v19);
    sub_22DF293CC(&qword_27DA47A10, 255, MEMORY[0x277CC9AE8], MEMORY[0x277CC9AE0]);
    sub_22DF63324();
    sub_22DF636B4();
    sub_22DF293CC(&qword_27DA47A18, 255, MEMORY[0x277CC9AC8], MEMORY[0x277CC9AD8]);
    sub_22DF63B54();
    sub_22DF63B54();
    v23 = *(v21 + 8);
    v23(v20, v22);
    v23(v41, v22);
    (*(v17 + 8))(v16, v19);
    if (*(v0 + 104) == *(v0 + 112))
    {
LABEL_7:

      v24 = *(v0 + 8);

      return v24();
    }
  }

  else
  {
    v26 = *(v0 + 208);
    v15(v26, 1, 1, *(v0 + 216));
    sub_22DEF1364(v26, &qword_27DA47A08, &qword_22DF68298);
  }

  if (qword_27DA4C1D0 != -1)
  {
    swift_once();
  }

  v27 = *(v0 + 248);
  v28 = sub_22DF63734();
  __swift_project_value_buffer(v28, qword_27DA4C1D8);
  v29 = v27;
  swift_unknownObjectRetain();
  v30 = sub_22DF63714();
  v31 = sub_22DF63D04();
  swift_unknownObjectRelease();

  if (os_log_type_enabled(v30, v31))
  {
    v42 = *(v0 + 120);
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v43 = v33;
    *v32 = 136446466;
    *(v0 + 64) = v42;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47988, &qword_22DF67EE8);
    v34 = sub_22DF63A14();
    v36 = sub_22DEF0354(v34, v35, &v43);

    *(v32 + 4) = v36;
    *(v32 + 12) = 2082;
    swift_getErrorValue();
    v37 = sub_22DF64244();
    v39 = sub_22DEF0354(v37, v38, &v43);

    *(v32 + 14) = v39;
    _os_log_impl(&dword_22DEEA000, v30, v31, "disabling backend '%{public}s' which returned error: %{public}s", v32, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2318DDBE0](v33, -1, -1);
    MEMORY[0x2318DDBE0](v32, -1, -1);
  }

  v40 = *(v0 + 136);

  return MEMORY[0x2822009F8](sub_22DF28614, v40, 0);
}

uint64_t sub_22DF28D24()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

unint64_t sub_22DF28D60()
{
  result = qword_27DA479F0;
  if (!qword_27DA479F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA479F0);
  }

  return result;
}

uint64_t sub_22DF28DB4(uint64_t a1)
{
  v6 = (*(*v1 + 136) + **(*v1 + 136));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_22DEEFBD4;

  return v6(a1);
}

uint64_t sub_22DF28EE4()
{
  v2 = v0[4];
  v3 = v0[5];
  v5 = v0[6];
  v4 = v0[7];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_22DEF1598;

  return sub_22DF281B8(v6, v7, v8, v2, v3, v5, v4);
}

uint64_t sub_22DF28F90(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47460, &qword_22DF65310);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22DF29000(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22DEEFBD4;

  return sub_22DEF0164(a1, v4);
}

void *sub_22DF290CC(void *result, uint64_t a2)
{
  v3 = *result;
  v4 = *(*result + 16);
  if (!v4)
  {
    return 0;
  }

  v6 = result;
  v7 = 0;
  for (i = 4; v3[i] != a2; i += 2)
  {
    if (v4 == ++v7)
    {
      return *(*result + 16);
    }
  }

  if (v2)
  {
    return v7;
  }

  v9 = v7 + 1;
  if (!__OFADD__(v7, 1))
  {
    if (v9 == v4)
    {
      return v7;
    }

    v10 = i * 8 + 16;
    while (v9 < v4)
    {
      if (*(v3 + v10) != a2)
      {
        if (v9 != v7)
        {
          if (v7 >= v4)
          {
            goto LABEL_23;
          }

          v12 = *(v3 + v10);
          v11 = *&v3[2 * v7 + 4];
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v3 = sub_22DF290B8(v3);
          }

          *&v3[2 * v7 + 4] = v12;
          result = swift_unknownObjectRelease();
          if (v9 >= v3[2])
          {
            goto LABEL_24;
          }

          *(v3 + v10) = v11;
          result = swift_unknownObjectRelease();
          *v6 = v3;
        }

        ++v7;
      }

      ++v9;
      v4 = v3[2];
      v10 += 16;
      if (v9 == v4)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_22DF2923C(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47988, &qword_22DF67EE8);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_22DF2930C(unint64_t result, uint64_t a2)
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

    v4 = sub_22DF22F24(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_22DF2923C(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t sub_22DF293CC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22DF29414()
{
  if (*v0)
  {
    return 0x727574616E676973;
  }

  else
  {
    return 6775138;
  }
}

uint64_t sub_22DF2944C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 6775138 && a2 == 0xE300000000000000;
  if (v5 || (sub_22DF64184() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x727574616E676973 && a2 == 0xE900000000000065)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_22DF64184();

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

uint64_t sub_22DF29530(uint64_t a1)
{
  v2 = sub_22DF29B14();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22DF2956C(uint64_t a1)
{
  v2 = sub_22DF29B14();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22DF295A8@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_22DF29930(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

uint64_t sub_22DF295D8(uint64_t a1, uint64_t a2)
{
  sub_22DF63314();
  swift_allocObject();
  sub_22DF63304();
  sub_22DF29750();
  sub_22DF632F4();
  if (!v2 && ((a2 = sub_22DF63474(), v5 = v4, v6 = sub_22DF63474(), v8 = v7, , , v5 >> 60 == 15) || v8 >> 60 == 15))
  {
    sub_22DF13B98();
    swift_allocError();
    *v9 = 0;
    swift_willThrow();

    sub_22DEF7A20(v6, v8);
    sub_22DEF7A20(a2, v5);
  }

  else
  {
  }

  return a2;
}

unint64_t sub_22DF29750()
{
  result = qword_27DA4C3F0[0];
  if (!qword_27DA4C3F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DA4C3F0);
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

uint64_t sub_22DF297E4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 32))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_22DF29838(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_22DF29898(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_22DF298E0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22DF29930(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47A20, &qword_22DF68420);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22DF29B14();
  sub_22DF64304();
  if (!v1)
  {
    v11 = 0;
    v7 = sub_22DF640C4();
    v10 = 1;
    sub_22DF640C4();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v7;
}

unint64_t sub_22DF29B14()
{
  result = qword_27DA4C480[0];
  if (!qword_27DA4C480[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DA4C480);
  }

  return result;
}

unint64_t sub_22DF29B7C()
{
  result = qword_27DA4C590[0];
  if (!qword_27DA4C590[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DA4C590);
  }

  return result;
}

unint64_t sub_22DF29BD4()
{
  result = qword_27DA4C6A0;
  if (!qword_27DA4C6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA4C6A0);
  }

  return result;
}

unint64_t sub_22DF29C2C()
{
  result = qword_27DA4C6A8[0];
  if (!qword_27DA4C6A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DA4C6A8);
  }

  return result;
}

uint64_t sub_22DF29C80()
{
  v0 = sub_22DF63734();
  __swift_allocate_value_buffer(v0, qword_27DA4E668);
  __swift_project_value_buffer(v0, qword_27DA4E668);
  return sub_22DF63724();
}

unint64_t sub_22DF29CFC(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
    sub_22DF63F24();

    v7 = 0xD00000000000001FLL;
    MEMORY[0x2318DCA20](a1, a2);
    return v7;
  }

  if (a3 == 1)
  {
    v7 = 0;
    sub_22DF63F24();
    MEMORY[0x2318DCA20](0xD000000000000032, 0x800000022DF6ED70);
    v4 = sub_22DF64154();
    MEMORY[0x2318DCA20](v4);

    return v7;
  }

  return 0xD000000000000010;
}

uint64_t sub_22DF29E30()
{
  if (*v0)
  {
    return 0x727574616E676973;
  }

  else
  {
    return 1852797802;
  }
}

uint64_t sub_22DF29E68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1852797802 && a2 == 0xE400000000000000;
  if (v5 || (sub_22DF64184() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x727574616E676973 && a2 == 0xE900000000000065)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_22DF64184();

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

uint64_t sub_22DF29F4C(uint64_t a1)
{
  v2 = sub_22DF2A158();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22DF29F88(uint64_t a1)
{
  v2 = sub_22DF2A158();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22DF29FC4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[0] = a4;
  v12[1] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47A28, &unk_22DF68540);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22DF2A158();
  sub_22DF64334();
  v14 = 0;
  sub_22DF64114();
  if (!v5)
  {
    v13 = 1;
    sub_22DF64114();
  }

  return (*(v8 + 8))(v10, v7);
}

unint64_t sub_22DF2A158()
{
  result = qword_27DA4C738[0];
  if (!qword_27DA4C738[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DA4C738);
  }

  return result;
}

uint64_t sub_22DF2A1AC@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_22DF2DBD4(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

double sub_22DF2A1FC()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_22DF2A244(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19CloudTelemetryTools14StorebagSource_throttlesByName;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_22DF2A2FC(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_22DF2A34C(a1);
  return v2;
}

uint64_t sub_22DF2A34C(uint64_t a1)
{
  v4 = type metadata accessor for StorebagSigningConfiguration(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22DF63444();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - v12;
  type metadata accessor for Throttle(0);
  sub_22DF1B95C(a1, v13);
  if (v2)
  {
    (*(v8 + 8))(a1, v7);
    type metadata accessor for StorebagSource(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    (*(v8 + 32))(v1 + OBJC_IVAR____TtC19CloudTelemetryTools14StorebagSource_throttleCacheURL, v13, v7);
    (*(v8 + 16))(v11, a1, v7);
    sub_22DF23384(v11, v6);
    sub_22DF2DE04(v6, v1 + OBJC_IVAR____TtC19CloudTelemetryTools14StorebagSource_storebagSigningConfiguration);
    v15 = sub_22DF2DE68(MEMORY[0x277D84F90]);
    (*(v8 + 8))(a1, v7);
    *(v1 + OBJC_IVAR____TtC19CloudTelemetryTools14StorebagSource_throttlesByName) = v15;
  }

  return v1;
}

uint64_t sub_22DF2A5D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[44] = a3;
  v4[45] = v3;
  v4[42] = a1;
  v4[43] = a2;
  v5 = sub_22DF63A04();
  v4[46] = v5;
  v4[47] = *(v5 - 8);
  v4[48] = swift_task_alloc();
  v6 = sub_22DF63124();
  v4[49] = v6;
  v4[50] = *(v6 - 8);
  v4[51] = swift_task_alloc();
  v7 = sub_22DF63344();
  v4[52] = v7;
  v4[53] = *(v7 - 8);
  v4[54] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47410, &qword_22DF65B80);
  v4[55] = swift_task_alloc();
  v4[56] = swift_task_alloc();
  v8 = sub_22DF63444();
  v4[57] = v8;
  v4[58] = *(v8 - 8);
  v4[59] = swift_task_alloc();
  v4[60] = swift_task_alloc();
  v9 = swift_task_alloc();
  v4[61] = v9;
  *v9 = v4;
  v9[1] = sub_22DF2A86C;

  return sub_22DF25D10();
}

uint64_t sub_22DF2A86C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 496) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_22DF2AA50, 0, 0);
  }
}

uint64_t sub_22DF2AA50()
{
  v1 = *(v0 + 496);
  if (v1 >> 62)
  {
    if (sub_22DF63E94())
    {
      goto LABEL_3;
    }

LABEL_12:

    v23 = 0x800000022DF6EFE0;
    v24 = 0xD000000000000043;
    goto LABEL_13;
  }

  if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_12;
  }

LABEL_3:
  v2 = *(**(v0 + 360) + 104);
  v3 = v2();
  if (*(v3 + 16) && (v4 = sub_22DEF08FC(*(v0 + 336), *(v0 + 344)), (v5 & 1) != 0) || (v6 = *(v0 + 480), v7 = *(v0 + 360), v9 = *(v0 + 336), v8 = *(v0 + 344), , type metadata accessor for Throttle(0), , sub_22DF63F24(), , MEMORY[0x2318DCA20](v9, v8), MEMORY[0x2318DCA20](0x7473696C702ELL, 0xE600000000000000), sub_22DF633B4(), , v10 = sub_22DF1B8C8(v6), v11 = (*(*v7 + 120))(v0 + 16), v13 = v12, isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(), v28 = *v13, *v13 = 0x8000000000000000, sub_22DF2D8E8(v10, v9, v8, isUniquelyReferenced_nonNull_native), , *v13 = v28, v15 = v11(v0 + 16, 0), v3 = (v2)(v15), *(v3 + 16)) && (v4 = sub_22DEF08FC(*(v0 + 336), *(v0 + 344)), (v16 & 1) != 0))
  {
    v17 = *(*(v3 + 56) + 8 * v4);

    *(v0 + 504) = v17;
    v18 = *(*v17 + 160);

    v27 = (v18 + *v18);
    v19 = swift_task_alloc();
    *(v0 + 512) = v19;
    *v19 = v0;
    v19[1] = sub_22DF2AF1C;
    v20 = v27;

    return v20();
  }

  v22 = *(v0 + 336);
  v21 = *(v0 + 344);

  sub_22DF63F24();

  MEMORY[0x2318DCA20](v22, v21);
  v24 = 0xD00000000000001ELL;
  v23 = 0x800000022DF6EDF0;
LABEL_13:
  sub_22DF2DF6C();
  swift_allocError();
  *v25 = v24;
  *(v25 + 8) = v23;
  *(v25 + 16) = 0;
  swift_willThrow();

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_22DF2AF1C(char a1)
{
  *(*v1 + 736) = a1;

  return MEMORY[0x2822009F8](sub_22DF2B048, 0, 0);
}

uint64_t sub_22DF2B048(__n128 a1)
{
  if (*(v1 + 736))
  {
    RequestOptions.globalRequestOptions.unsafeMutableAddressor();
    swift_beginAccess();
    v2 = objc_opt_self();

    v3 = [v2 mainBundle];
    v4 = [v3 bundleIdentifier];

    if (v4)
    {
      v7 = *(v1 + 456);
      v8 = *(v1 + 464);
      v9 = *(v1 + 440);
      v10 = *(v1 + 448);
      sub_22DF639B4();

      v11 = sub_22DF40530(1, 1);
      v32 = sub_22DF5A7E4(v11 & 0x101, v12, v13);
      *(v1 + 520) = v32;

      sub_22DF63414();

      sub_22DF2DFC0(v10, v9);
      v5 = (*(v8 + 48))(v9, 1, v7);
      if (v5 != 1)
      {
        v14 = *(v1 + 464);
        v33 = *(v1 + 456);
        v16 = *(v1 + 432);
        v15 = *(v1 + 440);
        v18 = *(v1 + 416);
        v17 = *(v1 + 424);
        v20 = *(v1 + 336);
        v19 = *(v1 + 344);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA476A8, &qword_22DF663F0);
        v21 = swift_allocObject();
        *(v21 + 16) = xmmword_22DF65910;
        has_internal_diagnostics = os_variant_has_internal_diagnostics();
        v23 = 0x800000022DF6EFC0;
        v24 = 0x67616265726F7473;
        if (has_internal_diagnostics)
        {
          v24 = 0xD000000000000011;
        }

        else
        {
          v23 = 0xE800000000000000;
        }

        *(v21 + 32) = v24;
        *(v21 + 40) = v23;
        *(v21 + 48) = v20;
        *(v21 + 56) = v19;
        (*(v17 + 104))(v16, *MEMORY[0x277CC91D0], v18);
        sub_22DF06E10();

        sub_22DF63424();

        (*(v17 + 8))(v16, v18);
        v25 = *(v14 + 8);
        *(v1 + 528) = v25;
        *(v1 + 536) = (v14 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v25(v15, v33);
        v5 = [objc_opt_self() sharedManager];
        *(v1 + 544) = v5;
        if (v5)
        {
          (*(*(v1 + 464) + 16))(*(v1 + 480), *(v1 + 472), *(v1 + 456));
          sub_22DF630E4();
          v26 = swift_task_alloc();
          *(v1 + 552) = v26;
          *v26 = v1;
          v26[1] = sub_22DF2B540;
          v5 = *(v1 + 408);
          v6 = v32;

          return MEMORY[0x2821463B8](v5, v6);
        }

LABEL_16:
        __break(1u);
        return MEMORY[0x2821463B8](v5, v6);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_16;
  }

  v28 = *(v1 + 336);
  v27 = *(v1 + 344);

  sub_22DF63F24();

  MEMORY[0x2318DCA20](v28, v27);
  sub_22DF2DF6C();
  swift_allocError();
  *v29 = 0xD00000000000001DLL;
  *(v29 + 8) = 0x800000022DF6EE10;
  *(v29 + 16) = 0;
  swift_willThrow();

  v30 = *(v1 + 8);

  return v30();
}

uint64_t sub_22DF2B540(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *v4;
  v6[70] = a1;
  v6[71] = a2;
  v6[72] = a3;
  v6[73] = v3;

  v7 = v5[68];
  (*(v6[50] + 8))(v6[51], v6[49]);
  if (v3)
  {

    v8 = sub_22DF2D11C;
  }

  else
  {

    v8 = sub_22DF2B6FC;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_22DF2B6FC()
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    v2 = v1;
    v3 = *(v0 + 576);
    v4 = [v2 statusCode];
    v5 = *(v0 + 576);
    if (v4 <= 199)
    {

LABEL_9:

      v31 = *(v0 + 576);
      v32 = *(v0 + 568);
      v33 = *(v0 + 560);
      v34 = *(v0 + 528);
      v35 = *(v0 + 520);
      v36 = *(v0 + 472);
      v37 = *(v0 + 456);
      v186 = *(v0 + 448);
      v38 = [v2 statusCode];
      sub_22DF2DF6C();
      v15 = swift_allocError();
      *v39 = v38;
      *(v39 + 8) = 0;
      *(v39 + 16) = 1;
      swift_willThrow();

      v14 = v0;
      sub_22DEF7A34(v33, v32);

      v34(v36, v37);
      v17 = v186;
      goto LABEL_13;
    }

    v6 = [v2 statusCode];

    if (v6 >= 300)
    {
      goto LABEL_9;
    }
  }

  v7 = *(v0 + 584);
  sub_22DF63154();
  swift_allocObject();
  sub_22DF63144();
  sub_22DF2E030();
  sub_22DF63134();
  if (v7)
  {
    v8 = *(v0 + 568);
    v9 = *(v0 + 560);
    v183 = *(v0 + 528);
    v10 = *(v0 + 520);
    v174 = *(v0 + 472);
    v178 = *(v0 + 576);
    v11 = *(v0 + 456);
    v181 = *(v0 + 448);
    v12 = *(v0 + 336);
    v13 = *(v0 + 344);

    sub_22DF63F24();
    v14 = v0;
    MEMORY[0x2318DCA20](0xD000000000000019, 0x800000022DF6EE80);
    MEMORY[0x2318DCA20](v12, v13);
    MEMORY[0x2318DCA20](0xD000000000000020, 0x800000022DF6EEA0);
    sub_22DF2DF6C();
    v15 = swift_allocError();
    *v16 = 0;
    *(v16 + 8) = 0xE000000000000000;
    *(v16 + 16) = 0;
    swift_willThrow();
    sub_22DEF7A34(v9, v8);

    v183(v174, v11);
    v17 = v181;
    goto LABEL_13;
  }

  v18 = sub_22DF63474();
  v20 = v19;
  v184 = v18;
  *(v0 + 592) = v18;
  *(v0 + 600) = v19;
  v21 = sub_22DF63474();
  v23 = v22;

  *(v0 + 608) = v21;
  *(v0 + 616) = v23;
  v189 = v20;
  if (v20 >> 60 == 15)
  {
    v24 = *(v0 + 568);
    v25 = *(v0 + 560);
    v185 = *(v0 + 528);
    v26 = v23;
    v27 = *(v0 + 520);
    v166 = *(v0 + 472);
    v169 = *(v0 + 576);
    v161 = *(v0 + 456);
    v175 = *(v0 + 448);
    v29 = *(v0 + 336);
    v28 = *(v0 + 344);

    sub_22DF63F24();
    v14 = v0;
    MEMORY[0x2318DCA20](0xD000000000000019, 0x800000022DF6EE80);
    MEMORY[0x2318DCA20](v29, v28);
    MEMORY[0x2318DCA20](0xD00000000000001CLL, 0x800000022DF6EED0);
    sub_22DF2DF6C();
    v15 = swift_allocError();
    *v30 = 0;
    *(v30 + 8) = 0xE000000000000000;
    *(v30 + 16) = 0;
    swift_willThrow();
    sub_22DEF7A34(v25, v24);

    sub_22DEF7A20(v21, v26);
    v185(v166, v161);
LABEL_12:
    v17 = v175;
    goto LABEL_13;
  }

  if (v23 >> 60 == 15)
  {
    v40 = *(v0 + 568);
    v41 = *(v0 + 560);
    v179 = *(v0 + 528);
    v42 = *(v0 + 520);
    v43 = *(v0 + 472);
    v44 = *(v0 + 456);
    v170 = *(v0 + 576);
    v175 = *(v0 + 448);
    v46 = *(v0 + 336);
    v45 = *(v0 + 344);

    sub_22DF63F24();
    v14 = v0;
    MEMORY[0x2318DCA20](0xD000000000000019, 0x800000022DF6EE80);
    MEMORY[0x2318DCA20](v46, v45);
    MEMORY[0x2318DCA20](0xD000000000000027, 0x800000022DF6EEF0);
    sub_22DF2DF6C();
    v15 = swift_allocError();
    *v47 = 0;
    *(v47 + 8) = 0xE000000000000000;
    *(v47 + 16) = 0;
    swift_willThrow();
    sub_22DEF7A34(v41, v40);

    sub_22DEF7A20(v184, v189);
    v179(v43, v44);
    goto LABEL_12;
  }

  v50 = *(v0 + 496);
  v180 = v23;
  v182 = v21;
  v176 = v50 & 0xFFFFFFFFFFFFFF8;
  if (v50 >> 62)
  {
    v51 = sub_22DF63E94();
    v50 = *(v0 + 496);
  }

  else
  {
    v51 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v52 = 0;
  v53 = v50 & 0xC000000000000001;
  v54 = v50 + 32;
  v55 = *MEMORY[0x277CDC3B8];
  do
  {
    if (v51 == v52)
    {
      v61 = *(v0 + 576);
      v62 = *(v0 + 568);
      v63 = *(v0 + 560);
      v171 = *(v0 + 528);
      v64 = *(v0 + 520);
      v65 = *(v0 + 456);
      v162 = *(v0 + 472);
      v167 = *(v0 + 448);
      v67 = *(v0 + 336);
      v66 = *(v0 + 344);

      sub_22DF63F24();
      v14 = v0;
      MEMORY[0x2318DCA20](0xD000000000000019, 0x800000022DF6EE80);
      MEMORY[0x2318DCA20](v67, v66);
      MEMORY[0x2318DCA20](0xD00000000000001CLL, 0x800000022DF6EFA0);
      sub_22DF2DF6C();
      v15 = swift_allocError();
      *v68 = 0;
      *(v68 + 8) = 0xE000000000000000;
      *(v68 + 16) = 0;
      swift_willThrow();
      sub_22DEF7A34(v63, v62);

      sub_22DEF7A20(v182, v180);
      sub_22DEF7A20(v184, v189);

      v171(v162, v65);
      v17 = v167;
      goto LABEL_13;
    }

    if (v53)
    {
      v56 = MEMORY[0x2318DCED0](v52, *(v0 + 496));
    }

    else
    {
      if (v52 >= *(v176 + 16))
      {
        goto LABEL_45;
      }

      v56 = *(v54 + 8 * v52);
    }

    v57 = v56;
    if (__OFADD__(v52, 1))
    {
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      v188 = (*(**(v0 + 504) + 152) + **(**(v0 + 504) + 152));
      v145 = swift_task_alloc();
      *(v0 + 712) = v145;
      *v145 = v0;
      v145[1] = sub_22DF2CAF8;
      v49 = v188;

      return v49();
    }

    v58 = sub_22DF634A4();
    v59 = sub_22DF634A4();
    v60 = SecKeyVerifySignature(v57, v55, v58, v59, 0);

    ++v52;
  }

  while (!v60);

  v69 = objc_opt_self();
  v70 = sub_22DF634A4();
  v71 = [v69 gzipDecode_];

  if (!v71)
  {
    v99 = *(v0 + 568);
    v100 = *(v0 + 560);
    v164 = *(v0 + 576);
    v168 = *(v0 + 528);
    v101 = *(v0 + 520);
    v156 = *(v0 + 456);
    v159 = *(v0 + 472);
    v173 = *(v0 + 448);
    v103 = *(v0 + 336);
    v102 = *(v0 + 344);
    sub_22DF63F24();
    v14 = v0;
    MEMORY[0x2318DCA20](0xD000000000000019, 0x800000022DF6EE80);
    MEMORY[0x2318DCA20](v103, v102);
    MEMORY[0x2318DCA20](0xD00000000000001CLL, 0x800000022DF6EF20);
    sub_22DF2DF6C();
    v15 = swift_allocError();
    *v104 = 0;
    *(v104 + 8) = 0xE000000000000000;
    *(v104 + 16) = 0;
    swift_willThrow();
    sub_22DEF7A34(v100, v99);

    sub_22DEF7A20(v182, v180);
    sub_22DEF7A20(v184, v189);

    v168(v159, v156);
    v17 = v173;
    goto LABEL_13;
  }

  v72 = sub_22DF634C4();
  v74 = v73;

  *(v0 + 624) = v72;
  *(v0 + 632) = v74;
  v75 = objc_opt_self();
  v76 = sub_22DF634A4();
  *(v0 + 296) = 0;
  v77 = [v75 JSONObjectWithData:v76 options:0 error:v0 + 296];

  v78 = *(v0 + 296);
  v172 = v72;
  v177 = v74;
  if (!v77)
  {
    v105 = v78;
    v106 = sub_22DF63334();

    swift_willThrow();
    goto LABEL_37;
  }

  v79 = v78;
  sub_22DF63E44();
  swift_unknownObjectRelease();
  sub_22DF2E084();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_37:
    v107 = *(v0 + 568);
    v108 = *(v0 + 560);
    v157 = *(v0 + 576);
    v160 = *(v0 + 528);
    v109 = *(v0 + 520);
    v151 = *(v0 + 456);
    v153 = *(v0 + 472);
    v165 = *(v0 + 448);
    v111 = *(v0 + 336);
    v110 = *(v0 + 344);
    sub_22DF63F24();

    v14 = v0;
    MEMORY[0x2318DCA20](v111, v110);
    MEMORY[0x2318DCA20](0xD000000000000016, 0x800000022DF6EF40);
    sub_22DF2DF6C();
    v15 = swift_allocError();
    *v112 = 0xD000000000000019;
    *(v112 + 8) = 0x800000022DF6EE80;
    *(v112 + 16) = 0;
    swift_willThrow();
    sub_22DEF7A34(v108, v107);

    sub_22DEF7A20(v182, v180);
    sub_22DEF7A20(v184, v189);
    sub_22DEF7A34(v72, v74);
LABEL_38:

    v160(v153, v151);
    v17 = v165;
    goto LABEL_13;
  }

  v80 = *(v0 + 304);
  *(v0 + 640) = v80;
  v81 = objc_opt_self();
  *(v0 + 312) = 0;
  v82 = v80;
  v83 = [v81 dataWithPropertyList:v82 format:100 options:0 error:v0 + 312];
  v84 = *(v0 + 312);
  if (!v83)
  {
    v113 = v84;
    v114 = *(v0 + 568);
    v115 = *(v0 + 560);
    v157 = *(v0 + 576);
    v160 = *(v0 + 528);
    v153 = *(v0 + 472);
    v149 = *(v0 + 520);
    v151 = *(v0 + 456);
    v165 = *(v0 + 448);
    v117 = *(v0 + 336);
    v116 = *(v0 + 344);
    v118 = sub_22DF63334();

    swift_willThrow();
    sub_22DF63F24();
    MEMORY[0x2318DCA20](0xD000000000000019, 0x800000022DF6EE80);
    MEMORY[0x2318DCA20](v117, v116);
    MEMORY[0x2318DCA20](0xD00000000000001ELL, 0x800000022DF6EF60);
    sub_22DF2DF6C();
    v15 = swift_allocError();
    *v119 = 0;
    *(v119 + 8) = 0xE000000000000000;
    *(v119 + 16) = 0;
    swift_willThrow();
    v120 = v115;
    v14 = v0;
    sub_22DEF7A34(v120, v114);

    sub_22DEF7A20(v182, v180);
    sub_22DEF7A20(v184, v189);
    sub_22DEF7A34(v172, v177);

    goto LABEL_38;
  }

  v163 = v82;
  v85 = *(v0 + 376);
  v86 = *(v0 + 384);
  v87 = *(v0 + 368);
  v88 = sub_22DF634C4();
  v90 = v89;

  *(v0 + 648) = v88;
  *(v0 + 656) = v90;
  v155 = v88;
  v158 = v90;
  v91 = sub_22DF634B4();
  v92 = MEMORY[0x277D837D0];
  *(v0 + 136) = MEMORY[0x277D837D0];
  *(v0 + 112) = v91;
  *(v0 + 120) = v93;
  sub_22DEFFBF0((v0 + 112), (v0 + 144));
  v94 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_22DF1CCA0((v0 + 144), 6775138, 0xE300000000000000, isUniquelyReferenced_nonNull_native);
  *(v0 + 320) = v94;
  sub_22DF639F4();
  v96 = sub_22DF639C4();
  v98 = v97;
  (*(v85 + 8))(v86, v87);
  if (v98 >> 60 == 15)
  {
    sub_22DF2D3EC(0x727574616E676973, 0xE900000000000065, (v0 + 208));
    sub_22DEF1364(v0 + 208, &qword_27DA47A48, qword_22DF68550);
  }

  else
  {
    v121 = sub_22DF634B4();
    v123 = v122;
    sub_22DEF7A20(v96, v98);
    *(v0 + 200) = v92;
    *(v0 + 176) = v121;
    *(v0 + 184) = v123;
    sub_22DEFFBF0((v0 + 176), (v0 + 240));
    v124 = *(v0 + 320);
    v125 = swift_isUniquelyReferenced_nonNull_native();
    sub_22DF1CCA0((v0 + 240), 0x727574616E676973, 0xE900000000000065, v125);
    *(v0 + 320) = v124;
  }

  v126 = sub_22DF638C4();

  *(v0 + 328) = 0;
  v127 = [v81 dataWithPropertyList:v126 format:100 options:0 error:v0 + 328];

  v128 = *(v0 + 328);
  if (v127)
  {
    v129 = sub_22DF634C4();
    v131 = v130;

    *(v0 + 664) = v129;
    *(v0 + 672) = v131;
    v132 = sub_22DF295D8(v129, v131);
    *(v0 + 680) = v132;
    *(v0 + 688) = v133;
    *(v0 + 696) = v134;
    *(v0 + 704) = v135;
    sub_22DF297A4(*(v0 + 352), v132, v133);
    goto LABEL_46;
  }

  v136 = *(v0 + 568);
  v137 = *(v0 + 560);
  v150 = *(v0 + 576);
  v152 = *(v0 + 528);
  v138 = *(v0 + 520);
  v147 = *(v0 + 456);
  v148 = *(v0 + 472);
  v154 = *(v0 + 448);
  v140 = *(v0 + 336);
  v139 = *(v0 + 344);
  v141 = v128;
  v142 = sub_22DF63334();

  swift_willThrow();
  sub_22DF63F24();
  MEMORY[0x2318DCA20](0xD000000000000019, 0x800000022DF6EE80);
  MEMORY[0x2318DCA20](v140, v139);
  MEMORY[0x2318DCA20](0xD00000000000001ELL, 0x800000022DF6EF80);
  sub_22DF2DF6C();
  v15 = swift_allocError();
  *v143 = 0;
  *(v143 + 8) = 0xE000000000000000;
  *(v143 + 16) = 0;
  swift_willThrow();
  v144 = v137;
  v14 = v0;
  sub_22DEF7A34(v144, v136);

  sub_22DEF7A20(v182, v180);
  sub_22DEF7A20(v184, v189);
  sub_22DEF7A34(v172, v177);
  sub_22DEF7A34(v155, v158);

  v152(v148, v147);
  v17 = v154;
LABEL_13:
  sub_22DEF1364(v17, &qword_27DA47410, &qword_22DF65B80);
  *(v14 + 720) = v15;
  v187 = (*(**(v14 + 504) + 168) + **(**(v14 + 504) + 168));
  v48 = swift_task_alloc();
  *(v14 + 728) = v48;
  *v48 = v14;
  v48[1] = sub_22DF2CEF8;
  v49 = v187;

  return v49();
}

uint64_t sub_22DF2CAF8()
{

  return MEMORY[0x2822009F8](sub_22DF2CC20, 0, 0);
}

uint64_t sub_22DF2CC20()
{
  if (qword_27DA4C730 != -1)
  {
    swift_once();
  }

  v1 = sub_22DF63734();
  __swift_project_value_buffer(v1, qword_27DA4E668);
  v2 = sub_22DF63714();
  v3 = sub_22DF63D24();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_22DEEA000, v2, v3, "sucessfully fetched storebag from server", v4, 2u);
    MEMORY[0x2318DDBE0](v4, -1, -1);
  }

  v18 = v0[86];
  v19 = v0[87];
  v21 = v0[88];
  v22 = v0[84];
  v20 = v0[83];
  v24 = v2;
  v25 = v0[82];
  v23 = v0[81];
  v5 = v0[80];
  v16 = v0[79];
  v17 = v0[85];
  v6 = v0[78];
  v7 = v0[77];
  v8 = v0[76];
  v9 = v0[75];
  v10 = v0[74];
  v11 = v0[71];
  v12 = v0[70];
  v29 = v0[72];
  v30 = v0[66];
  v13 = v0[65];
  v26 = v0[59];
  v27 = v0[57];
  v28 = v0[56];

  sub_22DEF7A34(v12, v11);

  sub_22DEF7A20(v8, v7);
  sub_22DEF7A20(v10, v9);
  sub_22DEF7A34(v6, v16);
  sub_22DEF7A34(v17, v18);
  sub_22DEF7A34(v19, v21);
  sub_22DEF7A34(v20, v22);
  sub_22DEF7A34(v23, v25);

  v30(v26, v27);
  sub_22DEF1364(v28, &qword_27DA47410, &qword_22DF65B80);

  v14 = v0[1];

  return v14();
}

uint64_t sub_22DF2CEF8()
{

  return MEMORY[0x2822009F8](sub_22DF2D020, 0, 0);
}

uint64_t sub_22DF2D020(uint64_t a1)
{
  swift_willThrow();

  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_22DF2D11C()
{
  v1 = *(v0 + 528);
  v2 = *(v0 + 472);
  v4 = *(v0 + 448);
  v3 = *(v0 + 456);

  v1(v2, v3);
  sub_22DEF1364(v4, &qword_27DA47410, &qword_22DF65B80);
  *(v0 + 720) = *(v0 + 584);
  v7 = (*(**(v0 + 504) + 168) + **(**(v0 + 504) + 168));
  v5 = swift_task_alloc();
  *(v0 + 728) = v5;
  *v5 = v0;
  v5[1] = sub_22DF2CEF8;

  return v7();
}

uint64_t StorebagSource.deinit()
{
  v1 = OBJC_IVAR____TtC19CloudTelemetryTools14StorebagSource_throttleCacheURL;
  v2 = sub_22DF63444();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_22DF2E0D0(v0 + OBJC_IVAR____TtC19CloudTelemetryTools14StorebagSource_storebagSigningConfiguration);

  return v0;
}

uint64_t StorebagSource.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC19CloudTelemetryTools14StorebagSource_throttleCacheURL;
  v2 = sub_22DF63444();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_22DF2E0D0(v0 + OBJC_IVAR____TtC19CloudTelemetryTools14StorebagSource_storebagSigningConfiguration);

  return swift_deallocClassInstance();
}

double sub_22DF2D3EC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_22DEF08FC(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_22DF1CE5C();
      v10 = v12;
    }

    sub_22DEFFBF0((*(v10 + 56) + 32 * v8), a3);
    sub_22DF2D738(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_22DF2D490(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47A50, &qword_22DF68810);
  v34 = v4;
  result = sub_22DF64034();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_22DF642A4();
      sub_22DF63A54();
      result = sub_22DF642D4();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_22DF2D738(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22DF63E64() + 1) & ~v5;
    do
    {
      sub_22DF642A4();

      sub_22DF63A54();
      v10 = sub_22DF642D4();

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
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
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

void sub_22DF2D8E8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_22DEF08FC(a2, a3);
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
      sub_22DF2D490(v16, a4 & 1);
      v11 = sub_22DEF08FC(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_22DF64234();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_22DF2DA64();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return;
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

void *sub_22DF2DA64()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47A50, &qword_22DF68810);
  v2 = *v0;
  v3 = sub_22DF64024();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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

uint64_t sub_22DF2DBD4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47A58, &qword_22DF68818);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22DF2A158();
  sub_22DF64304();
  if (!v1)
  {
    v11 = 0;
    v7 = sub_22DF640C4();
    v10 = 1;
    sub_22DF640C4();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v7;
}

uint64_t type metadata accessor for StorebagSource(uint64_t a1)
{
  result = qword_28150A890;
  if (!qword_28150A890)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22DF2DE04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StorebagSigningConfiguration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_22DF2DE68(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47A50, &qword_22DF68810);
    v3 = sub_22DF64044();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_22DEF08FC(v5, v6);
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

unint64_t sub_22DF2DF6C()
{
  result = qword_27DA47A30;
  if (!qword_27DA47A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA47A30);
  }

  return result;
}

uint64_t sub_22DF2DFC0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47410, &qword_22DF65B80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_22DF2E030()
{
  result = qword_27DA47A38;
  if (!qword_27DA47A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA47A38);
  }

  return result;
}

unint64_t sub_22DF2E084()
{
  result = qword_27DA47A40;
  if (!qword_27DA47A40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DA47A40);
  }

  return result;
}

uint64_t sub_22DF2E0D0(uint64_t a1)
{
  v2 = type metadata accessor for StorebagSigningConfiguration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22DF2E138(uint64_t a1)
{
  result = sub_22DF63444();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for StorebagSigningConfiguration(319);
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_19CloudTelemetryTools14StorebagSourceC5ErrorO(uint64_t a1)
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

uint64_t sub_22DF2E22C(uint64_t a1, unsigned int a2)
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

uint64_t sub_22DF2E274(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_22DF2E2B8(uint64_t result, unsigned int a2)
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

unint64_t sub_22DF2E304()
{
  result = qword_27DA4CA40[0];
  if (!qword_27DA4CA40[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DA4CA40);
  }

  return result;
}

unint64_t sub_22DF2E35C()
{
  result = qword_27DA4CB50;
  if (!qword_27DA4CB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA4CB50);
  }

  return result;
}

unint64_t sub_22DF2E3B4()
{
  result = qword_27DA4CB58[0];
  if (!qword_27DA4CB58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DA4CB58);
  }

  return result;
}

uint64_t Mode.hashValue.getter(unsigned __int8 a1)
{
  sub_22DF642A4();
  MEMORY[0x2318DD240](a1);
  return sub_22DF642D4();
}

uint64_t sub_22DF2E4EC()
{
  v0 = sub_22DF63734();
  __swift_allocate_value_buffer(v0, qword_27DA4E680);
  __swift_project_value_buffer(v0, qword_27DA4E680);
  return sub_22DF63724();
}

uint64_t sub_22DF2E560()
{
  if (qword_27DA4CBE0 != -1)
  {
    swift_once();
  }

  v0 = sub_22DF63734();

  return __swift_project_value_buffer(v0, qword_27DA4E680);
}

uint64_t sub_22DF2E5C4()
{
  result = os_variant_has_internal_diagnostics();
  byte_27DA4E698 = result;
  return result;
}

char *sub_22DF2E5EC()
{
  if (qword_27DA4CBE8 != -1)
  {
    swift_once();
  }

  return &byte_27DA4E698;
}

void sub_22DF2E63C()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_22DF63984();
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    qword_27DA4E6A0 = v2;
  }

  else
  {
    __break(1u);
  }
}

uint64_t *sub_22DF2E6B4()
{
  if (qword_27DA4CBF0 != -1)
  {
    swift_once();
  }

  return &qword_27DA4E6A0;
}

void sub_22DF2E704()
{
  if (qword_27DA4CBF0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_27DA4E6A0;
  v1 = sub_22DF63984();
  v2 = [v0 BOOLForKey_];

  byte_27DA4E6A8 = v2;
}

char *sub_22DF2E7D0()
{
  if (qword_27DA4CBF8 != -1)
  {
    swift_once();
  }

  return &byte_27DA4E6A8;
}

void sub_22DF2E820()
{
  if (qword_27DA4CBF0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_27DA4E6A0;
  v1 = sub_22DF63984();
  v2 = [v0 BOOLForKey_];

  if (v2)
  {
    v3 = 1;
  }

  else
  {
    v4 = qword_27DA4E6A0;
    v5 = sub_22DF63984();
    v6 = [v4 integerForKey_];

    v3 = v6 == 5;
  }

  byte_27DA4E6A9 = v3;
}

char *sub_22DF2E958()
{
  if (qword_27DA4CC00 != -1)
  {
    swift_once();
  }

  return &byte_27DA4E6A9;
}

void sub_22DF2E9A8()
{
  if (qword_27DA4CBE8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_27DA4E698 == 1)
  {
    if (qword_27DA4CBF0 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v0 = qword_27DA4E6A0;
    v1 = sub_22DF63984();
    v2 = [v0 BOOLForKey_];
  }

  else
  {
    v2 = 0;
  }

  byte_27DA4E6AA = v2;
}

char *sub_22DF2EAD4()
{
  if (qword_27DA4CC08 != -1)
  {
    swift_once();
  }

  return &byte_27DA4E6AA;
}

void sub_22DF2EB3C()
{
  if (!*v0)
  {
    sub_22DF63F24();

    v1 = [objc_opt_self() mainBundle];
    v2 = [v1 bundleIdentifier];

    if (v2)
    {
      v3 = sub_22DF639B4();
      v5 = v4;

      MEMORY[0x2318DCA20](v3, v5);

      goto LABEL_7;
    }

    goto LABEL_10;
  }

  if (*v0 == 1)
  {
    sub_22DF63F24();
    MEMORY[0x2318DCA20](0xD000000000000033, 0x800000022DF6F0E0);
    if (*(v0 + 16))
    {
      MEMORY[0x2318DCA20](*(v0 + 8));
LABEL_7:
      MEMORY[0x2318DCA20](47, 0xE100000000000000);
      return;
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }
}

void sub_22DF2ECB8()
{
  if (!*v0)
  {
    sub_22DF63F24();

    v1 = [objc_opt_self() mainBundle];
    v2 = [v1 bundleIdentifier];

    if (v2)
    {
      v3 = sub_22DF639B4();
      v5 = v4;

      MEMORY[0x2318DCA20](v3, v5);

      goto LABEL_7;
    }

    goto LABEL_10;
  }

  if (*v0 == 1)
  {
    sub_22DF63F24();
    MEMORY[0x2318DCA20](0xD000000000000031, 0x800000022DF6F180);
    if (*(v0 + 16))
    {
      MEMORY[0x2318DCA20](*(v0 + 8));
LABEL_7:
      MEMORY[0x2318DCA20](47, 0xE100000000000000);
      return;
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }
}

void sub_22DF2EE34(char *a1@<X8>)
{
  v99 = *MEMORY[0x277D85DE8];
  v3 = sub_22DF630B4();
  v4 = *(v3 - 8);
  v87 = v3;
  v88 = v4;
  v5 = MEMORY[0x28223BE20](v3);
  v86 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v85 = &v78 - v7;
  v90 = sub_22DF630C4();
  v92 = *(v90 - 8);
  v8 = MEMORY[0x28223BE20](v90);
  v83 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v84 = &v78 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v91 = &v78 - v13;
  MEMORY[0x28223BE20](v12);
  v89 = &v78 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47650, &qword_22DF68840);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v78 - v16;
  v18 = sub_22DF63444();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v78 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v78 - v23;
  sub_22DEFFC78();
  sub_22DF2ECB8();
  sub_22DF633A4();

  v25 = *(v19 + 8);
  v94 = v19 + 8;
  v95 = v18;
  v93 = v25;
  v25(v24, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47470, &unk_22DF65BC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22DF65900;
  v27 = *MEMORY[0x277CBE868];
  *(inited + 32) = *MEMORY[0x277CBE868];
  v28 = v27;
  sub_22DEF9A50(inited);
  swift_setDeallocating();
  sub_22DEF9C44(inited + 32);
  sub_22DF63354();
  if (v1)
  {

    v29 = sub_22DF632E4();
    (*(*(v29 - 8) + 56))(v17, 1, 1, v29);
    sub_22DEF1364(v17, &qword_27DA47650, &qword_22DF68840);
    goto LABEL_5;
  }

  v30 = a1;

  v31 = sub_22DF632E4();
  v32 = *(v31 - 8);
  (*(v32 + 56))(v17, 0, 1, v31);
  v33 = sub_22DF63284();
  (*(v32 + 8))(v17, v31);
  a1 = v30;
  if (v33 == 2 || (v33 & 1) == 0)
  {
LABEL_5:
    if (qword_27DA4CBE0 != -1)
    {
      swift_once();
    }

    v34 = sub_22DF63734();
    __swift_project_value_buffer(v34, qword_27DA4E680);
    v35 = v95;
    (*(v19 + 16))(v22, a1, v95);
    v36 = sub_22DF63714();
    v37 = sub_22DF63CE4();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v82 = 0;
      v39 = v38;
      v40 = a1;
      v41 = swift_slowAlloc();
      v98 = v41;
      *v39 = 136446210;
      v42 = sub_22DF63404();
      v44 = v43;
      v93(v22, v95);
      v45 = sub_22DEF0354(v42, v44, &v98);

      *(v39 + 4) = v45;
      _os_log_impl(&dword_22DEEA000, v36, v37, "creating log directory at %{public}s", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v41);
      v46 = v41;
      a1 = v40;
      v35 = v95;
      MEMORY[0x2318DDBE0](v46, -1, -1);
      MEMORY[0x2318DDBE0](v39, -1, -1);
    }

    else
    {

      v93(v22, v35);
    }

    v47 = v92;
    v48 = [objc_opt_self() defaultManager];
    v49 = sub_22DF63394();
    v98 = 0;
    v50 = [v48 createDirectoryAtURL:v49 withIntermediateDirectories:1 attributes:0 error:&v98];

    v51 = v91;
    if (v50)
    {
      v52 = v98;
      return;
    }

    v53 = v98;
    v54 = sub_22DF63334();

    swift_willThrow();
    v98 = v54;
    v55 = v54;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47CC0, &qword_22DF661F0);
    v56 = v89;
    if (swift_dynamicCast())
    {
      v82 = a1;
      v80 = *(v47 + 16);
      v80(v51, v56, v90);
      v57 = sub_22DF35770(&qword_27DA47348, MEMORY[0x277CC8620], MEMORY[0x277CC8618]);
      v58 = v85;
      v81 = v57;
      sub_22DF63324();
      v59 = v86;
      sub_22DF630A4();
      sub_22DF35770(&qword_27DA47350, MEMORY[0x277CC8608], MEMORY[0x277CC8610]);
      v60 = v87;
      sub_22DF63B54();
      sub_22DF63B54();
      v61 = v88 + 8;
      v62 = *(v88 + 8);
      v62(v59, v60);
      v62(v58, v60);
      if (v97 == v96)
      {
        v63 = v91;
        sub_22DF4C068(v91);

        v64 = *(v92 + 8);
        v65 = v63;
        v66 = v90;
        v64(v65, v90);
        v93(v82, v95);
        v64(v89, v66);
LABEL_19:
        v76 = v98;
LABEL_22:

        return;
      }

      v67 = v91;
      v68 = *(v92 + 8);
      v88 = v61;
      v69 = v90;
      v91 = v92 + 8;
      v79 = v68;
      v68(v67, v90);
      v80(v84, v89, v69);
      sub_22DF63324();
      sub_22DF63094();
      sub_22DF63B54();
      sub_22DF63B54();
      v62(v59, v60);
      v62(v58, v60);
      if (v97 == v96)
      {
        v70 = v84;
        sub_22DF4C044(v84);

        v71 = v90;
        v72 = v79;
        v79(v70, v90);
        v93(v82, v95);
        v72(v89, v71);
        goto LABEL_19;
      }

      v73 = v58;
      v74 = v90;
      v79(v84, v90);
      v75 = v83;
      (*(v92 + 32))(v83, v89, v74);
      sub_22DF63324();
      sub_22DF63084();
      sub_22DF63B54();
      sub_22DF63B54();
      v62(v59, v60);
      v62(v73, v60);
      if (v97 == v96)
      {
        sub_22DF4C08C(v75);

        v79(v75, v90);
        v93(v82, v95);
        goto LABEL_19;
      }

      v79(v75, v90);
      a1 = v82;
      v35 = v95;
    }

    v77 = v54;
    sub_22DF4C448(v54);
    v93(a1, v35);

    v76 = v54;
    goto LABEL_22;
  }
}

uint64_t sub_22DF2F9EC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47AA8, &qword_22DF68958);
  result = swift_allocObject();
  *(result + 20) = 0;
  *(result + 16) = 0;
  qword_27DA4E6B0 = result;
  return result;
}

void sub_22DF2FA30(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v76 = a1;
  v81 = a4;
  v85 = *MEMORY[0x277D85DE8];
  v7 = sub_22DF630B4();
  v74 = *(v7 - 8);
  v75 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v73 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v72 = &v66 - v10;
  v11 = sub_22DF630C4();
  v12 = *(v11 - 8);
  v77 = v11;
  v78 = v12;
  v13 = MEMORY[0x28223BE20](v11);
  v71 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v70 = &v66 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v79 = &v66 - v18;
  MEMORY[0x28223BE20](v17);
  v80 = &v66 - v19;
  v20 = sub_22DF632E4();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v66 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47650, &qword_22DF68840);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v66 - v25;
  if (qword_27DA4CC10 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v27 = qword_27DA4E6B0;

  os_unfair_lock_lock((v27 + 20));
  v28 = *(v27 + 16);
  os_unfair_lock_unlock((v27 + 20));

  if (v28 == 1)
  {
    sub_22DF4BE38();
    return;
  }

  v84[0] = a2;
  v84[1] = a3;

  MEMORY[0x2318DCA20](47, 0xE100000000000000);
  v29 = v81;
  sub_22DF633A4();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47470, &unk_22DF65BC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22DF65900;
  v31 = *MEMORY[0x277CBE868];
  *(inited + 32) = *MEMORY[0x277CBE868];
  v32 = v31;
  sub_22DEF9A50(inited);
  swift_setDeallocating();
  sub_22DEF9C44(inited + 32);
  sub_22DF63354();
  if (v4)
  {

    (*(v21 + 56))(v26, 1, 1, v20);
    sub_22DEF1364(v26, &qword_27DA47650, &qword_22DF68840);
    goto LABEL_9;
  }

  (*(v21 + 56))(v26, 0, 1, v20);
  v33 = sub_22DF63284();
  (*(v21 + 8))(v26, v20);
  if (v33 == 2 || (v33 & 1) == 0)
  {
LABEL_9:
    v34 = [objc_opt_self() defaultManager];
    v35 = sub_22DF63394();
    v84[0] = 0;
    v36 = [v34 createDirectoryAtURL:v35 withIntermediateDirectories:1 attributes:0 error:v84];

    if (v36)
    {
      v37 = v84[0];
      sub_22DF632D4();
      sub_22DF632A4();
      sub_22DF63384();
      (*(v21 + 8))(v23, v20);
      return;
    }

    v38 = v84[0];
    v39 = sub_22DF63334();

    swift_willThrow();
    v40 = v79;
    v84[0] = v39;
    v41 = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47CC0, &qword_22DF661F0);
    v42 = v80;
    v43 = v77;
    if (swift_dynamicCast())
    {
      v76 = 0;
      v68 = *(v78 + 16);
      v68(v40, v42, v43);
      v44 = sub_22DF35770(&qword_27DA47348, MEMORY[0x277CC8620], MEMORY[0x277CC8618]);
      v45 = v72;
      v69 = v44;
      sub_22DF63324();
      v46 = v73;
      sub_22DF630A4();
      sub_22DF35770(&qword_27DA47350, MEMORY[0x277CC8608], MEMORY[0x277CC8610]);
      v47 = v75;
      sub_22DF63B54();
      sub_22DF63B54();
      v48 = *(v74 + 1);
      v48(v46, v47);
      v48(v45, v47);
      if (v83 == v82)
      {
        v49 = v79;
        sub_22DF4C068(v79);

        v50 = *(v78 + 8);
        v50(v49, v43);
        v51 = sub_22DF63444();
        (*(*(v51 - 8) + 8))(v81, v51);
        v50(v80, v43);
LABEL_19:
        v63 = v84[0];
LABEL_21:

        return;
      }

      v52 = v79;
      v53 = *(v78 + 8);
      v79 = v78 + 8;
      v74 = v53;
      v53(v52, v43);
      v67 = v48;
      v54 = v70;
      v68(v70, v80, v43);
      v55 = v54;
      v56 = v67;
      sub_22DF63324();
      sub_22DF63094();
      sub_22DF63B54();
      sub_22DF63B54();
      v56(v46, v47);
      v56(v45, v47);
      if (v83 == v82)
      {
        sub_22DF4C044(v54);

        v57 = v77;
        v58 = v74;
        v74(v55, v77);
        v59 = sub_22DF63444();
        (*(*(v59 - 8) + 8))(v81, v59);
        v58(v80, v57);
        goto LABEL_19;
      }

      v60 = v77;
      v74(v54, v77);
      (*(v78 + 32))(v71, v80, v60);
      sub_22DF63324();
      sub_22DF63084();
      sub_22DF63B54();
      sub_22DF63B54();
      v56(v46, v47);
      v56(v45, v47);
      v29 = v81;
      if (v83 == v82)
      {
        v61 = v71;
        sub_22DF4C08C(v71);

        v74(v61, v77);
        v62 = sub_22DF63444();
        (*(*(v62 - 8) + 8))(v29, v62);
        goto LABEL_19;
      }

      v74(v71, v77);
    }

    v64 = v39;
    sub_22DF4C448(v39);
    v65 = sub_22DF63444();
    (*(*(v65 - 8) + 8))(v29, v65);

    v63 = v39;
    goto LABEL_21;
  }
}

uint64_t Daemon.init(mode:clientBundleID:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 776) = a4;
  *(v4 + 768) = a3;
  *(v4 + 140) = a2;
  *(v4 + 760) = a1;
  v5 = sub_22DF63444();
  *(v4 + 784) = v5;
  *(v4 + 792) = *(v5 - 8);
  *(v4 + 800) = swift_task_alloc();
  *(v4 + 808) = swift_task_alloc();
  *(v4 + 816) = swift_task_alloc();
  *(v4 + 824) = swift_task_alloc();
  *(v4 + 832) = swift_task_alloc();
  *(v4 + 840) = swift_task_alloc();
  *(v4 + 848) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22DF30690, 0, 0);
}

uint64_t sub_22DF30690()
{
  v67 = v0;
  v66 = *MEMORY[0x277D85DE8];
  if (qword_27DA4CBE0 != -1)
  {
    swift_once();
  }

  v1 = sub_22DF63734();
  *(v0 + 856) = __swift_project_value_buffer(v1, qword_27DA4E680);
  v2 = sub_22DF63714();
  v3 = sub_22DF63D24();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_22DEEA000, v2, v3, "starting CloudTelemetryService", v4, 2u);
    MEMORY[0x2318DDBE0](v4, -1, -1);
  }

  v5 = *(v0 + 848);
  v6 = *(v0 + 792);
  v7 = *(v0 + 784);

  v8 = objc_opt_self();
  *(v0 + 864) = v8;
  v9 = [v8 defaultManager];
  sub_22DEFFC78();
  sub_22DF633F4();
  v10 = *(v6 + 8);
  *(v0 + 872) = v10;
  *(v0 + 880) = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v5, v7);
  v11 = sub_22DF63984();

  LOBYTE(v5) = [v9 fileExistsAtPath_];

  if (v5)
  {
    v12 = *(v0 + 840);
    *(v0 + 80) = *(v0 + 140);
    *(v0 + 88) = *(v0 + 768);
    *(v0 + 104) = 0u;
    *(v0 + 120) = 0u;
    *(v0 + 136) = 0;
    sub_22DF2EE34(v12);
    type metadata accessor for TransparencyLog(0);
    v33 = swift_task_alloc();
    *(v0 + 888) = v33;
    *v33 = v0;
    v33[1] = sub_22DF31308;
    v34 = *(v0 + 840);

    return sub_22DEF3F6C(v34);
  }

  v13 = sub_22DF63714();
  v14 = sub_22DF63D14();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = *(v0 + 848);
    v61 = *(v0 + 784);
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v64 = v17;
    *v16 = 136380675;
    sub_22DEFFC78();
    v18 = sub_22DF633F4();
    v20 = v19;
    v10(v15, v61);
    v21 = sub_22DEF0354(v18, v20, &v64);

    *(v16 + 4) = v21;
    _os_log_impl(&dword_22DEEA000, v13, v14, "reporting disabled due to missing home directory: %{private}s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x2318DDBE0](v17, -1, -1);
    MEMORY[0x2318DDBE0](v16, -1, -1);
  }

  v22 = sub_22DF63714();
  v23 = sub_22DF63D14();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_22DEEA000, v22, v23, "reporting disabled due to startup failure.", v24, 2u);
    MEMORY[0x2318DDBE0](v24, -1, -1);
  }

  *(v0 + 1000) = 0;
  *(v0 + 142) = 257;
  *(v0 + 992) = 0;
  *(v0 + 984) = 0;
  *(v0 + 976) = 0;
  if ((*(v0 + 140) | 2) == 2)
  {
    v25 = XPCActivity.makeHandler.unsafeMutableAddressor();
    v26 = swift_allocObject();
    v26[3] = 0;
    v26[4] = 0;
    v26[2] = 0;
    swift_beginAccess();
    v27 = *v25;
    v28 = v25[1];
    *v25 = &unk_22DF68868;
    v25[1] = v26;
    sub_22DEEB93C(v27, v28);
    if (qword_27DA4CC18 != -1)
    {
      swift_once();
    }

    v29 = qword_27DA4E6B8;
    *(v0 + 1008) = qword_27DA4E6B8;
    if (v29 >> 62)
    {
      v30 = sub_22DF63E94();
      *(v0 + 1016) = v30;
      if (v30)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
      *(v0 + 1016) = v30;
      if (v30)
      {
LABEL_16:
        if (v30 < 1)
        {
          __break(1u);
        }

        *(v0 + 1024) = 0;
        v31 = *(v0 + 1008);
        if ((v31 & 0xC000000000000001) != 0)
        {
          v32 = MEMORY[0x2318DCED0](0);
        }

        else
        {
          v32 = *(v31 + 32);
        }

        *(v0 + 1032) = v32;
        v36 = *v32 + 160;
        *(v0 + 1040) = *v36;
        *(v0 + 1048) = v36 & 0xFFFFFFFFFFFFLL | 0xD283000000000000;

        return MEMORY[0x2822009F8](sub_22DF32A3C, v32, 0);
      }
    }
  }

  v62 = MEMORY[0x277D84FA0];
  if (qword_27DA4CBF8 != -1)
  {
    swift_once();
  }

  if (byte_27DA4E6A8 == 1)
  {
    sub_22DF110A8(&v64, 0xD000000000000011, 0x800000022DF6F230);
  }

  if (qword_27DA4CBF0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v37 = qword_27DA4E6A0;
  v38 = sub_22DF63984();
  v39 = [v37 valueForKey_];

  if (v39)
  {
    sub_22DF63E44();
    swift_unknownObjectRelease();
    sub_22DEF1364(v0 + 528, &qword_27DA47A48, qword_22DF68550);
    sub_22DF110A8(&v64, 0xD000000000000013, 0x800000022DF6F210);
  }

  else
  {
    *(v0 + 528) = 0u;
    *(v0 + 544) = 0u;
    sub_22DEF1364(v0 + 528, &qword_27DA47A48, qword_22DF68550);
  }

  if (qword_27DA4CC00 != -1)
  {
    swift_once();
  }

  if (byte_27DA4E6A9 == 1)
  {
    sub_22DF110A8(&v64, 0x6976654474736574, 0xEA00000000006563);
  }

  if (qword_27DA4CC08 != -1)
  {
    swift_once();
  }

  if (byte_27DA4E6AA == 1)
  {
    sub_22DF110A8(&v64, 0xD000000000000014, 0x800000022DF6F1F0);
  }

  v40 = sub_22DF63714();
  v41 = sub_22DF63D24();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v63 = v43;
    *v42 = 136315138;
    if (*(v62 + 16))
    {
      v64 = 0x6769666E6F632820;
      v65 = 0xEA0000000000203ALL;
      *(v0 + 688) = v62;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47A60, &qword_22DF68858);
      sub_22DF35820();
      sub_22DF06E10();
      v44 = sub_22DF63B44();
      v46 = v45;

      MEMORY[0x2318DCA20](v44, v46);

      MEMORY[0x2318DCA20](41, 0xE100000000000000);

      v47 = v64;
      v48 = v65;
    }

    else
    {

      v47 = 0;
      v48 = 0xE000000000000000;
    }

    v49 = sub_22DEF0354(v47, v48, &v63);

    *(v42 + 4) = v49;
    _os_log_impl(&dword_22DEEA000, v40, v41, "started CloudTelemetryService%s", v42, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v43);
    MEMORY[0x2318DDBE0](v43, -1, -1);
    MEMORY[0x2318DDBE0](v42, -1, -1);
  }

  else
  {
  }

  v50 = *(v0 + 1000);
  v51 = *(v0 + 992);
  v52 = *(v0 + 143);
  v53 = *(v0 + 140);
  v54 = *(v0 + 760);
  *(v0 + 464) = v53;
  *(v0 + 465) = *(v0 + 73);
  *(v0 + 468) = *(v0 + 76);
  v55 = *(v0 + 768);
  v56 = *(v0 + 976);
  *(v0 + 472) = v55;
  *(v0 + 488) = v56;
  *(v0 + 504) = v50;
  *(v0 + 512) = v51;
  *(v0 + 520) = v52;
  *(v0 + 400) = v53;
  *(v0 + 401) = *(v0 + 73);
  *(v0 + 404) = *(v0 + 76);
  *(v0 + 408) = v55;
  *(v0 + 424) = v56;
  *(v0 + 440) = v50;
  *(v0 + 448) = v51;
  *(v0 + 456) = v52;
  sub_22DF357B8(v0 + 464, v0 + 16);
  sub_22DF357F0(v0 + 400);
  v58 = *(v0 + 480);
  v57 = *(v0 + 496);
  v59 = *(v0 + 464);
  *(v54 + 41) = *(v0 + 505);
  v54[1] = v58;
  v54[2] = v57;
  *v54 = v59;

  v60 = *(v0 + 8);

  return v60();
}

uint64_t sub_22DF31308(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = sub_22DF33198;
  }

  else
  {
    *(v4 + 896) = a1;
    v5 = sub_22DF3145C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22DF3145C()
{
  *(v0 + 904) = *(v0 + 896);
  v9 = *(v0 + 872);
  v1 = *(v0 + 848);
  v2 = *(v0 + 784);
  v3 = *(v0 + 776);
  v4 = *(v0 + 768);
  v5 = *(v0 + 140);
  *(v0 + 912) = type metadata accessor for DiskCache();
  *(v0 + 144) = v5;
  *(v0 + 152) = v4;
  *(v0 + 160) = v3;
  *(v0 + 168) = 0u;
  *(v0 + 184) = 0u;
  *(v0 + 200) = 0;

  sub_22DEFFC78();
  sub_22DF2EB3C();
  sub_22DF633B4();

  v9(v1, v2);
  v6 = swift_task_alloc();
  *(v0 + 920) = v6;
  *v6 = v0;
  v6[1] = sub_22DF315D8;
  v7 = *(v0 + 832);

  return DiskCache.__allocating_init(rootCacheURL:)(v7);
}

uint64_t sub_22DF315D8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 928) = v1;

  if (v1)
  {
    v5 = sub_22DF33DFC;
  }

  else
  {
    v4[117] = a1;
    v4[92] = 0;
    v4[88] = 0;
    v5 = sub_22DF31730;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22DF31730()
{
  v53 = v0;
  v52[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 936);
  *(v0 + 944) = v1;
  v2 = *(v0 + 904);

  sub_22DEF1364(v0 + 736, &qword_27DA47A70, &qword_22DF68870);
  sub_22DEF1364(v0 + 704, &qword_27DA47A78, &qword_22DF68878);
  v3 = *(v0 + 904);
  if (v2 && v1)
  {
    v4 = *(v0 + 872);
    v5 = *(v0 + 848);
    v6 = *(v0 + 784);
    v7 = *(v0 + 776);
    v8 = *(v0 + 768);
    v9 = *(v0 + 140);
    type metadata accessor for SessionCoordinator();
    *(v0 + 336) = v9;
    *(v0 + 337) = *(v0 + 73);
    *(v0 + 340) = *(v0 + 76);
    *(v0 + 344) = v8;
    *(v0 + 352) = v7;
    *(v0 + 360) = v1;
    *(v0 + 368) = 0;
    *(v0 + 376) = 0;
    *(v0 + 384) = v3;
    *(v0 + 392) = 0;

    sub_22DEFFC78();
    sub_22DF2EB3C();
    sub_22DF633B4();

    v4(v5, v6);
    v10 = swift_task_alloc();
    *(v0 + 952) = v10;
    *v10 = v0;
    v10[1] = sub_22DF320C8;
    v11 = *(v0 + 824);

    return sub_22DF51F0C(0, v1, v11);
  }

  v13 = sub_22DF63714();
  v14 = sub_22DF63D14();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_22DEEA000, v13, v14, "reporting disabled due to startup failure.", v15, 2u);
    MEMORY[0x2318DDBE0](v15, -1, -1);
  }

  *(v0 + 1000) = 0;
  *(v0 + 992) = v3;
  *(v0 + 142) = 257;
  *(v0 + 984) = 0;
  *(v0 + 976) = v1;
  if ((*(v0 + 140) | 2) == 2)
  {
    v16 = XPCActivity.makeHandler.unsafeMutableAddressor();
    v17 = swift_allocObject();
    v17[3] = 0;
    v17[4] = 0;
    v17[2] = v1;
    swift_beginAccess();
    v18 = *v16;
    v19 = v16[1];
    *v16 = &unk_22DF68868;
    v16[1] = v17;

    sub_22DEEB93C(v18, v19);
    if (qword_27DA4CC18 != -1)
    {
      swift_once();
    }

    v20 = qword_27DA4E6B8;
    *(v0 + 1008) = qword_27DA4E6B8;
    if (v20 >> 62)
    {
      v21 = sub_22DF63E94();
      *(v0 + 1016) = v21;
      if (v21)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      *(v0 + 1016) = v21;
      if (v21)
      {
LABEL_13:
        if (v21 < 1)
        {
          __break(1u);
        }

        *(v0 + 1024) = 0;
        v22 = *(v0 + 1008);
        if ((v22 & 0xC000000000000001) != 0)
        {
          v23 = MEMORY[0x2318DCED0](0);
        }

        else
        {
          v23 = *(v22 + 32);
        }

        *(v0 + 1032) = v23;
        v24 = *v23 + 160;
        *(v0 + 1040) = *v24;
        *(v0 + 1048) = v24 & 0xFFFFFFFFFFFFLL | 0xD283000000000000;

        return MEMORY[0x2822009F8](sub_22DF32A3C, v23, 0);
      }
    }
  }

  v49 = MEMORY[0x277D84FA0];
  if (qword_27DA4CBF8 != -1)
  {
    swift_once();
  }

  if (byte_27DA4E6A8 == 1)
  {
    sub_22DF110A8(&v50, 0xD000000000000011, 0x800000022DF6F230);
  }

  if (qword_27DA4CBF0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v25 = qword_27DA4E6A0;
  v26 = sub_22DF63984();
  v27 = [v25 valueForKey_];

  if (v27)
  {
    sub_22DF63E44();
    swift_unknownObjectRelease();
    sub_22DEF1364(v0 + 528, &qword_27DA47A48, qword_22DF68550);
    sub_22DF110A8(&v50, 0xD000000000000013, 0x800000022DF6F210);
  }

  else
  {
    *(v0 + 528) = 0u;
    *(v0 + 544) = 0u;
    sub_22DEF1364(v0 + 528, &qword_27DA47A48, qword_22DF68550);
  }

  if (qword_27DA4CC00 != -1)
  {
    swift_once();
  }

  if (byte_27DA4E6A9 == 1)
  {
    sub_22DF110A8(&v50, 0x6976654474736574, 0xEA00000000006563);
  }

  if (qword_27DA4CC08 != -1)
  {
    swift_once();
  }

  if (byte_27DA4E6AA == 1)
  {
    sub_22DF110A8(&v50, 0xD000000000000014, 0x800000022DF6F1F0);
  }

  v28 = sub_22DF63714();
  v29 = sub_22DF63D24();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v52[0] = v31;
    *v30 = 136315138;
    if (*(v49 + 16))
    {
      v50 = 0x6769666E6F632820;
      v51 = 0xEA0000000000203ALL;
      *(v0 + 688) = v49;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47A60, &qword_22DF68858);
      sub_22DF35820();
      sub_22DF06E10();
      v32 = sub_22DF63B44();
      v34 = v33;

      MEMORY[0x2318DCA20](v32, v34);

      MEMORY[0x2318DCA20](41, 0xE100000000000000);

      v35 = v50;
      v36 = v51;
    }

    else
    {

      v35 = 0;
      v36 = 0xE000000000000000;
    }

    v37 = sub_22DEF0354(v35, v36, v52);

    *(v30 + 4) = v37;
    _os_log_impl(&dword_22DEEA000, v28, v29, "started CloudTelemetryService%s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v31);
    MEMORY[0x2318DDBE0](v31, -1, -1);
    MEMORY[0x2318DDBE0](v30, -1, -1);
  }

  else
  {
  }

  v38 = *(v0 + 1000);
  v39 = *(v0 + 992);
  v40 = *(v0 + 143);
  v41 = *(v0 + 140);
  v42 = *(v0 + 760);
  *(v0 + 464) = v41;
  *(v0 + 465) = *(v0 + 73);
  *(v0 + 468) = *(v0 + 76);
  v43 = *(v0 + 768);
  v44 = *(v0 + 976);
  *(v0 + 472) = v43;
  *(v0 + 488) = v44;
  *(v0 + 504) = v38;
  *(v0 + 512) = v39;
  *(v0 + 520) = v40;
  *(v0 + 400) = v41;
  *(v0 + 401) = *(v0 + 73);
  *(v0 + 404) = *(v0 + 76);
  *(v0 + 408) = v43;
  *(v0 + 424) = v44;
  *(v0 + 440) = v38;
  *(v0 + 448) = v39;
  *(v0 + 456) = v40;
  sub_22DF357B8(v0 + 464, v0 + 16);
  sub_22DF357F0(v0 + 400);
  v46 = *(v0 + 480);
  v45 = *(v0 + 496);
  v47 = *(v0 + 464);
  *(v42 + 41) = *(v0 + 505);
  v42[1] = v46;
  v42[2] = v45;
  *v42 = v47;

  v48 = *(v0 + 8);

  return v48();
}

uint64_t sub_22DF320C8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 960) = v1;

  if (v1)
  {
    v5 = sub_22DF34B58;
  }

  else
  {
    *(v4 + 968) = a1;
    *(v4 + 141) = *(v4 + 392);
    v5 = sub_22DF32220;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22DF32220(uint64_t (*a1)(), void *a2, uint64_t a3)
{
  v49 = v3;
  v48[1] = *MEMORY[0x277D85DE8];
  v4 = *(v3 + 141);
  v5 = *(v3 + 968);
  if (v4 == 1)
  {
    v6 = 0;
  }

  else
  {
    if (!v5)
    {
      __break(1u);
      return MEMORY[0x2822009F8](a1, a2, a3);
    }

    v7 = *(v3 + 944);
    v8 = *(v3 + 904);
    type metadata accessor for SubmissionCoordinator();

    v6 = sub_22DEEC750(v5, v7, v8);
  }

  v9 = *(v3 + 904);
  v10 = *(v3 + 944);
  *(v3 + 1000) = v6;
  *(v3 + 992) = v9;
  *(v3 + 143) = 0;
  *(v3 + 142) = v4;
  *(v3 + 984) = v5;
  *(v3 + 976) = v10;
  if ((*(v3 + 140) | 2) == 2)
  {
    v11 = XPCActivity.makeHandler.unsafeMutableAddressor();
    v12 = swift_allocObject();
    v12[2] = v10;
    v12[3] = v5;
    v12[4] = v6;
    swift_beginAccess();
    v13 = *v11;
    v14 = v11[1];
    *v11 = &unk_22DF68868;
    v11[1] = v12;

    sub_22DEEB93C(v13, v14);
    if (qword_27DA4CC18 != -1)
    {
      swift_once();
    }

    v15 = qword_27DA4E6B8;
    *(v3 + 1008) = qword_27DA4E6B8;
    if (v15 >> 62)
    {
      v16 = sub_22DF63E94();
      *(v3 + 1016) = v16;
      if (v16)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      *(v3 + 1016) = v16;
      if (v16)
      {
LABEL_10:
        if (v16 < 1)
        {
          __break(1u);
        }

        *(v3 + 1024) = 0;
        v17 = *(v3 + 1008);
        if ((v17 & 0xC000000000000001) != 0)
        {
          v18 = MEMORY[0x2318DCED0](0);
        }

        else
        {
          v18 = *(v17 + 32);
        }

        *(v3 + 1032) = v18;
        v19 = *v18 + 160;
        *(v3 + 1040) = *v19;
        *(v3 + 1048) = v19 & 0xFFFFFFFFFFFFLL | 0xD283000000000000;
        a1 = sub_22DF32A3C;
        a2 = v18;
        a3 = 0;

        return MEMORY[0x2822009F8](a1, a2, a3);
      }
    }
  }

  v45 = MEMORY[0x277D84FA0];
  if (qword_27DA4CBF8 != -1)
  {
    swift_once();
  }

  if (byte_27DA4E6A8 == 1)
  {
    sub_22DF110A8(&v46, 0xD000000000000011, 0x800000022DF6F230);
  }

  if (qword_27DA4CBF0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v20 = qword_27DA4E6A0;
  v21 = sub_22DF63984();
  v22 = [v20 valueForKey_];

  if (v22)
  {
    sub_22DF63E44();
    swift_unknownObjectRelease();
    sub_22DEF1364(v3 + 528, &qword_27DA47A48, qword_22DF68550);
    sub_22DF110A8(&v46, 0xD000000000000013, 0x800000022DF6F210);
  }

  else
  {
    *(v3 + 528) = 0u;
    *(v3 + 544) = 0u;
    sub_22DEF1364(v3 + 528, &qword_27DA47A48, qword_22DF68550);
  }

  if (qword_27DA4CC00 != -1)
  {
    swift_once();
  }

  if (byte_27DA4E6A9 == 1)
  {
    sub_22DF110A8(&v46, 0x6976654474736574, 0xEA00000000006563);
  }

  if (qword_27DA4CC08 != -1)
  {
    swift_once();
  }

  if (byte_27DA4E6AA == 1)
  {
    sub_22DF110A8(&v46, 0xD000000000000014, 0x800000022DF6F1F0);
  }

  v23 = sub_22DF63714();
  v24 = sub_22DF63D24();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v48[0] = v26;
    *v25 = 136315138;
    if (*(v45 + 16))
    {
      v46 = 0x6769666E6F632820;
      v47 = 0xEA0000000000203ALL;
      *(v3 + 688) = v45;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47A60, &qword_22DF68858);
      sub_22DF35820();
      sub_22DF06E10();
      v27 = sub_22DF63B44();
      v29 = v28;

      MEMORY[0x2318DCA20](v27, v29);

      MEMORY[0x2318DCA20](41, 0xE100000000000000);

      v30 = v46;
      v31 = v47;
    }

    else
    {

      v30 = 0;
      v31 = 0xE000000000000000;
    }

    v32 = sub_22DEF0354(v30, v31, v48);

    *(v25 + 4) = v32;
    _os_log_impl(&dword_22DEEA000, v23, v24, "started CloudTelemetryService%s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v26);
    MEMORY[0x2318DDBE0](v26, -1, -1);
    MEMORY[0x2318DDBE0](v25, -1, -1);
  }

  else
  {
  }

  v33 = *(v3 + 1000);
  v34 = *(v3 + 992);
  v35 = *(v3 + 143);
  v36 = *(v3 + 140);
  v37 = *(v3 + 760);
  *(v3 + 464) = v36;
  *(v3 + 465) = *(v3 + 73);
  *(v3 + 468) = *(v3 + 76);
  v38 = *(v3 + 768);
  v39 = *(v3 + 976);
  *(v3 + 472) = v38;
  *(v3 + 488) = v39;
  *(v3 + 504) = v33;
  *(v3 + 512) = v34;
  *(v3 + 520) = v35;
  *(v3 + 400) = v36;
  *(v3 + 401) = *(v3 + 73);
  *(v3 + 404) = *(v3 + 76);
  *(v3 + 408) = v38;
  *(v3 + 424) = v39;
  *(v3 + 440) = v33;
  *(v3 + 448) = v34;
  *(v3 + 456) = v35;
  sub_22DF357B8(v3 + 464, v3 + 16);
  sub_22DF357F0(v3 + 400);
  v41 = *(v3 + 480);
  v40 = *(v3 + 496);
  v42 = *(v3 + 464);
  *(v37 + 41) = *(v3 + 505);
  v37[1] = v41;
  v37[2] = v40;
  *v37 = v42;

  v43 = *(v3 + 8);

  return v43();
}

uint64_t sub_22DF32A3C()
{
  (*(v0 + 1040))(*(v0 + 142));

  return MEMORY[0x2822009F8](sub_22DF32ADC, 0, 0);
}

uint64_t sub_22DF32ADC()
{
  v36 = v0;
  v35[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 1024);
  v2 = *(v0 + 1016);

  if (v1 + 1 == v2)
  {
    v32 = MEMORY[0x277D84FA0];
    if (qword_27DA4CBF8 != -1)
    {
      swift_once();
    }

    if (byte_27DA4E6A8 == 1)
    {
      sub_22DF110A8(&v33, 0xD000000000000011, 0x800000022DF6F230);
    }

    if (qword_27DA4CBF0 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v3 = qword_27DA4E6A0;
    v4 = sub_22DF63984();
    v5 = [v3 valueForKey_];

    if (v5)
    {
      sub_22DF63E44();
      swift_unknownObjectRelease();
      sub_22DEF1364(v0 + 528, &qword_27DA47A48, qword_22DF68550);
      sub_22DF110A8(&v33, 0xD000000000000013, 0x800000022DF6F210);
    }

    else
    {
      *(v0 + 528) = 0u;
      *(v0 + 544) = 0u;
      sub_22DEF1364(v0 + 528, &qword_27DA47A48, qword_22DF68550);
    }

    if (qword_27DA4CC00 != -1)
    {
      swift_once();
    }

    if (byte_27DA4E6A9 == 1)
    {
      sub_22DF110A8(&v33, 0x6976654474736574, 0xEA00000000006563);
    }

    if (qword_27DA4CC08 != -1)
    {
      swift_once();
    }

    if (byte_27DA4E6AA == 1)
    {
      sub_22DF110A8(&v33, 0xD000000000000014, 0x800000022DF6F1F0);
    }

    v9 = sub_22DF63714();
    v10 = sub_22DF63D24();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v35[0] = v12;
      *v11 = 136315138;
      if (*(v32 + 16))
      {
        v33 = 0x6769666E6F632820;
        v34 = 0xEA0000000000203ALL;
        *(v0 + 688) = v32;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47A60, &qword_22DF68858);
        sub_22DF35820();
        sub_22DF06E10();
        v13 = sub_22DF63B44();
        v15 = v14;

        MEMORY[0x2318DCA20](v13, v15);

        MEMORY[0x2318DCA20](41, 0xE100000000000000);

        v16 = v33;
        v17 = v34;
      }

      else
      {

        v16 = 0;
        v17 = 0xE000000000000000;
      }

      v19 = sub_22DEF0354(v16, v17, v35);

      *(v11 + 4) = v19;
      _os_log_impl(&dword_22DEEA000, v9, v10, "started CloudTelemetryService%s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x2318DDBE0](v12, -1, -1);
      MEMORY[0x2318DDBE0](v11, -1, -1);
    }

    else
    {
    }

    v20 = *(v0 + 1000);
    v21 = *(v0 + 992);
    v22 = *(v0 + 143);
    v23 = *(v0 + 140);
    v24 = *(v0 + 760);
    *(v0 + 464) = v23;
    *(v0 + 465) = *(v0 + 73);
    *(v0 + 468) = *(v0 + 76);
    v25 = *(v0 + 768);
    v26 = *(v0 + 976);
    *(v0 + 472) = v25;
    *(v0 + 488) = v26;
    *(v0 + 504) = v20;
    *(v0 + 512) = v21;
    *(v0 + 520) = v22;
    *(v0 + 400) = v23;
    *(v0 + 401) = *(v0 + 73);
    *(v0 + 404) = *(v0 + 76);
    *(v0 + 408) = v25;
    *(v0 + 424) = v26;
    *(v0 + 440) = v20;
    *(v0 + 448) = v21;
    *(v0 + 456) = v22;
    sub_22DF357B8(v0 + 464, v0 + 16);
    sub_22DF357F0(v0 + 400);
    v28 = *(v0 + 480);
    v27 = *(v0 + 496);
    v29 = *(v0 + 464);
    *(v24 + 41) = *(v0 + 505);
    v24[1] = v28;
    v24[2] = v27;
    *v24 = v29;

    v30 = *(v0 + 8);

    return v30();
  }

  else
  {
    v6 = *(v0 + 1024) + 1;
    *(v0 + 1024) = v6;
    v7 = *(v0 + 1008);
    if ((v7 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x2318DCED0]();
    }

    else
    {
      v8 = *(v7 + 8 * v6 + 32);
    }

    *(v0 + 1032) = v8;
    v18 = *v8 + 160;
    *(v0 + 1040) = *v18;
    *(v0 + 1048) = v18 & 0xFFFFFFFFFFFFLL | 0xD283000000000000;

    return MEMORY[0x2822009F8](sub_22DF32A3C, v8, 0);
  }
}

uint64_t sub_22DF33198()
{
  *(v0 + 904) = 0;
  v1 = *(v0 + 872);
  v2 = *(v0 + 848);
  v3 = *(v0 + 784);
  v4 = *(v0 + 776);
  v5 = *(v0 + 768);
  v6 = *(v0 + 140);
  *(v0 + 912) = type metadata accessor for DiskCache();
  *(v0 + 144) = v6;
  *(v0 + 152) = v5;
  *(v0 + 160) = v4;
  *(v0 + 168) = 0u;
  *(v0 + 184) = 0u;
  *(v0 + 200) = 0;
  sub_22DEFFC78();
  sub_22DF2EB3C();
  sub_22DF633B4();

  v1(v2, v3);
  v7 = swift_task_alloc();
  *(v0 + 920) = v7;
  *v7 = v0;
  v7[1] = sub_22DF315D8;
  v8 = *(v0 + 832);

  return DiskCache.__allocating_init(rootCacheURL:)(v8);
}

uint64_t sub_22DF33308(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 1064) = v1;

  if (v1)
  {
    v5 = sub_22DF34310;
  }

  else
  {
    *(v4 + 1072) = a1;
    v5 = sub_22DF33458;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22DF33458()
{
  v53 = v0;
  v52[1] = *MEMORY[0x277D85DE8];

  v1 = *(v0 + 1072);
  *(v0 + 944) = v1;
  v2 = *(v0 + 904);

  sub_22DEF1364(v0 + 680, &qword_27DA47A70, &qword_22DF68870);
  sub_22DEF1364(v0 + 752, &qword_27DA47A78, &qword_22DF68878);
  v3 = *(v0 + 904);
  if (v2 && v1)
  {
    v4 = *(v0 + 872);
    v5 = *(v0 + 848);
    v6 = *(v0 + 784);
    v7 = *(v0 + 776);
    v8 = *(v0 + 768);
    v9 = *(v0 + 140);
    type metadata accessor for SessionCoordinator();
    *(v0 + 336) = v9;
    *(v0 + 337) = *(v0 + 73);
    *(v0 + 340) = *(v0 + 76);
    *(v0 + 344) = v8;
    *(v0 + 352) = v7;
    *(v0 + 360) = v1;
    *(v0 + 368) = 0;
    *(v0 + 376) = 0;
    *(v0 + 384) = v3;
    *(v0 + 392) = 0;

    sub_22DEFFC78();
    sub_22DF2EB3C();
    sub_22DF633B4();

    v4(v5, v6);
    v10 = swift_task_alloc();
    *(v0 + 952) = v10;
    *v10 = v0;
    v10[1] = sub_22DF320C8;
    v11 = *(v0 + 824);

    return sub_22DF51F0C(0, v1, v11);
  }

  v13 = sub_22DF63714();
  v14 = sub_22DF63D14();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_22DEEA000, v13, v14, "reporting disabled due to startup failure.", v15, 2u);
    MEMORY[0x2318DDBE0](v15, -1, -1);
  }

  *(v0 + 1000) = 0;
  *(v0 + 992) = v3;
  *(v0 + 142) = 257;
  *(v0 + 984) = 0;
  *(v0 + 976) = v1;
  if ((*(v0 + 140) | 2) == 2)
  {
    v16 = XPCActivity.makeHandler.unsafeMutableAddressor();
    v17 = swift_allocObject();
    v17[3] = 0;
    v17[4] = 0;
    v17[2] = v1;
    swift_beginAccess();
    v18 = *v16;
    v19 = v16[1];
    *v16 = &unk_22DF68868;
    v16[1] = v17;

    sub_22DEEB93C(v18, v19);
    if (qword_27DA4CC18 != -1)
    {
      swift_once();
    }

    v20 = qword_27DA4E6B8;
    *(v0 + 1008) = qword_27DA4E6B8;
    if (v20 >> 62)
    {
      v21 = sub_22DF63E94();
      *(v0 + 1016) = v21;
      if (v21)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      *(v0 + 1016) = v21;
      if (v21)
      {
LABEL_13:
        if (v21 < 1)
        {
          __break(1u);
        }

        *(v0 + 1024) = 0;
        v22 = *(v0 + 1008);
        if ((v22 & 0xC000000000000001) != 0)
        {
          v23 = MEMORY[0x2318DCED0](0);
        }

        else
        {
          v23 = *(v22 + 32);
        }

        *(v0 + 1032) = v23;
        v24 = *v23 + 160;
        *(v0 + 1040) = *v24;
        *(v0 + 1048) = v24 & 0xFFFFFFFFFFFFLL | 0xD283000000000000;

        return MEMORY[0x2822009F8](sub_22DF32A3C, v23, 0);
      }
    }
  }

  v49 = MEMORY[0x277D84FA0];
  if (qword_27DA4CBF8 != -1)
  {
    swift_once();
  }

  if (byte_27DA4E6A8 == 1)
  {
    sub_22DF110A8(&v50, 0xD000000000000011, 0x800000022DF6F230);
  }

  if (qword_27DA4CBF0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v25 = qword_27DA4E6A0;
  v26 = sub_22DF63984();
  v27 = [v25 valueForKey_];

  if (v27)
  {
    sub_22DF63E44();
    swift_unknownObjectRelease();
    sub_22DEF1364(v0 + 528, &qword_27DA47A48, qword_22DF68550);
    sub_22DF110A8(&v50, 0xD000000000000013, 0x800000022DF6F210);
  }

  else
  {
    *(v0 + 528) = 0u;
    *(v0 + 544) = 0u;
    sub_22DEF1364(v0 + 528, &qword_27DA47A48, qword_22DF68550);
  }

  if (qword_27DA4CC00 != -1)
  {
    swift_once();
  }

  if (byte_27DA4E6A9 == 1)
  {
    sub_22DF110A8(&v50, 0x6976654474736574, 0xEA00000000006563);
  }

  if (qword_27DA4CC08 != -1)
  {
    swift_once();
  }

  if (byte_27DA4E6AA == 1)
  {
    sub_22DF110A8(&v50, 0xD000000000000014, 0x800000022DF6F1F0);
  }

  v28 = sub_22DF63714();
  v29 = sub_22DF63D24();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v52[0] = v31;
    *v30 = 136315138;
    if (*(v49 + 16))
    {
      v50 = 0x6769666E6F632820;
      v51 = 0xEA0000000000203ALL;
      *(v0 + 688) = v49;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47A60, &qword_22DF68858);
      sub_22DF35820();
      sub_22DF06E10();
      v32 = sub_22DF63B44();
      v34 = v33;

      MEMORY[0x2318DCA20](v32, v34);

      MEMORY[0x2318DCA20](41, 0xE100000000000000);

      v35 = v50;
      v36 = v51;
    }

    else
    {

      v35 = 0;
      v36 = 0xE000000000000000;
    }

    v37 = sub_22DEF0354(v35, v36, v52);

    *(v30 + 4) = v37;
    _os_log_impl(&dword_22DEEA000, v28, v29, "started CloudTelemetryService%s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v31);
    MEMORY[0x2318DDBE0](v31, -1, -1);
    MEMORY[0x2318DDBE0](v30, -1, -1);
  }

  else
  {
  }

  v38 = *(v0 + 1000);
  v39 = *(v0 + 992);
  v40 = *(v0 + 143);
  v41 = *(v0 + 140);
  v42 = *(v0 + 760);
  *(v0 + 464) = v41;
  *(v0 + 465) = *(v0 + 73);
  *(v0 + 468) = *(v0 + 76);
  v43 = *(v0 + 768);
  v44 = *(v0 + 976);
  *(v0 + 472) = v43;
  *(v0 + 488) = v44;
  *(v0 + 504) = v38;
  *(v0 + 512) = v39;
  *(v0 + 520) = v40;
  *(v0 + 400) = v41;
  *(v0 + 401) = *(v0 + 73);
  *(v0 + 404) = *(v0 + 76);
  *(v0 + 408) = v43;
  *(v0 + 424) = v44;
  *(v0 + 440) = v38;
  *(v0 + 448) = v39;
  *(v0 + 456) = v40;
  sub_22DF357B8(v0 + 464, v0 + 16);
  sub_22DF357F0(v0 + 400);
  v46 = *(v0 + 480);
  v45 = *(v0 + 496);
  v47 = *(v0 + 464);
  *(v42 + 41) = *(v0 + 505);
  v42[1] = v46;
  v42[2] = v45;
  *v42 = v47;

  v48 = *(v0 + 8);

  return v48();
}

uint64_t sub_22DF33DFC()
{
  v41 = v0;
  v40[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 928);
  *(v0 + 712) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47CC0, &qword_22DF661F0);
  if (!swift_dynamicCast() || (*(v0 + 138) = *(v0 + 137), *(v0 + 139) = 1, sub_22DF04FFC(), (sub_22DF63974() & 1) == 0))
  {
    v3 = *(v0 + 928);
    v4 = v3;
    v5 = sub_22DF63714();
    v6 = sub_22DF63D04();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v40[0] = v8;
      *v7 = 136446210;
      swift_getErrorValue();
      v9 = sub_22DF64244();
      v11 = sub_22DEF0354(v9, v10, v40);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_22DEEA000, v5, v6, "failed to open database file: %{public}s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x2318DDBE0](v8, -1, -1);
      MEMORY[0x2318DDBE0](v7, -1, -1);
    }
  }

  v12 = *(v0 + 872);
  v13 = *(v0 + 848);
  v14 = *(v0 + 816);
  v15 = *(v0 + 808);
  v16 = *(v0 + 784);
  v17 = *(v0 + 776);
  v18 = *(v0 + 768);
  v19 = *(v0 + 140);
  v39 = [*(v0 + 864) defaultManager];
  *(v0 + 208) = v19;
  *(v0 + 209) = *(v0 + 73);
  *(v0 + 212) = *(v0 + 76);
  *(v0 + 216) = v18;
  *(v0 + 224) = v17;
  *(v0 + 232) = 0u;
  *(v0 + 248) = 0u;
  *(v0 + 264) = 0;
  sub_22DEFFC78();
  sub_22DF2EB3C();
  sub_22DF633B4();

  v12(v15, v16);
  sub_22DF633D4();
  v12(v14, v16);
  v20 = sub_22DF63394();
  v12(v13, v16);
  *(v0 + 720) = 0;
  LODWORD(v13) = [v39 removeItemAtURL:v20 error:v0 + 720];

  v21 = *(v0 + 720);
  if (v13)
  {
    v22 = v21;
  }

  else
  {
    v23 = v21;
    v24 = sub_22DF63334();

    swift_willThrow();
    v25 = v24;
    v26 = sub_22DF63714();
    v27 = sub_22DF63D04();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v40[0] = v29;
      *v28 = 136446210;
      swift_getErrorValue();
      v30 = sub_22DF64244();
      v32 = sub_22DEF0354(v30, v31, v40);

      *(v28 + 4) = v32;
      _os_log_impl(&dword_22DEEA000, v26, v27, "failed to clear cache directory with error: %{public}s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x2318DDBE0](v29, -1, -1);
      MEMORY[0x2318DDBE0](v28, -1, -1);
    }

    else
    {
    }
  }

  v33 = *(v0 + 872);
  v34 = *(v0 + 848);
  v35 = *(v0 + 784);
  *(v0 + 272) = *(v0 + 140);
  *(v0 + 273) = *(v0 + 73);
  *(v0 + 276) = *(v0 + 76);
  *(v0 + 280) = *(v0 + 768);
  *(v0 + 328) = 0;
  *(v0 + 296) = 0u;
  *(v0 + 312) = 0u;
  *(v0 + 680) = 0;
  *(v0 + 752) = 0;
  sub_22DEFFC78();
  sub_22DF2EB3C();
  sub_22DF633B4();

  v33(v34, v35);
  v36 = swift_task_alloc();
  *(v0 + 1056) = v36;
  *v36 = v0;
  v36[1] = sub_22DF33308;
  v37 = *(v0 + 800);

  return DiskCache.__allocating_init(rootCacheURL:)(v37);
}

uint64_t sub_22DF34310()
{
  v44 = v0;
  v43[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 1064);

  sub_22DEF1364(v0 + 680, &qword_27DA47A70, &qword_22DF68870);
  sub_22DEF1364(v0 + 752, &qword_27DA47A78, &qword_22DF68878);
  v2 = *(v0 + 904);
  v3 = sub_22DF63714();
  v4 = sub_22DF63D14();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_22DEEA000, v3, v4, "reporting disabled due to startup failure.", v5, 2u);
    MEMORY[0x2318DDBE0](v5, -1, -1);
  }

  *(v0 + 1000) = 0;
  *(v0 + 992) = v2;
  *(v0 + 142) = 257;
  *(v0 + 976) = 0u;
  if ((*(v0 + 140) | 2) == 2)
  {
    v6 = XPCActivity.makeHandler.unsafeMutableAddressor();
    v7 = swift_allocObject();
    v7[3] = 0;
    v7[4] = 0;
    v7[2] = 0;
    swift_beginAccess();
    v8 = *v6;
    v9 = v6[1];
    *v6 = &unk_22DF68868;
    v6[1] = v7;
    sub_22DEEB93C(v8, v9);
    if (qword_27DA4CC18 != -1)
    {
      swift_once();
    }

    v10 = qword_27DA4E6B8;
    *(v0 + 1008) = qword_27DA4E6B8;
    if (v10 >> 62)
    {
      v11 = sub_22DF63E94();
      *(v0 + 1016) = v11;
      if (v11)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      *(v0 + 1016) = v11;
      if (v11)
      {
LABEL_8:
        if (v11 < 1)
        {
          __break(1u);
        }

        *(v0 + 1024) = 0;
        v12 = *(v0 + 1008);
        if ((v12 & 0xC000000000000001) != 0)
        {
          v13 = MEMORY[0x2318DCED0](0);
        }

        else
        {
          v13 = *(v12 + 32);
        }

        *(v0 + 1032) = v13;
        v14 = *v13 + 160;
        *(v0 + 1040) = *v14;
        *(v0 + 1048) = v14 & 0xFFFFFFFFFFFFLL | 0xD283000000000000;

        return MEMORY[0x2822009F8](sub_22DF32A3C, v13, 0);
      }
    }
  }

  v40 = MEMORY[0x277D84FA0];
  if (qword_27DA4CBF8 != -1)
  {
    swift_once();
  }

  if (byte_27DA4E6A8 == 1)
  {
    sub_22DF110A8(&v41, 0xD000000000000011, 0x800000022DF6F230);
  }

  if (qword_27DA4CBF0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v15 = qword_27DA4E6A0;
  v16 = sub_22DF63984();
  v17 = [v15 valueForKey_];

  if (v17)
  {
    sub_22DF63E44();
    swift_unknownObjectRelease();
    sub_22DEF1364(v0 + 528, &qword_27DA47A48, qword_22DF68550);
    sub_22DF110A8(&v41, 0xD000000000000013, 0x800000022DF6F210);
  }

  else
  {
    *(v0 + 528) = 0u;
    *(v0 + 544) = 0u;
    sub_22DEF1364(v0 + 528, &qword_27DA47A48, qword_22DF68550);
  }

  if (qword_27DA4CC00 != -1)
  {
    swift_once();
  }

  if (byte_27DA4E6A9 == 1)
  {
    sub_22DF110A8(&v41, 0x6976654474736574, 0xEA00000000006563);
  }

  if (qword_27DA4CC08 != -1)
  {
    swift_once();
  }

  if (byte_27DA4E6AA == 1)
  {
    sub_22DF110A8(&v41, 0xD000000000000014, 0x800000022DF6F1F0);
  }

  v18 = sub_22DF63714();
  v19 = sub_22DF63D24();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v43[0] = v21;
    *v20 = 136315138;
    if (*(v40 + 16))
    {
      v41 = 0x6769666E6F632820;
      v42 = 0xEA0000000000203ALL;
      *(v0 + 688) = v40;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47A60, &qword_22DF68858);
      sub_22DF35820();
      sub_22DF06E10();
      v22 = sub_22DF63B44();
      v24 = v23;

      MEMORY[0x2318DCA20](v22, v24);

      MEMORY[0x2318DCA20](41, 0xE100000000000000);

      v25 = v41;
      v26 = v42;
    }

    else
    {

      v25 = 0;
      v26 = 0xE000000000000000;
    }

    v27 = sub_22DEF0354(v25, v26, v43);

    *(v20 + 4) = v27;
    _os_log_impl(&dword_22DEEA000, v18, v19, "started CloudTelemetryService%s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v21);
    MEMORY[0x2318DDBE0](v21, -1, -1);
    MEMORY[0x2318DDBE0](v20, -1, -1);
  }

  else
  {
  }

  v28 = *(v0 + 1000);
  v29 = *(v0 + 992);
  v30 = *(v0 + 143);
  v31 = *(v0 + 140);
  v32 = *(v0 + 760);
  *(v0 + 464) = v31;
  *(v0 + 465) = *(v0 + 73);
  *(v0 + 468) = *(v0 + 76);
  v33 = *(v0 + 768);
  v34 = *(v0 + 976);
  *(v0 + 472) = v33;
  *(v0 + 488) = v34;
  *(v0 + 504) = v28;
  *(v0 + 512) = v29;
  *(v0 + 520) = v30;
  *(v0 + 400) = v31;
  *(v0 + 401) = *(v0 + 73);
  *(v0 + 404) = *(v0 + 76);
  *(v0 + 408) = v33;
  *(v0 + 424) = v34;
  *(v0 + 440) = v28;
  *(v0 + 448) = v29;
  *(v0 + 456) = v30;
  sub_22DF357B8(v0 + 464, v0 + 16);
  sub_22DF357F0(v0 + 400);
  v36 = *(v0 + 480);
  v35 = *(v0 + 496);
  v37 = *(v0 + 464);
  *(v32 + 41) = *(v0 + 505);
  v32[1] = v36;
  v32[2] = v35;
  *v32 = v37;

  v38 = *(v0 + 8);

  return v38();
}

uint64_t sub_22DF34B58()
{
  v53 = v0;
  v52 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 960);
  v2 = v1;
  v3 = sub_22DF63714();
  v4 = sub_22DF63D14();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 960);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v50 = v7;
    *v6 = 136446210;
    swift_getErrorValue();
    v8 = sub_22DF64244();
    v10 = sub_22DEF0354(v8, v9, &v50);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_22DEEA000, v3, v4, "reporting disabled due to failure setting up session coordinator. %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x2318DDBE0](v7, -1, -1);
    MEMORY[0x2318DDBE0](v6, -1, -1);
  }

  else
  {
    v11 = *(v0 + 960);
  }

  v12 = *(v0 + 904);
  v13 = *(v0 + 944);
  *(v0 + 1000) = 0;
  *(v0 + 992) = v12;
  *(v0 + 142) = 257;
  *(v0 + 984) = 0;
  *(v0 + 976) = v13;
  if ((*(v0 + 140) | 2) == 2)
  {
    v14 = XPCActivity.makeHandler.unsafeMutableAddressor();
    v15 = swift_allocObject();
    v15[3] = 0;
    v15[4] = 0;
    v15[2] = v13;
    swift_beginAccess();
    v16 = *v14;
    v17 = v14[1];
    *v14 = &unk_22DF68868;
    v14[1] = v15;

    sub_22DEEB93C(v16, v17);
    if (qword_27DA4CC18 != -1)
    {
      swift_once();
    }

    v18 = qword_27DA4E6B8;
    *(v0 + 1008) = qword_27DA4E6B8;
    if (v18 >> 62)
    {
      v19 = sub_22DF63E94();
      *(v0 + 1016) = v19;
      if (v19)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
      *(v0 + 1016) = v19;
      if (v19)
      {
LABEL_9:
        if (v19 < 1)
        {
          __break(1u);
        }

        *(v0 + 1024) = 0;
        v20 = *(v0 + 1008);
        if ((v20 & 0xC000000000000001) != 0)
        {
          v21 = MEMORY[0x2318DCED0](0);
        }

        else
        {
          v21 = *(v20 + 32);
        }

        *(v0 + 1032) = v21;
        v22 = *v21 + 160;
        *(v0 + 1040) = *v22;
        *(v0 + 1048) = v22 & 0xFFFFFFFFFFFFLL | 0xD283000000000000;

        return MEMORY[0x2822009F8](sub_22DF32A3C, v21, 0);
      }
    }
  }

  v48 = MEMORY[0x277D84FA0];
  if (qword_27DA4CBF8 != -1)
  {
    swift_once();
  }

  if (byte_27DA4E6A8 == 1)
  {
    sub_22DF110A8(&v50, 0xD000000000000011, 0x800000022DF6F230);
  }

  if (qword_27DA4CBF0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v23 = qword_27DA4E6A0;
  v24 = sub_22DF63984();
  v25 = [v23 valueForKey_];

  if (v25)
  {
    sub_22DF63E44();
    swift_unknownObjectRelease();
    sub_22DEF1364(v0 + 528, &qword_27DA47A48, qword_22DF68550);
    sub_22DF110A8(&v50, 0xD000000000000013, 0x800000022DF6F210);
  }

  else
  {
    *(v0 + 528) = 0u;
    *(v0 + 544) = 0u;
    sub_22DEF1364(v0 + 528, &qword_27DA47A48, qword_22DF68550);
  }

  if (qword_27DA4CC00 != -1)
  {
    swift_once();
  }

  if (byte_27DA4E6A9 == 1)
  {
    sub_22DF110A8(&v50, 0x6976654474736574, 0xEA00000000006563);
  }

  if (qword_27DA4CC08 != -1)
  {
    swift_once();
  }

  if (byte_27DA4E6AA == 1)
  {
    sub_22DF110A8(&v50, 0xD000000000000014, 0x800000022DF6F1F0);
  }

  v26 = sub_22DF63714();
  v27 = sub_22DF63D24();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v49 = v29;
    *v28 = 136315138;
    if (*(v48 + 16))
    {
      v50 = 0x6769666E6F632820;
      v51 = 0xEA0000000000203ALL;
      *(v0 + 688) = v48;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47A60, &qword_22DF68858);
      sub_22DF35820();
      sub_22DF06E10();
      v30 = sub_22DF63B44();
      v32 = v31;

      MEMORY[0x2318DCA20](v30, v32);

      MEMORY[0x2318DCA20](41, 0xE100000000000000);

      v33 = v50;
      v34 = v51;
    }

    else
    {

      v33 = 0;
      v34 = 0xE000000000000000;
    }

    v35 = sub_22DEF0354(v33, v34, &v49);

    *(v28 + 4) = v35;
    _os_log_impl(&dword_22DEEA000, v26, v27, "started CloudTelemetryService%s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x2318DDBE0](v29, -1, -1);
    MEMORY[0x2318DDBE0](v28, -1, -1);
  }

  else
  {
  }

  v36 = *(v0 + 1000);
  v37 = *(v0 + 992);
  v38 = *(v0 + 143);
  v39 = *(v0 + 140);
  v40 = *(v0 + 760);
  *(v0 + 464) = v39;
  *(v0 + 465) = *(v0 + 73);
  *(v0 + 468) = *(v0 + 76);
  v41 = *(v0 + 768);
  v42 = *(v0 + 976);
  *(v0 + 472) = v41;
  *(v0 + 488) = v42;
  *(v0 + 504) = v36;
  *(v0 + 512) = v37;
  *(v0 + 520) = v38;
  *(v0 + 400) = v39;
  *(v0 + 401) = *(v0 + 73);
  *(v0 + 404) = *(v0 + 76);
  *(v0 + 408) = v41;
  *(v0 + 424) = v42;
  *(v0 + 440) = v36;
  *(v0 + 448) = v37;
  *(v0 + 456) = v38;
  sub_22DF357B8(v0 + 464, v0 + 16);
  sub_22DF357F0(v0 + 400);
  v44 = *(v0 + 480);
  v43 = *(v0 + 496);
  v45 = *(v0 + 464);
  *(v40 + 41) = *(v0 + 505);
  v40[1] = v44;
  v40[2] = v43;
  *v40 = v45;

  v46 = *(v0 + 8);

  return v46();
}

uint64_t sub_22DF35414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  return MEMORY[0x2822009F8](sub_22DF35438, 0, 0);
}

uint64_t sub_22DF35438()
{
  v1 = v0[2];
  if (type metadata accessor for SubmitEventsActivity() == v1)
  {
    v4 = v0[4];
    v3 = v0[5];
    v5 = v0[3];

    v6 = sub_22DEEC750(v5, v4, v3);
    v7 = &unk_27DA47A90;
    v8 = type metadata accessor for SubmitEventsActivity;
    v9 = &unk_22DF65448;
  }

  else if (type metadata accessor for CacheCleanupActivity() == v1)
  {

    v6 = sub_22DF27764(v10);
    v7 = &unk_27DA47AA0;
    v8 = type metadata accessor for CacheCleanupActivity;
    v9 = &unk_22DF69B88;
  }

  else
  {
    if (type metadata accessor for PostInstallActivity() != v1)
    {
      return sub_22DF64004();
    }

    v6 = sub_22DF05BD4();
    v7 = &unk_27DA47A98;
    v8 = type metadata accessor for PostInstallActivity;
    v9 = &unk_22DF66468;
  }

  v11 = sub_22DF35770(v7, v8, v9);
  v12 = v0[1];

  return v12(v6, v11);
}

uint64_t sub_22DF35618()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47A88, &qword_22DF68948);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_22DF68820;
  type metadata accessor for XPCActivity();
  v1 = type metadata accessor for SubmitEventsActivity();
  v2 = sub_22DF35770(&qword_27DA47A90, type metadata accessor for SubmitEventsActivity, &unk_22DF65448);
  *(v0 + 32) = XPCActivity.__allocating_init(handlerType:)(v1, v2);
  v3 = type metadata accessor for PostInstallActivity();
  v4 = sub_22DF35770(&qword_27DA47A98, type metadata accessor for PostInstallActivity, &unk_22DF66468);
  *(v0 + 40) = XPCActivity.__allocating_init(handlerType:)(v3, v4);
  v5 = type metadata accessor for CacheCleanupActivity();
  v6 = sub_22DF35770(&qword_27DA47AA0, type metadata accessor for CacheCleanupActivity, &unk_22DF69B88);
  result = XPCActivity.__allocating_init(handlerType:)(v5, v6);
  *(v0 + 48) = result;
  qword_27DA4E6B8 = v0;
  return result;
}

uint64_t sub_22DF35770(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_22DF35820()
{
  result = qword_27DA47A68;
  if (!qword_27DA47A68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DA47A60, &qword_22DF68858);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA47A68);
  }

  return result;
}

uint64_t sub_22DF35884(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22DF35934;

  return sub_22DF35414(a1, v8, v9, v4, v5, v6);
}

uint64_t sub_22DF35934(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

unint64_t sub_22DF35A3C()
{
  result = qword_27DA47A80;
  if (!qword_27DA47A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA47A80);
  }

  return result;
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_22DF35ABC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 57))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_22DF35B18(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

__n128 sub_22DF35BA0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v10 = sub_22DF2E5EC();
  swift_beginAccess();
  v11 = 0;
  if (*v10 == 1)
  {
    v12 = sub_22DF2E958();
    v11 = 5;
    if (!*v12)
    {
      v11 = 1;
    }
  }

  *a5 = v11;
  v13 = *(a3 + 16);
  *(a5 + 8) = *a3;
  *(a5 + 24) = v13;
  result = *(a3 + 32);
  *(a5 + 40) = result;
  *(a5 + 56) = *(a3 + 48);
  *(a5 + 64) = a4 & 1;
  *(a5 + 72) = a1;
  *(a5 + 80) = a2;
  return result;
}

unint64_t sub_22DF35C50()
{
  v1 = type metadata accessor for ServiceEventValue(0);
  v2 = MEMORY[0x28223BE20](v1);
  v4 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = (v22 - v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47AB8, &unk_22DF689C0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47620, &unk_22DF660E0);
  v8 = *(*(v7 - 8) + 72);
  v9 = (*(*(v7 - 8) + 80) + 32) & ~*(*(v7 - 8) + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_22DF689A0;
  v11 = (v10 + v9);
  v12 = *(v7 + 48);
  *v11 = 0xD00000000000001BLL;
  v11[1] = 0x800000022DF6F280;
  v24 = *(v0 + 24);
  *(v11 + v12) = v24;
  swift_storeEnumTagMultiPayload();
  v13 = (v11 + v8);
  v14 = *(v7 + 48);
  *v13 = 0xD00000000000001FLL;
  v13[1] = 0x800000022DF6F2A0;
  *(v13 + v14) = *v0;
  swift_storeEnumTagMultiPayload();
  v15 = (v11 + 2 * v8);
  v16 = *(v7 + 48);
  *v15 = 0xD000000000000017;
  v15[1] = 0x800000022DF6F2C0;
  v23 = *(v0 + 8);
  *(v15 + v16) = v23;
  swift_storeEnumTagMultiPayload();
  sub_22DF051C0(&v24, v22);
  sub_22DF051C0(&v23, v22);
  v17 = sub_22DEFF370(v10);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  if (*(v0 + 64))
  {
    v18 = *(v0 + 72);
    v19 = *(v0 + 80);
    *v6 = v18;
    v6[1] = v19;
    swift_storeEnumTagMultiPayload();
    sub_22DEFE894(v6, v4);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22[0] = v17;
    sub_22DEFDF04(v4, 0xD000000000000010, 0x800000022DF6F2E0, isUniquelyReferenced_nonNull_native);
    return v22[0];
  }

  return v17;
}

void sub_22DF35F28()
{
  v0 = MobileGestalt_get_current_device();
  if (!v0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v1 = v0;
  v2 = MobileGestalt_copy_deviceName_obj();
  if (!v2)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v3 = v2;
  v4 = sub_22DF639B4();
  v6 = v5;

  v7 = MobileGestalt_copy_marketingProductName_obj();
  if (!v7)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v8 = v7;
  v9 = sub_22DF639B4();
  v11 = v10;

  v12 = MobileGestalt_copy_productType_obj();
  if (!v12)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v13 = v12;
  v14 = sub_22DF639B4();
  v16 = v15;

  v17 = MobileGestalt_copy_productVersion_obj();
  if (!v17)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v18 = v17;
  v41 = sub_22DF639B4();
  v20 = v19;

  v21 = MobileGestalt_copy_buildVersion_obj();
  if (!v21)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22 = v21;
  v39 = v20;
  v40 = v14;
  v37 = sub_22DF639B4();
  v38 = v23;

  v24 = sub_22DF2E5EC();
  swift_beginAccess();
  v25 = v16;
  v26 = v9;
  v27 = v11;
  if (*v24 != 1)
  {
    v30 = v4;
    v31 = 0;
    v33 = 0xE000000000000000;
    goto LABEL_11;
  }

  v28 = MobileGestalt_copy_serialNumber_obj();
  if (v28)
  {
    v29 = v28;
    v30 = v4;
    v31 = sub_22DF639B4();
    v33 = v32;

LABEL_11:
    v34 = _s19CloudTelemetryTools21AllEventFieldProviderV17getProjectVersionSSyFZ_0();
    v36 = v35;

    qword_27DA4CD28 = v30;
    qword_27DA4CD30 = v6;
    qword_27DA4CD38 = v26;
    qword_27DA4CD40 = v27;
    qword_27DA4CD48 = v40;
    qword_27DA4CD50 = v25;
    qword_27DA4CD58 = v41;
    qword_27DA4CD60 = v39;
    qword_27DA4CD68 = v37;
    qword_27DA4CD70 = v38;
    qword_27DA4CD78 = v34;
    qword_27DA4CD80 = v36;
    qword_27DA4CD88 = v31;
    qword_27DA4CD90 = v33;
    return;
  }

LABEL_18:
  __break(1u);
}

void sub_22DF36158()
{
  v0 = [objc_opt_self() automatedDeviceGroup];
  if (v0)
  {
    v1 = v0;
    v2 = sub_22DF639B4();
    v4 = v3;
  }

  else
  {
    v2 = 0;
    v4 = 0;
  }

  qword_27DA4CDA0 = v2;
  qword_27DA4CDA8 = v4;
}

void sub_22DF361D0()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_22DF63984();
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    v3 = sub_22DF63984();
    v4 = [v2 BOOLForKey_];
  }

  else
  {
    v4 = 2;
  }

  byte_27DA4CDB8 = v4;
}

uint64_t sub_22DF3629C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_22DF642A4();
  sub_22DF63A54();
  v6 = sub_22DF642D4();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_22DF64184() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

double sub_22DF36394@<D0>(uint64_t *a1@<X8>)
{
  if (qword_27DA4CD98 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v2 = qword_27DA4CDA0;
  v3 = qword_27DA4CDA8;
  a1[3] = &type metadata for AllEventFieldProvider.OSASystemConfigurationFields;
  a1[4] = &off_2841953C0;
  *a1 = v2;
  a1[1] = v3;

  return result;
}

uint64_t sub_22DF36420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[13] = v13;
  v8[14] = v14;
  v8[11] = a7;
  v8[12] = a8;
  v8[9] = a5;
  v8[10] = a6;
  v8[7] = a3;
  v8[8] = a4;
  v8[5] = a1;
  v8[6] = a2;
  v9 = sub_22DF63594();
  v8[15] = v9;
  v8[16] = *(v9 - 8);
  v8[17] = swift_task_alloc();
  v10 = sub_22DF636A4();
  v8[18] = v10;
  v8[19] = *(v10 - 8);
  v8[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22DF36554, 0, 0);
}

uint64_t sub_22DF36554()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v4 = *(v0 + 40);
  v3 = *(v0 + 48);
  v5 = *v3;
  v6 = v3[1];
  v7 = v3[2];
  *(v4 + 96) = *(v3 + 6);
  *(v4 + 64) = v6;
  *(v4 + 80) = v7;
  *(v4 + 48) = v5;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v8 = sub_22DF2E5EC();
  swift_beginAccess();
  v9 = 0;
  if (*v8 == 1)
  {
    v10 = sub_22DF2E958();
    v9 = 5;
    if (!*v10)
    {
      v9 = 1;
    }
  }

  v12 = *(v0 + 152);
  v11 = *(v0 + 160);
  v13 = *(v0 + 136);
  v14 = *(v0 + 120);
  v15 = *(v0 + 128);
  v25 = *(v0 + 112);
  v23 = *(v0 + 144);
  v24 = *(v0 + 104);
  v22 = *(v0 + 88);
  v17 = *(v0 + 56);
  v16 = *(v0 + 64);
  v18 = *(v0 + 40);
  *v18 = v9;
  sub_22DF63694();
  sub_22DF63584();
  v19 = sub_22DF63684();
  (*(v15 + 8))(v13, v14);
  (*(v12 + 8))(v11, v23);
  *(v18 + 8) = v19;
  *(v18 + 32) = v17;
  *(v18 + 40) = v16;
  *(v18 + 104) = v22;
  *(v18 + 120) = v24;
  sub_22DF07128(v25, v18 + 128);

  v20 = *(v0 + 8);

  return v20();
}

unint64_t sub_22DF366D8()
{
  v1 = v0;
  v2 = type metadata accessor for ServiceEventValue(0);
  v3 = MEMORY[0x28223BE20](v2);
  v63 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v62 = (&v60 - v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47AB8, &unk_22DF689C0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47620, &unk_22DF660E0);
  v7 = *(*(v6 - 8) + 72);
  v8 = (*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_22DF689B0;
  v61 = v9;
  v10 = (v9 + v8);
  v11 = (v9 + v8 + *(v6 + 48));
  *v10 = 0x7265646E65735FLL;
  v10[1] = 0xE700000000000000;
  v12 = *(v1 + 48);
  v60 = *(v1 + 56);
  v13 = v60;
  *v11 = v12;
  v11[1] = v13;
  swift_storeEnumTagMultiPayload();
  v14 = (v10 + v7);
  v15 = (v10 + v7 + *(v6 + 48));
  *v14 = 0x7954746E6576655FLL;
  v14[1] = 0xEA00000000006570;
  v16 = *(v1 + 72);
  *v15 = *(v1 + 64);
  v15[1] = v16;
  swift_storeEnumTagMultiPayload();
  v17 = (v10 + 2 * v7);
  v18 = (v17 + *(v6 + 48));
  *v17 = 0x6E6F69737365735FLL;
  v17[1] = 0xEA00000000004449;
  v19 = *(v1 + 24);
  *v18 = *(v1 + 16);
  v18[1] = v19;
  swift_storeEnumTagMultiPayload();
  v20 = (v10 + 3 * v7);
  v21 = *(v6 + 48);
  *v20 = 0x616E7265746E695FLL;
  v20[1] = 0xE90000000000006CLL;
  *(v20 + v21) = *v1;
  swift_storeEnumTagMultiPayload();
  v22 = (v10 + 4 * v7);
  v23 = *(v6 + 48);
  *v22 = 0x6E6F7A656D69745FLL;
  v22[1] = 0xEF74657366664F65;
  *(v22 + v23) = *(v1 + 8);
  swift_storeEnumTagMultiPayload();
  v24 = (v10 + 5 * v7);
  v25 = (v24 + *(v6 + 48));
  *v24 = 0x6449746E65696C63;
  v24[1] = 0xE800000000000000;
  v26 = *(v1 + 40);
  *v25 = *(v1 + 32);
  v25[1] = v26;
  swift_storeEnumTagMultiPayload();
  v27 = v10 + 6 * v7;
  v28 = &v27[*(v6 + 48)];
  strcpy(v27, "_productFamily");
  v27[15] = -18;
  v29 = qword_27DA4CD20;

  if (v29 != -1)
  {
    swift_once();
  }

  v30 = qword_27DA4CD30;
  *v28 = qword_27DA4CD28;
  *(v28 + 1) = v30;
  swift_storeEnumTagMultiPayload();
  v31 = (v10 + 7 * v7);
  v32 = (v31 + *(v6 + 48));
  *v31 = 0x656D614E736F5FLL;
  v31[1] = 0xE700000000000000;
  v33 = qword_27DA4CD40;
  *v32 = qword_27DA4CD38;
  v32[1] = v33;
  swift_storeEnumTagMultiPayload();
  v34 = (&v10[v7] + *(v6 + 48));
  strcpy(&v10[v7], "_productModel");
  HIWORD(v10[v7 + 1]) = -4864;
  v35 = qword_27DA4CD50;
  *v34 = qword_27DA4CD48;
  v34[1] = v35;
  swift_storeEnumTagMultiPayload();
  v36 = (v10 + 9 * v7);
  v37 = (v36 + *(v6 + 48));
  *v36 = 0x6973726556736F5FLL;
  v36[1] = 0xEA00000000006E6FLL;
  v38 = qword_27DA4CD60;
  *v37 = qword_27DA4CD58;
  v37[1] = v38;
  swift_storeEnumTagMultiPayload();
  v39 = (v10 + 10 * v7);
  v40 = (v39 + *(v6 + 48));
  *v39 = 0x646C6975625FLL;
  v39[1] = 0xE600000000000000;
  v41 = qword_27DA4CD70;
  *v40 = qword_27DA4CD68;
  v40[1] = v41;
  swift_storeEnumTagMultiPayload();
  v42 = (v10 + 11 * v7);
  v43 = (v42 + *(v6 + 48));
  *v42 = 0x5674726F7065725FLL;
  v42[1] = 0xEB00000000737265;
  v44 = qword_27DA4CD80;
  *v43 = qword_27DA4CD78;
  v43[1] = v44;
  swift_storeEnumTagMultiPayload();

  v45 = sub_22DEFF370(v61);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  if (*(v1 + 104) && (v65 = *(v1 + 104), v66 = *(v1 + 112), v46 = sub_22DF37634(&type metadata for EventAllowFilter, &off_2841953D0), v47 = sub_22DF3629C(0xD000000000000015, 0x800000022DF6F300, v46), , (v47 & 1) != 0) && (v48 = *(v1 + 152), v49 = *(v1 + 160), __swift_project_boxed_opaque_existential_1((v1 + 128), v48), v50 = (*(v49 + 8))(v48, v49), v51))
  {
    v52 = v62;
    *v62 = v50;
    *(v52 + 8) = v51;
    swift_storeEnumTagMultiPayload();
    v53 = v63;
    sub_22DEFE894(v52, v63);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v65 = v45;
    sub_22DEFDF04(v53, 0xD000000000000015, 0x800000022DF6F300, isUniquelyReferenced_nonNull_native);
    v45 = v65;
  }

  else
  {
    v52 = v62;
    v53 = v63;
  }

  if (qword_27DA4CDB0 != -1)
  {
    swift_once();
  }

  if (byte_27DA4CDB8 != 2)
  {
    *v52 = byte_27DA4CDB8 & 1;
    swift_storeEnumTagMultiPayload();
    sub_22DEFE894(v52, v53);
    v55 = swift_isUniquelyReferenced_nonNull_native();
    v65 = v45;
    sub_22DEFDF04(v53, 0x654465726F74735FLL, 0xEE0065646F4D6F6DLL, v55);
    v45 = v65;
  }

  v56 = sub_22DF2E5EC();
  swift_beginAccess();
  if (*v56 == 1)
  {
    v57 = qword_27DA4CD90;
    *v52 = qword_27DA4CD88;
    *(v52 + 8) = v57;
    swift_storeEnumTagMultiPayload();
    sub_22DEFE894(v52, v53);

    v58 = swift_isUniquelyReferenced_nonNull_native();
    v64 = v45;
    sub_22DEFDF04(v53, 0x754E6C6169726553, 0xE90000000000006DLL, v58);
    return v64;
  }

  return v45;
}

unint64_t sub_22DF36E80()
{
  v2 = *v0;
  v1 = v0[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47AB8, &unk_22DF689C0);
  v3 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47620, &unk_22DF660E0) - 8);
  v4 = (*(*v3 + 80) + 32) & ~*(*v3 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_22DF65900;
  v6 = (v5 + v4);
  v7 = (v6 + v3[14]);
  *v6 = 0x656C61636F4CLL;
  v6[1] = 0xE600000000000000;
  *v7 = v2;
  v7[1] = v1;
  type metadata accessor for ServiceEventValue(0);
  swift_storeEnumTagMultiPayload();

  v8 = sub_22DEFF370(v5);
  swift_setDeallocating();
  sub_22DEF1364(v6, &qword_27DA47620, &unk_22DF660E0);
  swift_deallocClassInstance();
  return v8;
}

unint64_t sub_22DF36FD8()
{
  v1 = *v0;
  v3 = *(v0 + 1);
  v2 = *(v0 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47AB8, &unk_22DF689C0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47620, &unk_22DF660E0);
  v5 = *(*(v4 - 8) + 72);
  v6 = (*(*(v4 - 8) + 80) + 32) & ~*(*(v4 - 8) + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_22DF65910;
  v8 = (v7 + v6);
  v9 = (v8 + *(v4 + 48));
  *v8 = 0x67616265726F7453;
  v8[1] = 0xEF6E6F6973726556;
  *v9 = v3;
  v9[1] = v2;
  type metadata accessor for ServiceEventValue(0);
  swift_storeEnumTagMultiPayload();
  v10 = (v8 + v5);
  v11 = *(v4 + 48);
  *v10 = 0xD000000000000013;
  v10[1] = 0x800000022DF6F320;
  *(v10 + v11) = v1;
  swift_storeEnumTagMultiPayload();

  v12 = sub_22DEFF370(v7);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v12;
}

uint64_t _s19CloudTelemetryTools21AllEventFieldProviderV17getProjectVersionSSyFZ_0()
{
  v0 = 960051513;
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 infoDictionary];

  if (v2)
  {
    v3 = sub_22DF638E4();

    if (*(v3 + 16) && (v4 = sub_22DEF08FC(0x656C646E75424643, 0xEF6E6F6973726556), (v5 & 1) != 0))
    {
      sub_22DEF12A0(*(v3 + 56) + 32 * v4, v8);

      if (swift_dynamicCast())
      {
        return v7;
      }
    }

    else
    {
    }
  }

  return v0;
}

double sub_22DF372A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
  }

  return result;
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

uint64_t sub_22DF37310(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_22DF37358(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t get_enum_tag_for_layout_string_19CloudTelemetryTools16EventAllowFilterVSg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy168_8(uint64_t a1, __int128 *a2)
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
  *(a1 + 160) = *(a2 + 20);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_22DF37410(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 168))
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

uint64_t sub_22DF37458(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
    *(result + 120) = 0u;
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
      *(result + 168) = 1;
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

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22DF374E0(uint64_t a1, int a2)
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

uint64_t sub_22DF37528(uint64_t result, int a2, int a3)
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

uint64_t sub_22DF37578(uint64_t a1, unsigned int a2)
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

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_22DF375D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
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

uint64_t sub_22DF37634(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 8))(a1);

  return v2;
}

uint64_t sub_22DF37688(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v15 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    sub_22DF110A8(&v14, v12, v13);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v15;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22DF3778C()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_22DF377C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (qword_27DA4CDC0 != -1)
  {
    swift_once();
  }

  v6 = qword_27DA4E6C0;

  result = sub_22DF37688(v7, v6);
  *a3 = a1;
  a3[1] = a2;
  a3[2] = result;
  return result;
}

uint64_t sub_22DF378AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v90 = a3;
  v94 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47BC0, &unk_22DF65300);
  MEMORY[0x28223BE20](v4 - 8);
  v105 = &v83 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47628, &unk_22DF68C40);
  MEMORY[0x28223BE20](v6);
  v8 = &v83 - v7;
  v9 = type metadata accessor for ServiceEventValue(0);
  v104 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v100 = &v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v99 = (&v83 - v13);
  v14 = MEMORY[0x28223BE20](v12);
  v98 = (&v83 - v15);
  v16 = MEMORY[0x28223BE20](v14);
  v97 = (&v83 - v17);
  v18 = MEMORY[0x28223BE20](v16);
  v102 = (&v83 - v19);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v83 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v84 = &v83 - v24;
  MEMORY[0x28223BE20](v23);
  v26 = &v83 - v25;
  v27 = *(a2 + 56);
  v88 = a2 + 56;
  v28 = 1 << *(a2 + 32);
  v29 = -1;
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  v30 = v29 & v27;
  v87 = (v28 + 63) >> 6;
  v31 = a2;

  v32 = 0;
  v33 = MEMORY[0x277D84F90];
  v34 = v94;
  v103 = v6;
  v85 = a2;
LABEL_4:
  v96 = v33;
  result = v31;
  v36 = v34;
  while (v30)
  {
    v37 = v30;
LABEL_11:
    v30 = (v37 - 1) & v37;
    v39 = *(v36 + 16);
    if (*(v39 + 16))
    {
      v95 = (v37 - 1) & v37;
      v40 = (*(result + 48) + ((v32 << 10) | (16 * __clz(__rbit64(v37)))));
      v41 = *v40;
      v42 = v40[1];
      v43 = result;

      v89 = v41;
      v44 = sub_22DEF08FC(v41, v42);
      if (v45)
      {
        v86 = v42;
        v46 = *(v39 + 56);
        v110 = *(v104 + 72);
        v47 = v84;
        sub_22DEF0974(v46 + v110 * v44, v84);
        sub_22DEFE894(v47, v26);
        v48 = *(v90 + 16);
        if (!v48)
        {
LABEL_42:
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v31 = v85;
            v33 = v96;
          }

          else
          {
            v33 = sub_22DF03FB0(0, *(v96 + 2) + 1, 1, v96);
            v31 = v85;
          }

          v68 = *(v33 + 2);
          v67 = *(v33 + 3);
          v110 = v68 + 1;
          if (v68 >= v67 >> 1)
          {
            v33 = sub_22DF03FB0((v67 > 1), v68 + 1, 1, v33);
          }

          sub_22DF1904C(v26);
          *(v33 + 2) = v110;
          v69 = &v33[16 * v68];
          v70 = v86;
          *(v69 + 4) = v89;
          *(v69 + 5) = v70;
          v34 = v94;
          v30 = v95;
          goto LABEL_4;
        }

        v49 = v90 + ((*(v104 + 80) + 32) & ~*(v104 + 80));
LABEL_18:
        sub_22DEF0974(v49, v22);
        v50 = &v8[*(v6 + 48)];
        sub_22DEF0974(v22, v8);
        sub_22DEF0974(v26, v50);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload <= 1)
        {
          v55 = v6;
          v56 = v26;
          v57 = v102;
          if (!EnumCaseMultiPayload)
          {
            sub_22DEF0974(v8, v102);
            v101 = v57[1];
            if (!swift_getEnumCaseMultiPayload())
            {
              v92 = *v57;
              v91 = sub_22DF63A24();
              v64 = v63;
              v93 = v63;

              v108 = v91;
              v109 = v64;
              v92 = sub_22DF63A24();
              v66 = v65;

              v106 = v92;
              v107 = v66;
              sub_22DF06E10();
              LODWORD(v101) = sub_22DF63E34();

              sub_22DF1904C(v22);
              sub_22DF1904C(v8);
              v26 = v56;
              v6 = v103;
              if (v101)
              {
LABEL_40:
                sub_22DF1904C(v26);

                v36 = v94;
                v30 = v95;
                result = v85;
                continue;
              }

              goto LABEL_17;
            }

            sub_22DF1904C(v22);

            v26 = v56;
            v6 = v103;
            goto LABEL_16;
          }

          v26 = v56;
          v6 = v55;
          if (EnumCaseMultiPayload != 1)
          {
            goto LABEL_15;
          }

          sub_22DF1904C(v22);
          sub_22DEF0974(v8, v97);
          if (swift_getEnumCaseMultiPayload() != 1)
          {
            goto LABEL_16;
          }

          v58 = v97;
        }

        else
        {
          if (EnumCaseMultiPayload != 2)
          {
            if (EnumCaseMultiPayload == 3)
            {
              sub_22DF1904C(v22);
              sub_22DEF0974(v8, v99);
              if (swift_getEnumCaseMultiPayload() == 3)
              {
                v61 = *v99;
                v62 = *v50;
                sub_22DF1904C(v8);
                if (v61 == v62)
                {
                  goto LABEL_40;
                }

                goto LABEL_17;
              }

              goto LABEL_16;
            }

            if (EnumCaseMultiPayload == 4)
            {
              sub_22DF1904C(v22);
              sub_22DEF0974(v8, v100);
              if (swift_getEnumCaseMultiPayload() == 4)
              {
                v52 = *v100;
                v53 = *v50;
                sub_22DF1904C(v8);
                v54 = v52 == v53;
LABEL_31:
                v6 = v103;
                if (v54)
                {
                  goto LABEL_40;
                }

LABEL_17:
                v49 += v110;
                if (!--v48)
                {
                  goto LABEL_42;
                }

                goto LABEL_18;
              }

LABEL_16:
              sub_22DEF1364(v8, &qword_27DA47628, &unk_22DF68C40);
              goto LABEL_17;
            }

LABEL_15:
            sub_22DF1904C(v22);
            goto LABEL_16;
          }

          sub_22DF1904C(v22);
          sub_22DEF0974(v8, v98);
          if (swift_getEnumCaseMultiPayload() != 2)
          {
            goto LABEL_16;
          }

          v58 = v98;
        }

        v59 = *v58;
        v60 = *v50;
        sub_22DF1904C(v8);
        v54 = v59 == *&v60;
        goto LABEL_31;
      }

      result = v43;
      v36 = v94;
      v30 = v95;
    }
  }

  while (1)
  {
    v38 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      __break(1u);
      return result;
    }

    if (v38 >= v87)
    {
      break;
    }

    v37 = *(v88 + 8 * v38);
    ++v32;
    if (v37)
    {
      v32 = v38;
      goto LABEL_11;
    }
  }

  v71 = *(v96 + 2);
  if (v71)
  {
    v72 = (v104 + 56);
    v73 = (v96 + 40);

    v74 = v110;
    do
    {
      v77 = *(v73 - 1);
      v78 = *v73;

      v79 = sub_22DEF08FC(v77, v78);
      v81 = v80;

      if (v81)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v108 = v74;
        v76 = v105;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_22DEFD638();
          v74 = v108;
        }

        sub_22DEFE894(*(v74 + 56) + *(v104 + 72) * v79, v76);
        sub_22DEFDD18(v79, v74);
        v75 = 0;
      }

      else
      {
        v75 = 1;
        v76 = v105;
      }

      (*v72)(v76, v75, 1, v9);
      sub_22DEF1364(v76, &qword_27DA47BC0, &unk_22DF65300);
      v73 += 2;
      --v71;
    }

    while (v71);

    v36 = v94;
  }

  else
  {
    v74 = *(v36 + 16);
  }

  *(v36 + 16) = v74;
  return result;
}

void sub_22DF38168(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v85 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47BC0, &unk_22DF65300);
  MEMORY[0x28223BE20](v5 - 8);
  v97 = &v75 - v6;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47628, &unk_22DF68C40);
  MEMORY[0x28223BE20](v95);
  v8 = &v75 - v7;
  v9 = type metadata accessor for ServiceEventValue(0);
  v94 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v91 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v90 = (&v75 - v13);
  v14 = MEMORY[0x28223BE20](v12);
  v89 = (&v75 - v15);
  v16 = MEMORY[0x28223BE20](v14);
  v88 = (&v75 - v17);
  v18 = MEMORY[0x28223BE20](v16);
  v92 = (&v75 - v19);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v75 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v76 = &v75 - v24;
  MEMORY[0x28223BE20](v23);
  v102 = &v75 - v25;
  v26 = *(a2 + 56);
  v84 = a2 + 56;
  v27 = 1 << *(a2 + 32);
  v28 = -1;
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  v29 = v28 & v26;
  v83 = (v27 + 63) >> 6;

  v30 = 0;
  v86 = MEMORY[0x277D84F90];
  v82 = a1;
  v77 = a2;
  while (v29)
  {
    v31 = v29;
LABEL_11:
    v29 = (v31 - 1) & v31;
    v33 = *(a1 + 16);
    if (!*(v33 + 16))
    {
      continue;
    }

    v87 = (v31 - 1) & v31;
    v34 = (*(a2 + 48) + ((v30 << 10) | (16 * __clz(__rbit64(v31)))));
    v35 = *v34;
    v36 = v34[1];

    v81 = v35;
    v37 = sub_22DEF08FC(v35, v36);
    if ((v38 & 1) == 0)
    {

      v29 = v87;
      continue;
    }

    v39 = *(v33 + 56);
    v96 = *(v94 + 72);
    v40 = v76;
    sub_22DEF0974(v39 + v96 * v37, v76);
    sub_22DEFE894(v40, v102);
    v41 = *(v85 + 16);
    if (!v41)
    {
LABEL_45:

      sub_22DF1904C(v102);
      a1 = v82;
      goto LABEL_46;
    }

    v42 = v85 + ((*(v94 + 80) + 32) & ~*(v94 + 80));
    v93 = v36;
    while (1)
    {
      sub_22DEF0974(v42, v22);
      v43 = &v8[*(v95 + 48)];
      sub_22DEF0974(v22, v8);
      sub_22DEF0974(v102, v43);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 1)
      {
        break;
      }

      if (EnumCaseMultiPayload == 2)
      {
        sub_22DF1904C(v22);
        sub_22DEF0974(v8, v89);
        if (swift_getEnumCaseMultiPayload() != 2)
        {
          goto LABEL_16;
        }

        v49 = v89;
LABEL_30:
        v50 = *v49;
        v51 = *v43;
        sub_22DF1904C(v8);
        v47 = v50 == *&v51;
LABEL_31:
        v36 = v93;
        if (v47)
        {
          goto LABEL_40;
        }

        goto LABEL_17;
      }

      if (EnumCaseMultiPayload != 3)
      {
        if (EnumCaseMultiPayload != 4)
        {
          goto LABEL_15;
        }

        sub_22DF1904C(v22);
        sub_22DEF0974(v8, v91);
        if (swift_getEnumCaseMultiPayload() != 4)
        {
          goto LABEL_16;
        }

        v45 = *v91;
        v46 = *v43;
        sub_22DF1904C(v8);
        v47 = v45 == v46;
        goto LABEL_31;
      }

      sub_22DF1904C(v22);
      sub_22DEF0974(v8, v90);
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_16;
      }

      v52 = *v90;
      v53 = *v43;
      sub_22DF1904C(v8);
      if (v52 == v53)
      {
        goto LABEL_40;
      }

LABEL_17:
      v42 += v96;
      if (!--v41)
      {
        goto LABEL_45;
      }
    }

    v48 = v92;
    if (EnumCaseMultiPayload)
    {
      v36 = v93;
      if (EnumCaseMultiPayload != 1)
      {
LABEL_15:
        sub_22DF1904C(v22);
LABEL_16:
        sub_22DEF1364(v8, &qword_27DA47628, &unk_22DF68C40);
        goto LABEL_17;
      }

      sub_22DF1904C(v22);
      sub_22DEF0974(v8, v88);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_16;
      }

      v49 = v88;
      goto LABEL_30;
    }

    sub_22DEF0974(v8, v92);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_22DF1904C(v22);

      v36 = v93;
      goto LABEL_16;
    }

    v79 = *v48;
    v78 = sub_22DF63A24();
    v55 = v54;
    v80 = v54;

    v100 = v78;
    v101 = v55;
    v56 = sub_22DF63A24();
    v58 = v57;

    v98 = v56;
    v99 = v58;
    sub_22DF06E10();
    LOBYTE(v56) = sub_22DF63E34();

    sub_22DF1904C(v22);
    sub_22DF1904C(v8);
    v36 = v93;
    if ((v56 & 1) == 0)
    {
      goto LABEL_17;
    }

LABEL_40:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v86 = sub_22DF03FB0(0, *(v86 + 2) + 1, 1, v86);
    }

    a1 = v82;
    v60 = *(v86 + 2);
    v59 = *(v86 + 3);
    if (v60 >= v59 >> 1)
    {
      v86 = sub_22DF03FB0((v59 > 1), v60 + 1, 1, v86);
    }

    sub_22DF1904C(v102);
    v61 = v86;
    *(v86 + 2) = v60 + 1;
    v62 = &v61[16 * v60];
    *(v62 + 4) = v81;
    *(v62 + 5) = v36;
LABEL_46:
    a2 = v77;
    v29 = v87;
  }

  while (1)
  {
    v32 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      __break(1u);
      return;
    }

    if (v32 >= v83)
    {
      break;
    }

    v31 = *(v84 + 8 * v32);
    ++v30;
    if (v31)
    {
      v30 = v32;
      goto LABEL_11;
    }
  }

  v63 = *(v86 + 2);
  if (v63)
  {
    v64 = (v94 + 56);
    v65 = (v86 + 40);

    v66 = v102;
    do
    {
      v69 = *(v65 - 1);
      v70 = *v65;

      v71 = sub_22DEF08FC(v69, v70);
      v73 = v72;

      if (v73)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v100 = v66;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_22DEFD638();
          v66 = v100;
        }

        v68 = v97;
        sub_22DEFE894(*(v66 + 56) + *(v94 + 72) * v71, v97);
        sub_22DEFDD18(v71, v66);
        v67 = 0;
      }

      else
      {
        v67 = 1;
        v68 = v97;
      }

      (*v64)(v68, v67, 1, v9);
      sub_22DEF1364(v68, &qword_27DA47BC0, &unk_22DF65300);
      v65 += 2;
      --v63;
    }

    while (v63);

    a1 = v82;
  }

  else
  {
    v66 = *(a1 + 16);
  }

  *(a1 + 16) = v66;
}

uint64_t sub_22DF389EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47BC0, &unk_22DF65300);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v45[-v8];
  v55 = type metadata accessor for ServiceEventValue(0);
  v10 = *(v55 - 8);
  v11 = MEMORY[0x28223BE20](v55);
  result = MEMORY[0x28223BE20](v11);
  if (!*(a3 + 16))
  {
    return result;
  }

  v48 = v14;
  v51 = v3;
  v52 = &v45[-v13];
  sub_22DEF0974(a3 + ((*(v10 + 80) + 32) & ~*(v10 + 80)), &v45[-v13]);
  v16 = a2 + 56;
  v15 = *(a2 + 56);
  v50 = a1;
  v17 = *(a1 + 16);
  v18 = 1 << *(a2 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v15;
  v21 = (v18 + 63) >> 6;
  v53 = v10;
  v54 = (v10 + 56);

  v22 = 0;
  v49 = v17;
LABEL_5:
  v23 = v22;
  if (!v20)
  {
    goto LABEL_7;
  }

  do
  {
    v22 = v23;
LABEL_10:
    v24 = __clz(__rbit64(v20));
    v20 &= v20 - 1;
    v25 = a2;
    v26 = (*(a2 + 48) + ((v22 << 10) | (16 * v24)));
    v28 = *v26;
    v27 = v26[1];
    v29 = v17[2];

    if (!v29 || (v30 = sub_22DEF08FC(v28, v27), (v31 & 1) == 0))
    {
      (*v54)(v9, 1, 1, v55);
      sub_22DEF1364(v9, &qword_27DA47BC0, &unk_22DF65300);
      sub_22DEF0974(v52, v48);
      LODWORD(v47) = swift_isUniquelyReferenced_nonNull_native();
      v56 = v17;
      v34 = sub_22DEF08FC(v28, v27);
      v35 = v17[2];
      v36 = (v33 & 1) == 0;
      v37 = v35 + v36;
      if (__OFADD__(v35, v36))
      {
        goto LABEL_28;
      }

      if (v17[3] >= v37)
      {
        if (v47)
        {
          if (v33)
          {
            goto LABEL_21;
          }
        }

        else
        {
          v47 = v34;
          v46 = v33;
          sub_22DEFD638();
          v34 = v47;
          if (v46)
          {
            goto LABEL_21;
          }
        }
      }

      else
      {
        v46 = v33;
        sub_22DEFD044(v37, v47);
        v38 = sub_22DEF08FC(v28, v27);
        if ((v46 & 1) != (v39 & 1))
        {
          goto LABEL_30;
        }

        v34 = v38;
        if (v46)
        {
LABEL_21:
          v40 = v34;

          v17 = v56;
          sub_22DEFFB1C(v48, v56[7] + *(v53 + 72) * v40);
          a2 = v25;
          goto LABEL_5;
        }
      }

      v17 = v56;
      v56[(v34 >> 6) + 8] |= 1 << v34;
      v41 = (v17[6] + 16 * v34);
      *v41 = v28;
      v41[1] = v27;
      sub_22DEFE894(v48, v17[7] + *(v53 + 72) * v34);
      v42 = v17[2];
      v43 = __OFADD__(v42, 1);
      v44 = v42 + 1;
      if (v43)
      {
        goto LABEL_29;
      }

      v17[2] = v44;
      a2 = v25;
      goto LABEL_5;
    }

    v32 = v53;
    sub_22DEF0974(v17[7] + *(v53 + 72) * v30, v9);
    (*(v32 + 56))(v9, 0, 1, v55);

    sub_22DEF1364(v9, &qword_27DA47BC0, &unk_22DF65300);
    v23 = v22;
    a2 = v25;
  }

  while (v20);
LABEL_7:
  while (1)
  {
    v22 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v22 >= v21)
    {
      sub_22DF1904C(v52);

      *(v50 + 16) = v17;
      return result;
    }

    v20 = *(v16 + 8 * v22);
    ++v23;
    if (v20)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  result = sub_22DF64234();
  __break(1u);
  return result;
}

uint64_t sub_22DF38E54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for ServiceEventValue(0);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v54[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = MEMORY[0x28223BE20](v9);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v54[-v14];
  result = MEMORY[0x28223BE20](v13);
  v19 = &v54[-v17];
  if (!*(a3 + 16))
  {
    return result;
  }

  v64 = v18;
  sub_22DEF0974(a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), &v54[-v17]);
  if (swift_getEnumCaseMultiPayload())
  {
    return sub_22DF1904C(v19);
  }

  v60 = a1;
  v61 = v3;
  v20 = v19[1];
  v57 = *v19;
  v58 = v11;
  v62 = v20;
  v63 = v8;
  v21 = *(a1 + 16);
  v22 = a2 + 56;
  v23 = 1 << *(a2 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & *(a2 + 56);
  v26 = (v23 + 63) >> 6;

  v66 = a2;

  v27 = 0;
  v59 = v21;
  while (v25)
  {
    v28 = v25;
LABEL_14:
    v25 = (v28 - 1) & v28;
    if (v21[2])
    {
      v30 = (*(v66 + 48) + ((v27 << 10) | (16 * __clz(__rbit64(v28)))));
      v32 = *v30;
      v31 = v30[1];

      v65 = v32;
      v33 = sub_22DEF08FC(v32, v31);
      if (v34)
      {
        v35 = *(v63 + 72);
        sub_22DEF0974(v21[7] + v35 * v33, v15);
        if (swift_getEnumCaseMultiPayload())
        {

          sub_22DF1904C(v15);
        }

        else
        {
          v56 = v35;
          v36 = v15[1];
          v67 = *v15;
          v68 = v36;
          MEMORY[0x2318DCA20](v57, v62);
          v37 = v68;
          v38 = v64;
          *v64 = v67;
          *(v38 + 8) = v37;
          swift_storeEnumTagMultiPayload();
          sub_22DEFE894(v38, v58);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v69 = v21;
          v40 = sub_22DEF08FC(v65, v31);
          v41 = v21[2];
          v42 = (v39 & 1) == 0;
          v43 = v41 + v42;
          if (__OFADD__(v41, v42))
          {
            goto LABEL_32;
          }

          if (v21[3] >= v43)
          {
            v47 = v56;
            if (isUniquelyReferenced_nonNull_native)
            {
              goto LABEL_24;
            }

            v53 = v40;
            isUniquelyReferenced_nonNull_native = v39;
            sub_22DEFD638();
            LOBYTE(v39) = isUniquelyReferenced_nonNull_native;
            v40 = v53;
          }

          else
          {
            v44 = v39;
            sub_22DEFD044(v43, isUniquelyReferenced_nonNull_native);
            v45 = sub_22DEF08FC(v65, v31);
            if ((v44 & 1) != (v46 & 1))
            {
              goto LABEL_34;
            }

            v40 = v45;
            LOBYTE(v39) = v44;
          }

          v47 = v56;
LABEL_24:
          if (v39)
          {
            v48 = v40;

            v21 = v69;
            sub_22DEFFB1C(v58, v69[7] + v48 * v47);
          }

          else
          {
            v21 = v69;
            v69[(v40 >> 6) + 8] |= 1 << v40;
            v49 = (v21[6] + 16 * v40);
            *v49 = v65;
            v49[1] = v31;
            sub_22DEFE894(v58, v21[7] + v40 * v47);
            v50 = v21[2];
            v51 = __OFADD__(v50, 1);
            v52 = v50 + 1;
            if (v51)
            {
              goto LABEL_33;
            }

            v21[2] = v52;
          }
        }
      }

      else
      {
      }
    }
  }

  while (1)
  {
    v29 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v29 >= v26)
    {

      *(v60 + 16) = v21;
      return result;
    }

    v28 = *(v22 + 8 * v29);
    ++v27;
    if (v28)
    {
      v27 = v29;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  result = sub_22DF64234();
  __break(1u);
  return result;
}

uint64_t sub_22DF392B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for ServiceEventValue(0);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = (&v56 - v14);
  result = MEMORY[0x28223BE20](v13);
  v19 = (&v56 - v17);
  if (!*(a3 + 16))
  {
    return result;
  }

  v66 = v18;
  sub_22DEF0974(a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), &v56 - v17);
  if (swift_getEnumCaseMultiPayload())
  {
    return sub_22DF1904C(v19);
  }

  v62 = a1;
  v63 = v3;
  v20 = v19[1];
  v59 = *v19;
  v60 = v11;
  v64 = v20;
  v65 = v8;
  v21 = *(a1 + 16);
  v22 = a2 + 56;
  v23 = 1 << *(a2 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & *(a2 + 56);
  v26 = (v23 + 63) >> 6;

  v72 = a2;

  v27 = 0;
  v61 = v21;
  while (v25)
  {
    v28 = v25;
LABEL_14:
    v25 = (v28 - 1) & v28;
    if (v21[2])
    {
      v30 = (*(v72 + 48) + ((v27 << 10) | (16 * __clz(__rbit64(v28)))));
      v32 = *v30;
      v31 = v30[1];

      v67 = v32;
      v33 = sub_22DEF08FC(v32, v31);
      if (v34)
      {
        v35 = *(v65 + 72);
        sub_22DEF0974(v21[7] + v35 * v33, v15);
        if (swift_getEnumCaseMultiPayload())
        {

          sub_22DF1904C(v15);
        }

        else
        {
          v36 = *v15;
          v37 = v15[1];
          v57 = v35;
          v58 = v37;
          v70 = v36;
          v71 = v37;
          v68 = v59;
          v69 = v64;

          v68 = sub_22DF63B14();
          v69 = v38;
          sub_22DF63A84();

          v39 = v69;
          v40 = v66;
          *v66 = v68;
          *(v40 + 8) = v39;
          swift_storeEnumTagMultiPayload();
          sub_22DEFE894(v40, v60);
          LODWORD(v58) = swift_isUniquelyReferenced_nonNull_native();
          v70 = v21;
          v42 = sub_22DEF08FC(v67, v31);
          v43 = v21[2];
          v44 = (v41 & 1) == 0;
          v45 = v43 + v44;
          if (__OFADD__(v43, v44))
          {
            goto LABEL_32;
          }

          if (v21[3] >= v45)
          {
            v49 = v57;
            if (v58)
            {
              goto LABEL_24;
            }

            v55 = v42;
            LODWORD(v58) = v41;
            sub_22DEFD638();
            LOBYTE(v41) = v58;
            v42 = v55;
          }

          else
          {
            v46 = v41;
            sub_22DEFD044(v45, v58);
            v47 = sub_22DEF08FC(v67, v31);
            if ((v46 & 1) != (v48 & 1))
            {
              goto LABEL_34;
            }

            v42 = v47;
            LOBYTE(v41) = v46;
          }

          v49 = v57;
LABEL_24:
          if (v41)
          {
            v50 = v42;

            v21 = v70;
            sub_22DEFFB1C(v60, v70[7] + v50 * v49);
          }

          else
          {
            v21 = v70;
            v70[(v42 >> 6) + 8] |= 1 << v42;
            v51 = (v21[6] + 16 * v42);
            *v51 = v67;
            v51[1] = v31;
            sub_22DEFE894(v60, v21[7] + v42 * v49);
            v52 = v21[2];
            v53 = __OFADD__(v52, 1);
            v54 = v52 + 1;
            if (v53)
            {
              goto LABEL_33;
            }

            v21[2] = v54;
          }
        }
      }

      else
      {
      }
    }
  }

  while (1)
  {
    v29 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v29 >= v26)
    {

      *(v62 + 16) = v21;
      return result;
    }

    v28 = *(v22 + 8 * v29);
    ++v27;
    if (v28)
    {
      v27 = v29;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  result = sub_22DF64234();
  __break(1u);
  return result;
}

uint64_t sub_22DF39754(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47BC0, &unk_22DF65300);
  MEMORY[0x28223BE20](v4 - 8);
  v50 = &v45 - v5;
  v45 = a1;
  v6 = *(a1 + 16);
  v7 = v6 + 64;
  v8 = 1 << *(v6 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v6 + 64);
  v11 = (v8 + 63) >> 6;
  v12 = a2 + 56;
  result = swift_bridgeObjectRetain_n();
  v14 = 0;
  v47 = v6;
  v48 = MEMORY[0x277D84F90];
  v46 = v6 + 64;
  while (v10)
  {
LABEL_12:
    v16 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v17 = (*(v6 + 48) + ((v14 << 10) | (16 * v16)));
    v19 = *v17;
    v18 = v17[1];
    if (!*(a2 + 16))
    {

LABEL_21:
      v26 = v48;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_22DF03FB0(0, *(v26 + 2) + 1, 1, v26);
        v26 = result;
      }

      v28 = *(v26 + 2);
      v27 = *(v26 + 3);
      v48 = v26;
      if (v28 >= v27 >> 1)
      {
        result = sub_22DF03FB0((v27 > 1), v28 + 1, 1, v48);
        v48 = result;
      }

      v29 = v48;
      *(v48 + 2) = v28 + 1;
      v30 = &v29[16 * v28];
      *(v30 + 4) = v19;
      *(v30 + 5) = v18;
      goto LABEL_6;
    }

    sub_22DF642A4();

    sub_22DF63A54();
    v20 = sub_22DF642D4();
    v21 = -1 << *(a2 + 32);
    v22 = v20 & ~v21;
    if (((*(v12 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
    {
      goto LABEL_21;
    }

    v23 = ~v21;
    while (1)
    {
      v24 = (*(a2 + 48) + 16 * v22);
      v25 = *v24 == v19 && v24[1] == v18;
      if (v25 || (sub_22DF64184() & 1) != 0)
      {
        break;
      }

      v22 = (v22 + 1) & v23;
      if (((*(v12 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
      {
        goto LABEL_21;
      }
    }

LABEL_6:
    v7 = v46;
    v6 = v47;
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      return result;
    }

    if (v15 >= v11)
    {
      break;
    }

    v10 = *(v7 + 8 * v15);
    ++v14;
    if (v10)
    {
      v14 = v15;
      goto LABEL_12;
    }
  }

  v31 = *(v48 + 2);
  if (v31)
  {
    v32 = (v48 + 40);
    do
    {
      v36 = *(v32 - 1);
      v35 = *v32;

      v37 = sub_22DEF08FC(v36, v35);
      v39 = v38;

      if (v39)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v49 = v6;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_22DEFD638();
          v6 = v49;
        }

        v41 = *(v6 + 56);
        v42 = type metadata accessor for ServiceEventValue(0);
        v43 = *(v42 - 8);
        v44 = v41 + *(v43 + 72) * v37;
        v34 = v50;
        sub_22DEFE894(v44, v50);
        sub_22DEFDD18(v37, v6);
        (*(v43 + 56))(v34, 0, 1, v42);
      }

      else
      {
        v33 = type metadata accessor for ServiceEventValue(0);
        v34 = v50;
        (*(*(v33 - 8) + 56))(v50, 1, 1, v33);
      }

      sub_22DEF1364(v34, &qword_27DA47BC0, &unk_22DF65300);
      v32 += 2;
      --v31;
    }

    while (v31);
  }

  *(v45 + 16) = v6;
  return result;
}

void sub_22DF39B78(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47BC0, &unk_22DF65300);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v28 - v5;
  v29 = a1;
  v7 = *(a1 + 16);
  v8 = a2 + 56;
  v9 = 1 << *(a2 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a2 + 56);
  v12 = (v9 + 63) >> 6;

  v13 = 0;
  v28[1] = v7;
  v30 = a2;
  v31 = v6;
  while (v11)
  {
LABEL_11:
    v17 = (*(a2 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v11)))));
    v19 = *v17;
    v18 = v17[1];

    v20 = sub_22DEF08FC(v19, v18);
    v22 = v21;

    if (v22)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v32 = v7;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_22DEFD638();
        v7 = v32;
      }

      v24 = *(v7 + 56);
      v25 = type metadata accessor for ServiceEventValue(0);
      v26 = *(v25 - 8);
      v27 = v24 + *(v26 + 72) * v20;
      v15 = v31;
      sub_22DEFE894(v27, v31);
      sub_22DEFDD18(v20, v7);
      (*(v26 + 56))(v15, 0, 1, v25);
      a2 = v30;
    }

    else
    {
      v14 = type metadata accessor for ServiceEventValue(0);
      v15 = v31;
      (*(*(v14 - 8) + 56))(v31, 1, 1, v14);
    }

    v11 &= v11 - 1;
    sub_22DEF1364(v15, &qword_27DA47BC0, &unk_22DF65300);
  }

  while (1)
  {
    v16 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v16 >= v12)
    {

      *(v29 + 16) = v7;
      return;
    }

    v11 = *(v8 + 8 * v16);
    ++v13;
    if (v11)
    {
      v13 = v16;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_22DF39E1C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47BC0, &unk_22DF65300);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v94 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v106 = &v79 - v7;
  v96 = sub_22DF638B4();
  v8 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v98 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_22DF63A04();
  v10 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v92 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_22DF638A4();
  v12 = *(v95 - 8);
  v13 = MEMORY[0x28223BE20](v95);
  v91 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v97 = &v79 - v15;
  v108 = type metadata accessor for ServiceEventValue(0);
  v16 = MEMORY[0x28223BE20](v108);
  v87 = &v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v86 = (&v79 - v19);
  MEMORY[0x28223BE20](v18);
  v104 = (&v79 - v21);
  v105 = v20;
  v22 = *(a1 + 16);
  v23 = a2 + 56;
  v24 = 1 << *(a2 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & *(a2 + 56);
  v27 = (v24 + 63) >> 6;
  v107 = (v20 + 56);
  v90 = (v10 + 8);
  v89 = (v8 + 8);
  v88 = (v12 + 16);
  v85 = (v12 + 8);
  v28 = a2;

  v29 = 0;
  v101 = xmmword_22DF65900;
  v102 = v22;
  v30 = v22;
  while (v26)
  {
LABEL_10:
    v33 = __clz(__rbit64(v26));
    v26 &= v26 - 1;
    v34 = (*(v28 + 48) + ((v29 << 10) | (16 * v33)));
    v35 = *v34;
    v36 = v34[1];
    v37 = *(v30 + 16);

    if (!v37)
    {
      goto LABEL_4;
    }

    v111 = v35;
    v38 = sub_22DEF08FC(v35, v36);
    if (v39)
    {
      v40 = v104;
      sub_22DEF0974(*(v30 + 56) + *(v105 + 72) * v38, v104);
      if (swift_getEnumCaseMultiPayload())
      {
        sub_22DF1904C(v40);
        goto LABEL_14;
      }

      v79 = a1;
      v53 = *v40;
      v99 = v40[1];
      v100 = v53;
      v54 = v92;
      sub_22DF639F4();
      v100 = sub_22DF639C4();
      v56 = v55;

      (*v90)(v54, v93);
      v57 = v100;
      if (v56 >> 60 == 15)
      {
        v57 = 0;
      }

      v100 = v57;
      if (v56 >> 60 == 15)
      {
        v56 = 0xC000000000000000;
      }

      v99 = sub_22DF1213C(&qword_27DA47750, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
      sub_22DF63884();
      v58 = v100;
      v83 = v56;
      sub_22DEF7A88(v100, v56);
      v59 = v103;
      sub_22DF11DAC(v58, v56, v98);
      v103 = v59;
      sub_22DEF7A34(v58, v56);
      v60 = v98;
      v61 = v96;
      sub_22DF63874();
      sub_22DEF7A34(v100, v83);
      (*v89)(v60, v61);
      (*v88)(v91, v97, v95);
      sub_22DF1213C(&qword_27DA47758, MEMORY[0x277CC5290], MEMORY[0x277CC52A8]);
      sub_22DF63B34();
      v83 = v109;
      v62 = *(v109 + 16);
      v63 = MEMORY[0x277D84F90];
      v82 = v110;
      v81 = v62;
      if (v110 != v62)
      {
        v80 = v83 + 32;
        v69 = v82;
        v84 = v28;
        while ((v82 & 0x8000000000000000) == 0)
        {
          if (v69 >= *(v83 + 16))
          {
            goto LABEL_40;
          }

          v70 = *(v80 + v69);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47760, &unk_22DF66DB0);
          v71 = swift_allocObject();
          *(v71 + 16) = v101;
          *(v71 + 56) = MEMORY[0x277D84B78];
          *(v71 + 64) = MEMORY[0x277D84BC0];
          *(v71 + 32) = v70;
          v72 = sub_22DF639E4();
          v99 = v73;
          v100 = v72;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v63 = sub_22DF03FB0(0, *(v63 + 2) + 1, 1, v63);
          }

          v75 = *(v63 + 2);
          v74 = *(v63 + 3);
          v76 = v63;
          if (v75 >= v74 >> 1)
          {
            v76 = sub_22DF03FB0((v74 > 1), v75 + 1, 1, v63);
          }

          ++v69;
          *(v76 + 2) = v75 + 1;
          v63 = v76;
          v77 = &v76[16 * v75];
          v78 = v99;
          *(v77 + 4) = v100;
          *(v77 + 5) = v78;
          v28 = v84;
          if (v81 == v69)
          {
            goto LABEL_25;
          }
        }

        goto LABEL_39;
      }

LABEL_25:
      v100 = v63;
      (*v85)(v97, v95);

      v109 = v63;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA47670, &qword_22DF67510);
      sub_22DF18FE8();
      v99 = sub_22DF63954();
      v65 = v64;

      v66 = v86;
      *v86 = v99;
      *(v66 + 8) = v65;
      swift_storeEnumTagMultiPayload();
      v67 = v87;
      sub_22DEFE894(v66, v87);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v109 = v30;
      sub_22DEFDF04(v67, v111, v36, isUniquelyReferenced_nonNull_native);

      v30 = v109;
      a1 = v79;
    }

    else
    {
LABEL_14:
      if (*(v30 + 16) && (v41 = sub_22DEF08FC(v111, v36), (v42 & 1) != 0))
      {
        v84 = v28;
        v79 = a1;
        v43 = *(v30 + 56);
        v45 = v105;
        v44 = v106;
        v99 = *(v105 + 72);
        v46 = v111;
        sub_22DEF0974(v43 + v99 * v41, v106);
        v47 = *(v45 + 56);
        v48 = 1;
        v100 = v47;
        v47(v44, 0, 1, v108);
        sub_22DEF1364(v44, &qword_27DA47BC0, &unk_22DF65300);
        v49 = sub_22DEF08FC(v46, v36);
        LOBYTE(v44) = v50;

        if (v44)
        {
          v51 = swift_isUniquelyReferenced_nonNull_native();
          v109 = v30;
          if (!v51)
          {
            sub_22DEFD638();
            v30 = v109;
          }

          v52 = v94;
          sub_22DEFE894(*(v30 + 56) + v49 * v99, v94);
          sub_22DEFDD18(v49, v30);
          v48 = 0;
        }

        else
        {
          v52 = v94;
        }

        v100(v52, v48, 1, v108);
        sub_22DEF1364(v52, &qword_27DA47BC0, &unk_22DF65300);
        a1 = v79;
        v28 = v84;
      }

      else
      {
LABEL_4:
        v31 = v106;
        (*v107)(v106, 1, 1, v108);

        sub_22DEF1364(v31, &qword_27DA47BC0, &unk_22DF65300);
      }
    }
  }

  while (1)
  {
    v32 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v32 >= v27)
    {

      *(a1 + 16) = v30;
      return;
    }

    v26 = *(v23 + 8 * v32);
    ++v29;
    if (v26)
    {
      v29 = v32;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
}

uint64_t sub_22DF3A868(uint64_t *a1, int a2)
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