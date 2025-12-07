void sub_20DFB0EE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v104 = a2;
  v105 = a3;
  v111 = sub_20E008AF4();
  v4 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v6 = &v95 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20E009234();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = (&v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = MEMORY[0x28223BE20](v9);
  v114 = &v95 - v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v95 - v14;
  if (qword_2811230E0 != -1)
  {
    swift_once();
  }

  v103 = v11;
  v16 = sub_20E009094();
  v115 = __swift_project_value_buffer(v16, qword_281124A00);
  v17 = sub_20E009074();
  v18 = sub_20E009524();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_20DF62000, v17, v18, "Generating individual geohash tiles from parent geohash.", v19, 2u);
    MEMORY[0x20F32B3A0](v19, -1, -1);
  }

  v110 = a1;
  sub_20E008A84();
  sub_20E009214();
  type metadata accessor for StreamReader(0);
  v20 = swift_allocObject();
  v21 = OBJC_IVAR____TtC19HomeUtilityServices12StreamReader_fileHandle;
  *(v20 + OBJC_IVAR____TtC19HomeUtilityServices12StreamReader_fileHandle) = 0;
  *(v20 + OBJC_IVAR____TtC19HomeUtilityServices12StreamReader_atEof) = 0;
  *(v20 + OBJC_IVAR____TtC19HomeUtilityServices12StreamReader_chunkSize) = 4096;
  v112 = *(v8 + 16);
  v113 = v8 + 16;
  v112(v20 + OBJC_IVAR____TtC19HomeUtilityServices12StreamReader_encoding, v15, v7);
  v22 = sub_20E0091C4();

  v23 = [objc_opt_self() fileHandleForReadingAtPath_];

  v24 = &OBJC_IVAR____TtC19HomeUtilityServices12StreamReader_buffer;
  v109 = v23;
  if (!v23)
  {
    (*(v8 + 8))(v15, v7);
    goto LABEL_47;
  }

  v25 = &OBJC_IVAR____TtC19HomeUtilityServices12StreamReader_buffer;
  v26 = sub_20E0091E4();
  if (v27 >> 60 == 15)
  {
    (*(v8 + 8))(v15, v7);
LABEL_46:

    v24 = v25;
LABEL_47:
    *(v20 + v21) = 0;
    *(v20 + OBJC_IVAR____TtC19HomeUtilityServices12StreamReader_delimData) = xmmword_20E00D7C0;
    *(v20 + *v24) = 0;
    swift_setDeallocating();
    sub_20DF8FE98();
    swift_deallocClassInstance();
    v70 = v111;
    (*(v4 + 16))(v6, v110, v111);
    v71 = sub_20E009074();
    v72 = sub_20E009544();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v118 = v74;
      *v73 = 136315138;
      v75 = sub_20E008A84();
      v77 = v76;
      (*(v4 + 8))(v6, v70);
      v78 = sub_20DF74468(v75, v77, &v118);

      *(v73 + 4) = v78;
      _os_log_impl(&dword_20DF62000, v71, v72, "Unable to open file stream for file :%s", v73, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v74);
      MEMORY[0x20F32B3A0](v74, -1, -1);
      MEMORY[0x20F32B3A0](v73, -1, -1);
    }

    else
    {

      (*(v4 + 8))(v6, v70);
    }

    return;
  }

  v28 = v26;
  v29 = v27;
  v30 = [objc_allocWithZone(MEMORY[0x277CBEB28]) initWithCapacity_];
  v31 = v7;
  v32 = v30;
  v33 = *(v8 + 8);
  v108 = v31;
  v101 = v33;
  v102 = v8 + 8;
  (v33)(v15);
  if (!v32)
  {
LABEL_45:
    sub_20DF64DE8(v28, v29);
    goto LABEL_46;
  }

  *(v20 + v21) = v109;
  v6 = &OBJC_IVAR____TtC19HomeUtilityServices12StreamReader_delimData;
  v34 = (v20 + OBJC_IVAR____TtC19HomeUtilityServices12StreamReader_delimData);
  *v34 = v28;
  v34[1] = v29;
  *(v20 + OBJC_IVAR____TtC19HomeUtilityServices12StreamReader_buffer) = v32;
  if (qword_281123098 != -1)
  {
LABEL_63:
    swift_once();
  }

  v28 = qword_2811249C0;
  v35 = *algn_2811249C8;
  v118 = qword_2811249C0;
  v119 = *algn_2811249C8;

  MEMORY[0x20F32A4B0](v104, v105);
  v29 = v119;
  v36 = sub_20DFFCF8C(v118, v119);

  if ((v36 & 1) == 0)
  {
    v79 = sub_20E009074();
    v80 = sub_20E009544();
    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      *v81 = 0;
      _os_log_impl(&dword_20DF62000, v79, v80, "Unable to create directory for saving GeoHash Polygons", v81, 2u);
      MEMORY[0x20F32B3A0](v81, -1, -1);
    }

LABEL_52:

    swift_setDeallocating();
    sub_20DF8FE98();
    swift_deallocClassInstance();
    return;
  }

  v96 = v35;
  v97 = v28;
  v100 = [objc_opt_self() defaultManager];
  v37 = OBJC_IVAR____TtC19HomeUtilityServices12StreamReader_fileHandle;
  v111 = OBJC_IVAR____TtC19HomeUtilityServices12StreamReader_atEof;
  v107 = *v25;
  v38 = *v6;
  v106 = OBJC_IVAR____TtC19HomeUtilityServices12StreamReader_encoding;
  v39 = MEMORY[0x20F32ADB0]();
  if (!*(v20 + v37))
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v29 = v39;
  v99 = 0;
  v98 = 0;
  v21 = v20 + v38;
  *&v40 = 136315138;
  v95 = v40;
  v110 = v37;
  while ((*(v20 + v111) & 1) == 0)
  {
    v25 = *(v20 + v107);
    if (!v25)
    {
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
      return;
    }

    if (*(v21 + 8) >> 60 == 15)
    {
      goto LABEL_67;
    }

    v41 = sub_20E008B64();
    v28 = [v25 rangeOfData:v41 options:0 range:{0, objc_msgSend(v25, sel_length)}];
    v4 = v42;
    while (1)
    {

      if (v28 != sub_20E008674())
      {
        break;
      }

      v43 = *(v20 + v37);
      if (!v43)
      {
        __break(1u);
LABEL_65:
        __break(1u);
        goto LABEL_66;
      }

      v44 = [v43 readDataOfLength_];
      v6 = sub_20E008B84();
      v46 = v45;

      v47 = v46 >> 62;
      if ((v46 >> 62) > 1)
      {
        if (v47 != 2 || *(v6 + 16) == *(v6 + 24))
        {
LABEL_32:
          *(v20 + v111) = 1;
          if ([v25 length] < 1)
          {
            sub_20DF67FFC(v6, v46);
            goto LABEL_54;
          }

          v28 = sub_20E008B84();
          v4 = v56;
          v112(v114, (v20 + v106), v108);
          v53 = sub_20E0091F4();
          v55 = v57;
          sub_20DF67FFC(v28, v4);
          [v25 setLength_];
          sub_20DF67FFC(v6, v46);
          goto LABEL_34;
        }
      }

      else if (v47)
      {
        if (v6 == v6 >> 32)
        {
          goto LABEL_32;
        }
      }

      else if ((v46 & 0xFF000000000000) == 0)
      {
        goto LABEL_32;
      }

      v48 = sub_20E008B64();
      [v25 appendData_];

      if (*(v21 + 8) >> 60 == 15)
      {
        goto LABEL_65;
      }

      v41 = sub_20E008B64();
      v28 = [v25 rangeOfData:v41 options:0 range:{0, objc_msgSend(v25, sel_length)}];
      v4 = v49;
      sub_20DF67FFC(v6, v46);
    }

    v50 = [v25 subdataWithRange_];
    v51 = sub_20E008B84();
    v6 = v52;

    v112(v114, (v20 + v106), v108);
    v53 = sub_20E0091F4();
    v55 = v54;
    sub_20DF67FFC(v51, v6);
    if (__OFADD__(v28, v4))
    {
      __break(1u);
      goto LABEL_63;
    }

    [v25 replaceBytesInRange:0 withBytes:v28 + v4 length:{0, 0}];
LABEL_34:
    objc_autoreleasePoolPop(v29);
    if (!v55)
    {
      goto LABEL_55;
    }

    v58 = sub_20DFFD394(v53, v55);
    if (v59)
    {
      v118 = v97;
      v119 = v96;
      v62 = v58;
      v63 = v59;

      MEMORY[0x20F32A4B0](v104, v105);
      MEMORY[0x20F32A4B0](47, 0xE100000000000000);
      MEMORY[0x20F32A4B0](v62, v63);
      MEMORY[0x20F32A4B0](0x6E6F736A2ELL, 0xE500000000000000);

      v65 = v118;
      v6 = v119;
      v28 = MEMORY[0x20F32ADB0](v64);
      v118 = v53;
      v119 = v55;
      v116 = v65;
      v117 = v6;
      v25 = v103;
      sub_20E009214();
      sub_20DF751E4();
      v66 = v98;
      sub_20E009624();
      v98 = v66;
      if (v66)
      {
        v101(v25, v108);

        objc_autoreleasePoolPop(v28);
        v86 = v98;
        v87 = v98;
        v88 = sub_20E009074();
        v89 = sub_20E009544();

        if (os_log_type_enabled(v88, v89))
        {
          v90 = swift_slowAlloc();
          v91 = swift_slowAlloc();
          *v90 = 138412290;
          v92 = v86;
          v93 = _swift_stdlib_bridgeErrorToNSError();
          *(v90 + 4) = v93;
          *v91 = v93;
          _os_log_impl(&dword_20DF62000, v88, v89, "Error while trying to geohash String to file %@", v90, 0xCu);
          sub_20DF66E28(v91, &qword_27C8521E0, &unk_20E011080);
          MEMORY[0x20F32B3A0](v91, -1, -1);
          MEMORY[0x20F32B3A0](v90, -1, -1);
        }

        else
        {
        }

        v79 = v109;
        v94 = v110;
        [v109 closeFile];

        *(v20 + v94) = 0;
        goto LABEL_52;
      }

      v101(v25, v108);

      objc_autoreleasePoolPop(v28);

      v67 = sub_20E009074();
      v68 = sub_20E009534();

      if (os_log_type_enabled(v67, v68))
      {
        v28 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v118 = v25;
        *v28 = v95;
        *(v28 + 1) = sub_20DF74468(v65, v6, &v118);
        _os_log_impl(&dword_20DF62000, v67, v68, "Successfully wrote to %s", v28, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v25);
        MEMORY[0x20F32B3A0](v25, -1, -1);
        MEMORY[0x20F32B3A0](v28, -1, -1);
      }

      v37 = v110;
      v69 = sub_20E0091C4();

      v99 = [v100 fileExistsAtPath_];

      v29 = MEMORY[0x20F32ADB0]();
      if (!*(v20 + v37))
      {
        goto LABEL_44;
      }
    }

    else
    {

      v60 = sub_20E009074();
      v61 = sub_20E009544();
      if (os_log_type_enabled(v60, v61))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_20DF62000, v60, v61, "Unable to find file name for the geo hash string", v28, 2u);
        MEMORY[0x20F32B3A0](v28, -1, -1);
      }

      v29 = MEMORY[0x20F32ADB0]();
      v37 = v110;
      if (!*(v20 + v110))
      {
        goto LABEL_44;
      }
    }
  }

LABEL_54:
  objc_autoreleasePoolPop(v29);
LABEL_55:
  v82 = sub_20E009074();
  v83 = sub_20E009554();
  if (os_log_type_enabled(v82, v83))
  {
    v84 = swift_slowAlloc();
    *v84 = 0;
    _os_log_impl(&dword_20DF62000, v82, v83, "Wrote all geohash tile to disk.", v84, 2u);
    MEMORY[0x20F32B3A0](v84, -1, -1);
  }

  v85 = v109;
  [v109 closeFile];

  *(v20 + v110) = 0;
  swift_setDeallocating();
  sub_20DF8FE98();
  swift_deallocClassInstance();
}

uint64_t sub_20DFB1E20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20E008CD4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2811230E0 != -1)
  {
    swift_once();
  }

  v10 = sub_20E009094();
  __swift_project_value_buffer(v10, qword_281124A00);
  v11 = sub_20E009074();
  v12 = sub_20E009524();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_20DF62000, v11, v12, "Trying to save metadata about downloaded geohash tile.", v13, 2u);
    MEMORY[0x20F32B3A0](v13, -1, -1);
  }

  result = sub_20DFAE84C();
  if (v15)
  {
    v16 = result;
    v17 = v15;
    v27 = a1;
    sub_20DFAEBC4();
    sub_20E008C54();
    v30 = a2;
    v31 = a3;
    v32 = 0u;
    v33 = 0u;

    v18 = sub_20DF9C834();
    v29 = MEMORY[0x277D837D0];
    v28[0] = v16;
    v28[1] = v17;
    sub_20DF9C678(v18, v19, v28, 0xD00000000000002CLL, 0x800000020E0160E0);

    sub_20DF66E28(v28, &qword_27C8521F0, &unk_20E00EC00);
    v20 = sub_20DF9C98C();
    v22 = v21;

    v29 = v6;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v28);
    (*(v7 + 16))(boxed_opaque_existential_0, v9, v6);
    sub_20DF9C678(v20, v22, v28, 0xD00000000000002CLL, 0x800000020E0160E0);

    sub_20DF66E28(v28, &qword_27C8521F0, &unk_20E00EC00);
    v24 = sub_20E009074();
    v25 = sub_20E009554();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_20DF62000, v24, v25, "Saved metadata about downloaded geohash tile to defaults", v26, 2u);
      MEMORY[0x20F32B3A0](v26, -1, -1);
    }

    return (*(v7 + 8))(v9, v6);
  }

  return result;
}

uint64_t sub_20DFB23F0(double a1, double a2)
{
  v2 = sub_20E009144();
  v29 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_20E0090F4();
  v27 = *(v5 - 8);
  v28 = v5;
  MEMORY[0x28223BE20](v5);
  v26 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20E009234();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20DFE7E38();
  v12 = 0xEA00000000006C61;
  v13 = 0x6E7265746E496171;
  v14 = 1953654115;
  if (v11 != 2)
  {
    v14 = 1685025392;
  }

  if (v11)
  {
    v13 = 7759204;
    v12 = 0xE300000000000000;
  }

  if (v11 <= 1)
  {
    v15 = v13;
  }

  else
  {
    v15 = v14;
  }

  if (v11 <= 1)
  {
    v16 = v12;
  }

  else
  {
    v16 = 0xE400000000000000;
  }

  v30 = 0;
  v31 = 0xE000000000000000;
  sub_20E009714();
  MEMORY[0x20F32A4B0](0xD00000000000003BLL, 0x800000020E016850);
  MEMORY[0x20F32A4B0](v15, v16);

  v17 = v30;
  v18 = v31;
  v30 = 0;
  v31 = 0xE000000000000000;
  sub_20E0094D4();
  MEMORY[0x20F32A4B0](46, 0xE100000000000000);
  sub_20E0094D4();
  MEMORY[0x20F32A4B0](46, 0xE100000000000000);
  MEMORY[0x20F32A4B0](v17, v18);

  sub_20E009214();
  v19 = sub_20E0091E4();
  v21 = v20;

  (*(v8 + 8))(v10, v7);
  result = 0;
  if (v21 >> 60 != 15)
  {
    sub_20DFB2FBC(&qword_27C852DB8, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
    sub_20E0090E4();
    sub_20DF67FA8(v19, v21);
    sub_20DFF1E24(v19, v21, v4);
    sub_20DF64DE8(v19, v21);
    v23 = v26;
    sub_20E0090D4();
    (*(v29 + 8))(v4, v2);
    v24 = sub_20DFEED38();
    sub_20DF64DE8(v19, v21);
    (*(v27 + 8))(v23, v28);
    return v24;
  }

  return result;
}

uint64_t sub_20DFB2810(uint64_t a1, uint64_t a2, double a3, double a4)
{
  sub_20DFB23F0(a3, a4);
  if (!v4)
  {
    if (qword_2811230E0 != -1)
    {
      swift_once();
    }

    v18 = sub_20E009094();
    __swift_project_value_buffer(v18, qword_281124A00);
    v14 = sub_20E009074();
    v15 = sub_20E009544();
    if (!os_log_type_enabled(v14, v15))
    {
      goto LABEL_18;
    }

    v16 = swift_slowAlloc();
    *v16 = 0;
    v17 = "Unable to generate key for looking up utility info.";
    goto LABEL_17;
  }

  v5 = sub_20E0091C4();

  v6 = sub_20E0091C4();
  v7 = CFPreferencesCopyAppValue(v5, v6);

  if (!v7 || (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852460, &qword_20E00B2C0), (swift_dynamicCast() & 1) == 0))
  {
    if (qword_2811230E0 != -1)
    {
      swift_once();
    }

    v13 = sub_20E009094();
    __swift_project_value_buffer(v13, qword_281124A00);
    v14 = sub_20E009074();
    v15 = sub_20E009544();
    if (!os_log_type_enabled(v14, v15))
    {
      goto LABEL_18;
    }

    v16 = swift_slowAlloc();
    *v16 = 0;
    v17 = "Unable to lookup computed utility from disk.";
LABEL_17:
    _os_log_impl(&dword_20DF62000, v14, v15, v17, v16, 2u);
    MEMORY[0x20F32B3A0](v16, -1, -1);
LABEL_18:

    return 0;
  }

  if (qword_2811230E0 != -1)
  {
    swift_once();
  }

  v8 = sub_20E009094();
  __swift_project_value_buffer(v8, qword_281124A00);
  v9 = sub_20E009074();
  v10 = sub_20E009554();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_20DF62000, v9, v10, "Successfully retrieved computed utility from disk.", v11, 2u);
    MEMORY[0x20F32B3A0](v11, -1, -1);
  }

  return v19;
}

