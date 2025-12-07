id CIDCInternalPayloadBuilder.__allocating_init(delegate:payloadBuilder:)(uint64_t a1, void *a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = sub_24567E3B8(a1, a2);
  swift_unknownObjectRelease();

  return v6;
}

id CIDCInternalPayloadBuilder.init(delegate:payloadBuilder:)(uint64_t a1, void *a2)
{
  v3 = sub_24567E3B8(a1, a2);
  swift_unknownObjectRelease();

  return v3;
}

uint64_t sub_245678EB8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_245681C1C();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE20800, &qword_245682AD8);
  v2[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE20808, &qword_245682AE0);
  v2[8] = swift_task_alloc();
  v4 = sub_245681D4C();
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();
  v5 = sub_245681B3C();
  v2[12] = v5;
  v2[13] = *(v5 - 8);
  v2[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE20810, &qword_245682AE8);
  v2[15] = swift_task_alloc();
  v6 = sub_245681DBC();
  v2[16] = v6;
  v2[17] = *(v6 - 8);
  v2[18] = swift_task_alloc();
  v7 = sub_245681E4C();
  v2[19] = v7;
  v2[20] = *(v7 - 8);
  v2[21] = swift_task_alloc();
  v8 = sub_245681DAC();
  v2[22] = v8;
  v2[23] = *(v8 - 8);
  v2[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE20818, &qword_245682AF0);
  v2[25] = swift_task_alloc();
  v9 = sub_245681BAC();
  v2[26] = v9;
  v2[27] = *(v9 - 8);
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v10 = sub_245681B7C();
  v2[30] = v10;
  v2[31] = *(v10 - 8);
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE20820, &qword_245682AF8);
  v2[35] = swift_task_alloc();
  v11 = sub_245681D6C();
  v2[36] = v11;
  v2[37] = *(v11 - 8);
  v2[38] = swift_task_alloc();
  v2[39] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2456793A0, 0, 0);
}

void sub_2456793A0()
{
  v1 = v0[36];
  v2 = v0[37];
  v3 = v0[35];
  [v0[2] format];
  sub_245681D5C();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_24567F348(v0[35], &qword_27EE20820, &qword_245682AF8);
    sub_24567F56C(0, &qword_27EE20828, 0x277CCA9B8);
    sub_245681EAC();
    sub_245681F6C();
    swift_willThrow();
LABEL_31:

    v52 = v0[1];

    v52();
  }

  else
  {
    v4 = v0[2];
    (*(v0[37] + 32))(v0[39], v0[35], v0[36]);
    sub_245681B6C();
    swift_allocObject();
    sub_245681B5C();
    v5 = [v4 deviceKey];
    v6 = sub_245681B1C();
    v8 = v7;

    sub_24567EC58(&qword_27EE20830, MEMORY[0x277CF39A8], MEMORY[0x277CF39B8]);
    sub_245681B4C();
    sub_24567E548(v6, v8);

    v9 = v0[27];
    v10 = v0[23];
    v11 = v0[2];
    (*(v0[31] + 32))(v0[34], v0[33], v0[30]);
    [v11 signingAlgorithm];
    sub_24567E59C(MEMORY[0x277D84F90]);
    v12 = [v11 elements];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE20838, &unk_245682B00);
    v13 = sub_245681E7C();

    v14 = 0;
    v16 = v13 + 64;
    v15 = *(v13 + 64);
    v83 = v13;
    v17 = -1;
    v18 = -1 << *(v13 + 32);
    if (-v18 < 64)
    {
      v17 = ~(-1 << -v18);
    }

    v19 = v17 & v15;
    v20 = (63 - v18) >> 6;
    v99 = (v9 + 48);
    v87 = (v9 + 16);
    v89 = (v9 + 32);
    v92 = v10;
    v95 = v0;
    v85 = (v9 + 8);
    v77 = v20;
    v78 = v16;
    if ((v17 & v15) == 0)
    {
      goto LABEL_6;
    }

    do
    {
LABEL_10:
      v80 = v19;
      v81 = v14;
      v22 = __clz(__rbit64(v19)) | (v14 << 6);
      v23 = (*(v83 + 48) + 16 * v22);
      v24 = v23[1];
      v79 = *v23;
      v25 = *(*(v83 + 56) + 8 * v22);
      if (v25 >> 62)
      {
        v44 = v23[1];
        v26 = sub_245681FCC();
        v24 = v44;
      }

      else
      {
        v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v82 = v24;

      if (v26)
      {
        v27 = 0;
        v102 = v25 & 0xFFFFFFFFFFFFFF8;
        v104 = v25 & 0xC000000000000001;
        v28 = MEMORY[0x277D84F90];
        v96 = v25;
        while (1)
        {
          if (v104)
          {
            v29 = MEMORY[0x245D6DC90](v27, v25);
          }

          else
          {
            if (v27 >= *(v102 + 16))
            {
              goto LABEL_44;
            }

            v29 = *(v25 + 8 * v27 + 32);
          }

          v30 = v29;
          if (__OFADD__(v27, 1))
          {
            break;
          }

          v31 = v0[25];
          v32 = v0[26];
          sub_24567A97C(v29, v31);
          v108 = v30;
          if ((*v99)(v31, 1, v32) == 1)
          {
            v103 = v0[36];
            v105 = v0[39];
            v98 = v0[34];
            v100 = v0[37];
            v90 = v0[31];
            v93 = v0[30];
            v45 = v0[25];
            v47 = v0[20];
            v46 = v0[21];
            v107 = v0[19];

            sub_24567F348(v45, &qword_27EE20818, &qword_245682AF0);
            sub_245681F7C();

            v48 = [v30 debugDescription];
            v49 = sub_245681EAC();
            v51 = v50;

            MEMORY[0x245D6DBE0](v49, v51);

            MEMORY[0x245D6DBE0](0xD000000000000018, 0x8000000245682D50);
            (*(v47 + 104))(v46, *MEMORY[0x277CFF920], v107);
            sub_24567EA68(MEMORY[0x277D84F90]);
            sub_245681E5C();
            sub_24567EC58(&qword_27EE20840, MEMORY[0x277CFFE30], MEMORY[0x277CFFE38]);
            swift_allocError();
            sub_245681E6C();
            swift_willThrow();

            (*(v90 + 8))(v98, v93);
            (*(v100 + 8))(v105, v103);
            goto LABEL_31;
          }

          v106 = v27 + 1;
          v34 = v0[28];
          v33 = v0[29];
          v35 = v0[26];
          (*v89)(v33, v0[25], v35);
          v36 = [v30 elementIdentifier];
          sub_245681EAC();

          (*v87)(v34, v33, v35);
          sub_245681D9C();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v28 = sub_24567E1DC(0, v28[2] + 1, 1, v28, &qword_27EE208E0, &qword_245682C50, MEMORY[0x277CFF5D8]);
          }

          v38 = v28[2];
          v37 = v28[3];
          v0 = v95;
          if (v38 >= v37 >> 1)
          {
            v28 = sub_24567E1DC((v37 > 1), v38 + 1, 1, v28, &qword_27EE208E0, &qword_245682C50, MEMORY[0x277CFF5D8]);
          }

          v39 = v95[29];
          v40 = v95[26];
          v41 = v95[24];
          v42 = v95[22];

          (*v85)(v39, v40);
          v28[2] = v38 + 1;
          (*(v92 + 32))(v28 + ((*(v92 + 80) + 32) & ~*(v92 + 80)) + *(v92 + 72) * v38, v41, v42);
          ++v27;
          v25 = v96;
          if (v106 == v26)
          {
            goto LABEL_27;
          }
        }

        __break(1u);
LABEL_44:
        __break(1u);
        goto LABEL_45;
      }

      v28 = MEMORY[0x277D84F90];
LABEL_27:
      v19 = (v80 - 1) & v80;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_24567D8E4(v28, v79, v82, isUniquelyReferenced_nonNull_native);

      v20 = v77;
      v16 = v78;
      v14 = v81;
    }

    while (v19);
