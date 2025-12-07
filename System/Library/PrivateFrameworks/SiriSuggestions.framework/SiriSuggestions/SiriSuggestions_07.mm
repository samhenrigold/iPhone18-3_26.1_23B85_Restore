__n128 *sub_231265158(unsigned __int8 a1)
{
  if (a1 - 131 <= 0x1F && (((1 << (a1 + 125)) & 0x61F1) != 0 || ((1 << (a1 + 125)) & 0x18000) != 0 || ((1 << (a1 + 125)) & 0x80001000) != 0) || (v3 = a1 - 65, a1 - 65 <= 0x3F) && (((1 << v3) & 0x8000010000001091) != 0 || ((1 << v3) & 0x40000000200000) != 0) || a1 <= 0x3Fu && ((1 << a1) & 0x8003000000400005) != 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43880, &qword_2313706E0);
    OUTLINED_FUNCTION_32_6();
    v4 = sub_231367650();
    OUTLINED_FUNCTION_0_0();
    v12 = *(v11 + 72);
    OUTLINED_FUNCTION_35_8();
    v7 = swift_allocObject();
    OUTLINED_FUNCTION_73_3(v7, xmmword_23136C1C0);
    v13 = OUTLINED_FUNCTION_34_7();
    v2(v13);
    v10 = *MEMORY[0x277D60998];
    v9 = v1 + v12;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43880, &qword_2313706E0);
    OUTLINED_FUNCTION_32_6();
    v4 = sub_231367650();
    OUTLINED_FUNCTION_0_0();
    v6 = *(v5 + 72);
    OUTLINED_FUNCTION_35_8();
    v7 = OUTLINED_FUNCTION_81_1();
    OUTLINED_FUNCTION_73_3(v7, xmmword_23136D280);
    v8 = OUTLINED_FUNCTION_34_7();
    v2(v8);
    (v2)(v1 + v6, *MEMORY[0x277D60998], v4);
    v9 = v1 + 2 * v6;
    v10 = *MEMORY[0x277D60988];
  }

  (v2)(v9, v10, v4);
  return v7;
}

uint64_t sub_2312653A8(unsigned __int8 a1)
{
  if (a1 - 130 > 0x20)
  {
LABEL_4:
    if (a1 - 58 <= 0x3E && ((1 << (a1 - 58)) & 0x6000000010000001) != 0)
    {
      goto LABEL_6;
    }

    if (a1 - 8 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43260, &qword_23136C990);
      OUTLINED_FUNCTION_32_6();
      v8 = sub_231367D80();
      OUTLINED_FUNCTION_0_0();
      v16 = *(v15 + 72);
      OUTLINED_FUNCTION_35_8();
      v7 = swift_allocObject();
      OUTLINED_FUNCTION_73_3(v7, xmmword_23136C1C0);
      v17 = OUTLINED_FUNCTION_34_7();
      v2(v17);
      v13 = *MEMORY[0x277D60B98];
      v12 = v1 + v16;
      goto LABEL_9;
    }

LABEL_8:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43260, &qword_23136C990);
    OUTLINED_FUNCTION_32_6();
    v8 = sub_231367D80();
    OUTLINED_FUNCTION_0_0();
    v10 = *(v9 + 72);
    OUTLINED_FUNCTION_35_8();
    v7 = OUTLINED_FUNCTION_81_1();
    OUTLINED_FUNCTION_73_3(v7, xmmword_23136D280);
    v11 = OUTLINED_FUNCTION_34_7();
    v2(v11);
    (v2)(v1 + v10, *MEMORY[0x277D60B78], v8);
    v12 = v1 + 2 * v10;
    v13 = *MEMORY[0x277D60B98];
LABEL_9:
    (v2)(v12, v13, v8);
    return v7;
  }

  if (((1 << (a1 + 126)) & 0x30030001) == 0)
  {
    if (((1 << (a1 + 126)) & 0x100003000) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_4;
  }

LABEL_6:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43260, &qword_23136C990);
  OUTLINED_FUNCTION_32_6();
  v3 = sub_231367D80();
  OUTLINED_FUNCTION_0_0();
  v5 = v4;
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_23136B670;
  (*(v5 + 104))(v7 + v6, *MEMORY[0x277D60B80], v3);
  return v7;
}

void sub_231265670(char *a1)
{
  v2 = sub_231366860();
  OUTLINED_FUNCTION_0_0();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v128 = &v120 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v120 - v8;
  MEMORY[0x28223BE20](v10);
  MEMORY[0x28223BE20](v11);
  v13 = &v120 - v12;
  MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v17 = &v120 - v16;
  MEMORY[0x28223BE20](v18);
  MEMORY[0x28223BE20](v19);
  v21 = &v120 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v120 - v23;
  MEMORY[0x28223BE20](v25);
  v32 = &v120 - v31;
  switch(a1)
  {
    case 119:
    case 120:
    case -126:
    case -113:
    case -110:
    case -109:
    case -106:
    case -105:
    case -101:
    case -98:
    case -97:
      goto LABEL_18;
    case 121:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43548, &qword_23136CA88);
      *(swift_allocObject() + 16) = xmmword_23136D280;
      sub_2313667B0();
      OUTLINED_FUNCTION_59_4();
      sub_2313667B0();
      OUTLINED_FUNCTION_30_8();
LABEL_22:
      sub_2313667B0();
      goto LABEL_81;
    case 122:
    case 123:
    case 124:
    case 125:
    case 126:
    case 127:
    case -128:
    case -127:
    case -125:
    case -124:
    case -123:
    case -122:
    case -121:
    case -120:
    case -119:
    case -118:
    case -117:
    case -116:
    case -115:
    case -112:
    case -111:
    case -108:
    case -107:
    case -104:
    case -103:
    case -102:
    case -100:
    case -96:
    case -95:
      goto LABEL_14;
    case -114:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43548, &qword_23136CA88);
      v69 = *(v4 + 72);
      v70 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v71 = swift_allocObject();
      *(v71 + 16) = xmmword_231370B30;
      v120 = v71;
      v72 = (v71 + v70);
      sub_2313667B0();
      sub_2313667B0();
      sub_2313667B0();
      v73 = OUTLINED_FUNCTION_30_8();
      OUTLINED_FUNCTION_83_1(v73);
      sub_2313667B0();
      OUTLINED_FUNCTION_83_1(0x53452D7365);
      OUTLINED_FUNCTION_82_1();
      OUTLINED_FUNCTION_83_1(0x4C432D7365);
      OUTLINED_FUNCTION_59_4();
      sub_2313667B0();
      OUTLINED_FUNCTION_83_1(0x52462D7266);
      sub_2313667B0();
      sub_2313667B0();
      v124 = v72;
      sub_2313667B0();
      v74 = sub_231368B70();
      v75 = 0;
      v126 = *(v74 + 16);
      v127 = v74;
      v122 = v70;
      v123 = (v74 + v70);
      OUTLINED_FUNCTION_74_4();
      v76 = MEMORY[0x277D84F90];
LABEL_47:
      while (2)
      {
        if (v75 == v126)
        {
          goto LABEL_80;
        }

        if (v75 < *(v127 + 16))
        {
          (*(v4 + 16))(v9, &v123[v75 * v69], v2);
          ++v75;
          OUTLINED_FUNCTION_4_13();
          sub_231266C0C(&qword_280F85958, v77, MEMORY[0x277CC97A0]);
          v78 = 14;
          v79 = v124;
          while (--v78)
          {
            v80 = &v79[v69];
            OUTLINED_FUNCTION_66_2();
            v81 = sub_231369F60();
            v79 = v80;
            if (v81)
            {
              (*v121)(v9, v2);
              goto LABEL_47;
            }
          }

          v82 = *v125;
          (*v125)(v128, v9, v2);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v129 = v76;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            OUTLINED_FUNCTION_69_3();
            v76 = v129;
          }

          v85 = *(v76 + 16);
          v84 = *(v76 + 24);
          if (v85 >= v84 >> 1)
          {
            sub_2311F5D78(v84 > 1, v85 + 1, 1);
            v76 = v129;
          }

          *(v76 + 16) = v85 + 1;
          v82(&v122[v76 + v85 * v69], v128, v2);
          continue;
        }

        break;
      }

      __break(1u);
      goto LABEL_83;
    case -99:
      v125 = v30;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43548, &qword_23136CA88);
      v35 = *(v4 + 72);
      OUTLINED_FUNCTION_32_7();
      *(swift_allocObject() + 16) = xmmword_23136B670;
      v36 = OUTLINED_FUNCTION_59_4();
      OUTLINED_FUNCTION_70_2(v36);
      v37 = sub_231368B70();
      v38 = 0;
      v39 = (v4 + 8);
      v40 = a1;
      v41 = &a1[OUTLINED_FUNCTION_65_3(v37)];
      v42 = MEMORY[0x277D84F90];
      v123 = v41;
      while (2)
      {
        v43 = v35;
        v44 = &v41[v35 * v38];
LABEL_25:
        if (v127 == v38)
        {
          goto LABEL_80;
        }

        if (v38 < *(v128 + 2))
        {
          (*v32)(v17, v44, v2);
          OUTLINED_FUNCTION_4_13();
          sub_231266C0C(&qword_280F85958, v45, MEMORY[0x277CC97A0]);
          OUTLINED_FUNCTION_66_2();
          if ((sub_231369F60() & 1) == 0)
          {
            v46 = *v124;
            (*v124)(v125, v17, v2);
            v47 = swift_isUniquelyReferenced_nonNull_native();
            v129 = v42;
            if ((v47 & 1) == 0)
            {
              OUTLINED_FUNCTION_22_10();
              v46 = v42;
              v42 = v129;
            }

            v49 = *(v42 + 16);
            v48 = *(v42 + 24);
            v50 = v49 + 1;
            if (v49 >= v48 >> 1)
            {
              OUTLINED_FUNCTION_16_14(v48);
              OUTLINED_FUNCTION_61_2();
            }

            ++v38;
            *(v42 + 16) = v50;
            v51 = &v40[v42 + v49 * v43];
            v35 = v43;
            v46(v51, v125, v2);
            v41 = v123;
            continue;
          }

          (*v39)(v17, v2);
          v44 += v43;
          ++v38;
          goto LABEL_25;
        }

        break;
      }

LABEL_83:
      __break(1u);
      goto LABEL_84;
    case -94:
      v125 = v29;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43548, &qword_23136CA88);
      v52 = *(v4 + 72);
      OUTLINED_FUNCTION_32_7();
      *(swift_allocObject() + 16) = xmmword_23136B670;
      v53 = OUTLINED_FUNCTION_30_8();
      OUTLINED_FUNCTION_70_2(v53);
      v54 = sub_231368B70();
      v55 = 0;
      v56 = (v4 + 8);
      v57 = a1;
      v58 = &a1[OUTLINED_FUNCTION_65_3(v54)];
      v59 = MEMORY[0x277D84F90];
      v123 = v58;
      while (2)
      {
        v60 = v52;
        v61 = &v58[v52 * v55];
LABEL_36:
        if (v127 == v55)
        {
          goto LABEL_80;
        }

        if (v55 < *(v128 + 2))
        {
          (*v32)(v13, v61, v2);
          OUTLINED_FUNCTION_4_13();
          sub_231266C0C(&qword_280F85958, v62, MEMORY[0x277CC97A0]);
          OUTLINED_FUNCTION_66_2();
          if ((sub_231369F60() & 1) == 0)
          {
            v63 = *v124;
            (*v124)(v125, v13, v2);
            v64 = swift_isUniquelyReferenced_nonNull_native();
            v129 = v59;
            if ((v64 & 1) == 0)
            {
              OUTLINED_FUNCTION_22_10();
              v63 = v59;
              v59 = v129;
            }

            v66 = *(v59 + 16);
            v65 = *(v59 + 24);
            v67 = v66 + 1;
            if (v66 >= v65 >> 1)
            {
              OUTLINED_FUNCTION_16_14(v65);
              OUTLINED_FUNCTION_61_2();
            }

            ++v55;
            *(v59 + 16) = v67;
            v68 = &v57[v59 + v66 * v60];
            v52 = v60;
            v63(v68, v125, v2);
            v58 = v123;
            continue;
          }

          (*v56)(v13, v2);
          v61 += v60;
          ++v55;
          goto LABEL_36;
        }

        break;
      }

LABEL_84:
      __break(1u);
      goto LABEL_85;
    default:
      if (!(!v27 & v26))
      {
        switch(a1)
        {
          case '0':
          case '1':
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43548, &qword_23136CA88);
            *(swift_allocObject() + 16) = xmmword_23136B670;
            goto LABEL_22;
          case '2':
          case '3':
          case '5':
          case '6':
          case '7':
          case '8':
            goto LABEL_14;
          case '4':
          case '9':
          case ':':
            goto LABEL_18;
          default:
            JUMPOUT(0);
        }
      }

      if (a1 - 8 < 2)
      {
        goto LABEL_18;
      }

      if (a1 == 66)
      {
        goto LABEL_14;
      }

      if (a1 != 67)
      {
        if (a1 != 86 && a1 != 102)
        {
          if (a1 == 105)
          {
            v126 = v28;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43548, &qword_23136CA88);
            v86 = *(v4 + 72);
            OUTLINED_FUNCTION_32_7();
            v87 = swift_allocObject();
            *(v87 + 16) = xmmword_23136D290;
            v120 = v87;
            v88 = &a1[v87];
            sub_2313667B0();
            sub_2313667B0();
            OUTLINED_FUNCTION_82_1();
            v124 = v88;
            sub_2313667B0();
            v89 = sub_231368B70();
            v90 = 0;
            v91 = *(v89 + 16);
            v127 = v89;
            v128 = v91;
            v122 = a1;
            v123 = &a1[v89];
            OUTLINED_FUNCTION_74_4();
            for (i = MEMORY[0x277D84F90]; ; v98(&v122[i + v101 * v86], v126, v2))
            {
LABEL_58:
              if (v90 == v128)
              {
                goto LABEL_80;
              }

              if (v90 >= *(v127 + 16))
              {
                break;
              }

              (*(v4 + 16))(v21, &v123[v90++ * v86], v2);
              OUTLINED_FUNCTION_4_13();
              sub_231266C0C(&qword_280F85958, v93, MEMORY[0x277CC97A0]);
              v94 = 5;
              v95 = v124;
              while (--v94)
              {
                v96 = &v95[v86];
                OUTLINED_FUNCTION_66_2();
                v97 = sub_231369F60();
                v95 = v96;
                if (v97)
                {
                  (*v121)(v21, v2);
                  goto LABEL_58;
                }
              }

              v98 = *v125;
              (*v125)(v126, v21, v2);
              v99 = swift_isUniquelyReferenced_nonNull_native();
              v129 = i;
              if ((v99 & 1) == 0)
              {
                OUTLINED_FUNCTION_69_3();
                i = v129;
              }

              v101 = *(i + 16);
              v100 = *(i + 24);
              if (v101 >= v100 >> 1)
              {
                sub_2311F5D78(v100 > 1, v101 + 1, 1);
                i = v129;
              }

              *(i + 16) = v101 + 1;
            }

LABEL_85:
            __break(1u);
LABEL_86:
            __break(1u);
LABEL_87:
            MEMORY[0x2821C7368]();
            return;
          }

          if (a1 != 104)
          {
LABEL_14:
            OUTLINED_FUNCTION_9_0();

            goto LABEL_87;
          }
        }

LABEL_18:
        OUTLINED_FUNCTION_9_0();

        sub_231368B70();
        return;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43548, &qword_23136CA88);
      v102 = *(v4 + 72);
      OUTLINED_FUNCTION_32_7();
      *(swift_allocObject() + 16) = xmmword_23136B670;
      v103 = OUTLINED_FUNCTION_30_8();
      OUTLINED_FUNCTION_70_2(v103);
      v104 = sub_231368B70();
      v105 = 0;
      v106 = *(v104 + 16);
      v127 = v104;
      v128 = v106;
      v107 = (v4 + 16);
      v124 = (v4 + 32);
      v125 = a1;
      v108 = (v4 + 8);
      v109 = &a1[v104];
      v110 = MEMORY[0x277D84F90];
      v123 = v109;
LABEL_70:
      v111 = v102;
      v112 = &v109[v102 * v105];
      while (v128 != v105)
      {
        if (v105 >= *(v127 + 16))
        {
          goto LABEL_86;
        }

        (*v107)(v32, v112, v2);
        OUTLINED_FUNCTION_4_13();
        sub_231266C0C(&qword_280F85958, v113, MEMORY[0x277CC97A0]);
        OUTLINED_FUNCTION_66_2();
        if ((sub_231369F60() & 1) == 0)
        {
          v114 = *v124;
          (*v124)(v24, v32, v2);
          v115 = swift_isUniquelyReferenced_nonNull_native();
          v129 = v110;
          if ((v115 & 1) == 0)
          {
            OUTLINED_FUNCTION_22_10();
            v114 = v110;
            v110 = v129;
          }

          v117 = *(v110 + 16);
          v116 = *(v110 + 24);
          v118 = v117 + 1;
          if (v117 >= v116 >> 1)
          {
            OUTLINED_FUNCTION_16_14(v116);
            OUTLINED_FUNCTION_61_2();
          }

          ++v105;
          *(v110 + 16) = v118;
          v119 = &v125[v110 + v117 * v111];
          v102 = v111;
          v114(v119, v24, v2);
          v109 = v123;
          goto LABEL_70;
        }

        (*v108)(v32, v2);
        v112 += v111;
        ++v105;
      }

LABEL_80:
      swift_setDeallocating();
      sub_231322AD0();

LABEL_81:
      OUTLINED_FUNCTION_9_0();
      return;
  }
}

uint64_t sub_2312663F4(uint64_t a1, uint64_t a2)
{
  v2 = sub_23136A940();

  v3 = 0;
  result = 70;
  switch(v2)
  {
    case 0:
      goto LABEL_125;
    case 1:
      v3 = 1;
      goto LABEL_125;
    case 2:
      v3 = 2;
      goto LABEL_125;
    case 3:
      v3 = 3;
      goto LABEL_125;
    case 4:
      v3 = 4;
      goto LABEL_125;
    case 5:
      v3 = 5;
      goto LABEL_125;
    case 6:
      v3 = 6;
      goto LABEL_125;
    case 7:
      v3 = 7;
      goto LABEL_125;
    case 8:
      v3 = 8;
      goto LABEL_125;
    case 9:
      v3 = 9;
      goto LABEL_125;
    case 10:
      v3 = 10;
      goto LABEL_125;
    case 11:
      v3 = 11;
      goto LABEL_125;
    case 12:
      v3 = 12;
      goto LABEL_125;
    case 13:
      v3 = 13;
      goto LABEL_125;
    case 14:
      v3 = 14;
      goto LABEL_125;
    case 15:
      v3 = 15;
      goto LABEL_125;
    case 16:
      v3 = 16;
      goto LABEL_125;
    case 17:
      v3 = 17;
      goto LABEL_125;
    case 18:
      v3 = 18;
      goto LABEL_125;
    case 19:
      v3 = 19;
      goto LABEL_125;
    case 20:
      v3 = 20;
      goto LABEL_125;
    case 21:
      v3 = 21;
      goto LABEL_125;
    case 22:
      v3 = 22;
      goto LABEL_125;
    case 23:
      v3 = 23;
      goto LABEL_125;
    case 24:
      v3 = 24;
      goto LABEL_125;
    case 25:
      v3 = 25;
      goto LABEL_125;
    case 26:
      v3 = 26;
      goto LABEL_125;
    case 27:
      v3 = 27;
      goto LABEL_125;
    case 28:
      v3 = 28;
      goto LABEL_125;
    case 29:
      v3 = 29;
      goto LABEL_125;
    case 30:
      v3 = 30;
      goto LABEL_125;
    case 31:
      v3 = 31;
      goto LABEL_125;
    case 32:
      v3 = 32;
      goto LABEL_125;
    case 33:
      v3 = 33;
      goto LABEL_125;
    case 34:
      v3 = 34;
      goto LABEL_125;
    case 35:
      v3 = 35;
      goto LABEL_125;
    case 36:
      v3 = 36;
      goto LABEL_125;
    case 37:
      v3 = 37;
      goto LABEL_125;
    case 38:
      v3 = 38;
      goto LABEL_125;
    case 39:
      v3 = 39;
      goto LABEL_125;
    case 40:
      v3 = 40;
      goto LABEL_125;
    case 41:
      v3 = 41;
      goto LABEL_125;
    case 42:
      v3 = 42;
      goto LABEL_125;
    case 43:
      v3 = 43;
      goto LABEL_125;
    case 44:
      v3 = 44;
      goto LABEL_125;
    case 45:
      v3 = 45;
      goto LABEL_125;
    case 46:
      v3 = 46;
      goto LABEL_125;
    case 47:
      v3 = 47;
      goto LABEL_125;
    case 48:
      v3 = 48;
      goto LABEL_125;
    case 49:
      v3 = 49;
      goto LABEL_125;
    case 50:
      v3 = 50;
      goto LABEL_125;
    case 51:
      v3 = 51;
      goto LABEL_125;
    case 52:
      v3 = 52;
      goto LABEL_125;
    case 53:
      v3 = 53;
      goto LABEL_125;
    case 54:
      v3 = 54;
      goto LABEL_125;
    case 55:
      v3 = 55;
      goto LABEL_125;
    case 56:
      v3 = 56;
      goto LABEL_125;
    case 57:
      v3 = 57;
      goto LABEL_125;
    case 58:
      v3 = 58;
      goto LABEL_125;
    case 59:
      v3 = 59;
      goto LABEL_125;
    case 60:
      v3 = 60;
      goto LABEL_125;
    case 61:
      v3 = 61;
      goto LABEL_125;
    case 62:
      v3 = 62;
      goto LABEL_125;
    case 63:
      v3 = 63;
      goto LABEL_125;
    case 64:
      v3 = 64;
      goto LABEL_125;
    case 65:
      v3 = 65;
      goto LABEL_125;
    case 66:
      v3 = 66;
      goto LABEL_125;
    case 67:
      v3 = 67;
      goto LABEL_125;
    case 68:
      v3 = 68;
      goto LABEL_125;
    case 69:
      v3 = 69;
LABEL_125:
      result = v3;
      break;
    case 70:
      return result;
    case 71:
      result = 71;
      break;
    case 72:
      result = 72;
      break;
    case 73:
      result = 73;
      break;
    case 74:
      result = 74;
      break;
    case 75:
      result = 75;
      break;
    case 76:
      result = 76;
      break;
    case 77:
      result = 77;
      break;
    case 78:
      result = 78;
      break;
    case 79:
      result = 79;
      break;
    case 80:
      result = 80;
      break;
    case 81:
      result = 81;
      break;
    case 82:
      result = 82;
      break;
    case 83:
      result = 83;
      break;
    case 84:
      result = 84;
      break;
    case 85:
      result = 85;
      break;
    case 86:
      result = 86;
      break;
    case 87:
      result = 87;
      break;
    case 88:
      result = 88;
      break;
    case 89:
      result = 89;
      break;
    case 90:
      result = 90;
      break;
    case 91:
      result = 91;
      break;
    case 92:
      result = 92;
      break;
    case 93:
      result = 93;
      break;
    case 94:
      result = 94;
      break;
    case 95:
      result = 95;
      break;
    case 96:
      result = 96;
      break;
    case 97:
      result = 97;
      break;
    case 98:
      result = 98;
      break;
    case 99:
      result = 99;
      break;
    case 100:
      result = 100;
      break;
    case 101:
      result = 101;
      break;
    case 102:
      result = 102;
      break;
    case 103:
      result = 103;
      break;
    case 104:
      result = 104;
      break;
    case 105:
      result = 105;
      break;
    case 106:
      result = 106;
      break;
    case 107:
      result = 107;
      break;
    case 108:
      result = 108;
      break;
    case 109:
      result = 109;
      break;
    case 110:
      result = 110;
      break;
    case 111:
      result = 111;
      break;
    case 112:
      result = 112;
      break;
    case 113:
      result = 113;
      break;
    case 114:
      result = 114;
      break;
    case 115:
      result = 115;
      break;
    case 116:
      result = 116;
      break;
    case 117:
      result = 117;
      break;
    case 118:
      result = 118;
      break;
    case 119:
      result = 119;
      break;
    case 120:
      result = 120;
      break;
    case 121:
      result = 121;
      break;
    case 122:
      result = 122;
      break;
    case 123:
      result = 123;
      break;
    case 124:
      result = 124;
      break;
    case 125:
      result = 125;
      break;
    case 126:
      result = 126;
      break;
    case 127:
      result = 127;
      break;
    default:
      if ((v2 - 128) >= 0x23)
      {
        result = 4294967203;
      }

      else
      {
        result = v2;
      }

      break;
  }

  return result;
}

uint64_t sub_231266880()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_37_7();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_33(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_9_15(v1);

  return sub_2312E0B30(v3, v4, v5, v6);
}

unint64_t sub_23126690C()
{
  result = qword_280F7CAD8;
  if (!qword_280F7CAD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD43828, &qword_23136E058);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F7CAD8);
  }

  return result;
}

uint64_t sub_231266970()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_37_7();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_33(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_9_15(v1);

  return sub_2312E0B30(v3, v4, v5, v6);
}

