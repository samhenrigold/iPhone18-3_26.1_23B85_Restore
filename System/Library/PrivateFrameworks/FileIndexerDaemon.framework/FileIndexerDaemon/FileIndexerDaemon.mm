void sub_24AB70BA8(uint64_t a1, unsigned int a2)
{
  v3 = v2;
  v124 = a2;
  v130 = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF95410, &qword_24ABAD6C0);
  MEMORY[0x28223BE20](v5 - 8);
  v125 = &v112 - v6;
  v114 = sub_24ABABB1C();
  v113 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v116 = &v112 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24ABABC0C();
  v119 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v115 = &v112 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v112 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95B00, &qword_24ABAED70);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v126 = &v112 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v118 = &v112 - v16;
  v127 = sub_24ABABCBC();
  v123 = *(v127 - 8);
  v17 = MEMORY[0x28223BE20](v127);
  v121 = &v112 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v122 = &v112 - v20;
  MEMORY[0x28223BE20](v19);
  v22 = &v112 - v21;
  v23 = *(a1 + 4);
  v24 = *(a1 + 16);
  if (v23)
  {
    if ((v23 & 8) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    if (qword_27EF95308 != -1)
    {
      swift_once();
    }

    v25 = sub_24ABABD8C();
    __swift_project_value_buffer(v25, qword_27EF95FD8);
    v26 = sub_24ABABD6C();
    v27 = sub_24ABAC0FC();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_24AB6F000, v26, v27, "Using default name", v28, 2u);
      MEMORY[0x24C229EC0](v28, -1, -1);
    }

    if ((v23 & 8) != 0)
    {
LABEL_3:
      if ((v23 & 0x200) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  if (qword_27EF95308 != -1)
  {
    swift_once();
  }

  v29 = sub_24ABABD8C();
  __swift_project_value_buffer(v29, qword_27EF95FD8);
  v30 = sub_24ABABD6C();
  v31 = sub_24ABAC0FC();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_24AB6F000, v30, v31, "Using default object type", v32, 2u);
    MEMORY[0x24C229EC0](v32, -1, -1);
  }

  if ((v23 & 0x200) != 0)
  {
LABEL_4:
    if ((v23 & 0x400) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_24;
  }

LABEL_19:
  if (qword_27EF95308 != -1)
  {
    swift_once();
  }

  v33 = sub_24ABABD8C();
  __swift_project_value_buffer(v33, qword_27EF95FD8);
  v34 = sub_24ABABD6C();
  v35 = sub_24ABAC0FC();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&dword_24AB6F000, v34, v35, "Using default creation date", v36, 2u);
    MEMORY[0x24C229EC0](v36, -1, -1);
  }

  if ((v23 & 0x400) != 0)
  {
LABEL_5:
    if ((v23 & 0x8000) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_29;
  }

LABEL_24:
  if (qword_27EF95308 != -1)
  {
    swift_once();
  }

  v37 = sub_24ABABD8C();
  __swift_project_value_buffer(v37, qword_27EF95FD8);
  v38 = sub_24ABABD6C();
  v39 = sub_24ABAC0FC();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&dword_24AB6F000, v38, v39, "Using default modification date", v40, 2u);
    MEMORY[0x24C229EC0](v40, -1, -1);
  }

  if ((v23 & 0x8000) != 0)
  {
LABEL_6:
    if ((v23 & 0x2000000) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_34;
  }

LABEL_29:
  if (qword_27EF95308 != -1)
  {
    swift_once();
  }

  v41 = sub_24ABABD8C();
  __swift_project_value_buffer(v41, qword_27EF95FD8);
  v42 = sub_24ABABD6C();
  v43 = sub_24ABAC0FC();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&dword_24AB6F000, v42, v43, "Using default owner ID", v44, 2u);
    MEMORY[0x24C229EC0](v44, -1, -1);
  }

  if ((v23 & 0x2000000) != 0)
  {
LABEL_7:
    if ((v23 & 0x4000000) != 0)
    {
      goto LABEL_44;
    }

    goto LABEL_39;
  }

LABEL_34:
  if (qword_27EF95308 != -1)
  {
    swift_once();
  }

  v45 = sub_24ABABD8C();
  __swift_project_value_buffer(v45, qword_27EF95FD8);
  v46 = sub_24ABABD6C();
  v47 = sub_24ABAC0FC();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    *v48 = 0;
    _os_log_impl(&dword_24AB6F000, v46, v47, "Using default fileID", v48, 2u);
    MEMORY[0x24C229EC0](v48, -1, -1);
  }

  if ((v23 & 0x4000000) == 0)
  {
LABEL_39:
    if (qword_27EF95308 != -1)
    {
      swift_once();
    }

    v49 = sub_24ABABD8C();
    __swift_project_value_buffer(v49, qword_27EF95FD8);
    v50 = sub_24ABABD6C();
    v51 = sub_24ABAC0FC();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_24AB6F000, v50, v51, "Using default parent ID", v52, 2u);
      MEMORY[0x24C229EC0](v52, -1, -1);
    }
  }

LABEL_44:
  v117 = v12;
  v53 = v126;
  if ((v24 & 0x200) == 0)
  {
    if (qword_27EF95308 != -1)
    {
      swift_once();
    }

    v54 = sub_24ABABD8C();
    __swift_project_value_buffer(v54, qword_27EF95FD8);
    v55 = sub_24ABABD6C();
    v56 = sub_24ABAC0FC();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&dword_24AB6F000, v55, v56, "Using default logical size", v57, 2u);
      MEMORY[0x24C229EC0](v57, -1, -1);
    }
  }

  v58 = sub_24ABABF3C();
  v60 = v59;

  *(v3 + 8) = v58;
  *(v3 + 16) = v60;
  v61 = *(a1 + 32);
  v62 = sub_24ABAAED0(v61);
  if (v62 == 11)
  {
    if (qword_27EF95308 != -1)
    {
      swift_once();
    }

    v63 = sub_24ABABD8C();
    __swift_project_value_buffer(v63, qword_27EF95FD8);
    v64 = sub_24ABABD6C();
    v65 = sub_24ABAC0FC();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      *v66 = 67109120;
      *(v66 + 4) = v61;
      _os_log_impl(&dword_24AB6F000, v64, v65, "Invalid object type %u", v66, 8u);
      MEMORY[0x24C229EC0](v66, -1, -1);
    }

    v62 = 8;
  }

  *(v3 + 48) = v62;
  v67 = *(a1 + 36);
  v68 = *(a1 + 44);
  v120 = v8;
  if (v67 | v68)
  {
    sub_24ABABC8C();
  }

  else
  {
    if (qword_27EF95308 != -1)
    {
      swift_once();
    }

    v69 = sub_24ABABD8C();
    __swift_project_value_buffer(v69, qword_27EF95FD8);
    v70 = sub_24ABABD6C();
    v71 = sub_24ABAC0FC();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      *v72 = 134218240;
      *(v72 + 4) = 0;
      *(v72 + 12) = 2048;
      *(v72 + 14) = 0;
      _os_log_impl(&dword_24AB6F000, v70, v71, "Invalid creation timespec (%ld, %ld)", v72, 0x16u);
      MEMORY[0x24C229EC0](v72, -1, -1);
    }

    v22 = v122;
    sub_24ABABCAC();
  }

  v73 = type metadata accessor for FileMetadata(0);
  v74 = *(v123 + 40);
  v74(v3 + v73[9], v22, v127);
  if (*(a1 + 52) == 0)
  {
    if (qword_27EF95308 != -1)
    {
      swift_once();
    }

    v75 = sub_24ABABD8C();
    __swift_project_value_buffer(v75, qword_27EF95FD8);
    v76 = sub_24ABABD6C();
    v77 = sub_24ABAC0FC();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      *v78 = 134218240;
      *(v78 + 4) = v67;
      *(v78 + 12) = 2048;
      *(v78 + 14) = v68;
      _os_log_impl(&dword_24AB6F000, v76, v77, "Invalid modification timespec (%ld, %ld)", v78, 0x16u);
      MEMORY[0x24C229EC0](v78, -1, -1);
    }

    v79 = v122;
    sub_24ABABCAC();
    v53 = v126;
  }

  else
  {
    v79 = v121;
    sub_24ABABC8C();
  }

  v74(v3 + v73[10], v79, v127);
  v80 = *(a1 + 72);
  *v3 = v80;
  *(v3 + 24) = *(a1 + 80);
  *(v3 + v73[14]) = *(a1 + 88) / 1000000.0;
  v81 = (v3 + v73[19]);

  *v81 = 0xD000000000000023;
  v81[1] = 0x800000024ABAF7E0;
  v129 = 0;
  v82 = fpfs_fsgetpath();
  v83 = v125;
  if (v82 || (v88 = v129) == 0)
  {
    if (qword_27EF95308 != -1)
    {
      swift_once();
    }

    v84 = sub_24ABABD8C();
    __swift_project_value_buffer(v84, qword_27EF95FD8);
    v85 = sub_24ABABD6C();
    v86 = sub_24ABAC11C();
    if (!os_log_type_enabled(v85, v86))
    {
      goto LABEL_76;
    }

    v87 = swift_slowAlloc();
    *v87 = 134217984;
    *(v87 + 4) = v80;
    _os_log_impl(&dword_24AB6F000, v85, v86, "Failed to get path for %llu", v87, 0xCu);
    goto LABEL_75;
  }

  v89 = [objc_opt_self() defaultManager];
  v90 = [v89 stringWithFileSystemRepresentation:v88 length:strlen(v88)];

  v91 = sub_24ABABEBC();
  v93 = v92;

  v94 = v118;
  sub_24ABABB8C();
  v95 = v119;
  v96 = v120;
  (*(v119 + 56))(v94, 0, 1, v120);
  v97 = v73[21];
  sub_24AB779B0(v94, v3 + v97, &qword_27EF95B00, &qword_24ABAED70);
  sub_24AB778E0(v3 + v97, v53);
  if ((*(v95 + 48))(v53, 1, v96) == 1)
  {
    sub_24AB7C4A4(v53, &qword_27EF95B00, &qword_24ABAED70);
    if (qword_27EF95308 != -1)
    {
      swift_once();
    }

    v98 = sub_24ABABD8C();
    __swift_project_value_buffer(v98, qword_27EF95FD8);

    v85 = sub_24ABABD6C();
    v99 = sub_24ABAC11C();

    if (!os_log_type_enabled(v85, v99))
    {

      goto LABEL_76;
    }

    v87 = swift_slowAlloc();
    v100 = swift_slowAlloc();
    v128 = v100;
    *v87 = 136315138;
    v101 = sub_24AB760CC(v91, v93, &v128);

    *(v87 + 4) = v101;
    _os_log_impl(&dword_24AB6F000, v85, v99, "Failed to parse content URL from %s", v87, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v100);
    MEMORY[0x24C229EC0](v100, -1, -1);
LABEL_75:
    MEMORY[0x24C229EC0](v87, -1, -1);
LABEL_76:

    goto LABEL_77;
  }

  v102 = v117;
  (*(v95 + 32))(v117, v53, v96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95400, &qword_24ABAD6B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24ABAD4A0;
  v104 = *MEMORY[0x277CBE7B8];
  *(inited + 32) = *MEMORY[0x277CBE7B8];
  v105 = v104;
  sub_24AB76854(inited);
  swift_setDeallocating();
  sub_24AB7786C(inited + 32, type metadata accessor for URLResourceKey);
  v106 = v116;
  sub_24ABABB7C();

  sub_24ABABAFC();
  v107 = sub_24ABABD4C();
  v108 = *(v107 - 8);
  if ((*(v108 + 48))(v83, 1, v107) == 1)
  {
    (*(v113 + 8))(v106, v114);
    (*(v95 + 8))(v102, v96);
    sub_24AB7C4A4(v83, &unk_27EF95410, &qword_24ABAD6C0);
  }

  else
  {
    v109 = sub_24ABABD2C();
    v111 = v110;
    (*(v113 + 8))(v106, v114);
    (*(v95 + 8))(v102, v96);
    (*(v108 + 8))(v83, v107);

    *(v3 + 32) = v109;
    *(v3 + 40) = v111;
  }

LABEL_77:
  free(v129);
}

void sub_24AB7201C(uint64_t a2@<X8>)
{
  v24[1] = *MEMORY[0x277D85DE8];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95428, &qword_24ABAD6D0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v24 - v7;
  v24[0] = 0;
  v9 = FPFileMetadataCopyLastUsedDate();
  v10 = v24[0];
  if (v9)
  {
    v11 = v9;
    sub_24ABABC9C();
    v12 = v10;

    v13 = sub_24ABABCBC();
    (*(*(v13 - 8) + 56))(v6, 0, 1, v13);
  }

  else
  {
    v14 = sub_24ABABCBC();
    (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
    v15 = v10;
  }

  sub_24AB77A18(v6, v8);
  if (v10)
  {
    if (qword_27EF95308 != -1)
    {
      swift_once();
    }

    v16 = sub_24ABABD8C();
    __swift_project_value_buffer(v16, qword_27EF95FD8);
    v17 = v10;
    v18 = sub_24ABABD6C();
    v19 = sub_24ABAC11C();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      v22 = [v17 fp_prettyDescription];
      *(v20 + 4) = v22;
      *v21 = v22;
      _os_log_impl(&dword_24AB6F000, v18, v19, "failed to copy last used date: %@", v20, 0xCu);
      sub_24AB7C4A4(v21, &unk_27EF953F0, &unk_24ABAD6A0);
      MEMORY[0x24C229EC0](v21, -1, -1);
      MEMORY[0x24C229EC0](v20, -1, -1);
    }

    else
    {
    }

    sub_24AB7C4A4(v8, &qword_27EF95428, &qword_24ABAD6D0);
    v23 = sub_24ABABCBC();
    (*(*(v23 - 8) + 56))(a2, 1, 1, v23);
  }

  else
  {
    sub_24AB77A18(v8, a2);
  }
}

uint64_t sub_24AB72368@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v22 = a3;
  v5 = sub_24ABABC0C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FileMetadata(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_slowAlloc();
  sub_24ABAAC34(v12);
  sub_24ABA4B04(a2, a1, v13, v12);
  v21 = v13;
  sub_24AB70BA8(v13, a2);
  v14 = *(v9 + 84);
  if (!(*(v6 + 48))(&v12[v14], 1, v5))
  {
    (*(v6 + 16))(v8, &v12[v14], v5);
    v15 = sub_24ABABBEC();
    v17 = v16;
    (*(v6 + 8))(v8, v5);
    LOBYTE(v15) = sub_24AB77504(v15, v17);

    v12[*(v9 + 60)] = v15 & 1;
  }

  v18 = v22;
  sub_24AB7C43C(v12, v22, type metadata accessor for FileMetadata);
  (*(v10 + 56))(v18, 0, 1, v9);
  sub_24AB7786C(v12, type metadata accessor for FileMetadata);
  return MEMORY[0x24C229EC0](v21, -1, -1);
}

