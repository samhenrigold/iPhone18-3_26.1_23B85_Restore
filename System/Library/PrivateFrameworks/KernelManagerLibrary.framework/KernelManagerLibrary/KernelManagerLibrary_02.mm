uint64_t sub_2557A594C(unint64_t a1, unint64_t a2)
{
  v47 = *MEMORY[0x277D85DE8];
  v4 = a2 >> 62;
  v31 = HIDWORD(a1);
  if ((a2 >> 62) <= 1)
  {
    if (!v4)
    {
      v5 = BYTE6(a2);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v4 != 2)
  {
    return MEMORY[0x277D84F90];
  }

  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v5 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_49;
    }

    v5 = HIDWORD(a1) - a1;
  }

LABEL_10:
  v8 = MEMORY[0x277D84F90];
  if (v5)
  {
    v46 = MEMORY[0x277D84F90];
    v32 = a2 >> 62;
    sub_2557AB37C(0, v5 & ~(v5 >> 63), 0);
    v9 = v32;
    if (v32)
    {
      if (v32 == 2)
      {
        v10 = *(a1 + 16);
      }

      else
      {
        v10 = a1;
      }
    }

    else
    {
      v10 = 0;
    }

    v33 = v10;
    if (v5 < 0)
    {
      goto LABEL_48;
    }

    v11 = 0;
    v8 = v46;
    v30 = &v34 + v10;
    do
    {
      if (v11 >= v5)
      {
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
      }

      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_41;
      }

      v13 = v33 + v11;
      if (v9 == 2)
      {
        if (v13 < *(a1 + 16))
        {
          goto LABEL_43;
        }

        if (v13 >= *(a1 + 24))
        {
          goto LABEL_45;
        }

        v18 = sub_2557B0868();
        if (!v18)
        {
          goto LABEL_51;
        }

        v15 = v18;
        v19 = sub_2557B0888();
        v17 = v13 - v19;
        if (__OFSUB__(v13, v19))
        {
          goto LABEL_47;
        }
      }

      else
      {
        if (v9 != 1)
        {
          if (v13 >= BYTE6(a2))
          {
            goto LABEL_42;
          }

          v34 = a1;
          v35 = BYTE2(a1);
          v36 = BYTE3(a1);
          v37 = v31;
          v38 = BYTE5(a1);
          v39 = BYTE6(a1);
          v40 = HIBYTE(a1);
          v41 = a2;
          v42 = BYTE2(a2);
          v43 = BYTE3(a2);
          v44 = BYTE4(a2);
          v45 = BYTE5(a2);
          v20 = v30[v11];
          goto LABEL_36;
        }

        if (v13 < a1 || v13 >= a1 >> 32)
        {
          goto LABEL_44;
        }

        v14 = sub_2557B0868();
        if (!v14)
        {
          goto LABEL_50;
        }

        v15 = v14;
        v16 = sub_2557B0888();
        v17 = v13 - v16;
        if (__OFSUB__(v13, v16))
        {
          goto LABEL_46;
        }
      }

      v20 = *(v15 + v17);
      v9 = v32;
LABEL_36:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D2E48, &unk_2557B1DE0);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_2557B1770;
      *(v21 + 56) = MEMORY[0x277D84B78];
      *(v21 + 64) = MEMORY[0x277D84BC0];
      *(v21 + 32) = v20;
      v22 = sub_2557B0C48();
      v46 = v8;
      v25 = *(v8 + 16);
      v24 = *(v8 + 24);
      if (v25 >= v24 >> 1)
      {
        v29 = v22;
        v27 = v23;
        sub_2557AB37C((v24 > 1), v25 + 1, 1);
        v9 = v32;
        v23 = v27;
        v22 = v29;
        v8 = v46;
      }

      *(v8 + 16) = v25 + 1;
      v26 = v8 + 16 * v25;
      *(v26 + 32) = v22;
      *(v26 + 40) = v23;
      ++v11;
    }

    while (v12 != v5);
  }

  return v8;
}

void sub_2557A5CC8(uint64_t a1, unsigned int (*a2)(char *, uint64_t, uint64_t), void (*a3)(uint64_t), uint64_t a4)
{
  if (qword_27F7D2E18 != -1)
  {
    swift_once();
  }

  v8 = sub_2557B0B38();
  __swift_project_value_buffer(v8, qword_27F7D31B8);
  v9 = sub_2557B0B18();
  v10 = sub_2557B0DC8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_255786000, v9, v10, "starting assets evaluation", v11, 2u);
    MEMORY[0x259C40F40](v11, -1, -1);
  }

  sub_2557A5F90(a2, &v26);
  if (!v4)
  {
    v30 = 0;
    v24 = v27;
    v25 = v26;
    v13 = v28;
    v12 = v29;
    v14 = sub_2557B0B18();
    v15 = sub_2557B0DC8();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_255786000, v14, v15, "assets evaluation completed", v16, 2u);
      MEMORY[0x259C40F40](v16, -1, -1);
    }

    v17 = sub_2557B0B18();
    v18 = sub_2557B0DC8();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_255786000, v17, v18, "starting assets execution", v19, 2u);
      MEMORY[0x259C40F40](v19, -1, -1);
    }

    v26 = v25;
    v27 = v24;
    v28 = v13;
    v29 = v12;
    v20 = v30;
    sub_2557A8AD8(&v26, a3, a4);

    if (!v20)
    {
      v21 = sub_2557B0B18();
      v22 = sub_2557B0DC8();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_255786000, v21, v22, "assets execution completed", v23, 2u);
        MEMORY[0x259C40F40](v23, -1, -1);
      }
    }
  }
}

void sub_2557A5F90(unsigned int (*a1)(char *, uint64_t, uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v89 = a1;
  v3 = v2;
  v86 = a2;
  v4 = type metadata accessor for SLAMScript(0);
  v88 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4, v5);
  v85 = &v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v78 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D3128, &unk_2557B2530);
  v13 = MEMORY[0x28223BE20](v11 - 8, v12);
  v84 = &v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13, v15);
  v18 = &v78 - v17;
  v20 = MEMORY[0x28223BE20](v16, v19);
  v22 = &v78 - v21;
  MEMORY[0x28223BE20](v20, v23);
  v25 = &v78 - v24;
  sub_255793B04(v2 + 16, v97);
  type metadata accessor for SLAMInterface();
  inited = swift_initStackObject();
  type metadata accessor for SLAMHandler();
  v27 = swift_initStackObject();
  sub_2557ABE30(v97, v27 + 16);
  *(v27 + 48) = 0;
  *(v27 + 56) = 0;
  *(inited + 16) = v27;
  *(inited + 24) = &off_2867913F0;
  v28 = v25;
  (*(v88 + 56))(v25, 1, 1, v4);
  v29 = v90;
  v92[2] = v3;
  v92[3] = v89;
  v92[4] = inited;
  v92[5] = v25;
  v30 = sub_2557A0C60("api_evaluate-server-asset", 0x19, 2, 0, 0, sub_2557ABF14, v92);
  if (v29)
  {
    swift_setDeallocating();
    swift_unknownObjectRelease();
LABEL_46:
    sub_255799CFC(v28, &qword_27F7D3128, &unk_2557B2530);
    return;
  }

  v79 = v18;
  v80 = v22;
  v81 = 0;
  v82 = inited;
  v91 = v4;
  v95 = 0u;
  v96 = 0u;
  v31 = *(v30 + 16);
  v83 = v30;
  if (v31)
  {
    v78 = v25;
    v87 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = v30 + ((*(v88 + 80) + 32) & ~*(v88 + 80));
    v89 = *(v88 + 72);
    v90 = 0;
    v28 = v31;
    while (1)
    {
      sub_2557ABF34(v35, v10, type metadata accessor for SLAMScript);
      v36 = *&v10[*(v91 + 28)];
      v37 = [v36 nvmRequired];
      v38 = __CFADD__(v34, v37);
      v34 += v37;
      if (v38)
      {
        goto LABEL_48;
      }

      v39 = [v36 corRequired];
      v38 = __CFADD__(v33, v39);
      v33 += v39;
      if (v38)
      {
        goto LABEL_49;
      }

      v40 = [v36 indicesRequired];
      v38 = __CFADD__(v32, v40);
      v32 += v40;
      if (v38)
      {
        goto LABEL_50;
      }

      v41 = v10[*(v91 + 24)];
      if (v41 > 3)
      {
        if (v41 - 4 < 2)
        {
LABEL_14:
          v42 = [v36 codRequired];
          v43 = v90 + v42;
          if (__CFADD__(v90, v42))
          {
            goto LABEL_51;
          }

          v90 += v42;
          *&v96 = v43;
          goto LABEL_5;
        }

        if (v41 == 6)
        {
          v38 = __CFADD__(v34, 15000);
          v34 += 15000;
          if (v38)
          {
            goto LABEL_52;
          }

          v38 = __CFADD__(v33, 250);
          v33 += 250;
          if (v38)
          {
            goto LABEL_53;
          }

          if (v90 >= 0xFFFFFFFFFFFFFE0CLL)
          {
            goto LABEL_54;
          }

          *&v96 = v90 + 500;
          v38 = __CFADD__(v32, 300);
          v32 += 300;
          if (v38)
          {
            goto LABEL_55;
          }

          v90 += 500;
        }
      }

      else if (v10[*(v91 + 24)] > 1u)
      {
        if (v41 == 2)
        {
          v44 = [v36 codRequired];
          if (v87 < v44)
          {
            v87 = [v36 codRequired];
          }
        }
      }

      else if (!v10[*(v91 + 24)])
      {
        goto LABEL_14;
      }

LABEL_5:
      sub_2557ABF9C(v10, type metadata accessor for SLAMScript);
      v35 += v89;
      if (!--v28)
      {
        *(&v96 + 1) = v32;
        *&v95 = v34;
        *(&v95 + 1) = v33;
        v28 = v78;
        goto LABEL_27;
      }
    }
  }

  v87 = 0;
  v90 = 0;
LABEL_27:
  v45 = v80;
  sub_2557ABFFC(v28, v80, &qword_27F7D3128, &unk_2557B2530);
  v46 = v28;
  v47 = *(v88 + 48);
  v48 = v91;
  v49 = v47(v45, 1, v91);
  sub_255799CFC(v45, &qword_27F7D3128, &unk_2557B2530);
  if (v49 == 1)
  {
    v50 = v90 + v87;
    if (!__CFADD__(v90, v87))
    {
      v28 = v46;
LABEL_35:
      *&v96 = v50;
      goto LABEL_36;
    }

    __break(1u);
    goto LABEL_58;
  }

  v51 = v46;
  v52 = v79;
  sub_2557ABFFC(v46, v79, &qword_27F7D3128, &unk_2557B2530);
  v89 = v47;
  if (v47(v52, 1, v48) == 1)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v53 = *(v52 + *(v48 + 28));
  sub_2557ABF9C(v52, type metadata accessor for SLAMScript);
  v54 = [v53 codRequired];

  v28 = v51;
  if (v87 <= v54)
  {
LABEL_36:
    if (qword_27F7D2E18 != -1)
    {
      goto LABEL_56;
    }

    while (1)
    {
      v59 = sub_2557B0B38();
      __swift_project_value_buffer(v59, qword_27F7D31B8);
      v60 = sub_2557B0B18();
      v61 = sub_2557B0DE8();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        v98 = swift_slowAlloc();
        v63 = v28;
        v64 = v98;
        *v62 = 136446210;
        swift_beginAccess();
        v93 = v95;
        v94 = v96;
        v65 = SEMemoryInfo.description.getter();
        v67 = sub_2557AAA60(v65, v66, &v98);

        *(v62 + 4) = v67;
        _os_log_impl(&dword_255786000, v60, v61, "Memory requirements: %{public}s", v62, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v64);
        v68 = v64;
        v28 = v63;
        MEMORY[0x259C40F40](v68, -1, -1);
        MEMORY[0x259C40F40](v62, -1, -1);
      }

      v69 = v86;
      if (!v31)
      {
        break;
      }

      LODWORD(v70) = 0;
      v71 = *(v91 + 28);
      v72 = v83 + ((*(v88 + 80) + 32) & ~*(v88 + 80));
      v73 = *(v88 + 72);
      v74 = v85;
      while (1)
      {
        sub_2557ABF34(v72, v74, type metadata accessor for SLAMScript);
        v75 = [*(v74 + v71) apduCount];
        v38 = __CFADD__(v70, v75);
        v70 = v70 + v75;
        if (v38)
        {
          break;
        }

        sub_2557ABF9C(v74, type metadata accessor for SLAMScript);
        v72 += v73;
        if (!--v31)
        {

          v69 = v86;
          goto LABEL_45;
        }
      }

      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      swift_once();
    }

    v70 = 0;
LABEL_45:
    swift_beginAccess();
    v76 = v96;
    *v69 = v95;
    *(v69 + 16) = v76;
    v77 = v83;
    *(v69 + 32) = v70;
    *(v69 + 40) = v77;
    goto LABEL_46;
  }

  v55 = v84;
  sub_2557ABFFC(v51, v84, &qword_27F7D3128, &unk_2557B2530);
  if (v89(v55, 1, v48) != 1)
  {
    v56 = *(v55 + *(v48 + 28));
    sub_2557ABF9C(v55, type metadata accessor for SLAMScript);
    v57 = [v56 codRequired];

    v58 = v87 - v57;
    if (v87 >= v57)
    {
      v38 = __CFADD__(v90, v58);
      v50 = v90 + v58;
      if (!v38)
      {
        goto LABEL_35;
      }

      goto LABEL_59;
    }

LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

LABEL_61:
  __break(1u);
}

uint64_t sub_2557A680C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, unsigned __int8 **a5@<X8>)
{
  v251 = a4;
  *&v276 = a3;
  v272 = a2;
  v252 = a5;
  v290 = *MEMORY[0x277D85DE8];
  v265 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D3128, &unk_2557B2530);
  v8 = MEMORY[0x28223BE20](v265, v7);
  v250 = &v240 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v257 = &v240 - v12;
  v14 = MEMORY[0x28223BE20](v11, v13);
  v258 = &v240 - v15;
  v17 = MEMORY[0x28223BE20](v14, v16);
  v259 = &v240 - v18;
  MEMORY[0x28223BE20](v17, v19);
  v260 = (&v240 - v20);
  v278 = sub_2557B0968();
  v274 = *(v278 - 8);
  v21 = *(v274 + 64);
  v23 = MEMORY[0x28223BE20](v278, v22);
  v267 = (&v240 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = MEMORY[0x28223BE20](v23, v24);
  v264 = &v240 - v26;
  MEMORY[0x28223BE20](v25, v27);
  v268 = &v240 - v28;
  v270 = type metadata accessor for ProfileScript(0);
  v281 = *(v270 - 8);
  MEMORY[0x28223BE20](v270, v29);
  *&v277 = &v240 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D3138, &qword_2557B26A0);
  v33 = MEMORY[0x28223BE20](v31 - 8, v32);
  v269 = (&v240 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v33, v35);
  v273 = &v240 - v36;
  v280 = type metadata accessor for SLAMScript(0);
  v279 = *(v280 - 8);
  v38 = MEMORY[0x28223BE20](v280, v37);
  v254 = (&v240 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  v41 = MEMORY[0x28223BE20](v38, v40);
  v271 = &v240 - v42;
  v44 = MEMORY[0x28223BE20](v41, v43);
  v262 = &v240 - v45;
  v47 = MEMORY[0x28223BE20](v44, v46);
  v266 = (&v240 - v48);
  v50 = MEMORY[0x28223BE20](v47, v49);
  v52 = &v240 - v51;
  v54 = MEMORY[0x28223BE20](v50, v53);
  v56 = &v240 - v55;
  v58 = MEMORY[0x28223BE20](v54, v57);
  v60 = (&v240 - v59);
  MEMORY[0x28223BE20](v58, v61);
  v63 = &v240 - v62;
  v64 = type metadata accessor for KernelAsset(0);
  MEMORY[0x28223BE20](v64, v65);
  v67 = &v240 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);

  v68 = sub_2557923C8("api_device-state", 0x10, 2, 0, 0, a1, 0);
  if (v5)
  {
  }

  v282 = v67;
  v263 = v63;
  v246 = v60;
  v261 = v56;
  v248 = v64;
  v247 = v52;
  v256 = v21;
  v253 = v68;
  v249 = a1;

  v69 = v272;
  LODWORD(v70) = (*v272 & 1) != 0 || *(v253 + 104) != 0;
  v275 = 0;
  if (qword_27F7D2E18 == -1)
  {
    goto LABEL_6;
  }