uint64_t sub_231266A64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BaseModelSignals.SignalWithFilter(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_231266AC8(void *a1)
{
  v2 = [a1 vocabularyIdentifier];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_231369FD0();

  return v3;
}

uint64_t sub_231266B38(void *a1)
{
  v1 = [a1 attachments];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_231207BDC(0, &qword_280F7C7A8, 0x277CD4070);
  v3 = sub_23136A1A0();

  return v3;
}

uint64_t sub_231266BA8(void *a1)
{
  v1 = [a1 domainUseCase];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_231369FD0();

  return v3;
}

uint64_t sub_231266C0C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t get_enum_tag_for_layout_string_18SiriSuggestionsKit8Resolver_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_231266C80(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_231266CC0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_13_14(uint64_t a1, uint64_t a2)
{

  return sub_23136A900();
}

uint64_t OUTLINED_FUNCTION_28_10(uint64_t result)
{
  v1[7] = result;
  v1[8] = v3;
  v1[4] = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_43_7(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_44_7(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_46_9(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_51_5(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_53_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_231368500();
}

uint64_t OUTLINED_FUNCTION_54_5()
{

  return sub_2311CF324(v0 - 192, v0 - 128);
}

uint64_t OUTLINED_FUNCTION_55_6(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_56_4(uint64_t a1)
{

  return swift_allocObject();
}

void *OUTLINED_FUNCTION_57_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return sub_23124946C(a1, a2, v6, v7, a5, a6);
}

uint64_t *OUTLINED_FUNCTION_58_3@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2[3] = a1;
  v2[4] = a2;

  return __swift_allocate_boxed_opaque_existential_1(v2);
}

uint64_t OUTLINED_FUNCTION_63_4(uint64_t result)
{
  *(result + 16) = v4;
  *(result + 24) = v1;
  *(v2 + 72) = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_65_3(uint64_t result)
{
  *(v2 - 104) = *(result + 16);
  *(v2 - 96) = result;
  *(v2 - 128) = v1 + 32;
  return result;
}

void OUTLINED_FUNCTION_69_3()
{
  v2 = *(v0 + 16) + 1;

  sub_2311F5D78(0, v2, 1);
}

uint64_t OUTLINED_FUNCTION_81_1()
{

  return swift_allocObject();
}

void sub_23126709C()
{
  OUTLINED_FUNCTION_65_1();
  OUTLINED_FUNCTION_2_12(v3);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v6 = v4;
  sub_23126FDD8();
  v7 = *v1;
  if (!*(v2 + 16))
  {

    if (!v0)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v8 = (*(v7 + 24) >> 1) - *(v7 + 16);
  v6(0);
  if (v8 < v0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v0)
  {
LABEL_8:
    *v1 = v7;
    OUTLINED_FUNCTION_64_1();
    return;
  }

  v9 = *(v7 + 16);
  v5 = __OFADD__(v9, v0);
  v10 = v9 + v0;
  if (!v5)
  {
    *(v7 + 16) = v10;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_2312671B4(uint64_t a1)
{
  OUTLINED_FUNCTION_2_12(a1);
  if (v4)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_23126FDD8();
  OUTLINED_FUNCTION_42_9();
  if (!v5)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v6 = (*(v3 + 24) >> 1) - *(v3 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD434C0, &unk_23136CA00);
  if (v6 < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_41_8();
  if (!v4)
  {
    *(v3 + 16) = v7;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_2312672E0(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_2_12(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_23126FD60(v4, 1, sub_23126DC90);
  OUTLINED_FUNCTION_42_9();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_9_16();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_41_8();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_231267450(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_2_12(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_23126FD60(v4, 1, sub_23126E654);
  OUTLINED_FUNCTION_42_9();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_9_16();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43FE8, &qword_231370E98);
  OUTLINED_FUNCTION_39_6(v8);

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_41_8();
  if (!v5)
  {
    *(v3 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_231267530(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_2_12(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_23126FD60(v4, 1, sub_23126E92C);
  OUTLINED_FUNCTION_42_9();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_9_16();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_41_8();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_2312675E4(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_2_12(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_23126FD60(v4, 1, sub_23126EA10);
  OUTLINED_FUNCTION_42_9();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_9_16();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43630, &qword_23136CB70);
  OUTLINED_FUNCTION_39_6(v8);

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_41_8();
  if (!v5)
  {
    *(v3 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_2312676A0(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_2_12(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_23126FD60(v4, 1, sub_23126EC0C);
  OUTLINED_FUNCTION_42_9();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_9_16();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD434F8, &qword_23136CA38);
  OUTLINED_FUNCTION_39_6(v8);

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_41_8();
  if (!v5)
  {
    *(v3 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_2312677A4()
{
  OUTLINED_FUNCTION_65_1();
  OUTLINED_FUNCTION_2_12(v3);
  if (v6)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v7 = v5;
  v8 = v4;
  sub_23126FC0C();
  v9 = *v1;
  if (!*(v2 + 16))
  {

    if (!v0)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v9 + 24) >> 1) - *(v9 + 16) < v0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(v8, v7);
  swift_arrayInitWithCopy();

  if (!v0)
  {
LABEL_8:
    *v1 = v9;
    OUTLINED_FUNCTION_64_1();
    return;
  }

  v10 = *(v9 + 16);
  v6 = __OFADD__(v10, v0);
  v11 = v10 + v0;
  if (!v6)
  {
    *(v9 + 16) = v11;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_2312678D4(uint64_t a1)
{
  v3 = type metadata accessor for GenerationService.DedupData(0);
  v29 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v28 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v25 = v1;
  v33 = MEMORY[0x277D84F90];
  sub_2311F5B30(0);
  v6 = v33;
  result = sub_231270530(a1);
  v9 = result;
  v11 = v10;
  v12 = 0;
  v31 = a1 + 64;
  v26 = a1 + 72;
  v27 = v5;
  if ((result & 0x8000000000000000) == 0)
  {
    while (v9 < 1 << *(a1 + 32))
    {
      v13 = v9 >> 6;
      if ((*(v31 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
      {
        goto LABEL_23;
      }

      if (*(a1 + 36) != v11)
      {
        goto LABEL_24;
      }

      v30 = v8;
      v14 = v28;
      sub_231270BA8(*(a1 + 56) + *(v29 + 72) * v9, v28);
      sub_2311CF388(v14 + 16, v32);
      sub_231270CE0(v14);
      v33 = v6;
      v16 = *(v6 + 16);
      v15 = *(v6 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_2311F5B30(v15 > 1);
        v6 = v33;
      }

      *(v6 + 16) = v16 + 1;
      result = sub_2311D38A8(v32, v6 + 40 * v16 + 32);
      v17 = 1 << *(a1 + 32);
      if (v9 >= v17)
      {
        goto LABEL_25;
      }

      v18 = *(v31 + 8 * v13);
      if ((v18 & (1 << v9)) == 0)
      {
        goto LABEL_26;
      }

      if (*(a1 + 36) != v11)
      {
        goto LABEL_27;
      }

      v19 = v18 & (-2 << (v9 & 0x3F));
      if (v19)
      {
        v17 = __clz(__rbit64(v19)) | v9 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v20 = v13 << 6;
        v21 = v13 + 1;
        v22 = (v26 + 8 * v13);
        while (v21 < (v17 + 63) >> 6)
        {
          v24 = *v22++;
          v23 = v24;
          v20 += 64;
          ++v21;
          if (v24)
          {
            result = sub_2311F0490(v9, v11, v30 & 1);
            v17 = __clz(__rbit64(v23)) + v20;
            goto LABEL_18;
          }
        }

        result = sub_2311F0490(v9, v11, v30 & 1);
      }

LABEL_18:
      if (++v12 == v27)
      {
        return v6;
      }

      v8 = 0;
      v11 = *(a1 + 36);
      v9 = v17;
      if (v17 < 0)
      {
        break;
      }
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_231267BB0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44050, &qword_231370F18);
    v3 = sub_23136A790();
  }

  else
  {
    v3 = MEMORY[0x277D84F98];
  }

  v6 = v3;
  sub_23126FE3C(a1, 1, &v6);
  v4 = v6;
  if (v1)
  {
  }

  return v4;
}

uint64_t sub_231267C48(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_231267C68, 0, 0);
}

void sub_231267C68()
{
  v1 = *(v0[2] + 16);
  v2 = MEMORY[0x277D84F90];
  v0[5] = 0;
  v0[6] = v2;
  v0[4] = v1;
  if (v1)
  {
    v3 = swift_task_alloc();
    v4 = OUTLINED_FUNCTION_69_4(v3);
    *v4 = v5;
    OUTLINED_FUNCTION_26_11(v4);
    OUTLINED_FUNCTION_74();

    sub_23126BA34(v6, v7);
  }

  else
  {
    v9 = 0;
    v10 = *(v2 + 16);
    v11 = v2;
    while (1)
    {
      if (v10 == v9)
      {

        OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_74();

        __asm { BRAA            X2, X16 }
      }

      if (v9 >= *(v2 + 16))
      {
        break;
      }

      v12 = *(v2 + 8 * v9 + 32);
      v13 = *(v12 + 16);
      v14 = *(v11 + 16);
      if (__OFADD__(v14, v13))
      {
        goto LABEL_23;
      }

      sub_231369EE0();
      if (!swift_isUniquelyReferenced_nonNull_native() || v14 + v13 > *(v11 + 24) >> 1)
      {
        OUTLINED_FUNCTION_44_8();
        sub_23126DA88(v15, v16, v17, v18, v19, v20, v21);
        v11 = v22;
      }

      if (*(v12 + 16))
      {
        v23 = (*(v11 + 24) >> 1) - *(v11 + 16);
        type metadata accessor for GenerationService.DedupData(0);
        if (v23 < v13)
        {
          goto LABEL_25;
        }

        swift_arrayInitWithCopy();

        if (v13)
        {
          v24 = *(v11 + 16);
          v25 = __OFADD__(v24, v13);
          v26 = v24 + v13;
          if (v25)
          {
            goto LABEL_26;
          }

          *(v11 + 16) = v26;
        }
      }

      else
      {

        if (v13)
        {
          goto LABEL_24;
        }
      }

      ++v9;
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }
}

uint64_t sub_231267EB4()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v3 = v2;
  OUTLINED_FUNCTION_4();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 64) = v5;
  *(v3 + 72) = v0;

  if (v0)
  {

    v6 = sub_2312682BC;
  }

  else
  {
    v6 = sub_231267FC0;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_231267FC0()
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2 = v0[6];
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_33;
  }

  while (1)
  {
    v3 = *(v2 + 16);
    if (v3 >= *(v2 + 24) >> 1)
    {
      OUTLINED_FUNCTION_44_8();
      sub_23126E3C8();
      v2 = v31;
    }

    v4 = v0[8];
    *(v2 + 16) = v3 + 1;
    *(v2 + 8 * v3 + 32) = v4;
    v5 = v0[4];
    v6 = v0[5] + 1;
    v0[5] = v6;
    v0[6] = v2;
    if (v6 != v5)
    {
      break;
    }

    v7 = 0;
    v8 = *(v2 + 16);
    v9 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v8 == v7)
      {

        OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_74();

        __asm { BRAA            X2, X16 }
      }

      if (v7 >= *(v2 + 16))
      {
        break;
      }

      v10 = *(v2 + 8 * v7 + 32);
      v11 = *(v10 + 16);
      v12 = *(v9 + 16);
      v13 = v12 + v11;
      if (__OFADD__(v12, v11))
      {
        goto LABEL_29;
      }

      sub_231369EE0();
      v14 = swift_isUniquelyReferenced_nonNull_native();
      if (!v14 || v13 > *(v9 + 24) >> 1)
      {
        if (v12 <= v13)
        {
          v15 = v12 + v11;
        }

        else
        {
          v15 = v12;
        }

        sub_23126DA88(v14, v15, 1, v9, sub_231250398, type metadata accessor for GenerationService.DedupData, type metadata accessor for GenerationService.DedupData);
        v9 = v16;
      }

      if (*(v10 + 16))
      {
        v17 = (*(v9 + 24) >> 1) - *(v9 + 16);
        type metadata accessor for GenerationService.DedupData(0);
        if (v17 < v11)
        {
          goto LABEL_31;
        }

        swift_arrayInitWithCopy();

        if (v11)
        {
          v18 = *(v9 + 16);
          v19 = __OFADD__(v18, v11);
          v20 = v18 + v11;
          if (v19)
          {
            goto LABEL_32;
          }

          *(v9 + 16) = v20;
        }
      }

      else
      {

        if (v11)
        {
          goto LABEL_30;
        }
      }

      ++v7;
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    OUTLINED_FUNCTION_44_8();
    sub_23126E3C8();
    v2 = v30;
  }

  v21 = swift_task_alloc();
  v22 = OUTLINED_FUNCTION_69_4(v21);
  *v22 = v23;
  OUTLINED_FUNCTION_26_11(v22);
  OUTLINED_FUNCTION_74();

  return sub_23126BA34(v24, v25);
}

uint64_t sub_2312682BC()
{
  OUTLINED_FUNCTION_8();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t GenerationService.generateCandidates(for:with:)()
{
  OUTLINED_FUNCTION_8();
  v1[54] = v2;
  v1[55] = v0;
  v1[53] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43EF0, &unk_23137A250);
  v1[56] = OUTLINED_FUNCTION_43();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43EF8, &qword_231370C00);
  v1[57] = v4;
  OUTLINED_FUNCTION_0(v4);
  v1[58] = v5;
  v1[59] = OUTLINED_FUNCTION_43();
  v6 = sub_231367C70();
  v1[60] = v6;
  OUTLINED_FUNCTION_0(v6);
  v1[61] = v7;
  v1[62] = swift_task_alloc();
  v1[63] = swift_task_alloc();
  v1[64] = swift_task_alloc();
  sub_2313667A0();
  v1[65] = OUTLINED_FUNCTION_43();
  v8 = sub_2313698C0();
  v1[66] = v8;
  OUTLINED_FUNCTION_0(v8);
  v1[67] = v9;
  v1[68] = swift_task_alloc();
  v1[69] = swift_task_alloc();
  v10 = sub_231369840();
  v1[70] = v10;
  OUTLINED_FUNCTION_0(v10);
  v1[71] = v11;
  v1[72] = OUTLINED_FUNCTION_43();
  v12 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_23126853C(uint64_t a1)
{
  v77 = v1;
  v2 = *(v1 + 440);
  v3 = sub_231369190();
  sub_231369140();

  sub_231367580();
  v4 = sub_231369190();
  OUTLINED_FUNCTION_27();
  sub_2313691A0();

  v5 = *(v2 + 16);
  v6 = *(v5 + 16);
  v7 = MEMORY[0x277D84F90];
  v75 = v5;
  if (v6)
  {
    v76 = MEMORY[0x277D84F90];
    sub_2311F4E34(0);
    v7 = v76;
    v8 = v5 + 32;
    do
    {
      sub_2311CF388(v8, v1 + 16);
      sub_2311CF388(v1 + 16, v1 + 56);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD431F8, &unk_231374F20);
      v9 = sub_23136A010();
      v11 = v10;
      __swift_destroy_boxed_opaque_existential_1Tm((v1 + 16));
      v76 = v7;
      v13 = *(v7 + 16);
      v12 = *(v7 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_2311F4E34(v12 > 1);
        v7 = v76;
      }

      *(v7 + 16) = v13 + 1;
      v14 = v7 + 16 * v13;
      *(v14 + 32) = v9;
      *(v14 + 40) = v11;
      v8 += 40;
      --v6;
    }

    while (v6);
  }

  v15 = *(v1 + 424);
  *(v1 + 416) = v7;
  v16 = OUTLINED_FUNCTION_55_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(v16, v17);
  sub_23121C788(&qword_280F7C820, &unk_27DD42F68, &qword_23136B890, MEMORY[0x277D83958]);
  v18 = sub_231369F50();
  v20 = v19;

  sub_2313690F0();
  sub_2311CF388(v15, v1 + 96);
  sub_231369EE0();
  v21 = sub_2313698A0();
  v22 = sub_23136A390();

  v23 = os_log_type_enabled(v21, v22);
  v24 = *(v1 + 552);
  v25 = *(v1 + 536);
  v26 = *(v1 + 528);
  if (v23)
  {
    v27 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v76 = v72;
    *v27 = 136315394;
    v67 = v18;
    v69 = v22;
    __swift_project_boxed_opaque_existential_1((v1 + 96), *(v1 + 120));
    sub_231367AD0();
    __swift_project_boxed_opaque_existential_1((v1 + 376), *(v1 + 400));
    OUTLINED_FUNCTION_21();
    v29 = v28;
    OUTLINED_FUNCTION_43();
    (*(v29 + 16))();
    v30 = sub_23136A020();
    v32 = v31;

    __swift_destroy_boxed_opaque_existential_1Tm((v1 + 376));
    __swift_destroy_boxed_opaque_existential_1Tm((v1 + 96));
    v33 = sub_2311CFD58(v30, v32, &v76);

    *(v27 + 4) = v33;
    *(v27 + 12) = 2080;
    v34 = sub_2311CFD58(v67, v20, &v76);

    *(v27 + 14) = v34;
    _os_log_impl(&dword_2311CB000, v21, v69, "Running through generators for owner '%s':\n %s", v27, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23192B930](v72, -1, -1);
    MEMORY[0x23192B930](v27, -1, -1);

    v35 = *(v25 + 8);
    v35(v24, v26);
  }

  else
  {

    v35 = *(v25 + 8);
    v35(v24, v26);
    __swift_destroy_boxed_opaque_existential_1Tm((v1 + 96));
  }

  *(v1 + 584) = v35;
  v70 = *(v1 + 520);
  v36 = *(v1 + 512);
  v37 = *(v1 + 488);
  v73 = *(v1 + 504);
  v74 = *(v1 + 480);
  v38 = *(v1 + 432);
  v39 = *(v1 + 440);
  v40 = *(v1 + 424);
  v71 = type metadata accessor for PooledCandidateSuggestionFactory(0);
  __swift_project_boxed_opaque_existential_1(v40, v40[3]);
  sub_2313677C0();
  v41 = v39[13];
  v42 = v40[3];
  v68 = v40[4];
  v66 = __swift_project_boxed_opaque_existential_1(v40, v42);
  sub_2311CF388(v38, v1 + 176);
  __swift_project_boxed_opaque_existential_1(v40, v40[3]);

  sub_2313677D0();
  sub_2311CF388((v39 + 3), v1 + 216);
  OUTLINED_FUNCTION_21();
  v44 = v43;
  v45 = OUTLINED_FUNCTION_43();
  (*(v44 + 16))(v45, v66, v42);
  v46 = sub_2312E6098(v70, v41, v45, (v1 + 176), v36, (v1 + 216), v71, v42, *(v68 + 8));

  *(v1 + 160) = v71;
  *(v1 + 168) = sub_231270570();
  *(v1 + 136) = v46;
  v47 = v39[11];
  v48 = v39[12];
  __swift_project_boxed_opaque_existential_1(v39 + 8, v47);
  (*(v48 + 16))(v47, v48);
  __swift_project_boxed_opaque_existential_1(v40, v40[3]);
  sub_2313677D0();
  *(v1 + 672) = *MEMORY[0x277D60AC8];
  v49 = *(v37 + 104);
  *(v1 + 592) = v49;
  *(v1 + 600) = (v37 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v49(v73);
  LOBYTE(v45) = sub_231367C60();
  v50 = *(v37 + 8);
  *(v1 + 608) = v50;
  *(v1 + 616) = (v37 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v50(v73, v74);
  v51 = OUTLINED_FUNCTION_54_0();
  (v50)(v51);
  if (v45)
  {
    __swift_project_boxed_opaque_existential_1(*(v1 + 424), v40[3]);
    OUTLINED_FUNCTION_27();
    if (sub_231367830())
    {
    }
  }

  v53 = *(v1 + 464);
  v52 = *(v1 + 472);
  v55 = *(v1 + 448);
  v54 = *(v1 + 456);
  v57 = *(v1 + 432);
  v56 = *(v1 + 440);
  v58 = *(v1 + 424);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD431F8, &unk_231374F20);
  sub_231367FE0();
  (*(v53 + 16))(v55, v52, v54);
  __swift_storeEnumTagSinglePayload(v55, 0, 1, v54);
  sub_2311CF388(v58, v1 + 256);
  sub_2311CF388(v57, v1 + 296);
  sub_2311CF388(v1 + 136, v1 + 336);
  v60 = swift_allocObject();
  *(v1 + 624) = v60;
  *(v60 + 16) = v56;
  sub_2311D38A8((v1 + 256), v60 + 24);
  sub_2311D38A8((v1 + 296), v60 + 64);
  sub_2311D38A8((v1 + 336), v60 + 104);

  v61 = swift_task_alloc();
  *(v1 + 632) = v61;
  *v61 = v1;
  v61[1] = sub_231268D8C;
  v64 = *(v1 + 448);

  return MEMORY[0x2821C6B08](v75, v64, &unk_231370C10, v60, v59, &type metadata for GeneratorOutput, v62, v63);
}

void sub_231268D8C()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_12();
  v3 = v2;
  OUTLINED_FUNCTION_4();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 640) = v5;

  if (v0)
  {
  }

  else
  {
    sub_2311D1F18(*(v3 + 448), &qword_27DD43EF0, &unk_23137A250);

    MEMORY[0x2822009F8](sub_231268ED8, 0, 0);
  }
}

void sub_231268ED8(uint64_t a1)
{
  v2 = *(v1 + 640);
  v3 = *(v1 + 584);
  sub_231369170();
  sub_231369890();
  v4 = OUTLINED_FUNCTION_27();
  v3(v4);
  v5 = 0;
  v6 = MEMORY[0x277D84F90];
  v7 = *(v2 + 16);
  for (i = (v2 + 32); ; i += 5)
  {
    *(v1 + 648) = v6;
    if (v7 == v5)
    {
      v17 = *(v1 + 488);
      v16 = *(v1 + 496);
      v18 = *(v1 + 480);

      v19 = OUTLINED_FUNCTION_55_7();
      __swift_project_boxed_opaque_existential_1(v19, v20);
      sub_2313677D0();
      if ((*(v17 + 88))(v16, v18) == *MEMORY[0x277D60AC0])
      {
        v21 = *(v1 + 496);
        (*(*(v1 + 488) + 96))(v21, *(v1 + 480));
        v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43788, qword_23136D9D8) + 48);
        sub_2313681A0();
        OUTLINED_FUNCTION_46_0();
        v23 = OUTLINED_FUNCTION_28();
        v25 = v24(v23);
        v26 = *(v1 + 496);
        if (v25 == *MEMORY[0x277D60DC0])
        {
          v27 = OUTLINED_FUNCTION_49_6();
          v28(v27);
          v29 = OUTLINED_FUNCTION_37_8();
          v30(v29);
          sub_231368270();
          OUTLINED_FUNCTION_11();
          (*(v31 + 8))(v26);
          sub_231368210();
          OUTLINED_FUNCTION_11();
          (*(v32 + 8))(v21 + v22);
          goto LABEL_22;
        }

        sub_231368210();
        OUTLINED_FUNCTION_11();
        (*(v33 + 8))(v21 + v22);
        v34 = OUTLINED_FUNCTION_37_8();
        v35(v34);
      }

      else
      {
        (*(v1 + 608))(*(v1 + 496), *(v1 + 480));
      }

      v36 = *(v1 + 608);
      v52 = *(v1 + 592);
      v51 = *(v1 + 672);
      v38 = *(v1 + 504);
      v37 = *(v1 + 512);
      v39 = *(v1 + 480);
      __swift_project_boxed_opaque_existential_1(*(v1 + 424), *(*(v1 + 424) + 24));
      sub_2313677D0();
      v52(v38, v51, v39);
      OUTLINED_FUNCTION_54_0();
      v40 = sub_231367C60();
      v36(v38, v39);
      v36(v37, v39);
      if ((v40 & 1) == 0)
      {
        v48 = swift_task_alloc();
        *(v1 + 656) = v48;
        *v48 = v1;
        v48[1] = sub_23126949C;
        OUTLINED_FUNCTION_31();

        sub_23126B3E8(v49);
        return;
      }

      v41 = OUTLINED_FUNCTION_49_6();
      v42(v41);
LABEL_22:
      __swift_destroy_boxed_opaque_existential_1Tm((v1 + 136));
      sub_231367580();
      v43 = sub_231369190();
      OUTLINED_FUNCTION_37_8();
      sub_231369180();

      v44 = OUTLINED_FUNCTION_54_0();
      v45(v44);

      OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_31();

      __asm { BRAA            X2, X16 }
    }

    if (v5 >= *(v2 + 16))
    {
      break;
    }

    v9 = *i;
    v10 = *(*i + 16);
    v11 = *(v6 + 16);
    if (__OFADD__(v11, v10))
    {
      goto LABEL_29;
    }

    sub_231369EE0();
    if (!swift_isUniquelyReferenced_nonNull_native() || v11 + v10 > *(v6 + 24) >> 1)
    {
      sub_23126F3A0();
      v6 = v12;
    }

    if (*(v9 + 16))
    {
      if ((*(v6 + 24) >> 1) - *(v6 + 16) < v10)
      {
        goto LABEL_31;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD432E8, &qword_23136D380);
      swift_arrayInitWithCopy();

      if (v10)
      {
        v13 = *(v6 + 16);
        v14 = __OFADD__(v13, v10);
        v15 = v13 + v10;
        if (v14)
        {
          goto LABEL_32;
        }

        *(v6 + 16) = v15;
      }
    }

    else
    {

      if (v10)
      {
        goto LABEL_30;
      }
    }

    ++v5;
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
}

uint64_t sub_23126949C()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_46();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;
  *(v6 + 664) = v5;

  v7 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void sub_23126959C()
{
  v1 = OUTLINED_FUNCTION_49_6();
  v2(v1);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 136));
  sub_231367580();
  v3 = sub_231369190();
  OUTLINED_FUNCTION_37_8();
  sub_231369180();

  v4 = OUTLINED_FUNCTION_54_0();
  v5(v4);

  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_31();

  __asm { BRAA            X2, X16 }
}

uint64_t static GenerationService.defaultShuffler(rng:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  return OUTLINED_FUNCTION_28();
}

uint64_t sub_231269784(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t, uint64_t))
{
  v18 = a8;
  __swift_mutable_project_boxed_opaque_existential_1(a3, a3[3]);
  OUTLINED_FUNCTION_21();
  v10 = MEMORY[0x28223BE20](v9);
  (*(v12 + 16))(&v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  OUTLINED_FUNCTION_33_8();
  v15 = v18(v13, v14);
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  return v15;
}

uint64_t sub_2312698AC(uint64_t a1)
{
  v3[3] = MEMORY[0x277D846F8];
  v3[4] = MEMORY[0x277D84700];
  __swift_mutable_project_boxed_opaque_existential_1(v3, MEMORY[0x277D846F8]);
  sub_231369EE0();
  sub_23127030C();
  __swift_destroy_boxed_opaque_existential_1Tm(v3);
  return a1;
}

uint64_t sub_231269924(uint64_t a1, void (*a2)(void *__return_ptr))
{
  a2(v4);
  __swift_mutable_project_boxed_opaque_existential_1(v4, v4[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44020, &qword_231370ED8);
  sub_23121C788(&qword_27DD44028, &qword_27DD44020, &qword_231370ED8, MEMORY[0x277D83970]);
  v2 = sub_23136A120();
  __swift_destroy_boxed_opaque_existential_1Tm(v4);
  return v2;
}

uint64_t GenerationService.description.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD431F8, &unk_231374F20);
  v0 = sub_231367BB0();
  strcpy(v5, "generators:\n");
  MEMORY[0x23192A730](v0);

  sub_231369EE0();
  MEMORY[0x23192A730](10, 0xE100000000000000);

  sub_231369EE0();
  MEMORY[0x23192A730](0xD000000000000010, 0x800000023137E380);

  type metadata accessor for SuggestionPool();

  v1 = sub_231367E30();
  v3 = v2;

  sub_231369EE0();
  MEMORY[0x23192A730](v1, v3);

  return v5[0];
}

uint64_t sub_231269B64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_231269B8C, 0, 0);
}

uint64_t sub_231269B8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_26();
  v15 = *(v14 + 16);
  v16 = v15[3];
  v17 = v15[4];
  __swift_project_boxed_opaque_existential_1(v15, v16);
  v18 = swift_task_alloc();
  v19 = OUTLINED_FUNCTION_69_4(v18);
  *v19 = v20;
  v19[1] = sub_231269C40;
  v21 = OUTLINED_FUNCTION_38_4(*(v14 + 24));

  return MEMORY[0x2821C6CE8](v21, v22, v23, v16, v17, v24, v25, v26, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_231269C40(uint64_t a1)
{
  v3 = *v1;
  v4 = *v1;
  OUTLINED_FUNCTION_2();
  *v5 = v4;
  v6 = *v1;
  *v5 = *v1;
  *(v4 + 64) = a1;

  v7 = swift_task_alloc();
  *(v4 + 72) = v7;
  *v7 = v6;
  v7[1] = sub_231269DB4;
  v8 = *(v3 + 32);
  v9 = *(v3 + 24);

  return sub_231269EB8(a1, v9, v8);
}

uint64_t sub_231269DB4()
{
  OUTLINED_FUNCTION_8();
  v2 = v1;
  OUTLINED_FUNCTION_12();
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  OUTLINED_FUNCTION_14();

  return v5(v2);
}

uint64_t sub_231269EB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[43] = a3;
  v4[44] = v3;
  v4[41] = a1;
  v4[42] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD432D8, &unk_23136BED0);
  v4[45] = swift_task_alloc();
  v5 = sub_231367F40();
  v4[46] = v5;
  v4[47] = *(v5 - 8);
  v4[48] = swift_task_alloc();
  v6 = sub_231369330();
  v4[49] = v6;
  v4[50] = *(v6 - 8);
  v4[51] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23126A010, 0, 0);
}

uint64_t sub_23126A010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_70_1();
  v16 = *(v14 + 328);
  v17 = *(v16 + 16);
  *(v14 + 416) = v17;
  v18 = MEMORY[0x277D84F90];
  if (v17)
  {
    v19 = 0;
    *(v14 + 584) = *MEMORY[0x277D60D38];
    v20 = v18;
    while (1)
    {
      *(v14 + 440) = v18;
      *(v14 + 448) = v18;
      *(v14 + 424) = v19;
      *(v14 + 432) = v18;
      v21 = *(v14 + 360);
      sub_2311CF388(v16 + 40 * v19 + 32, v14 + 160);
      OUTLINED_FUNCTION_57_7();
      v22 = sub_2313676B0();
      if (__swift_getEnumTagSinglePayload(v21, 1, v22) == 1)
      {
        sub_2311D1F18(*(v14 + 360), &qword_27DD432D8, &unk_23136BED0);
      }

      else
      {
        OUTLINED_FUNCTION_75_2();
        OUTLINED_FUNCTION_26_0();
        v23 = OUTLINED_FUNCTION_55_7();
        v24(v23);
        v25 = OUTLINED_FUNCTION_40_8();
        if (v26(v25) == v15)
        {
          v45 = OUTLINED_FUNCTION_54_6();
          v46(v45);
          *(v14 + 456) = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44078, &qword_231370F80) + 48) + 0x28);
          v47 = OUTLINED_FUNCTION_28();
          v48(v47);
          OUTLINED_FUNCTION_11_12((v14 + 160));
          OUTLINED_FUNCTION_90();
          *(v14 + 464) = v49;
          *(v14 + 472) = v50;
          ObjectType = swift_getObjectType();
          *(v14 + 480) = ObjectType;
          OUTLINED_FUNCTION_109(ObjectType);
          OUTLINED_FUNCTION_36_0();
          OUTLINED_FUNCTION_10_16();
          OUTLINED_FUNCTION_7();

          return MEMORY[0x2822009F8](v52, v53, v54);
        }

        (*(*(v14 + 376) + 8))(*(v14 + 384), *(v14 + 368));
      }

      sub_2311CF388(v14 + 160, v14 + 200);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v14 + 320) = v18;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_23();
        sub_23126F3A0();
        OUTLINED_FUNCTION_70_3(v32);
      }

      v28 = *(v18 + 24);
      if (*(v18 + 16) >= v28 >> 1)
      {
        OUTLINED_FUNCTION_53_6(v28);
        sub_23126F3A0();
        OUTLINED_FUNCTION_70_3(v33);
      }

      __swift_mutable_project_boxed_opaque_existential_1(v14 + 200, *(v14 + 224));
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_43();
      OUTLINED_FUNCTION_64_4();
      v29();
      OUTLINED_FUNCTION_59_5();
      __swift_destroy_boxed_opaque_existential_1Tm((v14 + 200));

      v30 = *(v14 + 416);
      v31 = *(v14 + 424) + 1;
      __swift_destroy_boxed_opaque_existential_1Tm((v14 + 160));
      if (v31 == v30)
      {
        goto LABEL_14;
      }

      v19 = *(v14 + 424) + 1;
      v16 = *(v14 + 328);
    }
  }

  v20 = MEMORY[0x277D84F90];
LABEL_14:
  *(v14 + 496) = v20;
  *(v14 + 504) = v20;
  v56 = OUTLINED_FUNCTION_58_4();
  v57 = v34 + *v34;
  v35 = swift_task_alloc();
  *(v14 + 512) = v35;
  *v35 = v14;
  OUTLINED_FUNCTION_20_13(v35);
  OUTLINED_FUNCTION_7();

  return v41(v36, v37, v38, v39, v40, v41, v42, v43, a9, v56, v57, a12, a13, a14);
}

uint64_t sub_23126A3C0()
{
  OUTLINED_FUNCTION_8();
  sub_23126D748(v0[51], v0[60], v0[59]);
  swift_unknownObjectRelease();
  v1 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_23126A42C()
{
  OUTLINED_FUNCTION_70_1();
  v2 = *(v0 + 456);
  sub_2311CF388(v0 + 160, v0 + 112);
  *(v0 + 152) = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + 432);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_23();
    sub_23126E4AC();
    v4 = v39;
  }

  v5 = *(v4 + 16);
  if (v5 >= *(v4 + 24) >> 1)
  {
    sub_23126E4AC();
    v4 = v40;
  }

  (*(*(v0 + 400) + 8))(*(v0 + 408), *(v0 + 392));
  *(v4 + 16) = v5 + 1;
  v6 = (v4 + 48 * v5);
  v7 = *(v0 + 112);
  v8 = *(v0 + 144);
  v6[3] = *(v0 + 128);
  v6[4] = v8;
  v6[2] = v7;
  v9 = *(v0 + 440);
  for (i = *(v0 + 448); ; v9 = i)
  {
    v11 = *(v0 + 416);
    v12 = *(v0 + 424) + 1;
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 160));
    if (v12 == v11)
    {
      break;
    }

    v13 = *(v0 + 424);
    *(v0 + 440) = v9;
    *(v0 + 448) = i;
    *(v0 + 424) = v13 + 1;
    *(v0 + 432) = v4;
    v14 = *(v0 + 360);
    sub_2311CF388(*(v0 + 328) + 40 * v13 + 72, v0 + 160);
    OUTLINED_FUNCTION_57_7();
    v15 = sub_2313676B0();
    if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
    {
      sub_2311D1F18(*(v0 + 360), &qword_27DD432D8, &unk_23136BED0);
    }

    else
    {
      OUTLINED_FUNCTION_75_2();
      OUTLINED_FUNCTION_26_0();
      v16 = OUTLINED_FUNCTION_55_7();
      v17(v16);
      v18 = OUTLINED_FUNCTION_40_8();
      if (v19(v18) == v1)
      {
        v29 = OUTLINED_FUNCTION_54_6();
        v30(v29);
        *(v0 + 456) = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44078, &qword_231370F80) + 48) + 0x28);
        v31 = OUTLINED_FUNCTION_28();
        v32(v31);
        OUTLINED_FUNCTION_11_12((v0 + 160));
        OUTLINED_FUNCTION_90();
        *(v0 + 464) = v33;
        *(v0 + 472) = v34;
        ObjectType = swift_getObjectType();
        *(v0 + 480) = ObjectType;
        OUTLINED_FUNCTION_109(ObjectType);
        OUTLINED_FUNCTION_36_0();
        v36 = OUTLINED_FUNCTION_10_16();

        return MEMORY[0x2822009F8](v36, v37, v38);
      }

      (*(*(v0 + 376) + 8))(*(v0 + 384), *(v0 + 368));
    }

    sub_2311CF388(v0 + 160, v0 + 200);
    v20 = swift_isUniquelyReferenced_nonNull_native();
    *(v0 + 320) = i;
    if ((v20 & 1) == 0)
    {
      OUTLINED_FUNCTION_23();
      sub_23126F3A0();
      OUTLINED_FUNCTION_70_3(v23);
    }

    v21 = *(i + 24);
    if (*(i + 16) >= v21 >> 1)
    {
      OUTLINED_FUNCTION_53_6(v21);
      sub_23126F3A0();
      OUTLINED_FUNCTION_70_3(v24);
    }

    __swift_mutable_project_boxed_opaque_existential_1(v0 + 200, *(v0 + 224));
    OUTLINED_FUNCTION_21();
    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_64_4();
    v22();
    OUTLINED_FUNCTION_59_5();
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 200));
  }

  *(v0 + 496) = v9;
  *(v0 + 504) = i;
  OUTLINED_FUNCTION_58_4();
  v41 = (v25 + *v25);
  v26 = swift_task_alloc();
  *(v0 + 512) = v26;
  *v26 = v0;
  v27 = OUTLINED_FUNCTION_20_13(v26);

  return v41(v27);
}

uint64_t sub_23126A884()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_46();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;
  *(v6 + 520) = v5;

  v7 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_23126A984()
{
  OUTLINED_FUNCTION_26();
  v4 = *(v0 + 520);
  v5 = *(v4 + 16);
  *(v0 + 528) = v5;
  v6 = *(v0 + 496);
  *(v0 + 536) = *(v0 + 504);
  if (v5)
  {
    if (!*(v4 + 16))
    {
      __break(1u);
      return MEMORY[0x2822009F8](v1, v2, v3);
    }

    sub_2311E66F0(v4 + 32, v0 + 64, &qword_27DD434E8, &unk_23136E480);
    v7 = 1;
  }

  else
  {
    v7 = 0;
    *(v0 + 80) = 0u;
    *(v0 + 96) = 0u;
    *(v0 + 64) = 0u;
  }

  *(v0 + 544) = v7;
  OUTLINED_FUNCTION_56_5();
  if (v8)
  {
    *(v0 + 552) = *(v0 + 56);
    sub_2311D38A8((v0 + 16), v0 + 240);
    OUTLINED_FUNCTION_11_12((v0 + 240));
    OUTLINED_FUNCTION_90();
    *(v0 + 560) = v9;
    *(v0 + 568) = v10;
    ObjectType = swift_getObjectType();
    *(v0 + 576) = ObjectType;
    OUTLINED_FUNCTION_109(ObjectType);
    OUTLINED_FUNCTION_36_0();
    v1 = OUTLINED_FUNCTION_10_16();

    return MEMORY[0x2822009F8](v1, v2, v3);
  }

  OUTLINED_FUNCTION_73_4();

  OUTLINED_FUNCTION_14();

  return v12(v6);
}

uint64_t sub_23126AAD0()
{
  OUTLINED_FUNCTION_8();
  sub_23126D870(*(v0 + 576), *(v0 + 568), *(v0 + 552));
  swift_unknownObjectRelease();
  v1 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_23126AB40()
{
  v1 = *(v0 + 536);
  sub_2311CF388(v0 + 240, v0 + 280);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 320) = v1;
  v3 = *(v0 + 536);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_44_8();
    sub_23126F3A0();
    v3 = v22;
    *(v0 + 320) = v22;
  }

  v4 = *(v3 + 16);
  if (v4 >= *(v3 + 24) >> 1)
  {
    OUTLINED_FUNCTION_44_8();
    sub_23126F3A0();
    v3 = v23;
    *(v0 + 320) = v23;
  }

  v5 = *(v0 + 304);
  v6 = *(v0 + 312);
  v7 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 280, v5);
  OUTLINED_FUNCTION_21();
  v9 = v8;
  v10 = OUTLINED_FUNCTION_43();
  (*(v9 + 16))(v10, v7, v5);
  sub_2312E6494(v4, v10, (v0 + 320), v5, v6);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 280));

  v11 = __swift_destroy_boxed_opaque_existential_1Tm((v0 + 240));
  v14 = *(v0 + 544);
  *(v0 + 536) = v3;
  if (v14 == *(v0 + 528))
  {
    *(v0 + 80) = 0u;
    *(v0 + 96) = 0u;
    *(v0 + 64) = 0u;
    goto LABEL_10;
  }

  if ((v14 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_18;
  }

  v15 = *(v0 + 520);
  if (v14 >= *(v15 + 16))
  {
LABEL_18:
    __break(1u);
    return MEMORY[0x2822009F8](v11, v12, v13);
  }

  sub_2311E66F0(v15 + 48 * v14++ + 32, v0 + 64, &qword_27DD434E8, &unk_23136E480);
LABEL_10:
  *(v0 + 544) = v14;
  OUTLINED_FUNCTION_56_5();
  if (v16)
  {
    *(v0 + 552) = *(v0 + 56);
    sub_2311D38A8((v0 + 16), v0 + 240);
    OUTLINED_FUNCTION_11_12((v0 + 240));
    OUTLINED_FUNCTION_90();
    *(v0 + 560) = v17;
    *(v0 + 568) = v18;
    ObjectType = swift_getObjectType();
    *(v0 + 576) = ObjectType;
    OUTLINED_FUNCTION_109(ObjectType);
    OUTLINED_FUNCTION_36_0();
    v11 = OUTLINED_FUNCTION_10_16();

    return MEMORY[0x2822009F8](v11, v12, v13);
  }

  OUTLINED_FUNCTION_73_4();

  OUTLINED_FUNCTION_14();

  return v20(v3);
}