uint64_t sub_24AB7274C(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95428, &qword_24ABAD6D0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15 - v7;
  swift_beginAccess();
  LODWORD(a2) = fgetattrlist(a1, &unk_27EF952F0, a2, 0x362uLL, 8u);
  swift_endAccess();
  if ((a2 & 0x80000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = sub_24AB76F44(a1);
  v11 = v10;
  v12 = type metadata accessor for FileMetadata(0);
  v13 = a3 + v12[13];
  *v13 = v9;
  *(v13 + 8) = v11 & 1;
  *(a3 + v12[12]) = sub_24AB77158(a1);

  sub_24AB7201C(v8);
  sub_24AB779B0(v8, a3 + v12[11], &qword_27EF95428, &qword_24ABAD6D0);
  return 0;
}

id sub_24AB728A4(uint64_t a1, uint64_t a2)
{
  v2 = [objc_opt_self() defaultManager];
  v3 = sub_24ABABE8C();
  v4 = [v2 fileExistsAtPath_];

  return v4;
}

uint64_t sub_24AB72928()
{
  sub_24ABAC2FC();

  v0 = sub_24ABAC56C();
  MEMORY[0x24C228EB0](v0);

  MEMORY[0x24C228EB0](0x4449656C6966202CLL, 0xEA0000000000203ALL);
  v1 = sub_24ABAC56C();
  MEMORY[0x24C228EB0](v1);

  MEMORY[0x24C228EB0](0x203A736F70202CLL, 0xE700000000000000);
  v2 = sub_24ABAC56C();
  MEMORY[0x24C228EB0](v2);

  return 0x203A4449766564;
}

uint64_t sub_24AB72A64(const char *a1, void *a2, void *a3, size_t a4)
{
  result = getattrlist(a1, a2, a3, a4, 0x21u);
  if ((result & 0x80000000) != 0)
  {
    type metadata accessor for PageCookie.Error(0);
    sub_24AB77CC8(&unk_27EF95530, 255, type metadata accessor for PageCookie.Error, &unk_24ABAE074);
    swift_allocError();
    MEMORY[0x24C228D50]();
    result = sub_24ABABDAC();
    if ((result & 0x100000000) != 0)
    {
      __break(1u);
    }

    else
    {
      sub_24ABABA2C();
      sub_24ABA5504(MEMORY[0x277D84F90]);
      sub_24AB77CC8(&qword_27EF95E30, 255, MEMORY[0x277CC8658], MEMORY[0x277CC8650]);
      sub_24ABABB3C();
      swift_storeEnumTagMultiPayload();
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_24AB72BA4(uint64_t a1, uint64_t a2, void *a3, void *a4, size_t a5)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    return sub_24ABAC2EC();
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    *v8 = a1;
    v9 = a2 & 0xFFFFFFFFFFFFFFLL;
    result = getattrlist(v8, a3, a4, a5, 0x21u);
    if ((result & 0x80000000) == 0)
    {
      return result;
    }

    type metadata accessor for PageCookie.Error(0);
    sub_24AB77CC8(&unk_27EF95530, 255, type metadata accessor for PageCookie.Error, &unk_24ABAE074);
    swift_allocError();
    MEMORY[0x24C228D50]();
    result = sub_24ABABDAC();
    if ((result & 0x100000000) == 0)
    {
      v7 = result;
      sub_24ABABA2C();
      v10 = v7;
      sub_24ABA5504(MEMORY[0x277D84F90]);
      sub_24AB77CC8(&qword_27EF95E30, 255, MEMORY[0x277CC8658], MEMORY[0x277CC8650]);
      goto LABEL_10;
    }

    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a1 & 0x1000000000000000) == 0)
  {
    return sub_24ABAC2EC();
  }

  result = getattrlist(((a2 & 0xFFFFFFFFFFFFFFFLL) + 32), a3, a4, a5, 0x21u);
  if ((result & 0x80000000) == 0)
  {
    return result;
  }

  type metadata accessor for PageCookie.Error(0);
  sub_24AB77CC8(&unk_27EF95530, 255, type metadata accessor for PageCookie.Error, &unk_24ABAE074);
  swift_allocError();
  MEMORY[0x24C228D50]();
  result = sub_24ABABDAC();
  if ((result & 0x100000000) != 0)
  {
    goto LABEL_14;
  }

  v6 = result;
  sub_24ABABA2C();
  *v8 = v6;
  sub_24ABA5504(MEMORY[0x277D84F90]);
  sub_24AB77CC8(&qword_27EF95E30, 255, MEMORY[0x277CC8658], MEMORY[0x277CC8650]);
LABEL_10:
  sub_24ABABB3C();
  swift_storeEnumTagMultiPayload();
  return swift_willThrow();
}

uint64_t sub_24AB72E4C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  v19[3] = *MEMORY[0x277D85DE8];
  v19[1] = 0;
  v19[2] = 0;
  v19[0] = 0x208000200000005;

  v11 = swift_slowAlloc();
  sub_24AB72BA4(a1, a2, v19, v11, 0x14uLL);

  if (v5)
  {
    return MEMORY[0x24C229EC0](v11, -1, -1);
  }

  v14 = *(v11 + 4);
  v13 = *(v11 + 8);
  v15 = *(v11 + 12);
  result = MEMORY[0x24C229EC0](v11, -1, -1);
  if (v14 == a3)
  {
    if (v15 == a4)
    {
      if (v13 == a5)
      {
        return result;
      }

      type metadata accessor for PageCookie.Error(0);
      sub_24AB77CC8(&unk_27EF95530, 255, type metadata accessor for PageCookie.Error, &unk_24ABAE074);
      swift_allocError();
      *v16 = a5;
      v16[1] = v13;
    }

    else
    {
      type metadata accessor for PageCookie.Error(0);
      sub_24AB77CC8(&unk_27EF95530, 255, type metadata accessor for PageCookie.Error, &unk_24ABAE074);
      swift_allocError();
      *v18 = a4;
      v18[1] = v15;
    }
  }

  else
  {
    type metadata accessor for PageCookie.Error(0);
    sub_24AB77CC8(&unk_27EF95530, 255, type metadata accessor for PageCookie.Error, &unk_24ABAE074);
    swift_allocError();
    *v17 = a3;
    v17[1] = v14;
  }

  swift_storeEnumTagMultiPayload();
  return swift_willThrow();
}

uint64_t sub_24AB73120()
{
  v1 = 0x4449766564;
  v2 = 0x69746172656E6567;
  if (*v0 != 2)
  {
    v2 = 0x6E6F697469736F70;
  }

  if (*v0)
  {
    v1 = 0x4449656C6966;
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

uint64_t sub_24AB731A0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24AB77D58(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24AB731E0(uint64_t a1)
{
  v2 = sub_24AB7C3E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24AB7321C(uint64_t a1)
{
  v2 = sub_24AB7C3E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24AB73258(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[0] = a5;
  v12[1] = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95670, &qword_24ABAE330);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24AB7C3E8();
  sub_24ABAC67C();
  v16 = 0;
  sub_24ABAC53C();
  if (v5)
  {
    return (*(v8 + 8))(v10, v7);
  }

  v15 = 1;
  sub_24ABAC55C();
  v14 = 2;
  sub_24ABAC54C();
  v13 = 3;
  sub_24ABAC51C();
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_24AB73480@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_24AB77EBC(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
    *(a1 + 24) = v7;
  }

  return result;
}

uint64_t sub_24AB734E0(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF954D0, &qword_24ABAD718);
  v29 = *(v4 - 8);
  v30 = v4;
  MEMORY[0x28223BE20](v4);
  v28 = &v24 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF954D8, &qword_24ABAD720);
  v32 = *(v6 - 8);
  v33 = v6;
  MEMORY[0x28223BE20](v6);
  v31 = &v24 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF954E0, &qword_24ABAD728);
  v26 = *(v8 - 8);
  v27 = v8;
  MEMORY[0x28223BE20](v8);
  v25 = &v24 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF954E8, &qword_24ABAD730);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v24 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24AB787E4();
  sub_24ABAC67C();
  v15 = *v2;
  v14 = v2[1];
  v17 = v2[2];
  v16 = v2[3];
  if (v2[4])
  {
    if (v17 | v14 | v15 | v16)
    {
      LOBYTE(v34) = 2;
      sub_24AB78838();
      v18 = v28;
      sub_24ABAC4DC();
      v20 = v29;
      v19 = v30;
    }

    else
    {
      LOBYTE(v34) = 0;
      sub_24AB78934();
      v18 = v25;
      sub_24ABAC4DC();
      v20 = v26;
      v19 = v27;
    }

    (*(v20 + 8))(v18, v19);
    return (*(v11 + 8))(v13, v10);
  }

  else
  {
    LOBYTE(v34) = 1;
    sub_24AB7888C();
    v21 = v31;
    sub_24ABAC4DC();
    v34 = v15;
    v35 = v14;
    v36 = v17;
    v37 = v16;
    sub_24AB78988();
    v22 = v33;
    sub_24ABAC52C();
    (*(v32 + 8))(v21, v22);
    return (*(v11 + 8))(v13, v10);
  }
}

uint64_t sub_24AB738DC()
{
  v1 = 0x676E697473696CLL;
  if (*v0 != 1)
  {
    v1 = 0x6574656C706D6F63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x676E69646E6570;
  }
}

uint64_t sub_24AB7393C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24AB780A8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24AB73970(uint64_t a1)
{
  v2 = sub_24AB787E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24AB739AC(uint64_t a1)
{
  v2 = sub_24AB787E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24AB739F4(uint64_t a1)
{
  v2 = sub_24AB78838();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24AB73A30(uint64_t a1)
{
  v2 = sub_24AB78838();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24AB73A74()
{
  sub_24ABAC62C();
  MEMORY[0x24C2295C0](0);
  return sub_24ABAC64C();
}

uint64_t sub_24AB73AE0(uint64_t a1)
{
  sub_24ABAC62C();
  MEMORY[0x24C2295C0](0);
  return sub_24ABAC64C();
}

uint64_t sub_24AB73B30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1701273968 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24ABAC58C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24AB73BC4(uint64_t a1)
{
  v2 = sub_24AB7888C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24AB73C00(uint64_t a1)
{
  v2 = sub_24AB7888C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24AB73C3C@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_24AB73C6C(uint64_t a1)
{
  v2 = sub_24AB78934();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24AB73CA8(uint64_t a1)
{
  v2 = sub_24AB78934();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24AB73CE4()
{
  if (*(v0 + 32) == 1)
  {
    if ((*v0 | *(v0 + 16)) == 0)
    {
      return 0x676E69646E6570;
    }

    else
    {
      return 0x6574656C706D6F63;
    }
  }

  else
  {
    v2 = sub_24AB72928();
    MEMORY[0x24C228EB0](v2);

    MEMORY[0x24C228EB0](41, 0xE100000000000000);
    return 0x676E697473696C2ELL;
  }
}

BOOL sub_24AB73DAC(uint64_t a1, int8x16_t *a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v8 = a2[2].i8[0];
  return sub_24AB76EA4(v5, v7);
}

double sub_24AB73DF8@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_24AB781C8(a2, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  return result;
}

uint64_t sub_24AB73E58()
{
  MEMORY[0x24C228EB0](*(v0 + 16), *(v0 + 24));
  MEMORY[0x24C228EB0](0x7375746174732027, 0xEA0000000000203ALL);
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 56);
  if (*(v0 + 64) == 1)
  {
    v4 = (v1 | *(v0 + 48) | v2 | v3) == 0;
    if (v1 | *(v0 + 48) | v2 | v3)
    {
      v5 = 0x6574656C706D6F63;
    }

    else
    {
      v5 = 0x676E69646E6570;
    }

    if (v4)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xE900000000000064;
    }
  }

  else
  {
    v7 = sub_24AB72928();
    MEMORY[0x24C228EB0](v7);

    MEMORY[0x24C228EB0](41, 0xE100000000000000);
    v5 = 0x676E697473696C2ELL;
    v6 = 0xE900000000000028;
  }

  MEMORY[0x24C228EB0](v5, v6);

  return 39;
}

uint64_t sub_24AB73F7C(uint64_t a1)
{
  v3 = v1;
  v35 = *MEMORY[0x277D85DE8];
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v31 = *(a1 + 24);
  v8 = sub_24ABABA2C();
  v9 = MEMORY[0x28223BE20](v8);
  v12 = &v32[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v1 + 40);
  v14 = v1 + 40;
  v13 = v15;
  v16 = *(v14 - 8);
  v17 = *(v14 + 8);
  v18 = *(v14 + 16);
  if (*(v14 + 24) == 1)
  {
    if (v17 | v13 | v16 | v18)
    {
      return MEMORY[0x277D84F90];
    }

    v23 = *(v3 + 16);
    v22 = *(v3 + 24);
    if (*(a1 + 32))
    {
      v32[1] = 0;
      v32[2] = 0;
      v32[0] = 0x208000200000005;

      v24 = swift_slowAlloc();
      sub_24AB72BA4(v23, v22, v32, v24, 0x14uLL);

      if (v2)
      {
        return MEMORY[0x24C229EC0](v24, -1, -1);
      }

      v5 = *(v24 + 4);
      v7 = *(v24 + 8);
      v6 = *(v24 + 12);
      MEMORY[0x24C229EC0](v24, -1, -1);
      v29 = 0;
      goto LABEL_19;
    }

    result = sub_24AB72E4C(*(v3 + 16), *(v3 + 24), v5, v6, v7);
    if (!v2)
    {
      v29 = v31;
LABEL_19:
      *(v3 + 32) = v5;
      *(v3 + 40) = v6;
      *(v3 + 48) = v7;
      *(v3 + 56) = v29;
      *(v3 + 64) = 0;
      memset(v33, 0, sizeof(v33));
      v34 = 1;
      return sub_24AB73F7C(v33);
    }
  }

  else
  {
    v20 = v10;
    v21 = v9;
    result = sub_24AB72E4C(*(v3 + 16), *(v3 + 24), v16, v13, v17);
    if (!v2)
    {
      sub_24ABABECC();
      v25 = sub_24ABABDBC();

      if ((v25 & 0x80000000) != 0)
      {
        MEMORY[0x24C228D50](v26);
        result = sub_24ABABDAC();
        if ((result & 0x100000000) != 0)
        {
          __break(1u);
        }

        else
        {
          LODWORD(v32[0]) = result;
          sub_24ABA5504(MEMORY[0x277D84F90]);
          sub_24AB77CC8(&qword_27EF95E30, 255, MEMORY[0x277CC8658], MEMORY[0x277CC8650]);
          sub_24ABABB3C();
          sub_24ABABA1C();
          (*(v20 + 8))(v12, v21);
          return swift_willThrow();
        }
      }

      else
      {
        v27 = sub_24AB78ACC(v25, v18, *(v3 + 80), *(v3 + 72), *(v3 + 88), *(v3 + 96));
        v30 = v28;
        if (v27)
        {
          *(v3 + 32) = 1;
          *(v14 + 8) = 0;
          *(v14 + 16) = 0;
          *v14 = 0;
          *(v3 + 64) = 1;
        }

        close(v25);
        return v30;
      }
    }
  }

  return result;
}

uint64_t sub_24AB74310()
{
  v1 = *v0;
  v2 = 1752457584;
  v3 = 0x746E756F4378616DLL;
  v4 = 0x4449656369766564;
  if (v1 != 3)
  {
    v4 = 0xD000000000000014;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x737574617473;
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

uint64_t sub_24AB743A4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24AB79658(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24AB743D8(uint64_t a1)
{
  v2 = sub_24AB77B80();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24AB74414(uint64_t a1)
{
  v2 = sub_24AB77B80();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24AB74450()
{

  return MEMORY[0x2821FE8D8](v0, 104, 7);
}

uint64_t sub_24AB744B4(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95518, &unk_24ABAD740);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24AB77B80();
  sub_24ABAC67C();
  LOBYTE(v13) = 0;
  sub_24ABAC50C();
  if (!v2)
  {
    v9 = *(v3 + 64);
    v10 = *(v3 + 48);
    v13 = *(v3 + 32);
    v14 = v10;
    v15 = v9;
    v12[15] = 1;
    sub_24AB78A78();
    sub_24ABAC52C();
    LOBYTE(v13) = 2;
    sub_24ABAC51C();
    LOBYTE(v13) = 3;
    sub_24ABAC53C();
    LOBYTE(v13) = 4;
    sub_24ABAC4EC();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_24AB746B0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95438, &qword_24ABAD6D8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24AB77B80();
  sub_24ABAC66C();
  if (v2)
  {
    type metadata accessor for DirectoryLister();
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v16[0]) = 0;
    *(v1 + 16) = sub_24ABAC46C();
    *(v1 + 24) = v9;
    v18 = 1;
    sub_24AB77C20();
    sub_24ABAC48C();
    v10 = v17;
    v11 = v16[1];
    *(v1 + 32) = v16[0];
    *(v1 + 48) = v11;
    *(v1 + 64) = v10;
    LOBYTE(v16[0]) = 2;
    *(v1 + 72) = sub_24ABAC47C();
    LOBYTE(v16[0]) = 3;
    *(v1 + 80) = sub_24ABAC49C();
    LOBYTE(v16[0]) = 4;
    v13 = sub_24ABAC44C();
    v15 = v14;
    (*(v6 + 8))(v8, v5);
    *(v3 + 88) = v13;
    *(v3 + 96) = v15;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v3;
}

uint64_t sub_24AB74944@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for DirectoryLister();
  v5 = swift_allocObject();
  result = sub_24AB746B0(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_24AB749C0()
{
  if (!(*v0 >> 62))
  {
    result = *((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }

LABEL_3:
    result = sub_24AB767F0();
    if (result)
    {
      return result;
    }

    if (*v0 >> 62)
    {
      v4 = sub_24ABAC3DC();
      v3 = __OFSUB__(v4, 1);
      result = v4 - 1;
      if (!v3)
      {
        return sub_24AB76760(result);
      }
    }

    else
    {
      v2 = *((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v3 = __OFSUB__(v2, 1);
      result = v2 - 1;
      if (!v3)
      {
        return sub_24AB76760(result);
      }
    }

    __break(1u);
    return result;
  }

  result = sub_24ABAC3DC();
  if (result)
  {
    goto LABEL_3;
  }

  return result;
}

uint64_t sub_24AB74A50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = OBJC_IVAR____TtC17FileIndexerDaemon10TreeLister_directories;
  swift_beginAccess();
  v9 = *(v4 + v8);
  if (!(v9 >> 62))
  {
    result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      goto LABEL_13;
    }

LABEL_3:
    v11 = result - 1;
    if (__OFSUB__(result, 1))
    {
      __break(1u);
    }

    else if ((v9 & 0xC000000000000001) == 0)
    {
      if ((v11 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v12 = *(v9 + 8 * v11 + 32);

LABEL_8:
      v13 = *(a1 + 16);
      v14 = *(a2 + 16);
      v15 = __OFADD__(v13, v14);
      v16 = v13 + v14;
      if (!v15)
      {
        if (*(v12 + 64) == 1)
        {
LABEL_12:

          goto LABEL_13;
        }

        v17 = *(v12 + 56);
        v15 = __OFADD__(v17, v16);
        v18 = v17 + v16;
        if (!v15)
        {
          v19 = *(v12 + 48);
          *(v12 + 32) = *(v12 + 32);
          *(v12 + 48) = v19;
          *(v12 + 56) = v18;
          *(v12 + 64) = 0;
          goto LABEL_12;
        }

LABEL_26:
        __break(1u);
        return result;
      }

      goto LABEL_24;
    }

    v12 = MEMORY[0x24C229290](v11, v9);

    goto LABEL_8;
  }

  result = sub_24ABAC3DC();
  if (result)
  {
    goto LABEL_3;
  }

LABEL_13:
  v20 = *(a3 + 16);
  if (v20)
  {
    v21 = OBJC_IVAR____TtC17FileIndexerDaemon10TreeLister_deviceID;
    v22 = *(sub_24ABABC0C() - 8);
    v23 = a3 + ((*(v22 + 80) + 32) & ~*(v22 + 80));
    v24 = *(v22 + 72);
    do
    {
      v25 = sub_24ABABBEC();
      v27 = v26;
      v28 = *(v4 + v21);
      type metadata accessor for DirectoryLister();
      v29 = swift_allocObject();
      *(v29 + 16) = v25;
      *(v29 + 24) = v27;
      *(v29 + 72) = 64;
      *(v29 + 32) = 0u;
      *(v29 + 48) = 0u;
      *(v29 + 64) = 1;
      *(v29 + 80) = v28;
      *(v29 + 88) = 0;
      *(v29 + 96) = 0;
      swift_beginAccess();

      MEMORY[0x24C228F60](v30);
      if (*((*(v4 + v8) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v4 + v8) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24ABAC01C();
      }

      sub_24ABAC02C();
      swift_endAccess();

      v23 += v24;
      --v20;
    }

    while (v20);
  }

  return result;
}

uint64_t sub_24AB74CE8()
{
  v1 = *v0;
  sub_24ABAC62C();
  MEMORY[0x24C2295C0](v1);
  return sub_24ABAC64C();
}

uint64_t sub_24AB74D30(uint64_t a1)
{
  v2 = *v1;
  sub_24ABAC62C();
  MEMORY[0x24C2295C0](v2);
  return sub_24ABAC64C();
}

uint64_t sub_24AB74D74()
{
  v1 = 0x4C5255746F6F72;
  v2 = 0x726F746365726964;
  if (*v0 != 2)
  {
    v2 = 0x4449656369766564;
  }

  if (*v0)
  {
    v1 = 7107189;
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

uint64_t sub_24AB74DF0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24AB7C280(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24AB74E18(uint64_t a1)
{
  v2 = sub_24AB77C74();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24AB74E54(uint64_t a1)
{
  v2 = sub_24AB77C74();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24AB74E90()
{
  v1 = OBJC_IVAR____TtC17FileIndexerDaemon10TreeLister_rootURL;
  v2 = sub_24ABABC0C();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC17FileIndexerDaemon10TreeLister_url, v2);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v4, v5);
}

uint64_t sub_24AB74F94(uint64_t a1)
{
  result = sub_24ABABC0C();
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

uint64_t sub_24AB75040(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF954F8, &qword_24ABAD738);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24AB77C74();
  sub_24ABAC67C();
  v13[0] = 0;
  sub_24ABABC0C();
  sub_24AB77CC8(&qword_27EF95500, 255, MEMORY[0x277CC9260], MEMORY[0x277CC9268]);
  sub_24ABAC52C();
  if (!v2)
  {
    v13[0] = 1;
    sub_24ABAC52C();
    v10 = OBJC_IVAR____TtC17FileIndexerDaemon10TreeLister_directories;
    swift_beginAccess();
    v12 = *(v3 + v10);
    v11[15] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95468, &qword_24ABAD6E8);
    sub_24AB789DC(&qword_27EF95508, &qword_27EF95510, &unk_24ABAD618, MEMORY[0x277D83948]);
    sub_24ABAC52C();
    LOBYTE(v12) = 3;
    sub_24ABAC53C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t initializeBufferWithCopyOfBuffer for ListerStatus(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for ListerStatus(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 33))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ListerStatus(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 1;
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

  *(result + 33) = v3;
  return result;
}

uint64_t sub_24AB753B4(uint64_t a1)
{
  if (*(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24AB753D4(uint64_t result, int a2)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 32) = 1;
  }

  else
  {
    *(result + 32) = 0;
  }

  return result;
}

uint64_t sub_24AB75418(void *a1)
{
  v3 = sub_24ABABC0C();
  v22 = *(v3 - 8);
  v4 = MEMORY[0x28223BE20](v3);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v24 = v20 - v7;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95450, &qword_24ABAD6E0);
  v8 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v10 = v20 - v9;
  v11 = OBJC_IVAR____TtC17FileIndexerDaemon10TreeLister_directories;
  v26 = v1;
  v27 = a1;
  *(v1 + OBJC_IVAR____TtC17FileIndexerDaemon10TreeLister_directories) = MEMORY[0x277D84F90];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24AB77C74();
  v12 = v25;
  sub_24ABAC66C();
  if (v12)
  {
    v13 = v26;

    type metadata accessor for TreeLister(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v21 = v11;
    v25 = v8;
    v28 = 0;
    sub_24AB77CC8(&qword_27EF95460, 255, MEMORY[0x277CC9260], MEMORY[0x277CC9280]);
    v14 = v23;
    sub_24ABAC48C();
    v15 = *(v22 + 32);
    v13 = v26;
    v20[1] = OBJC_IVAR____TtC17FileIndexerDaemon10TreeLister_rootURL;
    v16 = v24;
    v24 = v15;
    (v15)(v26 + OBJC_IVAR____TtC17FileIndexerDaemon10TreeLister_rootURL, v16, v3);
    v28 = 1;
    sub_24ABAC48C();
    (v24)(v13 + OBJC_IVAR____TtC17FileIndexerDaemon10TreeLister_url, v6, v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95468, &qword_24ABAD6E8);
    v28 = 2;
    sub_24AB789DC(&qword_27EF95470, &qword_27EF95478, &unk_24ABAD640, MEMORY[0x277D83978]);
    sub_24ABAC48C();
    v17 = v29;
    v18 = v21;
    swift_beginAccess();
    *(v13 + v18) = v17;

    LOBYTE(v29) = 3;
    LODWORD(v18) = sub_24ABAC49C();
    (*(v25 + 8))(v10, v14);
    *(v13 + OBJC_IVAR____TtC17FileIndexerDaemon10TreeLister_deviceID) = v18;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v27);
  return v13;
}

uint64_t sub_24AB758F4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for TreeLister(0);
  v5 = swift_allocObject();
  result = sub_24AB75418(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

BOOL sub_24AB759F4(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

uint64_t sub_24AB75A4C(uint64_t a1, id *a2)
{
  result = sub_24ABABE9C();
  *a2 = 0;
  return result;
}

uint64_t sub_24AB75AC4(uint64_t a1, id *a2)
{
  v3 = sub_24ABABEAC();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_24AB75B44@<X0>(uint64_t *a2@<X8>)
{
  sub_24ABABEBC();
  v3 = sub_24ABABE8C();

  *a2 = v3;
  return result;
}

uint64_t sub_24AB75B9C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24ABABEBC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_24AB75BC8(uint64_t a1)
{
  v2 = sub_24AB77CC8(&qword_27EF956A0, 255, type metadata accessor for URLResourceKey, &unk_24ABAD9C0);
  v3 = sub_24AB77CC8(&qword_27EF956A8, 255, type metadata accessor for URLResourceKey, &unk_24ABAD960);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_24AB75C8C(uint64_t a1)
{
  v2 = sub_24AB77CC8(&qword_27EF95678, 255, type metadata accessor for NSFileProviderDomainIdentifier, &unk_24ABADFE4);
  v3 = sub_24AB77CC8(&qword_27EF95680, 255, type metadata accessor for NSFileProviderDomainIdentifier, &unk_24ABADF84);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_24AB75D50@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_24ABABE8C();

  *a2 = v3;
  return result;
}

uint64_t sub_24AB75D98(uint64_t a1)
{
  v2 = sub_24AB77CC8(&qword_27EF95690, 255, type metadata accessor for FileAttributeKey, &unk_24ABAE0B4);
  v3 = sub_24AB77CC8(&qword_27EF95698, 255, type metadata accessor for FileAttributeKey, &unk_24ABADE38);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_24AB75E5C()
{
  v0 = sub_24ABABEBC();
  v1 = MEMORY[0x24C228F30](v0);

  return v1;
}

uint64_t sub_24AB75E98(uint64_t a1)
{
  sub_24ABABEBC();
  sub_24ABABEFC();
}

uint64_t sub_24AB75EEC(uint64_t a1)
{
  sub_24ABABEBC();
  sub_24ABAC62C();
  sub_24ABABEFC();
  v1 = sub_24ABAC64C();

  return v1;
}

uint64_t sub_24AB75F60(void *a1, uint64_t *a2)
{
  v2 = sub_24ABABEBC();
  v4 = v3;
  if (v2 == sub_24ABABEBC() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_24ABAC58C();
  }

  return v7 & 1;
}

uint64_t sub_24AB75FE8(uint64_t (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

uint64_t sub_24AB76070(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_24AB760CC(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_24AB760CC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_24AB76198(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_24AB77950(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return v7;
}

unint64_t sub_24AB76198(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_24AB762A4(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_24ABAC34C();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_24AB762A4(uint64_t a1, unint64_t a2)
{
  v3 = sub_24AB762F0(a1, a2);
  sub_24AB76420(&unk_285E1BCE0);
  return v3;
}

void *sub_24AB762F0(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_24AB7650C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_24ABAC34C();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_24ABABF4C();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_24AB7650C(v10, 0);
        result = sub_24ABAC2DC();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_24AB76420(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_24AB76580(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_24AB7650C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95420, &qword_24ABAD6C8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_24AB76580(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95420, &qword_24ABAD6C8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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

uint64_t sub_24AB76674@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

void sub_24AB766A4(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(a1, a2, a3);
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_24AB76760(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_24ABA2238(v3);
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v5 - 1 - a1));
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
    return v7;
  }

  return result;
}

unint64_t sub_24AB767F0()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0)
  {
    result = sub_24ABA2238(v1);
    v1 = result;
  }

  v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3)
  {
    v4 = v3 - 1;
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v4 + 0x20);
    *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) = v4;
    *v0 = v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24AB76854(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95408, &qword_24ABAD6B8);
    v3 = sub_24ABAC2CC();
    v4 = 0;
    v5 = v3 + 56;
    v25 = v1;
    v26 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v26 + 8 * v4);
      sub_24ABABEBC();
      sub_24ABAC62C();
      v27 = v7;
      sub_24ABABEFC();
      v8 = sub_24ABAC64C();

      v10 = -1 << *(v3 + 32);
      v11 = v8 & ~v10;
      v12 = v11 >> 6;
      v13 = *(v5 + 8 * (v11 >> 6));
      v14 = 1 << v11;
      if (((1 << v11) & v13) == 0)
      {
        goto LABEL_15;
      }

      v15 = ~v10;
      do
      {
        v16 = sub_24ABABEBC();
        v18 = v17;
        if (v16 == sub_24ABABEBC() && v18 == v19)
        {

LABEL_4:
          v6 = v25;
          goto LABEL_5;
        }

        v21 = sub_24ABAC58C();

        if (v21)
        {

          goto LABEL_4;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v5 + 8 * (v11 >> 6));
        v14 = 1 << v11;
      }

      while (((1 << v11) & v13) != 0);
      v6 = v25;
LABEL_15:
      *(v5 + 8 * v12) = v14 | v13;
      *(*(v3 + 48) + 8 * v11) = v27;
      v22 = *(v3 + 16);
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v24;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_24AB76A48(uint64_t a1, uint64_t a2)
{
  v4 = sub_24ABABA2C();
  v39 = *(v4 - 8);
  v40 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v38 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v37 = &v37 - v7;
  v8 = type metadata accessor for PageCookie.Error(0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = (&v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = MEMORY[0x28223BE20](v9);
  v14 = (&v37 - v13);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = (&v37 - v16);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95688, &qword_24ABAE338);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v23 = &v37 - v22;
  v24 = &v37 + *(v21 + 56) - v22;
  sub_24AB7C43C(a1, &v37 - v22, type metadata accessor for PageCookie.Error);
  sub_24AB7C43C(a2, v24, type metadata accessor for PageCookie.Error);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_24AB7C43C(v23, v14, type metadata accessor for PageCookie.Error);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_21;
      }

      v26 = *v14 == *v24 && v14[1] == *(v24 + 1);
      goto LABEL_17;
    }

    sub_24AB7C43C(v23, v11, type metadata accessor for PageCookie.Error);
    if (swift_getEnumCaseMultiPayload() != 3)
    {
      goto LABEL_21;
    }

    v28 = *v11;
    v27 = v11[1];
LABEL_14:
    v26 = v28 == *v24 && v27 == *(v24 + 1);
LABEL_17:
    v29 = v26;
    goto LABEL_20;
  }

  if (EnumCaseMultiPayload)
  {
    sub_24AB7C43C(v23, v17, type metadata accessor for PageCookie.Error);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      goto LABEL_21;
    }

    v28 = *v17;
    v27 = v17[1];
    goto LABEL_14;
  }

  sub_24AB7C43C(v23, v19, type metadata accessor for PageCookie.Error);
  if (swift_getEnumCaseMultiPayload())
  {
    (*(v39 + 8))(v19, v40);
LABEL_21:
    sub_24AB7C4A4(v23, &qword_27EF95688, &qword_24ABAE338);
    v29 = 0;
    return v29 & 1;
  }

  v32 = v39;
  v31 = v40;
  v33 = *(v39 + 32);
  v34 = v37;
  v33(v37, v19, v40);
  v35 = v38;
  v33(v38, v24, v31);
  sub_24AB77CC8(&qword_27EF95E30, 255, MEMORY[0x277CC8658], MEMORY[0x277CC8650]);
  v29 = sub_24ABABB2C();
  v36 = *(v32 + 8);
  v36(v35, v31);
  v36(v34, v31);
LABEL_20:
  sub_24AB7786C(v23, type metadata accessor for PageCookie.Error);
  return v29 & 1;
}

BOOL sub_24AB76EA4(uint64_t *a1, int8x16_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  if (a1[4])
  {
    if (v5 | v3 | v2 | v4)
    {
      if (a2[2].i8[0])
      {
        v6 = vorrq_s8(*a2, a2[1]);
        return vorr_s8(*v6.i8, *&vextq_s8(v6, v6, 8uLL)) != 0;
      }
    }

    else if (a2[2].i8[0])
    {
      v11 = vorrq_s8(*a2, a2[1]);
      return vorr_s8(*v11.i8, *&vextq_s8(v11, v11, 8uLL)) == 0;
    }

    return 0;
  }

  if (a2[2].i8[0])
  {
    return 0;
  }

  return v2 == a2->i64[0] && v3 == a2->i64[1] && v5 == a2[1].i64[0] && v4 == a2[1].i64[1];
}

id sub_24AB76F44(uint64_t a1)
{
  v1 = FPFileMetadataCopyFavoriteRank();
  v2 = v1;
  if (!v1)
  {
    return 0;
  }

  v3 = [v1 unsignedLongLongValue];

  return v3;
}

void *sub_24AB77158(uint64_t a1)
{
  v1 = FPFileMetadataCopyTagData();
  v2 = 0;
  v3 = v2;
  if (!v1)
  {
    v4 = 0;
    if (!v2)
    {
      return v4;
    }

    v6 = 0xF000000000000000;
    goto LABEL_18;
  }

  v4 = sub_24ABABC4C();
  v6 = v5;

  if (v3)
  {
LABEL_18:
    if (qword_27EF95308 != -1)
    {
      swift_once();
    }

    v21 = sub_24ABABD8C();
    __swift_project_value_buffer(v21, qword_27EF95FD8);
    v22 = v3;
    v23 = sub_24ABABD6C();
    v24 = sub_24ABAC11C();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 138412290;
      v27 = [v22 fp_prettyDescription];
      *(v25 + 4) = v27;
      *v26 = v27;
      _os_log_impl(&dword_24AB6F000, v23, v24, "failed to copy tagData: %@", v25, 0xCu);
      sub_24AB7C4A4(v26, &unk_27EF953F0, &unk_24ABAD6A0);
      MEMORY[0x24C229EC0](v26, -1, -1);
      MEMORY[0x24C229EC0](v25, -1, -1);

      sub_24AB77A88(v4, v6);
    }

    else
    {
      sub_24AB77A88(v4, v6);
    }

    return 0;
  }

  if (v6 >> 60 == 15)
  {
    return 0;
  }

  v7 = sub_24ABABC3C();
  v8 = FPGetTagsFromTagsData();

  if (!v8)
  {
    sub_24AB77A88(v4, v6);
    return 0;
  }

  sub_24AB77AF0();
  v9 = sub_24ABABFFC();

  if (v9 >> 62)
  {
    v10 = sub_24ABAC3DC();
    if (v10)
    {
      goto LABEL_7;
    }

LABEL_28:

    sub_24AB77A88(v4, v6);
    return MEMORY[0x277D84F90];
  }

  v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v10)
  {
    goto LABEL_28;
  }

LABEL_7:
  v29 = v6;
  v30 = v4;
  v31 = MEMORY[0x277D84F90];
  sub_24ABA18BC(0, v10 & ~(v10 >> 63), 0);
  if (v10 < 0)
  {
    __break(1u);
  }

  v11 = 0;
  v4 = v31;
  do
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x24C229290](v11, v9);
    }

    else
    {
      v12 = *(v9 + 8 * v11 + 32);
    }

    v13 = v12;
    v14 = [v12 label];
    v15 = sub_24ABABEBC();
    v17 = v16;

    v19 = *(v31 + 16);
    v18 = *(v31 + 24);
    if (v19 >= v18 >> 1)
    {
      sub_24ABA18BC((v18 > 1), v19 + 1, 1);
    }

    ++v11;
    *(v31 + 16) = v19 + 1;
    v20 = v31 + 16 * v19;
    *(v20 + 32) = v15;
    *(v20 + 40) = v17;
  }

  while (v10 != v11);
  sub_24AB77A88(v30, v29);

  return v4;
}

uint64_t sub_24AB77504(uint64_t a1, uint64_t a2)
{
  v2 = sub_24ABABB1C();
  v20 = *(v2 - 8);
  v21 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24ABABB6C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95B00, &qword_24ABAED70);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v20 - v10;
  v12 = sub_24ABABC0C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 56))(v11, 1, 1, v12);
  (*(v6 + 104))(v8, *MEMORY[0x277CC91D8], v5);

  sub_24ABABBFC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95400, &qword_24ABAD6B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24ABAD4A0;
  v17 = *MEMORY[0x277CBE888];
  *(inited + 32) = *MEMORY[0x277CBE888];
  v18 = v17;
  sub_24AB76854(inited);
  swift_setDeallocating();
  sub_24AB7786C(inited + 32, type metadata accessor for URLResourceKey);
  sub_24ABABB7C();

  LOBYTE(inited) = sub_24ABABB0C();
  (*(v20 + 8))(v4, v21);
  (*(v13 + 8))(v15, v12);
  return inited & 1;
}

uint64_t sub_24AB7786C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24AB778E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95B00, &qword_24ABAED70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24AB77950(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_24AB779B0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_24AB77A18(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95428, &qword_24ABAD6D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24AB77A88(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_24AB77A9C(a1, a2);
  }

  return a1;
}

uint64_t sub_24AB77A9C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_24AB77AF0()
{
  result = qword_27EF95430;
  if (!qword_27EF95430)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EF95430);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_24AB77B80()
{
  result = qword_27EF95440;
  if (!qword_27EF95440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF95440);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

unint64_t sub_24AB77C20()
{
  result = qword_27EF95448;
  if (!qword_27EF95448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF95448);
  }

  return result;
}

unint64_t sub_24AB77C74()
{
  result = qword_27EF95458;
  if (!qword_27EF95458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF95458);
  }

  return result;
}

uint64_t sub_24AB77CC8(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_24AB77D58(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4449766564 && a2 == 0xE500000000000000;
  if (v4 || (sub_24ABAC58C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4449656C6966 && a2 == 0xE600000000000000 || (sub_24ABAC58C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x69746172656E6567 && a2 == 0xEF746E756F436E6FLL || (sub_24ABAC58C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6F697469736F70 && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_24ABAC58C();

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

uint64_t sub_24AB77EBC(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95660, &qword_24ABAE328);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24AB7C3E8();
  sub_24ABAC66C();
  v12 = 0;
  v6 = sub_24ABAC49C();
  v11 = 1;
  sub_24ABAC4BC();
  v10 = 2;
  sub_24ABAC4AC();
  v9 = 3;
  sub_24ABAC47C();
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v6;
}

uint64_t sub_24AB780A8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676E69646E6570 && a2 == 0xE700000000000000;
  if (v4 || (sub_24ABAC58C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x676E697473696CLL && a2 == 0xE700000000000000 || (sub_24ABAC58C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6574656C706D6F63 && a2 == 0xE900000000000064)
  {

    return 2;
  }

  else
  {
    v6 = sub_24ABAC58C();

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

uint64_t sub_24AB781C8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v48 = a2;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95480, &qword_24ABAD6F0);
  v50 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v49 = &v42 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95488, &qword_24ABAD6F8);
  v5 = *(v4 - 8);
  v45 = v4;
  v46 = v5;
  MEMORY[0x28223BE20](v4);
  v7 = &v42 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95490, &qword_24ABAD700);
  v44 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v42 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95498, &qword_24ABAD708);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v42 - v13;
  v15 = a1[3];
  v56 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_24AB787E4();
  v16 = v51;
  sub_24ABAC66C();
  if (v16)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(v56);
  }

  v42 = v7;
  v43 = v14;
  v18 = v49;
  v17 = v50;
  v51 = v12;
  v19 = sub_24ABAC4CC();
  v20 = *(v19 + 16);
  if (!v20 || ((v21 = *(v19 + 32), v20 == 1) ? (v22 = v21 == 3) : (v22 = 1), v22))
  {
    v23 = sub_24ABAC33C();
    swift_allocError();
    v24 = v11;
    v26 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF954A8, &qword_24ABAD710);
    *v26 = &type metadata for ListerStatus;
    v27 = v43;
    sub_24ABAC43C();
    sub_24ABAC32C();
    (*(*(v23 - 8) + 104))(v26, *MEMORY[0x277D84160], v23);
    swift_willThrow();
    (*(v51 + 8))(v27, v24);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_0Tm(v56);
  }

  if (!*(v19 + 32))
  {
    LOBYTE(v52) = 0;
    sub_24AB78934();
    v31 = v43;
    sub_24ABAC42C();
    (*(v44 + 8))(v10, v8);
    (*(v51 + 8))(v31, v11);
    swift_unknownObjectRelease();
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v40 = 0;
LABEL_15:
    v36 = 1;
    goto LABEL_16;
  }

  if (v21 != 1)
  {
    LOBYTE(v52) = 2;
    sub_24AB78838();
    v32 = v43;
    sub_24ABAC42C();
    v33 = v51;
    (*(v17 + 8))(v18, v47);
    (*(v33 + 8))(v32, v11);
    swift_unknownObjectRelease();
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v37 = 1;
    goto LABEL_15;
  }

  LOBYTE(v52) = 1;
  sub_24AB7888C();
  v28 = v42;
  v29 = v43;
  sub_24ABAC42C();
  v30 = v51;
  sub_24AB788E0();
  v35 = v45;
  sub_24ABAC48C();
  (*(v46 + 8))(v28, v35);
  (*(v30 + 8))(v29, v11);
  swift_unknownObjectRelease();
  v36 = 0;
  v37 = v52;
  v38 = v53;
  v39 = v54;
  v40 = v55;
LABEL_16:
  result = __swift_destroy_boxed_opaque_existential_0Tm(v56);
  v41 = v48;
  *v48 = v37;
  v41[1] = v38;
  v41[2] = v39;
  v41[3] = v40;
  *(v41 + 32) = v36;
  return result;
}

unint64_t sub_24AB787E4()
{
  result = qword_27EF954A0;
  if (!qword_27EF954A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF954A0);
  }

  return result;
}

unint64_t sub_24AB78838()
{
  result = qword_27EF954B0;
  if (!qword_27EF954B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF954B0);
  }

  return result;
}

unint64_t sub_24AB7888C()
{
  result = qword_27EF954B8;
  if (!qword_27EF954B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF954B8);
  }

  return result;
}

unint64_t sub_24AB788E0()
{
  result = qword_27EF954C0;
  if (!qword_27EF954C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF954C0);
  }

  return result;
}

unint64_t sub_24AB78934()
{
  result = qword_27EF954C8;
  if (!qword_27EF954C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF954C8);
  }

  return result;
}

unint64_t sub_24AB78988()
{
  result = qword_27EF954F0;
  if (!qword_27EF954F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF954F0);
  }

  return result;
}

uint64_t sub_24AB789DC(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF95468, &qword_24ABAD6E8);
    sub_24AB77CC8(a2, v8, type metadata accessor for DirectoryLister, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24AB78A78()
{
  result = qword_27EF95520;
  if (!qword_27EF95520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF95520);
  }

  return result;
}

uint64_t sub_24AB78ACC(uint64_t a1, uint64_t a2, unsigned int a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v87 = a5;
  v88 = a6;
  v86 = a3;
  v8 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95B00, &qword_24ABAED70);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v71 - v10;
  v12 = sub_24ABABC0C();
  v13 = *(v12 - 1);
  MEMORY[0x28223BE20](v12);
  v77 = &v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95428, &qword_24ABAD6D0);
  MEMORY[0x28223BE20](v15 - 8);
  v85 = &v71 - v16;
  v78 = type metadata accessor for FileMetadata(0);
  v84 = *(v78 - 8);
  v17 = MEMORY[0x28223BE20](v78);
  v91 = (&v71 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v17);
  v20 = &v71 - v19;
  v21 = sub_24ABABA2C();
  v72 = *(v21 - 8);
  v22 = MEMORY[0x28223BE20](v21);
  v23 = MEMORY[0x28223BE20](v22);
  v73 = &v71 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v28 = &v71 - v27;
  v29 = 866 * a4;
  if ((a4 * 866) >> 64 == (866 * a4) >> 63)
  {
    v82 = v12;
    v83 = v11;
    v71 = v26;
    v74 = v25;
    v12 = swift_slowAlloc();
    a4 = &unk_27EF952F0;
    swift_beginAccess();
    v11 = 0;
    do
    {
      v30 = __OFSUB__(a2, v11);
      a2 -= v11;
      if (v30)
      {
        __break(1u);
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      v31 = getattrlistbulk(v8, &unk_27EF952F0, v12, v29, 8uLL);
      if (v31 < 0)
      {
        v54 = swift_endAccess();
        if (MEMORY[0x24C228D50](v54) == 4 || MEMORY[0x24C228D50]() == 35)
        {
          v93 = MEMORY[0x277D84F90];
          LOBYTE(v28) = 1;
          goto LABEL_34;
        }

        MEMORY[0x24C228D50]();
        result = sub_24ABABDAC();
        if ((result & 0x100000000) == 0)
        {
          LODWORD(v92[0]) = result;
          sub_24ABA5504(MEMORY[0x277D84F90]);
          sub_24AB77CC8(&qword_27EF95E30, 255, MEMORY[0x277CC8658], MEMORY[0x277CC8650]);
          v69 = v74;
          sub_24ABABB3C();
          sub_24ABABA1C();
          (*(v72 + 8))(v28, v69);
          swift_willThrow();
          goto LABEL_34;
        }

LABEL_46:
        __break(1u);
        return result;
      }

      v11 = v31;
      if (!v31)
      {
        swift_endAccess();
        v93 = MEMORY[0x277D84F90];
        LOBYTE(v28) = 1;
        goto LABEL_34;
      }
    }

    while (a2 >= v31);
    swift_endAccess();
    v32 = v11 - a2;
    if (__OFSUB__(v11, a2))
    {
      goto LABEL_42;
    }

    v33 = v12;
    if (a2 >= 1)
    {
      v34 = a2 + 1;
      v33 = v12;
      do
      {
        v33 = (v33 + *v33);
        --v34;
      }

      while (v34 > 1);
    }

    if ((v32 & 0x8000000000000000) == 0)
    {
      if (!v32)
      {
        LOBYTE(v28) = 0;
        v93 = MEMORY[0x277D84F90];
        goto LABEL_34;
      }

      v11 = 0;
      v79 = (v13 + 48);
      v75 = (v13 + 8);
      v76 = (v13 + 32);
      v93 = MEMORY[0x277D84F90];
      v35 = v78;
      v80 = v32;
      v81 = v12;
      while (!__OFADD__(v11, 1))
      {
        v90 = v11 + 1;
        v89 = *v33;
        sub_24ABAAC34(v20);
        sub_24AB70BA8(v33, v86);
        v36 = &v20[v35[19]];
        v37 = v88;
        *v36 = v87;
        v36[1] = v37;

        a4 = *(v20 + 1);
        v12 = *(v20 + 2);
        sub_24ABABECC();
        v29 = sub_24ABABDDC();

        if ((v29 & 0x80000000) != 0)
        {
          MEMORY[0x24C228D50](v38);
          result = sub_24ABABDAC();
          if ((result & 0x100000000) != 0)
          {
            __break(1u);
            goto LABEL_46;
          }

          v56 = result;

          LODWORD(v92[0]) = v56;
          sub_24ABA5504(MEMORY[0x277D84F90]);
          sub_24AB77CC8(&qword_27EF95E30, 255, MEMORY[0x277CC8658], MEMORY[0x277CC8650]);
          v29 = v73;
          v11 = v74;
          sub_24ABABB3C();
          if (qword_27EF95308 != -1)
          {
            goto LABEL_44;
          }

          goto LABEL_32;
        }

        v39 = sub_24AB76F44(v29);
        v40 = &v20[v35[13]];
        *v40 = v39;
        v40[8] = v41 & 1;
        v42 = sub_24AB77158(v29);
        v43 = v35[12];

        *&v20[v43] = v42;
        v44 = v85;
        sub_24AB7201C(v85);
        sub_24AB779B0(v44, &v20[v35[11]], &qword_27EF95428, &qword_24ABAD6D0);
        v45 = v83;
        sub_24AB778E0(&v20[v35[21]], v83);
        v46 = v82;
        if ((*v79)(v45, 1, v82) == 1)
        {
          sub_24AB7C4A4(v45, &qword_27EF95B00, &qword_24ABAED70);
          v20[v35[15]] = 0;
        }

        else
        {
          v47 = v77;
          (*v76)(v77, v45, v46);
          v48 = sub_24ABABBEC();
          v50 = sub_24AB77504(v48, v49);

          v51 = v47;
          v35 = v78;
          (*v75)(v51, v46);
          v20[v35[15]] = v50 & 1;
        }

        v12 = v81;
        sub_24AB7C43C(v20, v91, type metadata accessor for FileMetadata);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v93 = sub_24ABA13B8(0, v93[2] + 1, 1, v93);
        }

        a4 = v93[2];
        v52 = v93[3];
        if (a4 >= v52 >> 1)
        {
          v93 = sub_24ABA13B8((v52 > 1), a4 + 1, 1, v93);
        }

        v53 = v93;
        v93[2] = a4 + 1;
        sub_24AB795F4(v91, v53 + ((*(v84 + 80) + 32) & ~*(v84 + 80)) + *(v84 + 72) * a4);
        v33 = (v33 + v89);
        close(v29);
        sub_24AB7786C(v20, type metadata accessor for FileMetadata);
        ++v11;
        if (v90 == v80)
        {
          LOBYTE(v28) = 0;
          goto LABEL_34;
        }
      }

      goto LABEL_40;
    }
  }

  else
  {
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
  }

  __break(1u);
LABEL_44:
  swift_once();
LABEL_32:
  v57 = sub_24ABABD8C();
  __swift_project_value_buffer(v57, qword_27EF95FD8);
  v58 = v72;
  v59 = v71;
  (*(v72 + 16))(v71, v29, v11);
  v60 = sub_24ABABD6C();
  v61 = sub_24ABAC11C();
  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    v91 = swift_slowAlloc();
    v93 = swift_slowAlloc();
    v92[0] = v93;
    *v62 = 136315394;

    v63 = sub_24AB760CC(a4, v12, v92);

    *(v62 + 4) = v63;
    *(v62 + 12) = 2112;
    sub_24ABABA1C();
    v64 = _swift_stdlib_bridgeErrorToNSError();
    v65 = *(v58 + 8);
    v65(v59, v74);
    *(v62 + 14) = v64;
    v66 = v91;
    *v91 = v64;
    _os_log_impl(&dword_24AB6F000, v60, v61, "failed to open %s, %@", v62, 0x16u);
    sub_24AB7C4A4(v66, &unk_27EF953F0, &unk_24ABAD6A0);
    MEMORY[0x24C229EC0](v66, -1, -1);
    v67 = v93;
    __swift_destroy_boxed_opaque_existential_0Tm(v93);
    MEMORY[0x24C229EC0](v67, -1, -1);
    v68 = v62;
    v11 = v74;
    MEMORY[0x24C229EC0](v68, -1, -1);
  }

  else
  {

    v65 = *(v58 + 8);
    v65(v59, v11);
  }

  v70 = v73;
  LOBYTE(v28) = sub_24ABABA1C();
  swift_willThrow();
  v65(v70, v11);
  sub_24AB7786C(v20, type metadata accessor for FileMetadata);
  v12 = v81;
LABEL_34:
  MEMORY[0x24C229EC0](v12, -1, -1);
  return v28 & 1;
}

uint64_t sub_24AB795BC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24AB795F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FileMetadata(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24AB79658(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1752457584 && a2 == 0xE400000000000000;
  if (v3 || (sub_24ABAC58C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x737574617473 && a2 == 0xE600000000000000 || (sub_24ABAC58C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746E756F4378616DLL && a2 == 0xE800000000000000 || (sub_24ABAC58C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4449656369766564 && a2 == 0xE800000000000000 || (sub_24ABAC58C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000014 && 0x800000024ABAF8A0 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_24ABAC58C();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

BOOL sub_24AB7980C()
{
  v0 = sub_24ABABB9C();
  v1 = sub_24ABABB9C();
  v2 = [v0 fp:v1 relativePathWithRealpath:?];

  if (!v2)
  {
    return 0;
  }

  v3 = [v2 pathComponents];
  v4 = sub_24ABABFFC();

  v5 = *(v4 + 16);

  if (v5 != 1)
  {
    goto LABEL_11;
  }

  v6 = [v2 pathComponents];
  v7 = sub_24ABABFFC();

  if (!v7[2])
  {

LABEL_11:

    return 0;
  }

  v9 = v7[4];
  v8 = v7[5];

  if (v9 != 0x68736172542ELL || v8 != 0xE600000000000000)
  {
    v11 = sub_24ABAC58C();

    return (v11 & 1) != 0;
  }

  return 1;
}

void sub_24AB7997C(unint64_t a1, uint64_t a2)
{
  v194 = a2;
  v187 = sub_24ABABB6C();
  v185 = *(v187 - 8);
  MEMORY[0x28223BE20](v187);
  v188 = &v171 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95B00, &qword_24ABAED70);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v186 = &v171 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v171 - v8;
  v196 = sub_24ABABC0C();
  v189 = *(v196 - 8);
  v10 = MEMORY[0x28223BE20](v196);
  v180 = &v171 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v181 = &v171 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v182 = &v171 - v15;
  MEMORY[0x28223BE20](v14);
  v192 = &v171 - v16;
  v199 = type metadata accessor for FileMetadata(0);
  v193 = *(v199 - 1);
  v17 = MEMORY[0x28223BE20](v199);
  v197 = &v171 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v198 = (&v171 - v19);
  v190 = type metadata accessor for PageCookie.Error(0);
  MEMORY[0x28223BE20](v190);
  v191 = (&v171 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = OBJC_IVAR____TtC17FileIndexerDaemon10TreeLister_directories;
  v201 = OBJC_IVAR____TtC17FileIndexerDaemon10TreeLister_url;
  swift_beginAccess();
  v22 = 0x27EF95000;
  *&v23 = 136315394;
  v200 = v23;
  v202 = v9;
  v203 = a1;
  while (1)
  {
    v26 = *(a1 + v21);
    if (v26 >> 62)
    {
      v27 = sub_24ABAC3DC();
      if (!v27)
      {
LABEL_47:
        if (*(v22 + 776) != -1)
        {
          swift_once();
        }

        v71 = sub_24ABABD8C();
        __swift_project_value_buffer(v71, qword_27EF95FD8);

        v72 = sub_24ABABD6C();
        v73 = sub_24ABAC10C();

        if (os_log_type_enabled(v72, v73))
        {
          v74 = swift_slowAlloc();
          v75 = swift_slowAlloc();
          v206 = v75;
          *v74 = 136315138;
          v76 = sub_24ABABB9C();
          v77 = [v76 fp_shortDescription];

          v78 = sub_24ABABEBC();
          v80 = v79;

          v81 = sub_24AB760CC(v78, v80, &v206);

          *(v74 + 4) = v81;
          _os_log_impl(&dword_24AB6F000, v72, v73, "%s | listing step: no more dirs to process", v74, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v75);
          MEMORY[0x24C229EC0](v75, -1, -1);
          MEMORY[0x24C229EC0](v74, -1, -1);
        }

        return;
      }
    }

    else
    {
      v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v27)
      {
        goto LABEL_47;
      }
    }

    v28 = v27 - 1;
    if (__OFSUB__(v27, 1))
    {
      break;
    }

    if ((v26 & 0xC000000000000001) != 0)
    {

      v2 = MEMORY[0x24C229290](v28, v26);
    }

    else
    {
      if ((v28 & 0x8000000000000000) != 0)
      {
        goto LABEL_118;
      }

      if (v28 >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_119;
      }

      v2 = *(v26 + 8 * v28 + 32);
    }

    if (*(v2 + 64) != 1 || !(*(v2 + 48) | *(v2 + 56) | *(v2 + 32) | *(v2 + 40)))
    {
      if (*(v22 + 776) == -1)
      {
        goto LABEL_39;
      }

      goto LABEL_122;
    }

    if (*(v22 + 776) != -1)
    {
      swift_once();
    }

    v29 = sub_24ABABD8C();
    __swift_project_value_buffer(v29, qword_27EF95FD8);

    v30 = sub_24ABABD6C();
    v31 = sub_24ABAC10C();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v210 = v33;
      *v32 = v200;
      v34 = sub_24ABABB9C();
      v35 = [v34 fp_shortDescription];

      v36 = sub_24ABABEBC();
      v38 = v37;

      v39 = sub_24AB760CC(v36, v38, &v210);

      *(v32 + 4) = v39;
      *(v32 + 12) = 2080;
      v206 = 39;
      v207 = 0xE100000000000000;
      v40 = *(v2 + 16);
      v41 = *(v2 + 24);

      MEMORY[0x24C228EB0](v40, v41);
      MEMORY[0x24C228EB0](0x7375746174732027, 0xEA0000000000203ALL);
      v42 = *(v2 + 32);
      v43 = *(v2 + 40);
      v44 = *(v2 + 56);
      if (*(v2 + 64) == 1)
      {
        v45 = (v42 | *(v2 + 48) | v43 | v44) == 0;
        if (v42 | *(v2 + 48) | v43 | v44)
        {
          v46 = 0x6574656C706D6F63;
        }

        else
        {
          v46 = 0x676E69646E6570;
        }

        if (v45)
        {
          v47 = 0xE700000000000000;
        }

        else
        {
          v47 = 0xE900000000000064;
        }
      }

      else
      {
        v204 = 0x676E697473696C2ELL;
        v205 = 0xE900000000000028;
        v48 = sub_24AB72928();
        MEMORY[0x24C228EB0](v48);

        MEMORY[0x24C228EB0](41, 0xE100000000000000);
        v46 = v204;
        v47 = v205;
      }

      MEMORY[0x24C228EB0](v46, v47);

      v49 = sub_24AB760CC(v206, v207, &v210);

      *(v32 + 14) = v49;
      _os_log_impl(&dword_24AB6F000, v30, v31, "%s | listing step: completed dir %s", v32, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C229EC0](v33, -1, -1);
      MEMORY[0x24C229EC0](v32, -1, -1);

      v9 = v202;
      a1 = v203;
      v22 = 0x27EF95000uLL;
    }

    else
    {
    }

    swift_beginAccess();
    v24 = *(a1 + v21);
    if (v24 >> 62)
    {
      if (!sub_24ABAC3DC())
      {
        goto LABEL_5;
      }
    }

    else if (!*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    *(a1 + v21) = v24;
    if (v24 >> 62 || (isUniquelyReferenced_nonNull_bridgeObject & 1) == 0)
    {
      v24 = sub_24ABA2238(v24);
    }

    v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v25)
    {
      goto LABEL_120;
    }

    *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) = v25 - 1;
    *(a1 + v21) = v24;

LABEL_5:
    swift_endAccess();
  }

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
  swift_once();
LABEL_39:
  v51 = sub_24ABABD8C();
  v52 = __swift_project_value_buffer(v51, qword_27EF95FD8);

  v179 = v52;
  v53 = sub_24ABABD6C();
  v54 = sub_24ABAC10C();

  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v210 = v56;
    *v55 = v200;
    v57 = sub_24ABABB9C();
    v58 = [v57 fp_shortDescription];

    v59 = sub_24ABABEBC();
    v61 = v60;

    v62 = sub_24AB760CC(v59, v61, &v210);

    *(v55 + 4) = v62;
    *(v55 + 12) = 2080;
    v206 = 39;
    v207 = 0xE100000000000000;
    v63 = *(v2 + 16);
    v64 = *(v2 + 24);

    MEMORY[0x24C228EB0](v63, v64);
    MEMORY[0x24C228EB0](0x7375746174732027, 0xEA0000000000203ALL);
    v65 = *(v2 + 32);
    v66 = *(v2 + 40);
    v67 = *(v2 + 56);
    if (*(v2 + 64) == 1)
    {
      v68 = (v65 | *(v2 + 48) | v66 | v67) == 0;
      if (v65 | *(v2 + 48) | v66 | v67)
      {
        v69 = 0x6574656C706D6F63;
      }

      else
      {
        v69 = 0x676E69646E6570;
      }

      if (v68)
      {
        v70 = 0xE700000000000000;
      }

      else
      {
        v70 = 0xE900000000000064;
      }
    }

    else
    {
      v204 = 0x676E697473696C2ELL;
      v205 = 0xE900000000000028;
      v82 = sub_24AB72928();
      MEMORY[0x24C228EB0](v82);

      MEMORY[0x24C228EB0](41, 0xE100000000000000);
      v69 = v204;
      v70 = v205;
    }

    MEMORY[0x24C228EB0](v69, v70);

    v83 = sub_24AB760CC(v206, v207, &v210);

    *(v55 + 14) = v83;
    _os_log_impl(&dword_24AB6F000, v53, v54, "%s | listing step: processing dir %s", v55, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C229EC0](v56, -1, -1);
    MEMORY[0x24C229EC0](v55, -1, -1);

    v9 = v202;
  }

  else
  {
  }

  memset(v208, 0, sizeof(v208));
  v209 = 1;

  v84 = v195;
  v85 = sub_24AB73F7C(v208);
  if (v84)
  {

    v204 = v84;
    v86 = v84;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95C50, &qword_24ABAF140);
    v87 = v191;
    if (swift_dynamicCast())
    {
      if (swift_getEnumCaseMultiPayload() == 3)
      {

        v88 = sub_24ABABD6C();
        v89 = sub_24ABAC11C();

        if (os_log_type_enabled(v88, v89))
        {
          v90 = swift_slowAlloc();
          v91 = swift_slowAlloc();
          v206 = v91;
          *v90 = 136315138;
          v92 = sub_24ABABE8C();
          v93 = [v92 fp_prettyPath];

          v94 = sub_24ABABEBC();
          v96 = v95;

          v97 = sub_24AB760CC(v94, v96, &v206);

          *(v90 + 4) = v97;
          _os_log_impl(&dword_24AB6F000, v88, v89, "Generation count changed while listing %s, restarting its listing", v90, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v91);
          MEMORY[0x24C229EC0](v91, -1, -1);
          MEMORY[0x24C229EC0](v90, -1, -1);
        }

        swift_beginAccess();
        sub_24AB749C0();
        swift_endAccess();

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95540, &qword_24ABAD750);
        v98 = v189;
        *(swift_allocObject() + 16) = xmmword_24ABAD4A0;
        (*(v185 + 104))(v188, *MEMORY[0x277CC91C0], v187);
        (*(v98 + 56))(v186, 1, 1, v196);

        sub_24ABABBFC();

        v195 = 0;
        return;
      }

      v195 = v84;

      sub_24AB7786C(v87, type metadata accessor for PageCookie.Error);
    }

    else
    {
      v195 = v84;
    }

    return;
  }

  v195 = 0;
  v99 = v85;

  v101 = v99;
  v102 = *(v99 + 16);
  if (v102)
  {
    v103 = 0;
    v191 = (v189 + 48);
    v184 = (v189 + 32);
    v183 = (v189 + 8);
    v176 = (v189 + 16);
    v190 = v102;
    v177 = v102 - 1;
    *&v100 = 136315138;
    v175 = v100;
    v201 = MEMORY[0x277D84F90];
    v178 = MEMORY[0x277D84F90];
    v104 = v198;
    *&v200 = v99;
LABEL_63:
    v105 = v103;
    while (1)
    {
      if (v105 >= *(v101 + 16))
      {
        goto LABEL_121;
      }

      v106 = (*(v193 + 80) + 32) & ~*(v193 + 80);
      v107 = v104;
      v108 = *(v193 + 72);
      sub_24AB7C43C(v101 + v106 + v108 * v105, v107, type metadata accessor for FileMetadata);
      if (sub_24AB87A7C())
      {

        v144 = sub_24ABABD6C();
        v145 = sub_24ABAC0FC();

        if (os_log_type_enabled(v144, v145))
        {
          v146 = swift_slowAlloc();
          v147 = swift_slowAlloc();
          v206 = v147;
          *v146 = v175;
          v148 = sub_24ABABE8C();
          v149 = [v148 fp_prettyPath];

          v150 = sub_24ABABEBC();
          v152 = v151;

          v153 = sub_24AB760CC(v150, v152, &v206);

          *(v146 + 4) = v153;
          _os_log_impl(&dword_24AB6F000, v144, v145, "%s: force stopping mid-step", v146, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v147);
          MEMORY[0x24C229EC0](v147, -1, -1);
          MEMORY[0x24C229EC0](v146, -1, -1);
        }

        else
        {
        }

        sub_24AB7786C(v198, type metadata accessor for FileMetadata);
        return;
      }

      sub_24AB778E0(v107 + v199[21], v9);
      v109 = v196;
      if ((*v191)(v9, 1, v196) == 1)
      {
        sub_24AB7C4A4(v9, &qword_27EF95B00, &qword_24ABAED70);
        v110 = v201;
      }

      else
      {
        v111 = *v184;
        (*v184)(v192, v9, v109);
        if (sub_24AB7980C())
        {

          v154 = *v198;
          v155 = v178;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v155 = sub_24ABA1408(0, *(v155 + 2) + 1, 1, v155);
          }

          v156 = v182;
          v157 = v192;
          v178 = v155;
          v159 = *(v155 + 2);
          v158 = *(v155 + 3);
          if (v159 >= v158 >> 1)
          {
            v178 = sub_24ABA1408((v158 > 1), v159 + 1, 1, v178);
          }

          v160 = v178;
          *(v178 + 2) = v159 + 1;
          *&v160[8 * v159 + 32] = v154;
          (*v176)(v156, v157, v196);
          v161 = sub_24ABA13E0(0, 1, 1, MEMORY[0x277D84F90]);
          v163 = *(v161 + 2);
          v162 = *(v161 + 3);
          if (v163 >= v162 >> 1)
          {
            v161 = sub_24ABA13E0((v162 > 1), v163 + 1, 1, v161);
          }

          v164 = v189;
          v165 = v196;
          (*(v189 + 8))(v157, v196);
          *(v161 + 2) = v163 + 1;
          v111(&v161[((*(v164 + 80) + 32) & ~*(v164 + 80)) + *(v164 + 72) * v163], v156, v165);
          sub_24AB7786C(v198, type metadata accessor for FileMetadata);
          return;
        }

        if (sub_24AB82004())
        {
          *(v198 + v199[16]) = 1;
        }

        v112 = v192;
        v113 = sub_24ABABBEC();
        sub_24AB821B8(v113, v114);
        v116 = v115;

        v110 = v201;
        if (v116)
        {
          v129 = v181;
          v130 = v196;
          (*v176)(v181, v112, v196);
          v131 = sub_24ABABD6C();
          v132 = sub_24ABAC10C();
          v133 = os_log_type_enabled(v131, v132);
          v9 = v202;
          if (v133)
          {
            v134 = swift_slowAlloc();
            v172 = v134;
            v174 = swift_slowAlloc();
            v206 = v174;
            *v134 = v175;
            v173 = v131;
            v171 = sub_24ABABBEC();
            v136 = v135;
            v137 = *v183;
            (*v183)(v129, v130);
            v138 = sub_24AB760CC(v171, v136, &v206);

            v139 = v172;
            *(v172 + 1) = v138;
            v140 = v173;
            _os_log_impl(&dword_24AB6F000, v173, v132, "found ignored path while listing, %s", v139, 0xCu);
            v141 = v174;
            __swift_destroy_boxed_opaque_existential_0Tm(v174);
            MEMORY[0x24C229EC0](v141, -1, -1);
            MEMORY[0x24C229EC0](v139, -1, -1);
          }

          else
          {

            v137 = *v183;
            (*v183)(v129, v130);
          }

          v125 = *v198;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v178 = sub_24ABA1408(0, *(v178 + 2) + 1, 1, v178);
          }

          v127 = *(v178 + 2);
          v142 = *(v178 + 3);
          v128 = v127 + 1;
          if (v127 >= v142 >> 1)
          {
            v178 = sub_24ABA1408((v142 > 1), v127 + 1, 1, v178);
          }

          (v137)(v192);
LABEL_96:
          v143 = v178;
          *(v178 + 2) = v128;
          *&v143[8 * v127 + 32] = v125;
          v104 = v198;
          sub_24AB7786C(v198, type metadata accessor for FileMetadata);
          v103 = v105 + 1;
          v101 = v200;
          if (v177 != v105)
          {
            goto LABEL_63;
          }

          goto LABEL_102;
        }

        (*v183)(v112, v196);
        v9 = v202;
      }

      if (*(v198 + v199[15]) == 1)
      {
        v125 = *v198;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v178 = sub_24ABA1408(0, *(v178 + 2) + 1, 1, v178);
        }

        v127 = *(v178 + 2);
        v126 = *(v178 + 3);
        v128 = v127 + 1;
        if (v127 >= v126 >> 1)
        {
          v178 = sub_24ABA1408((v126 > 1), v127 + 1, 1, v178);
        }

        goto LABEL_96;
      }

      sub_24AB7C43C(v198, v197, type metadata accessor for FileMetadata);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v110 = sub_24ABA13B8(0, v110[2] + 1, 1, v110);
      }

      v118 = v110[2];
      v117 = v110[3];
      if (v118 >= v117 >> 1)
      {
        v110 = sub_24ABA13B8((v117 > 1), v118 + 1, 1, v110);
      }

      v110[2] = v118 + 1;
      sub_24AB795F4(v197, v110 + v106 + v118 * v108);
      v104 = v198;
      if (*(v198 + 48) == 2)
      {

        v119 = sub_24ABABE8C();

        v120 = sub_24ABABE8C();
        v121 = [v119 stringByAppendingPathComponent_];

        v122 = sub_24ABABEBC();
        v124 = v123;

        if ((*(v104 + v199[16]) & 1) == 0 && (sub_24AB825B4(v122, v124) & 1) == 0)
        {

          (*(v185 + 104))(v188, *MEMORY[0x277CC91C0], v187);
          (*(v189 + 56))(v186, 1, 1, v196);
          v166 = v180;
          sub_24ABABBFC();
          v167 = sub_24ABA13E0(0, 1, 1, MEMORY[0x277D84F90]);
          v169 = v167[2];
          v168 = v167[3];
          if (v169 >= v168 >> 1)
          {
            v167 = sub_24ABA13E0((v168 > 1), v169 + 1, 1, v167);
          }

          v170 = v167;

          v170[2] = v169 + 1;
          (*(v189 + 32))(v170 + ((*(v189 + 80) + 32) & ~*(v189 + 80)) + *(v189 + 72) * v169, v166, v196);
          sub_24AB7786C(v198, type metadata accessor for FileMetadata);
          return;
        }
      }

      v201 = v110;
      ++v105;
      sub_24AB7786C(v104, type metadata accessor for FileMetadata);
      v101 = v200;
      if (v190 == v105)
      {
        goto LABEL_102;
      }
    }
  }

  v178 = MEMORY[0x277D84F90];
  v201 = MEMORY[0x277D84F90];
LABEL_102:
}

void sub_24AB7B44C(uint64_t a1)
{
  sub_24AB7B518();
  if (v1 <= 0x3F)
  {
    sub_24AB7B560(319, &qword_27EF95568, MEMORY[0x277D849A8]);
    if (v2 <= 0x3F)
    {
      sub_24AB7B560(319, &qword_27EF95570, MEMORY[0x277D84D38]);
      if (v3 <= 0x3F)
      {
        sub_24AB7B560(319, &unk_27EF95578, MEMORY[0x277D84CC0]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void sub_24AB7B518()
{
  if (!qword_27EF95560)
  {
    v0 = sub_24ABABA2C();
    if (!v1)
    {
      atomic_store(v0, &qword_27EF95560);
    }
  }
}

void sub_24AB7B560(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_24AB7B5CC(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t getEnumTagSinglePayload for ListerStatus.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ListerStatus.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ListerStatus.ListingCodingKeys(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for ListerStatus.ListingCodingKeys(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DirectoryLister.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DirectoryLister.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_24AB7B9F8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24AB7BA18(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

unint64_t sub_24AB7BB3C()
{
  result = qword_27EF955B0;
  if (!qword_27EF955B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF955B0);
  }

  return result;
}

unint64_t sub_24AB7BB94()
{
  result = qword_27EF955B8;
  if (!qword_27EF955B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF955B8);
  }

  return result;
}

unint64_t sub_24AB7BBEC()
{
  result = qword_27EF955C0;
  if (!qword_27EF955C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF955C0);
  }

  return result;
}

unint64_t sub_24AB7BC44()
{
  result = qword_27EF955C8;
  if (!qword_27EF955C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF955C8);
  }

  return result;
}

unint64_t sub_24AB7BE64()
{
  result = qword_27EF95600;
  if (!qword_27EF95600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF95600);
  }

  return result;
}

unint64_t sub_24AB7BEBC()
{
  result = qword_27EF95608;
  if (!qword_27EF95608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF95608);
  }

  return result;
}

unint64_t sub_24AB7BF14()
{
  result = qword_27EF95610;
  if (!qword_27EF95610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF95610);
  }

  return result;
}

unint64_t sub_24AB7BF6C()
{
  result = qword_27EF95618;
  if (!qword_27EF95618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF95618);
  }

  return result;
}

unint64_t sub_24AB7BFC4()
{
  result = qword_27EF95620;
  if (!qword_27EF95620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF95620);
  }

  return result;
}

unint64_t sub_24AB7C01C()
{
  result = qword_27EF95628;
  if (!qword_27EF95628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF95628);
  }

  return result;
}

unint64_t sub_24AB7C074()
{
  result = qword_27EF95630;
  if (!qword_27EF95630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF95630);
  }

  return result;
}

unint64_t sub_24AB7C0CC()
{
  result = qword_27EF95638;
  if (!qword_27EF95638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF95638);
  }

  return result;
}

unint64_t sub_24AB7C124()
{
  result = qword_27EF95640;
  if (!qword_27EF95640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF95640);
  }

  return result;
}

unint64_t sub_24AB7C17C()
{
  result = qword_27EF95648;
  if (!qword_27EF95648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF95648);
  }

  return result;
}

unint64_t sub_24AB7C1D4()
{
  result = qword_27EF95650;
  if (!qword_27EF95650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF95650);
  }

  return result;
}

unint64_t sub_24AB7C22C()
{
  result = qword_27EF95658;
  if (!qword_27EF95658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF95658);
  }

  return result;
}

uint64_t sub_24AB7C280(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4C5255746F6F72 && a2 == 0xE700000000000000;
  if (v4 || (sub_24ABAC58C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000 || (sub_24ABAC58C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726F746365726964 && a2 == 0xEB00000000736569 || (sub_24ABAC58C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4449656369766564 && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_24ABAC58C();

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

unint64_t sub_24AB7C3E8()
{
  result = qword_27EF95668;
  if (!qword_27EF95668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF95668);
  }

  return result;
}

uint64_t sub_24AB7C43C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24AB7C4A4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t getEnumTagSinglePayload for FIRoot.State.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FIRoot.State.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24AB7C660()
{
  result = qword_27EF956B0;
  if (!qword_27EF956B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF956B0);
  }

  return result;
}

unint64_t sub_24AB7C6B8()
{
  result = qword_27EF956B8;
  if (!qword_27EF956B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF956B8);
  }

  return result;
}

unint64_t sub_24AB7C710()
{
  result = qword_27EF956C0;
  if (!qword_27EF956C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF956C0);
  }

  return result;
}

uint64_t sub_24AB7C7D4(char *a1)
{
  v51[1] = *MEMORY[0x277D85DE8];
  v3 = sub_24ABABC0C();
  MEMORY[0x28223BE20](v3);
  v5 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC17FileIndexerDaemon24DiskIndexingStateHandler_url;
  v48 = v8;
  v49 = v7;
  v9 = *(v8 + 16);
  v50 = v1;
  v9(v1 + OBJC_IVAR____TtC17FileIndexerDaemon24DiskIndexingStateHandler_url, a1);
  v10 = objc_opt_self();
  v11 = [v10 defaultManager];
  sub_24ABABBEC();
  v12 = sub_24ABABE8C();

  v13 = [v11 fileExistsAtPath_];

  if ((v13 & 1) == 0)
  {
    v14 = [v10 defaultManager];
    v15 = sub_24ABABB9C();
    v51[0] = 0;
    v16 = [v14 createDirectoryAtURL:v15 withIntermediateDirectories:1 attributes:0 error:v51];

    v17 = a1;
    if (!v16)
    {
      v38 = v51[0];
      sub_24ABABB5C();

      swift_willThrow();
      v39 = *(v48 + 8);
      v40 = v17;
      v41 = v49;
      v39(v40, v49);
      v42 = v50 + v6;
      v43 = v50;
      v39(v42, v41);
      type metadata accessor for DiskIndexingStateHandler(0);
      swift_deallocPartialClassInstance();
      return v43;
    }

    v18 = v51[0];
  }

  sub_24ABABBAC();
  v19 = [v10 defaultManager];
  sub_24ABABBEC();
  v20 = sub_24ABABE8C();

  v21 = [v19 fileExistsAtPath_];

  if (v21)
  {
    v22 = v47;
    v23 = sub_24AB7CD08();
    v24 = v22;
    if (v22)
    {
      if (qword_27EF95308 != -1)
      {
        swift_once();
      }

      v25 = sub_24ABABD8C();
      __swift_project_value_buffer(v25, qword_27EF95FD8);
      v26 = v22;
      v27 = sub_24ABABD6C();
      v28 = sub_24ABAC11C();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        *v29 = 138412290;
        v31 = v22;
        v32 = _swift_stdlib_bridgeErrorToNSError();
        *(v29 + 4) = v32;
        *v30 = v32;
        _os_log_impl(&dword_24AB6F000, v27, v28, "Failed to load indexing state from disk: %@", v29, 0xCu);
        sub_24AB7C4A4(v30, &unk_27EF953F0, &unk_24ABAD6A0);
        MEMORY[0x24C229EC0](v30, -1, -1);
        v33 = v29;
        v24 = v22;
        MEMORY[0x24C229EC0](v33, -1, -1);
      }

      v34 = sub_24AB7F7A0(MEMORY[0x277D84F90]);
      v35 = a1;
      goto LABEL_15;
    }

    v34 = v23;
  }

  else
  {
    v36 = [v10 defaultManager];
    sub_24ABABBEC();
    v37 = sub_24ABABE8C();

    [v36 createFileAtPath:v37 contents:0 attributes:0];

    v34 = sub_24AB7F7A0(MEMORY[0x277D84F90]);
  }

  v35 = a1;
LABEL_15:
  v45 = v49;
  v46 = *(v48 + 8);
  v46(v35, v49);
  v46(v5, v45);
  result = v50;
  *(v50 + OBJC_IVAR____TtC17FileIndexerDaemon24DiskIndexingStateHandler_state) = v34;
  return result;
}

unint64_t sub_24AB7CD08()
{
  v1 = [objc_opt_self() defaultManager];
  sub_24ABABBEC();
  v2 = sub_24ABABE8C();

  v3 = [v1 contentsAtPath_];

  if (v3)
  {
    v4 = sub_24ABABC4C();
    v6 = v5;

    sub_24ABABA5C();
    swift_allocObject();
    sub_24ABABA4C();
    sub_24AB80230();
    sub_24ABABA3C();
    sub_24AB77A9C(v4, v6);

    if (!v0)
    {
      return v12;
    }
  }

  else
  {
    if (qword_27EF95308 != -1)
    {
      swift_once();
    }

    v8 = sub_24ABABD8C();
    __swift_project_value_buffer(v8, qword_27EF95FD8);
    v9 = sub_24ABABD6C();
    v10 = sub_24ABAC11C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_24AB6F000, v9, v10, "Loading indexing state from disk failed, empty load result", v11, 2u);
      MEMORY[0x24C229EC0](v11, -1, -1);
    }

    return sub_24AB7F7A0(MEMORY[0x277D84F90]);
  }

  return result;
}

uint64_t sub_24AB7CEEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v25 = a4;
  v26 = a5;
  v10 = type metadata accessor for IndexingStateHandlerState.StatePair(0);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v24 - v15;
  v17 = OBJC_IVAR____TtC17FileIndexerDaemon24DiskIndexingStateHandler_state;
  swift_beginAccess();
  v18 = *(a1 + v17);
  if (!*(v18 + 16))
  {
    goto LABEL_7;
  }

  v19 = sub_24AB7E4CC(a2, a3);
  if ((v20 & 1) == 0)
  {

LABEL_7:
    v21 = 1;
    goto LABEL_8;
  }

  sub_24AB7FBF4(*(v18 + 56) + *(v11 + 72) * v19, v14, type metadata accessor for IndexingStateHandlerState.StatePair);

  sub_24AB8064C(v14, v16, type metadata accessor for IndexingStateHandlerState.StatePair);
  if (!sub_24AB7FA30(v25, v26, *v16, *(v16 + 1)))
  {
    sub_24AB7FB98(v16);
    goto LABEL_7;
  }

  sub_24AB7FBF4(&v16[*(v10 + 20)], a6, type metadata accessor for IndexingState);
  sub_24AB7FB98(v16);
  v21 = 0;
LABEL_8:
  v22 = type metadata accessor for IndexingState(0);
  return (*(*(v22 - 8) + 56))(a6, v21, 1, v22);
}

