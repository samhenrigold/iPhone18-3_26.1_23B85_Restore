uint64_t sub_241110C44()
{
  v1 = v0[71];
  v2 = v1;
  v3 = sub_241165268();
  v4 = sub_241166048();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[71];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_2410F8000, v3, v4, "Failed to get the new Messages payload from the People extension. error: %@", v6, 0xCu);
    sub_2410FB29C(v7, &qword_27E530E30, &qword_2411676F0);
    MEMORY[0x245CDC5E0](v7, -1, -1);
    MEMORY[0x245CDC5E0](v6, -1, -1);
  }

  v10 = v0[71];
  v11 = v0[67];
  v12 = v0[66];
  v13 = v0[61];
  v24 = v0[38];
  v25 = v0[43];
  v14 = v0[36];
  v22 = v0[60];
  v23 = v0[35];
  v15 = v0[33];
  v20 = v0[32];
  v21 = v0[34];

  sub_2411133A8();
  swift_allocError();
  *v16 = v10;
  *(v16 + 8) = 0;
  *(v16 + 16) = 4;
  swift_willThrow();
  v17 = v10;

  (*(v15 + 8))(v21, v20);
  (*(v14 + 8))(v24, v23);
  sub_2410FB29C(v25, &qword_27E530C48, &qword_241168010);

  v18 = v0[1];

  return v18();
}

unint64_t sub_241110EDC(unint64_t a1, unint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 3u)
  {
    if (a3 <= 1u)
    {
      v12 = 0;
      if (a3)
      {
        sub_2411662B8();
        MEMORY[0x245CDB790](0xD000000000000018, 0x800000024116AEE0);
        MEMORY[0x245CDB790](a1, a2);
        v6 = 0x800000024116AF00;
        v5 = 0xD000000000000021;
      }

      else
      {
        sub_2411662B8();
        MEMORY[0x245CDB790](0xD000000000000043, 0x800000024116AF30);
        MEMORY[0x245CDB790](a1, a2);
        v5 = 46;
        v6 = 0xE100000000000000;
      }

      goto LABEL_13;
    }

    if (a3 == 2)
    {
      v12 = 0;
      sub_2411662B8();
      MEMORY[0x245CDB790](0xD000000000000026, 0x800000024116AE90);
      MEMORY[0x245CDB790](a1, a2);
      v5 = 0xD00000000000001ALL;
      v6 = 0x800000024116AEC0;
LABEL_13:
      MEMORY[0x245CDB790](v5, v6);
      return v12;
    }

    v12 = 0;
    sub_2411662B8();
    v7 = "nsion. Underlying error: ";
    v8 = 0xD000000000000044;
LABEL_16:
    MEMORY[0x245CDB790](v8, v7 | 0x8000000000000000);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530A60, &qword_241168260);
    sub_241166318();
    return v12;
  }

  if (a3 <= 5u)
  {
    v12 = 0;
    if (a3 == 4)
    {
      sub_2411662B8();
      v7 = "Underlying error: ";
      v8 = 0xD000000000000079;
    }

    else
    {
      sub_2411662B8();
      v7 = "provider extension.";
      v8 = 0xD000000000000062;
    }

    goto LABEL_16;
  }

  if (a3 == 6)
  {
    sub_2411662B8();

    v12 = 0xD00000000000002DLL;
    v5 = a1;
    v6 = a2;
    goto LABEL_13;
  }

  if (a1 > 1)
  {
    if (a1 ^ 2 | a2)
    {
      return 0xD00000000000003BLL;
    }

    else
    {
      return 0xD000000000000043;
    }
  }

  else if (a1 | a2)
  {
    return 0xD000000000000021;
  }

  else
  {
    return 0xD000000000000060;
  }
}

unint64_t sub_241111270(unint64_t a1, unint64_t a2, unsigned __int8 a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530A08, &unk_241167910);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2411673F0;
  *(inited + 32) = 1868983913;
  *(inited + 40) = 0xE400000000000000;
  v7 = sub_241110EDC(a1, a2, a3);
  *(inited + 72) = MEMORY[0x277D837D0];
  if (!v8)
  {
    sub_241166318();
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  *(inited + 48) = v7;
  *(inited + 56) = v8;
  v9 = sub_2410FB9E0(inited);
  swift_setDeallocating();
  sub_2410FB29C(inited + 32, &unk_27E530E80, &qword_241168920);
  return v9;
}

uint64_t sub_241111398(uint64_t a1)
{
  v2 = sub_24111615C();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_2411113D4(uint64_t a1)
{
  v2 = sub_24111615C();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_241111410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v7 = swift_allocObject();
  *(v7 + 16) = MEMORY[0x277D84F90];
  v8 = sub_241165DA8();
  v9 = swift_allocObject();
  v9[2] = a4;
  v9[3] = a5;
  v9[4] = v7;
  aBlock[4] = sub_241115B48;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_241135D58;
  aBlock[3] = &block_descriptor_16;
  v10 = _Block_copy(aBlock);

  IMSPIBatchFetchMessageGUIDsWithBalloonBundleID();
  _Block_release(v10);

  if (qword_27E5305B8 != -1)
  {
    swift_once();
  }

  v11 = sub_241165288();
  __swift_project_value_buffer(v11, qword_27E533A98);

  v12 = sub_241165268();
  v13 = sub_241166038();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    aBlock[0] = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_241156B38(a4, a5, aBlock);
    _os_log_impl(&dword_2410F8000, v12, v13, "Resuming continuation for query with request ID %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x245CDC5E0](v15, -1, -1);
    MEMORY[0x245CDC5E0](v14, -1, -1);
  }

  swift_beginAccess();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530CA0, &qword_241168078);
  sub_241165F78();
}

uint64_t sub_2411116B0(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v129 = a5;
  v127 = a3;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530C48, &qword_241168010);
  v122 = *(v120 - 8);
  MEMORY[0x28223BE20](v120);
  v121 = (&v113 - v10);
  v128 = sub_241164ED8();
  v130 = *(v128 - 8);
  v11 = MEMORY[0x28223BE20](v128);
  v132 = (&v113 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v123 = &v113 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530AA8, &qword_241167D20);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v113 - v15;
  v17 = sub_241164F58();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v126 = &v113 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530AB0, &qword_241168080);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v113 - v21;
  v23 = sub_2411650D8();
  v131 = *(v23 - 8);
  v24 = MEMORY[0x28223BE20](v23);
  MEMORY[0x28223BE20](v24);
  v27 = &v113 - v26;
  if (!a2)
  {
    if (qword_27E5305B8 != -1)
    {
      swift_once();
    }

    v42 = sub_241165288();
    __swift_project_value_buffer(v42, qword_27E533A98);
    v43 = sub_241165268();
    v44 = sub_241166048();
    if (!os_log_type_enabled(v43, v44))
    {
      goto LABEL_18;
    }

    v45 = swift_slowAlloc();
    *v45 = 0;
    _os_log_impl(&dword_2410F8000, v43, v44, "Got back nil message GUID from IMSPI", v45, 2u);
    goto LABEL_13;
  }

  v114 = v25;
  v119 = a4;
  v28 = v17;
  v115 = a6;
  v125 = a1;
  v29 = qword_27E5305B8;

  if (v29 != -1)
  {
LABEL_51:
    swift_once();
  }

  v30 = sub_241165288();
  v31 = __swift_project_value_buffer(v30, qword_27E533A98);

  v32 = v129;

  v124 = v31;
  v33 = sub_241165268();
  v34 = sub_241166038();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v116 = v23;
    v36 = v35;
    v37 = swift_slowAlloc();
    v117 = v28;
    v118 = v18;
    v38 = v37;
    v133[0] = v37;
    *v36 = 136315394;
    *(v36 + 4) = sub_241156B38(v125, a2, v133);
    *(v36 + 12) = 2080;
    *(v36 + 14) = sub_241156B38(v119, v32, v133);
    _os_log_impl(&dword_2410F8000, v33, v34, "Inspecting ScreenTime request message with GUID %s in Messages DB to see if it matches with request ID %s", v36, 0x16u);
    swift_arrayDestroy();
    v39 = v38;
    v40 = v117;
    v18 = v118;
    MEMORY[0x245CDC5E0](v39, -1, -1);
    v41 = v36;
    v23 = v116;
    MEMORY[0x245CDC5E0](v41, -1, -1);
  }

  else
  {

    v40 = v28;
  }

  sub_2410FC88C(v127, v22, &qword_27E530AB0, &qword_241168080);
  v46 = v131;
  v47 = (*(v131 + 48))(v22, 1, v23);
  v28 = v128;
  if (v47 == 1)
  {
    sub_2410FB29C(v22, &qword_27E530AB0, &qword_241168080);

    v43 = sub_241165268();
    v48 = sub_241166048();

    if (!os_log_type_enabled(v43, v48))
    {

      goto LABEL_18;
    }

    v45 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v133[0] = v49;
    *v45 = 136315138;
    v50 = sub_241156B38(v125, a2, v133);

    *(v45 + 4) = v50;
    _os_log_impl(&dword_2410F8000, v43, v48, "Payload URL for message with GUID %s was nil. Skipping.", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v49);
    MEMORY[0x245CDC5E0](v49, -1, -1);
LABEL_13:
    MEMORY[0x245CDC5E0](v45, -1, -1);
LABEL_18:

    return 0;
  }

  (*(v46 + 32))(v27, v22, v23);
  sub_241164F28();
  if (v18[6](v16, 1, v40) == 1)
  {
    sub_2410FB29C(v16, &qword_27E530AA8, &qword_241167D20);

    v51 = sub_241165268();
    v52 = sub_241166048();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = v23;
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v133[0] = v55;
      *v54 = 136315138;
      v56 = sub_241156B38(v125, a2, v133);

      *(v54 + 4) = v56;
      _os_log_impl(&dword_2410F8000, v51, v52, "URL components for message with GUID %s was nil. Skipping.", v54, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v55);
      MEMORY[0x245CDC5E0](v55, -1, -1);
      MEMORY[0x245CDC5E0](v54, -1, -1);

      (*(v46 + 8))(v27, v53);
    }

    else
    {

      (*(v46 + 8))(v27, v23);
    }

    return 0;
  }

  v18[4](v126, v16, v40);
  v58 = sub_241164F08();
  if (!v58)
  {
    goto LABEL_37;
  }

  v16 = v58;
  v117 = v40;
  v118 = v18;
  v113 = v27;
  v116 = v23;
  v59 = *(v58 + 16);
  if (!v59)
  {
LABEL_28:

    v23 = v116;
    v40 = v117;
    v27 = v113;
    v18 = v118;
LABEL_37:

    v89 = sub_241165268();
    v90 = sub_241166048();

    if (os_log_type_enabled(v89, v90))
    {
      v91 = v23;
      v92 = swift_slowAlloc();
      v93 = v27;
      v94 = swift_slowAlloc();
      v133[0] = v94;
      *v92 = 136315138;
      v95 = sub_241156B38(v125, a2, v133);

      *(v92 + 4) = v95;
      _os_log_impl(&dword_2410F8000, v89, v90, "URL had no request ID for message with GUID %s. Skipping.", v92, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v94);
      MEMORY[0x245CDC5E0](v94, -1, -1);
      MEMORY[0x245CDC5E0](v92, -1, -1);

      (v18[1])(v126, v40);
      (*(v131 + 8))(v93, v91);
      return 0;
    }

    (v18[1])(v126, v40);
LABEL_40:
    (*(v131 + 8))(v27, v23);
    return 0;
  }

  v27 = 0;
  v22 = 0x4974736575716572;
  v18 = (v130 + 1);
  while (1)
  {
    if (v27 >= *(v16 + 2))
    {
      __break(1u);
      goto LABEL_51;
    }

    v130[2](v132, &v16[((*(v130 + 80) + 32) & ~*(v130 + 80)) + v130[9] * v27], v28);
    if (sub_241164EB8() == 0x4974736575716572 && v60 == 0xE900000000000044)
    {
      break;
    }

    v23 = sub_2411663E8();

    if (v23)
    {
      goto LABEL_31;
    }

    ++v27;
    (*v18)(v132, v28);
    if (v59 == v27)
    {
      goto LABEL_28;
    }
  }

LABEL_31:

  v61 = (v130 + 4);
  v62 = v123;
  v130[4](v123, v132, v28);
  v63 = sub_241164EC8();
  v65 = v64;
  (*(v61 - 3))(v62, v28);
  v23 = v116;
  v40 = v117;
  v27 = v113;
  v18 = v118;
  if (!v65)
  {
    goto LABEL_37;
  }

  v66 = v119;
  v67 = v129;
  if ((v63 != v119 || v65 != v129) && (sub_2411663E8() & 1) == 0)
  {

    v106 = sub_241165268();
    v107 = sub_241166038();

    LODWORD(v130) = v107;
    v132 = v106;
    if (os_log_type_enabled(v106, v107))
    {
      v108 = swift_slowAlloc();
      v109 = swift_slowAlloc();
      v133[0] = v109;
      *v108 = 136315650;
      v110 = sub_241156B38(v125, a2, v133);

      *(v108 + 4) = v110;
      *(v108 + 12) = 2080;
      v111 = sub_241156B38(v63, v65, v133);

      *(v108 + 14) = v111;
      *(v108 + 22) = 2080;
      *(v108 + 24) = sub_241156B38(v66, v67, v133);
      v112 = v132;
      _os_log_impl(&dword_2410F8000, v132, v130, "Message with GUID %s has request ID %s, is not for request with ID %s", v108, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x245CDC5E0](v109, -1, -1);
      MEMORY[0x245CDC5E0](v108, -1, -1);

      (v118[1])(v126, v40);
      (*(v131 + 8))(v113, v116);
      return 0;
    }

    (v118[1])(v126, v40);
    goto LABEL_40;
  }

  v68 = v131;
  v69 = *(v131 + 16);
  v70 = v114;
  (v69)(v114, v27, v23);

  v71 = sub_241165268();
  v72 = v67;
  v73 = sub_241166068();

  if (os_log_type_enabled(v71, v73))
  {
    v74 = swift_slowAlloc();
    v130 = v69;
    v75 = v74;
    v76 = swift_slowAlloc();
    v132 = a2;
    v133[0] = v76;
    v77 = v76;
    *v75 = 136315650;
    *(v75 + 4) = sub_241156B38(v119, v72, v133);
    *(v75 + 12) = 2080;
    LODWORD(v129) = v73;
    v78 = v68;
    v79 = v125;
    *(v75 + 14) = sub_241156B38(v125, v132, v133);
    *(v75 + 22) = 2080;
    sub_241115914(&qword_27E530C70, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v80 = sub_2411663B8();
    v81 = v71;
    v83 = v82;
    v84 = *(v78 + 8);
    v84(v70, v23);
    v85 = sub_241156B38(v80, v83, v133);

    *(v75 + 24) = v85;
    v86 = v81;
    _os_log_impl(&dword_2410F8000, v81, v129, "Found a match! Request with ID %s has message GUID %s. Payload URL: %s", v75, 0x20u);
    swift_arrayDestroy();
    v87 = v77;
    a2 = v132;
    MEMORY[0x245CDC5E0](v87, -1, -1);
    v88 = v75;
    v69 = v130;
    v27 = v113;
    MEMORY[0x245CDC5E0](v88, -1, -1);
  }

  else
  {

    v84 = *(v68 + 8);
    v84(v70, v23);
    v79 = v125;
  }

  v96 = v23;
  v97 = v115;
  v98 = v121;
  v99 = *(v120 + 48);
  *v121 = v79;
  v98[1] = a2;
  v100 = v98;
  (v69)(v98 + v99, v27, v23);
  swift_beginAccess();
  v101 = *(v97 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v97 + 16) = v101;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v101 = sub_2411609C8(0, v101[2] + 1, 1, v101);
    *(v115 + 16) = v101;
  }

  v103 = v118;
  v105 = v101[2];
  v104 = v101[3];
  if (v105 >= v104 >> 1)
  {
    v101 = sub_2411609C8((v104 > 1), v105 + 1, 1, v101);
  }

  v101[2] = v105 + 1;
  sub_2411158A4(v100, v101 + ((*(v122 + 80) + 32) & ~*(v122 + 80)) + *(v122 + 72) * v105);
  *(v115 + 16) = v101;
  swift_endAccess();
  v103[1](v126, v117);
  v84(v113, v96);
  return 0;
}

uint64_t sub_241112744(uint64_t a1, char a2)
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

  sub_2411661F8();
LABEL_9:
  result = sub_2411662E8();
  *v2 = result;
  return result;
}

uint64_t sub_2411127E4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_2411661F8();
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
      result = sub_2411661F8();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_241115A18();
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530C88, &qword_241168068);
            v9 = sub_241112964(v13, i, a3);
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
        sub_241165458();
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

void (*sub_241112964(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x245CDBC20](a2, a3);
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
    return sub_2411129E4;
  }

  __break(1u);
  return result;
}

uint64_t sub_2411129EC(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530C48, &qword_241168010);
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_241112AC4, 0, 0);
}

uint64_t sub_241112AC4()
{
  v23 = v0;
  if (qword_27E5305B8 != -1)
  {
    swift_once();
  }

  v1 = sub_241165288();
  v0[9] = __swift_project_value_buffer(v1, qword_27E533A98);
  v2 = sub_241165268();
  v3 = sub_241166068();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v22 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_241156B38(0xD00000000000002CLL, 0x800000024116ABE0, &v22);
    _os_log_impl(&dword_2410F8000, v2, v3, "%s called", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x245CDC5E0](v5, -1, -1);
    MEMORY[0x245CDC5E0](v4, -1, -1);
  }

  v6 = IMBalloonExtensionIDWithSuffix();
  if (v6)
  {
    v8 = v0[3];
    v7 = v0[4];
    v9 = v6;
    v10 = sub_241165DD8();
    v12 = v11;

    v0[10] = v12;
    v13 = swift_task_alloc();
    v0[11] = v13;
    v13[2] = v10;
    v13[3] = v12;
    v13[4] = v8;
    v13[5] = v7;
    v14 = swift_task_alloc();
    v0[12] = v14;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530C98, &qword_241168070);
    *v14 = v0;
    v14[1] = sub_241112E0C;

    return MEMORY[0x2822007B8](v0 + 2, 0, 0, 0xD00000000000002CLL, 0x800000024116ABE0, sub_241115AC4, v13, v15);
  }

  else
  {
    v16 = sub_241165268();
    v17 = sub_241166048();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_2410F8000, v16, v17, "ScreenTime request messages extension bundle identifier was nil", v18, 2u);
      MEMORY[0x245CDC5E0](v18, -1, -1);
    }

    sub_2411133A8();
    swift_allocError();
    *v19 = 0;
    *(v19 + 8) = 0;
    *(v19 + 16) = 7;
    swift_willThrow();

    v20 = v0[1];

    return v20();
  }
}

uint64_t sub_241112E0C()
{

  return MEMORY[0x2822009F8](sub_241112F40, 0, 0);
}

uint64_t sub_241112F40()
{
  v47 = v0;
  v1 = v0[2];
  if (*(v1 + 16))
  {

    v2 = sub_241165268();
    v3 = sub_241166068();

    if (os_log_type_enabled(v2, v3))
    {
      v5 = v0[3];
      v4 = v0[4];
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v45 = v7;
      *v6 = 136315394;
      *(v6 + 4) = sub_241156B38(v5, v4, &v45);
      *(v6 + 12) = 2080;
      v8 = *(v1 + 16);
      v9 = MEMORY[0x277D84F90];
      if (v8)
      {
        v39 = v7;
        v40 = v6;
        v41 = v3;
        v42 = v2;
        v10 = v0[6];
        v44 = v0[7];
        v11 = v0[5];
        v46 = MEMORY[0x277D84F90];
        sub_241100458(0, v8, 0);
        v9 = v46;
        v43 = v1;
        v12 = v1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
        v13 = *(v10 + 72);
        do
        {
          v14 = v0[7];
          v15 = v0[8];
          sub_2410FC88C(v12, v15, &qword_27E530C48, &qword_241168010);
          sub_2411158A4(v15, v14);
          v16 = *v14;
          v17 = *(v44 + 8);
          v18 = *(v11 + 48);
          v19 = sub_2411650D8();
          (*(*(v19 - 8) + 8))(&v14[v18], v19);
          v46 = v9;
          v21 = *(v9 + 16);
          v20 = *(v9 + 24);
          if (v21 >= v20 >> 1)
          {
            sub_241100458((v20 > 1), v21 + 1, 1);
            v9 = v46;
          }

          *(v9 + 16) = v21 + 1;
          v22 = v9 + 16 * v21;
          *(v22 + 32) = v16;
          *(v22 + 40) = v17;
          v12 += v13;
          --v8;
        }

        while (v8);
        v2 = v42;
        v1 = v43;
        v3 = v41;
        v7 = v39;
        v6 = v40;
      }

      v34 = MEMORY[0x245CDB850](v9, MEMORY[0x277D837D0]);
      v36 = v35;

      v37 = sub_241156B38(v34, v36, &v45);

      *(v6 + 14) = v37;
      _os_log_impl(&dword_2410F8000, v2, v3, "Matching messages for request ID %s have message GUIDs %s", v6, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x245CDC5E0](v7, -1, -1);
      MEMORY[0x245CDC5E0](v6, -1, -1);
    }

    v38 = v0[1];

    return v38(v1);
  }

  else
  {

    v23 = sub_241165268();
    v24 = sub_241166048();

    if (os_log_type_enabled(v23, v24))
    {
      v26 = v0[3];
      v25 = v0[4];
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v46 = v28;
      *v27 = 136315138;
      *(v27 + 4) = sub_241156B38(v26, v25, &v46);
      _os_log_impl(&dword_2410F8000, v23, v24, "No ScreenTime request message in the Messages DB matched request ID %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v28);
      MEMORY[0x245CDC5E0](v28, -1, -1);
      MEMORY[0x245CDC5E0](v27, -1, -1);
    }

    v30 = v0[3];
    v29 = v0[4];
    sub_2411133A8();
    swift_allocError();
    *v31 = v30;
    *(v31 + 8) = v29;
    *(v31 + 16) = 2;

    swift_willThrow();

    v32 = v0[1];

    return v32();
  }
}

unint64_t sub_2411133A8()
{
  result = qword_27E530C60;
  if (!qword_27E530C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E530C60);
  }

  return result;
}

uint64_t sub_2411133FC(uint64_t a1, uint64_t a2)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = a2;
  return MEMORY[0x2822009F8](sub_24111341C, 0, 0);
}

uint64_t sub_24111341C()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D08280]) init];
  v0[21] = v1;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_241113554;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E530F60, &qword_241168050);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_241142CF4;
  v0[13] = &block_descriptor_5;
  v0[14] = v2;
  [v1 startRequestWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_241113554()
{
  v1 = *(*v0 + 48);
  *(*v0 + 176) = v1;
  if (v1)
  {
    v2 = sub_241113C20;
  }

  else
  {
    v2 = sub_241113664;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_241113664()
{
  v58 = v0;
  v52 = v0[18];
  v1 = [v52 members];
  sub_241115980();
  v2 = sub_241165EF8();

  if (v2 >> 62)
  {
LABEL_24:
    v3 = sub_2411661F8();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_25:

    v6 = 0;
LABEL_26:
    if (qword_27E5305B8 != -1)
    {
      swift_once();
    }

    v27 = sub_241165288();
    __swift_project_value_buffer(v27, qword_27E533A98);
    v28 = v6;

    v29 = sub_241165268();
    v30 = sub_241166048();

    if (os_log_type_enabled(v29, v30))
    {
      v56 = v0[20];
      v31 = v27;
      v32 = v0[19];
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v57 = v35;
      *v33 = 136315394;
      v36 = v32;
      v27 = v31;
      *(v33 + 4) = sub_241156B38(v36, v56, &v57);
      *(v33 + 12) = 2112;
      *(v33 + 14) = v28;
      *v34 = v6;
      v37 = v28;
      _os_log_impl(&dword_2410F8000, v29, v30, "Responder lacked Apple ID. DSID: %s, member: %@", v33, 0x16u);
      sub_2410FB29C(v34, &qword_27E530E30, &qword_2411676F0);
      MEMORY[0x245CDC5E0](v34, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v35);
      MEMORY[0x245CDC5E0](v35, -1, -1);
      MEMORY[0x245CDC5E0](v33, -1, -1);
    }

    v38 = v0[20];
    v39 = v0[21];
    v40 = v0[19];
    sub_2411133A8();
    v41 = swift_allocError();
    *v42 = v40;
    *(v42 + 8) = v38;
    *(v42 + 16) = 6;
    swift_willThrow();

    if (qword_27E5305B8 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v27, qword_27E533A98);
    v43 = v41;
    v44 = sub_241165268();
    v45 = sub_241166048();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *v46 = 138412290;
      v48 = v41;
      v49 = _swift_stdlib_bridgeErrorToNSError();
      *(v46 + 4) = v49;
      *v47 = v49;
      _os_log_impl(&dword_2410F8000, v44, v45, "Failed to fetch family members. error: %@", v46, 0xCu);
      sub_2410FB29C(v47, &qword_27E530E30, &qword_2411676F0);
      MEMORY[0x245CDC5E0](v47, -1, -1);
      MEMORY[0x245CDC5E0](v46, -1, -1);
    }

    swift_allocError();
    *v50 = v41;
    *(v50 + 8) = 0;
    *(v50 + 16) = 5;
    swift_willThrow();
    v51 = v0[1];

    return v51();
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    goto LABEL_25;
  }

LABEL_3:
  v4 = 0;
  v53 = v2 & 0xFFFFFFFFFFFFFF8;
  v54 = v2 & 0xC000000000000001;
  while (1)
  {
    if (v54)
    {
      v5 = MEMORY[0x245CDBC20](v4, v2);
    }

    else
    {
      if (v4 >= *(v53 + 16))
      {
        goto LABEL_23;
      }

      v5 = *(v2 + 8 * v4 + 32);
    }

    v6 = v5;
    v7 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    v8 = [v5 dsid];
    if (!v8)
    {
      goto LABEL_4;
    }

    v9 = v6;
    v10 = v2;
    v11 = v0[19];
    v55 = v0[20];
    v12 = v8;
    v13 = [v8 stringValue];

    v14 = sub_241165DD8();
    v16 = v15;

    if (v14 == v11 && v16 == v55)
    {
      break;
    }

    v18 = sub_2411663E8();

    v2 = v10;
    v6 = v9;
    if (v18)
    {
      goto LABEL_18;
    }

LABEL_4:

    ++v4;
    if (v7 == v3)
    {
      goto LABEL_25;
    }
  }

  v6 = v9;
LABEL_18:

  v19 = [v6 appleID];
  if (!v19)
  {
    goto LABEL_26;
  }

  v20 = v0[21];
  v21 = v19;
  v22 = sub_241165DD8();
  v24 = v23;

  v25 = v0[1];

  return v25(v22, v24);
}

uint64_t sub_241113C20(uint64_t a1)
{
  v2 = v1[21];
  swift_willThrow();

  v3 = v1[22];
  if (qword_27E5305B8 != -1)
  {
    swift_once();
  }

  v4 = sub_241165288();
  __swift_project_value_buffer(v4, qword_27E533A98);
  v5 = v3;
  v6 = sub_241165268();
  v7 = sub_241166048();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v3;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_2410F8000, v6, v7, "Failed to fetch family members. error: %@", v8, 0xCu);
    sub_2410FB29C(v9, &qword_27E530E30, &qword_2411676F0);
    MEMORY[0x245CDC5E0](v9, -1, -1);
    MEMORY[0x245CDC5E0](v8, -1, -1);
  }

  sub_2411133A8();
  swift_allocError();
  *v12 = v3;
  *(v12 + 8) = 0;
  *(v12 + 16) = 5;
  swift_willThrow();
  v13 = v1[1];

  return v13();
}

uint64_t sub_241113DE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[43] = a2;
  v3[44] = a3;
  v3[42] = a1;
  v4 = sub_2411651A8();
  v3[45] = v4;
  v3[46] = *(v4 - 8);
  v3[47] = swift_task_alloc();
  v5 = sub_241165BD8();
  v3[48] = v5;
  v3[49] = *(v5 - 8);
  v3[50] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_241113F08, 0, 0);
}