uint64_t sub_23126AE08(void *a1)
{
  v2 = sub_2313698C0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_231369170();
  sub_2311CF388(a1, v21);
  v6 = sub_2313698A0();
  v7 = sub_23136A3B0();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v8 = 136315138;
    __swift_project_boxed_opaque_existential_1(v21, v21[3]);
    swift_getDynamicType();
    v10 = sub_23136AA70();
    v12 = v11;
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
    v13 = sub_2311CFD58(v10, v12, &v20);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_2311CB000, v6, v7, "Unable to generate candidates for %s due to timeout", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x23192B930](v9, -1, -1);
    MEMORY[0x23192B930](v8, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v21);
  }

  (*(v3 + 8))(v5, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44068, &unk_231370F60);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_23136B670;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  DynamicType = swift_getDynamicType();
  v16 = a1[4];
  v21[0] = DynamicType;
  v21[1] = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44070, &unk_23137A270);
  v17 = sub_23136A010();
  *(v14 + 32) = MEMORY[0x277D84F90];
  *(v14 + 40) = v17;
  *(v14 + 48) = v18;
  *(v14 + 56) = 0x756F2064656D6954;
  *(v14 + 64) = 0xE900000000000074;
  return v14;
}

uint64_t sub_23126B09C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 32) = a1;
  v10 = swift_task_alloc();
  *(v5 + 40) = v10;
  *v10 = v5;
  v10[1] = sub_23126B164;

  return sub_231269B64(a1, a3, a4, a5);
}

uint64_t sub_23126B164()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_46();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 48) = v3;

  v4 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_23126B24C()
{
  OUTLINED_FUNCTION_26();
  v1 = v0[6];
  v2 = v0[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44068, &unk_231370F60);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_23136B670;
  v4 = OUTLINED_FUNCTION_28();
  __swift_project_boxed_opaque_existential_1(v4, v5);
  DynamicType = swift_getDynamicType();
  v7 = *(v2 + 32);
  v0[2] = DynamicType;
  v0[3] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44070, &unk_23137A270);
  v8 = sub_23136A010();
  *(v3 + 32) = v1;
  *(v3 + 40) = v8;
  *(v3 + 48) = v9;
  *(v3 + 56) = 6369134;
  *(v3 + 64) = 0xE300000000000000;
  OUTLINED_FUNCTION_14();

  return v10(v3);
}

uint64_t sub_23126B344(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43650, &unk_23136CB90);
  v6 = swift_allocObject();
  v7 = MEMORY[0x277D837D0];
  *(v6 + 16) = xmmword_23136D280;
  *(v6 + 32) = v2;
  *(v6 + 40) = v3;
  v8 = *(v1 + 16);
  v9 = MEMORY[0x277D83B88];
  *(v6 + 56) = v7;
  *(v6 + 64) = v8;
  *(v6 + 120) = v7;
  *(v6 + 88) = v9;
  *(v6 + 96) = v4;
  *(v6 + 104) = v5;
  sub_231369EE0();
  sub_231369EE0();
  return v6;
}

uint64_t sub_23126B3E8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43678, &qword_23136CBC0);
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23126B4B4, 0, 0);
}

uint64_t sub_23126B4B4()
{
  OUTLINED_FUNCTION_8();

  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_69_4(v1);
  *v2 = v3;
  v2[1] = sub_23126B55C;
  v4 = OUTLINED_FUNCTION_38_4(*(v0 + 16));

  return sub_231267C48(v4, v5);
}

void sub_23126B55C()
{
  OUTLINED_FUNCTION_26();
  v3 = v2;
  OUTLINED_FUNCTION_12();
  v5 = v4;
  OUTLINED_FUNCTION_4();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_2();
  *v8 = v7;
  *(v5 + 64) = v0;

  if (v0)
  {
  }

  else
  {
    *(v5 + 72) = v3;

    MEMORY[0x2822009F8](sub_23126B684, 0, 0);
  }
}

uint64_t sub_23126B684()
{
  OUTLINED_FUNCTION_8();
  v4 = (*(v0[3] + 152) + **(v0[3] + 152));
  v1 = swift_task_alloc();
  v0[10] = v1;
  *v1 = v0;
  v1[1] = sub_23126B770;
  v2 = OUTLINED_FUNCTION_38_4(v0[9]);

  return v4(v2);
}

uint64_t sub_23126B770()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_46();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;
  *(v6 + 88) = v5;

  v7 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_23126B870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_70_1();
  v15 = v14[11];
  v16 = *(v15 + 16);
  if (v16)
  {
    v17 = v14[5];
    a9 = v14[6];
    v18 = v14[4];
    v41 = MEMORY[0x277D84F90];
    sub_2311F5B50(0, v16, 0);
    v19 = v41;
    v20 = type metadata accessor for GenerationService.DedupData(0);
    OUTLINED_FUNCTION_0(v20);
    v22 = v15 + ((*(v21 + 80) + 32) & ~*(v21 + 80));
    v24 = *(v23 + 72);
    do
    {
      v25 = v14[6];
      v26 = (v25 + *(v18 + 48));
      sub_231270BA8(v22, v26);
      v27 = v26[1];
      *v25 = *v26;
      *(a9 + 8) = v27;
      a10 = v19;
      v29 = *(v19 + 16);
      v28 = *(v19 + 24);
      sub_231369EE0();
      if (v29 >= v28 >> 1)
      {
        sub_2311F5B50((v28 > 1), v29 + 1, 1);
      }

      v30 = v14[6];
      *(v19 + 16) = v29 + 1;
      sub_231270C70(v30, v19 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v29);
      v22 += v24;
      --v16;
    }

    while (v16);
  }

  else
  {

    v19 = MEMORY[0x277D84F90];
  }

  v31 = sub_231267BB0(v19);
  sub_2312678D4(v31);

  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();

  return v34(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_23126BA34(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43F08, &qword_231370CD0);
  v2[4] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43F00, &unk_231375F50);
  v2[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23126BB08, 0, 0);
}

uint64_t sub_23126BB08()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_11_12(*(v0 + 16));
  OUTLINED_FUNCTION_90();
  *(v0 + 48) = v1;
  *(v0 + 56) = v2;
  ObjectType = swift_getObjectType();
  *(v0 + 64) = ObjectType;
  OUTLINED_FUNCTION_109(ObjectType);
  OUTLINED_FUNCTION_36_0();
  v4 = OUTLINED_FUNCTION_10_16();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_23126BB88()
{
  OUTLINED_FUNCTION_26();
  v1 = sub_23126C0B8(*(v0 + 64), *(v0 + 56));
  v3 = v2;
  swift_unknownObjectRelease();
  *(v0 + 72) = v1;
  *(v0 + 152) = v3;
  v4 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_23126BC08()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_11_12(*(v0 + 16));
  OUTLINED_FUNCTION_90();
  *(v0 + 80) = v1;
  *(v0 + 88) = v2;
  ObjectType = swift_getObjectType();
  *(v0 + 96) = ObjectType;
  OUTLINED_FUNCTION_109(ObjectType);
  OUTLINED_FUNCTION_36_0();
  v4 = OUTLINED_FUNCTION_10_16();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_23126BC88()
{
  OUTLINED_FUNCTION_8();
  sub_23126C1F0(v0[5]);
  swift_unknownObjectRelease();
  v1 = swift_task_alloc();
  v0[13] = v1;
  *v1 = v0;
  v1[1] = sub_23126BD2C;
  v2 = OUTLINED_FUNCTION_38_4(v0[2]);

  return sub_23126C33C(v2);
}

uint64_t sub_23126BD2C()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_46();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 112) = v3;
  *(v1 + 120) = v4;

  v5 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_23126BE14()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_11_12(*(v0 + 16));
  OUTLINED_FUNCTION_90();
  *(v0 + 128) = v1;
  *(v0 + 136) = v2;
  ObjectType = swift_getObjectType();
  *(v0 + 144) = ObjectType;
  OUTLINED_FUNCTION_109(ObjectType);
  OUTLINED_FUNCTION_36_0();
  v4 = OUTLINED_FUNCTION_10_16();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_23126BE94()
{
  OUTLINED_FUNCTION_8();
  sub_231369420();
  swift_unknownObjectRelease();
  v0 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v0, v1, v2);
}

uint64_t sub_23126BF00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_70_1();
  v35 = *(v14 + 120);
  v34 = *(v14 + 112);
  HIDWORD(a10) = *(v14 + 152);
  v15 = *(v14 + 72);
  v17 = *(v14 + 32);
  v16 = *(v14 + 40);
  v18 = *(v14 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43460, &qword_23136C998);
  v19 = (type metadata accessor for GenerationService.DedupData(0) - 8);
  v20 = (*(*v19 + 80) + 32) & ~*(*v19 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_23136B670;
  v22 = v21 + v20;
  sub_2311CF388(v18, v21 + v20 + 16);
  sub_2311E66F0(v16, v21 + v20 + v19[9], &qword_27DD43F00, &unk_231375F50);
  sub_2311E66F0(v17, v21 + v20 + v19[10], &qword_27DD43F08, &qword_231370CD0);
  *v22 = v34;
  *(v22 + 8) = v35;
  *(v22 + 56) = v15;
  *(v22 + 64) = BYTE4(a10) & 1;
  v23 = OUTLINED_FUNCTION_55_7();
  sub_2311D1F18(v23, v24, &qword_231370CD0);
  sub_2311D1F18(v16, &qword_27DD43F00, &unk_231375F50);

  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();

  return v27(v25, v26, v27, v28, v29, v30, v31, v32, v34, a10, v35, a12, a13, a14);
}

