void sub_21C576678(unint64_t *a1)
{
  v2 = *a1;
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v2 & 0x8000000000000000) != 0 || (v2 & 0x4000000000000000) != 0)
  {
    v2 = sub_21C57CA6C(v2);
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v4[0] = (v2 & 0xFFFFFFFFFFFFFF8) + 32;
  v4[1] = v3;
  sub_21C57AB00(v4);
  *a1 = v2;
}

void sub_21C5766F0(uint64_t a1, uint64_t a2)
{
  v153[3] = *MEMORY[0x277D85DE8];
  v142 = type metadata accessor for SettingsApplicationRecord(0);
  v4 = MEMORY[0x28223BE20](v142);
  v146 = &v130 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v130 - v6;
  v151 = type metadata accessor for DriverKitDriverApp(0);
  v8 = *(v151 - 8);
  v9 = MEMORY[0x28223BE20](v151);
  v144 = &v130 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v143 = (&v130 - v12);
  v13 = MEMORY[0x28223BE20](v11);
  v147 = (&v130 - v14);
  MEMORY[0x28223BE20](v13);
  v148 = &v130 - v15;
  v16 = type metadata accessor for DriverKitDriverSource(0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v130 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDE840, &unk_21C582F70);
  MEMORY[0x28223BE20](v150);
  v20 = &v130 - v19;
  v21 = type metadata accessor for DriverKitDriver(0);
  v22 = MEMORY[0x28223BE20](v21);
  v24 = (&v130 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v22);
  v27 = (&v130 - v26);
  v28 = *(a1 + 16);
  if (v28 == *(a2 + 16) && v28 && a1 != a2)
  {
    v141 = v18;
    v136 = v7;
    v135 = 0;
    v29 = (*(v25 + 80) + 32) & ~*(v25 + 80);
    v30 = a1 + v29;
    v31 = a2 + v29;
    v32 = *(v25 + 72);
    v138 = &v130 - v26;
    v139 = v32;
    v145 = (v8 + 48);
    v137 = v20;
    v140 = v21;
    while (1)
    {
      v149 = v30;
      sub_21C57D47C(v30, v27, type metadata accessor for DriverKitDriver);
      sub_21C57D47C(v31, v24, type metadata accessor for DriverKitDriver);
      v33 = *v27 == *v24 && v27[1] == v24[1];
      if (!v33 && (sub_21C5824AC() & 1) == 0)
      {
        goto LABEL_155;
      }

      v34 = v21[5];
      v35 = *(v150 + 48);
      sub_21C57D47C(v27 + v34, v20, type metadata accessor for DriverKitDriverSource);
      v36 = v24 + v34;
      v37 = v145;
      sub_21C57D47C(v36, &v20[v35], type metadata accessor for DriverKitDriverSource);
      v38 = *v37;
      v39 = v151;
      if ((*v37)(v20, 1, v151) == 1)
      {
        v40 = v38(&v20[v35], 1, v39);
        v21 = v140;
        if (v40 != 1)
        {
          goto LABEL_146;
        }

        goto LABEL_131;
      }

      v41 = v141;
      sub_21C57D47C(v20, v141, type metadata accessor for DriverKitDriverSource);
      if (v38(&v20[v35], 1, v39) == 1)
      {
        sub_21C57D4E4(v41, type metadata accessor for DriverKitDriverApp);
        v27 = v138;
LABEL_146:
        sub_21C57D5B4(v20, &qword_27CDDE840, &unk_21C582F70);
        goto LABEL_155;
      }

      v42 = &v20[v35];
      v43 = v148;
      sub_21C57D544(v42, v148, type metadata accessor for DriverKitDriverApp);
      v44 = v147;
      sub_21C57D47C(v41, v147, type metadata accessor for DriverKitDriverApp);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v45 = *v44;
        v46 = v44[1];
        v47 = v143;
        sub_21C57D47C(v43, v143, type metadata accessor for DriverKitDriverApp);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          sub_21C57D4E4(v43, type metadata accessor for DriverKitDriverApp);
          sub_21C567950(v45, v46);
          v127 = v47;
          v126 = type metadata accessor for DriverKitDriverApp;
          goto LABEL_149;
        }

        v48 = *v47;
        v49 = v47[1];
        v50 = v46 >> 62;
        v51 = v49 >> 62;
        v20 = v137;
        if (v46 >> 62 == 3)
        {
          v52 = 0;
          v21 = v140;
          v27 = v138;
          if (!v45 && v46 == 0xC000000000000000 && v49 >> 62 == 3)
          {
            v52 = 0;
            if (!v48 && v49 == 0xC000000000000000)
            {
              sub_21C567950(0, 0xC000000000000000);
              v53 = 0;
              v54 = 0xC000000000000000;
              goto LABEL_73;
            }
          }

LABEL_62:
          if (v51 <= 1)
          {
            goto LABEL_63;
          }

LABEL_37:
          if (v51 != 2)
          {
            if (v52)
            {
              goto LABEL_150;
            }

LABEL_72:
            sub_21C567950(v48, v49);
            v53 = v45;
            v54 = v46;
LABEL_73:
            sub_21C567950(v53, v54);
            v82 = type metadata accessor for DriverKitDriverApp;
            v83 = v43;
LABEL_91:
            sub_21C57D4E4(v83, v82);
            sub_21C57D4E4(v141, type metadata accessor for DriverKitDriverApp);
            goto LABEL_131;
          }

          v72 = *(v48 + 16);
          v71 = *(v48 + 24);
          v73 = __OFSUB__(v71, v72);
          v74 = v71 - v72;
          if (v73)
          {
            goto LABEL_157;
          }
        }

        else
        {
          v21 = v140;
          v27 = v138;
          if (v50 > 1)
          {
            if (v50 == 2)
            {
              v79 = *(v45 + 16);
              v78 = *(v45 + 24);
              v73 = __OFSUB__(v78, v79);
              v52 = v78 - v79;
              if (v73)
              {
                goto LABEL_162;
              }

              goto LABEL_62;
            }

            v52 = 0;
            if (v51 <= 1)
            {
              goto LABEL_63;
            }

            goto LABEL_37;
          }

          if (v50)
          {
            LODWORD(v52) = HIDWORD(v45) - v45;
            if (__OFSUB__(HIDWORD(v45), v45))
            {
              goto LABEL_161;
            }

            v52 = v52;
            goto LABEL_62;
          }

          v52 = BYTE6(v46);
          if (v51 > 1)
          {
            goto LABEL_37;
          }

LABEL_63:
          if (v51)
          {
            LODWORD(v74) = HIDWORD(v48) - v48;
            if (__OFSUB__(HIDWORD(v48), v48))
            {
              goto LABEL_159;
            }

            v74 = v74;
          }

          else
          {
            v74 = BYTE6(v49);
          }
        }

        if (v52 != v74)
        {
LABEL_150:
          sub_21C567950(v48, v49);
          sub_21C567950(v45, v46);
          v128 = type metadata accessor for DriverKitDriverApp;
          v129 = v43;
          goto LABEL_152;
        }

        if (v52 < 1)
        {
          goto LABEL_72;
        }

        v134 = v45;
        if (v50 > 1)
        {
          if (v50 == 2)
          {
            v132 = v48;
            v133 = v49;
            v84 = *(v134 + 16);
            v131 = *(v134 + 24);
            v85 = sub_21C581DDC();
            if (v85)
            {
              v86 = v85;
              v87 = sub_21C581DFC();
              if (__OFSUB__(v84, v87))
              {
                goto LABEL_168;
              }

              v130 = v84 - v87 + v86;
            }

            else
            {
              v130 = 0;
            }

            if (__OFSUB__(v131, v84))
            {
              goto LABEL_166;
            }

            sub_21C581DEC();
            v108 = v130;
            goto LABEL_122;
          }

          memset(v153, 0, 14);
LABEL_105:
          v99 = v48;
          v100 = v135;
          sub_21C56D278(v153, v48, v49, &v152);
          v135 = v100;
          if (v100)
          {
            goto LABEL_172;
          }

          sub_21C567950(v99, v49);
          sub_21C567950(v134, v46);
          v101 = v152;
          sub_21C57D4E4(v148, type metadata accessor for DriverKitDriverApp);
        }

        else
        {
          if (!v50)
          {
            v153[0] = v45;
            LOWORD(v153[1]) = v46;
            BYTE2(v153[1]) = BYTE2(v46);
            BYTE3(v153[1]) = BYTE3(v46);
            BYTE4(v153[1]) = BYTE4(v46);
            BYTE5(v153[1]) = BYTE5(v46);
            goto LABEL_105;
          }

          v132 = v48;
          v133 = v49;
          v94 = v45;
          v131 = (v45 >> 32) - v45;
          if (v45 >> 32 < v45)
          {
            goto LABEL_165;
          }

          v95 = sub_21C581DDC();
          if (v95)
          {
            v96 = v95;
            v97 = sub_21C581DFC();
            if (__OFSUB__(v94, v97))
            {
              goto LABEL_171;
            }

            v98 = v94 - v97 + v96;
          }

          else
          {
            v98 = 0;
          }

          sub_21C581DEC();
          v108 = v98;
LABEL_122:
          v110 = v132;
          v111 = v133;
          v112 = v135;
          sub_21C56D278(v108, v132, v133, v153);
          v135 = v112;
          if (v112)
          {
            goto LABEL_172;
          }

          sub_21C567950(v134, v46);
          sub_21C567950(v110, v111);
          sub_21C57D4E4(v148, type metadata accessor for DriverKitDriverApp);
          v101 = v153[0];
        }

        v113 = v141;
        goto LABEL_130;
      }

      v55 = v44;
      v56 = v136;
      sub_21C57D544(v55, v136, type metadata accessor for SettingsApplicationRecord);
      v57 = v43;
      v58 = v144;
      sub_21C57D47C(v57, v144, type metadata accessor for DriverKitDriverApp);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_21C57D4E4(v148, type metadata accessor for DriverKitDriverApp);
        sub_21C57D4E4(v58, type metadata accessor for DriverKitDriverApp);
        v126 = type metadata accessor for SettingsApplicationRecord;
        v127 = v56;
LABEL_149:
        sub_21C57D4E4(v127, v126);
        v20 = v137;
        v27 = v138;
        goto LABEL_153;
      }

      v59 = v58;
      v60 = v146;
      sub_21C57D544(v59, v146, type metadata accessor for SettingsApplicationRecord);
      v61 = *(v142 + 32);
      v62 = *(v56 + v61);
      v63 = *(v56 + v61 + 8);
      v64 = (v60 + v61);
      v65 = *v64;
      v66 = v64[1];
      v67 = v63 >> 62;
      v68 = v66 >> 62;
      v20 = v137;
      if (v63 >> 62 == 3)
      {
        break;
      }

      v70 = v148;
      v21 = v140;
      v27 = v138;
      if (v67 <= 1)
      {
        if (!v67)
        {
          v69 = BYTE6(v63);
          if (v68 <= 1)
          {
            goto LABEL_81;
          }

          goto LABEL_44;
        }

        LODWORD(v69) = HIDWORD(v62) - v62;
        if (__OFSUB__(HIDWORD(v62), v62))
        {
          goto LABEL_163;
        }

        v69 = v69;
        goto LABEL_80;
      }

      if (v67 == 2)
      {
        v81 = *(v62 + 16);
        v80 = *(v62 + 24);
        v73 = __OFSUB__(v80, v81);
        v69 = v80 - v81;
        if (v73)
        {
          goto LABEL_160;
        }

        goto LABEL_80;
      }

      v69 = 0;
      if (v68 <= 1)
      {
LABEL_81:
        if (v68)
        {
          LODWORD(v77) = HIDWORD(v65) - v65;
          if (__OFSUB__(HIDWORD(v65), v65))
          {
            goto LABEL_158;
          }

          v77 = v77;
        }

        else
        {
          v77 = BYTE6(v66);
        }

        goto LABEL_85;
      }

LABEL_44:
      if (v68 != 2)
      {
        if (v69)
        {
          goto LABEL_151;
        }

LABEL_90:
        sub_21C57D4E4(v70, type metadata accessor for DriverKitDriverApp);
        sub_21C57D4E4(v146, type metadata accessor for SettingsApplicationRecord);
        v83 = v136;
        v82 = type metadata accessor for SettingsApplicationRecord;
        goto LABEL_91;
      }

      v76 = *(v65 + 16);
      v75 = *(v65 + 24);
      v73 = __OFSUB__(v75, v76);
      v77 = v75 - v76;
      if (v73)
      {
        __break(1u);
LABEL_157:
        __break(1u);
LABEL_158:
        __break(1u);
LABEL_159:
        __break(1u);
LABEL_160:
        __break(1u);
LABEL_161:
        __break(1u);
LABEL_162:
        __break(1u);
LABEL_163:
        __break(1u);
LABEL_164:
        __break(1u);
LABEL_165:
        __break(1u);
LABEL_166:
        __break(1u);
LABEL_167:
        __break(1u);
LABEL_168:
        __break(1u);
LABEL_169:
        __break(1u);
LABEL_170:
        __break(1u);
LABEL_171:
        __break(1u);
      }