LABEL_147:
  swift_once();
LABEL_6:
  v71 = sub_2557B0B38();
  v72 = __swift_project_value_buffer(v71, qword_27F7D31B8);
  v73 = v282;
  sub_2557ABF34(v69, v282, type metadata accessor for KernelAsset);
  v255 = v72;
  v74 = sub_2557B0B18();
  v75 = sub_2557B0DE8();
  if (os_log_type_enabled(v74, v75))
  {
    v76 = swift_slowAlloc();
    *v76 = 67240192;
    v77 = *v73;
    sub_2557ABF9C(v73, type metadata accessor for KernelAsset);
    *(v76 + 4) = v77;
    _os_log_impl(&dword_255786000, v74, v75, "Forced Bee update: %{BOOL,public}d", v76, 8u);
    MEMORY[0x259C40F40](v76, -1, -1);
  }

  else
  {
    sub_2557ABF9C(v73, type metadata accessor for KernelAsset);
  }

  v78 = sub_2557B0B18();
  v79 = sub_2557B0DE8();
  if (os_log_type_enabled(v78, v79))
  {
    v80 = swift_slowAlloc();
    *v80 = 67240192;
    *(v80 + 4) = v70;
    _os_log_impl(&dword_255786000, v78, v79, "Bee (re)installation required: %{BOOL,public}d", v80, 8u);
    MEMORY[0x259C40F40](v80, -1, -1);
  }

  if (v70)
  {
    v81 = OBJC_IVAR____TtC20KernelManagerLibrary13KernelManager_sefw;
    v82 = v275;
    sub_25579AF88(v249 + OBJC_IVAR____TtC20KernelManagerLibrary13KernelManager_sefw, v263);
    if (v82)
    {
    }

    v275 = 0;
    v94 = sub_255794864(0, 1, 1, MEMORY[0x277D84F90]);
    inited = *(v94 + 2);
    v95 = *(v94 + 3);
    v97 = inited + 1;
    LODWORD(v245) = v70;
    if (inited >= v95 >> 1)
    {
      goto LABEL_151;
    }

    goto LABEL_21;
  }

  LODWORD(v245) = 0;
  v282 = MEMORY[0x277D84F90];
  v83 = v278;
  while (1)
  {
    v84 = *(v248 + 24);
    v85 = v273;
    sub_2557ABFFC(v69 + v84, v273, &qword_27F7D3138, &qword_2557B26A0);
    v86 = *(v274 + 48);
    v87 = v86(v85, 1, v83);
    sub_255799CFC(v85, &qword_27F7D3138, &qword_2557B26A0);
    if (v87 == 1)
    {
      v88 = v270;
    }

    else
    {
      v89 = v269;
      sub_2557ABFFC(v69 + v84, v269, &qword_27F7D3138, &qword_2557B26A0);
      result = v86(v89, 1, v83);
      v91 = v275;
      if (result == 1)
      {
        goto LABEL_154;
      }

      v92 = v261;
      sub_25579BB58(v89, v261);
      v93 = v274;
      if (v91)
      {

        return (*(v93 + 8))(v89, v83);
      }

      (*(v274 + 8))(v89, v83);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v275 = 0;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v282 = sub_255794864(0, *(v282 + 2) + 1, 1, v282);
      }

      v104 = v279;
      v88 = v270;
      v105 = v282;
      v107 = *(v282 + 2);
      v106 = *(v282 + 3);
      if (v107 >= v106 >> 1)
      {
        v239 = sub_255794864((v106 > 1), v107 + 1, 1, v282);
        v104 = v279;
        v105 = v239;
      }

      *(v105 + 2) = v107 + 1;
      v108 = (*(v104 + 80) + 32) & ~*(v104 + 80);
      v282 = v105;
      sub_2557AC95C(v92, &v105[v108 + *(v104 + 72) * v107], type metadata accessor for SLAMScript);
    }

    if ((v245 & 1) != 0 || (v109 = *(v253 + 112)) == 0)
    {
      v109 = MEMORY[0x277D84F90];
    }

    else
    {
    }

    v283 = v109;
    v110 = sub_2557B0B18();
    v111 = sub_2557B0DE8();
    v112 = os_log_type_enabled(v110, v111);
    v261 = v109;
    if (v112)
    {
      v113 = swift_slowAlloc();
      v114 = swift_slowAlloc();
      aBlock = v114;
      *v113 = 136446210;

      v116 = v88;
      v117 = MEMORY[0x259C40720](v115, MEMORY[0x277D84B78]);
      v119 = v118;

      v120 = sub_2557AAA60(v117, v119, &aBlock);

      *(v113 + 4) = v120;
      v88 = v116;
      _os_log_impl(&dword_255786000, v110, v111, "Installed kernel IDs: %{public}s", v113, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v114);
      MEMORY[0x259C40F40](v114, -1, -1);
      MEMORY[0x259C40F40](v113, -1, -1);
    }

    inited = v281;
    v70 = v277;
    v121 = *(v69 + *(v248 + 32));
    v263 = v121;
    if (v121)
    {
      v273 = *(v121 + 16);
      if (v273)
      {
        v69 = 0;
        v270 = *(v88 + 20);
        v269 = (v121 + ((v281[80] + 32) & ~v281[80]));
        v122 = MEMORY[0x277D84FA0];
        while (v69 < *(v121 + 16))
        {
          sub_2557ABF34(v269 + *(inited + 72) * v69, v70, type metadata accessor for ProfileScript);
          v123 = *(v70 + v270);

          sub_2557ABF9C(v70, type metadata accessor for ProfileScript);
          v124 = *(v123 + 16);
          if (v124)
          {
            v125 = 0;
            *&v276 = v123;
            v126 = v123 + 32;
            do
            {
              v128 = (v122 + 7);
              while (1)
              {
                v129 = *(v126 + v125++);
                v130 = MEMORY[0x259C409A0](v122[5], v129, 1);
                v131 = -1 << *(v122 + 32);
                v132 = v130 & ~v131;
                if (((*&v128[(v132 >> 3) & 0xFFFFFFFFFFFFFF8] >> v132) & 1) == 0)
                {
                  break;
                }

                v133 = ~v131;
                while (*(v122[6] + v132) != v129)
                {
                  v132 = (v132 + 1) & v133;
                  if (((*&v128[(v132 >> 3) & 0xFFFFFFFFFFFFFF8] >> v132) & 1) == 0)
                  {
                    goto LABEL_42;
                  }
                }

                if (v125 == v124)
                {
                  goto LABEL_50;
                }
              }

LABEL_42:
              v127 = swift_isUniquelyReferenced_nonNull_native();
              aBlock = v122;
              sub_2557AB5EC(v129, v132, v127);
              v122 = aBlock;
            }

            while (v125 != v124);
LABEL_50:

            inited = v281;
            v121 = v263;
            v70 = v277;
          }

          else
          {
          }

          if (++v69 == v273)
          {
            goto LABEL_52;
          }
        }

LABEL_145:
        __break(1u);
LABEL_146:
        __break(1u);
        goto LABEL_147;
      }
    }

    v122 = MEMORY[0x277D84FA0];
LABEL_52:
    v81 = (v122 + 7);
    v97 = 1 << *(v122 + 32);
    v134 = -1;
    if (v97 < 64)
    {
      v134 = ~(-1 << v97);
    }

    v70 = v134 & v122[7];
    v241 = OBJC_IVAR____TtC20KernelManagerLibrary13KernelManager_sefw;

    swift_beginAccess();
    v135 = 0;
    v69 = (v97 + 63) >> 6;
    *&v136 = 16908544;
    v276 = v136;
    v277 = xmmword_2557B1770;
    for (i = v261; ; v283 = i)
    {
      v261 = i;
      v138 = i + 32;
LABEL_56:
      v139 = v135;
      if (!v70)
      {
        break;
      }

LABEL_60:
      v97 = *(v122[6] + (__clz(__rbit64(v70)) | (v135 << 6)));
      v140 = v275;
      v141 = sub_2557AE95C(*(v272 + 8), *(v272 + 16));
      v275 = v140;
      if (v140)
      {
      }

      inited = v141;
      if (!v141[2] || (v142 = sub_2557896D0(v97), (v143 & 1) == 0))
      {

        sub_25578AA30();
        swift_allocError();
        *v228 = xmmword_2557B2850;
        *(v228 + 16) = 7;
        swift_willThrow();
      }

      v70 &= v70 - 1;
      v144 = *(*(inited + 56) + v142);

      v145 = *(v261 + 2);
      v146 = v138;
      while (v145)
      {
        v147 = *v146++;
        --v145;
        if (v147 == v144)
        {
          goto LABEL_56;
        }
      }

      v148 = sub_2557B0B18();
      v149 = sub_2557B0DE8();
      if (os_log_type_enabled(v148, v149))
      {
        v150 = swift_slowAlloc();
        *v150 = v276;
        v150[4] = v144;
        _os_log_impl(&dword_255786000, v148, v149, "Kernel installation required for ckid: %{public}hhu", v150, 5u);
        MEMORY[0x259C40F40](v150, -1, -1);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D2F00, &qword_2557B1DF0);
      inited = swift_initStackObject();
      *(inited + 16) = v277;
      *(inited + 32) = v144;
      v151 = v275;
      v152 = sub_25579DFD8(v249 + v241, inited);
      v275 = v151;
      if (v151)
      {

        swift_setDeallocating();
      }

      v97 = v152;
      swift_setDeallocating();
      v95 = *(v97 + 16);
      if (!v95)
      {
        goto LABEL_149;
      }

      v153 = (*(v279 + 80) + 32) & ~*(v279 + 80);
      sub_2557ABF34(v97 + v153, v247, type metadata accessor for SLAMScript);

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v154 = v282;
      }

      else
      {
        v154 = sub_255794864(0, *(v282 + 2) + 1, 1, v282);
      }

      v156 = *(v154 + 2);
      v155 = *(v154 + 3);
      v157 = v279;
      if (v156 >= v155 >> 1)
      {
        v159 = sub_255794864((v155 > 1), v156 + 1, 1, v154);
        v157 = v279;
        v154 = v159;
      }

      *(v154 + 2) = v156 + 1;
      v282 = v154;
      sub_2557AC95C(v247, &v154[v153 + *(v157 + 72) * v156], type metadata accessor for SLAMScript);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        i = v261;
      }

      else
      {
        i = sub_255794330(0, *(v261 + 2) + 1, 1, v261);
      }

      inited = *(i + 2);
      v158 = *(i + 3);
      v97 = inited + 1;
      if (inited >= v158 >> 1)
      {
        i = sub_255794330((v158 > 1), inited + 1, 1, i);
      }

      *(i + 2) = v97;
      i[inited + 32] = v144;
    }

    while (1)
    {
      v135 = v139 + 1;
      if (__OFADD__(v139, 1))
      {
        __break(1u);
        goto LABEL_145;
      }

      if (v135 >= v69)
      {
        break;
      }

      v70 = v81[v135];
      ++v139;
      if (v70)
      {
        goto LABEL_60;
      }
    }

    v160 = *(v272 + *(v248 + 28));
    if (v160)
    {
      break;
    }

    v70 = v278;
    v81 = v267;
    v69 = v265;
    v161 = v271;
LABEL_98:
    if (v263 && (v259 = *(v263 + 2)) != 0)
    {
      v190 = 0;
      v270 = v274 + 16;
      v269 = (v279 + 56);
      v268 = (v274 + 32);
      v266 = &v286;
      v260 = (v274 + 8);
      v255 = (v279 + 48);
      while (1)
      {
        v95 = *(v263 + 2);
        if (v190 >= v95)
        {
          break;
        }

        v191 = &v263[(v281[80] + 32) & ~v281[80]];
        v192 = *(v281 + 9);
        v272 = v190;
        v193 = &v191[v192 * v190];
        v194 = v274;
        v195 = *(v274 + 16);
        v195(v81, v193, v70);
        v196 = swift_allocBox();
        v198 = v197;
        (*v269)(v197, 1, 1, v280);
        v199 = swift_allocObject();
        v199[2] = 0;
        v199[3] = 0;
        v199[4] = v196;
        *&v277 = objc_opt_self();
        v273 = v196;

        sub_2557B0948();
        *&v276 = sub_2557B0C08();

        v200 = v264;
        v201 = v81;
        v202 = v278;
        v195(v264, v201, v278);
        v203 = (*(v194 + 80) + 32) & ~*(v194 + 80);
        v204 = v203 + v256;
        v205 = swift_allocObject();
        *(v205 + 16) = sub_25579E5CC;
        *(v205 + 24) = v199;
        (*(v194 + 32))(v205 + v203, v200, v202);
        *(v205 + v204) = 6;
        v288 = sub_2557AC9CC;
        v289 = v205;
        aBlock = MEMORY[0x277D85DD0];
        v285 = 1107296256;
        v286 = sub_25579D364;
        v287 = &block_descriptor_1;
        v206 = _Block_copy(&aBlock);

        aBlock = 0;
        v207 = v276;
        LODWORD(v204) = [v277 InspectCompatibleHWSEFW:v276 closure:v206 error:&aBlock];
        _Block_release(v206);

        if (!v204)
        {
          v234 = aBlock;

          sub_2557B0908();

          swift_willThrow();

LABEL_134:

          (*v260)(v267, v278);
        }

        v208 = aBlock;

        swift_beginAccess();
        v209 = v258;
        sub_2557ABFFC(v198, v258, &qword_27F7D3128, &unk_2557B2530);
        v210 = *v255;
        v211 = v280;
        if ((*v255)(v209, 1, v280) == 1)
        {

          sub_255799CFC(v209, &qword_27F7D3128, &unk_2557B2530);
          sub_25578AA30();
          swift_allocError();
          *v235 = xmmword_2557B24A0;
          *(v235 + 16) = 7;
          swift_willThrow();
          goto LABEL_134;
        }

        sub_255799CFC(v209, &qword_27F7D3128, &unk_2557B2530);
        v212 = v257;
        sub_2557ABFFC(v198, v257, &qword_27F7D3128, &unk_2557B2530);
        result = v210(v212, 1, v211);
        v81 = v267;
        if (result == 1)
        {
          goto LABEL_153;
        }

        v70 = v278;
        (*v260)(v267, v278);
        sub_2557AC95C(v212, v262, type metadata accessor for SLAMScript);

        v213 = swift_isUniquelyReferenced_nonNull_native();
        v69 = v265;
        v161 = v271;
        v214 = v272;
        if (v213)
        {
          v215 = v282;
        }

        else
        {
          v215 = sub_255794864(0, *(v282 + 2) + 1, 1, v282);
        }

        inited = *(v215 + 2);
        v216 = *(v215 + 3);
        v97 = inited + 1;
        v217 = v279;
        v218 = v262;
        if (inited >= v216 >> 1)
        {
          v220 = sub_255794864((v216 > 1), inited + 1, 1, v215);
          v217 = v279;
          v215 = v220;
          v218 = v262;
        }

        v190 = v214 + 1;
        *(v215 + 2) = v97;
        v219 = (*(v217 + 80) + 32) & ~*(v217 + 80);
        v282 = v215;
        sub_2557AC95C(v218, &v215[v219 + *(v217 + 72) * inited], type metadata accessor for SLAMScript);
        if (v259 == v190)
        {
          goto LABEL_112;
        }
      }

      __break(1u);
LABEL_149:
      __break(1u);
    }

    else
    {
LABEL_112:
      v221 = *(v253 + 112);

      if (!v221)
      {
        v81 = v252;
        v224 = v251;
        v225 = v250;
LABEL_121:

LABEL_122:
        v229 = 1;
LABEL_123:
        (*(v279 + 56))(v225, v229, 1, v280);
        sub_25579E948(v225, v224);

        *v81 = v282;
        return result;
      }

      v222 = v275;
      v223 = sub_25579DFD8(v249 + v241, v221);
      v81 = v252;
      v224 = v251;
      v225 = v250;
      if (v222)
      {
      }

      v97 = 0;
      inited = v223;
      if (!v223)
      {
        goto LABEL_121;
      }

      v232 = *(v223 + 2);
      if (!v232)
      {

        goto LABEL_122;
      }

      v281 = &v223[(*(v279 + 80) + 32) & ~*(v279 + 80)];
      sub_2557ABF34(v281, v161, type metadata accessor for SLAMScript);
      v233 = 0;
      if (v232 == 1)
      {
LABEL_131:

        v225 = v250;
        sub_2557AC95C(v161, v250, type metadata accessor for SLAMScript);
        v229 = 0;
        v81 = v252;
        v224 = v251;
        goto LABEL_123;
      }

      v236 = 1;
      v69 = v280;
      while (1)
      {
        v237 = v233;
        v95 = *(inited + 16);
        if (v236 >= v95)
        {
          break;
        }

        v81 = v254;
        sub_2557ABF34(&v281[*(v279 + 72) * v236], v254, type metadata accessor for SLAMScript);
        v238 = v271;
        v97 = [*&v271[*(v69 + 28)] codRequired];
        if (v97 >= [*(v81 + *(v69 + 28)) codRequired])
        {
          sub_2557ABF9C(v81, type metadata accessor for SLAMScript);
        }

        else
        {
          sub_2557ABF9C(v238, type metadata accessor for SLAMScript);
          sub_2557AC95C(v81, v238, type metadata accessor for SLAMScript);
        }

        v233 = v237;
        v161 = v238;
        if (v232 == ++v236)
        {
          goto LABEL_131;
        }
      }
    }

    __break(1u);