LABEL_6:
    while (1)
    {
      v21 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v21 >= v20)
      {
        v53 = v0[38];
        v54 = v0[39];
        v55 = v0[36];
        v56 = v0[37];
        v57 = v0[2];

        (*(v56 + 16))(v53, v54, v55);
        v58 = [v57 docType];
        sub_245681EAC();

        v59 = [v57 validFrom];
        if (v59)
        {
          v60 = v59;
          sub_245681B2C();
        }

        v61 = v0[31];
        v84 = v0[32];
        v86 = v0[30];
        v88 = v0[34];
        v63 = v0[10];
        v62 = v0[11];
        v64 = v0[9];
        v65 = v0[6];
        v91 = v0[8];
        v94 = v0[7];
        v66 = v0[5];
        v97 = v0[4];
        v67 = v0[2];
        v101 = v0[3];
        (*(v0[13] + 56))();
        v68 = [v67 validUntil];
        sub_245681B2C();

        v69 = [v67 timePolicy];
        v70 = MEMORY[0x277CFF5B8];
        v71 = MEMORY[0x277CFF5B0];
        if (v69 != 2)
        {
          v71 = MEMORY[0x277CFF5A8];
        }

        if (v69 != 1)
        {
          v70 = v71;
        }

        (*(v63 + 104))(v62, *v70, v64);
        (*(v61 + 16))(v84, v88, v86);
        v72 = sub_245681D7C();
        (*(*(v72 - 8) + 56))(v91, 1, 1, v72);
        v73 = sub_245681E2C();
        (*(*(v73 - 8) + 56))(v94, 1, 1, v73);
        (*(v66 + 104))(v65, *MEMORY[0x277CFF4B8], v97);
        sub_245681D8C();
        v74 = *(v101 + OBJC_IVAR____TtC17CoreIDCredBuilder26CIDCInternalPayloadBuilder_payloadBuilder);
        v0[40] = v74;
        v109 = (*MEMORY[0x277CFF650] + MEMORY[0x277CFF650]);
        v74;
        v75 = swift_task_alloc();
        v0[41] = v75;
        *v75 = v0;
        v75[1] = sub_24567A0EC;
        v76 = v0[18];

        v109(v76);
        return;
      }

      ++v14;
      if (*(v16 + 8 * v21))
      {
        v14 = v21;
        v19 = *(v16 + 8 * v21);
        goto LABEL_10;
      }
    }

LABEL_45:
    __break(1u);
  }
}

uint64_t sub_24567A0EC(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 320);
  *(*v3 + 336) = v2;

  if (v2)
  {
    v8 = sub_24567A3E0;
  }

  else
  {
    *(v6 + 344) = a2;
    *(v6 + 352) = a1;
    v8 = sub_24567A238;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_24567A238()
{
  v1 = v0[39];
  v3 = v0[36];
  v2 = v0[37];
  v4 = v0[34];
  v6 = v0[30];
  v5 = v0[31];
  (*(v0[17] + 8))(v0[18], v0[16]);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];
  v9 = v0[43];
  v8 = v0[44];

  return v7(v8, v9);
}

uint64_t sub_24567A3E0()
{
  v1 = v0[39];
  v2 = v0[36];
  v3 = v0[37];
  v4 = v0[34];
  v5 = v0[30];
  v6 = v0[31];
  (*(v0[17] + 8))(v0[18], v0[16]);
  (*(v6 + 8))(v4, v5);
  (*(v3 + 8))(v1, v2);

  v7 = v0[1];

  return v7();
}

uint64_t sub_24567A70C(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_24567A7D0;

  return sub_245678EB8(v6);
}

uint64_t sub_24567A7D0(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v7 = *v3;
  v8 = *(*v3 + 24);
  v9 = *(*v3 + 16);
  v10 = *v3;

  if (v4)
  {
    v11 = sub_245681AEC();

    v12 = v11;
    v13 = 0;
  }

  else
  {
    v14 = sub_245681B0C();
    sub_24567E548(a1, a2);
    v13 = v14;
    v12 = 0;
    v11 = v14;
  }

  v15 = *(v7 + 32);
  (v15)[2](v15, v13, v12);

  _Block_release(v15);
  v16 = *(v10 + 8);

  return v16();
}