LABEL_85:
      if (v69 != v77)
      {
LABEL_151:
        sub_21C57D4E4(v70, type metadata accessor for DriverKitDriverApp);
        sub_21C57D4E4(v146, type metadata accessor for SettingsApplicationRecord);
        v129 = v136;
        v128 = type metadata accessor for SettingsApplicationRecord;
LABEL_152:
        sub_21C57D4E4(v129, v128);
LABEL_153:
        sub_21C57D4E4(v141, type metadata accessor for DriverKitDriverApp);
LABEL_154:
        sub_21C57D4E4(v20, type metadata accessor for DriverKitDriverSource);
LABEL_155:
        sub_21C57D4E4(v24, type metadata accessor for DriverKitDriver);
        sub_21C57D4E4(v27, type metadata accessor for DriverKitDriver);
        return;
      }

      if (v69 < 1)
      {
        goto LABEL_90;
      }

      if (v67 > 1)
      {
        if (v67 == 2)
        {
          v134 = v65;
          v89 = *(v62 + 16);
          v88 = *(v62 + 24);
          v133 = v89;
          v132 = v88;
          v90 = sub_21C581DDC();
          if (v90)
          {
            v91 = v90;
            v92 = sub_21C581DFC();
            v93 = v133;
            if (__OFSUB__(v133, v92))
            {
              goto LABEL_169;
            }

            v131 = v133 - v92 + v91;
          }

          else
          {
            v131 = 0;
            v93 = v133;
          }

          if (__OFSUB__(v132, v93))
          {
            goto LABEL_167;
          }

          sub_21C581DEC();
          v109 = v131;
          goto LABEL_127;
        }

        memset(v153, 0, 14);
      }

      else
      {
        if (v67)
        {
          v134 = v65;
          v102 = v62;
          v103 = v62 >> 32;
          v133 = v103 - v102;
          if (v103 < v102)
          {
            goto LABEL_164;
          }

          v104 = sub_21C581DDC();
          if (v104)
          {
            v132 = v104;
            v105 = sub_21C581DFC();
            if (__OFSUB__(v102, v105))
            {
              goto LABEL_170;
            }

            v106 = v102 - v105 + v132;
          }

          else
          {
            v106 = 0;
          }

          sub_21C581DEC();
          v109 = v106;
LABEL_127:
          v114 = v135;
          sub_21C56D278(v109, v134, v66, v153);
          v135 = v114;
          if (v114)
          {
LABEL_172:

            __break(1u);
            return;
          }

          sub_21C57D4E4(v148, type metadata accessor for DriverKitDriverApp);
          v101 = v153[0];
          goto LABEL_129;
        }

        v153[0] = v62;
        LOWORD(v153[1]) = v63;
        BYTE2(v153[1]) = BYTE2(v63);
        BYTE3(v153[1]) = BYTE3(v63);
        BYTE4(v153[1]) = BYTE4(v63);
        BYTE5(v153[1]) = BYTE5(v63);
      }

      v107 = v135;
      sub_21C56D278(v153, v65, v66, &v152);
      v135 = v107;
      if (v107)
      {
        goto LABEL_172;
      }

      v101 = v152;
      sub_21C57D4E4(v148, type metadata accessor for DriverKitDriverApp);
LABEL_129:
      sub_21C57D4E4(v146, type metadata accessor for SettingsApplicationRecord);
      sub_21C57D4E4(v136, type metadata accessor for SettingsApplicationRecord);
      v113 = v141;
LABEL_130:
      sub_21C57D4E4(v113, type metadata accessor for DriverKitDriverApp);
      if ((v101 & 1) == 0)
      {
        goto LABEL_154;
      }

LABEL_131:
      sub_21C57D4E4(v20, type metadata accessor for DriverKitDriverSource);
      v115 = v21[6];
      v116 = (v27 + v115);
      v117 = *(v27 + v115 + 8);
      v118 = (v24 + v115);
      v119 = v118[1];
      if (v117)
      {
        if (!v119 || (*v116 != *v118 || v117 != v119) && (sub_21C5824AC() & 1) == 0)
        {
          goto LABEL_155;
        }
      }

      else if (v119)
      {
        goto LABEL_155;
      }

      v120 = v21[7];
      v121 = (v27 + v120);
      v122 = *(v27 + v120 + 8);
      v123 = (v24 + v120);
      v124 = v123[1];
      if (!v122)
      {
        if (v124)
        {
          goto LABEL_155;
        }

LABEL_6:
        sub_21C57D4E4(v24, type metadata accessor for DriverKitDriver);
        sub_21C57D4E4(v27, type metadata accessor for DriverKitDriver);
        goto LABEL_7;
      }

      if (!v124)
      {
        goto LABEL_155;
      }

      if (*v121 == *v123 && v122 == v124)
      {
        goto LABEL_6;
      }

      v125 = sub_21C5824AC();
      sub_21C57D4E4(v24, type metadata accessor for DriverKitDriver);
      sub_21C57D4E4(v27, type metadata accessor for DriverKitDriver);
      if ((v125 & 1) == 0)
      {
        return;
      }

LABEL_7:
      v31 += v139;
      v30 = v149 + v139;
      if (!--v28)
      {
        return;
      }
    }

    v69 = 0;
    v70 = v148;
    v21 = v140;
    v27 = v138;
    if (!v62 && v63 == 0xC000000000000000 && v66 >> 62 == 3)
    {
      v69 = 0;
      if (!v65 && v66 == 0xC000000000000000)
      {
        goto LABEL_90;
      }
    }

LABEL_80:
    if (v68 <= 1)
    {
      goto LABEL_81;
    }

    goto LABEL_44;
  }
}

void sub_21C5777E8(void *a1, char a2, void *a3)
{
  v6 = sub_21C581FEC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v41[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_21C58200C();
  v11 = MEMORY[0x28223BE20](v10);
  v14 = &v41[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a2)
  {
    v15 = sub_21C5821CC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDE850, &unk_21C584490);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_21C582F80;
    aBlock[0] = a1;
    v17 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDEA70, &qword_21C584770);
    v18 = sub_21C58208C();
    v20 = v19;
    *(v16 + 56) = MEMORY[0x277D837D0];
    *(v16 + 64) = sub_21C57D07C();
    *(v16 + 32) = v18;
    *(v16 + 40) = v20;
    sub_21C57CFE4(0, &qword_28120D1E0, 0x277D86200);
    v21 = sub_21C58224C();
    sub_21C581F2C(v15, &dword_21C564000, v21, "Failed to get approval state: %{public}s", 40, 2, v16);
  }

  else
  {
    v43 = v12;
    v44 = v11;
    v45 = v7;

    v22 = sub_21C5821BC();
    sub_21C57CFE4(0, &qword_28120D1E0, 0x277D86200);
    v23 = sub_21C58224C();
    v24 = MEMORY[0x277D84F90];
    sub_21C581F2C(v22, &dword_21C564000, v23, "Successfully refreshed approval state", 37, 2, MEMORY[0x277D84F90]);

    v25 = sub_21C5821BC();
    v26 = sub_21C58224C();
    if (os_log_type_enabled(v26, v25))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v42 = v25;
      v29 = v28;
      aBlock[0] = v28;
      *v27 = 136315138;
      v30 = ApprovalSettingsState.debugDescription.getter(a1);
      v32 = a1;
      v33 = v14;
      v34 = v9;
      v35 = v6;
      v36 = a3;
      v37 = sub_21C57A18C(v30, v31, aBlock);
      v24 = MEMORY[0x277D84F90];

      *(v27 + 4) = v37;
      a3 = v36;
      v6 = v35;
      v9 = v34;
      v14 = v33;
      a1 = v32;
      _os_log_impl(&dword_21C564000, v26, v42, "%s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v29);
      MEMORY[0x21CF0CA30](v29, -1, -1);
      MEMORY[0x21CF0CA30](v27, -1, -1);
    }

    v38 = swift_allocObject();
    *(v38 + 16) = a3;
    *(v38 + 24) = a1;
    aBlock[4] = sub_21C57D3A8;
    aBlock[5] = v38;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21C57D650;
    aBlock[3] = &block_descriptor_31;
    v39 = _Block_copy(aBlock);
    v40 = a3;
    sub_21C581FFC();
    v46 = v24;
    sub_21C57D34C(&qword_28120D238, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDEA60, &qword_21C584440);
    sub_21C5709BC(&qword_28120D218, &qword_27CDDEA60, &qword_21C584440, MEMORY[0x277D83970]);
    sub_21C58228C();
    MEMORY[0x21CF0C180](0, v14, v9, v39);
    _Block_release(v39);
    (*(v45 + 8))(v9, v6);
    (*(v43 + 8))(v14, v44);
  }
}

uint64_t sub_21C577D04(void *a1, uint64_t a2)
{
  v113 = a2;
  v112 = a1;
  v151 = *MEMORY[0x277D85DE8];
  v119 = sub_21C581FEC();
  v118 = *(v119 - 8);
  MEMORY[0x28223BE20](v119);
  v116 = &v111 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_21C58200C();
  v115 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v114 = &v111 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = sub_21C581E8C();
  v4 = *(v127 - 8);
  MEMORY[0x28223BE20](v127);
  v134 = &v111 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = type metadata accessor for SettingsApplicationRecord(0);
  v131 = *(v139 - 8);
  v6 = MEMORY[0x28223BE20](v139);
  v133 = &v111 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v126 = (&v111 - v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDEA90, &unk_21C584580);
  MEMORY[0x28223BE20](v9 - 8);
  v130 = &v111 - v10;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_21C57FFA8(MEMORY[0x277D84F90]);
  v132 = [objc_opt_self() enumeratorWithOptions_];
  v12 = [v132 nextObject];
  if (!v12)
  {
    goto LABEL_69;
  }

  v13 = v12;
  v129 = (v131 + 56);
  v125 = (v4 + 32);
  v121 = xmmword_21C5843E0;
  v141 = xmmword_21C582F80;
  v128 = v11;
LABEL_6:
  v14 = [v13 installSessionIdentifier];
  if (v14)
  {
    v15 = v14;
    v16 = sub_21C581EAC();
    v18 = v17;

    v19 = *(v11 + 16);
    if (!*(v19 + 16) || (v20 = sub_21C56D7F8(v16, v18), (v21 & 1) == 0))
    {
      v34 = v130;
      (*v129)(v130, 1, 1, v139);
      sub_21C57D5B4(v34, &qword_27CDDEA90, &unk_21C584580);
      v35 = v13;
      v36 = [v35 bundleIdentifier];
      if (v36)
      {
        v37 = v36;
        v143 = sub_21C58206C();
        v39 = v38;
      }

      else
      {
        v143 = 0;
        v39 = 0;
      }

      v40 = [v35 URL];
      sub_21C581E7C();

      v41 = [v35 uniqueInstallIdentifier];
      if (v41)
      {
        v42 = v41;
        v43 = sub_21C581EAC();
        v45 = v44;
      }

      else
      {
        v43 = 0;
        v45 = 0xF000000000000000;
      }

      v46 = [v35 driverExtensionPaths];
      if (v46)
      {
        v47 = v46;
        v48 = sub_21C58217C();
      }

      else
      {
        v48 = 0;
      }

      sub_21C568474(v16, v18);
      v49 = [v35 localizedName];

      v50 = sub_21C58206C();
      v52 = v51;

      v53 = v126;
      *v126 = v143;
      *(v53 + 8) = v39;
      v54 = v139;
      (*v125)(v53 + *(v139 + 20), v134, v127);
      v55 = (v53 + v54[6]);
      *v55 = v43;
      v55[1] = v45;
      *(v53 + v54[7]) = v48;
      v56 = (v53 + v54[8]);
      *v56 = v16;
      v56[1] = v18;
      v57 = (v53 + v54[9]);
      *v57 = v50;
      v57[1] = v52;
      sub_21C57D544(v53, v133, type metadata accessor for SettingsApplicationRecord);
      v11 = v128;
      v58 = *(v128 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      aBlock = v58;
      *(v11 + 16) = 0x8000000000000000;
      v60 = sub_21C56D7F8(v16, v18);
      v62 = v58[2];
      v63 = (v61 & 1) == 0;
      v64 = __OFADD__(v62, v63);
      v65 = v62 + v63;
      if (!v64)
      {
        v66 = v61;
        if (v58[3] < v65)
        {
          sub_21C57A6C0(v65, isUniquelyReferenced_nonNull_native);
          v60 = sub_21C56D7F8(v16, v18);
          if ((v66 & 1) != (v67 & 1))
          {
            result = sub_21C5824BC();
            __break(1u);
            return result;
          }

LABEL_27:
          v68 = aBlock;
          if ((v66 & 1) == 0)
          {
            goto LABEL_28;
          }

LABEL_3:
          sub_21C57D418(v133, v68[7] + *(v131 + 72) * v60);
          sub_21C567950(v16, v18);

LABEL_4:
          *(v11 + 16) = v68;

          goto LABEL_5;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_27;
        }

        v100 = v60;
        sub_21C57C810();
        v60 = v100;
        v68 = aBlock;
        if (v66)
        {
          goto LABEL_3;
        }

LABEL_28:
        v68[(v60 >> 6) + 8] |= 1 << v60;
        v69 = (v68[6] + 16 * v60);
        *v69 = v16;
        v69[1] = v18;
        sub_21C57D544(v133, v68[7] + *(v131 + 72) * v60, type metadata accessor for SettingsApplicationRecord);

        v70 = v68[2];
        v64 = __OFADD__(v70, 1);
        v71 = v70 + 1;
        if (!v64)
        {
          v68[2] = v71;
          goto LABEL_4;
        }

LABEL_79:
        __break(1u);
LABEL_80:
        __break(1u);
LABEL_81:
        __break(1u);
LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);
LABEL_84:
        __break(1u);
      }

LABEL_78:
      __break(1u);
      goto LABEL_79;
    }

    v22 = v131;
    v23 = *(v19 + 56) + *(v131 + 72) * v20;
    v24 = v130;
    sub_21C57D47C(v23, v130, type metadata accessor for SettingsApplicationRecord);
    (*(v22 + 56))(v24, 0, 1, v139);
    sub_21C57D5B4(v24, &qword_27CDDEA90, &unk_21C584580);
    v124 = sub_21C5821CC();
    v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDE850, &unk_21C584490);
    v25 = swift_allocObject();
    *(v25 + 16) = v121;
    v26 = v13;
    v27 = [v26 description];
    v28 = sub_21C58206C();
    v30 = v29;

    *(v25 + 56) = MEMORY[0x277D837D0];
    v31 = sub_21C57D07C();
    *(v25 + 64) = v31;
    *(v25 + 32) = v28;
    *(v25 + 40) = v30;
    v123 = v25;
    v32 = v18 >> 62;
    v140 = HIDWORD(v16);
    v122 = v31;
    if ((v18 >> 62) > 1)
    {
      if (v32 != 2)
      {
        v76 = MEMORY[0x277D84F90];
        goto LABEL_65;
      }

      v73 = *(v16 + 16);
      v72 = *(v16 + 24);
      v33 = v72 - v73;
      if (__OFSUB__(v72, v73))
      {
        goto LABEL_81;
      }

      if (!v33)
      {
        goto LABEL_38;
      }
    }

    else if (v32)
    {
      v75 = v140 - v16;
      if (__OFSUB__(v140, v16))
      {
        goto LABEL_82;
      }

      v33 = v75;
      if (!v75)
      {
LABEL_38:
        v76 = MEMORY[0x277D84F90];
        v11 = v128;
        goto LABEL_65;
      }
    }

    else
    {
      v33 = BYTE6(v18);
      if (!BYTE6(v18))
      {
        goto LABEL_38;
      }
    }

    v144 = MEMORY[0x277D84F90];
    sub_21C56D4A8(0, v33 & ~(v33 >> 63), 0);
    v138 = v16;
    if (v32)
    {
      if (v32 == 2)
      {
        v74 = *(v16 + 16);
      }

      else
      {
        v74 = v138;
      }
    }

    else
    {
      v74 = 0;
    }

    v142 = v74;
    if (v33 < 0)
    {
      goto LABEL_80;
    }

    v120 = v26;
    v77 = 0;
    v76 = v144;
    v136 = v16 >> 32;
    v137 = BYTE6(v18);
    v135 = &aBlock + v142;
    while (1)
    {
      if (v77 >= v33)
      {
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
        goto LABEL_78;
      }

      v78 = v77 + 1;
      if (__OFADD__(v77, 1))
      {
        goto LABEL_71;
      }

      v79 = v142 + v77;
      if (v32 == 2)
      {
        if (v79 < *(v16 + 16))
        {
          goto LABEL_72;
        }

        if (v79 >= *(v16 + 24))
        {
          goto LABEL_75;
        }

        v84 = sub_21C581DDC();
        if (!v84)
        {
          goto LABEL_84;
        }

        v81 = v84;
        v85 = sub_21C581DFC();
        v83 = v79 - v85;
        if (__OFSUB__(v79, v85))
        {
          goto LABEL_77;
        }
      }

      else
      {
        if (v32 != 1)
        {
          if (v79 >= v137)
          {
            goto LABEL_73;
          }

          LOWORD(aBlock) = v16;
          BYTE2(aBlock) = BYTE2(v16);
          BYTE3(aBlock) = BYTE3(v16);
          BYTE4(aBlock) = v140;
          BYTE5(aBlock) = BYTE5(v16);
          BYTE6(aBlock) = BYTE6(v16);
          HIBYTE(aBlock) = HIBYTE(v16);
          LOWORD(v146) = v18;
          BYTE2(v146) = BYTE2(v18);
          BYTE3(v146) = BYTE3(v18);
          BYTE4(v146) = BYTE4(v18);
          BYTE5(v146) = BYTE5(v18);
          v86 = v135[v77];
          goto LABEL_61;
        }

        if (v79 < v138 || v79 >= v136)
        {
          goto LABEL_74;
        }

        v80 = sub_21C581DDC();
        if (!v80)
        {
          goto LABEL_83;
        }

        v81 = v80;
        v82 = sub_21C581DFC();
        v83 = v79 - v82;
        if (__OFSUB__(v79, v82))
        {
          goto LABEL_76;
        }
      }

      v86 = *(v81 + v83);
LABEL_61:
      v87 = swift_allocObject();
      *(v87 + 16) = v141;
      *(v87 + 56) = MEMORY[0x277D84B78];
      *(v87 + 64) = MEMORY[0x277D84BC0];
      *(v87 + 32) = v86;
      v88 = sub_21C58207C();
      v144 = v76;
      v91 = v76[2];
      v90 = v76[3];
      if (v91 >= v90 >> 1)
      {
        v111 = v88;
        v93 = v89;
        sub_21C56D4A8((v90 > 1), v91 + 1, 1);
        v89 = v93;
        v88 = v111;
        v76 = v144;
      }

      v76[2] = v91 + 1;
      v92 = &v76[2 * v91];
      v92[4] = v88;
      v92[5] = v89;
      ++v77;
      if (v78 == v33)
      {
        v11 = v128;
        v26 = v120;
LABEL_65:
        aBlock = v76;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDE848, &qword_21C582F90);
        sub_21C5709BC(&qword_28120D210, &qword_27CDDE848, &qword_21C582F90, MEMORY[0x277D83958]);
        v94 = sub_21C58204C();
        v96 = v95;

        v97 = v123;
        v98 = v122;
        v123[12] = MEMORY[0x277D837D0];
        v97[13] = v98;
        v97[9] = v94;
        v97[10] = v96;
        sub_21C57CFE4(0, &qword_28120D1E0, 0x277D86200);
        v99 = sub_21C58224C();
        sub_21C581F2C(v124, &dword_21C564000, v99, "Found two applications with the same install session identifier: %{public}s: %{public}s", 87, 2, v97);

        sub_21C567950(v16, v18);
LABEL_5:
        v13 = [v132 nextObject];
        if (!v13)
        {
          goto LABEL_69;
        }

        goto LABEL_6;
      }
    }
  }