uint64_t sub_23126C0B8(uint64_t a1, uint64_t a2)
{
  sub_231369380();
  v2 = v8;
  v3 = v9;
  __swift_project_boxed_opaque_existential_1(v7, v8);
  v6[3] = v2;
  v6[4] = *(v3 + 8);
  __swift_allocate_boxed_opaque_existential_1Tm(v6);
  OUTLINED_FUNCTION_26_0();
  (*(v4 + 16))();
  sub_231369430();
  __swift_destroy_boxed_opaque_existential_1Tm(v6);
  __swift_destroy_boxed_opaque_existential_1Tm(v7);
  if (v11)
  {
    if (swift_dynamicCast())
    {
      return v7[0];
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_2311D1F18(v10, &qword_27DD443C0, &unk_23136E000);
    return 0;
  }
}

uint64_t sub_23126C1F0@<X0>(uint64_t a3@<X8>)
{
  sub_231369380();
  v4 = v14;
  v5 = v15;
  __swift_project_boxed_opaque_existential_1(v13, v14);
  v12[3] = v4;
  v12[4] = *(v5 + 8);
  __swift_allocate_boxed_opaque_existential_1Tm(v12);
  OUTLINED_FUNCTION_26_0();
  (*(v6 + 16))();
  OUTLINED_FUNCTION_60_3();
  sub_231369430();
  __swift_destroy_boxed_opaque_existential_1Tm(v12);
  __swift_destroy_boxed_opaque_existential_1Tm(v13);
  if (v17)
  {
    sub_231369330();
    swift_dynamicCast();
    OUTLINED_FUNCTION_44_8();
  }

  else
  {
    sub_2311D1F18(v16, &qword_27DD443C0, &unk_23136E000);
    v10 = sub_231369330();
    v7 = a3;
    v8 = 1;
    v9 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
}

uint64_t sub_23126C33C(uint64_t a1)
{
  v1[4] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43E40, &qword_231370F50);
  v1[5] = swift_task_alloc();
  v2 = sub_2313673A0();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23126C440, 0, 0);
}

uint64_t sub_23126C440()
{
  OUTLINED_FUNCTION_26();
  v1 = v0[4];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  OUTLINED_FUNCTION_28();
  v2 = sub_231368320();
  v0[10] = v2;
  v0[11] = v3;
  v0[2] = v2;
  v0[3] = v3;
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  sub_231368300();
  OUTLINED_FUNCTION_90();
  v0[12] = v4;
  v0[13] = v5;
  ObjectType = swift_getObjectType();
  v0[14] = ObjectType;
  OUTLINED_FUNCTION_109(ObjectType);
  OUTLINED_FUNCTION_36_0();
  v7 = OUTLINED_FUNCTION_10_16();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_23126C500()
{
  OUTLINED_FUNCTION_8();
  sub_231369350();
  swift_unknownObjectRelease();
  v0 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v0, v1, v2);
}

uint64_t sub_23126C56C()
{
  v1 = v0[5];
  v2 = v0[6];
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    sub_2311D1F18(v1, &qword_27DD43E40, &qword_231370F50);
  }

  else
  {
    v3 = v0[8];
    v4 = v0[7];
    (*(v4 + 32))(v0[9], v1, v2);
    v5 = OUTLINED_FUNCTION_37_8();
    v6(v5);
    v7 = (*(v4 + 88))(v3, v2);
    v8 = v0[8];
    if (v7 == *MEMORY[0x277D60878])
    {
      v9 = OUTLINED_FUNCTION_28();
      v10(v9);
      v11 = v8[1];
      if (v11)
      {
        v12 = *v8;
      }

      else
      {
        v12 = 0x3E6C696E3CLL;
      }

      if (v11)
      {
        v13 = v8[1];
      }

      else
      {
        v13 = 0xE500000000000000;
      }

      MEMORY[0x23192A730](v12, v13);

      MEMORY[0x23192A730](95, 0xE100000000000000);

      v14 = OUTLINED_FUNCTION_37_8();
      v15(v14);
    }

    else
    {
      v16 = *(v0[7] + 8);
      v17 = OUTLINED_FUNCTION_37_8();
      v16(v17);
      v18 = OUTLINED_FUNCTION_28();
      v16(v18);
    }
  }

  v19 = OUTLINED_FUNCTION_27();

  return v20(v19);
}

uint64_t sub_23126C770@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for GenerationService.DedupData(0);
  MEMORY[0x28223BE20](v6 - 8);
  v157 = (&v147 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v156 = (&v147 - v9);
  MEMORY[0x28223BE20](v10);
  v154 = &v147 - v11;
  MEMORY[0x28223BE20](v12);
  v155 = (&v147 - v13);
  MEMORY[0x28223BE20](v14);
  v152 = (&v147 - v15);
  MEMORY[0x28223BE20](v16);
  v18 = (&v147 - v17);
  MEMORY[0x28223BE20](v19);
  v153 = (&v147 - v20);
  MEMORY[0x28223BE20](v21);
  v151 = (&v147 - v22);
  MEMORY[0x28223BE20](v23);
  v25 = (&v147 - v24);
  MEMORY[0x28223BE20](v26);
  v150 = (&v147 - v27);
  MEMORY[0x28223BE20](v28);
  v148 = (&v147 - v29);
  MEMORY[0x28223BE20](v30);
  v32 = (&v147 - v31);
  MEMORY[0x28223BE20](v33);
  v149 = (&v147 - v34);
  MEMORY[0x28223BE20](v35);
  v37 = (&v147 - v36);
  MEMORY[0x28223BE20](v38);
  v40 = (&v147 - v39);
  v41 = sub_2313698C0();
  v42 = *(v41 - 8);
  v158 = v41;
  v159 = v42;
  MEMORY[0x28223BE20](v41);
  MEMORY[0x28223BE20](v43);
  MEMORY[0x28223BE20](v44);
  MEMORY[0x28223BE20](v45);
  v47 = &v147 - v46;
  MEMORY[0x28223BE20](v48);
  v53 = *(a1 + 64);
  if (*(a2 + 64))
  {
    v54 = v51;
    v55 = v50;
    sub_231270BA8(a1, a3);
    if (v53)
    {
      sub_231369170();
      v56 = v154;
      sub_231270BA8(a1, v154);
      v57 = v156;
      sub_231270BA8(a3, v156);
      v58 = v157;
      sub_231270BA8(a2, v157);
      v59 = sub_2313698A0();
      v60 = sub_23136A390();
      if (!os_log_type_enabled(v59, v60))
      {

        sub_231270CE0(v58);
        sub_231270CE0(v57);
        (*(v159 + 8))(v55, v158);
        return sub_231270CE0(v56);
      }

      v61 = swift_slowAlloc();
      v155 = swift_slowAlloc();
      v160 = v155;
      *v61 = 136315650;
      v62 = v56;
      __swift_project_boxed_opaque_existential_1((v56 + 16), *(v56 + 40));
      v63 = sub_231368320();
      v65 = v64;
      sub_231270CE0(v62);
      v66 = sub_2311CFD58(v63, v65, &v160);

      *(v61 + 4) = v66;
      *(v61 + 12) = 2080;
      v67 = sub_23126D46C(v57);
      v69 = v68;
      sub_231270CE0(v57);
      v70 = sub_2311CFD58(v67, v69, &v160);

      *(v61 + 14) = v70;
      *(v61 + 22) = 2080;
      v71 = sub_23126D46C(v58);
      v73 = v72;
      sub_231270CE0(v58);
      v74 = sub_2311CFD58(v71, v73, &v160);

      *(v61 + 24) = v74;
      _os_log_impl(&dword_2311CB000, v59, v60, "Dedupping suggestion with id: %s.\nBecause no relevance scores are set, the complete process is non deterministic.\nUsing the suggestion from instance %s and removing %s", v61, 0x20u);
      v75 = v155;
      swift_arrayDestroy();
      MEMORY[0x23192B930](v75, -1, -1);
      v76 = v61;
      goto LABEL_10;
    }

    v55 = v54;
    sub_231369170();
    sub_231270BA8(a3, v18);
    v95 = v152;
    sub_231270BA8(a3, v152);
    v96 = v155;
    sub_231270BA8(a2, v155);
    v59 = sub_2313698A0();
    v97 = sub_23136A390();
    if (os_log_type_enabled(v59, v97))
    {
      v98 = swift_slowAlloc();
      v157 = swift_slowAlloc();
      v160 = v157;
      *v98 = 136315650;
      v99 = *v18;
      v100 = v18[1];
      sub_231369EE0();
      sub_231270CE0(v18);
      v101 = sub_2311CFD58(v99, v100, &v160);

      *(v98 + 4) = v101;
      *(v98 + 12) = 2080;
      v102 = sub_23126D46C(v95);
      v104 = v103;
      sub_231270CE0(v95);
      v105 = sub_2311CFD58(v102, v104, &v160);

      *(v98 + 14) = v105;
      *(v98 + 22) = 2080;
      v106 = sub_23126D46C(v96);
      v108 = v107;
      sub_231270CE0(v96);
      v109 = sub_2311CFD58(v106, v108, &v160);

      *(v98 + 24) = v109;
      _os_log_impl(&dword_2311CB000, v59, v97, "Dedupping suggestion with id: %s using the suggestion with the set relevance score from instance %s and removing %s. This takes priority", v98, 0x20u);
      v110 = v157;
      swift_arrayDestroy();
      MEMORY[0x23192B930](v110, -1, -1);
      v76 = v98;
LABEL_10:
      MEMORY[0x23192B930](v76, -1, -1);

      return (*(v159 + 8))(v55, v158);
    }

    sub_231270CE0(v96);
    sub_231270CE0(v95);
    v128 = v18;
LABEL_21:
    sub_231270CE0(v128);
    return (*(v159 + 8))(v55, v158);
  }

  if (*(a1 + 64))
  {
    v77 = v52;
    sub_231270BA8(a2, a3);
    sub_231369170();
    sub_231270BA8(a3, v25);
    v78 = v151;
    sub_231270BA8(a3, v151);
    v79 = v153;
    sub_231270BA8(a1, v153);
    v80 = sub_2313698A0();
    v81 = sub_23136A390();
    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      v157 = swift_slowAlloc();
      v160 = v157;
      *v82 = 136315650;
      v83 = *v25;
      v84 = v25[1];
      sub_231369EE0();
      sub_231270CE0(v25);
      v85 = sub_2311CFD58(v83, v84, &v160);

      *(v82 + 4) = v85;
      *(v82 + 12) = 2080;
      v86 = sub_23126D46C(v78);
      v88 = v87;
      sub_231270CE0(v78);
      v89 = sub_2311CFD58(v86, v88, &v160);

      *(v82 + 14) = v89;
      *(v82 + 22) = 2080;
      v90 = sub_23126D46C(v79);
      v92 = v91;
      sub_231270CE0(v79);
      v93 = sub_2311CFD58(v90, v92, &v160);

      *(v82 + 24) = v93;
      _os_log_impl(&dword_2311CB000, v80, v81, "Dedupping suggestion with id: %s using the suggestion with the set relevance score from instance %s and removing %s. This takes priority", v82, 0x20u);
      v94 = v157;
      swift_arrayDestroy();
      MEMORY[0x23192B930](v94, -1, -1);
      MEMORY[0x23192B930](v82, -1, -1);
    }

    else
    {

      sub_231270CE0(v79);
      sub_231270CE0(v78);
      sub_231270CE0(v25);
    }

    return (*(v159 + 8))(v77, v158);
  }

  else
  {
    if (*(a2 + 56) < *(a1 + 56))
    {
      v55 = &v147 - v49;
      sub_231270BA8(a1, a3);
      sub_231369170();
      sub_231270BA8(a3, v40);
      sub_231270BA8(a3, v37);
      v111 = v149;
      sub_231270BA8(a2, v149);
      v112 = sub_2313698A0();
      v113 = sub_23136A390();
      if (os_log_type_enabled(v112, v113))
      {
        v114 = swift_slowAlloc();
        v157 = swift_slowAlloc();
        v160 = v157;
        *v114 = 136315650;
        v115 = *v40;
        v116 = v40[1];
        sub_231369EE0();
        sub_231270CE0(v40);
        v117 = sub_2311CFD58(v115, v116, &v160);

        *(v114 + 4) = v117;
        *(v114 + 12) = 2080;
        v118 = sub_23126D46C(v37);
        v120 = v119;
        sub_231270CE0(v37);
        v121 = sub_2311CFD58(v118, v120, &v160);

        *(v114 + 14) = v121;
        *(v114 + 22) = 2080;
        v122 = sub_23126D46C(v111);
        v124 = v123;
        sub_231270CE0(v111);
        v125 = sub_2311CFD58(v122, v124, &v160);

        *(v114 + 24) = v125;
        _os_log_impl(&dword_2311CB000, v112, v113, "Dedupping suggestion with id: %s using the higher relevance from instance: %s. over the not so relevant instance in %s", v114, 0x20u);
        v126 = v157;
        swift_arrayDestroy();
        MEMORY[0x23192B930](v126, -1, -1);
        MEMORY[0x23192B930](v114, -1, -1);

        return (*(v159 + 8))(v55, v158);
      }

      sub_231270CE0(v111);
      sub_231270CE0(v37);
      v128 = v40;
      goto LABEL_21;
    }

    sub_231270BA8(a2, a3);
    sub_231369170();
    sub_231270BA8(a3, v32);
    v129 = v148;
    sub_231270BA8(a3, v148);
    v130 = a1;
    v131 = v150;
    sub_231270BA8(v130, v150);
    v132 = sub_2313698A0();
    v133 = sub_23136A390();
    if (os_log_type_enabled(v132, v133))
    {
      v134 = swift_slowAlloc();
      v157 = swift_slowAlloc();
      v160 = v157;
      *v134 = 136315650;
      v135 = *v32;
      v136 = v32[1];
      sub_231369EE0();
      sub_231270CE0(v32);
      v137 = sub_2311CFD58(v135, v136, &v160);

      *(v134 + 4) = v137;
      *(v134 + 12) = 2080;
      v138 = sub_23126D46C(v129);
      v140 = v139;
      sub_231270CE0(v129);
      v141 = sub_2311CFD58(v138, v140, &v160);

      *(v134 + 14) = v141;
      *(v134 + 22) = 2080;
      v142 = sub_23126D46C(v131);
      v144 = v143;
      sub_231270CE0(v131);
      v145 = sub_2311CFD58(v142, v144, &v160);

      *(v134 + 24) = v145;
      _os_log_impl(&dword_2311CB000, v132, v133, "Dedupping suggestion with id: %s using the higher relevance from instance: %s. over the not so relevant instance in %s", v134, 0x20u);
      v146 = v157;
      swift_arrayDestroy();
      MEMORY[0x23192B930](v146, -1, -1);
      MEMORY[0x23192B930](v134, -1, -1);
    }

    else
    {

      sub_231270CE0(v131);
      sub_231270CE0(v129);
      sub_231270CE0(v32);
    }

    return (*(v159 + 8))(v47, v158);
  }
}

uint64_t sub_23126D46C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43F08, &qword_231370CD0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v19 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43F00, &unk_231375F50);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = v19 - v7;
  v19[0] = 0;
  v19[1] = 0xE000000000000000;
  MEMORY[0x23192A730](*a1, a1[1], v6);
  MEMORY[0x23192A730](35, 0xE100000000000000);
  v9 = type metadata accessor for GenerationService.DedupData(0);
  sub_2311E66F0(a1 + *(v9 + 28), v8, &qword_27DD43F00, &unk_231375F50);
  v10 = sub_231369330();
  if (__swift_getEnumTagSinglePayload(v8, 1, v10) == 1)
  {
    sub_2311D1F18(v8, &qword_27DD43F00, &unk_231375F50);
    v11 = 0xE100000000000000;
    v12 = 45;
  }

  else
  {
    v12 = sub_231369300();
    v11 = v13;
    (*(*(v10 - 8) + 8))(v8, v10);
  }

  MEMORY[0x23192A730](v12, v11);

  MEMORY[0x23192A730](64, 0xE100000000000000);
  sub_2311E66F0(a1 + *(v9 + 32), v4, &qword_27DD43F08, &qword_231370CD0);
  v14 = sub_231367960();
  if (__swift_getEnumTagSinglePayload(v4, 1, v14) == 1)
  {
    sub_2311D1F18(v4, &qword_27DD43F08, &qword_231370CD0);
    v15 = 0xE300000000000000;
    v16 = 4271950;
  }

  else
  {
    v16 = sub_231367930();
    v15 = v17;
    (*(*(v14 - 8) + 8))(v4, v14);
  }

  MEMORY[0x23192A730](v16, v15);

  MEMORY[0x23192A730](40, 0xE100000000000000);
  sub_23136A300();
  MEMORY[0x23192A730](41, 0xE100000000000000);
  return v19[0];
}

uint64_t sub_23126D748(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_231369380();
  v3 = v11;
  v4 = v12;
  __swift_project_boxed_opaque_existential_1(v10, v11);
  v9[3] = v3;
  v9[4] = *(v4 + 8);
  __swift_allocate_boxed_opaque_existential_1Tm(v9);
  OUTLINED_FUNCTION_26_0();
  (*(v5 + 16))();
  v8[3] = sub_231369330();
  __swift_allocate_boxed_opaque_existential_1Tm(v8);
  OUTLINED_FUNCTION_26_0();
  (*(v6 + 16))();
  OUTLINED_FUNCTION_60_3();
  sub_231369450();
  __swift_destroy_boxed_opaque_existential_1Tm(v8);
  __swift_destroy_boxed_opaque_existential_1Tm(v9);
  return __swift_destroy_boxed_opaque_existential_1Tm(v10);
}

uint64_t sub_23126D870(uint64_t a1, uint64_t a2, double a3)
{
  sub_231369380();
  v4 = v11;
  v5 = v12;
  __swift_project_boxed_opaque_existential_1(v10, v11);
  v9[3] = v4;
  v9[4] = *(v5 + 8);
  __swift_allocate_boxed_opaque_existential_1Tm(v9);
  OUTLINED_FUNCTION_26_0();
  (*(v6 + 16))();
  v8[3] = MEMORY[0x277D839F8];
  *v8 = a3;
  sub_231369450();
  __swift_destroy_boxed_opaque_existential_1Tm(v8);
  __swift_destroy_boxed_opaque_existential_1Tm(v9);
  return __swift_destroy_boxed_opaque_existential_1Tm(v10);
}

void *GenerationService.deinit()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 3);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 8);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 14);

  return v0;
}

uint64_t GenerationService.__deallocating_deinit()
{
  GenerationService.deinit();

  return swift_deallocClassInstance();
}

void sub_23126DA88(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t), void (*a6)(void), void (*a7)(void))
{
  if (a3)
  {
    OUTLINED_FUNCTION_1_0();
    if (v12 != v13)
    {
      OUTLINED_FUNCTION_12_1();
      if (v12)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_3();
    }
  }

  else
  {
    v11 = a2;
  }

  v14 = *(a4 + 16);
  v15 = a5(v14, v11);
  a6(0);
  OUTLINED_FUNCTION_46_0();
  if (a1)
  {
    v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    sub_23126FA74(a4 + v17, v14, v15 + v17, a7);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_23126DB78()
{
  OUTLINED_FUNCTION_20_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1_0();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_12_1();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_3();
    }
  }

  OUTLINED_FUNCTION_46_10();
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD42F90, &qword_231370D60);
    v7 = OUTLINED_FUNCTION_63_1();
    _swift_stdlib_malloc_size(v7);
    OUTLINED_FUNCTION_8_13();
    *(v7 + 2) = v3;
    *(v7 + 3) = v8;
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v9 = v7 + 32;
  v10 = v0 + 32;
  if (v1)
  {
    if (v7 != v0 || &v10[16 * v3] <= v9)
    {
      memmove(v9, v10, 16 * v3);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v9, v10, 16 * v3);
  }
}

void sub_23126DC90()
{
  OUTLINED_FUNCTION_20_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1_0();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_12_1();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_3();
    }
  }

  OUTLINED_FUNCTION_8_3();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43520, &qword_23136CA60);
    v7 = OUTLINED_FUNCTION_63_1();
    _swift_stdlib_malloc_size(v7);
    OUTLINED_FUNCTION_8_13();
    *(v7 + 2) = v2;
    *(v7 + 3) = v8;
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v9 = v7 + 32;
  v10 = v0 + 32;
  if (v1)
  {
    if (v7 != v0 || &v10[16 * v2] <= v9)
    {
      memmove(v9, v10, 16 * v2);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_23126DE48()
{
  OUTLINED_FUNCTION_20_1();
  if (v6)
  {
    OUTLINED_FUNCTION_1_0();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_12_1();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_3();
    }
  }

  OUTLINED_FUNCTION_8_3();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD434C8, &unk_231370DC0);
    v9 = OUTLINED_FUNCTION_63_1();
    _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_8_13();
    v9[2] = v2;
    v9[3] = v10;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  OUTLINED_FUNCTION_30_9();
  if (v1)
  {
    if (v9 != v0 || v5 + 16 * v2 <= v4)
    {
      v12 = OUTLINED_FUNCTION_54_0();
      memmove(v12, v13, v14);
    }

    v0[2] = 0;
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD434D0, &qword_23136CA10);
    OUTLINED_FUNCTION_7_11(v15);
  }
}

void sub_23126DF88()
{
  OUTLINED_FUNCTION_20_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1_0();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_12_1();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_3();
    }
  }

  OUTLINED_FUNCTION_8_3();
  if (v2)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43F78, &qword_231370E08);
    v3 = 24;
    v8 = OUTLINED_FUNCTION_37_1(v7);
    OUTLINED_FUNCTION_1_21(v8);
  }

  OUTLINED_FUNCTION_30_9();
  if (v1)
  {
    OUTLINED_FUNCTION_32_8();
    if (v10)
    {
      v11 = v9 > v3;
    }

    else
    {
      v11 = 0;
    }

    if (!v11)
    {
      OUTLINED_FUNCTION_67_3();
      v12 = OUTLINED_FUNCTION_54_0();
      memmove(v12, v13, v14);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43F80, &qword_231370E10);
    OUTLINED_FUNCTION_7_11(v15);
  }
}

void sub_23126E060()
{
  OUTLINED_FUNCTION_20_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1_0();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_12_1();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_3();
    }
  }

  OUTLINED_FUNCTION_8_3();
  if (v2)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43F88, &qword_231370E18);
    v3 = 24;
    v8 = OUTLINED_FUNCTION_37_1(v7);
    OUTLINED_FUNCTION_1_21(v8);
  }

  OUTLINED_FUNCTION_30_9();
  if (v1)
  {
    OUTLINED_FUNCTION_32_8();
    if (v10)
    {
      v11 = v9 > v3;
    }

    else
    {
      v11 = 0;
    }

    if (!v11)
    {
      OUTLINED_FUNCTION_67_3();
      v12 = OUTLINED_FUNCTION_54_0();
      memmove(v12, v13, v14);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43F90, &qword_231370E20);
    OUTLINED_FUNCTION_7_11(v15);
  }
}

void sub_23126E1B8()
{
  OUTLINED_FUNCTION_20_1();
  if (v6)
  {
    OUTLINED_FUNCTION_1_0();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_12_1();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_3();
    }
  }

  OUTLINED_FUNCTION_8_3();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43FD8, &qword_231370E80);
    v9 = OUTLINED_FUNCTION_63_1();
    _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_8_13();
    v9[2] = v2;
    v9[3] = v10;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  OUTLINED_FUNCTION_30_9();
  if (v1)
  {
    if (v9 != v0 || v5 + 16 * v2 <= v4)
    {
      v12 = OUTLINED_FUNCTION_54_0();
      memmove(v12, v13, v14);
    }

    v0[2] = 0;
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43FE0, &qword_231370E88);
    OUTLINED_FUNCTION_7_11(v15);
  }
}

void sub_23126E3C8()
{
  OUTLINED_FUNCTION_65_1();
  OUTLINED_FUNCTION_66_3();
  if (v6)
  {
    OUTLINED_FUNCTION_1_0();
    if (v11 != v12)
    {
      OUTLINED_FUNCTION_12_1();
      if (v11)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_3();
    }
  }

  else
  {
    v10 = v5;
  }

  v13 = v0[2];
  if (v10 <= v13)
  {
    v14 = v0[2];
  }

  else
  {
    v14 = v10;
  }

  if (v14)
  {
    OUTLINED_FUNCTION_49_0(v4, v5, v6, v7, v8, v9);
    v15 = OUTLINED_FUNCTION_63_1();
    _swift_stdlib_malloc_size(v15);
    OUTLINED_FUNCTION_61_3();
    v15[2] = v13;
    v15[3] = v16;
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
  }

  if (v3)
  {
    if (v15 != v0 || &v0[v13 + 4] <= v15 + 4)
    {
      v18 = OUTLINED_FUNCTION_40_8();
      memmove(v18, v19, v20);
    }

    v0[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(v2, v1);
    OUTLINED_FUNCTION_40_8();
    swift_arrayInitWithCopy();
  }

  OUTLINED_FUNCTION_64_1();
}

void sub_23126E4AC()
{
  OUTLINED_FUNCTION_20_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1_0();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_12_1();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_3();
    }
  }

  OUTLINED_FUNCTION_8_3();
  if (v2)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD434E0, &unk_23136CA20);
    v8 = OUTLINED_FUNCTION_23_9(v7);
    OUTLINED_FUNCTION_1_21(v8);
  }

  OUTLINED_FUNCTION_30_9();
  if (v1)
  {
    OUTLINED_FUNCTION_22_11();
    if (v10)
    {
      v11 = v9 > v3;
    }

    else
    {
      v11 = 0;
    }

    if (!v11)
    {
      v12 = OUTLINED_FUNCTION_54_0();
      memmove(v12, v13, v14);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD434E8, &unk_23136E480);
    OUTLINED_FUNCTION_7_11(v15);
  }
}

void sub_23126E580()
{
  OUTLINED_FUNCTION_20_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1_0();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_12_1();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_3();
    }
  }

  OUTLINED_FUNCTION_8_3();
  if (v2)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43F98, &qword_231370E28);
    v8 = OUTLINED_FUNCTION_23_9(v7);
    OUTLINED_FUNCTION_1_21(v8);
  }

  OUTLINED_FUNCTION_30_9();
  if (v1)
  {
    OUTLINED_FUNCTION_22_11();
    if (v10)
    {
      v11 = v9 > v3;
    }

    else
    {
      v11 = 0;
    }

    if (!v11)
    {
      v12 = OUTLINED_FUNCTION_54_0();
      memmove(v12, v13, v14);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43FA0, &qword_231370E30);
    OUTLINED_FUNCTION_7_11(v15);
  }
}