uint64_t sub_24AB7D104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v6 = v5;
  v34 = sub_24ABABC0C();
  v30 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF957F0, &unk_24ABAE558);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = (&v29 - v15);
  v32 = v6;
  v31 = v6;
  sub_24ABABD1C();
  v17 = type metadata accessor for IndexingStateHandlerState.StatePair(0);
  sub_24AB7FBF4(a3, v16 + *(v17 + 20), type metadata accessor for IndexingState);
  *v16 = a4;
  v16[1] = a5;
  (*(*(v17 - 8) + 56))(v16, 0, 1, v17);
  v18 = OBJC_IVAR____TtC17FileIndexerDaemon24DiskIndexingStateHandler_state;
  swift_beginAccess();

  sub_24AB7FC5C(a4, a5);
  sub_24AB7D588(v16, a1, a2);
  swift_endAccess();
  sub_24ABABBAC();
  sub_24ABABA8C();
  swift_allocObject();
  sub_24ABABA7C();
  v33 = *(v6 + v18);
  sub_24AB80178();

  v19 = v29;
  v20 = sub_24ABABA6C();
  if (v19)
  {

    v22 = (*(v30 + 8))(v13, v34);
  }

  else
  {
    v23 = v20;
    v24 = v21;
    v25 = v30;
    v26 = v34;

    sub_24ABABC5C();
    (*(v25 + 8))(v13, v26);
    v22 = sub_24AB77A9C(v23, v24);
  }

  v27 = MEMORY[0x28223BE20](v22);
  *(&v29 - 2) = v6;
  MEMORY[0x28223BE20](v27);
  *(&v29 - 2) = v6;
  return sub_24ABABD1C();
}

