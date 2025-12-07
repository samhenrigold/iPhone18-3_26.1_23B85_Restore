char *sub_269033DB0(char a1)
{
  sub_2690343E8(&v47);
  sub_26903354C(&v47);
  if (a1)
  {
    if (a1 == 1)
    {
      return 0;
    }

    else
    {
      v18 = (v1 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_viewModel);
      swift_beginAccess();
      v19 = v18[9];
      v20 = v18[11];
      v57 = v18[10];
      v58 = v20;
      v21 = v18[11];
      v59 = v18[12];
      v22 = v18[5];
      v23 = v18[7];
      v53 = v18[6];
      v54 = v23;
      v24 = v18[7];
      v25 = v18[9];
      v55 = v18[8];
      v56 = v25;
      v26 = v18[1];
      v27 = v18[3];
      v49 = v18[2];
      v50 = v27;
      v28 = v18[3];
      v29 = v18[5];
      v51 = v18[4];
      v52 = v29;
      v30 = v18[1];
      v47 = *v18;
      v48 = v30;
      v44 = v57;
      v45 = v21;
      v46 = v18[12];
      v40 = v53;
      v41 = v24;
      v42 = v55;
      v43 = v19;
      v36 = v49;
      v37 = v28;
      v38 = v51;
      v39 = v22;
      v34 = v47;
      v35 = v26;
      v31 = objc_allocWithZone(type metadata accessor for VoiceTrainingProxController());
      sub_269009E3C(&v47, v33);
      v3 = sub_26901CB88(&v34);
      *&v3[OBJC_IVAR____TtC9SiriSetup27VoiceTrainingProxController_delegate + 8] = &off_2879A8010;
      swift_unknownObjectWeakAssign();
    }
  }

  else
  {
    v4 = (v1 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_viewModel);
    swift_beginAccess();
    v5 = v4[9];
    v6 = v4[11];
    v57 = v4[10];
    v58 = v6;
    v7 = v4[11];
    v59 = v4[12];
    v8 = v4[5];
    v9 = v4[7];
    v53 = v4[6];
    v54 = v9;
    v10 = v4[7];
    v11 = v4[9];
    v55 = v4[8];
    v56 = v11;
    v12 = v4[1];
    v13 = v4[3];
    v49 = v4[2];
    v50 = v13;
    v14 = v4[3];
    v15 = v4[5];
    v51 = v4[4];
    v52 = v15;
    v16 = v4[1];
    v47 = *v4;
    v48 = v16;
    v44 = v57;
    v45 = v7;
    v46 = v4[12];
    v40 = v53;
    v41 = v10;
    v42 = v55;
    v43 = v5;
    v36 = v49;
    v37 = v14;
    v38 = v51;
    v39 = v8;
    v34 = v47;
    v35 = v12;
    v17 = objc_allocWithZone(type metadata accessor for VoiceTrainingWelcomeController());
    sub_269009E3C(&v47, v33);
    v3 = sub_26902661C(&v34);
    *&v3[OBJC_IVAR____TtC9SiriSetup30VoiceTrainingWelcomeController_delegate + 8] = &off_2879A8010;
    swift_unknownObjectWeakAssign();
  }

  return v3;
}

uint64_t sub_269034014()
{
  v1 = *(v0 + 16);
  sub_269057C54();

  v2 = v1 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_dataSource;
  v4 = *(v1 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_dataSource);
  v3 = *(v1 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_dataSource + 8);
  ObjectType = swift_getObjectType();
  v6 = *(v3 + 8);
  v7 = v4;
  v8 = v6(ObjectType, v3);
  v10 = v9;

  if (v10)
  {
    v11 = v8;
  }

  else
  {
    v11 = 7104878;
  }

  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = 0xE300000000000000;
  }

  MEMORY[0x26D62FBC0](v11, v12);

  MEMORY[0x26D62FBC0](0x5564657261687320, 0xEE00206449726573);
  v14 = *v2;
  v13 = *(v2 + 8);
  v15 = swift_getObjectType();
  v16 = *(v13 + 16);
  v17 = v14;
  v18 = v16(v15, v13);
  v20 = v19;

  if (v20)
  {
    v21 = v18;
  }

  else
  {
    v21 = 7104878;
  }

  if (v20)
  {
    v22 = v20;
  }

  else
  {
    v22 = 0xE300000000000000;
  }

  MEMORY[0x26D62FBC0](v21, v22);

  if (qword_2802F3258 != -1)
  {
    swift_once();
  }

  v23 = *(v0 + 16);
  v24 = sub_269057774();
  __swift_project_value_buffer(v24, qword_2802F3FF8);
  v25 = sub_269057AA4();
  sub_269053434(v25, 0xD000000000000015, 0x800000026905ECE0, 0xD000000000000022, 0x800000026905ED00, 0x4164756F6C436920, 0xEF2044495344746CLL);

  v26 = OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_trainingManager;
  v27 = *(v23 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_trainingManager);
  v28 = v27;
  v29 = v27;
  if (!v27)
  {
    v31 = *v2;
    v30 = *(v2 + 8);
    v32 = swift_getObjectType();
    v33 = *(v30 + 88);
    v34 = v31;
    v33(v32, v30);

    v35 = *v2;
    v36 = *(v2 + 8);
    v37 = swift_getObjectType();
    v38 = *(v36 + 16);
    v39 = v35;
    v38(v37, v36);

    if (qword_2802F3220 != -1)
    {
      swift_once();
    }

    v40 = objc_allocWithZone(SRSVoiceTrainingManager);
    v41 = sub_269057944();

    v42 = sub_269057944();

    v29 = [v40 initWithLanguageCode:v41 withSharedUserId:v42];

    v28 = *(v23 + v26);
  }

  *(v23 + v26) = v29;
  v43 = v27;

  v44 = *(v23 + v26);
  if (v44)
  {
    [v44 setDelegate_];
  }

  v45 = *(v0 + 8);

  return v45();
}

double sub_2690343E8@<D0>(uint64_t a1@<X8>)
{
  v3 = 0x800000026905E8F0;
  v4 = v1 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_dataSource;
  v5 = *(v1 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_dataSource);
  v6 = *(v4 + 8);
  ObjectType = swift_getObjectType();
  v8 = *(v6 + 88);
  v9 = v5;
  v47 = v8(ObjectType, v6);
  v11 = v10;

  if (qword_2802F3248 != -1)
  {
LABEL_21:
    swift_once();
  }

  v12 = byte_2802F5130;
  v13 = sub_269051B18(byte_2802F5130);
  v50 = 0xD00000000000001FLL;
  v51 = 0x800000026905E8F0;
  MEMORY[0x26D62FBC0](v13);

  v14 = sub_26904DCD8(0, 1, 1, MEMORY[0x277D84F90]);
  v16 = *(v14 + 2);
  v15 = *(v14 + 3);
  v17 = v15 >> 1;
  v18 = v16 + 1;
  if (v15 >> 1 <= v16)
  {
    v14 = sub_26904DCD8((v15 > 1), v16 + 1, 1, v14);
    v15 = *(v14 + 3);
    v17 = v15 >> 1;
  }

  *(v14 + 2) = v18;
  v19 = &v14[16 * v16];
  *(v19 + 4) = 0xD00000000000001FLL;
  *(v19 + 5) = 0x800000026905E8F0;
  v48 = v11;
  if (v17 < (v16 + 2))
  {
    v14 = sub_26904DCD8((v15 > 1), v16 + 2, 1, v14);
  }

  *(v14 + 2) = v16 + 2;
  v20 = &v14[16 * v18];
  *(v20 + 4) = 0xD00000000000001FLL;
  *(v20 + 5) = 0x800000026905E8F0;
  v21 = (v14 + 40);
  v22 = -v16;
  v11 = -1;
  while (v22 + v11 != 1)
  {
    if (++v11 >= *(v14 + 2))
    {
      __break(1u);
      goto LABEL_21;
    }

    v23 = v21 + 2;
    v24 = *(v21 - 1);
    v25 = *v21;

    v26 = sub_26902F7F4(v24, v25, 0);
    v28 = v27;

    v21 = v23;
    if (v28)
    {

      v3 = v28;
      v29 = v48;
      if (!v48)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }
  }

  sub_269057C54();
  MEMORY[0x26D62FBC0](0xD00000000000002ALL, 0x800000026905BF40);
  MEMORY[0x26D62FBC0](0xD00000000000001FLL, 0x800000026905E8F0);
  MEMORY[0x26D62FBC0](0xD000000000000015, 0x800000026905BF70);
  if (qword_2802F3258 != -1)
  {
    swift_once();
  }

  v30 = sub_269057774();
  __swift_project_value_buffer(v30, qword_2802F3FF8);
  v31 = sub_269057A94();
  v50 = 0xD00000000000003BLL;
  v51 = 0x800000026905BF00;
  v32 = sub_269057764();
  if (os_log_type_enabled(v32, v31))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v49[0] = v34;
    *v33 = 136315138;
    v35 = sub_269010108(0xD00000000000003BLL, 0x800000026905BF00, v49);

    *(v33 + 4) = v35;
    _os_log_impl(&dword_269002000, v32, v31, "%s", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v34);
    MEMORY[0x26D6309D0](v34, -1, -1);
    MEMORY[0x26D6309D0](v33, -1, -1);
  }

  else
  {
  }

  v26 = 0xD00000000000001FLL;
  v29 = v48;
  if (v48)
  {
LABEL_18:
    v26 = sub_26902FAA0(v26, v3, v47, v29);
    v37 = v36;

    v3 = v37;
  }

LABEL_19:
  sub_2690519EC(v12);
  v50 = v26;
  v51 = v3;
  strcpy(v49, "%DEVICE_NAME%");
  HIWORD(v49[1]) = -4864;
  sub_26900BE9C();
  v38 = sub_269057BE4();
  v40 = v39;

  sub_2690519EC(v12);
  v50 = v38;
  v51 = v40;
  v49[0] = 0xD000000000000014;
  v49[1] = 0x800000026905BEA0;
  v41 = sub_269057BE4();
  v43 = v42;

  v44 = sub_269043D38(0);
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0xE000000000000000;
  *(a1 + 64) = 0;
  *(a1 + 72) = v41;
  *(a1 + 80) = v43;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = v44;
  *(a1 + 112) = v45;
  result = 0.0;
  *(a1 + 136) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 152) = 2;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 183) = 0;
  *(a1 + 160) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  return result;
}

uint64_t sub_2690349B0(unsigned __int8 a1)
{
  if (a1 > 2u)
  {
    if (a1 > 4u)
    {
      if (a1 == 5)
      {
        v2 = 0x800000026905E6B0;
        v47 = *(v1 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_dataSource);
        v48 = *(v1 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_dataSource + 8);
        ObjectType = swift_getObjectType();
        v50 = *(v48 + 88);
        v51 = v47;
        v156 = v50(ObjectType, v48);
        v10 = v52;

        if (qword_2802F3248 != -1)
        {
          swift_once();
        }

        v11 = byte_2802F5130;
        v53 = sub_269051B18(byte_2802F5130);
        v158 = 0xD000000000000013;
        v159 = 0x800000026905E6B0;
        MEMORY[0x26D62FBC0](v53);

        v54 = sub_26904DCD8(0, 1, 1, MEMORY[0x277D84F90]);
        v15 = *(v54 + 2);
        v55 = *(v54 + 3);
        v56 = v55 >> 1;
        v17 = v15 + 1;
        if (v55 >> 1 <= v15)
        {
          v54 = sub_26904DCD8((v55 > 1), v15 + 1, 1, v54);
          v55 = *(v54 + 3);
          v56 = v55 >> 1;
        }

        *(v54 + 2) = v17;
        v57 = &v54[16 * v15];
        *(v57 + 4) = 0xD000000000000013;
        *(v57 + 5) = 0x800000026905E6B0;
        v19 = v15 + 2;
        if (v56 < (v15 + 2))
        {
          v54 = sub_26904DCD8((v55 > 1), v15 + 2, 1, v54);
        }

        *(v54 + 2) = v19;
        v58 = &v54[16 * v17];
        *(v58 + 4) = 0xD000000000000013;
        *(v58 + 5) = 0x800000026905E6B0;
        v59 = (v54 + 40);
        v60 = -v15;
        v61 = -1;
        while (v60 + v61 != 1)
        {
          if (++v61 >= *(v54 + 2))
          {
            goto LABEL_109;
          }

          v62 = v59 + 2;
          v63 = *(v59 - 1);
          v15 = *v59;

          v19 = sub_26902F7F4(v63, v15, 0);
          v17 = v64;

          v59 = v62;
          if (v17)
          {
            goto LABEL_78;
          }
        }
      }

      else
      {
        v2 = 0x800000026905E6B0;
        v109 = *(v1 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_dataSource);
        v110 = *(v1 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_dataSource + 8);
        v111 = swift_getObjectType();
        v112 = *(v110 + 88);
        v113 = v109;
        v156 = v112(v111, v110);
        v10 = v114;

        if (qword_2802F3248 != -1)
        {
          swift_once();
        }

        v11 = byte_2802F5130;
        v115 = sub_269051B18(byte_2802F5130);
        v158 = 0xD000000000000013;
        v159 = 0x800000026905E6B0;
        MEMORY[0x26D62FBC0](v115);

        v116 = sub_26904DCD8(0, 1, 1, MEMORY[0x277D84F90]);
        v15 = *(v116 + 2);
        v117 = *(v116 + 3);
        v118 = v117 >> 1;
        v17 = v15 + 1;
        if (v117 >> 1 <= v15)
        {
          v116 = sub_26904DCD8((v117 > 1), v15 + 1, 1, v116);
          v117 = *(v116 + 3);
          v118 = v117 >> 1;
        }

        *(v116 + 2) = v17;
        v119 = &v116[16 * v15];
        *(v119 + 4) = 0xD000000000000013;
        *(v119 + 5) = 0x800000026905E6B0;
        v19 = v15 + 2;
        if (v118 < (v15 + 2))
        {
          v116 = sub_26904DCD8((v117 > 1), v15 + 2, 1, v116);
        }

        *(v116 + 2) = v19;
        v120 = &v116[16 * v17];
        *(v120 + 4) = 0xD000000000000013;
        *(v120 + 5) = 0x800000026905E6B0;
        v121 = (v116 + 40);
        v122 = -v15;
        v123 = -1;
        while (v122 + v123 != 1)
        {
          if (++v123 >= *(v116 + 2))
          {
            goto LABEL_111;
          }

          v124 = v121 + 2;
          v125 = *(v121 - 1);
          v15 = *v121;

          v19 = sub_26902F7F4(v125, v15, 0);
          v17 = v126;

          v121 = v124;
          if (v17)
          {
LABEL_78:

            v2 = v17;
            goto LABEL_88;
          }
        }
      }
    }

    else
    {
      if (a1 == 3)
      {
        v2 = 0x800000026905E6F0;
        v3 = *(v1 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_dataSource);
        v4 = *(v1 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_dataSource + 8);
        v5 = swift_getObjectType();
        v6 = *(v4 + 88);
        v7 = v3;
        v154 = v6(v5, v4);
        v9 = v8;

        if (qword_2802F3248 != -1)
        {
          swift_once();
        }

        v10 = 0xD000000000000013;
        v11 = byte_2802F5130;
        v12 = sub_269051B18(byte_2802F5130);
        v158 = 0xD000000000000014;
        v159 = 0x800000026905E6F0;
        MEMORY[0x26D62FBC0](v12);

        v13 = sub_26904DCD8(0, 1, 1, MEMORY[0x277D84F90]);
        v15 = *(v13 + 2);
        v14 = *(v13 + 3);
        v16 = v14 >> 1;
        v17 = v15 + 1;
        if (v14 >> 1 <= v15)
        {
          v13 = sub_26904DCD8((v14 > 1), v15 + 1, 1, v13);
          v14 = *(v13 + 3);
          v16 = v14 >> 1;
        }

        *(v13 + 2) = v17;
        v18 = &v13[16 * v15];
        *(v18 + 4) = 0xD000000000000014;
        *(v18 + 5) = 0x800000026905E6F0;
        v19 = v15 + 2;
        v156 = v9;
        if (v16 < (v15 + 2))
        {
          v13 = sub_26904DCD8((v14 > 1), v15 + 2, 1, v13);
        }

        *(v13 + 2) = v19;
        v20 = &v13[16 * v17];
        *(v20 + 4) = 0xD000000000000014;
        *(v20 + 5) = 0x800000026905E6F0;
        v21 = (v13 + 40);
        v22 = -v15;
        v23 = -1;
        while (v22 + v23 != 1)
        {
          if (++v23 >= *(v13 + 2))
          {
            goto LABEL_108;
          }

          v24 = v21 + 2;
          v25 = *(v21 - 1);
          v15 = *v21;

          v19 = sub_26902F7F4(v25, v15, 0);
          v17 = v26;

          v21 = v24;
          if (v17)
          {

            v2 = v17;
            v27 = v156;
            if (!v156)
            {
              goto LABEL_103;
            }

            goto LABEL_102;
          }
        }

        sub_269057C54();
        MEMORY[0x26D62FBC0](0xD00000000000002ALL, 0x800000026905BF40);
        MEMORY[0x26D62FBC0](0xD000000000000014, 0x800000026905E6F0);
        MEMORY[0x26D62FBC0](0xD000000000000015, 0x800000026905BF70);
        if (qword_2802F3258 != -1)
        {
          swift_once();
        }

        v142 = sub_269057774();
        __swift_project_value_buffer(v142, qword_2802F3FF8);
        v143 = sub_269057A94();
        v158 = 0xD00000000000003BLL;
        v159 = 0x800000026905BF00;
        v144 = sub_269057764();
        if (os_log_type_enabled(v144, v143))
        {
          v145 = swift_slowAlloc();
          v146 = swift_slowAlloc();
          v157[0] = v146;
          *v145 = 136315138;
          v147 = sub_269010108(0xD00000000000003BLL, 0x800000026905BF00, v157);

          *(v145 + 4) = v147;
          _os_log_impl(&dword_269002000, v144, v143, "%s", v145, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v146);
          MEMORY[0x26D6309D0](v146, -1, -1);
          MEMORY[0x26D6309D0](v145, -1, -1);
        }

        else
        {
        }

        v27 = v156;
        v19 = 0xD000000000000014;
        if (v156)
        {
LABEL_102:
          v19 = sub_26902FAA0(v19, v2, v154, v27);
          v149 = v148;

          v2 = v149;
        }

LABEL_103:
        sub_2690519EC(v11);
        v158 = v19;
        v159 = v2;
        strcpy(v157, "%DEVICE_NAME%");
        HIWORD(v157[1]) = -4864;
        sub_26900BE9C();
        v150 = sub_269057BE4();
        v152 = v151;

        sub_2690519EC(v11);
        v158 = v150;
        v159 = v152;
        v157[0] = 0xD000000000000014;
        v157[1] = 0x800000026905BEA0;
        v65 = sub_269057BE4();

LABEL_104:

        return v65;
      }

      v2 = 0x800000026905E6D0;
      v91 = *(v1 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_dataSource);
      v92 = *(v1 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_dataSource + 8);
      v93 = swift_getObjectType();
      v94 = *(v92 + 88);
      v95 = v91;
      v156 = v94(v93, v92);
      v10 = v96;

      if (qword_2802F3248 != -1)
      {
        swift_once();
      }

      v11 = byte_2802F5130;
      v97 = sub_269051B18(byte_2802F5130);
      v158 = 0xD000000000000013;
      v159 = 0x800000026905E6D0;
      MEMORY[0x26D62FBC0](v97);

      v98 = sub_26904DCD8(0, 1, 1, MEMORY[0x277D84F90]);
      v15 = *(v98 + 2);
      v99 = *(v98 + 3);
      v100 = v99 >> 1;
      v17 = v15 + 1;
      if (v99 >> 1 <= v15)
      {
        v98 = sub_26904DCD8((v99 > 1), v15 + 1, 1, v98);
        v99 = *(v98 + 3);
        v100 = v99 >> 1;
      }

      *(v98 + 2) = v17;
      v101 = &v98[16 * v15];
      *(v101 + 4) = 0xD000000000000013;
      *(v101 + 5) = 0x800000026905E6D0;
      v19 = v15 + 2;
      if (v100 < (v15 + 2))
      {
        v98 = sub_26904DCD8((v99 > 1), v15 + 2, 1, v98);
      }

      *(v98 + 2) = v19;
      v102 = &v98[16 * v17];
      *(v102 + 4) = 0xD000000000000013;
      *(v102 + 5) = 0x800000026905E6D0;
      v103 = (v98 + 40);
      v104 = -v15;
      v105 = -1;
      while (v104 + v105 != 1)
      {
        if (++v105 >= *(v98 + 2))
        {
          goto LABEL_110;
        }

        v106 = v103 + 2;
        v107 = *(v103 - 1);
        v15 = *v103;

        v19 = sub_26902F7F4(v107, v15, 0);
        v17 = v108;

        v103 = v106;
        if (v17)
        {
          goto LABEL_78;
        }
      }
    }

    v15 = 0x800000026905BF00;
    sub_269057C54();
    MEMORY[0x26D62FBC0](0xD00000000000002ALL, 0x800000026905BF40);
    MEMORY[0x26D62FBC0](0xD000000000000013, v2);
    MEMORY[0x26D62FBC0](0xD000000000000015, 0x800000026905BF70);
    v19 = 0;
    v17 = 0xE000000000000000;
    if (qword_2802F3258 != -1)
    {
LABEL_112:
      swift_once();
    }

    v127 = sub_269057774();
    __swift_project_value_buffer(v127, qword_2802F3FF8);
    v128 = sub_269057A94();
    v129 = 0xD00000000000003BLL;
    v158 = 0xD00000000000003BLL;
    v159 = v15;
    v130 = HIBYTE(v17) & 0xF;
    if ((v17 & 0x2000000000000000) == 0)
    {
      v130 = v19 & 0xFFFFFFFFFFFFLL;
    }

    if (v130)
    {
      v157[0] = 32;
      v157[1] = 0xE100000000000000;
      MEMORY[0x26D62FBC0](v19, v17);
      MEMORY[0x26D62FBC0](32, 0xE100000000000000);

      v129 = v158;
      v15 = v159;
    }

    v131 = sub_269057764();
    if (os_log_type_enabled(v131, v128))
    {
      v132 = swift_slowAlloc();
      v133 = swift_slowAlloc();
      v157[0] = v133;
      *v132 = 136315138;
      v134 = sub_269010108(v129, v15, v157);

      *(v132 + 4) = v134;
      _os_log_impl(&dword_269002000, v131, v128, "%s", v132, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v133);
      MEMORY[0x26D6309D0](v133, -1, -1);
      MEMORY[0x26D6309D0](v132, -1, -1);
    }

    else
    {
    }

    v19 = 0xD000000000000013;
LABEL_88:
    if (v10)
    {
      v19 = sub_26902FAA0(v19, v2, v156, v10);
      v136 = v135;

      v2 = v136;
    }

    goto LABEL_103;
  }

  if (a1)
  {
    if (a1 == 1)
    {
      v2 = 0x800000026905E730;
      v28 = *(v1 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_dataSource);
      v29 = *(v1 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_dataSource + 8);
      v30 = swift_getObjectType();
      v31 = *(v29 + 88);
      v32 = v28;
      v155 = v31(v30, v29);
      v34 = v33;

      if (qword_2802F3248 != -1)
      {
        swift_once();
      }

      v11 = byte_2802F5130;
      v35 = sub_269051B18(byte_2802F5130);
      v17 = 0xD000000000000012;
      v158 = 0xD000000000000012;
      v159 = 0x800000026905E730;
      MEMORY[0x26D62FBC0](v35);

      v36 = sub_26904DCD8(0, 1, 1, MEMORY[0x277D84F90]);
      v19 = *(v36 + 2);
      v37 = *(v36 + 3);
      v38 = v37 >> 1;
      v15 = v19 + 1;
      if (v37 >> 1 <= v19)
      {
        v36 = sub_26904DCD8((v37 > 1), v19 + 1, 1, v36);
        v37 = *(v36 + 3);
        v38 = v37 >> 1;
      }

      *(v36 + 2) = v15;
      v39 = &v36[16 * v19];
      *(v39 + 4) = 0xD000000000000012;
      *(v39 + 5) = 0x800000026905E730;
      v10 = v19 + 2;
      v156 = v34;
      if (v38 < (v19 + 2))
      {
        v36 = sub_26904DCD8((v37 > 1), v19 + 2, 1, v36);
      }

      *(v36 + 2) = v10;
      v40 = &v36[16 * v15];
      *(v40 + 4) = 0xD000000000000012;
      *(v40 + 5) = 0x800000026905E730;
      v41 = (v36 + 40);
      v42 = -v19;
      v43 = -1;
      while (v42 + v43 != 1)
      {
        if (++v43 >= *(v36 + 2))
        {
          __break(1u);
          goto LABEL_107;
        }

        v44 = v41 + 2;
        v45 = *(v41 - 1);
        v15 = *v41;

        v10 = sub_26902F7F4(v45, v15, 0);
        v19 = v46;

        v41 = v44;
        if (v19)
        {
          goto LABEL_52;
        }
      }
    }

    else
    {
      v2 = 0x800000026905E710;
      v66 = *(v1 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_dataSource);
      v67 = *(v1 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_dataSource + 8);
      v68 = swift_getObjectType();
      v69 = *(v67 + 88);
      v70 = v66;
      v155 = v69(v68, v67);
      v72 = v71;

      if (qword_2802F3248 != -1)
      {
        swift_once();
      }

      v11 = byte_2802F5130;
      v73 = sub_269051B18(byte_2802F5130);
      v17 = 0xD000000000000012;
      v158 = 0xD000000000000012;
      v159 = 0x800000026905E710;
      MEMORY[0x26D62FBC0](v73);

      v74 = sub_26904DCD8(0, 1, 1, MEMORY[0x277D84F90]);
      v19 = *(v74 + 2);
      v75 = *(v74 + 3);
      v76 = v75 >> 1;
      v15 = v19 + 1;
      if (v75 >> 1 <= v19)
      {
        v74 = sub_26904DCD8((v75 > 1), v19 + 1, 1, v74);
        v75 = *(v74 + 3);
        v76 = v75 >> 1;
      }

      *(v74 + 2) = v15;
      v77 = &v74[16 * v19];
      *(v77 + 4) = 0xD000000000000012;
      *(v77 + 5) = 0x800000026905E710;
      v10 = v19 + 2;
      v156 = v72;
      if (v76 < (v19 + 2))
      {
        v74 = sub_26904DCD8((v75 > 1), v19 + 2, 1, v74);
      }

      *(v74 + 2) = v10;
      v78 = &v74[16 * v15];
      *(v78 + 4) = 0xD000000000000012;
      *(v78 + 5) = 0x800000026905E710;
      v79 = (v74 + 40);
      v80 = -v19;
      v81 = -1;
      while (v80 + v81 != 1)
      {
        if (++v81 >= *(v74 + 2))
        {
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
          goto LABEL_112;
        }

        v82 = v79 + 2;
        v83 = *(v79 - 1);
        v15 = *v79;

        v10 = sub_26902F7F4(v83, v15, 0);
        v19 = v84;

        v79 = v82;
        if (v19)
        {
LABEL_52:

          v17 = v10;
          v2 = v19;
          goto LABEL_93;
        }
      }
    }

    sub_269057C54();
    MEMORY[0x26D62FBC0](0xD00000000000002ALL, 0x800000026905BF40);
    MEMORY[0x26D62FBC0](0xD000000000000012, v2);
    MEMORY[0x26D62FBC0](0xD000000000000015, 0x800000026905BF70);
    if (qword_2802F3258 != -1)
    {
      swift_once();
    }

    v85 = sub_269057774();
    __swift_project_value_buffer(v85, qword_2802F3FF8);
    v86 = sub_269057A94();
    v158 = 0xD00000000000003BLL;
    v159 = 0x800000026905BF00;
    v87 = sub_269057764();
    if (os_log_type_enabled(v87, v86))
    {
      v88 = swift_slowAlloc();
      v89 = swift_slowAlloc();
      v157[0] = v89;
      *v88 = 136315138;
      v90 = sub_269010108(0xD00000000000003BLL, 0x800000026905BF00, v157);

      *(v88 + 4) = v90;
      _os_log_impl(&dword_269002000, v87, v86, "%s", v88, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v89);
      MEMORY[0x26D6309D0](v89, -1, -1);
      MEMORY[0x26D6309D0](v88, -1, -1);
    }

    else
    {
    }

LABEL_93:
    if (v156)
    {
      v17 = sub_26902FAA0(v17, v2, v155, v156);
      v138 = v137;

      v2 = v138;
    }

    sub_2690519EC(v11);
    v158 = v17;
    v159 = v2;
    strcpy(v157, "%DEVICE_NAME%");
    HIWORD(v157[1]) = -4864;
    sub_26900BE9C();
    v139 = sub_269057BE4();
    v141 = v140;

    sub_2690519EC(v11);
    v158 = v139;
    v159 = v141;
    v157[0] = 0xD000000000000014;
    v157[1] = 0x800000026905BEA0;
    v65 = sub_269057BE4();

    goto LABEL_104;
  }

  return a1;
}