LABEL_69:
  sub_21C57CFE4(0, &qword_28120D1E8, 0x277D85C78);
  v101 = sub_21C58220C();
  v102 = swift_allocObject();
  v103 = v112;
  v104 = v113;
  v102[2] = v112;
  v102[3] = v104;
  v102[4] = v11;
  v149 = sub_21C57D40C;
  v150 = v102;
  aBlock = MEMORY[0x277D85DD0];
  v146 = 1107296256;
  v147 = sub_21C57D650;
  v148 = &block_descriptor_40;
  v105 = _Block_copy(&aBlock);
  v106 = v103;

  v107 = v114;
  sub_21C581FFC();
  aBlock = MEMORY[0x277D84F90];
  sub_21C57D34C(&qword_28120D238, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDEA60, &qword_21C584440);
  sub_21C5709BC(&qword_28120D218, &qword_27CDDEA60, &qword_21C584440, MEMORY[0x277D83970]);
  v108 = v116;
  v109 = v119;
  sub_21C58228C();
  MEMORY[0x21CF0C180](0, v107, v108, v105);
  _Block_release(v105);

  (*(v118 + 8))(v108, v109);
  (*(v115 + 8))(v107, v117);
}

uint64_t sub_21C578BD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v5 = *(a3 + 16);

  sub_21C574FF4(a2, v5);
}