uint64_t sub_24AB7D588(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF957F0, &unk_24ABAE558);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = type metadata accessor for IndexingStateHandlerState.StatePair(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v13 + 48))(a1, 1) == 1)
  {
    sub_24AB7C4A4(a1, &qword_27EF957F0, &unk_24ABAE558);
    sub_24AB7EC60(a2, a3, v9);

    return sub_24AB7C4A4(v9, &qword_27EF957F0, &unk_24ABAE558);
  }

  else
  {
    sub_24AB8064C(a1, v12, type metadata accessor for IndexingStateHandlerState.StatePair);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_24AB7F330(v12, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v17;
  }

  return result;
}

uint64_t sub_24AB7D75C()
{
  v1 = OBJC_IVAR____TtC17FileIndexerDaemon24DiskIndexingStateHandler_url;
  v2 = sub_24ABABC0C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t sub_24AB7D830(uint64_t a1)
{
  result = sub_24ABABC0C();
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

uint64_t sub_24AB7D8DC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95850, &qword_24ABAE6E0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24AB805A4();
  sub_24ABAC67C();
  v9 = v3[1];
  v12 = *v3;
  v13 = v9;
  v11[15] = 0;
  sub_24AB7FC5C(v12, v9);
  sub_24AB806B4();
  sub_24ABAC52C();
  sub_24AB77A9C(v12, v13);
  if (!v2)
  {
    type metadata accessor for IndexingStateHandlerState.StatePair(0);
    LOBYTE(v12) = 1;
    type metadata accessor for IndexingState(0);
    sub_24AB80080(&qword_27EF95860, type metadata accessor for IndexingState, &unk_24ABAF4E0);
    sub_24ABAC52C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_24AB7DAB8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v19 = type metadata accessor for IndexingState(0);
  MEMORY[0x28223BE20](v19);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95830, &qword_24ABAE6D8);
  v18 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v7 = &v15 - v6;
  v8 = type metadata accessor for IndexingStateHandlerState.StatePair(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24AB805A4();
  sub_24ABAC66C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v16 = v8;
  v11 = v18;
  v12 = v10;
  v22 = 0;
  sub_24AB805F8();
  v13 = v20;
  sub_24ABAC48C();
  *v12 = v21;
  LOBYTE(v21) = 1;
  sub_24AB80080(&qword_27EF95848, type metadata accessor for IndexingState, &unk_24ABAF508);
  sub_24ABAC48C();
  (*(v11 + 8))(v7, v13);
  sub_24AB8064C(v5, v12 + *(v16 + 20), type metadata accessor for IndexingState);
  sub_24AB7FBF4(v12, v17, type metadata accessor for IndexingStateHandlerState.StatePair);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return sub_24AB7FB98(v12);
}

uint64_t sub_24AB7DDC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v12 = *v5;
  sub_24ABABD1C();
  v13 = sub_24AB7CEEC(v12, a1, a2, a3, a4, a5);
  if (v6)
  {

    v17 = MEMORY[0x28223BE20](v16);
    MEMORY[0x28223BE20](v17);
    result = sub_24ABABD1C();
    __break(1u);
  }

  else
  {
    v14 = MEMORY[0x28223BE20](v13);
    MEMORY[0x28223BE20](v14);
    return sub_24ABABD1C();
  }

  return result;
}

uint64_t sub_24AB7DFF4()
{
  if (*v0)
  {
    return 0x6574617473;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_24AB7E030@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v6 || (sub_24ABAC58C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24ABAC58C();

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

uint64_t sub_24AB7E11C(uint64_t a1)
{
  v2 = sub_24AB805A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24AB7E158(uint64_t a1)
{
  v2 = sub_24AB805A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24AB7E1C4(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF957D8, &qword_24ABAE550);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24AB7FE44();
  sub_24ABAC67C();
  v9[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF957B0, &qword_24ABAE538);
  sub_24AB7FFC4();
  sub_24ABAC52C();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_24AB7E33C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x614D656C646E7562 && a2 == 0xE900000000000070)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24ABAC58C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24AB7E3CC(uint64_t a1)
{
  v2 = sub_24AB7FE44();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24AB7E408(uint64_t a1)
{
  v2 = sub_24AB7FE44();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_24AB7E444@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_24AB7FCB0(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_24AB7E4CC(uint64_t a1, uint64_t a2)
{
  sub_24ABAC62C();
  sub_24ABABEFC();
  v4 = sub_24ABAC64C();

  return sub_24AB7E61C(a1, a2, v4);
}

unint64_t sub_24AB7E544(uint64_t a1)
{
  sub_24ABABEBC();
  sub_24ABAC62C();
  sub_24ABABEFC();
  v2 = sub_24ABAC64C();

  return sub_24AB7E6D4(a1, v2);
}

unint64_t sub_24AB7E5D8(uint64_t a1)
{
  v2 = sub_24ABAC2AC();

  return sub_24AB7E7D8(a1, v2);
}

unint64_t sub_24AB7E61C(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_24ABAC58C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_24AB7E6D4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_24ABABEBC();
      v8 = v7;
      if (v6 == sub_24ABABEBC() && v8 == v9)
      {
        break;
      }

      v11 = sub_24ABAC58C();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_24AB7E7D8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_24AB800C8(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x24C229240](v9, a1);
      sub_24AB80124(v9);
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

uint64_t sub_24AB7E8A0@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_24ABABAAC();
    if (v10)
    {
      v11 = sub_24ABABACC();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_24ABABABC();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_24ABABAAC();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_24ABABACC();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_24ABABABC();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_24AB7EAD0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_24AB7F978(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_24AB77A9C(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_24AB7E8A0(v13, a3, a4, &v12);
  v10 = v4;
  sub_24AB77A9C(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_24AB7EC60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_24AB7E4CC(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_24AB7F540();
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = type metadata accessor for IndexingStateHandlerState.StatePair(0);
    v19 = *(v12 - 8);
    sub_24AB8064C(v11 + *(v19 + 72) * v8, a3, type metadata accessor for IndexingStateHandlerState.StatePair);
    sub_24AB7F144(v8, v10);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = type metadata accessor for IndexingStateHandlerState.StatePair(0);
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

uint64_t sub_24AB7EDCC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for IndexingStateHandlerState.StatePair(0);
  v39 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v41 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF957D0, &qword_24ABAE548);
  v40 = v4;
  result = sub_24ABAC3FC();
  v9 = result;
  if (*(v7 + 16))
  {
    v37 = v2;
    v38 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v39 + 72);
      v28 = v23 + v27 * v22;
      if (v40)
      {
        sub_24AB8064C(v28, v41, type metadata accessor for IndexingStateHandlerState.StatePair);
      }

      else
      {
        sub_24AB7FBF4(v28, v41, type metadata accessor for IndexingStateHandlerState.StatePair);
      }

      sub_24ABAC62C();
      sub_24ABABEFC();
      result = sub_24ABAC64C();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v25;
      v18[1] = v26;
      result = sub_24AB8064C(v41, *(v9 + 56) + v27 * v17, type metadata accessor for IndexingStateHandlerState.StatePair);
      ++*(v9 + 16);
      v7 = v38;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

unint64_t sub_24AB7F144(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_24ABAC29C() + 1) & ~v5;
    while (1)
    {
      sub_24ABAC62C();

      sub_24ABABEFC();
      v9 = sub_24ABAC64C();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + 16 * v3);
      v13 = (v11 + 16 * v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(type metadata accessor for IndexingStateHandlerState.StatePair(0) - 8) + 72);
      v16 = v15 * v3;
      result = v14 + v15 * v3;
      v17 = v15 * v6;
      v18 = v14 + v15 * v6 + v15;
      if (v16 < v17 || result >= v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v16 == v17)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_24AB7F330(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_24AB7E4CC(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_24AB7F540();
      goto LABEL_7;
    }

    sub_24AB7EDCC(v15, a4 & 1);
    v22 = sub_24AB7E4CC(a2, a3);
    if ((v16 & 1) == (v23 & 1))
    {
      v12 = v22;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_24ABAC5BC();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = v19 + *(*(type metadata accessor for IndexingStateHandlerState.StatePair(0) - 8) + 72) * v12;

    return sub_24AB801CC(a1, v20);
  }

LABEL_13:
  sub_24AB7F494(v12, a2, a3, a1, v18);
}

uint64_t sub_24AB7F494(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for IndexingStateHandlerState.StatePair(0);
  result = sub_24AB8064C(a4, v9 + *(*(v10 - 8) + 72) * a1, type metadata accessor for IndexingStateHandlerState.StatePair);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

void *sub_24AB7F540()
{
  v1 = v0;
  v2 = type metadata accessor for IndexingStateHandlerState.StatePair(0);
  v33 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v32 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF957D0, &qword_24ABAE548);
  v4 = *v0;
  v5 = sub_24ABAC3EC();
  v6 = v5;
  if (*(v4 + 16))
  {
    v31 = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v34 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v35 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = 16 * v19;
        v21 = *(v4 + 56);
        v22 = (*(v4 + 48) + 16 * v19);
        v23 = v4;
        v24 = *v22;
        v25 = v22[1];
        v26 = v32;
        v27 = *(v33 + 72) * v19;
        sub_24AB7FBF4(v21 + v27, v32, type metadata accessor for IndexingStateHandlerState.StatePair);
        v28 = v34;
        v29 = (*(v34 + 48) + v20);
        *v29 = v24;
        v29[1] = v25;
        v4 = v23;
        sub_24AB8064C(v26, *(v28 + 56) + v27, type metadata accessor for IndexingStateHandlerState.StatePair);

        v14 = v35;
      }

      while (v35);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v31;
        v6 = v34;
        goto LABEL_18;
      }

      v18 = *(v8 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v35 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

unint64_t sub_24AB7F7A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF957C8, &qword_24ABAE540);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF957D0, &qword_24ABAE548);
    v7 = sub_24ABAC40C();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_24AB7FF54(v9, v5);
      v11 = *v5;
      v12 = v5[1];
      result = sub_24AB7E4CC(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = type metadata accessor for IndexingStateHandlerState.StatePair(0);
      result = sub_24AB8064C(v5 + v8, v17 + *(*(v18 - 8) + 72) * v15, type metadata accessor for IndexingStateHandlerState.StatePair);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
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

uint64_t sub_24AB7F978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_24ABABAAC();
  v11 = result;
  if (result)
  {
    result = sub_24ABABACC();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_24ABABABC();
  sub_24AB7E8A0(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

BOOL sub_24AB7FA30(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_24AB7FC5C(a3, a4);
          return sub_24AB7EAD0(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_24AB7FB98(uint64_t a1)
{
  v2 = type metadata accessor for IndexingStateHandlerState.StatePair(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24AB7FBF4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24AB7FC5C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

void *sub_24AB7FCB0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF957A0, &qword_24ABAE530);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  sub_24AB7F7A0(MEMORY[0x277D84F90]);

  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24AB7FE44();
  sub_24ABAC66C();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF957B0, &qword_24ABAE538);
    sub_24AB7FE98();
    sub_24ABAC48C();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  return v7;
}

unint64_t sub_24AB7FE44()
{
  result = qword_27EF957A8;
  if (!qword_27EF957A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF957A8);
  }

  return result;
}

unint64_t sub_24AB7FE98()
{
  result = qword_27EF957B8;
  if (!qword_27EF957B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF957B0, &qword_24ABAE538);
    sub_24AB80080(&qword_27EF957C0, type metadata accessor for IndexingStateHandlerState.StatePair, &unk_24ABAE660);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF957B8);
  }

  return result;
}

uint64_t sub_24AB7FF54(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF957C8, &qword_24ABAE540);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24AB7FFC4()
{
  result = qword_27EF957E0;
  if (!qword_27EF957E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF957B0, &qword_24ABAE538);
    sub_24AB80080(&qword_27EF957E8, type metadata accessor for IndexingStateHandlerState.StatePair, &unk_24ABAE638);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF957E0);
  }

  return result;
}

uint64_t sub_24AB80080(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24AB80178()
{
  result = qword_27EF957F8;
  if (!qword_27EF957F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF957F8);
  }

  return result;
}

uint64_t sub_24AB801CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IndexingStateHandlerState.StatePair(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_24AB80230()
{
  result = qword_27EF95800;
  if (!qword_27EF95800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF95800);
  }

  return result;
}

uint64_t sub_24AB802A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 8) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for IndexingState(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_24AB80374(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = type metadata accessor for IndexingState(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24AB80420(uint64_t a1)
{
  result = type metadata accessor for IndexingState(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_24AB804A0()
{
  result = qword_27EF95818;
  if (!qword_27EF95818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF95818);
  }

  return result;
}

unint64_t sub_24AB804F8()
{
  result = qword_27EF95820;
  if (!qword_27EF95820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF95820);
  }

  return result;
}

unint64_t sub_24AB80550()
{
  result = qword_27EF95828;
  if (!qword_27EF95828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF95828);
  }

  return result;
}

unint64_t sub_24AB805A4()
{
  result = qword_27EF95838;
  if (!qword_27EF95838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF95838);
  }

  return result;
}

unint64_t sub_24AB805F8()
{
  result = qword_27EF95840;
  if (!qword_27EF95840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF95840);
  }

  return result;
}

uint64_t sub_24AB8064C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_24AB806B4()
{
  result = qword_27EF95858;
  if (!qword_27EF95858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF95858);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IndexingStateHandlerState.StatePair.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for IndexingStateHandlerState.StatePair.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24AB80868()
{
  result = qword_27EF95868;
  if (!qword_27EF95868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF95868);
  }

  return result;
}

unint64_t sub_24AB808C0()
{
  result = qword_27EF95870;
  if (!qword_27EF95870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF95870);
  }

  return result;
}

unint64_t sub_24AB80918()
{
  result = qword_27EF95878;
  if (!qword_27EF95878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF95878);
  }

  return result;
}

void sub_24AB809F8(id a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a1)
  {
    v9 = a1;
    if (qword_27EF95308 != -1)
    {
      swift_once();
    }

    v10 = sub_24ABABD8C();
    __swift_project_value_buffer(v10, qword_27EF95FD8);
    v11 = a1;
    v12 = sub_24ABABD6C();
    v13 = sub_24ABAC11C();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      swift_getErrorValue();
      v16 = sub_24ABAC5CC();
      *(v14 + 4) = v16;
      *v15 = v16;
      _os_log_impl(&dword_24AB6F000, v12, v13, "Error donating items: %@", v14, 0xCu);
      sub_24AB7C4A4(v15, &unk_27EF953F0, &unk_24ABAD6A0);
      MEMORY[0x24C229EC0](v15, -1, -1);
      MEMORY[0x24C229EC0](v14, -1, -1);
    }

    (a2)();
  }

  else
  {
    v20 = *(a4 + OBJC_IVAR____TtC17FileIndexerDaemon32FileIndexerSpotlightDaemonClient_indexingStateHandler + 24);
    v21 = *(a4 + OBJC_IVAR____TtC17FileIndexerDaemon32FileIndexerSpotlightDaemonClient_indexingStateHandler + 32);
    __swift_project_boxed_opaque_existential_1((a4 + OBJC_IVAR____TtC17FileIndexerDaemon32FileIndexerSpotlightDaemonClient_indexingStateHandler), v20);
    v22 = (*(v21 + 16))(0xD000000000000023, 0x800000024ABAF7E0, a5, a6, a7, v20, v21);
    a2(v22);
  }
}

id sub_24AB80F9C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FileIndexerSpotlightDaemonClient();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24AB81074(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_24ABA5734(a1, a2);
  if ((v3 & 1) == 0)
  {
    fpfs_fsgetpath();
    free(0);
  }

  return 0;
}

uint64_t sub_24AB8118C(uint64_t a1, char *a2, void (**a3)(void))
{
  v72 = *MEMORY[0x277D85DE8];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95B60, "\b.");
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v56 - v7;
  v68 = type metadata accessor for FileMetadata(0);
  v9 = *(v68 - 8);
  v10 = MEMORY[0x28223BE20](v68);
  v67 = (&v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v66 = &v56 - v12;
  v13 = sub_24ABABD0C();
  v58 = *(v13 - 8);
  v59 = v13;
  MEMORY[0x28223BE20](v13);
  v57 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for IndexingState(0);
  v60 = *(v15 - 8);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v61 = v17;
  v62 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v63 = &v56 - v18;
  v19 = swift_allocObject();
  *(v19 + 16) = a3;
  v20 = *(a1 + 16);
  v69 = a2;
  v70 = v19;
  v56 = a3;
  if (v20)
  {
    v21 = &a2[OBJC_IVAR____TtC17FileIndexerDaemon32FileIndexerSpotlightDaemonClient_metadataHandler];
    v65 = OBJC_IVAR____TtC17FileIndexerDaemon32FileIndexerSpotlightDaemonClient_eventWatcher;
    _Block_copy(a3);
    v64 = v9;
    v22 = (v9 + 48);
    v23 = (a1 + 40);
    v24 = MEMORY[0x277D84F90];
    do
    {
      v25 = *(v23 - 1);
      v26 = *v23;

      v27 = sub_24ABA5734(v25, v26);
      v29 = v28;

      if ((v29 & 1) == 0)
      {
        v30 = *(v21 + 3);
        v31 = *(v21 + 4);
        __swift_project_boxed_opaque_existential_1(v21, v30);
        (*(v31 + 8))(v27, *(*&v69[v65] + 16), v30, v31);
        if ((*v22)(v8, 1, v68) == 1)
        {
          sub_24AB7C4A4(v8, &qword_27EF95B60, "\b.");
        }

        else
        {
          v32 = v66;
          sub_24AB81E6C(v8, v66, type metadata accessor for FileMetadata);
          sub_24AB81ED4(v32, v67, type metadata accessor for FileMetadata);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v24 = sub_24ABA13B8(0, v24[2] + 1, 1, v24);
          }

          v34 = v24[2];
          v33 = v24[3];
          if (v34 >= v33 >> 1)
          {
            v24 = sub_24ABA13B8((v33 > 1), v34 + 1, 1, v24);
          }

          sub_24AB81F3C(v66, type metadata accessor for FileMetadata);
          v24[2] = v34 + 1;
          sub_24AB81E6C(v67, v24 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v34, type metadata accessor for FileMetadata);
        }
      }

      v23 += 2;
      --v20;
    }

    while (v20);
  }

  else
  {
    _Block_copy(a3);
    v24 = MEMORY[0x277D84F90];
  }

  if (v24[2])
  {
    v35 = v69;
    v36 = *(*&v69[OBJC_IVAR____TtC17FileIndexerDaemon32FileIndexerSpotlightDaemonClient_eventWatcher] + OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_getIndexingState);

    v38 = v63;
    v36(v37);

    v39 = v57;
    sub_24ABABCFC();
    v40 = sub_24ABABCEC();
    v42 = v41;
    (*(v58 + 8))(v39, v59);
    v71[0] = v40;
    v71[1] = v42;
    v43 = sub_24AB82948(v71, &v72);
    v45 = v44;
    v46 = *&v35[OBJC_IVAR____TtC17FileIndexerDaemon32FileIndexerSpotlightDaemonClient_indexHandler + 32];
    v68 = *&v35[OBJC_IVAR____TtC17FileIndexerDaemon32FileIndexerSpotlightDaemonClient_indexHandler + 24];
    v67 = __swift_project_boxed_opaque_existential_1(&v35[OBJC_IVAR____TtC17FileIndexerDaemon32FileIndexerSpotlightDaemonClient_indexHandler], v68);
    v47 = v62;
    sub_24AB81ED4(v38, v62, type metadata accessor for IndexingState);
    v48 = (*(v60 + 80) + 40) & ~*(v60 + 80);
    v49 = (v61 + v48 + 7) & 0xFFFFFFFFFFFFFFF8;
    v50 = swift_allocObject();
    v51 = v70;
    v50[2] = sub_24AB81C44;
    v50[3] = v51;
    v50[4] = v35;
    sub_24AB81E6C(v47, v50 + v48, type metadata accessor for IndexingState);
    v52 = (v50 + v49);
    *v52 = v43;
    v52[1] = v45;
    v53 = *(v46 + 8);

    v54 = v35;
    sub_24AB7FC5C(v43, v45);
    v53(v24, MEMORY[0x277D84F90], v43, v45, sub_24AB81DC4, v50, v68, v46);

    sub_24AB77A9C(v43, v45);
    sub_24AB81F3C(v63, type metadata accessor for IndexingState);
  }

  else
  {

    v56[2]();
  }
}

uint64_t sub_24AB81820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95B00, &qword_24ABAED70);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v30 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v30 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v30 - v17;
  v19 = sub_24ABABC0C();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v30 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24AB81074(a1, a2, *(*(a3 + OBJC_IVAR____TtC17FileIndexerDaemon32FileIndexerSpotlightDaemonClient_eventWatcher) + 16));
  if (v23)
  {
    sub_24ABABB8C();

    (*(v20 + 16))(v18, v22, v19);
    (*(v20 + 56))(v18, 0, 1, v19);
    sub_24AB778E0(v18, v16);
    if ((*(v20 + 48))(v16, 1, v19) == 1)
    {
      v24 = 0;
    }

    else
    {
      v24 = sub_24ABABB9C();
      (*(v20 + 8))(v16, v19);
    }

    (*(v31 + 16))(v31, v24, 0);

    sub_24AB7C4A4(v18, &qword_27EF95B00, &qword_24ABAED70);
    return (*(v20 + 8))(v22, v19);
  }

  else
  {
    (*(v20 + 56))(v13, 1, 1, v19);
    sub_24AB81BB8();
    v25 = swift_allocError();
    *v26 = 1;
    sub_24AB778E0(v13, v10);
    v27 = 0;
    if ((*(v20 + 48))(v10, 1, v19) != 1)
    {
      v27 = sub_24ABABB9C();
      (*(v20 + 8))(v10, v19);
    }

    v28 = sub_24ABABB4C();
    (*(v31 + 16))(v31, v27, v28);

    return sub_24AB7C4A4(v13, &qword_27EF95B00, &qword_24ABAED70);
  }
}

unint64_t sub_24AB81BB8()
{
  result = qword_27EF95908;
  if (!qword_27EF95908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF95908);
  }

  return result;
}

uint64_t sub_24AB81C0C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24AB81C54()
{
  v1 = *(type metadata accessor for IndexingState(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);

  v5 = *(type metadata accessor for FIRoot.State(0) + 20);
  v6 = sub_24ABABD0C();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v0 + v3 + v5, 1, v6))
  {
    (*(v7 + 8))(v0 + v3 + v5, v6);
  }

  v8 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  sub_24AB77A9C(*(v0 + v8), *(v0 + v8 + 8));

  return MEMORY[0x2821FE8E8](v0, v8 + 16, v2 | 7);
}

void sub_24AB81DC4(void *a1)
{
  v3 = *(type metadata accessor for IndexingState(0) - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];

  sub_24AB809F8(a1, v5, v6, v7, v1 + v4, v9, v10);
}

uint64_t sub_24AB81E6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24AB81ED4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24AB81F3C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24AB81FB0()
{
  result = qword_27EF95910;
  if (!qword_27EF95910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF95910);
  }

  return result;
}