uint64_t sub_269035EE0()
{
  v1[5] = v0;
  v2 = sub_2690576E4();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_269035FA0, 0, 0);
}

uint64_t sub_269035FA0(uint64_t a1)
{
  v21 = v1;
  v3 = v1[7];
  v2 = v1[8];
  v5 = v1[5];
  v4 = v1[6];
  *(v5 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_isCanceled) = 0;
  sub_2690576D4();
  v6 = OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_voiceEnrollmentLoggingId;
  swift_beginAccess();
  (*(v3 + 40))(v5 + v6, v2, v4);
  swift_endAccess();
  sub_269057C54();

  v19 = 0xD000000000000028;
  v20 = 0x800000026905E960;
  (*(v3 + 16))(v2, v5 + v6, v4);
  sub_269041A0C(&qword_2802F3E58, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v7 = sub_269057DA4();
  MEMORY[0x26D62FBC0](v7);

  (*(v3 + 8))(v2, v4);
  MEMORY[0x26D62FBC0](32, 0xE100000000000000);
  if (qword_2802F3258 != -1)
  {
    swift_once();
  }

  v8 = sub_269057774();
  __swift_project_value_buffer(v8, qword_2802F3FF8);
  v9 = sub_269057AA4();
  v10 = (0x800000026905E960 >> 56) & 0xF;
  if ((0x800000026905E960 & 0x2000000000000000) == 0)
  {
    v10 = 40;
  }

  if (v10)
  {
    v19 = 32;
    v20 = 0xE100000000000000;
    MEMORY[0x26D62FBC0](0xD000000000000028, 0x800000026905E960);
    MEMORY[0x26D62FBC0](32, 0xE100000000000000);
  }

  v11 = sub_269057764();
  if (os_log_type_enabled(v11, v9))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v19 = v13;
    *v12 = 136315138;
    v14 = sub_269010108(0x6172547472617473, 0xEF2928676E696E69, &v19);

    *(v12 + 4) = v14;
    _os_log_impl(&dword_269002000, v11, v9, "%s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x26D6309D0](v13, -1, -1);
    MEMORY[0x26D6309D0](v12, -1, -1);
  }

  else
  {
  }

  if (qword_2802F3228 != -1)
  {
    swift_once();
  }

  if (qword_2802F3220 != -1)
  {
    swift_once();
  }

  v15 = [objc_opt_self() sharedAnalytics];
  if (v15)
  {
    v16 = v15;
    [v15 logEventWithType:3302 context:0];
  }

  sub_269040100();
  sub_269036614();
  v17 = swift_task_alloc();
  v1[9] = v17;
  *v17 = v1;
  v17[1] = sub_2690363C0;

  return sub_269033FF4();
}

uint64_t sub_2690363C0()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 80) = v3;
  *v3 = v2;
  v3[1] = sub_269036504;

  return sub_2690366E4(0);
}

uint64_t sub_269036504()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

id sub_269036614()
{
  if (qword_2802F3220 != -1)
  {
    swift_once();
  }

  v1 = [objc_opt_self() currentCoordinator];
  if (!v1)
  {
    v1 = [objc_allocWithZone(MEMORY[0x277D55AF8]) initWithDelegate_];
  }

  v2 = *(v0 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_scdaCoordinator);
  *(v0 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_scdaCoordinator) = v1;

  result = *(v0 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_scdaCoordinator);
  if (result)
  {

    return [result setupEnabled_];
  }

  return result;
}

uint64_t sub_2690366E4(char a1)
{
  *(v2 + 256) = v1;
  *(v2 + 163) = a1;
  v3 = sub_269057C94();
  *(v2 + 264) = v3;
  *(v2 + 272) = *(v3 - 8);
  *(v2 + 280) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2690367A8, 0, 0);
}

uint64_t sub_2690367A8()
{
  v53 = v0;
  v1 = *(v0 + 256);
  v2 = OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_isCanceled;
  *(v0 + 288) = OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_isCanceled;
  if (*(v1 + v2))
  {
LABEL_49:

    v48 = *(v0 + 8);

    return v48();
  }

  *(v0 + 168) = 0;
  *(v0 + 176) = 0xE000000000000000;
  v3 = OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_trainingState;
  *(v0 + 296) = OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_trainingState;
  v50 = v3;
  *(v0 + 161) = *(v1 + v3);
  v4 = *(v0 + 163);
  sub_269057CB4();
  MEMORY[0x26D62FBC0](0x7274657220736920, 0xEA00000000003A79);
  if (v4)
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (v4)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  MEMORY[0x26D62FBC0](v5, v6);

  v7 = *(v0 + 168);
  v8 = *(v0 + 176);
  if (qword_2802F3258 != -1)
  {
    swift_once();
  }

  v9 = sub_269057774();
  *(v0 + 304) = __swift_project_value_buffer(v9, qword_2802F3FF8);
  v10 = sub_269057AA4();
  v11 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v11 = v7 & 0xFFFFFFFFFFFFLL;
  }

  if (v11)
  {
    v51 = 32;
    v52 = 0xE100000000000000;
    MEMORY[0x26D62FBC0](v7, v8);
    MEMORY[0x26D62FBC0](32, 0xE100000000000000);
  }

  v12 = sub_269057764();
  if (os_log_type_enabled(v12, v10))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v51 = v14;
    *v13 = 136315138;
    v15 = sub_269010108(0xD000000000000025, 0x800000026905E990, &v51);

    *(v13 + 4) = v15;
    _os_log_impl(&dword_269002000, v12, v10, "%s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    MEMORY[0x26D6309D0](v14, -1, -1);
    MEMORY[0x26D6309D0](v13, -1, -1);
  }

  else
  {
  }

  if (*(v1 + v50))
  {
    if (*(v1 + v2))
    {
      goto LABEL_19;
    }
  }

  else
  {
    sub_269038C34(0, *(v0 + 163));
    if (*(v1 + v2))
    {
LABEL_19:
      v16 = sub_269057AA4();
      if ((" audio guide step" & 0x2F00000000000000) != 0x2000000000000000)
      {
        v51 = 32;
        v52 = 0xE100000000000000;
        MEMORY[0x26D62FBC0](0xD000000000000034, 0x800000026905EAA0);
        MEMORY[0x26D62FBC0](v51, v52);
      }

      v17 = sub_269057764();
      if (os_log_type_enabled(v17, v16))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v51 = v19;
        *v18 = 136315138;
        v20 = sub_269010108(0xD000000000000025, 0x800000026905E990, &v51);

        *(v18 + 4) = v20;
        _os_log_impl(&dword_269002000, v17, v16, "%s", v18, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v19);
        v21 = v19;
LABEL_23:
        MEMORY[0x26D6309D0](v21, -1, -1);
        MEMORY[0x26D6309D0](v18, -1, -1);

        goto LABEL_49;
      }

      goto LABEL_48;
    }
  }

  if (*(v0 + 163))
  {
    v22 = *(v0 + 256);
    v23 = *(v1 + v50);
    if (*(v22 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_lastPlayedTryAgain) != v23)
    {
      *(v22 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_lastPlayedTryAgain) = v23;
      v24 = *(v22 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_trainingManager);
      if (v24)
      {
        [v24 playSoundsEffect_];
      }
    }

    v25 = *(v0 + 296);
    v26 = *(v0 + 256);
    sub_269038C34(*(v26 + v25), *(v0 + 163));
    v27 = *(v26 + v25);
    if (v27 == 6)
    {
      v28 = swift_task_alloc();
      *(v0 + 320) = v28;
      *v28 = v0;
      v28[1] = sub_2690376C8;

      return sub_269038F08();
    }

    else
    {
      v34 = sub_2690349B0(v27);
      sub_269040398(v27, v34, v35);

      v36 = sub_269057AA4();
      if (("(retryCurrentPhrase:)" & 0x2F00000000000000) != 0x2000000000000000)
      {
        v51 = 32;
        v52 = 0xE100000000000000;
        MEMORY[0x26D62FBC0](0xD000000000000027, 0x800000026905E9C0);
        MEMORY[0x26D62FBC0](v51, v52);
      }

      v37 = sub_269057764();
      if (os_log_type_enabled(v37, v36))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v51 = v39;
        *v38 = 136315138;
        v40 = sub_269010108(0xD000000000000025, 0x800000026905E990, &v51);

        *(v38 + 4) = v40;
        _os_log_impl(&dword_269002000, v37, v36, "%s", v38, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v39);
        MEMORY[0x26D6309D0](v39, -1, -1);
        MEMORY[0x26D6309D0](v38, -1, -1);
      }

      else
      {
      }

      v42 = *(v0 + 256);
      v43 = OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_scdaCoordinator;
      *(v0 + 328) = OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_scdaCoordinator;
      v44 = *(v42 + v43);
      if (v44)
      {
        LODWORD(v41) = 20.0;
        [v44 startAdvertisingForPHSSetupAfterDelay:0.0 maxInterval:v41];
        v42 = *(v0 + 256);
      }

      if (*(v42 + *(v0 + 288)))
      {
        v45 = sub_269057AA4();
        if (("utterance trained. success: " & 0x2F00000000000000) != 0x2000000000000000)
        {
          v51 = 32;
          v52 = 0xE100000000000000;
          MEMORY[0x26D62FBC0](0xD000000000000031, 0x800000026905EA60);
          MEMORY[0x26D62FBC0](v51, v52);
        }

        v17 = sub_269057764();
        if (os_log_type_enabled(v17, v45))
        {
          v18 = swift_slowAlloc();
          v46 = swift_slowAlloc();
          v51 = v46;
          *v18 = 136315138;
          v47 = sub_269010108(0xD000000000000025, 0x800000026905E990, &v51);

          *(v18 + 4) = v47;
          _os_log_impl(&dword_269002000, v17, v45, "%s", v18, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v46);
          v21 = v46;
          goto LABEL_23;
        }

LABEL_48:

        goto LABEL_49;
      }

      v49 = swift_task_alloc();
      *(v0 + 336) = v49;
      *v49 = v0;
      v49[1] = sub_2690377D8;

      return sub_26903950C();
    }
  }

  else
  {
    *(v1 + v50) = sub_269044E6C(*(v1 + v50));
    v30 = sub_269057EB4();
    v32 = v31;
    sub_269057E34();
    v33 = swift_task_alloc();
    *(v0 + 312) = v33;
    *v33 = v0;
    v33[1] = sub_2690370BC;

    return sub_26903F62C(v30, v32, 0, 0, 1);
  }
}

uint64_t sub_2690370BC()
{
  v2 = *v1;

  v3 = v2[35];
  v4 = v2[34];
  v5 = v2[33];
  if (v0)
  {

    (*(v4 + 8))(v3, v5);
    v6 = sub_269041A88;
  }

  else
  {
    (*(v4 + 8))(v3, v5);
    v6 = sub_269037254;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_269037254()
{
  v26 = v0;
  v1 = *(v0 + 296);
  v2 = *(v0 + 256);
  sub_269038C34(*(v2 + v1), *(v0 + 163));
  v3 = *(v2 + v1);
  if (v3 == 6)
  {
    v4 = swift_task_alloc();
    *(v0 + 320) = v4;
    *v4 = v0;
    v4[1] = sub_2690376C8;

    return sub_269038F08();
  }

  else
  {
    v6 = sub_2690349B0(v3);
    sub_269040398(v3, v6, v7);

    v8 = sub_269057AA4();
    if (("(retryCurrentPhrase:)" & 0x2F00000000000000) != 0x2000000000000000)
    {
      v24 = 32;
      v25 = 0xE100000000000000;
      MEMORY[0x26D62FBC0](0xD000000000000027, 0x800000026905E9C0);
      MEMORY[0x26D62FBC0](32, 0xE100000000000000);
    }

    v9 = sub_269057764();
    if (os_log_type_enabled(v9, v8))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v24 = v11;
      *v10 = 136315138;
      v12 = sub_269010108(0xD000000000000025, 0x800000026905E990, &v24);

      *(v10 + 4) = v12;
      _os_log_impl(&dword_269002000, v9, v8, "%s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
      MEMORY[0x26D6309D0](v11, -1, -1);
      MEMORY[0x26D6309D0](v10, -1, -1);
    }

    else
    {
    }

    v14 = *(v0 + 256);
    v15 = OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_scdaCoordinator;
    *(v0 + 328) = OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_scdaCoordinator;
    v16 = *(v14 + v15);
    if (v16)
    {
      LODWORD(v13) = 20.0;
      [v16 startAdvertisingForPHSSetupAfterDelay:0.0 maxInterval:v13];
      v14 = *(v0 + 256);
    }

    if (*(v14 + *(v0 + 288)))
    {
      v17 = sub_269057AA4();
      if (("utterance trained. success: " & 0x2F00000000000000) != 0x2000000000000000)
      {
        v24 = 32;
        v25 = 0xE100000000000000;
        MEMORY[0x26D62FBC0](0xD000000000000031, 0x800000026905EA60);
        MEMORY[0x26D62FBC0](v24, v25);
      }

      v18 = sub_269057764();
      if (os_log_type_enabled(v18, v17))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v24 = v20;
        *v19 = 136315138;
        v21 = sub_269010108(0xD000000000000025, 0x800000026905E990, &v24);

        *(v19 + 4) = v21;
        _os_log_impl(&dword_269002000, v18, v17, "%s", v19, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v20);
        MEMORY[0x26D6309D0](v20, -1, -1);
        MEMORY[0x26D6309D0](v19, -1, -1);
      }

      else
      {
      }

      v23 = *(v0 + 8);

      return v23();
    }

    else
    {
      v22 = swift_task_alloc();
      *(v0 + 336) = v22;
      *v22 = v0;
      v22[1] = sub_2690377D8;

      return sub_26903950C();
    }
  }
}

uint64_t sub_2690376C8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2690377D8()
{

  return MEMORY[0x2822009F8](sub_2690378D4, 0, 0);
}

uint64_t sub_2690378D4()
{
  v56 = v0;
  v1 = *(v0 + 296);
  v2 = *(v0 + 256);
  v54 = 0;
  v55 = 0xE000000000000000;
  sub_269057C54();
  *(v0 + 184) = 0;
  *(v0 + 192) = 0xE000000000000000;
  MEMORY[0x26D62FBC0](0xD000000000000018, 0x800000026905E9F0);
  *(v0 + 162) = *(v2 + v1);
  sub_269057CB4();
  MEMORY[0x26D62FBC0](0xD000000000000013, 0x800000026905EA10);
  *(v0 + 216) = mach_absolute_time();
  v3 = sub_269057DA4();
  MEMORY[0x26D62FBC0](v3);

  v4 = *(v0 + 184);
  v5 = *(v0 + 192);
  v6 = sub_269057AA4();
  v7 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v7 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (v7)
  {
    v54 = 32;
    v55 = 0xE100000000000000;
    MEMORY[0x26D62FBC0](v4, v5);
    MEMORY[0x26D62FBC0](32, 0xE100000000000000);
  }

  v8 = sub_269057764();
  if (os_log_type_enabled(v8, v6))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v54 = v10;
    *v9 = 136315138;
    v11 = sub_269010108(0xD000000000000025, 0x800000026905E990, &v54);

    *(v9 + 4) = v11;
    _os_log_impl(&dword_269002000, v8, v6, "%s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x26D6309D0](v10, -1, -1);
    MEMORY[0x26D6309D0](v9, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 256);
  v13 = OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_trainingManager;
  *(v0 + 344) = OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_trainingManager;
  v14 = *(v12 + v13);
  v15 = v12;
  if (v14)
  {
    v16 = v14;
    [v16 setRecordingStartHostTime_];

    v15 = *(v0 + 256);
  }

  v17 = OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_viewController;
  *(v0 + 352) = OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_viewController;
  v18 = (v15 + v17);
  v19 = *v18;
  if (*v18)
  {
    v20 = v18[2];
    ObjectType = swift_getObjectType();
    *(v0 + 224) = v19;
    (*(v20 + 8))(ObjectType, v20);
  }

  v22 = *(v12 + v13);
  if (v22)
  {
    [v22 startRMS];
    v23 = *(v12 + v13);
    *(v0 + 360) = v23;
    v24 = *(v0 + 256);
    if (v23)
    {
      v25 = *(v24 + *(v0 + 296));
      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 144;
      *(v0 + 24) = sub_269038094;
      v26 = swift_continuation_init();
      *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F3E60, &qword_26905B138);
      *(v0 + 80) = MEMORY[0x277D85DD0];
      *(v0 + 88) = 1107296256;
      *(v0 + 96) = sub_269039BB0;
      *(v0 + 104) = &block_descriptor_82;
      *(v0 + 112) = v26;
      [v23 trainUtterance:v25 shouldUseASR:1 completion:v0 + 80];

      return MEMORY[0x282200938](v0 + 16);
    }
  }

  else
  {
    v24 = *(v0 + 256);
  }

  if (*(v24 + *(v0 + 288)))
  {

    v27 = *(v0 + 8);

    return v27();
  }

  else
  {
    v54 = 0;
    v55 = 0xE000000000000000;
    sub_269057C54();
    v28 = v55;
    *(v0 + 200) = v54;
    *(v0 + 208) = v28;
    MEMORY[0x26D62FBC0](0xD00000000000001CLL, 0x800000026905EA40);
    MEMORY[0x26D62FBC0](0x65736C6166, 0xE500000000000000);

    MEMORY[0x26D62FBC0](0x737574617473202CLL, 0xEA0000000000203ALL);
    *(v0 + 232) = 3;
    type metadata accessor for SRSTrainingManagerSessionStatus(0);
    sub_269057CB4();
    MEMORY[0x26D62FBC0](0x6F6973736573202CLL, 0xED0000203A44496ELL);
    *(v0 + 240) = 0;
    v29 = sub_269057DA4();
    MEMORY[0x26D62FBC0](v29);

    v31 = *(v0 + 200);
    v30 = *(v0 + 208);
    v32 = sub_269057AA4();
    v33 = HIBYTE(v30) & 0xF;
    if ((v30 & 0x2000000000000000) == 0)
    {
      v33 = v31 & 0xFFFFFFFFFFFFLL;
    }

    if (v33)
    {
      v54 = 32;
      v55 = 0xE100000000000000;
      MEMORY[0x26D62FBC0](v31, v30);
      MEMORY[0x26D62FBC0](v54, v55);
    }

    v34 = sub_269057764();
    if (os_log_type_enabled(v34, v32))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v54 = v36;
      *v35 = 136315138;
      v37 = sub_269010108(0xD000000000000025, 0x800000026905E990, &v54);

      *(v35 + 4) = v37;
      _os_log_impl(&dword_269002000, v34, v32, "%s", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v36);
      MEMORY[0x26D6309D0](v36, -1, -1);
      MEMORY[0x26D6309D0](v35, -1, -1);
    }

    else
    {
    }

    v39 = *(v0 + 328);
    v40 = *(v0 + 256);
    *(v40 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_trainingSessionId) = 0;
    v41 = *(v40 + v39);
    if (v41)
    {
      LODWORD(v38) = 0.5;
      [v41 endAdvertisingAfterDelay_];
    }

    v42 = *(v0 + 256);
    v43 = *(v42 + *(v0 + 344));
    if (v43)
    {
      [v43 stopRMS];
      v42 = *(v0 + 256);
    }

    v44 = (v42 + *(v0 + 352));
    v45 = *v44;
    if (*v44)
    {
      v46 = v44[2];
      v47 = swift_getObjectType();
      *(v0 + 248) = v45;
      (*(v46 + 16))(v47, v46);
      v42 = *(v0 + 256);
    }

    v48 = *(v42 + *(v0 + 296));
    v49 = sub_2690349B0(v48);
    v51 = v50;
    *(v0 + 368) = v50;
    v52 = swift_task_alloc();
    *(v0 + 376) = v52;
    *v52 = v0;
    v52[1] = sub_2690385A8;

    return sub_26904059C(3, v48, v49, v51);
  }
}

uint64_t sub_269038094()
{

  return MEMORY[0x2822009F8](sub_269038174, 0, 0);
}

uint64_t sub_269038174()
{
  v34 = v0;
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  v3 = *(v0 + 160);

  if (*(*(v0 + 256) + *(v0 + 288)))
  {

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v32 = 0;
    v33 = 0xE000000000000000;
    sub_269057C54();
    *(v0 + 200) = 0;
    *(v0 + 208) = 0xE000000000000000;
    MEMORY[0x26D62FBC0](0xD00000000000001CLL, 0x800000026905EA40);
    if (v3)
    {
      v6 = 1702195828;
    }

    else
    {
      v6 = 0x65736C6166;
    }

    if (v3)
    {
      v7 = 0xE400000000000000;
    }

    else
    {
      v7 = 0xE500000000000000;
    }

    MEMORY[0x26D62FBC0](v6, v7);

    MEMORY[0x26D62FBC0](0x737574617473202CLL, 0xEA0000000000203ALL);
    *(v0 + 232) = v1;
    type metadata accessor for SRSTrainingManagerSessionStatus(0);
    sub_269057CB4();
    MEMORY[0x26D62FBC0](0x6F6973736573202CLL, 0xED0000203A44496ELL);
    *(v0 + 240) = v2;
    v8 = sub_269057DA4();
    MEMORY[0x26D62FBC0](v8);

    v9 = *(v0 + 200);
    v10 = *(v0 + 208);
    v11 = sub_269057AA4();
    v12 = HIBYTE(v10) & 0xF;
    if ((v10 & 0x2000000000000000) == 0)
    {
      v12 = v9 & 0xFFFFFFFFFFFFLL;
    }

    if (v12)
    {
      v32 = 32;
      v33 = 0xE100000000000000;
      MEMORY[0x26D62FBC0](v9, v10);
      MEMORY[0x26D62FBC0](32, 0xE100000000000000);
    }

    v13 = sub_269057764();
    if (os_log_type_enabled(v13, v11))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v32 = v15;
      *v14 = 136315138;
      v16 = sub_269010108(0xD000000000000025, 0x800000026905E990, &v32);

      *(v14 + 4) = v16;
      _os_log_impl(&dword_269002000, v13, v11, "%s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v15);
      MEMORY[0x26D6309D0](v15, -1, -1);
      MEMORY[0x26D6309D0](v14, -1, -1);
    }

    else
    {
    }

    v18 = *(v0 + 328);
    v19 = *(v0 + 256);
    *(v19 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_trainingSessionId) = v2;
    v20 = *(v19 + v18);
    if (v20)
    {
      LODWORD(v17) = 0.5;
      [v20 endAdvertisingAfterDelay_];
    }

    v21 = *(v0 + 256);
    v22 = *(v21 + *(v0 + 344));
    if (v22)
    {
      [v22 stopRMS];
      v21 = *(v0 + 256);
    }

    v23 = (v21 + *(v0 + 352));
    v24 = *v23;
    if (*v23)
    {
      v25 = v23[2];
      ObjectType = swift_getObjectType();
      *(v0 + 248) = v24;
      (*(v25 + 16))(ObjectType, v25);
      v21 = *(v0 + 256);
    }

    v27 = *(v21 + *(v0 + 296));
    v28 = sub_2690349B0(v27);
    v30 = v29;
    *(v0 + 368) = v29;
    v31 = swift_task_alloc();
    *(v0 + 376) = v31;
    *v31 = v0;
    v31[1] = sub_2690385A8;

    return sub_26904059C(v1, v27, v28, v30);
  }
}

uint64_t sub_2690385A8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2690386DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v5[2] = sub_269057A44();
  v5[3] = sub_269057A34();
  v7 = swift_task_alloc();
  v5[4] = v7;
  *v7 = v5;
  v7[1] = sub_269038798;

  return sub_2690366E4(a5);
}

uint64_t sub_269038798()
{

  v1 = sub_269057A14();

  return MEMORY[0x2822009F8](sub_2690388D4, v1, v0);
}