uint64_t sub_21C578C48(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t DriverManager.setDriverState(_:approved:)(char *a1, char a2)
{
  if (a2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  return DriverManager.setDriverState(driverApprovalState:state:)(a1, v2);
}

uint64_t DriverManager.setDriverState(driverApprovalState:state:)(char *a1, int a2)
{
  v28 = a2;
  v3 = sub_21C581EEC();
  v30 = *(v3 - 8);
  v31 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21C58201C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_21C581F5C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21C58223C();
  v27[1] = sub_21C57CFE4(0, &qword_28120D1E0, 0x277D86200);
  v14 = sub_21C58224C();
  sub_21C581F4C();
  sub_21C581F3C();

  (*(v11 + 8))(v13, v10);
  sub_21C57CFE4(0, &qword_28120D1E8, 0x277D85C78);
  *v9 = sub_21C58220C();
  (*(v7 + 104))(v9, *MEMORY[0x277D85200], v6);
  LOBYTE(v13) = sub_21C58202C();
  result = (*(v7 + 8))(v9, v6);
  if (v13)
  {
    v17 = *&a1[OBJC_IVAR____SwiftDriverApprovalState_driver];
    v16 = *&a1[OBJC_IVAR____SwiftDriverApprovalState_driver + 8];
    type metadata accessor for DriverKitDriver(0);

    v18 = sub_21C57D6E0();
    v20 = v19;
    v21 = swift_allocObject();
    *(v21 + 16) = a1;
    v22 = v28;
    *(v21 + 24) = v28;
    v23 = v29;
    *(v21 + 32) = v29;
    type metadata accessor for ApprovalStateUpdateRequest(0);
    v24 = swift_allocObject();
    *(v24 + 16) = v17;
    *(v24 + 24) = v16;
    *(v24 + 32) = v18;
    *(v24 + 40) = v20;
    *(v24 + 48) = v22;
    *(v24 + 56) = sub_21C57D068;
    *(v24 + 64) = v21;
    v25 = a1;
    v23;
    sub_21C581EDC();
    (*(v30 + 32))(v24 + OBJC_IVAR____TtC16DriverManagement26ApprovalStateUpdateRequest_timestamp, v5, v31);
    swift_getKeyPath();
    swift_getKeyPath();
    v32 = v24;
    v26 = v25;

    sub_21C581FCC();
    DriverKitDaemonClient.enqueueApprovalStateUpdate(request:)(v24);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21C579200(void *a1, char a2, void *a3, char a4, void *a5)
{
  v10 = sub_21C581FEC();
  v25 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_21C58200C();
  v13 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21C57CFE4(0, &qword_28120D1E8, 0x277D85C78);
  v23 = sub_21C58220C();
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = a1;
  *(v16 + 32) = a2 & 1;
  *(v16 + 33) = a4;
  *(v16 + 40) = a5;
  aBlock[4] = sub_21C57D620;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21C57D650;
  aBlock[3] = &block_descriptor_52;
  v17 = _Block_copy(aBlock);
  v18 = a3;
  sub_21C57D634(a1, a2 & 1);
  v19 = a5;

  sub_21C581FFC();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_21C57D34C(&qword_28120D238, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDEA60, &qword_21C584440);
  sub_21C5709BC(&qword_28120D218, &qword_27CDDEA60, &qword_21C584440, MEMORY[0x277D83970]);
  sub_21C58228C();
  v20 = v23;
  MEMORY[0x21CF0C180](0, v15, v12, v17);
  _Block_release(v17);

  (*(v25 + 8))(v12, v10);
  return (*(v13 + 8))(v15, v24);
}

uint64_t sub_21C579524(void *a1, uint64_t a2, char a3)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = a1;
  result = sub_21C581FCC();
  if (a3)
  {
    v7 = sub_21C5821CC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDE850, &unk_21C584490);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_21C5843E0;
    v9 = v5;
    v10 = [v9 description];
    v11 = sub_21C58206C();
    v13 = v12;

    v14 = MEMORY[0x277D837D0];
    *(v8 + 56) = MEMORY[0x277D837D0];
    v15 = sub_21C57D07C();
    *(v8 + 64) = v15;
    *(v8 + 32) = v11;
    *(v8 + 40) = v13;
    if (qword_28120D3B8 != -1)
    {
      swift_once();
    }

    v16 = MEMORY[0x28223BE20](off_28120D3C0);
    v17 = sub_21C56EB88(v16, sub_21C57D654);
    v18 = sub_21C568624(v17);
    v20 = v19;

    if (v20)
    {
      *(v8 + 96) = v14;
      *(v8 + 104) = v15;
      *(v8 + 72) = v18;
      *(v8 + 80) = v20;
      sub_21C57CFE4(0, &qword_28120D1E0, 0x277D86200);
      v21 = sub_21C58224C();
      sub_21C581F2C(v7, &dword_21C564000, v21, "Failed to set driver approval state for %{public}s to %{public}s. Refreshing state.", 83, 2, v8);

      return sub_21C574284();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

char *DriverManager.driverApprovalStatesForThirdPartyApp(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v31 = a2;
  v32 = a1;
  v4 = type metadata accessor for SettingsApplicationRecord(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for DriverKitDriverApp(0);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v33 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v29 - v11;
  v13 = type metadata accessor for DriverKitDriverSource(0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *(v3 + OBJC_IVAR____SwiftDriverManager_driverApprovalStatesLock);
  [v29 lock];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21C581FBC(&v38);

  v16 = v38;
  v38 = MEMORY[0x277D84F90];
  v34 = v16;
  if (v16 >> 62)
  {
    goto LABEL_24;
  }

  for (i = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21C58238C())
  {
    v18 = 0;
    v36 = v34 & 0xFFFFFFFFFFFFFF8;
    v37 = v34 & 0xC000000000000001;
    v19 = (v8 + 48);
    v35 = v12;
    v12 = v34;
    v30 = v7;
    while (1)
    {
      if (v37)
      {
        v20 = MEMORY[0x21CF0C250](v18, v12);
      }

      else
      {
        if (v18 >= *(v36 + 16))
        {
          goto LABEL_23;
        }

        v20 = *&v12[8 * v18 + 32];
      }

      v21 = v20;
      v22 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      v8 = OBJC_IVAR____SwiftDriverApprovalState_driver;
      v23 = type metadata accessor for DriverKitDriver(0);
      sub_21C57D47C(v21 + *(v23 + 20) + v8, v15, type metadata accessor for DriverKitDriverSource);
      if ((*v19)(v15, 1, v7) != 1)
      {
        v24 = v35;
        sub_21C57D544(v15, v35, type metadata accessor for DriverKitDriverApp);
        v8 = v33;
        sub_21C57D47C(v24, v33, type metadata accessor for DriverKitDriverApp);
        if (swift_getEnumCaseMultiPayload() == 1)
        {

          v25 = v8;
          v8 = type metadata accessor for DriverKitDriverApp;
          sub_21C57D4E4(v24, type metadata accessor for DriverKitDriverApp);
          sub_21C57D4E4(v25, type metadata accessor for DriverKitDriverApp);
          v12 = v34;
          goto LABEL_6;
        }

        sub_21C57D544(v8, v6, type metadata accessor for SettingsApplicationRecord);
        v26 = v6[1];
        if (v26)
        {
          v12 = v34;
          if (*v6 == v32 && v26 == v31)
          {
            sub_21C57D4E4(v35, type metadata accessor for DriverKitDriverApp);
            sub_21C57D4E4(v6, type metadata accessor for SettingsApplicationRecord);
LABEL_19:
            v8 = &v38;
            sub_21C58233C();
            sub_21C58235C();
            v12 = v34;
            v7 = v30;
            sub_21C58236C();
            sub_21C58234C();
            goto LABEL_6;
          }

          v8 = sub_21C5824AC();
          sub_21C57D4E4(v35, type metadata accessor for DriverKitDriverApp);
          sub_21C57D4E4(v6, type metadata accessor for SettingsApplicationRecord);
          if (v8)
          {
            goto LABEL_19;
          }
        }

        else
        {
          sub_21C57D4E4(v35, type metadata accessor for DriverKitDriverApp);
          sub_21C57D4E4(v6, type metadata accessor for SettingsApplicationRecord);
          v12 = v34;
        }
      }

LABEL_6:
      ++v18;
      if (v22 == i)
      {
        v27 = v38;
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    ;
  }

  v27 = MEMORY[0x277D84F90];
LABEL_26:

  [v29 unlock];
  return v27;
}

uint64_t sub_21C579CD8@<X0>(uint64_t *a2@<X8>)
{
  swift_getObjectType();
  result = sub_21C581F6C();
  *a2 = result;
  return result;
}

uint64_t sub_21C579D18@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21C581FBC(&v4);

  *a2 = v4;
  return result;
}

uint64_t sub_21C579D98(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return sub_21C581FCC();
}

uint64_t sub_21C579E10@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21C581FBC(&v4);

  *a2 = v4;
  return result;
}

uint64_t sub_21C579E90(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return sub_21C581FCC();
}

void *sub_21C579F08(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDEA88, &qword_21C584578);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_21C579F7C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDEAB8, &qword_21C5845F8);
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

char *sub_21C57A088(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDEAA0, &qword_21C5845E0);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

unint64_t sub_21C57A18C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_21C57A258(v11, 0, 0, 1, a1, a2);
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
    sub_21C57D3B0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_21C57A258(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_21C57A364(a5, a6);
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
    result = sub_21C58232C();
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

void *sub_21C57A364(uint64_t a1, unint64_t a2)
{
  v3 = sub_21C57A3B0(a1, a2);
  sub_21C57A4E0(&unk_282E306A8);
  return v3;
}

void *sub_21C57A3B0(uint64_t a1, unint64_t a2)
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

  v6 = sub_21C579F08(v5, 0);
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

  result = sub_21C58232C();
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
        v10 = sub_21C5820EC();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_21C579F08(v10, 0);
        result = sub_21C5822AC();
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

uint64_t sub_21C57A4E0(uint64_t result)
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

  result = sub_21C57A5CC(result, v11, 1, v3);
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

char *sub_21C57A5CC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDEA88, &qword_21C584578);
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

uint64_t sub_21C57A6C0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for SettingsApplicationRecord(0);
  v37 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDEA98, &qword_21C584590);
  v38 = v4;
  result = sub_21C5823AC();
  v10 = result;
  if (*(v8 + 16))
  {
    v36 = v2;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v23 = v20 | (v11 << 6);
      v24 = *(v37 + 72);
      v25 = *(v8 + 56) + v24 * v23;
      v39 = *(*(v8 + 48) + 16 * v23);
      v26 = *(&v39 + 1);
      if (v38)
      {
        sub_21C57D544(v25, v7, type metadata accessor for SettingsApplicationRecord);
      }

      else
      {
        sub_21C57D47C(v25, v7, type metadata accessor for SettingsApplicationRecord);
        sub_21C568474(v39, v26);
      }

      sub_21C58250C();
      sub_21C581EBC();
      result = sub_21C58253C();
      v27 = -1 << *(v10 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v17 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        v19 = v39;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v17 + 8 * v29);
          if (v33 != -1)
          {
            v18 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v28) & ~*(v17 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
      v19 = v39;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 16 * v18) = v19;
      result = sub_21C57D544(v7, *(v10 + 56) + v24 * v18, type metadata accessor for SettingsApplicationRecord);
      ++*(v10 + 16);
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v34 = 1 << *(v8 + 32);
    v3 = v36;
    if (v34 >= 64)
    {
      bzero((v8 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v34;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
  return result;
}

unint64_t sub_21C57AA44(uint64_t a1, char a2)
{
  v4 = *v2;
  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if ((isUniquelyReferenced_nonNull_bridgeObject & 1) == 0 || (result = 0, (v4 & 0x8000000000000000) != 0) || (v4 & 0x4000000000000000) != 0 || a1 > *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    if (v4 >> 62)
    {
      sub_21C58238C();
    }

    result = sub_21C5822FC();
    *v2 = result;
  }

  return result;
}

void sub_21C57AB00(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_21C58248C();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for DriverApprovalState(0);
        v6 = sub_21C58219C();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_21C57B294(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_21C57AC04(0, v2, 1, a1);
  }
}

void sub_21C57AC04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v60 = type metadata accessor for SettingsApplicationRecord(0);
  v8 = MEMORY[0x28223BE20](v60);
  v59 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v58 = &v53 - v10;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDE838, &qword_21C582F68);
  MEMORY[0x28223BE20](v62);
  v61 = &v53 - v11;
  v68 = type metadata accessor for DriverKitDriverApp(0);
  v12 = *(v68 - 8);
  v13 = MEMORY[0x28223BE20](v68);
  v64 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v65 = &v53 - v15;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDE840, &unk_21C582F70);
  MEMORY[0x28223BE20](v67);
  v17 = &v53 - v16;
  v54 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v66 = (v12 + 48);
    v69 = sub_21C566F98();
    v19 = v18 + 8 * a3 - 8;
    v20 = a1 - a3;
    v63 = v18;
LABEL_7:
    v56 = v19;
    v57 = a3;
    v23 = *(v18 + 8 * a3);
    v55 = v20;
    v24 = v19;
    while (1)
    {
      v25 = *v24;
      v26 = &v23[OBJC_IVAR____SwiftDriverApprovalState_driver];
      v27 = (*v24 + OBJC_IVAR____SwiftDriverApprovalState_driver);
      v28 = *&v23[OBJC_IVAR____SwiftDriverApprovalState_driver + 8];
      v74 = *&v23[OBJC_IVAR____SwiftDriverApprovalState_driver];
      v75 = v28;
      v29 = v27[1];
      v72 = *v27;
      v73 = v29;
      v71 = v23;
      v76 = v25;
      v70 = sub_21C58226C();
      v30 = *(type metadata accessor for DriverKitDriver(0) + 20);
      v31 = *(v67 + 48);
      sub_21C57D47C(&v26[v30], v17, type metadata accessor for DriverKitDriverSource);
      sub_21C57D47C(v27 + v30, &v17[v31], type metadata accessor for DriverKitDriverSource);
      v32 = *v66;
      v33 = v68;
      LODWORD(v25) = (*v66)(v17, 1, v68);
      v34 = v32(&v17[v31], 1, v33);
      if (v25 == 1)
      {
        if (v34 != 1)
        {
          sub_21C57D4E4(&v17[v31], type metadata accessor for DriverKitDriverSource);

          goto LABEL_21;
        }

        v35 = v70;
      }

      else
      {
        v36 = v65;
        if (v34 == 1)
        {
          v21 = type metadata accessor for DriverKitDriverApp;
          v22 = v17;
LABEL_5:
          sub_21C57D4E4(v22, v21);
          v18 = v63;

LABEL_6:
          a3 = v57 + 1;
          v19 = v56 + 8;
          v20 = v55 - 1;
          if (v57 + 1 == v54)
          {
            return;
          }

          goto LABEL_7;
        }

        sub_21C57D544(v17, v65, type metadata accessor for DriverKitDriverApp);
        v37 = v64;
        sub_21C57D544(&v17[v31], v64, type metadata accessor for DriverKitDriverApp);
        v38 = v61;
        v39 = *(v62 + 48);
        sub_21C57D47C(v36, v61, type metadata accessor for DriverKitDriverApp);
        sub_21C57D47C(v37, v38 + v39, type metadata accessor for DriverKitDriverApp);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_21C57D4E4(v37, type metadata accessor for DriverKitDriverApp);
          sub_21C57D4E4(v36, type metadata accessor for DriverKitDriverApp);
          sub_21C57D4E4(v38, type metadata accessor for DriverKitDriverApp);
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          v41 = v38;
          v42 = EnumCaseMultiPayload;
          sub_21C57D4E4(v41 + v39, type metadata accessor for DriverKitDriverApp);

          v18 = v63;
          v35 = v70;
          if (v42 != 1)
          {
            goto LABEL_21;
          }
        }

        else
        {
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_21C57D4E4(v37, type metadata accessor for DriverKitDriverApp);
            sub_21C57D4E4(v65, type metadata accessor for DriverKitDriverApp);
            sub_21C57D4E4(v38 + v39, type metadata accessor for DriverKitDriverApp);
            v21 = type metadata accessor for SettingsApplicationRecord;
            v22 = v38;
            goto LABEL_5;
          }

          v43 = v58;
          sub_21C57D544(v38, v58, type metadata accessor for SettingsApplicationRecord);
          v44 = v59;
          sub_21C57D544(v38 + v39, v59, type metadata accessor for SettingsApplicationRecord);
          v45 = *(v60 + 36);
          v46 = *(v43 + v45 + 8);
          v74 = *(v43 + v45);
          v75 = v46;
          v47 = (v44 + v45);
          v49 = *v47;
          v48 = v47[1];
          v72 = v49;
          v73 = v48;
          v50 = sub_21C58226C();
          sub_21C57D4E4(v44, type metadata accessor for SettingsApplicationRecord);
          sub_21C57D4E4(v43, type metadata accessor for SettingsApplicationRecord);
          sub_21C57D4E4(v64, type metadata accessor for DriverKitDriverApp);
          sub_21C57D4E4(v65, type metadata accessor for DriverKitDriverApp);

          v35 = v70;
          if (v50)
          {
            v35 = v50;
          }

          v18 = v63;
        }
      }

      if (v35 != -1)
      {
        goto LABEL_6;
      }

LABEL_21:
      if (!v18)
      {
        __break(1u);
        return;
      }

      v51 = *v24;
      v23 = *(v24 + 8);
      *v24 = v23;
      *(v24 + 8) = v51;
      v24 -= 8;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_6;
      }
    }
  }
}

void sub_21C57B294(void ***a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v178 = a4;
  v179 = a1;
  v190 = type metadata accessor for SettingsApplicationRecord(0);
  v7 = MEMORY[0x28223BE20](v190);
  v189 = &v173 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v188 = &v173 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v174 = &v173 - v12;
  MEMORY[0x28223BE20](v11);
  v173 = &v173 - v13;
  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDE838, &qword_21C582F68);
  v14 = MEMORY[0x28223BE20](v194);
  v16 = &v173 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v173 - v17;
  v200 = type metadata accessor for DriverKitDriverApp(0);
  v19 = *(v200 - 8);
  v20 = MEMORY[0x28223BE20](v200);
  v22 = &v173 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v173 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v173 - v27;
  MEMORY[0x28223BE20](v26);
  v30 = &v173 - v29;
  v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDE840, &unk_21C582F70);
  v31 = MEMORY[0x28223BE20](v199);
  v195 = &v173 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v185 = &v173 - v33;
  v34 = a3[1];
  if (v34 < 1)
  {
    v35 = MEMORY[0x277D84F90];
LABEL_125:
    v37 = *v179;
    if (!*v179)
    {
      goto LABEL_164;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_127:
      v169 = v5;
      v208 = v35;
      v170 = *(v35 + 2);
      if (v170 >= 2)
      {
        while (*a3)
        {
          v171 = *&v35[16 * v170];
          v5 = *&v35[16 * v170 + 24];
          sub_21C57C484((*a3 + 8 * v171), (*a3 + 8 * *&v35[16 * v170 + 16]), (*a3 + 8 * v5), v37);
          if (v169)
          {
            goto LABEL_135;
          }

          if (v5 < v171)
          {
            goto LABEL_151;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v35 = sub_21C57C7FC(v35);
          }

          if (v170 - 2 >= *(v35 + 2))
          {
            goto LABEL_152;
          }

          v172 = &v35[16 * v170];
          *v172 = v171;
          *(v172 + 1) = v5;
          v208 = v35;
          sub_21C57C770(v170 - 1);
          v35 = v208;
          v170 = *(v208 + 2);
          if (v170 <= 1)
          {
            goto LABEL_135;
          }
        }

        goto LABEL_162;
      }

LABEL_135:

      return;
    }

LABEL_158:
    v35 = sub_21C57C7FC(v35);
    goto LABEL_127;
  }

  v180 = v28;
  v177 = v18;
  v198 = (v19 + 48);
  v35 = MEMORY[0x277D84F90];
  v192 = v22;
  v193 = v16;
  v196 = v25;
  v182 = v30;
  v36 = 0;
  v175 = a3;
  while (1)
  {
    v37 = v36++;
    v184 = v35;
    v181 = v37;
    if (v36 >= v34)
    {
      v85 = v178;
      v46 = v195;
    }

    else
    {
      v176 = v5;
      v38 = v37;
      v39 = *a3;
      v40 = *(*a3 + 8 * v36);
      v41 = *(*a3 + 8 * v37);
      v42 = OBJC_IVAR____SwiftDriverApprovalState_driver;
      v201 = v34;
      v43 = v40;
      v44 = v41;
      LODWORD(v197) = _s16DriverManagement0a3KitA0V1loiySbAC_ACtFZ_0(&v40[v42], &v41[v42]);

      v36 = v38 + 2;
      if (v38 + 2 < v201)
      {
        v187 = sub_21C566F98();
        v45 = (v39 + 8 * v38 + 16);
        v46 = v195;
        while (1)
        {
          v191 = v36;
          v50 = *(v45 - 1);
          v49 = *v45;
          v51 = (*v45 + OBJC_IVAR____SwiftDriverApprovalState_driver);
          v52 = &v50[OBJC_IVAR____SwiftDriverApprovalState_driver];
          v53 = v51[1];
          v206 = *v51;
          v207 = v53;
          v54 = *&v50[OBJC_IVAR____SwiftDriverApprovalState_driver + 8];
          v204 = *&v50[OBJC_IVAR____SwiftDriverApprovalState_driver];
          v205 = v54;
          v55 = v49;
          v203 = v50;
          v202 = sub_21C58226C();
          v56 = *(type metadata accessor for DriverKitDriver(0) + 20);
          v57 = *(v199 + 48);
          v58 = v185;
          sub_21C57D47C(v51 + v56, v185, type metadata accessor for DriverKitDriverSource);
          sub_21C57D47C(&v52[v56], v58 + v57, type metadata accessor for DriverKitDriverSource);
          v59 = *v198;
          v60 = v200;
          LODWORD(v50) = (*v198)(v58, 1, v200);
          v61 = v59(v58 + v57, 1, v60);
          if (v50 == 1)
          {
            if (v61 != 1)
            {
              sub_21C57D4E4(v185 + v57, type metadata accessor for DriverKitDriverSource);

              v35 = v184;
              v36 = v191;
LABEL_13:
              v48 = v201;
              if ((v197 & 1) == 0)
              {
                v5 = v176;
                a3 = v175;
                v85 = v178;
                v37 = v181;
                goto LABEL_39;
              }

              goto LABEL_9;
            }

            v35 = v184;
            v36 = v191;
            v47 = v202;
            goto LABEL_8;
          }

          v62 = v182;
          if (v61 == 1)
          {
            sub_21C57D4E4(v185, type metadata accessor for DriverKitDriverApp);

            v35 = v184;
            v46 = v195;
          }

          else
          {
            v63 = v185;
            sub_21C57D544(v185, v182, type metadata accessor for DriverKitDriverApp);
            v64 = v180;
            sub_21C57D544(v63 + v57, v180, type metadata accessor for DriverKitDriverApp);
            v65 = *(v194 + 48);
            v66 = v177;
            sub_21C57D47C(v62, v177, type metadata accessor for DriverKitDriverApp);
            sub_21C57D47C(v64, v66 + v65, type metadata accessor for DriverKitDriverApp);
            if (swift_getEnumCaseMultiPayload() == 1)
            {
              sub_21C57D4E4(v64, type metadata accessor for DriverKitDriverApp);
              sub_21C57D4E4(v62, type metadata accessor for DriverKitDriverApp);
              sub_21C57D4E4(v66, type metadata accessor for DriverKitDriverApp);
              EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
              sub_21C57D4E4(v66 + v65, type metadata accessor for DriverKitDriverApp);

              v68 = EnumCaseMultiPayload == 1;
              v35 = v184;
              v46 = v195;
              v36 = v191;
              v47 = v202;
              if (!v68)
              {
                goto LABEL_13;
              }

              goto LABEL_8;
            }

            v69 = swift_getEnumCaseMultiPayload();
            v46 = v195;
            if (v69 != 1)
            {
              v70 = v173;
              sub_21C57D544(v66, v173, type metadata accessor for SettingsApplicationRecord);
              v71 = v66 + v65;
              v72 = v174;
              sub_21C57D544(v71, v174, type metadata accessor for SettingsApplicationRecord);
              v73 = *(v190 + 36);
              v74 = *(v70 + v73 + 8);
              v206 = *(v70 + v73);
              v207 = v74;
              v75 = (v72 + v73);
              v77 = *v75;
              v76 = v75[1];
              v204 = v77;
              v205 = v76;
              v78 = sub_21C58226C();
              sub_21C57D4E4(v72, type metadata accessor for SettingsApplicationRecord);
              sub_21C57D4E4(v70, type metadata accessor for SettingsApplicationRecord);
              sub_21C57D4E4(v180, type metadata accessor for DriverKitDriverApp);
              sub_21C57D4E4(v182, type metadata accessor for DriverKitDriverApp);

              v47 = v202;
              if (v78)
              {
                v47 = v78;
              }

              v35 = v184;
              v36 = v191;
LABEL_8:
              v48 = v201;
              if ((v197 ^ (v47 == -1)))
              {
                goto LABEL_30;
              }

              goto LABEL_9;
            }

            sub_21C57D4E4(v180, type metadata accessor for DriverKitDriverApp);
            sub_21C57D4E4(v182, type metadata accessor for DriverKitDriverApp);
            sub_21C57D4E4(v66 + v65, type metadata accessor for DriverKitDriverApp);
            sub_21C57D4E4(v66, type metadata accessor for SettingsApplicationRecord);

            v35 = v184;
          }

          v36 = v191;
          v48 = v201;
          if (v197)
          {
            v5 = v176;
            a3 = v175;
            v85 = v178;
            v37 = v181;
            if (v191 < v181)
            {
              goto LABEL_155;
            }

            goto LABEL_32;
          }

LABEL_9:
          ++v36;
          ++v45;
          if (v48 == v36)
          {
            v36 = v201;
            goto LABEL_30;
          }
        }
      }

      v46 = v195;
LABEL_30:
      v5 = v176;
      a3 = v175;
      v85 = v178;
      v37 = v181;
      if (v197)
      {
        if (v36 < v181)
        {
          goto LABEL_155;
        }

LABEL_32:
        if (v37 < v36)
        {
          v79 = 8 * v36 - 8;
          v80 = 8 * v37;
          v81 = v36;
          v82 = v37;
          do
          {
            if (v82 != --v81)
            {
              v84 = *a3;
              if (!*a3)
              {
                goto LABEL_161;
              }

              v83 = *(v84 + v80);
              *(v84 + v80) = *(v84 + v79);
              *(v84 + v79) = v83;
            }

            v82 = (v82 + 1);
            v79 -= 8;
            v80 += 8;
          }

          while (v82 < v81);
        }
      }
    }

LABEL_39:
    v86 = a3[1];
    if (v36 < v86)
    {
      if (__OFSUB__(v36, v37))
      {
        goto LABEL_154;
      }

      if (v36 - v37 < v85)
      {
        break;
      }
    }

LABEL_72:
    if (v36 < v37)
    {
      goto LABEL_153;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v35 = sub_21C57A088(0, *(v35 + 2) + 1, 1, v35);
    }

    v124 = *(v35 + 2);
    v123 = *(v35 + 3);
    v125 = v124 + 1;
    if (v124 >= v123 >> 1)
    {
      v35 = sub_21C57A088((v123 > 1), v124 + 1, 1, v35);
    }

    *(v35 + 2) = v125;
    v126 = &v35[16 * v124];
    *(v126 + 4) = v181;
    *(v126 + 5) = v36;
    v37 = *v179;
    if (!*v179)
    {
      goto LABEL_163;
    }

    if (v124)
    {
      while (1)
      {
        v127 = v125 - 1;
        if (v125 >= 4)
        {
          break;
        }

        if (v125 == 3)
        {
          v128 = *(v35 + 4);
          v129 = *(v35 + 5);
          v138 = __OFSUB__(v129, v128);
          v130 = v129 - v128;
          v131 = v138;
LABEL_92:
          if (v131)
          {
            goto LABEL_142;
          }

          v144 = &v35[16 * v125];
          v146 = *v144;
          v145 = *(v144 + 1);
          v147 = __OFSUB__(v145, v146);
          v148 = v145 - v146;
          v149 = v147;
          if (v147)
          {
            goto LABEL_145;
          }

          v150 = &v35[16 * v127 + 32];
          v152 = *v150;
          v151 = *(v150 + 1);
          v138 = __OFSUB__(v151, v152);
          v153 = v151 - v152;
          if (v138)
          {
            goto LABEL_148;
          }

          if (__OFADD__(v148, v153))
          {
            goto LABEL_149;
          }

          if (v148 + v153 >= v130)
          {
            if (v130 < v153)
            {
              v127 = v125 - 2;
            }

            goto LABEL_113;
          }

          goto LABEL_106;
        }

        v154 = &v35[16 * v125];
        v156 = *v154;
        v155 = *(v154 + 1);
        v138 = __OFSUB__(v155, v156);
        v148 = v155 - v156;
        v149 = v138;
LABEL_106:
        if (v149)
        {
          goto LABEL_144;
        }

        v157 = &v35[16 * v127];
        v159 = *(v157 + 4);
        v158 = *(v157 + 5);
        v138 = __OFSUB__(v158, v159);
        v160 = v158 - v159;
        if (v138)
        {
          goto LABEL_147;
        }

        if (v160 < v148)
        {
          goto LABEL_3;
        }

LABEL_113:
        v165 = v127 - 1;
        if (v127 - 1 >= v125)
        {
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
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
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
LABEL_156:
          __break(1u);
          goto LABEL_157;
        }

        if (!*a3)
        {
          goto LABEL_160;
        }

        v166 = *&v35[16 * v165 + 32];
        v167 = *&v35[16 * v127 + 40];
        sub_21C57C484((*a3 + 8 * v166), (*a3 + 8 * *&v35[16 * v127 + 32]), (*a3 + 8 * v167), v37);
        if (v5)
        {
          goto LABEL_135;
        }

        if (v167 < v166)
        {
          goto LABEL_138;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v35 = sub_21C57C7FC(v35);
        }

        if (v165 >= *(v35 + 2))
        {
          goto LABEL_139;
        }

        v168 = &v35[16 * v165];
        *(v168 + 4) = v166;
        *(v168 + 5) = v167;
        v208 = v35;
        sub_21C57C770(v127);
        v35 = v208;
        v125 = *(v208 + 2);
        if (v125 <= 1)
        {
          goto LABEL_3;
        }
      }

      v132 = &v35[16 * v125 + 32];
      v133 = *(v132 - 64);
      v134 = *(v132 - 56);
      v138 = __OFSUB__(v134, v133);
      v135 = v134 - v133;
      if (v138)
      {
        goto LABEL_140;
      }

      v137 = *(v132 - 48);
      v136 = *(v132 - 40);
      v138 = __OFSUB__(v136, v137);
      v130 = v136 - v137;
      v131 = v138;
      if (v138)
      {
        goto LABEL_141;
      }

      v139 = &v35[16 * v125];
      v141 = *v139;
      v140 = *(v139 + 1);
      v138 = __OFSUB__(v140, v141);
      v142 = v140 - v141;
      if (v138)
      {
        goto LABEL_143;
      }

      v138 = __OFADD__(v130, v142);
      v143 = v130 + v142;
      if (v138)
      {
        goto LABEL_146;
      }

      if (v143 >= v135)
      {
        v161 = &v35[16 * v127 + 32];
        v163 = *v161;
        v162 = *(v161 + 1);
        v138 = __OFSUB__(v162, v163);
        v164 = v162 - v163;
        if (v138)
        {
          goto LABEL_150;
        }

        if (v130 < v164)
        {
          v127 = v125 - 2;
        }

        goto LABEL_113;
      }

      goto LABEL_92;
    }

LABEL_3:
    v34 = a3[1];
    if (v36 >= v34)
    {
      goto LABEL_125;
    }
  }

  if (__OFADD__(v37, v85))
  {
    goto LABEL_156;
  }

  if (v37 + v85 >= v86)
  {
    v87 = a3[1];
  }

  else
  {
    v87 = (v37 + v85);
  }

  if (v87 < v37)
  {
LABEL_157:
    __break(1u);
    goto LABEL_158;
  }

  if (v36 == v87)
  {
    goto LABEL_72;
  }

  v176 = v5;
  v88 = *a3;
  v201 = sub_21C566F98();
  v197 = v88;
  v89 = v88 + 8 * v36 - 8;
  v90 = (v37 - v36);
  v183 = v87;