uint64_t sub_24AB82004()
{
  v0 = sub_24ABABB9C();
  v1 = sub_24ABABB9C();
  v2 = [v0 fp:v1 relativePathWithRealpath:?];

  if (v2)
  {
    v3 = [v2 pathComponents];
    v4 = sub_24ABABFFC();

    v5 = *(v4 + 16);

    if (v5)
    {
      v6 = [v2 pathComponents];
      v7 = sub_24ABABFFC();

      if (v7[2])
      {
        v9 = v7[4];
        v8 = v7[5];

        v10 = [v2 pathComponents];
        v11 = sub_24ABABFFC();

        v12 = *(v11 + 16);

        if (v12 >= 2)
        {
          if (v9 == 0x68736172542ELL && v8 == 0xE600000000000000)
          {

            v13 = 1;
          }

          else
          {
            v13 = sub_24ABAC58C();
          }

          goto LABEL_11;
        }
      }
    }

    v13 = 0;
LABEL_11:

    return v13 & 1;
  }

  v13 = 0;
  return v13 & 1;
}

void sub_24AB821B8(uint64_t a1, uint64_t a2)
{
  v2 = sub_24ABABB6C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95B00, &qword_24ABAED70);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v25 - v7;
  v9 = sub_24ABABC0C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 56))(v8, 1, 1, v9);
  (*(v3 + 104))(v5, *MEMORY[0x277CC91D8], v2);

  sub_24ABABBFC();
  v13 = sub_24ABABB9C();
  v14 = sub_24ABABB9C();
  v15 = [v13 fp:v14 relativePathWithRealpath:?];

  if (v15)
  {
    v16 = [v15 pathComponents];
    v17 = sub_24ABABFFC();

    v18 = *(v17 + 16);

    if (v18)
    {
      v19 = [v15 pathComponents];
      v20 = sub_24ABABFFC();

      v21 = v20[2];
      if (v21)
      {
        v23 = v20[4];
        v22 = v20[5];
        v24 = v23 == 0x68736172542ELL && v22 == 0xE600000000000000;
        if (v24 || (sub_24ABAC58C()) && (v21 == 1 || v21 >= 3))
        {
          (*(v10 + 8))(v12, v9);
        }

        else
        {

          if (v23 == 0x786F626E49 && v22 == 0xE500000000000000)
          {

            (*(v10 + 8))(v12, v9);
          }

          else
          {
            sub_24ABAC58C();

            (*(v10 + 8))(v12, v9);
          }
        }
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      (*(v10 + 8))(v12, v9);
    }
  }

  else
  {
    (*(v10 + 8))(v12, v9);
  }
}

