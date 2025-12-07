uint64_t sub_1C4B6DF70(uint64_t a1)
{
  v3 = type metadata accessor for Configuration(0);
  sub_1C43FCF7C(v3);
  v5 = v4;
  v7 = v6;
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = *(v1 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1C4B6D5D0(a1, v1 + v8, v9);
}

uint64_t sub_1C4B6E004(uint64_t a1)
{
  v4 = type metadata accessor for Configuration(0);
  sub_1C43FCF7C(v4);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v8 = (*(v7 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = *(v1 + v8);
  v12 = *(v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v2 + 16) = v13;
  *v13 = v2;
  v13[1] = sub_1C4665934;

  return sub_1C4B6D8D0(a1, v9, v10, v1 + v6, v11, v12);
}

uint64_t sub_1C4B6E134(char *a1, char a2)
{
  v4 = sub_1C4EF98F8();
  sub_1C43FCDF8();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBFDC();
  v52 = v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v49 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v49 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v49 - v16;
  if (qword_1EDDFFAF0 != -1)
  {
    sub_1C440686C();
    swift_once();
  }

  v18 = sub_1C4F00978();
  v19 = sub_1C442B738(v18, qword_1EDE2E088);
  v20 = *(v6 + 16);
  v55 = a1;
  v53 = v20;
  v20(v17, a1, v4);
  v54 = v19;
  v21 = sub_1C4F00968();
  v22 = sub_1C4F01CF8();
  v23 = os_log_type_enabled(v21, v22);
  v24 = 0x6574707572726F63;
  if (a2)
  {
    v24 = 0x6552616D65686373;
  }

  v57 = v6;
  v58 = v24;
  if (a2)
  {
    v25 = 0xEB00000000746573;
  }

  else
  {
    v25 = 0xE900000000000064;
  }

  if (v23)
  {
    v26 = swift_slowAlloc();
    v51 = v11;
    v27 = v26;
    v50 = swift_slowAlloc();
    v59[0] = v50;
    *v27 = 136315394;
    v28 = sub_1C441D828(v58, v25, v59);

    *(v27 + 4) = v28;
    *(v27 + 12) = 2080;
    sub_1C44266D0();
    v29 = sub_1C4F02858();
    v30 = v6;
    v31 = v14;
    v32 = v4;
    v34 = v33;
    v56 = *(v30 + 8);
    v56(v17, v32);
    v35 = sub_1C441D828(v29, v34, v59);
    v4 = v32;
    v14 = v31;

    *(v27 + 14) = v35;
    _os_log_impl(&dword_1C43F8000, v21, v22, "StorageSystem: placing %s marker for %s", v27, 0x16u);
    swift_arrayDestroy();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    v11 = v51;
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  else
  {

    v56 = *(v6 + 8);
    v56(v17, v4);
  }

  sub_1C4EF9898();

  sub_1C4EF9AA8();
  v53(v11, v14, v4);
  v36 = sub_1C4F00968();
  v37 = sub_1C4F01CF8();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = v11;
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v59[0] = v40;
    *v39 = 136315138;
    sub_1C44266D0();
    v41 = sub_1C4F02858();
    v43 = v42;
    sub_1C4400EB8();
    v44 = v38;
    v45 = v56;
    v56(v44, v4);
    v46 = sub_1C441D828(v41, v43, v59);

    *(v39 + 4) = v46;
    _os_log_impl(&dword_1C43F8000, v36, v37, "StorageSystem: successfully placed marker at %s", v39, 0xCu);
    sub_1C440962C(v40);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();

    return v45(v14, v4);
  }

  else
  {

    sub_1C4400EB8();
    v48 = v56;
    v56(v11, v4);
    return v48(v14, v4);
  }
}

uint64_t sub_1C4B6E7A0(uint64_t a1, int a2)
{
  v31 = a2;
  v4 = sub_1C4EF98F8();
  sub_1C43FCDF8();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBFDC();
  v28 = v8;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v23 - v11;
  v13 = 0;
  v32 = *(a1 + 16);
  v29 = v6 + 16;
  v30 = a1;
  v14 = (v6 + 8);
  v27 = (v6 + 32);
  v15 = MEMORY[0x1E69E7CC0];
  while (v32 != v13)
  {
    v16 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v17 = *(v6 + 72);
    (*(v6 + 16))(v12, v30 + v16 + v17 * v13, v4, v10);
    v18 = sub_1C4B6EBCC(v12, v31 & 1);
    if (v2)
    {
      (*v14)(v12, v4);

      return v15;
    }

    if (v18)
    {
      v26 = *v27;
      v26(v28, v12, v4);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v33 = v15;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1C459EE58();
        v15 = v33;
      }

      v20 = *(v15 + 16);
      v21 = v20 + 1;
      if (v20 >= *(v15 + 24) >> 1)
      {
        v24 = *(v15 + 16);
        v25 = v20 + 1;
        sub_1C459EE58();
        v20 = v24;
        v21 = v25;
        v15 = v33;
      }

      ++v13;
      *(v15 + 16) = v21;
      v26((v15 + v16 + v20 * v17), v28, v4);
    }

    else
    {
      (*v14)(v12, v4);
      ++v13;
    }
  }

  return v15;
}

id sub_1C4B6E9F4(uint64_t a1, char a2)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1C4EF98F8();
  sub_1C43FCDF8();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_opt_self() defaultManager];
  sub_1C4EF9898();

  v9 = sub_1C4EF9868();
  (*(v4 + 8))(v7, v2);
  v12[0] = 0;
  LOBYTE(v2) = [v8 removeItemAtURL:v9 error:v12];

  if (v2)
  {
    return v12[0];
  }

  v11 = v12[0];
  sub_1C4EF97A8();

  return swift_willThrow();
}

id sub_1C4B6EBCC(uint64_t a1, char a2)
{
  v4 = sub_1C4EF98F8();
  sub_1C43FCDF8();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBFDC();
  v33 = v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v29 - v10;
  v12 = [objc_opt_self() defaultManager];
  if (a2)
  {
    v13 = 0x6552616D65686373;
  }

  else
  {
    v13 = 0x6574707572726F63;
  }

  if (a2)
  {
    v14 = 0xEB00000000746573;
  }

  else
  {
    v14 = 0xE900000000000064;
  }

  v31 = v13;
  sub_1C4EF9898();

  sub_1C4EF98E8();
  v32 = *(v6 + 8);
  v32(v11, v4);
  v15 = sub_1C4F01108();

  v16 = [v12 fileExistsAtPath_];

  if (v16)
  {
    if (qword_1EDDFFAF0 != -1)
    {
      sub_1C440686C();
      swift_once();
    }

    v17 = sub_1C4F00978();
    sub_1C442B738(v17, qword_1EDE2E088);
    v18 = v33;
    (*(v6 + 16))(v33, a1, v4);
    v19 = sub_1C4F00968();
    v20 = sub_1C4F01CF8();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = v18;
      v22 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v34 = v30;
      *v22 = 136315394;
      v23 = sub_1C441D828(v31, v14, &v34);

      *(v22 + 4) = v23;
      *(v22 + 12) = 2080;
      sub_1C44266D0();
      v24 = sub_1C4F02858();
      v26 = v25;
      v32(v21, v4);
      v27 = sub_1C441D828(v24, v26, &v34);

      *(v22 + 14) = v27;
      _os_log_impl(&dword_1C43F8000, v19, v20, "StorageSystem: %s marker detected for %s", v22, 0x16u);
      swift_arrayDestroy();
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    else
    {

      v32(v18, v4);
    }
  }

  return v16;
}

uint64_t sub_1C4B6EF3C(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  v61 = a3;
  v63 = a2;
  v4 = sub_1C4EFB768();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v60 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v12 = sub_1C4EFBC58();
  sub_1C43FD428();
  sub_1C4EFB758();
  v74 = v12;
  v13 = v71;
  v14 = sub_1C4EFBBB8();
  if (v13)
  {
    v15 = sub_1C44000C4();
    v16(v15);
    return sub_1C46AA374(&v72);
  }

  else
  {
    v18 = v14;
    v66 = v7;
    v60 = v10;
    v19 = sub_1C44000C4();
    v68 = v20;
    (v20)(v19);
    sub_1C46AA374(&v72);
    v64 = a1;
    v65 = 0x80000001C4FB3090;
    v69 = v4;
    v70 = v5 + 8;
    v21 = v63;
    v67 = v18;
    while (1)
    {
      v22 = sub_1C4458EE8();
      if (!v22)
      {
        break;
      }

      v23 = v21;
      v71 = v22;
      sub_1C493DD18();
      v25 = v24;
      v27 = v26;
      v72 = 0;
      v73 = 0xE000000000000000;
      sub_1C4F02248();

      v72 = 0xD00000000000001ALL;
      v73 = v65;
      v28 = sub_1C44000C4();
      MEMORY[0x1C6940010](v28);
      sub_1C43FD428();
      v29 = v66;
      sub_1C4EFB758();
      v30 = sub_1C4EFBC38();
      v31 = v69;
      v32 = v30;

      v68(v29, v31);
      sub_1C46AA374(&v72);
      if (v32 && (, v33 = sub_1C493CBD4(), v35 = v34, , (v35 & 1) == 0))
      {
        v62 = v33;
        swift_isUniquelyReferenced_nonNull_native();
        v72 = *v23;
        v40 = v72;
        *v23 = 0x8000000000000000;
        v63 = v27;
        v41 = sub_1C445FAA8(v25, v27);
        if (__OFADD__(*(v40 + 16), (v42 & 1) == 0))
        {
          __break(1u);
LABEL_25:
          __break(1u);
          swift_unexpectedError();
          __break(1u);
LABEL_26:
          result = sub_1C4F029F8();
          __break(1u);
          return result;
        }

        v43 = v41;
        v44 = v42;
        sub_1C456902C(&qword_1EC0C3D60, &unk_1C4F55880);
        if (sub_1C4F02458())
        {
          v45 = v63;
          v46 = sub_1C445FAA8(v25, v63);
          if ((v44 & 1) != (v47 & 1))
          {
            goto LABEL_26;
          }

          v43 = v46;
          v21 = v23;
        }

        else
        {
          v21 = v23;
          v45 = v63;
        }

        v48 = v72;
        if (v44)
        {
          *(*(v72 + 56) + 8 * v43) = v62;
        }

        else
        {
          *(v72 + 8 * (v43 >> 6) + 64) |= 1 << v43;
          v49 = (v48[6] + 16 * v43);
          *v49 = v25;
          v49[1] = v45;
          *(v48[7] + 8 * v43) = v62;
          v50 = v48[2];
          v51 = __OFADD__(v50, 1);
          v52 = v50 + 1;
          if (v51)
          {
            goto LABEL_25;
          }

          v48[2] = v52;
        }

        *v21 = v48;
      }

      else
      {
        v21 = v23;
        v36 = sub_1C44000C4();
        sub_1C445FAA8(v36, v37);
        if (v38)
        {
          swift_isUniquelyReferenced_nonNull_native();
          v72 = *v23;
          *v23 = 0x8000000000000000;
          sub_1C456902C(&qword_1EC0C3D60, &unk_1C4F55880);
          sub_1C4F02458();
          v39 = v72;

          sub_1C4F02478();
          *v23 = v39;
        }
      }
    }

    sub_1C43FD428();
    v53 = v60;
    sub_1C4EFB758();
    v54 = v53;
    v55 = sub_1C4EFBC38();
    v68(v54, v69);
    sub_1C46AA374(&v72);
    if (v55)
    {

      v56 = sub_1C493CBD4();
      v58 = v57;
    }

    else
    {

      v56 = 0;
      v58 = 1;
    }

    v59 = v61;
    *v61 = v56;
    *(v59 + 8) = v58 & 1;
  }

  return result;
}

uint64_t sub_1C4B6F59C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return sub_1C4B6FAAC();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C4B6F5D0(uint64_t a1)
{
  if (*(a1 + 16) < 2uLL)
  {
    return 0;
  }

  sub_1C4A3E0E8(a1, &v3);
  if (!*(&v4 + 1))
  {
    sub_1C4423A0C(&v3, &qword_1EC0B97A0, &qword_1C4F0F7D0);
    return 0;
  }

  v6[0] = v3;
  v6[1] = v4;
  v7 = v5;
  v1 = sub_1C4B6FAAC();
  sub_1C46CB91C(v6);
  return v1;
}

uint64_t sub_1C4B6F66C()
{
  v1 = v0;
  sub_1C4409678(v0, v0[3]);
  v2 = sub_1C4400EC4();
  v3(v2);
  v4 = v44;
  if (!v44)
  {
    sub_1C4423A0C(&v43, &qword_1EC0BB380, &unk_1C4F1F2E0);
LABEL_7:
    sub_1C4409678(v1, v1[3]);
    v14 = sub_1C4400EC4();
    v15(v14);
    v16 = v44;
    if (v44)
    {
      v17 = v45;
      sub_1C4409678(&v43, v44);
      v18 = (*(v17 + 24))(v16, v17);
      v11 = RTPlaceInferenceUserSpecificPlaceType.description.getter(v18);
      sub_1C440962C(&v43);
    }

    else
    {
      sub_1C4423A0C(&v43, &qword_1EC0BB380, &unk_1C4F1F2E0);
      return 0;
    }

    return v11;
  }

  v5 = v45;
  sub_1C4409678(&v43, v44);
  v6 = (*(v5 + 24))(v4, v5);
  sub_1C440962C(&v43);
  if (v6)
  {
    goto LABEL_7;
  }

  sub_1C4409678(v1, v1[3]);
  v7 = sub_1C4400EC4();
  v8(v7);
  v9 = v44;
  if (!v44)
  {
    sub_1C4423A0C(&v43, &qword_1EC0BB380, &unk_1C4F1F2E0);
    goto LABEL_11;
  }

  v10 = v45;
  sub_1C4409678(&v43, v44);
  v11 = (*(v10 + 8))(v9, v10);
  v13 = v12;
  sub_1C440962C(&v43);
  if (!v13)
  {
LABEL_11:
    v41 = 0x203A74616CLL;
    v42 = 0xE500000000000000;
    sub_1C456902C(&qword_1EC0B8400, &unk_1C4F175E0);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1C4F0D130;
    v20 = v1[3];
    v21 = v1[4];
    sub_1C4409678(v1, v20);
    (*(v21 + 24))(v38, v20, v21);
    v22 = v39;
    v23 = MEMORY[0x1E69E63B0];
    v24 = MEMORY[0x1E69E6438];
    v25 = MEMORY[0x1E69E6530];
    v26 = MEMORY[0x1E69E65A8];
    if (v39)
    {
      v27 = v40;
      sub_1C4409678(v38, v39);
      v28 = (*(v27 + 8))(v22, v27);
      v44 = v23;
      v45 = v24;
      *&v43 = v28;
      sub_1C440962C(v38);
      if (v44)
      {
        sub_1C441D670(&v43, v19 + 32);
        goto LABEL_16;
      }
    }

    else
    {
      sub_1C4423A0C(v38, &qword_1EC0BDA78, &qword_1C4F30788);
    }

    *(v19 + 56) = v25;
    *(v19 + 64) = v26;
    *(v19 + 32) = 0;
LABEL_16:
    v29 = sub_1C4F01168();
    MEMORY[0x1C6940010](v29);

    MEMORY[0x1C6940010](0x203A6E6F6C20, 0xE600000000000000);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_1C4F0D130;
    v31 = v1[3];
    v32 = v1[4];
    sub_1C4409678(v1, v31);
    (*(v32 + 24))(v38, v31, v32);
    if (v39)
    {
      sub_1C4409678(v38, v39);
      v33 = sub_1C44078DC();
      v35 = v34(v33);
      v44 = v23;
      v45 = v24;
      *&v43 = v35;
      sub_1C440962C(v38);
      if (v44)
      {
        sub_1C441D670(&v43, v30 + 32);
LABEL_21:
        v36 = sub_1C4F01168();
        MEMORY[0x1C6940010](v36);

        return v41;
      }
    }

    else
    {
      sub_1C4423A0C(v38, &qword_1EC0BDA78, &qword_1C4F30788);
    }

    *(v30 + 56) = v25;
    *(v30 + 64) = v26;
    *(v30 + 32) = 0;
    goto LABEL_21;
  }

  return v11;
}