LABEL_52:
  v191 = v36;
  v91 = *(v197 + 8 * v36);
  v186 = v90;
  v187 = v89;
  while (1)
  {
    v92 = *v89;
    v93 = &v91[OBJC_IVAR____SwiftDriverApprovalState_driver];
    v94 = (*v89 + OBJC_IVAR____SwiftDriverApprovalState_driver);
    v95 = *&v91[OBJC_IVAR____SwiftDriverApprovalState_driver + 8];
    v206 = *&v91[OBJC_IVAR____SwiftDriverApprovalState_driver];
    v207 = v95;
    v96 = v94[1];
    v204 = *v94;
    v205 = v96;
    v202 = v91;
    v203 = v92;
    v97 = sub_21C58226C();
    v98 = *(type metadata accessor for DriverKitDriver(0) + 20);
    v99 = *(v199 + 48);
    sub_21C57D47C(&v93[v98], v46, type metadata accessor for DriverKitDriverSource);
    sub_21C57D47C(v94 + v98, v46 + v99, type metadata accessor for DriverKitDriverSource);
    v100 = *v198;
    v101 = v200;
    v102 = (*v198)(v46, 1, v200);
    v103 = v100(v46 + v99, 1, v101);
    if (v102 == 1)
    {
      if (v103 != 1)
      {
        sub_21C57D4E4(v46 + v99, type metadata accessor for DriverKitDriverSource);

        goto LABEL_66;
      }
    }

    else
    {
      if (v103 == 1)
      {
        sub_21C57D4E4(v46, type metadata accessor for DriverKitDriverApp);
LABEL_50:

LABEL_51:
        v36 = v191 + 1;
        v89 = v187 + 8;
        v90 = v186 - 1;
        if ((v191 + 1) == v183)
        {
          v36 = v183;
          v5 = v176;
          a3 = v175;
          v35 = v184;
          v37 = v181;
          goto LABEL_72;
        }

        goto LABEL_52;
      }

      v104 = v46;
      v105 = v46;
      v106 = v196;
      sub_21C57D544(v104, v196, type metadata accessor for DriverKitDriverApp);
      v107 = v105 + v99;
      v108 = v192;
      sub_21C57D544(v107, v192, type metadata accessor for DriverKitDriverApp);
      v109 = v193;
      v110 = *(v194 + 48);
      sub_21C57D47C(v106, v193, type metadata accessor for DriverKitDriverApp);
      sub_21C57D47C(v108, v109 + v110, type metadata accessor for DriverKitDriverApp);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_21C57D4E4(v108, type metadata accessor for DriverKitDriverApp);
        sub_21C57D4E4(v106, type metadata accessor for DriverKitDriverApp);
        sub_21C57D4E4(v109, type metadata accessor for DriverKitDriverApp);
        v111 = swift_getEnumCaseMultiPayload();
        sub_21C57D4E4(v109 + v110, type metadata accessor for DriverKitDriverApp);

        v46 = v195;
        if (v111 != 1)
        {
          goto LABEL_66;
        }

        goto LABEL_65;
      }

      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_21C57D4E4(v108, type metadata accessor for DriverKitDriverApp);
        sub_21C57D4E4(v196, type metadata accessor for DriverKitDriverApp);
        sub_21C57D4E4(v109 + v110, type metadata accessor for DriverKitDriverApp);
        sub_21C57D4E4(v109, type metadata accessor for SettingsApplicationRecord);
        v46 = v195;
        goto LABEL_50;
      }

      v112 = v188;
      sub_21C57D544(v109, v188, type metadata accessor for SettingsApplicationRecord);
      v113 = v109 + v110;
      v114 = v189;
      sub_21C57D544(v113, v189, type metadata accessor for SettingsApplicationRecord);
      v115 = *(v190 + 36);
      v116 = *(v112 + v115 + 8);
      v206 = *(v112 + v115);
      v207 = v116;
      v117 = (v114 + v115);
      v119 = *v117;
      v118 = v117[1];
      v204 = v119;
      v205 = v118;
      v120 = sub_21C58226C();
      sub_21C57D4E4(v114, type metadata accessor for SettingsApplicationRecord);
      sub_21C57D4E4(v112, type metadata accessor for SettingsApplicationRecord);
      sub_21C57D4E4(v108, type metadata accessor for DriverKitDriverApp);
      sub_21C57D4E4(v196, type metadata accessor for DriverKitDriverApp);

      if (v120)
      {
        v97 = v120;
      }

      v46 = v195;
    }