void sub_23126E654()
{
  OUTLINED_FUNCTION_20_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1_0();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_12_1();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_3();
    }
  }

  OUTLINED_FUNCTION_8_3();
  if (v2)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43FF0, &unk_231370EA0);
    v8 = OUTLINED_FUNCTION_23_9(v7);
    OUTLINED_FUNCTION_1_21(v8);
  }

  OUTLINED_FUNCTION_30_9();
  if (v1)
  {
    OUTLINED_FUNCTION_22_11();
    if (v10)
    {
      v11 = v9 > v3;
    }

    else
    {
      v11 = 0;
    }

    if (!v11)
    {
      v12 = OUTLINED_FUNCTION_54_0();
      memmove(v12, v13, v14);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43FE8, &qword_231370E98);
    OUTLINED_FUNCTION_7_11(v15);
  }
}

void sub_23126E728()
{
  OUTLINED_FUNCTION_20_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1_0();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_12_1();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_3();
    }
  }

  OUTLINED_FUNCTION_8_3();
  if (v3)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD434A0, &qword_231370E00);
    v8 = OUTLINED_FUNCTION_37_1(v7);
    OUTLINED_FUNCTION_1_21(v8);
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  if (v1)
  {
    if (v3 != v0 || v0 + 32 + 24 * v2 <= (v3 + 32))
    {
      OUTLINED_FUNCTION_67_3();
      memmove(v10, v11, v12);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_23126E858()
{
  OUTLINED_FUNCTION_20_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1_0();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_12_1();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_3();
    }
  }

  OUTLINED_FUNCTION_8_3();
  if (v2)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44008, &unk_231370EB8);
    v8 = OUTLINED_FUNCTION_23_9(v7);
    OUTLINED_FUNCTION_1_21(v8);
  }

  OUTLINED_FUNCTION_30_9();
  if (v1)
  {
    OUTLINED_FUNCTION_22_11();
    if (v10)
    {
      v11 = v9 > v3;
    }

    else
    {
      v11 = 0;
    }

    if (!v11)
    {
      v12 = OUTLINED_FUNCTION_54_0();
      memmove(v12, v13, v14);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43BF8, &unk_23136F900);
    OUTLINED_FUNCTION_7_11(v15);
  }
}

void sub_23126E92C()
{
  OUTLINED_FUNCTION_20_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1_0();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_12_1();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_3();
    }
  }

  OUTLINED_FUNCTION_8_3();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43490, &qword_2313703F0);
    v7 = OUTLINED_FUNCTION_63_1();
    v8 = _swift_stdlib_malloc_size(v7);
    *(v7 + 2) = v2;
    *(v7 + 3) = 2 * ((v8 - 32) / 32);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v9 = v7 + 32;
  v10 = v0 + 32;
  if (v1)
  {
    if (v7 != v0 || &v10[32 * v2] <= v9)
    {
      memmove(v9, v10, 32 * v2);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_23126EA10()
{
  OUTLINED_FUNCTION_20_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1_0();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_12_1();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_3();
    }
  }

  OUTLINED_FUNCTION_8_3();
  if (v2)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43628, &qword_23136CB68);
    v3 = 72;
    v8 = OUTLINED_FUNCTION_37_1(v7);
    OUTLINED_FUNCTION_1_21(v8);
  }

  OUTLINED_FUNCTION_30_9();
  if (v1)
  {
    OUTLINED_FUNCTION_32_8();
    if (v10)
    {
      v11 = v9 > v3;
    }

    else
    {
      v11 = 0;
    }

    if (!v11)
    {
      v12 = OUTLINED_FUNCTION_54_0();
      memmove(v12, v13, v14);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43630, &qword_23136CB70);
    OUTLINED_FUNCTION_7_11(v15);
  }
}

void sub_23126EB10()
{
  OUTLINED_FUNCTION_20_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1_0();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_12_1();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_3();
    }
  }

  OUTLINED_FUNCTION_8_3();
  if (v2)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43608, &qword_23136CB48);
    v3 = 24;
    v8 = OUTLINED_FUNCTION_37_1(v7);
    OUTLINED_FUNCTION_1_21(v8);
  }

  OUTLINED_FUNCTION_30_9();
  if (v1)
  {
    OUTLINED_FUNCTION_32_8();
    if (v10)
    {
      v11 = v9 > v3;
    }

    else
    {
      v11 = 0;
    }

    if (!v11)
    {
      OUTLINED_FUNCTION_67_3();
      v12 = OUTLINED_FUNCTION_54_0();
      memmove(v12, v13, v14);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43610, &unk_23136CB50);
    OUTLINED_FUNCTION_7_11(v15);
  }
}

void *sub_23126EC0C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD434F0, &qword_23136CA30);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[10 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 80 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD434F8, &qword_23136CA38);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_23126EDB4(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t), uint64_t *a6, uint64_t *a7)
{
  if (a3)
  {
    OUTLINED_FUNCTION_1_0();
    if (v12 != v13)
    {
      OUTLINED_FUNCTION_12_1();
      if (v12)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_3();
    }
  }

  else
  {
    v11 = a2;
  }

  v14 = *(a4 + 16);
  v15 = a5(v14, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
  OUTLINED_FUNCTION_46_0();
  if (a1)
  {
    v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    sub_23126F984(a4 + v17, v14, v15 + v17, a6, a7);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_23126EEE0()
{
  OUTLINED_FUNCTION_20_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1_0();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_12_1();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_3();
    }
  }

  OUTLINED_FUNCTION_46_10();
  if (v2)
  {
    OUTLINED_FUNCTION_49_0(v7, v8, v9, v10, v11, v12);
    v13 = OUTLINED_FUNCTION_63_1();
    _swift_stdlib_malloc_size(v13);
    OUTLINED_FUNCTION_8_13();
    *(v13 + 2) = v3;
    *(v13 + 3) = v14;
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  v15 = v13 + 32;
  v16 = v0 + 32;
  if (v1)
  {
    if (v13 != v0 || &v16[16 * v3] <= v15)
    {
      memmove(v15, v16, 16 * v3);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 16 * v3);
  }
}

void sub_23126F10C()
{
  OUTLINED_FUNCTION_20_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1_0();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_12_1();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_3();
    }
  }

  OUTLINED_FUNCTION_46_10();
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44038, &qword_231370EF0);
    v7 = OUTLINED_FUNCTION_63_1();
    _swift_stdlib_malloc_size(v7);
    OUTLINED_FUNCTION_61_3();
    *(v7 + 2) = v3;
    *(v7 + 3) = v8;
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v9 = v7 + 32;
  v10 = v0 + 32;
  if (v1)
  {
    if (v7 != v0 || &v10[8 * v3] <= v9)
    {
      memmove(v9, v10, 8 * v3);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v9, v10, 8 * v3);
  }
}

void sub_23126F1D8()
{
  OUTLINED_FUNCTION_20_1();
  if (v4)
  {
    OUTLINED_FUNCTION_1_0();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_12_1();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_3();
    }
  }

  OUTLINED_FUNCTION_8_3();
  if (v2)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44040, &qword_231370EF8);
    v8 = OUTLINED_FUNCTION_23_9(v7);
    OUTLINED_FUNCTION_1_21(v8);
  }

  OUTLINED_FUNCTION_30_9();
  if (v1)
  {
    OUTLINED_FUNCTION_22_11();
    if (v10)
    {
      v11 = v9 > v3;
    }

    else
    {
      v11 = 0;
    }

    if (!v11)
    {
      v12 = OUTLINED_FUNCTION_54_0();
      memmove(v12, v13, v14);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44048, &unk_231370F00);
    OUTLINED_FUNCTION_7_11(v15);
  }
}

void sub_23126F3A0()
{
  OUTLINED_FUNCTION_65_1();
  OUTLINED_FUNCTION_66_3();
  if (v6)
  {
    OUTLINED_FUNCTION_1_0();
    if (v11 != v12)
    {
      OUTLINED_FUNCTION_12_1();
      if (v11)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_3();
    }
  }

  else
  {
    v10 = v5;
  }

  v13 = v0[2];
  if (v10 <= v13)
  {
    v14 = v0[2];
  }

  else
  {
    v14 = v10;
  }

  if (v14)
  {
    OUTLINED_FUNCTION_49_0(v4, v5, v6, v7, v8, v9);
    v15 = swift_allocObject();
    v16 = _swift_stdlib_malloc_size(v15);
    v15[2] = v13;
    v15[3] = 2 * ((v16 - 32) / 40);
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
  }

  if (v3)
  {
    if (v15 != v0 || &v0[5 * v13 + 4] <= v15 + 4)
    {
      v18 = OUTLINED_FUNCTION_40_8();
      memmove(v18, v19, v20);
    }

    v0[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(v2, v1);
    OUTLINED_FUNCTION_40_8();
    swift_arrayInitWithCopy();
  }

  OUTLINED_FUNCTION_64_1();
}

void sub_23126F4BC(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v8 = a1;
  if (a3)
  {
    OUTLINED_FUNCTION_1_0();
    if (v10 != v11)
    {
      OUTLINED_FUNCTION_12_1();
      if (v10)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_3();
    }
  }

  else
  {
    v9 = a2;
  }

  v12 = *(a4 + 2);
  if (v9 <= v12)
  {
    v13 = *(a4 + 2);
  }

  else
  {
    v13 = v9;
  }

  if (v13)
  {
    OUTLINED_FUNCTION_49_0(a1, a2, a3, a4, a5, a6);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    *(v14 + 2) = v12;
    *(v14 + 3) = 2 * ((v15 - 32) / 80);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  v16 = v14 + 32;
  v17 = a4 + 32;
  if (v8)
  {
    if (v14 != a4 || &v17[80 * v12] <= v16)
    {
      memmove(v16, v17, 80 * v12);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

char *sub_23126F678(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_21(a3, result);
  }

  return result;
}

char *sub_23126F734(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[32 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_21(a3, result);
  }

  return result;
}

char *sub_23126F7B0(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[48 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_21(a3, result);
  }

  return result;
}

char *sub_23126F804(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[56 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_21(a3, result);
  }

  return result;
}

char *sub_23126F86C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[72 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_21(a3, result);
  }

  return result;
}

void sub_23126F984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  OUTLINED_FUNCTION_62_5();
  if (v10 && (__swift_instantiateConcreteTypeFromMangledNameV2(a4, a5), OUTLINED_FUNCTION_11(), v6 + *(v11 + 72) * v5 > v7))
  {
    if (v7 != v6)
    {
      OUTLINED_FUNCTION_16_15();

      swift_arrayInitWithTakeBackToFront();
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    OUTLINED_FUNCTION_16_15();

    swift_arrayInitWithTakeFrontToBack();
  }
}

char *sub_23126FA4C(char *__src, size_t __len, char *__dst)
{
  if (__dst != __src || &__src[__len] <= __dst)
  {
    return memmove(__dst, __src, __len);
  }

  return __src;
}

void sub_23126FA74(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_62_5();
  if (v8 && (a4(0), OUTLINED_FUNCTION_11(), v5 + *(v9 + 72) * v4 > v6))
  {
    if (v6 != v5)
    {
      OUTLINED_FUNCTION_16_15();

      swift_arrayInitWithTakeBackToFront();
    }
  }

  else
  {
    a4(0);
    OUTLINED_FUNCTION_16_15();

    swift_arrayInitWithTakeFrontToBack();
  }
}

void sub_23126FC0C()
{
  OUTLINED_FUNCTION_65_1();
  v3 = OUTLINED_FUNCTION_38_7();
  *v0 = v1;
  if (!v3 || v2 > *(v1 + 24) >> 1)
  {
    OUTLINED_FUNCTION_33_8();
    sub_23126F3A0();
    *v0 = v4;
  }

  OUTLINED_FUNCTION_64_1();
}

uint64_t sub_23126FD60(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    result = a3();
    *v3 = result;
  }

  return result;
}

void sub_23126FDD8()
{
  OUTLINED_FUNCTION_65_1();
  v4 = OUTLINED_FUNCTION_38_7();
  *v1 = v2;
  if (!v4 || v3 > *(v2 + 24) >> 1)
  {
    OUTLINED_FUNCTION_33_8();
    *v1 = v0();
  }

  OUTLINED_FUNCTION_64_1();
}

void sub_23126FE3C(uint64_t a1, char a2, void *a3)
{
  v53 = a3;
  v6 = type metadata accessor for GenerationService.DedupData(0);
  v50 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v44 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v44 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43678, &qword_23136CBC0);
  MEMORY[0x28223BE20](v15);
  v51 = (&v44 - v18);
  v49 = *(a1 + 16);
  if (!v49)
  {
LABEL_16:

    return;
  }

  v52 = v3;
  v19 = 0;
  v20 = *(v16 + 48);
  v47 = a1 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
  v48 = v20;
  v45 = v11;
  v46 = v17;
  v44 = v8;
  while (1)
  {
    if (v19 >= *(a1 + 16))
    {
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      sub_23136A970();
      __break(1u);
      goto LABEL_24;
    }

    v21 = v51;
    sub_2311E66F0(v47 + *(v17 + 72) * v19, v51, &qword_27DD43678, &qword_23136CBC0);
    v22 = v21[1];
    v56 = *v21;
    v23 = v56;
    v57 = v22;
    v24 = v14;
    sub_231270D3C(v21 + v48, v14);
    v25 = *v53;
    v27 = sub_231215F6C(v23, v22);
    v28 = v25[2];
    v29 = (v26 & 1) == 0;
    if (__OFADD__(v28, v29))
    {
      goto LABEL_21;
    }

    v30 = v26;
    if (v25[3] >= v28 + v29)
    {
      if ((a2 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44058, &unk_231370F20);
        sub_23136A710();
      }
    }

    else
    {
      sub_2312B50F4();
      v31 = sub_231215F6C(v23, v22);
      if ((v30 & 1) != (v32 & 1))
      {
        goto LABEL_23;
      }

      v27 = v31;
    }

    v33 = *v53;
    if (v30)
    {
      break;
    }

    v33[(v27 >> 6) + 8] |= 1 << v27;
    v38 = (v33[6] + 16 * v27);
    *v38 = v23;
    v38[1] = v22;
    v39 = v33[7] + *(v50 + 72) * v27;
    v14 = v24;
    sub_231270D3C(v24, v39);
    v40 = v33[2];
    v41 = __OFADD__(v40, 1);
    v42 = v40 + 1;
    if (v41)
    {
      goto LABEL_22;
    }

    v33[2] = v42;
LABEL_15:
    ++v19;
    a2 = 1;
    v17 = v46;
    if (v49 == v19)
    {
      goto LABEL_16;
    }
  }

  v34 = *(v50 + 72) * v27;
  v35 = v44;
  sub_231270BA8(v33[7] + v34, v44);
  v36 = v45;
  v14 = v24;
  v37 = v52;
  sub_23126C770(v35, v24, v45);
  v52 = v37;
  if (!v37)
  {
    sub_231270CE0(v35);
    sub_231270CE0(v24);

    sub_231270C0C(v36, v33[7] + v34);
    goto LABEL_15;
  }

  sub_231270CE0(v35);
  v58 = v52;
  v43 = v52;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD436A0, &qword_23136CC90);
  if ((swift_dynamicCast() & 1) == 0)
  {

    sub_231270CE0(v24);

    return;
  }

LABEL_24:
  v54 = 0;
  v55 = 0xE000000000000000;
  sub_23136A650();
  MEMORY[0x23192A730](0xD00000000000001BLL, 0x800000023137D480);
  sub_23136A6F0();
  MEMORY[0x23192A730](39, 0xE100000000000000);
  sub_23136A750();
  __break(1u);
}

void sub_23127030C()
{
  v1 = type metadata accessor for GenerationService.DedupData(0);
  v26 = *(v1 - 8);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v4);
  v27 = &v23 - v6;
  v25 = v0;
  v7 = *v0;
  v8 = *(*v0 + 16);
  v9 = v8 - 2;
  if (v8 >= 2)
  {
    v10 = 0;
    v24 = v8 - 2;
    while (1)
    {
      v28 = 0;
      MEMORY[0x23192B950](&v28, 8, v5);
      v11 = (v28 * v8) >> 64;
      if (v8 > v28 * v8)
      {
        v12 = -v8 % v8;
        if (v12 > v28 * v8)
        {
          do
          {
            v28 = 0;
            MEMORY[0x23192B950](&v28, 8);
          }

          while (v12 > v28 * v8);
          v11 = (v28 * v8) >> 64;
        }
      }

      v13 = v10 + v11;
      if (__OFADD__(v10, v11))
      {
        break;
      }

      if (v10 != v13)
      {
        v14 = *(v7 + 16);
        if (v10 >= v14)
        {
          goto LABEL_20;
        }

        v15 = (*(v26 + 80) + 32) & ~*(v26 + 80);
        v16 = *(v26 + 72);
        sub_231270BA8(v7 + v15 + v16 * v10, v27);
        if (v13 >= v14)
        {
          goto LABEL_21;
        }

        sub_231270BA8(v7 + v15 + v16 * v13, v3);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_2311E6798(v7, v17, v18, v19);
          v7 = v20;
        }

        if (v10 >= *(v7 + 16))
        {
          goto LABEL_22;
        }

        v21 = v7 + v15;
        sub_231270C0C(v3, v21 + v16 * v10);
        if (v13 >= *(v7 + 16))
        {
          goto LABEL_23;
        }

        sub_231270C0C(v27, v21 + v16 * v13);
        v9 = v24;
        *v25 = v7;
      }

      --v8;
      if (v10++ == v9)
      {
        return;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }
}

unint64_t sub_231270570()
{
  result = qword_280F7DAC0;
  if (!qword_280F7DAC0)
  {
    type metadata accessor for PooledCandidateSuggestionFactory(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F7DAC0);
  }

  return result;
}

uint64_t sub_2312705C8()
{
  OUTLINED_FUNCTION_26();
  v3 = v2;
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_231204BD4;

  return sub_23126B09C(v3, v4, v0 + 24, v0 + 64, v0 + 104);
}

void *sub_23127067C(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, __int128 *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v21 = a6;
  v22 = a7;
  v15 = *(a9 - 8);
  MEMORY[0x28223BE20](a1);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  (*(v15 + 16))(v17, a3, a9);
  v19 = sub_2312707C4(a1, a2, v17, a4, a5, v21, v22, v18, a9, a10);
  (*(v15 + 8))(a3, a9);
  return v19;
}

void *sub_2312707C4(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, __int128 *a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10)
{
  a8[11] = a9;
  a8[12] = a10;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(a8 + 8);
  (*(*(a9 - 8) + 32))(boxed_opaque_existential_1Tm, a3, a9);
  a8[2] = a1;
  sub_2311D38A8(a2, (a8 + 3));
  a8[13] = a4;
  sub_2311D38A8(a5, (a8 + 14));
  a8[19] = a6;
  a8[20] = a7;
  return a8;
}

uint64_t type metadata accessor for GenerationService.DedupData(uint64_t a1)
{
  result = qword_280F83A50;
  if (!qword_280F83A50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23127094C(uint64_t a1)
{
  sub_231247358();
  if (v1 <= 0x3F)
  {
    sub_231270A48();
    if (v2 <= 0x3F)
    {
      sub_231270A98(319, &qword_280F7C8D8, MEMORY[0x277D61310]);
      if (v3 <= 0x3F)
      {
        sub_231270A98(319, &qword_280F7CAA0, MEMORY[0x277D60A50]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_231270A48()
{
  if (!qword_280F7C800)
  {
    v0 = sub_23136A4D0();
    if (!v1)
    {
      atomic_store(v0, &qword_280F7C800);
    }
  }
}

void sub_231270A98(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_23136A4D0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_231270B10(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_231270B50(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_231270BA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenerationService.DedupData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_231270C0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenerationService.DedupData(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_231270C70(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43678, &qword_23136CBC0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_231270CE0(uint64_t a1)
{
  v2 = type metadata accessor for GenerationService.DedupData(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_231270D3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenerationService.DedupData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1Tm(uint64_t *a1)
{
  OUTLINED_FUNCTION_46_0();
  if ((*(v2 + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v3;
  }

  return a1;
}

uint64_t OUTLINED_FUNCTION_7_11(uint64_t a1)
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_23_9(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_38_7()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

__n128 OUTLINED_FUNCTION_56_5()
{
  result = *(v0 + 80);
  v2 = *(v0 + 96);
  *(v0 + 32) = result;
  *(v0 + 48) = v2;
  *(v0 + 16) = *(v0 + 64);
  return result;
}

uint64_t OUTLINED_FUNCTION_57_7()
{
  __swift_project_boxed_opaque_existential_1((v0 + 160), *(v0 + 184));

  return sub_2313682B0();
}

uint64_t OUTLINED_FUNCTION_58_4()
{
  *(v1 + 488) = v0;
  v2 = *(v1 + 352);
  v3 = v2[18];
  __swift_project_boxed_opaque_existential_1(v2 + 14, v2[17]);
  return v3 + 8;
}

uint64_t OUTLINED_FUNCTION_59_5()
{

  return sub_2312E6494(v0, v4, (v1 + 320), v2, v3);
}

uint64_t OUTLINED_FUNCTION_73_4()
{
}

uint64_t OUTLINED_FUNCTION_75_2()
{

  return sub_231367680();
}

uint64_t SiriRemembersLogger.create(featureService:)@<X0>(void *a1@<X8>)
{
  v2 = MEMORY[0x277D604F8];
  a1[3] = *v1;
  a1[4] = v2;
  *a1 = v1;
}

uint64_t sub_231271090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD439C0, &qword_23136ED90);
  v10 = OUTLINED_FUNCTION_40_0(v9);
  MEMORY[0x28223BE20](v10);
  v12 = v25 - v11;
  sub_231277750(a3, v25 - v11);
  v13 = sub_23136A2C0();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);

  if (EnumTagSinglePayload == 1)
  {
    sub_2312777C0(v12, &qword_27DD439C0, &qword_23136ED90);
  }

  else
  {
    sub_23136A2B0();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_23136A260();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_23136A030() + 32;
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

      sub_2312777C0(a3, &qword_27DD439C0, &qword_23136ED90);

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

  sub_2312777C0(a3, &qword_27DD439C0, &qword_23136ED90);
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

uint64_t SuggestionServiceAPI.getOwner(for:)()
{
  OUTLINED_FUNCTION_16();
  v0[2] = v1;
  v0[3] = v2;
  OUTLINED_FUNCTION_11_13();
  v7 = (v3 + *v3);
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v5 = OUTLINED_FUNCTION_22_7(v4);

  return v7(v5);
}

uint64_t sub_231271464()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_9();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 40) = v3;

  v4 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_231271550()
{
  OUTLINED_FUNCTION_8();
  SuggestionPool.getOwner(for:)();

  OUTLINED_FUNCTION_56_0();

  return v0();
}

uint64_t static SuggestionServiceAPIProviders.createAndWaitRefresh(serviceFactory:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_8_5(sub_2312715D0, 0);
}

uint64_t sub_2312715D0()
{
  OUTLINED_FUNCTION_8();
  type metadata accessor for DefaultGlobalLifeCycleContainer();
  swift_allocObject();
  v1 = DefaultGlobalLifeCycleContainer.init()();
  v0[4] = v1;
  v2 = OUTLINED_FUNCTION_45_4();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_23127168C;
  v4 = v0[2];
  v3 = v0[3];

  return v6(v4, v1, v3);
}

uint64_t sub_23127168C()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_12();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_43_8();

  return v4(v3);
}

uint64_t static SuggestionServiceAPIProviders.createAndWaitRefresh(serviceFactory:lifecycleContainer:)()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_35_9();
  ObjectType = swift_getObjectType();
  v5 = OUTLINED_FUNCTION_45_4();
  v6 = OUTLINED_FUNCTION_30(v5);
  *v6 = v7;
  OUTLINED_FUNCTION_34_0(v6);

  return v9(v3, v2, v1, ObjectType, v0);
}

uint64_t sub_231271850()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_43_8();

  return v4(v3);
}

uint64_t sub_231271938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD440B8, &qword_2313714D8);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v16 - v11;
  (*(v9 + 16))(&v16 - v11, a1, v8, v10);
  v13 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v14 = swift_allocObject();
  (*(v9 + 32))(v14 + v13, v12, v8);
  static SuggestionServiceAPIProviders.create(serviceFactory:lifecycleContainer:refreshCompleted:)(a2, a3, a4, &unk_231371510, v14);

  return swift_unknownObjectRelease();
}

uint64_t sub_231271AAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  return MEMORY[0x2822009F8](sub_231277A64, 0, 0);
}

uint64_t static SuggestionServiceAPIProviders.create(serviceFactory:lifecycleContainer:refreshCompleted:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_2313690A0();
  v10 = static SuggestionServiceAPIProviders.create(serviceFactory:lifecycleContainer:clock:refreshCompleted:)(a1, a2, a3, v12, a4, a5);
  __swift_destroy_boxed_opaque_existential_1Tm(v12);
  return v10;
}

uint64_t static SuggestionServiceAPIProviders.create(serviceFactory:lifecycleContainer:clock:refreshCompleted:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v32 = sub_2313698C0();
  v12 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v14 = &v33[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD439C0, &qword_23136ED90);
  v16 = OUTLINED_FUNCTION_40_0(v15);
  MEMORY[0x28223BE20](v16);
  v18 = &v33[-1] - v17;
  sub_2311CF324(a4, v33);
  if (qword_280F85BD8 != -1)
  {
    swift_once();
  }

  v19 = xmmword_280F85A10;
  v20 = *&qword_280F85A20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44090, &qword_231371010);
  swift_allocObject();
  v21 = sub_2312750A8(v33, 0x2065636976726553, 0xEF68736572666572, *&v19, *(&v19 + 1), v20);
  sub_2311CF324(a1, v33);
  type metadata accessor for DefaultRefreshableSuggestionServiceAPIProvider();
  v22 = swift_allocObject();

  swift_unknownObjectRetain();
  sub_231272A18(v33, a2, a3, v21);
  v23 = sub_23136A2C0();
  __swift_storeEnumTagSinglePayload(v18, 1, 1, v23);
  v24 = swift_allocObject();
  v24[2] = 0;
  v24[3] = 0;
  v24[4] = v22;
  v24[5] = a5;
  v24[6] = a6;

  sub_231271090(0, 0, v18, &unk_231371020, v24);

  sub_231369100();
  v25 = sub_2313698A0();
  v26 = sub_23136A390();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = OUTLINED_FUNCTION_63();
    *v27 = 0;
    _os_log_impl(&dword_2311CB000, v25, v26, "Finished creating APIProvider", v27, 2u);
    OUTLINED_FUNCTION_29();
  }

  else
  {
  }

  (*(v12 + 8))(v14, v32);
  OUTLINED_FUNCTION_1_22();
  sub_231277A18(v28, v29, v30, &protocol conformance descriptor for DefaultRefreshableSuggestionServiceAPIProvider);
  return v22;
}

uint64_t static SuggestionServiceAPIProviders.createAndWaitRefresh(serviceFactory:lifecycleContainer:clock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[7] = a4;
  v5[8] = v4;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  return OUTLINED_FUNCTION_8_5(sub_231271ED4, 0);
}

uint64_t sub_231271ED4()
{
  OUTLINED_FUNCTION_26();
  v1 = *(v0 + 64);
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  v3 = *(v0 + 48);
  *(v2 + 16) = *(v0 + 32);
  *(v2 + 32) = v3;
  *(v2 + 48) = v1;
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44098, &qword_231371030);
  OUTLINED_FUNCTION_34_8();
  *v4 = v5;
  v4[1] = sub_231271FC8;
  v6 = OUTLINED_FUNCTION_14_15();

  return MEMORY[0x2822007B8](v6);
}

uint64_t sub_231271FC8()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_2312720E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD440B8, &qword_2313714D8);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v18 - v13;
  (*(v11 + 16))(&v18 - v13, a1, v10, v12);
  v15 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v16 = swift_allocObject();
  (*(v11 + 32))(v16 + v15, v14, v10);
  static SuggestionServiceAPIProviders.create(serviceFactory:lifecycleContainer:clock:refreshCompleted:)(a2, a3, a4, a5, &unk_2313714E8, v16);

  return swift_unknownObjectRelease();
}

uint64_t sub_231272258(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  return MEMORY[0x2822009F8](sub_23127227C, 0, 0);
}

uint64_t sub_23127227C()
{
  OUTLINED_FUNCTION_8();
  *(v0 + 16) = *(v0 + 32);
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD440B8, &qword_2313714D8);
  sub_23136A280();
  OUTLINED_FUNCTION_56_0();

  return v1();
}

uint64_t sub_231272304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = sub_2313698C0();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();
  v8 = swift_task_alloc();
  v6[8] = v8;
  *v8 = v6;
  v8[1] = sub_2312723F8;

  return sub_231273544();
}

uint64_t sub_2312723F8()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_2312724DC()
{
  OUTLINED_FUNCTION_16();
  sub_231369100();
  v1 = sub_2313698A0();
  v2 = sub_23136A390();
  if (OUTLINED_FUNCTION_40_1(v2))
  {
    v3 = OUTLINED_FUNCTION_63();
    OUTLINED_FUNCTION_68(v3);
    OUTLINED_FUNCTION_57(&dword_2311CB000, v4, v5, "Finished refreshing suggestions service");
    OUTLINED_FUNCTION_9_10();
  }

  v6 = v0[3];

  v7 = OUTLINED_FUNCTION_28_0();
  v8(v7);
  OUTLINED_FUNCTION_1_22();
  v12 = sub_231277A18(v9, v10, v11, &protocol conformance descriptor for DefaultRefreshableSuggestionServiceAPIProvider);
  v16 = (v6 + *v6);
  v13 = swift_task_alloc();
  v0[9] = v13;
  *v13 = v0;
  v13[1] = sub_231272668;
  v14 = v0[2];

  return v16(v14, v12);
}

uint64_t sub_231272668()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  OUTLINED_FUNCTION_56_0();

  return v3();
}

uint64_t sub_231272798()
{
  OUTLINED_FUNCTION_26();
  v1 = *(v0[3] + 192);
  swift_getObjectType();
  v0[2] = v1;
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  OUTLINED_FUNCTION_34_0(v2);
  v3 = OUTLINED_FUNCTION_28_0();

  return MEMORY[0x2821C7148](v3);
}

uint64_t sub_23127284C()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_9();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;
  *(v6 + 40) = v5;

  v7 = OUTLINED_FUNCTION_50();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_23127297C()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_41_9();
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_22_7(v1);

  return MEMORY[0x2821C72A0](v2, v3);
}

