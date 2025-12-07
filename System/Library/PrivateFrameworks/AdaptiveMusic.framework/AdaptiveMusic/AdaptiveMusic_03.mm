uint64_t sub_23E7D34A4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23E7D34DC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_23E7A23AC;

  return sub_23E7CFE64();
}

void sub_23E7D3588(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_23E7D82D8(&qword_27E350F20, type metadata accessor for AppleMusicPlayer, &unk_23E7E5824);
  sub_23E7DCDA8();

  v3 = *(v1 + 16);
  os_unfair_lock_lock((v3 + 20));
  *a1 = *(v3 + 16);
  os_unfair_lock_unlock((v3 + 20));
}

void sub_23E7D3644(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_23E7D82D8(&qword_27E350F20, type metadata accessor for AppleMusicPlayer, &unk_23E7E5824);
  sub_23E7DCDA8();

  v4 = *(v3 + 16);
  os_unfair_lock_lock((v4 + 20));
  v5 = *(v4 + 16);
  os_unfair_lock_unlock((v4 + 20));
  *a2 = v5;
}

uint64_t sub_23E7D3700(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_23E7D82D8(&qword_27E350F20, type metadata accessor for AppleMusicPlayer, &unk_23E7E5824);
  sub_23E7DCD98();
}

void sub_23E7D37D0(unsigned __int8 a1, uint64_t a2)
{
  if (qword_27E34FB58 != -1)
  {
    swift_once();
  }

  v4 = sub_23E7DCE88();
  __swift_project_value_buffer(v4, qword_27E35A110);
  v5 = sub_23E7DCE68();
  v6 = sub_23E7DD5E8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    v9 = 0xE400000000000000;
    *v7 = 136315138;
    v10 = 1701602409;
    v11 = 0xE600000000000000;
    v12 = 0x646573756170;
    if (a1 != 2)
    {
      v12 = 0x676E6979616C70;
      v11 = 0xE700000000000000;
    }

    if (a1)
    {
      v10 = 0x676E6964616F6CLL;
      v9 = 0xE700000000000000;
    }

    if (a1 <= 1u)
    {
      v13 = v10;
    }

    else
    {
      v13 = v12;
    }

    if (a1 <= 1u)
    {
      v14 = v9;
    }

    else
    {
      v14 = v11;
    }

    v15 = sub_23E7D2CA4(v13, v14, &v17);

    *(v7 + 4) = v15;
    _os_log_impl(&dword_23E790000, v5, v6, "AppleMusicPlayer updating status to %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x23EF13B60](v8, -1, -1);
    MEMORY[0x23EF13B60](v7, -1, -1);
  }

  v16 = *(a2 + 16);
  os_unfair_lock_lock((v16 + 20));
  *(v16 + 16) = a1;
  os_unfair_lock_unlock((v16 + 20));
}

uint64_t sub_23E7D39A0@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350F58, &qword_23E7E58F8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v38 - v3;
  v5 = sub_23E7DD1B8();
  v40 = *(v5 - 8);
  v41 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350278, &qword_23E7E27A8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v38 - v9;
  v11 = sub_23E7DD148();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23E7DCF08();
  sub_23E7DCEF8();
  sub_23E7DCED8();

  sub_23E7DD0C8();

  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_23E7996FC(v10, &qword_27E350278, &qword_23E7E27A8);
    v15 = type metadata accessor for PlaybackInfo.PlaybackItemInfo(0);
    return (*(*(v15 - 8) + 56))(a1, 1, 1, v15);
  }

  (*(v12 + 32))(v14, v10, v11);
  sub_23E7DD108();
  v17 = sub_23E7DD0F8();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v4, 1, v17) == 1)
  {
    sub_23E7996FC(v4, &qword_27E350F58, &qword_23E7E58F8);
LABEL_8:
    v24 = sub_23E7DDA38();
    v38 = v25;
    v39 = v24;
    goto LABEL_9;
  }

  if ((*(v18 + 88))(v4, v17) != *MEMORY[0x277CD7F10])
  {
    (*(v18 + 8))(v4, v17);
    goto LABEL_8;
  }

  (*(v18 + 96))(v4, v17);
  v19 = v40;
  v20 = v4;
  v21 = v41;
  (*(v40 + 32))(v7, v20, v41);
  sub_23E7DD1A8();
  v22 = sub_23E7DDA48();
  v38 = v23;
  v39 = v22;
  (*(v19 + 8))(v7, v21);
LABEL_9:
  v26 = sub_23E7DD118();
  v40 = v27;
  v41 = v26;
  v28 = sub_23E7DD138();
  if (v29)
  {
    v30 = v28;
  }

  else
  {
    v30 = 0;
  }

  if (v29)
  {
    v31 = v29;
  }

  else
  {
    v31 = 0xE000000000000000;
  }

  sub_23E7DCEF8();
  sub_23E7DD078();

  v32 = sub_23E7DDA48();
  v34 = v33;
  v35 = type metadata accessor for PlaybackInfo.PlaybackItemInfo(0);
  sub_23E7DD128();
  (*(v12 + 8))(v14, v11);
  v36 = v40;
  *a1 = v41;
  a1[1] = v36;
  a1[2] = v30;
  a1[3] = v31;
  a1[4] = v32;
  a1[5] = v34;
  v37 = v38;
  a1[6] = v39;
  a1[7] = v37;
  return (*(*(v35 - 8) + 56))(a1, 0, 1, v35);
}

void *sub_23E7D3E68(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350088, &qword_23E7E5900);
  v3 = swift_allocObject();
  *(v3 + 20) = 0;
  *(v3 + 16) = 0;
  v1[2] = v3;
  v1[4] = &unk_285111948;
  sub_23E7DCDB8();
  v1[3] = a1;
  v4 = swift_allocObject();
  swift_weakInit();
  *(a1 + 32) = sub_23E7D8384;
  *(a1 + 40) = v4;
  sub_23E7DC9E8();
  sub_23E7DC9E8();

  v5 = v1[3];
  v6 = swift_allocObject();
  swift_weakInit();
  sub_23E7DC9E8();

  *(v5 + 16) = sub_23E7D838C;
  *(v5 + 24) = v6;

  return v1;
}

uint64_t sub_23E7D3FA4(uint64_t a1, void *a2, uint64_t a3)
{
  v48 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350278, &qword_23E7E27A8);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v46 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v46 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v46 - v14;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v17 = result;
  sub_23E7AF3B0(a1, v15);
  v18 = sub_23E7DD148();
  v19 = *(v18 - 8);
  v20 = *(v19 + 48);
  v21 = v20(v15, 1, v18);
  v47 = v10;
  if (v21 == 1)
  {
    sub_23E7996FC(v15, &qword_27E350278, &qword_23E7E27A8);
    v22 = 0;
    v23 = 0;
  }

  else
  {
    v22 = sub_23E7DD0E8();
    v23 = v24;
    (*(v19 + 8))(v15, v18);
  }

  v46 = v7;
  sub_23E7AF3B0(v48, v13);
  if (v20(v13, 1, v18) == 1)
  {
    sub_23E7996FC(v13, &qword_27E350278, &qword_23E7E27A8);
    if (!v23)
    {
      goto LABEL_21;
    }

    goto LABEL_18;
  }

  v25 = sub_23E7DD0E8();
  v27 = v26;
  (*(v19 + 8))(v13, v18);
  if (!v23)
  {
    if (!v27)
    {
      goto LABEL_21;
    }

LABEL_18:

    goto LABEL_19;
  }

  if (!v27)
  {
    goto LABEL_18;
  }

  if (v22 != v25 || v23 != v27)
  {
    v29 = sub_23E7DD8E8();

    if (v29)
    {
      goto LABEL_21;
    }

LABEL_19:
    swift_getKeyPath();
    v49 = v17;
    sub_23E7D82D8(&qword_27E350F20, type metadata accessor for AppleMusicPlayer, &unk_23E7E5824);
    sub_23E7DCDA8();

    v30 = *(v17 + 16);
    os_unfair_lock_lock((v30 + 20));
    v31 = *(v30 + 16);
    os_unfair_lock_unlock((v30 + 20));
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v46 - 16) = v31;
    *(&v46 - 1) = v17;
    v49 = v17;
    sub_23E7DCD98();
  }

