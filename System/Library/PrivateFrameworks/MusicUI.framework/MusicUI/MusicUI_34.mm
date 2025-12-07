uint64_t sub_2169F47D4(uint64_t a1)
{
  type metadata accessor for SocialContactsCoordinator.Contact(0);
  sub_21700E614();
  if (!*(v1 + 8))
  {
    return sub_21700F914();
  }

  sub_21700F914();

  return sub_21700E614();
}

uint64_t sub_2169F4868()
{
  OUTLINED_FUNCTION_92();
  v3 = *(v2 + 8);
  v4 = v0[1];
  if (v3)
  {
    if (v4)
    {
      v5 = *v1 == *v0 && v3 == v4;
      if (v5 || (sub_21700F7D4() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

    return 0;
  }

  if (v4)
  {
    return 0;
  }

LABEL_8:
  v6 = *(type metadata accessor for SocialContactsCoordinator.Contact(0) + 52);
  v7 = *(v1 + v6);
  v8 = *(v1 + v6 + 8);
  v9 = (v0 + v6);
  if (v7 == *v9 && v8 == v9[1])
  {
    return 1;
  }

  return sub_21700F7D4();
}

uint64_t sub_2169F4910()
{
  sub_21700F8F4();
  type metadata accessor for SocialContactsCoordinator.Contact(0);
  sub_21700E614();
  if (*(v0 + 8))
  {
    sub_21700F914();
    OUTLINED_FUNCTION_86_0();
    sub_21700E614();
  }

  else
  {
    sub_21700F914();
  }

  return sub_21700F944();
}

uint64_t sub_2169F49A8(uint64_t a1, uint64_t a2)
{
  sub_21700F8F4();
  sub_21700E614();
  if (*(v2 + 8))
  {
    sub_21700F914();
    OUTLINED_FUNCTION_86_0();
    sub_21700E614();
  }

  else
  {
    sub_21700F914();
  }

  return sub_21700F944();
}

uint64_t sub_2169F4A34()
{
  v18[11] = *MEMORY[0x277D85DE8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABDAA0, &qword_21703F4E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_217015230;
  *(inited + 32) = sub_21700E514();
  *(inited + 40) = v1;
  *(inited + 48) = sub_21700E514();
  *(inited + 56) = v2;
  *(inited + 64) = sub_21700E514();
  *(inited + 72) = v3;
  sub_216685F4C(0, &qword_27CABF860, 0x277CBDA70);
  v5 = sub_2169F3D80(inited, v4);
  swift_setDeallocating();
  sub_2169FAD04();
  v6 = sub_2169F4CFC(v5);
  v18[0] = MEMORY[0x277D84FA0];
  if (qword_27CAB5B98 != -1)
  {
    swift_once();
  }

  v7 = qword_27CABF720;
  v8 = swift_allocObject();
  *(v8 + 16) = v18;
  v9 = swift_allocObject();
  v9[2] = sub_2169FB270;
  v9[3] = v8;
  aBlock[4] = sub_2169FB278;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2169F52D8;
  aBlock[3] = &block_descriptor_37;
  v10 = _Block_copy(aBlock);

  aBlock[0] = 0;
  v11 = [v7 enumerateContactsWithFetchRequest:v6 error:aBlock usingBlock:v10];
  _Block_release(v10);
  v12 = aBlock[0];
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  if (v11)
  {
  }

  else
  {
    v14 = sub_217005D34();

    swift_willThrow();
  }

  v15 = v18[0];

  return v15;
}

id sub_2169F4CFC(uint64_t a1)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABF870, &unk_217033E10);
  v2 = sub_21700E804();

  v3 = [v1 initWithKeysToFetch_];

  return v3;
}

uint64_t sub_2169F4D80(void *a1, uint64_t a2, uint64_t a3)
{
  v40 = a3;
  v37 = a1;
  v4 = sub_217006224();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SocialContactsCoordinator.Contact(0);
  v9 = (v8 - 8);
  MEMORY[0x28223BE20](v8);
  v39 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v38 = &v36 - v12;
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v36 - v15;
  v17 = [a1 identifier];
  v18 = sub_21700E514();
  v20 = v19;

  *(v16 + 40) = 0u;
  *(v16 + 24) = 0u;
  v21 = v9[13];
  v22 = sub_21700C4B4();
  __swift_storeEnumTagSinglePayload(&v16[v21], 1, 1, v22);
  v23 = &v16[v9[14]];
  *&v16[v9[18]] = MEMORY[0x277D84F90];
  *v16 = v18;
  *(v16 + 1) = v20;
  sub_217006214();
  v24 = sub_2170061F4();
  v26 = v25;
  (*(v5 + 8))(v7, v4);
  v27 = &v16[v9[15]];
  *v27 = v24;
  v27[1] = v26;
  v28 = MEMORY[0x277D84FA0];
  *&v16[v9[16]] = MEMORY[0x277D84FA0];
  *&v16[v9[17]] = v28;
  *v23 = 0;
  *(v23 + 1) = 0;
  *(v16 + 8) = 0;
  v16[18] = 0;
  *(v16 + 7) = 0;
  sub_216697664(&v16[v21], &qword_27CABF770, &unk_21701A670);
  __swift_storeEnumTagSinglePayload(&v16[v21], 1, 1, v22);
  v29 = v37;
  v30 = [v37 emailAddresses];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF868, &unk_217033E00);
  v31 = sub_21700E824();

  sub_2169F12B4(v31, v16);

  v32 = [v29 phoneNumbers];
  v33 = sub_21700E824();

  sub_2169F14E8(v33, v16);

  sub_2169FB7D0();
  v34 = v38;
  sub_2168A15E0();
  sub_2169FB890(v34, type metadata accessor for SocialContactsCoordinator.Contact);
  return sub_2169FB890(v16, type metadata accessor for SocialContactsCoordinator.Contact);
}

void sub_2169F52D8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

id sub_2169F5334(char a1)
{
  if (a1)
  {
    if (qword_27CAB5BA8 != -1)
    {
      swift_once();
    }

    v1 = &qword_27CABF738;
  }

  else
  {
    if (qword_27CAB5BB0 != -1)
    {
      swift_once();
    }

    v1 = &qword_27CABF740;
  }

  v2 = *v1;

  return v2;
}

uint64_t sub_2169F53D4(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  type metadata accessor for SocialContactsCoordinator();
  v14 = swift_allocObject();
  v15 = a2 & 1;
  *(v14 + 16) = v15;
  *(v14 + 24) = a3;
  *(v14 + 32) = a4;
  *(v14 + 40) = a5;
  *(v14 + 48) = a6;
  *(v14 + 56) = a7;
  sub_21700DF14();
  sub_2167759F4(a5, a6);
  sub_2169F6034(a1, v15, a3, a4, sub_2169F9D94, v14);
}

void sub_2169F54B8(uint64_t a1, uint64_t a2, uint64_t a3, id a4, char a5, uint64_t a6, uint64_t a7, void (*a8)(void, void, void, void), uint64_t a9)
{
  v10 = a7;
  if (a4)
  {
    v16 = a4;
    if (qword_27CAB5BC0 != -1)
    {
      swift_once();
    }

    v17 = sub_217007CA4();
    __swift_project_value_buffer(v17, qword_27CABF750);
    v18 = a4;
    v19 = sub_217007C84();
    v20 = sub_21700ED84();

    if (os_log_type_enabled(v19, v20))
    {
      v34 = a2;
      v21 = swift_slowAlloc();
      v35 = a8;
      v22 = swift_slowAlloc();
      v36 = a3;
      v23 = swift_slowAlloc();
      v39 = v23;
      *v21 = 136446466;
      v24 = sub_21700E594();
      v26 = sub_2166A85FC(v24, v25, &v39);

      *(v21 + 4) = v26;
      *(v21 + 12) = 2114;
      v27 = a4;
      v28 = _swift_stdlib_bridgeErrorToNSError();
      *(v21 + 14) = v28;
      *v22 = v28;
      _os_log_impl(&dword_216679000, v19, v20, "SocialContactsCoordinator: Error occurred while uploading contacts for %{public}s: %{public}@", v21, 0x16u);
      sub_216697664(v22, &qword_27CABF880, &unk_21701D6E0);
      v29 = v22;
      a8 = v35;
      MEMORY[0x21CEA1440](v29, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v23);
      v30 = v23;
      a3 = v36;
      MEMORY[0x21CEA1440](v30, -1, -1);
      v31 = v21;
      a2 = v34;
      MEMORY[0x21CEA1440](v31, -1, -1);
    }

    else
    {
    }

    v10 = a7;
  }

  if (a1 == 1 || a4 || (a5 & 1) != 0)
  {
    if ((a5 & 1) == 0)
    {
      v33 = sub_216685F4C(0, &qword_280E29CD0, 0x277D85C78);
      sub_216E1AA7C(v33);
    }

    if (a8)
    {
      a8(a1, a2, a3, a4);
    }
  }

  else
  {
    type metadata accessor for SocialContactsCoordinator();
    v32 = swift_allocObject();
    *(v32 + 16) = a8;
    *(v32 + 24) = a9;
    sub_2167759F4(a8, a9);
    sub_2169F5820(a1, a2, a3, a6, v10, sub_2169FB2A0, v32);
  }
}

void sub_2169F57A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = sub_216685F4C(0, &qword_280E29CD0, 0x277D85C78);
  sub_216E1AA9C(v10);
  if (a5)
  {
    a5(a1, a2, a3, a4);
  }
}

void sub_2169F5820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t, void *), uint64_t a7)
{
  v107 = *MEMORY[0x277D85DE8];
  v14 = sub_21700E574();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v85 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1 || !a2 || !*(a1 + 16) || (v101 = a4, v18 = sub_2166AF66C(0x73646E65697266, 0xE700000000000000), (v19 & 1) == 0) || (sub_2166A6DF8(*(a1 + 56) + 32 * v18, v106), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF838, &qword_217033DE8), (swift_dynamicCast() & 1) == 0))
  {
    if (a6)
    {
      sub_2169F9D40();
      v82 = swift_allocError();
      *v83 = 4;
      a6(1, 0, 0, v82);
    }

    return;
  }

  v96 = a3;
  v104 = MEMORY[0x277D84FA0];
  v20 = *(*&v105[0] + 16);
  if (!v20)
  {

    v84 = MEMORY[0x277D84FA0];
    goto LABEL_49;
  }

  v95 = a7;
  v91 = (v15 + 8);
  v21 = 32;
  v22 = *&v105[0];
  v99 = a5;
  v100 = *&v105[0];
  v94 = v17;
  do
  {
    v23 = *(v22 + v21);
    if (!*(v23 + 16))
    {
      goto LABEL_23;
    }

    sub_21700DF14();
    v24 = sub_2166AF66C(0x49746361746E6F63, 0xE900000000000064);
    if ((v25 & 1) == 0 || !*(v23 + 16))
    {

      goto LABEL_23;
    }

    v26 = (*(v23 + 56) + 16 * v24);
    v28 = *v26;
    v27 = v26[1];
    sub_21700DF14();
    v29 = sub_2166AF66C(0x64616F6C796170, 0xE700000000000000);
    if ((v30 & 1) == 0)
    {

      goto LABEL_19;
    }

    v31 = v14;
    v32 = (*(v23 + 56) + 16 * v29);
    v97 = *v32;
    v33 = a2;
    v34 = v32[1];
    sub_21700DF14();

    if (!*(v33 + 16))
    {

      a5 = v99;
      v22 = v100;
      a2 = v33;
LABEL_22:
      v14 = v31;
      goto LABEL_23;
    }

    v98 = v34;
    v35 = sub_2166AF66C(v28, v27);
    v37 = v36;

    a2 = v33;
    if ((v37 & 1) == 0)
    {

      a5 = v99;
      v22 = v100;
      goto LABEL_22;
    }

    v38 = (*(v33 + 56) + (v35 << 6));
    v39 = v38[1];
    v40 = v98;
    v14 = v31;
    if (!v39)
    {
      goto LABEL_19;
    }

    v93 = *v38;
    sub_21700DF14();
    v41 = v97;
    sub_21700E654();
    v42 = sub_21700E734();
    v90 = MEMORY[0x21CE9F400](v42);
    v92 = v43;

    v97 = sub_216E14888(v41, v40);
    v45 = v44;
    sub_21700DF14();
    v46 = sub_216E1492C(v93, v39);
    v48 = v94;
    if (v47 >> 60 == 15)
    {

LABEL_19:

      a5 = v99;
      v22 = v100;
      goto LABEL_23;
    }

    v49 = v46;
    v93 = v47;
    v50 = sub_216E1492C(v90, v92);
    if (v51 >> 60 == 15)
    {

      goto LABEL_29;
    }

    v90 = v50;
    v92 = v51;
    v52 = sub_216E1492C(v97, v45);
    if (v53 >> 60 == 15)
    {
      sub_21677A510(v90, v92);
LABEL_29:
      v54 = v49;
LABEL_30:
      sub_21677A510(v54, v93);

      goto LABEL_19;
    }

    v55 = v53;
    v97 = v52;
    v89 = v49;
    v56 = sub_216E14BD4(1uLL, v52, v53, v49, v93, v90, v92, 0);
    if (v57 >> 60 == 15)
    {
      sub_21677A510(v97, v55);
      sub_21677A510(v90, v92);
      v54 = v89;
      goto LABEL_30;
    }

    v58 = v57;
    *&v106[0] = v56;
    *(&v106[0] + 1) = v57;
    v88 = v56;
    sub_21700E564();
    sub_2169FB2A8();
    v86 = sub_21700E544();
    v87 = v59;
    sub_21677A510(v89, v93);
    sub_21677A510(v90, v92);
    sub_21677A510(v97, v55);
    sub_21677A510(v88, v58);

    a5 = v99;
    v22 = v100;
    if (v87)
    {
      sub_21700E564();
      v98 = sub_21700E524();
      v61 = v60;

      (*v91)(v48, v14);
      if (v61 >> 60 != 15)
      {
        v62 = objc_opt_self();
        v63 = v61;
        v64 = v62;
        v97 = v63;
        v65 = sub_217005F94();
        v103 = 0;
        v66 = [v64 JSONObjectWithData:v65 options:0 error:&v103];

        v67 = v103;
        if (v66)
        {
          sub_21700F1E4();
          swift_unknownObjectRelease();
          sub_2166EF9C4(v105, v106);
          sub_2166A6DF8(v106, v105);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF890, &qword_217033E20);
          if (swift_dynamicCast())
          {
            v68 = v103;
            if (*(v103 + 2) && (v69 = sub_2166AF66C(0x72506C6169636F73, 0xEF6449656C69666FLL), (v70 & 1) != 0))
            {
              v71 = (v68[7] + 16 * v69);
              v72 = *v71;
              v73 = v71[1];
              sub_21700DF14();

              v74 = v73;
              a5 = v99;
              sub_2168A140C(v105, v72, v74, v75, v76, v77, v78, v79, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, *&v105[0], *(&v105[0] + 1));
              sub_21677A510(v98, v97);
            }

            else
            {
              sub_21677A510(v98, v97);
            }

            __swift_destroy_boxed_opaque_existential_1Tm(v106);
          }

          else
          {
            __swift_destroy_boxed_opaque_existential_1Tm(v106);
            sub_21677A510(v98, v97);
          }
        }

        else
        {
          v80 = v67;
          v81 = sub_217005D34();

          swift_willThrow();
          sub_21677A510(v98, v97);
        }

        v22 = v100;
      }
    }

LABEL_23:
    v21 += 8;
    --v20;
  }

  while (v20);

  v84 = v104;
LABEL_49:
  type metadata accessor for SocialContactsCoordinator();
  sub_2169F834C(v84, v101, a5);

  if (a6)
  {
    a6(a1, a2, v96, 0);
  }
}

void sub_2169F6034(uint64_t a1, int a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, void, void, void *), uint64_t a6)
{
  v115 = a2;
  v126 = *MEMORY[0x277D85DE8];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABF790, &qword_217033DA0);
  MEMORY[0x28223BE20](v11 - 8);
  v108 = &v95 - v12;
  v13 = sub_217005844();
  v110 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v106 = &v95 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v109 = &v95 - v16;
  v17 = type metadata accessor for SocialContactsCoordinator.Contact(0);
  v113 = *(v17 - 8);
  v114 = v17;
  MEMORY[0x28223BE20](v17);
  v112 = &v95 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CACD130, &qword_21705D720);
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v95 - v21;
  v23 = sub_21700E4D4();
  v111 = a1;
  sub_21700DF44();

  sub_21700DF84();
  v26 = *(v20 + 8);
  v25 = v20 + 8;
  v24 = v26;
  v26(v22, v19);
  if (!aBlock)
  {
LABEL_14:
    if (!a5)
    {
      return;
    }

LABEL_17:
    sub_2169F9D40();
    v29 = swift_allocError();
    v30 = 5;
LABEL_18:
    *v28 = v30;
LABEL_19:
    a5(1, 0, 0, v29);
    goto LABEL_20;
  }

  v105 = v24;
  v116 = 0xD00000000000001BLL;
  v117 = 0x8000000217085DE0;
  sub_21700F364();
  sub_216934FBC();
  sub_216788110(&aBlock);
  if (!v125)
  {

    sub_216697664(v124, &unk_27CABF7A0, &unk_217014D20);
    if (!a5)
    {
      return;
    }

    goto LABEL_17;
  }

  if ((swift_dynamicCast() & 1) == 0 || v116 < 1)
  {

    goto LABEL_14;
  }

  v103 = v116;
  if (v115)
  {

    goto LABEL_23;
  }

  v116 = 0xD000000000000017;
  v117 = 0x8000000217085E60;
  sub_21700F364();
  sub_216934FBC();
  sub_216788110(&aBlock);
  if (!v125)
  {

    sub_216697664(v124, &unk_27CABF7A0, &unk_217014D20);
    goto LABEL_62;
  }

  if ((swift_dynamicCast() & 1) == 0 || (v27 = v116, v104 = type metadata accessor for SocialContactsCoordinator(), !sub_2169F7018(v27)))
  {

LABEL_62:
    if (!a5)
    {
      return;
    }

    sub_2169F9D40();
    v29 = swift_allocError();
    *v71 = 0;
    goto LABEL_19;
  }

  v116 = 0xD000000000000018;
  v117 = 0x8000000217085E80;
  sub_21700F364();
  sub_216934FBC();

  sub_216788110(&aBlock);
  if (!v125)
  {
    sub_216697664(v124, &unk_27CABF7A0, &unk_217014D20);
LABEL_69:
    if (!a5)
    {
      return;
    }

    sub_2169F9D40();
    v29 = swift_allocError();
    v30 = 2;
    goto LABEL_18;
  }

  if ((swift_dynamicCast() & 1) == 0 || sub_2169F709C(v116, a3, a4))
  {
    goto LABEL_69;
  }

LABEL_23:
  v100 = type metadata accessor for SocialContactsCoordinator();
  v31 = sub_2169F4A34();
  v32 = v31;
  if (!*(v31 + 16))
  {

    if (!a5)
    {
      return;
    }

    sub_2169F9D40();
    v29 = swift_allocError();
    v30 = 3;
    goto LABEL_18;
  }

  v97 = v13;
  v98 = a6;
  v99 = a5;
  v96 = v115 & 1;
  v33 = *(v31 + 56);
  v102 = v31 + 56;
  v34 = 1 << *(v31 + 32);
  v35 = -1;
  if (v34 < 64)
  {
    v35 = ~(-1 << v34);
  }

  v36 = v35 & v33;
  v101 = (v34 + 63) >> 6;
  v37 = sub_21700DF14();
  v38 = 0;
  v95 = 0;
  v39 = MEMORY[0x277D84F90];
  v104 = v25;
  while (1)
  {
LABEL_27:
    if (v36)
    {
      goto LABEL_32;
    }

    do
    {
      v40 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        __break(1u);
LABEL_77:
        v79 = v37;

        v80 = sub_217005D34();

        swift_willThrow();
        v70 = v99;
LABEL_78:
        if (!v70)
        {
          return;
        }

        sub_2169F9D40();
        v29 = swift_allocError();
        *v81 = 7;
        v70(1, 0, 0, v29);
LABEL_20:

        return;
      }

      if (v40 >= v101)
      {
        goto LABEL_43;
      }

      v36 = *(v102 + 8 * v40);
      ++v38;
    }

    while (!v36);
    v38 = v40;
LABEL_32:
    v41 = v32;
    v42 = v112;
    sub_2169FB7D0();
    v43 = *(v42 + *(v114 + 64));
    sub_21700DF14();
    sub_2169FB890(v42, type metadata accessor for SocialContactsCoordinator.Contact);
    v44 = *(v43 + 16);
    v45 = *(v39 + 16);
    if (__OFADD__(v45, v44))
    {
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
    }

    if (!swift_isUniquelyReferenced_nonNull_native() || v45 + v44 > *(v39 + 24) >> 1)
    {
      sub_216938ADC();
      v39 = v46;
    }

    v32 = v41;
    v36 &= v36 - 1;
    if (!*(v43 + 16))
    {
      break;
    }

    if ((*(v39 + 24) >> 1) - *(v39 + 16) < v44)
    {
      goto LABEL_82;
    }

    swift_arrayInitWithCopy();

    if (v44)
    {
      v47 = *(v39 + 16);
      v48 = __OFADD__(v47, v44);
      v49 = v47 + v44;
      if (v48)
      {
        goto LABEL_83;
      }

      *(v39 + 16) = v49;
    }
  }

  if (!v44)
  {
    goto LABEL_27;
  }

  __break(1u);
LABEL_43:

  if (!*(v39 + 16))
  {

    v72 = v99;
    if (!v99)
    {
      return;
    }

    sub_2169F9D40();
    v29 = swift_allocError();
    *v73 = 3;
    v74 = v29;
LABEL_75:
    v72(1, 0, 0, v74);
    goto LABEL_20;
  }

  v50 = v32;
  v51 = v39;
  v52 = v103;
  v53 = sub_2169F6FA4(v51, v103);

  sub_2169F7138(v53, v52);
  if (v115)
  {
    v54 = 1684957542;
  }

  else
  {
    v54 = 0x7265766F63736964;
  }

  if (v115)
  {
    v55 = 0xE400000000000000;
  }

  else
  {
    v55 = 0xE800000000000000;
  }

  v56 = *MEMORY[0x277D7F9E0];
  sub_21700DF44();

  sub_21700DF84();
  v105(v22, v19);
  v57 = v98;
  if (!aBlock)
  {
    goto LABEL_64;
  }

  v116 = sub_21700E514();
  v117 = v58;
  sub_21700F364();
  sub_216934FBC();

  sub_216788110(&aBlock);
  if (!v125)
  {

    v75 = &unk_27CABF7A0;
    v76 = &unk_217014D20;
    p_aBlock = v124;
LABEL_72:
    sub_216697664(p_aBlock, v75, v76);
    goto LABEL_73;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB82B0, &unk_2170198E0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_64:

LABEL_73:
    v72 = v99;
    if (!v99)
    {
      return;
    }

    sub_2169F9D40();
    v29 = swift_allocError();
    *v78 = 6;
    v74 = v29;
    goto LABEL_75;
  }

  sub_216935010();

  if (!v121)
  {

    v75 = &qword_27CABF7B0;
    v76 = &qword_217016E20;
    p_aBlock = &aBlock;
    goto LABEL_72;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_64;
  }

  v59 = v124[0];
  v60 = v124[1];
  aBlock = 0;
  v119 = 0xE000000000000000;
  sub_21700F3B4();

  aBlock = 0x2F2F3A7370747468;
  v119 = 0xE800000000000000;
  MEMORY[0x21CE9F490](v59, v60);

  MEMORY[0x21CE9F490](0xD000000000000022, 0x8000000217085E00);
  MEMORY[0x21CE9F490](v54, v55);

  v61 = objc_opt_self();
  v62 = sub_21700E344();

  aBlock = 0;
  v63 = [v61 dataWithJSONObject:v62 options:0 error:{&aBlock, v95}];

  v37 = aBlock;
  if (!v63)
  {
    goto LABEL_77;
  }

  v64 = sub_217005FB4();
  v66 = v65;

  sub_21677A404(v64, v66);
  v67 = v108;
  sub_2169F74DC(v64, v66, v108);

  sub_21677A524(v64, v66);
  v68 = v97;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v67, 1, v97);
  v70 = v99;
  if (EnumTagSinglePayload == 1)
  {
    sub_21677A524(v64, v66);

    sub_216697664(v67, &unk_27CABF790, &qword_217033DA0);
    goto LABEL_78;
  }

  v82 = v109;
  v83 = v110;
  (*(v110 + 32))(v109, v67, v68);
  v84 = objc_allocWithZone(MEMORY[0x277D7FB38]);
  v85 = v68;
  v86 = sub_2169FA884(sub_2169F7850, 0);
  v87 = *(v83 + 16);
  v88 = v106;
  v87(v106, v82, v85);
  v89 = objc_allocWithZone(MEMORY[0x277D7FB40]);
  v90 = v86;
  v91 = sub_2169FA9A0(v88, v90);
  v92 = [objc_opt_self() highPrioritySession];
  v93 = swift_allocObject();
  *(v93 + 16) = v70;
  *(v93 + 24) = v57;
  *(v93 + 32) = v96;
  *(v93 + 40) = v53;
  *(v93 + 48) = v50;
  *(v93 + 56) = v107;
  v122 = sub_2169FADDC;
  v123 = v93;
  aBlock = MEMORY[0x277D85DD0];
  v119 = 1107296256;
  v120 = sub_2169F82C0;
  v121 = &block_descriptor_16_0;
  v94 = _Block_copy(&aBlock);
  sub_2167759F4(v70, v57);

  [v92 enqueueDataRequest:v91 withCompletionHandler:v94];
  _Block_release(v94);

  sub_21677A524(v64, v66);
  (*(v110 + 8))(v109, v97);
}

uint64_t sub_2169F6FA4(uint64_t a1, unint64_t a2)
{
  v5 = sub_21700E384();
  sub_2169F09D4(a1, a2, &v5);
  return v5;
}

