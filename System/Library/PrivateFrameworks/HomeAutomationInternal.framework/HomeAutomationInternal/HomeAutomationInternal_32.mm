unint64_t sub_252B871E4(void (*a1)(char *, uint64_t), uint64_t a2, unint64_t a3, void *a4, uint64_t a5)
{
  v118 = a2;
  v119 = a4;
  v116 = a1;
  v117 = a3;
  v97 = sub_252E36CA4();
  v108 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v96 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_252E37564();
  v107 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v94 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_252E37534();
  MEMORY[0x28223BE20](v93);
  v92 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_252E36D04();
  v106 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v114 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_252E36C84();
  v10 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v12 = (&v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v104 = sub_252E36D54();
  v13 = *(v104 - 8);
  v14 = MEMORY[0x28223BE20](v104);
  v90 = &v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v74 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v103 = &v74 - v20;
  MEMORY[0x28223BE20](v19);
  v22 = &v74 - v21;
  v23 = sub_252E36AB4();
  v77 = *(v23 - 8);
  v78 = v23;
  MEMORY[0x28223BE20](v23);
  v25 = &v74 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(a5 + 144);
  v125[8] = *(a5 + 128);
  v125[9] = v26;
  v126 = *(a5 + 160);
  v27 = *(a5 + 80);
  v125[4] = *(a5 + 64);
  v125[5] = v27;
  v28 = *(a5 + 112);
  v125[6] = *(a5 + 96);
  v125[7] = v28;
  v29 = *(a5 + 16);
  v125[0] = *a5;
  v125[1] = v29;
  v30 = *(a5 + 48);
  v125[2] = *(a5 + 32);
  v125[3] = v30;
  if (qword_2814B0A18 != -1)
  {
    goto LABEL_29;
  }

  while (1)
  {
    v31 = qword_2814B0A20;
    sub_252E36A94();
    sub_252E375D4();
    v82 = v31;
    v83 = v25;
    sub_252E36A84();
    v32 = swift_allocObject();
    v101 = v32;
    *(v32 + 16) = MEMORY[0x277D84F90];
    v81 = (v32 + 16);
    v33 = swift_allocObject();
    v100 = v33;
    *(v33 + 16) = 0;
    v34 = (v33 + 16);
    v35 = swift_allocObject();
    v99 = v35;
    *(v35 + 16) = 0;
    v80 = (v35 + 16);
    v118 = sub_252B89DF0(v116, v118);
    v98 = v36;
    sub_252E36D14();
    *v12 = v117;
    v37 = v10[13];
    v113 = *MEMORY[0x277D85178];
    v38 = v105;
    v111 = v37;
    v112 = v10 + 13;
    v37(v12);
    MEMORY[0x2530AD270](v22, v12);
    v39 = v10[1];
    v39(v12, v38);
    sub_252E36D34();
    v40 = v103;
    MEMORY[0x2530AD270](v18, v12);
    v39(v12, v38);
    v41 = *(v13 + 8);
    v102 = v18;
    v116 = v41;
    v117 = v13 + 8;
    (v41)(v18, v104);
    v18 = v40;
    v42 = v10 + 1;
    v43 = v12;
    if (qword_2814B0A70 != -1)
    {
      swift_once();
    }

    v44 = sub_252E36AD4();
    v45 = __swift_project_value_buffer(v44, qword_2814B0A78);
    v122 = 0;
    v123 = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000018, 0x8000000252E83C70);
    v79 = v22;
    sub_252E36D34();
    v46 = v105;
    sub_252E37AE4();
    v110 = v39;
    v39(v12, v46);
    v75 = "ocation context.";
    v76 = v45;
    sub_252CC3D90(v122, v123, 0xD000000000000080, 0x8000000252E83700);

    v115 = dispatch_group_create();
    swift_beginAccess();
    v10 = v102;
    if ((*v34 & 1) == 0)
    {
      v88 = v124;
      v89 = v107 + 13;
      v87 = v108 + 8;
      v86 = *MEMORY[0x277D85260];
      v85 = v106 + 1;
      v109 = v42;
      v120 = v12;
      v84 = v34;
      while (1)
      {
        dispatch_group_enter(v115);
        sub_25293F638(0, &qword_2814B0218, 0x277D85C78);
        sub_252E36CE4();
        v122 = MEMORY[0x277D84F90];
        sub_252B89DA4(&qword_2814B0220, MEMORY[0x277D85230], MEMORY[0x277D85238]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540300, &qword_252E3C170);
        v108 = MEMORY[0x277D83970];
        sub_2529E6488(&qword_2814B0278, &qword_27F540300, &qword_252E3C170, MEMORY[0x277D83970]);
        sub_252E37824();
        (v89->isa)(v94, v86, v95);
        v119 = sub_252E37594();
        v18 = v90;
        sub_252E36D14();
        *v43 = 2000;
        v47 = v43;
        v48 = v105;
        v111(v47, v113, v105);
        MEMORY[0x2530AD270](v18, v120);
        v110(v120, v48);
        v49 = v104;
        (v116)(v18, v104);
        v50 = swift_allocObject();
        v52 = v98;
        v51 = v99;
        v50[2] = v118;
        v50[3] = v52;
        v53 = v100;
        v50[4] = v101;
        v50[5] = v53;
        v54 = v115;
        v50[6] = v51;
        v50[7] = v54;
        v124[2] = sub_252B8C9A4;
        v124[3] = v50;
        v122 = MEMORY[0x277D85DD0];
        v123 = 1107296256;
        v124[0] = sub_252AD686C;
        v124[1] = &block_descriptor_35;
        v106 = _Block_copy(&v122);

        v10 = v102;

        v107 = v54;
        v55 = v114;
        sub_252E36CD4();
        v121[1] = MEMORY[0x277D84F90];
        sub_252B89DA4(qword_2814B0298, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5402F8, &qword_252E3E860);
        sub_2529E6488(&qword_2814B0280, &qword_27F5402F8, &qword_252E3E860, v108);
        v56 = v48;
        v57 = v96;
        v58 = v97;
        sub_252E37824();
        v59 = v55;
        v60 = v55;
        v61 = v106;
        MEMORY[0x2530ADA00](v10, v60, v57, v106);
        _Block_release(v61);
        v62 = v58;
        v43 = v120;
        (*v87)(v57, v62);
        (*v85)(v59, v91);
        v63 = v116;
        (v116)(v10, v49);

        sub_252E36D14();
        *v43 = 12000;
        v111(v43, v113, v56);
        MEMORY[0x2530AD270](v18, v43);
        v110(v43, v56);
        v63(v18, v49);
        sub_252E37504();
        v63(v10, v49);
        sub_252E36D14();
        sub_252B89DA4(&qword_27F5438A8, MEMORY[0x277D851E0], MEMORY[0x277D851E8]);
        v64 = sub_252E36EB4();
        v63(v10, v49);
        if (v64)
        {
          break;
        }

        if (*v84 == 1)
        {
          goto LABEL_10;
        }
      }

      sub_252CC3D90(0xD00000000000003FLL, 0x8000000252E83C90, 0xD000000000000080, v75 | 0x8000000000000000);

      *v84 = 1;
    }

LABEL_10:
    _s22HomeAutomationInternal8SignpostO3end7logging___ySo9OS_os_logC_0H012OSSignpostIDVs12StaticStringVAC7ContextVSgtFZ_0(v82, v83, "PollingAsyncCommand", 19, 2, v125);
    v65 = v81;
    swift_beginAccess();
    v25 = *v65;
    v22 = v80;
    swift_beginAccess();
    if (*v22)
    {

      goto LABEL_26;
    }

    v121[0] = MEMORY[0x277D84F90];
    v12 = v25 >> 62 ? sub_252E378C4() : *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v12)
    {
      break;
    }

    v13 = 0;
    while (1)
    {
      if ((v25 & 0xC000000000000001) != 0)
      {
        v66 = MEMORY[0x2530ADF00](v13, v25);
      }

      else
      {
        if (v13 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_28;
        }

        v66 = *(v25 + 8 * v13 + 32);
      }

      v18 = v66;
      v10 = (v13 + 1);
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (sub_252B8B61C(v118, v66))
      {
      }

      else
      {
        sub_252E37A94();
        sub_252E37AC4();
        sub_252E37AD4();
        v22 = v121;
        sub_252E37AA4();
      }

      ++v13;
      if (v10 == v12)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    swift_once();
  }

LABEL_25:

  v25 = v121[0];
LABEL_26:
  v68 = v103;
  v67 = v104;
  v70 = v77;
  v69 = v78;
  v71 = sub_252B8BEA0(v25);

  v72 = v116;
  (v116)(v68, v67);
  v72(v79, v67);
  (*(v70 + 8))(v83, v69);

  return v71;
}

uint64_t sub_252B88050(void *a1)
{
  if (qword_2814B0A70 != -1)
  {
    swift_once();
  }

  v2 = sub_252E36AD4();
  __swift_project_value_buffer(v2, qword_2814B0A78);
  sub_252E379F4();

  v3 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5438C0, &unk_252E4E960);
  v4 = sub_252E36F94();
  MEMORY[0x2530AD570](v4);

  sub_252CC3D90(0xD00000000000002FLL, 0x8000000252E83F60, 0xD000000000000080, 0x8000000252E83700);
}

uint64_t sub_252B88168(char a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5, uint64_t a6)
{
  v11 = sub_252E36AB4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v21 = a4;
    if (qword_2814B0A70 != -1)
    {
      swift_once();
    }

    v15 = sub_252E36AD4();
    __swift_project_value_buffer(v15, qword_2814B0A78);
    v22 = 0;
    v23 = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000015, 0x8000000252E83EE0);
    MEMORY[0x2530AD570](a2, a3);
    MEMORY[0x2530AD570](0xD000000000000032, 0x8000000252E83F00);
    sub_252CC3D90(v22, v23, 0xD000000000000080, 0x8000000252E83700);

    if (qword_27F53F5D0 != -1)
    {
      swift_once();
    }

    v16 = qword_27F544F58;
    v17 = sub_252E375E4();
    sub_252E36AA4();
    sub_252E36A74(v17, &dword_252917000, v16, "SentInvocationCommand", 21, 2, v14, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);
    (*(v12 + 8))(v14, v11);
    return v21(a6);
  }

  else
  {
    if (qword_2814B0A70 != -1)
    {
      swift_once();
    }

    v19 = sub_252E36AD4();
    __swift_project_value_buffer(v19, qword_2814B0A78);
    v22 = 0;
    v23 = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000033, 0x8000000252E83EA0);
    MEMORY[0x2530AD570](a2, a3);
    MEMORY[0x2530AD570](0x69737361206E6920, 0xED0000746E617473);
    sub_252CC4050(v22, v23, 0xD000000000000080, 0x8000000252E83700, 0xD000000000000020, 0x8000000252E83B80, 259);
  }
}

uint64_t sub_252B884FC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

void sub_252B88550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, NSObject *a6)
{
  v23 = a5;
  v24 = a6;
  v9 = sub_252E36D54();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2814B0A70 != -1)
  {
    swift_once();
  }

  v13 = sub_252E36AD4();
  __swift_project_value_buffer(v13, qword_2814B0A78);
  v25 = 0;
  v26 = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000018, 0x8000000252E83D70);
  sub_252E36D14();
  sub_252E37AE4();
  (*(v10 + 8))(v12, v9);
  sub_252CC3D90(v25, v26, 0xD000000000000080, 0x8000000252E83700);

  if (MEMORY[0x277D84F90] >> 62 && sub_252E378C4())
  {
    v14 = sub_2529FF6A8(MEMORY[0x277D84F90]);
  }

  else
  {
    v14 = MEMORY[0x277D84FA0];
  }

  v15 = sub_252A565B8(a2, v14, 0, 1, 0, 0, 0, 0);

  v16 = [v15 entityResponses];
  if (v16)
  {
    v17 = v16;
    type metadata accessor for HomeEntityResponse();
    v18 = sub_252E37264();

    swift_beginAccess();

    sub_25297A894(v19);
    swift_endAccess();
    if (sub_252B8C9B4(a1, v18))
    {
      sub_252CC3D90(0xD00000000000002ELL, 0x8000000252E83D90, 0xD000000000000080, 0x8000000252E83700);
      swift_beginAccess();
      *(a4 + 16) = 1;
      v20 = v23;
      swift_beginAccess();
      *(v20 + 16) = 1;
    }

    v21 = sub_252B8CC08(v18);

    if (v21)
    {
      swift_beginAccess();
      *(a4 + 16) = 1;
    }
  }

  dispatch_group_leave(v24);
}

uint64_t sub_252B888A0()
{
  sub_252C759A0(&unk_2864ADCC8);
  sub_252CD941C();
  v0 = sub_252DB4F4C();

  return v0 & 1;
}

void sub_252B888FC(unint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v63 = a4;
  v62 = a3;
  v76 = a2;
  v80 = sub_252E32E84();
  v5 = *(v80 - 8);
  v6 = MEMORY[0x28223BE20](v80);
  v75 = v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v71 = v61 - v8;
  if (qword_27F53F510 != -1)
  {
    goto LABEL_47;
  }

  while (1)
  {
    v9 = sub_252E36AD4();
    __swift_project_value_buffer(v9, qword_27F544DD8);
    v81 = 0;
    v82 = 0xE000000000000000;
    sub_252E379F4();

    v81 = 0x64656E696174624FLL;
    v82 = 0xE900000000000020;
    if (a1 >> 62)
    {
      v10 = sub_252E378C4();
    }

    else
    {
      v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v83 = v10;
    v11 = sub_252E37D94();
    MEMORY[0x2530AD570](v11);

    MEMORY[0x2530AD570](0xD000000000000017, 0x8000000252E84240);
    sub_252CC3D90(v81, v82, 0xD000000000000080, 0x8000000252E83700);

    if (!(a1 >> 62))
    {
      v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v12)
      {
        return;
      }

      goto LABEL_8;
    }

    v12 = sub_252E378C4();
    if (!v12)
    {
      break;
    }

LABEL_8:
    v13 = 0;
    v14 = a1 & 0xC000000000000001;
    v66 = a1 & 0xFFFFFFFFFFFFFF8;
    v65 = a1 + 32;
    v15 = v76 & 0xFFFFFFFFFFFFFF8;
    v78 = (v5 + 8);
    v79 = v76 & 0xFFFFFFFFFFFFFF8;
    if (v76 < 0)
    {
      v15 = v76;
    }

    v61[1] = v15;
    v74 = v76 & 0xC000000000000001;
    v16 = &off_279711000;
    v70 = v76 >> 62;
    v64 = xmmword_252E3C290;
    v68 = v12;
    v67 = a1 & 0xC000000000000001;
    v69 = a1;
    while (1)
    {
      if (v14)
      {
        v17 = MEMORY[0x2530ADF00](v13, a1);
      }

      else
      {
        if (v13 >= *(v66 + 16))
        {
          goto LABEL_46;
        }

        v17 = *(v65 + 8 * v13);
      }

      v18 = v17;
      if (__OFADD__(v13++, 1))
      {
        break;
      }

      v20 = [v17 v16[429]];
      objc_opt_self();
      v21 = swift_dynamicCastObjCClass();
      if (v21)
      {
        v5 = [v21 characteristic];
        v22 = [v5 service];

        if (v22)
        {
          v72 = v18;
          v5 = [v22 uniqueIdentifier];

          v23 = v71;
          sub_252E32E64();

          v24 = sub_252E32E24();
          v26 = v25;
          v27 = *v78;
          (*v78)(v23, v80);
          v73 = v13;
          if (v70)
          {
            v28 = sub_252E378C4();
            if (v28)
            {
              goto LABEL_22;
            }
          }

          else
          {
            v28 = *(v79 + 16);
            if (v28)
            {
LABEL_22:
              v29 = 0;
              v77 = v20;
              while (1)
              {
                if (v74)
                {
                  v30 = MEMORY[0x2530ADF00](v29, v76);
                  a1 = v29 + 1;
                  if (__OFADD__(v29, 1))
                  {
                    goto LABEL_43;
                  }
                }

                else
                {
                  if (v29 >= *(v79 + 16))
                  {
                    goto LABEL_44;
                  }

                  v30 = *(v76 + 8 * v29 + 32);

                  a1 = v29 + 1;
                  if (__OFADD__(v29, 1))
                  {
LABEL_43:
                    __break(1u);
LABEL_44:
                    __break(1u);
                    goto LABEL_45;
                  }
                }

                v31 = [*(v30 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) uniqueIdentifier];
                v32 = v75;
                sub_252E32E64();

                v33 = sub_252E32E24();
                v35 = v34;
                v27(v32, v80);
                if (v33 == v24 && v35 == v26)
                {
                  break;
                }

                v5 = sub_252E37DB4();

                if (v5)
                {
                  goto LABEL_36;
                }

                ++v29;
                v20 = v77;
                if (a1 == v28)
                {
                  goto LABEL_40;
                }
              }

LABEL_36:
              type metadata accessor for HomeEntity.Builder();
              swift_allocObject();
              HomeEntity.Builder.init()();
              v37 = v36;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5401A0, &qword_252E3BFC8);
              v38 = swift_allocObject();
              *(v38 + 16) = v64;
              *(v38 + 32) = sub_252CD941C();
              v39 = (*(*v37 + 400))(v38);

              v40 = *(v30 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
              v41 = *(v30 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);
              v42 = *(*v39 + 376);

              v43 = v42(v40, v41);

              v44 = (*(*v43 + 392))(v24, v26);

              v46 = (*(*v44 + 448))(v45);

              v47 = v72;
              v48 = sub_252DE56C8(v62);
              type metadata accessor for HomeEntityResponse.Builder();
              v49 = swift_allocObject();
              swift_allocObject();
              v50.n128_f64[0] = HomeEntity.Builder.init()();
              v52 = (*(*v51 + 448))(v50);

              v53 = MEMORY[0x277D84F90];
              *(v49 + 16) = v46;
              *(v49 + 24) = v53;
              v54 = v46;

              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540ED8, qword_252E4E970);
              inited = swift_initStackObject();
              *(inited + 16) = v64;
              *(inited + 32) = v48;
              v56 = v48;
              v57 = sub_25297D0C0(inited);

              swift_setDeallocating();
              v58 = sub_25293847C(inited + 32, &qword_27F540EE0, &qword_252E4D870);
              (*(*v57 + 192))(v58);

              v5 = v63;
              v59 = swift_beginAccess();
              MEMORY[0x2530AD700](v59);
              v60 = v77;
              if (*((*(v5 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v5 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_252E372A4();
                v5 = v63;
              }

              sub_252E372D4();
              swift_endAccess();

              goto LABEL_41;
            }
          }

LABEL_40:

LABEL_41:
          a1 = v69;
          v12 = v68;
          v13 = v73;
          v14 = v67;
          v16 = &off_279711000;
          goto LABEL_12;
        }
      }

      else
      {
      }

LABEL_12:
      if (v13 == v12)
      {
        return;
      }
    }

LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    swift_once();
  }
}

uint64_t sub_252B89214(void *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = a1;
    if (qword_2814B0A70 != -1)
    {
      swift_once();
    }

    v5 = sub_252E36AD4();
    __swift_project_value_buffer(v5, qword_2814B0A78);
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000033, 0x8000000252E84200);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541ED0, &unk_252E3C480);
    sub_252E37AE4();
    sub_252CC4050(0, 0xE000000000000000, 0xD000000000000080, 0x8000000252E83700, 0xD00000000000002DLL, 0x8000000252E84070, 546);

    v6 = 5;
  }

  else
  {
    if (qword_2814B0A70 != -1)
    {
      swift_once();
    }

    v7 = sub_252E36AD4();
    __swift_project_value_buffer(v7, qword_2814B0A78);
    sub_252CC3D90(0xD000000000000031, 0x8000000252E841C0, 0xD000000000000080, 0x8000000252E83700);
    v6 = 4;
  }

  swift_beginAccess();
  *(a2 + 16) = v6;
  return sub_252E37614();
}

unint64_t *sub_252B8941C(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_252A1970C(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_252B894AC(uint64_t a1, uint64_t a2)
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541F20, &qword_252E3C180);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v32 - v5;
  v7 = sub_252E32E84();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5438A0, &qword_252E4E948);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_252E3C290;
  v12 = MEMORY[0x277D837D0];
  *(v11 + 32) = 0x696669746E656469;
  *(v11 + 40) = 0xEA00000000007265;
  *(v11 + 88) = v12;
  *(v11 + 56) = v12;
  *(v11 + 64) = a1;
  *(v11 + 72) = a2;
  sub_25293F638(0, &qword_27F545360, 0x277CBEB38);

  v13 = sub_252E37494();
  sub_252B680FC(v13);
  sub_252B68288();
  v15 = v14;

  if (v15)
  {
    sub_252E32E14();

    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      sub_25293847C(v6, &unk_27F541F20, &qword_252E3C180);
    }

    else
    {
      (*(v8 + 32))(v10, v6, v7);
      if (qword_2814B0A70 != -1)
      {
        swift_once();
      }

      v16 = sub_252E36AD4();
      __swift_project_value_buffer(v16, qword_2814B0A78);
      v33 = 0;
      v34 = 0xE000000000000000;
      sub_252E379F4();

      v33 = 0xD000000000000015;
      v34 = 0x8000000252E83890;
      sub_252B89DA4(&qword_27F5404A8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v17 = sub_252E37D94();
      MEMORY[0x2530AD570](v17);

      sub_252CC3D90(v33, v34, 0xD000000000000080, 0x8000000252E83700);

      v18 = sub_252E32E44();
      v19 = sub_252E36F04();
      [v13 setValue:v18 forKey:v19];

      (*(v8 + 8))(v10, v7);
    }
  }

  if (qword_2814B0A70 != -1)
  {
    swift_once();
  }

  v20 = sub_252E36AD4();
  __swift_project_value_buffer(v20, qword_2814B0A78);
  v33 = 0;
  v34 = 0xE000000000000000;
  sub_252E379F4();

  v33 = 0xD00000000000001CLL;
  v34 = 0x8000000252E83810;
  v21 = [v13 description];
  v22 = sub_252E36F34();
  v24 = v23;

  MEMORY[0x2530AD570](v22, v24);

  sub_252CC3D90(v33, v34, 0xD000000000000080, 0x8000000252E83700);

  v25 = objc_opt_self();
  v33 = 0;
  v26 = [v25 archivedDataWithRootObject:v13 requiringSecureCoding:1 error:&v33];
  v27 = v33;
  if (v26)
  {
    v28 = sub_252E32D34();
  }

  else
  {
    v29 = v27;
    v30 = sub_252E32C54();

    swift_willThrow();
    v33 = 0;
    v34 = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000034, 0x8000000252E83830);
    v32[1] = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541ED0, &unk_252E3C480);
    sub_252E37AE4();
    sub_252CC4050(v33, v34, 0xD000000000000080, 0x8000000252E83700, 0xD000000000000018, 0x8000000252E83870, 289);

    return 0;
  }

  return v28;
}

