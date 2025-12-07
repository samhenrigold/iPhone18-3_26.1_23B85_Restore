uint64_t sub_252D68B10(void *a1)
{
  if (sub_252D6841C() == 46)
  {

    return sub_25292AB64(a1);
  }

  else
  {

    return sub_252D50560(a1);
  }
}

uint64_t sub_252D68B70(void *a1)
{
  v2 = v1;
  v4 = sub_252E36AD4();
  v130 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v131 = &v122 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_252D6841C() != 46)
  {
    v17 = 0;
    return v17 & 1;
  }

  v6 = *&v1[OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name];
  v7 = *&v1[OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8];
  v8 = [a1 outerDeviceName];
  if (!v8)
  {
    goto LABEL_8;
  }

  v9 = v8;
  v10 = sub_252E36F34();
  v12 = v11;

  if (v6 == v10 && v7 == v12)
  {
  }

  else
  {
    v14 = sub_252E37DB4();

    if ((v14 & 1) == 0)
    {
LABEL_8:
      v15 = sub_252D6841C();
      v16 = v15 == [a1 outerDeviceType];
      goto LABEL_12;
    }
  }

  v16 = 1;
LABEL_12:
  v18 = [a1 targetArea];
  v128 = v4;
  v124 = a1;
  v123 = v16;
  if (!v18)
  {
    goto LABEL_37;
  }

  v19 = v18;
  v126 = sub_252E36F34();
  v21 = v20;

  v22 = [a1 targetMap];
  if (!v22)
  {

LABEL_37:
    v44 = [a1 targetArea];
    if (v44)
    {
      v45 = v44;
      v127 = sub_252E36F34();
      v129 = v46;

      v26 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0(v47);
      v48 = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_deviceEntityStore;
      swift_beginAccess();
      v49 = *(v26 + v48);
      if (v49 >> 62)
      {
        v50 = sub_252E378C4();
      }

      else
      {
        v50 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v52 = MEMORY[0x277D84F90];
      if (v50)
      {
        v53 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0(v51);
        v26 = sub_252AC0F68(v2);

        if (v26)
        {
          v52 = v26;
        }
      }

      if (v52 >> 62)
      {
        v54 = sub_252E378C4();
        if (v54)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v54 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v54)
        {
LABEL_45:
          v55 = 0;
          v2 = (v52 & 0xFFFFFFFFFFFFFF8);
          do
          {
            if ((v52 & 0xC000000000000001) != 0)
            {
              v56 = MEMORY[0x2530ADF00](v55, v52);
            }

            else
            {
              if (v55 >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_91;
              }

              v56 = *(v52 + 8 * v55 + 32);
            }

            v26 = v56;
            v57 = v55 + 1;
            if (__OFADD__(v55, 1))
            {
              goto LABEL_90;
            }

            v58 = [v56 name];
            if (v58)
            {
              v59 = v58;
              v60 = sub_252E36F34();
              v62 = v61;

              if (v60 == v127 && v62 == v129)
              {
                goto LABEL_83;
              }

              v64 = sub_252E37DB4();

              if (v64)
              {
                goto LABEL_84;
              }
            }

            else
            {
            }

            ++v55;
          }

          while (v57 != v54);
        }
      }

LABEL_133:

      v86 = 0;
      goto LABEL_134;
    }

    v65 = [a1 targetMap];
    if (!v65)
    {
      goto LABEL_121;
    }

    v66 = v65;
    v127 = sub_252E36F34();
    v129 = v67;

    v26 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0(v68);
    v69 = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_deviceEntityStore;
    swift_beginAccess();
    v70 = *(v26 + v69);
    if (v70 >> 62)
    {
      v71 = sub_252E378C4();
    }

    else
    {
      v71 = *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v73 = MEMORY[0x277D84F90];
    if (v71)
    {
      v74 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0(v72);
      v26 = sub_252AC11C8(v2);

      if (v26)
      {
        v73 = v26;
      }
    }

    if (v73 >> 62)
    {
      v75 = sub_252E378C4();
      if (!v75)
      {
        goto LABEL_133;
      }
    }

    else
    {
      v75 = *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v75)
      {
        goto LABEL_133;
      }
    }

    v76 = 0;
    v2 = (v73 & 0xFFFFFFFFFFFFFF8);
    while (1)
    {
      if ((v73 & 0xC000000000000001) != 0)
      {
        v77 = MEMORY[0x2530ADF00](v76, v73);
      }

      else
      {
        if (v76 >= *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_93;
        }

        v77 = *(v73 + 8 * v76 + 32);
      }

      v26 = v77;
      v78 = v76 + 1;
      if (__OFADD__(v76, 1))
      {
        goto LABEL_92;
      }

      v79 = [v77 name];
      if (v79)
      {
        v80 = v79;
        v81 = sub_252E36F34();
        v83 = v82;

        if (v81 == v127 && v83 == v129)
        {
LABEL_83:

          goto LABEL_85;
        }

        v85 = sub_252E37DB4();

        if (v85)
        {
LABEL_84:

LABEL_85:
          v86 = 1;
LABEL_134:
          v4 = v128;
          goto LABEL_135;
        }
      }

      else
      {
      }

      ++v76;
      if (v78 == v75)
      {
        goto LABEL_133;
      }
    }
  }

  v129 = v21;
  v23 = v22;
  v125 = sub_252E36F34();
  v127 = v24;

  v26 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0(v25);
  v27 = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_deviceEntityStore;
  swift_beginAccess();
  v28 = *(v26 + v27);
  if (v28 >> 62)
  {
    goto LABEL_94;
  }

  for (i = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_252E378C4())
  {

    v31 = MEMORY[0x277D84F90];
    if (i)
    {
      v32 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0(v30);
      v33 = sub_252AC0F68(v2);

      if (v33)
      {
        v31 = v33;
      }
    }

    v122 = v2;
    if (v31 >> 62)
    {
      break;
    }

    v34 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v34)
    {
      goto LABEL_96;
    }

LABEL_21:
    v26 = 0;
    while (1)
    {
      if ((v31 & 0xC000000000000001) != 0)
      {
        v35 = MEMORY[0x2530ADF00](v26, v31);
      }

      else
      {
        if (v26 >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_89;
        }

        v35 = *(v31 + 8 * v26 + 32);
      }

      v36 = v35;
      v37 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      v38 = [v35 name];
      if (v38)
      {
        v2 = v38;
        v39 = sub_252E36F34();
        v41 = v40;

        if (v39 == v126 && v41 == v129)
        {

          goto LABEL_87;
        }

        v43 = sub_252E37DB4();

        if (v43)
        {

LABEL_87:
          LODWORD(v129) = 0;
          goto LABEL_97;
        }
      }

      else
      {
      }

      ++v26;
      if (v37 == v34)
      {
        goto LABEL_96;
      }
    }

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
    ;
  }

  v34 = sub_252E378C4();
  if (v34)
  {
    goto LABEL_21;
  }

LABEL_96:

  LODWORD(v129) = 1;
LABEL_97:
  v88 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0(v87);
  v89 = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_deviceEntityStore;
  swift_beginAccess();
  v90 = *(v88 + v89);
  v91 = v122;
  if (v90 >> 62)
  {
LABEL_124:
    v92 = sub_252E378C4();
  }

  else
  {
    v92 = *((v90 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v94 = MEMORY[0x277D84F90];
  if (v92)
  {
    v95 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0(v93);
    v96 = sub_252AC11C8(v91);

    if (v96)
    {
      v94 = v96;
    }
  }

  if (!(v94 >> 62))
  {
    v97 = *((v94 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v97)
    {
      goto LABEL_104;
    }

LABEL_126:

    v4 = v128;
LABEL_127:
    v86 = 0;
    goto LABEL_135;
  }

  v97 = sub_252E378C4();
  if (!v97)
  {
    goto LABEL_126;
  }

LABEL_104:
  v88 = 0;
  while (2)
  {
    if ((v94 & 0xC000000000000001) != 0)
    {
      v98 = MEMORY[0x2530ADF00](v88, v94);
    }

    else
    {
      if (v88 >= *((v94 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_123;
      }

      v98 = *(v94 + 8 * v88 + 32);
    }

    v91 = v98;
    v99 = (v88 + 1);
    if (__OFADD__(v88, 1))
    {
      __break(1u);
LABEL_123:
      __break(1u);
      goto LABEL_124;
    }

    v100 = [v98 name];
    if (!v100)
    {

LABEL_106:
      ++v88;
      if (v99 == v97)
      {
        goto LABEL_126;
      }

      continue;
    }

    break;
  }

  v101 = v100;
  v102 = sub_252E36F34();
  v104 = v103;

  if (v102 != v125 || v104 != v127)
  {
    v106 = sub_252E37DB4();

    if (v106)
    {

      goto LABEL_120;
    }

    goto LABEL_106;
  }

LABEL_120:
  v4 = v128;
  if (v129)
  {
    goto LABEL_127;
  }

LABEL_121:
  v86 = 1;
LABEL_135:
  if (qword_27F53F4B0 != -1)
  {
    swift_once();
  }

  v107 = __swift_project_value_buffer(v4, qword_27F544CB8);
  v108 = v130;
  (*(v130 + 16))(v131, v107, v4);
  v132 = 0;
  v133 = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000014, 0x8000000252E98B00);
  v109 = v123;
  v17 = v123 & v86;
  if ((v123 & v86) != 0)
  {
    v110 = 1702195828;
  }

  else
  {
    v110 = 0x65736C6166;
  }

  if ((v123 & v86) != 0)
  {
    v111 = 0xE400000000000000;
  }

  else
  {
    v111 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v110, v111);

  MEMORY[0x2530AD570](0xD00000000000001ALL, 0x8000000252E98B20);
  if (v109)
  {
    v112 = 1702195828;
  }

  else
  {
    v112 = 0x65736C6166;
  }

  if (v109)
  {
    v113 = 0xE400000000000000;
  }

  else
  {
    v113 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v112, v113);

  MEMORY[0x2530AD570](0xD000000000000019, 0x8000000252E98B40);
  if (v86)
  {
    v114 = 1702195828;
  }

  else
  {
    v114 = 0x65736C6166;
  }

  if (v86)
  {
    v115 = 0xE400000000000000;
  }

  else
  {
    v115 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v114, v115);

  MEMORY[0x2530AD570](0x3A7265746C69660ALL, 0xE900000000000020);
  v116 = [v124 description];
  v117 = sub_252E36F34();
  v119 = v118;

  MEMORY[0x2530AD570](v117, v119);

  v120 = v131;
  sub_252CC3D90(v132, v133, 0xD000000000000075, 0x8000000252E6B7C0);

  (*(v108 + 8))(v120, v128);
  return v17 & 1;
}

uint64_t sub_252D696D4(uint64_t a1)
{
  v2 = v1;
  v17 = sub_252E32E24();
  v18 = v4;
  v16 = &v17;
  v5 = sub_2529ED970(sub_25296A69C, v15, a1);

  if (v5 & 1) != 0 || ((v6 = *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier + 8)) == 0 ? (v8 = 0xE400000000000000, v7 = 1701736302) : (v7 = *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier), v8 = *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier + 8)), v17 = v7, v18 = v8, MEMORY[0x28223BE20](v6), v14 = &v17, , v9 = sub_2529ED970(sub_25296A724, v13, a1), , (v9))
  {
    v10 = 1;
  }

  else
  {
    v17 = *(v2 + OBJC_IVAR____TtC22HomeAutomationInternal15MatterAccessory_matterNodeID);
    v17 = sub_252E37D94();
    v18 = v11;
    MEMORY[0x28223BE20](v17);
    v14 = &v17;
    v10 = sub_2529ED970(sub_25296A724, v13, a1);
  }

  return v10 & 1;
}

uint64_t sub_252D69894(uint64_t a1)
{
  v2 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(a1);
  sub_252929E74((v2 + 192), v6);

  v3 = v7;
  v4 = v8;
  __swift_project_boxed_opaque_existential_1(v6, v7);
  (*(v4 + 32))(v1, v3, v4);
  return __swift_destroy_boxed_opaque_existential_1(v6);
}

unint64_t sub_252D69924()
{
  v1 = v0;
  v2 = sub_252E32E84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v77 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93[0] = 0;
  v93[1] = 0xE000000000000000;
  sub_252E379F4();

  strcpy(v93, "matterNodeID: ");
  HIBYTE(v93[1]) = -18;
  v89 = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal15MatterAccessory_matterNodeID);
  v6 = sub_252E37D94();
  MEMORY[0x2530AD570](v6);

  v7 = v93[1];
  v86 = v93[0];
  strcpy(v93, "accessoryID: ");
  HIWORD(v93[1]) = -4864;
  v8 = [*(v0 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate) uniqueIdentifier];
  sub_252E32E64();

  v9 = sub_252E32E24();
  v11 = v10;
  (*(v3 + 8))(v5, v2);
  MEMORY[0x2530AD570](v9, v11);

  v13 = v93[0];
  v12 = v93[1];
  strcpy(v93, "deviceType: ");
  BYTE5(v93[1]) = 0;
  HIWORD(v93[1]) = -5120;
  v14 = sub_252D6841C();
  v15 = HomeDeviceType.description.getter(v14);
  MEMORY[0x2530AD570](v15);

  v17 = v93[1];
  v84 = v93[0];
  v18 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0(v16);
  v19 = &unk_27F542000;
  v20 = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_deviceEntityStore;
  swift_beginAccess();
  v21 = *&v18[v20];
  if (v21 >> 62)
  {
LABEL_32:
    v22 = sub_252E378C4();
  }

  else
  {
    v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v85 = v17;
  if (v22)
  {
    v23 = 0xE000000000000000;
    if (sub_252D6841C() == 46)
    {
      v89 = 0;
      v90 = 0xE000000000000000;
      sub_252E379F4();

      v87 = 0xD000000000000012;
      v88 = 0x8000000252E98A60;
      v25 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0(v24);
      v26 = *(v19 + 3432);
      swift_beginAccess();
      v27 = *&v25[v26];
      v81 = v7;
      if (v27 >> 62)
      {
        v28 = sub_252E378C4();
      }

      else
      {
        v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v19 = MEMORY[0x277D84F90];
      if (v28)
      {
        v30 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0(v29);
        v31 = sub_252AC0F68(v1);

        if (v31)
        {
          v19 = v31;
        }
      }

      v82 = v1;
      v79 = v13;
      v80 = v12;
      v1 = v19 & 0xFFFFFFFFFFFFFF8;
      if (v19 >> 62)
      {
        v18 = sub_252E378C4();
        v17 = &off_279711000;
        if (v18)
        {
LABEL_12:
          v13 = 0;
          v12 = v19 & 0xC000000000000001;
          v32 = MEMORY[0x277D84F90];
          do
          {
            v33 = v13;
            while (1)
            {
              if (v12)
              {
                v34 = MEMORY[0x2530ADF00](v33, v19);
              }

              else
              {
                if (v33 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_31;
                }

                v34 = *(v19 + 8 * v33 + 32);
              }

              v7 = v34;
              v13 = (v33 + 1);
              if (__OFADD__(v33, 1))
              {
                __break(1u);
LABEL_31:
                __break(1u);
                goto LABEL_32;
              }

              v35 = [v34 name];
              if (v35)
              {
                break;
              }

              ++v33;
              if (v13 == v18)
              {
                goto LABEL_36;
              }
            }

            v36 = v35;
            v37 = sub_252E36F34();
            v83 = v38;

            v7 = v37;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v32 = sub_2529F7A80(0, *(v32 + 2) + 1, 1, v32);
            }

            v40 = *(v32 + 2);
            v39 = *(v32 + 3);
            if (v40 >= v39 >> 1)
            {
              v32 = sub_2529F7A80((v39 > 1), v40 + 1, 1, v32);
            }

            *(v32 + 2) = v40 + 1;
            v41 = &v32[16 * v40];
            v42 = v83;
            *(v41 + 4) = v7;
            *(v41 + 5) = v42;
          }

          while (v13 != v18);
LABEL_36:

          v45 = MEMORY[0x2530AD730](v32, MEMORY[0x277D837D0]);
          v47 = v46;

          MEMORY[0x2530AD570](v45, v47);

          v48 = v87;
          v49 = v88;
          v87 = 0;
          v88 = 0xE000000000000000;
          sub_252E379F4();

          v91 = 0xD000000000000011;
          v92 = 0x8000000252E98A80;
          v51 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0(v50);
          v52 = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_deviceEntityStore;
          swift_beginAccess();
          v53 = *&v51[v52];
          v77 = v49;
          v78 = v48;
          if (v53 >> 62)
          {
LABEL_61:
            v54 = sub_252E378C4();
          }

          else
          {
            v54 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v56 = MEMORY[0x277D84F90];
          if (v54)
          {
            v57 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0(v55);
            v58 = sub_252AC11C8(v82);

            if (v58)
            {
              v56 = v58;
            }
          }

          if (v56 >> 62)
          {
            v51 = sub_252E378C4();
            if (v51)
            {
LABEL_43:
              v59 = 0;
              v60 = MEMORY[0x277D84F90];
              do
              {
                v61 = v59;
                while (1)
                {
                  if ((v56 & 0xC000000000000001) != 0)
                  {
                    v62 = MEMORY[0x2530ADF00](v61, v56);
                  }

                  else
                  {
                    if (v61 >= *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10))
                    {
                      goto LABEL_60;
                    }

                    v62 = *(v56 + 8 * v61 + 32);
                  }

                  v63 = v62;
                  v59 = (v61 + 1);
                  if (__OFADD__(v61, 1))
                  {
                    __break(1u);
LABEL_60:
                    __break(1u);
                    goto LABEL_61;
                  }

                  v64 = [v62 name];
                  if (v64)
                  {
                    break;
                  }

                  ++v61;
                  if (v59 == v51)
                  {
                    goto LABEL_64;
                  }
                }

                v65 = v64;
                v83 = sub_252E36F34();
                v67 = v66;

                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v60 = sub_2529F7A80(0, *(v60 + 2) + 1, 1, v60);
                }

                v69 = *(v60 + 2);
                v68 = *(v60 + 3);
                if (v69 >= v68 >> 1)
                {
                  v60 = sub_2529F7A80((v68 > 1), v69 + 1, 1, v60);
                }

                *(v60 + 2) = v69 + 1;
                v70 = &v60[16 * v69];
                *(v70 + 4) = v83;
                *(v70 + 5) = v67;
              }

              while (v59 != v51);
              goto LABEL_64;
            }
          }

          else
          {
            v51 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v51)
            {
              goto LABEL_43;
            }
          }

          v60 = MEMORY[0x277D84F90];
LABEL_64:

          v71 = MEMORY[0x2530AD730](v60, MEMORY[0x277D837D0]);
          v73 = v72;

          MEMORY[0x2530AD570](v71, v73);

          MEMORY[0x2530AD570](32, 0xE100000000000000);
          v23 = v92;
          v83 = v91;
          v7 = v81;
          v1 = v82;
          v13 = v79;
          v12 = v80;
          v44 = v77;
          v43 = v78;
          goto LABEL_65;
        }
      }

      else
      {
        v18 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v17 = &off_279711000;
        if (v18)
        {
          goto LABEL_12;
        }
      }

      v32 = MEMORY[0x277D84F90];
      goto LABEL_36;
    }

    v83 = 0;
    v43 = 0;
    v44 = 0xE000000000000000;
  }

  else
  {
    v83 = 0;
    v43 = 0;
    v23 = 0xE000000000000000;
    v44 = 0xE000000000000000;
  }

LABEL_65:
  v91 = 0;
  v92 = 0xE000000000000000;
  sub_252E379F4();
  v75 = *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
  v74 = *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

  v91 = v75;
  v92 = v74;
  MEMORY[0x2530AD570](2128672, 0xE300000000000000);
  MEMORY[0x2530AD570](v86, v7);

  MEMORY[0x2530AD570](8236, 0xE200000000000000);
  MEMORY[0x2530AD570](v13, v12);

  MEMORY[0x2530AD570](8236, 0xE200000000000000);
  MEMORY[0x2530AD570](v84, v85);

  MEMORY[0x2530AD570](32, 0xE100000000000000);
  MEMORY[0x2530AD570](v43, v44);

  MEMORY[0x2530AD570](v83, v23);

  MEMORY[0x2530AD570](125, 0xE100000000000000);
  return v91;
}

uint64_t sub_252D6A178()
{
  v1 = v0;
  v2 = sub_252E32E84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v95 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [*(v1 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate) uniqueIdentifier];
  sub_252E32E64();

  v7 = sub_252E32E24();
  v9 = v8;
  (*(v3 + 8))(v5, v2);
  v105[0] = 0;
  v105[1] = 0xE000000000000000;
  sub_252E379F4();

  strcpy(v105, "matterNodeID: ");
  HIBYTE(v105[1]) = -18;
  v101[0] = *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal15MatterAccessory_matterNodeID);
  v10 = sub_252E37D94();
  MEMORY[0x2530AD570](v10);

  MEMORY[0x2530AD570](0x656369766564202CLL, 0xEE00203A65707954);
  v11 = sub_252D6841C();
  v12 = HomeDeviceType.description.getter(v11);
  MEMORY[0x2530AD570](v12);

  MEMORY[0x2530AD570](0x737365636361202CLL, 0xEF203A444979726FLL);
  MEMORY[0x2530AD570](v7, v9);

  v13 = sub_252AD24A4(1, 8224, 0xE200000000000000);
  v15 = v14;

  v16 = sub_2529F7A80(0, 1, 1, MEMORY[0x277D84F90]);
  v17 = v16;
  v19 = *(v16 + 2);
  v18 = *(v16 + 3);
  v20 = (v19 + 1);
  if (v19 >= v18 >> 1)
  {
    goto LABEL_29;
  }

  while (1)
  {
    *(v17 + 2) = v20;
    v21 = &v17[16 * v19];
    *(v21 + 4) = v13;
    *(v21 + 5) = v15;
    v22 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0(v16);
    v20 = &qword_27F542000;
    v23 = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_deviceEntityStore;
    swift_beginAccess();
    v24 = *&v22[v23];
    if (v24 >> 62)
    {
      v44 = sub_252E378C4();

      if (!v44)
      {
        goto LABEL_71;
      }
    }

    else
    {
      v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (!v25)
      {
        goto LABEL_71;
      }
    }

    if (sub_252D6841C() != 46)
    {
      goto LABEL_71;
    }

    v26 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0(46);
    v27 = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_deviceEntityStore;
    swift_beginAccess();
    v28 = *&v26[v27];
    if (v28 >> 62)
    {
      v15 = sub_252E378C4();
    }

    else
    {
      v15 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v30 = MEMORY[0x277D84F90];
    if (v15)
    {
      v15 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0(v29);
      v31 = sub_252AC0F68(v1);

      if (v31)
      {
        v30 = v31;
      }
    }

    if (v30 >> 62)
    {
      break;
    }

    v32 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v95 = v17;
    v96 = v1;
    if (!v32)
    {
      goto LABEL_34;
    }

LABEL_12:
    v17 = 0;
    v97 = v30 & 0xFFFFFFFFFFFFFF8;
    v98 = v30 & 0xC000000000000001;
    v19 = MEMORY[0x277D84F90];
    v13 = MEMORY[0x277D846A8];
    while (1)
    {
      if (v98)
      {
        v33 = MEMORY[0x2530ADF00](v17, v30);
      }

      else
      {
        v18 = *(v97 + 16);
        if (v17 >= v18)
        {
          goto LABEL_28;
        }

        v33 = *(v30 + 8 * v17 + 32);
      }

      v34 = v33;
      v1 = (v17 + 1);
      if (__OFADD__(v17, 1))
      {
        break;
      }

      v99 = 0;
      v100 = 0xE000000000000000;
      sub_252E379F4();
      v35 = [v34 name];
      if (v35)
      {
        v36 = v35;
        v37 = sub_252E36F34();
        v39 = v38;
      }

      else
      {
        v39 = 0xE600000000000000;
        v37 = 0x29656E6F6E28;
      }

      MEMORY[0x2530AD570](v37, v39);

      MEMORY[0x2530AD570](0x4961657261207B20, 0xEB00000000203A44);
      [v34 areaID];
      sub_252E37374();
      MEMORY[0x2530AD570](0x3A444970616D202CLL, 0xE900000000000020);
      [v34 mapID];
      sub_252E37374();
      MEMORY[0x2530AD570](32032, 0xE200000000000000);
      v15 = sub_252AD24A4(1, 8224, 0xE200000000000000);
      v41 = v40;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_2529F7A80(0, *(v19 + 2) + 1, 1, v19);
      }

      v20 = *(v19 + 2);
      v42 = *(v19 + 3);
      if (v20 >= v42 >> 1)
      {
        v19 = sub_2529F7A80((v42 > 1), v20 + 1, 1, v19);
      }

      *(v19 + 2) = v20 + 1;
      v43 = &v19[16 * v20];
      *(v43 + 4) = v15;
      *(v43 + 5) = v41;
      ++v17;
      if (v1 == v32)
      {
        goto LABEL_35;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    v16 = sub_2529F7A80((v18 > 1), v20, 1, v17);
    v17 = v16;
  }

  v32 = sub_252E378C4();
  v95 = v17;
  v96 = v1;
  if (v32)
  {
    goto LABEL_12;
  }

LABEL_34:
  v19 = MEMORY[0x277D84F90];
LABEL_35:

  v46 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0(v45);
  v47 = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_deviceEntityStore;
  swift_beginAccess();
  v48 = *(v46 + v47);
  if (v48 >> 62)
  {
    goto LABEL_59;
  }

  v49 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (2)
  {
    v50 = v96;

    v52 = MEMORY[0x277D84F90];
    if (v49)
    {
      v53 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0(v51);
      v54 = sub_252AC11C8(v50);

      if (v54)
      {
        v52 = v54;
      }
    }

    if (!(v52 >> 62))
    {
      v55 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v55)
      {
        break;
      }

      goto LABEL_42;
    }

    v55 = sub_252E378C4();
    if (v55)
    {
LABEL_42:
      v46 = 0;
      v97 = v52 & 0xFFFFFFFFFFFFFF8;
      v98 = v52 & 0xC000000000000001;
      v56 = MEMORY[0x277D84F90];
      while (1)
      {
        if (v98)
        {
          v57 = MEMORY[0x2530ADF00](v46, v52);
        }

        else
        {
          if (v46 >= *(v97 + 16))
          {
            goto LABEL_58;
          }

          v57 = *(v52 + 8 * v46 + 32);
        }

        v58 = v57;
        v59 = (v46 + 1);
        if (__OFADD__(v46, 1))
        {
          break;
        }

        v103 = 0;
        v104 = 0xE000000000000000;
        sub_252E379F4();
        v60 = [v58 name];
        if (v60)
        {
          v61 = v60;
          v62 = sub_252E36F34();
          v64 = v63;
        }

        else
        {
          v64 = 0xE600000000000000;
          v62 = 0x29656E6F6E28;
        }

        MEMORY[0x2530AD570](v62, v64);

        MEMORY[0x2530AD570](0x444970616D207B20, 0xEA0000000000203ALL);
        [v58 mapID];
        sub_252E37374();
        MEMORY[0x2530AD570](32032, 0xE200000000000000);
        v65 = sub_252AD24A4(1, 8224, 0xE200000000000000);
        v67 = v66;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v56 = sub_2529F7A80(0, *(v56 + 2) + 1, 1, v56);
        }

        v69 = *(v56 + 2);
        v68 = *(v56 + 3);
        if (v69 >= v68 >> 1)
        {
          v56 = sub_2529F7A80((v68 > 1), v69 + 1, 1, v56);
        }

        *(v56 + 2) = v69 + 1;
        v70 = &v56[16 * v69];
        *(v70 + 4) = v65;
        *(v70 + 5) = v67;
        ++v46;
        if (v59 == v55)
        {
          goto LABEL_62;
        }
      }

      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      v49 = sub_252E378C4();
      continue;
    }

    break;
  }

  v56 = MEMORY[0x277D84F90];