uint64_t sub_1C4B6FAAC()
{
  v161 = sub_1C4F00978();
  sub_1C43FCDF8();
  v160 = v1;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v157 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C456902C(&qword_1EC0B9DC8, &unk_1C4F124A0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  sub_1C43FBFDC();
  v159 = v6;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v157 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v157 - v11;
  v164 = sub_1C4EF9D38();
  sub_1C43FCDF8();
  v162 = v13;
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBFDC();
  v158 = v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v157 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v157 - v20;
  sub_1C44037B4(v0);
  v22 = sub_1C4413844();
  v23(v22);
  if (v166)
  {
    sub_1C44037B4(v165);
    v24 = sub_1C4413844();
    v25(v24);
    if (v168)
    {
      sub_1C44037B4(v167);
      v26 = sub_1C4413844();
      v27(v26);
      sub_1C440962C(v167);
      sub_1C440962C(v165);
      goto LABEL_7;
    }

    sub_1C440962C(v165);
    v28 = &unk_1EC0BB388;
    v29 = &unk_1C4F1F2F0;
    v30 = v167;
  }

  else
  {
    v28 = &qword_1EC0BB380;
    v29 = &unk_1C4F1F2E0;
    v30 = v165;
  }

  sub_1C4423A0C(v30, v28, v29);
  memset(v170, 0, sizeof(v170));
  v171 = 0;
LABEL_7:
  sub_1C44037B4(v0);
  v31 = sub_1C4413844();
  v32(v31);
  if (v168)
  {
    sub_1C44037B4(v167);
    v33 = sub_1C4413844();
    v34(v33);
    sub_1C440962C(v167);
    v35 = v164;
    if (sub_1C44157D4(v12, 1, v164) != 1)
    {
      v36 = v162;
      (*(v162 + 32))(v21, v12, v35);
      sub_1C4EF9CF8();
      if (qword_1EDDF7918 != -1)
      {
        sub_1C44203B8(&qword_1EDDF7918);
      }

      v37 = type metadata accessor for SourceIdPrefix(0);
      sub_1C442B738(v37, qword_1EDE2D650);
      String.base64EncodedSHA(withPrefix:)();
      v39 = v38;
      v41 = v40;

      (*(v36 + 8))(v21, v35);
      goto LABEL_24;
    }
  }

  else
  {
    sub_1C4423A0C(v167, &qword_1EC0BB380, &unk_1C4F1F2E0);
    v35 = v164;
    sub_1C440BAA8(v12, 1, 1, v164);
  }

  sub_1C4423A0C(v12, &qword_1EC0B9DC8, &unk_1C4F124A0);
  sub_1C43FDEB8();
  if (v168)
  {
    sub_1C4409678(v167, v168);
    v42 = sub_1C44078DC();
    v43(v42);
    sub_1C440BAA8(v9, 0, 1, v35);
    sub_1C440962C(v167);
    if (sub_1C44157D4(v9, 1, v35) != 1)
    {
      v44 = v162;
      (*(v162 + 32))(v18, v9, v35);
      sub_1C4EF9CF8();
      if (qword_1EDDF7918 != -1)
      {
        sub_1C44203B8(&qword_1EDDF7918);
      }

      v45 = type metadata accessor for SourceIdPrefix(0);
      sub_1C442B738(v45, qword_1EDE2D650);
      String.base64EncodedSHA(withPrefix:)();
      v39 = v46;
      v41 = v47;

      (*(v44 + 8))(v18, v35);
      goto LABEL_24;
    }
  }

  else
  {
    sub_1C4423A0C(v167, &qword_1EC0C3D68, qword_1C4F558A0);
    sub_1C440BAA8(v9, 1, 1, v35);
  }

  sub_1C4423A0C(v9, &qword_1EC0B9DC8, &unk_1C4F124A0);
  sub_1C442D3CC();
  v48 = sub_1C44078DC();
  v49(v48);
  if (v168)
  {
    sub_1C441A5E4();
    v50 = sub_1C44078DC();
    v52 = v51(v50);
    sub_1C440962C(v167);
    sub_1C442D3CC();
    v53 = sub_1C44078DC();
    v54(v53);
    if (v168)
    {
      sub_1C441A5E4();
      v55 = sub_1C44078DC();
      v57 = v56(v55);
      sub_1C440962C(v167);
      sub_1C456902C(&qword_1EC0B8400, &unk_1C4F175E0);
      v58 = swift_allocObject();
      *(v58 + 16) = xmmword_1C4F0CE60;
      v59 = MEMORY[0x1E69E63B0];
      v60 = MEMORY[0x1E69E6438];
      *(v58 + 56) = MEMORY[0x1E69E63B0];
      *(v58 + 64) = v60;
      *(v58 + 32) = v52;
      *(v58 + 96) = v59;
      *(v58 + 104) = v60;
      *(v58 + 72) = v57;
      sub_1C4F01168();
      if (qword_1EDDF7918 != -1)
      {
        sub_1C44203B8(&qword_1EDDF7918);
      }

      v61 = type metadata accessor for SourceIdPrefix(0);
      sub_1C442B738(v61, qword_1EDE2D650);
      String.base64EncodedSHA(withPrefix:)();
      v39 = v62;
      v41 = v63;

LABEL_24:
      v64 = type metadata accessor for LifeEventStructs.AddressRelationshipType(0);
      sub_1C44099C4(v64);
      v65 = sub_1C4DE3634();
      sub_1C43FDEB8();
      if (v168)
      {
        sub_1C441A5E4();
        v66 = sub_1C44078DC();
        v67(v66);
        sub_1C440B3BC();
      }

      else
      {
        sub_1C4423A0C(v167, &qword_1EC0C3D68, qword_1C4F558A0);
      }

      sub_1C4412598(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs23AddressRelationshipType_postalCode);
      sub_1C43FDEB8();
      if (v168)
      {
        sub_1C441A5E4();
        v71 = sub_1C44078DC();
        v72(v71);
        sub_1C440B3BC();
      }

      else
      {
        sub_1C4423A0C(v167, &qword_1EC0C3D68, qword_1C4F558A0);
      }

      sub_1C4412598(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs23AddressRelationshipType_country);
      sub_1C43FDEB8();
      if (v168)
      {
        sub_1C441A5E4();
        v73 = sub_1C44078DC();
        v74(v73);
        sub_1C440B3BC();
      }

      else
      {
        sub_1C4423A0C(v167, &qword_1EC0C3D68, qword_1C4F558A0);
      }

      sub_1C4412598(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs23AddressRelationshipType_thoroughfare);
      sub_1C43FDEB8();
      if (v168)
      {
        sub_1C441A5E4();
        v75 = sub_1C44078DC();
        v76(v75);
        sub_1C440B3BC();
      }

      else
      {
        sub_1C4423A0C(v167, &qword_1EC0C3D68, qword_1C4F558A0);
      }

      sub_1C4412598(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs23AddressRelationshipType_subThoroughfare);
      sub_1C43FDEB8();
      if (v168)
      {
        sub_1C441A5E4();
        v77 = sub_1C44078DC();
        v78(v77);
        sub_1C440B3BC();
      }

      else
      {
        sub_1C4423A0C(v167, &qword_1EC0C3D68, qword_1C4F558A0);
      }

      sub_1C4412598(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs23AddressRelationshipType_subLocality);
      sub_1C43FDEB8();
      if (v168)
      {
        sub_1C441A5E4();
        v79 = sub_1C44078DC();
        v80(v79);
        sub_1C440B3BC();
      }

      else
      {
        sub_1C4423A0C(v167, &qword_1EC0C3D68, qword_1C4F558A0);
      }

      sub_1C4412598(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs23AddressRelationshipType_locality);
      sub_1C43FDEB8();
      if (v168)
      {
        sub_1C441A5E4();
        v81 = sub_1C44078DC();
        v82(v81);
        sub_1C440B3BC();
      }

      else
      {
        sub_1C4423A0C(v167, &qword_1EC0C3D68, qword_1C4F558A0);
      }

      sub_1C4412598(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs23AddressRelationshipType_subAdministrativeArea);
      sub_1C43FDEB8();
      if (v168)
      {
        sub_1C441A5E4();
        v83 = sub_1C44078DC();
        v84(v83);
        sub_1C440B3BC();
      }

      else
      {
        sub_1C4423A0C(v167, &qword_1EC0C3D68, qword_1C4F558A0);
      }

      sub_1C4412598(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs23AddressRelationshipType_administrativeArea);
      sub_1C43FDEB8();
      if (v168)
      {
        sub_1C441A5E4();
        v85 = sub_1C44078DC();
        v86(v85);
        sub_1C440B3BC();
      }

      else
      {
        sub_1C4423A0C(v167, &qword_1EC0C3D68, qword_1C4F558A0);
      }

      sub_1C4412598(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs23AddressRelationshipType_isoCountryCode);
      sub_1C442D3CC();
      v87 = sub_1C44078DC();
      v88(v87);
      if (v168)
      {
        sub_1C441A5E4();
        v89 = sub_1C44078DC();
        v90(v89);
        sub_1C440B3BC();
      }

      else
      {
        sub_1C4423A0C(v167, &qword_1EC0BB380, &unk_1C4F1F2E0);
      }

      sub_1C4412598(OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs23AddressRelationshipType_name);
      sub_1C442D3CC();
      v91 = sub_1C44078DC();
      v92(v91);
      if (v168)
      {
        sub_1C441A5E4();
        v93 = sub_1C44078DC();
        v95 = v94(v93);
        sub_1C440962C(v167);
        if (v95)
        {
          v96 = RTPlaceInferenceUserSpecificPlaceType.description.getter(v95);
          v97 = (v65 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs23AddressRelationshipType_inferredSemanticLabel);
          *v97 = v96;
          v97[1] = v98;
        }
      }

      else
      {
        sub_1C4423A0C(v167, &qword_1EC0BB380, &unk_1C4F1F2E0);
      }

      v99 = type metadata accessor for LifeEventStructs.Place(0);
      sub_1C44099C4(v99);
      v100 = v163;
      sub_1C4DE8308(v39, v41, v101, v102, v103, v104, v105, v106, v157, v158, v159, v160, v161, v162, v163, v164, v165[0], v165[1], v165[2], v166);
      if (v100)
      {
        sub_1C4423A0C(v170, &qword_1EC0C3D68, qword_1C4F558A0);

        return v39;
      }

      v39 = v107;

      sub_1C4DE03DC(v108);
      sub_1C442D3CC();
      v109 = sub_1C44078DC();
      v110(v109);
      if (v168 && (sub_1C441A5E4(), v111 = sub_1C44078DC(), v113 = v112(v111), sub_1C440962C(v167), sub_1C442D3CC(), v114 = sub_1C44078DC(), v115(v114), v168))
      {
        sub_1C441A5E4();
        v116 = sub_1C44078DC();
        v118 = v117(v116);
        sub_1C440962C(v167);
        v119 = type metadata accessor for LifeEventStructs.LocationRelationshipType(0);
        sub_1C44099C4(v119);
        sub_1C4DE7B74();
        if ((*&v113 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          v120 = sub_1C4F019E8();
          sub_1C4432AC4(v120, v121, OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs24LocationRelationshipType_latitude);
        }

        if ((*&v118 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          v122 = sub_1C4F019E8();
          sub_1C4432AC4(v122, v123, OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs24LocationRelationshipType_longitude);
        }

        sub_1C4DE0404(v124);
      }

      else
      {
        sub_1C4423A0C(v167, &qword_1EC0BDA78, &qword_1C4F30788);
      }

      v172 = MEMORY[0x1E69E7CC0];
      sub_1C442D3CC();
      v125 = sub_1C44078DC();
      v126(v125);
      if (v166)
      {
        sub_1C4409678(v165, v166);
        v127 = sub_1C44078DC();
        v128(v127);
        if (v168)
        {
          sub_1C441A5E4();
          v129 = sub_1C44078DC();
          v131 = v130(v129);
          sub_1C440962C(v167);
          sub_1C440962C(v165);
          if (v131)
          {
            v132 = type metadata accessor for LifeEventStructs.IdentifierRelationshipType(0);
            sub_1C44099C4(v132);
            v133 = sub_1C4DE55DC();
            v167[0] = v131;
            v134 = sub_1C4F02858();
            sub_1C4432AC4(v134, v135, OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs26IdentifierRelationshipType_identifierId);
            *(v133 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs26IdentifierRelationshipType_identifierType) = xmmword_1C4F1F440;

            MEMORY[0x1C6940330](v136);
            sub_1C44090B4();
            if (v137)
            {
              sub_1C43FF654();
            }

            sub_1C4F01748();
            v138 = v172;
LABEL_81:
            sub_1C442D3CC();
            v142 = sub_1C44078DC();
            v143(v142);
            v144 = v168;
            if (v168)
            {
              v145 = v169;
              sub_1C4409678(v167, v168);
              v146 = v144;
              v147 = v159;
              (*(v145 + 40))(v146, v145);
              sub_1C440962C(v167);
              v148 = v164;
              if (sub_1C44157D4(v147, 1, v164) != 1)
              {
                v149 = v162;
                v150 = v158;
                (*(v162 + 32))(v158, v147, v148);
                v151 = type metadata accessor for LifeEventStructs.IdentifierRelationshipType(0);
                sub_1C44099C4(v151);
                v152 = sub_1C4DE55DC();
                v153 = sub_1C4EF9CF8();
                sub_1C4432AC4(v153, v154, OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs26IdentifierRelationshipType_identifierId);
                *(v152 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs26IdentifierRelationshipType_identifierType) = xmmword_1C4F55890;

                MEMORY[0x1C6940330](v155);
                sub_1C44090B4();
                if (v137)
                {
                  sub_1C43FF654();
                }

                sub_1C4F01748();
                v138 = v172;
                (*(v149 + 8))(v150, v148);
                goto LABEL_88;
              }
            }

            else
            {
              sub_1C4423A0C(v167, &qword_1EC0BB380, &unk_1C4F1F2E0);
              v147 = v159;
              sub_1C440BAA8(v159, 1, 1, v164);
            }

            sub_1C4423A0C(v147, &qword_1EC0B9DC8, &unk_1C4F124A0);
LABEL_88:
            *(v39 + OBJC_IVAR____TtCO24IntelligencePlatformCore16LifeEventStructs5Place_identifier) = v138;

            sub_1C4DE82CC();

            sub_1C4423A0C(v170, &qword_1EC0C3D68, qword_1C4F558A0);
            return v39;
          }

LABEL_80:
          v138 = MEMORY[0x1E69E7CC0];
          goto LABEL_81;
        }

        sub_1C440962C(v165);
        v139 = &unk_1EC0BB388;
        v140 = &unk_1C4F1F2F0;
        v141 = v167;
      }

      else
      {
        v139 = &qword_1EC0BB380;
        v140 = &unk_1C4F1F2E0;
        v141 = v165;
      }

      sub_1C4423A0C(v141, v139, v140);
      goto LABEL_80;
    }
  }

  sub_1C4423A0C(v167, &qword_1EC0BDA78, &qword_1C4F30788);
  sub_1C4F00158();
  v68 = sub_1C4F00968();
  v69 = sub_1C4F01CD8();
  if (os_log_type_enabled(v68, v69))
  {
    v70 = swift_slowAlloc();
    *v70 = 0;
    _os_log_impl(&dword_1C43F8000, v68, v69, "Can not create location entity from stored visit: loi identifier, address and lat long are missing", v70, 2u);
    MEMORY[0x1C6942830](v70, -1, -1);
  }

  (*(v160 + 8))(v4, v161);
  sub_1C4423A0C(v170, &qword_1EC0C3D68, qword_1C4F558A0);
  return 0;
}

uint64_t sub_1C4B70B3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0C3D68, qword_1C4F558A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double sub_1C4B70BBC()
{
  v1 = v0[3];
  v2 = v0[4];
  sub_1C4409678(v0, v1);
  (*(v2 + 32))(v7, v1, v2);
  v3 = v8;
  if (v8)
  {
    v4 = v9;
    sub_1C4409678(v7, v8);
    v5 = (*(v4 + 32))(v3, v4);
    sub_1C440962C(v7);
  }

  else
  {
    sub_1C4423A0C(v7, &qword_1EC0BB380, &unk_1C4F1F2E0);
    return 0.0;
  }

  return v5;
}

uint64_t sub_1C4B70C8C(void *a1, void *a2)
{
  v165 = sub_1C4EF9CD8();
  v163 = *(v165 - 8);
  MEMORY[0x1EEE9AC00](v165);
  v159 = &v157 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v164 = sub_1C456902C(&qword_1EC0B9CE8, &qword_1C4F11650);
  MEMORY[0x1EEE9AC00](v164);
  sub_1C43FBFDC();
  v160 = v6;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v157 - v8;
  v10 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  sub_1C43FBFDC();
  v158 = v11;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v12);
  v162 = &v157 - v13;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v14);
  v161 = &v157 - v15;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v157 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v157 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v157 - v23;
  sub_1C442D3F0();
  v25 = sub_1C4410C50();
  v26(v25);
  v27 = v169;
  if (v169)
  {
    sub_1C4407C00();
    v28 = sub_1C4410C50();
    v30 = v29(v28);
    sub_1C440962C(v168);
  }

  else
  {
    sub_1C4423A0C(v168, &qword_1EC0BDA78, &qword_1C4F30788);
    v30 = 0.0;
  }

  sub_1C4413854();
  v31 = sub_1C44203D8();
  v32(v31);
  if (!v169)
  {
    sub_1C4423A0C(v168, &qword_1EC0BDA78, &qword_1C4F30788);
    if (v27)
    {
      return 0;
    }

LABEL_9:
    sub_1C442D3F0();
    v36 = sub_1C4410C50();
    v37(v36);
    v38 = v169;
    if (v169)
    {
      sub_1C4407C00();
      v39 = sub_1C4410C50();
      v41 = v40(v39);
      sub_1C440962C(v168);
    }

    else
    {
      sub_1C4423A0C(v168, &qword_1EC0BDA78, &qword_1C4F30788);
      v41 = 0.0;
    }

    sub_1C4413854();
    v42 = sub_1C44203D8();
    v43(v42);
    if (v169)
    {
      sub_1C440B3D8();
      v44 = sub_1C44203D8();
      v45(v44);
      result = sub_1C44090C8();
      if (!v38 || v41 != v2)
      {
        return result;
      }
    }

    else
    {
      sub_1C4423A0C(v168, &qword_1EC0BDA78, &qword_1C4F30788);
      if (v38)
      {
        return 0;
      }
    }

    sub_1C442D3F0();
    v46 = sub_1C4410C50();
    v47(v46);
    v48 = v169;
    if (v169)
    {
      sub_1C4407C00();
      v49 = sub_1C4410C50();
      v51 = v50(v49);
      sub_1C440962C(v168);
    }

    else
    {
      sub_1C4423A0C(v168, &qword_1EC0BDA78, &qword_1C4F30788);
      v51 = 0.0;
    }

    sub_1C4413854();
    v52 = sub_1C44203D8();
    v53(v52);
    if (v169)
    {
      sub_1C440B3D8();
      v54 = sub_1C44203D8();
      v55(v54);
      result = sub_1C44090C8();
      if (!v48 || v51 != v2)
      {
        return result;
      }
    }

    else
    {
      sub_1C4423A0C(v168, &qword_1EC0BDA78, &qword_1C4F30788);
      if (v48)
      {
        return 0;
      }
    }

    sub_1C442D3F0();
    v56 = sub_1C4410C50();
    v57(v56);
    v58 = v169;
    if (v169)
    {
      sub_1C4407C00();
      v59 = sub_1C4410C50();
      v157 = v60(v59);
      v58 = v61;
      sub_1C440962C(v168);
    }

    else
    {
      sub_1C4423A0C(v168, &qword_1EC0BB380, &unk_1C4F1F2E0);
      v157 = 0;
    }

    sub_1C4413854();
    v62 = sub_1C44203D8();
    v63(v62);
    if (v169)
    {
      sub_1C440B3D8();
      v64 = sub_1C44203D8();
      v66 = v65(v64);
      v68 = v67;
      sub_1C440962C(v168);
      if (v58)
      {
        if (!v68)
        {
          goto LABEL_79;
        }

        v69 = v157 == v66 && v58 == v68;
        if (v69)
        {
        }

        else
        {
          sub_1C4411254();
          v70 = sub_1C4F02938();

          if ((v70 & 1) == 0)
          {
            return 0;
          }
        }
      }

      else if (v68)
      {
        goto LABEL_79;
      }
    }

    else
    {
      sub_1C4423A0C(v168, &qword_1EC0BB380, &unk_1C4F1F2E0);
      if (v58)
      {
        goto LABEL_79;
      }
    }

    sub_1C442D3F0();
    v71 = sub_1C4410C50();
    v72(v71);
    if (v167)
    {
      sub_1C4400EE0(v166);
      v73 = sub_1C4410C50();
      v74(v73);
      if (v169)
      {
        sub_1C4407C00();
        v75 = sub_1C4410C50();
        v157 = v76(v75);
        sub_1C44037D0();
        v77 = 0;
        goto LABEL_48;
      }

      sub_1C440962C(v166);
      v78 = &unk_1EC0BB388;
      v79 = &unk_1C4F1F2F0;
      v80 = v168;
    }

    else
    {
      v78 = &qword_1EC0BB380;
      v79 = &unk_1C4F1F2E0;
      v80 = v166;
    }

    sub_1C4423A0C(v80, v78, v79);
    v157 = 0;
    v77 = 1;
LABEL_48:
    sub_1C4400EE0(a2);
    v81 = sub_1C4410C50();
    v82(v81);
    if (v167)
    {
      sub_1C4400EE0(v166);
      v83 = sub_1C4410C50();
      v84(v83);
      if (v169)
      {
        sub_1C4407C00();
        v85 = sub_1C4410C50();
        v87 = v86(v85);
        sub_1C44037D0();
        if (v157 == v87)
        {
          v88 = v77;
        }

        else
        {
          v88 = 1;
        }

        if (v88)
        {
          return 0;
        }

        goto LABEL_58;
      }

      sub_1C440962C(v166);
      v89 = &unk_1EC0BB388;
      v90 = &unk_1C4F1F2F0;
      v91 = v168;
    }

    else
    {
      v89 = &qword_1EC0BB380;
      v90 = &unk_1C4F1F2E0;
      v91 = v166;
    }

    sub_1C4423A0C(v91, v89, v90);
    if ((v77 & 1) == 0)
    {
      return 0;
    }

LABEL_58:
    sub_1C442D3F0();
    v92 = sub_1C4410C50();
    v93(v92);
    if (v167)
    {
      sub_1C4400EE0(v166);
      v94 = sub_1C4410C50();
      v95(v94);
      if (v169)
      {
        sub_1C4407C00();
        v96 = sub_1C4410C50();
        v157 = v97(v96);
        v99 = v98;
        sub_1C44037D0();
        goto LABEL_64;
      }

      sub_1C440962C(v166);
      v100 = &unk_1EC0BB388;
      v101 = &unk_1C4F1F2F0;
      v102 = v168;
    }

    else
    {
      v100 = &qword_1EC0BB380;
      v101 = &unk_1C4F1F2E0;
      v102 = v166;
    }

    sub_1C4423A0C(v102, v100, v101);
    v157 = 0;
    v99 = 0;
LABEL_64:
    sub_1C4400EE0(a2);
    v103 = sub_1C4410C50();
    v104(v103);
    v105 = v167;
    if (v167)
    {
      sub_1C4400EE0(v166);
      v106 = sub_1C4410C50();
      v107(v106);
      v105 = v169;
      if (v169)
      {
        sub_1C4407C00();
        v108 = sub_1C4410C50();
        v105 = v109(v108);
        v111 = v110;
        sub_1C44037D0();
        goto LABEL_70;
      }

      sub_1C440962C(v166);
      v112 = &unk_1EC0BB388;
      v113 = &unk_1C4F1F2F0;
      v114 = v168;
    }

    else
    {
      v112 = &qword_1EC0BB380;
      v113 = &unk_1C4F1F2E0;
      v114 = v166;
    }

    sub_1C4423A0C(v114, v112, v113);
    v111 = 0;
LABEL_70:
    if (v99)
    {
      if (v111)
      {
        if (v157 == v105 && v99 == v111)
        {

          goto LABEL_84;
        }

        v116 = sub_1C4F02938();

        if (v116)
        {
LABEL_84:
          sub_1C442D3F0();
          v117 = sub_1C4410C50();
          v118(v117);
          sub_1C4400EE0(a2);
          v119 = sub_1C4410C50();
          v120(v119);
          v121 = *(v164 + 48);
          sub_1C4467FE0(v24, v9);
          sub_1C4467FE0(v21, &v9[v121]);
          v122 = v165;
          if (sub_1C44157D4(v9, 1, v165) == 1)
          {
            sub_1C4423A0C(v21, &unk_1EC0B84E0, qword_1C4F0D2D0);
            sub_1C4423A0C(v24, &unk_1EC0B84E0, qword_1C4F0D2D0);
            sub_1C440F650(&v9[v121]);
            if (!v69)
            {
              goto LABEL_91;
            }

            sub_1C4423A0C(v9, &unk_1EC0B84E0, qword_1C4F0D2D0);
          }

          else
          {
            sub_1C4467FE0(v9, v18);
            sub_1C440F650(&v9[v121]);
            if (v69)
            {
              sub_1C440FC60(v21);
              sub_1C440FC60(v24);
              (*(v163 + 8))(v18, v122);
LABEL_91:
              v123 = v9;
LABEL_102:
              sub_1C4423A0C(v123, &qword_1EC0B9CE8, &qword_1C4F11650);
              return 0;
            }

            v124 = v163;
            v125 = &v9[v121];
            v126 = v159;
            (*(v163 + 32))(v159, v125, v122);
            sub_1C4B71A4C();
            LODWORD(v157) = sub_1C4F010B8();
            v127 = *(v124 + 8);
            v127(v126, v122);
            sub_1C4411254();
            sub_1C4423A0C(v128, v129, v130);
            sub_1C4411254();
            sub_1C4423A0C(v131, v132, v133);
            v127(v18, v165);
            sub_1C4411254();
            v122 = v165;
            sub_1C4423A0C(v134, v135, v136);
            if ((v157 & 1) == 0)
            {
              return 0;
            }
          }

          sub_1C4409678(a1, a1[3]);
          v137 = v161;
          v138 = sub_1C4408DF8();
          v139(v138);
          sub_1C4409678(a2, a2[3]);
          v140 = v162;
          v141 = sub_1C4408DF8();
          v142(v141);
          v143 = *(v164 + 48);
          v144 = v160;
          sub_1C4467FE0(v137, v160);
          sub_1C4467FE0(v140, v144 + v143);
          sub_1C440F650(v144);
          if (v69)
          {
            sub_1C4423A0C(v140, &unk_1EC0B84E0, qword_1C4F0D2D0);
            sub_1C4423A0C(v137, &unk_1EC0B84E0, qword_1C4F0D2D0);
            sub_1C440F650(v144 + v143);
            if (v69)
            {
              sub_1C4423A0C(v144, &unk_1EC0B84E0, qword_1C4F0D2D0);
              goto LABEL_104;
            }
          }

          else
          {
            v145 = v158;
            sub_1C4467FE0(v144, v158);
            sub_1C440F650(v144 + v143);
            if (!v146)
            {
              v147 = v163;
              v148 = v159;
              (*(v163 + 32))(v159, v144 + v143, v122);
              sub_1C4B71A4C();
              v149 = sub_1C4F010B8();
              v150 = *(v147 + 8);
              v150(v148, v122);
              sub_1C4423A0C(v162, &unk_1EC0B84E0, qword_1C4F0D2D0);
              sub_1C4423A0C(v161, &unk_1EC0B84E0, qword_1C4F0D2D0);
              v150(v145, v122);
              sub_1C4423A0C(v144, &unk_1EC0B84E0, qword_1C4F0D2D0);
              if ((v149 & 1) == 0)
              {
                return 0;
              }

LABEL_104:
              sub_1C4409678(a1, a1[3]);
              v151 = sub_1C4408DF8();
              v153 = v152(v151);
              sub_1C4409678(a2, a2[3]);
              v154 = sub_1C4408DF8();
              if (v153 == v155(v154))
              {
                v156 = sub_1C4B70BBC();
                return v156 == sub_1C4B70BBC();
              }

              return 0;
            }

            sub_1C440FC60(v162);
            sub_1C440FC60(v137);
            (*(v163 + 8))(v145, v122);
          }

          v123 = v144;
          goto LABEL_102;
        }

        return 0;
      }
    }

    else if (!v111)
    {
      goto LABEL_84;
    }

LABEL_79:

    return 0;
  }

  sub_1C440B3D8();
  v33 = sub_1C44203D8();
  v34(v33);
  result = sub_1C44090C8();
  if (v27 && v30 == v2)
  {
    goto LABEL_9;
  }

  return result;
}

unint64_t sub_1C4B71A4C()
{
  result = qword_1EC0B9D00;
  if (!qword_1EC0B9D00)
  {
    sub_1C4EF9CD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B9D00);
  }

  return result;
}

uint64_t sub_1C4B71AA4()
{
  sub_1C43FCF70();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = swift_task_alloc();
  *(v0 + 16) = v9;
  *v9 = v0;
  v9[1] = sub_1C4B71B54;

  return sub_1C4B71C54(v8, v6, v4, v2);
}

uint64_t sub_1C4B71B54(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_1C4B71C54(uint64_t a1, uint64_t a2, char a3, char a4)
{
  *(v4 + 273) = a4;
  *(v4 + 272) = a3;
  *(v4 + 184) = a1;
  *(v4 + 192) = a2;
  v5 = sub_1C4EF9CD8();
  *(v4 + 200) = v5;
  *(v4 + 208) = *(v5 - 8);
  *(v4 + 216) = swift_task_alloc();
  *(v4 + 224) = swift_task_alloc();
  sub_1C456902C(&qword_1EC0BAE70, &unk_1C4F55920);
  *(v4 + 232) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4B71D60, 0, 0);
}

uint64_t sub_1C4B71D60()
{
  sub_1C43FCF70();
  v6 = v0;
  sub_1C456902C(&unk_1EC0BADA0, &unk_1C4F0FD20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0FCC0;
  *(inited + 32) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  if (sub_1C4428DA0(inited))
  {
    sub_1C4D52140(inited);
  }

  else
  {
    swift_setDeallocating();
    sub_1C49E1628();
    v2 = MEMORY[0x1E69E7CD0];
  }

  v3 = *(v0 + 272);
  *(v0 + 168) = v2;
  if (v3 == 1)
  {
    sub_1C483D6A0(&v5, [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_]);
  }

  *(v0 + 240) = [objc_opt_self() defaultManager];

  return MEMORY[0x1EEE6DFA0](sub_1C4B71E9C, 0, 0);
}

uint64_t sub_1C4B71E9C()
{
  v1 = *(v0 + 232);
  v18 = *(v0 + 240);
  v3 = *(v0 + 216);
  v2 = *(v0 + 224);
  v5 = *(v0 + 200);
  v4 = *(v0 + 208);
  v17 = *(v0 + 273);
  v7 = *(v0 + 184);
  v6 = *(v0 + 192);
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 176;
  *(v0 + 24) = sub_1C4B720C4;
  v16 = swift_continuation_init();
  v8 = *(v4 + 16);
  v8(v2, v7, v5);
  v8(v3, v6, v5);
  sub_1C4EF94D8();
  v9 = sub_1C4EF94F8();
  sub_1C440BAA8(v1, 0, 1, v9);
  v10 = *(v0 + 168);
  *(v0 + 248) = v10;
  v11 = objc_allocWithZone(MEMORY[0x1E69990B8]);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v12 = sub_1C4B724D0(v17, 0, v1, 1, 0, v10);
  v13 = swift_allocObject();
  *(v13 + 16) = v16;
  *(v0 + 112) = sub_1C4B72614;
  *(v0 + 120) = v13;
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1C4B7242C;
  *(v0 + 104) = &unk_1F43FE338;
  v14 = _Block_copy((v0 + 80));

  [v18 fetchStoredVisitsWithOptions:v12 handler:v14];
  _Block_release(v14);

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_1C4B720C4()
{
  sub_1C43FCF70();
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 256) = v2;
  if (v2)
  {
    swift_willThrow();
    v3 = sub_1C4B72278;
  }

  else
  {
    *(v1 + 264) = *(v1 + 176);
    v3 = sub_1C4B721E4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1C4B721E4()
{
  sub_1C43FCF70();

  v1 = *(v0 + 8);
  v2 = *(v0 + 264);

  return v1(v2);
}

uint64_t sub_1C4B72278()
{
  sub_1C43FCF70();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C4B72308(uint64_t a1, void *a2, uint64_t a3)
{
  if (a1)
  {
    sub_1C48133E0();
    **(*(a3 + 64) + 40) = v4;

    return MEMORY[0x1EEE6DEE0](a3);
  }

  else
  {
    if (a2)
    {
      sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
      v6 = swift_allocError();
      *v7 = a2;
      v8 = a2;
      v9 = a3;
      v10 = v6;
    }

    else
    {
      sub_1C4B7261C();
      v11 = swift_allocError();
      sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
      v12 = swift_allocError();
      *v13 = v11;
      v9 = a3;
      v10 = v12;
    }

    return MEMORY[0x1EEE6DEE8](v9, v10);
  }
}

uint64_t sub_1C4B7242C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_1C4461BB8(0, &qword_1EDDF0378, 0x1E69990C0);
    v4 = sub_1C4F01678();
  }

  v6 = a3;
  v5(v4, a3);
}

id sub_1C4B724D0(char a1, void *a2, uint64_t a3, char a4, void *a5, uint64_t a6)
{
  v7 = v6;
  v14 = sub_1C4EF94F8();
  v15 = 0;
  if (sub_1C44157D4(a3, 1, v14) != 1)
  {
    v15 = sub_1C4EF94B8();
    (*(*(v14 - 8) + 8))(a3, v14);
  }

  if (a6)
  {
    sub_1C4461BB8(0, &qword_1EDDFE8E0, 0x1E696AD98);
    sub_1C49BF880();
    v16 = sub_1C4F01AA8();
  }

  else
  {
    v16 = 0;
  }

  v17 = [v7 initWithAscending:a1 & 1 confidence:a2 dateInterval:v15 labelVisit:a4 & 1 limit:a5 sources:v16];

  return v17;
}

unint64_t sub_1C4B7261C()
{
  result = qword_1EC0C3D70;
  if (!qword_1EC0C3D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3D70);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for StoredLocationVisitsAsync.RTVisitFetchError(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1C4B72720()
{
  result = qword_1EC0C3D78;
  if (!qword_1EC0C3D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3D78);
  }

  return result;
}

uint64_t sub_1C4B72774(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1C4B72794, 0, 0);
}

void sub_1C4B72794()
{
  v1 = v0[8];
  if (*(v1 + 32) == 1)
  {
    v2 = v1[2];
    v3 = v1[3];
    if (v3 >= *(v2 + 2))
    {
      sub_1C442D414();
    }

    else
    {
      if (v3 < 0)
      {
        __break(1u);
        return;
      }

      sub_1C480BC20(&v2[10 * v3 + 8], v0[7]);
      v1[3] = (v3 + 1);
    }

    sub_1C43FBDA0();

    v5();
  }

  else
  {
    v6 = (*v1 + **v1);
    v4 = swift_task_alloc();
    v0[9] = v4;
    *v4 = v0;
    v4[1] = sub_1C4B72900;

    v6();
  }
}

uint64_t sub_1C4B72900()
{
  sub_1C43FBE64();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 80) = v4;

  if (v0)
  {
    sub_1C43FBDA0();

    return v5();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1C4B72A2C, 0, 0);
  }
}

uint64_t sub_1C4B72A2C()
{
  v1 = *(v0 + 80);
  v2 = *(v1 + 16);
  if (v2)
  {
    v15 = MEMORY[0x1E69E7CC0];
    sub_1C459D050(0, v2, 0);
    v3 = v15;
    v4 = v1 + 32;
    do
    {
      sub_1C442E860(v4, v0 + 16);
      v6 = *(v15 + 16);
      v5 = *(v15 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1C459D050(v5 > 1, v6 + 1, 1);
      }

      *(v15 + 16) = v6 + 1;
      v7 = v15 + 40 * v6;
      v8 = *(v0 + 16);
      v9 = *(v0 + 32);
      *(v7 + 64) = *(v0 + 48);
      *(v7 + 32) = v8;
      *(v7 + 48) = v9;
      v4 += 40;
      --v2;
    }

    while (v2);
  }

  else
  {

    v3 = MEMORY[0x1E69E7CC0];
  }

  v10 = *(v0 + 64);

  *(v10 + 16) = v3;
  *(v10 + 32) = 1;
  v12 = *(v0 + 64);
  v13 = *(v12 + 24);
  if (v13 >= *(v3 + 16))
  {
    sub_1C442D414();
  }

  else
  {
    if (v13 < 0)
    {
      __break(1u);
      return result;
    }

    sub_1C480BC20(v3 + 40 * v13 + 32, *(v0 + 56));
    *(v12 + 24) = v13 + 1;
  }

  sub_1C43FBDA0();

  return v14();
}

uint64_t sub_1C4B72BB0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C4B72C48;

  return sub_1C4B72774(a1);
}

uint64_t sub_1C4B72C48()
{
  v1 = *v0;
  sub_1C43FBE64();
  *v2 = v1;

  sub_1C43FBDA0();

  return v3();
}

uint64_t sub_1C4B72D34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_1C47E2320;

  return (sub_1C4981F20)(a1, a2, a3);
}

__n128 sub_1C4B72E00(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1C4B72E14(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 33))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C4B72E54(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C4B72EBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = MEMORY[0x1E69E7CC0];
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
}

