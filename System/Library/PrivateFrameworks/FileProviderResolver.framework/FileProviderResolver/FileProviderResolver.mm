uint64_t sub_24ABB94CC()
{
  result = sub_24ABB94EC();
  dword_27EF99D08 = result;
  return result;
}

uint64_t sub_24ABB94EC()
{
  v0 = sub_24ABC92F8();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v16 - v5;
  v7 = [objc_opt_self() fp_homeDirectory];
  if (v7)
  {
    v8 = v7;
    sub_24ABC92D8();

    (*(v1 + 32))(v6, v4, v0);
    v9 = sub_24ABBA744();
    (*(v1 + 8))(v6, v0);
    return v9;
  }

  else
  {
    if (qword_27EF99B00 != -1)
    {
      swift_once();
    }

    v11 = sub_24ABC9398();
    __swift_project_value_buffer(v11, qword_27EF99D28);
    v12 = sub_24ABC9378();
    v13 = sub_24ABC9618();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v17 = v15;
      *v14 = 136446210;
      *(v14 + 4) = sub_24ABC67F8(0xD00000000000001BLL, 0x800000024ABCA360, &v17);
      _os_log_impl(&dword_24ABB8000, v12, v13, "%{public}s)", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x24C22AB20](v15, -1, -1);
      MEMORY[0x24C22AB20](v14, -1, -1);
    }

    result = sub_24ABC96A8();
    __break(1u);
  }

  return result;
}

uint64_t sub_24ABB9784(uint64_t a1)
{
  v3 = sub_24ABC9368();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = 0;
  v30 = 1;
  v26 = a1;
  v27 = &v29;
  result = sub_24ABB9EF8(sub_24ABBA6B8, v25);
  if (!v1)
  {
    if (v30)
    {
      if (qword_27EF99B00 != -1)
      {
        swift_once();
      }

      v8 = sub_24ABC9398();
      __swift_project_value_buffer(v8, qword_27EF99D28);
      v9 = *(v4 + 16);
      v9(v6, a1, v3);
      v10 = sub_24ABC9378();
      v11 = sub_24ABC95F8();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v22 = v12;
        v23 = swift_slowAlloc();
        v28 = v23;
        *v12 = 136446210;
        sub_24ABBA49C(&qword_27EF99B50, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v13 = sub_24ABC9728();
        v24 = v9;
        v15 = v14;
        (*(v4 + 8))(v6, v3);
        v16 = sub_24ABC67F8(v13, v15, &v28);
        v9 = v24;

        v17 = v22;
        *(v22 + 1) = v16;
        v18 = v17;
        _os_log_impl(&dword_24ABB8000, v10, v11, "Couldn't find dev for volume UUID %{public}s", v17, 0xCu);
        v19 = v23;
        __swift_destroy_boxed_opaque_existential_0(v23);
        MEMORY[0x24C22AB20](v19, -1, -1);
        MEMORY[0x24C22AB20](v18, -1, -1);
      }

      else
      {

        (*(v4 + 8))(v6, v3);
      }

      type metadata accessor for ResolverError(0);
      sub_24ABBA49C(&qword_27EF99B48, type metadata accessor for ResolverError, &unk_24ABCA0DC);
      swift_allocError();
      v9(v20, a1, v3);
      swift_storeEnumTagMultiPayload();
      return swift_willThrow();
    }

    else
    {
      return v29;
    }
  }

  return result;
}

uint64_t sub_24ABB9AE0(uint64_t a1, _BYTE *a2, uint64_t a3, _DWORD *a4)
{
  v89 = a4;
  v90 = a3;
  v88 = a2;
  v156 = *MEMORY[0x277D85DE8];
  v5 = (a1 + 264);
  v6 = sub_24ABC9368();
  v91 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v88 - v10;
  v12 = sub_24ABC92F8();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v88 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a1 + 104);
  v17 = *(a1 + 120);
  v92 = *(a1 + 88);
  v93 = v16;
  v18 = *(a1 + 136);
  v19 = *(a1 + 152);
  v94 = v17;
  v95 = v18;
  v20 = *(a1 + 168);
  v21 = *(a1 + 184);
  v96 = v19;
  v97 = v20;
  v22 = *(a1 + 200);
  v23 = *(a1 + 216);
  v98 = v21;
  v99 = v22;
  v24 = *(a1 + 232);
  v25 = *(a1 + 248);
  v100 = v23;
  v101 = v24;
  v26 = *v5;
  v27 = v5[1];
  v102 = v25;
  v103 = v26;
  v28 = v5[2];
  v29 = v5[3];
  v104 = v27;
  v105 = v28;
  v30 = v5[4];
  v31 = v5[5];
  v106 = v29;
  v107 = v30;
  v32 = v5[6];
  v33 = v5[7];
  v108 = v31;
  v109 = v32;
  v34 = v5[8];
  v35 = v5[9];
  v110 = v33;
  v111 = v34;
  v36 = v5[10];
  v37 = v5[11];
  v112 = v35;
  v113 = v36;
  v38 = v5[12];
  v39 = v5[13];
  v114 = v37;
  v115 = v38;
  v40 = v5[14];
  v41 = v5[15];
  v116 = v39;
  v117 = v40;
  v42 = v5[16];
  v43 = v5[17];
  v118 = v41;
  v119 = v42;
  v44 = v5[18];
  v45 = v5[19];
  v120 = v43;
  v121 = v44;
  v46 = v5[20];
  v47 = v5[21];
  v122 = v45;
  v123 = v46;
  v48 = v5[22];
  v49 = v5[23];
  v124 = v47;
  v125 = v48;
  v50 = v5[24];
  v51 = v5[25];
  v126 = v49;
  v127 = v50;
  v52 = v5[26];
  v53 = v5[27];
  v128 = v51;
  v129 = v52;
  v54 = v5[28];
  v55 = v5[29];
  v130 = v53;
  v131 = v54;
  v56 = v5[30];
  v57 = v5[31];
  v132 = v55;
  v133 = v56;
  v58 = v5[32];
  v59 = v5[33];
  v134 = v57;
  v135 = v58;
  v60 = v5[34];
  v61 = v5[35];
  v136 = v59;
  v137 = v60;
  v62 = v5[36];
  v63 = v5[37];
  v138 = v61;
  v139 = v62;
  v64 = v5[38];
  v65 = v5[39];
  v140 = v63;
  v141 = v64;
  v66 = v5[40];
  v67 = v5[41];
  v142 = v65;
  v143 = v66;
  v68 = v5[42];
  v69 = v5[43];
  v144 = v67;
  v145 = v68;
  v70 = v5[44];
  v71 = v5[45];
  v146 = v69;
  v147 = v70;
  v72 = v5[46];
  v73 = v5[47];
  v148 = v71;
  v149 = v72;
  v74 = v5[48];
  v75 = v5[49];
  v150 = v73;
  v151 = v74;
  v76 = v5[50];
  v77 = v5[51];
  v152 = v75;
  v153 = v76;
  v78 = v5[52];
  v154 = v77;
  v155 = v78;
  v79 = sub_24ABC9508();
  v81 = v80;
  if (sub_24ABC94C8() < 1 || v79 == 1986356271 && v81 == 0xE400000000000000 || (sub_24ABC9748() & 1) != 0)
  {
  }

  sub_24ABC9288();

  v83 = sub_24ABC92A8();
  v84 = [v83 fp_volumeUUID];

  if (v84)
  {
    sub_24ABC9358();

    v85 = v91;
    (*(v91 + 32))(v11, v9, v6);
    if (sub_24ABC9348())
    {
      *v88 = 1;
      v86 = *(a1 + 48);
      (*(v85 + 8))(v11, v6);
      result = (*(v13 + 8))(v15, v12);
      v87 = v89;
      *v89 = v86;
      *(v87 + 4) = 0;
      return result;
    }

    (*(v85 + 8))(v11, v6);
  }

  return (*(v13 + 8))(v15, v12);
}

uint64_t sub_24ABB9EF8(void (*a1)(statfs *, char *), uint64_t a2)
{
  v5 = getfsstat(0, 0, 4114);
  if (v5 < 0)
  {
    v14 = *MEMORY[0x277CCA5B8];
    [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:v14 code:MEMORY[0x24C22A1B0]() userInfo:0];

    return swift_willThrow();
  }

  v6 = v5;
  v7 = 2168 * v5;
  v8 = swift_slowAlloc();
  if (v6 > 0xF1D48)
  {
    __break(1u);
    goto LABEL_20;
  }

  v2 = v8;
  v9 = getfsstat(v8, v7, 4114);
  if (v9 < 0)
  {
    v16 = *MEMORY[0x277CCA5B8];
    [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:v16 code:MEMORY[0x24C22A1B0]() userInfo:0];

    swift_willThrow();
    return MEMORY[0x24C22AB20](v2, -1, -1);
  }

  if (v6 < v9)
  {
    if (qword_27EF99B00 == -1)
    {
LABEL_6:
      v10 = sub_24ABC9398();
      __swift_project_value_buffer(v10, qword_27EF99D28);
      v11 = sub_24ABC9378();
      v12 = sub_24ABC95E8();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&dword_24ABB8000, v11, v12, "Number of mounts increased while enumerating retrying.", v13, 2u);
        MEMORY[0x24C22AB20](v13, -1, -1);
      }

      sub_24ABB9EF8(a1, a2);
      return MEMORY[0x24C22AB20](v2, -1, -1);
    }

LABEL_20:
    swift_once();
    goto LABEL_6;
  }

  v19 = 0;
  if (v9)
  {
    v17 = v9 - 1;
    v18 = v2;
LABEL_14:
    a1(v18, &v19);
    while (v17)
    {
      --v17;
      ++v18;
      if ((v19 & 1) == 0)
      {
        goto LABEL_14;
      }
    }
  }

  return MEMORY[0x24C22AB20](v2, -1, -1);
}

uint64_t sub_24ABBA180(uint64_t a1, id *a2)
{
  result = sub_24ABC9458();
  *a2 = 0;
  return result;
}

uint64_t sub_24ABBA1F8(uint64_t a1, id *a2)
{
  v3 = sub_24ABC9468();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_24ABBA278@<X0>(uint64_t *a1@<X8>)
{
  sub_24ABC9478();
  v2 = sub_24ABC9448();

  *a1 = v2;
  return result;
}

uint64_t sub_24ABBA2DC@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_24ABC9448();

  *a2 = v3;
  return result;
}