uint64_t sub_241113F08()
{
  v2 = *(v0 + 392);
  v1 = *(v0 + 400);
  v3 = *(v0 + 384);
  v4 = sub_241165DA8();
  v5 = [objc_opt_self() destinationWithURI_];
  *(v0 + 408) = v5;

  v6 = sub_241165C98();
  v8 = v7;
  (*(v2 + 104))(v1, *MEMORY[0x277CEED80], v3);
  v9 = sub_241165BB8();
  v11 = v10;
  (*(v2 + 8))(v1, v3);
  if (v8)
  {
    if (v6 == v9 && v8 == v11)
    {
    }

    else
    {
      sub_2411663E8();
    }
  }

  else
  {
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530668, &unk_2411677A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2411673F0;
  *(inited + 32) = sub_241165DD8();
  *(inited + 40) = v13;
  v14 = sub_2410FB2FC(inited);
  *(v0 + 416) = v14;
  swift_setDeallocating();
  sub_2410FB464(inited + 32);
  v15 = sub_241104184();
  if (!v16)
  {
    goto LABEL_12;
  }

  if (v15 == *(v0 + 336) && v16 == *(v0 + 344))
  {

LABEL_12:

    if (qword_27E5305B8 != -1)
    {
      swift_once();
    }

    v18 = sub_241165288();
    __swift_project_value_buffer(v18, qword_27E533A98);
    v19 = sub_241165268();
    v20 = sub_241166068();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_2410F8000, v19, v20, "Not sending response ack since self account is the responder", v21, 2u);
      MEMORY[0x245CDC5E0](v21, -1, -1);
    }

    v22 = *(v0 + 8);

    return v22();
  }

  v17 = sub_2411663E8();

  if (v17)
  {
    goto LABEL_12;
  }

  if (qword_27E5305B8 != -1)
  {
    swift_once();
  }

  v24 = sub_241165288();
  __swift_project_value_buffer(v24, qword_27E533A98);
  v25 = sub_241165268();
  v26 = sub_241166068();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_2410F8000, v25, v26, "Sending response ack", v27, 2u);
    MEMORY[0x245CDC5E0](v27, -1, -1);
  }

  v28 = sub_241165CC8();
  sub_2411653D8();

  v29 = sub_241165CC8();
  *(v0 + 424) = sub_2411653A8();

  v30 = sub_241165C98();
  v32 = 0x6E776F6E6B6E75;
  if (v31)
  {
    v32 = v30;
  }

  v47 = v32;
  if (v31)
  {
    v33 = v31;
  }

  else
  {
    v33 = 0xE700000000000000;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530E60, &qword_241167790);
  v34 = swift_allocObject();
  *(v0 + 432) = v34;
  *(v34 + 16) = xmmword_241167630;
  *(v34 + 32) = v5;
  v35 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530A08, &unk_241167910);
  v36 = swift_initStackObject();
  *(v36 + 16) = xmmword_241167FE0;
  *(v36 + 32) = 0xD000000000000010;
  *(v36 + 40) = 0x800000024116AA70;
  v37 = sub_241165188();
  v38 = MEMORY[0x277D837D0];
  *(v36 + 48) = v37;
  *(v36 + 56) = v39;
  *(v36 + 72) = v38;
  *(v36 + 80) = 0xD000000000000017;
  *(v36 + 88) = 0x800000024116AA90;
  v40 = MEMORY[0x277D839B0];
  *(v36 + 96) = 1;
  *(v36 + 120) = v40;
  *(v36 + 128) = 0x6369706F74;
  *(v36 + 136) = 0xE500000000000000;
  *(v36 + 144) = sub_241165368();
  *(v36 + 152) = v41;
  *(v36 + 168) = v38;
  *(v36 + 176) = 0x696669746E656469;
  *(v36 + 216) = v38;
  *(v36 + 184) = 0xEA00000000007265;
  *(v36 + 192) = v47;
  *(v36 + 200) = v33;
  v42 = sub_2410FB9E0(v36);
  *(v0 + 440) = v42;
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E530E80, &qword_241168920);
  swift_arrayDestroy();
  if (qword_27E530638 != -1)
  {
    swift_once();
  }

  v43 = qword_27E533BE8;
  v44 = swift_task_alloc();
  *(v0 + 448) = v44;
  v44[2] = v43;
  v44[3] = v42;
  v44[4] = v34;
  v44[5] = v14;
  v45 = swift_task_alloc();
  *(v0 + 456) = v45;
  *v45 = v0;
  v45[1] = sub_2411145A8;
  v46 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v45, 0, 0, 0xD000000000000033, 0x800000024116AAB0, sub_24111595C, v44, v46);
}

uint64_t sub_2411145A8()
{
  *(*v1 + 464) = v0;

  if (v0)
  {
    v2 = sub_241114794;
  }

  else
  {

    v2 = sub_2411146EC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2411146EC()
{
  v2 = *(v0 + 368);
  v1 = *(v0 + 376);
  v3 = *(v0 + 360);

  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_241114794()
{
  v1 = v0[53];
  v2 = v0[51];
  v4 = v0[46];
  v3 = v0[47];
  v5 = v0[45];

  (*(v4 + 8))(v3, v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_241114874(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530C78, &qword_241168058);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v116 - v3;
  v5 = sub_2411651A8();
  v126 = *(v5 - 8);
  v127 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v123 = &v116 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v125 = &v116 - v8;
  if (qword_27E5305B0 != -1)
  {
    swift_once();
  }

  v124 = v4;
  v9 = sub_241165288();
  v128 = __swift_project_value_buffer(v9, qword_27E533A80);
  v10 = sub_241165268();
  v11 = sub_241166068();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_2410F8000, v10, v11, "Trying to derive ATPayload from MessageDetails", v12, 2u);
    MEMORY[0x245CDC5E0](v12, -1, -1);
  }

  v13 = sub_2411654C8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530AC0, &qword_241168060);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v116 - v18;
  sub_2411654F8();
  if ((*(v14 + 48))(v19, 1, v13) == 1)
  {
    sub_2410FB29C(v19, &qword_27E530AC0, &qword_241168060);
LABEL_9:
    v24 = sub_241165268();
    v25 = sub_241166048();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_2410F8000, v24, v25, "MessageDetails.eventSource was unknown", v26, 2u);
      MEMORY[0x245CDC5E0](v26, -1, -1);
    }

    return 0;
  }

  v121 = a1;
  v122 = &v116;
  v20 = (*(v14 + 32))(&v116 - v16, v19, v13);
  MEMORY[0x28223BE20](v20);
  v21 = *MEMORY[0x277D39F38];
  (*(v14 + 104))(&v116 - v16, *MEMORY[0x277D39F38], v13);
  sub_2411159CC();
  v22 = sub_241165D98();
  v23 = *(v14 + 8);
  v23(&v116 - v16, v13);
  if (v22)
  {
    v23(&v116 - v16, v13);
    goto LABEL_9;
  }

  v117 = v23;
  v118 = v14 + 8;
  v119 = v13;
  v120 = &v116 - v16;
  v28 = v121;
  v29 = sub_2411655B8();
  v31 = v30;

  v33 = HIBYTE(v31) & 0xF;
  if ((v31 & 0x2000000000000000) == 0)
  {
    v33 = v29 & 0xFFFFFFFFFFFFLL;
  }

  if (!v33)
  {
    v54 = sub_241165268();
    v55 = sub_241166048();
    v56 = os_log_type_enabled(v54, v55);
    v57 = v120;
    if (v56)
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&dword_2410F8000, v54, v55, "MessageDetails.requestID was empty", v58, 2u);
      MEMORY[0x245CDC5E0](v58, -1, -1);
    }

    v117(v57, v119);
    return 0;
  }

  MEMORY[0x28223BE20](v32);
  v34 = &v116 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = *(v14 + 16);
  v36 = v119;
  v37 = v120;
  v35(v34, v120, v119);
  v38 = (*(v14 + 88))(v34, v36);
  if (MEMORY[0x277D39F38] && v38 == v21 || MEMORY[0x277D39F40] && v38 == *MEMORY[0x277D39F40])
  {
    MEMORY[0x28223BE20](v38);
    v39 = &v116 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    v40(v39, v37, v36);
    v41 = sub_241165268();
    v42 = sub_241166048();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = v36;
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v128 = &v116;
      v46 = v37;
      v47 = v45;
      v129[0] = v45;
      *v44 = 136315138;
      v48 = sub_2411654B8();
      v50 = v49;
      v51 = v39;
      v52 = v117;
      v117(v51, v43);
      v53 = sub_241156B38(v48, v50, v129);

      *(v44 + 4) = v53;
      _os_log_impl(&dword_2410F8000, v41, v42, "MessageDetails.eventSource was unsupported %s", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v47);
      MEMORY[0x245CDC5E0](v47, -1, -1);
      MEMORY[0x245CDC5E0](v44, -1, -1);

      v52(v46, v43);
    }

    else
    {

      v77 = v117;
      v117(&v116 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v36);
      v77(v37, v36);
    }

    return 0;
  }

  if (!MEMORY[0x277D39F30] || v38 != *MEMORY[0x277D39F30])
  {
    MEMORY[0x28223BE20](v38);
    v78 = v35;
    v79 = v36;
    v80 = &v116 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    v78(v80, v37, v79);
    v81 = sub_241165268();
    v82 = v37;
    v83 = sub_241166048();
    if (os_log_type_enabled(v81, v83))
    {
      v84 = swift_slowAlloc();
      v128 = &v116;
      v85 = v84;
      v86 = swift_slowAlloc();
      v116 = &v116;
      v87 = v86;
      v129[0] = v86;
      *v85 = 136315138;
      v88 = sub_2411654B8();
      v90 = v89;
      v91 = v80;
      v92 = v117;
      v117(v91, v79);
      v93 = sub_241156B38(v88, v90, v129);

      *(v85 + 4) = v93;
      _os_log_impl(&dword_2410F8000, v81, v83, "MessageDetails.eventSource was unsupported %s", v85, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v87);
      MEMORY[0x245CDC5E0](v87, -1, -1);
      MEMORY[0x245CDC5E0](v85, -1, -1);

      v94 = v120;
    }

    else
    {

      v92 = v117;
      v117(&v116 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v79);
      v94 = v82;
    }

    v92(v94, v79);
    v92(v34, v79);
    return 0;
  }

  v116 = &v116;
  v59 = objc_allocWithZone(sub_241165378());
  v60 = sub_241165358();
  sub_2411655B8();
  v61 = v124;
  sub_241165178();

  v63 = v126;
  v62 = v127;
  if ((*(v126 + 48))(v61, 1, v127) == 1)
  {
    sub_2410FB29C(v61, &qword_27E530C78, &qword_241168058);
    v64 = sub_2411655E8();
    v65 = *(v64 - 8);
    MEMORY[0x28223BE20](v64);
    v67 = &v116 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v65 + 16))(v67, v28, v64);
    v68 = sub_241165268();
    v69 = sub_241166048();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v129[0] = v71;
      *v70 = 136315138;
      v72 = sub_2411655B8();
      v128 = &v116;
      v73 = v60;
      v75 = v74;
      (*(v65 + 8))(v67, v64);
      v76 = sub_241156B38(v72, v75, v129);

      *(v70 + 4) = v76;
      _os_log_impl(&dword_2410F8000, v68, v69, "Request ID was not a UUID %s", v70, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v71);
      MEMORY[0x245CDC5E0](v71, -1, -1);
      MEMORY[0x245CDC5E0](v70, -1, -1);
    }

    else
    {

      (*(v65 + 8))(v67, v64);
    }

    v117(v120, v119);
    return 0;
  }

  v95 = v125;
  (*(v63 + 32))(v125, v61, v62);
  sub_2411653E8();
  (*(v63 + 16))(v123, v95, v62);
  v96 = v60;
  sub_241165E38();
  sub_241165518();
  v128 = v96;
  v97 = sub_241165318();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530E60, &qword_241167790);
  v98 = swift_allocObject();
  *(v98 + 16) = xmmword_241167FF0;
  v129[0] = 1;
  v124 = v97;
  sub_2411663B8();
  sub_241165E38();
  v99 = sub_241165458();
  v100 = objc_allocWithZone(v99);
  *(v98 + 32) = sub_241165408();
  v129[0] = 2;
  sub_2411663B8();
  sub_241165E38();
  v101 = objc_allocWithZone(v99);
  *(v98 + 40) = sub_241165408();
  v129[0] = 3;
  sub_2411663B8();
  sub_241165E38();
  v102 = objc_allocWithZone(v99);
  *(v98 + 48) = sub_241165408();
  v103 = *((v98 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v103)
  {
    for (i = 0; i != v103; ++i)
    {
      if ((v98 & 0xC000000000000001) != 0)
      {
        v105 = MEMORY[0x245CDBC20](i, v98);
      }

      else
      {
        v105 = *(v98 + 8 * i + 32);
      }

      v106 = v105;
      sub_241165448();
    }
  }

  inited = swift_initStackObject();
  *(inited + 16) = xmmword_241167630;
  v129[0] = 0;
  sub_2411663B8();
  sub_241165E38();
  v108 = objc_allocWithZone(v99);
  *(inited + 32) = sub_241165408();
  v109 = *((inited & 0xFFFFFFFFFFFFFF8) + 0x10);
  v110 = v120;
  if (v109)
  {
    for (j = 0; j != v109; ++j)
    {
      if ((inited & 0xC000000000000001) != 0)
      {
        v112 = MEMORY[0x245CDBC20](j, inited);
      }

      else
      {
        v112 = *(inited + 8 * j + 32);
      }

      v113 = v112;
      sub_241165448();
    }
  }

  v129[0] = v98;
  sub_24110BDD0(inited);
  v114 = v124;
  sub_241165308();
  sub_241165568();
  sub_241165348();

  (*(v126 + 8))(v125, v127);
  sub_241165CE8();
  sub_241165588();
  sub_241165488();
  v115 = sub_241165C58();

  v117(v110, v119);
  return v115;
}

uint64_t sub_2411158A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530C48, &qword_241168010);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_241115914(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_241115980()
{
  result = qword_27E5307A0;
  if (!qword_27E5307A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E5307A0);
  }

  return result;
}

unint64_t sub_2411159CC()
{
  result = qword_27E530C80;
  if (!qword_27E530C80)
  {
    sub_2411654C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E530C80);
  }

  return result;
}

unint64_t sub_241115A18()
{
  result = qword_27E530C90;
  if (!qword_27E530C90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E530C88, &qword_241168068);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E530C90);
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