LABEL_151:
    v94 = sub_255794864((v95 > 1), v97, 1, v94);
LABEL_21:
    v98 = v279;
    *(v94 + 2) = v97;
    v99 = (*(v98 + 80) + 32) & ~*(v98 + 80);
    v100 = *(v98 + 72);
    v101 = v94;
    sub_2557AC95C(v263, &v94[v99 + v100 * inited], type metadata accessor for SLAMScript);
    v102 = v275;
    sub_25579B208(v81 + v249, v246);
    if (v102)
    {
    }

    v275 = 0;
    v227 = *(v101 + 2);
    v226 = *(v101 + 3);
    if (v227 >= v226 >> 1)
    {
      v101 = sub_255794864((v226 > 1), v227 + 1, 1, v101);
    }

    v83 = v278;
    *(v101 + 2) = v227 + 1;
    v282 = v101;
    sub_2557AC95C(v246, &v101[v99 + v227 * v100], type metadata accessor for SLAMScript);
  }

  v70 = v278;
  v81 = v267;
  v69 = v265;
  v161 = v271;
  v244 = *(v160 + 16);
  if (!v244)
  {
    goto LABEL_98;
  }

  inited = 0;
  *&v277 = v274 + 16;
  v248 = v279 + 56;
  v247 = (v274 + 32);
  v246 = &v286;
  v245 = (v274 + 8);
  v242 = v160;
  v243 = (v279 + 48);
  while (2)
  {
    if (inited >= *(v160 + 16))
    {
      goto LABEL_146;
    }

    v162 = v274;
    v163 = (*(v274 + 80) + 32) & ~*(v274 + 80);
    v164 = *(v274 + 72);
    v255 = inited;
    v272 = *(v274 + 16);
    v165 = v268;
    (v272)(v268, v160 + v163 + v164 * inited, v70);
    v166 = swift_allocBox();
    v167 = v70;
    v168 = *v248;
    v269 = v169;
    v168(v169, 1, 1, v280);
    v170 = swift_allocObject();
    v170[2] = 0;
    v170[3] = 0;
    v170[4] = v166;
    *&v276 = objc_opt_self();
    v270 = v166;

    sub_2557B0948();
    v273 = sub_2557B0C08();

    v171 = v264;
    (v272)(v264, v165, v167);
    v172 = v163 + v256;
    v173 = swift_allocObject();
    *(v173 + 16) = sub_25579EC4C;
    *(v173 + 24) = v170;
    (*(v162 + 32))(v173 + v163, v171, v167);
    *(v173 + v172) = 5;
    v288 = sub_2557ACB2C;
    v289 = v173;
    aBlock = MEMORY[0x277D85DD0];
    v285 = 1107296256;
    v286 = sub_25579D364;
    v287 = &block_descriptor_38;
    v174 = _Block_copy(&aBlock);

    aBlock = 0;
    v175 = v273;
    v176 = [v276 InspectCompatibleHWSEFW:v273 closure:v174 error:&aBlock];
    _Block_release(v174);

    if (!v176)
    {
      v230 = aBlock;

      sub_2557B0908();

      swift_willThrow();

LABEL_127:

      (*v245)(v268, v278);
    }

    v177 = aBlock;

    v178 = v269;
    swift_beginAccess();
    v179 = v260;
    sub_2557ABFFC(v178, v260, &qword_27F7D3128, &unk_2557B2530);
    v180 = *v243;
    v181 = v280;
    if ((*v243)(v179, 1, v280) == 1)
    {

      sub_255799CFC(v179, &qword_27F7D3128, &unk_2557B2530);
      sub_25578AA30();
      swift_allocError();
      *v231 = xmmword_2557B24A0;
      *(v231 + 16) = 7;
      swift_willThrow();
      goto LABEL_127;
    }

    sub_255799CFC(v179, &qword_27F7D3128, &unk_2557B2530);
    v182 = v259;
    sub_2557ABFFC(v178, v259, &qword_27F7D3128, &unk_2557B2530);
    result = (v180)(v182, 1, v181);
    if (result != 1)
    {
      sub_2557AC95C(v182, v266, type metadata accessor for SLAMScript);

      v183 = swift_isUniquelyReferenced_nonNull_native();
      v81 = v267;
      v69 = v265;
      v161 = v271;
      if (v183)
      {
        v70 = v278;
        v184 = v282;
      }

      else
      {
        v184 = sub_255794864(0, *(v282 + 2) + 1, 1, v282);
        v70 = v278;
      }

      v186 = *(v184 + 2);
      v185 = *(v184 + 3);
      v97 = v186 + 1;
      if (v186 >= v185 >> 1)
      {
        v282 = sub_255794864((v185 > 1), v186 + 1, 1, v184);
      }

      else
      {
        v282 = v184;
      }

      v187 = v255 + 1;
      (*v245)(v268, v70);
      v188 = v282;
      *(v282 + 2) = v97;
      v189 = &v188[((*(v279 + 80) + 32) & ~*(v279 + 80)) + *(v279 + 72) * v186];
      inited = v187;
      sub_2557AC95C(v266, v189, type metadata accessor for SLAMScript);
      v160 = v242;
      if (v244 == v187)
      {
        goto LABEL_98;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
  return result;
}

uint64_t sub_2557A8AD8(_OWORD *a1, void (*a2)(uint64_t), uint64_t a3)
{
  v4 = v3;
  v37 = sub_2557B0A88();
  v35 = *(v37 - 8);
  v9 = MEMORY[0x28223BE20](v37, v8);
  v33 = v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v11);
  v41 = v32 - v12;
  v13 = a1[1];
  v40[0] = *a1;
  v40[1] = v13;
  v40[2] = a1[2];
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  v17 = a1[1];
  *(v16 + 24) = *a1;
  *(v16 + 40) = v17;
  *(v16 + 56) = a1[2];
  *(v16 + 72) = v15;
  *(v16 + 80) = a2;
  v34 = a2;
  *(v16 + 88) = a3;
  sub_255793B04(v4 + 16, v39);
  type metadata accessor for SLAMInterface();
  inited = swift_initStackObject();
  type metadata accessor for SLAMHandler();
  v19 = swift_allocObject();
  sub_2557ABE30(v39, v19 + 16);
  *(v19 + 48) = sub_2557AC0C4;
  *(v19 + 56) = v16;
  *(inited + 16) = v19;
  *(inited + 24) = &off_2867913F0;
  sub_2557AC0F8(v40, v38);

  sub_2557AC0F8(v40, v38);
  v20 = qword_27F7D2DE8;

  v21 = v4;

  v36 = v14;

  if (v20 != -1)
  {
    swift_once();
  }

  v22 = sub_2557B0AB8();
  __swift_project_value_buffer(v22, qword_27F7D2F30);
  sub_2557B0AA8();
  sub_2557B0A68();
  v23 = sub_2557B0AA8();
  v24 = sub_2557B0E38();
  if (sub_2557B0E48())
  {
    v25 = swift_slowAlloc();
    v32[1] = v15;
    v26 = v25;
    *v25 = 0;
    v27 = sub_2557B0A78();
    _os_signpost_emit_with_name_impl(&dword_255786000, v23, v24, v27, "internal_execute-server-asset", "", v26, 2u);
    MEMORY[0x259C40F40](v26, -1, -1);
  }

  v28 = v35;
  v29 = v37;
  (*(v35 + 16))(v33, v41, v37);
  sub_2557B0AF8();
  swift_allocObject();
  v30 = sub_2557B0AE8();
  sub_2557A9008(v40, inited, v21, v34, a3);
  sub_2557920B8("internal_execute-server-asset", 29, 2, v30);

  (*(v28 + 8))(v41, v29);
  sub_2557AC154(v40);

  swift_setDeallocating();
  swift_unknownObjectRelease();
}

void sub_2557A8F18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t))
{
  swift_beginAccess();
  v12 = *(a5 + 16);
  v13 = v12 + 1;
  if (__OFADD__(v12, 1))
  {
    __break(1u);
    goto LABEL_12;
  }

  *(a5 + 16) = v13;
  v14 = 99 * v13;
  if ((v13 * 99) >> 64 != (99 * v13) >> 63)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v15 = *(a6 + 32);
  if (v15 < 0)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (!v15)
  {
LABEL_14:
    __break(1u);
    return;
  }

  v16 = v14 / v15;
  if (v16 >= 99)
  {
    v17 = 99;
  }

  else
  {
    v17 = v16;
  }

  swift_beginAccess();
  if (*(a7 + 16) != v17)
  {
    swift_beginAccess();
    *(a7 + 16) = v17;
    a8(v17);
  }
}

void sub_2557A9008(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5)
{
  v10 = type metadata accessor for SLAMScript(0);
  v12 = MEMORY[0x28223BE20](v10, v11);
  MEMORY[0x28223BE20](v12, v13);
  v17 = &v33 - v16;
  v18 = *(a1 + 40);
  v19 = *(v18 + 16);
  if (!v19)
  {
    return;
  }

  v35 = v15;
  v36 = a5;
  v37 = a4;
  v34 = a3;
  v20 = v18 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
  v21 = *(v14 + 72);
  while (1)
  {
    sub_2557ABF34(v20, v17, type metadata accessor for SLAMScript);
    sub_25579C5A4(v17);
    if (v5)
    {
      break;
    }

    sub_2557ABF9C(v17, type metadata accessor for SLAMScript);
    v20 += v21;
    if (!--v19)
    {
      v37(100);
      if (qword_27F7D2DD0 != -1)
      {
        swift_once();
      }

      sub_255788A54();
      return;
    }
  }

  if (v17[*(v10 + 24)] == 6)
  {
  }

  else
  {
    v22 = sub_2557B0F98();

    if ((v22 & 1) == 0)
    {
      if (qword_27F7D2E18 != -1)
      {
        swift_once();
      }

      v28 = sub_2557B0B38();
      __swift_project_value_buffer(v28, qword_27F7D31B8);
      v29 = sub_2557B0B18();
      v30 = sub_2557B0DD8();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_255786000, v29, v30, "An error has occured when processing assets, trying to deleting SSD", v31, 2u);
        MEMORY[0x259C40F40](v31, -1, -1);
      }

      v32 = v35;
      sub_25579AF88(v34 + OBJC_IVAR____TtC20KernelManagerLibrary13KernelManager_sefw, v35);
      sub_25579C5A4(v32);
      sub_2557ABF9C(v32, type metadata accessor for SLAMScript);
      goto LABEL_17;
    }
  }

  if (qword_27F7D2E18 != -1)
  {
    swift_once();
  }

  v23 = sub_2557B0B38();
  __swift_project_value_buffer(v23, qword_27F7D31B8);
  v24 = sub_2557B0B18();
  v25 = sub_2557B0DD8();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_255786000, v24, v25, "An error has occured when processing profile asset, aborting", v26, 2u);
    MEMORY[0x259C40F40](v26, -1, -1);
  }

LABEL_17:
  sub_25578AA30();
  swift_allocError();
  *v27 = 0;
  *(v27 + 8) = 0;
  *(v27 + 16) = 7;
  swift_willThrow();

  sub_2557ABF9C(v17, type metadata accessor for SLAMScript);
  if (qword_27F7D2DD0 != -1)
  {
    swift_once();
  }

  sub_255788A54();
}