void sub_24567A97C(void *a1@<X0>, uint64_t a2@<X8>)
{
  v173 = a2;
  v3 = sub_245681DFC();
  MEMORY[0x28223BE20](v3 - 8);
  v168 = v158 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE20818, &qword_245682AF0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v167 = (v158 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = MEMORY[0x28223BE20](v6);
  v172 = v158 - v9;
  MEMORY[0x28223BE20](v8);
  v169 = v158 - v10;
  v11 = sub_245681BAC();
  v12 = *(v11 - 8);
  v170 = v11;
  v171 = v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = v158 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = v158 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = v158 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = v158 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v27 = (v158 - v26);
  MEMORY[0x28223BE20](v25);
  v29 = v158 - v28;
  v30 = sub_245681B3C();
  v31 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v33 = v158 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = [a1 stringValue];
  if (v34)
  {
    v35 = v34;
    v36 = sub_245681EAC();
    v38 = v37;

    v39 = MEMORY[0x277D837D0];
LABEL_5:
    v175 = v39;
    v174[0] = v36;
    v174[1] = v38;
    goto LABEL_6;
  }

  v164 = v33;
  v165 = v31;
  v159 = v29;
  v160 = v18;
  i = v27;
  v162 = v24;
  v163 = v21;
  v40 = v172;
  v161 = v15;
  v41 = a1;
  v42 = [a1 dataValue];
  if (v42)
  {
    v43 = v42;
    v36 = sub_245681B1C();
    v38 = v44;

    v39 = MEMORY[0x277CC9318];
    goto LABEL_5;
  }

  v45 = [a1 dateValue];
  if (v45)
  {
    v46 = v45;
    v47 = v164;
    sub_245681B2C();

    v175 = v30;
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v174);
    v49 = v165;
    (v165)[2](boxed_opaque_existential_0Tm, v47, v30);
    sub_245681B8C();
    (v49[1])(v47, v30);
    return;
  }

  v50 = [a1 numberValue];
  if (v50)
  {
    v51 = v50;
    v52 = [v50 integerValue];
    v175 = MEMORY[0x277D83B88];
    v174[0] = v52;
    sub_245681B8C();

    return;
  }

  v53 = [a1 arrayValue];
  if (v53)
  {
    v54 = v53;
    sub_24567F56C(0, &qword_27EE20910, off_278E82BB8);
    v21 = sub_245681EEC();

    v40 = v170;
    if (!(v21 >> 62))
    {
      v55 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_14:
      v56 = v169;
      v57 = v159;
      if (v55)
      {
        v58 = 0;
        v172 = (v21 & 0xC000000000000001);
        v168 = (v171 + 48);
        v169 = (v21 & 0xFFFFFFFFFFFFFF8);
        v59 = (v171 + 32);
        v162 = (v171 + 8);
        v163 = (v171 + 16);
        v60 = MEMORY[0x277D84F90];
        v167 = v21;
        v164 = (v171 + 32);
        v165 = v55;
        while (1)
        {
          if (v172)
          {
            v61 = MEMORY[0x245D6DC90](v58, v21);
            v62 = (v58 + 1);
            if (__OFADD__(v58, 1))
            {
              goto LABEL_95;
            }
          }

          else
          {
            if (v58 >= *(v169 + 2))
            {
              goto LABEL_96;
            }

            v61 = *(v21 + 8 * v58 + 32);
            v62 = (v58 + 1);
            if (__OFADD__(v58, 1))
            {
              goto LABEL_95;
            }
          }

          v63 = v61;
          sub_24567A97C(v61, v56);
          if ((*v168)(v56, 1, v40) == 1)
          {
            break;
          }

          v64 = *v59;
          (*v59)(v57, v56, v40);
          (*v163)(i, v57, v40);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v60 = sub_24567E1DC(0, *(v60 + 2) + 1, 1, v60, &qword_27EE20920, &qword_245682C68, MEMORY[0x277CFF2D0]);
          }

          v66 = *(v60 + 2);
          v65 = *(v60 + 3);
          if (v66 >= v65 >> 1)
          {
            v60 = sub_24567E1DC((v65 > 1), v66 + 1, 1, v60, &qword_27EE20920, &qword_245682C68, MEMORY[0x277CFF2D0]);
          }

          v40 = v170;
          (*(v171 + 8))(v57, v170);
          *(v60 + 2) = v66 + 1;
          v59 = v164;
          v64(&v60[((*(v171 + 80) + 32) & ~*(v171 + 80)) + *(v171 + 72) * v66], i, v40);
          ++v58;
          v21 = v167;
          if (v62 == v165)
          {
            goto LABEL_51;
          }
        }

        sub_24567F348(v56, &qword_27EE20818, &qword_245682AF0);
        (*(v171 + 56))(v173, 1, 1, v40);
        return;
      }

LABEL_51:

      v175 = sub_245681BEC();
      __swift_allocate_boxed_opaque_existential_0Tm(v174);
      sub_245681BDC();
LABEL_6:
      sub_245681B8C();
      return;
    }

LABEL_99:
    v55 = sub_245681FCC();
    goto LABEL_14;
  }

  v67 = [a1 dictionaryValue];
  v68 = v170;
  if (v67)
  {
    v69 = v67;
    sub_24567F56C(0, &qword_27EE20910, off_278E82BB8);
    v70 = sub_245681E7C();

    v71 = sub_24567E6A0(MEMORY[0x277D84F90]);
    v72 = 0;
    v73 = v70 + 64;
    v74 = 1 << *(v70 + 32);
    v75 = -1;
    if (v74 < 64)
    {
      v75 = ~(-1 << v74);
    }

    v76 = v75 & *(v70 + 64);
    v77 = (v74 + 63) >> 6;
    v168 = v70;
    v169 = (v171 + 32);
    v165 = (v171 + 16);
    i = (v171 + 48);
    v164 = (v171 + 8);
    v159 = (v171 + 40);
    v160 = v77;
    v78 = v162;
    v79 = v163;
    v161 = (v70 + 64);
    while (v76)
    {
      v83 = v72;
LABEL_40:
      v84 = __clz(__rbit64(v76)) | (v83 << 6);
      v85 = (*(v168 + 6) + 16 * v84);
      v86 = *v85;
      v21 = v85[1];
      v87 = *(*(v168 + 7) + 8 * v84);

      v88 = v87;
      sub_24567A97C(v88, v40);
      v89 = v170;
      if ((*i)(v40, 1, v170) == 1)
      {

        sub_24567F348(v40, &qword_27EE20818, &qword_245682AF0);
        v155 = *(v171 + 56);
        v156 = v173;
        goto LABEL_91;
      }

      v172 = v88;
      v90 = v78;
      v91 = v78;
      v92 = v40;
      v167 = *v169;
      v167(v91, v40, v89);
      (*v165)(v79, v90, v89);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v174[0] = v71;
      v40 = v86;
      v94 = sub_24567CEF8(v86, v21);
      v96 = v71[2];
      v97 = (v95 & 1) == 0;
      v98 = __OFADD__(v96, v97);
      v99 = v96 + v97;
      if (v98)
      {
        goto LABEL_98;
      }

      v100 = v95;
      if (v71[3] >= v99)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v107 = v94;
          sub_24567DDEC();
          v94 = v107;
        }

        v101 = v86;
      }

      else
      {
        sub_24567D2BC(v99, isUniquelyReferenced_nonNull_native);
        v101 = v86;
        v94 = sub_24567CEF8(v86, v21);
        if ((v100 & 1) != (v102 & 1))
        {
          goto LABEL_103;
        }
      }

      v40 = v92;
      v76 &= v76 - 1;
      if (v100)
      {
        v80 = v94;

        v71 = v174[0];
        v81 = *(v174[0] + 56) + *(v171 + 72) * v80;
        v79 = v163;
        v82 = v170;
        (*(v171 + 40))(v81, v163, v170);

        v78 = v162;
        (*(v171 + 8))(v162, v82);
      }

      else
      {
        v71 = v174[0];
        *(v174[0] + 8 * (v94 >> 6) + 64) |= 1 << v94;
        v103 = (v71[6] + 16 * v94);
        *v103 = v101;
        v103[1] = v21;
        v104 = v170;
        v79 = v163;
        v167((v71[7] + *(v171 + 72) * v94), v163, v170);

        v78 = v162;
        (*(v171 + 8))(v162, v104);
        v105 = v71[2];
        v98 = __OFADD__(v105, 1);
        v106 = v105 + 1;
        if (v98)
        {
          __break(1u);
          goto LABEL_101;
        }

        v71[2] = v106;
      }

      v72 = v83;
      v77 = v160;
      v73 = v161;
    }

    while (1)
    {
      v83 = v72 + 1;
      if (__OFADD__(v72, 1))
      {
        break;
      }

      if (v83 >= v77)
      {

        v175 = sub_245681C0C();
        __swift_allocate_boxed_opaque_existential_0Tm(v174);
        sub_245681BDC();
        goto LABEL_6;
      }

      v76 = *(v73 + 8 * v83);
      ++v72;
      if (v76)
      {
        goto LABEL_40;
      }
    }

    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
    goto LABEL_99;
  }

  v108 = [v41 integerKeyedDictionaryValue];
  if (!v108)
  {
    v119 = *(v171 + 56);
    v120 = v173;

    v119(v120, 1, 1, v68);
    return;
  }

  v109 = v108;
  v110 = sub_24567F56C(0, &qword_27EE20908, 0x277CCABB0);
  v111 = sub_24567F56C(0, &qword_27EE20910, off_278E82BB8);
  sub_24567F5B4();
  v158[3] = v110;
  v158[2] = v111;
  v112 = sub_245681E7C();

  v113 = sub_24567E88C(MEMORY[0x277D84F90]);
  v114 = v173;
  if ((v112 & 0xC000000000000001) != 0)
  {
    v115 = sub_245681F9C();
    v116 = 0;
    v117 = 0;
    v118 = 0;
    v112 = v115 | 0x8000000000000000;
  }

  else
  {
    v121 = -1 << *(v112 + 32);
    v116 = (v112 + 64);
    v117 = ~v121;
    v122 = -v121;
    if (v122 < 64)
    {
      v123 = ~(-1 << v122);
    }

    else
    {
      v123 = -1;
    }

    v118 = (v123 & *(v112 + 64));
  }

  v124 = 0;
  v158[1] = v117;
  v125 = (v117 + 64) >> 6;
  v169 = (v171 + 32);
  v163 = (v171 + 16);
  v164 = (v171 + 48);
  v162 = (v171 + 8);
  v159 = (v171 + 40);
  v165 = v112;
  for (i = v116; ; v116 = i)
  {
    if (v112 < 0)
    {
      v133 = sub_245681FAC();
      if (!v133)
      {
LABEL_86:
        v89 = v170;
LABEL_87:
        sub_24567F61C(v112);
        sub_245681BDC();
        sub_245681B9C();
        v155 = *(v171 + 56);
        v156 = v114;
        v157 = 0;
LABEL_92:
        v155(v156, v157, 1, v89);
        return;
      }

      v135 = v134;
      v176 = v133;
      swift_dynamicCast();
      v131 = v174[0];
      v176 = v135;
      swift_dynamicCast();
      v40 = v174[0];
      v21 = v124;
      v172 = v118;
    }

    else
    {
      v127 = v124;
      v128 = v118;
      v21 = v124;
      if (!v118)
      {
        do
        {
          v21 = v127 + 1;
          if (__OFADD__(v127, 1))
          {
            goto LABEL_97;
          }

          if (v21 >= v125)
          {
            goto LABEL_86;
          }

          v128 = v116[v21];
          ++v127;
        }

        while (!v128);
      }

      v172 = ((v128 - 1) & v128);
      v129 = (v21 << 9) | (8 * __clz(__rbit64(v128)));
      v130 = *(*(v112 + 56) + v129);
      v131 = *(*(v112 + 48) + v129);
      v132 = v130;
      v114 = v173;
      v40 = v132;
    }

    if (!v131)
    {
      v89 = v170;
      v112 = v165;
      goto LABEL_87;
    }

    v136 = v167;
    sub_24567A97C(v40, v167);
    v89 = v170;
    if ((*v164)(v136, 1, v170) == 1)
    {

      sub_24567F61C(v165);

      sub_24567F348(v136, &qword_27EE20818, &qword_245682AF0);
      v155 = *(v171 + 56);
      v156 = v114;
LABEL_91:
      v157 = 1;
      goto LABEL_92;
    }

    v137 = v136;
    v138 = *v169;
    v139 = v160;
    (*v169)(v160, v137, v89);
    v140 = [v131 integerValue];
    (*v163)(v161, v139, v89);
    v141 = swift_isUniquelyReferenced_nonNull_native();
    v174[0] = v113;
    v142 = sub_24567CEB4(v140);
    v144 = v113[2];
    v145 = (v143 & 1) == 0;
    v98 = __OFADD__(v144, v145);
    v146 = v144 + v145;
    if (v98)
    {
      break;
    }

    v147 = v143;
    if (v113[3] >= v146)
    {
      if ((v141 & 1) == 0)
      {
        v154 = v142;
        sub_24567DB84();
        v142 = v154;
      }
    }

    else
    {
      sub_24567CF70(v146, v141);
      v142 = sub_24567CEB4(v140);
      if ((v147 & 1) != (v148 & 1))
      {
        goto LABEL_104;
      }
    }

    v150 = v160;
    v149 = v161;
    v113 = v174[0];
    if (v147)
    {
      v126 = v170;
      (*(v171 + 40))(*(v174[0] + 56) + *(v171 + 72) * v142, v161, v170);

      (*(v171 + 8))(v150, v126);
    }

    else
    {
      *(v174[0] + 8 * (v142 >> 6) + 64) |= 1 << v142;
      *(v113[6] + 8 * v142) = v140;
      v151 = v170;
      v138(v113[7] + *(v171 + 72) * v142, v149, v170);

      (*(v171 + 8))(v150, v151);
      v152 = v113[2];
      v98 = __OFADD__(v152, 1);
      v153 = v152 + 1;
      if (v98)
      {
        goto LABEL_102;
      }

      v113[2] = v153;
    }

    v124 = v21;
    v118 = v172;
    v114 = v173;
    v112 = v165;
  }