LABEL_65:
    if (v97 != -1)
    {
      goto LABEL_51;
    }

LABEL_66:
    if (!v197)
    {
      break;
    }

    v121 = *v89;
    v91 = *(v89 + 8);
    *v89 = v91;
    *(v89 + 8) = v121;
    v89 -= 8;
    if (__CFADD__(v90++, 1))
    {
      goto LABEL_51;
    }
  }

  __break(1u);
LABEL_160:
  __break(1u);
LABEL_161:
  __break(1u);
LABEL_162:
  __break(1u);
LABEL_163:
  __break(1u);
LABEL_164:
  __break(1u);
}

uint64_t sub_21C57C484(void **__dst, id *__src, id *a3, void **a4)
{
  v4 = a3;
  v5 = __src;
  v6 = __dst;
  v7 = __src - __dst;
  v8 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v8 = __src - __dst;
  }

  v9 = v8 >> 3;
  v10 = a3 - __src;
  v11 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v11 = a3 - __src;
  }

  v12 = v11 >> 3;
  if (v9 >= v11 >> 3)
  {
    v15 = a4;
    if (a4 != __src || &__src[v12] <= a4)
    {
      memmove(a4, __src, 8 * v12);
    }

    v42 = &v15[v12];
    if (v10 >= 8 && v5 > v6)
    {
      v39 = v6;
LABEL_27:
      v40 = v5;
      v26 = v5 - 1;
      v27 = v4 - 1;
      v28 = v42;
      do
      {
        v29 = v15;
        v30 = v27;
        v31 = v27 + 1;
        v32 = *--v28;
        v33 = v26;
        v34 = *v26;
        v35 = OBJC_IVAR____SwiftDriverApprovalState_driver;
        v41 = v32;
        v36 = v34;
        v37 = _s16DriverManagement0a3KitA0V1loiySbAC_ACtFZ_0(&v32[v35], &v34[v35]);

        if (v37)
        {
          v15 = v29;
          v4 = v30;
          if (v31 != v40)
          {
            *v30 = *v33;
          }

          if (v42 <= v29 || (v5 = v33, v33 <= v39))
          {
            v5 = v33;
            goto LABEL_38;
          }

          goto LABEL_27;
        }

        v15 = v29;
        if (v31 != v42)
        {
          *v30 = *v28;
        }

        v27 = v30 - 1;
        v42 = v28;
        v26 = v33;
      }

      while (v28 > v29);
      v42 = v28;
      v5 = v40;
    }
  }

  else
  {
    if (a4 != __dst || &__dst[v9] <= a4)
    {
      v14 = a4;
      memmove(a4, __dst, 8 * v9);
      a4 = v14;
      v5 = __src;
    }

    v42 = &a4[v9];
    v15 = a4;
    if (v7 >= 8 && v5 < v4)
    {
      while (1)
      {
        v16 = v4;
        v17 = v6;
        v18 = *v5;
        v19 = *v15;
        v20 = OBJC_IVAR____SwiftDriverApprovalState_driver;
        v21 = *v5;
        v22 = v19;
        LOBYTE(v19) = _s16DriverManagement0a3KitA0V1loiySbAC_ACtFZ_0(&v18[v20], &v19[v20]);

        if ((v19 & 1) == 0)
        {
          break;
        }

        v23 = v5;
        v24 = v17;
        v25 = v17 == v5++;
        if (!v25)
        {
          goto LABEL_16;
        }

LABEL_17:
        v6 = v24 + 1;
        if (v15 < v42)
        {
          v4 = v16;
          if (v5 < v16)
          {
            continue;
          }
        }

        goto LABEL_19;
      }

      v23 = v15;
      v24 = v17;
      v25 = v17 == v15++;
      if (v25)
      {
        goto LABEL_17;
      }

LABEL_16:
      *v24 = *v23;
      goto LABEL_17;
    }

LABEL_19:
    v5 = v6;
  }

LABEL_38:
  if (v5 != v15 || v5 >= (v15 + ((v42 - v15 + (v42 - v15 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v5, v15, 8 * (v42 - v15));
  }

  return 1;
}

uint64_t sub_21C57C770(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_21C57C7FC(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

void sub_21C57C810()
{
  v1 = v0;
  v2 = type metadata accessor for SettingsApplicationRecord(0);
  v31 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v30 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDEA98, &qword_21C584590);
  v4 = *v0;
  v5 = sub_21C58239C();
  v6 = v5;
  if (*(v4 + 16))
  {
    v29 = v1;
    v7 = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v8 + 8 * v9)
    {
      memmove(v7, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v32 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = *(v4 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = 16 * v20;
        v22 = (*(v4 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = v30;
        v26 = *(v31 + 72) * v20;
        sub_21C57D47C(*(v4 + 56) + v26, v30, type metadata accessor for SettingsApplicationRecord);
        v27 = v32;
        v28 = (*(v32 + 48) + v21);
        *v28 = v23;
        v28[1] = v24;
        sub_21C57D544(v25, *(v27 + 56) + v26, type metadata accessor for SettingsApplicationRecord);
        sub_21C568474(v23, v24);
      }

      while (v15);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        v1 = v29;
        v6 = v32;
        goto LABEL_18;
      }

      v19 = *(v8 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
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
}

uint64_t sub_21C57CA6C(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_21C58238C();
  }

  return sub_21C5822FC();
}

unint64_t sub_21C57CAD0(unint64_t a1, uint64_t a2)
{
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_17:
    v5 = sub_21C58238C();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  while (1)
  {
    if (v5 == v6)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x21CF0C250](v6, a1);
    }

    else
    {
      if (v6 >= *(v4 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v7 = *(a1 + 8 * v6 + 32);
      swift_unknownObjectRetain();
    }

    swift_unknownObjectRelease();
    if (v7 == a2)
    {
      return v6;
    }

    if (__OFADD__(v6++, 1))
    {
      goto LABEL_16;
    }
  }
}

uint64_t sub_21C57CBB8(unint64_t *a1, uint64_t a2)
{
  v7 = *a1;
  v8 = sub_21C57CAD0(*a1, a2);
  v10 = v8;
  if (v2)
  {
    return v10;
  }

  if (v9)
  {
    if (v7 >> 62)
    {
      return sub_21C58238C();
    }

    return *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  while (1)
  {
    if (v7 >> 62)
    {
      if (v11 == sub_21C58238C())
      {
        return v10;
      }
    }

    else if (v11 == *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v10;
    }

    if ((v7 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x21CF0C250](v11, v7);
      goto LABEL_17;
    }

    if ((v11 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v11 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_42;
    }

    v13 = *(v7 + 8 * v11 + 32);
    swift_unknownObjectRetain();
LABEL_17:
    swift_unknownObjectRelease();
    if (v13 != a2)
    {
      if (v10 != v11)
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v3 = MEMORY[0x21CF0C250](v10, v7);
          v14 = MEMORY[0x21CF0C250](v11, v7);
        }

        else
        {
          if ((v10 & 0x8000000000000000) != 0)
          {
            goto LABEL_46;
          }

          v15 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v10 >= v15)
          {
            goto LABEL_47;
          }

          if (v11 >= v15)
          {
            goto LABEL_48;
          }

          v3 = *(v7 + 32 + 8 * v10);
          v14 = *(v7 + 32 + 8 * v11);
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
        }

        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v7 & 0x8000000000000000) != 0 || (v7 & 0x4000000000000000) != 0)
        {
          v7 = sub_21C57CA6C(v7);
          v16 = (v7 >> 62) & 1;
        }

        else
        {
          LODWORD(v16) = 0;
        }

        v4 = v7 & 0xFFFFFFFFFFFFFF8;
        *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v10 + 0x20) = v14;
        swift_unknownObjectRelease();
        if ((v7 & 0x8000000000000000) != 0 || v16)
        {
          v7 = sub_21C57CA6C(v7);
          v4 = v7 & 0xFFFFFFFFFFFFFF8;
          if ((v11 & 0x8000000000000000) != 0)
          {
LABEL_39:
            __break(1u);
            return v10;
          }
        }

        else if ((v11 & 0x8000000000000000) != 0)
        {
          goto LABEL_39;
        }

        if (v11 >= *(v4 + 16))
        {
          goto LABEL_45;
        }

LABEL_8:
        *(v4 + 8 * v11 + 32) = v3;
        swift_unknownObjectRelease();
        *a1 = v7;
      }

      v12 = __OFADD__(v10++, 1);
      if (v12)
      {
        goto LABEL_44;
      }
    }

    v12 = __OFADD__(v11++, 1);
    if (v12)
    {
      goto LABEL_43;
    }
  }

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
  return sub_21C58238C();
}

uint64_t sub_21C57CE00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDEAB0, &qword_21C5845F0);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_21C58238C();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_21C58238C();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_21C57CF0C(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a2;
    v5 = a1;
    v6 = *v4;
    v7 = *v4 >> 62;
    if (!v7)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_21C58238C();
  if (result < v3)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v3, v5))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = v5 - v3;
  if (__OFSUB__(0, v3 - v5))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v7)
  {
    v10 = sub_21C58238C();
  }

  else
  {
    v10 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = __OFADD__(v10, v9);
  result = v10 + v9;
  if (v11)
  {
    goto LABEL_18;
  }

  sub_21C57AA44(result, 1);

  return sub_21C57CE00(v5, v3, 0);
}

