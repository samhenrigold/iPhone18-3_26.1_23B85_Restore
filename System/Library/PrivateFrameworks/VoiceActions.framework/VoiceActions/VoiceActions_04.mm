id sub_27223D428()
{
  v1 = v0;
  sub_2721F065C(&qword_280881EA0, &qword_27237DEB8);
  v2 = *v0;
  v3 = sub_2723783CC();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_2722041FC(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_27221981C(v19, (*(v4 + 56) + 32 * v17));
        result = v18;
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

unint64_t sub_27223D5A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2721F065C(&qword_280881EA8, &qword_27237DEC0);
    v3 = sub_2723783EC();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_27220038C(v5, v6);
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

void *sub_27223D6AC(uint64_t a1, uint64_t a2)
{
  v2 = sub_27237788C();
  isa = v2[-1].isa;
  v62 = v2;
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = sub_27237728C();
  v64 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  v60 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v59 - v9;
  v11 = sub_2723777FC();
  v12 = [v11 stringByDeletingPathExtension];

  v13 = sub_27237782C();
  v15 = v14;

  v16 = sub_2723777FC();
  v17 = [v16 pathExtension];

  v18 = sub_27237782C();
  v20 = v19;

  sub_2722560E0(v13, v15, v18, v20);
  v22 = v21;
  v24 = v23;

  if (v24)
  {
    v25 = [objc_opt_self() defaultManager];
    v26 = sub_2723777FC();
    v27 = [v25 fileExistsAtPath_];

    v28 = v64;
    if ((v27 & 1) == 0)
    {
      v29 = sub_2722C389C();
      (*(v28 + 16))(v10, v29, v6);

      v30 = sub_27237725C();
      v31 = sub_272377E8C();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v59 = v6;
        v34 = v33;
        v65 = v33;
        *v32 = 136315138;
        *(v32 + 4) = sub_2721FFD04(v22, v24, &v65);
        _os_log_impl(&dword_2721E4000, v30, v31, "Invalid lexicon file, doesn't exist: %s", v32, 0xCu);
        sub_2722039C8(v34);
        v35 = v34;
        v6 = v59;
        MEMORY[0x2743C69C0](v35, -1, -1);
        MEMORY[0x2743C69C0](v32, -1, -1);

        v36 = v64;
      }

      else
      {

        v36 = v28;
      }

      (*(v36 + 8))(v10, v6);
    }

    sub_27237787C();
    v38 = v63;
    sub_2723777EC();
    v13 = v38;
    if (v38)
    {

LABEL_13:
      v65 = 0;
      v66 = 0xE000000000000000;
      sub_27237820C();
      MEMORY[0x2743C4AD0](0xD000000000000017, 0x800000027238A660);
      v67 = v13;
      sub_2721F065C(&qword_280881A38, &unk_27237CA20);
      sub_27237836C();
      v45 = v65;
      v46 = v66;
      sub_2722032B4();
      swift_allocError();
      *v47 = v45;
      v47[1] = v46;
      swift_willThrow();

      return v13;
    }

    sub_27237787C();
    v39 = sub_27237783C();
    v41 = v40;

    (*(isa + 1))(v5, v62);
    if (v41 >> 60 == 15)
    {
      v65 = 0;
      v66 = 0xE000000000000000;
      sub_27237820C();

      v65 = 0xD00000000000001DLL;
      v66 = 0x800000027238A680;
      MEMORY[0x2743C4AD0](v22, v24);

      v42 = v65;
      v43 = v66;
      sub_2722032B4();
      v13 = swift_allocError();
      *v44 = v42;
      v44[1] = v43;
      swift_willThrow();
      goto LABEL_13;
    }

    v59 = v6;
    sub_272376ABC();
    swift_allocObject();
    sub_272376AAC();
    sub_2721F065C(&qword_280881EB0, &qword_27237DEC8);
    sub_27223EEA0();
    sub_272376A9C();
    v13 = v65;
    v49 = sub_2722C389C();
    (*(v64 + 16))(v60, v49, v59);

    v50 = sub_27237725C();
    v51 = sub_272377E7C();

    LODWORD(v63) = v51;
    v52 = v51;
    v53 = v50;
    if (os_log_type_enabled(v50, v52))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v62 = v53;
      v56 = v55;
      v65 = v55;
      *v54 = 136315138;
      v57 = sub_2721FFD04(v22, v24, &v65);

      *(v54 + 4) = v57;
      v58 = v62;
      _os_log_impl(&dword_2721E4000, v62, v63, "Loaded lexicon from %s", v54, 0xCu);
      sub_2722039C8(v56);
      MEMORY[0x2743C69C0](v56, -1, -1);
      MEMORY[0x2743C69C0](v54, -1, -1);

      sub_2721F05B4(v39, v41);
    }

    else
    {

      sub_2721F05B4(v39, v41);
    }

    (*(v64 + 8))(v60, v59);
  }

  else
  {
    sub_2722032B4();
    swift_allocError();
    *v37 = 0xD00000000000001ELL;
    v37[1] = 0x800000027238A640;
    swift_willThrow();
  }

  return v13;
}

void sub_27223DE44()
{
  v0 = sub_27237728C();
  v38 = *(v0 - 8);
  v39 = v0;
  MEMORY[0x28223BE20](v0);
  v40 = &v36 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_27237788C();
  v41 = *(v2 - 8);
  v42 = v2;
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = objc_opt_self();
  v7 = [v6 defaultManager];
  if (qword_280887540 != -1)
  {
    swift_once();
  }

  v8 = xmmword_280887548;
  v9 = sub_2723777FC();
  v10 = [v7 fileExistsAtPath_];

  if (v10)
  {
    v11 = [v6 defaultManager];
    v12 = sub_2723777FC();
    v13 = [v11 isReadableFileAtPath_];

    if ((v13 & 1) == 0)
    {
      v44 = 0;
      v45 = 0xE000000000000000;
      sub_27237820C();

      v44 = 0xD000000000000026;
      v45 = 0x800000027238A5C0;
      MEMORY[0x2743C4AD0](v8, *(&v8 + 1));
      v20 = v44;
      v21 = v45;
      sub_2722032B4();
      swift_allocError();
      *v22 = v20;
      v22[1] = v21;
      swift_willThrow();
      return;
    }

    sub_27237787C();
    v14 = v43;
    sub_2723777EC();
    v15 = v14;
    if (v14)
    {
      goto LABEL_11;
    }

    sub_27237787C();
    v16 = sub_27237783C();
    v18 = v17;

    (*(v41 + 8))(v5, v42);
    if (v18 >> 60 == 15)
    {
      sub_2722032B4();
      v15 = swift_allocError();
      *v19 = 0xD000000000000023;
      v19[1] = 0x800000027238A610;
      swift_willThrow();
LABEL_11:
      v44 = 0;
      v45 = 0xE000000000000000;
      sub_27237820C();
      MEMORY[0x2743C4AD0](0xD00000000000001ELL, 0x800000027238A5F0);
      v46 = v15;
      sub_2721F065C(&qword_280881A38, &unk_27237CA20);
      sub_27237836C();
      v23 = v44;
      v24 = v45;
      sub_2722032B4();
      swift_allocError();
      *v25 = v23;
      v25[1] = v24;
      swift_willThrow();

      return;
    }

    sub_272376ABC();
    swift_allocObject();
    sub_272376AAC();
    sub_2721F065C(&qword_280881EB0, &qword_27237DEC8);
    sub_27223EEA0();
    sub_272376A9C();
    v37 = v8;
    v41 = v16;
    v42 = v44;
    v26 = sub_2722C389C();
    v27 = v38;
    v28 = v39;
    v29 = v40;
    (*(v38 + 16))(v40, v26, v39);
    v30 = sub_27237725C();
    v31 = sub_272377E7C();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = v27;
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v43 = 0;
      v44 = v34;
      v35 = v34;
      *v33 = 136315138;
      *(v33 + 4) = sub_2721FFD04(v37, *(&v8 + 1), &v44);
      _os_log_impl(&dword_2721E4000, v30, v31, "Loaded custom lexicon from %s", v33, 0xCu);
      sub_2722039C8(v35);
      MEMORY[0x2743C69C0](v35, -1, -1);
      MEMORY[0x2743C69C0](v33, -1, -1);

      sub_2721F05B4(v41, v18);

      (*(v32 + 8))(v40, v8);
    }

    else
    {

      sub_2721F05B4(v41, v18);

      (*(v27 + 8))(v29, v28);
    }
  }
}

void sub_27223E45C(uint64_t a1)
{
  v67 = *MEMORY[0x277D85DE8];
  v1 = sub_27237728C();
  v56 = *(v1 - 8);
  v57 = v1;
  MEMORY[0x28223BE20](v1);
  v58 = &v55 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_27237788C();
  v60 = *(v3 - 8);
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v62 = objc_opt_self();
  v7 = [v62 defaultManager];
  if (qword_280887540 != -1)
  {
    swift_once();
  }

  v8 = xmmword_280887548;
  v9 = sub_2723777FC();
  v10 = [v7 fileExistsAtPath_];

  if (v10)
  {
    v11 = [v62 defaultManager];
    v12 = sub_2723777FC();
    v13 = [v11 isWritableFileAtPath_];

    if ((v13 & 1) == 0)
    {
      *&v65 = 0;
      *(&v65 + 1) = 0xE000000000000000;
      sub_27237820C();

      *&v65 = 0xD000000000000025;
      *(&v65 + 1) = 0x800000027238A570;
      MEMORY[0x2743C4AD0](v8, *(&v8 + 1));
      v27 = v65;
      sub_2722032B4();
      swift_allocError();
      *v28 = v27;
      swift_willThrow();
      return;
    }
  }

  v59 = v8;
  v14 = objc_opt_self();
  sub_2721F065C(&qword_2808817F0, &unk_27237BF20);
  v15 = sub_27237770C();
  *&v65 = 0;
  v16 = [v14 dataWithJSONObject:v15 options:0 error:&v65];

  v17 = v65;
  if (!v16)
  {
    v25 = v17;
    v26 = sub_272376C6C();

    swift_willThrow();
    return;
  }

  v18 = sub_272376D8C();
  v20 = v19;

  sub_27237787C();
  v21 = sub_27237784C();
  if (!v22)
  {
    sub_2721F05C8(v18, v20);
    return;
  }

  *&v65 = v21;
  *(&v65 + 1) = v22;
  *&v64[0] = v59;
  *(&v64[0] + 1) = *(&v8 + 1);

  sub_27237787C();
  sub_272203AC4();
  v23 = v61;
  sub_27237810C();
  if (v23)
  {
    sub_2721F05C8(v18, v20);
    (*(v60 + 8))(v6, v3);

    v24 = v23;
LABEL_17:
    *&v65 = 0;
    *(&v65 + 1) = 0xE000000000000000;
    sub_27237820C();
    MEMORY[0x2743C4AD0](0xD00000000000001DLL, 0x800000027238A550);
    *&v64[0] = v24;
    sub_2721F065C(&qword_280881A38, &unk_27237CA20);
    sub_27237836C();
    v53 = v65;
    sub_2722032B4();
    swift_allocError();
    *v54 = v53;
    swift_willThrow();

    return;
  }

  v55 = v18;
  (*(v60 + 8))(v6, v3);

  v29 = v62;
  v30 = [v62 defaultManager];
  v31 = sub_2723777FC();
  *&v65 = 0;
  v32 = [v30 attributesOfItemAtPath:v31 error:&v65];

  v33 = v65;
  if (!v32 || (v61 = 0, type metadata accessor for FileAttributeKey(), sub_27223F044(&qword_280881E90, &unk_27237E048), v34 = sub_27237772C(), v35 = v33, v32, v36 = *MEMORY[0x277CCA180], v37 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_], v66 = sub_27223EE54(), *&v65 = v37, sub_27221981C(&v65, v64), isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native(), v63 = v34, sub_27223D110(v64, v36, isUniquelyReferenced_nonNull_native), v39 = objc_msgSend(v29, sel_defaultManager), v40 = sub_27237770C(), , v41 = sub_2723777FC(), *&v65 = 0, LODWORD(v36) = objc_msgSend(v39, sel_setAttributes_ofItemAtPath_error_, v40, v41, &v65), v39, v40, v41, !v36))
  {
    v52 = v65;
    v24 = sub_272376C6C();

    swift_willThrow();
    sub_2721F05C8(v55, v20);
    goto LABEL_17;
  }

  v42 = v20;
  v43 = v65;
  v44 = sub_2722C389C();
  v46 = v56;
  v45 = v57;
  v47 = v58;
  (*(v56 + 16))(v58, v44, v57);
  v48 = sub_27237725C();
  v49 = sub_272377E7C();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    *&v65 = v51;
    *v50 = 136315138;
    *(v50 + 4) = sub_2721FFD04(v59, *(&v8 + 1), &v65);
    _os_log_impl(&dword_2721E4000, v48, v49, "Updated lexicon at %s.", v50, 0xCu);
    sub_2722039C8(v51);
    MEMORY[0x2743C69C0](v51, -1, -1);
    MEMORY[0x2743C69C0](v50, -1, -1);
    sub_2721F05C8(v55, v42);

    (*(v8 + 8))(v58, v45);
  }

  else
  {
    sub_2721F05C8(v55, v42);

    (*(v46 + 8))(v47, v45);
  }
}

uint64_t type metadata accessor for VAFileBackedLexicon(uint64_t a1)
{
  result = qword_280887558;
  if (!qword_280887558)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_27223ED5C(uint64_t a1)
{
  result = sub_272376E5C();
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

void type metadata accessor for FileAttributeKey()
{
  if (!qword_280881EC0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_280881EC0);
    }
  }
}

unint64_t sub_27223EE54()
{
  result = qword_280881E98;
  if (!qword_280881E98)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280881E98);
  }

  return result;
}

unint64_t sub_27223EEA0()
{
  result = qword_280881EB8;
  if (!qword_280881EB8)
  {
    sub_2721F214C(&qword_280881EB0, &qword_27237DEC8);
    sub_27223EF2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280881EB8);
  }

  return result;
}

unint64_t sub_27223EF2C()
{
  result = qword_2808817E8;
  if (!qword_2808817E8)
  {
    sub_2721F214C(&qword_2808817F0, &unk_27237BF20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808817E8);
  }

  return result;
}

uint64_t sub_27223F044(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FileAttributeKey();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_27223F0C4(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_27223F138(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 24) = a1;
  return result;
}

uint64_t sub_27223F1B0(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 32) = a1;
}

uint64_t sub_27223F230(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 40) = a1;
}

uint64_t sub_27223F2B0(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 48) = a1;
}

uint64_t sub_27223F330(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 56) = a1;
}

uint64_t sub_27223F3B0(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 64) = a1;
}

uint64_t sub_27223F480(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 72) = a1;
}

uint64_t sub_27223F4C8(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_27223F518(a1, a2);
  return v4;
}

void sub_27223F518(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_2723769FC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v26[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3[4] = 0;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_28;
  }

  v3[2] = a1;
  v10 = v3 + 2;
  if (a2 + 0x4000000000000000 < 0)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v11 = ceilf(log2f((2 * a2)));
  if ((LODWORD(v11) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v11 <= -1.0)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v11 >= 1.8447e19)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v3[3] = v11;
  (*(v7 + 104))(v9, *MEMORY[0x277D83108], v6);
  type metadata accessor for DSPSplitComplex();
  sub_2721F065C(&qword_280881EE8, &unk_27237E090);
  swift_allocObject();
  v12 = sub_2723769DC();
  if (v12)
  {
    v13 = v12;
    swift_beginAccess();
    v3[4] = v13;

    swift_beginAccess();
    v14 = *v10;
    if ((*v10 & 0x8000000000000000) == 0)
    {
      if (!v14)
      {
        v3[5] = MEMORY[0x277D84F90];
        goto LABEL_21;
      }

      v15 = sub_272377B5C();
      *(v15 + 16) = v14;
      bzero((v15 + 32), 4 * v14);
      v16 = v3[2];
      v3[5] = v15;
      if ((v16 & 0x8000000000000000) == 0)
      {
        if (v16)
        {
          v17 = sub_272377B5C();
          *(v17 + 16) = v16;
          bzero((v17 + 32), 4 * v16);
          v18 = v3[2];
          v3[6] = v17;
          if ((v18 & 0x8000000000000000) == 0)
          {
            if (v18)
            {
              v19 = sub_272377B5C();
              *(v19 + 16) = v18;
              bzero((v19 + 32), 4 * v18);
              v20 = v3[2];
              v3[7] = v19;
              if ((v20 & 0x8000000000000000) == 0)
              {
                if (v20)
                {
                  v21 = sub_272377B5C();
                  *(v21 + 16) = v20;
                  bzero((v21 + 32), 4 * v20);
                  v22 = v3[2];
                  v3[8] = v21;
                  if ((v22 & 0x8000000000000000) == 0)
                  {
                    if (v22)
                    {
                      v23 = sub_272377B5C();
                      *(v23 + 16) = v22;
                      bzero((v23 + 32), 4 * v22);
                      v24 = v3[2];
                      v3[9] = v23;
                      if ((v24 & 0x8000000000000000) == 0)
                      {
                        if (v24)
                        {
                          v25 = sub_272377B5C();
                          *(v25 + 16) = v24;
                          bzero((v25 + 32), 4 * v24);
                        }

                        else
                        {
                          v25 = MEMORY[0x277D84F90];
                        }

                        goto LABEL_25;
                      }

                      goto LABEL_37;
                    }

LABEL_24:
                    v25 = MEMORY[0x277D84F90];
                    v3[9] = MEMORY[0x277D84F90];
LABEL_25:
                    v3[10] = v25;
                    return;
                  }

LABEL_36:
                  __break(1u);
LABEL_37:
                  __break(1u);
                  goto LABEL_38;
                }

LABEL_23:
                v3[8] = MEMORY[0x277D84F90];
                goto LABEL_24;
              }

LABEL_35:
              __break(1u);
              goto LABEL_36;
            }

LABEL_22:
            v3[7] = MEMORY[0x277D84F90];
            goto LABEL_23;
          }

LABEL_34:
          __break(1u);
          goto LABEL_35;
        }

LABEL_21:
        v3[6] = MEMORY[0x277D84F90];
        goto LABEL_22;
      }

LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

LABEL_38:
  __break(1u);
}

void type metadata accessor for DSPSplitComplex()
{
  if (!qword_280881F20)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_280881F20);
    }
  }
}

char *sub_27223F8EC(uint64_t a1)
{
  v2 = v1;
  v56[4] = *MEMORY[0x277D85DE8];
  v49 = (*(*v1 + 336))(v56);
  v5 = v4;
  v6 = *v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v5 = v6;
  v48 = v5;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v8 = (*(*v2 + 152))();
    vDSP_vclr(v6 + 8, 1, v8);
    vDSP_mmov((a1 + 32), v6 + 8, *(a1 + 16), 1uLL, 1uLL, 1uLL);
    v47 = (*(*v2 + 240))(v55);
    v10 = v9;
    v11 = *v9;
    v12 = swift_isUniquelyReferenced_nonNull_native();
    *v10 = v11;
    v46 = v10;
    if ((v12 & 1) == 0)
    {
      v11 = sub_2722002AC(v11);
      *v10 = v11;
    }

    v45 = (*(*v2 + 264))(v54);
    v14 = v13;
    v15 = *v13;
    v16 = swift_isUniquelyReferenced_nonNull_native();
    *v14 = v15;
    v44 = v14;
    if ((v16 & 1) == 0)
    {
      v15 = sub_2722002AC(v15);
      *v14 = v15;
    }

    v43 = (*(*v2 + 288))(v53);
    v18 = v17;
    v19 = *v17;
    v20 = swift_isUniquelyReferenced_nonNull_native();
    *v18 = v19;
    if ((v20 & 1) == 0)
    {
      v19 = sub_2722002AC(v19);
      *v18 = v19;
    }

    v51.realp = (v15 + 32);
    v51.imagp = (v19 + 32);
    if (!(*(*v2 + 200))())
    {
      __break(1u);
    }

    sub_2723769EC();

    v42 = v51;
    v21 = (*(*v2 + 312))(v52);
    v23 = v22;
    v24 = *v22;
    v25 = *(*v22 + 2);
    v26 = swift_isUniquelyReferenced_nonNull_native();
    *v23 = v24;
    if ((v26 & 1) == 0)
    {
      v24 = sub_2722002AC(v24);
      *v23 = v24;
    }

    __A = v42;
    vDSP_zvabs(&__A, 1, v24 + 8, 1, v25);
    v21(v52, 0);
    *v18 = v19;
    v43(v53, 0);
    *v44 = v15;
    v45(v54, 0);
    *v46 = v11;
    v47(v55, 0);
    *v48 = v6;
    v6 = v56;
    v27 = v49(v56, 0);
    v28 = *(*v2 + 296);
    v29 = (v28)(v27);
    v30 = v28();
    v31 = (*(*v2 + 360))(v56);
    sub_272242274(v29, v30, v32);

    v33 = v31(v56, 0);
    v5 = v2;
    v34 = (*(*v2 + 344))(v33);
    a1 = *(v34 + 16);
    if (a1)
    {
      break;
    }

    v2 = MEMORY[0x277D84F90];
    if (*(MEMORY[0x277D84F90] + 16))
    {
      goto LABEL_17;
    }

LABEL_21:
    __break(1u);
LABEL_22:
    v6 = sub_2722002AC(v6);
    *v5 = v6;
  }

  v56[0] = MEMORY[0x277D84F90];
  v5 = v56;
  v6 = v34;
  sub_2722005AC(0, a1, 0);
  v35 = v6;
  v2 = v56[0];
  v36 = *(v56[0] + 16);
  v37 = 32;
  do
  {
    v38 = *&v35[v37];
    v56[0] = v2;
    v39 = *(v2 + 3);
    if (v36 >= v39 >> 1)
    {
      v5 = v56;
      sub_2722005AC((v39 > 1), v36 + 1, 1);
      v35 = v6;
      v2 = v56[0];
    }

    *(v2 + 2) = v36 + 1;
    *&v2[4 * v36 + 32] = v38 * 0.25;
    v37 += 4;
    ++v36;
    --a1;
  }

  while (a1);

  if (!*(v2 + 2))
  {
    goto LABEL_21;
  }

LABEL_17:
  v40 = *(v2 + 8);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_2722002AC(v2);
  }

  *(v2 + 8) = v40 * 0.5;
  return v2;
}

void *sub_27223FECC()
{

  return v0;
}

uint64_t sub_27223FF1C()
{
  sub_27223FECC();

  return swift_deallocClassInstance();
}

uint64_t sub_2722400B8(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  *(v2 + v4) = a1;
}

void sub_27224016C()
{
  v1 = v0 + OBJC_IVAR____TtC12VoiceActions16VAFeatureExtract____lazy_storage___nfft;
  if (*(v0 + OBJC_IVAR____TtC12VoiceActions16VAFeatureExtract____lazy_storage___nfft + 8) == 1)
  {
    v2 = (*((*MEMORY[0x277D85000] & *v0) + 0x88))();
    v3 = log2f(v2);
    v4 = exp2f(ceilf(v3));
    if ((LODWORD(v4) & 0x7FFFFFFFu) > 0x7F7FFFFF)
    {
      __break(1u);
    }

    else if (v4 > -9.2234e18)
    {
      if (v4 < 9.2234e18)
      {
        *v1 = v4;
        v1[8] = 0;
        return;
      }

      goto LABEL_9;
    }

    __break(1u);
LABEL_9:
    __break(1u);
  }
}

uint64_t sub_272240238(uint64_t result)
{
  v2 = v1 + OBJC_IVAR____TtC12VoiceActions16VAFeatureExtract____lazy_storage___nfft;
  *v2 = result;
  *(v2 + 8) = 0;
  return result;
}

uint64_t (*sub_272240250(void *a1))()
{
  a1[1] = v1;
  sub_27224016C();
  *a1 = v3;
  return sub_272240298;
}

void *sub_272240298(void *result)
{
  v1 = result[1] + OBJC_IVAR____TtC12VoiceActions16VAFeatureExtract____lazy_storage___nfft;
  *v1 = *result;
  *(v1 + 8) = 0;
  return result;
}

uint64_t sub_2722402B4()
{
  v1 = OBJC_IVAR____TtC12VoiceActions16VAFeatureExtract____lazy_storage___fftCalculator;
  if (*(v0 + OBJC_IVAR____TtC12VoiceActions16VAFeatureExtract____lazy_storage___fftCalculator))
  {
    v2 = *(v0 + OBJC_IVAR____TtC12VoiceActions16VAFeatureExtract____lazy_storage___fftCalculator);
  }

  else
  {
    v3 = MEMORY[0x277D85000];
    v4 = v0;
    v5 = (*((*MEMORY[0x277D85000] & *v0) + 0xF0))();
    v6 = (*((*v3 & *v0) + 0x88))();
    type metadata accessor for VAFFTCalculator();
    v2 = swift_allocObject();
    sub_27223F518(v5, v6);
    *(v4 + v1) = v2;
  }

  return v2;
}