LABEL_21:
  if (qword_27E34FB58 != -1)
  {
    swift_once();
  }

  v33 = sub_23E7DCE88();
  __swift_project_value_buffer(v33, qword_27E35A110);
  v34 = v47;
  sub_23E7AF3B0(v48, v47);
  v35 = sub_23E7DCE68();
  v36 = sub_23E7DD5C8();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v49 = v48;
    *v37 = 136315138;
    v38 = v46;
    sub_23E7AF3B0(v34, v46);
    if (v20(v38, 1, v18) == 1)
    {
      sub_23E7996FC(v38, &qword_27E350278, &qword_23E7E27A8);
      v39 = 0xE300000000000000;
      v40 = 7104878;
    }

    else
    {
      v41 = sub_23E7DD0E8();
      v42 = v38;
      v40 = v41;
      v39 = v43;
      (*(v19 + 8))(v42, v18);
    }

    sub_23E7996FC(v47, &qword_27E350278, &qword_23E7E27A8);
    v44 = sub_23E7D2CA4(v40, v39, &v49);

    *(v37 + 4) = v44;
    _os_log_impl(&dword_23E790000, v35, v36, "AppleMusicPlayer Ignoring item update to %s we are already playing that item", v37, 0xCu);
    v45 = v48;
    __swift_destroy_boxed_opaque_existential_1(v48);
    MEMORY[0x23EF13B60](v45, -1, -1);
    MEMORY[0x23EF13B60](v37, -1, -1);
  }

  else
  {

    return sub_23E7996FC(v34, &qword_27E350278, &qword_23E7E27A8);
  }
}

uint64_t sub_23E7D4560(char *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = v2;
    sub_23E7D45D4(&v4, 0, 0);
  }

  return result;
}

void sub_23E7D45D4(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23E7DD148();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350278, &qword_23E7E27A8);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v60 = v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = v59 - v13;
  v15 = *a1;
  v59[1] = sub_23E7DCF08();
  sub_23E7DCEF8();
  sub_23E7DCED8();

  sub_23E7DD0C8();

  v16 = *(v7 + 48);
  if (v16(v14, 1, v6))
  {
    v59[0] = v16;
    sub_23E7996FC(v14, &qword_27E350278, &qword_23E7E27A8);
LABEL_3:
    v17 = v15;
    goto LABEL_4;
  }

  (*(v7 + 16))(v9, v14, v6);
  sub_23E7996FC(v14, &qword_27E350278, &qword_23E7E27A8);
  v29 = sub_23E7DD0E8();
  v31 = v30;
  (*(v7 + 8))(v9, v6);
  if (!a3)
  {
    v59[0] = v16;

    goto LABEL_3;
  }

  v32 = v29 == a2 && v31 == a3;
  v17 = v15;
  if (!v32 && (sub_23E7DD8E8() & 1) == 0)
  {
    v59[0] = v16;

LABEL_4:
    swift_getKeyPath();
    v18 = v61;
    v62 = v61;
    sub_23E7D82D8(&qword_27E350F20, type metadata accessor for AppleMusicPlayer, &unk_23E7E5824);
    sub_23E7DCDA8();

    v19 = *(v18 + 16);
    os_unfair_lock_lock((v19 + 20));
    v20 = *(v19 + 16);
    os_unfair_lock_unlock((v19 + 20));
    if (sub_23E7A70AC(v17, v20))
    {
      if (qword_27E34FB58 != -1)
      {
        swift_once();
      }

      v21 = sub_23E7DCE88();
      __swift_project_value_buffer(v21, qword_27E35A110);
      v22 = sub_23E7DCE68();
      v23 = sub_23E7DD5C8();
      if (!os_log_type_enabled(v22, v23))
      {
        goto LABEL_67;
      }

      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v62 = v25;
      *v24 = 136315138;
      if (v17 > 1)
      {
        if (v17 == 2)
        {
          v27 = 0xE600000000000000;
          v26 = 0x646573756170;
        }

        else
        {
          v27 = 0xE700000000000000;
          v26 = 0x676E6979616C70;
        }
      }

      else
      {
        if (v17)
        {
          v26 = 0x676E6964616F6CLL;
        }

        else
        {
          v26 = 1701602409;
        }

        if (v17)
        {
          v27 = 0xE700000000000000;
        }

        else
        {
          v27 = 0xE400000000000000;
        }
      }

      v57 = sub_23E7D2CA4(v26, v27, &v62);

      *(v24 + 4) = v57;
      _os_log_impl(&dword_23E790000, v22, v23, "AppleMusicPlayer ignoring status update to %s, we are already in that state", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v25);
      v45 = v25;
      goto LABEL_66;
    }

    v28 = 0x676E6964616F6CLL;
    if (v17 == 2)
    {
    }

    else
    {
      v46 = sub_23E7DD8E8();

      if ((v46 & 1) == 0)
      {
        sub_23E7DCEF8();
        sub_23E7DCED8();

        v47 = v60;
        sub_23E7DD0C8();

        v48 = (v59[0])(v47, 1, v6);
        v49 = v47;
        v28 = 0x676E6964616F6CLL;
        sub_23E7996FC(v49, &qword_27E350278, &qword_23E7E27A8);
        if (v48 != 1)
        {
          goto LABEL_57;
        }
      }
    }

    swift_getKeyPath();
    v62 = v18;
    sub_23E7DCDA8();

    os_unfair_lock_lock((v19 + 20));
    v50 = *(v19 + 16);
    os_unfair_lock_unlock((v19 + 20));
    if (v50 <= 1 && v50)
    {

LABEL_51:
      if (qword_27E34FB58 != -1)
      {
        swift_once();
      }

      v52 = sub_23E7DCE88();
      __swift_project_value_buffer(v52, qword_27E35A110);
      v22 = sub_23E7DCE68();
      v53 = sub_23E7DD5C8();
      if (!os_log_type_enabled(v22, v53))
      {
        goto LABEL_67;
      }

      v24 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v62 = v54;
      *v24 = 136315138;
      if (v17 > 1)
      {
        if (v17 == 2)
        {
          v55 = 0xE600000000000000;
          v28 = 0x646573756170;
        }

        else
        {
          v55 = 0xE700000000000000;
          v28 = 0x676E6979616C70;
        }
      }

      else if (v17)
      {
        v55 = 0xE700000000000000;
      }

      else
      {
        v55 = 0xE400000000000000;
        v28 = 1701602409;
      }

      v58 = sub_23E7D2CA4(v28, v55, &v62);

      *(v24 + 4) = v58;
      _os_log_impl(&dword_23E790000, v22, v53, "AppleMusicPlayer ignoring status %s we are loading and have not played yet", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v54);
      v45 = v54;
      goto LABEL_66;
    }

    v51 = sub_23E7DD8E8();

    if (v51)
    {
      goto LABEL_51;
    }

LABEL_57:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    LOBYTE(v59[-2]) = v17;
    v59[-1] = v18;
    v62 = v18;
    sub_23E7DCD98();

    return;
  }

  v33 = v29;
  if (qword_27E34FB58 != -1)
  {
    swift_once();
  }

  v34 = sub_23E7DCE88();
  __swift_project_value_buffer(v34, qword_27E35A110);
  sub_23E7DC9D8();
  v22 = sub_23E7DCE68();
  v35 = sub_23E7DD5C8();

  if (os_log_type_enabled(v22, v35))
  {
    v24 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v62 = v36;
    *v24 = 136315394;
    v37 = 0xE400000000000000;
    v38 = 0xE600000000000000;
    v39 = 0x646573756170;
    if (v15 != 2)
    {
      v39 = 0x676E6979616C70;
      v38 = 0xE700000000000000;
    }

    v40 = 0x676E6964616F6CLL;
    if (v15)
    {
      v37 = 0xE700000000000000;
    }

    else
    {
      v40 = 1701602409;
    }

    if (v15 <= 1)
    {
      v41 = v40;
    }

    else
    {
      v41 = v39;
    }

    if (v15 <= 1)
    {
      v42 = v37;
    }

    else
    {
      v42 = v38;
    }

    v43 = sub_23E7D2CA4(v41, v42, &v62);

    *(v24 + 4) = v43;
    *(v24 + 12) = 2080;
    v44 = sub_23E7D2CA4(v33, v31, &v62);

    *(v24 + 14) = v44;
    _os_log_impl(&dword_23E790000, v22, v35, "AppleMusicPlayer ignoring status %s update for %s", v24, 0x16u);
    swift_arrayDestroy();
    v45 = v36;
LABEL_66:
    MEMORY[0x23EF13B60](v45, -1, -1);
    MEMORY[0x23EF13B60](v24, -1, -1);
    goto LABEL_67;
  }