uint64_t sub_21C57CFE4(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_21C57D07C()
{
  result = qword_28120D228;
  if (!qword_28120D228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28120D228);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_16DriverManagement0A17KitSettingsFilterO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_21C57D0F4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21C57D148(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_21C57D1A4(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for DriverManager(uint64_t a1)
{
  result = qword_28120D418;
  if (!qword_28120D418)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C57D228(uint64_t a1)
{
  sub_21C57D2E8(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_21C57D2E8(uint64_t a1)
{
  if (!qword_28120D240)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDDEA40, &qword_21C5843F0);
    v1 = sub_21C581FDC();
    if (!v2)
    {
      atomic_store(v1, &qword_28120D240);
    }
  }
}

uint64_t sub_21C57D34C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21C57D3B0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_21C57D418(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SettingsApplicationRecord(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C57D47C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C57D4E4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21C57D544(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C57D5B4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_21C57D614(id a1, char a2)
{
  if (a2)
  {
  }
}

id sub_21C57D634(id result, char a2)
{
  if (a2)
  {
    return result;
  }

  return result;
}

uint64_t sub_21C57D6E0()
{
  v1 = v0;
  v2 = type metadata accessor for SettingsApplicationRecord(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DriverKitDriverApp(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DriverKitDriverSource(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21C57DDCC(v1, v11);
  if ((*(v6 + 48))(v11, 1, v5) == 1)
  {
    return 0;
  }

  sub_21C57DEB0(v11, v8, type metadata accessor for DriverKitDriverApp);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return *v8;
  }

  sub_21C57DEB0(v8, v4, type metadata accessor for SettingsApplicationRecord);
  v13 = &v4[*(v2 + 32)];
  v14 = *v13;
  sub_21C568474(*v13, *(v13 + 1));
  sub_21C57DF18(v4, type metadata accessor for SettingsApplicationRecord);
  return v14;
}

unint64_t DriverKitDriverSource.description.getter()
{
  v1 = v0;
  v2 = type metadata accessor for DriverKitDriverApp(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DriverKitDriverSource(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21C57DDCC(v1, v8);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    return 0x6150207473726946;
  }

  sub_21C57DEB0(v8, v5, type metadata accessor for DriverKitDriverApp);
  v12 = 0;
  v13 = 0xE000000000000000;
  sub_21C5822DC();

  v12 = 0xD000000000000014;
  v13 = 0x800000021C586750;
  v10 = DriverKitDriverApp.description.getter();
  MEMORY[0x21CF0C040](v10);

  v9 = v12;
  sub_21C57DF18(v5, type metadata accessor for DriverKitDriverApp);
  return v9;
}

BOOL _s16DriverManagement0a3KitA6SourceO21__derived_enum_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DriverKitDriverApp(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DriverKitDriverSource(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDE840, &unk_21C582F70);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v19 - v13;
  v15 = *(v12 + 56);
  sub_21C57DDCC(a1, &v19 - v13);
  sub_21C57DDCC(a2, &v14[v15]);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    sub_21C57DDCC(v14, v10);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      sub_21C57DEB0(&v14[v15], v7, type metadata accessor for DriverKitDriverApp);
      v17 = _s16DriverManagement0a3KitA3AppO2eeoiySbAC_ACtFZ_0(v10, v7);
      sub_21C57DF18(v7, type metadata accessor for DriverKitDriverApp);
      sub_21C57DF18(v10, type metadata accessor for DriverKitDriverApp);
      sub_21C57DF18(v14, type metadata accessor for DriverKitDriverSource);
      return v17;
    }

    sub_21C57DF18(v10, type metadata accessor for DriverKitDriverApp);
    goto LABEL_6;
  }

  if (v16(&v14[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_21C56711C(v14);
    return 0;
  }

  sub_21C57DF18(v14, type metadata accessor for DriverKitDriverSource);
  return 1;
}

uint64_t type metadata accessor for DriverKitDriverSource(uint64_t a1)
{
  result = qword_28120D3E8;
  if (!qword_28120D3E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21C57DDCC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DriverKitDriverSource(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C57DE58(uint64_t a1)
{
  v1 = type metadata accessor for DriverKitDriverApp(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_21C57DEB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C57DF18(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *DriverKitDaemonClient.__allocating_init()()
{
  result = swift_allocObject();
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

uint64_t DriverKitDaemonClient.registerForApprovalsChangeNotification(_:)(uint64_t a1, uint64_t a2)
{
  sub_21C57FDB8(MEMORY[0x277D84F90]);
  v4 = sub_21C58203C();

  _CFXPCCreateXPCObjectFromCFObject();

  sub_21C57EA14();
  sub_21C58209C();
  sub_21C58209C();

  xpc_set_event();

  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v9[4] = sub_21C57FECC;
  v9[5] = v5;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_21C57FBF4;
  v9[3] = &block_descriptor_0;
  v6 = _Block_copy(v9);

  v7 = sub_21C58209C();
  xpc_set_event_stream_handler((v7 + 32), 0, v6);

  _Block_release(v6);
  return swift_unknownObjectRelease();
}

Swift::Void __swiftcall DriverKitDaemonClient.unregisterForApprovalsChangeNotification()()
{
  sub_21C57EA14();
  sub_21C58209C();
  sub_21C58209C();

  xpc_set_event();
}

uint64_t DriverKitDaemonClient.getApprovalStateForSettings(_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_21C57E6C0();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v16 = sub_21C57FEEC;
  v17 = v5;
  aBlock = MEMORY[0x277D85DD0];
  v13 = 1107296256;
  v14 = sub_21C57EEBC;
  v15 = &block_descriptor_6;
  v6 = _Block_copy(&aBlock);

  v7 = [v4 remoteObjectProxyWithErrorHandler_];
  _Block_release(v6);

  sub_21C58227C();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDEAC0, &qword_21C584718);
  swift_dynamicCast();
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v16 = sub_21C57FEF4;
  v17 = v8;
  aBlock = MEMORY[0x277D85DD0];
  v13 = 1107296256;
  v14 = sub_21C57F7A4;
  v15 = &block_descriptor_12;
  v9 = _Block_copy(&aBlock);

  [v11 getApprovalStateForSettingsWithReplyBlock_];
  _Block_release(v9);
  return swift_unknownObjectRelease();
}

uint64_t DriverKitDaemonClient.enqueueApprovalStateUpdate(request:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_21C57E6C0();
  v27 = sub_21C57FEFC;
  v28 = a1;
  aBlock = MEMORY[0x277D85DD0];
  v24 = 1107296256;
  v25 = sub_21C57EEBC;
  v26 = &block_descriptor_15;
  v5 = _Block_copy(&aBlock);

  v6 = [v4 remoteObjectProxyWithErrorHandler_];
  _Block_release(v5);

  sub_21C58227C();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDEAC0, &qword_21C584718);
  swift_dynamicCast();
  sub_21C581E5C();
  swift_allocObject();
  sub_21C581E4C();
  v7 = *(a1 + 24);
  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  v10 = *(a1 + 48);
  aBlock = *(a1 + 16);
  v24 = v7;
  v25 = v9;
  v26 = v8;
  LOBYTE(v27) = v10;

  sub_21C57029C(v9, v8);
  sub_21C571B20();
  v11 = sub_21C581E3C();
  if (v2)
  {
    v13 = v25;
    v14 = v26;

    sub_21C565BD8(v13, v14);
    swift_unknownObjectRelease();
  }

  else
  {
    v16 = v25;
    v17 = v26;
    v18 = v11;
    v19 = v12;

    sub_21C565BD8(v16, v17);

    v20 = sub_21C581E9C();
    v27 = sub_21C57FF04;
    v28 = a1;
    aBlock = MEMORY[0x277D85DD0];
    v24 = 1107296256;
    v25 = sub_21C57F9E8;
    v26 = &block_descriptor_18;
    v21 = _Block_copy(&aBlock);

    [v22 enqueueApprovalStateUpdateWithEntry:v20 replyBlock:v21];
    _Block_release(v21);

    sub_21C567950(v18, v19);
    return swift_unknownObjectRelease();
  }
}

id sub_21C57E6C0()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 16);
LABEL_5:
    v11 = v1;
    return v2;
  }

  v3 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v4 = sub_21C58205C();
  v5 = [v3 initWithMachServiceName:v4 options:4096];

  v17 = sub_21C580300;
  v18 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v14 = 1107296256;
  v15 = sub_21C57D650;
  v16 = &block_descriptor_48;
  v6 = _Block_copy(&aBlock);
  [v5 setInterruptionHandler_];
  _Block_release(v6);
  v17 = sub_21C580300;
  v18 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v14 = 1107296256;
  v15 = sub_21C57D650;
  v16 = &block_descriptor_51;
  v7 = _Block_copy(&aBlock);
  [v5 setInvalidationHandler_];
  _Block_release(v7);
  v8 = [objc_opt_self() interfaceWithProtocol_];
  [v5 setRemoteObjectInterface_];

  v9 = [v5 remoteObjectInterface];
  if (v9)
  {

    [v5 resume];
    v10 = *(v0 + 16);
    *(v0 + 16) = v5;
    v2 = v5;

    v1 = 0;
    goto LABEL_5;
  }

  result = sub_21C58237C();
  __break(1u);
  return result;
}

void sub_21C57E934()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDE850, &unk_21C584490);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_21C582F80;
  *(v0 + 56) = MEMORY[0x277D837D0];
  *(v0 + 64) = sub_21C57D07C();
  *(v0 + 32) = 0xD000000000000022;
  *(v0 + 40) = 0x800000021C586720;
  sub_21C5801D4();
  v2 = sub_21C58224C();
  v1 = sub_21C5821DC();
  sub_21C581F1C("Connection to service %{public}s interrupted", 44, 2, &dword_21C564000, v2, v1, v0);
}

unint64_t sub_21C57EA14()
{
  v1 = v0;
  v2 = sub_21C581F0C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 32))
  {
    v6 = *(v0 + 24);
  }

  else
  {
    v10 = 0;
    v11 = 0xE000000000000000;
    sub_21C5822DC();

    v10 = 0xD00000000000002BLL;
    v11 = 0x800000021C586980;
    sub_21C581EFC();
    sub_21C580280();
    v7 = sub_21C58249C();
    MEMORY[0x21CF0C040](v7);

    (*(v3 + 8))(v5, v2);
    v6 = v10;
    v8 = v11;
    *(v1 + 24) = v10;
    *(v1 + 32) = v8;
  }

  return v6;
}

void *DriverKitDaemonClient.init()()
{
  result = v0;
  v0[2] = 0;
  v0[3] = 0;
  v0[4] = 0;
  return result;
}

Swift::String_optional __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DriverKitDaemonClient.dumpState()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  v1 = (v0 + 16);
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  v3 = sub_21C57E6C0();
  v17 = sub_21C580330;
  v18 = v0;
  aBlock = MEMORY[0x277D85DD0];
  v14 = 1107296256;
  v15 = sub_21C57EEBC;
  v16 = &block_descriptor_27;
  v4 = _Block_copy(&aBlock);

  v5 = [v3 synchronousRemoteObjectProxyWithErrorHandler_];
  _Block_release(v4);

  sub_21C58227C();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDEAC0, &qword_21C584718);
  if (swift_dynamicCast())
  {
    v3 = v12;
    v6 = swift_allocObject();
    *(v6 + 16) = v0;
    *(v6 + 24) = v2;
    v17 = sub_21C580334;
    v18 = v6;
    aBlock = MEMORY[0x277D85DD0];
    v14 = 1107296256;
    v15 = sub_21C57EF24;
    v16 = &block_descriptor_33;
    v7 = _Block_copy(&aBlock);

    [v12 dumpStateWithReplyBlock_];
    _Block_release(v7);
    swift_beginAccess();
    v1 = *(v0 + 16);
    if (v1)
    {
      swift_willThrow();
      v1;

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
      swift_beginAccess();
      v3 = *(v2 + 16);
      v1 = *(v2 + 24);
    }
  }

  else
  {
    swift_beginAccess();
    v8 = *v1;
    if (*v1)
    {
      swift_willThrow();
      v8;
    }

    else
    {
      [objc_allocWithZone(MEMORY[0x277CCA9B8]) init];
      swift_willThrow();
    }
  }

  v9 = v3;
  v10 = v1;
  result.value._object = v10;
  result.value._countAndFlagsBits = v9;
  return result;
}

void sub_21C57EEBC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_21C57EF24(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_21C58206C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a3;
  v4(v5, v7, a3);
}

Swift::String_optional __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DriverKitDaemonClient.launchDriver(bundleID:userServerName:tag:)(Swift::String bundleID, Swift::String userServerName, Swift::String_optional tag)
{
  object = tag.value._object;
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  v5 = (v4 + 16);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  v7 = sub_21C57E6C0();
  v23 = sub_21C57FF0C;
  v24 = v4;
  aBlock = MEMORY[0x277D85DD0];
  v20 = 1107296256;
  v21 = sub_21C57EEBC;
  v22 = &block_descriptor_38;
  v8 = _Block_copy(&aBlock);

  v9 = [v7 synchronousRemoteObjectProxyWithErrorHandler_];
  _Block_release(v8);

  sub_21C58227C();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDEAC0, &qword_21C584718);
  if (swift_dynamicCast())
  {
    v7 = v18;
    v10 = sub_21C58205C();
    v11 = sub_21C58205C();
    if (object)
    {
      object = sub_21C58205C();
    }

    v12 = swift_allocObject();
    *(v12 + 16) = v4;
    *(v12 + 24) = v6;
    v23 = sub_21C57FF68;
    v24 = v12;
    aBlock = MEMORY[0x277D85DD0];
    v20 = 1107296256;
    v21 = sub_21C57EF24;
    v22 = &block_descriptor_44;
    v13 = _Block_copy(&aBlock);

    [v18 launchDriverWithBundleID:v10 userServerName:v11 tag:object replyBlock:v13];
    _Block_release(v13);

    swift_beginAccess();
    v14 = *(v4 + 16);
    if (v14)
    {
      swift_willThrow();
      v14;

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
      swift_beginAccess();
      v14 = *(v6 + 16);
      v7 = *(v6 + 24);
    }
  }

  else
  {
    swift_beginAccess();
    v14 = *v5;
    if (*v5)
    {
      swift_willThrow();
      v14;
    }

    else
    {
      [objc_allocWithZone(MEMORY[0x277CCA9B8]) init];
      swift_willThrow();
    }
  }

  v15 = v14;
  v16 = v7;
  result.value._object = v16;
  result.value._countAndFlagsBits = v15;
  return result;
}

void sub_21C57F348(void *a1, uint64_t a2)
{
  v4 = sub_21C5821CC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDE850, &unk_21C584490);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_21C582F80;
  v6 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDEA70, &qword_21C584770);
  v7 = sub_21C58208C();
  v9 = v8;
  *(v5 + 56) = MEMORY[0x277D837D0];
  *(v5 + 64) = sub_21C57D07C();
  *(v5 + 32) = v7;
  *(v5 + 40) = v9;
  sub_21C5801D4();
  v10 = sub_21C58224C();
  sub_21C581F2C(v4, &dword_21C564000, v10, "Remote object proxy error: %{public}s", 37, 2, v5);

  v11 = sub_21C581E6C();
  swift_beginAccess();
  v12 = *(a2 + 16);
  *(a2 + 16) = v11;
}

uint64_t sub_21C57F47C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  v10 = *(a4 + 16);
  *(a4 + 16) = a3;
  v11 = a3;

  swift_beginAccess();
  *(a5 + 16) = a1;
  *(a5 + 24) = a2;
}

uint64_t sub_21C57F514(void *a1, uint64_t (*a2)(void *, uint64_t))
{
  v4 = sub_21C5821CC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDE850, &unk_21C584490);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_21C582F80;
  v6 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDEA70, &qword_21C584770);
  v7 = sub_21C58208C();
  v9 = v8;
  *(v5 + 56) = MEMORY[0x277D837D0];
  *(v5 + 64) = sub_21C57D07C();
  *(v5 + 32) = v7;
  *(v5 + 40) = v9;
  sub_21C5801D4();
  v10 = sub_21C58224C();
  sub_21C581F2C(v4, &dword_21C564000, v10, "Remote object proxy error: %{public}s", 37, 2, v5);

  return a2(a1, 1);
}

void sub_21C57F63C(uint64_t a1, unint64_t a2, void *a3, void (*a4)(id, uint64_t))
{
  if (a2 >> 60 == 15)
  {
    if (a3)
    {
      v9 = a3;
    }

    else
    {
      v7 = [objc_allocWithZone(MEMORY[0x277CCA9B8]) init];
      a3 = 0;
      v9 = v7;
    }

    v8 = a3;
    a4(v9, 1);
  }

  else
  {
    sub_21C581E2C();
    swift_allocObject();
    sub_21C568474(a1, a2);
    sub_21C581E1C();
    sub_21C580220();
    sub_21C581E0C();

    a4(v10, 0);
    sub_21C565BD8(a1, a2);
    sub_21C580274(v10, 0);
  }
}

uint64_t sub_21C57F7A4(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {

    v6 = v4;
    v4 = sub_21C581EAC();
    v8 = v7;
  }

  else
  {

    v8 = 0xF000000000000000;
  }

  v9 = a3;
  v5(v4, v8, a3);

  sub_21C565BD8(v4, v8);
}

void sub_21C57F850(void *a1, uint64_t a2)
{
  v4 = sub_21C5821CC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDE850, &unk_21C584490);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_21C582F80;
  v6 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDEA70, &qword_21C584770);
  v7 = sub_21C58208C();
  v9 = v8;
  *(v5 + 56) = MEMORY[0x277D837D0];
  *(v5 + 64) = sub_21C57D07C();
  *(v5 + 32) = v7;
  *(v5 + 40) = v9;
  sub_21C5801D4();
  v10 = sub_21C58224C();
  sub_21C581F2C(v4, &dword_21C564000, v10, "Remote object proxy error: %{public}s", 37, 2, v5);

  v11 = *(a2 + 56);
  v12 = sub_21C581E6C();
  v11(v12, 1);
}