uint64_t (*sub_2722403C0(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[1] = v1;
  *a1 = sub_2722402B4();
  return sub_272240408;
}

void sub_272240428()
{
  v1 = OBJC_IVAR____TtC12VoiceActions16VAFeatureExtract____lazy_storage___fbankTFlattened;
  if (*(v0 + OBJC_IVAR____TtC12VoiceActions16VAFeatureExtract____lazy_storage___fbankTFlattened))
  {
LABEL_64:

    return;
  }

  v2 = MEMORY[0x277D85000];
  v3 = (*((*MEMORY[0x277D85000] & *v0) + 0xA8))();
  v4 = logf((v3 / 700.0) + 1.0);
  v5 = (*((*v2 & *v0) + 0xB0))();
  v6 = logf((v5 / 700.0) + 1.0);
  v7 = *((*v2 & *v0) + 0x98);
  v8 = v7();
  v61 = *((*v2 & *v0) + 0xF0);
  v9 = v61();
  if (v9 < -3)
  {
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  v10 = v9;
  v57 = v1;
  v62 = v0;
  v11 = v9 / 2;
  v12 = v9 / 2 + 1;
  if (v9 < -1)
  {
    v13 = MEMORY[0x277D84F90];
    if (v9 / 2 == -1)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v13 = sub_272377B5C();
    *(v13 + 16) = v12;
    if (!v12)
    {
      goto LABEL_9;
    }
  }

  *(v13 + 32) = 0;
  if ((v10 + 1) >= 3)
  {
    bzero((v13 + 36), 4 * v11);
  }

LABEL_9:
  v14 = v7();
  v15 = sub_27220392C(v13, v14);

  v17 = (*((*v2 & *v0) + 0x90))(v16);
  v18 = v61();
  v19 = v7();
  if ((v19 & 0x8000000000000000) == 0)
  {
    if (!v19)
    {
      goto LABEL_44;
    }

    v20 = 0;
    v58 = (((v6 / 2.3026) * 2595.0) - ((v4 / 2.3026) * 2595.0)) / (v8 + 1.0);
    v59 = (v4 / 2.3026) * 2595.0;
    v21 = v17 / v18;
    v60 = v19;
    while (1)
    {
      if (v20 == 0x7FFFFFFFFFFFFFFELL)
      {
        goto LABEL_73;
      }

      v22 = v61();
      if (v22 < -3)
      {
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
        goto LABEL_77;
      }

      v23 = v20 + 1;
      if ((v22 + 3) >= 2)
      {
        break;
      }

LABEL_12:
      ++v20;
      if (v23 == v60)
      {
        goto LABEL_44;
      }
    }

    v24 = 0;
    v25 = v59 + (v58 * v20);
    v26 = v58 * v23;
    v27 = v59 + v26;
    v28 = v58 * (v20 + 2);
    v29 = v59 + v28;
    v30 = (v59 + v26) - v25;
    v31 = (v59 + v28) - (v59 + v26);
    v32 = v22 / 2 + 1;
    while (2)
    {
      v34 = (logf(((v21 * v24) / 700.0) + 1.0) / 2.3026) * 2595.0;
      if (v25 >= v34 || v34 >= v29)
      {
        goto LABEL_19;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (v34 > v27)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v15 = sub_272200344(v15);
        }

        if (v20 >= v15[2])
        {
          goto LABEL_66;
        }

        v37 = v15[v20 + 4];
        v38 = swift_isUniquelyReferenced_nonNull_native();
        v15[v20 + 4] = v37;
        if (v38)
        {
          if ((v24 & 0x8000000000000000) != 0)
          {
            goto LABEL_67;
          }
        }

        else
        {
          v37 = sub_2722002AC(v37);
          v15[v20 + 4] = v37;
          if ((v24 & 0x8000000000000000) != 0)
          {
            goto LABEL_67;
          }
        }

        if (v24 >= *(v37 + 2))
        {
          goto LABEL_68;
        }

        v33 = (v29 - v34) / v31;
LABEL_18:
        *&v37[4 * v24 + 32] = v33;
LABEL_19:
        if (v32 == ++v24)
        {
          goto LABEL_12;
        }

        continue;
      }

      break;
    }

    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v15 = sub_272200344(v15);
    }

    if (v20 >= v15[2])
    {
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
      goto LABEL_74;
    }

    v37 = v15[v20 + 4];
    v39 = swift_isUniquelyReferenced_nonNull_native();
    v15[v20 + 4] = v37;
    if (v39)
    {
      if ((v24 & 0x8000000000000000) != 0)
      {
        goto LABEL_43;
      }

      goto LABEL_38;
    }

    v37 = sub_2722002AC(v37);
    v15[v20 + 4] = v37;
    if ((v24 & 0x8000000000000000) == 0)
    {
LABEL_38:
      if (v24 >= *(v37 + 2))
      {
        goto LABEL_69;
      }

      v33 = (v34 - v25) / v30;
      goto LABEL_18;
    }

LABEL_43:
    __break(1u);
LABEL_44:
    v40 = sub_2721F065C(&qword_280881F28, &unk_272381E80);
    v41 = sub_2722199BC(&qword_280881F30, &qword_280881F28, &unk_272381E80, MEMORY[0x277D83988]);
    v42 = sub_2722199BC(&qword_280881F38, &qword_280881858, &unk_27237C260, MEMORY[0x277D83980]);
    v43 = sub_2722C0820(v40, v41, v42);
    v44 = *(v43 + 16);
    if (v44)
    {
      v45 = 0;
      v46 = MEMORY[0x277D84F90];
      while (1)
      {
        if (v45 >= *(v43 + 16))
        {
          goto LABEL_70;
        }

        v47 = *(v43 + 32 + 8 * v45);
        v48 = *(v47 + 16);
        v49 = *(v46 + 2);
        v50 = v49 + v48;
        if (__OFADD__(v49, v48))
        {
          goto LABEL_71;
        }

        v51 = swift_isUniquelyReferenced_nonNull_native();
        if (v51 && v50 <= *(v46 + 3) >> 1)
        {
          if (!*(v47 + 16))
          {
            goto LABEL_46;
          }
        }

        else
        {
          if (v49 <= v50)
          {
            v52 = v49 + v48;
          }

          else
          {
            v52 = v49;
          }

          v46 = sub_2721FF8B4(v51, v52, 1, v46);
          if (!*(v47 + 16))
          {
LABEL_46:

            if (v48)
            {
              goto LABEL_72;
            }

            goto LABEL_47;
          }
        }

        v53 = *(v46 + 2);
        if ((*(v46 + 3) >> 1) - v53 < v48)
        {
          goto LABEL_75;
        }

        memcpy(&v46[4 * v53 + 32], (v47 + 32), 4 * v48);

        if (v48)
        {
          v54 = *(v46 + 2);
          v55 = __OFADD__(v54, v48);
          v56 = v54 + v48;
          if (v55)
          {
            goto LABEL_76;
          }

          *(v46 + 2) = v56;
        }

LABEL_47:
        if (v44 == ++v45)
        {
          goto LABEL_63;
        }
      }
    }

    v46 = MEMORY[0x277D84F90];
LABEL_63:

    *(v62 + v57) = v46;

    goto LABEL_64;
  }

LABEL_78:
  __break(1u);
}

uint64_t (*sub_272240ABC(void *a1))(uint64_t *a1, uint64_t a2)
{
  a1[1] = v1;
  sub_272240428();
  *a1 = v3;
  return sub_272240B04;
}

uint64_t sub_272240B24()
{
  v1 = OBJC_IVAR____TtC12VoiceActions16VAFeatureExtract____lazy_storage___hammingWindow;
  if (*(v0 + OBJC_IVAR____TtC12VoiceActions16VAFeatureExtract____lazy_storage___hammingWindow))
  {
    v2 = *(v0 + OBJC_IVAR____TtC12VoiceActions16VAFeatureExtract____lazy_storage___hammingWindow);
LABEL_12:

    return v2;
  }

  v3 = *((*MEMORY[0x277D85000] & *v0) + 0x88);
  result = v3();
  if ((result & 0x8000000000000000) == 0)
  {
    v8 = v1;
    if (result)
    {
      v5 = result;
      v2 = sub_272377B5C();
      *(v2 + 16) = v5;
      bzero((v2 + 32), 4 * v5);
      result = v3();
      if ((result & 0x8000000000000000) == 0)
      {
LABEL_6:
        v6 = result;
        if (!result)
        {
LABEL_11:
          *(v0 + v8) = v2;

          goto LABEL_12;
        }

        v7 = 0;
        while (1)
        {
          result = v3();
          if (__OFSUB__(result, 1))
          {
            goto LABEL_15;
          }

          if (v7 >= *(v2 + 16))
          {
            goto LABEL_16;
          }

          *(v2 + 32 + 4 * v7) = (cosf(((v7 + v7) * 3.1416) / (result - 1)) * -0.46) + 0.54;
          if (v6 == ++v7)
          {
            goto LABEL_11;
          }
        }
      }
    }

    else
    {
      v2 = MEMORY[0x277D84F90];
      result = v3();
      if ((result & 0x8000000000000000) == 0)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t (*sub_272240CE4(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[1] = v1;
  *a1 = sub_272240B24();
  return sub_272240D2C;
}

uint64_t sub_272240D4C(uint64_t *a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v5 = *a1;
  v4 = a1[1];
  v6 = *(v4 + *a3);
  *(v4 + *a3) = v5;
  return a4(v6, a2);
}

unint64_t sub_272240D64(uint64_t a1)
{
  v2 = 0.0 - sub_272242360(a1);

  return sub_2722423C4(a1, v2);
}

float sub_272240DA4(float a1)
{
  if (a1 <= 1.2e-38)
  {
    a1 = 1.2e-38;
  }

  return logf(a1);
}

char *sub_272240DBC(char **a1)
{
  v4 = *a1;
  v5 = *(*a1 + 2);
  v9[0] = 1.0;
  v6 = *((*MEMORY[0x277D85000] & *v1) + 0xA0);
  v9[1] = -v6();
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v7 = v5 - 1;
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_7:
    __break(1u);
LABEL_8:
    result = sub_2722002AC(v4);
    v4 = result;
    if (*(result + 2))
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

  v4 = sub_2722002AC(v4);
  v7 = v5 - 1;
  if (!v5)
  {
    goto LABEL_7;
  }

LABEL_3:
  vDSP_deq22(v4 + 8, 1, v9, v4 + 8, 1, v7);
  v2 = v6();
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_8;
  }

  if (*(v4 + 2))
  {
LABEL_5:
    *(v4 + 8) = (1.0 - v2) * *(v4 + 8);
    *a1 = v4;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_272240EE4(char **a1)
{
  v4 = *a1;
  if (*(*a1 + 2) >= 2uLL)
  {
    v6 = *((*MEMORY[0x277D85000] & *v1) + 0xA0);
    if ((v6)() != 1.0)
    {
      v8 = *(v4 + 2);
      if (v8 < 2)
      {
        goto LABEL_10;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_21;
      }

      while (1)
      {
        v9 = v8 - 1;
        if (v8 - 1 >= *(v4 + 2))
        {
          break;
        }

        v8 = &v4[4 * v8];
        v2 = *(v8 + 28);
        v7 = v6();
        v11 = *(v4 + 2);
        if (v9 - 1 >= v11)
        {
          goto LABEL_16;
        }

        if (v9 >= v11)
        {
          goto LABEL_17;
        }

        *(v8 + 28) = v2 - (v10 * *(v8 + 24));
        v8 = v9;
        if (v9 <= 1)
        {
          v8 = *(v4 + 2);
LABEL_10:
          if (!v8)
          {
            goto LABEL_18;
          }

          v3 = *(v4 + 8);
          v2 = (v6)(v7);
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            if (*(v4 + 2))
            {
              goto LABEL_13;
            }

            goto LABEL_20;
          }

LABEL_19:
          v4 = sub_2722002AC(v4);
          if (*(v4 + 2))
          {
LABEL_13:
            *(v4 + 8) = v3 * (1.0 - v2);
            *a1 = v4;
            return;
          }

LABEL_20:
          __break(1u);
LABEL_21:
          v4 = sub_2722002AC(v4);
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }
  }
}

uint64_t sub_272241064(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 16);
  v5 = MEMORY[0x277D85000];
  v6 = *((*MEMORY[0x277D85000] & *v1) + 0x138);
  v7 = *(v6() + 16);

  if (v4 != v7)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v68 = a1;
  v9 = *((*v5 & *v2) + 0xB8);

  if (v9(v10))
  {

    v68 = (*((*v5 & *v2) + 0x150))(a1);
  }

  v11 = (*((*v5 & *v2) + 0x168))(&v68);
  v12 = *((*v5 & *v2) + 0xC0);
  v13 = *((v12)(v11) + 16);

  v15 = *((*v5 & *v2) + 0x88);
  if (v13 != (v15)(v14))
  {
    result = v15();
    if (result < 0)
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    if (result)
    {
      v16 = result;
      v17 = sub_272377B5C();
      *(v17 + 16) = v16;
      bzero((v17 + 32), 4 * v16);
    }

    else
    {
      v17 = MEMORY[0x277D84F90];
    }

    (*((*v5 & *v2) + 0xC8))(v17);
  }

  v18 = *((*v5 & *v2) + 0xD0);
  v19 = v18(v67);
  sub_27224230C(v20);
  v21 = v19(v67, 0);
  v22 = v6;
  v23 = v68;
  v24 = (v22)(v21);
  v25 = v18(v67);
  sub_272242274(v23, v24, v26);

  v27 = v25(v67, 0);
  v28 = (*((*v5 & *v2) + 0x108))(v27);
  v29 = v12();
  v30 = (*(*v28 + 376))(v29);

  v32 = *((*v5 & *v2) + 0xF0);
  result = (v32)(v31);
  if (result < -3)
  {
    goto LABEL_29;
  }

  v33 = *(v30 + 16);
  if (v33 <= result / 2)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v34 = 2 * (result / 2) + 3;
  v65 = v32;
  if (v33 != v34 >> 1)
  {
    sub_272241D34(v30, v30 + 32, 0, v34);
    v36 = v35;

    v30 = v36;
  }

  v37 = *((*v5 & *v2) + 0xD8);
  v38 = *(v37(result) + 16);

  v40 = *((*v5 & *v2) + 0x98);
  if (v38 == (v40)(v39))
  {
    goto LABEL_20;
  }

  result = v40();
  if (result < 0)
  {
LABEL_32:
    __break(1u);
    return result;
  }

  if (result)
  {
    v41 = result;
    v42 = sub_272377B5C();
    *(v42 + 16) = v41;
    bzero((v42 + 32), 4 * v41);
  }

  else
  {
    v42 = MEMORY[0x277D84F90];
  }

  (*((*v5 & *v2) + 0xE0))(v42);
LABEL_20:
  v66 = v37;
  v43 = *((*v5 & *v2) + 0xE8);
  v44 = v43(v67);
  sub_27224230C(v45);
  v46 = v44(v67, 0);
  v47 = (*((*v5 & *v2) + 0x120))(v46);
  v48 = v40();
  v49 = v65() / 2;
  v50 = v66;
  v51 = v43(v67);
  sub_272242158(v30, v47, v52, 1uLL, v48, v49 + 1);

  v53 = v51(v67, 0);
  v54 = v66(v53);
  v55 = *(v54 + 16);
  if (v55)
  {
    v67[0] = MEMORY[0x277D84F90];
    v56 = sub_2722005AC(0, v55, 0);
    v57 = v67[0];
    v58 = *((*MEMORY[0x277D85000] & *v2) + 0x158);
    v59 = 32;
    do
    {
      v56 = v58(v56, *(v54 + v59));
      v67[0] = v57;
      v62 = *(v57 + 16);
      v61 = *(v57 + 24);
      if (v62 >= v61 >> 1)
      {
        v63 = v60;
        v56 = sub_2722005AC((v61 > 1), v62 + 1, 1);
        v60 = v63;
        v57 = v67[0];
      }

      *(v57 + 16) = v62 + 1;
      *(v57 + 4 * v62 + 32) = v60;
      v59 += 4;
      --v55;
    }

    while (v55);

    v50 = v66;
  }

  else
  {

    v57 = MEMORY[0x277D84F90];
  }

  v64 = (*((*MEMORY[0x277D85000] & *v2) + 0xE0))(v57);
  return v50(v64);
}

uint64_t sub_272241824(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a2 * a3;
  if ((a2 * a3) >> 64 != (a2 * a3) >> 63)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v4 = result;
  if (v3 != *(result + 16))
  {
    return MEMORY[0x277D84F90];
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    v6 = MEMORY[0x277D84F90];
    if (a2)
    {
      v19 = MEMORY[0x277D84F90];
      result = sub_2722005CC(0, a2, 0);
      v8 = 0;
      v9 = v19;
      while (1)
      {
        v10 = v8 * a3;
        if ((v8 * a3) >> 64 != (v8 * a3) >> 63)
        {
          break;
        }

        v11 = ++v8 * a3;
        if ((v8 * a3) >> 64 != (v8 * a3) >> 63)
        {
          goto LABEL_28;
        }

        v12 = v11 - v10;
        if (v11 < v10)
        {
          goto LABEL_29;
        }

        if (v10 < 0)
        {
          goto LABEL_30;
        }

        if (v3 < v11)
        {
          goto LABEL_31;
        }

        if (v3 == v12)
        {

          v13 = v4;
        }

        else
        {
          v13 = v6;
          if (v11 != v10)
          {
            if (v12 < 1)
            {
              v17 = 4 * v12;
              v13 = v6;
            }

            else
            {
              sub_2721F065C(&qword_280881848, &unk_27237C250);
              v13 = swift_allocObject();
              v16 = j__malloc_size(v13);
              v17 = 4 * v12;
              v18 = v16 - 32;
              if (v16 < 32)
              {
                v18 = v16 - 29;
              }

              v13[2] = v12;
              v13[3] = 2 * (v18 >> 2);
            }

            result = memcpy(v13 + 4, (v4 + 32 + 4 * v10), v17);
          }
        }

        v15 = *(v19 + 16);
        v14 = *(v19 + 24);
        if (v15 >= v14 >> 1)
        {
          result = sub_2722005CC((v14 > 1), v15 + 1, 1);
        }

        *(v19 + 16) = v15 + 1;
        *(v19 + 8 * v15 + 32) = v13;
        if (a2 == v8)
        {
          return v9;
        }
      }

      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    return MEMORY[0x277D84F90];
  }

LABEL_33:
  __break(1u);
  return result;
}

id sub_272241A54(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_init);
}

id sub_272241AA4(void *a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t))
{
  v4.receiver = a1;
  v4.super_class = a3(a1, a2);
  return objc_msgSendSuper2(&v4, sel_init);
}

id VAFeatureExtract.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id VAFeatureExtract.init()(uint64_t a1)
{
  v2 = MEMORY[0x277D84F90];
  *&v1[OBJC_IVAR____TtC12VoiceActions16VAFeatureExtract_windowAppliedFrame] = MEMORY[0x277D84F90];
  *&v1[OBJC_IVAR____TtC12VoiceActions16VAFeatureExtract_frameFeatureVec] = v2;
  v3 = &v1[OBJC_IVAR____TtC12VoiceActions16VAFeatureExtract____lazy_storage___nfft];
  *v3 = 0;
  v3[8] = 1;
  *&v1[OBJC_IVAR____TtC12VoiceActions16VAFeatureExtract____lazy_storage___fftCalculator] = 0;
  *&v1[OBJC_IVAR____TtC12VoiceActions16VAFeatureExtract____lazy_storage___fbankTFlattened] = 0;
  *&v1[OBJC_IVAR____TtC12VoiceActions16VAFeatureExtract____lazy_storage___hammingWindow] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for VAFeatureExtract();
  return objc_msgSendSuper2(&v5, sel_init);
}

id sub_272241C80(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_272241D34(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = MEMORY[0x277D84F90];
      if (v4 != a3)
      {
LABEL_7:
        memcpy(v8 + 4, (a2 + 4 * a3), 4 * v5);
        return;
      }
    }

    else
    {
      sub_2721F065C(&qword_280881848, &unk_27237C250);
      v8 = swift_allocObject();
      v9 = j__malloc_size(v8);
      v10 = v9 - 32;
      if (v9 < 32)
      {
        v10 = v9 - 29;
      }

      v8[2] = v5;
      v8[3] = 2 * (v10 >> 2);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void *sub_272241E04(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_2721F065C(&qword_280881850, &unk_27237E840);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_2721F065C(&qword_280881858, &unk_27237C260);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_2722420D0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 16))
  {
    return (*a1 + 2);
  }

  if (*a1)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t sub_272242114(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    if (a3 >= 2)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

void sub_272242158(uint64_t a1, uint64_t a2, char **a3, vDSP_Length a4, vDSP_Length a5, vDSP_Length a6)
{
  if ((a4 * a6) >> 64 != (a4 * a6) >> 63)
  {
    __break(1u);
    goto LABEL_11;
  }

  v11 = a1;
  if (a4 * a6 != *(a1 + 16))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __P = a6;
  v7 = a5;
  if ((a5 * a6) >> 64 != (a5 * a6) >> 63)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = a2;
  if (a5 * a6 != *(a2 + 16))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v8 = a4;
  if ((a4 * a5) >> 64 != (a4 * a5) >> 63)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = a3;
  v12 = *a3;
  if (a4 * a5 == *(*a3 + 2))
  {
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

LABEL_15:
  __break(1u);
LABEL_16:
  v12 = sub_2722002AC(v12);
LABEL_8:
  if (((v7 | v8 | __P) & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    vDSP_mmul((v11 + 32), 1, (v9 + 32), 1, v12 + 8, 1, v8, v7, __P);
    *v6 = v12;
  }
}

uint64_t sub_272242274(uint64_t a1, uint64_t a2, char **a3)
{
  v7 = *(a1 + 16);
  if (v7 != *(a2 + 16))
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = a3;
  v5 = *a3;
  if (v7 != *(*a3 + 2))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v4 = a2;
  v6 = a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_7:
    v5 = sub_2722002AC(v5);
  }

  result = MEMORY[0x2743C6BD0](v6 + 32, 1, v4 + 32, 1, v5 + 32, 1, *(v5 + 2));
  *v3 = v5;
  return result;
}

void sub_27224230C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_2722002AC(v2);
  }

  vDSP_vclr(v2 + 8, 1, *(v2 + 2));
  *a1 = v2;
}

float sub_272242360(uint64_t a1)
{
  v3 = *MEMORY[0x277D85DE8];
  __C = 0.0;
  vDSP_meanv((a1 + 32), 1, &__C, *(a1 + 16));
  return __C;
}

unint64_t sub_2722423C4(uint64_t a1, float a2)
{
  sub_2721F065C(&qword_280881848, &unk_27237C250);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_27237AF80;
  *(inited + 32) = a2;
  v5 = *(a1 + 16);

  v6 = sub_272242468(v5, inited, a1);

  swift_setDeallocating();
  return v6;
}

unint64_t sub_272242468(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    if (result)
    {
      v6 = sub_272377B5C();
      *(v6 + 16) = v5;
    }

    else
    {
      v6 = MEMORY[0x277D84F90];
    }

    result = MEMORY[0x2743C6BF0](a3 + 32, 1, a2 + 32, v6 + 32, 1, *(a3 + 16));
    v7 = *(a3 + 16);
    if (v7 <= v5)
    {
      *(v6 + 16) = v7;
      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_27224251C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, float a6@<S0>)
{
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a6;
  *(a5 + 24) = a3;
  *(a5 + 32) = a4;
  return result;
}

uint64_t sub_272242560(float a1)
{
  result = swift_beginAccess();
  *(v1 + 32) = a1;
  return result;
}

uint64_t sub_2722425D4(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 56) = a1;
  return result;
}

uint64_t sub_272242648(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 64) = a1;
  return result;
}

uint64_t sub_27224270C(float a1)
{
  result = swift_beginAccess();
  *(v1 + 72) = a1;
  return result;
}

uint64_t sub_272242780(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 80) = a1;
  return result;
}

uint64_t sub_2722427F4(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 88) = a1;
  return result;
}

uint64_t sub_272242868(char a1)
{
  result = swift_beginAccess();
  *(v1 + 96) = a1;
  return result;
}

__n128 AVSEndpointer.__allocating_init(config:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = *(a1 + 16);
  *(v2 + 56) = vdupq_n_s64(0x28uLL);
  *(v2 + 72) = 1060320051;
  *(v2 + 80) = xmmword_27237E1E0;
  *(v2 + 96) = 0;
  *(v2 + 16) = *a1;
  *(v2 + 32) = v3;
  result = *(a1 + 24);
  *(v2 + 40) = result;
  return result;
}

uint64_t AVSEndpointer.init(config:)(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(v1 + 56) = vdupq_n_s64(0x28uLL);
  *(v1 + 72) = 1060320051;
  *(v1 + 80) = xmmword_27237E1E0;
  *(v1 + 96) = 0;
  *(v1 + 16) = *a1;
  *(v1 + 32) = v2;
  *(v1 + 40) = *(a1 + 24);
  return v1;
}

uint64_t sub_2722429B0(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 16);
  if (((*(*v1 + 408))() & 1) != 0 || v4 < (*(*v1 + 192))())
  {
    (*(*v1 + 416))(0);
    return 0;
  }

  v5 = (*(*v1 + 216))();
  v6 = (*(*v1 + 240))();
  v7 = sub_2722436FC();
  v8 = sub_272243704();
  v9 = sub_272243714();
  v11 = sub_27224371C(a1, v6, v7, v9, v5, v8);
  v12 = *(v10 + 16);
  if (!v12)
  {
LABEL_10:

    return 0;
  }

  v13 = v12 - 1;
  v14 = v10 + 32;
  v15 = *(v10 + 32 + 8 * (v12 - 1));
  v49 = *(*v2 + 168);
  result = v49();
  v17 = v4 - result;
  if (__OFSUB__(v4, result))
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  result = (*(*v2 + 264))();
  if (__OFSUB__(v17, result))
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if (v15 < v17 - result)
  {
    goto LABEL_10;
  }

  result = v49();
  if (__OFSUB__(v4, result))
  {
LABEL_49:
    __break(1u);
    return result;
  }

  if (v4 - result < *(v14 + 8 * v13))
  {
    goto LABEL_10;
  }

  v45 = a1;
  v18 = v11;
  v19 = 0;
  v47 = v18;
  v46 = v18 + 40;
  v20 = MEMORY[0x277D84F90];
  v21 = MEMORY[0x277D84F90];
  v48 = v12;
  do
  {
    v22 = v19 + 1;
    if (v13 == v19)
    {
      v23 = *(v14 + 8 * v13);
      v24 = v4 - v23;
      if (__OFSUB__(v4, v23))
      {
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }
    }

    else
    {
      if (v22 >= *(v47 + 2))
      {
        goto LABEL_45;
      }

      v25 = *&v46[8 * v19];
      v26 = *(v14 + 8 * v19);
      v24 = v25 - v26;
      if (__OFSUB__(v25, v26))
      {
        goto LABEL_46;
      }
    }

    result = v49();
    if (result < v24)
    {
      v27 = *(v14 + 8 * v19);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_27220897C(0, *(v21 + 16) + 1, 1, v21);
        v21 = result;
      }

      v29 = *(v21 + 16);
      v28 = *(v21 + 24);
      if (v29 >= v28 >> 1)
      {
        result = sub_27220897C((v28 > 1), v29 + 1, 1, v21);
        v21 = result;
      }

      *(v21 + 16) = v29 + 1;
      *(v21 + 8 * v29 + 32) = v27;
    }

    v19 = v22;
  }

  while (v48 != v22);

  if (v4)
  {
    v30 = sub_272242F18(0, v4, 0);
    v31 = *(*v2 + 336);
    v32 = (v45 + 32);
    do
    {
      v33 = *v32;
      v30 = v31(v30);
      v36 = *(v20 + 16);
      v35 = *(v20 + 24);
      v37 = v36 + 1;
      if (v36 >= v35 >> 1)
      {
        v38 = v34;
        v30 = sub_272242F18((v35 > 1), v36 + 1, 1);
        v34 = v38;
      }

      *(v20 + 16) = v37;
      *(v20 + v36 + 32) = v34 <= v33;
      ++v32;
      --v4;
    }

    while (v4);
    goto LABEL_33;
  }

  v37 = *(v20 + 16);
  v39 = v20;
  if (v37)
  {
LABEL_33:
    v39 = MEMORY[0x277D84F90];
    v40 = 32;
    do
    {
      if (*(v20 + v40) == 1)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_272242F18(0, *(v39 + 16) + 1, 1);
        }

        v42 = *(v39 + 16);
        v41 = *(v39 + 24);
        if (v42 >= v41 >> 1)
        {
          sub_272242F18((v41 > 1), v42 + 1, 1);
        }

        *(v39 + 16) = v42 + 1;
        *(v39 + v42 + 32) = 1;
      }

      ++v40;
      --v37;
    }

    while (v37);
  }

  v43 = *(v39 + 16);

  return *(v21 + 16) && v43 >= (*(*v2 + 360))(v44);
}