uint64_t sub_24ABBA324@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24ABC9478();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_24ABBA350(uint64_t a1)
{
  v2 = sub_24ABBA49C(&qword_27EF99B38, type metadata accessor for NSFileProviderItemIdentifier, &unk_24ABC9F98);
  v3 = sub_24ABBA49C(&qword_27EF99B40, type metadata accessor for NSFileProviderItemIdentifier, &unk_24ABC9F38);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_24ABBA49C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24ABBA4E4()
{
  v0 = sub_24ABC9478();
  v1 = MEMORY[0x24C22A380](v0);

  return v1;
}

uint64_t sub_24ABBA520(uint64_t a1)
{
  sub_24ABC9478();
  sub_24ABC94B8();
}

uint64_t sub_24ABBA574(uint64_t a1)
{
  sub_24ABC9478();
  sub_24ABC97A8();
  sub_24ABC94B8();
  v1 = sub_24ABC97B8();

  return v1;
}

uint64_t sub_24ABBA5E8(void *a1, uint64_t *a2)
{
  v2 = sub_24ABC9478();
  v4 = v3;
  if (v2 == sub_24ABC9478() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_24ABC9748();
  }

  return v7 & 1;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
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

uint64_t sub_24ABBA744()
{
  v9[1] = *MEMORY[0x277D85DE8];
  memset(&v8, 0, sizeof(v8));
  sub_24ABC92E8();
  v0 = sub_24ABC9488();

  v1 = lstat((v0 + 32), &v8);

  if (v1 < 0 || (result = v8.st_dev, v8.st_dev < 1))
  {
    if (qword_27EF99B00 != -1)
    {
      swift_once();
    }

    v3 = sub_24ABC9398();
    __swift_project_value_buffer(v3, qword_27EF99D28);
    v4 = sub_24ABC9378();
    v5 = sub_24ABC9618();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v9[0] = v7;
      *v6 = 136446210;
      *(v6 + 4) = sub_24ABC67F8(0xD000000000000026, 0x800000024ABCA3B0, v9);
      _os_log_impl(&dword_24ABB8000, v4, v5, "%{public}s)", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x24C22AB20](v7, -1, -1);
      MEMORY[0x24C22AB20](v6, -1, -1);
    }

    result = sub_24ABC96A8();
    __break(1u);
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_24ABBA960(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24ABBA980(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = (a2 - 1);
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

  *(result + 40) = v3;
  return result;
}

void sub_24ABBA9C8(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_24ABBAA40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  v20 = 0;
  v18 = 0u;
  v19 = 0u;
  v21 = 1;
  v4 = swift_allocObject();
  *(v4 + 16) = &v18;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_24ABBAC58;
  *(v5 + 24) = v4;
  v17[4] = sub_24ABBAC88;
  v17[5] = v5;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 1107296256;
  v17[2] = sub_24ABBAA14;
  v17[3] = &block_descriptor;
  v6 = _Block_copy(v17);

  v7 = fpfs_fgethandle_nocheck();
  _Block_release(v6);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  else if ((v21 & 1) != 0 || v7 < 0)
  {
    type metadata accessor for ResolverError(0);
    sub_24ABBACC8();
    swift_allocError();
    v15 = v14;
    v16 = MEMORY[0x24C22A1B0]();
    *v15 = v2;
    v15[1] = v16;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  else
  {
    v9 = v18;
    v11 = *(&v19 + 1);
    v10 = v20;
    v12 = HIDWORD(v20);
    v13 = v19;

    *a2 = v9;
    *(a2 + 16) = v13;
    *(a2 + 24) = v11;
    *(a2 + 32) = v10;
    *(a2 + 36) = v12;
  }

  return result;
}

uint64_t sub_24ABBAC58(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + 32);
  v4 = *(a1 + 16);
  *v2 = *a1;
  *(v2 + 16) = v4;
  *(v2 + 32) = v3;
  *(v2 + 40) = 0;
  return 0;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_24ABBACC8()
{
  result = qword_27EF99B48;
  if (!qword_27EF99B48)
  {
    type metadata accessor for ResolverError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF99B48);
  }

  return result;
}

uint64_t sub_24ABBAD20(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  fpfs_fsgetpath();
  type metadata accessor for ResolverError(0);
  sub_24ABBACC8();
  swift_allocError();
  v5 = v4;
  v6 = MEMORY[0x24C22A1B0]();
  *v5 = v3;
  *(v5 + 8) = a2;
  *(v5 + 16) = v6;
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  free(0);
  return a2;
}

id sub_24ABBAE84(void *a1)
{
  sub_24ABC9478();
  v2 = sub_24ABC9578();

  if (v2)
  {
    return a1;
  }

  sub_24ABC9478();
  v4 = sub_24ABC9578();

  if ((v4 & 1) != 0 && (sub_24ABBB338(a1), (v5 & 1) == 0))
  {
    if (qword_27EF99AF0 != -1)
    {
      swift_once();
    }

    v7 = fpfs_openbyid64_np();
    if (v7 < 0)
    {
      type metadata accessor for ResolverError(0);
      sub_24ABBACC8();
      swift_allocError();
      v11 = v10;
      v12 = MEMORY[0x24C22A1B0]();
      *v11 = v7;
      v11[1] = v12;
      swift_storeEnumTagMultiPayload();
      return swift_willThrow();
    }

    else
    {
      DocumentId = GSLibraryGetOrAllocateDocumentId();
      if (DocumentId)
      {
        v9 = sub_24ABBC5C8(DocumentId);
        close(v7);
        return v9;
      }

      else
      {
        if (qword_27EF99B00 != -1)
        {
          swift_once();
        }

        v13 = sub_24ABC9398();
        __swift_project_value_buffer(v13, qword_27EF99D28);
        v14 = a1;
        v15 = sub_24ABC9378();
        v16 = sub_24ABC9618();

        if (os_log_type_enabled(v15, v16))
        {
          v17 = swift_slowAlloc();
          v18 = swift_slowAlloc();
          v26 = v18;
          *v17 = 136446210;
          v19 = sub_24ABC9478();
          v21 = sub_24ABC67F8(v19, v20, &v26);

          *(v17 + 4) = v21;
          _os_log_impl(&dword_24ABB8000, v15, v16, "GSLibraryGetOrAllocateDocumentId failed for %{public}s).", v17, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v18);
          MEMORY[0x24C22AB20](v18, -1, -1);
          MEMORY[0x24C22AB20](v17, -1, -1);
        }

        type metadata accessor for ResolverError(0);
        sub_24ABBACC8();
        swift_allocError();
        v23 = v22;
        v24 = v14;
        v25 = MEMORY[0x24C22A1B0]();
        *v23 = v24;
        *(v23 + 8) = v25;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        return close(v7);
      }
    }
  }

  else
  {
    type metadata accessor for ResolverError(0);
    sub_24ABBACC8();
    swift_allocError();
    *v6 = a1;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return a1;
  }
}

uint64_t sub_24ABBB1D4(void *a1)
{
  v2 = sub_24ABBB338(a1);
  if (v3)
  {
    type metadata accessor for ResolverError(0);
    sub_24ABBACC8();
    swift_allocError();
    *v4 = a1;
    swift_storeEnumTagMultiPayload();
    v5 = a1;
    return swift_willThrow();
  }

  v7 = v2;
  sub_24ABC9478();
  v8 = sub_24ABC9578();

  if (v8)
  {
    return v7;
  }

  if (qword_27EF99AF0 != -1)
  {
    swift_once();
  }

  result = GSLibraryResolveDocumentId2();
  if (!result)
  {
    type metadata accessor for ResolverError(0);
    sub_24ABBACC8();
    swift_allocError();
    v10 = v9;
    v11 = a1;
    v12 = MEMORY[0x24C22A1B0]();
    *v10 = v11;
    *(v10 + 8) = v12;
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_24ABBB338(uint64_t a1)
{
  sub_24ABC9478();
  v1 = sub_24ABC9578();

  if ((v1 & 1) == 0)
  {
    sub_24ABC9478();
    v2 = sub_24ABC9578();

    if ((v2 & 1) == 0)
    {
      return 0;
    }
  }

  sub_24ABC9478();
  v3 = sub_24ABC94E8();

  v4 = sub_24ABC9478();
  v6 = sub_24ABBB4B0(v3, v4, v5);
  v8 = v7;
  v10 = v9;
  v12 = v11;

  if (!((v6 ^ v8) >> 14))
  {

    return 0;
  }

  v13 = sub_24ABBC4FC(v6, v8, v10, v12, 10);
  if ((v14 & 0x100) != 0)
  {
    v13 = sub_24ABBB570(v6, v8, v10, v12, 10);
  }

  v15 = v13;
  v16 = v14;

  if (v16)
  {
    return 0;
  }

  else
  {
    return v15;
  }
}

unint64_t sub_24ABBB4B0(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return sub_24ABC95B8();
  }

  __break(1u);
  return result;
}

void *sub_24ABBB4FC(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF99BC8, &qword_24ABCA060);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unsigned __int8 *sub_24ABBB570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int64_t a5)
{
  v70 = a1;
  v71 = a2;
  v72 = a3;
  v73 = a4;
  sub_24ABBCF28();

  result = sub_24ABC95A8();
  v8 = result;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_24ABBC088(result, v7);
    v40 = v39;

    v7 = v40;
    if ((v40 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_24ABC9698();
      v9 = v69;
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v23 = v9 - 1;
        if (v23)
        {
          v24 = a5 + 48;
          v25 = a5 + 55;
          v26 = a5 + 87;
          if (a5 > 10)
          {
            v24 = 58;
          }

          else
          {
            v26 = 97;
            v25 = 65;
          }

          if (result)
          {
            v15 = 0;
            v27 = result + 1;
            do
            {
              v28 = *v27;
              if (v28 < 0x30 || v28 >= v24)
              {
                if (v28 < 0x41 || v28 >= v25)
                {
                  v19 = 0;
                  if (v28 < 0x61 || v28 >= v26)
                  {
                    goto LABEL_129;
                  }

                  v29 = -87;
                }

                else
                {
                  v29 = -55;
                }
              }

              else
              {
                v29 = -48;
              }

              if (!is_mul_ok(v15, a5))
              {
                goto LABEL_128;
              }

              v30 = v15 * a5;
              v31 = v28 + v29;
              v22 = __CFADD__(v30, v31);
              v15 = v30 + v31;
              if (v22)
              {
                goto LABEL_128;
              }

              ++v27;
              --v23;
            }

            while (v23);
LABEL_66:
            v19 = v15;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

        goto LABEL_128;
      }

      goto LABEL_133;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v32 = a5 + 48;
        v33 = a5 + 55;
        v34 = a5 + 87;
        if (a5 > 10)
        {
          v32 = 58;
        }

        else
        {
          v34 = 97;
          v33 = 65;
        }

        if (result)
        {
          v15 = 0;
          while (1)
          {
            v35 = *result;
            if (v35 < 0x30 || v35 >= v32)
            {
              if (v35 < 0x41 || v35 >= v33)
              {
                v19 = 0;
                if (v35 < 0x61 || v35 >= v34)
                {
                  goto LABEL_129;
                }

                v36 = -87;
              }

              else
              {
                v36 = -55;
              }
            }

            else
            {
              v36 = -48;
            }

            if (!is_mul_ok(v15, a5))
            {
              goto LABEL_128;
            }

            v37 = v15 * a5;
            v38 = v35 + v36;
            v22 = __CFADD__(v37, v38);
            v15 = v37 + v38;
            if (v22)
            {
              goto LABEL_128;
            }

            ++result;
            if (!--v9)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_67;
      }

LABEL_128:
      v19 = 0;
      goto LABEL_129;
    }

    if (v9 >= 1)
    {
      v11 = v9 - 1;
      if (v11)
      {
        v12 = a5 + 48;
        v13 = a5 + 55;
        v14 = a5 + 87;
        if (a5 > 10)
        {
          v12 = 58;
        }

        else
        {
          v14 = 97;
          v13 = 65;
        }

        if (result)
        {
          v15 = 0;
          v16 = result + 1;
          while (1)
          {
            v17 = *v16;
            if (v17 < 0x30 || v17 >= v12)
            {
              if (v17 < 0x41 || v17 >= v13)
              {
                v19 = 0;
                if (v17 < 0x61 || v17 >= v14)
                {
                  goto LABEL_129;
                }

                v18 = -87;
              }

              else
              {
                v18 = -55;
              }
            }

            else
            {
              v18 = -48;
            }

            if (!is_mul_ok(v15, a5))
            {
              goto LABEL_128;
            }

            v20 = v15 * a5;
            v21 = v17 + v18;
            v22 = v20 >= v21;
            v15 = v20 - v21;
            if (!v22)
            {
              goto LABEL_128;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_66;
            }
          }
        }

LABEL_67:
        v19 = 0;
LABEL_129:

        return v19;
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v41 = HIBYTE(v7) & 0xF;
  v70 = v8;
  v71 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v41)
      {
        v43 = 0;
        v61 = a5 + 48;
        v62 = a5 + 55;
        v63 = a5 + 87;
        if (a5 > 10)
        {
          v61 = 58;
        }

        else
        {
          v63 = 97;
          v62 = 65;
        }

        v64 = &v70;
        while (1)
        {
          v65 = *v64;
          if (v65 < 0x30 || v65 >= v61)
          {
            if (v65 < 0x41 || v65 >= v62)
            {
              v19 = 0;
              if (v65 < 0x61 || v65 >= v63)
              {
                goto LABEL_129;
              }

              v66 = -87;
            }

            else
            {
              v66 = -55;
            }
          }

          else
          {
            v66 = -48;
          }

          if (!is_mul_ok(v43, a5))
          {
            goto LABEL_128;
          }

          v67 = v43 * a5;
          v68 = v65 + v66;
          v22 = __CFADD__(v67, v68);
          v43 = v67 + v68;
          if (v22)
          {
            goto LABEL_128;
          }

          v64 = (v64 + 1);
          if (!--v41)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v41)
    {
      v42 = v41 - 1;
      if (v42)
      {
        v43 = 0;
        v44 = a5 + 48;
        v45 = a5 + 55;
        v46 = a5 + 87;
        if (a5 > 10)
        {
          v44 = 58;
        }

        else
        {
          v46 = 97;
          v45 = 65;
        }

        v47 = &v70 + 1;
        while (1)
        {
          v48 = *v47;
          if (v48 < 0x30 || v48 >= v44)
          {
            if (v48 < 0x41 || v48 >= v45)
            {
              v19 = 0;
              if (v48 < 0x61 || v48 >= v46)
              {
                goto LABEL_129;
              }

              v49 = -87;
            }

            else
            {
              v49 = -55;
            }
          }

          else
          {
            v49 = -48;
          }

          if (!is_mul_ok(v43, a5))
          {
            goto LABEL_128;
          }

          v50 = v43 * a5;
          v51 = v48 + v49;
          v22 = v50 >= v51;
          v43 = v50 - v51;
          if (!v22)
          {
            goto LABEL_128;
          }

          ++v47;
          if (!--v42)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v41)
  {
    v52 = v41 - 1;
    if (v52)
    {
      v43 = 0;
      v53 = a5 + 48;
      v54 = a5 + 55;
      v55 = a5 + 87;
      if (a5 > 10)
      {
        v53 = 58;
      }

      else
      {
        v55 = 97;
        v54 = 65;
      }

      v56 = &v70 + 1;
      do
      {
        v57 = *v56;
        if (v57 < 0x30 || v57 >= v53)
        {
          if (v57 < 0x41 || v57 >= v54)
          {
            v19 = 0;
            if (v57 < 0x61 || v57 >= v55)
            {
              goto LABEL_129;
            }

            v58 = -87;
          }

          else
          {
            v58 = -55;
          }
        }

        else
        {
          v58 = -48;
        }

        if (!is_mul_ok(v43, a5))
        {
          goto LABEL_128;
        }

        v59 = v43 * a5;
        v60 = v57 + v58;
        v22 = __CFADD__(v59, v60);
        v43 = v59 + v60;
        if (v22)
        {
          goto LABEL_128;
        }

        ++v56;
        --v52;
      }

      while (v52);
LABEL_127:
      v19 = v43;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

unsigned __int8 *sub_24ABBBB00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v72 = a1;
  v73 = a2;
  v74 = a3;
  v75 = a4;
  sub_24ABBCF28();

  result = sub_24ABC95A8();
  v8 = result;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_24ABBC088(result, v7);
    v42 = v41;

    v7 = v42;
    if ((v42 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_24ABC9698();
      v9 = v71;
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v24 = v9 - 1;
        if (v24)
        {
          v25 = a5 + 48;
          v26 = a5 + 55;
          v27 = a5 + 87;
          if (a5 > 10)
          {
            v25 = 58;
          }

          else
          {
            v27 = 97;
            v26 = 65;
          }

          if (result)
          {
            v15 = 0;
            v28 = result + 1;
            v17 = 1;
            do
            {
              v29 = *v28;
              if (v29 < 0x30 || v29 >= v25)
              {
                if (v29 < 0x41 || v29 >= v26)
                {
                  v20 = 0;
                  if (v29 < 0x61 || v29 >= v27)
                  {
                    goto LABEL_129;
                  }

                  v30 = -87;
                }

                else
                {
                  v30 = -55;
                }
              }

              else
              {
                v30 = -48;
              }

              v31 = v15 * a5;
              if ((v31 & 0xFFFFFFFF00000000) != 0)
              {
                goto LABEL_128;
              }

              v32 = v29 + v30;
              v23 = __CFADD__(v31, v32);
              v15 = v31 + v32;
              if (v23)
              {
                goto LABEL_128;
              }

              ++v28;
              --v24;
            }

            while (v24);
LABEL_47:
            v17 = 0;
            v20 = v15;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

LABEL_128:
        v20 = 0;
        v17 = 1;
        goto LABEL_129;
      }

      goto LABEL_133;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v33 = a5 + 48;
        v34 = a5 + 55;
        v35 = a5 + 87;
        if (a5 > 10)
        {
          v33 = 58;
        }

        else
        {
          v35 = 97;
          v34 = 65;
        }

        if (result)
        {
          v36 = 0;
          v17 = 1;
          do
          {
            v37 = *result;
            if (v37 < 0x30 || v37 >= v33)
            {
              if (v37 < 0x41 || v37 >= v34)
              {
                v20 = 0;
                if (v37 < 0x61 || v37 >= v35)
                {
                  goto LABEL_129;
                }

                v38 = -87;
              }

              else
              {
                v38 = -55;
              }
            }

            else
            {
              v38 = -48;
            }

            v39 = v36 * a5;
            if ((v39 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_128;
            }

            v40 = v37 + v38;
            v23 = __CFADD__(v39, v40);
            v36 = v39 + v40;
            if (v23)
            {
              goto LABEL_128;
            }

            ++result;
            --v9;
          }

          while (v9);
          v17 = 0;
          v20 = v36;
          goto LABEL_129;
        }

        goto LABEL_67;
      }

      goto LABEL_128;
    }

    if (v9 >= 1)
    {
      v11 = v9 - 1;
      if (v11)
      {
        v12 = a5 + 48;
        v13 = a5 + 55;
        v14 = a5 + 87;
        if (a5 > 10)
        {
          v12 = 58;
        }

        else
        {
          v14 = 97;
          v13 = 65;
        }

        if (result)
        {
          v15 = 0;
          v16 = result + 1;
          v17 = 1;
          while (1)
          {
            v18 = *v16;
            if (v18 < 0x30 || v18 >= v12)
            {
              if (v18 < 0x41 || v18 >= v13)
              {
                v20 = 0;
                if (v18 < 0x61 || v18 >= v14)
                {
                  goto LABEL_129;
                }

                v19 = -87;
              }

              else
              {
                v19 = -55;
              }
            }

            else
            {
              v19 = -48;
            }

            v21 = v15 * a5;
            if ((v21 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_128;
            }

            v22 = v18 + v19;
            v23 = v21 >= v22;
            v15 = v21 - v22;
            if (!v23)
            {
              goto LABEL_128;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_47;
            }
          }
        }

LABEL_67:
        v20 = 0;
        v17 = 0;
LABEL_129:

        LOBYTE(v72) = v17;
        return (v20 | (v17 << 32));
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v43 = HIBYTE(v7) & 0xF;
  v72 = v8;
  v73 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v43)
      {
        v45 = 0;
        v63 = a5 + 48;
        v64 = a5 + 55;
        v65 = a5 + 87;
        if (a5 > 10)
        {
          v63 = 58;
        }

        else
        {
          v65 = 97;
          v64 = 65;
        }

        v66 = &v72;
        v17 = 1;
        while (1)
        {
          v67 = *v66;
          if (v67 < 0x30 || v67 >= v63)
          {
            if (v67 < 0x41 || v67 >= v64)
            {
              v20 = 0;
              if (v67 < 0x61 || v67 >= v65)
              {
                goto LABEL_129;
              }

              v68 = -87;
            }

            else
            {
              v68 = -55;
            }
          }

          else
          {
            v68 = -48;
          }

          v69 = v45 * a5;
          if ((v69 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_128;
          }

          v70 = v67 + v68;
          v23 = __CFADD__(v69, v70);
          v45 = v69 + v70;
          if (v23)
          {
            goto LABEL_128;
          }

          v66 = (v66 + 1);
          if (!--v43)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v43)
    {
      v44 = v43 - 1;
      if (v44)
      {
        v45 = 0;
        v46 = a5 + 48;
        v47 = a5 + 55;
        v48 = a5 + 87;
        if (a5 > 10)
        {
          v46 = 58;
        }

        else
        {
          v48 = 97;
          v47 = 65;
        }

        v49 = &v72 + 1;
        v17 = 1;
        while (1)
        {
          v50 = *v49;
          if (v50 < 0x30 || v50 >= v46)
          {
            if (v50 < 0x41 || v50 >= v47)
            {
              v20 = 0;
              if (v50 < 0x61 || v50 >= v48)
              {
                goto LABEL_129;
              }

              v51 = -87;
            }

            else
            {
              v51 = -55;
            }
          }

          else
          {
            v51 = -48;
          }

          v52 = v45 * a5;
          if ((v52 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_128;
          }

          v53 = v50 + v51;
          v23 = v52 >= v53;
          v45 = v52 - v53;
          if (!v23)
          {
            goto LABEL_128;
          }

          ++v49;
          if (!--v44)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v43)
  {
    v54 = v43 - 1;
    if (v54)
    {
      v45 = 0;
      v55 = a5 + 48;
      v56 = a5 + 55;
      v57 = a5 + 87;
      if (a5 > 10)
      {
        v55 = 58;
      }

      else
      {
        v57 = 97;
        v56 = 65;
      }

      v58 = &v72 + 1;
      v17 = 1;
      do
      {
        v59 = *v58;
        if (v59 < 0x30 || v59 >= v55)
        {
          if (v59 < 0x41 || v59 >= v56)
          {
            v20 = 0;
            if (v59 < 0x61 || v59 >= v57)
            {
              goto LABEL_129;
            }

            v60 = -87;
          }

          else
          {
            v60 = -55;
          }
        }

        else
        {
          v60 = -48;
        }

        v61 = v45 * a5;
        if ((v61 & 0xFFFFFFFF00000000) != 0)
        {
          goto LABEL_128;
        }

        v62 = v59 + v60;
        v23 = __CFADD__(v61, v62);
        v45 = v61 + v62;
        if (v23)
        {
          goto LABEL_128;
        }

        ++v58;
        --v54;
      }

      while (v54);
LABEL_127:
      v17 = 0;
      v20 = v45;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_24ABBC088(uint64_t a1, unint64_t a2)
{
  v2 = sub_24ABC95B8();
  v6 = sub_24ABBC108(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_24ABBC108(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_24ABC9638();
    if (!v9 || (v10 = v9, v11 = sub_24ABBB4FC(v9, 0), v12 = sub_24ABBC260(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_24ABC94A8();

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
      return sub_24ABC94A8();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_24ABC9698();
LABEL_4:

  return sub_24ABC94A8();
}

unint64_t sub_24ABBC260(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
      result = sub_24ABBC480(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_24ABC9558();
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
          result = sub_24ABC9698();
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

    result = sub_24ABBC480(v12, a6, a7);
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

    result = sub_24ABC9528();
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

unint64_t sub_24ABBC480(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_24ABC9568();
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
    v5 = MEMORY[0x24C22A330](15, a1 >> 16);
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

uint64_t sub_24ABBC4FC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    result = 0;
    goto LABEL_8;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v14[0] = a3;
    v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v14;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v11 = sub_24ABC9698();
  }

  result = sub_24ABBC980(v11, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v15 = v13 & 1;
LABEL_8:
    v16 = (a4 & 0x1000000000000000) != 0;
  }

  return result;
}

uint64_t sub_24ABBC5C8(int a1)
{
  if (a1)
  {
    v9[0] = 1029990756;
    v9[1] = 0xE400000000000000;
    v1 = sub_24ABC9728();
    MEMORY[0x24C22A2F0](v1);

    v2 = sub_24ABC9448();

    return v2;
  }

  else
  {
    if (qword_27EF99B00 != -1)
    {
      swift_once();
    }

    v4 = sub_24ABC9398();
    __swift_project_value_buffer(v4, qword_27EF99D28);
    v5 = sub_24ABC9378();
    v6 = sub_24ABC9618();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v9[0] = v8;
      *v7 = 136446210;
      *(v7 + 4) = sub_24ABC67F8(0xD000000000000032, 0x800000024ABCA450, v9);
      _os_log_impl(&dword_24ABB8000, v5, v6, "%{public}s)", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x24C22AB20](v8, -1, -1);
      MEMORY[0x24C22AB20](v7, -1, -1);
    }

    result = sub_24ABC96A8();
    __break(1u);
  }

  return result;
}

uint64_t sub_24ABBC7A4(uint64_t a1)
{
  if (a1)
  {
    v9[0] = 1029990758;
    v9[1] = 0xE400000000000000;
    v1 = sub_24ABC9728();
    MEMORY[0x24C22A2F0](v1);

    v2 = sub_24ABC9448();

    return v2;
  }

  else
  {
    if (qword_27EF99B00 != -1)
    {
      swift_once();
    }

    v4 = sub_24ABC9398();
    __swift_project_value_buffer(v4, qword_27EF99D28);
    v5 = sub_24ABC9378();
    v6 = sub_24ABC9618();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v9[0] = v8;
      *v7 = 136446210;
      *(v7 + 4) = sub_24ABC67F8(0xD000000000000033, 0x800000024ABCA410, v9);
      _os_log_impl(&dword_24ABB8000, v5, v6, "%{public}s)", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x24C22AB20](v8, -1, -1);
      MEMORY[0x24C22AB20](v7, -1, -1);
    }

    result = sub_24ABC96A8();
    __break(1u);
  }

  return result;
}

uint64_t sub_24ABBC980(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, int64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = sub_24ABBC480(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_96;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = sub_24ABC9548();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = sub_24ABBC480(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = sub_24ABBC480(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_92;
  }

  if (v25 < a3 >> 16)
  {
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  result = sub_24ABC9548();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_91;
  }

  if (v26 < v13)
  {
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v41 = a6 + 48;
        v42 = a6 + 55;
        v43 = a6 + 87;
        if (a6 > 10)
        {
          v41 = 58;
        }

        else
        {
          v43 = 97;
          v42 = 65;
        }

        if (v27)
        {
          v32 = 0;
          v44 = v27 + 1;
          v45 = result - 1;
          do
          {
            v46 = *v44;
            if (v46 < 0x30 || v46 >= v41)
            {
              if (v46 < 0x41 || v46 >= v42)
              {
                v37 = 0;
                if (v46 < 0x61 || v46 >= v43)
                {
                  return v37;
                }

                v47 = -87;
              }

              else
              {
                v47 = -55;
              }
            }

            else
            {
              v47 = -48;
            }

            if (!is_mul_ok(v32, a6))
            {
              return 0;
            }

            v48 = v32 * a6;
            v49 = v46 + v47;
            v40 = __CFADD__(v48, v49);
            v32 = v48 + v49;
            if (v40)
            {
              return 0;
            }

            ++v44;
            --v45;
          }

          while (v45);
          return v32;
        }

        return 0;
      }

      return 0;
    }

    goto LABEL_95;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v50 = a6 + 48;
      v51 = a6 + 55;
      v52 = a6 + 87;
      if (a6 > 10)
      {
        v50 = 58;
      }

      else
      {
        v52 = 97;
        v51 = 65;
      }

      if (v27)
      {
        v32 = 0;
        while (1)
        {
          v53 = *v27;
          if (v53 < 0x30 || v53 >= v50)
          {
            if (v53 < 0x41 || v53 >= v51)
            {
              v37 = 0;
              if (v53 < 0x61 || v53 >= v52)
              {
                return v37;
              }

              v54 = -87;
            }

            else
            {
              v54 = -55;
            }
          }

          else
          {
            v54 = -48;
          }

          if (!is_mul_ok(v32, a6))
          {
            return 0;
          }

          v55 = v32 * a6;
          v56 = v53 + v54;
          v40 = __CFADD__(v55, v56);
          v32 = v55 + v56;
          if (v40)
          {
            return 0;
          }

          ++v27;
          if (!--result)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 48;
      v30 = a6 + 55;
      v31 = a6 + 87;
      if (a6 > 10)
      {
        v29 = 58;
      }

      else
      {
        v31 = 97;
        v30 = 65;
      }

      if (v27)
      {
        v32 = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v29)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              if (v35 < 0x61 || v35 >= v31)
              {
                return v37;
              }

              v36 = -87;
            }

            else
            {
              v36 = -55;
            }
          }

          else
          {
            v36 = -48;
          }

          if (!is_mul_ok(v32, a6))
          {
            return 0;
          }

          v38 = v32 * a6;
          v39 = v35 + v36;
          v40 = v38 >= v39;
          v32 = v38 - v39;
          if (!v40)
          {
            return 0;
          }

          ++v33;
          if (!--v34)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
  return result;
}

void sub_24ABBCDEC(uint64_t a1)
{
  v6[5] = *MEMORY[0x277D85DE8];
  if ((fpfs_should_be_tracked() & 0x80000000) != 0)
  {
    type metadata accessor for ResolverError(0);
    sub_24ABBACC8();
    swift_allocError();
    v4 = v3;
    v5 = MEMORY[0x24C22A1B0]();
    *v4 = a1;
    v4[1] = v5;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  else
  {
    sub_24ABBAA40(a1, v6);
    if (!v1)
    {
      sub_24ABBC7A4(v6[0]);
    }
  }
}

unint64_t sub_24ABBCF28()
{
  result = qword_27EF99BC0;
  if (!qword_27EF99BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF99BC0);
  }

  return result;
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

uint64_t sub_24ABBCFC8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_24ABC92F8();
  v16 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_opt_self() fp_homeDirectory];
  if (v5)
  {
    v6 = v5;
    sub_24ABC92D8();

    v7 = sub_24ABC92A8();
    v8 = [v7 fp_realpathURL];

    sub_24ABC92D8();
    (*(v16 + 8))(v4, v2);
    return (*(v16 + 56))(a1, 0, 1, v2);
  }

  else
  {
    if (qword_27EF99B00 != -1)
    {
      swift_once();
    }

    v10 = sub_24ABC9398();
    __swift_project_value_buffer(v10, qword_27EF99D28);
    v11 = sub_24ABC9378();
    v12 = sub_24ABC9608();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_24ABB8000, v11, v12, "Can't fetch home directory.", v13, 2u);
      MEMORY[0x24C22AB20](v13, -1, -1);
    }

    v14 = *(v16 + 56);

    return v14(a1, 1, 1, v2);
  }
}

uint64_t sub_24ABBD21C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF99BD0, &qword_24ABCA068);
  __swift_allocate_value_buffer(v0, qword_27EF99D10);
  v1 = __swift_project_value_buffer(v0, qword_27EF99D10);
  return sub_24ABBD274(v1);
}

uint64_t sub_24ABBD274@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_24ABC92F8();
  v15 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = objc_opt_self();
  v6 = sub_24ABC9448();
  v7 = [v5 fp:v6 uncachedContainerURLForSecurityApplicationGroupIdentifier:1 forPrimaryPersona:?];

  if (v7)
  {
    sub_24ABC92D8();

    sub_24ABC92C8();
    (*(v15 + 8))(v4, v2);
    return (*(v15 + 56))(a1, 0, 1, v2);
  }

  else
  {
    if (qword_27EF99B00 != -1)
    {
      swift_once();
    }

    v9 = sub_24ABC9398();
    __swift_project_value_buffer(v9, qword_27EF99D28);
    v10 = sub_24ABC9378();
    v11 = sub_24ABC9618();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_24ABB8000, v10, v11, "Unable to get localStorageAppGroupURL", v12, 2u);
      MEMORY[0x24C22AB20](v12, -1, -1);
    }

    v13 = *(v15 + 56);

    return v13(a1, 1, 1, v2);
  }
}

void sub_24ABBD4F0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF99BD0, &qword_24ABCA068);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v22 - v1;
  v3 = sub_24ABC92F8();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v22 - v8;
  sub_24ABBCFC8(v2);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_24ABBD7AC(v2);
  }

  else
  {
    v10 = *(v4 + 32);
    v23 = v9;
    v24 = v3;
    v10(v9, v2, v3);
    v11 = [objc_opt_self() fp_additionalContainerPathsForBookmarks];
    v12 = sub_24ABC95C8();

    v13 = (v4 + 8);
    v14 = v12 + 40;
    v15 = -*(v12 + 16);
    v16 = -1;
    while (1)
    {
      if (v15 + v16 == -1)
      {
        (*v13)(v23, v24);

        return;
      }

      if (++v16 >= *(v12 + 16))
      {
        break;
      }

      v17 = v14 + 16;

      sub_24ABC92B8();

      v18 = sub_24ABC92A8();
      v19 = *v13;
      (*v13)(v7, v24);
      v20 = sub_24ABC92A8();
      v21 = [v18 fp:v20 realPathRelationshipToItemAtRealPathURL:?];

      v14 = v17;
      if (!v21)
      {
        v19(v23, v24);

        return;
      }
    }

    __break(1u);
  }
}

uint64_t sub_24ABBD7AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF99BD0, &qword_24ABCA068);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24ABBD814()
{
  sub_24ABBD90C();
  if (v0)
  {
    sub_24ABBE2B0();
    v1 = *(sub_24ABC9648() + 16);

    if (v1 < 5)
    {
      v2 = 0;
    }

    else if (sub_24ABC9578())
    {
      v2 = 1;
    }

    else
    {
      v2 = sub_24ABC9578();
    }
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

void *sub_24ABBD90C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF99BD0, &qword_24ABCA068);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v28 - v1;
  sub_24ABBCFC8(v28 - v1);
  v3 = sub_24ABC92F8();
  v4 = *(v3 - 8);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_24ABBD7AC(v2);
    return 0;
  }

  v5 = sub_24ABC9278();
  (*(v4 + 8))(v2, v3);
  v6 = sub_24ABC9278();
  if (*(v5 + 16))
  {
    v7 = 1;
    while (1)
    {
      v10 = *(v5 + 32);
      v9 = *(v5 + 40);
      v11 = *(v6 + 16);

      if (!v11)
      {
        if (!v9)
        {
LABEL_42:
          __break(1u);
        }

LABEL_43:

        goto LABEL_44;
      }

      v13 = *(v6 + 32);
      v12 = *(v6 + 40);

      if (v9)
      {
        if (!v12)
        {
          goto LABEL_43;
        }

        if (v10 == v13 && v9 == v12)
        {
        }

        else
        {
          v14 = sub_24ABC9748();

          if ((v14 & 1) == 0)
          {
            goto LABEL_44;
          }
        }
      }

      else if (v12)
      {
        goto LABEL_43;
      }

      v15 = *(v6 + 16);
      if (!v15)
      {
        goto LABEL_42;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v15 - 1 > *(v6 + 24) >> 1)
      {
        v6 = sub_24ABBE770(isUniquelyReferenced_nonNull_native, v15, 1, v6);
      }

      sub_24ABBE87C(v6 + 32);
      v17 = *(v6 + 16);
      result = memmove((v6 + 32), (v6 + 48), 16 * v17 - 16);
      *(v6 + 16) = v17 - 1;
      v19 = *(v5 + 16);
      if (!v19)
      {
        break;
      }

      v20 = swift_isUniquelyReferenced_nonNull_native();
      if (!v20 || (v19 - 1) > *(v5 + 24) >> 1)
      {
        v5 = sub_24ABBE770(v20, v19, 1, v5);
      }

      sub_24ABBE87C(v5 + 32);
      v21 = *(v5 + 16);
      result = memmove((v5 + 32), (v5 + 48), 16 * v21 - 16);
      v22 = v21 - 1;
      *(v5 + 16) = v21 - 1;
      if (v7)
      {
        if (v21 != 1)
        {
          v23 = v21 >= 2;
          v24 = v21 - 2;
          if (!v23)
          {
            goto LABEL_49;
          }

          if (*(v5 + 32) == 0x65746176697270 && *(v5 + 40) == 0xE700000000000000 || (sub_24ABC9748() & 1) != 0)
          {
            if (v24 > *(v5 + 24) >> 1)
            {
              v5 = sub_24ABBE770(1, v22, 1, v5);
            }

            sub_24ABBE87C(v5 + 32);
            v25 = *(v5 + 16);
            memmove((v5 + 32), (v5 + 48), 16 * v25 - 16);
            *(v5 + 16) = v25 - 1;
          }
        }

        v26 = *(v6 + 16);
        if (v26 && (*(v6 + 32) == 0x65746176697270 && *(v6 + 40) == 0xE700000000000000 || (sub_24ABC9748() & 1) != 0))
        {
          if ((v26 - 1) > *(v6 + 24) >> 1)
          {
            v6 = sub_24ABBE770(1, v26, 1, v6);
          }

          sub_24ABBE87C(v6 + 32);
          v8 = *(v6 + 16);
          memmove((v6 + 32), (v6 + 48), 16 * v8 - 16);
          *(v6 + 16) = v8 - 1;
        }
      }

      v7 = 0;
      if (!*(v5 + 16))
      {
        goto LABEL_44;
      }
    }

    __break(1u);
LABEL_49:
    __break(1u);
  }

  else
  {
LABEL_44:
    if (*(v5 + 16))
    {

      return 0;
    }

    v28[1] = v6;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF99BE0, "l\a");
    sub_24ABBE304();
    v27 = sub_24ABC9438();

    swift_bridgeObjectRelease_n();
    return v27;
  }

  return result;
}

uint64_t sub_24ABBDD6C()
{
  v0 = sub_24ABBD90C();
  if (!v1)
  {
    return 0;
  }

  v16 = v0;
  v17 = v1;
  v15[2] = 47;
  v15[3] = 0xE100000000000000;
  sub_24ABBE2B0();
  v2 = *(sub_24ABC9648() + 16);

  if (v2 < 5)
  {
    goto LABEL_5;
  }

  if (sub_24ABC9578())
  {
  }

  else
  {
    v4 = sub_24ABC9578();

    if ((v4 & 1) == 0)
    {
      return 0;
    }
  }

  v5 = sub_24ABBD90C();
  if (!v6)
  {
    return 0;
  }

  v16 = 47;
  v17 = 0xE100000000000000;
  MEMORY[0x28223BE20](v5);
  v14[2] = &v16;
  v9 = sub_24ABBE3B0(0x7FFFFFFFFFFFFFFFLL, 1, sub_24ABBEAAC, v14, v7, v8, v15);
  if (v9[2] < 5uLL)
  {
LABEL_5:
  }

  else
  {
    v10 = v9[20];
    v11 = v9[21];
    v12 = v9[22];
    v13 = v9[23];

    LOBYTE(v10) = sub_24ABBEB04(v10, v11, v12, v13, 0x746E656D75636F44, 0xE900000000000073);

    if (v10)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_24ABBDF50()
{
  if ((sub_24ABBDD6C() & 1) == 0)
  {
LABEL_9:
    v6 = 0;
    return v6 & 1;
  }

  v1 = [objc_opt_self() sharedRegistry];
  if (!v1)
  {
    if (qword_27EF99B00 != -1)
    {
      swift_once();
    }

    v7 = sub_24ABC9398();
    __swift_project_value_buffer(v7, qword_27EF99D28);
    v8 = sub_24ABC9378();
    v9 = sub_24ABC95F8();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_24ABB8000, v8, v9, "Can't get the FPAppRegistry.", v10, 2u);
      MEMORY[0x24C22AB20](v10, -1, -1);
    }

    goto LABEL_9;
  }

  v2 = v1;
  v3 = [v1 listOfMonitoredApps];
  sub_24ABBE934();
  v4 = sub_24ABC95C8();

  MEMORY[0x28223BE20](v5);
  v12[2] = v0;
  v6 = sub_24ABBE188(sub_24ABBE980, v12, v4);

  return v6 & 1;
}

id sub_24ABBE104(id *a1)
{
  result = [*a1 documentsURL];
  if (result)
  {
    v2 = result;
    v3 = sub_24ABC92A8();
    v4 = [v2 fp:v3 realPathRelationshipToItemAtRealPathURL:?];

    return (v4 != 2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24ABBE188(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = MEMORY[0x24C22A480](v5, a3);
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = sub_24ABC96B8();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

unint64_t sub_24ABBE2B0()
{
  result = qword_27EF99BD8;
  if (!qword_27EF99BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF99BD8);
  }

  return result;
}

unint64_t sub_24ABBE304()
{
  result = qword_27EF99BE8;
  if (!qword_27EF99BE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF99BE0, "l\a");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF99BE8);
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

unint64_t sub_24ABBE3B0@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    v7 = sub_24ABC95B8();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_24ABBE9A0(0, 1, 1, MEMORY[0x277D84F90]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_24ABBE9A0((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x277D84F90];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_24ABC9598();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_24ABC94D8();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_24ABC94D8();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_24ABC95B8();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_24ABBE9A0(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_24ABC95B8();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_24ABBE9A0(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_24ABBE9A0((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_24ABC94D8();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

char *sub_24ABBE770(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF99BF0, &qword_24ABCA070);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    swift_arrayInitWithCopy();
  }

  return v10;
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

unint64_t sub_24ABBE934()
{
  result = qword_27EF99BF8;
  if (!qword_27EF99BF8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EF99BF8);
  }

  return result;
}

char *sub_24ABBE9A0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF99C00, &qword_24ABCA078);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_24ABBEAAC(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_24ABC9748() & 1;
  }
}

uint64_t sub_24ABBEB04(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v6 = a5 & 0xFFFFFFFFFFFFLL;
  }

  if (a3 == a5 && a4 == a6 && !(a1 >> 16) && a2 >> 16 == v6)
  {
    return 1;
  }

  else
  {
    return sub_24ABC9718() & 1;
  }
}

uint64_t type metadata accessor for ResolverError(uint64_t a1)
{
  result = qword_27EF99C08;
  if (!qword_27EF99C08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24ABBEC1C(uint64_t a1)
{
  type metadata accessor for NSFileProviderItemIdentifier(319);
  if (v1 <= 0x3F)
  {
    sub_24ABBECCC(319);
    if (v2 <= 0x3F)
    {
      sub_24ABBED38();
      if (v3 <= 0x3F)
      {
        sub_24ABBED98();
        if (v4 <= 0x3F)
        {
          sub_24ABC9368();
          if (v5 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_24ABBECCC(uint64_t a1)
{
  if (!qword_27EF99C18)
  {
    type metadata accessor for NSFileProviderItemIdentifier(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27EF99C18);
    }
  }
}

void sub_24ABBED38()
{
  if (!qword_27EF99C20)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27EF99C20);
    }
  }
}

void sub_24ABBED98()
{
  if (!qword_27EF99C28)
  {
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27EF99C28);
    }
  }
}

id sub_24ABBEE00(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 - 8);
  MEMORY[0x28223BE20](a1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v6, a1);
  v7 = sub_24ABC9738();
  if (v7)
  {
    v8 = v7;
    (*(v3 + 8))(v5, a1);
  }

  else
  {
    v8 = swift_allocError();
    (*(v3 + 32))(v9, v5, a1);
  }

  v10 = sub_24ABC9258();

  v11 = [v10 fp_prettyDescription];
  return v11;
}

uint64_t sub_24ABBEF68(uint64_t a1, uint64_t a2)
{
  v28 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF99C60, &unk_24ABCA180);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v25 - v6;
  v8 = *(a1 - 8);
  v9 = MEMORY[0x28223BE20](v5);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v25 - v12;
  v14 = type metadata accessor for ResolverError(0);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = v8;
  v27 = v2;
  v18 = *(v8 + 16);
  v18(v13, v2, a1);
  v19 = swift_dynamicCast();
  v20 = *(v15 + 56);
  if (v19)
  {
    v20(v7, 0, 1, v14);
    sub_24ABC06E0(v7, v17);
    v21 = sub_24ABBF248();
    sub_24ABBF7A8(v17);
  }

  else
  {
    v20(v7, 1, 1, v14);
    sub_24ABC0680(v7, &qword_27EF99C60, &unk_24ABCA180);
    v18(v11, v27, a1);
    v22 = sub_24ABC9738();
    if (v22)
    {
      v21 = v22;
      (*(v26 + 8))(v11, a1);
    }

    else
    {
      v21 = swift_allocError();
      (*(v26 + 32))(v23, v11, a1);
    }
  }

  return v21;
}

id sub_24ABBF248()
{
  v1 = v0;
  v2 = type metadata accessor for ResolverError(0);
  MEMORY[0x28223BE20](v2);
  v4 = (v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF99C40, &qword_24ABCA168);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24ABCA080;
  *(inited + 32) = sub_24ABC9478();
  *(inited + 40) = v6;
  sub_24ABBF804(&qword_27EF99B48, &unk_24ABCA0DC);
  v7 = swift_allocError();
  sub_24ABBF744(v1, v8);
  v9 = sub_24ABC9258();
  *(inited + 72) = sub_24ABC05C8();
  *(inited + 48) = v9;

  v10 = sub_24ABC6D3C(inited);
  swift_setDeallocating();
  sub_24ABC0680(inited + 32, &qword_27EF99C50, &qword_24ABCA170);
  sub_24ABBF744(v1, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 8)
  {
    goto LABEL_8;
  }

  if (((1 << EnumCaseMultiPayload) & 0x1D8) != 0)
  {
LABEL_9:
    v20 = *MEMORY[0x277CC6300];
    v21 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v22 = v20;
    v23 = sub_24ABC9418();

    v13 = [v21 initWithDomain:v22 code:-1005 userInfo:v23];

    return v13;
  }

  if (EnumCaseMultiPayload != 2)
  {
    if (EnumCaseMultiPayload == 5)
    {
      sub_24ABBF7A8(v4);
      goto LABEL_9;
    }

LABEL_8:
    v14 = *v4;
    v15 = sub_24ABC9478();
    v17 = v16;
    type metadata accessor for NSFileProviderItemIdentifier(0);
    v27 = v18;
    *&v26 = v14;
    sub_24ABC0614(&v26, v25);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24[1] = v10;
    sub_24ABBFB78(v25, v15, v17, isUniquelyReferenced_nonNull_native);

    goto LABEL_9;
  }

  sub_24ABBF7A8(v4);
  result = FPNotSupportedError();
  if (result)
  {
    v13 = result;

    return v13;
  }

  __break(1u);
  return result;
}

uint64_t sub_24ABBF510(uint64_t a1)
{
  v2 = sub_24ABBF804(&qword_27EF99C30, &unk_24ABCA11C);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_24ABBF568(uint64_t a1)
{
  v2 = sub_24ABBF804(&qword_27EF99C30, &unk_24ABCA11C);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_24ABBF61C(uint64_t a1)
{
  v2 = MEMORY[0x28223BE20](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24ABBF744(v2, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        sub_24ABBF7A8(v4);
        return -1013;
      }

      else
      {
        return -1014;
      }
    }

    else if (EnumCaseMultiPayload)
    {
      sub_24ABBF7A8(v4);
      return -1012;
    }

    else
    {
      sub_24ABBF7A8(v4);
      return -1011;
    }
  }

  else if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload == 4)
    {
      return -1015;
    }

    else
    {
      sub_24ABBF7A8(v4);
      return -1017;
    }
  }

  else if (EnumCaseMultiPayload == 6)
  {
    return -1016;
  }

  else if (EnumCaseMultiPayload == 7)
  {
    return -1018;
  }

  else
  {
    return -1019;
  }
}

uint64_t sub_24ABBF744(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ResolverError(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24ABBF7A8(uint64_t a1)
{
  v2 = type metadata accessor for ResolverError(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24ABBF804(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ResolverError(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24ABBF848(uint64_t a1, uint64_t a2)
{
  sub_24ABC97A8();
  sub_24ABC94B8();
  v4 = sub_24ABC97B8();

  return sub_24ABBFD34(a1, a2, v4);
}

uint64_t sub_24ABBF8C0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF99C58, &qword_24ABCA178);
  v33 = v4;
  result = sub_24ABC96D8();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_24ABC0614(v24, v34);
      }

      else
      {
        sub_24ABC0624(v24, v34);
      }

      sub_24ABC97A8();
      sub_24ABC94B8();
      result = sub_24ABC97B8();
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

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_24ABC0614(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

_OWORD *sub_24ABBFB78(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_24ABBF848(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_24ABBFDEC();
      v11 = v19;
      goto LABEL_8;
    }

    sub_24ABBF8C0(v16, a4 & 1);
    v11 = sub_24ABBF848(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_24ABC9758();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0(v22);

    return sub_24ABC0614(a1, v22);
  }

  else
  {
    sub_24ABBFCC8(v11, a2, a3, a1, v21);
  }
}

_OWORD *sub_24ABBFCC8(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_24ABC0614(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

unint64_t sub_24ABBFD34(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_24ABC9748())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void *sub_24ABBFDEC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF99C58, &qword_24ABCA178);
  v2 = *v0;
  v3 = sub_24ABC96C8();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_24ABC0624(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_24ABC0614(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_24ABBFF90(uint64_t a1, uint64_t a2)
{
  v4 = sub_24ABC9368();
  v69 = *(v4 - 8);
  v70 = v4;
  MEMORY[0x28223BE20](v4);
  v68 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ResolverError(0);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v67 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = (&v67 - v14);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v67 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v67 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = (&v67 - v22);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF99C38, &qword_24ABCA160);
  v25 = MEMORY[0x28223BE20](v24 - 8);
  v27 = (&v67 + *(v25 + 56) - v26);
  v28 = a1;
  v29 = &v67 - v26;
  sub_24ABBF744(v28, &v67 - v26);
  sub_24ABBF744(a2, v27);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload != 2)
      {
        sub_24ABBF744(v29, v15);
        v59 = v15[1];
        if (swift_getEnumCaseMultiPayload() != 3)
        {
          goto LABEL_49;
        }

        if (*v15 != *v27)
        {
          goto LABEL_46;
        }

        v50 = v59 == v27[1];
LABEL_55:
        v64 = v50;
        goto LABEL_58;
      }

      sub_24ABBF744(v29, v18);
      v31 = *v18;
      v39 = *(v18 + 2);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
LABEL_29:

        goto LABEL_49;
      }

      v40 = *v27;
      v41 = v27[2];
      v42 = sub_24ABC9478();
      v44 = v43;
      if (v42 != sub_24ABC9478() || v44 != v45)
      {
        v47 = sub_24ABC9748();

        if ((v47 & 1) == 0)
        {
          goto LABEL_46;
        }

        goto LABEL_54;
      }
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {
        sub_24ABBF744(v29, v23);
        v31 = *v23;
        if (!swift_getEnumCaseMultiPayload())
        {
          v32 = *v27;
          v33 = sub_24ABC9478();
          v35 = v34;
          if (v33 == sub_24ABC9478() && v35 == v36)
          {
          }

          else
          {
            v38 = sub_24ABC9748();

            if ((v38 & 1) == 0)
            {
              goto LABEL_46;
            }
          }

LABEL_60:
          sub_24ABBF7A8(v29);
          v64 = 1;
          return v64 & 1;
        }

        goto LABEL_29;
      }

      sub_24ABBF744(v29, v21);
      v51 = *v21;
      v39 = *(v21 + 2);
      if (swift_getEnumCaseMultiPayload() != 1)
      {

        goto LABEL_49;
      }

      v52 = *v27;
      v41 = v27[2];
      v53 = sub_24ABC9478();
      v55 = v54;
      if (v53 != sub_24ABC9478() || v55 != v56)
      {
        v58 = sub_24ABC9748();

        if ((v58 & 1) == 0)
        {
          goto LABEL_46;
        }

        goto LABEL_54;
      }
    }

LABEL_54:
    v50 = v39 == v41;
    goto LABEL_55;
  }

  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload == 6)
    {
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        goto LABEL_60;
      }
    }

    else if (EnumCaseMultiPayload == 7)
    {
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        goto LABEL_60;
      }
    }

    else if (swift_getEnumCaseMultiPayload() == 8)
    {
      goto LABEL_60;
    }

    goto LABEL_49;
  }

  if (EnumCaseMultiPayload != 4)
  {
    sub_24ABBF744(v29, v9);
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      v61 = v68;
      v60 = v69;
      v62 = v27;
      v63 = v70;
      (*(v69 + 32))(v68, v62, v70);
      v64 = sub_24ABC9348();
      v65 = *(v60 + 8);
      v65(v61, v63);
      v65(v9, v63);
LABEL_58:
      sub_24ABBF7A8(v29);
      return v64 & 1;
    }

    (*(v69 + 8))(v9, v70);
LABEL_49:
    sub_24ABC0680(v29, &qword_27EF99C38, &qword_24ABCA160);
    goto LABEL_50;
  }

  sub_24ABBF744(v29, v12);
  v48 = *(v12 + 1);
  v49 = *(v12 + 4);
  if (swift_getEnumCaseMultiPayload() != 4)
  {
    goto LABEL_49;
  }

  if (*v12 == *v27 && v48 == *(v27 + 1))
  {
    v50 = v49 == v27[4];
    goto LABEL_55;
  }

LABEL_46:
  sub_24ABBF7A8(v29);
LABEL_50:
  v64 = 0;
  return v64 & 1;
}

unint64_t sub_24ABC05C8()
{
  result = qword_27EF99C48;
  if (!qword_27EF99C48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EF99C48);
  }

  return result;
}

_OWORD *sub_24ABC0614(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_24ABC0624(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_24ABC0680(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_24ABC06E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ResolverError(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_24ABC0744()
{
  v1 = OBJC_IVAR___FPRemoteResolver_xpcConnection;
  v2 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v3 = sub_24ABC9448();
  v4 = [v2 initWithServiceName_];

  *&v0[v1] = v4;
  v5 = objc_opt_self();
  v6 = v4;
  v7 = [v5 interfaceWithProtocol_];
  [v6 setRemoteObjectInterface_];

  [*&v0[v1] activate];
  v9.receiver = v0;
  v9.super_class = FPRemoteResolver;
  return objc_msgSendSuper2(&v9, sel_init);
}

uint64_t FPRemoteResolver.connectionInfo(reply:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_24ABC0A20();
  v7[4] = a1;
  v7[5] = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = sub_24ABC0BA8;
  v7[3] = &block_descriptor_0;
  v5 = _Block_copy(v7);

  [v4 connectionInfoWithReply_];
  _Block_release(v5);
  return swift_unknownObjectRelease();
}

uint64_t sub_24ABC0A20()
{
  v1 = *(v0 + OBJC_IVAR___FPRemoteResolver_xpcConnection);
  v2 = objc_allocWithZone(MEMORY[0x277CC6488]);
  v3 = v1;
  v4 = &unk_285E206B0;
  v5 = sub_24ABC9448();
  v6 = [v2 initWithConnection:v3 protocol:v4 orError:0 name:v5 requestPid:0];

  [v6 setSanitizeErrors_];
  v7 = [v6 remoteObjectProxy];
  sub_24ABC9658();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF99C78, &unk_24ABCA190);
  if (swift_dynamicCast())
  {

    return v9;
  }

  else
  {
    result = sub_24ABC96A8();
    __break(1u);
  }

  return result;
}

uint64_t sub_24ABC0BA8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_24ABC9428();
  }

  else
  {
    v5 = 0;
  }

  v6 = a3;
  v4(v5, a3);
}

uint64_t FPRemoteResolver.url(for:reply:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24ABC0A20();
  v9[4] = a2;
  v9[5] = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_24ABC0E38;
  v9[3] = &block_descriptor_3;
  v7 = _Block_copy(v9);

  [v6 URLForItemID:a1 reply:v7];
  _Block_release(v7);
  return swift_unknownObjectRelease();
}

void FPRemoteResolver.itemID(for:allowReadOnlyLocations:reply:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_24ABC0A20();
  v8 = sub_24ABC92A8();
  v10[4] = a3;
  v10[5] = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_24ABC1060;
  v10[3] = &block_descriptor_6;
  v9 = _Block_copy(v10);

  [v7 itemIDForURL:v8 allowReadOnlyLocations:a2 & 1 reply:v9];
  _Block_release(v9);
  swift_unknownObjectRelease();
}

void sub_24ABC1068(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t _sSo16FPRemoteResolverC012FileProviderB0E10canResolve3urlSb10Foundation3URLV_tFZ_0()
{
  sub_24ABBD90C();
  if (!v0)
  {
    goto LABEL_6;
  }

  sub_24ABBE2B0();
  v1 = *(sub_24ABC9648() + 16);

  if (v1 < 5)
  {

LABEL_6:
    sub_24ABBD4F0();
    return v2 & 1;
  }

  if ((sub_24ABC9578() & 1) == 0)
  {
    v4 = sub_24ABC9578();

    if (v4)
    {
      v2 = 1;
      return v2 & 1;
    }

    goto LABEL_6;
  }

  v2 = 1;
  return v2 & 1;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t type metadata accessor for FPRemoteResolver()
{
  result = qword_27EF99C70;
  if (!qword_27EF99C70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EF99C70);
  }

  return result;
}

uint64_t sub_24ABC1468()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24ABC14F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24ABC9368();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 28) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_24ABC15CC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24ABC9368();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 28) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for ReadOnlyIdentifier(uint64_t a1)
{
  result = qword_27EF99C80;
  if (!qword_27EF99C80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24ABC16D8(uint64_t a1)
{
  result = sub_24ABC9368();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24ABC176C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = sub_24ABC9408();
  v62 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24ABC93F8();
  v67 = *(v9 - 8);
  v68 = v9;
  MEMORY[0x28223BE20](v9);
  v64 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24ABC92F8();
  v65 = *(v11 - 8);
  v66 = v11;
  MEMORY[0x28223BE20](v11);
  v63 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24ABC9368();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v57 - v18;
  v69 = a1;
  v20 = sub_24ABC92A8();
  v21 = [v20 fp_volumeUUID];

  if (v21)
  {
    sub_24ABC9358();

    v22 = *(v14 + 32);
    v59 = v13;
    v60 = v19;
    v22(v19, v17, v13);
    *a3 = *a2;
    v23 = *(a2 + 20);
    OnlyIdentifier = type metadata accessor for ReadOnlyIdentifier(0);
    v61 = OnlyIdentifier;
    *&a3[*(OnlyIdentifier + 24)] = v23;
    (*(v14 + 16))(&a3[*(OnlyIdentifier + 20)], v19, v13);
    v25 = sub_24ABC92A8();
    v26 = [v25 fp_realpathURL];

    v27 = v63;
    sub_24ABC92D8();

    v28 = sub_24ABC9298();
    v30 = v29;
    sub_24ABC3D48(&qword_27EF99C90, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
    v58 = a3;
    sub_24ABC93E8();
    sub_24ABC34F4(v28, v30);
    sub_24ABC3314(v28, v30, v8);
    sub_24ABC3548(v28, v30);
    v31 = v64;
    sub_24ABC93D8();
    sub_24ABC3548(v28, v30);
    (*(v62 + 8))(v8, v6);
    v32 = v68;
    v73 = v68;
    v74 = sub_24ABC3D48(&qword_27EF99C98, MEMORY[0x277CC5290], MEMORY[0x277CC5280]);
    v33 = __swift_allocate_boxed_opaque_existential_1(&v71);
    v34 = v67;
    (*(v67 + 16))(v33, v31, v32);
    __swift_project_boxed_opaque_existential_1(&v71, v73);
    sub_24ABC9248();
    v35 = v70[0];
    v36 = v70[1];
    __swift_destroy_boxed_opaque_existential_0(&v71);
    v37 = sub_24ABC9318();
    v39 = v38;
    sub_24ABC3548(v35, v36);
    v40 = v66;
    v41 = *(v65 + 8);
    v41(v69, v66);
    (*(v34 + 8))(v31, v32);
    v41(v27, v40);
    result = (*(v14 + 8))(v60, v59);
    v43 = &v58[*(v61 + 28)];
    *v43 = v37;
    v43[1] = v39;
  }

  else
  {
    v71 = 0;
    v72 = 0xE000000000000000;
    sub_24ABC9678();

    v71 = 0xD00000000000001CLL;
    v72 = 0x800000024ABCA710;
    v44 = sub_24ABC92A8();
    v45 = [v44 fp_shortDescription];

    v46 = sub_24ABC9478();
    v48 = v47;

    MEMORY[0x24C22A2F0](v46, v48);

    v50 = v71;
    v49 = v72;
    v51 = qword_27EF99B00;

    if (v51 != -1)
    {
      swift_once();
    }

    v52 = sub_24ABC9398();
    __swift_project_value_buffer(v52, qword_27EF99D28);

    v53 = sub_24ABC9378();
    v54 = sub_24ABC9618();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v70[0] = v56;
      *v55 = 136446210;
      *(v55 + 4) = sub_24ABC67F8(v50, v49, v70);
      _os_log_impl(&dword_24ABB8000, v53, v54, "%{public}s)", v55, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v56);
      MEMORY[0x24C22AB20](v56, -1, -1);
      MEMORY[0x24C22AB20](v55, -1, -1);
    }

    result = sub_24ABC96A8();
    __break(1u);
  }

  return result;
}

uint64_t sub_24ABC1E9C@<X0>(id a1@<X0>, unsigned __int8 **a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF99CA8, &qword_24ABCA1F8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v62 - v6;
  v8 = sub_24ABC9368();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24ABC9478();
  v12 = sub_24ABC9578();

  if ((v12 & 1) == 0)
  {
    if (qword_27EF99B00 != -1)
    {
      swift_once();
    }

    v26 = sub_24ABC9398();
    __swift_project_value_buffer(v26, qword_27EF99D28);
    v27 = sub_24ABC9378();
    v28 = sub_24ABC9608();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_24ABB8000, v27, v28, "Trying to init ReadOnlyIdentifier with item identifier that is not read only.", v29, 2u);
      MEMORY[0x24C22AB20](v29, -1, -1);
    }

    type metadata accessor for ResolverError(0);
    sub_24ABC3D48(&qword_27EF99B48, type metadata accessor for ResolverError, &unk_24ABCA0DC);
    swift_allocError();
    *v30 = a1;
    goto LABEL_21;
  }

  v68[0] = sub_24ABC9478();
  v68[1] = v13;
  v66 = 124;
  v67 = 0xE100000000000000;
  sub_24ABC3DDC();
  v14 = sub_24ABC95D8();

  if (v14[2] != 5)
  {
    goto LABEL_15;
  }

  v65 = v9;
  v69 = a1;
  v16 = v14[8];
  v15 = v14[9];
  if (!((v15 ^ v16) >> 14))
  {
LABEL_27:

    a1 = v69;
    goto LABEL_16;
  }

  v64 = a2;
  v17 = v14[10];
  v18 = v14[11];
  v19 = sub_24ABBC4FC(v16, v15, v17, v18, 10);
  if ((v20 & 0x100) == 0)
  {
    v63 = v19;
    a1 = v69;
    if ((v20 & 1) == 0)
    {
      goto LABEL_6;
    }

LABEL_15:

    goto LABEL_16;
  }

  v63 = sub_24ABBB570(v16, v15, v17, v18, 10);
  v32 = v31;

  a1 = v69;
  if (v32)
  {
    goto LABEL_15;
  }

LABEL_6:
  v21 = v65;
  v62 = v2;
  if (v14[2] < 3uLL)
  {
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v23 = v14[12];
  v22 = v14[13];
  v24 = v14[14];
  v25 = v14[15];

  MEMORY[0x24C22A290](v23, v22, v24, v25);

  sub_24ABC9328();

  if ((*(v21 + 48))(v7, 1, v8) == 1)
  {

    sub_24ABC3E30(v7);
LABEL_16:
    if (qword_27EF99B00 != -1)
    {
      swift_once();
    }

    v33 = sub_24ABC9398();
    __swift_project_value_buffer(v33, qword_27EF99D28);
    v34 = a1;
    v35 = sub_24ABC9378();
    v36 = sub_24ABC9608();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v68[0] = v38;
      *v37 = 136446210;
      v39 = sub_24ABC9478();
      v41 = sub_24ABC67F8(v39, v40, v68);

      *(v37 + 4) = v41;
      _os_log_impl(&dword_24ABB8000, v35, v36, "Malformed item identifier for ReadOnlyIdentifier: %{public}s", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v38);
      MEMORY[0x24C22AB20](v38, -1, -1);
      MEMORY[0x24C22AB20](v37, -1, -1);
    }

    type metadata accessor for ResolverError(0);
    sub_24ABC3D48(&qword_27EF99B48, type metadata accessor for ResolverError, &unk_24ABCA0DC);
    swift_allocError();
    *v42 = v34;
LABEL_21:
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  (*(v21 + 32))(v11, v7, v8);
  if (v14[2] < 4uLL)
  {
    goto LABEL_32;
  }

  v45 = v14[16];
  v44 = v14[17];
  if (!((v44 ^ v45) >> 14))
  {
LABEL_33:
    v61 = *(v65 + 8);

    v61(v11, v8);

    goto LABEL_27;
  }

  v46 = v14[18];
  v47 = v14[19];
  v48 = sub_24ABC324C(v14[16], v14[17], v46, v47, 10);
  if ((v48 & 0x10000000000) != 0)
  {

    v49 = sub_24ABBBB00(v45, v44, v46, v47, 10);

    if ((v49 & 0x100000000) != 0)
    {
      goto LABEL_26;
    }
  }

  else
  {
    LODWORD(v49) = v48;
    if ((v48 & 0x100000000) != 0)
    {
LABEL_26:
      (*(v65 + 8))(v11, v8);
      goto LABEL_27;
    }
  }

  v50 = v64;
  *v64 = v63;
  OnlyIdentifier = type metadata accessor for ReadOnlyIdentifier(0);
  v52 = v65;
  result = (*(v65 + 16))(v50 + *(OnlyIdentifier + 20), v11, v8);
  v63 = OnlyIdentifier;
  *(v50 + *(OnlyIdentifier + 24)) = v49;
  if (v14[2] < 5uLL)
  {
    __break(1u);
  }

  else
  {
    v53 = v14[20];
    v54 = v14[21];
    v55 = v14[22];
    v56 = v14[23];

    v57 = MEMORY[0x24C22A290](v53, v54, v55, v56);
    v59 = v58;

    result = (*(v52 + 8))(v11, v8);
    v60 = (v64 + *(v63 + 7));
    *v60 = v57;
    v60[1] = v59;
  }

  return result;
}

uint64_t sub_24ABC25F0()
{
  v1 = sub_24ABC9408();
  v85 = *(v1 - 8);
  v86 = v1;
  MEMORY[0x28223BE20](v1);
  v84 = &v75 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_24ABC93F8();
  v87 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24ABC92F8();
  v88 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v75 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v75 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v75 - v16;
  OnlyIdentifier = type metadata accessor for ReadOnlyIdentifier(0);
  v19 = *(OnlyIdentifier + 20);
  v89 = v0;
  v20 = v97;
  v21 = sub_24ABB9784(v0 + v19);
  if (!v20)
  {
    v22 = OnlyIdentifier;
    v82 = v9;
    v83 = v15;
    v81 = v5;
    v80 = v12;
    v97 = v17;
    v23 = sub_24ABBAD20(v21, *v89);
    v79 = v6;
    v25 = v23;
    sub_24ABC9488();
    v26 = sub_24ABC93A8();

    if ((v26 & 0x80000000) != 0)
    {

      OnlyIdentifier = type metadata accessor for ResolverError(0);
      sub_24ABC3D48(&qword_27EF99B48, type metadata accessor for ResolverError, &unk_24ABCA0DC);
      swift_allocError();
      v28 = v27;
      v29 = MEMORY[0x24C22A1B0]();
      *v28 = v26;
      v28[1] = v29;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }

    else
    {
      sub_24ABBAA40(v26, v95);
      if (v96 != *(v89 + *(v22 + 24)))
      {

        if (qword_27EF99B00 != -1)
        {
          swift_once();
        }

        v50 = sub_24ABC9398();
        __swift_project_value_buffer(v50, qword_27EF99D28);
        v51 = sub_24ABC9378();
        v52 = sub_24ABC9608();
        if (os_log_type_enabled(v51, v52))
        {
          v53 = swift_slowAlloc();
          *v53 = 0;
          _os_log_impl(&dword_24ABB8000, v51, v52, "Gen count is not the same, the contents of the file were changed.", v53, 2u);
          MEMORY[0x24C22AB20](v53, -1, -1);
        }

        OnlyIdentifier = type metadata accessor for ResolverError(0);
        sub_24ABC3D48(&qword_27EF99B48, type metadata accessor for ResolverError, &unk_24ABCA0DC);
        swift_allocError();
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        goto LABEL_27;
      }

      v78 = v26;
      v77 = v22;
      v75 = v25;
      sub_24ABC9288();
      v30 = sub_24ABC92A8();
      v31 = [v30 fp_realpathURL];

      sub_24ABC92D8();
      v32 = sub_24ABC9298();
      v34 = v33;
      sub_24ABC3D48(&qword_27EF99C90, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
      v35 = v84;
      v36 = v86;
      sub_24ABC93E8();
      sub_24ABC34F4(v32, v34);
      sub_24ABC3314(v32, v34, v35);
      v76 = 0;
      sub_24ABC3548(v32, v34);
      v37 = v81;
      sub_24ABC93D8();
      sub_24ABC3548(v32, v34);
      (*(v85 + 8))(v35, v36);
      OnlyIdentifier = v3;
      v93 = v3;
      v94 = sub_24ABC3D48(&qword_27EF99C98, MEMORY[0x277CC5290], MEMORY[0x277CC5280]);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v92);
      v39 = v87;
      (*(v87 + 16))(boxed_opaque_existential_1, v37, v3);
      __swift_project_boxed_opaque_existential_1(v92, v93);
      v40 = v76;
      sub_24ABC9248();
      v41 = v90;
      v42 = v91;
      __swift_destroy_boxed_opaque_existential_0(v92);
      v43 = sub_24ABC9318();
      v45 = v44;
      sub_24ABC3548(v41, v42);
      (*(v39 + 8))(v37, v3);
      v46 = v88;
      v47 = *(v88 + 1);
      v47(v83, v79);
      v48 = (v89 + *(v77 + 28));
      if (v43 == *v48 && v45 == v48[1])
      {

        LODWORD(v26) = v78;
        v49 = v82;
      }

      else
      {
        OnlyIdentifier = sub_24ABC9748();

        LODWORD(v26) = v78;
        v49 = v82;
        if ((OnlyIdentifier & 1) == 0)
        {

          if (qword_27EF99B00 != -1)
          {
            swift_once();
          }

          v57 = sub_24ABC9398();
          __swift_project_value_buffer(v57, qword_27EF99D28);
          v58 = v80;
          v59 = v97;
          v60 = v79;
          v46[2](v80, v97, v79);
          v61 = sub_24ABC9378();
          v62 = sub_24ABC9608();
          if (os_log_type_enabled(v61, v62))
          {
            v63 = swift_slowAlloc();
            v88 = v63;
            v89 = swift_slowAlloc();
            v92[0] = v89;
            *v63 = 136446210;
            v64 = sub_24ABC92A8();
            v26 = [v64 fp_shortDescription];

            v65 = sub_24ABC9478();
            v66 = v60;
            v67 = v58;
            v69 = v68;

            LODWORD(v26) = v78;
            v70 = v67;
            v60 = v66;
            v47(v70, v66);
            v71 = sub_24ABC67F8(v65, v69, v92);

            v72 = v88;
            *(v88 + 1) = v71;
            v73 = v72;
            _os_log_impl(&dword_24ABB8000, v61, v62, "URL is not the same, the file moved. New URL:%{public}s", v72, 0xCu);
            v74 = v89;
            __swift_destroy_boxed_opaque_existential_0(v89);
            MEMORY[0x24C22AB20](v74, -1, -1);
            v59 = v97;
            MEMORY[0x24C22AB20](v73, -1, -1);
          }

          else
          {

            v47(v58, v60);
          }

          OnlyIdentifier = type metadata accessor for ResolverError(0);
          sub_24ABC3D48(&qword_27EF99B48, type metadata accessor for ResolverError, &unk_24ABCA0DC);
          swift_allocError();
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
          v55 = v59;
          v56 = v60;
          goto LABEL_26;
        }
      }

      sub_24ABC3D90();
      sub_24ABC9288();

      v54 = sub_24ABC3FB0(v49, 1);
      if (v40)
      {
        v55 = v97;
        v56 = v79;
LABEL_26:
        v47(v55, v56);
LABEL_27:
        close(v26);
        return OnlyIdentifier;
      }

      OnlyIdentifier = v54;
      v47(v97, v79);
      close(v26);
    }
  }

  return OnlyIdentifier;
}

uint64_t sub_24ABC3044()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF99BF0, &qword_24ABCA070);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_24ABCA1A0;
  *(v0 + 32) = 1684631410;
  *(v0 + 40) = 0xE400000000000000;
  *(v0 + 48) = sub_24ABC9728();
  *(v0 + 56) = v1;
  type metadata accessor for ReadOnlyIdentifier(0);
  *(v0 + 64) = sub_24ABC9338();
  *(v0 + 72) = v2;
  *(v0 + 80) = sub_24ABC9728();
  *(v0 + 88) = v3;

  *(v0 + 96) = sub_24ABC95A8();
  *(v0 + 104) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF99BE0, "l\a");
  sub_24ABBE304();
  sub_24ABC9438();

  v5 = sub_24ABC9448();

  return v5;
}

_BYTE *sub_24ABC31B8@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_24ABC3B90(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_24ABC3C48(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_24ABC3CC4(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

uint64_t sub_24ABC324C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v13 = 0;
    return v13 | (((a4 >> 60) & 1) << 40);
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v14[0] = a3;
    v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v14;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v11 = sub_24ABC9698();
  }

  result = sub_24ABC3724(v11, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v15 = BYTE4(result) & 1;
    v13 = result | ((BYTE4(result) & 1) << 32);
    return v13 | (((a4 >> 60) & 1) << 40);
  }

  return result;
}

uint64_t sub_24ABC3314(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      sub_24ABC9408();
      sub_24ABC3D48(&qword_27EF99C90, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
      return sub_24ABC93C8();
    }

    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_24ABC3644(v5, v6);
  }

  if (v3 == 2)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    return sub_24ABC3644(v5, v6);
  }

  sub_24ABC9408();
  sub_24ABC3D48(&qword_27EF99C90, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
  return sub_24ABC93C8();
}

uint64_t sub_24ABC34F4(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_24ABC3548(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
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

uint64_t sub_24ABC3644(uint64_t a1, uint64_t a2)
{
  result = sub_24ABC9208();
  if (!result || (result = sub_24ABC9228(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_24ABC9218();
      sub_24ABC9408();
      sub_24ABC3D48(&qword_27EF99C90, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
      return sub_24ABC93C8();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_24ABC3724(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = sub_24ABBC480(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_104;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = sub_24ABC9548();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = sub_24ABBC480(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = sub_24ABBC480(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_100;
  }

  if (v25 < a3 >> 16)
  {
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  result = sub_24ABC9548();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_99;
  }

  if (v26 < v13)
  {
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v41 = a6 + 87;
        if (a6 > 10)
        {
          v42 = a6 + 55;
        }

        else
        {
          v41 = 97;
          v42 = 65;
        }

        if (a6 <= 10)
        {
          v43 = a6 + 48;
        }

        else
        {
          v43 = 58;
        }

        if (v27)
        {
          v32 = 0;
          v44 = v27 + 1;
          v45 = result - 1;
          do
          {
            v46 = *v44;
            if (v46 < 0x30 || v46 >= v43)
            {
              if (v46 < 0x41 || v46 >= v42)
              {
                v37 = 0;
                v38 = 1;
                if (v46 < 0x61 || v46 >= v41)
                {
                  return v37 | (v38 << 32);
                }

                v47 = -87;
              }

              else
              {
                v47 = -55;
              }
            }

            else
            {
              v47 = -48;
            }

            v48 = v32 * a6;
            if ((v48 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_96;
            }

            v49 = v46 + v47;
            v32 = v48 + v49;
            if (__CFADD__(v48, v49))
            {
              goto LABEL_96;
            }

            ++v44;
            --v45;
          }

          while (v45);
LABEL_94:
          v38 = 0;
          v37 = v32;
          return v37 | (v38 << 32);
        }

        goto LABEL_95;
      }

      goto LABEL_96;
    }

    goto LABEL_103;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v50 = a6 + 87;
      if (a6 > 10)
      {
        v51 = a6 + 55;
      }

      else
      {
        v50 = 97;
        v51 = 65;
      }

      if (a6 <= 10)
      {
        v52 = a6 + 48;
      }

      else
      {
        v52 = 58;
      }

      if (v27)
      {
        v32 = 0;
        while (1)
        {
          v53 = *v27;
          if (v53 < 0x30 || v53 >= v52)
          {
            if (v53 < 0x41 || v53 >= v51)
            {
              v37 = 0;
              v38 = 1;
              if (v53 < 0x61 || v53 >= v50)
              {
                return v37 | (v38 << 32);
              }

              v54 = -87;
            }

            else
            {
              v54 = -55;
            }
          }

          else
          {
            v54 = -48;
          }

          v55 = v32 * a6;
          if ((v55 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_96;
          }

          v56 = v53 + v54;
          v32 = v55 + v56;
          if (__CFADD__(v55, v56))
          {
            goto LABEL_96;
          }

          ++v27;
          if (!--result)
          {
            goto LABEL_94;
          }
        }
      }

      goto LABEL_95;
    }

LABEL_96:
    v37 = 0;
    v38 = 1;
    return v37 | (v38 << 32);
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 87;
      if (a6 > 10)
      {
        v30 = a6 + 55;
      }

      else
      {
        v29 = 97;
        v30 = 65;
      }

      if (a6 <= 10)
      {
        v31 = a6 + 48;
      }

      else
      {
        v31 = 58;
      }

      if (v27)
      {
        v32 = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v31)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              v38 = 1;
              if (v35 < 0x61 || v35 >= v29)
              {
                return v37 | (v38 << 32);
              }

              v36 = -87;
            }

            else
            {
              v36 = -55;
            }
          }

          else
          {
            v36 = -48;
          }

          v39 = v32 * a6;
          if ((v39 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_96;
          }

          v40 = v35 + v36;
          v32 = v39 - v40;
          if (v39 < v40)
          {
            goto LABEL_96;
          }

          ++v33;
          if (!--v34)
          {
            goto LABEL_94;
          }
        }
      }

LABEL_95:
      v37 = 0;
      v38 = 0;
      return v37 | (v38 << 32);
    }

    goto LABEL_96;
  }

LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
  return result;
}

uint64_t sub_24ABC3B90(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_24ABC3C48(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_24ABC9238();
  swift_allocObject();
  result = sub_24ABC91F8();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_24ABC9308();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_24ABC3CC4(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_24ABC9238();
  swift_allocObject();
  result = sub_24ABC91F8();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_24ABC3D48(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24ABC3D90()
{
  result = qword_27EF99CA0;
  if (!qword_27EF99CA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EF99CA0);
  }

  return result;
}

unint64_t sub_24ABC3DDC()
{
  result = qword_27EF99CB0;
  if (!qword_27EF99CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF99CB0);
  }

  return result;
}

uint64_t sub_24ABC3E30(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF99CA8, &qword_24ABCA1F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_24ABC3E98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v5 = sub_24ABC9418();
    if (a2)
    {
LABEL_3:
      v6 = sub_24ABC9258();
      goto LABEL_6;
    }
  }

  else
  {
    v5 = 0;
    if (a2)
    {
      goto LABEL_3;
    }
  }

  v6 = 0;
LABEL_6:
  v7 = v6;
  (*(a3 + 16))(a3, v5);
}

void sub_24ABC3F40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_24ABC9258();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

id sub_24ABC3FB0(uint64_t a1, char a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = sub_24ABC92A8();
  v13[0] = 0;
  v5 = [swift_getObjCClassFromMetadata() wrapperWithURL:v4 readonly:a2 & 1 error:v13];

  v6 = v13[0];
  if (v5)
  {
    v7 = sub_24ABC92F8();
    v8 = *(*(v7 - 8) + 8);
    v9 = v6;
    v8(a1, v7);
  }

  else
  {
    v10 = v13[0];
    sub_24ABC9268();

    swift_willThrow();
    v11 = sub_24ABC92F8();
    (*(*(v11 - 8) + 8))(a1, v11);
  }

  return v5;
}

uint64_t sub_24ABC4110()
{
  v0 = sub_24ABC9398();
  __swift_allocate_value_buffer(v0, qword_27EF99D28);
  v1 = __swift_project_value_buffer(v0, qword_27EF99D28);
  if (qword_27EF99B10 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27EF99CC0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_24ABC41D8()
{
  sub_24ABC919C(0, &qword_27EF99D00, 0x277D86200);
  result = sub_24ABC9628();
  qword_27EF99CB8 = result;
  return result;
}

id static Resolver.log.getter()
{
  if (qword_27EF99B08 != -1)
  {
    swift_once();
  }

  v1 = qword_27EF99CB8;

  return v1;
}

uint64_t sub_24ABC42A4()
{
  v0 = sub_24ABC9398();
  __swift_allocate_value_buffer(v0, qword_27EF99CC0);
  __swift_project_value_buffer(v0, qword_27EF99CC0);
  return sub_24ABC9388();
}

uint64_t static Resolver.sharedLogger.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27EF99B10 != -1)
  {
    swift_once();
  }

  v2 = sub_24ABC9398();
  v3 = __swift_project_value_buffer(v2, qword_27EF99CC0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Resolver.ConnectionInfoKey.init(rawValue:)@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_24ABC9708();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_24ABC4440()
{
  sub_24ABC97A8();
  sub_24ABC94B8();
  return sub_24ABC97B8();
}

uint64_t sub_24ABC44B4(uint64_t a1)
{
  sub_24ABC97A8();
  sub_24ABC94B8();
  return sub_24ABC97B8();
}

uint64_t sub_24ABC4508@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_24ABC9708();

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_24ABC457C(void (*a1)(uint64_t, void))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF99CD8, &qword_24ABCA230);
  inited = swift_initStackObject();
  *(inited + 32) = 0xD00000000000001CLL;
  *(inited + 16) = xmmword_24ABCA080;
  *(inited + 40) = 0x800000024ABCA340;
  v3 = [objc_opt_self() mainBundle];
  v4 = [v3 bundleIdentifier];

  if (v4)
  {
    v5 = sub_24ABC9478();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0xE000000000000000;
  }

  *(inited + 48) = v5;
  *(inited + 56) = v7;
  v8 = sub_24ABC6E6C(inited);
  swift_setDeallocating();
  sub_24ABC0680(inited + 32, &qword_27EF99CE0, &qword_24ABCA238);
  a1(v8, 0);
}

void sub_24ABC4728(void *a1, void *a2, id a3)
{
  v6 = type metadata accessor for ResolverError(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v153 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24ABC92F8();
  v10 = *(v9 - 1);
  v11 = MEMORY[0x28223BE20](v9);
  v154 = &v153 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v155 = &v153 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v160 = &v153 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v157 = &v153 - v18;
  MEMORY[0x28223BE20](v17);
  v156 = &v153 - v19;
  OnlyIdentifier = type metadata accessor for ReadOnlyIdentifier(0);
  MEMORY[0x28223BE20](OnlyIdentifier - 8);
  v161 = (&v153 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_27EF99B00 != -1)
  {
LABEL_44:
    swift_once();
  }

  v22 = sub_24ABC9398();
  v23 = __swift_project_value_buffer(v22, qword_27EF99D28);
  v24 = a1;
  v25 = sub_24ABC9378();
  v26 = sub_24ABC95F8();

  v27 = os_log_type_enabled(v25, v26);
  v162 = a3;
  v163 = v24;
  v158 = v6;
  v159 = v8;
  if (v27)
  {
    v28 = v23;
    v29 = a2;
    v30 = v9;
    v31 = swift_slowAlloc();
    v32 = v10;
    v33 = swift_slowAlloc();
    v164 = v33;
    *v31 = 136315138;
    v34 = sub_24ABC9478();
    v36 = sub_24ABC67F8(v34, v35, &v164);
    v24 = v163;

    *(v31 + 4) = v36;
    _os_log_impl(&dword_24ABB8000, v25, v26, "[%s] did receive itemID to resolve", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v33);
    v37 = v33;
    v10 = v32;
    MEMORY[0x24C22AB20](v37, -1, -1);
    v38 = v31;
    v9 = v30;
    a2 = v29;
    v23 = v28;
    MEMORY[0x24C22AB20](v38, -1, -1);
  }

  sub_24ABC9478();
  v39 = sub_24ABC9578();

  if (v39)
  {
    v40 = v24;
    sub_24ABC1E9C(v40, v161);
    v76 = sub_24ABC25F0();
    v77 = v40;
    v78 = v76;
    v79 = sub_24ABC9378();
    v80 = sub_24ABC95F8();

    if (os_log_type_enabled(v79, v80))
    {
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v159 = v9;
      v84 = v83;
      v164 = v83;
      *v82 = 136315394;
      v85 = sub_24ABC9478();
      v87 = sub_24ABC67F8(v85, v86, &v164);
      v153 = a2;
      v88 = v87;

      *(v82 + 4) = v88;
      *(v82 + 12) = 2082;
      v89 = [v78 url];
      v90 = v156;
      sub_24ABC92D8();

      v91 = sub_24ABC92A8();
      v92 = [v91 fp_shortDescription];

      v93 = sub_24ABC9478();
      v94 = v10;
      v96 = v95;

      a2 = v153;
      (*(v94 + 8))(v90, v159);
      v97 = sub_24ABC67F8(v93, v96, &v164);

      *(v82 + 14) = v97;
      _os_log_impl(&dword_24ABB8000, v79, v80, "[%s] resolved read only item id to url: %{public}s.", v82, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C22AB20](v84, -1, -1);
      MEMORY[0x24C22AB20](v82, -1, -1);
    }

    v98 = v78;
    (a2)(v78, 0);

    sub_24ABC70E0(v161, type metadata accessor for ReadOnlyIdentifier);
    return;
  }

  sub_24ABC9478();
  v41 = sub_24ABC9578();

  if ((v41 & 1) == 0)
  {
    v62 = sub_24ABBB1D4(v24);
    if (qword_27EF99AF0 != -1)
    {
      swift_once();
    }

    sub_24ABBAD20(dword_27EF99D08, v62);
    v63 = v160;
    v64 = a2;
    sub_24ABC9288();

    sub_24ABC919C(0, &qword_27EF99CA0, 0x277CC6438);
    v65 = *(v10 + 16);
    v66 = v155;
    v65(v155, v63, v9);
    v118 = sub_24ABC3FB0(v66, 0);
    v119 = v154;
    v65(v154, v63, v9);
    v120 = v163;
    v121 = sub_24ABC9378();
    v122 = sub_24ABC95F8();

    v123 = os_log_type_enabled(v121, v122);
    v124 = v9;
    if (v123)
    {
      v125 = swift_slowAlloc();
      v159 = v9;
      v126 = v125;
      v161 = swift_slowAlloc();
      v164 = v161;
      *v126 = 136315394;
      v127 = sub_24ABC9478();
      v129 = sub_24ABC67F8(v127, v128, &v164);
      LODWORD(v163) = v122;
      v130 = v129;

      *(v126 + 4) = v130;
      *(v126 + 12) = 2082;
      v131 = sub_24ABC92A8();
      v132 = [v131 fp_shortDescription];

      v133 = sub_24ABC9478();
      v135 = v134;

      v136 = *(v10 + 8);
      v136(v119, v159);
      v137 = sub_24ABC67F8(v133, v135, &v164);

      *(v126 + 14) = v137;
      _os_log_impl(&dword_24ABB8000, v121, v163, "[%s] resolved to url: %{public}s.", v126, 0x16u);
      v138 = v161;
      swift_arrayDestroy();
      MEMORY[0x24C22AB20](v138, -1, -1);
      v139 = v126;
      v124 = v159;
      MEMORY[0x24C22AB20](v139, -1, -1);
    }

    else
    {

      v136 = *(v10 + 8);
      v136(v119, v124);
    }

    v140 = v118;
    v64(v118, 0);

    v136(v160, v124);
    return;
  }

  v156 = v23;
  v42 = sub_24ABC9478();
  v44 = v43;
  sub_24ABC9478();
  v45 = sub_24ABC94D8();

  v46 = sub_24ABBB4B0(v45, v42, v44);
  v48 = v47;
  v50 = v49;
  v52 = v51;

  v8 = MEMORY[0x24C22A290](v46, v48, v50, v52);
  a1 = v53;

  v54 = [objc_opt_self() sharedRegistry];
  if (!v54)
  {

    v67 = v24;
    v68 = sub_24ABC9378();
    v69 = sub_24ABC95F8();

    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v164 = v71;
      *v70 = 136315138;
      v72 = sub_24ABC9478();
      v74 = sub_24ABC67F8(v72, v73, &v164);

      *(v70 + 4) = v74;
      _os_log_impl(&dword_24ABB8000, v68, v69, "[%s] can't get the FPAppRegistry.", v70, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v71);
      MEMORY[0x24C22AB20](v71, -1, -1);
      MEMORY[0x24C22AB20](v70, -1, -1);
    }

    v163 = FPNotSupportedError();
    (a2)(0, v163);
    v75 = v163;

    return;
  }

  v155 = v54;
  a3 = [v54 listOfMonitoredApps];
  sub_24ABC919C(0, &qword_27EF99BF8, 0x277CC6388);
  v6 = sub_24ABC95C8();

  v153 = a2;
  if (!(v6 >> 62))
  {
    a2 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (a2)
    {
      goto LABEL_10;
    }

LABEL_46:

    v141 = v24;
    v142 = sub_24ABC9378();
    v143 = sub_24ABC95F8();

    if (os_log_type_enabled(v142, v143))
    {
      v144 = swift_slowAlloc();
      v145 = swift_slowAlloc();
      v164 = v145;
      *v144 = 136315138;
      v146 = sub_24ABC9478();
      v148 = sub_24ABC67F8(v146, v147, &v164);

      *(v144 + 4) = v148;
      _os_log_impl(&dword_24ABB8000, v142, v143, "[%s] app is not in the registry.", v144, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v145);
      MEMORY[0x24C22AB20](v145, -1, -1);
      MEMORY[0x24C22AB20](v144, -1, -1);
    }

    v149 = v159;
    v150 = v155;
    *v159 = v141;
    swift_storeEnumTagMultiPayload();
    v151 = v141;
    v152 = sub_24ABBF248();
    sub_24ABC70E0(v149, type metadata accessor for ResolverError);
    (v153)(0, v152);

    return;
  }

  a2 = sub_24ABC96B8();
  if (!a2)
  {
    goto LABEL_46;
  }

LABEL_10:
  v55 = 0;
  v160 = (v6 & 0xFFFFFFFFFFFFFF8);
  v161 = (v6 & 0xC000000000000001);
  while (1)
  {
    if (v161)
    {
      v56 = MEMORY[0x24C22A480](v55, v6);
    }

    else
    {
      if (v55 >= *(v160 + 2))
      {
        goto LABEL_43;
      }

      v56 = *(v6 + 8 * v55 + 32);
    }

    a3 = v56;
    v9 = (v55 + 1);
    if (__OFADD__(v55, 1))
    {
      __break(1u);
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v57 = [v56 bundleID];
    v10 = sub_24ABC9478();
    v59 = v58;

    if (v10 == v8 && v59 == a1)
    {
      break;
    }

    v61 = sub_24ABC9748();

    if (v61)
    {
      goto LABEL_35;
    }

    ++v55;
    v24 = v163;
    if (v9 == a2)
    {
      goto LABEL_46;
    }
  }

LABEL_35:
  v99 = v163;

  sub_24ABC919C(0, &qword_27EF99CA0, 0x277CC6438);
  v100 = [a3 documentsURL];
  v101 = v157;
  sub_24ABC92D8();

  v102 = sub_24ABC3FB0(v101, 0);
  v103 = v153;
  v104 = v102;
  v105 = v99;
  v106 = v104;
  v107 = sub_24ABC9378();
  v108 = sub_24ABC95F8();

  if (os_log_type_enabled(v107, v108))
  {
    v109 = swift_slowAlloc();
    v110 = swift_slowAlloc();
    v111 = swift_slowAlloc();
    v164 = v111;
    *v109 = 136315394;
    v112 = sub_24ABC9478();
    v114 = sub_24ABC67F8(v112, v113, &v164);

    *(v109 + 4) = v114;
    *(v109 + 12) = 2112;
    *(v109 + 14) = v106;
    *v110 = v106;
    v115 = v106;
    _os_log_impl(&dword_24ABB8000, v107, v108, "[%s] returning wrapper: %@.", v109, 0x16u);
    sub_24ABC0680(v110, &qword_27EF99CE8, &unk_24ABCA240);
    MEMORY[0x24C22AB20](v110, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v111);
    MEMORY[0x24C22AB20](v111, -1, -1);
    MEMORY[0x24C22AB20](v109, -1, -1);
  }

  v116 = v155;
  v117 = v106;
  v103(v106, 0);
}

void sub_24ABC5890(uint64_t a1, int a2, void (*a3)(void *, id), uint64_t a4)
{
  v83 = a4;
  v84 = a3;
  LODWORD(v82) = a2;
  v80 = type metadata accessor for ResolverError(0);
  MEMORY[0x28223BE20](v80);
  v81 = v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  OnlyIdentifier = type metadata accessor for ReadOnlyIdentifier(0);
  MEMORY[0x28223BE20](OnlyIdentifier - 8);
  v8 = v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF99BD0, &qword_24ABCA068);
  MEMORY[0x28223BE20](v9);
  v11 = v79 - v10;
  v12 = sub_24ABC92F8();
  v85 = *(v12 - 8);
  v13 = MEMORY[0x28223BE20](v12);
  v79[1] = v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = v79 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = v79 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = v79 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = v79 - v24;
  if (sub_24ABBDF50())
  {
    sub_24ABBD814();
    sub_24ABBD4F0();
    v26 = 1;
    v27 = v20;
    goto LABEL_3;
  }

  v79[0] = v8;
  if (qword_27EF99AF8 != -1)
  {
    swift_once();
  }

  v32 = __swift_project_value_buffer(v9, qword_27EF99D10);
  sub_24ABC9134(v32, v11, &qword_27EF99BD0, &qword_24ABCA068);
  v33 = v85;
  if ((*(v85 + 48))(v11, 1, v12) == 1)
  {
    sub_24ABC0680(v11, &qword_27EF99BD0, &qword_24ABCA068);
    v26 = 0;
  }

  else
  {
    (*(v33 + 32))(v25, v11, v12);
    v49 = sub_24ABC92A8();
    v50 = sub_24ABC92A8();
    v51 = [v49 fp:v50 realPathRelationshipToItemAtRealPathURL:?];

    (*(v33 + 8))(v25, v12);
    v26 = v51 == 0;
  }

  v27 = v20;
  v52 = sub_24ABBD814();
  v8 = v79[0];
  if ((v52 & 1) != 0 && !v26)
  {
    if (v82)
    {
      v26 = 0;
      goto LABEL_3;
    }

LABEL_20:
    v54 = FPNotSupportedError();
    v84(0, v54);

    return;
  }

  sub_24ABBD4F0();
  if (((v53 & v82 | v26) & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_3:
  v28 = sub_24ABC92A8();
  [v28 fileSystemRepresentation];
  v29 = v28;
  v30 = sub_24ABC93A8();
  if ((v30 & 0x80000000) != 0)
  {
    if (qword_27EF99B00 != -1)
    {
      swift_once();
    }

    v34 = sub_24ABC9398();
    __swift_project_value_buffer(v34, qword_27EF99D28);
    v35 = v85;
    (*(v85 + 16))(v17, a1, v12);
    v36 = sub_24ABC9378();
    v37 = sub_24ABC9608();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = v12;
      v39 = v35;
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v87[0] = v41;
      *v40 = 136446466;
      v42 = sub_24ABC92A8();
      v43 = [v42 fp_shortDescription];

      v44 = sub_24ABC9478();
      v46 = v45;

      (*(v39 + 8))(v17, v38);
      v47 = sub_24ABC67F8(v44, v46, v87);

      *(v40 + 4) = v47;
      *(v40 + 12) = 1026;
      *(v40 + 14) = MEMORY[0x24C22A1B0](v48);
      _os_log_impl(&dword_24ABB8000, v36, v37, "cannot open %{public}s error: %{darwin.errno,public}d", v40, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(v41);
      MEMORY[0x24C22AB20](v41, -1, -1);
      MEMORY[0x24C22AB20](v40, -1, -1);
    }

    else
    {

      (*(v35 + 8))(v17, v12);
    }

    v55 = v81;
    swift_storeEnumTagMultiPayload();
    v56 = sub_24ABBF248();
    sub_24ABC70E0(v55, type metadata accessor for ResolverError);
    v84(0, v56);
  }

  else
  {
    v31 = v30;
    if (v26)
    {
      sub_24ABBCDEC(v30);
      v58 = v57;
      v59 = v57;
      v84(v58, 0);
    }

    else
    {
      sub_24ABBAA40(v30, v87);
      v60 = *(v85 + 16);
      v60(v23, a1, v12);
      sub_24ABC176C(v23, v87, v8);
      v61 = sub_24ABC3044();
      if (qword_27EF99B00 != -1)
      {
        swift_once();
      }

      v62 = sub_24ABC9398();
      __swift_project_value_buffer(v62, qword_27EF99D28);
      v60(v27, a1, v12);
      v63 = v61;
      v64 = sub_24ABC9378();
      v65 = sub_24ABC95F8();

      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        v82 = swift_slowAlloc();
        v86 = v82;
        *v66 = 136446466;
        v67 = sub_24ABC9478();
        LODWORD(v81) = v65;
        v69 = v27;
        v70 = sub_24ABC67F8(v67, v68, &v86);

        *(v66 + 4) = v70;
        *(v66 + 12) = 2082;
        v71 = sub_24ABC92A8();
        v72 = [v71 fp_shortDescription];

        v73 = sub_24ABC9478();
        v75 = v74;

        (*(v85 + 8))(v69, v12);
        v76 = sub_24ABC67F8(v73, v75, &v86);

        *(v66 + 14) = v76;
        _os_log_impl(&dword_24ABB8000, v64, v81, "Read only item id: %{public}s for %{public}s", v66, 0x16u);
        v77 = v82;
        swift_arrayDestroy();
        MEMORY[0x24C22AB20](v77, -1, -1);
        MEMORY[0x24C22AB20](v66, -1, -1);
      }

      else
      {

        (*(v85 + 8))(v27, v12);
      }

      v78 = v63;
      v84(v63, 0);

      sub_24ABC70E0(v8, type metadata accessor for ReadOnlyIdentifier);
    }

    close(v31);
  }
}

id Resolver.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id Resolver.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Resolver();
  return objc_msgSendSuper2(&v2, sel_init);
}

id Resolver.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for Resolver();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_24ABC6728(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_24ABC679C(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_24ABC67F8(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_24ABC67F8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_24ABC68C4(v11, 0, 0, 1, a1, a2);
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
    sub_24ABC0624(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_24ABC68C4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_24ABC69D0(a5, a6);
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
    result = sub_24ABC9698();
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

void *sub_24ABC69D0(uint64_t a1, unint64_t a2)
{
  v3 = sub_24ABC6A1C(a1, a2);
  sub_24ABC6B4C(&unk_285E1F4F0);
  return v3;
}

void *sub_24ABC6A1C(uint64_t a1, unint64_t a2)
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

  v6 = sub_24ABBB4FC(v5, 0);
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

  result = sub_24ABC9698();
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
        v10 = sub_24ABC9518();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_24ABBB4FC(v10, 0);
        result = sub_24ABC9668();
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

uint64_t sub_24ABC6B4C(uint64_t result)
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

  result = sub_24ABC6C38(result, v11, 1, v3);
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

char *sub_24ABC6C38(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF99BC8, &qword_24ABCA060);
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

_BYTE **sub_24ABC6D2C(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

unint64_t sub_24ABC6D3C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF99C58, &qword_24ABCA178);
    v3 = sub_24ABC96E8();
    v4 = a1 + 32;

    while (1)
    {
      sub_24ABC9134(v4, &v13, &qword_27EF99C50, &qword_24ABCA170);
      v5 = v13;
      v6 = v14;
      result = sub_24ABBF848(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_24ABC0614(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

unint64_t sub_24ABC6E6C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF99CF8, &unk_24ABCA350);
    v3 = sub_24ABC96E8();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_24ABBF848(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

void sub_24ABC6F80(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF99CD8, &qword_24ABCA230);
  inited = swift_initStackObject();
  *(inited + 32) = 0xD00000000000001CLL;
  *(inited + 16) = xmmword_24ABCA080;
  *(inited + 40) = 0x800000024ABCA340;
  v3 = [objc_opt_self() mainBundle];
  v4 = [v3 bundleIdentifier];

  if (v4)
  {
    v5 = sub_24ABC9478();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0xE000000000000000;
  }

  *(inited + 48) = v5;
  *(inited + 56) = v7;
  sub_24ABC6E6C(inited);
  swift_setDeallocating();
  sub_24ABC0680(inited + 32, &qword_27EF99CE0, &qword_24ABCA238);
  v8 = sub_24ABC9418();
  (*(a1 + 16))(a1, v8, 0);
}

uint64_t sub_24ABC70E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24ABC7168()
{
  result = qword_27EF99CF0;
  if (!qword_27EF99CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF99CF0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Resolver.ConnectionInfoKey(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for Resolver.ConnectionInfoKey(_WORD *result, int a2, int a3)
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

void sub_24ABC7358(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for ResolverError(0);
  MEMORY[0x28223BE20](v4);
  v6 = (&v141 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_24ABC92F8();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v151 = &v141 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v144 = &v141 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v141 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v141 - v17;
  MEMORY[0x28223BE20](v16);
  v145 = &v141 - v19;
  OnlyIdentifier = type metadata accessor for ReadOnlyIdentifier(0);
  MEMORY[0x28223BE20](OnlyIdentifier - 8);
  v149 = (&v141 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_27EF99B00 != -1)
  {
LABEL_47:
    swift_once();
  }

  v22 = sub_24ABC9398();
  v23 = __swift_project_value_buffer(v22, qword_27EF99D28);
  v24 = a1;
  v150 = v23;
  v25 = sub_24ABC9378();
  v26 = sub_24ABC95F8();

  v27 = os_log_type_enabled(v25, v26);
  v147 = v4;
  v148 = v6;
  v146 = v18;
  if (v27)
  {
    v28 = swift_slowAlloc();
    v143 = v15;
    v29 = v7;
    v30 = a2;
    v31 = v24;
    v32 = v28;
    v33 = v8;
    v34 = swift_slowAlloc();
    v152 = v34;
    *v32 = 136315138;
    v35 = sub_24ABC9478();
    v18 = sub_24ABC67F8(v35, v36, &v152);

    *(v32 + 4) = v18;
    _os_log_impl(&dword_24ABB8000, v25, v26, "[%s] did receive itemID to resolve", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v34);
    v37 = v34;
    v8 = v33;
    MEMORY[0x24C22AB20](v37, -1, -1);
    v38 = v32;
    v24 = v31;
    a2 = v30;
    v7 = v29;
    v15 = v143;
    MEMORY[0x24C22AB20](v38, -1, -1);
  }

  sub_24ABC9478();
  v39 = sub_24ABC9578();

  v40 = v151;
  if (v39)
  {
    v41 = v24;
    sub_24ABC1E9C(v41, v149);
    v74 = sub_24ABC25F0();
    v75 = v41;
    v76 = v74;
    v77 = sub_24ABC9378();
    v78 = sub_24ABC95F8();

    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      v151 = swift_slowAlloc();
      v152 = v151;
      *v79 = 136315394;
      v80 = sub_24ABC9478();
      v82 = sub_24ABC67F8(v80, v81, &v152);
      v142 = a2;
      v83 = v82;

      *(v79 + 4) = v83;
      *(v79 + 12) = 2082;
      v84 = [v76 url];
      v85 = v145;
      sub_24ABC92D8();

      v86 = sub_24ABC92A8();
      v87 = [v86 fp_shortDescription];

      v88 = sub_24ABC9478();
      v90 = v89;

      a2 = v142;
      (*(v8 + 8))(v85, v7);
      v91 = sub_24ABC67F8(v88, v90, &v152);

      *(v79 + 14) = v91;
      _os_log_impl(&dword_24ABB8000, v77, v78, "[%s] resolved read only item id to url: %{public}s.", v79, 0x16u);
      v92 = v151;
      swift_arrayDestroy();
      MEMORY[0x24C22AB20](v92, -1, -1);
      MEMORY[0x24C22AB20](v79, -1, -1);
    }

    (*(a2 + 16))(a2, v76, 0);
    sub_24ABC70E0(v149, type metadata accessor for ReadOnlyIdentifier);
    return;
  }

  sub_24ABC9478();
  v42 = sub_24ABC9578();

  if (v42)
  {
    v43 = sub_24ABC9478();
    v45 = v44;
    sub_24ABC9478();
    v46 = sub_24ABC94D8();

    v47 = sub_24ABBB4B0(v46, v43, v45);
    v49 = v48;
    v51 = v50;
    v4 = v52;

    v15 = MEMORY[0x24C22A290](v47, v49, v51, v4);
    a1 = v53;

    v54 = [objc_opt_self() sharedRegistry];
    if (v54)
    {
      v144 = v54;
      v145 = v24;
      v6 = [v54 listOfMonitoredApps];
      sub_24ABC919C(0, &qword_27EF99BF8, 0x277CC6388);
      v55 = sub_24ABC95C8();

      v142 = a2;
      if (v55 >> 62)
      {
        a2 = sub_24ABC96B8();
        if (a2)
        {
LABEL_10:
          v7 = 0;
          v151 = (v55 & 0xC000000000000001);
          v149 = (v55 & 0xFFFFFFFFFFFFFF8);
          while (1)
          {
            if (v151)
            {
              v56 = MEMORY[0x24C22A480](v7, v55);
            }

            else
            {
              if (v7 >= v149[2])
              {
                goto LABEL_46;
              }

              v56 = *(v55 + 8 * v7 + 32);
            }

            v6 = v56;
            v18 = (v7 + 1);
            if (__OFADD__(v7, 1))
            {
              __break(1u);
LABEL_46:
              __break(1u);
              goto LABEL_47;
            }

            v57 = [v56 bundleID];
            v8 = sub_24ABC9478();
            v59 = v58;

            if (v8 == v15 && v59 == a1)
            {
              break;
            }

            v4 = sub_24ABC9748();

            if (v4)
            {
              goto LABEL_38;
            }

            ++v7;
            if (v18 == a2)
            {
              goto LABEL_49;
            }
          }

LABEL_38:

          sub_24ABC919C(0, &qword_27EF99CA0, 0x277CC6438);
          v95 = [v6 documentsURL];
          v96 = v146;
          sub_24ABC92D8();

          v97 = sub_24ABC3FB0(v96, 0);
          v98 = v142;
          v99 = v145;
          v100 = v97;
          v101 = sub_24ABC9378();
          v102 = sub_24ABC95F8();

          if (os_log_type_enabled(v101, v102))
          {
            v103 = swift_slowAlloc();
            v104 = swift_slowAlloc();
            v105 = swift_slowAlloc();
            v152 = v105;
            *v103 = 136315394;
            v106 = sub_24ABC9478();
            v108 = sub_24ABC67F8(v106, v107, &v152);

            *(v103 + 4) = v108;
            *(v103 + 12) = 2112;
            *(v103 + 14) = v100;
            *v104 = v100;
            v109 = v100;
            _os_log_impl(&dword_24ABB8000, v101, v102, "[%s] returning wrapper: %@.", v103, 0x16u);
            sub_24ABC0680(v104, &qword_27EF99CE8, &unk_24ABCA240);
            MEMORY[0x24C22AB20](v104, -1, -1);
            __swift_destroy_boxed_opaque_existential_0(v105);
            MEMORY[0x24C22AB20](v105, -1, -1);
            MEMORY[0x24C22AB20](v103, -1, -1);
          }

          v110 = *(v98 + 16);
          v111 = v100;
          v110(v98, v111, 0);

          goto LABEL_52;
        }
      }

      else
      {
        a2 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (a2)
        {
          goto LABEL_10;
        }
      }

LABEL_49:

      v129 = v145;
      v130 = sub_24ABC9378();
      v131 = sub_24ABC95F8();

      if (os_log_type_enabled(v130, v131))
      {
        v132 = swift_slowAlloc();
        v133 = swift_slowAlloc();
        v152 = v133;
        *v132 = 136315138;
        v134 = sub_24ABC9478();
        v136 = sub_24ABC67F8(v134, v135, &v152);

        *(v132 + 4) = v136;
        _os_log_impl(&dword_24ABB8000, v130, v131, "[%s] app is not in the registry.", v132, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v133);
        MEMORY[0x24C22AB20](v133, -1, -1);
        MEMORY[0x24C22AB20](v132, -1, -1);
      }

      v137 = v148;
      *v148 = v129;
      swift_storeEnumTagMultiPayload();
      v138 = v129;
      v139 = sub_24ABBF248();
      sub_24ABC70E0(v137, type metadata accessor for ResolverError);
      v140 = sub_24ABC9258();
      (*(v142 + 16))(v142, 0, v140);

LABEL_52:
      return;
    }

    v64 = v24;
    v65 = sub_24ABC9378();
    v66 = sub_24ABC95F8();

    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v152 = v68;
      *v67 = 136315138;
      v69 = sub_24ABC9478();
      v71 = sub_24ABC67F8(v69, v70, &v152);

      *(v67 + 4) = v71;
      _os_log_impl(&dword_24ABB8000, v65, v66, "[%s] can't get the FPAppRegistry.", v67, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v68);
      MEMORY[0x24C22AB20](v68, -1, -1);
      MEMORY[0x24C22AB20](v67, -1, -1);
    }

    v72 = FPNotSupportedError();
    if (v72)
    {
      v73 = sub_24ABC9258();
    }

    else
    {
      v73 = 0;
    }

    v93 = *(a2 + 16);
    v151 = v73;
    v93(a2, 0);

    v94 = v151;
  }

  else
  {
    v61 = sub_24ABBB1D4(v24);
    if (qword_27EF99AF0 != -1)
    {
      swift_once();
    }

    sub_24ABBAD20(dword_27EF99D08, v61);
    v142 = a2;
    sub_24ABC9288();

    sub_24ABC919C(0, &qword_27EF99CA0, 0x277CC6438);
    v62 = *(v8 + 16);
    v63 = v144;
    v62(v144, v15, v7);
    v149 = sub_24ABC3FB0(v63, 0);
    v143 = v15;
    (v62)(v40);
    v112 = v24;
    v113 = sub_24ABC9378();
    v114 = v7;
    v115 = sub_24ABC95F8();

    if (os_log_type_enabled(v113, v115))
    {
      v116 = swift_slowAlloc();
      v117 = swift_slowAlloc();
      v152 = v117;
      *v116 = 136315394;
      v118 = sub_24ABC9478();
      v120 = sub_24ABC67F8(v118, v119, &v152);

      *(v116 + 4) = v120;
      *(v116 + 12) = 2082;
      v121 = sub_24ABC92A8();
      v122 = [v121 fp_shortDescription];

      v123 = sub_24ABC9478();
      v125 = v124;

      v126 = *(v8 + 8);
      v126(v40, v114);
      v127 = sub_24ABC67F8(v123, v125, &v152);

      *(v116 + 14) = v127;
      _os_log_impl(&dword_24ABB8000, v113, v115, "[%s] resolved to url: %{public}s.", v116, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C22AB20](v117, -1, -1);
      MEMORY[0x24C22AB20](v116, -1, -1);
    }

    else
    {

      v126 = *(v8 + 8);
      v126(v40, v114);
    }

    v128 = v149;
    (*(v142 + 16))(v142, v149, 0);

    v126(v143, v114);
  }
}

void sub_24ABC843C(uint64_t a1, int a2, uint64_t a3)
{
  v85 = a3;
  OnlyIdentifier = type metadata accessor for ReadOnlyIdentifier(0);
  MEMORY[0x28223BE20](OnlyIdentifier - 8);
  v7 = v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for ResolverError(0);
  MEMORY[0x28223BE20](v82);
  v83 = v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF99BD0, &qword_24ABCA068);
  MEMORY[0x28223BE20](v9);
  v11 = v80 - v10;
  v84 = sub_24ABC92F8();
  v86 = *(v84 - 8);
  v12 = MEMORY[0x28223BE20](v84);
  v80[1] = v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v81 = v80 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = v80 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = v80 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = v80 - v22;
  if (sub_24ABBDF50())
  {
    sub_24ABBD814();
    sub_24ABBD4F0();
    LOBYTE(v24) = 1;
    v25 = v86;
    goto LABEL_3;
  }

  v30 = v7;
  if (qword_27EF99AF8 != -1)
  {
    swift_once();
  }

  v31 = __swift_project_value_buffer(v9, qword_27EF99D10);
  sub_24ABC9134(v31, v11, &qword_27EF99BD0, &qword_24ABCA068);
  v25 = v86;
  v32 = v84;
  if ((*(v86 + 48))(v11, 1, v84) == 1)
  {
    sub_24ABC0680(v11, &qword_27EF99BD0, &qword_24ABCA068);
    v24 = 0;
  }

  else
  {
    (*(v25 + 32))(v23, v11, v32);
    v46 = sub_24ABC92A8();
    v47 = sub_24ABC92A8();
    v48 = [v46 fp:v47 realPathRelationshipToItemAtRealPathURL:?];

    (*(v86 + 8))(v23, v32);
    v49 = v48 == 0;
    v25 = v86;
    v24 = v49;
  }

  v7 = v30;
  if ((sub_24ABBD814() & 1) != 0 && !v24)
  {
    if (a2)
    {
      LOBYTE(v24) = 0;
      goto LABEL_3;
    }

LABEL_22:
    v51 = FPNotSupportedError();
    if (v51)
    {
      v52 = sub_24ABC9258();
    }

    else
    {
      v52 = 0;
    }

    (*(v85 + 16))(v85, 0, v52);

    return;
  }

  sub_24ABBD4F0();
  if (((v50 & a2 | v24) & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_3:
  v26 = sub_24ABC92A8();
  [v26 fileSystemRepresentation];
  v27 = v26;
  v28 = sub_24ABC93A8();
  if ((v28 & 0x80000000) != 0)
  {
    if (qword_27EF99B00 != -1)
    {
      swift_once();
    }

    v33 = sub_24ABC9398();
    __swift_project_value_buffer(v33, qword_27EF99D28);
    v34 = v84;
    (*(v25 + 16))(v21, a1, v84);
    v35 = sub_24ABC9378();
    v36 = sub_24ABC9608();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v88[0] = v38;
      *v37 = 136446466;
      v39 = sub_24ABC92A8();
      v40 = [v39 fp_shortDescription];

      v41 = sub_24ABC9478();
      v43 = v42;

      (*(v25 + 8))(v21, v34);
      v44 = sub_24ABC67F8(v41, v43, v88);

      *(v37 + 4) = v44;
      *(v37 + 12) = 1026;
      *(v37 + 14) = MEMORY[0x24C22A1B0](v45);
      _os_log_impl(&dword_24ABB8000, v35, v36, "cannot open %{public}s error: %{darwin.errno,public}d", v37, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(v38);
      MEMORY[0x24C22AB20](v38, -1, -1);
      MEMORY[0x24C22AB20](v37, -1, -1);
    }

    else
    {

      (*(v25 + 8))(v21, v34);
    }

    v53 = v83;
    swift_storeEnumTagMultiPayload();
    v54 = sub_24ABBF248();
    sub_24ABC70E0(v53, type metadata accessor for ResolverError);
    v55 = sub_24ABC9258();
    (*(v85 + 16))(v85, 0, v55);
  }

  else
  {
    v29 = v28;
    if (v24)
    {
      sub_24ABBCDEC(v28);
      v57 = v56;
      (*(v85 + 16))(v85, v56, 0);
    }

    else
    {
      sub_24ABBAA40(v28, v88);
      v58 = *(v25 + 16);
      v59 = v84;
      v58(v18, a1, v84);
      sub_24ABC176C(v18, v88, v7);
      v60 = sub_24ABC3044();
      if (qword_27EF99B00 != -1)
      {
        swift_once();
      }

      v61 = sub_24ABC9398();
      __swift_project_value_buffer(v61, qword_27EF99D28);
      v62 = v81;
      v58(v81, a1, v59);
      v63 = v60;
      v64 = sub_24ABC9378();
      v65 = sub_24ABC95F8();

      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        v86 = swift_slowAlloc();
        v87 = v86;
        *v66 = 136446466;
        v67 = sub_24ABC9478();
        LODWORD(v83) = v65;
        v69 = sub_24ABC67F8(v67, v68, &v87);

        *(v66 + 4) = v69;
        *(v66 + 12) = 2082;
        v70 = sub_24ABC92A8();
        v71 = [v70 fp_shortDescription];

        v72 = sub_24ABC9478();
        v73 = v7;
        v74 = v59;
        v75 = v25;
        v77 = v76;

        (*(v75 + 8))(v81, v74);
        v78 = sub_24ABC67F8(v72, v77, &v87);

        *(v66 + 14) = v78;
        v7 = v73;
        _os_log_impl(&dword_24ABB8000, v64, v83, "Read only item id: %{public}s for %{public}s", v66, 0x16u);
        v79 = v86;
        swift_arrayDestroy();
        MEMORY[0x24C22AB20](v79, -1, -1);
        MEMORY[0x24C22AB20](v66, -1, -1);
      }

      else
      {

        (*(v25 + 8))(v62, v59);
      }

      (*(v85 + 16))(v85, v63, 0);

      sub_24ABC70E0(v7, type metadata accessor for ReadOnlyIdentifier);
    }

    close(v29);
  }
}

uint64_t sub_24ABC9134(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_24ABC919C(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}