double sub_1C4B72ED8@<D0>(uint64_t a1@<X8>)
{
  sub_1C4B72EBC(*v1, v1[1], v5);

  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

uint64_t sub_1C4B72F2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = sub_1C4EF9CD8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v32 - v11;
  v13 = *(v2 + 24);
  if (*(v2 + 16))
  {
    v14 = *(v2 + 16);
    v15 = *(v2 + 24);
    v16 = v14;
    v17 = v15;
  }

  else
  {
    v34 = 0;
    v35 = v13;
    v33 = *(sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0) + 36);
    v36 = v3;
    v18 = *(v7 + 16);
    v18(v12, a1, v6);
    v18(v9, a1 + v33, v6);
    v19 = *(v7 + 80);
    v20 = (v19 + 16) & ~v19;
    v21 = (v8 + v19 + v20) & ~v19;
    v33 = v21 + v8;
    v15 = swift_allocObject();
    v22 = *(v7 + 32);
    v23 = v12;
    v16 = v34;
    v22(v15 + v20, v23, v6);
    v22(v15 + v21, v9, v6);
    v17 = v35;
    *(v15 + v33) = 256;
    v14 = &unk_1C4F55BB0;
  }

  type metadata accessor for StoredLocationVisitSignal.StoredLocationVisitWithTransitionAsyncSequence(0);
  v24 = sub_1C456902C(&qword_1EC0B8B40, &unk_1C4F0DF70);
  sub_1C43FCF64();
  sub_1C440BAA8(v25, v26, v27, v24);
  sub_1C43FCF64();
  sub_1C440BAA8(v28, v29, v30, v24);
  *a2 = v14;
  *(a2 + 8) = v15;
  *(a2 + 16) = MEMORY[0x1E69E7CC0];
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  return sub_1C446F0D0(v16, v17);
}

uint64_t sub_1C4B731A4()
{
  sub_1C43FBCD4();
  v1[12] = v2;
  v1[13] = v0;
  v3 = sub_1C4EF9CD8();
  v1[14] = v3;
  v1[15] = *(v3 - 8);
  v1[16] = swift_task_alloc();
  sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  sub_1C456902C(&qword_1EC0C0D08, &unk_1C4F55BC0);
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = sub_1C456902C(&qword_1EC0B8B40, &unk_1C4F0DF70);
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4B7336C, 0, 0);
}

uint64_t sub_1C4B7336C(__n128 a1)
{
  v3 = *(v1 + 200);
  v2 = *(v1 + 208);
  v4 = *(v1 + 104);
  v5 = type metadata accessor for StoredLocationVisitSignal.StoredLocationVisitWithTransitionAsyncSequence(0);
  *(v1 + 232) = v5;
  v6 = *(v5 + 24);
  *(v1 + 256) = v6;
  sub_1C445FFF0(v4 + v6, v3, &qword_1EC0C0D08, &unk_1C4F55BC0);
  if (sub_1C44157D4(v3, 1, v2) != 1)
  {
    v11 = *(v1 + 224);
    v12 = *(v1 + 208);
    v13 = *(v1 + 96);
    v14 = *(v1 + 104);
    sub_1C4B74480(*(v1 + 200), v11);
    v15 = *(v5 + 20);
    sub_1C4420C3C(v14 + v15, &qword_1EC0C0D08, &unk_1C4F55BC0);
    sub_1C445FFF0(v11, v14 + v15, &qword_1EC0B8B40, &unk_1C4F0DF70);
    sub_1C43FBD94();
    sub_1C440BAA8(v16, v17, v18, v12);
    sub_1C4420C3C(v4 + v6, &qword_1EC0C0D08, &unk_1C4F55BC0);
    sub_1C43FCF64();
    sub_1C440BAA8(v19, v20, v21, v12);
    sub_1C4B74480(v11, v13);
    sub_1C43FBD94();
    sub_1C440BAA8(v22, v23, v24, v12);
    sub_1C441A608();

    sub_1C43FBDA0();
    sub_1C43FD0C0();

    __asm { BRAA            X1, X16 }
  }

  sub_1C4420C3C(*(v1 + 200), &qword_1EC0C0D08, &unk_1C4F55BC0);
  v7 = swift_task_alloc();
  *(v1 + 240) = v7;
  *v7 = v1;
  v7[1] = sub_1C4B735BC;
  sub_1C43FD0C0();

  return sub_1C4B72774(v8);
}