void sub_20DFB2AD0(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  if (!a1)
  {
    if (qword_2811230E0 != -1)
    {
      swift_once();
    }

    v12 = sub_20E009094();
    __swift_project_value_buffer(v12, qword_281124A00);
    oslog = sub_20E009074();
    v13 = sub_20E009544();
    if (!os_log_type_enabled(oslog, v13))
    {
      goto LABEL_13;
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = "No utility Territory information to save.";
    goto LABEL_12;
  }

  v8 = sub_20DFB23F0(a4, a5);
  if (v9)
  {
    v10 = v8;
    v11 = v9;
    v22[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852460, &qword_20E00B2C0);
    v22[0] = a1;

    sub_20DF9C678(v10, v11, v22, a2, a3);

    sub_20DF66E28(v22, &qword_27C8521F0, &unk_20E00EC00);
    if (qword_2811230E0 != -1)
    {
      swift_once();
    }

    v17 = sub_20E009094();
    __swift_project_value_buffer(v17, qword_281124A00);
    v18 = sub_20E009074();
    v19 = sub_20E009554();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_20DF62000, v18, v19, "Saved computed utility for coordinate value.", v20, 2u);
      MEMORY[0x20F32B3A0](v20, -1, -1);
    }

    return;
  }

  if (qword_2811230E0 != -1)
  {
    swift_once();
  }

  v16 = sub_20E009094();
  __swift_project_value_buffer(v16, qword_281124A00);
  oslog = sub_20E009074();
  v13 = sub_20E009544();
  if (os_log_type_enabled(oslog, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = "Unable to generate key for saving utility info.";
LABEL_12:
    _os_log_impl(&dword_20DF62000, oslog, v13, v15, v14, 2u);
    MEMORY[0x20F32B3A0](v14, -1, -1);
  }

LABEL_13:
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_20DFB2F60(uint64_t a1)
{
  v2 = type metadata accessor for NetworkError(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20DFB2FBC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_20DFB3004(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852E18, &qword_20E00FA48);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20DFB5390();
  sub_20E009A84();
  v9[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852DD8, &qword_20E00FA30);
  sub_20DFB5850(&qword_27C852E20, sub_20DFB58C8, MEMORY[0x277D83948]);
  sub_20E009944();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_20DFB31B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x416465686374616DLL && a2 == 0xEE00737365726464)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_20E009984();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_20DFB3244(uint64_t a1)
{
  v2 = sub_20DFB5390();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20DFB3280(uint64_t a1)
{
  v2 = sub_20DFB5390();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_20DFB32BC@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_20DFB51DC(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_20DFB3304(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852E08, &qword_20E00FA40);
  v33 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v16[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20DFB56EC();
  sub_20E009A84();
  v8 = v3[4];
  v9 = v3[2];
  v29 = v3[3];
  v30 = v8;
  v10 = v3[4];
  v11 = v3[6];
  v31 = v3[5];
  v32 = v11;
  v12 = *v3;
  v13 = v3[2];
  v27 = v3[1];
  v28 = v13;
  v14 = *v3;
  v23 = v10;
  v24 = v31;
  v25 = v3[6];
  v26 = v14;
  v19 = v12;
  v20 = v27;
  v21 = v9;
  v22 = v29;
  v18 = 0;
  sub_20DFB57C4(&v26, v17);
  sub_20DFB57FC();
  sub_20E009944();
  v17[4] = v23;
  v17[5] = v24;
  v17[6] = v25;
  v17[0] = v19;
  v17[1] = v20;
  v17[2] = v21;
  v17[3] = v22;
  sub_20DFB5794(v17);
  if (!v2)
  {
    v16[15] = 1;
    sub_20E009914();
  }

  return (*(v33 + 8))(v7, v5);
}

uint64_t sub_20DFB3528(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852E70, &qword_20E00FD30);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20DFB6194();
  sub_20E009A84();
  v8[15] = 0;
  sub_20E009914();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_20E0098D4();
  v8[13] = 2;
  sub_20E0098D4();
  v8[12] = 3;
  sub_20E009914();
  v8[11] = 4;
  sub_20E009914();
  v8[10] = 5;
  sub_20E009914();
  v8[9] = 6;
  sub_20E009914();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_20DFB3748()
{
  if (*v0)
  {
    return 0x686374616DLL;
  }

  else
  {
    return 0x73736572646461;
  }
}

uint64_t sub_20DFB3780@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x73736572646461 && a2 == 0xE700000000000000;
  if (v6 || (sub_20E009984() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x686374616DLL && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_20E009984();

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

uint64_t sub_20DFB3858(uint64_t a1)
{
  v2 = sub_20DFB56EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20DFB3894(uint64_t a1)
{
  v2 = sub_20DFB56EC();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_20DFB38D0@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_20DFB5438(a2, v9);
  if (!v2)
  {
    v5 = v13;
    a1[4] = v12;
    a1[5] = v5;
    v6 = v15;
    a1[6] = v14;
    a1[7] = v6;
    v7 = v9[1];
    *a1 = v9[0];
    a1[1] = v7;
    result = *&v10;
    v8 = v11;
    a1[2] = v10;
    a1[3] = v8;
  }

  return result;
}

uint64_t sub_20DFB393C(uint64_t a1)
{
  v2 = sub_20DFB6194();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20DFB3978(uint64_t a1)
{
  v2 = sub_20DFB6194();

  return MEMORY[0x2821FE720](a1, v2);
}

__n128 sub_20DFB39B4@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_20DFB5C24(a2, v7);
  if (!v2)
  {
    v5 = v7[5];
    *(a1 + 64) = v7[4];
    *(a1 + 80) = v5;
    *(a1 + 96) = v7[6];
    v6 = v7[1];
    *a1 = v7[0];
    *(a1 + 16) = v6;
    result = v7[3];
    *(a1 + 32) = v7[2];
    *(a1 + 48) = result;
  }

  return result;
}

uint64_t sub_20DFB3A20(uint64_t a1, uint64_t a2)
{
  v2[39] = a1;
  v2[40] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8520C8, &qword_20E010830);
  v2[41] = swift_task_alloc();
  v4 = sub_20E008714();
  v2[42] = v4;
  v2[43] = *(v4 - 8);
  v2[44] = swift_task_alloc();
  v5 = swift_task_alloc();
  v2[45] = v5;
  *v5 = v2;
  v5[1] = sub_20DFB3B4C;

  return sub_20DF9D6CC(a2);
}

uint64_t sub_20DFB3B4C()
{

  return MEMORY[0x2822009F8](sub_20DFB3C48, 0, 0);
}

uint64_t sub_20DFB3C48()
{
  KeyPath = swift_getKeyPath();
  v0[46] = KeyPath;
  v2 = swift_task_alloc();
  v0[47] = v2;
  *v2 = v0;
  v2[1] = sub_20DFB3CFC;
  v3 = v0[41];
  v4 = v0[39];

  return sub_20DFB97E0(v3, v4, KeyPath, 0);
}

uint64_t sub_20DFB3CFC()
{

  return MEMORY[0x2822009F8](sub_20DFB3E14, 0, 0);
}

uint64_t sub_20DFB3E14()
{
  v1 = v0[42];
  v2 = v0[43];
  v3 = v0[41];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_20DF8B6B4(v3);
    if (qword_27C852070 != -1)
    {
      swift_once();
    }

    v4 = sub_20E009094();
    __swift_project_value_buffer(v4, qword_27C8626B0);
    v5 = sub_20E009074();
    v6 = sub_20E009544();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_20DF62000, v5, v6, "Unable generate request URL for Address Verification Request", v7, 2u);
      MEMORY[0x20F32B3A0](v7, -1, -1);
    }

    type metadata accessor for NetworkError(0);
    sub_20DF960FC();
    swift_allocError();
    *v8 = 0;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v9 = v0[1];

    return v9();
  }

  else
  {
    (*(v2 + 32))(v0[44], v3, v1);
    sub_20DFDF8DC(0xD000000000000024, 0x800000020E016900, 0xD00000000000001ALL, 0x800000020E016930);
    v11 = swift_task_alloc();
    v0[48] = v11;
    *v11 = v0;
    v11[1] = sub_20DFB40A0;
    v12 = v0[44];

    return MEMORY[0x28211ECF8](v12, 0);
  }
}

uint64_t sub_20DFB40A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[49] = a1;
  v5[50] = a2;
  v5[51] = a3;
  v5[52] = v3;

  if (v3)
  {
    v6 = sub_20DFB4FAC;
  }

  else
  {
    v6 = sub_20DFB41B8;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_20DFB41B8()
{
  v1 = v0;
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (!v2)
  {
    if (qword_27C852070 != -1)
    {
      swift_once();
    }

    v10 = sub_20E009094();
    __swift_project_value_buffer(v10, qword_27C8626B0);
    v11 = sub_20E009074();
    v12 = sub_20E009544();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_20DF62000, v11, v12, "Unable to process Address Verification Response.", v13, 2u);
      MEMORY[0x20F32B3A0](v13, -1, -1);
    }

    v14 = *(v0 + 400);
    v15 = *(v0 + 408);
    super_class = v1[24].super_class;
    v18 = v1[21].super_class;
    receiver = v1[22].receiver;
    v19 = v1[21].receiver;

    type metadata accessor for NetworkError(0);
    sub_20DF960FC();
    swift_allocError();
    *v20 = 2;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_20DF67FFC(super_class, v14);
    goto LABEL_33;
  }

  v3 = v2;
  v4 = *(v0 + 408);
  sub_20DFDFFF8(0xD00000000000001FLL, 0x800000020E016950, [v3 statusCode], &unk_28252D390);
  v5 = [v3 statusCode];
  if (v5 > 400)
  {
    switch(v5)
    {
      case 401:
        if (qword_27C852070 != -1)
        {
          swift_once();
        }

        v24 = sub_20E009094();
        __swift_project_value_buffer(v24, qword_27C8626B0);
        v7 = sub_20E009074();
        v25 = sub_20E009544();
        if (os_log_type_enabled(v7, v25))
        {
          v26 = swift_slowAlloc();
          *v26 = 0;
          _os_log_impl(&dword_20DF62000, v7, v25, "Request Unauthorized.", v26, 2u);
          MEMORY[0x20F32B3A0](v26, -1, -1);
        }

        goto LABEL_32;
      case 404:
        if (qword_27C852070 != -1)
        {
          swift_once();
        }

        v27 = sub_20E009094();
        __swift_project_value_buffer(v27, qword_27C8626B0);
        v7 = sub_20E009074();
        v28 = sub_20E009544();
        if (os_log_type_enabled(v7, v28))
        {
          v29 = swift_slowAlloc();
          *v29 = 0;
          _os_log_impl(&dword_20DF62000, v7, v28, "No Matching Address Found.", v29, 2u);
          MEMORY[0x20F32B3A0](v29, -1, -1);
        }

        goto LABEL_32;
      case 429:
        if (qword_27C852070 != -1)
        {
          swift_once();
        }

        v6 = sub_20E009094();
        __swift_project_value_buffer(v6, qword_27C8626B0);
        v7 = sub_20E009074();
        v8 = sub_20E009544();
        if (os_log_type_enabled(v7, v8))
        {
          v9 = swift_slowAlloc();
          *v9 = 0;
          _os_log_impl(&dword_20DF62000, v7, v8, "TOO MANY REQUESTS | Server rejected calls cause of too many requests being made", v9, 2u);
          MEMORY[0x20F32B3A0](v9, -1, -1);
        }

LABEL_32:
        v30 = *(v0 + 400);
        v15 = *(v0 + 408);
        v31 = v1[24].super_class;
        v18 = v1[21].super_class;
        receiver = v1[22].receiver;
        v19 = v1[21].receiver;

        type metadata accessor for NetworkError(0);
        sub_20DF960FC();
        swift_allocError();
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        sub_20DF67FFC(v31, v30);

LABEL_33:
        (*(v18 + 1))(receiver, v19);
LABEL_34:

        v32 = v1->super_class;

        return v32();
    }

LABEL_45:
    if (qword_27C852070 != -1)
    {
      swift_once();
    }

    v51 = *(v0 + 408);
    v52 = sub_20E009094();
    __swift_project_value_buffer(v52, qword_27C8626B0);
    v53 = v51;
    v54 = sub_20E009074();
    v55 = sub_20E009544();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = v1[25].super_class;
      v57 = swift_slowAlloc();
      *v57 = 134217984;
      *(v57 + 4) = [v3 statusCode];

      _os_log_impl(&dword_20DF62000, v54, v55, "Request failed : Status Code %ld", v57, 0xCu);
      MEMORY[0x20F32B3A0](v57, -1, -1);
      v58 = v1[25].super_class;
    }

    else
    {

      v58 = v1[25].super_class;
      v54 = v58;
    }

    v60 = v1[24].super_class;
    v59 = v1[25].receiver;
    v61 = v1[21].super_class;
    v118 = v1[22].receiver;
    v116 = v1[21].receiver;

    type metadata accessor for NetworkError(0);
    sub_20DF960FC();
    swift_allocError();
    *v62 = [v3 statusCode];
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_20DF67FFC(v60, v59);

    (*(v61 + 1))(v118, v116);
    goto LABEL_34;
  }

  if (v5 != 200)
  {
    if (v5 == 400)
    {
      if (qword_27C852070 != -1)
      {
        swift_once();
      }

      v21 = sub_20E009094();
      __swift_project_value_buffer(v21, qword_27C8626B0);
      v7 = sub_20E009074();
      v22 = sub_20E009544();
      if (os_log_type_enabled(v7, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_20DF62000, v7, v22, "BAD REQUEST | Check request", v23, 2u);
        MEMORY[0x20F32B3A0](v23, -1, -1);
      }

      goto LABEL_32;
    }

    goto LABEL_45;
  }

  if (qword_27C852070 != -1)
  {
    swift_once();
  }

  v34 = sub_20E009094();
  __swift_project_value_buffer(v34, qword_27C8626B0);
  v35 = sub_20E009074();
  v36 = sub_20E009554();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&dword_20DF62000, v35, v36, "Address Verification Response received", v37, 2u);
    MEMORY[0x20F32B3A0](v37, -1, -1);
  }

  v38 = *(v0 + 416);

  sub_20E008744();
  swift_allocObject();
  sub_20E008734();
  sub_20DFB5034();
  sub_20E008724();
  v39 = v38;

  if (v38)
  {
    v40 = sub_20E009074();
    v41 = sub_20E009544();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_20DF62000, v40, v41, "Error while decoding response from server", v42, 2u);
      MEMORY[0x20F32B3A0](v42, -1, -1);
    }

    v43 = *(v0 + 400);
    v44 = *(v0 + 408);
    v45 = v1[24].super_class;
    v46 = v1;
    p_super_class = &v1[21].super_class;
    v48 = v1[21].super_class;
    v47 = p_super_class[1];
    v50 = v46[21].receiver;

    sub_20DFFE0B0(v39);
    swift_willThrow();
    sub_20DF67FFC(v45, v43);

    (*(v48 + 1))(v47, v50);
    v1 = v46;
    goto LABEL_34;
  }

  v63 = *(v0 + 304);
  v64 = *(v63 + 16);
  if (v64)
  {
    v120 = MEMORY[0x277D84F90];
    sub_20E0097B4();
    v105 = type metadata accessor for UtilityServiceAddress();
    v119 = v64 - 1;
    v65 = 32;
    v106 = v63;
    while (1)
    {
      v107 = v65;
      v66 = (v63 + v65);
      v67 = v66[4];
      v68 = v66[5];
      v69 = v66[6];
      v1[8] = v66[7];
      v70 = *v66;
      v71 = v66[1];
      v72 = v66[3];
      v1[3] = v66[2];
      v1[4] = v72;
      v1[1] = v70;
      v1[2] = v71;
      v1[6] = v68;
      v1[7] = v69;
      v1[5] = v67;
      v115 = v1[8].receiver;
      v117 = v1[8].super_class;
      v73 = v1[1].super_class;
      v74 = v1[2].super_class;
      v108 = v1[1].receiver;
      v109 = v1[2].receiver;
      v75 = v1[3].super_class;
      v76 = v1[4].super_class;
      v110 = v1[3].receiver;
      v111 = v1[4].receiver;
      v77 = v1[5].super_class;
      v78 = v1[6].super_class;
      v112 = v1[5].receiver;
      v113 = v1[6].receiver;
      v79 = v1[7].super_class;
      v114 = v1[7].receiver;
      v80 = v1;
      v81 = objc_allocWithZone(v105);
      v82 = &v81[OBJC_IVAR____TtC19HomeUtilityServices21UtilityServiceAddress_addressLine1];
      *v82 = v108;
      *(v82 + 1) = v73;
      v83 = &v81[OBJC_IVAR____TtC19HomeUtilityServices21UtilityServiceAddress_addressLine2];
      *v83 = v109;
      *(v83 + 1) = v74;
      v84 = &v81[OBJC_IVAR____TtC19HomeUtilityServices21UtilityServiceAddress_addressLine3];
      *v84 = v110;
      *(v84 + 1) = v75;
      v85 = &v81[OBJC_IVAR____TtC19HomeUtilityServices21UtilityServiceAddress_city];
      *v85 = v111;
      *(v85 + 1) = v76;
      v86 = &v81[OBJC_IVAR____TtC19HomeUtilityServices21UtilityServiceAddress_state];
      *v86 = v112;
      *(v86 + 1) = v77;
      v87 = &v81[OBJC_IVAR____TtC19HomeUtilityServices21UtilityServiceAddress_postalCode];
      *v87 = v113;
      *(v87 + 1) = v78;
      v88 = &v81[OBJC_IVAR____TtC19HomeUtilityServices21UtilityServiceAddress_country];
      *v88 = v114;
      *(v88 + 1) = v79;
      sub_20DFB5088(&v80[1], &v80[9]);
      v80[17].receiver = v81;
      v80[17].super_class = v105;

      v89 = objc_msgSendSuper2(v80 + 17, sel_init);
      if (v115 == 0x5F54434546524550 && v117 == 0xED0000484354414DLL)
      {
        v90 = 2;
        v1 = v80;
        v63 = v106;
      }

      else
      {
        v1 = v80;
        v63 = v106;
        if (sub_20E009984())
        {
          v90 = 2;
        }

        else
        {
          v90 = v115 == 0x414D5F45534F4C43 && v117 == 0xEB00000000484354 || sub_20E009984() & 1;
        }
      }

      v91 = type metadata accessor for MatchedServiceAddress();
      v92 = objc_allocWithZone(v91);
      *&v92[OBJC_IVAR____TtC19HomeUtilityServices21MatchedServiceAddress_address] = v89;
      *&v92[OBJC_IVAR____TtC19HomeUtilityServices21MatchedServiceAddress_matchType] = v90;
      v1[18].receiver = v92;
      v1[18].super_class = v91;
      v93 = v89;
      objc_msgSendSuper2(v1 + 18, sel_init);
      sub_20DFB50C0(&v1[1]);

      sub_20E009794();
      sub_20E0097C4();
      sub_20E0097D4();
      sub_20E0097A4();
      if (!v119)
      {
        break;
      }

      --v119;
      v65 = v107 + 128;
    }

    v94 = v1[25].receiver;
    v95 = v1[25].super_class;
    v96 = v1[24].super_class;
    (*(v1[21].super_class + 1))(v1[22].receiver, v1[21].receiver);
    sub_20DF67FFC(v96, v94);

    v97 = v120;
  }

  else
  {
    v99 = *(v0 + 400);
    v98 = *(v0 + 408);
    v100 = *(v0 + 392);
    v102 = *(v0 + 344);
    v101 = *(v0 + 352);
    v103 = *(v0 + 336);

    sub_20DF67FFC(v100, v99);

    (*(v102 + 8))(v101, v103);
    v97 = MEMORY[0x277D84F90];
  }

  v104 = v1->super_class;

  return v104(v97);
}

uint64_t sub_20DFB4FAC()
{
  (*(v0[43] + 8))(v0[44], v0[42]);

  v1 = v0[1];

  return v1();
}

unint64_t sub_20DFB5034()
{
  result = qword_27C852DC0;
  if (!qword_27C852DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852DC0);
  }

  return result;
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

uint64_t sub_20DFB5114(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
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

uint64_t sub_20DFB515C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
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
      *(result + 128) = 1;
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

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_20DFB51DC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852DC8, &qword_20E00FA28);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20DFB5390();
  sub_20E009A74();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852DD8, &qword_20E00FA30);
    sub_20DFB5850(&qword_27C852DE0, sub_20DFB53E4, MEMORY[0x277D83978]);
    sub_20E0098C4();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return v7;
}

unint64_t sub_20DFB5390()
{
  result = qword_27C852DD0;
  if (!qword_27C852DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852DD0);
  }

  return result;
}

unint64_t sub_20DFB53E4()
{
  result = qword_27C852DE8;
  if (!qword_27C852DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852DE8);
  }

  return result;
}

uint64_t sub_20DFB5438@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v19 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852DF0, &qword_20E00FA38);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20DFB56EC();
  sub_20E009A74();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v8 = v5;
  v9 = v19;
  v46 = 0;
  sub_20DFB5740();
  sub_20E0098C4();
  v42 = v35;
  v43 = v36;
  v44 = v37;
  v38 = v31;
  v39 = v32;
  v40 = v33;
  v41 = v34;
  v45 = 1;
  v10 = sub_20E009894();
  v12 = v11;
  (*(v8 + 8))(v7, v4);
  v24 = v42;
  v25 = v43;
  v26 = v44;
  v20 = v38;
  v21 = v39;
  v22 = v40;
  v23 = v41;
  *&v27 = v10;
  *(&v27 + 1) = v12;
  sub_20DFB5088(&v20, v28);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v28[4] = v42;
  v28[5] = v43;
  v28[6] = v44;
  v28[0] = v38;
  v28[1] = v39;
  v28[2] = v40;
  v28[3] = v41;
  v29 = v10;
  v30 = v12;
  result = sub_20DFB50C0(v28);
  v14 = v25;
  v9[4] = v24;
  v9[5] = v14;
  v15 = v27;
  v9[6] = v26;
  v9[7] = v15;
  v16 = v21;
  *v9 = v20;
  v9[1] = v16;
  v17 = v23;
  v9[2] = v22;
  v9[3] = v17;
  return result;
}

unint64_t sub_20DFB56EC()
{
  result = qword_27C852DF8;
  if (!qword_27C852DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852DF8);
  }

  return result;
}

unint64_t sub_20DFB5740()
{
  result = qword_27C852E00;
  if (!qword_27C852E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852E00);
  }

  return result;
}

unint64_t sub_20DFB57FC()
{
  result = qword_27C852E10;
  if (!qword_27C852E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852E10);
  }

  return result;
}

uint64_t sub_20DFB5850(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C852DD8, &qword_20E00FA30);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_20DFB58C8()
{
  result = qword_27C852E28;
  if (!qword_27C852E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852E28);
  }

  return result;
}

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_20DFB5960(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_20DFB59A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_20DFB5A18()
{
  result = qword_27C852E30;
  if (!qword_27C852E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852E30);
  }

  return result;
}

unint64_t sub_20DFB5A70()
{
  result = qword_27C852E38;
  if (!qword_27C852E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852E38);
  }

  return result;
}

unint64_t sub_20DFB5AC8()
{
  result = qword_27C852E40;
  if (!qword_27C852E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852E40);
  }

  return result;
}

unint64_t sub_20DFB5B20()
{
  result = qword_27C852E48;
  if (!qword_27C852E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852E48);
  }

  return result;
}

unint64_t sub_20DFB5B78()
{
  result = qword_27C852E50;
  if (!qword_27C852E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852E50);
  }

  return result;
}

unint64_t sub_20DFB5BD0()
{
  result = qword_27C852E58;
  if (!qword_27C852E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852E58);
  }

  return result;
}

uint64_t sub_20DFB5C24@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852E60, &qword_20E00FD28);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v29 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20DFB6194();
  sub_20E009A74();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LOBYTE(v46[0]) = 0;
  v9 = sub_20E009894();
  v38 = v10;
  LOBYTE(v46[0]) = 1;
  *&v37 = sub_20E009854();
  *(&v37 + 1) = v11;
  LOBYTE(v46[0]) = 2;
  v35 = sub_20E009854();
  v13 = v12;
  LOBYTE(v46[0]) = 3;
  v14 = sub_20E009894();
  v36 = v15;
  v31 = v14;
  LOBYTE(v46[0]) = 4;
  v34 = 0;
  v30 = sub_20E009894();
  v33 = v16;
  LOBYTE(v46[0]) = 5;
  v29 = sub_20E009894();
  v32 = v17;
  v58 = 6;
  v18 = sub_20E009894();
  v19 = *(v6 + 8);
  v20 = v18;
  v34 = v21;
  v19(v8, v5);
  *&v39 = v9;
  v22 = v38;
  *(&v39 + 1) = v38;
  v40 = v37;
  *&v41 = v35;
  *(&v41 + 1) = v13;
  *&v42 = v31;
  v23 = v36;
  *(&v42 + 1) = v36;
  *&v43 = v30;
  *(&v43 + 1) = v33;
  *&v44 = v29;
  *(&v44 + 1) = v32;
  *&v45 = v20;
  v24 = v34;
  *(&v45 + 1) = v34;
  sub_20DFB57C4(&v39, v46);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v46[0] = v9;
  v46[1] = v22;
  v47 = v37;
  v48 = v35;
  v49 = v13;
  v50 = v31;
  v51 = v23;
  v52 = v30;
  v53 = v33;
  v54 = v29;
  v55 = v32;
  v56 = v20;
  v57 = v24;
  result = sub_20DFB5794(v46);
  v26 = v44;
  a2[4] = v43;
  a2[5] = v26;
  a2[6] = v45;
  v27 = v40;
  *a2 = v39;
  a2[1] = v27;
  v28 = v42;
  a2[2] = v41;
  a2[3] = v28;
  return result;
}

unint64_t sub_20DFB6194()
{
  result = qword_27C852E68;
  if (!qword_27C852E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852E68);
  }

  return result;
}

unint64_t sub_20DFB61FC()
{
  result = qword_27C852E78;
  if (!qword_27C852E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852E78);
  }

  return result;
}

unint64_t sub_20DFB6254()
{
  result = qword_27C852E80;
  if (!qword_27C852E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852E80);
  }

  return result;
}

unint64_t sub_20DFB62AC()
{
  result = qword_27C852E88;
  if (!qword_27C852E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852E88);
  }

  return result;
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> JWToken.init(jwt:)(HomeUtilityServices::JWToken *__return_ptr retstr, Swift::String jwt)
{
  v3 = v2;
  object = jwt._object;
  countAndFlagsBits = jwt._countAndFlagsBits;
  sub_20DF751E4();
  v7 = sub_20E0095D4();
  v8 = v7[2];
  if (v8 != 3)
  {

    sub_20DFB649C();
    swift_allocError();
    *v17 = countAndFlagsBits;
    *(v17 + 8) = object;
    *(v17 + 16) = v8;
    *(v17 + 24) = 2;
    swift_willThrow();
    return;
  }

  v9 = v7[4];
  v10 = v7[5];
  v11 = v7;

  v12 = v9;
  v13 = v3;
  v14 = sub_20DFB67A4(v12, v10);

  if (v13)
  {

    return;
  }

  if (v11[2] < 2uLL)
  {
    __break(1u);
  }

  else
  {
    v15 = v11[6];
    v16 = v11[7];

    v18 = sub_20DFB67A4(v15, v16);

    if (v11[2] >= 3uLL)
    {
      v20 = v11[8];
      v19 = v11[9];

      retstr->header._rawValue = v14;
      retstr->body._rawValue = v18;
      retstr->signature.value._countAndFlagsBits = v20;
      retstr->signature.value._object = v19;
      retstr->string._countAndFlagsBits = countAndFlagsBits;
      retstr->string._object = object;
      return;
    }
  }

  __break(1u);
}

unint64_t sub_20DFB649C()
{
  result = qword_281123208;
  if (!qword_281123208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281123208);
  }

  return result;
}

BOOL JWToken.expired.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852A58, &qword_20E00F7A0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v17 - v2;
  v4 = sub_20E008CD4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v17 - v9;
  v11 = v0[1];
  v17[2] = *v0;
  v17[3] = v11;
  v17[4] = v0[2];
  sub_20DFB69C0(7370853, 0xE300000000000000, v17);
  Claim.double.getter();
  if (v12)
  {
    v13 = 1;
  }

  else
  {
    sub_20E008C64();
    v13 = 0;
  }

  sub_20DFB7BF8(v17);
  (*(v5 + 56))(v3, v13, 1, v4);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_20DF66E28(v3, &qword_27C852A58, &qword_20E00F7A0);
    return 0;
  }

  else
  {
    (*(v5 + 32))(v10, v3, v4);
    sub_20E008CC4();
    v15 = sub_20E008CA4();
    v16 = *(v5 + 8);
    v16(v8, v4);
    v16(v10, v4);
    return v15 != 1;
  }
}

uint64_t JWToken.signature.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t JWToken.string.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

id sub_20DFB67A4(uint64_t a1, unint64_t a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = sub_20DFB80A0(a1, a2);
  if (v5 >> 60 == 15)
  {
    sub_20DFB649C();
    swift_allocError();
    *v6 = a1;
    *(v6 + 8) = a2;
    *(v6 + 16) = 0;
    *(v6 + 24) = 0;
    swift_willThrow();
  }

  v8 = v4;
  v9 = v5;
  v10 = objc_opt_self();
  v11 = sub_20E008B64();
  v17 = 0;
  v12 = [v10 JSONObjectWithData:v11 options:0 error:&v17];

  v13 = v17;
  if (v12)
  {
    sub_20E009654();
    swift_unknownObjectRelease();
    sub_20DF77A64(v18, v19);
    sub_20DF77A64(v19, v18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8521F8, &unk_20E00EBC0);
    if (swift_dynamicCast())
    {
      sub_20DF64DE8(v8, v9);
      return v17;
    }
  }

  else
  {
    v14 = v13;
    v15 = sub_20E008A34();

    swift_willThrow();
  }

  sub_20DFB649C();
  swift_allocError();
  *v16 = a1;
  *(v16 + 8) = a2;
  *(v16 + 16) = 0;
  *(v16 + 24) = 1;
  swift_willThrow();

  return sub_20DF64DE8(v8, v9);
}

double sub_20DFB69C0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = *(v3 + 8);
  if (*(v5 + 16) && (v6 = sub_20DFB866C(a1, a2, MEMORY[0x277D83758], sub_20DFB8700), (v7 & 1) != 0))
  {
    sub_20DF6981C(*(v5 + 56) + 32 * v6, &v10);
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  result = *&v10;
  v9 = v11;
  *a3 = v10;
  a3[1] = v9;
  return result;
}

double JWT.claim(name:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v8 = (*(a4 + 16))(a3, a4);
  if (*(v8 + 16) && (v9 = sub_20DFB866C(a1, a2, MEMORY[0x277D83758], sub_20DFB8700), (v10 & 1) != 0))
  {
    sub_20DF6981C(*(v8 + 56) + 32 * v9, &v13);
  }

  else
  {

    v13 = 0u;
    v14 = 0u;
  }

  result = *&v13;
  v12 = v14;
  *a5 = v13;
  a5[1] = v12;
  return result;
}