LABEL_62:

  if (!*(v19 + 2))
  {

    v17 = v95;
    v1 = v96;
    if (*(v56 + 2))
    {
      goto LABEL_66;
    }

    goto LABEL_70;
  }

  v103 = 0;
  v104 = 0xE000000000000000;
  sub_252E379F4();

  v103 = 0xD000000000000010;
  v104 = 0x8000000252E98AA0;
  v102 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540480, &qword_252E3C910);
  sub_2529508A0();
  v71 = sub_252E36EA4();
  v73 = v72;

  MEMORY[0x2530AD570](v71, v73);

  v74 = sub_252AD24A4(1, 8224, 0xE200000000000000);
  v76 = v75;

  v17 = v95;
  v1 = v96;
  v78 = *(v95 + 2);
  v77 = *(v95 + 3);
  if (v78 >= v77 >> 1)
  {
    v17 = sub_2529F7A80((v77 > 1), v78 + 1, 1, v95);
  }

  *(v17 + 2) = v78 + 1;
  v79 = &v17[16 * v78];
  *(v79 + 4) = v74;
  *(v79 + 5) = v76;
  if (!*(v56 + 2))
  {
LABEL_70:

    goto LABEL_71;
  }

LABEL_66:
  v103 = 0;
  v104 = 0xE000000000000000;
  sub_252E379F4();

  v103 = 0x6574726F70707573;
  v104 = 0xEF203A7370614D64;
  v102 = v56;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540480, &qword_252E3C910);
  sub_2529508A0();
  v80 = sub_252E36EA4();
  v82 = v81;

  MEMORY[0x2530AD570](v80, v82);

  v83 = sub_252AD24A4(1, 8224, 0xE200000000000000);
  v85 = v84;

  v87 = *(v17 + 2);
  v86 = *(v17 + 3);
  if (v87 >= v86 >> 1)
  {
    v17 = sub_2529F7A80((v86 > 1), v87 + 1, 1, v17);
  }

  *(v17 + 2) = v87 + 1;
  v88 = &v17[16 * v87];
  *(v88 + 4) = v83;
  *(v88 + 5) = v85;
LABEL_71:
  v89 = *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);
  v103 = *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
  v104 = v89;

  MEMORY[0x2530AD570](686880, 0xE300000000000000);
  v102 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540480, &qword_252E3C910);
  sub_2529508A0();
  v90 = sub_252E36EA4();
  v92 = v91;

  MEMORY[0x2530AD570](v90, v92);

  MEMORY[0x2530AD570](32010, 0xE200000000000000);
  v93 = sub_252AD24A4(1, 8224, 0xE200000000000000);

  return v93;
}

uint64_t MatterAccessory.deinit()
{
  v1 = OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier;
  v2 = sub_252E32E84();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t MatterAccessory.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier;
  v2 = sub_252E32E84();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MatterAccessory(uint64_t a1)
{
  result = qword_27F545AB0;
  if (!qword_27F545AB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_252D6B004()
{
  v1 = [objc_allocWithZone(type metadata accessor for ShowHomeIntentResponse()) init];
  v2 = OBJC_IVAR___ShowHomeIntentResponse_code;
  swift_beginAccess();
  *&v1[v2] = 5;
  [v1 setUserActivity_];
  v3 = *(v0 + 8);

  return v3(v1);
}

uint64_t sub_252D6B0B8()
{
  type metadata accessor for ShowHomeIntentDefaultHandleDelegate();

  return swift_allocObject();
}

uint64_t sub_252D6B0E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[15] = a3;
  v4[16] = v3;
  v4[13] = a1;
  v4[14] = a2;
  v5 = sub_252E34014();
  v4[17] = v5;
  v4[18] = *(v5 - 8);
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252D6B1B8, 0, 0);
}

uint64_t sub_252D6B1B8()
{
  v1 = v0[14];
  v2 = swift_allocObject();
  v3 = MEMORY[0x277D84F90];
  v0[21] = v2;
  *(v2 + 16) = v3;
  v4 = (v2 + 16);
  v5 = [v1 userTask];
  if (v5)
  {
    if (v0[15])
    {
      v30 = v5;
      v6 = sub_252C2B064(v5);
      v7 = v6;
      v8 = v6 & 0xFFFFFFFFFFFFFF8;
      if (v6 >> 62)
      {
LABEL_30:
        v9 = sub_252E378C4();
      }

      else
      {
        v9 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v10 = 0;
      v31 = MEMORY[0x277D84F90];
      while (v9 != v10)
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v11 = MEMORY[0x2530ADF00](v10, v7);
        }

        else
        {
          if (v10 >= *(v8 + 16))
          {
            goto LABEL_29;
          }

          v11 = *(v7 + 8 * v10 + 32);
        }

        v12 = v11;
        v13 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          __break(1u);
LABEL_29:
          __break(1u);
          goto LABEL_30;
        }

        v14 = sub_252DA124C(0);

        ++v10;
        if (v14)
        {
          MEMORY[0x2530AD700](v15);
          if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_252E372A4();
          }

          sub_252E372D4();
          v31 = v3;
          v10 = v13;
        }
      }

      v4 = (v2 + 16);
      v16 = v31;
    }

    else
    {

      v16 = MEMORY[0x277D84F90];
    }

    *v4 = v16;
  }

  v17 = v0[15];
  v18 = v0[16];
  v19 = swift_allocObject();
  v0[22] = v19;
  *(v19 + 16) = v18;
  *(v19 + 24) = v2;
  swift_retain_n();

  if (v17)
  {
    v20 = *(v18 + 48);
    v21 = v17;
    v22 = *__swift_project_boxed_opaque_existential_1((v18 + 24), v20);
    v23 = swift_task_alloc();
    v0[23] = v23;
    *v23 = v0;
    v23[1] = sub_252D6B5E0;

    return sub_252C0D18C(0, v22, v4);
  }

  else
  {

    if (qword_27F53F4D0 != -1)
    {
      swift_once();
    }

    v25 = v0[16];
    v26 = sub_252E36AD4();
    __swift_project_value_buffer(v26, qword_27F544D18);
    sub_252CC4050(0xD00000000000003CLL, 0x8000000252E6B3F0, 0xD00000000000008FLL, 0x8000000252E6B430, 0xD000000000000042, 0x8000000252E6B4C0, 205);
    v27 = *(v25 + 96);
    __swift_project_boxed_opaque_existential_1((v25 + 72), v27);
    sub_252AD7CC4();
    v28 = swift_task_alloc();
    v0[29] = v28;
    *v28 = v0;
    v28[1] = sub_252A9A110;
    v29 = v0[20];

    return sub_252BDB88C((v0 + 2), &unk_252E5E2F0, v19, v29, 0, 0, 0, v27);
  }
}

uint64_t sub_252D6B5E0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 192) = a1;
  *(v3 + 200) = v1;

  if (v1)
  {
    v4 = sub_252B842B0;
  }

  else
  {
    v4 = sub_252D6B6F4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_252D6B6F4()
{
  v1 = *(v0 + 120);

  v2 = swift_task_alloc();
  *(v0 + 208) = v2;
  *v2 = v0;
  v2[1] = sub_252A99F6C;

  return sub_252E174F4(v1);
}

uint64_t sub_252D6B794(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_252D6B7B4, 0, 0);
}

uint64_t sub_252D6B7B4()
{
  v1 = v0[3];
  v2 = *__swift_project_boxed_opaque_existential_1((v0[2] + 24), *(v0[2] + 48));
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_252A9A974;

  return sub_252C0D18C(0, v2, v1 + 16);
}

uint64_t sub_252D6B8A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25293B808;

  return sub_252D6B0E8(a1, a2, a3);
}

void *sub_252D6B954@<X0>(const void *a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for GetRotationDirectionResponseHandler();
  swift_allocObject();
  memcpy(__dst, a1, sizeof(__dst));
  result = sub_252BE97AC(__dst);
  *a2 = result;
  return result;
}

BOOL sub_252D6B9B8(void *a1)
{
  v2 = [a1 userTask];
  if (!v2)
  {
LABEL_7:
    sub_252C515AC();
    return 0;
  }

  v3 = v2;
  if ([v2 taskType] == 4)
  {

    goto LABEL_5;
  }

  v4 = [v3 taskType];

  if (v4 == 5)
  {
LABEL_5:
    v5 = [a1 userTask];
    if (v5)
    {
      v6 = v5;
      v7 = [v5 attribute];

      return v7 == 12;
    }

    goto LABEL_7;
  }

  return 0;
}

uint64_t sub_252D6BA78()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_25294B958;

  return sub_252D6B794(v2, v3);
}

uint64_t sub_252D6BB10()
{
  type metadata accessor for ControlHomeIntentResponse.Builder();
  v1 = swift_allocObject();
  v2 = MEMORY[0x277D84F90];
  v3 = *(v0 + 24);
  *(v1 + 16) = *(v0 + 16);
  *(v1 + 24) = v2;
  v61 = v2;
  if (v3 >> 62)
  {
    goto LABEL_43;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:

  if (v4)
  {
    v5 = 0;
    v50 = v3 & 0xFFFFFFFFFFFFFF8;
    v51 = v3 & 0xC000000000000001;
    v48 = v3;
    v49 = v3 + 32;
    v6 = &off_279711000;
    v47 = v4;
    do
    {
      if (v51)
      {
        v53 = MEMORY[0x2530ADF00](v5, v3);
        v7 = __OFADD__(v5, 1);
        v8 = v5 + 1;
        if (v7)
        {
          goto LABEL_41;
        }
      }

      else
      {
        if (v5 >= *(v50 + 16))
        {
          goto LABEL_42;
        }

        v53 = *(v49 + 8 * v5);

        v7 = __OFADD__(v5, 1);
        v8 = v5 + 1;
        if (v7)
        {
          goto LABEL_41;
        }
      }

      v52 = v8;
      type metadata accessor for HomeEntityResponse.Builder();
      v9 = swift_allocObject();
      type metadata accessor for HomeEntity.Builder();
      swift_allocObject();
      v10.n128_f64[0] = HomeEntity.Builder.init()();
      v12 = (*(*v11 + 448))(v10);

      *(v9 + 16) = v12;
      v13 = MEMORY[0x277D84F90];
      *(v9 + 24) = MEMORY[0x277D84F90];
      if (*(v53 + 16))
      {

        v14 = sub_252D6C61C();

        v15 = *(v9 + 16);
        *(v9 + 16) = v14;
        v13 = MEMORY[0x277D84F90];
      }

      swift_beginAccess();
      v16 = *(v53 + 24);
      v60 = v13;
      if (v16 >> 62)
      {
        v17 = sub_252E378C4();
      }

      else
      {
        v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v17)
      {
        v3 = 0;
        v56 = v16 & 0xFFFFFFFFFFFFFF8;
        v57 = v16 & 0xC000000000000001;
        v55 = v16;
        v54 = v17;
        while (1)
        {
          if (v57)
          {
            v18 = MEMORY[0x2530ADF00](v3, v16);
            v19 = v3 + 1;
            if (__OFADD__(v3, 1))
            {
              goto LABEL_39;
            }
          }

          else
          {
            if (v3 >= *(v56 + 16))
            {
              goto LABEL_40;
            }

            v18 = *(v16 + 8 * v3 + 32);

            v19 = v3 + 1;
            if (__OFADD__(v3, 1))
            {
LABEL_39:
              __break(1u);
LABEL_40:
              __break(1u);
LABEL_41:
              __break(1u);
LABEL_42:
              __break(1u);
LABEL_43:
              v4 = sub_252E378C4();
              goto LABEL_3;
            }
          }

          v20 = type metadata accessor for HomeUserTask();
          v21 = objc_allocWithZone(v20);
          v22 = sub_252E36F04();
          v23 = [v21 v6[226]];

          v24 = v23;
          [v24 setTaskType_];
          [v24 setAttribute_];
          [v24 setValue_];

          v25 = *(v18 + 16);
          v59 = *(v18 + 24);
          if (v25)
          {
            v26 = v6;
            v27 = v25[2];
            v58 = v25[3];
            swift_beginAccess();
            if (v25[4])
            {

              v28 = sub_252D6CDCC();
            }

            else
            {

              v28 = 0;
            }

            v29 = objc_allocWithZone(v20);
            v30 = sub_252E36F04();
            v31 = [v29 v26 + 886];

            v32 = v31;
            [v32 setTaskType_];
            [v32 setAttribute_];
            [v32 setValue_];

            v6 = v26;
            v24 = v32;
          }

          v33 = objc_allocWithZone(type metadata accessor for HomeUserTaskResponse());
          v34 = v24;
          v35 = sub_252E36F04();
          v36 = [v33 v6[226]];

          v37 = v36;
          [v37 setTaskOutcome_];
          [v37 setUserTask_];

          MEMORY[0x2530AD700](v38);
          if (*(v60 + 16) >= *(v60 + 24) >> 1)
          {
            sub_252E372A4();
          }

          sub_252E372D4();
          ++v3;
          v16 = v55;
          if (v19 == v54)
          {
            v13 = v60;
            break;
          }
        }
      }

      v39 = sub_25297D0C0(v13);

      (*(*v39 + 192))(v40);

      MEMORY[0x2530AD700](v41);
      if (*(v61 + 16) >= *(v61 + 24) >> 1)
      {
        sub_252E372A4();
      }

      sub_252E372D4();
      v3 = v48;
      v5 = v52;
    }

    while (v52 != v47);
    v42 = v61;
  }

  else
  {
    v42 = MEMORY[0x277D84F90];
  }

  v43 = sub_25297D0C0(v42);

  v45 = (*(*v43 + 176))(v44);

  return v45;
}

uint64_t sub_252D6C15C()
{
  type metadata accessor for HomeEntityResponse.Builder();
  v1 = swift_allocObject();
  type metadata accessor for HomeEntity.Builder();
  swift_allocObject();
  v2.n128_f64[0] = HomeEntity.Builder.init()();
  v4 = (*(*v3 + 448))(v2);

  v5 = MEMORY[0x277D84F90];
  *(v1 + 16) = v4;
  *(v1 + 24) = v5;
  if (*(v0 + 16))
  {

    v6 = sub_252D6C61C();

    *(v1 + 16) = v6;
  }

  swift_beginAccess();
  v7 = *(v0 + 24);
  v44 = v5;
  if (v7 >> 62)
  {
    goto LABEL_27;
  }

  v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:

  if (v8)
  {
    v9 = 0;
    v40 = v7 & 0xFFFFFFFFFFFFFF8;
    v41 = v7 & 0xC000000000000001;
    v10 = &off_279711000;
    v38 = v7;
    v39 = v8;
    while (1)
    {
      if (v41)
      {
        v11 = MEMORY[0x2530ADF00](v9, v7);
        v12 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_25;
        }
      }

      else
      {
        if (v9 >= *(v40 + 16))
        {
          goto LABEL_26;
        }

        v11 = *(v7 + 8 * v9 + 32);

        v12 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
LABEL_25:
          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          v8 = sub_252E378C4();
          goto LABEL_5;
        }
      }

      v13 = v7;
      v14 = type metadata accessor for HomeUserTask();
      v15 = objc_allocWithZone(v14);
      v16 = sub_252E36F04();
      v17 = v10;
      v18 = [v15 v10[226]];

      v19 = v18;
      [v19 setTaskType_];
      [v19 setAttribute_];
      [v19 setValue_];

      v20 = *(v11 + 16);
      v43 = *(v11 + 24);
      if (v20)
      {
        v21 = v20[2];
        v42 = v20[3];
        swift_beginAccess();
        if (v20[4])
        {

          v22 = sub_252D6CDCC();
        }

        else
        {

          v22 = 0;
        }

        v23 = objc_allocWithZone(v14);
        v24 = sub_252E36F04();
        v25 = [v23 v17 + 886];

        v26 = v25;
        [v26 setTaskType_];
        [v26 setAttribute_];
        [v26 setValue_];

        v19 = v26;
        v7 = v38;
      }

      else
      {
        v7 = v13;
      }

      v27 = objc_allocWithZone(type metadata accessor for HomeUserTaskResponse());
      v28 = v19;
      v29 = sub_252E36F04();
      v30 = [v27 v17 + 886];

      v31 = v30;
      [v31 setTaskOutcome_];
      [v31 setUserTask_];

      MEMORY[0x2530AD700](v32);
      v10 = v17;
      if (*(v44 + 16) >= *(v44 + 24) >> 1)
      {
        sub_252E372A4();
      }

      sub_252E372D4();
      ++v9;
      if (v12 == v39)
      {
        v33 = v44;
        goto LABEL_24;
      }
    }
  }

  v33 = MEMORY[0x277D84F90];
LABEL_24:

  v34 = sub_25297D0C0(v33);

  v36 = (*(*v34 + 192))(v35);

  return v36;
}

uint64_t sub_252D6C61C()
{
  v1 = v0;
  type metadata accessor for HomeEntity.Builder();
  swift_allocObject();
  HomeEntity.Builder.init()();
  v2 = v0[2];
  v3 = v0[3];
  v5 = *(*v4 + 376);

  v6 = v5(v2, v3);

  v7 = (*(*v6 + 384))(v0[4]);

  v8 = v1[5];
  v9 = v1[6];
  v10 = *(*v7 + 392);

  v11 = v10(v8, v9);

  v12 = *(*v11 + 400);

  v14 = v12(v13);

  v15 = (*(*v14 + 408))(v1[8]);

  v16 = v1[9];
  v17 = v1[10];
  v18 = *(*v15 + 416);

  v19 = v18(v16, v17);

  v20 = v1[11];
  v21 = v1[12];
  v22 = *(*v19 + 424);

  v23 = v22(v20, v21);

  v24 = v1[13];
  v25 = v1[14];
  v26 = *(*v23 + 432);

  v27 = v26(v24, v25);

  v28 = *(*v27 + 440);

  v30 = v28(v29);

  v32 = (*(*v30 + 448))(v31);

  return v32;
}

void *sub_252D6CA80(void *a1)
{
  v2 = v1;
  v1[4] = 0;
  v4 = v1 + 4;
  v1[2] = [a1 taskType];
  v1[3] = [a1 attribute];
  v5 = [a1 value];
  if (v5)
  {
    v6 = v5;
    type metadata accessor for MutableAttributeValue();
    v7 = swift_allocObject();
    sub_252D6CC80(v6);

    swift_beginAccess();
    *v4 = v7;
  }

  else
  {
  }

  return v2;
}

id sub_252D6CB58()
{
  v2 = v0[2];
  v1 = v0[3];
  swift_beginAccess();
  if (v0[4])
  {

    v3 = sub_252D6CDCC();
  }

  else
  {
    v3 = 0;
  }

  v4 = objc_allocWithZone(type metadata accessor for HomeUserTask());
  v5 = sub_252E36F04();
  v6 = [v4 initWithIdentifier:0 displayString:v5];

  v7 = v6;
  [v7 setTaskType_];
  [v7 setAttribute_];
  [v7 setValue_];

  return v7;
}