LABEL_67:
}

uint64_t sub_23E7D4F8C(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = v6;
    sub_23E7D45D4(&v8, a3, a4);
  }

  return result;
}

uint64_t sub_23E7D502C()
{
  sub_23E7DCF08();
  *(v0 + 32) = sub_23E7DCEF8();
  v3 = (*MEMORY[0x277CD7F08] + MEMORY[0x277CD7F08]);
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_23E7D50E4;

  return v3();
}

uint64_t sub_23E7D50E4()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_23E7D5330;
  }

  else
  {

    v2 = sub_23E7D5200;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_23E7D5200()
{
  v1 = v0[3];
  swift_getKeyPath();
  v2 = swift_task_alloc();
  *(v2 + 16) = 3;
  *(v2 + 24) = v1;
  v0[2] = v1;
  sub_23E7D82D8(&qword_27E350F20, type metadata accessor for AppleMusicPlayer, &unk_23E7E5824);
  sub_23E7DCD98();

  v3 = v0[1];

  return v3();
}

uint64_t sub_23E7D5330()
{

  if (qword_27E34FB58 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 48);
  v2 = sub_23E7DCE88();
  __swift_project_value_buffer(v2, qword_27E35A110);
  v3 = v1;
  v4 = sub_23E7DCE68();
  v5 = sub_23E7DD5D8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 48);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_23E790000, v4, v5, "AppleMusicPlayer failed to resume playback: %@", v7, 0xCu);
    sub_23E7996FC(v8, qword_27E34FEA8, &unk_23E7E1AB0);
    MEMORY[0x23EF13B60](v8, -1, -1);
    MEMORY[0x23EF13B60](v7, -1, -1);
  }

  v11 = *(v0 + 48);

  sub_23E799564();
  swift_allocError();
  *v12 = 3;
  swift_willThrow();

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_23E7D5500()
{

  v1 = OBJC_IVAR____TtC13AdaptiveMusic16AppleMusicPlayer___observationRegistrar;
  v2 = sub_23E7DCDC8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AppleMusicPlayer(uint64_t a1)
{
  result = qword_27E350F10;
  if (!qword_27E350F10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23E7D5608(uint64_t a1)
{
  result = sub_23E7DCDC8();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_23E7D56B8(_BYTE *a1@<X8>)
{
  v3 = *v1;
  swift_getKeyPath();
  sub_23E7D82D8(&qword_27E350F20, type metadata accessor for AppleMusicPlayer, &unk_23E7E5824);
  sub_23E7DCDA8();

  v4 = *(v3 + 16);
  os_unfair_lock_lock((v4 + 20));
  *a1 = *(v4 + 16);
  os_unfair_lock_unlock((v4 + 20));
}

uint64_t sub_23E7D578C(_OWORD *a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_23E7A23AC;

  return sub_23E7D6440(a1);
}

uint64_t sub_23E7D5854()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_23E7A6BDC;

  return sub_23E7D500C();
}

uint64_t sub_23E7D5900()
{
  sub_23E7DCF08();
  *(v0 + 16) = sub_23E7DCEF8();
  v3 = (*MEMORY[0x277CD7EF0] + MEMORY[0x277CD7EF0]);
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_23E7D59B8;

  return v3();
}

uint64_t sub_23E7D59B8()
{
  v2 = *v1;
  *(v2 + 32) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_23E7D5AF4, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_23E7D5AF4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23E7D5B74()
{
  sub_23E7DCF08();
  *(v0 + 16) = sub_23E7DCEF8();
  v3 = (*MEMORY[0x277CD7F00] + MEMORY[0x277CD7F00]);
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_23E7D5C2C;

  return v3();
}

uint64_t sub_23E7D5C2C()
{
  v2 = *v1;
  *(v2 + 32) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_23E7D83AC, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_23E7D5D80(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  sub_23E7DCF08();
  sub_23E7DCEF8();
  a3();
}

uint64_t sub_23E7D5DD0()
{
  sub_23E7DCF08();
  sub_23E7DCEF8();
  sub_23E7DD0A8();

  swift_getKeyPath();
  sub_23E7D82D8(&qword_27E350F20, type metadata accessor for AppleMusicPlayer, &unk_23E7E5824);
  sub_23E7DCD98();
}

uint64_t sub_23E7D5EDC()
{
  sub_23E7DCF08();
  sub_23E7DCEF8();
  sub_23E7DD088();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23E7D5F60(uint64_t a1)
{
  result = sub_23E7D82D8(&qword_27E350F20, type metadata accessor for AppleMusicPlayer, &unk_23E7E5824);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_23E7D5FE0(uint64_t a1)
{
  *(v1 + 24) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350760, &qword_23E7E37C0);
  *(v1 + 32) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23E7D607C, 0, 0);
}

uint64_t sub_23E7D607C()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = sub_23E7DD258();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v0[2] = v1;
  sub_23E7DCEC8();
  swift_allocObject();
  sub_23E7DC9D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350F48, &qword_23E7E58F0);
  sub_23E7D8320();
  v0[5] = sub_23E7DCEB8();
  sub_23E7DD0B8();
  sub_23E7DCF08();
  sub_23E7DCEF8();
  sub_23E7DC9E8();
  sub_23E7DCEE8();

  v0[6] = sub_23E7DCEF8();
  v6 = (*MEMORY[0x277CD7F08] + MEMORY[0x277CD7F08]);
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_23E7D6240;

  return v6();
}

uint64_t sub_23E7D6240()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_23E7D63C8;
  }

  else
  {

    v2 = sub_23E7D635C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_23E7D635C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23E7D63C8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23E7D6440(_OWORD *a1)
{
  *(v2 + 240) = v1;
  v4 = sub_23E7DD148();
  *(v2 + 248) = v4;
  *(v2 + 256) = *(v4 - 8);
  *(v2 + 264) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350278, &qword_23E7E27A8);
  *(v2 + 272) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350F28, &qword_23E7E58D0);
  *(v2 + 280) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350F30, &qword_23E7E58D8);
  *(v2 + 288) = swift_task_alloc();
  v5 = sub_23E7DCFA8();
  *(v2 + 296) = v5;
  *(v2 + 304) = *(v5 - 8);
  *(v2 + 312) = swift_task_alloc();
  *(v2 + 320) = swift_task_alloc();
  *(v2 + 328) = swift_task_alloc();
  *(v2 + 336) = swift_task_alloc();
  *(v2 + 344) = swift_task_alloc();
  v6 = a1[1];
  *(v2 + 16) = *a1;
  *(v2 + 32) = v6;
  *(v2 + 48) = a1[2];
  *(v2 + 59) = *(a1 + 43);

  return MEMORY[0x2822009F8](sub_23E7D6650, 0, 0);
}