uint64_t sub_241115AD0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_241115B08()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_241115B6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, void *a6@<X8>)
{
  result = sub_241165418();
  v14 = HIBYTE(v13) & 0xF;
  v15 = result & 0xFFFFFFFFFFFFLL;
  if ((v13 & 0x2000000000000000) != 0)
  {
    v16 = HIBYTE(v13) & 0xF;
  }

  else
  {
    v16 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v16)
  {

    goto LABEL_63;
  }

  if ((v13 & 0x1000000000000000) != 0)
  {
    v52 = 0;
    v18 = sub_24113049C(result, v13, 10);
    v53 = v49;

    if (v53)
    {
      goto LABEL_63;
    }

LABEL_70:
    *a6 = a1;
    a6[1] = a2;
    a6[2] = a3;
    a6[3] = a4;
    a6[4] = v18;
    return result;
  }

  if ((v13 & 0x2000000000000000) != 0)
  {
    v51[0] = result;
    v51[1] = v13 & 0xFFFFFFFFFFFFFFLL;
    if (result == 43)
    {
      if (v14)
      {
        v15 = v14 - 1;
        if (v14 != 1)
        {
          v18 = 0;
          v28 = v51 + 1;
          while (1)
          {
            v29 = *v28 - 48;
            if (v29 > 9)
            {
              break;
            }

            v30 = 10 * v18;
            if ((v18 * 10) >> 64 != (10 * v18) >> 63)
            {
              break;
            }

            v18 = v30 + v29;
            if (__OFADD__(v30, v29))
            {
              break;
            }

            ++v28;
            if (!--v15)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }

LABEL_75:
      __break(1u);
      return result;
    }

    if (result != 45)
    {
      if (v14)
      {
        v18 = 0;
        v33 = v51;
        while (1)
        {
          v34 = *v33 - 48;
          if (v34 > 9)
          {
            break;
          }

          v35 = 10 * v18;
          if ((v18 * 10) >> 64 != (10 * v18) >> 63)
          {
            break;
          }

          v18 = v35 + v34;
          if (__OFADD__(v35, v34))
          {
            break;
          }

          v33 = (v33 + 1);
          if (!--v14)
          {
            goto LABEL_60;
          }
        }
      }

      goto LABEL_61;
    }

    if (v14)
    {
      v15 = v14 - 1;
      if (v14 != 1)
      {
        v18 = 0;
        v22 = v51 + 1;
        while (1)
        {
          v23 = *v22 - 48;
          if (v23 > 9)
          {
            break;
          }

          v24 = 10 * v18;
          if ((v18 * 10) >> 64 != (10 * v18) >> 63)
          {
            break;
          }

          v18 = v24 - v23;
          if (__OFSUB__(v24, v23))
          {
            break;
          }

          ++v22;
          if (!--v15)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_73;
  }

  if ((result & 0x1000000000000000) != 0)
  {
    result = (v13 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = sub_2411662F8();
    v15 = v50;
  }

  v17 = *result;
  if (v17 == 43)
  {
    if (v15 >= 1)
    {
      if (--v15)
      {
        v18 = 0;
        if (result)
        {
          v25 = (result + 1);
          while (1)
          {
            v26 = *v25 - 48;
            if (v26 > 9)
            {
              goto LABEL_61;
            }

            v27 = 10 * v18;
            if ((v18 * 10) >> 64 != (10 * v18) >> 63)
            {
              goto LABEL_61;
            }

            v18 = v27 + v26;
            if (__OFADD__(v27, v26))
            {
              goto LABEL_61;
            }

            ++v25;
            if (!--v15)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_60;
      }

      goto LABEL_61;
    }

    goto LABEL_74;
  }

  if (v17 == 45)
  {
    if (v15 >= 1)
    {
      if (--v15)
      {
        v18 = 0;
        if (result)
        {
          v19 = (result + 1);
          while (1)
          {
            v20 = *v19 - 48;
            if (v20 > 9)
            {
              goto LABEL_61;
            }

            v21 = 10 * v18;
            if ((v18 * 10) >> 64 != (10 * v18) >> 63)
            {
              goto LABEL_61;
            }

            v18 = v21 - v20;
            if (__OFSUB__(v21, v20))
            {
              goto LABEL_61;
            }

            ++v19;
            if (!--v15)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_60:
        LOBYTE(v15) = 0;
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  if (v15)
  {
    v18 = 0;
    if (result)
    {
      while (1)
      {
        v31 = *result - 48;
        if (v31 > 9)
        {
          goto LABEL_61;
        }

        v32 = 10 * v18;
        if ((v18 * 10) >> 64 != (10 * v18) >> 63)
        {
          goto LABEL_61;
        }

        v18 = v32 + v31;
        if (__OFADD__(v32, v31))
        {
          goto LABEL_61;
        }

        ++result;
        if (!--v15)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_60;
  }

LABEL_61:
  v18 = 0;
  LOBYTE(v15) = 1;
LABEL_62:
  v52 = v15;
  v36 = v15;

  if ((v36 & 1) == 0)
  {
    goto LABEL_70;
  }

LABEL_63:

  if (qword_27E5305B8 != -1)
  {
    swift_once();
  }

  v37 = sub_241165288();
  __swift_project_value_buffer(v37, qword_27E533A98);
  v38 = a5;
  v39 = sub_241165268();
  v40 = sub_241166048();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v51[0] = v43;
    *v41 = 136315394;
    *(v41 + 4) = sub_241156B38(0xD000000000000025, 0x800000024116AC30, v51);
    *(v41 + 12) = 2112;
    *(v41 + 14) = v38;
    *v42 = v38;
    v44 = v38;
    _os_log_impl(&dword_2410F8000, v39, v40, "%s Unable to derive STAskForTimeAnswer from AskTo answer choice: %@", v41, 0x16u);
    sub_2410FB29C(v42, &qword_27E530E30, &qword_2411676F0);
    MEMORY[0x245CDC5E0](v42, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v43);
    MEMORY[0x245CDC5E0](v43, -1, -1);
    MEMORY[0x245CDC5E0](v41, -1, -1);
  }

  v45 = sub_241165418();
  v47 = v46;
  sub_2411133A8();
  swift_allocError();
  *v48 = v45;
  *(v48 + 8) = v47;
  *(v48 + 16) = 0;
  return swift_willThrow();
}

uint64_t get_enum_tag_for_layout_string_11AskToDaemon23ScreenTimeAnswerHandlerV5ErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 7) == 7)
  {
    return (*a1 + 7);
  }

  else
  {
    return *(a1 + 16) & 7;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_2411160A4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF9 && *(a1 + 17))
  {
    return (*a1 + 249);
  }

  v3 = *(a1 + 16);
  if (v3 <= 7)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_2411160EC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF8)
  {
    *(result + 16) = 0;
    *result = a2 - 249;
    *(result + 8) = 0;
    if (a3 >= 0xF9)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF9)
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

uint64_t sub_241116130(uint64_t result, unsigned int a2)
{
  if (a2 >= 7)
  {
    *result = a2 - 7;
    *(result + 8) = 0;
    LOBYTE(a2) = 7;
  }

  *(result + 16) = a2;
  return result;
}

unint64_t sub_24111615C()
{
  result = qword_27E530CA8;
  if (!qword_27E530CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E530CA8);
  }

  return result;
}

uint64_t sub_2411161D0()
{
  v0 = sub_241165288();
  __swift_allocate_value_buffer(v0, qword_27E533A08);
  __swift_project_value_buffer(v0, qword_27E533A08);
  return sub_241165278();
}

uint64_t sub_241116258()
{
  v0 = sub_241165288();
  __swift_allocate_value_buffer(v0, qword_27E533A20);
  __swift_project_value_buffer(v0, qword_27E533A20);
  return sub_241165278();
}

uint64_t sub_24111630C()
{
  v0 = sub_241165288();
  __swift_allocate_value_buffer(v0, qword_27E533A50);
  __swift_project_value_buffer(v0, qword_27E533A50);
  return sub_241165278();
}

uint64_t sub_241116394()
{
  v0 = sub_241165288();
  __swift_allocate_value_buffer(v0, qword_27E533A68);
  __swift_project_value_buffer(v0, qword_27E533A68);
  return sub_241165278();
}

uint64_t sub_241116438()
{
  v0 = sub_241165288();
  __swift_allocate_value_buffer(v0, qword_27E533A98);
  __swift_project_value_buffer(v0, qword_27E533A98);
  return sub_241165278();
}

uint64_t sub_2411164E8()
{
  v0 = sub_241165288();
  __swift_allocate_value_buffer(v0, qword_27E533AC8);
  __swift_project_value_buffer(v0, qword_27E533AC8);
  return sub_241165278();
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

uint64_t sub_241116654()
{
  v0 = sub_241165288();
  __swift_allocate_value_buffer(v0, qword_27E533B28);
  __swift_project_value_buffer(v0, qword_27E533B28);
  return sub_241165278();
}

uint64_t sub_241116708()
{
  v0 = sub_241165288();
  __swift_allocate_value_buffer(v0, qword_27E533B58);
  __swift_project_value_buffer(v0, qword_27E533B58);
  return sub_241165278();
}

uint64_t sub_2411167BC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_241165288();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_241165278();
}

uint64_t sub_241116840()
{
  v0 = sub_241165288();
  __swift_allocate_value_buffer(v0, qword_27E533B88);
  __swift_project_value_buffer(v0, qword_27E533B88);
  return sub_241165278();
}

uint64_t sub_2411168C8()
{
  v0 = sub_241165288();
  __swift_allocate_value_buffer(v0, qword_27E533BA0);
  __swift_project_value_buffer(v0, qword_27E533BA0);
  return sub_241165278();
}

uint64_t sub_241116950()
{
  v0 = sub_241165288();
  __swift_allocate_value_buffer(v0, qword_27E533BB8);
  __swift_project_value_buffer(v0, qword_27E533BB8);
  return sub_241165278();
}

unint64_t sub_2411169D8(unint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v27[0] = result;
      v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v27 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v27;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v27 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_2411662F8();
        v3 = v26;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v28 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v6 = sub_24113049C(result, a2, 10);
  v24 = v25;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

unint64_t sub_241116CD8()
{
  v1 = 0xD000000000000030;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000027;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000026;
  }
}

unint64_t sub_241116D2C(uint64_t a1)
{
  result = 0xD000000000000024;
  if (a1)
  {
    if (a1 == 1)
    {
      return 0xD00000000000003CLL;
    }

    else
    {
      sub_2411662B8();
      MEMORY[0x245CDB790](0xD000000000000043, 0x800000024116B720);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530A60, &qword_241168260);
      sub_241166318();
      return 0;
    }
  }

  return result;
}

unint64_t sub_241116E20(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530A08, &unk_241167910);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2411673F0;
  *(inited + 32) = 1868983913;
  *(inited + 40) = 0xE400000000000000;
  v3 = sub_241116D2C(a1);
  *(inited + 72) = MEMORY[0x277D837D0];
  if (!v4)
  {
    sub_241166318();
    v3 = 0;
    v4 = 0xE000000000000000;
  }

  *(inited + 48) = v3;
  *(inited + 56) = v4;
  v5 = sub_2410FB9E0(inited);
  swift_setDeallocating();
  sub_2410FB29C(inited + 32, &unk_27E530E80, &qword_241168920);
  return v5;
}

uint64_t sub_241116F24(uint64_t a1)
{
  v2 = sub_241135B70();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_241116F60(uint64_t a1)
{
  v2 = sub_241135B70();

  return MEMORY[0x28211F4A8](a1, v2);
}

unint64_t sub_241116F9C(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
    sub_2411662B8();
    MEMORY[0x245CDB790](0xD000000000000022, 0x800000024116B810);
    MEMORY[0x245CDB790](a1, a2);
    MEMORY[0x245CDB790](0xD00000000000001BLL, 0x800000024116B840);
    return 0;
  }

  if (a3 == 1)
  {
    sub_2411662B8();
    MEMORY[0x245CDB790](0xD000000000000034, 0x800000024116B7A0);
    swift_getErrorValue();
    v4 = sub_241166458();
    MEMORY[0x245CDB790](v4);

    return 0;
  }

  return 0xD000000000000029;
}

unint64_t sub_2411170E8(uint64_t a1, uint64_t a2, char a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530A08, &unk_241167910);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2411673F0;
  *(inited + 32) = 1868983913;
  *(inited + 40) = 0xE400000000000000;
  v7 = sub_241116F9C(a1, a2, a3);
  *(inited + 72) = MEMORY[0x277D837D0];
  if (!v8)
  {
    sub_241166318();
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  *(inited + 48) = v7;
  *(inited + 56) = v8;
  v9 = sub_2410FB9E0(inited);
  swift_setDeallocating();
  sub_2410FB29C(inited + 32, &unk_27E530E80, &qword_241168920);
  return v9;
}

uint64_t sub_241117210(uint64_t a1)
{
  v2 = sub_241135B1C();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_24111724C(uint64_t a1)
{
  v2 = sub_241135B1C();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_24111729C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a6;
  v8[2] = a7;
  v8[3] = a8;
  v11 = swift_task_alloc();
  v8[4] = v11;
  *v11 = v8;
  v11[1] = sub_24111734C;

  return sub_24111757C(a5, v9);
}

uint64_t sub_24111734C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {
    v5 = sub_2411174EC;
  }

  else
  {
    *(v4 + 48) = a1;
    v5 = sub_241117474;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_241117474()
{
  (*(v0 + 16))(*(v0 + 48), 0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2411174EC()
{
  v1 = v0[5];
  v2 = v0[2];
  v3 = v1;
  v2(0, v1);

  v4 = v0[1];

  return v4();
}

uint64_t sub_24111757C(uint64_t a1, __int16 a2)
{
  *(v3 + 312) = a2;
  *(v3 + 136) = a1;
  *(v3 + 144) = v2;
  v4 = sub_241165808();
  *(v3 + 152) = v4;
  *(v3 + 160) = *(v4 - 8);
  *(v3 + 168) = swift_task_alloc();
  v5 = sub_241165C38();
  *(v3 + 176) = v5;
  *(v3 + 184) = *(v5 - 8);
  *(v3 + 192) = swift_task_alloc();
  v6 = sub_241165BD8();
  *(v3 + 200) = v6;
  *(v3 + 208) = *(v6 - 8);
  *(v3 + 216) = swift_task_alloc();
  *(v3 + 224) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530650, &qword_241167408);
  *(v3 + 232) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530658, &unk_241167410);
  *(v3 + 240) = swift_task_alloc();
  *(v3 + 248) = swift_task_alloc();
  *(v3 + 256) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_241117784, 0, 0);
}

uint64_t sub_241117784()
{
  v57 = v0;
  v1 = *(v0 + 144);
  if (*(v1 + 24))
  {

    sub_241165C08();

    if (*(v0 + 40))
    {
      __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
      sub_241165948();
      __swift_destroy_boxed_opaque_existential_1((v0 + 16));
      goto LABEL_6;
    }

    sub_2410FB29C(v0 + 16, &qword_27E530CF8, &qword_2411684A0);
  }

  (*(*(v0 + 208) + 56))(*(v0 + 256), 1, 1, *(v0 + 200));
LABEL_6:
  v3 = *(v0 + 248);
  v2 = *(v0 + 256);
  v5 = *(v0 + 224);
  v4 = *(v0 + 232);
  v6 = *(v0 + 200);
  v7 = *(v0 + 208);
  (*(v7 + 104))(v3, *MEMORY[0x277CEED80], v6);
  (*(v7 + 56))(v3, 0, 1, v6);
  v8 = *(v5 + 48);
  sub_2410FC88C(v2, v4, &qword_27E530658, &unk_241167410);
  sub_2410FC88C(v3, v4 + v8, &qword_27E530658, &unk_241167410);
  v9 = *(v7 + 48);
  if (v9(v4, 1, v6) != 1)
  {
    v11 = *(v0 + 200);
    sub_2410FC88C(*(v0 + 232), *(v0 + 240), &qword_27E530658, &unk_241167410);
    v12 = v9(v4 + v8, 1, v11);
    v13 = *(v0 + 240);
    v14 = *(v0 + 248);
    if (v12 != 1)
    {
      v55 = *(v0 + 232);
      v17 = v1;
      v19 = *(v0 + 208);
      v18 = *(v0 + 216);
      v20 = *(v0 + 200);
      (*(v19 + 32))(v18, v4 + v8, v20);
      sub_2411356E8(&qword_27E530670, MEMORY[0x277CEEDA8], MEMORY[0x277CEEDB8]);
      v21 = sub_241165D98();
      v22 = *(v19 + 8);
      v22(v18, v20);
      sub_2410FB29C(v14, &qword_27E530658, &unk_241167410);
      v22(v13, v20);
      v1 = v17;
      sub_2410FB29C(v55, &qword_27E530658, &unk_241167410);
      if ((v21 & 1) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_17;
    }

    v15 = *(v0 + 200);
    v16 = *(v0 + 208);
    sub_2410FB29C(*(v0 + 248), &qword_27E530658, &unk_241167410);
    (*(v16 + 8))(v13, v15);
LABEL_11:
    sub_2410FB29C(*(v0 + 232), &qword_27E530650, &qword_241167408);
    goto LABEL_12;
  }

  v10 = *(v0 + 200);
  sub_2410FB29C(*(v0 + 248), &qword_27E530658, &unk_241167410);
  if (v9(v4 + v8, 1, v10) != 1)
  {
    goto LABEL_11;
  }

  sub_2410FB29C(*(v0 + 232), &qword_27E530658, &unk_241167410);
LABEL_17:
  v23 = sub_2411653A8();
  v24 = sub_241165368();
  v26 = v25;

  if (v24 == 0xD00000000000001DLL && 0x800000024116A040 == v26)
  {

LABEL_21:
    if (*(v1 + 24))
    {

      sub_241165C08();

      v28 = *(v0 + 120);
      if (v28)
      {
        __swift_project_boxed_opaque_existential_1((v0 + 96), *(v0 + 120));
        v29 = sub_241165978();
        v28 = v30;
        __swift_destroy_boxed_opaque_existential_1((v0 + 96));
      }

      else
      {
        sub_2410FB29C(v0 + 96, &qword_27E530CF8, &qword_2411684A0);
        v29 = 0;
      }
    }

    else
    {
      v29 = 0;
      v28 = 0;
    }

    v44 = *(v0 + 184);
    v43 = *(v0 + 192);
    v45 = *(v0 + 176);
    v46 = sub_2411653A8();
    (*(v44 + 104))(v43, *MEMORY[0x277CEEE20], v45);
    MEMORY[0x245CDB590](v29, v28, v46, v43);

    (*(v44 + 8))(v43, v45);
    if (qword_27E530580 != -1)
    {
      swift_once();
    }

    v47 = sub_241165288();
    __swift_project_value_buffer(v47, qword_27E5339F0);
    v48 = sub_241165268();
    v49 = sub_241166068();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&dword_2410F8000, v48, v49, "Sending question without acknowledgement alert - via legacy API", v50, 2u);
      MEMORY[0x245CDC5E0](v50, -1, -1);
    }

    v51 = *(v1 + 24);
    *(v0 + 264) = v51;

    v52 = swift_task_alloc();
    *(v0 + 272) = v52;
    *v52 = v0;
    v52[1] = sub_241118068;
    v53 = *(v0 + 136);
    v54 = *(v0 + 312);

    return sub_24112B48C(v53, v54, v51);
  }

  v27 = sub_2411663E8();

  if (v27)
  {
    goto LABEL_21;
  }

LABEL_12:
  if (*(v1 + 24))
  {

    sub_241165C08();

    if (*(v0 + 80))
    {
      __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
      sub_241165978();
      __swift_destroy_boxed_opaque_existential_1((v0 + 56));
    }

    else
    {
      sub_2410FB29C(v0 + 56, &qword_27E530CF8, &qword_2411684A0);
    }
  }

  v32 = *(v0 + 160);
  v31 = *(v0 + 168);
  v33 = *(v0 + 152);
  sub_241165818();
  v34 = sub_2411653A8();
  (*(v32 + 104))(v31, *MEMORY[0x277CEEB78], v33);
  sub_2411356E8(&qword_27E5309B0, MEMORY[0x277CEEBE8], MEMORY[0x277CEEBE0]);
  sub_241165C28();

  (*(v32 + 8))(v31, v33);
  if (qword_27E530580 != -1)
  {
    swift_once();
  }

  v35 = sub_241165288();
  __swift_project_value_buffer(v35, qword_27E5339F0);
  v36 = sub_241165268();
  v37 = sub_241166068();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v56 = v39;
    *v38 = 136315138;
    *(v38 + 4) = sub_241156B38(0xD000000000000013, 0x800000024116B6C0, &v56);
    _os_log_impl(&dword_2410F8000, v36, v37, "%s on non-screenTimeMoreTimeRequest, rerouting to message compose instead", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v39);
    MEMORY[0x245CDC5E0](v39, -1, -1);
    MEMORY[0x245CDC5E0](v38, -1, -1);
  }

  v40 = swift_task_alloc();
  *(v0 + 296) = v40;
  *v40 = v0;
  v40[1] = sub_241118294;
  v41 = *(v0 + 136);

  return sub_241132828(v41);
}

uint64_t sub_241118068(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 280) = v1;

  if (v1)
  {
    v5 = sub_24111855C;
  }

  else
  {
    *(v4 + 288) = a1;
    v5 = sub_2411181B4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2411181B4()
{
  v1 = v0[36];
  sub_2410FB29C(v0[32], &qword_27E530658, &unk_241167410);

  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_241118294()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_241118484;
  }

  else
  {
    v2 = sub_2411183A8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2411183A8()
{
  sub_2410FB29C(*(v0 + 256), &qword_27E530658, &unk_241167410);

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_241118484()
{
  sub_2410FB29C(*(v0 + 256), &qword_27E530658, &unk_241167410);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24111855C()
{
  sub_2410FB29C(*(v0 + 256), &qword_27E530658, &unk_241167410);

  v1 = *(v0 + 8);

  return v1();
}

void sub_24111868C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v5 = sub_241165EE8();
    if (a2)
    {
LABEL_3:
      v6 = sub_241165048();
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

uint64_t sub_2411187FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = v16;
  v8[3] = v17;
  v13 = swift_task_alloc();
  v8[4] = v13;
  *v13 = v8;
  v13[1] = sub_2411188CC;

  return sub_2411189E0(a5, a6, a7, a8);
}

uint64_t sub_2411188CC()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_241135C04;
  }

  else
  {
    v2 = sub_241135C20;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2411189E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[32] = a4;
  v5[33] = v4;
  v5[30] = a2;
  v5[31] = a3;
  v5[29] = a1;
  v6 = sub_241165848();
  v5[34] = v6;
  v5[35] = *(v6 - 8);
  v5[36] = swift_task_alloc();
  v7 = sub_241165BD8();
  v5[37] = v7;
  v5[38] = *(v7 - 8);
  v5[39] = swift_task_alloc();
  v5[40] = swift_task_alloc();
  v5[41] = swift_task_alloc();
  v5[42] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530650, &qword_241167408);
  v5[43] = swift_task_alloc();
  v5[44] = swift_task_alloc();
  v5[45] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530658, &unk_241167410);
  v5[46] = swift_task_alloc();
  v5[47] = swift_task_alloc();
  v5[48] = swift_task_alloc();
  v5[49] = swift_task_alloc();
  v5[50] = swift_task_alloc();
  v5[51] = swift_task_alloc();
  v5[52] = swift_task_alloc();
  v5[53] = swift_task_alloc();
  v5[54] = swift_task_alloc();
  v5[55] = swift_task_alloc();
  v8 = sub_241165728();
  v5[56] = v8;
  v5[57] = *(v8 - 8);
  v5[58] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_241118C70, 0, 0);
}

uint64_t sub_241118C70()
{
  v216 = v0;
  v1 = v0[33];
  if (!*(v1 + 24) || (v3 = v0[57], v2 = v0[58], v4 = v0[56], (*(v3 + 104))(v2, *MEMORY[0x277CEEB30], v4), , v5 = sub_241165B78(), , (*(v3 + 8))(v2, v4), (v5 & 1) == 0))
  {
    if (qword_27E530580 != -1)
    {
      swift_once();
    }

    v6 = sub_241165288();
    __swift_project_value_buffer(v6, qword_27E5339F0);
    v7 = sub_241165268();
    v8 = sub_241166048();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v215[0] = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_241156B38(0xD000000000000027, 0x800000024116B650, v215);
      _os_log_impl(&dword_2410F8000, v7, v8, "%s Client is missing required entitlement com.apple.asktod", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v10);
      MEMORY[0x245CDC5E0](v10, -1, -1);
      MEMORY[0x245CDC5E0](v9, -1, -1);
    }

    sub_241132370();
    swift_allocError();
    *v11 = 0;
    swift_willThrow();
    goto LABEL_11;
  }

  v208 = v1;
  if (*(v1 + 24))
  {

    sub_241165C08();

    if (v0[17])
    {
      __swift_project_boxed_opaque_existential_1(v0 + 14, v0[17]);
      sub_241165948();
      __swift_destroy_boxed_opaque_existential_1(v0 + 14);
      goto LABEL_17;
    }

    sub_2410FB29C((v0 + 14), &qword_27E530CF8, &qword_2411684A0);
  }

  (*(v0[38] + 56))(v0[55], 1, 1, v0[37]);
LABEL_17:
  v15 = v0[54];
  v14 = v0[55];
  v16 = v0[45];
  v17 = v0[42];
  v18 = v0[37];
  v19 = v0[38];
  v205 = *MEMORY[0x277CEED68];
  v209 = v19[13];
  v209(v15);
  v207 = v19[7];
  v207(v15, 0, 1, v18);
  v206 = v17;
  v20 = *(v17 + 48);
  sub_2410FC88C(v14, v16, &qword_27E530658, &unk_241167410);
  sub_2410FC88C(v15, v16 + v20, &qword_27E530658, &unk_241167410);
  v21 = v19[6];
  v0[59] = v21;
  v0[60] = (v19 + 6) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v213 = v0;
  v211 = v21;
  if (v21(v16, 1, v18) == 1)
  {
    v22 = v0[37];
    sub_2410FB29C(v0[54], &qword_27E530658, &unk_241167410);
    if (v21(v16 + v20, 1, v22) == 1)
    {
      sub_2410FB29C(v0[45], &qword_27E530658, &unk_241167410);
LABEL_31:
      if (qword_27E530580 != -1)
      {
        swift_once();
      }

      v50 = sub_241165288();
      __swift_project_value_buffer(v50, qword_27E5339F0);
      v51 = sub_241165268();
      v52 = sub_241166068();
      v53 = os_log_type_enabled(v51, v52);
      v54 = v0[55];
      if (v53)
      {
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v215[0] = v56;
        *v55 = 136315138;
        *(v55 + 4) = sub_241156B38(0xD000000000000027, 0x800000024116B650, v215);
        _os_log_impl(&dword_2410F8000, v51, v52, "%s called from tests. Skipping.", v55, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v56);
        MEMORY[0x245CDC5E0](v56, -1, -1);
        MEMORY[0x245CDC5E0](v55, -1, -1);
      }

      sub_2410FB29C(v54, &qword_27E530658, &unk_241167410);

      v12 = v0[1];
      goto LABEL_12;
    }

    goto LABEL_22;
  }

  v23 = v0[37];
  sub_2410FC88C(v0[45], v0[53], &qword_27E530658, &unk_241167410);
  v24 = v21(v16 + v20, 1, v23);
  v25 = v0[53];
  v26 = v0[54];
  if (v24 == 1)
  {
    v27 = v0[37];
    v28 = v0[38];
    sub_2410FB29C(v0[54], &qword_27E530658, &unk_241167410);
    (*(v28 + 8))(v25, v27);
LABEL_22:
    sub_2410FB29C(v0[45], &qword_27E530650, &qword_241167408);
    goto LABEL_23;
  }

  v212 = v0[45];
  v45 = v0[41];
  v46 = v0[38];
  v47 = v0[37];
  (*(v46 + 32))(v45, v16 + v20, v47);
  sub_2411356E8(&qword_27E530670, MEMORY[0x277CEEDA8], MEMORY[0x277CEEDB8]);
  v48 = sub_241165D98();
  v49 = *(v46 + 8);
  v49(v45, v47);
  sub_2410FB29C(v26, &qword_27E530658, &unk_241167410);
  v49(v25, v47);
  sub_2410FB29C(v212, &qword_27E530658, &unk_241167410);
  if (v48)
  {
    goto LABEL_31;
  }

LABEL_23:
  v30 = v0[35];
  v29 = v0[36];
  v31 = v0[34];
  v0[61] = sub_241165858();
  sub_241165C98();
  v32 = sub_241165CC8();
  v33 = sub_2411653A8();

  v34 = *MEMORY[0x277CEEBF8];
  v35 = *(v30 + 104);
  v0[62] = v35;
  v0[63] = (v30 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v204 = v35;
  v35(v29, v34, v31);
  v0[64] = sub_2411356E8(&qword_27E530D38, MEMORY[0x277CEEC28], MEMORY[0x277CEEC20]);
  sub_241165C28();

  v36 = *(v30 + 8);
  v0[65] = v36;
  v0[66] = (v30 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v203 = v36;
  v36(v29, v31);
  if (qword_27E530580 != -1)
  {
LABEL_114:
    swift_once();
  }

  v37 = sub_241165288();
  v0[67] = __swift_project_value_buffer(v37, qword_27E5339F0);

  v38 = sub_241165268();
  v39 = sub_241166068();

  if (!os_log_type_enabled(v38, v39))
  {

    goto LABEL_39;
  }

  v40 = swift_slowAlloc();
  v41 = swift_slowAlloc();
  v215[0] = v41;
  *v40 = 136315394;
  *(v40 + 4) = sub_241156B38(0xD000000000000027, 0x800000024116B650, v215);
  *(v40 + 12) = 2080;
  if (!*(v208 + 24))
  {
    goto LABEL_37;
  }

  sub_241165C08();

  if (!v213[27])
  {
    sub_2410FB29C((v213 + 24), &qword_27E530CF8, &qword_2411684A0);
LABEL_37:

    v44 = 0xE300000000000000;
    v42 = 7104878;
    goto LABEL_38;
  }

  __swift_project_boxed_opaque_existential_1(v213 + 24, v213[27]);
  v42 = sub_241165978();
  v44 = v43;
  __swift_destroy_boxed_opaque_existential_1(v213 + 24);
  if (!v44)
  {
    goto LABEL_37;
  }

LABEL_38:
  v57 = sub_241156B38(v42, v44, v215);

  *(v40 + 14) = v57;
  _os_log_impl(&dword_2410F8000, v38, v39, "%s called by client with bundle ID %s", v40, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x245CDC5E0](v41, -1, -1);
  MEMORY[0x245CDC5E0](v40, -1, -1);

  v0 = v213;
LABEL_39:
  v58 = v0[55];
  v59 = v0[52];
  v61 = v0[37];
  v60 = v0[38];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530CB8, &qword_241168368);
  v62 = *(v60 + 72);
  v63 = (*(v60 + 80) + 32) & ~*(v60 + 80);
  v64 = swift_allocObject();
  *(v64 + 16) = xmmword_241167FE0;
  v65 = v64 + v63;
  (v209)(v65, *MEMORY[0x277CEED70], v61);
  (v209)(v65 + v62, *MEMORY[0x277CEED88], v61);
  (v209)(v65 + 2 * v62, *MEMORY[0x277CEED90], v61);
  (v209)(v65 + 3 * v62, *MEMORY[0x277CEEDA0], v61);
  v66 = sub_2410FC448(v64);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_2410FC88C(v58, v59, &qword_27E530658, &unk_241167410);
  v67 = v211(v59, 1, v61);
  v68 = v0[52];
  if (v67 == 1)
  {

    sub_2410FB29C(v68, &qword_27E530658, &unk_241167410);
    goto LABEL_45;
  }

  v69 = v0[40];
  v70 = v0[37];
  v71 = v0[38];
  v74 = *(v71 + 32);
  v72 = v71 + 32;
  v73 = v74;
  v0[68] = v74;
  v0[69] = v72 & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v74(v69, v68, v70);
  v75 = sub_241125140(v69, v66);

  if ((v75 & 1) == 0)
  {
    (*(v0[38] + 8))(v0[40], v0[37]);
LABEL_45:
    v81 = 7104878;
    if (*(v208 + 24))
    {

      sub_241165C08();

      if (v0[22])
      {
        __swift_project_boxed_opaque_existential_1(v0 + 19, v0[22]);
        v82 = sub_241165978();
        v84 = v83;
        __swift_destroy_boxed_opaque_existential_1(v0 + 19);
        if (v84)
        {
          v81 = v82;
LABEL_51:

          v85 = sub_241165268();
          v86 = sub_241166048();

          if (os_log_type_enabled(v85, v86))
          {
            v87 = swift_slowAlloc();
            v88 = swift_slowAlloc();
            v215[0] = v88;
            *v87 = 136315394;
            *(v87 + 4) = sub_241156B38(v81, v84, v215);
            *(v87 + 12) = 2080;
            *(v87 + 14) = sub_241156B38(0xD000000000000027, 0x800000024116B650, v215);
            _os_log_impl(&dword_2410F8000, v85, v86, "Client with bundle ID %s was not in the allowlist for %s. Bailing.", v87, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x245CDC5E0](v88, -1, -1);
            MEMORY[0x245CDC5E0](v87, -1, -1);
          }

          v89 = v0[55];
          sub_2411354F4();
          swift_allocError();
          *v90 = v81;
          *(v90 + 8) = v84;
          *(v90 + 16) = 0;
          swift_willThrow();
          sub_2410FB29C(v89, &qword_27E530658, &unk_241167410);
LABEL_11:

          v12 = v0[1];
LABEL_12:

          return v12();
        }
      }

      else
      {
        sub_2410FB29C((v0 + 19), &qword_27E530CF8, &qword_2411684A0);
      }
    }

    v84 = 0xE300000000000000;
    goto LABEL_51;
  }

  v202 = v73;
  v208 = v72;
  v76 = v0[36];
  v77 = v0[34];
  sub_241165C98();
  v78 = sub_241165CC8();
  v79 = sub_2411653A8();

  v204(v76, *MEMORY[0x277CEEC08], v77);
  sub_241165C28();

  v203(v76, v77);
  sub_241165C98();
  if (v80)
  {
    sub_241165BA8();
  }

  else
  {
    v207(v0[51], 1, 1, v0[37]);
  }

  v91 = v206;
  v92 = v0[29];
  v93 = sub_241165268();
  v94 = sub_241166068();

  if (os_log_type_enabled(v93, v94))
  {
    v95 = swift_slowAlloc();
    v96 = swift_slowAlloc();
    v215[0] = v96;
    *v95 = 136315394;
    *(v95 + 4) = sub_241156B38(0xD000000000000027, 0x800000024116B650, v215);
    *(v95 + 12) = 2080;
    v97 = sub_241165C98();
    if (v98)
    {
      v99 = v98;
    }

    else
    {
      v97 = 7104878;
      v99 = 0xE300000000000000;
    }

    v100 = sub_241156B38(v97, v99, v215);

    *(v95 + 14) = v100;
    _os_log_impl(&dword_2410F8000, v93, v94, "%s Client that originated the request has bundle ID %s", v95, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245CDC5E0](v96, -1, -1);
    MEMORY[0x245CDC5E0](v95, -1, -1);
  }

  v102 = v0[50];
  v101 = v0[51];
  v103 = v0[44];
  v104 = v0[37];
  (v209)(v102, *MEMORY[0x277CEED80], v104);
  v207(v102, 0, 1, v104);
  v105 = *(v206 + 48);
  sub_2410FC88C(v101, v103, &qword_27E530658, &unk_241167410);
  sub_2410FC88C(v102, v103 + v105, &qword_27E530658, &unk_241167410);
  v106 = v211(v103, 1, v104);
  v107 = &off_241167000;
  if (v106 != 1)
  {
    v109 = v0[37];
    sub_2410FC88C(v0[44], v0[49], &qword_27E530658, &unk_241167410);
    v110 = v211(v103 + v105, 1, v109);
    v111 = v0[49];
    v112 = v0[50];
    if (v110 != 1)
    {
      v153 = v0[44];
      v154 = v0[41];
      v155 = v213[38];
      v156 = v213[37];
      v202(v154, v103 + v105, v156);
      sub_2411356E8(&qword_27E530670, MEMORY[0x277CEEDA8], MEMORY[0x277CEEDB8]);
      v157 = sub_241165D98();
      v158 = *(v155 + 8);
      v158(v154, v156);
      sub_2410FB29C(v112, &qword_27E530658, &unk_241167410);
      v158(v111, v156);
      v91 = v206;
      v0 = v213;
      sub_2410FB29C(v153, &qword_27E530658, &unk_241167410);
      v107 = &off_241167000;
      if ((v157 & 1) == 0)
      {
        goto LABEL_66;
      }

      goto LABEL_93;
    }

    v114 = v0[37];
    v113 = v0[38];
    sub_2410FB29C(v0[50], &qword_27E530658, &unk_241167410);
    (*(v113 + 8))(v111, v114);
    v107 = &off_241167000;
LABEL_65:
    sub_2410FB29C(v0[44], &qword_27E530650, &qword_241167408);
    goto LABEL_66;
  }

  v108 = v0[37];
  sub_2410FB29C(v0[50], &qword_27E530658, &unk_241167410);
  if (v211(v103 + v105, 1, v108) != 1)
  {
    goto LABEL_65;
  }

  sub_2410FB29C(v0[44], &qword_27E530658, &unk_241167410);
LABEL_93:
  v159 = sub_241165CC8();
  v160 = sub_2411653A8();

  v161 = sub_241165368();
  v163 = v162;

  if (v161 == 0xD00000000000001DLL && 0x800000024116A040 == v163)
  {

LABEL_97:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530668, &unk_2411677A0);
    inited = swift_initStackObject();
    *(inited + 16) = *(v107 + 63);
    *(inited + 32) = sub_241165DD8();
    *(inited + 40) = v166;
    sub_2410FB2FC(inited);
    swift_setDeallocating();
    sub_2410FB464(inited + 32);
LABEL_99:

LABEL_100:
    v173 = v0[59];
    v174 = v0[46];
    v175 = v0[37];
    sub_2410FC88C(v0[51], v174, &qword_27E530658, &unk_241167410);
    if (v173(v174, 1, v175) == 1)
    {
      sub_2410FB29C(v0[46], &qword_27E530658, &unk_241167410);
      v176 = sub_241165268();
      v177 = sub_241166068();
      if (os_log_type_enabled(v176, v177))
      {
        v178 = swift_slowAlloc();
        v179 = swift_slowAlloc();
        v215[0] = v179;
        *v178 = 136315138;
        *(v178 + 4) = sub_241156B38(0xD000000000000027, 0x800000024116B650, v215);
        _os_log_impl(&dword_2410F8000, v176, v177, "%s Request client is not known. Not performing any response tasks.", v178, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v179);
        MEMORY[0x245CDC5E0](v179, -1, -1);
        MEMORY[0x245CDC5E0](v178, -1, -1);
      }

      v180 = swift_task_alloc();
      v0[79] = v180;
      *v180 = v0;
      v180[1] = sub_24111B574;
      v182 = v0[31];
      v181 = v0[32];
      v183 = v0[29];

      return sub_2411575C0(v182, v181, v183);
    }

    else
    {
      v184 = v0[39];
      (v0[68])(v184, v0[46], v0[37]);
      v185 = sub_24115A794(v184);
      v0[76] = v185;
      v186 = swift_task_alloc();
      v0[77] = v186;
      *v186 = v0;
      v186[1] = sub_24111B108;
      v187 = v0[29];

      return sub_241134174(v185, v187);
    }
  }

  v164 = sub_2411663E8();

  if (v164)
  {
    goto LABEL_97;
  }

LABEL_66:
  v115 = v0[51];
  v116 = v0[48];
  v117 = v0[43];
  v118 = v0[37];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530668, &unk_2411677A0);
  v119 = swift_initStackObject();
  *(v119 + 16) = *(v107 + 63);
  *(v119 + 32) = sub_241165DD8();
  *(v119 + 40) = v120;
  v206 = sub_2410FB2FC(v119);
  v0[70] = v206;
  swift_setDeallocating();
  sub_2410FB464(v119 + 32);
  (v209)(v116, v205, v118);
  v207(v116, 0, 1, v118);
  v121 = *(v91 + 48);
  sub_2410FC88C(v115, v117, &qword_27E530658, &unk_241167410);
  sub_2410FC88C(v116, v117 + v121, &qword_27E530658, &unk_241167410);
  if (v211(v117, 1, v118) == 1)
  {
    v122 = v0[37];
    sub_2410FB29C(v0[48], &qword_27E530658, &unk_241167410);
    if (v211(v117 + v121, 1, v122) == 1)
    {
      v123 = v0[43];

      sub_2410FB29C(v123, &qword_27E530658, &unk_241167410);
      goto LABEL_100;
    }

    goto LABEL_71;
  }

  v124 = v0[37];
  sub_2410FC88C(v0[43], v0[47], &qword_27E530658, &unk_241167410);
  v125 = v211(v117 + v121, 1, v124);
  v126 = v0[47];
  v127 = v0[48];
  if (v125 == 1)
  {
    v129 = v0[37];
    v128 = v0[38];
    sub_2410FB29C(v0[48], &qword_27E530658, &unk_241167410);
    (*(v128 + 8))(v126, v129);
LABEL_71:
    sub_2410FB29C(v0[43], &qword_27E530650, &qword_241167408);
    goto LABEL_72;
  }

  v167 = v0[43];
  v168 = v0[41];
  v170 = v0[37];
  v169 = v0[38];
  v202(v168, v117 + v121, v170);
  sub_2411356E8(&qword_27E530670, MEMORY[0x277CEEDA8], MEMORY[0x277CEEDB8]);
  v171 = sub_241165D98();
  v172 = *(v169 + 8);
  v172(v168, v170);
  sub_2410FB29C(v127, &qword_27E530658, &unk_241167410);
  v172(v126, v170);
  v0 = v213;
  sub_2410FB29C(v167, &qword_27E530658, &unk_241167410);
  if (v171)
  {
    goto LABEL_99;
  }

LABEL_72:
  v130 = v0[30];
  v131 = MEMORY[0x277D84F90];
  v214 = MEMORY[0x277D84F90];
  v132 = *(v130 + 16);
  if (v132)
  {
    v133 = 0;
    v134 = v130 + 40;
    v210 = v130 + 40;
    do
    {
      v211 = v131;
      v135 = (v134 + 16 * v133);
      v136 = v133;
      while (1)
      {
        if (v136 >= v132)
        {
          __break(1u);
LABEL_113:
          __break(1u);
          goto LABEL_114;
        }

        v133 = v136 + 1;
        if (__OFADD__(v136, 1))
        {
          goto LABEL_113;
        }

        v137 = *(v135 - 1);
        v138 = *v135;
        v139 = sub_241165DA8();
        v140 = IDSCopyBestGuessIDForID();

        if (v140)
        {
          break;
        }

        v141 = sub_241165268();
        v142 = sub_241166048();

        if (os_log_type_enabled(v141, v142))
        {
          v143 = swift_slowAlloc();
          v144 = v132;
          v145 = swift_slowAlloc();
          v215[0] = v145;
          *v143 = 136315138;
          *(v143 + 4) = sub_241156B38(v137, v138, v215);
          _os_log_impl(&dword_2410F8000, v141, v142, "Best guess ID for %s was nil. Skipping destination.", v143, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v145);
          v146 = v145;
          v132 = v144;
          MEMORY[0x245CDC5E0](v146, -1, -1);
          MEMORY[0x245CDC5E0](v143, -1, -1);
        }

        v0 = v213;
        ++v136;
        v135 += 2;
        if (v133 == v132)
        {
          v131 = v211;
          goto LABEL_86;
        }
      }

      MEMORY[0x245CDB820]();
      if (*((v214 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v214 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_241165F18();
      }

      sub_241165F28();
      v0 = v213;
      v131 = v214;
      v134 = v210;
    }

    while (v133 != v132);
  }

LABEL_86:
  v0[71] = v131;
  v147 = sub_241165CB8();
  v0[72] = v147;
  if (!v147)
  {
    v188 = v0[29];

    v189 = v188;
    v190 = sub_241165268();
    v191 = sub_241166048();

    if (os_log_type_enabled(v190, v191))
    {
      v192 = v0[29];
      v193 = swift_slowAlloc();
      v194 = swift_slowAlloc();
      *v193 = 138412290;
      *(v193 + 4) = v192;
      *v194 = v192;
      v195 = v192;
      _os_log_impl(&dword_2410F8000, v190, v191, "dictionaryRepresentation was nil for payload. Bailing send. payload: %@", v193, 0xCu);
      sub_2410FB29C(v194, &qword_27E530E30, &qword_2411676F0);
      MEMORY[0x245CDC5E0](v194, -1, -1);
      MEMORY[0x245CDC5E0](v193, -1, -1);
    }

    v196 = v0[55];
    v197 = v0[51];
    v198 = v0[40];
    v199 = v0[37];
    v200 = v0[38];

    sub_2411354F4();
    swift_allocError();
    *v201 = 0;
    *(v201 + 8) = 0;
    *(v201 + 16) = 2;
    swift_willThrow();
    sub_2410FB29C(v197, &qword_27E530658, &unk_241167410);
    (*(v200 + 8))(v198, v199);
    sub_2410FB29C(v196, &qword_27E530658, &unk_241167410);
    goto LABEL_11;
  }

  v148 = v147;
  if (qword_27E530638 != -1)
  {
    swift_once();
  }

  v149 = qword_27E533BE8;
  v150 = swift_task_alloc();
  v0[73] = v150;
  v150[2] = v149;
  v150[3] = v148;
  v150[4] = v131;
  v150[5] = v206;
  v151 = swift_task_alloc();
  v0[74] = v151;
  *v151 = v0;
  v151[1] = sub_24111AAC4;
  v152 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v151, 0, 0, 0xD000000000000033, 0x800000024116AAB0, sub_241135BCC, v150, v152);
}

uint64_t sub_24111AAC4()
{
  *(*v1 + 600) = v0;

  if (v0)
  {
    v2 = sub_24111AF38;
  }

  else
  {

    v2 = sub_24111AC0C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24111AC0C(uint64_t a1)
{
  v25 = v1;
  v23 = *(v1 + 520);
  v2 = *(v1 + 496);
  v3 = *(v1 + 288);
  v4 = *(v1 + 272);
  sub_241165C98();
  v5 = sub_241165CC8();
  v6 = sub_2411653A8();

  v2(v3, *MEMORY[0x277CEEC00], v4);
  sub_241165C28();

  v23(v3, v4);
  v7 = *(v1 + 472);
  v8 = *(v1 + 368);
  v9 = *(v1 + 296);
  sub_2410FC88C(*(v1 + 408), v8, &qword_27E530658, &unk_241167410);
  if (v7(v8, 1, v9) == 1)
  {
    sub_2410FB29C(*(v1 + 368), &qword_27E530658, &unk_241167410);
    v10 = sub_241165268();
    v11 = sub_241166068();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v24 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_241156B38(0xD000000000000027, 0x800000024116B650, &v24);
      _os_log_impl(&dword_2410F8000, v10, v11, "%s Request client is not known. Not performing any response tasks.", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x245CDC5E0](v13, -1, -1);
      MEMORY[0x245CDC5E0](v12, -1, -1);
    }

    v14 = swift_task_alloc();
    *(v1 + 632) = v14;
    *v14 = v1;
    v14[1] = sub_24111B574;
    v16 = *(v1 + 248);
    v15 = *(v1 + 256);
    v17 = *(v1 + 232);

    return sub_2411575C0(v16, v15, v17);
  }

  else
  {
    v19 = *(v1 + 312);
    (*(v1 + 544))(v19, *(v1 + 368), *(v1 + 296));
    v20 = sub_24115A794(v19);
    *(v1 + 608) = v20;
    v21 = swift_task_alloc();
    *(v1 + 616) = v21;
    *v21 = v1;
    v21[1] = sub_24111B108;
    v22 = *(v1 + 232);

    return sub_241134174(v20, v22);
  }
}

uint64_t sub_24111AF38()
{
  v1 = v0[55];
  v2 = v0[51];
  v3 = v0[40];
  v4 = v0[37];
  v5 = v0[38];

  sub_2410FB29C(v2, &qword_27E530658, &unk_241167410);
  (*(v5 + 8))(v3, v4);
  sub_2410FB29C(v1, &qword_27E530658, &unk_241167410);

  v6 = v0[1];

  return v6();
}

uint64_t sub_24111B108()
{
  *(*v1 + 624) = v0;

  if (v0)
  {
    v2 = sub_24111B3C0;
  }

  else
  {
    v2 = sub_24111B23C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24111B23C(uint64_t a1)
{
  v15 = v1[65];
  v2 = v1[62];
  v3 = v1[38];
  v4 = v1[36];
  v13 = v1[37];
  v14 = v1[39];
  v5 = v1[34];
  sub_241165C98();
  v6 = sub_241165CC8();
  v7 = sub_2411653A8();

  v2(v4, *MEMORY[0x277CEEBF0], v5);
  sub_241165C28();

  v15(v4, v5);
  (*(v3 + 8))(v14, v13);
  v8 = swift_task_alloc();
  v1[79] = v8;
  *v8 = v1;
  v8[1] = sub_24111B574;
  v10 = v1[31];
  v9 = v1[32];
  v11 = v1[29];

  return sub_2411575C0(v10, v9, v11);
}

uint64_t sub_24111B3C0()
{
  v1 = v0[55];
  v2 = v0[51];
  v3 = v0[40];
  v4 = v0[37];
  v5 = *(v0[38] + 8);
  v5(v0[39], v4);
  sub_2410FB29C(v2, &qword_27E530658, &unk_241167410);
  v5(v3, v4);
  sub_2410FB29C(v1, &qword_27E530658, &unk_241167410);

  v6 = v0[1];

  return v6();
}

uint64_t sub_24111B574()
{
  *(*v1 + 640) = v0;

  if (v0)
  {
    v2 = sub_24111B8C8;
  }

  else
  {
    v2 = sub_24111B688;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24111B688(uint64_t a1)
{
  v11 = v1[65];
  v2 = v1[62];
  v10 = v1[51];
  v13 = v1[40];
  v14 = v1[55];
  v3 = v1[38];
  v12 = v1[37];
  v4 = v1[36];
  v5 = v1[34];
  sub_241165C98();
  v6 = sub_241165CC8();
  v7 = sub_2411653A8();

  v2(v4, *MEMORY[0x277CEEC10], v5);
  sub_241165C28();

  v11(v4, v5);
  sub_2410FB29C(v10, &qword_27E530658, &unk_241167410);
  (*(v3 + 8))(v13, v12);
  sub_2410FB29C(v14, &qword_27E530658, &unk_241167410);

  v8 = v1[1];

  return v8();
}

uint64_t sub_24111B8C8()
{
  v1 = v0[55];
  v2 = v0[40];
  v3 = v0[37];
  v4 = v0[38];
  sub_2410FB29C(v0[51], &qword_27E530658, &unk_241167410);
  (*(v4 + 8))(v2, v3);
  sub_2410FB29C(v1, &qword_27E530658, &unk_241167410);

  v5 = v0[1];

  return v5();
}

uint64_t sub_24111BC00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = v17;
  v8[3] = v18;
  v13 = swift_task_alloc();
  v8[4] = v13;
  *v13 = v8;
  v13[1] = sub_2411188CC;

  return sub_24111BCD8(a5, a6, a7, a8, v16);
}

uint64_t sub_24111BCD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[19] = a5;
  v6[20] = v5;
  v6[17] = a3;
  v6[18] = a4;
  v6[15] = a1;
  v6[16] = a2;
  v7 = sub_241165728();
  v6[21] = v7;
  v6[22] = *(v7 - 8);
  v6[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24111BDA0, 0, 0);
}

uint64_t sub_24111BDA0()
{
  v47 = v0;
  if (qword_27E530580 != -1)
  {
    swift_once();
  }

  v1 = v0[15];
  v2 = sub_241165288();
  __swift_project_value_buffer(v2, qword_27E5339F0);

  v3 = v1;
  v4 = sub_241165268();
  v5 = sub_241166068();

  if (os_log_type_enabled(v4, v5))
  {
    v43 = v0[18];
    v44 = v0[19];
    v6 = v0[16];
    v7 = v0[17];
    v8 = v0[15];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v46[0] = v11;
    *v9 = 136315906;
    *(v9 + 4) = sub_241156B38(0xD00000000000003ELL, 0x800000024116B610, v46);
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_241156B38(v6, v7, v46);
    *(v9 + 22) = 2080;
    *(v9 + 24) = sub_241156B38(v43, v44, v46);
    *(v9 + 32) = 2112;
    *(v9 + 34) = v8;
    *v10 = v8;
    v12 = v8;
    _os_log_impl(&dword_2410F8000, v4, v5, "%s called with requestID %s, responderDSID: %s, answer: %@", v9, 0x2Au);
    sub_2410FB29C(v10, &qword_27E530E30, &qword_2411676F0);
    MEMORY[0x245CDC5E0](v10, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x245CDC5E0](v11, -1, -1);
    MEMORY[0x245CDC5E0](v9, -1, -1);
  }

  v13 = *(v0[20] + 24);
  v0[24] = v13;
  if (v13)
  {
    v15 = v0[22];
    v14 = v0[23];
    v16 = v0[21];
    (*(v15 + 104))(v14, *MEMORY[0x277CEEB30], v16);

    v17 = sub_241165B78();
    (*(v15 + 8))(v14, v16);
    if (v17)
    {
      v19 = v0[18];
      v18 = v0[19];
      v21 = v0[16];
      v20 = v0[17];
      v22 = v0[15];

      sub_241115B6C(v21, v20, v19, v18, v22, v0 + 2);
      v30 = v0[15];

      v31 = v30;
      v32 = sub_241165268();
      v33 = sub_241166068();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = v0[18];
        v45 = v0[19];
        v36 = v0[16];
        v35 = v0[17];
        v37 = v0[15];
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v46[0] = v40;
        *v38 = 136315650;
        *(v38 + 4) = sub_241156B38(v36, v35, v46);
        *(v38 + 12) = 2080;
        *(v38 + 14) = sub_241156B38(v34, v45, v46);
        *(v38 + 22) = 2112;
        *(v38 + 24) = v37;
        *v39 = v37;
        v41 = v37;
        _os_log_impl(&dword_2410F8000, v32, v33, "Calling into ScreenTimeAnswerHandler with requestID %s, responderDSID: %s, answer: %@", v38, 0x20u);
        sub_2410FB29C(v39, &qword_27E530E30, &qword_2411676F0);
        MEMORY[0x245CDC5E0](v39, -1, -1);
        swift_arrayDestroy();
        MEMORY[0x245CDC5E0](v40, -1, -1);
        MEMORY[0x245CDC5E0](v38, -1, -1);
      }

      v42 = swift_task_alloc();
      v0[25] = v42;
      *v42 = v0;
      v42[1] = sub_24111C3CC;

      return sub_24110BEC0();
    }
  }

  v23 = sub_241165268();
  v24 = sub_241166048();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v46[0] = v26;
    *v25 = 136315138;
    *(v25 + 4) = sub_241156B38(0xD00000000000003ELL, 0x800000024116B610, v46);
    _os_log_impl(&dword_2410F8000, v23, v24, "%s Client is missing required entitlement com.apple.asktod", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v26);
    MEMORY[0x245CDC5E0](v26, -1, -1);
    MEMORY[0x245CDC5E0](v25, -1, -1);
  }

  sub_241132370();
  swift_allocError();
  *v27 = 0;
  swift_willThrow();

  v28 = v0[1];

  return v28();
}

uint64_t sub_24111C3CC()
{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = sub_24111C570;
  }

  else
  {
    v2 = sub_24111C4E0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24111C4E0()
{
  *(v0 + 88) = *(v0 + 16);
  sub_2410FB464(v0 + 88);
  *(v0 + 104) = *(v0 + 32);
  sub_2410FB464(v0 + 104);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24111C570()
{
  *(v0 + 56) = *(v0 + 16);
  sub_2410FB464(v0 + 56);
  *(v0 + 72) = *(v0 + 32);
  sub_2410FB464(v0 + 72);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24111C79C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int16 a6, uint64_t a7, char a8)
{
  *(v8 + 80) = v11;
  *(v8 + 88) = v12;
  *(v8 + 138) = a8;
  *(v8 + 64) = a5;
  *(v8 + 72) = a7;
  *(v8 + 136) = a6;
  *(v8 + 56) = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530D10, &qword_241168508);
  *(v8 + 96) = swift_task_alloc();
  *(v8 + 104) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24111C85C, 0, 0);
}

uint64_t sub_24111C85C()
{
  v1 = *(v0 + 72);
  if (v1)
  {
    v2 = v1;
    sub_241165BE8();
    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  v5 = *(v0 + 96);
  v4 = *(v0 + 104);
  v6 = sub_241165BF8();
  v7 = *(v6 - 8);
  (*(v7 + 56))(v4, v3, 1, v6);
  sub_2410FC88C(v4, v5, &qword_27E530D10, &qword_241168508);
  v8 = (*(v7 + 48))(v5, 1, v6);
  v9 = *(v0 + 96);
  if (v8 == 1)
  {
    sub_2410FB29C(*(v0 + 96), &qword_27E530D10, &qword_241168508);
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    *(v0 + 48) = 0;
  }

  else
  {
    v10 = MEMORY[0x277CEEDC8];
    *(v0 + 40) = v6;
    *(v0 + 48) = v10;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
    (*(v7 + 32))(boxed_opaque_existential_1, v9, v6);
  }

  v12 = swift_task_alloc();
  *(v0 + 112) = v12;
  *v12 = v0;
  v12[1] = sub_24111CA50;
  v13 = *(v0 + 138);
  v14 = *(v0 + 64);
  v15 = *(v0 + 136);

  return sub_241125358(v14, v15, v0 + 16, v13);
}

uint64_t sub_24111CA50(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 120) = v1;

  if (v1)
  {
    v5 = sub_24111CC40;
  }

  else
  {
    *(v4 + 128) = a1;
    sub_2410FB29C(v4 + 16, &qword_27E530CF8, &qword_2411684A0);
    v5 = sub_24111CB90;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_24111CB90()
{
  v1 = v0[16];
  v2 = v0[10];
  sub_2410FB29C(v0[13], &qword_27E530D10, &qword_241168508);
  v3 = v1;
  v2(v1, 0);

  v4 = v0[1];

  return v4();
}

uint64_t sub_24111CC40()
{
  v1 = v0[15];
  v2 = v0[10];
  sub_2410FB29C(v0[13], &qword_27E530D10, &qword_241168508);
  sub_2410FB29C((v0 + 2), &qword_27E530CF8, &qword_2411684A0);
  v3 = v1;
  v2(0, v1);

  v4 = v0[1];

  return v4();
}

void sub_24111CE90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_241165048();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

uint64_t sub_24111CF00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a6;
  v7[3] = a7;
  v9 = swift_task_alloc();
  v7[4] = v9;
  *v9 = v7;
  v9[1] = sub_24111CFA0;

  return sub_24111D1A8(a5);
}

uint64_t sub_24111CFA0()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_24111D11C;
  }

  else
  {
    v2 = sub_24111D0B4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24111D0B4()
{
  (*(v0 + 16))(0);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24111D11C()
{
  v1 = v0[5];
  v2 = v0[2];
  v3 = v1;
  v2(v1);

  v4 = v0[1];

  return v4();
}

uint64_t sub_24111D1A8(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_241165728();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24111D268, 0, 0);
}

uint64_t sub_24111D268()
{
  v21 = v0;
  v1 = *(v0[8] + 24);
  v0[12] = v1;
  if (v1)
  {
    v3 = v0[10];
    v2 = v0[11];
    v4 = v0[9];
    (*(v3 + 104))(v2, *MEMORY[0x277CEEB30], v4);

    v5 = sub_241165B78();
    (*(v3 + 8))(v2, v4);
    if (v5)
    {
      v0[13] = sub_241165AD8();
      v14 = __swift_project_boxed_opaque_existential_1((v0[8] + 160), *(v0[8] + 184));
      v0[14] = v14;
      v15 = sub_241165938();
      v16 = sub_241165328();
      v18 = v17;

      v0[15] = v16;
      v0[16] = v18;
      v19 = *v14;

      return MEMORY[0x2822009F8](sub_24111D52C, v19, 0);
    }
  }

  if (qword_27E530580 != -1)
  {
    swift_once();
  }

  v6 = sub_241165288();
  __swift_project_value_buffer(v6, qword_27E5339F0);
  v7 = sub_241165268();
  v8 = sub_241166048();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_241156B38(0xD000000000000027, 0x800000024116B560, &v20);
    _os_log_impl(&dword_2410F8000, v7, v8, "%s Client is missing required entitlement com.apple.asktod", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x245CDC5E0](v10, -1, -1);
    MEMORY[0x245CDC5E0](v9, -1, -1);
  }

  sub_241132370();
  swift_allocError();
  *v11 = 0;
  swift_willThrow();

  v12 = v0[1];

  return v12();
}

uint64_t sub_24111D52C()
{
  sub_241137810(*(v0 + 120), *(v0 + 128));

  return MEMORY[0x2822009F8](sub_24111D5A8, 0, 0);
}

uint64_t sub_24111D5A8()
{
  v1 = sub_241165938();
  sub_24112AFBC(v1, (v0 + 2));

  v2 = v0[5];
  if (v2)
  {
    v3 = __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
    v4 = sub_241165938();
    v0[17] = v4;
    v5 = *v3;
    v6 = swift_task_alloc();
    v0[18] = v6;
    *v6 = v0;
    v6[1] = sub_24111D6F8;

    return sub_24115F8CC(v4, v5);
  }

  else
  {

    sub_2410FB29C((v0 + 2), &qword_27E530CE0, &qword_2411683F8);

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_24111D6F8()
{
  v1 = *(*v0 + 136);

  return MEMORY[0x2822009F8](sub_24111D80C, 0, 0);
}

uint64_t sub_24111D80C()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24111D8C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a6;
  v7[3] = a7;
  v9 = swift_task_alloc();
  v7[4] = v9;
  *v9 = v7;
  v9[1] = sub_24111D964;

  return sub_24111DAFC(a5);
}

uint64_t sub_24111D964(char a1)
{
  v4 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {
    v5 = sub_241135C08;
  }

  else
  {
    *(v4 + 48) = a1 & 1;
    v5 = sub_24111DA90;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_24111DA90()
{
  (*(v0 + 16))(*(v0 + 48), 0);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24111DAFC(uint64_t a1)
{
  v1[2] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5309F0, &qword_2411692B0);
  v1[3] = v3;
  v1[4] = *(v3 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v4 = swift_task_alloc();
  v1[7] = v4;
  *v4 = v1;
  v4[1] = sub_24111DC10;

  return sub_24112D8A8(a1);
}

uint64_t sub_24111DC10(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 64) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4(0);
  }

  else
  {

    return MEMORY[0x2822009F8](sub_24111DD58, 0, 0);
  }
}

uint64_t sub_24111DD58()
{
  v49 = v0;
  v1 = *(v0 + 64);
  if (*(v1 + 16))
  {
    v3 = *(v0 + 40);
    v2 = *(v0 + 48);
    v4 = *(v0 + 24);
    v5 = *(*(v0 + 32) + 80);
    sub_2410FC88C(v1 + ((v5 + 32) & ~v5), v2, &qword_27E5309F0, &qword_2411692B0);

    sub_2410FC88C(v2, v3, &qword_27E5309F0, &qword_2411692B0);

    v6 = *(v4 + 48);
    v7 = *(v3 + *(v4 + 64));
    v8 = sub_241165CD8();

    v47 = v8;
    if (v8)
    {

      v9 = "ngInMessages(_:)";
      v10 = 0xD00000000000001ALL;
    }

    else
    {
      v10 = 0xD00000000000001FLL;
      v9 = "_findAllMessagesForQuestion(_:)";
    }

    v24 = sub_2411650D8();
    (*(*(v24 - 8) + 8))(v3 + v6, v24);
    if (qword_27E530580 != -1)
    {
      swift_once();
    }

    v25 = *(v0 + 16);
    v26 = sub_241165288();
    __swift_project_value_buffer(v26, qword_27E5339F0);
    v27 = v25;

    v28 = sub_241165268();
    v29 = sub_241166068();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v48[0] = v31;
      *v30 = 136315394;
      v32 = sub_241165328();
      v34 = sub_241156B38(v32, v33, v48);

      *(v30 + 4) = v34;
      *(v30 + 12) = 2080;
      v35 = sub_241156B38(v10, v9 | 0x8000000000000000, v48);

      *(v30 + 14) = v35;
      _os_log_impl(&dword_2410F8000, v28, v29, "Question %s %s", v30, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x245CDC5E0](v31, -1, -1);
      MEMORY[0x245CDC5E0](v30, -1, -1);
    }

    else
    {
    }

    v36 = *(v0 + 16);
    v37 = sub_241165268();
    v38 = sub_241166068();

    v39 = os_log_type_enabled(v37, v38);
    v40 = *(v0 + 48);
    if (v39)
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v48[0] = v42;
      *v41 = 136315650;
      *(v41 + 4) = sub_241156B38(0xD000000000000020, 0x800000024116B510, v48);
      *(v41 + 12) = 1024;
      *(v41 + 14) = v47 == 0;
      *(v41 + 18) = 2080;
      v43 = sub_241165328();
      v45 = sub_241156B38(v43, v44, v48);

      *(v41 + 20) = v45;
      _os_log_impl(&dword_2410F8000, v37, v38, "%s returning isPending: %{BOOL}d for question ID: %s", v41, 0x1Cu);
      swift_arrayDestroy();
      MEMORY[0x245CDC5E0](v42, -1, -1);
      MEMORY[0x245CDC5E0](v41, -1, -1);
    }

    sub_2410FB29C(v40, &qword_27E5309F0, &qword_2411692B0);

    v22 = *(v0 + 8);
    v23 = v47 == 0;
  }

  else
  {

    if (qword_27E530580 != -1)
    {
      swift_once();
    }

    v11 = *(v0 + 16);
    v12 = sub_241165288();
    __swift_project_value_buffer(v12, qword_27E5339F0);
    v13 = v11;
    v14 = sub_241165268();
    v15 = sub_241166048();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v48[0] = v17;
      *v16 = 136315138;
      v18 = sub_241165328();
      v20 = sub_241156B38(v18, v19, v48);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_2410F8000, v14, v15, "Question %s not found in Messages database", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      MEMORY[0x245CDC5E0](v17, -1, -1);
      MEMORY[0x245CDC5E0](v16, -1, -1);
    }

    sub_241132370();
    swift_allocError();
    *v21 = 1;
    swift_willThrow();

    v22 = *(v0 + 8);
    v23 = 0;
  }

  return v22(v23);
}

uint64_t sub_24111E360(uint64_t a1, uint64_t a2, void *a3, const void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E530F50, &qword_241167C20);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v22 - v14;
  v16 = _Block_copy(a4);
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  v18 = sub_241165FA8();
  (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = a1;
  v19[5] = a3;
  v19[6] = a7;
  v19[7] = v17;
  v20 = a3;

  sub_24113C95C(0, 0, v15, a8, v19);
}

void sub_24111E4AC(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_241165048();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1 & 1);
}

uint64_t sub_24111E51C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = v16;
  v8[3] = v17;
  v13 = swift_task_alloc();
  v8[4] = v13;
  *v13 = v8;
  v13[1] = sub_2411188CC;

  return sub_24111E5EC(a5, a6, a7, a8);
}

uint64_t sub_24111E5EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5309F0, &qword_2411692B0);
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();
  v7 = sub_241165728();
  v5[13] = v7;
  v5[14] = *(v7 - 8);
  v5[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24111E740, 0, 0);
}

uint64_t sub_24111E740()
{
  v45 = v0;
  v1 = *(v0[6] + 24);
  v0[16] = v1;
  if (!v1)
  {
    goto LABEL_12;
  }

  v3 = v0[14];
  v2 = v0[15];
  v4 = v0[13];
  v5 = *(v3 + 104);
  v5(v2, *MEMORY[0x277CEEB30], v4);

  v6 = sub_241165B78();
  v7 = *(v3 + 8);
  v7(v2, v4);
  if ((v6 & 1) == 0)
  {

LABEL_12:
    if (qword_27E530580 != -1)
    {
      swift_once();
    }

    v31 = sub_241165288();
    __swift_project_value_buffer(v31, qword_27E5339F0);
    v32 = sub_241165268();
    v33 = sub_241166048();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v44[0] = v35;
      *v34 = 136315138;
      *(v34 + 4) = sub_241156B38(0xD000000000000035, 0x800000024116B490, v44);
      _os_log_impl(&dword_2410F8000, v32, v33, "%s Client is missing required entitlement com.apple.asktod", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v35);
      MEMORY[0x245CDC5E0](v35, -1, -1);
      MEMORY[0x245CDC5E0](v34, -1, -1);
    }

    sub_241132370();
    swift_allocError();
    *v36 = 0;
    swift_willThrow();
    goto LABEL_17;
  }

  v8 = v0[15];
  v9 = v0[13];
  v5(v8, *MEMORY[0x277CEEB38], v9);
  v10 = sub_241165B78();
  v7(v8, v9);
  if (v10)
  {
    if (qword_27E530580 != -1)
    {
      swift_once();
    }

    v11 = v0[5];
    v12 = v0[2];
    v13 = sub_241165288();
    v0[17] = __swift_project_value_buffer(v13, qword_27E5339F0);
    v14 = v12;

    v15 = v11;
    v16 = sub_241165268();
    v17 = sub_241166068();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = v0[4];
      v19 = v0[3];
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v44[0] = v21;
      *v20 = 136315906;
      *(v20 + 4) = sub_241156B38(0xD000000000000035, 0x800000024116B490, v44);
      *(v20 + 12) = 2080;
      v22 = sub_241165328();
      v24 = sub_241156B38(v22, v23, v44);

      *(v20 + 14) = v24;
      *(v20 + 22) = 2080;
      *(v20 + 24) = sub_241156B38(v19, v18, v44);
      *(v20 + 32) = 2080;
      v25 = sub_241165418();
      v27 = sub_241156B38(v25, v26, v44);

      *(v20 + 34) = v27;
      _os_log_impl(&dword_2410F8000, v16, v17, "%s called with question ID: %s, responderHandle: %s, answerChoice: %s", v20, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x245CDC5E0](v21, -1, -1);
      MEMORY[0x245CDC5E0](v20, -1, -1);
    }

    v28 = swift_task_alloc();
    v0[18] = v28;
    *v28 = v0;
    v28[1] = sub_24111ED68;
    v29 = v0[2];

    return sub_24112D8A8(v29);
  }

  if (qword_27E530580 != -1)
  {
    swift_once();
  }

  v38 = sub_241165288();
  __swift_project_value_buffer(v38, qword_27E5339F0);
  v39 = sub_241165268();
  v40 = sub_241166048();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v44[0] = v42;
    *v41 = 136315138;
    *(v41 + 4) = sub_241156B38(0xD000000000000035, 0x800000024116B490, v44);
    _os_log_impl(&dword_2410F8000, v39, v40, "%s Client is missing required entitlement com.apple.asktod.updateMessageBubble", v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v42);
    MEMORY[0x245CDC5E0](v42, -1, -1);
    MEMORY[0x245CDC5E0](v41, -1, -1);
  }

  sub_241132370();
  swift_allocError();
  *v43 = 0;
  swift_willThrow();