uint64_t sub_252D6CC80(void *a1)
{
  *(v1 + 72) = 0;
  *(v1 + 88) = 0;
  *(v1 + 48) = 0;
  *(v1 + 56) = 0;
  *(v1 + 16) = [a1 type];
  *(v1 + 24) = [a1 BOOLValue];
  [a1 doubleValue];
  *(v1 + 32) = v3;
  *(v1 + 40) = [a1 integerValue];
  v4 = [a1 stringValue];
  if (v4)
  {
    v5 = v4;
    v6 = sub_252E36F34();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *(v1 + 48) = v6;
  *(v1 + 56) = v8;

  *(v1 + 64) = [a1 limitValue];
  v9 = [a1 rangeValue];
  v10 = *(v1 + 72);
  *(v1 + 72) = v9;

  *(v1 + 80) = [a1 unit];
  v11 = [a1 cleaningJob];

  v12 = *(v1 + 88);
  *(v1 + 88) = v11;

  return v1;
}

id sub_252D6CDCC()
{
  v1 = 0;
  v2 = *(v0 + 16);
  if (v2 <= 3)
  {
    switch(v2)
    {
      case 1:
        v14 = *(v0 + 24);
        v15 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
        v16 = sub_252E36F04();
        v17 = [v15 initWithIdentifier:0 displayString:v16];

        v1 = v17;
        [v1 setBoolValue_];
        [v1 setType_];
        break;
      case 2:
        v25 = *(v0 + 32);
        v26 = *(v0 + 80);
        v27 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
        v28 = sub_252E36F04();
        v29 = [v27 initWithIdentifier:0 displayString:v28];

        v1 = v29;
        [v1 setDoubleValue_];
        [v1 setUnit_];
        [v1 setType_];
        break;
      case 3:
        if (*(v0 + 56))
        {
          v7 = *(v0 + 48);
          v8 = *(v0 + 56);
        }

        else
        {
          v7 = 0;
          v8 = 0xE000000000000000;
        }

        type metadata accessor for HomeAttributeValue();
        v38 = *(v0 + 80);

        return HomeAttributeValue.__allocating_init(stringValue:unit:)(v7, v8, v38);
      default:
        return v1;
    }

LABEL_21:

    return v1;
  }

  if (v2 <= 5)
  {
    if (v2 == 4)
    {
      v18 = *(v0 + 40);
      v19 = *(v0 + 80);
      v20 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
      v21 = sub_252E36F04();
      v22 = [v20 initWithIdentifier:0 displayString:v21];

      v1 = v22;
      [v1 setIntegerValue_];
      [v1 setUnit_];
      [v1 setType_];
    }

    else
    {
      v3 = *(v0 + 64);
      v4 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
      v5 = sub_252E36F04();
      v6 = [v4 initWithIdentifier:0 displayString:v5];

      v1 = v6;
      [v1 setType_];
      [v1 setLimitValue_];
    }

    goto LABEL_21;
  }

  if (v2 == 6)
  {
    v23 = *(v0 + 72);
    if (v23)
    {
      v24 = *(v0 + 72);
    }

    else
    {
      v30 = objc_allocWithZone(type metadata accessor for HomeAttributeRange());
      v31 = sub_252E36F04();
      v32 = [v30 initWithIdentifier:0 displayString:v31];

      v24 = v32;
      [v24 setLowerValue_];
      [v24 setUpperValue_];
    }

    v33 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
    v34 = v23;
    v35 = sub_252E36F04();
    v36 = [v33 initWithIdentifier:0 displayString:v35];

    v1 = v36;
    [v1 setType_];
    v11 = v24;
    [v1 setRangeValue_];

    goto LABEL_20;
  }

  if (v2 == 8)
  {
    v9 = *(v0 + 88);
    v10 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
    v11 = v9;
    v12 = sub_252E36F04();
    v13 = [v10 initWithIdentifier:0 displayString:v12];

    v1 = v13;
    [v1 setType_];
    [v1 setCleaningJob_];
LABEL_20:

    goto LABEL_21;
  }

  return v1;
}

uint64_t sub_252D6D224()
{

  return swift_deallocClassInstance();
}

void sub_252D6D290(void *a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  *(v1 + 72) = 0u;
  *(v1 + 88) = 0u;
  *(v1 + 104) = 0u;
  v3 = [a1 homeEntityName];
  if (v3)
  {
    v4 = v3;
    v5 = sub_252E36F34();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *(v1 + 16) = v5;
  *(v1 + 24) = v7;

  *(v1 + 32) = [a1 type];
  v8 = [a1 entityIdentifier];
  if (v8)
  {
    v9 = v8;
    v10 = sub_252E36F34();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  *(v1 + 40) = v10;
  *(v1 + 48) = v12;

  v13 = [a1 deviceTypes];
  if (v13)
  {
    v14 = v13;
    v15 = sub_252E37264();

    v16 = *(v15 + 16);
    if (v16)
    {
      v17 = (v15 + 32);
      v18 = MEMORY[0x277D84F90];
      do
      {
        v19 = *v17++;
        v20 = sub_252E25FC4(v19);
        if ((v21 & 1) == 0)
        {
          v22 = v20;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v18 = sub_2529F7B8C(0, *(v18 + 2) + 1, 1, v18);
          }

          v24 = *(v18 + 2);
          v23 = *(v18 + 3);
          if (v24 >= v23 >> 1)
          {
            v18 = sub_2529F7B8C((v23 > 1), v24 + 1, 1, v18);
          }

          *(v18 + 2) = v24 + 1;
          *&v18[8 * v24 + 32] = v22;
        }

        --v16;
      }

      while (v16);
    }

    else
    {
      v18 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v18 = &unk_2864A1988;
  }

  *(v1 + 56) = v18;
  *(v1 + 64) = [a1 sceneType];
  v25 = [a1 room];
  if (v25)
  {
    v26 = v25;
    v27 = sub_252E36F34();
    v29 = v28;
  }

  else
  {
    v27 = 0;
    v29 = 0;
  }

  *(v1 + 72) = v27;
  *(v1 + 80) = v29;

  v30 = [a1 home];
  if (v30)
  {
    v31 = v30;
    v32 = sub_252E36F34();
    v34 = v33;
  }

  else
  {
    v32 = 0;
    v34 = 0;
  }

  *(v1 + 88) = v32;
  *(v1 + 96) = v34;

  v35 = [a1 group];
  if (v35)
  {
    v36 = v35;
    v37 = sub_252E36F34();
    v39 = v38;
  }

  else
  {
    v37 = 0;
    v39 = 0;
  }

  *(v1 + 104) = v37;
  *(v1 + 112) = v39;

  v40 = [a1 zones];
  if (!v40)
  {
    v46 = MEMORY[0x277D84F90];
LABEL_42:
    *(v1 + 120) = v46;
    return;
  }

  v41 = v40;
  v42 = sub_252E37264();

  v43 = *(v42 + 16);
  if (!v43)
  {
    v46 = MEMORY[0x277D84F90];
LABEL_41:

    goto LABEL_42;
  }

  v44 = 0;
  v45 = (v42 + 40);
  v46 = MEMORY[0x277D84F90];
  while (v44 < *(v42 + 16))
  {
    v48 = *(v45 - 1);
    v47 = *v45;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v46 = sub_2529F7A80(0, *(v46 + 2) + 1, 1, v46);
    }

    v50 = *(v46 + 2);
    v49 = *(v46 + 3);
    if (v50 >= v49 >> 1)
    {
      v46 = sub_2529F7A80((v49 > 1), v50 + 1, 1, v46);
    }

    ++v44;
    *(v46 + 2) = v50 + 1;
    v51 = &v46[16 * v50];
    *(v51 + 4) = v48;
    *(v51 + 5) = v47;
    v45 += 2;
    if (v43 == v44)
    {
      goto LABEL_41;
    }
  }

  __break(1u);
}

unint64_t sub_252D6D668(void *a1)
{
  v2 = v1;
  *(v1 + 16) = 0;
  v4 = [a1 entity];
  if (v4)
  {
    v5 = v4;
    type metadata accessor for MutableHomeEntity();
    swift_allocObject();
    sub_252D6D290(v5);
    v7 = v6;

    *(v2 + 16) = v7;
  }

  v8 = [a1 taskResponses];
  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    v10 = v8;
    type metadata accessor for HomeUserTaskResponse();
    v11 = sub_252E37264();

    v29 = v9;
    if (v11 >> 62)
    {
      goto LABEL_25;
    }

    for (i = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
    {
      v25 = v2;
      v26 = v11;
      v2 = 0;
      v27 = v11 & 0xFFFFFFFFFFFFFF8;
      v28 = v11 & 0xC000000000000001;
      while (1)
      {
        if (v28)
        {
          v13 = MEMORY[0x2530ADF00](v2, v11);
        }

        else
        {
          if (v2 >= *(v27 + 16))
          {
            goto LABEL_24;
          }

          v13 = *(v11 + 8 * v2 + 32);
        }

        v14 = v13;
        v15 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
          break;
        }

        type metadata accessor for MutableHomeUserTaskResponse();
        v16 = swift_allocObject();
        *(v16 + 16) = 0;
        v17 = [v14 userTask];
        if (v17)
        {
          v18 = v17;
          v19 = i;
          type metadata accessor for MutableHomeUserTask();
          v20 = swift_allocObject();
          v20[4] = 0;
          v20[2] = [v18 taskType];
          v20[3] = [v18 attribute];
          v21 = [v18 value];
          if (v21)
          {
            v22 = v21;
            type metadata accessor for MutableAttributeValue();
            v23 = swift_allocObject();
            sub_252D6CC80(v22);

            swift_beginAccess();
            v20[4] = v23;
          }

          else
          {
          }

          *(v16 + 16) = v20;

          i = v19;
          v11 = v26;
        }

        v9 = [v14 taskOutcome];

        *(v16 + 24) = v9;
        MEMORY[0x2530AD700]();
        if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v9 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_252E372A4();
        }

        sub_252E372D4();
        ++v2;
        if (v15 == i)
        {
          v9 = v29;
          v2 = v25;
          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      ;
    }

LABEL_21:
  }

  *(v2 + 24) = v9;
  return v2;
}

uint64_t sub_252D6D96C(char *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR___ControlHomeIntentResponse_code;
  swift_beginAccess();
  *(v2 + 16) = *&a1[v4];
  v5 = [a1 entityResponses];
  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    v7 = v5;
    type metadata accessor for HomeEntityResponse();
    v8 = sub_252E37264();

    v15 = v6;
    if (v8 >> 62)
    {
      goto LABEL_16;
    }

    for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
    {
      v10 = 0;
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
            goto LABEL_15;
          }

          v11 = *(v8 + 8 * v10 + 32);
        }

        v12 = v11;
        v13 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        type metadata accessor for MutableHomeEntityResponse();
        swift_allocObject();
        sub_252D6D668(v12);

        MEMORY[0x2530AD700]();
        if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_252E372A4();
        }

        sub_252E372D4();
        ++v10;
        if (v13 == i)
        {
          v6 = v15;
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      ;
    }

    v6 = MEMORY[0x277D84F90];
LABEL_18:
  }

  *(v2 + 24) = v6;
  return v2;
}

uint64_t AutomationTypeSemantic.init(rawValue:)@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_252E37B74();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_252D6DBCC()
{
  sub_252E37EC4();
  sub_252E37044();
  return sub_252E37F14();
}

uint64_t sub_252D6DC40(uint64_t a1)
{
  sub_252E37EC4();
  sub_252E37044();
  return sub_252E37F14();
}

uint64_t sub_252D6DC94@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_252E37B74();

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_252D6DDC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_252D6DFB8();
  v5 = sub_252D6E00C();
  v6 = sub_252D6E060();

  return MEMORY[0x2821C21F8](a1, a2, v4, v5, v6);
}

unint64_t sub_252D6DE3C()
{
  result = qword_27F545AC0;
  if (!qword_27F545AC0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AutomationTypeSemantic, &type metadata for AutomationTypeSemantic, v0, v1);
    atomic_store(result, &qword_27F545AC0);
  }

  return result;
}

unint64_t sub_252D6DE94()
{
  result = qword_27F545AC8;
  if (!qword_27F545AC8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AutomationTypeSemantic, &type metadata for AutomationTypeSemantic, v0, v1);
    atomic_store(result, &qword_27F545AC8);
  }

  return result;
}

unint64_t sub_252D6DEEC()
{
  result = qword_27F545AD0;
  if (!qword_27F545AD0)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F545AD8, &qword_252E5E5C0);
    result = swift_getWitnessTable(MEMORY[0x277D83988], v3, v0, v1);
    atomic_store(result, &qword_27F545AD0);
  }

  return result;
}

unint64_t sub_252D6DF54()
{
  result = qword_27F545AE0;
  if (!qword_27F545AE0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AutomationTypeSemantic, &type metadata for AutomationTypeSemantic, v0, v1);
    atomic_store(result, &qword_27F545AE0);
  }

  return result;
}

unint64_t sub_252D6DFB8()
{
  result = qword_27F545AE8;
  if (!qword_27F545AE8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AutomationTypeSemantic, &type metadata for AutomationTypeSemantic, v0, v1);
    atomic_store(result, &qword_27F545AE8);
  }

  return result;
}

unint64_t sub_252D6E00C()
{
  result = qword_27F545AF0;
  if (!qword_27F545AF0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AutomationTypeSemantic, &type metadata for AutomationTypeSemantic, v0, v1);
    atomic_store(result, &qword_27F545AF0);
  }

  return result;
}

unint64_t sub_252D6E060()
{
  result = qword_27F545AF8;
  if (!qword_27F545AF8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AutomationTypeSemantic, &type metadata for AutomationTypeSemantic, v0, v1);
    atomic_store(result, &qword_27F545AF8);
  }

  return result;
}

uint64_t sub_252D6E0B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[79] = v3;
  v4[78] = a3;
  v4[77] = a2;
  v4[76] = a1;
  v5 = sub_252E34014();
  v4[80] = v5;
  v4[81] = *(v5 - 8);
  v4[82] = swift_task_alloc();
  v4[83] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252D6E190, 0, 0);
}

uint64_t sub_252D6E190()
{
  v1 = [*(v0 + 616) userTask];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 taskType];

    v4 = v3 == 2;
    v5 = *(v0 + 624);
    if (!v5)
    {
      goto LABEL_19;
    }
  }

  else
  {
    sub_252C515AC();
    v4 = 0;
    v5 = *(v0 + 624);
    if (!v5)
    {
LABEL_19:
      v16 = 0;
      v6 = 0;
      goto LABEL_20;
    }
  }

  v6 = [v5 entityResponses];
  if (!v6)
  {
    v16 = 0;
LABEL_20:
    v20 = 0;
    goto LABEL_21;
  }

  type metadata accessor for HomeEntityResponse();
  v7 = sub_252E37264();

  if (v7 >> 62)
  {
    result = sub_252E378C4();
    if (result)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

  result = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
LABEL_18:

    goto LABEL_19;
  }

LABEL_8:
  if ((v7 & 0xC000000000000001) != 0)
  {
    v9 = MEMORY[0x2530ADF00](0, v7);
  }

  else
  {
    if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v9 = *(v7 + 32);
  }

  v10 = v9;
  v11 = *(v0 + 632);

  sub_252DA49A4();
  v13 = v12;

  memcpy((v0 + 16), (v11 + 112), 0x1F8uLL);
  if (sub_252956B94((v0 + 16)) == 1 || (v14 = *(v0 + 216), !*(v14 + 16)))
  {
    v15 = 4;
  }

  else
  {
    v15 = *(v14 + 32);
  }

  sub_252C3AC5C(v15);
  v18 = v17;

  v19 = v18;
  v6 = sub_252DA5378(0x13, 0, 1);

  v20 = v19;
  v16 = sub_252DA5378(0x11, 0, 1);

LABEL_21:
  *(v0 + 688) = v20;
  *(v0 + 680) = v6;
  *(v0 + 672) = v16;
  if (v4)
  {
    if (!v6)
    {
      if (!v16)
      {
        goto LABEL_29;
      }

LABEL_26:
      v21 = 17;
      goto LABEL_30;
    }

    goto LABEL_28;
  }

  if (v16)
  {
    goto LABEL_26;
  }

  if (v6)
  {
LABEL_28:
    v21 = 19;
    goto LABEL_30;
  }

LABEL_29:
  v21 = 6;
LABEL_30:
  if (qword_27F53F4D0 != -1)
  {
    swift_once();
  }

  v22 = sub_252E36AD4();
  __swift_project_value_buffer(v22, qword_27F544D18);
  v23 = HomeAttributeType.description.getter(v21);
  MEMORY[0x2530AD570](v23);

  sub_252CC3D90(0x20747365736F6C43, 0xEB00000000747461, 0xD00000000000009CLL, 0x8000000252E98DF0);

  if (v21 == 17)
  {
    v6 = v16;
  }

  else if (v21 != 19)
  {
    v24 = 0;
    v6 = 0;
    goto LABEL_41;
  }

  if (v6 && (v25 = v6, (v26 = sub_252D0842C()) != 0) && (v27 = *(v26 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue), , , v27))
  {
    v24 = sub_25296E640();
  }

  else
  {
    v24 = 0;
  }

LABEL_41:
  *(v0 + 704) = v6;
  *(v0 + 696) = v24;
  v28 = *(v0 + 632);
  v29 = swift_allocObject();
  *(v0 + 712) = v29;
  *(v29 + 16) = v28;
  *(v29 + 24) = v4;
  *(v29 + 32) = v24;

  if (v5)
  {
    v30 = v28[6];
    v31 = *(v0 + 624);
    __swift_project_boxed_opaque_existential_1(v28 + 3, v30);

    if (v4)
    {
      v32 = 256;
    }

    else
    {
      v32 = 0;
    }

    v33 = sub_252C04898(v32, v24);
    *(v0 + 720) = v33;
    v39 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);

    v34 = swift_task_alloc();
    *(v0 + 728) = v34;
    *v34 = v0;
    v34[1] = sub_252D6E740;

    return v39(0xD000000000000024, 0x8000000252E955C0, v33);
  }

  else
  {
    sub_252CC4050(0xD00000000000003CLL, 0x8000000252E6B3F0, 0xD00000000000008FLL, 0x8000000252E6B430, 0xD000000000000042, 0x8000000252E6B4C0, 205);
    v35 = v28[12];
    __swift_project_boxed_opaque_existential_1(v28 + 9, v35);
    sub_252AD7CC4();
    v36 = swift_task_alloc();
    *(v0 + 776) = v36;
    *v36 = v0;
    v36[1] = sub_252D6EB0C;
    v37 = *(v0 + 664);

    return sub_252BDB88C(v0 + 520, &unk_252E5E720, v29, v37, 0, 0, 0, v35);
  }
}