uint64_t sub_23E7D6650()
{
  v47 = v0;
  v2 = *(v0 + 336);
  v1 = *(v0 + 344);
  v3 = *(v0 + 296);
  v4 = *(v0 + 304);
  sub_23E7DCF98();
  *(v0 + 76) = *MEMORY[0x277CD7BE0];
  (*(v4 + 104))(v2);
  sub_23E7D82D8(&qword_27E350F38, MEMORY[0x277CD7BF8], MEMORY[0x277CD7C00]);
  v5 = sub_23E7DD2E8();
  v6 = *(v4 + 8);
  *(v0 + 352) = v6;
  *(v0 + 360) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v2, v3);
  v6(v1, v3);
  if (v5)
  {
    v7 = *(v0 + 280);
    v8 = *(v0 + 288);
    v9 = *(v0 + 256);
    v44 = *(v0 + 272);
    v45 = *(v0 + 248);
    v10 = *(v0 + 240);
    sub_23E7DCF08();
    sub_23E7DCEF8();
    sub_23E7DD198();

    v11 = *MEMORY[0x277CD7EB8];
    v12 = sub_23E7DD068();
    v13 = *(v12 - 8);
    (*(v13 + 104))(v8, v11, v12);
    (*(v13 + 56))(v8, 0, 1, v12);
    sub_23E7DD168();

    sub_23E7DCEF8();
    sub_23E7DD198();

    v14 = *MEMORY[0x277CD7EB0];
    v15 = sub_23E7DD058();
    v16 = *(v15 - 8);
    (*(v16 + 104))(v7, v14, v15);
    (*(v16 + 56))(v7, 0, 1, v15);
    sub_23E7DD158();

    swift_getKeyPath();
    v17 = swift_task_alloc();
    *(v17 + 16) = 1;
    *(v17 + 24) = v10;
    v18 = OBJC_IVAR____TtC13AdaptiveMusic16AppleMusicPlayer___observationRegistrar;
    *(v0 + 208) = v10;
    *(v0 + 384) = v18;
    *(v0 + 392) = sub_23E7D82D8(&qword_27E350F20, type metadata accessor for AppleMusicPlayer, &unk_23E7E5824);
    sub_23E7DCD98();

    sub_23E7DCEF8();
    sub_23E7DCED8();

    sub_23E7DD0C8();

    v19 = (*(v9 + 48))(v44, 1, v45);
    v20 = *(v0 + 272);
    if (v19)
    {
      sub_23E7996FC(*(v0 + 272), &qword_27E350278, &qword_23E7E27A8);
      v21 = 0;
      v22 = 0;
    }

    else
    {
      v30 = *(v0 + 256);
      v29 = *(v0 + 264);
      v31 = *(v0 + 248);
      (*(v30 + 16))(v29, *(v0 + 272), v31);
      sub_23E7996FC(v20, &qword_27E350278, &qword_23E7E27A8);
      v21 = sub_23E7DD0E8();
      v22 = v32;
      (*(v30 + 8))(v29, v31);
    }

    v33 = *(*(v0 + 240) + 24);
    v34 = swift_allocObject();
    swift_weakInit();
    v35 = swift_allocObject();
    v35[2] = v34;
    v35[3] = v21;
    v35[4] = v22;
    *(v33 + 16) = sub_23E7D82CC;
    *(v33 + 24) = v35;

    if (qword_27E34FB58 != -1)
    {
      swift_once();
    }

    v36 = sub_23E7DCE88();
    *(v0 + 400) = __swift_project_value_buffer(v36, qword_27E35A110);
    sub_23E794BD8(v0 + 16, v0 + 80);
    v37 = sub_23E7DCE68();
    v38 = sub_23E7DD5E8();
    sub_23E7A4C68(v0 + 16);
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v46 = v40;
      *v39 = 136315138;
      *(v39 + 4) = sub_23E7D2CA4(*(v0 + 32), *(v0 + 40), &v46);
      _os_log_impl(&dword_23E790000, v37, v38, "AppleMusicPlayer playing playlist %s.", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v40);
      MEMORY[0x23EF13B60](v40, -1, -1);
      MEMORY[0x23EF13B60](v39, -1, -1);
    }

    v41 = *(v0 + 32);
    *(v0 + 144) = *(v0 + 16);
    *(v0 + 160) = v41;
    *(v0 + 176) = *(v0 + 48);
    *(v0 + 187) = *(v0 + 59);
    v42 = swift_task_alloc();
    *(v0 + 408) = v42;
    *v42 = v0;
    v42[1] = sub_23E7D76F8;

    return sub_23E7BAE00((v0 + 144));
  }

  else
  {
    if (qword_27E34FB58 != -1)
    {
      swift_once();
    }

    v23 = sub_23E7DCE88();
    *(v0 + 368) = __swift_project_value_buffer(v23, qword_27E35A110);
    v24 = sub_23E7DCE68();
    v25 = sub_23E7DD5E8();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_23E790000, v24, v25, "AppleMusicPlayer not authorized for Apple Music falling back to requesting authorization", v26, 2u);
      MEMORY[0x23EF13B60](v26, -1, -1);
    }

    v27 = swift_task_alloc();
    *(v0 + 376) = v27;
    *v27 = v0;
    v27[1] = sub_23E7D6DC8;
    v28 = *(v0 + 328);

    return MEMORY[0x282124430](v28);
  }
}

uint64_t sub_23E7D6DC8()
{

  return MEMORY[0x2822009F8](sub_23E7D6EC4, 0, 0);
}

uint64_t sub_23E7D6EC4()
{
  v63 = v0;
  v1 = *(v0 + 76);
  v2 = *(v0 + 320);
  v3 = *(v0 + 296);
  v4 = *(v0 + 304);
  v5 = *(v4 + 16);
  v5(v2, *(v0 + 328), v3);
  if ((*(v4 + 88))(v2, v3) == v1)
  {
    v6 = *(v0 + 352);
    v7 = *(v0 + 320);
    v8 = *(v0 + 296);
    v6(*(v0 + 328), v8);
    v6(v7, v8);
    v9 = *(v0 + 280);
    v10 = *(v0 + 288);
    v11 = *(v0 + 256);
    v60 = *(v0 + 272);
    v61 = *(v0 + 248);
    v12 = *(v0 + 240);
    sub_23E7DCF08();
    sub_23E7DCEF8();
    sub_23E7DD198();

    v13 = *MEMORY[0x277CD7EB8];
    v14 = sub_23E7DD068();
    v15 = *(v14 - 8);
    (*(v15 + 104))(v10, v13, v14);
    (*(v15 + 56))(v10, 0, 1, v14);
    sub_23E7DD168();

    sub_23E7DCEF8();
    sub_23E7DD198();

    v16 = *MEMORY[0x277CD7EB0];
    v17 = sub_23E7DD058();
    v18 = *(v17 - 8);
    (*(v18 + 104))(v9, v16, v17);
    (*(v18 + 56))(v9, 0, 1, v17);
    sub_23E7DD158();

    swift_getKeyPath();
    v19 = swift_task_alloc();
    *(v19 + 16) = 1;
    *(v19 + 24) = v12;
    v20 = OBJC_IVAR____TtC13AdaptiveMusic16AppleMusicPlayer___observationRegistrar;
    *(v0 + 208) = v12;
    *(v0 + 384) = v20;
    *(v0 + 392) = sub_23E7D82D8(&qword_27E350F20, type metadata accessor for AppleMusicPlayer, &unk_23E7E5824);
    sub_23E7DCD98();

    sub_23E7DCEF8();
    sub_23E7DCED8();

    sub_23E7DD0C8();

    v21 = (*(v11 + 48))(v60, 1, v61);
    v22 = *(v0 + 272);
    if (v21)
    {
      sub_23E7996FC(*(v0 + 272), &qword_27E350278, &qword_23E7E27A8);
      v23 = 0;
      v24 = 0;
    }

    else
    {
      v47 = *(v0 + 256);
      v46 = *(v0 + 264);
      v48 = *(v0 + 248);
      (*(v47 + 16))(v46, *(v0 + 272), v48);
      sub_23E7996FC(v22, &qword_27E350278, &qword_23E7E27A8);
      v23 = sub_23E7DD0E8();
      v24 = v49;
      (*(v47 + 8))(v46, v48);
    }

    v50 = *(*(v0 + 240) + 24);
    v51 = swift_allocObject();
    swift_weakInit();
    v52 = swift_allocObject();
    v52[2] = v51;
    v52[3] = v23;
    v52[4] = v24;
    *(v50 + 16) = sub_23E7D82CC;
    *(v50 + 24) = v52;

    if (qword_27E34FB58 != -1)
    {
      swift_once();
    }

    v53 = sub_23E7DCE88();
    *(v0 + 400) = __swift_project_value_buffer(v53, qword_27E35A110);
    sub_23E794BD8(v0 + 16, v0 + 80);
    v54 = sub_23E7DCE68();
    v55 = sub_23E7DD5E8();
    sub_23E7A4C68(v0 + 16);
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v62[0] = v57;
      *v56 = 136315138;
      *(v56 + 4) = sub_23E7D2CA4(*(v0 + 32), *(v0 + 40), v62);
      _os_log_impl(&dword_23E790000, v54, v55, "AppleMusicPlayer playing playlist %s.", v56, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v57);
      MEMORY[0x23EF13B60](v57, -1, -1);
      MEMORY[0x23EF13B60](v56, -1, -1);
    }

    v58 = *(v0 + 32);
    *(v0 + 144) = *(v0 + 16);
    *(v0 + 160) = v58;
    *(v0 + 176) = *(v0 + 48);
    *(v0 + 187) = *(v0 + 59);
    v59 = swift_task_alloc();
    *(v0 + 408) = v59;
    *v59 = v0;
    v59[1] = sub_23E7D76F8;

    return sub_23E7BAE00((v0 + 144));
  }

  else
  {
    v25 = *(v0 + 328);
    v26 = *(v0 + 312);
    v27 = *(v0 + 296);
    (*(v0 + 352))(*(v0 + 320), v27);
    v5(v26, v25, v27);
    v28 = sub_23E7DCE68();
    v29 = sub_23E7DD5D8();
    v30 = os_log_type_enabled(v28, v29);
    v31 = *(v0 + 352);
    v32 = *(v0 + 312);
    v33 = *(v0 + 296);
    if (v30)
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v62[0] = v35;
      *v34 = 136315138;
      sub_23E7D82D8(&qword_27E350F40, MEMORY[0x277CD7BF8], MEMORY[0x277CD7C10]);
      v36 = sub_23E7DD8D8();
      v38 = v37;
      v31(v32, v33);
      v39 = sub_23E7D2CA4(v36, v38, v62);

      *(v34 + 4) = v39;
      _os_log_impl(&dword_23E790000, v28, v29, "AppleMusicPlayer not authorized for Apple Music playback with status %s aborting", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v35);
      MEMORY[0x23EF13B60](v35, -1, -1);
      MEMORY[0x23EF13B60](v34, -1, -1);
    }

    else
    {

      v31(v32, v33);
    }

    v40 = *(v0 + 352);
    v41 = *(v0 + 328);
    v42 = *(v0 + 296);
    sub_23E799564();
    swift_allocError();
    *v43 = 2;
    swift_willThrow();
    v40(v41, v42);

    v44 = *(v0 + 8);

    return v44();
  }
}