uint64_t Claim.date.getter@<X0>(uint64_t a2@<X8>)
{
  Claim.double.getter();
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    sub_20E008C64();
    v4 = 0;
  }

  v5 = sub_20E008CD4();
  v6 = *(*(v5 - 8) + 56);

  return v6(a2, v4, 1, v5);
}

uint64_t Claim.string.getter()
{
  sub_20DF697AC(v0, v3);
  if (v4)
  {
    if (swift_dynamicCast())
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_20DF66E28(v3, &qword_27C8521F0, &unk_20E00EC00);
    return 0;
  }
}

uint64_t sub_20DFB6C40(uint64_t a1)
{
  v2 = v1[1];
  v7 = *v1;
  v8 = v2;
  v9 = v1[2];
  sub_20DFB69C0(a1, 0xE300000000000000, &v5);
  if (v6)
  {
    if (swift_dynamicCast())
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_20DF66E28(&v5, &qword_27C8521F0, &unk_20E00EC00);
    return 0;
  }
}

uint64_t JWToken.audience.getter()
{
  v1 = v0[1];
  v4[2] = *v0;
  v4[3] = v1;
  v4[4] = v0[2];
  sub_20DFB69C0(6583649, 0xE300000000000000, v4);
  v2 = Claim.array.getter();
  sub_20DFB7BF8(v4);
  return v2;
}

uint64_t Claim.array.getter()
{
  sub_20DF697AC(v0, v4);
  if (v5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852460, &qword_20E00B2C0);
    if (swift_dynamicCast())
    {
      return v2;
    }
  }

  else
  {
    sub_20DF66E28(v4, &qword_27C8521F0, &unk_20E00EC00);
  }

  sub_20DF697AC(v0, v4);
  if (v5)
  {
    if (swift_dynamicCast())
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852378, &qword_20E00B250);
      result = swift_allocObject();
      *(result + 16) = xmmword_20E00AB50;
      *(result + 32) = v2;
      *(result + 40) = v3;
      return result;
    }
  }

  else
  {
    sub_20DF66E28(v4, &qword_27C8521F0, &unk_20E00EC00);
  }

  return 0;
}

uint64_t sub_20DFB6E78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2[1];
  v9[2] = *v2;
  v9[3] = v4;
  v9[4] = v2[2];
  sub_20DFB69C0(a1, 0xE300000000000000, v9);
  Claim.double.getter();
  if (v5)
  {
    v6 = 1;
  }

  else
  {
    sub_20E008C64();
    v6 = 0;
  }

  sub_20DFB7BF8(v9);
  v7 = sub_20E008CD4();
  return (*(*(v7 - 8) + 56))(a2, v6, 1, v7);
}

uint64_t sub_20DFB6F48()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_20DFB6F78()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_20DFB6FBC()
{
  v1 = v0[1];
  v4[2] = *v0;
  v4[3] = v1;
  v4[4] = v0[2];
  sub_20DFB69C0(6583649, 0xE300000000000000, v4);
  v2 = Claim.array.getter();
  sub_20DFB7BF8(v4);
  return v2;
}

uint64_t sub_20DFB7038@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v4 = v2[1];
  v9[2] = *v2;
  v9[3] = v4;
  v9[4] = v2[2];
  sub_20DFB69C0(a1, 0xE300000000000000, v9);
  Claim.double.getter();
  if (v5)
  {
    v6 = 1;
  }

  else
  {
    sub_20E008C64();
    v6 = 0;
  }

  sub_20DFB7BF8(v9);
  v7 = sub_20E008CD4();
  return (*(*(v7 - 8) + 56))(a2, v6, 1, v7);
}

void static JWToken.mockJWToken()()
{
  v63 = sub_20E008CD4();
  v69 = *(v63 - 8);
  v0 = MEMORY[0x28223BE20](v63);
  v65 = &v59 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v0);
  v3 = &v59 - v2;
  v59 = sub_20E008D04();
  v4 = *(v59 - 8);
  v5 = MEMORY[0x28223BE20](v59);
  v62 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v59 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v59 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852E90, &unk_20E00FE40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20E00D7A0;
  *(inited + 32) = 0x6C7974696C697475;
  v64 = inited + 32;
  *(inited + 40) = 0xE900000000000064;
  sub_20E008CF4();
  v66 = v11;
  v13 = sub_20E008CE4();
  v15 = v14;
  v16 = *(v4 + 8);
  v68 = v4 + 8;
  v17 = v11;
  v18 = v59;
  v16(v17, v59);
  v19 = MEMORY[0x277D837D0];
  *(inited + 48) = v13;
  *(inited + 56) = v15;
  *(inited + 72) = v19;
  *(inited + 80) = 7370853;
  *(inited + 88) = 0xE300000000000000;
  sub_20E008C54();
  sub_20E008C74();
  v21 = v20;
  v22 = *(v69 + 8);
  v69 += 8;
  v60 = v22;
  v23 = v63;
  v22(v3, v63);
  v24 = MEMORY[0x277D839F8];
  *(inited + 96) = v21;
  *(inited + 120) = v24;
  *(inited + 128) = 6709870;
  v25 = MEMORY[0x277D83B88];
  *(inited + 136) = 0xE300000000000000;
  *(inited + 144) = 1644170208;
  *(inited + 168) = v25;
  strcpy((inited + 176), "subscriptionld");
  *(inited + 191) = -18;
  sub_20E008CF4();
  v26 = sub_20E008CE4();
  v28 = v27;
  v29 = v9;
  v30 = v18;
  v61 = v16;
  v16(v29, v18);
  *(inited + 192) = v26;
  *(inited + 200) = v28;
  *(inited + 216) = MEMORY[0x277D837D0];
  *(inited + 224) = 6911082;
  *(inited + 232) = 0xE300000000000000;
  v31 = v62;
  sub_20E008CF4();
  v32 = sub_20E008CE4();
  v34 = v33;
  v16(v31, v30);
  *(inited + 240) = v32;
  *(inited + 248) = v34;
  v35 = MEMORY[0x277D837D0];
  *(inited + 264) = MEMORY[0x277D837D0];
  *(inited + 272) = 7566185;
  *(inited + 280) = 0xE300000000000000;
  *(inited + 288) = 0xD000000000000018;
  *(inited + 296) = 0x800000020E016970;
  *(inited + 312) = v35;
  *(inited + 320) = 7627113;
  *(inited + 328) = 0xE300000000000000;
  v36 = v65;
  sub_20E008C94();
  sub_20E008C74();
  v38 = v37;
  v60(v36, v23);
  *(inited + 360) = MEMORY[0x277D839F8];
  *(inited + 336) = v38;
  v39 = sub_20DF74F30(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852598, &unk_20E00C120);
  swift_arrayDestroy();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8520D8, &unk_20E00FE50);
  v40 = swift_initStackObject();
  *(v40 + 16) = xmmword_20E00D7B0;
  *(v40 + 32) = 6777953;
  *(v40 + 40) = 0xE300000000000000;
  *(v40 + 48) = 0x3635325345;
  *(v40 + 56) = 0xE500000000000000;
  *(v40 + 64) = 1701869940;
  *(v40 + 72) = 0xE400000000000000;
  *(v40 + 80) = 5527370;
  *(v40 + 88) = 0xE300000000000000;
  *(v40 + 96) = 6580587;
  *(v40 + 104) = 0xE300000000000000;
  v41 = v66;
  sub_20E008CF4();
  v42 = sub_20E008CE4();
  v44 = v43;
  v61(v41, v30);
  *(v40 + 112) = v42;
  *(v40 + 120) = v44;
  v45 = sub_20DF74E1C(v40);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852140, &qword_20E011050);
  swift_arrayDestroy();
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852E98, &unk_20E00FE60);
  v70[0] = v45;
  v46 = v67;
  v47 = sub_20DFB77A4(v70);
  if (v46)
  {

    __swift_destroy_boxed_opaque_existential_0(v70);
    swift_getErrorValue();
    v52 = sub_20E0099E4();
    v54 = v53;
    sub_20DFB9378();
    swift_allocError();
    *v55 = v52;
    v55[1] = v54;
    swift_willThrow();
  }

  else
  {
    v49 = v48;
    v50 = v47;
    __swift_destroy_boxed_opaque_existential_0(v70);
    v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8521F8, &unk_20E00EBC0);
    v70[0] = v39;
    v51 = sub_20DFB77A4(v70);
    v57 = v56;
    v58 = v51;
    __swift_destroy_boxed_opaque_existential_0(v70);
    v70[0] = v50;
    v70[1] = v49;
    MEMORY[0x20F32A4B0](46, 0xE100000000000000);
    MEMORY[0x20F32A4B0](v58, v57);

    MEMORY[0x20F32A4B0](46, 0xE100000000000000);
    MEMORY[0x20F32A4B0](0xD00000000000005ELL, 0x800000020E016990);
  }
}

void *sub_20DFB77A4(void *a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_self();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v17 = 0;
  v3 = [v2 dataWithJSONObject:sub_20E009974() options:0 error:&v17];
  swift_unknownObjectRelease();
  v4 = v17;
  if (v3)
  {
    v5 = sub_20E008B84();
    v7 = v6;

    v17 = sub_20E008B74();
    v18 = v8;
    sub_20DF751E4();
    v9 = sub_20E0095F4();
    v11 = v10;

    v17 = v9;
    v18 = v11;
    v12 = sub_20E0095F4();
    v14 = v13;

    v17 = v12;
    v18 = v14;
    v15 = sub_20E0095F4();
    sub_20DF67FFC(v5, v7);
  }

  else
  {
    v15 = v4;
    sub_20E008A34();

    swift_willThrow();
  }

  return v15;
}

uint64_t Claim.BOOLean.getter()
{
  sub_20DF697AC(v0, v3);
  if (v4)
  {
    if (swift_dynamicCast())
    {
      return v2;
    }

    else
    {
      return 2;
    }
  }

  else
  {
    sub_20DF66E28(v3, &qword_27C8521F0, &unk_20E00EC00);
    return 2;
  }
}

uint64_t Claim.double.getter()
{
  sub_20DF697AC(v0, v5);
  if (v6)
  {
    if (swift_dynamicCast())
    {
      v5[0] = 0;
      v1 = sub_20DFB9280(v3, v4, v5);

      if (v1)
      {
        return v5[0];
      }

      else
      {
        return 0;
      }
    }
  }

  else
  {
    sub_20DF66E28(v5, &qword_27C8521F0, &unk_20E00EC00);
  }

  sub_20DF697AC(v0, v5);
  if (v6)
  {
    if (swift_dynamicCast())
    {
      return 0;
    }
  }

  else
  {
    sub_20DF66E28(v5, &qword_27C8521F0, &unk_20E00EC00);
  }

  sub_20DF697AC(v0, v5);
  if (!v6)
  {
    sub_20DF66E28(v5, &qword_27C8521F0, &unk_20E00EC00);
    return 0;
  }

  if (swift_dynamicCast())
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

unint64_t Claim.integer.getter()
{
  sub_20DF697AC(v0, v33);
  if (v34)
  {
    if (swift_dynamicCast())
    {
      result = v32;
      v2 = HIBYTE(v32) & 0xF;
      v3 = v31 & 0xFFFFFFFFFFFFLL;
      if ((v32 & 0x2000000000000000) != 0)
      {
        v4 = HIBYTE(v32) & 0xF;
      }

      else
      {
        v4 = v31 & 0xFFFFFFFFFFFFLL;
      }

      if (v4)
      {
        if ((v32 & 0x1000000000000000) != 0)
        {
          v8 = sub_20DFB8880(v31, v32, 10);
          v29 = v30;
LABEL_81:

          if (v29)
          {
            return 0;
          }

          else
          {
            return v8;
          }
        }

        if ((v32 & 0x2000000000000000) != 0)
        {
          v33[0] = v31;
          v33[1] = v32 & 0xFFFFFFFFFFFFFFLL;
          if (v31 == 43)
          {
            if (v2)
            {
              v5 = (v2 - 1);
              if (v2 != 1)
              {
                v8 = 0;
                v21 = v33 + 1;
                while (1)
                {
                  v22 = *v21 - 48;
                  if (v22 > 9)
                  {
                    break;
                  }

                  v23 = 10 * v8;
                  if ((v8 * 10) >> 64 != (10 * v8) >> 63)
                  {
                    break;
                  }

                  v8 = v23 + v22;
                  if (__OFADD__(v23, v22))
                  {
                    break;
                  }

                  ++v21;
                  if (!--v5)
                  {
                    goto LABEL_80;
                  }
                }
              }

              goto LABEL_79;
            }

LABEL_93:
            __break(1u);
            return result;
          }

          if (v31 != 45)
          {
            if (v2)
            {
              v8 = 0;
              v26 = v33;
              while (1)
              {
                v27 = *v26 - 48;
                if (v27 > 9)
                {
                  break;
                }

                v28 = 10 * v8;
                if ((v8 * 10) >> 64 != (10 * v8) >> 63)
                {
                  break;
                }

                v8 = v28 + v27;
                if (__OFADD__(v28, v27))
                {
                  break;
                }

                ++v26;
                if (!--v2)
                {
LABEL_78:
                  LOBYTE(v5) = 0;
                  goto LABEL_80;
                }
              }
            }

            goto LABEL_79;
          }

          if (v2)
          {
            v5 = (v2 - 1);
            if (v2 != 1)
            {
              v8 = 0;
              v14 = v33 + 1;
              while (1)
              {
                v15 = *v14 - 48;
                if (v15 > 9)
                {
                  break;
                }

                v16 = 10 * v8;
                if ((v8 * 10) >> 64 != (10 * v8) >> 63)
                {
                  break;
                }

                v8 = v16 - v15;
                if (__OFSUB__(v16, v15))
                {
                  break;
                }

                ++v14;
                if (!--v5)
                {
                  goto LABEL_80;
                }
              }
            }

            goto LABEL_79;
          }
        }

        else
        {
          if ((v31 & 0x1000000000000000) != 0)
          {
            v5 = ((v32 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v5 = sub_20E009784();
            result = v32;
          }

          v6 = *v5;
          if (v6 == 43)
          {
            if (v3 >= 1)
            {
              v17 = v3 - 1;
              if (v3 != 1)
              {
                v8 = 0;
                if (v5)
                {
                  v18 = v5 + 1;
                  while (1)
                  {
                    v19 = *v18 - 48;
                    if (v19 > 9)
                    {
                      goto LABEL_79;
                    }

                    v20 = 10 * v8;
                    if ((v8 * 10) >> 64 != (10 * v8) >> 63)
                    {
                      goto LABEL_79;
                    }

                    v8 = v20 + v19;
                    if (__OFADD__(v20, v19))
                    {
                      goto LABEL_79;
                    }

                    ++v18;
                    if (!--v17)
                    {
                      goto LABEL_78;
                    }
                  }
                }

                goto LABEL_80;
              }

              goto LABEL_79;
            }

            goto LABEL_92;
          }

          if (v6 != 45)
          {
            if (v3)
            {
              v8 = 0;
              if (v5)
              {
                while (1)
                {
                  v24 = *v5 - 48;
                  if (v24 > 9)
                  {
                    goto LABEL_79;
                  }

                  v25 = 10 * v8;
                  if ((v8 * 10) >> 64 != (10 * v8) >> 63)
                  {
                    goto LABEL_79;
                  }

                  v8 = v25 + v24;
                  if (__OFADD__(v25, v24))
                  {
                    goto LABEL_79;
                  }

                  ++v5;
                  if (!--v3)
                  {
                    goto LABEL_78;
                  }
                }
              }

              goto LABEL_80;
            }

LABEL_79:
            v8 = 0;
            LOBYTE(v5) = 1;
            goto LABEL_80;
          }

          if (v3 >= 1)
          {
            v7 = v3 - 1;
            if (v3 != 1)
            {
              v8 = 0;
              if (v5)
              {
                v9 = v5 + 1;
                while (1)
                {
                  v10 = *v9 - 48;
                  if (v10 > 9)
                  {
                    goto LABEL_79;
                  }

                  v11 = 10 * v8;
                  if ((v8 * 10) >> 64 != (10 * v8) >> 63)
                  {
                    goto LABEL_79;
                  }

                  v8 = v11 - v10;
                  if (__OFSUB__(v11, v10))
                  {
                    goto LABEL_79;
                  }

                  ++v9;
                  if (!--v7)
                  {
                    goto LABEL_78;
                  }
                }
              }

LABEL_80:
              v29 = v5;
              goto LABEL_81;
            }

            goto LABEL_79;
          }

          __break(1u);
        }

        __break(1u);
LABEL_92:
        __break(1u);
        goto LABEL_93;
      }

      goto LABEL_87;
    }
  }

  else
  {
    sub_20DF66E28(v33, &qword_27C8521F0, &unk_20E00EC00);
  }

  v12 = COERCE_DOUBLE(Claim.double.getter());
  if ((v13 & 1) == 0)
  {
    if ((~*&v12 & 0x7FF0000000000000) != 0)
    {
      if (v12 > -9.22337204e18)
      {
        if (v12 < 9.22337204e18)
        {
          return v12;
        }

        goto LABEL_86;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:

    return 0;
  }

  sub_20DF697AC(v0, v33);
  if (v34)
  {
    if (swift_dynamicCast())
    {
      return 0;
    }
  }

  else
  {
    sub_20DF66E28(v33, &qword_27C8521F0, &unk_20E00EC00);
  }

  sub_20DF697AC(v0, v33);
  if (!v34)
  {
    sub_20DF66E28(v33, &qword_27C8521F0, &unk_20E00EC00);
    return 0;
  }

  if (swift_dynamicCast())
  {
    return v31;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_20DFB80A0(uint64_t a1, unint64_t a2)
{
  v4 = sub_20E009234();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a1;
  v22 = a2;
  v19 = 45;
  v20 = 0xE100000000000000;
  v17 = 43;
  v18 = 0xE100000000000000;
  sub_20DF751E4();
  v21 = sub_20E0095F4();
  v22 = v8;
  v19 = 95;
  v20 = 0xE100000000000000;
  v17 = 47;
  v18 = 0xE100000000000000;
  v9 = sub_20E0095F4();
  v11 = v10;

  v21 = v9;
  v22 = v11;
  v19 = v9;
  v20 = v11;

  sub_20E009214();
  v12 = sub_20E0095E4();
  (*(v5 + 8))(v7, v4);

  v14 = ceil(vcvtd_n_f64_s64(v12, 2uLL)) * 4.0 - v12;
  if (v14 <= 0.0)
  {
    goto LABEL_6;
  }

  v19 = 0;
  v20 = 0xE000000000000000;
  if (*&v14 >> 52 > 0x7FEuLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v14 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v14 < 9.22337204e18)
  {
    v17 = 61;
    v18 = 0xE100000000000000;
    v15 = sub_20E009634();
    MEMORY[0x20F32A4B0](v15);

LABEL_6:
    v16 = sub_20E008B24();

    return v16;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t DecodeError.localizedDescription.getter()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  if (*(v0 + 24))
  {
    if (*(v0 + 24) != 1)
    {
      sub_20E009714();
      MEMORY[0x20F32A4B0](0xD000000000000014, 0x800000020E016A30);
      MEMORY[0x20F32A4B0](v2, v1);
      MEMORY[0x20F32A4B0](0x2073616820, 0xE500000000000000);
      v7 = sub_20E009964();
      MEMORY[0x20F32A4B0](v7);

      v5 = 0xD000000000000022;
      v6 = 0x800000020E016A50;
      goto LABEL_7;
    }

    sub_20E009714();
    v3 = "hould have 3 parts";
    v4 = 43;
  }

  else
  {
    sub_20E009714();
    v3 = "|JHZICxKjNqCEvQDDLo1nJye4rjJws";
    v4 = 34;
  }

  MEMORY[0x20F32A4B0](v4 | 0xD000000000000014, v3 | 0x8000000000000000);
  v5 = v2;
  v6 = v1;
LABEL_7:
  MEMORY[0x20F32A4B0](v5, v6);
  return 0;
}

uint64_t EncodeError.localizedDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_20E009714();
  MEMORY[0x20F32A4B0](0xD000000000000037, 0x800000020E016AC0);
  MEMORY[0x20F32A4B0](v1, v2);
  return 0;
}

void *sub_20DFB855C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8525A0, &qword_20E013380);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unint64_t sub_20DFB85FC(uint64_t a1)
{
  v2 = sub_20E009694();

  return sub_20DFB87B8(a1, v2);
}

uint64_t sub_20DFB866C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t, uint64_t), uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  sub_20E009A34();
  a3(v10, a1, a2);
  v7 = sub_20E009A54();

  return a4(a1, a2, v7);
}

unint64_t sub_20DFB8700(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_20E009984())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_20DFB87B8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_20DFB9784(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x20F32A870](v9, a1);
      sub_20DFAF37C(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unsigned __int8 *sub_20DFB8880(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_20E009394();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_20DFB8E0C(result, v5);
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_20E009784();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_20DFB8E0C(uint64_t a1, unint64_t a2)
{
  v2 = sub_20E0093A4();
  v6 = sub_20DFB8E8C(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_20DFB8E8C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_20E0095C4();
    if (!v9 || (v10 = v9, v11 = sub_20DFB855C(v9, 0), v12 = sub_20DFB8FE4(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_20E009294();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_20E009294();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_20E009784();
LABEL_4:

  return sub_20E009294();
}

unint64_t sub_20DFB8FE4(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_20DFB9204(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_20E009344();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_20E009784();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_20DFB9204(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_20E009324();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_20DFB9204(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_20E009354();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x20F32A500](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

BOOL sub_20DFB9280(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v4 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v4 >= 0x21 || ((0x100003E01uLL >> v4) & 1) == 0)
      {
LABEL_10:
        v6 = _swift_stdlib_strtod_clocale();
        return v6 && *v6 == 0;
      }

      return 0;
    }
  }

  sub_20E009704();
  if (!v3)
  {
    return v8;
  }

  return v5;
}

unint64_t sub_20DFB9378()
{
  result = qword_27C852EA0;
  if (!qword_27C852EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852EA0);
  }

  return result;
}

uint64_t sub_20DFB93D4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_20DFB941C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_ypSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_20DFB9580(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_20DFB95DC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_20DFB964C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 25))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_20DFB9694(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

_BYTE *sub_20DFB9704@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v2 = *result;
  v3 = v2 > 0x20;
  v4 = (1 << v2) & 0x100003E01;
  if (v3 || v4 == 0)
  {
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v7 = *result == 0;
    }

    else
    {
      v7 = 0;
    }

    *a2 = v7;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t sub_20DFB97E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8520C8, &qword_20E010830);
  v4[6] = swift_task_alloc();
  v5 = sub_20E008714();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8520D0, &qword_20E00AB70);
  v4[11] = swift_task_alloc();
  v6 = sub_20E008AF4();
  v4[12] = v6;
  v4[13] = *(v6 - 8);
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DFB9988, 0, 0);
}

uint64_t sub_20DFB9988()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[11];
  sub_20DF85FEC();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_20DF66E28(v0[11], &qword_27C8520D0, &qword_20E00AB70);
    if (qword_27C852070 != -1)
    {
      swift_once();
    }

    v4 = sub_20E009094();
    __swift_project_value_buffer(v4, qword_27C8626B0);
    v5 = sub_20E009074();
    v6 = sub_20E009544();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_20DF62000, v5, v6, "Request URL for Address Verification API not found", v7, 2u);
      MEMORY[0x20F32B3A0](v7, -1, -1);
    }

LABEL_16:
    (*(v0[8] + 56))(v0[2], 1, 1, v0[7]);

    v31 = v0[1];

    return v31();
  }

  v8 = v0[3];
  (*(v0[13] + 32))(v0[15], v0[11], v0[12]);
  v9 = [v8 data];
  if (!v9)
  {
    if (qword_27C852070 != -1)
    {
      swift_once();
    }

    v24 = sub_20E009094();
    __swift_project_value_buffer(v24, qword_27C8626B0);
    v25 = sub_20E009074();
    v26 = sub_20E009544();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_20DF62000, v25, v26, "Unable to encode service address to data", v27, 2u);
      MEMORY[0x20F32B3A0](v27, -1, -1);
    }

    v28 = v0[15];
    v29 = v0[12];
    v30 = v0[13];

    (*(v30 + 8))(v28, v29);
    goto LABEL_16;
  }

  v10 = v0[14];
  v11 = v0[15];
  v12 = v0[12];
  v13 = v0[13];
  v14 = v0[9];
  v15 = v9;
  v16 = sub_20E008B84();
  v18 = v17;

  v0[16] = v16;
  v0[17] = v18;
  (*(v13 + 16))(v10, v11, v12);
  sub_20E0086B4();
  sub_20E008694();
  sub_20DF67FA8(v16, v18);
  sub_20E0086F4();
  sub_20DFDF668(v14);
  v19 = swift_task_alloc();
  v0[18] = v19;
  *v19 = v0;
  v19[1] = sub_20DFB9D94;
  v20 = v0[9];
  v21 = v0[6];
  v22 = v0[4];

  return sub_20DF83234(v21, v20, v22);
}