uint64_t sub_2690388D4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_269038934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F3868, &qword_26905A590);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_269041944(a3, v25 - v10, &qword_2802F3868, &qword_26905A590);
  v12 = sub_269057A64();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_2690419AC(v11, &qword_2802F3868, &qword_26905A590);
  }

  else
  {
    sub_269057A54();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_269057A14();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_269057974() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_2690419AC(a3, &qword_2802F3868, &qword_26905A590);

      return v23;
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

  sub_2690419AC(a3, &qword_2802F3868, &qword_26905A590);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_269038C34(char a1, char a2)
{
  v5 = sub_269057874();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2690578A4();
  v9 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26900A408(0, &qword_2802F3E00, 0x277D85C78);
  v12 = sub_269057B34();
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = v2;
  *(v13 + 32) = a2;
  aBlock[4] = sub_26903FFF4;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26900BEF0;
  aBlock[3] = &block_descriptor_40_0;
  v14 = _Block_copy(aBlock);
  v15 = v2;

  sub_269057884();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_269041A0C(&qword_2802F3420, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802F3E10, &unk_269059E90);
  sub_26900A4E8();
  sub_269057C14();
  MEMORY[0x26D62FD80](0, v11, v8, v14);
  _Block_release(v14);

  (*(v6 + 8))(v8, v5);
  return (*(v9 + 8))(v11, v18);
}

uint64_t sub_269038F28()
{
  v20 = v0;
  if (qword_2802F3258 != -1)
  {
    swift_once();
  }

  v1 = sub_269057774();
  __swift_project_value_buffer(v1, qword_2802F3FF8);
  v2 = sub_269057AA4();
  if (("trainingCompleted()" & 0x2F00000000000000) != 0x2000000000000000)
  {
    v19[0] = 32;
    v19[1] = 0xE100000000000000;
    MEMORY[0x26D62FBC0](0xD000000000000019, 0x800000026905EB00);
    MEMORY[0x26D62FBC0](32, 0xE100000000000000);
  }

  v3 = sub_269057764();
  if (os_log_type_enabled(v3, v2))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v19[0] = v5;
    *v4 = 136315138;
    v6 = sub_269010108(0xD000000000000013, 0x800000026905EAE0, v19);

    *(v4 + 4) = v6;
    _os_log_impl(&dword_269002000, v3, v2, "%s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x26D6309D0](v5, -1, -1);
    MEMORY[0x26D6309D0](v4, -1, -1);
  }

  else
  {
  }

  if (qword_2802F3228 != -1)
  {
    swift_once();
  }

  if (qword_2802F3220 != -1)
  {
    swift_once();
  }

  v7 = [objc_opt_self() sharedAnalytics];
  if (v7)
  {
    v8 = v7;
    [v7 logEventWithType:3303 context:0];
  }

  v9 = *(v0 + 16) + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_dataSource;
  v11 = *v9;
  v10 = *(v9 + 8);
  ObjectType = swift_getObjectType();
  v13 = *(v10 + 32);
  v14 = v11;
  v13(v19, ObjectType, v10);

  if (LOBYTE(v19[0]) == 2)
  {

    v15 = 45;
  }

  else
  {
    v16 = sub_269057DE4();

    if (v16)
    {
      v15 = 45;
    }

    else
    {
      v15 = 44;
    }
  }

  sub_269025608(v15);
  sub_269038C34(6, 0);
  sub_26903BA04();
  sub_26903BA88(1);
  v17 = swift_task_alloc();
  *(v0 + 24) = v17;
  *v17 = v0;
  v17[1] = sub_269039344;

  return MEMORY[0x282200480](500000000);
}

uint64_t sub_269039344()
{

  if (v0)
  {

    v1 = sub_269041AB0;
  }

  else
  {
    v1 = sub_26903945C;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_26903945C()
{
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_26903C620(sub_2690416D8, v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_26903952C()
{
  v28 = v0;
  v1 = *(v0 + 48);
  v2 = OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_currentAnimationCompleted;
  *(v0 + 56) = OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_currentAnimationCompleted;
  if (*(v1 + v2))
  {
    v26 = 0;
    v27 = 0xE000000000000000;
    sub_269057C54();
    *(v0 + 32) = 0;
    *(v0 + 40) = 0xE000000000000000;
    MEMORY[0x26D62FBC0](0xD000000000000020, 0x800000026905EC90);
    *(v0 + 81) = *(v1 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_trainingState);
    sub_269057CB4();
    v3 = *(v0 + 32);
    v4 = *(v0 + 40);
    if (qword_2802F3258 != -1)
    {
      swift_once();
    }

    v5 = sub_269057774();
    __swift_project_value_buffer(v5, qword_2802F3FF8);
    v6 = sub_269057AA4();
    v7 = HIBYTE(v4) & 0xF;
    if ((v4 & 0x2000000000000000) == 0)
    {
      v7 = v3 & 0xFFFFFFFFFFFFLL;
    }

    if (v7)
    {
      v26 = 32;
      v27 = 0xE100000000000000;
      MEMORY[0x26D62FBC0](v3, v4);
      MEMORY[0x26D62FBC0](32, 0xE100000000000000);
    }

    v8 = sub_269057764();
    if (os_log_type_enabled(v8, v6))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v26 = v10;
      *v9 = 136315138;
      v11 = sub_269010108(0xD00000000000001CLL, 0x800000026905EC40, &v26);

      *(v9 + 4) = v11;
      _os_log_impl(&dword_269002000, v8, v6, "%s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
      MEMORY[0x26D6309D0](v10, -1, -1);
      MEMORY[0x26D6309D0](v9, -1, -1);
    }

    else
    {
    }

    v17 = *(v0 + 8);

    return v17();
  }

  else
  {
    v26 = 0;
    v27 = 0xE000000000000000;
    sub_269057C54();
    *(v0 + 16) = 0;
    *(v0 + 24) = 0xE000000000000000;
    MEMORY[0x26D62FBC0](0xD000000000000026, 0x800000026905EC60);
    *(v0 + 80) = *(v1 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_trainingState);
    sub_269057CB4();
    v12 = *(v0 + 16);
    v13 = *(v0 + 24);
    if (qword_2802F3258 != -1)
    {
      swift_once();
    }

    v14 = sub_269057774();
    __swift_project_value_buffer(v14, qword_2802F3FF8);
    v15 = sub_269057AA4();
    v16 = HIBYTE(v13) & 0xF;
    if ((v13 & 0x2000000000000000) == 0)
    {
      v16 = v12 & 0xFFFFFFFFFFFFLL;
    }

    if (v16)
    {
      v26 = 32;
      v27 = 0xE100000000000000;
      MEMORY[0x26D62FBC0](v12, v13);
      MEMORY[0x26D62FBC0](32, 0xE100000000000000);
    }

    v19 = sub_269057764();
    if (os_log_type_enabled(v19, v15))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v26 = v21;
      *v20 = 136315138;
      v22 = sub_269010108(0xD00000000000001CLL, 0x800000026905EC40, &v26);

      *(v20 + 4) = v22;
      _os_log_impl(&dword_269002000, v19, v15, "%s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
      MEMORY[0x26D6309D0](v21, -1, -1);
      MEMORY[0x26D6309D0](v20, -1, -1);
    }

    else
    {
    }

    v23 = *(v0 + 48);
    v24 = swift_task_alloc();
    *(v0 + 64) = v24;
    *(v24 + 16) = v23;
    v25 = swift_task_alloc();
    *(v0 + 72) = v25;
    *v25 = v0;
    v25[1] = sub_269039A7C;

    return MEMORY[0x2822007B8]();
  }
}

uint64_t sub_269039A7C()
{

  return MEMORY[0x2822009F8](sub_269039B94, 0, 0);
}

uint64_t sub_269039BB0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = *(*(*__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56)) + 64) + 40);
  *v7 = a2;
  *(v7 + 8) = a3;
  *(v7 + 16) = a4;

  return MEMORY[0x282200948]();
}

uint64_t sub_269039C20(char a1, uint64_t a2, uint64_t a3)
{
  v17 = a2;
  v5 = sub_269057874();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2690578A4();
  v9 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26900A408(0, &qword_2802F3E00, 0x277D85C78);
  v12 = sub_269057B34();
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = a1;
  *(v14 + 32) = v17;
  *(v14 + 40) = a3;
  aBlock[4] = sub_269041820;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26900BEF0;
  aBlock[3] = &block_descriptor_108;
  v15 = _Block_copy(aBlock);

  sub_269057884();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_269041A0C(&qword_2802F3420, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802F3E10, &unk_269059E90);
  sub_26900A4E8();
  sub_269057C14();
  MEMORY[0x26D62FD80](0, v11, v8, v15);
  _Block_release(v15);

  (*(v6 + 8))(v8, v5);
  return (*(v9 + 8))(v11, v18);
}

void sub_269039F24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F3868, &qword_26905A590);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = sub_269057A64();
    (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
    sub_269057A44();
    v10 = v8;
    v11 = sub_269057A34();
    v12 = swift_allocObject();
    v13 = MEMORY[0x277D85700];
    *(v12 + 16) = v11;
    *(v12 + 24) = v13;
    *(v12 + 32) = v10;
    *(v12 + 40) = 0;
    sub_269038934(0, 0, v6, a3, v12);
  }
}

double sub_26903A078(char a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F3868, &qword_26905A590);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v20 - v5;
  if ((*(v1 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_isCanceled) & 1) == 0)
  {
    v7 = 0x800000026905E580;
    if (qword_2802F3258 != -1)
    {
      swift_once();
    }

    v8 = 0xD00000000000001DLL;
    v9 = sub_269057774();
    __swift_project_value_buffer(v9, qword_2802F3FF8);
    v10 = sub_269057AA4();
    v22 = 0xD00000000000001DLL;
    v23 = 0x800000026905E580;
    if (("skipTraining(notifyDelegate:)" & 0x2F00000000000000) != 0x2000000000000000)
    {
      v20 = 32;
      v21 = 0xE100000000000000;
      MEMORY[0x26D62FBC0](0xD000000000000016, 0x800000026905E5A0);
      MEMORY[0x26D62FBC0](v20, v21);

      v8 = v22;
      v7 = v23;
    }

    v11 = sub_269057764();
    if (os_log_type_enabled(v11, v10))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v20 = v13;
      *v12 = 136315138;
      v14 = sub_269010108(v8, v7, &v20);

      *(v12 + 4) = v14;
      _os_log_impl(&dword_269002000, v11, v10, "%s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      MEMORY[0x26D6309D0](v13, -1, -1);
      MEMORY[0x26D6309D0](v12, -1, -1);
    }

    else
    {
    }

    if (qword_2802F3228 != -1)
    {
      swift_once();
    }

    v15 = sub_269057A64();
    (*(*(v15 - 8) + 56))(v6, 1, 1, v15);
    v16 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_269057A44();

    v17 = sub_269057A34();
    v18 = swift_allocObject();
    v19 = MEMORY[0x277D85700];
    *(v18 + 16) = v17;
    *(v18 + 24) = v19;
    *(v18 + 32) = v16;
    *(v18 + 40) = a1 & 1;

    sub_269038934(0, 0, v6, &unk_26905B0F8, v18);
  }

  return result;
}

void sub_26903A3BC(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = *&Strong[OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_viewController];
    if (v9)
    {
      v10 = *&Strong[OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_viewController + 16];
      ObjectType = swift_getObjectType();
      v11 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v12 = swift_allocObject();
      *(v12 + 16) = v11;
      v13 = a2 & 1;
      *(v12 + 24) = v13;
      *(v12 + 32) = a3;
      *(v12 + 40) = a4;
      v14 = *(v10 + 24);
      v15 = v9;

      v14(v13, sub_269041870, v12, ObjectType, v10);
    }

    else
    {
    }
  }
}

void sub_26903A518(uint64_t a1, char a2, void (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (a2)
    {
      v7 = *(Strong + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_trainingManager);
      if (v7)
      {
        [v7 playSoundsEffect_];
      }
    }

    a3();
  }
}