BOOL sub_2169F7018(char a1)
{
  v2 = [objc_opt_self() standardUserDefaults];
  if (sub_2169F954C() == 2)
  {

    return 1;
  }

  else if (a1)
  {
    v4 = sub_2169F954C();

    return v4 != 0;
  }

  else
  {

    return 0;
  }
}

BOOL sub_2169F709C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for SocialContactsCoordinator();
  sub_2169F889C(a2, a3);
  if ((v6 & 1) != 0 || sub_2169F93E8(a1, a2, a3))
  {
    return 0;
  }

  v8 = [objc_opt_self() standardUserDefaults];
  v9 = sub_2169F954C();

  return v9 != 2;
}

void sub_2169F7138(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810, &unk_21701A5D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_217013D90;
  *(inited + 32) = 0x736E6F6974706FLL;
  *(inited + 40) = 0xE700000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF818, &qword_217033DC8);
  v5 = swift_initStackObject();
  *(v5 + 16) = xmmword_217013D90;
  *(v5 + 32) = 0x6E6F6973726576;
  *(v5 + 40) = 0xE700000000000000;
  *(v5 + 48) = xmmword_217033CB0;
  *(v5 + 64) = 0xEB00000000687467;
  *(v5 + 72) = a2;
  v6 = sub_21700E384();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF820, &qword_217033DD0);
  *(inited + 48) = v6;
  *(inited + 72) = v7;
  *(inited + 80) = 0x73746361746E6F63;
  *(inited + 88) = 0xE800000000000000;
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 64);
  v11 = (v8 + 63) >> 6;
  sub_21700DF14();
  v12 = 0;
  v31 = MEMORY[0x277D84F90];
  while (1)
  {
    v13 = v12;
    if (!v10)
    {
      break;
    }

LABEL_8:
    v14 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v15 = v14 | (v12 << 6);
    v16 = (*(a1 + 48) + 16 * v15);
    v17 = *v16;
    v18 = v16[1];
    v19 = (*(a1 + 56) + (v15 << 6));
    v20 = v19[2];
    v21 = v19[3];
    v22 = v19[1];
    v33 = *v19;
    v34 = v22;
    v35 = v20;
    v36 = v21;
    v37[0] = v17;
    v37[1] = v18;
    v38 = v33;
    v39 = v22;
    v40 = v20;
    v41 = v21;
    v23 = *(&v22 + 1);
    if (*(&v22 + 1))
    {
      v30 = v34;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF830, &qword_217020AC0);
      v24 = swift_initStackObject();
      *(v24 + 16) = xmmword_217013D90;
      *(v24 + 32) = 25705;
      *(v24 + 40) = 0xE200000000000000;
      *(v24 + 48) = v17;
      *(v24 + 56) = v18;
      *(v24 + 64) = 6775156;
      *(v24 + 72) = 0xE300000000000000;
      *(v24 + 80) = v30;
      *(v24 + 88) = v23;
      swift_bridgeObjectRetain_n();
      sub_2169FB208(&v33, v32);
      sub_21700DF14();
      v25 = sub_21700E384();
      sub_216697664(v37, &qword_27CABF828, &unk_217033DD8);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_216938BC8(0, *(v31 + 16) + 1, 1, v31);
        v31 = v28;
      }

      v27 = *(v31 + 16);
      v26 = *(v31 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_216938BC8(v26 > 1, v27 + 1, 1, v31);
        v31 = v29;
      }

      *(v31 + 16) = v27 + 1;
      *(v31 + 8 * v27 + 32) = v25;
    }

    else
    {
      sub_21700DF14();
      sub_2169FB208(&v33, v32);
      sub_216697664(v37, &qword_27CABF828, &unk_217033DD8);
    }
  }

  while (1)
  {
    v12 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v12 >= v11)
    {

      *(inited + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF838, &qword_217033DE8);
      *(inited + 96) = v31;
      sub_21700E384();
      return;
    }

    v10 = *(a1 + 64 + 8 * v12);
    ++v13;
    if (v10)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
}

uint64_t sub_2169F74DC@<X0>(uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v25 = a3;
  v26 = a4;
  v27 = a5;
  v6 = sub_217005844();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v23 - v11;
  v13 = sub_217005EF4();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = v23 - v18;
  sub_217005ED4();
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_216697664(v12, &qword_27CABA820, &unk_217018CE0);
    v20 = 1;
    v21 = v27;
  }

  else
  {
    (*(v14 + 32))(v19, v12, v13);
    (*(v14 + 16))(v16, v19, v13);
    sub_2170057E4();
    sub_217005784();
    sub_217005834();
    if (v26 >> 60 != 15)
    {
      v23[1] = sub_21700E514();
      sub_21700E514();
      v24 = v7;
      sub_21677A404(v25, v26);
      sub_217005834();

      v7 = v24;
      sub_217005824();
    }

    (*(v14 + 8))(v19, v13);
    v21 = v27;
    (*(v7 + 32))(v27, v9, v6);
    v20 = 0;
  }

  return __swift_storeEnumTagSinglePayload(v21, v20, 1, v6);
}

void sub_2169F7850(void *a1)
{
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    sub_216685F4C(0, &qword_27CABF808, 0x277D7FA48);
    v4 = a1;
    v5 = sub_2169F79CC(0x6C7070612E6D6F63, 0xEF636973754D2E65, 49, 0xE100000000000000);
    [v3 setClientInfo_];

    v6 = objc_opt_self();
    v7 = v4;
    v8 = [v6 defaultIdentityStore];
    [v3 setIdentityStore_];

    v9 = [objc_opt_self() activeAccount];
    [v3 setIdentity_];
  }
}

id sub_2169F79CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_21700E4D4();

  v5 = sub_21700E4D4();

  v6 = [swift_getObjCClassFromMetadata() clientInfoForMusicKitRequestWithClientIdentifier:v4 clientVersion:v5];

  return v6;
}

void sub_2169F7A60(void *a1, id a2, void (*a3)(uint64_t, void, void, void *), uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  if (a2)
  {
    v8 = a2;
    if (qword_27CAB5BC0 != -1)
    {
      swift_once();
    }

    v9 = sub_217007CA4();
    __swift_project_value_buffer(v9, qword_27CABF750);
    v10 = a2;
    v11 = sub_217007C84();
    v12 = sub_21700ED84();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      aBlock[0] = v14;
      *v13 = 136446210;
      swift_getErrorValue();
      v15 = sub_21700F884();
      v17 = sub_2166A85FC(v15, v16, aBlock);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_216679000, v11, v12, "Upload Contacts failed error: %{public}s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x21CEA1440](v14, -1, -1);
      MEMORY[0x21CEA1440](v13, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (!a1)
    {
      return;
    }

    v23 = a1;
    v24 = sub_2169FB18C(v23);
    if (v24)
    {
      sub_2169F7F6C(v24);
      v26 = v25;

      if (v26)
      {
        sub_216934F28();

        if (v42)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20, &unk_217015300);
          if (swift_dynamicCast())
          {
            type metadata accessor for SocialContactsCoordinator();
            v27 = sub_2169F5334(a5 & 1);
            v28 = swift_allocObject();
            v28[2] = v45;
            v28[3] = a6;
            v28[4] = a7;
            v28[5] = a3;
            v28[6] = a4;
            v43 = sub_2169FB1F8;
            v44 = v28;
            aBlock[0] = MEMORY[0x277D85DD0];
            aBlock[1] = 1107296256;
            aBlock[2] = sub_2169F0990;
            v42 = &block_descriptor_22_0;
            v29 = _Block_copy(aBlock);
            sub_21700DF14();
            sub_21700DF14();
            sub_2167759F4(a3, a4);

            [v27 addOperationWithBlock_];
            _Block_release(v29);

            return;
          }
        }

        else
        {
          sub_216697664(aBlock, &unk_27CABF7A0, &unk_217014D20);
        }
      }
    }

    if (qword_27CAB5BC0 != -1)
    {
      swift_once();
    }

    v30 = sub_217007CA4();
    __swift_project_value_buffer(v30, qword_27CABF750);
    v31 = v23;
    v32 = sub_217007C84();
    v33 = sub_21700ED84();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      aBlock[0] = v35;
      *v34 = 136446210;
      v45 = [v31 statusCode];
      type metadata accessor for ICURLResponseStatusCode(0);
      v36 = sub_21700E594();
      v38 = sub_2166A85FC(v36, v37, aBlock);

      *(v34 + 4) = v38;
      _os_log_impl(&dword_216679000, v32, v33, "Upload Contacts succeeded but failed to parse result body, status code: %{public}s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v35);
      MEMORY[0x21CEA1440](v35, -1, -1);
      MEMORY[0x21CEA1440](v34, -1, -1);
    }

    if (a3)
    {
      sub_2169F9D40();
      v39 = swift_allocError();
      *v40 = 4;
      a3(1, 0, 0, v39);
    }

    else
    {
    }
  }
}

void sub_2169F7F6C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF7F0, &qword_217057990);
    v2 = sub_21700F5C4();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  sub_21700DF14();
  v7 = 0;
  while (v5)
  {
    v8 = v7;
LABEL_12:
    v9 = __clz(__rbit64(v5)) | (v8 << 6);
    sub_216788294(*(a1 + 48) + 40 * v9, __src);
    sub_2166A6DF8(*(a1 + 56) + 32 * v9, &__src[40]);
    memcpy(__dst, __src, sizeof(__dst));
    sub_216788294(__dst, v19);
    if (!swift_dynamicCast())
    {
      sub_216697664(__dst, &qword_27CABF7F8, &qword_217033DB0);

      return;
    }

    v5 &= v5 - 1;
    sub_2166A6DF8(&__dst[40], v20);
    sub_216697664(__dst, &qword_27CABF7F8, &qword_217033DB0);
    v21 = v18;
    sub_2166EF9C4(v20, v22);
    v10 = v21;
    sub_2166EF9C4(v22, v23);
    sub_2166EF9C4(v23, &v21);
    v11 = sub_2166AF66C(v10, *(&v10 + 1));
    v12 = v11;
    if (v13)
    {
      *(v2[6] + 16 * v11) = v10;

      v14 = (v2[7] + 32 * v12);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      sub_2166EF9C4(&v21, v14);
      v7 = v8;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_21;
      }

      *(v2 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v11;
      *(v2[6] + 16 * v11) = v10;
      sub_2166EF9C4(&v21, (v2[7] + 32 * v11));
      v15 = v2[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_22;
      }

      v2[2] = v17;
      v7 = v8;
    }
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v8);
    ++v7;
    if (v5)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
}

uint64_t sub_2169F8224(uint64_t result, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, void, __n128))
{
  if (a4)
  {
    v7 = result;
    sub_21700DF14();
    sub_21700DF14();
    sub_21700DF14();
    (a4)(v7, a2, a3, 0);
  }

  return result;
}

void sub_2169F82C0(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

void sub_2169F834C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v36 = a1;
  v37[23] = *MEMORY[0x277D85DE8];
  v5 = sub_2170061E4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  MEMORY[0x28223BE20](v9);
  v11 = &v35 - v10;
  v12 = sub_217005EF4();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v35 = a2;
    v16 = qword_280E34EE8;
    sub_21700DF14();
    if (v16 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v9, qword_280E34EF8);
    sub_2169FB3DC();
    if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
    {

      sub_216697664(v11, &qword_27CABA820, &unk_217018CE0);
    }

    else
    {
      (*(v13 + 32))(v15, v11, v12);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810, &unk_21701A5D0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_217015230;
      *(inited + 32) = 0xD000000000000017;
      *(inited + 40) = 0x8000000217085EC0;
      sub_2170061D4();
      sub_217006024();
      v19 = v18;
      (*(v6 + 8))(v8, v5);
      v20 = MEMORY[0x277D839F8];
      *(inited + 48) = v19;
      *(inited + 72) = v20;
      *(inited + 80) = 0xD000000000000010;
      *(inited + 88) = 0x8000000217085C70;
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF898, &qword_217033E28);
      v22 = v36;
      *(inited + 96) = v36;
      v23 = qword_27CABF710;
      v24 = unk_27CABF718;
      *(inited + 120) = v21;
      *(inited + 128) = v23;
      *(inited + 168) = MEMORY[0x277D837D0];
      v25 = v35;
      *(inited + 136) = v24;
      *(inited + 144) = v25;
      *(inited + 152) = a3;
      sub_21700DF14();
      sub_21700DF14();
      sub_21700E384();
      v26 = objc_opt_self();
      v27 = sub_21700E344();

      v37[0] = 0;
      v28 = [v26 archivedDataWithRootObject:v27 requiringSecureCoding:1 error:v37];

      v29 = v37[0];
      if (v28)
      {
        v30 = sub_217005FB4();
        v32 = v31;

        sub_217005FF4();
        type metadata accessor for SocialContactsCoordinator();
        sub_2169F9248(v22);
        sub_21677A524(v30, v32);
      }

      else
      {
        v33 = v29;
        v34 = sub_217005D34();

        swift_willThrow();
      }

      (*(v13 + 8))(v15, v12);
    }
  }
}

void sub_2169F8804(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  type metadata accessor for SocialContactsCoordinator();
  if (sub_2169F9148(a3, a4))
  {
    *a5 = 0u;
    a5[1] = 0u;
  }

  else
  {

    sub_2169F89FC(a1, a2, a5);
  }
}

uint64_t sub_2169F889C(uint64_t a1, uint64_t a2)
{
  sub_2169F8804(0xD000000000000017, 0x8000000217085EC0, a1, a2, &v4);
  if (v5)
  {
    if (swift_dynamicCast())
    {
      return v3;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_216697664(&v4, &unk_27CABF7A0, &unk_217014D20);
    return 0;
  }
}

uint64_t sub_2169F8944()
{
  v0 = qword_27CABF710;
  v1 = unk_27CABF718;
  sub_21700DF14();
  sub_2169F89FC(v0, v1, &v4);

  if (v5)
  {
    if (swift_dynamicCast())
    {
      return v3;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_216697664(&v4, &unk_27CABF7A0, &unk_217014D20);
    return 0;
  }
}

void sub_2169F89FC(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  MEMORY[0x28223BE20](v6);
  v8 = v25 - v7;
  v9 = sub_217005EF4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [objc_opt_self() defaultManager];
  if (qword_280E34EE8 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v6, qword_280E34EF8);
  sub_2169FB3DC();
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {

    v14 = &qword_27CABA820;
    v15 = &unk_217018CE0;
    v16 = v8;
LABEL_5:
    sub_216697664(v16, v14, v15);
LABEL_10:
    *a3 = 0u;
    a3[1] = 0u;
    return;
  }

  (*(v10 + 32))(v12, v8, v9);
  sub_217005EA4();
  v17 = sub_21700E4D4();

  v18 = [v13 fileExistsAtPath_];

  if (!v18 || (sub_217005EA4(), v19 = sub_21700E4D4(), , v20 = [v13 contentsAtPath_], v19, !v20))
  {
    (*(v10 + 8))(v12, v9);

    goto LABEL_10;
  }

  v25[0] = a1;
  v25[1] = a2;
  v21 = sub_217005FB4();
  v23 = v22;

  sub_216685F4C(0, &qword_27CABF7B8, 0x277CCAAC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABF7C0, &qword_217033DA8);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_217018C90;
  *(v24 + 32) = sub_216685F4C(0, &qword_280E29D88, 0x277CBEAC0);
  *(v24 + 40) = sub_216685F4C(0, &unk_27CABF7D0, 0x277CBEB98);
  *(v24 + 48) = sub_216685F4C(0, qword_27CABC980, 0x277CCACA8);
  *(v24 + 56) = sub_216685F4C(0, &unk_27CABF7E0, 0x277CCABB0);
  sub_21700EE24();

  if (!*(&v27 + 1))
  {
    (*(v10 + 8))(v12, v9);

    sub_21677A524(v21, v23);
    v14 = &unk_27CABF7A0;
    v15 = &unk_217014D20;
    v16 = &v26;
    goto LABEL_5;
  }

  sub_2166EF9C4(&v26, v28);
  sub_2166A6DF8(v28, &v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20, &unk_217015300);
  if ((swift_dynamicCast() & 1) == 0)
  {

    sub_21677A524(v21, v23);
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
    (*(v10 + 8))(v12, v9);
    goto LABEL_10;
  }

  sub_216934F28();

  sub_21677A524(v21, v23);

  __swift_destroy_boxed_opaque_existential_1Tm(v28);
  (*(v10 + 8))(v12, v9);
}

uint64_t sub_2169F8EE8()
{
  v19[1] = *MEMORY[0x277D85DE8];
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v2);
  v4 = &v18[-v3];
  sub_217005EF4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v18[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_280E34EE8 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v1, qword_280E34EF8);
  sub_2169FB3DC();
  if (__swift_getEnumTagSinglePayload(v4, 1, v0) == 1)
  {
    return sub_216697664(v4, &qword_27CABA820, &unk_217018CE0);
  }

  OUTLINED_FUNCTION_86_0();
  v11();
  v12 = [objc_opt_self() defaultManager];
  v13 = sub_217005E04();
  v19[0] = 0;
  v14 = [v12 removeItemAtURL:v13 error:v19];

  if (v14)
  {
    v15 = v19[0];
  }

  else
  {
    v16 = v19[0];
    v17 = sub_217005D34();

    swift_willThrow();
  }

  return (*(v6 + 8))(v9, v0);
}

uint64_t sub_2169F9148(uint64_t a1, uint64_t a2)
{
  sub_21700DF14();
  v4 = sub_2169F8944();
  if (!a2)
  {
    if (!v5)
    {
LABEL_11:
      v8 = 0;
      return v8 & 1;
    }

LABEL_9:

    v8 = 1;
    return v8 & 1;
  }

  if (!v5)
  {
    goto LABEL_9;
  }

  if (v4 == a1 && v5 == a2)
  {

    goto LABEL_11;
  }

  v7 = sub_21700F7D4();

  v8 = v7 ^ 1;
  return v8 & 1;
}

id sub_2169F9200()
{
  result = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
  qword_27CABF720 = result;
  return result;
}

uint64_t sub_2169F9248(uint64_t a1)
{
  if (qword_27CAB5BA0 != -1)
  {
    swift_once();
  }

  v2 = qword_27CABF730;
  sub_21700DF14();
  v3 = sub_2169FA3A8(a1, v2);

  if ((v3 & 1) == 0)
  {
    qword_27CABF730 = a1;
    sub_21700DF14();
  }

  return result;
}

id sub_2169F9300()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCABD8]) init];
  sub_2169FB0B8(0xD00000000000004ALL, 0x8000000217085F40, v0);
  result = [v0 setQualityOfService_];
  qword_27CABF738 = v0;
  return result;
}

id sub_2169F9374()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCABD8]) init];
  sub_2169FB0B8(0xD00000000000004BLL, 0x8000000217085F90, v0);
  result = [v0 setQualityOfService_];
  qword_27CABF740 = v0;
  return result;
}

BOOL sub_2169F93E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2170061E4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v18 - v11;
  type metadata accessor for SocialContactsCoordinator();
  sub_2169F889C(a2, a3);
  if (v13)
  {
    return 0;
  }

  sub_217006014();
  sub_2170061D4();
  sub_217006114();
  v16 = v15;
  v17 = *(v7 + 8);
  v17(v9, v6);
  v17(v12, v6);
  return v16 > a1;
}

uint64_t sub_2169F954C()
{
  sub_2169F08D8(0xD000000000000018, 0x8000000217085EA0, &v3);
  if (!v4)
  {
    sub_216697664(&v3, &unk_27CABF7A0, &unk_217014D20);
    return 1;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 1;
  }

  if (v2 == 1)
  {
    v0 = 2;
  }

  else
  {
    v0 = 1;
  }

  if (v2 == -1)
  {
    return 0;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_2169F95F0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  __swift_allocate_value_buffer(v0, qword_280E34EF8);
  v1 = __swift_project_value_buffer(v0, qword_280E34EF8);
  return sub_2169F9648(v1);
}

uint64_t sub_2169F9648@<X0>(uint64_t a1@<X8>)
{
  v22[1] = *MEMORY[0x277D85DE8];
  v2 = sub_217005EF4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v8 = &v21[-v7];
  MEMORY[0x28223BE20](v9);
  v11 = &v21[-v10];
  v12 = [objc_opt_self() defaultManager];
  v22[0] = 0;
  v13 = [v12 URLForDirectory:13 inDomain:1 appropriateForURL:0 create:0 error:v22];

  v14 = v22[0];
  if (v13)
  {
    sub_217005E64();
    v15 = v14;

    (*(v3 + 32))(v11, v8, v2);
    sub_217005E14();
    sub_217005E24();
    v16 = *(v3 + 8);
    v16(v5, v2);
    v16(v11, v2);
    v17 = 0;
  }

  else
  {
    v18 = v22[0];
    v19 = sub_217005D34();

    swift_willThrow();
    v17 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a1, v17, 1, v2);
}

uint64_t sub_2169F98C4()
{
  v0 = sub_217007CA4();
  __swift_allocate_value_buffer(v0, qword_27CABF750);
  __swift_project_value_buffer(v0, qword_27CABF750);
  type metadata accessor for SocialContactsCoordinator();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF800, &unk_217033DB8);
  sub_21700E5B4();
  return sub_217007C94();
}