id sub_252B89AA0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = sub_252B894AC(a1, a2);
  if (v7 >> 60 == 15)
  {
    if (qword_2814B0A70 != -1)
    {
      swift_once();
    }

    v8 = sub_252E36AD4();
    __swift_project_value_buffer(v8, qword_2814B0A78);
    sub_252CC4050(0xD000000000000020, 0x8000000252E836D0, 0xD000000000000080, 0x8000000252E83700, 0xD00000000000002DLL, 0x8000000252E83790, 592);
    return 0;
  }

  else
  {
    v10 = v7;
    v11 = v6;
    if (qword_2814B0A70 != -1)
    {
      swift_once();
    }

    v12 = sub_252E36AD4();
    __swift_project_value_buffer(v12, qword_2814B0A78);
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000028, 0x8000000252E837C0);
    MEMORY[0x2530AD570](0xD00000000000001BLL, 0x8000000252E837F0);
    MEMORY[0x2530AD570](0x6E6F63202020200ALL, 0xEE00203A74786574);
    v13 = sub_252E32CD4();
    MEMORY[0x2530AD570](v13);

    sub_252CC3D90(0, 0xE000000000000000, 0xD000000000000080, 0x8000000252E83700);

    sub_2529E61B0(v11, v10);
    v14 = sub_252E36F04();
    v15 = sub_252E32D14();
    v16 = [objc_opt_self() reportContextWithDomain:v14 requestInfo:v15];

    sub_252982EFC(v11, v10);
    v17 = a3;
    if (a4)
    {
      v17 = 7.0;
    }

    [v16 setReportTimeout_];
    sub_252982EFC(v11, v10);
    return v16;
  }
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_252B89DA4(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_252B89DF0(void *a1, unint64_t a2)
{
  v4 = 0;
  v206 = *MEMORY[0x277D85DE8];
  *&v196 = sub_252E32E84();
  v5 = *(v196 - 8);
  v6 = MEMORY[0x28223BE20](v196);
  v194 = &v186 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v186 - v8;
  v10 = MEMORY[0x277D84F90];
  v11 = sub_252CC6468(MEMORY[0x277D84F90]);
  v198 = sub_252CC6468(v10);
  v12 = [a1 taskType];
  v197 = v11;
  if (v12 != 1 || [a1 attribute] != 1)
  {
    sub_252A591B8(a2, a1);
    v10 = v22;
    v192 = 0;
    v195 = a1;
    if ((v22 & 0xC000000000000001) == 0)
    {
      v52 = *(v22 + 32);
      v23 = ((1 << v52) + 63) >> 6;
      if ((v52 & 0x3Fu) <= 0xD)
      {
        goto LABEL_40;
      }

      goto LABEL_102;
    }

    v23 = MEMORY[0x277D84FA0];
    v201 = MEMORY[0x277D84FA0];
    sub_252E37874();
    v24 = sub_252E37904();
    if (v24)
    {
      v25 = v24;
      type metadata accessor for Service(0);
      v26 = v25;
      do
      {
        v203[0] = v26;
        swift_dynamicCast();
        v27 = v200;
        v28 = sub_25292A344();
        v203[0] = MEMORY[0x2530AD880](4, &type metadata for HomeDeviceType, v28);
        sub_252DA6E20(v199, 7);
        sub_252DA6E20(v199, 4);
        sub_252DA6E20(v199, 27);
        sub_252DA6E20(v199, 28);
        v29 = v203[0];
        v30 = [*(v27 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) serviceType];
        v31 = sub_252E36F34();
        v4 = v32;

        if (qword_27F53F8B8 != -1)
        {
          swift_once();
        }

        v33 = off_27F546230;
        if (*(off_27F546230 + 2) && (v34 = sub_252A44A10(v31, v4), (v35 & 1) != 0))
        {
          v36 = *(v33[7] + 8 * v34);
        }

        else
        {
          v36 = 0;
        }

        if (*(v29 + 16) && (sub_252E37EC4(), MEMORY[0x2530AE390](v36), v37 = sub_252E37F14(), v38 = -1 << *(v29 + 32), v39 = v37 & ~v38, ((*(v29 + 56 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39) & 1) != 0))
        {
          v40 = ~v38;
          while (*(*(v29 + 48) + 8 * v39) != v36)
          {
            v39 = (v39 + 1) & v40;
            if (((*(v29 + 56 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39) & 1) == 0)
            {
              goto LABEL_10;
            }
          }

          v10 = v200;
          v41 = *(v23 + 16);
          if (*(v23 + 24) <= v41)
          {
            sub_252DAAAAC(v41 + 1);
          }

          v23 = v201;
          sub_252E37EC4();
          sub_252B89DA4(&qword_27F540680, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
          sub_252E36E94();
          MEMORY[0x2530AE390](*(v10 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType));

          sub_252E37044();

          v42 = sub_252E37F14();
          v43 = v23 + 56;
          v44 = -1 << *(v23 + 32);
          v45 = v42 & ~v44;
          v46 = v45 >> 6;
          if (((-1 << v45) & ~*(v23 + 56 + 8 * (v45 >> 6))) != 0)
          {
            v47 = __clz(__rbit64((-1 << v45) & ~*(v23 + 56 + 8 * (v45 >> 6)))) | v45 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v48 = 0;
            v49 = (63 - v44) >> 6;
            do
            {
              if (++v46 == v49 && (v48 & 1) != 0)
              {
                __break(1u);
                goto LABEL_99;
              }

              v50 = v46 == v49;
              if (v46 == v49)
              {
                v46 = 0;
              }

              v48 |= v50;
              v51 = *(v43 + 8 * v46);
            }

            while (v51 == -1);
            v47 = __clz(__rbit64(~v51)) + (v46 << 6);
          }

          *(v43 + ((v47 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v47;
          *(*(v23 + 48) + 8 * v47) = v10;
          ++*(v23 + 16);
        }

        else
        {
LABEL_10:
        }

        v26 = sub_252E37904();
      }

      while (v26);
    }

    if ((v23 & 0xC000000000000001) == 0)
    {
      goto LABEL_105;
    }

    goto LABEL_68;
  }

  v13 = type metadata accessor for HomeStore(0);
  v14 = static HomeStore.shared.getter(v13);
  v15 = HomeStore.scenes(matching:)(a2);
  v17 = v16;

  if (v17)
  {
    sub_252929F10(v15, 1);

    if (qword_2814B0A70 != -1)
    {
      swift_once();
    }

    v18 = sub_252E36AD4();
    __swift_project_value_buffer(v18, qword_2814B0A78);
    sub_252CC4050(0xD00000000000001CLL, 0x8000000252E83E50, 0xD000000000000080, 0x8000000252E83700, 0xD00000000000002BLL, 0x8000000252E83E70, 396);
    v19 = MEMORY[0x277D84F90];
    v20 = sub_252CC6468(MEMORY[0x277D84F90]);
    v198 = sub_252CC6468(v19);
    return v20;
  }

  v82 = sub_252B84A70(v15);
  sub_252929F10(v15, 0);
  v203[0] = v10;
  v187 = v5;
  if (v82 >> 62)
  {
    v4 = sub_252E378C4();
    v23 = 0x277CD1000uLL;
    if (v4)
    {
      goto LABEL_71;
    }

LABEL_126:
    v104 = MEMORY[0x277D84F90];
    goto LABEL_127;
  }

  v4 = *((v82 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v23 = 0x277CD1000uLL;
  if (!v4)
  {
    goto LABEL_126;
  }

LABEL_71:
  v83 = 0;
  v84 = v82 & 0xC000000000000001;
  v85 = v82 & 0xFFFFFFFFFFFFFF8;
  v189 = (v187 + 32);
  v188 = (v187 + 8);
  v191 = v9;
  *&v190 = v4;
  v192 = v82 & 0xC000000000000001;
  v195 = v82;
  while (1)
  {
    if (v84)
    {
      v86 = MEMORY[0x2530ADF00](v83, v82);
      v10 = v83 + 1;
      if (__OFADD__(v83, 1))
      {
        break;
      }

      goto LABEL_77;
    }

    if (v83 >= *(v85 + 16))
    {
      goto LABEL_101;
    }

    v86 = *(v82 + 8 * v83 + 32);

    v10 = v83 + 1;
    if (__OFADD__(v83, 1))
    {
      break;
    }

LABEL_77:
    if (*(v86 + 40) == 1)
    {
      v87 = *(v86 + 16);
      objc_opt_self();
      v88 = swift_dynamicCastObjCClass();
      if (v88)
      {
        v89 = v88;
        v90 = v87;
        v91 = [v89 characteristic];
        v92 = [v91 service];

        if (v92)
        {
          type metadata accessor for Service(0);
          v93 = swift_allocObject();
          v94 = v92;
          v95 = [v94 uniqueIdentifier];
          sub_252E32E64();

          v96 = [v94 assistantIdentifier];
          if (v96)
          {
            v97 = v96;
            sub_252E36F34();
            v193 = v98;
          }

          else
          {

            v193 = 0;
          }

          (*v189)(v93 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v9, v196);

          if (qword_27F53F410 != -1)
          {
            swift_once();
          }

          v99 = [v94 serviceType];
          v100 = sub_252E36F34();
          v102 = v101;

          if (qword_27F53F8B8 != -1)
          {
            swift_once();
          }

          if (*(off_27F546230 + 2))
          {
            sub_252A44A10(v100, v102);
          }

          v84 = v192;

          v103 = sub_252DB4F4C();
          swift_setDeallocating();
          (*v188)(v93 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v196);

          swift_deallocClassInstance();
          if (v103)
          {
            sub_252E37A94();
            sub_252E37AC4();
            sub_252E37AD4();
            sub_252E37AA4();
          }

          else
          {
          }

          v23 = 0x277CD1000;
          v9 = v191;
          v4 = v190;
          v82 = v195;
        }

        else
        {

          v84 = v192;
          v82 = v195;
        }
      }

      else
      {

        v82 = v195;
      }
    }

    else
    {
    }

    ++v83;
    if (v10 == v4)
    {
      v104 = v203[0];
LABEL_127:

      if ((v104 & 0x8000000000000000) != 0 || (v104 & 0x4000000000000000) != 0)
      {
        v131 = sub_252E378C4();
        if (v131)
        {
          goto LABEL_130;
        }
      }

      else
      {
        v131 = *(v104 + 16);
        if (v131)
        {
LABEL_130:
          if (v131 < 1)
          {
            __break(1u);
          }

          v132 = 0;
          v133 = v104 & 0xC000000000000001;
          v191 = (v187 + 32);
          v190 = xmmword_252E3C130;
          v193 = v104;
          v195 = v131;
          v192 = v104 & 0xC000000000000001;
          do
          {
            if (v133)
            {
              v134 = MEMORY[0x2530ADF00](v132, v104);
            }

            else
            {
              v134 = *(v104 + 8 * v132 + 32);
            }

            if (*(v134 + 40) == 1)
            {
              v135 = *(v134 + 16);
              objc_opt_self();
              v136 = swift_dynamicCastObjCClass();
              if (v136)
              {
                v137 = v136;
                v138 = v135;
                v139 = [v137 characteristic];
                v140 = [v139 service];

                if (v140)
                {
                  type metadata accessor for Service(0);
                  v141 = swift_allocObject();
                  *(v141 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) = v140;
                  v142 = v140;
                  v143 = [v142 uniqueIdentifier];
                  sub_252E32E64();

                  v144 = [v142 name];
                  v145 = sub_252E36F34();
                  v147 = v146;

                  v148 = [v142 assistantIdentifier];
                  if (v148)
                  {
                    v149 = v148;
                    v150 = sub_252E36F34();
                    v152 = v151;
                  }

                  else
                  {

                    v150 = 0;
                    v152 = 0;
                  }

                  (*v191)(v141 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v194, v196);
                  v153 = (v141 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
                  *v153 = v145;
                  v153[1] = v147;
                  *(v141 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType) = 7;
                  v154 = (v141 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier);
                  *v154 = v150;
                  v154[1] = v152;

                  if (*(v134 + 40) == 1 && (v155 = *(v134 + 16), objc_opt_self(), (v156 = swift_dynamicCastObjCClass()) != 0))
                  {
                    v157 = v156;
                    v158 = v155;
                    v159 = [v157 characteristic];
                    v160 = [v157 targetValue];
                    ObjectType = swift_getObjectType();
                    v203[0] = v160;
                    v161 = sub_252C69EA4(v159, v203);

                    sub_25293847C(v203, &qword_27F541E80, &qword_252E3DFA0);
                    v162 = [v157 characteristic];
                    v163 = [v162 characteristicType];

                    v164 = sub_252E36F34();
                    v166 = v165;

                    v167 = sub_252DE9AAC(v164, v166);

                    v168 = type metadata accessor for HomeUserTask();
                    v169 = objc_allocWithZone(v168);
                    v170 = v161;
                    v171 = sub_252E36F04();
                    v172 = [v169 initWithIdentifier:0 displayString:v171];

                    v173 = v172;
                    [v173 setTaskType_];
                    [v173 setAttribute_];
                    [v173 setValue_];

                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
                    v174 = swift_allocObject();
                    *(v174 + 16) = v190;
                    *(v174 + 32) = v173;
                    v175 = v173;

                    v176 = v197;
                    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                    v203[0] = v176;
                    sub_2529FB234(v174, v141, isUniquelyReferenced_nonNull_native);

                    v197 = v203[0];
                    v178 = swift_allocObject();
                    *(v178 + 16) = v190;
                    v179 = [v175 attribute];
                    v180 = objc_allocWithZone(v168);
                    v181 = sub_252E36F04();
                    v182 = [v180 initWithIdentifier:0 displayString:v181];

                    v183 = v182;
                    [v183 setTaskType_];
                    [v183 setAttribute_];
                    [v183 setValue_];

                    *(v178 + 32) = v183;
                    v184 = v198;
                    v185 = swift_isUniquelyReferenced_nonNull_native();
                    v203[0] = v184;
                    sub_2529FB234(v178, v141, v185);

                    v198 = v203[0];
                  }

                  else
                  {
                  }

                  v104 = v193;
                  v131 = v195;
                  v133 = v192;
                  goto LABEL_134;
                }
              }
            }

LABEL_134:
            ++v132;
          }

          while (v131 != v132);
        }
      }

LABEL_121:
      if (qword_2814B0A70 != -1)
      {
        goto LABEL_124;
      }

      goto LABEL_122;
    }
  }

  while (1)
  {
    __break(1u);
LABEL_101:
    __break(1u);
LABEL_102:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

LABEL_40:
    v191 = v23;
    *&v190 = &v186;
    MEMORY[0x28223BE20](v22);
    v193 = &v186 - ((v53 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v193, v53);
    *&v196 = 0;
    v54 = 0;
    v55 = v10 + 56;
    v56 = 1 << *(v10 + 32);
    if (v56 < 64)
    {
      v57 = ~(-1 << v56);
    }

    else
    {
      v57 = -1;
    }

    v23 = v57 & *(v10 + 56);
    v58 = (v56 + 63) >> 6;
    v194 = v10;
    while (v23)
    {
      v59 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
LABEL_52:
      v62 = v59 | (v54 << 6);
      v63 = *(*(v10 + 48) + 8 * v62);
      v64 = sub_25292A344();

      v203[0] = MEMORY[0x2530AD880](4, &type metadata for HomeDeviceType, v64);
      sub_252DA6E20(&v201, 7);
      sub_252DA6E20(&v201, 4);
      sub_252DA6E20(&v201, 27);
      sub_252DA6E20(&v201, 28);
      v65 = v203[0];
      v66 = [*(v63 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) serviceType];
      v67 = sub_252E36F34();
      v4 = v68;

      if (qword_27F53F8B8 != -1)
      {
        swift_once();
      }

      v69 = off_27F546230;
      if (*(off_27F546230 + 2) && (v70 = sub_252A44A10(v67, v4), (v71 & 1) != 0))
      {
        v72 = *(v69[7] + 8 * v70);
      }

      else
      {
        v72 = 0;
      }

      if (*(v65 + 16) && (sub_252E37EC4(), MEMORY[0x2530AE390](v72), v73 = sub_252E37F14(), v74 = -1 << *(v65 + 32), v75 = v73 & ~v74, ((*(v65 + 56 + ((v75 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v75) & 1) != 0))
      {
        v76 = ~v74;
        while (*(*(v65 + 48) + 8 * v75) != v72)
        {
          v75 = (v75 + 1) & v76;
          if (((*(v65 + 56 + ((v75 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v75) & 1) == 0)
          {
            goto LABEL_44;
          }
        }

        *&v193[(v62 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v62;
        v77 = __OFADD__(v196, 1);
        *&v196 = v196 + 1;
        v10 = v194;
        if (v77)
        {
          __break(1u);
          goto LABEL_104;
        }
      }

      else
      {
LABEL_44:

        v10 = v194;
      }
    }

    v60 = v54;
    while (1)
    {
      v54 = v60 + 1;
      if (__OFADD__(v60, 1))
      {
        break;
      }

      if (v54 >= v58)
      {
        v23 = sub_252C53048(v193, v191, v196, v10);
        if ((v23 & 0xC000000000000001) == 0)
        {
          goto LABEL_105;
        }

        goto LABEL_68;
      }

      v61 = *(v55 + 8 * v54);
      ++v60;
      if (v61)
      {
        v59 = __clz(__rbit64(v61));
        v23 = (v61 - 1) & v61;
        goto LABEL_52;
      }
    }

LABEL_99:
    __break(1u);
  }

LABEL_104:
  v105 = swift_slowAlloc();
  v23 = sub_252B8941C(v105, v23, v10, sub_252B888A0);
  v192 = v4;

  MEMORY[0x2530AED00](v105, -1, -1);
  if ((v23 & 0xC000000000000001) != 0)
  {
LABEL_68:
    sub_252E37874();
    type metadata accessor for Service(0);
    sub_252B89DA4(&qword_27F541EB0, type metadata accessor for Service, protocol conformance descriptor for Entity);
    sub_252E373E4();
    v23 = v203[0];
    v78 = v203[1];
    v79 = v203[2];
    v80 = ObjectType;
    v81 = v205;
    goto LABEL_109;
  }

LABEL_105:
  v80 = 0;
  v106 = -1 << *(v23 + 32);
  v78 = v23 + 56;
  v79 = ~v106;
  v107 = -v106;
  if (v107 < 64)
  {
    v108 = ~(-1 << v107);
  }

  else
  {
    v108 = -1;
  }

  v81 = v108 & *(v23 + 56);
LABEL_109:
  v194 = v79;
  v109 = (v79 + 64) >> 6;
  v196 = xmmword_252E3C130;
  if ((v23 & 0x8000000000000000) != 0)
  {
    goto LABEL_116;
  }

  while (1)
  {
    v110 = v80;
    v111 = v81;
    v112 = v80;
    if (!v81)
    {
      break;
    }

LABEL_114:
    v113 = (v111 - 1) & v111;
    v114 = *(*(v23 + 48) + ((v112 << 9) | (8 * __clz(__rbit64(v111)))));

    if (!v114)
    {
LABEL_120:
      sub_25297DEB0(v23);
      goto LABEL_121;
    }

    while (1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
      v116 = swift_allocObject();
      *(v116 + 16) = v196;
      v117 = v195;
      *(v116 + 32) = v195;
      v118 = v117;

      v119 = v197;
      v120 = swift_isUniquelyReferenced_nonNull_native();
      v201 = v119;
      sub_2529FB234(v116, v114, v120);

      v197 = v201;
      v121 = swift_allocObject();
      *(v121 + 16) = v196;
      v122 = [v118 attribute];
      v123 = objc_allocWithZone(type metadata accessor for HomeUserTask());
      v124 = sub_252E36F04();
      v125 = [v123 initWithIdentifier:0 displayString:v124];

      v126 = v125;
      [v126 setTaskType_];
      [v126 setAttribute_];
      [v126 setValue_];

      *(v121 + 32) = v126;
      v127 = v198;
      v128 = swift_isUniquelyReferenced_nonNull_native();
      v201 = v127;
      sub_2529FB234(v121, v114, v128);

      v198 = v201;
      v80 = v112;
      v81 = v113;
      if ((v23 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_116:
      v115 = sub_252E37904();
      if (v115)
      {
        v200 = v115;
        type metadata accessor for Service(0);
        swift_dynamicCast();
        v114 = v201;
        v112 = v80;
        v113 = v81;
        if (v201)
        {
          continue;
        }
      }

      goto LABEL_120;
    }
  }

  while (1)
  {
    v112 = v110 + 1;
    if (__OFADD__(v110, 1))
    {
      break;
    }

    if (v112 >= v109)
    {
      goto LABEL_120;
    }

    v111 = *(v78 + 8 * v112);
    ++v110;
    if (v111)
    {
      goto LABEL_114;
    }
  }

  __break(1u);
LABEL_124:
  swift_once();
LABEL_122:
  v129 = sub_252E36AD4();
  __swift_project_value_buffer(v129, qword_2814B0A78);
  v201 = 0;
  v202 = 0xE000000000000000;
  sub_252E379F4();

  v201 = 0xD00000000000001FLL;
  v202 = 0x8000000252E83E30;
  type metadata accessor for Service(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541EA8, qword_252E51A90);
  sub_252B89DA4(&qword_27F541EB0, type metadata accessor for Service, protocol conformance descriptor for Entity);
  v130 = sub_252E36E54();
  MEMORY[0x2530AD570](v130);

  sub_252CC3D90(v201, v202, 0xD000000000000080, 0x8000000252E83700);

  return v197;
}

uint64_t sub_252B8B61C(uint64_t a1, void *a2)
{
  if (qword_2814B0A70 != -1)
  {
    swift_once();
  }

  v5 = sub_252E36AD4();
  __swift_project_value_buffer(v5, qword_2814B0A78);
  sub_252CC3D90(0xD000000000000021, 0x8000000252E83D00, 0xD000000000000080, 0x8000000252E83700);
  v6 = [a2 taskResponses];
  v7 = MEMORY[0x277D84F90];
  v68 = a1;
  if (v6)
  {
    v8 = v6;
    v69 = a2;
    type metadata accessor for HomeUserTaskResponse();
    v9 = sub_252E37264();

    v71[0] = v7;
    if (v9 >> 62)
    {
      v10 = sub_252E378C4();
      if (v10)
      {
LABEL_6:
        v11 = 0;
        v7 = v9 & 0xC000000000000001;
        do
        {
          if (v7)
          {
            v12 = MEMORY[0x2530ADF00](v11, v9);
          }

          else
          {
            if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_82;
            }

            v12 = *(v9 + 8 * v11 + 32);
          }

          v13 = v12;
          v2 = (v11 + 1);
          if (__OFADD__(v11, 1))
          {
            goto LABEL_81;
          }

          v14 = [v12 userTask];
          if (v14 && (v15 = v14, v16 = [v14 taskType], v15, v16 == 4))
          {
            sub_252E37A94();
            sub_252E37AC4();
            sub_252E37AD4();
            sub_252E37AA4();
          }

          else
          {
          }

          ++v11;
        }

        while (v2 != v10);
        v7 = v71[0];
      }
    }

    else
    {
      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v10)
      {
        goto LABEL_6;
      }
    }

    a1 = v68;
    a2 = v69;
  }

  if (v7 >> 62)
  {
    v17 = sub_252E378C4();
    if (!v17)
    {
      goto LABEL_86;
    }
  }

  else
  {
    v17 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v17)
    {
      goto LABEL_86;
    }
  }

  v18 = 0;
  v19 = a1 + 64;
  v64 = v17;
  v65 = v7 & 0xC000000000000001;
  v62 = v7 & 0xFFFFFFFFFFFFFF8;
  v63 = v7;
  v61 = v7 + 32;
  v60 = 0x8000000252E83D30;
  while (2)
  {
    if (v65)
    {
      v20 = MEMORY[0x2530ADF00](v18, v63);
      v21 = __OFADD__(v18, 1);
      v22 = v18 + 1;
      if (!v21)
      {
        goto LABEL_28;
      }

      goto LABEL_80;
    }

    if (v18 >= *(v62 + 16))
    {
      goto LABEL_83;
    }

    v20 = *(v61 + 8 * v18);
    v21 = __OFADD__(v18, 1);
    v22 = v18 + 1;
    if (v21)
    {
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:

      sub_252CC3D90(0xD000000000000018, 0x8000000252E83D50, 0xD000000000000080, 0x8000000252E83700);

      return 1;
    }

LABEL_28:
    v66 = v20;
    v67 = v22;
    v23 = 1 << *(a1 + 32);
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    else
    {
      v24 = -1;
    }

    v25 = v24 & *(a1 + 64);
    v7 = (v23 + 63) >> 6;

    v26 = 0;
    while (1)
    {
      if (!v25)
      {
        while (1)
        {
          v27 = v26 + 1;
          if (__OFADD__(v26, 1))
          {
            break;
          }

          if (v27 >= v7)
          {

            v39 = v64;
            goto LABEL_48;
          }

          v25 = *(v19 + 8 * v27);
          ++v26;
          if (v25)
          {
            v26 = v27;
            goto LABEL_39;
          }
        }

        __break(1u);
        goto LABEL_80;
      }

LABEL_39:

      v28 = sub_252E32E24();
      v30 = v29;
      v2 = a2;
      v31 = [a2 entity];
      if (!v31 || (v32 = v31, v33 = [v31 entityIdentifier], v32, !v33))
      {

        goto LABEL_33;
      }

      v34 = sub_252E36F34();
      v36 = v35;

      if (v28 == v34 && v30 == v36)
      {
        break;
      }

      v38 = sub_252E37DB4();

      if (v38)
      {
        a1 = v68;

        goto LABEL_52;
      }

LABEL_33:
      v25 &= v25 - 1;

      a2 = v2;
      a1 = v68;
    }

    a1 = v68;

LABEL_52:
    a2 = v2;
    v7 = v70;
    v39 = v64;
    v18 = v67;
    if (!*(a1 + 16))
    {
      goto LABEL_76;
    }

    result = sub_252A454C0(v70);
    if ((v41 & 1) == 0)
    {
      goto LABEL_76;
    }

    v42 = *(*(a1 + 56) + 8 * result);
    if (v42 >> 62)
    {
      result = sub_252E378C4();
      if (!result)
      {
        goto LABEL_76;
      }

LABEL_56:
      if ((v42 & 0xC000000000000001) != 0)
      {

        v43 = MEMORY[0x2530ADF00](0, v42);
      }

      else
      {
        if (!*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return result;
        }

        v43 = *(v42 + 32);
      }

      sub_252E379F4();

      v44 = [v43 description];
      v45 = sub_252E36F34();
      v47 = v46;

      MEMORY[0x2530AD570](v45, v47);

      v2 = v43;
      sub_252CC3D90(0xD000000000000013, v60, 0xD000000000000080, 0x8000000252E83700);

      sub_252E379F4();

      strcpy(v71, "TaskResponse: ");
      HIBYTE(v71[1]) = -18;
      v48 = [v66 description];
      v49 = sub_252E36F34();
      v51 = v50;

      MEMORY[0x2530AD570](v49, v51);

      sub_252CC3D90(v71[0], v71[1], 0xD000000000000080, 0x8000000252E83700);

      v52 = [v66 userTask];
      v7 = &off_279711000;
      if (!v52)
      {
        [v2 attribute];

        a1 = v68;
LABEL_48:
        v18 = v67;
        goto LABEL_49;
      }

      v53 = v52;
      v54 = [v52 attribute];

      v18 = v67;
      a1 = v68;
      if (v54 == [v2 attribute])
      {
        v55 = [v66 userTask];
        v56 = [v55 value];

        v7 = v2;
        v57 = [v2 value];
        v58 = v57;
        if (v56)
        {
          if (v57)
          {
            type metadata accessor for HomeAttributeValue();
            v59 = sub_252E37694();

            if ((v59 & 1) == 0)
            {
              goto LABEL_74;
            }

LABEL_69:
            if (qword_27F53F728 != -1)
            {
              swift_once();
            }

            v7 = v66;
            [v66 taskOutcome];
            if (sub_252DB4F4C())
            {
              goto LABEL_84;
            }

            goto LABEL_49;
          }
        }

        else
        {
          if (!v57)
          {
            goto LABEL_69;
          }
        }
      }

LABEL_74:

      goto LABEL_77;
    }

    if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_56;
    }

LABEL_76:

LABEL_77:

LABEL_49:
    if (v18 != v39)
    {
      continue;
    }

    break;
  }

LABEL_86:

  return 0;
}

unint64_t sub_252B8BEA0(uint64_t a1)
{
  result = combineEntityResponses(entityResponses:)(a1);
  v2 = result;
  v27 = MEMORY[0x277D84F90];
  if (result >> 62)
  {
    goto LABEL_30;
  }

  v3 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3)
  {
    do
    {
      if (v3 < 1)
      {
        __break(1u);
        return result;
      }

      v4 = 0;
      v5 = &off_279711000;
      v26 = xmmword_252E3C130;
      while (1)
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x2530ADF00](v4, v2);
        }

        else
        {
          v6 = *(v2 + 8 * v4 + 32);
        }

        v7 = v6;
        type metadata accessor for MutableHomeEntityResponse();
        swift_initStackObject();
        v8 = v7;
        v9 = sub_252D6D668(v8);

        v10 = [v8 v5[220]];
        if (!v10)
        {
          goto LABEL_20;
        }

        v11 = v10;
        type metadata accessor for HomeUserTaskResponse();
        v12 = sub_252E37264();

        if (v12 >> 62)
        {
          break;
        }

        v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v13)
        {
          goto LABEL_11;
        }

LABEL_19:

LABEL_20:
        sub_252D6C15C();
        MEMORY[0x2530AD700]();
        if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_252E372A4();
        }

        ++v4;
        sub_252E372D4();

        if (v3 == v4)
        {
          v22 = v27;

          goto LABEL_32;
        }
      }

      v13 = sub_252E378C4();
      if (!v13)
      {
        goto LABEL_19;
      }

LABEL_11:
      v14 = __OFSUB__(v13, 1);
      v15 = v13 - 1;
      if (!v14)
      {
        if ((v12 & 0xC000000000000001) != 0)
        {
          v16 = MEMORY[0x2530ADF00](v15, v12);
        }

        else
        {
          if ((v15 & 0x8000000000000000) != 0)
          {
            goto LABEL_28;
          }

          if (v15 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_29;
          }

          v16 = *(v12 + 8 * v15 + 32);
        }

        v17 = v16;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
        v18 = swift_allocObject();
        *(v18 + 16) = v26;
        type metadata accessor for MutableHomeUserTaskResponse();
        v19 = swift_allocObject();
        *(v19 + 16) = 0;
        v20 = [v17 userTask];
        if (v20)
        {
          v21 = v20;
          type metadata accessor for MutableHomeUserTask();
          swift_allocObject();
          *(v19 + 16) = sub_252D6CA80(v21);
        }

        *(v19 + 24) = [v17 taskOutcome];
        *(v18 + 32) = v19;

        swift_beginAccess();
        *(v9 + 24) = v18;
        v5 = &off_279711000;
        goto LABEL_19;
      }

      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      result = sub_252E378C4();
      v3 = result;
    }

    while (result);
  }

  v22 = MEMORY[0x277D84F90];
LABEL_32:
  if (qword_2814B0A70 != -1)
  {
    swift_once();
  }

  v23 = sub_252E36AD4();
  __swift_project_value_buffer(v23, qword_2814B0A78);
  sub_252E379F4();

  v24 = type metadata accessor for HomeEntityResponse();
  v25 = MEMORY[0x2530AD730](v22, v24);
  MEMORY[0x2530AD570](v25);

  sub_252CC3D90(0xD000000000000025, 0x8000000252E83CD0, 0xD000000000000080, 0x8000000252E83700);

  return v22;
}

void *sub_252B8C2A0(void *a1, unint64_t a2)
{
  v4 = [a1 entityResponses];
  if (v4)
  {
    v5 = v4;
    type metadata accessor for HomeEntityResponse();
    v6 = sub_252E37264();
  }

  else
  {
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v7 = sub_252E36AD4();
    __swift_project_value_buffer(v7, qword_27F544D60);
    sub_252E379F4();

    v8 = a1;
    v9 = [v8 description];
    v10 = sub_252E36F34();
    v12 = v11;

    MEMORY[0x2530AD570](v10, v12);

    sub_252CC3D90(0xD00000000000002FLL, 0x8000000252E69700, 0xD000000000000098, 0x8000000252E69730);

    v6 = MEMORY[0x277D84F90];
  }

  if (sub_252C2DC30())
  {
    if (!(a2 >> 62))
    {
      if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    if (!sub_252E378C4())
    {
LABEL_9:

      v6 = sub_252C2A5D8();
    }
  }

LABEL_10:

  sub_25297A894(v6);
  v13 = combineEntityResponses(entityResponses:)(a2);

  if (qword_2814B0A70 != -1)
  {
    swift_once();
  }

  v14 = sub_252E36AD4();
  __swift_project_value_buffer(v14, qword_2814B0A78);
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD00000000000003FLL, 0x8000000252E83F90);
  v15 = type metadata accessor for HomeEntityResponse();
  v16 = MEMORY[0x2530AD730](v13, v15);
  MEMORY[0x2530AD570](v16);

  sub_252CC3D90(0, 0xE000000000000000, 0xD000000000000080, 0x8000000252E83700);

  return v13;
}

uint64_t sub_252B8C574(unint64_t a1)
{
  v1 = MEMORY[0x277D84F90];
  v33 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_51;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; a1 = v30)
  {
    v3 = 0;
    v4 = a1 & 0xC000000000000001;
    v5 = a1 & 0xFFFFFFFFFFFFFF8;
    v32 = a1;
    v6 = a1 + 32;
    do
    {
      while (1)
      {
        if (v4)
        {
          a1 = MEMORY[0x2530ADF00](v3, v32);
        }

        else
        {
          if (v3 >= *(v5 + 16))
          {
            goto LABEL_48;
          }

          a1 = *(v6 + 8 * v3);
        }

        v7 = a1;
        if (__OFADD__(v3++, 1))
        {
          goto LABEL_47;
        }

        v9 = [a1 entity];
        if (v9)
        {
          v10 = v9;
          v11 = [v9 type];

          if (v11 == 7)
          {
            break;
          }
        }

LABEL_4:

        if (v3 == i)
        {
          goto LABEL_32;
        }
      }

      v12 = [v7 entity];
      if (v12)
      {
        v13 = v12;
        v14 = [v12 deviceTypes];

        if (v14)
        {
          v15 = sub_252E37264();

          if (*(v15 + 16))
          {
            v16 = *(v15 + 32);

            if (qword_27F53F410 != -1)
            {
              a1 = swift_once();
            }

            v17 = 0;
            v18 = 1 << *(qword_27F575A48 + 32);
            if (v18 < 64)
            {
              v19 = ~(-1 << v18);
            }

            else
            {
              v19 = -1;
            }

            v20 = v19 & *(qword_27F575A48 + 56);
            v21 = (v18 + 63) >> 6;
            while (v20)
            {
              v22 = v17;
LABEL_26:
              v23 = __clz(__rbit64(v20));
              v20 &= v20 - 1;
              if (*(*(qword_27F575A48 + 48) + ((v22 << 9) | (8 * v23))) == v16)
              {
                goto LABEL_4;
              }
            }

            while (1)
            {
              v22 = v17 + 1;
              if (__OFADD__(v17, 1))
              {
                break;
              }

              if (v22 >= v21)
              {
                goto LABEL_29;
              }

              v20 = *(qword_27F575A48 + 56 + 8 * v22);
              ++v17;
              if (v20)
              {
                v17 = v22;
                goto LABEL_26;
              }
            }

            __break(1u);
LABEL_47:
            __break(1u);
LABEL_48:
            __break(1u);
            goto LABEL_49;
          }
        }
      }

LABEL_29:
      sub_252E37A94();
      sub_252E37AC4();
      sub_252E37AD4();
      a1 = sub_252E37AA4();
    }

    while (v3 != i);
LABEL_32:
    sub_252ADEC58(v33);

    v24 = 0;
    v33 = v1;
    v25 = v32;
    while (1)
    {
      if (v4)
      {
        a1 = MEMORY[0x2530ADF00](v24, v25);
      }

      else
      {
        if (v24 >= *(v5 + 16))
        {
          goto LABEL_50;
        }

        a1 = *(v25 + 8 * v24 + 32);
      }

      v1 = a1;
      v26 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      v27 = [a1 entity];
      if (v27)
      {
        v28 = v27;
        v29 = [v27 type];

        if (v29 == 7)
        {
          sub_252E37A94();
          sub_252E37AC4();
          sub_252E37AD4();
          a1 = sub_252E37AA4();
        }

        else
        {
        }

        v25 = v32;
      }

      else
      {
      }

      ++v24;
      if (v26 == i)
      {
        v1 = v33;
        goto LABEL_53;
      }
    }

LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    v30 = a1;
    i = sub_252E378C4();
  }

  sub_252ADEC58(v1);

LABEL_53:
  sub_252CAF868(v1);
}

BOOL sub_252B8C9B4(uint64_t a1, unint64_t a2)
{
  if (qword_2814B0A70 != -1)
  {
    goto LABEL_20;
  }

  while (1)
  {
    v4 = sub_252E36AD4();
    __swift_project_value_buffer(v4, qword_2814B0A78);
    sub_252CC3D90(0xD000000000000023, 0x8000000252E83DC0, 0xD000000000000080, 0x8000000252E83700);
    v5 = a2 >> 62 ? sub_252E378C4() : *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = v5 != 0;
    if (!v5)
    {
      break;
    }

    v7 = 0;
    while (1)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x2530ADF00](v7, a2);
      }

      else
      {
        if (v7 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v8 = *(a2 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if ((sub_252B8B61C(a1, v8) & 1) == 0)
      {
        sub_252CC3D90(0xD00000000000001FLL, 0x8000000252E83DF0, 0xD000000000000080, 0x8000000252E83700);

        return 0;
      }

      ++v7;
      if (v10 == v5)
      {
        v11 = 0xE400000000000000;
        v6 = v5 != 0;
        v12 = 1702195828;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    swift_once();
  }

  v12 = 0x65736C6166;
  v11 = 0xE500000000000000;
LABEL_16:
  sub_252E379F4();

  MEMORY[0x2530AD570](v12, v11);

  sub_252CC3D90(0xD000000000000016, 0x8000000252E83E10, 0xD000000000000080, 0x8000000252E83700);

  return v6;
}

unint64_t sub_252B8CC08(unint64_t result)
{
  if (result >> 62)
  {
    goto LABEL_36;
  }

  for (i = *((result & 0xFFFFFFFFFFFFFF8) + 0x10); i; result = v23)
  {
    v2 = 0;
    v3 = result & 0xC000000000000001;
    v4 = result & 0xFFFFFFFFFFFFFF8;
    v5 = result + 32;
    v6 = &off_279711000;
    v27 = result & 0xC000000000000001;
    v28 = i;
    v26 = result & 0xFFFFFFFFFFFFFF8;
    v24 = result;
    v25 = result + 32;
    while (1)
    {
      if (v3)
      {
        result = MEMORY[0x2530ADF00](v2, v24);
      }

      else
      {
        if (v2 >= *(v4 + 16))
        {
          __break(1u);
LABEL_39:
          __break(1u);
          return result;
        }

        result = *(v5 + 8 * v2);
      }

      v7 = result;
      v8 = __OFADD__(v2++, 1);
      if (v8)
      {
        goto LABEL_39;
      }

      v9 = [result v6[220]];
      if (!v9)
      {
LABEL_33:

        return 0;
      }

      v10 = v9;
      type metadata accessor for HomeUserTaskResponse();
      v11 = sub_252E37264();

      if (v11 >> 62)
      {
        break;
      }

      v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v12)
      {
        goto LABEL_11;
      }

LABEL_30:

      result = 1;
      v3 = v27;
      v5 = v25;
      v4 = v26;
      v6 = &off_279711000;
      if (v2 == v28)
      {
        return result;
      }
    }

    result = sub_252E378C4();
    v12 = result;
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_11:
    v13 = 0;
    v14 = v11 + 32;
    while (1)
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        result = MEMORY[0x2530ADF00](v13, v11);
      }

      else
      {
        if (v13 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_35;
        }

        result = *(v14 + 8 * v13);
      }

      v15 = result;
      v8 = __OFADD__(v13++, 1);
      if (v8)
      {
        break;
      }

      if ([result taskOutcome] == 17)
      {
        goto LABEL_32;
      }

      if (qword_27F53F730 != -1)
      {
        swift_once();
      }

      v16 = qword_27F575C40;
      v17 = [v15 taskOutcome];
      if (!*(v16 + 16) || (v18 = v17, sub_252E37EC4(), MEMORY[0x2530AE390](v18), v19 = sub_252E37F14(), v20 = -1 << *(v16 + 32), v21 = v19 & ~v20, ((*(v16 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0))
      {
LABEL_32:

        goto LABEL_33;
      }

      v22 = ~v20;
      while (*(*(v16 + 48) + 8 * v21) != v18)
      {
        v21 = (v21 + 1) & v22;
        if (((*(v16 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
        {
          goto LABEL_32;
        }
      }

      v14 = v11 + 32;
      if (v13 == v12)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    v23 = result;
    i = sub_252E378C4();
  }

  return 1;
}

void sub_252B8CEE4(void *a1)
{
  v84 = sub_252E36CA4();
  v83 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v81 = &v76 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_252E36D04();
  v80 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v79 = &v76 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_252E36C84();
  v4 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v87 = (&v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v89 = sub_252E36D54();
  v88 = *(v89 - 8);
  v6 = MEMORY[0x28223BE20](v89);
  v85 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v86 = &v76 - v8;
  if (qword_2814B0A70 != -1)
  {
LABEL_18:
    swift_once();
  }

  v90 = v4;
  v9 = sub_252E36AD4();
  v10 = __swift_project_value_buffer(v9, qword_2814B0A78);
  v94 = "ocation context.";
  v95 = v10;
  sub_252CC3D90(0xD00000000000004CLL, 0x8000000252E83FD0, 0xD000000000000080, 0x8000000252E83700);
  v93 = dispatch_semaphore_create(0);
  v92 = a1;
  v98 = a1[4];
  v11 = type metadata accessor for HomeStore(0);
  v12 = static HomeStore.shared.getter(v11);
  v13 = sub_2529D9D50();

  v96 = v13;
  a1 = 0;
  v14 = sub_2529D70FC(v13);
  if (v14 >> 62)
  {
    v25 = v14;
    v15 = sub_252E378C4();
    v14 = v25;
    v97 = v25;
    if (!v15)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v97 = v14;
    if (!v15)
    {
      goto LABEL_20;
    }
  }

  v4 = 0;
  v16 = v14 & 0xC000000000000001;
  v17 = v14 & 0xFFFFFFFFFFFFFF8;
  while (v16)
  {
    v18 = MEMORY[0x2530ADF00](v4, v97);
    v19 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      goto LABEL_13;
    }

LABEL_8:
    aBlock = sub_252E32E24();
    v101 = v20;
    MEMORY[0x28223BE20](aBlock);
    *(&v76 - 2) = &aBlock;
    v21 = sub_2529ED970(sub_25296A69C, (&v76 - 4), v98);

    if (v21)
    {
      goto LABEL_14;
    }

    ++v4;
    if (v19 == v15)
    {
      goto LABEL_20;
    }
  }

  if (v4 >= *(v17 + 16))
  {
    __break(1u);
    goto LABEL_18;
  }

  v18 = *(v97 + 8 * v4 + 32);

  v19 = v4 + 1;
  if (!__OFADD__(v4, 1))
  {
    goto LABEL_8;
  }

LABEL_13:
  __break(1u);
LABEL_14:
  v22 = *(v18 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate);

  v23 = [v22 accessory];

  if (v23)
  {
    v24 = [v23 home];

    if (v24)
    {

      goto LABEL_33;
    }
  }

LABEL_20:
  v26 = v96;
  if (!(v96 >> 62))
  {
    v27 = *((v96 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v27)
    {
      goto LABEL_22;
    }

LABEL_47:

LABEL_48:

    aBlock = 0;
    v101 = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000041, 0x8000000252E84020);
    v75 = MEMORY[0x2530AD730](v98, MEMORY[0x277D837D0]);
    MEMORY[0x2530AD570](v75);

    sub_252CC4050(aBlock, v101, 0xD000000000000080, v94 | 0x8000000000000000, 0xD00000000000002DLL, 0x8000000252E84070, 516);

    v59 = &v107;
LABEL_49:

    return;
  }

  while (2)
  {
    v27 = sub_252E378C4();
    v26 = v96;
    if (!v27)
    {
      goto LABEL_47;
    }

LABEL_22:
    v28 = 0;
    v29 = v26 & 0xC000000000000001;
    v30 = v26 & 0xFFFFFFFFFFFFFF8;
LABEL_23:
    if (v29)
    {
      v31 = MEMORY[0x2530ADF00](v28, v26);
      v32 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        goto LABEL_31;
      }

      goto LABEL_26;
    }

    if (v28 >= *(v30 + 16))
    {
      __break(1u);
      continue;
    }

    break;
  }

  v31 = *(v26 + 8 * v28 + 32);

  v32 = v28 + 1;
  if (!__OFADD__(v28, 1))
  {
LABEL_26:
    aBlock = sub_252E32E24();
    v101 = v33;
    MEMORY[0x28223BE20](aBlock);
    *(&v76 - 2) = &aBlock;
    v34 = sub_2529ED970(sub_25296A724, (&v76 - 4), v98);

    if (v34)
    {
      goto LABEL_32;
    }

    ++v28;
    v26 = v96;
    if (v32 == v27)
    {
      goto LABEL_47;
    }

    goto LABEL_23;
  }

LABEL_31:
  __break(1u);
LABEL_32:

  v35 = *(v31 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate);

  v24 = [v35 home];

  if (!v24)
  {
    goto LABEL_48;
  }

LABEL_33:
  v36 = swift_allocObject();
  *(v36 + 16) = MEMORY[0x277D84F90];
  v37 = (v36 + 16);
  v38 = swift_allocObject();
  *(v38 + 16) = 5;
  v96 = v38 + 16;
  v39 = swift_allocObject();
  v39[2] = v97;
  v39[3] = v24;
  v39[4] = v36;
  v40 = swift_allocObject();
  v41 = v93;
  *(v40 + 16) = v38;
  *(v40 + 24) = v41;
  v43 = v92[2];
  v42 = v92[3];
  v44 = v24;

  v45 = v41;

  v46 = sub_252B89AA0(v43, v42, 0, 1);
  if (v46)
  {
    v76 = v43;
    v77 = v42;
    v97 = v36;
    v98 = v45;
    v104 = sub_252B8DDF0;
    v105 = v39;
    aBlock = MEMORY[0x277D85DD0];
    v101 = 1107296256;
    v102 = sub_252A58A5C;
    v103 = &block_descriptor_49;
    v47 = v46;
    v48 = _Block_copy(&aBlock);

    v104 = sub_252B8DDFC;
    v105 = v40;
    aBlock = MEMORY[0x277D85DD0];
    v101 = 1107296256;
    v102 = sub_2529E0210;
    v103 = &block_descriptor_52_0;
    v49 = _Block_copy(&aBlock);

    v78 = v47;
    [v44 retrieveResultsWithReportingContext:v47 progressHandler:v48 completionHandler:v49];
    _Block_release(v49);
    _Block_release(v48);
    swift_beginAccess();
    if (*v37 >> 62)
    {
      v50 = sub_252E378C4();
    }

    else
    {
      v50 = *((*v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v51 = v91;
    v52 = v90;
    v91 = v40;
    v92 = v44;
    v93 = v38;
    if (!v50)
    {
      sub_252CC4050(0xD00000000000002BLL, 0x8000000252E84160, 0xD000000000000080, v94 | 0x8000000000000000, 0xD00000000000002DLL, 0x8000000252E84070, 562);
      sub_2529515FC(4, 0, 0xD000000000000023, 0x8000000252E84190);
    }

    v53 = v85;
    sub_252E36D14();
    v54 = v87;
    *v87 = 2000;
    (*(v52 + 104))(v54, *MEMORY[0x277D85178], v51);
    v55 = v86;
    sub_252E36D24();
    (*(v52 + 8))(v54, v51);
    v56 = *(v88 + 8);
    v57 = v89;
    v56(v53, v89);
    v58 = v98;
    sub_252E375F4();
    v56(v55, v57);
    if (sub_252E36C94())
    {

      sub_252CC4050(0xD000000000000033, 0x8000000252E84120, 0xD000000000000080, v94 | 0x8000000000000000, 0xD00000000000002DLL, 0x8000000252E84070, 571);

      v59 = &v106;
      goto LABEL_49;
    }

    aBlock = 0;
    v101 = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000031, 0x8000000252E840E0);
    v60 = type metadata accessor for HomeEntityResponse();

    v62 = MEMORY[0x2530AD730](v61, v60);
    v64 = v63;

    MEMORY[0x2530AD570](v62, v64);

    sub_252CC3D90(aBlock, v101, 0xD000000000000080, v94 | 0x8000000000000000);

    v65 = *v37;
    v66 = v96;
    swift_beginAccess();
    v67 = *v66;
    v68 = qword_27F53F370;

    if (v68 != -1)
    {
      swift_once();
    }

    v69 = swift_allocObject();
    v70 = v77;
    *(v69 + 16) = v76;
    *(v69 + 24) = v70;
    *(v69 + 32) = v65;
    *(v69 + 40) = 3;
    *(v69 + 48) = v67;
    *(v69 + 56) = 0;
    v104 = sub_252B8DE78;
    v105 = v69;
    aBlock = MEMORY[0x277D85DD0];
    v101 = 1107296256;
    v102 = sub_252AD686C;
    v103 = &block_descriptor_59;
    v71 = _Block_copy(&aBlock);
    v72 = v79;
    sub_252E36CD4();
    v99 = MEMORY[0x277D84F90];
    sub_252B89DA4(qword_2814B0298, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5402F8, &qword_252E3E860);
    sub_2529E6488(&qword_2814B0280, &qword_27F5402F8, &qword_252E3E860, MEMORY[0x277D83970]);
    v73 = v81;
    v74 = v84;
    sub_252E37824();
    MEMORY[0x2530ADA30](0, v72, v73, v71);
    _Block_release(v71);

    (*(v83 + 8))(v73, v74);
    (*(v80 + 8))(v72, v82);
  }

  else
  {

    sub_252CC4050(0xD000000000000037, 0x8000000252E840A0, 0xD000000000000080, v94 | 0x8000000000000000, 0xD00000000000002DLL, 0x8000000252E84070, 556);
  }
}

uint64_t objectdestroy_5Tm()
{

  return MEMORY[0x2821FE8E8](v0, 57, 7);
}

id sub_252B8DE98()
{
  v1 = [v0 type];
  if (v1 == 1)
  {
    result = [v0 value];
    if (result)
    {
      v6 = result;
      type metadata accessor for TimeTriggerValue(0);
      v7 = swift_dynamicCastClass() != 0;

      return v7;
    }
  }

  else
  {
    if (v1 == 2)
    {
      result = [v0 value];
      if (!result)
      {
        return result;
      }

      v3 = result;
      type metadata accessor for EventTriggerValue(0);
      v4 = swift_dynamicCastClass();
      if (v4)
      {
        v5 = *(v4 + OBJC_IVAR____TtC22HomeAutomationInternal17EventTriggerValue_event);

        if ((v5 - 1) < 4)
        {
          return (v5 + 1);
        }
      }

      else
      {
      }
    }

    return 0;
  }

  return result;
}

void *sub_252B8DF84(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D57570]) init];
  if (!v2)
  {
    if (qword_27F53F530 == -1)
    {
LABEL_22:
      v32 = sub_252E36AD4();
      __swift_project_value_buffer(v32, qword_27F544E38);
      sub_252CC4050(0xD000000000000025, 0x8000000252E71520, 0xD000000000000073, 0x8000000252E84260, 0xD000000000000017, 0x8000000252E715D0, 47);
      return 0;
    }

LABEL_63:
    swift_once();
    goto LABEL_22;
  }

  v3 = v2;
  [v2 setCommandType_];
  v4 = [objc_allocWithZone(MEMORY[0x277D57580]) init];
  if (!v4)
  {
    if (qword_27F53F530 != -1)
    {
      swift_once();
    }

    v33 = sub_252E36AD4();
    __swift_project_value_buffer(v33, qword_27F544E38);
    sub_252CC4050(0xD000000000000025, 0x8000000252E71520, 0xD000000000000073, 0x8000000252E84260, 0xD000000000000017, 0x8000000252E715D0, 54);

    return 0;
  }

  v5 = v4;
  v6 = [a1 automatableTask];
  if (v6)
  {
    v7 = v6;
    type metadata accessor for ControlAutomateHomeIntent();
    v8 = swift_dynamicCastClass();
    if (!v8)
    {
      v12 = v7;
LABEL_55:

      goto LABEL_56;
    }

    v73 = a1;
    v9 = *(v8 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_userTask);
    v10 = objc_allocWithZone(type metadata accessor for ControlHomeIntent());
    v11 = v9;

    v12 = [v10 init];
    [v12 setUserTask_];
    type metadata accessor for HomeFilter();
    v13 = sub_252E37254();

    [v12 setFilters_];

    [v12 setTime_];
    v14 = [v12 filters];
    if (v14)
    {
      v15 = v14;
      v16 = sub_252E37264();

      if (v16 >> 62)
      {
        v17 = sub_252E378C4();
      }

      else
      {
        v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v70 = v12;
      v71 = v5;
      v72 = v3;
      if (v17)
      {
        v18 = 0;
        v74 = v16 & 0xC000000000000001;
        v19 = v16 & 0xFFFFFFFFFFFFFF8;
        v20 = MEMORY[0x277D84F90];
        v21 = v16;
        while (1)
        {
          if (v74)
          {
            v22 = MEMORY[0x2530ADF00](v18, v16);
          }

          else
          {
            if (v18 >= *(v19 + 16))
            {
              goto LABEL_62;
            }

            v22 = *(v16 + 8 * v18 + 32);
          }

          v23 = v22;
          v24 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            break;
          }

          v25 = v17;
          v26 = HomeDeviceType.description.getter([v22 deviceType]);
          v28 = v27;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v20 = sub_2529F7A80(0, *(v20 + 2) + 1, 1, v20);
          }

          v30 = *(v20 + 2);
          v29 = *(v20 + 3);
          if (v30 >= v29 >> 1)
          {
            v20 = sub_2529F7A80((v29 > 1), v30 + 1, 1, v20);
          }

          *(v20 + 2) = v30 + 1;
          v31 = &v20[16 * v30];
          *(v31 + 4) = v26;
          *(v31 + 5) = v28;
          ++v18;
          v17 = v25;
          v16 = v21;
          if (v24 == v25)
          {
            goto LABEL_30;
          }
        }

        __break(1u);
LABEL_62:
        __break(1u);
        goto LABEL_63;
      }

      v20 = MEMORY[0x277D84F90];
LABEL_30:

      v3 = v72;
      v12 = v70;
      v5 = v71;
    }

    else
    {
      v20 = MEMORY[0x277D84F90];
    }

    sub_252C76E8C(v20);

    v34 = [v12 filters];
    if (v34)
    {
      v35 = v34;
      v36 = sub_252E37264();

      LOBYTE(v35) = sub_252B1F8D4(v36);

      v34 = dword_252E4E99C[v35];
    }

    sub_252C7704C(v34);
    v37 = [v12 userTask];
    if (v37)
    {
      v38 = v37;
      v39 = [v37 attribute];

      v37 = HomeAttributeType.description.getter(v39);
      v41 = v40;
    }

    else
    {
      v41 = 0;
    }

    sub_252C771A8(v37, v41);

    if (sub_252C4D664(5))
    {
      v42 = type metadata accessor for HomeStore(0);
      v43 = static HomeStore.shared.getter(v42);
      v44 = [v12 filters];
      if (v44)
      {
        v45 = v44;
        v46 = sub_252E37264();
      }

      else
      {
        v46 = MEMORY[0x277D84F90];
      }

      v47 = HomeStore.scenes(matching:)(v46);
      v49 = v48;

      if ((v49 & 1) == 0)
      {
        v60 = sub_2529289F0(v47);
        sub_252929F10(v47, 0);
        if (v60 >> 62)
        {
          v61 = sub_252E378C4();
        }

        else
        {
          v61 = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        a1 = v73;

        goto LABEL_54;
      }

      sub_252929F10(v47, 1);
    }

    v50 = type metadata accessor for HomeStore(0);
    v51 = static HomeStore.shared.getter(v50);
    v52 = v51[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_loadSucceeded];
    if (v52 != 2 && (v52 & 1) == 0 || (v53 = [v12 filters]) == 0)
    {

      v12 = v51;
      a1 = v73;
      goto LABEL_55;
    }

    v54 = v53;
    v55 = sub_252E37264();

    v56 = [v12 userTask];
    v57 = HomeStore.services(matching:supporting:)(v55, v56);
    v59 = v58;

    if (v59)
    {
      sub_252929F10(v57, 1);
      a1 = v73;
      goto LABEL_55;
    }

    if (v57 >> 62)
    {
      v61 = sub_252E378C4();
    }

    else
    {
      v61 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    a1 = v73;
    sub_252929F10(v57, 0);
LABEL_54:
    sub_252C77358(v61);
    goto LABEL_55;
  }

LABEL_56:
  v62 = [a1 trigger];
  if (v62)
  {
    v63 = sub_252B8DE98();

    v64 = v63;
  }

  else
  {
    v64 = 0;
  }

  sub_252C774DC(v64 | ((v62 == 0) << 32));
  v65 = sub_252B8E7A0();
  sub_252C7763C(v65);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
  v66 = swift_allocObject();
  *(v66 + 16) = xmmword_252E3C130;
  *(v66 + 32) = v5;
  sub_252A01B88();
  v67 = v5;
  v68 = sub_252E37254();

  [v3 setHomeAutomationRequests_];

  return v3;
}

BOOL sub_252B8E7A0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543728, &qword_252E4DBE8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v28 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F00, &unk_252E3FEC0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v28 - v6;
  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (!v8)
  {
    objc_opt_self();
    v15 = swift_dynamicCastObjCClass();
    if (v15)
    {
      v16 = v15;
      v17 = v1;
      v18 = [v16 recurrences];
      if (v18)
      {
        v19 = v18;
        sub_252E32BA4();
        v20 = sub_252E37264();

        v21 = *(v20 + 16);

        return v21 != 0;
      }
    }

    return 0;
  }

  v9 = v8;
  v10 = v1;
  v11 = [v9 recurrence];
  if (v11)
  {
    v12 = v11;
    sub_252E32B24();

    v13 = sub_252E32BA4();
    v14 = 1;
    (*(*(v13 - 8) + 56))(v7, 0, 1, v13);
    sub_25293847C(v7, &qword_27F540F00, &unk_252E3FEC0);
  }

  else
  {
    v22 = sub_252E32BA4();
    v23 = 1;
    (*(*(v22 - 8) + 56))(v7, 1, 1, v22);
    sub_25293847C(v7, &qword_27F540F00, &unk_252E3FEC0);
    v24 = [v9 recurrenceCalendar];
    v14 = v24 != 0;
    if (v24)
    {
      v25 = v24;
      sub_252E32F84();

      v23 = 0;
      v10 = v25;
    }

    v26 = sub_252E32FF4();
    (*(*(v26 - 8) + 56))(v4, v23, 1, v26);
    sub_25293847C(v4, &qword_27F543728, &qword_252E4DBE8);
  }

  return v14;
}

void *sub_252B8EAA4()
{
  v0 = sub_252E32E84();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(MEMORY[0x277D57580]) init];
  v5 = v4;
  if (v4)
  {
    [v4 setHomeAutomationRequestType_];
    v6 = v5;
    sub_252E32E74();
    v7 = objc_allocWithZone(MEMORY[0x277D5AC78]);
    v8 = sub_252E32E44();
    v9 = [v7 initWithNSUUID_];

    (*(v1 + 8))(v3, v0);
    [v6 setHomeAutomationRequestId_];
  }

  return v5;
}

uint64_t sub_252B8EC04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[20] = a3;
  v4[21] = v3;
  v4[18] = a1;
  v4[19] = a2;
  v5 = sub_252E34014();
  v4[22] = v5;
  v4[23] = *(v5 - 8);
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270) - 8);
  v4[26] = v6;
  v4[27] = *(v6 + 64);
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252B8ED58, 0, 0);
}

uint64_t sub_252B8ED58(uint64_t a1)
{
  v2 = *(v1 + 160);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v4 = sub_252C285F0();
    v5 = v4;
    v42 = v3;
    v6 = v4 & 0xFFFFFFFFFFFFFF8;
    if (v4 >> 62)
    {
LABEL_30:
      v7 = sub_252E378C4();
    }

    else
    {
      v7 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v8 = 0;
    v39 = MEMORY[0x277D84F90];
    while (v7 != v8)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x2530ADF00](v8, v5);
      }

      else
      {
        if (v8 >= *(v6 + 16))
        {
          goto LABEL_29;
        }

        v9 = *(v5 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      v12 = sub_252DA124C(0);

      ++v8;
      if (v12)
      {
        MEMORY[0x2530AD700]();
        if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_252E372A4();
        }

        sub_252E372D4();
        v39 = v42;
        v8 = v11;
      }
    }

    v3 = v39;
  }

  *(v1 + 248) = v3;
  v13 = [*(v1 + 152) userTask];
  v14 = v13;
  v38 = v2;
  v40 = v3;
  if (v13)
  {
    v15 = [v13 attribute];
  }

  else
  {
    v15 = 0;
  }

  v16 = v14 == 0;
  v18 = *(v1 + 232);
  v17 = *(v1 + 240);
  v19 = *(v1 + 224);
  v20 = *(v1 + 208);
  v21 = *(v1 + 168);
  v22 = *(v1 + 152);
  static SemanticMapper.getSemanticKey(for:)(v15, v16, v17);
  sub_252938414(v17, v18, &qword_27F540298, &unk_252E3C270);
  sub_252938414(v18, v19, &qword_27F540298, &unk_252E3C270);
  v23 = (*(v20 + 80) + 40) & ~*(v20 + 80);
  v24 = swift_allocObject();
  *(v1 + 256) = v24;
  v24[2] = v21;
  v24[3] = v3;
  v24[4] = v22;
  sub_2529439A0(v18, v24 + v23);
  v25 = v22;

  if (v38)
  {
    v26 = *(v1 + 224);
    v27 = *(v1 + 168);
    v28 = *(v1 + 152);
    v29 = *(v1 + 160);
    sub_252929E74(v27 + 24, v1 + 56);
    __swift_project_boxed_opaque_existential_1((v1 + 56), *(v1 + 80));
    v30 = swift_task_alloc();
    *(v1 + 264) = v30;
    v30[2] = v40;
    v30[3] = v28;
    v30[4] = v27;
    v30[5] = v26;
    v31 = swift_task_alloc();
    *(v1 + 272) = v31;
    *v31 = v1;
    v31[1] = sub_252B8F210;

    return sub_252C0B6D8(0, sub_252B90D98, v30);
  }

  else
  {

    if (qword_27F53F4D0 != -1)
    {
      swift_once();
    }

    v33 = *(v1 + 168);
    v34 = sub_252E36AD4();
    __swift_project_value_buffer(v34, qword_27F544D18);
    sub_252CC4050(0xD00000000000003CLL, 0x8000000252E6B3F0, 0xD00000000000008FLL, 0x8000000252E6B430, 0xD000000000000042, 0x8000000252E6B4C0, 205);
    v35 = *(v33 + 96);
    __swift_project_boxed_opaque_existential_1((v33 + 72), v35);
    sub_252AD7CC4();
    v36 = swift_task_alloc();
    *(v1 + 320) = v36;
    *v36 = v1;
    v36[1] = sub_252B8F610;
    v37 = *(v1 + 200);

    return sub_252BDB88C(v1 + 16, &unk_252E4EA20, v24, v37, 0, 0, 0, v35);
  }
}

uint64_t sub_252B8F210(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 280) = a1;
  *(v3 + 288) = v1;

  if (v1)
  {
    v4 = sub_252B8F51C;
  }

  else
  {
    v4 = sub_252B8F368;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_252B8F368()
{
  v1 = v0[20];
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v2 = swift_task_alloc();
  v0[37] = v2;
  *v2 = v0;
  v2[1] = sub_252B8F408;

  return sub_252E17FD0(v1);
}

uint64_t sub_252B8F408(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 304) = a1;
  *(v3 + 312) = v1;

  if (v1)
  {
    v4 = sub_252B8F8DC;
  }

  else
  {
    v4 = sub_252B8F780;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_252B8F51C()
{
  v1 = v0[20];
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);

  v2 = v0[30];
  sub_25293847C(v0[28], &qword_27F540298, &unk_252E3C270);
  sub_25293847C(v2, &qword_27F540298, &unk_252E3C270);

  v3 = v0[1];

  return v3();
}

uint64_t sub_252B8F610()
{
  v2 = *(*v1 + 200);
  v3 = *(*v1 + 184);
  v4 = *(*v1 + 176);
  *(*v1 + 328) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_252B8FF80;
  }

  else
  {
    v5 = sub_252B8FE00;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252B8F780()
{
  v1 = v0[35];
  v0[17] = v1;
  v2 = v0 + 17;
  v3 = v0[38];
  if (v3)
  {
    v4 = v1;
    v5 = v3;
    v6 = sub_252BE8A5C(v5);

    *v2 = v6;
  }

  else
  {
    v7 = v1;
  }

  v8 = v0[21];
  v9 = *(v8 + 96);
  __swift_project_boxed_opaque_existential_1((v8 + 72), v9);
  v10 = swift_task_alloc();
  v0[42] = v10;
  *(v10 + 16) = v2;
  sub_252AD7CC4();
  v11 = swift_task_alloc();
  v0[43] = v11;
  *v11 = v0;
  v11[1] = sub_252B8F9D0;
  v12 = v0[24];

  return sub_252BDB88C((v0 + 12), &unk_252E3F140, v10, v12, 0, 0, 0, v9);
}

uint64_t sub_252B8F8DC()
{
  v1 = *(v0 + 160);

  v2 = *(v0 + 240);
  sub_25293847C(*(v0 + 224), &qword_27F540298, &unk_252E3C270);
  sub_25293847C(v2, &qword_27F540298, &unk_252E3C270);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_252B8F9D0()
{
  v2 = *(*v1 + 192);
  v3 = *(*v1 + 184);
  v4 = *(*v1 + 176);
  *(*v1 + 352) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_252B8FCF0;
  }

  else
  {

    v5 = sub_252B8FB50;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252B8FB50()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 152);
  v3 = v1[12];
  v4 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v3);
  v5 = [v2 filters];
  if (v5)
  {
    v6 = v5;
    type metadata accessor for HomeFilter();
    v7 = sub_252E37264();
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v8 = *(v0 + 304);
  v9 = *(v0 + 280);
  v10 = *(v0 + 160);
  (*(v4 + 112))(v7, v0 + 96, v3, v4);

  __swift_destroy_boxed_opaque_existential_1((v0 + 96));

  v11 = *(v0 + 240);
  sub_25293847C(*(v0 + 224), &qword_27F540298, &unk_252E3C270);
  sub_25293847C(v11, &qword_27F540298, &unk_252E3C270);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_252B8FCF0()
{
  v1 = *(v0 + 304);
  v2 = *(v0 + 160);

  v3 = *(v0 + 240);
  sub_25293847C(*(v0 + 224), &qword_27F540298, &unk_252E3C270);
  sub_25293847C(v3, &qword_27F540298, &unk_252E3C270);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_252B8FE00()
{
  v1 = v0[21];
  v2 = v0[19];
  v3 = v1[12];
  v4 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v3);
  v5 = [v2 filters];
  if (v5)
  {
    v6 = v5;
    type metadata accessor for HomeFilter();
    v7 = sub_252E37264();
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  (*(v4 + 112))(v7, v0 + 2, v3, v4);

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v8 = v0[30];
  sub_25293847C(v0[28], &qword_27F540298, &unk_252E3C270);
  sub_25293847C(v8, &qword_27F540298, &unk_252E3C270);

  v9 = v0[1];

  return v9();
}

uint64_t sub_252B8FF80()
{

  v1 = v0[30];
  sub_25293847C(v0[28], &qword_27F540298, &unk_252E3C270);
  sub_25293847C(v1, &qword_27F540298, &unk_252E3C270);

  v2 = v0[1];

  return v2();
}

uint64_t sub_252B90060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a3;
  v4[10] = a4;
  v4[7] = a1;
  v4[8] = a2;
  return MEMORY[0x2822009F8](sub_252B90084, 0, 0);
}

uint64_t sub_252B90084()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 56);
  v6 = *(v0 + 64);
  sub_252929E74(v2 + 24, v0 + 16);
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  v3 = swift_task_alloc();
  *(v0 + 88) = v3;
  *(v3 + 16) = v6;
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;
  v4 = swift_task_alloc();
  *(v0 + 96) = v4;
  *v4 = v0;
  v4[1] = sub_252B90188;

  return sub_252C0B6D8(0, sub_252B90DA4, v3);
}

uint64_t sub_252B90188(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {

    v5 = sub_252B90338;
  }

  else
  {
    *(v4 + 112) = a1;

    v5 = sub_252B902D0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252B902D0()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[1];
  v2 = v0[14];

  return v1(v2);
}

uint64_t sub_252B90338()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252B9039C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for HomeAutomationEntityResponses.Builder();
  *(swift_allocObject() + 16) = MEMORY[0x277D84F90];
  type metadata accessor for HomeAutomationEntityResponses();
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  swift_setDeallocating();
  swift_deallocClassInstance();
  *(v10 + 24) = a2;

  *(a1 + 16) = v10;
  memcpy(__dst, (a4 + 112), sizeof(__dst));
  memcpy(v16, (a4 + 112), sizeof(v16));
  sub_252938414(__dst, v15, &qword_27F5404C8, &unk_252E3FD60);
  v11 = a3;
  v12 = sub_252953488(a3, v16, 0);

  *(a1 + 8) = v12;
  v13 = type metadata accessor for HomeAutomationAlreadyOffParameters(0);
  return sub_252956BAC(a5, a1 + *(v13 + 28));
}

uint64_t sub_252B90508(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25293B808;

  return sub_252B8EC04(a1, a2, a3);
}

void *sub_252B905BC@<X0>(const void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for AlreadyOffResponseHandler();
  swift_allocObject();
  memcpy(__dst, a1, sizeof(__dst));
  result = sub_252BE97AC(__dst);
  *a2 = result;
  return result;
}

uint64_t sub_252B90620(id a1, uint64_t a2)
{
  if (!a2)
  {
    v5 = 0;
    LODWORD(v2) = 2;
    goto LABEL_40;
  }

  v4 = sub_252C285F0();
  v5 = v4;
  if (v4 >> 62)
  {
    goto LABEL_83;
  }

  v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:

  if (!v6)
  {
    LODWORD(v2) = 1;
    goto LABEL_39;
  }

  v7 = 0;
  v8 = v5 & 0xC000000000000001;
  v9 = v5 & 0xFFFFFFFFFFFFFF8;
  v10 = (v5 + 32);
  v11 = &off_279711000;
  v68 = (v5 + 32);
  v70 = v5 & 0xFFFFFFFFFFFFFF8;
  v78 = v5;
  v72 = v5 & 0xC000000000000001;
  v74 = v6;
LABEL_6:
  if (v8)
  {
    v12 = MEMORY[0x2530ADF00](v7, v5);
  }

  else
  {
    if (v7 >= *(v9 + 16))
    {
      goto LABEL_85;
    }

    v12 = *&v10[8 * v7];
  }

  v2 = v12;
  v13 = __OFADD__(v7++, 1);
  if (v13)
  {
    __break(1u);
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  v14 = [v12 v11[220]];
  if (!v14)
  {

    LODWORD(v2) = 0;
    goto LABEL_39;
  }

  v15 = v14;
  v76 = v2;
  type metadata accessor for HomeUserTaskResponse();
  v16 = sub_252E37264();

  v5 = a1;
  LODWORD(v2) = v16 & 0xFFFFFFF8;
  if (v16 >> 62)
  {
    v17 = sub_252E378C4();
  }

  else
  {
    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v18 = 0;
  a1 = (v16 & 0xC000000000000001);
  while (1)
  {
    if (v17 == v18)
    {

      LODWORD(v2) = 1;
      v8 = v72;
      a1 = v5;
      v5 = v78;
      v10 = v68;
      v9 = v70;
      v11 = &off_279711000;
      if (v7 == v74)
      {
        goto LABEL_39;
      }

      goto LABEL_6;
    }

    if (a1)
    {
      v19 = MEMORY[0x2530ADF00](v18, v16);
    }

    else
    {
      if (v18 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_82;
      }

      v19 = *(v16 + 8 * v18 + 32);
    }

    v20 = v19;
    if (__OFADD__(v18, 1))
    {
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      v6 = sub_252E378C4();
      goto LABEL_4;
    }

    v21 = [v19 userTask];
    if (!v21 || (v22 = v21, v23 = [v21 attribute], v22, v23 != 11))
    {
      v24 = [v20 userTask];
      if (!v24)
      {
        break;
      }

      v25 = v24;
      v26 = [v24 attribute];

      if (v26 != 2)
      {
        break;
      }
    }

    v27 = [v20 userTask];
    if (!v27)
    {
      break;
    }

    v28 = v27;
    v29 = [v27 value];

    if (!v29)
    {
      break;
    }

    v30 = [v29 type];

    if (v30 != 1)
    {
      break;
    }

    v31 = [v20 userTask];
    if (!v31)
    {
      break;
    }

    v32 = v31;
    v33 = [v31 value];

    if (!v33)
    {
      break;
    }

    v34 = [v33 BOOLValue];

    ++v18;
    if (v34)
    {

      goto LABEL_37;
    }
  }

LABEL_37:
  LODWORD(v2) = 0;
  a1 = v5;
  v5 = v78;
LABEL_39:

LABEL_40:
  v35 = [a1 userTask];
  if (!v35)
  {
    goto LABEL_69;
  }

  v36 = v35;
  v37 = [v35 attribute];

  if (v37 != 2)
  {
    goto LABEL_69;
  }

  if (!v5)
  {
LABEL_70:
    v59 = 0;
    goto LABEL_71;
  }

  v7 = v5 & 0xFFFFFFFFFFFFFF8;
  if (v5 >> 62)
  {
    goto LABEL_88;
  }

  v38 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v38)
  {
LABEL_89:

    v59 = 1;
    goto LABEL_71;
  }

  while (2)
  {
    v39 = 0;
    v40 = v5 & 0xC000000000000001;
    v41 = (v5 + 32);
    v42 = &off_279711000;
    v43 = &off_279711000;
    v44 = &off_279711000;
    v79 = v5;
    v75 = v2;
    v69 = v38;
    v71 = v7;
    v65 = (v5 + 32);
    v66 = v5 & 0xC000000000000001;
    v67 = a1;
LABEL_46:
    if (!v40)
    {
      if (v39 < *(v7 + 16))
      {
        v45 = *&v41[8 * v39];
        goto LABEL_49;
      }

LABEL_87:
      __break(1u);
LABEL_88:
      v38 = sub_252E378C4();
      if (!v38)
      {
        goto LABEL_89;
      }

      continue;
    }

    break;
  }

  v45 = MEMORY[0x2530ADF00](v39, v5);
LABEL_49:
  v77 = v45;
  v13 = __OFADD__(v39, 1);
  v46 = v39 + 1;
  if (v13)
  {
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  v47 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
  v48 = sub_252E36F04();
  v49 = [v47 v42[226]];

  v50 = v49;
  [v50 v43[398]];
  [v50 v44[272]];

  v51 = [v77 taskResponses];
  if (!v51)
  {

LABEL_69:

    goto LABEL_70;
  }

  v52 = v51;
  type metadata accessor for HomeUserTaskResponse();
  v53 = sub_252E37264();

  v73 = v46;
  if (v53 >> 62)
  {
    v54 = sub_252E378C4();
    if (v54)
    {
      goto LABEL_53;
    }
  }

  else
  {
    v54 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v54)
    {
LABEL_53:
      v55 = 0;
      a1 = (v53 & 0xC000000000000001);
      LODWORD(v2) = v53 & 0xFFFFFFF8;
      while (1)
      {
        if (a1)
        {
          v56 = MEMORY[0x2530ADF00](v55, v53);
        }

        else
        {
          if (v55 >= *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_80;
          }

          v56 = *(v53 + 8 * v55 + 32);
        }

        v57 = v56;
        v5 = v55 + 1;
        if (__OFADD__(v55, 1))
        {
          __break(1u);
LABEL_80:
          __break(1u);
          goto LABEL_81;
        }

        v80 = v56;
        v58 = sub_252DA5D40(&v80, 0x1B, v50, 0, 1);

        if (v58)
        {
          break;
        }

        ++v55;
        if (v5 == v54)
        {
          goto LABEL_66;
        }
      }

      a1 = v67;
      v7 = v71;
      v39 = v73;
      v5 = v79;
      LODWORD(v2) = v75;
      v41 = v65;
      v40 = v66;
      v42 = &off_279711000;
      v43 = &off_279711000;
      v44 = &off_279711000;
      if (v73 != v69)
      {
        goto LABEL_46;
      }

      goto LABEL_89;
    }
  }

LABEL_66:

  v59 = 0;
  a1 = v67;
  LODWORD(v2) = v75;
LABEL_71:
  v60 = [a1 userTask];
  if (!v60)
  {
    sub_252C515AC();
    goto LABEL_77;
  }

  v61 = v60;
  v62 = [v60 taskType];

  if (v62 != 3)
  {
LABEL_77:
    v63 = 0;
    return v63 & 1;
  }

  v63 = v59 | v2;
  if (v2 == 2)
  {
    v63 = v59;
  }

  return v63 & 1;
}

uint64_t sub_252B90CA0()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270) - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_25294B958;

  return sub_252B90060(v4, v5, v6, v0 + v3);
}

uint64_t sub_252B90DD4()
{
  type metadata accessor for SetFullBrightnessHandleDelegate();

  return swift_allocObject();
}

void sub_252B90E04(void *a1, void (*a2)(void))
{
  v4 = [a1 userTask];
  if (v4)
  {
    v5 = v4;
    v6 = [a1 filters];
    if (v6)
    {
      v7 = v6;
      type metadata accessor for HomeFilter();
      v8 = sub_252E37264();

      v39 = MEMORY[0x277D84F90];
      if (v8 >> 62)
      {
        goto LABEL_21;
      }

      for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
      {
        v38 = a2;
        v10 = 0;
        a2 = (v8 & 0xFFFFFFFFFFFFFF8);
        while (1)
        {
          if ((v8 & 0xC000000000000001) != 0)
          {
            v11 = MEMORY[0x2530ADF00](v10, v8);
          }

          else
          {
            if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_20;
            }

            v11 = *(v8 + 8 * v10 + 32);
          }

          v12 = v11;
          v13 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            break;
          }

          v14 = [v11 isExcludeFilter];
          sub_252956D08();
          v15 = sub_252E37674();
          v16 = v15;
          if (v14)
          {
            v17 = sub_252E37694();

            if (v17)
            {

              goto LABEL_8;
            }
          }

          else
          {
          }

          sub_252E37A94();
          sub_252E37AC4();
          sub_252E37AD4();
          sub_252E37AA4();
LABEL_8:
          ++v10;
          if (v13 == i)
          {
            v18 = v39;
            a2 = v38;
            goto LABEL_23;
          }
        }

        __break(1u);
LABEL_20:
        __break(1u);
LABEL_21:
        ;
      }

      v18 = MEMORY[0x277D84F90];
LABEL_23:

      if ((v18 & 0x8000000000000000) != 0 || (v18 & 0x4000000000000000) != 0)
      {
        if (sub_252E378C4())
        {
          goto LABEL_26;
        }
      }

      else if (*(v18 + 16))
      {
LABEL_26:
        v19 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
        v20 = sub_252E36F04();
        v21 = [v19 initWithIdentifier:0 displayString:v20];

        v22 = v21;
        [v22 setBoolValue_];
        [v22 setType_];

        v23 = objc_allocWithZone(type metadata accessor for HomeUserTask());
        v24 = sub_252E36F04();
        v25 = [v23 initWithIdentifier:0 displayString:v24];

        v26 = v25;
        [v26 setTaskType_];
        [v26 setAttribute_];
        [v26 setValue_];

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_252E3C3D0;
        *(inited + 32) = v26;
        *(inited + 40) = v5;
        v28 = v26;
        v29 = v5;
        v30 = sub_252B4CA9C(v18, inited, 0, 1);
        v32 = v31;

        swift_setDeallocating();
        swift_arrayDestroy();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5402A8, &unk_252E3E850);
        v33 = swift_initStackObject();
        *(v33 + 16) = xmmword_252E3C290;
        *(v33 + 32) = v30;
        *(v33 + 40) = v32 & 1;
        sub_2529904E4(v30);
        v34 = combineResults(results:)(v33);
        swift_setDeallocating();
        sub_2529904F0(v33 + 32);
        sub_252990634();
        a2(v34);

        sub_252927D3C(v30);
        goto LABEL_32;
      }
    }

    else
    {
    }
  }

  if (qword_27F53F498 != -1)
  {
    swift_once();
  }

  v35 = sub_252E36AD4();
  __swift_project_value_buffer(v35, qword_27F544C70);
  sub_252CC4050(0xD000000000000014, 0x8000000252E6D520, 0xD000000000000086, 0x8000000252E84360, 0xD000000000000021, 0x8000000252E68B10, 30);
  v28 = [objc_allocWithZone(type metadata accessor for ControlHomeIntentResponse()) init];
  v36 = OBJC_IVAR___ControlHomeIntentResponse_code;
  swift_beginAccess();
  *&v28[v36] = 5;
  [v28 setUserActivity_];
  type metadata accessor for HomeEntityResponse();
  v37 = sub_252E37254();
  [v28 setEntityResponses_];

  a2(v28);
LABEL_32:
}

uint64_t sub_252B91374(void *a1)
{
  if (qword_27F53F498 != -1)
  {
    swift_once();
  }

  v2 = sub_252E36AD4();
  __swift_project_value_buffer(v2, qword_27F544C70);
  sub_252E379F4();

  strcpy(v21, "Input intent: ");
  HIBYTE(v21[1]) = -18;
  v3 = [a1 description];
  v4 = sub_252E36F34();
  v6 = v5;

  MEMORY[0x2530AD570](v4, v6);

  sub_252CC3D90(v21[0], v21[1], 0xD000000000000086, 0x8000000252E84360);

  if (!sub_252C4B5D4() || (sub_252C4B680(1) & 1) == 0)
  {
    goto LABEL_13;
  }

  v7 = [a1 userTask];
  if (!v7)
  {
    sub_252C515AC();
LABEL_13:
    v11 = 0;
    return v11 & 1;
  }

  v8 = v7;
  v9 = [v7 attribute];

  if (v9 != 2 || (sub_252AABAA0() & 1) == 0)
  {
    goto LABEL_13;
  }

  v10 = COERCE_DOUBLE(sub_252C4D57C());
  v11 = 0;
  if ((v12 & 1) == 0 && v10 == 100.0)
  {
    v13 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(*&v10);
    sub_252929E74((v13 + 288), v21);

    v14 = v22;
    v15 = v23;
    __swift_project_boxed_opaque_existential_1(v21, v22);
    v16 = (*(v15 + 80))(v14, v15);
    if (v16)
    {
      v17 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v16);
      sub_252929E74((v17 + 16), v20);

      __swift_project_boxed_opaque_existential_1(v20, v20[3]);
      v18 = sub_252E338F4();
      __swift_destroy_boxed_opaque_existential_1(v20);
      v11 = v18 ^ 1;
    }

    else
    {
      v11 = 1;
    }

    __swift_destroy_boxed_opaque_existential_1(v21);
  }

  return v11 & 1;
}

uint64_t sub_252B91614(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25296BC70;

  return sub_252B92A18(a1);
}

uint64_t sub_252B916C0()
{
  type metadata accessor for ShowEntityHandleDelegate();

  return swift_allocObject();
}

uint64_t sub_252B916F0(void *a1)
{
  v2 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(a1);
  sub_252929E74((v2 + 16), &v21);

  __swift_project_boxed_opaque_existential_1(&v21, v23);
  v3 = sub_252E338B4();
  if (v3)
  {
    __swift_destroy_boxed_opaque_existential_1(&v21);
  }

  else
  {
    v4 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v3);
    sub_252929E74((v4 + 16), v20);

    __swift_project_boxed_opaque_existential_1(v20, v20[3]);
    v5 = sub_252E33894();
    __swift_destroy_boxed_opaque_existential_1(v20);
    __swift_destroy_boxed_opaque_existential_1(&v21);
    if ((v5 & 1) == 0)
    {
      return 0;
    }
  }

  v6 = [a1 filters];
  if (v6)
  {
    v7 = type metadata accessor for HomeFilter();
    v8 = sub_252E37264();

    v9 = type metadata accessor for HomeStore(0);
    v10 = static HomeStore.shared.getter(v9);
    v11 = sub_2529F3D2C(v8);
    v13 = v12;

    if (v13)
    {
      sub_252929F10(v11, 1);
    }

    else
    {
      if (v11 >> 62)
      {
        v14 = sub_252E378C4();
      }

      else
      {
        v14 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      sub_252929F10(v11, 0);
      if (v14)
      {
        v6 = 1;
LABEL_15:

        return v6;
      }
    }

    if (qword_27F53F498 != -1)
    {
      swift_once();
    }

    v15 = sub_252E36AD4();
    __swift_project_value_buffer(v15, qword_27F544C70);
    v21 = 0;
    v22 = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000032, 0x8000000252E84430);
    v16 = MEMORY[0x2530AD730](v8, v7);
    v18 = v17;

    MEMORY[0x2530AD570](v16, v18);

    sub_252CC3D90(v21, v22, 0xD00000000000007BLL, 0x8000000252E84470);
    v6 = 0;
    goto LABEL_15;
  }

  return v6;
}

void sub_252B91984(unint64_t a1)
{
  v2 = sub_252E32CB4();
  v141 = *(v2 - 8);
  v142 = v2;
  v3 = MEMORY[0x28223BE20](v2);
  v138 = v133 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v135 = v133 - v6;
  v7 = MEMORY[0x28223BE20](v5);
  v139 = v133 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v140 = v133 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v136 = v133 - v12;
  MEMORY[0x28223BE20](v11);
  v137 = v133 - v13;
  v14 = sub_252E32E84();
  v144 = *(v14 - 8);
  v145 = v14;
  MEMORY[0x28223BE20](v14);
  v143 = v133 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_60;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_252E378C4())
  {
    v17 = MEMORY[0x277D84F90];
    v146 = a1;
    if (i)
    {
      v18 = 0;
      v19 = a1 & 0xC000000000000001;
      v20 = a1 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v19)
        {
          v21 = MEMORY[0x2530ADF00](v18, a1);
        }

        else
        {
          if (v18 >= *(v20 + 16))
          {
            goto LABEL_57;
          }

          v21 = *(a1 + 8 * v18 + 32);
        }

        v22 = v21;
        v23 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          __break(1u);
LABEL_57:
          __break(1u);
          goto LABEL_58;
        }

        v24 = [v21 isExcludeFilter];
        sub_252956D08();
        v25 = sub_252E37674();
        v26 = v25;
        if (v24)
        {
          v27 = sub_252E37694();

          if (v27)
          {

            goto LABEL_7;
          }
        }

        else
        {
        }

        sub_252E37A94();
        sub_252E37AC4();
        sub_252E37AD4();
        sub_252E37AA4();
LABEL_7:
        a1 = v146;
        ++v18;
        if (v23 == i)
        {
          v28 = v147;
          v17 = MEMORY[0x277D84F90];
          if ((v147 & 0x8000000000000000) == 0)
          {
            goto LABEL_19;
          }

          goto LABEL_61;
        }
      }
    }

    v28 = MEMORY[0x277D84F90];
    if ((MEMORY[0x277D84F90] & 0x8000000000000000) != 0)
    {
      goto LABEL_61;
    }

LABEL_19:
    if ((v28 & 0x4000000000000000) != 0)
    {
LABEL_61:
      if (!sub_252E378C4())
      {
        goto LABEL_62;
      }
    }

    else if (!*(v28 + 16))
    {
      goto LABEL_62;
    }

    v29 = type metadata accessor for HomeStore(0);
    v30 = a1;
    a1 = static HomeStore.shared.getter(v29);
    v31 = sub_252B4623C(v30);
    v32 = sub_252C758E0(v31);

    v33 = sub_252DA089C(v32);

    if (!v33)
    {

      if (qword_27F53F498 != -1)
      {
        swift_once();
      }

      v41 = sub_252E36AD4();
      __swift_project_value_buffer(v41, qword_27F544C70);
      v147 = 0;
      v148 = 0xE000000000000000;
      sub_252E379F4();

      v147 = 0xD00000000000002DLL;
      v148 = 0x8000000252E84520;
      v42 = type metadata accessor for HomeFilter();
      v43 = MEMORY[0x2530AD730](v146, v42);
      MEMORY[0x2530AD570](v43);

      sub_252CC3D90(v147, v148, 0xD00000000000007BLL, 0x8000000252E84470);

      return;
    }

    v147 = v17;
    if (!i)
    {
      break;
    }

    v133[1] = v29;
    v134 = v33;
    v34 = 0;
    v35 = v146;
    v36 = v146 & 0xC000000000000001;
    v37 = v146 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v36)
      {
        v38 = MEMORY[0x2530ADF00](v34, v35);
      }

      else
      {
        if (v34 >= *(v37 + 16))
        {
          goto LABEL_59;
        }

        v38 = *(v35 + 8 * v34 + 32);
      }

      v39 = v38;
      v40 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if ([v38 entityType] == 5)
      {
        sub_252E37A94();
        a1 = *(v147 + 16);
        sub_252E37AC4();
        sub_252E37AD4();
        sub_252E37AA4();
        v35 = v146;
      }

      else
      {
      }

      ++v34;
      if (v40 == i)
      {
        v17 = v147;
        v33 = v134;
        if ((v147 & 0x8000000000000000) == 0)
        {
          goto LABEL_39;
        }

        goto LABEL_63;
      }
    }

LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    ;
  }

  v35 = v146;
  if ((v17 & 0x8000000000000000) == 0)
  {
LABEL_39:
    if ((v17 & 0x4000000000000000) == 0)
    {
      v44 = *(v17 + 16);
      goto LABEL_41;
    }
  }

LABEL_63:
  v44 = sub_252E378C4();
LABEL_41:

  if (v44)
  {

    if (qword_27F53F498 != -1)
    {
      swift_once();
    }

    v45 = sub_252E36AD4();
    __swift_project_value_buffer(v45, qword_27F544C70);
    v46 = "y home within those filters: ";
    v47 = 0xD00000000000001BLL;
LABEL_45:
    sub_252CC3D90(v47, v46 | 0x8000000000000000, 0xD00000000000007BLL, 0x8000000252E84470);
LABEL_62:

    return;
  }

  KeyPath = swift_getKeyPath();
  v49 = v35;
  v50 = sub_2529304DC(KeyPath, v35);

  if ((v50 & 1) == 0)
  {
    goto LABEL_66;
  }

  v52 = static HomeStore.shared.getter(v51);
  v53 = HomeStore.services(matching:supporting:)(v49, 0);
  v55 = v54;

  if (v55)
  {
    goto LABEL_65;
  }

  if (v53 >> 62)
  {
    if (!sub_252E378C4())
    {
      goto LABEL_65;
    }

LABEL_50:
    if ((v53 & 0xC000000000000001) != 0)
    {
      v56 = MEMORY[0x2530ADF00](0, v53);
    }

    else
    {
      if (!*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_148;
      }

      v56 = *(v53 + 32);
    }

    v58 = v143;
    v57 = v144;
    v59 = v145;
    (*(v144 + 16))(v143, v56 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v145);
    v60 = sub_252E32E24();
    v62 = v61;
    (*(v57 + 8))(v58, v59);
    v63 = sub_25294833C(4u, v60, v62);

    if (!v63)
    {
      goto LABEL_91;
    }

    v64 = [v63 punchOutUri];

    if (!v64)
    {
      goto LABEL_153;
    }

    sub_252929F10(v53, 0);
    v65 = v137;
LABEL_76:
    sub_252E32C94();

    sub_252E32C64();

    (*(v141 + 8))(v65, v142);
    return;
  }

  if (*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_50;
  }