uint64_t sub_26903A5B0(unsigned __int8 a1, uint64_t a2, char a3)
{
  v4 = 0x2802F3000uLL;
  if (a1 == 6)
  {
    v5 = (a2 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_viewModel);
    swift_beginAccess();
    *(v5 + 13) = 0;
    *(v5 + 14) = 0;

    v6 = OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_trainingState;
    if (*(a2 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_trainingState) && *(a2 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_viewController))
    {
      v7 = *(a2 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_viewController + 8);
      ObjectType = swift_getObjectType();
      v9 = v5[11];
      v253 = v5[10];
      v254 = v9;
      v255 = v5[12];
      v10 = v5[7];
      v249 = v5[6];
      v250 = v10;
      v11 = v5[9];
      v251 = v5[8];
      v252 = v11;
      v12 = v5[3];
      v245 = v5[2];
      v246 = v12;
      v13 = v5[5];
      v247 = v5[4];
      v248 = v13;
      v14 = v5[1];
      v243 = *v5;
      v244 = v14;
      v241 = &type metadata for ViewModel;
      v242 = &off_2879A7790;
      v15 = swift_allocObject();
      v239 = v15;
      v16 = v5[11];
      v15[11] = v5[10];
      v15[12] = v16;
      v15[13] = v5[12];
      v17 = v5[7];
      v15[7] = v5[6];
      v15[8] = v17;
      v18 = v5[9];
      v15[9] = v5[8];
      v15[10] = v18;
      v19 = v5[3];
      v15[3] = v5[2];
      v15[4] = v19;
      v20 = v5[5];
      v15[5] = v5[4];
      v15[6] = v20;
      v21 = v5[1];
      v15[1] = *v5;
      v15[2] = v21;
      v22 = *(v7 + 16);
      sub_269009E3C(&v243, v238);
      v22(&v239, 0, ObjectType, v7);
      __swift_destroy_boxed_opaque_existential_1Tm(&v239);
    }

    *v5 = xmmword_26905AF70;

    if (*(a2 + v6) && *(a2 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_viewController))
    {
      v23 = *(a2 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_viewController + 8);
      v24 = swift_getObjectType();
      v25 = v5[11];
      v253 = v5[10];
      v254 = v25;
      v255 = v5[12];
      v26 = v5[7];
      v249 = v5[6];
      v250 = v26;
      v27 = v5[9];
      v251 = v5[8];
      v252 = v27;
      v28 = v5[3];
      v245 = v5[2];
      v246 = v28;
      v29 = v5[5];
      v247 = v5[4];
      v248 = v29;
      v30 = v5[1];
      v243 = *v5;
      v244 = v30;
      v241 = &type metadata for ViewModel;
      v242 = &off_2879A7790;
      v31 = swift_allocObject();
      v239 = v31;
      v32 = v5[11];
      v31[11] = v5[10];
      v31[12] = v32;
      v31[13] = v5[12];
      v33 = v5[7];
      v31[7] = v5[6];
      v31[8] = v33;
      v34 = v5[9];
      v31[9] = v5[8];
      v31[10] = v34;
      v35 = v5[3];
      v31[3] = v5[2];
      v31[4] = v35;
      v36 = v5[5];
      v31[5] = v5[4];
      v31[6] = v36;
      v37 = v5[1];
      v31[1] = *v5;
      v31[2] = v37;
      v38 = *(v23 + 16);
      sub_269009E3C(&v243, v238);
      v38(&v239, 0, v24, v23);
      __swift_destroy_boxed_opaque_existential_1Tm(&v239);
    }

    *(v5 + 2) = 0;
    *(v5 + 3) = 0xE000000000000000;

    if (*(a2 + v6) && *(a2 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_viewController))
    {
      v39 = *(a2 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_viewController + 8);
      v40 = swift_getObjectType();
      v41 = v5[11];
      v253 = v5[10];
      v254 = v41;
      v255 = v5[12];
      v42 = v5[7];
      v249 = v5[6];
      v250 = v42;
      v43 = v5[9];
      v251 = v5[8];
      v252 = v43;
      v44 = v5[3];
      v245 = v5[2];
      v246 = v44;
      v45 = v5[5];
      v247 = v5[4];
      v248 = v45;
      v46 = v5[1];
      v243 = *v5;
      v244 = v46;
      v241 = &type metadata for ViewModel;
      v242 = &off_2879A7790;
      v47 = swift_allocObject();
      v239 = v47;
      v48 = v5[11];
      v47[11] = v5[10];
      v47[12] = v48;
      v47[13] = v5[12];
      v49 = v5[7];
      v47[7] = v5[6];
      v47[8] = v49;
      v50 = v5[9];
      v47[9] = v5[8];
      v47[10] = v50;
      v51 = v5[3];
      v47[3] = v5[2];
      v47[4] = v51;
      v52 = v5[5];
      v47[5] = v5[4];
      v47[6] = v52;
      v53 = v5[1];
      v47[1] = *v5;
      v47[2] = v53;
      v54 = *(v39 + 16);
      sub_269009E3C(&v243, v238);
      v54(&v239, 0, v40, v39);
      __swift_destroy_boxed_opaque_existential_1Tm(&v239);
    }

    *(v5 + 9) = 0;
    *(v5 + 10) = 0;

    if (*(a2 + v6) && *(a2 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_viewController))
    {
      v56 = *(a2 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_viewController + 8);
      v57 = swift_getObjectType();
      v58 = v5[11];
      v253 = v5[10];
      v254 = v58;
      v255 = v5[12];
      v59 = v5[7];
      v249 = v5[6];
      v250 = v59;
      v60 = v5[9];
      v251 = v5[8];
      v252 = v60;
      v61 = v5[3];
      v245 = v5[2];
      v246 = v61;
      v62 = v5[5];
      v247 = v5[4];
      v248 = v62;
      v63 = v5[1];
      v243 = *v5;
      v244 = v63;
      v241 = &type metadata for ViewModel;
      v242 = &off_2879A7790;
      v64 = swift_allocObject();
      v239 = v64;
      v65 = v5[11];
      v64[11] = v5[10];
      v64[12] = v65;
      v64[13] = v5[12];
      v66 = v5[7];
      v64[7] = v5[6];
      v64[8] = v66;
      v67 = v5[9];
      v64[9] = v5[8];
      v64[10] = v67;
      v68 = v5[3];
      v64[3] = v5[2];
      v64[4] = v68;
      v69 = v5[5];
      v64[5] = v5[4];
      v64[6] = v69;
      v70 = v5[1];
      v64[1] = *v5;
      v64[2] = v70;
      v71 = *(v56 + 16);
      sub_269009E3C(&v243, v238);
      v71(&v239, 0, v57, v56);
LABEL_63:
      result = __swift_destroy_boxed_opaque_existential_1Tm(&v239);
      goto LABEL_64;
    }

    goto LABEL_64;
  }

  v72 = 0x2802F3000;
  if ((a3 & 1) == 0)
  {
    if (!a1)
    {
      goto LABEL_54;
    }

    v73 = 0x800000026905E660;
    if (qword_2802F3248 != -1)
    {
      swift_once();
    }

    v92 = byte_2802F5130;
    v93 = sub_269051B18(byte_2802F5130);
    *&v243 = 0xD00000000000001ALL;
    *(&v243 + 1) = 0x800000026905E660;
    MEMORY[0x26D62FBC0](v93);

    v94 = v243;
    v95 = sub_26904DCD8(0, 1, 1, MEMORY[0x277D84F90]);
    v97 = *(v95 + 2);
    v96 = *(v95 + 3);
    v98 = v96 >> 1;
    v99 = v97 + 1;
    if (v96 >> 1 <= v97)
    {
      v95 = sub_26904DCD8((v96 > 1), v97 + 1, 1, v95);
      v96 = *(v95 + 3);
      v98 = v96 >> 1;
    }

    *(v95 + 2) = v99;
    *&v95[16 * v97 + 32] = v94;
    if (v98 < (v97 + 2))
    {
      v95 = sub_26904DCD8((v96 > 1), v97 + 2, 1, v95);
    }

    *(v95 + 2) = v97 + 2;
    v100 = &v95[16 * v99];
    *(v100 + 4) = 0xD00000000000001ALL;
    *(v100 + 5) = 0x800000026905E660;
    v101 = (v95 + 40);
    v102 = -v97;
    v103 = -1;
    while (1)
    {
      if (v102 + v103 == 1)
      {

        *(&v243 + 1) = 0xE000000000000000;
        sub_269057C54();
        MEMORY[0x26D62FBC0](0xD00000000000002ALL, 0x800000026905BF40);
        MEMORY[0x26D62FBC0](0xD00000000000001ALL, 0x800000026905E660);
        MEMORY[0x26D62FBC0](0xD000000000000015, 0x800000026905BF70);
        if (qword_2802F3258 != -1)
        {
          swift_once();
        }

        v116 = sub_269057774();
        __swift_project_value_buffer(v116, qword_2802F3FF8);
        v117 = sub_269057A94();
        *&v243 = 0xD00000000000003BLL;
        *(&v243 + 1) = 0x800000026905BF00;
        v118 = sub_269057764();
        if (os_log_type_enabled(v118, v117))
        {
          v119 = swift_slowAlloc();
          v120 = swift_slowAlloc();
          v238[0] = v120;
          *v119 = 136315138;
          v121 = sub_269010108(0xD00000000000003BLL, 0x800000026905BF00, v238);

          *(v119 + 4) = v121;
          _os_log_impl(&dword_269002000, v118, v117, "%s", v119, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v120);
          MEMORY[0x26D6309D0](v120, -1, -1);
          MEMORY[0x26D6309D0](v119, -1, -1);
        }

        else
        {
        }

        v107 = 0xD00000000000001ALL;
        goto LABEL_50;
      }

      if (++v103 >= *(v95 + 2))
      {
        break;
      }

      v104 = v101 + 2;
      v105 = *(v101 - 1);
      v106 = *v101;

      v107 = sub_26902F7F4(v105, v106, 0);
      v109 = v108;

      v101 = v104;
      if (v109)
      {

        v73 = v109;
LABEL_50:
        v132 = sub_2690519EC(v92);
        *&v243 = v107;
        *(&v243 + 1) = v73;
        strcpy(v238, "%DEVICE_NAME%");
        HIWORD(v238[1]) = -4864;
        v239 = v132;
        v240 = v133;
        sub_26900BE9C();
        v134 = sub_269057BE4();
        v136 = v135;

        v137 = sub_2690519EC(v92);
        *&v243 = v134;
        *(&v243 + 1) = v136;
        v238[0] = 0xD000000000000014;
        v238[1] = 0x800000026905BEA0;
        v239 = v137;
        v240 = v138;
        v129 = sub_269057BE4();
        v131 = v139;

        v4 = 0x2802F3000uLL;
        goto LABEL_51;
      }
    }

LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  v73 = 0x800000026905E680;
  if (qword_2802F3248 != -1)
  {
LABEL_69:
    swift_once();
  }

  v74 = byte_2802F5130;
  v75 = sub_269051B18(byte_2802F5130);
  *&v243 = 0xD000000000000020;
  *(&v243 + 1) = v73;
  MEMORY[0x26D62FBC0](v75);

  v76 = v243;
  v77 = sub_26904DCD8(0, 1, 1, MEMORY[0x277D84F90]);
  v79 = *(v77 + 2);
  v78 = *(v77 + 3);
  v80 = v78 >> 1;
  v81 = v79 + 1;
  if (v78 >> 1 <= v79)
  {
    v77 = sub_26904DCD8((v78 > 1), v79 + 1, 1, v77);
    v78 = *(v77 + 3);
    v80 = v78 >> 1;
  }

  *(v77 + 2) = v81;
  *&v77[16 * v79 + 32] = v76;
  if (v80 < (v79 + 2))
  {
    v77 = sub_26904DCD8((v78 > 1), v79 + 2, 1, v77);
  }

  *(v77 + 2) = v79 + 2;
  v82 = &v77[16 * v81];
  *(v82 + 4) = 0xD000000000000020;
  *(v82 + 5) = v73;
  v83 = (v77 + 40);
  v84 = -v79;
  v85 = -1;
  while (v84 + v85 != 1)
  {
    if (++v85 >= *(v77 + 2))
    {
      __break(1u);
      goto LABEL_68;
    }

    v86 = v83 + 2;
    v87 = *(v83 - 1);
    v88 = *v83;

    v89 = sub_26902F7F4(v87, v88, 0);
    v91 = v90;

    v83 = v86;
    if (v91)
    {

      v73 = v91;
      v4 = 0x2802F3000;
      goto LABEL_47;
    }
  }

  *(&v243 + 1) = 0xE000000000000000;
  sub_269057C54();
  MEMORY[0x26D62FBC0](0xD00000000000002ALL, 0x800000026905BF40);
  MEMORY[0x26D62FBC0](0xD000000000000020, v73);
  MEMORY[0x26D62FBC0](0xD000000000000015, 0x800000026905BF70);
  if (qword_2802F3258 != -1)
  {
    swift_once();
  }

  v110 = sub_269057774();
  __swift_project_value_buffer(v110, qword_2802F3FF8);
  v111 = sub_269057A94();
  *&v243 = 0xD00000000000003BLL;
  *(&v243 + 1) = 0x800000026905BF00;
  v112 = sub_269057764();
  if (os_log_type_enabled(v112, v111))
  {
    v113 = swift_slowAlloc();
    v114 = swift_slowAlloc();
    v238[0] = v114;
    *v113 = 136315138;
    v115 = sub_269010108(0xD00000000000003BLL, 0x800000026905BF00, v238);

    *(v113 + 4) = v115;
    _os_log_impl(&dword_269002000, v112, v111, "%s", v113, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v114);
    MEMORY[0x26D6309D0](v114, -1, -1);
    MEMORY[0x26D6309D0](v113, -1, -1);
  }

  else
  {
  }

  v4 = 0x2802F3000;
  v89 = 0xD000000000000020;
LABEL_47:
  v122 = sub_2690519EC(v74);
  *&v243 = v89;
  *(&v243 + 1) = v73;
  strcpy(v238, "%DEVICE_NAME%");
  HIWORD(v238[1]) = -4864;
  v239 = v122;
  v240 = v123;
  sub_26900BE9C();
  v124 = sub_269057BE4();
  v126 = v125;

  v127 = sub_2690519EC(v74);
  *&v243 = v124;
  *(&v243 + 1) = v126;
  v238[0] = 0xD000000000000014;
  v238[1] = 0x800000026905BEA0;
  v239 = v127;
  v240 = v128;
  v129 = sub_269057BE4();
  v131 = v130;

LABEL_51:
  v140 = (a2 + *(v4 + 3216));
  swift_beginAccess();
  *v140 = v129;
  *(v140 + 1) = v131;

  v72 = 0x2802F3000uLL;
  if (*(a2 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_trainingState))
  {
    v141 = *(a2 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_viewController);
    if (v141)
    {
      v142 = *(a2 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_viewController + 8);
      v143 = swift_getObjectType();
      v256 = v141;
      v144 = v140[11];
      v253 = v140[10];
      v254 = v144;
      v255 = v140[12];
      v145 = v140[7];
      v249 = v140[6];
      v250 = v145;
      v146 = v140[9];
      v251 = v140[8];
      v252 = v146;
      v147 = v140[3];
      v245 = v140[2];
      v246 = v147;
      v148 = v140[5];
      v247 = v140[4];
      v248 = v148;
      v149 = v140[1];
      v243 = *v140;
      v244 = v149;
      v241 = &type metadata for ViewModel;
      v242 = &off_2879A7790;
      v150 = swift_allocObject();
      v239 = v150;
      v151 = v140[11];
      v150[11] = v140[10];
      v150[12] = v151;
      v150[13] = v140[12];
      v152 = v140[7];
      v150[7] = v140[6];
      v150[8] = v152;
      v153 = v140[9];
      v150[9] = v140[8];
      v150[10] = v153;
      v154 = v140[3];
      v150[3] = v140[2];
      v150[4] = v154;
      v155 = v140[5];
      v150[5] = v140[4];
      v150[6] = v155;
      v156 = v140[1];
      v150[1] = *v140;
      v150[2] = v156;
      v157 = *(v142 + 16);
      sub_269009E3C(&v243, v238);
      v157(&v239, 0, v143, v142);
      __swift_destroy_boxed_opaque_existential_1Tm(&v239);
    }
  }

LABEL_54:
  v158 = *(v72 + 3272);
  v159 = sub_2690349B0(*(a2 + v158));
  v161 = v160;
  v162 = (a2 + *(v4 + 3216));
  swift_beginAccess();
  *(v162 + 2) = v159;
  *(v162 + 3) = v161;

  if (*(a2 + v158) && *(a2 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_viewController))
  {
    v163 = *(a2 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_viewController + 8);
    v164 = swift_getObjectType();
    v165 = v162[11];
    v253 = v162[10];
    v254 = v165;
    v255 = v162[12];
    v166 = v162[7];
    v249 = v162[6];
    v250 = v166;
    v167 = v162[9];
    v251 = v162[8];
    v252 = v167;
    v168 = v162[3];
    v245 = v162[2];
    v246 = v168;
    v169 = v162[5];
    v247 = v162[4];
    v248 = v169;
    v170 = v162[1];
    v243 = *v162;
    v244 = v170;
    v241 = &type metadata for ViewModel;
    v242 = &off_2879A7790;
    v171 = swift_allocObject();
    v239 = v171;
    v172 = v162[11];
    v171[11] = v162[10];
    v171[12] = v172;
    v171[13] = v162[12];
    v173 = v162[7];
    v171[7] = v162[6];
    v171[8] = v173;
    v174 = v162[9];
    v171[9] = v162[8];
    v171[10] = v174;
    v175 = v162[3];
    v171[3] = v162[2];
    v171[4] = v175;
    v176 = v162[5];
    v171[5] = v162[4];
    v171[6] = v176;
    v177 = v162[1];
    v171[1] = *v162;
    v171[2] = v177;
    v178 = *(v163 + 16);
    sub_269009E3C(&v243, v238);
    v178(&v239, 0, v164, v163);
    __swift_destroy_boxed_opaque_existential_1Tm(&v239);
  }

  *(v162 + 13) = sub_269043D38(a1);
  *(v162 + 14) = v179;

  if (*(a2 + v158) && *(a2 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_viewController))
  {
    v180 = *(a2 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_viewController + 8);
    v181 = swift_getObjectType();
    v182 = v162[11];
    v253 = v162[10];
    v254 = v182;
    v255 = v162[12];
    v183 = v162[7];
    v249 = v162[6];
    v250 = v183;
    v184 = v162[9];
    v251 = v162[8];
    v252 = v184;
    v185 = v162[3];
    v245 = v162[2];
    v246 = v185;
    v186 = v162[5];
    v247 = v162[4];
    v248 = v186;
    v187 = v162[1];
    v243 = *v162;
    v244 = v187;
    v241 = &type metadata for ViewModel;
    v242 = &off_2879A7790;
    v188 = swift_allocObject();
    v239 = v188;
    v189 = v162[11];
    v188[11] = v162[10];
    v188[12] = v189;
    v188[13] = v162[12];
    v190 = v162[7];
    v188[7] = v162[6];
    v188[8] = v190;
    v191 = v162[9];
    v188[9] = v162[8];
    v188[10] = v191;
    v192 = v162[3];
    v188[3] = v162[2];
    v188[4] = v192;
    v193 = v162[5];
    v188[5] = v162[4];
    v188[6] = v193;
    v194 = v162[1];
    v188[1] = *v162;
    v188[2] = v194;
    v195 = *(v180 + 16);
    sub_269009E3C(&v243, v238);
    v195(&v239, 0, v181, v180);
    __swift_destroy_boxed_opaque_existential_1Tm(&v239);
  }

  v196 = *(a2 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_dataSource);
  v197 = *(a2 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_dataSource + 8);
  v198 = swift_getObjectType();
  v199 = *(v197 + 88);
  v200 = v196;
  v201 = v199(v198, v197);
  v203 = v202;

  *(v162 + 24) = v201;
  *(v162 + 25) = v203;

  if (*(a2 + v158) && *(a2 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_viewController))
  {
    v204 = *(a2 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_viewController + 8);
    v205 = swift_getObjectType();
    v206 = v162[11];
    v253 = v162[10];
    v254 = v206;
    v255 = v162[12];
    v207 = v162[7];
    v249 = v162[6];
    v250 = v207;
    v208 = v162[9];
    v251 = v162[8];
    v252 = v208;
    v209 = v162[3];
    v245 = v162[2];
    v246 = v209;
    v210 = v162[5];
    v247 = v162[4];
    v248 = v210;
    v211 = v162[1];
    v243 = *v162;
    v244 = v211;
    v241 = &type metadata for ViewModel;
    v242 = &off_2879A7790;
    v212 = swift_allocObject();
    v239 = v212;
    v213 = v162[11];
    v212[11] = v162[10];
    v212[12] = v213;
    v212[13] = v162[12];
    v214 = v162[7];
    v212[7] = v162[6];
    v212[8] = v214;
    v215 = v162[9];
    v212[9] = v162[8];
    v212[10] = v215;
    v216 = v162[3];
    v212[3] = v162[2];
    v212[4] = v216;
    v217 = v162[5];
    v212[5] = v162[4];
    v212[6] = v217;
    v218 = v162[1];
    v212[1] = *v162;
    v212[2] = v218;
    v219 = *(v204 + 16);
    sub_269009E3C(&v243, v238);
    v219(&v239, 0, v205, v204);
    goto LABEL_63;
  }

LABEL_64:
  if (*(a2 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_viewController))
  {
    v220 = *(a2 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_viewController + 8);
    v221 = swift_getObjectType();
    v222 = (a2 + *(v4 + 3216));
    swift_beginAccess();
    v223 = v222[11];
    v253 = v222[10];
    v254 = v223;
    v255 = v222[12];
    v224 = v222[7];
    v249 = v222[6];
    v250 = v224;
    v225 = v222[9];
    v251 = v222[8];
    v252 = v225;
    v226 = v222[3];
    v245 = v222[2];
    v246 = v226;
    v227 = v222[5];
    v247 = v222[4];
    v248 = v227;
    v228 = v222[1];
    v243 = *v222;
    v244 = v228;
    v241 = &type metadata for ViewModel;
    v242 = &off_2879A7790;
    v229 = swift_allocObject();
    v239 = v229;
    v230 = v222[11];
    v229[11] = v222[10];
    v229[12] = v230;
    v229[13] = v222[12];
    v231 = v222[7];
    v229[7] = v222[6];
    v229[8] = v231;
    v232 = v222[9];
    v229[9] = v222[8];
    v229[10] = v232;
    v233 = v222[3];
    v229[3] = v222[2];
    v229[4] = v233;
    v234 = v222[5];
    v229[5] = v222[4];
    v229[6] = v234;
    v235 = v222[1];
    v229[1] = *v222;
    v229[2] = v235;
    v236 = *(v220 + 16);
    sub_269009E3C(&v243, v238);
    v236(&v239, 1, v221, v220);
    return __swift_destroy_boxed_opaque_existential_1Tm(&v239);
  }

  return result;
}

id sub_26903BA04()
{
  v1 = OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_scdaCoordinator;
  result = *(v0 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_scdaCoordinator);
  if (result)
  {
    [result endAdvertisingAfterDelay_];
    result = *(v0 + v1);
    if (result)
    {
      [result stopListening_];
      result = *(v0 + v1);
      if (result)
      {

        return [result setupEnabled_];
      }
    }
  }

  return result;
}

void sub_26903BA88(char a1)
{
  if (a1)
  {
    v2 = *&v1[OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_trainingManager];
    if (v2 && (v3 = [v2 voiceProfile]) != 0)
    {
      v4 = v3;
      v5 = v3;
      v6 = sub_269057944();
      v7 = [v5 valueForKey_];

      if (v7)
      {
        sub_269057C04();
        swift_unknownObjectRelease();
      }

      else
      {
        aBlock = 0u;
        v68 = 0u;
      }

      v11 = 0;
      v75 = aBlock;
      v76 = v68;
    }

    else
    {
      v4 = 0;
      v75 = 0u;
      v76 = 0u;
      v11 = 1;
    }

    *(*&v1[OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_dataSourceWriter] + OBJC_IVAR____TtC9SiriSetup21LocalDataSourceWriter_recognizeMyVoiceEnabled) = 2;
    *&aBlock = 0;
    *(&aBlock + 1) = 0xE000000000000000;
    v66 = v1;
    v12 = &v1[OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_dataSource];
    v13 = *&v1[OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_dataSource];
    v14 = *(v12 + 1);
    ObjectType = swift_getObjectType();
    v16 = *(v14 + 24);
    v17 = v13;
    v18 = v16(ObjectType, v14);
    v20 = v19;

    if (v20)
    {
      v21 = v18;
    }

    else
    {
      v21 = 7104878;
    }

    if (!v20)
    {
      v20 = 0xE300000000000000;
    }

    v22 = 0x800000026905E750;
    MEMORY[0x26D62FBC0](v21, v20);

    if (qword_2802F3258 != -1)
    {
      swift_once();
    }

    v23 = 0xD00000000000001BLL;
    v24 = sub_269057774();
    __swift_project_value_buffer(v24, qword_2802F3FF8);
    v25 = sub_269057AA4();
    sub_269053434(v25, 0xD00000000000001BLL, 0x800000026905E750, 0xD000000000000022, 0x800000026905E770, aBlock, *(&aBlock + 1));

    if ((v11 & 1) == 0)
    {
      v27 = *v12;
      v26 = *(v12 + 1);
      v28 = swift_getObjectType();
      v29 = *(v26 + 24);
      v30 = v4;
      v31 = v4;
      v32 = v27;
      v29(v28, v26);
      v34 = v33;

      if (v34)
      {
        v35 = sub_269057944();
      }

      else
      {
        v35 = 0;
      }

      v36 = sub_269057944();
      [v31 setValue:v35 forKey:v36];

      swift_unknownObjectRelease();
      v4 = v30;
      v22 = 0x800000026905E750;
    }

    if (!*(&v76 + 1))
    {
      goto LABEL_36;
    }

    sub_269041944(&v75, &aBlock, &unk_2802F3E30, &unk_26905AD70);
    if (*(&v68 + 1))
    {
      sub_26900A408(0, &unk_2802F3B90, 0x277CCACA8);
      if (swift_dynamicCast())
      {
        v37 = v71;
        goto LABEL_34;
      }
    }

    else
    {
      sub_2690419AC(&aBlock, &unk_2802F3E30, &unk_26905AD70);
    }

    v37 = 0;
LABEL_34:
    sub_26900A408(0, &unk_2802F3B90, 0x277CCACA8);
    v38 = sub_269057BB4();
    v39 = v38;
    if (v37)
    {
      v40 = sub_269057BA4();

      if (v40)
      {
LABEL_36:
        v41 = sub_269057AA4();
        *&aBlock = 0xD00000000000001BLL;
        *(&aBlock + 1) = 0x800000026905E750;
        if ((" to voice profile " & 0x2F00000000000000) != 0x2000000000000000)
        {
          *&v71 = 32;
          *(&v71 + 1) = 0xE100000000000000;
          MEMORY[0x26D62FBC0](0xD000000000000032, 0x800000026905E7A0);
          MEMORY[0x26D62FBC0](v71, *(&v71 + 1));

          v22 = *(&aBlock + 1);
          v23 = aBlock;
        }

        v42 = sub_269057764();
        if (os_log_type_enabled(v42, v41))
        {
          v43 = swift_slowAlloc();
          v44 = swift_slowAlloc();
          *&v71 = v44;
          *v43 = 136315138;
          v45 = sub_269010108(v23, v22, &v71);

          *(v43 + 4) = v45;
          _os_log_impl(&dword_269002000, v42, v41, "%s", v43, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v44);
          MEMORY[0x26D6309D0](v44, -1, -1);
          MEMORY[0x26D6309D0](v43, -1, -1);
        }

        else
        {
        }

        sub_26900A408(0, &qword_2802F3E28, 0x277CEF318);
        v46 = *v12;
        v47 = *(v12 + 1);
        v48 = swift_getObjectType();
        v49 = *(v47 + 8);
        v50 = v46;
        v51 = v49(v48, v47);
        v53 = v52;

        v54 = swift_allocObject();
        *(v54 + 16) = v4;
        *(v54 + 24) = v66;
        v55 = v4;
        v56 = v66;
        sub_269014FD0(v51, v53, sub_2690400DC, v54);

        goto LABEL_49;
      }
    }

    else
    {
    }

    v73 = 0;
    v74 = 0xE000000000000000;
    sub_269041944(&v75, &v71, &unk_2802F3E30, &unk_26905AD70);
    if (v72)
    {
      sub_26901729C(&v71, &aBlock);
    }

    else
    {
      *(&v68 + 1) = MEMORY[0x277D837D0];
      *&aBlock = 7104878;
      *(&aBlock + 1) = 0xE300000000000000;
    }

    sub_269057CB4();
    __swift_destroy_boxed_opaque_existential_1Tm(&aBlock);
    v57 = v73;
    v58 = v74;
    v59 = sub_269057AA4();
    sub_269053434(v59, 0xD00000000000001BLL, 0x800000026905E750, 0xD00000000000002DLL, 0x800000026905E7E0, v57, v58);

    v60 = *&v66[OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_voiceProfileManager];
    if (v60)
    {
      v61 = swift_allocObject();
      *(v61 + 16) = v66;
      *(v61 + 24) = v4;
      v69 = sub_2690400E4;
      v70 = v61;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      *&v68 = sub_26903D918;
      *(&v68 + 1) = &block_descriptor_62;
      v62 = _Block_copy(&aBlock);
      v63 = v4;
      v64 = v60;
      v65 = v66;

      [v64 markSATEnrollmentSuccessForVoiceProfile:v63 completion:v62];

      _Block_release(v62);
    }

    else
    {
    }

LABEL_49:
    sub_2690419AC(&v75, &unk_2802F3E30, &unk_26905AD70);
    return;
  }

  v8 = *&v1[OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_voiceProfileManager];
  if (v8)
  {
    v9 = *&v1[OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_trainingManager];
    v10 = v8;
    if (v9)
    {
      v9 = [v9 voiceProfile];
    }

    [v10 deleteUserVoiceProfile_];
  }

  sub_26903D5D8(0);
}

double sub_26903C2D4(uint64_t a1)
{
  v2 = sub_269057874();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2690578A4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26900A408(0, &qword_2802F3E00, 0x277D85C78);
  v10 = sub_269057B34();
  aBlock[4] = sub_2690416E0;
  aBlock[5] = a1;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26900BEF0;
  aBlock[3] = &block_descriptor_90;
  v11 = _Block_copy(aBlock);

  sub_269057884();
  v13[1] = MEMORY[0x277D84F90];
  sub_269041A0C(&qword_2802F3420, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802F3E10, &unk_269059E90);
  sub_26900A4E8();
  sub_269057C14();
  MEMORY[0x26D62FD80](0, v9, v5, v11);
  _Block_release(v11);

  (*(v3 + 8))(v5, v2);
  (*(v7 + 8))(v9, v6);

  return result;
}

void sub_26903C580(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if (swift_unknownObjectWeakLoadStrong())
    {

      sub_26900E6C8(v3);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_26903C620(void (*a1)(uint64_t), uint64_t a2)
{
  v5 = OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_trainingManager;
  v6 = *(v2 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_trainingManager);
  if (v6)
  {
    [v6 cancelTrainingForSessionId_];
    v7 = *(v2 + v5);
    if (v7)
    {
      [v7 stopRMS];
      v8 = *(v2 + v5);
      if (v8)
      {
        if (a1)
        {
          v12[4] = a1;
          v12[5] = a2;
          v12[0] = MEMORY[0x277D85DD0];
          v12[1] = 1107296256;
          v12[2] = sub_26900BEF0;
          v12[3] = &block_descriptor_7;
          v9 = _Block_copy(v12);
          v10 = v8;
          sub_26903FFAC(a1, a2);
        }

        else
        {
          v10 = v8;
          v9 = 0;
        }

        [v10 cleanupWithCompletion_];
        _Block_release(v9);
      }
    }
  }

  else if (a1)
  {

    a1(v11);

    sub_26903FF84(a1, a2);
  }
}

double sub_26903C790()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F3868, &qword_26905A590);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v18 - v3;
  if ((*(v0 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_isCanceled) & 1) == 0)
  {
    v5 = 0x800000026905E580;
    if (qword_2802F3258 != -1)
    {
      swift_once();
    }

    v6 = 0xD00000000000001DLL;
    v7 = sub_269057774();
    __swift_project_value_buffer(v7, qword_2802F3FF8);
    v8 = sub_269057AA4();
    v20 = 0xD00000000000001DLL;
    v21 = 0x800000026905E580;
    if (("skipTraining(notifyDelegate:)" & 0x2F00000000000000) != 0x2000000000000000)
    {
      v18 = 32;
      v19 = 0xE100000000000000;
      MEMORY[0x26D62FBC0](0xD000000000000016, 0x800000026905E5A0);
      MEMORY[0x26D62FBC0](v18, v19);

      v6 = v20;
      v5 = v21;
    }

    v9 = sub_269057764();
    if (os_log_type_enabled(v9, v8))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v18 = v11;
      *v10 = 136315138;
      v12 = sub_269010108(v6, v5, &v18);

      *(v10 + 4) = v12;
      _os_log_impl(&dword_269002000, v9, v8, "%s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
      MEMORY[0x26D6309D0](v11, -1, -1);
      MEMORY[0x26D6309D0](v10, -1, -1);
    }

    else
    {
    }

    if (qword_2802F3228 != -1)
    {
      swift_once();
    }

    v13 = sub_269057A64();
    (*(*(v13 - 8) + 56))(v4, 1, 1, v13);
    v14 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_269057A44();

    v15 = sub_269057A34();
    v16 = swift_allocObject();
    v17 = MEMORY[0x277D85700];
    *(v16 + 16) = v15;
    *(v16 + 24) = v17;
    *(v16 + 32) = v14;
    *(v16 + 40) = 0;

    sub_269038934(0, 0, v4, &unk_26905B0D0, v16);
  }

  return result;
}

uint64_t sub_26903CAE4()
{
  v19 = v0;
  v1 = v0[2];
  v2 = OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_isCanceled;
  if (*(v1 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_isCanceled))
  {
    v3 = v0[1];

    return v3();
  }

  else
  {
    if (qword_2802F3258 != -1)
    {
      swift_once();
    }

    v5 = sub_269057774();
    __swift_project_value_buffer(v5, qword_2802F3FF8);
    v6 = sub_269057AA4();
    if (("cancelTraining()" & 0x2F00000000000000) != 0x2000000000000000)
    {
      v18[0] = 32;
      v18[1] = 0xE100000000000000;
      MEMORY[0x26D62FBC0](0xD000000000000017, 0x800000026905E5E0);
      MEMORY[0x26D62FBC0](32, 0xE100000000000000);
    }

    v7 = sub_269057764();
    if (os_log_type_enabled(v7, v6))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v18[0] = v9;
      *v8 = 136315138;
      v10 = sub_269010108(0xD000000000000010, 0x800000026905E5C0, v18);

      *(v8 + 4) = v10;
      _os_log_impl(&dword_269002000, v7, v6, "%s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v9);
      MEMORY[0x26D6309D0](v9, -1, -1);
      MEMORY[0x26D6309D0](v8, -1, -1);
    }

    else
    {
    }

    v11 = v0[2];
    *(v1 + v2) = 1;
    sub_269038C34(6, 0);
    sub_26903BA04();
    v12 = *(v11 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_voiceProfileManager);
    if (v12)
    {
      v13 = *(v0[2] + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_trainingManager);
      v14 = v12;
      if (v13)
      {
        v13 = [v13 voiceProfile];
      }

      [v12 deleteUserVoiceProfile_];
    }

    sub_26903D5D8(0);
    if (qword_2802F3228 != -1)
    {
      swift_once();
    }

    v15 = v0[2];
    v16 = swift_task_alloc();
    v0[3] = v16;
    *(v16 + 16) = v15;
    v17 = swift_task_alloc();
    v0[4] = v17;
    *v17 = v0;
    v17[1] = sub_26903CE90;

    return MEMORY[0x2822007B8]();
  }
}

uint64_t sub_26903CE90()
{

  return MEMORY[0x2822009F8](sub_26903CFA8, 0, 0);
}

double sub_26903CFBC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F3D30, &qword_26905B098);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - v4;
  (*(v3 + 16))(&v9 - v4, a1, v2);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  (*(v3 + 32))(v7 + v6, v5, v2);
  sub_26903C620(sub_26903FF18, v7);

  return result;
}

uint64_t sub_26903D104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 88) = a5;
  *(v5 + 40) = a4;
  sub_269057A44();
  *(v5 + 48) = sub_269057A34();
  v7 = sub_269057A14();
  *(v5 + 56) = v7;
  *(v5 + 64) = v6;

  return MEMORY[0x2822009F8](sub_26903D1A0, v7, v6);
}

uint64_t sub_26903D1A0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[10] = v2;
    *v2 = v0;
    v2[1] = sub_26903D290;

    return sub_26903CAC4();
  }

  else
  {

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_26903D290()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return MEMORY[0x2822009F8](sub_26903D3B0, v3, v2);
}

uint64_t sub_26903D3B0()
{
  v14 = v0;
  v1 = *(v0 + 88);

  v2 = *(v0 + 72);
  if (v1 == 1)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {

      sub_26900D268(v3);
      swift_unknownObjectRelease();
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      type metadata accessor for SiriSetupCoordinator();
      if (swift_dynamicCastClass())
      {
        v4 = *(v0 + 72);
        v10[0] = 1;
        v11 = 0;
        v12 = 0;
        v13 = 0;

        sub_26900EC94(v5, v10);

        swift_unknownObjectRelease();

        goto LABEL_11;
      }

      swift_unknownObjectRelease();
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    v2 = *(v0 + 72);
    if (Strong)
    {

      sub_26900E964(v7);
      swift_unknownObjectRelease();
    }
  }

LABEL_11:
  v8 = *(v0 + 8);

  return v8();
}

void sub_26903D538()
{
  v0 = objc_opt_self();
  v1 = [v0 sharedApplication];
  [v1 setIdleTimerDisabled_];

  v2 = [v0 sharedApplication];
  [v2 setIdleTimerDisabled_];
}

void sub_26903D5D8(char a1)
{
  v2 = v1;
  v4 = 0xD000000000000023;
  sub_269057C54();

  v31 = 0xD000000000000020;
  v32 = 0x800000026905E600;
  if (a1)
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (a1)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = 0x800000026905E630;
  MEMORY[0x26D62FBC0](v5, v6);

  v9 = v31;
  v8 = v32;
  if (qword_2802F3258 != -1)
  {
    swift_once();
  }

  v10 = sub_269057774();
  __swift_project_value_buffer(v10, qword_2802F3FF8);
  v11 = sub_269057AA4();
  v31 = 0xD000000000000023;
  v32 = 0x800000026905E630;
  v12 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v12 = v9 & 0xFFFFFFFFFFFFLL;
  }

  if (v12)
  {
    v30[0] = 32;
    v30[1] = 0xE100000000000000;
    MEMORY[0x26D62FBC0](v9, v8);
    MEMORY[0x26D62FBC0](32, 0xE100000000000000);

    v4 = v31;
    v7 = v32;
  }

  v13 = sub_269057764();
  if (os_log_type_enabled(v13, v11))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v30[0] = v15;
    *v14 = 136315138;
    v16 = sub_269010108(v4, v7, v30);

    *(v14 + 4) = v16;
    _os_log_impl(&dword_269002000, v13, v11, "%s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    MEMORY[0x26D6309D0](v15, -1, -1);
    MEMORY[0x26D6309D0](v14, -1, -1);
  }

  else
  {
  }

  v17 = v2 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_dataSource;
  v18 = *(v2 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_dataSource);
  v19 = *(v2 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_dataSource + 8);
  ObjectType = swift_getObjectType();
  v21 = *(v19 + 32);
  v22 = v18;
  v21(&v31, ObjectType, v19);

  if (v31 != 3)
  {
    v23 = *(v2 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_dataSourceWriter);
    v24 = 1;
    if (a1)
    {
      v24 = 2;
    }

    *(v23 + OBJC_IVAR____TtC9SiriSetup21LocalDataSourceWriter_voiceTriggerEnabled) = v24;
    *(v23 + OBJC_IVAR____TtC9SiriSetup21LocalDataSourceWriter_siriEnabled) = v24;
    v25 = *v17;
    v26 = *(v17 + 8);
    v27 = swift_getObjectType();
    v28 = *(v26 + 64);
    v29 = v25;
    v28(v27, v26);
  }
}

void sub_26903D918(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

void sub_26903D990(void *a1, uint64_t a2, uint64_t a3, void *a4, char *a5)
{
  sub_269057C54();

  v10 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802F3E40, &qword_26905A3D8);
  v11 = sub_269057964();
  MEMORY[0x26D62FBC0](v11);

  MEMORY[0x26D62FBC0](0xD000000000000012, 0x800000026905E8D0);
  v23 = 32;
  v24 = 0xE100000000000000;
  v29 = a2;
  v30 = a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F3548, &unk_269059F70);
  v12 = sub_269057964();
  MEMORY[0x26D62FBC0](v12);

  if (qword_2802F3258 != -1)
  {
    swift_once();
  }

  v13 = sub_269057774();
  __swift_project_value_buffer(v13, qword_2802F3FF8);
  v14 = sub_269057AA4();
  sub_269053434(v14, 0xD00000000000001BLL, 0x800000026905E750, 0xD00000000000001BLL, 0x800000026905E8B0, 32, 0xE100000000000000);

  if (a4)
  {
    if (a3)
    {
      v15 = sub_269057944();
    }

    else
    {
      v15 = 0;
    }

    v16 = sub_269057944();
    [a4 setValue:v15 forKey:v16];
    swift_unknownObjectRelease();
  }

  v17 = *&a5[OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_voiceProfileManager];
  if (v17)
  {
    v18 = swift_allocObject();
    *(v18 + 16) = a5;
    *(v18 + 24) = a4;
    v27 = sub_269041A70;
    v28 = v18;
    v23 = MEMORY[0x277D85DD0];
    v24 = 1107296256;
    v25 = sub_26903D918;
    v26 = &block_descriptor_68;
    v19 = _Block_copy(&v23);
    v20 = a4;
    v21 = v17;
    v22 = a5;

    [v21 markSATEnrollmentSuccessForVoiceProfile:v20 completion:v19];
    _Block_release(v19);
  }
}

void sub_26903DC98(char a1, void *a2)
{
  v4 = 0xD00000000000001BLL;
  sub_269057C54();

  v20 = 0xD00000000000001ELL;
  v21 = 0x800000026905E830;
  if (a1)
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (a1)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = 0x800000026905E750;
  MEMORY[0x26D62FBC0](v5, v6);

  MEMORY[0x26D62FBC0](0x20726F727265202CLL, 0xE800000000000000);
  v19[0] = a2;
  v8 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802F3E40, &qword_26905A3D8);
  v9 = sub_269057964();
  MEMORY[0x26D62FBC0](v9);

  v11 = v20;
  v10 = v21;
  if (qword_2802F3258 != -1)
  {
    swift_once();
  }

  v12 = sub_269057774();
  __swift_project_value_buffer(v12, qword_2802F3FF8);
  v13 = sub_269057AA4();
  v20 = 0xD00000000000001BLL;
  v21 = 0x800000026905E750;
  v14 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v14 = v11 & 0xFFFFFFFFFFFFLL;
  }

  if (v14)
  {
    v19[0] = 32;
    v19[1] = 0xE100000000000000;
    MEMORY[0x26D62FBC0](v11, v10);
    MEMORY[0x26D62FBC0](32, 0xE100000000000000);

    v4 = v20;
    v7 = v21;
  }

  v15 = sub_269057764();
  if (os_log_type_enabled(v15, v13))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v19[0] = v17;
    *v16 = 136315138;
    v18 = sub_269010108(v4, v7, v19);

    *(v16 + 4) = v18;
    _os_log_impl(&dword_269002000, v15, v13, "%s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    MEMORY[0x26D6309D0](v17, -1, -1);
    MEMORY[0x26D6309D0](v16, -1, -1);
  }

  else
  {
  }

  if (a2)
  {
    a2 = sub_269057664();
  }

  sub_269041344(a2);

  sub_26903D5D8(1);
}

double sub_26903DF68(uint64_t a1, uint64_t a2)
{
  v4 = sub_269057874();
  v34 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v31 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2690578A4();
  v32 = *(v6 - 8);
  v33 = v6;
  MEMORY[0x28223BE20](v6);
  v30 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2690578C4();
  v29 = v8;
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v28 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F3E50, &qword_26905B100);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v28 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F3D30, &qword_26905B098);
  v19 = *(v18 - 8);
  (*(v19 + 16))(v17, a1, v18);
  (*(v19 + 56))(v17, 0, 1, v18);
  v20 = OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_animationContinuation;
  swift_beginAccess();
  sub_2690418CC(v17, a2 + v20);
  swift_endAccess();
  sub_26900A408(0, &qword_2802F3E00, 0x277D85C78);
  v21 = sub_269057B34();
  sub_2690578B4();
  sub_269057904();
  v22 = *(v9 + 8);
  v28 = v9 + 8;
  v22(v12, v8);
  v23 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_26904193C;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26900BEF0;
  aBlock[3] = &block_descriptor_122;
  v24 = _Block_copy(aBlock);

  v25 = v30;
  sub_269057884();
  v35 = MEMORY[0x277D84F90];
  sub_269041A0C(&qword_2802F3420, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802F3E10, &unk_269059E90);
  sub_26900A4E8();
  v26 = v31;
  sub_269057C14();
  MEMORY[0x26D62FD40](v14, v25, v26, v24);
  _Block_release(v24);

  (*(v34 + 8))(v26, v4);
  (*(v32 + 8))(v25, v33);
  v22(v14, v29);

  return result;
}