uint64_t sub_23E7D76F8(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  v4[52] = a1;
  v4[53] = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_23E7D7A44, 0, 0);
  }

  else
  {
    v6 = swift_task_alloc();
    v4[54] = v6;
    *v6 = v5;
    v6[1] = sub_23E7D7878;

    return sub_23E7D5FE0(a1);
  }
}

uint64_t sub_23E7D7878()
{
  v2 = *v1;
  *(v2 + 440) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_23E7D7E48, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_23E7D7A44()
{
  v1 = v0[53];
  type metadata accessor for Code(0);
  v0[27] = -7007;
  v2 = v1;
  sub_23E7D82D8(&qword_27E34FCD0, type metadata accessor for Code, &unk_23E7E10D4);
  v3 = sub_23E7DCBA8();

  if (v3)
  {
    v4 = v0[30];

    swift_getKeyPath();
    v5 = swift_task_alloc();
    *(v5 + 16) = 0;
    *(v5 + 24) = v4;
    v0[29] = v4;
    sub_23E7DCD98();

    v6 = sub_23E7DCE68();
    v7 = sub_23E7DD5D8();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_23E790000, v6, v7, "AppleMusicPlayer got privacy acknowledgement error", v8, 2u);
      MEMORY[0x23EF13B60](v8, -1, -1);
    }

    sub_23E799564();
    swift_allocError();
    *v9 = 5;
    swift_willThrow();
  }

  else
  {
    v10 = v1;
    v11 = sub_23E7DCE68();
    v12 = sub_23E7DD5D8();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      v15 = v1;
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 4) = v16;
      *v14 = v16;
      _os_log_impl(&dword_23E790000, v11, v12, "AppleMusicPlayer failed to schedule playlist: %@", v13, 0xCu);
      sub_23E7996FC(v14, qword_27E34FEA8, &unk_23E7E1AB0);
      MEMORY[0x23EF13B60](v14, -1, -1);
      MEMORY[0x23EF13B60](v13, -1, -1);
    }

    v17 = v0[30];

    swift_getKeyPath();
    v18 = swift_task_alloc();
    *(v18 + 16) = 0;
    *(v18 + 24) = v17;
    v0[28] = v17;
    sub_23E7DCD98();

    sub_23E799564();
    swift_allocError();
    *v19 = 2;
    swift_willThrow();
  }

  v20 = v0[1];

  return v20();
}

uint64_t sub_23E7D7E48()
{

  v1 = v0[55];
  type metadata accessor for Code(0);
  v0[27] = -7007;
  v2 = v1;
  sub_23E7D82D8(&qword_27E34FCD0, type metadata accessor for Code, &unk_23E7E10D4);
  v3 = sub_23E7DCBA8();

  if (v3)
  {
    v4 = v0[30];

    swift_getKeyPath();
    v5 = swift_task_alloc();
    *(v5 + 16) = 0;
    *(v5 + 24) = v4;
    v0[29] = v4;
    sub_23E7DCD98();

    v6 = sub_23E7DCE68();
    v7 = sub_23E7DD5D8();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_23E790000, v6, v7, "AppleMusicPlayer got privacy acknowledgement error", v8, 2u);
      MEMORY[0x23EF13B60](v8, -1, -1);
    }

    sub_23E799564();
    swift_allocError();
    *v9 = 5;
    swift_willThrow();
  }

  else
  {
    v10 = v1;
    v11 = sub_23E7DCE68();
    v12 = sub_23E7DD5D8();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      v15 = v1;
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 4) = v16;
      *v14 = v16;
      _os_log_impl(&dword_23E790000, v11, v12, "AppleMusicPlayer failed to schedule playlist: %@", v13, 0xCu);
      sub_23E7996FC(v14, qword_27E34FEA8, &unk_23E7E1AB0);
      MEMORY[0x23EF13B60](v14, -1, -1);
      MEMORY[0x23EF13B60](v13, -1, -1);
    }

    v17 = v0[30];

    swift_getKeyPath();
    v18 = swift_task_alloc();
    *(v18 + 16) = 0;
    *(v18 + 24) = v17;
    v0[28] = v17;
    sub_23E7DCD98();

    sub_23E799564();
    swift_allocError();
    *v19 = 2;
    swift_willThrow();
  }

  v20 = v0[1];

  return v20();
}

uint64_t sub_23E7D8254()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23E7D828C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23E7D82D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_23E7D8320()
{
  result = qword_27E350F50;
  if (!qword_27E350F50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E350F48, &qword_23E7E58F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E350F50);
  }

  return result;
}

uint64_t Library.userLibraryPlaylists.getter()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_23E7D8450;

  return sub_23E7C7C58();
}

uint64_t sub_23E7D8450(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t Library.isSubscriber.getter()
{
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_23E7D85F0;

  return sub_23E7988F4();
}

uint64_t sub_23E7D85F0(char a1)
{
  v2 = *(*v1 + 16);
  *(*v1 + 32) = a1;

  return MEMORY[0x2822009F8](sub_23E7D8708, v2, 0);
}

uint64_t sub_23E7D8708()
{
  if (*(v0 + 32) == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = sub_23E7DD8E8();
  }

  v2 = *(v0 + 8);

  return v2(v1 & 1);
}

uint64_t sub_23E7D87D0()
{
  type metadata accessor for Library(0);
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  v1 = OBJC_IVAR____TtC13AdaptiveMusic7Library__manifest;
  v2 = type metadata accessor for Manifest(0);
  result = (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC13AdaptiveMusic7Library_subscriptionTask) = 0;
  *(v0 + OBJC_IVAR____TtC13AdaptiveMusic7Library_fetchManifestTask) = 0;
  qword_27E350F60 = v0;
  return result;
}

uint64_t Library.__allocating_init()()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  v1 = OBJC_IVAR____TtC13AdaptiveMusic7Library__manifest;
  v2 = type metadata accessor for Manifest(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC13AdaptiveMusic7Library_subscriptionTask) = 0;
  *(v0 + OBJC_IVAR____TtC13AdaptiveMusic7Library_fetchManifestTask) = 0;
  return v0;
}

double static Library.shared.getter()
{
  if (qword_27E34FB50 != -1)
  {
    swift_once();
  }

  sub_23E7DC9E8();
  return result;
}

uint64_t sub_23E7D8964(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FFB8, &qword_23E7E1D58);
  v2[10] = swift_task_alloc();
  v2[11] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350F98, &qword_23E7E59E0);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350060, &qword_23E7E1E38);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23E7D8A90, v1, 0);
}