LABEL_17:

  v37 = v0[1];

  return v37();
}

uint64_t sub_24111ED68(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 152) = a1;
  *(v3 + 160) = v1;

  if (v1)
  {
    v4 = sub_24111F9F4;
  }

  else
  {
    v4 = sub_24111EE7C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24111EE7C()
{
  v20 = v0;
  v1 = *(v0[19] + 16);
  v0[21] = v1;
  if (v1)
  {
    v2 = swift_task_alloc();
    v0[22] = v2;
    *v2 = v0;
    v2[1] = sub_24111F0C8;
    v3 = v0[19];
    v4 = v0[5];
    v5 = v0[3];
    v6 = v0[4];

    return sub_24112B9CC(v3, v5, v6, v4);
  }

  else
  {
    v8 = v0[2];

    v9 = v8;
    v10 = sub_241165268();
    v11 = sub_241166048();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v19 = v13;
      *v12 = 136315138;
      v14 = sub_241165328();
      v16 = sub_241156B38(v14, v15, &v19);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_2410F8000, v10, v11, "Question %s not found in Messages database", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x245CDC5E0](v13, -1, -1);
      MEMORY[0x245CDC5E0](v12, -1, -1);
    }

    sub_241132370();
    swift_allocError();
    *v17 = 1;
    swift_willThrow();

    v18 = v0[1];

    return v18();
  }
}