void sub_26903E438(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F3D30, &qword_26905B098);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v38 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F3E50, &qword_26905B100);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v38 - v9;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    (*(v2 + 56))(v10, 1, 1, v1);
    goto LABEL_6;
  }

  v12 = OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_animationContinuation;
  v13 = Strong;
  swift_beginAccess();
  sub_269041944(v13 + v12, v10, &qword_2802F3E50, &qword_26905B100);

  v14 = *(v2 + 48);
  if (v14(v10, 1, v1) == 1)
  {
LABEL_6:
    sub_2690419AC(v10, &qword_2802F3E50, &qword_26905B100);
    return;
  }

  sub_2690419AC(v10, &qword_2802F3E50, &qword_26905B100);
  v44[3] = 0;
  v44[4] = 0xE000000000000000;
  sub_269057C54();

  strcpy(v44, "Animation for ");
  HIBYTE(v44[1]) = -18;
  swift_beginAccess();
  v15 = swift_unknownObjectWeakLoadStrong();
  v41 = v8;
  v40 = v4;
  v38 = v14;
  if (v15)
  {
    v16 = v15[OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_trainingState];
  }

  else
  {
    v16 = 7;
  }

  v39 = v2;
  v17 = 0xD00000000000001CLL;
  v18 = 0x800000026905EC40;
  LOBYTE(v42) = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F3E68, &qword_26905B168);
  v19 = sub_269057964();
  MEMORY[0x26D62FBC0](v19);

  MEMORY[0x26D62FBC0](0xD000000000000013, 0x800000026905ECC0);
  v20 = v44[0];
  v21 = v44[1];
  if (qword_2802F3258 != -1)
  {
    swift_once();
  }

  v22 = sub_269057774();
  __swift_project_value_buffer(v22, qword_2802F3FF8);
  v23 = sub_269057AA4();
  v44[0] = 0xD00000000000001CLL;
  v44[1] = 0x800000026905EC40;
  v24 = HIBYTE(v21) & 0xF;
  if ((v21 & 0x2000000000000000) == 0)
  {
    v24 = v20 & 0xFFFFFFFFFFFFLL;
  }

  if (v24)
  {
    v42 = 32;
    v43 = 0xE100000000000000;
    MEMORY[0x26D62FBC0](v20, v21);
    MEMORY[0x26D62FBC0](v42, v43);

    v17 = v44[0];
    v18 = v44[1];
  }

  v25 = sub_269057764();
  if (os_log_type_enabled(v25, v23))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v42 = v27;
    *v26 = 136315138;
    v28 = sub_269010108(v17, v18, &v42);

    *(v26 + 4) = v28;
    _os_log_impl(&dword_269002000, v25, v23, "%s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
    MEMORY[0x26D6309D0](v27, -1, -1);
    MEMORY[0x26D6309D0](v26, -1, -1);
  }

  else
  {
  }

  v29 = v39;
  swift_beginAccess();
  v30 = swift_unknownObjectWeakLoadStrong();
  v31 = v41;
  v32 = v40;
  if (v30)
  {
    v33 = v30;
    v34 = OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_animationContinuation;
    swift_beginAccess();
    if (v38(&v33[v34], 1, v1))
    {
    }

    else
    {
      (*(v29 + 16))(v32, &v33[v34], v1);

      sub_269057A24();
      (*(v29 + 8))(v32, v1);
    }
  }

  swift_beginAccess();
  v35 = swift_unknownObjectWeakLoadStrong();
  if (v35)
  {
    v36 = v35;
    (*(v29 + 56))(v31, 1, 1, v1);
    v37 = OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_animationContinuation;
    swift_beginAccess();
    sub_2690418CC(v31, v36 + v37);
    swift_endAccess();
  }
}

id sub_26903EA34()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for VoiceTrainingPresenter(uint64_t a1)
{
  result = qword_2802F3D18;
  if (!qword_2802F3D18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26903EC24(uint64_t a1)
{
  sub_2690576E4();
  if (v1 <= 0x3F)
  {
    sub_26903ED6C(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_26903ED6C(uint64_t a1)
{
  if (!qword_2802F3D28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802F3D30, &qword_26905B098);
    v1 = sub_269057BD4();
    if (!v2)
    {
      atomic_store(v1, &qword_2802F3D28);
    }
  }
}

uint64_t sub_26903EDD0@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_viewModel);
  swift_beginAccess();
  v4 = v3[9];
  v5 = v3[11];
  v32 = v3[10];
  v33 = v5;
  v6 = v3[11];
  v34 = v3[12];
  v7 = v3[5];
  v8 = v3[7];
  v28 = v3[6];
  v9 = v28;
  v29 = v8;
  v10 = v3[7];
  v11 = v3[9];
  v30 = v3[8];
  v12 = v30;
  v31 = v11;
  v13 = v3[1];
  v14 = v3[3];
  v24 = v3[2];
  v15 = v24;
  v25 = v14;
  v16 = v3[3];
  v17 = v3[5];
  v26 = v3[4];
  v18 = v26;
  v27 = v17;
  v19 = v3[1];
  v23[0] = *v3;
  v20 = v23[0];
  v23[1] = v19;
  a1[10] = v32;
  a1[11] = v6;
  a1[12] = v3[12];
  a1[6] = v9;
  a1[7] = v10;
  a1[8] = v12;
  a1[9] = v4;
  a1[2] = v15;
  a1[3] = v16;
  a1[4] = v18;
  a1[5] = v7;
  *a1 = v20;
  a1[1] = v13;
  return sub_269009E3C(v23, v22);
}

void (*sub_26903EEA4(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_26903372C(v2);
  return sub_26901AFE8;
}

void *sub_26903EF14()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_viewController);
  v2 = v1;
  return v1;
}

uint64_t sub_26903EF68()
{
  v0 = 0x800000026905D1B0;
  if (qword_2802F3258 != -1)
  {
    swift_once();
  }

  v1 = 0xD000000000000017;
  v2 = sub_269057774();
  __swift_project_value_buffer(v2, qword_2802F3FF8);
  v3 = sub_269057AA4();
  v11 = 0xD000000000000017;
  v12 = 0x800000026905D1B0;
  if (("rainingPresenter" & 0x2F00000000000000) != 0x2000000000000000)
  {
    v10[0] = 32;
    v10[1] = 0xE100000000000000;
    MEMORY[0x26D62FBC0](0xD00000000000001ALL, 0x800000026905E940);
    MEMORY[0x26D62FBC0](32, 0xE100000000000000);

    v1 = v11;
    v0 = v12;
  }

  v4 = sub_269057764();
  if (os_log_type_enabled(v4, v3))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10[0] = v6;
    *v5 = 136315138;
    v7 = sub_269010108(v1, v0, v10);

    *(v5 + 4) = v7;
    _os_log_impl(&dword_269002000, v4, v3, "%s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x26D6309D0](v6, -1, -1);
    MEMORY[0x26D6309D0](v5, -1, -1);
  }

  else
  {
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {

    sub_26900D268(v9);

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_26903F198()
{
  if (*(v0 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_trainingState))
  {
    sub_26903A078(1);
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    type metadata accessor for SiriSetupCoordinator();
    if (swift_dynamicCastClass())
    {
      v3[0] = 0;
      v4 = 0;
      v5 = 0;
      v6 = 0;

      sub_26900EC94(v1, v3);

      swift_unknownObjectRelease();

      return;
    }

    swift_unknownObjectRelease();
  }

  else
  {
  }

  if (swift_unknownObjectWeakLoadStrong())
  {

    sub_26900E964(v2);

    swift_unknownObjectRelease();
  }
}

uint64_t sub_26903F2C8()
{
  v0[2] = sub_269057A44();
  v0[3] = sub_269057A34();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_26903F374;

  return sub_269035EE0();
}

uint64_t sub_26903F374()
{

  v1 = sub_269057A14();

  return MEMORY[0x2822009F8](sub_269041AB4, v1, v0);
}

uint64_t sub_26903F52C()
{
  MEMORY[0x26D630A50](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26903F568(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_269041A84;

  return sub_26903D104(a1, v4, v5, v6, v7);
}

uint64_t sub_26903F62C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_269057C84();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x2822009F8](sub_26903F72C, 0, 0);
}

uint64_t sub_26903F72C()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_269057C94();
  v5 = sub_269041A0C(&qword_2802F3E88, MEMORY[0x277D85928], MEMORY[0x277D85930]);
  sub_269057E14();
  sub_269041A0C(&unk_2802F3E90, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
  sub_269057CA4();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_26903F8BC;
  v8 = v0[11];

  return MEMORY[0x2822008C8](v8, v0 + 2, v4, v5);
}

uint64_t sub_26903F8BC()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26903FA78, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_26903FA78()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26903FAE4(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_26903FBDC;

  return v6(a1);
}

uint64_t sub_26903FBDC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_26903FCD4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26903FD0C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_269041A84;

  return sub_26903FAE4(a1, v4);
}

uint64_t sub_26903FDC4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26901E18C;

  return sub_26903FAE4(a1, v4);
}

uint64_t sub_26903FE84()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F3D30, &qword_26905B098);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

double sub_26903FF84(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
  }

  return result;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_26903FFAC(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_26903FFBC()
{

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_269040004()
{

  return MEMORY[0x2821FE8E8](v0, 224, 7);
}

uint64_t sub_26904009C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_269040100()
{
  v0 = sub_269057874();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = aBlock - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2690578A4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26900A408(0, &qword_2802F3E00, 0x277D85C78);
  v8 = sub_269057B34();
  aBlock[4] = sub_26903D538;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26900BEF0;
  aBlock[3] = &block_descriptor_127;
  v9 = _Block_copy(aBlock);
  sub_269057884();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_269041A0C(&qword_2802F3420, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802F3E10, &unk_269059E90);
  sub_26900A4E8();
  sub_269057C14();
  MEMORY[0x26D62FD80](0, v7, v3, v9);
  _Block_release(v9);

  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_269040398(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result <= 2u)
  {
    if (!result)
    {
      return result;
    }

    if (result == 1)
    {
      v5 = 3305;
    }

    else
    {
      v5 = 3306;
    }
  }

  else if (result > 4u)
  {
    if (result != 5)
    {
      return result;
    }

    v5 = 3309;
  }

  else if (result == 3)
  {
    v5 = 3307;
  }

  else
  {
    v5 = 3308;
  }

  if (qword_2802F3228 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F3E70, &qword_26905B170);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_269059EE0;
  *(inited + 32) = 0x7463757274736E69;
  *(inited + 40) = 0xEB000000006E6F69;
  *(inited + 48) = a2;
  *(inited + 56) = a3;

  v7 = sub_2690172AC(inited);
  swift_setDeallocating();
  sub_2690419AC(inited + 32, &qword_2802F3E78, &qword_26905B178);
  if (qword_2802F3220 != -1)
  {
    swift_once();
  }

  v8 = [objc_opt_self() sharedAnalytics];
  if (v8)
  {
    v9 = v8;
    sub_269033284(v7);
    v10 = sub_269057914();

    [v9 logEventWithType:v5 context:v10];
  }
}

uint64_t sub_26904059C(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 72) = a4;
  *(v5 + 80) = v4;
  *(v5 + 121) = a2;
  *(v5 + 56) = a1;
  *(v5 + 64) = a3;
  return MEMORY[0x2822009F8](sub_2690405C4, 0, 0);
}

uint64_t sub_2690405C4()
{
  v47 = v0;
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 121);
  v4 = *(v0 + 56);
  v45 = 0;
  v46 = 0xE000000000000000;
  sub_269057C54();
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  MEMORY[0x26D62FBC0]();
  v5 = sub_269043A34(v4);
  MEMORY[0x26D62FBC0](v5);

  MEMORY[0x26D62FBC0](0x3A657461747320, 0xE700000000000000);
  *(v0 + 120) = v3;
  sub_269057CB4();
  MEMORY[0x26D62FBC0](0x63757274736E6920, 0xED00003A6E6F6974);
  MEMORY[0x26D62FBC0](v2, v1);
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);
  if (qword_2802F3258 != -1)
  {
    swift_once();
  }

  v8 = sub_269057774();
  __swift_project_value_buffer(v8, qword_2802F3FF8);
  v9 = sub_269057AA4();
  v10 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v10 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (v10)
  {
    v45 = 32;
    v46 = 0xE100000000000000;
    MEMORY[0x26D62FBC0](v6, v7);
    MEMORY[0x26D62FBC0](32, 0xE100000000000000);
  }

  v11 = sub_269057764();
  if (os_log_type_enabled(v11, v9))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v45 = v13;
    *v12 = 136315138;
    v14 = sub_269010108(0xD00000000000003FLL, 0x800000026905EB20, &v45);

    *(v12 + 4) = v14;
    _os_log_impl(&dword_269002000, v11, v9, "%s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x26D6309D0](v13, -1, -1);
    MEMORY[0x26D6309D0](v12, -1, -1);
  }

  else
  {
  }

  v16 = *(v0 + 56);
  if (v16 > 3)
  {
    if (v16 > 5)
    {
      if (v16 == 6)
      {
        v28 = sub_269057AA4();
        if (("TrainingResult: " & 0x2F00000000000000) != 0x2000000000000000)
        {
          v45 = 32;
          v46 = 0xE100000000000000;
          MEMORY[0x26D62FBC0](0xD000000000000010, 0x800000026905EB80);
          MEMORY[0x26D62FBC0](v45, v46);
        }

        v29 = sub_269057764();
        if (os_log_type_enabled(v29, v28))
        {
          v30 = swift_slowAlloc();
          v31 = swift_slowAlloc();
          v45 = v31;
          *v30 = 136315138;
          v32 = sub_269010108(0xD00000000000003FLL, 0x800000026905EB20, &v45);

          *(v30 + 4) = v32;
          v33 = v28;
LABEL_46:
          _os_log_impl(&dword_269002000, v29, v33, "%s", v30, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v31);
          MEMORY[0x26D6309D0](v31, -1, -1);
          MEMORY[0x26D6309D0](v30, -1, -1);

LABEL_48:
          sub_26903A078(1);
          goto LABEL_53;
        }

LABEL_47:

        goto LABEL_48;
      }

      if (v16 != 7)
      {
        goto LABEL_37;
      }

      v23 = swift_task_alloc();
      *(v0 + 96) = v23;
      *v23 = v0;
      v24 = sub_269041068;
    }

    else if (v16 == 4)
    {
      v23 = swift_task_alloc();
      *(v0 + 104) = v23;
      *v23 = v0;
      v24 = sub_26904115C;
    }

    else
    {
      v19 = *(v0 + 80);
      v20 = *(v19 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_AVVCRetryCount);
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        __break(1u);
        return result;
      }

      *(v19 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_AVVCRetryCount) = v22;
      if (v22 > 4)
      {
        v25 = sub_269057AA4();
        v26 = "Skipped training";
        if (("Skipped training" & 0x2F00000000000000) == 0x2000000000000000)
        {
          goto LABEL_44;
        }

        v45 = 32;
        v46 = 0xE100000000000000;
        v27 = 0xD00000000000003ALL;
LABEL_43:
        MEMORY[0x26D62FBC0](v27, v26 | 0x8000000000000000);
        MEMORY[0x26D62FBC0](v45, v46);

LABEL_44:
        v29 = sub_269057764();
        if (os_log_type_enabled(v29, v25))
        {
          v30 = swift_slowAlloc();
          v31 = swift_slowAlloc();
          v45 = v31;
          *v30 = 136315138;
          v39 = sub_269010108(0xD00000000000003FLL, 0x800000026905EB20, &v45);

          *(v30 + 4) = v39;
          v33 = v25;
          goto LABEL_46;
        }

        goto LABEL_47;
      }

      v23 = swift_task_alloc();
      *(v0 + 112) = v23;
      *v23 = v0;
      v24 = sub_269041250;
    }
  }

  else
  {
    if (v16 <= 1)
    {
      if (!v16)
      {
        v17 = swift_allocObject();
        swift_unknownObjectWeakInit();

        v18 = sub_269041720;
        goto LABEL_27;
      }

      if (v16 == 1)
      {
        v17 = swift_allocObject();
        swift_unknownObjectWeakInit();

        v18 = sub_2690416E8;
LABEL_27:
        sub_269039C20(1, v18, v17);

LABEL_53:
        v44 = *(v0 + 8);

        return v44();
      }

LABEL_37:
      v45 = 0;
      v46 = 0xE000000000000000;
      sub_269057C54();
      v34 = v46;
      *(v0 + 32) = v45;
      *(v0 + 40) = v34;
      MEMORY[0x26D62FBC0](0x206E776F6E6B6E55, 0xEF203A65756C6176);
      *(v0 + 48) = v16;
      type metadata accessor for SRSTrainingManagerSessionStatus(0);
      sub_269057CB4();
      v35 = *(v0 + 32);
      v36 = *(v0 + 40);
      v37 = sub_269057A94();
      v38 = HIBYTE(v36) & 0xF;
      if ((v36 & 0x2000000000000000) == 0)
      {
        v38 = v35 & 0xFFFFFFFFFFFFLL;
      }

      if (v38)
      {
        v45 = 32;
        v46 = 0xE100000000000000;
        MEMORY[0x26D62FBC0](v35, v36);
        MEMORY[0x26D62FBC0](v45, v46);
      }

      v40 = sub_269057764();
      if (os_log_type_enabled(v40, v37))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v45 = v42;
        *v41 = 136315138;
        v43 = sub_269010108(0xD00000000000003FLL, 0x800000026905EB20, &v45);

        *(v41 + 4) = v43;
        _os_log_impl(&dword_269002000, v40, v37, "%s", v41, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v42);
        MEMORY[0x26D6309D0](v42, -1, -1);
        MEMORY[0x26D6309D0](v41, -1, -1);
      }

      else
      {
      }

      goto LABEL_53;
    }

    if (v16 != 2)
    {
      v25 = sub_269057A94();
      v26 = "ors. Cancelling enrollment";
      if (("ors. Cancelling enrollment" & 0x2F00000000000000) == 0x2000000000000000)
      {
        goto LABEL_44;
      }

      v45 = 32;
      v46 = 0xE100000000000000;
      v27 = 0xD000000000000057;
      goto LABEL_43;
    }

    v23 = swift_task_alloc();
    *(v0 + 88) = v23;
    *v23 = v0;
    v24 = sub_269040F74;
  }

  v23[1] = v24;

  return sub_2690366E4(1);
}

uint64_t sub_269040F74()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_269041068()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_26904115C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_269041250()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_269041344(uint64_t a1)
{
  if (a1)
  {
    v2 = v1;
    v3 = 0x800000026905E850;
    if (qword_2802F3258 != -1)
    {
      swift_once();
    }

    v4 = 0xD00000000000002BLL;
    v5 = sub_269057774();
    __swift_project_value_buffer(v5, qword_2802F3FF8);
    v6 = sub_269057A94();
    v17 = 0xD00000000000002BLL;
    v18 = 0x800000026905E850;
    if (("(voiceProfile:savingError:)" & 0x2F00000000000000) != 0x2000000000000000)
    {
      v16[0] = 32;
      v16[1] = 0xE100000000000000;
      MEMORY[0x26D62FBC0](0xD00000000000002BLL, 0x800000026905E880);
      MEMORY[0x26D62FBC0](32, 0xE100000000000000);

      v4 = v17;
      v3 = v18;
    }

    v7 = sub_269057764();
    if (os_log_type_enabled(v7, v6))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v16[0] = v9;
      *v8 = 136315138;
      v10 = sub_269010108(v4, v3, v16);

      *(v8 + 4) = v10;
      _os_log_impl(&dword_269002000, v7, v6, "%s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v9);
      MEMORY[0x26D6309D0](v9, -1, -1);
      MEMORY[0x26D6309D0](v8, -1, -1);
    }

    else
    {
    }

    v11 = *(v2 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_voiceProfileManager);
    if (v11)
    {
      v12 = *(v2 + OBJC_IVAR____TtC9SiriSetup22VoiceTrainingPresenter_trainingManager);
      v13 = v11;
      if (v12)
      {
        v14 = [v12 voiceProfile];
      }

      else
      {
        v14 = 0;
      }

      v15 = v14;
      [v11 deleteUserVoiceProfile_];
    }
  }
}

uint64_t objectdestroy_17Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_2690415E8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_26901E18C;

  return sub_26903D104(a1, v4, v5, v6, v7);
}

uint64_t sub_269041758(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_269041A84;

  return sub_2690386DC(a1, v4, v5, v6, v7);
}