LABEL_101:
  __break(1u);
LABEL_102:
  __break(1u);
LABEL_103:
  sub_24568201C();
  __break(1u);
LABEL_104:
  sub_24568201C();
  __break(1u);
}

uint64_t sub_24567BA44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[21] = a4;
  v5[22] = v4;
  v5[19] = a1;
  v5[20] = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE208B8, &qword_245682BE8);
  v5[23] = v6;
  v5[24] = *(v6 - 8);
  v5[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24567BB14, 0, 0);
}

uint64_t sub_24567BB14()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[26] = Strong;
  if (Strong)
  {
    v2 = Strong;
    v3 = swift_unknownObjectWeakLoadStrong();
    v0[27] = v3;
    if (v3)
    {
      v4 = v3;
      v5 = v0[24];
      v6 = v0[25];
      v7 = v0[23];
      v11 = sub_245681B0C();
      v0[28] = v11;
      v0[2] = v0;
      v0[7] = v0 + 18;
      v0[3] = sub_24567BE40;
      swift_continuation_init();
      v0[17] = v7;
      boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v0 + 14);
      sub_24567F56C(0, &qword_27EE208C0, off_278E82BB0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE208C8, &qword_245682BF0);
      sub_245681F0C();
      (*(v5 + 32))(boxed_opaque_existential_0Tm, v6, v7);
      v0[10] = MEMORY[0x277D85DD0];
      v0[11] = 1107296256;
      v0[12] = sub_24567C220;
      v0[13] = &block_descriptor;
      [v2 signPayloadWithBuilder:v4 data:v11 completion:?];
      (*(v5 + 8))(boxed_opaque_existential_0Tm, v7);

      return MEMORY[0x282200938](v0 + 2);
    }

    sub_24567F56C(0, &qword_27EE20828, 0x277CCA9B8);
    sub_245681EAC();
    sub_245681F6C();
    swift_willThrow();
    swift_unknownObjectRelease();
  }

  else
  {
    sub_24567F56C(0, &qword_27EE20828, 0x277CCA9B8);
    sub_245681EAC();
    sub_245681F6C();
    swift_willThrow();
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_24567BE40()
{
  v1 = *(*v0 + 48);
  *(*v0 + 232) = v1;
  if (v1)
  {
    v2 = sub_24567C190;
  }

  else
  {
    v2 = sub_24567BF50;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24567BF50()
{
  v1 = *(v0 + 144);

  [v1 signingAlgorithm];
  v2 = [v1 issuerCertificate];
  if (v2)
  {
    v3 = v2;
    sub_245681EEC();

    v4 = [v1 signature];
    sub_245681B1C();

    sub_245681E0C();
LABEL_5:
    v8 = *(v0 + 216);

    swift_unknownObjectRelease();

    v9 = *(v0 + 8);
    goto LABEL_6;
  }

  v5 = [v1 issuerKey];
  if (v5)
  {
    v6 = v5;
    sub_245681B1C();

    v7 = [v1 signature];
    sub_245681B1C();

    sub_245681E1C();
    goto LABEL_5;
  }

  v11 = *(v0 + 216);
  sub_24567F56C(0, &qword_27EE20828, 0x277CCA9B8);
  sub_245681EAC();
  sub_245681F6C();
  swift_willThrow();

  swift_unknownObjectRelease();

  v9 = *(v0 + 8);
LABEL_6:

  return v9();
}

uint64_t sub_24567C190(uint64_t a1)
{
  v2 = v1[28];
  v3 = v1[27];
  swift_willThrow();

  swift_unknownObjectRelease();

  v4 = v1[1];

  return v4();
}

void sub_24567C220(uint64_t a1, void *a2, void *a3)
{
  __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE208B8, &qword_245682BE8);
    sub_245681F1C();
  }

  else if (a2)
  {
    v6 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE208B8, &qword_245682BE8);
    sub_245681F2C();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_24567C2D0()
{
  sub_24567F054(v0 + 16);
  MEMORY[0x245D6E220](v0 + 24);

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_24567C310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_24567C3D4;

  return sub_24567BA44(a1, a2, a3, a4);
}

uint64_t sub_24567C3D4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

id CIDCInternalPayloadBuilder.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CIDCInternalPayloadBuilder.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CIDCInternalPayloadBuilder();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_24567C5A0(uint64_t a1)
{
  sub_245681E3C();
  sub_24567EC58(&qword_27EE208F8, MEMORY[0x277CFF8F8], MEMORY[0x277CFF900]);
  v2 = sub_245681E8C();

  return sub_24567C638(a1, v2);
}

unint64_t sub_24567C638(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_245681E3C();
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
      sub_24567EC58(&qword_27EE20900, MEMORY[0x277CFF8F8], MEMORY[0x277CFF908]);
      v15 = sub_245681E9C();
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

uint64_t sub_24567C7F8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_24567F6F8;

  return v6();
}

uint64_t sub_24567C8E0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_24567C3D4;

  return v7();
}

uint64_t sub_24567C9C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE208D0, &qword_245682BF8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v23 - v10;
  sub_24567F624(a3, v23 - v10, &qword_27EE208D0, &qword_245682BF8);
  v12 = sub_245681F4C();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_24567F348(v11, &qword_27EE208D0, &qword_245682BF8);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_245681F3C();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_245681EFC();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_245681EBC() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_24567F348(a3, &qword_27EE208D0, &qword_245682BF8);

    return v21;
  }