char *sub_272242F18(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_272242F38(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_272242F38(char *result, int64_t a2, char a3, char *a4)
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
    sub_2721F065C(&qword_280881F40, &unk_2723860C0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

uint64_t OS_os_log.default(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_272377EAC();

  return sub_272243114(a1, a2, a3, v8, a4);
}

uint64_t sub_272243114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a5 + 16);
  if (v6 > 4)
  {
    if (v6 > 6)
    {
      if (v6 == 7)
      {
        sub_2721F065C(&qword_280881CB0, qword_27237D820);
        v16 = swift_allocObject();
        *(v16 + 16) = xmmword_27237E2B0;
        sub_27221629C(a5 + 32, v16 + 32);
        sub_27221629C(a5 + 72, v16 + 72);
        sub_27221629C(a5 + 112, v16 + 112);
        sub_27221629C(a5 + 152, v16 + 152);
        sub_27221629C(a5 + 192, v16 + 192);
        sub_27221629C(a5 + 232, v16 + 232);
        v8 = a5 + 272;
        v9 = v16 + 272;
        goto LABEL_18;
      }

      if (v6 == 8)
      {
        sub_2721F065C(&qword_280881CB0, qword_27237D820);
        v12 = swift_allocObject();
        *(v12 + 16) = xmmword_27237E2C0;
        sub_27221629C(a5 + 32, v12 + 32);
        sub_27221629C(a5 + 72, v12 + 72);
        sub_27221629C(a5 + 112, v12 + 112);
        sub_27221629C(a5 + 152, v12 + 152);
        sub_27221629C(a5 + 192, v12 + 192);
        sub_27221629C(a5 + 232, v12 + 232);
        sub_27221629C(a5 + 272, v12 + 272);
        v8 = a5 + 312;
        v9 = v12 + 312;
        goto LABEL_18;
      }

      goto LABEL_21;
    }

    if (v6 == 5)
    {
      sub_2721F065C(&qword_280881CB0, qword_27237D820);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_27237AFA0;
      sub_27221629C(a5 + 32, v14 + 32);
      sub_27221629C(a5 + 72, v14 + 72);
      sub_27221629C(a5 + 112, v14 + 112);
      sub_27221629C(a5 + 152, v14 + 152);
      v8 = a5 + 192;
      v9 = v14 + 192;
    }

    else
    {
      sub_2721F065C(&qword_280881CB0, qword_27237D820);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_27237AF70;
      sub_27221629C(a5 + 32, v10 + 32);
      sub_27221629C(a5 + 72, v10 + 72);
      sub_27221629C(a5 + 112, v10 + 112);
      sub_27221629C(a5 + 152, v10 + 152);
      sub_27221629C(a5 + 192, v10 + 192);
      v8 = a5 + 232;
      v9 = v10 + 232;
    }

LABEL_18:
    sub_27221629C(v8, v9);
    sub_27237718C();
  }

  if (v6 > 2)
  {
    if (v6 == 3)
    {
      sub_2721F065C(&qword_280881CB0, qword_27237D820);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_27237AFB0;
      sub_27221629C(a5 + 32, v15 + 32);
      sub_27221629C(a5 + 72, v15 + 72);
      v8 = a5 + 112;
      v9 = v15 + 112;
    }

    else
    {
      sub_2721F065C(&qword_280881CB0, qword_27237D820);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_27237AF60;
      sub_27221629C(a5 + 32, v11 + 32);
      sub_27221629C(a5 + 72, v11 + 72);
      sub_27221629C(a5 + 112, v11 + 112);
      v8 = a5 + 152;
      v9 = v11 + 152;
    }

    goto LABEL_18;
  }

  if (v6 == 1)
  {
    sub_2721F065C(&qword_280881CB0, qword_27237D820);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_27237AF80;
    v8 = a5 + 32;
    v9 = v13 + 32;
    goto LABEL_18;
  }

  if (v6 == 2)
  {
    sub_2721F065C(&qword_280881CB0, qword_27237D820);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_27237AF90;
    sub_27221629C(a5 + 32, v7 + 32);
    v8 = a5 + 72;
    v9 = v7 + 72;
    goto LABEL_18;
  }

LABEL_21:

  return sub_27237718C();
}

uint64_t OS_os_log.info(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_272377E6C();

  return sub_272243114(a1, a2, a3, v8, a4);
}

uint64_t OS_os_log.debug(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_272377E7C();

  return sub_272243114(a1, a2, a3, v8, a4);
}

uint64_t OS_os_log.error(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_272377E8C();

  return sub_272243114(a1, a2, a3, v8, a4);
}

uint64_t OS_os_log.fault(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_272377E9C();

  return sub_272243114(a1, a2, a3, v8, a4);
}

char *sub_27224371C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, float a5, float a6)
{
  v59 = *MEMORY[0x277D85DE8];
  v10 = *(a1 + 16);
  v11 = MEMORY[0x277D84F90];
  v56 = v10;
  if (v10)
  {
    v58 = MEMORY[0x277D84F90];
    sub_272242F18(0, v10, 0);
    v11 = v58;
    v13 = (a1 + 32);
    v14 = *(v58 + 2);
    do
    {
      v15 = *v13;
      v58 = v11;
      v16 = *(v11 + 3);
      v17 = v14 + 1;
      if (v14 >= v16 >> 1)
      {
        sub_272242F18((v16 > 1), v14 + 1, 1);
        v11 = v58;
      }

      *(v11 + 2) = v17;
      v11[v14 + 32] = v15 >= a5;
      ++v13;
      ++v14;
      --v10;
    }

    while (v10);
  }

  else
  {
    v17 = *(MEMORY[0x277D84F90] + 16);
    v18 = MEMORY[0x277D84F90];
    if (!v17)
    {
      goto LABEL_16;
    }
  }

  v19 = 0;
  v18 = MEMORY[0x277D84F90];
  do
  {
    if (v11[v19 + 32] == 1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_27220058C(0, *(v18 + 16) + 1, 1);
      }

      v21 = *(v18 + 16);
      v20 = *(v18 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_27220058C((v20 > 1), v21 + 1, 1);
      }

      *(v18 + 16) = v21 + 1;
      *(v18 + 8 * v21 + 32) = v19;
    }

    ++v19;
  }

  while (v17 != v19);
LABEL_16:

  v58 = v18;
  sub_272244348(&v58);
  v22 = v58;
  v23 = *(v58 + 2);
  if (v23)
  {
    v24 = v58 + 32;
    v25 = *(v58 + 4);
    sub_2721F065C(&qword_2808818A0, &unk_27237E2A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_27237AF80;
    *(inited + 32) = v25;
    v54 = a2;
    if (v23 == 1)
    {
      v27 = 0;
      v28 = MEMORY[0x277D84F90];
      v29 = 1;
      v30 = MEMORY[0x277D84F90];
      goto LABEL_53;
    }

    v51 = a4;
    v55 = a1 + 32;
    v31 = 1;
    v52 = MEMORY[0x277D84F90];
    v53 = MEMORY[0x277D84F90];
    v30 = v22;
    do
    {
      v27 = 0;
      v28 = v31;
      while (1)
      {
        if (v31 < 1 || v28 >= v23)
        {
          __break(1u);
LABEL_67:
          __break(1u);
LABEL_68:
          __break(1u);
LABEL_69:
          __break(1u);
LABEL_70:
          __break(1u);
          goto LABEL_71;
        }

        if (v28 >= *(v22 + 2))
        {
          goto LABEL_67;
        }

        v32 = v25 + a3;
        if (__OFADD__(v25, a3))
        {
          goto LABEL_68;
        }

        v25 = *&v24[8 * v28];
        if (v32 < v25)
        {
          break;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          inited = sub_27220897C(0, *(inited + 16) + 1, 1, inited);
        }

        v34 = *(inited + 16);
        v33 = *(inited + 24);
        v29 = v34 + 1;
        if (v34 >= v33 >> 1)
        {
          inited = sub_27220897C((v33 > 1), v34 + 1, 1, inited);
        }

        *(inited + 16) = v29;
        *(inited + 8 * v34 + 32) = v25;
        if (v25 >= v56)
        {
          goto LABEL_69;
        }

        if (*(v55 + 4 * v25) >= a6 && __OFADD__(v27++, 1))
        {
          goto LABEL_70;
        }

        v22 = v30;
        if (v23 == ++v28)
        {
          goto LABEL_52;
        }
      }

      v36 = *(inited + 16);
      if (v36 < v54 || v27 < v51)
      {
        goto LABEL_50;
      }

      if (!v36)
      {
        __break(1u);
LABEL_76:
        __break(1u);
      }

      v37 = *(inited + 32);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v53 = sub_27220897C(0, *(v53 + 2) + 1, 1, v53);
      }

      v39 = *(v53 + 2);
      v38 = *(v53 + 3);
      if (v39 >= v38 >> 1)
      {
        v53 = sub_27220897C((v38 > 1), v39 + 1, 1, v53);
      }

      *(v53 + 2) = v39 + 1;
      *&v53[8 * v39 + 32] = v37;
      v40 = *(inited + 16);
      if (!v40)
      {
        goto LABEL_76;
      }

      v41 = *(inited + 32 + 8 * v40 - 8);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v52 = sub_27220897C(0, *(v52 + 2) + 1, 1, v52);
      }

      v43 = *(v52 + 2);
      v42 = *(v52 + 3);
      if (v43 >= v42 >> 1)
      {
        v52 = sub_27220897C((v42 > 1), v43 + 1, 1, v52);
      }

      *(v52 + 2) = v43 + 1;
      *&v52[8 * v43 + 32] = v41;
      v22 = v30;
LABEL_50:
      v31 = v28 + 1;
      v44 = swift_allocObject();
      *(v44 + 16) = xmmword_27237AF80;
      *(v44 + 32) = v25;
      inited = v44;
    }

    while (v23 - 1 != v28);
    v27 = 0;
    v29 = *(inited + 16);
LABEL_52:
    a4 = v51;
    v28 = v52;
    v30 = v53;
LABEL_53:
    if (v29 < v54 || v27 < a4)
    {
      goto LABEL_64;
    }

    if (v29)
    {
      v24 = (inited + 32);
      v25 = *(inited + 32);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_57;
      }

      goto LABEL_72;
    }

LABEL_71:
    __break(1u);
LABEL_72:
    v30 = sub_27220897C(0, *(v30 + 2) + 1, 1, v30);
LABEL_57:
    v46 = *(v30 + 2);
    v45 = *(v30 + 3);
    if (v46 >= v45 >> 1)
    {
      v30 = sub_27220897C((v45 > 1), v46 + 1, 1, v30);
    }

    *(v30 + 2) = v46 + 1;
    *&v30[8 * v46 + 32] = v25;
    v47 = *(inited + 16);
    if (v47)
    {
      v24 = *&v24[8 * v47 - 8];
      if (swift_isUniquelyReferenced_nonNull_native())
      {
LABEL_61:
        v49 = *(v28 + 16);
        v48 = *(v28 + 24);
        if (v49 >= v48 >> 1)
        {
          v28 = sub_27220897C((v48 > 1), v49 + 1, 1, v28);
        }

        *(v28 + 16) = v49 + 1;
        *(v28 + 8 * v49 + 32) = v24;
LABEL_64:

        return v30;
      }
    }

    else
    {
      __break(1u);
    }

    v28 = sub_27220897C(0, *(v28 + 16) + 1, 1, v28);
    goto LABEL_61;
  }

  return MEMORY[0x277D84F90];
}