uint64_t sub_2557A95EC(uint64_t a1)
{
  v4 = type metadata accessor for SLAMScript(0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 30;
  sub_255793B04(v1 + 16, v12);
  type metadata accessor for SLAMInterface();
  inited = swift_initStackObject();
  type metadata accessor for SLAMHandler();
  v9 = swift_allocObject();
  sub_2557ABE30(v12, v9 + 16);
  *(v9 + 48) = 0;
  *(v9 + 56) = 0;
  *(inited + 16) = v9;
  *(inited + 24) = &off_2867913F0;
  sub_25579BB90(a1, v7);
  if (!v2)
  {
    sub_25579C5A4(v7);
    sub_2557ABF9C(v7, type metadata accessor for SLAMScript);
  }
}

uint64_t sub_2557A976C()
{
  sub_255793B04(v0 + 16, v5);
  type metadata accessor for SLAMInterface();
  inited = swift_initStackObject();
  type metadata accessor for SLAMHandler();
  v2 = swift_allocObject();
  sub_2557ABE30(v5, v2 + 16);
  *(v2 + 48) = 0;
  *(v2 + 56) = 0;
  *(inited + 16) = v2;
  *(inited + 24) = &off_2867913F0;

  sub_255791870("api_remove-unused-asset", 23, 2, 0, 0, v0, inited, v3);
  swift_setDeallocating();
  return swift_unknownObjectRelease();
}

uint64_t sub_2557A9840(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for SLAMScript(0);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);

  v9 = sub_2557923C8("api_device-state", 0x10, 2, 0, 0, a1, 0);
  if (v2)
  {
  }

  v10 = v9;

  v11 = *(v10 + 112);
  if (!v11)
  {
  }

  type metadata accessor for GetData();
  inited = swift_initStackObject();
  *(inited + 35) = 2;
  LOBYTE(v59[0]) = 1;
  *v61 = -1006581120;
  *&v61[8] = 0;
  *&v61[16] = 256;
  v61[18] = 0;
  v62 = -1006581120;
  v63 = 0;
  v64 = 256;
  v65 = 0;

  sub_25578BBE4(v61, v60);
  sub_25578BC40(&v62);
  v13 = *&v61[15];
  *(inited + 16) = *v61;
  *(inited + 31) = v13;
  v14 = sub_255792F64(inited, &unk_286790B00);
  v56 = v8;
  v53 = a2;
  v16 = sub_2557ABD08(v14);
  v18 = v17;

  v19 = sub_2557902CC(v16, v18);
  sub_25578AAE0(v16, v18);
  swift_setDeallocating();
  *v60 = *(inited + 16);
  *&v60[15] = *(inited + 31);
  result = sub_25578BC40(v60);
  v57 = *(v11 + 16);
  if (!v57)
  {
LABEL_54:
  }

  v50 = v10;
  v21 = 0;
  v54 = OBJC_IVAR____TtC20KernelManagerLibrary13KernelManager_sefw;
  *&v20 = 136446210;
  v51 = v20;
  v49 = xmmword_2557B1770;
  v52 = v11;
  v55 = v19;
  while (v21 < *(v11 + 16))
  {
    v22 = *(v11 + v21 + 32);
    if (v19[2])
    {
      result = sub_2557896D0(*(v11 + v21 + 32));
      if (v23)
      {
        goto LABEL_7;
      }
    }

    v24 = sub_2557911E8(v22);
    if (v24 > 5)
    {
      if (v24 > 8)
      {
        if (v24 == 9)
        {
          v26 = 0xE700000000000000;
          v25 = 0x63617265746E49;
        }

        else
        {
          if (v24 != 10)
          {
            if (qword_27F7D2E18 != -1)
            {
              swift_once();
            }

            v36 = sub_2557B0B38();
            __swift_project_value_buffer(v36, qword_27F7D31B8);
            v37 = sub_2557B0B18();
            v38 = sub_2557B0DD8();
            if (os_log_type_enabled(v37, v38))
            {
              v39 = swift_slowAlloc();
              v48 = v39;
              v58 = swift_slowAlloc();
              v59[0] = v58;
              *v39 = v51;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D2E48, &unk_2557B1DE0);
              v40 = swift_allocObject();
              *(v40 + 16) = v49;
              *(v40 + 56) = MEMORY[0x277D84B78];
              *(v40 + 64) = MEMORY[0x277D84BC0];
              *(v40 + 32) = v22;
              v41 = sub_2557B0C48();
              v43 = sub_2557AAA60(v41, v42, v59);

              v44 = v48;
              *(v48 + 1) = v43;
              v45 = v44;
              _os_log_impl(&dword_255786000, v37, v38, "Trying to delete unknown applet with id %{public}s", v44, 0xCu);
              v46 = v58;
              __swift_destroy_boxed_opaque_existential_0(v58);
              MEMORY[0x259C40F40](v46, -1, -1);
              MEMORY[0x259C40F40](v45, -1, -1);
            }

            v19 = v55;
            goto LABEL_48;
          }

          v26 = 0xE700000000000000;
          v25 = 0x6E776F6E6B6E55;
        }
      }

      else if (v24 == 6)
      {
        v26 = 0xE300000000000000;
        v25 = 4804693;
      }

      else
      {
        if (v24 == 7)
        {
          v25 = 0x534F50544645;
        }

        else
        {
          v25 = 2020505932;
        }

        if (v24 == 7)
        {
          v26 = 0xE600000000000000;
        }

        else
        {
          v26 = 0xE400000000000000;
        }
      }
    }

    else if (v24 > 2)
    {
      if (v24 == 3)
      {
        v26 = 0xE400000000000000;
        v25 = 2019913025;
      }

      else
      {
        if (v24 == 4)
        {
          v25 = 4342602;
        }

        else
        {
          v25 = 0x7265766F63736944;
        }

        if (v24 == 4)
        {
          v26 = 0xE300000000000000;
        }

        else
        {
          v26 = 0xE800000000000000;
        }
      }
    }

    else if (v24)
    {
      if (v24 == 1)
      {
        v25 = 0x616372657473614DLL;
      }

      else
      {
        v25 = 1634953558;
      }

      if (v24 == 1)
      {
        v26 = 0xEA00000000006472;
      }

      else
      {
        v26 = 0xE400000000000000;
      }
    }

    else
    {
      v26 = 0xE400000000000000;
      v25 = 1701999952;
    }

    LODWORD(v58) = v22;
    if (qword_27F7D2E18 != -1)
    {
      swift_once();
    }

    v27 = sub_2557B0B38();
    __swift_project_value_buffer(v27, qword_27F7D31B8);

    v28 = sub_2557B0B18();
    v29 = sub_2557B0DE8();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v66 = v31;
      *v30 = v51;

      v59[0] = v25;
      v59[1] = v26;
      v32 = sub_2557B0D68();
      v34 = sub_2557AAA60(v32, v33, &v66);

      *(v30 + 4) = v34;
      _os_log_impl(&dword_255786000, v28, v29, "Deleting applet %{public}s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v31);
      MEMORY[0x259C40F40](v31, -1, -1);
      MEMORY[0x259C40F40](v30, -1, -1);
    }

    else
    {
      swift_bridgeObjectRelease_n();
    }

    v11 = v52;
    v19 = v55;
    LOBYTE(v22) = v58;
LABEL_48:
    v35 = v56;
    sub_25579B498(a1 + v54, v22, v56);
    sub_25579C5A4(v35);
    result = sub_2557ABF9C(v35, type metadata accessor for SLAMScript);
LABEL_7:
    if (v57 == ++v21)
    {
      goto LABEL_54;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2557AA114()
{
  v1 = v0;
  type metadata accessor for GetData();
  inited = swift_initStackObject();
  *(inited + 35) = 5;
  v10 = 1;
  *v11 = -922695040;
  *&v11[8] = 0;
  *&v11[16] = 256;
  v11[18] = 0;
  v12 = -922695040;
  v13 = 0;
  v14 = 256;
  v15 = 0;
  sub_25578BBE4(v11, v9);
  sub_25578BC40(&v12);
  v3 = *&v11[15];
  *(inited + 16) = *v11;
  *(inited + 31) = v3;
  v4 = sub_255792F64(inited, &unk_286790D48);
  if (!v0)
  {
    v5 = sub_2557ABD08(v4);
    v7 = v6;

    v1 = sub_25578F7D0(v5, v7);
    sub_25578AAE0(v5, v7);
  }

  swift_setDeallocating();
  *v9 = *(inited + 16);
  *&v9[15] = *(inited + 31);
  sub_25578BC40(v9);
  return v1;
}

uint64_t (*sub_2557AA2C0(char a1, uint64_t a2, uint64_t (*a3)(uint64_t, unint64_t), int8x8_t a4))(uint64_t, unint64_t)
{
  type metadata accessor for GetData();
  inited = swift_initStackObject();
  *(inited + 35) = a1;
  v23 = 1;
  *v18 = vuzp1_s8(a4, v10).u32[0];
  *&v18[8] = 0;
  *&v18[16] = 256;
  v18[18] = 0;
  v19 = *v18;
  v20 = 0;
  v21 = 256;
  v22 = 0;
  sub_25578BBE4(v18, v17);
  sub_25578BC40(&v19);
  v11 = *&v18[15];
  *(inited + 16) = *v18;
  *(inited + 31) = v11;
  v12 = sub_255792F64(inited, a2);
  if (!v4)
  {
    v13 = sub_2557ABD08(v12);
    v15 = v14;

    a3 = a3(v13, v15);
    sub_25578AAE0(v13, v15);
  }

  swift_setDeallocating();
  *v17 = *(inited + 16);
  *&v17[15] = *(inited + 31);
  sub_25578BC40(v17);
  return a3;
}

uint64_t sub_2557AA434()
{
  type metadata accessor for Select();
  swift_initStackObject();
  v1 = sub_25578C0EC(0);
  v2 = sub_255792F64(v1, &unk_286790D70);
  if (v0)
  {
  }

  v4 = sub_2557ABD08(v2);
  v6 = v5;

  return sub_25578AAE0(v4, v6);
}

uint64_t sub_2557AA504(char a1)
{
  v4 = type metadata accessor for SLAMScript(0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 30;
  sub_255793B04(v1 + 16, v13);
  type metadata accessor for SLAMInterface();
  inited = swift_initStackObject();
  type metadata accessor for SLAMHandler();
  v9 = swift_allocObject();
  sub_2557ABE30(v13, v9 + 16);
  *(v9 + 48) = 0;
  *(v9 + 56) = 0;
  *(inited + 16) = v9;
  *(inited + 24) = &off_2867913F0;
  v10 = v1 + OBJC_IVAR____TtC20KernelManagerLibrary13KernelManager_sefw;
  if (a1)
  {
    sub_25579B8C4(v10, v7);
    if (!v2)
    {
      goto LABEL_5;
    }
  }

  else
  {
    sub_25579AF88(v10, v7);
    if (!v2)
    {
LABEL_5:
      sub_25579C5A4(v7);
      sub_2557ABF9C(v7, type metadata accessor for SLAMScript);
    }
  }
}

uint64_t sub_2557AA6A4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_255793B04(a1 + 16, v8);
  type metadata accessor for SEInterface(0);
  v3 = swift_allocObject();
  sub_255793B04(v8, v3 + 16);
  if (qword_27F7D2DF0 != -1)
  {
    swift_once();
  }

  v4 = sub_2557B0B38();
  v5 = __swift_project_value_buffer(v4, qword_27F7D3018);
  v6 = *(v4 - 8);
  (*(v6 + 16))(v3 + OBJC_IVAR____TtC20KernelManagerLibrary9SEHandler_logger, v5, v4);
  sub_25578BB90(v8);
  sub_255793BE0(a2);
  swift_setDeallocating();
  sub_25578BB90(v3 + 16);
  (*(v6 + 8))(v3 + OBJC_IVAR____TtC20KernelManagerLibrary9SEHandler_logger, v4);
  return swift_deallocClassInstance();
}

unint64_t static KernelManager.getDefaultSEFWPath(isProduction:)(char a1)
{
  if (a1)
  {
    return 0xD00000000000002CLL;
  }

  else
  {
    return 0xD000000000000026;
  }
}

uint64_t KernelManager.deinit()
{
  sub_25578BB90(v0 + 16);

  v1 = OBJC_IVAR____TtC20KernelManagerLibrary13KernelManager_sefw;
  v2 = sub_2557B0968();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_2557AC1A8(*(v0 + OBJC_IVAR____TtC20KernelManagerLibrary13KernelManager_seState), *(v0 + OBJC_IVAR____TtC20KernelManagerLibrary13KernelManager_seState + 8), *(v0 + OBJC_IVAR____TtC20KernelManagerLibrary13KernelManager_seState + 16), *(v0 + OBJC_IVAR____TtC20KernelManagerLibrary13KernelManager_seState + 24), *(v0 + OBJC_IVAR____TtC20KernelManagerLibrary13KernelManager_seState + 32), *(v0 + OBJC_IVAR____TtC20KernelManagerLibrary13KernelManager_seState + 40), *(v0 + OBJC_IVAR____TtC20KernelManagerLibrary13KernelManager_seState + 48), *(v0 + OBJC_IVAR____TtC20KernelManagerLibrary13KernelManager_seState + 56), *(v0 + OBJC_IVAR____TtC20KernelManagerLibrary13KernelManager_seState + 64));
  return v0;
}

uint64_t KernelManager.__deallocating_deinit()
{
  sub_25578BB90(v0 + 16);

  v1 = OBJC_IVAR____TtC20KernelManagerLibrary13KernelManager_sefw;
  v2 = sub_2557B0968();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_2557AC1A8(*(v0 + OBJC_IVAR____TtC20KernelManagerLibrary13KernelManager_seState), *(v0 + OBJC_IVAR____TtC20KernelManagerLibrary13KernelManager_seState + 8), *(v0 + OBJC_IVAR____TtC20KernelManagerLibrary13KernelManager_seState + 16), *(v0 + OBJC_IVAR____TtC20KernelManagerLibrary13KernelManager_seState + 24), *(v0 + OBJC_IVAR____TtC20KernelManagerLibrary13KernelManager_seState + 32), *(v0 + OBJC_IVAR____TtC20KernelManagerLibrary13KernelManager_seState + 40), *(v0 + OBJC_IVAR____TtC20KernelManagerLibrary13KernelManager_seState + 48), *(v0 + OBJC_IVAR____TtC20KernelManagerLibrary13KernelManager_seState + 56), *(v0 + OBJC_IVAR____TtC20KernelManagerLibrary13KernelManager_seState + 64));

  return swift_deallocClassInstance();
}

uint64_t sub_2557AA9DC()
{
  v0 = sub_2557B0B38();
  __swift_allocate_value_buffer(v0, qword_27F7D31B8);
  __swift_project_value_buffer(v0, qword_27F7D31B8);
  return sub_2557B0B28();
}

unint64_t sub_2557AAA60(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2557AAB2C(v11, 0, 0, 1, a1, a2);
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
    sub_25578AC88(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_2557AAB2C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_2557AAC38(a5, a6);
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
    result = sub_2557B0F18();
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

void *sub_2557AAC38(uint64_t a1, unint64_t a2)
{
  v3 = sub_2557AAC84(a1, a2);
  sub_255794A3C(byte_286790708);
  return v3;
}

void *sub_2557AAC84(uint64_t a1, unint64_t a2)
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

  v6 = sub_2557ADB20(v5, 0);
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

  result = sub_2557B0F18();
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
        v10 = sub_2557B0CE8();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2557ADB20(v10, 0);
        result = sub_2557B0EE8();
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

void *sub_2557AADB4@<X0>(void *(*a1)(uint64_t *__return_ptr, char *, char *)@<X0>, uint64_t a3@<X8>)
{
  v5 = v3;
  v30 = *MEMORY[0x277D85DE8];
  v9 = *v3;
  v8 = v3[1];
  v10 = v8 >> 62;
  if ((v8 >> 62) > 1)
  {
    if (v10 == 2)
    {

      sub_25578AAE0(v9, v8);
      *&v25 = v9;
      *(&v25 + 1) = v8 & 0x3FFFFFFFFFFFFFFFLL;
      *v3 = xmmword_2557B2830;
      sub_25578AAE0(0, 0xC000000000000000);
      sub_2557B0978();
      v13 = *(&v25 + 1);
      result = sub_2557AB2A8(*(v25 + 16), *(v25 + 24), a1, &v26);
      v14 = v26;
      v15 = v27;
      v16 = v28;
      v17 = v29;
      *v5 = v25;
      v5[1] = v13 | 0x8000000000000000;
      if (v4)
      {
        return result;
      }
    }

    else
    {
      *(&v25 + 7) = 0;
      *&v25 = 0;
      result = a1(&v26, &v25, &v25);
      if (v4)
      {
        return result;
      }

      v14 = v26;
      v15 = v27;
      v16 = v28;
      v17 = v29;
    }

    goto LABEL_20;
  }

  v23 = a3;
  if (!v10)
  {
    sub_25578AAE0(v9, v8);
    *&v25 = v9;
    WORD4(v25) = v8;
    BYTE10(v25) = BYTE2(v8);
    BYTE11(v25) = BYTE3(v8);
    BYTE12(v25) = BYTE4(v8);
    BYTE13(v25) = BYTE5(v8);
    BYTE14(v25) = BYTE6(v8);
    result = a1(&v26, &v25, &v25 + BYTE6(v8));
    if (v4)
    {
      v12 = DWORD2(v25) | ((WORD6(v25) | (BYTE14(v25) << 16)) << 32);
      *v3 = v25;
      v3[1] = v12;
      return result;
    }

    v14 = v26;
    v15 = v27;
    v16 = v28;
    v17 = v29;
    v20 = DWORD2(v25) | ((WORD6(v25) | (BYTE14(v25) << 16)) << 32);
    *v3 = v25;
    v3[1] = v20;
    goto LABEL_20;
  }

  v18 = v8 & 0x3FFFFFFFFFFFFFFFLL;

  sub_25578AAE0(v9, v8);
  *v3 = xmmword_2557B2830;
  sub_25578AAE0(0, 0xC000000000000000);
  v19 = v9 >> 32;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    if (v19 < v9)
    {
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    if (sub_2557B0868() && __OFSUB__(v9, sub_2557B0888()))
    {
LABEL_24:
      __break(1u);
    }

    sub_2557B0898();
    swift_allocObject();
    v21 = sub_2557B0848();

    v18 = v21;
  }

  if (v19 < v9)
  {
    __break(1u);
    goto LABEL_23;
  }

  sub_2557AB2A8(v9, v9 >> 32, a1, &v26);
  v14 = v26;
  v24 = v27;
  v16 = v28;
  v17 = v29;

  *v5 = v9;
  v5[1] = v18 | 0x4000000000000000;
  if (v4)
  {
    return result;
  }

  a3 = v23;
  v15 = v24;
LABEL_20:
  *a3 = v14;
  *(a3 + 8) = v15;
  *(a3 + 24) = v16;
  *(a3 + 32) = v17;
  return result;
}

_BYTE *sub_2557AB18C@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
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
    result = sub_2557ABB50(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_2557ABC08(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_2557ABC84(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

void *sub_2557AB220@<X0>(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (a2)
  {
    result = a1(&v10, a2, a3 - a2);
    if (!v4)
    {
LABEL_3:
      v7 = v12;
      v8 = v13;
      v9 = v11;
      *a4 = v10;
      *(a4 + 8) = v9;
      *(a4 + 24) = v7;
      *(a4 + 32) = v8;
      return result;
    }
  }

  else
  {
    result = (a1)(&v10, 0, 0, 0, a3);
    if (!v4)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
  return result;
}

char *sub_2557AB2A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *(*a3)(uint64_t *__return_ptr, char *, char *)@<X2>, uint64_t a4@<X8>)
{
  result = sub_2557B0868();
  if (!result)
  {
    goto LABEL_12;
  }

  v10 = result;
  result = sub_2557B0888();
  v11 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v12 = __OFSUB__(a2, a1);
  v13 = a2 - a1;
  if (v12)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v14 = sub_2557B0878();
  if (v14 >= v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = v14;
  }

  result = a3(&v19, &v10[v11], &v10[v11 + v15]);
  if (!v4)
  {
    v16 = v21;
    v17 = v22;
    v18 = v20;
    *a4 = v19;
    *(a4 + 8) = v18;
    *(a4 + 24) = v16;
    *(a4 + 32) = v17;
  }

  return result;
}

char *sub_2557AB37C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2557ADBA8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2557AB39C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2557ADCB4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_2557AB3BC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D3258, &qword_2557B2A20);
  result = sub_2557B0ED8();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + (v14 | (v6 << 6)));
      result = MEMORY[0x259C409A0](*(v5 + 40), v17, 1);
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_2557AB5EC(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2557AB3BC(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_2557AB710();
      a2 = v7;
      goto LABEL_12;
    }

    sub_2557AB850(v5 + 1);
  }

  v8 = *v3;
  result = MEMORY[0x259C409A0](*(*v3 + 40), v4, 1);
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_2557B0FA8();
  __break(1u);
  return result;
}

void *sub_2557AB710()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D3258, &qword_2557B2A20);
  v2 = *v0;
  v3 = sub_2557B0EC8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

uint64_t sub_2557AB850(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D3258, &qword_2557B2A20);
  result = sub_2557B0ED8();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
      result = MEMORY[0x259C409A0](*(v5 + 40), v16, 1);
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_24;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v2 = v5;
  }

  return result;
}

__n128 sub_2557ABA44@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a3 + 24);
  v13 = *a3;
  v14 = *(a3 + 1);
  v15 = v5;
  sub_2557AB220(sub_2557AC828, a1, a2, &v9);
  v6 = v11;
  v7 = v12;
  result = v10;
  *a4 = v9;
  *(a4 + 8) = result;
  *(a4 + 24) = v6;
  *(a4 + 32) = v7;
  return result;
}