uint64_t type metadata accessor for SocialContactsCoordinator.Contact(uint64_t a1)
{
  result = qword_280E34ED0;
  if (!qword_280E34ED0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2169F99FC(uint64_t a1)
{
  sub_2166DAAC0(319, &qword_280E2A070, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_2166880FC(319);
    if (v5 > 0x3F)
    {
      return v4;
    }

    else
    {
      sub_2169F9B4C();
      v2 = v6;
      if (v7 <= 0x3F)
      {
        sub_2166DAAC0(319, &qword_280E29EC8, &type metadata for SocialContactsCoordinator.Contact.Entry, MEMORY[0x277D83940]);
        v2 = v8;
        if (v9 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v2;
}

void sub_2169F9B4C()
{
  if (!qword_280E29DB0)
  {
    v0 = sub_21700EBD4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E29DB0);
    }
  }
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

uint64_t sub_2169F9BB8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_2169F9BF8(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_2169F9C94()
{
  v1 = *(sub_21700DFD4() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = ((v3 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + v3);
  v6 = v0 + (v3 & 0xFFFFFFFFFFFFFFF8);
  v7 = *(v6 + 8);
  v8 = *(v6 + 16);
  v9 = *(v0 + v4);
  v10 = *(v0 + v4 + 8);
  v11 = *(v0 + ((v4 + 23) & 0xFFFFFFFFFFFFFFF8));

  return sub_2169F53D4(v0 + v2, v5, v7, v8, v9, v10, v11);
}

unint64_t sub_2169F9D40()
{
  result = qword_27CABF788;
  if (!qword_27CABF788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABF788);
  }

  return result;
}

uint64_t sub_2169F9DD4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2169F9DC8(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_2169F9E00(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v25 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = (v5 + 63) >> 6;
  v8 = a2 + 56;
  v26 = v7;
  v27 = result;
  if ((v6 & *(result + 56)) != 0)
  {
    do
    {
      OUTLINED_FUNCTION_23_28();
      v28 = v10;
LABEL_13:
      v13 = *(*(v3 + 48) + (v9 | (v4 << 6)));
      sub_21700F8F4();
      sub_216C6E3C8(v13);
      sub_21700E614();

      v14 = sub_21700F944();
      v15 = -1 << *(a2 + 32);
      v16 = v14 & ~v15;
      if (((*(v8 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        return 0;
      }

      v17 = ~v15;
      while (1)
      {
        v18 = 0xD000000000000013;
        v19 = 0xD000000000000013;
        v20 = "ion";
        switch(*(*(a2 + 48) + v16))
        {
          case 1:
            v19 = 0xD00000000000001DLL;
            v20 = "fullCatalogPlayback";
            break;
          case 2:
            v19 = 0xD000000000000012;
            v20 = "voiceActivatedCatalogPlayback";
            break;
          case 3:
            v19 = 0xD000000000000014;
            v20 = "anyCatalogPlayback";
            break;
          case 4:
            v19 = 0xD00000000000001FLL;
            v20 = "cloudLibraryEligible";
            break;
          case 5:
            v19 = 0xD000000000000014;
            v20 = "addCatalogContentToCloudLibrary";
            break;
          default:
            break;
        }

        v21 = v20 | 0x8000000000000000;
        v22 = "ion";
        switch(v13)
        {
          case 1:
            v18 = 0xD00000000000001DLL;
            v22 = "fullCatalogPlayback";
            break;
          case 2:
            v18 = 0xD000000000000012;
            v22 = "voiceActivatedCatalogPlayback";
            break;
          case 3:
            v18 = 0xD000000000000014;
            v22 = "anyCatalogPlayback";
            break;
          case 4:
            v18 = 0xD00000000000001FLL;
            v22 = "cloudLibraryEligible";
            break;
          case 5:
            v18 = 0xD000000000000014;
            v22 = "addCatalogContentToCloudLibrary";
            break;
          default:
            break;
        }

        if (v19 == v18 && v21 == (v22 | 0x8000000000000000))
        {

          v3 = v27;
          goto LABEL_36;
        }

        v24 = sub_21700F7D4();

        if (v24)
        {
          break;
        }

        v16 = (v16 + 1) & v17;
        if (((*(v8 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
        {
          return 0;
        }
      }

      v3 = v27;
LABEL_36:
      v7 = v26;
    }

    while (v28);
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v7)
    {
      return 1;
    }

    ++v11;
    if (*(v25 + 8 * v4))
    {
      OUTLINED_FUNCTION_15_35();
      v28 = v12;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void sub_2169FA130(uint64_t a1, uint64_t a2)
{
  v4 = a2 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (v4)
    {
      OUTLINED_FUNCTION_20_29();
      OUTLINED_FUNCTION_28_4();

LABEL_32:
      MEMORY[0x2821FCF40]();
      return;
    }
  }

  else
  {
    if (!v4)
    {
      if (a1 == a2 || *(a1 + 16) != *(a2 + 16))
      {
LABEL_30:
        OUTLINED_FUNCTION_28_4();
        return;
      }

      v9 = 1 << *(a1 + 32);
      if (v9 < 64)
      {
        v10 = ~(-1 << v9);
      }

      else
      {
        v10 = -1;
      }

      v11 = v10 & *(a1 + 56);
      sub_217007D44();
      v12 = 0;
      v13 = (v9 + 63) >> 6;
      if (v11)
      {
        while (2)
        {
          v23 = (v11 - 1) & v11;
LABEL_23:
          OUTLINED_FUNCTION_12_39();
          sub_2169FB394(v16, v17, MEMORY[0x277CBCDB0]);

          v18 = sub_21700E424();
          v19 = ~(-1 << *(a2 + 32));
          do
          {
            v20 = v18 & v19;
            if (((*(a2 + 56 + (((v18 & v19) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v18 & v19)) & 1) == 0)
            {

              goto LABEL_30;
            }

            OUTLINED_FUNCTION_12_39();
            sub_2169FB394(&qword_27CABF9D8, v21, MEMORY[0x277CBCDB8]);
            v22 = sub_21700E494();
            v18 = v20 + 1;
          }

          while ((v22 & 1) == 0);

          v13 = (v9 + 63) >> 6;
          v11 = v23;
          if (v23)
          {
            continue;
          }

          break;
        }
      }

      v14 = v12;
      while (1)
      {
        v12 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v12 >= v13)
        {
          goto LABEL_30;
        }

        ++v14;
        if (*(a1 + 56 + 8 * v12))
        {
          OUTLINED_FUNCTION_15_35();
          v23 = v15;
          goto LABEL_23;
        }
      }

      __break(1u);
      goto LABEL_32;
    }

    OUTLINED_FUNCTION_20_29();
  }

  OUTLINED_FUNCTION_28_4();

  sub_2169FAB14(v6, v7);
}

uint64_t sub_2169FA3A8(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v21 = result;
  if (v7)
  {
    while (2)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_13:
      v12 = (*(result + 48) + 16 * (v9 | (v3 << 6)));
      v14 = *v12;
      v13 = v12[1];
      sub_21700F8F4();
      sub_21700DF14();
      sub_21700E614();
      v15 = sub_21700F944();
      v16 = ~(-1 << *(a2 + 32));
      do
      {
        v17 = v15 & v16;
        if (((*(a2 + 56 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
        {

          return 0;
        }

        v18 = (*(a2 + 48) + 16 * v17);
        if (*v18 == v14 && v18[1] == v13)
        {
          break;
        }

        v20 = sub_21700F7D4();
        v15 = v17 + 1;
      }

      while ((v20 & 1) == 0);

      result = v21;
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void sub_2169FA550()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_92();
  v2 = type metadata accessor for SocialFindFriendsController.Friend(0) - 8;
  MEMORY[0x28223BE20](v2);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v27 - v6;
  MEMORY[0x28223BE20](v8);
  v11 = &v27 - v9;
  if (v1 == v0 || *(v1 + 16) != *(v0 + 16))
  {
LABEL_20:
    OUTLINED_FUNCTION_26();
  }

  else
  {
    v12 = 0;
    v13 = *(v1 + 56);
    v27 = v1 + 56;
    v14 = 1 << *(v1 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = (v14 + 63) >> 6;
    v35 = v0 + 56;
    v28 = v16;
    v29 = &v27 - v9;
    v30 = v10;
    v31 = v1;
    v33 = v7;
    if ((v15 & v13) != 0)
    {
      while (2)
      {
        OUTLINED_FUNCTION_23_28();
        v32 = v18;
LABEL_13:
        v34 = *(v17 + 72);
        sub_2169FB7D0();
        sub_2169FB82C(v11, v7);
        sub_21700F8F4();
        sub_21700E614();
        v21 = sub_21700F944();
        v22 = v0;
        v23 = ~(-1 << *(v0 + 32));
        do
        {
          v24 = v21 & v23;
          if (((*(v35 + (((v21 & v23) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v21 & v23)) & 1) == 0)
          {
            sub_2169FB890(v33, type metadata accessor for SocialFindFriendsController.Friend);
            goto LABEL_20;
          }

          sub_2169FB7D0();
          sub_21700F8F4();
          sub_21700E614();
          v25 = sub_21700F944();
          sub_21700F8F4();
          sub_21700E614();
          v26 = sub_21700F944();
          sub_2169FB890(v4, type metadata accessor for SocialFindFriendsController.Friend);
          v21 = v24 + 1;
        }

        while (v25 != v26);
        v7 = v33;
        sub_2169FB890(v33, type metadata accessor for SocialFindFriendsController.Friend);
        v0 = v22;
        v16 = v28;
        v11 = v29;
        if (v32)
        {
          continue;
        }

        break;
      }
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v16)
      {
        goto LABEL_20;
      }

      ++v19;
      if (*(v27 + 8 * v12))
      {
        OUTLINED_FUNCTION_15_35();
        v32 = v20;
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}

id sub_2169FA884(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v9[4] = sub_2168A550C;
  v9[5] = v5;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_21689D330;
  v9[3] = &block_descriptor_28;
  v6 = _Block_copy(v9);

  v7 = [v2 initWithBlock_];
  _Block_release(v6);

  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if ((v6 & 1) == 0)
  {
    return v7;
  }

  __break(1u);
  return result;
}

id sub_2169FA9A0(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_2170057B4();
  v7 = [v3 initWithURLRequest:v6 requestContext:a2];

  v8 = sub_217005844();
  (*(*(v8 - 8) + 8))(a1, v8);
  return v7;
}

id sub_2169FAA38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v5 = sub_21700E4D4();

  v10[0] = 0;
  v6 = [v3 initWithPattern:v5 options:a3 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_217005D34();

    swift_willThrow();
  }

  return v6;
}

uint64_t sub_2169FAB14(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = sub_21700F2B4();
  if (v3 != result)
  {
    return 0;
  }

  v5 = 0;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 56);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v8 &= v8 - 1;
LABEL_12:

    v12 = sub_21700F2F4();

    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  v10 = v5;
  while (1)
  {
    v5 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return 1;
    }

    v11 = *(a2 + 56 + 8 * v5);
    ++v10;
    if (v11)
    {
      v8 = (v11 - 1) & v11;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2169FAC18()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABF9C0, &qword_21701ADB0);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_29_24();
  v0 = OUTLINED_FUNCTION_19_5();

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t sub_2169FACBC(uint64_t *a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  swift_arrayDestroy();
  v2 = OUTLINED_FUNCTION_19_5();

  return MEMORY[0x2821FE8D8](v2);
}

uint64_t sub_2169FAD04()
{
  swift_arrayDestroy();

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t sub_2169FAD78(void (*a1)(void))
{
  a1(0);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_29_24();
  v1 = OUTLINED_FUNCTION_19_5();

  return MEMORY[0x2821FE8D8](v1);
}

uint64_t sub_2169FADF0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v4 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    v5 = 0xC000000000000000;
    goto LABEL_5;
  }

  if (v4 <= 14)
  {
    result = sub_217005F04();
    v5 = v7 & 0xFFFFFFFFFFFFFFLL;
  }

  else if (v4 >= 0x7FFFFFFF)
  {
    result = MEMORY[0x21CE96D40]();
    v5 = v8 | 0x8000000000000000;
  }

  else
  {
    result = MEMORY[0x21CE96D60]();
    v5 = v6 | 0x4000000000000000;
  }

LABEL_5:
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_2169FAE68(uint64_t a1, uint64_t a2)
{
  sub_21700CA64();
  sub_2169FB394(&qword_27CABF840, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
  return sub_21700CA24();
}

uint64_t sub_2169FAF3C(uint64_t a1, uint64_t a2)
{
  result = sub_217005AD4();
  if (!result || (result = sub_217005AF4(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_217005AE4();
      sub_21700CA64();
      sub_2169FB394(&qword_27CABF840, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
      return sub_21700CA24();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_2169FB01C(uint64_t a1, unint64_t a2)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      v6 = a1 >> 32;
      if (a1 >> 32 < a1)
      {
        goto LABEL_11;
      }

      a1 = a1;
      v5 = v6;
      goto LABEL_9;
    case 2uLL:
      v4 = *(a1 + 24);
      a1 = *(a1 + 16);
      v5 = v4;
LABEL_9:
      sub_2169FAF3C(a1, v5);
      if (v2)
      {
        goto LABEL_10;
      }

      return;
    case 3uLL:
      a1 = 0;
      v3 = 0;
      goto LABEL_5;
    default:
      v3 = a2 & 0xFFFFFFFFFFFFFFLL;
LABEL_5:
      sub_2169FAE68(a1, v3);
      if (v2)
      {
LABEL_10:

        __break(1u);
LABEL_11:
        __break(1u);
      }

      return;
  }
}

void sub_2169FB0B8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_21700E4D4();

  [a3 setName_];
}

uint64_t sub_2169FB11C(void *a1)
{
  v2 = [a1 unformattedInternationalStringValue];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_21700E514();

  return v3;
}

uint64_t sub_2169FB18C(void *a1)
{
  v1 = [a1 parsedBodyDictionary];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_21700E354();

  return v3;
}

unint64_t sub_2169FB2A8()
{
  result = qword_27CABF888;
  if (!qword_27CABF888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABF888);
  }

  return result;
}

uint64_t sub_2169FB2FC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_2166A0F18(&v12, v10 + 40 * a1 + 32);
}

uint64_t sub_2169FB394(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2169FB3DC()
{
  OUTLINED_FUNCTION_92();
  __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_34();
  (*(v4 + 16))(v0, v1);
  return v0;
}

uint64_t sub_2169FB448(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 64))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2169FB49C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SocialContactsCoordinator.ErrorKind(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_2169FB5EC(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2169FB6CC()
{
  result = qword_27CABF9F0;
  if (!qword_27CABF9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABF9F0);
  }

  return result;
}

unint64_t sub_2169FB724()
{
  result = qword_27CABF9F8;
  if (!qword_27CABF9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABF9F8);
  }

  return result;
}

unint64_t sub_2169FB77C()
{
  result = qword_27CABFA00;
  if (!qword_27CABFA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABFA00);
  }

  return result;
}

uint64_t sub_2169FB7D0()
{
  OUTLINED_FUNCTION_92();
  v2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 16))(v0, v1);
  return v0;
}

uint64_t sub_2169FB82C(uint64_t a1, uint64_t a2)
{
  Friends = type metadata accessor for SocialFindFriendsController.Friend(0);
  (*(*(Friends - 8) + 32))(a2, a1, Friends);
  return a2;
}

uint64_t sub_2169FB890(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t type metadata accessor for MovieDetailPageIntent(uint64_t a1)
{
  result = qword_27CABFA10;
  if (!qword_27CABFA10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2169FB9E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v52 = a2;
  v47 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0, &qword_21701D5F0);
  MEMORY[0x28223BE20](v4 - 8);
  v46 = &v43 - v5;
  v6 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_0();
  v45 = v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v43 - v12;
  v48 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_1_0();
  v44 = v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v43 - v19;
  v21 = type metadata accessor for ContentDescriptor(0);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v43 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21700CE04();
  v24 = *(v8 + 16);
  v50 = v6;
  v24(v13, v52, v6);
  v25 = v49;
  ContentDescriptor.init(deserializing:using:)(v20, v13, v26, v27, v28, v29, v30, v31, v43, v44, SWORD2(v44), SBYTE6(v44), SHIBYTE(v44), v45, v46, v47, v48, v49, v50, v51, v52, v53, v54);
  if (v25)
  {
    (*(v8 + 8))(v52, v50);
    return (*(v15 + 8))(a1, v48);
  }

  else
  {
    v43 = v15;
    v49 = v8;
    v33 = v47;
    v34 = v48;
    sub_2168ED900(v23, v47);
    v35 = v44;
    sub_21700CE04();
    v36 = v45;
    v37 = v52;
    (v24)(v45);
    v38 = v46;
    ReferrerInfo.init(deserializing:using:)(v35, v36, v46);
    v39 = v34;
    v40 = v43;
    (*(v49 + 8))(v37, v50);
    (*(v40 + 8))(a1, v39);
    v41 = type metadata accessor for ReferrerInfo(0);
    __swift_storeEnumTagSinglePayload(v38, 0, 1, v41);
    v42 = type metadata accessor for MovieDetailPageIntent(0);
    return sub_21693FB5C(v38, v33 + *(v42 + 20));
  }
}

id sub_2169FBD74(JSContext a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0, &qword_21701D5F0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  result = [objc_opt_self() valueWithNewObjectInContext_];
  if (result)
  {
    v7 = result;
    ContentDescriptor.makeValue(in:)(a1);
    sub_21700F0B4();
    v8 = type metadata accessor for MovieDetailPageIntent(0);
    sub_2168CC268(v1 + *(v8 + 20), v5);
    v9 = type metadata accessor for ReferrerInfo(0);
    if (__swift_getEnumTagSinglePayload(v5, 1, v9) == 1)
    {
      sub_2168CC2D8(v5);
      isa = 0;
    }

    else
    {
      isa = ReferrerInfo.makeValue(in:)(a1).super.isa;
      sub_2168CC340(v5);
    }

    sub_2166F1F64(isa, 0x7265727265666572, 0xEC0000006F666E49);
    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2169FBF48(uint64_t a1)
{
  result = sub_2166CE504(&qword_27CABFA20, type metadata accessor for MovieDetailPageIntent, &unk_2170340F4);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2169FBFE8(uint64_t a1)
{
  *(a1 + 8) = sub_2166CE504(&qword_27CABFA20, type metadata accessor for MovieDetailPageIntent, &unk_2170340F4);
  result = sub_2166CE504(&qword_27CABFA28, type metadata accessor for MovieDetailPageIntent, &unk_2170340D8);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2169FC06C@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *x8_0@<X8>)
{
  v6 = v5;
  v12[3] = a3;
  v12[4] = a4;
  if (a1)
  {
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v12);
    (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, v6, a3);

    return sub_216A12228(v12, x8_0);
  }

  else
  {
    v11 = __swift_allocate_boxed_opaque_existential_1(v12);
    (*(*(a3 - 8) + 16))(v11, v6, a3);

    return sub_216A12718(v12, x8_0);
  }
}

uint64_t sub_2169FC198@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7();
  v11 = v10 - v9;
  v12 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_7();
  v18 = v17 - v16;
  sub_21700D284();
  OUTLINED_FUNCTION_1();
  v27 = v20;
  v28 = v19;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_7();
  v23 = v22 - v21;
  (*(v14 + 16))(v18, a1, v12);
  (*(v7 + 16))(v11, a2, v5);
  sub_21700D224();
  (*(v7 + 8))(a2, v5);
  if (v30)
  {
    return (*(v14 + 8))(a1, v12);
  }

  (*(v14 + 8))(a1, v12);
  (*(v27 + 32))(a3, v23, v28);
  v25 = *(type metadata accessor for CollaborationAction(0) + 20);
  v26 = sub_21700C924();
  return __swift_storeEnumTagSinglePayload(a3 + v25, 1, 1, v26);
}

uint64_t type metadata accessor for MenuAction(uint64_t a1)
{
  result = qword_280E45780;
  if (!qword_280E45780)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2169FC4AC(uint64_t a1)
{
  result = type metadata accessor for MenuActionType(319);
  if (v2 <= 0x3F)
  {
    result = sub_2166B0B84();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

BOOL sub_2169FC538()
{
  v0 = sub_216BAE074();
  if (v0 >= sub_216BAE074())
  {
    return 0;
  }

  v1 = sub_216BADF14();
  v2 = sub_216BADF14();
  if (v2 > 0xEu)
  {
    v3 = 0;
  }

  else
  {
    v3 = qword_217034320[v2];
  }

  if (v1 > 0xEu)
  {
    v5 = 0;
  }

  else
  {
    v5 = qword_217034320[v1];
  }

  return v3 >= v5;
}

uint64_t sub_2169FC5E4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2169FC530(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

unint64_t sub_2169FC624()
{
  result = qword_27CABFA30;
  if (!qword_27CABFA30)
  {
    type metadata accessor for MenuAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABFA30);
  }

  return result;
}

uint64_t type metadata accessor for OpenContextualMenuAction(uint64_t a1)
{
  result = qword_280E365F8;
  if (!qword_280E365F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2169FC6F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7();
  v11 = v10 - v9;
  v25 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_7();
  sub_21700D284();
  OUTLINED_FUNCTION_1();
  v21 = v16;
  v22 = v15;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_7();
  v19 = v18 - v17;
  sub_21700CE04();
  (*(v7 + 16))(v11, a2, v5);
  sub_21700D224();
  (*(v7 + 8))(a2, v5);
  if (v24)
  {
    return (*(v13 + 8))(a1, v25);
  }

  (*(v13 + 8))(a1, v25);
  return (*(v21 + 32))(a3, v19, v22);
}

_BYTE *storeEnumTagSinglePayload for UnifiedMessages(_BYTE *result, int a2, int a3)
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

void sub_2169FCA1C(unsigned __int8 *a1)
{
  v3 = *a1;
  if (!*(v2 + 184))
  {
    if (qword_280E416F8 != -1)
    {
      OUTLINED_FUNCTION_0_3(&qword_280E416F8);
    }

    v8 = sub_217007CA4();
    OUTLINED_FUNCTION_29_2(v8, qword_280E73D20);
    oslog = sub_217007C84();
    v9 = sub_21700ED84();
    if (os_log_type_enabled(oslog, v9))
    {
      v10 = OUTLINED_FUNCTION_96();
      v11 = OUTLINED_FUNCTION_45_19();
      v16 = v11;
      *v10 = 136315138;
      if (v3)
      {
        v12 = 0x6E776F6E6B6E75;
      }

      else
      {
        v12 = 0x507972617262696CLL;
      }

      if (v3)
      {
        v13 = 0xE700000000000000;
      }

      else
      {
        v13 = 0xEF64656464416E69;
      }

      v14 = sub_2166A85FC(v12, v13, &v16);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_216679000, oslog, v9, "💬 ⛔ No data store available. Skip reporting %s.", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
      OUTLINED_FUNCTION_26_4();
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  if (v3)
  {
    if (qword_280E416F8 != -1)
    {
      OUTLINED_FUNCTION_0_3(&qword_280E416F8);
    }

    v4 = sub_217007CA4();
    OUTLINED_FUNCTION_29_2(v4, qword_280E73D20);
    oslog = sub_217007C84();
    sub_21700ED84();
    OUTLINED_FUNCTION_27_2();
    if (os_log_type_enabled(oslog, v5))
    {
      v6 = OUTLINED_FUNCTION_96();
      v7 = OUTLINED_FUNCTION_45_19();
      v16 = v7;
      *v6 = 136315138;
      *(v6 + 4) = sub_2166A85FC(0x6E776F6E6B6E75, 0xE700000000000000, &v16);
      _os_log_impl(&dword_216679000, oslog, v1, "💬 Unsupported FeatureEngagementEvent %s.", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v7);
      OUTLINED_FUNCTION_26_4();
LABEL_17:
      OUTLINED_FUNCTION_6();

      return;
    }

LABEL_18:

    return;
  }

  sub_216B5B400();
}

void sub_2169FCC9C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1;
    v29 = MEMORY[0x277D84F90];
    sub_2166F4258();
    v5 = sub_2166F42A4();
    v6 = 0;
    v7 = v2 + 56;
    v23 = v2 + 64;
    v24 = v2 + 56;
    v25 = v2;
    if ((v5 & 0x8000000000000000) == 0)
    {
      while (v5 < 1 << *(v2 + 32))
      {
        v8 = v5 >> 6;
        if ((*(v7 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
        {
          goto LABEL_24;
        }

        if (*(v2 + 36) != v3)
        {
          goto LABEL_25;
        }

        v28 = v4;
        v26 = v6;
        v27 = v3;
        v9 = (*(v2 + 48) + 16 * v5);
        v10 = *v9;
        v11 = v9[1];
        v13 = *(v29 + 16);
        v12 = *(v29 + 24);
        sub_21700DF14();
        if (v13 >= v12 >> 1)
        {
          sub_2166F4258();
        }

        *(v29 + 16) = v13 + 1;
        v14 = v29 + 16 * v13;
        *(v14 + 32) = v10;
        *(v14 + 40) = v11;
        if (v28)
        {
          goto LABEL_29;
        }

        v7 = v24;
        v2 = v25;
        v15 = 1 << *(v25 + 32);
        if (v5 >= v15)
        {
          goto LABEL_26;
        }

        v16 = *(v24 + 8 * v8);
        if ((v16 & (1 << v5)) == 0)
        {
          goto LABEL_27;
        }

        if (*(v25 + 36) != v27)
        {
          goto LABEL_28;
        }

        v17 = v16 & (-2 << (v5 & 0x3F));
        if (v17)
        {
          v15 = __clz(__rbit64(v17)) | v5 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v18 = v8 << 6;
          v19 = v8 + 1;
          v20 = (v23 + 8 * v8);
          while (v19 < (v15 + 63) >> 6)
          {
            v22 = *v20++;
            v21 = v22;
            v18 += 64;
            ++v19;
            if (v22)
            {
              sub_2166F42E8(v5, v27, 0);
              v15 = __clz(__rbit64(v21)) + v18;
              goto LABEL_19;
            }
          }

          sub_2166F42E8(v5, v27, 0);
        }

LABEL_19:
        v6 = v26 + 1;
        if (v26 + 1 == v1)
        {
          return;
        }

        v4 = 0;
        v3 = *(v25 + 36);
        v5 = v15;
        if (v15 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }
}

void sub_2169FCED4()
{
  v1 = OBJC_IVAR____TtCO7MusicUI15UnifiedMessages11Coordinator_engagementLibraryObserver;
  if (!*(v0 + OBJC_IVAR____TtCO7MusicUI15UnifiedMessages11Coordinator_engagementLibraryObserver))
  {
    type metadata accessor for MusicUIEngagementLibraryObserver();
    swift_allocObject();
    *(v0 + v1) = sub_216B955B8();
  }
}

uint64_t sub_2169FCF54(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0, &qword_21701B9F0);
  OUTLINED_FUNCTION_36(v3);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_79_0();
  v5 = sub_21700EA74();
  OUTLINED_FUNCTION_22_16(v5);
  OUTLINED_FUNCTION_30_25();
  v8 = sub_216A06C54(v6, v7, &unk_217034578);
  OUTLINED_FUNCTION_53();
  v9 = swift_allocObject();
  v9[2] = v1;
  v9[3] = v8;
  v9[4] = a1;
  v9[5] = v1;
  swift_retain_n();

  OUTLINED_FUNCTION_9_46();
  sub_21677BBA0();
}

void sub_2169FD04C()
{
  OUTLINED_FUNCTION_49();
  v1 = v0;
  v28 = v2;
  v29 = v3;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8DF8, qword_21701B930);
  v9 = OUTLINED_FUNCTION_2(v8);
  v11 = v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v28 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0, &qword_21701B9F0);
  OUTLINED_FUNCTION_36(v14);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v15);
  v17 = &v28 - v16;
  v19 = *v7;
  v18 = v7[1];
  v20 = sub_21700EA74();
  OUTLINED_FUNCTION_88(v17, v21, v22, v20);
  sub_216681B04(v5, v13, &qword_27CAB8DF8, qword_21701B930);
  sub_21700EA34();
  OUTLINED_FUNCTION_47();

  sub_21700DF14();
  v23 = sub_21700EA24();
  v24 = (*(v11 + 80) + 56) & ~*(v11 + 80);
  v25 = swift_allocObject();
  v26 = MEMORY[0x277D85700];
  v25[2] = v23;
  v25[3] = v26;
  v25[4] = v1;
  v25[5] = v19;
  v25[6] = v18;
  sub_216A06448(v13, v25 + v24);
  OUTLINED_FUNCTION_9_46();
  sub_21677BBA0();

  sub_216681B04(v5, v13, &qword_27CAB8DF8, qword_21701B930);
  sub_2169FF528(v13);
  v27 = swift_unknownObjectRetain();
  sub_2169FDD74(v27, v29);
  OUTLINED_FUNCTION_26();
}

void sub_2169FD23C(void *a1)
{
  if (a1[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFAF0, &qword_217034670);
    v2 = OUTLINED_FUNCTION_77_10();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  OUTLINED_FUNCTION_65_9();
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & v3;
  v7 = (v4 + 63) >> 6;
  v8 = v2 + 64;

  sub_21700DF14();
  v9 = 0;
  if (v6)
  {
LABEL_12:
    while (1)
    {
      v11 = __clz(__rbit64(v6)) | (v9 << 6);
      v12 = (a1[6] + 16 * v11);
      v14 = *v12;
      v13 = v12[1];
      sub_2166A6DF8(a1[7] + 32 * v11, v35);
      *&v34 = v14;
      *(&v34 + 1) = v13;
      v32[2] = v34;
      v33[0] = v35[0];
      v33[1] = v35[1];
      v32[0] = v34;
      sub_21700DF14();
      swift_dynamicCast();
      sub_2166EF9C4(v33, v27);
      v28 = v24;
      v29 = v25;
      v30 = v26;
      sub_2166EF9C4(v27, v31);
      v24 = v28;
      v25 = v29;
      v26 = v30;
      sub_2166EF9C4(v31, v32);
      v15 = sub_21700F334() & ~(-1 << *(v2 + 32));
      if (((-1 << v15) & ~*(v8 + 8 * (v15 >> 6))) == 0)
      {
        break;
      }

      OUTLINED_FUNCTION_87_11();
LABEL_21:
      OUTLINED_FUNCTION_55_14();
      *(v8 + v20) |= v21;
      v23 = *(v2 + 48) + 40 * v22;
      *v23 = v24;
      *(v23 + 16) = v25;
      *(v23 + 32) = v26;
      sub_2166EF9C4(v32, (*(v2 + 56) + 32 * v22));
      ++*(v2 + 16);
    }

    OUTLINED_FUNCTION_85_9();
    while (++v16 != v18 || (v17 & 1) == 0)
    {
      v19 = v16 == v18;
      if (v16 == v18)
      {
        v16 = 0;
      }

      v17 |= v19;
      if (*(v8 + 8 * v16) != -1)
      {
        OUTLINED_FUNCTION_84_11();
        goto LABEL_21;
      }
    }
  }

  else
  {
    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v10 >= v7)
      {

        return;
      }

      v6 = a1[v10 + 8];
      ++v9;
      if (v6)
      {
        v9 = v10;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void sub_2169FD4B4(void *a1)
{
  if (a1[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFBD8, qword_217034778);
    v2 = OUTLINED_FUNCTION_77_10();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  OUTLINED_FUNCTION_65_9();
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & v3;
  v7 = (v4 + 63) >> 6;

  sub_21700DF14();
  v8 = 0;
  while (v6)
  {
    v9 = v8;
LABEL_12:
    v10 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v11 = v10 | (v9 << 6);
    v12 = (a1[6] + 16 * v11);
    v13 = *v12;
    v14 = v12[1];
    sub_2166A6DF8(a1[7] + 32 * v11, v30);
    *&v29 = v13;
    *(&v29 + 1) = v14;
    v27[2] = v29;
    v28[0] = v30[0];
    v28[1] = v30[1];
    v15 = v29;
    sub_2166EF9C4(v28, &v23);
    sub_21700DF14();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFBE0, &qword_21702D780);
    swift_dynamicCast();
    sub_2166EF9C4(&v24, v26);
    sub_2166EF9C4(v26, v27);
    sub_2166EF9C4(v27, &v25);
    v16 = sub_2166AF66C(v15, *(&v15 + 1));
    v17 = v16;
    if (v18)
    {
      *(v2[6] + 16 * v16) = v15;

      v19 = (v2[7] + 32 * v17);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
      sub_2166EF9C4(&v25, v19);
      v8 = v9;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_19;
      }

      *(v2 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v16;
      *(v2[6] + 16 * v16) = v15;
      sub_2166EF9C4(&v25, (v2[7] + 32 * v16));
      v20 = v2[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_20;
      }

      v2[2] = v22;
      v8 = v9;
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v7)
    {

      return;
    }

    v6 = a1[v9 + 8];
    ++v8;
    if (v6)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
}

void sub_2169FD720(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFAF0, &qword_217034670);
    v2 = sub_21700F5C4();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  sub_21700DF14();
  v8 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v10 = __clz(__rbit64(v5)) | (v8 << 6);
    sub_216788294(*(a1 + 48) + 40 * v10, v33);
    v35 = *(*(a1 + 56) + v10);
    v21 = v33[0];
    v23 = v33[1];
    v25 = v34;
    LOBYTE(v32[0]) = v35;
    swift_dynamicCast();
    v28 = v21;
    v29 = v23;
    v30 = v25;
    sub_2166EF9C4(&v27, v31);
    v22 = v28;
    v24 = v29;
    v26 = v30;
    sub_2166EF9C4(v31, v32);
    v11 = sub_21700F334();
    v12 = -1 << *(v2 + 32);
    v13 = v11 & ~v12;
    v14 = v13 >> 6;
    if (((-1 << v13) & ~*(v7 + 8 * (v13 >> 6))) == 0)
    {
      v16 = 0;
      v17 = (63 - v12) >> 6;
      while (++v14 != v17 || (v16 & 1) == 0)
      {
        v18 = v14 == v17;
        if (v14 == v17)
        {
          v14 = 0;
        }

        v16 |= v18;
        v19 = *(v7 + 8 * v14);
        if (v19 != -1)
        {
          v15 = __clz(__rbit64(~v19)) + (v14 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v15 = __clz(__rbit64((-1 << v13) & ~*(v7 + 8 * (v13 >> 6)))) | v13 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    v5 &= v5 - 1;
    *(v7 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
    v20 = *(v2 + 48) + 40 * v15;
    *v20 = v22;
    *(v20 + 16) = v24;
    *(v20 + 32) = v26;
    sub_2166EF9C4(v32, (*(v2 + 56) + 32 * v15));
    ++*(v2 + 16);
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
}

void sub_2169FD9C8(void *a1)
{
  if (a1[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFAF0, &qword_217034670);
    v2 = OUTLINED_FUNCTION_77_10();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  OUTLINED_FUNCTION_65_9();
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & v3;
  v7 = (v4 + 63) >> 6;
  v8 = v2 + 64;

  sub_21700DF14();
  v9 = 0;
  if (v6)
  {
LABEL_12:
    while (1)
    {
      v11 = (a1[6] + 16 * (__clz(__rbit64(v6)) | (v9 << 6)));
      v12 = v11[1];
      *&v30[0] = *v11;
      *(&v30[0] + 1) = v12;
      sub_21700DF14();
      swift_dynamicCast();
      swift_dynamicCast();
      v26 = v22;
      v27 = v23;
      v28 = v24;
      sub_2166EF9C4(&v25, v29);
      v22 = v26;
      v23 = v27;
      v24 = v28;
      sub_2166EF9C4(v29, v30);
      v13 = sub_21700F334() & ~(-1 << *(v2 + 32));
      if (((-1 << v13) & ~*(v8 + 8 * (v13 >> 6))) == 0)
      {
        break;
      }

      OUTLINED_FUNCTION_87_11();
LABEL_21:
      OUTLINED_FUNCTION_55_14();
      *(v8 + v18) |= v19;
      v21 = *(v2 + 48) + 40 * v20;
      *v21 = v22;
      *(v21 + 16) = v23;
      *(v21 + 32) = v24;
      sub_2166EF9C4(v30, (*(v2 + 56) + 32 * v20));
      ++*(v2 + 16);
    }

    OUTLINED_FUNCTION_85_9();
    while (++v14 != v16 || (v15 & 1) == 0)
    {
      v17 = v14 == v16;
      if (v14 == v16)
      {
        v14 = 0;
      }

      v15 |= v17;
      if (*(v8 + 8 * v14) != -1)
      {
        OUTLINED_FUNCTION_84_11();
        goto LABEL_21;
      }
    }
  }

  else
  {
    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v10 >= v7)
      {

        return;
      }

      v6 = a1[v10 + 8];
      ++v9;
      if (v6)
      {
        v9 = v10;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_2169FDC30()
{
  OUTLINED_FUNCTION_120_0(v0 + 112, v5);
  v1 = OUTLINED_FUNCTION_116();
  sub_216ABB124(v1, v2, v3);
  swift_endAccess();
}

uint64_t sub_2169FDC8C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21700D574();
  sub_21700D4D4();
  sub_21700E094();

  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v2);
}

uint64_t sub_2169FDD04()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_38();
  sub_217007DE4();

  return v1;
}

uint64_t sub_2169FDD74(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_217007DF4();
}

void sub_2169FDDF0()
{
  OUTLINED_FUNCTION_49();
  v1 = v0;
  v53 = v2;
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0, &qword_21701B9F0);
  OUTLINED_FUNCTION_36(v3);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  v54 = &v52 - v5;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB80, &qword_2170346E8);
  OUTLINED_FUNCTION_1();
  v7 = v6;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  v10 = &v52 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8DF8, qword_21701B930);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v11);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v52 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFB70, &qword_2170346D8);
  OUTLINED_FUNCTION_1();
  v19 = v18;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v20);
  v22 = &v52 - v21;
  swift_defaultActor_initialize();
  *(v0 + 112) = MEMORY[0x277D84FA0];
  v23 = [objc_opt_self() mainBundle];
  v24 = sub_2166E2BA8(v23);
  v26 = 0x6C7070612E6D6F63;
  if (v25)
  {
    v26 = v24;
  }

  v27 = 0xEF636973754D2E65;
  if (v25)
  {
    v27 = v25;
  }

  *(v0 + 120) = v26;
  *(v0 + 128) = v27;
  *(v0 + 136) = 0x636973756DLL;
  *(v0 + 144) = 0xE500000000000000;
  strcpy((v0 + 168), "page_metrics");
  *(v0 + 181) = 0;
  *(v0 + 182) = -5120;
  *(v0 + 184) = 0;
  *(v0 + 192) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9E48, &qword_21701EFA8);
  swift_allocObject();
  *(v0 + 200) = sub_217007D84();
  v28 = OBJC_IVAR____TtCO7MusicUI15UnifiedMessages11Coordinator__impressionsTracker;
  v57 = 0;
  v58 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAA8, &qword_217034518);
  sub_217007DA4();
  (*(v19 + 32))(&v1[v28], v22, v17);
  v1[OBJC_IVAR____TtCO7MusicUI15UnifiedMessages11Coordinator_isEnabled] = 2;
  *&v1[OBJC_IVAR____TtCO7MusicUI15UnifiedMessages11Coordinator_enablementTask] = 0;
  v29 = OBJC_IVAR____TtCO7MusicUI15UnifiedMessages11Coordinator_observedPlacements;
  sub_2166E2C24();
  *&v1[v29] = v30;
  v31 = OBJC_IVAR____TtCO7MusicUI15UnifiedMessages11Coordinator_cacheRequiredPlacements;
  sub_2166E2C24();
  *&v1[v31] = v32;
  *&v1[OBJC_IVAR____TtCO7MusicUI15UnifiedMessages11Coordinator_engagementLibraryObserver] = 0;
  *&v1[OBJC_IVAR____TtCO7MusicUI15UnifiedMessages11Coordinator_privacyAcknowledgementObserver] = 0;
  *&v1[OBJC_IVAR____TtCO7MusicUI15UnifiedMessages11Coordinator_subscriptions] = MEMORY[0x277D84F98];
  v33 = OBJC_IVAR____TtCO7MusicUI15UnifiedMessages11Coordinator_jsStackWillReloadObserver;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFAB8, qword_217034538);
  OUTLINED_FUNCTION_88(&v1[v33], v35, v36, v34);
  *&v1[OBJC_IVAR____TtCO7MusicUI15UnifiedMessages11Coordinator_metricsOverlay] = 0;
  v37 = OBJC_IVAR____TtCO7MusicUI15UnifiedMessages11Coordinator__pageMetrics;
  v38 = sub_21700D194();
  OUTLINED_FUNCTION_88(v16, v39, v40, v38);
  sub_216681B04(v16, v13, &qword_27CAB8DF8, qword_21701B930);
  sub_217007DA4();
  sub_216697664(v16, &qword_27CAB8DF8, qword_21701B930);
  (*(v7 + 32))(&v1[v37], v10, v52);
  *(v1 + 26) = v53;
  sub_216685F4C(0, &qword_280E29D60, 0x277CEE620);
  v41 = *(v1 + 15);
  v42 = *(v1 + 16);

  sub_21700DF14();
  v43 = sub_2166A315C(v41, v42);
  *(v1 + 20) = v43;
  sub_216685F4C(0, &qword_280E29B78, 0x277CEE3F8);
  v44 = v43;
  v45 = sub_2166A3488(0x636973754DLL, 0xE500000000000000, 49, 0xE100000000000000, v43);
  *(v1 + 19) = v45;
  v46 = [objc_allocWithZone(MEMORY[0x277CEE498]) initWithBag_];
  *&v1[OBJC_IVAR____TtCO7MusicUI15UnifiedMessages11Coordinator_engagement] = v46;
  v56.receiver = v1;
  v56.super_class = ObjectType;
  v47 = objc_msgSendSuper2(&v56, sel_init);
  v48 = sub_21700EA74();
  OUTLINED_FUNCTION_88(v54, v49, v50, v48);
  OUTLINED_FUNCTION_181();
  v51 = swift_allocObject();
  v51[2] = 0;
  v51[3] = 0;
  v51[4] = v47;
  v47;
  OUTLINED_FUNCTION_9_46();
  sub_21677BBA0();

  OUTLINED_FUNCTION_26();
}

uint64_t sub_2169FE384()
{
  OUTLINED_FUNCTION_33();
  sub_2166E360C();
  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t sub_2169FE3DC()
{
  OUTLINED_FUNCTION_33();
  v1[7] = v2;
  v1[8] = v0;
  v1[5] = v3;
  v1[6] = v4;
  v5 = sub_21700D7E4();
  v1[9] = v5;
  OUTLINED_FUNCTION_2(v5);
  v1[10] = v6;
  v1[11] = OUTLINED_FUNCTION_80();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB40, &unk_21706CE10);
  v1[12] = v7;
  OUTLINED_FUNCTION_2(v7);
  v1[13] = v8;
  v1[14] = OUTLINED_FUNCTION_80();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8148, &qword_217019070);
  v1[15] = v9;
  OUTLINED_FUNCTION_2(v9);
  v1[16] = v10;
  v1[17] = OUTLINED_FUNCTION_80();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8DF8, qword_21701B930);
  OUTLINED_FUNCTION_36(v11);
  v1[18] = OUTLINED_FUNCTION_80();
  v12 = sub_21700CFB4();
  v1[19] = v12;
  OUTLINED_FUNCTION_2(v12);
  v1[20] = v13;
  v1[21] = OUTLINED_FUNCTION_80();
  v14 = sub_21700DA84();
  v1[22] = v14;
  OUTLINED_FUNCTION_2(v14);
  v1[23] = v15;
  v1[24] = OUTLINED_FUNCTION_80();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB50, &qword_217016010);
  OUTLINED_FUNCTION_36(v16);
  v1[25] = OUTLINED_FUNCTION_80();
  v17 = sub_21700D574();
  v1[26] = v17;
  OUTLINED_FUNCTION_2(v17);
  v1[27] = v18;
  v1[28] = OUTLINED_FUNCTION_80();
  v1[29] = sub_21700EA34();
  v1[30] = sub_21700EA24();

  return MEMORY[0x2822009F8](sub_2169FE694, v0, 0);
}

uint64_t sub_2169FE694()
{
  OUTLINED_FUNCTION_31();
  sub_2169FDC8C(v0[25]);
  v2 = sub_21700E9B4();
  v0[31] = v2;
  v0[32] = v1;

  return MEMORY[0x2822009F8](sub_2169FE724, v2, v1);
}

uint64_t sub_2169FE724()
{
  OUTLINED_FUNCTION_82_0();
  v2 = v0[25];
  v1 = v0[26];
  v3 = OUTLINED_FUNCTION_58_0();
  if (__swift_getEnumTagSinglePayload(v3, v4, v1) == 1)
  {

    sub_216697664(v2, &unk_27CABFB50, &qword_217016010);
    if (qword_280E416F8 != -1)
    {
      OUTLINED_FUNCTION_0_3(&qword_280E416F8);
    }

    v5 = sub_217007CA4();
    OUTLINED_FUNCTION_29_2(v5, qword_280E73D20);
    v6 = sub_217007C84();
    sub_21700EDA4();
    OUTLINED_FUNCTION_27_2();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = OUTLINED_FUNCTION_43();
      OUTLINED_FUNCTION_36_5(v8);
      OUTLINED_FUNCTION_5_7();
      _os_log_impl(v9, v10, v11, v12, v13, 2u);
      OUTLINED_FUNCTION_26_4();
    }

    OUTLINED_FUNCTION_68_12();

    OUTLINED_FUNCTION_3();

    return v14();
  }

  else
  {
    v16 = v0[8];
    OUTLINED_FUNCTION_90_9();
    v17();
    v0[33] = OBJC_IVAR____TtCO7MusicUI15UnifiedMessages11Coordinator_metricsOverlay;
    sub_21700DF14();

    return MEMORY[0x2822009F8](sub_2169FE8FC, v16, 0);
  }
}

uint64_t sub_2169FE8FC()
{
  OUTLINED_FUNCTION_31();
  v1 = v0[32];
  v0[34] = *(v0[8] + v0[33]);
  sub_21700DF14();
  v2 = OUTLINED_FUNCTION_74_0();

  return MEMORY[0x2822009F8](v2, v3, v1);
}

uint64_t sub_2169FE978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v45 = v12;
  v13 = v12[34];
  v14 = v12[5];
  if (v13)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v44 = v14;
    sub_216860DB0(v13, sub_216A8D714, 0, isUniquelyReferenced_nonNull_native, &v44);
  }

  sub_21700DA74();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9E78, &qword_21701F060);
  v16 = sub_21700DEE4();
  OUTLINED_FUNCTION_1();
  v18 = v17;
  v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_217013DA0;
  v21 = qword_280E2A160;
  sub_21700DF14();
  if (v21 != -1)
  {
    swift_once();
  }

  v22 = v12[18];
  v23 = __swift_project_value_buffer(v16, qword_280E73A08);
  (*(v18 + 16))(v20 + v19, v23, v16);
  sub_216F0F260(v20);
  sub_21700CFA4();
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_90_9();
  sub_217007DE4();

  v24 = sub_21700D194();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v22, 1, v24);
  v26 = v12[18];
  if (EnumTagSinglePayload)
  {
    sub_216697664(v12[18], &qword_27CAB8DF8, qword_21701B930);
  }

  else
  {
    v27 = sub_21700D0F4();
    sub_216697664(v26, &qword_27CAB8DF8, qword_21701B930);
    if (v27)
    {
      v12[4] = v27;
      sub_21700DA44();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20, &unk_217015300);
      sub_21700DA64();
      v28 = OUTLINED_FUNCTION_115();
      v29(v28);
    }
  }

  v30 = sub_2169FDD04();
  if (v30)
  {
    v12[2] = v30;
    v12[3] = v31;
    sub_21700DA34();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB60, &unk_21706CE20);
    sub_21700DA64();
    v32 = OUTLINED_FUNCTION_115();
    v33(v32);
    swift_unknownObjectRelease();
  }

  v39 = swift_task_alloc();
  v12[35] = v39;
  *v39 = v12;
  v39[1] = sub_2169FED3C;
  v40 = v12[24];
  v41 = v12[21];
  v42 = v12[11];

  return MEMORY[0x28217F3A8](v42, v41, v40, v34, v35, v36, v37, v38, a9, a10, a11, a12);
}

uint64_t sub_2169FED3C()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v3 = v2;
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_28();
  *v6 = v5;
  v3[36] = v0;

  if (v0)
  {
    v7 = v3[31];
    v8 = v3[32];
    v9 = sub_2169FEF5C;
  }

  else
  {
    (*(v3[10] + 8))(v3[11], v3[9]);
    v7 = v3[31];
    v8 = v3[32];
    v9 = sub_2169FEE50;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_2169FEE50()
{
  OUTLINED_FUNCTION_115_1();
  v1 = v0[21];
  v2 = v0[19];
  v3 = v0[20];

  (*(v3 + 8))(v1, v2);
  v4 = OUTLINED_FUNCTION_115();
  v5(v4);
  v6 = OUTLINED_FUNCTION_38();
  v7(v6);
  OUTLINED_FUNCTION_68_12();

  OUTLINED_FUNCTION_3();

  return v8();
}

uint64_t sub_2169FEF5C()
{
  v2 = v0[23];
  v1 = v0[24];
  v4 = v0[21];
  v3 = v0[22];
  v6 = v0[19];
  v5 = v0[20];

  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  v7 = OUTLINED_FUNCTION_38();
  v8(v7);

  OUTLINED_FUNCTION_3();

  return v9();
}

uint64_t sub_2169FF08C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_217007DE4();
}

uint64_t sub_2169FF104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = sub_21700EA34();
  v7[5] = sub_21700EA24();
  v7[2] = a5;
  v7[3] = a6;
  v11 = swift_task_alloc();
  v7[6] = v11;
  *v11 = v7;
  v11[1] = sub_2169FF1E4;

  return sub_2169FF314(v7 + 2, a7, 0);
}

uint64_t sub_2169FF1E4()
{
  OUTLINED_FUNCTION_31();
  v2 = v1;
  OUTLINED_FUNCTION_69_0();
  v3 = *v0;
  OUTLINED_FUNCTION_28();
  *v4 = v3;

  sub_21700E9B4();
  OUTLINED_FUNCTION_71_2();
  v5 = OUTLINED_FUNCTION_24_2();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2169FF314(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4[8] = a2;
  v4[9] = a3;
  v5 = *a1;
  v6 = a1[1];
  v4[10] = v3;
  v4[11] = v5;
  v4[12] = v6;
  return OUTLINED_FUNCTION_3_79(sub_2169FF33C, v3);
}

uint64_t sub_2169FF33C()
{
  OUTLINED_FUNCTION_31();
  v2 = v0[11];
  v1 = v0[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD230, &qword_217029F48);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_217013DA0;
  *(inited + 32) = v2;
  *(inited + 40) = v1;
  sub_21700DF14();
  sub_2166E2C24();
  v0[13] = v4;
  v5 = swift_task_alloc();
  v0[14] = v5;
  *v5 = v0;
  v5[1] = sub_2169FF424;

  return sub_2169FF604();
}

uint64_t sub_2169FF424()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  OUTLINED_FUNCTION_69_0();
  v3 = *v0;
  OUTLINED_FUNCTION_28();
  *v4 = v3;

  OUTLINED_FUNCTION_43_4();

  return v5(v2);
}

uint64_t sub_2169FF528(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8DF8, qword_21701B930);
  OUTLINED_FUNCTION_36(v3);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_67_0();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_216681B04(a1, v1, &qword_27CAB8DF8, qword_21701B930);

  sub_217007DF4();
  v5 = OUTLINED_FUNCTION_116();
  return sub_216697664(v5, v6, qword_21701B930);
}

uint64_t sub_2169FF604()
{
  OUTLINED_FUNCTION_33();
  v1[10] = v2;
  v1[11] = v0;
  v1[8] = v3;
  v1[9] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8DF8, qword_21701B930);
  OUTLINED_FUNCTION_36(v5);
  v1[12] = OUTLINED_FUNCTION_80();
  v6 = OUTLINED_FUNCTION_80_9();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2169FF68C()
{
  OUTLINED_FUNCTION_115_1();
  v69 = v1;
  if (qword_280E416F8 != -1)
  {
    OUTLINED_FUNCTION_0_3(&qword_280E416F8);
  }

  v3 = v1[8];
  v4 = sub_217007CA4();
  v1[13] = OUTLINED_FUNCTION_29_2(v4, qword_280E73D20);
  sub_21700DF14();
  v5 = sub_217007C84();
  sub_21700EDA4();
  OUTLINED_FUNCTION_96_6();

  if (os_log_type_enabled(v5, v0))
  {
    OUTLINED_FUNCTION_96();
    OUTLINED_FUNCTION_64_1();
    OUTLINED_FUNCTION_72_12();
    *v3 = 136446210;
    sub_216A069B8();
    v6 = sub_21700EB94();
    v8 = sub_2166A85FC(v6, v7, &v68);

    *(v3 + 4) = v8;
    OUTLINED_FUNCTION_37_2(&dword_216679000, v9, v10, "💬 ╭ Attempting to make request for: %{public}s");
    __swift_destroy_boxed_opaque_existential_1Tm(v2);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_56_1();
  }

  v11 = [objc_opt_self() sharedPrivacyInfo];
  v12 = [v11 privacyAcknowledgementRequiredForMusic];

  if (v12)
  {
    v13 = sub_217007C84();
    sub_21700EDA4();
    OUTLINED_FUNCTION_27_2();
    if (!os_log_type_enabled(v13, v14))
    {
      goto LABEL_20;
    }

    v15 = OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_36_5(v15);
    OUTLINED_FUNCTION_5_7();
    _os_log_impl(v16, v17, v18, v19, v20, 2u);
    goto LABEL_19;
  }

  v21 = v1[11];
  v22 = OBJC_IVAR____TtCO7MusicUI15UnifiedMessages11Coordinator_isEnabled;
  v23 = *(v21 + OBJC_IVAR____TtCO7MusicUI15UnifiedMessages11Coordinator_isEnabled);
  if (v23 != 2)
  {
LABEL_12:
    if (v23)
    {
      sub_21700D194();
      v25 = OUTLINED_FUNCTION_58_0();
      if (__swift_getEnumTagSinglePayload(v25, v26, v27) == 1)
      {
        v28 = swift_task_alloc();
        v29 = OUTLINED_FUNCTION_86_10(v28);
        *v29 = v30;
        OUTLINED_FUNCTION_2_73(v29);
        OUTLINED_FUNCTION_50_15();

        return sub_216A00B98(v31, v32, v33);
      }

      else
      {
        OUTLINED_FUNCTION_58();
        OUTLINED_FUNCTION_50_15();

        return MEMORY[0x2822009F8](v64, v65, v66);
      }
    }

LABEL_17:
    v13 = sub_217007C84();
    sub_21700EDA4();
    OUTLINED_FUNCTION_27_2();
    if (!os_log_type_enabled(v13, v36))
    {
      goto LABEL_20;
    }

    OUTLINED_FUNCTION_96();
    OUTLINED_FUNCTION_44_0();
    OUTLINED_FUNCTION_91_11();
    *v21 = 136446210;
    OUTLINED_FUNCTION_7_54();
    *(v21 + 4) = sub_2166A85FC(0xD000000000000028, v37, v38);
    OUTLINED_FUNCTION_5_7();
    _os_log_impl(v39, v40, v41, v42, v43, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
    OUTLINED_FUNCTION_56_1();
LABEL_19:
    OUTLINED_FUNCTION_26_4();
LABEL_20:

    OUTLINED_FUNCTION_43_4();
    OUTLINED_FUNCTION_50_15();

    __asm { BRAA            X2, X16 }
  }

  v24 = *(v21 + OBJC_IVAR____TtCO7MusicUI15UnifiedMessages11Coordinator_enablementTask);
  v1[14] = v24;
  if (!v24)
  {
    goto LABEL_17;
  }

  if (swift_task_isCancelled())
  {

    v23 = *(v22 + v21);
    if (v23 == 2)
    {
      goto LABEL_17;
    }

    goto LABEL_12;
  }

  v46 = sub_217007C84();
  v47 = sub_21700EDA4();
  if (OUTLINED_FUNCTION_41_0(v47))
  {
    OUTLINED_FUNCTION_96();
    v68 = OUTLINED_FUNCTION_64_1();
    *v22 = 136446210;
    OUTLINED_FUNCTION_7_54();
    *(v22 + 4) = sub_2166A85FC(0xD000000000000028, v48, v49);
    OUTLINED_FUNCTION_123_0();
    _os_log_impl(v50, v51, v52, v53, v54, 0xCu);
    OUTLINED_FUNCTION_32_2();
    OUTLINED_FUNCTION_56_1();
  }

  v55 = swift_task_alloc();
  v1[15] = v55;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAD0, &unk_217013D80);
  *v55 = v1;
  v55[1] = sub_2169FFAE0;
  OUTLINED_FUNCTION_50_15();

  return MEMORY[0x282200430](v56, v57, v58, v59, v60, v61, v62, v63);
}

uint64_t sub_2169FFAE0()
{
  OUTLINED_FUNCTION_31();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_28();
  *v4 = v3;

  v5 = *(v2 + 88);
  if (v0)
  {

    v6 = sub_216A009A4;
  }

  else
  {
    v6 = sub_2169FFC0C;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_2169FFC0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_99();
  a15 = v18;
  a16 = v19;
  OUTLINED_FUNCTION_93();
  a14 = v16;
  if (*(v16 + 208))
  {

    sub_21700D194();
    v20 = OUTLINED_FUNCTION_58_0();
    if (__swift_getEnumTagSinglePayload(v20, v21, v22) == 1)
    {
      v23 = swift_task_alloc();
      v24 = OUTLINED_FUNCTION_86_10(v23);
      *v24 = v25;
      OUTLINED_FUNCTION_2_73(v24);
      OUTLINED_FUNCTION_47_8();

      return sub_216A00B98(v26, v27, v28);
    }

    else
    {
      OUTLINED_FUNCTION_58();
      OUTLINED_FUNCTION_47_8();

      return MEMORY[0x2822009F8](v47, v48, v49);
    }
  }

  else
  {
    v31 = sub_217007C84();
    v32 = sub_21700EDA4();
    if (OUTLINED_FUNCTION_41_0(v32))
    {
      OUTLINED_FUNCTION_96();
      a9 = OUTLINED_FUNCTION_64_1();
      *v17 = 136446210;
      OUTLINED_FUNCTION_17_5();
      *(v17 + 4) = sub_2166A85FC(0xD000000000000028, v33, &a9);
      OUTLINED_FUNCTION_123_0();
      _os_log_impl(v34, v35, v36, v37, v38, 0xCu);
      OUTLINED_FUNCTION_32_2();
      OUTLINED_FUNCTION_56_1();
    }

    OUTLINED_FUNCTION_43_4();
    OUTLINED_FUNCTION_47_8();

    return v41(v39, v40, v41, v42, v43, v44, v45, v46);
  }
}

uint64_t sub_2169FFDA8()
{
  OUTLINED_FUNCTION_33();
  sub_21700EA34();
  *(v0 + 128) = OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_47();
  sub_21700E9B4();
  OUTLINED_FUNCTION_71_2();
  v1 = OUTLINED_FUNCTION_24_2();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_2169FFE20()
{
  OUTLINED_FUNCTION_31();
  v1 = *(v0 + 96);

  v2 = OUTLINED_FUNCTION_74_0();
  sub_216681B04(v2, v3, v4, v5);
  sub_2169FF528(v1);
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_86_10(v6);
  *v7 = v8;
  v9 = OUTLINED_FUNCTION_2_73(v7);

  return sub_216A00B98(v9, v10, v11);
}

uint64_t sub_2169FFEC0()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_11();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_28();
  *v4 = v3;
  *(v6 + 144) = v5;

  v7 = OUTLINED_FUNCTION_80_9();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2169FFFBC()
{
  OUTLINED_FUNCTION_13_26();
  OUTLINED_FUNCTION_93();
  v1 = v0[18];
  v2 = v0[11];
  v0[19] = *(v2 + 136);
  v0[20] = *(v2 + 144);
  objc_allocWithZone(MEMORY[0x277CEE4A8]);
  sub_21700DF14();
  v3 = OUTLINED_FUNCTION_115();
  v0[21] = sub_216A06884(v3, v4, v1);
  OUTLINED_FUNCTION_120_0(v2 + 112, (v0 + 2));
  sub_21700DF14();
  sub_216AB3E44(v5);
  swift_endAccess();
  v0[22] = *(v2 + OBJC_IVAR____TtCO7MusicUI15UnifiedMessages11Coordinator_engagement);
  v6 = swift_task_alloc();
  v0[23] = v6;
  *v6 = v0;
  v6[1] = sub_216A000D0;
  OUTLINED_FUNCTION_12_7();

  return sub_216A00FB0(v7);
}

uint64_t sub_216A000D0()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_26_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_11();
  *v5 = v4;
  *(v7 + 192) = v6;
  *(v7 + 200) = v0;

  OUTLINED_FUNCTION_89_12();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_216A001F0()
{
  v172 = v0;
  v1 = v0[24];
  v2 = &unk_217013000;
  if (!v1 || (v3 = v1, (v4 = sub_216A06A88(v3)) == 0))
  {
LABEL_17:
    v17 = v0[8];
    OUTLINED_FUNCTION_120_0(v0[11] + 112, (v0 + 5));
    sub_216ABC91C(v17);
    swift_endAccess();
    sub_21700DF14();
    v18 = sub_217007C84();
    v19 = sub_21700EDA4();

    v20 = os_log_type_enabled(v18, v19);
    v21 = v0[24];
    v22 = v0[21];
    if (v20)
    {
      OUTLINED_FUNCTION_96();
      v171 = OUTLINED_FUNCTION_44_0();
      *v17 = v2[398].isa;
      sub_216A069B8();
      v23 = sub_21700EB94();
      v25 = sub_2166A85FC(v23, v24, &v171);

      *(v17 + 4) = v25;
      OUTLINED_FUNCTION_5_7();
      _os_log_impl(v26, v27, v28, v29, v30, 0xCu);
      OUTLINED_FUNCTION_32_2();
      OUTLINED_FUNCTION_26_4();
    }

LABEL_58:
    v141 = 0;
    goto LABEL_59;
  }

  v5 = v4;
  v159 = v3;
  v6 = sub_2166BF3C8(v4);
  v7 = v6;
  v8 = 0;
  v9 = v5 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v7 == v8)
    {

      v2 = &unk_217013000;
      goto LABEL_17;
    }

    if ((v5 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x21CEA0220](v8, v5);
    }

    else
    {
      if (v8 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_64;
      }

      v6 = *(v5 + 8 * v8 + 32);
    }

    if (__OFADD__(v8, 1))
    {
      goto LABEL_63;
    }

    v10 = v0[19];
    v11 = v0[20];
    v170 = v6;
    v12 = [v6 serviceType];
    v13 = sub_21700E514();
    v2 = v14;

    if (v13 == v10 && v2 == v11)
    {
      break;
    }

    v16 = sub_21700F7D4();

    if (v16)
    {
      goto LABEL_21;
    }

    ++v8;
  }

LABEL_21:

  v31 = v0[8];
  v32 = v31 + 56;
  OUTLINED_FUNCTION_38_18();
  v34 = v33 >> 6;
  v6 = sub_21700DF14();
  v35 = 0;
  *&v36 = 136446210;
  v164 = v36;
  v168 = v0;
  v169 = v34;
  v166 = v31;
  while (v9)
  {
    v37 = v35;
LABEL_27:
    v38 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v39 = (*(v31 + 48) + ((v37 << 10) | (16 * v38)));
    v40 = *v39;
    v41 = v39[1];
    sub_21700DF14();
    v42 = sub_216A06A0C(v170);
    if (v42)
    {
      v8 = v42;
      if (*(v42 + 16))
      {
        sub_21700DF14();
        v167 = v40;
        v43 = OUTLINED_FUNCTION_115();
        v45 = sub_2166AF66C(v43, v44);
        v47 = v46;

        if (v47)
        {
          v48 = *(*(v8 + 56) + 8 * v45);
          sub_21700DF14();

          if (v48 >> 62)
          {
            result = sub_21700F2B4();
            if (result)
            {
LABEL_32:
              if ((v48 & 0xC000000000000001) != 0)
              {
                v50 = MEMORY[0x21CEA0220](0, v48);
              }

              else
              {
                if (!*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  __break(1u);
                  return result;
                }

                v50 = *(v48 + 32);
              }

              v154 = v50;

              sub_21700DF14();
              v51 = sub_217007C84();
              sub_21700EDA4();
              OUTLINED_FUNCTION_101_6();
              v149 = v32;
              if (OUTLINED_FUNCTION_100_9())
              {
                v52 = OUTLINED_FUNCTION_96();
                v53 = OUTLINED_FUNCTION_45_19();
                OUTLINED_FUNCTION_4_61(v53, v54, v55, v56, v57, v58, v59, v60, v61, v53, v32, v154, v159, v62);
                v63 = OUTLINED_FUNCTION_115();
                v64 = MEMORY[0x21CE9F490](v63);
                v72 = OUTLINED_FUNCTION_54_16(v64, v65, v66, v67, v68, v69, v70, v71, v145, v150, v155, v160, v164, *(&v164 + 1), v165, v166, v40, v168, v169, v170);

                *(v52 + 4) = v72;
                v0 = v168;
                _os_log_impl(&dword_216679000, v51, v8, "💬 ╰ Received request for %{public}s", v52, 0xCu);
                __swift_destroy_boxed_opaque_existential_1Tm(v144);
                OUTLINED_FUNCTION_15_20();
                v31 = v166;
                OUTLINED_FUNCTION_6();
              }

              v73 = *(v0[11] + 112);
              sub_21700DF14();
              v74 = OUTLINED_FUNCTION_115();
              v76 = sub_216CE11AC(v74, v75, v73);

              if (v76)
              {
                v2 = v154;
                v77 = [v154 engagementRequest];
                if (v77)
                {
                  v0 = v168;
                  v8 = v77;
                  sub_216A01254();

LABEL_49:
                  v35 = v37;
                  v32 = v149;
                  v34 = v169;
                  continue;
                }

                v6 = [v154 makeDialogRequest];
                if (v6)
                {
                  goto LABEL_65;
                }

                v0 = v168;
                sub_21700DF14();
                v2 = sub_217007C84();
                sub_21700EDA4();
                OUTLINED_FUNCTION_101_6();
                if (OUTLINED_FUNCTION_100_9())
                {
                  v78 = OUTLINED_FUNCTION_96();
                  v79 = OUTLINED_FUNCTION_45_19();
                  v110 = OUTLINED_FUNCTION_4_61(v79, v101, v102, v103, v104, v105, v106, v107, v108, v144, v149, v154, v159, v109);
                  MEMORY[0x21CE9F490](v167, v41, v110);

                  OUTLINED_FUNCTION_54_16(v111, v112, v113, v114, v115, v116, v117, v118, v147, v152, v157, v162, v164, *(&v164 + 1), v165, v166, v167, v168, v169, v170);
                  OUTLINED_FUNCTION_92_7();

                  *(v78 + 4) = v41;
                  v98 = v8;
                  v99 = v2;
                  v100 = "💬 ╰ No UM found for %{public}s";
                  goto LABEL_47;
                }
              }

              else
              {
                sub_21700DF14();
                v2 = sub_217007C84();
                sub_21700EDA4();
                OUTLINED_FUNCTION_101_6();
                if (OUTLINED_FUNCTION_100_9())
                {
                  v78 = OUTLINED_FUNCTION_96();
                  v79 = OUTLINED_FUNCTION_45_19();
                  v89 = OUTLINED_FUNCTION_4_61(v79, v80, v81, v82, v83, v84, v85, v86, v87, v144, v149, v154, v159, v88);
                  MEMORY[0x21CE9F490](v167, v41, v89);

                  OUTLINED_FUNCTION_54_16(v90, v91, v92, v93, v94, v95, v96, v97, v146, v151, v156, v161, v164, *(&v164 + 1), v165, v166, v167, v168, v169, v170);
                  OUTLINED_FUNCTION_92_7();

                  *(v78 + 4) = v41;
                  v98 = v8;
                  v99 = v2;
                  v100 = "💬 Placement '%{public}s' was recently removed by the user, so prevent displaying it again.";
LABEL_47:
                  _os_log_impl(&dword_216679000, v99, v98, v100, v78, 0xCu);
                  __swift_destroy_boxed_opaque_existential_1Tm(v79);
                  v0 = v168;
                  OUTLINED_FUNCTION_6();
                  v31 = v166;
                  OUTLINED_FUNCTION_6();

                  goto LABEL_49;
                }
              }

              goto LABEL_49;
            }
          }

          else
          {
            result = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (result)
            {
              goto LABEL_32;
            }
          }
        }
      }
    }

    sub_21700DF14();
    v2 = sub_217007C84();
    sub_21700EDA4();
    OUTLINED_FUNCTION_101_6();
    if (OUTLINED_FUNCTION_100_9())
    {
      v119 = OUTLINED_FUNCTION_96();
      v120 = v32;
      v121 = OUTLINED_FUNCTION_45_19();
      OUTLINED_FUNCTION_4_61(v121, v122, v123, v124, v125, v126, v127, v128, v129, v144, v149, v154, v159, v130);
      v131 = OUTLINED_FUNCTION_115();
      MEMORY[0x21CE9F490](v131);

      OUTLINED_FUNCTION_54_16(v132, v133, v134, v135, v136, v137, v138, v139, v148, v153, v158, v163, v164, *(&v164 + 1), v165, v166, v167, v168, v169, v170);
      OUTLINED_FUNCTION_92_7();

      *(v119 + 4) = v41;
      _os_log_impl(&dword_216679000, v2, v8, "💬 ╰ No messageRequest for placement: %{public}s", v119, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v121);
      v32 = v120;
      v0 = v168;
      OUTLINED_FUNCTION_6();
      v31 = v166;
      OUTLINED_FUNCTION_6();
    }

    else
    {
    }

    v35 = v37;
    v34 = v169;
  }

  while (1)
  {
    v37 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      break;
    }

    if (v37 >= v34)
    {
      v140 = v0[21];

      goto LABEL_58;
    }

    v9 = *(v32 + 8 * v37);
    ++v35;
    if (v9)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  v141 = v6;
  v143 = *(v168 + 168);

LABEL_59:

  OUTLINED_FUNCTION_43_4();

  return v142(v141);
}

uint64_t sub_216A009A4()
{
  OUTLINED_FUNCTION_33();

  sub_21700D194();
  v0 = OUTLINED_FUNCTION_58_0();
  if (__swift_getEnumTagSinglePayload(v0, v1, v2) == 1)
  {
    v3 = swift_task_alloc();
    v4 = OUTLINED_FUNCTION_86_10(v3);
    *v4 = v5;
    v6 = OUTLINED_FUNCTION_2_73(v4);

    return sub_216A00B98(v6, v7, v8);
  }

  else
  {
    OUTLINED_FUNCTION_58();

    return MEMORY[0x2822009F8](v10, v11, v12);
  }
}

uint64_t sub_216A00A68()
{
  OUTLINED_FUNCTION_13_26();
  OUTLINED_FUNCTION_93();
  v1 = *(v0 + 200);
  v2 = v1;
  v3 = sub_217007C84();
  sub_21700ED84();

  v4 = OUTLINED_FUNCTION_105_7();
  v5 = *(v0 + 200);
  v6 = *(v0 + 168);
  if (v4)
  {
    v7 = OUTLINED_FUNCTION_96();
    v8 = OUTLINED_FUNCTION_79_14();
    *v7 = 138412290;
    v9 = v5;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    OUTLINED_FUNCTION_123_0();
    _os_log_impl(v11, v12, v13, v14, v15, 0xCu);
    sub_216697664(v8, &qword_27CABF880, &unk_21701D6E0);
    OUTLINED_FUNCTION_19_6();
    OUTLINED_FUNCTION_56_1();
  }

  else
  {
  }

  OUTLINED_FUNCTION_43_4();
  OUTLINED_FUNCTION_12_7();

  return v18(v16, v17, v18, v19, v20, v21, v22, v23);
}

uint64_t sub_216A00B98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[12] = a3;
  v4[13] = v3;
  v4[10] = a1;
  v4[11] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8DF8, qword_21701B930);
  v4[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_216A00C38, v3, 0);
}

void sub_216A00C38()
{
  v2 = *(v0 + 96);
  v3 = MEMORY[0x277D84F90];
  v4 = *(v0 + 80) + 56;
  v31 = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_38_18();
  v6 = v5 >> 6;
  v27 = v7;
  sub_21700DF14();
  v8 = 0;
  v25 = v6;
  v26 = v4;
  v28 = v2;
  if (v1)
  {
    goto LABEL_6;
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      return;
    }

    if (v9 >= v6)
    {
      break;
    }

    v1 = *(v4 + 8 * v9);
    ++v8;
    if (v1)
    {
      v8 = v9;
      do
      {
LABEL_6:
        v10 = (*(v27 + 48) + ((v8 << 10) | (16 * __clz(__rbit64(v1)))));
        v29 = v10[1];
        v30 = *v10;
        sub_21700DF14();
        v11 = v2;
        if (!v2)
        {
          v11 = sub_21700E384();
        }

        sub_216681B04(*(v0 + 88), *(v0 + 112), &qword_27CAB8DF8, qword_21701B930);
        v12 = sub_21700D194();
        v13 = OUTLINED_FUNCTION_58_0();
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, v14, v12);
        sub_21700DF14();
        v16 = *(v0 + 112);
        if (EnumTagSinglePayload == 1)
        {
          sub_216697664(*(v0 + 112), &qword_27CAB8DF8, qword_21701B930);
          v2 = v28;
          v4 = v26;
        }

        else
        {
          v17 = sub_21700D0F4();
          (*(*(v12 - 8) + 8))(v16, v12);
          v4 = v26;
          if (v17)
          {
            *(v0 + 40) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20, &unk_217015300);
            *(v0 + 16) = v17;
            sub_2166EF9C4((v0 + 16), (v0 + 48));
            sub_21700DF14();
            swift_isUniquelyReferenced_nonNull_native();
            sub_2166EF9D4();
          }

          v2 = v28;
        }

        if (v30 == 0x636E75614C707061 && v29 == 0xEE00746565685368)
        {
          v19 = 1;
        }

        else
        {
          v19 = sub_21700F7D4();
        }

        sub_2169FD23C(v11);
        v21 = v20;

        v22 = objc_allocWithZone(MEMORY[0x277CEE4C0]);
        v23 = [sub_216A06918(v30 v29];
        MEMORY[0x21CE9F610](v23);
        if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_21700E874();
        }

        v1 &= v1 - 1;
        OUTLINED_FUNCTION_115();
        sub_21700E8C4();
        v3 = v31;
        v6 = v25;
      }

      while (v1);
    }
  }

  OUTLINED_FUNCTION_43_4();

  v24(v3);
}

uint64_t sub_216A00FB0(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return OUTLINED_FUNCTION_3_79(sub_216A00FCC, 0);
}

uint64_t sub_216A00FCC()
{
  OUTLINED_FUNCTION_31();
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  v1[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFB08, &qword_217034680);
  *v2 = v0;
  v2[1] = sub_216A010D0;
  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822008A0](v3, v4, v5, 0xD000000000000015, v6, v7, v1, v8);
}

uint64_t sub_216A010D0()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v3 = v2;
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_28();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_216A011F8()
{
  OUTLINED_FUNCTION_33();

  OUTLINED_FUNCTION_3();

  return v0();
}

void sub_216A01254()
{
  OUTLINED_FUNCTION_49();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0, &qword_21701B9F0);
  OUTLINED_FUNCTION_36(v9);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_79_0();
  if (qword_280E416F8 != -1)
  {
    OUTLINED_FUNCTION_0_3(&qword_280E416F8);
  }

  v11 = sub_217007CA4();
  OUTLINED_FUNCTION_29_2(v11, qword_280E73D20);
  v12 = v8;
  sub_21700DF14();
  v13 = sub_217007C84();
  v14 = sub_21700EDA4();

  if (os_log_type_enabled(v13, v14))
  {
    v21 = v2;
    v15 = OUTLINED_FUNCTION_45_19();
    OUTLINED_FUNCTION_79_14();
    v22 = OUTLINED_FUNCTION_56_14();
    *v15 = 136446722;
    OUTLINED_FUNCTION_17_5();
    *(v15 + 4) = sub_2166A85FC(0xD000000000000039, v16, &v22);
    *(v15 + 12) = 2082;
    *(v15 + 14) = sub_2166A85FC(v6, v4, &v22);
    *(v15 + 22) = 2114;
    *(v15 + 24) = v12;
    *v0 = v8;
    v17 = v12;
    _os_log_impl(&dword_216679000, v13, v14, "💬 %{public}s Engagement request for '%{public}s': '%{public}@'", v15, 0x20u);
    sub_216697664(v0, &qword_27CABF880, &unk_21701D6E0);
    OUTLINED_FUNCTION_6();
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6();
    v2 = v21;
    OUTLINED_FUNCTION_6();
  }

  if (v8)
  {
    v18 = sub_21700EA74();
    OUTLINED_FUNCTION_22_16(v18);
    OUTLINED_FUNCTION_53();
    v19 = swift_allocObject();
    v19[2] = 0;
    v19[3] = 0;
    v19[4] = v2;
    v19[5] = v12;
    v20 = v12;

    OUTLINED_FUNCTION_9_46();
    sub_21677BBA0();
  }

  OUTLINED_FUNCTION_26();
}

void sub_216A0148C()
{
  OUTLINED_FUNCTION_49();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABD770, &unk_217015610);
  OUTLINED_FUNCTION_1();
  v9 = v8;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_79_0();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  OUTLINED_FUNCTION_1();
  v13 = v12;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v14);
  v16 = v39 - v15;
  if (qword_280E2B900 != -1)
  {
    swift_once();
  }

  if ((byte_280E73A81 & 1) != 0 || (v17 = *(v2 + OBJC_IVAR____TtCO7MusicUI15UnifiedMessages11Coordinator_isEnabled), v17 == 2) || (v17 & 1) == 0)
  {
    if (qword_280E416F8 != -1)
    {
      OUTLINED_FUNCTION_0_3(&qword_280E416F8);
    }

    v23 = sub_217007CA4();
    OUTLINED_FUNCTION_29_2(v23, qword_280E73D20);
    v40 = sub_217007C84();
    sub_21700ED84();
    OUTLINED_FUNCTION_27_2();
    if (os_log_type_enabled(v40, v24))
    {
      v25 = OUTLINED_FUNCTION_43();
      *v25 = 0;
      _os_log_impl(&dword_216679000, v40, v7, "💬 Sheet presentation disabled, skipped presenting sheet", v25, 2u);
      OUTLINED_FUNCTION_15_20();
    }
  }

  else
  {
    if (*(v2 + 192) != 1)
    {
      v28 = *(v2 + OBJC_IVAR____TtCO7MusicUI15UnifiedMessages11Coordinator_metricsOverlay);
      if (v28)
      {
        v29 = sub_21700DF14();
        sub_2169FD23C(v29);
        v40 = v30;

        v28 = sub_21700E344();
      }

      [v6 setMetricsOverlay_];

      v31 = *(v2 + 152);
      v40 = *(v2 + 160);
      sub_2170077F4();
      v39[1] = swift_allocObject();
      v39[0] = v31;
      v32 = v40;
      v33 = v6;
      v40 = sub_2170077D4();
      v34 = swift_allocObject();
      *(v34 + 16) = v2;
      *(v34 + 24) = v4;

      sub_2170077C4();
      sub_21700D4D4();
      sub_21700E094();
      v35 = type metadata accessor for ModalFlowAction(0);
      v41[3] = v35;
      v41[4] = sub_216A06C54(qword_280E426A8, type metadata accessor for ModalFlowAction, &unk_217063664);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v41);
      sub_21700D234();
      *(boxed_opaque_existential_1 + *(v35 + 20)) = v40;
      type metadata accessor for FlowAction.Destination(0);
      swift_storeEnumTagMultiPayload();
      *(boxed_opaque_existential_1 + *(v35 + 24)) = xmmword_217015580;
      (*(v9 + 104))(v1, *MEMORY[0x277D21E18], v7);
      type metadata accessor for ObjectGraph(0);

      sub_21700D4F4();
      sub_21700D5E4();

      v37 = OUTLINED_FUNCTION_74_0();
      v38(v37);
      (*(v13 + 8))(v16, v11);
      __swift_destroy_boxed_opaque_existential_1Tm(v41);
      goto LABEL_21;
    }

    if (qword_280E416F8 != -1)
    {
      OUTLINED_FUNCTION_0_3(&qword_280E416F8);
    }

    v18 = sub_217007CA4();
    OUTLINED_FUNCTION_29_2(v18, qword_280E73D20);
    v40 = sub_217007C84();
    sub_21700EDA4();
    OUTLINED_FUNCTION_27_2();
    if (os_log_type_enabled(v40, v19))
    {
      v20 = OUTLINED_FUNCTION_96();
      v21 = OUTLINED_FUNCTION_45_19();
      v41[0] = v21;
      *v20 = 136446210;
      OUTLINED_FUNCTION_17_5();
      *(v20 + 4) = sub_2166A85FC(0xD00000000000001BLL, v22, v41);
      _os_log_impl(&dword_216679000, v40, v7, "💬 ⛔ %{public}s Sheet presentation suppressed while purchasing subscription.", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
      OUTLINED_FUNCTION_26_4();
      OUTLINED_FUNCTION_15_20();

LABEL_21:
      OUTLINED_FUNCTION_26();
      return;
    }
  }

  OUTLINED_FUNCTION_26();
}

void sub_216A019FC(int a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtCO7MusicUI15UnifiedMessages11Coordinator_isEnabled;
  v4 = *(v1 + OBJC_IVAR____TtCO7MusicUI15UnifiedMessages11Coordinator_isEnabled);
  if (v4 == 2 || (v4 & 1) == 0)
  {
    v9 = *(v1 + OBJC_IVAR____TtCO7MusicUI15UnifiedMessages11Coordinator_observedPlacements);
    v10 = 1 << v9[32];
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v9 + 7);
    v25 = OBJC_IVAR____TtCO7MusicUI15UnifiedMessages11Coordinator_isEnabled;
    v26 = OBJC_IVAR____TtCO7MusicUI15UnifiedMessages11Coordinator_engagement;
    v13 = (v10 + 63) >> 6;
    sub_21700DF14();
    v14 = 0;
    if (v12)
    {
      goto LABEL_12;
    }

    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= v13)
      {

        v3 = v25;
        v2 = a1;
        goto LABEL_15;
      }

      v12 = *&v9[8 * v15 + 56];
      ++v14;
      if (v12)
      {
        v14 = v15;
        do
        {
LABEL_12:
          v12 &= v12 - 1;
          v16 = *(v1 + v26);
          sub_21700DF14();
          v17 = sub_21700E4D4();
          v18 = sub_21700E4D4();
          [v16 removeObserver:v1 placement:v17 serviceType:v18];
        }

        while (v12);
        continue;
      }
    }

    __break(1u);
    goto LABEL_24;
  }

  v5 = *(v1 + OBJC_IVAR____TtCO7MusicUI15UnifiedMessages11Coordinator_engagement);
  sub_2169FCC9C(*(v1 + OBJC_IVAR____TtCO7MusicUI15UnifiedMessages11Coordinator_observedPlacements));
  v7 = sub_216E64354(v6);
  v8 = sub_21700E4D4();
  sub_216A06FF8(v1, v7, v8, v5);

LABEL_15:
  v19 = *(v1 + v3);
  if (v19 == 2)
  {
    if (v2 == 2)
    {
      return;
    }

LABEL_20:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFBD0, &qword_217034768);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_217013DA0;
    sub_21700F364();
    *(inited + 72) = *(v1 + v3) & 1;
    v13 = sub_21700E384();
    v9 = [objc_opt_self() defaultCenter];
    if (qword_280E29C40 == -1)
    {
LABEL_21:
      v21 = qword_280E739E0;
      sub_2169FD720(v13);
      v23 = v22;

      sub_216ED18A0(v21, v1, v23, v9);

      return;
    }

LABEL_24:
    swift_once();
    goto LABEL_21;
  }

  if (v2 == 2 || ((v19 ^ v2) & 1) != 0)
  {
    goto LABEL_20;
  }
}

void sub_216A01D14(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtCO7MusicUI15UnifiedMessages11Coordinator_isEnabled);
  *(v1 + OBJC_IVAR____TtCO7MusicUI15UnifiedMessages11Coordinator_isEnabled) = a1;
  sub_216A019FC(v2);
}

id sub_216A01D2C()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  result = sub_2166AA548(0xD000000000000014, 0x800000021707F690);
  if (result)
  {
    v2 = result;
    v3 = sub_21700E4D4();
    v4 = [v2 BOOLForKey_];

    return (v4 ^ 1);
  }

  return result;
}

uint64_t sub_216A01DF0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8DF8, qword_21701B930);
  OUTLINED_FUNCTION_36(v3);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_67_0();
  sub_216681B04(a1, v1, &qword_27CAB8DF8, qword_21701B930);
  return sub_2169FF528(v1);
}

void sub_216A01E8C(unsigned __int8 *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0, &qword_21701B9F0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17 - v5;
  v7 = *a1;
  if (qword_280E416F8 != -1)
  {
    swift_once();
  }

  v8 = sub_217007CA4();
  __swift_project_value_buffer(v8, qword_280E73D20);
  v9 = sub_217007C84();
  v10 = sub_21700EDA4();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 67240192;
    *(v11 + 4) = v7;
    _os_log_impl(&dword_216679000, v9, v10, "💬 🔄 GDPR has changed - isPrivacyAcknowledgementRequired: %{BOOL,public}d", v11, 8u);
    MEMORY[0x21CEA1440](v11, -1, -1);
  }

  if ((v7 & 1) == 0)
  {
    v12 = sub_217007C84();
    v13 = sub_21700EDA4();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_216679000, v12, v13, "💬 ┃ 🟢 GDPR has been acknowledged, start checking for enablement.", v14, 2u);
      MEMORY[0x21CEA1440](v14, -1, -1);
    }

    v15 = sub_21700EA74();
    __swift_storeEnumTagSinglePayload(v6, 1, 1, v15);
    v16 = swift_allocObject();
    v16[2] = 0;
    v16[3] = 0;
    v16[4] = a2;

    sub_21677BBA0();
  }
}