void sub_272243D3C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = v2 / a2;
  if (v3 != 0.0)
  {
    sub_272201EE0(0.0, v2, v3);
    v6 = *(v5 + 16);
    if (!v6)
    {
LABEL_14:

      return;
    }

    v7 = (v5 + 32);
    v8 = a1 + 32;
    v9 = MEMORY[0x277D84F90];
    while (1)
    {
      v10 = *v7;
      if ((*v7 & 0x7FFFFFFFu) > 0x7F7FFFFF)
      {
        break;
      }

      if (v10 <= -9.2234e18)
      {
        goto LABEL_16;
      }

      if (v10 >= 9.2234e18)
      {
        goto LABEL_17;
      }

      v11 = v10;
      if (v10 < 0)
      {
        goto LABEL_18;
      }

      if (v2 <= v11)
      {
        goto LABEL_19;
      }

      v12 = *(v8 + 8 * v11);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_272241E04(0, v9[2] + 1, 1, v9);
      }

      v14 = v9[2];
      v13 = v9[3];
      if (v14 >= v13 >> 1)
      {
        v9 = sub_272241E04((v13 > 1), v14 + 1, 1, v9);
      }

      v9[2] = v14 + 1;
      v9[v14 + 4] = v12;
      ++v7;
      if (!--v6)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_272243EC0(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  v5 = *(result + 16);
  v6 = v5 - 1;
  if (v5 == 1)
  {

    return v4;
  }

  if (v5)
  {
    if (v5 - 2 < *(a2 + 16))
    {
      result = sub_27220897C(0, 1, 1, MEMORY[0x277D84F90]);
      v7 = result;
      v8 = (a2 + 32);
      v9 = (v4 + 40);
      do
      {
        v11 = *v9++;
        v10 = v11;
        v12 = *v8++;
        v13 = v10 - v12;
        if (__OFSUB__(v10, v12))
        {
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
          goto LABEL_43;
        }

        v15 = *(v7 + 16);
        v14 = *(v7 + 24);
        v16 = v15 + 1;
        if (v15 >= v14 >> 1)
        {
          result = sub_27220897C((v14 > 1), v15 + 1, 1, v7);
          v7 = result;
        }

        *(v7 + 16) = v16;
        *(v7 + 8 * v15 + 32) = v13;
        --v6;
      }

      while (v6);
      v17 = 0;
      v33 = v4 + 32;
      v34 = v5;
      v18 = MEMORY[0x277D84F90];
      v19 = 4;
      v4 = MEMORY[0x277D84F90];
      do
      {
        if (*(v7 + 8 * v19) > a3)
        {
          if (v17 >= v34)
          {
            goto LABEL_39;
          }

          v20 = *(v33 + 8 * v17);
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_27220897C(0, *(v4 + 16) + 1, 1, v4);
            v4 = result;
          }

          v22 = *(v4 + 16);
          v21 = *(v4 + 24);
          if (v22 >= v21 >> 1)
          {
            result = sub_27220897C((v21 > 1), v22 + 1, 1, v4);
            v4 = result;
          }

          *(v4 + 16) = v22 + 1;
          *(v4 + 8 * v22 + 32) = v20;
          if ((v19 - 4) >= *(a2 + 16))
          {
            goto LABEL_41;
          }

          v23 = *(a2 + 8 * v19);
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_27220897C(0, *(v18 + 16) + 1, 1, v18);
            v18 = result;
          }

          v25 = *(v18 + 16);
          v24 = *(v18 + 24);
          if (v25 >= v24 >> 1)
          {
            result = sub_27220897C((v24 > 1), v25 + 1, 1, v18);
            v18 = result;
          }

          v17 = v19 - 3;
          *(v18 + 16) = v25 + 1;
          *(v18 + 8 * v25 + 32) = v23;
        }

        if (v16 == 1)
        {
          if (v17 >= v34)
          {
            goto LABEL_40;
          }

          v26 = *(v33 + 8 * v17);
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_27220897C(0, *(v4 + 16) + 1, 1, v4);
            v4 = result;
          }

          v28 = *(v4 + 16);
          v27 = *(v4 + 24);
          if (v28 >= v27 >> 1)
          {
            result = sub_27220897C((v27 > 1), v28 + 1, 1, v4);
            v4 = result;
          }

          *(v4 + 16) = v28 + 1;
          *(v4 + 8 * v28 + 32) = v26;
          v29 = *(a2 + 16);
          if (!v29)
          {
            goto LABEL_42;
          }

          v30 = *(a2 + 24 + 8 * v29);
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_27220897C(0, *(v18 + 16) + 1, 1, v18);
            v18 = result;
          }

          v32 = *(v18 + 16);
          v31 = *(v18 + 24);
          if (v32 >= v31 >> 1)
          {
            result = sub_27220897C((v31 > 1), v32 + 1, 1, v18);
            v18 = result;
          }

          *(v18 + 16) = v32 + 1;
          *(v18 + 8 * v32 + 32) = v30;
        }

        ++v19;
        --v16;
      }

      while (v16);

      return v4;
    }
  }

  else
  {
LABEL_43:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_272244258(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2)
  {
    if (v2 <= *(a2 + 16))
    {
      v3 = 0;
      v4 = 0;
      v5 = 0;
      v6 = (result + 32);
      v7 = (a2 + 32);
      while (1)
      {
        v9 = *v6++;
        v8 = v9;
        v11 = *v7++;
        v10 = v11;
        v12 = v11 - v8;
        if (__OFSUB__(v11, v8))
        {
          break;
        }

        if (v5 < v12)
        {
          v3 = v10;
          v4 = v8;
        }

        if (v5 <= v12)
        {
          v5 = v12;
        }

        if (!--v2)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
    v3 = 0;
    v4 = 0;
LABEL_12:
    sub_2721F065C(&qword_2808818A0, &unk_27237E2A0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_27237AF80;
    *(v13 + 32) = v4;
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_27237AF80;
    *(v14 + 32) = v3;
    return v13;
  }

  return result;
}

uint64_t sub_272244348(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_272244CD8(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_27237861C();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 8;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_272377B5C();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_272244584(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

char *sub_272244480(char *result, int64_t a2, char a3, char *a4)
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
    sub_2721F065C(&qword_280881F48, &unk_272381AE0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

uint64_t sub_272244584(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v83 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *v83;
    if (!*v83)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_272244CC4(v8);
      v8 = result;
    }

    v75 = (v8 + 16);
    v76 = *(v8 + 16);
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = (v8 + 16 * v76);
        v78 = *v77;
        v79 = &v75[2 * v76];
        v80 = v79[1];
        sub_272244AD0((*a3 + 8 * *v77), (*a3 + 8 * *v79), (*a3 + 8 * v80), v5);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_114;
        }

        if (v76 - 2 >= *v75)
        {
          goto LABEL_115;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = *v75 - v76;
        if (*v75 < v76)
        {
          goto LABEL_116;
        }

        v76 = *v75 - 1;
        result = memmove(v79, v79 + 2, 16 * v81);
        *v75 = v76;
        if (v76 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v82 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = (v10 < v11) ^ (v14 >= v13);
        ++v12;
        v13 = v14;
        if ((v15 & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = v7 - 1;
        v17 = v9;
        do
        {
          if (v17 != v16)
          {
            v20 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v18 = *(v20 + 8 * v17);
            *(v20 + 8 * v17) = *(v20 + 8 * v16);
            *(v20 + 8 * v16) = v18;
          }
        }

        while (++v17 < v16--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_272244480(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v29 = *(v8 + 24);
    v30 = v5 + 1;
    if (v5 >= v29 >> 1)
    {
      result = sub_272244480((v29 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v30;
    v31 = v8 + 32;
    v32 = (v8 + 32 + 16 * v5);
    *v32 = v9;
    v32[1] = v7;
    v84 = *v83;
    if (!*v83)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v33 = *(v8 + 32);
          v34 = *(v8 + 40);
          v43 = __OFSUB__(v34, v33);
          v35 = v34 - v33;
          v36 = v43;
LABEL_57:
          if (v36)
          {
            goto LABEL_104;
          }

          v49 = (v8 + 16 * v30);
          v51 = *v49;
          v50 = v49[1];
          v52 = __OFSUB__(v50, v51);
          v53 = v50 - v51;
          v54 = v52;
          if (v52)
          {
            goto LABEL_106;
          }

          v55 = (v31 + 16 * v5);
          v57 = *v55;
          v56 = v55[1];
          v43 = __OFSUB__(v56, v57);
          v58 = v56 - v57;
          if (v43)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v53, v58))
          {
            goto LABEL_111;
          }

          if (v53 + v58 >= v35)
          {
            if (v35 < v58)
            {
              v5 = v30 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v30 < 2)
        {
          goto LABEL_112;
        }

        v59 = (v8 + 16 * v30);
        v61 = *v59;
        v60 = v59[1];
        v43 = __OFSUB__(v60, v61);
        v53 = v60 - v61;
        v54 = v43;
LABEL_72:
        if (v54)
        {
          goto LABEL_108;
        }

        v62 = (v31 + 16 * v5);
        v64 = *v62;
        v63 = v62[1];
        v43 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v43)
        {
          goto LABEL_110;
        }

        if (v65 < v53)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v30)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
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
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v70 = (v31 + 16 * (v5 - 1));
        v71 = *v70;
        v72 = (v31 + 16 * v5);
        v73 = v72[1];
        sub_272244AD0((*a3 + 8 * *v70), (*a3 + 8 * *v72), (*a3 + 8 * v73), v84);
        if (v4)
        {
        }

        if (v73 < v71)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v70 = v71;
        v70[1] = v73;
        v74 = *(v8 + 16);
        if (v5 >= v74)
        {
          goto LABEL_101;
        }

        v30 = v74 - 1;
        result = memmove((v31 + 16 * v5), v72 + 2, 16 * (v74 - 1 - v5));
        *(v8 + 16) = v74 - 1;
        if (v74 <= 2)
        {
          goto LABEL_3;
        }
      }

      v37 = v31 + 16 * v30;
      v38 = *(v37 - 64);
      v39 = *(v37 - 56);
      v43 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      if (v43)
      {
        goto LABEL_102;
      }

      v42 = *(v37 - 48);
      v41 = *(v37 - 40);
      v43 = __OFSUB__(v41, v42);
      v35 = v41 - v42;
      v36 = v43;
      if (v43)
      {
        goto LABEL_103;
      }

      v44 = (v8 + 16 * v30);
      v46 = *v44;
      v45 = v44[1];
      v43 = __OFSUB__(v45, v46);
      v47 = v45 - v46;
      if (v43)
      {
        goto LABEL_105;
      }

      v43 = __OFADD__(v35, v47);
      v48 = v35 + v47;
      if (v43)
      {
        goto LABEL_107;
      }

      if (v48 >= v40)
      {
        v66 = (v31 + 16 * v5);
        v68 = *v66;
        v67 = v66[1];
        v43 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v43)
        {
          goto LABEL_113;
        }

        if (v35 < v69)
        {
          v5 = v30 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v82;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v21 = *a3;
  v22 = *a3 + 8 * v7 - 8;
  v23 = v9 - v7;
LABEL_30:
  v24 = *(v21 + 8 * v7);
  v25 = v23;
  v26 = v22;
  while (1)
  {
    v27 = *v26;
    if (v24 >= *v26)
    {
LABEL_29:
      ++v7;
      v22 += 8;
      --v23;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v21)
    {
      break;
    }

    *v26 = v24;
    v26[1] = v27;
    --v26;
    if (__CFADD__(v25++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_272244AD0(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 8;
    v5 -= 8;
    v18 = v14;
    do
    {
      v19 = v5 + 8;
      v21 = *(v18 - 8);
      v18 -= 8;
      v20 = v21;
      if (v21 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 8, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v20;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

uint64_t sub_272244CEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = swift_allocObject();
  sub_272244D44(v5, a2, a3);
  return v6;
}

uint64_t sub_272244D44(int a1, uint64_t a2, uint64_t a3)
{
  v17 = a2;
  v18 = a3;
  v16 = a1;
  v15 = sub_272377EDC();
  v4 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_272377ECC();
  MEMORY[0x28223BE20](v7);
  v8 = sub_2723776EC();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = sub_27221982C(0, &qword_280881910, 0x277D85C78);
  v14[1] = "com.apple.mi.mind.voiceactions";
  v14[2] = v9;
  sub_2723776CC();
  v19 = MEMORY[0x277D84F90];
  sub_272253DFC(&qword_280881918, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  sub_2721F065C(&qword_280881920, &qword_27237C500);
  sub_2722199BC(&qword_280881928, &qword_280881920, &qword_27237C500, MEMORY[0x277D83970]);
  sub_27237815C();
  (*(v4 + 104))(v6, *MEMORY[0x277D85260], v15);
  v10 = sub_272377F0C();
  *(v3 + 16) = v16;
  v12 = v17;
  v11 = v18;
  *(v3 + 24) = v10;
  *(v3 + 32) = v12;
  *(v3 + 40) = v11;
  return v3;
}

uint64_t sub_272245040(char a1)
{
  v3 = sub_2723776EC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2723776AC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_27237769C();
  v11 = swift_allocObject();
  *(v11 + 16) = v1;
  *(v11 + 24) = a1;
  aBlock[4] = sub_2722454C4;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2722454D0;
  aBlock[3] = &unk_28817E418;
  v12 = _Block_copy(aBlock);

  sub_2723776CC();
  MEMORY[0x2743C5050](0, v6, v10, v12);
  _Block_release(v12);
  (*(v4 + 8))(v6, v3);
  (*(v8 + 8))(v10, v7);
}

uint64_t sub_27224526C(uint64_t a1, char a2)
{
  v4 = a2 & 1;
  v5 = sub_27237728C();
  v6 = *(v5 - 8);
  result = MEMORY[0x28223BE20](v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16) != v4)
  {
    v10 = sub_2722C389C();
    (*(v6 + 16))(v9, v10, v5);

    v11 = sub_27237725C();
    v12 = sub_272377E7C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v19 = v18;
      *v13 = 136315650;
      v14 = *(a1 + 32);
      v15 = *(a1 + 40);

      v16 = sub_2721FFD04(v14, v15, &v19);

      *(v13 + 4) = v16;
      *(v13 + 12) = 1024;
      *(v13 + 14) = *(a1 + 16);

      *(v13 + 18) = 1024;
      *(v13 + 20) = a2 & 1;
      _os_log_impl(&dword_2721E4000, v11, v12, "%s: %{BOOL}d => %{BOOL}d", v13, 0x18u);
      v17 = v18;
      sub_2722039C8(v18);
      MEMORY[0x2743C69C0](v17, -1, -1);
      MEMORY[0x2743C69C0](v13, -1, -1);
    }

    else
    {
    }

    result = (*(v6 + 8))(v9, v5);
    *(a1 + 16) = a2 & 1;
  }

  return result;
}

uint64_t sub_27224548C()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_2722454D0(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_272245514(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t (*sub_27224552C(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  sub_272377EEC();
  *(a1 + 8) = *(a1 + 9);
  return sub_2722455B4;
}

uint64_t sub_2722455DC()
{

  return swift_deallocClassInstance();
}

id VASpeechAPISpotter.__allocating_init(delegate:asrDelegate:speechDetectorDelegate:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = sub_2722526C0(a1, a2, a3, a4);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return v10;
}

id VASpeechAPISpotter.init(delegate:asrDelegate:speechDetectorDelegate:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_2722526C0(a1, a2, a3, a4);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return v4;
}

uint64_t sub_27224574C()
{
  v1 = objc_opt_self();
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_272245878;
  v2 = swift_continuation_init();
  v0[17] = sub_2721F065C(&qword_280881F60, &qword_27237E308);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2722459C4;
  v0[13] = &unk_28817E440;
  v0[14] = v2;
  [v1 installedLanguagesForTaskHint:1009 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_272245878()
{

  return MEMORY[0x2822009F8](sub_272245958, 0, 0);
}

uint64_t sub_272245958()
{
  v1 = *(*(v0 + 144) + 16);

  v2 = *(v0 + 8);

  return v2(v1 == 0);
}

uint64_t sub_2722459C4(uint64_t a1, uint64_t a2)
{
  v2 = *sub_27220300C((a1 + 32), *(a1 + 56));
  **(*(v2 + 64) + 40) = sub_272377D8C();

  return MEMORY[0x282200948](v2);
}

uint64_t static VASpeechAPISpotter.downloadGeneralASRModel(progress:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 160) = a1;
  *(v2 + 168) = a2;
  return MEMORY[0x2822009F8](sub_272245A5C, 0, 0);
}

uint64_t sub_272245A5C()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 10;
  v5 = v1[20];
  v4 = v1[21];
  v6 = objc_allocWithZone(MEMORY[0x277CDCE88]);
  v7 = sub_2723777FC();
  v8 = [v6 initWithLanguage:v7 assetType:7];
  v1[22] = v8;

  v15 = objc_opt_self();
  v9 = sub_2723777FC();
  v1[23] = v9;
  v10 = swift_allocObject();
  *(v10 + 16) = v5;
  *(v10 + 24) = v4;
  v1[14] = sub_272252A2C;
  v1[15] = v10;
  v11 = MEMORY[0x277D85DD0];
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_272245EC4;
  v1[13] = &unk_28817E490;
  v12 = _Block_copy(v3);
  v1[24] = v12;

  v1[2] = v1;
  v1[7] = v1 + 18;
  v1[3] = sub_272245CA4;
  v13 = swift_continuation_init();
  v1[17] = sub_2721F065C(&qword_280881F68, &qword_27237E318);
  v1[10] = v11;
  v1[11] = 1107296256;
  v1[12] = sub_272245F18;
  v1[13] = &unk_28817E4B8;
  v1[14] = v13;
  [v15 fetchAssetWithConfig:v8 clientIdentifier:v9 progress:v12 completion:v3];

  return MEMORY[0x282200938](v2);
}

uint64_t sub_272245CA4()
{
  v1 = *(*v0 + 48);
  *(*v0 + 200) = v1;
  if (v1)
  {
    v2 = sub_272245E30;
  }

  else
  {
    v2 = sub_272245DB4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_272245DB4()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 192);

  _Block_release(v2);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_272245E30(uint64_t a1)
{
  v2 = v1[24];
  v4 = v1[22];
  v3 = v1[23];
  swift_willThrow();

  _Block_release(v2);
  swift_willThrow();
  v5 = v1[1];

  return v5();
}

uint64_t sub_272245EC4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_272245F18(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *sub_27220300C((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_2721F065C(&qword_280881A38, &unk_27237CA20);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    v8 = sub_27237782C();
    v9 = *(*(v4 + 64) + 40);
    *v9 = v8;
    v9[1] = v10;

    return MEMORY[0x282200950](v4);
  }
}

float *sub_272245FEC(float *a1)
{
  v3 = v1;
  v5 = sub_27237728C();
  v98 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5);
  v97 = &v88 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v94 = &v88 - v8;
  v9 = sub_2721F065C(&qword_2808819D8, &qword_27237CB50);
  MEMORY[0x28223BE20](v9 - 8);
  v96 = &v88 - v10;
  v11 = sub_2721F065C(&qword_2808819B8, &qword_27237C508);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v88 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v92 = (&v88 - v15);
  v16 = type metadata accessor for VARuntimeParameters(0);
  v100 = *(v16 - 8);
  v17 = *(v100 + 8);
  v18 = MEMORY[0x28223BE20](v16);
  v93 = &v88 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v18);
  v95 = &v88 - v20;
  MEMORY[0x28223BE20](v19);
  v99 = &v88 - v21;
  v22 = sub_2721F065C(&qword_280881F70, &qword_27237E320);
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v25 = &v88 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v88 - v26;
  v101 = a1;
  if ((VARuntimeParameters.allKeywordsAreValid.getter() & 1) == 0)
  {
    v31 = 0x80000002723888A0;
    sub_2722032B4();
    swift_allocError();
    v34 = 0xD00000000000006DLL;
LABEL_7:
    *v33 = v34;
    v33[1] = v31;
    swift_willThrow();
    return v31;
  }

  v28 = (*((*MEMORY[0x277D85000] & *v3) + 0x78))();
  if (!v28)
  {
    v31 = 0x8000000272388910;
    sub_2722032B4();
    swift_allocError();
    v34 = 0xD000000000000011;
    goto LABEL_7;
  }

  v90 = v5;
  v91 = v28;
  v88 = v14;
  v89 = v2;
  sub_272216374(v101, v27);
  v29 = v100;
  (*(v100 + 7))(v27, 0, 1, v16);
  v30 = OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_runtimeParameters;
  swift_beginAccess();
  sub_27221D3B4(v27, v3 + v30, &qword_280881F70, &qword_27237E320);
  swift_endAccess();
  sub_2721F07F4(v3 + v30, v25, &qword_280881F70, &qword_27237E320);
  if ((*(v29 + 6))(v25, 1, v16) == 1)
  {
    sub_2721F40F0(v25, &qword_280881F70, &qword_27237E320);
    v31 = 0x800000027238AA90;
    sub_2722032B4();
    swift_allocError();
    *v32 = 0xD000000000000012;
    v32[1] = 0x800000027238AA90;
    swift_willThrow();
LABEL_19:

    return v31;
  }

  v35 = v99;
  sub_2722164B8(v25, v99);
  v36 = OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_speechAPISpotterConfiguration;
  v37 = *(**(v3 + OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_speechAPISpotterConfiguration) + 144);

  v37(v104, v38);

  v103 = v104[0];
  v102 = 0;
  sub_272252A6C();
  if (sub_2723777DC())
  {
    v39 = v101;
    v40 = MEMORY[0x277D85000];
  }

  else
  {
    type metadata accessor for VASpeechDetector(0);
    v31 = sub_27221A8BC();
    v73 = v72;
    _s12VoiceActions19VASpeechBiasOptionsO010defaultForaB0ACyFZ_0(v104);
    v103 = v104[0];
    swift_unknownObjectRetain();
    v74 = v89;
    v75 = VASpeechDetector.__allocating_init(modelFilename:featureCount:delegate:)(v31, v73, &v103, v3);
    v40 = MEMORY[0x277D85000];
    if (v74)
    {
      sub_272216BD8(v35);
      goto LABEL_19;
    }

    v76 = v75;
    *(v3 + OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_speechDetector) = v75;

    v77 = v101[13];
    v78 = *(**(v3 + v36) + 216);

    v80 = v78(v79);

    v81 = v92;
    (*(*v76 + 672))(v80 & 1, v77);
    v89 = 0;

    v82 = sub_2721F065C(&qword_280881900, &qword_27237C4F0);
    v83 = *(v82 - 8);
    (*(v83 + 56))(v81, 0, 1, v82);
    v84 = OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_speechDetectorOutputStream;
    swift_beginAccess();
    sub_27221D3B4(v81, v3 + v84, &qword_2808819B8, &qword_27237C508);
    swift_endAccess();
    v85 = v3 + v84;
    v86 = v88;
    sub_2721F07F4(v85, v88, &qword_2808819B8, &qword_27237C508);
    result = (*(v83 + 48))(v86, 1, v82);
    if (result == 1)
    {
      goto LABEL_25;
    }

    v87 = sub_272252AC0(v86);
    (*(v83 + 8))(v86, v82);
    *(v3 + OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_vadTask) = v87;

    v35 = v99;
    v39 = v101;
  }

  *(v3 + OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_stopped) = 0;
  type metadata accessor for VARequestContext(0);
  v41 = v95;
  sub_272216374(v39, v95);
  v92 = v91;
  v42 = sub_272232E00(v92, v41);
  (*((*v40 & *v3) + 0x128))(v42);
  type metadata accessor for VAStrategyLayerPassthrough(0);
  sub_272216374(v39, v41);
  v43 = swift_unknownObjectRetain();
  v44 = sub_2723457E8(v43, &protocol witness table for VAKeywordSpotterBase, v41);
  (*((*v40 & *v3) + 0x158))(v44);
  result = [objc_allocWithZone(MEMORY[0x277CB83A8]) initWithCommonFormat:3 sampleRate:1 channels:0 interleaved:16000.0];
  v101 = result;
  if (result)
  {
    v91 = dispatch_semaphore_create(0);
    v46 = sub_272377C3C();
    (*(*(v46 - 8) + 56))(v96, 1, 1, v46);
    sub_272216374(v39, v41);
    v47 = v93;
    sub_272216374(v35, v93);
    v48 = *(v100 + 80);
    v49 = v41;
    v50 = (v48 + 32) & ~v48;
    v51 = (v17 + v48 + v50) & ~v48;
    v52 = (v17 + v51 + 7) & 0xFFFFFFFFFFFFFFF8;
    v53 = (v52 + 15) & 0xFFFFFFFFFFFFFFF8;
    v54 = swift_allocObject();
    *(v54 + 16) = 0;
    *(v54 + 24) = 0;
    sub_2722164B8(v49, v54 + v50);
    sub_2722164B8(v47, v54 + v51);
    *(v54 + v52) = v3;
    v55 = v101;
    *(v54 + v53) = v101;
    v56 = v91;
    *(v54 + ((v53 + 15) & 0xFFFFFFFFFFFFFFF8)) = v91;
    v57 = v3;
    v100 = v55;
    v101 = v56;
    v58 = sub_27224C3F0(0, 0, v96, &unk_27237E330, v54, MEMORY[0x277D839B0]);
    v59 = OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_recognizerTask;
    *(v57 + OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_recognizerTask) = v58;

    v60 = sub_2722C389C();
    v61 = *(v98 + 16);
    v62 = v94;
    v61(v94, v60, v90);
    v63 = sub_27237725C();
    v64 = sub_272377E7C();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      *v65 = 0;
      _os_log_impl(&dword_2721E4000, v63, v64, "Waiting for speech API readiness", v65, 2u);
      MEMORY[0x2743C69C0](v65, -1, -1);
    }

    v66 = *(v98 + 8);
    v67 = v90;
    v66(v62, v90);
    sub_272377F5C();
    v61(v97, v60, v67);
    v68 = sub_27237725C();
    v69 = sub_272377E7C();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      *v70 = 0;
      _os_log_impl(&dword_2721E4000, v68, v69, "Speech API is ready", v70, 2u);
      MEMORY[0x2743C69C0](v70, -1, -1);
    }

    result = (v66)(v97, v90);
    v31 = *(v57 + v59);
    v71 = v99;
    if (v31)
    {

      sub_272216BD8(v71);

      return v31;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_272246C08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[24] = a7;
  v8[25] = a8;
  v8[22] = a5;
  v8[23] = a6;
  v8[20] = a1;
  v8[21] = a4;
  v9 = *(type metadata accessor for VARuntimeParameters(0) - 8);
  v8[26] = v9;
  v8[27] = *(v9 + 64);
  v8[28] = swift_task_alloc();
  sub_2721F065C(&qword_2808819D8, &qword_27237CB50);
  v8[29] = swift_task_alloc();
  sub_2721F065C(&qword_280881FB8, &unk_272381B60);
  v8[30] = swift_task_alloc();
  sub_2723772FC();
  v8[31] = swift_task_alloc();
  sub_2721F065C(&qword_280881F80, &qword_27237E338);
  v8[32] = swift_task_alloc();
  v8[33] = swift_task_alloc();
  sub_2721F065C(&qword_280881F98, &qword_27237E358);
  v8[34] = swift_task_alloc();
  v8[35] = swift_task_alloc();
  v10 = sub_2721F065C(&qword_280881FC0, &qword_27237E400);
  v8[36] = v10;
  v8[37] = *(v10 - 8);
  v8[38] = swift_task_alloc();
  v11 = sub_2721F065C(&qword_280881F58, &unk_27237E2F0);
  v8[39] = v11;
  v8[40] = *(v11 - 8);
  v8[41] = swift_task_alloc();
  v12 = sub_2721F065C(&qword_280881F50, &unk_272381B70);
  v8[42] = v12;
  v8[43] = *(v12 - 8);
  v8[44] = swift_task_alloc();
  sub_2721F065C(&qword_280881FC8, &qword_27237E408);
  v8[45] = swift_task_alloc();
  sub_2721F065C(&qword_280881FD0, &qword_27237E410);
  v8[46] = swift_task_alloc();
  sub_272376EBC();
  v8[47] = swift_task_alloc();
  v13 = sub_27237728C();
  v8[48] = v13;
  v8[49] = *(v13 - 8);
  v8[50] = swift_task_alloc();
  v8[51] = swift_task_alloc();
  v14 = sub_272376BCC();
  v8[52] = v14;
  v8[53] = *(v14 - 8);
  v8[54] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_272247090, 0, 0);
}

uint64_t sub_272247090()
{
  v183 = v0;
  v1 = *(v0 + 168);
  v2 = *v1;
  v3 = *(*v1 + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    sub_272203AC4();
    v5 = (v2 + 40);
    do
    {
      v6 = *v5;
      *(v0 + 64) = *(v5 - 1);
      *(v0 + 72) = v6;
      *(v0 + 80) = 95;
      *(v0 + 88) = 0xE100000000000000;
      *(v0 + 96) = 32;
      *(v0 + 104) = 0xE100000000000000;
      v7 = sub_2723780FC();
      v9 = sub_2722D6FA4(v7, v8);
      v11 = v10;

      v12 = v4;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_2721FFBF8(0, *(v4 + 2) + 1, 1, v4);
      }

      v14 = *(v12 + 2);
      v13 = *(v12 + 3);
      if (v14 >= v13 >> 1)
      {
        v12 = sub_2721FFBF8((v13 > 1), v14 + 1, 1, v12);
      }

      v4 = v12;
      *(v12 + 2) = v14 + 1;
      v15 = &v12[16 * v14];
      *(v15 + 4) = v9;
      *(v15 + 5) = v11;
      v5 += 2;
      --v3;
    }

    while (v3);
  }

  v174 = v4;
  v16 = *(v0 + 176);
  v17 = *(v16 + 64);
  if (v17)
  {
    *(v0 + 112) = *(v16 + 56);
    *(v0 + 120) = v17;
    *(v0 + 128) = 44;
    *(v0 + 136) = 0xE100000000000000;
    sub_272203AC4();
    v18 = sub_2723780BC();
    v19 = *(v18 + 16);
    if (v19)
    {
      v20 = *(v0 + 424);
      v182 = MEMORY[0x277D84F90];
      sub_27220056C(0, v19, 0);
      v21 = v182;
      v177 = (v20 + 8);
      v22 = (v18 + 40);
      do
      {
        v23 = *(v0 + 432);
        v24 = *(v0 + 416);
        v25 = *v22;
        *(v0 + 144) = *(v22 - 1);
        *(v0 + 152) = v25;

        sub_272376B4C();
        v26 = sub_2723780EC();
        v28 = v27;
        (*v177)(v23, v24);

        v182 = v21;
        v30 = *(v21 + 16);
        v29 = *(v21 + 24);
        if (v30 >= v29 >> 1)
        {
          sub_27220056C((v29 > 1), v30 + 1, 1);
          v21 = v182;
        }

        *(v21 + 16) = v30 + 1;
        v31 = v21 + 16 * v30;
        *(v31 + 32) = v26;
        *(v31 + 40) = v28;
        v22 += 2;
        --v19;
      }

      while (v19);
    }

    else
    {

      v21 = MEMORY[0x277D84F90];
    }

    v33 = *(v21 + 16);
    v32 = v174;
    if (v33)
    {
      v34 = (v21 + 40);
      do
      {
        v35 = *(v34 - 1);
        v36 = *v34;

        v37 = sub_2722D6FA4(v35, v36);
        v39 = v38;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v32 = sub_2721FFBF8(0, *(v32 + 2) + 1, 1, v32);
        }

        v41 = *(v32 + 2);
        v40 = *(v32 + 3);
        if (v41 >= v40 >> 1)
        {
          v32 = sub_2721FFBF8((v40 > 1), v41 + 1, 1, v32);
        }

        *(v32 + 2) = v41 + 1;
        v42 = &v32[16 * v41];
        *(v42 + 4) = v37;
        *(v42 + 5) = v39;
        v34 += 2;
        --v33;
      }

      while (v33);
    }
  }

  else
  {
    v32 = v4;
  }

  *(v0 + 440) = v32;
  v43 = *(v0 + 408);
  v45 = *(v0 + 384);
  v44 = *(v0 + 392);
  sub_27237749C();
  swift_allocObject();
  *(v0 + 448) = sub_27237748C();
  v46 = sub_2722C389C();
  *(v0 + 456) = v46;
  v47 = *(v44 + 16);
  *(v0 + 464) = v47;
  *(v0 + 472) = (v44 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v47(v43, v46, v45);
  v48 = sub_27237725C();
  v49 = sub_272377E6C();
  v50 = os_log_type_enabled(v48, v49);
  v51 = *(v0 + 408);
  v53 = *(v0 + 384);
  v52 = *(v0 + 392);
  if (v50)
  {
    v54 = swift_slowAlloc();
    v182 = swift_slowAlloc();
    v55 = v182;
    *v54 = 136315138;

    v178 = v51;
    v57 = v32;
    v58 = MEMORY[0x2743C4C60](v56, MEMORY[0x277D837D0]);
    v60 = v59;

    v61 = sub_2721FFD04(v58, v60, &v182);

    *(v54 + 4) = v61;
    v32 = v57;
    _os_log_impl(&dword_2721E4000, v48, v49, "Setting bias: %s", v54, 0xCu);
    sub_2722039C8(v55);
    MEMORY[0x2743C69C0](v55, -1, -1);
    MEMORY[0x2743C69C0](v54, -1, -1);

    (*(v52 + 8))(v178, v53);
  }

  else
  {

    (*(v52 + 8))(v51, v53);
  }

  v62 = *(v0 + 184);
  sub_2721F065C(&qword_280881FD8, &qword_27237E418);
  v63 = (sub_2721F065C(&qword_280881FE0, &qword_27237E420) - 8);
  v64 = (*(*v63 + 80) + 32) & ~*(*v63 + 80);
  v65 = swift_allocObject();
  *(v65 + 16) = xmmword_27237AF80;
  v66 = v65 + v64;
  v67 = v63[14];
  sub_27237744C();
  *(v66 + v67) = v32;

  sub_272253380(v65);
  swift_setDeallocating();
  sub_2721F40F0(v66, &qword_280881FE0, &qword_27237E420);
  swift_deallocClassInstance();
  sub_27237742C();
  v68 = OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_stopped;
  v69 = OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_speechAPISpotterConfiguration;
  *(v0 + 480) = OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_stopped;
  *(v0 + 488) = v69;
  v70 = OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_inputStreamBuilder;
  *(v0 + 496) = OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_inputStream;
  *(v0 + 504) = v70;
  *(v0 + 512) = OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_speechAnalyzer;
  *(v0 + 520) = OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_speechAPITask;
  if (*(v62 + v68))
  {
LABEL_38:
    v143 = *(v0 + 160);

    *v143 = 1;

    v144 = *(v0 + 8);

    return v144();
  }

  else
  {
    *(v0 + 560) = *MEMORY[0x277CDCB08];
    v71 = MEMORY[0x277CDCB18];
    v72 = MEMORY[0x277CDCB10];
    v73 = MEMORY[0x277CDCAB0];
    v74 = MEMORY[0x277CDCAB8];
    v75 = MEMORY[0x277CDCAA8];
    *(v0 + 564) = *MEMORY[0x277CDCB28];
    *(v0 + 568) = *v71;
    *(v0 + 572) = *v72;
    *(v0 + 576) = *v73;
    *(v0 + 580) = *v74;
    *(v0 + 584) = *v75;
    *(v0 + 588) = *MEMORY[0x277D85778];
    while (1)
    {
      v161 = *(v0 + 588);
      v180 = *(v0 + 584);
      v150 = *(v0 + 576);
      v151 = *(v0 + 580);
      v76 = *(v0 + 572);
      v148 = *(v0 + 564);
      v149 = *(v0 + 568);
      v147 = *(v0 + 560);
      v172 = *(v0 + 496);
      v175 = *(v0 + 504);
      v77 = *(v0 + 488);
      v78 = *(v0 + 368);
      v79 = *(v0 + 360);
      v157 = *(v0 + 352);
      v163 = *(v0 + 344);
      v165 = *(v0 + 336);
      v155 = *(v0 + 328);
      v168 = *(v0 + 320);
      v170 = *(v0 + 312);
      v152 = *(v0 + 296);
      v153 = *(v0 + 288);
      v154 = *(v0 + 304);
      v159 = *(v0 + 280);
      v166 = *(v0 + 264);
      v179 = *(v0 + 256);
      v80 = *(v0 + 184);
      v81 = *(**(v80 + v77) + 288);

      v83 = v81(v82);

      sub_272376E9C();

      v84 = *(**(v80 + v77) + 168);

      v84(v85);

      v86 = sub_27237768C();
      (*(*(v86 - 8) + 56))(v78, 0, 1, v86);
      v87 = *(**(v80 + v77) + 264);

      v87(v88);

      v89 = sub_27237732C();
      (*(*(v89 - 8) + 56))(v79, 0, 1, v89);
      sub_2721F065C(&qword_280881FE8, &qword_27237E428);
      v90 = sub_27237737C();
      v91 = *(v90 - 8);
      v92 = *(v91 + 72);
      v93 = (*(v91 + 80) + 32) & ~*(v91 + 80);
      v94 = swift_allocObject();
      *(v94 + 16) = xmmword_27237AF60;
      v95 = v94 + v93;
      v96 = *(v91 + 104);
      v96(v95, v147, v90);
      v96(v95 + v92, v148, v90);
      v96(v95 + 2 * v92, v149, v90);
      v96(v95 + 3 * v92, v76, v90);
      sub_272253568(v94);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      sub_2721F065C(&qword_280881FF0, &unk_27237E430);
      v97 = sub_27237733C();
      v98 = *(v97 - 8);
      v99 = *(v98 + 72);
      v100 = (*(v98 + 80) + 32) & ~*(v98 + 80);
      v101 = swift_allocObject();
      *(v101 + 16) = xmmword_27237AFB0;
      v102 = v101 + v100;
      v103 = *(v98 + 104);
      v103(v102, v150, v97);
      v103(v102 + v99, v151, v97);
      v103(v102 + 2 * v99, v180, v97);
      sub_272253888(v101);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      sub_2723773AC();
      swift_allocObject();
      v181 = sub_27237739C();
      *(v0 + 528) = v181;
      sub_2723773DC();
      (*(v152 + 104))(v154, v161, v153);
      sub_272377C4C();
      (*(v152 + 8))(v154, v153);
      (*(v163 + 32))(v159, v157, v165);
      (*(v163 + 56))(v159, 0, 1, v165);
      (*(v168 + 32))(v166, v155, v170);
      (*(v168 + 56))(v166, 0, 1, v170);
      swift_beginAccess();
      sub_27221D3B4(v159, v80 + v172, &qword_280881F98, &qword_27237E358);
      swift_endAccess();
      swift_beginAccess();
      sub_27221D3B4(v166, v80 + v175, &qword_280881F80, &qword_27237E338);
      swift_endAccess();
      sub_2721F07F4(v80 + v175, v179, &qword_280881F80, &qword_27237E338);
      if ((*(v168 + 48))(v179, 1, v170))
      {
        sub_2721F40F0(*(v0 + 256), &qword_280881F80, &qword_27237E338);
      }

      else
      {
        v105 = *(v0 + 320);
        v104 = *(v0 + 328);
        v106 = *(v0 + 312);
        v107 = *(v0 + 256);
        (*(v105 + 16))(v104, v107, v106);
        sub_2721F40F0(v107, &qword_280881F80, &qword_27237E338);
        sub_272377C5C();
        (*(v105 + 8))(v104, v106);
      }

      v108 = *(v0 + 496);
      v109 = *(v0 + 336);
      v110 = *(v0 + 344);
      v111 = *(v0 + 272);
      v112 = *(v0 + 184);
      sub_2723772EC();
      sub_2721F07F4(v112 + v108, v111, &qword_280881F98, &qword_27237E358);
      v113 = (*(v110 + 48))(v111, 1, v109);
      if (v113 == 1)
      {
        __break(1u);
        return MEMORY[0x282200430](v113, v114, v115, v116, v117);
      }

      v167 = *(v0 + 520);
      v156 = *(v0 + 512);
      v118 = *(v0 + 488);
      v176 = *(v0 + 464);
      v169 = *(v0 + 400);
      v171 = *(v0 + 384);
      v173 = *(v0 + 456);
      v119 = *(v0 + 240);
      v158 = *(v0 + 232);
      v162 = *(v0 + 224);
      v164 = *(v0 + 208);
      v120 = *(v0 + 184);
      v121 = *(v0 + 192);
      v160 = *(v0 + 176);
      sub_2723772DC();
      sub_2721F065C(&qword_280881FF8, &qword_272381B90);
      v122 = swift_allocObject();
      *(v122 + 16) = xmmword_27237AF80;
      v123 = sub_272253DFC(&qword_280882000, MEMORY[0x277CDCB98], MEMORY[0x277CDCB88]);
      *(v122 + 32) = v181;
      *(v122 + 40) = v123;
      v124 = *(**&v120[v118] + 312);
      v125 = v121;

      v124(v126);

      v127 = sub_2723774DC();
      (*(*(v127 - 8) + 56))(v119, 0, 1, v127);
      sub_2722199BC(&qword_280882008, &qword_280881F50, &unk_272381B70, MEMORY[0x277D857C0]);

      *&v120[v156] = sub_2723772CC();

      v128 = sub_272377C3C();
      (*(*(v128 - 8) + 56))(v158, 1, 1, v128);
      sub_272216374(v160, v162);
      v129 = (*(v164 + 80) + 48) & ~*(v164 + 80);
      v130 = swift_allocObject();
      v130[2] = 0;
      v130[3] = 0;
      v130[4] = v181;
      v130[5] = v120;
      sub_2722164B8(v162, v130 + v129);

      v131 = v120;
      *&v120[v167] = sub_27224C3F0(0, 0, v158, &unk_27237E448, v130, MEMORY[0x277D839B0]);

      v176(v169, v173, v171);
      v132 = sub_27237725C();
      v133 = sub_272377E7C();
      if (os_log_type_enabled(v132, v133))
      {
        v134 = swift_slowAlloc();
        *v134 = 0;
        _os_log_impl(&dword_2721E4000, v132, v133, "Speech API actively listening", v134, 2u);
        MEMORY[0x2743C69C0](v134, -1, -1);
      }

      v135 = *(v0 + 520);
      v137 = *(v0 + 392);
      v136 = *(v0 + 400);
      v138 = *(v0 + 384);
      v139 = *(v0 + 184);

      (*(v137 + 8))(v136, v138);
      sub_272377F6C();
      v140 = *(v139 + v135);
      *(v0 + 536) = v140;
      if (v140)
      {
        break;
      }

      v141 = *(v0 + 480);
      v142 = *(v0 + 184);

      if (*(v142 + v141))
      {
        goto LABEL_38;
      }
    }

    v146 = swift_task_alloc();
    *(v0 + 544) = v146;
    v116 = sub_2721F065C(&qword_280881A38, &unk_27237CA20);
    *v146 = v0;
    v146[1] = sub_27224843C;
    v115 = MEMORY[0x277D839B0];
    v117 = MEMORY[0x277D84950];
    v113 = v0 + 592;
    v114 = v140;

    return MEMORY[0x282200430](v113, v114, v115, v116, v117);
  }
}

uint64_t sub_27224843C()
{
  *(*v1 + 552) = v0;

  if (v0)
  {
    v2 = sub_2722492B4;
  }

  else
  {
    v2 = sub_272248570;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_272248570()
{
  v1 = *(v0 + 480);
  v2 = *(v0 + 184);

  if (*(v2 + v1))
  {
LABEL_10:
    v70 = *(v0 + 160);

    *v70 = 1;

    v71 = *(v0 + 8);

    return v71();
  }

  else
  {
    while (1)
    {
      v88 = *(v0 + 588);
      v104 = *(v0 + 584);
      v77 = *(v0 + 576);
      v78 = *(v0 + 580);
      v3 = *(v0 + 572);
      v75 = *(v0 + 564);
      v76 = *(v0 + 568);
      v74 = *(v0 + 560);
      v99 = *(v0 + 496);
      v101 = *(v0 + 504);
      v4 = *(v0 + 488);
      v5 = *(v0 + 368);
      v6 = *(v0 + 360);
      v84 = *(v0 + 352);
      v90 = *(v0 + 344);
      v92 = *(v0 + 336);
      v82 = *(v0 + 328);
      v95 = *(v0 + 320);
      v97 = *(v0 + 312);
      v79 = *(v0 + 296);
      v80 = *(v0 + 288);
      v81 = *(v0 + 304);
      v86 = *(v0 + 280);
      v93 = *(v0 + 264);
      v103 = *(v0 + 256);
      v7 = *(v0 + 184);
      v8 = *(**(v7 + v4) + 288);

      v10 = v8(v9);

      sub_272376E9C();

      v11 = *(**(v7 + v4) + 168);

      v11(v12);

      v13 = sub_27237768C();
      (*(*(v13 - 8) + 56))(v5, 0, 1, v13);
      v14 = *(**(v7 + v4) + 264);

      v14(v15);

      v16 = sub_27237732C();
      (*(*(v16 - 8) + 56))(v6, 0, 1, v16);
      sub_2721F065C(&qword_280881FE8, &qword_27237E428);
      v17 = sub_27237737C();
      v18 = *(v17 - 8);
      v19 = *(v18 + 72);
      v20 = (*(v18 + 80) + 32) & ~*(v18 + 80);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_27237AF60;
      v22 = v21 + v20;
      v23 = *(v18 + 104);
      v23(v22, v74, v17);
      v23(v22 + v19, v75, v17);
      v23(v22 + 2 * v19, v76, v17);
      v23(v22 + 3 * v19, v3, v17);
      sub_272253568(v21);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      sub_2721F065C(&qword_280881FF0, &unk_27237E430);
      v24 = sub_27237733C();
      v25 = *(v24 - 8);
      v26 = *(v25 + 72);
      v27 = (*(v25 + 80) + 32) & ~*(v25 + 80);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_27237AFB0;
      v29 = v28 + v27;
      v30 = *(v25 + 104);
      v30(v29, v77, v24);
      v30(v29 + v26, v78, v24);
      v30(v29 + 2 * v26, v104, v24);
      sub_272253888(v28);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      sub_2723773AC();
      swift_allocObject();
      v105 = sub_27237739C();
      *(v0 + 528) = v105;
      sub_2723773DC();
      (*(v79 + 104))(v81, v88, v80);
      sub_272377C4C();
      (*(v79 + 8))(v81, v80);
      (*(v90 + 32))(v86, v84, v92);
      (*(v90 + 56))(v86, 0, 1, v92);
      (*(v95 + 32))(v93, v82, v97);
      (*(v95 + 56))(v93, 0, 1, v97);
      swift_beginAccess();
      sub_27221D3B4(v86, v7 + v99, &qword_280881F98, &qword_27237E358);
      swift_endAccess();
      swift_beginAccess();
      sub_27221D3B4(v93, v7 + v101, &qword_280881F80, &qword_27237E338);
      swift_endAccess();
      sub_2721F07F4(v7 + v101, v103, &qword_280881F80, &qword_27237E338);
      if ((*(v95 + 48))(v103, 1, v97))
      {
        sub_2721F40F0(*(v0 + 256), &qword_280881F80, &qword_27237E338);
      }

      else
      {
        v32 = *(v0 + 320);
        v31 = *(v0 + 328);
        v33 = *(v0 + 312);
        v34 = *(v0 + 256);
        (*(v32 + 16))(v31, v34, v33);
        sub_2721F40F0(v34, &qword_280881F80, &qword_27237E338);
        sub_272377C5C();
        (*(v32 + 8))(v31, v33);
      }

      v35 = *(v0 + 496);
      v36 = *(v0 + 336);
      v37 = *(v0 + 344);
      v38 = *(v0 + 272);
      v39 = *(v0 + 184);
      sub_2723772EC();
      sub_2721F07F4(v39 + v35, v38, &qword_280881F98, &qword_27237E358);
      v40 = (*(v37 + 48))(v38, 1, v36);
      if (v40 == 1)
      {
        __break(1u);
        return MEMORY[0x282200430](v40, v41, v42, v43, v44);
      }

      v94 = *(v0 + 520);
      v83 = *(v0 + 512);
      v45 = *(v0 + 488);
      v102 = *(v0 + 464);
      v96 = *(v0 + 400);
      v98 = *(v0 + 384);
      v100 = *(v0 + 456);
      v46 = *(v0 + 240);
      v85 = *(v0 + 232);
      v89 = *(v0 + 224);
      v91 = *(v0 + 208);
      v47 = *(v0 + 184);
      v48 = *(v0 + 192);
      v87 = *(v0 + 176);
      sub_2723772DC();
      sub_2721F065C(&qword_280881FF8, &qword_272381B90);
      v49 = swift_allocObject();
      *(v49 + 16) = xmmword_27237AF80;
      v50 = sub_272253DFC(&qword_280882000, MEMORY[0x277CDCB98], MEMORY[0x277CDCB88]);
      *(v49 + 32) = v105;
      *(v49 + 40) = v50;
      v51 = *(**&v47[v45] + 312);
      v52 = v48;

      v51(v53);

      v54 = sub_2723774DC();
      (*(*(v54 - 8) + 56))(v46, 0, 1, v54);
      sub_2722199BC(&qword_280882008, &qword_280881F50, &unk_272381B70, MEMORY[0x277D857C0]);

      *&v47[v83] = sub_2723772CC();

      v55 = sub_272377C3C();
      (*(*(v55 - 8) + 56))(v85, 1, 1, v55);
      sub_272216374(v87, v89);
      v56 = (*(v91 + 80) + 48) & ~*(v91 + 80);
      v57 = swift_allocObject();
      v57[2] = 0;
      v57[3] = 0;
      v57[4] = v105;
      v57[5] = v47;
      sub_2722164B8(v89, v57 + v56);

      v58 = v47;
      *&v47[v94] = sub_27224C3F0(0, 0, v85, &unk_27237E448, v57, MEMORY[0x277D839B0]);

      v102(v96, v100, v98);
      v59 = sub_27237725C();
      v60 = sub_272377E7C();
      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        *v61 = 0;
        _os_log_impl(&dword_2721E4000, v59, v60, "Speech API actively listening", v61, 2u);
        MEMORY[0x2743C69C0](v61, -1, -1);
      }

      v62 = *(v0 + 520);
      v64 = *(v0 + 392);
      v63 = *(v0 + 400);
      v65 = *(v0 + 384);
      v66 = *(v0 + 184);

      (*(v64 + 8))(v63, v65);
      sub_272377F6C();
      v67 = *(v66 + v62);
      *(v0 + 536) = v67;
      if (v67)
      {
        break;
      }

      v68 = *(v0 + 480);
      v69 = *(v0 + 184);

      if (*(v69 + v68))
      {
        goto LABEL_10;
      }
    }

    v73 = swift_task_alloc();
    *(v0 + 544) = v73;
    v43 = sub_2721F065C(&qword_280881A38, &unk_27237CA20);
    *v73 = v0;
    v73[1] = sub_27224843C;
    v42 = MEMORY[0x277D839B0];
    v44 = MEMORY[0x277D84950];
    v40 = v0 + 592;
    v41 = v67;

    return MEMORY[0x282200430](v40, v41, v42, v43, v44);
  }
}

uint64_t sub_2722492B4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_272249410(uint64_t a1)
{
  v2 = sub_27237728C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v32 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v32 - v10;
  v12 = sub_2721F065C(&qword_280882010, &unk_27237E450);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v32 - v14;
  (*(v13 + 16))(&v32 - v14, a1, v12);
  v16 = (*(v13 + 88))(v15, v12);
  if (v16 == *MEMORY[0x277D85738])
  {
    v17 = sub_2722C389C();
    (*(v3 + 16))(v11, v17, v2);
    v18 = sub_27237725C();
    v19 = sub_272377E7C();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_2721E4000, v18, v19, "Speech API Input stream finished successfully.", v20, 2u);
      MEMORY[0x2743C69C0](v20, -1, -1);
    }

    return (*(v3 + 8))(v11, v2);
  }

  else
  {
    v22 = v16;
    v23 = *MEMORY[0x277D85740];
    v24 = sub_2722C389C();
    v25 = *(v3 + 16);
    if (v22 == v23)
    {
      v25(v9, v24, v2);
      v26 = sub_27237725C();
      v27 = sub_272377E7C();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_2721E4000, v26, v27, "Speech API Input stream was cancelled.", v28, 2u);
        MEMORY[0x2743C69C0](v28, -1, -1);
      }

      return (*(v3 + 8))(v9, v2);
    }

    else
    {
      v25(v6, v24, v2);
      v29 = sub_27237725C();
      v30 = sub_272377E7C();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_2721E4000, v29, v30, "Speech API Unknown termination reason.", v31, 2u);
        MEMORY[0x2743C69C0](v31, -1, -1);
      }

      (*(v3 + 8))(v6, v2);
      return (*(v13 + 8))(v15, v12);
    }
  }
}

uint64_t sub_2722497F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[58] = a5;
  v6[59] = a6;
  v6[56] = a1;
  v6[57] = a4;
  sub_2721F065C(&qword_280881F80, &qword_27237E338);
  v6[60] = swift_task_alloc();
  type metadata accessor for VARuntimeParameters(0);
  v6[61] = swift_task_alloc();
  v7 = sub_27237728C();
  v6[62] = v7;
  v6[63] = *(v7 - 8);
  v6[64] = swift_task_alloc();
  v6[65] = swift_task_alloc();
  v6[66] = swift_task_alloc();
  v6[67] = swift_task_alloc();
  v6[68] = swift_task_alloc();
  v6[69] = swift_task_alloc();
  v6[70] = sub_272376C2C();
  v6[71] = swift_task_alloc();
  v8 = sub_272376C3C();
  v6[72] = v8;
  v6[73] = *(v8 - 8);
  v6[74] = swift_task_alloc();
  v6[75] = swift_task_alloc();
  v9 = sub_2723773FC();
  v6[76] = v9;
  v6[77] = *(v9 - 8);
  v6[78] = swift_task_alloc();
  v6[79] = swift_task_alloc();
  v10 = sub_27237736C();
  v6[80] = v10;
  v6[81] = *(v10 - 8);
  v6[82] = swift_task_alloc();
  sub_2721F065C(&qword_280882018, &unk_27237EBF0);
  v6[83] = swift_task_alloc();
  v6[84] = sub_2721F065C(&qword_280882020, &unk_27237E460);
  v6[85] = swift_task_alloc();
  v11 = sub_2721F065C(&qword_280882028, &qword_27237EC00);
  v6[86] = v11;
  v6[87] = *(v11 - 8);
  v6[88] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_272249B90, 0, 0);
}

uint64_t sub_272249B90()
{
  sub_27237738C();
  *(v0 + 712) = swift_getOpaqueTypeConformance2();
  sub_272377D0C();
  *(v0 + 720) = OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_gotPartialResult;
  *(v0 + 728) = OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_speechAPISpotterConfiguration;
  *(v0 + 736) = OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_audioDuringSpeech;
  *(v0 + 744) = OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_asrDelegate;
  *(v0 + 752) = OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_timingInfo;
  *(v0 + 760) = OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_gotFinalResult;
  *(v0 + 768) = OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_feedEmptyBufferTillFinalResultTask;
  *(v0 + 776) = OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_speechEnded;
  *(v0 + 784) = OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_inputStreamBuilder;
  *(v0 + 792) = OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_speechAnalyzer;
  swift_beginAccess();
  *(v0 + 872) = *MEMORY[0x277CDCBB8];
  *(v0 + 876) = *MEMORY[0x277CDCBA0];
  *(v0 + 882) = 0;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v2 = swift_task_alloc();
  *(v0 + 800) = v2;
  *v2 = v0;
  v2[1] = sub_272249D70;
  v3 = *(v0 + 688);
  v4 = *(v0 + 664);

  return MEMORY[0x282200310](v4, 0, 0, v0 + 408, v3, AssociatedConformanceWitness);
}

uint64_t sub_272249D70()
{
  *(*v1 + 808) = v0;

  if (v0)
  {
    v2 = sub_27224C0C0;
  }

  else
  {
    v2 = sub_272249E84;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_272249E84()
{
  v265 = v0;
  v1 = *(v0 + 664);
  v2 = *(v0 + 648);
  v3 = *(v0 + 640);
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    v4 = *(v0 + 448);
    (*(*(v0 + 696) + 8))(*(v0 + 704), *(v0 + 688));
    *v4 = 1;

    v5 = *(v0 + 8);
LABEL_3:

    return v5();
  }

  v261 = *(v0 + 876);
  v7 = *(v0 + 872);
  v8 = *(v0 + 632);
  v9 = *(v0 + 624);
  v10 = *(v0 + 616);
  v11 = *(v0 + 608);
  (*(v2 + 32))(*(v0 + 656), v1, v3);
  sub_27237734C();
  v12 = *(v10 + 104);
  v12(v9, v7, v11);
  v13 = sub_2723773EC();
  v14 = *(v10 + 8);
  v14(v9, v11);
  v14(v8, v11);
  sub_27237734C();
  v12(v9, v261, v11);
  v15 = sub_2723773EC();
  v14(v9, v11);
  v16 = (v14)(v8, v11);
  v238 = v15;
  v239 = v13;
  v17 = v13 | v15;
  if (((v13 | v15) & 1) == 0)
  {
    v18 = *(**(*(v0 + 464) + *(v0 + 720)) + 168);

    v18(1);
  }

  v19 = *(v0 + 882);
  *(v0 + 440) = 0;
  v20 = *(MEMORY[0x2743C44B0](v16) + 16);

  if (!v20 || (v19 & 1) != 0)
  {
    (*(*(v0 + 648) + 8))(*(v0 + 656), *(v0 + 640));
    v36 = *(v0 + 882);
LABEL_97:
    *(v0 + 882) = v36;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v219 = swift_task_alloc();
    *(v0 + 800) = v219;
    *v219 = v0;
    v219[1] = sub_272249D70;
    v220 = *(v0 + 688);
    v221 = *(v0 + 664);

    return MEMORY[0x282200310](v221, 0, 0, v0 + 408, v220, AssociatedConformanceWitness);
  }

  v256 = v17;
  *(v0 + 400) = MEMORY[0x277D84F90];
  v21 = MEMORY[0x2743C44B0]();
  v22 = *(v21 + 16);
  if (v22)
  {
    v23 = *(v0 + 584);
    v24 = v21 + ((*(v23 + 80) + 32) & ~*(v23 + 80));
    v262 = *(v23 + 72);
    v25 = *(v23 + 16);
    v26 = MEMORY[0x277D84F90];
    do
    {
      v27 = *(v0 + 600);
      v28 = *(v0 + 584);
      v29 = *(v0 + 576);
      v25(v27, v24, v29);
      sub_272376C1C();
      (*(v28 + 8))(v27, v29);
      sub_272253DFC(&qword_280882030, MEMORY[0x277CC8B30], MEMORY[0x277CC8B40]);
      v30 = sub_272377A3C();
      v32 = v31;
      swift_beginAccess();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = sub_2721FFBF8(0, *(v26 + 2) + 1, 1, v26);
      }

      v34 = *(v26 + 2);
      v33 = *(v26 + 3);
      if (v34 >= v33 >> 1)
      {
        v26 = sub_2721FFBF8((v33 > 1), v34 + 1, 1, v26);
      }

      *(v26 + 2) = v34 + 1;
      v35 = &v26[16 * v34];
      *(v35 + 4) = v30;
      *(v35 + 5) = v32;
      *(v0 + 400) = v26;
      swift_endAccess();
      v24 += v262;
      --v22;
    }

    while (v22);
    v259 = v26;
  }

  else
  {

    v259 = MEMORY[0x277D84F90];
  }

  v37 = *(v0 + 552);
  v38 = *(v0 + 504);
  v244 = sub_2722C389C();
  v245 = *(v38 + 16);
  v245(v37);
  v39 = sub_27237725C();
  v40 = sub_272377E6C();
  v41 = os_log_type_enabled(v39, v40);
  v42 = *(v0 + 552);
  v44 = *(v0 + 496);
  v43 = *(v0 + 504);
  if (v41)
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    *v45 = 67109634;
    *(v45 + 4) = v239 & 1;
    *(v45 + 8) = 1024;
    *(v45 + 10) = v238 & 1;
    *(v45 + 14) = 2080;
    v264[0] = v46;

    v48 = MEMORY[0x2743C4C60](v47, MEMORY[0x277D837D0]);
    v50 = v49;

    v51 = sub_2721FFD04(v48, v50, v264);

    *(v45 + 16) = v51;
    _os_log_impl(&dword_2721E4000, v39, v40, "nBest[isFinal %{BOOL}d isFinalTerminal: %{BOOL}d]: %s", v45, 0x18u);
    sub_2722039C8(v46);
    MEMORY[0x2743C69C0](v46, -1, -1);
    MEMORY[0x2743C69C0](v45, -1, -1);
  }

  else
  {
  }

  v243 = *(v43 + 8);
  v52 = v243(v42, v44);
  v53 = MEMORY[0x2743C44B0](v52);
  if (!*(v53 + 16))
  {
    goto LABEL_105;
  }

  v54 = *(v0 + 728);
  v55 = *(v0 + 592);
  v56 = *(v0 + 584);
  v57 = *(v0 + 576);
  v58 = *(v0 + 464);
  (*(v56 + 16))(v55, v53 + ((*(v56 + 80) + 32) & ~*(v56 + 80)), v57);

  sub_272376C1C();
  (*(v56 + 8))(v55, v57);
  sub_272253DFC(&qword_280882030, MEMORY[0x277CC8B30], MEMORY[0x277CC8B40]);
  sub_272377A3C();
  v59 = sub_2723778AC();
  v61 = v60;

  *(v0 + 816) = v61;
  v62 = *(**(v58 + v54) + 144);

  v62(v264, v63);

  *(v0 + 881) = v264[0];
  *(v0 + 880) = 2;
  sub_272253DA8();
  sub_272377A8C();
  sub_272377A8C();
  v64 = *(v0 + 464);
  if (*(v0 + 384) != *(v0 + 392) || (v256 & 1) == 0)
  {
    v65 = 0;
  }

  else
  {
    v65 = *(v64 + *(v0 + 736));
    v66 = v65;
  }

  *(v0 + 824) = v65;
  v232 = v65;
  if (*(v64 + *(v0 + 744)))
  {
    type metadata accessor for VAASRResult();
    *(v0 + 432) = v259;

    sub_2721F065C(&qword_2808817F8, &unk_27237CA80);
    sub_2722199BC(&qword_280881830, &qword_2808817F8, &unk_27237CA80, MEMORY[0x277D83958]);
    v67 = sub_2723777CC();
    v69 = v68;

    v70 = v65;
    v71 = sub_2722E2418(v67, v69, v239 & 1, v238 & 1, 0, 0, v65);
    swift_beginAccess();
    v72 = v71;
    *(v0 + 440) = v71;
    v64 = *(v0 + 464);
  }

  else
  {
    v72 = 0;
  }

  v73 = *(v64 + *(v0 + 752));
  v74 = MEMORY[0x277D85000];
  if (v73)
  {
    v75 = v72;
    v76 = *((*MEMORY[0x277D85000] & *v73) + 0x1F8);
    v77 = v73;
    v76(v59, v61, v239 & 1);

    v72 = v75;
  }

  v78 = v259;
  v240 = v72;
  if ((v256 & 1) == 0 && *(*(v0 + 472) + 77) != 1)
  {
    v199 = *(**(*(v0 + 464) + *(v0 + 720)) + 160);

    LOBYTE(v199) = v199(v200);

    if (v199)
    {
      v36 = 0;
    }

    else
    {
      (v245)(*(v0 + 512), v244, *(v0 + 496));
      v201 = sub_27237725C();
      v202 = sub_272377E7C();
      if (os_log_type_enabled(v201, v202))
      {
        v203 = swift_slowAlloc();
        *v203 = 0;
        _os_log_impl(&dword_2721E4000, v201, v202, "Got first partial result after speech ended", v203, 2u);
        MEMORY[0x2743C69C0](v203, -1, -1);
      }

      v204 = *(v0 + 760);
      v205 = *(v0 + 720);
      v206 = *(v0 + 512);
      v207 = *(v0 + 496);
      v208 = *(v0 + 464);

      v243(v206, v207);
      v209 = *(**(v208 + v205) + 168);

      v209(1);

      v210 = *(**(v208 + v204) + 168);

      v210(0);

      v36 = 0;
    }

LABEL_93:
    v211 = *(*(v0 + 464) + *(v0 + 744));
    if (!v211)
    {
      v217 = *(v0 + 824);
      (*(*(v0 + 648) + 8))(*(v0 + 656), *(v0 + 640));

      goto LABEL_97;
    }

    if (v240)
    {
      v212 = *(v0 + 824);
      v213 = *(v0 + 656);
      v214 = *(v0 + 648);
      v215 = *(v0 + 640);
      swift_unknownObjectRetain();
      v216 = v240;

      [v211 speechResultsWithResult_];

      swift_unknownObjectRelease();
      (*(v214 + 8))(v213, v215);

      goto LABEL_97;
    }

LABEL_108:
    __break(1u);
    return MEMORY[0x28212BBF0]();
  }

  v79 = *(v259 + 2);
  v80 = *(v0 + 808);
  *(v0 + 840) = v259;
  *(v0 + 832) = v72;

  if (!v79)
  {
    goto LABEL_74;
  }

  v81 = 0;
  v253 = -v79;
  v82 = v259 + 40;
  v231 = v259 + 40;
  while (2)
  {
    v83 = &v82[16 * v81];
    v84 = v81 + 1;
    v260 = v78;
    while (1)
    {
      if ((v84 - 1) >= *(v78 + 2))
      {
        __break(1u);
LABEL_104:
        __break(1u);
LABEL_105:
        __break(1u);
LABEL_106:
        __break(1u);
        goto LABEL_107;
      }

      v257 = *(v83 - 1);
      v85 = *((*v74 & **(v0 + 464)) + 0x120);
      v263 = *v83;

      v87 = v85(v86);
      if (!v87)
      {
        goto LABEL_106;
      }

      v88 = *(v0 + 488);
      (*(*v87 + 312))(v87);

      v89 = VARuntimeParameters.keywordsNoThresholds.getter();
      sub_272216BD8(v88);
      v90 = *(v89 + 2);
      if (v90)
      {
        break;
      }

      ++v84;
      v83 += 2;
      v78 = v260;
      if (v253 + v84 == 1)
      {
        goto LABEL_74;
      }
    }

    swift_beginAccess();
    v91 = 0;
    v230 = v253 + v84;
    v92 = (v89 + 40);
    v236 = v84;
    v237 = v89;
    v235 = v90;
    do
    {
      if (v91 >= *(v89 + 2))
      {
        goto LABEL_104;
      }

      v247 = v91;
      v252 = v80;
      v95 = *(v0 + 544);
      v248 = *(v0 + 496);
      v96 = *(v92 - 1);
      v97 = *v92;
      v246 = v92;
      *(v0 + 208) = v96;
      *(v0 + 216) = v97;
      *(v0 + 224) = 95;
      *(v0 + 232) = 0xE100000000000000;
      *(v0 + 240) = 32;
      *(v0 + 248) = 0xE100000000000000;
      sub_272203AC4();

      v254 = sub_2723780FC();
      v99 = v98;
      v249 = v97;
      v250 = v96;
      *(v0 + 192) = v96;
      *(v0 + 200) = v97;
      *(v0 + 256) = 95;
      *(v0 + 264) = 0xE100000000000000;
      *(v0 + 272) = 0;
      *(v0 + 280) = 0xE000000000000000;
      v100 = sub_2723780FC();
      v102 = v101;
      (v245)(v95, v244, v248);
      v103 = v263;

      v104 = sub_27237725C();
      v105 = sub_272377E7C();

      v106 = os_log_type_enabled(v104, v105);
      v107 = *(v0 + 544);
      v108 = *(v0 + 496);
      v255 = v102;
      if (v106)
      {
        v109 = swift_slowAlloc();
        v234 = v108;
        v110 = swift_slowAlloc();
        v264[0] = v110;
        *v109 = 136315650;
        *(v109 + 4) = sub_2721FFD04(v254, v99, v264);
        *(v109 + 12) = 2080;
        *(v109 + 14) = sub_2721FFD04(v100, v255, v264);
        *(v109 + 22) = 2080;
        v111 = sub_2723778AC();
        v233 = v107;
        v113 = sub_2721FFD04(v111, v112, v264);

        *(v109 + 24) = v113;
        _os_log_impl(&dword_2721E4000, v104, v105, "Looking for %s or %s in %s", v109, 0x20u);
        swift_arrayDestroy();
        v114 = v100;
        v115 = v99;
        v116 = v257;
        MEMORY[0x2743C69C0](v110, -1, -1);
        v117 = v255;
        MEMORY[0x2743C69C0](v109, -1, -1);

        v243(v233, v234);
      }

      else
      {

        v243(v107, v108);
        v114 = v100;
        v115 = v99;
        v116 = v257;
        v117 = v102;
      }

      sub_2721F065C(&qword_280882040, &unk_27237E470);
      v118 = swift_allocObject();
      *(v118 + 16) = xmmword_27237AF80;
      *(v0 + 304) = 0;
      *(v0 + 312) = 0xE000000000000000;
      sub_27237820C();

      strcpy((v0 + 288), "Looking for ");
      *(v0 + 302) = -4864;
      MEMORY[0x2743C4AD0](v254, v115);
      MEMORY[0x2743C4AD0](0x2220726F2022, 0xE600000000000000);
      MEMORY[0x2743C4AD0](v114, v117);
      MEMORY[0x2743C4AD0](0x22206E692022, 0xE600000000000000);
      v119 = sub_2723778AC();
      MEMORY[0x2743C4AD0](v119);

      MEMORY[0x2743C4AD0](34, 0xE100000000000000);
      v120 = *(v0 + 288);
      v121 = *(v0 + 296);
      *(v118 + 56) = MEMORY[0x277D837D0];
      *(v118 + 32) = v120;
      *(v118 + 40) = v121;
      sub_27237872C();

      if (sub_2722155A0(v254, v115, v116, v263))
      {
        v122 = 1;
        v123 = v255;
      }

      else
      {
        v123 = v255;
        v122 = sub_2722155A0(v114, v255, v116, v263);
      }

      v241 = v114;
      v124 = v123;
      if (sub_2723779FC())
      {
        v125 = 1;
      }

      else
      {
        v125 = sub_2723779FC();
      }

      v126 = sub_272241A18();
      v127 = sub_272241A18();
      v128 = sub_272324094();
      v129 = sub_272324094();
      sub_27232409C(v250, v249, v128, v129, v122 & 1, v125 & 1, 1, 0, v0 + 16, 1.0, v126, v127, 0);
      *(v0 + 320) = sub_2723778AC();
      *(v0 + 328) = v130;
      *(v0 + 336) = v254;
      *(v0 + 344) = v115;
      v131 = sub_27237813C();

      if (v131)
      {

LABEL_58:
        v134 = *(v0 + 464);
        v242 = v115;
        if (*(v134 + *(v0 + 744)))
        {
          if (!*(v260 + 2) || (v116 != *(v260 + 4) || v263 != *(v260 + 5)) && (sub_27237865C() & 1) == 0)
          {
            (v245)(*(v0 + 536), v244, *(v0 + 496));

            v135 = sub_27237725C();
            v136 = sub_272377E7C();

            v137 = os_log_type_enabled(v135, v136);
            v138 = *(v0 + 536);
            v139 = *(v0 + 496);
            if (v137)
            {
              v140 = swift_slowAlloc();
              v251 = v139;
              v141 = swift_slowAlloc();
              v264[0] = v141;
              *v140 = 136315394;
              *(v140 + 4) = sub_2721FFD04(v257, v263, v264);
              *(v140 + 12) = 2080;

              v143 = MEMORY[0x2743C4C60](v142, MEMORY[0x277D837D0]);
              v145 = v144;

              v146 = sub_2721FFD04(v143, v145, v264);

              *(v140 + 14) = v146;
              _os_log_impl(&dword_2721E4000, v135, v136, "Picked final %s from n-best: %s", v140, 0x16u);
              swift_arrayDestroy();
              v116 = v257;
              MEMORY[0x2743C69C0](v141, -1, -1);
              MEMORY[0x2743C69C0](v140, -1, -1);

              v243(v138, v251);
            }

            else
            {

              v243(v138, v139);
            }

            v103 = v263;
          }

          type metadata accessor for VAASRResult();
          v157 = v232;

          v158 = sub_2722E2418(v116, v103, v239 & 1, v238 & 1, 0, 0, v232);
          *(v0 + 440) = v158;

          v134 = *(v0 + 464);
          v240 = v158;
        }

        v74 = MEMORY[0x277D85000];
        type metadata accessor for VAKeywordResult();
        sub_2721F065C(&qword_2808818B8, &qword_27237CAD0);
        v159 = swift_allocObject();
        v160 = *(v0 + 48);
        v161 = *(v0 + 64);
        v162 = *(v0 + 16);
        v159[3] = *(v0 + 32);
        v159[4] = v160;
        v163 = *(v0 + 80);
        v159[5] = v161;
        v159[6] = v163;
        v159[1] = xmmword_27237AF80;
        v159[2] = v162;
        v164 = VAKeywordResult.__allocating_init(detections:)(v159);
        *(v0 + 424) = v260;

        sub_2721F065C(&qword_2808817F8, &unk_27237CA80);
        sub_2722199BC(&qword_280881830, &qword_2808817F8, &unk_27237CA80, MEMORY[0x277D83958]);
        v165 = sub_2723777CC();
        v167 = v166;

        (*((*v74 & *v134) + 0x4F8))(v164, v116, v263, v165, v167, 1);
        if (v252)
        {
          v222 = *(v0 + 704);
          v223 = *(v0 + 696);
          v258 = *(v0 + 688);
          v224 = *(v0 + 656);
          v225 = *(v0 + 648);
          v226 = *(v0 + 640);

          (*(v225 + 8))(v224, v226);
LABEL_102:
          (*(v223 + 8))(v222, v258);

          v5 = *(v0 + 8);
          goto LABEL_3;
        }

        v168 = *(v0 + 752);
        v169 = *(v0 + 464);

        v170 = *(v169 + v168);
        if (v170)
        {
          v93 = *((*v74 & *v170) + 0x1E8);
          v94 = v170;
          v93(v254, v242);
        }

        else
        {
        }

        goto LABEL_44;
      }

      *(v0 + 352) = sub_2723778AC();
      *(v0 + 360) = v132;
      *(v0 + 368) = v241;
      *(v0 + 376) = v124;
      v133 = sub_27237813C();

      if (v133)
      {
        goto LABEL_58;
      }

      v147 = *(v0 + 464);

      *(v0 + 32) = 0;
      type metadata accessor for VAKeywordResult();
      sub_2721F065C(&qword_2808818B8, &qword_27237CAD0);
      v148 = swift_allocObject();
      v149 = *(v0 + 48);
      v150 = *(v0 + 64);
      v151 = *(v0 + 16);
      v148[3] = *(v0 + 32);
      v148[4] = v149;
      v152 = *(v0 + 80);
      v148[5] = v150;
      v148[6] = v152;
      v148[1] = xmmword_27237AF80;
      v148[2] = v151;
      v153 = VAKeywordResult.__allocating_init(detections:)(v148);
      *(v0 + 416) = v260;

      sub_2721F065C(&qword_2808817F8, &unk_27237CA80);
      sub_2722199BC(&qword_280881830, &qword_2808817F8, &unk_27237CA80, MEMORY[0x277D83958]);
      v154 = sub_2723777CC();
      v156 = v155;

      v74 = MEMORY[0x277D85000];
      (*((*MEMORY[0x277D85000] & *v147) + 0x4F8))(v153, v116, v263, v154, v156, 0);
      if (v252)
      {
        v222 = *(v0 + 704);
        v223 = *(v0 + 696);
        v258 = *(v0 + 688);
        v227 = *(v0 + 656);
        v228 = *(v0 + 648);
        v229 = *(v0 + 640);

        (*(v228 + 8))(v227, v229);
        goto LABEL_102;
      }

LABEL_44:
      v81 = v236;
      v89 = v237;
      v80 = 0;
      v91 = v247 + 1;
      v92 = v246 + 2;
    }

    while (v235 != v247 + 1);

    v80 = 0;
    v78 = v260;
    *(v0 + 840) = v260;
    *(v0 + 832) = v240;
    v82 = v231;
    if (v230)
    {
      continue;
    }

    break;
  }

LABEL_74:
  v171 = *(v0 + 768);
  v172 = *(v0 + 760);
  v173 = *(v0 + 464);

  v174 = *(**(v173 + v172) + 168);

  v174(1);

  if (*(v173 + v171))
  {
    (v245)(*(v0 + 528), v244, *(v0 + 496));

    v175 = sub_27237725C();
    v176 = sub_272377E6C();
    if (os_log_type_enabled(v175, v176))
    {
      v177 = swift_slowAlloc();
      v178 = swift_slowAlloc();
      *v177 = 138412290;
      *(v177 + 4) = v240;
      *v178 = v240;
      v179 = v240;
      _os_log_impl(&dword_2721E4000, v175, v176, "Got final, Cancelling task to feed audio till final result: %@", v177, 0xCu);
      sub_2721F40F0(v178, &qword_280881A40, &unk_27237D620);
      MEMORY[0x2743C69C0](v178, -1, -1);
      MEMORY[0x2743C69C0](v177, -1, -1);
    }

    v180 = *(v0 + 768);
    v181 = *(v0 + 528);
    v182 = *(v0 + 496);
    v183 = *(v0 + 464);

    v243(v181, v182);
    sub_272377CBC();

    *(v183 + v180) = 0;
  }

  v184 = *(**(*(v0 + 464) + *(v0 + 776)) + 160);

  LOBYTE(v184) = v184(v185);

  if ((v184 & 1) == 0)
  {
    (v245)(*(v0 + 520), v244, *(v0 + 496));
    v186 = sub_27237725C();
    v187 = sub_272377E7C();
    if (os_log_type_enabled(v186, v187))
    {
      v188 = swift_slowAlloc();
      *v188 = 0;
      _os_log_impl(&dword_2721E4000, v186, v187, "Got final result before speech ended", v188, 2u);
      MEMORY[0x2743C69C0](v188, -1, -1);
    }

    v189 = *(v0 + 520);
    v190 = *(v0 + 496);

    v243(v189, v190);
  }

  v191 = *(v0 + 480);
  sub_2721F07F4(*(v0 + 464) + *(v0 + 784), v191, &qword_280881F80, &qword_27237E338);
  v192 = sub_2721F065C(&qword_280881F58, &unk_27237E2F0);
  v193 = *(v192 - 8);
  if ((*(v193 + 48))(v191, 1, v192) == 1)
  {
LABEL_107:
    __break(1u);
    goto LABEL_108;
  }

  v194 = *(v0 + 792);
  v195 = *(v0 + 480);
  v196 = *(v0 + 464);
  sub_272377C7C();
  (*(v193 + 8))(v195, v192);
  v197 = *(v196 + v194);
  *(v0 + 848) = v197;
  if (!v197)
  {
    v36 = 1;
    goto LABEL_93;
  }

  v198 = swift_task_alloc();
  *(v0 + 856) = v198;
  *v198 = v0;
  v198[1] = sub_27224BDB4;

  return MEMORY[0x28212BBF0]();
}

uint64_t sub_27224BDB4()
{
  *(*v1 + 864) = v0;

  if (v0)
  {

    v2 = sub_27224C234;
  }

  else
  {

    v2 = sub_27224BEFC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_27224BEFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(v6 + 832);
  v8 = *(*(v6 + 464) + *(v6 + 744));
  if (v8)
  {
    if (!v7)
    {
      __break(1u);
      return MEMORY[0x282200310](a1, a2, a3, a4, a5, a6);
    }

    v9 = *(v6 + 824);
    v10 = *(v6 + 656);
    v11 = *(v6 + 648);
    v12 = *(v6 + 640);
    swift_unknownObjectRetain();
    v7 = v7;

    [v8 speechResultsWithResult_];

    swift_unknownObjectRelease();
    (*(v11 + 8))(v10, v12);
  }

  else
  {
    v13 = *(v6 + 824);
    (*(*(v6 + 648) + 8))(*(v6 + 656), *(v6 + 640), a3, a4, a5, a6);
  }

  *(v6 + 882) = 1;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v15 = swift_task_alloc();
  *(v6 + 800) = v15;
  *v15 = v6;
  v15[1] = sub_272249D70;
  a5 = *(v6 + 688);
  a1 = *(v6 + 664);
  a4 = v6 + 408;
  a2 = 0;
  a3 = 0;
  a6 = AssociatedConformanceWitness;

  return MEMORY[0x282200310](a1, a2, a3, a4, a5, a6);
}

uint64_t sub_27224C0C0()
{
  (*(v0[87] + 8))(v0[88], v0[86]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_27224C234()
{
  v1 = *(v0 + 832);
  v2 = *(v0 + 704);
  v3 = *(v0 + 696);
  v4 = *(v0 + 688);
  v5 = *(v0 + 656);
  v6 = *(v0 + 648);
  v7 = *(v0 + 640);

  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_27224C3F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_2721F065C(&qword_2808819D8, &qword_27237CB50);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v23 - v10;
  sub_2721F07F4(a3, v23 - v10, &qword_2808819D8, &qword_27237CB50);
  v12 = sub_272377C3C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_2721F40F0(v11, &qword_2808819D8, &qword_27237CB50);
  }

  else
  {
    sub_272377C2C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_272377BDC();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v23[0] = a2;
      v19 = sub_2723778BC() + 32;

      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      else
      {
        v20 = 0;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = swift_task_create();

      sub_2721F40F0(a3, &qword_2808819D8, &qword_27237CB50);

      return v21;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2721F40F0(a3, &qword_2808819D8, &qword_27237CB50);
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}

void sub_27224C69C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v48 = a4;
  v7 = v6;
  v49 = a6;
  v12 = sub_272376E5C();
  v46 = *(v12 - 8);
  v13 = MEMORY[0x28223BE20](v12);
  v45 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x277D85000];
  v16 = (*((*MEMORY[0x277D85000] & *v6) + 0x120))(v13);
  if (!v16)
  {
    sub_2722032B4();
    swift_allocError();
    *v35 = 0x75716552206C694ELL;
    v35[1] = 0xEF6F666E49747365;
    swift_willThrow();
    return;
  }

  v17 = v16;
  v18 = (*((*v15 & *v6) + 0x150))();
  if (!v18)
  {
    sub_2722032B4();
    swift_allocError();
    *v36 = 0xD000000000000011;
    v36[1] = 0x8000000272388A20;
    swift_willThrow();
LABEL_17:

    return;
  }

  v19 = v18;
  v44 = v12;
  type metadata accessor for VAInstrumentedKeywordResult(0);
  v20 = (*(*a1 + 104))();
  v21 = VAInstrumentedKeywordResult.__allocating_init(detections:)(v20);
  v22 = *(*v21 + 480);

  v22(a2, a3);
  v23 = v19;
  v24 = *(*v21 + 528);

  v24(v48, a5);
  (*(*v21 + 504))((v49 & 1) == 0);
  v25 = *(**(v7 + OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_speechAPISpotterConfiguration) + 144);

  v25(&v51, v26);

  v50 = 1;
  sub_272252A6C();
  if ((sub_2723777DC() & 1) != 0 || (v27 = *(v7 + OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_audioDuringSpeech)) == 0)
  {
LABEL_14:
    v39 = v47;
    v40 = (*(*v17 + 432))(v21);
    v41 = v44;
    if (!v39)
    {
      v42 = v45;
      (*(*v17 + 144))(v40);
      (*(*v23 + 80))(v21, v42);
      (*(v46 + 8))(v42, v41);
    }

    goto LABEL_17;
  }

  v28 = v27;
  v29 = [v28 int16ChannelData];
  if (!v29)
  {
    sub_2722032B4();
    swift_allocError();
    *v37 = 0xD00000000000001CLL;
    v37[1] = 0x800000027238AAB0;
    swift_willThrow();

    return;
  }

  v30 = v29;
  v31 = [v28 frameLength];
  if (v31)
  {
    v32 = v31;
    v33 = v31;
    v34 = sub_272377B5C();
    *(v34 + 16) = v33;
    bzero((v34 + 32), 2 * v32);
  }

  else
  {
    v34 = MEMORY[0x277D84F90];
    v33 = *(MEMORY[0x277D84F90] + 16);
  }

  if (v33 + 0x4000000000000000 >= 0)
  {
    memmove((v34 + 32), *v30, 2 * [v28 frameLength]);
    v38 = *(*v21 + 136);

    v38(v34);

    goto LABEL_14;
  }

  __break(1u);
}

void sub_27224CC84(uint64_t a1)
{
  v3 = v2;
  v5 = sub_272376E5C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x277D85000];
  v11 = (*((*MEMORY[0x277D85000] & *v1) + 0x120))(v7);
  if (!v11)
  {
    sub_2722032B4();
    swift_allocError();
    *v26 = 0x75716552206C694ELL;
    v26[1] = 0xEF6F666E49747365;
    swift_willThrow();
    return;
  }

  v12 = v11;
  v13 = (*((*v10 & *v1) + 0x150))();
  if (!v13)
  {
    sub_2722032B4();
    swift_allocError();
    *v27 = 0xD000000000000011;
    v27[1] = 0x8000000272388A20;
    swift_willThrow();
LABEL_17:

    return;
  }

  v14 = v13;
  v36 = v6;
  type metadata accessor for VAInstrumentedKeywordResult(0);
  v15 = (*(*a1 + 104))();
  v16 = VAInstrumentedKeywordResult.__allocating_init(detections:)(v15);
  v17 = *(**(v1 + OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_speechAPISpotterConfiguration) + 144);

  v17(&v38, v18);

  v37 = 1;
  sub_272252A6C();
  if ((sub_2723777DC() & 1) != 0 || (v19 = *(v1 + OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_audioDuringSpeech)) == 0)
  {
LABEL_14:
    v31 = (*(*v12 + 432))(v16);
    v32 = v36;
    if (!v3)
    {
      (*(*v12 + 144))(v31);
      (*(*v14 + 80))(v16, v9);
      (*(v32 + 8))(v9, v5);
    }

    goto LABEL_17;
  }

  v20 = v19;
  v21 = [v20 int16ChannelData];
  if (!v21)
  {
    sub_2722032B4();
    swift_allocError();
    *v28 = 0xD00000000000001CLL;
    v28[1] = 0x800000027238AAB0;
    swift_willThrow();

    return;
  }

  v34 = v21;
  v35 = v20;
  v22 = [v20 frameLength];
  if (v22)
  {
    v23 = v22;
    v24 = v22;
    v25 = sub_272377B5C();
    *(v25 + 16) = v24;
    bzero((v25 + 32), 2 * v23);
  }

  else
  {
    v25 = MEMORY[0x277D84F90];
    v24 = *(MEMORY[0x277D84F90] + 16);
  }

  if (v24 + 0x4000000000000000 >= 0)
  {
    v29 = v35;
    memmove((v25 + 32), *v34, 2 * [v35 frameLength]);
    v30 = *(*v16 + 136);

    v30(v25);

    goto LABEL_14;
  }

  __break(1u);
}

void sub_27224D17C(void *a1, int64_t a2)
{
  v51 = a2;
  v52 = a1;
  v3 = sub_2723773DC();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2721F065C(&qword_280881F80, &qword_27237E338);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v50 - v7;
  v9 = sub_2721F065C(&qword_280881F88, qword_27237E340);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v50 - v11;
  v13 = sub_27237728C();
  v14 = MEMORY[0x28223BE20](v13);
  v16 = v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v20 = v50 - v19;
  v21 = *(v2 + OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_speechDetector);
  if (v21)
  {
    if (*(v2 + OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_feedEmptyBufferTillFinalResultTask))
    {
      if ((*(v2 + OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_pausedDetector) & 1) == 0)
      {
        *(v2 + OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_pausedDetector) = 1;
        v36 = v17;
        v37 = v18;

        v38 = sub_2722C389C();
        (*(v37 + 16))(v20, v38, v36);
        v39 = sub_27237725C();
        v40 = sub_272377E7C();
        if (os_log_type_enabled(v39, v40))
        {
          v41 = swift_slowAlloc();
          *v41 = 0;
          _os_log_impl(&dword_2721E4000, v39, v40, "Ignoring audio while feeding 0 buffer", v41, 2u);
          MEMORY[0x2743C69C0](v41, -1, -1);
        }

        (*(v37 + 8))(v20, v36);
      }
    }

    else
    {
      if (*(v2 + OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_pausedDetector))
      {
        *(v2 + OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_pausedDetector) = 0;
        v30 = v17;
        v31 = v18;

        v32 = sub_2722C389C();
        (*(v31 + 16))(v16, v32, v30);
        v33 = sub_27237725C();
        v34 = sub_272377E7C();
        if (os_log_type_enabled(v33, v34))
        {
          v35 = swift_slowAlloc();
          *v35 = 0;
          _os_log_impl(&dword_2721E4000, v33, v34, "Resuming audio to detector afer 0 buffer", v35, 2u);
          MEMORY[0x2743C69C0](v35, -1, -1);
        }

        (*(v31 + 8))(v16, v30);
      }

      else
      {
      }

      (*(*v21 + 680))(v52, v51);
    }
  }

  else
  {
    v50[0] = v10;
    v50[1] = v5;
    v22 = OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_audioDuringSpeech;
    v23 = *(v2 + OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_audioDuringSpeech);
    if (v23)
    {
      v24 = *((*MEMORY[0x277D85000] & *v2) + 0x518);
      v25 = v23;
      v26 = v54;
      v27 = v24();

      if (v26)
      {
        return;
      }

      v28 = v9;
      v29 = *(v2 + v22);
      *(v2 + v22) = v27;
    }

    else
    {
      v42 = v52;
      *(v2 + OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_audioDuringSpeech) = v52;
      v43 = v42;
      v28 = v9;
    }

    v44 = OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_inputStreamBuilder;
    swift_beginAccess();
    sub_2721F07F4(v2 + v44, v8, &qword_280881F80, &qword_27237E338);
    v45 = sub_2721F065C(&qword_280881F58, &unk_27237E2F0);
    v46 = *(v45 - 8);
    v47 = (*(v46 + 48))(v8, 1, v45);
    v48 = v51;
    if (v47 != 1)
    {
      if ((v51 & 0x8000000000000000) == 0)
      {
        v49 = v52;
        CMTimeMake(&v53, v48, 1);
        sub_2723773BC();
        sub_272377C6C();
        (*(v50[0] + 8))(v12, v28);
        (*(v46 + 8))(v8, v45);
        return;
      }

      __break(1u);
    }

    __break(1u);
  }
}

uint64_t sub_27224D764()
{
  v1[5] = v0;
  sub_2721F065C(&qword_280881F80, &qword_27237E338);
  v1[6] = swift_task_alloc();
  v2 = sub_27237728C();
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_27224D874, 0, 0);
}

uint64_t sub_27224D874(uint64_t a1)
{
  v2 = v1[11];
  v3 = v1[7];
  v4 = v1[8];
  v5 = sub_2722C389C();
  v1[12] = v5;
  v6 = *(v4 + 16);
  v1[13] = v6;
  v1[14] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v5, v3);
  v7 = sub_27237725C();
  v8 = sub_272377E7C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_2721E4000, v7, v8, "Stopping speech API spotter", v9, 2u);
    MEMORY[0x2743C69C0](v9, -1, -1);
  }

  v10 = v1[11];
  v11 = v1[7];
  v12 = v1[8];
  v14 = v1[5];
  v13 = v1[6];

  v15 = *(v12 + 8);
  v1[15] = v15;
  v15(v10, v11);
  *(v14 + OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_stopped) = 1;
  v16 = OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_inputStreamBuilder;
  swift_beginAccess();
  sub_2721F07F4(v14 + v16, v13, &qword_280881F80, &qword_27237E338);
  v17 = sub_2721F065C(&qword_280881F58, &unk_27237E2F0);
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v13, 1, v17) == 1)
  {
    __break(1u);
    return MEMORY[0x28212BBF0]();
  }

  v20 = v1[5];
  v19 = v1[6];
  sub_272377C7C();
  (*(v18 + 8))(v19, v17);
  v21 = *(v20 + OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_speechAnalyzer);
  v1[16] = v21;
  if (v21)
  {

    v22 = swift_task_alloc();
    v1[17] = v22;
    *v22 = v1;
    v22[1] = sub_27224DEBC;

    return MEMORY[0x28212BBF0]();
  }

  v23 = v1[5];
  v24 = *(v23 + OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_speechDetector);
  if (v24)
  {
    v25 = *(*v24 + 688);

    v25(v26);

    v23 = v1[5];
  }

  v27 = OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_vadTask;
  if (*(v23 + OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_vadTask))
  {

    sub_2721F065C(&qword_280881A38, &unk_27237CA20);
    sub_272377CBC();

    v28 = v1[5];
  }

  else
  {
    v28 = v23;
  }

  *(v23 + v27) = 0;

  (*((*MEMORY[0x277D85000] & *v28) + 0x220))(0);
  v29 = v1[5];
  if (*(v29 + OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_speechAPITask))
  {
    (v1[13])(v1[10], v1[12], v1[7]);

    v30 = sub_27237725C();
    v31 = sub_272377E7C();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_2721E4000, v30, v31, "Stopping speech API Task", v32, 2u);
      MEMORY[0x2743C69C0](v32, -1, -1);
    }

    v33 = v1[15];
    v34 = v1[10];
    v35 = v1[7];

    v33(v34, v35);
    sub_2721F065C(&qword_280881A38, &unk_27237CA20);
    sub_272377CBC();

    v29 = v1[5];
  }

  v36 = OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_recognizerTask;
  if (*(v29 + OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_recognizerTask))
  {
    (v1[13])(v1[9], v1[12], v1[7]);

    v37 = sub_27237725C();
    v38 = sub_272377E7C();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_2721E4000, v37, v38, "Stopping recognizer Task", v39, 2u);
      MEMORY[0x2743C69C0](v39, -1, -1);
    }

    v40 = v1[15];
    v41 = v1[9];
    v42 = v1[7];

    v40(v41, v42);
    sub_2721F065C(&qword_280881A38, &unk_27237CA20);
    sub_272377CBC();
  }

  *(v29 + v36) = 0;

  v43 = v1[1];

  return v43();
}