LABEL_8:
  sub_24567F348(a3, &qword_27EE208D0, &qword_245682BF8);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_24567CCC4(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24567CDBC;

  return v6(a1);
}

uint64_t sub_24567CDBC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_24567CEB4(uint64_t a1)
{
  v2 = sub_24568202C();

  return sub_24567DA60(a1, v2);
}

unint64_t sub_24567CEF8(uint64_t a1, uint64_t a2)
{
  sub_24568203C();
  sub_245681ECC();
  v4 = sub_24568204C();

  return sub_24567DACC(a1, a2, v4);
}

uint64_t sub_24567CF70(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v39 = sub_245681BAC();
  v5 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v38 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE20938, &qword_245682C80);
  v37 = v4;
  result = sub_245681FEC();
  v9 = result;
  if (*(v7 + 16))
  {
    v34 = v3;
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
    v35 = (v5 + 16);
    v36 = v5;
    v16 = (v5 + 32);
    v17 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(*(v7 + 48) + 8 * v22);
      v24 = *(v5 + 72);
      v25 = *(v7 + 56) + v24 * v22;
      if (v37)
      {
        (*v16)(v38, v25, v39);
      }

      else
      {
        (*v35)(v38, v25, v39);
      }

      result = sub_24568202C();
      v26 = -1 << *(v9 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v9 + 48) + 8 * v18) = v23;
      result = (*v16)(*(v9 + 56) + v24 * v18, v38, v39);
      ++*(v9 + 16);
      v5 = v36;
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

    if ((v37 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_34;
    }

    v33 = 1 << *(v7 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero((v7 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v33;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_24567D2BC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v45 = sub_245681BAC();
  v5 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v44 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE20928, &qword_245682C70);
  v42 = v4;
  result = sub_245681FEC();
  v9 = result;
  if (*(v7 + 16))
  {
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
    v38 = v2;
    v39 = (v5 + 16);
    v40 = v7;
    v41 = v5;
    v43 = (v5 + 32);
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v26 = *v24;
      v25 = v24[1];
      v27 = *(v41 + 72);
      v28 = v23 + v27 * v22;
      if (v42)
      {
        (*v43)(v44, v28, v45);
      }

      else
      {
        (*v39)(v44, v28, v45);
      }

      sub_24568203C();
      sub_245681ECC();
      result = sub_24568204C();
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
      *v18 = v26;
      v18[1] = v25;
      result = (*v43)(*(v9 + 56) + v27 * v17, v44, v45);
      ++*(v9 + 16);
      v7 = v40;
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

    if ((v42 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v38;
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

uint64_t sub_24567D63C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE208D8, &qword_245682C48);
  v34 = v4;
  result = sub_245681FEC();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_24568203C();
      sub_245681ECC();
      result = sub_24568204C();
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

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_24567D8E4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_24567CEF8(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_24567D63C(v16, a4 & 1);
      v11 = sub_24567CEF8(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_24568201C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_24567E06C();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

unint64_t sub_24567DA60(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_24567DACC(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_24568200C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void *sub_24567DB84()
{
  v1 = v0;
  v29 = sub_245681BAC();
  v31 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v28 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE20938, &qword_245682C80);
  v3 = *v0;
  v4 = sub_245681FDC();
  v5 = v4;
  if (*(v3 + 16))
  {
    v24 = v1;
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v8 = 0;
    v9 = *(v3 + 16);
    v30 = v5;
    *(v5 + 16) = v9;
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 64);
    v13 = (v10 + 63) >> 6;
    v27 = v31 + 16;
    v25 = v3 + 64;
    for (i = v31 + 32; v12; result = (*(v19 + 32))(*(v23 + 56) + v20, v22, v21))
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_14:
      v17 = v14 | (v8 << 6);
      v18 = *(*(v3 + 48) + 8 * v17);
      v19 = v31;
      v20 = *(v31 + 72) * v17;
      v22 = v28;
      v21 = v29;
      (*(v31 + 16))(v28, *(v3 + 56) + v20, v29);
      v23 = v30;
      *(*(v30 + 48) + 8 * v17) = v18;
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
        v5 = v30;
        goto LABEL_18;
      }

      v16 = *(v25 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

char *sub_24567DDEC()
{
  v1 = v0;
  v35 = sub_245681BAC();
  v37 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE20928, &qword_245682C70);
  v3 = *v0;
  v4 = sub_245681FDC();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v36 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v32 = v37 + 32;
    v33 = v37 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v38 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = 16 * v18;
        v20 = (*(v3 + 48) + 16 * v18);
        v21 = *v20;
        v22 = v20[1];
        v23 = v37;
        v24 = *(v37 + 72) * v18;
        v25 = v34;
        v26 = v35;
        (*(v37 + 16))(v34, *(v3 + 56) + v24, v35);
        v27 = v36;
        v28 = (*(v36 + 48) + v19);
        *v28 = v21;
        v28[1] = v22;
        (*(v23 + 32))(*(v27 + 56) + v24, v25, v26);

        v13 = v38;
      }

      while (v38);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v30;
        v5 = v36;
        goto LABEL_18;
      }

      v17 = *(v31 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void *sub_24567E06C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE208D8, &qword_245682C48);
  v2 = *v0;
  v3 = sub_245681FDC();
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

void *sub_24567E1DC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

id sub_24567E3B8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = type metadata accessor for CIDCInternalPayloadBuilder.CIDCInternalPayloadBuilderDelegate();
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  v10[8] = v4;
  v10[9] = sub_24567EC58(&qword_27EE20948, type metadata accessor for CIDCInternalPayloadBuilder.CIDCInternalPayloadBuilderDelegate, &unk_245682BC0);
  v10[5] = v5;
  v10[3] = sub_245681BCC();
  v10[4] = MEMORY[0x277CFF3A0];
  __swift_allocate_boxed_opaque_existential_0Tm(v10);

  sub_245681BBC();
  v6 = objc_allocWithZone(sub_245681DDC());
  v7 = sub_245681DCC();

  *&v3[OBJC_IVAR____TtC17CoreIDCredBuilder26CIDCInternalPayloadBuilder_payloadBuilder] = v7;
  v9.receiver = v3;
  v9.super_class = type metadata accessor for CIDCInternalPayloadBuilder();
  return objc_msgSendSuper2(&v9, sel_init);
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

uint64_t sub_24567E548(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_24567E59C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE208D8, &qword_245682C48);
    v3 = sub_245681FFC();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_24567CEF8(v5, v6);
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

unint64_t sub_24567E6A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE20930, &qword_245682C78);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE20928, &qword_245682C70);
    v7 = sub_245681FFC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_24567F624(v9, v5, &qword_27EE20930, &qword_245682C78);
      v11 = *v5;
      v12 = v5[1];
      result = sub_24567CEF8(*v5, v12);
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
      v18 = sub_245681BAC();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
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

unint64_t sub_24567E88C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE20940, &qword_245682C88);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v20 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE20938, &qword_245682C80);
    v7 = sub_245681FFC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      sub_24567F624(v9, v5, &qword_27EE20940, &qword_245682C88);
      v11 = *v5;
      result = sub_24567CEB4(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v11;
      v15 = v7[7];
      v16 = sub_245681BAC();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v5 + v8, v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
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

unint64_t sub_24567EA68(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE208E8, &qword_245682C58);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE208F0, &qword_245682C60);
    v7 = sub_245681FFC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_24567F624(v9, v5, &qword_27EE208E8, &qword_245682C58);
      result = sub_24567C5A0(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_245681E3C();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      result = sub_24567F554(&v5[v8], v7[7] + 40 * v13);
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

uint64_t sub_24567EC58(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t dispatch thunk of CIDCInternalPayloadBuilder.buildPayload(details:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x78);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24567EE20;

  return v7(a1);
}

uint64_t sub_24567EE20(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t sub_24567EF60(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
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

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_24567F07C()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24567F0C4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_24567C3D4;

  return sub_24567A70C(v2, v3, v4);
}

uint64_t sub_24567F17C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_24567F6F8;

  return sub_24567C7F8(v2, v3, v4);
}

uint64_t objectdestroy_21Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24567F27C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24567F6F8;

  return sub_24567C8E0(a1, v4, v5, v6);
}

uint64_t sub_24567F348(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_24567F3A8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24567F3E0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24567F6F8;

  return sub_24567CCC4(a1, v4);
}

uint64_t sub_24567F498(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24567C3D4;

  return sub_24567CCC4(a1, v4);
}

uint64_t sub_24567F554(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_24567F56C(uint64_t a1, unint64_t *a2, void *a3)
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

unint64_t sub_24567F5B4()
{
  result = qword_27EE20918;
  if (!qword_27EE20918)
  {
    sub_24567F56C(255, &qword_27EE20908, 0x277CCABB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE20918);
  }

  return result;
}

uint64_t sub_24567F624(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0Tm(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

id CIDCSessionCryptarch.init(role:curve:variant:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v6 initWithRole:a1 curve:a2 variant:a3];
}

id CIDCSessionCryptarch.init(role:curve:variant:)(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v6 = sub_245681CAC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_245681CCC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_245681C6C();
  MEMORY[0x28223BE20](v14);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 == 1)
  {
    v18 = MEMORY[0x277CFF4C0];
  }

  else
  {
    if (a1)
    {
      goto LABEL_8;
    }

    v18 = MEMORY[0x277CFF4C8];
  }

  (*(v15 + 104))(v17, *v18);
  if (a3 < 3)
  {
    (*(v11 + 104))(v13, **(&unk_278E82E18 + a3), v10);
    if (a2 < 5)
    {
      (*(v7 + 104))(v9, **(&unk_278E82DF0 + a2), v6);
      sub_245681D0C();
      swift_allocObject();
      v19 = sub_245681C8C();
      v20 = v23;
      *&v23[OBJC_IVAR___CIDCSessionCryptarch_sessionCryptarch] = v19;
      v24.receiver = v20;
      v24.super_class = CIDCSessionCryptarch;
      return objc_msgSendSuper2(&v24, sel_init);
    }
  }

LABEL_8:
  result = sub_245681FBC();
  __break(1u);
  return result;
}

id CIDCSessionCryptarch.init(role:curve:variant:localKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v10 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v11 = sub_245681B0C();
  v16[0] = 0;
  v12 = [v10 initWithRole:a1 curve:a2 variant:a3 localKey:v11 error:v16];

  if (v12)
  {
    v13 = v16[0];
  }

  else
  {
    v14 = v16[0];
    sub_245681AFC();

    swift_willThrow();
  }

  sub_24567E548(a4, a5);
  return v12;
}

id CIDCSessionCryptarch.init(role:curve:variant:localKey:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v30 = a4;
  v33 = a5;
  v29[0] = a3;
  v7 = sub_245681CCC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_245681CAC();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_245681C6C();
  MEMORY[0x28223BE20](v15);
  v18 = v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 == 1)
  {
    v19 = MEMORY[0x277CFF4C0];
  }

  else
  {
    if (a1)
    {
LABEL_11:
      result = sub_245681FBC();
      __break(1u);
      return result;
    }

    v19 = MEMORY[0x277CFF4C8];
  }

  (*(v16 + 104))(v18, *v19);
  if (a2 >= 5)
  {
    goto LABEL_11;
  }

  (*(v12 + 104))(v14, **(&unk_278E82DF0 + a2), v11);
  if (v29[0] >= 3uLL)
  {
    goto LABEL_11;
  }

  (*(v8 + 104))(v10, **(&unk_278E82E18 + v29[0]), v7);
  sub_245681D0C();
  v20 = swift_allocObject();
  v21 = v30;
  v22 = v33;
  sub_245680020(v30, v33);
  v23 = v20;
  v24 = v29[1];
  v25 = sub_245681C7C();
  if (v24)
  {
    v26 = sub_24567E548(v21, v22);
    type metadata accessor for CIDCSessionCryptarch(v26);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v27 = v31;
    *&v31[OBJC_IVAR___CIDCSessionCryptarch_sessionCryptarch] = v25;
    v32.receiver = v27;
    v32.super_class = CIDCSessionCryptarch;
    v23 = objc_msgSendSuper2(&v32, sel_init);
    sub_24567E548(v21, v22);
  }

  return v23;
}

uint64_t sub_245680020(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

void CIDCSessionCryptarch.setRemoteKey(_:)()
{
  sub_245681C5C();
  if (v0)
  {
    sub_24567F56C(0, &qword_27EE20828, 0x277CCA9B8);
    sub_245681EAC();
    sub_245681F5C();

    swift_willThrow();
  }
}

void CIDCSessionCryptarch.deriveSessionKeys(fromSessionTranscript:)(uint64_t a1, uint64_t a2)
{
  sub_245681C2C();
  if (v2)
  {
    sub_24567F56C(0, &qword_27EE20828, 0x277CCA9B8);
    sub_245681EAC();
    sub_245681F5C();

    swift_willThrow();
  }
}

void CIDCSessionCryptarch.deriveSessionKeys(fromSessionTranscript:intermediateKeyMaterial:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_245681C2C();
  if (v4)
  {
    sub_24567F56C(0, &qword_27EE20828, 0x277CCA9B8);
    sub_245681EAC();
    sub_245681F5C();

    swift_willThrow();
  }
}

uint64_t sub_245680858(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  result = a3(a1, a2);
  if (v3)
  {
    v5 = result;
    sub_24567F56C(0, &qword_27EE20828, 0x277CCA9B8);
    sub_245681EAC();
    sub_245681F5C();

    swift_willThrow();

    return v5;
  }

  return result;
}

id sub_245680948(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(uint64_t, unint64_t))
{
  v7 = a3;
  v8 = a1;
  v9 = sub_245681B1C();
  v11 = v10;

  v12 = a5(v9, v11);
  v14 = v13;

  sub_24567E548(v9, v11);
  v15 = sub_245681B0C();
  sub_24567E548(v12, v14);

  return v15;
}

uint64_t CIDCSessionCryptarch.curve.getter()
{
  v0 = sub_245681CAC();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - v5;
  sub_245681CBC();
  (*(v1 + 16))(v4, v6, v0);
  v7 = (*(v1 + 88))(v4, v0);
  v8 = 0;
  if (v7 == *MEMORY[0x277CFF4D0])
  {
    goto LABEL_10;
  }

  if (v7 == *MEMORY[0x277CFF4D8])
  {
    v8 = 1;
LABEL_10:
    (*(v1 + 8))(v6, v0);
    return v8;
  }

  if (v7 == *MEMORY[0x277CFF4E0])
  {
    v8 = 2;
    goto LABEL_10;
  }

  if (v7 == *MEMORY[0x277CFF4F0])
  {
    v8 = 3;
    goto LABEL_10;
  }

  if (v7 == *MEMORY[0x277CFF4E8])
  {
    v8 = 4;
    goto LABEL_10;
  }

  result = sub_245681FBC();
  __break(1u);
  return result;
}

uint64_t CIDCSessionCryptarch.role.getter()
{
  v0 = sub_245681C6C();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - v5;
  sub_245681C9C();
  (*(v1 + 16))(v4, v6, v0);
  v7 = (*(v1 + 88))(v4, v0);
  v8 = 0;
  if (v7 == *MEMORY[0x277CFF4C8])
  {
    goto LABEL_4;
  }

  if (v7 == *MEMORY[0x277CFF4C0])
  {
    v8 = 1;
LABEL_4:
    (*(v1 + 8))(v6, v0);
    return v8;
  }

  result = sub_245681FBC();
  __break(1u);
  return result;
}

uint64_t CIDCSessionCryptarch.variant.getter()
{
  v0 = sub_245681CCC();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - v5;
  sub_245681CDC();
  (*(v1 + 16))(v4, v6, v0);
  v7 = (*(v1 + 88))(v4, v0);
  v8 = 0;
  if (v7 == *MEMORY[0x277CFF508])
  {
    goto LABEL_6;
  }

  if (v7 == *MEMORY[0x277CFF4F8])
  {
    v8 = 1;
LABEL_6:
    (*(v1 + 8))(v6, v0);
    return v8;
  }

  if (v7 == *MEMORY[0x277CFF500])
  {
    v8 = 2;
    goto LABEL_6;
  }

  result = sub_245681FBC();
  __break(1u);
  return result;
}

uint64_t CIDCSessionCryptarch.privateKey.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE209B8, &qword_245682C98);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v7 - v1;
  sub_245681CEC();
  v3 = sub_245681C4C();
  v4 = *(v3 - 8);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_24567F348(v2, &qword_27EE209B8, &qword_245682C98);
    return 0;
  }

  else
  {
    v6 = sub_245681C3C();
    (*(v4 + 8))(v2, v3);
    return v6;
  }
}

void __swiftcall CIDCSessionCryptarch.init()(CIDCSessionCryptarch *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

uint64_t sub_2456816C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE209C8, &qword_245682CA8);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v18 - v9;
  if (sub_245681D3C() == a1 && v11 == a2)
  {
  }

  else
  {
    v12 = sub_24568200C();

    if ((v12 & 1) == 0)
    {
      return -1000;
    }
  }

  sub_245681D1C();
  v13 = sub_245681D2C();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v10, 1, v13) != 1)
  {
    sub_245681A48(v10, v8);
    v15 = (*(v14 + 88))(v8, v13);
    if (v15 != *MEMORY[0x277CFF558])
    {
      if (v15 == *MEMORY[0x277CFF530])
      {
        v16 = 1001;
        goto LABEL_8;
      }

      if (v15 == *MEMORY[0x277CFF540])
      {
        v16 = 1002;
        goto LABEL_8;
      }

      if (v15 != *MEMORY[0x277CFF548])
      {
        if (v15 == *MEMORY[0x277CFF538])
        {
          v16 = -2002;
          goto LABEL_8;
        }

        if (v15 == *MEMORY[0x277CFF550])
        {
          v16 = -3000;
          goto LABEL_8;
        }

        if (v15 == *MEMORY[0x277CFF528])
        {
          v16 = -5000;
          goto LABEL_8;
        }

        if (v15 == *MEMORY[0x277CFF520])
        {
          v16 = -6000;
          goto LABEL_8;
        }

        (*(v14 + 8))(v8, v13);
      }
    }
  }

  v16 = -1000;
LABEL_8:
  sub_24567F348(v10, &qword_27EE209C8, &qword_245682CA8);
  return v16;
}

uint64_t sub_245681A34(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_24567E548(result, a2);
  }

  return result;
}

uint64_t sub_245681A48(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE209C8, &qword_245682CA8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}