uint64_t sub_216A020DC()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_78_10();
  Strong = swift_weakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v2 = Strong;
    v3 = sub_216A0219C;
LABEL_5:

    return MEMORY[0x2822009F8](v3, v2, 0);
  }

  OUTLINED_FUNCTION_75_9(v0[8] + 16);
  v4 = swift_weakLoadStrong();
  v0[10] = v4;
  if (v4)
  {
    OUTLINED_FUNCTION_31_28();
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_3();

  return v5();
}

uint64_t sub_216A0219C()
{
  OUTLINED_FUNCTION_33();
  sub_2166E3A90();

  v0 = OUTLINED_FUNCTION_33_0();

  return MEMORY[0x2822009F8](v0, v1, v2);
}

uint64_t sub_216A02200()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_75_9(*(v0 + 64) + 16);
  Strong = swift_weakLoadStrong();
  *(v0 + 80) = Strong;
  if (Strong)
  {
    OUTLINED_FUNCTION_31_28();

    return MEMORY[0x2822009F8](v3, v2, 0);
  }

  else
  {
    OUTLINED_FUNCTION_3();

    return v4();
  }
}

uint64_t sub_216A02298()
{
  OUTLINED_FUNCTION_33();
  *(*(v0 + 80) + OBJC_IVAR____TtCO7MusicUI15UnifiedMessages11Coordinator_privacyAcknowledgementObserver) = 0;

  OUTLINED_FUNCTION_3();

  return v1();
}