uint64_t sub_24111F0C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[23] = a1;
  v5[24] = a2;
  v5[25] = a3;
  v5[26] = v3;

  if (v3)
  {
    v6 = sub_24111FA98;
  }

  else
  {
    v6 = sub_24111F1E0;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

void sub_24111F1E0()
{
  v52 = v0;
  v1 = 0;
  v43 = v0[11];
  v44 = v0[12];
  v46 = v0[9];
  v2 = v0[7];
  v41 = *(v2 + 48);
  v50 = v2;
  v40 = *(v2 + 64);
  v42 = v0[8];
  v45 = v0[19] + ((*(v42 + 80) + 32) & ~*(v42 + 80));
  do
  {
    if (v1 >= *(v0[19] + 16))
    {
      __break(1u);
      goto LABEL_13;
    }

    v10 = v0[23];
    v12 = v0[11];
    v11 = v0[12];
    v13 = v0[10];
    v48 = v1;
    sub_2410FC88C(v45 + *(v42 + 72) * v1, v11, &qword_27E5309F0, &qword_2411692B0);
    v14 = *v11;
    v15 = *(v44 + 8);
    v16 = *(v44 + v40);
    v17 = *(v50 + 48);
    v18 = *(v50 + 64);
    *v12 = v14;
    *(v43 + 8) = v15;
    v19 = sub_2411650D8();
    v49 = *(v19 - 8);
    (*(v49 + 32))(&v12[v17], v44 + v41, v19);
    *&v12[v18] = v16;
    sub_2410FC88C(v12, v13, &qword_27E5309F0, &qword_2411692B0);
    v20 = v10;
    v21 = sub_241165268();
    v22 = sub_241166068();
    v23 = os_log_type_enabled(v21, v22);
    v24 = v0[23];
    v25 = v0[10];
    v47 = v19;
    if (v23)
    {
      v38 = v22;
      log = v21;
      v26 = v0[9];
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v51 = v29;
      *v27 = 136315394;
      sub_241135680(v25, v26, &qword_27E5309F0, &qword_2411692B0);
      v30 = *v26;
      v31 = *(v46 + 8);
      v32 = *(v50 + 48);

      (*(v49 + 8))(v26 + v32, v19);
      v33 = sub_241156B38(v30, v31, &v51);

      *(v27 + 4) = v33;
      *(v27 + 12) = 2112;
      v34 = sub_241165CD8();

      if (!v34)
      {
        goto LABEL_14;
      }

      *(v27 + 14) = v34;
      *v28 = v34;
      _os_log_impl(&dword_2410F8000, log, v38, "Updating message bubble with GUID %s with response: %@", v27, 0x16u);
      sub_2410FB29C(v28, &qword_27E530E30, &qword_2411676F0);
      MEMORY[0x245CDC5E0](v28, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v29);
      MEMORY[0x245CDC5E0](v29, -1, -1);
      MEMORY[0x245CDC5E0](v27, -1, -1);

      v3 = v48;
    }

    else
    {

      sub_2410FB29C(v25, &qword_27E5309F0, &qword_2411692B0);
      v3 = v48;
    }

    v1 = v3 + 1;
    v4 = v0[21];
    v5 = v0[11];
    v6 = v0[9];
    sub_2410FC88C(v5, v6, &qword_27E5309F0, &qword_2411692B0);
    v7 = *(v50 + 48);

    v8 = sub_241165DA8();

    (*(v49 + 8))(v6 + v7, v47);
    v9 = sub_2411650F8();
    IMSPIUpdatePluginMessageWithGUID();

    sub_2410FB29C(v5, &qword_27E5309F0, &qword_2411692B0);
  }

  while (v1 != v4);
  if (!*(v0[19] + 16))
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    return;
  }

  v35 = *(v45 + *(v50 + 64));
  v36 = swift_task_alloc();
  v0[27] = v36;
  *v36 = v0;
  v36[1] = sub_24111F698;
  v37 = v0[23];

  sub_24112C754(v37, v35);
}

uint64_t sub_24111F698()
{
  *(*v1 + 224) = v0;

  if (v0)
  {

    v2 = sub_24111FB48;
  }

  else
  {
    v2 = sub_24111F7B4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24111F7B4()
{
  v19 = v0;
  v1 = *(v0 + 16);

  v2 = sub_241165268();
  v3 = sub_241166068();

  v4 = os_log_type_enabled(v2, v3);
  v6 = *(v0 + 192);
  v5 = *(v0 + 200);
  v7 = *(v0 + 184);
  v8 = *(v0 + 152);
  if (v4)
  {
    v17 = *(v0 + 200);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v9 = 136315650;
    *(v9 + 4) = sub_241156B38(0xD000000000000035, 0x800000024116B490, &v18);
    *(v9 + 12) = 2048;
    v11 = *(v8 + 16);

    *(v9 + 14) = v11;

    *(v9 + 22) = 2080;
    v12 = sub_241165328();
    v14 = sub_241156B38(v12, v13, &v18);

    *(v9 + 24) = v14;
    _os_log_impl(&dword_2410F8000, v2, v3, "%s successfully updated %ld message bubbles for question ID: %s", v9, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x245CDC5E0](v10, -1, -1);
    MEMORY[0x245CDC5E0](v9, -1, -1);

    sub_2410FB5B8(v6, v17);
  }

  else
  {
    swift_bridgeObjectRelease_n();

    sub_2410FB5B8(v6, v5);
  }

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_24111F9F4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24111FA98()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24111FB48()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 200);

  sub_2410FB5B8(v1, v2);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_24111FD90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a6;
  v8[2] = a7;
  v8[3] = a8;
  v11 = swift_task_alloc();
  v8[4] = v11;
  *v11 = v8;
  v11[1] = sub_2411188CC;

  return sub_24111FE40(a5, v9);
}

uint64_t sub_24111FE40(uint64_t a1, __int16 a2)
{
  *(v3 + 256) = a2;
  *(v3 + 176) = a1;
  *(v3 + 184) = v2;
  v4 = sub_241165728();
  *(v3 + 192) = v4;
  *(v3 + 200) = *(v4 - 8);
  *(v3 + 208) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24111FF04, 0, 0);
}

uint64_t sub_24111FF04()
{
  v37 = v0;
  v1 = *(*(v0 + 184) + 24);
  *(v0 + 216) = v1;
  if (!v1)
  {
    goto LABEL_5;
  }

  v3 = *(v0 + 200);
  v2 = *(v0 + 208);
  v4 = *(v0 + 192);
  (*(v3 + 104))(v2, *MEMORY[0x277CEEB30], v4);

  v5 = sub_241165B78();
  (*(v3 + 8))(v2, v4);
  if ((v5 & 1) == 0)
  {

LABEL_5:
    if (qword_27E530580 != -1)
    {
      swift_once();
    }

    v6 = sub_241165288();
    __swift_project_value_buffer(v6, qword_27E5339F0);
    v7 = sub_241165268();
    v8 = sub_241166048();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v36[0] = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_241156B38(0xD000000000000035, 0x800000024116B400, v36);
      _os_log_impl(&dword_2410F8000, v7, v8, "%s Client is missing required entitlement com.apple.asktod", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v10);
      MEMORY[0x245CDC5E0](v10, -1, -1);
      MEMORY[0x245CDC5E0](v9, -1, -1);
    }

    sub_241132370();
    swift_allocError();
    *v11 = 0;
    swift_willThrow();
LABEL_27:

    v32 = *(v0 + 8);
LABEL_28:

    return v32();
  }

  *(v0 + 224) = sub_241165AD8();
  v12 = sub_241165938();
  v13 = sub_2411653A8();

  v14 = sub_241165368();
  v16 = v15;

  if (v14 == 0xD00000000000002DLL && 0x800000024116B440 == v16)
  {
    goto LABEL_17;
  }

  v18 = sub_2411663E8();

  if (v18)
  {
LABEL_18:
    if (sub_241106974())
    {
      v24 = swift_task_alloc();
      *(v0 + 232) = v24;
      *v24 = v0;
      v24[1] = sub_241120558;

      return sub_2411422B0();
    }

    if (qword_27E530580 != -1)
    {
      swift_once();
    }

    v26 = sub_241165288();
    __swift_project_value_buffer(v26, qword_27E5339F0);
    v27 = sub_241165268();
    v28 = sub_241166048();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v36[0] = v30;
      *v29 = 136315138;
      *(v29 + 4) = sub_241156B38(0xD000000000000035, 0x800000024116B400, v36);
      _os_log_impl(&dword_2410F8000, v27, v28, "%s Contact syncing not setup", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v30);
      MEMORY[0x245CDC5E0](v30, -1, -1);
      MEMORY[0x245CDC5E0](v29, -1, -1);
    }

    sub_2411327D4();
    swift_allocError();
    *v31 = 2;
    swift_willThrow();

    goto LABEL_27;
  }

  v19 = sub_241165938();
  v20 = sub_2411653A8();

  v21 = sub_241165368();
  v23 = v22;

  if (v21 == 0xD00000000000001DLL && 0x800000024116B470 == v23)
  {
LABEL_17:

    goto LABEL_18;
  }

  v33 = sub_2411663E8();

  if (v33)
  {
    goto LABEL_18;
  }

  if (*(v0 + 256))
  {

    v32 = *(v0 + 8);
    goto LABEL_28;
  }

  v34 = [objc_allocWithZone(MEMORY[0x277D08280]) init];
  *(v0 + 240) = v34;
  [v34 setCachePolicy_];
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 168;
  *(v0 + 24) = sub_241120988;
  v35 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E530F60, &qword_241168050);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_241142CF4;
  *(v0 + 104) = &block_descriptor_6;
  *(v0 + 112) = v35;
  [v34 startRequestWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_241120558(uint64_t a1, char a2)
{
  v3 = *v2;
  *(v3 + 160) = a2;
  *(v3 + 144) = v2;
  *(v3 + 152) = a1;
  *(v3 + 258) = a2;

  return MEMORY[0x2822009F8](sub_241120660, 0, 0);
}

uint64_t sub_241120660()
{
  v12 = v0;
  if ((*(v0 + 258) & 1) != 0 || (*(v0 + 152) - 4) <= 0xFFFFFFFFFFFFFFFCLL)
  {
    if (qword_27E530580 != -1)
    {
      swift_once();
    }

    v2 = sub_241165288();
    __swift_project_value_buffer(v2, qword_27E5339F0);
    v3 = sub_241165268();
    v4 = sub_241166048();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v11 = v6;
      *v5 = 136315138;
      *(v5 + 4) = sub_241156B38(0xD000000000000035, 0x800000024116B400, &v11);
      _os_log_impl(&dword_2410F8000, v3, v4, "%s Determined communication limits is not enabled", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v6);
      MEMORY[0x245CDC5E0](v6, -1, -1);
      MEMORY[0x245CDC5E0](v5, -1, -1);
    }

    sub_2411327D4();
    swift_allocError();
    *v7 = 3;
    swift_willThrow();

    v1 = *(v0 + 8);
    goto LABEL_10;
  }

  if (*(v0 + 256))
  {

    v1 = *(v0 + 8);
LABEL_10:

    return v1();
  }

  v9 = [objc_allocWithZone(MEMORY[0x277D08280]) init];
  *(v0 + 240) = v9;
  [v9 setCachePolicy_];
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 168;
  *(v0 + 24) = sub_241120988;
  v10 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E530F60, &qword_241168050);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_241142CF4;
  *(v0 + 104) = &block_descriptor_6;
  *(v0 + 112) = v10;
  [v9 startRequestWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_241120988()
{
  v1 = *(*v0 + 48);
  *(*v0 + 248) = v1;
  if (v1)
  {
    v2 = sub_241120E20;
  }

  else
  {
    v2 = sub_241120A98;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_241120A98()
{
  v21 = v0;
  v1 = v0[21];
  v2 = [v1 me];
  if (v2)
  {
    v3 = v2;
    if (sub_241166088())
    {
      v4 = v0[30];

      v5 = v0[1];
      goto LABEL_15;
    }

    if (qword_27E530580 != -1)
    {
      swift_once();
    }

    v13 = sub_241165288();
    __swift_project_value_buffer(v13, qword_27E5339F0);
    v14 = sub_241165268();
    v15 = sub_241166048();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v20[0] = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_241156B38(0xD000000000000035, 0x800000024116B400, v20);
      _os_log_impl(&dword_2410F8000, v14, v15, "%s Determined current user account is not a child or teen", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      MEMORY[0x245CDC5E0](v17, -1, -1);
      MEMORY[0x245CDC5E0](v16, -1, -1);
    }

    v11 = v0[30];
    sub_2411327D4();
    swift_allocError();
    *v18 = 1;
    swift_willThrow();
  }

  else
  {
    if (qword_27E530580 != -1)
    {
      swift_once();
    }

    v6 = sub_241165288();
    __swift_project_value_buffer(v6, qword_27E5339F0);
    v7 = sub_241165268();
    v8 = sub_241166048();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v20[0] = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_241156B38(0xD000000000000035, 0x800000024116B400, v20);
      _os_log_impl(&dword_2410F8000, v7, v8, "%s Missing me in FamilyCircle", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v10);
      MEMORY[0x245CDC5E0](v10, -1, -1);
      MEMORY[0x245CDC5E0](v9, -1, -1);
    }

    v11 = v0[30];
    sub_2411327D4();
    swift_allocError();
    *v12 = 0;
    swift_willThrow();
  }

  v5 = v0[1];
LABEL_15:

  return v5();
}

uint64_t sub_241120E20(uint64_t a1)
{
  v2 = *(v1 + 240);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_241120F0C(uint64_t a1, uint64_t a2, void *a3, __int16 a4, const void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E530F50, &qword_241167C20);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v23 - v15;
  v17 = _Block_copy(a5);
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  v19 = sub_241165FA8();
  (*(*(v19 - 8) + 56))(v16, 1, 1, v19);
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  *(v20 + 24) = 0;
  *(v20 + 32) = a1;
  *(v20 + 40) = a3;
  *(v20 + 48) = a4;
  *(v20 + 56) = a8;
  *(v20 + 64) = v18;
  v21 = a3;

  sub_24113C95C(0, 0, v16, a9, v20);
}

uint64_t sub_241121068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a6;
  v7[3] = a7;
  v9 = swift_task_alloc();
  v7[4] = v9;
  *v9 = v7;
  v9[1] = sub_241121108;

  return sub_241121274(a5);
}

uint64_t sub_241121108(char a1)
{
  *(*v1 + 40) = a1;

  return MEMORY[0x2822009F8](sub_241121208, 0, 0);
}

uint64_t sub_241121208()
{
  (*(v0 + 16))(*(v0 + 40), 0);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_241121274(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_241165728();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_241121334, 0, 0);
}

uint64_t sub_241121334()
{
  v16 = v0;
  if (*(v0[3] + 24) && (v2 = v0[5], v1 = v0[6], v3 = v0[4], (*(v2 + 104))(v1, *MEMORY[0x277CEEB30], v3), , v4 = sub_241165B78(), , (*(v2 + 8))(v1, v3), (v4 & 1) != 0))
  {
    __swift_project_boxed_opaque_existential_1((v0[3] + 200), *(v0[3] + 224));
    v14 = off_2852EBE58 + *off_2852EBE58;
    v5 = swift_task_alloc();
    v0[7] = v5;
    *v5 = v0;
    v5[1] = sub_241121638;
    v6 = v0[2];

    return (v14)(v6, &type metadata for CommunicationLimitsSettings, &off_2852EBE48);
  }

  else
  {
    if (qword_27E530580 != -1)
    {
      swift_once();
    }

    v8 = sub_241165288();
    __swift_project_value_buffer(v8, qword_27E5339F0);
    v9 = sub_241165268();
    v10 = sub_241166048();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v15 = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_241156B38(0xD000000000000018, 0x800000024116B3E0, &v15);
      _os_log_impl(&dword_2410F8000, v9, v10, "%s Client is missing required entitlement com.apple.asktod", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x245CDC5E0](v12, -1, -1);
      MEMORY[0x245CDC5E0](v11, -1, -1);
    }

    v13 = v0[1];

    return v13(0);
  }
}

uint64_t sub_241121638(uint64_t a1, int a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5((a1 == 2) & ~a2);
}

uint64_t sub_2411218BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = a5;
  v8[2] = a7;
  v8[3] = a8;
  v11 = swift_task_alloc();
  v8[4] = v11;
  *v11 = v8;
  v11[1] = sub_24112196C;

  return sub_241121C50(v10, a6);
}

uint64_t sub_24112196C(char a1)
{
  v3 = *v2;
  *(v3 + 48) = a1;
  *(v3 + 40) = v1;

  if (v1)
  {
    v4 = sub_241121BC0;
  }

  else
  {
    v4 = sub_241121A84;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_241121A84()
{
  if (qword_27E530580 != -1)
  {
    swift_once();
  }

  v1 = sub_241165288();
  __swift_project_value_buffer(v1, qword_27E5339F0);
  v2 = sub_241165268();
  v3 = sub_241166068();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 48);
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_2410F8000, v2, v3, "canAsk (supports-askto-responseUI) %{BOOL}d", v5, 8u);
    MEMORY[0x245CDC5E0](v5, -1, -1);
  }

  v6 = *(v0 + 48);
  v7 = *(v0 + 16);

  v7(v6, 0);
  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_241121BC0()
{
  v1 = v0[5];
  v2 = v0[2];
  v3 = v1;
  v2(0, v1);

  v4 = v0[1];

  return v4();
}

uint64_t sub_241121C50(__int16 a1, uint64_t a2)
{
  *(v3 + 192) = a2;
  *(v3 + 200) = v2;
  *(v3 + 74) = a1;
  v4 = sub_241165728();
  *(v3 + 208) = v4;
  *(v3 + 216) = *(v4 - 8);
  *(v3 + 224) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_241121D14, 0, 0);
}

uint64_t sub_241121D14()
{
  v20 = v0;
  v1 = *(*(v0 + 200) + 24);
  *(v0 + 232) = v1;
  if (v1)
  {
    v3 = *(v0 + 216);
    v2 = *(v0 + 224);
    v4 = *(v0 + 208);
    (*(v3 + 104))(v2, *MEMORY[0x277CEEB30], v4);

    v5 = sub_241165B78();
    (*(v3 + 8))(v2, v4);
    if (v5)
    {
      v6 = *(v0 + 192);
      if (v6 && *(v6 + 16))
      {
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530668, &unk_2411677A0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_2411673F0;
        *(inited + 32) = sub_241165DD8();
        *(inited + 40) = v16;
        v6 = sub_2410FB2FC(inited);
        swift_setDeallocating();
        sub_2410FB464(inited + 32);
      }

      sub_241165C08();
      *(v0 + 56) = 0;
      *(v0 + 64) = v6;
      *(v0 + 72) = 1;
      sub_2411324FC(v0 + 16, v0 + 80);
      v17 = swift_task_alloc();
      *(v0 + 240) = v17;
      *v17 = v0;
      v17[1] = sub_241122068;
      v18 = *(v0 + 74);

      return sub_24115A1D4(v0 + 80, v18);
    }
  }

  if (qword_27E530580 != -1)
  {
    swift_once();
  }

  v7 = sub_241165288();
  __swift_project_value_buffer(v7, qword_27E5339F0);
  v8 = sub_241165268();
  v9 = sub_241166048();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_241156B38(0xD00000000000002DLL, 0x800000024116B3B0, &v19);
    _os_log_impl(&dword_2410F8000, v8, v9, "%s Client is missing required entitlement com.apple.asktod", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x245CDC5E0](v11, -1, -1);
    MEMORY[0x245CDC5E0](v10, -1, -1);
  }

  sub_241132370();
  swift_allocError();
  *v12 = 0;
  swift_willThrow();

  v13 = *(v0 + 8);

  return v13(0);
}

uint64_t sub_241122068(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 248) = v1;

  if (v1)
  {
    v5 = sub_2411223E4;
  }

  else
  {
    *(v4 + 256) = a1;
    v5 = sub_241122190;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_241122190()
{
  v1 = v0[32];
  sub_241132558((v0 + 2));
  v0[33] = *(v1 + 80);

  v2 = swift_task_alloc();
  v0[34] = v2;
  *v2 = v0;
  v2[1] = sub_24112223C;

  return sub_2411583BC();
}

uint64_t sub_24112223C(char a1)
{
  *(*v1 + 73) = a1;

  return MEMORY[0x2822009F8](sub_24112233C, 0, 0);
}

uint64_t sub_24112233C()
{
  v1 = *(v0 + 73);

  if (v1 == 1)
  {
    v2 = *(*(v0 + 264) + 16);

    v3 = v2 != 0;
  }

  else
  {

    v3 = 0;
  }

  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_2411223E4()
{
  sub_241132558(v0 + 16);

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_2411225E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a8;
  v8[3] = v15;
  v12 = swift_task_alloc();
  v8[4] = v12;
  *v12 = v8;
  v12[1] = sub_2411188CC;

  return sub_2411226A4(a5, a6, a7);
}

uint64_t sub_2411226A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[14] = a3;
  v4[15] = v3;
  v4[12] = a1;
  v4[13] = a2;
  v5 = sub_241165728();
  v4[16] = v5;
  v4[17] = *(v5 - 8);
  v4[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_241122768, 0, 0);
}

uint64_t sub_241122768()
{
  v17 = v0;
  v1 = *(v0[15] + 24);
  v0[19] = v1;
  if (v1)
  {
    v3 = v0[17];
    v2 = v0[18];
    v4 = v0[16];
    (*(v3 + 104))(v2, *MEMORY[0x277CEEB30], v4);

    v5 = sub_241165B78();
    (*(v3 + 8))(v2, v4);
    if (v5)
    {
      v6 = sub_2411656C8();
      v0[20] = v6;
      v7 = swift_task_alloc();
      v0[21] = v7;
      *v7 = v0;
      v7[1] = sub_241122A14;

      return sub_24112EBC8(v6);
    }
  }

  if (qword_27E530580 != -1)
  {
    swift_once();
  }

  v9 = sub_241165288();
  __swift_project_value_buffer(v9, qword_27E5339F0);
  v10 = sub_241165268();
  v11 = sub_241166048();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v16 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_241156B38(0xD000000000000038, 0x800000024116B350, &v16);
    _os_log_impl(&dword_2410F8000, v10, v11, "%s Client is missing required entitlement com.apple.asktod", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x245CDC5E0](v13, -1, -1);
    MEMORY[0x245CDC5E0](v12, -1, -1);
  }

  sub_241132370();
  swift_allocError();
  *v14 = 0;
  swift_willThrow();

  v15 = v0[1];

  return v15();
}

uint64_t sub_241122A14()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v3 = sub_241122ED4;
  }

  else
  {

    v3 = sub_241122B30;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_241122B30()
{
  sub_241135730(v0[15] + 160, (v0 + 2));
  v1 = v0[5];
  v2 = __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v1);
  v3 = *(v1 - 8);
  v4 = swift_task_alloc();
  (*(v3 + 16))(v4, v2, v1);
  v5 = *v4;
  v6 = type metadata accessor for PendingAskStore();
  v0[10] = v6;
  v0[11] = &off_2852EBB00;
  v0[7] = v5;
  type metadata accessor for ResponseHandler();
  v7 = swift_allocObject();
  v8 = __swift_mutable_project_boxed_opaque_existential_1((v0 + 7), v6);
  v9 = *(v6 - 8);
  v10 = swift_task_alloc();
  (*(v9 + 16))(v10, v8, v6);
  v0[23] = sub_2411312A0(*v10, v7);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v11 = swift_task_alloc();
  v0[24] = v11;
  *v11 = v0;
  v11[1] = sub_241122D60;
  v12 = v0[13];
  v13 = v0[14];
  v14 = v0[12];

  return sub_24113CC4C(v14, v12, v13);
}

uint64_t sub_241122D60()
{

  return MEMORY[0x2822009F8](sub_241122E5C, 0, 0);
}

uint64_t sub_241122E5C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_241122ED4()
{
  v29 = v0;

  if (qword_27E530580 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 176);
  v2 = sub_241165288();
  __swift_project_value_buffer(v2, qword_27E5339F0);
  v3 = v1;
  v4 = sub_241165268();
  v5 = sub_241166048();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 176);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v28 = v10;
    *v8 = 136315394;
    *(v8 + 4) = sub_241156B38(0xD000000000000038, 0x800000024116B350, &v28);
    *(v8 + 12) = 2112;
    v11 = v7;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v12;
    *v9 = v12;
    _os_log_impl(&dword_2410F8000, v4, v5, "%s Error marking question as sent: %@", v8, 0x16u);
    sub_2410FB29C(v9, &qword_27E530E30, &qword_2411676F0);
    MEMORY[0x245CDC5E0](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x245CDC5E0](v10, -1, -1);
    MEMORY[0x245CDC5E0](v8, -1, -1);
  }

  else
  {
  }

  sub_241135730(*(v0 + 120) + 160, v0 + 16);
  v13 = *(v0 + 40);
  v14 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 16, v13);
  v15 = *(v13 - 8);
  v16 = swift_task_alloc();
  (*(v15 + 16))(v16, v14, v13);
  v17 = *v16;
  v18 = type metadata accessor for PendingAskStore();
  *(v0 + 80) = v18;
  *(v0 + 88) = &off_2852EBB00;
  *(v0 + 56) = v17;
  type metadata accessor for ResponseHandler();
  v19 = swift_allocObject();
  v20 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 56, v18);
  v21 = *(v18 - 8);
  v22 = swift_task_alloc();
  (*(v21 + 16))(v22, v20, v18);
  *(v0 + 184) = sub_2411312A0(*v22, v19);
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v23 = swift_task_alloc();
  *(v0 + 192) = v23;
  *v23 = v0;
  v23[1] = sub_241122D60;
  v24 = *(v0 + 104);
  v25 = *(v0 + 112);
  v26 = *(v0 + 96);

  return sub_24113CC4C(v26, v24, v25);
}

uint64_t sub_24112341C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 24) = a6;
  *(v7 + 32) = a7;
  *(v7 + 64) = a5;
  *(v7 + 16) = a4;
  return MEMORY[0x2822009F8](sub_241123444, 0, 0);
}

uint64_t sub_241123444()
{
  Strong = swift_weakLoadStrong();
  *(v0 + 40) = Strong;
  if (Strong)
  {
    v2 = Strong;
    v3 = *(v0 + 64);
    v4 = swift_task_alloc();
    *(v0 + 48) = v4;
    *(v4 + 16) = v2;
    *(v4 + 24) = v3;
    v5 = swift_task_alloc();
    *(v0 + 56) = v5;
    *v5 = v0;
    v5[1] = sub_24112358C;

    return MEMORY[0x282200600]();
  }

  else
  {
    (*(v0 + 24))();
    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_24112358C()
{

  return MEMORY[0x2822009F8](sub_2411236A4, 0, 0);
}

uint64_t sub_2411236A4()
{

  (*(v0 + 24))(0);
  v1 = *(v0 + 8);

  return v1();
}

void sub_241123870(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_241165048();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

uint64_t sub_2411238D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[51] = a3;
  v4[52] = v3;
  v4[49] = a1;
  v4[50] = a2;
  v5 = sub_241165C38();
  v4[53] = v5;
  v4[54] = *(v5 - 8);
  v4[55] = swift_task_alloc();
  v6 = sub_241165BD8();
  v4[56] = v6;
  v4[57] = *(v6 - 8);
  v4[58] = swift_task_alloc();
  v4[59] = swift_task_alloc();
  v4[60] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530658, &unk_241167410);
  v4[61] = swift_task_alloc();
  v4[62] = swift_task_alloc();
  v4[63] = swift_task_alloc();
  v4[64] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_241123A68, 0, 0);
}