id sub_24AB825B4(uint64_t a1, unint64_t a2)
{
  v28[1] = *MEMORY[0x277D85DE8];
  v4 = sub_24ABABC0C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24ABABB8C();
  v8 = sub_24ABABB9C();
  (*(v5 + 8))(v7, v4);
  v9 = *MEMORY[0x277CBE890];
  v27 = 0;
  v28[0] = 0;
  LODWORD(v4) = [v8 getResourceValue:v28 forKey:v9 error:&v27];
  v10 = v28[0];
  v11 = v27;
  if (v4)
  {
    if (v10)
    {
      swift_unknownObjectRetain_n();
      objc_opt_self();
      v12 = swift_dynamicCastObjCClass();
      if (v12)
      {
        v13 = [v12 BOOLValue];
        swift_unknownObjectRelease_n();

        return v13;
      }

      swift_unknownObjectRelease_n();
    }

    else
    {
    }
  }

  else
  {
    v15 = v11;
    swift_unknownObjectRetain();
    v16 = sub_24ABABB5C();

    swift_willThrow();
    if (qword_27EF95308 != -1)
    {
      swift_once();
    }

    v17 = sub_24ABABD8C();
    __swift_project_value_buffer(v17, qword_27EF95FD8);

    v18 = v16;
    v19 = sub_24ABABD6C();
    v20 = sub_24ABAC11C();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v28[0] = v23;
      *v21 = 136315394;
      *(v21 + 4) = sub_24AB760CC(a1, a2, v28);
      *(v21 + 12) = 2112;
      v24 = v16;
      v25 = _swift_stdlib_bridgeErrorToNSError();
      *(v21 + 14) = v25;
      *v22 = v25;
      _os_log_impl(&dword_24AB6F000, v19, v20, "isPackage(%s) failed %@", v21, 0x16u);
      sub_24AB7C4A4(v22, &unk_27EF953F0, &unk_24ABAD6A0);
      MEMORY[0x24C229EC0](v22, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v23);
      MEMORY[0x24C229EC0](v23, -1, -1);
      MEMORY[0x24C229EC0](v21, -1, -1);

      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }

  return 0;
}