uint64_t sub_216A02308()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_26_0();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 144) = v0;

  OUTLINED_FUNCTION_89_12();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

void sub_216A02424()
{
  OUTLINED_FUNCTION_115_1();
  v23 = v1;
  sub_216A01D14(*(v1 + 152));

  if (qword_280E416F8 != -1)
  {
    OUTLINED_FUNCTION_0_3(&qword_280E416F8);
  }

  v2 = *(v1 + 80);
  v3 = sub_217007CA4();
  OUTLINED_FUNCTION_29_2(v3, qword_280E73D20);

  v4 = sub_217007C84();
  sub_21700EDA4();
  OUTLINED_FUNCTION_96_6();

  if (os_log_type_enabled(v4, v0))
  {
    OUTLINED_FUNCTION_96();
    v22 = OUTLINED_FUNCTION_64_1();
    OUTLINED_FUNCTION_95_10(4.8751e-34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFBB8, &qword_21703A8B0);
    v5 = sub_21700E594();
    v7 = sub_2166A85FC(v5, v6, &v22);

    *(v2 + 4) = v7;
    OUTLINED_FUNCTION_37_2(&dword_216679000, v8, v9, "💬 ┃ Unified Messages enabled?: %{public}s");
    OUTLINED_FUNCTION_32_2();
    OUTLINED_FUNCTION_56_1();
  }

  OUTLINED_FUNCTION_97_8();
  if (v11 || (v10 & 1) == 0)
  {
    v12 = sub_217007C84();
    sub_21700EDA4();
    OUTLINED_FUNCTION_27_2();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = OUTLINED_FUNCTION_43();
      OUTLINED_FUNCTION_36_5(v14);
      OUTLINED_FUNCTION_5_7();
      _os_log_impl(v15, v16, v17, v18, v19, 2u);
      OUTLINED_FUNCTION_26_4();
    }
  }

  else
  {
    sub_216A03328(*(v1 + 88));
  }

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_50_15();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_216A025F8()
{
  v42 = v1;

  if (qword_280E416F8 != -1)
  {
    OUTLINED_FUNCTION_0_3(&qword_280E416F8);
  }

  v2 = v1[18];
  v40 = sub_217007CA4();
  OUTLINED_FUNCTION_29_2(v40, qword_280E73D20);
  v3 = v2;
  v4 = sub_217007C84();
  sub_21700ED84();

  if (OUTLINED_FUNCTION_105_7())
  {
    v5 = v1[18];
    v6 = OUTLINED_FUNCTION_96();
    v7 = OUTLINED_FUNCTION_79_14();
    *v6 = 138543362;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    OUTLINED_FUNCTION_76_10(&dword_216679000, v10, v0, "💬 ❌ Failed to check if Unified Messages is enabled, disabling feature: %{public}@");
    sub_216697664(v7, &qword_27CABF880, &unk_21701D6E0);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_19_6();
  }

  v39 = v1[18];
  v11 = v1[16];
  v13 = v1[12];
  v12 = v1[13];
  v14 = v1[10];
  v15 = v1[11];

  *(v14 + v11) = 0;

  sub_216A01D14(0);
  v16 = swift_allocObject();
  swift_weakInit();
  OUTLINED_FUNCTION_181();
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = v13;
  v17[4] = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFBA8, &qword_217034730);
  sub_2166EF228(&qword_27CABFBB0, &qword_27CABFBA8, &qword_217034730);

  OUTLINED_FUNCTION_38();
  sub_21700D1D4();
  sub_21700D1F4();

  __swift_destroy_boxed_opaque_existential_1Tm(v1 + 2);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFAB8, qword_217034538);
  __swift_storeEnumTagSinglePayload(v12, 0, 1, v18);
  v19 = OBJC_IVAR____TtCO7MusicUI15UnifiedMessages11Coordinator_jsStackWillReloadObserver;
  OUTLINED_FUNCTION_120_0(v14 + OBJC_IVAR____TtCO7MusicUI15UnifiedMessages11Coordinator_jsStackWillReloadObserver, (v1 + 7));
  sub_216A07378(v12, v14 + v19);
  swift_endAccess();
  if (qword_280E416F8 != -1)
  {
    OUTLINED_FUNCTION_0_3(&qword_280E416F8);
  }

  v20 = v1[10];
  OUTLINED_FUNCTION_29_2(v40, qword_280E73D20);

  v21 = sub_217007C84();
  sub_21700EDA4();
  OUTLINED_FUNCTION_96_6();

  if (os_log_type_enabled(v21, v12))
  {
    OUTLINED_FUNCTION_96();
    v41 = OUTLINED_FUNCTION_64_1();
    OUTLINED_FUNCTION_95_10(4.8751e-34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFBB8, &qword_21703A8B0);
    v22 = sub_21700E594();
    v24 = sub_2166A85FC(v22, v23, &v41);

    *(v20 + 4) = v24;
    OUTLINED_FUNCTION_37_2(&dword_216679000, v25, v26, "💬 ┃ Unified Messages enabled?: %{public}s");
    OUTLINED_FUNCTION_32_2();
    OUTLINED_FUNCTION_56_1();
  }

  OUTLINED_FUNCTION_97_8();
  if (v28 || (v27 & 1) == 0)
  {
    v29 = sub_217007C84();
    sub_21700EDA4();
    OUTLINED_FUNCTION_27_2();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = OUTLINED_FUNCTION_43();
      OUTLINED_FUNCTION_36_5(v31);
      OUTLINED_FUNCTION_5_7();
      _os_log_impl(v32, v33, v34, v35, v36, 2u);
      OUTLINED_FUNCTION_26_4();
    }
  }

  else
  {
    sub_216A03328(v1[11]);
  }

  OUTLINED_FUNCTION_3();

  return v37();
}