uint64_t sub_27224DEBC()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_27224E3E0;
  }

  else
  {

    v2 = sub_27224DFD8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_27224DFD8()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 40);
  v3 = *(v2 + OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_speechDetector);
  if (v3)
  {
    v4 = *(*v3 + 688);

    v4(v5);

    if (v1)
    {
LABEL_8:

      v8 = *(v0 + 8);
      goto LABEL_18;
    }

    v2 = *(v0 + 40);
  }

  v6 = OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_vadTask;
  if (*(v2 + OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_vadTask))
  {

    sub_2721F065C(&qword_280881A38, &unk_27237CA20);
    sub_272377CBC();

    v7 = *(v0 + 40);
  }

  else
  {
    v7 = v2;
  }

  *(v2 + v6) = 0;

  (*((*MEMORY[0x277D85000] & *v7) + 0x220))(0);
  if (v1)
  {
    goto LABEL_8;
  }

  v9 = *(v0 + 40);
  if (*(v9 + OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_speechAPITask))
  {
    (*(v0 + 104))(*(v0 + 80), *(v0 + 96), *(v0 + 56));

    v10 = sub_27237725C();
    v11 = sub_272377E7C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_2721E4000, v10, v11, "Stopping speech API Task", v12, 2u);
      MEMORY[0x2743C69C0](v12, -1, -1);
    }

    v13 = *(v0 + 120);
    v14 = *(v0 + 80);
    v15 = *(v0 + 56);

    v13(v14, v15);
    sub_2721F065C(&qword_280881A38, &unk_27237CA20);
    sub_272377CBC();

    v9 = *(v0 + 40);
  }

  v16 = OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_recognizerTask;
  if (*(v9 + OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_recognizerTask))
  {
    (*(v0 + 104))(*(v0 + 72), *(v0 + 96), *(v0 + 56));

    v17 = sub_27237725C();
    v18 = sub_272377E7C();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_2721E4000, v17, v18, "Stopping recognizer Task", v19, 2u);
      MEMORY[0x2743C69C0](v19, -1, -1);
    }

    v20 = *(v0 + 120);
    v21 = *(v0 + 72);
    v22 = *(v0 + 56);

    v20(v21, v22);
    sub_2721F065C(&qword_280881A38, &unk_27237CA20);
    sub_272377CBC();
  }

  *(v9 + v16) = 0;

  v8 = *(v0 + 8);