void *sub_231272A18(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_defaultActor_initialize();
  sub_2311CF324(a1, (v4 + 19));
  v9 = type metadata accessor for NoOpSuggestionService();
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  v13 = v9;
  v14 = &off_2845F6BF8;
  *&v12 = v10;
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  sub_2311D38A8(&v12, (v4 + 14));
  v4[24] = a2;
  v4[25] = a3;
  v4[26] = a4;
  return v4;
}

uint64_t sub_231272ABC()
{
  OUTLINED_FUNCTION_8();
  v1[20] = v2;
  v1[21] = v0;
  v3 = sub_2313698C0();
  v1[22] = v3;
  OUTLINED_FUNCTION_0(v3);
  v1[23] = v4;
  v1[24] = OUTLINED_FUNCTION_43();
  v5 = OUTLINED_FUNCTION_50();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_231272B60()
{
  OUTLINED_FUNCTION_60_0();
  v1 = *(v0 + 168);
  swift_beginAccess();
  sub_2311CF324(v1 + 112, v0 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD440A0, &qword_2313773B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD440A8, &unk_231371060);
  if (swift_dynamicCast())
  {
    sub_2311D38A8((v0 + 96), v0 + 16);
    v2 = *(v0 + 40);
    v3 = *(v0 + 48);
    OUTLINED_FUNCTION_3_2((v0 + 16));
    OUTLINED_FUNCTION_11_13();
    v20 = (v4 + *v4);
    swift_task_alloc();
    OUTLINED_FUNCTION_14_0();
    *(v0 + 200) = v5;
    *v5 = v6;
    v5[1] = sub_231272DE0;
    v7 = *(v0 + 160);

    return v20(v7, v2, v3);
  }

  else
  {
    *(v0 + 96) = 0u;
    *(v0 + 112) = 0u;
    *(v0 + 128) = 0;
    sub_2312777C0(v0 + 96, &qword_27DD440B0, &qword_231377810);
    sub_231369100();
    v9 = sub_2313698A0();
    v10 = sub_23136A390();
    if (OUTLINED_FUNCTION_40_1(v10))
    {
      v11 = OUTLINED_FUNCTION_63();
      OUTLINED_FUNCTION_68(v11);
      OUTLINED_FUNCTION_57(&dword_2311CB000, v12, v13, "[DefaultRefreshableSuggestionServiceAPIProvider] Not able to cast service to SystemEnvironmentServiceProvider");
      OUTLINED_FUNCTION_9_10();
    }

    v14 = *(v0 + 160);

    v15 = OUTLINED_FUNCTION_28_0();
    v16(v15);
    v17 = type metadata accessor for NoOpSystemEnvironmentService();
    v18 = swift_allocObject();
    v14[3] = v17;
    v14[4] = &protocol witness table for NoOpSystemEnvironmentService;
    *v14 = v18;

    OUTLINED_FUNCTION_56_0();

    return v19();
  }
}

uint64_t sub_231272DE0()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_50();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_231272ED8()
{
  OUTLINED_FUNCTION_8();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  OUTLINED_FUNCTION_56_0();

  return v1();
}

uint64_t sub_231272F38()
{
  OUTLINED_FUNCTION_8();
  v1[10] = v2;
  v1[11] = v0;
  v3 = sub_2313698C0();
  v1[12] = v3;
  OUTLINED_FUNCTION_0(v3);
  v1[13] = v4;
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_50();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_231272FF0()
{
  OUTLINED_FUNCTION_60_0();
  sub_231369100();
  v1 = sub_2313698A0();
  v2 = sub_23136A390();
  if (OUTLINED_FUNCTION_40_1(v2))
  {
    v3 = OUTLINED_FUNCTION_63();
    OUTLINED_FUNCTION_68(v3);
    OUTLINED_FUNCTION_57(&dword_2311CB000, v4, v5, "Creating new suggestions service");
    OUTLINED_FUNCTION_9_10();
  }

  v6 = v0[11];

  v7 = OUTLINED_FUNCTION_28_0();
  v8(v7);
  v9 = v6[22];
  v10 = v6[23];
  OUTLINED_FUNCTION_3_2(v6 + 19);
  OUTLINED_FUNCTION_1_22();
  v14 = sub_231277A18(v11, v12, v13, &protocol conformance descriptor for DefaultRefreshableSuggestionServiceAPIProvider);
  OUTLINED_FUNCTION_11_13();
  v21 = (v15 + *v15);
  swift_task_alloc();
  OUTLINED_FUNCTION_14_0();
  v0[16] = v16;
  *v16 = v17;
  v16[1] = sub_23127319C;
  v18 = v0[10];
  v19 = v0[11];

  return v21(v18, v19, v14, v9, v10);
}

uint64_t sub_23127319C()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_50();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_231273294()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_41_9();
  v1 = swift_task_alloc();
  *(v0 + 136) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_22_7(v1);

  return MEMORY[0x2821C72D0](v2);
}

uint64_t sub_231273330()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_50();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_231273428()
{
  OUTLINED_FUNCTION_60_0();
  sub_231369100();
  v1 = sub_2313698A0();
  v2 = sub_23136A390();
  if (OUTLINED_FUNCTION_40_1(v2))
  {
    v3 = OUTLINED_FUNCTION_63();
    OUTLINED_FUNCTION_68(v3);
    OUTLINED_FUNCTION_57(&dword_2311CB000, v4, v5, "new suggestions service");
    OUTLINED_FUNCTION_9_10();
  }

  v6 = *(v0 + 112);
  v7 = *(v0 + 96);
  v8 = *(v0 + 104);
  v9 = *(v0 + 80);
  v10 = *(v0 + 88);

  (*(v8 + 8))(v6, v7);
  sub_2311CF324(v9, v0 + 16);
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1Tm((v10 + 112));
  sub_2311D38A8((v0 + 16), v10 + 112);
  swift_endAccess();

  OUTLINED_FUNCTION_56_0();

  return v11();
}

uint64_t sub_231273544()
{
  OUTLINED_FUNCTION_8();
  v1[7] = v0;
  v2 = sub_2313698C0();
  v1[8] = v2;
  OUTLINED_FUNCTION_0(v2);
  v1[9] = v3;
  v1[10] = OUTLINED_FUNCTION_43();
  v4 = sub_231369840();
  v1[11] = v4;
  OUTLINED_FUNCTION_0(v4);
  v1[12] = v5;
  v1[13] = OUTLINED_FUNCTION_43();
  v6 = OUTLINED_FUNCTION_50();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_231273634()
{
  OUTLINED_FUNCTION_16();
  v1 = sub_231369190();
  sub_231369140();

  sub_2313675F0();
  v2 = sub_231369190();
  sub_2313691A0();

  sub_2313690F0();
  v3 = sub_2313698A0();
  v4 = sub_23136A390();
  if (OUTLINED_FUNCTION_40_1(v4))
  {
    v5 = OUTLINED_FUNCTION_63();
    OUTLINED_FUNCTION_68(v5);
    OUTLINED_FUNCTION_57(&dword_2311CB000, v6, v7, "Refreshing SuggestionServiceAPIProvider");
    OUTLINED_FUNCTION_9_10();
  }

  v8 = OUTLINED_FUNCTION_28_0();
  v9(v8);
  v10 = swift_task_alloc();
  *(v0 + 112) = v10;
  *v10 = v0;
  v10[1] = sub_231273784;

  return sub_231274290();
}

uint64_t sub_231273784()
{
  OUTLINED_FUNCTION_26();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;
  v3 = *v0;
  *v2 = *v0;

  v4 = swift_task_alloc();
  *(v1 + 120) = v4;
  *v4 = v3;
  v4[1] = sub_2312738C0;

  return sub_231272F38();
}

uint64_t sub_2312738C0()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v2 = v1;
  OUTLINED_FUNCTION_9();
  *v3 = v2;
  v5 = *(v4 + 56);
  v6 = *v0;
  OUTLINED_FUNCTION_2();
  *v7 = v6;

  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 16));

  return MEMORY[0x2822009F8](sub_2312739C4, v5, 0);
}

uint64_t sub_2312739C4()
{
  OUTLINED_FUNCTION_60_0();
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  sub_2313675F0();
  v4 = sub_231369190();
  sub_231369180();

  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_56_0();

  return v5();
}

uint64_t sub_231273AB0()
{
  OUTLINED_FUNCTION_26();

  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_231273B78;

  return (sub_231275158)();
}

uint64_t sub_231273B78()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_50();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_231273C98()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_231209AAC;

  return sub_231273544();
}

uint64_t sub_231273D28()
{
  OUTLINED_FUNCTION_8();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_34_0(v1);

  return sub_231273A94();
}

uint64_t sub_231273DA8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_8_5(sub_231273DC8, v2);
}

uint64_t sub_231273DC8()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_41_9();
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_32_9(v1);

  return MEMORY[0x2821C7280](v2);
}

uint64_t sub_231273E64()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  OUTLINED_FUNCTION_56_0();

  return v3();
}

uint64_t sub_231273F44(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_8_5(sub_231273F64, v2);
}

uint64_t sub_231273F64()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_41_9();
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_32_9(v1);

  return MEMORY[0x2821C72A8](v2);
}

uint64_t sub_231274000()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_5();

  return v4(v3);
}

uint64_t sub_2312740E4(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_8_5(sub_231274100, v1);
}

uint64_t sub_231274100()
{
  OUTLINED_FUNCTION_26();
  v2 = OUTLINED_FUNCTION_41_9();
  v3 = swift_task_alloc();
  *(v1 + 32) = v3;
  *v3 = v1;
  v3[1] = sub_2312741B0;
  v4 = *(v1 + 16);

  return MEMORY[0x2821C7298](v4, v2, v0);
}

uint64_t sub_2312741B0()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  OUTLINED_FUNCTION_56_0();

  return v3();
}

uint64_t sub_231274290()
{
  OUTLINED_FUNCTION_8();
  v1[3] = v0;
  v2 = sub_2313698C0();
  v1[4] = v2;
  OUTLINED_FUNCTION_0(v2);
  v1[5] = v3;
  v1[6] = OUTLINED_FUNCTION_43();
  v4 = OUTLINED_FUNCTION_50();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_231274334()
{
  OUTLINED_FUNCTION_16();
  sub_2313690F0();
  v1 = sub_2313698A0();
  v2 = sub_23136A3A0();
  if (OUTLINED_FUNCTION_40_1(v2))
  {
    v3 = OUTLINED_FUNCTION_63();
    OUTLINED_FUNCTION_68(v3);
    OUTLINED_FUNCTION_57(&dword_2311CB000, v4, v5, "Destroying global lifecycle");
    OUTLINED_FUNCTION_9_10();
  }

  v6 = v0[3];

  v7 = OUTLINED_FUNCTION_28_0();
  v8(v7);
  v9 = *(v6 + 192);
  swift_getObjectType();
  v0[2] = v9;
  v10 = swift_task_alloc();
  v0[7] = v10;
  *v10 = v0;
  OUTLINED_FUNCTION_34_0(v10);
  v11 = OUTLINED_FUNCTION_28_0();

  return MEMORY[0x2821C67F0](v11);
}

uint64_t sub_23127444C()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  OUTLINED_FUNCTION_56_0();

  return v3();
}

uint64_t sub_231274564()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_41_9();
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_22_7(v1);

  return MEMORY[0x2821C7290](v2);
}

uint64_t sub_231274600()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_5();

  return v4(v3);
}

void *DefaultRefreshableSuggestionServiceAPIProvider.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 112));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 152));
  swift_unknownObjectRelease();

  swift_defaultActor_destroy();
  return v0;
}

uint64_t DefaultRefreshableSuggestionServiceAPIProvider.__deallocating_deinit()
{
  DefaultRefreshableSuggestionServiceAPIProvider.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_231274778()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_231209AAC;

  return sub_231273D28();
}

uint64_t sub_231274804()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_231277A70;

  return sub_231272960();
}

uint64_t sub_231274890(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_231209AAC;

  return sub_231273DA8(a1, a2);
}

uint64_t sub_231274934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for DefaultRefreshableSuggestionServiceAPIProvider();
  *v10 = v5;
  v10[1] = sub_231209AAC;

  return MEMORY[0x2821C72B0](a1, a2, v11, a3, a5);
}

uint64_t sub_231274A00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for DefaultRefreshableSuggestionServiceAPIProvider();
  *v10 = v5;
  v10[1] = sub_231209AAC;

  return MEMORY[0x2821C72C0](a1, a2, a3, v11, a5);
}

uint64_t sub_231274ACC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  v7 = type metadata accessor for DefaultRefreshableSuggestionServiceAPIProvider();
  *v6 = v3;
  v6[1] = sub_231209AAC;

  return MEMORY[0x2821C72B8](a1, v7, a3);
}

uint64_t sub_231274B80(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_231277A70;

  return sub_231273F44(a1, a2);
}

uint64_t sub_231274C24(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_231209AAC;

  return sub_2312740E4(a1);
}

uint64_t sub_231274CB8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_231277A70;

  return sub_231274548();
}

uint64_t sub_231274D44()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2311D05C8;

  return sub_231273A94();
}

uint64_t sub_231274DD0(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DefaultRefreshableSuggestionServiceAPIProvider();

  return MEMORY[0x2821C6520](v3, a2);
}

uint64_t sub_231274E08()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_231209AAC;

  return sub_231272ABC();
}

uint64_t sub_231274EA4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_231274F34;

  return sub_23127277C();
}

uint64_t sub_231274F34()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_5();

  return v4(v3);
}

uint64_t sub_231275018()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_231209AAC;

  return sub_231274290();
}

uint64_t sub_2312750A8(void *a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6)
{
  v7 = v6;
  swift_defaultActor_initialize();
  *(v7 + 208) = 0;
  sub_2311CF324(a1, v7 + 112);
  *(v7 + 152) = a4;
  *(v7 + 160) = a5;
  *(v7 + 168) = a6;
  *(v7 + 176) = a2;
  *(v7 + 184) = a3;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_231368F20();
  *(v7 + 192) = a5;
  *(v7 + 200) = v14 - a5;
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v7;
}

uint64_t sub_231275158(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_2313698C0();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_231275228, v3, 0);
}

uint64_t sub_231275228()
{
  v37 = v0;
  v1 = v0[5];
  OUTLINED_FUNCTION_3_2((v1 + 112));
  OUTLINED_FUNCTION_28_0();
  sub_231368F20();
  v3 = v2;
  v4 = *(v1 + 200);
  v5 = v0[5];
  if (v2 < v4 && (v6 = *(v5 + 208), (v0[10] = v6) != 0))
  {

    sub_231369100();

    v7 = sub_2313698A0();
    v8 = sub_23136A3A0();

    v9 = os_log_type_enabled(v7, v8);
    v10 = v0[9];
    v11 = v0[6];
    v12 = v0[7];
    if (v9)
    {
      v13 = v0[5];
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v36 = v15;
      *v14 = 136315394;
      *(v14 + 4) = sub_2311CFD58(*(v13 + 176), *(v13 + 184), &v36);
      *(v14 + 12) = 2048;
      *(v14 + 14) = v4 - v3;
      _os_log_impl(&dword_2311CB000, v7, v8, "%s request is already scheduled in %f seconds. Skipping this one.", v14, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v15);
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_29();
    }

    (*(v12 + 8))(v10, v11);
    swift_task_alloc();
    OUTLINED_FUNCTION_14_0();
    v0[11] = v16;
    *v16 = v17;
    v18 = sub_2312755A8;
  }

  else
  {
    v19 = v2 - v4;
    v20 = *(v5 + 192);
    if (v20 >= v19)
    {
      v21 = v20 * *(v5 + 168);
    }

    else
    {
      v20 = *(v5 + 152);
      v21 = *(v5 + 160);
    }

    *(v5 + 192) = v21;
    sub_2313690F0();

    v22 = sub_2313698A0();
    v23 = sub_23136A3A0();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = v0[5];
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v36 = v26;
      *v25 = 136315394;
      *(v25 + 4) = sub_2311CFD58(*(v24 + 176), *(v24 + 184), &v36);
      *(v25 + 12) = 2048;
      *(v25 + 14) = v20;
      _os_log_impl(&dword_2311CB000, v22, v23, "Scheduling %s in %f seconds.", v25, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_29();
    }

    v27 = OUTLINED_FUNCTION_28_0();
    v28(v27);
    v29 = v0[4];
    v30 = v0[5];
    v31 = v0[3];
    *(v1 + 200) = v3 + v20;
    v6 = sub_23127584C(v31, v29, v1 + 112, v3 + v20);
    v0[12] = v6;
    *(v30 + 208) = v6;

    swift_task_alloc();
    OUTLINED_FUNCTION_14_0();
    v0[13] = v16;
    *v16 = v32;
    v18 = sub_231275708;
  }

  v16[1] = v18;
  v33 = v0[2];
  v34 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200460](v33, v6, v34);
}

uint64_t sub_2312755A8()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_50();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_2312756A0()
{
  OUTLINED_FUNCTION_8();

  OUTLINED_FUNCTION_56_0();

  return v0();
}

uint64_t sub_231275708()
{
  OUTLINED_FUNCTION_26();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_23127584C(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD439C0, &qword_23136ED90);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v14 - v9;
  v11 = sub_23136A2C0();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v11);
  sub_2311CF324(a3, v15);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  *(v12 + 32) = a4;
  sub_2311D38A8(v15, v12 + 40);
  *(v12 + 80) = a1;
  *(v12 + 88) = a2;

  return sub_231271090(0, 0, v10, &unk_2313714D0, v12);
}

uint64_t sub_231275964(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 40) = a6;
  *(v7 + 48) = a7;
  *(v7 + 32) = a5;
  *(v7 + 24) = a2;
  *(v7 + 16) = a1;
  return MEMORY[0x2822009F8](sub_231275990, 0, 0);
}

uint64_t sub_231275990()
{
  OUTLINED_FUNCTION_26();
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_3_2(*(v0 + 32));
  OUTLINED_FUNCTION_28_0();
  sub_231368F20();
  v3 = v1 - v2;
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v5 = OUTLINED_FUNCTION_34_0(v4);
  v6.n128_f64[0] = v3;

  return MEMORY[0x2821C7898](v5, v6);
}

uint64_t sub_231275A40()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_12();
  v3 = v2;
  OUTLINED_FUNCTION_9();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2();
  *v6 = v5;

  if (v0)
  {
  }

  v10 = (v3[5] + *v3[5]);
  v7 = swift_task_alloc();
  v3[8] = v7;
  *v7 = v5;
  v7[1] = sub_231275BCC;
  v8 = v3[2];

  return v10(v8);
}

uint64_t sub_231275BCC()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  OUTLINED_FUNCTION_56_0();

  return v3();
}

uint64_t sub_231275CAC(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_231275DA4;

  return v6(a1);
}

uint64_t sub_231275DA4()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  OUTLINED_FUNCTION_56_0();

  return v3();
}

uint64_t sub_231275E88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  v3[7] = sub_231277A18(&qword_27DD440C0, 255, type metadata accessor for DefaultGlobalLifeCycleContainer, &protocol conformance descriptor for DefaultGlobalLifeCycleContainer);

  return MEMORY[0x2822009F8](sub_231275F2C, 0, 0);
}

uint64_t sub_231275F2C()
{
  OUTLINED_FUNCTION_26();
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_36_8(v1);
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44098, &qword_231371030);
  OUTLINED_FUNCTION_34_8();
  *v2 = v3;
  v2[1] = sub_23127600C;
  v4 = OUTLINED_FUNCTION_14_15();

  return MEMORY[0x2822007B8](v4);
}

uint64_t sub_23127600C()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v1 = *v0;
  OUTLINED_FUNCTION_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_23127610C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a3;
  v5[7] = a5;
  v5[4] = a1;
  v5[5] = a2;
  return MEMORY[0x2822009F8](sub_231276130, 0, 0);
}

uint64_t sub_231276130()
{
  OUTLINED_FUNCTION_26();
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_36_8(v1);
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44098, &qword_231371030);
  OUTLINED_FUNCTION_34_8();
  *v2 = v3;
  v2[1] = sub_23127600C;
  v4 = OUTLINED_FUNCTION_14_15();

  return MEMORY[0x2822007B8](v4);
}

uint64_t sub_231276234()
{
  OUTLINED_FUNCTION_16();
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_33(v5);
  *v6 = v7;
  v6[1] = sub_231209AAC;
  v8 = OUTLINED_FUNCTION_24_2();

  return sub_231272304(v8, v9, v1, v2, v3, v4);
}