uint64_t objectdestroy_104Tm()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t objectdestroy_98Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_2690418CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F3E50, &qword_26905B100);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_269041944(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2690419AC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_269041A0C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__int128 *sub_269041AB8(__int128 *a1)
{
  v3 = a1[11];
  v43 = a1[10];
  v44 = v3;
  v45 = a1[12];
  v4 = a1[7];
  v39 = a1[6];
  v40 = v4;
  v5 = a1[9];
  v41 = a1[8];
  v42 = v5;
  v6 = a1[3];
  v35 = a1[2];
  v36 = v6;
  v7 = a1[5];
  v37 = a1[4];
  v38 = v7;
  v8 = a1[1];
  v34[0] = *a1;
  v34[1] = v8;
  *&v1[OBJC_IVAR____TtC9SiriSetup34LanguageSelectionWelcomeController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC9SiriSetup34LanguageSelectionWelcomeController_orbView] = 0;
  v9 = &v1[OBJC_IVAR____TtC9SiriSetup34LanguageSelectionWelcomeController_viewModel];
  v10 = a1[11];
  *(v9 + 10) = a1[10];
  *(v9 + 11) = v10;
  *(v9 + 12) = a1[12];
  v11 = a1[7];
  *(v9 + 6) = a1[6];
  *(v9 + 7) = v11;
  v12 = a1[9];
  *(v9 + 8) = a1[8];
  *(v9 + 9) = v12;
  v13 = a1[3];
  *(v9 + 2) = a1[2];
  *(v9 + 3) = v13;
  v14 = a1[5];
  *(v9 + 4) = a1[4];
  *(v9 + 5) = v14;
  v15 = a1[1];
  *v9 = *a1;
  *(v9 + 1) = v15;
  sub_269009E3C(v34, v33);
  v16 = sub_269057944();
  if (*(&v35 + 1))
  {

    v17 = sub_269057944();
  }

  else
  {
    v17 = 0;
  }

  v18 = sub_269017F70();
  v32.receiver = v1;
  v32.super_class = type metadata accessor for LanguageSelectionWelcomeController();
  v19 = objc_msgSendSuper2(&v32, sel_initWithTitle_detailText_icon_contentLayout_, v16, v17, v18, 2);

  v20 = v37;
  if (v37)
  {
  }

  else
  {
    v20 = MEMORY[0x277D84F90];
  }

  sub_269009EE0(v34);
  v21 = *(v20 + 16);
  if (v21)
  {
    v22 = objc_opt_self();
    v23 = v20 + 40;
    do
    {

      v24 = [v22 boldButton];
      v25 = sub_269057944();

      [v24 setTitle:v25 forState:0];

      [v24 addTarget:v19 action:sel_continueTappedWithSender_ forControlEvents:64];
      v26 = [v19 &selRef_readFrom_];
      [v26 addButton_];

      v23 += 16;
      --v21;
    }

    while (v21);
  }

  v27 = objc_opt_self();
  v28 = sub_269057944();
  v29 = [v27 linkWithBundleIdentifier_];

  v30 = [v19 buttonTray];
  [v30 setPrivacyLinkController_];

  return v19;
}

uint64_t sub_269041DD4(void *a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = [a1 currentTitle];
    if (v3)
    {
      v4 = v3;
      v5 = sub_269057954();
      v7 = v6;
    }

    else
    {
      v5 = 0;
      v7 = 0xE000000000000000;
    }

    sub_269043814(v5, v7);

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_269041F50()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LanguageSelectionWelcomeController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_26904203C(void *a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v168 = a5;
  v169 = sub_269057714();
  v162 = *(v169 - 8);
  MEMORY[0x28223BE20](v169);
  v161 = &v160 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v6[OBJC_IVAR____TtC9SiriSetup26LanguageSelectionPresenter_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v12 = &v6[OBJC_IVAR____TtC9SiriSetup26LanguageSelectionPresenter_presentingViewController];
  *v12 = 0;
  *(v12 + 1) = 0;
  v170 = OBJC_IVAR____TtC9SiriSetup26LanguageSelectionPresenter_languages;
  *&v6[OBJC_IVAR____TtC9SiriSetup26LanguageSelectionPresenter_languages] = MEMORY[0x277D84F98];
  v13 = &v6[OBJC_IVAR____TtC9SiriSetup26LanguageSelectionPresenter_dataSource];
  *v13 = a1;
  *(v13 + 1) = a2;
  v14 = &v6[OBJC_IVAR____TtC9SiriSetup26LanguageSelectionPresenter_dataSourceWriter];
  *v14 = a3;
  *(v14 + 1) = a4;
  ObjectType = swift_getObjectType();
  v16 = *(a2 + 80);
  v17 = a1;
  v167 = a3;
  v174 = v17;
  v175 = ObjectType;
  v18 = v16(ObjectType, a2);
  v172 = v6;
  v6[OBJC_IVAR____TtC9SiriSetup26LanguageSelectionPresenter_viewStyle] = v18;
  v19 = 0x800000026905EDE0;
  if (qword_2802F3248 != -1)
  {
LABEL_75:
    swift_once();
  }

  LODWORD(v177) = byte_2802F5130;
  v20 = sub_269051B18(byte_2802F5130);
  *&v196[0] = 0xD000000000000018;
  *(&v196[0] + 1) = v19;
  MEMORY[0x26D62FBC0](v20);

  v21 = v196[0];
  v22 = sub_26904DCD8(0, 1, 1, MEMORY[0x277D84F90]);
  v24 = *(v22 + 2);
  v23 = *(v22 + 3);
  v25 = v23 >> 1;
  v26 = v24 + 1;
  if (v23 >> 1 <= v24)
  {
    v22 = sub_26904DCD8((v23 > 1), v24 + 1, 1, v22);
    v23 = *(v22 + 3);
    v25 = v23 >> 1;
  }

  *(v22 + 2) = v26;
  *&v22[16 * v24 + 32] = v21;
  if (v25 < (v24 + 2))
  {
    v22 = sub_26904DCD8((v23 > 1), v24 + 2, 1, v22);
  }

  *(v22 + 2) = v24 + 2;
  v27 = &v22[16 * v26];
  *(v27 + 4) = 0xD000000000000018;
  *(v27 + 5) = v19;
  v28 = (v22 + 40);
  v29 = -v24;
  v30 = -1;
  while (v29 + v30 != 1)
  {
    if (++v30 >= *(v22 + 2))
    {
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
      goto LABEL_75;
    }

    v31 = v28 + 2;
    v32 = *(v28 - 1);
    v33 = *v28;

    v34 = sub_26902F7F4(v32, v33, 0);
    v36 = v35;

    v28 = v31;
    if (v36)
    {

      v19 = v36;
      goto LABEL_20;
    }
  }

  v37 = 0x800000026905BF00;
  *&v196[0] = 0;
  *(&v196[0] + 1) = 0xE000000000000000;
  sub_269057C54();
  MEMORY[0x26D62FBC0](0xD00000000000002ALL, 0x800000026905BF40);
  MEMORY[0x26D62FBC0](0xD000000000000018, v19);
  MEMORY[0x26D62FBC0](0xD000000000000015, 0x800000026905BF70);
  v38 = *(&v196[0] + 1);
  v39 = *&v196[0];
  if (qword_2802F3258 != -1)
  {
LABEL_77:
    swift_once();
  }

  v40 = sub_269057774();
  __swift_project_value_buffer(v40, qword_2802F3FF8);
  v41 = sub_269057A94();
  v42 = 0xD00000000000003BLL;
  *&v196[0] = 0xD00000000000003BLL;
  *(&v196[0] + 1) = v37;
  v43 = HIBYTE(v38) & 0xF;
  if ((v38 & 0x2000000000000000) == 0)
  {
    v43 = v39 & 0xFFFFFFFFFFFFLL;
  }

  if (v43)
  {
    *&v195[0] = 32;
    *(&v195[0] + 1) = 0xE100000000000000;
    MEMORY[0x26D62FBC0](v39, v38);
    MEMORY[0x26D62FBC0](*&v195[0], *(&v195[0] + 1));

    v37 = *(&v196[0] + 1);
    v42 = *&v196[0];
  }

  v44 = sub_269057764();
  if (os_log_type_enabled(v44, v41))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    *&v195[0] = v46;
    *v45 = 136315138;
    v47 = sub_269010108(v42, v37, v195);

    *(v45 + 4) = v47;
    _os_log_impl(&dword_269002000, v44, v41, "%s", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v46);
    MEMORY[0x26D6309D0](v46, -1, -1);
    MEMORY[0x26D6309D0](v45, -1, -1);
  }

  else
  {
  }

  v34 = 0xD000000000000018;
LABEL_20:
  v48 = v177;
  v49 = sub_2690519EC(v177);
  *&v196[0] = v34;
  *(&v196[0] + 1) = v19;
  strcpy(v195, "%DEVICE_NAME%");
  HIWORD(v195[0]) = -4864;
  *&v178 = v49;
  *(&v178 + 1) = v50;
  sub_26900BE9C();
  v51 = sub_269057BE4();
  v53 = v52;

  v54 = sub_2690519EC(v48);
  *&v196[0] = v51;
  *(&v196[0] + 1) = v53;
  v171 = 0xD000000000000014;
  *&v195[0] = 0xD000000000000014;
  *(&v195[0] + 1) = 0x800000026905BEA0;
  v176 = 0x800000026905BEA0;
  *&v178 = v54;
  *(&v178 + 1) = v55;
  v56 = sub_269057BE4();
  v165 = v57;
  v166 = v56;

  v58 = 0x800000026905EE00;
  v59 = sub_269051B18(v48);
  *&v196[0] = 0xD00000000000001BLL;
  *(&v196[0] + 1) = 0x800000026905EE00;
  MEMORY[0x26D62FBC0](v59);

  v60 = v196[0];
  v61 = sub_26904DCD8(0, 1, 1, MEMORY[0x277D84F90]);
  v63 = *(v61 + 2);
  v62 = *(v61 + 3);
  v64 = v62 >> 1;
  v65 = v63 + 1;
  if (v62 >> 1 <= v63)
  {
    v61 = sub_26904DCD8((v62 > 1), v63 + 1, 1, v61);
    v62 = *(v61 + 3);
    v64 = v62 >> 1;
  }

  *(v61 + 2) = v65;
  *&v61[16 * v63 + 32] = v60;
  v173 = a2;
  if (v64 < (v63 + 2))
  {
    v61 = sub_26904DCD8((v62 > 1), v63 + 2, 1, v61);
  }

  *(v61 + 2) = v63 + 2;
  v66 = &v61[16 * v65];
  *(v66 + 4) = 0xD00000000000001BLL;
  *(v66 + 5) = 0x800000026905EE00;
  v67 = (v61 + 40);
  v19 = -v63;
  a2 = -1;
  while (v19 + a2 != 1)
  {
    if (++a2 >= *(v61 + 2))
    {
      goto LABEL_74;
    }

    v68 = v67 + 2;
    v69 = *(v67 - 1);
    v70 = *v67;

    v71 = sub_26902F7F4(v69, v70, 0);
    v73 = v72;

    v67 = v68;
    if (v73)
    {

      v58 = v73;
      goto LABEL_40;
    }
  }

  *&v196[0] = 0;
  *(&v196[0] + 1) = 0xE000000000000000;
  sub_269057C54();
  MEMORY[0x26D62FBC0](0xD00000000000002ALL, 0x800000026905BF40);
  MEMORY[0x26D62FBC0](0xD00000000000001BLL, 0x800000026905EE00);
  MEMORY[0x26D62FBC0](0xD000000000000015, 0x800000026905BF70);
  a2 = *(&v196[0] + 1);
  v74 = *&v196[0];
  if (qword_2802F3258 != -1)
  {
    swift_once();
  }

  v75 = sub_269057774();
  __swift_project_value_buffer(v75, qword_2802F3FF8);
  LODWORD(v164) = sub_269057A94();
  v76 = 0xD00000000000003BLL;
  *&v196[0] = 0xD00000000000003BLL;
  *(&v196[0] + 1) = 0x800000026905BF00;
  v77 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v77 = v74 & 0xFFFFFFFFFFFFLL;
  }

  if (v77)
  {
    *&v195[0] = 32;
    *(&v195[0] + 1) = 0xE100000000000000;
    MEMORY[0x26D62FBC0](v74, a2);
    MEMORY[0x26D62FBC0](*&v195[0], *(&v195[0] + 1));

    v78 = *(&v196[0] + 1);
    v76 = *&v196[0];
  }

  else
  {
    v78 = 0x800000026905BF00;
  }

  v79 = sub_269057764();
  v80 = v164;
  if (os_log_type_enabled(v79, v164))
  {
    v81 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    *&v195[0] = v82;
    *v81 = 136315138;
    v83 = sub_269010108(v76, v78, v195);

    *(v81 + 4) = v83;
    _os_log_impl(&dword_269002000, v79, v80, "%s", v81, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v82);
    MEMORY[0x26D6309D0](v82, -1, -1);
    MEMORY[0x26D6309D0](v81, -1, -1);
  }

  else
  {
  }

  v71 = 0xD00000000000001BLL;
LABEL_40:
  v84 = v173;
  v85 = v177;
  v86 = sub_2690519EC(v177);
  *&v196[0] = v71;
  *(&v196[0] + 1) = v58;
  strcpy(v195, "%DEVICE_NAME%");
  HIWORD(v195[0]) = -4864;
  *&v178 = v86;
  *(&v178 + 1) = v87;
  v19 = MEMORY[0x277D837D0];
  v88 = sub_269057BE4();
  v90 = v89;

  v91 = sub_2690519EC(v85);
  *&v196[0] = v88;
  *(&v196[0] + 1) = v90;
  *&v195[0] = v171;
  *(&v195[0] + 1) = v176;
  *&v178 = v91;
  *(&v178 + 1) = v92;
  v93 = sub_269057BE4();
  v163 = v94;
  v164 = v93;

  v95 = v175;
  v176 = (*(v84 + 88))(v175, v84);
  v177 = v96;
  if (!v96)
  {
    v97 = [objc_opt_self() currentLocale];
    v98 = v161;
    sub_269057704();

    v176 = sub_2690576F4();
    v177 = v99;
    (*(v162 + 8))(v98, v169);
  }

  v100 = MEMORY[0x277D84F90];
  v101 = (*(v84 + 40))(v95, v84);
  if (v101)
  {
    v102 = v101;
  }

  else
  {
    v102 = v100;
  }

  v103 = *(v102 + 16);
  if (v103)
  {
    v104 = 0;
    v105 = v102 + 40;
    v175 = *(v102 + 16);
    v161 = (v103 - 1);
    v162 = v102 + 40;
    while (2)
    {
      v173 = v100;
      v106 = (v105 + 16 * v104);
      v37 = v104;
      while (1)
      {
        if (v37 >= *(v102 + 16))
        {
          __break(1u);
          goto LABEL_73;
        }

        v38 = *(v106 - 1);
        a2 = *v106;
        v107 = qword_2802F3220;

        if (v107 != -1)
        {
          swift_once();
        }

        v108 = [objc_opt_self() sharedInstance];
        if (!v108)
        {
          goto LABEL_79;
        }

        v109 = v108;
        v110 = sub_269057944();
        v19 = sub_269057944();
        v111 = [v109 localizedCompactNameForSiriLanguage:v110 inDisplayLanguage:v19];

        if (v111)
        {
          break;
        }

        ++v37;

        v106 += 2;
        if (v175 == v37)
        {
          v100 = v173;
          goto LABEL_71;
        }
      }

      v171 = sub_269057954();
      v113 = v112;

      v169 = v113;

      v114 = v173;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v114 = sub_26904DCD8(0, *(v114 + 2) + 1, 1, v114);
      }

      v116 = *(v114 + 2);
      v115 = *(v114 + 3);
      if (v116 >= v115 >> 1)
      {
        v114 = sub_26904DCD8((v115 > 1), v116 + 1, 1, v114);
      }

      *(v114 + 2) = v116 + 1;
      v173 = v114;
      v117 = &v114[16 * v116];
      v118 = v172;
      v39 = v169;
      v19 = v170;
      *(v117 + 4) = v171;
      *(v117 + 5) = v39;
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v195[0] = *&v118[v19];
      v120 = *&v195[0];
      *&v118[v19] = 0x8000000000000000;
      v122 = sub_269016B94(v171, v39);
      v123 = *(v120 + 16);
      v124 = (v121 & 1) == 0;
      v125 = v123 + v124;
      if (__OFADD__(v123, v124))
      {
        __break(1u);
        goto LABEL_77;
      }

      v19 = v121;
      if (*(v120 + 24) >= v125)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v128 = *&v195[0];
          if ((v121 & 1) == 0)
          {
            goto LABEL_68;
          }
        }

        else
        {
          sub_2690485E4();
          v128 = *&v195[0];
          if ((v19 & 1) == 0)
          {
            goto LABEL_68;
          }
        }
      }

      else
      {
        sub_269047FEC(v125, isUniquelyReferenced_nonNull_native);
        v126 = sub_269016B94(v171, v169);
        if ((v19 & 1) != (v127 & 1))
        {
          goto LABEL_80;
        }

        v122 = v126;
        v128 = *&v195[0];
        if ((v19 & 1) == 0)
        {
LABEL_68:
          v128[(v122 >> 6) + 8] |= 1 << v122;
          v130 = (v128[6] + 16 * v122);
          v131 = v169;
          *v130 = v171;
          v130[1] = v131;
          v132 = (v128[7] + 16 * v122);
          *v132 = v38;
          v132[1] = a2;
          v133 = v128[2];
          v134 = __OFADD__(v133, 1);
          v135 = v133 + 1;
          if (!v134)
          {
            v128[2] = v135;
LABEL_70:
            v104 = v37 + 1;
            *&v172[v170] = v128;
            swift_endAccess();
            v105 = v162;
            v100 = v173;
            if (v161 != v37)
            {
              continue;
            }

            goto LABEL_71;
          }

          __break(1u);
LABEL_79:
          __break(1u);
LABEL_80:
          result = sub_269057E04();
          __break(1u);
          return result;
        }
      }

      break;
    }

    v129 = (v128[7] + 16 * v122);
    *v129 = v38;
    v129[1] = a2;

    goto LABEL_70;
  }

LABEL_71:

  v136 = v172;
  v137 = &v172[OBJC_IVAR____TtC9SiriSetup26LanguageSelectionPresenter_viewModel];
  *v137 = 0;
  *(v137 + 1) = 0;
  v138 = v165;
  *(v137 + 2) = v166;
  *(v137 + 3) = v138;
  v139 = v163;
  *(v137 + 4) = v164;
  *(v137 + 5) = v139;
  *(v137 + 6) = 0;
  *(v137 + 7) = 0xE000000000000000;
  *(v137 + 8) = v100;
  *(v137 + 72) = 0u;
  *(v137 + 88) = 0u;
  *(v137 + 104) = 0u;
  *(v137 + 120) = 0u;
  *(v137 + 136) = 0u;
  v137[152] = 2;
  *(v137 + 153) = *v194;
  *(v137 + 39) = *&v194[3];
  *(v137 + 20) = 0;
  *(v137 + 21) = 0;
  *(v137 + 183) = 0;
  *(v137 + 22) = 0;
  *(v137 + 187) = v192;
  v137[191] = v193;
  *(v137 + 24) = 0;
  *(v137 + 25) = 0;
  *&v136[OBJC_IVAR____TtC9SiriSetup26LanguageSelectionPresenter_page] = v168;
  v140 = type metadata accessor for LanguageSelectionPresenter();
  v191.receiver = v136;
  v191.super_class = v140;

  v141 = objc_msgSendSuper2(&v191, sel_init);
  v142 = &v141[OBJC_IVAR____TtC9SiriSetup26LanguageSelectionPresenter_viewModel];
  v143 = v141[OBJC_IVAR____TtC9SiriSetup26LanguageSelectionPresenter_viewStyle];
  swift_beginAccess();
  v195[0] = *v142;
  v144 = v142[1];
  v145 = v142[2];
  v146 = v142[4];
  v195[3] = v142[3];
  v195[4] = v146;
  v195[1] = v144;
  v195[2] = v145;
  v147 = v142[5];
  v148 = v142[6];
  v149 = v142[8];
  v195[7] = v142[7];
  v195[8] = v149;
  v195[5] = v147;
  v195[6] = v148;
  v150 = v142[9];
  v151 = v142[10];
  v152 = v142[12];
  v195[11] = v142[11];
  v195[12] = v152;
  v195[9] = v150;
  v195[10] = v151;
  v187 = v142[9];
  v188 = v142[10];
  v189 = v142[11];
  v190 = v142[12];
  v183 = v142[5];
  v184 = v142[6];
  v185 = v142[7];
  v186 = v142[8];
  v179 = v142[1];
  v180 = v142[2];
  v181 = v142[3];
  v182 = v142[4];
  v178 = *v142;
  v153 = v141;
  sub_269009E3C(v195, v196);
  v154 = sub_269043150(v143, &v178);
  v156 = v155;

  v196[10] = v188;
  v196[11] = v189;
  v196[12] = v190;
  v196[6] = v184;
  v196[7] = v185;
  v196[8] = v186;
  v196[9] = v187;
  v196[2] = v180;
  v196[3] = v181;
  v196[4] = v182;
  v196[5] = v183;
  v196[0] = v178;
  v196[1] = v179;
  sub_269009EE0(v196);
  v157 = &v153[OBJC_IVAR____TtC9SiriSetup26LanguageSelectionPresenter_presentingViewController];
  v158 = *&v153[OBJC_IVAR____TtC9SiriSetup26LanguageSelectionPresenter_presentingViewController];
  *v157 = v154;
  v157[1] = v156;

  return v153;
}

char *sub_269043150(char a1, _OWORD *a2)
{
  v2 = a2[11];
  v30[10] = a2[10];
  v30[11] = v2;
  v30[12] = a2[12];
  v3 = a2[7];
  v30[6] = a2[6];
  v30[7] = v3;
  v4 = a2[9];
  v30[8] = a2[8];
  v30[9] = v4;
  v5 = a2[3];
  v30[2] = a2[2];
  v30[3] = v5;
  v6 = a2[5];
  v30[4] = a2[4];
  v30[5] = v6;
  v7 = a2[1];
  v30[0] = *a2;
  v30[1] = v7;
  if (a1)
  {
    v9 = 0xD000000000000030;
    v10 = 0x800000026905BF90;
    *&v29[0] = 0;
    *(&v29[0] + 1) = 0xE000000000000000;
    sub_269057C54();
    MEMORY[0x26D62FBC0](0xD000000000000036, 0x800000026905EE20);
    LOBYTE(v28[0]) = a1;
    sub_269057CB4();
    MEMORY[0x26D62FBC0](0x6C696E202CLL, 0xE500000000000000);
    v11 = v29[0];
    if (qword_2802F3258 != -1)
    {
      swift_once();
    }

    v12 = sub_269057774();
    __swift_project_value_buffer(v12, qword_2802F3FF8);
    v13 = sub_269057A94();
    *&v29[0] = 0xD000000000000030;
    *(&v29[0] + 1) = 0x800000026905BF90;
    v14 = HIBYTE(*(&v11 + 1)) & 0xFLL;
    if ((*(&v11 + 1) & 0x2000000000000000) == 0)
    {
      v14 = v11 & 0xFFFFFFFFFFFFLL;
    }

    if (v14)
    {
      v28[0] = 32;
      v28[1] = 0xE100000000000000;
      MEMORY[0x26D62FBC0](v11, *(&v11 + 1));
      MEMORY[0x26D62FBC0](32, 0xE100000000000000);

      v10 = *(&v29[0] + 1);
      v9 = *&v29[0];
    }

    v15 = sub_269057764();
    if (os_log_type_enabled(v15, v13))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v28[0] = v17;
      *v16 = 136315138;
      v18 = sub_269010108(v9, v10, v28);

      *(v16 + 4) = v18;
      _os_log_impl(&dword_269002000, v15, v13, "%s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v17);
      MEMORY[0x26D6309D0](v17, -1, -1);
      MEMORY[0x26D6309D0](v16, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  else
  {
    v19 = a2[11];
    v29[10] = a2[10];
    v29[11] = v19;
    v29[12] = a2[12];
    v20 = a2[7];
    v29[6] = a2[6];
    v29[7] = v20;
    v21 = a2[9];
    v29[8] = a2[8];
    v29[9] = v21;
    v22 = a2[3];
    v29[2] = a2[2];
    v29[3] = v22;
    v23 = a2[5];
    v29[4] = a2[4];
    v29[5] = v23;
    v24 = a2[1];
    v29[0] = *a2;
    v29[1] = v24;
    v25 = objc_allocWithZone(type metadata accessor for LanguageSelectionWelcomeController());
    sub_269009E3C(v30, v28);
    v26 = sub_269041AB8(v29);
    *(v26 + OBJC_IVAR____TtC9SiriSetup34LanguageSelectionWelcomeController_delegate + 8) = &off_2879A8490;
    swift_unknownObjectWeakAssign();
    return v26;
  }
}

id sub_2690434A4(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for LanguageSelectionPresenter();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_2690435D0@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC9SiriSetup26LanguageSelectionPresenter_viewModel);
  swift_beginAccess();
  v4 = v3[9];
  v5 = v3[11];
  v32 = v3[10];
  v33 = v5;
  v6 = v3[11];
  v34 = v3[12];
  v7 = v3[5];
  v8 = v3[7];
  v28 = v3[6];
  v9 = v28;
  v29 = v8;
  v10 = v3[7];
  v11 = v3[9];
  v30 = v3[8];
  v12 = v30;
  v31 = v11;
  v13 = v3[1];
  v14 = v3[3];
  v24 = v3[2];
  v15 = v24;
  v25 = v14;
  v16 = v3[3];
  v17 = v3[5];
  v26 = v3[4];
  v18 = v26;
  v27 = v17;
  v19 = v3[1];
  v23[0] = *v3;
  v20 = v23[0];
  v23[1] = v19;
  a1[10] = v32;
  a1[11] = v6;
  a1[12] = v3[12];
  a1[6] = v9;
  a1[7] = v10;
  a1[8] = v12;
  a1[9] = v4;
  a1[2] = v15;
  a1[3] = v16;
  a1[4] = v18;
  a1[5] = v7;
  *a1 = v20;
  a1[1] = v13;
  return sub_269009E3C(v23, v22);
}

uint64_t sub_2690436A0(_OWORD *a1)
{
  v3 = (v1 + OBJC_IVAR____TtC9SiriSetup26LanguageSelectionPresenter_viewModel);
  swift_beginAccess();
  v4 = v3[10];
  v5 = v3[11];
  v6 = v3[8];
  v19[9] = v3[9];
  v19[10] = v4;
  v7 = v3[12];
  v19[11] = v5;
  v19[12] = v7;
  v8 = v3[6];
  v19[7] = v3[7];
  v19[8] = v6;
  v9 = v3[3];
  v19[2] = v3[2];
  v19[3] = v9;
  v10 = v3[4];
  v19[5] = v3[5];
  v19[6] = v8;
  v19[4] = v10;
  v11 = v3[1];
  v19[0] = *v3;
  v19[1] = v11;
  v12 = a1[11];
  v3[10] = a1[10];
  v3[11] = v12;
  v3[12] = a1[12];
  v13 = a1[7];
  v3[6] = a1[6];
  v3[7] = v13;
  v14 = a1[9];
  v3[8] = a1[8];
  v3[9] = v14;
  v15 = a1[3];
  v3[2] = a1[2];
  v3[3] = v15;
  v16 = a1[5];
  v3[4] = a1[4];
  v3[5] = v16;
  v17 = a1[1];
  *v3 = *a1;
  v3[1] = v17;
  return sub_269009EE0(v19);
}

void *sub_2690437CC()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SiriSetup26LanguageSelectionPresenter_presentingViewController);
  v2 = v1;
  return v1;
}