LABEL_18:

  return v8();
}

uint64_t sub_27224E3E0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_27224E474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[346] = a5;
  v5[345] = a4;
  sub_2721F065C(&qword_2808819D8, &qword_27237CB50);
  v5[347] = swift_task_alloc();
  v5[348] = swift_task_alloc();
  v5[349] = swift_task_alloc();
  sub_2723773DC();
  v5[350] = swift_task_alloc();
  sub_2721F065C(&qword_280881F80, &qword_27237E338);
  v5[351] = swift_task_alloc();
  v5[352] = swift_task_alloc();
  v6 = sub_2721F065C(&qword_280881F88, qword_27237E340);
  v5[353] = v6;
  v5[354] = *(v6 - 8);
  v5[355] = swift_task_alloc();
  v7 = sub_27237728C();
  v5[356] = v7;
  v5[357] = *(v7 - 8);
  v5[358] = swift_task_alloc();
  v5[359] = swift_task_alloc();
  v5[360] = swift_task_alloc();
  v5[361] = swift_task_alloc();
  v5[362] = swift_task_alloc();
  v5[363] = swift_task_alloc();
  v5[364] = swift_task_alloc();
  v5[365] = swift_task_alloc();
  v8 = sub_2721F065C(&qword_280881A80, &unk_27237D610);
  v5[366] = v8;
  v5[367] = *(v8 - 8);
  v5[368] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_27224E71C, 0, 0);
}