uint64_t sub_216A02A00()
{
  OUTLINED_FUNCTION_31();
  v3 = v2;
  OUTLINED_FUNCTION_69_0();
  v5 = v4;
  OUTLINED_FUNCTION_26_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_28();
  *v8 = v7;

  if (v0)
  {
    v9 = *(v7 + 8);

    return v9();
  }

  else
  {
    v11 = *(v5 + 24);
    *(v5 + 40) = v3 & 1;

    return MEMORY[0x2822009F8](sub_216A02B38, v11, 0);
  }
}

uint64_t sub_216A02B38()
{
  **(v0 + 16) = *(v0 + 40);
  OUTLINED_FUNCTION_3();
  return v1();
}

uint64_t sub_216A02B68()
{
  OUTLINED_FUNCTION_13_26();
  OUTLINED_FUNCTION_93();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_28();
  *v5 = v4;
  *v5 = *v1;
  *(v4 + 64) = v0;

  if (!v0)
  {
    *(v4 + 72) = v3;
  }

  OUTLINED_FUNCTION_89_12();
  OUTLINED_FUNCTION_12_7();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_216A02CA8()
{
  OUTLINED_FUNCTION_33();

  OUTLINED_FUNCTION_43_4();
  v2 = *(v0 + 72) & 1;

  return v1(v2);
}

uint64_t sub_216A02D0C()
{
  OUTLINED_FUNCTION_33();

  OUTLINED_FUNCTION_43_4();

  return v0(0);
}

uint64_t sub_216A02D6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0, &qword_21701B9F0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  if (qword_280E416F8 != -1)
  {
    swift_once();
  }

  v10 = sub_217007CA4();
  __swift_project_value_buffer(v10, qword_280E73D20);
  v11 = sub_217007C84();
  v12 = sub_21700EDA4();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_216679000, v11, v12, "💬 JSStack reloading, attempting setup again...", v13, 2u);
    MEMORY[0x21CEA1440](v13, -1, -1);
  }

  v14 = sub_21700EA74();
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = a2;
  v15[5] = a3;
  v15[6] = a4;

  sub_21677BBA0();
}

uint64_t sub_216A02F34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[8] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFB78, &qword_2170346E0);
  v6[11] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFAB8, qword_217034538);
  v6[12] = v7;
  v6[13] = *(v7 - 8);
  v6[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_216A0303C, 0, 0);
}

uint64_t sub_216A0303C()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_78_10();
  Strong = swift_weakLoadStrong();
  *(v0 + 120) = Strong;
  if (Strong)
  {
    *(v0 + 128) = OBJC_IVAR____TtCO7MusicUI15UnifiedMessages11Coordinator_jsStackWillReloadObserver;

    return MEMORY[0x2822009F8](sub_216A030F8, Strong, 0);
  }

  else
  {

    OUTLINED_FUNCTION_3();

    return v2();
  }
}

uint64_t sub_216A030F8()
{
  OUTLINED_FUNCTION_31();
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[11];
  OUTLINED_FUNCTION_75_9(v2 + v1);
  sub_216681B04(v2 + v1, v3, &qword_27CABFB78, &qword_2170346E0);
  v4 = OUTLINED_FUNCTION_33_0();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_216A03180()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = OUTLINED_FUNCTION_58_0();
  if (__swift_getEnumTagSinglePayload(v3, v4, v1) == 1)
  {
    sub_216697664(v2, &qword_27CABFB78, &qword_2170346E0);
  }

  else
  {
    OUTLINED_FUNCTION_90_9();
    v5();
    sub_21700CC24();
    v6 = OUTLINED_FUNCTION_74_0();
    v7(v6);
  }

  OUTLINED_FUNCTION_47_8();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_216A0325C()
{
  OUTLINED_FUNCTION_33();
  sub_2166E3BD0(*(v0 + 72), *(v0 + 80));
  v1 = OUTLINED_FUNCTION_33_0();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_216A032BC()
{
  OUTLINED_FUNCTION_33();

  OUTLINED_FUNCTION_3();

  return v0();
}

void sub_216A03328(uint64_t a1)
{
  v2 = v1;
  if (qword_280E416F8 != -1)
  {
    swift_once();
  }

  v4 = sub_217007CA4();
  __swift_project_value_buffer(v4, qword_280E73D20);
  v5 = sub_217007C84();
  v6 = sub_21700EDA4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v7 = 136446210;
    *(v7 + 4) = sub_2166A85FC(0xD000000000000013, 0x8000000217086400, &v19);
    _os_log_impl(&dword_216679000, v5, v6, "💬 ┃┏ Starting %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x21CEA1440](v8, -1, -1);
    MEMORY[0x21CEA1440](v7, -1, -1);
  }

  sub_216A036CC();
  v9 = [objc_allocWithZone(MEMORY[0x277D7FA50]) init];
  [v9 reportAppIconBadgeActionMetrics];

  if (!*(v2 + 184))
  {
    type metadata accessor for UnifiedMessages.DataStore(0);
    swift_allocObject();

    v10 = sub_216B5C4C4(v2, a1);

    sub_216B5A830(sub_216A073E8, v2);

    sub_216B5ACE8();
    sub_216B5ADB4();
    sub_216B5AE94(a1);
    *(v2 + 184) = v10;
  }

  sub_2169FCF54(a1);
  v11 = sub_216A01D2C();
  sub_216A01D14(v11 & 1);

  v12 = sub_217007C84();
  v13 = sub_21700EDA4();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 67109120;
    *(v14 + 4) = sub_216A01D2C() & 1;

    _os_log_impl(&dword_216679000, v12, v13, "💬 ┃┃ isSubscriptionContentAllowed = %{BOOL}d", v14, 8u);
    MEMORY[0x21CEA1440](v14, -1, -1);
  }

  else
  {
  }

  oslog = sub_217007C84();
  v15 = sub_21700EDA4();
  if (os_log_type_enabled(oslog, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v19 = v17;
    *v16 = 136446210;
    *(v16 + 4) = sub_2166A85FC(0xD000000000000013, 0x8000000217086400, &v19);
    _os_log_impl(&dword_216679000, oslog, v15, "💬 ┗┗ Ending %{public}s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    MEMORY[0x21CEA1440](v17, -1, -1);
    MEMORY[0x21CEA1440](v16, -1, -1);
  }
}

uint64_t sub_216A036CC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0, &qword_21701B9F0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v14 - v3;
  if (qword_280E416F8 != -1)
  {
    swift_once();
  }

  v5 = sub_217007CA4();
  __swift_project_value_buffer(v5, qword_280E73D20);
  v6 = sub_217007C84();
  v7 = sub_21700EDA4();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136446210;
    *(v8 + 4) = sub_2166A85FC(0xD000000000000010, 0x8000000217086420, &v15);
    _os_log_impl(&dword_216679000, v6, v7, "💬 ┃┃ %{public}s Attempt to add cache policy.", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x21CEA1440](v9, -1, -1);
    MEMORY[0x21CEA1440](v8, -1, -1);
  }

  v10 = sub_21700EA74();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v10);
  v11 = sub_216A06C54(&unk_280E41BA8, type metadata accessor for UnifiedMessages.Coordinator, &unk_217034578);
  v12 = swift_allocObject();
  v12[2] = v1;
  v12[3] = v11;
  v12[4] = v1;
  swift_retain_n();
  sub_21677BBA0();
}

uint64_t sub_216A03928()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  v1 = *(v0[20] + 152);
  OUTLINED_FUNCTION_17_5();
  OUTLINED_FUNCTION_88_8();
  v2 = sub_21700E4D4();
  v3 = [v1 arrayForKey_];
  v0[21] = v3;

  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_216A03A84;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFBC0, &qword_217034748);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_216A04080;
  v0[13] = &block_descriptor_92_0;
  v0[14] = v4;
  [v3 valueWithCompletion_];
  OUTLINED_FUNCTION_47_8();

  return MEMORY[0x282200938](v5);
}

uint64_t sub_216A03A84()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_11();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 176) = v4;
  v5 = *(v3 + 160);
  if (v4)
  {
    v6 = sub_216A03FF8;
  }

  else
  {
    v6 = sub_216A03B98;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_216A03B98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_98_10();
  OUTLINED_FUNCTION_82_0();
  v19 = *(v18 + 144);
  sub_21700E814();

  v20 = swift_task_alloc();
  *(v18 + 184) = v20;
  *v20 = v18;
  OUTLINED_FUNCTION_25_26(v20);
  OUTLINED_FUNCTION_74_12();

  return sub_216A04118();
}

uint64_t sub_216A03D6C()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_11();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_28();
  *v4 = v3;
  *(v6 + 153) = v5;

  v7 = OUTLINED_FUNCTION_80_9();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_216A03E68()
{
  OUTLINED_FUNCTION_82_0();
  if (qword_280E416F8 != -1)
  {
    OUTLINED_FUNCTION_0_3(&qword_280E416F8);
  }

  v3 = sub_217007CA4();
  OUTLINED_FUNCTION_29_2(v3, qword_280E73D20);
  v4 = sub_217007C84();
  sub_21700EDA4();
  OUTLINED_FUNCTION_27_2();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v1 + 153);
    swift_slowAlloc();
    OUTLINED_FUNCTION_44_0();
    OUTLINED_FUNCTION_91_11();
    *v0 = 136446466;
    OUTLINED_FUNCTION_7_54();
    *(v0 + 4) = sub_2166A85FC(0xD000000000000010, v7, v8);
    *(v0 + 12) = 1024;
    *(v0 + 14) = v6;
    OUTLINED_FUNCTION_5_7();
    _os_log_impl(v9, v10, v11, v12, v13, 0x12u);
    __swift_destroy_boxed_opaque_existential_1Tm(v2);
    OUTLINED_FUNCTION_56_1();
    OUTLINED_FUNCTION_26_4();
  }

  if (*(v1 + 153) == 1)
  {
    v14 = *(v1 + 160);
    v15 = *(v14 + OBJC_IVAR____TtCO7MusicUI15UnifiedMessages11Coordinator_engagement);
    sub_2169FCC9C(*(v14 + OBJC_IVAR____TtCO7MusicUI15UnifiedMessages11Coordinator_cacheRequiredPlacements));
    v17 = sub_216E64354(v16);
    v18 = sub_21700E4D4();
    sub_216A06D30(1, v17, v18, v15);
  }

  OUTLINED_FUNCTION_3();

  return v19();
}

uint64_t sub_216A03FF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_31();
  v11 = *(v10 + 176);
  swift_willThrow();

  v12 = swift_task_alloc();
  *(v10 + 184) = v12;
  *v12 = v10;
  OUTLINED_FUNCTION_25_26(v12);

  return sub_216A04118();
}

uint64_t *sub_216A04080(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a3;
  result = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v8 = *result;
  if (a4)
  {
    v9 = a4;

    return sub_216A2E2E0();
  }

  else if (a2)
  {
    v10 = a2;

    return sub_216A294DC(v8, v10, v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_216A04138()
{
  OUTLINED_FUNCTION_115_1();
  v1 = objc_opt_self();
  v2 = [v1 standardUserDefaults];
  OUTLINED_FUNCTION_70_9();
  v3 = sub_21700E4D4();
  v4 = [v2 objectForKey_];

  if (v4)
  {
    sub_21700F1E4();
    swift_unknownObjectRelease();
    sub_216697664(v0 + 16, &unk_27CABF7A0, &unk_217014D20);
    v5 = [v1 standardUserDefaults];
    OUTLINED_FUNCTION_70_9();
    v6 = sub_21700E4D4();
    v7 = [v5 BOOLForKey_];

    if (qword_280E416F8 != -1)
    {
      OUTLINED_FUNCTION_0_3(&qword_280E416F8);
    }

    v8 = sub_217007CA4();
    OUTLINED_FUNCTION_29_2(v8, qword_280E73D20);
    v9 = sub_217007C84();
    v10 = sub_21700EDA4();
    if (OUTLINED_FUNCTION_41_0(v10))
    {
      swift_slowAlloc();
      OUTLINED_FUNCTION_64_1();
      *v3 = 136446466;
      OUTLINED_FUNCTION_17_5();
      v11 = OUTLINED_FUNCTION_70_9();
      *(v3 + 1) = sub_2166A85FC(v11, v12, v13);
      *(v3 + 6) = 1026;
      *(v3 + 14) = v7;
      OUTLINED_FUNCTION_123_0();
      _os_log_impl(v14, v15, v16, v17, v18, 0x12u);
      OUTLINED_FUNCTION_32_2();
      OUTLINED_FUNCTION_56_1();
    }

    OUTLINED_FUNCTION_43_4();

    return v19(v7);
  }

  else
  {
    v21 = *(v0 + 56);
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    sub_216697664(v0 + 16, &unk_27CABF7A0, &unk_217014D20);
    type metadata accessor for JSIntentDispatcher();
    v22 = *(v21 + 208);
    sub_21700D4D4();
    OUTLINED_FUNCTION_38();
    sub_21700E094();
    *(v0 + 64) = *(v0 + 48);
    *(v0 + 72) = sub_2166E5204(0xD00000000000001FLL, 0x80000002170864A0, v22);
    v23 = swift_task_alloc();
    *(v0 + 80) = v23;
    *v23 = v0;
    v23[1] = sub_216A0444C;

    return sub_2166E5748();
  }
}

uint64_t sub_216A0444C()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_26_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_11();
  *v5 = v4;
  *(v7 + 96) = v6;
  *(v7 + 88) = v0;

  OUTLINED_FUNCTION_89_12();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_216A0458C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_98_10();
  OUTLINED_FUNCTION_82_0();
  if (qword_280E416F8 != -1)
  {
    OUTLINED_FUNCTION_0_3(&qword_280E416F8);
  }

  v12 = sub_217007CA4();
  OUTLINED_FUNCTION_29_2(v12, qword_280E73D20);
  v13 = sub_217007C84();
  v14 = sub_21700EDA4();
  if (OUTLINED_FUNCTION_41_0(v14))
  {
    v15 = *(v10 + 96);
    swift_slowAlloc();
    a10 = OUTLINED_FUNCTION_64_1();
    *v11 = 136446466;
    OUTLINED_FUNCTION_7_54();
    v16 = OUTLINED_FUNCTION_70_9();
    *(v11 + 4) = sub_2166A85FC(v16, v17, v18);
    *(v11 + 12) = 1026;
    *(v11 + 14) = (v15 >> 8) & 1;
    OUTLINED_FUNCTION_123_0();
    _os_log_impl(v19, v20, v21, v22, v23, 0x12u);
    OUTLINED_FUNCTION_32_2();
    OUTLINED_FUNCTION_56_1();
  }

  OUTLINED_FUNCTION_43_4();
  OUTLINED_FUNCTION_74_12();

  return v26(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10);
}

uint64_t sub_216A046C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_98_10();
  OUTLINED_FUNCTION_82_0();
  if (qword_280E416F8 != -1)
  {
    OUTLINED_FUNCTION_0_3(&qword_280E416F8);
  }

  v12 = sub_217007CA4();
  OUTLINED_FUNCTION_29_2(v12, qword_280E73D20);
  v13 = sub_217007C84();
  v14 = sub_21700ED84();
  v15 = os_log_type_enabled(v13, v14);
  v16 = *(v10 + 88);
  if (v15)
  {
    v17 = OUTLINED_FUNCTION_96();
    OUTLINED_FUNCTION_45_19();
    OUTLINED_FUNCTION_72_12();
    *v17 = 136446210;
    OUTLINED_FUNCTION_7_54();
    v18 = OUTLINED_FUNCTION_70_9();
    *(v17 + 4) = sub_2166A85FC(v18, v19, v20);
    OUTLINED_FUNCTION_76_10(&dword_216679000, v21, v14, "💬 ┃┃ %{public}s Could not check isCachePolicyEnabled, so setting to false");
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_19_6();
  }

  OUTLINED_FUNCTION_43_4();
  OUTLINED_FUNCTION_74_12();

  return v24(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10);
}

uint64_t sub_216A047EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 296) = a4;
  *(v5 + 304) = a5;
  return MEMORY[0x2822009F8](sub_216A0480C, a5, 0);
}