uint64_t sub_20DFB9D94()
{
  v3 = *v1;
  v2 = *v1;

  v4 = v2[9];
  v5 = v2[8];
  v6 = v2[7];
  if (v0)
  {

    v7 = *(v5 + 8);
    v3[21] = v7;
    v7(v4, v6);
    v8 = sub_20DFBA218;
  }

  else
  {
    v9 = *(v5 + 8);
    v3[19] = v9;
    v3[20] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v9(v4, v6);
    v8 = sub_20DFB9F38;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_20DFB9F38()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[6];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v24 = v0[19];
    sub_20DF66E28(v3, &qword_27C8520C8, &qword_20E010830);
    if (qword_27C852070 != -1)
    {
      swift_once();
    }

    v4 = sub_20E009094();
    __swift_project_value_buffer(v4, qword_27C8626B0);
    v5 = sub_20E009074();
    v6 = sub_20E009544();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_20DF62000, v5, v6, "Unable to address verification request", v7, 2u);
      MEMORY[0x20F32B3A0](v7, -1, -1);
    }

    v9 = v0[16];
    v8 = v0[17];
    v10 = v0[15];
    v11 = v0[12];
    v12 = v0[13];
    v13 = v0[10];
    v14 = v0[7];

    sub_20DF67FFC(v9, v8);
    v24(v13, v14);
    (*(v12 + 8))(v10, v11);
    v15 = 1;
  }

  else
  {
    v16 = v0[19];
    v18 = v0[16];
    v17 = v0[17];
    v25 = v0[15];
    v19 = v0[13];
    v23 = v0[12];
    v20 = v0[10];
    (*(v2 + 32))(v0[2], v3, v1);
    sub_20E008704();
    sub_20DF67FFC(v18, v17);
    v16(v20, v1);
    (*(v19 + 8))(v25, v23);
    v15 = 0;
  }

  (*(v0[8] + 56))(v0[2], v15, 1, v0[7]);

  v21 = v0[1];

  return v21();
}

uint64_t sub_20DFBA218()
{
  (*(v0[8] + 56))(v0[6], 1, 1, v0[7]);
  v14 = v0[21];
  sub_20DF66E28(v0[6], &qword_27C8520C8, &qword_20E010830);
  if (qword_27C852070 != -1)
  {
    swift_once();
  }

  v1 = sub_20E009094();
  __swift_project_value_buffer(v1, qword_27C8626B0);
  v2 = sub_20E009074();
  v3 = sub_20E009544();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_20DF62000, v2, v3, "Unable to address verification request", v4, 2u);
    MEMORY[0x20F32B3A0](v4, -1, -1);
  }

  v6 = v0[16];
  v5 = v0[17];
  v7 = v0[15];
  v8 = v0[12];
  v9 = v0[13];
  v10 = v0[10];
  v11 = v0[7];

  sub_20DF67FFC(v6, v5);
  v14(v10, v11);
  (*(v9 + 8))(v7, v8);
  (*(v0[8] + 56))(v0[2], 1, 1, v0[7]);

  v12 = v0[1];

  return v12();
}

uint64_t sub_20DFBA434()
{
  v27[43] = *MEMORY[0x277D85DE8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852E90, &unk_20E00FE40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20E00AB50;
  *(inited + 32) = 0x73736572646461;
  *(inited + 40) = 0xE700000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8520D8, &unk_20E00FE50);
  v2 = swift_initStackObject();
  v3 = v2;
  *(v2 + 16) = xmmword_20E00D7A0;
  strcpy((v2 + 32), "addressLine1");
  *(v2 + 45) = 0;
  *(v2 + 46) = -5120;
  v4 = *(v0 + OBJC_IVAR____TtC19HomeUtilityServices21UtilityServiceAddress_addressLine1 + 8);
  *(v2 + 48) = *(v0 + OBJC_IVAR____TtC19HomeUtilityServices21UtilityServiceAddress_addressLine1);
  *(v2 + 56) = v4;
  strcpy((v2 + 64), "addressLine2");
  *(v2 + 77) = 0;
  *(v2 + 78) = -5120;
  if (*(v0 + OBJC_IVAR____TtC19HomeUtilityServices21UtilityServiceAddress_addressLine2 + 8))
  {
    v5 = *(v0 + OBJC_IVAR____TtC19HomeUtilityServices21UtilityServiceAddress_addressLine2);
    v6 = *(v0 + OBJC_IVAR____TtC19HomeUtilityServices21UtilityServiceAddress_addressLine2 + 8);
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *(v2 + 80) = v5;
  *(v2 + 88) = v6;
  strcpy((v2 + 96), "addressLine3");
  *(v2 + 109) = 0;
  *(v2 + 110) = -5120;
  if (*(v0 + OBJC_IVAR____TtC19HomeUtilityServices21UtilityServiceAddress_addressLine3 + 8))
  {
    v7 = *(v0 + OBJC_IVAR____TtC19HomeUtilityServices21UtilityServiceAddress_addressLine3);
    v8 = *(v0 + OBJC_IVAR____TtC19HomeUtilityServices21UtilityServiceAddress_addressLine3 + 8);
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  *(v2 + 112) = v7;
  *(v2 + 120) = v8;
  *(v2 + 128) = 2037672291;
  *(v2 + 136) = 0xE400000000000000;
  v9 = *(v0 + OBJC_IVAR____TtC19HomeUtilityServices21UtilityServiceAddress_city + 8);
  *(v2 + 144) = *(v0 + OBJC_IVAR____TtC19HomeUtilityServices21UtilityServiceAddress_city);
  *(v2 + 152) = v9;
  *(v2 + 160) = 0x6574617473;
  *(v2 + 168) = 0xE500000000000000;
  v10 = *(v0 + OBJC_IVAR____TtC19HomeUtilityServices21UtilityServiceAddress_state + 8);
  *(v2 + 176) = *(v0 + OBJC_IVAR____TtC19HomeUtilityServices21UtilityServiceAddress_state);
  *(v2 + 184) = v10;
  *(v2 + 192) = 0x6F436C6174736F70;
  *(v2 + 200) = 0xEA00000000006564;
  v11 = *(v0 + OBJC_IVAR____TtC19HomeUtilityServices21UtilityServiceAddress_postalCode + 8);
  *(v2 + 208) = *(v0 + OBJC_IVAR____TtC19HomeUtilityServices21UtilityServiceAddress_postalCode);
  *(v2 + 216) = v11;
  *(v2 + 224) = 0x7972746E756F63;
  *(v2 + 232) = 0xE700000000000000;
  v12 = *(v0 + OBJC_IVAR____TtC19HomeUtilityServices21UtilityServiceAddress_country);
  v13 = *(v0 + OBJC_IVAR____TtC19HomeUtilityServices21UtilityServiceAddress_country + 8);
  *(v2 + 240) = v12;
  *(v2 + 248) = v13;

  v14 = sub_20DF74E1C(v3);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852140, &qword_20E011050);
  swift_arrayDestroy();
  *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852E98, &unk_20E00FE60);
  *(inited + 48) = v14;
  sub_20DF74F30(inited);
  swift_setDeallocating();
  sub_20DF66E28(inited + 32, &qword_27C852598, &unk_20E00C120);
  v15 = objc_opt_self();
  v16 = sub_20E009154();

  v27[0] = 0;
  v17 = [v15 dataWithJSONObject:v16 options:0 error:v27];

  v18 = v27[0];
  if (v17)
  {
    v19 = sub_20E008B84();
  }

  else
  {
    v20 = v18;
    v21 = sub_20E008A34();

    swift_willThrow();
    if (qword_27C852070 != -1)
    {
      swift_once();
    }

    v22 = sub_20E009094();
    __swift_project_value_buffer(v22, qword_27C8626B0);
    v23 = sub_20E009074();
    v24 = sub_20E009544();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_20DF62000, v23, v24, "Unable to encode service Address to Request Payload!!!", v25, 2u);
      MEMORY[0x20F32B3A0](v25, -1, -1);
    }

    return 0;
  }

  return v19;
}

uint64_t sub_20DFBA948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[18] = a8;
  v8[19] = v13;
  v8[16] = a6;
  v8[17] = a7;
  v8[14] = a4;
  v8[15] = a5;
  v8[12] = a2;
  v8[13] = a3;
  v8[11] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8520C8, &qword_20E010830);
  v8[20] = swift_task_alloc();
  v9 = sub_20E008714();
  v8[21] = v9;
  v8[22] = *(v9 - 8);
  v8[23] = swift_task_alloc();
  v8[24] = swift_task_alloc();
  v8[25] = swift_task_alloc();
  v8[26] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8520D0, &qword_20E00AB70);
  v8[27] = swift_task_alloc();
  v10 = sub_20E008AF4();
  v8[28] = v10;
  v8[29] = *(v10 - 8);
  v8[30] = swift_task_alloc();
  v8[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DFBAB48, 0, 0);
}

uint64_t sub_20DFBAB48()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 232);
  v3 = *(v0 + 216);
  sub_20DF85FEC();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_20DF66E28(*(v0 + 216), &qword_27C8520D0, &qword_20E00AB70);
    if (qword_27C8520A8 != -1)
    {
      swift_once();
    }

    v4 = sub_20E009094();
    __swift_project_value_buffer(v4, qword_27C862758);
    v5 = sub_20E009074();
    v6 = sub_20E009544();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_20DF62000, v5, v6, "Request URL for auth token refresh API not found", v7, 2u);
      MEMORY[0x20F32B3A0](v7, -1, -1);
    }

    v8 = *(v0 + 168);
    v9 = *(v0 + 176);
    v10 = *(v0 + 88);

    (*(v9 + 56))(v10, 1, 1, v8);
LABEL_16:

    v49 = *(v0 + 8);

    return v49();
  }

  v12 = *(v0 + 240);
  v11 = *(v0 + 248);
  v13 = *(v0 + 224);
  v14 = *(v0 + 232);
  v16 = *(v0 + 192);
  v15 = *(v0 + 200);
  v17 = *(v0 + 176);
  v18 = *(v0 + 184);
  v19 = *(v0 + 168);
  v51 = *(v0 + 128);
  v52 = *(v0 + 136);
  v50 = *(v0 + 208);
  (*(v14 + 32))(v11, *(v0 + 216), v13);
  (*(v14 + 16))(v12, v11, v13);
  sub_20E0086B4();
  v20 = v16;
  sub_20DFDF668(v16);
  v21 = *(v17 + 8);
  *(v0 + 256) = v21;
  *(v0 + 264) = (v17 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v21(v18, v19);
  v22 = *(v17 + 16);
  v22(v15, v20, v19);
  sub_20E0086D4();
  v21(v20, v19);
  v22(v50, v15, v19);
  sub_20E0086D4();
  v21(v15, v19);
  sub_20E008694();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8520D8, &unk_20E00FE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20E00AB50;
  *(inited + 32) = 0xD000000000000012;
  *(inited + 40) = 0x800000020E015810;
  *(inited + 48) = v51;
  *(inited + 56) = v52;

  sub_20DF74E1C(inited);
  swift_setDeallocating();
  sub_20DF66E28(inited + 32, &qword_27C852140, &qword_20E011050);
  v24 = objc_opt_self();
  v25 = sub_20E009154();

  *(v0 + 80) = 0;
  v26 = [v24 dataWithJSONObject:v25 options:0 error:v0 + 80];

  v27 = *(v0 + 80);
  if (!v26)
  {
    v36 = v27;
    v37 = sub_20E008A34();

    swift_willThrow();
    if (qword_27C8520A8 != -1)
    {
      swift_once();
    }

    v53 = v21;
    v38 = sub_20E009094();
    __swift_project_value_buffer(v38, qword_27C862758);
    v39 = sub_20E009074();
    v40 = sub_20E009544();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_20DF62000, v39, v40, "Unable to encode Token request body", v41, 2u);
      MEMORY[0x20F32B3A0](v41, -1, -1);
    }

    v42 = *(v0 + 248);
    v43 = *(v0 + 224);
    v44 = *(v0 + 232);
    v45 = *(v0 + 208);
    v46 = *(v0 + 168);
    v47 = *(v0 + 176);
    v48 = *(v0 + 88);

    v53(v45, v46);
    (*(v44 + 8))(v42, v43);
    (*(v47 + 56))(v48, 1, 1, v46);
    goto LABEL_16;
  }

  v28 = sub_20E008B84();
  v30 = v29;

  *(v0 + 272) = v28;
  *(v0 + 280) = v30;
  sub_20DF67FA8(v28, v30);
  sub_20E0086F4();
  v31 = swift_task_alloc();
  *(v0 + 288) = v31;
  *v31 = v0;
  v31[1] = sub_20DFBB1FC;
  v32 = *(v0 + 208);
  v33 = *(v0 + 160);
  v34 = *(v0 + 144);

  return sub_20DF83234(v33, v32, v34);
}

uint64_t sub_20DFBB1FC()
{

  if (v0)
  {

    v1 = sub_20DFBB674;
  }

  else
  {
    v1 = sub_20DFBB340;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_20DFBB340()
{
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[20];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_20DF66E28(v3, &qword_27C8520C8, &qword_20E010830);
    if (qword_27C8520A8 != -1)
    {
      swift_once();
    }

    v4 = sub_20E009094();
    __swift_project_value_buffer(v4, qword_27C862758);
    v5 = sub_20E009074();
    v6 = sub_20E009544();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_20DF62000, v5, v6, "Unable to sign authorization token refresh request", v7, 2u);
      MEMORY[0x20F32B3A0](v7, -1, -1);
    }

    v9 = v0[34];
    v8 = v0[35];
    v10 = v0[32];
    v12 = v0[28];
    v11 = v0[29];
    v13 = v0[26];
    v14 = v5;
    v16 = v0[21];
    v15 = v0[22];
    v25 = v0[31];
    v27 = v0[11];

    sub_20DF67FFC(v9, v8);
    v10(v13, v16);
    (*(v11 + 8))(v25, v12);
    (*(v15 + 56))(v27, 1, 1, v16);
  }

  else
  {
    v18 = v0[34];
    v17 = v0[35];
    v19 = v0[32];
    v28 = v0[31];
    v20 = v0[29];
    v26 = v0[28];
    v21 = v0[26];
    v22 = v0[11];
    (*(v2 + 32))(v22, v3, v1);
    sub_20E008704();
    sub_20DF67FFC(v18, v17);
    v19(v21, v1);
    (*(v20 + 8))(v28, v26);
    (*(v2 + 56))(v22, 0, 1, v1);
  }

  v23 = v0[1];

  return v23();
}

uint64_t sub_20DFBB674()
{
  (*(v0[22] + 56))(v0[20], 1, 1, v0[21]);
  sub_20DF66E28(v0[20], &qword_27C8520C8, &qword_20E010830);
  if (qword_27C8520A8 != -1)
  {
    swift_once();
  }

  v1 = sub_20E009094();
  __swift_project_value_buffer(v1, qword_27C862758);
  v2 = sub_20E009074();
  v3 = sub_20E009544();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_20DF62000, v2, v3, "Unable to sign authorization token refresh request", v4, 2u);
    MEMORY[0x20F32B3A0](v4, -1, -1);
  }

  v6 = v0[34];
  v5 = v0[35];
  v7 = v0[32];
  v9 = v0[28];
  v8 = v0[29];
  v10 = v0[26];
  v11 = v2;
  v13 = v0[21];
  v12 = v0[22];
  v16 = v0[31];
  v17 = v0[11];

  sub_20DF67FFC(v6, v5);
  v7(v10, v13);
  (*(v8 + 8))(v16, v9);
  (*(v12 + 56))(v17, 1, 1, v13);

  v14 = v0[1];

  return v14();
}

uint64_t UtilityLookupError.hashValue.getter()
{
  v1 = *v0;
  sub_20E009A34();
  MEMORY[0x20F32AC10](v1);
  return sub_20E009A54();
}

uint64_t sub_20DFBB950(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852EE0, &qword_20E0103A8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20DFC1718();
  sub_20E009A84();
  v9[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852EC8, &qword_20E010390);
  sub_20DFC1A60(&qword_27C852EE8, sub_20DFC1AD8, MEMORY[0x277D83948]);
  sub_20E009944();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_20DFBBADC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852ED8, &qword_20E0103A0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20DFC1A0C();
  sub_20E009A84();
  v8[15] = 0;
  sub_20E009914();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_20E009914();
  v8[13] = 2;
  sub_20E009914();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_20DFBBC80()
{
  result = qword_27C852EA8;
  if (!qword_27C852EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852EA8);
  }

  return result;
}

uint64_t sub_20DFBBD00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656974696C697475 && a2 == 0xE900000000000073)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_20E009984();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_20DFBBD90(uint64_t a1)
{
  v2 = sub_20DFC1718();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20DFBBDCC(uint64_t a1)
{
  v2 = sub_20DFC1718();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_20DFBBE08@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_20DFC1564(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_20DFBBE50(uint64_t a1)
{
  v2 = sub_20DFC1A0C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20DFBBE8C(uint64_t a1)
{
  v2 = sub_20DFC1A0C();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_20DFBBEC8@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_20DFC17C0(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
    result = *&v7;
    a1[2] = v7;
  }

  return result;
}

uint64_t sub_20DFBBF24(uint64_t a1, double a2, double a3)
{
  *(v3 + 144) = a1;
  *(v3 + 128) = a2;
  *(v3 + 136) = a3;
  v4 = sub_20E008AF4();
  *(v3 + 152) = v4;
  *(v3 + 160) = *(v4 - 8);
  *(v3 + 168) = swift_task_alloc();
  *(v3 + 176) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8520D0, &qword_20E00AB70);
  *(v3 + 184) = swift_task_alloc();
  *(v3 + 192) = swift_task_alloc();
  *(v3 + 200) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852A58, &qword_20E00F7A0);
  *(v3 + 208) = swift_task_alloc();
  v5 = sub_20E008CD4();
  *(v3 + 216) = v5;
  *(v3 + 224) = *(v5 - 8);
  *(v3 + 232) = swift_task_alloc();
  *(v3 + 240) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DFBC110, 0, 0);
}

uint64_t sub_20DFBC110()
{
  v134 = v0;
  v133[2] = *MEMORY[0x277D85DE8];
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  type metadata accessor for Geohash();
  inited = swift_initStackObject();
  *(inited + 16) = 0;
  *(inited + 24) = 0;
  v4 = sub_20DFF96EC(12, v2, v1);
  v6 = v5;
  swift_setDeallocating();

  v7 = sub_20DFFC884(2, v4, v6);
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = MEMORY[0x20F32A440](v7, v9, v11, v13);
  v16 = v15;

  *(v0 + 248) = v14;
  *(v0 + 256) = v16;
  if (qword_281123098 != -1)
  {
    swift_once();
  }

  v133[0] = qword_2811249C0;
  v133[1] = *algn_2811249C8;

  MEMORY[0x20F32A4B0](v14, v16);
  *(v0 + 16) = v14;
  *(v0 + 24) = v16;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 312) = 1;
  v17 = objc_opt_self();

  v18 = [v17 defaultManager];
  v19 = sub_20E0091C4();

  v20 = [v18 fileExistsAtPath:v19 isDirectory:v0 + 312];

  if (!v20)
  {

    if (qword_2811230E0 != -1)
    {
LABEL_87:
      swift_once();
    }

    v57 = sub_20E009094();
    __swift_project_value_buffer(v57, qword_281124A00);
    v58 = sub_20E009074();
    v59 = sub_20E009544();
    if (!os_log_type_enabled(v58, v59))
    {
      goto LABEL_37;
    }

    v60 = swift_slowAlloc();
    *v60 = 0;
    v61 = "Unable to find GeoHash 2 folder on disk. Proceed to fetch new file.";
    goto LABEL_36;
  }

  v21 = "resend AMI Data.";
  sub_20DF9C98C();
  v22 = sub_20E0091C4();

  v23 = sub_20E0091C4();
  v24 = CFPreferencesCopyAppValue(v22, v23);

  v25 = *(v0 + 216);
  v26 = *(v0 + 224);
  v27 = *(v0 + 208);
  if (!v24)
  {
    (*(v26 + 56))(v27, 1, 1, *(v0 + 216));
    goto LABEL_28;
  }

  *(v0 + 120) = v24;
  v28 = v27;
  v29 = swift_dynamicCast();
  (*(v26 + 56))(v28, v29 ^ 1u, 1, v25);
  if ((*(v26 + 48))(v28, 1, v25) == 1)
  {
LABEL_28:
    sub_20DF66E28(*(v0 + 208), &qword_27C852A58, &qword_20E00F7A0);
    goto LABEL_29;
  }

  v30 = *(v0 + 232);
  v31 = *(v0 + 216);
  v32 = *(v0 + 224);
  (*(v32 + 32))(*(v0 + 240), *(v0 + 208), v31);
  sub_20E008C94();
  v33 = sub_20E008C44();
  v34 = *(v32 + 8);
  (v34)(v30, v31);
  if ((v33 & 1) == 0)
  {
    (v34)(*(v0 + 240), *(v0 + 216));
LABEL_29:
    sub_20DF9C834();

    v62 = sub_20E0091C4();

    v63 = sub_20E0091C4();
    v64 = CFPreferencesCopyAppValue(v62, v63);

    if (v64)
    {
      *(v0 + 112) = v64;
      if (swift_dynamicCast())
      {
        v65 = *(v0 + 96);
        v66 = *(v0 + 104);
        v67 = 1;
LABEL_38:
        *(v0 + 264) = v65;
        *(v0 + 272) = v66;
        *(v0 + 313) = v67;
        v69 = swift_task_alloc();
        *(v0 + 280) = v69;
        *v69 = v0;
        v69[1] = sub_20DFBD1B4;
        v70 = *(v0 + 144);

        return sub_20DF9D6CC(v70);
      }
    }

    if (qword_2811230E0 != -1)
    {
      swift_once();
    }

    v68 = sub_20E009094();
    __swift_project_value_buffer(v68, qword_281124A00);
    v58 = sub_20E009074();
    v59 = sub_20E009544();
    if (!os_log_type_enabled(v58, v59))
    {
LABEL_37:

      v67 = 0;
      v65 = 0;
      v66 = 0;
      goto LABEL_38;
    }

    v60 = swift_slowAlloc();
    *v60 = 0;
    v61 = "Geohash folder exist, but no ETag for geohash stored in disk.";
LABEL_36:
    _os_log_impl(&dword_20DF62000, v58, v59, v61, v60, 2u);
    MEMORY[0x20F32B3A0](v60, -1, -1);
    goto LABEL_37;
  }

  v35 = &unk_281123000;
  if (qword_2811230E0 != -1)
  {
LABEL_89:
    swift_once();
  }

  v36 = sub_20E009094();
  __swift_project_value_buffer(v36, qword_281124A00);
  v37 = sub_20E009074();
  v38 = sub_20E009554();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&dword_20DF62000, v37, v38, "Geohash folder exist, and valid. Use local geohash tiles. Skipping fetching", v39, 2u);
    MEMORY[0x20F32B3A0](v39, -1, -1);
  }

  v40 = *(v0 + 240);
  v41 = *(v0 + 216);
  v43 = *(v0 + 128);
  v42 = *(v0 + 136);

  (v34)(v40, v41);
  v44 = sub_20DFB2810(0xD00000000000002CLL, v21 | 0x8000000000000000, v43, v42);
  if (v44)
  {
    v45 = v44;
    v46 = *(v44 + 16);
    if (v46)
    {
      v47 = 0;
      v48 = -v46;
      v49 = v44 + 40;
      v50 = MEMORY[0x277D84F90];
      do
      {
        v51 = (v49 + 16 * v47++);
        while (1)
        {
          if ((v47 - 1) >= *(v45 + 16))
          {
            __break(1u);
            goto LABEL_87;
          }

          v53 = *(v51 - 1);
          v52 = *v51;

          if ((sub_20DFA1500(v53, v52) & 1) == 0)
          {
            break;
          }

          ++v47;
          v51 += 2;
          if (v48 + v47 == 1)
          {
            goto LABEL_53;
          }
        }

        v133[0] = v50;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_20DF749AC(0, *(v50 + 16) + 1, 1);
          v50 = v133[0];
        }

        v55 = *(v50 + 16);
        v54 = *(v50 + 24);
        if (v55 >= v54 >> 1)
        {
          sub_20DF749AC((v54 > 1), v55 + 1, 1);
          v50 = v133[0];
        }

        *(v50 + 16) = v55 + 1;
        v56 = v50 + 16 * v55;
        *(v56 + 32) = v53;
        *(v56 + 40) = v52;
      }

      while (v48 + v47);
    }

    else
    {
      v50 = MEMORY[0x277D84F90];
    }