uint64_t sub_27224E71C()
{
  *(v0 + 2952) = (*((*MEMORY[0x277D85000] & **(v0 + 2760)) + 0x228))(16000);
  sub_2721F065C(&qword_280881900, &qword_27237C4F0);
  sub_272377C8C();
  *(v0 + 2960) = OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_audioDuringSpeech;
  *(v0 + 2968) = OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_timingInfo;
  *(v0 + 2976) = OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_speechEnded;
  *(v0 + 2984) = OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_gotFinalResult;
  *(v0 + 2992) = OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_gotPartialResult;
  *(v0 + 3000) = OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_asrDelegate;
  *(v0 + 3008) = OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_inputStreamBuilder;
  *(v0 + 3016) = OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_feedEmptyBufferTillFinalResultTask;
  *(v0 + 3024) = OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_speechAnalyzer;
  swift_beginAccess();
  *(v0 + 3032) = 0;
  v1 = swift_task_alloc();
  *(v0 + 3040) = v1;
  *v1 = v0;
  v1[1] = sub_27224E9F0;
  v2 = *(v0 + 2928);

  return MEMORY[0x2822003E8](v0 + 400, 0, 0, v2);
}

uint64_t sub_27224E9F0()
{

  return MEMORY[0x2822009F8](sub_27224EAEC, 0, 0);
}

uint64_t sub_27224EAEC()
{
  v257 = v0;
  v1 = *(v0 + 464);
  v2 = *(v0 + 480);
  *(v0 + 336) = v1;
  *(v0 + 352) = v2;
  v3 = *(v0 + 496);
  v4 = *(v0 + 512);
  *(v0 + 368) = v3;
  *(v0 + 384) = v4;
  v5 = *(v0 + 400);
  v6 = *(v0 + 416);
  *(v0 + 272) = v5;
  *(v0 + 288) = v6;
  v7 = *(v0 + 432);
  v8 = *(v0 + 448);
  *(v0 + 304) = v7;
  *(v0 + 320) = v8;
  *(v0 + 176) = v7;
  *(v0 + 192) = v8;
  *(v0 + 144) = v5;
  *(v0 + 160) = v6;
  *(v0 + 240) = v3;
  *(v0 + 256) = v4;
  *(v0 + 208) = v1;
  *(v0 + 224) = v2;
  v9 = sub_272219874((v0 + 144));
  if (v9 == 1)
  {
    v13 = *(v0 + 2920);
    v14 = *(v0 + 2856);
    v15 = *(v0 + 2848);
    (*(*(v0 + 2936) + 8))(*(v0 + 2944), *(v0 + 2928));
    v16 = sub_2722C389C();
    (*(v14 + 16))(v13, v16, v15);
    v17 = sub_27237725C();
    v18 = sub_272377E7C();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_2721E4000, v17, v18, "done reading vad output", v19, 2u);
      MEMORY[0x2743C69C0](v19, -1, -1);
    }

    v20 = *(v0 + 2920);
    v21 = *(v0 + 2856);
    v22 = *(v0 + 2848);
    v23 = *(v0 + 2760);

    (*(v21 + 8))(v20, v22);
    v24 = *(**(v23 + OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_speechAPISpotterConfiguration) + 216);

    LOBYTE(v24) = v24(v25);

    if (v24)
    {
      v26 = *(v0 + 2776);
      v27 = *(v0 + 2760);
      v28 = sub_272377C3C();
      (*(*(v28 - 8) + 56))(v26, 1, 1, v28);
      v29 = swift_allocObject();
      v29[2] = 0;
      v29[3] = 0;
      v29[4] = v27;
      v30 = v27;
      sub_27224C3F0(0, 0, v26, &unk_27237E4B8, v29, MEMORY[0x277D84F78] + 8);
    }

    v31 = *(v0 + 8);
    goto LABEL_31;
  }

  if (*(v0 + 160) == 1)
  {
    v32 = *(v0 + 2984);
    v33 = *(v0 + 2960);
    v249 = *(v0 + 2992);
    v250 = *(v0 + 2912);
    v34 = *(v0 + 2856);
    v252 = *(v0 + 2848);
    v35 = *(v0 + 2760);
    v36 = *(**(v35 + *(v0 + 2976)) + 168);

    v36(0);

    v37 = *(**(v35 + v32) + 168);

    v37(0);

    v38 = *(**(v35 + v249) + 168);

    v38(0);

    v39 = *(v35 + v33);
    *(v35 + v33) = *(v0 + 144);
    v40 = *(v0 + 352);
    *(v0 + 2000) = *(v0 + 336);
    *(v0 + 2016) = v40;
    v41 = *(v0 + 384);
    *(v0 + 2032) = *(v0 + 368);
    *(v0 + 2048) = v41;
    v42 = *(v0 + 288);
    *(v0 + 1936) = *(v0 + 272);
    *(v0 + 1952) = v42;
    v43 = *(v0 + 320);
    *(v0 + 1968) = *(v0 + 304);
    *(v0 + 1984) = v43;
    sub_272218D40(v0 + 1936, v0 + 2064);

    v44 = sub_2722C389C();
    (*(v34 + 16))(v250, v44, v252);
    v45 = *(v0 + 352);
    *(v0 + 1872) = *(v0 + 336);
    *(v0 + 1888) = v45;
    v46 = *(v0 + 384);
    *(v0 + 1904) = *(v0 + 368);
    *(v0 + 1920) = v46;
    v47 = *(v0 + 288);
    *(v0 + 1808) = *(v0 + 272);
    *(v0 + 1824) = v47;
    v48 = *(v0 + 320);
    *(v0 + 1840) = *(v0 + 304);
    *(v0 + 1856) = v48;
    sub_272218D40(v0 + 1808, v0 + 2192);
    v49 = sub_27237725C();
    v50 = sub_272377E7C();
    sub_2721F40F0(v0 + 272, &qword_280881A88, &qword_27237CA70);
    v51 = os_log_type_enabled(v49, v50);
    v52 = *(v0 + 2912);
    v53 = *(v0 + 2856);
    v54 = *(v0 + 2848);
    if (v51)
    {
      v253 = *(v0 + 2912);
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v256[0] = v56;
      *v55 = 136315138;
      v57 = *(v0 + 224);
      *(v0 + 2640) = *(v0 + 208);
      *(v0 + 2656) = v57;
      v58 = *(v0 + 256);
      *(v0 + 2672) = *(v0 + 240);
      *(v0 + 2688) = v58;
      v59 = *(v0 + 160);
      *(v0 + 2576) = *(v0 + 144);
      *(v0 + 2592) = v59;
      v60 = *(v0 + 192);
      *(v0 + 2608) = *(v0 + 176);
      *(v0 + 2624) = v60;
      v61 = *(v0 + 352);
      *(v0 + 2512) = *(v0 + 336);
      *(v0 + 2528) = v61;
      v62 = *(v0 + 384);
      *(v0 + 2544) = *(v0 + 368);
      *(v0 + 2560) = v62;
      v63 = *(v0 + 288);
      *(v0 + 2448) = *(v0 + 272);
      *(v0 + 2464) = v63;
      v64 = *(v0 + 320);
      *(v0 + 2480) = *(v0 + 304);
      *(v0 + 2496) = v64;
      sub_272218D40(v0 + 2448, v0 + 16);
      sub_272218FD0();
      v65 = sub_27237862C();
      v251 = v54;
      v67 = v66;
      v68 = *(v0 + 2656);
      *(v0 + 2384) = *(v0 + 2640);
      *(v0 + 2400) = v68;
      v69 = *(v0 + 2688);
      *(v0 + 2416) = *(v0 + 2672);
      *(v0 + 2432) = v69;
      v70 = *(v0 + 2592);
      *(v0 + 2320) = *(v0 + 2576);
      *(v0 + 2336) = v70;
      v71 = *(v0 + 2624);
      *(v0 + 2352) = *(v0 + 2608);
      *(v0 + 2368) = v71;
      sub_272218F7C(v0 + 2320);
      v72 = sub_2721FFD04(v65, v67, v256);

      *(v55 + 4) = v72;
      _os_log_impl(&dword_2721E4000, v49, v50, "Got start-of-speech: %s", v55, 0xCu);
      sub_2722039C8(v56);
      MEMORY[0x2743C69C0](v56, -1, -1);
      MEMORY[0x2743C69C0](v55, -1, -1);

      (*(v53 + 8))(v253, v251);
    }

    else
    {

      (*(v53 + 8))(v52, v54);
    }

    v79 = *(v0 + 2968);
    v80 = *(v0 + 2760);
    type metadata accessor for VATimingInfo();
    v81 = swift_unknownObjectRetain();
    v82 = sub_272346CE4(v81);
    v83 = *(v80 + v79);
    *(v80 + v79) = v82;
    v84 = v82;

    if (*(v0 + 176))
    {
      goto LABEL_87;
    }

    (*((*MEMORY[0x277D85000] & *v84) + 0x208))(*(v0 + 168));

    goto LABEL_16;
  }

  if (*(v0 + 162) == 1)
  {
    v73 = *(v0 + 2760);
    v74 = *(v73 + *(v0 + 2960));
    if (!v74)
    {
LABEL_88:
      __break(1u);
      goto LABEL_89;
    }

    v75 = *(v0 + 3032);
    v76 = *((*MEMORY[0x277D85000] & *v73) + 0x518);
    v77 = v0 + 272;
    v78 = v0 + 1680;
    goto LABEL_29;
  }

  if (*(v0 + 161) == 1)
  {
    v98 = *(v0 + 2760);
    v74 = *(v98 + *(v0 + 2960));
    if (!v74)
    {
LABEL_89:
      __break(1u);
      goto LABEL_90;
    }

    v75 = *(v0 + 3032);
    v76 = *((*MEMORY[0x277D85000] & *v98) + 0x518);
    v77 = v0 + 272;
    v78 = v0 + 1552;
LABEL_29:
    sub_2721F07F4(v77, v78, &qword_280881A88, &qword_27237CA70);
    v99 = v74;
    v100 = v76();
    if (v75)
    {
      goto LABEL_30;
    }

    v103 = v100;
    v104 = *(v0 + 2960);
    v105 = *(v0 + 2760);
    sub_2721F40F0(v0 + 272, &qword_280881A88, &qword_27237CA70);

    v106 = *(v105 + v104);
    *(v105 + v104) = v103;

    v85 = 0;
    goto LABEL_17;
  }

  if (*(v0 + 265) != 1)
  {
    v171 = *(v0 + 2888);
    v172 = *(v0 + 2856);
    v173 = *(v0 + 2848);
    v174 = sub_2722C389C();
    (*(v172 + 16))(v171, v174, v173);
    v175 = sub_27237725C();
    v176 = sub_272377E8C();
    v177 = os_log_type_enabled(v175, v176);
    v178 = *(v0 + 2888);
    v179 = *(v0 + 2856);
    v180 = *(v0 + 2848);
    if (v177)
    {
      v181 = swift_slowAlloc();
      *v181 = 0;
      _os_log_impl(&dword_2721E4000, v175, v176, "Unexpected audio !!!!!!", v181, 2u);
      MEMORY[0x2743C69C0](v181, -1, -1);
    }

    (*(v179 + 8))(v178, v180);
LABEL_16:
    v85 = *(v0 + 3032);
    goto LABEL_17;
  }

  v107 = *(v0 + 2760);
  v108 = *(v107 + *(v0 + 2960));
  if (!v108)
  {
LABEL_90:
    __break(1u);
    return MEMORY[0x2822003E8](v9, v10, v11, v12);
  }

  v109 = *(v0 + 3032);
  v110 = MEMORY[0x277D85000];
  v111 = *((*MEMORY[0x277D85000] & *v107) + 0x518);
  sub_2721F07F4(v0 + 272, v0 + 656, &qword_280881A88, &qword_27237CA70);
  v99 = v108;
  v112 = v111();
  if (v109)
  {
LABEL_30:
    v101 = *(v0 + 2952);
    (*(*(v0 + 2936) + 8))(*(v0 + 2944), *(v0 + 2928));
    sub_2721F40F0(v0 + 272, &qword_280881A88, &qword_27237CA70);
    sub_2721F40F0(v0 + 272, &qword_280881A88, &qword_27237CA70);

    v31 = *(v0 + 8);
LABEL_31:

    return v31();
  }

  v113 = v112;
  v114 = *(v0 + 2960);
  v115 = *(v0 + 2760);
  sub_2721F40F0(v0 + 272, &qword_280881A88, &qword_27237CA70);

  v116 = *(v115 + v114);
  *(v115 + v114) = v113;

  if (*(v0 + 266) == 1)
  {
    v117 = *(v0 + 2904);
    v118 = *(v0 + 2856);
    v119 = *(v0 + 2848);
    v120 = sub_2722C389C();
    v254 = *(v118 + 16);
    v254(v117, v120, v119);
    v121 = *(v0 + 352);
    *(v0 + 848) = *(v0 + 336);
    *(v0 + 864) = v121;
    v122 = *(v0 + 384);
    *(v0 + 880) = *(v0 + 368);
    *(v0 + 896) = v122;
    v123 = *(v0 + 288);
    *(v0 + 784) = *(v0 + 272);
    *(v0 + 800) = v123;
    v124 = *(v0 + 320);
    *(v0 + 816) = *(v0 + 304);
    *(v0 + 832) = v124;
    sub_272218D40(v0 + 784, v0 + 912);
    v125 = sub_27237725C();
    v126 = sub_272377E7C();
    sub_2721F40F0(v0 + 272, &qword_280881A88, &qword_27237CA70);
    v127 = os_log_type_enabled(v125, v126);
    v128 = *(v0 + 2904);
    v129 = *(v0 + 2856);
    v130 = *(v0 + 2848);
    if (v127)
    {
      v248 = *(v0 + 2848);
      v247 = *(v0 + 2904);
      v131 = swift_slowAlloc();
      v246 = swift_slowAlloc();
      v256[0] = v246;
      *v131 = 136315138;
      v132 = *(v0 + 224);
      *(v0 + 1360) = *(v0 + 208);
      *(v0 + 1376) = v132;
      v133 = *(v0 + 256);
      *(v0 + 1392) = *(v0 + 240);
      *(v0 + 1408) = v133;
      v134 = *(v0 + 160);
      *(v0 + 1296) = *(v0 + 144);
      *(v0 + 1312) = v134;
      v135 = *(v0 + 192);
      *(v0 + 1328) = *(v0 + 176);
      *(v0 + 1344) = v135;
      v136 = *(v0 + 352);
      *(v0 + 1232) = *(v0 + 336);
      *(v0 + 1248) = v136;
      v137 = *(v0 + 384);
      *(v0 + 1264) = *(v0 + 368);
      *(v0 + 1280) = v137;
      v138 = *(v0 + 288);
      *(v0 + 1168) = *(v0 + 272);
      *(v0 + 1184) = v138;
      v139 = *(v0 + 320);
      *(v0 + 1200) = *(v0 + 304);
      *(v0 + 1216) = v139;
      sub_272218D40(v0 + 1168, v0 + 1424);
      sub_272218FD0();
      v140 = sub_27237862C();
      v142 = v141;
      v143 = *(v0 + 1376);
      *(v0 + 1104) = *(v0 + 1360);
      *(v0 + 1120) = v143;
      v144 = *(v0 + 1408);
      *(v0 + 1136) = *(v0 + 1392);
      *(v0 + 1152) = v144;
      v145 = *(v0 + 1312);
      *(v0 + 1040) = *(v0 + 1296);
      *(v0 + 1056) = v145;
      v146 = *(v0 + 1344);
      *(v0 + 1072) = *(v0 + 1328);
      *(v0 + 1088) = v146;
      sub_272218F7C(v0 + 1040);
      v147 = sub_2721FFD04(v140, v142, v256);

      *(v131 + 4) = v147;
      _os_log_impl(&dword_2721E4000, v125, v126, "Got end-of-speech: %s", v131, 0xCu);
      sub_2722039C8(v246);
      MEMORY[0x2743C69C0](v246, -1, -1);
      MEMORY[0x2743C69C0](v131, -1, -1);

      v148 = *(v129 + 8);
      v148(v247, v248);
    }

    else
    {

      v148 = *(v129 + 8);
      v148(v128, v130);
    }

    v232 = *(v0 + 2760);
    v233 = *(v232 + *(v0 + 2968));
    if (v233)
    {
      v234 = *(v0 + 152);
      v235 = *((*v110 & *v233) + 0x210);
      v236 = v233;
      v235(v234);

      v232 = *(v0 + 2760);
    }

    v237 = *(v0 + 2984);
    v238 = *(**(v232 + *(v0 + 2976)) + 168);

    v238(1);

    v239 = *(**(v232 + v237) + 160);

    LOBYTE(v239) = v239(v240);

    if (v239)
    {
      v254(*(v0 + 2896), v120, *(v0 + 2848));
      v241 = sub_27237725C();
      v242 = sub_272377E7C();
      if (os_log_type_enabled(v241, v242))
      {
        v243 = swift_slowAlloc();
        *v243 = 0;
        _os_log_impl(&dword_2721E4000, v241, v242, "Got speech end after final, nothing to do", v243, 2u);
        MEMORY[0x2743C69C0](v243, -1, -1);
      }

      v244 = *(v0 + 2896);
      v245 = *(v0 + 2848);

      v148(v244, v245);
    }
  }

  v85 = 0;