void *sub_2557ABADC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_2557AC848(a1, a2, *a3, *(a3 + 8), *(a3 + 16), *(a3 + 24), v11);
  if (!v4)
  {
    v7 = v11[1];
    v8 = v11[2];
    v9 = v12;
    v10 = v13;
    *a4 = v11[0];
    *(a4 + 8) = v7;
    *(a4 + 16) = v8;
    *(a4 + 24) = v9;
    *(a4 + 32) = v10;
  }

  return result;
}

uint64_t sub_2557ABB50(_BYTE *__src, _BYTE *a2)
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

uint64_t sub_2557ABC08(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_2557B0898();
  swift_allocObject();
  result = sub_2557B0858();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_2557B0998();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_2557ABC84(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_2557B0898();
  swift_allocObject();
  result = sub_2557B0858();
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

uint64_t sub_2557ABD08(uint64_t a1)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D3248, &unk_2557B2A10);
  v10 = sub_25579AEE8(&qword_27F7D3250, &qword_27F7D3248, &unk_2557B2A10, MEMORY[0x277CC9C28]);
  v8[0] = a1;
  v2 = __swift_project_boxed_opaque_existential_1(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  sub_2557AB18C(v3, &v3[v4], &v7);
  v5 = v7;
  __swift_destroy_boxed_opaque_existential_0(v8);
  return v5;
}

uint64_t type metadata accessor for KernelManager(uint64_t a1)
{
  result = qword_27F7D3210;
  if (!qword_27F7D3210)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2557ABEAC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_2557ABF34(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2557ABF9C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2557ABFFC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2557AC074()
{

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

void sub_2557AC1A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a6)
  {
  }
}

unint64_t sub_2557AC1FC()
{
  result = qword_27F7D3208;
  if (!qword_27F7D3208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7D3208);
  }

  return result;
}

uint64_t sub_2557AC258(uint64_t a1)
{
  result = sub_2557B0968();
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

uint64_t sub_2557AC7D4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

void *sub_2557AC848@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *(*a4)(char *__return_ptr, uint64_t *)@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  v16 = a3;
  if (!result)
  {
    v10 = 0;
    goto LABEL_17;
  }

  v10 = a2;
  if (!a2)
  {
LABEL_17:
    *a7 = a3;
    *(a7 + 8) = a4;
    *(a7 + 16) = a5;
    *(a7 + 24) = a6 & 1;
    *(a7 + 32) = v10;
    return result;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a6)
    {
      v10 = 0;
      a6 = 1;
LABEL_16:
      a3 = v16;
      goto LABEL_17;
    }

    v11 = result;
    result = a4(&v14, &v16);
    if (v15)
    {
      v12 = 0;
LABEL_9:
      v10 = v12;
      a6 = 1;
      goto LABEL_16;
    }

    *v11 = v14;
    if (v10 == 1)
    {
LABEL_15:
      a6 = 0;
      goto LABEL_16;
    }

    v12 = 1;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      result = a4(&v14, &v16);
      if (v15)
      {
        goto LABEL_9;
      }

      v11[v12++] = v14;
      if (v13 == v10)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2557AC95C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_26Tm()
{
  v1 = sub_2557B0968();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64) + v4;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 1, v3 | 7);
}

uint64_t sub_2557ACB04(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 6u)
  {
  }

  return result;
}

unint64_t KernelManagerError.description.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = *(v0 + 16);
  if (v3 <= 3)
  {
    if (*(v0 + 16) > 1u)
    {
      v8[0] = 0;
      v8[1] = 0xE000000000000000;
      if (v3 == 2)
      {
        sub_2557B0EF8();

        v7 = "Provided SLAM or SEFW is not readable: ";
      }

      else
      {
        sub_2557B0EF8();

        v7 = "The script name has an invalid format: ";
      }

      v4 = (v7 - 32) | 0x8000000000000000;
      v5 = 0xD000000000000027;
    }

    else
    {
      v8[0] = 0;
      v8[1] = 0xE000000000000000;
      if (v3)
      {
        sub_2557B0EF8();

        v4 = 0x80000002557B3FC0;
        v5 = 0xD000000000000029;
      }

      else
      {
        sub_2557B0EF8();

        v4 = 0x80000002557B3FF0;
        v5 = 0xD00000000000002ALL;
      }
    }

LABEL_16:
    v8[0] = v5;
    v8[1] = v4;
    goto LABEL_17;
  }

  if (*(v0 + 16) <= 5u)
  {
    if (v3 == 4)
    {

      return v2;
    }

    v8[0] = 0;
    v8[1] = 0xE000000000000000;
    sub_2557B0EF8();

    v4 = 0x80000002557B3C80;
    v5 = 0xD00000000000001ALL;
    goto LABEL_16;
  }

  if (v3 == 6)
  {
    strcpy(v8, "Fatal Error: ");
    HIWORD(v8[1]) = -4864;
LABEL_17:
    MEMORY[0x259C40650](v2, v1);
    return v8[0];
  }

  result = 0x206E776F6E6B6E55;
  switch(v2)
  {
    case 1:
      result = 0xD00000000000004CLL;
      break;
    case 2:
      result = 0xD000000000000048;
      break;
    case 3:
      result = 0xD00000000000002DLL;
      break;
    case 4:
      result = 0xD00000000000002BLL;
      break;
    case 5:
      result = 0xD00000000000001FLL;
      break;
    case 6:
      result = 0xD000000000000019;
      break;
    case 7:
      result = 0xD000000000000033;
      break;
    case 8:
      result = 0xD00000000000004FLL;
      break;
    case 9:
      result = 0xD000000000000028;
      break;
    case 10:
      result = 0xD000000000000032;
      break;
    case 11:
      result = 0xD000000000000036;
      break;
    case 12:
      return result;
    default:
      result = 0xD000000000000031;
      break;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_20KernelManagerLibrary0aB5ErrorO(uint64_t a1)
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

uint64_t sub_2557ACF4C(uint64_t a1, unsigned int a2)
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

uint64_t sub_2557ACF94(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_2557ACFD8(uint64_t result, unsigned int a2)
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

uint64_t SEMemoryInfo.description.getter()
{
  sub_2557B0EF8();

  v0 = sub_2557B0F88();
  MEMORY[0x259C40650](v0);

  MEMORY[0x259C40650](0x203A524F43202CLL, 0xE700000000000000);
  v1 = sub_2557B0F88();
  MEMORY[0x259C40650](v1);

  MEMORY[0x259C40650](0x203A444F43202CLL, 0xE700000000000000);
  v2 = sub_2557B0F88();
  MEMORY[0x259C40650](v2);

  MEMORY[0x259C40650](0x203A584449202CLL, 0xE700000000000000);
  v3 = sub_2557B0F88();
  MEMORY[0x259C40650](v3);

  return 0x203A4D564ELL;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_2557AD1AC(uint64_t a1, int a2)
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

uint64_t sub_2557AD1CC(uint64_t result, int a2, int a3)
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

uint64_t SESessionWrapper.seid.getter()
{
  v1 = *v0;

  return v1;
}

void SESessionWrapper.session.setter(void *a1)
{
  swift_unknownObjectWeakAssign();
}

void (*SESessionWrapper.session.modify(uint64_t *a1))(id *a1)
{
  a1[1] = v1;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_2557AD2D4;
}

void sub_2557AD2D4(id *a1)
{
  v1 = *a1;
  swift_unknownObjectWeakAssign();
}

void SESessionWrapper.init(seid:isProduction:session:)(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  swift_unknownObjectWeakInit();
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  swift_unknownObjectWeakAssign();
}

uint64_t sub_2557AD388@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_255793B04(a1, v5);
  Strong = swift_unknownObjectWeakLoadStrong();
  result = sub_25578BB90(v5);
  *a2 = Strong;
  return result;
}

uint64_t sub_2557AD3E4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_2557AD42C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy19_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 15) = *(a2 + 15);
  *a1 = result;
  return result;
}

uint64_t sub_2557AD490(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 19))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_2557AD4EC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 18) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 19) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 19) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_2557AD554(unsigned int a1, uint64_t a2, unsigned int a3)
{
  v3 = a3;
  v5 = a1;
  v25 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v6 = *(a2 + 16);
    if (HIDWORD(v6))
    {
      __break(1u);
    }

    if (v6 >> 23)
    {
      v7 = 0;
    }

    else
    {
      v7 = *(a2 + 16);
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = HIWORD(a3) & 1;
  v9 = HIBYTE(a1);
  v10 = HIWORD(a1);
  v11 = a1 >> 8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D2F00, &qword_2557B1DF0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_2557B2D20;
  *(v12 + 32) = v5;
  *(v12 + 33) = v11;
  *(v12 + 34) = v10;
  *(v12 + 35) = v9;
  if (v7 > 0xFF)
  {
    v8 = 1;
  }

  inited = swift_initStackObject();
  if (v8 == 1)
  {
    *(inited + 16) = xmmword_2557B2D30;
    *(inited + 32) = BYTE2(v7);
    *(inited + 33) = BYTE1(v7);
    v14 = (inited + 34);
  }

  else
  {
    *(inited + 16) = xmmword_2557B1770;
    v14 = (inited + 32);
  }

  *v14 = v7;
  sub_255794A3C(inited);

  v16 = sub_2557ABD08(v15);
  v18 = v17;

  v23 = v16;
  v24 = v18;
  if (a2 && *(a2 + 16))
  {
    sub_2557B09B8();
  }

  if (v8)
  {
    sub_2557B09B8();
  }

  else if ((v3 & 0x100) == 0)
  {
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D3268, " $");
    v22 = sub_2557ADF68();
    LOBYTE(v20[0]) = v3;
    __swift_project_boxed_opaque_existential_1(v20, v21);
    sub_2557B09A8();
    __swift_destroy_boxed_opaque_existential_0(v20);
  }

  return v23;
}

void *sub_2557AD7B4(uint64_t a1, unint64_t a2)
{
  v4 = sub_2557B0A18();
  v5 = *(v4 - 8);
  result = MEMORY[0x28223BE20](v4, v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v10 != 2)
    {
LABEL_12:
      sub_25578AAE0(a1, a2);
      return MEMORY[0x277D84F90];
    }

    v13 = *(a1 + 16);
    v12 = *(a1 + 24);
    v11 = v12 - v13;
    if (!__OFSUB__(v12, v13))
    {
      if (v11)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
    if (v10)
    {
      goto LABEL_10;
    }

    v11 = BYTE6(a2);
    if (!BYTE6(a2))
    {
      goto LABEL_12;
    }

LABEL_8:
    while (1)
    {
      v14 = sub_2557ADB20(v11, 0);
      v15 = sub_2557B0988();
      sub_25578AAE0(a1, a2);
      v16 = *(v5 + 8);
      v5 += 8;
      v16(v9, v4);
      result = v14;
      if (v15 == v11)
      {
        break;
      }

      __break(1u);
LABEL_10:
      v17 = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_15;
      }

      v11 = v17;
      if (!v17)
      {
        goto LABEL_12;
      }
    }
  }

  return result;
}