LABEL_65:
  sub_252929F10(v53, v55 & 1);
  v49 = v146;
LABEL_66:
  v66 = swift_getKeyPath();
  v67 = sub_2529304DC(v66, v49);

  if ((v67 & 1) == 0)
  {
    goto LABEL_80;
  }

  v69 = static HomeStore.shared.getter(v68);
  v53 = HomeStore.accessories(matching:supporting:)(v49, 0);
  v71 = v70;

  if (v71)
  {
    goto LABEL_79;
  }

  if (v53 >> 62)
  {
    if (!sub_252E378C4())
    {
      goto LABEL_79;
    }

LABEL_70:
    if ((v53 & 0xC000000000000001) == 0)
    {
      if (!*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_150;
      }

      v72 = *(v53 + 32);

      goto LABEL_73;
    }

LABEL_148:
    v72 = MEMORY[0x2530ADF00](0, v53);
LABEL_73:
    v74 = v143;
    v73 = v144;
    v75 = v145;
    (*(v144 + 16))(v143, v72 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v145);
    v76 = sub_252E32E24();
    v78 = v77;
    (*(v73 + 8))(v74, v75);
    v79 = sub_25294833C(3u, v76, v78);

    if (!v79)
    {
      goto LABEL_91;
    }

    v64 = [v79 punchOutUri];

    if (!v64)
    {
      goto LABEL_154;
    }

    sub_252929F10(v53, 0);
    v65 = v136;
    goto LABEL_76;
  }

  if (*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_70;
  }