LABEL_53:

    v85 = sub_20E009074();
    v86 = sub_20E009554();

    if (os_log_type_enabled(v85, v86))
    {
      v88 = *(v0 + 128);
      v87 = *(v0 + 136);
      v89 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      v133[0] = v90;
      *v89 = 136315906;
      *(v89 + 4) = sub_20DF74468(0xD000000000000013, 0x800000020E016BC0, v133);
      *(v89 + 12) = 2048;
      *(v89 + 14) = v88;
      *(v89 + 22) = 2048;
      *(v89 + 24) = v87;
      *(v89 + 32) = 2080;
      v91 = MEMORY[0x20F32A600](v50, MEMORY[0x277D837D0]);
      v93 = sub_20DF74468(v91, v92, v133);

      *(v89 + 34) = v93;
      _os_log_impl(&dword_20DF62000, v85, v86, "%s for coordinate %f %f returning %s", v89, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x20F32B3A0](v90, -1, -1);
      MEMORY[0x20F32B3A0](v89, -1, -1);
    }

LABEL_56:

    v94 = *(v0 + 8);

    return v94(v50);
  }

  v72 = *(v0 + 184);
  v73 = *(v0 + 152);
  v74 = *(v0 + 160);
  sub_20DFFC920(v72, *(v0 + 128), *(v0 + 136));
  if ((*(v74 + 48))(v72, 1, v73) != 1)
  {
    v95 = *(v0 + 168);
    v97 = *(v0 + 128);
    v96 = *(v0 + 136);
    (*(*(v0 + 160) + 32))(v95, *(v0 + 184), *(v0 + 152));
    v98 = sub_20DF68334(v95, v97, v96);
    sub_20DFB2AD0(v98, 0xD00000000000002CLL, v21 | 0x8000000000000000, v97, v96);
    if (v98)
    {
      v99 = *(v98 + 2);
      if (v99)
      {
        v35 = 0;
        v34 = -v99;
        v100 = v98 + 40;
        v50 = MEMORY[0x277D84F90];
        do
        {
          v101 = &v100[16 * v35];
          v35 = v35 + 1;
          while (1)
          {
            if (v35 - 1 >= *(v98 + 2))
            {
              __break(1u);
              goto LABEL_89;
            }

            v21 = *(v101 - 1);
            v102 = *v101;

            if ((sub_20DFA1500(v21, v102) & 1) == 0)
            {
              break;
            }

            v35 = v35 + 1;
            v101 += 2;
            if (v35 + v34 == 1)
            {
              goto LABEL_81;
            }
          }

          v133[0] = v50;
          v131 = v100;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_20DF749AC(0, *(v50 + 16) + 1, 1);
            v50 = v133[0];
          }

          v104 = *(v50 + 16);
          v103 = *(v50 + 24);
          v105 = v104 + 1;
          if (v104 >= v103 >> 1)
          {
            sub_20DF749AC((v103 > 1), v104 + 1, 1);
            v105 = v104 + 1;
            v50 = v133[0];
          }

          *(v50 + 16) = v105;
          v106 = v50 + 16 * v104;
          *(v106 + 32) = v21;
          *(v106 + 40) = v102;
          v100 = v131;
        }

        while (v35 + v34);
      }

      else
      {
        v50 = MEMORY[0x277D84F90];
      }

LABEL_81:

      if (qword_2811230E0 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v36, qword_281124A00);

      v118 = sub_20E009074();
      v119 = sub_20E009554();

      v120 = os_log_type_enabled(v118, v119);
      v121 = *(v0 + 160);
      v122 = *(v0 + 168);
      v123 = *(v0 + 152);
      if (v120)
      {
        v125 = *(v0 + 128);
        v124 = *(v0 + 136);
        v132 = *(v0 + 168);
        v126 = swift_slowAlloc();
        v127 = swift_slowAlloc();
        v133[0] = v127;
        *v126 = 136315906;
        *(v126 + 4) = sub_20DF74468(0xD000000000000013, 0x800000020E016BC0, v133);
        *(v126 + 12) = 2048;
        *(v126 + 14) = v125;
        *(v126 + 22) = 2048;
        *(v126 + 24) = v124;
        *(v126 + 32) = 2080;
        v128 = MEMORY[0x20F32A600](v50, MEMORY[0x277D837D0]);
        v130 = sub_20DF74468(v128, v129, v133);

        *(v126 + 34) = v130;
        _os_log_impl(&dword_20DF62000, v118, v119, "%s for coordinate %f %f returning %s", v126, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x20F32B3A0](v127, -1, -1);
        MEMORY[0x20F32B3A0](v126, -1, -1);

        (*(v121 + 8))(v132, v123);
      }

      else
      {

        (*(v121 + 8))(v122, v123);
      }
    }

    else
    {
      if (*(v35 + 28) != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v36, qword_281124A00);
      v107 = sub_20E009074();
      v108 = sub_20E009544();
      if (os_log_type_enabled(v107, v108))
      {
        v109 = swift_slowAlloc();
        *v109 = 0;
        _os_log_impl(&dword_20DF62000, v107, v108, "No Utility Territory found for provided coordinates", v109, 2u);
        MEMORY[0x20F32B3A0](v109, -1, -1);
      }

      v110 = sub_20E009074();
      v111 = sub_20E009554();
      if (os_log_type_enabled(v110, v111))
      {
        v113 = *(v0 + 128);
        v112 = *(v0 + 136);
        v114 = swift_slowAlloc();
        *v114 = 134218240;
        *(v114 + 4) = v113;
        *(v114 + 12) = 2048;
        *(v114 + 14) = v112;
        _os_log_impl(&dword_20DF62000, v110, v111, "Utility Territory not found for coordinate %f %f", v114, 0x16u);
        MEMORY[0x20F32B3A0](v114, -1, -1);
      }

      v116 = *(v0 + 160);
      v115 = *(v0 + 168);
      v117 = *(v0 + 152);

      (*(v116 + 8))(v115, v117);
      v50 = MEMORY[0x277D84F90];
    }

    goto LABEL_56;
  }

  sub_20DF66E28(*(v0 + 184), &qword_27C8520D0, &qword_20E00AB70);
  if (*(v35 + 28) != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v36, qword_281124A00);
  v75 = sub_20E009074();
  v76 = sub_20E009534();
  if (os_log_type_enabled(v75, v76))
  {
    v78 = *(v0 + 128);
    v77 = *(v0 + 136);
    v79 = swift_slowAlloc();
    *v79 = 134218240;
    *(v79 + 4) = v78;
    *(v79 + 12) = 2048;
    *(v79 + 14) = v77;
    _os_log_impl(&dword_20DF62000, v75, v76, "Unable to locate matching geohash tile for coordinate %f:%f)", v79, 0x16u);
    MEMORY[0x20F32B3A0](v79, -1, -1);
  }

  v80 = sub_20E009074();
  v81 = sub_20E009544();
  if (os_log_type_enabled(v80, v81))
  {
    v82 = swift_slowAlloc();
    *v82 = 0;
    _os_log_impl(&dword_20DF62000, v80, v81, "Returning no utility information. This could be intentional as the region is not supported", v82, 2u);
    MEMORY[0x20F32B3A0](v82, -1, -1);
  }

  sub_20DFC14F0();
  swift_allocError();
  *v83 = 2;
  swift_willThrow();

  v84 = *(v0 + 8);

  return v84();
}

uint64_t sub_20DFBD1B4()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  v1[36] = v3;
  *v3 = v2;
  v3[1] = sub_20DFBD388;
  v4 = v1[34];
  v5 = v1[33];
  v6 = v1[32];
  v7 = v1[31];
  v8 = v1[25];
  v9 = v1[18];

  return sub_20DFAFCFC(v8, v7, v6, v9, v5, v4);
}

uint64_t sub_20DFBD388(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 296) = a1;
  *(v3 + 304) = v1;

  if (v1)
  {

    v4 = sub_20DFBE3FC;
  }

  else
  {
    v4 = sub_20DFBD4E4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_20DFBD4E4()
{
  v107 = v0;
  v106[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 296);
  if (!v1)
  {

    if (qword_2811230E0 != -1)
    {
LABEL_83:
      swift_once();
    }

    v11 = sub_20E009094();
    __swift_project_value_buffer(v11, qword_281124A00);
    v12 = sub_20E009074();
    v13 = sub_20E009544();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_20DF62000, v12, v13, "Unknown error occurred while fetching geohash tile from server.", v14, 2u);
      MEMORY[0x20F32B3A0](v14, -1, -1);
    }

    v15 = *(v0 + 200);

    type metadata accessor for NetworkError(0);
    sub_20DF960FC();
    swift_allocError();
    *v16 = 2;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v17 = v15;
    goto LABEL_62;
  }

  v2 = v1;
  v3 = [v2 statusCode];
  if (v3 == 304)
  {
    if (*(v0 + 313) == 1)
    {
      if (*(v0 + 272))
      {

        if (qword_2811230E0 != -1)
        {
          swift_once();
        }

        v18 = sub_20E009094();
        __swift_project_value_buffer(v18, qword_281124A00);
        v19 = sub_20E009074();
        v20 = sub_20E009554();
        if (os_log_type_enabled(v19, v20))
        {
          v21 = swift_slowAlloc();
          *v21 = 0;
          _os_log_impl(&dword_20DF62000, v19, v20, "Geohash file unmodified. Continue using locally stored geohash tile", v21, 2u);
          MEMORY[0x20F32B3A0](v21, -1, -1);
        }

        v23 = *(v0 + 248);
        v22 = *(v0 + 256);

        sub_20DFB1E20(v2, v23, v22);

        goto LABEL_25;
      }
    }

    else
    {
    }

    if (qword_2811230E0 != -1)
    {
      swift_once();
    }

    v71 = sub_20E009094();
    __swift_project_value_buffer(v71, qword_281124A00);
    v72 = sub_20E009074();
    v73 = sub_20E009544();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      *v74 = 0;
      _os_log_impl(&dword_20DF62000, v72, v73, "Error while trying to fetch new Geohash tile from server.", v74, 2u);
      MEMORY[0x20F32B3A0](v74, -1, -1);
    }

    v50 = *(v0 + 200);

    sub_20DFC14F0();
    swift_allocError();
    *v75 = 1;
    goto LABEL_61;
  }

  if (v3 != 200)
  {

    if (qword_2811230E0 != -1)
    {
      swift_once();
    }

    v24 = sub_20E009094();
    __swift_project_value_buffer(v24, qword_281124A00);
    v25 = sub_20E009074();
    v26 = sub_20E009544();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_20DF62000, v25, v26, "Unknown error occurred while fetching geohash tile from server.", v27, 2u);
      MEMORY[0x20F32B3A0](v27, -1, -1);
    }

    v2 = v2;
    v28 = sub_20E009074();
    v29 = sub_20E009544();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 134217984;
      *(v30 + 4) = [v2 statusCode];

      _os_log_impl(&dword_20DF62000, v28, v29, "Status Code returned %ld", v30, 0xCu);
      MEMORY[0x20F32B3A0](v30, -1, -1);
    }

    else
    {
    }

    v50 = *(v0 + 200);
    type metadata accessor for NetworkError(0);
    sub_20DF960FC();
    swift_allocError();
    *v51 = [v2 statusCode];
    swift_storeEnumTagMultiPayload();
    goto LABEL_61;
  }

  v5 = *(v0 + 192);
  v4 = *(v0 + 200);
  v6 = *(v0 + 152);
  v7 = *(v0 + 160);

  sub_20DF66D80(v4, v5);
  v8 = (*(v7 + 48))(v5, 1, v6);
  v9 = *(v0 + 256);
  if (v8 == 1)
  {
    v10 = *(v0 + 192);

    sub_20DF66E28(v10, &qword_27C8520D0, &qword_20E00AB70);
LABEL_51:
    if (qword_2811230E0 != -1)
    {
      swift_once();
    }

    v66 = sub_20E009094();
    __swift_project_value_buffer(v66, qword_281124A00);
    v67 = sub_20E009074();
    v68 = sub_20E009544();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      *v69 = 0;
      _os_log_impl(&dword_20DF62000, v67, v68, "Error while creating geoHash tiles.", v69, 2u);
      MEMORY[0x20F32B3A0](v69, -1, -1);
    }

    v50 = *(v0 + 200);

    sub_20DFC14F0();
    swift_allocError();
    *v70 = 0;
LABEL_61:
    swift_willThrow();

    v17 = v50;
LABEL_62:
    sub_20DF66E28(v17, &qword_27C8520D0, &qword_20E00AB70);
LABEL_63:
    swift_willThrow();

    v76 = *(v0 + 8);

    return v76();
  }

  v31 = *(v0 + 248);
  v32 = *(v0 + 176);
  (*(*(v0 + 160) + 32))(v32, *(v0 + 192), *(v0 + 152));
  sub_20DFB0EE0(v32, v31, v9);
  if ((v33 & 1) == 0)
  {
    (*(*(v0 + 160) + 8))(*(v0 + 176), *(v0 + 152));

    goto LABEL_51;
  }

  v34 = *(v0 + 176);
  v35 = *(v0 + 152);
  v36 = *(v0 + 160);
  sub_20DFB1E20(v2, *(v0 + 248), *(v0 + 256));

  (*(v36 + 8))(v34, v35);
LABEL_25:
  sub_20DF66E28(*(v0 + 200), &qword_27C8520D0, &qword_20E00AB70);
  v37 = *(v0 + 184);
  v38 = *(v0 + 152);
  v39 = *(v0 + 160);
  sub_20DFFC920(v37, *(v0 + 128), *(v0 + 136));
  if ((*(v39 + 48))(v37, 1, v38) == 1)
  {
    sub_20DF66E28(*(v0 + 184), &qword_27C8520D0, &qword_20E00AB70);
    if (qword_2811230E0 != -1)
    {
      swift_once();
    }

    v40 = sub_20E009094();
    __swift_project_value_buffer(v40, qword_281124A00);
    v41 = sub_20E009074();
    v42 = sub_20E009534();
    if (os_log_type_enabled(v41, v42))
    {
      v44 = *(v0 + 128);
      v43 = *(v0 + 136);
      v45 = swift_slowAlloc();
      *v45 = 134218240;
      *(v45 + 4) = v44;
      *(v45 + 12) = 2048;
      *(v45 + 14) = v43;
      _os_log_impl(&dword_20DF62000, v41, v42, "Unable to locate matching geohash tile for coordinate %f:%f)", v45, 0x16u);
      MEMORY[0x20F32B3A0](v45, -1, -1);
    }

    v46 = sub_20E009074();
    v47 = sub_20E009544();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_20DF62000, v46, v47, "Returning no utility information. This could be intentional as the region is not supported", v48, 2u);
      MEMORY[0x20F32B3A0](v48, -1, -1);
    }

    sub_20DFC14F0();
    swift_allocError();
    *v49 = 2;
    goto LABEL_63;
  }

  v52 = *(v0 + 168);
  v54 = *(v0 + 128);
  v53 = *(v0 + 136);
  (*(*(v0 + 160) + 32))(v52, *(v0 + 184), *(v0 + 152));
  v55 = sub_20DF68334(v52, v54, v53);
  sub_20DFB2AD0(v55, 0xD00000000000002CLL, 0x800000020E0160E0, v54, v53);
  if (v55)
  {
    v56 = *(v55 + 2);
    if (v56)
    {
      v57 = 0;
      v58 = -v56;
      v59 = MEMORY[0x277D84F90];
      do
      {
        v60 = &v55[16 * v57++ + 40];
        while (1)
        {
          if ((v57 - 1) >= *(v55 + 2))
          {
            __break(1u);
            goto LABEL_83;
          }

          v62 = *(v60 - 1);
          v61 = *v60;

          if ((sub_20DFA1500(v62, v61) & 1) == 0)
          {
            break;
          }

          ++v57;
          v60 += 2;
          if (v58 + v57 == 1)
          {
            goto LABEL_74;
          }
        }

        v106[0] = v59;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_20DF749AC(0, *(v59 + 16) + 1, 1);
          v59 = v106[0];
        }

        v64 = *(v59 + 16);
        v63 = *(v59 + 24);
        if (v64 >= v63 >> 1)
        {
          sub_20DF749AC((v63 > 1), v64 + 1, 1);
          v59 = v106[0];
        }

        *(v59 + 16) = v64 + 1;
        v65 = v59 + 16 * v64;
        *(v65 + 32) = v62;
        *(v65 + 40) = v61;
      }

      while (v58 + v57);
    }

    else
    {
      v59 = MEMORY[0x277D84F90];
    }

LABEL_74:

    if (qword_2811230E0 != -1)
    {
      swift_once();
    }

    v90 = sub_20E009094();
    __swift_project_value_buffer(v90, qword_281124A00);

    v91 = sub_20E009074();
    v92 = sub_20E009554();

    v93 = os_log_type_enabled(v91, v92);
    v94 = *(v0 + 160);
    v95 = *(v0 + 168);
    v96 = *(v0 + 152);
    if (v93)
    {
      v98 = *(v0 + 128);
      v97 = *(v0 + 136);
      v105 = *(v0 + 168);
      v99 = swift_slowAlloc();
      v100 = swift_slowAlloc();
      v106[0] = v100;
      *v99 = 136315906;
      *(v99 + 4) = sub_20DF74468(0xD000000000000013, 0x800000020E016BC0, v106);
      *(v99 + 12) = 2048;
      *(v99 + 14) = v98;
      *(v99 + 22) = 2048;
      *(v99 + 24) = v97;
      *(v99 + 32) = 2080;
      v101 = MEMORY[0x20F32A600](v59, MEMORY[0x277D837D0]);
      v103 = sub_20DF74468(v101, v102, v106);

      *(v99 + 34) = v103;
      _os_log_impl(&dword_20DF62000, v91, v92, "%s for coordinate %f %f returning %s", v99, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x20F32B3A0](v100, -1, -1);
      MEMORY[0x20F32B3A0](v99, -1, -1);

      (*(v94 + 8))(v105, v96);
    }

    else
    {

      (*(v94 + 8))(v95, v96);
    }
  }

  else
  {
    if (qword_2811230E0 != -1)
    {
      swift_once();
    }

    v78 = sub_20E009094();
    __swift_project_value_buffer(v78, qword_281124A00);
    v79 = sub_20E009074();
    v80 = sub_20E009544();
    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      *v81 = 0;
      _os_log_impl(&dword_20DF62000, v79, v80, "No Utility Territory found for provided coordinates", v81, 2u);
      MEMORY[0x20F32B3A0](v81, -1, -1);
    }

    v82 = sub_20E009074();
    v83 = sub_20E009554();
    if (os_log_type_enabled(v82, v83))
    {
      v85 = *(v0 + 128);
      v84 = *(v0 + 136);
      v86 = swift_slowAlloc();
      *v86 = 134218240;
      *(v86 + 4) = v85;
      *(v86 + 12) = 2048;
      *(v86 + 14) = v84;
      _os_log_impl(&dword_20DF62000, v82, v83, "Utility Territory not found for coordinate %f %f", v86, 0x16u);
      MEMORY[0x20F32B3A0](v86, -1, -1);
    }

    v88 = *(v0 + 160);
    v87 = *(v0 + 168);
    v89 = *(v0 + 152);

    (*(v88 + 8))(v87, v89);
    v59 = MEMORY[0x277D84F90];
  }

  v104 = *(v0 + 8);

  return v104(v59);
}

uint64_t sub_20DFBE3FC(uint64_t a1)
{
  swift_willThrow();

  v2 = *(v1 + 8);

  return v2();
}

unint64_t sub_20DFBE500(uint64_t a1, uint64_t a2)
{
  v4 = sub_20DFE7E38();
  v5 = 0xEA00000000006C61;
  v6 = 0x6E7265746E496171;
  v7 = 1953654115;
  if (v4 != 2)
  {
    v7 = 1685025392;
  }

  if (v4)
  {
    v6 = 7759204;
    v5 = 0xE300000000000000;
  }

  if (v4 <= 1)
  {
    v8 = v6;
  }

  else
  {
    v8 = v7;
  }

  if (v4 <= 1)
  {
    v9 = v5;
  }

  else
  {
    v9 = 0xE400000000000000;
  }

  MEMORY[0x20F32A4B0](v8, v9);

  MEMORY[0x20F32A4B0](46, 0xE100000000000000);
  MEMORY[0x20F32A4B0](a1, a2);
  return 0xD000000000000017;
}

uint64_t sub_20DFBE5F0(uint64_t a1, uint64_t a2)
{
  v2 = sub_20E008A44();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8520D0, &qword_20E00AB70);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v17 - v7;
  v9 = sub_20E008AF4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 56))(v8, 1, 1, v9);
  (*(v3 + 104))(v5, *MEMORY[0x277CC91D8], v2);

  sub_20E008AD4();
  v13 = sub_20E008B14();
  v15 = v14;
  sub_20E008744();
  swift_allocObject();
  sub_20E008734();
  sub_20DFC149C();
  sub_20E008724();
  sub_20DF67FFC(v13, v15);

  (*(v10 + 8))(v12, v9);
  return 1;
}

uint64_t sub_20DFBE964(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[15] = a2;
  v3[16] = a3;
  v3[14] = a1;
  v3[17] = type metadata accessor for NetworkError(0);
  v3[18] = swift_task_alloc();
  v4 = sub_20E008A44();
  v3[19] = v4;
  v3[20] = *(v4 - 8);
  v3[21] = swift_task_alloc();
  v5 = sub_20E008AF4();
  v3[22] = v5;
  v3[23] = *(v5 - 8);
  v3[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8520D0, &qword_20E00AB70);
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8520C8, &qword_20E010830);
  v3[27] = swift_task_alloc();
  v6 = sub_20E008714();
  v3[28] = v6;
  v3[29] = *(v6 - 8);
  v3[30] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852A58, &qword_20E00F7A0);
  v3[31] = swift_task_alloc();
  v7 = sub_20E008CD4();
  v3[32] = v7;
  v3[33] = *(v7 - 8);
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DFBEC2C, 0, 0);
}

uint64_t sub_20DFBEC2C()
{
  v1 = sub_20DFBE500(*(v0 + 112), *(v0 + 120));
  v3 = v2;
  *(v0 + 288) = v1;
  *(v0 + 296) = v2;
  if (qword_281123098 != -1)
  {
    swift_once();
  }

  v99 = qword_2811249C0;
  v102 = *algn_2811249C8;

  MEMORY[0x20F32A4B0](v1, v3);
  v4 = sub_20DFF20F8();
  v6 = v5;

  MEMORY[0x20F32A4B0](v4, v6);

  *(v0 + 304) = v99;
  *(v0 + 312) = v102;
  v7 = [objc_opt_self() defaultManager];
  v8 = sub_20E0091C4();
  v9 = [v7 fileExistsAtPath_];

  if (!v9 || (sub_20DFBE5F0(v99, v102) & 1) == 0)
  {
    if (qword_2811230E8 != -1)
    {
      swift_once();
    }

    v34 = sub_20E009094();
    __swift_project_value_buffer(v34, qword_281124A18);
    v35 = sub_20E009074();
    v36 = sub_20E009544();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_20DF62000, v35, v36, "No perviously fetched Config file found on disk. Proceed to fetch new file.", v37, 2u);
      MEMORY[0x20F32B3A0](v37, -1, -1);
    }

    v38 = 0;
    v39 = 0;
    v40 = 0;
    goto LABEL_17;
  }

  sub_20DFD795C(v1, v3);
  v10 = sub_20E0091C4();

  v11 = sub_20E0091C4();
  v12 = CFPreferencesCopyAppValue(v10, v11);

  v13 = *(v0 + 256);
  v14 = *(v0 + 264);
  v15 = *(v0 + 248);
  if (!v12)
  {
    (*(v14 + 56))(v15, 1, 1, *(v0 + 256));
    goto LABEL_21;
  }

  *(v0 + 104) = v12;
  v16 = v15;
  v17 = swift_dynamicCast();
  (*(v14 + 56))(v16, v17 ^ 1u, 1, v13);
  if ((*(v14 + 48))(v16, 1, v13) == 1)
  {
LABEL_21:
    sub_20DF66E28(*(v0 + 248), &qword_27C852A58, &qword_20E00F7A0);
LABEL_22:
    sub_20DFD7AB8(v1, v3);
    v44 = sub_20E0091C4();

    v45 = sub_20E0091C4();
    v46 = CFPreferencesCopyAppValue(v44, v45);

    if (v46 && (*(v0 + 96) = v46, (swift_dynamicCast() & 1) != 0))
    {
      v38 = *(v0 + 56);
      v39 = *(v0 + 64);
      v40 = 1;
    }

    else
    {
      if (qword_2811230E8 != -1)
      {
        swift_once();
      }

      v47 = sub_20E009094();
      __swift_project_value_buffer(v47, qword_281124A18);
      v48 = sub_20E009074();
      v49 = sub_20E009544();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        *v50 = 0;
        _os_log_impl(&dword_20DF62000, v48, v49, "Config file exists on disk. But no eTag Value!", v50, 2u);
        MEMORY[0x20F32B3A0](v50, -1, -1);
      }

      v38 = 0;
      v39 = 0;
      v40 = 1;
    }