uint64_t sub_2557AD930(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    goto LABEL_30;
  }

  v2 = result;
  if (!result)
  {
    return a2;
  }

  v3 = *(a2 + 16);
  if (!v3)
  {
    v7 = MEMORY[0x277D84F90];
LABEL_26:

    return v7;
  }

  v4 = 0;
  v5 = (a2 + 32);
  v6 = v3 - 1;
  v7 = MEMORY[0x277D84F90];
  v8 = MEMORY[0x277D84F90];
  v17 = result;
  while (1)
  {
    v10 = *v5++;
    v9 = v10;
    v11 = *(v8 + 16);
    if (v11 < v2)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_2557AB39C(0, v11 + 1, 1);
      }

      v13 = *(v8 + 16);
      v12 = *(v8 + 24);
      if (v13 >= v12 >> 1)
      {
        result = sub_2557AB39C((v12 > 1), v13 + 1, 1);
      }

      *(v8 + 16) = v13 + 1;
      *(v8 + v13 + 32) = v9;
      if (!v6)
      {
        goto LABEL_26;
      }

      goto LABEL_6;
    }

    if (v4 >= v11)
    {
      break;
    }

    v14 = *(v8 + v4 + 32);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_2557AB39C(0, *(v7 + 16) + 1, 1);
    }

    v16 = *(v7 + 16);
    v15 = *(v7 + 24);
    if (v16 >= v15 >> 1)
    {
      sub_2557AB39C((v15 > 1), v16 + 1, 1);
    }

    *(v7 + 16) = v16 + 1;
    *(v7 + v16 + 32) = v14;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_2557ADB94(v8);
      v8 = result;
    }

    v2 = v17;
    if (v4 >= *(v8 + 16))
    {
      goto LABEL_29;
    }

    *(v8 + v4++ + 32) = v9;
    if (v4 < v17)
    {
      if (!v6)
      {
        goto LABEL_26;
      }
    }

    else
    {
      if (!v6)
      {
        goto LABEL_26;
      }

      v4 = 0;
    }

LABEL_6:
    --v6;
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

void *sub_2557ADB20(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D2F00, &qword_2557B1DF0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_2557ADBA8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D3068, &qword_2557B1FF0);
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

char *sub_2557ADCB4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D2F00, &qword_2557B1DF0);
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

uint64_t sub_2557ADDA8(uint64_t result, unint64_t a2)
{
  v3 = result;
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_8;
    }

    v6 = *(result + 16);
    v5 = *(result + 24);
    v7 = __OFSUB__(v5, v6);
    v8 = v5 - v6;
    if (v7)
    {
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    if (v8 < 2)
    {
      goto LABEL_8;
    }
  }

  else
  {
    if (!v4)
    {
      if (BYTE6(a2) >= 2uLL)
      {
        goto LABEL_11;
      }

LABEL_8:
      sub_25578AA30();
      swift_allocError();
      *v9 = xmmword_2557B2D40;
      *(v9 + 16) = 7;
      return swift_willThrow();
    }

    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    if (HIDWORD(result) - result < 2)
    {
      goto LABEL_8;
    }
  }

LABEL_11:
  if (v4 == 2)
  {
    v12 = *(result + 16);
    v11 = *(result + 24);
    v10 = v11 - v12;
    if (!__OFSUB__(v11, v12))
    {
      goto LABEL_19;
    }

    __break(1u);
LABEL_18:
    v10 = BYTE6(a2);
    goto LABEL_19;
  }

  if (v4 != 1)
  {
    goto LABEL_18;
  }

  if (__OFSUB__(HIDWORD(result), result))
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v10 = HIDWORD(result) - result;
LABEL_19:
  result = v10 - 2;
  if (__OFSUB__(v10, 2))
  {
    __break(1u);
    goto LABEL_32;
  }

  sub_2557B09D8();
  result = sub_2557B09D8();
  if (v4 != 2)
  {
    if (v4 == 1)
    {
      LODWORD(v13) = HIDWORD(v3) - v3;
      if (!__OFSUB__(HIDWORD(v3), v3))
      {
        v13 = v13;
        goto LABEL_28;
      }

LABEL_35:
      __break(1u);
      return result;
    }

    goto LABEL_27;
  }

  v15 = *(v3 + 16);
  v14 = *(v3 + 24);
  v7 = __OFSUB__(v14, v15);
  v13 = v14 - v15;
  if (v7)
  {
    __break(1u);
LABEL_27:
    v13 = BYTE6(a2);
  }

LABEL_28:
  if (v13 < 3)
  {
    return MEMORY[0x277D84F90];
  }

  sub_25578ACE4(v3, a2);
  v16 = sub_2557AD7B4(v3, a2);
  return sub_2557AD930(2, v16);
}

unint64_t sub_2557ADF68()
{
  result = qword_27F7D3270;
  if (!qword_27F7D3270)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7D3268, " $");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7D3270);
  }

  return result;
}

void *sub_2557ADFCC(uint64_t a1, unint64_t a2)
{
  v4 = sub_2557B0A18();
  v5 = *(v4 - 8);
  result = MEMORY[0x28223BE20](v4, v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v10 != 2)
    {
      return MEMORY[0x277D84F90];
    }

    v13 = *(a1 + 16);
    v12 = *(a1 + 24);
    v11 = v12 - v13;
    if (!__OFSUB__(v12, v13))
    {
      if (v11)
      {
        goto LABEL_8;
      }

      return MEMORY[0x277D84F90];
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
    if (v10)
    {
      goto LABEL_10;
    }

    v11 = BYTE6(a2);
    if (!BYTE6(a2))
    {
      return MEMORY[0x277D84F90];
    }

LABEL_8:
    while (1)
    {
      v14 = sub_2557ADB20(v11, 0);
      v15 = sub_2557B0988();
      v16 = *(v5 + 8);
      v5 += 8;
      v16(v9, v4);
      result = v14;
      if (v15 == v11)
      {
        break;
      }

      __break(1u);
LABEL_10:
      v17 = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_15;
      }

      v11 = v17;
      if (!v17)
      {
        return MEMORY[0x277D84F90];
      }
    }
  }

  return result;
}

uint64_t sub_2557AE130(unsigned __int8 a1)
{
  if (a1 <= 0x37u)
  {
    if (a1 == 44)
    {
      return 4;
    }

    if (a1 != 54)
    {
      if (a1 == 55)
      {
        return 5;
      }

      return 0;
    }

    return 6;
  }

  else if (a1 > 0xC7u)
  {
    if (a1 != 210)
    {
      if (a1 == 200)
      {
        return 2;
      }

      return 0;
    }

    return 3;
  }

  else
  {
    if (a1 != 56)
    {
      return a1 == 100;
    }

    return 8;
  }
}

id sub_2557AE1BC(uint64_t a1)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v2 = sub_2557B0938();
  v11[0] = 0;
  v3 = [swift_getObjCClassFromMetadata() fileHandleForReadingFromURL:v2 error:v11];

  v4 = v11[0];
  if (v3)
  {
    v5 = sub_2557B0968();
    v6 = *(*(v5 - 8) + 8);
    v7 = v4;
    v6(a1, v5);
  }

  else
  {
    v8 = v11[0];
    sub_2557B0908();

    swift_willThrow();
    v9 = sub_2557B0968();
    (*(*(v9 - 8) + 8))(a1, v9);
  }

  return v3;
}

uint64_t sub_2557AE338(uint64_t a1)
{
  v50 = *MEMORY[0x277D85DE8];
  v3 = sub_2557B0B78();
  v40 = *(v3 - 8);
  v41 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v39 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2557B0968();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2557B0BB8();
  v42 = *(v11 - 8);
  v43 = v11;
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [objc_opt_self() defaultManager];
  sub_2557B0948();
  v16 = sub_2557B0C08();

  v17 = [v15 fileExistsAtPath_];

  if (!v17)
  {
    v18 = sub_2557B0948();
    v22 = v21;
    sub_25578AA30();
    swift_allocError();
    *v23 = v18;
    *(v23 + 8) = v22;
    *(v23 + 16) = 0;
    swift_willThrow();
    return v18;
  }

  sub_2557B0BA8();
  sub_2557AEFF0();
  v19 = *(v7 + 16);
  v18 = v7 + 16;
  v19(v10, a1, v6);
  v20 = sub_2557AE1BC(v10);
  if (!v1)
  {
    v25 = v20;
    v38 = 0;
    while (1)
    {
      v26 = MEMORY[0x259C40A50]();
      v27 = [v25 readDataOfLength_];
      v28 = sub_2557B09F8();
      v30 = v29;

      v31 = v30 >> 62;
      if ((v30 >> 62) > 1)
      {
        if (v31 != 2 || *(v28 + 16) == *(v28 + 24))
        {
LABEL_26:
          sub_25578AAE0(v28, v30);
          objc_autoreleasePoolPop(v26);
          v34 = v39;
          sub_2557B0B98();
          v35 = v41;
          v48 = v41;
          v49 = sub_2557AF03C(&qword_27F7D3288, MEMORY[0x277CC5290], MEMORY[0x277CC5280]);
          v36 = __swift_allocate_boxed_opaque_existential_1(&v45);
          v37 = v40;
          (*(v40 + 16))(v36, v34, v35);
          __swift_project_boxed_opaque_existential_1(&v45, v48);
          sub_2557B08E8();

          (*(v37 + 8))(v34, v35);
          v18 = v44;
          __swift_destroy_boxed_opaque_existential_0(&v45);
          (*(v42 + 8))(v14, v43);
          return v18;
        }
      }

      else
      {
        if (!v31)
        {
          if ((v30 & 0xFF000000000000) == 0)
          {
            goto LABEL_26;
          }

          v45 = v28;
          v46 = v30;
          v47 = WORD2(v30);
          sub_2557AF03C(&qword_27F7D3280, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
          goto LABEL_8;
        }

        if (v28 == v28 >> 32)
        {
          goto LABEL_26;
        }
      }

      if (v31 == 2)
      {
        v33 = *(v28 + 16);
        v32 = *(v28 + 24);

        if (sub_2557B0868() && __OFSUB__(v33, sub_2557B0888()))
        {
          goto LABEL_29;
        }

        if (__OFSUB__(v32, v33))
        {
          goto LABEL_28;
        }
      }

      else
      {
        if (v28 >> 32 < v28)
        {
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
        }

        if (sub_2557B0868() && __OFSUB__(v28, sub_2557B0888()))
        {
          goto LABEL_30;
        }
      }

      sub_2557B0878();
      sub_2557AF03C(&qword_27F7D3280, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
LABEL_8:
      sub_2557B0B68();
      sub_25578AAE0(v28, v30);
      sub_25578AAE0(v28, v30);
      objc_autoreleasePoolPop(v26);
    }
  }

  (*(v42 + 8))(v14, v43);
  return v18;
}

void *sub_2557AE95C(unint64_t a1, unint64_t a2)
{
  v65 = *MEMORY[0x277D85DE8];
  v5 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v5 == 2)
    {
      v7 = *(a1 + 16);
      v6 = *(a1 + 24);
      v8 = __OFSUB__(v6, v7);
      v9 = v6 - v7;
      if (v8)
      {
        goto LABEL_108;
      }

      if (v9 >= 1)
      {
        goto LABEL_8;
      }
    }

LABEL_15:
    sub_25578AA30();
    swift_allocError();
    v12 = xmmword_2557B2D90;
    goto LABEL_84;
  }

  if (v5)
  {
    goto LABEL_13;
  }

  if (!BYTE6(a2))
  {
    goto LABEL_15;
  }

LABEL_8:
  while (1)
  {
    v59 = HIDWORD(a1);
    if (v5 == 2)
    {
      break;
    }

    if (v5 != 1)
    {
      if ((a2 & 0x1000000000000) != 0)
      {
        goto LABEL_81;
      }

      goto LABEL_18;
    }

    v10 = BYTE4(a1) - a1;
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_17;
    }

    __break(1u);
LABEL_13:
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_109;
    }

    if (HIDWORD(a1) - a1 < 1)
    {
      goto LABEL_15;
    }
  }

  v14 = *(a1 + 16);
  v13 = *(a1 + 24);
  v8 = __OFSUB__(v13, v14);
  v10 = v13 - v14;
  if (v8)
  {
    goto LABEL_110;
  }

LABEL_17:
  if (v10)
  {
LABEL_81:
    sub_25578AA30();
    swift_allocError();
    v12 = xmmword_2557B2DA0;
    goto LABEL_84;
  }