uint64_t sub_23E7D8A90()
{
  v1 = v0[16];
  v2 = v0[9];
  v3 = OBJC_IVAR____TtC13AdaptiveMusic7Library__manifest;
  v0[17] = OBJC_IVAR____TtC13AdaptiveMusic7Library__manifest;
  swift_beginAccess();
  sub_23E7DB554(v2 + v3, v1);
  v4 = type metadata accessor for Manifest(0);
  v5 = *(v4 - 8);
  v6 = (*(v5 + 48))(v1, 1, v4);
  v7 = v0[16];
  if (v6 == 1)
  {
    v8 = v0[9];
    sub_23E7996FC(v7, &qword_27E350060, &qword_23E7E1E38);
    v9 = OBJC_IVAR____TtC13AdaptiveMusic7Library_fetchManifestTask;
    v0[18] = OBJC_IVAR____TtC13AdaptiveMusic7Library_fetchManifestTask;
    v10 = *(v8 + v9);
    v0[19] = v10;
    if (v10)
    {
      sub_23E7DC9E8();
      v11 = swift_task_alloc();
      v0[20] = v11;
      *v11 = v0;
      v11[1] = sub_23E7D8DC4;
      v12 = v0[13];
      v13 = v0[14];
    }

    else
    {
      v17 = v0[9];
      v18 = v0[10];
      v19 = sub_23E7DD558();
      (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
      v20 = sub_23E7DB5C4();
      v21 = swift_allocObject();
      v21[2] = v17;
      v21[3] = v20;
      v21[4] = v17;
      swift_retain_n();
      v10 = sub_23E79D130(0, 0, v18, &unk_23E7E59F0, v21);
      v0[21] = v10;
      *(v8 + v9) = v10;
      sub_23E7DC9E8();

      v22 = swift_task_alloc();
      v0[22] = v22;
      *v22 = v0;
      v22[1] = sub_23E7D8FC8;
      v13 = v0[14];
      v12 = v0[12];
    }

    v23 = MEMORY[0x277D84A98];
    v24 = MEMORY[0x277D84AC0];

    return MEMORY[0x282200440](v12, v10, v13, v23, v24);
  }

  else
  {
    v14 = v0[8];
    sub_23E7C5538(v7, v14);
    (*(v5 + 56))(v14, 0, 1, v4);

    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_23E7D8DC4()
{
  v1 = *(*v0 + 72);

  return MEMORY[0x2822009F8](sub_23E7D8ED4, v1, 0);
}

uint64_t sub_23E7D8ED4()
{
  v1 = v0[13];
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    return MEMORY[0x2821FECA8]();
  }

  else
  {
    v2 = v0[8];

    sub_23E7DB710(v1, v2);

    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_23E7D8FC8()
{
  v1 = *(*v0 + 72);

  return MEMORY[0x2822009F8](sub_23E7D90F4, v1, 0);
}

uint64_t sub_23E7D90F4()
{
  v1 = v0[12];
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    return MEMORY[0x2821FECA8]();
  }

  else
  {
    v3 = v0[17];
    v2 = v0[18];
    v4 = v0[15];
    v5 = v0[8];
    v6 = v0[9];
    sub_23E7DB710(v1, v4);
    swift_beginAccess();
    sub_23E7DB780(v4, v6 + v3);
    swift_endAccess();
    *(v6 + v2) = 0;

    sub_23E7DB554(v6 + v3, v5);

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_23E7D9230(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_23E7A23AC;

  return sub_23E7D92CC(a1);
}

uint64_t sub_23E7D92CC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_23E7D9368;

  return sub_23E796820(a1);
}

uint64_t sub_23E7D9368()
{
  v2 = *(*v1 + 24);
  *(*v1 + 40) = v0;

  if (v0)
  {
    v3 = sub_23E7D952C;
  }

  else
  {
    v3 = sub_23E7D9490;
  }

  return MEMORY[0x2822009F8](v3, v2, 0);
}

uint64_t sub_23E7D9490()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for Manifest(0);
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_23E7D952C()
{
  if (qword_27E34FB58 != -1)
  {
    swift_once();
  }

  v1 = v0[5];
  v2 = sub_23E7DCE88();
  __swift_project_value_buffer(v2, qword_27E35A110);
  v3 = v1;
  v4 = sub_23E7DCE68();
  v5 = sub_23E7DD5D8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[5];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_23E790000, v4, v5, "Failed to fetch manifest: %@", v8, 0xCu);
    sub_23E7996FC(v9, qword_27E34FEA8, &unk_23E7E1AB0);
    MEMORY[0x23EF13B60](v9, -1, -1);
    MEMORY[0x23EF13B60](v8, -1, -1);
  }

  else
  {
  }

  v12 = v0[2];
  v13 = type metadata accessor for Manifest(0);
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  v14 = v0[1];

  return v14();
}

uint64_t Library.init()()
{
  swift_defaultActor_initialize();
  v1 = OBJC_IVAR____TtC13AdaptiveMusic7Library__manifest;
  v2 = type metadata accessor for Manifest(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC13AdaptiveMusic7Library_subscriptionTask) = 0;
  *(v0 + OBJC_IVAR____TtC13AdaptiveMusic7Library_fetchManifestTask) = 0;
  return v0;
}

uint64_t sub_23E7D979C()
{
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_23E7D9840;

  return sub_23E7988F4();
}

uint64_t sub_23E7D9840(char a1)
{
  v3 = *v1;
  v7 = *v1;

  *(v3 + 40) = a1 ^ 1;
  v4 = (v3 + 40);
  v5 = swift_task_alloc();
  *(v4 - 1) = v5;
  *v5 = v7;
  v5[1] = sub_23E7D9984;

  return Library.moods(for:)(v4);
}

uint64_t sub_23E7D9984(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t Library.suggestedContent.getter(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_23E7D9B24;

  return sub_23E7988F4();
}

uint64_t sub_23E7D9B24(char a1)
{
  v2 = *(*v1 + 24);
  *(*v1 + 40) = a1;

  return MEMORY[0x2822009F8](sub_23E7D9C3C, v2, 0);
}

uint64_t Library.moods(for:)(_BYTE *a1)
{
  v2[2] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350060, &qword_23E7E1E38);
  v4 = swift_task_alloc();
  v2[3] = v4;
  v5 = swift_task_alloc();
  v2[4] = v5;
  if (!*a1)
  {
    v4 = v5;
    v6 = swift_task_alloc();
    v2[5] = v6;
    *v6 = v2;
    v7 = sub_23E7D9DF4;
    goto LABEL_5;
  }

  if (*a1 == 1)
  {
    v6 = swift_task_alloc();
    v2[6] = v6;
    *v6 = v2;
    v7 = sub_23E7D9FF8;
LABEL_5:
    v6[1] = v7;

    return sub_23E7D8964(v4);
  }

  v9 = v2[1];
  v10 = MEMORY[0x277D84F90];

  return v9(v10);
}

uint64_t sub_23E7D9DF4()
{
  v1 = *(*v0 + 16);

  return MEMORY[0x2822009F8](sub_23E7D9F04, v1, 0);
}

uint64_t sub_23E7D9F04()
{
  v1 = *(v0 + 32);
  v2 = type metadata accessor for Manifest(0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_23E7996FC(v1, &qword_27E350060, &qword_23E7E1E38);
    v3 = MEMORY[0x277D84F90];
  }

  else
  {
    v3 = *(v1 + *(v2 + 28));
    sub_23E7DC9D8();
    sub_23E7984EC(v1);
  }

  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_23E7D9FF8()
{
  v1 = *(*v0 + 16);

  return MEMORY[0x2822009F8](sub_23E7DA108, v1, 0);
}

uint64_t sub_23E7DA108()
{
  v1 = *(v0 + 24);
  v2 = type metadata accessor for Manifest(0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_23E7996FC(v1, &qword_27E350060, &qword_23E7E1E38);
    v3 = MEMORY[0x277D84F90];
  }

  else
  {
    v3 = *(v1 + *(v2 + 32));
    sub_23E7DC9D8();
    sub_23E7984EC(v1);
  }

  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t Library.deinit()
{
  sub_23E7996FC(v0 + OBJC_IVAR____TtC13AdaptiveMusic7Library__manifest, &qword_27E350060, &qword_23E7E1E38);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t Library.__deallocating_deinit()
{
  sub_23E7996FC(v0 + OBJC_IVAR____TtC13AdaptiveMusic7Library__manifest, &qword_27E350060, &qword_23E7E1E38);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t Library.appleMusicMoods.getter()
{
  v1[2] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350060, &qword_23E7E1E38);
  v2 = swift_task_alloc();
  v1[3] = v2;
  v3 = swift_task_alloc();
  v1[4] = v3;
  *v3 = v1;
  v3[1] = sub_23E7DA3B8;

  return sub_23E7D8964(v2);
}

uint64_t sub_23E7DA3B8()
{
  v1 = *(*v0 + 16);

  return MEMORY[0x2822009F8](sub_23E7DA4C8, v1, 0);
}

uint64_t sub_23E7DA4C8()
{
  v1 = *(v0 + 24);
  v2 = type metadata accessor for Manifest(0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_23E7996FC(v1, &qword_27E350060, &qword_23E7E1E38);
    v3 = MEMORY[0x277D84F90];
  }

  else
  {
    v3 = *(v1 + *(v2 + 28));
    sub_23E7DC9D8();
    sub_23E7984EC(v1);
  }

  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t Library.uploadedAudioMoods.getter()
{
  v1[2] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350060, &qword_23E7E1E38);
  v2 = swift_task_alloc();
  v1[3] = v2;
  v3 = swift_task_alloc();
  v1[4] = v3;
  *v3 = v1;
  v3[1] = sub_23E7DA688;

  return sub_23E7D8964(v2);
}

uint64_t sub_23E7DA688()
{
  v1 = *(*v0 + 16);

  return MEMORY[0x2822009F8](sub_23E7DA798, v1, 0);
}

uint64_t sub_23E7DA798()
{
  v1 = *(v0 + 24);
  v2 = type metadata accessor for Manifest(0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_23E7996FC(v1, &qword_27E350060, &qword_23E7E1E38);
    v3 = MEMORY[0x277D84F90];
  }

  else
  {
    v3 = *(v1 + *(v2 + 32));
    sub_23E7DC9D8();
    sub_23E7984EC(v1);
  }

  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t Library.contains(playlist:)(uint64_t a1)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = v1;
  v3 = *(a1 + 8);
  *(v2 + 96) = *a1;
  *(v2 + 104) = v3;
  *(v2 + 76) = *(a1 + 56);
  *(v2 + 77) = *(a1 + 57);
  v4 = swift_task_alloc();
  *(v2 + 112) = v4;
  *v4 = v2;
  v4[1] = sub_23E7DA940;

  return sub_23E7988F4();
}

uint64_t sub_23E7DA940(char a1)
{
  v3 = *v1;
  v4 = *(*v1 + 77);
  v5 = *v1;

  if (v4)
  {
    if (v4 == 1)
    {
      if (a1)
      {
        goto LABEL_12;
      }

      goto LABEL_6;
    }

    if (a1)
    {
      v10 = sub_23E7C7C58;
      v6 = swift_task_alloc();
      *(v3 + 120) = v6;
      *v6 = v5;
      v7 = sub_23E7DAB30;
      goto LABEL_9;
    }

LABEL_12:
    v9 = *(v5 + 8);

    return v9(0);
  }

  if ((a1 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  v10 = sub_23E7988F4;
  v6 = swift_task_alloc();
  *(v3 + 136) = v6;
  *v6 = v5;
  v7 = sub_23E7DAD34;
LABEL_9:
  v6[1] = v7;

  return v10();
}

uint64_t sub_23E7DAB30(uint64_t a1)
{
  v2 = *(*v1 + 88);
  *(*v1 + 128) = a1;

  return MEMORY[0x2822009F8](sub_23E7DAC48, v2, 0);
}

uint64_t sub_23E7DAC48()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 78);
  v3 = *(v0 + 76);
  v4 = *(v0 + 104);
  *(v0 + 16) = *(v0 + 96);
  v5 = *(v0 + 80);
  *(v0 + 24) = v4;
  v6 = *(v5 + 48);
  v7 = *(v5 + 32);
  *(v0 + 32) = *(v5 + 16);
  *(v0 + 48) = v7;
  *(v0 + 64) = v6;
  *(v0 + 72) = v3;
  *(v0 + 73) = 2;
  *(v0 + 74) = v2;
  v8 = swift_task_alloc();
  *(v8 + 16) = v0 + 16;
  v9 = sub_23E7CB3F4(sub_23E7DB254, v8, v1);

  v10 = *(v0 + 8);

  return v10(v9 & 1);
}

uint64_t sub_23E7DAD34(char a1)
{
  v3 = *v1;
  v7 = *v1;

  *(v3 + 75) = a1 ^ 1;
  v4 = v3 + 75;
  v5 = swift_task_alloc();
  *(v4 + 69) = v5;
  *v5 = v7;
  v5[1] = sub_23E7DAE78;

  return Library.moods(for:)(v4);
}

uint64_t sub_23E7DAE78(uint64_t a1)
{
  v2 = *(*v1 + 88);
  *(*v1 + 152) = a1;

  return MEMORY[0x2822009F8](sub_23E7DAF90, v2, 0);
}

void sub_23E7DAF90()
{
  v1 = *(v0 + 152);
  v22 = *(v1 + 16);
  if (v22)
  {
    v2 = 0;
    v3 = 0xEC00000079746976;
    v4 = 0xE900000000000067;
    v5 = 0x6D6F74737563;
    v6 = (v1 + 56);
    v7 = 0xE500000000000000;
    while (1)
    {
      if (v2 >= *(v1 + 16))
      {
        __break(1u);
        return;
      }

      v8 = *(v6 - 24);
      if (v8 <= 1)
      {
        if (*(v6 - 24))
        {
          v9 = 0x6C6C696863;
        }

        else
        {
          v9 = 0x69746375646F7270;
        }

        if (*(v6 - 24))
        {
          v10 = 0xE500000000000000;
        }

        else
        {
          v10 = v3;
        }
      }

      else if (v8 == 2)
      {
        v10 = 0xE500000000000000;
        v9 = 0x7065656C73;
      }

      else
      {
        if (v8 == 3)
        {
          v9 = 0x6E6965626C6C6577;
        }

        else
        {
          v9 = 0x6D6F74737563;
        }

        if (v8 == 3)
        {
          v10 = 0xE900000000000067;
        }

        else
        {
          v10 = 0xE600000000000000;
        }
      }

      v11 = *v6;
      ++v2;
      v12 = *(v0 + 76);
      if (v12 == 3)
      {
        v5 = 0x6E6965626C6C6577;
      }

      else
      {
        v4 = 0xE600000000000000;
      }

      if (v12 == 2)
      {
        v5 = 0x7065656C73;
        v4 = 0xE500000000000000;
      }

      if (*(v0 + 76))
      {
        v13 = 0x6C6C696863;
      }

      else
      {
        v13 = 0x69746375646F7270;
      }

      if (!*(v0 + 76))
      {
        v7 = v3;
      }

      v14 = *(v0 + 76) <= 1u ? v13 : v5;
      v15 = *(v0 + 76) <= 1u ? v7 : v4;
      if (v9 == v14 && v10 == v15)
      {
        break;
      }

      v16 = v3;
      v23 = sub_23E7DD8E8();
      sub_23E7DC9D8();
      sub_23E7DC9D8();

      if (v23)
      {
        goto LABEL_42;
      }

      v6 += 4;
      v3 = v16;
      v4 = 0xE900000000000067;
      v5 = 0x6D6F74737563;
      v7 = 0xE500000000000000;
      if (v22 == v2)
      {
        v17 = 0;
        goto LABEL_49;
      }
    }

    sub_23E7DC9D8();
    sub_23E7DC9D8();

LABEL_42:

    v18 = (v11 + 40);
    v19 = *(v11 + 16) + 1;
    do
    {
      v17 = --v19 != 0;
      if (!v19)
      {
        break;
      }

      if (*(v18 - 1) == *(v0 + 96) && *v18 == *(v0 + 104))
      {
        break;
      }

      v18 += 8;
    }

    while ((sub_23E7DD8E8() & 1) == 0);
  }

  else
  {
    v17 = 0;
  }

LABEL_49:

  v21 = *(v0 + 8);

  v21(v17);
}

uint64_t sub_23E7DB254(_OWORD *a1)
{
  v2 = *(v1 + 16);
  v3 = a1[1];
  v8[0] = *a1;
  v8[1] = v3;
  v9[0] = a1[2];
  *(v9 + 11) = *(a1 + 43);
  v4 = v2[1];
  v6[0] = *v2;
  v6[1] = v4;
  v7[0] = v2[2];
  *(v7 + 11) = *(v2 + 43);
  return _s13AdaptiveMusic4MoodV8PlaylistV2eeoiySbAE_AEtFZ_0(v8, v6) & 1;
}

uint64_t type metadata accessor for Library(uint64_t a1)
{
  result = qword_27E350F80;
  if (!qword_27E350F80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23E7DB318(uint64_t a1)
{
  sub_23E7DB4FC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of Library.moods.getter()
{
  v4 = (*(*v0 + 216) + **(*v0 + 216));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_23E7D8450;

  return v4();
}

void sub_23E7DB4FC(uint64_t a1)
{
  if (!qword_27E350F90)
  {
    type metadata accessor for Manifest(255);
    v1 = sub_23E7DD658();
    if (!v2)
    {
      atomic_store(v1, &qword_27E350F90);
    }
  }
}

uint64_t sub_23E7DB554(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350060, &qword_23E7E1E38);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_23E7DB5C4()
{
  result = qword_27E350FA0;
  if (!qword_27E350FA0)
  {
    type metadata accessor for Library(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E350FA0);
  }

  return result;
}

uint64_t sub_23E7DB61C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23E7DB65C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_23E7A23AC;

  return sub_23E7D9230(a1);
}

uint64_t sub_23E7DB710(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350060, &qword_23E7E1E38);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23E7DB780(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350060, &qword_23E7E1E38);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_23E7DB800(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FFB8, &qword_23E7E1D58);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v23 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350FE0, &qword_23E7E5A40);
  sub_23E7DCCA8();
  if (v25)
  {
    Strong = swift_unknownObjectUnownedLoadStrong();
    v8 = *&Strong[OBJC_IVAR____TtC13AdaptiveMusic19QueuePlayerObserver_onPlaybackChange];
    sub_23E7DC9E8();

    HIBYTE(v23) = 0;
    v8(&v23 + 7);
  }

  else
  {
    v9 = v24;
    if (qword_27E34FB58 != -1)
    {
      swift_once();
    }

    v10 = sub_23E7DCE88();
    __swift_project_value_buffer(v10, qword_27E35A110);
    v11 = sub_23E7DCE68();
    v12 = sub_23E7DD5E8();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 134217984;
      *(v13 + 4) = v9;
      _os_log_impl(&dword_23E790000, v11, v12, "QueuePlayer playback rate changed to %f", v13, 0xCu);
      MEMORY[0x23EF13B60](v13, -1, -1);
    }

    if (v9 <= 0.0)
    {
      v15 = swift_unknownObjectUnownedLoadStrong();
      v16 = *&v15[OBJC_IVAR____TtC13AdaptiveMusic19QueuePlayerObserver_player];

      v17 = [v16 currentItem];
      if (v17)
      {

        v14 = 2;
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 3;
    }

    v18 = sub_23E7DD558();
    (*(*(v18 - 8) + 56))(v6, 1, 1, v18);
    sub_23E7DD538();
    sub_23E7DC9E8();
    v19 = sub_23E7DD528();
    v20 = swift_allocObject();
    v21 = MEMORY[0x277D85700];
    *(v20 + 16) = v19;
    *(v20 + 24) = v21;
    *(v20 + 32) = a3;
    *(v20 + 40) = v14;
    sub_23E79CE30(0, 0, v6, &unk_23E7E5A50, v20);
  }
}

uint64_t sub_23E7DBAD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 32) = a5;
  *(v5 + 16) = a4;
  sub_23E7DD538();
  *(v5 + 24) = sub_23E7DD528();
  v7 = sub_23E7DD518();

  return MEMORY[0x2822009F8](sub_23E7DBB70, v7, v6);
}

uint64_t sub_23E7DBB70()
{
  v7 = v0;
  v1 = *(v0 + 32);

  Strong = swift_unknownObjectUnownedLoadStrong();
  v3 = *&Strong[OBJC_IVAR____TtC13AdaptiveMusic19QueuePlayerObserver_onPlaybackChange];
  sub_23E7DC9E8();

  v6 = v1;
  v3(&v6);

  v4 = *(v0 + 8);

  return v4();
}

void sub_23E7DBC28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E34FFB8, &qword_23E7E1D58);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v26 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350FD0, &qword_23E7E5A20);
  sub_23E7DCCA8();
  v7 = v29;
  if (v29 != 1)
  {
    sub_23E7DCCB8();
    v8 = v29;
    if (v29 == 1)
    {
      sub_23E7DC1AC(v7);
    }

    else
    {
      if (qword_27E34FB58 != -1)
      {
        swift_once();
      }

      v9 = sub_23E7DCE88();
      __swift_project_value_buffer(v9, qword_27E35A110);
      sub_23E7DC1BC(v8);
      sub_23E7DC1BC(v7);
      v10 = sub_23E7DCE68();
      v11 = sub_23E7DD5C8();
      sub_23E7DC1AC(v8);
      sub_23E7DC1AC(v7);
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v28 = v8;
        v29 = v27;
        *v12 = 136315394;
        v13 = v8;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E350FD8, &qword_23E7E5A38);
        v14 = sub_23E7DD358();
        v16 = sub_23E7D2CA4(v14, v15, &v29);

        *(v12 + 4) = v16;
        *(v12 + 12) = 2080;
        v28 = v7;
        v17 = v7;
        v18 = sub_23E7DD358();
        v20 = sub_23E7D2CA4(v18, v19, &v29);

        *(v12 + 14) = v20;
        _os_log_impl(&dword_23E790000, v10, v11, "currentItem updated from %s to: %s", v12, 0x16u);
        v21 = v27;
        swift_arrayDestroy();
        MEMORY[0x23EF13B60](v21, -1, -1);
        MEMORY[0x23EF13B60](v12, -1, -1);
      }

      v22 = sub_23E7DD558();
      (*(*(v22 - 8) + 56))(v6, 1, 1, v22);
      sub_23E7DD538();
      sub_23E7DC1BC(v8);
      sub_23E7DC1BC(v7);
      sub_23E7DC9E8();
      v23 = sub_23E7DD528();
      v24 = swift_allocObject();
      v25 = MEMORY[0x277D85700];
      v24[2] = v23;
      v24[3] = v25;
      v24[4] = a3;
      v24[5] = v8;
      v24[6] = v7;
      sub_23E79CE30(0, 0, v6, &unk_23E7E5A30, v24);
      sub_23E7DC1AC(v7);
      sub_23E7DC1AC(v8);
    }
  }
}