LABEL_17:
  *(v0 + 3048) = v85;
  v86 = *(v0 + 2816);
  sub_2721F07F4(*(v0 + 2760) + *(v0 + 3008), v86, &qword_280881F80, &qword_27237E338);
  v87 = sub_2721F065C(&qword_280881F58, &unk_27237E2F0);
  *(v0 + 3056) = v87;
  v88 = *(v87 - 8);
  v89 = *(v88 + 48);
  *(v0 + 3064) = v89;
  *(v0 + 3072) = (v88 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v9 = v89(v86, 1, v87);
  if (v9 == 1)
  {
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  sub_2721F07F4(v0 + 272, v0 + 528, &qword_280881A88, &qword_27237CA70);
  v9 = mach_absolute_time();
  if (v9 < 0)
  {
    __break(1u);
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  v90 = *(v0 + 2840);
  v91 = *(v0 + 2832);
  v92 = *(v0 + 2824);
  v93 = *(v0 + 2816);
  CMTimeMake((v0 + 3184), v9, 1);
  sub_2723773BC();
  sub_272377C6C();
  (*(v91 + 8))(v90, v92);
  v94 = *(v88 + 8);
  *(v0 + 3080) = v94;
  *(v0 + 3088) = (v88 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v94(v93, v87);
  if (*(v0 + 265) != 1 || (*(v0 + 266) & 1) == 0 || (v95 = *(**(*(v0 + 2760) + *(v0 + 2984)) + 160), v96 = , LOBYTE(v95) = v95(v96), , (v95 & 1) != 0))
  {
LABEL_22:
    sub_2721F40F0(v0 + 272, &qword_280881A88, &qword_27237CA70);
    goto LABEL_23;
  }

  v149 = *(v0 + 2880);
  v150 = *(v0 + 2856);
  v151 = *(v0 + 2848);
  v152 = *(v0 + 2760);
  v153 = sub_2722C389C();
  *(v0 + 3096) = v153;
  v154 = *(v150 + 16);
  *(v0 + 3104) = v154;
  *(v0 + 3112) = (v150 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v154(v149, v153, v151);
  v155 = v152;
  v156 = sub_27237725C();
  v157 = sub_272377E7C();

  if (os_log_type_enabled(v156, v157))
  {
    v158 = *(v0 + 2992);
    v255 = *(v0 + 2880);
    v159 = *(v0 + 2856);
    v160 = *(v0 + 2848);
    v161 = *(v0 + 2760);
    v162 = swift_slowAlloc();
    v163 = swift_slowAlloc();
    v256[0] = v163;
    *v162 = 136315138;
    v164 = *(**(v161 + v158) + 160);

    v166 = v164(v165);

    if (v166)
    {
      v167 = 0x207265746661;
    }

    else
    {
      v167 = 0x2065726F666562;
    }

    if (v166)
    {
      v168 = 0xE600000000000000;
    }

    else
    {
      v168 = 0xE700000000000000;
    }

    v169 = sub_2721FFD04(v167, v168, v256);

    *(v162 + 4) = v169;
    _os_log_impl(&dword_2721E4000, v156, v157, "Got speech end before final and %spartial, pad with audio till final", v162, 0xCu);
    sub_2722039C8(v163);
    MEMORY[0x2743C69C0](v163, -1, -1);
    MEMORY[0x2743C69C0](v162, -1, -1);

    v170 = *(v159 + 8);
    v170(v255, v160);
  }

  else
  {
    v182 = *(v0 + 2880);
    v183 = *(v0 + 2856);
    v184 = *(v0 + 2848);

    v170 = *(v183 + 8);
    v170(v182, v184);
  }

  *(v0 + 3120) = v170;
  *(v0 + 3128) = mach_absolute_time();
  *(v0 + 3136) = 0;
  v185 = *(**(*(v0 + 2760) + *(v0 + 2984)) + 160);

  LOBYTE(v185) = v185(v186);

  if (v185)
  {
    v85 = *(v0 + 3048);
    v187 = *(v0 + 2984);
    v188 = *(v0 + 2760);
    *(v188 + *(v0 + 3016)) = 0;

    v189 = *(**(v188 + v187) + 160);

    LOBYTE(v189) = v189(v190);

    if ((v189 & 1) == 0)
    {
      v219 = *(v0 + 3000);
      v220 = *(v0 + 2760);
      type metadata accessor for VAASRResult();
      v221 = sub_2722E2418(0, 0xE000000000000000, 0, 0, 0, 1, 0);
      v222 = *(v220 + v219);
      if (v222)
      {
        [v222 speechResultsWithResult_];
      }

      goto LABEL_22;
    }

    v191 = *(v0 + 3128);
    type metadata accessor for VARequestContext(0);
    v192 = mach_absolute_time();
    v193 = v192 >= v191;
    v9 = v192 - v191;
    if (v193)
    {
      v194 = *(v0 + 3104);
      v195 = *(v0 + 3096);
      v196 = *(v0 + 2952);
      v197 = *(v0 + 2864);
      v198 = *(v0 + 2848);
      v199 = sub_2722310BC(v9);
      v194(v197, v195, v198);
      v200 = v196;
      v201 = sub_27237725C();
      v202 = sub_272377E7C();
      v203 = os_log_type_enabled(v201, v202);
      v204 = *(v0 + 3120);
      v205 = *(v0 + 2952);
      v206 = *(v0 + 2864);
      v207 = *(v0 + 2848);
      if (v203)
      {
        v208 = swift_slowAlloc();
        *v208 = 67109376;
        *(v208 + 4) = [v205 frameLength];

        *(v208 + 8) = 2048;
        *(v208 + 10) = v199;
        _os_log_impl(&dword_2721E4000, v201, v202, "Got final after padding speech end with %u samples of 0 audio for %f secs", v208, 0x12u);
        MEMORY[0x2743C69C0](v208, -1, -1);

        sub_2721F40F0(v0 + 272, &qword_280881A88, &qword_27237CA70);
      }

      else
      {
        sub_2721F40F0(v0 + 272, &qword_280881A88, &qword_27237CA70);
      }

      v204(v206, v207);
LABEL_23:
      *(v0 + 3032) = v85;
      v97 = swift_task_alloc();
      *(v0 + 3040) = v97;
      *v97 = v0;
      v97[1] = sub_27224E9F0;
      v12 = *(v0 + 2928);
      v9 = v0 + 400;
      v10 = 0;
      v11 = 0;

      return MEMORY[0x2822003E8](v9, v10, v11, v12);
    }

    goto LABEL_85;
  }

  v209 = *(v0 + 2952);
  v210 = *(v0 + 2792);
  v211 = *(v0 + 2784);
  v212 = *(v0 + 2760);
  v213 = sub_272377C3C();
  v214 = *(v213 - 8);
  (*(v214 + 56))(v210, 1, 1, v213);
  v215 = swift_allocObject();
  v215[2] = 0;
  v215[3] = 0;
  v215[4] = 10;
  v215[5] = v212;
  v215[6] = v209;
  sub_2721F07F4(v210, v211, &qword_2808819D8, &qword_27237CB50);
  LODWORD(v211) = (*(v214 + 48))(v211, 1, v213);
  v216 = v212;
  v217 = v209;

  v218 = *(v0 + 2784);
  if (v211 == 1)
  {
    sub_2721F40F0(*(v0 + 2784), &qword_2808819D8, &qword_27237CB50);
  }

  else
  {
    sub_272377C2C();
    (*(v214 + 8))(v218, v213);
  }

  v223 = v215[2];
  swift_unknownObjectRetain();

  if (v223)
  {
    swift_getObjectType();
    v224 = sub_272377BDC();
    v226 = v225;
    swift_unknownObjectRelease();
  }

  else
  {
    v224 = 0;
    v226 = 0;
  }

  sub_2721F40F0(*(v0 + 2792), &qword_2808819D8, &qword_27237CB50);
  v227 = swift_allocObject();
  *(v227 + 16) = &unk_27237E4D0;
  *(v227 + 24) = v215;
  if (v226 | v224)
  {
    *(v0 + 2704) = 0;
    *(v0 + 2712) = 0;
    *(v0 + 2720) = v224;
    *(v0 + 2728) = v226;
  }

  v228 = *(v0 + 3016);
  v229 = *(v0 + 2760);
  v230 = swift_task_create();
  *(v0 + 3144) = v230;
  *(v229 + v228) = v230;

  v231 = swift_task_alloc();
  *(v0 + 3152) = v231;
  *v231 = v0;
  v231[1] = sub_272250334;

  return MEMORY[0x282200460]();
}

uint64_t sub_272250334()
{

  return MEMORY[0x2822009F8](sub_27225044C, 0, 0);
}

uint64_t sub_27225044C()
{
  if (*(v0 + 3136) == 99)
  {
    (*(v0 + 3104))(*(v0 + 2872), *(v0 + 3096), *(v0 + 2848));
    v1 = sub_27237725C();
    v2 = sub_272377E6C();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 134217984;
      *(v3 + 4) = 0x408F400000000000;
      _os_log_impl(&dword_2721E4000, v1, v2, "No final even after padding with bytes for %f ms", v3, 0xCu);
      MEMORY[0x2743C69C0](v3, -1, -1);
    }

    v4 = *(v0 + 3120);
    v70 = *(v0 + 3064);
    v5 = *(v0 + 3056);
    v6 = *(v0 + 3008);
    v7 = *(v0 + 2872);
    v8 = *(v0 + 2848);
    v9 = *(v0 + 2808);
    v10 = *(v0 + 2760);

    v4(v7, v8);
    sub_2721F07F4(v10 + v6, v9, &qword_280881F80, &qword_27237E338);
    if (v70(v9, 1, v5) == 1)
    {
      goto LABEL_36;
    }

    v11 = *(v0 + 3080);
    v12 = *(v0 + 3056);
    v13 = *(v0 + 3024);
    v14 = *(v0 + 2808);
    v15 = *(v0 + 2760);
    sub_272377C7C();
    v11(v14, v12);
    v16 = *(v15 + v13);
    *(v0 + 3160) = v16;
    if (v16)
    {

      v17 = swift_task_alloc();
      *(v0 + 3168) = v17;
      *v17 = v0;
      v17[1] = sub_272250C48;

      return MEMORY[0x28212BBF0]();
    }

    v20 = *(v0 + 3048);
    *(*(v0 + 2760) + *(v0 + 3016)) = 0;
  }

  else
  {
    ++*(v0 + 3136);
    v18 = *(**(*(v0 + 2760) + *(v0 + 2984)) + 160);

    LOBYTE(v18) = v18(v19);

    if ((v18 & 1) == 0)
    {
      v21 = *(v0 + 2952);
      v22 = *(v0 + 2792);
      v23 = *(v0 + 2784);
      v24 = *(v0 + 2760);
      v25 = sub_272377C3C();
      v26 = *(v25 - 8);
      (*(v26 + 56))(v22, 1, 1, v25);
      v27 = swift_allocObject();
      v27[2] = 0;
      v27[3] = 0;
      v27[4] = 10;
      v27[5] = v24;
      v27[6] = v21;
      sub_2721F07F4(v22, v23, &qword_2808819D8, &qword_27237CB50);
      LODWORD(v23) = (*(v26 + 48))(v23, 1, v25);
      v28 = v24;
      v29 = v21;

      v30 = *(v0 + 2784);
      if (v23 == 1)
      {
        sub_2721F40F0(*(v0 + 2784), &qword_2808819D8, &qword_27237CB50);
      }

      else
      {
        sub_272377C2C();
        (*(v26 + 8))(v30, v25);
      }

      v58 = v27[2];
      swift_unknownObjectRetain();

      if (v58)
      {
        swift_getObjectType();
        v59 = sub_272377BDC();
        v61 = v60;
        swift_unknownObjectRelease();
      }

      else
      {
        v59 = 0;
        v61 = 0;
      }

      sub_2721F40F0(*(v0 + 2792), &qword_2808819D8, &qword_27237CB50);
      v64 = swift_allocObject();
      *(v64 + 16) = &unk_27237E4D0;
      *(v64 + 24) = v27;
      if (v61 | v59)
      {
        *(v0 + 2704) = 0;
        *(v0 + 2712) = 0;
        *(v0 + 2720) = v59;
        *(v0 + 2728) = v61;
      }

      v65 = *(v0 + 3016);
      v66 = *(v0 + 2760);
      v67 = swift_task_create();
      *(v0 + 3144) = v67;
      *(v66 + v65) = v67;

      v68 = swift_task_alloc();
      *(v0 + 3152) = v68;
      *v68 = v0;
      v68[1] = sub_272250334;

      return MEMORY[0x282200460]();
    }

    v20 = *(v0 + 3048);
  }

  v31 = *(v0 + 2984);
  v32 = *(v0 + 2760);
  *(v32 + *(v0 + 3016)) = 0;

  v33 = *(**(v32 + v31) + 160);

  LOBYTE(v33) = v33(v34);

  if (v33)
  {
    v35 = *(v0 + 3128);
    type metadata accessor for VARequestContext(0);
    v36 = mach_absolute_time();
    v37 = v36 >= v35;
    v38 = v36 - v35;
    if (!v37)
    {
      __break(1u);
LABEL_36:
      __break(1u);
      return MEMORY[0x28212BBF0]();
    }

    v39 = *(v0 + 3104);
    v40 = *(v0 + 3096);
    v41 = *(v0 + 2952);
    v42 = *(v0 + 2864);
    v43 = *(v0 + 2848);
    v44 = sub_2722310BC(v38);
    v39(v42, v40, v43);
    v45 = v41;
    v46 = sub_27237725C();
    v47 = sub_272377E7C();
    v48 = os_log_type_enabled(v46, v47);
    v49 = *(v0 + 3120);
    v50 = *(v0 + 2952);
    v51 = *(v0 + 2864);
    v52 = *(v0 + 2848);
    if (v48)
    {
      v53 = swift_slowAlloc();
      *v53 = 67109376;
      *(v53 + 4) = [v50 frameLength];

      *(v53 + 8) = 2048;
      *(v53 + 10) = v44;
      _os_log_impl(&dword_2721E4000, v46, v47, "Got final after padding speech end with %u samples of 0 audio for %f secs", v53, 0x12u);
      MEMORY[0x2743C69C0](v53, -1, -1);

      sub_2721F40F0(v0 + 272, &qword_280881A88, &qword_27237CA70);
    }

    else
    {
      sub_2721F40F0(v0 + 272, &qword_280881A88, &qword_27237CA70);
    }

    v49(v51, v52);
  }

  else
  {
    v54 = *(v0 + 3000);
    v55 = *(v0 + 2760);
    type metadata accessor for VAASRResult();
    v56 = sub_2722E2418(0, 0xE000000000000000, 0, 0, 0, 1, 0);
    v57 = *(v55 + v54);
    if (v57)
    {
      [v57 speechResultsWithResult_];
    }

    sub_2721F40F0(v0 + 272, &qword_280881A88, &qword_27237CA70);
  }

  *(v0 + 3032) = v20;
  v62 = swift_task_alloc();
  *(v0 + 3040) = v62;
  *v62 = v0;
  v62[1] = sub_27224E9F0;
  v63 = *(v0 + 2928);

  return MEMORY[0x2822003E8](v0 + 400, 0, 0, v63);
}

uint64_t sub_272250C48()
{
  *(*v1 + 3176) = v0;

  if (v0)
  {
    v2 = sub_272251080;
  }

  else
  {
    v2 = sub_272250D7C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_272250D7C()
{
  v1 = v0[397];
  *(v0[345] + v0[377]) = 0;

  v2 = v0[373];
  v3 = v0[345];
  *(v3 + v0[377]) = 0;

  v4 = *(**(v3 + v2) + 160);

  LOBYTE(v4) = v4(v5);

  if (v4)
  {
    v6 = v0[391];
    type metadata accessor for VARequestContext(0);
    v7 = mach_absolute_time();
    v11 = v7 >= v6;
    v12 = v7 - v6;
    if (!v11)
    {
      __break(1u);
      return MEMORY[0x2822003E8](v12, v8, v9, v10);
    }

    v13 = v0[388];
    v14 = v0[387];
    v15 = v0[369];
    v16 = v0[358];
    v17 = v0[356];
    v18 = sub_2722310BC(v12);
    v13(v16, v14, v17);
    v19 = v15;
    v20 = sub_27237725C();
    v21 = sub_272377E7C();
    v22 = os_log_type_enabled(v20, v21);
    v23 = v0[390];
    v24 = v0[369];
    v25 = v0[358];
    v26 = v0[356];
    if (v22)
    {
      v27 = swift_slowAlloc();
      *v27 = 67109376;
      *(v27 + 4) = [v24 frameLength];

      *(v27 + 8) = 2048;
      *(v27 + 10) = v18;
      _os_log_impl(&dword_2721E4000, v20, v21, "Got final after padding speech end with %u samples of 0 audio for %f secs", v27, 0x12u);
      MEMORY[0x2743C69C0](v27, -1, -1);

      sub_2721F40F0((v0 + 34), &qword_280881A88, &qword_27237CA70);
    }

    else
    {
      sub_2721F40F0((v0 + 34), &qword_280881A88, &qword_27237CA70);
    }

    v23(v25, v26);
  }

  else
  {
    v28 = v0[375];
    v29 = v0[345];
    type metadata accessor for VAASRResult();
    v30 = sub_2722E2418(0, 0xE000000000000000, 0, 0, 0, 1, 0);
    v31 = *(v29 + v28);
    if (v31)
    {
      [v31 speechResultsWithResult_];
    }

    sub_2721F40F0((v0 + 34), &qword_280881A88, &qword_27237CA70);
  }

  v0[379] = v1;
  v32 = swift_task_alloc();
  v0[380] = v32;
  *v32 = v0;
  v32[1] = sub_27224E9F0;
  v10 = v0[366];
  v12 = (v0 + 50);
  v8 = 0;
  v9 = 0;

  return MEMORY[0x2822003E8](v12, v8, v9, v10);
}

uint64_t sub_272251080()
{
  v1 = *(v0 + 2944);
  v2 = *(v0 + 2936);
  v3 = *(v0 + 2928);

  sub_2721F40F0(v0 + 272, &qword_280881A88, &qword_27237CA70);
  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_272251210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[6] = a4;
  v7 = sub_272377BFC();
  v6[9] = v7;
  v6[10] = *(v7 - 8);
  v6[11] = swift_task_alloc();
  v8 = sub_27237728C();
  v6[12] = v8;
  v6[13] = *(v8 - 8);
  v6[14] = swift_task_alloc();
  v6[15] = swift_task_alloc();
  sub_2723773DC();
  v6[16] = swift_task_alloc();
  sub_2721F065C(&qword_280881F80, &qword_27237E338);
  v6[17] = swift_task_alloc();
  v9 = sub_2721F065C(&qword_280881F88, qword_27237E340);
  v6[18] = v9;
  v6[19] = *(v9 - 8);
  v6[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_272251408, 0, 0);
}

uint64_t sub_272251408(uint64_t a1)
{
  v3 = *(v1 + 48);
  if (is_mul_ok(v3, 0xF4240uLL))
  {
    v4 = 1000000 * v3;
    v5 = swift_task_alloc();
    *(v1 + 168) = v5;
    *v5 = v1;
    v5[1] = sub_2722514BC;
    a1 = v4;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x282200480](a1);
}

uint64_t sub_2722514BC()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_2722517BC;
  }

  else
  {
    v2 = sub_2722515D0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

int64_t sub_2722515D0()
{
  v13 = v0;
  v1 = *(v0 + 136);
  v2 = *(v0 + 56);
  v3 = OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_inputStreamBuilder;
  swift_beginAccess();
  sub_2721F07F4(v2 + v3, v1, &qword_280881F80, &qword_27237E338);
  v4 = sub_2721F065C(&qword_280881F58, &unk_27237E2F0);
  v5 = *(v4 - 8);
  result = (*(v5 + 48))(v1, 1, v4);
  if (result == 1)
  {
    goto LABEL_7;
  }

  v7 = *(v0 + 64);
  result = mach_absolute_time();
  if (result < 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  v9 = *(v0 + 152);
  v8 = *(v0 + 160);
  v10 = *(v0 + 144);
  CMTimeMake(&v12, result, 1);
  sub_2723773BC();
  sub_272377C6C();
  (*(v9 + 8))(v8, v10);
  (*(v5 + 8))(*(v0 + 136), v4);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_2722517BC()
{
  v1 = v0[22];
  v0[5] = v1;
  v2 = v1;
  sub_2721F065C(&qword_280881A38, &unk_27237CA20);
  if (swift_dynamicCast())
  {
    v4 = v0 + 14;
    v3 = v0[14];
    v5 = v0[12];
    v6 = v0[13];
    (*(v0[10] + 8))(v0[11], v0[9]);
    v7 = sub_2722C389C();
    (*(v6 + 16))(v3, v7, v5);
    v8 = sub_27237725C();
    v9 = sub_272377E7C();
    v10 = os_log_type_enabled(v8, v9);
    v11 = v0[22];
    if (v10)
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_2721E4000, v8, v9, "Cancelled sleep task after getting final result", v12, 2u);
LABEL_6:
      MEMORY[0x2743C69C0](v12, -1, -1);

      goto LABEL_8;
    }
  }

  else
  {
    v4 = v0 + 15;
    v13 = v0[15];
    v14 = v0[22];
    v15 = v0[12];
    v16 = v0[13];
    v17 = sub_2722C389C();
    (*(v16 + 16))(v13, v17, v15);
    v18 = v14;
    v8 = sub_27237725C();
    v19 = sub_272377E8C();

    v20 = os_log_type_enabled(v8, v19);
    v11 = v0[22];
    if (v20)
    {
      v12 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v12 = 138412290;
      v22 = v11;
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 4) = v23;
      *v21 = v23;
      _os_log_impl(&dword_2721E4000, v8, v19, "Error sleeping wating for final result: %@", v12, 0xCu);
      sub_2721F40F0(v21, &qword_280881A40, &unk_27237D620);
      MEMORY[0x2743C69C0](v21, -1, -1);
      goto LABEL_6;
    }
  }

LABEL_8:
  (*(v0[13] + 8))(*v4, v0[12]);

  v24 = v0[1];

  return v24();
}

uint64_t sub_272251A84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_27237728C();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_272251B44, 0, 0);
}

uint64_t sub_272251B44(uint64_t a1)
{
  v3 = v1[4];
  v2 = v1[5];
  v4 = v1[3];
  v5 = sub_2722C389C();
  (*(v3 + 16))(v2, v5, v4);
  v6 = sub_27237725C();
  v7 = sub_272377E7C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_2721E4000, v6, v7, "in batch audio mode, stopping spotter after VAD detector is done", v8, 2u);
    MEMORY[0x2743C69C0](v8, -1, -1);
  }

  v10 = v1[4];
  v9 = v1[5];
  v12 = v1[2];
  v11 = v1[3];

  (*(v10 + 8))(v9, v11);
  v13 = *((*MEMORY[0x277D85000] & *v12) + 0xB8);
  v16 = (v13 + *v13);
  v14 = swift_task_alloc();
  v1[6] = v14;
  *v14 = v1;
  v14[1] = sub_272251D2C;

  return v16();
}

uint64_t sub_272251D2C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_272251E6C()
{

  sub_2721F40F0(v0 + OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_inputStream, &qword_280881F98, &qword_27237E358);
  sub_2721F40F0(v0 + OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_inputStreamBuilder, &qword_280881F80, &qword_27237E338);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_2721F40F0(v0 + OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_speechDetectorOutputStream, &qword_2808819B8, &qword_27237C508);
  sub_2721F40F0(v0 + OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_runtimeParameters, &qword_280881F70, &qword_27237E320);
}

id VASpeechAPISpotter.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VASpeechAPISpotter(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_272252224(id result, const char **a2, float a3, float a4)
{
  v5 = *(v4 + OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_speechDetectorDelegate);
  if (v5)
  {
    v7 = result;
    result = [v5 respondsToSelector_];
    if (result)
    {
      v12 = *a2;
      *&v10 = a3;
      *&v11 = a4;

      return [v5 v12];
    }
  }

  return result;
}

char *sub_2722522CC(char *result, float a2, float a3, uint64_t a4, uint64_t a5, const char **a6)
{
  v6 = *&result[OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_speechDetectorDelegate];
  if (v6)
  {
    result = [*&result[OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_speechDetectorDelegate] respondsToSelector_];
    if (result)
    {
      v13 = *a6;
      *&v11 = a2;
      *&v12 = a3;

      return [v6 v13];
    }
  }

  return result;
}

Swift::Void __swiftcall VASpeechAPISpotter.endOfAudio(byteCountAfterEndOfSpeech:)(Swift::UInt32 byteCountAfterEndOfSpeech)
{
  v2 = *(v1 + OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_speechDetectorDelegate);
  if (v2)
  {
    v3 = *&byteCountAfterEndOfSpeech;
    if ([v2 respondsToSelector_])
    {

      [v2 endOfAudioWithByteCountAfterEndOfSpeech_];
    }
  }
}

unint64_t sub_272252468(uint64_t a1)
{
  sub_27237745C();
  sub_272253DFC(&qword_280882080, MEMORY[0x277CDCBE8], MEMORY[0x277CDCBF0]);
  v2 = sub_27237776C();

  return sub_272252500(a1, v2);
}

unint64_t sub_272252500(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_27237745C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_272253DFC(&qword_280882088, MEMORY[0x277CDCBE8], MEMORY[0x277CDCBF8]);
      v15 = sub_2723777DC();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

id sub_2722526C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  *(v4 + OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_speechAnalyzer) = 0;
  v8 = OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_inputStream;
  v9 = sub_2721F065C(&qword_280881F50, &unk_272381B70);
  (*(*(v9 - 8) + 56))(v4 + v8, 1, 1, v9);
  v10 = OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_inputStreamBuilder;
  v11 = sub_2721F065C(&qword_280881F58, &unk_27237E2F0);
  (*(*(v11 - 8) + 56))(v4 + v10, 1, 1, v11);
  *(v4 + OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_feedEmptyBufferTillFinalResultTask) = 0;
  *(v4 + OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_recognizerTask) = 0;
  *(v4 + OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_speechAPITask) = 0;
  *(v4 + OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_vadTask) = 0;
  *(v4 + OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_speechDetector) = 0;
  *(v4 + OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_timingInfo) = 0;
  v12 = OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_asrDelegate;
  *(v4 + OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_asrDelegate) = 0;
  v13 = OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_speechDetectorDelegate;
  *(v4 + OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_speechDetectorDelegate) = 0;
  v14 = OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_speechDetectorOutputStream;
  v15 = sub_2721F065C(&qword_280881900, &qword_27237C4F0);
  (*(*(v15 - 8) + 56))(v5 + v14, 1, 1, v15);
  v16 = OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_runtimeParameters;
  v17 = type metadata accessor for VARuntimeParameters(0);
  (*(*(v17 - 8) + 56))(v5 + v16, 1, 1, v17);
  *(v5 + OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_audioDuringSpeech) = 0;
  *(v5 + OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_stopped) = 0;
  *(v5 + OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_pausedDetector) = 0;
  v18 = OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_speechEnded;
  type metadata accessor for SharedBool();
  v19 = swift_allocObject();
  sub_272244D44(0, 0x6E45686365657073, 0xEB00000000646564);
  *(v5 + v18) = v19;
  v20 = OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_gotFinalResult;
  v21 = swift_allocObject();
  sub_272244D44(0, 0x6C616E6946746F67, 0xEE00746C75736552);
  *(v5 + v20) = v21;
  v22 = OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_gotPartialResult;
  v23 = swift_allocObject();
  sub_272244D44(0, 0xD000000000000010, 0x800000027238AA40);
  *(v5 + v22) = v23;
  *(v5 + v12) = a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(v5 + v13) = a3;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(v5 + OBJC_IVAR____TtC12VoiceActions18VASpeechAPISpotter_speechAPISpotterConfiguration) = a4;
  type metadata accessor for VAConfiguration();

  v25 = static VAConfiguration.buildForSpeechAPISpotter(speechAPISpotterConfig:)(v24);
  sub_272335304(v29);
  return sub_272335390(a1, v25, v29);
}

unint64_t sub_272252A6C()
{
  result = qword_280881F78;
  if (!qword_280881F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280881F78);
  }

  return result;
}

uint64_t sub_272252AC0(uint64_t a1)
{
  v3 = sub_2721F065C(&qword_280881900, &qword_27237C4F0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v18 - v5;
  v7 = sub_2721F065C(&qword_2808819D8, &qword_27237CB50);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v18 - v8;
  sub_2721F065C(&qword_280882040, &unk_27237E470);
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D837D0];
  *(v10 + 16) = xmmword_27237AF80;
  *(v10 + 56) = v11;
  strcpy((v10 + 32), "CREATING VAD");
  *(v10 + 45) = 0;
  *(v10 + 46) = -5120;
  sub_27237872C();

  v12 = sub_272377C3C();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  (*(v4 + 16))(v6, a1, v3);
  v13 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = 0;
  *(v14 + 3) = 0;
  *(v14 + 4) = v1;
  (*(v4 + 32))(&v14[v13], v6, v3);
  v15 = v1;
  v16 = sub_272215108(0, 0, v9, &unk_27237E4A0, v14);
  sub_2721F40F0(v9, &qword_2808819D8, &qword_27237CB50);
  return v16;
}

uint64_t sub_272252D40()
{
  v1 = (type metadata accessor for VARuntimeParameters(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  v5 = (v4 + v2 + v3) & ~v2;
  v6 = (v4 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  v7 = v0 + v3;

  v8 = v1[29];
  v9 = sub_272376EBC();
  v10 = *(*(v9 - 8) + 8);
  v10(v7 + v8, v9);

  v10(v0 + v5 + v1[29], v9);

  v11 = (v13 + 15) & 0xFFFFFFFFFFFFFFF8;

  return MEMORY[0x2821FE8E8](v0, v11 + 8, v2 | 7);
}

uint64_t sub_272252EE0(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for VARuntimeParameters(0) - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 32) & ~v6;
  v8 = *(v5 + 64);
  v9 = (v8 + v6 + v7) & ~v6;
  v10 = (v8 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v1 + v10);
  v13 = *(v1 + v11);
  v14 = *(v1 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8));
  v17 = swift_task_alloc();
  *(v3 + 16) = v17;
  *v17 = v3;
  v17[1] = sub_272219D80;

  return sub_272246C08(a1, v15, v16, v1 + v7, v1 + v9, v12, v13, v14);
}

uint64_t type metadata accessor for VASpeechAPISpotter(uint64_t a1)
{
  result = qword_280887908;
  if (!qword_280887908)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_272253084(uint64_t a1)
{
  sub_272219478(319, &qword_280881FA0, &qword_280881F50, &unk_272381B70);
  if (v1 <= 0x3F)
  {
    sub_272219478(319, &qword_280881FA8, &qword_280881F58, &unk_27237E2F0);
    if (v2 <= 0x3F)
    {
      sub_272219478(319, &qword_280881A10, &qword_280881900, &qword_27237C4F0);
      if (v3 <= 0x3F)
      {
        sub_272253328(319);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_272253328(uint64_t a1)
{
  if (!qword_280881FB0)
  {
    type metadata accessor for VARuntimeParameters(255);
    v1 = sub_27237801C();
    if (!v2)
    {
      atomic_store(v1, &qword_280881FB0);
    }
  }
}

unint64_t sub_272253380(uint64_t a1)
{
  v2 = sub_2721F065C(&qword_280881FE0, &qword_27237E420);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_2721F065C(&qword_280882078, &qword_27237E490);
    v7 = sub_2723783EC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_2721F07F4(v9, v5, &qword_280881FE0, &qword_27237E420);
      result = sub_272252468(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_27237745C();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

uint64_t sub_272253568(uint64_t a1)
{
  v2 = sub_27237737C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_2721F065C(&qword_280882060, &qword_27237E488);
    v9 = sub_2723781AC();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_272253DFC(&qword_280882068, MEMORY[0x277CDCB30], MEMORY[0x277CDCB38]);
      v16 = sub_27237776C();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_272253DFC(&qword_280882070, MEMORY[0x277CDCB30], MEMORY[0x277CDCB40]);
          v23 = sub_2723777DC();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_272253888(uint64_t a1)
{
  v2 = sub_27237733C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_2721F065C(&qword_280882048, &qword_27237E480);
    v9 = sub_2723781AC();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_272253DFC(&qword_280882050, MEMORY[0x277CDCAC8], MEMORY[0x277CDCAD0]);
      v16 = sub_27237776C();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_272253DFC(&qword_280882058, MEMORY[0x277CDCAC8], MEMORY[0x277CDCAD8]);
          v23 = sub_2723777DC();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_272253BA8()
{
  v1 = (type metadata accessor for VARuntimeParameters(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(*v1 + 64);
  swift_unknownObjectRelease();

  v5 = v1[29];
  v6 = sub_272376EBC();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_272253CB8(uint64_t a1)
{
  v4 = *(type metadata accessor for VARuntimeParameters(0) - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_272219D80;

  return sub_2722497F4(a1, v8, v9, v6, v7, v1 + v5);
}

unint64_t sub_272253DA8()
{
  result = qword_280882038;
  if (!qword_280882038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280882038);
  }

  return result;
}

uint64_t sub_272253DFC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_272253E44()
{
  v1 = sub_2721F065C(&qword_280881900, &qword_27237C4F0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_272253F1C()
{
  v2 = *(sub_2721F065C(&qword_280881900, &qword_27237C4F0) - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_272211DBC;

  return sub_27224E474(v5, v6, v7, v4, v0 + v3);
}

uint64_t sub_272254000()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_272254040()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_272219D80;

  return sub_272251A84(v3, v4, v5, v2);
}

uint64_t sub_2722540D4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_27225411C()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_272211DBC;

  return sub_272251210(v5, v6, v7, v2, v3, v4);
}

uint64_t sub_2722541C4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_272254228(float a1)
{
  v2 = v1;
  v17 = *MEMORY[0x277D85DE8];
  v4 = [v1 int16ChannelData];
  if (v4)
  {
    v5 = v4;
    v6 = [v1 frameLength];
    v7 = [v2 format];
    v8 = [v7 channelCount];

    if (v8)
    {
      v9 = v8;
      do
      {
        if (v6)
        {
          v11 = sub_272377B5C();
          *(v11 + 16) = v6;
          bzero((v11 + 32), 4 * v6);
        }

        else
        {
          v11 = MEMORY[0x277D84F90];
        }

        vDSP_vflt16(*v5, 1, (v11 + 32), 1, v6);
        v16 = a1;

        v12 = v11;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_2721FF8B4(0, *(v11 + 16), 0, v11);
        }

        MEMORY[0x2743C6C10](v11 + 32, 1, &v16, v12 + 32, 1, v6);

        __C = 32766.0;
        __B = -32767.0;

        v13 = v12;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = sub_2721FF8B4(0, *(v12 + 2), 0, v12);
        }

        vDSP_vclip(v12 + 8, 1, &__B, &__C, v13 + 8, 1, v6);

        v10 = *v5++;
        vDSP_vfixr16(v13 + 8, 1, v10, 1, v6);

        --v9;
      }

      while (v9);
    }
  }
}

Swift::String __swiftcall VATempDir()()
{
  v0 = 0x800000027238AC40;
  v1 = 0xD000000000000011;
  result._object = v0;
  result._countAndFlagsBits = v1;
  return result;
}

AVAudioPCMBuffer __swiftcall convert(audioBytes:)(Swift::OpaquePointer audioBytes)
{
  v22 = *MEMORY[0x277D85DE8];
  v1 = *(audioBytes._rawValue + 2);
  if (v1)
  {
    v3 = sub_272377B5C();
    *(v3 + 16) = v1;
    bzero((v3 + 32), 2 * v1);

    v19 = MEMORY[0x277D84F90];
    sub_272215F8C(0, v1, 0);
    v4 = v19;
    v5 = (audioBytes._rawValue + 32);
    while (1)
    {
      v6 = *v5;
      if ((*v5 & 0x7FFFFFFFu) > 0x7F7FFFFF)
      {
        break;
      }

      if (v6 <= -32769.0)
      {
        goto LABEL_18;
      }

      if (v6 >= 32768.0)
      {
        goto LABEL_19;
      }

      v19 = v4;
      v8 = v4[2];
      v7 = v4[3];
      if (v8 >= v7 >> 1)
      {
        sub_272215F8C((v7 > 1), v8 + 1, 1);
        v4 = v19;
      }

      v4[2] = v8 + 1;
      *(v4 + v8 + 16) = v6;
      ++v5;
      if (!--v1)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v4 = MEMORY[0x277D84F90];

LABEL_11:
  v19 = 0x40CF400000000000;
  v20 = xmmword_27237C4D0;
  v21 = xmmword_27237C4E0;
  v9 = [objc_allocWithZone(MEMORY[0x277CB83A8]) initWithStreamDescription_];
  if (!v9)
  {
    goto LABEL_21;
  }

  v10 = v4[2];
  if (HIDWORD(v10))
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }

  v11 = v9;
  v12 = objc_allocWithZone(MEMORY[0x277CB83C8]);
  v13 = [v12 initWithPCMFormat:v11 frameCapacity:v10, v19, v20, v21, v22];
  if (!v13)
  {
    goto LABEL_22;
  }

  v14 = v13;
  v15 = [v13 int16ChannelData];
  if (v15)
  {
    v15 = *v15;
  }

  memcpy(v15, v4 + 4, 2 * v10);

  [v14 setFrameLength_];

  v17 = v14;
  result.super._impl = v16;
  result.super.super.isa = v17;
  return result;
}