LABEL_79:
  sub_252929F10(v53, v71 & 1);
  v49 = v146;
LABEL_80:
  v80 = static HomeStore.shared.getter(v68);
  v53 = HomeStore.accessories(matching:supporting:)(v49, 0);
  v82 = v81;

  if (v82)
  {
    goto LABEL_97;
  }

  if (v53 >> 62)
  {
    if ((v53 & 0x8000000000000000) == 0)
    {
      v80 = (v53 & 0xFFFFFFFFFFFFFF8);
    }

    else
    {
      v80 = v53;
    }

    if (sub_252E378C4() != 1 || !sub_252E378C4())
    {
      goto LABEL_97;
    }

LABEL_83:
    if ((v53 & 0xC000000000000001) != 0)
    {
      goto LABEL_141;
    }

    if (*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v83 = *(v53 + 32);

      goto LABEL_86;
    }

    __break(1u);
    goto LABEL_143;
  }

  if (*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
  {
    goto LABEL_83;
  }

LABEL_97:
  sub_252929F10(v53, v82 & 1);
  v94 = swift_getKeyPath();
  v95 = sub_2529304DC(v94, v146);

  if (!i || (v95 & 1) == 0)
  {
    goto LABEL_114;
  }

  if ((v146 & 0xC000000000000001) != 0)
  {
    v96 = MEMORY[0x2530ADF00](0);
LABEL_102:
    v80 = v96;
    v97 = static HomeStore.shared.getter(v96);
    v82 = sub_2529F2818(v80);

    if (v82 >> 62)
    {
      if (sub_252E378C4())
      {
LABEL_104:
        if ((v82 & 0xC000000000000001) == 0)
        {
          if (*((v82 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v98 = *(v82 + 32);

LABEL_107:

            v100 = v143;
            v99 = v144;
            v101 = v145;
            (*(v144 + 16))(v143, v98 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v145);
            v102 = sub_252E32E24();
            v104 = v103;
            (*(v99 + 8))(v100, v101);
            v105 = sub_25294833C(2u, v102, v104);

            if (!v105)
            {

              goto LABEL_62;
            }

            v106 = [v105 punchOutUri];

            if (v106)
            {

              v107 = v139;
              sub_252E32C94();

              sub_252E32C64();

              (*(v141 + 8))(v107, v142);
              return;
            }

            goto LABEL_151;
          }

          __break(1u);
          goto LABEL_145;
        }

LABEL_143:
        v98 = MEMORY[0x2530ADF00](0, v82);
        goto LABEL_107;
      }
    }

    else if (*((v82 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_104;
    }

LABEL_114:
    v108 = swift_getKeyPath();
    v109 = v146;
    v110 = sub_252BAF91C(v108, v146);
    v111 = v109;

    if (i && v110)
    {
      v112 = 0;
      v113 = v109 & 0xC000000000000001;
      v53 = v111 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v113)
        {
          v114 = MEMORY[0x2530ADF00](v112, v111);
        }

        else
        {
          if (v112 >= *(v53 + 16))
          {
            goto LABEL_139;
          }

          v114 = *(v111 + 8 * v112 + 32);
        }

        v115 = v114;
        v116 = v112 + 1;
        if (__OFADD__(v112, 1))
        {
          __break(1u);
LABEL_139:
          __break(1u);
          goto LABEL_140;
        }

        if ([v114 deviceType])
        {
          break;
        }

        ++v112;
        v111 = v146;
        if (v116 == i)
        {
          goto LABEL_126;
        }
      }

      v117 = [v115 deviceType];

      v118 = sub_252C9C724(v117);
      v111 = v146;
      if (v118 == 5)
      {
        goto LABEL_126;
      }

      v130 = sub_2529485B0(v118);
      if (v130)
      {
        v131 = v130;
        v132 = [v130 punchOutUri];

        if (!v132)
        {
          goto LABEL_155;
        }

        v93 = v135;
        sub_252E32C94();

        goto LABEL_135;
      }
    }

    else
    {
LABEL_126:
      v119 = swift_getKeyPath();
      v120 = sub_2529304DC(v119, v111);

      if ((v120 & 1) == 0)
      {

        if (qword_27F53F498 == -1)
        {
LABEL_131:
          v129 = sub_252E36AD4();
          __swift_project_value_buffer(v129, qword_27F544C70);
          v46 = "I can't show scene entities";
          v47 = 0xD00000000000002BLL;
          goto LABEL_45;
        }

LABEL_145:
        swift_once();
        goto LABEL_131;
      }

      v122 = v143;
      v121 = v144;
      v123 = v145;
      (*(v144 + 16))(v143, v33 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v145);
      v124 = sub_252E32E24();
      v126 = v125;
      (*(v121 + 8))(v122, v123);
      v127 = sub_25294833C(1u, v124, v126);

      if (v127)
      {
        v128 = [v127 punchOutUri];

        if (!v128)
        {
          goto LABEL_152;
        }

        v93 = v138;
        sub_252E32C94();

LABEL_135:
        sub_252E32C64();
        goto LABEL_136;
      }
    }

    goto LABEL_62;
  }

  if (*((v146 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v96 = *(v146 + 32);
    goto LABEL_102;
  }

LABEL_140:
  __break(1u);
LABEL_141:
  v83 = MEMORY[0x2530ADF00](0, v53);
LABEL_86:
  if (qword_27F53F498 != -1)
  {
    swift_once();
  }

  v84 = sub_252E36AD4();
  __swift_project_value_buffer(v84, qword_27F544C70);
  sub_252CC3D90(0xD000000000000039, 0x8000000252E845A0, 0xD00000000000007BLL, 0x8000000252E84470);
  v86 = v143;
  v85 = v144;
  v87 = v145;
  (*(v144 + 16))(v143, v83 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v145);
  v88 = sub_252E32E24();
  v90 = v89;
  (*(v85 + 8))(v86, v87);
  v91 = sub_25294833C(3u, v88, v90);

  if (!v91)
  {
LABEL_91:

    sub_252929F10(v53, 0);
    return;
  }

  v92 = [v91 punchOutUri];

  if (v92)
  {

    sub_252929F10(v53, 0);
    v93 = v140;
    sub_252E32C94();

    sub_252E32C64();

LABEL_136:

    (*(v141 + 8))(v93, v142);
    return;
  }

LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
}

uint64_t sub_252B92A38()
{
  v1 = [*(v0 + 88) filters];
  if (!v1)
  {
    v8 = [objc_allocWithZone(type metadata accessor for ShowHomeIntentResponse()) init];
    v12 = OBJC_IVAR___ShowHomeIntentResponse_code;
    swift_beginAccess();
    v13 = 5;
LABEL_8:
    *&v8[v12] = v13;
    [v8 setUserActivity_];
    goto LABEL_9;
  }

  v2 = v1;
  type metadata accessor for HomeFilter();
  v3 = sub_252E37264();

  sub_252B91984(v3);
  v5 = v4;
  v7 = v6;

  if (!v7)
  {
    v8 = [objc_allocWithZone(type metadata accessor for ShowHomeIntentResponse()) init];
    v12 = OBJC_IVAR___ShowHomeIntentResponse_code;
    swift_beginAccess();
    v13 = 103;
    goto LABEL_8;
  }

  v8 = [objc_allocWithZone(type metadata accessor for ShowHomeIntentResponse()) init];
  v9 = OBJC_IVAR___ShowHomeIntentResponse_code;
  swift_beginAccess();
  *&v8[v9] = 4;
  [v8 setUserActivity_];
  v10 = sub_252E36F04();
  [v8 setPunchOutURL_];

  if (qword_27F53F498 != -1)
  {
    swift_once();
  }

  v11 = sub_252E36AD4();
  __swift_project_value_buffer(v11, qword_27F544C70);
  sub_252E379F4();

  MEMORY[0x2530AD570](v5, v7);

  sub_252CC3D90(0xD000000000000028, 0x8000000252E844F0, 0xD00000000000007BLL, 0x8000000252E84470);

LABEL_9:
  v14 = *(v0 + 8);

  return v14(v8);
}

uint64_t sub_252B92CFC(uint64_t a1, const void *a2)
{
  v3[129] = v2;
  v3[128] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540330, &unk_252E3C7F0);
  v3[130] = swift_task_alloc();
  memcpy(v3 + 2, a2, 0x1F8uLL);

  return MEMORY[0x2822009F8](sub_252B92DB0, 0, 0);
}

uint64_t sub_252B92DB0()
{
  v18 = v0;
  if (qword_27F53F500 != -1)
  {
    swift_once();
  }

  v1 = v0[128];
  v2 = sub_252E36AD4();
  __swift_project_value_buffer(v2, qword_27F544DA8);
  sub_252CC3D90(0xD00000000000001CLL, 0x8000000252E84620, 0xD000000000000079, 0x8000000252E84640);
  memcpy(__dst, v0 + 2, sizeof(__dst));
  v3 = v1;
  sub_2529D291C((v0 + 2), (v0 + 65));
  v4 = sub_252953488(v1, __dst, 0);
  v0[131] = v4;

  v5 = [v3 filters];
  if (v5)
  {
    v6 = v5;
    type metadata accessor for HomeFilter();
    v7 = sub_252E37264();

    v8 = type metadata accessor for HomeStore(0);
    v9 = static HomeStore.shared.getter(v8);
    v10 = HomeStore.services(matching:supporting:)(v7, 0);
    v12 = v11;

    if ((v12 & 1) == 0)
    {
      goto LABEL_7;
    }

    sub_252929F10(v10, 1);
  }

  v10 = MEMORY[0x277D84F90];
LABEL_7:
  type metadata accessor for HomeAutomationEntityResponses();

  v13 = sub_25299DDFC(v10);
  sub_252BFDB14(v4, v13);

  v14 = swift_task_alloc();
  v0[132] = v14;
  *v14 = v0;
  v14[1] = sub_252B270B8;
  v15 = v0[130];

  return sub_252958B80(v15);
}

uint64_t sub_252B93088(uint64_t a1, const void *a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25293B808;

  return sub_252B92CFC(a1, a2);
}

void *sub_252B93130@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for BlockModifySensors();
  swift_allocObject();
  result = sub_252D192A0();
  *a1 = result;
  return result;
}

uint64_t sub_252B93218()
{
  v47 = sub_252E32FE4();
  v45 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v44 = &v36 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_252E32BA4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_252E32FF4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F38, &unk_252E41490);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v41 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v36 - v13;
  v15 = sub_252E32E04();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v40 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v39 = &v36 - v20;
  MEMORY[0x28223BE20](v19);
  v46 = &v36 - v21;
  sub_252E32FC4();
  (*(v3 + 16))(v5, v0 + OBJC_IVAR____TtC22HomeAutomationInternal16TimeTriggerValue_triggerDate, v2);
  sub_252E32FA4();
  (*(v3 + 8))(v5, v2);
  v22 = *(v7 + 8);
  v42 = v7 + 8;
  v43 = v6;
  v22(v9, v6);
  v23 = v16[6];
  if (v23(v14, 1, v15) == 1)
  {
    v24 = v14;
  }

  else
  {
    v36 = v16[4];
    v36(v46, v14, v15);
    sub_252E32FC4();
    v25 = *MEMORY[0x277CC99A0];
    v26 = v45;
    v27 = *(v45 + 104);
    v38 = v23;
    v28 = v44;
    v27(v44, v25, v47);
    v29 = v40;
    sub_252E32DC4();
    v30 = v41;
    v37 = v22;
    sub_252E32FB4();
    v31 = v16[1];
    v40 = (v16 + 1);
    v31(v29, v15);
    (*(v26 + 8))(v28, v47);
    v37(v9, v43);
    if (v38(v30, 1, v15) != 1)
    {
      v33 = v39;
      v36(v39, v30, v15);
      v34 = v46;
      v32 = sub_252E32D84();
      v31(v33, v15);
      v31(v34, v15);
      return v32 & 1;
    }

    v31(v46, v15);
    v24 = v30;
  }

  sub_25293847C(v24, &qword_27F540F38, &unk_252E41490);
  v32 = 0;
  return v32 & 1;
}

uint64_t sub_252B93750()
{
  v1 = sub_252E32FF4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F38, &unk_252E41490);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v23 - v6;
  v8 = sub_252E32E04();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v23 - v13;
  sub_252E32FC4();
  sub_252E32DF4();
  v24 = v0;
  sub_252B93B3C(v4, v12, v7);
  v15 = *(v9 + 8);
  v15(v12, v8);
  (*(v2 + 8))(v4, v1);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_25293847C(v7, &qword_27F540F38, &unk_252E41490);
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v16 = sub_252E36AD4();
    __swift_project_value_buffer(v16, qword_27F544D60);
    v25 = 0;
    v26 = 0xE000000000000000;
    sub_252E379F4();

    v25 = 0xD00000000000001FLL;
    v26 = 0x8000000252E84800;
    v17 = [v24 description];
    v18 = sub_252E36F34();
    v20 = v19;

    MEMORY[0x2530AD570](v18, v20);

    MEMORY[0x2530AD570](46, 0xE100000000000000);
    sub_252CC4050(v25, v26, 0xD00000000000007ELL, 0x8000000252E84780, 0xD000000000000012, 0x8000000252E84820, 81);

    return 0;
  }

  else
  {
    (*(v9 + 32))(v14, v7, v8);
    sub_252E36214();
    swift_allocObject();
    sub_252E36204();
    sub_252E32D94();
    sub_252E361F4();

    v22 = sub_252E361E4();

    v15(v14, v8);
    return v22;
  }
}