uint64_t sub_1C4B735BC()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v2 = *v1;
  sub_1C43FBDAC();
  *v3 = v2;
  *(v4 + 248) = v0;

  if (v0)
  {
    v5 = sub_1C4B73B6C;
  }

  else
  {
    v5 = sub_1C4B736C0;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1C4B736C0()
{
  if (!*(v0 + 80))
  {
    v27 = *(v0 + 208);
    sub_1C4420C3C(v0 + 56, &qword_1EC0B97A0, &qword_1C4F0F7D0);
    sub_1C43FCF64();
    v31 = v27;
    goto LABEL_11;
  }

  v1 = *(v0 + 232);
  v2 = *(v0 + 208);
  v3 = *(v0 + 192);
  v4 = *(v0 + 104);
  v5 = *(v0 + 72);
  *(v0 + 16) = *(v0 + 56);
  *(v0 + 32) = v5;
  *(v0 + 48) = *(v0 + 88);
  v6 = *(v1 + 20);
  sub_1C445FFF0(v4 + v6, v3, &qword_1EC0C0D08, &unk_1C4F55BC0);
  if (sub_1C44157D4(v3, 1, v2) != 1)
  {
    sub_1C4B74480(*(v0 + 192), *(v0 + 216));
    sub_1C44203E8();
    v32 = sub_1C440749C();
    v33(v32);
    result = sub_1C4400334();
    if (v10)
    {
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    sub_1C44203E8();
    v34 = sub_1C440749C();
    v35(v34);
    result = sub_1C4400334();
    if (v10)
    {
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v36 = *(v0 + 208);
    v37 = *(v0 + 184);
    v39 = *(v0 + 160);
    v38 = *(v0 + 168);
    v64 = *(v0 + 216);
    v65 = *(v0 + 152);
    v40 = *(v0 + 120);
    v62 = *(v0 + 256);
    v63 = *(v0 + 128);
    v41 = *(v0 + 112);
    v61 = *(v0 + 104);
    v42 = v37 + *(v36 + 32);
    sub_1C480BC20(v0 + 16, v42);
    v43 = *(v40 + 32);
    *(v42 + 40) = 0u;
    *(v42 + 56) = 0u;
    *(v42 + 72) = 0;
    v43(v37, v38, v41);
    v60 = v43;
    v43(v37 + *(v36 + 28), v39, v41);
    sub_1C43FBD94();
    sub_1C440BAA8(v44, v45, v46, v36);
    sub_1C4B74410(v37, v61 + v62);
    (*(v40 + 16))(v63, v64 + *(v36 + 28), v41);
    v47 = *(v0 + 40);
    v48 = *(v0 + 48);
    sub_1C4409678((v0 + 16), v47);
    (*(v48 + 8))(v47, v48);
    result = sub_1C44157D4(v65, 1, v41);
    if (result == 1)
    {
LABEL_19:
      __break(1u);
      return result;
    }

    v50 = *(v0 + 208);
    v49 = *(v0 + 216);
    v51 = *(v0 + 152);
    v52 = *(v0 + 128);
    v53 = *(v0 + 112);
    v54 = *(v0 + 96);
    v55 = *(v36 + 32);
    v56 = v54 + v55;
    sub_1C480BC20(v49 + v55, v54 + v55);
    sub_1C4420C3C(v49, &qword_1EC0B8B40, &unk_1C4F0DF70);
    v57 = *(v0 + 48);
    v58 = *(v0 + 32);
    *(v56 + 40) = *(v0 + 16);
    *(v56 + 56) = v58;
    *(v56 + 72) = v57;
    v60(v54, v52, v53);
    v60(v54 + *(v36 + 28), v51, v53);
    sub_1C43FBD94();
    v31 = v50;
LABEL_11:
    sub_1C440BAA8(v28, v29, v30, v31);
    goto LABEL_12;
  }

  sub_1C4420C3C(*(v0 + 192), &qword_1EC0C0D08, &unk_1C4F55BC0);
  sub_1C44203E8();
  v7 = sub_1C440749C();
  v8(v7);
  result = sub_1C4400334();
  if (v10)
  {
    __break(1u);
    goto LABEL_16;
  }

  sub_1C44203E8();
  v11 = sub_1C440749C();
  v12(v11);
  result = sub_1C4400334();
  if (v10)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v13 = *(v0 + 208);
  v14 = *(v0 + 176);
  v16 = *(v0 + 136);
  v15 = *(v0 + 144);
  v17 = *(v0 + 112);
  v18 = *(v0 + 120);
  v19 = *(v0 + 96);
  v20 = v14 + *(v13 + 32);
  v21 = *(v0 + 16);
  v22 = *(v0 + 32);
  *(v20 + 32) = *(v0 + 48);
  *v20 = v21;
  *(v20 + 16) = v22;
  *(v20 + 40) = 0u;
  *(v20 + 56) = 0u;
  *(v20 + 72) = 0;
  v23 = *(v18 + 32);
  v23(v14, v15, v17);
  v23(v14 + *(v13 + 28), v16, v17);
  sub_1C43FBD94();
  sub_1C440BAA8(v24, v25, v26, v13);
  sub_1C4B74410(v14, v4 + v6);
  sub_1C445FFF0(v4 + v6, v19, &qword_1EC0C0D08, &unk_1C4F55BC0);
LABEL_12:
  sub_1C441A608();

  sub_1C43FBDA0();

  return v59();
}

void sub_1C4B73B6C()
{
  sub_1C441A608();

  sub_1C43FBDA0();
  sub_1C43FD0C0();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1C4B73C3C@<X0>(uint64_t a1@<X8>)
{
  sub_1C4B73198(a1);

  return sub_1C4B74350(v1);
}

uint64_t sub_1C4B73C68()
{
  sub_1C43FBCD4();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C442E8C4;

  return sub_1C4B731A4();
}

uint64_t sub_1C4B73CFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_1C49CC7C0;

  return (sub_1C49828A8)(a1, a2, a3);
}

uint64_t sub_1C4B73DC8()
{
  sub_1C44239FC(*(v0 + 16), *(v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_1C4B73E64()
{
  sub_1C4EF9CD8();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C4B73F84;

  return sub_1C4B71AA4();
}

uint64_t sub_1C4B73F84()
{
  sub_1C43FBCD4();
  v2 = v1;
  sub_1C43FBDE4();
  v3 = *v0;
  sub_1C43FBDAC();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v2);
}

uint64_t type metadata accessor for StoredLocationVisitSignal.StoredLocationVisitWithTransitionAsyncSequence(uint64_t a1)
{
  result = qword_1EDDF2F98;
  if (!qword_1EDDF2F98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C4B740E4(uint64_t a1)
{
  sub_1C4B74160(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1C4B74160(uint64_t a1)
{
  if (!qword_1EDDF4668)
  {
    sub_1C4572308(&qword_1EC0B8B40, &unk_1C4F0DF70);
    v1 = sub_1C4F01F48();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDDF4668);
    }
  }
}

uint64_t sub_1C4B741C4(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_1C4B74220()
{
  result = qword_1EC0C3D80;
  if (!qword_1EC0C3D80)
  {
    sub_1C4572308(&qword_1EC0B8B40, &unk_1C4F0DF70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3D80);
  }

  return result;
}

uint64_t sub_1C4B74284(uint64_t a1)
{
  result = sub_1C4B7430C(qword_1EDDF2FB8, &unk_1C4F55C88);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4B742C8(uint64_t a1)
{
  result = sub_1C4B7430C(&qword_1EDDF2FB0, &unk_1C4F55CD0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4B7430C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for StoredLocationVisitSignal.StoredLocationVisitWithTransitionAsyncSequence(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C4B74350(uint64_t a1)
{
  v2 = type metadata accessor for StoredLocationVisitSignal.StoredLocationVisitWithTransitionAsyncSequence(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C4B743AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StoredLocationVisitSignal.StoredLocationVisitWithTransitionAsyncSequence(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C4B74410(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0C0D08, &unk_1C4F55BC0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C4B74480(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0B8B40, &unk_1C4F0DF70);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C4B744F4(char a1, uint64_t a2)
{
  v3 = 0;
  v4 = *(a2 + 16);
  v5 = a2 + 32;
  while (1)
  {
    if (v4 == v3)
    {
      return 0;
    }

    sub_1C4AD6BCC(*(v5 + v3));
    v7 = v6;
    v9 = v8;
    sub_1C4AD6BCC(a1);
    if (v7 == v11 && v9 == v10)
    {
      break;
    }

    v13 = sub_1C4F02938();

    if (v13)
    {
      return v3;
    }

    ++v3;
  }

  return v3;
}

uint64_t sub_1C4B745C4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  while (1)
  {
    if ((a3 ^ a4) < 0x4000)
    {
      return 0;
    }

    sub_1C4407C24();
    if (sub_1C4F01F98() == a1 && v8 == a2)
    {
      break;
    }

    v10 = sub_1C4F02938();

    if (v10)
    {
      return a3;
    }

    sub_1C4407C24();
    a3 = sub_1C4F01F68();
  }

  return a3;
}

Swift::Bool __swiftcall String.isValidEmail()()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E6996728]) init];
  sub_1C4402120();
  v1 = sub_1C4F01108();
  v2 = [v0 typeOfHandleString_];

  return v2 == 1;
}

Swift::Bool __swiftcall String.isValidPhoneNumber()()
{
  v2 = v1;
  v3 = v0;
  v4 = objc_allocWithZone(MEMORY[0x1E696AB60]);
  v5 = sub_1C4475EF8(2048);
  v6 = sub_1C4F01108();
  v7 = [v5 matchesInString:v6 options:0 range:{0, MEMORY[0x1C69400B0](v3, v2)}];

  sub_1C4461BB8(0, &qword_1EDDF03D0, 0x1E696AEF8);
  v8 = sub_1C4F01678();

  v9 = sub_1C4428DA0(v8);

  return v9 != 0;
}

Swift::String __swiftcall String.stripFZIDPrefix()()
{
  sub_1C442040C();
  if (v0)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  else
  {
    sub_1C440F228();
    sub_1C4F012B8();
    sub_1C440F228();
    v4 = sub_1C44DBF14(v1, v2, v3);
    MEMORY[0x1C693FEF0](v4);
  }

  v5 = sub_1C4402120();
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

void __swiftcall StructuredLocation.init(mapLocation:identifier:latitude:longitude:title:address:label:muid:)(IntelligencePlatformCore::StructuredLocation *__return_ptr retstr, Swift::String mapLocation, Swift::String identifier, Swift::Double_optional latitude, Swift::Double_optional longitude, Swift::String_optional title, Swift::String_optional address, Swift::String_optional label, Swift::UInt64_optional muid)
{
  object = title.value._object;
  countAndFlagsBits = title.value._countAndFlagsBits;
  is_nil = longitude.is_nil;
  v13 = *&latitude.is_nil;
  v14 = identifier._object;
  v15 = identifier._countAndFlagsBits;
  v35 = mapLocation._object;
  v16 = mapLocation._countAndFlagsBits;
  sub_1C456902C(&qword_1EC0B8708, &qword_1C4F0D960);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1C4F0D130;
  *(v18 + 32) = 0x696669746E656469;
  *(v18 + 40) = 0xEA00000000007265;
  *(v18 + 48) = v15;
  *(v18 + 56) = v14;
  *(v18 + 72) = 0;
  *(v18 + 80) = 0;
  *(v18 + 64) = 0;
  *(v18 + 88) = 1;
  if (is_nil || (~v13 & 0x7FF0000000000000) == 0 && (v13 & 0xFFFFFFFFFFFFFLL) != 0)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  else
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v13 = sub_1C4F019E8();
    v20 = *(v18 + 16);
    v21 = v20 + 1;
    if (v20 >= *(v18 + 24) >> 1)
    {
      v9 = v19;
      sub_1C458A900();
      v21 = v20 + 1;
      v19 = v9;
      v18 = v33;
    }

    *(v18 + 16) = v21;
    v22 = (v18 + (v20 << 6));
    v22[4] = 0x656475746974616CLL;
    v22[5] = 0xE800000000000000;
    v22[6] = v13;
    v22[7] = v19;
    sub_1C4404B30(v22);
  }

  if ((object & 1) == 0 && ((~countAndFlagsBits & 0x7FF0000000000000) != 0 || (countAndFlagsBits & 0xFFFFFFFFFFFFFLL) == 0))
  {
    sub_1C4F019E8();
    sub_1C4400EFC();
    if (v23)
    {
      sub_1C44125B4();
      v18 = v34;
    }

    *(v18 + 16) = v13;
    v24 = (v18 + (v9 << 6));
    v24[4] = 0x64757469676E6F6CLL;
    v24[5] = 0xE900000000000065;
    v24[6] = countAndFlagsBits;
    v24[7] = object;
    sub_1C4404B30(v24);
  }

  if (address.value._object)
  {
    sub_1C442D428();
    if (v23)
    {
      sub_1C4406D3C();
      v18 = v29;
    }

    *(v18 + 16) = countAndFlagsBits;
    v25 = (v18 + (v9 << 6));
    v25[2].value._countAndFlagsBits = 0x656C746974;
    v25[2].value._object = 0xE500000000000000;
    v25[3] = address;
    sub_1C4404B30(v25);
  }

  if (label.value._object)
  {
    sub_1C442D428();
    if (v23)
    {
      sub_1C4406D3C();
      v18 = v30;
    }

    *(v18 + 16) = countAndFlagsBits;
    v26 = (v18 + (v9 << 6));
    v26[2].value._countAndFlagsBits = 0x73736572646461;
    v26[2].value._object = 0xE700000000000000;
    v26[3] = label;
    sub_1C4404B30(v26);
  }

  if (*&muid.is_nil)
  {
    sub_1C442D428();
    if (v23)
    {
      sub_1C4406D3C();
      v18 = v31;
    }

    *(v18 + 16) = countAndFlagsBits;
    v27 = (v18 + (v9 << 6));
    v27[4] = 0x6C6562616CLL;
    v27[5] = 0xE500000000000000;
    v27[6] = muid.value;
    v27[7] = *&muid.is_nil;
    sub_1C4404B30(v27);
  }

  if ((v38 & 1) == 0)
  {
    v36 = v37;
    sub_1C4F02858();
    sub_1C4400EFC();
    if (v23)
    {
      sub_1C44125B4();
      v18 = v32;
    }

    *(v18 + 16) = v38;
    v28 = v18 + (v9 << 6);
    strcpy((v28 + 32), "mapsIdentifier");
    *(v28 + 47) = -18;
    *(v28 + 48) = &v36;
    *(v28 + 56) = *&muid.is_nil;
    sub_1C4404B30(v28);
  }

  retstr->mapLocation._countAndFlagsBits = v16;
  retstr->mapLocation._object = v35;
  retstr->basicProperties._rawValue = v18;
  retstr->identifier.value._countAndFlagsBits = v15;
  retstr->identifier.value._object = v14;
}

uint64_t StructuredLocation.mapLocation.getter()
{
  v1 = *v0;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return v1;
}

uint64_t sub_1C4B74BD4()
{
  if (qword_1EC0B7130 != -1)
  {
    swift_once();
  }

  qword_1EC0C3D88 = qword_1EC0C38C8;
  *algn_1EC0C3D90 = *algn_1EC0C38D0;
  qword_1EC0C3DA0 = qword_1EC0C38E0;

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t static StructuredLocation.type.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC0B7160 != -1)
  {
    swift_once();
  }

  v2 = qword_1EC0C3DA0;
  *a1 = qword_1EC0C3D88;
  *(a1 + 8) = *algn_1EC0C3D90;
  *(a1 + 24) = v2;

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t StructuredLocation.identifier.getter()
{
  v1 = *(v0 + 24);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return v1;
}

uint64_t sub_1C4B74D10(uint64_t a1)
{
  v2 = sub_1C4B75274();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4B74D4C(uint64_t a1)
{
  v2 = sub_1C4B75274();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StructuredLocation.encode(to:)(void *a1)
{
  sub_1C456902C(&qword_1EC0C3DA8, &unk_1C4F55D58);
  sub_1C43FFC58();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = v12 - v7;
  v9 = v1[2];
  v12[2] = v1[3];
  v13 = v9;
  v12[1] = v1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C4B75274();
  sub_1C4F02BF8();
  v18 = 0;
  v10 = v14;
  sub_1C4F02798();
  if (!v10)
  {
    v15 = v13;
    v17 = 1;
    sub_1C456902C(&qword_1EC0B8720, &qword_1C4F0D970);
    sub_1C458A9D8(&qword_1EC0B8728, sub_1C458A984, MEMORY[0x1E69E6300]);
    sub_1C4F027E8();
    v16 = 2;
    sub_1C4F02738();
  }

  return (*(v5 + 8))(v8, v2);
}

uint64_t StructuredLocation.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1C456902C(&qword_1EC0C3DB8, &qword_1C4F55D68);
  sub_1C43FFC58();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v19 - v9;
  sub_1C4409678(a1, a1[3]);
  sub_1C4B75274();
  sub_1C4F02BC8();
  if (v2)
  {
    return sub_1C440962C(a1);
  }

  v25 = 0;
  v11 = sub_1C4F02678();
  v21 = v12;
  sub_1C456902C(&qword_1EC0B8720, &qword_1C4F0D970);
  v24 = 1;
  sub_1C458A9D8(&qword_1EC0B8740, sub_1C458AA50, MEMORY[0x1E69E6330]);
  sub_1C4F026C8();
  v20 = v22;
  v23 = 2;
  v13 = sub_1C4F02618();
  v15 = v14;
  v16 = v13;
  (*(v7 + 8))(v10, v3);
  v17 = v21;
  *a2 = v11;
  a2[1] = v17;
  a2[2] = v20;
  a2[3] = v16;
  a2[4] = v15;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C440962C(a1);
}

unint64_t sub_1C4B75274()
{
  result = qword_1EC0C3DB0;
  if (!qword_1EC0C3DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3DB0);
  }

  return result;
}

unint64_t sub_1C4B752C8(uint64_t a1)
{
  result = sub_1C4B3C0D8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C4B752F0(uint64_t a1)
{
  *(a1 + 8) = sub_1C4B75320();
  result = sub_1C4B75374();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1C4B75320()
{
  result = qword_1EC0C3DC0;
  if (!qword_1EC0C3DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3DC0);
  }

  return result;
}

unint64_t sub_1C4B75374()
{
  result = qword_1EC0C3DC8;
  if (!qword_1EC0C3DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3DC8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for StructuredLocation.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C4B754B8()
{
  result = qword_1EC0C3DD0;
  if (!qword_1EC0C3DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3DD0);
  }

  return result;
}

unint64_t sub_1C4B75510()
{
  result = qword_1EC0C3DD8;
  if (!qword_1EC0C3DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3DD8);
  }

  return result;
}

unint64_t sub_1C4B75568()
{
  result = qword_1EC0C3DE0;
  if (!qword_1EC0C3DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3DE0);
  }

  return result;
}

uint64_t sub_1C4B755C4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 96))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C4B75604(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_1C4B7567C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 11) = *(a2 + 11);
  *a1 = result;
  return result;
}

uint64_t sub_1C4B75690(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 26) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 27) = 1;
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

    *(result + 27) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C4B756E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = (a1 + 32);
  sub_1C43FBDF0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v6 = v5;
  while (2)
  {
    v35 = v4;
    v7 = v4-- != 0;
    if (v7)
    {
      switch(*v6)
      {
        case 1:
        case 2:
          goto LABEL_11;
        case 3:
          sub_1C443072C();
          goto LABEL_11;
        case 4:
          sub_1C44090E8();
          goto LABEL_11;
        case 5:
          sub_1C44037FC();
          goto LABEL_11;
        case 6:
          sub_1C4413878();
          goto LABEL_11;
        case 7:
          sub_1C443545C();
          goto LABEL_11;
        case 8:
          sub_1C442042C();
LABEL_11:
          sub_1C4F02938();
          sub_1C444B308();
          ++v6;
          if (v2)
          {
            break;
          }

          continue;
        default:

          goto LABEL_12;
      }
    }

    break;
  }

LABEL_12:
  v8 = *(a1 + 16);
  v9 = v5;
  while (2)
  {
    v34 = v8;
    v7 = v8-- != 0;
    if (v7)
    {
      switch(*v9)
      {
        case 1:

          break;
        case 3:
          sub_1C443072C();
          goto LABEL_22;
        case 4:
          sub_1C44090E8();
          goto LABEL_22;
        case 5:
          sub_1C44037FC();
          goto LABEL_22;
        case 6:
          sub_1C4413878();
          goto LABEL_22;
        case 7:
          sub_1C443545C();
          goto LABEL_22;
        case 8:
          sub_1C442042C();
          goto LABEL_22;
        default:
LABEL_22:
          sub_1C4F02938();
          sub_1C444B308();
          ++v9;
          if (v2)
          {
            break;
          }

          continue;
      }
    }

    break;
  }

  v10 = *(a1 + 16);
  v11 = v5;
  while (2)
  {
    v33 = v10;
    v7 = v10-- != 0;
    if (v7)
    {
      switch(*v11)
      {
        case 1:
          sub_1C4426E78();
          goto LABEL_34;
        case 2:

          break;
        case 3:
          sub_1C443072C();
          goto LABEL_34;
        case 4:
          sub_1C44090E8();
          goto LABEL_34;
        case 5:
          sub_1C44037FC();
          goto LABEL_34;
        case 6:
          sub_1C4413878();
          goto LABEL_34;
        case 7:
          sub_1C443545C();
          goto LABEL_34;
        case 8:
          sub_1C442042C();
          goto LABEL_34;
        default:
LABEL_34:
          sub_1C4F02938();
          sub_1C444B308();
          ++v11;
          if (v2)
          {
            break;
          }

          continue;
      }
    }

    break;
  }

  v12 = *(a1 + 16);
  v13 = v5;
  while (2)
  {
    v14 = v12;
    v7 = v12-- != 0;
    if (v7)
    {
      switch(*v13)
      {
        case 1:
          sub_1C4426E78();
          goto LABEL_46;
        case 2:
          sub_1C441788C();
          goto LABEL_46;
        case 3:

          break;
        case 4:
          sub_1C44090E8();
          goto LABEL_46;
        case 5:
          sub_1C44037FC();
          goto LABEL_46;
        case 6:
          sub_1C4413878();
          goto LABEL_46;
        case 7:
          sub_1C443545C();
          goto LABEL_46;
        case 8:
          sub_1C442042C();
          goto LABEL_46;
        default:
LABEL_46:
          sub_1C4F02938();
          sub_1C444B308();
          ++v13;
          if (v2)
          {
            break;
          }

          continue;
      }
    }

    break;
  }

  v15 = *(a1 + 16);
  v16 = v5;
  while (2)
  {
    v17 = v15;
    v7 = v15-- != 0;
    if (v7)
    {
      switch(*v16)
      {
        case 1:
          sub_1C4426E78();
          sub_1C43FC6F4();
          goto LABEL_58;
        case 2:
          sub_1C441788C();
          goto LABEL_58;
        case 3:
          sub_1C443072C();
          goto LABEL_58;
        case 4:

          break;
        case 5:
          sub_1C44037FC();
          goto LABEL_58;
        case 6:
          sub_1C4413878();
          goto LABEL_58;
        case 7:
          sub_1C443545C();
          goto LABEL_58;
        case 8:
          sub_1C442042C();
          goto LABEL_58;
        default:
LABEL_58:
          sub_1C4435CE4();
          sub_1C4F02938();
          sub_1C444B308();
          ++v16;
          if (v2)
          {
            break;
          }

          continue;
      }
    }

    break;
  }

  v18 = *(a1 + 16);
  v19 = v5;
  while (2)
  {
    v20 = v18;
    v7 = v18-- != 0;
    if (v7)
    {
      switch(*v19)
      {
        case 1:
          sub_1C4426E78();
          sub_1C43FC6F4();
          goto LABEL_70;
        case 2:
          sub_1C441788C();
          goto LABEL_70;
        case 3:
          sub_1C44337E4();
          goto LABEL_70;
        case 4:
          sub_1C44090E8();
          goto LABEL_70;
        case 5:

          break;
        case 6:
          sub_1C4413878();
          goto LABEL_70;
        case 7:
          sub_1C443545C();
          goto LABEL_70;
        case 8:
          sub_1C442042C();
          goto LABEL_70;
        default:
LABEL_70:
          sub_1C447F2E8();
          sub_1C4F02938();
          sub_1C444B308();
          ++v19;
          if (v2)
          {
            break;
          }

          continue;
      }
    }

    break;
  }

  v21 = *(a1 + 16);
  v22 = v5;
  while (2)
  {
    v23 = v21;
    v7 = v21-- != 0;
    if (v7)
    {
      switch(*v22)
      {
        case 1:
          sub_1C4426E78();
          sub_1C43FC6F4();
          goto LABEL_82;
        case 2:
          sub_1C441788C();
          goto LABEL_82;
        case 3:
          sub_1C44337E4();
          goto LABEL_82;
        case 4:
          sub_1C44090E8();
          goto LABEL_82;
        case 5:
          sub_1C44037FC();
          goto LABEL_82;
        case 6:

          break;
        case 7:
          sub_1C443545C();
          goto LABEL_82;
        case 8:
          sub_1C442042C();
          goto LABEL_82;
        default:
LABEL_82:
          sub_1C4415CA8();
          sub_1C4F02938();
          sub_1C444B308();
          ++v22;
          if (v2)
          {
            break;
          }

          continue;
      }
    }

    break;
  }

  v32 = a1;
  v24 = *(a1 + 16);
  v25 = v5;
  while (2)
  {
    v26 = v24;
    v7 = v24-- != 0;
    if (v7)
    {
      switch(*v25)
      {
        case 1:
          sub_1C4426E78();
          sub_1C43FC6F4();
          goto LABEL_94;
        case 2:
          sub_1C441788C();
          goto LABEL_94;
        case 3:
          sub_1C44337E4();
          goto LABEL_94;
        case 4:
          sub_1C44090E8();
          goto LABEL_94;
        case 5:
          sub_1C44037FC();
          goto LABEL_94;
        case 6:
          sub_1C4413878();
          goto LABEL_94;
        case 7:

          break;
        case 8:
          sub_1C442042C();
          goto LABEL_94;
        default:
LABEL_94:
          sub_1C4F02938();
          sub_1C444B308();
          ++v25;
          if (v2)
          {
            break;
          }

          continue;
      }
    }

    break;
  }

  v27 = *(v32 + 16);
  while (2)
  {
    v28 = v27;
    v7 = v27-- != 0;
    if (v7)
    {
      switch(*v5)
      {
        case 1:
          sub_1C4426E78();
          sub_1C43FC6F4();
          goto LABEL_106;
        case 2:
          sub_1C441788C();
          goto LABEL_106;
        case 3:
          sub_1C44337E4();
          goto LABEL_106;
        case 4:
          sub_1C44090E8();
          goto LABEL_106;
        case 5:
          sub_1C44037FC();
          goto LABEL_106;
        case 6:
          sub_1C4413878();
          goto LABEL_106;
        case 7:
          sub_1C443545C();
          goto LABEL_106;
        case 8:

          break;
        default:
LABEL_106:
          sub_1C442ED40();
          sub_1C4F02938();
          sub_1C444B308();
          ++v5;
          if (v2)
          {
            break;
          }

          continue;
      }
    }

    break;
  }

  result = sub_1C4EFB8D8();
  *a2 = v32;
  *(a2 + 8) = v35 != 0;
  *(a2 + 9) = v34 != 0;
  *(a2 + 10) = v33 != 0;
  *(a2 + 11) = v14 != 0;
  *(a2 + 12) = v17 != 0;
  *(a2 + 13) = v20 != 0;
  *(a2 + 14) = v23 != 0;
  *(a2 + 15) = v26 != 0;
  *(a2 + 16) = v28 != 0;
  *(a2 + 24) = result;
  *(a2 + 32) = v30;
  return result;
}

void sub_1C4B75EC0()
{
  sub_1C43FE96C();
  v42 = v1;
  v3 = v2;
  v4 = type metadata accessor for ViewDatabaseArtifact.Property(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_1C43FBCC4();
  v8 = v7 - v6;
  v9 = *(v3 + 16);
  if (v9)
  {
    v46 = MEMORY[0x1E69E7CC0];
    sub_1C459EEF0(0, v9, 0);
    v10 = 0;
    v11 = v46;
    v43 = v3 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    while (v10 < *(v3 + 16))
    {
      sub_1C4B7CB3C(v43 + *(v5 + 72) * v10, v8, type metadata accessor for ViewDatabaseArtifact.Property);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v12 = sub_1C4F025D8();

      if (v12 > 8)
      {

        sub_1C450B034();
        swift_allocError();
        *v17 = 0;
        *(v17 + 8) = 0xE000000000000000;
        *(v17 + 16) = 0xD000000000000022;
        *(v17 + 24) = 0x80000001C4FB3240;
        *(v17 + 32) = v44;
        *(v17 + 48) = v45;
        *(v17 + 64) = 3;
        swift_willThrow();
        sub_1C4405388();

        goto LABEL_120;
      }

      v13 = v5;
      sub_1C4405388();
      v15 = *(v46 + 16);
      v14 = *(v46 + 24);
      v0 = v15 + 1;
      if (v15 >= v14 >> 1)
      {
        v16 = sub_1C43FCFE8(v14);
        sub_1C459EEF0(v16, v15 + 1, 1);
      }

      ++v10;
      *(v46 + 16) = v0;
      *(v46 + v15 + 32) = v12;
      v5 = v13;
      if (v9 == v10)
      {

        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {

    v11 = MEMORY[0x1E69E7CC0];
LABEL_11:
    v18 = *(v11 + 16);
    v19 = (v11 + 32);
    sub_1C43FBDF0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v20 = (v11 + 32);
    while (2)
    {
      v21 = v18;
      v22 = v18-- != 0;
      if (v22)
      {
        switch(*v20)
        {
          case 1:
            goto LABEL_22;
          case 2:
            sub_1C4407C3C();
            goto LABEL_22;
          case 3:
            sub_1C43FF674();
            goto LABEL_22;
          case 4:
            sub_1C440FC78();
            goto LABEL_22;
          case 5:
            sub_1C44037FC();
            goto LABEL_22;
          case 6:
            sub_1C44125D8();
            goto LABEL_22;
          case 7:
            sub_1C43FC8F8();
            goto LABEL_22;
          case 8:
            sub_1C442D438();
LABEL_22:
            sub_1C4F02938();
            sub_1C442F3D8();
            ++v20;
            if (v0)
            {
              break;
            }

            continue;
          default:

            goto LABEL_23;
        }
      }

      break;
    }

LABEL_23:
    v41 = v21 != 0;
    sub_1C441C518();
    while (2)
    {
      sub_1C4450024();
      if (v22)
      {
        switch(*v20)
        {
          case 1:

            break;
          case 2:
            sub_1C4407C3C();
            goto LABEL_34;
          case 3:
            sub_1C43FF674();
            goto LABEL_34;
          case 4:
            sub_1C440FC78();
            goto LABEL_34;
          case 5:
            sub_1C44037FC();
            goto LABEL_34;
          case 6:
            sub_1C44125D8();
            goto LABEL_34;
          case 7:
            sub_1C43FC8F8();
            goto LABEL_34;
          case 8:
            sub_1C442D438();
            goto LABEL_34;
          default:
LABEL_34:
            sub_1C4F02938();
            sub_1C442F3D8();
            ++v20;
            if (v0)
            {
              break;
            }

            continue;
        }
      }

      break;
    }

    sub_1C4410610();
    v40 = v23;
    sub_1C441C518();
    while (2)
    {
      sub_1C4450024();
      if (v22)
      {
        switch(*v20)
        {
          case 1:
            sub_1C4432AE4();
            goto LABEL_46;
          case 2:

            break;
          case 3:
            sub_1C43FF674();
            goto LABEL_46;
          case 4:
            sub_1C440FC78();
            goto LABEL_46;
          case 5:
            sub_1C44037FC();
            goto LABEL_46;
          case 6:
            sub_1C44125D8();
            goto LABEL_46;
          case 7:
            sub_1C43FC8F8();
            goto LABEL_46;
          case 8:
            sub_1C442D438();
            goto LABEL_46;
          default:
LABEL_46:
            sub_1C4F02938();
            sub_1C442F3D8();
            ++v20;
            if (v0)
            {
              break;
            }

            continue;
        }
      }

      break;
    }

    sub_1C4410610();
    v39 = v24;
    sub_1C441C518();
    while (2)
    {
      sub_1C4450024();
      if (v22)
      {
        switch(*v20)
        {
          case 1:
            sub_1C4432AE4();
            goto LABEL_58;
          case 2:
            sub_1C4407C3C();
            goto LABEL_58;
          case 3:

            break;
          case 4:
            sub_1C440FC78();
            goto LABEL_58;
          case 5:
            sub_1C44037FC();
            goto LABEL_58;
          case 6:
            sub_1C44125D8();
            goto LABEL_58;
          case 7:
            sub_1C43FC8F8();
            goto LABEL_58;
          case 8:
            sub_1C442D438();
            goto LABEL_58;
          default:
LABEL_58:
            sub_1C4F02938();
            sub_1C442F3D8();
            ++v20;
            if (v0)
            {
              break;
            }

            continue;
        }
      }

      break;
    }

    sub_1C4410610();
    v38 = v25;
    sub_1C441C518();
    while (2)
    {
      sub_1C4450024();
      if (v22)
      {
        switch(*v20)
        {
          case 1:
            sub_1C4432AE4();
            goto LABEL_70;
          case 2:
            sub_1C4407C3C();
            goto LABEL_70;
          case 3:
            sub_1C43FF674();
            goto LABEL_70;
          case 4:

            break;
          case 5:
            sub_1C44037FC();
            goto LABEL_70;
          case 6:
            sub_1C44125D8();
            goto LABEL_70;
          case 7:
            sub_1C43FC8F8();
            goto LABEL_70;
          case 8:
            sub_1C442D438();
            goto LABEL_70;
          default:
LABEL_70:
            sub_1C4435CE4();
            sub_1C4F02938();
            sub_1C442F3D8();
            ++v20;
            if (v0)
            {
              break;
            }

            continue;
        }
      }

      break;
    }

    sub_1C4410610();
    v37 = v26;
    sub_1C441C518();
    while (2)
    {
      sub_1C4450024();
      if (v22)
      {
        switch(*v20)
        {
          case 1:
            sub_1C4432AE4();
            goto LABEL_82;
          case 2:
            sub_1C4407C3C();
            goto LABEL_82;
          case 3:
            sub_1C43FF674();
            goto LABEL_82;
          case 4:
            sub_1C440FC78();
            goto LABEL_82;
          case 5:

            break;
          case 6:
            sub_1C44125D8();
            goto LABEL_82;
          case 7:
            sub_1C43FC8F8();
            goto LABEL_82;
          case 8:
            sub_1C442D438();
            goto LABEL_82;
          default:
LABEL_82:
            sub_1C447F2E8();
            sub_1C4F02938();
            sub_1C442F3D8();
            ++v20;
            if (v0)
            {
              break;
            }

            continue;
        }
      }

      break;
    }

    sub_1C4410610();
    v36 = v27;
    sub_1C441C518();
    while (2)
    {
      sub_1C4450024();
      if (v22)
      {
        switch(*v20)
        {
          case 1:
            sub_1C4432AE4();
            goto LABEL_94;
          case 2:
            sub_1C4407C3C();
            goto LABEL_94;
          case 3:
            sub_1C43FF674();
            goto LABEL_94;
          case 4:
            sub_1C440FC78();
            goto LABEL_94;
          case 5:
            sub_1C44037FC();
            goto LABEL_94;
          case 6:

            break;
          case 7:
            sub_1C43FC8F8();
            goto LABEL_94;
          case 8:
            sub_1C442D438();
            goto LABEL_94;
          default:
LABEL_94:
            sub_1C4415CA8();
            sub_1C4F02938();
            sub_1C442F3D8();
            ++v20;
            if (v0)
            {
              break;
            }

            continue;
        }
      }

      break;
    }

    sub_1C4410610();
    v35 = v28;
    sub_1C441C518();
    while (2)
    {
      sub_1C4450024();
      if (v22)
      {
        switch(*v20)
        {
          case 1:
            sub_1C4432AE4();
            goto LABEL_106;
          case 2:
            sub_1C4407C3C();
            goto LABEL_106;
          case 3:
            sub_1C43FF674();
            goto LABEL_106;
          case 4:
            sub_1C440FC78();
            goto LABEL_106;
          case 5:
            sub_1C44037FC();
            goto LABEL_106;
          case 6:
            sub_1C44125D8();
            goto LABEL_106;
          case 7:

            break;
          case 8:
            sub_1C442D438();
            goto LABEL_106;
          default:
LABEL_106:
            sub_1C4F02938();
            sub_1C442F3D8();
            ++v20;
            if (v0)
            {
              break;
            }

            continue;
        }
      }

      break;
    }

    sub_1C4410610();
    v34 = v29;
    v30 = *(v11 + 16);
    while (2)
    {
      v31 = v30;
      v22 = v30-- != 0;
      if (v22)
      {
        switch(*v19)
        {
          case 1:
            sub_1C4432AE4();
            goto LABEL_118;
          case 2:
            sub_1C4407C3C();
            goto LABEL_118;
          case 3:
            sub_1C43FF674();
            goto LABEL_118;
          case 4:
            sub_1C440FC78();
            goto LABEL_118;
          case 5:
            sub_1C44037FC();
            goto LABEL_118;
          case 6:
            sub_1C44125D8();
            goto LABEL_118;
          case 7:
            sub_1C43FC8F8();
            goto LABEL_118;
          case 8:

            break;
          default:
LABEL_118:
            sub_1C442ED40();
            sub_1C4F02938();
            sub_1C442F3D8();
            ++v19;
            if (v0)
            {
              break;
            }

            continue;
        }
      }

      break;
    }

    v32 = sub_1C4EFB8D8();
    *v42 = v11;
    *(v42 + 8) = v41;
    *(v42 + 9) = v40;
    *(v42 + 10) = v39;
    *(v42 + 11) = v38;
    *(v42 + 12) = v37;
    *(v42 + 13) = v36;
    *(v42 + 14) = v35;
    *(v42 + 15) = v34;
    *(v42 + 16) = v31 != 0;
    *(v42 + 24) = v32;
    *(v42 + 32) = v33;
LABEL_120:
    sub_1C43FBC80();
  }
}

void sub_1C4B76798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE96C();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v27 = sub_1C456902C(&unk_1EC0BCAB0, &unk_1C4F111A0);
  sub_1C43FBD18(v27);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v69 - v29;
  v31 = sub_1C456902C(&qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C43FBD18(v31);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v69 - v33;
  v35 = type metadata accessor for ViewDatabaseArtifact.Property(0);
  MEMORY[0x1EEE9AC00](v35);
  v74 = (&v69 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v37);
  v41 = &v69 - v40;
  v42 = *(v24 + 32);
  v43 = *(v42 + 16);
  if (v43)
  {
    v71 = v30;
    v72 = v20;
    v73 = *(v38 + 20);
    v44 = *(v39 + 80);
    v75 = v26;
    v45 = v42 + ((v44 + 32) & ~v44);
    v46 = *(v39 + 72);
    v47 = v45;
    v70 = v43;
    v76 = v46;
    do
    {
      sub_1C4404728();
      sub_1C4B7CB3C(v47, v41, v48);
      v49 = sub_1C4EFBE38();
      sub_1C43FBCE0();
      (*(v50 + 16))(v34, &v41[v73], v49);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v51 = sub_1C43FBC98();
      sub_1C443CD78(v51, v52);
      sub_1C440BAA8(v34, 0, 1, v49);
      v53 = v76;
      sub_1C4EFB498();

      sub_1C4420C3C(v34, &qword_1EC0B9BB8, &unk_1C4F1DC60);
      v47 += v53;
      --v43;
    }

    while (v43);
    a10 = MEMORY[0x1E69E7CC0];
    v54 = v70;
    sub_1C44CD9C0(0, v70, 0);
    v55 = a10;
    do
    {
      sub_1C4404728();
      v56 = v74;
      sub_1C4B7CB3C(v45, v74, v57);
      v59 = *v56;
      v58 = v56[1];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C443CD78(v56, &a10);
      a10 = v55;
      v61 = *(v55 + 16);
      v60 = *(v55 + 24);
      if (v61 >= v60 >> 1)
      {
        sub_1C43FCFE8(v60);
        sub_1C440424C();
        sub_1C44CD9C0(v63, v64, v65);
        v55 = a10;
      }

      *(v55 + 16) = v61 + 1;
      v62 = v55 + 16 * v61;
      *(v62 + 32) = v59;
      *(v62 + 40) = v58;
      v45 += v76;
      --v54;
    }

    while (v54);
    v30 = v71;
  }

  v66 = *MEMORY[0x1E69A00D0];
  v67 = sub_1C4EFBF38();
  sub_1C43FBCE0();
  (*(v68 + 104))(v30, v66, v67);
  sub_1C440BAA8(v30, 0, 1, v67);
  sub_1C4EFB478();

  sub_1C4420C3C(v30, &unk_1EC0BCAB0, &unk_1C4F111A0);
  sub_1C4403810();
  sub_1C43FBC80();
}

void sub_1C4B76B30()
{
  sub_1C43FE96C();
  v2 = sub_1C4EFBCC8();
  sub_1C43FCDF8();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBCC4();
  v8 = v7 - v6;
  if ((v0[24] & 1) == 0 || (sub_1C4F02248(), _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0(), , MEMORY[0x1C6940010](0xD00000000000001DLL, 0x80000001C4FB3120), v11 = 0, memset(v10, 0, sizeof(v10)), sub_1C4EFBFA8(), sub_1C4420C3C(v10, &qword_1EC0C5040, &qword_1C4F0F950), , !v1))
  {
    if (v0[25])
    {
      v13 = *v0;
      v10[0] = v13;
      sub_1C448DB48(&v13, &v12);
      MEMORY[0x1C6940010](0x5F7463656A626F5FLL, 0xEB00000000737466);
      sub_1C4EFBCB8();
      v9 = swift_allocObject();
      memcpy((v9 + 16), v0, 0x60uLL);
      sub_1C4AF9A80(v0, v10);
      sub_1C4EFBF98();
      (*(v4 + 8))(v8, v2);
    }
  }

  sub_1C43FBC80();
}

uint64_t sub_1C4B76DA0(uint64_t a1, void *a2)
{
  sub_1C4EFB7C8();
  sub_1C4EFB7D8();

  sub_1C4EFB7D8();
  sub_1C4EFB848();

  sub_1C4EFB7D8();
  sub_1C4EFB848();
}

uint64_t sub_1C4B76EA4(uint64_t a1, void *a2)
{
  v3 = sub_1C4EFB768();
  sub_1C43FCDF8();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBCC4();
  v9 = v8 - v7;
  MEMORY[0x1C6940010](*a2, a2[1]);
  sub_1C4EFB758();
  sub_1C4EFBFF8();
  (*(v5 + 8))(v9, v3);
}

void sub_1C4B76FC8()
{
  sub_1C43FE96C();
  v91 = v2;
  v3 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  v4 = sub_1C43FBD18(v3);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FBFDC();
  v88 = v5;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FD230();
  v87 = v7;
  v8 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  v9 = sub_1C43FBD18(v8);
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBFDC();
  v84 = v10;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FD230();
  v83 = v12;
  v89 = sub_1C4EFF0C8();
  sub_1C43FCDF8();
  v80 = v13;
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBFDC();
  v82 = v15;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FD230();
  v81 = v17;
  v94 = 0;
  v95 = 0xE000000000000000;
  sub_1C4F02248();
  MEMORY[0x1C6940010](0xD000000000000018, 0x80000001C4FB3140);
  v18 = *v0;
  v19 = v0[1];
  MEMORY[0x1C6940010](*v0, v19);
  MEMORY[0x1C6940010](0xD00000000000001ELL, 0x80000001C4FB3160);
  v98 = 0;
  v99 = 0xE000000000000000;
  sub_1C4F02248();

  sub_1C43FBDF0();
  v94 = 0xD000000000000018;
  v95 = v20;
  MEMORY[0x1C6940010](v18, v19);
  MEMORY[0x1C6940010](0x4C4156202020200ALL, 0xED00002820534555);
  v21 = *(v0 + 7);
  v101[0] = *(v0 + 5);
  v101[1] = v21;
  v90 = v0;
  v102 = v0[9];
  MEMORY[0x1C6940010](*(&v21 + 1));
  MEMORY[0x1C6940010](41, 0xE100000000000000);
  sub_1C458DB8C(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v23 = v22;
  v24 = *(v22 + 24);
  if (*(v22 + 16) >= v24 >> 1)
  {
    sub_1C440612C(v24);
    v23 = v74;
  }

  sub_1C441D3E0();
  *(v25 + 32) = 0;
  if (BYTE9(v101[0]))
  {
    sub_1C4422BCC();
    MEMORY[0x1C6940010]();
    sub_1C4414F38();
    if (v27)
    {
      sub_1C440612C(v26);
      v23 = v75;
    }

    sub_1C441D3E0();
    *(v28 + 32) = 1;
  }

  if (BYTE10(v101[0]))
  {
    sub_1C4422BCC();
    MEMORY[0x1C6940010](0xD000000000000018);
    sub_1C4414F38();
    if (v27)
    {
      sub_1C440612C(v29);
      v23 = v76;
    }

    sub_1C441D3E0();
    *(v30 + 32) = 2;
  }

  if (BYTE11(v101[0]))
  {
    sub_1C4422BCC();
    MEMORY[0x1C6940010]();
    sub_1C4414F38();
    if (v27)
    {
      sub_1C440612C(v31);
      v23 = v77;
    }

    sub_1C441D3E0();
    *(v32 + 32) = 3;
  }

  if (BYTE12(v101[0]))
  {
    sub_1C4422BCC();
    MEMORY[0x1C6940010]();
    sub_1C4414F38();
    if (v27)
    {
      sub_1C440612C(v33);
      v23 = v78;
    }

    sub_1C441D3E0();
    *(v34 + 32) = 4;
  }

  sub_1C4EFBED8();
  if (v1)
  {

    goto LABEL_22;
  }

  sub_1C4EFBED8();

  sub_1C4B756E8(v23, v100);
  v86 = *(v91 + 16);
  if (v86)
  {
    v35 = 0;
    v85 = v91 + 32;
    v79 = (v80 + 32);
    v36 = v89;
    while (1)
    {
      memcpy(v103, (v85 + 152 * v35), 0x92uLL);
      if ((v103[18] & 0x100) != 0)
      {
        if ((*(v90 + 26) & 1) == 0)
        {
          sub_1C45E8CE0(v103, &v94);
LABEL_37:
          v92 = v35;
          v46 = sub_1C4B77970(v103);
          sub_1C45E8D3C(v103);
          goto LABEL_38;
        }

        sub_1C45E8CE0(v103, &v94);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C44333A0();
        if ((sub_1C4F01278() & 1) == 0)
        {

          goto LABEL_37;
        }

        v37 = v83;
        sub_1C44333A0();
        sub_1C4EFF0D8();
        if (sub_1C44157D4(v83, 1, v36) != 1)
        {
          v92 = v35;
          (*v79)(v81, v83, v36);
          v96 = v36;
          sub_1C441A624();
          v97 = sub_1C4B7CC2C(&qword_1EDDFA1C8, v38, MEMORY[0x1E69A9808]);
          sub_1C4422F90(&v94);
          sub_1C44146F4();
          v42 = v41(v39, v40);
          MEMORY[0x1EEE9AC00](v42);
          sub_1C44692B4();
          *(v43 - 24) = v100;
          *(v43 - 16) = v103;
          v46 = sub_1C45DB7F4(sub_1C4B7CE58, v44, v45);
          sub_1C45E8D3C(v103);
          v47 = sub_1C440CDAC();
          v48(v47);
          sub_1C440962C(&v94);
LABEL_38:
          if (*(v46 + 16))
          {
            sub_1C443F7B0(MEMORY[0x1E69E7CC0]);
            v49 = v93;
            do
            {
              sub_1C442E860(v46 + 32, &v94);
              v50 = sub_1C456902C(&qword_1EC0BC780, &unk_1C4F29270);
              sub_1C44185B0(v50);
              v93 = v49;
              sub_1C440C4FC();
              if (v27)
              {
                sub_1C43FCFE8(v51);
                sub_1C440424C();
                sub_1C459D088(v53, v54, v55);
              }

              sub_1C4459C00();
            }

            while (!v52);

            v36 = v89;
          }

          else
          {
          }

          v56 = v87;
          sub_1C4EFB788();
          goto LABEL_58;
        }
      }

      else
      {
        if ((*(v90 + 26) & 1) == 0)
        {
          sub_1C45E8CE0(v103, &v94);
LABEL_48:
          v92 = v35;
          v57 = sub_1C4B77970(v103);
          sub_1C45E8D3C(v103);
          goto LABEL_49;
        }

        sub_1C45E8CE0(v103, &v94);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C44333A0();
        if ((sub_1C4F01278() & 1) == 0)
        {

          goto LABEL_48;
        }

        v37 = v84;
        sub_1C44333A0();
        sub_1C4EFF0D8();
        if (sub_1C44157D4(v84, 1, v36) != 1)
        {
          v92 = v35;
          (*v79)(v82, v84, v36);
          v96 = v36;
          sub_1C441A624();
          v97 = sub_1C4B7CC2C(&qword_1EDDFA1C8, v64, MEMORY[0x1E69A9808]);
          sub_1C4422F90(&v94);
          sub_1C44146F4();
          v68 = v67(v65, v66);
          MEMORY[0x1EEE9AC00](v68);
          sub_1C44692B4();
          *(v69 - 24) = v101;
          *(v69 - 16) = v103;
          v57 = sub_1C45DB7F4(sub_1C4B7BCFC, v70, v71);
          sub_1C45E8D3C(v103);
          v72 = sub_1C440CDAC();
          v73(v72);
          sub_1C440962C(&v94);
LABEL_49:
          if (*(v57 + 16))
          {
            sub_1C443F7B0(MEMORY[0x1E69E7CC0]);
            v58 = v93;
            do
            {
              sub_1C442E860(v57 + 32, &v94);
              v59 = sub_1C456902C(&qword_1EC0BC780, &unk_1C4F29270);
              sub_1C44185B0(v59);
              v93 = v58;
              sub_1C440C4FC();
              if (v27)
              {
                sub_1C43FCFE8(v60);
                sub_1C440424C();
                sub_1C459D088(v61, v62, v63);
              }

              sub_1C4459C00();
            }

            while (!v52);

            v36 = v89;
          }

          else
          {
          }

          v56 = v88;
          sub_1C4EFB788();
LABEL_58:
          sub_1C4EFC0A8();
          sub_1C4420C3C(v56, &unk_1EC0C06C0, &unk_1C4F10DB0);
          v35 = v92;
          goto LABEL_59;
        }
      }

      sub_1C45E8D3C(v103);
      sub_1C4420C3C(v37, &unk_1EC0BA0E0, &qword_1C4F105A0);
LABEL_59:
      if (++v35 == v86)
      {

        goto LABEL_63;
      }
    }
  }

LABEL_63:
  sub_1C487BDB4(v100);
LABEL_22:
  sub_1C4403810();
  sub_1C43FBC80();
}

uint64_t sub_1C4B77970(void *a1)
{
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v22 = MEMORY[0x1E69E7CC0];
    sub_1C459D930();
    v5 = v22;
    v7 = (v3 + 32);
    v8 = MEMORY[0x1E69A01D0];
    v9 = MEMORY[0x1E69E6158];
    v10 = MEMORY[0x1E69A0138];
    do
    {
      v11 = *v7++;
      switch(v11)
      {
        case 1:
          v14 = a1[6];
          v13 = a1[7];
          goto LABEL_10;
        case 2:
          v12 = a1[8];
          goto LABEL_12;
        case 3:
          v14 = a1[9];
          v13 = a1[10];
          goto LABEL_10;
        case 4:
          v14 = a1[11];
          v13 = a1[12];
          goto LABEL_10;
        case 5:
          v12 = a1[13];
          goto LABEL_12;
        case 6:
          v15 = a1[14];
          goto LABEL_15;
        case 7:
          v14 = a1[15];
          v13 = a1[16];
LABEL_10:
          v20 = v9;
          v21 = v10;
          *&v19 = v14;
          *(&v19 + 1) = v13;
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          break;
        case 8:
          v15 = a1[17];
LABEL_15:
          v20 = MEMORY[0x1E69E63B0];
          v21 = MEMORY[0x1E69A0168];
          *&v19 = v15;
          break;
        default:
          v12 = a1[5];
LABEL_12:
          v21 = v8;
          v20 = MEMORY[0x1E69E7360];
          *&v19 = v12;
          break;
      }

      v22 = v5;
      sub_1C440C4FC();
      if (v17)
      {
        sub_1C43FCFE8(v16);
        sub_1C440424C();
        sub_1C459D930();
        v5 = v22;
      }

      *(v5 + 16) = v3;
      sub_1C443FA18(&v19, v5 + 40 * v2 + 32);
      --v4;
    }

    while (v4);
  }

  return v5;
}

void sub_1C4B77AF4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  sub_1C4B76FC8();
  if (!v4)
  {
    if (a4)
    {
      a4(a1);
    }
  }
}

void sub_1C4B77B4C()
{
  sub_1C43FE96C();
  v18 = v2;
  v19 = v3;
  v5 = v4;
  v6 = sub_1C4EFB768();
  sub_1C43FCDF8();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBCC4();
  v12 = v11 - v10;
  sub_1C4F02248();

  sub_1C43FBDF0();
  v21 = 0xD000000000000015;
  v22 = v13;
  MEMORY[0x1C6940010](*v0, v0[1]);
  sub_1C4EFB758();
  v20 = v5;
  sub_1C4EFBFF8();
  if (v1)
  {
    (*(v8 + 8))(v12, v6);
  }

  else
  {
    (*(v8 + 8))(v12, v6);

    MEMORY[0x1EEE9AC00](v14);
    *(&v17 - 2) = v0;
    v15 = sub_1C4EFBFD8();
    v16 = v18;
    while (*(v16(v15) + 16))
    {
      sub_1C43FE99C();
      sub_1C4B76FC8();
    }

    sub_1C4B76B30();
  }

  sub_1C43FBC80();
}

uint64_t sub_1C4B77DC4()
{
  v1 = *(v0 + 80);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return v1;
}

uint64_t sub_1C4B77DF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>)
{
  v18 = *a7;
  v33 = *a8;
  v32 = a8[1];
  v19 = type metadata accessor for SubgraphDatabaseTable.SubgraphComparableTriple(0);
  *a9 = 0u;
  *(a9 + 16) = 0u;
  *(a9 + 32) = 0;
  v20 = v19[5];
  sub_1C4EFF0C8();
  sub_1C43FBCE0();
  (*(v21 + 32))(a9 + v20, a1);
  v22 = v19[6];
  v23 = sub_1C4EFEEF8();
  sub_1C43FBCE0();
  v25 = *(v24 + 32);
  v25(a9 + v22, a2, v23);
  v26 = v19[7];
  sub_1C4EFF8A8();
  sub_1C43FBCE0();
  (*(v27 + 32))(a9 + v26, a3);
  result = (v25)(a9 + v19[8], a4, v23);
  v29 = (a9 + v19[9]);
  *v29 = a5;
  v29[1] = a6;
  *(a9 + v19[10]) = v18;
  *(a9 + v19[11]) = a10;
  v30 = (a9 + v19[12]);
  *v30 = v33;
  v30[1] = v32;
  *(a9 + v19[13]) = a11;
  return result;
}

uint64_t sub_1C4B77F8C(uint64_t a1, char *a2)
{
  v106 = a2;
  v93 = sub_1C456902C(&qword_1EC0C3EE8, &qword_1C4F566E8);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FBFDC();
  v95 = v5;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FD230();
  v94 = v7;
  v100 = sub_1C456902C(&qword_1EC0C3EF0, &qword_1C4F566F0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBFDC();
  v109 = v9;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FD230();
  v108 = v11;
  v12 = sub_1C456902C(&qword_1EC0C3EF8, &qword_1C4F566F8);
  v13 = (v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBFDC();
  v107 = v14;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v92 - v16;
  v18 = type metadata accessor for SubgraphDatabaseTable.SubgraphComparableTriple(0);
  v20 = v18[5];
  v19 = v18[6];
  v102 = v19;
  v21 = v18[8];
  v114 = v18[7];
  v115 = v21;
  v22 = v18[9];
  v23 = *(a1 + v22);
  v116 = *(a1 + v22 + 8);
  v24 = &a2[v22];
  v26 = *v24;
  v25 = *(v24 + 1);
  v112 = v26;
  v113 = v23;
  v110 = v20;
  v111 = v25;
  v103 = sub_1C4EFF0C8();
  v27 = *(v103 - 8);
  v104 = *(v27 + 16);
  v105 = v27 + 16;
  v104(v17, &v20[a1], v103);
  v28 = v13[14];
  v29 = sub_1C4EFEEF8();
  sub_1C43FBCE0();
  v31 = *(v30 + 16);
  v32 = v30 + 16;
  v99 = v28;
  v33 = &v17[v28];
  v34 = v17;
  v101 = v17;
  (v31)(v33, a1 + v19, v29);
  v35 = v13[18];
  v36 = sub_1C4EFF8A8();
  sub_1C43FBCE0();
  v38 = *(v37 + 16);
  v39 = (v37 + 16);
  v98 = v35;
  v38(&v34[v35], a1 + v114, v36);
  v96 = v13[22];
  (v31)(&v34[v96], a1 + v115, v29);
  v40 = &v34[v13[26]];
  v41 = v116;
  *v40 = v113;
  *(v40 + 1) = v41;
  v43 = v106;
  v42 = v107;
  v104(v107, &v110[v106], v103);
  v97 = v13[14];
  (v31)(v42 + v97, &v43[v102], v29);
  v102 = v13[18];
  v44 = &v43[v114];
  v114 = v36;
  v110 = v38;
  v104 = v39;
  v38((v42 + v102), v44, v36);
  v45 = v13[22];
  v46 = &v43[v115];
  v47 = v42;
  v115 = v29;
  v48 = v101;
  v105 = v32;
  v106 = v31;
  (v31)(v42 + v45, v46, v29);
  v49 = (v42 + v13[26]);
  v50 = v111;
  *v49 = v112;
  v49[1] = v50;
  sub_1C441A624();
  sub_1C4B7CC2C(v51, v52, MEMORY[0x1E69A9830]);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C441B058();
  if (sub_1C4F010B8())
  {
    v53 = v108;
    v103 = v45;
    v54 = v115;
    v55 = v106;
    (v106)(v108, v48 + v99, v115);
    v56 = v100;
    v92 = *(v100 + 48);
    (v110)(v53 + v92, v48 + v98, v114);
    v99 = v56[16];
    (v55)(v53 + v99, v48 + v96, v54);
    v57 = (v53 + v56[20]);
    v58 = v116;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4420C3C(v48, &qword_1EC0C3EF8, &qword_1C4F566F8);
    *v57 = v113;
    v57[1] = v58;
    v59 = v109;
    (v55)(v109, v47 + v97, v54);
    v101 = v56[12];
    (v110)(v59 + v101, v47 + v102, v114);
    v60 = v56[16];
    (v55)(v59 + v60, v47 + v103, v54);
    v61 = (v59 + v56[20]);
    v62 = v111;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4420C3C(v47, &qword_1EC0C3EF8, &qword_1C4F566F8);
    *v61 = v112;
    v61[1] = v62;
    sub_1C440B3FC();
    sub_1C4B7CC2C(v63, v64, MEMORY[0x1E69A9768]);
    if (sub_1C4F010B8())
    {
      v65 = v108;
      v66 = v94;
      v67 = v110;
      (v110)(v94, v108 + v92, v114);
      v68 = v93;
      v103 = *(v93 + 48);
      v107 = v60;
      v69 = v115;
      v70 = v106;
      (v106)(v66 + v103, v65 + v99, v115);
      v71 = (v66 + *(v68 + 64));
      v72 = v116;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4420C3C(v65, &qword_1EC0C3EF0, &qword_1C4F566F0);
      *v71 = v113;
      v71[1] = v72;
      v73 = v109;
      v74 = v95;
      v67(v95, v109 + v101, v114);
      v75 = *(v68 + 48);
      (v70)(v74 + v75, v73 + v107, v69);
      v76 = (v74 + *(v68 + 64));
      v77 = v111;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4420C3C(v73, &qword_1EC0C3EF0, &qword_1C4F566F0);
      *v76 = v112;
      v76[1] = v77;
      sub_1C4400F14();
      sub_1C4B7CC2C(v78, v79, MEMORY[0x1E69A9A08]);
      sub_1C43FE99C();
      if (sub_1C4F010B8())
      {
        v80 = sub_1C4B7BD3C(v66 + v103, v113, v116, v74 + v75, v112, v111);
      }

      else
      {
        sub_1C4400F14();
        sub_1C4B7CC2C(v89, v90, MEMORY[0x1E69A9A00]);
        sub_1C43FE99C();
        v80 = sub_1C4F01068();
      }

      v83 = v80;
      v84 = &qword_1EC0C3EE8;
      v85 = &qword_1C4F566E8;
    }

    else
    {
      sub_1C440B3FC();
      sub_1C4B7CC2C(v87, v88, MEMORY[0x1E69A9760]);
      v66 = v108;
      v74 = v109;
      sub_1C43FE99C();
      v83 = sub_1C4F01068();
      v84 = &qword_1EC0C3EF0;
      v85 = &qword_1C4F566F0;
    }

    sub_1C4420C3C(v74, v84, v85);
    v86 = v66;
  }

  else
  {
    sub_1C441A624();
    sub_1C4B7CC2C(v81, v82, MEMORY[0x1E69A9828]);
    sub_1C441B058();
    v83 = sub_1C4F01068();
    v84 = &qword_1EC0C3EF8;
    v85 = &qword_1C4F566F8;
    sub_1C4420C3C(v47, &qword_1EC0C3EF8, &qword_1C4F566F8);
    v86 = v48;
  }

  sub_1C4420C3C(v86, v84, v85);
  return v83 & 1;
}

BOOL sub_1C4B7878C(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v7 = a1[2];
  v6 = a1[3];
  v8 = a1[4];
  v9 = *a2;
  v10 = a2[1];
  v12 = a2[2];
  v11 = a2[3];
  v13 = a2[4];
  if (*a1)
  {
    if (v9)
    {
      v36[0] = *a2;
      v36[1] = v10;
      v36[2] = v12;
      v36[3] = v11;
      v36[4] = v13;
      v35[0] = v4;
      v35[1] = v5;
      v35[2] = v7;
      v35[3] = v6;
      v35[4] = v8;
      v14 = sub_1C441BCF4();
      sub_1C4B7CB98(v14);
      v15 = sub_1C441CDD4();
      sub_1C4B7CB98(v15);
      v34 = sub_1C4B7A528(v35, v36);
      v16 = sub_1C441CDD4();
      sub_1C4B7CAA8(v16);
      v17 = sub_1C441BCF4();
      sub_1C4B7CAA8(v17);
      if ((v34 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_8;
    }

LABEL_6:
    v18 = sub_1C441BCF4();
    sub_1C4B7CB98(v18);
    v19 = sub_1C441CDD4();
    sub_1C4B7CB98(v19);
    v20 = sub_1C441BCF4();
    sub_1C4B7CAA8(v20);
    v21 = sub_1C441CDD4();
    sub_1C4B7CAA8(v21);
    return 0;
  }

  if (v9)
  {
    goto LABEL_6;
  }

  sub_1C4B7CB98(0);
  sub_1C4B7CB98(0);
  sub_1C4B7CAA8(0);
LABEL_8:
  v22 = type metadata accessor for SubgraphDatabaseTable.SubgraphComparableTriple(0);
  sub_1C441DD4C(v22[5]);
  if (sub_1C4EFF088())
  {
    v23 = sub_1C441DD4C(v22[6]);
    if (sub_1C44DBB50(v23, v24))
    {
      sub_1C441DD4C(v22[7]);
      if (sub_1C4EFF878())
      {
        v25 = sub_1C441DD4C(v22[8]);
        if (sub_1C44DBB50(v25, v26))
        {
          sub_1C44033A8(v22[9]);
          v29 = v29 && v27 == v28;
          if (v29 || (sub_1C4F02938()) && *(a1 + v22[10]) == *(a2 + v22[10]) && *(a1 + v22[11]) == *(a2 + v22[11]))
          {
            sub_1C44033A8(v22[12]);
            v32 = v29 && v30 == v31;
            if (v32 || (sub_1C4F02938() & 1) != 0)
            {
              return *(a1 + v22[13]) == *(a2 + v22[13]);
            }
          }
        }
      }
    }
  }

  return 0;
}

uint64_t sub_1C4B789B4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6870617267627573 && a2 == 0xEF736E6D756C6F43;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7463656A627573 && a2 == 0xE700000000000000;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7461636964657270 && a2 == 0xE900000000000065;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6E6F6974616C6572 && a2 == 0xEE00644970696873;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000015 && 0x80000001C4F86600 == a2;
          if (v9 || (sub_1C4F02938() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x7463656A626FLL && a2 == 0xE600000000000000;
            if (v10 || (sub_1C4F02938() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x73656372756F73 && a2 == 0xE700000000000000;
              if (v11 || (sub_1C4F02938() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6E656469666E6F63 && a2 == 0xEA00000000006563;
                if (v12 || (sub_1C4F02938() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000010 && 0x80000001C4F86630 == a2;
                  if (v13 || (sub_1C4F02938() & 1) != 0)
                  {

                    return 8;
                  }

                  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070)
                  {

                    return 9;
                  }

                  else
                  {
                    v15 = sub_1C4F02938();

                    if (v15)
                    {
                      return 9;
                    }

                    else
                    {
                      return 10;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1C4B78CE8(char a1)
{
  result = 0x6870617267627573;
  switch(a1)
  {
    case 1:
      result = 0x7463656A627573;
      break;
    case 2:
      result = 0x7461636964657270;
      break;
    case 3:
      result = 0x6E6F6974616C6572;
      break;
    case 4:
      result = 0xD000000000000015;
      break;
    case 5:
      result = 0x7463656A626FLL;
      break;
    case 6:
      result = 0x73656372756F73;
      break;
    case 7:
      result = 0x6E656469666E6F63;
      break;
    case 8:
      result = 0xD000000000000010;
      break;
    case 9:
      result = 0x6D617473656D6974;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1C4B78E30()
{
  sub_1C43FE96C();
  v3 = v0;
  v5 = v4;
  v6 = sub_1C456902C(&qword_1EC0C3ED8, &qword_1C4F566E0);
  sub_1C43FCDF8();
  v8 = v7;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C4402A68();
  sub_1C4409678(v5, v5[3]);
  v10 = sub_1C4B7CA54();
  sub_1C440F61C(&type metadata for SubgraphDatabaseTable.SubgraphComparableTriple.CodingKeys, v11, v10);
  v19 = *v3;
  sub_1C4B7CB98(*v3);
  sub_1C4B7CBD8();
  sub_1C44366A4();
  sub_1C43FBF44();
  sub_1C4F02778();
  if (v1)
  {
    sub_1C4B7CAA8(v19);
  }

  else
  {
    sub_1C4B7CAA8(v19);
    type metadata accessor for SubgraphDatabaseTable.SubgraphComparableTriple(0);
    sub_1C4EFF0C8();
    sub_1C441A624();
    sub_1C4B7CC2C(v12, v13, MEMORY[0x1E69A9818]);
    sub_1C4423CF4();
    sub_1C43FBF44();
    sub_1C4F027E8();
    sub_1C4EFEEF8();
    sub_1C440B3FC();
    sub_1C4B7CC2C(v14, v15, MEMORY[0x1E69A9750]);
    sub_1C4423CF4();
    sub_1C445AB20();
    sub_1C43FBF44();
    sub_1C4F027E8();
    sub_1C4EFF8A8();
    sub_1C4400F14();
    sub_1C4B7CC2C(v16, v17, MEMORY[0x1E69A99F0]);
    sub_1C4423CF4();
    sub_1C43FBF44();
    sub_1C4F027E8();
    sub_1C4423CF4();
    sub_1C445AB20();
    sub_1C43FBF44();
    sub_1C4F027E8();
    sub_1C43FBF44();
    sub_1C4F02798();
    sub_1C47C7748();
    sub_1C44366A4();
    sub_1C43FBF44();
    sub_1C4F027E8();
    sub_1C43FBF44();
    sub_1C4F027B8();
    v18 = sub_1C485AC04();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C44366A4();
    sub_1C43FBF44();
    sub_1C4F027E8();

    if (!v18)
    {
      sub_1C43FBF44();
      sub_1C4F027B8();
    }
  }

  (*(v8 + 8))(v2, v6);
  sub_1C43FBC80();
}

uint64_t sub_1C4B791D4(uint64_t a1)
{
  if (*v1)
  {
    sub_1C4F02B18();
    sub_1C4B7AD5C(a1);
  }

  else
  {
    sub_1C4F02B18();
  }

  v3 = type metadata accessor for SubgraphDatabaseTable.SubgraphComparableTriple(0);
  sub_1C4EFF0C8();
  sub_1C441A624();
  sub_1C4B7CC2C(v4, v5, MEMORY[0x1E69A9820]);
  sub_1C4404BCC();
  sub_1C4F00FE8();
  sub_1C4EFEEF8();
  sub_1C440B3FC();
  sub_1C4B7CC2C(v6, v7, MEMORY[0x1E69A9758]);
  sub_1C4404BCC();
  sub_1C4F00FE8();
  sub_1C4EFF8A8();
  sub_1C4400F14();
  sub_1C4B7CC2C(v8, v9, MEMORY[0x1E69A99F8]);
  sub_1C4F00FE8();
  sub_1C4404BCC();
  sub_1C4F00FE8();
  sub_1C4F01298();
  MEMORY[0x1C6941830](*(v1 + v3[10]));
  v10 = *(v1 + v3[11]);
  if (v10 == 0.0)
  {
    v10 = 0.0;
  }

  MEMORY[0x1C6941830](*&v10);
  sub_1C4F01298();
  v11 = *(v1 + v3[13]);
  if (v11 == 0.0)
  {
    v11 = 0.0;
  }

  return MEMORY[0x1C6941830](*&v11);
}

uint64_t sub_1C4B793C0()
{
  sub_1C4F02AF8();
  sub_1C4B791D4(v1);
  return sub_1C4F02B68();
}

uint64_t sub_1C4B79400@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a2;
  sub_1C4EFF8A8();
  sub_1C43FCDF8();
  v70 = v4;
  v71 = v3;
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBCC4();
  v7 = (v6 - v5);
  sub_1C4EFEEF8();
  sub_1C43FCDF8();
  v77 = v9;
  v78 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v64 - v13;
  sub_1C4EFF0C8();
  sub_1C43FCDF8();
  v72 = v16;
  v73 = v15;
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FBCC4();
  v19 = v18 - v17;
  v69 = sub_1C456902C(&qword_1EC0C3EC0, &qword_1C4F566D8);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v20);
  v22 = v64 - v21;
  v79 = type metadata accessor for SubgraphDatabaseTable.SubgraphComparableTriple(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v23);
  sub_1C43FBCC4();
  v75 = a1;
  v76 = (v25 - v24);
  sub_1C4409678(a1, a1[3]);
  sub_1C4B7CA54();
  v68 = v22;
  v26 = v74;
  sub_1C4F02BC8();
  if (v26)
  {
    v27 = 0;
    LODWORD(v28) = 0;
    sub_1C4416434();
    v29 = v76;
  }

  else
  {
    v30 = v14;
    v74 = v11;
    v80 = 0;
    sub_1C4B7CAE8();
    sub_1C4F02658();
    v31 = v83;
    v32 = v82;
    v29 = v76;
    *v76 = v81;
    v29[1] = v32;
    *(v29 + 4) = v31;
    LOBYTE(v81) = 1;
    sub_1C441A624();
    sub_1C4B7CC2C(v33, v34, MEMORY[0x1E69A9838]);
    v35 = v73;
    sub_1C4F026C8();
    (*(v72 + 32))(v29 + v79[5], v19, v35);
    LOBYTE(v81) = 2;
    sub_1C440B3FC();
    LODWORD(v19) = sub_1C4B7CC2C(v36, v37, MEMORY[0x1E69A9778]);
    v38 = v78;
    sub_1C445AB20();
    sub_1C4F026C8();
    v39 = v79[6];
    v66 = 0;
    v40 = v77 + 32;
    v65 = *(v77 + 32);
    v65(v29 + v39, v30, v38);
    LOBYTE(v81) = 3;
    sub_1C4400F14();
    sub_1C4B7CC2C(v41, v42, MEMORY[0x1E69A9A10]);
    v43 = v7;
    v28 = v71;
    v44 = v66;
    sub_1C4F026C8();
    v66 = v44;
    if (v44)
    {
      v45 = sub_1C447FA58();
      v46(v45);
      LODWORD(v7) = 0;
      LODWORD(v11) = 0;
      v27 = 1;
      LODWORD(v28) = 1;
      LODWORD(v19) = 1;
    }

    else
    {
      v7 = v65;
      v64[1] = v40;
      (*(v70 + 32))(v29 + v79[7], v43, v28);
      LOBYTE(v81) = 4;
      v47 = v74;
      sub_1C445AB20();
      v48 = v66;
      sub_1C4F026C8();
      if (!v48)
      {
        v7(v29 + v79[8], v47, v38);
        LOBYTE(v81) = 5;
        v51 = sub_1C4F02678();
        v54 = v79;
        v55 = (v29 + v79[9]);
        *v55 = v51;
        v55[1] = v56;
        v80 = 6;
        sub_1C44F02DC();
        sub_1C441B528();
        sub_1C4F026C8();
        *(v29 + v54[10]) = v81;
        *(v29 + v54[11]) = sub_1C443426C(7);
        v80 = 8;
        sub_1C44F0578();
        sub_1C441B528();
        sub_1C4F026C8();
        v57 = *(&v81 + 1);
        v58 = (v29 + v54[12]);
        *v58 = v81;
        v58[1] = v57;
        v59 = sub_1C443426C(9);
        v60 = sub_1C447FA58();
        v61(v60);
        v62 = v76;
        *(v76 + v79[13]) = v59;
        sub_1C4B7CB3C(v62, v67, type metadata accessor for SubgraphDatabaseTable.SubgraphComparableTriple);
        sub_1C440962C(v75);
        return sub_1C443CD78(v62, type metadata accessor for SubgraphDatabaseTable.SubgraphComparableTriple);
      }

      v49 = sub_1C447FA58();
      v50(v49);
      LODWORD(v11) = 0;
      v27 = 1;
      sub_1C4402508();
    }
  }

  result = sub_1C440962C(v75);
  if (v27)
  {
    v52 = v78;
    result = sub_1C4B7CAA8(*v29);
    if (v28)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v52 = v78;
    if (v28)
    {
LABEL_10:
      v53 = v79;
      result = (*(v72 + 8))(v29 + v79[5], v73);
      if ((v19 & 1) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_16;
    }
  }

  v53 = v79;
  if (!v19)
  {
LABEL_11:
    if (v7)
    {
      goto LABEL_12;
    }

    goto LABEL_17;
  }

LABEL_16:
  result = (*(v77 + 8))(v29 + v53[6], v52);
  if (v7)
  {
LABEL_12:
    result = (*(v70 + 8))(v29 + v53[7], v71);
    if ((v11 & 1) == 0)
    {
      return result;
    }

    return (*(v77 + 8))(v29 + v53[8], v52);
  }

LABEL_17:
  if (v11)
  {
    return (*(v77 + 8))(v29 + v53[8], v52);
  }

  return result;
}

uint64_t sub_1C4B79C80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4B789B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4B79CA8(uint64_t a1)
{
  v2 = sub_1C4B7CA54();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4B79CE4(uint64_t a1)
{
  v2 = sub_1C4B7CA54();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4B79D2C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (v2 + *(a1 + 48));
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C4B79DD4()
{
  sub_1C4F02AF8();
  sub_1C4B791D4(v1);
  return sub_1C4F02B68();
}

uint64_t sub_1C4B79E14()
{
  sub_1C4EFF0C8();
  sub_1C43FBCE0();
  v0 = sub_1C4409DB8();

  return v1(v0);
}

uint64_t sub_1C4B79E78()
{
  sub_1C4EFEEF8();
  sub_1C43FBCE0();
  v0 = sub_1C4409DB8();

  return v1(v0);
}

uint64_t sub_1C4B79EDC()
{
  sub_1C4EFF8A8();
  sub_1C43FBCE0();
  v0 = sub_1C4409DB8();

  return v1(v0);
}

uint64_t sub_1C4B79F40()
{
  sub_1C4EFEEF8();
  sub_1C43FBCE0();
  v0 = sub_1C4409DB8();

  return v1(v0);
}

unint64_t sub_1C4B79FD8(uint64_t a1)
{
  v1 = sub_1C4F025D8();

  if (v1 >= 9)
  {
    return 9;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1C4B7A024(char a1)
{
  result = 0x7463656A627573;
  switch(a1)
  {
    case 1:
      result = sub_1C43FC6F4();
      break;
    case 2:
      result = sub_1C441788C();
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    case 4:
      result = 0x7463656A626FLL;
      break;
    case 5:
      result = sub_1C44037FC();
      break;
    case 6:
      result = 0x6E656469666E6F63;
      break;
    case 7:
      result = 0xD000000000000010;
      break;
    case 8:
      result = 0x6D617473656D6974;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1C4B7A160@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C4B79FD8(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1C4B7A190@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C4B7A024(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void *sub_1C4B7A27C@<X0>(void *result@<X0>, char a2@<W1>, void *a3@<X8>)
{
  switch(a2)
  {
    case 1:
      v5 = MEMORY[0x1E69E6158];
      v6 = MEMORY[0x1E69A0138];
      v8 = result[6];
      v7 = result[7];
      goto LABEL_8;
    case 2:
      v3 = MEMORY[0x1E69E7360];
      v4 = result[8];
      goto LABEL_10;
    case 3:
      v5 = MEMORY[0x1E69E6158];
      v6 = MEMORY[0x1E69A0138];
      v8 = result[9];
      v7 = result[10];
      goto LABEL_8;
    case 4:
      v5 = MEMORY[0x1E69E6158];
      v6 = MEMORY[0x1E69A0138];
      v8 = result[11];
      v7 = result[12];
      goto LABEL_8;
    case 5:
      v3 = MEMORY[0x1E69E7360];
      v4 = result[13];
      goto LABEL_10;
    case 6:
      v10 = MEMORY[0x1E69E63B0];
      v11 = result[14];
      goto LABEL_13;
    case 7:
      v5 = MEMORY[0x1E69E6158];
      v6 = MEMORY[0x1E69A0138];
      v8 = result[15];
      v7 = result[16];
LABEL_8:
      a3[3] = v5;
      a3[4] = v6;
      *a3 = v8;
      a3[1] = v7;
      result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      break;
    case 8:
      v10 = MEMORY[0x1E69E63B0];
      v11 = result[17];
LABEL_13:
      v12 = MEMORY[0x1E69A0168];
      a3[3] = v10;
      a3[4] = v12;
      *a3 = v11;
      break;
    default:
      v3 = MEMORY[0x1E69E7360];
      v4 = result[5];
LABEL_10:
      v9 = MEMORY[0x1E69A01D0];
      a3[3] = v3;
      a3[4] = v9;
      *a3 = v4;
      break;
  }

  return result;
}

void *sub_1C4B7A378@<X0>(char *a1@<X0>, uint64_t a2@<X1>, void *a3@<X3>, void *a4@<X8>)
{
  v4 = *a1;
  switch(*a1)
  {
    case 4:

      return sub_1C442E860(a2, a4);
    default:
      v8 = sub_1C4F02938();

      if (v8)
      {
        return sub_1C442E860(a2, a4);
      }

      else
      {
        return sub_1C4B7A27C(a3, v4, a4);
      }
  }
}

uint64_t sub_1C4B7A528(uint64_t a1, uint64_t a2)
{
  sub_1C47E6EAC();
  if (v4 & 1) == 0 || ((*(a1 + 8) ^ *(a2 + 8)) & 1) != 0 || ((*(a1 + 9) ^ *(a2 + 9)) & 1) != 0 || ((*(a1 + 10) ^ *(a2 + 10)) & 1) != 0 || ((*(a1 + 11) ^ *(a2 + 11)) & 1) != 0 || ((*(a1 + 12) ^ *(a2 + 12)) & 1) != 0 || ((*(a1 + 13) ^ *(a2 + 13)) & 1) != 0 || ((*(a1 + 14) ^ *(a2 + 14)) & 1) != 0 || ((*(a1 + 15) ^ *(a2 + 15)) & 1) != 0 || ((*(a1 + 16) ^ *(a2 + 16)))
  {
    return 0;
  }

  if (*(a1 + 24) == *(a2 + 24) && *(a1 + 32) == *(a2 + 32))
  {
    return 1;
  }

  return sub_1C4F02938();
}

uint64_t sub_1C4B7A62C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x736E6D756C6F63 && a2 == 0xE700000000000000;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656A627553736168 && a2 == 0xEA00000000007463;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6964657250736168 && a2 == 0xEC00000065746163;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000011 && 0x80000001C4FB3270 == a2;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000018 && 0x80000001C4FB3290 == a2;
          if (v9 || (sub_1C4F02938() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x63656A624F736168 && a2 == 0xE900000000000074;
            if (v10 || (sub_1C4F02938() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6372756F53736168 && a2 == 0xEA00000000007365;
              if (v11 || (sub_1C4F02938() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x69666E6F43736168 && a2 == 0xED000065636E6564;
                if (v12 || (sub_1C4F02938() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000013 && 0x80000001C4FB32B0 == a2;
                  if (v13 || (sub_1C4F02938() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x73656D6954736168 && a2 == 0xEC000000706D6174;
                    if (v14 || (sub_1C4F02938() & 1) != 0)
                    {

                      return 9;
                    }

                    else if (a1 == 0x7453747265736E69 && a2 == 0xEC000000676E6972)
                    {

                      return 10;
                    }

                    else
                    {
                      v16 = sub_1C4F02938();

                      if (v16)
                      {
                        return 10;
                      }

                      else
                      {
                        return 11;
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1C4B7A9A4(char a1)
{
  result = 0x736E6D756C6F63;
  switch(a1)
  {
    case 1:
      result = 0x656A627553736168;
      break;
    case 2:
      result = 0x6964657250736168;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0xD000000000000018;
      break;
    case 5:
      result = 0x63656A624F736168;
      break;
    case 6:
      result = 0x6372756F53736168;
      break;
    case 7:
      result = 0x69666E6F43736168;
      break;
    case 8:
      result = 0xD000000000000013;
      break;
    case 9:
      result = 0x73656D6954736168;
      break;
    case 10:
      result = 0x7453747265736E69;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C4B7AB18(void *a1)
{
  v4 = sub_1C456902C(&qword_1EC0C3E18, &qword_1C4F56188);
  sub_1C43FCDF8();
  v6 = v5;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C4402A68();
  sub_1C4409678(a1, a1[3]);
  v8 = sub_1C4B7BF90();
  sub_1C440F61C(&type metadata for SubgraphDatabaseTable.SubgraphColumns.CodingKeys, v9, v8);
  sub_1C456902C(&qword_1EC0C3E00, &qword_1C4F56180);
  sub_1C4B7C038(&qword_1EC0C3E20, sub_1C4B7C0B0, MEMORY[0x1E69E6300]);
  sub_1C43FBF44();
  sub_1C4F027E8();
  if (!v1)
  {
    sub_1C4426090(1);
    sub_1C4426090(2);
    sub_1C4426090(3);
    sub_1C4426090(4);
    sub_1C4426090(5);
    sub_1C4426090(6);
    sub_1C4426090(7);
    sub_1C4426090(8);
    sub_1C4426090(9);
    sub_1C43FBF44();
    sub_1C4F02798();
  }

  return (*(v6 + 8))(v2, v4);
}

uint64_t sub_1C4B7AD5C(uint64_t a1)
{
  sub_1C49F04BC();
  sub_1C4F02B18();
  sub_1C4F02B18();
  sub_1C4F02B18();
  sub_1C4F02B18();
  sub_1C4F02B18();
  sub_1C4F02B18();
  sub_1C4F02B18();
  sub_1C4F02B18();
  sub_1C4F02B18();

  return sub_1C4F01298();
}

uint64_t sub_1C4B7AE0C()
{
  sub_1C4F02AF8();
  sub_1C4B7AD5C(v1);
  return sub_1C4F02B68();
}

void sub_1C4B7AE4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, __int16 a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_1C43FE96C();
  v26 = v25;
  v28 = v27;
  sub_1C456902C(&qword_1EC0C3DF0, &qword_1C4F56178);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v29);
  v30 = sub_1C4404BCC();
  sub_1C4409678(v30, v31);
  sub_1C4B7BF90();
  sub_1C4F02BC8();
  if (v24)
  {
    sub_1C440962C(v26);
  }

  else
  {
    sub_1C456902C(&qword_1EC0C3E00, &qword_1C4F56180);
    LOBYTE(v48) = 0;
    sub_1C4B7C038(&qword_1EC0C3E08, sub_1C4B7BFE4, MEMORY[0x1E69E6330]);
    sub_1C4F026C8();
    v32 = v51;
    v33 = sub_1C440D8A0(1);
    v63 = sub_1C440D8A0(2);
    v47 = sub_1C440D8A0(3);
    v46 = sub_1C440D8A0(4);
    v45 = sub_1C440D8A0(5);
    v44 = sub_1C440D8A0(6);
    v43 = sub_1C440D8A0(7);
    v42 = sub_1C440D8A0(8);
    v41 = sub_1C440D8A0(9);
    v34 = sub_1C4F02678();
    v39 = v35;
    v40 = v34;
    v36 = sub_1C43FBF04();
    v37(v36);
    *&v48 = v32;
    BYTE8(v48) = v33 & 1;
    BYTE9(v48) = v63 & 1;
    BYTE10(v48) = v47 & 1;
    BYTE11(v48) = v46 & 1;
    BYTE12(v48) = v45 & 1;
    BYTE13(v48) = v44 & 1;
    BYTE14(v48) = v43 & 1;
    HIBYTE(v48) = v42 & 1;
    LOBYTE(v49) = v41 & 1;
    *(&v49 + 1) = v40;
    v50 = v39;
    sub_1C487BE08(&v48, &v51);
    sub_1C440962C(v26);
    v51 = v32;
    v52 = v33 & 1;
    v53 = v63 & 1;
    v54 = v47 & 1;
    v55 = v46 & 1;
    v56 = v45 & 1;
    v57 = v44 & 1;
    v58 = v43 & 1;
    v59 = v42 & 1;
    v60 = v41 & 1;
    v61 = v40;
    v62 = v39;
    sub_1C487BDB4(&v51);
    v38 = v49;
    *v28 = v48;
    *(v28 + 16) = v38;
    *(v28 + 32) = v50;
  }

  sub_1C4403810();
  sub_1C43FBC80();
}

uint64_t sub_1C4B7B20C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D614E656C626174 && a2 == 0xE900000000000065;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x736E6D756C6F63 && a2 == 0xE700000000000000;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6E497463656A626FLL && a2 == 0xEB00000000786564;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x54467463656A626FLL && a2 == 0xEE007865646E4953;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0xD000000000000012 && 0x80000001C4FB32D0 == a2)
        {

          return 4;
        }

        else
        {
          v10 = sub_1C4F02938();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t sub_1C4B7B3C8(char a1)
{
  result = 0x6D614E656C626174;
  switch(a1)
  {
    case 1:
      result = 0x736E6D756C6F63;
      break;
    case 2:
      result = 0x6E497463656A626FLL;
      break;
    case 3:
      result = 0x54467463656A626FLL;
      break;
    case 4:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1C4B7B480()
{
  sub_1C43FE96C();
  v3 = v2;
  v4 = sub_1C456902C(&qword_1EC0C3E38, &qword_1C4F561A0);
  sub_1C43FCDF8();
  v6 = v5;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C4402A68();
  sub_1C4409678(v3, v3[3]);
  sub_1C4B7C104();
  sub_1C4F02BF8();
  sub_1C4402150();
  sub_1C4F02798();
  if (!v0)
  {
    sub_1C456902C(&qword_1EC0BB018, qword_1C4F50870);
    sub_1C4B7C158(&qword_1EDDDBC60, &qword_1EDDE3FF8, &protocol conformance descriptor for ViewDatabaseArtifact.Property, MEMORY[0x1E69E6300]);
    sub_1C4402150();
    sub_1C4F027E8();
    sub_1C4402150();
    sub_1C4F02748();
    sub_1C4402150();
    sub_1C4F02748();
    sub_1C4402150();
    sub_1C4F02748();
  }

  (*(v6 + 8))(v1, v4);
  sub_1C43FBC80();
}

void sub_1C4B7B6A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_1C43FE96C();
  v26 = v25;
  sub_1C456902C(&qword_1EC0C3E30, &unk_1C4F56190);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v27);
  sub_1C4409678(v26, v26[3]);
  sub_1C4B7C104();
  sub_1C4F02BC8();
  if (!v24)
  {
    sub_1C4418C04();
    sub_1C4F02678();
    sub_1C456902C(&qword_1EC0BB018, qword_1C4F50870);
    sub_1C4B7C158(&qword_1EDDFEA60, &qword_1EDDFF060, &protocol conformance descriptor for ViewDatabaseArtifact.Property, MEMORY[0x1E69E6330]);
    sub_1C4F026C8();
    sub_1C4F02628();
    sub_1C4418C04();
    sub_1C4F02628();
    sub_1C4418C04();
    sub_1C4F02628();
    v28 = sub_1C43FD6E4();
    v29(v28);
  }

  sub_1C440962C(v26);
  sub_1C4403810();
  sub_1C43FBC80();
}

uint64_t sub_1C4B7B94C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4B7A62C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4B7B974@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C4617DB0();
  *a1 = result;
  return result;
}

uint64_t sub_1C4B7B99C(uint64_t a1)
{
  v2 = sub_1C4B7BF90();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4B7B9D8(uint64_t a1)
{
  v2 = sub_1C4B7BF90();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4B7BA1C()
{
  sub_1C4F02AF8();
  sub_1C4B7AD5C(v1);
  return sub_1C4F02B68();
}

uint64_t sub_1C4B7BABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t))
{
  v6 = *v4;
  sub_1C4F02AF8();
  a4(v8, v6);
  return sub_1C4F02B68();
}

uint64_t sub_1C4B7BB10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4B7B20C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4B7BB38(uint64_t a1)
{
  v2 = sub_1C4B7C104();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4B7BB74(uint64_t a1)
{
  v2 = sub_1C4B7C104();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1C4B7BC24()
{
  result = qword_1EC0C3DE8;
  if (!qword_1EC0C3DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3DE8);
  }

  return result;
}

uint64_t type metadata accessor for SubgraphDatabaseTable.SubgraphComparableTriple(uint64_t a1)
{
  result = qword_1EC0C3E40;
  if (!qword_1EC0C3E40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4B7BD3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v26 = a4;
  v27 = a5;
  v10 = sub_1C456902C(&qword_1EC0C3F10, &qword_1C4F56700);
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v26 - v15;
  v17 = sub_1C4EFEEF8();
  v18 = *(*(v17 - 8) + 16);
  v18(v16, a1, v17);
  v19 = &v16[*(v11 + 56)];
  *v19 = a2;
  *(v19 + 1) = a3;
  v18(v13, v26, v17);
  v20 = v27;
  v21 = &v13[*(v11 + 56)];
  *v21 = v27;
  v21[1] = a6;
  sub_1C4B7CC2C(&qword_1EDDFCCB0, MEMORY[0x1E69A9748], MEMORY[0x1E69A9768]);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  if (sub_1C4F010B8())
  {
    if (a2 == v20 && a3 == a6)
    {
      v24 = 0;
      goto LABEL_10;
    }

    v23 = sub_1C4F02938();
  }

  else
  {
    sub_1C4B7CC2C(&qword_1EC0C3F00, MEMORY[0x1E69A9748], MEMORY[0x1E69A9760]);
    v23 = sub_1C4F01068();
  }

  v24 = v23;
LABEL_10:
  sub_1C4420C3C(v13, &qword_1EC0C3F10, &qword_1C4F56700);
  sub_1C4420C3C(v16, &qword_1EC0C3F10, &qword_1C4F56700);
  return v24 & 1;
}

unint64_t sub_1C4B7BF90()
{
  result = qword_1EC0C3DF8;
  if (!qword_1EC0C3DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3DF8);
  }

  return result;
}

unint64_t sub_1C4B7BFE4()
{
  result = qword_1EC0C3E10;
  if (!qword_1EC0C3E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3E10);
  }

  return result;
}

uint64_t sub_1C4B7C038(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1C4572308(&qword_1EC0C3E00, &qword_1C4F56180);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C4B7C0B0()
{
  result = qword_1EC0C3E28;
  if (!qword_1EC0C3E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3E28);
  }

  return result;
}

unint64_t sub_1C4B7C104()
{
  result = qword_1EDDFB0D0;
  if (!qword_1EDDFB0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFB0D0);
  }

  return result;
}

uint64_t sub_1C4B7C158(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1C4572308(&qword_1EC0BB018, qword_1C4F50870);
    sub_1C4B7CC2C(a2, type metadata accessor for ViewDatabaseArtifact.Property, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SubgraphDatabaseTable.Config.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SubgraphDatabaseTable.SubgraphColumns.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C4B7C3D4(uint64_t a1)
{
  sub_1C4B7C4D8();
  v2 = v1;
  if (v3 <= 0x3F)
  {
    v2 = sub_1C4EFF0C8();
    if (v4 <= 0x3F)
    {
      v2 = sub_1C4EFEEF8();
      if (v5 <= 0x3F)
      {
        v6 = sub_1C4EFF8A8();
        if (v7 > 0x3F)
        {
          return v6;
        }

        else
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v2;
}

void sub_1C4B7C4D8()
{
  if (!qword_1EC0C3E50)
  {
    v0 = sub_1C4F01F48();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC0C3E50);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for SubgraphDatabaseTable.SubgraphColumns.SubgraphTripleColumn(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C4B7C608()
{
  result = qword_1EC0C3E58;
  if (!qword_1EC0C3E58)
  {
    sub_1C4572308(&qword_1EC0C3E00, &qword_1C4F56180);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3E58);
  }

  return result;
}

unint64_t sub_1C4B7C670()
{
  result = qword_1EC0C3E60;
  if (!qword_1EC0C3E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3E60);
  }

  return result;
}

uint64_t sub_1C4B7C6C4(uint64_t a1)
{
  result = sub_1C4B7CC2C(&qword_1EC0C3E70, type metadata accessor for SubgraphDatabaseTable.SubgraphComparableTriple, &unk_1C4F56690);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4B7C71C(void *a1)
{
  a1[1] = sub_1C4B7CC2C(&qword_1EC0C3E78, type metadata accessor for SubgraphDatabaseTable.SubgraphComparableTriple, &unk_1C4F56360);
  a1[2] = sub_1C4B7CC2C(&qword_1EC0C3E80, type metadata accessor for SubgraphDatabaseTable.SubgraphComparableTriple, &unk_1C4F5637C);
  a1[3] = sub_1C4B7CC2C(&qword_1EC0C3E88, type metadata accessor for SubgraphDatabaseTable.SubgraphComparableTriple, &unk_1C4F56338);
  result = sub_1C4B7CC2C(&qword_1EC0C3E90, type metadata accessor for SubgraphDatabaseTable.SubgraphComparableTriple, &unk_1C4F562F8);
  a1[4] = result;
  return result;
}

unint64_t sub_1C4B7C7F4()
{
  result = qword_1EC0C3E98;
  if (!qword_1EC0C3E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3E98);
  }

  return result;
}

unint64_t sub_1C4B7C84C()
{
  result = qword_1EC0C3EA0;
  if (!qword_1EC0C3EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3EA0);
  }

  return result;
}

unint64_t sub_1C4B7C8A4()
{
  result = qword_1EDDFD518;
  if (!qword_1EDDFD518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFD518);
  }

  return result;
}

unint64_t sub_1C4B7C8FC()
{
  result = qword_1EDDFD520;
  if (!qword_1EDDFD520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFD520);
  }

  return result;
}

unint64_t sub_1C4B7C954()
{
  result = qword_1EC0C3EA8;
  if (!qword_1EC0C3EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3EA8);
  }

  return result;
}

unint64_t sub_1C4B7C9AC()
{
  result = qword_1EC0C3EB0;
  if (!qword_1EC0C3EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3EB0);
  }

  return result;
}

unint64_t sub_1C4B7CA00()
{
  result = qword_1EC0C3EB8;
  if (!qword_1EC0C3EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3EB8);
  }

  return result;
}

unint64_t sub_1C4B7CA54()
{
  result = qword_1EC0C3EC8;
  if (!qword_1EC0C3EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3EC8);
  }

  return result;
}

uint64_t sub_1C4B7CAA8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_1C4B7CAE8()
{
  result = qword_1EC0C3ED0;
  if (!qword_1EC0C3ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3ED0);
  }

  return result;
}

uint64_t sub_1C4B7CB3C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C43FBCE0();
  v4 = sub_1C43FBC98();
  v5(v4);
  return a2;
}

uint64_t sub_1C4B7CB98(uint64_t result)
{
  if (result)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  return result;
}

unint64_t sub_1C4B7CBD8()
{
  result = qword_1EC0C3EE0;
  if (!qword_1EC0C3EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3EE0);
  }

  return result;
}

uint64_t sub_1C4B7CC2C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

_BYTE *storeEnumTagSinglePayload for SubgraphDatabaseTable.SubgraphComparableTriple.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C4B7CD54()
{
  result = qword_1EC0C3F18;
  if (!qword_1EC0C3F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3F18);
  }

  return result;
}

unint64_t sub_1C4B7CDAC()
{
  result = qword_1EC0C3F20;
  if (!qword_1EC0C3F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3F20);
  }

  return result;
}

unint64_t sub_1C4B7CE04()
{
  result = qword_1EC0C3F28;
  if (!qword_1EC0C3F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3F28);
  }

  return result;
}

void sub_1C4B7CE74(uint64_t a1)
{
  v2 = type metadata accessor for Configuration(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v28[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v28[-v8];
  if (qword_1EDDFA678 != -1)
  {
    sub_1C43FFCC0(&qword_1EDDFA678);
  }

  v10 = sub_1C4F00978();
  sub_1C442B738(v10, qword_1EDE2DCD8);
  v11 = sub_1C4F00968();
  v12 = sub_1C4F01CF8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = sub_1C43FCED0();
    *v13 = 0;
    _os_log_impl(&dword_1C43F8000, v11, v12, "SysdiagnoseXPC: starting...", v13, 2u);
    MEMORY[0x1C6942830](v13, -1, -1);
  }

  if (qword_1EDDE9218 != -1)
  {
    sub_1C4407C60(&qword_1EDDE9218);
  }

  v14 = sub_1C442B738(v6, qword_1EDE2CED0);
  if (qword_1EDDFDCF8 != -1)
  {
    sub_1C43FF284(&qword_1EDDFDCF8);
  }

  swift_beginAccess();
  if (qword_1EDDFF3C8)
  {
    sub_1C43FDED0();
    v16 = v15();
    (*(v17 + 48))(a1, v16, v17);
    sub_1C4409954(v5, v9);
  }

  else
  {
    sub_1C44098F0(a1, v9);
  }

  sub_1C440BAA8(v9, 0, 1, v2);
  swift_beginAccess();
  sub_1C45A6EE0(v9, v14);
  swift_endAccess();
  sub_1C45A6F50();
  v18 = sub_1C4425450();
  v20 = sub_1C49AA56C(v18, v19);
  v21 = qword_1EDE2CEC0;
  qword_1EDE2CEC0 = v20;
  v22 = v20;

  if (v22)
  {
    qword_1EDE2CEC8 = [objc_allocWithZone(type metadata accessor for SysdiagnoseXPC.Delegate()) init];
    v23 = qword_1EDE2CEC8;
    swift_unknownObjectRelease();
    [v22 setDelegate:v23];

    [v22 resume];
  }

  else
  {
    v22 = sub_1C4F00968();
    v24 = sub_1C4F01CE8();
    if (os_log_type_enabled(v22, v24))
    {
      v25 = sub_1C43FCED0();
      sub_1C43FBD24(v25);
      sub_1C440BAE8(&dword_1C43F8000, v26, v27, "Failed to create SysdiagnoseXPC service");
      sub_1C43FE9D4();
    }
  }
}

uint64_t sub_1C4B7D1D8()
{
  v0 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  sub_1C44F9918(v0, qword_1EDE2CED0);
  v1 = sub_1C442B738(v0, qword_1EDE2CED0);
  v2 = type metadata accessor for Configuration(0);

  return sub_1C440BAA8(v1, 1, 1, v2);
}

uint64_t SysdiagnoseXPC.SysdiagnoseXPCError.hashValue.getter()
{
  v1 = *v0;
  sub_1C4F02AF8();
  MEMORY[0x1C69417F0](v1);
  return sub_1C4F02B68();
}

uint64_t sub_1C4B7D30C()
{
  sub_1C43FCF70();
  if (qword_1EDDFA678 != -1)
  {
    sub_1C43FFCC0(&qword_1EDDFA678);
  }

  v1 = sub_1C4F00978();
  v2 = sub_1C43FEB44(v1, qword_1EDE2DCD8);
  v3 = sub_1C4F01CF8();
  if (sub_1C4402B64(v3))
  {
    v4 = sub_1C43FCED0();
    sub_1C43FBD24(v4);
    sub_1C43FFFD8(&dword_1C43F8000, v5, v6, "SysdiagnoseXPC: diagnostics");
    sub_1C43FE9D4();
  }

  v7 = sub_1C494B4E4();
  v8 = *(v0 + 8);

  return v8(v7);
}

uint64_t sub_1C4B7D438(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  v4 = a2;
  v5 = swift_task_alloc();
  v2[4] = v5;
  *v5 = v2;
  v5[1] = sub_1C4B7D4DC;

  return SysdiagnoseXPC.Server.diagnostics()();
}

uint64_t sub_1C4B7D4DC(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  sub_1C43FBDE4();
  v6 = v5;
  v7 = *(v5 + 16);
  v8 = *v3;
  sub_1C43FBDAC();
  *v9 = v8;

  if (v4)
  {
    v10 = sub_1C4EF9798();

    v11 = 0;
    v12 = v10;
  }

  else
  {
    v11 = sub_1C4F01108();

    v10 = 0;
    v12 = v11;
  }

  v13 = *(v6 + 24);
  v13[2](v13, v11, v10);

  _Block_release(v13);
  v14 = *(v8 + 8);

  return v14();
}

uint64_t SysdiagnoseXPC.Server.entityTaggingSupplementalDiagnostics()()
{
  sub_1C43FBCD4();
  v1 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  sub_1C440FC8C(v1);
  *(v0 + 96) = sub_1C43FBE7C();
  v2 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1C4B7D6E4()
{
  sub_1C4404D98();
  if (qword_1EDDFA678 != -1)
  {
    sub_1C43FFCC0(&qword_1EDDFA678);
  }

  v1 = sub_1C4F00978();
  v2 = sub_1C43FEB44(v1, qword_1EDE2DCD8);
  v3 = sub_1C4F01CF8();
  if (sub_1C4402B64(v3))
  {
    v4 = sub_1C43FCED0();
    sub_1C43FBD24(v4);
    sub_1C43FFFD8(&dword_1C43F8000, v5, v6, "SysdiagnoseXPC: entitytagging supplemental diagnostics");
    sub_1C43FE9D4();
  }

  if (qword_1EDDFDCF8 != -1)
  {
    sub_1C43FF284(&qword_1EDDFDCF8);
  }

  sub_1C440D8C4();
  if (!qword_1EDDFF3C8)
  {
    v16 = sub_1C4B7F064();
    v17 = sub_1C43FFB2C(&type metadata for SysdiagnoseXPC.SysdiagnoseXPCError, v16);
    sub_1C440E818(v17, v18);

    sub_1C4432B00();
    sub_1C4416444();

    __asm { BRAA            X1, X16 }
  }

  sub_1C43FDED0();
  v7();
  sub_1C4404274();
  if (qword_1EDDE9218 != -1)
  {
    sub_1C4407C60(&qword_1EDDE9218);
  }

  sub_1C44090FC(*(v0 + 88), qword_1EDE2CED0);
  sub_1C441E6F8();
  v8 = type metadata accessor for Configuration(0);
  result = sub_1C440381C(v8);
  if (!v10)
  {
    sub_1C4411260();
    v11 = swift_task_alloc();
    v12 = sub_1C441EF54(v11);
    *v12 = v13;
    sub_1C4400F2C(v12);
    sub_1C4416444();

    __asm { BRAA            X3, X16 }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C4B7D92C()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FEB84();
  *v2 = v1;
  sub_1C44125F4(v3, v4);
  v6 = *(v5 + 96);
  v7 = *v0;
  sub_1C43FBDAC();
  *v8 = v7;
  *(v10 + 112) = v9;

  sub_1C4467948(v6);
  v11 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1C4B7DA44(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  v4 = a2;
  v5 = swift_task_alloc();
  v2[4] = v5;
  *v5 = v2;
  v5[1] = sub_1C4B7F5CC;

  return SysdiagnoseXPC.Server.entityTaggingSupplementalDiagnostics()();
}

uint64_t SysdiagnoseXPC.Server.entityRelevanceRankingSupplementalDiagnostics()()
{
  sub_1C43FBCD4();
  v1 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  sub_1C440FC8C(v1);
  *(v0 + 96) = sub_1C43FBE7C();
  v2 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1C4B7DB68()
{
  sub_1C4404D98();
  if (qword_1EDDFA678 != -1)
  {
    sub_1C43FFCC0(&qword_1EDDFA678);
  }

  v1 = sub_1C4F00978();
  v2 = sub_1C43FEB44(v1, qword_1EDE2DCD8);
  v3 = sub_1C4F01CF8();
  if (sub_1C4402B64(v3))
  {
    v4 = sub_1C43FCED0();
    sub_1C43FBD24(v4);
    sub_1C43FFFD8(&dword_1C43F8000, v5, v6, "SysdiagnoseXPC: entityRelevanceRanking supplemental diagnostics");
    sub_1C43FE9D4();
  }

  if (qword_1EDDFDCF8 != -1)
  {
    sub_1C43FF284(&qword_1EDDFDCF8);
  }

  sub_1C440D8C4();
  if (!qword_1EDDFF3C8)
  {
    v16 = sub_1C4B7F064();
    v17 = sub_1C43FFB2C(&type metadata for SysdiagnoseXPC.SysdiagnoseXPCError, v16);
    sub_1C440E818(v17, v18);

    sub_1C4432B00();
    sub_1C4416444();

    __asm { BRAA            X1, X16 }
  }

  sub_1C43FDED0();
  v7();
  sub_1C4404274();
  if (qword_1EDDE9218 != -1)
  {
    sub_1C4407C60(&qword_1EDDE9218);
  }

  sub_1C44090FC(*(v0 + 88), qword_1EDE2CED0);
  sub_1C441E6F8();
  v8 = type metadata accessor for Configuration(0);
  result = sub_1C440381C(v8);
  if (!v10)
  {
    sub_1C4411260();
    v11 = swift_task_alloc();
    v12 = sub_1C441EF54(v11);
    *v12 = v13;
    sub_1C4400F2C(v12);
    sub_1C4416444();

    __asm { BRAA            X3, X16 }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C4B7DDD0(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  v4 = a2;
  v5 = swift_task_alloc();
  v2[4] = v5;
  *v5 = v2;
  v5[1] = sub_1C4B7F5CC;

  return SysdiagnoseXPC.Server.entityRelevanceRankingSupplementalDiagnostics()();
}

uint64_t SysdiagnoseXPC.Server.entityResolutionSupplementalDiagnostics()()
{
  sub_1C43FBCD4();
  v1 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  sub_1C440FC8C(v1);
  *(v0 + 96) = sub_1C43FBE7C();
  v2 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1C4B7DEF4()
{
  sub_1C4404D98();
  if (qword_1EDDFA678 != -1)
  {
    sub_1C43FFCC0(&qword_1EDDFA678);
  }

  v1 = sub_1C4F00978();
  v2 = sub_1C43FEB44(v1, qword_1EDE2DCD8);
  v3 = sub_1C4F01CF8();
  if (sub_1C4402B64(v3))
  {
    v4 = sub_1C43FCED0();
    sub_1C43FBD24(v4);
    sub_1C43FFFD8(&dword_1C43F8000, v5, v6, "SysdiagnoseXPC: entityResolution supplemental diagnostics");
    sub_1C43FE9D4();
  }

  if (qword_1EDDFDCF8 != -1)
  {
    sub_1C43FF284(&qword_1EDDFDCF8);
  }

  sub_1C440D8C4();
  if (!qword_1EDDFF3C8)
  {
    v16 = sub_1C4B7F064();
    v17 = sub_1C43FFB2C(&type metadata for SysdiagnoseXPC.SysdiagnoseXPCError, v16);
    sub_1C440E818(v17, v18);

    sub_1C4432B00();
    sub_1C4416444();

    __asm { BRAA            X1, X16 }
  }

  sub_1C43FDED0();
  v7();
  sub_1C4404274();
  if (qword_1EDDE9218 != -1)
  {
    sub_1C4407C60(&qword_1EDDE9218);
  }

  sub_1C44090FC(*(v0 + 88), qword_1EDE2CED0);
  sub_1C441E6F8();
  v8 = type metadata accessor for Configuration(0);
  result = sub_1C440381C(v8);
  if (!v10)
  {
    sub_1C4411260();
    v11 = swift_task_alloc();
    v12 = sub_1C441EF54(v11);
    *v12 = v13;
    sub_1C4400F2C(v12);
    sub_1C4416444();

    __asm { BRAA            X3, X16 }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C4B7E15C(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  v4 = a2;
  v5 = swift_task_alloc();
  v2[4] = v5;
  *v5 = v2;
  v5[1] = sub_1C4B7F5CC;

  return SysdiagnoseXPC.Server.entityResolutionSupplementalDiagnostics()();
}

uint64_t SysdiagnoseXPC.Server.viewsSupplementalDiagnostics()()
{
  sub_1C43FBCD4();
  v1 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  sub_1C440FC8C(v1);
  *(v0 + 96) = sub_1C43FBE7C();
  v2 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1C4B7E280()
{
  sub_1C4404D98();
  if (qword_1EDDFA678 != -1)
  {
    sub_1C43FFCC0(&qword_1EDDFA678);
  }

  v1 = sub_1C4F00978();
  v2 = sub_1C43FEB44(v1, qword_1EDE2DCD8);
  v3 = sub_1C4F01CF8();
  if (sub_1C4402B64(v3))
  {
    v4 = sub_1C43FCED0();
    sub_1C43FBD24(v4);
    sub_1C43FFFD8(&dword_1C43F8000, v5, v6, "SysdiagnoseXPC: views supplemental diagnostics");
    sub_1C43FE9D4();
  }

  if (qword_1EDDFDCF8 != -1)
  {
    sub_1C43FF284(&qword_1EDDFDCF8);
  }

  sub_1C440D8C4();
  if (!qword_1EDDFF3C8)
  {
    v16 = sub_1C4B7F064();
    v17 = sub_1C43FFB2C(&type metadata for SysdiagnoseXPC.SysdiagnoseXPCError, v16);
    sub_1C440E818(v17, v18);

    sub_1C4432B00();
    sub_1C4416444();

    __asm { BRAA            X1, X16 }
  }

  sub_1C43FDED0();
  v7();
  sub_1C4404274();
  if (qword_1EDDE9218 != -1)
  {
    sub_1C4407C60(&qword_1EDDE9218);
  }

  sub_1C44090FC(*(v0 + 88), qword_1EDE2CED0);
  sub_1C441E6F8();
  v8 = type metadata accessor for Configuration(0);
  result = sub_1C440381C(v8);
  if (!v10)
  {
    sub_1C4411260();
    v11 = swift_task_alloc();
    v12 = sub_1C441EF54(v11);
    *v12 = v13;
    sub_1C4400F2C(v12);
    sub_1C4416444();

    __asm { BRAA            X3, X16 }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C4B7E4E8(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  v4 = a2;
  v5 = swift_task_alloc();
  v2[4] = v5;
  *v5 = v2;
  v5[1] = sub_1C4B7F5CC;

  return SysdiagnoseXPC.Server.viewsSupplementalDiagnostics()();
}

uint64_t SysdiagnoseXPC.Server.eventViewDiagnostics()()
{
  sub_1C43FBCD4();
  v1 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  sub_1C440FC8C(v1);
  *(v0 + 96) = sub_1C43FBE7C();
  v2 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1C4B7E60C()
{
  sub_1C4404D98();
  if (qword_1EDDFA678 != -1)
  {
    sub_1C43FFCC0(&qword_1EDDFA678);
  }

  v1 = sub_1C4F00978();
  v2 = sub_1C43FEB44(v1, qword_1EDE2DCD8);
  v3 = sub_1C4F01CF8();
  if (sub_1C4402B64(v3))
  {
    v4 = sub_1C43FCED0();
    sub_1C43FBD24(v4);
    sub_1C43FFFD8(&dword_1C43F8000, v5, v6, "SysdiagnoseXPC: event view diagnostics");
    sub_1C43FE9D4();
  }

  if (qword_1EDDFDCF8 != -1)
  {
    sub_1C43FF284(&qword_1EDDFDCF8);
  }

  sub_1C440D8C4();
  if (!qword_1EDDFF3C8)
  {
    v16 = sub_1C4B7F064();
    v17 = sub_1C43FFB2C(&type metadata for SysdiagnoseXPC.SysdiagnoseXPCError, v16);
    sub_1C440E818(v17, v18);

    sub_1C4432B00();
    sub_1C4416444();

    __asm { BRAA            X1, X16 }
  }

  sub_1C43FDED0();
  v7();
  sub_1C4404274();
  if (qword_1EDDE9218 != -1)
  {
    sub_1C4407C60(&qword_1EDDE9218);
  }

  sub_1C44090FC(*(v0 + 88), qword_1EDE2CED0);
  sub_1C441E6F8();
  v8 = type metadata accessor for Configuration(0);
  result = sub_1C440381C(v8);
  if (!v10)
  {
    sub_1C4411260();
    v11 = swift_task_alloc();
    v12 = sub_1C441EF54(v11);
    *v12 = v13;
    sub_1C4400F2C(v12);
    sub_1C4416444();

    __asm { BRAA            X3, X16 }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C4B7E854()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FEB84();
  *v2 = v1;
  sub_1C44125F4(v3, v4);
  v6 = *(v5 + 96);
  v7 = *v0;
  sub_1C43FBDAC();
  *v8 = v7;
  *(v10 + 112) = v9;

  sub_1C4467948(v6);
  v11 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1C4B7E94C()
{
  sub_1C43FCF70();
  v1 = v0[14];
  if (v1)
  {
    v2 = v0[9];

    v3 = v0[1];

    return v3(v2, v1);
  }

  else
  {
    v5 = sub_1C4B7F064();
    v6 = sub_1C43FFB2C(&type metadata for SysdiagnoseXPC.SysdiagnoseXPCError, v5);
    sub_1C440E818(v6, v7);

    sub_1C4432B00();

    return v8();
  }
}

uint64_t sub_1C4B7EA3C(void *a1, int a2, void *aBlock, uint64_t a4, uint64_t a5)
{
  v7 = _Block_copy(aBlock);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = a1;
  v9 = a1;

  return sub_1C446D134(a5, v8);
}

uint64_t sub_1C4B7EAAC(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  v4 = a2;
  v5 = swift_task_alloc();
  v2[4] = v5;
  *v5 = v2;
  v5[1] = sub_1C4B7F5CC;

  return SysdiagnoseXPC.Server.eventViewDiagnostics()();
}

id SysdiagnoseXPC.Server.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1C4B7EB8C(uint64_t a1, void *a2)
{
  v3 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v26 - v5;
  if (qword_1EDDE9218 != -1)
  {
    sub_1C4407C60(&qword_1EDDE9218);
  }

  v7 = sub_1C442B738(v3, qword_1EDE2CED0);
  swift_beginAccess();
  sub_1C4466EEC(v7, v6);
  v8 = type metadata accessor for Configuration(0);
  result = sub_1C44157D4(v6, 1, v8);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v10 = &v6[*(v8 + 20)];
    v11 = *v10;
    v12 = *(v10 + 1);
    sub_1C4467948(v6);
    if (qword_1EDDFEC88 != -1)
    {
      swift_once();
    }

    if ((xmmword_1EDDFEC90 & ~v11) == 0 && (*(&xmmword_1EDDFEC90 + 1) & v12) == *(&xmmword_1EDDFEC90 + 1))
    {
      if (qword_1EDDFA678 != -1)
      {
        sub_1C43FFCC0(&qword_1EDDFA678);
      }

      v20 = sub_1C4F00978();
      v21 = sub_1C43FEB44(v20, qword_1EDE2DCD8);
      v22 = sub_1C4F01CF8();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = sub_1C43FCED0();
        sub_1C43FBD24(v23);
        sub_1C440BAE8(&dword_1C43F8000, v24, v25, "SysdiagnoseXPC: service is in no-op mode.");
        sub_1C43FE9D4();
      }
    }

    else
    {
      v14 = sub_1C4425450();
      if (sub_1C446874C(v14, v15))
      {
        v16 = [objc_opt_self() interfaceWithProtocol_];
        sub_1C44059FC(v16, sel_setExportedInterface_);

        v17 = [objc_allocWithZone(type metadata accessor for SysdiagnoseXPC.Server()) init];
        sub_1C44059FC(v17, sel_setExportedObject_);

        v31 = sub_1C4B7EED8;
        v32 = 0;
        aBlock = MEMORY[0x1E69E9820];
        v28 = 1107296256;
        v29 = sub_1C4833DD0;
        v30 = &unk_1F43FEC88;
        v18 = _Block_copy(&aBlock);
        sub_1C44059FC(v18, sel_setInterruptionHandler_);
        _Block_release(v18);
        v31 = sub_1C4B7EEF8;
        v32 = 0;
        aBlock = MEMORY[0x1E69E9820];
        v28 = 1107296256;
        v29 = sub_1C4833DD0;
        v30 = &unk_1F43FECB0;
        v19 = _Block_copy(&aBlock);
        sub_1C44059FC(v19, sel_setInvalidationHandler_);
        _Block_release(v19);
        [a2 resume];
        return 1;
      }
    }

    return 0;
  }

  return result;
}

void sub_1C4B7EF18(uint8_t *a1, const char *a2)
{
  if (qword_1EDDFA678 != -1)
  {
    sub_1C43FFCC0(&qword_1EDDFA678);
  }

  v4 = sub_1C4F00978();
  oslog = sub_1C43FEB44(v4, qword_1EDE2DCD8);
  v5 = (a1)();
  if (os_log_type_enabled(oslog, v5))
  {
    v6 = sub_1C43FCED0();
    sub_1C43FBD24(v6);
    _os_log_impl(&dword_1C43F8000, oslog, v5, a2, a1, 2u);
    sub_1C43FE9D4();
  }
}

unint64_t sub_1C4B7F064()
{
  result = qword_1EC0C3F38;
  if (!qword_1EC0C3F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3F38);
  }

  return result;
}

unint64_t sub_1C4B7F0BC()
{
  result = qword_1EC0C3F40;
  if (!qword_1EC0C3F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3F40);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SysdiagnoseXPC.SysdiagnoseXPCError(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C4B7F258()
{
  sub_1C43FCF70();
  v0 = swift_task_alloc();
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v3 = sub_1C440E474(v1);

  return v4(v3);
}

uint64_t sub_1C4B7F2E8()
{
  sub_1C43FCF70();
  v0 = swift_task_alloc();
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v3 = sub_1C440E474(v1);

  return v4(v3);
}

uint64_t sub_1C4B7F378()
{
  sub_1C43FCF70();
  v0 = swift_task_alloc();
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v3 = sub_1C440E474(v1);

  return v4(v3);
}

uint64_t sub_1C4B7F408()
{
  sub_1C43FCF70();
  v0 = swift_task_alloc();
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v3 = sub_1C440E474(v1);

  return v4(v3);
}

uint64_t sub_1C4B7F498()
{
  sub_1C43FCF70();
  v0 = swift_task_alloc();
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v3 = sub_1C440E474(v1);

  return v4(v3);
}

uint64_t sub_1C4B7F528()
{
  sub_1C43FCF70();
  v0 = swift_task_alloc();
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  v3 = sub_1C440E474(v1);

  return v4(v3);
}

uint64_t sub_1C4B7F65C(uint64_t a1, uint64_t a2)
{
  v5 = sub_1C456902C(&qword_1EC0C3FC8, &qword_1C4F56A38);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16 - v9;
  v11 = a1 == 0x64695F6E656B6F74 && a2 == 0xE900000000000073;
  if (!v11 && (sub_1C4F02938() & 1) == 0)
  {
    return 0;
  }

  v12 = OBJC_IVAR____TtC24IntelligencePlatformCore24TaskClassifierModelInput_encoderCharInput;
  sub_1C4B7FA70(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore24TaskClassifierModelInput_encoderCharInput, v10);
  v13 = sub_1C456902C(&qword_1EC0C3FC0, &qword_1C4F56A00);
  v14 = sub_1C44157D4(v10, 1, v13);
  sub_1C4B7FAE0(v10);
  if (v14 == 1)
  {
    return 0;
  }

  sub_1C4B7FA70(v2 + v12, v7);
  result = sub_1C44157D4(v7, 1, v13);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1C4577DBC();
    return sub_1C4F01D08();
  }

  return result;
}

uint64_t sub_1C4B7F868()
{
  sub_1C4B7FAE0(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore24TaskClassifierModelInput_encoderCharInput);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TaskClassifierModelInput(uint64_t a1)
{
  result = qword_1EC0C3FA8;
  if (!qword_1EC0C3FA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C4B7F920(uint64_t a1)
{
  sub_1C4B7F9B0(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1C4B7F9B0(uint64_t a1)
{
  if (!qword_1EC0C3FB8)
  {
    sub_1C4572308(&qword_1EC0C3FC0, &qword_1C4F56A00);
    v1 = sub_1C4F01F48();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC0C3FB8);
    }
  }
}

uint64_t sub_1C4B7FA14()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1C4B7FA70(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0C3FC8, &qword_1C4F56A38);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C4B7FAE0(uint64_t a1)
{
  v2 = sub_1C456902C(&qword_1EC0C3FC8, &qword_1C4F56A38);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C4B7FBC0(uint64_t a1, uint64_t a2)
{
  v5 = sub_1C456902C(&qword_1EC0C3FC8, &qword_1C4F56A38);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16 - v9;
  v11 = a1 == 0x64695F6E656B6F74 && a2 == 0xE900000000000073;
  if (!v11 && (sub_1C4F02938() & 1) == 0)
  {
    return 0;
  }

  v12 = OBJC_IVAR____TtC24IntelligencePlatformCore23TaskExtractorModelInput_encoderCharInput;
  sub_1C4B7FA70(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore23TaskExtractorModelInput_encoderCharInput, v10);
  v13 = sub_1C456902C(&qword_1EC0C3FC0, &qword_1C4F56A00);
  v14 = sub_1C44157D4(v10, 1, v13);
  sub_1C4B7FAE0(v10);
  if (v14 == 1)
  {
    return 0;
  }

  sub_1C4B7FA70(v2 + v12, v7);
  result = sub_1C44157D4(v7, 1, v13);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1C4577DBC();
    return sub_1C4F01D08();
  }

  return result;
}

uint64_t sub_1C4B7FDCC()
{
  sub_1C4B7FAE0(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore23TaskExtractorModelInput_encoderCharInput);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TaskExtractorModelInput(uint64_t a1)
{
  result = qword_1EC0C3FD0;
  if (!qword_1EC0C3FD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4B7FEA8()
{

  return v0;
}

uint64_t sub_1C4B7FEF8()
{
  sub_1C4B7FEA8();

  return swift_deallocClassInstance();
}

uint64_t sub_1C4B7FFBC()
{
  sub_1C44CD9C0(0, 8, 0);
  v0 = 0;
  sub_1C440FC9C();
  sub_1C44337F4();
  sub_1C440D8E4();
  sub_1C4411270();
  sub_1C43FF688();
  sub_1C4409130();
  do
  {
    v11 = 0xE500000000000000;
    v12 = 0x68746E6F6DLL;
    switch(byte_1F43D2848[v0 + 32])
    {
      case 1:
        v12 = v5;
        v11 = v4;
        break;
      case 2:
        v12 = v7;
        v11 = v6;
        break;
      case 3:
        v11 = 0xEA0000000000646ELL;
        v12 = v8;
        break;
      case 4:
        v12 = v9;
        goto LABEL_10;
      case 5:
        v12 = v2;
        v11 = v10;
        break;
      case 6:
        v12 = v3;
LABEL_10:
        v11 = 0xEB00000000796164;
        break;
      case 7:
        v12 = 0xD000000000000017;
        v11 = 0x80000001C4F91710;
        break;
      default:
        break;
    }

    v17 = v1;
    v14 = *(v1 + 16);
    v13 = *(v1 + 24);
    if (v14 >= v13 >> 1)
    {
      sub_1C44CD9C0(v13 > 1, v14 + 1, 1);
      sub_1C4409130();
      sub_1C43FF688();
      sub_1C4411270();
      sub_1C440D8E4();
      sub_1C44337F4();
      sub_1C440FC9C();
      v4 = 0xEC00000068746E6FLL;
      v1 = v17;
    }

    ++v0;
    *(v1 + 16) = v14 + 1;
    v15 = v1 + 16 * v14;
    *(v15 + 32) = v12;
    *(v15 + 40) = v11;
  }

  while (v0 != 8);

  return sub_1C4499940();
}

uint64_t sub_1C4B801B4@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for DateFetcher(0);
  v4 = sub_1C43FBD18(v3);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FBCC4();
  v7 = v6 - v5;
  v8 = OBJC_IVAR____TtC24IntelligencePlatformCore17TimeAndDateSignal_dateFetcher;
  swift_beginAccess();
  sub_1C4B81684(v1 + v8, v7);
  v9 = sub_1C4EF9CD8();
  return (*(*(v9 - 8) + 32))(a1, v7, v9);
}

uint64_t sub_1C4B80280()
{
  v0 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v21 - v7;
  v9 = sub_1C4EF9F88();
  sub_1C43FCDF8();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBCC4();
  v15 = v14 - v13;
  sub_1C4407C80();
  v18 = sub_1C4B80440(v16, v17);
  sub_1C4EF9F58();
  if (v18 > 17)
  {
    sub_1C4B801B4(v5);
    sub_1C4EF9B38();
  }

  else
  {
    sub_1C4B801B4(v8);
  }

  v19 = sub_1C4EF9EC8();
  (*(v2 + 8))(v8, v0);
  (*(v11 + 8))(v15, v9);
  return v19 & 1;
}

uint64_t sub_1C4B80440(unsigned int *a1, uint64_t (*a2)(uint64_t))
{
  v25 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FBCC4();
  v7 = v6 - v5;
  v23 = sub_1C4EF9648();
  sub_1C43FCDF8();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBCC4();
  v13 = v12 - v11;
  sub_1C456902C(&unk_1EC0BAD80, qword_1C4F16920);
  v14 = sub_1C4EF9F68();
  sub_1C43FCDF8();
  v16 = v15;
  v17 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1C4F0D130;
  (*(v16 + 104))(v18 + v17, *a1, v14);
  sub_1C4D51F7C();
  sub_1C4B801B4(v7);
  sub_1C4EF9EA8();

  v19 = (*(v3 + 8))(v7, v25);
  result = a2(v19);
  if (v21)
  {
    __break(1u);
  }

  else
  {
    v22 = result;
    (*(v9 + 8))(v13, v23);
    return v22;
  }

  return result;
}

uint64_t sub_1C4B80684()
{
  sub_1C4407C80();
  v2 = sub_1C4B80440(v0, v1);
  if ((v2 - 13) > 0xFFFFFFFFFFFFFFF9)
  {
    return 0;
  }

  if ((v2 - 13) < 4)
  {
    return 1;
  }

  if ((v2 - 17) < 3)
  {
    return 2;
  }

  return 3;
}

uint64_t sub_1C4B806DC(uint64_t a1)
{
  v3 = type metadata accessor for DateFetcher(0);
  v4 = sub_1C43FBD18(v3);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FBCC4();
  v7 = v6 - v5;
  v8 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v9 = sub_1C43FBD18(v8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v41 - v10;
  v12 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FBCC4();
  v18 = (v17 - v16);
  sub_1C4467FE0(a1, v11);
  if (sub_1C44157D4(v11, 1, v12) == 1)
  {
    sub_1C44686E4(v11);
  }

  else
  {
    v19 = *(v14 + 32);
    v19(v18, v11, v12);
    v19(v7, v18, v12);
    v20 = OBJC_IVAR____TtC24IntelligencePlatformCore17TimeAndDateSignal_dateFetcher;
    swift_beginAccess();
    sub_1C4B8145C(v7, v1 + v20);
    swift_endAccess();
  }

  sub_1C456902C(&unk_1EC0C65C0, &qword_1C4F0D1F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F3B920;
  *(inited + 32) = 0x68746E6F6DLL;
  *(inited + 40) = 0xE500000000000000;
  sub_1C4413894();
  v24 = sub_1C4B80440(v22, v23);
  v25 = objc_opt_self();
  *(inited + 48) = [v25 featureValueWithInt64_];
  strcpy((inited + 56), "day_of_month");
  *(inited + 69) = 0;
  *(inited + 70) = -5120;
  sub_1C4412608();
  v28 = sub_1C4B80440(v26, v27);
  *(inited + 72) = sub_1C4400F4C(v28);
  *(inited + 80) = 0x775F666F5F796164;
  *(inited + 88) = 0xEB000000006B6565;
  sub_1C440B414();
  v31 = sub_1C4B80440(v29, v30);
  *(inited + 96) = sub_1C4400F4C(v31);
  *(inited + 104) = 0x656B6565775F7369;
  *(inited + 112) = 0xEA0000000000646ELL;
  v32 = sub_1C4B80280();
  *(inited + 120) = sub_1C4400F4C(v32);
  *(inited + 128) = 0x5F666F5F72756F68;
  *(inited + 136) = 0xEB00000000796164;
  sub_1C4407C80();
  v35 = sub_1C4B80440(v33, v34);
  *(inited + 144) = sub_1C4400F4C(v35);
  *(inited + 152) = 0x685F666F5F6E696DLL;
  *(inited + 160) = 0xEB0000000072756FLL;
  v36 = MEMORY[0x1E6969A88];
  v37 = MEMORY[0x1E6968258];
  v38 = sub_1C4B80440(MEMORY[0x1E6969A88], MEMORY[0x1E6968258]);
  *(inited + 168) = sub_1C4400F4C(v38);
  *(inited + 176) = 0x5F666F5F74726170;
  *(inited + 184) = 0xEB00000000796164;
  v39 = sub_1C4B80684();
  *(inited + 192) = sub_1C4400F4C(v39);
  *(inited + 200) = 0xD000000000000017;
  *(inited + 208) = 0x80000001C4F91710;
  *(inited + 216) = [v25 featureValueWithInt64_];
  sub_1C4577DBC();
  return sub_1C4F00F28();
}

void sub_1C4B80AF0(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v43 = a1;
  v5 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v6 = sub_1C43FBD18(v5);
  MEMORY[0x1EEE9AC00](v6);
  v42 = &v33 - v7;
  v38 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBCC4();
  v39 = v12 - v11;
  type metadata accessor for FeatureProviderSnapshot(0);
  sub_1C43FCDF8();
  v40 = v14;
  v41 = v13;
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBCC4();
  v45 = v16 - v15;
  v17 = *(a2 + 16);
  v18 = MEMORY[0x1E69E7CC0];
  if (v17)
  {
    v33 = a3;
    v46 = MEMORY[0x1E69E7CC0];
    sub_1C459D0A8();
    v18 = v46;
    v20 = *(v9 + 16);
    v19 = v9 + 16;
    v21 = a2 + ((*(v19 + 64) + 32) & ~*(v19 + 64));
    v35 = *(v19 + 56);
    v36 = v20;
    v34 = (v19 - 8);
    v22 = v45;
    v37 = v19;
    do
    {
      v44 = v18;
      v23 = v38;
      v24 = v39;
      v25 = v36;
      v36(v39, v21, v38);
      v25(v22, v24, v23);
      v26 = v42;
      v25(v42, v24, v23);
      sub_1C440BAA8(v26, 0, 1, v23);
      v27 = sub_1C4B806DC(v26);
      sub_1C44686E4(v26);
      v28 = v43;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4B814C0(v27, v28);

      sub_1C465CF34();
      v30 = v29;

      v31 = v23;
      v18 = v44;
      (*v34)(v24, v31);
      *(v45 + *(v41 + 20)) = v30;
      v22 = v45;
      v46 = v18;
      v32 = *(v18 + 16);
      if (v32 >= *(v18 + 24) >> 1)
      {
        sub_1C459D0A8();
        v22 = v45;
        v18 = v46;
      }

      *(v18 + 16) = v32 + 1;
      sub_1C4586A54(v22, v18 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v32);
      v21 += v35;
      --v17;
    }

    while (v17);
    a3 = v33;
  }

  *a3 = v18;
}

uint64_t sub_1C4B80E38()
{
  v0 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v1 = sub_1C43FBD18(v0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v7 - v2;
  v4 = sub_1C4EF9CD8();
  sub_1C440BAA8(v3, 1, 1, v4);
  v5 = sub_1C4B806DC(v3);
  sub_1C44686E4(v3);
  return v5;
}

id sub_1C4B80ED4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x68746E6F6DLL && a2 == 0xE500000000000000;
  if (v3 || (sub_1C43FD4D8(0x68746E6F6DLL, 0xE500000000000000) & 1) != 0)
  {
    v5 = MEMORY[0x1E6969A78];
    v6 = MEMORY[0x1E6968248];
LABEL_7:
    v7 = sub_1C4B80440(v5, v6);
LABEL_8:
    v8 = v7;
    return [objc_opt_self() featureValueWithInt64_];
  }

  v10 = sub_1C44178A0();
  v12 = a1 == v10 && a2 == v11;
  if (v12 || (sub_1C43FD4D8(v10, v11) & 1) != 0)
  {
    v5 = MEMORY[0x1E6969A48];
    v6 = MEMORY[0x1E6968210];
    goto LABEL_7;
  }

  v13 = sub_1C4403840();
  v15 = a1 == v13 && a2 == v14;
  if (v15 || (sub_1C43FD4D8(v13, v14) & 1) != 0)
  {
    v5 = MEMORY[0x1E6969AB0];
    v6 = MEMORY[0x1E6968270];
    goto LABEL_7;
  }

  v16 = a1 == 0x656B6565775F7369 && a2 == 0xEA0000000000646ELL;
  if (v16 || (sub_1C43FD4D8(0x656B6565775F7369, 0xEA0000000000646ELL) & 1) != 0)
  {
    v7 = sub_1C4B80280();
    goto LABEL_8;
  }

  v17 = a1 == 0x5F666F5F72756F68 && a2 == 0xEB00000000796164;
  if (v17 || (sub_1C43FD4D8(0x5F666F5F72756F68, 0xEB00000000796164) & 1) != 0)
  {
    v5 = MEMORY[0x1E6969A58];
    v6 = MEMORY[0x1E6968228];
    goto LABEL_7;
  }

  v18 = sub_1C440E838();
  v20 = a1 == v18 && a2 == v19;
  if (v20 || (sub_1C43FD4D8(v18, v19) & 1) != 0)
  {
    v5 = MEMORY[0x1E6969A88];
    v6 = MEMORY[0x1E6968258];
    goto LABEL_7;
  }

  v21 = a1 == 0x5F666F5F74726170 && a2 == 0xEB00000000796164;
  if (v21 || (sub_1C43FD4D8(0x5F666F5F74726170, 0xEB00000000796164) & 1) != 0)
  {
    v7 = sub_1C4B80684();
    goto LABEL_8;
  }

  v22 = a1 == 0xD000000000000017 && 0x80000001C4F91710 == a2;
  if (v22 || (sub_1C43FD4D8(0xD000000000000017, 0x80000001C4F91710) & 1) != 0)
  {
    sub_1C4432B10();
    v8 = sub_1C4B80440(v23, v24) / 5;
    return [objc_opt_self() featureValueWithInt64_];
  }

  return 0;
}

uint64_t sub_1C4B81194()
{
  sub_1C4B816E8(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore17TimeAndDateSignal_dateFetcher);
  v1 = OBJC_IVAR____TtC24IntelligencePlatformCore17TimeAndDateSignal_calendar;
  v2 = sub_1C4EF9F88();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TimeAndDateSignal(uint64_t a1)
{
  result = qword_1EC0C3FE0;
  if (!qword_1EC0C3FE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4B81294(uint64_t a1)
{
  result = sub_1C4EF9CD8();
  if (v2 <= 0x3F)
  {
    result = sub_1C4EF9F88();
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

unint64_t sub_1C4B813DC(uint64_t a1)
{
  result = sub_1C4B81404();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1C4B81404()
{
  result = qword_1EC0C3FF0;
  if (!qword_1EC0C3FF0)
  {
    type metadata accessor for TimeAndDateSignal(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3FF0);
  }

  return result;
}

uint64_t sub_1C4B8145C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DateFetcher(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

_BYTE *sub_1C4B814C0(_BYTE *a1, uint64_t a2)
{
  v4 = a1;
  v17[1] = *MEMORY[0x1E69E9840];
  v5 = a1[32];
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v16 = swift_slowAlloc();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v4 = sub_1C45867F0(v16, v7, v4, a2);
      MEMORY[0x1C6942830](v16, -1, -1);
      swift_bridgeObjectRelease_n();
      goto LABEL_6;
    }
  }

  MEMORY[0x1EEE9AC00](v8);
  v9 = v17 - ((8 * v7 + 15) & 0x3FFFFFFFFFFFFFF0);
  sub_1C4501018(0, v7, v9);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4586AB8(v9, v7, v4, a2, v10, v11, v12, v13);
  if (v2)
  {
    swift_willThrow();
  }

  else
  {
    v4 = v14;
  }

  swift_bridgeObjectRelease_n();
LABEL_6:

  return v4;
}

uint64_t sub_1C4B81684(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DateFetcher(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C4B816E8(uint64_t a1)
{
  v2 = type metadata accessor for DateFetcher(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C4B817BC(uint64_t a1, uint64_t a2)
{
  v5 = sub_1C456902C(&qword_1EC0C3FC8, &qword_1C4F56A38);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16 - v9;
  v11 = a1 == 0x64695F6E656B6F74 && a2 == 0xE900000000000073;
  if (!v11 && (sub_1C4F02938() & 1) == 0)
  {
    return 0;
  }

  v12 = OBJC_IVAR____TtC24IntelligencePlatformCore23ToolSuggesterModelInput_encoderCharInput;
  sub_1C4B7FA70(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore23ToolSuggesterModelInput_encoderCharInput, v10);
  v13 = sub_1C456902C(&qword_1EC0C3FC0, &qword_1C4F56A00);
  v14 = sub_1C44157D4(v10, 1, v13);
  sub_1C4B7FAE0(v10);
  if (v14 == 1)
  {
    return 0;
  }

  sub_1C4B7FA70(v2 + v12, v7);
  result = sub_1C44157D4(v7, 1, v13);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1C4577DBC();
    return sub_1C4F01D08();
  }

  return result;
}

uint64_t sub_1C4B819C8()
{
  sub_1C4B7FAE0(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore23ToolSuggesterModelInput_encoderCharInput);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ToolSuggesterModelInput(uint64_t a1)
{
  result = qword_1EC0C3FF8;
  if (!qword_1EC0C3FF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4B81AA8()
{
  sub_1C4B81A80();

  return swift_deallocClassInstance();
}

uint64_t TopicMatcher.init(stores:source:pipelineType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a3;
  v8 = type metadata accessor for TopicMatcher(0);
  *(a4 + v8[7]) = 1056964608;
  *(a4 + v8[8]) = 2;
  sub_1C4EFD4A8();
  sub_1C440053C();
  sub_1C448566C(a1, a4);
  sub_1C43FD90C();
  result = sub_1C448566C(a2, a4 + v9);
  *(a4 + v8[6]) = v7;
  return result;
}

float sub_1C4B81B98(uint64_t a1, uint64_t a2)
{
  v209 = sub_1C4EFEEF8();
  v189 = *(v209 - 8);
  MEMORY[0x1EEE9AC00](v209);
  v205 = &v185 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v204 = &v185 - v6;
  v7 = type metadata accessor for EntityTriple(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v202 = &v185 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v199 = &v185 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v197 = &v185 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v200 = &v185 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v206 = &v185 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v201 = &v185 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v208 = &v185 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v207 = &v185 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v190 = &v185 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v203 = &v185 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v198 = &v185 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v192 = &v185 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v193 = &v185 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v185 - v35;
  MEMORY[0x1EEE9AC00](v37);
  v195 = &v185 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v185 - v40;
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v185 - v43;
  v45 = sub_1C456902C(&qword_1EC0BA590, &qword_1C4F1F430);
  MEMORY[0x1EEE9AC00](v45 - 8);
  v186 = &v185 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v47);
  v191 = &v185 - v48;
  MEMORY[0x1EEE9AC00](v49);
  v187 = &v185 - v50;
  MEMORY[0x1EEE9AC00](v51);
  v194 = &v185 - v52;
  MEMORY[0x1EEE9AC00](v53);
  v188 = &v185 - v54;
  MEMORY[0x1EEE9AC00](v55);
  v196 = &v185 - v56;
  v57 = 0;
  v58 = *(a1 + 16);
  v211 = a1;
  v212 = v58;
  v59 = MEMORY[0x1E69E7CC0];
  v210 = v7;
  while (v212 != v57)
  {
    v60 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v61 = *(v8 + 72);
    sub_1C44718CC(v211 + v60 + v61 * v57, v44);
    if (sub_1C4F013E8())
    {
      sub_1C448566C(v44, v202);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v215 = v59;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1C459DCC0();
        v59 = v215;
      }

      v63 = *(v59 + 16);
      v64 = v63 + 1;
      if (v63 >= *(v59 + 24) >> 1)
      {
        v185 = v63 + 1;
        sub_1C459DCC0();
        v64 = v185;
        v59 = v215;
      }

      ++v57;
      *(v59 + 16) = v64;
      sub_1C448566C(v202, v59 + v60 + v63 * v61);
      v7 = v210;
    }

    else
    {
      sub_1C44DBD5C(v44, type metadata accessor for EntityTriple);
      ++v57;
    }
  }

  v65 = v196;
  sub_1C44D0BD8(v59, v196);

  if (sub_1C44157D4(v65, 1, v7) == 1)
  {
    goto LABEL_22;
  }

  v66 = (v65 + *(v7 + 32));
  v67 = v66[1];
  v185 = *v66;
  v202 = v67;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C44DBD5C(v65, type metadata accessor for EntityTriple);
  v68 = 0;
  v69 = *(a2 + 16);
  v70 = MEMORY[0x1E69E7CC0];
  while (v69 != v68)
  {
    v71 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v72 = *(v8 + 72);
    sub_1C44718CC(a2 + v71 + v72 * v68, v41);
    if (sub_1C4F013E8())
    {
      sub_1C448566C(v41, v195);
      v73 = swift_isUniquelyReferenced_nonNull_native();
      v215 = v70;
      if ((v73 & 1) == 0)
      {
        sub_1C459DCC0();
        v70 = v215;
      }

      v74 = *(v70 + 16);
      v75 = v74 + 1;
      if (v74 >= *(v70 + 24) >> 1)
      {
        v196 = v74 + 1;
        sub_1C459DCC0();
        v75 = v196;
        v70 = v215;
      }

      ++v68;
      *(v70 + 16) = v75;
      sub_1C448566C(v195, v70 + v71 + v74 * v72);
      v7 = v210;
    }

    else
    {
      sub_1C44DBD5C(v41, type metadata accessor for EntityTriple);
      ++v68;
    }
  }

  v65 = v188;
  sub_1C44D0BD8(v70, v188);

  if (sub_1C44157D4(v65, 1, v7) == 1)
  {

LABEL_22:
    sub_1C4420C3C(v65, &qword_1EC0BA590, &qword_1C4F1F430);
    goto LABEL_23;
  }

  v136 = (v65 + *(v7 + 32));
  v138 = *v136;
  v137 = v136[1];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C44DBD5C(v65, type metadata accessor for EntityTriple);
  if (v185 == v138 && v202 == v137)
  {
    goto LABEL_137;
  }

  v140 = sub_1C4F02938();

  result = 1.0;
  if (v140)
  {
    return result;
  }

LABEL_23:
  v76 = 0;
  v77 = MEMORY[0x1E69E7CC0];
  while (v212 != v76)
  {
    v78 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v79 = *(v8 + 72);
    sub_1C44718CC(v211 + v78 + v79 * v76, v36);
    if (sub_1C4F013E8())
    {
      sub_1C448566C(v36, v199);
      v80 = swift_isUniquelyReferenced_nonNull_native();
      v215 = v77;
      if ((v80 & 1) == 0)
      {
        sub_1C459DCC0();
        v77 = v215;
      }

      v81 = *(v77 + 16);
      if (v81 >= *(v77 + 24) >> 1)
      {
        sub_1C459DCC0();
        v77 = v215;
      }

      ++v76;
      *(v77 + 16) = v81 + 1;
      sub_1C448566C(v199, v77 + v78 + v81 * v79);
      v7 = v210;
    }

    else
    {
      sub_1C44DBD5C(v36, type metadata accessor for EntityTriple);
      ++v76;
    }
  }

  v82 = v194;
  sub_1C44D0BD8(v77, v194);

  if (sub_1C44157D4(v82, 1, v7) == 1)
  {
    goto LABEL_45;
  }

  v83 = (v82 + *(v7 + 32));
  v84 = v83[1];
  v202 = *v83;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C44DBD5C(v82, type metadata accessor for EntityTriple);
  v85 = 0;
  v86 = *(a2 + 16);
  v87 = MEMORY[0x1E69E7CC0];
LABEL_34:
  v88 = v193;
  while (v86 != v85)
  {
    v89 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v90 = *(v8 + 72);
    sub_1C44718CC(a2 + v89 + v90 * v85, v88);
    if (sub_1C4F013E8())
    {
      sub_1C448566C(v88, v192);
      v91 = swift_isUniquelyReferenced_nonNull_native();
      v215 = v87;
      if ((v91 & 1) == 0)
      {
        sub_1C459DCC0();
        v87 = v215;
      }

      v92 = *(v87 + 16);
      if (v92 >= *(v87 + 24) >> 1)
      {
        sub_1C459DCC0();
        v87 = v215;
      }

      ++v85;
      *(v87 + 16) = v92 + 1;
      sub_1C448566C(v192, v87 + v89 + v92 * v90);
      v7 = v210;
      goto LABEL_34;
    }

    sub_1C44DBD5C(v88, type metadata accessor for EntityTriple);
    ++v85;
  }

  v82 = v187;
  sub_1C44D0BD8(v87, v187);

  if (sub_1C44157D4(v82, 1, v7) == 1)
  {

LABEL_45:
    sub_1C4420C3C(v82, &qword_1EC0BA590, &qword_1C4F1F430);
    goto LABEL_46;
  }

  v142 = (v82 + *(v7 + 32));
  v144 = *v142;
  v143 = v142[1];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C44DBD5C(v82, type metadata accessor for EntityTriple);
  if (v202 == v144 && v84 == v143)
  {
    goto LABEL_137;
  }

  v146 = sub_1C4F02938();

  result = 1.0;
  if (v146)
  {
    return result;
  }

LABEL_46:
  v93 = 0;
  v94 = MEMORY[0x1E69E7CC0];
LABEL_47:
  v95 = v198;
  while (v212 != v93)
  {
    v96 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v97 = *(v8 + 72);
    sub_1C44718CC(v211 + v96 + v97 * v93, v95);
    if (sub_1C4F013E8())
    {
      sub_1C448566C(v95, v197);
      v98 = swift_isUniquelyReferenced_nonNull_native();
      v215 = v94;
      if ((v98 & 1) == 0)
      {
        sub_1C459DCC0();
        v94 = v215;
      }

      v99 = *(v94 + 16);
      if (v99 >= *(v94 + 24) >> 1)
      {
        sub_1C459DCC0();
        v94 = v215;
      }

      ++v93;
      *(v94 + 16) = v99 + 1;
      sub_1C448566C(v197, v94 + v96 + v99 * v97);
      v7 = v210;
      goto LABEL_47;
    }

    sub_1C44DBD5C(v95, type metadata accessor for EntityTriple);
    ++v93;
  }

  v100 = v191;
  sub_1C44D0BD8(v94, v191);

  if (sub_1C44157D4(v100, 1, v7) == 1)
  {
    goto LABEL_68;
  }

  v101 = (v100 + *(v7 + 32));
  v102 = v101[1];
  v202 = *v101;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C44DBD5C(v100, type metadata accessor for EntityTriple);
  v103 = 0;
  v104 = *(a2 + 16);
  v105 = MEMORY[0x1E69E7CC0];
  while (v104 != v103)
  {
    v106 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v107 = *(v8 + 72);
    v108 = v203;
    sub_1C44718CC(a2 + v106 + v107 * v103, v203);
    if (sub_1C4F013E8())
    {
      sub_1C448566C(v108, v190);
      v109 = swift_isUniquelyReferenced_nonNull_native();
      v215 = v105;
      if ((v109 & 1) == 0)
      {
        sub_1C459DCC0();
        v105 = v215;
      }

      v110 = *(v105 + 16);
      if (v110 >= *(v105 + 24) >> 1)
      {
        sub_1C459DCC0();
        v105 = v215;
      }

      ++v103;
      *(v105 + 16) = v110 + 1;
      sub_1C448566C(v190, v105 + v106 + v110 * v107);
      v7 = v210;
    }

    else
    {
      sub_1C44DBD5C(v108, type metadata accessor for EntityTriple);
      ++v103;
    }
  }

  v100 = v186;
  sub_1C44D0BD8(v105, v186);

  if (sub_1C44157D4(v100, 1, v7) != 1)
  {
    v180 = (v100 + *(v7 + 32));
    v182 = *v180;
    v181 = v180[1];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C44DBD5C(v100, type metadata accessor for EntityTriple);
    if (v202 != v182 || v102 != v181)
    {
      v184 = sub_1C4F02938();

      result = 1.0;
      if (v184)
      {
        return result;
      }

      goto LABEL_69;
    }

LABEL_137:

    return 1.0;
  }

LABEL_68:
  sub_1C4420C3C(v100, &qword_1EC0BA590, &qword_1C4F1F430);
LABEL_69:
  v203 = a2;
  v111 = 0;
  v112 = (v189 + 8);
  v202 = MEMORY[0x1E69E7CC0];
LABEL_70:
  v113 = v204;
  while (v212 != v111)
  {
    v114 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v115 = *(v8 + 72);
    sub_1C44718CC(v211 + v114 + v115 * v111, v207);
    sub_1C4EFED48();
    sub_1C4B86488(&off_1EDDFCCA8, MEMORY[0x1E69A9748], MEMORY[0x1E69A9770]);
    v116 = v209;
    sub_1C4F01578();
    sub_1C4F01578();
    if (v215 == v213 && v216 == v214)
    {
      (*v112)(v113, v116);
    }

    else
    {
      v118 = sub_1C4F02938();
      v119 = v113;
      v120 = v118;
      (*v112)(v119, v116);

      if ((v120 & 1) == 0)
      {
        sub_1C44DBD5C(v207, type metadata accessor for EntityTriple);
        ++v111;
        goto LABEL_70;
      }
    }

    sub_1C448566C(v207, v200);
    v121 = v202;
    v122 = swift_isUniquelyReferenced_nonNull_native();
    v217 = v121;
    if ((v122 & 1) == 0)
    {
      sub_1C459DCC0();
      v121 = v217;
    }

    v113 = v204;
    v123 = *(v121 + 16);
    if (v123 >= *(v121 + 24) >> 1)
    {
      sub_1C459DCC0();
      v121 = v217;
    }

    ++v111;
    *(v121 + 16) = v123 + 1;
    v202 = v121;
    sub_1C448566C(v200, v121 + v114 + v123 * v115);
  }

  v124 = *(v202 + 16);
  if (v124)
  {
    v215 = MEMORY[0x1E69E7CC0];
    v125 = v202;
    sub_1C44CD9C0(0, v124, 0);
    v126 = v215;
    v127 = v125 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v128 = *(v8 + 72);
    do
    {
      v129 = v206;
      sub_1C44718CC(v127, v206);
      v130 = (v129 + *(v210 + 32));
      v132 = *v130;
      v131 = v130[1];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C44DBD5C(v129, type metadata accessor for EntityTriple);
      v215 = v126;
      v134 = *(v126 + 16);
      v133 = *(v126 + 24);
      if (v134 >= v133 >> 1)
      {
        sub_1C44CD9C0(v133 > 1, v134 + 1, 1);
        v126 = v215;
      }

      *(v126 + 16) = v134 + 1;
      v135 = v126 + 16 * v134;
      *(v135 + 32) = v132;
      *(v135 + 40) = v131;
      v127 += v128;
      --v124;
    }

    while (v124);
  }

  v207 = sub_1C4499940();
  v147 = 0;
  v148 = v203;
  v212 = *(v203 + 16);
  v211 = MEMORY[0x1E69E7CC0];
LABEL_104:
  v149 = v205;
  while (v212 != v147)
  {
    v150 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v151 = *(v8 + 72);
    sub_1C44718CC(v148 + v150 + v151 * v147, v208);
    sub_1C4EFED48();
    sub_1C4B86488(&off_1EDDFCCA8, MEMORY[0x1E69A9748], MEMORY[0x1E69A9770]);
    v152 = v209;
    sub_1C4F01578();
    sub_1C4F01578();
    if (v215 == v213 && v216 == v214)
    {
      (*v112)(v149, v152);
    }

    else
    {
      v154 = sub_1C4F02938();
      (*v112)(v149, v152);

      if ((v154 & 1) == 0)
      {
        sub_1C44DBD5C(v208, type metadata accessor for EntityTriple);
        ++v147;
        v148 = v203;
        goto LABEL_104;
      }
    }

    sub_1C448566C(v208, v201);
    v155 = v211;
    v156 = swift_isUniquelyReferenced_nonNull_native();
    v217 = v155;
    v148 = v203;
    if ((v156 & 1) == 0)
    {
      sub_1C459DCC0();
      v155 = v217;
    }

    v149 = v205;
    v157 = *(v155 + 16);
    if (v157 >= *(v155 + 24) >> 1)
    {
      sub_1C459DCC0();
      v149 = v205;
      v155 = v217;
    }

    ++v147;
    *(v155 + 16) = v157 + 1;
    v211 = v155;
    sub_1C448566C(v201, v155 + v150 + v157 * v151);
  }

  v158 = v211;
  v159 = *(v211 + 16);
  if (v159)
  {
    v215 = MEMORY[0x1E69E7CC0];
    sub_1C44CD9C0(0, v159, 0);
    v160 = v215;
    v161 = v158 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v162 = *(v8 + 72);
    v163 = v207;
    do
    {
      v164 = v206;
      sub_1C44718CC(v161, v206);
      v165 = (v164 + *(v210 + 32));
      v166 = *v165;
      v167 = v165[1];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C44DBD5C(v164, type metadata accessor for EntityTriple);
      v215 = v160;
      v169 = *(v160 + 16);
      v168 = *(v160 + 24);
      if (v169 >= v168 >> 1)
      {
        sub_1C44CD9C0(v168 > 1, v169 + 1, 1);
        v160 = v215;
      }

      *(v160 + 16) = v169 + 1;
      v170 = v160 + 16 * v169;
      *(v170 + 32) = v166;
      *(v170 + 40) = v167;
      v161 += v162;
      --v159;
    }

    while (v159);
  }

  else
  {

    v163 = v207;
  }

  v177 = sub_1C4499940();
  if (*(v163 + 16))
  {
    sub_1C4839FD8(v163, v177, v171, v172, v173, v174, v175, v176, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206);
    v179 = v178;

    result = 0.0;
    if (v179)
    {
      return 1.0;
    }
  }

  else
  {

    return 0.0;
  }

  return result;
}