LABEL_17:
    *(v0 + 392) = v40;
    *(v0 + 320) = v38;
    *(v0 + 328) = v39;
    v41 = swift_task_alloc();
    *(v0 + 336) = v41;
    *v41 = v0;
    v41[1] = sub_20DFBF9F0;
    v42 = *(v0 + 128);

    return sub_20DF9D6CC(v42);
  }

  v18 = *(v0 + 272);
  v19 = *(v0 + 256);
  v20 = *(v0 + 264);
  (*(v20 + 32))(*(v0 + 280), *(v0 + 248), v19);
  sub_20E008C94();
  v21 = sub_20E008C44();
  v22 = *(v20 + 8);
  v22(v18, v19);
  if ((v21 & 1) == 0)
  {
    v22(*(v0 + 280), *(v0 + 256));
    goto LABEL_22;
  }

  if (qword_2811230E8 != -1)
  {
LABEL_56:
    swift_once();
  }

  v23 = sub_20E009094();
  __swift_project_value_buffer(v23, qword_281124A18);
  v24 = sub_20E009074();
  v25 = sub_20E009554();
  v26 = os_log_type_enabled(v24, v25);
  v27 = *(v0 + 280);
  v28 = *(v0 + 256);
  if (v26)
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_20DF62000, v24, v25, "Configuration exists locally and is Valid. Skip Fetching.", v29, 2u);
    MEMORY[0x20F32B3A0](v29, -1, -1);
  }

  v22(v27, v28);
  v31 = *(v0 + 160);
  v30 = *(v0 + 168);
  v32 = *(v0 + 152);
  (*(*(v0 + 184) + 56))(*(v0 + 200), 1, 1, *(v0 + 176));
  v33 = *(v31 + 104);
  v22 = (v31 + 104);
  v33(v30, *MEMORY[0x277CC91D8], v32);
  sub_20E008AD4();
  v51 = sub_20E008B14();
  v53 = v52;
  sub_20E008744();
  swift_allocObject();
  sub_20E008734();
  sub_20DFC149C();
  sub_20E008724();

  v54 = *(v0 + 88);
  if (qword_2811230E8 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v23, qword_281124A18);
  v55 = sub_20E009074();
  v56 = sub_20E009554();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    *v57 = 0;
    _os_log_impl(&dword_20DF62000, v55, v56, "> Utility Config values being returned", v57, 2u);
    MEMORY[0x20F32B3A0](v57, -1, -1);
  }

  v93 = v51;
  v94 = v53;

  v58 = *(v54 + 16);
  v59 = MEMORY[0x277D84F90];
  if (v58)
  {
    v60 = 0;
    v97 = -v58;
    v61 = v54 + 40;
    v92 = v54 + 40;
    do
    {
      v95 = v59;
      v62 = v61 + 48 * v60++;
      while (1)
      {
        if ((v60 - 1) >= *(v54 + 16))
        {
          __break(1u);
          goto LABEL_56;
        }

        v63 = v54;
        v64 = *(v62 - 8);
        v22 = *v62;
        v66 = *(v62 + 8);
        v65 = *(v62 + 16);
        v68 = *(v62 + 24);
        v67 = *(v62 + 32);

        if ((sub_20DFA1500(v66, v65) & 1) == 0)
        {
          break;
        }

        ++v60;
        v62 += 48;
        v54 = v63;
        if (v97 + v60 == 1)
        {
          v59 = v95;
          goto LABEL_47;
        }
      }

      v59 = v95;
      v100 = v95;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_20DF74A0C(0, v95[2] + 1, 1);
        v59 = v95;
      }

      v70 = v59[2];
      v69 = v59[3];
      v71 = v70 + 1;
      if (v70 >= v69 >> 1)
      {
        v96 = v70 + 1;
        v91 = v59[2];
        sub_20DF74A0C((v69 > 1), v70 + 1, 1);
        v71 = v96;
        v70 = v91;
        v59 = v100;
      }

      v59[2] = v71;
      v72 = &v59[6 * v70];
      v72[4] = v64;
      v72[5] = v22;
      v72[6] = v66;
      v72[7] = v65;
      v72[8] = v68;
      v72[9] = v67;
      v54 = v63;
      v61 = v92;
    }

    while (v97 + v60);
  }

LABEL_47:

  v73 = v59[2];
  if (v73)
  {
    v101 = MEMORY[0x277D84F90];
    sub_20E0097B4();
    v74 = type metadata accessor for UtilityRegion();
    v75 = v59 + 9;
    do
    {
      v77 = *(v75 - 5);
      v76 = *(v75 - 4);
      v78 = *(v75 - 3);
      v79 = *(v75 - 2);
      v80 = *(v75 - 1);
      v81 = *v75;
      v82 = objc_allocWithZone(v74);
      v83 = &v82[OBJC_IVAR____TtC19HomeUtilityServices13UtilityRegion_name];
      *v83 = v77;
      *(v83 + 1) = v76;
      v84 = &v82[OBJC_IVAR____TtC19HomeUtilityServices13UtilityRegion_identifier];
      *v84 = v78;
      *(v84 + 1) = v79;
      v85 = &v82[OBJC_IVAR____TtC19HomeUtilityServices13UtilityRegion_shortName];
      *v85 = v80;
      *(v85 + 1) = v81;
      *(v0 + 40) = v82;
      *(v0 + 48) = v74;

      objc_msgSendSuper2((v0 + 40), sel_init);
      sub_20E009794();
      sub_20E0097C4();
      sub_20E0097D4();
      sub_20E0097A4();
      v75 += 6;
      --v73;
    }

    while (v73);
    (*(*(v0 + 184) + 8))(*(v0 + 192), *(v0 + 176));
    sub_20DF67FFC(v93, v94);

    v86 = v101;
  }

  else
  {
    v87 = *(v0 + 184);
    v88 = *(v0 + 192);
    v89 = *(v0 + 176);

    sub_20DF67FFC(v93, v94);
    (*(v87 + 8))(v88, v89);
    v86 = MEMORY[0x277D84F90];
  }

  v98 = v86;

  v90 = *(v0 + 8);

  return v90(v98);
}

uint64_t sub_20DFBF9F0()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  v1[43] = v3;
  *v3 = v2;
  v3[1] = sub_20DFBFB84;
  v4 = v1[41];
  v5 = v1[40];
  v6 = v1[27];
  v7 = v1[15];
  v8 = v1[14];

  return sub_20DF65A24(v6, v8, v7, v5, v4);
}

uint64_t sub_20DFBFB84()
{

  return MEMORY[0x2822009F8](sub_20DFBFC80, 0, 0);
}

uint64_t sub_20DFBFC80()
{
  v1 = v0[28];
  v2 = v0[29];
  v3 = v0[27];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {

    sub_20DF66E28(v3, &qword_27C8520C8, &qword_20E010830);
    if (qword_2811230E8 != -1)
    {
      swift_once();
    }

    v4 = sub_20E009094();
    __swift_project_value_buffer(v4, qword_281124A18);
    v5 = sub_20E009074();
    v6 = sub_20E009544();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_20DF62000, v5, v6, "Unable to generate Request URL for All Utility Region Lookup", v7, 2u);
      MEMORY[0x20F32B3A0](v7, -1, -1);
    }

    sub_20DF960FC();
    swift_allocError();
    *v8 = 0;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v9 = v0[1];

    return v9();
  }

  else
  {
    v12 = v0[14];
    v11 = v0[15];
    (*(v2 + 32))(v0[30], v3, v1);
    sub_20E009714();

    MEMORY[0x20F32A4B0](v12, v11);
    sub_20DFDF8DC(0xD00000000000001ALL, 0x800000020E016B20, 0xD000000000000022, 0x800000020E016B40);

    v13 = swift_task_alloc();
    v0[44] = v13;
    *v13 = v0;
    v13[1] = sub_20DFBFFE0;
    v14 = v0[30];

    return MEMORY[0x28211ECF8](v14, 0);
  }
}

uint64_t sub_20DFBFFE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[45] = a1;
  v5[46] = a2;
  v5[47] = a3;
  v5[48] = v3;

  if (v3)
  {

    v6 = sub_20DFC1218;
  }

  else
  {
    v6 = sub_20DFC0120;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_20DFC0120()
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  v2 = &unk_281123000;
  if (!v1)
  {

    if (qword_2811230E8 != -1)
    {
      swift_once();
    }

    v29 = sub_20E009094();
    __swift_project_value_buffer(v29, qword_281124A18);
    v30 = sub_20E009074();
    v31 = sub_20E009544();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_20DF62000, v30, v31, "Unable to process All Utility Region response.", v32, 2u);
      MEMORY[0x20F32B3A0](v32, -1, -1);
    }

    v24 = *(v0 + 368);
    v33 = *(v0 + 376);
    v34 = *(v0 + 360);

    sub_20DF960FC();
    v26 = swift_allocError();
    *v35 = 2;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

LABEL_35:
    v28 = v34;
LABEL_36:
    v46 = v24;
    goto LABEL_37;
  }

  v3 = v1;
  v5 = *(v0 + 112);
  v4 = *(v0 + 120);
  v6 = *(v0 + 376);
  sub_20E009714();

  MEMORY[0x20F32A4B0](v5, v4);
  MEMORY[0x20F32A4B0](46, 0xE100000000000000);
  sub_20DFDFFF8(0xD000000000000024, 0x800000020E016B70, [v3 statusCode], &unk_28252D418);

  v7 = [v3 statusCode];
  if (v7 == 304)
  {
    if (*(v0 + 392) == 1)
    {
      if (*(v0 + 328))
      {

        if (qword_2811230E8 != -1)
        {
LABEL_73:
          swift_once();
        }

        v36 = sub_20E009094();
        __swift_project_value_buffer(v36, qword_281124A18);
        v37 = sub_20E009074();
        v38 = sub_20E009534();
        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          *v39 = 0;
          _os_log_impl(&dword_20DF62000, v37, v38, "Utility Territory on disk unmodified. Use existing file on disk.", v39, 2u);
          MEMORY[0x20F32B3A0](v39, -1, -1);
        }

        v40 = *(v0 + 384);
        v42 = *(v0 + 288);
        v41 = *(v0 + 296);

        sub_20DFD7BA4(v3, v42, v41);
        if (!v40)
        {
          goto LABEL_48;
        }

        v26 = v40;
        v44 = *(v0 + 368);
        v43 = *(v0 + 376);
        v45 = *(v0 + 360);

        v28 = v45;
        v46 = v44;
LABEL_37:
        sub_20DF67FFC(v28, v46);
        if (v2[29] != -1)
        {
          swift_once();
        }

        v66 = sub_20E009094();
        __swift_project_value_buffer(v66, qword_281124A18);
        v67 = sub_20E009074();
        v68 = sub_20E009544();
        if (os_log_type_enabled(v67, v68))
        {
          v69 = swift_slowAlloc();
          *v69 = 0;
          _os_log_impl(&dword_20DF62000, v67, v68, "Error while trying to fetch All Utility Region data.", v69, 2u);
          MEMORY[0x20F32B3A0](v69, -1, -1);
        }

        *(v0 + 72) = v26;
        v70 = v26;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8525A8, &unk_20E00C130);
        v71 = swift_dynamicCast();
        v72 = *(v0 + 232);
        v73 = *(v0 + 240);
        v74 = *(v0 + 224);
        if (v71)
        {
          sub_20DFB2F60(*(v0 + 144));
          swift_willThrow();
        }

        else
        {
          sub_20DFFF4B4(v26);
          swift_willThrow();
        }

        (*(v72 + 8))(v73, v74);

        v75 = *(v0 + 8);

        return v75();
      }
    }

    else
    {
    }

    if (qword_2811230E8 != -1)
    {
      swift_once();
    }

    v58 = sub_20E009094();
    __swift_project_value_buffer(v58, qword_281124A18);
    v59 = sub_20E009074();
    v60 = sub_20E009534();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&dword_20DF62000, v59, v60, "Server return 304, but inconsistency in stored Config detected!", v61, 2u);
      MEMORY[0x20F32B3A0](v61, -1, -1);
    }

    v24 = *(v0 + 368);
    v62 = *(v0 + 376);
    v34 = *(v0 + 360);
    v64 = *(v0 + 288);
    v63 = *(v0 + 296);

    sub_20DFD7F58(v64, v63);

    sub_20DFC1448();
    v26 = swift_allocError();
    *v65 = 1;
    swift_willThrow();

    goto LABEL_35;
  }

  if (v7 != 200)
  {

    if (qword_2811230E8 != -1)
    {
      swift_once();
    }

    v47 = *(v0 + 376);
    v48 = sub_20E009094();
    __swift_project_value_buffer(v48, qword_281124A18);
    v49 = v47;
    v50 = sub_20E009074();
    v51 = sub_20E009544();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = *(v0 + 376);
      v53 = swift_slowAlloc();
      *v53 = 134217984;
      *(v53 + 4) = [v3 statusCode];

      _os_log_impl(&dword_20DF62000, v50, v51, "Unhandled Response code %ld", v53, 0xCu);
      MEMORY[0x20F32B3A0](v53, -1, -1);
      v54 = *(v0 + 376);
    }

    else
    {

      v54 = *(v0 + 376);
      v50 = v54;
    }

    v56 = *(v0 + 360);
    v55 = *(v0 + 368);

    sub_20DF960FC();
    v26 = swift_allocError();
    *v57 = [v3 statusCode];
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v28 = v56;
    v46 = v55;
    goto LABEL_37;
  }

  v8 = *(v0 + 384);
  v9 = *(v0 + 360);
  v10 = *(v0 + 368);

  sub_20DFD29C0(v9, v10);
  v11 = v8;
  if (v8)
  {

    if (qword_2811230E8 != -1)
    {
      swift_once();
    }

    v19 = sub_20E009094();
    __swift_project_value_buffer(v19, qword_281124A18);
    v20 = sub_20E009074();
    v21 = sub_20E009544();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_20DF62000, v20, v21, "Error while decoding all Utility region response from server.", v22, 2u);
      MEMORY[0x20F32B3A0](v22, -1, -1);
    }

    v24 = *(v0 + 368);
    v23 = *(v0 + 376);
    v25 = *(v0 + 360);

    sub_20DF960FC();
    v26 = swift_allocError();
    *v27 = 1;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v28 = v25;
    goto LABEL_36;
  }

  v12 = *(v0 + 360);
  v13 = *(v0 + 368);
  v15 = *(v0 + 288);
  v14 = *(v0 + 296);
  v16 = *(v0 + 208);

  sub_20DFD2EB0(v12, v13, v15, v14, v16);
  v17 = *(v0 + 288);
  v18 = *(v0 + 296);
  sub_20DF66E28(*(v0 + 208), &qword_27C8520D0, &qword_20E00AB70);
  sub_20DFD7BA4(v3, v17, v18);
LABEL_48:
  v77 = *(v0 + 368);
  v78 = *(v0 + 376);
  v79 = *(v0 + 360);
  (*(*(v0 + 232) + 8))(*(v0 + 240), *(v0 + 224));

  sub_20DF67FFC(v79, v77);
  v81 = *(v0 + 160);
  v80 = *(v0 + 168);
  v82 = *(v0 + 152);
  (*(*(v0 + 184) + 56))(*(v0 + 200), 1, 1, *(v0 + 176));
  (*(v81 + 104))(v80, *MEMORY[0x277CC91D8], v82);
  sub_20E008AD4();
  v83 = sub_20E008B14();
  v3 = v84;
  sub_20E008744();
  swift_allocObject();
  sub_20E008734();
  sub_20DFC149C();
  sub_20E008724();

  v85 = *(v0 + 88);
  if (v2[29] != -1)
  {
    swift_once();
  }

  v86 = sub_20E009094();
  __swift_project_value_buffer(v86, qword_281124A18);
  v87 = sub_20E009074();
  v88 = sub_20E009554();
  if (os_log_type_enabled(v87, v88))
  {
    v89 = swift_slowAlloc();
    *v89 = 0;
    _os_log_impl(&dword_20DF62000, v87, v88, "> Utility Config values being returned", v89, 2u);
    MEMORY[0x20F32B3A0](v89, -1, -1);
  }

  v124 = v83;
  v125 = v3;

  v90 = v85[2];
  v91 = MEMORY[0x277D84F90];
  if (v90)
  {
    v92 = 0;
    v128 = -v90;
    v93 = v85 + 5;
    v123 = v85 + 5;
    do
    {
      v126 = v91;
      v94 = &v93[6 * v92++];
      while (1)
      {
        if ((v92 - 1) >= v85[2])
        {
          __break(1u);
          goto LABEL_73;
        }

        v3 = v85;
        v95 = *(v94 - 1);
        v2 = *v94;
        v97 = v94[1];
        v96 = v94[2];
        v98 = v94[3];
        v99 = v94[4];

        if ((sub_20DFA1500(v97, v96) & 1) == 0)
        {
          break;
        }

        ++v92;
        v94 += 6;
        v85 = v3;
        if (v128 + v92 == 1)
        {
          v91 = v126;
          goto LABEL_64;
        }
      }

      v91 = v126;
      v130 = v126;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_20DF74A0C(0, v126[2] + 1, 1);
        v91 = v126;
      }

      v101 = v91[2];
      v100 = v91[3];
      v102 = v101 + 1;
      if (v101 >= v100 >> 1)
      {
        v127 = v101 + 1;
        v122 = v91[2];
        sub_20DF74A0C((v100 > 1), v101 + 1, 1);
        v102 = v127;
        v101 = v122;
        v91 = v130;
      }

      v91[2] = v102;
      v103 = &v91[6 * v101];
      v103[4] = v95;
      v103[5] = v2;
      v103[6] = v97;
      v103[7] = v96;
      v103[8] = v98;
      v103[9] = v99;
      v85 = v3;
      v93 = v123;
    }

    while (v128 + v92);
  }

LABEL_64:

  v104 = v91[2];
  if (v104)
  {
    v131 = MEMORY[0x277D84F90];
    sub_20E0097B4();
    v105 = type metadata accessor for UtilityRegion();
    v106 = v91 + 9;
    do
    {
      v108 = *(v106 - 5);
      v107 = *(v106 - 4);
      v109 = *(v106 - 3);
      v110 = *(v106 - 2);
      v111 = *(v106 - 1);
      v112 = *v106;
      v113 = objc_allocWithZone(v105);
      v114 = &v113[OBJC_IVAR____TtC19HomeUtilityServices13UtilityRegion_name];
      *v114 = v108;
      *(v114 + 1) = v107;
      v115 = &v113[OBJC_IVAR____TtC19HomeUtilityServices13UtilityRegion_identifier];
      *v115 = v109;
      *(v115 + 1) = v110;
      v116 = &v113[OBJC_IVAR____TtC19HomeUtilityServices13UtilityRegion_shortName];
      *v116 = v111;
      *(v116 + 1) = v112;
      *(v0 + 40) = v113;
      *(v0 + 48) = v105;

      objc_msgSendSuper2((v0 + 40), sel_init);
      sub_20E009794();
      sub_20E0097C4();
      sub_20E0097D4();
      sub_20E0097A4();
      v106 += 6;
      --v104;
    }

    while (v104);
    (*(*(v0 + 184) + 8))(*(v0 + 192), *(v0 + 176));
    sub_20DF67FFC(v124, v125);

    v117 = v131;
  }

  else
  {
    v118 = *(v0 + 184);
    v119 = *(v0 + 192);
    v120 = *(v0 + 176);

    sub_20DF67FFC(v124, v125);
    (*(v118 + 8))(v119, v120);
    v117 = MEMORY[0x277D84F90];
  }

  v129 = v117;

  v121 = *(v0 + 8);

  return v121(v129);
}

uint64_t sub_20DFC1218()
{
  v1 = v0[48];
  if (qword_2811230E8 != -1)
  {
    swift_once();
  }

  v2 = sub_20E009094();
  __swift_project_value_buffer(v2, qword_281124A18);
  v3 = sub_20E009074();
  v4 = sub_20E009544();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_20DF62000, v3, v4, "Error while trying to fetch All Utility Region data.", v5, 2u);
    MEMORY[0x20F32B3A0](v5, -1, -1);
  }

  v0[9] = v1;
  v6 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8525A8, &unk_20E00C130);
  v7 = swift_dynamicCast();
  v8 = v0[29];
  v9 = v0[30];
  v10 = v0[28];
  if (v7)
  {
    sub_20DFB2F60(v0[18]);
    swift_willThrow();
  }

  else
  {
    sub_20DFFF4B4(v1);
    swift_willThrow();
  }

  (*(v8 + 8))(v9, v10);

  v11 = v0[1];

  return v11();
}

unint64_t sub_20DFC1448()
{
  result = qword_27C852EB0;
  if (!qword_27C852EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852EB0);
  }

  return result;
}

unint64_t sub_20DFC149C()
{
  result = qword_281123350;
  if (!qword_281123350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281123350);
  }

  return result;
}

unint64_t sub_20DFC14F0()
{
  result = qword_27C852EB8;
  if (!qword_27C852EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852EB8);
  }

  return result;
}

void *sub_20DFC1564(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852EC0, &qword_20E010388);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20DFC1718();
  sub_20E009A74();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852EC8, &qword_20E010390);
    sub_20DFC1A60(&qword_2811230B0, sub_20DFC176C, MEMORY[0x277D83978]);
    sub_20E0098C4();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return v7;
}

unint64_t sub_20DFC1718()
{
  result = qword_281123368;
  if (!qword_281123368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281123368);
  }

  return result;
}

unint64_t sub_20DFC176C()
{
  result = qword_281123370;
  if (!qword_281123370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281123370);
  }

  return result;
}

uint64_t sub_20DFC17C0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852ED0, &qword_20E010398);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20DFC1A0C();
  sub_20E009A74();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v25 = 0;
  v9 = sub_20E009894();
  v11 = v10;
  v22 = v9;
  v24 = 1;
  v20 = sub_20E009894();
  v21 = v12;
  v23 = 2;
  v13 = sub_20E009894();
  v14 = v8;
  v16 = v15;
  (*(v6 + 8))(v14, v5);
  result = __swift_destroy_boxed_opaque_existential_0(a1);
  *a2 = v22;
  a2[1] = v11;
  v18 = v21;
  a2[2] = v20;
  a2[3] = v18;
  a2[4] = v13;
  a2[5] = v16;
  return result;
}

unint64_t sub_20DFC1A0C()
{
  result = qword_281123388;
  if (!qword_281123388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281123388);
  }

  return result;
}

uint64_t sub_20DFC1A60(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C852EC8, &qword_20E010390);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_20DFC1AD8()
{
  result = qword_27C852EF0;
  if (!qword_27C852EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852EF0);
  }

  return result;
}

unint64_t sub_20DFC1B50()
{
  result = qword_27C852EF8;
  if (!qword_27C852EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852EF8);
  }

  return result;
}

unint64_t sub_20DFC1BA8()
{
  result = qword_27C852F00;
  if (!qword_27C852F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852F00);
  }

  return result;
}

unint64_t sub_20DFC1C00()
{
  result = qword_281123378;
  if (!qword_281123378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281123378);
  }

  return result;
}

unint64_t sub_20DFC1C58()
{
  result = qword_281123380;
  if (!qword_281123380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281123380);
  }

  return result;
}

unint64_t sub_20DFC1CB0()
{
  result = qword_281123358;
  if (!qword_281123358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281123358);
  }

  return result;
}