uint64_t sub_252B93B3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v83 = a2;
  v88 = a1;
  v91 = a3;
  v72 = sub_252E32FE4();
  v71 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v70 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_252E32F64();
  v81 = *(v5 - 8);
  v82 = v5;
  MEMORY[0x28223BE20](v5);
  v80 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_252E32F74();
  v79 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v78 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_252E32F24();
  v76 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v75 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F38, &unk_252E41490);
  v9 = MEMORY[0x28223BE20](v69);
  v67 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v77 = &v67 - v12;
  MEMORY[0x28223BE20](v11);
  v85 = &v67 - v13;
  v14 = sub_252E32E04();
  v92 = *(v14 - 8);
  v93 = v14;
  v15 = MEMORY[0x28223BE20](v14);
  v68 = &v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v89 = &v67 - v17;
  v18 = sub_252E32BA4();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v73 = &v67 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v84 = &v67 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v67 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = &v67 - v27;
  v29 = OBJC_IVAR____TtC22HomeAutomationInternal16TimeTriggerValue_triggerDate;
  v30 = *(v19 + 16);
  v90 = v3;
  v30(&v67 - v27, v3 + OBJC_IVAR____TtC22HomeAutomationInternal16TimeTriggerValue_triggerDate, v18);
  v74 = sub_252E32B54();
  v32 = v31;
  v33 = *(v19 + 8);
  v33(v28, v18);
  if (v32)
  {
    return (*(v92 + 56))(v91, 1, 1, v93);
  }

  v30(v26, v90 + v29, v18);
  sub_252E32B64();
  v35 = v34;
  v33(v26, v18);
  if (v35)
  {
    return (*(v92 + 56))(v91, 1, 1, v93);
  }

  v36 = v84;
  v30(v84, v90 + v29, v18);
  sub_252E32B34();
  v38 = v37;
  v33(v36, v18);
  if (v38)
  {
    v39 = v92;
    v40 = v93;
    v41 = v85;
    (*(v92 + 16))(v85, v83, v93);
    (*(v39 + 56))(v41, 0, 1, v40);
    v42 = v89;
  }

  else
  {
    v43 = v73;
    v30(v73, v90 + v29, v18);
    v41 = v85;
    sub_252E32FA4();
    v33(v43, v18);
    v39 = v92;
    v40 = v93;
    v44 = (*(v92 + 48))(v41, 1, v93);
    v42 = v89;
    if (v44 == 1)
    {
LABEL_8:
      sub_25293847C(v41, &qword_27F540F38, &unk_252E41490);
      return (*(v92 + 56))(v91, 1, 1, v93);
    }
  }

  v45 = *(v39 + 32);
  v90 = v39 + 32;
  v85 = v45;
  (v45)(v42, v41, v40);
  v47 = v75;
  v46 = v76;
  (*(v76 + 104))(v75, *MEMORY[0x277CC9878], v86);
  v48 = v78;
  v49 = v79;
  (*(v79 + 104))(v78, *MEMORY[0x277CC9900], v87);
  v50 = v81;
  v51 = v82;
  v52 = v80;
  (*(v81 + 104))(v80, *MEMORY[0x277CC98E8], v82);
  v53 = v77;
  sub_252E32F94();
  (*(v50 + 8))(v52, v51);
  v54 = v92;
  (*(v49 + 8))(v48, v87);
  v55 = v47;
  v41 = v53;
  v56 = v93;
  (*(v46 + 8))(v55, v86);
  if ((*(v54 + 48))(v41, 1, v56) == 1)
  {
    (*(v54 + 8))(v89, v56);
    goto LABEL_8;
  }

  v58 = v68;
  v59 = v89;
  (v85)(v68, v41, v56);
  sub_252B94C38();
  sub_252E36EB4();
  v60 = v71;
  v61 = v70;
  v62 = v72;
  (*(v71 + 104))(v70, *MEMORY[0x277CC9968], v72);
  v63 = v91;
  sub_252E32FB4();
  (*(v60 + 8))(v61, v62);
  if (qword_27F53F4E8 != -1)
  {
    swift_once();
  }

  v64 = sub_252E36AD4();
  __swift_project_value_buffer(v64, qword_27F544D60);
  v94 = 0;
  v95 = 0xE000000000000000;
  sub_252E379F4();

  v94 = 0xD000000000000012;
  v95 = 0x8000000252E84760;
  sub_2529EAFDC(v63, v67);
  v65 = sub_252E36F94();
  MEMORY[0x2530AD570](v65);

  sub_252CC3D90(v94, v95, 0xD00000000000007ELL, 0x8000000252E84780);

  v66 = *(v54 + 8);
  v66(v58, v56);
  return (v66)(v59, v56);
}

id TimeTriggerValue.__allocating_init(identifier:display:pronunciationHint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v8 = sub_252E36F04();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_252E36F04();

  if (a6)
  {
    v10 = sub_252E36F04();
  }

  else
  {
    v10 = 0;
  }

  v11 = [objc_allocWithZone(v6) initWithIdentifier:v8 displayString:v9 pronunciationHint:v10];

  return v11;
}

uint64_t sub_252B94624()
{
  v1 = OBJC_IVAR____TtC22HomeAutomationInternal16TimeTriggerValue_triggerDate;
  v2 = sub_252E32BA4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return sub_25293847C(v0 + OBJC_IVAR____TtC22HomeAutomationInternal16TimeTriggerValue_recurringDate, &qword_27F540F38, &unk_252E41490);
}