uint64_t sub_216A0480C()
{
  OUTLINED_FUNCTION_33();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB30, &unk_2170198C0);
  sub_21700D4D4();
  OUTLINED_FUNCTION_90_9();
  sub_21700E094();
  v1 = v0[33];
  v2 = v0[34];
  v0[39] = v1;
  v0[40] = v2;
  v0[41] = __swift_project_boxed_opaque_existential_1(v0 + 30, v1);
  v0[42] = *(v2 + 8);
  v0[43] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0xD4C7000000000000;
  sub_21700EA34();
  v0[44] = OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_47();
  sub_21700E9B4();
  OUTLINED_FUNCTION_71_2();
  v3 = OUTLINED_FUNCTION_24_2();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_216A048DC()
{
  OUTLINED_FUNCTION_13_26();
  OUTLINED_FUNCTION_93();
  v1 = v0[42];

  v2 = OUTLINED_FUNCTION_74_0();
  v0[35] = v1(v2);
  v0[36] = v3;
  OUTLINED_FUNCTION_12_7();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_216A04960()
{
  OUTLINED_FUNCTION_82_0();
  v1 = v0[35];
  v2 = v0[36];
  v3 = v0[38];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810, &unk_21701A5D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_217018C90;
  *(inited + 32) = 7368801;
  *(inited + 40) = 0xE300000000000000;
  v5 = *(v3 + 128);
  v6 = MEMORY[0x277D837D0];
  *(inited + 48) = *(v3 + 120);
  *(inited + 56) = v5;
  *(inited + 72) = v6;
  *(inited + 80) = 1682535268;
  *(inited + 88) = 0xE400000000000000;
  sub_21700E294();
  OUTLINED_FUNCTION_92_7();
  sub_21700DF14();
  sub_21700E284();
  v7 = sub_216890548();
  v9 = v8;

  if (v9)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0;
  }

  v11 = 0xE000000000000000;
  if (v9)
  {
    v11 = v9;
  }

  *(inited + 96) = v10;
  *(inited + 104) = v11;
  *(inited + 120) = v6;
  *(inited + 128) = 0x6369706F74;
  *(inited + 136) = 0xE500000000000000;
  *(inited + 144) = 0xD000000000000011;
  *(inited + 152) = 0x8000000217082740;
  *(inited + 168) = v6;
  *(inited + 176) = 0x746E6F4365676170;
  *(inited + 216) = v6;
  *(inited + 184) = 0xEB00000000747865;
  *(inited + 192) = v1;
  *(inited + 200) = v2;
  OUTLINED_FUNCTION_116();
  *(v3 + OBJC_IVAR____TtCO7MusicUI15UnifiedMessages11Coordinator_metricsOverlay) = sub_21700E384();

  OUTLINED_FUNCTION_3();

  return v12();
}

void sub_216A04B10(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtCO7MusicUI15UnifiedMessages11Coordinator_engagement);
  sub_2169FD23C(a1);
  v3 = sub_21700E344();
}

void sub_216A04BA8()
{
  if (*(v1 + 184))
  {

    sub_216B5B420();
  }

  else
  {
    if (qword_280E416F8 != -1)
    {
      OUTLINED_FUNCTION_0_3(&qword_280E416F8);
    }

    v2 = sub_217007CA4();
    OUTLINED_FUNCTION_29_2(v2, qword_280E73D20);
    oslog = sub_217007C84();
    sub_21700ED84();
    OUTLINED_FUNCTION_27_2();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = OUTLINED_FUNCTION_43();
      *v4 = 0;
      _os_log_impl(&dword_216679000, oslog, v0, "💬 ⛔ No data store available. Skip performing natural language search query.", v4, 2u);
      OUTLINED_FUNCTION_15_20();
    }
  }
}

void sub_216A04C9C(char *a1)
{
  if (*(v2 + 184))
  {
    v7 = *a1;

    sub_216B5B498(&v7);
  }

  else
  {
    if (qword_280E416F8 != -1)
    {
      OUTLINED_FUNCTION_0_3(&qword_280E416F8);
    }

    v3 = sub_217007CA4();
    OUTLINED_FUNCTION_29_2(v3, qword_280E73D20);
    oslog = sub_217007C84();
    sub_21700ED84();
    OUTLINED_FUNCTION_27_2();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = OUTLINED_FUNCTION_43();
      *v5 = 0;
      _os_log_impl(&dword_216679000, oslog, v1, "💬 ⛔ No data store available. Skip setting mliState.", v5, 2u);
      OUTLINED_FUNCTION_15_20();
    }
  }
}

uint64_t sub_216A04D9C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0, &qword_21701B9F0);
  OUTLINED_FUNCTION_36(v9);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_67_0();
  v11 = sub_21700EA74();
  OUTLINED_FUNCTION_88(v5, v12, v13, v11);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v4;
  v14[5] = a2;
  v14[6] = a3;
  v14[7] = a4;
  v15 = a2;
  sub_21700DF14();

  OUTLINED_FUNCTION_9_46();
  sub_21677BBA0();
}

uint64_t sub_216A04E84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return MEMORY[0x2822009F8](sub_216A04EA8, 0, 0);
}

uint64_t sub_216A04EA8()
{
  v1 = *(v0 + 16);
  *(v0 + 48) = *(v1 + 208);
  return OUTLINED_FUNCTION_3_79(sub_216A04EC8, v1);
}

uint64_t sub_216A04EC8()
{
  OUTLINED_FUNCTION_33();
  v1 = *(v0 + 16);
  sub_2169FCF54(*(v0 + 48));
  *(v0 + 64) = *(v1 + OBJC_IVAR____TtCO7MusicUI15UnifiedMessages11Coordinator_isEnabled);
  v2 = OUTLINED_FUNCTION_33_0();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_216A04F38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_98_10();
  OUTLINED_FUNCTION_82_0();
  v13 = *(v11 + 64);
  if (v13 != 2 && (v13 & 1) != 0)
  {
    if (*(v11 + 24))
    {
      if (qword_280E416F8 != -1)
      {
        OUTLINED_FUNCTION_0_3(&qword_280E416F8);
      }

      v14 = *(v11 + 40);
      v15 = sub_217007CA4();
      OUTLINED_FUNCTION_29_2(v15, qword_280E73D20);
      sub_21700DF14();
      v16 = sub_217007C84();
      v17 = sub_21700EDA4();

      if (!OUTLINED_FUNCTION_105_7())
      {
        goto LABEL_20;
      }

      OUTLINED_FUNCTION_115_0();
      OUTLINED_FUNCTION_56_14();
      OUTLINED_FUNCTION_72_12();
      *v14 = 136446466;
      OUTLINED_FUNCTION_7_54();
      v18 = OUTLINED_FUNCTION_88_8();
      v21 = sub_2166A85FC(v18, v19, v20);
      *(v14 + 14) = OUTLINED_FUNCTION_67_10(v21, v22, v23);
      v24 = "💬 %{public}s pushed dialogRequest: '%{public}s'";
    }

    else
    {
      if (qword_280E416F8 != -1)
      {
        OUTLINED_FUNCTION_0_3(&qword_280E416F8);
      }

      v14 = *(v11 + 40);
      v45 = sub_217007CA4();
      OUTLINED_FUNCTION_29_2(v45, qword_280E73D20);
      sub_21700DF14();
      v16 = sub_217007C84();
      v17 = sub_21700EDA4();

      if (!OUTLINED_FUNCTION_105_7())
      {
        goto LABEL_20;
      }

      OUTLINED_FUNCTION_115_0();
      OUTLINED_FUNCTION_56_14();
      OUTLINED_FUNCTION_72_12();
      *v14 = 136446466;
      OUTLINED_FUNCTION_7_54();
      v46 = OUTLINED_FUNCTION_88_8();
      v49 = sub_2166A85FC(v46, v47, v48);
      *(v14 + 14) = OUTLINED_FUNCTION_67_10(v49, v50, v51);
      v24 = "💬 %{public}s dialogRequest is nil: '%{public}s'";
    }

    _os_log_impl(&dword_216679000, v16, v17, v24, v14, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
LABEL_20:

    sub_21700EA34();
    *(v11 + 56) = OUTLINED_FUNCTION_103_0();
    OUTLINED_FUNCTION_47();
    sub_21700E9B4();
    OUTLINED_FUNCTION_71_2();
    OUTLINED_FUNCTION_24_2();
    OUTLINED_FUNCTION_74_12();

    return MEMORY[0x2822009F8](v52, v53, v54);
  }

  if (qword_280E416F8 != -1)
  {
    OUTLINED_FUNCTION_0_3(&qword_280E416F8);
  }

  v25 = sub_217007CA4();
  OUTLINED_FUNCTION_29_2(v25, qword_280E73D20);
  v26 = sub_217007C84();
  sub_21700EDA4();
  OUTLINED_FUNCTION_27_2();
  if (os_log_type_enabled(v26, v27))
  {
    OUTLINED_FUNCTION_96();
    OUTLINED_FUNCTION_44_0();
    OUTLINED_FUNCTION_91_11();
    *v10 = 136446210;
    OUTLINED_FUNCTION_7_54();
    v28 = OUTLINED_FUNCTION_88_8();
    *(v10 + 4) = sub_2166A85FC(v28, v29, v30);
    OUTLINED_FUNCTION_5_7();
    _os_log_impl(v31, v32, v33, v34, v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    OUTLINED_FUNCTION_56_1();
    OUTLINED_FUNCTION_26_4();
  }

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_74_12();

  return v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10);
}

uint64_t sub_216A05238()
{
  OUTLINED_FUNCTION_93();
  v1 = v0[4];
  v2 = v0[5];
  v4 = v0[2];
  v3 = v0[3];

  sub_216A05318(v4, v1, v2, v3);
  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

void sub_216A05318(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a4;
  sub_21700DF14();
  sub_217007D74();
}

uint64_t sub_216A0543C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_216A0545C, 0, 0);
}

uint64_t sub_216A0545C()
{
  v1 = *(v0 + 16);
  *(v0 + 32) = *(v1 + 208);
  return OUTLINED_FUNCTION_3_79(sub_216A075A0, v1);
}

void sub_216A05564(uint64_t a1, void *a2)
{
  if (qword_280E416F8 != -1)
  {
    OUTLINED_FUNCTION_0_3(&qword_280E416F8);
  }

  v3 = sub_217007CA4();
  OUTLINED_FUNCTION_29_2(v3, qword_280E73D20);
  v4 = a2;
  oslog = sub_217007C84();
  v5 = sub_21700EDA4();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = OUTLINED_FUNCTION_96();
    v7 = OUTLINED_FUNCTION_79_14();
    *v6 = 138543362;
    *(v6 + 4) = v4;
    *v7 = a2;
    v8 = v4;
    _os_log_impl(&dword_216679000, oslog, v5, "💬 '%{public}@'", v6, 0xCu);
    sub_216697664(v7, &qword_27CABF880, &unk_21701D6E0);
    OUTLINED_FUNCTION_56_1();
    OUTLINED_FUNCTION_6();
  }
}

void sub_216A05724()
{
  OUTLINED_FUNCTION_49();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0, &qword_21701B9F0);
  OUTLINED_FUNCTION_36(v4);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_79_0();
  if (qword_280E416F8 != -1)
  {
    OUTLINED_FUNCTION_0_3(&qword_280E416F8);
  }

  v6 = sub_217007CA4();
  OUTLINED_FUNCTION_29_2(v6, qword_280E73D20);
  v7 = v3;
  v8 = sub_217007C84();
  v9 = sub_21700EDA4();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = OUTLINED_FUNCTION_115_0();
    v11 = OUTLINED_FUNCTION_79_14();
    v12 = OUTLINED_FUNCTION_45_19();
    v18 = v12;
    *v10 = 136446466;
    OUTLINED_FUNCTION_17_5();
    *(v10 + 4) = sub_2166A85FC(0xD000000000000020, v13, &v18);
    *(v10 + 12) = 2114;
    *(v10 + 14) = v7;
    *v11 = v3;
    v14 = v7;
    _os_log_impl(&dword_216679000, v8, v9, "💬 %{public}s Engagement request: '%{public}@'", v10, 0x16u);
    sub_216697664(v11, &qword_27CABF880, &unk_21701D6E0);
    OUTLINED_FUNCTION_6();
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_19_6();
  }

  if (v3)
  {
    v15 = sub_21700EA74();
    OUTLINED_FUNCTION_22_16(v15);
    OUTLINED_FUNCTION_53();
    v16 = swift_allocObject();
    v16[2] = 0;
    v16[3] = 0;
    v16[4] = v1;
    v16[5] = v7;
    v17 = v7;

    OUTLINED_FUNCTION_9_46();
    sub_21677BBA0();
  }

  OUTLINED_FUNCTION_26();
}

uint64_t sub_216A05910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_216A05930, 0, 0);
}

uint64_t sub_216A05930()
{
  v1 = *(v0 + 16);
  *(v0 + 32) = *(v1 + 208);
  return OUTLINED_FUNCTION_3_79(sub_216A05950, v1);
}

uint64_t sub_216A05950()
{
  OUTLINED_FUNCTION_33();
  sub_216A0148C();
  OUTLINED_FUNCTION_3();

  return v0();
}

void sub_216A05A54()
{
  OUTLINED_FUNCTION_49();
  v41 = v1;
  v42 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0, &qword_21701B9F0);
  OUTLINED_FUNCTION_36(v9);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  v12 = &v38 - v11;
  if (qword_280E416F8 != -1)
  {
    OUTLINED_FUNCTION_0_3(&qword_280E416F8);
  }

  v13 = sub_217007CA4();
  OUTLINED_FUNCTION_29_2(v13, qword_280E73D20);
  v14 = v8;
  sub_21700DF14();
  v15 = sub_217007C84();
  v16 = sub_21700EDA4();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v39 = v12;
    v18 = v17;
    OUTLINED_FUNCTION_79_14();
    v19 = OUTLINED_FUNCTION_56_14();
    v40 = v6;
    v43 = v19;
    *v18 = 136446978;
    *(v18 + 4) = sub_2166A85FC(0xD000000000000041, 0x8000000217086310, &v43);
    *(v18 + 12) = 2114;
    *(v18 + 14) = v14;
    *v0 = v8;
    *(v18 + 22) = 2080;
    v20 = v14;
    *(v18 + 24) = sub_2166A85FC(v42, v4, &v43);
    *(v18 + 32) = 2048;
    *(v18 + 34) = v40;
    _os_log_impl(&dword_216679000, v15, v16, "💬 %{public}s Engagement request '%{public}@' for '%s' with action: %ld", v18, 0x2Au);
    sub_216697664(v0, &qword_27CABF880, &unk_21701D6E0);
    OUTLINED_FUNCTION_6();
    swift_arrayDestroy();
    v6 = v40;
    OUTLINED_FUNCTION_6();
    v12 = v39;
    OUTLINED_FUNCTION_6();
  }

  if (v6 < 2)
  {
    OUTLINED_FUNCTION_26();

    sub_216A04D9C(v21, v22, v23, v24);
    return;
  }

  if (v6 == 2)
  {
    v25 = sub_21700EA74();
    OUTLINED_FUNCTION_88(v12, v26, v27, v25);
    v28 = swift_allocObject();
    v28[2] = 0;
    v28[3] = 0;
    v29 = v42;
    v28[4] = v41;
    v28[5] = v29;
    v28[6] = v4;
    v28[7] = v8;
    v28[8] = 2;
    v30 = v14;
    sub_21700DF14();

    OUTLINED_FUNCTION_9_46();
    sub_21677BBA0();

LABEL_14:
    OUTLINED_FUNCTION_26();
    return;
  }

  v42 = sub_217007C84();
  sub_21700ED84();
  OUTLINED_FUNCTION_27_2();
  if (os_log_type_enabled(v42, v31))
  {
    v33 = OUTLINED_FUNCTION_115_0();
    v34 = OUTLINED_FUNCTION_45_19();
    v43 = v34;
    *v33 = 136446466;
    OUTLINED_FUNCTION_17_5();
    *(v33 + 4) = sub_2166A85FC(0xD000000000000041, v35, &v43);
    *(v33 + 12) = 2048;
    *(v33 + 14) = v6;
    _os_log_impl(&dword_216679000, v42, v0, "💬 %{public}s Unsupported presentation action: %ld", v33, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v34);
    OUTLINED_FUNCTION_26_4();
    OUTLINED_FUNCTION_15_20();

    goto LABEL_14;
  }

  OUTLINED_FUNCTION_26();
}

uint64_t sub_216A05DEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a6;
  v8[10] = a7;
  v8[7] = a4;
  v8[8] = a5;
  v9 = OBJC_IVAR____TtCO7MusicUI15UnifiedMessages11Coordinator_isEnabled;
  v8[11] = a8;
  v8[12] = v9;
  return MEMORY[0x2822009F8](sub_216A05E1C, a4, 0);
}

uint64_t sub_216A05E44()
{
  OUTLINED_FUNCTION_93();
  v3 = *(v1 + 49);
  if (v3 == 2 || (v3 & 1) == 0)
  {
    if (qword_280E416F8 != -1)
    {
      OUTLINED_FUNCTION_0_3(&qword_280E416F8);
    }

    v5 = sub_217007CA4();
    OUTLINED_FUNCTION_29_2(v5, qword_280E73D20);
    v6 = sub_217007C84();
    sub_21700EDA4();
    OUTLINED_FUNCTION_27_2();
    if (os_log_type_enabled(v6, v7))
    {
      OUTLINED_FUNCTION_96();
      OUTLINED_FUNCTION_44_0();
      OUTLINED_FUNCTION_91_11();
      *v0 = 136446210;
      OUTLINED_FUNCTION_7_54();
      *(v0 + 4) = sub_2166A85FC(0xD000000000000041, v8, v9);
      OUTLINED_FUNCTION_5_7();
      _os_log_impl(v10, v11, v12, v13, v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v2);
      OUTLINED_FUNCTION_56_1();
      OUTLINED_FUNCTION_26_4();
    }

    OUTLINED_FUNCTION_3();

    return v15();
  }

  else
  {
    v4 = *(v1 + 56);
    *(v1 + 104) = *(v4 + 208);

    return MEMORY[0x2822009F8](sub_216A05FB0, v4, 0);
  }
}

uint64_t sub_216A05FB0()
{
  OUTLINED_FUNCTION_33();
  sub_2169FCF54(*(v0 + 104));
  v1 = OUTLINED_FUNCTION_33_0();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_216A06010()
{
  OUTLINED_FUNCTION_33();
  sub_21700EA34();
  *(v0 + 112) = OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_47();
  sub_21700E9B4();
  OUTLINED_FUNCTION_71_2();
  v1 = OUTLINED_FUNCTION_24_2();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_216A06088()
{
  OUTLINED_FUNCTION_13_26();
  OUTLINED_FUNCTION_93();
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v4 = *(v0 + 64);
  v3 = *(v0 + 72);

  *(v0 + 16) = v4;
  *(v0 + 24) = v3;
  *(v0 + 32) = v2;
  *(v0 + 40) = v1;
  *(v0 + 48) = 0;
  v5 = v2;
  sub_21700DF14();
  sub_217007D74();
  v6 = *(v0 + 32);

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_12_7();

  return v8(v7, v8, v9, v10, v11, v12, v13, v14);
}

void sub_216A061EC()
{
  swift_defaultActor_initialize();
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

uint64_t sub_216A0623C()
{

  v1 = OBJC_IVAR____TtCO7MusicUI15UnifiedMessages11Coordinator__impressionsTracker;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFB70, &qword_2170346D8);
  OUTLINED_FUNCTION_34();
  (*(v2 + 8))(v0 + v1);

  sub_216697664(v0 + OBJC_IVAR____TtCO7MusicUI15UnifiedMessages11Coordinator_jsStackWillReloadObserver, &qword_27CABFB78, &qword_2170346E0);

  v3 = OBJC_IVAR____TtCO7MusicUI15UnifiedMessages11Coordinator__pageMetrics;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB80, &qword_2170346E8);
  OUTLINED_FUNCTION_34();
  (*(v4 + 8))(v0 + v3);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_216A063D4()
{
  sub_216A0623C();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_216A06408@<X0>(uint64_t *a1@<X8>)
{
  swift_getObjectType();
  result = sub_217007D64();
  *a1 = result;
  return result;
}

uint64_t sub_216A06448(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8DF8, qword_21701B930);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_216A064B8()
{
  OUTLINED_FUNCTION_82_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8DF8, qword_21701B930);
  OUTLINED_FUNCTION_36(v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_20_0(v1);
  *v2 = v3;
  v2[1] = sub_2166AB4A0;
  OUTLINED_FUNCTION_64_13();

  return sub_2169FF104(v4, v5, v6, v7, v8, v9, v10);
}

void sub_216A065B8(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB10, &qword_217034688);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = aBlock - v9;
  v11 = [a2 enqueueMessageEvent_];
  (*(v7 + 16))(v10, a1, v6);
  v12 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v13 = swift_allocObject();
  (*(v7 + 32))(v13 + v12, v10, v6);
  aBlock[4] = sub_216A06BD0;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2169F82C0;
  aBlock[3] = &block_descriptor_14;
  v14 = _Block_copy(aBlock);

  [v11 addFinishBlock_];
  _Block_release(v14);
}

uint64_t sub_216A06790(void *a1, id a2)
{
  if (a2)
  {
    v2 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB10, &qword_217034688);
    return sub_21700E9C4();
  }

  else
  {
    v4 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB10, &qword_217034688);
    return sub_21700E9D4();
  }
}

uint64_t sub_216A06814()
{
  OUTLINED_FUNCTION_17_5();
  result = sub_21700E4D4();
  qword_280E739E0 = result;
  return result;
}

uint64_t sub_216A06848(void *a1)
{
  v1 = a1[1];
  v2 = swift_unknownObjectRetain();
  return sub_2169FDD74(v2, v1);
}

id sub_216A06884(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21700E4D4();

  sub_216685F4C(0, &qword_280E29BA8, 0x277CEE4C0);
  v5 = sub_21700E804();

  v6 = [v3 initWithServiceType:v4 placementInfo:v5];

  return v6;
}

id sub_216A06918(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_21700E4D4();

  if (a3)
  {
    v6 = sub_21700E344();
  }

  else
  {
    v6 = 0;
  }

  v7 = [v3 initWithPlacement:v5 context:v6];

  return v7;
}

unint64_t sub_216A069B8()
{
  result = qword_280E44FE8[0];
  if (!qword_280E44FE8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E44FE8);
  }

  return result;
}

uint64_t sub_216A06A0C(void *a1)
{
  v1 = [a1 placementsMap];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAF8, &qword_217034678);
  v3 = sub_21700E354();

  return v3;
}

uint64_t sub_216A06A88(void *a1)
{
  v2 = [a1 messageActions];

  if (!v2)
  {
    return 0;
  }

  sub_216685F4C(0, &unk_280E29B90, 0x277CEE4B0);
  v3 = sub_21700E824();

  return v3;
}

uint64_t sub_216A06B00()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_22_10();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_3_3(v1);
  OUTLINED_FUNCTION_82_11();
  OUTLINED_FUNCTION_47_8();

  return sub_216A0543C(v3, v4, v5, v6, v7);
}

uint64_t sub_216A06BD0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB10, &qword_217034688);
  OUTLINED_FUNCTION_36(v0);
  v1 = OUTLINED_FUNCTION_74_0();

  return sub_216A06790(v1, v2);
}

uint64_t sub_216A06C54(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_216A06C9C()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_22_10();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_3_3(v1);
  OUTLINED_FUNCTION_82_11();
  OUTLINED_FUNCTION_47_8();

  return sub_216A047EC(v3, v4, v5, v6, v7);
}

void sub_216A06D30(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = sub_21700EB74();

  [a4 addCachePolicy:a1 forPlacements:v7 serviceType:a3];
}

uint64_t sub_216A06DC0()
{
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_22_10();
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_20_0(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_3_3(v4);
  OUTLINED_FUNCTION_64_13();

  return sub_216A05DEC(v6, v7, v8, v9, v10, v11, v1, v2);
}

uint64_t sub_216A06E74()
{
  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_22_10();
  v1 = *(v0 + 56);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_20_0(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_3_3(v3);
  OUTLINED_FUNCTION_64_13();

  return sub_216A04E84(v5, v6, v7, v8, v9, v10, v1);
}

uint64_t objectdestroy_22Tm()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_53();

  return swift_deallocObject();
}

uint64_t sub_216A06F64()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_22_10();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_3_3(v1);
  OUTLINED_FUNCTION_82_11();
  OUTLINED_FUNCTION_47_8();

  return sub_216A05910(v3, v4, v5, v6, v7);
}

void sub_216A06FF8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{

  v7 = sub_21700EB74();

  [a4 addObserver:a1 placements:v7 serviceType:a3];
}

uint64_t sub_216A07094(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  v5 = MEMORY[0x28223BE20](a1);
  (*(v4 + 16))(&v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  v7 = *(a2 + OBJC_IVAR____TtCO7MusicUI15UnifiedMessages11Coordinator_engagement);
  v8 = OUTLINED_FUNCTION_116();
  v10 = v9(v8);
  sub_2169FD23C(v10);

  v11 = sub_21700E344();

  v12 = OUTLINED_FUNCTION_38();
  return v13(v12);
}

uint64_t sub_216A071F8()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_22_10();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_20_0(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_3_3(v3);

  return sub_2169FE364(v5, v6, v7, v1);
}

uint64_t sub_216A07294()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_22_10();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_20_0(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_3_3(v3);

  return sub_216A020BC(v5, v6, v7, v1);
}

uint64_t objectdestroy_34Tm_0()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_53();

  return swift_deallocObject();
}