uint64_t sub_241123A68()
{
  v33 = v0;
  if (*(v0[52] + 24))
  {

    sub_241165C08();

    if (v0[25])
    {
      __swift_project_boxed_opaque_existential_1(v0 + 22, v0[25]);
      sub_241165948();
      __swift_destroy_boxed_opaque_existential_1(v0 + 22);
      goto LABEL_6;
    }

    sub_2410FB29C((v0 + 22), &qword_27E530CF8, &qword_2411684A0);
  }

  (*(v0[57] + 56))(v0[64], 1, 1, v0[56]);
LABEL_6:
  v2 = v0[63];
  v1 = v0[64];
  v3 = v0[56];
  v4 = v0[57];
  v0[47] = 0;
  sub_2410FC88C(v1, v2, &qword_27E530658, &unk_241167410);
  v5 = *(v4 + 48);
  v0[65] = v5;
  v0[66] = (v4 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v5(v2, 1, v3) == 1)
  {
    v6 = v0[62];
    v7 = v0[56];
    v8 = v0[57];
    sub_2410FB29C(v0[63], &qword_27E530658, &unk_241167410);
    (*(v8 + 56))(v6, 1, 1, v7);
    v9 = type metadata accessor for AppExtensionProxy(0);
    v10 = swift_allocObject();
    v11 = OBJC_IVAR____TtC11AskToDaemon17AppExtensionProxy_connectionCache;
    *(v10 + v11) = sub_2410FB218(MEMORY[0x277D84F90]);
    *(v10 + 16) = 1;
    sub_241135680(v6, v10 + OBJC_IVAR____TtC11AskToDaemon17AppExtensionProxy_client, &qword_27E530658, &unk_241167410);
    v0[30] = v9;
    v0[31] = sub_2411356E8(&qword_27E530660, type metadata accessor for AppExtensionProxy, &unk_2411697A0);
    v0[27] = v10;
  }

  else
  {
    v13 = v0[59];
    v12 = v0[60];
    v14 = v0[56];
    v15 = v0[57];
    (*(v15 + 32))(v12, v0[63], v14);
    (*(v15 + 16))(v13, v12, v14);
    v16 = sub_241165CC8();
    v17 = sub_2411653A8();

    v18 = sub_241154E14(v13);
    v0[30] = type metadata accessor for AppExtensionProxy(0);
    v0[31] = sub_2411356E8(&qword_27E530660, type metadata accessor for AppExtensionProxy, &unk_2411697A0);
    v0[27] = v18;
    (*(v15 + 8))(v12, v14);
  }

  if (qword_27E530580 != -1)
  {
    swift_once();
  }

  v19 = sub_241165288();
  v0[67] = __swift_project_value_buffer(v19, qword_27E5339F0);
  sub_241135730((v0 + 27), (v0 + 32));
  v20 = sub_241165268();
  v21 = sub_241166068();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v32 = v23;
    *v22 = 136315138;
    __swift_project_boxed_opaque_existential_1(v0 + 32, v0[35]);
    v24 = sub_2411663B8();
    v26 = v25;
    __swift_destroy_boxed_opaque_existential_1(v0 + 32);
    v27 = sub_241156B38(v24, v26, &v32);

    *(v22 + 4) = v27;
    _os_log_impl(&dword_2410F8000, v20, v21, "Calling into app extension to get Messages data payload. messagesPayloadProvider: %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v23);
    MEMORY[0x245CDC5E0](v23, -1, -1);
    MEMORY[0x245CDC5E0](v22, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(v0 + 32);
  }

  __swift_project_boxed_opaque_existential_1(v0 + 27, v0[30]);
  v28 = swift_task_alloc();
  v0[68] = v28;
  *v28 = v0;
  v28[1] = sub_241123F30;
  v29 = v0[51];
  v30 = v0[49];

  return sub_241150BD0((v0 + 2), v30, v29);
}

uint64_t sub_241123F30()
{
  *(*v1 + 552) = v0;

  if (v0)
  {
    v2 = sub_2411244C0;
  }

  else
  {
    v2 = sub_241124044;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_241124044(uint64_t a1)
{
  v40 = v1;
  if (*(v1[52] + 24))
  {

    sub_241165C08();

    if (v1[40])
    {
      __swift_project_boxed_opaque_existential_1(v1 + 37, v1[40]);
      v2 = sub_241165978();
      v4 = v3;
      __swift_destroy_boxed_opaque_existential_1(v1 + 37);
      goto LABEL_6;
    }

    sub_2410FB29C((v1 + 37), &qword_27E530CF8, &qword_2411684A0);
  }

  v2 = 0;
  v4 = 0;
LABEL_6:
  v6 = v1[54];
  v5 = v1[55];
  v7 = v1[53];
  v8 = sub_241165CC8();
  v9 = sub_2411653A8();

  (*(v6 + 104))(v5, *MEMORY[0x277CEEE18], v7);
  MEMORY[0x245CDB590](v2, v4, v9, v5);

  (*(v6 + 8))(v5, v7);
  sub_241102C64((v1 + 2), (v1 + 12));

  v10 = sub_241165268();
  v11 = sub_241166068();
  sub_241102CC0((v1 + 2));

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v39 = v13;
    *v12 = 136315394;
    v14 = v1[4];
    v15 = v1[5];

    v16 = sub_241156B38(v14, v15, &v39);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2080;
    sub_241165A78();
    v17 = sub_241165468();
    v19 = sub_241156B38(v17, v18, &v39);

    *(v12 + 14) = v19;
    _os_log_impl(&dword_2410F8000, v10, v11, "Sending message with Messages extension bundle identifier %s to %s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245CDC5E0](v13, -1, -1);
    MEMORY[0x245CDC5E0](v12, -1, -1);
  }

  v20 = v1[65];
  v21 = v1[61];
  v22 = v1[56];
  sub_2410FC88C(v1[64], v21, &qword_27E530658, &unk_241167410);
  if (v20(v21, 1, v22) == 1)
  {
    sub_2410FB29C(v1[61], &qword_27E530658, &unk_241167410);
  }

  else
  {
    v24 = v1[57];
    v23 = v1[58];
    v25 = v1[56];
    v26 = v1[52];
    (*(v24 + 32))(v23, v1[61], v25);
    LOBYTE(v26) = sub_241125140(v23, *(v26 + 16));
    (*(v24 + 8))(v23, v25);
    if (v26)
    {
      v27 = v1[52];
      sub_241135730(v27 + 40, (v1 + 42));
      __swift_project_boxed_opaque_existential_1(v1 + 42, v1[45]);
      v28 = *(v27 + 24);
      v1[70] = v28;
      if (v28)
      {
        v29 = MEMORY[0x277CEEDD8];
      }

      else
      {
        v29 = 0;
      }

      v30 = swift_task_alloc();
      v1[71] = v30;
      *v30 = v1;
      v30[1] = sub_241124770;
      v31 = v1[50];
      v32 = (v1 + 2);
      v33 = (v1 + 47);
      v34 = v28;
      v35 = v29;
      v36 = 1;
      goto LABEL_16;
    }
  }

  __swift_project_boxed_opaque_existential_1((v1[52] + 40), *(v1[52] + 64));
  v1[48] = 0;
  v37 = swift_task_alloc();
  v1[73] = v37;
  *v37 = v1;
  v37[1] = sub_241124C5C;
  v31 = v1[50];
  v32 = (v1 + 2);
  v33 = (v1 + 48);
  v34 = 0;
  v35 = 0;
  v36 = 0;
LABEL_16:

  return sub_241101088(v32, v34, v35, v31, v36, v33);
}

uint64_t sub_2411244C0()
{
  v26 = v0;
  __swift_destroy_boxed_opaque_existential_1(v0 + 27);
  v1 = v0[69];
  v2 = v0[49];

  v3 = v2;
  v4 = v1;
  v5 = v3;
  v6 = v1;
  v7 = sub_241165268();
  v8 = sub_241166048();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v25[0] = v11;
    *v9 = 136315650;
    v12 = sub_241165CC8();
    v13 = sub_2411652B8();
    v15 = v14;

    v16 = sub_241156B38(v13, v15, v25);

    *(v9 + 4) = v16;
    *(v9 + 12) = 2080;
    sub_241165A78();
    v17 = sub_241165468();
    v19 = sub_241156B38(v17, v18, v25);

    *(v9 + 14) = v19;
    *(v9 + 22) = 2112;
    v20 = v4;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 24) = v21;
    *v10 = v21;
    _os_log_impl(&dword_2410F8000, v7, v8, "Failed to send payload over Messages. question: %s recipientGroup: %s error: %@", v9, 0x20u);
    sub_2410FB29C(v10, &qword_27E530E30, &qword_2411676F0);
    MEMORY[0x245CDC5E0](v10, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x245CDC5E0](v11, -1, -1);
    MEMORY[0x245CDC5E0](v9, -1, -1);
  }

  v22 = v0[64];
  swift_willThrow();
  sub_2410FB29C(v22, &qword_27E530658, &unk_241167410);

  v23 = v0[1];

  return v23();
}

uint64_t sub_241124770()
{
  *(*v1 + 576) = v0;

  if (v0)
  {

    v2 = sub_241124994;
  }

  else
  {

    v2 = sub_241124894;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_241124894()
{
  v1 = v0[64];
  sub_241102CC0((v0 + 2));
  sub_2410FB29C(v1, &qword_27E530658, &unk_241167410);
  __swift_destroy_boxed_opaque_existential_1(v0 + 27);
  __swift_destroy_boxed_opaque_existential_1(v0 + 42);
  v2 = v0[47];

  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_241124994()
{
  v26 = v0;

  sub_241102CC0((v0 + 2));
  __swift_destroy_boxed_opaque_existential_1(v0 + 27);
  __swift_destroy_boxed_opaque_existential_1(v0 + 42);
  v1 = v0[72];
  v2 = v0[49];

  v3 = v2;
  v4 = v1;
  v5 = v3;
  v6 = v1;
  v7 = sub_241165268();
  v8 = sub_241166048();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v25[0] = v11;
    *v9 = 136315650;
    v12 = sub_241165CC8();
    v13 = sub_2411652B8();
    v15 = v14;

    v16 = sub_241156B38(v13, v15, v25);

    *(v9 + 4) = v16;
    *(v9 + 12) = 2080;
    sub_241165A78();
    v17 = sub_241165468();
    v19 = sub_241156B38(v17, v18, v25);

    *(v9 + 14) = v19;
    *(v9 + 22) = 2112;
    v20 = v4;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 24) = v21;
    *v10 = v21;
    _os_log_impl(&dword_2410F8000, v7, v8, "Failed to send payload over Messages. question: %s recipientGroup: %s error: %@", v9, 0x20u);
    sub_2410FB29C(v10, &qword_27E530E30, &qword_2411676F0);
    MEMORY[0x245CDC5E0](v10, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x245CDC5E0](v11, -1, -1);
    MEMORY[0x245CDC5E0](v9, -1, -1);
  }

  v22 = v0[64];
  swift_willThrow();
  sub_2410FB29C(v22, &qword_27E530658, &unk_241167410);

  v23 = v0[1];

  return v23();
}

uint64_t sub_241124C5C()
{
  *(*v1 + 592) = v0;

  if (v0)
  {
    v2 = sub_241124E88;
  }

  else
  {
    v2 = sub_241124D90;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_241124D90()
{
  v1 = v0[64];
  sub_241102CC0((v0 + 2));
  sub_2410FB29C(v1, &qword_27E530658, &unk_241167410);
  __swift_destroy_boxed_opaque_existential_1(v0 + 27);
  v2 = v0[47];

  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_241124E88()
{
  v26 = v0;
  sub_241102CC0((v0 + 2));
  __swift_destroy_boxed_opaque_existential_1(v0 + 27);
  v1 = v0[74];
  v2 = v0[49];

  v3 = v2;
  v4 = v1;
  v5 = v3;
  v6 = v1;
  v7 = sub_241165268();
  v8 = sub_241166048();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v25[0] = v11;
    *v9 = 136315650;
    v12 = sub_241165CC8();
    v13 = sub_2411652B8();
    v15 = v14;

    v16 = sub_241156B38(v13, v15, v25);

    *(v9 + 4) = v16;
    *(v9 + 12) = 2080;
    sub_241165A78();
    v17 = sub_241165468();
    v19 = sub_241156B38(v17, v18, v25);

    *(v9 + 14) = v19;
    *(v9 + 22) = 2112;
    v20 = v4;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 24) = v21;
    *v10 = v21;
    _os_log_impl(&dword_2410F8000, v7, v8, "Failed to send payload over Messages. question: %s recipientGroup: %s error: %@", v9, 0x20u);
    sub_2410FB29C(v10, &qword_27E530E30, &qword_2411676F0);
    MEMORY[0x245CDC5E0](v10, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x245CDC5E0](v11, -1, -1);
    MEMORY[0x245CDC5E0](v9, -1, -1);
  }

  v22 = v0[64];
  swift_willThrow();
  sub_2410FB29C(v22, &qword_27E530658, &unk_241167410);

  v23 = v0[1];

  return v23();
}

uint64_t sub_241125140(uint64_t a1, uint64_t a2)
{
  v3 = sub_241165BD8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_2411356E8(&qword_27E530680, MEMORY[0x277CEEDA8], MEMORY[0x277CEEDB0]), v7 = sub_241165D88(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_2411356E8(&qword_27E530670, MEMORY[0x277CEEDA8], MEMORY[0x277CEEDB8]);
      v15 = sub_241165D98();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_241125358(uint64_t a1, __int16 a2, uint64_t a3, char a4)
{
  *(v5 + 872) = v4;
  *(v5 + 201) = a4;
  *(v5 + 864) = a3;
  *(v5 + 202) = a2;
  *(v5 + 856) = a1;
  v6 = sub_241165C38();
  *(v5 + 880) = v6;
  *(v5 + 888) = *(v6 - 8);
  *(v5 + 896) = swift_task_alloc();
  v7 = sub_241165BD8();
  *(v5 + 904) = v7;
  *(v5 + 912) = *(v7 - 8);
  *(v5 + 920) = swift_task_alloc();
  *(v5 + 928) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530650, &qword_241167408);
  *(v5 + 936) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530658, &unk_241167410);
  *(v5 + 944) = swift_task_alloc();
  *(v5 + 952) = swift_task_alloc();
  *(v5 + 960) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530AB0, &qword_241168080);
  *(v5 + 968) = swift_task_alloc();
  v8 = sub_2411650D8();
  *(v5 + 976) = v8;
  *(v5 + 984) = *(v8 - 8);
  *(v5 + 992) = swift_task_alloc();
  v9 = sub_2411657B8();
  *(v5 + 1000) = v9;
  *(v5 + 1008) = *(v9 - 8);
  *(v5 + 1016) = swift_task_alloc();
  v10 = sub_241165B28();
  *(v5 + 1024) = v10;
  *(v5 + 1032) = *(v10 - 8);
  *(v5 + 1040) = swift_task_alloc();
  v11 = sub_241165788();
  *(v5 + 1048) = v11;
  *(v5 + 1056) = *(v11 - 8);
  *(v5 + 1064) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530CE8, &qword_241168400);
  *(v5 + 1072) = swift_task_alloc();
  *(v5 + 1080) = swift_task_alloc();
  v12 = sub_241165728();
  *(v5 + 1088) = v12;
  *(v5 + 1096) = *(v12 - 8);
  *(v5 + 1104) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_241125784, 0, 0);
}

uint64_t sub_241125784()
{
  v64 = v0;
  v63 = *MEMORY[0x277D85DE8];
  v1 = *(*(v0 + 872) + 24);
  *(v0 + 1112) = v1;
  if (v1)
  {
    v2 = *(v0 + 1104);
    v3 = *(v0 + 1096);
    v4 = *(v0 + 1088);
    (*(v3 + 104))(v2, *MEMORY[0x277CEEB30], v4);

    v5 = sub_241165B78();
    (*(v3 + 8))(v2, v4);
    if (v5)
    {
      if (qword_27E530580 != -1)
      {
        swift_once();
      }

      v6 = *(v0 + 864);
      v7 = sub_241165288();
      *(v0 + 1120) = v7;
      *(v0 + 1128) = __swift_project_value_buffer(v7, qword_27E5339F0);
      sub_2410FC88C(v6, v0 + 320, &qword_27E530CF8, &qword_2411684A0);
      v8 = sub_241165268();
      v9 = sub_241166068();
      if (!os_log_type_enabled(v8, v9))
      {

        sub_2410FB29C(v0 + 320, &qword_27E530CF8, &qword_2411684A0);
        goto LABEL_21;
      }

      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *&v62 = v11;
      *v10 = 136315394;
      *(v10 + 4) = sub_241156B38(0xD00000000000005DLL, 0x800000024116B590, &v62);
      *(v10 + 12) = 2080;
      sub_2410FC88C(v0 + 320, v0 + 800, &qword_27E530CF8, &qword_2411684A0);
      if (*(v0 + 824))
      {
        __swift_project_boxed_opaque_existential_1((v0 + 800), *(v0 + 824));
        v12 = sub_241165978();
        v14 = v13;
        __swift_destroy_boxed_opaque_existential_1((v0 + 800));
        if (v14)
        {
          sub_2410FB29C(v0 + 320, &qword_27E530CF8, &qword_2411684A0);
          v15 = v12;
LABEL_20:
          v24 = sub_241156B38(v15, v14, &v62);

          *(v10 + 14) = v24;
          _os_log_impl(&dword_2410F8000, v8, v9, "%s called by client with bundle ID %s", v10, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x245CDC5E0](v11, -1, -1);
          MEMORY[0x245CDC5E0](v10, -1, -1);

LABEL_21:
          v25 = *(v0 + 1080);
          sub_241165298();
          v26 = sub_2411652E8();
          *(v0 + 1136) = v26;
          v27 = *(v26 - 8);
          *(v0 + 1144) = v27;
          v28 = *(v27 + 48);
          *(v0 + 1152) = v28;
          *(v0 + 1160) = (v27 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
          v29 = v28(v25, 1, v26);
          v30 = *(v0 + 1080);
          if (v29 == 1)
          {
            sub_2410FB29C(v30, &qword_27E530CE8, &qword_241168400);
          }

          else
          {
            v31 = (*(v27 + 88))(v30, v26);
            v32 = *(v0 + 1080);
            if (v31 == *MEMORY[0x277CEEAD8])
            {
              (*(v27 + 96))(*(v0 + 1080), v26);
              v33 = *v32;
              sub_241165AE8();

LABEL_29:
              v34 = *(v0 + 864);
              sub_241165778();
              sub_2410FC88C(v34, v0 + 400, &qword_27E530CF8, &qword_2411684A0);
              if (*(v0 + 424))
              {
                __swift_project_boxed_opaque_existential_1((v0 + 400), *(v0 + 424));
                sub_241165968();
                __swift_destroy_boxed_opaque_existential_1((v0 + 400));
              }

              else
              {
                sub_2410FB29C(v0 + 400, &qword_27E530CF8, &qword_2411684A0);
              }

              sub_241165768();

              if (sub_241165B18())
              {
                if (qword_27E530590 != -1)
                {
                  swift_once();
                }

                __swift_project_value_buffer(v7, qword_27E533A20);
                v35 = sub_241165268();
                v36 = sub_241166068();
                if (os_log_type_enabled(v35, v36))
                {
                  v37 = swift_slowAlloc();
                  *v37 = 0;
                  _os_log_impl(&dword_2410F8000, v35, v36, "Tried to generate clientIconData but the icon data was nil", v37, 2u);
                  MEMORY[0x245CDC5E0](v37, -1, -1);
                }
              }

              else
              {
                v38 = *(v0 + 1016);
                v39 = *(v0 + 1008);
                v40 = *(v0 + 1000);
                v41 = sub_241165B08();
                sub_2411657A8();
                v42 = sub_241165708();
                v43 = MEMORY[0x277CEEB28];
                *(v0 + 464) = v42;
                *(v0 + 472) = v43;
                __swift_allocate_boxed_opaque_existential_1((v0 + 440));
                sub_2411656F8();
                v44 = sub_241165798();
                v46 = v45;

                (*(v39 + 8))(v38, v40);
                __swift_destroy_boxed_opaque_existential_1((v0 + 440));
                if (v46 >> 60 != 15)
                {
                  sub_241134D44(v44, v46);
                  v47 = sub_2411650F8();
                  sub_241109164(v44, v46);
                  *(v0 + 848) = 0;
                  v48 = [v47 compressedDataUsingAlgorithm:3 error:v0 + 848];

                  v49 = *(v0 + 848);
                  if (v48)
                  {
                    v62 = xmmword_241168290;
                    v50 = v49;
                    sub_241165108();
                    sub_241109164(v44, v46);

                    v51 = *(&v62 + 1);
                    if (*(&v62 + 1) >> 60 != 15)
                    {
                      v52 = v62;
                      goto LABEL_44;
                    }
                  }

                  else
                  {
                    v53 = v49;
                    v54 = sub_241165058();

                    swift_willThrow();
                    sub_241109164(v44, v46);
                  }
                }
              }

              v52 = 0;
              v51 = 0xF000000000000000;
LABEL_44:
              *(v0 + 1176) = v51;
              *(v0 + 1168) = v52;
              sub_24112AFBC(*(v0 + 856), v0 + 480);
              v55 = *(v0 + 504);
              if (v55)
              {
                v56 = *__swift_project_boxed_opaque_existential_1((v0 + 480), v55);
                v57 = swift_task_alloc();
                *(v0 + 1184) = v57;
                *v57 = v0;
                v57[1] = sub_241126358;
                v58 = *(v0 + 856);

                return sub_24115F304(v58, v56);
              }

              else
              {
                sub_2410FB29C(v0 + 480, &qword_27E530CE0, &qword_2411683F8);
                v59 = [objc_opt_self() defaultStore];
                *(v0 + 1192) = v59;
                if (v59)
                {
                  v60 = v59;
                  *(v0 + 16) = v0;
                  *(v0 + 56) = v0 + 840;
                  *(v0 + 24) = sub_241126600;
                  v61 = swift_continuation_init();
                  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530D18, &qword_241168520);
                  *(v0 + 80) = MEMORY[0x277D85DD0];
                  *(v0 + 88) = 1107296256;
                  *(v0 + 96) = sub_24112B3BC;
                  *(v0 + 104) = &block_descriptor_133;
                  *(v0 + 112) = v61;
                  [v60 aa:v0 + 80 primaryAppleAccountWithCompletion:?];
                  v59 = (v0 + 16);
                }

                else
                {
                  __break(1u);
                }

                return MEMORY[0x282200938](v59);
              }
            }

            (*(v27 + 8))(*(v0 + 1080), v26);
          }

          sub_2410FC88C(*(v0 + 864), v0 + 360, &qword_27E530CF8, &qword_2411684A0);
          if (*(v0 + 384))
          {
            __swift_project_boxed_opaque_existential_1((v0 + 360), *(v0 + 384));
            sub_241165978();
            __swift_destroy_boxed_opaque_existential_1((v0 + 360));
          }

          else
          {
            sub_2410FB29C(v0 + 360, &qword_27E530CF8, &qword_2411684A0);
          }

          goto LABEL_29;
        }
      }

      else
      {
        sub_2410FB29C(v0 + 800, &qword_27E530CF8, &qword_2411684A0);
      }

      sub_2410FB29C(v0 + 320, &qword_27E530CF8, &qword_2411684A0);

      v14 = 0xE300000000000000;
      v15 = 7104878;
      goto LABEL_20;
    }
  }

  if (qword_27E530580 != -1)
  {
    swift_once();
  }

  v16 = sub_241165288();
  __swift_project_value_buffer(v16, qword_27E5339F0);
  v17 = sub_241165268();
  v18 = sub_241166048();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *&v62 = v20;
    *v19 = 136315138;
    *(v19 + 4) = sub_241156B38(0xD00000000000005DLL, 0x800000024116B590, &v62);
    _os_log_impl(&dword_2410F8000, v17, v18, "%s Client is missing required entitlement com.apple.asktod", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v20);
    MEMORY[0x245CDC5E0](v20, -1, -1);
    MEMORY[0x245CDC5E0](v19, -1, -1);
  }

  sub_241132370();
  swift_allocError();
  *v21 = 0;
  swift_willThrow();

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_241126358()
{

  return MEMORY[0x2822009F8](sub_241126480, 0, 0);
}