void sub_21C57F978(void *a1, uint64_t a2)
{
  v3 = a1 != 0;
  v4 = *(a2 + 56);
  v5 = a1;
  v4(a1, v3);
  sub_21C57D614(a1, v3);

  sub_21C57D614(a1, v3);
}

void sub_21C57F9E8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

void sub_21C57FA54(void *a1, void (*a2)(uint64_t))
{
  v4 = sub_21C58209C();
  v5 = xpc_dictionary_get_BOOL(a1, (v4 + 32));

  if (v5)
  {
    a2(v6);
  }

  else if (xpc_dictionary_create_reply(a1))
  {
    xpc_dictionary_send_reply();

    swift_unknownObjectRelease();
  }

  else
  {
    v7 = sub_21C5821CC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDE850, &unk_21C584490);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_21C582F80;
    *(v8 + 56) = MEMORY[0x277D837D0];
    *(v8 + 64) = sub_21C57D07C();
    *(v8 + 32) = 0xD00000000000002BLL;
    *(v8 + 40) = 0x800000021C5862A0;
    sub_21C5801D4();
    v9 = sub_21C58224C();
    sub_21C581F2C(v7, &dword_21C564000, v9, "XPC Event %{public}s: Failed to create reply for event", 54, 2, v8);
  }
}

uint64_t sub_21C57FBF4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t DriverKitDaemonClient.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

unint64_t sub_21C57FCBC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDEA18, &unk_21C584780);
    v3 = sub_21C5823BC();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_21C56D7CC(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
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

unint64_t sub_21C57FDB8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDEAD0, &qword_21C584778);
    v3 = sub_21C5823BC();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_21C56D7CC(v5, v6);
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

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_29Tm()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

unint64_t sub_21C57FFA8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDEAC8, &qword_21C584768);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v19 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDEA98, &qword_21C584590);
    v7 = sub_21C5823BC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_21C580164(v9, v5);
      result = sub_21C56D7F8(*v5, v5[1]);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 16 * result) = *v5;
      v14 = v7[7];
      v15 = type metadata accessor for SettingsApplicationRecord(0);
      result = sub_21C5679A4(v5 + v8, v14 + *(*(v15 - 8) + 72) * v13);
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

uint64_t sub_21C580164(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDEAC8, &qword_21C584768);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_21C5801D4()
{
  result = qword_28120D1E0;
  if (!qword_28120D1E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28120D1E0);
  }

  return result;
}

unint64_t sub_21C580220()
{
  result = qword_28120D340;
  if (!qword_28120D340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28120D340);
  }

  return result;
}

void sub_21C580274(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

unint64_t sub_21C580280()
{
  result = qword_28120D4D8;
  if (!qword_28120D4D8)
  {
    sub_21C581F0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28120D4D8);
  }

  return result;
}

uint64_t DriverApprovalState.approvalState.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21C581FBC(&v1);

  return v1;
}

uint64_t DriverApprovalState.approvalState.setter(char a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  return sub_21C581FCC();
}

uint64_t DriverApprovalState.updateStatus.setter(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  return sub_21C581FCC();
}

uint64_t sub_21C5804C8@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21C581FBC(&v4);

  *a2 = v4;
  return result;
}

uint64_t sub_21C580548(char *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_21C581FCC();
}

uint64_t (*DriverApprovalState.approvalState.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_21C581FAC();
  return sub_21C58065C;
}

uint64_t DriverApprovalState.$approvalState.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDEAE0, &qword_21C584828);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDEAD8, &qword_21C584820);
  sub_21C581F9C();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*DriverApprovalState.$approvalState.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDEAE0, &qword_21C584828);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____SwiftDriverApprovalState__approvalState;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDEAD8, &qword_21C584820);
  sub_21C581F8C();
  swift_endAccess();
  return sub_21C580924;
}

uint64_t DriverApprovalState.updateStatus.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21C581FBC(&v1);

  return v1;
}

uint64_t sub_21C5809CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DriverKitDriver(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t (*DriverApprovalState.updateStatus.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_21C581FAC();
  return sub_21C581938;
}

void sub_21C580AD4(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t sub_21C580B58(void *a1, uint64_t *a2, uint64_t *a3)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  sub_21C581F8C();
  return swift_endAccess();
}

uint64_t DriverApprovalState.$updateStatus.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDDEAF0, &qword_21C584838);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDEAE8, &qword_21C584830);
  sub_21C581F9C();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*DriverApprovalState.$updateStatus.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDDEAF0, &qword_21C584838);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____SwiftDriverApprovalState__updateStatus;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDDEAE8, &qword_21C584830);
  sub_21C581F8C();
  swift_endAccess();
  return sub_21C58193C;
}

void sub_21C580E78(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[13];
  v11 = v3[14];
  v7 = v3[11];
  v6 = v3[12];
  v8 = v3[10];
  if (a2)
  {
    v4(v3[12], v5, v3[10]);
    swift_beginAccess();
    sub_21C581F9C();
    swift_endAccess();
    v9 = *(v7 + 8);
    v9(v5, v8);
    v10 = v11;
    v9(v11, v8);
  }

  else
  {
    swift_beginAccess();
    sub_21C581F9C();
    swift_endAccess();
    v10 = v11;
    (*(v7 + 8))(v11, v8);
  }

  free(v10);
  free(v5);
  free(v6);

  free(v3);
}

uint64_t DriverApprovalState.displayName.getter()
{
  v1 = (v0 + OBJC_IVAR____SwiftDriverApprovalState_driver);
  v2 = (v1 + *(type metadata accessor for DriverKitDriver(0) + 24));
  if (v2[1])
  {
    v3 = *v2;
  }

  else
  {
    v3 = *v1;
  }

  return v3;
}

uint64_t DriverApprovalState.usageText.getter()
{
  v1 = v0 + OBJC_IVAR____SwiftDriverApprovalState_driver;
  v2 = *(v1 + *(type metadata accessor for DriverKitDriver(0) + 28));

  return v2;
}

Swift::Bool __swiftcall DriverApprovalState.updatePending()()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21C581FBC(&v2);

  v0 = v2;
  if (v2)
  {
  }

  return v0 != 0;
}

Swift::Bool __swiftcall DriverApprovalState.driverIsApproved()()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21C581FBC(&v3);

  if (v3)
  {
    v0 = *(v3 + 48);
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21C581FBC(&v2);

    v0 = v2;
  }

  return v0 == 1;
}

Swift::String __swiftcall DriverApprovalState.bundleIdentifier()()
{
  v1 = *(v0 + OBJC_IVAR____SwiftDriverApprovalState_driver);
  v2 = *(v0 + OBJC_IVAR____SwiftDriverApprovalState_driver + 8);

  v3 = v1;
  v4 = v2;
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

id DriverApprovalState.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DriverApprovalState.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t DriverApprovalState.id.getter()
{
  v3 = *(v0 + OBJC_IVAR____SwiftDriverApprovalState_driver);

  MEMORY[0x21CF0C040](2108704, 0xE300000000000000);
  type metadata accessor for DriverKitDriver(0);
  v1 = DriverKitDriverSource.description.getter();
  MEMORY[0x21CF0C040](v1);

  return v3;
}

uint64_t sub_21C581688@<X0>(void *a1@<X8>)
{
  v3 = (*v1 + OBJC_IVAR____SwiftDriverApprovalState_driver);
  v6 = *v3;
  v7 = v3[1];

  MEMORY[0x21CF0C040](2108704, 0xE300000000000000);
  type metadata accessor for DriverKitDriver(0);
  v4 = DriverKitDriverSource.description.getter();
  MEMORY[0x21CF0C040](v4);

  *a1 = v6;
  a1[1] = v7;
  return result;
}

uint64_t type metadata accessor for DriverApprovalState(uint64_t a1)
{
  result = qword_28120D4B8;
  if (!qword_28120D4B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C58176C(uint64_t a1)
{
  type metadata accessor for DriverKitDriver(319);
  if (v1 <= 0x3F)
  {
    sub_21C581890(319, qword_28120D250, &type metadata for ApprovalState);
    if (v2 <= 0x3F)
    {
      sub_21C581890(319, &qword_28120D248, &type metadata for ApprovalStateUpdateStatus);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_21C581890(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_21C581FDC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_21C5818DC(uint64_t a1)
{
  v2 = type metadata accessor for DriverKitDriver(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SettingsApplicationRecord.init(bundleIdentifier:url:uniqueInstallIdentifier:driverExtensionPaths:installSessionIdentifier:localizedName:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11)
{
  *a9 = a1;
  *(a9 + 1) = a2;
  v17 = type metadata accessor for SettingsApplicationRecord(0);
  v18 = v17[5];
  v19 = sub_21C581E8C();
  result = (*(*(v19 - 8) + 32))(&a9[v18], a3, v19);
  v21 = &a9[v17[6]];
  *v21 = a4;
  *(v21 + 1) = a5;
  *&a9[v17[7]] = a6;
  v22 = &a9[v17[8]];
  *v22 = a7;
  *(v22 + 1) = a8;
  v23 = &a9[v17[9]];
  *v23 = a10;
  *(v23 + 1) = a11;
  return result;
}

uint64_t type metadata accessor for SettingsApplicationRecord(uint64_t a1)
{
  result = qword_28120D330;
  if (!qword_28120D330)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SettingsApplicationRecord.bundleIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SettingsApplicationRecord.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SettingsApplicationRecord(0) + 20);
  v4 = sub_21C581E8C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SettingsApplicationRecord.uniqueInstallIdentifier.getter()
{
  v1 = v0 + *(type metadata accessor for SettingsApplicationRecord(0) + 24);
  v2 = *v1;
  sub_21C57029C(*v1, *(v1 + 8));
  return v2;
}

uint64_t SettingsApplicationRecord.driverExtensionPaths.getter()
{
  type metadata accessor for SettingsApplicationRecord(0);
}

uint64_t SettingsApplicationRecord.installSessionIdentifier.getter()
{
  v1 = v0 + *(type metadata accessor for SettingsApplicationRecord(0) + 32);
  v2 = *v1;
  sub_21C568474(*v1, *(v1 + 8));
  return v2;
}

uint64_t SettingsApplicationRecord.localizedName.getter()
{
  v1 = *(v0 + *(type metadata accessor for SettingsApplicationRecord(0) + 36));

  return v1;
}

void sub_21C581C40(uint64_t a1)
{
  sub_21C581D2C(319, &qword_28120D220, MEMORY[0x277D837D0]);
  if (v1 <= 0x3F)
  {
    sub_21C581E8C();
    if (v2 <= 0x3F)
    {
      sub_21C581D2C(319, &qword_28120D4E0, MEMORY[0x277CC9318]);
      if (v3 <= 0x3F)
      {
        sub_21C581D78(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_21C581D2C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_21C58225C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_21C581D78(uint64_t a1)
{
  if (!qword_28120D208)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDDE848, &qword_21C582F90);
    v1 = sub_21C58225C();
    if (!v2)
    {
      atomic_store(v1, &qword_28120D208);
    }
  }
}