unint64_t sub_24AB82948(uint64_t a1, uint64_t a2)
{
  v8[3] = MEMORY[0x277D838B0];
  v8[4] = MEMORY[0x277CC9C18];
  v8[0] = a1;
  v8[1] = a2;
  v2 = __swift_project_boxed_opaque_existential_1(v8, MEMORY[0x277D838B0]);
  v3 = *v2;
  if (*v2 && (v4 = v2[1], v5 = v4 - v3, v4 != v3))
  {
    if (v5 <= 14)
    {
      v6 = sub_24AB90AE4(v3, v4);
    }

    else if (v5 >= 0x7FFFFFFF)
    {
      v6 = sub_24AB90C28(v3, v4);
    }

    else
    {
      v6 = sub_24AB90BA4(v3, v4);
    }
  }

  else
  {
    v6 = 0;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v8);
  return v6;
}

uint64_t sub_24AB82A04@<X0>(dev_t a1@<W0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF95A20, &unk_24ABAF3F0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v24 - v5;
  v7 = FSEventsCopyUUIDForDevice(a1);
  if (v7)
  {
    v8 = v7;
    v9 = CFUUIDCreateString(0, v7);
    if (v9)
    {
      v10 = v9;
      sub_24ABABEBC();
      sub_24ABABCCC();

      v11 = sub_24ABABD0C();
      v12 = *(v11 - 8);
      result = (*(v12 + 48))(v6, 1, v11);
      if (result == 1)
      {
        __break(1u);
      }

      else
      {

        (*(v12 + 32))(a2, v6, v11);
        return (*(v12 + 56))(a2, 0, 1, v11);
      }

      return result;
    }

    if (qword_27EF95308 != -1)
    {
      swift_once();
    }

    v18 = sub_24ABABD8C();
    __swift_project_value_buffer(v18, qword_27EF95FD8);
    v19 = sub_24ABABD6C();
    v20 = sub_24ABAC11C();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 67109120;
      *(v21 + 4) = a1;
      _os_log_impl(&dword_24AB6F000, v19, v20, "failed to get UUID string for device %d", v21, 8u);
      MEMORY[0x24C229EC0](v21, -1, -1);
    }
  }

  else
  {
    if (qword_27EF95308 != -1)
    {
      swift_once();
    }

    v14 = sub_24ABABD8C();
    __swift_project_value_buffer(v14, qword_27EF95FD8);
    v15 = sub_24ABABD6C();
    v16 = sub_24ABAC11C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 67109120;
      *(v17 + 4) = a1;
      _os_log_impl(&dword_24AB6F000, v15, v16, "failed to get stream UUID for device %d", v17, 8u);
      MEMORY[0x24C229EC0](v17, -1, -1);
    }
  }

  v22 = sub_24ABABD0C();
  v23 = *(*(v22 - 8) + 56);

  return v23(a2, 1, 1, v22);
}

uint64_t sub_24AB82D58(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if ((sub_24ABABF9C() & 1) == 0)
  {
    return 0;
  }

  if (sub_24AB825B4(a3, a4))
  {

    return a3;
  }

  v8 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v8 = a3;
  }

  v9 = 7;
  if (((a4 >> 60) & ((a3 & 0x800000000000000) == 0)) != 0)
  {
    v9 = 11;
  }

  v10 = v9 | (v8 << 16);

  sub_24AB90CA4(v10, a1, a2);

  v11 = sub_24ABAC21C();

  v12 = [v11 pathComponents];

  v13 = sub_24ABABFFC();
  v14 = *(v13 + 16);

  v16 = v13 + 40;
  v17 = -v14;
  v18 = -1;
  while (1)
  {
    if (v17 + v18 == -1)
    {

      return 0;
    }

    if (++v18 >= *(v13 + 16))
    {
      break;
    }

    v19 = v16 + 16;

    v20 = sub_24ABABE8C();

    v21 = sub_24ABABE8C();

    v22 = [v20 stringByAppendingPathComponent_];

    a3 = sub_24ABABEBC();
    v24 = v23;

    result = sub_24AB825B4(a3, v24);
    v16 = v19;
    if (result)
    {

      return a3;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24AB82F80()
{
  v1 = v0;
  if (qword_27EF95308 != -1)
  {
    swift_once();
  }

  v2 = sub_24ABABD8C();
  __swift_project_value_buffer(v2, qword_27EF95FD8);

  v3 = sub_24ABABD6C();
  v4 = sub_24ABAC0FC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15 = v6;
    *v5 = 136315394;
    v7 = v1[4];
    v8 = v1[5];

    v9 = sub_24AB760CC(v7, v8, &v15);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2048;
    *(v5 + 14) = v1[3];

    _os_log_impl(&dword_24AB6F000, v3, v4, "begin transaction %s) count %ld", v5, 0x16u);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    MEMORY[0x24C229EC0](v6, -1, -1);
    MEMORY[0x24C229EC0](v5, -1, -1);
  }

  else
  {
  }

  v11 = MEMORY[0x28223BE20](v10);
  MEMORY[0x28223BE20](v11);
  sub_24ABABD1C();
  v12 = sub_24AB832C0(v1);
  v13 = MEMORY[0x28223BE20](v12);
  MEMORY[0x28223BE20](v13);
  return sub_24ABABD1C();
}

void *sub_24AB832C0(void *result)
{
  v1 = result;
  v2 = result[3];
  if (!v2)
  {
    sub_24ABAC2FC();

    v3 = v1[4];
    v4 = v1[5];

    MEMORY[0x24C228EB0](v3, v4);

    sub_24ABABECC();

    v5 = os_transaction_create();

    v1[2] = v5;
    result = swift_unknownObjectRelease();
    v2 = v1[3];
  }

  v6 = __OFADD__(v2, 1);
  v7 = v2 + 1;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    v1[3] = v7;
  }

  return result;
}

uint64_t sub_24AB833A8()
{
  v1 = v0;
  if (qword_27EF95308 != -1)
  {
    swift_once();
  }

  v2 = sub_24ABABD8C();
  __swift_project_value_buffer(v2, qword_27EF95FD8);

  v3 = sub_24ABABD6C();
  v4 = sub_24ABAC0FC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15 = v6;
    *v5 = 136315394;
    v7 = v1[4];
    v8 = v1[5];

    v9 = sub_24AB760CC(v7, v8, &v15);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2048;
    *(v5 + 14) = v1[3];

    _os_log_impl(&dword_24AB6F000, v3, v4, "end transaction %s count %ld", v5, 0x16u);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    MEMORY[0x24C229EC0](v6, -1, -1);
    MEMORY[0x24C229EC0](v5, -1, -1);
  }

  else
  {
  }

  v11 = MEMORY[0x28223BE20](v10);
  MEMORY[0x28223BE20](v11);
  sub_24ABABD1C();
  v12 = sub_24AB836E8(v1);
  v13 = MEMORY[0x28223BE20](v12);
  MEMORY[0x28223BE20](v13);
  return sub_24ABABD1C();
}