uint64_t sub_241126480()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 60);
  v1 = [objc_opt_self() defaultStore];
  v0[149] = v1;
  if (!v1)
  {
    __break(1u);
  }

  v2 = v1;
  v0[2] = v0;
  v0[7] = v0 + 105;
  v0[3] = sub_241126600;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530D18, &qword_241168520);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_24112B3BC;
  v0[13] = &block_descriptor_133;
  v0[14] = v3;
  [v2 aa:v0 + 10 primaryAppleAccountWithCompletion:?];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_241126600()
{
  v1 = *(*v0 + 48);
  *(*v0 + 1200) = v1;
  if (v1)
  {
    v2 = sub_2411296BC;
  }

  else
  {
    v2 = sub_24112673C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24112673C()
{
  v72 = v0;
  v71[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 840);

  if (v1)
  {
    v2 = [v1 normalizedDSID];
    if (v2)
    {
      v3 = v2;
      v4 = sub_241165DD8();
      v6 = v5;

      v2 = sub_2411169D8(v4, v6);
      goto LABEL_6;
    }
  }

  else
  {
    v2 = 0;
  }

  v7 = 1;
LABEL_6:
  *(v0 + 1216) = v1;
  *(v0 + 204) = v7 & 1;
  *(v0 + 1208) = v2;
  v8 = *(v0 + 1152);
  v9 = *(v0 + 1136);
  v10 = *(v0 + 1072);
  sub_241165298();
  if (v8(v10, 1, v9) == 1)
  {
    sub_2410FB29C(*(v0 + 1072), &qword_27E530CE8, &qword_241168400);
    goto LABEL_12;
  }

  v11 = (*(*(v0 + 1144) + 88))(*(v0 + 1072), *(v0 + 1136));
  v12 = *(v0 + 1144);
  v13 = *(v0 + 1136);
  v14 = *(v0 + 1072);
  if (v11 != *MEMORY[0x277CEEAD8])
  {
    (*(v12 + 8))(*(v0 + 1072), v13);
LABEL_12:
    *(v0 + 1280) = 0xF000000000000000;
    *(v0 + 1272) = 0;
    sub_2410FC88C(*(v0 + 864), v0 + 520, &qword_27E530CF8, &qword_2411684A0);
    if (*(v0 + 544))
    {
      __swift_project_boxed_opaque_existential_1((v0 + 520), *(v0 + 544));
      sub_241165978();
      __swift_destroy_boxed_opaque_existential_1((v0 + 520));
    }

    else
    {
      sub_2410FB29C(v0 + 520, &qword_27E530CF8, &qword_2411684A0);
    }

    sub_2410FC88C(*(v0 + 864), v0 + 560, &qword_27E530CF8, &qword_2411684A0);
    if (*(v0 + 584))
    {
      __swift_project_boxed_opaque_existential_1((v0 + 560), *(v0 + 584));
      sub_241165968();
      __swift_destroy_boxed_opaque_existential_1((v0 + 560));
    }

    else
    {
      sub_2410FB29C(v0 + 560, &qword_27E530CF8, &qword_2411684A0);
    }

    sub_2410FC88C(*(v0 + 864), v0 + 600, &qword_27E530CF8, &qword_2411684A0);
    if (*(v0 + 624))
    {
      __swift_project_boxed_opaque_existential_1((v0 + 600), *(v0 + 624));
      sub_241165958();
      __swift_destroy_boxed_opaque_existential_1((v0 + 600));
    }

    else
    {
      sub_2410FB29C(v0 + 600, &qword_27E530CF8, &qword_2411684A0);
    }

    v20 = *(v0 + 1176);
    v21 = *(v0 + 1168);
    v22 = *(v0 + 856);
    sub_241165CE8();
    sub_2411351C8(v21, v20);
    sub_2411351C8(0, 0xF000000000000000);
    sub_241165488();
    v22;
    *(v0 + 1288) = sub_241165C58();
    v23 = sub_241165268();
    v24 = sub_241166068();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v71[0] = v26;
      *v25 = 136315138;
      v27 = sub_241165468();
      v29 = sub_241156B38(v27, v28, v71);

      *(v25 + 4) = v29;
      _os_log_impl(&dword_2410F8000, v23, v24, "Attempting to inflate recipient group %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x245CDC5E0](v26, -1, -1);
      MEMORY[0x245CDC5E0](v25, -1, -1);
    }

    sub_2410FC88C(*(v0 + 864), v0 + 640, &qword_27E530CF8, &qword_2411684A0);
    v30 = *(v0 + 960);
    if (*(v0 + 664))
    {
      __swift_project_boxed_opaque_existential_1((v0 + 640), *(v0 + 664));
      sub_241165948();
      __swift_destroy_boxed_opaque_existential_1((v0 + 640));
    }

    else
    {
      v31 = *(v0 + 912);
      v32 = *(v0 + 904);
      sub_2410FB29C(v0 + 640, &qword_27E530CF8, &qword_2411684A0);
      (*(v31 + 56))(v30, 1, 1, v32);
    }

    v33 = *(v0 + 960);
    v34 = *(v0 + 952);
    v35 = *(v0 + 936);
    v36 = *(v0 + 928);
    v37 = *(v0 + 912);
    v38 = *(v0 + 904);
    (*(v37 + 104))(v34, *MEMORY[0x277CEED80], v38);
    (*(v37 + 56))(v34, 0, 1, v38);
    v39 = *(v36 + 48);
    sub_2410FC88C(v33, v35, &qword_27E530658, &unk_241167410);
    sub_2410FC88C(v34, v35 + v39, &qword_27E530658, &unk_241167410);
    v40 = *(v37 + 48);
    if (v40(v35, 1, v38) == 1)
    {
      v41 = *(v0 + 904);
      sub_2410FB29C(*(v0 + 952), &qword_27E530658, &unk_241167410);
      if (v40(v35 + v39, 1, v41) == 1)
      {
        sub_2410FB29C(*(v0 + 936), &qword_27E530658, &unk_241167410);
LABEL_34:
        v58 = sub_2411653A8();
        v59 = sub_241165368();
        v61 = v60;

        if (v59 == 0xD00000000000001DLL && 0x800000024116A040 == v61)
        {

LABEL_38:
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530668, &unk_2411677A0);
          v63 = swift_allocObject();
          *(v63 + 16) = xmmword_2411673F0;
          *(v63 + 32) = sub_241165DD8();
          *(v63 + 40) = v64;
          v50 = sub_2410FB2FC(v63);
          swift_setDeallocating();
          sub_2410FB464(v63 + 32);
          swift_deallocClassInstance();
          v51 = 1;
          goto LABEL_39;
        }

        v62 = sub_2411663E8();

        if (v62)
        {
          goto LABEL_38;
        }

LABEL_32:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530668, &unk_2411677A0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_2411673F0;
        *(inited + 32) = sub_241165DD8();
        *(inited + 40) = v49;
        v50 = sub_2410FB2FC(inited);
        swift_setDeallocating();
        sub_2410FB464(inited + 32);
        v51 = 0;
LABEL_39:
        *(v0 + 205) = v51;
        *(v0 + 1296) = v50;
        v65 = *(v0 + 201);
        sub_2410FC88C(*(v0 + 864), v0 + 144, &qword_27E530CF8, &qword_2411684A0);
        *(v0 + 184) = 0;
        *(v0 + 192) = v50;
        *(v0 + 200) = v65;

        sub_2411324FC(v0 + 144, v0 + 208);
        v66 = swift_task_alloc();
        *(v0 + 1304) = v66;
        *v66 = v0;
        v66[1] = sub_241127C58;
        v67 = *(v0 + 202);

        return sub_24115A1D4(v0 + 208, v67);
      }
    }

    else
    {
      v42 = *(v0 + 904);
      sub_2410FC88C(*(v0 + 936), *(v0 + 944), &qword_27E530658, &unk_241167410);
      v43 = v40(v35 + v39, 1, v42);
      v44 = *(v0 + 952);
      v45 = *(v0 + 944);
      if (v43 != 1)
      {
        v52 = *(v0 + 936);
        v53 = *(v0 + 920);
        v54 = *(v0 + 912);
        v55 = *(v0 + 904);
        (*(v54 + 32))(v53, v35 + v39, v55);
        sub_2411356E8(&qword_27E530670, MEMORY[0x277CEEDA8], MEMORY[0x277CEEDB8]);
        v56 = sub_241165D98();
        v57 = *(v54 + 8);
        v57(v53, v55);
        sub_2410FB29C(v44, &qword_27E530658, &unk_241167410);
        v57(v45, v55);
        sub_2410FB29C(v52, &qword_27E530658, &unk_241167410);
        if ((v56 & 1) == 0)
        {
          goto LABEL_32;
        }

        goto LABEL_34;
      }

      v46 = *(v0 + 912);
      v47 = *(v0 + 904);
      sub_2410FB29C(*(v0 + 952), &qword_27E530658, &unk_241167410);
      (*(v46 + 8))(v45, v47);
    }

    sub_2410FB29C(*(v0 + 936), &qword_27E530650, &qword_241167408);
    goto LABEL_32;
  }

  v15 = *(v0 + 984);
  v16 = *(v0 + 976);
  v17 = *(v0 + 968);
  (*(v12 + 96))(*(v0 + 1072), v13);
  v18 = *v14;
  *(v0 + 1224) = v18;
  sub_241165AF8();
  if ((*(v15 + 48))(v17, 1, v16) == 1)
  {
    v19 = *(v0 + 968);

    sub_2410FB29C(v19, &qword_27E530AB0, &qword_241168080);
    goto LABEL_12;
  }

  (*(*(v0 + 984) + 32))(*(v0 + 992), *(v0 + 968), *(v0 + 976));
  *(v0 + 1232) = [objc_opt_self() sharedSession];
  v69 = swift_task_alloc();
  *(v0 + 1240) = v69;
  *v69 = v0;
  v69[1] = sub_24112722C;
  v70 = *(v0 + 992);

  return MEMORY[0x28211ED00](v70, 0);
}

uint64_t sub_24112722C(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = *v4;
  *(*v4 + 1248) = v3;

  if (v3)
  {
    v9 = sub_24112A174;
  }

  else
  {
    v10 = v8[154];

    v8[157] = a2;
    v8[158] = a1;
    v9 = sub_24112739C;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_24112739C()
{
  v53 = v0;
  v52[1] = *MEMORY[0x277D85DE8];

  v1 = *(v0 + 1264);
  v2 = *(v0 + 1256);
  (*(*(v0 + 984) + 8))(*(v0 + 992), *(v0 + 976));
  *(v0 + 1280) = v2;
  *(v0 + 1272) = v1;
  sub_2410FC88C(*(v0 + 864), v0 + 520, &qword_27E530CF8, &qword_2411684A0);
  if (*(v0 + 544))
  {
    __swift_project_boxed_opaque_existential_1((v0 + 520), *(v0 + 544));
    sub_241165978();
    __swift_destroy_boxed_opaque_existential_1((v0 + 520));
  }

  else
  {
    sub_2410FB29C(v0 + 520, &qword_27E530CF8, &qword_2411684A0);
  }

  sub_2410FC88C(*(v0 + 864), v0 + 560, &qword_27E530CF8, &qword_2411684A0);
  if (*(v0 + 584))
  {
    __swift_project_boxed_opaque_existential_1((v0 + 560), *(v0 + 584));
    sub_241165968();
    __swift_destroy_boxed_opaque_existential_1((v0 + 560));
  }

  else
  {
    sub_2410FB29C(v0 + 560, &qword_27E530CF8, &qword_2411684A0);
  }

  sub_2410FC88C(*(v0 + 864), v0 + 600, &qword_27E530CF8, &qword_2411684A0);
  if (*(v0 + 624))
  {
    __swift_project_boxed_opaque_existential_1((v0 + 600), *(v0 + 624));
    sub_241165958();
    __swift_destroy_boxed_opaque_existential_1((v0 + 600));
  }

  else
  {
    sub_2410FB29C(v0 + 600, &qword_27E530CF8, &qword_2411684A0);
  }

  v3 = *(v0 + 1176);
  v4 = *(v0 + 1168);
  v5 = *(v0 + 856);
  sub_241165CE8();
  sub_2411351C8(v4, v3);
  sub_2411351C8(v1, v2);
  sub_241165488();
  v5;
  *(v0 + 1288) = sub_241165C58();
  v6 = sub_241165268();
  v7 = sub_241166068();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v52[0] = v9;
    *v8 = 136315138;
    v10 = sub_241165468();
    v12 = sub_241156B38(v10, v11, v52);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_2410F8000, v6, v7, "Attempting to inflate recipient group %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x245CDC5E0](v9, -1, -1);
    MEMORY[0x245CDC5E0](v8, -1, -1);
  }

  sub_2410FC88C(*(v0 + 864), v0 + 640, &qword_27E530CF8, &qword_2411684A0);
  v13 = *(v0 + 960);
  if (*(v0 + 664))
  {
    __swift_project_boxed_opaque_existential_1((v0 + 640), *(v0 + 664));
    sub_241165948();
    __swift_destroy_boxed_opaque_existential_1((v0 + 640));
  }

  else
  {
    v14 = *(v0 + 912);
    v15 = *(v0 + 904);
    sub_2410FB29C(v0 + 640, &qword_27E530CF8, &qword_2411684A0);
    (*(v14 + 56))(v13, 1, 1, v15);
  }

  v16 = *(v0 + 960);
  v17 = *(v0 + 952);
  v18 = *(v0 + 936);
  v19 = *(v0 + 928);
  v20 = *(v0 + 912);
  v21 = *(v0 + 904);
  (*(v20 + 104))(v17, *MEMORY[0x277CEED80], v21);
  (*(v20 + 56))(v17, 0, 1, v21);
  v22 = *(v19 + 48);
  sub_2410FC88C(v16, v18, &qword_27E530658, &unk_241167410);
  sub_2410FC88C(v17, v18 + v22, &qword_27E530658, &unk_241167410);
  v23 = *(v20 + 48);
  if (v23(v18, 1, v21) == 1)
  {
    v24 = *(v0 + 904);
    sub_2410FB29C(*(v0 + 952), &qword_27E530658, &unk_241167410);
    if (v23(v18 + v22, 1, v24) == 1)
    {
      sub_2410FB29C(*(v0 + 936), &qword_27E530658, &unk_241167410);
      goto LABEL_23;
    }

LABEL_20:
    sub_2410FB29C(*(v0 + 936), &qword_27E530650, &qword_241167408);
    goto LABEL_21;
  }

  v25 = *(v0 + 904);
  sub_2410FC88C(*(v0 + 936), *(v0 + 944), &qword_27E530658, &unk_241167410);
  v26 = v23(v18 + v22, 1, v25);
  v27 = *(v0 + 952);
  v28 = *(v0 + 944);
  if (v26 == 1)
  {
    v29 = *(v0 + 912);
    v30 = *(v0 + 904);
    sub_2410FB29C(*(v0 + 952), &qword_27E530658, &unk_241167410);
    (*(v29 + 8))(v28, v30);
    goto LABEL_20;
  }

  v35 = *(v0 + 936);
  v36 = *(v0 + 920);
  v37 = *(v0 + 912);
  v38 = *(v0 + 904);
  (*(v37 + 32))(v36, v18 + v22, v38);
  sub_2411356E8(&qword_27E530670, MEMORY[0x277CEEDA8], MEMORY[0x277CEEDB8]);
  v39 = sub_241165D98();
  v40 = *(v37 + 8);
  v40(v36, v38);
  sub_2410FB29C(v27, &qword_27E530658, &unk_241167410);
  v40(v28, v38);
  sub_2410FB29C(v35, &qword_27E530658, &unk_241167410);
  if ((v39 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_23:
  v41 = sub_2411653A8();
  v42 = sub_241165368();
  v44 = v43;

  if (v42 != 0xD00000000000001DLL || 0x800000024116A040 != v44)
  {
    v45 = sub_2411663E8();

    if (v45)
    {
      goto LABEL_27;
    }

LABEL_21:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530668, &unk_2411677A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2411673F0;
    *(inited + 32) = sub_241165DD8();
    *(inited + 40) = v32;
    v33 = sub_2410FB2FC(inited);
    swift_setDeallocating();
    sub_2410FB464(inited + 32);
    v34 = 0;
    goto LABEL_28;
  }

LABEL_27:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530668, &unk_2411677A0);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_2411673F0;
  *(v46 + 32) = sub_241165DD8();
  *(v46 + 40) = v47;
  v33 = sub_2410FB2FC(v46);
  swift_setDeallocating();
  sub_2410FB464(v46 + 32);
  swift_deallocClassInstance();
  v34 = 1;
LABEL_28:
  *(v0 + 205) = v34;
  *(v0 + 1296) = v33;
  v48 = *(v0 + 201);
  sub_2410FC88C(*(v0 + 864), v0 + 144, &qword_27E530CF8, &qword_2411684A0);
  *(v0 + 184) = 0;
  *(v0 + 192) = v33;
  *(v0 + 200) = v48;

  sub_2411324FC(v0 + 144, v0 + 208);
  v49 = swift_task_alloc();
  *(v0 + 1304) = v49;
  *v49 = v0;
  v49[1] = sub_241127C58;
  v50 = *(v0 + 202);

  return sub_24115A1D4(v0 + 208, v50);
}

uint64_t sub_241127C58(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 1312) = a1;
  *(v3 + 1320) = v1;

  if (v1)
  {

    v4 = sub_241128438;
  }

  else
  {
    v4 = sub_241127DAC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_241127DAC(uint64_t a1)
{
  if (*(v1 + 205) == 1)
  {
    sub_2410FC88C(*(v1 + 864), v1 + 760, &qword_27E530CF8, &qword_2411684A0);
    v2 = *(v1 + 784);
    if (v2)
    {
      __swift_project_boxed_opaque_existential_1((v1 + 760), *(v1 + 784));
      v3 = sub_241165978();
      v2 = v4;
      __swift_destroy_boxed_opaque_existential_1((v1 + 760));
    }

    else
    {
      sub_2410FB29C(v1 + 760, &qword_27E530CF8, &qword_2411684A0);
      v3 = 0;
    }

    v5 = *(v1 + 896);
    v6 = *(v1 + 888);
    v7 = *(v1 + 880);
    v8 = sub_2411653A8();
    (*(v6 + 104))(v5, *MEMORY[0x277CEEDF8], v7);
    MEMORY[0x245CDB590](v3, v2, v8, v5);

    (*(v6 + 8))(v5, v7);
  }

  v9 = sub_241165268();
  v10 = sub_241166068();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_2410F8000, v9, v10, "Checking if send destinations are valid for sending", v11, 2u);
    MEMORY[0x245CDC5E0](v11, -1, -1);
  }

  v12 = *(v1 + 201);

  v13 = sub_241165268();
  v14 = sub_241166068();
  v15 = os_log_type_enabled(v13, v14);
  if (v12 == 1)
  {
    if (v15)
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_2410F8000, v13, v14, "Validating send destinations", v16, 2u);
      MEMORY[0x245CDC5E0](v16, -1, -1);
    }

    v17 = swift_task_alloc();
    *(v1 + 1328) = v17;
    *v17 = v1;
    v17[1] = sub_241128640;

    return sub_2411583BC();
  }

  else
  {
    if (v15)
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      MEMORY[0x245CDC5E0](v19, -1, -1);
    }

    v20 = *(v1 + 205);

    if (v20 == 1)
    {
      *(v1 + 1336) = [objc_allocWithZone(MEMORY[0x277D3A080]) init];
      v21 = swift_task_alloc();
      *(v1 + 1344) = v21;
      *v21 = v1;
      v21[1] = sub_241128DE0;

      return MEMORY[0x28219AFD0]();
    }

    else
    {
      v22 = sub_241165268();
      v23 = sub_241166068();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_2410F8000, v22, v23, "Send destinations are valid", v24, 2u);
        MEMORY[0x245CDC5E0](v24, -1, -1);
      }

      v30 = *(v1 + 1272);
      v34 = *(v1 + 1176);
      v35 = *(v1 + 1216);
      v31 = *(v1 + 1168);
      v32 = *(v1 + 1280);
      v25 = *(v1 + 1056);
      v38 = *(v1 + 1048);
      v39 = *(v1 + 1064);
      v26 = *(v1 + 1032);
      v36 = *(v1 + 1024);
      v37 = *(v1 + 1040);
      v33 = *(v1 + 960);

      sub_241165AA8();
      swift_allocObject();

      sub_241165A88();
      v27 = objc_allocWithZone(sub_2411658E8());
      v28 = sub_2411658C8();

      sub_241109164(v30, v32);
      sub_241109164(v31, v34);

      sub_241132558(v1 + 144);
      sub_2410FB29C(v33, &qword_27E530658, &unk_241167410);
      (*(v26 + 8))(v37, v36);
      (*(v25 + 8))(v39, v38);

      v29 = *(v1 + 8);

      return v29(v28);
    }
  }
}

uint64_t sub_241128438()
{
  v1 = v0[161];
  v2 = v0[160];
  v3 = v0[159];
  v4 = v0[152];
  v5 = v0[147];
  v6 = v0[146];
  v7 = v0[132];
  v14 = v0[131];
  v15 = v0[133];
  v8 = v0[129];
  v12 = v0[128];
  v13 = v0[130];
  v9 = v0[120];

  sub_241109164(v3, v2);
  sub_241109164(v6, v5);

  sub_241132558((v0 + 18));
  sub_2410FB29C(v9, &qword_27E530658, &unk_241167410);
  (*(v8 + 8))(v13, v12);
  (*(v7 + 8))(v15, v14);

  v10 = v0[1];

  return v10();
}

uint64_t sub_241128640(char a1)
{
  *(*v1 + 206) = a1;

  return MEMORY[0x2822009F8](sub_24112876C, 0, 0);
}

uint64_t sub_24112876C(uint64_t a1)
{
  v2 = sub_241165268();
  v3 = sub_241166068();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v1 + 206);
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_2410F8000, v2, v3, "Validated send destinations: %{BOOL}d", v5, 8u);
    MEMORY[0x245CDC5E0](v5, -1, -1);
  }

  v6 = *(v1 + 206);

  if (v6 == 1)
  {
    if (*(v1 + 205) == 1)
    {
      *(v1 + 1336) = [objc_allocWithZone(MEMORY[0x277D3A080]) init];
      v7 = swift_task_alloc();
      *(v1 + 1344) = v7;
      *v7 = v1;
      v7[1] = sub_241128DE0;

      return MEMORY[0x28219AFD0]();
    }

    else
    {
      v16 = sub_241165268();
      v17 = sub_241166068();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_2410F8000, v16, v17, "Send destinations are valid", v18, 2u);
        MEMORY[0x245CDC5E0](v18, -1, -1);
      }

      v25 = *(v1 + 1272);
      v29 = *(v1 + 1176);
      v30 = *(v1 + 1216);
      v26 = *(v1 + 1168);
      v27 = *(v1 + 1280);
      v19 = *(v1 + 1056);
      v33 = *(v1 + 1048);
      v34 = *(v1 + 1064);
      v20 = *(v1 + 1032);
      v31 = *(v1 + 1024);
      v32 = *(v1 + 1040);
      v28 = *(v1 + 960);

      sub_241165AA8();
      swift_allocObject();

      sub_241165A88();
      v21 = objc_allocWithZone(sub_2411658E8());
      v22 = sub_2411658C8();

      sub_241109164(v25, v27);
      sub_241109164(v26, v29);

      sub_241132558(v1 + 144);
      sub_2410FB29C(v28, &qword_27E530658, &unk_241167410);
      (*(v20 + 8))(v32, v31);
      (*(v19 + 8))(v34, v33);

      v23 = *(v1 + 8);

      return v23(v22);
    }
  }

  else
  {
    v8 = *(v1 + 1288);
    v9 = *(v1 + 1280);
    v10 = *(v1 + 1272);
    v37 = *(v1 + 1216);
    v35 = *(v1 + 1176);
    v11 = *(v1 + 1168);
    v12 = *(v1 + 1056);
    v40 = *(v1 + 1048);
    v41 = *(v1 + 1064);
    v13 = *(v1 + 1032);
    v38 = *(v1 + 1024);
    v39 = *(v1 + 1040);
    v36 = *(v1 + 960);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530D20, &qword_241168528);
    sub_2411351DC();
    swift_allocError();
    *v14 = 4;
    swift_willThrow();

    sub_241109164(v10, v9);
    sub_241109164(v11, v35);

    sub_241132558(v1 + 144);
    sub_2410FB29C(v36, &qword_27E530658, &unk_241167410);
    (*(v13 + 8))(v39, v38);
    (*(v12 + 8))(v41, v40);

    v15 = *(v1 + 8);

    return v15();
  }
}

uint64_t sub_241128DE0(char a1)
{
  v3 = *v2;
  *(v3 + 207) = a1;
  *(v3 + 1352) = v1;

  if (v1)
  {
    v4 = sub_24112AB68;
  }

  else
  {
    v4 = sub_241128F24;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_241128F24(uint64_t a1)
{
  v2 = sub_241165268();
  v3 = sub_241166068();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v1 + 207);
    v5 = *(v1 + 1336);
    v6 = swift_slowAlloc();
    *v6 = 67109120;
    *(v6 + 4) = v4;
    _os_log_impl(&dword_2410F8000, v2, v3, "People returned %{BOOL}d for PeopleClient.canSendFamilyScreenTimeRequestIMessage()", v6, 8u);
    MEMORY[0x245CDC5E0](v6, -1, -1);
  }

  else
  {
  }

  v55 = *(v1 + 207);
  sub_2410FC88C(*(v1 + 864), v1 + 720, &qword_27E530CF8, &qword_2411684A0);
  v7 = *(v1 + 744);
  if (v7)
  {
    __swift_project_boxed_opaque_existential_1((v1 + 720), *(v1 + 744));
    v8 = sub_241165978();
    v7 = v9;
    __swift_destroy_boxed_opaque_existential_1((v1 + 720));
  }

  else
  {
    sub_2410FB29C(v1 + 720, &qword_27E530CF8, &qword_2411684A0);
    v8 = 0;
  }

  v10 = *(v1 + 896);
  v11 = *(v1 + 888);
  v12 = *(v1 + 880);
  v13 = sub_2411653A8();
  v14 = *(v11 + 104);
  v14(v10, *MEMORY[0x277CEEE00], v12);
  MEMORY[0x245CDB590](v8, v7, v13, v10);

  v15 = *(v11 + 8);
  v15(v10, v12);
  if (v55)
  {
    sub_2410FC88C(*(v1 + 864), v1 + 680, &qword_27E530CF8, &qword_2411684A0);
    v16 = *(v1 + 704);
    if (v16)
    {
      __swift_project_boxed_opaque_existential_1((v1 + 680), *(v1 + 704));
      v17 = sub_241165978();
      v16 = v18;
      __swift_destroy_boxed_opaque_existential_1((v1 + 680));
    }

    else
    {
      sub_2410FB29C(v1 + 680, &qword_27E530CF8, &qword_2411684A0);
      v17 = 0;
    }

    v28 = *(v1 + 896);
    v29 = *(v1 + 880);
    v30 = sub_2411653A8();
    v14(v28, *MEMORY[0x277CEEE10], v29);
    MEMORY[0x245CDB590](v17, v16, v30, v28);

    v15(v28, v29);
    v31 = sub_241165268();
    v32 = sub_241166068();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_2410F8000, v31, v32, "Send destinations are valid", v33, 2u);
      MEMORY[0x245CDC5E0](v33, -1, -1);
    }

    v39 = *(v1 + 1272);
    v43 = *(v1 + 1176);
    v44 = *(v1 + 1216);
    v40 = *(v1 + 1168);
    v41 = *(v1 + 1280);
    v34 = *(v1 + 1056);
    v47 = *(v1 + 1048);
    v48 = *(v1 + 1064);
    v35 = *(v1 + 1032);
    v45 = *(v1 + 1024);
    v46 = *(v1 + 1040);
    v42 = *(v1 + 960);

    sub_241165AA8();
    swift_allocObject();

    sub_241165A88();
    v36 = objc_allocWithZone(sub_2411658E8());
    v37 = sub_2411658C8();

    sub_241109164(v39, v41);
    sub_241109164(v40, v43);

    sub_241132558(v1 + 144);
    sub_2410FB29C(v42, &qword_27E530658, &unk_241167410);
    (*(v35 + 8))(v46, v45);
    (*(v34 + 8))(v48, v47);

    v38 = *(v1 + 8);

    return v38(v37);
  }

  else
  {
    v19 = *(v1 + 1288);
    v20 = *(v1 + 1280);
    v21 = *(v1 + 1272);
    v51 = *(v1 + 1216);
    v49 = *(v1 + 1176);
    v22 = *(v1 + 1168);
    v23 = *(v1 + 1056);
    v54 = *(v1 + 1048);
    v56 = *(v1 + 1064);
    v24 = *(v1 + 1032);
    v52 = *(v1 + 1024);
    v53 = *(v1 + 1040);
    v50 = *(v1 + 960);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530D20, &qword_241168528);
    sub_2411351DC();
    swift_allocError();
    *v25 = 4;
    swift_willThrow();

    sub_241109164(v21, v20);
    sub_241109164(v22, v49);

    sub_241132558(v1 + 144);
    sub_2410FB29C(v50, &qword_27E530658, &unk_241167410);
    (*(v24 + 8))(v53, v52);
    (*(v23 + 8))(v56, v54);

    v26 = *(v1 + 8);

    return v26();
  }
}

uint64_t sub_2411296BC(uint64_t a1)
{
  v68 = v1;
  v67[1] = *MEMORY[0x277D85DE8];
  v2 = *(v1 + 1200);
  v3 = *(v1 + 1192);
  swift_willThrow();

  *(v1 + 204) = 1;
  *(v1 + 1208) = 0u;
  v4 = *(v1 + 1152);
  v5 = *(v1 + 1136);
  v6 = *(v1 + 1072);
  sub_241165298();
  if (v4(v6, 1, v5) == 1)
  {
    sub_2410FB29C(*(v1 + 1072), &qword_27E530CE8, &qword_241168400);
    goto LABEL_7;
  }

  v7 = (*(*(v1 + 1144) + 88))(*(v1 + 1072), *(v1 + 1136));
  v8 = *(v1 + 1144);
  v9 = *(v1 + 1136);
  v10 = *(v1 + 1072);
  if (v7 != *MEMORY[0x277CEEAD8])
  {
    (*(v8 + 8))(*(v1 + 1072), v9);
LABEL_7:
    *(v1 + 1280) = 0xF000000000000000;
    *(v1 + 1272) = 0;
    sub_2410FC88C(*(v1 + 864), v1 + 520, &qword_27E530CF8, &qword_2411684A0);
    if (*(v1 + 544))
    {
      __swift_project_boxed_opaque_existential_1((v1 + 520), *(v1 + 544));
      sub_241165978();
      __swift_destroy_boxed_opaque_existential_1((v1 + 520));
    }

    else
    {
      sub_2410FB29C(v1 + 520, &qword_27E530CF8, &qword_2411684A0);
    }

    sub_2410FC88C(*(v1 + 864), v1 + 560, &qword_27E530CF8, &qword_2411684A0);
    if (*(v1 + 584))
    {
      __swift_project_boxed_opaque_existential_1((v1 + 560), *(v1 + 584));
      sub_241165968();
      __swift_destroy_boxed_opaque_existential_1((v1 + 560));
    }

    else
    {
      sub_2410FB29C(v1 + 560, &qword_27E530CF8, &qword_2411684A0);
    }

    sub_2410FC88C(*(v1 + 864), v1 + 600, &qword_27E530CF8, &qword_2411684A0);
    if (*(v1 + 624))
    {
      __swift_project_boxed_opaque_existential_1((v1 + 600), *(v1 + 624));
      sub_241165958();
      __swift_destroy_boxed_opaque_existential_1((v1 + 600));
    }

    else
    {
      sub_2410FB29C(v1 + 600, &qword_27E530CF8, &qword_2411684A0);
    }

    v16 = *(v1 + 1176);
    v17 = *(v1 + 1168);
    v18 = *(v1 + 856);
    sub_241165CE8();
    sub_2411351C8(v17, v16);
    sub_2411351C8(0, 0xF000000000000000);
    sub_241165488();
    v18;
    *(v1 + 1288) = sub_241165C58();
    v19 = sub_241165268();
    v20 = sub_241166068();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v67[0] = v22;
      *v21 = 136315138;
      v23 = sub_241165468();
      v25 = sub_241156B38(v23, v24, v67);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_2410F8000, v19, v20, "Attempting to inflate recipient group %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x245CDC5E0](v22, -1, -1);
      MEMORY[0x245CDC5E0](v21, -1, -1);
    }

    sub_2410FC88C(*(v1 + 864), v1 + 640, &qword_27E530CF8, &qword_2411684A0);
    v26 = *(v1 + 960);
    if (*(v1 + 664))
    {
      __swift_project_boxed_opaque_existential_1((v1 + 640), *(v1 + 664));
      sub_241165948();
      __swift_destroy_boxed_opaque_existential_1((v1 + 640));
    }

    else
    {
      v27 = *(v1 + 912);
      v28 = *(v1 + 904);
      sub_2410FB29C(v1 + 640, &qword_27E530CF8, &qword_2411684A0);
      (*(v27 + 56))(v26, 1, 1, v28);
    }

    v29 = *(v1 + 960);
    v30 = *(v1 + 952);
    v31 = *(v1 + 936);
    v32 = *(v1 + 928);
    v33 = *(v1 + 912);
    v34 = *(v1 + 904);
    (*(v33 + 104))(v30, *MEMORY[0x277CEED80], v34);
    (*(v33 + 56))(v30, 0, 1, v34);
    v35 = *(v32 + 48);
    sub_2410FC88C(v29, v31, &qword_27E530658, &unk_241167410);
    sub_2410FC88C(v30, v31 + v35, &qword_27E530658, &unk_241167410);
    v36 = *(v33 + 48);
    if (v36(v31, 1, v34) == 1)
    {
      v37 = *(v1 + 904);
      sub_2410FB29C(*(v1 + 952), &qword_27E530658, &unk_241167410);
      if (v36(v31 + v35, 1, v37) == 1)
      {
        sub_2410FB29C(*(v1 + 936), &qword_27E530658, &unk_241167410);
LABEL_29:
        v54 = sub_2411653A8();
        v55 = sub_241165368();
        v57 = v56;

        if (v55 == 0xD00000000000001DLL && 0x800000024116A040 == v57)
        {

LABEL_33:
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530668, &unk_2411677A0);
          v59 = swift_allocObject();
          *(v59 + 16) = xmmword_2411673F0;
          *(v59 + 32) = sub_241165DD8();
          *(v59 + 40) = v60;
          v46 = sub_2410FB2FC(v59);
          swift_setDeallocating();
          sub_2410FB464(v59 + 32);
          swift_deallocClassInstance();
          v47 = 1;
          goto LABEL_34;
        }

        v58 = sub_2411663E8();

        if (v58)
        {
          goto LABEL_33;
        }

LABEL_27:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530668, &unk_2411677A0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_2411673F0;
        *(inited + 32) = sub_241165DD8();
        *(inited + 40) = v45;
        v46 = sub_2410FB2FC(inited);
        swift_setDeallocating();
        sub_2410FB464(inited + 32);
        v47 = 0;
LABEL_34:
        *(v1 + 205) = v47;
        *(v1 + 1296) = v46;
        v61 = *(v1 + 201);
        sub_2410FC88C(*(v1 + 864), v1 + 144, &qword_27E530CF8, &qword_2411684A0);
        *(v1 + 184) = 0;
        *(v1 + 192) = v46;
        *(v1 + 200) = v61;

        sub_2411324FC(v1 + 144, v1 + 208);
        v62 = swift_task_alloc();
        *(v1 + 1304) = v62;
        *v62 = v1;
        v62[1] = sub_241127C58;
        v63 = *(v1 + 202);

        return sub_24115A1D4(v1 + 208, v63);
      }
    }

    else
    {
      v38 = *(v1 + 904);
      sub_2410FC88C(*(v1 + 936), *(v1 + 944), &qword_27E530658, &unk_241167410);
      v39 = v36(v31 + v35, 1, v38);
      v40 = *(v1 + 952);
      v41 = *(v1 + 944);
      if (v39 != 1)
      {
        v48 = *(v1 + 936);
        v49 = *(v1 + 920);
        v50 = *(v1 + 912);
        v51 = *(v1 + 904);
        (*(v50 + 32))(v49, v31 + v35, v51);
        sub_2411356E8(&qword_27E530670, MEMORY[0x277CEEDA8], MEMORY[0x277CEEDB8]);
        v52 = sub_241165D98();
        v53 = *(v50 + 8);
        v53(v49, v51);
        sub_2410FB29C(v40, &qword_27E530658, &unk_241167410);
        v53(v41, v51);
        sub_2410FB29C(v48, &qword_27E530658, &unk_241167410);
        if ((v52 & 1) == 0)
        {
          goto LABEL_27;
        }

        goto LABEL_29;
      }

      v42 = *(v1 + 912);
      v43 = *(v1 + 904);
      sub_2410FB29C(*(v1 + 952), &qword_27E530658, &unk_241167410);
      (*(v42 + 8))(v41, v43);
    }

    sub_2410FB29C(*(v1 + 936), &qword_27E530650, &qword_241167408);
    goto LABEL_27;
  }

  v11 = *(v1 + 984);
  v12 = *(v1 + 976);
  v13 = *(v1 + 968);
  (*(v8 + 96))(*(v1 + 1072), v9);
  v14 = *v10;
  *(v1 + 1224) = v14;
  sub_241165AF8();
  if ((*(v11 + 48))(v13, 1, v12) == 1)
  {
    v15 = *(v1 + 968);

    sub_2410FB29C(v15, &qword_27E530AB0, &qword_241168080);
    goto LABEL_7;
  }

  (*(*(v1 + 984) + 32))(*(v1 + 992), *(v1 + 968), *(v1 + 976));
  *(v1 + 1232) = [objc_opt_self() sharedSession];
  v65 = swift_task_alloc();
  *(v1 + 1240) = v65;
  *v65 = v1;
  v65[1] = sub_24112722C;
  v66 = *(v1 + 992);

  return MEMORY[0x28211ED00](v66, 0);
}