uint64_t sub_2312762F8()
{
  OUTLINED_FUNCTION_8();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_33(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_26_12(v1);

  return sub_231273C98();
}

uint64_t sub_231276380(uint64_t a1, uint64_t a2)
{
  result = sub_231277A18(&qword_280F7CD90, a2, type metadata accessor for DefaultRefreshableSuggestionServiceAPIProvider, &protocol conformance descriptor for DefaultRefreshableSuggestionServiceAPIProvider);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2312763D8(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = sub_231277A18(&qword_280F7CDA0, a2, type metadata accessor for DefaultRefreshableSuggestionServiceAPIProvider, &protocol conformance descriptor for DefaultRefreshableSuggestionServiceAPIProvider);
  result = sub_231277A18(qword_280F7CDB8, v3, type metadata accessor for DefaultRefreshableSuggestionServiceAPIProvider, &protocol conformance descriptor for DefaultRefreshableSuggestionServiceAPIProvider);
  *(a1 + 16) = result;
  return result;
}

uint64_t dispatch thunk of SuggestionServiceAPI.suggestNext(interaction:)()
{
  OUTLINED_FUNCTION_60_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_11_13();
  v13 = (v8 + *v8);
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_33(v9);
  *v10 = v11;
  v10[1] = sub_231209AAC;

  return v13(v7, v5, v3, v1);
}

uint64_t dispatch thunk of SuggestionServiceAPI.logShown(for:deliveryVehicle:generationId:)()
{
  OUTLINED_FUNCTION_60_0();
  OUTLINED_FUNCTION_29_8(v0, v1, v2, v3, v4);
  OUTLINED_FUNCTION_3_3();
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_30(v5);
  *v6 = v7;
  OUTLINED_FUNCTION_34_0(v6);
  OUTLINED_FUNCTION_37_9();

  return v8();
}

uint64_t dispatch thunk of SuggestionServiceAPI.getSuggestionPool()()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_38_1();
  OUTLINED_FUNCTION_11_13();
  v6 = (v0 + *v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_30(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_22_7(v2);

  return v6(v4);
}

uint64_t dispatch thunk of SystemEnvironmentServiceProvider.getSystemEnvironmentService()()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_35_9();
  OUTLINED_FUNCTION_3_3();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_33(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_31_12(v1);

  return v4(v3);
}

uint64_t dispatch thunk of DefaultRefreshableSuggestionServiceAPIProvider.allEntities.getter()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_13_0();
  v5 = (*(v0 + 144) + **(v0 + 144));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_30(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_34_0(v2);

  return v5();
}

uint64_t dispatch thunk of DefaultRefreshableSuggestionServiceAPIProvider.entities.getter()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_13_0();
  v5 = (*(v0 + 152) + **(v0 + 152));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_30(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_34_0(v2);

  return v5();
}

uint64_t dispatch thunk of DefaultRefreshableSuggestionServiceAPIProvider.getService()()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_13_0();
  v6 = (*(v0 + 168) + **(v0 + 168));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_33(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_26_12(v2);

  return v6(v4);
}

uint64_t dispatch thunk of DefaultRefreshableSuggestionServiceAPIProvider.getSystemEnvironmentService()()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_13_0();
  v6 = (*(v0 + 176) + **(v0 + 176));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_33(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_26_12(v2);

  return v6(v4);
}

uint64_t dispatch thunk of DefaultRefreshableSuggestionServiceAPIProvider.refreshAsync()()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_13_0();
  v5 = (*(v0 + 200) + **(v0 + 200));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_30(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_34_0(v2);

  return v5();
}

uint64_t dispatch thunk of DefaultRefreshableSuggestionServiceAPIProvider.refresh(owner:)()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  OUTLINED_FUNCTION_13_0();
  v7 = (*(v2 + 208) + **(v2 + 208));
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_30(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_34_0(v4);

  return v7(v1);
}

uint64_t dispatch thunk of DefaultRefreshableSuggestionServiceAPIProvider.addToLifeCycle(owner:localEntities:)()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_38_1();
  OUTLINED_FUNCTION_13_0();
  v6 = (*(v0 + 216) + **(v0 + 216));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_30(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_22_7(v2);

  return v6(v4);
}

uint64_t dispatch thunk of DefaultRefreshableSuggestionServiceAPIProvider.getEntity<A>(entityType:)()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_38_1();
  OUTLINED_FUNCTION_13_0();
  v6 = (*(v0 + 224) + **(v0 + 224));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_30(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_22_7(v2);

  return v6(v4);
}

uint64_t dispatch thunk of DefaultRefreshableSuggestionServiceAPIProvider.destroy(owner:)()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  OUTLINED_FUNCTION_13_0();
  v7 = (*(v2 + 232) + **(v2 + 232));
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_30(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_34_0(v4);

  return v7(v1);
}

uint64_t dispatch thunk of DefaultRefreshableSuggestionServiceAPIProvider.destroy()()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_13_0();
  v5 = (*(v0 + 240) + **(v0 + 240));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_30(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_34_0(v2);

  return v5();
}

uint64_t dispatch thunk of DefaultRefreshableSuggestionServiceAPIProvider.getAllOwners()()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_13_0();
  v5 = (*(v0 + 248) + **(v0 + 248));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_30(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_34_0(v2);

  return v5();
}

uint64_t dispatch thunk of SuggestionServiceFactory.create(refreshableService:)()
{
  OUTLINED_FUNCTION_60_0();
  OUTLINED_FUNCTION_29_8(v0, v1, v2, v3, v4);
  OUTLINED_FUNCTION_3_3();
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_33(v5);
  *v6 = v7;
  v6[1] = sub_231209AAC;
  OUTLINED_FUNCTION_37_9();

  return v8();
}

uint64_t sub_2312775C4()
{
  OUTLINED_FUNCTION_60_0();
  v1 = *(v0 + 3);
  v2 = v0[4];
  v3 = *(v0 + 10);
  v4 = *(v0 + 11);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_33(v5);
  *v6 = v7;
  v6[1] = sub_2311D05C8;
  v8 = OUTLINED_FUNCTION_24_2();

  return sub_231275964(v8, v2, v9, v1, v10, v3, v4);
}

uint64_t sub_231277684()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_38_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD440B8, &qword_2313714D8);
  OUTLINED_FUNCTION_40_0(v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_30(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_39_7(v2);

  return sub_231272258(v4, v5, v6);
}

uint64_t sub_231277750(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD439C0, &qword_23136ED90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2312777C0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_0_2();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_231277814()
{
  OUTLINED_FUNCTION_26();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_33(v0);
  *v1 = v2;
  v1[1] = sub_231209AAC;
  v3 = OUTLINED_FUNCTION_24_2();

  return v4(v3);
}

uint64_t objectdestroy_76Tm()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD440B8, &qword_2313714D8);
  OUTLINED_FUNCTION_0_2();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_23127794C()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_38_1();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD440B8, &qword_2313714D8);
  OUTLINED_FUNCTION_40_0(v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_30(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_39_7(v2);

  return sub_231271AAC(v4, v5, v6);
}

uint64_t sub_231277A18(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_231277ACC(void *a1, void *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = v3;
  v9 = a1[3];
  v8 = a1[4];
  __swift_mutable_project_boxed_opaque_existential_1(a1, v9);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_4();
  v13 = v12 - v11;
  (*(v14 + 16))(v12 - v11);
  v15 = a2[3];
  v16 = a2[4];
  __swift_mutable_project_boxed_opaque_existential_1(a2, v15);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_1_4();
  v20 = v19 - v18;
  (*(v21 + 16))(v19 - v18);
  v22 = a3(v13, v20, v5, v9, v15, v8, v16);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v22;
}

uint64_t DynamicDialogService.templateDialog(propertyProvider:dialogProperties:environment:viewContext:)()
{
  OUTLINED_FUNCTION_8();
  v1[74] = v0;
  v1[73] = v2;
  v1[72] = v3;
  v1[71] = v4;
  v1[70] = v5;
  v6 = sub_2313698C0();
  v1[75] = v6;
  OUTLINED_FUNCTION_0(v6);
  v1[76] = v7;
  v1[77] = OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_13();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_231277D1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_29_1();
  a23 = v25;
  a24 = v26;
  a22 = v24;
  v27 = *(v24 + 560);
  sub_2311CF388(*(v24 + 568), v24 + 16);
  sub_2311CF388(v27, v24 + 56);
  v28 = sub_231368CA0();
  swift_allocObject();
  v29 = sub_231368C90();
  *(v24 + 624) = v29;
  sub_2311CF388(v27, v24 + 136);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD439F8, &qword_23136EDE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD440C8, &qword_231371550);
  if (swift_dynamicCast())
  {
    v30 = *(v24 + 592);
    sub_2311D38A8((v24 + 176), v24 + 96);
    OUTLINED_FUNCTION_56((v30 + 16), *(v30 + 40));
    v31 = *(v24 + 120);
    v32 = *(v24 + 128);
    __swift_project_boxed_opaque_existential_1((v24 + 96), v31);
    *(v24 + 440) = v31;
    *(v24 + 448) = *(v32 + 8);
    __swift_allocate_boxed_opaque_existential_1((v24 + 416));
    OUTLINED_FUNCTION_26_0();
    (*(v33 + 16))();
    v34 = MEMORY[0x277D61168];
    *(v24 + 480) = v28;
    *(v24 + 488) = v34;
    *(v24 + 456) = v29;

    swift_task_alloc();
    OUTLINED_FUNCTION_14_0();
    *(v24 + 632) = v35;
    *v35 = v36;
    v35[1] = sub_231278208;
LABEL_5:
    OUTLINED_FUNCTION_8_4();

    return MEMORY[0x2821C69D8](v45, v46, v47, v48, v49, v50, v51, v52, a9, a10, a11, a12, a13, a14, a15, a16);
  }

  v37 = *(v24 + 560);
  *(v24 + 176) = 0u;
  *(v24 + 192) = 0u;
  *(v24 + 208) = 0;
  sub_2312777C0(v24 + 176, &qword_27DD440D0, &unk_231371558);
  sub_2311CF388(v37, v24 + 256);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43A00, &unk_23136EDF0);
  if (swift_dynamicCast())
  {
    v38 = *(v24 + 592);
    sub_2311D38A8((v24 + 296), v24 + 216);
    OUTLINED_FUNCTION_56((v38 + 56), *(v38 + 80));
    v39 = *(v24 + 240);
    v40 = *(v24 + 248);
    __swift_project_boxed_opaque_existential_1((v24 + 216), v39);
    *(v24 + 360) = v39;
    *(v24 + 368) = *(v40 + 8);
    __swift_allocate_boxed_opaque_existential_1((v24 + 336));
    OUTLINED_FUNCTION_26_0();
    (*(v41 + 16))();
    v42 = MEMORY[0x277D61168];
    *(v24 + 400) = v28;
    *(v24 + 408) = v42;
    *(v24 + 376) = v29;

    swift_task_alloc();
    OUTLINED_FUNCTION_14_0();
    *(v24 + 648) = v43;
    *v43 = v44;
    v43[1] = sub_231278384;
    goto LABEL_5;
  }

  v53 = *(v24 + 560);
  *(v24 + 296) = 0u;
  *(v24 + 312) = 0u;
  *(v24 + 328) = 0;
  sub_2312777C0(v24 + 296, &qword_27DD440D8, &qword_231371568);
  __swift_project_boxed_opaque_existential_1(v53, v53[3]);
  DynamicType = swift_getDynamicType();
  v55 = v53[4];
  sub_231369120();
  v56 = sub_2313698A0();
  v57 = sub_23136A3B0();
  v58 = os_log_type_enabled(v56, v57);
  v59 = *(v24 + 616);
  v60 = *(v24 + 608);
  v61 = *(v24 + 600);
  if (v58)
  {
    a11 = *(v24 + 600);
    v62 = OUTLINED_FUNCTION_60();
    HIDWORD(a9) = v57;
    v63 = OUTLINED_FUNCTION_29_0();
    a12 = v63;
    *v62 = 136315138;
    v64 = sub_23136AA70();
    a10 = v59;
    v66 = v55;
    v67 = DynamicType;
    v68 = sub_2311CFD58(v64, v65, &a12);

    *(v62 + 4) = v68;
    DynamicType = v67;
    v55 = v66;
    _os_log_impl(&dword_2311CB000, v56, BYTE4(a9), "Unknown property provider type: '%s'", v62, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v63);
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_29();

    v69 = (*(v60 + 8))(a10, a11);
  }

  else
  {

    v69 = (*(v60 + 8))(v59, v61);
  }

  v72 = sub_23127D2D4(v69, v70, v71);
  OUTLINED_FUNCTION_42_3(&type metadata for CATErrors, v72);
  *v73 = DynamicType;
  v73[1] = v55;
  swift_willThrow();

  OUTLINED_FUNCTION_56_0();
  OUTLINED_FUNCTION_8_4();

  return v75(v74, v75, v76, v77, v78, v79, v80, v81, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_231278208()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v3 = v2;
  OUTLINED_FUNCTION_4();
  *v4 = v3;
  v3[62] = v1;
  v3[63] = v5;
  v3[64] = v6;
  v3[65] = v0;
  OUTLINED_FUNCTION_21_13();
  v7 = *v1;
  OUTLINED_FUNCTION_2();
  *v8 = v7;
  v3[80] = v0;

  if (!v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v3 + 57);
    __swift_destroy_boxed_opaque_existential_1Tm(v3 + 52);
  }

  OUTLINED_FUNCTION_13();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_231278318()
{
  OUTLINED_FUNCTION_8();

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));

  v1 = OUTLINED_FUNCTION_0_22();

  return v2(v1);
}

uint64_t sub_231278384()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v3 = v2;
  OUTLINED_FUNCTION_4();
  *v4 = v3;
  v3[66] = v1;
  v3[67] = v5;
  v3[68] = v6;
  v3[69] = v0;
  OUTLINED_FUNCTION_21_13();
  v7 = *v1;
  OUTLINED_FUNCTION_2();
  *v8 = v7;
  v3[82] = v0;

  if (!v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v3 + 47);
    __swift_destroy_boxed_opaque_existential_1Tm(v3 + 42);
  }

  OUTLINED_FUNCTION_13();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_231278498()
{
  OUTLINED_FUNCTION_8();

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 216));

  v1 = OUTLINED_FUNCTION_0_22();

  return v2(v1);
}

uint64_t sub_231278508()
{
  OUTLINED_FUNCTION_8();

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 57);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 52);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);

  OUTLINED_FUNCTION_56_0();

  return v1();
}

uint64_t sub_231278584()
{
  OUTLINED_FUNCTION_8();

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 47);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 42);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 27);

  OUTLINED_FUNCTION_56_0();

  return v1();
}

uint64_t DynamicDialogService.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  return v0;
}

uint64_t DynamicDialogService.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));

  return swift_deallocClassInstance();
}

uint64_t sub_231278668()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_23127D884;

  return DynamicDialogService.templateDialog(propertyProvider:dialogProperties:environment:viewContext:)();
}

uint64_t CATDialogService.__allocating_init(templateDirectory:)(uint64_t a1)
{
  v2 = sub_231366D50();
  MEMORY[0x28223BE20](v2 - 8);
  OUTLINED_FUNCTION_1_4();
  v5 = v4 - v3;
  v6 = sub_231366690();
  OUTLINED_FUNCTION_21();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_4();
  v12 = v11 - v10;
  (*(v8 + 16))(v11 - v10, a1, v6);
  sub_231366D40();
  type metadata accessor for DialogEngineCATExecution();
  v13 = swift_allocObject();
  v14 = sub_23127CEF4(v12, v5, v13);
  (*(v8 + 8))(a1, v6);
  return v14;
}

uint64_t static CATDialogService.createPlatformSafePath(templatesUrl:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_231366690();
  OUTLINED_FUNCTION_21();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v23 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v23 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v23 - v15;
  sub_231366670();
  sub_2313665C0();

  v17 = *(v4 + 16);
  v17(v13, v16, v2);
  sub_231366630();
  sub_23127D34C();
  v17(v10, v13, v2);
  v18 = sub_231278AC0(v10);
  v19 = [objc_opt_self() bundleTemplateDir_];
  if (v19)
  {
    v20 = v19;
    sub_231369FD0();

    sub_2313665D0();

    v21 = *(v4 + 8);
    v21(v13, v2);
    v21(v16, v2);
    v16 = v7;
  }

  else
  {

    (*(v4 + 8))(v13, v2);
  }

  return (*(v4 + 32))(a1, v16, v2);
}

id sub_231278AC0(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_2313665F0();
  v4 = [v2 initWithURL_];

  sub_231366690();
  OUTLINED_FUNCTION_0_2();
  (*(v5 + 8))(a1);
  return v4;
}

uint64_t sub_231278B50(uint64_t a1, uint64_t a2, char a3)
{
  sub_2311CF388(a1, &v16);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD42EF0, &unk_2313762A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44140, &qword_2313717A0);
  if (!swift_dynamicCast())
  {
    v15 = 0;
    memset(v14, 0, sizeof(v14));
    v10 = sub_2312777C0(v14, &qword_27DD44148, &qword_2313717A8);
    sub_23127D2D4(v10, v11, v12);
    swift_allocError();
    *v13 = 0;
    v13[1] = 0;
    swift_willThrow();
    return v5;
  }

  sub_2311D38A8(v14, v18);
  v6 = v19;
  v7 = v20;
  __swift_project_boxed_opaque_existential_1(v18, v19);
  result = (*(v7 + 16))(v6, v7);
  if (a3)
  {
LABEL_7:
    sub_231366C40();
    v5 = sub_231366C30();
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    return v5;
  }

  v9 = *&a2 * 1000.0;
  if (COERCE__INT64(fabs(*&a2 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v9 <= -1.0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v9 < 1.84467441e19)
  {
    v17 = MEMORY[0x277D84CC0];
    LODWORD(v16) = v9;
    sub_2312250F8(&v16, v14);
    swift_isUniquelyReferenced_nonNull_native();
    sub_231259D04();
    goto LABEL_7;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t CATDialogService.templateDialog(propertyProvider:dialogProperties:environment:viewContext:)()
{
  OUTLINED_FUNCTION_8();
  v1[55] = v2;
  v1[56] = v0;
  v1[53] = v3;
  v1[54] = v4;
  v1[52] = v5;
  v6 = sub_2313698C0();
  v1[57] = v6;
  OUTLINED_FUNCTION_0(v6);
  v1[58] = v7;
  v1[59] = OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_13();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_231278DF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_29_1();
  a23 = v25;
  a24 = v26;
  a22 = v24;
  v27 = *(v24 + 440);
  v28 = *(v24 + 432);
  v29 = *v27;
  *(v24 + 480) = *v27;
  sub_231367900();

  v30 = sub_2312D3418();
  v32 = sub_231278B50(v28, v30, v31 & 1);
  *(v24 + 488) = v32;
  v42 = v32;
  sub_2311CF388(*(v24 + 416), v24 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD439F8, &qword_23136EDE8);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD440E8, &qword_231371578);
  if (OUTLINED_FUNCTION_18_12(v43))
  {
    v45 = *(v24 + 448);
    sub_2311D38A8((v24 + 96), v24 + 16);
    *(v24 + 408) = v29;
    v46 = *(v24 + 40);
    v47 = *(v24 + 48);
    v48 = OUTLINED_FUNCTION_28();
    __swift_project_boxed_opaque_existential_1(v48, v49);
    *(v24 + 320) = v46;
    *(v24 + 328) = *(v47 + 8);
    __swift_allocate_boxed_opaque_existential_1((v24 + 296));
    OUTLINED_FUNCTION_26_0();
    (*(v50 + 16))();
    v51 = swift_task_alloc();
    *(v24 + 496) = v51;
    v51[2] = v24 + 16;
    v51[3] = v45;
    v51[4] = v42;

    swift_task_alloc();
    OUTLINED_FUNCTION_14_0();
    *(v24 + 504) = v52;
    *v52 = v53;
    v52[1] = sub_2312792D0;
LABEL_9:
    OUTLINED_FUNCTION_8_4();

    return sub_23127A110();
  }

  v54 = *(v24 + 416);
  *(v24 + 96) = 0u;
  *(v24 + 112) = 0u;
  *(v24 + 128) = 0;
  sub_2312777C0(v24 + 96, &qword_27DD440F0, &qword_231371580);
  sub_2311CF388(v54, v24 + 176);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD440F8, &qword_231371588);
  if (swift_dynamicCast())
  {
    sub_2311D38A8((v24 + 216), v24 + 136);
    *(v24 + 400) = v29;
    v55 = *(v24 + 160);
    v56 = *(v24 + 168);
    v57 = OUTLINED_FUNCTION_28();
    __swift_project_boxed_opaque_existential_1(v57, v58);
    *(v24 + 280) = v55;
    *(v24 + 288) = *(v56 + 8);
    __swift_allocate_boxed_opaque_existential_1((v24 + 256));
    OUTLINED_FUNCTION_26_0();
    (*(v59 + 16))();
    v60 = swift_task_alloc();
    *(v24 + 520) = v60;
    *(v60 + 16) = v24 + 136;

    swift_task_alloc();
    OUTLINED_FUNCTION_14_0();
    *(v24 + 528) = v61;
    *v61 = v62;
    v61[1] = sub_231279460;
    goto LABEL_9;
  }

  v64 = *(v24 + 416);
  *(v24 + 216) = 0u;
  *(v24 + 232) = 0u;
  *(v24 + 248) = 0;
  sub_2312777C0(v24 + 216, &qword_27DD44100, &qword_231371590);
  __swift_project_boxed_opaque_existential_1(v64, v64[3]);
  DynamicType = swift_getDynamicType();
  v65 = v64[4];
  sub_231369120();
  v66 = sub_2313698A0();
  v67 = sub_23136A3B0();
  v68 = os_log_type_enabled(v66, v67);
  v69 = *(v24 + 464);
  v70 = *(v24 + 472);
  v71 = *(v24 + 456);
  if (v68)
  {
    a10 = *(v24 + 456);
    v72 = OUTLINED_FUNCTION_60();
    v73 = OUTLINED_FUNCTION_29_0();
    a12 = v73;
    *v72 = 136315138;
    v74 = sub_23136AA70();
    a9 = v70;
    v76 = v65;
    v77 = sub_2311CFD58(v74, v75, &a12);

    *(v72 + 4) = v77;
    v65 = v76;
    _os_log_impl(&dword_2311CB000, v66, v67, "Unknown property provider type: '%s'", v72, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v73);
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_29();

    v78 = (*(v69 + 8))(a9, a10);
  }

  else
  {

    v78 = (*(v69 + 8))(v70, v71);
  }

  v81 = sub_23127D2D4(v78, v79, v80);
  OUTLINED_FUNCTION_42_3(&type metadata for CATErrors, v81);
  *v82 = DynamicType;
  v82[1] = v65;
  swift_willThrow();

  OUTLINED_FUNCTION_56_0();
  OUTLINED_FUNCTION_8_4();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, DynamicType, a12, a13, a14, a15, a16);
}

uint64_t sub_2312792D0()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v3 = v2;
  OUTLINED_FUNCTION_4();
  *v4 = v3;
  v3[42] = v1;
  v3[43] = v5;
  v3[44] = v6;
  v3[45] = v0;
  OUTLINED_FUNCTION_21_13();
  v7 = *v1;
  OUTLINED_FUNCTION_2();
  *v8 = v7;
  v3[64] = v0;

  if (!v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v3 + 37);
  }

  OUTLINED_FUNCTION_13();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2312793E4()
{
  OUTLINED_FUNCTION_8();
  v1 = *(v0 + 488);
  sub_2313678D0();
  sub_2313678E0();

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  v2 = OUTLINED_FUNCTION_0_22();

  return v3(v2);
}

uint64_t sub_231279460()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v3 = v2;
  OUTLINED_FUNCTION_4();
  *v4 = v3;
  v3[46] = v1;
  v3[47] = v5;
  v3[48] = v6;
  v3[49] = v0;
  OUTLINED_FUNCTION_21_13();
  v7 = *v1;
  OUTLINED_FUNCTION_2();
  *v8 = v7;
  v3[67] = v0;

  if (!v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v3 + 32);
  }

  OUTLINED_FUNCTION_13();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_231279574()
{
  OUTLINED_FUNCTION_8();
  v1 = *(v0 + 488);
  sub_2313678D0();
  sub_2313678E0();

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 136));

  v2 = OUTLINED_FUNCTION_0_22();

  return v3(v2);
}

uint64_t sub_2312795F0()
{
  OUTLINED_FUNCTION_8();

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 296));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  OUTLINED_FUNCTION_56_0();

  return v1();
}

uint64_t sub_23127966C()
{
  OUTLINED_FUNCTION_8();

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 256));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 136));

  OUTLINED_FUNCTION_56_0();

  return v1();
}

uint64_t sub_2312796E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[15] = a4;
  v5[16] = a5;
  v5[13] = a2;
  v5[14] = a3;
  v5[12] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44108, &unk_231373A40);
  v5[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23127978C, 0, 0);
}

uint64_t sub_23127978C()
{
  sub_2311CF388(*(v0 + 112), v0 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD440E8, &qword_231371578);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44110, &qword_231371760);
  v1 = swift_dynamicCast();
  v2 = *(v0 + 136);
  if (v1)
  {
    __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    sub_231368CB0();
    v3 = sub_231366690();
    __swift_storeEnumTagSinglePayload(v2, 0, 1, v3);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  }

  else
  {
    *(v0 + 48) = 0;
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    sub_2312777C0(v0 + 16, &qword_27DD44118, &qword_231371768);
    v4 = sub_231366690();
    __swift_storeEnumTagSinglePayload(v2, 1, 1, v4);
  }

  v5 = *(v0 + 104);
  OUTLINED_FUNCTION_56(*(v0 + 112), *(*(v0 + 112) + 24));
  v6 = sub_231367EE0();
  v8 = v7;
  *(v0 + 144) = v7;
  OUTLINED_FUNCTION_56(v5, v5[3]);
  v9 = sub_231367F00();
  *(v0 + 152) = v9;
  swift_task_alloc();
  OUTLINED_FUNCTION_14_0();
  *(v0 + 160) = v10;
  *v10 = v11;
  v10[1] = sub_231279970;
  v13 = *(v0 + 128);
  v12 = *(v0 + 136);
  v14 = *(v0 + 96);

  return sub_231279BA0(v14, v6, v8, v12, v9, v13);
}