uint64_t sub_24AB836E8(uint64_t result)
{
  if (*(result + 16))
  {
    v1 = result;
    result = sub_24ABABD1C();
    v2 = *(v1 + 24);
    v3 = __OFSUB__(v2, 1);
    v4 = v2 - 1;
    if (v3)
    {
      __break(1u);
    }

    else
    {
      *(v1 + 24) = v4;
      if (!v4)
      {
        *(v1 + 16) = 0;
        return swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

uint64_t sub_24AB837A0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t ScanStatus.description.getter(uint64_t a1)
{
  if (a1 <= 1)
  {
    if (!a1)
    {
      return 0x6C616974696E69;
    }

    if (a1 == 1)
    {
      return 0x646575657571;
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        return 0x676E696E6E7572;
      case 3:
        return 0x646570706F7473;
      case 4:
        return 0x6574656C706D6F63;
    }
  }

  result = sub_24ABAC59C();
  __break(1u);
  return result;
}

uint64_t sub_24AB838EC()
{
  v1 = *v0;
  sub_24ABAC62C();
  MEMORY[0x24C2295C0](v1);
  return sub_24ABAC64C();
}

uint64_t sub_24AB83960(uint64_t a1)
{
  v2 = *v1;
  sub_24ABAC62C();
  MEMORY[0x24C2295C0](v2);
  return sub_24ABAC64C();
}

unint64_t sub_24AB839A4@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_24AB90CF0(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_24AB839D8(uint64_t a1)
{
  v2 = *v1;
  if (*v1 > 1)
  {
    switch(v2)
    {
      case 2:
        return 0x676E696E6E7572;
      case 3:
        return 0x646570706F7473;
      case 4:
        return 0x6574656C706D6F63;
    }

    goto LABEL_13;
  }

  if (!v2)
  {
    return 0x6C616974696E69;
  }

  if (v2 != 1)
  {
LABEL_13:
    result = sub_24ABAC59C();
    __break(1u);
    return result;
  }

  return 0x646575657571;
}

uint64_t RootInfo.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24ABABC0C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t RootInfo.bundleID.getter()
{
  v1 = *(v0 + *(type metadata accessor for RootInfo(0) + 20));

  return v1;
}

uint64_t RootInfo.init(url:bundleID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_24ABABC0C();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  result = type metadata accessor for RootInfo(0);
  v10 = (a4 + *(result + 20));
  *v10 = a2;
  v10[1] = a3;
  return result;
}

uint64_t static RootInfo.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (sub_24ABABBBC())
  {
    v4 = *(type metadata accessor for RootInfo(0) + 20);
    v5 = (a1 + v4);
    v6 = *(a1 + v4 + 8);
    v7 = (a2 + v4);
    v8 = v7[1];
    if (v6)
    {
      if (v8)
      {
        v9 = *v5 == *v7 && v6 == v8;
        if (v9 || (sub_24ABAC58C() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v8)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_24AB83C60()
{
  if (*v0)
  {
    return 0x4449656C646E7562;
  }

  else
  {
    return 7107189;
  }
}

uint64_t sub_24AB83C94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 7107189 && a2 == 0xE300000000000000;
  if (v5 || (sub_24ABAC58C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x4449656C646E7562 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24ABAC58C();

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

uint64_t sub_24AB83D70(uint64_t a1)
{
  v2 = sub_24AB90D20();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24AB83DAC(uint64_t a1)
{
  v2 = sub_24AB90D20();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RootInfo.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95920, &qword_24ABAE950);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24AB90D20();
  sub_24ABAC67C();
  v8[15] = 0;
  sub_24ABABC0C();
  sub_24AB90D74(&qword_27EF95500, MEMORY[0x277CC9260], MEMORY[0x277CC9268]);
  sub_24ABAC52C();
  if (!v1)
  {
    type metadata accessor for RootInfo(0);
    v8[14] = 1;
    sub_24ABAC4EC();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t RootInfo.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = sub_24ABABC0C();
  v25 = *(v4 - 8);
  v26 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF95938, &qword_24ABAE958);
  v24 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v8 = &v22 - v7;
  v9 = type metadata accessor for RootInfo(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24AB90D20();
  sub_24ABAC66C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v22 = v11;
  v12 = v24;
  v13 = v25;
  v29 = 0;
  sub_24AB90D74(&qword_27EF95460, MEMORY[0x277CC9260], MEMORY[0x277CC9280]);
  v14 = v26;
  sub_24ABAC48C();
  (*(v13 + 32))(v22, v6, v14);
  v28 = 1;
  v15 = sub_24ABAC44C();
  v17 = v16;
  (*(v12 + 8))(v8, v27);
  v19 = v22;
  v18 = v23;
  v20 = &v22[*(v9 + 20)];
  *v20 = v15;
  v20[1] = v17;
  sub_24AB919A0(v19, v18, type metadata accessor for RootInfo);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return sub_24AB91A08(v19, type metadata accessor for RootInfo);
}

uint64_t sub_24AB842FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_24ABABBBC())
  {
    v6 = *(a3 + 20);
    v7 = (a1 + v6);
    v8 = *(a1 + v6 + 8);
    v9 = (a2 + v6);
    v10 = v9[1];
    if (v8)
    {
      if (v10)
      {
        v11 = *v7 == *v9 && v8 == v10;
        if (v11 || (sub_24ABAC58C() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v10)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_24AB843B0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95AB8, &unk_24ABAED60);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24AB918B0();
  sub_24ABAC67C();
  LOBYTE(v12) = 0;
  sub_24ABAC55C();
  if (!v2)
  {
    v9 = type metadata accessor for FIRoot.State(0);
    LOBYTE(v12) = 1;
    sub_24ABABD0C();
    sub_24AB90D74(&qword_27EF95AC0, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
    sub_24ABAC4FC();
    v12 = *(v3 + *(v9 + 24));
    HIBYTE(v11) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95A88, &qword_24ABAED50);
    sub_24AB91A68(&qword_27EF95AC8, &qword_27EF95AD0, &unk_24ABAD5C8, MEMORY[0x277D83948]);
    sub_24ABAC52C();
    v12 = *(v3 + *(v9 + 28));
    HIBYTE(v11) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95AA0, &qword_24ABAED58);
    sub_24AB91904(&qword_27EF95AD8, &unk_27EF95AE0, &protocol conformance descriptor for RootInfo, MEMORY[0x277D83948]);
    sub_24ABAC52C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_24AB8468C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF95A20, &unk_24ABAF3F0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v23 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95A70, &qword_24ABAED48);
  v25 = *(v7 - 8);
  v26 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v23 - v8;
  v10 = type metadata accessor for FIRoot.State(0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = (&v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = v11;
  v14 = *(v11 + 20);
  v15 = sub_24ABABD0C();
  v16 = *(*(v15 - 8) + 56);
  v28 = v14;
  v16(v13 + v14, 1, 1, v15);
  v17 = a1[3];
  v29 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_24AB918B0();
  sub_24ABAC66C();
  if (v2)
  {
    v19 = v28;
    __swift_destroy_boxed_opaque_existential_0Tm(v29);
    return sub_24AB7C4A4(v13 + v19, &unk_27EF95A20, &unk_24ABAF3F0);
  }

  else
  {
    LOBYTE(v31) = 0;
    v18 = v26;
    *v13 = sub_24ABAC4BC();
    LOBYTE(v31) = 1;
    sub_24AB90D74(&qword_27EF95A80, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
    sub_24ABAC45C();
    v20 = v27;
    sub_24AB779B0(v6, v13 + v28, &unk_27EF95A20, &unk_24ABAF3F0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95A88, &qword_24ABAED50);
    v30 = 2;
    sub_24AB91A68(&qword_27EF95A90, &qword_27EF95A98, &unk_24ABAD5F0, MEMORY[0x277D83978]);
    sub_24ABAC48C();
    v21 = v25;
    *(v13 + *(v20 + 24)) = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95AA0, &qword_24ABAED58);
    v30 = 3;
    sub_24AB91904(&qword_27EF95AA8, &qword_27EF95AB0, &protocol conformance descriptor for RootInfo, MEMORY[0x277D83978]);
    sub_24ABAC48C();
    (*(v21 + 8))(v9, v18);
    *(v13 + *(v20 + 28)) = v31;
    sub_24AB919A0(v13, v24, type metadata accessor for FIRoot.State);
    __swift_destroy_boxed_opaque_existential_0Tm(v29);
    return sub_24AB91A08(v13, type metadata accessor for FIRoot.State);
  }
}

uint64_t sub_24AB84B84()
{
  v1 = 0x6E6576457473616CLL;
  v2 = 0x736E616373;
  if (*v0 != 2)
  {
    v2 = 0x73746F6F72;
  }

  if (*v0)
  {
    v1 = 0x55556D6165727473;
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

uint64_t sub_24AB84C04@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24AB91D78(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24AB84C2C(uint64_t a1)
{
  v2 = sub_24AB918B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24AB84C68(uint64_t a1)
{
  v2 = sub_24AB918B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24AB84CD4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = type metadata accessor for RootInfo(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v26 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24ABABC0C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = type metadata accessor for FIRoot.State(0);
  v13 = *(a1 + *(result + 28));
  v14 = *(v13 + 16);
  v15 = MEMORY[0x277D84F90];
  if (v14)
  {
    v22 = a2;
    v23 = v2;
    v27 = MEMORY[0x277D84F90];
    sub_24ABA18DC(0, v14, 0);
    v15 = v27;
    v16 = v13 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v17 = *(v6 + 72);
    v24 = v9 + 32;
    v25 = v17;
    do
    {
      v18 = v26;
      sub_24AB919A0(v16, v26, type metadata accessor for RootInfo);
      (*(v9 + 16))(v11, v18, v8);
      sub_24AB91A08(v18, type metadata accessor for RootInfo);
      v27 = v15;
      v20 = *(v15 + 16);
      v19 = *(v15 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_24ABA18DC((v19 > 1), v20 + 1, 1);
        v15 = v27;
      }

      *(v15 + 16) = v20 + 1;
      result = (*(v9 + 32))(v15 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v20, v11, v8);
      v16 += v25;
      --v14;
    }

    while (v14);
    a2 = v22;
  }

  *a2 = v15;
  return result;
}

uint64_t sub_24AB84F5C@<X0>(char *a1@<X8>)
{
  v2 = type metadata accessor for FIRoot.State(0);
  v3 = *(v2 - 1);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95B70, &qword_24ABAF540);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v16 - v10;
  (*(v3 + 56))(&v16 - v10, 1, 1, v2);
  sub_24AB94828(v11, v9, &qword_27EF95B70, &qword_24ABAF540);
  if ((*(v3 + 48))(v9, 1, v2) == 1)
  {
    sub_24AB7C4A4(v9, &qword_27EF95B70, &qword_24ABAF540);
    v12 = v2[5];
    v13 = sub_24ABABD0C();
    (*(*(v13 - 8) + 56))(&a1[v12], 1, 1, v13);
    result = sub_24AB7C4A4(v11, &qword_27EF95B70, &qword_24ABAF540);
    *a1 = -1;
    v15 = MEMORY[0x277D84F90];
    *&a1[v2[6]] = MEMORY[0x277D84F90];
    *&a1[v2[7]] = v15;
  }

  else
  {
    sub_24AB7C4A4(v11, &qword_27EF95B70, &qword_24ABAF540);
    sub_24AB91CDC(v9, v5, type metadata accessor for FIRoot.State);
    return sub_24AB91CDC(v5, a1, type metadata accessor for FIRoot.State);
  }

  return result;
}

uint64_t sub_24AB851C8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF95B30, &unk_24ABAEDA0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v21[-v3];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95A18, &qword_24ABAEB98);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95B50, &qword_24ABAEDB8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v21[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95A00, &qword_24ABAEB60);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v21[-v14];
  v16 = OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_batchContinuation;
  swift_beginAccess();
  if (!(*(v13 + 48))(v1 + v16, 1, v12))
  {
    (*(v13 + 16))(v15, v1 + v16, v12);
    v22 = MEMORY[0x277D84F90];
    sub_24ABAC06C();
    (*(v13 + 8))(v15, v12);
  }

  (*(v13 + 56))(v11, 1, 1, v12);
  swift_beginAccess();
  sub_24AB779B0(v11, v1 + v16, &qword_27EF95B50, &qword_24ABAEDB8);
  swift_endAccess();
  v17 = OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_scanQueuedContinuation;
  swift_beginAccess();
  if (!(*(v6 + 48))(v1 + v17, 1, v5))
  {
    (*(v6 + 16))(v8, v1 + v17, v5);
    v21[8] = 0;
    sub_24ABAC06C();
    (*(v6 + 8))(v8, v5);
  }

  (*(v6 + 56))(v4, 1, 1, v5);
  swift_beginAccess();
  sub_24AB779B0(v4, v1 + v17, &unk_27EF95B30, &unk_24ABAEDA0);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_0Tm((v1 + 24));
  __swift_destroy_boxed_opaque_existential_0Tm((v1 + 64));

  sub_24AB7C4A4(v1 + v16, &qword_27EF95B50, &qword_24ABAEDB8);

  v18 = v1 + OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_state;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF95D80, &unk_24ABAEBA0);
  sub_24AB91A08(v18 + *(v19 + 28), type metadata accessor for FIRoot.State);

  sub_24AB7C4A4(v1 + v17, &unk_27EF95B30, &unk_24ABAEDA0);

  __swift_destroy_boxed_opaque_existential_0Tm((v1 + OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_indexingStateHandler));

  return v1;
}

uint64_t sub_24AB856A8()
{
  sub_24AB851C8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

id sub_24AB85700(uint64_t a1)
{
  v48[2] = *MEMORY[0x277D85DE8];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF95A20, &unk_24ABAF3F0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v41 - v4;
  v6 = type metadata accessor for RootInfo(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = v1;
  v10 = (v1 + OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_state);
  os_unfair_lock_lock((v1 + OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_state));
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF95D80, &unk_24ABAEBA0) + 28);
  v45 = v10;
  v12 = (&v10->_os_unfair_lock_opaque + v11);
  sub_24AB919A0(a1, v9, type metadata accessor for RootInfo);
  v13 = type metadata accessor for FIRoot.State(0);
  v14 = *(v13 + 28);
  v15 = *(v12 + v14);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v46 = v12;
  *(v12 + v14) = v15;
  v42 = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v15 = sub_24ABA150C(0, v15[2] + 1, 1, v15);
    *(v46 + v14) = v15;
  }

  v18 = v15[2];
  v17 = v15[3];
  if (v18 >= v17 >> 1)
  {
    v15 = sub_24ABA150C((v17 > 1), v18 + 1, 1, v15);
    *(v46 + v42) = v15;
  }

  v15[2] = v18 + 1;
  sub_24AB91CDC(v9, v15 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v18, type metadata accessor for RootInfo);
  v44 = *(v47 + 104);
  sub_24ABABBEC();
  v19 = sub_24ABABE8C();

  v20 = v46;
  v43 = *v46;
  sub_24AB94828(v46 + *(v13 + 20), v5, &unk_27EF95A20, &unk_24ABAF3F0);
  v21 = sub_24ABABD0C();
  v22 = *(v21 - 8);
  v23 = 0;
  if ((*(v22 + 48))(v5, 1, v21) != 1)
  {
    v23 = sub_24ABABCDC();
    (*(v22 + 8))(v5, v21);
  }

  v48[0] = 0x692073746E657665;
  v48[1] = 0xEA0000000000206ELL;
  v24 = a1;
  v25 = sub_24ABABB9C();
  v26 = [v25 fp_shortDescription];

  v27 = sub_24ABABEBC();
  v29 = v28;

  MEMORY[0x24C228EB0](v27, v29);

  v30 = sub_24ABABE8C();

  v31 = [v44 subscribeToEventsAtPath:v19 fd:0xFFFFFFFFLL sinceEventID:v43 streamUUID:v23 ignoreOwnEvents:0 delegate:v47 purpose:v30];

  v32 = v45;
  os_unfair_lock_unlock(v45);
  v48[0] = 0;
  if ([v31 activateWithError_])
  {
    v33 = v48[0];
  }

  else
  {
    v34 = v48[0];
    sub_24ABABB5C();

    swift_willThrow();
    os_unfair_lock_lock(v32);
    MEMORY[0x28223BE20](v35);
    v40 = v24;
    v36 = v42;
    v37 = sub_24ABA1D7C(sub_24AB91D58, (&v41 - 4));
    v38 = *(*(v20 + v36) + 16);
    if (v38 < v37)
    {
      __break(1u);
    }

    sub_24ABA2430(v37, v38);
    os_unfair_lock_unlock(v32);
    swift_willThrow();
  }

  return v31;
}

uint64_t sub_24AB85C00(uint64_t a1, uint64_t a2)
{
  if (sub_24ABABBBC())
  {
    v4 = *(type metadata accessor for RootInfo(0) + 20);
    v5 = (a1 + v4);
    v6 = *(a1 + v4 + 8);
    v7 = (a2 + v4);
    v8 = v7[1];
    if (v6)
    {
      if (v8)
      {
        v9 = *v5 == *v7 && v6 == v8;
        if (v9 || (sub_24ABAC58C() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v8)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_24AB85C90@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for RootInfo(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  if (v9)
  {
    v17 = v6;
    v18 = a2;
    v10 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v11 = *(v5 + 72);
    while (1)
    {
      sub_24AB919A0(v10, v8, type metadata accessor for RootInfo);
      v12 = sub_24ABABB9C();
      v13 = sub_24ABABB9C();
      v14 = [v12 fp:v13 relativePathWithRealpath:?];

      if (v14)
      {
        break;
      }

      sub_24AB91A08(v8, type metadata accessor for RootInfo);
      v10 += v11;
      if (!--v9)
      {
        v15 = 1;
        a2 = v18;
        goto LABEL_8;
      }
    }

    a2 = v18;
    sub_24AB91CDC(v8, v18, type metadata accessor for RootInfo);
    v15 = 0;
LABEL_8:
    v6 = v17;
  }

  else
  {
    v15 = 1;
  }

  return (*(v5 + 56))(a2, v15, 1, v6);
}

void sub_24AB85E60(_DWORD *a1)
{
  v140 = a1;
  v2 = sub_24ABABDFC();
  v131 = *(v2 - 8);
  v132 = v2;
  MEMORY[0x28223BE20](v2);
  v129 = &v117 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = sub_24ABABE1C();
  v128 = *(v130 - 8);
  MEMORY[0x28223BE20](v130);
  v127 = &v117 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95B00, &qword_24ABAED70);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v134 = &v117 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v137 = &v117 - v8;
  v9 = sub_24ABABC0C();
  v141 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v135 = &v117 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v133 = &v117 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v138 = &v117 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v139 = &v117 - v17;
  MEMORY[0x28223BE20](v16);
  v136 = (&v117 - v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95C40, &qword_24ABAF110);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v117 - v20;
  v22 = type metadata accessor for RootInfo(0);
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = (&v117 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = sub_24ABABE2C();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = (&v117 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = *(v1 + OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_scanQueue);
  *v29 = v30;
  (*(v27 + 104))(v29, *MEMORY[0x277D85200], v26);
  v31 = v30;
  LOBYTE(v30) = sub_24ABABE3C();
  (*(v27 + 8))(v29, v26);
  if ((v30 & 1) == 0)
  {
    __break(1u);
LABEL_25:
    swift_once();
LABEL_4:
    v37 = sub_24ABABD8C();
    __swift_project_value_buffer(v37, qword_27EF95FD8);
    v38 = v135;
    v25[2](v135, v23, v9);
    v39 = sub_24ABABD6C();
    v40 = sub_24ABAC11C();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      aBlock[0] = v42;
      *v41 = 136315138;
      sub_24AB90D74(&qword_27EF95B40, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v43 = sub_24ABAC56C();
      v45 = v44;
      (v25[1])(v38, v9);
      v46 = sub_24AB760CC(v43, v45, aBlock);

      *(v41 + 4) = v46;
      _os_log_impl(&dword_24AB6F000, v39, v40, "can't scan a url not in one of our roots: %s", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v42);
      MEMORY[0x24C229EC0](v42, -1, -1);
      MEMORY[0x24C229EC0](v41, -1, -1);
    }

    else
    {

      (v25[1])(v38, v9);
    }

    return;
  }

  v32 = (v1 + OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_state);
  os_unfair_lock_lock((v1 + OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_state));
  v33 = v32 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF95D80, &unk_24ABAEBA0) + 28);
  type metadata accessor for FIRoot(0);
  v34 = type metadata accessor for FIRoot.State(0);
  v35 = v140;
  sub_24AB85C90(*&v33[*(v34 + 28)], v21);
  os_unfair_lock_unlock(v32);
  v36 = v23[6](v21, 1, v22);
  v23 = v35;
  if (v36 == 1)
  {
    sub_24AB7C4A4(v21, &qword_27EF95C40, &qword_24ABAF110);
    v25 = v141;
    if (qword_27EF95308 == -1)
    {
      goto LABEL_4;
    }

    goto LABEL_25;
  }

  v121 = v34;
  v122 = v33;
  sub_24AB91CDC(v21, v25, type metadata accessor for RootInfo);
  v123 = v32;
  os_unfair_lock_lock(v32);
  v47 = v9;
  v48 = v141;
  v49 = v141 + 2;
  v50 = v141[2];
  v51 = v136;
  v50(v136, v23, v47);
  v52 = v137;
  v50(v137, v25, v47);
  (v48[7])(v52, 0, 1, v47);
  v126 = v1;
  v120 = *(v1 + 16);
  v53 = *(v22 + 20);
  v135 = v25;
  v54 = v25 + v53;
  v55 = *(v54 + 1);
  v119 = *v54;
  v125 = v49;
  v124 = v50;
  v50(v139, v51, v47);
  v56 = v134;
  sub_24AB94828(v52, v134, &qword_27EF95B00, &qword_24ABAED70);
  if ((v48[6])(v56, 1, v47) == 1)
  {
    __break(1u);
  }

  else
  {
    v118 = v48[4];
    v118(v138, v56, v47);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95B48, &qword_24ABAEDB0);
    v57 = swift_allocObject();
    *(v57 + 16) = xmmword_24ABAE940;

    v58 = v51;
    v59 = sub_24ABABBEC();
    v61 = v60;
    type metadata accessor for DirectoryLister();
    v62 = swift_allocObject();
    *(v62 + 16) = v59;
    *(v62 + 24) = v61;
    *(v62 + 72) = 64;
    *(v62 + 32) = 0u;
    *(v62 + 48) = 0u;
    *(v62 + 64) = 1;
    v63 = v120;
    *(v62 + 80) = v120;
    *(v62 + 88) = v119;
    *(v62 + 96) = v55;
    *(v57 + 32) = v62;
    type metadata accessor for TreeLister(0);
    v64 = swift_allocObject();
    v65 = OBJC_IVAR____TtC17FileIndexerDaemon10TreeLister_directories;
    sub_24AB7C4A4(v52, &qword_27EF95B00, &qword_24ABAED70);
    v66 = v48[1];
    v141 = v48 + 1;
    v137 = v66;
    (v66)(v58, v47);
    *(v64 + v65) = MEMORY[0x277D84F90];
    v67 = v118;
    v118((v64 + OBJC_IVAR____TtC17FileIndexerDaemon10TreeLister_url), v139, v47);
    v67(v64 + OBJC_IVAR____TtC17FileIndexerDaemon10TreeLister_rootURL, v138, v47);
    v68 = OBJC_IVAR____TtC17FileIndexerDaemon10TreeLister_directories;
    v69 = swift_beginAccess();
    *(v64 + v68) = v57;
    *(v64 + OBJC_IVAR____TtC17FileIndexerDaemon10TreeLister_deviceID) = v63;
    v70 = *(v121 + 24);
    v71 = v122;
    MEMORY[0x24C228F60](v69);
    v72 = v47;
    if (*((*&v71[v70] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v71[v70] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_24ABAC01C();
    }

    sub_24ABAC02C();
    v73 = *&v71[v70];
    if (v73 >> 62)
    {
      v74 = sub_24ABAC3DC();
    }

    else
    {
      v74 = *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v75 = v140;
    v76 = v124;
    os_unfair_lock_unlock(v123);
    if (qword_27EF95308 != -1)
    {
      swift_once();
    }

    v77 = sub_24ABABD8C();
    __swift_project_value_buffer(v77, qword_27EF95FD8);
    v78 = v133;
    v76(v133, v75, v47);
    v79 = sub_24ABABD6C();
    v80 = sub_24ABAC0FC();
    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      v140 = v81;
      v141 = swift_slowAlloc();
      aBlock[0] = v141;
      *v81 = 136315138;
      v82 = sub_24ABABB9C();
      v83 = v74;
      v84 = v78;
      v85 = [v82 fp_shortDescription];

      v86 = sub_24ABABEBC();
      v87 = v72;
      v89 = v88;

      v90 = v84;
      v74 = v83;
      (v137)(v90, v87);
      v91 = sub_24AB760CC(v86, v89, aBlock);

      v92 = v140;
      *(v140 + 1) = v91;
      v93 = v92;
      _os_log_impl(&dword_24AB6F000, v79, v80, "Added scan for %s", v92, 0xCu);
      v94 = v141;
      __swift_destroy_boxed_opaque_existential_0Tm(v141);
      MEMORY[0x24C229EC0](v94, -1, -1);
      MEMORY[0x24C229EC0](v93, -1, -1);
    }

    else
    {

      (v137)(v78, v72);
    }

    v95 = v126;
    v96 = sub_24ABABBBC();
    if (v96)
    {
      v97 = [*(v95 + 104) delegationQueue];
      aBlock[4] = sub_24AB91D44;
      aBlock[5] = v95;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_24AB9AA08;
      aBlock[3] = &block_descriptor_153;
      v98 = _Block_copy(aBlock);

      v99 = v127;
      sub_24ABABE0C();
      v142 = MEMORY[0x277D84F90];
      sub_24AB90D74(&unk_27EF95DB0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF95AF0, &unk_24ABAF2C0);
      sub_24AB94408(&qword_27EF95DC0, &unk_27EF95AF0, &unk_24ABAF2C0);
      v100 = v129;
      v101 = v132;
      sub_24ABAC28C();
      MEMORY[0x24C229110](0, v99, v100, v98);
      _Block_release(v98);

      (*(v131 + 8))(v100, v101);
      (*(v128 + 8))(v99, v130);
    }

    if (v74 == 1 || (v105 = MEMORY[0x28223BE20](v96), *(&v117 - 2) = v95, MEMORY[0x28223BE20](v105), *(&v117 - 2) = v95, v106 = sub_24ABABD1C(), v107 = OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot__scanStatus, v108 = *(v95 + OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot__scanStatus), v109 = MEMORY[0x28223BE20](v106), *(&v117 - 2) = v95, MEMORY[0x28223BE20](v109), *(&v117 - 2) = v95, v110 = sub_24ABABD1C(), v108 != 2) && (v111 = MEMORY[0x28223BE20](v110), *(&v117 - 2) = v95, MEMORY[0x28223BE20](v111), *(&v117 - 2) = v95, v112 = sub_24ABABD1C(), v113 = *(v95 + v107), v114 = MEMORY[0x28223BE20](v112), *(&v117 - 2) = v95, MEMORY[0x28223BE20](v114), *(&v117 - 2) = v95, v96 = sub_24ABABD1C(), v113 != 3))
    {
      v102 = MEMORY[0x28223BE20](v96);
      *(&v117 - 2) = v95;
      MEMORY[0x28223BE20](v102);
      *(&v117 - 2) = v95;
      v103 = sub_24ABABD1C();
      *(v95 + OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot__scanStatus) = 1;
      v104 = MEMORY[0x28223BE20](v103);
      *(&v117 - 2) = v95;
      MEMORY[0x28223BE20](v104);
      *(&v117 - 2) = v95;
      sub_24ABABD1C();
    }

    v115 = *(v95 + OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_requestStartScanning);

    v115(v116);

    sub_24AB91A08(v135, type metadata accessor for RootInfo);
  }
}

uint64_t sub_24AB8701C(uint64_t a1)
{
  v2 = v1;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95A18, &qword_24ABAEB98);
  v4 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v24 = &v24 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF95B30, &unk_24ABAEDA0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v26 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - v9;
  v11 = sub_24ABABC0C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = *(v2 + OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_scanQueue);
  (*(v12 + 16))(&v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v11);
  v15 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v2;
  (*(v12 + 32))(v16 + v15, &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
  v17 = swift_allocObject();
  *(v17 + 16) = sub_24AB94E2C;
  *(v17 + 24) = v16;
  aBlock[4] = sub_24AB94E34;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24AB87488;
  aBlock[3] = &block_descriptor_305;
  v18 = _Block_copy(aBlock);

  dispatch_sync(v14, v18);
  _Block_release(v18);
  LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

  if (v14)
  {
    __break(1u);
  }

  else
  {
    v20 = OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_scanQueuedContinuation;
    swift_beginAccess();
    sub_24AB94828(v2 + v20, v10, &unk_27EF95B30, &unk_24ABAEDA0);
    v21 = v25;
    if ((*(v4 + 48))(v10, 1, v25))
    {
      sub_24AB7C4A4(v10, &unk_27EF95B30, &unk_24ABAEDA0);
    }

    else
    {
      v22 = v24;
      (*(v4 + 16))(v24, v10, v21);
      sub_24AB7C4A4(v10, &unk_27EF95B30, &unk_24ABAEDA0);
      v27 = 1;
      sub_24ABAC06C();
      (*(v4 + 8))(v22, v21);
    }

    v23 = v26;
    (*(v4 + 56))(v26, 1, 1, v21);
    swift_beginAccess();
    sub_24AB779B0(v23, v2 + v20, &unk_27EF95B30, &unk_24ABAEDA0);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_24AB874B0()
{
  v1 = sub_24ABABC0C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = (&v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_24ABABE2C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = (&v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v0 + OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_scanQueue);
  *v8 = v9;
  (*(v6 + 104))(v8, *MEMORY[0x277D85200], v5);
  v10 = v9;
  LOBYTE(v9) = sub_24ABABE3C();
  result = (*(v6 + 8))(v8, v5);
  if (v9)
  {
    v12 = (v0 + OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_state);
    os_unfair_lock_lock((v0 + OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_state));
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF95D80, &unk_24ABAEBA0);
    sub_24AB84CD4(v12 + *(v13 + 28), &v21);
    os_unfair_lock_unlock(v12);
    v14 = *(v21 + 16);
    if (v14)
    {
      v17 = *(v2 + 16);
      v15 = v2 + 16;
      v16 = v17;
      v18 = v21 + ((*(v15 + 64) + 32) & ~*(v15 + 64));
      v19 = *(v15 + 56);
      do
      {
        v16(v4, v18, v1);
        sub_24AB85E60(v4);
        (*(v15 - 8))(v4, v1);
        v18 += v19;
        --v14;
      }

      while (v14);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24AB87704()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95A18, &qword_24ABAEB98);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF95B30, &unk_24ABAEDA0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v11 = &v17[-v10];
  v12 = *(v1 + OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_scanQueue);
  v13 = swift_allocObject();
  *(v13 + 16) = sub_24AB91CD8;
  *(v13 + 24) = v1;
  aBlock[4] = sub_24AB94E34;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24AB87488;
  aBlock[3] = &block_descriptor_138;
  v14 = _Block_copy(aBlock);

  dispatch_sync(v12, v14);
  _Block_release(v14);
  LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

  if (v12)
  {
    __break(1u);
  }

  else
  {
    v16 = OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot_scanQueuedContinuation;
    swift_beginAccess();
    sub_24AB94828(v1 + v16, v11, &unk_27EF95B30, &unk_24ABAEDA0);
    if ((*(v3 + 48))(v11, 1, v2))
    {
      sub_24AB7C4A4(v11, &unk_27EF95B30, &unk_24ABAEDA0);
    }

    else
    {
      (*(v3 + 16))(v5, v11, v2);
      sub_24AB7C4A4(v11, &unk_27EF95B30, &unk_24ABAEDA0);
      v17[8] = 1;
      sub_24ABAC06C();
      (*(v3 + 8))(v5, v2);
    }

    (*(v3 + 56))(v9, 1, 1, v2);
    swift_beginAccess();
    sub_24AB779B0(v9, v1 + v16, &unk_27EF95B30, &unk_24ABAEDA0);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_24AB87A7C()
{
  v1 = v0;
  sub_24ABABD1C();
  v2 = OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot__itemDelayInScan;
  v3 = *(v0 + OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot__itemDelayInScan);
  v4 = sub_24ABABD1C();
  if (v3 < 1)
  {
    goto LABEL_10;
  }

  if (qword_27EF95308 != -1)
  {
    swift_once();
  }

  v5 = sub_24ABABD8C();
  __swift_project_value_buffer(v5, qword_27EF95FD8);

  v6 = sub_24ABABD6C();
  v7 = sub_24ABAC0FC();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    v9 = MEMORY[0x28223BE20](v8);
    MEMORY[0x28223BE20](v9);
    v10 = sub_24ABABD1C();
    v11 = *(v1 + v2);
    v12 = MEMORY[0x28223BE20](v10);
    MEMORY[0x28223BE20](v12);
    sub_24ABABD1C();
    *(v8 + 4) = v11;

    _os_log_impl(&dword_24AB6F000, v6, v7, "sleeping in listing for %ld seconds", v8, 0xCu);
    MEMORY[0x24C229EC0](v8, -1, -1);
  }

  else
  {
  }

  v14 = MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v14);
  v15 = sub_24ABABD1C();
  v16 = *(v1 + v2);
  v17 = MEMORY[0x28223BE20](v15);
  MEMORY[0x28223BE20](v17);
  result = sub_24ABABD1C();
  if ((v16 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(v16))
  {
    v4 = sleep(v16);
LABEL_10:
    v19 = MEMORY[0x28223BE20](v4);
    MEMORY[0x28223BE20](v19);
    v20 = sub_24ABABD1C();
    v21 = *(v1 + OBJC_IVAR____TtC17FileIndexerDaemon6FIRoot__forceScanStop);
    v22 = MEMORY[0x28223BE20](v20);
    MEMORY[0x28223BE20](v22);
    sub_24ABABD1C();
    return v21;
  }

  __break(1u);
  return result;
}