uint64_t sub_252D6E740(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 736) = a1;
  *(v3 + 744) = v1;

  if (v1)
  {
    v4 = sub_252D6EA34;
  }

  else
  {
    v4 = sub_252D6E878;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_252D6E878()
{
  v1 = *(v0 + 624);

  v2 = swift_task_alloc();
  *(v0 + 752) = v2;
  *v2 = v0;
  v2[1] = sub_252D6E91C;

  return sub_252E174F4(v1);
}

uint64_t sub_252D6E91C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 760) = a1;
  *(v3 + 768) = v1;

  if (v1)
  {
    v4 = sub_252D6EDD8;
  }

  else
  {
    v4 = sub_252D6EC7C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_252D6EA34()
{
  v1 = *(v0 + 624);

  v2 = *(v0 + 704);
  v3 = *(v0 + 680);
  v4 = *(v0 + 672);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_252D6EB0C()
{
  v2 = *(*v1 + 664);
  v3 = *(*v1 + 648);
  v4 = *(*v1 + 640);
  *(*v1 + 784) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_252D6F3F4;
  }

  else
  {
    v5 = sub_252D6F29C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252D6EC7C()
{
  v1 = v0 + 75;
  v2 = v0[95];
  v3 = v0[92];
  v0[75] = v3;
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

  v8 = v0[79];
  v9 = *(v8 + 96);
  __swift_project_boxed_opaque_existential_1((v8 + 72), v9);
  v10 = swift_task_alloc();
  v0[99] = v10;
  *(v10 + 16) = v1;
  sub_252AD7CC4();
  v11 = swift_task_alloc();
  v0[100] = v11;
  *v11 = v0;
  v11[1] = sub_252D6EEAC;
  v12 = v0[82];

  return sub_252BDB88C((v0 + 70), &unk_252E3F140, v10, v12, 0, 0, 0, v9);
}

uint64_t sub_252D6EDD8()
{
  v1 = *(v0 + 624);

  v2 = *(v0 + 704);
  v3 = *(v0 + 680);
  v4 = *(v0 + 672);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_252D6EEAC()
{
  v2 = *(*v1 + 656);
  v3 = *(*v1 + 648);
  v4 = *(*v1 + 640);
  *(*v1 + 808) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_252D6F1AC;
  }

  else
  {

    v5 = sub_252D6F02C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252D6F02C()
{
  v1 = *(v0 + 632);
  v2 = *(v0 + 616);
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

  v8 = *(v0 + 760);
  v9 = *(v0 + 736);
  v10 = *(v0 + 624);
  (*(v4 + 112))(v7, v0 + 560, v3, v4);

  __swift_destroy_boxed_opaque_existential_1((v0 + 560));

  v11 = *(v0 + 704);
  v12 = *(v0 + 680);
  v13 = *(v0 + 672);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_252D6F1AC()
{
  v1 = *(v0 + 760);
  v2 = *(v0 + 624);

  v3 = *(v0 + 704);
  v4 = *(v0 + 680);
  v5 = *(v0 + 672);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_252D6F29C()
{
  v1 = *(v0 + 632);
  v2 = *(v0 + 616);
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

  (*(v4 + 112))(v7, v0 + 520, v3, v4);

  __swift_destroy_boxed_opaque_existential_1((v0 + 520));

  v8 = *(v0 + 704);
  v9 = *(v0 + 680);
  v10 = *(v0 + 672);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_252D6F3F4()
{

  v1 = *(v0 + 704);
  v2 = *(v0 + 680);
  v3 = *(v0 + 672);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_252D6F4B4(uint64_t a1, char a2, uint64_t a3)
{
  *(v3 + 64) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = a3;
  return MEMORY[0x2822009F8](sub_252D6F4D8, 0, 0);
}

uint64_t sub_252D6F4D8()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 24);
  __swift_project_boxed_opaque_existential_1((*(v0 + 16) + 24), *(*(v0 + 16) + 48));

  if (v1)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_252C04898(v3, v2);
  *(v0 + 32) = v4;
  v7 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);

  v5 = swift_task_alloc();
  *(v0 + 40) = v5;
  *v5 = v0;
  v5[1] = sub_2529A5084;

  return v7(0xD000000000000024, 0x8000000252E955C0, v4);
}

uint64_t sub_252D6F614(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25293B808;

  return sub_252D6E0B8(a1, a2, a3);
}

void *sub_252D6F6C8@<X0>(const void *a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for AlreadyHeatingCoolingResponseHandler();
  swift_allocObject();
  memcpy(__dst, a1, sizeof(__dst));
  result = sub_252BE97AC(__dst);
  *a2 = result;
  return result;
}

uint64_t sub_252D6F72C(void *a1)
{
  if (sub_252C4B5D4())
  {
    v2 = [a1 userTask];
    if (v2)
    {
      v3 = v2;
      v4 = [v2 attribute];

      if (v4 == 6)
      {
        v5 = sub_252CCFCB8();
        if (v5)
        {
          v6 = *(sub_252B680FC(v5) + 48);

          return v6;
        }
      }
    }

    else
    {
      sub_252C515AC();
    }
  }

  return 0;
}

uint64_t sub_252D6F7BC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_25294B958;

  return sub_252D6F4B4(v2, v3, v4);
}

void *sub_252D6F868(uint64_t a1)
{
  v2 = sub_252E36E04();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252D7E80C(&unk_27F541310, MEMORY[0x277CC55B0], MEMORY[0x277CC55B8]);
  v6 = sub_252E371B4();
  v34 = MEMORY[0x277D84F90];
  sub_2529AA3A0(0, v6 & ~(v6 >> 63), 0);
  v7 = v34;
  (*(v3 + 16))(v5, a1, v2);
  result = sub_252E371A4();
  if ((v6 & 0x8000000000000000) == 0)
  {
    v9 = v33;
    if (v6)
    {
      v10 = v32;
      *&v31 = *(v32 + 16);
      v30 = xmmword_252E3C290;
      v11 = v33;
      while (v31 != v11)
      {
        if ((v9 & 0x8000000000000000) != 0)
        {
          goto LABEL_21;
        }

        if (v11 >= *(v10 + 16))
        {
          goto LABEL_22;
        }

        v12 = *(v10 + 32 + v11);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540750, &unk_252E5C020);
        v13 = swift_allocObject();
        *(v13 + 16) = v30;
        *(v13 + 56) = MEMORY[0x277D84B78];
        *(v13 + 64) = MEMORY[0x277D84BC0];
        *(v13 + 32) = v12;
        result = sub_252E36F64();
        v34 = v7;
        v16 = *(v7 + 16);
        v15 = *(v7 + 24);
        if (v16 >= v15 >> 1)
        {
          v29 = result;
          v18 = v14;
          sub_2529AA3A0((v15 > 1), v16 + 1, 1);
          v14 = v18;
          result = v29;
          v7 = v34;
        }

        *(v7 + 16) = v16 + 1;
        v17 = v7 + 16 * v16;
        *(v17 + 32) = result;
        *(v17 + 40) = v14;
        ++v11;
        if (!--v6)
        {
          v33 = v11;
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
    }

    else
    {
      v11 = v33;
LABEL_12:
      v19 = v32;
      v20 = *(v32 + 16);
      if (v11 == v20)
      {
LABEL_13:

        return v7;
      }

      v31 = xmmword_252E3C290;
      while (v11 < v20)
      {
        v21 = *(v19 + 32 + v11);
        v33 = v11 + 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540750, &unk_252E5C020);
        v22 = swift_allocObject();
        *(v22 + 16) = v31;
        *(v22 + 56) = MEMORY[0x277D84B78];
        *(v22 + 64) = MEMORY[0x277D84BC0];
        *(v22 + 32) = v21;
        result = sub_252E36F64();
        v34 = v7;
        v25 = *(v7 + 16);
        v24 = *(v7 + 24);
        if (v25 >= v24 >> 1)
        {
          v27 = result;
          v28 = v23;
          sub_2529AA3A0((v24 > 1), v25 + 1, 1);
          v23 = v28;
          result = v27;
          v7 = v34;
        }

        *(v7 + 16) = v25 + 1;
        v26 = v7 + 16 * v25;
        *(v26 + 32) = result;
        *(v26 + 40) = v23;
        v20 = *(v19 + 16);
        v11 = v33;
        if (v33 == v20)
        {
          goto LABEL_13;
        }
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_252D6FC08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_252E36AB4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v10 = &aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &aBlock - v11;
  if (qword_27F53F5F0 != -1)
  {
    swift_once();
  }

  v13 = qword_27F544F78;
  sub_252E36A94();
  sub_252E375D4();
  sub_252E36A84();
  (*(v7 + 16))(v10, v12, v6);
  v14 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v15 = (v8 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  (*(v7 + 32))(v16 + v14, v10, v6);
  v17 = (v16 + v15);
  *v17 = a2;
  v17[1] = a3;
  v19 = *(a1 + 32);
  v18 = *(a1 + 40);
  aBlock = 0xD000000000000029;
  v36 = 0x8000000252E80C60;

  MEMORY[0x2530AD570](v19, v18);

  v21 = aBlock;
  v20 = v36;
  if (qword_27F53F4D8 != -1)
  {
    swift_once();
  }

  v22 = sub_252E36AD4();
  __swift_project_value_buffer(v22, qword_27F544D30);

  v23 = sub_252E36AC4();
  v24 = sub_252E374C4();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    aBlock = v26;
    *v25 = 136315138;
    *(v25 + 4) = sub_252BE2CE0(v21, v20, &aBlock);
    _os_log_impl(&dword_252917000, v23, v24, "Removing record from: %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v26);
    MEMORY[0x2530AED00](v26, -1, -1);
    MEMORY[0x2530AED00](v25, -1, -1);
  }

  v27 = qword_27F545F50;
  if (qword_27F545F50)
  {
    v28 = qword_27F545F50;
  }

  else
  {
    sub_252E35A24();
    v29 = sub_252E35A14();
    v30 = qword_27F545F50;
    qword_27F545F50 = v29;
    v28 = v29;

    v27 = 0;
  }

  v31 = v27;
  v32 = sub_252E36F04();

  v39 = sub_252D7E768;
  v40 = v16;
  aBlock = MEMORY[0x277D85DD0];
  v36 = 1107296256;
  v37 = sub_2529E0210;
  v38 = &block_descriptor_108;
  v33 = _Block_copy(&aBlock);

  [v28 removeValueForKey:v32 completionHandler:v33];
  _Block_release(v33);

  return (*(v7 + 8))(v12, v6);
}

uint64_t sub_252D70068(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_252E36AB4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v10 = &aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &aBlock - v11;
  if (qword_27F53F5F0 != -1)
  {
    swift_once();
  }

  v13 = qword_27F544F78;
  sub_252E36A94();
  sub_252E375D4();
  sub_252E36A84();
  (*(v7 + 16))(v10, v12, v6);
  v14 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v15 = (v8 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  (*(v7 + 32))(v16 + v14, v10, v6);
  v17 = (v16 + v15);
  *v17 = a2;
  v17[1] = a3;
  v19 = *(a1 + 16);
  v18 = *(a1 + 24);
  aBlock = 0xD000000000000026;
  v36 = 0x8000000252E80E10;

  MEMORY[0x2530AD570](v19, v18);
  v21 = aBlock;
  v20 = v36;
  if (qword_27F53F4D8 != -1)
  {
    swift_once();
  }

  v22 = sub_252E36AD4();
  __swift_project_value_buffer(v22, qword_27F544D30);

  v23 = sub_252E36AC4();
  v24 = sub_252E374C4();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    aBlock = v26;
    *v25 = 136315138;
    *(v25 + 4) = sub_252BE2CE0(v21, v20, &aBlock);
    _os_log_impl(&dword_252917000, v23, v24, "Removing record from: %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v26);
    MEMORY[0x2530AED00](v26, -1, -1);
    MEMORY[0x2530AED00](v25, -1, -1);
  }

  v27 = qword_27F545F50;
  if (qword_27F545F50)
  {
    v28 = qword_27F545F50;
  }

  else
  {
    sub_252E35A24();
    v29 = sub_252E35A14();
    v30 = qword_27F545F50;
    qword_27F545F50 = v29;
    v28 = v29;

    v27 = 0;
  }

  v31 = v27;
  v32 = sub_252E36F04();

  v39 = sub_252D7E874;
  v40 = v16;
  aBlock = MEMORY[0x277D85DD0];
  v36 = 1107296256;
  v37 = sub_2529E0210;
  v38 = &block_descriptor_117;
  v33 = _Block_copy(&aBlock);

  [v28 removeValueForKey:v32 completionHandler:v33];
  _Block_release(v33);

  return (*(v7 + 8))(v12, v6);
}

uint64_t HomeGraphCacheInvalidationSignal.signalName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_252D704EC(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 32) = v3;
  *(v4 + 40) = v2;
}

uint64_t sub_252D7054C()
{
  swift_beginAccess();
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_252D70598(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

uint64_t sub_252D7063C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 48) = v3;
  *(v4 + 56) = v2;
}

uint64_t sub_252D7069C()
{
  swift_beginAccess();
  v1 = *(v0 + 48);

  return v1;
}

uint64_t sub_252D706E8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
}

uint64_t sub_252D70864(uint64_t (*a1)(void), uint64_t (*a2)(void))
{
  v3 = a1(0);
  v5 = v4;

  v6 = a2(0);
  if (v5)
  {
    if (v7)
    {
      if (v3 == v6 && v5 == v7)
      {
        v8 = 1;
      }

      else
      {
        v8 = sub_252E37DB4();
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_252D70910(char a1)
{
  v2 = v1;
  if (qword_27F53F528 != -1)
  {
    swift_once();
  }

  v4 = sub_252E36AD4();
  __swift_project_value_buffer(v4, qword_27F544E20);
  MEMORY[0x2530AD570](v1[2], v1[3]);
  sub_252CC3D90(0x206873756C46, 0xE600000000000000, 0xD000000000000094, 0x8000000252E98E90);

  result = sub_252D7C060(a1 & 1);
  v6 = v1[5];
  if (v6)
  {
    v7 = v2[4];
    v8 = v2[7];
    if (!v8 || (v7 != v2[6] || v6 != v8) && (result = sub_252E37DB4(), (result & 1) == 0))
    {
      type metadata accessor for CacheInvalidationSignalRecord();
      v9 = swift_allocObject();
      *(v9 + 16) = 3288625;
      *(v9 + 24) = 0xE300000000000000;
      strcpy((v9 + 32), "systemVersion");
      *(v9 + 46) = -4864;
      *(v9 + 48) = v7;
      *(v9 + 56) = v6;
      swift_bridgeObjectRetain_n();
      sub_252DBD2E8(v9, 0x65566D6574737973, 0xED00006E6F697372);
    }
  }

  return result;
}

void *_s22HomeAutomationInternal0A28GraphCacheInvalidationSignalCfd_0()
{

  return v0;
}

uint64_t sub_252D70B50(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  v7 = *v4;
  if (qword_27F53F528 != -1)
  {
    swift_once();
  }

  v8 = sub_252E36AD4();
  __swift_project_value_buffer(v8, qword_27F544E20);
  MEMORY[0x2530AD570](*(v7 + 16), *(v7 + 24));
  sub_252CC3D90(0x206D726177657250, 0xE800000000000000, 0xD000000000000094, 0x8000000252E98E90);

  a3(1);
  return a4(1);
}

uint64_t sub_252D70CBC()
{
  v1 = *(v0 + 16);
  if (!v1)
  {
    v2 = sub_252AFEED8();
    *(v0 + 24) = v2;

    *(v0 + 16) = v2;

    v1 = *(v0 + 16);
    if (!v1)
    {
      *(v0 + 16) = sub_252CC4DFC(MEMORY[0x277D84F90]);

      v1 = *(v0 + 16);
    }
  }

  return v1;
}

uint64_t sub_252D70D50()
{
  v1 = *(v0 + 16);
  if (v1 || (v2 = sub_252AFEED8(), *(v0 + 24) = v2, , *(v0 + 16) = v2, , , (v1 = *(v0 + 16)) != 0) || (*(v0 + 16) = sub_252CC4DFC(MEMORY[0x277D84F90]), result = , (v1 = *(v0 + 16)) != 0))
  {
    v4 = v1 + 64;
    v5 = 1 << *(v1 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(v1 + 64);
    v8 = (v5 + 63) >> 6;
    result = swift_bridgeObjectRetain_n();
    v9 = 0;
    v17 = v1;
    if (v7)
    {
      goto LABEL_11;
    }

    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
        return result;
      }

      if (v10 >= v8)
      {
        break;
      }

      v7 = *(v4 + 8 * v10);
      ++v9;
      if (v7)
      {
        v9 = v10;
        do
        {
LABEL_11:
          v11 = (*(v1 + 48) + 16 * (__clz(__rbit64(v7)) | (v9 << 6)));
          v13 = *v11;
          v12 = v11[1];
          v14 = qword_27F53F528;

          if (v14 != -1)
          {
            swift_once();
          }

          v7 &= v7 - 1;
          v15 = sub_252E36AD4();
          __swift_project_value_buffer(v15, qword_27F544E20);
          sub_252E379F4();

          MEMORY[0x2530AD570](v13, v12);
          MEMORY[0x2530AD570](0x61646174656D202CLL, 0xEB00000000206174);
          v16 = sub_252AFC4C8();
          MEMORY[0x2530AD570](v16);

          sub_252CC3D90(0xD000000000000013, 0x8000000252E99800, 0xD000000000000094, 0x8000000252E98E90);

          v1 = v17;
        }

        while (v7);
      }
    }
  }

  return result;
}

uint64_t sub_252D70FF4(uint64_t a1, uint64_t a2, char a3)
{
  v7 = *(v3 + 16);
  if (v7)
  {
    v8 = *(v3 + 16);
    if (*(v7 + 16))
    {
      goto LABEL_3;
    }

LABEL_9:

    goto LABEL_10;
  }

  v12 = sub_252AFEED8();
  *(v3 + 24) = v12;

  *(v3 + 16) = v12;

  v8 = *(v3 + 16);
  if (!v8)
  {
    *(v3 + 16) = sub_252CC4DFC(MEMORY[0x277D84F90]);

    v8 = *(v3 + 16);
    if (!v8)
    {
      return 0;
    }
  }

  if (!*(v8 + 16))
  {
    goto LABEL_9;
  }

LABEL_3:

  v9 = sub_252A44A10(a1, a2);
  if ((v10 & 1) == 0)
  {
LABEL_10:

    return 0;
  }

  v11 = *(*(v8 + 56) + 8 * v9);

  if (a3)
  {
    sub_252AFC800();
  }

  return v11;
}

uint64_t sub_252D71108(uint64_t a1, uint64_t a2)
{
  if (*(v2 + 16))
  {
    v5 = *(v2 + 16);
  }

  else
  {
    v6 = sub_252AFEED8();
    *(v2 + 24) = v6;

    *(v2 + 16) = v6;

    v5 = *(v2 + 16);
    if (!v5)
    {
      *(v2 + 16) = sub_252CC4DFC(MEMORY[0x277D84F90]);

      v5 = *(v2 + 16);
      if (!v5)
      {
        v9 = 0;
        return v9 & 1;
      }
    }
  }

  v7 = *(v5 + 16);

  if (v7)
  {
    sub_252A44A10(a1, a2);
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t sub_252D711F0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_252E32E04();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v25[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252E32DF4();
  type metadata accessor for IntentSelectionCacheRecordMetadata(0);
  v10 = swift_allocObject();
  v11 = OBJC_IVAR____TtC22HomeAutomationInternal34IntentSelectionCacheRecordMetadata_isInvalidated;
  *(v10 + OBJC_IVAR____TtC22HomeAutomationInternal34IntentSelectionCacheRecordMetadata_isInvalidated) = 0;
  v12 = OBJC_IVAR____TtC22HomeAutomationInternal34IntentSelectionCacheRecordMetadata_shouldFlush;
  *(v10 + OBJC_IVAR____TtC22HomeAutomationInternal34IntentSelectionCacheRecordMetadata_shouldFlush) = 1;
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = 1;
  (*(v7 + 32))(v10 + OBJC_IVAR____TtC22HomeAutomationInternal34IntentSelectionCacheRecordMetadata_lastAccessDate, v9, v6);
  *(v10 + v11) = 0;
  *(v10 + v12) = 1;
  swift_beginAccess();
  v13 = *(v3 + 32);

  if (!v13)
  {
    *(v3 + 32) = sub_252CC4DFC(MEMORY[0x277D84F90]);
  }

  v15 = sub_252D705EC(v25);
  if (*v14)
  {
    v16 = v14;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v16;
    *v16 = 0x8000000000000000;
    sub_2529FB94C(v10, a1, a2, isUniquelyReferenced_nonNull_native);

    *v16 = v24;
  }

  (v15)(v25, 0);
  v18 = sub_252D70CBC();
  if (v18)
  {
    v19 = v18;

    v20 = swift_isUniquelyReferenced_nonNull_native();
    v25[0] = v19;
    sub_2529FB94C(v10, a1, a2, v20);

    *(v3 + 16) = v25[0];
  }

  v21 = sub_252D70C6C(v25);
  if (*v22)
  {
    sub_252E16D98(a1, a2);
  }

  (v21)(v25, 0);
}

uint64_t sub_252D714A0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (v2[2])
  {
    v6 = v2[2];
  }

  else
  {
    v7 = sub_252AFEED8();
    v3[3] = v7;

    v3[2] = v7;

    if (!v3[2])
    {
      v3[2] = sub_252CC4DFC(MEMORY[0x277D84F90]);

      result = v3[2];
      if (!result)
      {
        return result;
      }
    }
  }

  v16 = v6;

  v9 = sub_252E16D98(a1, a2);
  if (v9)
  {
    v3[2] = v16;

    *(v9 + OBJC_IVAR____TtC22HomeAutomationInternal34IntentSelectionCacheRecordMetadata_isInvalidated) = 1;
    *(v9 + OBJC_IVAR____TtC22HomeAutomationInternal34IntentSelectionCacheRecordMetadata_shouldFlush) = 1;
    swift_beginAccess();
    if (!v3[5])
    {
      v3[5] = sub_252CC4DFC(MEMORY[0x277D84F90]);
    }

    v10 = sub_252D70C6C(v15);
    if (*v11)
    {

      sub_252E12564(v12, a1, a2);
    }

    (v10)(v15, 0);
    v13 = sub_252D705EC(v15);
    if (*v14)
    {
      sub_252E16D98(a1, a2);
    }

    (v13)(v15, 0);
  }

  else
  {
  }
}

void *sub_252D716B4()
{
  swift_beginAccess();
  if (v0[5])
  {
    v1 = v0[2];
    if (!v1)
    {
LABEL_28:
      v37 = MEMORY[0x277D84F90];
      v38 = sub_252CC4DFC(MEMORY[0x277D84F90]);
      swift_beginAccess();
      v0[4] = v38;

      v39 = sub_252CC4DFC(v37);
      v0[2] = v39;

      type metadata accessor for IntentSelectionCacheKeysRecord();
      v40 = swift_allocObject();
      v40[2] = 3288625;
      v40[3] = 0xE300000000000000;
      v40[4] = 0xD000000000000020;
      v40[5] = 0x8000000252E7AE10;
      v40[6] = v39;

      sub_252DBC8C8(v40, 0xD000000000000020, 0x8000000252E7AE10);

      v41 = v0[5];
      if (!v41)
      {
        return 0;
      }

      v42 = *(v41 + 16);
      if (!v42)
      {
        return MEMORY[0x277D84F90];
      }

      v43 = sub_252DFA3E0(*(v41 + 16), 0);
      v44 = sub_252E11360();
      v45 = v53;

      sub_25291AE30(v45);
      if (v44 != v42)
      {
        goto LABEL_37;
      }

      return v43;
    }
  }

  else
  {
    v0[5] = sub_252CC4DFC(MEMORY[0x277D84F90]);

    v1 = v0[2];
    if (!v1)
    {
      goto LABEL_28;
    }
  }

  v2 = v1 + 64;
  v3 = 1 << *(v1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  v49 = v1;
  v50 = v1 + 64;
  v47 = v0;
  v48 = v6;
  while (v5)
  {
LABEL_15:
    v9 = __clz(__rbit64(v5)) | (v7 << 6);
    v10 = (*(v1 + 48) + 16 * v9);
    v12 = *v10;
    v11 = v10[1];
    v13 = *(*(v1 + 56) + 8 * v9);
    *(v13 + OBJC_IVAR____TtC22HomeAutomationInternal34IntentSelectionCacheRecordMetadata_isInvalidated) = 1;
    *(v13 + OBJC_IVAR____TtC22HomeAutomationInternal34IntentSelectionCacheRecordMetadata_shouldFlush) = 1;

    v14 = sub_252D70C6C(&v53);
    v16 = v1;
    v17 = v14;
    if (!*v15)
    {

      (v17)(&v53, 0);
      v1 = v16;
      goto LABEL_9;
    }

    v52 = v14;
    v18 = v15;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v54 = *v18;
    v20 = v54;
    v51 = v18;
    *v18 = 0x8000000000000000;
    v21 = sub_252A44A10(v12, v11);
    v23 = v20[2];
    v24 = (v22 & 1) == 0;
    v25 = __OFADD__(v23, v24);
    v26 = v23 + v24;
    if (v25)
    {
      goto LABEL_35;
    }

    v27 = v22;
    v28 = v11;
    if (v20[3] < v26)
    {
      sub_252E0240C(v26, isUniquelyReferenced_nonNull_native);
      v29 = v12;
      v21 = sub_252A44A10(v12, v28);
      if ((v27 & 1) != (v30 & 1))
      {
        goto LABEL_38;
      }

LABEL_21:
      v6 = v48;
      v1 = v49;
      if ((v27 & 1) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_22;
    }

    v29 = v12;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_21;
    }

    v33 = v21;
    sub_252E047F0();
    v21 = v33;
    v6 = v48;
    v1 = v49;
    if ((v27 & 1) == 0)
    {
LABEL_24:
      v32 = v54;
      v54[(v21 >> 6) + 8] |= 1 << v21;
      v34 = (v32[6] + 16 * v21);
      *v34 = v29;
      v34[1] = v28;
      *(v32[7] + 8 * v21) = v13;
      v35 = v32[2];
      v25 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (v25)
      {
        goto LABEL_36;
      }

      v32[2] = v36;
      goto LABEL_26;
    }

LABEL_22:
    v31 = v21;

    v32 = v54;
    *(v54[7] + 8 * v31) = v13;

LABEL_26:
    *v51 = v32;

    (v52)(&v53, 0);
    v0 = v47;
LABEL_9:
    v5 &= v5 - 1;

    v2 = v50;
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

      goto LABEL_28;
    }

    v5 = *(v2 + 8 * v8);
    ++v7;
    if (v5)
    {
      v7 = v8;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  result = sub_252E37E24();
  __break(1u);
  return result;
}

void *sub_252D71B2C()
{
  v1 = *(v0 + 16);
  if (!v1)
  {
    goto LABEL_16;
  }

  v2 = *(v1 + 16);
  if (v2 < 0x65)
  {
    goto LABEL_15;
  }

  v3 = sub_252DFA478(*(v1 + 16), 0);
  v4 = sub_252E08154(&v18, v3 + 4, v2, v1);
  v5 = v18;
  swift_bridgeObjectRetain_n();
  sub_25291AE30(v5);
  if (v4 == v2)
  {
    v18 = v3;
    sub_252D77C44(&v18);
    v3 = (v2 - 100);

    v6 = v18[2];
    if (v6 >= v2 - 100)
    {
      v7 = v6 - v3;
    }

    else
    {
      v7 = 0;
    }

    if (v7 != v6)
    {
      if (v6 >= v3)
      {
        v8 = v2 - 100;
      }

      else
      {
        v8 = v18[2];
      }

      v9 = (v18 + 24 * v6 - 24 * v8 + 48);
      while (v7 < v6)
      {
        ++v7;
        v10 = *(v9 - 1);
        v3 = *v9;
        v11 = *(v9 - 2);

        sub_252D714A0(v11, v10);

        v9 += 3;
        if (!--v8)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

LABEL_14:
    swift_unknownObjectRelease();
    v1 = *(v0 + 16);
    if (!v1)
    {
LABEL_16:
      swift_beginAccess();
      v13 = *(v0 + 40);
      if (!v13)
      {
        return 0;
      }

      v14 = *(v13 + 16);
      if (!v14)
      {
        return MEMORY[0x277D84F90];
      }

      v15 = sub_252DFA3E0(*(v13 + 16), 0);
      v3 = sub_252E11360();
      v16 = v18;

      sub_25291AE30(v16);
      if (v3 == v14)
      {
        return v15;
      }

      goto LABEL_23;
    }

LABEL_15:
    type metadata accessor for IntentSelectionCacheKeysRecord();
    v12 = swift_allocObject();
    v12[2] = 3288625;
    v12[3] = 0xE300000000000000;
    v12[4] = 0xD000000000000020;
    v12[5] = 0x8000000252E7AE10;
    v12[6] = v1;
    swift_bridgeObjectRetain_n();
    sub_252DBC8C8(v12, 0xD000000000000020, 0x8000000252E7AE10);

    goto LABEL_16;
  }

LABEL_24:
  __break(1u);

  __break(1u);
  return result;
}

void *CacheKeys.deinit()
{

  return v0;
}

uint64_t CacheKeys.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_252D71EF0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_27F53F528 != -1)
  {
    swift_once();
  }

  v6 = sub_252E36AD4();
  __swift_project_value_buffer(v6, qword_27F544E20);
  sub_252E379F4();

  v27 = 0xD00000000000001CLL;
  v28 = 0x8000000252E997A0;
  MEMORY[0x2530AD570](a1, a2);
  sub_252CC3D90(0xD00000000000001CLL, 0x8000000252E997A0, 0xD000000000000094, 0x8000000252E98E90);

  swift_beginAccess();
  v7 = *(v2 + 16);
  if (v7 || (*(v3 + 16) = sub_252CC4E10(MEMORY[0x277D84F90]), , (v7 = *(v3 + 16)) != 0))
  {
    if (*(v7 + 16))
    {

      v8 = sub_252A44A10(a1, a2);
      if (v9)
      {
        v10 = *(*(v7 + 56) + 8 * v8);

        sub_252E379F4();

        v27 = 0xD000000000000019;
        v28 = 0x8000000252E997E0;

        v11 = sub_252AFB9BC();
        v13 = v12;

        MEMORY[0x2530AD570](v11, v13);

        sub_252CC3D90(0xD000000000000019, 0x8000000252E997E0, 0xD000000000000094, 0x8000000252E98E90);

        sub_252AFC800();

        goto LABEL_13;
      }
    }
  }

  v10 = sub_252AFFAFC(a1, a2);
  if (!v10)
  {
    return v10;
  }

  sub_252E379F4();

  v27 = 0xD00000000000001ALL;
  v28 = 0x8000000252E997C0;

  v14 = sub_252AFB9BC();
  v16 = v15;

  MEMORY[0x2530AD570](v14, v16);

  sub_252CC3D90(0xD00000000000001ALL, 0x8000000252E997C0, 0xD000000000000094, 0x8000000252E98E90);

  sub_252AFC800();

  v18 = sub_252D71E50(&v27);
  if (*v17)
  {
    v19 = v17;
    v20 = *(v10 + 32);
    v21 = *(v10 + 40);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v19;
    *v19 = 0x8000000000000000;
    sub_2529FADDC(v10, v20, v21, isUniquelyReferenced_nonNull_native);

    *v19 = v26;
  }

  (v18)(&v27, 0);
LABEL_13:
  v23 = sub_252D71EA0(&v27);
  if (*v24)
  {
    sub_2529AD0B0(a1, a2);
  }

  (v23)(&v27, 0);
  return v10;
}

uint64_t sub_252D722C0(void *__src, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  memcpy(__dst, __src, 0x1F8uLL);
  memcpy(v20, __src, sizeof(v20));
  type metadata accessor for IntentSelectionCacheEntry();
  swift_allocObject();

  sub_2529353AC(__dst, v19);
  v8 = sub_252AFBB30(a2, a3, v20);
  swift_beginAccess();
  if (!*(v4 + 16))
  {
    *(v4 + 16) = sub_252CC4E10(MEMORY[0x277D84F90]);
  }

  v10 = sub_252D71E50(v20);
  if (*v9)
  {
    v11 = v9;
    v12 = v8[4];
    v13 = v8[5];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v11;
    *v11 = 0x8000000000000000;
    sub_2529FADDC(v8, v12, v13, isUniquelyReferenced_nonNull_native);

    *v11 = v18;
  }

  (v10)(v20, 0);
  swift_beginAccess();
  if (*(v4 + 24))
  {
    v15 = sub_252D71EA0(v20);
    if (*v16)
    {
      sub_2529AD0B0(a2, a3);
    }

    (v15)(v20, 0);
  }
}

uint64_t sub_252D724A0(uint64_t a1, uint64_t a2)
{
  v5 = sub_252E36AD4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v9 = *(v2 + 16);
  if (v9 && *(v9 + 16))
  {

    v10 = sub_252A44A10(a1, a2);
    if (v11)
    {
      v12 = *(*(v9 + 56) + 8 * v10);

      v13 = v12[69];
      *(v13 + OBJC_IVAR____TtC22HomeAutomationInternal34IntentSelectionCacheRecordMetadata_isInvalidated) = 1;
      *(v13 + OBJC_IVAR____TtC22HomeAutomationInternal34IntentSelectionCacheRecordMetadata_shouldFlush) = 1;
      v15 = sub_252D71E50(&v32);
      if (*v14)
      {
        v16 = v14;
        v17 = v12[4];
        v18 = v12[5];

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v35 = *v16;
        *v16 = 0x8000000000000000;
        sub_2529FADDC(v12, v17, v18, isUniquelyReferenced_nonNull_native);

        *v16 = v35;
      }

      (v15)(&v32, 0);
      if (qword_27F53F528 != -1)
      {
        swift_once();
      }

      v23 = __swift_project_value_buffer(v5, qword_27F544E20);
      (*(v6 + 16))(v8, v23, v5);
      v32 = 0;
      v33 = 0xE000000000000000;
      sub_252E379F4();

      v32 = 0xD000000000000018;
      v33 = 0x8000000252E99780;
      v24 = *(v2 + 16);
      if (v24 && *(v24 + 16))
      {
        v25 = v12[4];
        v26 = v12[5];

        v27 = sub_252A44A10(v25, v26);
        v29 = v28;

        if (v29)
        {
          v30 = *(*(v24 + 56) + 8 * v27);

LABEL_20:
          v35 = v30;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545B28, &unk_252E5E950);
          v31 = sub_252E36F94();
          MEMORY[0x2530AD570](v31);

          sub_252CC3D90(v32, v33, 0xD000000000000094, 0x8000000252E98E90);

          return (*(v6 + 8))(v8, v5);
        }
      }

      v30 = 0;
      goto LABEL_20;
    }
  }

  swift_beginAccess();
  if (!*(v2 + 24))
  {
    *(v2 + 24) = MEMORY[0x277D84FA0];
  }

  v20 = sub_252D71EA0(&v32);
  if (*v21)
  {

    sub_252DA6CD0(&v34, a1, a2);
  }

  return (v20)(&v32, 0);
}

uint64_t sub_252D7289C()
{
  v42 = sub_252E32E04();
  v1 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v41 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_beginAccess();
  v4 = *(v0 + 16);
  if (v4)
  {
    v43 = v1;

    v46 = sub_252CC4E10(MEMORY[0x277D84F90]);
    v5 = 1 << *(v4 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(v4 + 64);
    v8 = (v5 + 63) >> 6;

    v9 = 0;
    if (v7)
    {
      while (1)
      {
        v10 = v9;
LABEL_10:
        v11 = __clz(__rbit64(v7));
        v7 &= v7 - 1;
        v12 = v11 | (v10 << 6);
        v13 = (*(v4 + 48) + 16 * v12);
        v14 = *v13;
        v15 = v13[1];
        v16 = *(*(v4 + 56) + 8 * v12);

        sub_252D72CF0(v14, v15, v16, &v46);

        if (!v7)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v10 >= v8)
      {
        break;
      }

      v7 = *(v4 + 64 + 8 * v10);
      ++v9;
      if (v7)
      {
        v9 = v10;
        goto LABEL_10;
      }
    }

    v17 = v46;
    *(v0 + 16) = v46;

    swift_beginAccess();
    v18 = *(v0 + 24);
    if (!v18)
    {
    }

    v19 = *(v18 + 56);
    v38 = v18 + 56;
    v20 = 1 << *(v18 + 32);
    v21 = -1;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    v22 = v21 & v19;
    v36 = v17;
    v37 = (v20 + 63) >> 6;
    v39 = (v43 + 32);
    v40 = v18;
    result = swift_bridgeObjectRetain_n();
    v23 = 0;
    for (i = v41; v22; result = )
    {
      v25 = v23;
LABEL_21:
      v26 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
      v27 = (*(v40 + 48) + ((v25 << 10) | (16 * v26)));
      v29 = v27[1];
      v43 = *v27;
      v28 = v43;
      _s7BuilderCMa_1();
      swift_allocObject();
      sub_252E1E238();

      sub_252E1E4F8(v44);

      memcpy(v45, v44, sizeof(v45));
      type metadata accessor for IntentSelectionCacheEntry();
      v30 = swift_allocObject();
      v30[2] = 3288625;
      v30[3] = 0xE300000000000000;
      v30[4] = v28;
      v30[5] = v29;
      memcpy(v30 + 6, v45, 0x1F8uLL);
      swift_bridgeObjectRetain_n();
      sub_2529353AC(v45, v44);
      sub_252E32DF4();
      type metadata accessor for IntentSelectionCacheRecordMetadata(0);
      v31 = swift_allocObject();
      v32 = OBJC_IVAR____TtC22HomeAutomationInternal34IntentSelectionCacheRecordMetadata_isInvalidated;
      *(v31 + OBJC_IVAR____TtC22HomeAutomationInternal34IntentSelectionCacheRecordMetadata_isInvalidated) = 0;
      v33 = OBJC_IVAR____TtC22HomeAutomationInternal34IntentSelectionCacheRecordMetadata_shouldFlush;
      *(v31 + OBJC_IVAR____TtC22HomeAutomationInternal34IntentSelectionCacheRecordMetadata_shouldFlush) = 1;
      v34 = v42;
      v31[2] = v43;
      v31[3] = v29;
      v31[4] = 1;
      (*v39)(v31 + OBJC_IVAR____TtC22HomeAutomationInternal34IntentSelectionCacheRecordMetadata_lastAccessDate, i, v34);
      *(v31 + v32) = 0;
      *(v31 + v33) = 1;
      v30[69] = v31;

      sub_252D6FC08(v35, sub_252D7E760, v30);
      sub_252935408(v45);
    }

    while (1)
    {
      v25 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v25 >= v37)
      {
      }

      v22 = *(v38 + 8 * v25);
      ++v23;
      if (v22)
      {
        v23 = v25;
        goto LABEL_21;
      }
    }

LABEL_27:
    __break(1u);
  }

  return result;
}

uint64_t sub_252D72CF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (qword_27F53F528 != -1)
  {
    swift_once();
  }

  v8 = sub_252E36AD4();
  __swift_project_value_buffer(v8, qword_27F544E20);
  sub_252E379F4();

  strcpy(v16, "Entry for key ");
  HIBYTE(v16[1]) = -18;
  MEMORY[0x2530AD570](a1, a2);
  sub_252CC3D90(v16[0], v16[1], 0xD000000000000094, 0x8000000252E98E90);

  v10 = *(a3 + 552);
  if (*(v10 + OBJC_IVAR____TtC22HomeAutomationInternal34IntentSelectionCacheRecordMetadata_isInvalidated) == 1)
  {
    sub_252E379F4();

    strcpy(v16, "Deleting ");
    WORD1(v16[1]) = 0;
    HIDWORD(v16[1]) = -385875968;
    MEMORY[0x2530AD570](a1, a2);
    MEMORY[0x2530AD570](0x203A7972746E4520, 0xE800000000000000);
    v11 = sub_252AFB9BC();
    MEMORY[0x2530AD570](v11);

    sub_252CC3D90(v16[0], v16[1], 0xD000000000000094, 0x8000000252E98E90);

    sub_252D6FC08(v12, sub_252D7E870, a3);
  }

  else
  {
    if (*(v10 + OBJC_IVAR____TtC22HomeAutomationInternal34IntentSelectionCacheRecordMetadata_shouldFlush) != 1)
    {
      return result;
    }

    *(v10 + OBJC_IVAR____TtC22HomeAutomationInternal34IntentSelectionCacheRecordMetadata_shouldFlush) = 0;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16[0] = *a4;
    *a4 = 0x8000000000000000;
    sub_2529FADDC(a3, a1, a2, isUniquelyReferenced_nonNull_native);

    *a4 = v16[0];
    sub_252E379F4();

    strcpy(v16, "Writing ");
    BYTE1(v16[1]) = 0;
    WORD1(v16[1]) = 0;
    HIDWORD(v16[1]) = -402653184;
    MEMORY[0x2530AD570](a1, a2);
    MEMORY[0x2530AD570](0x203A7972746E4520, 0xE800000000000000);
    v14 = sub_252AFB9BC();
    MEMORY[0x2530AD570](v14);

    sub_252CC3D90(v16[0], v16[1], 0xD000000000000094, 0x8000000252E98E90);

    sub_252DBDD08(v15, a3);
  }
}

uint64_t CacheEntries.deinit()
{

  return v0;
}

uint64_t CacheEntries.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

dispatch_semaphore_t sub_252D730A8()
{
  result = dispatch_semaphore_create(1);
  qword_27F575B68 = result;
  return result;
}

BOOL sub_252D730CC()
{
  swift_beginAccess();
  memcpy(__dst, (v0 + 88), sizeof(__dst));
  v1 = __dst[63];
  sub_252938414(__dst, v4, &qword_27F545B08, &qword_252E5E730);
  [v1 lock];
  sub_252938414(__dst, v4, &qword_27F5404C8, &unk_252E3FD60);
  [v1 unlock];
  sub_25293847C(__dst, &qword_27F545B08, &qword_252E5E730);
  memcpy(v4, __dst, 0x1F8uLL);
  v2 = sub_252956B94(v4);
  if (v2 != 1)
  {
    sub_25293847C(__dst, &qword_27F5404C8, &unk_252E3FD60);
  }

  return v2 != 1;
}

void *sub_252D731D4()
{
  v1 = v0;
  v2 = sub_252E37564();
  v25 = *(v2 - 8);
  v26 = v2;
  MEMORY[0x28223BE20](v2);
  v24 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_252E37534();
  MEMORY[0x28223BE20](v4);
  v5 = sub_252E36D04();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  v0[8] = 0;
  v0[9] = 0;
  v0[10] = v6;
  sub_25293DEE0(v28);
  memcpy(v29, v28, sizeof(v29));
  v7 = [objc_allocWithZone(MEMORY[0x277CCAAF8]) &selRef__refreshBeforeDate_completionHandler_];
  memcpy(v0 + 11, v29, 0x1F8uLL);
  v0[74] = v7;
  v23 = sub_25293F638(0, &qword_2814B0218, 0x277D85C78);
  sub_252E36CF4();
  v27 = MEMORY[0x277D84F90];
  sub_252D7E80C(&qword_2814B0220, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540300, &qword_252E3C170);
  sub_2529E6488(&qword_2814B0278, &qword_27F540300, &qword_252E3C170, MEMORY[0x277D83970]);
  sub_252E37824();
  (*(v25 + 104))(v24, *MEMORY[0x277D85260], v26);
  v0[77] = sub_252E37594();
  v8 = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  v0[78] = 0;
  v0[79] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545B48, &unk_252E5E980);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_252E3C3C0;
  v10 = type metadata accessor for HomeGraphCacheInvalidationSignal();
  v11 = swift_allocObject();
  *(v11 + 16) = 0x70617247656D6F48;
  *(v11 + 24) = 0xEF6C616E67695368;
  *(v11 + 32) = 0u;
  *(v11 + 48) = 0u;
  *(v9 + 56) = v10;
  *(v9 + 64) = &off_2864BF420;
  *(v9 + 32) = v11;
  v12 = type metadata accessor for SystemVersionCacheInvalidationSignal();
  v13 = swift_allocObject();
  *(v13 + 16) = 0xD000000000000013;
  *(v13 + 24) = 0x8000000252E99B00;
  *(v13 + 32) = 0u;
  *(v13 + 48) = 0u;
  *(v9 + 96) = v12;
  *(v9 + 104) = &off_2864BF468;
  *(v9 + 72) = v13;
  swift_beginAccess();
  v14 = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  v1[2] = v9;
  v1[3] = v14;
  swift_endAccess();
  type metadata accessor for CacheKeys();
  v15 = swift_allocObject();
  *(v15 + 16) = 0u;
  *(v15 + 32) = 0u;
  swift_beginAccess();
  v16 = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  v1[4] = v15;
  v1[5] = v16;
  swift_endAccess();
  type metadata accessor for CacheEntries();
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v17 + 24) = 0;
  swift_beginAccess();
  v18 = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  v1[6] = v17;
  v1[7] = v18;
  swift_endAccess();
  swift_beginAccess();
  v19 = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  *(v1 + 640) = 0;
  v1[81] = v19;
  swift_endAccess();
  v20 = sub_252CC4CE8(MEMORY[0x277D84F90]);
  swift_beginAccess();
  v21 = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  v1[75] = v20;
  v1[76] = v21;
  swift_endAccess();
  return v1;
}

id *IntentSelectionCache.deinit()
{
  if (qword_27F53F528 != -1)
  {
    swift_once();
  }

  v1 = sub_252E36AD4();
  __swift_project_value_buffer(v1, qword_27F544E20);
  sub_252CC3D90(0x74696E696564, 0xE600000000000000, 0xD000000000000094, 0x8000000252E98E90);
  sub_252D75B30();

  memcpy(v3, v0 + 11, sizeof(v3));
  sub_25293847C(v3, &qword_27F545B08, &qword_252E5E730);

  return v0;
}

uint64_t IntentSelectionCache.__deallocating_deinit()
{
  IntentSelectionCache.deinit();

  return swift_deallocClassInstance();
}

void sub_252D73864(uint64_t a1)
{
  v2 = v1;
  v4 = sub_252E36CA4();
  MEMORY[0x28223BE20](v4);
  v5 = sub_252E34164();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  if (qword_27F53F528 != -1)
  {
    swift_once();
  }

  v8 = sub_252E36AD4();
  __swift_project_value_buffer(v8, qword_27F544E20);
  sub_252CC3D90(0xD000000000000026, 0x8000000252E98F30, 0xD000000000000094, 0x8000000252E98E90);
  v9 = swift_allocObject();
  swift_weakInit();
  (*(v6 + 16))(v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
  v10 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  (*(v6 + 32))(v11 + v10, v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  aBlock[4] = sub_252D7C504;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_252AD686C;
  aBlock[3] = &block_descriptor_23;
  _Block_copy(aBlock);
  v17[1] = MEMORY[0x277D84F90];
  sub_252D7E80C(qword_2814B0298, MEMORY[0x277D85198], MEMORY[0x277D851A0]);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5402F8, &qword_252E3E860);
  sub_2529E6488(&qword_2814B0280, &qword_27F5402F8, &qword_252E3E860, MEMORY[0x277D83970]);
  sub_252E37824();
  sub_252E36DA4();
  swift_allocObject();
  v12 = sub_252E36D74();

  swift_beginAccess();
  v13 = *(v2 + 632);
  [v13 lock];
  *(v2 + 624) = v12;

  [v13 unlock];
  swift_endAccess();
  v14 = *(v2 + 624);
  v15 = *(v2 + 632);

  v16 = v15;
  [v16 lock];
  [v16 unlock];

  if (v14)
  {
    sub_252E37584();
  }
}

uint64_t sub_252D73C68(uint64_t a1, uint64_t a2)
{
  v3 = sub_252E36AB4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F53F528 != -1)
  {
    swift_once();
  }

  v7 = sub_252E36AD4();
  __swift_project_value_buffer(v7, qword_27F544E20);
  sub_252CC3D90(0xD000000000000026, 0x8000000252E998F0, 0xD000000000000094, 0x8000000252E98E90);
  if (qword_27F53F620 != -1)
  {
    swift_once();
  }

  v8 = qword_27F544FA8;
  sub_252E36A94();
  sub_252E375D4();
  sub_252E36A84();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v23 = v4;
    sub_252D75858();
    if ((sub_252D75DD0() & 1) == 0)
    {
      sub_252CC3D90(0xD000000000000012, 0x8000000252E99920, 0xD000000000000094, 0x8000000252E98E90);
      sub_252D75FC4();
    }

    v11 = sub_252D769A4(a2);
    if (!v12)
    {
      sub_252CC3D90(0xD00000000000001DLL, 0x8000000252E99940, 0xD000000000000094, 0x8000000252E98E90);

LABEL_17:
      v4 = v23;
      goto LABEL_18;
    }

    v13 = v11;
    v14 = v12;
    v22 = v3;
    v30[0] = 0x203A79656BLL;
    v30[1] = 0xE500000000000000;
    MEMORY[0x2530AD570]();
    sub_252CC3D90(v30[0], v30[1], 0xD000000000000094, 0x8000000252E98E90);

    swift_beginAccess();
    v15 = *(v10 + 40);

    v16 = v15;
    [v16 lock];
    [v16 unlock];

    LOBYTE(v16) = sub_252D71108(v13, v14);

    if (v16)
    {
      sub_252D762E4(v13, v14, v29);
      memcpy(v30, v29, sizeof(v30));
      if (sub_252956B94(v30) != 1)
      {

        v28[0] = 0;
        v28[1] = 0xE000000000000000;
        sub_252E379F4();

        v25 = 0xD00000000000001FLL;
        v26 = 0x8000000252E999A0;
        memcpy(v24, v30, sizeof(v24));
        memcpy(v27, v29, sizeof(v27));
        sub_2529353AC(v27, v28);
        v17 = HomeAutomationIntent.description.getter();
        v19 = v18;
        memcpy(v28, v24, sizeof(v28));
        sub_252935408(v28);
        MEMORY[0x2530AD570](v17, v19);

        sub_252CC3D90(v25, v26, 0xD000000000000094, 0x8000000252E98E90);

        sub_25293847C(v29, &qword_27F5404C8, &unk_252E3FD60);
        goto LABEL_16;
      }

      v28[0] = 0;
      v28[1] = 0xE000000000000000;
      sub_252E379F4();

      v28[0] = 0xD00000000000001FLL;
      v28[1] = 0x8000000252E99160;
      MEMORY[0x2530AD570](v13, v14);

      sub_252CC4050(v28[0], v28[1], 0xD000000000000094, 0x8000000252E98E90, 0xD00000000000001ALL, 0x8000000252E99980, 583);
    }

    else
    {
      v30[0] = 0;
      v30[1] = 0xE000000000000000;
      sub_252E379F4();

      v30[0] = 0xD000000000000015;
      v30[1] = 0x8000000252E99960;
      MEMORY[0x2530AD570](v13, v14);

      sub_252CC3D90(v30[0], v30[1], 0xD000000000000094, 0x8000000252E98E90);
    }

LABEL_16:
    v3 = v22;
    goto LABEL_17;
  }

LABEL_18:
  v20 = sub_252E375C4();
  sub_252E36A74(v20, &dword_252917000, v8, "IntentSelectionCache.ISCachePrewarmAndFetch", 43, 2, v6, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_252D7426C(uint64_t a1, uint64_t a2)
{
  v5 = sub_252E36DF4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_252E36E04();
  v28 = *(v9 - 8);
  v29 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = 0;
  v31 = 0xE000000000000000;
  swift_beginAccess();
  v13 = v2[8];
  v12 = v2[9];
  v14 = v2[10];

  v15 = v14;
  [v15 lock];
  [v15 unlock];

  if (v12)
  {
    v16 = v13;
  }

  else
  {
    v16 = 0;
  }

  if (!v12)
  {
    v12 = 0xE000000000000000;
  }

  MEMORY[0x2530AD570](v16, v12);

  MEMORY[0x2530AD570](43, 0xE100000000000000);
  MEMORY[0x2530AD570](a1, a2);
  v17 = v30;
  v18 = v31;
  if (qword_27F53F528 != -1)
  {
    swift_once();
  }

  v19 = sub_252E36AD4();
  v27[1] = __swift_project_value_buffer(v19, qword_27F544E20);
  v30 = 0;
  v31 = 0xE000000000000000;
  sub_252E379F4();

  v30 = 0x636143646578696DLL;
  v31 = 0xEF203A79654B6568;
  MEMORY[0x2530AD570](v17, v18);
  sub_252CC3D90(v30, v31, 0xD000000000000094, 0x8000000252E98E90);

  v20 = sub_252ABF638(v17, v18);
  v22 = v21;
  sub_252D7E80C(&qword_27F5412F8, MEMORY[0x277CC5588], MEMORY[0x277CC5580]);
  sub_252E36DE4();
  sub_2529E61B0(v20, v22);
  sub_252D7BB0C(v20, v22, v8);
  sub_25296464C(v20, v22);
  sub_252E36DD4();
  (*(v6 + 8))(v8, v5);
  v30 = sub_252D6F868(v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540480, &qword_252E3C910);
  sub_2529E6488(&qword_27F541110, &qword_27F540480, &qword_252E3C910, MEMORY[0x277D83958]);
  v23 = sub_252E36EA4();
  v25 = v24;

  v30 = 0;
  v31 = 0xE000000000000000;
  sub_252E379F4();

  v30 = 0xD000000000000011;
  v31 = 0x8000000252E998D0;

  MEMORY[0x2530AD570](v23, v25);

  sub_252CC3D90(v30, v31, 0xD000000000000094, 0x8000000252E98E90);

  sub_25296464C(v20, v22);
  (*(v28 + 8))(v11, v29);
  return v23;
}

void sub_252D746D8(int a1@<W0>, void *a2@<X8>)
{
  v3 = v2;
  v81 = a2;
  v80 = sub_252E36C84();
  v78 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v6 = (&v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v79 = sub_252E36D54();
  v77 = *(v79 - 8);
  v7 = MEMORY[0x28223BE20](v79);
  v9 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v76 = &v70 - v10;
  if (qword_27F53F528 != -1)
  {
    swift_once();
  }

  v72 = sub_252E36AD4();
  __swift_project_value_buffer(v72, qword_27F544E20);
  v87[0] = 0;
  v87[1] = 0xE000000000000000;
  sub_252E379F4();

  v71 = 0xD00000000000002ELL;
  v87[0] = 0xD00000000000002ELL;
  v87[1] = 0x8000000252E98F60;
  v75 = a1;
  if (a1)
  {
    v11 = 1702195828;
  }

  else
  {
    v11 = 0x65736C6166;
  }

  if (a1)
  {
    v12 = 0xE400000000000000;
  }

  else
  {
    v12 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v11, v12);

  MEMORY[0x2530AD570](41, 0xE100000000000000);
  sub_252CC3D90(v87[0], v87[1], 0xD000000000000094, 0x8000000252E98E90);

  swift_beginAccess();
  v13 = *(v2 + 640);
  v14 = *(v2 + 648);
  [v14 lock];
  [v14 unlock];

  if (v13 != 1)
  {
    v73 = "CoolingResponseHandler.swift";
    swift_beginAccess();
    v18 = *(v3 + 648);
    [v18 lock];
    *(v3 + 640) = 1;
    [v18 unlock];
    swift_endAccess();
    swift_beginAccess();
    v19 = *(v3 + 624);
    v74 = v3;
    v20 = *(v3 + 632);

    v21 = v20;
    [v21 lock];
    [v21 &off_279711178];

    if (v19)
    {
      sub_252E36D14();
      *v6 = 200;
      v22 = v78;
      v23 = v80;
      (*(v78 + 104))(v6, *MEMORY[0x277D85178], v80);
      v24 = v76;
      sub_252E36D24();
      (*(v22 + 8))(v6, v23);
      v25 = *(v77 + 8);
      v26 = v79;
      v25(v9, v79);
      v27 = sub_252E36D64();

      v25(v24, v26);
      v28 = v27 & 1;
    }

    else
    {
      v28 = 2;
    }

    v87[0] = 0;
    v87[1] = 0xE000000000000000;
    sub_252E379F4();
    v80 = 0xD00000000000001FLL;
    MEMORY[0x2530AD570]();
    v29 = v74;
    v30 = *(v74 + 624);
    v31 = *(v74 + 632);

    v32 = v31;
    [v32 lock];
    [v32 unlock];

    v86[0] = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545B10, &qword_252E5E738);
    v33 = sub_252E36F94();
    MEMORY[0x2530AD570](v33);

    MEMORY[0x2530AD570](0xD000000000000013, 0x8000000252E98FB0);
    swift_beginAccess();
    v35 = *(v29 + 64);
    v34 = *(v29 + 72);
    v36 = *(v29 + 80);

    v37 = v36;
    [v37 lock];
    [v37 unlock];

    v86[0] = v35;
    v86[1] = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
    v38 = sub_252E36F94();
    MEMORY[0x2530AD570](v38);

    v39 = v73;
    sub_252CC3D90(v87[0], v87[1], 0xD000000000000094, v73 | 0x8000000000000000);

    swift_beginAccess();
    v40 = *(v29 + 648);
    [v40 lock];
    *(v29 + 640) = 0;
    [v40 unlock];
    swift_endAccess();
    swift_beginAccess();
    v41 = *(v29 + 632);
    [v41 lock];
    *(v29 + 624) = 0;

    [v41 unlock];
    v42 = swift_endAccess();
    if (v28 == 2 || (v28 & 1) != 0)
    {
      v43 = " for generated key ";
      v15 = 0xD000000000000010;
    }

    else
    {
      if ((v75 & 1) == 0)
      {
        v58 = _s22HomeAutomationInternal20IntentSelectionCacheC6sharedACSgvgZ_0(v42);
        if (v58)
        {
          v59 = v58;
          swift_beginAccess();
          memcpy(v87, v59 + 11, sizeof(v87));
          v60 = v87[63];
          sub_252938414(v87, v86, &qword_27F545B08, &qword_252E5E730);
          [v60 lock];
          sub_252938414(v87, v86, &qword_27F5404C8, &unk_252E3FD60);
          [v60 unlock];

          sub_25293847C(v87, &qword_27F545B08, &qword_252E5E730);
          memcpy(v88, v87, sizeof(v88));
          if (sub_252956B94(v88) != 1)
          {
            v86[0] = 0;
            v86[1] = 0xE000000000000000;
            sub_252E379F4();

            v82[0] = 0xD000000000000015;
            v82[1] = 0x8000000252E98FF0;
            memcpy(v86, v88, 0x1F8uLL);
            v65 = HomeAutomationIntent.description.getter();
            MEMORY[0x2530AD570](v65);

            sub_252CC3D90(v82[0], v82[1], 0xD000000000000094, v39 | 0x8000000000000000);

            memcpy(v81, v87, 0x1F8uLL);
            goto LABEL_23;
          }
        }

        v15 = 0x2D65686361435349;
        v16 = 0xEE0064657373696DLL;
        goto LABEL_18;
      }

      sub_252CC3D90(0xD00000000000004DLL, 0x8000000252E99010, 0xD000000000000094, v39 | 0x8000000000000000);
      v46 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0(v45);
      v47 = sub_252AC5368(0xD000000000000014, 0x8000000252E5E720);

      if (v47 != 2 && (v47 & 1) == 0)
      {
        if (qword_27F53F500 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v72, qword_27F544DA8);
        sub_252CC4050(0xD000000000000053, 0x8000000252E82DF0, 0xD000000000000094, v39 | 0x8000000000000000, 0xD000000000000010, 0x8000000252E99180, 658);
      }

      v49 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0(v48);
      v50 = *&v49[OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_stableMatterAccessoriesHash];
      v51 = *&v49[OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_stableMatterAccessoriesHash + 8];

      if (v51)
      {
        v87[0] = 0;
        v87[1] = 0xE000000000000000;
        sub_252E379F4();

        v87[0] = 0xD00000000000001DLL;
        v87[1] = 0x8000000252E99100;
        MEMORY[0x2530AD570](v50, v51);
        sub_252CC3D90(v87[0], v87[1], 0xD000000000000094, v39 | 0x8000000000000000);

        v52 = sub_252D7426C(v50, v51);
        v54 = v53;

        swift_beginAccess();
        v55 = *(v29 + 80);

        [v55 lock];
        *(v29 + 64) = v52;
        *(v29 + 72) = v54;

        [v55 unlock];
        swift_endAccess();
        v87[0] = 0x203A79656BLL;
        v87[1] = 0xE500000000000000;
        MEMORY[0x2530AD570](v52, v54);
        sub_252CC3D90(v87[0], v87[1], 0xD000000000000094, v39 | 0x8000000000000000);

        swift_beginAccess();
        v56 = *(v29 + 40);

        v57 = v56;
        [v57 lock];
        [v57 unlock];

        LOBYTE(v57) = sub_252D71108(v52, v54);

        if (v57)
        {
          sub_252D762E4(v52, v54, v86);
          memcpy(v87, v86, 0x1F8uLL);
          if (sub_252956B94(v87) == 1)
          {
            v88[0] = 0;
            v88[1] = 0xE000000000000000;
            sub_252E379F4();

            v88[0] = v80;
            v88[1] = 0x8000000252E99160;
            MEMORY[0x2530AD570](v52, v54);

            sub_252CC4050(v88[0], v88[1], 0xD000000000000094, v73 | 0x8000000000000000, 0xD000000000000010, 0x8000000252E99180, 677);
          }

          else
          {

            v88[0] = 0;
            v88[1] = 0xE000000000000000;
            sub_252E379F4();

            v83 = v71;
            v84 = 0x8000000252E991A0;
            memcpy(v82, v87, sizeof(v82));
            memcpy(v85, v86, 0x1F8uLL);
            sub_2529353AC(v85, v88);
            v66 = HomeAutomationIntent.description.getter();
            v68 = v67;
            memcpy(v88, v82, sizeof(v88));
            sub_252935408(v88);
            MEMORY[0x2530AD570](v66, v68);

            sub_252CC3D90(v83, v84, 0xD000000000000094, v73 | 0x8000000000000000);
          }

          v44 = v86;
          goto LABEL_22;
        }

        v87[0] = 0;
        v87[1] = 0xE000000000000000;
        sub_252E379F4();
        MEMORY[0x2530AD570](0xD000000000000034, 0x8000000252E99120);
        MEMORY[0x2530AD570](v52, v54);

        sub_252CC3D90(v87[0], v87[1], 0xD000000000000094, v39 | 0x8000000000000000);

        goto LABEL_20;
      }

      sub_252CC3D90(0xD000000000000046, 0x8000000252E99060, 0xD000000000000094, v39 | 0x8000000000000000);
      v62 = _s22HomeAutomationInternal20IntentSelectionCacheC6sharedACSgvgZ_0(v61);
      if (v62)
      {
        v63 = v62;
        swift_beginAccess();
        memcpy(v87, v63 + 11, sizeof(v87));
        v64 = v87[63];
        sub_252938414(v87, v86, &qword_27F545B08, &qword_252E5E730);
        [v64 lock];
        sub_252938414(v87, v86, &qword_27F5404C8, &unk_252E3FD60);
        [v64 unlock];

        sub_25293847C(v87, &qword_27F545B08, &qword_252E5E730);
        memcpy(v88, v87, sizeof(v88));
        if (sub_252956B94(v88) != 1)
        {
          v86[0] = 0;
          v86[1] = 0xE000000000000000;
          sub_252E379F4();

          v82[0] = 0xD000000000000020;
          v82[1] = 0x8000000252E990D0;
          memcpy(v86, v88, 0x1F8uLL);
          v69 = HomeAutomationIntent.description.getter();
          MEMORY[0x2530AD570](v69);

          sub_252CC3D90(v82[0], v82[1], 0xD000000000000094, v39 | 0x8000000000000000);

          goto LABEL_21;
        }
      }

      v43 = "ting to fallback cache";
      v15 = 0xD000000000000019;
    }

    v16 = v43 | 0x8000000000000000;
LABEL_18:
    v17 = v39 | 0x8000000000000000;
    goto LABEL_19;
  }

  v15 = 0xD000000000000030;
  v16 = 0x8000000252E991D0;
  v17 = 0x8000000252E98E90;
LABEL_19:
  sub_252CC3D90(v15, v16, 0xD000000000000094, v17);
LABEL_20:
  sub_25293DEE0(v87);
LABEL_21:
  v44 = v87;
LABEL_22:
  memcpy(v81, v44, 0x1F8uLL);
LABEL_23:
  sub_252D755C8();
}

void sub_252D755C8()
{
  swift_beginAccess();
  memcpy(__dst, (v0 + 88), sizeof(__dst));
  v1 = __dst[63];
  sub_252938414(__dst, v14, &qword_27F545B08, &qword_252E5E730);
  [v1 lock];
  sub_252938414(__dst, v14, &qword_27F5404C8, &unk_252E3FD60);
  [v1 unlock];
  sub_25293847C(__dst, &qword_27F545B08, &qword_252E5E730);
  memcpy(v14, __dst, 0x1F8uLL);
  v2 = sub_252956B94(v14);
  if (v2 != 1)
  {
    sub_25293847C(__dst, &qword_27F5404C8, &unk_252E3FD60);
  }

  v3 = [objc_allocWithZone(MEMORY[0x277D57570]) init];
  if (v3)
  {
    v4 = v3;
    v5 = [objc_allocWithZone(MEMORY[0x277D57580]) init];
    if (v5)
    {
      v6 = v5;
      sub_252C78830(v2 != 1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_252E3C130;
      *(v7 + 32) = v6;
      sub_25293F638(0, &qword_27F5418B8, 0x277D57580);
      v8 = v6;
      v9 = sub_252E37254();

      [v4 setHomeAutomationRequests_];

      v11 = sub_252DB7C84(v10);
      swift_beginAccess();
      v12 = v4;
      MEMORY[0x2530AD700]();
      if (*((v11[4] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v11[4] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_252E372A4();
      }

      sub_252E372D4();
      swift_endAccess();

      sub_252DB7C84(v13);
      sub_252DB649C(0, 0, 1);
    }

    else
    {
    }
  }
}

uint64_t sub_252D75858()
{
  v1 = v0;
  if (qword_27F53F528 != -1)
  {
    swift_once();
  }

  v2 = sub_252E36AD4();
  __swift_project_value_buffer(v2, qword_27F544E20);
  sub_252CC3D90(0xD000000000000010, 0x8000000252E99760, 0xD000000000000094, 0x8000000252E98E90);
  swift_beginAccess();
  v3 = v0[78];
  v4 = v1[79];

  v5 = v4;
  [v5 lock];
  [v5 unlock];

  if (v3)
  {
    sub_252E36D84();
  }

  swift_beginAccess();
  v6 = v1[10];
  [v6 lock];
  v1[8] = 0;
  v1[9] = 0;

  [v6 unlock];
  swift_endAccess();
  sub_25293DEE0(__src);
  swift_beginAccess();
  v7 = v1[74];
  [v7 lock];
  memcpy(__dst, v1 + 11, sizeof(__dst));
  memcpy(v1 + 11, __src, 0x1F8uLL);
  sub_25293847C(__dst, &qword_27F5404C8, &unk_252E3FD60);
  [v7 unlock];
  swift_endAccess();
  swift_beginAccess();
  v9 = v1[2];
  v8 = v1[3];

  v10 = v8;
  [v10 lock];
  [v10 unlock];

  v11 = *(v9 + 16);
  if (v11)
  {
    v12 = v9 + 32;
    do
    {
      sub_252929E74(v12, v18);
      v13 = v19;
      v14 = v20;
      __swift_project_boxed_opaque_existential_1(v18, v19);
      (*(v14 + 56))(v13, v14);
      __swift_destroy_boxed_opaque_existential_1(v18);
      v12 += 40;
      --v11;
    }

    while (v11);
  }

  swift_beginAccess();
  v15 = v1[5];

  v16 = v15;
  [v16 lock];
  [v16 unlock];

  sub_252D70D50();
}

uint64_t sub_252D75B30()
{
  v1 = v0;
  if (qword_27F53F528 != -1)
  {
    swift_once();
  }

  v2 = sub_252E36AD4();
  __swift_project_value_buffer(v2, qword_27F544E20);
  sub_252CC3D90(0xD000000000000019, 0x8000000252E999C0, 0xD000000000000094, 0x8000000252E98E90);
  swift_beginAccess();
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);

  v5 = v3;
  [v5 lock];
  [v5 unlock];

  v6 = *(v4 + 16);
  if (v6)
  {
    v7 = v4 + 32;
    do
    {
      sub_252929E74(v7, v22);
      v8 = v23;
      v9 = v24;
      __swift_project_boxed_opaque_existential_1(v22, v23);
      (*(v9 + 64))(0, v8, v9);
      __swift_destroy_boxed_opaque_existential_1(v22);
      v7 += 40;
      --v6;
    }

    while (v6);
  }

  swift_beginAccess();
  v10 = *(v1 + 40);

  v11 = v10;
  [v11 lock];
  [v11 unlock];

  v12 = sub_252D71B2C();

  if (v12)
  {
    swift_beginAccess();
    v13 = *(v1 + 56);

    v14 = v13;
    [v14 lock];
    [v14 unlock];

    v15 = v12[2];
    if (v15)
    {
      v16 = v12 + 5;
      do
      {
        v17 = *(v16 - 1);
        v18 = *v16;

        sub_252D724A0(v17, v18);

        v16 += 2;
        --v15;
      }

      while (v15);
    }
  }

  swift_beginAccess();
  v19 = *(v1 + 56);

  v20 = v19;
  [v20 lock];
  [v20 unlock];

  sub_252D7289C();
}

uint64_t sub_252D75DD0()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  v3 = v2;
  [v3 lock];
  [v3 unlock];

  v4 = *(v1 + 16);
  if (v4)
  {
    v5 = 0;
    v6 = v1 + 32;
    while (1)
    {
      if (v5 >= *(v1 + 16))
      {
        __break(1u);
        goto LABEL_10;
      }

      sub_252929E74(v6, v16);
      v7 = v17;
      v8 = v18;
      __swift_project_boxed_opaque_existential_1(v16, v17);
      if (((*(v8 + 32))(v7, v8) & 1) == 0)
      {
        break;
      }

      ++v5;
      __swift_destroy_boxed_opaque_existential_1(v16);
      v6 += 40;
      if (v4 == v5)
      {
        goto LABEL_6;
      }
    }

    if (qword_27F53F528 == -1)
    {
      goto LABEL_8;
    }

LABEL_10:
    swift_once();
LABEL_8:
    v10 = sub_252E36AD4();
    __swift_project_value_buffer(v10, qword_27F544E20);
    v11 = v17;
    v12 = v18;
    __swift_project_boxed_opaque_existential_1(v16, v17);
    v14 = (*(v12 + 8))(v11, v12);
    v15 = v13;
    MEMORY[0x2530AD570](0x20544F4E20736920, 0xED000064696C6176);
    sub_252CC3D90(v14, v15, 0xD000000000000094, 0x8000000252E98E90);

    __swift_destroy_boxed_opaque_existential_1(v16);
    return 0;
  }

  else
  {
LABEL_6:

    return 1;
  }
}

uint64_t sub_252D75FC4()
{
  v1 = v0;
  if (qword_27F53F528 != -1)
  {
    swift_once();
  }

  v2 = sub_252E36AD4();
  __swift_project_value_buffer(v2, qword_27F544E20);
  sub_252CC3D90(0x7365722065666153, 0xEE006C6C61207465, 0xD000000000000094, 0x8000000252E98E90);
  swift_beginAccess();
  v3 = *(v0 + 80);
  [*(v1 + 80) lock];
  *(v1 + 64) = 0;
  *(v1 + 72) = 0;

  [v3 unlock];
  swift_endAccess();
  sub_25293DEE0(__src);
  swift_beginAccess();
  v4 = *(v1 + 592);
  [v4 lock];
  memcpy(__dst, (v1 + 88), sizeof(__dst));
  memcpy((v1 + 88), __src, 0x1F8uLL);
  sub_25293847C(__dst, &qword_27F5404C8, &unk_252E3FD60);
  [v4 unlock];
  swift_endAccess();
  result = sub_252D75DD0();
  if ((result & 1) == 0)
  {
    swift_beginAccess();
    v7 = *(v1 + 16);
    v6 = *(v1 + 24);

    v8 = v6;
    [v8 lock];
    [v8 unlock];

    v9 = *(v7 + 16);
    if (v9)
    {
      v10 = v7 + 32;
      do
      {
        sub_252929E74(v10, v22);
        v11 = v23;
        v12 = v24;
        __swift_project_boxed_opaque_existential_1(v22, v23);
        (*(v12 + 64))(0, v11, v12);
        __swift_destroy_boxed_opaque_existential_1(v22);
        v10 += 40;
        --v9;
      }

      while (v9);
    }

    swift_beginAccess();
    v13 = *(v1 + 40);

    v14 = v13;
    [v14 lock];
    [v14 unlock];

    v15 = sub_252D716B4();

    if (v15)
    {
      swift_beginAccess();
      v16 = *(v1 + 56);

      v17 = v16;
      [v17 lock];
      [v17 unlock];

      v18 = v15[2];
      if (v18)
      {
        v19 = v15 + 5;
        do
        {
          v20 = *(v19 - 1);
          v21 = *v19;

          sub_252D724A0(v20, v21);

          v19 += 2;
          --v18;
        }

        while (v18);
      }
    }
  }

  return result;
}

void *sub_252D762E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  if (qword_27F53F528 != -1)
  {
    swift_once();
  }

  v7 = sub_252E36AD4();
  __swift_project_value_buffer(v7, qword_27F544E20);
  sub_252E379F4();

  v22[0] = 0xD00000000000001FLL;
  v22[1] = 0x8000000252E99840;
  MEMORY[0x2530AD570](a1, a2);
  sub_252CC3D90(0xD00000000000001FLL, 0x8000000252E99840, 0xD000000000000094, 0x8000000252E98E90);

  swift_beginAccess();
  v8 = *(v3 + 40);

  v9 = v8;
  [v9 lock];
  [v9 unlock];

  v10 = sub_252D70FF4(a1, a2, 1);

  if (v10)
  {
    swift_beginAccess();
    v11 = *(v3 + 56);

    v12 = v11;
    [v12 lock];
    [v12 unlock];

    v13 = sub_252D71EF0(a1, a2);

    if (v13)
    {
      memcpy(__dst, (v13 + 48), sizeof(__dst));
      memmove(__src, (v13 + 48), 0x1F8uLL);
      GEOLocationCoordinate2DMake();
      swift_beginAccess();
      v14 = *(v4 + 592);
      sub_2529353AC(__dst, v22);
      [v14 lock];
      memcpy(v21, (v4 + 88), sizeof(v21));
      memcpy((v4 + 88), __src, 0x1F8uLL);
      sub_25293847C(v21, &qword_27F5404C8, &unk_252E3FD60);
      [v14 unlock];
      swift_endAccess();
      memcpy(v22, (v4 + 88), sizeof(v22));
      v15 = v22[63];
      sub_252938414(v22, v18, &qword_27F545B08, &qword_252E5E730);
      [v15 lock];
      memcpy(a3, v22, 0x1F8uLL);
      sub_252938414(v22, v18, &qword_27F5404C8, &unk_252E3FD60);
      [v15 unlock];

      return sub_25293847C(v22, &qword_27F545B08, &qword_252E5E730);
    }

    sub_252E379F4();

    v22[0] = 0xD000000000000027;
    v22[1] = 0x8000000252E99880;
    MEMORY[0x2530AD570](a1, a2);
    sub_252CC4050(0xD000000000000027, 0x8000000252E99880, 0xD000000000000094, 0x8000000252E98E90, 0xD00000000000001DLL, 0x8000000252E998B0, 829);
  }

  else
  {
    sub_252E379F4();

    v22[0] = 0xD000000000000014;
    v22[1] = 0x8000000252E99860;
    MEMORY[0x2530AD570](a1, a2);
    sub_252CC3D90(0xD000000000000014, 0x8000000252E99860, 0xD000000000000094, 0x8000000252E98E90);
  }

  sub_25293DEE0(v22);
  return memcpy(a3, v22, 0x1F8uLL);
}

uint64_t sub_252D76744(void *__src, uint64_t a2, uint64_t a3)
{
  memcpy(__dst, __src, sizeof(__dst));
  if (qword_27F53F528 != -1)
  {
    swift_once();
  }

  v6 = sub_252E36AD4();
  __swift_project_value_buffer(v6, qword_27F544E20);
  v18[0] = 0;
  v18[1] = 0xE000000000000000;
  sub_252E379F4();

  strcpy(v15, "Insert key: ");
  BYTE5(v15[1]) = 0;
  HIWORD(v15[1]) = -5120;
  MEMORY[0x2530AD570](a2, a3);
  MEMORY[0x2530AD570](0x746E65746E69202CLL, 0xEA0000000000203ALL);
  memcpy(__srca, __dst, sizeof(__srca));
  sub_2529353AC(__dst, v18);
  v7 = HomeAutomationIntent.description.getter();
  v9 = v8;
  memcpy(v18, __srca, sizeof(v18));
  sub_252935408(v18);
  MEMORY[0x2530AD570](v7, v9);

  sub_252CC3D90(v15[0], v15[1], 0xD000000000000094, 0x8000000252E98E90);

  swift_beginAccess();
  v10 = *(v3 + 40);

  v11 = v10;
  [v11 lock];
  [v11 unlock];

  sub_252D711F0(a2, a3);

  swift_beginAccess();
  v12 = *(v3 + 56);

  v13 = v12;
  [v13 lock];
  [v13 unlock];

  memcpy(__srca, __dst, sizeof(__srca));
  sub_252D722C0(__srca, a2, a3);
}

void *sub_252D769A4(uint64_t a1)
{
  v65 = sub_252E36DF4();
  v64 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v63 = &v61[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v67 = sub_252E36E04();
  v66 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v70 = &v61[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_252E358D4();
  v72 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v61[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_252E341A4();
  v68 = *(v7 - 8);
  v69 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v61[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_252E34164();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v61[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_252E36AB4();
  v77 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v78 = &v61[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_27F53F528 != -1)
  {
    swift_once();
  }

  v16 = sub_252E36AD4();
  v17 = __swift_project_value_buffer(v16, qword_27F544E20);
  v74 = "CoolingResponseHandler.swift";
  v75 = v17;
  sub_252CC3D90(0xD000000000000010, 0x8000000252E994E0, 0xD000000000000094, 0x8000000252E98E90);
  if (qword_27F53F620 != -1)
  {
    swift_once();
  }

  v18 = qword_27F544FA8;
  sub_252E36A94();
  sub_252E375D4();
  v76 = v18;
  sub_252E36A84();
  v19 = sub_252D7CFFC(a1);
  v62 = v20;
  if ((v20 & 1) == 0)
  {
    v71 = v14;
    v21 = v73;
    swift_beginAccess();
    v22 = v21[75];
    v23 = v21[76];

    v24 = v23;
    [v24 lock];
    [v24 unlock];

    if (*(v22 + 16))
    {
      v25 = sub_252A44B34(v19);
      if (v26)
      {
        v27 = *(v22 + 56) + 16 * v25;
        v28 = *v27;
        v29 = *(v27 + 8);

        v30 = v73;
        swift_beginAccess();
        v31 = v30[10];
        swift_bridgeObjectRetain_n();
        [v31 lock];
        v30[8] = v28;
        v30[9] = v29;

        [v31 unlock];
        swift_endAccess();
        v80 = 0;
        v81 = 0xE000000000000000;
        sub_252E379F4();

        v80 = 0xD00000000000002CLL;
        v81 = 0x8000000252E995B0;
        MEMORY[0x2530AD570](v28, v29);

        sub_252CC3D90(v80, v81, 0xD000000000000094, v74 | 0x8000000000000000);

        v14 = v71;
        goto LABEL_20;
      }
    }

    v14 = v71;
  }

  (*(v11 + 16))(v13, a1, v10);
  v32 = (*(v11 + 88))(v13, v10);
  if (v32 == *MEMORY[0x277D5C128])
  {
    (*(v11 + 96))(v13, v10);
    v33 = v72;
    (*(v72 + 32))(v6, v13, v4);
    v28 = sub_252D7E2C8();
    v35 = v34;
    (*(v33 + 8))(v6, v4);
  }

  else
  {
    if (v32 != *MEMORY[0x277D5C160])
    {
      sub_252CC3D90(0xD000000000000038, 0x8000000252E99500, 0xD000000000000094, v74 | 0x8000000000000000);
      (*(v11 + 8))(v13, v10);
      v28 = 0;
      goto LABEL_20;
    }

    (*(v11 + 96))(v13, v10);
    v37 = v68;
    v36 = v69;
    (*(v68 + 32))(v9, v13, v69);
    v28 = sub_252D7DD34();
    v35 = v38;
    (*(v37 + 8))(v9, v36);
  }

  v39 = v74;
  if (v35)
  {
    v82 = v28;
    v83 = v35;

    v40 = sub_252D7E5B4(v28, v35);
    v42 = v41;

    if (v42)
    {
      MEMORY[0x2530AD570](v40, v42);

      v28 = v82;
      v35 = v83;
    }

    v80 = 0;
    v81 = 0xE000000000000000;
    sub_252E379F4();

    v80 = 0xD000000000000014;
    v81 = 0x8000000252E99570;
    MEMORY[0x2530AD570](v28, v35);
    sub_252CC3D90(v80, v81, 0xD000000000000094, v39 | 0x8000000000000000);

    sub_252E329C4();
    swift_allocObject();
    sub_252E329B4();
    v80 = v28;
    v81 = v35;
    v46 = sub_252E329A4();
    v69 = v19;
    v71 = v14;
    v48 = v47;

    sub_252D7E80C(&qword_27F5412F8, MEMORY[0x277CC5588], MEMORY[0x277CC5580]);
    v49 = v63;
    v50 = v65;
    sub_252E36DE4();
    sub_2529E61B0(v46, v48);
    sub_252D7BB0C(v46, v48, v49);
    v72 = v48;
    sub_25296464C(v46, v48);
    v51 = v70;
    sub_252E36DD4();
    (*(v64 + 8))(v49, v50);
    v80 = sub_252D6F868(v51);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540480, &qword_252E3C910);
    sub_2529E6488(&qword_27F541110, &qword_27F540480, &qword_252E3C910, MEMORY[0x277D83958]);
    v28 = sub_252E36EA4();
    v53 = v52;

    v54 = v73;
    swift_beginAccess();
    v55 = v54[10];

    [v55 lock];
    v54[8] = v28;
    v54[9] = v53;

    [v55 unlock];
    swift_endAccess();
    v80 = 0;
    v81 = 0xE000000000000000;
    sub_252E379F4();

    v80 = 0xD000000000000017;
    v81 = 0x8000000252E99590;
    MEMORY[0x2530AD570](v28, v53);

    sub_252CC3D90(v80, v81, 0xD000000000000094, v39 | 0x8000000000000000);

    if ((v62 & 1) == 0)
    {
      swift_beginAccess();
      v56 = v54[75];
      v57 = v54;
      v58 = v54[76];
      [v58 &selRef_setHomeEntityName_];

      [v58 unlock];

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v79 = v56;
      sub_2529FBAF8(v28, v53, v69, isUniquelyReferenced_nonNull_native);
      v60 = v79;
      [v58 &selRef_setHomeEntityName_];
      v57[75] = v60;

      [v58 unlock];
      swift_endAccess();
    }

    sub_25296464C(v46, v72);
    (*(v66 + 8))(v70, v67);
    v14 = v71;
  }

  else
  {
    sub_252CC3D90(0xD000000000000027, 0x8000000252E99540, 0xD000000000000094, v74 | 0x8000000000000000);
  }

LABEL_20:
  v43 = sub_252E375C4();
  v44 = v78;
  sub_252E36A74(v43, &dword_252917000, v76, "IntentSelectionCache.ISCacheKeyGeneration", 41, 2, v78, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);
  (*(v77 + 8))(v44, v14);
  return v28;
}

uint64_t sub_252D775C8()
{
  v25 = sub_252E34C14();
  v26 = v0;
  MEMORY[0x2530AD570](91, 0xE100000000000000);
  v29 = v25;
  v30 = v26;
  v25 = sub_252E34C24();

  sub_252D78084(&v25, sub_252934804, sub_252D78234);

  v1 = v25;
  v2 = *(v25 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = 0;
    v5 = v25 + 32;
    v16 = v25 + 32;
    do
    {
      v17 = v3;
      v6 = v5 + 40 * v4;
      v7 = v4;
      while (1)
      {
        if (v7 >= *(v1 + 16))
        {
          __break(1u);

          __break(1u);
          return result;
        }

        v4 = v7 + 1;
        sub_252929E74(v6, &v25);
        sub_252929E74(&v25, v20);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540238, &qword_252E610B0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545B18, &qword_252E5E940);
        if (swift_dynamicCast())
        {
          break;
        }

        v19 = 0;
        memset(v18, 0, sizeof(v18));
        sub_25293847C(v18, &qword_27F545B20, &qword_252E5E948);
        if (qword_27F53F528 != -1)
        {
          swift_once();
        }

        v8 = sub_252E36AD4();
        __swift_project_value_buffer(v8, qword_27F544E20);
        v21 = 0;
        v22 = 0xE000000000000000;
        sub_252E379F4();

        v21 = 0xD000000000000012;
        v22 = 0x8000000252E99820;
        __swift_project_boxed_opaque_existential_1(&v25, v27);
        v20[0] = swift_getDynamicType();
        v20[1] = v28;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545B30, &qword_252E5E968);
        v9 = sub_252E36F94();
        MEMORY[0x2530AD570](v9);

        MEMORY[0x2530AD570](544175136, 0xE400000000000000);
        v20[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545B38, &qword_252E5E970);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545B40, &qword_252E5E978);
        v10 = sub_252E36F94();
        MEMORY[0x2530AD570](v10);

        sub_252CC3D90(v21, v22, 0xD000000000000094, 0x8000000252E98E90);

        __swift_destroy_boxed_opaque_existential_1(&v25);
        v6 += 40;
        ++v7;
        if (v2 == v4)
        {
          goto LABEL_15;
        }
      }

      sub_252927BEC(v18, &v21);
      if (v17)
      {
        MEMORY[0x2530AD570](44, 0xE100000000000000);
      }

      v11 = v23;
      v12 = v24;
      __swift_project_boxed_opaque_existential_1(&v21, v23);
      v13 = (*(v12 + 8))(v11, v12);
      if (v14)
      {
        MEMORY[0x2530AD570](v13);
      }

      __swift_destroy_boxed_opaque_existential_1(&v25);
      __swift_destroy_boxed_opaque_existential_1(&v21);
      v3 = 1;
      v5 = v16;
    }

    while (v2 - 1 != v7);
  }

LABEL_15:

  MEMORY[0x2530AD570](93, 0xE100000000000000);
  return v29;
}

uint64_t sub_252D7798C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540460, &qword_252E5E960);
  MEMORY[0x28223BE20](v0);
  v1 = sub_252E349A4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_252E34A84();
  v23 = v5;
  MEMORY[0x2530AD570](123, 0xE100000000000000);
  v21 = sub_252E34AA4();

  sub_252D77FDC(&v21);

  v6 = *(v21 + 16);
  if (v6)
  {
    v7 = *(v2 + 72);
    v8 = *(v2 + 16);
    v16 = (*(v2 + 80) + 32) & ~*(v2 + 80);
    v17 = v21;
    v19 = v2 + 16;
    v20 = v7;
    v18 = v8;
    v8(v4, v21 + v16, v1);
    sub_252E34964();
    v9 = sub_252E36F94();
    MEMORY[0x2530AD570](v9);

    v10 = *(v2 + 8);
    v10(v4, v1);
    v11 = v6 - 1;
    if (v6 != 1)
    {
      v12 = v17 + v20 + v16;
      do
      {
        v18(v4, v12, v1);
        MEMORY[0x2530AD570](43, 0xE100000000000000);
        sub_252E34964();
        v13 = sub_252E36F94();
        MEMORY[0x2530AD570](v13);

        v10(v4, v1);
        v12 += v20;
        --v11;
      }

      while (v11);
    }
  }

  MEMORY[0x2530AD570](125, 0xE100000000000000);
  return v22;
}

uint64_t sub_252D77C44(void *a1)
{
  v43 = sub_252E32E04();
  v3 = *(v43 - 8);
  v4 = MEMORY[0x28223BE20](v43);
  v42 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v41 = &v30 - v6;
  v7 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_2529346DC(v7);
  }

  v8 = v7[2];
  v35 = v7 + 4;
  v49[0] = v7 + 4;
  v49[1] = v8;
  result = sub_252E37D74();
  if (result >= v8)
  {
    if (v8 >= 2)
    {
      v32 = a1;
      v33 = v1;
      v39 = (v3 + 8);
      v40 = (v3 + 16);
      v31 = v7;
      v12 = v7 + 5;
      v13 = -1;
      v14 = 1;
      v34 = v8;
      do
      {
        v36 = v14;
        v37 = v13;
        v15 = &v35[3 * v14];
        v16 = v15[1];
        v17 = v15[2];
        v44 = v13;
        v38 = v12;
        do
        {
          v18 = v12[1];
          v49[4] = *v12;
          v19 = OBJC_IVAR____TtC22HomeAutomationInternal34IntentSelectionCacheRecordMetadata_lastAccessDate;
          v46 = v16;
          swift_beginAccess();
          v20 = v41;
          v21 = *v40;
          v22 = v43;
          (*v40)(v41, v17 + v19, v43);
          v23 = OBJC_IVAR____TtC22HomeAutomationInternal34IntentSelectionCacheRecordMetadata_lastAccessDate;
          swift_beginAccess();
          v24 = v18 + v23;
          v25 = v42;
          v21(v42, v24, v22);

          v45 = sub_252E32DD4();
          v26 = *v39;
          (*v39)(v25, v22);
          v26(v20, v22);

          if (v45 >= 2)
          {
            break;
          }

          v27 = v12[2];
          v16 = v12[3];
          v17 = v12[4];
          *(v12 + 1) = *(v12 - 1);
          v12[4] = v12[1];
          *(v12 - 1) = v27;
          *v12 = v16;
          v12[1] = v17;
          v12 -= 3;
        }

        while (!__CFADD__(v44++, 1));
        v14 = v36 + 1;
        v12 = v38 + 3;
        v13 = v37 - 1;
      }

      while (v36 + 1 != v34);
      a1 = v32;
      v7 = v31;
    }
  }

  else
  {
    v10 = result;
    if (v8 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540200, &qword_252E3C028);
      v11 = sub_252E372B4();
      *(v11 + 16) = v8 >> 1;
    }

    else
    {
      v11 = MEMORY[0x277D84F90];
    }

    v48[0] = v11 + 32;
    v48[1] = v8 >> 1;
    v29 = v11;
    sub_252D78888(v48, v47, v49, v10);
    *(v29 + 16) = 0;
  }

  *a1 = v7;
  return result;
}

uint64_t sub_252D77FDC(void *a1)
{
  v2 = *(sub_252E349A4() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_2529347B8(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_252D78108(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_252D78084(uint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void *))
{
  v6 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = a2(v6);
  }

  v7 = *(v6 + 16);
  v9[0] = v6 + 32;
  v9[1] = v7;
  result = a3(v9);
  *a1 = v6;
  return result;
}

uint64_t sub_252D78108(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_252E37D74();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_252E349A4();
        v6 = sub_252E372B4();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_252E349A4() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_252D793D4(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_252D7833C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_252D78234(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_252E37D74();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540238, &qword_252E610B0);
        v5 = sub_252E372B4();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_252D7A0B0(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_252D786E4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_252D7833C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540460, &qword_252E5E960);
  MEMORY[0x28223BE20](v54);
  v53 = &v37 - v8;
  v9 = sub_252E349A4();
  v10 = MEMORY[0x28223BE20](v9);
  v47 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v55 = &v37 - v13;
  result = MEMORY[0x28223BE20](v12);
  v17 = &v37 - v15;
  v39 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v20 = *(v16 + 16);
    v19 = v16 + 16;
    v21 = *(v19 + 56);
    v48 = (v19 - 8);
    v49 = v20;
    v51 = v9;
    v52 = v19;
    v22 = v18 + v21 * (a3 - 1);
    v44 = -v21;
    v45 = (v19 + 16);
    v23 = a1 - a3;
    v46 = v18;
    v38 = v21;
    v24 = v18 + v21 * a3;
    v50 = &v37 - v15;
LABEL_6:
    v42 = v22;
    v43 = a3;
    v40 = v24;
    v41 = v23;
    v26 = v23;
    while (1)
    {
      v27 = v49;
      v49(v17, v24, v9);
      v27(v55, v22, v9);
      sub_252E34964();
      v28 = sub_252E36F94();
      v30 = v29;
      sub_252E34964();
      if (v28 == sub_252E36F94() && v30 == v31)
      {

        v25 = *v48;
        v9 = v51;
        (*v48)(v55, v51);
        v17 = v50;
        result = (v25)(v50, v9);
LABEL_5:
        a3 = v43 + 1;
        v22 = v42 + v38;
        v23 = v41 - 1;
        v24 = v40 + v38;
        if (v43 + 1 == v39)
        {
          return result;
        }

        goto LABEL_6;
      }

      v32 = sub_252E37DB4();

      v33 = *v48;
      v9 = v51;
      (*v48)(v55, v51);
      v17 = v50;
      result = (v33)(v50, v9);
      if ((v32 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v46)
      {
        break;
      }

      v34 = *v45;
      v35 = v47;
      (*v45)(v47, v24, v9);
      swift_arrayInitWithTakeFrontToBack();
      result = (v34)(v22, v35, v9);
      v22 += v44;
      v24 += v44;
      if (__CFADD__(v26++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_252D786E4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 40 * a3;
    v6 = result - a3;
LABEL_6:
    v21 = a3;
    v16 = v6;
    v17 = v5;
    while (1)
    {
      sub_252929E74(v5, &v19);
      sub_252929E74(v5 - 40, v18);
      __swift_project_boxed_opaque_existential_1(&v19, v20);
      v7 = sub_252E34624();
      v9 = v8;
      __swift_project_boxed_opaque_existential_1(v18, v18[3]);
      if (v7 == sub_252E34624() && v9 == v10)
      {

        __swift_destroy_boxed_opaque_existential_1(v18);
        result = __swift_destroy_boxed_opaque_existential_1(&v19);
LABEL_5:
        a3 = v21 + 1;
        v5 = v17 + 40;
        v6 = v16 - 1;
        if (v21 + 1 == a2)
        {
          return result;
        }

        goto LABEL_6;
      }

      v12 = sub_252E37DB4();

      __swift_destroy_boxed_opaque_existential_1(v18);
      result = __swift_destroy_boxed_opaque_existential_1(&v19);
      if ((v12 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      sub_252927BEC(v5, &v19);
      v13 = *(v5 - 24);
      *v5 = *(v5 - 40);
      *(v5 + 16) = v13;
      *(v5 + 32) = *(v5 - 8);
      result = sub_252927BEC(&v19, v5 - 40);
      v5 -= 40;
      if (__CFADD__(v6++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_252D78888(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = v4;
  v126 = a1;
  v137 = sub_252E32E04();
  v9 = MEMORY[0x28223BE20](v137);
  v136 = &v120 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v135 = &v120 - v13;
  v14 = a3[1];
  if (v14 < 1)
  {
    v16 = MEMORY[0x277D84F90];
LABEL_89:
    v5 = *v126;
    if (!*v126)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_252934564(v16);
      v16 = result;
    }

    v116 = v6;
    v141 = v16;
    v117 = *(v16 + 2);
    if (v117 >= 2)
    {
      while (*a3)
      {
        v6 = *&v16[16 * v117];
        v118 = *&v16[16 * v117 + 24];
        sub_252D7A914((*a3 + 24 * v6), (*a3 + 24 * *&v16[16 * v117 + 16]), (*a3 + 24 * v118), v5);
        if (v116)
        {
        }

        if (v118 < v6)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = sub_252934564(v16);
        }

        if (v117 - 2 >= *(v16 + 2))
        {
          goto LABEL_116;
        }

        v119 = &v16[16 * v117];
        *v119 = v6;
        *(v119 + 1) = v118;
        v141 = v16;
        result = sub_2529344D8(v117 - 1);
        v16 = v141;
        v117 = *(v141 + 2);
        if (v117 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v121 = a4;
  v15 = 0;
  v134 = (v12 + 16);
  v133 = (v12 + 8);
  v16 = MEMORY[0x277D84F90];
  v122 = a3;
  while (1)
  {
    v127 = v15;
    if (v15 + 1 >= v14)
    {
      v29 = v15 + 1;
    }

    else
    {
      v131 = v14;
      v125 = v6;
      v124 = v16;
      v17 = *a3;
      v18 = *(*a3 + 24 * (v15 + 1) + 16);
      v123 = 24 * v15;
      v19 = v17 + 24 * v15;
      v20 = *(v19 + 16);
      v139 = *(v19 + 8);
      v140 = v19;
      v21 = OBJC_IVAR____TtC22HomeAutomationInternal34IntentSelectionCacheRecordMetadata_lastAccessDate;
      swift_beginAccess();
      v22 = *v134;
      v23 = v135;
      v24 = v137;
      (*v134)(v135, v18 + v21, v137);
      v25 = OBJC_IVAR____TtC22HomeAutomationInternal34IntentSelectionCacheRecordMetadata_lastAccessDate;
      swift_beginAccess();
      v5 = v136;
      v129 = v22;
      (v22)(v136, v20 + v25, v24);

      v130 = sub_252E32DD4();
      v26 = *v133;
      (*v133)(v5, v24);
      v128 = v26;
      v26(v23, v24);

      v27 = v127 + 2;
      v28 = (v140 + 64);
      while (1)
      {
        v29 = v131;
        if (v131 == v27)
        {
          break;
        }

        LODWORD(v138) = v130 < 2;
        v5 = *v28;
        v140 = *(v28 - 1);
        v30 = *(v28 - 3);
        v132 = *(v28 - 4);
        v31 = OBJC_IVAR____TtC22HomeAutomationInternal34IntentSelectionCacheRecordMetadata_lastAccessDate;
        v139 = v27;
        swift_beginAccess();
        v32 = v135;
        v33 = v137;
        v34 = v129;
        (v129)(v135, v5 + v31, v137);
        v35 = OBJC_IVAR____TtC22HomeAutomationInternal34IntentSelectionCacheRecordMetadata_lastAccessDate;
        swift_beginAccess();
        v36 = v136;
        v34(v136, v30 + v35, v33);

        v37 = sub_252E32DD4();
        v38 = v36;
        v39 = v128;
        v128(v38, v33);
        v39(v32, v33);

        v27 = v139 + 1;
        v28 += 3;
        if (v138 != v37 < 2)
        {
          v29 = v139;
          break;
        }
      }

      a3 = v122;
      v16 = v124;
      v6 = v125;
      v15 = v127;
      v40 = v123;
      if (v130 <= 1)
      {
        if (v29 < v127)
        {
          goto LABEL_119;
        }

        if (v127 < v29)
        {
          v41 = 0;
          v42 = 24 * v29;
          v43 = v127;
          do
          {
            if (v43 != v29 + v41 - 1)
            {
              v49 = *a3;
              if (!*a3)
              {
                goto LABEL_125;
              }

              v44 = (v49 + v40);
              v45 = v49 + v42;
              v46 = *v44;
              v47 = *(v44 + 1);
              v48 = *(v45 - 24);
              v44[2] = *(v45 - 8);
              *v44 = v48;
              *(v45 - 24) = v46;
              *(v45 - 16) = v47;
            }

            ++v43;
            --v41;
            v42 -= 24;
            v40 += 24;
          }

          while (v43 < v29 + v41);
        }
      }
    }

    v50 = a3[1];
    if (v29 < v50)
    {
      if (__OFSUB__(v29, v15))
      {
        goto LABEL_118;
      }

      if (v29 - v15 < v121)
      {
        if (__OFADD__(v15, v121))
        {
          goto LABEL_120;
        }

        if (v15 + v121 >= v50)
        {
          v51 = a3[1];
        }

        else
        {
          v51 = (v15 + v121);
        }

        if (v51 < v15)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v29 != v51)
        {
          break;
        }
      }
    }

    v52 = v29;
    if (v29 < v15)
    {
      goto LABEL_117;
    }

LABEL_29:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_252934578(0, *(v16 + 2) + 1, 1, v16);
      v16 = result;
    }

    v54 = *(v16 + 2);
    v53 = *(v16 + 3);
    v55 = v54 + 1;
    if (v54 >= v53 >> 1)
    {
      result = sub_252934578((v53 > 1), v54 + 1, 1, v16);
      v16 = result;
    }

    *(v16 + 2) = v55;
    v56 = &v16[16 * v54];
    *(v56 + 4) = v127;
    *(v56 + 5) = v52;
    v57 = *v126;
    if (!*v126)
    {
      goto LABEL_127;
    }

    v128 = v52;
    if (v54)
    {
      while (1)
      {
        v5 = v55 - 1;
        if (v55 >= 4)
        {
          break;
        }

        if (v55 == 3)
        {
          v58 = *(v16 + 4);
          v59 = *(v16 + 5);
          v68 = __OFSUB__(v59, v58);
          v60 = v59 - v58;
          v61 = v68;
LABEL_48:
          if (v61)
          {
            goto LABEL_106;
          }

          v74 = &v16[16 * v55];
          v76 = *v74;
          v75 = *(v74 + 1);
          v77 = __OFSUB__(v75, v76);
          v78 = v75 - v76;
          v79 = v77;
          if (v77)
          {
            goto LABEL_109;
          }

          v80 = &v16[16 * v5 + 32];
          v82 = *v80;
          v81 = *(v80 + 1);
          v68 = __OFSUB__(v81, v82);
          v83 = v81 - v82;
          if (v68)
          {
            goto LABEL_112;
          }

          if (__OFADD__(v78, v83))
          {
            goto LABEL_113;
          }

          if (v78 + v83 >= v60)
          {
            if (v60 < v83)
            {
              v5 = v55 - 2;
            }

            goto LABEL_69;
          }

          goto LABEL_62;
        }

        v84 = &v16[16 * v55];
        v86 = *v84;
        v85 = *(v84 + 1);
        v68 = __OFSUB__(v85, v86);
        v78 = v85 - v86;
        v79 = v68;
LABEL_62:
        if (v79)
        {
          goto LABEL_108;
        }

        v87 = &v16[16 * v5];
        v89 = *(v87 + 4);
        v88 = *(v87 + 5);
        v68 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v68)
        {
          goto LABEL_111;
        }

        if (v90 < v78)
        {
          goto LABEL_3;
        }

LABEL_69:
        v95 = v5 - 1;
        if (v5 - 1 >= v55)
        {
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

        v96 = *&v16[16 * v95 + 32];
        v97 = *&v16[16 * v5 + 40];
        sub_252D7A914((*a3 + 24 * v96), (*a3 + 24 * *&v16[16 * v5 + 32]), (*a3 + 24 * v97), v57);
        if (v6)
        {
        }

        if (v97 < v96)
        {
          goto LABEL_102;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = sub_252934564(v16);
        }

        if (v95 >= *(v16 + 2))
        {
          goto LABEL_103;
        }

        v98 = &v16[16 * v95];
        *(v98 + 4) = v96;
        *(v98 + 5) = v97;
        v141 = v16;
        result = sub_2529344D8(v5);
        v16 = v141;
        v55 = *(v141 + 2);
        if (v55 <= 1)
        {
          goto LABEL_3;
        }
      }

      v62 = &v16[16 * v55 + 32];
      v63 = *(v62 - 64);
      v64 = *(v62 - 56);
      v68 = __OFSUB__(v64, v63);
      v65 = v64 - v63;
      if (v68)
      {
        goto LABEL_104;
      }

      v67 = *(v62 - 48);
      v66 = *(v62 - 40);
      v68 = __OFSUB__(v66, v67);
      v60 = v66 - v67;
      v61 = v68;
      if (v68)
      {
        goto LABEL_105;
      }

      v69 = &v16[16 * v55];
      v71 = *v69;
      v70 = *(v69 + 1);
      v68 = __OFSUB__(v70, v71);
      v72 = v70 - v71;
      if (v68)
      {
        goto LABEL_107;
      }

      v68 = __OFADD__(v60, v72);
      v73 = v60 + v72;
      if (v68)
      {
        goto LABEL_110;
      }

      if (v73 >= v65)
      {
        v91 = &v16[16 * v5 + 32];
        v93 = *v91;
        v92 = *(v91 + 1);
        v68 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v68)
        {
          goto LABEL_114;
        }

        if (v60 < v94)
        {
          v5 = v55 - 2;
        }

        goto LABEL_69;
      }

      goto LABEL_48;
    }

LABEL_3:
    v14 = a3[1];
    v15 = v128;
    if (v128 >= v14)
    {
      goto LABEL_89;
    }
  }

  v124 = v16;
  v125 = v6;
  v132 = *a3;
  v99 = (v132 + 24 * v29);
  v100 = (v15 - v29);
  v128 = v51;
LABEL_80:
  v131 = v29;
  v101 = v132 + 24 * v29;
  v102 = *(v101 + 8);
  v5 = *(v101 + 16);
  v129 = v100;
  v103 = v100;
  v130 = v99;
  while (1)
  {
    v138 = v103;
    v139 = v102;
    v104 = *(v99 - 1);
    v140 = *(v99 - 2);
    v105 = OBJC_IVAR____TtC22HomeAutomationInternal34IntentSelectionCacheRecordMetadata_lastAccessDate;
    swift_beginAccess();
    v106 = *v134;
    v107 = v135;
    v108 = v137;
    (*v134)(v135, v5 + v105, v137);
    v109 = OBJC_IVAR____TtC22HomeAutomationInternal34IntentSelectionCacheRecordMetadata_lastAccessDate;
    swift_beginAccess();
    v110 = v136;
    (v106)(v136, v104 + v109, v108);

    v111 = sub_252E32DD4();
    v112 = *v133;
    (*v133)(v110, v108);
    v112(v107, v108);

    if (v111 > 1)
    {
LABEL_79:
      v29 = v131 + 1;
      v99 = (v130 + 24);
      v100 = v129 - 1;
      v52 = v128;
      if ((v131 + 1) != v128)
      {
        goto LABEL_80;
      }

      v6 = v125;
      a3 = v122;
      v16 = v124;
      if (v128 < v127)
      {
        goto LABEL_117;
      }

      goto LABEL_29;
    }

    v113 = v138;
    if (!v132)
    {
      break;
    }

    v114 = *v99;
    v102 = v99[1];
    v5 = v99[2];
    *v99 = *(v99 - 3);
    v99[2] = *(v99 - 1);
    *(v99 - 2) = v102;
    *(v99 - 1) = v5;
    *(v99 - 3) = v114;
    v99 -= 3;
    v115 = __CFADD__(v113, 1);
    v103 = v113 + 1;
    if (v115)
    {
      goto LABEL_79;
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

uint64_t sub_252D793D4(int64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = v4;
  v136 = a1;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540460, &qword_252E5E960);
  MEMORY[0x28223BE20](v158);
  v157 = &v130 - v9;
  v10 = sub_252E349A4();
  v11 = MEMORY[0x28223BE20](v10);
  v139 = &v130 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v151 = &v130 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v160 = &v130 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v159 = &v130 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v148 = &v130 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v147 = &v130 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v135 = &v130 - v24;
  result = MEMORY[0x28223BE20](v23);
  v134 = &v130 - v27;
  v28 = a3[1];
  v144 = v26;
  if (v28 < 1)
  {
    v30 = MEMORY[0x277D84F90];
LABEL_104:
    v31 = *v136;
    if (!*v136)
    {
      goto LABEL_142;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v5 = v144;
    if (result)
    {
LABEL_106:
      v161 = v30;
      v124 = *(v30 + 16);
      if (v124 >= 2)
      {
        while (1)
        {
          v125 = *a3;
          if (!*a3)
          {
            goto LABEL_140;
          }

          v126 = a3;
          v127 = v30;
          v30 = *(v30 + 16 * v124);
          a3 = v127;
          v128 = v127[2 * v124 + 3];
          sub_252D7AE94(v125 + *(v5 + 72) * v30, v125 + *(v5 + 72) * v127[2 * v124 + 2], (v125 + *(v5 + 72) * v128), v31);
          if (v6)
          {
          }

          if (v128 < v30)
          {
            goto LABEL_129;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            a3 = sub_252934564(a3);
          }

          if (v124 - 2 >= a3[2])
          {
            goto LABEL_130;
          }

          v129 = &a3[2 * v124];
          *v129 = v30;
          v129[1] = v128;
          v161 = a3;
          result = sub_2529344D8(v124 - 1);
          v30 = v161;
          v124 = v161[2];
          a3 = v126;
          if (v124 <= 1)
          {
          }
        }
      }
    }

LABEL_136:
    result = sub_252934564(v30);
    v30 = result;
    goto LABEL_106;
  }

  v131 = a4;
  v29 = 0;
  v154 = v26 + 16;
  v155 = (v26 + 8);
  v153 = (v26 + 32);
  v30 = MEMORY[0x277D84F90];
  v138 = a3;
  v156 = v10;
  while (1)
  {
    v31 = v29;
    v32 = v29 + 1;
    if (v32 < v28)
    {
      v142 = v28;
      v33 = *a3;
      v34 = *(v144 + 72);
      v145 = v32;
      v35 = v33 + v34 * v32;
      v36 = *(v144 + 16);
      v36(v134, v35, v10);
      v137 = v31;
      v146 = v34;
      v141 = v36;
      v36(v135, v33 + v34 * v31, v10);
      sub_252E34964();
      v5 = v158;
      v37 = sub_252E36F94();
      v39 = v38;
      sub_252E34964();
      v40 = sub_252E36F94();
      v133 = v6;
      if (v37 == v40 && v39 == v41)
      {
        LODWORD(v143) = 0;
      }

      else
      {
        LODWORD(v143) = sub_252E37DB4();
      }

      v132 = v30;

      v10 = v156;
      v42 = *v155;
      (*v155)(v135, v156);
      v140 = v42;
      result = (v42)(v134, v10);
      v43 = (v137 + 2);
      v44 = v145;
      v45 = v146 * (v137 + 2);
      v46 = v33 + v45;
      v47 = v146 * v145;
      v48 = v33 + v146 * v145;
      do
      {
        a3 = v43;
        v6 = v44;
        v30 = v47;
        v50 = v45;
        if (v43 >= v142)
        {
          break;
        }

        v149 = v44;
        v150 = v45;
        v152 = v43;
        v51 = v141;
        v141(v147, v46, v10);
        v51(v148, v48, v10);
        sub_252E34964();
        v52 = sub_252E36F94();
        v54 = v53;
        sub_252E34964();
        if (v52 == sub_252E36F94() && v54 == v55)
        {
          v5 = 0;
        }

        else
        {
          v5 = sub_252E37DB4();
        }

        a3 = v152;

        v10 = v156;
        v49 = v140;
        v140(v148, v156);
        result = v49(v147, v10);
        v43 = (a3 + 1);
        v46 += v146;
        v48 += v146;
        v6 = v149;
        v50 = v150;
        v44 = v149 + 1;
        v47 = &v146[v30];
        v45 = &v146[v150];
      }

      while (((v143 ^ v5) & 1) == 0);
      if (v143)
      {
        v31 = v137;
        if (a3 < v137)
        {
          goto LABEL_133;
        }

        if (v137 >= a3)
        {
          v32 = a3;
          v6 = v133;
          a3 = v138;
          v30 = v132;
          goto LABEL_32;
        }

        v56 = v137;
        v57 = v137 * v146;
        do
        {
          if (v56 != v6)
          {
            v5 = *v138;
            if (!*v138)
            {
              goto LABEL_139;
            }

            v152 = *v153;
            v152(v139, (v5 + v57), v10);
            if (v57 < v30 || v5 + v57 >= (v5 + v50))
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v57 != v30)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            result = (v152)(v5 + v30, v139, v10);
          }

          ++v56;
          v30 -= v146;
          v50 -= v146;
          v57 += v146;
        }

        while (v56 < v6--);
      }

      v32 = a3;
      v6 = v133;
      a3 = v138;
      v30 = v132;
      v31 = v137;
    }

LABEL_32:
    v59 = a3[1];
    if (v32 < v59)
    {
      if (__OFSUB__(v32, v31))
      {
        goto LABEL_132;
      }

      if (v32 - v31 < v131)
      {
        break;
      }
    }

LABEL_52:
    if (v32 < v31)
    {
      goto LABEL_131;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v145 = v32;
    v75 = v31;
    if ((result & 1) == 0)
    {
      result = sub_252934578(0, *(v30 + 16) + 1, 1, v30);
      v30 = result;
    }

    v77 = *(v30 + 16);
    v76 = *(v30 + 24);
    v78 = v77 + 1;
    if (v77 >= v76 >> 1)
    {
      result = sub_252934578((v76 > 1), v77 + 1, 1, v30);
      v30 = result;
    }

    *(v30 + 16) = v78;
    v79 = v30 + 16 * v77;
    v80 = v145;
    *(v79 + 32) = v75;
    *(v79 + 40) = v80;
    if (!*v136)
    {
      goto LABEL_141;
    }

    if (v77)
    {
      v81 = *v136;
      while (1)
      {
        v31 = v78 - 1;
        if (v78 >= 4)
        {
          break;
        }

        if (v78 == 3)
        {
          v82 = *(v30 + 32);
          v83 = *(v30 + 40);
          v92 = __OFSUB__(v83, v82);
          v84 = v83 - v82;
          v85 = v92;
LABEL_73:
          if (v85)
          {
            goto LABEL_120;
          }

          v98 = (v30 + 16 * v78);
          v100 = *v98;
          v99 = v98[1];
          v101 = __OFSUB__(v99, v100);
          v102 = v99 - v100;
          v103 = v101;
          if (v101)
          {
            goto LABEL_123;
          }

          v104 = (v30 + 32 + 16 * v31);
          v106 = *v104;
          v105 = v104[1];
          v92 = __OFSUB__(v105, v106);
          v107 = v105 - v106;
          if (v92)
          {
            goto LABEL_126;
          }

          if (__OFADD__(v102, v107))
          {
            goto LABEL_127;
          }

          if (v102 + v107 >= v84)
          {
            if (v84 < v107)
            {
              v31 = v78 - 2;
            }

            goto LABEL_94;
          }

          goto LABEL_87;
        }

        v108 = (v30 + 16 * v78);
        v110 = *v108;
        v109 = v108[1];
        v92 = __OFSUB__(v109, v110);
        v102 = v109 - v110;
        v103 = v92;
LABEL_87:
        if (v103)
        {
          goto LABEL_122;
        }

        v111 = v30 + 16 * v31;
        v113 = *(v111 + 32);
        v112 = *(v111 + 40);
        v92 = __OFSUB__(v112, v113);
        v114 = v112 - v113;
        if (v92)
        {
          goto LABEL_125;
        }

        if (v114 < v102)
        {
          goto LABEL_3;
        }

LABEL_94:
        v119 = v31 - 1;
        if (v31 - 1 >= v78)
        {
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
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
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
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
          goto LABEL_135;
        }

        v120 = *a3;
        if (!*a3)
        {
          goto LABEL_138;
        }

        v5 = a3;
        a3 = v30;
        v121 = *(v30 + 32 + 16 * v119);
        v122 = *(v30 + 32 + 16 * v31);
        v30 = *(v30 + 32 + 16 * v31 + 8);
        sub_252D7AE94(v120 + *(v144 + 72) * v121, v120 + *(v144 + 72) * v122, (v120 + *(v144 + 72) * v30), v81);
        if (v6)
        {
        }

        if (v30 < v121)
        {
          goto LABEL_116;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a3 = sub_252934564(a3);
        }

        if (v119 >= a3[2])
        {
          goto LABEL_117;
        }

        v123 = &a3[2 * v119];
        v123[4] = v121;
        v123[5] = v30;
        v161 = a3;
        result = sub_2529344D8(v31);
        v30 = v161;
        v78 = v161[2];
        a3 = v5;
        if (v78 <= 1)
        {
          goto LABEL_3;
        }
      }

      v86 = v30 + 32 + 16 * v78;
      v87 = *(v86 - 64);
      v88 = *(v86 - 56);
      v92 = __OFSUB__(v88, v87);
      v89 = v88 - v87;
      if (v92)
      {
        goto LABEL_118;
      }

      v91 = *(v86 - 48);
      v90 = *(v86 - 40);
      v92 = __OFSUB__(v90, v91);
      v84 = v90 - v91;
      v85 = v92;
      if (v92)
      {
        goto LABEL_119;
      }

      v93 = (v30 + 16 * v78);
      v95 = *v93;
      v94 = v93[1];
      v92 = __OFSUB__(v94, v95);
      v96 = v94 - v95;
      if (v92)
      {
        goto LABEL_121;
      }

      v92 = __OFADD__(v84, v96);
      v97 = v84 + v96;
      if (v92)
      {
        goto LABEL_124;
      }

      if (v97 >= v89)
      {
        v115 = (v30 + 32 + 16 * v31);
        v117 = *v115;
        v116 = v115[1];
        v92 = __OFSUB__(v116, v117);
        v118 = v116 - v117;
        if (v92)
        {
          goto LABEL_128;
        }

        if (v84 < v118)
        {
          v31 = v78 - 2;
        }

        goto LABEL_94;
      }

      goto LABEL_73;
    }

LABEL_3:
    v28 = a3[1];
    v29 = v145;
    if (v145 >= v28)
    {
      goto LABEL_104;
    }
  }

  v60 = (v31 + v131);
  if (__OFADD__(v31, v131))
  {
    goto LABEL_134;
  }

  if (v60 >= v59)
  {
    v60 = a3[1];
  }

  if (v60 < v31)
  {
LABEL_135:
    __break(1u);
    goto LABEL_136;
  }

  if (v32 == v60)
  {
    goto LABEL_52;
  }

  v132 = v30;
  v133 = v6;
  v61 = *a3;
  v62 = *(v144 + 72);
  v152 = *(v144 + 16);
  v63 = (v61 + v62 * (v32 - 1));
  v149 = -v62;
  v137 = v31;
  v64 = v31 - v32;
  v150 = v61;
  v140 = v62;
  v141 = v60;
  v65 = (v61 + v32 * v62);
LABEL_43:
  v145 = v32;
  v146 = v63;
  v142 = v65;
  v143 = v64;
  v67 = v63;
  while (1)
  {
    v68 = v152;
    v152(v159, v65, v10);
    v68(v160, v67, v10);
    sub_252E34964();
    v5 = sub_252E36F94();
    v70 = v69;
    sub_252E34964();
    if (v5 == sub_252E36F94() && v70 == v71)
    {

      v10 = v156;
      v66 = *v155;
      (*v155)(v160, v156);
      v66(v159, v10);
LABEL_42:
      v32 = v145 + 1;
      v63 = v140 + v146;
      v64 = v143 - 1;
      v65 = v140 + v142;
      if ((v145 + 1) == v141)
      {
        v32 = v141;
        v6 = v133;
        a3 = v138;
        v30 = v132;
        v31 = v137;
        goto LABEL_52;
      }

      goto LABEL_43;
    }

    v5 = sub_252E37DB4();

    v10 = v156;
    v72 = *v155;
    (*v155)(v160, v156);
    result = (v72)(v159, v10);
    if ((v5 & 1) == 0)
    {
      goto LABEL_42;
    }

    if (!v150)
    {
      break;
    }

    v73 = *v153;
    v5 = v151;
    (*v153)(v151, v65, v10);
    swift_arrayInitWithTakeFrontToBack();
    v73(v67, v5, v10);
    v67 += v149;
    v65 += v149;
    if (__CFADD__(v64++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
  return result;
}

uint64_t sub_252D7A0B0(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v101 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_104:
    v6 = *v101;
    if (!*v101)
    {
      goto LABEL_143;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_106:
      v94 = v5;
      v117 = v8;
      v95 = *(v8 + 2);
      if (v95 >= 2)
      {
        while (*a3)
        {
          v96 = *&v8[16 * v95];
          v5 = *&v8[16 * v95 + 24];
          sub_252D7B5F0((*a3 + 40 * v96), (*a3 + 40 * *&v8[16 * v95 + 16]), *a3 + 40 * v5, v6);
          if (v94)
          {
          }

          if (v5 < v96)
          {
            goto LABEL_130;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = sub_252934564(v8);
          }

          if (v95 - 2 >= *(v8 + 2))
          {
            goto LABEL_131;
          }

          v97 = &v8[16 * v95];
          *v97 = v96;
          *(v97 + 1) = v5;
          v117 = v8;
          result = sub_2529344D8(v95 - 1);
          v8 = v117;
          v95 = *(v117 + 2);
          if (v95 <= 1)
          {
          }
        }

        goto LABEL_141;
      }
    }

LABEL_137:
    result = sub_252934564(v8);
    v8 = result;
    goto LABEL_106;
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    v110 = v8;
    if (v7 < v6)
    {
      v10 = *a3;
      sub_252929E74(*a3 + 40 * v7, &v115);
      v102 = v9;
      sub_252929E74(v10 + 40 * v9, v112);
      __swift_project_boxed_opaque_existential_1(&v115, v116);
      v11 = sub_252E34624();
      v13 = v12;
      __swift_project_boxed_opaque_existential_1(v112, v113);
      v15 = v11 == sub_252E34624() && v13 == v14;
      v99 = v5;
      if (v15)
      {
        v108 = 0;
      }

      else
      {
        v108 = sub_252E37DB4();
      }

      __swift_destroy_boxed_opaque_existential_1(v112);
      result = __swift_destroy_boxed_opaque_existential_1(&v115);
      v16 = v102 + 2;
      v17 = v10 + 40 * v102 + 80;
      v106 = v6;
      v18 = 40 * v102 + 40;
      do
      {
        v20 = v16;
        v21 = v7;
        v5 = v18;
        if (v16 >= v6)
        {
          break;
        }

        sub_252929E74(v17, &v115);
        sub_252929E74(v17 - 40, v112);
        __swift_project_boxed_opaque_existential_1(&v115, v116);
        v22 = sub_252E34624();
        v24 = v23;
        __swift_project_boxed_opaque_existential_1(v112, v113);
        v26 = v22 == sub_252E34624() && v24 == v25;
        v19 = v26 ? 0 : sub_252E37DB4();

        __swift_destroy_boxed_opaque_existential_1(v112);
        result = __swift_destroy_boxed_opaque_existential_1(&v115);
        v16 = v20 + 1;
        v17 += 40;
        ++v7;
        v18 = v5 + 40;
        v8 = v110;
        v6 = v106;
      }

      while (((v108 ^ v19) & 1) == 0);
      if (v108)
      {
        v9 = v102;
        if (v20 < v102)
        {
          goto LABEL_134;
        }

        if (v102 < v20)
        {
          v6 = v102;
          v27 = 40 * v102;
          do
          {
            if (v6 != v21)
            {
              v29 = *a3;
              if (!*a3)
              {
                goto LABEL_140;
              }

              v30 = v29 + v27;
              v31 = v29 + v5;
              sub_252927BEC((v29 + v27), &v115);
              v32 = *(v31 + 32);
              v33 = *(v31 + 16);
              *v30 = *v31;
              *(v30 + 16) = v33;
              *(v30 + 32) = v32;
              result = sub_252927BEC(&v115, v31);
            }

            ++v6;
            v5 -= 40;
            v27 += 40;
          }

          while (v6 < v21--);
        }

        v7 = v20;
        v5 = v99;
      }

      else
      {
        v7 = v20;
        v5 = v99;
        v9 = v102;
      }
    }

    v34 = a3[1];
    if (v7 < v34)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_133;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_53:
    if (v7 < v9)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_252934578(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v48 = *(v8 + 2);
    v47 = *(v8 + 3);
    v49 = v48 + 1;
    if (v48 >= v47 >> 1)
    {
      result = sub_252934578((v47 > 1), v48 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v49;
    v50 = &v8[16 * v48];
    *(v50 + 4) = v9;
    *(v50 + 5) = v7;
    v51 = *v101;
    if (!*v101)
    {
      goto LABEL_142;
    }

    if (v48)
    {
      while (1)
      {
        v52 = v49 - 1;
        if (v49 >= 4)
        {
          break;
        }

        if (v49 == 3)
        {
          v53 = *(v8 + 4);
          v54 = *(v8 + 5);
          v63 = __OFSUB__(v54, v53);
          v55 = v54 - v53;
          v56 = v63;
LABEL_73:
          if (v56)
          {
            goto LABEL_121;
          }

          v69 = &v8[16 * v49];
          v71 = *v69;
          v70 = *(v69 + 1);
          v72 = __OFSUB__(v70, v71);
          v73 = v70 - v71;
          v74 = v72;
          if (v72)
          {
            goto LABEL_124;
          }

          v75 = &v8[16 * v52 + 32];
          v77 = *v75;
          v76 = *(v75 + 1);
          v63 = __OFSUB__(v76, v77);
          v78 = v76 - v77;
          if (v63)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v73, v78))
          {
            goto LABEL_128;
          }

          if (v73 + v78 >= v55)
          {
            if (v55 < v78)
            {
              v52 = v49 - 2;
            }

            goto LABEL_94;
          }

          goto LABEL_87;
        }

        v79 = &v8[16 * v49];
        v81 = *v79;
        v80 = *(v79 + 1);
        v63 = __OFSUB__(v80, v81);
        v73 = v80 - v81;
        v74 = v63;
LABEL_87:
        if (v74)
        {
          goto LABEL_123;
        }

        v82 = &v8[16 * v52];
        v84 = *(v82 + 4);
        v83 = *(v82 + 5);
        v63 = __OFSUB__(v83, v84);
        v85 = v83 - v84;
        if (v63)
        {
          goto LABEL_126;
        }

        if (v85 < v73)
        {
          goto LABEL_3;
        }

LABEL_94:
        v90 = v52 - 1;
        if (v52 - 1 >= v49)
        {
          __break(1u);
LABEL_117:
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
          __break(1u);
LABEL_123:
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
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
          goto LABEL_136;
        }

        if (!*a3)
        {
          goto LABEL_139;
        }

        v6 = v7;
        v91 = *&v8[16 * v90 + 32];
        v92 = *&v8[16 * v52 + 40];
        sub_252D7B5F0((*a3 + 40 * v91), (*a3 + 40 * *&v8[16 * v52 + 32]), *a3 + 40 * v92, v51);
        if (v5)
        {
        }

        if (v92 < v91)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_252934564(v8);
        }

        if (v90 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v93 = &v8[16 * v90];
        *(v93 + 4) = v91;
        *(v93 + 5) = v92;
        v117 = v8;
        result = sub_2529344D8(v52);
        v8 = v117;
        v49 = *(v117 + 2);
        v7 = v6;
        if (v49 <= 1)
        {
          goto LABEL_3;
        }
      }

      v57 = &v8[16 * v49 + 32];
      v58 = *(v57 - 64);
      v59 = *(v57 - 56);
      v63 = __OFSUB__(v59, v58);
      v60 = v59 - v58;
      if (v63)
      {
        goto LABEL_119;
      }

      v62 = *(v57 - 48);
      v61 = *(v57 - 40);
      v63 = __OFSUB__(v61, v62);
      v55 = v61 - v62;
      v56 = v63;
      if (v63)
      {
        goto LABEL_120;
      }

      v64 = &v8[16 * v49];
      v66 = *v64;
      v65 = *(v64 + 1);
      v63 = __OFSUB__(v65, v66);
      v67 = v65 - v66;
      if (v63)
      {
        goto LABEL_122;
      }

      v63 = __OFADD__(v55, v67);
      v68 = v55 + v67;
      if (v63)
      {
        goto LABEL_125;
      }

      if (v68 >= v60)
      {
        v86 = &v8[16 * v52 + 32];
        v88 = *v86;
        v87 = *(v86 + 1);
        v63 = __OFSUB__(v87, v88);
        v89 = v87 - v88;
        if (v63)
        {
          goto LABEL_129;
        }

        if (v55 < v89)
        {
          v52 = v49 - 2;
        }

        goto LABEL_94;
      }

      goto LABEL_73;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_104;
    }
  }

  v35 = v9 + a4;
  if (__OFADD__(v9, a4))
  {
    goto LABEL_135;
  }

  if (v35 >= v34)
  {
    v35 = a3[1];
  }

  if (v35 < v9)
  {
LABEL_136:
    __break(1u);
    goto LABEL_137;
  }

  if (v7 == v35)
  {
    goto LABEL_53;
  }

  v100 = v5;
  v36 = *a3;
  v37 = *a3 + 40 * v7;
  v103 = v9;
  v104 = v35;
  v38 = v9 - v7;
LABEL_42:
  v107 = v37;
  v109 = v7;
  v105 = v38;
  while (1)
  {
    sub_252929E74(v37, &v115);
    sub_252929E74(v37 - 40, v112);
    __swift_project_boxed_opaque_existential_1(&v115, v116);
    v39 = sub_252E34624();
    v41 = v40;
    v6 = v114;
    __swift_project_boxed_opaque_existential_1(v112, v113);
    if (v39 == sub_252E34624() && v41 == v42)
    {

      __swift_destroy_boxed_opaque_existential_1(v112);
      __swift_destroy_boxed_opaque_existential_1(&v115);
LABEL_41:
      v7 = v109 + 1;
      v37 = v107 + 40;
      v38 = v105 - 1;
      if (v109 + 1 == v104)
      {
        v7 = v104;
        v5 = v100;
        v8 = v110;
        v9 = v103;
        goto LABEL_53;
      }

      goto LABEL_42;
    }

    v44 = sub_252E37DB4();

    __swift_destroy_boxed_opaque_existential_1(v112);
    result = __swift_destroy_boxed_opaque_existential_1(&v115);
    if ((v44 & 1) == 0)
    {
      goto LABEL_41;
    }

    if (!v36)
    {
      break;
    }

    sub_252927BEC(v37, &v115);
    v45 = *(v37 - 24);
    *v37 = *(v37 - 40);
    *(v37 + 16) = v45;
    *(v37 + 32) = *(v37 - 8);
    sub_252927BEC(&v115, v37 - 40);
    v37 -= 40;
    if (__CFADD__(v38++, 1))
    {
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
  return result;
}

uint64_t sub_252D7A914(char *a1, char *a2, char *a3, char *a4)
{
  v59 = sub_252E32E04();
  v8 = *(v59 - 8);
  v9 = MEMORY[0x28223BE20](v59);
  v58 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v57 = &v52 - v11;
  v12 = (a2 - a1) / 24;
  v13 = (a3 - a2) / 24;
  if (v12 >= v13)
  {
    v28 = a2;
    if (a4 != a2 || &a2[24 * v13] <= a4)
    {
      memmove(a4, a2, 24 * v13);
    }

    v14 = &a4[24 * v13];
    if (a3 - a2 >= 24 && a2 > a1)
    {
      v53 = (v8 + 8);
      v54 = (v8 + 16);
      v56 = a1;
      v62 = a4;
      v29 = v59;
LABEL_22:
      v30 = a3 - 24;
      v64 = v28;
      do
      {
        v63 = v30;
        v55 = v30 + 24;
        v31 = *(v14 - 1);
        v32 = *(v28 - 2);
        v33 = *(v28 - 1);
        v60 = v32;
        v61 = v14;
        v34 = OBJC_IVAR____TtC22HomeAutomationInternal34IntentSelectionCacheRecordMetadata_lastAccessDate;
        swift_beginAccess();
        v35 = *v54;
        v36 = v57;
        (*v54)(v57, v31 + v34, v29);
        v37 = OBJC_IVAR____TtC22HomeAutomationInternal34IntentSelectionCacheRecordMetadata_lastAccessDate;
        swift_beginAccess();
        v38 = v58;
        (v35)(v58, v33 + v37, v29);

        v39 = sub_252E32DD4();
        v40 = *v53;
        (*v53)(v38, v29);
        v40(v36, v29);

        if (v39 <= 1)
        {
          v45 = v61;
          v46 = v64;
          v47 = v64 - 24;
          v48 = v56;
          a3 = v63;
          if (v55 != v64)
          {
            v49 = *v47;
            *(v63 + 2) = *(v64 - 1);
            *a3 = v49;
          }

          a4 = v62;
          v14 = v45;
          if (v45 <= v62 || (v28 = v46 - 24, v47 <= v48))
          {
            v28 = v46 - 24;
            goto LABEL_33;
          }

          goto LABEL_22;
        }

        v41 = v61;
        v42 = v61 - 24;
        v43 = v63;
        if (v55 != v61)
        {
          v44 = *v42;
          *(v63 + 2) = *(v61 - 1);
          *v43 = v44;
        }

        v30 = v43 - 24;
        v14 = v41 - 24;
        a4 = v62;
        v28 = v64;
      }

      while (v42 > v62);
      v14 = v41 - 24;
    }
  }

  else
  {
    if (a4 != a1 || &a1[24 * v12] <= a4)
    {
      memmove(a4, a1, 24 * v12);
    }

    v14 = &a4[24 * v12];
    if (a2 - a1 >= 24 && a2 < a3)
    {
      v54 = (v8 + 8);
      v55 = (v8 + 16);
      v63 = a3;
      v61 = &a4[24 * v12];
      while (1)
      {
        v62 = a4;
        v64 = a2;
        v56 = a1;
        v15 = *(a2 + 2);
        v16 = *(a4 + 2);
        v60 = *(a4 + 1);
        v17 = OBJC_IVAR____TtC22HomeAutomationInternal34IntentSelectionCacheRecordMetadata_lastAccessDate;
        swift_beginAccess();
        v18 = *v55;
        v19 = v57;
        v20 = v59;
        (*v55)(v57, v15 + v17, v59);
        v21 = OBJC_IVAR____TtC22HomeAutomationInternal34IntentSelectionCacheRecordMetadata_lastAccessDate;
        swift_beginAccess();
        v22 = v58;
        v18(v58, v16 + v21, v20);

        v23 = sub_252E32DD4();
        v24 = *v54;
        (*v54)(v22, v20);
        v24(v19, v20);

        if (v23 > 1)
        {
          break;
        }

        v25 = v64;
        a2 = v64 + 24;
        v26 = v56;
        a4 = v62;
        if (v56 != v64)
        {
          goto LABEL_12;
        }

LABEL_13:
        a1 = v26 + 24;
        v14 = v61;
        if (a4 >= v61 || a2 >= v63)
        {
          goto LABEL_15;
        }
      }

      v25 = v62;
      a4 = v62 + 24;
      v26 = v56;
      a2 = v64;
      if (v56 == v62)
      {
        goto LABEL_13;
      }

LABEL_12:
      v27 = *v25;
      *(v26 + 2) = *(v25 + 2);
      *v26 = v27;
      goto LABEL_13;
    }

LABEL_15:
    v28 = a1;
  }

LABEL_33:
  v50 = (v14 - a4) / 24;
  if (v28 != a4 || v28 >= &a4[24 * v50])
  {
    memmove(v28, a4, 24 * v50);
  }

  return 1;
}

uint64_t sub_252D7AE94(unint64_t a1, unint64_t a2, char *a3, unint64_t a4)
{
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540460, &qword_252E5E960);
  MEMORY[0x28223BE20](v70);
  v69 = &v59 - v8;
  v73 = sub_252E349A4();
  v9 = *(v73 - 8);
  v10 = MEMORY[0x28223BE20](v73);
  v68 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v67 = &v59 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v72 = &v59 - v15;
  result = MEMORY[0x28223BE20](v14);
  v71 = &v59 - v17;
  v19 = *(v18 + 72);
  if (!v19)
  {
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_68;
  }

  v20 = &a3[-a2];
  if (&a3[-a2] == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_69;
  }

  v21 = (a2 - a1) / v19;
  v76 = a1;
  v75 = a4;
  v66 = v19;
  if (v21 >= v20 / v19)
  {
    v23 = v20 / v19 * v19;
    if (a4 < a2 || a2 + v23 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v42 = a4 + v23;
    if (v23 >= 1)
    {
      v43 = -v66;
      v62 = a4;
      v63 = (v9 + 16);
      v61 = (v9 + 8);
      v44 = a4 + v23;
      v64 = -v66;
      while (2)
      {
        while (1)
        {
          v60 = v42;
          v45 = a2;
          v46 = (a2 + v43);
          v71 = v46;
          v66 = v45;
          while (1)
          {
            if (v45 <= a1)
            {
              v76 = v45;
              v74 = v60;
              goto LABEL_66;
            }

            v47 = a3;
            v65 = v42;
            v48 = *v63;
            v72 = (v44 + v43);
            v49 = v73;
            (v48)(v67);
            (v48)(v68, v46, v49);
            sub_252E34964();
            v50 = sub_252E36F94();
            v52 = v51;
            sub_252E34964();
            if (v50 == sub_252E36F94() && v52 == v53)
            {
              v54 = 0;
            }

            else
            {
              v54 = sub_252E37DB4();
            }

            v43 = v64;
            a3 = &v47[v64];
            v55 = *v61;
            v56 = v73;
            (*v61)(v68, v73);
            v55(v67, v56);
            v57 = v62;
            if (v54)
            {
              break;
            }

            v58 = v72;
            v42 = v72;
            if (v47 < v44 || a3 >= v44)
            {
              swift_arrayInitWithTakeFrontToBack();
              v46 = v71;
            }

            else
            {
              v46 = v71;
              if (v47 != v44)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v44 = v42;
            v45 = v66;
            if (v58 <= v57)
            {
              a2 = v66;
              goto LABEL_65;
            }
          }

          if (v47 < v66 || a3 >= v66)
          {
            break;
          }

          a2 = v71;
          v42 = v65;
          if (v47 != v66)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v44 <= v57)
          {
            goto LABEL_65;
          }
        }

        a2 = v71;
        swift_arrayInitWithTakeFrontToBack();
        v42 = v65;
        if (v44 > v57)
        {
          continue;
        }

        break;
      }
    }

LABEL_65:
    v76 = a2;
    v74 = v42;
  }

  else
  {
    v22 = v21 * v19;
    if (a4 < a1 || a1 + v22 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v68 = (a4 + v22);
    v74 = a4 + v22;
    if (v22 >= 1 && a2 < a3)
    {
      v25 = *(v9 + 16);
      v67 = (v9 + 16);
      v63 = (v9 + 8);
      v64 = v25;
      v65 = a3;
      do
      {
        v26 = a2;
        v27 = a2;
        v28 = v73;
        v29 = v64;
        (v64)(v71, v27, v73);
        v29(v72, a4, v28);
        sub_252E34964();
        v30 = sub_252E36F94();
        v32 = v31;
        sub_252E34964();
        if (v30 == sub_252E36F94() && v32 == v33)
        {

          v34 = *v63;
          v35 = v73;
          (*v63)(v72, v73);
          v34(v71, v35);
        }

        else
        {
          v36 = sub_252E37DB4();

          v37 = *v63;
          v38 = v73;
          (*v63)(v72, v73);
          v37(v71, v38);
          if (v36)
          {
            v39 = v66;
            a2 = v26 + v66;
            if (a1 < v26 || a1 >= a2)
            {
              swift_arrayInitWithTakeFrontToBack();
              v40 = v65;
            }

            else
            {
              v40 = v65;
              if (a1 != v26)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            goto LABEL_35;
          }
        }

        v39 = v66;
        v41 = a4 + v66;
        a2 = v26;
        if (a1 < a4 || a1 >= v41)
        {
          swift_arrayInitWithTakeFrontToBack();
          v40 = v65;
        }

        else
        {
          v40 = v65;
          if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v75 = v41;
        a4 += v39;
LABEL_35:
        a1 += v39;
        v76 = a1;
      }

      while (a4 < v68 && a2 < v40);
    }
  }

LABEL_66:
  sub_252D7BA24(&v76, &v75, &v74, MEMORY[0x277D5E658]);
  return 1;
}