uint64_t sub_231279970()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_12();
  v2 = *v1;
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  *(v4 + 168) = v0;

  OUTLINED_FUNCTION_13();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_231279AB0()
{
  OUTLINED_FUNCTION_8();
  sub_2312777C0(*(v0 + 136), &qword_27DD44108, &unk_231373A40);

  OUTLINED_FUNCTION_56_0();

  return v1();
}

uint64_t sub_231279B28()
{
  OUTLINED_FUNCTION_8();
  sub_2312777C0(*(v0 + 136), &qword_27DD44108, &unk_231373A40);

  OUTLINED_FUNCTION_56_0();

  return v1();
}

uint64_t sub_231279BA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  v7[9] = *v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44108, &unk_231373A40);
  v7[10] = swift_task_alloc();
  v8 = sub_231366690();
  v7[11] = v8;
  v7[12] = *(v8 - 8);
  v7[13] = swift_task_alloc();
  v7[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_231279CD8, 0, 0);
}

uint64_t sub_231279CD8()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  sub_2311EB398(*(v0 + 40), v1, &qword_27DD44108, &unk_231373A40);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 1, v2);
  v5 = *(v0 + 96);
  v4 = *(v0 + 104);
  v6 = *(v0 + 80);
  v7 = *(v0 + 88);
  if (EnumTagSinglePayload == 1)
  {
    (*(v5 + 16))(v4, *(v0 + 64) + OBJC_IVAR____TtC15SiriSuggestions16CATDialogService_templateDirectory, *(v0 + 88));
    if (__swift_getEnumTagSinglePayload(v6, 1, v7) != 1)
    {
      sub_2312777C0(*(v0 + 80), &qword_27DD44108, &unk_231373A40);
    }
  }

  else
  {
    (*(v5 + 32))(v4, *(v0 + 80), *(v0 + 88));
  }

  v8 = *(v0 + 104);
  v9 = *(v0 + 112);
  v10 = *(v0 + 88);
  v11 = *(v0 + 96);
  v12 = *(v0 + 64);
  v14 = *(v0 + 24);
  v13 = *(v0 + 32);
  v19 = *(v0 + 48);
  static CATDialogService.createPlatformSafePath(templatesUrl:)(v9);
  v15 = *(v11 + 8);
  *(v0 + 120) = v15;
  *(v0 + 128) = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v15(v8, v10);
  v16 = swift_task_alloc();
  *(v0 + 136) = v16;
  *(v16 + 16) = v12;
  *(v16 + 24) = v9;
  *(v16 + 32) = v14;
  *(v16 + 40) = v13;
  *(v16 + 48) = v19;
  v17 = swift_task_alloc();
  *(v0 + 144) = v17;
  sub_231366920();
  *v17 = v0;
  v17[1] = sub_231279EEC;
  OUTLINED_FUNCTION_13();

  return MEMORY[0x2822008A0]();
}

uint64_t sub_231279EEC()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v3 = v2;
  OUTLINED_FUNCTION_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2();
  *v6 = v5;
  *(v3 + 152) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_13();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_231279FEC()
{
  OUTLINED_FUNCTION_26();
  (*(v0 + 120))(*(v0 + 112), *(v0 + 88));

  OUTLINED_FUNCTION_56_0();

  return v1();
}

uint64_t sub_23127A074()
{
  v1 = *(v0 + 120);

  v2 = OUTLINED_FUNCTION_28();
  v1(v2);

  OUTLINED_FUNCTION_56_0();

  return v3();
}

uint64_t sub_23127A110()
{
  OUTLINED_FUNCTION_8();
  v1[41] = v2;
  v1[42] = v0;
  v1[39] = v3;
  v1[40] = v4;
  v1[37] = v5;
  v1[38] = v6;
  v1[35] = v7;
  v1[36] = v8;
  v1[43] = *v0;
  v9 = sub_2313698C0();
  v1[44] = v9;
  OUTLINED_FUNCTION_0(v9);
  v1[45] = v10;
  v1[46] = OUTLINED_FUNCTION_43();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44138, &qword_231371798);
  v1[47] = OUTLINED_FUNCTION_43();
  v11 = sub_231366920();
  v1[48] = v11;
  OUTLINED_FUNCTION_0(v11);
  v1[49] = v12;
  v1[50] = swift_task_alloc();
  v1[51] = swift_task_alloc();
  OUTLINED_FUNCTION_13();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_23127A27C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_29_1();
  v17 = *(v16 + 280);
  *(v16 + 416) = **(v16 + 304);
  v18 = sub_231367900();
  v20 = v19;
  *(v16 + 424) = v18;
  *(v16 + 432) = v19;
  OUTLINED_FUNCTION_56(v17, v17[3]);
  v21 = sub_231368010();
  v23 = v22;
  *(v16 + 440) = v21;
  *(v16 + 448) = v22;
  OUTLINED_FUNCTION_56(v17, v17[3]);
  v24 = sub_231368000();
  *(v16 + 488) = v24 & 1;
  OUTLINED_FUNCTION_65();
  *(v16 + 456) = sub_23127B998();
  *(v16 + 464) = v25;
  sub_2313678D0();
  sub_231210C60();

  v27 = *(v16 + 376);
  v26 = *(v16 + 384);
  if (*(v16 + 200))
  {
    v28 = swift_dynamicCast();
    __swift_storeEnumTagSinglePayload(v27, v28 ^ 1u, 1, v26);
    if (__swift_getEnumTagSinglePayload(v27, 1, v26) != 1)
    {
      v88 = v21;
      v89 = v23;
      v29 = *(v16 + 408);
      v31 = *(v16 + 384);
      v30 = *(v16 + 392);
      v32 = *(v16 + 376);

      (*(v30 + 32))(v29, v32, v31);
      sub_231369120();
      sub_231369EE0();
      v33 = sub_2313698A0();
      v34 = sub_23136A3A0();

      v35 = os_log_type_enabled(v33, v34);
      v37 = *(v16 + 360);
      v36 = *(v16 + 368);
      v38 = *(v16 + 352);
      if (v35)
      {
        a9 = *(v16 + 352);
        v39 = OUTLINED_FUNCTION_60();
        a12 = OUTLINED_FUNCTION_29_0();
        *v39 = 136315138;
        v40 = OUTLINED_FUNCTION_65();
        *(v39 + 4) = sub_2311CFD58(v40, v41, v42);
        _os_log_impl(&dword_2311CB000, v33, v34, "Found existing template for key %s in view context", v39, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(a12);
        OUTLINED_FUNCTION_29();
        OUTLINED_FUNCTION_29();

        (*(v37 + 8))(v36, a9);
      }

      else
      {

        (*(v37 + 8))(v36, v38);
      }

      sub_23127BAD4(*(v16 + 408), v18, v20, v88, v89, v24 & 1);
      (*(*(v16 + 392) + 8))(*(v16 + 408), *(v16 + 384));

      OUTLINED_FUNCTION_8_4();

      return v83(v80, v81, v82, v83, v84, v85, v86, v87, a9, v88, v89, a12, a13, a14, a15, a16);
    }
  }

  else
  {
    sub_2312777C0(v16 + 176, &qword_27DD443C0, &unk_23136E000);
    __swift_storeEnumTagSinglePayload(v27, 1, 1, v26);
  }

  v43 = *(v16 + 296);
  sub_2312777C0(*(v16 + 376), &qword_27DD44138, &qword_231371798);
  sub_2311CF388(v43, v16 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD42EF0, &unk_2313762A0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44140, &qword_2313717A0);
  if (OUTLINED_FUNCTION_18_12(v44))
  {
    v46 = *(v16 + 312);
    v45 = *(v16 + 320);
    v47 = *(v16 + 288);
    v48 = *(v16 + 296);
    sub_2311D38A8((v16 + 96), v16 + 16);
    OUTLINED_FUNCTION_56(v47, v47[3]);
    *(v16 + 272) = sub_231367F00();
    v49 = *(v16 + 40);
    v50 = *(v16 + 48);
    __swift_project_boxed_opaque_existential_1((v16 + 16), v49);
    v51 = (*(v50 + 16))(v49, v50);
    sub_23127B218(v51, v48, v16 + 272);

    v52 = sub_2313688B0();
    swift_allocObject();
    v53 = v46;
    OUTLINED_FUNCTION_28();
    v54 = sub_2313688A0();
    v55 = MEMORY[0x277D61040];
    *(v16 + 160) = v52;
    *(v16 + 168) = v55;
    *(v16 + 136) = v54;
    v90 = v45 + *v45;
    swift_task_alloc();
    OUTLINED_FUNCTION_14_0();
    *(v16 + 472) = v56;
    *v56 = v57;
    v56[1] = sub_23127A85C;
    OUTLINED_FUNCTION_8_4();

    return v60(v58, v59, v60, v61, v62, v63, v64, v65, a9, a10, v90, a12, a13, a14, a15, a16);
  }

  else
  {

    *(v16 + 128) = 0;
    *(v16 + 96) = 0u;
    *(v16 + 112) = 0u;
    v67 = sub_2312777C0(v16 + 96, &qword_27DD44148, &qword_2313717A8);
    v70 = sub_23127D2D4(v67, v68, v69);
    OUTLINED_FUNCTION_42_3(&type metadata for CATErrors, v70);
    *v71 = 0;
    v71[1] = 0;
    swift_willThrow();

    OUTLINED_FUNCTION_56_0();
    OUTLINED_FUNCTION_8_4();

    return v73(v72, v73, v74, v75, v76, v77, v78, v79, a9, a10, a11, a12, a13, a14, a15, a16);
  }
}

uint64_t sub_23127A85C()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_12();
  v3 = v2;
  OUTLINED_FUNCTION_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_2();
  *v6 = v5;
  *(v3 + 480) = v0;

  if (v0)
  {
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v3 + 136));
  }

  OUTLINED_FUNCTION_13();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_23127A984()
{
  v15 = *(v0 + 480);
  v14 = *(v0 + 488);
  v12 = *(v0 + 440);
  v13 = *(v0 + 448);
  v1 = *(v0 + 424);
  v11 = *(v0 + 432);
  v3 = *(v0 + 392);
  v2 = *(v0 + 400);
  v4 = *(v0 + 384);
  *(v0 + 232) = v4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 208));
  (*(v3 + 16))(boxed_opaque_existential_1, v2, v4);
  v6 = sub_2313678C0();
  sub_2312C5010();
  v6(v0 + 240, 0);
  sub_23127BAD4(v2, v1, v11, v12, v13, v14);
  (*(*(v0 + 392) + 8))(*(v0 + 400), *(v0 + 384));

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  if (v15)
  {

    OUTLINED_FUNCTION_56_0();

    return v7();
  }

  else
  {

    v9 = OUTLINED_FUNCTION_0_22();

    return v10(v9);
  }
}

uint64_t sub_23127AB6C()
{
  OUTLINED_FUNCTION_26();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 136));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  OUTLINED_FUNCTION_56_0();

  return v1();
}

uint64_t sub_23127ABFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[19] = a2;
  v3[20] = a3;
  v3[18] = a1;
  v4 = sub_2313698C0();
  v3[21] = v4;
  v3[22] = *(v4 - 8);
  v3[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44138, &qword_231371798);
  v3[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23127ACF8, 0, 0);
}

uint64_t sub_23127ACF8()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_56(*(v0 + 160), *(*(v0 + 160) + 24));
  v1 = sub_231368CF0();
  *(v0 + 200) = v2;
  v7 = (v1 + *v1);
  swift_task_alloc();
  OUTLINED_FUNCTION_14_0();
  *(v0 + 208) = v3;
  *v3 = v4;
  v3[1] = sub_23127AE0C;
  v5 = *(v0 + 152);

  return v7(v0 + 16, v5);
}

uint64_t sub_23127AE0C()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v2 = *v1;
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  *(v4 + 216) = v0;

  OUTLINED_FUNCTION_13();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_23127AF0C()
{
  v24 = v0;

  sub_2311D1D6C((v0 + 2), (v0 + 6));
  v1 = sub_231366920();
  v2 = swift_dynamicCast();
  v3 = v0[24];
  if (v2)
  {
    v4 = v0[18];
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
    __swift_storeEnumTagSinglePayload(v3, 0, 1, v1);
    OUTLINED_FUNCTION_26_0();
    (*(v5 + 32))(v4, v3, v1);

    OUTLINED_FUNCTION_56_0();
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v0[24], 1, 1, v1);
    sub_2312777C0(v3, &qword_27DD44138, &qword_231371798);
    sub_231369120();
    sub_2311D1D6C((v0 + 2), (v0 + 10));
    v7 = sub_2313698A0();
    v8 = sub_23136A3B0();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = OUTLINED_FUNCTION_60();
      v10 = OUTLINED_FUNCTION_29_0();
      v23 = v10;
      *v9 = 136315138;
      sub_2311D1D6C((v0 + 10), (v0 + 14));
      v11 = sub_23136A010();
      v13 = v12;
      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 10);
      v14 = sub_2311CFD58(v11, v13, &v23);

      *(v9 + 4) = v14;
      _os_log_impl(&dword_2311CB000, v7, v8, "received callback of a type not TemplatingResult: %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_29();
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 10);
    }

    v15 = OUTLINED_FUNCTION_28();
    v17 = v16(v15);
    v20 = sub_23127D2D4(v17, v18, v19);
    OUTLINED_FUNCTION_42_3(&type metadata for CATErrors, v20);
    *v21 = xmmword_231371520;
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

    OUTLINED_FUNCTION_56_0();
  }

  return v6();
}

uint64_t sub_23127B1AC()
{
  OUTLINED_FUNCTION_8();

  OUTLINED_FUNCTION_56_0();

  return v0();
}

uint64_t sub_23127B218(uint64_t a1, void *a2, uint64_t a3)
{
  v38 = a1;
  v39 = a3;
  v4 = sub_231367650();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2[4];
  v44 = a2[3];
  v9 = __swift_project_boxed_opaque_existential_1(a2, v44);
  v42 = v8;
  v43 = v9;
  v10 = sub_231368370();
  v11 = v5 + 104;
  v12 = *(v5 + 104);
  v12(v7, *MEMORY[0x277D609B0], v4);
  v41 = v12;
  v53[2] = v7;
  v37 = sub_231217FB8(sub_23127D848, v53, v10);

  v40 = *(v5 + 8);
  v45 = v5 + 8;
  v40(v7, v4);
  v13 = sub_231368370();
  v12(v7, *MEMORY[0x277D609C0], v4);
  v52[2] = v7;
  v36 = sub_231217FB8(sub_23127D868, v52, v13);

  v14 = v40;
  v40(v7, v4);
  v15 = sub_231368370();
  v16 = v41;
  v41(v7, *MEMORY[0x277D609A0], v4);
  v51[2] = v7;
  v35 = sub_231217FB8(sub_23127D868, v51, v15);

  v14(v7, v4);
  v17 = sub_231368370();
  v16(v7, *MEMORY[0x277D60988], v4);
  v30[1] = v11;
  v50[2] = v7;
  v34 = sub_231217FB8(sub_23127D868, v50, v17);

  v18 = v40;
  v40(v7, v4);
  v19 = sub_231368370();
  v41(v7, *MEMORY[0x277D609A8], v4);
  v49[2] = v7;
  v33 = sub_231217FB8(sub_23127D868, v49, v19);

  v18(v7, v4);
  v20 = sub_231368370();
  v21 = v41;
  v41(v7, *MEMORY[0x277D60998], v4);
  v31 = v30;
  v48[2] = v7;
  v32 = sub_231217FB8(sub_23127D868, v48, v20);

  v22 = v40;
  v40(v7, v4);
  v23 = sub_231368370();
  v21(v7, *MEMORY[0x277D609B8], v4);
  v47[2] = v7;
  LODWORD(v31) = sub_231217FB8(sub_23127D868, v47, v23);

  v22(v7, v4);
  v24 = sub_231368370();
  v21(v7, *MEMORY[0x277D609C8], v4);
  v46[2] = v7;
  LOBYTE(a2) = sub_231217FB8(sub_23127D868, v46, v24);

  v22(v7, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43FF0, &unk_231370EA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_231371530;
  *(inited + 32) = 0x54656C7070417369;
  *(inited + 40) = 0xE900000000000056;
  v26 = MEMORY[0x277D839B0];
  *(inited + 48) = v37;
  *(inited + 72) = v26;
  *(inited + 80) = 0x6F50656D6F487369;
  *(inited + 88) = 0xE900000000000064;
  v27 = v35;
  *(inited + 96) = v36;
  *(inited + 120) = v26;
  *(inited + 128) = 0x68637461577369;
  *(inited + 136) = 0xE700000000000000;
  *(inited + 144) = v27;
  *(inited + 168) = v26;
  *(inited + 176) = 0x63614D7369;
  *(inited + 184) = 0xE500000000000000;
  *(inited + 192) = v34;
  *(inited + 216) = v26;
  *(inited + 224) = 0x656E6F68507369;
  *(inited + 232) = 0xE700000000000000;
  *(inited + 240) = v33;
  *(inited + 264) = v26;
  *(inited + 272) = 0x6461507369;
  *(inited + 280) = 0xE500000000000000;
  *(inited + 288) = v32;
  *(inited + 312) = v26;
  *(inited + 320) = 0x616C507261437369;
  *(inited + 328) = 0xE900000000000079;
  *(inited + 336) = v31 & 1;
  *(inited + 360) = v26;
  *(inited + 368) = 0x6976654452587369;
  *(inited + 376) = 0xEA00000000006563;
  *(inited + 408) = v26;
  *(inited + 384) = a2 & 1;
  v28 = sub_231369EC0();
  sub_231210C60();
  if (v56)
  {
    sub_2312250F8(&v55, &v57);
    sub_2311D1D6C(&v57, &v55);
    swift_isUniquelyReferenced_nonNull_native();
    v54 = v28;
    sub_231259D04();
    v28 = v54;
    __swift_destroy_boxed_opaque_existential_1Tm(&v57);
  }

  else
  {
    sub_2312777C0(&v55, &qword_27DD443C0, &unk_23136E000);
  }

  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43580, &qword_23136CAC0);
  *&v57 = v28;
  return sub_2312C5010();
}

uint64_t sub_23127B998()
{
  OUTLINED_FUNCTION_38_1();
  sub_2311CF388(v0, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43A00, &unk_23136EDF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD440E8, &qword_231371578);
  if (swift_dynamicCast())
  {
    OUTLINED_FUNCTION_56(&v7, *(&v8 + 1));
    v1 = sub_231367EE0();
    v3 = v2;
    __swift_destroy_boxed_opaque_existential_1Tm(&v7);
  }

  else
  {
    v9 = 0;
    v7 = 0u;
    v8 = 0u;
    sub_2312777C0(&v7, &qword_27DD440F0, &qword_231371580);
    v1 = 0;
    v3 = 0xE000000000000000;
  }

  *&v7 = 0xD000000000000014;
  *(&v7 + 1) = 0x800000023137E770;
  MEMORY[0x23192A730](v1, v3);

  MEMORY[0x23192A730](95, 0xE100000000000000);
  v4 = OUTLINED_FUNCTION_65();
  MEMORY[0x23192A730](v4);
  return v7;
}

uint64_t sub_23127BAD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, int a6)
{
  v38 = a6;
  v36 = a2;
  v37 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44150, &qword_2313717B0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v35 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44158, &qword_2313717B8);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v35 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v35 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v35 - v21;
  if (a5)
  {
    v39 = a4;
    v40 = a5;
    sub_23127BFB0(&v39, &v41);
    v23 = v41;
  }

  else
  {
    v23 = sub_231366910();
  }

  sub_231217DC4(v23, v10);

  v24 = sub_231366950();
  if (__swift_getEnumTagSinglePayload(v10, 1, v24) == 1)
  {
    sub_2312777C0(v10, &qword_27DD44150, &qword_2313717B0);
    v25 = 1;
  }

  else
  {
    sub_231366940();
    (*(*(v24 - 8) + 8))(v10, v24);
    v25 = 0;
  }

  v26 = sub_2313668F0();
  __swift_storeEnumTagSinglePayload(v22, v25, 1, v26);
  if (v38)
  {
    sub_2311EB398(v22, v19, &qword_27DD44158, &qword_2313717B8);
    if (__swift_getEnumTagSinglePayload(v19, 1, v26) == 1)
    {
      sub_2312777C0(v19, &qword_27DD44158, &qword_2313717B8);
    }

    else
    {
      v27 = sub_2313668D0();
      v29 = v28;
      (*(*(v26 - 8) + 8))(v19, v26);
      if (v29)
      {
        goto LABEL_18;
      }
    }

    sub_2311EB398(v22, v16, &qword_27DD44158, &qword_2313717B8);
    if (__swift_getEnumTagSinglePayload(v16, 1, v26) == 1)
    {
      sub_2312777C0(v16, &qword_27DD44158, &qword_2313717B8);

      goto LABEL_15;
    }

    v27 = sub_2313668E0();
    (*(*(v26 - 8) + 8))(v16, v26);

LABEL_18:
    sub_2312777C0(v22, &qword_27DD44158, &qword_2313717B8);
    return v27;
  }

  sub_2311EB398(v22, v13, &qword_27DD44158, &qword_2313717B8);
  if (__swift_getEnumTagSinglePayload(v13, 1, v26) != 1)
  {
    v27 = sub_2313668E0();
    sub_2312777C0(v22, &qword_27DD44158, &qword_2313717B8);
    (*(*(v26 - 8) + 8))(v13, v26);
    return v27;
  }

  sub_2312777C0(v13, &qword_27DD44158, &qword_2313717B8);
LABEL_15:
  v39 = 0;
  v40 = 0xE000000000000000;
  sub_23136A650();
  MEMORY[0x23192A730](0xD000000000000032, 0x800000023137E730);
  MEMORY[0x23192A730](v36, v37);
  v30 = v39;
  v31 = v40;
  v32 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  v33 = v31;
  v27 = v32;
  sub_23128E3CC(v30, v33, 0, 0);
  swift_willThrow();
  sub_2312777C0(v22, &qword_27DD44158, &qword_2313717B8);
  return v27;
}

uint64_t sub_23127BFB0@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v25 = a2;
  v3 = sub_231366950();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v27 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v23 - v7;
  v9 = *a1;
  v31 = a1[1];
  v32 = v9;
  result = sub_231366910();
  v11 = result;
  v12 = 0;
  v33 = *(result + 16);
  v29 = (v4 + 8);
  v30 = v4 + 16;
  v26 = (v4 + 32);
  v28 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v33 == v12)
    {

      *v25 = v28;
      return result;
    }

    if (v12 >= *(v11 + 16))
    {
      break;
    }

    v13 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v14 = *(v4 + 72);
    (*(v4 + 16))(v8, v11 + v13 + v14 * v12, v3);
    sub_231366930();
    v15 = sub_23136A0B0();

    if (v15)
    {
      v24 = *v26;
      v24(v27, v8, v3);
      v16 = v28;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v34 = v16;
      v18 = v3;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2311F5E70(0, *(v16 + 16) + 1, 1);
        v16 = v34;
      }

      v20 = *(v16 + 16);
      v19 = *(v16 + 24);
      v21 = v20 + 1;
      if (v20 >= v19 >> 1)
      {
        v28 = v20 + 1;
        sub_2311F5E70(v19 > 1, v20 + 1, 1);
        v21 = v28;
        v16 = v34;
      }

      ++v12;
      *(v16 + 16) = v21;
      v28 = v16;
      v22 = v16 + v13 + v20 * v14;
      v3 = v18;
      result = (v24)(v22, v27, v18);
    }

    else
    {
      result = (*v29)(v8, v3);
      ++v12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23127C24C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v21 = a6;
  v22 = a7;
  v20 = a3;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44120, &qword_231371778);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v19 - v13;
  __swift_project_boxed_opaque_existential_1((a2 + OBJC_IVAR____TtC15SiriSuggestions16CATDialogService_execution), *(a2 + OBJC_IVAR____TtC15SiriSuggestions16CATDialogService_execution + 24));
  v15 = OBJC_IVAR____TtC15SiriSuggestions16CATDialogService_catOption;
  (*(v12 + 16))(v14, a1, v11);
  v16 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = a4;
  *(v17 + 24) = a5;
  (*(v12 + 32))(v17 + v16, v14, v11);
  sub_231369EE0();
  sub_23127CC3C(v20, a4, a5, v21, v22, a2 + v15, sub_23127D7A0, v17);
}

uint64_t sub_23127C3EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v31 = a2;
  v32 = a3;
  v5 = sub_231366920();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2313698C0();
  v33 = *(v9 - 8);
  v34 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44130, &unk_231371788);
  MEMORY[0x28223BE20](v12);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = (&v30 - v16);
  sub_2311EB398(a1, &v30 - v16, &qword_27DD44130, &unk_231371788);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = *v17;
    sub_231369120();
    v19 = v32;
    sub_231369EE0();
    v20 = v18;
    v21 = sub_2313698A0();
    v22 = sub_23136A3B0();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v37 = v24;
      *v23 = 136315394;
      *(v23 + 4) = sub_2311CFD58(v31, v19, &v37);
      *(v23 + 12) = 2080;
      v36 = v18;
      v25 = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD436A0, &qword_23136CC90);
      v26 = sub_23136A010();
      v28 = sub_2311CFD58(v26, v27, &v37);

      *(v23 + 14) = v28;
      _os_log_impl(&dword_2311CB000, v21, v22, "failed to execute cat for suggestion: %s, error: %s", v23, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23192B930](v24, -1, -1);
      MEMORY[0x23192B930](v23, -1, -1);
    }

    (*(v33 + 8))(v11, v34);
    v37 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD44120, &qword_231371778);
    return sub_23136A270();
  }

  else
  {
    (*(v6 + 32))(v8, v17, v5);
    (*(v6 + 16))(v14, v8, v5);
    swift_storeEnumTagMultiPayload();
    sub_23127C7E8(v14);
    sub_2312777C0(v14, &qword_27DD44130, &unk_231371788);
    return (*(v6 + 8))(v8, v5);
  }
}