LABEL_18:
  v2 = sub_25578AD38(MEMORY[0x277D84F90]);
  v15 = 0;
  v16 = __OFSUB__(v59, a1);
  v58 = v16;
  v17 = BYTE6(a2);
  v60 = v5;
  v61 = a1 >> 32;
  while (1)
  {
    v18 = v17;
    if (v5)
    {
      if (v5 == 1)
      {
        v18 = v59 - a1;
        if (v58)
        {
          goto LABEL_88;
        }
      }

      else
      {
        v20 = *(a1 + 16);
        v19 = *(a1 + 24);
        v8 = __OFSUB__(v19, v20);
        v18 = v19 - v20;
        if (v8)
        {
          goto LABEL_89;
        }
      }
    }

    if (v15 >= v18)
    {
      return v2;
    }

    if (v5 != 2)
    {
      break;
    }

    if (v15 < *(a1 + 16))
    {
      goto LABEL_91;
    }

    if (v15 >= *(a1 + 24))
    {
      goto LABEL_93;
    }

    v25 = sub_2557B0868();
    if (!v25)
    {
      goto LABEL_112;
    }

    v22 = v25;
    v26 = sub_2557B0888();
    v24 = v15 - v26;
    if (__OFSUB__(v15, v26))
    {
      goto LABEL_95;
    }

LABEL_42:
    v27 = *(v22 + v24);
    if (v2[2])
    {
      goto LABEL_43;
    }

LABEL_57:

    if (v5 == 2)
    {
LABEL_58:
      if (v15 < *(a1 + 16))
      {
        goto LABEL_96;
      }

      if (v15 >= *(a1 + 24))
      {
        goto LABEL_99;
      }

      v39 = sub_2557B0868();
      if (!v39)
      {
        goto LABEL_114;
      }

      v40 = v39;
      v41 = sub_2557B0888();
      if (__OFSUB__(v15, v41))
      {
        goto LABEL_103;
      }

      v42 = v15 + 1;
      if (v15 + 1 < *(a1 + 16))
      {
        goto LABEL_104;
      }

      if (v42 >= *(a1 + 24))
      {
        goto LABEL_106;
      }

      v34 = *(v40 + v15 - v41);
      v43 = sub_2557B0868();
      if (!v43)
      {
        goto LABEL_116;
      }

      v36 = v43;
      v44 = sub_2557B0888();
      v38 = v42 - v44;
      if (__OFSUB__(v42, v44))
      {
        goto LABEL_107;
      }

      goto LABEL_66;
    }

LABEL_45:
    if (v5 == 1)
    {
      if (v15 < a1 || v15 >= v61)
      {
        goto LABEL_98;
      }

      v30 = sub_2557B0868();
      if (!v30)
      {
        goto LABEL_113;
      }

      v31 = v30;
      v32 = sub_2557B0888();
      if (__OFSUB__(v15, v32))
      {
        goto LABEL_101;
      }

      v33 = v15 + 1;
      if (v15 + 1 >= v61)
      {
        goto LABEL_102;
      }

      v34 = *(v31 + v15 - v32);
      v35 = sub_2557B0868();
      if (!v35)
      {
        goto LABEL_115;
      }

      v36 = v35;
      v37 = sub_2557B0888();
      v38 = v33 - v37;
      if (__OFSUB__(v33, v37))
      {
        goto LABEL_105;
      }

LABEL_66:
      v45 = *(v36 + v38);
      goto LABEL_70;
    }

    if (v15 >= v17)
    {
      goto LABEL_97;
    }

    LOWORD(v62) = a1;
    BYTE2(v62) = BYTE2(a1);
    BYTE3(v62) = BYTE3(a1);
    BYTE4(v62) = v59;
    BYTE5(v62) = BYTE5(a1);
    BYTE6(v62) = BYTE6(a1);
    HIBYTE(v62) = HIBYTE(a1);
    LOWORD(v63) = a2;
    BYTE2(v63) = BYTE2(a2);
    HIBYTE(v63) = BYTE3(a2);
    LOBYTE(v64) = BYTE4(a2);
    HIBYTE(v64) = BYTE5(a2);
    if (v15 + 1 >= v17)
    {
      goto LABEL_100;
    }

    v34 = *(&v62 + v15);
    v62 = a1;
    v63 = a2;
    v64 = WORD2(a2);
    v45 = *(&v62 + v15 + 1);
LABEL_70:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v62 = v2;
    v47 = sub_2557896D0(v34);
    v49 = v2[2];
    v50 = (v48 & 1) == 0;
    v8 = __OFADD__(v49, v50);
    v51 = v49 + v50;
    if (v8)
    {
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
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
LABEL_96:
      __break(1u);
LABEL_97:
      __break(1u);
LABEL_98:
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
    }

    v52 = v48;
    if (v2[3] < v51)
    {
      sub_255789BE8(v51, isUniquelyReferenced_nonNull_native);
      v47 = sub_2557896D0(v34);
      if ((v52 & 1) != (v53 & 1))
      {
        result = sub_2557B0FB8();
        __break(1u);
        return result;
      }

LABEL_75:
      v2 = v62;
      if (v52)
      {
        goto LABEL_22;
      }

      goto LABEL_76;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_75;
    }

    v56 = v47;
    sub_25578A3B0();
    v47 = v56;
    v2 = v62;
    if (v52)
    {
LABEL_22:
      *(v2[7] + v47) = v45;
      goto LABEL_23;
    }

LABEL_76:
    v2[(v47 >> 6) + 8] |= 1 << v47;
    *(v2[6] + v47) = v34;
    *(v2[7] + v47) = v45;
    v54 = v2[2];
    v8 = __OFADD__(v54, 1);
    v55 = v54 + 1;
    if (v8)
    {
      goto LABEL_87;
    }

    v2[2] = v55;
LABEL_23:
    v15 += 2;
    v17 = BYTE6(a2);
    LODWORD(v5) = v60;
  }

  if (v5 == 1)
  {
    if (v15 < a1 || v15 >= v61)
    {
      goto LABEL_92;
    }

    v21 = sub_2557B0868();
    if (!v21)
    {
      goto LABEL_111;
    }

    v22 = v21;
    v23 = sub_2557B0888();
    v24 = v15 - v23;
    if (__OFSUB__(v15, v23))
    {
      goto LABEL_94;
    }

    goto LABEL_42;
  }

  if (v15 >= v17)
  {
    goto LABEL_90;
  }

  LOWORD(v62) = a1;
  BYTE2(v62) = BYTE2(a1);
  BYTE3(v62) = BYTE3(a1);
  BYTE4(v62) = v59;
  BYTE5(v62) = BYTE5(a1);
  BYTE6(v62) = BYTE6(a1);
  HIBYTE(v62) = HIBYTE(a1);
  LOWORD(v63) = a2;
  BYTE2(v63) = BYTE2(a2);
  HIBYTE(v63) = BYTE3(a2);
  LOBYTE(v64) = BYTE4(a2);
  HIBYTE(v64) = BYTE5(a2);
  v27 = *(&v62 + v15);

  if (!v2[2])
  {
    goto LABEL_57;
  }

LABEL_43:
  sub_2557896D0(v27);
  v29 = v28;

  if ((v29 & 1) == 0)
  {
    if (v5 == 2)
    {
      goto LABEL_58;
    }

    goto LABEL_45;
  }

  sub_25578AA30();
  swift_allocError();
  v12 = xmmword_2557B2DB0;
LABEL_84:
  *v11 = v12;
  *(v11 + 16) = 7;
  swift_willThrow();
  return v2;
}

unint64_t sub_2557AEFF0()
{
  result = qword_27F7D3278;
  if (!qword_27F7D3278)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F7D3278);
  }

  return result;
}

uint64_t sub_2557AF03C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_2557AF0E8()
{
  v78 = *MEMORY[0x277D85DE8];
  v3 = sub_2557B0A18();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v0;
  v9 = *(v0 + 8);
  v10 = v9 >> 62;
  if ((v9 >> 62) > 1)
  {
    if (v10 != 2 || *(v8 + 16) == *(v8 + 24))
    {
      return 0xFF00000000;
    }
  }

  else if (v10)
  {
    if (v8 == v8 >> 32)
    {
      return 0xFF00000000;
    }
  }

  else if ((v9 & 0xFF000000000000) == 0)
  {
    return 0xFF00000000;
  }

  result = sub_2557B0140(v8, v9);
  if (v1)
  {
    return result;
  }

  v71 = result;
  v12 = v0;
  sub_2557AFC5C(BYTE4(result) + 1);
  v13 = *v0;
  v14 = *(v0 + 8);
  v15 = v14 >> 62;
  if ((v14 >> 62) <= 1)
  {
    if (!v15)
    {
      if (!BYTE6(v14))
      {
LABEL_24:
        sub_2557B0430();
        swift_allocError();
        *v26 = 0xD000000000000022;
        *(v26 + 8) = 0x80000002557B40A0;
        *(v26 + 16) = 1;
        return swift_willThrow();
      }

      goto LABEL_17;
    }

    v19 = __OFSUB__(HIDWORD(v13), v13);
    v25 = HIDWORD(v13) - v13;
    if (!v19)
    {
      if (v25 < 1)
      {
        goto LABEL_24;
      }

      goto LABEL_17;
    }

LABEL_101:
    __break(1u);
LABEL_102:
    __break(1u);
    goto LABEL_103;
  }

  if (v15 != 2)
  {
    goto LABEL_24;
  }

  v18 = v13 + 16;
  v16 = *(v13 + 16);
  v17 = *(v18 + 8);
  v19 = __OFSUB__(v17, v16);
  v20 = v17 - v16;
  if (v19)
  {
    __break(1u);
    goto LABEL_101;
  }

  if (v20 < 1)
  {
    goto LABEL_24;
  }

LABEL_17:
  v21 = sub_2557AFD98();
  if (v21 < 0)
  {
    v0 = v21 & 0x7F;
    v22 = *v12;
    v2 = v12[1];
    v24 = v2 >> 62;
    if ((v2 >> 62) <= 1)
    {
      if (!v24)
      {
        v27 = BYTE6(v2);
        goto LABEL_53;
      }

      goto LABEL_51;
    }

    goto LABEL_32;
  }

  v22 = v21;
  while (1)
  {
    v3 = *v0;
    v7 = *(v0 + 8);
    v23 = v7 >> 62;
    if ((v7 >> 62) <= 1)
    {
      if (v23)
      {
        goto LABEL_36;
      }

      v24 = BYTE6(v7);
      goto LABEL_38;
    }

    if (v23 != 2)
    {
      break;
    }

    v29 = *(v3 + 16);
    v28 = *(v3 + 24);
    v19 = __OFSUB__(v28, v29);
    v24 = v28 - v29;
    if (!v19)
    {
      goto LABEL_38;
    }

    __break(1u);
LABEL_32:
    if (v24 == 2)
    {
      v31 = *(v22 + 16);
      v30 = *(v22 + 24);
      v19 = __OFSUB__(v30, v31);
      v27 = v30 - v31;
      if (!v19)
      {
LABEL_53:
        if (v27 < v0)
        {
          goto LABEL_56;
        }

        goto LABEL_54;
      }

      __break(1u);
LABEL_36:
      LODWORD(v24) = HIDWORD(v3) - v3;
      if (__OFSUB__(HIDWORD(v3), v3))
      {
        goto LABEL_102;
      }

      v24 = v24;
LABEL_38:
      if (v24 < v22)
      {
        goto LABEL_62;
      }

      goto LABEL_41;
    }

    if (v0)
    {
LABEL_56:
      *&v74 = 0;
      *(&v74 + 1) = 0xE000000000000000;
      sub_2557B0EF8();

      *&v74 = 1030185300;
      *(&v74 + 1) = 0xE400000000000000;
      v39 = sub_2557AF990(v71 & 0xFFFFFFFFFFLL);
      MEMORY[0x259C40650](v39);

      v40 = 0x80000002557B4070;
      v41 = 0xD000000000000022;
LABEL_72:
      MEMORY[0x259C40650](v41, v40);
      v53 = v74;
      sub_2557B0430();
      swift_allocError();
      *v54 = v53;
      *(v54 + 16) = 0;
      return swift_willThrow();
    }

LABEL_54:
    sub_25578ACE4(v22, v2);
    sub_2557AFEE0(v0, v22, v2, &v74);
    v2 = *(&v74 + 1);
    v38 = v74;
    sub_2557AFC5C(v0);
    sub_25578ACE4(v38, v2);
    v70 = v38;
    sub_2557B0A28();
    sub_2557B0484();
    sub_2557B0E78();
    if (BYTE1(v74))
    {
      v22 = 0;
    }

    else
    {
      v22 = 0;
      do
      {
        v22 = v74 | (v22 << 8);
        sub_2557B0E78();
      }

      while ((BYTE1(v74) & 1) == 0);
    }

    sub_25578AAE0(v70, v2);
    v42 = *(v4 + 8);
    v4 += 8;
    v42(v7, v3);
    v0 = v12;
    if (v22 < 0)
    {
LABEL_62:
      *&v74 = 0;
      *(&v74 + 1) = 0xE000000000000000;
      sub_2557B0EF8();

      *&v74 = 1030185300;
      *(&v74 + 1) = 0xE400000000000000;
      v43 = sub_2557AF990(v71 & 0xFFFFFFFFFFLL);
      MEMORY[0x259C40650](v43);

      MEMORY[0x259C40650](0x654C206874697720, 0xED00003D6874676ELL);
      *&v77 = v22;
      v44 = sub_2557B0F88();
      MEMORY[0x259C40650](v44);

      MEMORY[0x259C40650](0x6E6F206874697720, 0xEB0000000020796CLL);
      v45 = *v0;
      v46 = *(v0 + 8);
      v47 = v46 >> 62;
      if ((v46 >> 62) <= 1)
      {
        if (!v47)
        {
          v48 = BYTE6(v46);
          goto LABEL_71;
        }

LABEL_69:
        v19 = __OFSUB__(HIDWORD(v45), v45);
        v51 = HIDWORD(v45) - v45;
        if (!v19)
        {
          v48 = v51;
          goto LABEL_71;
        }

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
      }

      v48 = 0;
      if (v47 == 2)
      {
        v50 = v45 + 16;
        v45 = *(v45 + 16);
        v49 = *(v50 + 8);
        v19 = __OFSUB__(v49, v45);
        v48 = v49 - v45;
        if (v19)
        {
          __break(1u);
          goto LABEL_69;
        }
      }

LABEL_71:
      *&v77 = v48;
      v52 = sub_2557B0F88();
      MEMORY[0x259C40650](v52);

      v41 = 0xD000000000000010;
      v40 = 0x80000002557B4050;
      goto LABEL_72;
    }
  }

  if (v22)
  {
    goto LABEL_62;
  }

LABEL_41:
  sub_25578ACE4(v3, v7);
  sub_2557AFEE0(v22, v3, v7, &v77);
  v75 = MEMORY[0x277CC9318];
  v76 = MEMORY[0x277CC9300];
  v74 = v77;
  v32 = __swift_project_boxed_opaque_existential_1(&v74, MEMORY[0x277CC9318]);
  v33 = *v32;
  v7 = v32[1];
  v34 = v7 >> 62;
  if ((v7 >> 62) > 1)
  {
    if (v34 != 2)
    {
      memset(v72, 0, 14);
      v35 = v72;
      goto LABEL_87;
    }

    v36 = *(v33 + 16);
    v4 = *(v33 + 24);
    v0 = v7 & 0x3FFFFFFFFFFFFFFFLL;
    v3 = sub_2557B0868();
    if (v3)
    {
      v0 = v7 & 0x3FFFFFFFFFFFFFFFLL;
      v37 = sub_2557B0888();
      if (__OFSUB__(v36, v37))
      {
        goto LABEL_108;
      }

      v3 += v36 - v37;
    }

    v19 = __OFSUB__(v4, v36);
    v2 = v4 - v36;
    if (!v19)
    {
      goto LABEL_79;
    }

    __break(1u);
LABEL_51:
    LODWORD(v27) = HIDWORD(v22) - v22;
    if (__OFSUB__(HIDWORD(v22), v22))
    {
      goto LABEL_104;
    }

    v27 = v27;
    goto LABEL_53;
  }

  if (!v34)
  {
    v72[0] = *v32;
    LOWORD(v72[1]) = v7;
    BYTE2(v72[1]) = BYTE2(v7);
    BYTE3(v72[1]) = BYTE3(v7);
    BYTE4(v72[1]) = BYTE4(v7);
    BYTE5(v72[1]) = BYTE5(v7);
    v35 = v72 + BYTE6(v7);
LABEL_87:
    sub_2557AB18C(v72, v35, v73);
    goto LABEL_88;
  }

  v55 = v33;
  v56 = v33 >> 32;
  v2 = v56 - v55;
  if (v56 < v55)
  {
    goto LABEL_105;
  }

  v3 = sub_2557B0868();
  if (v3)
  {
    v57 = sub_2557B0888();
    if (__OFSUB__(v55, v57))
    {
      goto LABEL_109;
    }

    v3 += v55 - v57;
  }

LABEL_79:
  v58 = sub_2557B0878();
  if (v58 >= v2)
  {
    v59 = v2;
  }

  else
  {
    v59 = v58;
  }

  v60 = (v59 + v3);
  if (v3)
  {
    v61 = v60;
  }

  else
  {
    v61 = 0;
  }

  sub_2557AB18C(v3, v61, v73);
  v0 = v12;
LABEL_88:
  v62 = v73[0];
  v63 = v73[1];
  __swift_destroy_boxed_opaque_existential_0(&v74);
  v64 = v71 & 0xFFFFFFFFFFLL;
  if (!sub_2557AF944(v71 & 0xFFFFFFFFFFLL) || (*(v0 + 16) & 1) == 0)
  {
    sub_2557AFC5C(v22);
  }

  sub_25578ACE4(v62, v63);
  sub_255799C4C(0, 0xF000000000000000);
  v65 = v63;
  v66 = v63 >> 62;
  if ((v63 >> 62) > 1)
  {
    v67 = v62;
    if (v66 == 2)
    {
      v69 = *(v62 + 16);
      v68 = *(v62 + 24);
      sub_25578AAE0(v62, v63);
      if (__OFSUB__(v68, v69))
      {
        goto LABEL_106;
      }

      v67 = v62;
      goto LABEL_98;
    }
  }

  else
  {
    if (!v66)
    {
      v67 = v62;
      goto LABEL_99;
    }

    sub_25578AAE0(v62, v63);
    v67 = v62;
    if (__OFSUB__(HIDWORD(v62), v62))
    {
      goto LABEL_107;
    }

LABEL_98:
    v65 = v63;
  }

LABEL_99:
  sub_255799C60(v67, v65);
  sub_255799C4C(v62, v63);
  return v64;
}