uint64_t sub_23E7DBF80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_23E7DD538();
  v6[5] = sub_23E7DD528();
  v8 = sub_23E7DD518();

  return MEMORY[0x2822009F8](sub_23E7DC01C, v8, v7);
}

uint64_t sub_23E7DC01C()
{
  v1 = v0[4];
  v2 = v0[3];

  Strong = swift_unknownObjectUnownedLoadStrong();
  v4 = *&Strong[OBJC_IVAR____TtC13AdaptiveMusic19QueuePlayerObserver_onItemChange];
  sub_23E7DC9E8();

  v4(v2, v1);

  v5 = v0[1];

  return v5();
}

void sub_23E7DC1AC(id a1)
{
  if (a1 != 1)
  {
  }
}

id sub_23E7DC1BC(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

uint64_t sub_23E7DC1CC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_23E7DC21C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_23E7A23AC;

  return sub_23E7DBF80(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_23E7DC2E4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_23E7DC324(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_23E7A6BDC;

  return sub_23E7DBAD4(a1, v4, v5, v6, v7);
}

uint64_t sub_23E7DC3E8()
{
  v0 = sub_23E7DCE88();
  __swift_allocate_value_buffer(v0, qword_27E35A110);
  __swift_project_value_buffer(v0, qword_27E35A110);
  return sub_23E7DCE78();
}

uint64_t sub_23E7DC458@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_23E7DC5EC(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

uint64_t sub_23E7DC484(void *a1)
{
  result = sub_23E7DC534(*v1, *(v1 + 8));
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_23E7DD9F8();
    __swift_mutable_project_boxed_opaque_existential_1(v5, v5[3]);
    sub_23E7DD908();
    return __swift_destroy_boxed_opaque_existential_1(v5);
  }

  return result;
}

uint64_t sub_23E7DC534(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    sub_23E7DC9D8();
    while (1)
    {
      sub_23E7DD3B8();
      if (!v3)
      {
        break;
      }

      v4 = sub_23E7DD2D8();

      if ((v4 & 1) == 0)
      {
      }
    }
  }

  sub_23E7DC6DC();
  swift_allocError();
  return swift_willThrow();
}

uint64_t sub_23E7DC5EC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23E7DD9D8();
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  v2 = sub_23E7DD8F8();
  v4 = v3;
  __swift_destroy_boxed_opaque_existential_1(v6);
  sub_23E7DC534(v2, v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

unint64_t sub_23E7DC6DC()
{
  result = qword_27E350FE8;
  if (!qword_27E350FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E350FE8);
  }

  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

unint64_t sub_23E7DC7A4()
{
  result = qword_27E350FF0;
  if (!qword_27E350FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E350FF0);
  }

  return result;
}