uint64_t sub_216A07378(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFB78, &qword_2170346E0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_216A073EC()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_22_10();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_20_0(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_3_3(v3);

  return sub_216A03908(v5, v6, v7, v1);
}

uint64_t objectdestroy_74Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_216A074FC()
{
  OUTLINED_FUNCTION_13_26();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_22_10();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_3_3(v1);
  OUTLINED_FUNCTION_12_7();

  return sub_216A02F34(v3, v4, v5, v6, v7, v8);
}

uint64_t OUTLINED_FUNCTION_79_14()
{

  return swift_slowAlloc();
}

BOOL OUTLINED_FUNCTION_100_9()
{

  return os_log_type_enabled(v1, v0);
}

uint64_t OUTLINED_FUNCTION_101_6()
{
}

unint64_t sub_216A07650()
{
  result = qword_280E30DD0[0];
  if (!qword_280E30DD0[0])
  {
    type metadata accessor for CompleteSocialOnboardingAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E30DD0);
  }

  return result;
}

uint64_t sub_216A076A8(uint64_t a1, uint64_t a2)
{
  type metadata accessor for UserSocialProfileCoordinator(0);
  type metadata accessor for ObjectGraph(0);
  sub_21700E094();
  v2 = v5[0];
  sub_216CACDBC();
  v5[3] = sub_21700D7C4();
  v5[4] = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_1(v5);
  sub_21700D7B4();
  sub_21700D2A4();
  v3 = sub_21700E1B4();

  __swift_destroy_boxed_opaque_existential_1Tm(v5);
  return v3;
}

uint64_t type metadata accessor for RemoveDownloadAction(uint64_t a1)
{
  result = qword_280E3BAC8;
  if (!qword_280E3BAC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_216A077F8(uint64_t a1)
{
  sub_21700D284();
  if (v1 <= 0x3F)
  {
    sub_2166DF3F4(319);
    if (v2 <= 0x3F)
    {
      sub_216688154();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_216A07894@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v44 = a3;
  v5 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_0();
  v42 = v9;
  MEMORY[0x28223BE20](v10);
  v12 = &v39 - v11;
  sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v46 = v14;
  v47 = v13;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_0();
  v43 = v15;
  MEMORY[0x28223BE20](v16);
  v17 = sub_21700D284();
  OUTLINED_FUNCTION_1();
  v41 = v18;
  MEMORY[0x28223BE20](v19);
  v21 = &v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = a1;
  sub_21700CE04();
  v22 = a2;
  v48 = v7;
  v23 = *(v7 + 16);
  v24 = v5;
  v23(v12, v22, v5);
  v25 = v45;
  sub_21700D224();
  if (v25)
  {
    (*(v48 + 8))(v22, v5);
    return (*(v46 + 8))(v49, v47);
  }

  else
  {
    v45 = type metadata accessor for RemoveDownloadAction(0);
    v40 = *(v45 + 20);
    (*(v41 + 32))(v44, v21, v17);
    v27 = v43;
    v28 = v49;
    v29 = v22;
    sub_21700CE04();
    v23(v42, v22, v24);
    sub_216AC5BB0();
    v30 = v44;
    *(v44 + v40) = v31;
    sub_21700CE04();
    v32 = sub_21700CDB4();
    v34 = v33;
    (*(v48 + 8))(v29, v24);
    v35 = *(v46 + 8);
    v36 = v28;
    v37 = v47;
    v35(v36, v47);
    result = (v35)(v27, v37);
    v38 = (v30 + *(v45 + 24));
    *v38 = v32;
    v38[1] = v34;
  }

  return result;
}

uint64_t sub_216A07C64@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v69 = a2;
  v72 = a3;
  v4 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  v60 = v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v59 = v58 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = v58 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = v58 - v21;
  v23 = sub_21700D7A4();
  OUTLINED_FUNCTION_2_0();
  sub_21700CE04();
  v62 = v6;
  v25 = *(v6 + 16);
  v24 = v6 + 16;
  v66 = v4;
  v63 = v25;
  v25(v9, v69, v4);
  v64 = v9;
  sub_21700D734();
  v65 = a1;
  sub_21700CE04();
  v26 = v19;
  sub_21700CDB4();
  OUTLINED_FUNCTION_3_80();
  v27 = *(v12 + 8);
  v67 = v12 + 8;
  v68 = v10;
  v27(v19, v10);
  if (v23)
  {
    v28 = type metadata accessor for SocialProfileHorizontalLockup(0);
    v70 = v26;
    v71 = v23;
    v29 = v27;
    v61 = v27;
    v30 = v72;
    sub_21700F364();
    sub_21700CE04();
    v31 = v30;
    v32 = v69;
    sub_21700D2E4();
    v29(v22, v68);
    v33 = type metadata accessor for Artwork(0);
    sub_21700CE04();
    v63(v64, v32, v66);
    sub_2166D7674(&qword_280E2BF60, type metadata accessor for Artwork, &unk_21705A604);
    sub_21700D734();
    sub_21700CE04();
    sub_21700CDB4();
    OUTLINED_FUNCTION_3_80();
    v34 = v68;
    v58[1] = v24;
    v35 = v61;
    v61(v22, v68);
    v36 = (v31 + v28[7]);
    *v36 = v22;
    v36[1] = v33;
    sub_21700CE04();
    sub_21700CDB4();
    OUTLINED_FUNCTION_3_80();
    v35(v22, v34);
    v37 = (v31 + v28[8]);
    *v37 = v22;
    v37[1] = v33;
    v38 = v59;
    sub_21700CE04();
    v39 = sub_21700CD44();
    v35(v38, v34);
    *(v31 + v28[9]) = v39 & 1;
    v40 = v60;
    sub_21700CE04();
    v41 = sub_21700CD44();
    v35(v40, v34);
    v42 = v28[10];
    v58[0] = v28;
    v43 = v72;
    *(v72 + v42) = v41 & 1;
    v44 = type metadata accessor for ContentDescriptor(0);
    OUTLINED_FUNCTION_2_0();
    v45 = v65;
    sub_21700CE04();
    v46 = v69;
    v47 = v66;
    v63(v64, v69, v66);
    sub_2166D7674(qword_280E40390, type metadata accessor for ContentDescriptor, &protocol conformance descriptor for ContentDescriptor);
    v48 = v43;
    sub_21700D734();
    sub_21700CE04();
    sub_21700CDB4();
    OUTLINED_FUNCTION_3_80();
    (*(v62 + 8))(v46, v47);
    v49 = v45;
    v50 = v68;
    v51 = v61;
    v61(v49, v68);
    result = v51(v22, v50);
    v53 = (v48 + *(v58[0] + 44));
    *v53 = v22;
    v53[1] = v44;
  }

  else
  {
    v54 = sub_21700E2E4();
    sub_2166D7674(&qword_280E2A0F8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    v56 = v55;
    v57 = type metadata accessor for SocialProfileHorizontalLockup(0);
    *v56 = 25705;
    v56[1] = 0xE200000000000000;
    v56[2] = v57;
    (*(*(v54 - 8) + 104))(v56, *MEMORY[0x277D22530], v54);
    swift_willThrow();
    (*(v62 + 8))(v69, v66);
    v27(v65, v68);
    return sub_2167B0250(v72);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_7MusicUI31SocialBadgingRequestCoordinatorC0c7ProfileE10DescriptorVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_216A083C4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFD && *(a1 + 120))
    {
      v2 = *a1 + 2147483645;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v4 = v3 - 1;
      if (v4 < 0)
      {
        v5 = -1;
      }

      else
      {
        v5 = v4;
      }

      v6 = v5 - 1;
      if (v4 < 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v6;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_216A08424(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 120) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 120) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

double sub_216A084BC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &__src[-v8];
  (*(a2 + 8))(a1, a2, v7);
  v10 = type metadata accessor for ContentDescriptor(0);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    sub_21669987C(v9, &qword_27CAB6A00, &unk_217016B60);
  }

  else
  {
    memcpy(__dst, v9 + 8, 0x69uLL);
    sub_21686BC90(__dst, __src);
    sub_2168F3F20(v9);
    v11 = *(a2 + 16);
    if (v11(a1, a2) > 0)
    {
      v12 = v11(a1, a2);
      memcpy(__src, __dst, 0x69uLL);
      memcpy(a3, __src, 0x70uLL);
      *(a3 + 14) = v12;
      return result;
    }

    sub_21686BCEC(__dst);
  }

  result = 0.0;
  *a3 = xmmword_217016ED0;
  a3[1] = 0u;
  a3[2] = 0u;
  a3[3] = 0u;
  a3[4] = 0u;
  a3[5] = 0u;
  a3[6] = 0u;
  *(a3 + 14) = 0;
  return result;
}

uint64_t sub_216A0865C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  memcpy(__dst, v2, sizeof(__dst));
  v6 = sub_21700B384();
  v8 = v7;
  memcpy(__src, v3, sizeof(__src));
  type metadata accessor for SocialBadgingRequestCoordinator(0);
  sub_216A09328(&qword_280E2FFC0, type metadata accessor for SocialBadgingRequestCoordinator, &unk_21703F3B8);
  KeyPath = swift_getKeyPath();
  sub_216A08958(__dst, v22);
  v10 = sub_217008CF4();
  v12 = v11;
  v22[0] = 0;
  memcpy(v21, __src, 0x78uLL);
  v21[15] = sub_216A088F0;
  v21[16] = 0;
  v21[17] = KeyPath;
  LOBYTE(v21[18]) = 0;
  *(&v21[18] + 1) = *v17;
  HIDWORD(v21[18]) = *&v17[3];
  v21[19] = v10;
  v21[20] = v12;
  v21[21] = sub_216B0E6FC;
  v21[22] = 0;
  LOBYTE(v21[23]) = 0;
  *(&v21[23] + 1) = *v19;
  HIDWORD(v21[23]) = *&v19[3];
  v21[24] = v6;
  v21[25] = v8;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFBF0, &qword_217034A88);
  (*(*(v13 - 8) + 16))(a2, a1, v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFBF8, &qword_217034A90);
  memcpy((a2 + *(v14 + 36)), v21, 0xD0uLL);
  memcpy(v22, __src, sizeof(v22));
  v23 = sub_216A088F0;
  v24 = 0;
  v25 = KeyPath;
  v26 = 0;
  *v27 = *v17;
  *&v27[3] = *&v17[3];
  v28 = v10;
  v29 = v12;
  v30 = sub_216B0E6FC;
  v31 = 0;
  v32 = 0;
  *v33 = *v19;
  *&v33[3] = *&v19[3];
  v34 = v6;
  v35 = v8;
  sub_216681B64(v21, v16, &qword_27CABFC00, &qword_217034A98);
  return sub_21669987C(v22, &qword_27CABFC00, &qword_217034A98);
}

double sub_216A088F0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_217009C84();
  sub_217007F24();
  *a2 = a1;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = v7;
  *(a2 + 40) = v8;
  *(a2 + 48) = 0;

  sub_21700DF14();
  return result;
}

uint64_t sub_216A08990@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_2170091A4();
  *(a2 + 8) = 0xC02E000000000000;
  *(a2 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFC18, &unk_217034B30);
  return sub_216A089E8(a1);
}

uint64_t sub_216A089E8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v8 = MEMORY[0x277D84F90];
    result = sub_216AB9A40(0, v2, 0);
    v4 = v8;
    v5 = v2 - 1;
    while (v5 != -1)
    {
      v9 = v4;
      v7 = *(v4 + 16);
      v6 = *(v4 + 24);
      if (v7 >= v6 >> 1)
      {
        result = sub_216AB9A40(v6 > 1, v7 + 1, 1);
        v4 = v9;
      }

      *(v4 + 16) = v7 + 1;
      *(v4 + 8 * v7 + 32) = v5--;
      if (v5 == -1)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:
    swift_getKeyPath();
    *(swift_allocObject() + 16) = a1;
    sub_21700DF14();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFC20, &qword_217034B58);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFC28, &qword_217034B60);
    sub_2166D9530(&qword_280E29E20, &qword_27CABFC20, &qword_217034B58, MEMORY[0x277D83980]);
    sub_216A09240();
    return sub_21700B154();
  }

  return result;
}

uint64_t sub_216A08B98@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *result;
  if ((*result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v3 < *(a2 + 16))
  {
    v6 = sub_217006FE4();
    (*(*(v6 - 8) + 16))(a3, a2 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)) + *(*(v6 - 8) + 72) * v3, v6);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFC28, &qword_217034B60);
    *(a3 + *(result + 36)) = v3;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_216A08C60@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v32 = sub_21700C444();
  v1 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v3 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF770, &unk_21701A670);
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_217007474();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v32 - v10;
  sub_217006FC4();
  sub_217007434();
  sub_21700C414();
  sub_2170073E4();
  (*(v1 + 8))(v3, v32);
  v12 = *(v6 + 8);
  v12(v8, v5);
  v13 = sub_217006FA4();
  v15 = v14;
  v16 = swift_allocObject();
  *(v16 + 16) = v13;
  *(v16 + 24) = v15;
  sub_2167C505C();
  sub_2170073F4();

  v12(v11, v5);
  v17 = sub_21700ACF4();
  sub_2170081E4();
  v18 = v34[11];
  LODWORD(v12) = v35;
  v19 = v36;
  v20 = v37;
  v21 = v38;
  v22 = v39;
  v23 = sub_21700B3B4();
  v25 = v24;
  v26 = sub_21700B3B4();
  v28 = v27;
  v42[0] = v18;
  v42[1] = __PAIR64__(v19, v12);
  v42[2] = v20;
  v42[3] = v21;
  v42[4] = v22;
  v42[5] = v17;
  LOWORD(v42[6]) = 256;
  *(&v42[6] + 2) = v40;
  HIWORD(v42[6]) = v41;
  v42[7] = v23;
  v42[8] = v25;
  v42[9] = v26;
  v42[10] = v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFC48, &qword_217034BE0);
  v30 = v33;
  memcpy((v33 + *(v29 + 36)), v42, 0x58uLL);
  v43 = v18;
  v44 = v12;
  v45 = v19;
  v46 = v20;
  v47 = v21;
  v48 = v22;
  v49 = v17;
  v50 = 256;
  v51 = v40;
  v52 = v41;
  v53 = v23;
  v54 = v25;
  v55 = v26;
  v56 = v28;
  sub_216681B64(v42, v34, &qword_27CABFC50, &qword_217034BE8);
  sub_21669987C(&v43, &qword_27CABFC50, &qword_217034BE8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFC58, &unk_217034BF0);
  *(v30 + *(result + 36)) = 256;
  return result;
}

uint64_t sub_216A09050(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  v7 = sub_216A084BC(v5, v6, v9);
  MEMORY[0x21CE9B900](v9, a2, &type metadata for SocialBadgingViewModifier, a3, v7);
  memcpy(__dst, v9, sizeof(__dst));
  return sub_216A09208(__dst);
}

unint64_t sub_216A09108()
{
  result = qword_27CABFC08;
  if (!qword_27CABFC08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABFBF8, &qword_217034A90);
    sub_2166D9530(&qword_280E2A8B0, &qword_27CABFBF0, &qword_217034A88, MEMORY[0x277CE04B0]);
    sub_2166D9530(&qword_27CABFC10, &qword_27CABFC00, &qword_217034A98, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABFC08);
  }

  return result;
}

unint64_t sub_216A09240()
{
  result = qword_280E2B228;
  if (!qword_280E2B228)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABFC28, &qword_217034B60);
    sub_216A09328(qword_280E2B7D8, type metadata accessor for BadgeView, &unk_217034B88);
    sub_2166D9530(&qword_280E2A8C0, &qword_27CABFC30, &qword_217034B68, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2B228);
  }

  return result;
}

uint64_t sub_216A09328(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for BadgeView(uint64_t a1)
{
  result = qword_280E2B7A0;
  if (!qword_280E2B7A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_216A093E4(uint64_t a1)
{
  result = sub_217006FE4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_216A0946C()
{
  result = qword_27CABFC60;
  if (!qword_27CABFC60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABFC58, &unk_217034BF0);
    sub_216A09524();
    sub_2166D9530(&qword_280E2B388, &qword_27CAB76C0, &unk_217017530, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABFC60);
  }

  return result;
}

unint64_t sub_216A09524()
{
  result = qword_27CABFC68;
  if (!qword_27CABFC68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABFC48, &qword_217034BE0);
    sub_2167C505C();
    swift_getOpaqueTypeConformance2();
    sub_2166D9530(&qword_27CABFC70, &qword_27CABFC50, &qword_217034BE8, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABFC68);
  }

  return result;
}

uint64_t sub_216A09608(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 48))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_216A0965C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_216A096CC@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v23 = a2;
  v5 = sub_21700CDF4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21700CE04();
  v9 = sub_21700CDB4();
  v21 = v10;
  v22 = v9;
  v11 = *(v6 + 8);
  v11(v8, v5);
  sub_21700CE04();
  v20 = sub_21700CDB4();
  v13 = v12;
  v11(v8, v5);
  sub_21700CE04();
  v14 = sub_21700CDB4();
  v16 = v15;
  v17 = sub_21700CF34();
  (*(*(v17 - 8) + 8))(v23, v17);
  v11(a1, v5);
  result = (v11)(v8, v5);
  v19 = v21;
  *a3 = v22;
  a3[1] = v19;
  a3[2] = v20;
  a3[3] = v13;
  a3[4] = v14;
  a3[5] = v16;
  return result;
}

double sub_216A098DC@<D0>(char *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  sub_216A096CC(a1, a2, v7);
  if (!v3)
  {
    v6 = v7[1];
    *a3 = v7[0];
    a3[1] = v6;
    result = *&v8;
    a3[2] = v8;
  }

  return result;
}

unint64_t sub_216A09924()
{
  result = qword_27CABFC78;
  if (!qword_27CABFC78)
  {
    type metadata accessor for Section.Header.ColumnHeader(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABFC78);
  }

  return result;
}

__n128 sub_216A0997C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Section.Header.ColumnHeader(0);
  v5 = (a1 + v4[5]);
  v6 = v5[1];
  v7 = (a1 + v4[6]);
  v8 = v7[1];
  v9 = (a1 + v4[7]);
  v11 = *v9;
  v10 = v9[1];
  v15 = *v7;
  v14 = *v5;
  sub_21700DF14();
  sub_21700DF14();
  sub_21700DF14();
  sub_216A09A78(a1);
  *&v12 = v14;
  result.n128_u64[0] = v15;
  *(&v12 + 1) = v6;
  result.n128_u64[1] = v8;
  *a2 = v12;
  *(a2 + 16) = result;
  *(a2 + 32) = v11;
  *(a2 + 40) = v10;
  return result;
}

double sub_216A09A34@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  *&result = sub_216A0997C(a1, v6).n128_u64[0];
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

uint64_t sub_216A09A78(uint64_t a1)
{
  v2 = type metadata accessor for Section.Header.ColumnHeader(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for ExpandableParagraphView(uint64_t a1)
{
  result = qword_280E385C0;
  if (!qword_280E385C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_216A09B48(uint64_t a1)
{
  result = type metadata accessor for ParagraphComponentModel(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_216A09BD0@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ParagraphComponentModel(0);
  v4 = *(v3 + 28);
  v5 = (v1 + *(v3 + 24));
  v7 = *v5;
  v6 = v5[1];
  v9 = *(v1 + v4);
  v8 = *(v1 + v4 + 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBE08, &qword_217025B20);
  sub_21700DF14();
  sub_21700DF14();
  sub_21700D234();
  v11 = a1 + v10[25];
  sub_21700AEA4();
  *v11 = v17;
  *(v11 + 8) = v18;
  v12 = v10[26];
  *(a1 + v12) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBE10, &unk_217034D70);
  swift_storeEnumTagMultiPayload();
  result = sub_216A09D20(v1, a1);
  *(a1 + v10[17]) = 1;
  *(a1 + v10[18]) = 1;
  v14 = (a1 + v10[20]);
  *v14 = v7;
  v14[1] = v6;
  v15 = (a1 + v10[19]);
  *v15 = v9;
  v15[1] = v8;
  *(a1 + v10[21]) = 8;
  *(a1 + v10[23]) = 0;
  v16 = (a1 + v10[22]);
  *v16 = 0;
  v16[1] = 0;
  return result;
}

uint64_t sub_216A09D20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = sub_21700D284();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for ModalPresentationDescriptor(0);
  MEMORY[0x28223BE20](v25);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBE18, &unk_217025B60);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v25 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBE20, qword_217034D80);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v25 - v16;
  v18 = type metadata accessor for ParagraphComponentModel(0);
  v19 = (a1 + *(v18 + 28));
  v20 = *v19;
  v21 = v19[1];
  LOBYTE(a1) = *(a1 + *(v18 + 32));
  sub_21700DF14();
  sub_21700D234();
  __swift_storeEnumTagSinglePayload(v14, 0, 1, v3);
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 4) = v20;
  *(v8 + 5) = v21;
  v8[48] = 8;
  *(v8 + 7) = 0;
  v8[64] = a1;
  sub_216A0A1D4(v14, v11);
  if (__swift_getEnumTagSinglePayload(v11, 1, v3) == 1)
  {
    sub_21700D234();
    sub_216A0A244(v14);
    if (__swift_getEnumTagSinglePayload(v11, 1, v3) != 1)
    {
      sub_216A0A244(v11);
    }
  }

  else
  {
    sub_216A0A244(v14);
    (*(v4 + 32))(v6, v11, v3);
  }

  v22 = v25;
  (*(v4 + 32))(&v8[*(v25 + 40)], v6, v3);
  sub_216A0A2AC(v8, v17, type metadata accessor for ModalPresentationDescriptor);
  __swift_storeEnumTagSinglePayload(v17, 0, 1, v22);
  v23 = v26;
  sub_216A0A314(v17, v26);
  result = type metadata accessor for ParagraphView(0);
  *(v23 + *(result + 20)) = 0;
  *(v23 + *(result + 24)) = 0;
  return result;
}

uint64_t sub_216A0A0C4(uint64_t a1)
{
  result = sub_216A0A11C(qword_280E38600, type metadata accessor for ExpandableParagraphView, &unk_217034CC8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216A0A11C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_216A0A170(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ParagraphComponentModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_216A0A1D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBE18, &unk_217025B60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_216A0A244(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBE18, &unk_217025B60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_216A0A2AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_216A0A314(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBE20, qword_217034D80);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_216A0A384()
{
  result = qword_27CABBE28;
  if (!qword_27CABBE28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABBE08, &qword_217025B20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABBE28);
  }

  return result;
}

uint64_t type metadata accessor for ResumePlaybackAction(uint64_t a1)
{
  result = qword_280E3B950;
  if (!qword_280E3B950)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_216A0A498@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7();
  v11 = v10 - v9;
  v25 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_7();
  sub_21700D284();
  OUTLINED_FUNCTION_1();
  v21 = v16;
  v22 = v15;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_7();
  v19 = v18 - v17;
  sub_21700CE04();
  (*(v7 + 16))(v11, a2, v5);
  sub_21700D224();
  (*(v7 + 8))(a2, v5);
  if (v24)
  {
    return (*(v13 + 8))(a1, v25);
  }

  (*(v13 + 8))(a1, v25);
  return (*(v21 + 32))(a3, v19, v22);
}

void sub_216A0A718(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;

  sub_21667E91C(v3, v4);
  v5 = [objc_opt_self() defaultCenter];
  v6 = v5;
  if (qword_280E29C30 != -1)
  {
    OUTLINED_FUNCTION_0_110(&qword_280E29C30);
    v5 = v6;
  }

  [v5 addObserver:v2 selector:sel_eventDidFire name:qword_280E739D8 object:0];
}

void sub_216A0A7E4()
{
  v1 = [objc_opt_self() defaultCenter];
  v2 = v1;
  if (qword_280E29C30 != -1)
  {
    OUTLINED_FUNCTION_0_110(&qword_280E29C30);
    v1 = v2;
  }

  [v1 removeObserver:v0 name:qword_280E739D8 object:0];
}

uint64_t sub_216A0A894(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PageRenderMetricsViewModifier(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v9 + 1) = swift_getKeyPath();
  v9[16] = 0;
  v10 = *(v6 + 24);
  *&v9[v10] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFC80, &qword_217034F10);
  swift_storeEnumTagMultiPayload();
  *v9 = a1;

  MEMORY[0x21CE9B900](v9, a2, v6, a3);
  return sub_216A0A9E4(v9);
}

uint64_t type metadata accessor for PageRenderMetricsViewModifier(uint64_t a1)
{
  result = qword_280E314D0;
  if (!qword_280E314D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_216A0A9E4(uint64_t a1)
{
  v2 = type metadata accessor for PageRenderMetricsViewModifier(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_216A0AA68(uint64_t a1)
{
  sub_21700DDB4();
  if (v1 <= 0x3F)
  {
    sub_2166DB904();
    if (v2 <= 0x3F)
    {
      sub_216A0AB04(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_216A0AB04(uint64_t a1)
{
  if (!qword_280E2B4C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABFC90, &qword_217034F50);
    v1 = sub_2170080E4();
    if (!v2)
    {
      atomic_store(v1, &qword_280E2B4C8);
    }
  }
}

uint64_t sub_216A0AB84(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for PageRenderMetricsViewModifier(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFC98, &qword_217034FA8);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v8);
  v10 = &v21 - v9;
  sub_216A0B584(v2, &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  sub_216A0B5E8(&v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFCA0, &qword_217034FB0);
  OUTLINED_FUNCTION_34();
  (*(v13 + 16))(v10, a1);
  v14 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABFCA8, &qword_217034FB8) + 36)];
  *v14 = sub_216A0B64C;
  v14[1] = v12;
  v14[2] = 0;
  v14[3] = 0;
  sub_216A0B584(v2, &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = swift_allocObject();
  sub_216A0B5E8(&v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v11);
  v16 = &v10[*(v7 + 36)];
  *v16 = 0;
  *(v16 + 1) = 0;
  *(v16 + 2) = sub_216A0B664;
  *(v16 + 3) = v15;
  sub_216A0B584(v2, &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = swift_allocObject();
  sub_216A0B5E8(&v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v11);
  OUTLINED_FUNCTION_0_111();
  sub_216A0B7B8(v18, &qword_27CABFC98, &qword_217034FA8, v19);
  sub_21700A284();

  return sub_216A0B8A0(v10);
}