BOOL sub_2557AF944(_BOOL8 result)
{
  if (BYTE4(result) <= 1u)
  {
    if (BYTE4(result))
    {
      v1 = 0x2000;
    }

    else
    {
      v1 = 32;
    }

    return (v1 & result) != 0;
  }

  if (BYTE4(result) != 2)
  {
    v1 = 0x20000000;
    return (v1 & result) != 0;
  }

  if (!(result & 0xFF000000))
  {
    v1 = 0x200000;
    return (v1 & result) != 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_2557AF990(uint64_t a1)
{
  v1 = a1;
  if (BYTE4(a1) > 1u)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D2E48, &unk_2557B1DE0);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_2557B1770;
    v5 = MEMORY[0x277D84D30];
    *(v4 + 56) = MEMORY[0x277D84CC0];
    *(v4 + 64) = v5;
    *(v4 + 32) = v1;
  }

  else if (BYTE4(a1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D2E48, &unk_2557B1DE0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_2557B1770;
    v7 = MEMORY[0x277D84CB8];
    *(v6 + 56) = MEMORY[0x277D84C58];
    *(v6 + 64) = v7;
    *(v6 + 32) = v1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D2E48, &unk_2557B1DE0);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_2557B1770;
    v3 = MEMORY[0x277D84BC0];
    *(v2 + 56) = MEMORY[0x277D84B78];
    *(v2 + 64) = v3;
    *(v2 + 32) = v1;
  }

  return sub_2557B0C48();
}

uint64_t sub_2557AFB04(uint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = a3 >> 62;
  if ((a3 >> 62) <= 1)
  {
    if (!v3)
    {
      if (BYTE6(a3) >= result)
      {
        return result;
      }

      goto LABEL_8;
    }

    if (!__OFSUB__(HIDWORD(a2), a2))
    {
      if (HIDWORD(a2) - a2 >= result)
      {
        return result;
      }

LABEL_8:
      sub_2557B0EF8();

      v8 = sub_2557B0F88();
      MEMORY[0x259C40650](v8);

      MEMORY[0x259C40650](0x736574796220, 0xE600000000000000);
      sub_2557B0430();
      swift_allocError();
      *v9 = 0xD00000000000001BLL;
      *(v9 + 8) = 0x80000002557B40D0;
      *(v9 + 16) = 1;
      return swift_willThrow();
    }

LABEL_16:
    __break(1u);
    return result;
  }

  if (v3 == 2)
  {
    v5 = *(a2 + 16);
    v4 = *(a2 + 24);
    v6 = __OFSUB__(v4, v5);
    v7 = v4 - v5;
    if (!v6)
    {
      if (v7 >= result)
      {
        return result;
      }

      goto LABEL_8;
    }

    __break(1u);
    goto LABEL_16;
  }

  if (result > 0)
  {
    goto LABEL_8;
  }

  return result;
}

unint64_t sub_2557AFC5C(unint64_t result)
{
  if (result)
  {
    v2 = result;
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v3 = *v1;
      v4 = *(v1 + 8);
      v5 = v4 >> 62;
      if ((v4 >> 62) > 1)
      {
        if (v5 == 2)
        {
          v6 = *(v3 + 16);
          v7 = *(v3 + 24);
        }

        else
        {
          v6 = 0;
          v7 = 0;
        }
      }

      else
      {
        if (v5)
        {
          v6 = v3;
        }

        else
        {
          v6 = 0;
        }

        if (v5)
        {
          v7 = v3 >> 32;
        }

        else
        {
          v7 = BYTE6(v4);
        }
      }

      result = sub_2557B008C(v6, v7, *v1, *(v1 + 8));
      if (result < v2)
      {
        goto LABEL_26;
      }

      v8 = sub_2557B0028(v6, v2, v3, v4);
      v9 = *v1;
      v10 = *(v1 + 8);
      v11 = v10 >> 62;
      if ((v10 >> 62) > 1)
      {
        if (v11 == 2)
        {
          v12 = *(v9 + 24);
        }

        else
        {
          v12 = 0;
        }
      }

      else if (v11)
      {
        v12 = v9 >> 32;
      }

      else
      {
        v12 = BYTE6(v10);
      }

      sub_25578ACE4(*v1, *(v1 + 8));
      result = sub_25578AAE0(v9, v10);
      if (v12 >= v8)
      {
        v13 = sub_2557B09C8();
        v15 = v14;
        result = sub_25578AAE0(v9, v10);
        *v1 = v13;
        *(v1 + 8) = v15;
        return result;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  return result;
}

uint64_t sub_2557AFD98()
{
  result = *v0;
  v2 = *(v0 + 8);
  v3 = v2 >> 62;
  if ((v2 >> 62) > 1)
  {
    if (v3 != 2 || *(result + 16) == *(result + 24))
    {
      goto LABEL_29;
    }
  }

  else
  {
    v4 = BYTE6(v2);
    if (v3)
    {
      v4 = result >> 32;
      v5 = result;
    }

    else
    {
      v5 = 0;
    }

    if (v5 == v4)
    {
      goto LABEL_29;
    }
  }

  result = sub_255794BF4(result, v2);
  if ((result & 0x100) == 0)
  {
    v6 = result;
    v7 = *v0;
    v8 = *(v0 + 8);
    v9 = v8 >> 62;
    if ((v8 >> 62) > 1)
    {
      v10 = 0;
      if (v9 == 2)
      {
        v10 = *(v7 + 16);
      }
    }

    else
    {
      v10 = v7;
      if (!v9)
      {
        v10 = 0;
      }
    }

    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
    }

    else
    {
      if (v9 > 1)
      {
        if (v9 == 2)
        {
          v12 = *(v7 + 24);
        }

        else
        {
          v12 = 0;
        }
      }

      else if (v9)
      {
        v12 = v7 >> 32;
      }

      else
      {
        v12 = BYTE6(v8);
      }

      sub_25578ACE4(*v0, *(v0 + 8));
      result = sub_25578AAE0(v7, v8);
      if (v12 >= v11)
      {
        v13 = sub_2557B09C8();
        v15 = v14;
        sub_25578AAE0(v7, v8);
        *v0 = v13;
        *(v0 + 8) = v15;
        return v6;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_2557AFEE0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  v6 = result;
  v8 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v8 == 2)
    {
      v10 = *(a2 + 16);
      v9 = *(a2 + 24);
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }
  }

  else
  {
    if (v8)
    {
      v9 = a2 >> 32;
    }

    else
    {
      v9 = BYTE6(a3);
    }

    if (v8)
    {
      v10 = a2;
    }

    else
    {
      v10 = 0;
    }
  }

  v11 = sub_2557B008C(v10, v9, a2, a3);
  if (v6 && v11 < v6)
  {
    if (v8 <= 1)
    {
      if (!v8)
      {
        goto LABEL_28;
      }

      v12 = a2 >> 32;
      goto LABEL_26;
    }

    if (v8 != 2)
    {
      goto LABEL_28;
    }

    v12 = *(a2 + 24);
LABEL_24:
    result = *(a2 + 16);
    goto LABEL_27;
  }

  v12 = sub_2557B0028(v10, v6, a2, a3);
  result = 0;
  if (v8 > 1)
  {
    if (v8 != 3)
    {
      goto LABEL_24;
    }
  }

  else if (v8)
  {
LABEL_26:
    result = a2;
  }

LABEL_27:
  if (v12 >= result)
  {
LABEL_28:
    v13 = sub_2557B09C8();
    v15 = v14;
    result = sub_25578AAE0(a2, a3);
    *a4 = v13;
    a4[1] = v15;
    return result;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_2557B0028(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = __OFADD__(a1, a2);
  result = a1 + a2;
  if (v4)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  v6 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v6 == 2)
    {
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a4);
    if (v6)
    {
      v7 = a3 >> 32;
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7 < result || result < v8)
  {
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_2557B008C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v4 == 2)
    {
      v6 = *(a3 + 16);
      v5 = *(a3 + 24);
    }

    else
    {
      v5 = 0;
      v6 = 0;
    }
  }

  else
  {
    v5 = a3 >> 32;
    if (v4)
    {
      v6 = a3;
    }

    else
    {
      v5 = BYTE6(a4);
      v6 = 0;
    }
  }

  if (v5 < result || v6 > result)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a4);
    if (v4)
    {
      v7 = a3 >> 32;
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7 < a2 || v8 > a2)
  {
    goto LABEL_22;
  }

  v9 = __OFSUB__(a2, result);
  result = a2 - result;
  if (v9)
  {
LABEL_23:
    __break(1u);
  }

  return result;
}

uint64_t sub_2557B0140(uint64_t a1, unint64_t a2)
{
  v4 = a1;
  v5 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v5 != 2 || *(a1 + 16) == *(a1 + 24))
    {
      goto LABEL_10;
    }
  }

  else
  {
    if (!v5)
    {
      if ((a2 & 0xFF000000000000) != 0)
      {
        v6 = 0;
        goto LABEL_13;
      }

LABEL_10:
      sub_2557B0430();
      swift_allocError();
      *v7 = 0;
      *(v7 + 8) = 0;
      *(v7 + 16) = 2;
      return swift_willThrow();
    }

    if (a1 == a1 >> 32)
    {
      goto LABEL_10;
    }
  }

  if (v5 == 2)
  {
    v6 = *(a1 + 16);
  }

  else
  {
    v6 = a1;
  }

LABEL_13:
  if ((~sub_2557B09D8() & 0x1F) != 0)
  {
    result = sub_255794BF4(v4, a2);
    if ((result & 0x100) != 0)
    {
      __break(1u);
    }

    else
    {
      return result;
    }
  }

  else
  {
    result = sub_2557AFB04(2, v4, a2);
    if (!v2)
    {
      if (__OFADD__(v6, 1))
      {
        __break(1u);
        goto LABEL_45;
      }

      if ((sub_2557B09D8() & 0x80) == 0)
      {
        if (v5 == 2)
        {
          v13 = *(v4 + 16);
          v14 = *(v4 + 24);
          v9 = sub_2557B0868();
          if (v9)
          {
            v15 = sub_2557B0888();
            if (__OFSUB__(v13, v15))
            {
LABEL_47:
              __break(1u);
LABEL_48:
              __break(1u);
              goto LABEL_49;
            }

            v9 = (v9 + v13 - v15);
          }

          if (!__OFSUB__(v14, v13))
          {
            goto LABEL_35;
          }

LABEL_46:
          __break(1u);
          goto LABEL_47;
        }

        if (v5 != 1)
        {
          return (bswap32(v4) >> 16) | 0x100000000;
        }

        if (v4 <= v4 >> 32)
        {
          v9 = sub_2557B0868();
          if (!v9)
          {
LABEL_35:
            sub_2557B0878();
            LODWORD(v4) = *v9;
            return (bswap32(v4) >> 16) | 0x100000000;
          }

          v10 = sub_2557B0888();
          if (!__OFSUB__(v4, v10))
          {
            v9 = (v9 + v4 - v10);
            goto LABEL_35;
          }

          goto LABEL_48;
        }

LABEL_45:
        __break(1u);
        goto LABEL_46;
      }

      sub_2557AFB04(3, v4, a2);
      if (v5 == 2)
      {
        v16 = *(v4 + 16);
        v17 = *(v4 + 24);
        v11 = sub_2557B0868();
        if (v11)
        {
          v18 = sub_2557B0888();
          if (__OFSUB__(v16, v18))
          {
LABEL_51:
            __break(1u);
LABEL_52:
            __break(1u);
          }

          v11 += v16 - v18;
        }

        if (__OFSUB__(v17, v16))
        {
LABEL_50:
          __break(1u);
          goto LABEL_51;
        }
      }

      else
      {
        if (v5 != 1)
        {
          v19 = v4 & 0xFF00 | (v4 << 16) | BYTE2(v4);
          return v19 | 0x200000000;
        }

        if (v4 > v4 >> 32)
        {
LABEL_49:
          __break(1u);
          goto LABEL_50;
        }

        v11 = sub_2557B0868();
        if (v11)
        {
          v12 = sub_2557B0888();
          if (__OFSUB__(v4, v12))
          {
            goto LABEL_52;
          }

          v11 += v4 - v12;
        }
      }

      sub_2557B0878();
      v19 = (*v11 << 16) | (v11[1] << 8) | v11[2];
      return v19 | 0x200000000;
    }
  }

  return result;
}

unint64_t sub_2557B0430()
{
  result = qword_27F7D3290;
  if (!qword_27F7D3290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7D3290);
  }

  return result;
}

unint64_t sub_2557B0484()
{
  result = qword_27F7D3298;
  if (!qword_27F7D3298)
  {
    sub_2557B0A18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7D3298);
  }

  return result;
}

uint64_t sub_2557B04DC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_25578ACE4(a2, a3);
  v5 = sub_2557AF0E8();
  if (v3)
  {
    return sub_25578AAE0(a2, a3);
  }

  while (1)
  {
    if ((~v5 & 0xFF00000000) == 0)
    {
      v11 = v5;
      goto LABEL_13;
    }

    v10 = BYTE4(v5) ? v5 : v5;
    if (BYTE4(v5) - 2 < 2)
    {
      v10 = v5;
    }

    if (a1 == v10)
    {
      break;
    }

    sub_255799C30(v5, v6, v7, v8);
    v5 = sub_2557AF0E8();
  }

  v11 = v5 & 0xFFFFFFFFFFLL;
LABEL_13:
  sub_25578AAE0(a2, a3);
  return v11;
}

uint64_t get_enum_tag_for_layout_string_20KernelManagerLibrary8TLVErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_2557B05FC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_2557B0644(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_2557B0688(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_2557B06B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v18 = MEMORY[0x277D84F90];
    sub_2557AB37C(0, v1, 0);
    v3 = v18;
    v4 = (a1 + 32);
    v5 = MEMORY[0x277D84B78];
    v6 = MEMORY[0x277D84BC0];
    do
    {
      v7 = *v4++;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D2E48, &unk_2557B1DE0);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_2557B1770;
      *(v8 + 56) = v5;
      *(v8 + 64) = v6;
      *(v8 + 32) = v7;
      v9 = sub_2557B0C48();
      v19 = v3;
      v12 = *(v3 + 16);
      v11 = *(v3 + 24);
      if (v12 >= v11 >> 1)
      {
        v17 = v9;
        v14 = v10;
        sub_2557AB37C((v11 > 1), v12 + 1, 1);
        v10 = v14;
        v9 = v17;
        v3 = v19;
      }

      *(v3 + 16) = v12 + 1;
      v13 = v3 + 16 * v12;
      *(v13 + 32) = v9;
      *(v13 + 40) = v10;
      --v1;
    }

    while (v1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7D2E60, &qword_2557B1FA0);
  sub_25578AB8C();
  v15 = sub_2557B0BF8();

  return v15;
}