unint64_t sub_20DFC1D08()
{
  result = qword_281123360;
  if (!qword_281123360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281123360);
  }

  return result;
}

uint64_t sub_20DFC1D5C(uint64_t a1, char a2)
{
  *(v2 + 600) = a2;
  *(v2 + 432) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852A60, &unk_20E00EBE0);
  *(v2 + 440) = swift_task_alloc();
  v3 = type metadata accessor for UtilityServicesConfigurationsModel(0);
  *(v2 + 448) = v3;
  *(v2 + 456) = *(v3 - 8);
  *(v2 + 464) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DFC1E58, 0, 0);
}

uint64_t sub_20DFC1E58()
{
  v1 = sub_20DFC3D68();
  if (v2)
  {
    v3 = HIBYTE(v2) & 0xF;
    if ((v2 & 0x2000000000000000) == 0)
    {
      v3 = v1 & 0xFFFFFFFFFFFFLL;
    }

    if (v3)
    {
      v4 = v1;
      v5 = v2;

      v6 = v0[1];

      return v6(v4, v5);
    }
  }

  v8 = [objc_opt_self() ephemeralSessionConfiguration];
  v9 = [objc_opt_self() sessionWithConfiguration_];
  v0[59] = v9;

  v10 = swift_task_alloc();
  v0[60] = v10;
  *v10 = v0;
  v10[1] = sub_20DFC201C;

  return sub_20DF9D6CC(v9);
}

uint64_t sub_20DFC201C()
{
  v1 = *(*v0 + 472);

  return MEMORY[0x2822009F8](sub_20DFC2130, 0, 0);
}

uint64_t sub_20DFC2130()
{
  v1 = v0[56];
  v2 = v0[57];
  v3 = v0[55];
  sub_20DF9EE34(v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_20DF66E28(v0[55], &qword_27C852A60, &unk_20E00EBE0);
    if (qword_27C852068 != -1)
    {
      swift_once();
    }

    v4 = sub_20E009094();
    __swift_project_value_buffer(v4, qword_27C862698);
    v5 = sub_20E009074();
    v6 = sub_20E009544();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_20DF62000, v5, v6, "Unable to retrieve serviceProxy configuration", v7, 2u);
      MEMORY[0x20F32B3A0](v7, -1, -1);
    }

    v8 = 0;
    v9 = 0xE000000000000000;
    goto LABEL_9;
  }

  v10 = v0[54];
  sub_20DF85D48(v0[55], v0[58]);
  v8 = sub_20DFC4408(v10);
  v12 = v0[58];
  if (v11)
  {
    v9 = v11;
    sub_20DF85E5C(v12);
LABEL_9:

    v13 = v0[1];

    return v13(v8, v9);
  }

  v15 = *(v12 + 272);
  v0[21] = *(v12 + 264);
  v0[22] = v15;
  v0[23] = 45;
  v0[24] = 0xE100000000000000;
  v0[25] = 43;
  v0[26] = 0xE100000000000000;
  v16 = sub_20DF751E4();
  v0[61] = v16;
  v17 = MEMORY[0x277D837D0];
  v0[27] = sub_20E0095F4();
  v0[28] = v18;
  v0[29] = 95;
  v0[30] = 0xE100000000000000;
  v0[31] = 47;
  v0[32] = 0xE100000000000000;
  v52 = v16;
  v53 = v16;
  v50 = v17;
  v51 = v16;
  sub_20E0095F4();

  LOBYTE(v17) = sub_20E0092B4();

  if ((v17 & 3) != 0)
  {
    sub_20E0092B4();
    v19 = sub_20E009364();
    MEMORY[0x20F32A4B0](v19);
  }

  v20 = sub_20E008B24();
  v22 = v21;

  v0[62] = v20;
  v0[63] = v22;
  if (v22 >> 60 == 15)
  {
    if (qword_27C852068 != -1)
    {
      swift_once();
    }

    v23 = sub_20E009094();
    __swift_project_value_buffer(v23, qword_27C862698);
    v24 = sub_20E009074();
    v25 = sub_20E009544();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_20DF62000, v24, v25, "Unable to generate encoded Token Key.", v26, 2u);
      MEMORY[0x20F32B3A0](v26, -1, -1);
    }

    v27 = v0[58];

    sub_20DFC4CCC();
    swift_allocError();
    *v28 = 2;
    swift_willThrow();
LABEL_34:
    sub_20DF85E5C(v27);

    v49 = v0[1];

    return v49();
  }

  v29 = v0[54];

  v30 = sub_20E0091C4();

  if (v29)
  {
    v31 = sub_20E009414();
  }

  else
  {
    v31 = 0;
  }

  v32 = [objc_allocWithZone(MEMORY[0x277D2CA58]) initRSABlindSignatureChallengeWithIssuerName:v30 redemptionNonce:0 originNames:{v31, v50, v51, v52, v53}];
  v0[64] = v32;

  v33 = [v32 challengeData];
  if (!v33)
  {
    if (qword_27C852068 != -1)
    {
      swift_once();
    }

    v44 = sub_20E009094();
    __swift_project_value_buffer(v44, qword_27C862698);
    v45 = sub_20E009074();
    v46 = sub_20E009544();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_20DF62000, v45, v46, "Unable to generate challenge data", v47, 2u);
      MEMORY[0x20F32B3A0](v47, -1, -1);
    }

    v27 = v0[58];

    sub_20DFC4CCC();
    swift_allocError();
    *v48 = 3;
    swift_willThrow();
    sub_20DF64DE8(v20, v22);

    goto LABEL_34;
  }

  v34 = v33;
  v35 = sub_20E008B84();
  v37 = v36;

  v0[65] = v35;
  v0[66] = v37;
  v38 = objc_allocWithZone(MEMORY[0x277D2CA60]);
  sub_20DF67FA8(v35, v37);
  sub_20DF8F738(v20, v22);
  v39 = sub_20E008B64();
  v40 = sub_20E008B64();
  v41 = [v38 initWithChallenge:v39 tokenKey:v40 originNameKey:0];
  v0[67] = v41;

  sub_20DF64DE8(v20, v22);
  sub_20DF67FFC(v35, v37);
  [v41 setSystemClient_];
  if (qword_27C852020 != -1)
  {
    swift_once();
  }

  v42 = qword_27C862630;
  v0[2] = v0;
  v0[7] = v0 + 33;
  v0[3] = sub_20DFC2930;
  v43 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852F20, &unk_20E0106E0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_20DFC3A50;
  v0[13] = &block_descriptor_0;
  v0[14] = v43;
  [v41 fetchTokenWithQueue:v42 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_20DFC2930()
{
  v1 = *(*v0 + 48);
  *(*v0 + 544) = v1;
  if (v1)
  {
    v2 = sub_20DFC3308;
  }

  else
  {
    v2 = sub_20DFC2A40;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20DFC2A40()
{
  v59 = v0;
  v1 = *(v0 + 264);
  v2 = *(v0 + 272);
  v3 = v2 >> 62;
  if ((v2 >> 62) > 1)
  {
    if (v3 != 2 || *(v1 + 16) == *(v1 + 24))
    {
      goto LABEL_11;
    }
  }

  else if (v3)
  {
    if (v1 == v1 >> 32)
    {
LABEL_11:
      sub_20DFC4CCC();
      v17 = swift_allocError();
      *v18 = 1;
      swift_willThrow();
      sub_20DF67FFC(v1, v2);
      *(v0 + 552) = v17;
      if (qword_27C852068 != -1)
      {
        swift_once();
      }

      v19 = sub_20E009094();
      __swift_project_value_buffer(v19, qword_27C862698);
      v20 = sub_20E009074();
      v21 = sub_20E009544();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_20DF62000, v20, v21, "Error while trying to fetch Private Access Token", v22, 2u);
        MEMORY[0x20F32B3A0](v22, -1, -1);
      }

      v23 = sub_20E008A24();
      *(v0 + 560) = v23;
      if ([v23 code] != 1007)
      {
        goto LABEL_19;
      }

      v24 = sub_20E009074();
      v25 = sub_20E009544();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_20DF62000, v24, v25, "Private Access Token Error caused by Token issuance server error", v26, 2u);
        MEMORY[0x20F32B3A0](v26, -1, -1);
      }

      v27 = *(v0 + 600);

      if ((v27 & 1) == 0)
      {
        v45 = sub_20E009074();
        v46 = sub_20E009554();
        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          *v47 = 0;
          _os_log_impl(&dword_20DF62000, v45, v46, "Trying to fetch token again.", v47, 2u);
          MEMORY[0x20F32B3A0](v47, -1, -1);
        }

        v48 = swift_task_alloc();
        *(v0 + 568) = v48;
        *v48 = v0;
        v48[1] = sub_20DFC30EC;
        v49 = *(v0 + 432);

        return sub_20DFC1D5C(v49, 1);
      }

      else
      {
LABEL_19:

        v28 = v17;
        v29 = sub_20E009074();
        v30 = sub_20E009544();

        v57 = v17;
        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          v32 = swift_slowAlloc();
          v58 = v32;
          *v31 = 136315138;
          swift_getErrorValue();
          v33 = sub_20E0099E4();
          v35 = sub_20DF74468(v33, v34, &v58);

          *(v31 + 4) = v35;
          _os_log_impl(&dword_20DF62000, v29, v30, "%s", v31, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v32);
          MEMORY[0x20F32B3A0](v32, -1, -1);
          MEMORY[0x20F32B3A0](v31, -1, -1);
        }

        v36 = *(v0 + 536);
        v37 = *(v0 + 528);
        v38 = *(v0 + 520);
        v40 = *(v0 + 504);
        v39 = *(v0 + 512);
        v41 = *(v0 + 496);
        v42 = *(v0 + 464);
        swift_allocError();
        *v43 = 1;
        swift_willThrow();
        sub_20DF67FFC(v38, v37);
        sub_20DF64DE8(v41, v40);

        sub_20DF85E5C(v42);

        v44 = *(v0 + 8);

        return v44();
      }
    }
  }

  else if ((v2 & 0xFF000000000000) == 0)
  {
    goto LABEL_11;
  }

  v55 = *(v0 + 536);
  v56 = *(v0 + 512);
  v52 = *(v0 + 528);
  v53 = *(v0 + 504);
  v50 = *(v0 + 520);
  v51 = *(v0 + 496);
  v54 = *(v0 + 464);
  v4 = *(v0 + 432);
  *(v0 + 280) = sub_20E008B74();
  *(v0 + 288) = v5;
  *(v0 + 296) = 43;
  *(v0 + 304) = 0xE100000000000000;
  *(v0 + 312) = 45;
  *(v0 + 320) = 0xE100000000000000;
  v6 = sub_20E0095F4();
  v8 = v7;

  *(v0 + 328) = v6;
  *(v0 + 336) = v8;
  *(v0 + 344) = 47;
  *(v0 + 352) = 0xE100000000000000;
  *(v0 + 360) = 95;
  *(v0 + 368) = 0xE100000000000000;
  v9 = sub_20E0095F4();
  v11 = v10;

  *(v0 + 376) = v9;
  *(v0 + 384) = v11;
  *(v0 + 392) = 61;
  *(v0 + 400) = 0xE100000000000000;
  *(v0 + 408) = 0;
  *(v0 + 416) = 0xE000000000000000;
  v12 = sub_20E0095F4();
  v14 = v13;

  sub_20DFC47D0(v4, v12, v14);
  sub_20DF67FFC(v50, v52);
  sub_20DF64DE8(v51, v53);
  sub_20DF67FFC(v1, v2);

  sub_20DF85E5C(v54);

  v15 = *(v0 + 8);

  return v15(v12, v14);
}

uint64_t sub_20DFC30EC(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 576) = v2;

  if (v2)
  {
    v7 = sub_20DFC3748;
  }

  else
  {
    *(v6 + 584) = a2;
    *(v6 + 592) = a1;
    v7 = sub_20DFC3224;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_20DFC3224()
{
  v1 = v0[70];
  v2 = v0[69];
  v3 = v0[67];
  v4 = v0[63];
  v5 = v0[64];
  v6 = v0[62];
  v7 = v0[58];
  sub_20DF67FFC(v0[65], v0[66]);
  sub_20DF64DE8(v6, v4);

  sub_20DF85E5C(v7);
  v8 = v0[74];
  v9 = v0[73];

  v10 = v0[1];

  return v10(v8, v9);
}

uint64_t sub_20DFC3308(uint64_t a1)
{
  v37 = v1;
  swift_willThrow();
  v2 = *(v1 + 544);
  *(v1 + 552) = v2;
  if (qword_27C852068 != -1)
  {
    swift_once();
  }

  v3 = sub_20E009094();
  __swift_project_value_buffer(v3, qword_27C862698);
  v4 = sub_20E009074();
  v5 = sub_20E009544();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_20DF62000, v4, v5, "Error while trying to fetch Private Access Token", v6, 2u);
    MEMORY[0x20F32B3A0](v6, -1, -1);
  }

  v7 = sub_20E008A24();
  *(v1 + 560) = v7;
  if ([v7 code] != 1007)
  {
    goto LABEL_9;
  }

  v8 = sub_20E009074();
  v9 = sub_20E009544();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_20DF62000, v8, v9, "Private Access Token Error caused by Token issuance server error", v10, 2u);
    MEMORY[0x20F32B3A0](v10, -1, -1);
  }

  v11 = *(v1 + 600);

  if ((v11 & 1) == 0)
  {
    v30 = sub_20E009074();
    v31 = sub_20E009554();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_20DF62000, v30, v31, "Trying to fetch token again.", v32, 2u);
      MEMORY[0x20F32B3A0](v32, -1, -1);
    }

    v33 = swift_task_alloc();
    *(v1 + 568) = v33;
    *v33 = v1;
    v33[1] = sub_20DFC30EC;
    v34 = *(v1 + 432);

    return sub_20DFC1D5C(v34, 1);
  }

  else
  {
LABEL_9:

    v12 = v2;
    v13 = sub_20E009074();
    v14 = sub_20E009544();

    v35 = v2;
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v36 = v16;
      *v15 = 136315138;
      swift_getErrorValue();
      v17 = sub_20E0099E4();
      v19 = sub_20DF74468(v17, v18, &v36);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_20DF62000, v13, v14, "%s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x20F32B3A0](v16, -1, -1);
      MEMORY[0x20F32B3A0](v15, -1, -1);
    }

    v20 = *(v1 + 536);
    v21 = *(v1 + 528);
    v22 = *(v1 + 520);
    v24 = *(v1 + 504);
    v23 = *(v1 + 512);
    v25 = *(v1 + 496);
    v26 = *(v1 + 464);
    sub_20DFC4CCC();
    swift_allocError();
    *v27 = 1;
    swift_willThrow();
    sub_20DF67FFC(v22, v21);
    sub_20DF64DE8(v25, v24);

    sub_20DF85E5C(v26);

    v28 = *(v1 + 8);

    return v28();
  }
}

uint64_t sub_20DFC3748()
{
  v1 = v0[70];
  v2 = v0[69];
  v3 = v0[67];
  v4 = v0[63];
  v5 = v0[64];
  v6 = v0[62];
  v7 = v0[58];
  sub_20DF67FFC(v0[65], v0[66]);
  sub_20DF64DE8(v6, v4);

  sub_20DF85E5C(v7);

  v8 = v0[1];

  return v8();
}

uint64_t sub_20DFC381C()
{
  v7 = sub_20E009574();
  v0 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_20E009564();
  MEMORY[0x28223BE20](v3);
  v4 = sub_20E0090B4();
  MEMORY[0x28223BE20](v4 - 8);
  v6[1] = sub_20DFC4D38();
  sub_20E0090A4();
  v8 = MEMORY[0x277D84F90];
  sub_20DFC4D84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852F38, qword_20E0106F0);
  sub_20DFC4DDC(&qword_27C852F40, &qword_27C852F38, qword_20E0106F0, MEMORY[0x277D83970]);
  sub_20E009664();
  (*(v0 + 104))(v2, *MEMORY[0x277D85260], v7);
  result = sub_20E009584();
  qword_27C862630 = result;
  return result;
}

uint64_t sub_20DFC3A50(uint64_t a1, void *a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8525A8, &unk_20E00C130);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    v9 = a2;
    v10 = sub_20E008B84();
    v12 = v11;

    v13 = *(*(v5 + 64) + 40);
    *v13 = v10;
    v13[1] = v12;

    return MEMORY[0x282200950](v5);
  }
}

uint64_t TokenGenerationError.hashValue.getter()
{
  v1 = *v0;
  sub_20E009A34();
  MEMORY[0x20F32AC10](v1);
  return sub_20E009A54();
}

unint64_t sub_20DFC3BC4()
{
  result = qword_27C852F08;
  if (!qword_27C852F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852F08);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TokenGenerationError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TokenGenerationError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_20DFC3D68()
{
  v21 = *MEMORY[0x277D85DE8];
  if ((os_variant_has_internal_diagnostics() & 1) == 0 && !sub_20DF9CE68())
  {
    return 0;
  }

  LOBYTE(v18) = 0;
  v0 = sub_20E0091C4();
  v1 = sub_20E0091C4();
  AppBooleanValue = CFPreferencesGetAppBooleanValue(v0, v1, &v18);

  if (v18 && AppBooleanValue)
  {
    if (qword_27C852068 != -1)
    {
      swift_once();
    }

    v3 = sub_20E009094();
    __swift_project_value_buffer(v3, qword_27C862698);
    v4 = sub_20E009074();
    v5 = sub_20E009544();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_20DF62000, v4, v5, "PAT feature has been disabled by Defaults override.", v6, 2u);
      MEMORY[0x20F32B3A0](v6, -1, -1);
    }

    sub_20DFC4CCC();
    swift_allocError();
    *v7 = 5;
    return swift_willThrow();
  }

  v9 = sub_20E0091C4();
  v10 = sub_20E0091C4();
  v11 = CFPreferencesCopyAppValue(v9, v10);

  if (!v11)
  {
    return 0;
  }

  v20 = v11;
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v12 = v18;
  v13 = HIBYTE(v19) & 0xF;
  if ((v19 & 0x2000000000000000) == 0)
  {
    v13 = v18 & 0xFFFFFFFFFFFFLL;
  }

  if (!v13)
  {

    return 0;
  }

  if (qword_27C852068 != -1)
  {
    swift_once();
  }

  v14 = sub_20E009094();
  __swift_project_value_buffer(v14, qword_27C862698);
  v15 = sub_20E009074();
  v16 = sub_20E009544();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_20DF62000, v15, v16, "PAT | Using overridden value provided by defaults.", v17, 2u);
    MEMORY[0x20F32B3A0](v17, -1, -1);
  }

  return v12;
}

uint64_t sub_20DFC40A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852A60, &unk_20E00EBE0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = (&v23 - v3);
  v5 = type metadata accessor for UtilityServicesConfigurationsModel(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    if (qword_27C852068 != -1)
    {
      swift_once();
    }

    v14 = sub_20E009094();
    __swift_project_value_buffer(v14, qword_27C862698);
    v10 = sub_20E009074();
    v11 = sub_20E009544();
    if (!os_log_type_enabled(v10, v11))
    {
      goto LABEL_12;
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = "Token Storage | Token Storage requires origin name";
    goto LABEL_11;
  }

  sub_20DF9EE34(v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_20DF66E28(v4, &qword_27C852A60, &unk_20E00EBE0);
    if (qword_27C852068 != -1)
    {
      swift_once();
    }

    v9 = sub_20E009094();
    __swift_project_value_buffer(v9, qword_27C862698);
    v10 = sub_20E009074();
    v11 = sub_20E009544();
    if (!os_log_type_enabled(v10, v11))
    {
      goto LABEL_12;
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = "Token Storage | Unable to retrieve serviceProxy configuration required for token lookup key";
LABEL_11:
    _os_log_impl(&dword_20DF62000, v10, v11, v13, v12, 2u);
    MEMORY[0x20F32B3A0](v12, -1, -1);
LABEL_12:

    return 0;
  }

  sub_20DF85D48(v4, v8);
  v16 = *(v8 + 34);
  v23 = *(v8 + 33);
  v24 = v16;

  MEMORY[0x20F32A4B0](95, 0xE100000000000000);
  v18 = v23;
  v17 = v24;
  v23 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852460, &qword_20E00B2C0);
  sub_20DFC4DDC(&qword_27C852F10, &qword_27C852460, &qword_20E00B2C0, MEMORY[0x277D83958]);
  v19 = sub_20E0091A4();
  v21 = v20;
  v23 = v18;
  v24 = v17;

  MEMORY[0x20F32A4B0](v19, v21);

  v22 = v23;
  sub_20DF85E5C(v8);
  return v22;
}

uint64_t sub_20DFC4408(uint64_t a1)
{
  if (!a1)
  {
    if (qword_27C852068 != -1)
    {
      swift_once();
    }

    v10 = sub_20E009094();
    __swift_project_value_buffer(v10, qword_27C862698);
    v11 = sub_20E009074();
    v12 = sub_20E009544();
    if (!os_log_type_enabled(v11, v12))
    {
      goto LABEL_25;
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = "Token Storage requires origin name";
    goto LABEL_24;
  }

  sub_20DFC40A0(a1);
  if (!v1)
  {
    if (qword_27C852068 != -1)
    {
      swift_once();
    }

    v16 = sub_20E009094();
    __swift_project_value_buffer(v16, qword_27C862698);
    v17 = sub_20E009074();
    v18 = sub_20E009544();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_20DF62000, v17, v18, "Token Storage | Unable generate token save key", v19, 2u);
      MEMORY[0x20F32B3A0](v19, -1, -1);
    }

    v11 = sub_20E009074();
    v12 = sub_20E009544();
    if (!os_log_type_enabled(v11, v12))
    {
      goto LABEL_25;
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = "Token Storage | unable to retrieve key from storage.";
    goto LABEL_24;
  }

  v2 = sub_20E0091C4();

  v3 = sub_20E0091C4();
  v4 = CFPreferencesCopyAppValue(v2, v3);

  if (!v4 || (swift_dynamicCast() & 1) == 0)
  {
    if (qword_27C852068 != -1)
    {
      swift_once();
    }

    v15 = sub_20E009094();
    __swift_project_value_buffer(v15, qword_27C862698);
    v11 = sub_20E009074();
    v12 = sub_20E009544();
    if (!os_log_type_enabled(v11, v12))
    {
      goto LABEL_25;
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = "Token Storage | no key found in storage";
LABEL_24:
    _os_log_impl(&dword_20DF62000, v11, v12, v14, v13, 2u);
    MEMORY[0x20F32B3A0](v13, -1, -1);
LABEL_25:

    return 0;
  }

  if (qword_27C852068 != -1)
  {
    swift_once();
  }

  v5 = sub_20E009094();
  __swift_project_value_buffer(v5, qword_27C862698);
  v6 = sub_20E009074();
  v7 = sub_20E009554();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_20DF62000, v6, v7, "Token Storage | returning stored key", v8, 2u);
    MEMORY[0x20F32B3A0](v8, -1, -1);
  }

  return v20;
}

void sub_20DFC47D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_27C852068 != -1)
  {
    swift_once();
  }

  v6 = sub_20E009094();
  __swift_project_value_buffer(v6, qword_27C862698);
  v7 = sub_20E009074();
  v8 = sub_20E009554();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_20DF62000, v7, v8, "Token Storage | Initiating storing token in storage", v9, 2u);
    MEMORY[0x20F32B3A0](v9, -1, -1);
  }

  v10 = sub_20DFC40A0(a1);
  if (v11)
  {
    v12 = v10;
    v13 = v11;
    v20[3] = MEMORY[0x277D837D0];
    v20[0] = a2;
    v20[1] = a3;

    sub_20DF9C678(v12, v13, v20, 0xD00000000000002CLL, 0x800000020E0160E0);

    sub_20DF66E28(v20, &qword_27C8521F0, &unk_20E00EC00);
  }

  else
  {
    v14 = sub_20E009074();
    v15 = sub_20E009544();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_20DF62000, v14, v15, "Token Storage | Unable generate token save key", v16, 2u);
      MEMORY[0x20F32B3A0](v16, -1, -1);
    }

    oslog = sub_20E009074();
    v17 = sub_20E009544();
    if (os_log_type_enabled(oslog, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_20DF62000, oslog, v17, "Token Storage | Unable to store token in storage.", v18, 2u);
      MEMORY[0x20F32B3A0](v18, -1, -1);
    }
  }
}