id TimeTriggerValue.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TimeTriggerValue(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for TimeTriggerValue(uint64_t a1)
{
  result = qword_27F5438C8;
  if (!qword_27F5438C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_252B947AC(uint64_t a1)
{
  sub_252E32BA4();
  if (v1 <= 0x3F)
  {
    sub_2529EAF84(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_252B94898()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5438D8, &unk_252E4EC50);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v19 - v1;
  v3 = sub_252E32F04();
  v23 = *(v3 - 8);
  v24 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_252E32FF4();
  v21 = *(v6 - 8);
  v22 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_252E35CB4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_252E35C74();
  v13 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252E35C64();
  (*(v10 + 104))(v12, *MEMORY[0x277D56370], v9);
  sub_252E32FC4();
  sub_252E32EC4();
  v16 = sub_252E35C24();
  (*(*(v16 - 8) + 56))(v2, 1, 1, v16);
  sub_252CC6450(MEMORY[0x277D84F90]);
  v17 = sub_252E35C54();

  sub_25293847C(v2, &qword_27F5438D8, &unk_252E4EC50);
  (*(v23 + 8))(v5, v24);
  (*(v21 + 8))(v8, v22);
  (*(v10 + 8))(v12, v9);
  (*(v13 + 8))(v15, v20);
  return v17 & 1;
}

unint64_t sub_252B94C38()
{
  result = qword_27F5438E0;
  if (!qword_27F5438E0)
  {
    v3 = sub_252E32E04();
    result = swift_getWitnessTable(MEMORY[0x277CC9590], v3, v0, v1);
    atomic_store(result, &qword_27F5438E0);
  }

  return result;
}

uint64_t sub_252B94C90(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_252B94CD8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_252B94D40(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_252B94D88(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_252B94E08(uint64_t *a1, int a2)
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

uint64_t sub_252B94E50(uint64_t result, int a2, int a3)
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

uint64_t sub_252B94F4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[53] = a3;
  v4[54] = v3;
  v4[51] = a1;
  v4[52] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540570, &unk_252E50EE0);
  v4[55] = swift_task_alloc();
  v5 = sub_252E36AD4();
  v4[56] = v5;
  v4[57] = *(v5 - 8);
  v4[58] = swift_task_alloc();
  v6 = sub_252E34014();
  v4[59] = v6;
  v4[60] = *(v6 - 8);
  v4[61] = swift_task_alloc();
  v4[62] = swift_task_alloc();
  v4[63] = swift_task_alloc();
  v4[64] = swift_task_alloc();
  v4[65] = swift_task_alloc();
  v4[66] = swift_task_alloc();
  v4[67] = swift_task_alloc();
  v4[68] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252B950F8, 0, 0);
}

uint64_t sub_252B950F8()
{
  v1 = *(v0 + 424);
  v2 = swift_allocObject();
  *(v0 + 552) = v2;
  v3 = MEMORY[0x277D84F90];
  *(v2 + 16) = MEMORY[0x277D84F90];
  v4 = (v2 + 16);
  v69 = v2;
  if (v1)
  {
    v5 = sub_252C285F0();
    v6 = v5;
    v71 = v3;
    v67 = v1;
    v68 = v4;
    v7 = v5 & 0xFFFFFFFFFFFFFF8;
    if (v5 >> 62)
    {
LABEL_59:
      v8 = sub_252E378C4();
    }

    else
    {
      v8 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v9 = 0;
    v10 = MEMORY[0x277D84F90];
    while (v8 != v9)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x2530ADF00](v9, v6);
      }

      else
      {
        if (v9 >= *(v7 + 16))
        {
          goto LABEL_58;
        }

        v11 = *(v6 + 8 * v9 + 32);
      }

      v12 = v11;
      v13 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
LABEL_58:
        __break(1u);
        goto LABEL_59;
      }

      v14 = sub_252DA124C(0);

      ++v9;
      if (v14)
      {
        MEMORY[0x2530AD700]();
        if (*((v71 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v71 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_252E372A4();
        }

        sub_252E372D4();
        v10 = v71;
        v9 = v13;
      }
    }

    v1 = v67;
    v4 = v68;
  }

  else
  {
    v10 = v3;
  }

  v15 = *(v0 + 416);
  *v4 = v10;

  v16 = [v15 userTask];
  if (!v16)
  {
    goto LABEL_27;
  }

  v17 = v16;
  v18 = [v16 attribute];

  if (v18 > 39)
  {
    if (v18 != 40)
    {
      if (v18 == 41)
      {
        v26 = *(v0 + 432);
        v20 = swift_allocObject();
        *(v0 + 848) = v20;
        *(v20 + 16) = v26;
        *(v20 + 24) = v69;
        swift_retain_n();

        if (v1)
        {
          v27 = *(v26 + 48);
          v28 = *(v0 + 424);
          v23 = *__swift_project_boxed_opaque_existential_1((v26 + 24), v27);
          v70 = sub_252C0CA0C;
          v24 = swift_task_alloc();
          *(v0 + 856) = v24;
          *v24 = v0;
          v25 = sub_252B98A40;
          goto LABEL_39;
        }

        if (qword_27F53F4D0 != -1)
        {
          swift_once();
        }

        v61 = *(v0 + 432);
        __swift_project_value_buffer(*(v0 + 448), qword_27F544D18);
        sub_252CC4050(0xD00000000000003CLL, 0x8000000252E6B3F0, 0xD00000000000008FLL, 0x8000000252E6B430, 0xD000000000000042, 0x8000000252E6B4C0, 205);
        v56 = *(v61 + 96);
        __swift_project_boxed_opaque_existential_1((v61 + 72), v56);
        sub_252AD7CC4();
        v62 = swift_task_alloc();
        *(v0 + 904) = v62;
        *v62 = v0;
        v62[1] = sub_252B98E24;
        v58 = *(v0 + 496);
        v59 = &unk_252E4EF80;
        v60 = v0 + 16;
        goto LABEL_54;
      }

      goto LABEL_27;
    }

    v52 = *(v0 + 432);
    v20 = swift_allocObject();
    *(v0 + 752) = v20;
    *(v20 + 16) = v52;
    *(v20 + 24) = v69;
    swift_retain_n();

    if (v1)
    {
      v53 = *(v52 + 48);
      v54 = *(v0 + 424);
      v23 = *__swift_project_boxed_opaque_existential_1((v52 + 24), v53);
      v70 = sub_252C0C838;
      v24 = swift_task_alloc();
      *(v0 + 760) = v24;
      *v24 = v0;
      v25 = sub_252B97BB4;
      goto LABEL_39;
    }

    if (qword_27F53F4D0 != -1)
    {
      swift_once();
    }

    v65 = *(v0 + 432);
    __swift_project_value_buffer(*(v0 + 448), qword_27F544D18);
    sub_252CC4050(0xD00000000000003CLL, 0x8000000252E6B3F0, 0xD00000000000008FLL, 0x8000000252E6B430, 0xD000000000000042, 0x8000000252E6B4C0, 205);
    v56 = *(v65 + 96);
    __swift_project_boxed_opaque_existential_1((v65 + 72), v56);
    sub_252AD7CC4();
    v66 = swift_task_alloc();
    *(v0 + 808) = v66;
    *v66 = v0;
    v66[1] = sub_252B97F98;
    v58 = *(v0 + 512);
    v59 = &unk_252E4EF98;
    v60 = v0 + 96;
LABEL_54:

    return sub_252BDB88C(v60, v59, v20, v58, 0, 0, 0, v56);
  }

  if (v18 == 38)
  {
    v49 = *(v0 + 432);
    v20 = swift_allocObject();
    *(v0 + 560) = v20;
    *(v20 + 16) = v49;
    *(v20 + 24) = v69;
    swift_retain_n();

    if (v1)
    {
      v50 = *(v49 + 48);
      v51 = *(v0 + 424);
      v23 = *__swift_project_boxed_opaque_existential_1((v49 + 24), v50);
      v70 = sub_252C0C38C;
      v24 = swift_task_alloc();
      *(v0 + 568) = v24;
      *v24 = v0;
      v25 = sub_252B95E9C;
      goto LABEL_39;
    }

    if (qword_27F53F4D0 != -1)
    {
      swift_once();
    }

    v63 = *(v0 + 432);
    __swift_project_value_buffer(*(v0 + 448), qword_27F544D18);
    sub_252CC4050(0xD00000000000003CLL, 0x8000000252E6B3F0, 0xD00000000000008FLL, 0x8000000252E6B430, 0xD000000000000042, 0x8000000252E6B4C0, 205);
    v56 = *(v63 + 96);
    __swift_project_boxed_opaque_existential_1((v63 + 72), v56);
    sub_252AD7CC4();
    v64 = swift_task_alloc();
    *(v0 + 616) = v64;
    *v64 = v0;
    v64[1] = sub_252B96280;
    v58 = *(v0 + 544);
    v59 = &unk_252E4EFC8;
    v60 = v0 + 256;
    goto LABEL_54;
  }

  if (v18 == 39)
  {
    v19 = *(v0 + 432);
    v20 = swift_allocObject();
    *(v0 + 656) = v20;
    *(v20 + 16) = v19;
    *(v20 + 24) = v69;
    swift_retain_n();

    if (v1)
    {
      v21 = *(v19 + 48);
      v22 = *(v0 + 424);
      v23 = *__swift_project_boxed_opaque_existential_1((v19 + 24), v21);
      v70 = sub_252C0CFB8;
      v24 = swift_task_alloc();
      *(v0 + 664) = v24;
      *v24 = v0;
      v25 = sub_252B96D28;
LABEL_39:
      v24[1] = v25;

      return v70(0, v23, v4);
    }

    if (qword_27F53F4D0 != -1)
    {
      swift_once();
    }

    v55 = *(v0 + 432);
    __swift_project_value_buffer(*(v0 + 448), qword_27F544D18);
    sub_252CC4050(0xD00000000000003CLL, 0x8000000252E6B3F0, 0xD00000000000008FLL, 0x8000000252E6B430, 0xD000000000000042, 0x8000000252E6B4C0, 205);
    v56 = *(v55 + 96);
    __swift_project_boxed_opaque_existential_1((v55 + 72), v56);
    sub_252AD7CC4();
    v57 = swift_task_alloc();
    *(v0 + 712) = v57;
    *v57 = v0;
    v57[1] = sub_252B9710C;
    v58 = *(v0 + 528);
    v59 = &unk_252E4EFB0;
    v60 = v0 + 176;
    goto LABEL_54;
  }

LABEL_27:
  if (qword_27F53F4D0 != -1)
  {
    swift_once();
  }

  v30 = *(v0 + 456);
  v29 = *(v0 + 464);
  v31 = *(v0 + 448);
  v32 = *(v0 + 416);
  v33 = __swift_project_value_buffer(v31, qword_27F544D18);
  (*(v30 + 16))(v29, v33, v31);
  sub_252E379F4();

  v34 = [v32 userTask];
  v35 = v34;
  if (v34)
  {
    v36 = [v34 attribute];
  }

  else
  {
    v36 = 0;
  }

  v37 = *(v0 + 456);
  v38 = *(v0 + 464);
  v39 = *(v0 + 440);
  v40 = *(v0 + 448);
  v41 = *(v0 + 432);
  *(v0 + 360) = v36;
  *(v0 + 368) = v35 == 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540728, qword_252E4B870);
  v42 = sub_252E36F94();
  MEMORY[0x2530AD570](v42);

  sub_252CC4050(0xD00000000000002ELL, 0x8000000252E848C0, 0xD00000000000009CLL, 0x8000000252E848F0, 0xD00000000000001FLL, 0x8000000252E84990, 76);

  (*(v37 + 8))(v38, v40);
  sub_2529515FC(0, 0, 0x4F6E776F6E6B6E75, 0xEE00656D6F637475);
  type metadata accessor for ErrorFilingHelper();
  inited = swift_initStackObject();
  sub_252E36884();
  swift_allocObject();
  *(inited + 16) = sub_252E36874();
  v44 = sub_252E36834();
  (*(*(v44 - 8) + 56))(v39, 1, 1, v44);
  sub_25295ADB4(0xD00000000000006ELL, 0x8000000252E849B0, 0x4F6E776F6E6B6E55, 0xEE00656D6F637475, 0xD000000000000024, 0x8000000252E4EEF0, v39);

  sub_25293847C(v39, &qword_27F540570, &unk_252E50EE0);
  v45 = v41[12];
  v46 = v41[13];
  __swift_project_boxed_opaque_existential_1(v41 + 9, v45);

  sub_252943B8C(sub_252B99F14, v41, v45, v46);

  v47 = *(v0 + 8);

  return v47();
}

uint64_t sub_252B95E9C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 576) = a1;
  *(v3 + 584) = v1;

  if (v1)
  {
    v4 = sub_252B9616C;
  }

  else
  {
    v4 = sub_252B95FB4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_252B95FB4()
{
  v1 = *(v0 + 424);

  v2 = swift_task_alloc();
  *(v0 + 592) = v2;
  *v2 = v0;
  v2[1] = sub_252B96054;

  return sub_252E174F4(v1);
}

uint64_t sub_252B96054(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 600) = a1;
  *(v3 + 608) = v1;

  if (v1)
  {
    v4 = sub_252B96544;
  }

  else
  {
    v4 = sub_252B963E8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_252B9616C()
{
  v1 = *(v0 + 424);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_252B96280()
{
  v2 = *v1;
  *(*v1 + 624) = v0;

  (*(v2[60] + 8))(v2[68], v2[59]);
  if (v0)
  {
    v3 = sub_252B96C28;
  }

  else
  {
    v3 = sub_252B96A90;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_252B963E8()
{
  v1 = v0 + 50;
  v2 = v0[75];
  v3 = v0[72];
  v0[50] = v3;
  if (v2)
  {
    v4 = v3;
    v5 = v2;
    v6 = sub_252BE8A5C(v5);

    *v1 = v6;
  }

  else
  {
    v7 = v3;
  }

  v8 = v0[54];
  v9 = *(v8 + 96);
  __swift_project_boxed_opaque_existential_1((v8 + 72), v9);
  v10 = swift_task_alloc();
  v0[79] = v10;
  *(v10 + 16) = v1;
  sub_252AD7CC4();
  v11 = swift_task_alloc();
  v0[80] = v11;
  *v11 = v0;
  v11[1] = sub_252B96658;
  v12 = v0[67];

  return sub_252BDB88C((v0 + 37), &unk_252E4EFD0, v10, v12, 0, 0, 0, v9);
}

uint64_t sub_252B96544()
{
  v1 = *(v0 + 424);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_252B96658()
{
  v2 = *v1;
  *(*v1 + 648) = v0;

  (*(v2[60] + 8))(v2[67], v2[59]);
  if (v0)
  {
    v3 = sub_252B96960;
  }

  else
  {

    v3 = sub_252B967A8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_252B967A8()
{
  v1 = *(v0 + 432);
  v2 = *(v0 + 416);
  v3 = v1[12];
  v4 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v3);
  v5 = [v2 filters];
  if (v5)
  {
    v6 = v5;
    type metadata accessor for HomeFilter();
    v7 = sub_252E37264();
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v8 = *(v0 + 600);
  v9 = *(v0 + 576);
  v10 = *(v0 + 424);
  (*(v4 + 112))(v7, v0 + 296, v3, v4);

  __swift_destroy_boxed_opaque_existential_1((v0 + 296));

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_252B96960()
{
  v1 = *(v0 + 600);
  v2 = *(v0 + 424);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_252B96A90()
{
  v1 = v0[54];
  v2 = v0[52];
  v3 = v1[12];
  v4 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v3);
  v5 = [v2 filters];
  if (v5)
  {
    v6 = v5;
    type metadata accessor for HomeFilter();
    v7 = sub_252E37264();
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  (*(v4 + 112))(v7, v0 + 32, v3, v4);

  __swift_destroy_boxed_opaque_existential_1(v0 + 32);

  v8 = v0[1];

  return v8();
}

uint64_t sub_252B96C28()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252B96D28(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 672) = a1;
  *(v3 + 680) = v1;

  if (v1)
  {
    v4 = sub_252B96FF8;
  }

  else
  {
    v4 = sub_252B96E40;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_252B96E40()
{
  v1 = *(v0 + 424);

  v2 = swift_task_alloc();
  *(v0 + 688) = v2;
  *v2 = v0;
  v2[1] = sub_252B96EE0;

  return sub_252E174F4(v1);
}

uint64_t sub_252B96EE0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 696) = a1;
  *(v3 + 704) = v1;

  if (v1)
  {
    v4 = sub_252B973D0;
  }

  else
  {
    v4 = sub_252B97274;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_252B96FF8()
{
  v1 = *(v0 + 424);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_252B9710C()
{
  v2 = *v1;
  *(*v1 + 720) = v0;

  (*(v2[60] + 8))(v2[66], v2[59]);
  if (v0)
  {
    v3 = sub_252B97AB4;
  }

  else
  {
    v3 = sub_252B9791C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_252B97274()
{
  v1 = v0 + 49;
  v2 = v0[87];
  v3 = v0[84];
  v0[49] = v3;
  if (v2)
  {
    v4 = v3;
    v5 = v2;
    v6 = sub_252BE8A5C(v5);

    *v1 = v6;
  }

  else
  {
    v7 = v3;
  }

  v8 = v0[54];
  v9 = *(v8 + 96);
  __swift_project_boxed_opaque_existential_1((v8 + 72), v9);
  v10 = swift_task_alloc();
  v0[91] = v10;
  *(v10 + 16) = v1;
  sub_252AD7CC4();
  v11 = swift_task_alloc();
  v0[92] = v11;
  *v11 = v0;
  v11[1] = sub_252B974E4;
  v12 = v0[65];

  return sub_252BDB88C((v0 + 27), &unk_252E4EFB8, v10, v12, 0, 0, 0, v9);
}

uint64_t sub_252B973D0()
{
  v1 = *(v0 + 424);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_252B974E4()
{
  v2 = *v1;
  *(*v1 + 744) = v0;

  (*(v2[60] + 8))(v2[65], v2[59]);
  if (v0)
  {
    v3 = sub_252B977EC;
  }

  else
  {

    v3 = sub_252B97634;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_252B97634()
{
  v1 = *(v0 + 432);
  v2 = *(v0 + 416);
  v3 = v1[12];
  v4 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v3);
  v5 = [v2 filters];
  if (v5)
  {
    v6 = v5;
    type metadata accessor for HomeFilter();
    v7 = sub_252E37264();
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v8 = *(v0 + 696);
  v9 = *(v0 + 672);
  v10 = *(v0 + 424);
  (*(v4 + 112))(v7, v0 + 216, v3, v4);

  __swift_destroy_boxed_opaque_existential_1((v0 + 216));

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_252B977EC()
{
  v1 = *(v0 + 696);
  v2 = *(v0 + 424);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_252B9791C()
{
  v1 = v0[54];
  v2 = v0[52];
  v3 = v1[12];
  v4 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v3);
  v5 = [v2 filters];
  if (v5)
  {
    v6 = v5;
    type metadata accessor for HomeFilter();
    v7 = sub_252E37264();
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  (*(v4 + 112))(v7, v0 + 22, v3, v4);

  __swift_destroy_boxed_opaque_existential_1(v0 + 22);

  v8 = v0[1];

  return v8();
}

uint64_t sub_252B97AB4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252B97BB4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 768) = a1;
  *(v3 + 776) = v1;

  if (v1)
  {
    v4 = sub_252B97E84;
  }

  else
  {
    v4 = sub_252B97CCC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_252B97CCC()
{
  v1 = *(v0 + 424);

  v2 = swift_task_alloc();
  *(v0 + 784) = v2;
  *v2 = v0;
  v2[1] = sub_252B97D6C;

  return sub_252E174F4(v1);
}

uint64_t sub_252B97D6C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 792) = a1;
  *(v3 + 800) = v1;

  if (v1)
  {
    v4 = sub_252B9825C;
  }

  else
  {
    v4 = sub_252B98100;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_252B97E84()
{
  v1 = *(v0 + 424);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_252B97F98()
{
  v2 = *v1;
  *(*v1 + 816) = v0;

  (*(v2[60] + 8))(v2[64], v2[59]);
  if (v0)
  {
    v3 = sub_252B98940;
  }

  else
  {
    v3 = sub_252B987A8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_252B98100()
{
  v1 = v0 + 48;
  v2 = v0[99];
  v3 = v0[96];
  v0[48] = v3;
  if (v2)
  {
    v4 = v3;
    v5 = v2;
    v6 = sub_252BE8A5C(v5);

    *v1 = v6;
  }

  else
  {
    v7 = v3;
  }

  v8 = v0[54];
  v9 = *(v8 + 96);
  __swift_project_boxed_opaque_existential_1((v8 + 72), v9);
  v10 = swift_task_alloc();
  v0[103] = v10;
  *(v10 + 16) = v1;
  sub_252AD7CC4();
  v11 = swift_task_alloc();
  v0[104] = v11;
  *v11 = v0;
  v11[1] = sub_252B98370;
  v12 = v0[63];

  return sub_252BDB88C((v0 + 17), &unk_252E4EFA0, v10, v12, 0, 0, 0, v9);
}

uint64_t sub_252B9825C()
{
  v1 = *(v0 + 424);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_252B98370()
{
  v2 = *v1;
  *(*v1 + 840) = v0;

  (*(v2[60] + 8))(v2[63], v2[59]);
  if (v0)
  {
    v3 = sub_252B98678;
  }

  else
  {

    v3 = sub_252B984C0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_252B984C0()
{
  v1 = *(v0 + 432);
  v2 = *(v0 + 416);
  v3 = v1[12];
  v4 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v3);
  v5 = [v2 filters];
  if (v5)
  {
    v6 = v5;
    type metadata accessor for HomeFilter();
    v7 = sub_252E37264();
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v8 = *(v0 + 792);
  v9 = *(v0 + 768);
  v10 = *(v0 + 424);
  (*(v4 + 112))(v7, v0 + 136, v3, v4);

  __swift_destroy_boxed_opaque_existential_1((v0 + 136));

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_252B98678()
{
  v1 = *(v0 + 792);
  v2 = *(v0 + 424);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_252B987A8()
{
  v1 = v0[54];
  v2 = v0[52];
  v3 = v1[12];
  v4 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v3);
  v5 = [v2 filters];
  if (v5)
  {
    v6 = v5;
    type metadata accessor for HomeFilter();
    v7 = sub_252E37264();
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  (*(v4 + 112))(v7, v0 + 12, v3, v4);

  __swift_destroy_boxed_opaque_existential_1(v0 + 12);

  v8 = v0[1];

  return v8();
}

uint64_t sub_252B98940()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252B98A40(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 864) = a1;
  *(v3 + 872) = v1;

  if (v1)
  {
    v4 = sub_252B98D10;
  }

  else
  {
    v4 = sub_252B98B58;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_252B98B58()
{
  v1 = *(v0 + 424);

  v2 = swift_task_alloc();
  *(v0 + 880) = v2;
  *v2 = v0;
  v2[1] = sub_252B98BF8;

  return sub_252E174F4(v1);
}

uint64_t sub_252B98BF8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 888) = a1;
  *(v3 + 896) = v1;

  if (v1)
  {
    v4 = sub_252B990E8;
  }

  else
  {
    v4 = sub_252B98F8C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_252B98D10()
{
  v1 = *(v0 + 424);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_252B98E24()
{
  v2 = *v1;
  *(*v1 + 912) = v0;

  (*(v2[60] + 8))(v2[62], v2[59]);
  if (v0)
  {
    v3 = sub_252B997CC;
  }

  else
  {
    v3 = sub_252B99634;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_252B98F8C()
{
  v1 = v0 + 47;
  v2 = v0[111];
  v3 = v0[108];
  v0[47] = v3;
  if (v2)
  {
    v4 = v3;
    v5 = v2;
    v6 = sub_252BE8A5C(v5);

    *v1 = v6;
  }

  else
  {
    v7 = v3;
  }

  v8 = v0[54];
  v9 = *(v8 + 96);
  __swift_project_boxed_opaque_existential_1((v8 + 72), v9);
  v10 = swift_task_alloc();
  v0[115] = v10;
  *(v10 + 16) = v1;
  sub_252AD7CC4();
  v11 = swift_task_alloc();
  v0[116] = v11;
  *v11 = v0;
  v11[1] = sub_252B991FC;
  v12 = v0[61];

  return sub_252BDB88C((v0 + 7), &unk_252E3F140, v10, v12, 0, 0, 0, v9);
}

uint64_t sub_252B990E8()
{
  v1 = *(v0 + 424);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_252B991FC()
{
  v2 = *v1;
  *(*v1 + 936) = v0;

  (*(v2[60] + 8))(v2[61], v2[59]);
  if (v0)
  {
    v3 = sub_252B99504;
  }

  else
  {

    v3 = sub_252B9934C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_252B9934C()
{
  v1 = *(v0 + 432);
  v2 = *(v0 + 416);
  v3 = v1[12];
  v4 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v3);
  v5 = [v2 filters];
  if (v5)
  {
    v6 = v5;
    type metadata accessor for HomeFilter();
    v7 = sub_252E37264();
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v8 = *(v0 + 888);
  v9 = *(v0 + 864);
  v10 = *(v0 + 424);
  (*(v4 + 112))(v7, v0 + 56, v3, v4);

  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_252B99504()
{
  v1 = *(v0 + 888);
  v2 = *(v0 + 424);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_252B99634()
{
  v1 = v0[54];
  v2 = v0[52];
  v3 = v1[12];
  v4 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v3);
  v5 = [v2 filters];
  if (v5)
  {
    v6 = v5;
    type metadata accessor for HomeFilter();
    v7 = sub_252E37264();
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  (*(v4 + 112))(v7, v0 + 2, v3, v4);

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v8 = v0[1];

  return v8();
}

uint64_t sub_252B997CC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252B998CC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_252B998EC, 0, 0);
}

uint64_t sub_252B998EC()
{
  v1 = v0[3];
  v2 = *__swift_project_boxed_opaque_existential_1((v0[2] + 24), *(v0[2] + 48));
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_252A9A974;

  return sub_252C0C38C(0, v2, v1 + 16);
}

uint64_t sub_252B999B0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_252B999D0, 0, 0);
}

uint64_t sub_252B999D0()
{
  v1 = v0[3];
  v2 = *__swift_project_boxed_opaque_existential_1((v0[2] + 24), *(v0[2] + 48));
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_252B9A250;

  return sub_252C0CFB8(0, v2, v1 + 16);
}

uint64_t sub_252B99A94(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_252B99AB4, 0, 0);
}

uint64_t sub_252B99AB4()
{
  v1 = v0[3];
  v2 = *__swift_project_boxed_opaque_existential_1((v0[2] + 24), *(v0[2] + 48));
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_252B9A250;

  return sub_252C0C838(0, v2, v1 + 16);
}

uint64_t sub_252B99B78(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_252B99B98, 0, 0);
}

uint64_t sub_252B99B98()
{
  v1 = v0[3];
  v2 = *__swift_project_boxed_opaque_existential_1((v0[2] + 24), *(v0[2] + 48));
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_252B9A250;

  return sub_252C0CA0C(0, v2, v1 + 16);
}

uint64_t sub_252B99C5C()
{

  sub_252E362B4();
}

uint64_t sub_252B99CF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25293B808;

  return sub_252B94F4C(a1, a2, a3);
}

void *sub_252B99DA8@<X0>(const void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for GetBooleanSensorStateResponseHandler();
  swift_allocObject();
  memcpy(__dst, a1, sizeof(__dst));
  result = sub_252BE97AC(__dst);
  *a2 = result;
  return result;
}

uint64_t sub_252B99E0C(void *a1)
{
  result = [a1 userTask];
  if (result)
  {
    v3 = result;
    v4 = [a1 userTask];
    if (v4)
    {
      v5 = v4;
      if ([v4 taskType] == 4)
      {
      }

      else
      {
        v6 = [v5 taskType];

        if (v6 != 5)
        {
          goto LABEL_8;
        }
      }

      if ([v3 attribute] == 38)
      {
LABEL_10:

        return 1;
      }
    }

    else
    {
      sub_252C515AC();
    }

LABEL_8:
    if ([v3 attribute] != 39 && objc_msgSend(v3, sel_attribute) != 40)
    {
      v7 = [v3 attribute];

      return v7 == 41;
    }

    goto LABEL_10;
  }

  return result;
}

uint64_t sub_252B99F1C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_25294B958;

  return sub_252B99B78(v2, v3);
}

uint64_t sub_252B99FB4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_25294B958;

  return sub_252B99A94(v2, v3);
}

uint64_t sub_252B9A04C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_25294B958;

  return sub_252B999B0(v2, v3);
}

uint64_t sub_252B9A0E4()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25294B958;

  return sub_252BA2CEC(v2);
}

uint64_t objectdestroy_18Tm()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_252B9A1B8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_25294B958;

  return sub_252B998CC(v2, v3);
}

void *sub_252B9A254(void *key, uint64_t a2)
{
  if (objc_getAssociatedObject(v2, key))
  {
    sub_252E377F4();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11[0] = v9;
  v11[1] = v10;
  if (!*(&v10 + 1))
  {
    sub_252982F10(v11);
    goto LABEL_8;
  }

  type metadata accessor for HomeAutomationWaterSystemResponses();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v6 = sub_25299D5A8(a2);
    type metadata accessor for HomeAutomationWaterSystemResponses();
    v5 = swift_allocObject();
    v5[2] = 0;
    v5[3] = v6;
    objc_setAssociatedObject(v2, key, v5, 1);
    return v5;
  }

  return v8;
}

void *sub_252B9A34C(void *key, uint64_t a2)
{
  if (objc_getAssociatedObject(v2, key))
  {
    sub_252E377F4();
    swift_unknownObjectRelease();
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
  }

  v18[0] = v16;
  v18[1] = v17;
  if (*(&v17 + 1))
  {
    type metadata accessor for HomeAutomationWaterSystemResponses();
    if (swift_dynamicCast())
    {
      return v15;
    }
  }

  else
  {
    sub_252982F10(v18);
  }

  v6 = *(a2 + 16);
  if (v6)
  {
    v7 = (a2 + 32);
    v8 = MEMORY[0x277D84F90];
    while (1)
    {
      v9 = *v7++;
      v10 = sub_25299D5A8(v9);
      if (v10 >> 62)
      {
        v11 = v10;
        v12 = sub_252E378C4();
        v10 = v11;
        if (v12)
        {
LABEL_15:
          v13 = v10;
          goto LABEL_17;
        }
      }

      else if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }

      if (!--v6)
      {
        v13 = v8;
        goto LABEL_17;
      }
    }
  }

  v13 = MEMORY[0x277D84F90];
LABEL_17:
  type metadata accessor for HomeAutomationWaterSystemResponses();
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = v13;
  objc_setAssociatedObject(v2, key, v5, 1);
  return v5;
}

void *sub_252B9A4DC(const void *a1, char a2)
{
  v5 = v2[3];
  swift_beginAccess();
  if (objc_getAssociatedObject(v2, a1))
  {
    sub_252E377F4();
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  v12[0] = v10;
  v12[1] = v11;
  if (!*(&v11 + 1))
  {
    sub_252982F10(v12);
    goto LABEL_8;
  }

  type metadata accessor for HomeAutomationWaterSystemResponses();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v7 = sub_25299EC20(v5, 27, a2 & 1);
    type metadata accessor for HomeAutomationWaterSystemResponses();
    v6 = swift_allocObject();
    v6[2] = 0;
    v6[3] = v7;
    objc_setAssociatedObject(v2, a1, v6, 1);
    goto LABEL_9;
  }

  v6 = v9;
LABEL_9:
  swift_endAccess();
  return v6;
}

void *sub_252B9A620(const void *a1, char a2)
{
  v5 = sub_252B9A4DC(&unk_27F5438EA, 1);
  if (v5)
  {
    v6 = v5[3];
    swift_beginAccess();

    if (objc_getAssociatedObject(v2, a1))
    {
      sub_252E377F4();
      swift_unknownObjectRelease();
    }

    else
    {
      v11 = 0u;
      v12 = 0u;
    }

    v13[0] = v11;
    v13[1] = v12;
    if (*(&v12 + 1))
    {
      type metadata accessor for HomeAutomationWaterSystemResponses();
      if (swift_dynamicCast())
      {
        v7 = v10;
LABEL_11:
        swift_endAccess();

        return v7;
      }
    }

    else
    {
      sub_252982F10(v13);
    }

    v8 = sub_25299EC20(v6, 46, a2 & 1);
    type metadata accessor for HomeAutomationWaterSystemResponses();
    v7 = swift_allocObject();
    v7[2] = 0;
    v7[3] = v8;
    objc_setAssociatedObject(v2, a1, v7, 1);
    goto LABEL_11;
  }

  return 0;
}

void *sub_252B9A780@<X0>(void *result@<X0>, unint64_t a2@<X8>)
{
  v3 = *(*result + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_states);
  v21 = MEMORY[0x277D84F90];
  v4 = v3 & 0xFFFFFFFFFFFFFF8;
  if (v3 >> 62)
  {
LABEL_33:
    result = sub_252E378C4();
    v5 = result;
    if (result)
    {
      goto LABEL_3;
    }

LABEL_34:
    v7 = MEMORY[0x277D84F90];
    goto LABEL_35;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
    goto LABEL_34;
  }

LABEL_3:
  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  v19 = a2;
  do
  {
    v18 = v7;
    a2 = v6;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x2530ADF00](a2, v3);
        v6 = a2 + 1;
        if (__OFADD__(a2, 1))
        {
          goto LABEL_31;
        }
      }

      else
      {
        if (a2 >= *(v4 + 16))
        {
          goto LABEL_32;
        }

        v8 = *(v3 + 8 * a2 + 32);

        v6 = a2 + 1;
        if (__OFADD__(a2, 1))
        {
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
          goto LABEL_33;
        }
      }

      v9 = *(v8 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_stateValue);
      if (v9)
      {
        v10 = *(v9 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue);
        if (v10)
        {
          break;
        }
      }

LABEL_5:

      ++a2;
      if (v6 == v5)
      {
        a2 = v19;
        v7 = v18;
        goto LABEL_35;
      }
    }

    v11 = OBJC_IVAR____TtC22HomeAutomationInternal33HomeAutomationAbstractMeasurement_unit;

    v12 = sub_252A47810(v10 + v11);
    v13 = qword_2864A0BE8 == v12 || unk_2864A0BF0 == v12;
    if (v13 || v12 != 5)
    {
      v14 = sub_252E37DB4();

      if (v14)
      {
        goto LABEL_24;
      }

      v4 = v20;
      goto LABEL_5;
    }

LABEL_24:
    sub_252E36274();
    swift_allocObject();
    sub_252E36264();
    sub_252E36254();

    sub_252E36244();

    swift_beginAccess();
    v15 = *(v10 + 16);
    if (v15)
    {
      v16 = v15;
      sub_252E36234();
    }

    MEMORY[0x2530AD700](v17);
    if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_252E372A4();
    }

    result = sub_252E372D4();
    v7 = v21;
    a2 = v19;
    v4 = v20;
  }

  while (v6 != v5);
LABEL_35:
  *a2 = v7;
  return result;
}

unint64_t sub_252B9ACF0(uint64_t a1)
{
  result = 0x6E776F6E6B6E75;
  switch(a1)
  {
    case 1:
      result = 0x73736563637573;
      break;
    case 2:
      result = 0xD000000000000014;
      break;
    case 3:
      result = 0x796C6E4F64616572;
      break;
    case 4:
    case 5:
    case 28:
    case 31:
      result = 0xD000000000000011;
      break;
    case 6:
      result = 0x6168636165726E75;
      break;
    case 7:
      result = 0x6572756C696166;
      break;
    case 8:
      result = 0x78614D6F54746573;
      break;
    case 9:
      result = 0x6E694D6F54746573;
      break;
    case 10:
    case 33:
      result = 0xD000000000000012;
      break;
    case 11:
      result = 0xD000000000000013;
      break;
    case 12:
      result = 0x65746F6D65526F6ELL;
      break;
    case 13:
      result = 0xD000000000000013;
      break;
    case 14:
    case 20:
      result = 0x746F6F7465756C62;
      break;
    case 15:
      result = 0x664F734969666977;
      break;
    case 16:
    case 27:
      result = 0xD00000000000001BLL;
      break;
    case 17:
      result = 0x6572676F72506E69;
      break;
    case 18:
      result = 0x746F4E656E656373;
      break;
    case 19:
      result = 0x676E697275636573;
      break;
    case 21:
      result = 0x65526B636F6C6E75;
      break;
    case 22:
      result = 0xD000000000000013;
      break;
    case 24:
      result = 0xD000000000000013;
      break;
    case 25:
      result = 0xD000000000000016;
      break;
    case 26:
      result = 0xD00000000000001DLL;
      break;
    case 29:
      result = 0x4274737544637672;
      break;
    case 30:
      result = 0xD000000000000013;
      break;
    case 32:
      result = 0xD000000000000018;
      break;
    case 34:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t ControlHomeIntentResponse.description.getter()
{
  v1 = v0;
  sub_252E379F4();
  MEMORY[0x2530AD570](60, 0xE100000000000000);
  swift_getObjectType();
  v2 = sub_252E37FB4();
  MEMORY[0x2530AD570](v2);

  MEMORY[0x2530AD570](8250, 0xE200000000000000);
  v14 = sub_252E376B4();
  v3 = sub_252E37D94();
  MEMORY[0x2530AD570](v3);

  MEMORY[0x2530AD570](0x2020200A7B203A3ELL, 0xEF203A65646F6320);
  v4 = OBJC_IVAR___ControlHomeIntentResponse_code;
  swift_beginAccess();
  v13 = *&v1[v4];
  sub_252E37AE4();
  MEMORY[0x2530AD570](0xD000000000000016, 0x8000000252E84A40);
  v5 = [v1 entityResponses];
  if (v5)
  {
    v6 = v5;
    v7 = type metadata accessor for HomeEntityResponse();
    sub_252E37264();

    v9 = MEMORY[0x2530AD730](v8, v7);
    v11 = v10;
    swift_bridgeObjectRelease_n();
  }

  else
  {
    v11 = 0xE600000000000000;
    v9 = 0x29656E6F6E28;
  }

  MEMORY[0x2530AD570](v9, v11);

  MEMORY[0x2530AD570](8194604, 0xE300000000000000);
  return 0;
}

id sub_252B9B2C0(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_252E36F04();

  return v5;
}

uint64_t INHomeEntityResponse.description.getter()
{
  v1 = v0;
  sub_252E379F4();
  MEMORY[0x2530AD570](60, 0xE100000000000000);
  swift_getObjectType();
  v2 = sub_252E37FB4();
  MEMORY[0x2530AD570](v2);

  MEMORY[0x2530AD570](8250, 0xE200000000000000);
  sub_252E376B4();
  v3 = sub_252E37D94();
  MEMORY[0x2530AD570](v3);

  MEMORY[0x2530AD570](0xD000000000000011, 0x8000000252E84A60);
  v4 = [v0 entity];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 description];

    v7 = sub_252E36F34();
    v9 = v8;
  }

  else
  {
    v9 = 0xE600000000000000;
    v7 = 0x29656E6F6E28;
  }

  MEMORY[0x2530AD570](v7, v9);

  MEMORY[0x2530AD570](0xD000000000000015, 0x8000000252E84A80);
  v10 = [v1 taskResponses];
  if (v10)
  {
    v11 = v10;
    sub_25293F638(0, &qword_27F5438F8, 0x277CD3D08);
    sub_252E37264();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5438F0, &qword_252E4EFD8);
  v12 = sub_252E36F94();
  MEMORY[0x2530AD570](v12);

  MEMORY[0x2530AD570](32010, 0xE200000000000000);
  return 0;
}

uint64_t HomeEntityResponse.description.getter()
{
  v1 = v0;
  sub_252E379F4();
  MEMORY[0x2530AD570](60, 0xE100000000000000);
  swift_getObjectType();
  v2 = sub_252E37FB4();
  MEMORY[0x2530AD570](v2);

  MEMORY[0x2530AD570](8250, 0xE200000000000000);
  sub_252E376B4();
  v3 = sub_252E37D94();
  MEMORY[0x2530AD570](v3);

  MEMORY[0x2530AD570](0xD000000000000011, 0x8000000252E84A60);
  v4 = [v0 entity];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 description];

    v7 = sub_252E36F34();
    v9 = v8;
  }

  else
  {
    v9 = 0xE600000000000000;
    v7 = 0x29656E6F6E28;
  }

  MEMORY[0x2530AD570](v7, v9);

  MEMORY[0x2530AD570](0xD000000000000015, 0x8000000252E84A80);
  v10 = [v1 taskResponses];
  if (v10)
  {
    v11 = v10;
    type metadata accessor for HomeUserTaskResponse();
    sub_252E37264();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543900, &qword_252E4EFE0);
  v12 = sub_252E36F94();
  MEMORY[0x2530AD570](v12);

  MEMORY[0x2530AD570](32010, 0xE200000000000000);
  return 0;
}

uint64_t INHomeEntity.description.getter()
{
  v1 = 0x29656E6F6E28;
  *(&v88 + 1) = 0xE000000000000000;
  sub_252E379F4();
  v90 = 0;
  v91 = 0xE000000000000000;
  MEMORY[0x2530AD570](60, 0xE100000000000000);
  swift_getObjectType();
  v2 = sub_252E37FB4();
  MEMORY[0x2530AD570](v2);

  MEMORY[0x2530AD570](8250, 0xE200000000000000);
  *&v88 = sub_252E376B4();
  v3 = sub_252E37D94();
  MEMORY[0x2530AD570](v3);

  MEMORY[0x2530AD570](0xD00000000000001DLL, 0x8000000252E84AA0);
  v85 = v0;
  v4 = [v0 entityName];
  v5 = &selRef_setHomeAutomationRequestOutcome_;
  if (v4)
  {
    v6 = v4;
    v7 = [v4 spokenPhrase];

    v1 = sub_252E36F34();
    v9 = v8;
  }

  else
  {
    v9 = 0xE600000000000000;
  }

  MEMORY[0x2530AD570](v1, v9);

  MEMORY[0x2530AD570](0xD000000000000010, 0x8000000252E84AC0);
  *&v88 = [v85 type];
  type metadata accessor for INHomeEntityType(0);
  sub_252E37AE4();
  MEMORY[0x2530AD570](0xD00000000000001CLL, 0x8000000252E84AE0);
  v10 = [v85 entityIdentifier];
  if (v10)
  {
    v11 = v10;
    v12 = sub_252E36F34();
    v14 = v13;
  }

  else
  {
    v14 = 0xE600000000000000;
    v12 = 0x29656E6F6E28;
  }

  MEMORY[0x2530AD570](v12, v14);

  MEMORY[0x2530AD570](0xD000000000000017, 0x8000000252E84B00);
  v15 = [v85 deviceTypes];
  if (v15)
  {
    v16 = v15;
    sub_25293F638(0, &qword_27F5404D8, 0x277CCABB0);
    v17 = sub_252E37264();

    if (v17 >> 62)
    {
      goto LABEL_30;
    }

    for (i = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
    {
      v19 = 0;
      v20 = MEMORY[0x277D84F90];
      while (1)
      {
        if ((v17 & 0xC000000000000001) != 0)
        {
          v21 = MEMORY[0x2530ADF00](v19, v17);
        }

        else
        {
          if (v19 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_29;
          }

          v21 = *(v17 + 8 * v19 + 32);
        }

        v22 = v21;
        v23 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        v24 = sub_252E373F4();
        if (v25)
        {
          v26 = 0;
        }

        else
        {
          v26 = v24;
        }

        type metadata accessor for INHomeDeviceType(0);
        v89 = v27;
        *&v88 = v26;
        sub_252A00AF4(&v88, &v86);

        if (v87)
        {
          sub_252A00AF4(&v86, &v88);
          sub_252A00AF4(&v88, &v86);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v20 = sub_2529F9208(0, *(v20 + 16) + 1, 1, v20);
          }

          v29 = *(v20 + 16);
          v28 = *(v20 + 24);
          if (v29 >= v28 >> 1)
          {
            v20 = sub_2529F9208((v28 > 1), v29 + 1, 1, v20);
          }

          *(v20 + 16) = v29 + 1;
          sub_252A00AF4(&v86, (v20 + 32 * v29 + 32));
        }

        else
        {
          sub_252982F10(&v86);
        }

        ++v19;
        if (v23 == i)
        {
          goto LABEL_32;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      ;
    }

    v20 = MEMORY[0x277D84F90];
LABEL_32:

    v5 = &selRef_setHomeAutomationRequestOutcome_;
  }

  else
  {
    v30 = MEMORY[0x277D837D0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5403C0, &unk_252E3C470);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_252E3C290;
    *(v20 + 56) = v30;
    *(v20 + 32) = 0x29656E6F6E28;
    *(v20 + 40) = 0xE600000000000000;
  }

  v31 = MEMORY[0x2530AD730](v20, MEMORY[0x277D84F70] + 8);
  v33 = v32;

  MEMORY[0x2530AD570](v31, v33);

  MEMORY[0x2530AD570](0xD000000000000015, 0x8000000252E84B20);
  v34 = [v85 sceneType];
  v35 = 0xE700000000000000;
  v36 = 0x6E776F6E6B6E75;
  v37 = 0x6E697661654C6D69;
  v38 = 0xE900000000000067;
  v39 = 0xE600000000000000;
  v40 = 0x656D6F486D69;
  v41 = 0xE900000000000074;
  v42 = 0x6867694E646F6F67;
  if (v34 != 5)
  {
    v42 = 0x6E776F6E6B6E75;
    v41 = 0xE700000000000000;
  }

  if (v34 != 4)
  {
    v40 = v42;
    v39 = v41;
  }

  if (v34 != 3)
  {
    v37 = v40;
    v38 = v39;
  }

  if (v34 == 2)
  {
    v36 = 0x6E726F4D646F6F67;
    v35 = 0xEB00000000676E69;
  }

  if (v34 == 1)
  {
    v36 = 0x6966654472657375;
    v35 = 0xEB0000000064656ELL;
  }

  v43 = v34 <= 2;
  if (v34 <= 2)
  {
    v44 = v36;
  }

  else
  {
    v44 = v37;
  }

  if (v43)
  {
    v45 = v35;
  }

  else
  {
    v45 = v38;
  }

  MEMORY[0x2530AD570](v44, v45);

  MEMORY[0x2530AD570](0xD000000000000011, 0x8000000252E84B40);
  v46 = [v85 group];
  if (v46)
  {
    v47 = v46;
    v48 = [v46 spokenPhrase];

    v49 = sub_252E36F34();
    v51 = v50;
  }

  else
  {
    v51 = 0xE600000000000000;
    v49 = 0x29656E6F6E28;
  }

  MEMORY[0x2530AD570](v49, v51);

  MEMORY[0x2530AD570](0xD000000000000010, 0x8000000252E84B60);
  v52 = [v85 room];
  if (v52)
  {
    v53 = v52;
    v54 = [v52 spokenPhrase];

    v55 = sub_252E36F34();
    v57 = v56;
  }

  else
  {
    v57 = 0xE600000000000000;
    v55 = 0x29656E6F6E28;
  }

  MEMORY[0x2530AD570](v55, v57);

  MEMORY[0x2530AD570](0xD000000000000011, 0x8000000252E84B80);
  v58 = [v85 zones];
  if (v58)
  {
    v59 = v58;
    sub_25293F638(0, &qword_27F543908, 0x277CD4188);
    v60 = sub_252E37264();

    if (v60 >> 62)
    {
      goto LABEL_73;
    }

    for (j = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = sub_252E378C4())
    {
      v62 = 0;
      v63 = MEMORY[0x277D84F90];
      while (1)
      {
        if ((v60 & 0xC000000000000001) != 0)
        {
          v64 = MEMORY[0x2530ADF00](v62, v60);
        }

        else
        {
          if (v62 >= *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_72;
          }

          v64 = *(v60 + 8 * v62 + 32);
        }

        v65 = v64;
        v66 = v62 + 1;
        if (__OFADD__(v62, 1))
        {
          break;
        }

        v67 = v5;
        v68 = [v64 v5[53]];
        v69 = sub_252E36F34();
        v71 = v70;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v63 = sub_2529F7A80(0, *(v63 + 2) + 1, 1, v63);
        }

        v73 = *(v63 + 2);
        v72 = *(v63 + 3);
        if (v73 >= v72 >> 1)
        {
          v63 = sub_2529F7A80((v72 > 1), v73 + 1, 1, v63);
        }

        *(v63 + 2) = v73 + 1;
        v74 = &v63[16 * v73];
        *(v74 + 4) = v69;
        *(v74 + 5) = v71;
        ++v62;
        v5 = v67;
        if (v66 == j)
        {
          goto LABEL_75;
        }
      }

      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      ;
    }

    v63 = MEMORY[0x277D84F90];
LABEL_75:
  }

  else
  {
    v63 = &unk_2864ADD88;
  }

  v75 = MEMORY[0x2530AD730](v63, MEMORY[0x277D837D0]);
  v77 = v76;

  MEMORY[0x2530AD570](v75, v77);

  MEMORY[0x2530AD570](0xD000000000000010, 0x8000000252E84BA0);
  v78 = [v85 home];
  if (v78)
  {
    v79 = v78;
    v80 = [v78 v5[53]];

    v81 = sub_252E36F34();
    v83 = v82;
  }

  else
  {
    v83 = 0xE600000000000000;
    v81 = 0x29656E6F6E28;
  }

  MEMORY[0x2530AD570](v81, v83);

  MEMORY[0x2530AD570](0x7D202020200ALL, 0xE600000000000000);
  return v90;
}

void HomeEntity.description.getter()
{
  v1 = v0;
  v2 = 0x29656E6F6E28;
  sub_252E379F4();
  MEMORY[0x2530AD570](60, 0xE100000000000000);
  swift_getObjectType();
  v3 = sub_252E37FB4();
  MEMORY[0x2530AD570](v3);

  MEMORY[0x2530AD570](8250, 0xE200000000000000);
  sub_252E376B4();
  v4 = sub_252E37D94();
  MEMORY[0x2530AD570](v4);

  MEMORY[0x2530AD570](0xD00000000000001DLL, 0x8000000252E84AA0);
  v5 = [v0 homeEntityName];
  if (v5)
  {
    v6 = v5;
    v7 = sub_252E36F34();
    v9 = v8;
  }

  else
  {
    v9 = 0xE600000000000000;
    v7 = 0x29656E6F6E28;
  }

  MEMORY[0x2530AD570](v7, v9);

  MEMORY[0x2530AD570](0xD000000000000010, 0x8000000252E84AC0);
  v10 = sub_252BEBD04([v1 type]);
  MEMORY[0x2530AD570](v10);

  MEMORY[0x2530AD570](0xD00000000000001CLL, 0x8000000252E84AE0);
  v11 = [v1 entityIdentifier];
  if (v11)
  {
    v12 = v11;
    v13 = sub_252E36F34();
    v15 = v14;
  }

  else
  {
    v15 = 0xE600000000000000;
    v13 = 0x29656E6F6E28;
  }

  MEMORY[0x2530AD570](v13, v15);

  MEMORY[0x2530AD570](0xD000000000000017, 0x8000000252E84B00);
  v16 = [v1 deviceTypes];
  if (v16)
  {
    v17 = v16;
    v18 = sub_252E37264();

    v19 = *(v18 + 16);
    if (v19)
    {
      v20 = (v18 + 32);
      v21 = MEMORY[0x277D84F90];
      do
      {
        v23 = *v20++;
        v24 = sub_252E25FC4(v23);
        if ((v25 & 1) == 0)
        {
          v26 = HomeDeviceType.description.getter(v24);
          v28 = v27;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v21 = sub_2529F7A80(0, *(v21 + 2) + 1, 1, v21);
          }

          v30 = *(v21 + 2);
          v29 = *(v21 + 3);
          if (v30 >= v29 >> 1)
          {
            v21 = sub_2529F7A80((v29 > 1), v30 + 1, 1, v21);
          }

          *(v21 + 2) = v30 + 1;
          v22 = &v21[16 * v30];
          *(v22 + 4) = v26;
          *(v22 + 5) = v28;
        }

        --v19;
      }

      while (v19);
    }

    else
    {
      v21 = MEMORY[0x277D84F90];
    }

    v2 = 0x29656E6F6E28;
  }

  else
  {
    v21 = &unk_2864ADDB8;
  }

  v31 = MEMORY[0x2530AD730](v21, MEMORY[0x277D837D0]);
  v33 = v32;

  MEMORY[0x2530AD570](v31, v33);

  MEMORY[0x2530AD570](0xD000000000000015, 0x8000000252E84B20);
  v34 = [v1 sceneType];
  v35 = 0xE700000000000000;
  v36 = 0x6E776F6E6B6E75;
  v37 = 0x6E697661654C6D69;
  v38 = 0xE900000000000067;
  v39 = 0xE600000000000000;
  v40 = 0x656D6F486D69;
  v41 = 0xE900000000000074;
  v42 = 0x6867694E646F6F67;
  if (v34 != 5)
  {
    v42 = 0x6E776F6E6B6E75;
    v41 = 0xE700000000000000;
  }

  if (v34 != 4)
  {
    v40 = v42;
    v39 = v41;
  }

  if (v34 != 3)
  {
    v37 = v40;
    v38 = v39;
  }

  if (v34 == 2)
  {
    v36 = 0x6E726F4D646F6F67;
    v35 = 0xEB00000000676E69;
  }

  if (v34 == 1)
  {
    v36 = 0x6966654472657375;
    v35 = 0xEB0000000064656ELL;
  }

  v43 = v34 <= 2;
  if (v34 <= 2)
  {
    v44 = v36;
  }

  else
  {
    v44 = v37;
  }

  if (v43)
  {
    v45 = v35;
  }

  else
  {
    v45 = v38;
  }

  MEMORY[0x2530AD570](v44, v45);

  MEMORY[0x2530AD570](0xD000000000000011, 0x8000000252E84B40);
  v46 = [v1 group];
  if (v46)
  {
    v47 = v46;
    v48 = sub_252E36F34();
    v50 = v49;
  }

  else
  {
    v50 = 0xE600000000000000;
    v48 = 0x29656E6F6E28;
  }

  MEMORY[0x2530AD570](v48, v50);

  MEMORY[0x2530AD570](0xD000000000000010, 0x8000000252E84B60);
  v51 = [v1 room];
  if (v51)
  {
    v52 = v51;
    v53 = sub_252E36F34();
    v55 = v54;
  }

  else
  {
    v55 = 0xE600000000000000;
    v53 = 0x29656E6F6E28;
  }

  MEMORY[0x2530AD570](v53, v55);

  MEMORY[0x2530AD570](0xD000000000000011, 0x8000000252E84B80);
  v56 = [v1 zones];
  if (!v56)
  {
    v62 = &unk_2864ADDE8;
LABEL_55:
    v68 = MEMORY[0x2530AD730](v62, MEMORY[0x277D837D0]);
    v70 = v69;

    MEMORY[0x2530AD570](v68, v70);

    MEMORY[0x2530AD570](0xD000000000000010, 0x8000000252E84BA0);
    v71 = [v1 home];
    if (v71)
    {
      v72 = v71;
      v2 = sub_252E36F34();
      v74 = v73;
    }

    else
    {
      v74 = 0xE600000000000000;
    }

    MEMORY[0x2530AD570](v2, v74);

    MEMORY[0x2530AD570](0x7D202020200ALL, 0xE600000000000000);
    return;
  }

  v57 = v56;
  v58 = sub_252E37264();

  v59 = *(v58 + 16);
  if (!v59)
  {
    v62 = MEMORY[0x277D84F90];
LABEL_54:

    v2 = 0x29656E6F6E28;
    goto LABEL_55;
  }

  v60 = 0;
  v61 = (v58 + 40);
  v62 = MEMORY[0x277D84F90];
  while (v60 < *(v58 + 16))
  {
    v64 = *(v61 - 1);
    v63 = *v61;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v62 = sub_2529F7A80(0, *(v62 + 2) + 1, 1, v62);
    }

    v66 = *(v62 + 2);
    v65 = *(v62 + 3);
    if (v66 >= v65 >> 1)
    {
      v62 = sub_2529F7A80((v65 > 1), v66 + 1, 1, v62);
    }

    ++v60;
    *(v62 + 2) = v66 + 1;
    v67 = &v62[16 * v66];
    *(v67 + 4) = v64;
    *(v67 + 5) = v63;
    v61 += 2;
    if (v59 == v60)
    {
      goto LABEL_54;
    }
  }

  __break(1u);
}

uint64_t sub_252B9C8C8(uint64_t a1)
{
  v1 = 0x6E776F6E6B6E75;
  v2 = 0x6E697661654C6D69;
  v3 = 0x656D6F486D69;
  v4 = 0x6867694E646F6F67;
  if (a1 != 5)
  {
    v4 = 0x6E776F6E6B6E75;
  }

  if (a1 != 4)
  {
    v3 = v4;
  }

  if (a1 != 3)
  {
    v2 = v3;
  }

  if (a1 == 2)
  {
    v1 = 0x6E726F4D646F6F67;
  }

  if (a1 == 1)
  {
    v1 = 0x6966654472657375;
  }

  if (a1 <= 2)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_252B9C9DC(uint64_t a1)
{
  switch(a1)
  {
    case 1:
      result = 0x73736563637573;
      break;
    case 2:
      result = 0xD000000000000014;
      break;
    case 3:
      result = 0x796C6E4F64616572;
      break;
    case 4:
    case 5:
      result = 0xD000000000000011;
      break;
    case 6:
      result = 0x6168636165726E75;
      break;
    case 7:
      result = 0x6572756C696166;
      break;
    case 8:
      result = 0x78614D6F54746573;
      break;
    case 9:
      result = 0x6E694D6F54746573;
      break;
    case 10:
      result = 0xD000000000000012;
      break;
    case 11:
      result = 0xD000000000000013;
      break;
    case 12:
      result = 0x65746F6D65526F6ELL;
      break;
    case 13:
      result = 0xD000000000000013;
      break;
    case 14:
    case 20:
      result = 0x746F6F7465756C62;
      break;
    case 15:
      result = 0x664F734969666977;
      break;
    case 16:
      result = 0xD00000000000001BLL;
      break;
    case 17:
      result = 0x6572676F72506E69;
      break;
    case 18:
      result = 0x746F4E656E656373;
      break;
    case 19:
      result = 0x676E697275636573;
      break;
    case 21:
      result = 0x65526B636F6C6E75;
      break;
    case 22:
      result = 0xD000000000000013;
      break;
    default:
      result = 0x6E776F6E6B6E75;
      break;
  }

  return result;
}

uint64_t sub_252B9CCD0(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(id))
{
  sub_252E379F4();
  MEMORY[0x2530AD570](60, 0xE100000000000000);
  swift_getObjectType();
  v7 = sub_252E37FB4();
  MEMORY[0x2530AD570](v7);

  MEMORY[0x2530AD570](8250, 0xE200000000000000);
  sub_252E376B4();
  v8 = sub_252E37D94();
  MEMORY[0x2530AD570](v8);

  MEMORY[0x2530AD570](0xD000000000000017, 0x8000000252E84BC0);
  [v3 userTask];
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v9 = sub_252E36F94();
  MEMORY[0x2530AD570](v9);

  MEMORY[0x2530AD570](0xD000000000000017, 0x8000000252E84BE0);
  v10 = a3([v3 taskOutcome]);
  MEMORY[0x2530AD570](v10);

  MEMORY[0x2530AD570](0x7D202020200ALL, 0xE600000000000000);
  return 0;
}

char *sub_252B9CE7C()
{
  v1 = v0;
  type metadata accessor for HomeEntity();
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_252E36F04();
  v4 = [v2 initWithIdentifier:0 displayString:v3];

  v5 = sub_252E36F04();
  [v4 setHomeEntityName_];

  [v4 setType_];
  sub_252E32E24();
  v6 = sub_252E36F04();

  [v4 setEntityIdentifier_];

  v7 = *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate);
  v8 = [v7 home];
  if (v8)
  {
    type metadata accessor for Home(0);
    swift_allocObject();
    sub_2529E65BC(v8);

    v8 = sub_252E36F04();
  }

  [v4 setHome_];

  v9 = [v7 room];
  if (v9)
  {
    type metadata accessor for Room(0);
    swift_allocObject();
    sub_2529A1E08(v9);

    v9 = sub_252E36F04();
  }

  [v4 setRoom_];

  v10 = sub_252D523AC();
  v11 = v10;
  if (!(v10 >> 62))
  {
    v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
      goto LABEL_7;
    }

LABEL_17:

LABEL_18:
    v21 = sub_252E37254();

    [v4 setZones_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5402C0, &unk_252E3C0F0);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_252E3C290;
    *(v22 + 32) = (*(*v1 + 256))();
    v23 = sub_252E37254();

    [v4 setDeviceTypes_];

    return v4;
  }

  v12 = sub_252E378C4();
  if (!v12)
  {
    goto LABEL_17;
  }

LABEL_7:
  v26 = MEMORY[0x277D84F90];
  result = sub_2529AA3A0(0, v12 & ~(v12 >> 63), 0);
  if ((v12 & 0x8000000000000000) == 0)
  {
    v24 = v4;
    v25 = v1;
    v14 = 0;
    do
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x2530ADF00](v14, v11);
      }

      else
      {
        v15 = *(v11 + 8 * v14 + 32);
      }

      v16 = *(v15 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
      v17 = *(v15 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

      v19 = *(v26 + 16);
      v18 = *(v26 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_2529AA3A0((v18 > 1), v19 + 1, 1);
      }

      ++v14;
      *(v26 + 16) = v19 + 1;
      v20 = v26 + 16 * v19;
      *(v20 + 32) = v16;
      *(v20 + 40) = v17;
    }

    while (v12 != v14);

    v4 = v24;
    v1 = v25;
    goto LABEL_18;
  }

  __break(1u);
  return result;
}

id sub_252B9D2D4()
{
  type metadata accessor for HomeEntity();
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v2 = sub_252E36F04();
  v3 = [v1 initWithIdentifier:0 displayString:v2];

  v4 = [*(v0 + OBJC_IVAR____TtC22HomeAutomationInternal7Trigger_delegate) configuredName];
  if (v4)
  {
    v5 = v4;
    sub_252E36F34();

    v6 = sub_252E36F04();
  }

  else
  {
    v6 = 0;
  }

  [v3 setHomeEntityName_];

  [v3 setType_];
  sub_252E32E24();
  v7 = sub_252E36F04();

  [v3 setEntityIdentifier_];

  if (sub_252BEAC3C())
  {

    v8 = sub_252E36F04();
  }

  else
  {
    v8 = 0;
  }

  [v3 setHome_];

  return v3;
}

void *sub_252B9D4B0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AsyncGenericErrorResponseHandler();
  v2 = swift_allocObject();
  result = sub_252D46D94(v2);
  *a1 = result;
  return result;
}

uint64_t sub_252B9D4EC(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_252B9D510, 0, 0);
}

uint64_t sub_252B9D510()
{
  v1 = *(v0 + 24);
  sub_2529515FC(4, 0, 0x45636972656E6567, 0xEC000000726F7272);
  v2 = v1[6];
  v3 = v1[7];
  __swift_project_boxed_opaque_existential_1(v1 + 3, v2);

  sub_252943B8C(sub_252B9D608, v1, v2, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_252B9D64C(unint64_t a1)
{
  if (qword_27F53F4E8 != -1)
  {
    swift_once();
  }

  v2 = sub_252E36AD4();
  __swift_project_value_buffer(v2, qword_27F544D60);
  sub_252E379F4();
  v3 = HomeAttributeType.description.getter(a1);
  v5 = v4;

  MEMORY[0x2530AD570](0x6461657220736920, 0xEF203A796C6E6F20);
  v12 = vdupq_n_s64(a1);
  v6 = ((vmaxvq_u8(vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(vceqq_s64(xmmword_2864A3AD0, v12), vceqq_s64(xmmword_2864A3AE0, v12)), vuzp1q_s32(vceqq_s64(xmmword_2864A3AF0, v12), vceqq_s64(xmmword_2864A3B00, v12))), vuzp1q_s16(vuzp1q_s32(vceqq_s64(xmmword_2864A3B10, v12), vceqq_s64(xmmword_2864A3B20, v12)), vuzp1q_s32(vceqq_s64(xmmword_2864A3B30, v12), vceqq_s64(xmmword_2864A3B40, v12))))) | vmaxv_u8(vmovn_s16(vuzp1q_s16(vuzp1q_s32(vceqq_s64(xmmword_2864A3B50, v12), vceqq_s64(unk_2864A3B60, v12)), vuzp1q_s32(vceqq_s64(xmmword_2864A3B70, v12), vceqq_s64(unk_2864A3B80, v12)))))) & 1) == 0;
  if (v6)
  {
    v7 = 0x65736C6166;
  }

  else
  {
    v7 = 1702195828;
  }

  if (v6)
  {
    v8 = 0xE500000000000000;
  }

  else
  {
    v8 = 0xE400000000000000;
  }

  MEMORY[0x2530AD570](v7, v8);

  sub_252CC3D90(v3, v5, 0xD000000000000091, 0x8000000252E84DB0);

  v9 = vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(vceqq_s64(xmmword_2864A3AD0, v12), vceqq_s64(xmmword_2864A3AE0, v12)), vuzp1q_s32(vceqq_s64(xmmword_2864A3AF0, v12), vceqq_s64(xmmword_2864A3B00, v12))), vuzp1q_s16(vuzp1q_s32(vceqq_s64(xmmword_2864A3B10, v12), vceqq_s64(xmmword_2864A3B20, v12)), vuzp1q_s32(vceqq_s64(xmmword_2864A3B30, v12), vceqq_s64(xmmword_2864A3B40, v12))));
  v9.i8[0] = vmaxvq_u8(v9);
  v10 = v9.i32[0];
  *v9.i8 = vmovn_s16(vuzp1q_s16(vuzp1q_s32(vceqq_s64(xmmword_2864A3B50, v12), vceqq_s64(unk_2864A3B60, v12)), vuzp1q_s32(vceqq_s64(xmmword_2864A3B70, v12), vceqq_s64(unk_2864A3B80, v12))));
  v9.i8[0] = vmaxv_u8(*v9.i8);
  return (v10 | v9.i32[0]) & 1;
}