uint64_t sub_24112A174()
{
  v62 = v0;
  v61[1] = *MEMORY[0x277D85DE8];

  if (qword_27E530590 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1248);
  __swift_project_value_buffer(*(v0 + 1120), qword_27E533A20);
  v2 = v1;
  v3 = sub_241165268();
  v4 = sub_241166048();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 1248);
  v7 = *(v0 + 1224);
  if (v5)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v6;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_2410F8000, v3, v4, "Failed to download app icon from URL: %@", v8, 0xCu);
    sub_2410FB29C(v9, &qword_27E530E30, &qword_2411676F0);
    MEMORY[0x245CDC5E0](v9, -1, -1);
    MEMORY[0x245CDC5E0](v8, -1, -1);
  }

  else
  {
  }

  (*(*(v0 + 984) + 8))(*(v0 + 992), *(v0 + 976));
  *(v0 + 1280) = 0xF000000000000000;
  *(v0 + 1272) = 0;
  sub_2410FC88C(*(v0 + 864), v0 + 520, &qword_27E530CF8, &qword_2411684A0);
  if (*(v0 + 544))
  {
    __swift_project_boxed_opaque_existential_1((v0 + 520), *(v0 + 544));
    sub_241165978();
    __swift_destroy_boxed_opaque_existential_1((v0 + 520));
  }

  else
  {
    sub_2410FB29C(v0 + 520, &qword_27E530CF8, &qword_2411684A0);
  }

  sub_2410FC88C(*(v0 + 864), v0 + 560, &qword_27E530CF8, &qword_2411684A0);
  if (*(v0 + 584))
  {
    __swift_project_boxed_opaque_existential_1((v0 + 560), *(v0 + 584));
    sub_241165968();
    __swift_destroy_boxed_opaque_existential_1((v0 + 560));
  }

  else
  {
    sub_2410FB29C(v0 + 560, &qword_27E530CF8, &qword_2411684A0);
  }

  sub_2410FC88C(*(v0 + 864), v0 + 600, &qword_27E530CF8, &qword_2411684A0);
  if (*(v0 + 624))
  {
    __swift_project_boxed_opaque_existential_1((v0 + 600), *(v0 + 624));
    sub_241165958();
    __swift_destroy_boxed_opaque_existential_1((v0 + 600));
  }

  else
  {
    sub_2410FB29C(v0 + 600, &qword_27E530CF8, &qword_2411684A0);
  }

  v12 = *(v0 + 1176);
  v13 = *(v0 + 1168);
  v14 = *(v0 + 856);
  sub_241165CE8();
  sub_2411351C8(v13, v12);
  sub_2411351C8(0, 0xF000000000000000);
  sub_241165488();
  v14;
  *(v0 + 1288) = sub_241165C58();
  v15 = sub_241165268();
  v16 = sub_241166068();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v61[0] = v18;
    *v17 = 136315138;
    v19 = sub_241165468();
    v21 = sub_241156B38(v19, v20, v61);

    *(v17 + 4) = v21;
    _os_log_impl(&dword_2410F8000, v15, v16, "Attempting to inflate recipient group %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v18);
    MEMORY[0x245CDC5E0](v18, -1, -1);
    MEMORY[0x245CDC5E0](v17, -1, -1);
  }

  sub_2410FC88C(*(v0 + 864), v0 + 640, &qword_27E530CF8, &qword_2411684A0);
  v22 = *(v0 + 960);
  if (*(v0 + 664))
  {
    __swift_project_boxed_opaque_existential_1((v0 + 640), *(v0 + 664));
    sub_241165948();
    __swift_destroy_boxed_opaque_existential_1((v0 + 640));
  }

  else
  {
    v23 = *(v0 + 912);
    v24 = *(v0 + 904);
    sub_2410FB29C(v0 + 640, &qword_27E530CF8, &qword_2411684A0);
    (*(v23 + 56))(v22, 1, 1, v24);
  }

  v25 = *(v0 + 960);
  v26 = *(v0 + 952);
  v27 = *(v0 + 936);
  v28 = *(v0 + 928);
  v29 = *(v0 + 912);
  v30 = *(v0 + 904);
  (*(v29 + 104))(v26, *MEMORY[0x277CEED80], v30);
  (*(v29 + 56))(v26, 0, 1, v30);
  v31 = *(v28 + 48);
  sub_2410FC88C(v25, v27, &qword_27E530658, &unk_241167410);
  sub_2410FC88C(v26, v27 + v31, &qword_27E530658, &unk_241167410);
  v32 = *(v29 + 48);
  if (v32(v27, 1, v30) == 1)
  {
    v33 = *(v0 + 904);
    sub_2410FB29C(*(v0 + 952), &qword_27E530658, &unk_241167410);
    if (v32(v27 + v31, 1, v33) == 1)
    {
      sub_2410FB29C(*(v0 + 936), &qword_27E530658, &unk_241167410);
      goto LABEL_28;
    }

LABEL_25:
    sub_2410FB29C(*(v0 + 936), &qword_27E530650, &qword_241167408);
    goto LABEL_26;
  }

  v34 = *(v0 + 904);
  sub_2410FC88C(*(v0 + 936), *(v0 + 944), &qword_27E530658, &unk_241167410);
  v35 = v32(v27 + v31, 1, v34);
  v36 = *(v0 + 952);
  v37 = *(v0 + 944);
  if (v35 == 1)
  {
    v38 = *(v0 + 912);
    v39 = *(v0 + 904);
    sub_2410FB29C(*(v0 + 952), &qword_27E530658, &unk_241167410);
    (*(v38 + 8))(v37, v39);
    goto LABEL_25;
  }

  v44 = *(v0 + 936);
  v45 = *(v0 + 920);
  v46 = *(v0 + 912);
  v47 = *(v0 + 904);
  (*(v46 + 32))(v45, v27 + v31, v47);
  sub_2411356E8(&qword_27E530670, MEMORY[0x277CEEDA8], MEMORY[0x277CEEDB8]);
  v48 = sub_241165D98();
  v49 = *(v46 + 8);
  v49(v45, v47);
  sub_2410FB29C(v36, &qword_27E530658, &unk_241167410);
  v49(v37, v47);
  sub_2410FB29C(v44, &qword_27E530658, &unk_241167410);
  if ((v48 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_28:
  v50 = sub_2411653A8();
  v51 = sub_241165368();
  v53 = v52;

  if (v51 != 0xD00000000000001DLL || 0x800000024116A040 != v53)
  {
    v54 = sub_2411663E8();

    if (v54)
    {
      goto LABEL_32;
    }

LABEL_26:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530668, &unk_2411677A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2411673F0;
    *(inited + 32) = sub_241165DD8();
    *(inited + 40) = v41;
    v42 = sub_2410FB2FC(inited);
    swift_setDeallocating();
    sub_2410FB464(inited + 32);
    v43 = 0;
    goto LABEL_33;
  }

LABEL_32:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530668, &unk_2411677A0);
  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_2411673F0;
  *(v55 + 32) = sub_241165DD8();
  *(v55 + 40) = v56;
  v42 = sub_2410FB2FC(v55);
  swift_setDeallocating();
  sub_2410FB464(v55 + 32);
  swift_deallocClassInstance();
  v43 = 1;
LABEL_33:
  *(v0 + 205) = v43;
  *(v0 + 1296) = v42;
  v57 = *(v0 + 201);
  sub_2410FC88C(*(v0 + 864), v0 + 144, &qword_27E530CF8, &qword_2411684A0);
  *(v0 + 184) = 0;
  *(v0 + 192) = v42;
  *(v0 + 200) = v57;

  sub_2411324FC(v0 + 144, v0 + 208);
  v58 = swift_task_alloc();
  *(v0 + 1304) = v58;
  *v58 = v0;
  v58[1] = sub_241127C58;
  v59 = *(v0 + 202);

  return sub_24115A1D4(v0 + 208, v59);
}

uint64_t sub_24112AB68()
{
  v1 = *(v0 + 1352);

  v2 = v1;
  v3 = sub_241165268();
  v4 = sub_241166048();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 1352);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_2410F8000, v3, v4, "People threw error for PeopleClient.canSendFamilyScreenTimeRequestIMessage(): %@", v7, 0xCu);
    sub_2410FB29C(v8, &qword_27E530E30, &qword_2411676F0);
    MEMORY[0x245CDC5E0](v8, -1, -1);
    MEMORY[0x245CDC5E0](v7, -1, -1);
  }

  else
  {
  }

  sub_2410FC88C(*(v0 + 864), v0 + 720, &qword_27E530CF8, &qword_2411684A0);
  v11 = *(v0 + 744);
  if (v11)
  {
    __swift_project_boxed_opaque_existential_1((v0 + 720), *(v0 + 744));
    v12 = sub_241165978();
    v11 = v13;
    __swift_destroy_boxed_opaque_existential_1((v0 + 720));
  }

  else
  {
    sub_2410FB29C(v0 + 720, &qword_27E530CF8, &qword_2411684A0);
    v12 = 0;
  }

  v14 = *(v0 + 896);
  v15 = *(v0 + 888);
  v16 = *(v0 + 880);
  v17 = sub_2411653A8();
  (*(v15 + 104))(v14, *MEMORY[0x277CEEE00], v16);
  MEMORY[0x245CDB590](v12, v11, v17, v14);

  (*(v15 + 8))(v14, v16);
  v18 = *(v0 + 1288);
  v19 = *(v0 + 1280);
  v20 = *(v0 + 1272);
  v21 = *(v0 + 1168);
  v22 = *(v0 + 1056);
  v32 = *(v0 + 1048);
  v33 = *(v0 + 1064);
  v31 = *(v0 + 1040);
  v23 = *(v0 + 1032);
  v29 = *(v0 + 1216);
  v30 = *(v0 + 1024);
  v27 = *(v0 + 1176);
  v28 = *(v0 + 960);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530D20, &qword_241168528);
  sub_2411351DC();
  swift_allocError();
  *v24 = 4;
  swift_willThrow();

  sub_241109164(v20, v19);
  sub_241109164(v21, v27);

  sub_241132558(v0 + 144);
  sub_2410FB29C(v28, &qword_27E530658, &unk_241167410);
  (*(v23 + 8))(v31, v30);
  (*(v22 + 8))(v33, v32);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_24112AFBC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530CE8, &qword_241168400);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v34 - v5;
  v7 = sub_2411652E8();
  v8 = MEMORY[0x28223BE20](v7);
  v44 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v43 = &v34 - v13;
  v47 = *(v2 + 320);
  v46 = *(v47 + 16);
  if (v46)
  {
    v14 = 0;
    v15 = v47 + 32;
    v45 = (v11 + 48);
    v39 = (v11 + 88);
    v40 = (v11 + 32);
    v38 = *MEMORY[0x277CEEAD0];
    v37 = (v11 + 8);
    *&v12 = 136315394;
    v36 = v12;
    v41 = v7;
    v42 = v6;
    while (v14 < *(v47 + 16))
    {
      sub_241135730(v15, v49);
      sub_241165298();
      if ((*v45)(v6, 1, v7) == 1)
      {
        sub_2410FB29C(v6, &qword_27E530CE8, &qword_241168400);
        v16 = 0;
      }

      else
      {
        v17 = *v40;
        v18 = v43;
        (*v40)(v43, v6, v7);
        v19 = v44;
        v17(v44, v18, v7);
        v20 = (*v39)(v19, v7);
        v16 = v20 == v38;
        (*v37)(v19, v7);
      }

      if (qword_27E530618 != -1)
      {
        swift_once();
      }

      v21 = sub_241165288();
      __swift_project_value_buffer(v21, qword_27E533BB8);
      v22 = a1;
      v23 = sub_241165268();
      v24 = sub_241166038();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = a1;
        v27 = swift_slowAlloc();
        v48 = v27;
        *v25 = v36;
        v28 = sub_241165328();
        v30 = sub_241156B38(v28, v29, &v48);

        *(v25 + 4) = v30;
        *(v25 + 12) = 1024;
        *(v25 + 14) = v16;
        _os_log_impl(&dword_2410F8000, v23, v24, "Can process question %s: %{BOOL}d", v25, 0x12u);
        __swift_destroy_boxed_opaque_existential_1(v27);
        v31 = v27;
        a1 = v26;
        v6 = v42;
        MEMORY[0x245CDC5E0](v31, -1, -1);
        v32 = v25;
        v7 = v41;
        MEMORY[0x245CDC5E0](v32, -1, -1);
      }

      if (v16)
      {
        return sub_24110324C(v49, v35);
      }

      ++v14;
      result = __swift_destroy_boxed_opaque_existential_1(v49);
      v15 += 40;
      if (v46 == v14)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:
    v33 = v35;
    *(v35 + 32) = 0;
    *v33 = 0u;
    v33[1] = 0u;
  }

  return result;
}

uint64_t sub_24112B3BC(uint64_t a1, void *a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530A60, &qword_241168260);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;
    v9 = a2;

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_24112B48C(uint64_t a1, __int16 a2, uint64_t a3)
{
  *(v4 + 64) = a3;
  *(v4 + 72) = v3;
  *(v4 + 152) = a2;
  *(v4 + 56) = a1;
  return MEMORY[0x2822009F8](sub_24112B4B4, 0, 0);
}

uint64_t sub_24112B4B4()
{
  v1 = *(v0 + 64);
  *(*(v0 + 72) + 24) = v1;

  if (v1)
  {
    sub_241165C08();
  }

  else
  {
    *(v0 + 48) = 0;
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
  }

  v2 = swift_task_alloc();
  *(v0 + 80) = v2;
  *v2 = v0;
  v2[1] = sub_24112B590;
  v3 = *(v0 + 56);
  v4 = *(v0 + 152);

  return sub_241125358(v3, v4, v0 + 16, 1);
}

uint64_t sub_24112B590(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 88) = a1;
  *(v3 + 96) = v1;

  sub_2410FB29C(v3 + 16, &qword_27E530CF8, &qword_2411684A0);
  if (v1)
  {
    v4 = sub_24112B930;
  }

  else
  {
    v4 = sub_24112B6BC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24112B6BC()
{
  v1 = sub_2411658D8();
  v0[13] = v1;
  v2 = sub_2411658A8();
  v0[14] = v2;
  v3 = sub_2411658B8();
  v0[15] = v3;
  v4 = swift_task_alloc();
  v0[16] = v4;
  *v4 = v0;
  v4[1] = sub_24112B788;

  return sub_2411238D4(v1, v2, v3);
}

uint64_t sub_24112B788(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 136) = v1;

  if (v1)
  {
    v5 = sub_24112B948;
  }

  else
  {
    v6 = *(v4 + 104);

    *(v4 + 144) = a1;
    v5 = sub_24112B8C8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_24112B8C8()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 144);

  return v1(v2);
}

uint64_t sub_24112B948()
{
  v1 = v0[13];
  v2 = v0[11];

  v3 = v0[1];

  return v3();
}

uint64_t sub_24112B9CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[32] = a4;
  v5[33] = v4;
  v5[30] = a2;
  v5[31] = a3;
  v5[29] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530658, &unk_241167410);
  v5[34] = swift_task_alloc();
  v6 = sub_241165BD8();
  v5[35] = v6;
  v5[36] = *(v6 - 8);
  v5[37] = swift_task_alloc();
  v5[38] = swift_task_alloc();
  v5[39] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5309F0, &qword_2411692B0);
  v5[40] = v7;
  v5[41] = *(v7 - 8);
  v5[42] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24112BB4C, 0, 0);
}

uint64_t sub_24112BB4C()
{
  v1 = v0[29];
  if (*(v1 + 16))
  {
    v2 = v0[42];
    v3 = v0[40];
    v4 = v0[32];
    v49 = v0[33];
    v5 = *(v0[41] + 80);
    v6 = (v5 + 32) & ~v5;
    sub_2410FC88C(v1 + v6, v2, &qword_27E5309F0, &qword_2411692B0);

    v48 = *(v3 + 48);
    v7 = *(v2 + *(v3 + 64));
    sub_241165CC8();

    v8 = objc_allocWithZone(sub_2411656E8());

    v9 = v4;
    v10 = sub_2411656D8();
    v0[43] = v10;
    v11 = sub_2411650D8();
    v12 = *(*(v11 - 8) + 8);
    v12(v2 + v48, v11);
    sub_241165CE8();
    sub_2410FC88C(v1 + v6, v2, &qword_27E5309F0, &qword_2411692B0);

    v13 = *(v3 + 48);
    v14 = v10;
    v15 = sub_241165C68();
    v0[44] = v15;
    v12(v2 + v13, v11);
    if (*(v49 + 24))
    {

      sub_241165C08();

      if (v0[27])
      {
        v16 = v0[35];
        v17 = v0[36];
        v18 = v0[34];
        __swift_project_boxed_opaque_existential_1(v0 + 24, v0[27]);
        sub_241165948();
        __swift_destroy_boxed_opaque_existential_1(v0 + 24);
        if ((*(v17 + 48))(v18, 1, v16) != 1)
        {
          (*(v0[36] + 32))(v0[39], v0[34], v0[35]);
          goto LABEL_13;
        }

LABEL_11:
        v22 = v0[35];
        v23 = v0[36];
        v24 = v0[34];
        (*(v23 + 104))(v0[39], *MEMORY[0x277CEED70], v22);
        if ((*(v23 + 48))(v24, 1, v22) != 1)
        {
          sub_2410FB29C(v0[34], &qword_27E530658, &unk_241167410);
        }

LABEL_13:
        v25 = v0[38];
        v27 = v0[36];
        v26 = v0[37];
        v28 = v0[35];
        (*(v27 + 16))(v25, v0[39], v28);
        v29 = sub_241165CC8();
        v30 = sub_2411653A8();

        v0[45] = sub_241154E14(v25);
        v31 = sub_241165C98();
        v33 = v32;
        (*(v27 + 104))(v26, *MEMORY[0x277CEED80], v28);
        v34 = sub_241165BB8();
        v36 = v35;
        v37 = *(v27 + 8);
        v0[46] = v37;
        v0[47] = (v27 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v37(v26, v28);
        if (v33)
        {
          if (v31 == v34 && v33 == v36)
          {
          }

          else
          {
            v38 = sub_2411663E8();

            if ((v38 & 1) == 0)
            {
LABEL_23:
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530668, &unk_2411677A0);
              inited = swift_initStackObject();
              *(inited + 16) = xmmword_2411673F0;
              *(inited + 32) = sub_241165DD8();
              *(inited + 40) = v45;
              v46 = sub_2410FB2FC(inited);
              v0[48] = v46;
              swift_setDeallocating();
              sub_2410FB464(inited + 32);
              v47 = swift_task_alloc();
              v0[49] = v47;
              *v47 = v0;
              v47[1] = sub_24112C174;

              return sub_241150BD0((v0 + 2), v15, v46);
            }
          }

          v39 = sub_241165CC8();
          v40 = sub_2411653A8();

          v41 = sub_241165368();
          v43 = v42;

          if (v41 != 0xD00000000000001DLL || 0x800000024116A040 != v43)
          {
            sub_2411663E8();

            goto LABEL_23;
          }
        }

        goto LABEL_23;
      }

      sub_2410FB29C((v0 + 24), &qword_27E530CF8, &qword_2411684A0);
    }

    (*(v0[36] + 56))(v0[34], 1, 1, v0[35]);
    goto LABEL_11;
  }

  sub_241132370();
  swift_allocError();
  *v19 = 1;
  swift_willThrow();

  v20 = v0[1];

  return v20();
}

uint64_t sub_24112C174()
{
  *(*v1 + 400) = v0;

  if (v0)
  {
    v2 = sub_24112C548;
  }

  else
  {
    v2 = sub_24112C2A8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24112C2A8()
{
  v1 = v0[3];
  if (v1 >> 60 == 15)
  {
    if (qword_27E530580 != -1)
    {
      swift_once();
    }

    v2 = sub_241165288();
    __swift_project_value_buffer(v2, qword_27E5339F0);
    v3 = sub_241165268();
    v4 = sub_241166048();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_2410F8000, v3, v4, "The data for the messages payload obtained from the AskTo extension was nil.", v5, 2u);
      MEMORY[0x245CDC5E0](v5, -1, -1);
    }

    v6 = v0[46];
    v7 = v0[44];
    v8 = v0[43];
    v9 = v0[39];
    v10 = v0[35];

    sub_241132370();
    swift_allocError();
    *v11 = 1;
    swift_willThrow();

    sub_241102CC0((v0 + 2));
    v6(v9, v10);

    v12 = v0[1];

    return v12();
  }

  else
  {
    v14 = v0[46];
    v15 = v0[43];
    v16 = v0[39];
    v17 = v0[35];
    v18 = v0[2];
    sub_241134D44(v18, v1);

    sub_241102CC0((v0 + 2));

    v14(v16, v17);

    v19 = v0[1];
    v20 = v0[44];

    return v19(v20, v18, v1);
  }
}

uint64_t sub_24112C548()
{
  if (qword_27E530580 != -1)
  {
    swift_once();
  }

  v1 = v0[50];
  v2 = sub_241165288();
  __swift_project_value_buffer(v2, qword_27E5339F0);
  v3 = v1;
  v4 = sub_241165268();
  v5 = sub_241166048();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[50];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_2410F8000, v4, v5, "Failed to get the new Messages payload from the AskTo extension. error: %@", v7, 0xCu);
    sub_2410FB29C(v8, &qword_27E530E30, &qword_2411676F0);
    MEMORY[0x245CDC5E0](v8, -1, -1);
    MEMORY[0x245CDC5E0](v7, -1, -1);
  }

  v11 = v0[46];
  v12 = v0[44];
  v13 = v0[43];
  v14 = v0[39];
  v15 = v0[35];

  swift_willThrow();

  v11(v14, v15);

  v16 = v0[1];

  return v16();
}

uint64_t sub_24112C754(uint64_t a1, uint64_t a2)
{
  v3[25] = a2;
  v3[26] = v2;
  v3[24] = a1;
  v4 = sub_241165BD8();
  v3[27] = v4;
  v3[28] = *(v4 - 8);
  v3[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24112C818, 0, 0);
}

uint64_t sub_24112C818(uint64_t a1)
{
  v3 = *(v1 + 224);
  v2 = *(v1 + 232);
  v4 = *(v1 + 216);
  v5 = sub_241165C98();
  v7 = v6;
  (*(v3 + 104))(v2, *MEMORY[0x277CEED80], v4);
  v8 = sub_241165BB8();
  v10 = v9;
  (*(v3 + 8))(v2, v4);
  if (!v7)
  {

    goto LABEL_18;
  }

  if (v5 == v8 && v7 == v10)
  {

    goto LABEL_10;
  }

  v12 = sub_2411663E8();

  if (v12)
  {
LABEL_10:
    v13 = sub_241165CC8();
    v14 = sub_2411653A8();

    v15 = sub_241165368();
    v17 = v16;

    if (v15 == 0xD00000000000001DLL && 0x800000024116A040 == v17)
    {
    }

    else
    {
      v18 = sub_2411663E8();

      if ((v18 & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    if (qword_27E530580 != -1)
    {
      swift_once();
    }

    v19 = sub_241165288();
    __swift_project_value_buffer(v19, qword_27E5339F0);
    v20 = sub_241165268();
    v21 = sub_241166068();
    if (!os_log_type_enabled(v20, v21))
    {
      goto LABEL_28;
    }

    v22 = swift_slowAlloc();
    *v22 = 0;
    v23 = "Skipping IDS sync for ScreenTime request";
    goto LABEL_27;
  }

LABEL_18:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530668, &unk_2411677A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2411673F0;
  *(inited + 32) = sub_241165DD8();
  *(inited + 40) = v25;
  v26 = sub_2410FB2FC(inited);
  *(v1 + 240) = v26;
  swift_setDeallocating();
  sub_2410FB464(inited + 32);
  v27 = sub_241165CB8();
  *(v1 + 248) = v27;
  if (v27)
  {
    sub_241165C88();
    v28 = sub_241165478();
    if ((v28 & 0x10000) == 0)
    {
      v29 = v28;
      if (*(*(v1 + 208) + 24))
      {

        sub_241165C08();
      }

      else
      {
        v36 = 0;
        v34 = 0u;
        v35 = 0u;
      }

      *(v1 + 16) = v34;
      *(v1 + 32) = v35;
      *(v1 + 48) = v36;
      *(v1 + 56) = 0;
      *(v1 + 64) = v26;
      *(v1 + 72) = 0;

      sub_2411324FC(v1 + 16, v1 + 80);
      v33 = swift_task_alloc();
      *(v1 + 256) = v33;
      *v33 = v1;
      v33[1] = sub_24112CCBC;

      return sub_24115A1D4(v1 + 80, v29);
    }
  }

  if (qword_27E530580 != -1)
  {
    swift_once();
  }

  v30 = sub_241165288();
  __swift_project_value_buffer(v30, qword_27E5339F0);
  v20 = sub_241165268();
  v21 = sub_241166048();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    v23 = "dictionaryRepresentation was nil for payload or could not parse recipient group. Skipping IDS sync";
LABEL_27:
    _os_log_impl(&dword_2410F8000, v20, v21, v23, v22, 2u);
    MEMORY[0x245CDC5E0](v22, -1, -1);
  }

LABEL_28:

  v31 = *(v1 + 8);

  return v31();
}