void sub_20DFC4A54(uint64_t a1)
{
  if (qword_27C852068 != -1)
  {
    swift_once();
  }

  v2 = sub_20E009094();
  __swift_project_value_buffer(v2, qword_27C862698);
  v3 = sub_20E009074();
  v4 = sub_20E009554();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_20DF62000, v3, v4, "Token Storage | Initiating removal of token from storage", v5, 2u);
    MEMORY[0x20F32B3A0](v5, -1, -1);
  }

  v6 = sub_20DFC40A0(a1);
  if (v7)
  {
    memset(v14, 0, sizeof(v14));
    sub_20DF9C678(v6, v7, v14, 0xD00000000000002CLL, 0x800000020E0160E0);
    sub_20DF66E28(v14, &qword_27C8521F0, &unk_20E00EC00);
  }

  else
  {
    v8 = sub_20E009074();
    v9 = sub_20E009544();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_20DF62000, v8, v9, "Token Storage | Unable generate token save key", v10, 2u);
      MEMORY[0x20F32B3A0](v10, -1, -1);
    }

    oslog = sub_20E009074();
    v11 = sub_20E009544();
    if (os_log_type_enabled(oslog, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_20DF62000, oslog, v11, "Token Storage | Unable to remove token from storage without lookup key.", v12, 2u);
      MEMORY[0x20F32B3A0](v12, -1, -1);
    }
  }
}

unint64_t sub_20DFC4CCC()
{
  result = qword_27C852F18;
  if (!qword_27C852F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852F18);
  }

  return result;
}

unint64_t sub_20DFC4D38()
{
  result = qword_27C852F28;
  if (!qword_27C852F28)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27C852F28);
  }

  return result;
}

unint64_t sub_20DFC4D84()
{
  result = qword_27C852F30;
  if (!qword_27C852F30)
  {
    sub_20E009564();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852F30);
  }

  return result;
}

uint64_t sub_20DFC4DDC(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_20DFC4EB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 64) + **(a4 + 64));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_20DF6BA84;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_20DFC4FE4@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_20E0088D4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = qword_28252D320;
  v8 = off_28252D328;
  if (byte_28252D318 > 1u)
  {
    if (byte_28252D318 == 2)
    {
      v10 = 1953654115;
    }

    else
    {
      v10 = 1685025392;
    }

    v11 = 0xE400000000000000;
  }

  else
  {
    if (byte_28252D318)
    {
      v10 = 7759204;
    }

    else
    {
      v10 = 0x6E7265746E496171;
    }

    if (byte_28252D318)
    {
      v11 = 0xE300000000000000;
    }

    else
    {
      v11 = 0xEA00000000006C61;
    }
  }

  v12 = 1953654115;
  if (a1 != 2)
  {
    v12 = 1685025392;
  }

  v13 = 0xE300000000000000;
  v14 = 7759204;
  if (!a1)
  {
    v14 = 0x6E7265746E496171;
    v13 = 0xEA00000000006C61;
  }

  if (a1 <= 1u)
  {
    v15 = v14;
  }

  else
  {
    v15 = v12;
  }

  if (a1 <= 1u)
  {
    v16 = v13;
  }

  else
  {
    v16 = 0xE400000000000000;
  }

  if (v10 == v15 && v11 == v16)
  {
    goto LABEL_24;
  }

  v17 = a2;
  v18 = sub_20E009984();

  if (v18)
  {
    goto LABEL_26;
  }

  if (byte_28252D330 > 1u)
  {
    v21 = 0xE400000000000000;
    if (byte_28252D330 == 2)
    {
      v20 = 1953654115;
    }

    else
    {
      v20 = 1685025392;
    }
  }

  else
  {
    if (byte_28252D330)
    {
      v20 = 7759204;
    }

    else
    {
      v20 = 0x6E7265746E496171;
    }

    if (byte_28252D330)
    {
      v21 = 0xE300000000000000;
    }

    else
    {
      v21 = 0xEA00000000006C61;
    }
  }

  v9 = qword_28252D338;
  v8 = off_28252D340;
  if (a1 > 1u)
  {
    v23 = 0xE400000000000000;
    if (a1 == 2)
    {
      if (v20 != 1953654115)
      {
        goto LABEL_51;
      }
    }

    else if (v20 != 1685025392)
    {
      goto LABEL_51;
    }
  }

  else
  {
    if (a1)
    {
      v22 = 7759204;
    }

    else
    {
      v22 = 0x6E7265746E496171;
    }

    if (a1)
    {
      v23 = 0xE300000000000000;
    }

    else
    {
      v23 = 0xEA00000000006C61;
    }

    if (v20 != v22)
    {
      goto LABEL_51;
    }
  }

  if (v21 == v23)
  {
LABEL_24:

LABEL_26:
    sub_20E0088C4();
    sub_20E0088B4();

    MEMORY[0x20F329A30](v9, v8);
    MEMORY[0x20F329A50](0xD000000000000011, 0x800000020E016C90);
    sub_20E008844();

    return (*(v5 + 8))(v7, v4);
  }

LABEL_51:
  v24 = sub_20E009984();

  if (v24)
  {
    goto LABEL_26;
  }

  if (byte_28252D348 > 1u)
  {
    v26 = 0xE400000000000000;
    if (byte_28252D348 == 2)
    {
      v25 = 1953654115;
    }

    else
    {
      v25 = 1685025392;
    }
  }

  else
  {
    if (byte_28252D348)
    {
      v25 = 7759204;
    }

    else
    {
      v25 = 0x6E7265746E496171;
    }

    if (byte_28252D348)
    {
      v26 = 0xE300000000000000;
    }

    else
    {
      v26 = 0xEA00000000006C61;
    }
  }

  v9 = qword_28252D350;
  v8 = off_28252D358;
  if (a1 > 1u)
  {
    v28 = 0xE400000000000000;
    if (a1 == 2)
    {
      v27 = 1953654115;
    }

    else
    {
      v27 = 1685025392;
    }
  }

  else
  {
    if (a1)
    {
      v27 = 7759204;
    }

    else
    {
      v27 = 0x6E7265746E496171;
    }

    if (a1)
    {
      v28 = 0xE300000000000000;
    }

    else
    {
      v28 = 0xEA00000000006C61;
    }
  }

  if (v25 == v27 && v26 == v28)
  {
    goto LABEL_24;
  }

  v29 = sub_20E009984();

  if (v29)
  {
    goto LABEL_26;
  }

  swift_arrayDestroy();
  v30 = sub_20E008AF4();
  v31 = *(*(v30 - 8) + 56);

  return v31(v17, 1, 1, v30);
}

uint64_t sub_20DFC5508(uint64_t a1, int a2)
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

uint64_t sub_20DFC5550(uint64_t result, int a2, int a3)
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

uint64_t sub_20DFC55B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[31] = a6;
  v7[32] = a7;
  v7[29] = a4;
  v7[30] = a5;
  v7[27] = a2;
  v7[28] = a3;
  v7[26] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8520C8, &qword_20E010830);
  v7[33] = swift_task_alloc();
  v9 = sub_20E008714();
  v7[34] = v9;
  v7[35] = *(v9 - 8);
  v7[36] = swift_task_alloc();
  v10 = swift_task_alloc();
  v7[37] = v10;
  *v10 = v7;
  v10[1] = sub_20DFC56E8;

  return sub_20DF9D6CC(a7);
}

uint64_t sub_20DFC56E8()
{

  return MEMORY[0x2822009F8](sub_20DFC57E4, 0, 0);
}

uint64_t sub_20DFC57E4()
{
  v1 = sub_20E008964();
  if (v2 & 1) != 0 || (v3 = v1, v4 = sub_20E008974(), (v5) || (v6 = v4, v7 = sub_20E008954(), (v8))
  {
    if (qword_27C8520A0 != -1)
    {
      swift_once();
    }

    v9 = sub_20E009094();
    __swift_project_value_buffer(v9, qword_27C862740);
    v10 = sub_20E009074();
    v11 = sub_20E009544();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_20DF62000, v10, v11, "Unable to compute start date. Check DateComponents.", v12, 2u);
      MEMORY[0x20F32B3A0](v12, -1, -1);
    }

    type metadata accessor for NetworkError(0);
    sub_20DF960FC();
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v13 = v0[1];

    return v13();
  }

  else
  {
    v15 = v7;
    v17 = v0[29];
    v16 = v0[30];
    v19 = v0[27];
    v18 = v0[28];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8520D8, &unk_20E00FE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_20E00E010;
    *(inited + 32) = 0x497974696C697475;
    *(inited + 40) = 0xE900000000000064;
    *(inited + 48) = v19;
    *(inited + 56) = v18;
    *(inited + 64) = 0x7250666669726174;
    *(inited + 72) = 0xEF6449656C69666FLL;
    *(inited + 80) = v17;
    *(inited + 88) = v16;

    v0[38] = sub_20DF74E1C(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852140, &qword_20E011050);
    swift_arrayDestroy();
    KeyPath = swift_getKeyPath();
    v0[39] = KeyPath;
    v0[25] = v3;
    v22 = MEMORY[0x277D83B88];
    v35 = sub_20E009964();
    v36 = v23;
    MEMORY[0x20F32A4B0](45, 0xE100000000000000);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C852F48, &unk_20E0107F0);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_20E00AB50;
    v25 = MEMORY[0x277D83C10];
    *(v24 + 56) = v22;
    *(v24 + 64) = v25;
    *(v24 + 32) = v6;
    v26 = sub_20E009204();
    MEMORY[0x20F32A4B0](v26);

    MEMORY[0x20F32A4B0](45, 0xE100000000000000);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_20E00AB50;
    *(v27 + 56) = v22;
    *(v27 + 64) = v25;
    *(v27 + 32) = v15;
    v28 = sub_20E009204();
    MEMORY[0x20F32A4B0](v28);

    v0[40] = v36;
    v29 = swift_task_alloc();
    v0[41] = v29;
    *v29 = v0;
    v29[1] = sub_20DFC5C14;
    v30 = v0[33];
    v31 = v0[29];
    v32 = v0[30];
    v33 = v0[27];
    v34 = v0[28];

    return sub_20DF85FF0(v30, v33, v34, v31, v32, v35, v36, KeyPath);
  }
}

uint64_t sub_20DFC5C14()
{

  return MEMORY[0x2822009F8](sub_20DFC5D6C, 0, 0);
}

uint64_t sub_20DFC5D6C()
{
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[33];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_20DF8B6B4(v3);
    if (qword_27C8520A0 != -1)
    {
      swift_once();
    }

    v4 = sub_20E009094();
    __swift_project_value_buffer(v4, qword_27C862740);
    v5 = sub_20E009074();
    v6 = sub_20E009544();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_20DF62000, v5, v6, "Unable to generate request URL for utility rate peaks.", v7, 2u);
      MEMORY[0x20F32B3A0](v7, -1, -1);
    }

    type metadata accessor for NetworkError(0);
    sub_20DF960FC();
    swift_allocError();
    *v8 = 0;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v9 = v0[1];

    return v9();
  }

  else
  {
    (*(v2 + 32))(v0[36], v3, v1);
    sub_20DFDF8DC(0xD00000000000002ALL, 0x800000020E016CB0, 0xD000000000000025, 0x800000020E016CE0);
    v11 = swift_task_alloc();
    v0[42] = v11;
    *v11 = v0;
    v11[1] = sub_20DFC5FF8;
    v12 = v0[36];

    return MEMORY[0x28211ECF8](v12, 0);
  }
}

uint64_t sub_20DFC5FF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[43] = a1;
  v5[44] = a2;
  v5[45] = a3;
  v5[46] = v3;

  if (v3)
  {
    v6 = sub_20DFC6CB4;
  }

  else
  {
    v6 = sub_20DFC6110;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_20DFC6110()
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (!v1)
  {
    if (qword_27C8520A0 != -1)
    {
      swift_once();
    }

    v9 = sub_20E009094();
    __swift_project_value_buffer(v9, qword_27C862740);
    v10 = sub_20E009074();
    v11 = sub_20E009544();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_20DF62000, v10, v11, "Unable to process Utility Rate Peaks Response.", v12, 2u);
      MEMORY[0x20F32B3A0](v12, -1, -1);
    }

    v13 = *(v0 + 352);
    v14 = *(v0 + 360);
    v15 = *(v0 + 344);
    v17 = *(v0 + 280);
    v16 = *(v0 + 288);
    v18 = *(v0 + 272);

    type metadata accessor for NetworkError(0);
    sub_20DF960FC();
    swift_allocError();
    *v19 = 2;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_20DF67FFC(v15, v13);
    goto LABEL_51;
  }

  v2 = v1;
  v3 = *(v0 + 360);
  sub_20DFDFFF8(0xD000000000000028, 0x800000020E016D10, [v2 statusCode], &unk_28252DAF8);
  v4 = [v2 statusCode];
  if (v4 > 403)
  {
    switch(v4)
    {
      case 404:
        if (qword_27C8520A0 != -1)
        {
          swift_once();
        }

        v44 = sub_20E009094();
        __swift_project_value_buffer(v44, qword_27C862740);
        v6 = sub_20E009074();
        v45 = sub_20E009544();
        if (os_log_type_enabled(v6, v45))
        {
          v46 = swift_slowAlloc();
          *v46 = 0;
          _os_log_impl(&dword_20DF62000, v6, v45, "Tariff Identifier or Utility Identifier not found.", v46, 2u);
          MEMORY[0x20F32B3A0](v46, -1, -1);
        }

        goto LABEL_50;
      case 429:
        if (qword_27C852098 != -1)
        {
          swift_once();
        }

        v58 = sub_20E009094();
        __swift_project_value_buffer(v58, qword_27C862728);
        v6 = sub_20E009074();
        v59 = sub_20E009544();
        if (os_log_type_enabled(v6, v59))
        {
          v60 = swift_slowAlloc();
          *v60 = 0;
          _os_log_impl(&dword_20DF62000, v6, v59, "TOO MANY REQUESTS | Server rejected calls cause of too many requests being made", v60, 2u);
          MEMORY[0x20F32B3A0](v60, -1, -1);
        }

        goto LABEL_50;
      case 500:
        if (qword_27C852098 != -1)
        {
          swift_once();
        }

        v20 = sub_20E009094();
        __swift_project_value_buffer(v20, qword_27C862728);
        v21 = sub_20E009074();
        v22 = sub_20E009544();
        if (os_log_type_enabled(v21, v22))
        {
          v23 = swift_slowAlloc();
          *v23 = 0;
          _os_log_impl(&dword_20DF62000, v21, v22, "Internal Server Error", v23, 2u);
          MEMORY[0x20F32B3A0](v23, -1, -1);
        }

        v25 = *(v0 + 352);
        v24 = *(v0 + 360);
        v26 = *(v0 + 344);
        v27 = *(v0 + 280);
        v77 = *(v0 + 272);
        v79 = *(v0 + 288);

        type metadata accessor for NetworkError(0);
        sub_20DF960FC();
        swift_allocError();
        *v28 = [v2 statusCode];
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        sub_20DF67FFC(v26, v25);

        (*(v27 + 8))(v79, v77);
        goto LABEL_52;
    }

    goto LABEL_37;
  }

  if (v4 != 200)
  {
    if (v4 == 400)
    {
      if (qword_27C8520A0 != -1)
      {
        swift_once();
      }

      v55 = sub_20E009094();
      __swift_project_value_buffer(v55, qword_27C862740);
      v6 = sub_20E009074();
      v56 = sub_20E009544();
      if (os_log_type_enabled(v6, v56))
      {
        v57 = swift_slowAlloc();
        *v57 = 0;
        _os_log_impl(&dword_20DF62000, v6, v56, "BAD REQUEST | Check request", v57, 2u);
        MEMORY[0x20F32B3A0](v57, -1, -1);
      }

      goto LABEL_50;
    }

    if (v4 == 401)
    {
      if (qword_27C8520A0 != -1)
      {
        swift_once();
      }

      v5 = sub_20E009094();
      __swift_project_value_buffer(v5, qword_27C862740);
      v6 = sub_20E009074();
      v7 = sub_20E009544();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&dword_20DF62000, v6, v7, "Request Unauthorized or Access Token Expired.", v8, 2u);
        MEMORY[0x20F32B3A0](v8, -1, -1);
      }

LABEL_50:
      v61 = *(v0 + 352);
      v14 = *(v0 + 360);
      v62 = *(v0 + 344);
      v17 = *(v0 + 280);
      v16 = *(v0 + 288);
      v18 = *(v0 + 272);

      type metadata accessor for NetworkError(0);
      sub_20DF960FC();
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      sub_20DF67FFC(v62, v61);

LABEL_51:
      (*(v17 + 8))(v16, v18);
LABEL_52:

      v63 = *(v0 + 8);
      goto LABEL_53;
    }

LABEL_37:
    if (qword_27C852098 != -1)
    {
      swift_once();
    }

    v47 = *(v0 + 360);
    v48 = sub_20E009094();
    __swift_project_value_buffer(v48, qword_27C862728);
    v49 = v47;
    v50 = sub_20E009074();
    v51 = sub_20E009544();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = *(v0 + 360);
      v53 = swift_slowAlloc();
      *v53 = 134217984;
      *(v53 + 4) = [v2 statusCode];

      _os_log_impl(&dword_20DF62000, v50, v51, "Request failed : Status Code %ld", v53, 0xCu);
      MEMORY[0x20F32B3A0](v53, -1, -1);
      v54 = *(v0 + 360);
    }

    else
    {

      v54 = *(v0 + 360);
      v50 = v54;
    }

    v66 = *(v0 + 344);
    v65 = *(v0 + 352);
    v67 = *(v0 + 280);
    v78 = *(v0 + 272);
    v80 = *(v0 + 288);

    type metadata accessor for NetworkError(0);
    sub_20DF960FC();
    swift_allocError();
    *v68 = [v2 statusCode];
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_20DF67FFC(v66, v65);

    (*(v67 + 8))(v80, v78);
    goto LABEL_52;
  }

  if (qword_27C8520A0 != -1)
  {
    swift_once();
  }

  v29 = sub_20E009094();
  __swift_project_value_buffer(v29, qword_27C862740);
  v30 = sub_20E009074();
  v31 = sub_20E009554();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_20DF62000, v30, v31, "Utility Rate Peaks Response received.", v32, 2u);
    MEMORY[0x20F32B3A0](v32, -1, -1);
  }

  v33 = *(v0 + 368);

  sub_20E008744();
  swift_allocObject();
  sub_20E008734();
  sub_20DFC6D3C();
  sub_20E008724();
  if (v33)
  {
    v34 = v33;

    v35 = sub_20E009074();
    v36 = sub_20E009544();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_20DF62000, v35, v36, "Error while decoding response from server", v37, 2u);
      MEMORY[0x20F32B3A0](v37, -1, -1);
    }

    v38 = *(v0 + 352);
    v39 = *(v0 + 360);
    v40 = *(v0 + 344);
    v42 = *(v0 + 280);
    v41 = *(v0 + 288);
    v43 = *(v0 + 272);

    sub_20DFFE0B0(v34);
    swift_willThrow();
    sub_20DF67FFC(v40, v38);

    (*(v42 + 8))(v41, v43);
    goto LABEL_52;
  }

  v69 = *(v0 + 352);
  v70 = *(v0 + 360);
  v71 = *(v0 + 344);
  v72 = *(v0 + 208);
  (*(*(v0 + 280) + 8))(*(v0 + 288), *(v0 + 272));

  sub_20DF67FFC(v71, v69);
  v73 = *(v0 + 128);
  *v72 = *(v0 + 112);
  *(v72 + 16) = v73;
  v74 = *(v0 + 144);
  v75 = *(v0 + 160);
  v76 = *(v0 + 176);
  *(v72 + 80) = *(v0 + 192);
  *(v72 + 48) = v75;
  *(v72 + 64) = v76;
  *(v72 + 32) = v74;

  v63 = *(v0 + 8);
LABEL_53:

  return v63();
}

uint64_t sub_20DFC6CB4()
{
  (*(v0[35] + 8))(v0[36], v0[34]);

  v1 = v0[1];

  return v1();
}

unint64_t sub_20DFC6D3C()
{
  result = qword_27C852F50;
  if (!qword_27C852F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C852F50);
  }

  return result;
}

void sub_20DFC6D90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, NSObject *a5, void *a6)
{
  v56 = a4;
  v57 = a5;
  v54 = a3;
  v55 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8522B0, &qword_20E00B1F0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v50 - v8;
  v10 = sub_20E008CD4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8520D0, &qword_20E00AB70);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v50 - v14;
  v16 = [objc_opt_self() sharedConnection];
  if (v16)
  {
    v17 = v16;
    v18 = [v16 isDiagnosticSubmissionAllowed];

    if (v18)
    {
      v53 = a6;
      sub_20E0086C4();
      v19 = sub_20E008AF4();
      v20 = *(v19 - 8);
      if ((*(v20 + 48))(v15, 1, v19) == 1)
      {
        sub_20DF66E28(v15, &qword_27C8520D0, &qword_20E00AB70);
LABEL_20:
        if (qword_27C8520C0 != -1)
        {
          swift_once();
        }

        v44 = sub_20E009094();
        __swift_project_value_buffer(v44, qword_27C8627A0);
        v45 = sub_20E009074();
        v46 = sub_20E009544();
        if (!os_log_type_enabled(v45, v46))
        {
          goto LABEL_25;
        }

        v47 = swift_slowAlloc();
        *v47 = 0;
        v48 = "Unable to retrieve request endpoint for utility metrics api.";
        goto LABEL_24;
      }

      v52 = sub_20DFC7404();
      v26 = v25;
      (*(v20 + 8))(v15, v19);
      if (!v26)
      {
        goto LABEL_20;
      }

      v51 = v26;
      v27 = sub_20DFE0F98();
      v29 = v28;
      v30 = HIBYTE(v28) & 0xF;
      if ((v28 & 0x2000000000000000) == 0)
      {
        v30 = v27 & 0xFFFFFFFFFFFFLL;
      }

      if (!v30)
      {

        if (qword_27C8520C0 == -1)
        {
LABEL_27:
          v49 = sub_20E009094();
          __swift_project_value_buffer(v49, qword_27C8627A0);
          v45 = sub_20E009074();
          v46 = sub_20E009544();
          if (!os_log_type_enabled(v45, v46))
          {
            goto LABEL_25;
          }

          v47 = swift_slowAlloc();
          *v47 = 0;
          v48 = "Unable to compute partner facing requestID .";
LABEL_24:
          _os_log_impl(&dword_20DF62000, v45, v46, v48, v47, 2u);
          MEMORY[0x20F32B3A0](v47, -1, -1);
LABEL_25:

          return;
        }

LABEL_32:
        swift_once();
        goto LABEL_27;
      }

      v31 = v27;
      sub_20E008C94();
      v32 = v57;
      sub_20E008BB4();
      v34 = v33;
      (*(v11 + 8))(&v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
      v35 = v34 * 1000.0;
      if (COERCE__INT64(fabs(v34 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else if (v35 > -9.22337204e18)
      {
        v50 = v31;
        if (v35 < 9.22337204e18)
        {
          v36 = v35;
          v37 = sub_20E0094C4();
          (*(*(v37 - 8) + 56))(v9, 1, 1, v37);
          (*(v11 + 16))(&v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v32, v10);
          v38 = (*(v11 + 80) + 96) & ~*(v11 + 80);
          v39 = swift_allocObject();
          *(v39 + 2) = 0;
          *(v39 + 3) = 0;
          *(v39 + 4) = v50;
          *(v39 + 5) = v29;
          v40 = v56;
          *(v39 + 6) = v54;
          *(v39 + 7) = v40;
          v41 = v51;
          *(v39 + 8) = v52;
          *(v39 + 9) = v41;
          *(v39 + 10) = v55;
          *(v39 + 11) = v36;
          (*(v11 + 32))(&v39[v38], &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
          v42 = v53;
          *&v39[(v12 + v38 + 7) & 0xFFFFFFFFFFFFFFF8] = v53;

          v43 = v42;
          sub_20DFC7A60(0, 0, v9, &unk_20E010808, v39);

          return;
        }

        goto LABEL_31;
      }

      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    if (qword_27C8520C0 != -1)
    {
      swift_once();
    }

    v21 = sub_20E009094();
    __swift_project_value_buffer(v21, qword_27C8627A0);
    v57 = sub_20E009074();
    v22 = sub_20E009544();
    if (os_log_type_enabled(v57, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_20DF62000, v57, v22, "Device Diagnostic submission is not allowed", v23, 2u);
      MEMORY[0x20F32B3A0](v23, -1, -1);
    }

    v24 = v57;
  }

  else
  {
    __break(1u);
  }
}