uint64_t sub_269043814(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC9SiriSetup26LanguageSelectionPresenter_languages;
  swift_beginAccess();
  if (*(*(v2 + v6) + 16))
  {

    sub_269016B94(a1, a2);
    v8 = v7;

    if (v8)
    {
      v9 = *(v2 + v6);
      v10 = *(v9 + 16);
      v11 = *(v3 + OBJC_IVAR____TtC9SiriSetup26LanguageSelectionPresenter_dataSourceWriter);
      if (v10)
      {

        v12 = sub_269016B94(a1, a2);
        if (v13)
        {
          v14 = (*(v9 + 56) + 16 * v12);
          v16 = *v14;
          v15 = v14[1];
        }

        else
        {
          v16 = 0;
          v15 = 0;
        }
      }

      else
      {
        v16 = 0;
        v15 = 0;
      }

      v17 = &v11[OBJC_IVAR____TtC9SiriSetup21LocalDataSourceWriter_siriLanguage];
      *v17 = v16;
      *(v17 + 1) = v15;
    }
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {

    sub_26900E6C8(v19);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_269043970()
{
  v0 = [objc_opt_self() currentTraitCollection];
  v1 = [v0 userInterfaceStyle];

  if (v1 == 1)
  {
    v2 = 0x746867694CLL;
  }

  else
  {
    v2 = 1802658116;
  }

  if (v1 == 1)
  {
    v3 = 0xE500000000000000;
  }

  else
  {
    v3 = 0xE400000000000000;
  }

  MEMORY[0x26D62FBC0](v2, v3);

  qword_2802F5120 = 0xD00000000000001BLL;
  *algn_2802F5128 = 0x800000026905EE90;
  return result;
}

uint64_t sub_269043A34(uint64_t a1)
{
  if (a1 > 3)
  {
    if (a1 <= 5)
    {
      if (a1 == 4)
      {
        return 0x63694D646162;
      }

      else
      {
        return 0x52746F4E43565641;
      }
    }

    if (a1 == 6)
    {
      return 0x6C65636E6163;
    }

    if (a1 == 7)
    {
      return 0x74756F656D6974;
    }
  }

  else
  {
    if (a1 > 1)
    {
      if (a1 == 2)
      {
        return 0x6E69616741797274;
      }

      else
      {
        return 0x6E6964726F636572;
      }
    }

    if (!a1)
    {
      return 0xD000000000000012;
    }

    if (a1 == 1)
    {
      return 0xD00000000000001BLL;
    }
  }

  v10[10] = v1;
  v10[11] = v2;
  if (qword_2802F3258 != -1)
  {
    swift_once();
  }

  v4 = sub_269057774();
  __swift_project_value_buffer(v4, qword_2802F3FF8);
  v5 = sub_269057A94();
  v10[2] = 0xD00000000000001ALL;
  v10[3] = 0x800000026905EEB0;
  v10[0] = 32;
  v10[1] = 0xE100000000000000;
  MEMORY[0x26D62FBC0](0x206E776F6E6B6E75, 0xEE00737574617473);
  MEMORY[0x26D62FBC0](32, 0xE100000000000000);

  v6 = sub_269057764();
  if (os_log_type_enabled(v6, v5))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v10[0] = v8;
    *v7 = 136315138;
    v9 = sub_269010108(0xD00000000000001ALL, 0x800000026905EEB0, v10);

    *(v7 + 4) = v9;
    _os_log_impl(&dword_269002000, v6, v5, "%s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x26D6309D0](v8, -1, -1);
    MEMORY[0x26D6309D0](v7, -1, -1);
  }

  else
  {
  }

  return 0;
}

uint64_t sub_269043D38(unsigned __int8 a1)
{
  if (a1 > 3u)
  {
    if (a1 == 4)
    {
      v1 = 0x800000026905EF30;
      if (qword_2802F3248 != -1)
      {
        swift_once();
      }

      v2 = byte_2802F5130;
      v58 = sub_269051B18(byte_2802F5130);
      v121 = 0xD00000000000001DLL;
      v122 = 0x800000026905EF30;
      MEMORY[0x26D62FBC0](v58);

      v59 = sub_26904DCD8(0, 1, 1, MEMORY[0x277D84F90]);
      v61 = *(v59 + 2);
      v60 = *(v59 + 3);
      v62 = v60 >> 1;
      v63 = v61 + 1;
      if (v60 >> 1 <= v61)
      {
        v59 = sub_26904DCD8((v60 > 1), v61 + 1, 1, v59);
        v60 = *(v59 + 3);
        v62 = v60 >> 1;
      }

      *(v59 + 2) = v63;
      v64 = &v59[16 * v61];
      *(v64 + 4) = 0xD00000000000001DLL;
      *(v64 + 5) = 0x800000026905EF30;
      if (v62 < (v61 + 2))
      {
        v59 = sub_26904DCD8((v60 > 1), v61 + 2, 1, v59);
      }

      *(v59 + 2) = v61 + 2;
      v65 = &v59[16 * v63];
      *(v65 + 4) = 0xD00000000000001DLL;
      *(v65 + 5) = 0x800000026905EF30;
      v66 = (v59 + 40);
      v67 = -v61;
      v68 = -1;
      while (v67 + v68 != 1)
      {
        if (++v68 >= *(v59 + 2))
        {
LABEL_91:
          __break(1u);
LABEL_92:
          __break(1u);
LABEL_93:
          __break(1u);
LABEL_94:
          __break(1u);
LABEL_95:
          __break(1u);
          goto LABEL_96;
        }

        v69 = v66 + 2;
        v70 = *(v66 - 1);
        v71 = *v66;

        v4 = sub_26902F7F4(v70, v71, 0);
        v36 = v72;

        v66 = v69;
        if (v36)
        {
LABEL_78:

          v1 = v36;
          goto LABEL_89;
        }
      }
    }

    else if (a1 == 5)
    {
      v1 = 0x800000026905EF10;
      if (qword_2802F3248 != -1)
      {
        swift_once();
      }

      v2 = byte_2802F5130;
      v21 = sub_269051B18(byte_2802F5130);
      v121 = 0xD00000000000001DLL;
      v122 = 0x800000026905EF10;
      MEMORY[0x26D62FBC0](v21);

      v22 = sub_26904DCD8(0, 1, 1, MEMORY[0x277D84F90]);
      v24 = *(v22 + 2);
      v23 = *(v22 + 3);
      v25 = v23 >> 1;
      v26 = v24 + 1;
      if (v23 >> 1 <= v24)
      {
        v22 = sub_26904DCD8((v23 > 1), v24 + 1, 1, v22);
        v23 = *(v22 + 3);
        v25 = v23 >> 1;
      }

      *(v22 + 2) = v26;
      v27 = &v22[16 * v24];
      *(v27 + 4) = 0xD00000000000001DLL;
      *(v27 + 5) = 0x800000026905EF10;
      if (v25 < (v24 + 2))
      {
        v22 = sub_26904DCD8((v23 > 1), v24 + 2, 1, v22);
      }

      *(v22 + 2) = v24 + 2;
      v28 = &v22[16 * v26];
      *(v28 + 4) = 0xD00000000000001DLL;
      *(v28 + 5) = 0x800000026905EF10;
      v29 = (v22 + 40);
      v30 = -v24;
      v31 = -1;
      while (v30 + v31 != 1)
      {
        if (++v31 >= *(v22 + 2))
        {
          goto LABEL_92;
        }

        v32 = v29 + 2;
        v33 = *(v29 - 1);
        v34 = *v29;

        v4 = sub_26902F7F4(v33, v34, 0);
        v36 = v35;

        v29 = v32;
        if (v36)
        {
          goto LABEL_78;
        }
      }
    }

    else
    {
      v1 = 0x800000026905EF10;
      if (qword_2802F3248 != -1)
      {
        swift_once();
      }

      v2 = byte_2802F5130;
      v73 = sub_269051B18(byte_2802F5130);
      v121 = 0xD00000000000001DLL;
      v122 = 0x800000026905EF10;
      MEMORY[0x26D62FBC0](v73);

      v74 = sub_26904DCD8(0, 1, 1, MEMORY[0x277D84F90]);
      v76 = *(v74 + 2);
      v75 = *(v74 + 3);
      v77 = v75 >> 1;
      v78 = v76 + 1;
      if (v75 >> 1 <= v76)
      {
        v74 = sub_26904DCD8((v75 > 1), v76 + 1, 1, v74);
        v75 = *(v74 + 3);
        v77 = v75 >> 1;
      }

      *(v74 + 2) = v78;
      v79 = &v74[16 * v76];
      *(v79 + 4) = 0xD00000000000001DLL;
      *(v79 + 5) = 0x800000026905EF10;
      if (v77 < (v76 + 2))
      {
        v74 = sub_26904DCD8((v75 > 1), v76 + 2, 1, v74);
      }

      *(v74 + 2) = v76 + 2;
      v80 = &v74[16 * v78];
      *(v80 + 4) = 0xD00000000000001DLL;
      *(v80 + 5) = 0x800000026905EF10;
      v81 = (v74 + 40);
      v82 = -v76;
      v83 = -1;
      while (v82 + v83 != 1)
      {
        if (++v83 >= *(v74 + 2))
        {
          goto LABEL_93;
        }

        v84 = v81 + 2;
        v85 = *(v81 - 1);
        v86 = *v81;

        v4 = sub_26902F7F4(v85, v86, 0);
        v36 = v87;

        v81 = v84;
        if (v36)
        {
          goto LABEL_78;
        }
      }
    }

    sub_269057C54();
    MEMORY[0x26D62FBC0](0xD00000000000002ALL, 0x800000026905BF40);
    MEMORY[0x26D62FBC0](0xD00000000000001DLL, v1);
    MEMORY[0x26D62FBC0](0xD000000000000015, 0x800000026905BF70);
    if (qword_2802F3258 != -1)
    {
      swift_once();
    }

    v88 = sub_269057774();
    __swift_project_value_buffer(v88, qword_2802F3FF8);
    v89 = sub_269057A94();
    v121 = 0xD00000000000003BLL;
    v122 = 0x800000026905BF00;
    v90 = sub_269057764();
    if (os_log_type_enabled(v90, v89))
    {
      v91 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      v120[0] = v92;
      *v91 = 136315138;
      v93 = sub_269010108(0xD00000000000003BLL, 0x800000026905BF00, v120);

      *(v91 + 4) = v93;
      _os_log_impl(&dword_269002000, v90, v89, "%s", v91, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v92);
      MEMORY[0x26D6309D0](v92, -1, -1);
      MEMORY[0x26D6309D0](v91, -1, -1);
    }

    else
    {
    }

    v4 = 0xD00000000000001DLL;
  }

  else
  {
    if (a1 < 2u)
    {
      v1 = 0x800000026905EF90;
      if (qword_2802F3248 != -1)
      {
LABEL_96:
        swift_once();
      }

      v2 = byte_2802F5130;
      v3 = sub_269051B18(byte_2802F5130);
      v4 = 0xD00000000000001CLL;
      v121 = 0xD00000000000001CLL;
      v122 = v1;
      MEMORY[0x26D62FBC0](v3);

      v5 = sub_26904DCD8(0, 1, 1, MEMORY[0x277D84F90]);
      v7 = *(v5 + 2);
      v6 = *(v5 + 3);
      v8 = v6 >> 1;
      v9 = v7 + 1;
      if (v6 >> 1 <= v7)
      {
        v5 = sub_26904DCD8((v6 > 1), v7 + 1, 1, v5);
        v6 = *(v5 + 3);
        v8 = v6 >> 1;
      }

      *(v5 + 2) = v9;
      v10 = &v5[16 * v7];
      *(v10 + 4) = 0xD00000000000001CLL;
      *(v10 + 5) = v1;
      if (v8 < (v7 + 2))
      {
        v5 = sub_26904DCD8((v6 > 1), v7 + 2, 1, v5);
      }

      *(v5 + 2) = v7 + 2;
      v11 = &v5[16 * v9];
      *(v11 + 4) = 0xD00000000000001CLL;
      *(v11 + 5) = v1;
      v12 = (v5 + 40);
      v13 = -v7;
      v14 = -1;
      while (v13 + v14 != 1)
      {
        if (++v14 >= *(v5 + 2))
        {
          __break(1u);
          goto LABEL_91;
        }

        v15 = v12 + 2;
        v16 = *(v12 - 1);
        v17 = *v12;

        v18 = sub_26902F7F4(v16, v17, 0);
        v20 = v19;

        v12 = v15;
        if (v20)
        {
          goto LABEL_37;
        }
      }

      goto LABEL_38;
    }

    if (a1 == 2)
    {
      v1 = 0x800000026905EF70;
      if (qword_2802F3248 != -1)
      {
        swift_once();
      }

      v2 = byte_2802F5130;
      v37 = sub_269051B18(byte_2802F5130);
      v4 = 0xD00000000000001CLL;
      v121 = 0xD00000000000001CLL;
      v122 = 0x800000026905EF70;
      MEMORY[0x26D62FBC0](v37);

      v38 = sub_26904DCD8(0, 1, 1, MEMORY[0x277D84F90]);
      v40 = *(v38 + 2);
      v39 = *(v38 + 3);
      v41 = v39 >> 1;
      v42 = v40 + 1;
      if (v39 >> 1 <= v40)
      {
        v38 = sub_26904DCD8((v39 > 1), v40 + 1, 1, v38);
        v39 = *(v38 + 3);
        v41 = v39 >> 1;
      }

      *(v38 + 2) = v42;
      v43 = &v38[16 * v40];
      *(v43 + 4) = 0xD00000000000001CLL;
      *(v43 + 5) = 0x800000026905EF70;
      if (v41 < (v40 + 2))
      {
        v38 = sub_26904DCD8((v39 > 1), v40 + 2, 1, v38);
      }

      *(v38 + 2) = v40 + 2;
      v44 = &v38[16 * v42];
      *(v44 + 4) = 0xD00000000000001CLL;
      *(v44 + 5) = 0x800000026905EF70;
      v45 = (v38 + 40);
      v46 = -v40;
      v47 = -1;
      while (v46 + v47 != 1)
      {
        if (++v47 >= *(v38 + 2))
        {
          goto LABEL_94;
        }

        v48 = v45 + 2;
        v49 = *(v45 - 1);
        v50 = *v45;

        v18 = sub_26902F7F4(v49, v50, 0);
        v20 = v51;

        v45 = v48;
        if (v20)
        {
LABEL_37:

          v4 = v18;
          v1 = v20;
          goto LABEL_89;
        }
      }

LABEL_38:

      sub_269057C54();
      MEMORY[0x26D62FBC0](0xD00000000000002ALL, 0x800000026905BF40);
      MEMORY[0x26D62FBC0](0xD00000000000001CLL, v1);
      MEMORY[0x26D62FBC0](0xD000000000000015, 0x800000026905BF70);
      if (qword_2802F3258 != -1)
      {
        swift_once();
      }

      v52 = sub_269057774();
      __swift_project_value_buffer(v52, qword_2802F3FF8);
      v53 = sub_269057A94();
      v121 = 0xD00000000000003BLL;
      v122 = 0x800000026905BF00;
      v54 = sub_269057764();
      if (os_log_type_enabled(v54, v53))
      {
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v120[0] = v56;
        *v55 = 136315138;
        v57 = sub_269010108(0xD00000000000003BLL, 0x800000026905BF00, v120);

        *(v55 + 4) = v57;
        _os_log_impl(&dword_269002000, v54, v53, "%s", v55, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v56);
        MEMORY[0x26D6309D0](v56, -1, -1);
        MEMORY[0x26D6309D0](v55, -1, -1);
      }

      else
      {
      }

      goto LABEL_89;
    }

    v1 = 0x800000026905EF50;
    if (qword_2802F3248 != -1)
    {
      swift_once();
    }

    v2 = byte_2802F5130;
    v94 = sub_269051B18(byte_2802F5130);
    v121 = 0xD00000000000001ELL;
    v122 = 0x800000026905EF50;
    MEMORY[0x26D62FBC0](v94);

    v95 = sub_26904DCD8(0, 1, 1, MEMORY[0x277D84F90]);
    v97 = *(v95 + 2);
    v96 = *(v95 + 3);
    v98 = v96 >> 1;
    v99 = v97 + 1;
    if (v96 >> 1 <= v97)
    {
      v95 = sub_26904DCD8((v96 > 1), v97 + 1, 1, v95);
      v96 = *(v95 + 3);
      v98 = v96 >> 1;
    }

    *(v95 + 2) = v99;
    v100 = &v95[16 * v97];
    *(v100 + 4) = 0xD00000000000001ELL;
    *(v100 + 5) = 0x800000026905EF50;
    if (v98 < (v97 + 2))
    {
      v95 = sub_26904DCD8((v96 > 1), v97 + 2, 1, v95);
    }

    *(v95 + 2) = v97 + 2;
    v101 = &v95[16 * v99];
    *(v101 + 4) = 0xD00000000000001ELL;
    *(v101 + 5) = 0x800000026905EF50;
    v102 = (v95 + 40);
    v103 = -v97;
    v104 = -1;
    while (v103 + v104 != 1)
    {
      if (++v104 >= *(v95 + 2))
      {
        goto LABEL_95;
      }

      v105 = v102 + 2;
      v106 = *(v102 - 1);
      v107 = *v102;

      v4 = sub_26902F7F4(v106, v107, 0);
      v36 = v108;

      v102 = v105;
      if (v36)
      {
        goto LABEL_78;
      }
    }

    sub_269057C54();
    MEMORY[0x26D62FBC0](0xD00000000000002ALL, 0x800000026905BF40);
    MEMORY[0x26D62FBC0](0xD00000000000001ELL, 0x800000026905EF50);
    MEMORY[0x26D62FBC0](0xD000000000000015, 0x800000026905BF70);
    if (qword_2802F3258 != -1)
    {
      swift_once();
    }

    v109 = sub_269057774();
    __swift_project_value_buffer(v109, qword_2802F3FF8);
    v110 = sub_269057A94();
    v121 = 0xD00000000000003BLL;
    v122 = 0x800000026905BF00;
    v111 = sub_269057764();
    if (os_log_type_enabled(v111, v110))
    {
      v112 = swift_slowAlloc();
      v113 = swift_slowAlloc();
      v120[0] = v113;
      *v112 = 136315138;
      v114 = sub_269010108(0xD00000000000003BLL, 0x800000026905BF00, v120);

      *(v112 + 4) = v114;
      _os_log_impl(&dword_269002000, v111, v110, "%s", v112, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v113);
      MEMORY[0x26D6309D0](v113, -1, -1);
      MEMORY[0x26D6309D0](v112, -1, -1);
    }

    else
    {
    }

    v4 = 0xD00000000000001ELL;
  }

LABEL_89:
  sub_2690519EC(v2);
  v121 = v4;
  v122 = v1;
  strcpy(v120, "%DEVICE_NAME%");
  HIWORD(v120[1]) = -4864;
  sub_26900BE9C();
  v115 = sub_269057BE4();
  v117 = v116;

  sub_2690519EC(v2);
  v121 = v115;
  v122 = v117;
  v120[0] = 0xD000000000000014;
  v120[1] = 0x800000026905BEA0;
  v118 = sub_269057BE4();

  return v118;
}

uint64_t sub_269044E6C(int a1)
{
  if (a1 < 6u)
  {
    return (a1 + 1);
  }

  else
  {
    return 6;
  }
}

unint64_t sub_269044E80@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_269044F10(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_269044EBC()
{
  result = qword_2802F3EF8;
  if (!qword_2802F3EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802F3EF8);
  }

  return result;
}

unint64_t sub_269044F10(unint64_t result)
{
  if (result >= 7)
  {
    return 7;
  }

  return result;
}

void sub_269044FFC()
{
  v0 = 0x800000026905D480;
  if (qword_2802F3258 != -1)
  {
    swift_once();
  }

  v1 = 0xD000000000000013;
  v2 = sub_269057774();
  __swift_project_value_buffer(v2, qword_2802F3FF8);
  v3 = sub_269057A94();
  v9 = 0xD000000000000013;
  v10 = 0x800000026905D480;
  if (("AFAnalyticsProvider" & 0x2F00000000000000) != 0x2000000000000000)
  {
    v8[0] = 32;
    v8[1] = 0xE100000000000000;
    MEMORY[0x26D62FBC0](0xD00000000000006DLL, 0x800000026905F0E0);
    MEMORY[0x26D62FBC0](32, 0xE100000000000000);

    v1 = v9;
    v0 = v10;
  }

  log = sub_269057764();
  if (os_log_type_enabled(log, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8[0] = v5;
    *v4 = 136315138;
    v6 = sub_269010108(v1, v0, v8);

    *(v4 + 4) = v6;
    _os_log_impl(&dword_269002000, log, v3, "%s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x26D6309D0](v5, -1, -1);
    MEMORY[0x26D6309D0](v4, -1, -1);
  }

  else
  {
  }
}

void *sub_2690451CC(uint64_t a1)
{
  v11 = a1;
  v10 = sub_269057B24();
  v2 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_269057B04();
  MEMORY[0x28223BE20](v5);
  v6 = sub_2690578A4();
  MEMORY[0x28223BE20](v6 - 8);
  v1[3] = -1;
  v1[5] = 0;
  swift_unknownObjectWeakInit();
  v1[7] = MEMORY[0x277D84F98];
  v7 = sub_269010AA8();
  v9[1] = "PHS Data in cloud:";
  v9[2] = v7;
  sub_269057894();
  v12 = MEMORY[0x277D84F90];
  sub_269048D88(&qword_2802F39B0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F39B8, &qword_26905A8E8);
  sub_269048DD0(&qword_2802F39C0, &qword_2802F39B8, &qword_26905A8E8);
  sub_269057C14();
  (*(v2 + 104))(v4, *MEMORY[0x277D85260], v10);
  v1[6] = sub_269057B74();
  v1[2] = v11;
  return v1;
}

double sub_269045450(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v127 = a5;
  v10 = sub_269057874();
  v121 = *(v10 - 8);
  v122 = v10;
  MEMORY[0x28223BE20](v10);
  v119 = &v116 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = sub_2690578A4();
  v118 = *(v120 - 8);
  MEMORY[0x28223BE20](v120);
  v117 = &v116 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  aBlock = 0;
  v133 = 0xE000000000000000;
  sub_269057C54();
  v138 = a1;

  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F3F08, &unk_26905B580);
  v13 = sub_269057964();
  MEMORY[0x26D62FBC0](v13);

  MEMORY[0x26D62FBC0](0x6E75522064694420, 0xEA0000000000203ALL);
  v125 = a2;
  v138 = a2;
  type metadata accessor for AFBoolean(0);
  sub_269057CB4();
  MEMORY[0x26D62FBC0](0xD000000000000013, 0x800000026905F430);
  v126 = a3;
  v138 = a3;
  sub_269057CB4();
  v15 = aBlock;
  v14 = v133;
  if (qword_2802F3258 != -1)
  {
    swift_once();
  }

  v16 = v5;
  v17 = sub_269057774();
  v129 = __swift_project_value_buffer(v17, qword_2802F3FF8);
  v18 = sub_269057AA4();
  aBlock = 0xD000000000000044;
  v133 = 0x800000026905F3E0;
  v19 = HIBYTE(v14) & 0xF;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v19 = v15 & 0xFFFFFFFFFFFFLL;
  }

  v128 = 0x800000026905F3E0;
  if (v19)
  {
    v138 = 32;
    v139 = 0xE100000000000000;
    MEMORY[0x26D62FBC0](v15, v14);
    MEMORY[0x26D62FBC0](v138, v139);

    v21 = aBlock;
    v20 = v133;
  }

  else
  {
    v20 = 0x800000026905F3E0;
    v21 = 0xD000000000000044;
  }

  v22 = sub_269057764();
  if (os_log_type_enabled(v22, v18))
  {
    v23 = swift_slowAlloc();
    v24 = a4;
    v25 = swift_slowAlloc();
    v138 = v25;
    *v23 = 136315138;
    v26 = sub_269010108(v21, v20, &v138);

    *(v23 + 4) = v26;
    _os_log_impl(&dword_269002000, v22, v18, "%s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
    v27 = v25;
    a4 = v24;
    MEMORY[0x26D6309D0](v27, -1, -1);
    MEMORY[0x26D6309D0](v23, -1, -1);
  }

  else
  {
  }

  v123 = a4;
  v28 = v127;
  v29 = v16;
  sub_2690475A0(a1, a4, v127);
  v30 = sub_269046CE0(a1, v125, v126);
  if (v30)
  {
    v31 = v30;
    aBlock = a1;

    aBlock = sub_269057964();
    v133 = v32;
    MEMORY[0x26D62FBC0](540945696, 0xE400000000000000);

    v33 = sub_269011260();
    v35 = v34;

    MEMORY[0x26D62FBC0](v33, v35);

    v37 = aBlock;
    v36 = v133;
    v38 = sub_269057AA4();
    aBlock = 0xD000000000000044;
    v133 = v128;
    v39 = HIBYTE(v36) & 0xF;
    if ((v36 & 0x2000000000000000) == 0)
    {
      v39 = v37 & 0xFFFFFFFFFFFFLL;
    }

    if (v39)
    {
      v138 = 32;
      v139 = 0xE100000000000000;
      MEMORY[0x26D62FBC0](v37, v36);
      MEMORY[0x26D62FBC0](v138, v139);

      v41 = aBlock;
      v40 = v133;
    }

    else
    {
      v40 = v128;
      v41 = 0xD000000000000044;
    }

    v45 = sub_269057764();
    if (os_log_type_enabled(v45, v38))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v138 = v47;
      *v46 = 136315138;
      v48 = sub_269010108(v41, v40, &v138);

      *(v46 + 4) = v48;
      _os_log_impl(&dword_269002000, v45, v38, "%s", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v47);
      MEMORY[0x26D6309D0](v47, -1, -1);
      MEMORY[0x26D6309D0](v46, -1, -1);
    }

    else
    {
    }

    if ((*(v31 + 40) & 1) == 0)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v58 = Strong;
        v59 = sub_26904785C(v31);
        sub_26900F204(v31, v59, v60);

        return result;
      }

      goto LABEL_51;
    }

    aBlock = 0;
    v133 = 0xE000000000000000;
    sub_269057C54();

    aBlock = 0xD000000000000018;
    v133 = 0x800000026905F450;

    v49 = sub_269011260();
    v51 = v50;

    MEMORY[0x26D62FBC0](v49, v51);

    MEMORY[0x26D62FBC0](0x742073746E617720, 0xED00006E7572206FLL);
    v53 = aBlock;
    v52 = v133;
    v54 = sub_269057AA4();
    aBlock = 0xD000000000000044;
    v133 = v128;
    v55 = HIBYTE(v52) & 0xF;
    if ((v52 & 0x2000000000000000) == 0)
    {
      v55 = v53 & 0xFFFFFFFFFFFFLL;
    }

    if (v55)
    {
      v138 = 32;
      v139 = 0xE100000000000000;
      MEMORY[0x26D62FBC0](v53, v52);
      MEMORY[0x26D62FBC0](v138, v139);

      v56 = aBlock;
      v128 = v133;
    }

    else
    {
      v56 = 0xD000000000000044;
    }

    v61 = sub_269057764();
    if (os_log_type_enabled(v61, v54))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v138 = v63;
      *v62 = 136315138;
      v64 = sub_269010108(v56, v128, &v138);

      *(v62 + 4) = v64;
      _os_log_impl(&dword_269002000, v61, v54, "%s", v62, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v63);
      MEMORY[0x26D6309D0](v63, -1, -1);
      MEMORY[0x26D6309D0](v62, -1, -1);
    }

    else
    {
    }

    v65 = swift_unknownObjectWeakLoadStrong();
    if (v65)
    {
      v66 = v65;
      v67 = sub_269057AA4();
      v68 = sub_269057764();
      if (os_log_type_enabled(v68, v67))
      {
        v69 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        aBlock = v70;
        *v69 = 136315138;
        v71 = sub_269010108(0xD000000000000026, 0x800000026905F470, &aBlock);

        *(v69 + 4) = v71;
        _os_log_impl(&dword_269002000, v68, v67, "%s", v69, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v70);
        MEMORY[0x26D6309D0](v70, -1, -1);
        MEMORY[0x26D6309D0](v69, -1, -1);
      }

      else
      {
      }

      if (*&v66[OBJC_IVAR____TtC9SiriSetup20SiriSetupCoordinator_currentPresenter])
      {
        v72 = *&v66[OBJC_IVAR____TtC9SiriSetup20SiriSetupCoordinator_currentPresenter + 8];
        ObjectType = swift_getObjectType();
        swift_unknownObjectRetain();
        sub_2690573B4(1, ObjectType, v72);
        swift_unknownObjectRelease();
      }
    }

    v74 = swift_allocObject();
    v74[2] = v29;
    v74[3] = v31;
    v75 = v123;
    v74[4] = v123;
    v74[5] = v28;
    if (*(v31 + 40) != 1)
    {
      swift_retain_n();
      v79 = v75;
LABEL_48:
      v80 = v79;
      swift_retain_n();
      v78 = v80;
      sub_26904640C(1, v29, v31, v78, v28);
      goto LABEL_49;
    }

    swift_beginAccess();
    v76 = *(v31 + 16);
    if (v76 > 1)
    {
      switch(v76)
      {
        case 2u:
          v87 = v123;
          v88 = swift_getObjectType();
          v89 = *(v28 + 56);
          swift_retain_n();
          v90 = v87;
          swift_retain_n();
          v91 = v90;
          if ((v89(v88, v28) & 1) == 0)
          {
            v109 = *(v29 + 48);
            v110 = swift_allocObject();
            v110[2] = v91;
            v110[3] = v28;
            v110[4] = sub_269048CA0;
            v110[5] = v74;
            v136 = sub_269048CEC;
            v137 = v110;
            aBlock = MEMORY[0x277D85DD0];
            v133 = 1107296256;
            v134 = sub_26900BEF0;
            v135 = &block_descriptor_39;
            v128 = _Block_copy(&aBlock);
            v129 = v91;
            v111 = v109;

            v112 = v117;
            sub_269057884();
            v130 = MEMORY[0x277D84F90];
            sub_269048D88(&qword_2802F3420, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802F3E10, &unk_269059E90);
            sub_269048DD0(&qword_2802F3430, &unk_2802F3E10, &unk_269059E90);
            v113 = v119;
            v114 = v122;
            sub_269057C14();
            v115 = v128;
            MEMORY[0x26D62FD80](0, v112, v113, v128);
            _Block_release(v115);

            (*(v121 + 8))(v113, v114);
            (*(v118 + 8))(v112, v120);

            goto LABEL_51;
          }

          v92 = 0x800000026905F4A0;
          v93 = sub_269057AA4();
          v94 = 0xD00000000000002FLL;
          aBlock = 0xD00000000000002FLL;
          v133 = 0x800000026905F4A0;
          if (("raining(dataSource:completion:)" & 0x2F00000000000000) != 0x2000000000000000)
          {
            v130 = 32;
            v131 = 0xE100000000000000;
            MEMORY[0x26D62FBC0](0xD000000000000034, 0x800000026905F4D0);
            MEMORY[0x26D62FBC0](v130, v131);

            v94 = aBlock;
            v92 = v133;
          }

          v95 = sub_269057764();
          if (os_log_type_enabled(v95, v93))
          {
            v96 = swift_slowAlloc();
            v97 = swift_slowAlloc();
            v130 = v97;
            *v96 = 136315138;
            v98 = sub_269010108(v94, v92, &v130);

            *(v96 + 4) = v98;
            _os_log_impl(&dword_269002000, v95, v93, "%s", v96, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v97);
            v99 = v97;
            v28 = v127;
            MEMORY[0x26D6309D0](v99, -1, -1);
            MEMORY[0x26D6309D0](v96, -1, -1);
          }

          else
          {
          }

          sub_26904640C(0, v29, v31, v91, v28);
LABEL_50:

LABEL_51:

          return result;
        case 4u:
          v100 = v123;
          v101 = swift_getObjectType();
          v102 = *(v28 + 32);
          swift_retain_n();
          v103 = v100;
          swift_retain_n();
          v104 = v103;
          v102(&aBlock, v101, v28);
          (*(v28 + 208))(&aBlock, sub_269048CA0, v74, v101, v28);

          goto LABEL_50;
        case 6u:
          swift_retain_n();
          v77 = v123;
          swift_retain_n();
          v78 = v77;
          sub_2690472C4(v78, v28, sub_269048CA0, v74);
LABEL_49:

          goto LABEL_50;
      }

      goto LABEL_64;
    }

    if (*(v31 + 16))
    {
      if (v76 != 1)
      {
LABEL_64:
        swift_retain_n();
        v79 = v123;
        goto LABEL_48;
      }

      v81 = v123;
      v82 = swift_getObjectType();
      v83 = *(v28 + 216);
      swift_retain_n();
      v84 = v81;
      swift_retain_n();
      v85 = v84;
      v86 = v83(v82, v28);
    }

    else
    {
      v105 = v123;
      v106 = swift_getObjectType();
      v107 = *(v28 + 224);
      swift_retain_n();
      v108 = v105;
      swift_retain_n();
      v85 = v108;
      v86 = v107(v106, v28);
    }

    sub_26904640C(v86 & 1, v29, v31, v85, v28);

    goto LABEL_50;
  }

  v42 = swift_unknownObjectWeakLoadStrong();
  if (v42)
  {
    v44 = v42;
    sub_26900FBD0();
  }

  return result;
}

uint64_t sub_26904640C(char a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v22 = a5;
  v8 = sub_269057874();
  v24 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_2690578A4();
  v11 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269010AA8();
  v14 = sub_269057B34();
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = a3;
  *(v16 + 32) = a1;
  v17 = v22;
  *(v16 + 40) = a4;
  *(v16 + 48) = v17;
  aBlock[4] = sub_269048D78;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26900BEF0;
  aBlock[3] = &block_descriptor_48;
  v18 = _Block_copy(aBlock);

  v19 = a4;

  sub_269057884();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_269048D88(&qword_2802F3420, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802F3E10, &unk_269059E90);
  sub_269048DD0(&qword_2802F3430, &unk_2802F3E10, &unk_269059E90);
  sub_269057C14();
  MEMORY[0x26D62FD80](0, v13, v10, v18);
  _Block_release(v18);

  (*(v24 + 8))(v10, v8);
  return (*(v11 + 8))(v13, v23);
}

double sub_269046724(uint64_t a1, uint64_t a2, char a3, void *a4, uint64_t a5)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v30 = a4;
    v31 = a5;
    sub_269057C54();
    v10 = sub_269011260();
    v12 = v11;

    v33 = v10;
    v34 = v12;
    MEMORY[0x26D62FBC0](0x742073746E617720, 0xEE00206E7572206FLL);
    if (a3)
    {
      v13 = 1702195828;
    }

    else
    {
      v13 = 0x65736C6166;
    }

    if (a3)
    {
      v14 = 0xE400000000000000;
    }

    else
    {
      v14 = 0xE500000000000000;
    }

    v15 = 0x800000026905F3E0;
    MEMORY[0x26D62FBC0](v13, v14);

    v16 = v33;
    v17 = v34;
    if (qword_2802F3258 != -1)
    {
      swift_once();
    }

    v18 = 0xD000000000000044;
    v19 = sub_269057774();
    __swift_project_value_buffer(v19, qword_2802F3FF8);
    v20 = sub_269057AA4();
    v33 = 0xD000000000000044;
    v34 = 0x800000026905F3E0;
    v21 = HIBYTE(v17) & 0xF;
    if ((v17 & 0x2000000000000000) == 0)
    {
      v21 = v16 & 0xFFFFFFFFFFFFLL;
    }

    if (v21)
    {
      v32[0] = 32;
      v32[1] = 0xE100000000000000;
      MEMORY[0x26D62FBC0](v16, v17);
      MEMORY[0x26D62FBC0](32, 0xE100000000000000);

      v18 = v33;
      v15 = v34;
    }

    v22 = sub_269057764();
    if (os_log_type_enabled(v22, v20))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v32[0] = v24;
      *v23 = 136315138;
      v25 = sub_269010108(v18, v15, v32);

      *(v23 + 4) = v25;
      _os_log_impl(&dword_269002000, v22, v20, "%s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v24);
      MEMORY[0x26D6309D0](v24, -1, -1);
      MEMORY[0x26D6309D0](v23, -1, -1);
    }

    else
    {
    }

    if (a3)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v27 = Strong;
        v28 = sub_26904785C(a2);
        sub_26900F204(a2, v28, v29);

        return result;
      }
    }

    else
    {
      sub_269045450(a2, 1, 0, v30, v31);
    }
  }

  return result;
}

void sub_269046A34()
{
  v2 = *(v0 + 24);
  if (!v2)
  {
    v3 = 0x800000026905F310;
    v0 = "ntPageRequested()";
    if (qword_2802F3258 == -1)
    {
LABEL_10:
      v8 = 0xD000000000000021;
      v9 = sub_269057774();
      __swift_project_value_buffer(v9, qword_2802F3FF8);
      v10 = sub_269057AA4();
      v16 = 0xD000000000000021;
      v17 = v3;
      if ((v0 & 0x2F00000000000000) != 0x2000000000000000)
      {
        v15[0] = 32;
        v15[1] = 0xE100000000000000;
        MEMORY[0x26D62FBC0](0xD000000000000025, v0 | 0x8000000000000000);
        MEMORY[0x26D62FBC0](32, 0xE100000000000000);

        v8 = v16;
        v3 = v17;
      }

      log = sub_269057764();
      if (os_log_type_enabled(log, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v15[0] = v12;
        *v11 = 136315138;
        v13 = sub_269010108(v8, v3, v15);

        *(v11 + 4) = v13;
        _os_log_impl(&dword_269002000, log, v10, "%s", v11, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v12);
        MEMORY[0x26D6309D0](v12, -1, -1);
        MEMORY[0x26D6309D0](v11, -1, -1);
      }

      else
      {
      }

      goto LABEL_18;
    }

LABEL_25:
    swift_once();
    goto LABEL_10;
  }

  v3 = v2 - 1;
  if (__OFSUB__(v2, 1))
  {
    __break(1u);
  }

  else
  {
    *(v0 + 24) = v3;
    v1 = *(v0 + 16);
    if ((v1 & 0xC000000000000001) == 0)
    {
      if ((v3 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v3 < *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v4 = *(v1 + 8 * v3 + 32);

        goto LABEL_7;
      }

      __break(1u);
      goto LABEL_25;
    }
  }

  v4 = MEMORY[0x26D62FE90](v3, v1);

LABEL_7:
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    log = Strong;
    v6 = sub_26904785C(v4);
    sub_26900F204(v4, v6, v7);

LABEL_18:

    return;
  }
}

uint64_t sub_269046CE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v4 = *(a1 + 48);
    v5 = v4 && a2 == 2;
    if (v5 && a3 == 1)
    {
      v13 = 0xD00000000000004CLL;
      v14 = 0x800000026905F270;
      v30 = 0;
      v31 = 0xE000000000000000;

      sub_269057C54();

      v15 = 0x800000026905F2E0;
      v16 = 0xD000000000000023;
      goto LABEL_19;
    }
  }

  v7 = *(v3 + 24);
  v8 = v7 + 1;
  if (__OFADD__(v7, 1))
  {
    __break(1u);
  }

  else
  {
    v9 = *(v3 + 16);
    if (!(v9 >> 62))
    {
      result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v8 < result)
      {
        goto LABEL_12;
      }

      return 0;
    }
  }

  result = sub_269057CD4();
  if (v8 >= result)
  {
    return 0;
  }

LABEL_12:
  v11 = *(v3 + 24);
  v12 = v11 + 1;
  if (__OFADD__(v11, 1))
  {
    __break(1u);
    goto LABEL_34;
  }

  *(v3 + 24) = v12;
  v3 = *(v3 + 16);
  if ((v3 & 0xC000000000000001) != 0)
  {
LABEL_34:

    v4 = MEMORY[0x26D62FE90](v12, v3);

    goto LABEL_17;
  }

  if ((v12 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v12 < *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v4 = *(v3 + 8 * v12 + 32);

LABEL_17:
    v13 = 0xD00000000000004CLL;
    v14 = 0x800000026905F270;
    v30 = 0;
    v31 = 0xE000000000000000;
    sub_269057C54();

    v15 = 0x800000026905F2C0;
    v16 = 0xD000000000000015;
LABEL_19:
    v30 = v16;
    v31 = v15;

    v17 = sub_269011260();
    v19 = v18;

    MEMORY[0x26D62FBC0](v17, v19);

    v21 = v30;
    v20 = v31;
    if (qword_2802F3258 != -1)
    {
      swift_once();
    }

    v22 = sub_269057774();
    __swift_project_value_buffer(v22, qword_2802F3FF8);
    v23 = sub_269057AA4();
    v30 = 0xD00000000000004CLL;
    v31 = 0x800000026905F270;
    v24 = HIBYTE(v20) & 0xF;
    if ((v20 & 0x2000000000000000) == 0)
    {
      v24 = v21 & 0xFFFFFFFFFFFFLL;
    }

    if (v24)
    {
      v29[0] = 32;
      v29[1] = 0xE100000000000000;
      MEMORY[0x26D62FBC0](v21, v20);
      MEMORY[0x26D62FBC0](32, 0xE100000000000000);

      v13 = v30;
      v14 = v31;
    }

    v25 = sub_269057764();
    if (os_log_type_enabled(v25, v23))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v29[0] = v27;
      *v26 = 136315138;
      v28 = sub_269010108(v13, v14, v29);

      *(v26 + 4) = v28;
      _os_log_impl(&dword_269002000, v25, v23, "%s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v27);
      MEMORY[0x26D6309D0](v27, -1, -1);
      MEMORY[0x26D6309D0](v26, -1, -1);
    }

    else
    {
    }

    return v4;
  }

  __break(1u);
  return result;
}

uint64_t sub_269047040(uint64_t a1, uint64_t a2, uint64_t (*a3)(BOOL))
{
  v5 = 0xD00000000000002FLL;
  ObjectType = swift_getObjectType();
  v7 = (*(a2 + 72))(ObjectType, a2);
  sub_269057C54();

  v22 = 0xD000000000000012;
  v23 = 0x800000026905F510;
  if (v7)
  {
    v8 = 1702195828;
  }

  else
  {
    v8 = 0x65736C6166;
  }

  if (v7)
  {
    v9 = 0xE400000000000000;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  v10 = 0x800000026905F4A0;
  MEMORY[0x26D62FBC0](v8, v9);

  v12 = v22;
  v11 = v23;
  if (qword_2802F3258 != -1)
  {
    swift_once();
  }

  v13 = sub_269057774();
  __swift_project_value_buffer(v13, qword_2802F3FF8);
  v14 = sub_269057AA4();
  v22 = 0xD00000000000002FLL;
  v23 = 0x800000026905F4A0;
  v15 = HIBYTE(v11) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v15 = v12 & 0xFFFFFFFFFFFFLL;
  }

  if (v15)
  {
    v21[0] = 32;
    v21[1] = 0xE100000000000000;
    MEMORY[0x26D62FBC0](v12, v11);
    MEMORY[0x26D62FBC0](32, 0xE100000000000000);

    v5 = v22;
    v10 = v23;
  }

  v16 = sub_269057764();
  if (os_log_type_enabled(v16, v14))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v21[0] = v18;
    *v17 = 136315138;
    v19 = sub_269010108(v5, v10, v21);

    *(v17 + 4) = v19;
    _os_log_impl(&dword_269002000, v16, v14, "%s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    MEMORY[0x26D6309D0](v18, -1, -1);
    MEMORY[0x26D6309D0](v17, -1, -1);
  }

  else
  {
  }

  return a3((v7 & 1) == 0);
}

double sub_2690472C4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_269057874();
  v23 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_2690578A4();
  v12 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v4 + 48);
  v16 = swift_allocObject();
  v16[2] = a3;
  v16[3] = a4;
  v16[4] = a1;
  v16[5] = a2;
  aBlock[4] = sub_269048910;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26900BEF0;
  aBlock[3] = &block_descriptor_8;
  v17 = _Block_copy(aBlock);
  v18 = v15;

  v19 = a1;
  sub_269057884();
  v24 = MEMORY[0x277D84F90];
  sub_269048D88(&qword_2802F3420, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802F3E10, &unk_269059E90);
  sub_269048DD0(&qword_2802F3430, &unk_2802F3E10, &unk_269059E90);
  sub_269057C14();
  MEMORY[0x26D62FD80](0, v14, v11, v17);
  _Block_release(v17);

  (*(v23 + 8))(v11, v9);
  (*(v12 + 8))(v14, v22);

  return result;
}

double sub_2690475A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    swift_beginAccess();
    v7 = *(v3 + 56);
    if (*(v7 + 16))
    {

      v8 = sub_269016B10(a1);
      if (v9)
      {
        v10 = *(v7 + 56) + 16 * v8;
        v19 = *(v10 + 8);
        v11 = *v10;

        sub_269057C54();

        strcpy(v20, "Completion of ");
        HIBYTE(v20[1]) = -18;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F3F08, &unk_26905B580);
        v12 = sub_269057964();
        MEMORY[0x26D62FBC0](v12);

        MEMORY[0x26D62FBC0](0xD000000000000019, 0x800000026905F250);
        v14 = v20[0];
        v13 = v20[1];
        v20[0] = 0;
        v20[1] = 0xE000000000000000;
        swift_getObjectType();
        v20[3] = v11;
        swift_getWitnessTable();
        sub_269057DC4();
        if (qword_2802F3258 != -1)
        {
          swift_once();
        }

        v15 = sub_269057774();
        __swift_project_value_buffer(v15, qword_2802F3FF8);
        v16 = sub_269057AA4();
        sub_269053434(v16, 0xD000000000000031, 0x800000026905F210, v14, v13, 0, 0xE000000000000000);

        ObjectType = swift_getObjectType();
        (*(a3 + 248))(v11, v19, ObjectType, a3);
        swift_beginAccess();
        v18 = sub_269047C88(a1);
        swift_endAccess();
      }

      else
      {
      }
    }
  }

  return result;
}

id sub_26904785C(uint64_t a1)
{
  v2 = v1;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    swift_beginAccess();
    v6 = *(v1 + 56);
    if (*(v6 + 16))
    {

      v7 = sub_269016B10(v5);
      if (v8)
      {
        v9 = *(*(v6 + 56) + 16 * v7);

LABEL_8:
        v13 = v9;
        goto LABEL_14;
      }
    }

    v14 = [objc_allocWithZone(type metadata accessor for LocalDataSourceWriter()) init];
    swift_beginAccess();
    v13 = v14;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *(v2 + 56);
    *(v2 + 56) = 0x8000000000000000;
    sub_26904875C(v13, v5, isUniquelyReferenced_nonNull_native, &v26);
  }

  else
  {
    swift_beginAccess();
    v10 = *(v1 + 56);
    if (*(v10 + 16))
    {

      v11 = sub_269016B10(a1);
      if (v12)
      {
        v9 = *(*(v10 + 56) + 16 * v11);

        goto LABEL_8;
      }
    }

    v16 = [objc_allocWithZone(type metadata accessor for LocalDataSourceWriter()) init];
    swift_beginAccess();
    v13 = v16;

    v17 = swift_isUniquelyReferenced_nonNull_native();
    v26 = *(v2 + 56);
    *(v2 + 56) = 0x8000000000000000;
    sub_26904875C(v13, a1, v17, &v26);
  }

  *(v2 + 56) = v26;
  swift_endAccess();
LABEL_14:
  v27 = 0;
  v28 = 0xE000000000000000;
  sub_269057C54();

  v27 = 2125391;
  v28 = 0xE300000000000000;
  v18 = sub_269011260();
  MEMORY[0x26D62FBC0](v18);

  MEMORY[0x26D62FBC0](0xD000000000000017, 0x800000026905F1F0);
  v20 = v27;
  v19 = v28;
  v27 = 0;
  v28 = 0xE000000000000000;
  swift_getObjectType();
  v26 = v13;
  swift_getWitnessTable();
  sub_269057DC4();
  v21 = v27;
  v22 = v28;
  if (qword_2802F3258 != -1)
  {
    swift_once();
  }

  v23 = sub_269057774();
  __swift_project_value_buffer(v23, qword_2802F3FF8);
  v24 = sub_269057AA4();
  sub_269053434(v24, 0xD000000000000015, 0x800000026905F1D0, v20, v19, v21, v22);

  return v13;
}

uint64_t sub_269047BC8()
{

  sub_26900A620(v0 + 32);

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

void sub_269047C3C(void *a1, uint64_t a2)
{
  *(*v2 + 40) = a2;
  swift_unknownObjectWeakAssign();
}

uint64_t sub_269047C88(uint64_t a1)
{
  v2 = v1;
  v3 = sub_269016B10(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v10 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_26904846C();
    v7 = v10;
  }

  v8 = *(*(v7 + 56) + 16 * v5);
  sub_2690482AC(v5, v7);
  *v2 = v7;
  return v8;
}

void sub_269047D30(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F3F00, &qword_26905B578);
  v31 = v4;
  v6 = sub_269057CF4();
  v7 = v6;
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
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v32 = *(*(v5 + 56) + 16 * v19);
      if ((v31 & 1) == 0)
      {

        v21 = v32;
      }

      sub_269057E54();

      sub_269057984();

      v22 = sub_269057E84();
      v23 = -1 << *(v7 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 16 * v15) = v32;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v31 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_269047FEC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F3790, &qword_26905B590);
  v38 = v4;
  v6 = sub_269057CF4();
  v7 = v6;
  if (*(v5 + 16))
  {
    v37 = v5;
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
    v14 = v6 + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v39 = *v26;
      if ((v38 & 1) == 0)
      {
      }

      sub_269057E54();
      sub_269057984();
      v28 = sub_269057E84();
      v29 = -1 << *(v7 + 32);
      v30 = v28 & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v14 + 8 * (v30 >> 6))) == 0)
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
          v35 = *(v14 + 8 * v31);
          if (v35 != -1)
          {
            v15 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v30) & ~*(v14 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v39;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v37;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v2;
    if (v36 >= 64)
    {
      bzero(v9, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_2690482AC(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_269057C24() + 1) & ~v5;
    do
    {
      sub_269057E54();

      sub_269057984();

      v9 = sub_269057E84();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 8 * v3);
        v13 = (v11 + 8 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }
}

void sub_26904846C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F3F00, &qword_26905B578);
  v2 = *v0;
  v3 = sub_269057CE4();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v19 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 16 * v17) = v19;

        v18 = v19;
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
}

void sub_2690485E4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F3790, &qword_26905B590);
  v2 = *v0;
  v3 = sub_269057CE4();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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
}

void sub_26904875C(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v8 = *a4;
  v9 = sub_269016B10(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_17;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_269047D30(v14, a3 & 1);
      v9 = sub_269016B10(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_18:
        type metadata accessor for SetupPage();
        sub_269057E04();
        __break(1u);
        return;
      }
    }

    else
    {
      v17 = v9;
      sub_26904846C();
      v9 = v17;
    }
  }

  v19 = *a4;
  if (v15)
  {
    v20 = v19[7] + 16 * v9;
    v21 = *v20;
    *v20 = a1;
    *(v20 + 8) = &off_2879A72A0;

    return;
  }

  v19[(v9 >> 6) + 8] |= 1 << v9;
  *(v19[6] + 8 * v9) = a2;
  v22 = (v19[7] + 16 * v9);
  *v22 = a1;
  v22[1] = &off_2879A72A0;
  v23 = v19[2];
  v13 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19[2] = v24;
}

uint64_t sub_2690488D0()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_269048910()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 40);
  ObjectType = swift_getObjectType();
  v4 = (*(v2 + 160))(ObjectType, v2) == 0;
  return v1(v4);
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_269048994(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_269057C54();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802F3F08, &unk_26905B580);
  v4 = sub_269057964();
  MEMORY[0x26D62FBC0](v4);

  MEMORY[0x26D62FBC0](0xD00000000000001ALL, 0x800000026905F3C0);
  ObjectType = swift_getObjectType();
  swift_getWitnessTable();
  sub_269057DC4();
  if (qword_2802F3258 != -1)
  {
    swift_once();
  }

  v6 = sub_269057774();
  __swift_project_value_buffer(v6, qword_2802F3FF8);
  v7 = sub_269057AA4();
  sub_269053434(v7, 0xD000000000000029, 0x800000026905F370, 0xD000000000000010, 0x800000026905F3A0, 0, 0xE000000000000000);

  v8 = [objc_allocWithZone(type metadata accessor for LocalDataSourceWriter()) init];
  if ((*(a3 + 104))(ObjectType, a3))
  {
    v9 = 2;
  }

  else
  {
    v9 = 1;
  }

  *&v8[OBJC_IVAR____TtC9SiriSetup21LocalDataSourceWriter_siriEnabled] = v9;
  if ((*(a3 + 144))(ObjectType, a3))
  {
    v10 = 2;
  }

  else
  {
    v10 = 1;
  }

  *&v8[OBJC_IVAR____TtC9SiriSetup21LocalDataSourceWriter_voiceTriggerEnabled] = v10;
  if ((*(a3 + 152))(ObjectType, a3))
  {
    v11 = 2;
  }

  else
  {
    v11 = 1;
  }

  *&v8[OBJC_IVAR____TtC9SiriSetup21LocalDataSourceWriter_siriInCallEnabled] = v11;
  *&v8[OBJC_IVAR____TtC9SiriSetup21LocalDataSourceWriter_setupDismissed] = 2;
  v12 = *(a3 + 248);
  v13 = v8;
  v12();
}

uint64_t sub_269048C58()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_269048CAC()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_269048CF8()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_269048D30()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_269048D88(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_269048DD0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_269048E34(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000079;
  v3 = 0x6464754220534F69;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0xD00000000000001ALL;
    }

    else
    {
      v5 = 0x7453206B63697551;
    }

    if (v4 == 2)
    {
      v6 = 0x800000026905BBF0;
    }

    else
    {
      v6 = 0xEB00000000747261;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x754220534F63616DLL;
    }

    else
    {
      v5 = 0x6464754220534F69;
    }

    if (v4)
    {
      v6 = 0xEB00000000796464;
    }

    else
    {
      v6 = 0xE900000000000079;
    }
  }

  v7 = 0xD00000000000001ALL;
  v8 = 0x800000026905BBF0;
  if (a2 != 2)
  {
    v7 = 0x7453206B63697551;
    v8 = 0xEB00000000747261;
  }

  if (a2)
  {
    v3 = 0x754220534F63616DLL;
    v2 = 0xEB00000000796464;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_269057DE4();
  }

  return v11 & 1;
}

void sub_269048F98(uint64_t a1, uint64_t a2)
{
  v4 = (*(v2 + OBJC_IVAR____TtC9SiriSetup8Defaults_localDataSource) + OBJC_IVAR____TtC9SiriSetup15LocalDataSource_siriLanguage);
  *v4 = a1;
  v4[1] = a2;

  if (qword_2802F3220 != -1)
  {
    swift_once();
  }

  v5 = [objc_opt_self() sharedPreferences];
  if (a2)
  {
    v6 = sub_269057944();
  }

  else
  {
    v6 = 0;
  }

  [v5 setLanguageCode_];
}

uint64_t sub_2690490A4()
{
  v1 = OBJC_IVAR____TtC9SiriSetup8Defaults_enrollmentMode;
  if (*(v0 + OBJC_IVAR____TtC9SiriSetup8Defaults_enrollmentMode) > 1u || *(v0 + OBJC_IVAR____TtC9SiriSetup8Defaults_enrollmentMode))
  {
    v2 = sub_269057DE4();

    v3 = 0;
    if (v2)
    {
      goto LABEL_7;
    }

    if (*(v0 + v1) > 1u || !*(v0 + v1))
    {
      v5 = sub_269057DE4();

      v3 = v5 ^ 1;
      v4 = sub_269049250();
      if (v4)
      {
        return v4 & 1;
      }

      goto LABEL_10;
    }
  }

  v3 = 0;
LABEL_7:
  v4 = sub_269049250();
  if (v4)
  {
    return v4 & 1;
  }

LABEL_10:
  if ((v3 & 1) == 0)
  {
    v4 = *(v0 + OBJC_IVAR____TtC9SiriSetup8Defaults_hasVoiceProfileInCloud);
  }

  return v4 & 1;
}

id sub_269049250()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SiriSetup8Defaults_voiceProfileManager);
  if (*(v0 + OBJC_IVAR____TtC9SiriSetup8Defaults_siriSharedUserId + 8))
  {
    v2 = v1;

    v3 = sub_269057944();
  }

  else
  {
    v4 = v1;
    v3 = 0;
  }

  if (qword_2802F3220 != -1)
  {
    swift_once();
  }

  v5 = [objc_opt_self() sharedPreferences];
  v6 = [v5 languageCode];

  if (v6)
  {
    sub_269057954();
  }

  v7 = sub_269057944();

  v8 = [v1 isSATEnrolledForSiriProfileId:v3 languageCode:v7];

  return v8;
}

double sub_2690493A8()
{
  v1 = sub_269057874();
  v15 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2690578A4();
  v4 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *&v0[OBJC_IVAR____TtC9SiriSetup8Defaults_settingsQueue];
  v8 = swift_allocObject();
  *(v8 + 16) = v0;
  aBlock[4] = sub_26904FA80;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26900BEF0;
  aBlock[3] = &block_descriptor_110;
  v9 = _Block_copy(aBlock);
  v10 = v7;
  v11 = v0;
  sub_269057884();
  v16 = MEMORY[0x277D84F90];
  sub_269048D88(&qword_2802F3420, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802F3E10, &unk_269059E90);
  sub_26904FA88(&qword_2802F3430, &unk_2802F3E10, &unk_269059E90, MEMORY[0x277D83970]);
  sub_269057C14();
  MEMORY[0x26D62FD80](0, v6, v3, v9);
  _Block_release(v9);

  (*(v15 + 8))(v3, v1);
  (*(v4 + 8))(v6, v14);

  return result;
}

void sub_269049684(uint64_t a1)
{
  v2 = qword_2802F3220;
  v3 = *(a1 + OBJC_IVAR____TtC9SiriSetup8Defaults_voiceProfileManager);
  if (v2 != -1)
  {
    swift_once();
  }

  v4 = [objc_opt_self() sharedPreferences];
  v5 = [v4 languageCode];

  if (v5)
  {
    sub_269057954();
  }

  v6 = sub_269057944();

  v7 = [v3 hasVoiceProfileIniCloudForLanguageCode_];

  *(a1 + OBJC_IVAR____TtC9SiriSetup8Defaults_hasVoiceProfileInCloud) = v7;
}

id sub_2690497A0(char a1)
{
  v3 = 0xE000000000000000;
  sub_269057C54();

  if (a1)
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if (a1)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  MEMORY[0x26D62FBC0](v4, v5);

  MEMORY[0x26D62FBC0](0x20726F6620, 0xE500000000000000);
  v6 = *(v1 + OBJC_IVAR____TtC9SiriSetup8Defaults_iCloudAltDSID + 8);
  if (v6)
  {
    v7 = *(v1 + OBJC_IVAR____TtC9SiriSetup8Defaults_iCloudAltDSID);
  }

  else
  {
    v7 = 0;
  }

  if (v6)
  {
    v3 = *(v1 + OBJC_IVAR____TtC9SiriSetup8Defaults_iCloudAltDSID + 8);
  }

  MEMORY[0x26D62FBC0](v7, v3);

  if (qword_2802F3258 != -1)
  {
    swift_once();
  }

  v8 = sub_269057774();
  __swift_project_value_buffer(v8, qword_2802F3FF8);
  v9 = sub_269057AA4();
  sub_269053434(v9, 0xD000000000000017, 0x800000026905BB60, 0xD000000000000023, 0x800000026905F880, 0, 0xE000000000000000);

  *(*(v1 + OBJC_IVAR____TtC9SiriSetup8Defaults_localDataSource) + OBJC_IVAR____TtC9SiriSetup15LocalDataSource_recognizeMyVoiceEnabled) = a1 & 1;
  v10 = *(v1 + OBJC_IVAR____TtC9SiriSetup8Defaults_settings);

  return [v10 setRecognizeMyVoiceEnabled_];
}

void sub_269049988(uint64_t a1, char a2)
{
  v2 = 0xD000000000000013;
  if (a2)
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (a2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  v5 = 0x800000026905BB80;
  if (a1)
  {
    sub_269057C54();

    MEMORY[0x26D62FBC0](v3, v4);

    MEMORY[0x26D62FBC0](32, 0xE100000000000000);
    swift_getErrorValue();
    v6 = sub_269057E44();
    MEMORY[0x26D62FBC0](v6);

    v8 = 0xD00000000000001FLL;
    v7 = 0x800000026905F8F0;
    if (qword_2802F3258 != -1)
    {
      swift_once();
    }

    v9 = sub_269057774();
    __swift_project_value_buffer(v9, qword_2802F3FF8);
    v10 = sub_269057A94();
  }

  else
  {
    sub_269057C54();

    MEMORY[0x26D62FBC0](v3, v4);

    v8 = 0xD000000000000015;
    v7 = 0x800000026905F8D0;
    if (qword_2802F3258 != -1)
    {
      swift_once();
    }

    v11 = sub_269057774();
    __swift_project_value_buffer(v11, qword_2802F3FF8);
    v10 = sub_269057AA4();
  }

  v12 = v10;
  v19 = 0xD000000000000013;
  v20 = 0x800000026905BB80;
  v13 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v13 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (v13)
  {
    v18[0] = 32;
    v18[1] = 0xE100000000000000;
    MEMORY[0x26D62FBC0](v8, v7);
    MEMORY[0x26D62FBC0](32, 0xE100000000000000);

    v2 = v19;
    v5 = v20;
  }

  v14 = sub_269057764();
  if (os_log_type_enabled(v14, v12))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v18[0] = v16;
    *v15 = 136315138;
    v17 = sub_269010108(v2, v5, v18);

    *(v15 + 4) = v17;
    _os_log_impl(&dword_269002000, v14, v12, "%s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    MEMORY[0x26D6309D0](v16, -1, -1);
    MEMORY[0x26D6309D0](v15, -1, -1);
  }

  else
  {
  }
}