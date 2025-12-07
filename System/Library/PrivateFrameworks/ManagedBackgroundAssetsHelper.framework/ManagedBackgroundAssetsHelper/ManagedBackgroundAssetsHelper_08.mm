uint64_t sub_1D30C52BC@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v156 = a4;
  v155 = a3;
  v180 = a2;
  v149 = a5;
  v6 = type metadata accessor for FilePath.ResolutionError(0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v162 = (&v142 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v142 - v9;
  v170 = sub_1D30E8D9C();
  v150 = *(v170 - 8);
  v11 = MEMORY[0x1EEE9AC00](v170);
  v154 = &v142 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v161 = &v142 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v159 = &v142 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v158 = &v142 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v169 = &v142 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749940, &qword_1D30F1B10);
  v21 = MEMORY[0x1EEE9AC00](v20 - 8);
  v175 = &v142 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v176 = &v142 - v23;
  v181 = sub_1D30E8D5C();
  v153 = *(v181 - 8);
  v24 = MEMORY[0x1EEE9AC00](v181);
  v157 = &v142 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v28 = &v142 - v27;
  v29 = MEMORY[0x1EEE9AC00](v26);
  v174 = &v142 - v30;
  MEMORY[0x1EEE9AC00](v29);
  v179 = &v142 - v31;
  v32 = type metadata accessor for AssetPackRecord.StaticRepresentation(0);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v34 = &v142 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A000, &qword_1D30F4C38);
  MEMORY[0x1EEE9AC00](v35 - 8);
  v187 = &v142 - v36;
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A008, &qword_1D30F4C40);
  v188 = *(v190 - 1);
  MEMORY[0x1EEE9AC00](v190);
  v38 = &v142 - v37;
  if (qword_1EE3152C8 != -1)
  {
LABEL_48:
    swift_once();
  }

  v39 = sub_1D30E8B3C();
  v40 = __swift_project_value_buffer(v39, qword_1EE314B60);
  v41 = sub_1D30E928C();
  sub_1D30E5940(a1, &v195);
  v177 = v40;
  v42 = sub_1D30E8B1C();
  sub_1D30E599C(a1);
  v43 = os_log_type_enabled(v42, v41);
  v160 = v28;
  v186 = a1;
  v147 = v6;
  v151 = v34;
  v146 = v10;
  if (v43)
  {
    v10 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v198 = v28;
    *v10 = 136446466;
    v44 = a1[1];
    v195 = *a1;
    v196 = v44;
    v197 = a1[2];
    sub_1D30E5940(a1, &v192);
    v45 = AssetPackRecord.GlobalID.description.getter();
    v47 = v46;

    v48 = sub_1D2FFEA04(v45, v47, &v198);

    *(v10 + 4) = v48;
    *(v10 + 6) = 2082;
    *(v10 + 14) = sub_1D2FFEA04(0x6F6974636E754628, 0xEA0000000000296ELL, &v198);
    _os_log_impl(&dword_1D2FD9000, v42, v41, "With record of asset pack with global ID: %{public}s body: %{public}s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D38B3760](v28, -1, -1);
    MEMORY[0x1D38B3760](v10, -1, -1);
  }

  a1 = *(v180 + 32);
  sub_1D30E8E7C();
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A010, &unk_1D30F4C48);
  (*(*(v49 - 8) + 56))(v187, 1, 1, v49);
  v50 = type metadata accessor for AssetPackRecord(0);
  v51 = sub_1D3045A34(&qword_1EE313610, type metadata accessor for AssetPackRecord, &protocol conformance descriptor for AssetPackRecord);
  v52 = MEMORY[0x1E69E7CC0];
  sub_1D30E8EBC();
  v53 = v191;
  v54 = sub_1D30E8E1C();
  v187 = v53;
  if (!v53)
  {
    v56 = v54;
    v189 = v51;
    v172 = v50;
    v171 = a1;
    (*(v188 + 8))(v38, v190);

    v192 = v52;
    if (v56 >> 62)
    {
      v34 = sub_1D30E958C();
      v6 = v189;
      if (v34)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v34 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v6 = v189;
      if (v34)
      {
LABEL_9:
        v57 = 0;
        v185 = v56 & 0xC000000000000001;
        v184 = v56 & 0xFFFFFFFFFFFFFF8;
        v182 = v56;
        v183 = v34;
        while (1)
        {
          if (v185)
          {
            v38 = MEMORY[0x1D38B29E0](v57, v56);
            v58 = (v57 + 1);
            if (__OFADD__(v57, 1))
            {
LABEL_45:
              __break(1u);
LABEL_46:
              v67 = v192;
              goto LABEL_51;
            }
          }

          else
          {
            if (v57 >= *(v184 + 16))
            {
              __break(1u);
              goto LABEL_48;
            }

            v38 = *(v56 + 8 * v57 + 32);

            v58 = (v57 + 1);
            if (__OFADD__(v57, 1))
            {
              goto LABEL_45;
            }
          }

          v191 = v58;
          sub_1D30E91FC();
          v190 = sub_1D30E91EC();
          sub_1D30E91AC();
          if ((swift_task_isCurrentExecutor() & 1) == 0)
          {
            swift_task_reportUnexpectedExecutor();
          }

          v194 = v38;
          swift_getKeyPath();
          sub_1D3045A34(&qword_1EE313618, type metadata accessor for AssetPackRecord, &protocol conformance descriptor for AssetPackRecord);
          sub_1D30E8AEC();

          swift_getKeyPath();
          sub_1D2FF67A4();
          sub_1D30E8F0C();

          v59 = *(&v195 + 1);
          a1 = v195;
          v61 = *(&v197 + 1);
          v60 = v197;
          v63 = *v186;
          v62 = *(v186 + 8);
          v28 = *(v186 + 32);
          v64 = *(v186 + 40);
          if (*(&v196 + 1))
          {
            if (*(v186 + 24) && v196 != *(v186 + 16))
            {
              v173 = *(v186 + 40);
              v178 = v197;
              LODWORD(v188) = sub_1D30E97CC();
              if (a1 == v63)
              {
                v60 = v178;
                v64 = v173;
                if (v59 != v62)
                {
                  goto LABEL_33;
                }
              }

              else
              {
                v60 = v178;
                v64 = v173;
LABEL_33:
                a1 = v60;
                v65 = v64;
                v66 = sub_1D30E97CC();
                v64 = v65;
                v60 = a1;
                if ((v66 & 1) == 0)
                {

                  v6 = v189;
                  v56 = v182;
                  v34 = v183;
                  goto LABEL_11;
                }
              }

              if (v60 == v28)
              {
                v6 = v189;
                v34 = v183;
                if (v61 == v64)
                {

LABEL_39:
                  v56 = v182;
                  v10 = v191;
                  if ((v188 & 1) == 0)
                  {

                    goto LABEL_12;
                  }

LABEL_40:
                  sub_1D30E950C();
                  a1 = *(v192 + 16);
                  sub_1D30E953C();
                  sub_1D30E954C();
                  sub_1D30E951C();
                  goto LABEL_12;
                }

                goto LABEL_38;
              }

              goto LABEL_37;
            }

            LODWORD(v188) = 1;
            if (v195 != __PAIR128__(v62, v63))
            {
              goto LABEL_33;
            }

            LODWORD(v188) = 1;
            if (v197 == v28)
            {
              v6 = v189;
              v34 = v183;
              if (*(&v197 + 1) == v64)
              {
                goto LABEL_28;
              }

              goto LABEL_38;
            }
          }

          else
          {
            LODWORD(v188) = 1;
            if (v195 != __PAIR128__(v62, v63))
            {
              goto LABEL_33;
            }

            LODWORD(v188) = 1;
            if (v197 == v28)
            {
              v6 = v189;
              v34 = v183;
              if (*(&v197 + 1) == v64)
              {
LABEL_28:

                v56 = v182;
                v10 = v191;
                goto LABEL_40;
              }

              goto LABEL_38;
            }
          }

LABEL_37:
          v6 = v189;
          v34 = v183;
LABEL_38:
          a1 = sub_1D30E97CC();

          if (a1)
          {
            goto LABEL_39;
          }

          v56 = v182;
LABEL_11:
          v10 = v191;
LABEL_12:
          ++v57;
          if (v10 == v34)
          {
            goto LABEL_46;
          }
        }
      }
    }

    v67 = MEMORY[0x1E69E7CC0];
LABEL_51:

    v198 = v67;
    v192 = 0;
    v193 = 1;
    if (v67 < 0 || (v67 & 0x4000000000000000) != 0)
    {
LABEL_96:
      v68 = sub_1D30E958C();
    }

    else
    {
      v68 = *(v67 + 16);
    }

    if (v68)
    {
      v69 = 0;
      while (1)
      {
        if ((v67 & 0xC000000000000001) != 0)
        {
          v70 = MEMORY[0x1D38B29E0](v69, v67);
        }

        else
        {
          if (v69 >= *(v67 + 16))
          {
            goto LABEL_94;
          }

          v70 = *(v67 + 8 * v69 + 32);
        }

        v71 = v69 + 1;
        if (__OFADD__(v69, 1))
        {
          __break(1u);
LABEL_94:
          __break(1u);
LABEL_95:
          __break(1u);
          goto LABEL_96;
        }

        v72 = v187;
        v73 = sub_1D30D75AC(v69, v70, v180, &v192);
        v187 = v72;
        if (v72)
        {

          goto LABEL_6;
        }

        if (v73)
        {
          break;
        }

        ++v69;
        if (v71 == v68)
        {
          goto LABEL_65;
        }
      }

      if ((v193 & 1) == 0)
      {
        goto LABEL_67;
      }
    }

    else
    {
LABEL_65:

      v74 = sub_1D3028008();
      if (!v74)
      {
LABEL_88:
        type metadata accessor for HelperError(v74);
        sub_1D3045A34(&qword_1EE313E48, type metadata accessor for HelperError, &unk_1D30EF3D8);
        swift_allocError();
        v129 = v186;
        v131 = *(v186 + 16);
        v130 = *(v186 + 32);
        *v132 = *v186;
        v132[1] = v131;
        v132[2] = v130;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        sub_1D30E5940(v129, &v195);

        sub_1D30E599C(v155);
      }

      v70 = v74;
      if ((v193 & 1) == 0)
      {
LABEL_67:
        sub_1D30287B4(v192);
      }
    }

    v76 = v198;
    if (v198 >> 62)
    {
      v67 = sub_1D30E958C();
      if (v67)
      {
LABEL_70:
        v77 = 0;
        v173 = v76 & 0xC000000000000001;
        v167 = OBJC_IVAR____TtC29ManagedBackgroundAssetsHelper15AssetPackRecord___observationRegistrar;
        v168 = v76 & 0xFFFFFFFFFFFFFF8;
        v78 = (v153 + 6);
        v166 = (v153 + 4);
        v178 = (v153 + 1);
        v152 = (v153 + 2);
        v153 = (v150 + 1);
        v150 += 2;
        *&v75 = 136446466;
        v143 = v75;
        *&v75 = 136446722;
        v142 = v75;
        v191 = v70;
        v165 = v76;
        v164 = v67;
        v163 = v78;
        while (1)
        {
          if (v173)
          {
            v74 = MEMORY[0x1D38B29E0](v77, v76);
            v81 = v74;
            v82 = v77 + 1;
            if (__OFADD__(v77, 1))
            {
              goto LABEL_87;
            }
          }

          else
          {
            if (v77 >= *(v168 + 16))
            {
              goto LABEL_95;
            }

            v81 = *(v76 + 8 * v77 + 32);

            v82 = v77 + 1;
            if (__OFADD__(v77, 1))
            {
LABEL_87:
              __break(1u);
              goto LABEL_88;
            }
          }

          v182 = v82;
          v183 = v77;
          v83 = OBJC_IVAR____TtC29ManagedBackgroundAssetsHelper15AssetPackRecord___observationRegistrar;
          *&v195 = v81;
          swift_getKeyPath();
          v84 = sub_1D3045A34(&qword_1EE313618, type metadata accessor for AssetPackRecord, &protocol conformance descriptor for AssetPackRecord);
          v185 = v83;
          sub_1D30E8AEC();

          swift_getKeyPath();
          v188 = v81;
          sub_1D30E8F0C();

          v85 = v176;
          sub_1D30E8D6C();
          v86 = v181;
          v190 = *v78;
          result = v190(v85, 1, v181);
          if (result == 1)
          {
            goto LABEL_105;
          }

          v186 = *v166;
          (v186)(v179, v85, v86);
          *&v195 = v191;
          swift_getKeyPath();
          v184 = v84;
          sub_1D30E8AEC();

          swift_getKeyPath();
          sub_1D30E8F0C();
          v87 = v181;

          v88 = v175;
          sub_1D30E8D6C();
          result = v190(v88, 1, v87);
          if (result == 1)
          {
            break;
          }

          v89 = v174;
          (v186)(v174, v88, v87);
          sub_1D3045A34(&qword_1EC74B040, MEMORY[0x1E69E8380], MEMORY[0x1E69E8390]);
          v90 = v179;
          v91 = sub_1D30E905C();
          v92 = *v178;
          (*v178)(v89, v87);
          v92(v90, v87);
          if (v91)
          {
            v93 = v188;

            v94 = sub_1D30E8B1C();
            v95 = sub_1D30E92BC();

            if (os_log_type_enabled(v94, v95))
            {
              v96 = swift_slowAlloc();
              v190 = swift_slowAlloc();
              v194 = v190;
              *&v195 = v93;
              *v96 = v143;
              swift_getKeyPath();
              LODWORD(v186) = v95;
              v148 = v94;
              sub_1D30E8AEC();

              swift_getKeyPath();
              sub_1D2FF67A4();
              sub_1D30E8F0C();

              v97 = v197;

              v98 = sub_1D2FFEA04(v97, *(&v97 + 1), &v194);

              *(v96 + 4) = v98;
              *(v96 + 12) = 2082;
              *&v195 = v93;
              swift_getKeyPath();
              sub_1D30E8AEC();

              swift_getKeyPath();
              sub_1D30E8F0C();

              v99 = v195;

              v100 = sub_1D2FFEA04(v99, *(&v99 + 1), &v194);

              *(v96 + 14) = v100;
              v101 = v148;
              _os_log_impl(&dword_1D2FD9000, v148, v186, "Removing a duplicate record of the asset pack with the ID “%{public}s” for the app with the bundle ID “%{public}s”…", v96, 0x16u);
              v102 = v190;
              swift_arrayDestroy();
              MEMORY[0x1D38B3760](v102, -1, -1);
              MEMORY[0x1D38B3760](v96, -1, -1);
            }

            else
            {
            }
          }

          else
          {
            v103 = v160;
            v104 = v188;
            sub_1D3010008(v160);
            v194 = v104;
            swift_getKeyPath();
            sub_1D30E8AEC();

            swift_getKeyPath();
            v105 = sub_1D2FF67A4();
            sub_1D30E8F0C();

            v106 = v195;

            v107 = v187;
            sub_1D302D670(v106, *(&v106 + 1), v162, v161);
            if (v107)
            {
              v92(v103, v181);

              v133 = v146;
              sub_1D3056830(v162, v146, type metadata accessor for FilePath.ResolutionError);
              sub_1D3045A34(&qword_1EC749428, type metadata accessor for FilePath.ResolutionError, &protocol conformance descriptor for FilePath.ResolutionError);
              swift_allocError();
              sub_1D3056830(v133, v134, type metadata accessor for FilePath.ResolutionError);

              sub_1D30E599C(v155);
            }

            v190 = v105;

            sub_1D30E8D8C();
            v108 = v181;
            (*v152)(v157, v103, v181);
            v109 = v158;
            sub_1D30E8D7C();
            v92(v103, v108);
            v110 = v169;
            sub_1D3003CF4(v109, 1, v169);
            v187 = 0;
            v111 = *v153;
            v112 = v170;
            (*v153)(v109, v170);
            v113 = v154;
            (*v150)(v154, v110, v112);

            v114 = sub_1D30E8B1C();
            v115 = sub_1D30E92BC();

            if (os_log_type_enabled(v114, v115))
            {
              v116 = swift_slowAlloc();
              LODWORD(v148) = v115;
              v117 = v116;
              v186 = swift_slowAlloc();
              v194 = v186;
              *v117 = v142;
              sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8], MEMORY[0x1E69E83D0]);
              v145 = v114;
              v118 = sub_1D30E977C();
              v119 = v113;
              v121 = v120;
              v111(v119, v112);
              v122 = sub_1D2FFEA04(v118, v121, &v194);

              *(v117 + 4) = v122;
              *(v117 + 12) = 2082;
              *&v195 = v104;
              swift_getKeyPath();
              v144 = v111;
              sub_1D30E8AEC();

              swift_getKeyPath();
              sub_1D30E8F0C();

              v123 = v197;

              v124 = sub_1D2FFEA04(v123, *(&v123 + 1), &v194);

              *(v117 + 14) = v124;
              *(v117 + 22) = 2082;
              *&v195 = v104;
              swift_getKeyPath();
              sub_1D30E8AEC();

              swift_getKeyPath();
              sub_1D30E8F0C();

              v125 = v195;

              v126 = sub_1D2FFEA04(v125, *(&v125 + 1), &v194);

              *(v117 + 24) = v126;
              v127 = v145;
              _os_log_impl(&dword_1D2FD9000, v145, v148, "Removing the duplicate asset pack at “%{public}s” with the ID “%{public}s” for the app with the bundle ID “%{public}s”…", v117, 0x20u);
              v128 = v186;
              swift_arrayDestroy();
              MEMORY[0x1D38B3760](v128, -1, -1);
              MEMORY[0x1D38B3760](v117, -1, -1);

              v144(v169, v170);
            }

            else
            {

              v111(v113, v112);
              v111(v110, v112);
            }
          }

          v79 = v165;
          v67 = v164;
          v80 = v183;
          v78 = v163;
          sub_1D30E8E7C();
          sub_1D30E8E3C();

          v77 = v80 + 1;
          v76 = v79;
          if (v182 == v67)
          {
            goto LABEL_98;
          }
        }

        __break(1u);
LABEL_105:
        __break(1u);
        return result;
      }
    }

    else
    {
      v67 = *((v198 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v67)
      {
        goto LABEL_70;
      }
    }

LABEL_98:
    v135 = v155;
    sub_1D30E5940(v155, &v195);
    v136 = sub_1D30E8B1C();
    v137 = sub_1D30E92BC();
    sub_1D30E599C(v135);
    if (os_log_type_enabled(v136, v137))
    {
      v138 = swift_slowAlloc();
      v139 = swift_slowAlloc();
      *&v195 = v139;
      *v138 = 136446466;
      *(v138 + 4) = sub_1D2FFEA04(v135[4], v135[5], &v195);
      *(v138 + 12) = 2082;
      *(v138 + 14) = sub_1D2FFEA04(*v135, v135[1], &v195);
      _os_log_impl(&dword_1D2FD9000, v136, v137, "Removing the record of the asset pack with the ID “%{public}s” for the app with the bundle ID “%{public}s” from the database…", v138, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D38B3760](v139, -1, -1);
      MEMORY[0x1D38B3760](v138, -1, -1);
    }

    v140 = v151;
    v141 = v187;
    sub_1D30E8E7C();
    sub_1D30E8E3C();

    sub_1D3010570(v140);
    sub_1D30E8E7C();
    sub_1D30E8E0C();
    if (v141)
    {
      sub_1D3065284(v140, type metadata accessor for AssetPackRecord.StaticRepresentation);
    }

    else
    {

      sub_1D3056830(v140, v149, type metadata accessor for AssetPackRecord.StaticRepresentation);
    }

    sub_1D30E599C(v135);
  }

  (*(v188 + 8))(v38, v190);

LABEL_6:
  sub_1D30E599C(v155);
}

uint64_t sub_1D30C6FE0(unint64_t a1, unint64_t a2)
{
  v161 = a2;
  v133 = type metadata accessor for FilePath.ResolutionError(0);
  v3 = MEMORY[0x1EEE9AC00](v133);
  v144 = (&v127 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v127 - v5;
  v7 = sub_1D30E8D9C();
  v134 = *(v7 - 8);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v137 = &v127 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v127 - v11;
  v13 = MEMORY[0x1EEE9AC00](v10);
  v141 = &v127 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v140 = &v127 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v139 = &v127 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749940, &qword_1D30F1B10);
  v19 = MEMORY[0x1EEE9AC00](v18 - 8);
  v158 = &v127 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v159 = &v127 - v21;
  v162 = sub_1D30E8D5C();
  v136 = *(v162 - 8);
  v22 = MEMORY[0x1EEE9AC00](v162);
  v138 = &v127 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v156 = &v127 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v155 = &v127 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v127 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A000, &qword_1D30F4C38);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v169 = &v127 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A008, &qword_1D30F4C40);
  v170 = *(v32 - 8);
  v171 = v32;
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v127 - v33;
  if (qword_1EE3152C8 != -1)
  {
    goto LABEL_98;
  }

  while (1)
  {
    v35 = sub_1D30E8B3C();
    v36 = __swift_project_value_buffer(v35, qword_1EE314B60);
    v37 = sub_1D30E928C();
    sub_1D30E5940(a1, &v176);
    v154 = v36;
    v38 = sub_1D30E8B1C();
    sub_1D30E599C(a1);
    v39 = os_log_type_enabled(v38, v37);
    v142 = v7;
    v167 = a1;
    v132 = v6;
    v143 = v12;
    v157 = v29;
    if (v39)
    {
      v40 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v179 = v29;
      *v40 = 136446466;
      v41 = *(a1 + 16);
      v176 = *a1;
      v177 = v41;
      v178 = *(a1 + 32);
      sub_1D30E5940(a1, &v173);
      v42 = AssetPackRecord.GlobalID.description.getter();
      v44 = v43;

      v45 = sub_1D2FFEA04(v42, v44, &v179);

      *(v40 + 4) = v45;
      *(v40 + 12) = 2082;
      *(v40 + 14) = sub_1D2FFEA04(0x6F6974636E754628, 0xEA0000000000296ELL, &v179);
      _os_log_impl(&dword_1D2FD9000, v38, v37, "With record of asset pack with global ID: %{public}s body: %{public}s", v40, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D38B3760](v29, -1, -1);
      MEMORY[0x1D38B3760](v40, -1, -1);
    }

    v46 = v172;
    a1 = *(v161 + 32);
    sub_1D30E8E7C();
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A010, &unk_1D30F4C48);
    v12 = v169;
    (*(*(v47 - 8) + 56))(v169, 1, 1, v47);
    v48 = type metadata accessor for AssetPackRecord(0);
    v49 = sub_1D3045A34(&qword_1EE313610, type metadata accessor for AssetPackRecord, &protocol conformance descriptor for AssetPackRecord);
    v50 = MEMORY[0x1E69E7CC0];
    sub_1D30E8EBC();
    v51 = sub_1D30E8E1C();
    v168 = v46;
    if (v46)
    {
      (*(v170 + 8))(v34, v171);

      return a1 & 1;
    }

    v7 = v51;
    v150 = v48;
    v172 = v49;
    v152 = a1;
    (*(v170 + 8))(v34, v171);

    v173 = v50;
    v6 = v7 >> 62 ? sub_1D30E958C() : *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v34 = v161;
    if (!v6)
    {
      break;
    }

    v34 = 0;
    v166 = (v7 & 0xC000000000000001);
    v165 = v7 & 0xFFFFFFFFFFFFFF8;
    v163 = v7;
    v164 = v6;
    while (v166)
    {
      v12 = MEMORY[0x1D38B29E0](v34, v7);
      v54 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
LABEL_45:
        __break(1u);
LABEL_46:
        a1 = v173;
        v34 = v161;
        goto LABEL_48;
      }

LABEL_16:
      v171 = v54;
      sub_1D30E91FC();
      v170 = sub_1D30E91EC();
      sub_1D30E91AC();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v175 = v12;
      swift_getKeyPath();
      sub_1D3045A34(&qword_1EE313618, type metadata accessor for AssetPackRecord, &protocol conformance descriptor for AssetPackRecord);
      sub_1D30E8AEC();

      swift_getKeyPath();
      sub_1D2FF67A4();
      sub_1D30E8F0C();

      v55 = v176;
      v29 = *(&v178 + 1);
      v56 = v178;
      isa = v167->isa;
      a1 = v167[1].isa;
      v59 = v167[4].isa;
      v58 = v167[5].isa;
      if (*(&v177 + 1))
      {
        if (v167[3].isa && v177 != *&v167[2].isa)
        {
          v153 = v167[5].isa;
          v160 = v178;
          LODWORD(v169) = sub_1D30E97CC();
          if (v55 == isa)
          {
            v56 = v160;
            v58 = v153;
            if (*(&v55 + 1) == a1)
            {
              goto LABEL_34;
            }
          }

          else
          {
            v56 = v160;
            v58 = v153;
          }
        }

        else
        {
          LODWORD(v169) = 1;
          if (v176 == __PAIR128__(a1, isa))
          {
            LODWORD(v169) = 1;
            if (v178 != v59)
            {
              goto LABEL_37;
            }

            v6 = v164;
            v53 = v171;
            if (*(&v178 + 1) != v58)
            {
              goto LABEL_38;
            }

LABEL_28:

            v7 = v163;
            goto LABEL_40;
          }
        }
      }

      else
      {
        LODWORD(v169) = 1;
        if (v176 == __PAIR128__(a1, isa))
        {
          LODWORD(v169) = 1;
          if (v178 != v59)
          {
            goto LABEL_37;
          }

          v6 = v164;
          v53 = v171;
          if (*(&v178 + 1) != v58)
          {
            goto LABEL_38;
          }

          goto LABEL_28;
        }
      }

      a1 = v56;
      v60 = v58;
      v61 = sub_1D30E97CC();
      v58 = v60;
      v56 = a1;
      if (v61)
      {
LABEL_34:
        if (v56 == v59)
        {
          v6 = v164;
          v53 = v171;
          if (v29 == v58)
          {

            goto LABEL_39;
          }

LABEL_38:
          a1 = sub_1D30E97CC();

          if ((a1 & 1) == 0)
          {

            v7 = v163;
            goto LABEL_12;
          }

LABEL_39:
          v7 = v163;
          if ((v169 & 1) == 0)
          {

            goto LABEL_12;
          }

LABEL_40:
          sub_1D30E950C();
          a1 = *(v173 + 16);
          sub_1D30E953C();
          sub_1D30E954C();
          sub_1D30E951C();
          goto LABEL_12;
        }

LABEL_37:
        v6 = v164;
        v53 = v171;
        goto LABEL_38;
      }

      v7 = v163;
      v6 = v164;
      v53 = v171;
LABEL_12:
      ++v34;
      if (v53 == v6)
      {
        goto LABEL_46;
      }
    }

    if (v34 < *(v165 + 16))
    {
      v12 = *(v7 + 8 * v34 + 32);

      v54 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        goto LABEL_45;
      }

      goto LABEL_16;
    }

    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    swift_once();
  }

  a1 = MEMORY[0x1E69E7CC0];
LABEL_48:

  v179 = a1;
  v173 = 0;
  v174 = 1;
  if ((a1 & 0x8000000000000000) != 0 || (a1 & 0x4000000000000000) != 0)
  {
    v62 = sub_1D30E958C();
  }

  else
  {
    v62 = *(a1 + 16);
  }

  if (!v62)
  {
LABEL_63:

    v66 = sub_1D3028008();
    if (!v66)
    {
      type metadata accessor for HelperError(0);
      sub_1D3045A34(&qword_1EE313E48, type metadata accessor for HelperError, &unk_1D30EF3D8);
      swift_allocError();
      v121 = v167;
      v123 = *&v167[2].isa;
      v122 = *&v167[4].isa;
      *v124 = *&v167->isa;
      v124[1] = v123;
      v124[2] = v122;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      LOBYTE(a1) = v179;
      sub_1D30E5940(v121, &v176);

      return a1 & 1;
    }

    v7 = v66;
    if (v174)
    {
      goto LABEL_66;
    }

LABEL_65:
    sub_1D30287B4(v173);

    goto LABEL_66;
  }

  v6 = 0;
  while (1)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x1D38B29E0](v6, a1);
      v63 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_62;
      }
    }

    else
    {
      if (v6 >= *(a1 + 16))
      {
        goto LABEL_96;
      }

      v7 = *(a1 + 8 * v6 + 32);

      v63 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
LABEL_62:
        __break(1u);
        goto LABEL_63;
      }
    }

    v64 = v168;
    v65 = sub_1D30D75AC(v6, v7, v34, &v173);
    v168 = v64;
    if (v64)
    {

      return a1 & 1;
    }

    if (v65)
    {
      break;
    }

    ++v6;
    if (v63 == v62)
    {
      goto LABEL_63;
    }
  }

  if ((v174 & 1) == 0)
  {
    goto LABEL_65;
  }

LABEL_66:
  v34 = v179;
  if (v179 >> 62)
  {
    v68 = sub_1D30E958C();
  }

  else
  {
    v68 = *((v179 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v153 = v7;
  v151 = OBJC_IVAR____TtC29ManagedBackgroundAssetsHelper15AssetPackRecord___observationRegistrar;
  if (!v68)
  {
LABEL_87:
    *&v176 = v153;
    swift_getKeyPath();
    sub_1D3045A34(&qword_1EE313618, type metadata accessor for AssetPackRecord, &protocol conformance descriptor for AssetPackRecord);
    sub_1D30E8AEC();

    swift_getKeyPath();
    sub_1D30E8F0C();

    LOBYTE(a1) = v176;
    sub_1D30E8E7C();
    v120 = v168;
    sub_1D30E8E0C();
    if (v120)
    {
    }

    else
    {
    }

    return a1 & 1;
  }

  v7 = 0;
  v149 = v34 & 0xC000000000000001;
  v148 = v34 & 0xFFFFFFFFFFFFFF8;
  v69 = (v136 + 6);
  v6 = (v136 + 4);
  v160 = (v136 + 1);
  v135 = (v136 + 2);
  v136 = (v134 + 1);
  a1 = &unk_1D30FD088;
  v134 += 2;
  v29 = MEMORY[0x1E69E6190];
  *&v67 = 136446466;
  v128 = v67;
  *&v67 = 136446722;
  v127 = v67;
  v146 = v34;
  v145 = v68;
  v169 = v69;
  v147 = v6;
  while (1)
  {
    if (v149)
    {
      v72 = MEMORY[0x1D38B29E0](v7, v34);
      v73 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_86;
      }
    }

    else
    {
      if (v7 >= *(v148 + 16))
      {
        goto LABEL_97;
      }

      v72 = *(v34 + 8 * v7 + 32);

      v73 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
LABEL_86:
        __break(1u);
        goto LABEL_87;
      }
    }

    v163 = v73;
    v164 = v7;
    v74 = OBJC_IVAR____TtC29ManagedBackgroundAssetsHelper15AssetPackRecord___observationRegistrar;
    *&v176 = v72;
    swift_getKeyPath();
    v75 = sub_1D3045A34(&qword_1EE313618, type metadata accessor for AssetPackRecord, &protocol conformance descriptor for AssetPackRecord);
    v76 = v69;
    v165 = v74;
    sub_1D30E8AEC();

    swift_getKeyPath();
    v171 = v72;
    sub_1D30E8F0C();

    v77 = v159;
    sub_1D30E8D6C();
    v78 = v162;
    v167 = *v76;
    result = (v167)(v77, 1, v162);
    if (result == 1)
    {
      goto LABEL_103;
    }

    v79 = v157;
    v166 = *v147;
    v166(v157, v77, v78);
    *&v176 = v153;
    swift_getKeyPath();
    v170 = v75;
    sub_1D30E8AEC();

    swift_getKeyPath();
    sub_1D30E8F0C();
    v80 = v162;

    v81 = v158;
    sub_1D30E8D6C();
    result = (v167)(v81, 1, v80);
    if (result == 1)
    {
      break;
    }

    v82 = v155;
    v166(v155, v81, v80);
    sub_1D3045A34(&qword_1EC74B040, MEMORY[0x1E69E8380], MEMORY[0x1E69E8390]);
    v83 = sub_1D30E905C();
    v84 = *v160;
    (*v160)(v82, v80);
    v84(v79, v80);
    v85 = v171;
    v86 = v156;
    if (v83)
    {

      v87 = sub_1D30E8B1C();
      v88 = sub_1D30E92BC();

      if (os_log_type_enabled(v87, v88))
      {
        v89 = swift_slowAlloc();
        v90 = swift_slowAlloc();
        v175 = v90;
        *&v176 = v85;
        *v89 = v128;
        v167 = v87;
        swift_getKeyPath();
        LODWORD(v166) = v88;
        sub_1D30E8AEC();

        swift_getKeyPath();
        sub_1D2FF67A4();
        sub_1D30E8F0C();

        v91 = v178;

        v92 = sub_1D2FFEA04(v91, *(&v91 + 1), &v175);

        *(v89 + 4) = v92;
        *(v89 + 12) = 2082;
        *&v176 = v171;
        swift_getKeyPath();
        sub_1D30E8AEC();

        swift_getKeyPath();
        sub_1D30E8F0C();

        v94 = *(&v176 + 1);
        v93 = v176;

        v95 = sub_1D2FFEA04(v93, v94, &v175);

        *(v89 + 14) = v95;
        v87 = v167;
        _os_log_impl(&dword_1D2FD9000, v167, v166, "Removing a duplicate record of the asset pack with the ID “%{public}s” for the app with the bundle ID “%{public}s”…", v89, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1D38B3760](v90, -1, -1);
        MEMORY[0x1D38B3760](v89, -1, -1);
      }
    }

    else
    {
      sub_1D3010008(v156);
      v175 = v85;
      swift_getKeyPath();
      sub_1D30E8AEC();

      swift_getKeyPath();
      v96 = sub_1D2FF67A4();
      sub_1D30E8F0C();

      v97 = v176;

      v98 = v168;
      sub_1D302D670(v97, *(&v97 + 1), v144, v143);
      if (v98)
      {
        v84(v86, v162);

        a1 = type metadata accessor for FilePath.ResolutionError;
        v125 = v132;
        sub_1D3056830(v144, v132, type metadata accessor for FilePath.ResolutionError);
        sub_1D3045A34(&qword_1EC749428, type metadata accessor for FilePath.ResolutionError, &protocol conformance descriptor for FilePath.ResolutionError);
        swift_allocError();
        sub_1D3056830(v125, v126, type metadata accessor for FilePath.ResolutionError);

        return a1 & 1;
      }

      v167 = v96;

      sub_1D30E8D8C();
      v99 = v162;
      (*v135)(v138, v86, v162);
      v100 = v140;
      sub_1D30E8D7C();
      v84(v86, v99);
      v101 = v139;
      sub_1D3003CF4(v100, 1, v139);
      v168 = 0;
      v102 = *v136;
      v103 = v100;
      v104 = v142;
      (*v136)(v103, v142);
      v105 = v137;
      (*v134)(v137, v101, v104);
      v106 = v171;

      v107 = sub_1D30E8B1C();
      v108 = sub_1D30E92BC();

      if (os_log_type_enabled(v107, v108))
      {
        v109 = swift_slowAlloc();
        v166 = swift_slowAlloc();
        v175 = v166;
        *v109 = v127;
        sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8], MEMORY[0x1E69E83D0]);
        v131 = v107;
        v110 = sub_1D30E977C();
        v129 = v108;
        v112 = v111;
        v102(v105, v104);
        v113 = sub_1D2FFEA04(v110, v112, &v175);

        *(v109 + 4) = v113;
        *(v109 + 12) = 2082;
        *&v176 = v106;
        swift_getKeyPath();
        v130 = v102;
        sub_1D30E8AEC();

        swift_getKeyPath();
        sub_1D30E8F0C();

        v114 = v178;

        v115 = sub_1D2FFEA04(v114, *(&v114 + 1), &v175);

        *(v109 + 14) = v115;
        *(v109 + 22) = 2082;
        *&v176 = v106;
        swift_getKeyPath();
        sub_1D30E8AEC();

        swift_getKeyPath();
        sub_1D30E8F0C();

        v116 = v176;

        v117 = sub_1D2FFEA04(v116, *(&v116 + 1), &v175);

        *(v109 + 24) = v117;
        v118 = v131;
        _os_log_impl(&dword_1D2FD9000, v131, v129, "Removing the duplicate asset pack at “%{public}s” with the ID “%{public}s” for the app with the bundle ID “%{public}s”…", v109, 0x20u);
        v119 = v166;
        swift_arrayDestroy();
        MEMORY[0x1D38B3760](v119, -1, -1);
        MEMORY[0x1D38B3760](v109, -1, -1);

        v130(v101, v104);
      }

      else
      {

        v102(v105, v104);
        v102(v101, v104);
      }
    }

    v6 = v150;
    v34 = v146;
    v70 = v145;
    v71 = v164;
    a1 = &unk_1D30FD088;
    v29 = MEMORY[0x1E69E6190];
    v12 = v163;
    sub_1D30E8E7C();
    sub_1D30E8E3C();

    v7 = v71 + 1;
    v69 = v169;
    if (v12 == v70)
    {
      goto LABEL_87;
    }
  }

  __break(1u);
LABEL_103:
  __break(1u);
  return result;
}

uint64_t sub_1D30C8B18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, unint64_t a5@<X8>)
{
  v157 = a4;
  v185 = a2;
  v8 = type metadata accessor for FilePath.ResolutionError(0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v168 = (&v146 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v146 - v11;
  v175 = sub_1D30E8D9C();
  v155 = *(v175 - 8);
  v13 = MEMORY[0x1EEE9AC00](v175);
  v161 = &v146 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v167 = &v146 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v165 = &v146 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v164 = &v146 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v163 = &v146 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749940, &qword_1D30F1B10);
  v23 = MEMORY[0x1EEE9AC00](v22 - 8);
  v180 = &v146 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v181 = &v146 - v25;
  v186 = sub_1D30E8D5C();
  v160 = *(v186 - 8);
  v26 = MEMORY[0x1EEE9AC00](v186);
  v162 = &v146 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v166 = &v146 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v179 = &v146 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v184 = &v146 - v33;
  MEMORY[0x1EEE9AC00](v32);
  v156 = &v146 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A000, &qword_1D30F4C38);
  MEMORY[0x1EEE9AC00](v35 - 8);
  v192 = &v146 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A008, &qword_1D30F4C40);
  v194 = *(v37 - 8);
  v195 = v37;
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v146 - v38;
  if (qword_1EE3152C8 != -1)
  {
LABEL_108:
    swift_once();
  }

  v40 = sub_1D30E8B3C();
  v41 = __swift_project_value_buffer(v40, qword_1EE314B60);
  v42 = sub_1D30E928C();
  sub_1D30E5940(a1, &v200);
  v182 = v41;
  v43 = sub_1D30E8B1C();
  sub_1D30E599C(a1);
  v44 = os_log_type_enabled(v43, v42);
  v183 = a3;
  v191 = a1;
  v154 = a5;
  v151 = v8;
  v150 = v12;
  if (v44)
  {
    v8 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v203 = v45;
    *v8 = 136446466;
    v46 = *(a1 + 16);
    v200 = *a1;
    v201 = v46;
    v202 = *(a1 + 32);
    sub_1D30E5940(a1, &v197);
    v47 = AssetPackRecord.GlobalID.description.getter();
    v49 = v48;

    a3 = v183;

    v50 = sub_1D2FFEA04(v47, v49, &v203);

    *(v8 + 4) = v50;
    *(v8 + 6) = 2082;
    *(v8 + 14) = sub_1D2FFEA04(0x6F6974636E754628, 0xEA0000000000296ELL, &v203);
    _os_log_impl(&dword_1D2FD9000, v43, v42, "With record of asset pack with global ID: %{public}s body: %{public}s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D38B3760](v45, -1, -1);
    MEMORY[0x1D38B3760](v8, -1, -1);
  }

  v51 = *(v185 + 32);
  sub_1D30E8E7C();
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A010, &unk_1D30F4C48);
  (*(*(v52 - 8) + 56))(v192, 1, 1, v52);
  a1 = type metadata accessor for AssetPackRecord(0);
  v12 = sub_1D3045A34(&qword_1EE313610, type metadata accessor for AssetPackRecord, &protocol conformance descriptor for AssetPackRecord);
  v53 = MEMORY[0x1E69E7CC0];
  sub_1D30E8EBC();
  v54 = v196;
  v55 = sub_1D30E8E1C();
  v192 = v54;
  if (v54)
  {
    (*(v194 + 8))(v39, v195);

    return sub_1D30E599C(a3);
  }

  v57 = v55;
  v174 = a1;
  v176 = v51;
  (*(v194 + 8))(v39, v195);

  v197 = v53;
  if (v57 >> 62)
  {
    a5 = sub_1D30E958C();
    v193 = v12;
    if (!a5)
    {
      goto LABEL_46;
    }
  }

  else
  {
    a5 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v193 = v12;
    if (!a5)
    {
      goto LABEL_46;
    }
  }

  a3 = 0;
  v190 = v57 & 0xC000000000000001;
  v189 = v57 & 0xFFFFFFFFFFFFFF8;
  v188 = v57;
  v187 = a5;
  while (!v190)
  {
    if (a3 >= *(v189 + 16))
    {
      __break(1u);
LABEL_105:
      __break(1u);
LABEL_106:
      __break(1u);
LABEL_107:
      __break(1u);
      goto LABEL_108;
    }

    v39 = *(v57 + 8 * a3 + 32);

    v58 = (a3 + 1);
    if (__OFADD__(a3, 1))
    {
      goto LABEL_44;
    }

LABEL_15:
    v196 = v58;
    sub_1D30E91FC();
    v195 = sub_1D30E91EC();
    sub_1D30E91AC();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v199 = v39;
    swift_getKeyPath();
    sub_1D3045A34(&qword_1EE313618, type metadata accessor for AssetPackRecord, &protocol conformance descriptor for AssetPackRecord);
    sub_1D30E8AEC();

    swift_getKeyPath();
    sub_1D2FF67A4();
    sub_1D30E8F0C();

    v59 = v200;
    v8 = *(&v202 + 1);
    v60 = v202;
    v62 = *v191;
    v61 = *(v191 + 8);
    v64 = *(v191 + 32);
    v63 = *(v191 + 40);
    if (*(&v201 + 1))
    {
      if (*(v191 + 24) && v201 != *(v191 + 16))
      {
        v177 = *(v191 + 40);
        v178 = v202;
        LODWORD(v194) = sub_1D30E97CC();
        if (v59 == v62)
        {
          v60 = v178;
          v63 = v177;
          if (*(&v59 + 1) == v61)
          {
            goto LABEL_33;
          }
        }

        else
        {
          v60 = v178;
          v63 = v177;
        }
      }

      else
      {
        LODWORD(v194) = 1;
        if (v200 == __PAIR128__(v61, v62))
        {
          LODWORD(v194) = 1;
          if (v202 == v64)
          {
            v57 = v188;
            a5 = v187;
            a1 = v196;
            if (*(&v202 + 1) == v63)
            {
              goto LABEL_27;
            }

            goto LABEL_37;
          }

          goto LABEL_36;
        }
      }
    }

    else
    {
      LODWORD(v194) = 1;
      if (v200 == __PAIR128__(v61, v62))
      {
        LODWORD(v194) = 1;
        if (v202 == v64)
        {
          v57 = v188;
          a5 = v187;
          a1 = v196;
          if (*(&v202 + 1) == v63)
          {
LABEL_27:

            v12 = v193;
LABEL_39:
            sub_1D30E950C();
            sub_1D30E953C();
            sub_1D30E954C();
            sub_1D30E951C();
            goto LABEL_11;
          }

          goto LABEL_37;
        }

        goto LABEL_36;
      }
    }

    v65 = v60;
    v66 = v63;
    v67 = sub_1D30E97CC();
    v63 = v66;
    v60 = v65;
    if (v67)
    {
LABEL_33:
      if (v60 == v64)
      {
        v57 = v188;
        a5 = v187;
        a1 = v196;
        if (v8 == v63)
        {

LABEL_38:
          v12 = v193;
          if ((v194 & 1) == 0)
          {

            goto LABEL_11;
          }

          goto LABEL_39;
        }

LABEL_37:
        v68 = sub_1D30E97CC();

        if ((v68 & 1) == 0)
        {

          v12 = v193;
          goto LABEL_11;
        }

        goto LABEL_38;
      }

LABEL_36:
      v57 = v188;
      a5 = v187;
      a1 = v196;
      goto LABEL_37;
    }

    v12 = v193;
    v57 = v188;
    a5 = v187;
    a1 = v196;
LABEL_11:
    ++a3;
    if (a1 == a5)
    {
      goto LABEL_45;
    }
  }

  v39 = MEMORY[0x1D38B29E0](a3, v57);
  v58 = (a3 + 1);
  if (!__OFADD__(a3, 1))
  {
    goto LABEL_15;
  }

LABEL_44:
  __break(1u);
LABEL_45:
  v53 = v197;
  a3 = v183;
LABEL_46:

  v203 = v53;
  v197 = 0;
  v198 = 1;
  if (v53 < 0 || (v53 & 0x4000000000000000) != 0)
  {
    v69 = sub_1D30E958C();
  }

  else
  {
    v69 = *(v53 + 16);
  }

  if (v69)
  {
    a5 = 0;
    a1 = v53 & 0xC000000000000001;
    while (1)
    {
      if (a1)
      {
        v70 = MEMORY[0x1D38B29E0](a5, v53);
      }

      else
      {
        if (a5 >= *(v53 + 16))
        {
          goto LABEL_106;
        }

        v70 = *(v53 + 8 * a5 + 32);
      }

      v39 = (a5 + 1);
      if (__OFADD__(a5, 1))
      {
        goto LABEL_105;
      }

      v71 = v192;
      v72 = sub_1D30D75AC(a5, v70, v185, &v197);
      v192 = v71;
      if (v71)
      {
        break;
      }

      if (v72)
      {

        if (v198)
        {
          goto LABEL_63;
        }

LABEL_62:
        sub_1D30287B4(v197);

        goto LABEL_63;
      }

      ++a5;
      if (v39 == v69)
      {
        goto LABEL_60;
      }
    }

    return sub_1D30E599C(a3);
  }

LABEL_60:

  v73 = sub_1D3028008();
  if (!v73)
  {
    type metadata accessor for HelperError(0);
    sub_1D3045A34(&qword_1EE313E48, type metadata accessor for HelperError, &unk_1D30EF3D8);
    swift_allocError();
    v136 = v191;
    v138 = *(v191 + 16);
    v137 = *(v191 + 32);
    *v139 = *v191;
    v139[1] = v138;
    v139[2] = v137;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_1D30E5940(v136, &v200);

    return sub_1D30E599C(a3);
  }

  v70 = v73;
  if ((v198 & 1) == 0)
  {
    goto LABEL_62;
  }

LABEL_63:
  a1 = v203;
  if (v203 >> 62)
  {
    v39 = sub_1D30E958C();
  }

  else
  {
    v39 = *((v203 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v178 = OBJC_IVAR____TtC29ManagedBackgroundAssetsHelper15AssetPackRecord___observationRegistrar;
  v195 = v70;
  v177 = a1;
  if (v39)
  {
    v75 = 0;
    v173 = a1 & 0xC000000000000001;
    v172 = a1 & 0xFFFFFFFFFFFFFF8;
    a5 = v160 + 48;
    v187 = (v160 + 8);
    v158 = (v160 + 16);
    v159 = (v155 + 1);
    v8 = &unk_1D30FD088;
    v155 += 2;
    *&v74 = 136446466;
    v147 = v74;
    *&v74 = 136446722;
    v146 = v74;
    v170 = v39;
    v169 = v160 + 48;
    v171 = (v160 + 32);
    do
    {
      if (v173)
      {
        v76 = MEMORY[0x1D38B29E0](v75, a1);
        v77 = (v75 + 1);
        if (__OFADD__(v75, 1))
        {
          goto LABEL_84;
        }
      }

      else
      {
        if (v75 >= *(v172 + 16))
        {
          goto LABEL_107;
        }

        v76 = *(a1 + 8 * v75 + 32);

        v77 = (v75 + 1);
        if (__OFADD__(v75, 1))
        {
LABEL_84:
          __break(1u);
          break;
        }
      }

      v188 = v77;
      v189 = v75;
      v78 = OBJC_IVAR____TtC29ManagedBackgroundAssetsHelper15AssetPackRecord___observationRegistrar;
      *&v200 = v76;
      swift_getKeyPath();
      v79 = sub_1D3045A34(&qword_1EE313618, type metadata accessor for AssetPackRecord, &protocol conformance descriptor for AssetPackRecord);
      v190 = v78;
      sub_1D30E8AEC();

      swift_getKeyPath();
      v191 = v76;
      sub_1D30E8F0C();

      v80 = v181;
      sub_1D30E8D6C();
      v81 = v186;
      v194 = *a5;
      result = (v194)(v80, 1, v186);
      if (result == 1)
      {
        goto LABEL_114;
      }

      v82 = *v171;
      (*v171)(v184, v80, v81);
      *&v200 = v195;
      swift_getKeyPath();
      v196 = v79;
      sub_1D30E8AEC();

      swift_getKeyPath();
      sub_1D30E8F0C();
      v83 = v186;

      v84 = v180;
      sub_1D30E8D6C();
      result = (v194)(v84, 1, v83);
      if (result == 1)
      {
        __break(1u);
LABEL_114:
        __break(1u);
        return result;
      }

      v85 = v179;
      v82(v179, v84, v83);
      sub_1D3045A34(&qword_1EC74B040, MEMORY[0x1E69E8380], MEMORY[0x1E69E8390]);
      v86 = v184;
      v87 = sub_1D30E905C();
      v88 = *v187;
      (*v187)(v85, v83);
      v88(v86, v83);
      if (v87)
      {
        v89 = v191;

        v90 = sub_1D30E8B1C();
        v91 = sub_1D30E92BC();

        v92 = os_log_type_enabled(v90, v91);
        v12 = v193;
        if (v92)
        {
          v93 = swift_slowAlloc();
          v194 = swift_slowAlloc();
          v199 = v194;
          *&v200 = v89;
          *v93 = v147;
          LODWORD(v153) = v91;
          swift_getKeyPath();
          v152 = v90;
          sub_1D30E8AEC();

          swift_getKeyPath();
          sub_1D2FF67A4();
          sub_1D30E8F0C();

          v94 = v202;

          v95 = sub_1D2FFEA04(v94, *(&v94 + 1), &v199);

          *(v93 + 4) = v95;
          *(v93 + 12) = 2082;
          *&v200 = v89;
          swift_getKeyPath();
          sub_1D30E8AEC();

          swift_getKeyPath();
          v12 = v193;
          sub_1D30E8F0C();

          v97 = *(&v200 + 1);
          v96 = v200;

          v98 = sub_1D2FFEA04(v96, v97, &v199);

          *(v93 + 14) = v98;
          v90 = v152;
          _os_log_impl(&dword_1D2FD9000, v152, v153, "Removing a duplicate record of the asset pack with the ID “%{public}s” for the app with the bundle ID “%{public}s”…", v93, 0x16u);
          v99 = v194;
          swift_arrayDestroy();
          MEMORY[0x1D38B3760](v99, -1, -1);
          MEMORY[0x1D38B3760](v93, -1, -1);
        }
      }

      else
      {
        v100 = v166;
        v101 = v191;
        sub_1D3010008(v166);
        v199 = v101;
        swift_getKeyPath();
        sub_1D30E8AEC();

        swift_getKeyPath();
        v102 = sub_1D2FF67A4();
        sub_1D30E8F0C();

        v103 = v200;

        v104 = v192;
        sub_1D302D670(v103, *(&v103 + 1), v168, v167);
        if (v104)
        {
          v88(v100, v186);

          v144 = v150;
          sub_1D3056830(v168, v150, type metadata accessor for FilePath.ResolutionError);
          sub_1D3045A34(&qword_1EC749428, type metadata accessor for FilePath.ResolutionError, &protocol conformance descriptor for FilePath.ResolutionError);
          swift_allocError();
          sub_1D3056830(v144, v145, type metadata accessor for FilePath.ResolutionError);

          goto LABEL_102;
        }

        v194 = v102;

        v105 = v100;
        sub_1D30E8D8C();
        v106 = v186;
        (*v158)(v162, v100, v186);
        v107 = v164;
        v108 = v163;
        sub_1D30E8D7C();
        v88(v105, v106);
        sub_1D3003CF4(v107, 1, v108);
        v192 = 0;
        v109 = *v159;
        v110 = v175;
        (*v159)(v107, v175);
        v111 = v161;
        (*v155)(v161, v108, v110);

        v112 = sub_1D30E8B1C();
        v113 = sub_1D30E92BC();

        if (!os_log_type_enabled(v112, v113))
        {

          v109(v111, v110);
          v109(v108, v110);
          a3 = v183;
          v12 = v193;
          goto LABEL_69;
        }

        v114 = swift_slowAlloc();
        v153 = swift_slowAlloc();
        v199 = v153;
        *v114 = v146;
        sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8], MEMORY[0x1E69E83D0]);
        v152 = v112;
        v115 = sub_1D30E977C();
        v116 = v111;
        v118 = v117;
        v109(v116, v110);
        v119 = sub_1D2FFEA04(v115, v118, &v199);

        *(v114 + 4) = v119;
        *(v114 + 12) = 2082;
        *&v200 = v101;
        swift_getKeyPath();
        v149 = v109;
        v148 = v113;
        sub_1D30E8AEC();

        swift_getKeyPath();
        sub_1D30E8F0C();

        v120 = v202;

        v121 = sub_1D2FFEA04(v120, *(&v120 + 1), &v199);

        *(v114 + 14) = v121;
        *(v114 + 22) = 2082;
        *&v200 = v101;
        swift_getKeyPath();
        sub_1D30E8AEC();

        swift_getKeyPath();
        v122 = v193;
        sub_1D30E8F0C();

        v123 = v200;

        v124 = sub_1D2FFEA04(v123, *(&v123 + 1), &v199);

        *(v114 + 24) = v124;
        v125 = v152;
        _os_log_impl(&dword_1D2FD9000, v152, v148, "Removing the duplicate asset pack at “%{public}s” with the ID “%{public}s” for the app with the bundle ID “%{public}s”…", v114, 0x20u);
        v126 = v153;
        swift_arrayDestroy();
        MEMORY[0x1D38B3760](v126, -1, -1);
        v127 = v114;
        v12 = v122;
        MEMORY[0x1D38B3760](v127, -1, -1);

        v149(v108, v175);
      }

      a3 = v183;
LABEL_69:
      v70 = v195;
      a1 = v177;
      v39 = v170;
      sub_1D30E8E7C();
      sub_1D30E8E3C();

      v75 = v189 + 1;
      a5 = v169;
      v8 = &unk_1D30FD088;
    }

    while (v188 != v39);
  }

  sub_1D30E5940(a3, &v200);
  v128 = sub_1D30E8B1C();
  v129 = sub_1D30E92BC();
  sub_1D30E599C(a3);
  if (os_log_type_enabled(v128, v129))
  {
    v130 = swift_slowAlloc();
    v131 = swift_slowAlloc();
    *&v200 = v131;
    *v130 = 136446722;
    *(v130 + 4) = sub_1D2FFEA04(*(a3 + 32), *(a3 + 40), &v200);
    *(v130 + 12) = 2082;
    *(v130 + 14) = sub_1D2FFEA04(*a3, *(a3 + 8), &v200);
    *(v130 + 22) = 2082;
    v132 = v157;
    if (v157)
    {
      v133 = 0x6C62616C69617661;
    }

    else
    {
      v133 = 0x616C696176616E75;
    }

    if (v157)
    {
      v134 = 0xE900000000000065;
    }

    else
    {
      v134 = 0xEB00000000656C62;
    }

    v135 = sub_1D2FFEA04(v133, v134, &v200);

    *(v130 + 24) = v135;
    v70 = v195;
    _os_log_impl(&dword_1D2FD9000, v128, v129, "Making the asset pack with the ID “%{public}s” for the app with the bundle ID “%{public}s” %{public}s…", v130, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1D38B3760](v131, -1, -1);
    MEMORY[0x1D38B3760](v130, -1, -1);
  }

  else
  {

    v132 = v157;
  }

  v140 = v186;
  v141 = v156;
  *&v200 = v70;
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  *(&v146 - 2) = v70;
  *(&v146 - 8) = v132 & 1;
  sub_1D3045A34(&qword_1EE313618, type metadata accessor for AssetPackRecord, &protocol conformance descriptor for AssetPackRecord);
  v143 = v192;
  sub_1D30E8ADC();

  sub_1D3010008(v141);
  sub_1D30E8E7C();
  sub_1D30E8E0C();
  if (v143)
  {
    (*(v160 + 8))(v141, v140);

LABEL_102:
  }

  else
  {

    (*(v160 + 32))(v154, v141, v140);
  }

  return sub_1D30E599C(v183);
}

uint64_t sub_1D30CA8DC@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v145 = a5;
  v173 = a4;
  v172 = a3;
  v171 = a2;
  v139 = a6;
  v7 = type metadata accessor for FilePath.ResolutionError(0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v155 = (&v134 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v134 - v10;
  v166 = sub_1D30E8D9C();
  v143 = *(v166 - 8);
  v12 = MEMORY[0x1EEE9AC00](v166);
  v14 = &v134 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = (&v134 - v16);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v152 = &v134 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v151 = &v134 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v163 = &v134 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749940, &qword_1D30F1B10);
  v24 = MEMORY[0x1EEE9AC00](v23 - 8);
  v169 = &v134 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v170 = &v134 - v26;
  v175 = sub_1D30E8D5C();
  v148 = *(v175 - 8);
  v27 = MEMORY[0x1EEE9AC00](v175);
  v150 = &v134 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v153 = &v134 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v168 = &v134 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v174 = &v134 - v34;
  MEMORY[0x1EEE9AC00](v33);
  v144 = &v134 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A000, &qword_1D30F4C38);
  MEMORY[0x1EEE9AC00](v36 - 8);
  v181 = &v134 - v37;
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A008, &qword_1D30F4C40);
  v182 = *(v184 - 8);
  MEMORY[0x1EEE9AC00](v184);
  v39 = &v134 - v38;
  if (qword_1EE3152C8 != -1)
  {
    goto LABEL_100;
  }

  while (1)
  {
    v40 = sub_1D30E8B3C();
    v41 = __swift_project_value_buffer(v40, qword_1EE314B60);
    v42 = sub_1D30E928C();
    sub_1D30E5940(a1, &v189);
    v167 = v41;
    v43 = sub_1D30E8B1C();
    sub_1D30E599C(a1);
    v44 = os_log_type_enabled(v43, v42);
    v149 = v14;
    v180 = a1;
    v141 = v7;
    v140 = v11;
    v154 = v17;
    if (v44)
    {
      v45 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v192 = v17;
      *v45 = 136446466;
      v46 = *(a1 + 16);
      v189 = *a1;
      v190 = v46;
      v191 = *(a1 + 32);
      sub_1D30E5940(a1, &v186);
      v47 = AssetPackRecord.GlobalID.description.getter();
      v49 = v48;

      v50 = sub_1D2FFEA04(v47, v49, &v192);

      *(v45 + 4) = v50;
      *(v45 + 12) = 2082;
      *(v45 + 14) = sub_1D2FFEA04(0x6F6974636E754628, 0xEA0000000000296ELL, &v192);
      _os_log_impl(&dword_1D2FD9000, v43, v42, "With record of asset pack with global ID: %{public}s body: %{public}s", v45, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D38B3760](v17, -1, -1);
      MEMORY[0x1D38B3760](v45, -1, -1);
    }

    a1 = *(v171 + 32);
    sub_1D30E8E7C();
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A010, &unk_1D30F4C48);
    (*(*(v51 - 8) + 56))(v181, 1, 1, v51);
    v52 = type metadata accessor for AssetPackRecord(0);
    v14 = sub_1D3045A34(&qword_1EE313610, type metadata accessor for AssetPackRecord, &protocol conformance descriptor for AssetPackRecord);
    v53 = MEMORY[0x1E69E7CC0];
    sub_1D30E8EBC();
    v54 = v185;
    v55 = sub_1D30E8E1C();
    v181 = v54;
    if (v54)
    {
      (*(v182 + 8))(v39, v184);

      goto LABEL_6;
    }

    v11 = v55;
    v161 = v52;
    v162 = a1;
    (*(v182 + 8))(v39, v184);

    v186 = v53;
    v7 = v11 >> 62 ? sub_1D30E958C() : *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v39 = v171;
    v183 = v14;
    if (!v7)
    {
      break;
    }

    v39 = 0;
    v179 = v11 & 0xC000000000000001;
    v178 = v11 & 0xFFFFFFFFFFFFFF8;
    v177 = v11;
    v176 = v7;
    while (v179)
    {
      v58 = MEMORY[0x1D38B29E0](v39, v11);
      v59 = v39 + 1;
      if (__OFADD__(v39, 1))
      {
LABEL_46:
        __break(1u);
LABEL_47:
        a1 = v186;
        v39 = v171;
        goto LABEL_49;
      }

LABEL_17:
      v185 = v59;
      sub_1D30E91FC();
      v184 = sub_1D30E91EC();
      sub_1D30E91AC();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v188 = v58;
      swift_getKeyPath();
      sub_1D3045A34(&qword_1EE313618, type metadata accessor for AssetPackRecord, &protocol conformance descriptor for AssetPackRecord);
      sub_1D30E8AEC();

      swift_getKeyPath();
      sub_1D2FF67A4();
      sub_1D30E8F0C();

      v60 = *(&v189 + 1);
      a1 = v189;
      v17 = *(&v191 + 1);
      v61 = v191;
      v63 = *v180;
      v62 = *(v180 + 8);
      v65 = *(v180 + 32);
      v64 = *(v180 + 40);
      if (*(&v190 + 1))
      {
        if (*(v180 + 24) && v190 != *(v180 + 16))
        {
          v164 = *(v180 + 40);
          v165 = v191;
          LODWORD(v182) = sub_1D30E97CC();
          if (a1 == v63)
          {
            v61 = v165;
            v64 = v164;
            if (v60 != v62)
            {
              goto LABEL_34;
            }
          }

          else
          {
            v61 = v165;
            v64 = v164;
LABEL_34:
            a1 = v61;
            v66 = v64;
            v67 = sub_1D30E97CC();
            v64 = v66;
            v61 = a1;
            if ((v67 & 1) == 0)
            {

              v14 = v183;
              v11 = v177;
              v7 = v176;
              goto LABEL_12;
            }
          }

          if (v61 == v65)
          {
            v11 = v177;
            v7 = v176;
            if (v17 == v64)
            {

LABEL_40:
              v14 = v183;
              v57 = v185;
              if ((v182 & 1) == 0)
              {

                goto LABEL_13;
              }

LABEL_41:
              sub_1D30E950C();
              a1 = *(v186 + 16);
              sub_1D30E953C();
              sub_1D30E954C();
              sub_1D30E951C();
              goto LABEL_13;
            }

            goto LABEL_39;
          }

          goto LABEL_38;
        }

        LODWORD(v182) = 1;
        if (v189 != __PAIR128__(v62, v63))
        {
          goto LABEL_34;
        }

        LODWORD(v182) = 1;
        if (v191 == v65)
        {
          v11 = v177;
          v7 = v176;
          if (*(&v191 + 1) == v64)
          {
            goto LABEL_29;
          }

          goto LABEL_39;
        }
      }

      else
      {
        LODWORD(v182) = 1;
        if (v189 != __PAIR128__(v62, v63))
        {
          goto LABEL_34;
        }

        LODWORD(v182) = 1;
        if (v191 == v65)
        {
          v11 = v177;
          v7 = v176;
          if (*(&v191 + 1) == v64)
          {
LABEL_29:

            v14 = v183;
            v57 = v185;
            goto LABEL_41;
          }

          goto LABEL_39;
        }
      }

LABEL_38:
      v11 = v177;
      v7 = v176;
LABEL_39:
      a1 = sub_1D30E97CC();

      if (a1)
      {
        goto LABEL_40;
      }

      v14 = v183;
LABEL_12:
      v57 = v185;
LABEL_13:
      ++v39;
      if (v57 == v7)
      {
        goto LABEL_47;
      }
    }

    if (v39 < *(v178 + 16))
    {
      v58 = *(v11 + 8 * v39 + 32);

      v59 = v39 + 1;
      if (__OFADD__(v39, 1))
      {
        goto LABEL_46;
      }

      goto LABEL_17;
    }

    __break(1u);
LABEL_98:
    __break(1u);
LABEL_99:
    __break(1u);
LABEL_100:
    swift_once();
  }

  a1 = MEMORY[0x1E69E7CC0];
LABEL_49:

  v192 = a1;
  v186 = 0;
  v187 = 1;
  if ((a1 & 0x8000000000000000) != 0 || (a1 & 0x4000000000000000) != 0)
  {
    v68 = sub_1D30E958C();
  }

  else
  {
    v68 = *(a1 + 16);
  }

  if (!v68)
  {
LABEL_64:

    v73 = sub_1D3028008();
    if (!v73)
    {
      type metadata accessor for HelperError(0);
      sub_1D3045A34(&qword_1EE313E48, type metadata accessor for HelperError, &unk_1D30EF3D8);
      swift_allocError();
      v128 = v180;
      v130 = *(v180 + 16);
      v129 = *(v180 + 32);
      *v131 = *v180;
      v131[1] = v130;
      v131[2] = v129;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      sub_1D30E5940(v128, &v189);

      sub_1D30E599C(v172);
    }

    v69 = v73;
    if (v187)
    {
      goto LABEL_67;
    }

LABEL_66:
    sub_1D30287B4(v186);

    goto LABEL_67;
  }

  v7 = 0;
  v11 = a1 & 0xC000000000000001;
  while (1)
  {
    if (v11)
    {
      v69 = MEMORY[0x1D38B29E0](v7, a1);
      v70 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_63;
      }
    }

    else
    {
      if (v7 >= *(a1 + 16))
      {
        goto LABEL_98;
      }

      v69 = *(a1 + 8 * v7 + 32);

      v70 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
LABEL_63:
        __break(1u);
        goto LABEL_64;
      }
    }

    v71 = v181;
    v72 = sub_1D30D75AC(v7, v69, v39, &v186);
    v181 = v71;
    if (v71)
    {

      goto LABEL_6;
    }

    if (v72)
    {
      break;
    }

    ++v7;
    if (v70 == v68)
    {
      goto LABEL_64;
    }
  }

  if ((v187 & 1) == 0)
  {
    goto LABEL_66;
  }

LABEL_67:
  v11 = v192;
  if (v192 >> 62)
  {
    v75 = sub_1D30E958C();
  }

  else
  {
    v75 = *((v192 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  a1 = v173;
  v76 = v172;
  if (!v75)
  {
LABEL_89:
    v126 = v144;
    v127 = v181;
    sub_1D30CF228(v69, v76, a1, v144);
    if (v127)
    {

      sub_1D30E599C(v76);
    }

    sub_1D30E8E7C();
    sub_1D30E8E0C();

    (*(v148 + 32))(v139, v126, v175);
LABEL_6:
    sub_1D30E599C(v172);
  }

  v39 = 0;
  v165 = v11 & 0xC000000000000001;
  v160 = OBJC_IVAR____TtC29ManagedBackgroundAssetsHelper15AssetPackRecord___observationRegistrar;
  v164 = v11 & 0xFFFFFFFFFFFFFF8;
  v17 = (v148 + 48);
  v159 = (v148 + 32);
  v176 = (v148 + 8);
  v146 = (v148 + 16);
  v147 = (v143 + 1);
  v14 = &unk_1D30FD088;
  v143 += 2;
  *&v74 = 136446466;
  v135 = v74;
  *&v74 = 136446722;
  v134 = v74;
  v184 = v69;
  v158 = v11;
  v157 = v75;
  v156 = (v148 + 48);
  while (1)
  {
    if (v165)
    {
      v81 = MEMORY[0x1D38B29E0](v39, v11);
      v82 = v39 + 1;
      if (__OFADD__(v39, 1))
      {
        goto LABEL_88;
      }
    }

    else
    {
      if (v39 >= *(v164 + 16))
      {
        goto LABEL_99;
      }

      v81 = *(v11 + 8 * v39 + 32);

      v82 = v39 + 1;
      if (__OFADD__(v39, 1))
      {
LABEL_88:
        __break(1u);
        goto LABEL_89;
      }
    }

    v177 = v82;
    v178 = v39;
    v83 = OBJC_IVAR____TtC29ManagedBackgroundAssetsHelper15AssetPackRecord___observationRegistrar;
    *&v189 = v81;
    swift_getKeyPath();
    v84 = sub_1D3045A34(&qword_1EE313618, type metadata accessor for AssetPackRecord, &protocol conformance descriptor for AssetPackRecord);
    v179 = v83;
    sub_1D30E8AEC();

    swift_getKeyPath();
    v180 = v81;
    sub_1D30E8F0C();

    v85 = v170;
    sub_1D30E8D6C();
    v86 = v175;
    v182 = *v17;
    result = (v182)(v85, 1, v175);
    if (result == 1)
    {
      goto LABEL_105;
    }

    v87 = *v159;
    (*v159)(v174, v85, v86);
    *&v189 = v184;
    swift_getKeyPath();
    v185 = v84;
    sub_1D30E8AEC();

    swift_getKeyPath();
    sub_1D30E8F0C();
    v88 = v175;

    v89 = v169;
    sub_1D30E8D6C();
    result = (v182)(v89, 1, v88);
    if (result == 1)
    {
      break;
    }

    v90 = v168;
    v87(v168, v89, v88);
    sub_1D3045A34(&qword_1EC74B040, MEMORY[0x1E69E8380], MEMORY[0x1E69E8390]);
    v91 = v174;
    v92 = sub_1D30E905C();
    v93 = *v176;
    (*v176)(v90, v88);
    v93(v91, v88);
    if (v92)
    {
      v7 = v180;

      v94 = sub_1D30E8B1C();
      v95 = sub_1D30E92BC();

      if (os_log_type_enabled(v94, v95))
      {
        v96 = swift_slowAlloc();
        v182 = swift_slowAlloc();
        v188 = v182;
        *&v189 = v7;
        *v96 = v135;
        swift_getKeyPath();
        LODWORD(v142) = v95;
        sub_1D30E8AEC();

        swift_getKeyPath();
        sub_1D2FF67A4();
        sub_1D30E8F0C();

        v97 = v191;

        v98 = sub_1D2FFEA04(v97, *(&v97 + 1), &v188);

        *(v96 + 4) = v98;
        *(v96 + 12) = 2082;
        *&v189 = v7;
        swift_getKeyPath();
        sub_1D30E8AEC();

        swift_getKeyPath();
        sub_1D30E8F0C();

        v99 = v189;

        v100 = sub_1D2FFEA04(v99, *(&v99 + 1), &v188);

        *(v96 + 14) = v100;
        _os_log_impl(&dword_1D2FD9000, v94, v142, "Removing a duplicate record of the asset pack with the ID “%{public}s” for the app with the bundle ID “%{public}s”…", v96, 0x16u);
        v101 = v182;
        swift_arrayDestroy();
        MEMORY[0x1D38B3760](v101, -1, -1);
        MEMORY[0x1D38B3760](v96, -1, -1);
      }
    }

    else
    {
      v102 = v153;
      v7 = v180;
      sub_1D3010008(v153);
      v188 = v7;
      swift_getKeyPath();
      sub_1D30E8AEC();

      swift_getKeyPath();
      v103 = sub_1D2FF67A4();
      sub_1D30E8F0C();

      v104 = v189;

      v105 = v181;
      sub_1D302D670(v104, *(&v104 + 1), v155, v154);
      v106 = v147;
      if (v105)
      {
        v93(v102, v175);

        v132 = v140;
        sub_1D3056830(v155, v140, type metadata accessor for FilePath.ResolutionError);
        sub_1D3045A34(&qword_1EC749428, type metadata accessor for FilePath.ResolutionError, &protocol conformance descriptor for FilePath.ResolutionError);
        swift_allocError();
        sub_1D3056830(v132, v133, type metadata accessor for FilePath.ResolutionError);

        sub_1D30E599C(v172);
      }

      v182 = v103;

      sub_1D30E8D8C();
      v107 = v175;
      (*v146)(v150, v102, v175);
      v108 = v151;
      sub_1D30E8D7C();
      v93(v102, v107);
      v109 = v163;
      sub_1D3003CF4(v108, 1, v163);
      v181 = 0;
      v110 = *v106;
      v111 = v166;
      (*v106)(v108, v166);
      v112 = v149;
      (*v143)(v149, v109, v111);

      v113 = sub_1D30E8B1C();
      v114 = sub_1D30E92BC();

      if (os_log_type_enabled(v113, v114))
      {
        v115 = swift_slowAlloc();
        v142 = swift_slowAlloc();
        v188 = v142;
        *v115 = v134;
        sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8], MEMORY[0x1E69E83D0]);
        v138 = v114;
        v116 = sub_1D30E977C();
        v118 = v117;
        v110(v112, v166);
        v119 = sub_1D2FFEA04(v116, v118, &v188);

        *(v115 + 4) = v119;
        *(v115 + 12) = 2082;
        *&v189 = v7;
        v136 = v113;
        swift_getKeyPath();
        v137 = v110;
        sub_1D30E8AEC();

        swift_getKeyPath();
        sub_1D30E8F0C();

        v120 = v191;

        v121 = sub_1D2FFEA04(v120, *(&v120 + 1), &v188);

        *(v115 + 14) = v121;
        *(v115 + 22) = 2082;
        *&v189 = v7;
        swift_getKeyPath();
        sub_1D30E8AEC();

        swift_getKeyPath();
        sub_1D30E8F0C();

        v122 = v189;

        v123 = sub_1D2FFEA04(v122, *(&v122 + 1), &v188);

        *(v115 + 24) = v123;
        v124 = v136;
        _os_log_impl(&dword_1D2FD9000, v136, v138, "Removing the duplicate asset pack at “%{public}s” with the ID “%{public}s” for the app with the bundle ID “%{public}s”…", v115, 0x20u);
        v125 = v142;
        swift_arrayDestroy();
        MEMORY[0x1D38B3760](v125, -1, -1);
        MEMORY[0x1D38B3760](v115, -1, -1);

        v137(v163, v166);
      }

      else
      {

        v110(v112, v111);
        v110(v109, v111);
      }
    }

    v69 = v184;
    v11 = v158;
    v77 = v157;
    v78 = v178;
    v17 = v156;
    v79 = v177;
    sub_1D30E8E7C();
    sub_1D30E8E3C();

    v39 = v78 + 1;
    v80 = v79 == v77;
    a1 = v173;
    v76 = v172;
    v14 = &unk_1D30FD088;
    if (v80)
    {
      goto LABEL_89;
    }
  }

  __break(1u);
LABEL_105:
  __break(1u);
  return result;
}

void sub_1D30CC4DC(unint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v146 = a3;
  v5 = type metadata accessor for FilePath.ResolutionError(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v157 = (&v137 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v137 - v8;
  v10 = sub_1D30E8D9C();
  v145 = *(v10 - 8);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v150 = &v137 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v156 = &v137 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v153 = &v137 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v152 = &v137 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v164 = &v137 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749940, &qword_1D30F1B10);
  v21 = MEMORY[0x1EEE9AC00](v20 - 8);
  v171 = &v137 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v172 = &v137 - v23;
  v174 = sub_1D30E8D5C();
  v149 = *(v174 - 8);
  v24 = MEMORY[0x1EEE9AC00](v174);
  v151 = &v137 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v155 = &v137 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v170 = &v137 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v173 = &v137 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A000, &qword_1D30F4C38);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v182 = &v137 - v32;
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A008, &qword_1D30F4C40);
  v181 = *(v183 - 8);
  MEMORY[0x1EEE9AC00](v183);
  v34 = &v137 - v33;
  if (qword_1EE3152C8 != -1)
  {
    goto LABEL_92;
  }

  while (1)
  {
    v35 = sub_1D30E8B3C();
    v36 = __swift_project_value_buffer(v35, qword_1EE314B60);
    v37 = sub_1D30E928C();
    sub_1D30E5940(a1, &v188);
    v169 = v36;
    v38 = sub_1D30E8B1C();
    sub_1D30E599C(a1);
    v39 = os_log_type_enabled(v38, v37);
    v166 = a2;
    v154 = v10;
    v179 = a1;
    v143 = v5;
    v142 = v9;
    if (v39)
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v191 = v41;
      *v40 = 136446466;
      v42 = *(a1 + 16);
      v188 = *a1;
      v189 = v42;
      v190 = *(a1 + 32);
      sub_1D30E5940(a1, &v185);
      v43 = AssetPackRecord.GlobalID.description.getter();
      v45 = v44;

      v46 = v166;

      v47 = sub_1D2FFEA04(v43, v45, &v191);

      *(v40 + 4) = v47;
      *(v40 + 12) = 2082;
      *(v40 + 14) = sub_1D2FFEA04(0x6F6974636E754628, 0xEA0000000000296ELL, &v191);
      _os_log_impl(&dword_1D2FD9000, v38, v37, "With record of asset pack with global ID: %{public}s body: %{public}s", v40, 0x16u);
      swift_arrayDestroy();
      v48 = v41;
      a2 = v46;
      MEMORY[0x1D38B3760](v48, -1, -1);
      MEMORY[0x1D38B3760](v40, -1, -1);
    }

    a1 = v184;
    v49 = v182;
    v50 = *(a2 + 4);
    sub_1D30E8E7C();
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A010, &unk_1D30F4C48);
    (*(*(v51 - 8) + 56))(v49, 1, 1, v51);
    v9 = type metadata accessor for AssetPackRecord(0);
    v52 = sub_1D3045A34(&qword_1EE313610, type metadata accessor for AssetPackRecord, &protocol conformance descriptor for AssetPackRecord);
    v53 = MEMORY[0x1E69E7CC0];
    sub_1D30E8EBC();
    v54 = sub_1D30E8E1C();
    v180 = a1;
    if (a1)
    {
      (*(v181 + 1))(v34, v183);

      return;
    }

    v10 = v54;
    v182 = v52;
    v163 = v9;
    v165 = v50;
    (*(v181 + 1))(v34, v183);

    v185 = v53;
    if (!(v10 >> 62))
    {
      v55 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v5 = v182;
      if (!v55)
      {
        break;
      }

      goto LABEL_8;
    }

    v55 = sub_1D30E958C();
    v5 = v182;
    if (!v55)
    {
      break;
    }

LABEL_8:
    a1 = 0;
    v178 = v10 & 0xC000000000000001;
    v177 = v10 & 0xFFFFFFFFFFFFFF8;
    v175 = v10;
    v176 = v55;
    while (v178)
    {
      v9 = MEMORY[0x1D38B29E0](a1, v10);
      v57 = a1 + 1;
      if (__OFADD__(a1, 1))
      {
LABEL_43:
        __break(1u);
LABEL_44:
        v53 = v185;
        a2 = v166;
        goto LABEL_45;
      }

LABEL_14:
      v184 = v57;
      sub_1D30E91FC();
      v183 = sub_1D30E91EC();
      sub_1D30E91AC();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v187 = v9;
      swift_getKeyPath();
      sub_1D3045A34(&qword_1EE313618, type metadata accessor for AssetPackRecord, &protocol conformance descriptor for AssetPackRecord);
      sub_1D30E8AEC();

      swift_getKeyPath();
      sub_1D2FF67A4();
      sub_1D30E8F0C();

      v58 = v188;
      a2 = *(&v190 + 1);
      v59 = v190;
      v61 = *v179;
      v60 = *(v179 + 8);
      v63 = *(v179 + 32);
      v62 = *(v179 + 40);
      if (*(&v189 + 1))
      {
        if (*(v179 + 24) && v189 != *(v179 + 16))
        {
          v167 = *(v179 + 40);
          v168 = v190;
          LODWORD(v181) = sub_1D30E97CC();
          if (v58 == v61)
          {
            v59 = v168;
            v62 = v167;
            if (*(&v58 + 1) == v60)
            {
              goto LABEL_32;
            }
          }

          else
          {
            v59 = v168;
            v62 = v167;
          }
        }

        else
        {
          LODWORD(v181) = 1;
          if (v188 == __PAIR128__(v60, v61))
          {
            LODWORD(v181) = 1;
            if (v190 != v63)
            {
              goto LABEL_35;
            }

            v5 = v182;
            v56 = v176;
            v34 = v184;
            if (*(&v190 + 1) != v62)
            {
              goto LABEL_36;
            }

LABEL_26:

            v10 = v175;
            goto LABEL_38;
          }
        }
      }

      else
      {
        LODWORD(v181) = 1;
        if (v188 == __PAIR128__(v60, v61))
        {
          LODWORD(v181) = 1;
          if (v190 != v63)
          {
            goto LABEL_35;
          }

          v5 = v182;
          v56 = v176;
          v34 = v184;
          if (*(&v190 + 1) != v62)
          {
            goto LABEL_36;
          }

          goto LABEL_26;
        }
      }

      v64 = v59;
      v65 = v62;
      v66 = sub_1D30E97CC();
      v62 = v65;
      v59 = v64;
      if (v66)
      {
LABEL_32:
        if (v59 == v63)
        {
          v5 = v182;
          v56 = v176;
          v34 = v184;
          if (a2 == v62)
          {

            goto LABEL_37;
          }

LABEL_36:
          v67 = sub_1D30E97CC();

          if ((v67 & 1) == 0)
          {

            v10 = v175;
            goto LABEL_10;
          }

LABEL_37:
          v10 = v175;
          if ((v181 & 1) == 0)
          {

            goto LABEL_10;
          }

LABEL_38:
          sub_1D30E950C();
          sub_1D30E953C();
          sub_1D30E954C();
          sub_1D30E951C();
          goto LABEL_10;
        }

LABEL_35:
        v5 = v182;
        v56 = v176;
        v34 = v184;
        goto LABEL_36;
      }

      v5 = v182;
      v10 = v175;
      v56 = v176;
      v34 = v184;
LABEL_10:
      ++a1;
      if (v34 == v56)
      {
        goto LABEL_44;
      }
    }

    if (a1 < *(v177 + 16))
    {
      v9 = *(v10 + 8 * a1 + 32);

      v57 = a1 + 1;
      if (__OFADD__(a1, 1))
      {
        goto LABEL_43;
      }

      goto LABEL_14;
    }

    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    swift_once();
  }

LABEL_45:

  v191 = v53;
  v185 = 0;
  v186 = 1;
  if (v53 < 0 || (v53 & 0x4000000000000000) != 0)
  {
    v68 = sub_1D30E958C();
  }

  else
  {
    v68 = *(v53 + 16);
  }

  if (!v68)
  {
LABEL_60:

    v72 = sub_1D3028008();
    v5 = v182;
    if (!v72)
    {
LABEL_84:
      type metadata accessor for HelperError(v72);
      sub_1D3045A34(&qword_1EE313E48, type metadata accessor for HelperError, &unk_1D30EF3D8);
      swift_allocError();
      v129 = v179;
      v131 = *(v179 + 16);
      v130 = *(v179 + 32);
      *v132 = *v179;
      v132[1] = v131;
      v132[2] = v130;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      sub_1D30E5940(v129, &v188);

      return;
    }

    v34 = v72;
    if (v186)
    {
      goto LABEL_63;
    }

LABEL_62:
    sub_1D30287B4(v185);

    goto LABEL_63;
  }

  v5 = 0;
  v9 = v53 & 0xC000000000000001;
  while (1)
  {
    if (v9)
    {
      v34 = MEMORY[0x1D38B29E0](v5, v53);
      v69 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_59;
      }
    }

    else
    {
      if (v5 >= *(v53 + 16))
      {
        goto LABEL_90;
      }

      v34 = *(v53 + 8 * v5 + 32);

      v69 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
LABEL_59:
        __break(1u);
        goto LABEL_60;
      }
    }

    v70 = v180;
    v71 = sub_1D30D75AC(v5, v34, a2, &v185);
    v180 = v70;
    if (v70)
    {

      return;
    }

    if (v71)
    {
      break;
    }

    ++v5;
    if (v69 == v68)
    {
      goto LABEL_60;
    }
  }

  v5 = v182;
  if ((v186 & 1) == 0)
  {
    goto LABEL_62;
  }

LABEL_63:
  v9 = v191;
  if (v191 >> 62)
  {
    v74 = sub_1D30E958C();
    if (!v74)
    {
      goto LABEL_97;
    }

LABEL_65:
    v10 = 0;
    v168 = v9 & 0xC000000000000001;
    v162 = OBJC_IVAR____TtC29ManagedBackgroundAssetsHelper15AssetPackRecord___observationRegistrar;
    v167 = v9 & 0xFFFFFFFFFFFFFF8;
    a1 = v149 + 48;
    v175 = (v149 + 8);
    v147 = (v149 + 16);
    v148 = (v145 + 1);
    v145 += 2;
    *&v73 = 136446466;
    v138 = v73;
    *&v73 = 136446722;
    v137 = v73;
    v181 = v34;
    v160 = v9;
    v159 = v74;
    v158 = v149 + 48;
    v161 = (v149 + 32);
    while (1)
    {
      if (v168)
      {
        v72 = MEMORY[0x1D38B29E0](v10, v9);
        v77 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          goto LABEL_83;
        }
      }

      else
      {
        if (v10 >= *(v167 + 16))
        {
          goto LABEL_91;
        }

        v77 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
LABEL_83:
          __break(1u);
          goto LABEL_84;
        }
      }

      v176 = v77;
      v78 = v72;
      v177 = v10;
      v79 = OBJC_IVAR____TtC29ManagedBackgroundAssetsHelper15AssetPackRecord___observationRegistrar;
      *&v188 = v72;
      swift_getKeyPath();
      v80 = sub_1D3045A34(&qword_1EE313618, type metadata accessor for AssetPackRecord, &protocol conformance descriptor for AssetPackRecord);
      v178 = v79;
      sub_1D30E8AEC();

      swift_getKeyPath();
      v184 = v78;
      sub_1D30E8F0C();

      v81 = v172;
      sub_1D30E8D6C();
      v82 = v174;
      v179 = *a1;
      if ((v179)(v81, 1, v174) == 1)
      {
        goto LABEL_102;
      }

      v83 = *v161;
      (*v161)(v173, v81, v82);
      *&v188 = v181;
      swift_getKeyPath();
      v183 = v80;
      sub_1D30E8AEC();

      swift_getKeyPath();
      sub_1D30E8F0C();
      v84 = v174;

      v85 = v171;
      sub_1D30E8D6C();
      if ((v179)(v85, 1, v84) == 1)
      {
        __break(1u);
LABEL_102:
        __break(1u);
        return;
      }

      v86 = v170;
      v83(v170, v85, v84);
      sub_1D3045A34(&qword_1EC74B040, MEMORY[0x1E69E8380], MEMORY[0x1E69E8390]);
      v87 = v173;
      v88 = sub_1D30E905C();
      v89 = *v175;
      (*v175)(v86, v84);
      v89(v87, v84);
      if (v88)
      {
        v90 = v184;

        v91 = sub_1D30E8B1C();
        v92 = sub_1D30E92BC();

        if (os_log_type_enabled(v91, v92))
        {
          v93 = swift_slowAlloc();
          v179 = swift_slowAlloc();
          v187 = v179;
          *&v188 = v90;
          *v93 = v138;
          LODWORD(v144) = v92;
          swift_getKeyPath();
          sub_1D30E8AEC();

          swift_getKeyPath();
          sub_1D2FF67A4();
          a2 = v182;
          sub_1D30E8F0C();

          v94 = v190;

          v95 = sub_1D2FFEA04(v94, *(&v94 + 1), &v187);
          v96 = v184;

          *(v93 + 4) = v95;
          *(v93 + 12) = 2082;
          *&v188 = v96;
          swift_getKeyPath();
          sub_1D30E8AEC();

          swift_getKeyPath();
          sub_1D30E8F0C();

          v97 = v188;

          v98 = sub_1D2FFEA04(v97, *(&v97 + 1), &v187);

          *(v93 + 14) = v98;
          _os_log_impl(&dword_1D2FD9000, v91, v144, "Removing a duplicate record of the asset pack with the ID “%{public}s” for the app with the bundle ID “%{public}s”…", v93, 0x16u);
          v99 = v179;
          swift_arrayDestroy();
          MEMORY[0x1D38B3760](v99, -1, -1);
          MEMORY[0x1D38B3760](v93, -1, -1);

          goto LABEL_68;
        }
      }

      else
      {
        v100 = v155;
        v101 = v184;
        sub_1D3010008(v155);
        v187 = v101;
        swift_getKeyPath();
        sub_1D30E8AEC();

        swift_getKeyPath();
        v102 = sub_1D2FF67A4();
        sub_1D30E8F0C();

        v103 = v188;

        v104 = v180;
        sub_1D302D670(v103, *(&v103 + 1), v157, v156);
        if (v104)
        {
          v89(v100, v174);

          v133 = v142;
          sub_1D3056830(v157, v142, type metadata accessor for FilePath.ResolutionError);
          sub_1D3045A34(&qword_1EC749428, type metadata accessor for FilePath.ResolutionError, &protocol conformance descriptor for FilePath.ResolutionError);
          swift_allocError();
          sub_1D3056830(v133, v134, type metadata accessor for FilePath.ResolutionError);

          goto LABEL_99;
        }

        v179 = v102;

        sub_1D30E8D8C();
        v105 = v100;
        v106 = v100;
        v107 = v174;
        (*v147)(v151, v105, v174);
        v108 = v152;
        sub_1D30E8D7C();
        v109 = v107;
        v110 = v164;
        v89(v106, v109);
        sub_1D3003CF4(v108, 1, v110);
        v180 = 0;
        v111 = *v148;
        v112 = v154;
        (*v148)(v108, v154);
        v113 = v150;
        (*v145)(v150, v110, v112);

        v114 = sub_1D30E8B1C();
        v115 = sub_1D30E92BC();

        if (os_log_type_enabled(v114, v115))
        {
          v116 = swift_slowAlloc();
          v141 = v115;
          v117 = v116;
          v144 = swift_slowAlloc();
          v187 = v144;
          *v117 = v137;
          sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8], MEMORY[0x1E69E83D0]);
          v140 = v114;
          v118 = sub_1D30E977C();
          v120 = v119;
          v111(v113, v112);
          v121 = sub_1D2FFEA04(v118, v120, &v187);

          *(v117 + 4) = v121;
          *(v117 + 12) = 2082;
          *&v188 = v184;
          swift_getKeyPath();
          v139 = v111;
          sub_1D30E8AEC();

          swift_getKeyPath();
          a2 = v182;
          sub_1D30E8F0C();

          v122 = v190;

          v123 = v184;
          v124 = sub_1D2FFEA04(v122, *(&v122 + 1), &v187);

          *(v117 + 14) = v124;
          *(v117 + 22) = 2082;
          *&v188 = v123;
          swift_getKeyPath();
          sub_1D30E8AEC();

          swift_getKeyPath();
          sub_1D30E8F0C();

          v125 = v188;

          v126 = sub_1D2FFEA04(v125, *(&v125 + 1), &v187);

          *(v117 + 24) = v126;
          v127 = v140;
          _os_log_impl(&dword_1D2FD9000, v140, v141, "Removing the duplicate asset pack at “%{public}s” with the ID “%{public}s” for the app with the bundle ID “%{public}s”…", v117, 0x20u);
          v128 = v144;
          swift_arrayDestroy();
          MEMORY[0x1D38B3760](v128, -1, -1);
          MEMORY[0x1D38B3760](v117, -1, -1);

          v139(v164, v112);
          goto LABEL_68;
        }

        v111(v113, v112);
        v111(v110, v112);
      }

      a2 = v182;
LABEL_68:
      v34 = v181;
      v9 = v160;
      v75 = v159;
      v76 = v177;
      sub_1D30E8E7C();
      sub_1D30E8E3C();

      v10 = v76 + 1;
      v5 = a2;
      a1 = v158;
      if (v176 == v75)
      {
        goto LABEL_97;
      }
    }
  }

  v74 = *((v191 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v74)
  {
    goto LABEL_65;
  }

LABEL_97:
  v135 = v146;
  sub_1D3010008(v146);
  sub_1D30E8E7C();
  v136 = v180;
  sub_1D30E8E0C();
  if (v136)
  {
    (*(v149 + 8))(v135, v174);

LABEL_99:
  }

  else
  {
  }
}

uint64_t sub_1D30CDFD4()
{
  sub_1D30E91FC();
  sub_1D30E91EC();
  sub_1D30E91AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_1EE3152C8 != -1)
  {
    swift_once();
  }

  v0 = sub_1D30E8B3C();
  __swift_project_value_buffer(v0, qword_1EE314B60);
  v1 = sub_1D30E8B1C();
  v2 = sub_1D30E92BC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1D2FD9000, v1, v2, "Erasing all records of downloaded asset packs…", v3, 2u);
    MEMORY[0x1D38B3760](v3, -1, -1);
  }

  v4 = sub_1D30E8E7C();
  MEMORY[0x1EEE9AC00](v4);
  sub_1D30E8DFC();
}

uint64_t sub_1D30CE18C(uint64_t a1, uint64_t a2)
{
  v15 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A000, &qword_1D30F4C38);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v14 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A008, &qword_1D30F4C40);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14 - v8;
  sub_1D30E91FC();
  sub_1D30E91EC();
  sub_1D30E91AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1D30E8E7C();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A010, &unk_1D30F4C48);
  (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
  type metadata accessor for AssetPackRecord(0);
  sub_1D3045A34(&qword_1EE313610, type metadata accessor for AssetPackRecord, &protocol conformance descriptor for AssetPackRecord);
  v11 = sub_1D30E8EBC();
  MEMORY[0x1EEE9AC00](v11);
  v12 = v15;
  *(&v14 - 2) = a1;
  *(&v14 - 1) = v12;
  sub_1D30E8E5C();
  (*(v7 + 8))(v9, v6);
}

uint64_t sub_1D30CE44C(uint64_t a1)
{
  sub_1D30E91FC();
  sub_1D30E91EC();
  sub_1D30E91AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_1EE3152C8 != -1)
  {
    swift_once();
  }

  v2 = sub_1D30E8B3C();
  __swift_project_value_buffer(v2, qword_1EE314B60);

  v3 = sub_1D30E8B1C();
  v4 = sub_1D30E92BC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v14 = v10;
    *v5 = 136446466;
    swift_getKeyPath();
    v9 = v4;
    sub_1D3045A34(&qword_1EE313618, type metadata accessor for AssetPackRecord, &protocol conformance descriptor for AssetPackRecord);
    sub_1D30E8AEC();

    swift_getKeyPath();
    sub_1D3045A34(&qword_1EE313610, type metadata accessor for AssetPackRecord, &protocol conformance descriptor for AssetPackRecord);
    sub_1D2FF67A4();
    sub_1D30E8F0C();

    v6 = sub_1D2FFEA04(v12, v13, &v14);

    *(v5 + 4) = v6;
    *(v5 + 12) = 2082;
    swift_getKeyPath();
    sub_1D30E8AEC();

    swift_getKeyPath();
    sub_1D30E8F0C();

    v7 = sub_1D2FFEA04(a1, v11, &v14);

    *(v5 + 14) = v7;
    _os_log_impl(&dword_1D2FD9000, v3, v9, "Removing the record of the asset pack with the ID “%{public}s” for the app with the bundle ID “%{public}s” from the database…", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D38B3760](v10, -1, -1);
    MEMORY[0x1D38B3760](v5, -1, -1);
  }

  sub_1D30E8E7C();
  type metadata accessor for AssetPackRecord(0);
  sub_1D3045A34(&qword_1EE313610, type metadata accessor for AssetPackRecord, &protocol conformance descriptor for AssetPackRecord);
  sub_1D30E8E3C();
}

uint64_t sub_1D30CE844@<X0>(uint64_t *a1@<X1>, BOOL *a2@<X8>)
{
  v3 = v2;
  v48 = a1;
  v38 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A000, &qword_1D30F4C38);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v37 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A008, &qword_1D30F4C40);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v37 - v9;
  v11 = sub_1D30E91FC();
  v39 = sub_1D30E91EC();
  v47 = v11;
  sub_1D30E91AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1D30E8E7C();
  v60 = type metadata accessor for AssetPackRecord(0);
  sub_1D30E8ACC();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A010, &unk_1D30F4C48);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = sub_1D3045A34(&qword_1EE313610, type metadata accessor for AssetPackRecord, &protocol conformance descriptor for AssetPackRecord);
  v14 = MEMORY[0x1E69E7CC0];
  sub_1D30E8EBC();
  v15 = sub_1D30E8E1C();
  (*(v8 + 8))(v10, v7);
  if (v2)
  {
  }

  v59 = v14;
  if (v15 >> 62)
  {
    goto LABEL_54;
  }

  v17 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_7:
  v37 = v3;
  if (v17)
  {
    v3 = 0;
    v45 = v15 & 0xFFFFFFFFFFFFFF8;
    v46 = v15 & 0xC000000000000001;
    v43 = v15;
    v44 = v13;
    v42 = v17;
    while (1)
    {
      if (v46)
      {
        v20 = MEMORY[0x1D38B29E0](v3, v15);
        v21 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
LABEL_46:
          __break(1u);
LABEL_47:
          v35 = v59;
          goto LABEL_49;
        }
      }

      else
      {
        if (v3 >= *(v45 + 16))
        {
          __break(1u);
LABEL_54:
          v17 = sub_1D30E958C();
          goto LABEL_7;
        }

        v20 = *(v15 + 8 * v3 + 32);

        v21 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          goto LABEL_46;
        }
      }

      v51 = v21;
      v50 = sub_1D30E91EC();
      sub_1D30E91AC();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v52 = v20;
      swift_getKeyPath();
      sub_1D3045A34(&qword_1EE313618, type metadata accessor for AssetPackRecord, &protocol conformance descriptor for AssetPackRecord);
      sub_1D30E8AEC();

      swift_getKeyPath();
      sub_1D2FF67A4();
      sub_1D30E8F0C();

      v23 = v53;
      v22 = v54;
      v24 = v57;
      v25 = v58;
      v27 = *v48;
      v26 = v48[1];
      v29 = v48[4];
      v28 = v48[5];
      if (v56)
      {
        v30 = v48[3];
        if (!v30 || v55 == v48[2] && v56 == v30)
        {
          v49 = 1;
          if (v53 == v27 && v54 == v26)
          {
            v49 = 1;
            if (v57 == v29)
            {
              v18 = v42;
              v15 = v43;
              v19 = v51;
              if (v58 != v28)
              {
                goto LABEL_39;
              }

LABEL_29:

              v13 = v44;
              goto LABEL_41;
            }

            goto LABEL_38;
          }
        }

        else
        {
          v40 = v48[5];
          v41 = v57;
          v49 = sub_1D30E97CC();
          if (v23 == v27)
          {
            v28 = v40;
            v24 = v41;
            if (v22 == v26)
            {
              goto LABEL_35;
            }
          }

          else
          {
            v28 = v40;
            v24 = v41;
          }
        }
      }

      else
      {
        v49 = 1;
        if (v53 == v27 && v54 == v26)
        {
          v49 = 1;
          if (v57 == v29)
          {
            v18 = v42;
            v15 = v43;
            v19 = v51;
            if (v58 == v28)
            {
              goto LABEL_29;
            }

LABEL_39:
            v34 = sub_1D30E97CC();

            if ((v34 & 1) == 0)
            {

              v13 = v44;
              goto LABEL_10;
            }

LABEL_40:
            v13 = v44;
            if ((v49 & 1) == 0)
            {

              goto LABEL_10;
            }

LABEL_41:
            sub_1D30E950C();
            sub_1D30E953C();
            sub_1D30E954C();
            sub_1D30E951C();
            goto LABEL_10;
          }

LABEL_38:
          v18 = v42;
          v15 = v43;
          v19 = v51;
          goto LABEL_39;
        }
      }

      v31 = v24;
      v32 = v28;
      v33 = sub_1D30E97CC();
      v28 = v32;
      v24 = v31;
      if (v33)
      {
LABEL_35:
        if (v24 == v29)
        {
          v18 = v42;
          v15 = v43;
          v19 = v51;
          if (v25 != v28)
          {
            goto LABEL_39;
          }

          goto LABEL_40;
        }

        goto LABEL_38;
      }

      v15 = v43;
      v13 = v44;
      v18 = v42;
      v19 = v51;
LABEL_10:
      ++v3;
      if (v19 == v18)
      {
        goto LABEL_47;
      }
    }
  }

  v35 = MEMORY[0x1E69E7CC0];
LABEL_49:

  if (v35 < 0 || (v35 & 0x4000000000000000) != 0)
  {
    v36 = sub_1D30E958C();
  }

  else
  {
    v36 = *(v35 + 16);
  }

  *v38 = v36 != 0;
  return result;
}

uint64_t sub_1D30CEF5C@<X0>(uint64_t *a2@<X8>)
{
  v14 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A030, &qword_1D30F4CD0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A038, &unk_1D30F4D00);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - v8;
  sub_1D30E91FC();
  sub_1D30E91EC();
  sub_1D30E91AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1D2FF1768(&qword_1EE313FC8, &qword_1EC74A030, &qword_1D30F4CD0, MEMORY[0x1E6968DA8]);
  sub_1D30E87BC();
  swift_getKeyPath();
  sub_1D30E876C();

  (*(v3 + 8))(v5, v2);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74B048, &unk_1D30FD0B0);
  v11 = v14;
  v14[3] = v10;
  v11[4] = sub_1D30E5A4C();
  __swift_allocate_boxed_opaque_existential_0Tm(v11);
  sub_1D2FF1768(&qword_1EC74B028, &qword_1EC74A038, &unk_1D30F4D00, MEMORY[0x1E6968D58]);
  sub_1D30E877C();
  (*(v7 + 8))(v9, v6);
}

uint64_t sub_1D30CF228@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v57[7] = a1;
  v46 = a4;
  v53 = type metadata accessor for FilePath.ResolutionError(0);
  v6 = MEMORY[0x1EEE9AC00](v53);
  v8 = (&v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v52 = &v43 - v9;
  v56 = sub_1D30E8D5C();
  v54 = *(v56 - 8);
  v10 = MEMORY[0x1EEE9AC00](v56);
  v49 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v43 - v12;
  v14 = sub_1D30E8D9C();
  v50 = *(v14 - 8);
  v51 = v14;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v47 = &v43 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v48 = &v43 - v20;
  if (qword_1EE3152C8 != -1)
  {
    swift_once();
  }

  v21 = sub_1D30E8B3C();
  v22 = __swift_project_value_buffer(v21, qword_1EE314B60);
  sub_1D30E5940(a2, v57);
  v45 = v22;
  v23 = sub_1D30E8B1C();
  v24 = sub_1D30E92BC();
  sub_1D30E599C(a2);
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v44 = v8;
    v27 = a3;
    v28 = v26;
    v57[0] = v26;
    *v25 = 136446466;
    *(v25 + 4) = sub_1D2FFEA04(a2[4], a2[5], v57);
    *(v25 + 12) = 2082;
    *(v25 + 14) = sub_1D2FFEA04(*a2, a2[1], v57);
    _os_log_impl(&dword_1D2FD9000, v23, v24, "Removing the asset pack with the ID “%{public}s” for the app with the bundle ID “%{public}s” from the container…", v25, 0x16u);
    swift_arrayDestroy();
    v29 = v28;
    a3 = v27;
    v8 = v44;
    MEMORY[0x1D38B3760](v29, -1, -1);
    MEMORY[0x1D38B3760](v25, -1, -1);
  }

  sub_1D3010008(v13);
  v30 = *a2;
  v31 = a2[1];
  v32 = v55;
  sub_1D302D670(*a2, v31, v8, v17);
  if (v32)
  {
    (*(v54 + 8))(v13, v56);
    v33 = v52;
    sub_1D3056830(v8, v52, type metadata accessor for FilePath.ResolutionError);
    sub_1D3045A34(&qword_1EC749428, type metadata accessor for FilePath.ResolutionError, &protocol conformance descriptor for FilePath.ResolutionError);
    swift_allocError();
    return sub_1D3056830(v33, v34, type metadata accessor for FilePath.ResolutionError);
  }

  else
  {
    v52 = v31;
    v53 = v30;
    v55 = a3;
    sub_1D30E8D8C();
    v36 = v54;
    v37 = v56;
    (*(v54 + 16))(v49, v13, v56);
    v38 = v48;
    sub_1D30E8D7C();
    (*(v36 + 8))(v13, v37);
    sub_1D3009B38(v38);
    (*(v50 + 8))(v38, v51);
    sub_1D30E5940(a2, v57);
    v39 = sub_1D30E8B1C();
    v40 = sub_1D30E92BC();
    sub_1D30E599C(a2);
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v57[0] = v42;
      *v41 = 136446466;
      *(v41 + 4) = sub_1D2FFEA04(a2[4], a2[5], v57);
      *(v41 + 12) = 2082;
      *(v41 + 14) = sub_1D2FFEA04(v53, v52, v57);
      _os_log_impl(&dword_1D2FD9000, v39, v40, "Removing the record of the asset pack with the ID “%{public}s” for the app with the bundle ID “%{public}s” from the database…", v41, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D38B3760](v42, -1, -1);
      MEMORY[0x1D38B3760](v41, -1, -1);
    }

    sub_1D30E8E7C();
    type metadata accessor for AssetPackRecord(0);
    sub_1D3045A34(&qword_1EE313610, type metadata accessor for AssetPackRecord, &protocol conformance descriptor for AssetPackRecord);
    sub_1D30E8E3C();

    return sub_1D3010008(v46);
  }
}

uint64_t sub_1D30CF8A8(uint64_t a1, unint64_t a2)
{
  sub_1D30E91FC();
  sub_1D30E91EC();
  sub_1D30E91AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a2)
  {
    if (qword_1EE3152C8 != -1)
    {
      swift_once();
    }

    v4 = sub_1D30E8B3C();
    __swift_project_value_buffer(v4, qword_1EE314B60);

    v5 = sub_1D30E8B1C();
    v6 = sub_1D30E92BC();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v15 = v8;
      *v7 = 136446210;
      *(v7 + 4) = sub_1D2FFEA04(a1, a2, &v15);
      _os_log_impl(&dword_1D2FD9000, v5, v6, "Removing all asset packs for the app with the bundle ID “%{public}s”…", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v8);
      MEMORY[0x1D38B3760](v8, -1, -1);
      v9 = v7;
LABEL_12:
      MEMORY[0x1D38B3760](v9, -1, -1);
    }
  }

  else
  {
    if (qword_1EE3152C8 != -1)
    {
      swift_once();
    }

    v10 = sub_1D30E8B3C();
    __swift_project_value_buffer(v10, qword_1EE314B60);
    v5 = sub_1D30E8B1C();
    v11 = sub_1D30E92BC();
    if (os_log_type_enabled(v5, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1D2FD9000, v5, v11, "Removing all asset packs…", v12, 2u);
      v9 = v12;
      goto LABEL_12;
    }
  }

  v13 = sub_1D30E8E7C();
  MEMORY[0x1EEE9AC00](v13);
  sub_1D30E8DFC();
}

uint64_t sub_1D30CFB88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = a3;
  v19 = a4;
  v17 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A000, &qword_1D30F4C38);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v16 - v6;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A008, &qword_1D30F4C40);
  v8 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v10 = &v16 - v9;
  sub_1D30E91FC();
  sub_1D30E91EC();
  sub_1D30E91AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1D30E8E7C();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A010, &unk_1D30F4C48);
  (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
  type metadata accessor for AssetPackRecord(0);
  sub_1D3045A34(&qword_1EE313610, type metadata accessor for AssetPackRecord, &protocol conformance descriptor for AssetPackRecord);
  v12 = sub_1D30E8EBC();
  MEMORY[0x1EEE9AC00](v12);
  v13 = v18;
  *(&v16 - 4) = v17;
  *(&v16 - 3) = v13;
  v14 = v19;
  *(&v16 - 2) = a1;
  *(&v16 - 1) = v14;
  sub_1D30E8E5C();
  (*(v8 + 8))(v10, v16);
}

uint64_t sub_1D30CFE54(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v78 = type metadata accessor for FilePath.ResolutionError(0);
  v9 = MEMORY[0x1EEE9AC00](v78);
  v81 = (&v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v77 = &v67 - v11;
  v12 = sub_1D30E8D5C();
  v82 = *(v12 - 8);
  v83 = v12;
  v13 = MEMORY[0x1EEE9AC00](v12);
  v74 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v85 = &v67 - v15;
  v16 = sub_1D30E8D9C();
  v75 = *(v16 - 8);
  v76 = v16;
  v17 = MEMORY[0x1EEE9AC00](v16);
  v80 = &v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v72 = &v67 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v73 = &v67 - v21;
  sub_1D30E91FC();
  v84 = sub_1D30E91EC();
  sub_1D30E91AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v22 = &qword_1EE313000;
  if (a3)
  {
    v90 = a1;
    swift_getKeyPath();
    sub_1D3045A34(&qword_1EE313618, type metadata accessor for AssetPackRecord, &protocol conformance descriptor for AssetPackRecord);
    sub_1D30E8AEC();

    swift_getKeyPath();
    sub_1D3045A34(&qword_1EE313610, type metadata accessor for AssetPackRecord, &protocol conformance descriptor for AssetPackRecord);
    sub_1D2FF67A4();
    sub_1D30E8F0C();

    v24 = v86;
    v23 = v87;

    if (v24 == a2 && v23 == a3)
    {

      v22 = &qword_1EE313000;
    }

    else
    {
      v25 = sub_1D30E97CC();

      v22 = &qword_1EE313000;
      if ((v25 & 1) == 0)
      {
      }
    }
  }

  if (qword_1EE3152C8 != -1)
  {
    swift_once();
  }

  v79 = v4;
  v26 = sub_1D30E8B3C();
  v27 = __swift_project_value_buffer(v26, qword_1EE314B60);

  v70 = v27;
  v28 = sub_1D30E8B1C();
  v29 = sub_1D30E92BC();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    v90 = v71;
    *v30 = 136446466;
    v67 = v22[196];
    v86 = a1;
    swift_getKeyPath();
    LODWORD(v69) = v29;
    sub_1D3045A34(&qword_1EE313618, type metadata accessor for AssetPackRecord, &protocol conformance descriptor for AssetPackRecord);
    v68 = v28;
    sub_1D30E8AEC();

    swift_getKeyPath();
    sub_1D3045A34(&qword_1EE313610, type metadata accessor for AssetPackRecord, &protocol conformance descriptor for AssetPackRecord);
    sub_1D2FF67A4();
    sub_1D30E8F0C();

    v31 = v88;
    v32 = a4;
    v33 = v89;

    v34 = sub_1D2FFEA04(v31, v33, &v90);
    a4 = v32;

    *(v30 + 4) = v34;
    *(v30 + 12) = 2082;
    v86 = a1;
    swift_getKeyPath();
    sub_1D30E8AEC();

    swift_getKeyPath();
    sub_1D30E8F0C();

    v35 = v86;
    v36 = v87;

    v37 = sub_1D2FFEA04(v35, v36, &v90);

    *(v30 + 14) = v37;
    v22 = &qword_1EE313000;
    v38 = v68;
    _os_log_impl(&dword_1D2FD9000, v68, v69, "Removing the asset pack with the ID “%{public}s” for the app with the bundle ID “%{public}s” from the container…", v30, 0x16u);
    v39 = v71;
    swift_arrayDestroy();
    MEMORY[0x1D38B3760](v39, -1, -1);
    MEMORY[0x1D38B3760](v30, -1, -1);
  }

  else
  {
  }

  v71 = a4[2];
  sub_1D3010008(v85);
  v40 = v22[196];
  v90 = a1;
  swift_getKeyPath();
  v41 = sub_1D3045A34(&qword_1EE313618, type metadata accessor for AssetPackRecord, &protocol conformance descriptor for AssetPackRecord);
  sub_1D30E8AEC();

  swift_getKeyPath();
  v42 = sub_1D3045A34(&qword_1EE313610, type metadata accessor for AssetPackRecord, &protocol conformance descriptor for AssetPackRecord);
  sub_1D2FF67A4();
  sub_1D30E8F0C();

  v44 = v86;
  v43 = v87;

  v45 = v79;
  v46 = v44;
  v47 = v81;
  sub_1D302D670(v46, v43, v81, v80);
  if (v45)
  {
    (v82[1].isa)(v85, v83);

    v48 = v47;
    v49 = v77;
    sub_1D3056830(v48, v77, type metadata accessor for FilePath.ResolutionError);
    sub_1D3045A34(&qword_1EC749428, type metadata accessor for FilePath.ResolutionError, &protocol conformance descriptor for FilePath.ResolutionError);
    swift_allocError();
    sub_1D3056830(v49, v50, type metadata accessor for FilePath.ResolutionError);
  }

  else
  {
    v77 = v41;
    v69 = v40;
    v78 = v42;
    v81 = a4;

    sub_1D30E8D8C();
    v52 = v82;
    v51 = v83;
    v53 = v85;
    (v82[2].isa)(v74, v85, v83);
    v54 = v73;
    sub_1D30E8D7C();
    (v52[1].isa)(v53, v51);
    sub_1D3009B38(v54);
    (*(v75 + 8))(v54, v76);

    v55 = sub_1D30E8B1C();
    v56 = sub_1D30E92BC();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      v86 = a1;
      v90 = v85;
      *v57 = 136446466;
      swift_getKeyPath();
      v79 = 0;
      LODWORD(v83) = v56;
      sub_1D30E8AEC();

      swift_getKeyPath();
      sub_1D30E8F0C();

      v58 = v88;
      v82 = v55;
      v59 = v89;

      v60 = sub_1D2FFEA04(v58, v59, &v90);

      *(v57 + 4) = v60;
      *(v57 + 12) = 2082;
      v86 = a1;
      swift_getKeyPath();
      sub_1D30E8AEC();

      swift_getKeyPath();
      sub_1D30E8F0C();

      v62 = v86;
      v61 = v87;

      v63 = sub_1D2FFEA04(v62, v61, &v90);

      *(v57 + 14) = v63;
      v64 = v82;
      _os_log_impl(&dword_1D2FD9000, v82, v83, "Removing the record of the asset pack with the ID “%{public}s” for the app with the bundle ID “%{public}s” from the database…", v57, 0x16u);
      v65 = v85;
      swift_arrayDestroy();
      MEMORY[0x1D38B3760](v65, -1, -1);
      MEMORY[0x1D38B3760](v57, -1, -1);
    }

    else
    {
    }

    sub_1D30E8E7C();
    type metadata accessor for AssetPackRecord(0);
    sub_1D30E8E3C();
  }
}

void sub_1D30D0A38(void *a1@<X0>, unint64_t a2@<X1>, void *a3@<X3>, void *a4@<X8>)
{
  v23 = a3;
  v20 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A000, &qword_1D30F4C38);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v20 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A008, &qword_1D30F4C40);
  v21 = *(v9 - 8);
  v22 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v20 - v10;
  sub_1D30E91FC();
  v24 = sub_1D30E91EC();
  sub_1D30E91AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_1EE3152C8 != -1)
  {
    swift_once();
  }

  v12 = sub_1D30E8B3C();
  __swift_project_value_buffer(v12, qword_1EE314B60);

  v13 = sub_1D30E8B1C();
  v14 = sub_1D30E92BC();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v26 = v16;
    *v15 = 136446210;
    *(v15 + 4) = sub_1D2FFEA04(a1, a2, &v26);
    _os_log_impl(&dword_1D2FD9000, v13, v14, "Making all asset packs for the app with the bundle ID “%{public}s” unavailable…", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v16);
    MEMORY[0x1D38B3760](v16, -1, -1);
    MEMORY[0x1D38B3760](v15, -1, -1);
  }

  v26 = MEMORY[0x1E69E7CC0];
  sub_1D30E8E7C();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A010, &unk_1D30F4C48);
  (*(*(v17 - 8) + 56))(v8, 1, 1, v17);
  type metadata accessor for AssetPackRecord(0);
  sub_1D3045A34(&qword_1EE313610, type metadata accessor for AssetPackRecord, &protocol conformance descriptor for AssetPackRecord);
  v18 = sub_1D30E8EBC();
  MEMORY[0x1EEE9AC00](v18);
  *(&v20 - 4) = a1;
  *(&v20 - 3) = a2;
  *(&v20 - 2) = &v26;
  *(&v20 - 1) = v23;
  v19 = v25;
  sub_1D30E8E5C();
  (*(v21 + 8))(v11, v22);

  if (v19)
  {
  }

  else
  {
    sub_1D30E8E7C();
    sub_1D30E8E0C();

    *v20 = v26;
  }
}

uint64_t sub_1D30D0E84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v64 = a4;
  v66 = type metadata accessor for FilePath.ResolutionError(0);
  v7 = MEMORY[0x1EEE9AC00](v66);
  v70 = (v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v65 = v56 - v9;
  v10 = sub_1D30E8D5C();
  v71 = *(v10 - 8);
  v72 = v10;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v60 = v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v69 = v56 - v13;
  v14 = sub_1D30E8D9C();
  v62 = *(v14 - 8);
  v63 = v14;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v68 = v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v59 = v56 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v61 = v56 - v19;
  sub_1D30E91FC();
  v74 = sub_1D30E91EC();
  sub_1D30E91AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v20 = OBJC_IVAR____TtC29ManagedBackgroundAssetsHelper15AssetPackRecord___observationRegistrar;
  v80 = a1;
  swift_getKeyPath();
  v21 = sub_1D3045A34(&qword_1EE313618, type metadata accessor for AssetPackRecord, &protocol conformance descriptor for AssetPackRecord);
  v22 = v20;
  sub_1D30E8AEC();

  swift_getKeyPath();
  sub_1D3045A34(&qword_1EE313610, type metadata accessor for AssetPackRecord, &protocol conformance descriptor for AssetPackRecord);
  v75 = sub_1D2FF67A4();
  sub_1D30E8F0C();

  v24 = v76;
  v23 = v77;

  if (v24 == a2 && v23 == a3)
  {
  }

  else
  {
    v25 = sub_1D30E97CC();

    if ((v25 & 1) == 0)
    {
    }
  }

  if (qword_1EE3152C8 != -1)
  {
    swift_once();
  }

  v26 = sub_1D30E8B3C();
  __swift_project_value_buffer(v26, qword_1EE314B60);

  v27 = sub_1D30E8B1C();
  v28 = sub_1D30E92BC();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v80 = v58;
    *v29 = 136446466;
    v76 = a1;
    swift_getKeyPath();
    v67 = v21;
    v56[1] = v22;
    v57 = v28;
    sub_1D30E8AEC();

    swift_getKeyPath();
    sub_1D30E8F0C();

    v30 = v78;
    v31 = v79;

    v32 = sub_1D2FFEA04(v30, v31, &v80);

    *(v29 + 4) = v32;
    *(v29 + 12) = 2082;
    v76 = a1;
    swift_getKeyPath();
    sub_1D30E8AEC();

    swift_getKeyPath();
    sub_1D30E8F0C();

    v33 = v76;
    v34 = v77;

    v35 = sub_1D2FFEA04(v33, v34, &v80);

    *(v29 + 14) = v35;
    _os_log_impl(&dword_1D2FD9000, v27, v57, "Making the asset pack with the ID “%{public}s” for the app with the bundle ID “%{public}s” unavailable…", v29, 0x16u);
    v36 = v58;
    swift_arrayDestroy();
    MEMORY[0x1D38B3760](v36, -1, -1);
    MEMORY[0x1D38B3760](v29, -1, -1);
  }

  v37 = v69;
  v76 = a1;
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  v56[-2] = a1;
  LOBYTE(v56[-1]) = 0;
  v39 = v73;
  sub_1D30E8ADC();

  sub_1D3010008(v37);
  v80 = a1;
  swift_getKeyPath();
  sub_1D30E8AEC();

  swift_getKeyPath();
  sub_1D30E8F0C();

  v41 = v76;
  v40 = v77;

  v42 = v41;
  v43 = v70;
  sub_1D302D670(v42, v40, v70, v68);
  if (v39)
  {
    (*(v71 + 8))(v37, v72);

    v44 = v65;
    sub_1D3056830(v43, v65, type metadata accessor for FilePath.ResolutionError);
    sub_1D3045A34(&qword_1EC749428, type metadata accessor for FilePath.ResolutionError, &protocol conformance descriptor for FilePath.ResolutionError);
    swift_allocError();
    sub_1D3056830(v44, v45, type metadata accessor for FilePath.ResolutionError);
  }

  else
  {

    sub_1D30E8D8C();
    v47 = v71;
    v46 = v72;
    (*(v71 + 16))(v60, v37, v72);
    v48 = v61;
    sub_1D30E8D7C();
    (*(v47 + 8))(v37, v46);
    v49 = v64;
    v50 = *v64;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v49 = v50;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v50 = sub_1D30D81E4(0, v50[2] + 1, 1, v50, &qword_1EC749CE8, &unk_1D30F33F8, MEMORY[0x1E69E83A8]);
      *v64 = v50;
    }

    v52 = v62;
    v54 = v50[2];
    v53 = v50[3];
    if (v54 >= v53 >> 1)
    {
      v50 = sub_1D30D81E4((v53 > 1), v54 + 1, 1, v50, &qword_1EC749CE8, &unk_1D30F33F8, MEMORY[0x1E69E83A8]);
      *v64 = v50;
    }

    v50[2] = v54 + 1;
    (*(v52 + 32))(v50 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v54, v48);
  }
}

uint64_t sub_1D30D184C@<X0>(unint64_t a1@<X1>, void *a2@<X8>)
{
  v45 = a1;
  v37 = a2;
  v3 = type metadata accessor for AssetPackRecord.StaticRepresentation(0);
  v39 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v38 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A000, &qword_1D30F4C38);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v36 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A008, &qword_1D30F4C40);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v36 - v10;
  v12 = sub_1D30E91FC();
  v40 = sub_1D30E91EC();
  v44 = v12;
  sub_1D30E91AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1D30E8E7C();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A010, &unk_1D30F4C48);
  (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
  type metadata accessor for AssetPackRecord(0);
  v14 = sub_1D3045A34(&qword_1EE313610, type metadata accessor for AssetPackRecord, &protocol conformance descriptor for AssetPackRecord);
  v15 = MEMORY[0x1E69E7CC0];
  sub_1D30E8EBC();
  v16 = v14;
  v17 = sub_1D30E8E1C();
  KeyPath = v2;
  (*(v9 + 8))(v11, v8);
  if (v2)
  {
  }

  v50 = v15;
  if (v17 >> 62)
  {
    goto LABEL_36;
  }

  v20 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_7:
  v21 = MEMORY[0x1E69E7CC0];
  v36 = KeyPath;
  if (v20)
  {
    v41 = v16;
    v16 = 0;
    v42 = v17 & 0xFFFFFFFFFFFFFF8;
    v43 = v17 & 0xC000000000000001;
    while (1)
    {
      if (v43)
      {
        v22 = MEMORY[0x1D38B29E0](v16, v17);
        v23 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
LABEL_20:
          __break(1u);
LABEL_21:
          v25 = v50;
          v21 = MEMORY[0x1E69E7CC0];
          goto LABEL_23;
        }
      }

      else
      {
        if (v16 >= *(v42 + 16))
        {
          __break(1u);
LABEL_36:
          v20 = sub_1D30E958C();
          goto LABEL_7;
        }

        v22 = *(v17 + 8 * v16 + 32);

        v23 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          goto LABEL_20;
        }
      }

      sub_1D30E91EC();
      sub_1D30E91AC();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      *&v46 = v22;
      swift_getKeyPath();
      sub_1D3045A34(&qword_1EE313618, type metadata accessor for AssetPackRecord, &protocol conformance descriptor for AssetPackRecord);
      sub_1D30E8AEC();

      KeyPath = swift_getKeyPath();
      sub_1D2FF67A4();
      sub_1D30E8F0C();

      v49[0] = v46;
      v49[1] = v47;
      v49[2] = v48;
      v24 = sub_1D3042F58(v49, v45);
      sub_1D30E599C(v49);

      if (v24)
      {
        sub_1D30E950C();
        sub_1D30E953C();
        sub_1D30E954C();
        sub_1D30E951C();
      }

      else
      {
      }

      ++v16;
      if (v23 == v20)
      {
        goto LABEL_21;
      }
    }
  }

  v25 = MEMORY[0x1E69E7CC0];
LABEL_23:

  v26 = v38;
  v27 = v39;
  if ((v25 & 0x8000000000000000) == 0 && (v25 & 0x4000000000000000) == 0)
  {
    v28 = *(v25 + 16);
    if (v28)
    {
      goto LABEL_26;
    }

LABEL_38:

    *v37 = MEMORY[0x1E69E7CC0];
    return result;
  }

  v28 = sub_1D30E958C();
  if (!v28)
  {
    goto LABEL_38;
  }

LABEL_26:
  *&v46 = v21;
  result = sub_1D3028C78(0, v28 & ~(v28 >> 63), 0);
  if (v28 < 0)
  {
    __break(1u);
  }

  else
  {
    v29 = 0;
    v30 = v46;
    v31 = v25;
    v45 = v25 & 0xC000000000000001;
    v32 = v25;
    v33 = v28;
    do
    {
      if (v45)
      {
        MEMORY[0x1D38B29E0](v29, v31);
      }

      else
      {
      }

      sub_1D3010570(v26);

      *&v46 = v30;
      v35 = *(v30 + 16);
      v34 = *(v30 + 24);
      if (v35 >= v34 >> 1)
      {
        sub_1D3028C78((v34 > 1), v35 + 1, 1);
        v30 = v46;
      }

      ++v29;
      *(v30 + 16) = v35 + 1;
      sub_1D3056830(v26, v30 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v35, type metadata accessor for AssetPackRecord.StaticRepresentation);
      v31 = v32;
    }

    while (v33 != v29);

    *v37 = v30;
  }

  return result;
}

void sub_1D30D1F0C(void *a1@<X8>)
{
  v28 = a1;
  v1 = type metadata accessor for LicenseRecord.StaticRepresentation(0);
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1 - 8);
  v27 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v26 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749B68, &unk_1D30FD150);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v26 - v8;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749B70, &unk_1D30F3200);
  v10 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v12 = &v26 - v11;
  sub_1D30E91FC();
  v29 = sub_1D30E91EC();
  sub_1D30E91AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1D30E8E7C();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749B78, &unk_1D30FD160);
  (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
  type metadata accessor for LicenseRecord(0);
  sub_1D3045A34(&qword_1EE313B08, type metadata accessor for LicenseRecord, &protocol conformance descriptor for LicenseRecord);
  v14 = MEMORY[0x1E69E7CC0];
  sub_1D30E8EBC();
  v15 = v31;
  v16 = sub_1D30E8E1C();
  (*(v10 + 8))(v12, v30);
  if (v15)
  {

    return;
  }

  if (!(v16 >> 62))
  {
    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v17)
    {
      goto LABEL_7;
    }

LABEL_20:

    *v28 = MEMORY[0x1E69E7CC0];
    return;
  }

  v17 = sub_1D30E958C();
  if (!v17)
  {
    goto LABEL_20;
  }

LABEL_7:
  v32 = v14;
  sub_1D3028D00(0, v17 & ~(v17 >> 63), 0);
  if (v17 < 0)
  {
    __break(1u);
  }

  else
  {
    v31 = 0;
    v18 = v32;
    v19 = v27;
    if ((v16 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v17; ++i)
      {
        MEMORY[0x1D38B29E0](i, v16);
        sub_1D2FF5564(v6);
        swift_unknownObjectRelease();
        v32 = v18;
        v22 = *(v18 + 16);
        v21 = *(v18 + 24);
        if (v22 >= v21 >> 1)
        {
          sub_1D3028D00((v21 > 1), v22 + 1, 1);
          v18 = v32;
        }

        *(v18 + 16) = v22 + 1;
        sub_1D3056830(v6, v18 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v22, type metadata accessor for LicenseRecord.StaticRepresentation);
      }
    }

    else
    {
      v23 = 32;
      do
      {

        sub_1D2FF5564(v19);

        v32 = v18;
        v25 = *(v18 + 16);
        v24 = *(v18 + 24);
        if (v25 >= v24 >> 1)
        {
          sub_1D3028D00((v24 > 1), v25 + 1, 1);
          v18 = v32;
        }

        *(v18 + 16) = v25 + 1;
        sub_1D3056830(v19, v18 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v25, type metadata accessor for LicenseRecord.StaticRepresentation);
        v23 += 8;
        --v17;
      }

      while (v17);
    }

    *v28 = v18;
  }
}

void sub_1D30D2408(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749430, &unk_1D30FD0E0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v30 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749438, &unk_1D30EF580);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v30 - v8;
  sub_1D30E91FC();
  v32 = sub_1D30E91EC();
  sub_1D30E91AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1D30E8E7C();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749440, &unk_1D30FD0F0);
  (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
  type metadata accessor for AppReviewRecord(0);
  v11 = sub_1D3045A34(&qword_1EE313708, type metadata accessor for AppReviewRecord, &protocol conformance descriptor for AppReviewRecord);
  v12 = MEMORY[0x1E69E7CC0];
  v13 = v11;
  sub_1D30E8EBC();
  v14 = sub_1D30E8E1C();
  (*(v7 + 8))(v9, v6);
  if (v1)
  {

    return;
  }

  if (!(v14 >> 62))
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v15)
    {
      goto LABEL_7;
    }

LABEL_20:

    *a1 = MEMORY[0x1E69E7CC0];
    return;
  }

  v15 = sub_1D30E958C();
  if (!v15)
  {
    goto LABEL_20;
  }

LABEL_7:
  v37 = v12;
  sub_1D3028D44(0, v15 & ~(v15 >> 63), 0);
  if (v15 < 0)
  {
    __break(1u);
  }

  else
  {
    v30[1] = 0;
    v31 = a1;
    v16 = v37;
    v17 = v14;
    v33 = v13;
    v34 = v14;
    if ((v14 & 0xC000000000000001) != 0)
    {
      v18 = 0;
      do
      {
        v35 = MEMORY[0x1D38B29E0](v18, v17);
        swift_getKeyPath();
        sub_1D3045A34(&qword_1EE313710, type metadata accessor for AppReviewRecord, &protocol conformance descriptor for AppReviewRecord);
        swift_unknownObjectRetain();
        sub_1D30E8AEC();

        swift_getKeyPath();
        sub_1D30E8F0C();
        swift_unknownObjectRelease_n();

        v19 = v35;
        v20 = v36;
        v37 = v16;
        v22 = *(v16 + 16);
        v21 = *(v16 + 24);
        if (v22 >= v21 >> 1)
        {
          sub_1D3028D44((v21 > 1), v22 + 1, 1);
          v16 = v37;
        }

        ++v18;
        *(v16 + 16) = v22 + 1;
        v23 = v16 + 16 * v22;
        *(v23 + 32) = v19;
        *(v23 + 40) = v20;
        v17 = v34;
      }

      while (v15 != v18);
    }

    else
    {
      v24 = 32;
      do
      {
        v35 = *(v17 + v24);
        swift_getKeyPath();
        sub_1D3045A34(&qword_1EE313710, type metadata accessor for AppReviewRecord, &protocol conformance descriptor for AppReviewRecord);
        swift_retain_n();
        sub_1D30E8AEC();

        swift_getKeyPath();
        sub_1D30E8F0C();

        v25 = v35;
        v26 = v36;
        v37 = v16;
        v28 = *(v16 + 16);
        v27 = *(v16 + 24);
        if (v28 >= v27 >> 1)
        {
          sub_1D3028D44((v27 > 1), v28 + 1, 1);
          v16 = v37;
        }

        *(v16 + 16) = v28 + 1;
        v29 = v16 + 16 * v28;
        *(v29 + 32) = v25;
        *(v29 + 40) = v26;
        v24 += 8;
        --v15;
        v17 = v34;
      }

      while (v15);
    }

    *v31 = v16;
  }
}

uint64_t sub_1D30D2974(uint64_t a1, uint64_t *a2)
{
  sub_1D30E91FC();
  sub_1D30E91EC();
  sub_1D30E91AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1D30E8E7C();
  sub_1D3045A34(&qword_1EE313708, type metadata accessor for AppReviewRecord, &protocol conformance descriptor for AppReviewRecord);
  sub_1D30E8E4C();

  sub_1D30E8E7C();
  sub_1D30E8E0C();
}

void sub_1D30D2AC0(uint64_t *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v5 = v4;
  v38 = a3;
  v34 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749430, &unk_1D30FD0E0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v34 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749438, &unk_1D30EF580);
  v35 = *(v11 - 8);
  v36 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v34 - v12;
  if (qword_1EE3152C8 != -1)
  {
    swift_once();
  }

  v14 = sub_1D30E8B3C();
  __swift_project_value_buffer(v14, qword_1EE314B60);
  v15 = sub_1D30E928C();

  v16 = sub_1D30E8B1C();

  if (os_log_type_enabled(v16, v15))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v37 = v4;
    v19 = a1;
    v20 = v18;
    v39[0] = v18;
    *v17 = 136446466;
    *(v17 + 4) = sub_1D2FFEA04(v19, a2, v39);
    *(v17 + 12) = 2082;
    *(v17 + 14) = sub_1D2FFEA04(0x6F6974636E754628, 0xEA0000000000296ELL, v39);
    _os_log_impl(&dword_1D2FD9000, v16, v15, "With record of App Review app with bundle ID: %{public}s body: %{public}s", v17, 0x16u);
    swift_arrayDestroy();
    v21 = v20;
    a1 = v19;
    v5 = v37;
    MEMORY[0x1D38B3760](v21, -1, -1);
    MEMORY[0x1D38B3760](v17, -1, -1);
  }

  v22 = sub_1D30E8E7C();
  v37 = &v34;
  MEMORY[0x1EEE9AC00](v22);
  *(&v34 - 2) = a1;
  *(&v34 - 1) = a2;
  v39[2] = type metadata accessor for AppReviewRecord(0);
  sub_1D30E8ACC();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749440, &unk_1D30FD0F0);
  (*(*(v23 - 8) + 56))(v10, 0, 1, v23);
  sub_1D3045A34(&qword_1EE313708, type metadata accessor for AppReviewRecord, &protocol conformance descriptor for AppReviewRecord);
  sub_1D30E8EBC();
  v24 = sub_1D30E8E1C();
  (*(v35 + 8))(v13, v36);
  if (v5)
  {

LABEL_7:

    return;
  }

  v40 = v24;
  v25 = sub_1D3028008();
  if (!v25)
  {

    type metadata accessor for HelperError(0);
    sub_1D3045A34(&qword_1EE313E48, type metadata accessor for HelperError, &unk_1D30EF3D8);
    swift_allocError();
    *v29 = a1;
    v29[1] = a2;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    goto LABEL_7;
  }

  v26 = v25;
  if (v40 >> 62)
  {
    v30 = sub_1D30E958C();

    if (v30)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v27 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v27)
    {
LABEL_11:
      type metadata accessor for HelperError(0);
      sub_1D3045A34(&qword_1EE313E48, type metadata accessor for HelperError, &unk_1D30EF3D8);
      swift_allocError();
      *v28 = a1;
      v28[1] = a2;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      goto LABEL_7;
    }
  }

  sub_1D30E8E7C();
  sub_1D30E8E3C();

  v39[0] = v26;
  swift_getKeyPath();
  sub_1D3045A34(&qword_1EE313710, type metadata accessor for AppReviewRecord, &protocol conformance descriptor for AppReviewRecord);
  sub_1D30E8AEC();

  swift_getKeyPath();
  sub_1D30E8F0C();

  v32 = v39[0];
  v31 = v39[1];
  sub_1D30E8E7C();
  sub_1D30E8E0C();

  v33 = v34;
  *v34 = v32;
  v33[1] = v31;
}

uint64_t sub_1D30D3148@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a4@<X4>, void *a5@<X8>)
{
  v39 = a4;
  v47 = a2;
  v48 = a1;
  v37 = a5;
  v5 = type metadata accessor for AssetPackRecord.StaticRepresentation(0);
  v45 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v46 = v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A000, &qword_1D30F4C38);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v36 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A008, &qword_1D30F4C40);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v36 - v12;
  v14 = sub_1D30E91FC();
  v38 = sub_1D30E91EC();
  v44 = v14;
  sub_1D30E91AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1D30E8E7C();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A010, &unk_1D30F4C48);
  (*(*(v15 - 8) + 56))(v9, 1, 1, v15);
  type metadata accessor for AssetPackRecord(0);
  v16 = sub_1D3045A34(&qword_1EE313610, type metadata accessor for AssetPackRecord, &protocol conformance descriptor for AssetPackRecord);
  v17 = MEMORY[0x1E69E7CC0];
  sub_1D30E8EBC();
  v18 = v43;
  v19 = sub_1D30E8E1C();
  (*(v11 + 8))(v13, v10);
  if (v18)
  {
  }

  v42 = v16;
  v36[1] = 0;

  v52 = v17;
  v43 = v19;
  if (v19 >> 62)
  {
    goto LABEL_39;
  }

  v21 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_7:
  v22 = v46;
  v23 = MEMORY[0x1E69E7CC0];
  if (v21)
  {
    v24 = 0;
    v40 = v43 & 0xFFFFFFFFFFFFFF8;
    v41 = v43 & 0xC000000000000001;
    while (1)
    {
      if (v41)
      {
        v25 = MEMORY[0x1D38B29E0](v24, v43);
        v22 = v42;
        v26 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
LABEL_23:
          __break(1u);
LABEL_24:
          v30 = v52;
          v23 = MEMORY[0x1E69E7CC0];
          goto LABEL_26;
        }
      }

      else
      {
        v22 = v42;
        if (v24 >= *(v40 + 16))
        {
          __break(1u);
LABEL_39:
          v21 = sub_1D30E958C();
          goto LABEL_7;
        }

        v25 = *(v43 + 8 * v24 + 32);

        v26 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          goto LABEL_23;
        }
      }

      sub_1D30E91EC();
      sub_1D30E91AC();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v49 = v25;
      swift_getKeyPath();
      sub_1D3045A34(&qword_1EE313618, type metadata accessor for AssetPackRecord, &protocol conformance descriptor for AssetPackRecord);
      sub_1D30E8AEC();

      swift_getKeyPath();
      sub_1D2FF67A4();
      sub_1D30E8F0C();

      v28 = v50;
      v27 = v51;

      if (v28 == v48 && v27 == v47)
      {
        break;
      }

      v29 = sub_1D30E97CC();

      v22 = v46;
      if (v29)
      {
        goto LABEL_20;
      }

LABEL_10:
      ++v24;
      if (v26 == v21)
      {
        goto LABEL_24;
      }
    }

    v22 = v46;
LABEL_20:
    sub_1D30E950C();
    sub_1D30E953C();
    sub_1D30E954C();
    sub_1D30E951C();
    goto LABEL_10;
  }

  v30 = MEMORY[0x1E69E7CC0];
LABEL_26:

  if ((v30 & 0x8000000000000000) == 0 && (v30 & 0x4000000000000000) == 0)
  {
    v31 = *(v30 + 16);
    if (v31)
    {
      goto LABEL_29;
    }

LABEL_41:

    *v37 = MEMORY[0x1E69E7CC0];
    return result;
  }

  v31 = sub_1D30E958C();
  if (!v31)
  {
    goto LABEL_41;
  }

LABEL_29:
  v50 = v23;
  result = sub_1D3028C78(0, v31 & ~(v31 >> 63), 0);
  if (v31 < 0)
  {
    __break(1u);
  }

  else
  {
    v32 = 0;
    v33 = v50;
    do
    {
      if ((v30 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1D38B29E0](v32, v30);
      }

      else
      {
      }

      sub_1D3010570(v22);

      v50 = v33;
      v35 = *(v33 + 16);
      v34 = *(v33 + 24);
      if (v35 >= v34 >> 1)
      {
        sub_1D3028C78((v34 > 1), v35 + 1, 1);
        v33 = v50;
      }

      ++v32;
      *(v33 + 16) = v35 + 1;
      sub_1D3056830(v22, v33 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v35, type metadata accessor for AssetPackRecord.StaticRepresentation);
    }

    while (v31 != v32);

    *v37 = v33;
  }

  return result;
}

void sub_1D30D3828()
{
  sub_1D30E91FC();
  sub_1D30E91EC();
  sub_1D30E91AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v0 = [objc_opt_self() defaultWorkspace];
  if (v0)
  {
    v1 = v0;
    v2 = sub_1D30E8E7C();
    MEMORY[0x1EEE9AC00](v2);
    sub_1D30E8DFC();
  }

  else
  {
    if (qword_1EE3152C8 != -1)
    {
      swift_once();
    }

    v3 = sub_1D30E8B3C();
    __swift_project_value_buffer(v3, qword_1EE314B60);
    v4 = sub_1D30E92AC();
    v5 = sub_1D30E8B1C();
    if (os_log_type_enabled(v5, v4))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1D2FD9000, v5, v4, "The default app workspace is unavailable.", v6, 2u);
      MEMORY[0x1D38B3760](v6, -1, -1);
    }
  }
}

uint64_t sub_1D30D3A24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = a3;
  v19 = a4;
  v17 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749430, &unk_1D30FD0E0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v16 - v6;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749438, &unk_1D30EF580);
  v8 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v10 = &v16 - v9;
  sub_1D30E91FC();
  sub_1D30E91EC();
  sub_1D30E91AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1D30E8E7C();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749440, &unk_1D30FD0F0);
  (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
  type metadata accessor for AppReviewRecord(0);
  sub_1D3045A34(&qword_1EE313708, type metadata accessor for AppReviewRecord, &protocol conformance descriptor for AppReviewRecord);
  v12 = sub_1D30E8EBC();
  MEMORY[0x1EEE9AC00](v12);
  v13 = v18;
  *(&v16 - 4) = v17;
  *(&v16 - 3) = a1;
  v14 = v19;
  *(&v16 - 2) = v13;
  *(&v16 - 1) = v14;
  sub_1D30E8E5C();
  (*(v8 + 8))(v10, v16);
}

uint64_t sub_1D30D3CF0(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  sub_1D30E91FC();
  sub_1D30E91EC();
  sub_1D30E91AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_1EE3152C8 != -1)
  {
    swift_once();
  }

  v6 = sub_1D30E8B3C();
  __swift_project_value_buffer(v6, qword_1EE314B60);
  v7 = sub_1D30E927C();

  v8 = sub_1D30E8B1C();

  if (os_log_type_enabled(v8, v7))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v23 = v10;
    *v9 = 136446210;
    swift_getKeyPath();
    sub_1D3045A34(&qword_1EE313710, type metadata accessor for AppReviewRecord, &protocol conformance descriptor for AppReviewRecord);
    sub_1D30E8AEC();

    swift_getKeyPath();
    sub_1D3045A34(&qword_1EE313708, type metadata accessor for AppReviewRecord, &protocol conformance descriptor for AppReviewRecord);
    sub_1D30E8F0C();

    v11 = sub_1D2FFEA04(a1, v22, &v23);

    *(v9 + 4) = v11;
    _os_log_impl(&dword_1D2FD9000, v8, v7, "Checking whether the record of the App Review app with the bundle ID “%{public}s” is stale…", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x1D38B3760](v10, -1, -1);
    MEMORY[0x1D38B3760](v9, -1, -1);
  }

  swift_getKeyPath();
  sub_1D3045A34(&qword_1EE313710, type metadata accessor for AppReviewRecord, &protocol conformance descriptor for AppReviewRecord);
  sub_1D30E8AEC();

  swift_getKeyPath();
  sub_1D3045A34(&qword_1EE313708, type metadata accessor for AppReviewRecord, &protocol conformance descriptor for AppReviewRecord);
  sub_1D30E8F0C();

  v12 = sub_1D30E906C();

  v13 = [a2 applicationIsInstalled_];

  if ((v13 & 1) == 0)
  {
    v14 = sub_1D30E92AC();

    v15 = sub_1D30E8B1C();

    if (os_log_type_enabled(v15, v14))
    {
      v20 = v14;
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v23 = v17;
      *v16 = 136446210;
      swift_getKeyPath();
      sub_1D30E8AEC();

      swift_getKeyPath();
      sub_1D30E8F0C();

      v18 = sub_1D2FFEA04(a1, v22, &v23);

      *(v16 + 4) = v18;
      _os_log_impl(&dword_1D2FD9000, v15, v20, "The App Review app with the bundle ID “%{public}s” isn’t installed; removing its record from the database…", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      MEMORY[0x1D38B3760](v17, -1, -1);
      MEMORY[0x1D38B3760](v16, -1, -1);
    }

    sub_1D30E8E7C();
    type metadata accessor for AppReviewRecord(0);
    sub_1D30E8E3C();

    *a4 = 1;
  }
}

uint64_t sub_1D30D4214()
{
  sub_1D30E91FC();
  sub_1D30E91EC();
  sub_1D30E91AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v0 = sub_1D30E8E7C();
  MEMORY[0x1EEE9AC00](v0);
  sub_1D30E8DFC();
}

uint64_t sub_1D30D4320(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = a2;
  v17 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A000, &qword_1D30F4C38);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v16 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A008, &qword_1D30F4C40);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16 - v9;
  sub_1D30E91FC();
  sub_1D30E91EC();
  sub_1D30E91AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1D30E8E7C();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A010, &unk_1D30F4C48);
  (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  type metadata accessor for AssetPackRecord(0);
  sub_1D3045A34(&qword_1EE313610, type metadata accessor for AssetPackRecord, &protocol conformance descriptor for AssetPackRecord);
  v12 = sub_1D30E8EBC();
  MEMORY[0x1EEE9AC00](v12);
  v14 = v16;
  v13 = v17;
  *(&v16 - 4) = a1;
  *(&v16 - 3) = v14;
  *(&v16 - 2) = v13;
  sub_1D30E8E5C();
  (*(v8 + 8))(v10, v7);
}

void sub_1D30D45E4(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v145 = a3;
  v150 = a2;
  v171 = *MEMORY[0x1E69E9840];
  v153 = type metadata accessor for FilePath.ResolutionError(0);
  v4 = MEMORY[0x1EEE9AC00](v153);
  v160 = (v141 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v4);
  v152 = v141 - v6;
  p_isa = sub_1D30E8D5C();
  v161 = *(p_isa - 1);
  v7 = MEMORY[0x1EEE9AC00](p_isa);
  v148 = v141 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v163 = v141 - v9;
  v10 = sub_1D30E8D9C();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v143 = v141 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v144 = v141 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v149 = v141 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v154 = v141 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v158 = (v141 - v21);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v147 = v141 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v25 = v141 - v24;
  sub_1D30E91FC();
  v162 = sub_1D30E91EC();
  sub_1D30E91AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_1EE3152C8 != -1)
  {
    swift_once();
  }

  v155 = v11;
  v164 = v10;
  v146 = sub_1D30E8B3C();
  v26 = __swift_project_value_buffer(v146, qword_1EE314B60);
  v27 = sub_1D30E927C();

  v157 = v26;
  v28 = sub_1D30E8B1C();

  if (os_log_type_enabled(v28, v27))
  {
    v29 = swift_slowAlloc();
    v156 = v25;
    v30 = v29;
    v151 = swift_slowAlloc();
    v166 = v151;
    v167 = a1;
    *v30 = 136446466;
    v141[2] = OBJC_IVAR____TtC29ManagedBackgroundAssetsHelper15AssetPackRecord___observationRegistrar;
    swift_getKeyPath();
    v142 = v27;
    v141[1] = sub_1D3045A34(&qword_1EE313618, type metadata accessor for AssetPackRecord, &protocol conformance descriptor for AssetPackRecord);
    sub_1D30E8AEC();

    swift_getKeyPath();
    sub_1D3045A34(&qword_1EE313610, type metadata accessor for AssetPackRecord, &protocol conformance descriptor for AssetPackRecord);
    sub_1D2FF67A4();
    sub_1D30E8F0C();

    v31 = v169;
    v32 = v170;

    v33 = sub_1D2FFEA04(v31, v32, &v166);

    *(v30 + 4) = v33;
    *(v30 + 12) = 2082;
    v167 = a1;
    swift_getKeyPath();
    sub_1D30E8AEC();

    swift_getKeyPath();
    sub_1D30E8F0C();

    v34 = v167;
    v35 = v168;

    v36 = sub_1D2FFEA04(v34, v35, &v166);

    *(v30 + 14) = v36;
    _os_log_impl(&dword_1D2FD9000, v28, v142, "Checking whether the record of the asset pack with the ID “%{public}s” for the app with the bundle ID “%{public}s” is stale…", v30, 0x16u);
    v37 = v151;
    swift_arrayDestroy();
    MEMORY[0x1D38B3760](v37, -1, -1);
    v38 = v30;
    v25 = v156;
    MEMORY[0x1D38B3760](v38, -1, -1);
  }

  v39 = v163;
  sub_1D3010008(v163);
  v40 = OBJC_IVAR____TtC29ManagedBackgroundAssetsHelper15AssetPackRecord___observationRegistrar;
  v166 = a1;
  swift_getKeyPath();
  v41 = sub_1D3045A34(&qword_1EE313618, type metadata accessor for AssetPackRecord, &protocol conformance descriptor for AssetPackRecord);
  sub_1D30E8AEC();

  swift_getKeyPath();
  v42 = sub_1D3045A34(&qword_1EE313610, type metadata accessor for AssetPackRecord, &protocol conformance descriptor for AssetPackRecord);
  v43 = sub_1D2FF67A4();
  v163 = v42;
  v151 = v43;
  sub_1D30E8F0C();

  v45 = v167;
  v44 = v168;

  v46 = v159;
  v47 = v45;
  v48 = v160;
  sub_1D302D670(v47, v44, v160, v158);
  if (v46)
  {
    (*(v161 + 8))(v39, p_isa);

    v49 = v48;
    v50 = v152;
    sub_1D3056830(v49, v152, type metadata accessor for FilePath.ResolutionError);
    sub_1D3045A34(&qword_1EC749428, type metadata accessor for FilePath.ResolutionError, &protocol conformance descriptor for FilePath.ResolutionError);
    v51 = swift_allocError();
    sub_1D3056830(v50, v52, type metadata accessor for FilePath.ResolutionError);
  }

  else
  {
    v159 = 0;
    v160 = v41;

    sub_1D30E8D8C();
    v53 = v161;
    v54 = p_isa;
    (*(v161 + 16))(v148, v39, p_isa);
    sub_1D30E8D7C();
    (*(v53 + 8))(v39, v54);
    if (qword_1EE3133A0 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v146, qword_1EE3133A8);
    v55 = sub_1D30E928C();
    v56 = v155;
    v57 = *(v155 + 16);
    v58 = v164;
    v161 = v155 + 16;
    v158 = v57;
    (v57)(v154, v25, v164);
    v59 = sub_1D30E8B1C();
    if (os_log_type_enabled(v59, v55))
    {
      v60 = swift_slowAlloc();
      v156 = v25;
      v61 = v60;
      p_isa = swift_slowAlloc();
      v167 = p_isa;
      *v61 = 136446210;
      sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8], MEMORY[0x1E69E83D0]);
      v62 = v154;
      v63 = sub_1D30E977C();
      LODWORD(v153) = v55;
      v64 = v40;
      v65 = a1;
      v67 = v66;
      v68 = *(v56 + 8);
      v68(v62, v164);
      v69 = sub_1D2FFEA04(v63, v67, &v167);
      a1 = v65;
      v40 = v64;

      *(v61 + 4) = v69;
      _os_log_impl(&dword_1D2FD9000, v59, v153, "Item exists at: %{public}s", v61, 0xCu);
      v70 = p_isa;
      __swift_destroy_boxed_opaque_existential_1(p_isa);
      v58 = v164;
      MEMORY[0x1D38B3760](v70, -1, -1);
      v71 = v61;
      v25 = v156;
      MEMORY[0x1D38B3760](v71, -1, -1);
    }

    else
    {

      v68 = *(v56 + 8);
      v68(v154, v58);
    }

    v72 = v149;
    v73 = v159;
    sub_1D3003CF4(v25, 0, v149);
    p_isa = &v73->isa;
    if (!v73)
    {
      v156 = v25;
      LOBYTE(v167) = 0;
      v90 = v72;
      v91 = [objc_opt_self() defaultManager];
      sub_1D30E8D3C();
      v92 = sub_1D30E906C();

      v93 = [v91 fileExistsAtPath:v92 isDirectory:&v167];

      v94 = v164;
      v95 = (v155 + 8);
      v68(v90, v164);
      if (v93)
      {
        if (v167)
        {
          v68(v156, v94);
          goto LABEL_20;
        }

        v117 = v68;
        v155 = v40;
        v118 = sub_1D30E92AC();
        v119 = v143;
        (v158)(v143, v156, v94);

        v120 = sub_1D30E8B1C();

        v121 = os_log_type_enabled(v120, v118);
        v159 = v95;
        if (v121)
        {
          v122 = swift_slowAlloc();
          v161 = swift_slowAlloc();
          v166 = v161;
          *v122 = 136446722;
          sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8], MEMORY[0x1E69E83D0]);
          v158 = v120;
          v123 = sub_1D30E977C();
          v125 = v124;
          v154 = v117;
          (v117)(v119, v94);
          v126 = sub_1D2FFEA04(v123, v125, &v166);

          *(v122 + 4) = v126;
          *(v122 + 12) = 2082;
          v167 = a1;
          swift_getKeyPath();
          LODWORD(v153) = v118;
          sub_1D30E8AEC();

          swift_getKeyPath();
          sub_1D30E8F0C();

          v127 = v169;
          v128 = a1;
          v129 = v170;

          v130 = sub_1D2FFEA04(v127, v129, &v166);
          a1 = v128;

          *(v122 + 14) = v130;
          *(v122 + 22) = 2082;
          v167 = v128;
          swift_getKeyPath();
          sub_1D30E8AEC();

          swift_getKeyPath();
          v131 = v154;
          sub_1D30E8F0C();

          v132 = v167;
          v133 = v168;

          v94 = v164;

          v134 = sub_1D2FFEA04(v132, v133, &v166);

          *(v122 + 24) = v134;
          v135 = v158;
          _os_log_impl(&dword_1D2FD9000, v158, v153, "The item at “%{public}s” isn’t a directory; removing it and, from the database, the record of the asset pack with the ID “%{public}s” for the app with the bundle ID “%{public}s”…", v122, 0x20u);
          v136 = v161;
          swift_arrayDestroy();
          MEMORY[0x1D38B3760](v136, -1, -1);
          MEMORY[0x1D38B3760](v122, -1, -1);
        }

        else
        {

          v138 = v119;
          v131 = v117;
          (v117)(v138, v94);
        }

        v139 = v156;
        v140 = p_isa;
        sub_1D3009B38(v156);
        p_isa = v140;
        if (v140)
        {
          v131(v139, v94);
          v51 = p_isa;
          p_isa = 0;
          goto LABEL_17;
        }

        sub_1D30E8E7C();
        type metadata accessor for AssetPackRecord(0);
        sub_1D30E8E3C();

        v131(v139, v94);
      }

      else
      {
        v96 = v68;
        v97 = sub_1D30E92AC();
        v98 = v144;
        (v158)(v144, v156, v94);

        v99 = sub_1D30E8B1C();

        if (os_log_type_enabled(v99, v97))
        {
          v100 = swift_slowAlloc();
          v155 = v40;
          v101 = v100;
          v161 = swift_slowAlloc();
          v166 = v161;
          *v101 = 136446722;
          sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8], MEMORY[0x1E69E83D0]);
          v158 = v99;
          v102 = sub_1D30E977C();
          v159 = v95;
          v103 = v102;
          v105 = v104;
          v154 = v96;
          (v96)(v98, v94);
          v106 = sub_1D2FFEA04(v103, v105, &v166);

          *(v101 + 4) = v106;
          *(v101 + 12) = 2082;
          v167 = a1;
          swift_getKeyPath();
          sub_1D30E8AEC();

          swift_getKeyPath();
          sub_1D30E8F0C();

          v107 = v169;
          LODWORD(v157) = v97;
          v108 = a1;
          v109 = v170;

          v110 = sub_1D2FFEA04(v107, v109, &v166);

          *(v101 + 14) = v110;
          *(v101 + 22) = 2082;
          v167 = v108;
          swift_getKeyPath();
          sub_1D30E8AEC();

          swift_getKeyPath();
          v111 = v154;
          sub_1D30E8F0C();

          v112 = v167;
          v113 = v168;

          v94 = v164;

          v114 = sub_1D2FFEA04(v112, v113, &v166);

          *(v101 + 24) = v114;
          v115 = v158;
          _os_log_impl(&dword_1D2FD9000, v158, v157, "No root directory exists at “%{public}s”; removing the record of the asset pack with the ID “%{public}s” for the app with the bundle ID “%{public}s” from the database…", v101, 0x20u);
          v116 = v161;
          swift_arrayDestroy();
          MEMORY[0x1D38B3760](v116, -1, -1);
          MEMORY[0x1D38B3760](v101, -1, -1);
        }

        else
        {

          v137 = v98;
          v111 = v96;
          (v96)(v137, v94);
        }

        sub_1D30E8E7C();
        type metadata accessor for AssetPackRecord(0);
        sub_1D30E8E3C();

        v111(v156, v94);
      }

      *v145 = 1;
      goto LABEL_20;
    }

    v68(v25, v58);
    v51 = p_isa;
  }

  p_isa = 0;
LABEL_17:
  v74 = sub_1D30E929C();

  v75 = v51;
  v76 = sub_1D30E8B1C();

  if (os_log_type_enabled(v76, v74))
  {
    v77 = swift_slowAlloc();
    v161 = swift_slowAlloc();
    v164 = swift_slowAlloc();
    v166 = v164;
    v167 = a1;
    *v77 = 136446722;
    swift_getKeyPath();
    LODWORD(v160) = v74;
    v159 = v76;
    sub_1D30E8AEC();

    swift_getKeyPath();
    sub_1D30E8F0C();

    v78 = v169;
    v79 = a1;
    v80 = v170;

    v81 = sub_1D2FFEA04(v78, v80, &v166);

    *(v77 + 4) = v81;
    *(v77 + 12) = 2082;
    v167 = v79;
    swift_getKeyPath();
    sub_1D30E8AEC();

    swift_getKeyPath();
    sub_1D30E8F0C();

    v82 = v167;
    v83 = v168;

    v84 = sub_1D2FFEA04(v82, v83, &v166);

    *(v77 + 14) = v84;
    *(v77 + 22) = 2114;
    v85 = v51;
    v86 = _swift_stdlib_bridgeErrorToNSError();
    *(v77 + 24) = v86;
    v87 = v161;
    *v161 = v86;
    v88 = v159;
    _os_log_impl(&dword_1D2FD9000, v159, v160, "Checking whether the record of the asset pack with the ID “%{public}s” for the app with the bundle ID “%{public}s” is stale failed: %{public}@", v77, 0x20u);
    sub_1D2FF14DC(v87, &qword_1EC7493A0, &qword_1D30EF480);
    MEMORY[0x1D38B3760](v87, -1, -1);
    v89 = v164;
    swift_arrayDestroy();
    MEMORY[0x1D38B3760](v89, -1, -1);
    MEMORY[0x1D38B3760](v77, -1, -1);

    return;
  }

LABEL_20:
}

uint64_t sub_1D30D5B70@<X0>(uint64_t *a1@<X8>)
{
  v35 = a1;
  v1 = type metadata accessor for LicenseRecord.StaticRepresentation(0);
  v45 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749B68, &unk_1D30FD150);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v34 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749B70, &unk_1D30F3200);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v34 - v9;
  v11 = sub_1D30E91FC();
  v37 = sub_1D30E91EC();
  v44 = v11;
  sub_1D30E91AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1D30E8E7C();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749B78, &unk_1D30FD160);
  (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  type metadata accessor for LicenseRecord(0);
  v13 = sub_1D3045A34(&qword_1EE313B08, type metadata accessor for LicenseRecord, &protocol conformance descriptor for LicenseRecord);
  v14 = MEMORY[0x1E69E7CC0];
  sub_1D30E8EBC();
  v15 = v46;
  v16 = sub_1D30E8E1C();
  (*(v8 + 8))(v10, v7);
  v36 = v15;
  if (v15)
  {
  }

  v54 = v14;
  if (v16 >> 62)
  {
    goto LABEL_37;
  }

  v18 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_7:
  v19 = MEMORY[0x1E69E7CC0];
  if (v18)
  {
    v20 = v16;
    v16 = 0;
    v42 = v20 & 0xC000000000000001;
    v43 = v20;
    v40 = v3;
    v41 = v20 & 0xFFFFFFFFFFFFFF8;
    v38 = v18;
    v39 = v13;
    while (1)
    {
      if (v42)
      {
        v21 = MEMORY[0x1D38B29E0](v16, v43);
        v22 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
LABEL_22:
          __break(1u);
LABEL_23:
          v19 = v54;
          break;
        }
      }

      else
      {
        if (v16 >= *(v41 + 16))
        {
          __break(1u);
LABEL_37:
          v18 = sub_1D30E958C();
          goto LABEL_7;
        }

        v21 = *(v43 + 8 * v16 + 32);

        v22 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          goto LABEL_22;
        }
      }

      v46 = sub_1D30E91EC();
      sub_1D30E91AC();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v47 = v21;
      swift_getKeyPath();
      sub_1D3045A34(&qword_1EE313B10, type metadata accessor for LicenseRecord, &protocol conformance descriptor for LicenseRecord);
      sub_1D30E8AEC();

      swift_getKeyPath();
      sub_1D2FF7FF8();
      sub_1D30E8F0C();

      v24 = v48;
      v23 = v49;
      v25 = v50;
      v26 = v51;
      v28 = v52;
      v27 = v53;
      if ((v53 & 0x3000000000000000) == 0x2000000000000000 && !(v49 | v48 | v50 | v51 | v52) && v53 == 0x2000000000000000)
      {

        sub_1D30E950C();
        sub_1D30E953C();
        sub_1D30E954C();
        sub_1D30E951C();
      }

      else
      {

        sub_1D2FF804C(v24, v23, v25, v26, v28, v27);
      }

      v13 = v39;
      v3 = v40;
      ++v16;
      if (v22 == v38)
      {
        goto LABEL_23;
      }
    }
  }

  if ((v19 & 0x8000000000000000) == 0 && (v19 & 0x4000000000000000) == 0)
  {
    v29 = *(v19 + 16);
    if (v29)
    {
      goto LABEL_27;
    }

LABEL_39:

    *v35 = MEMORY[0x1E69E7CC0];
    return result;
  }

  v29 = sub_1D30E958C();
  if (!v29)
  {
    goto LABEL_39;
  }

LABEL_27:
  v48 = MEMORY[0x1E69E7CC0];
  result = sub_1D3028D00(0, v29 & ~(v29 >> 63), 0);
  if (v29 < 0)
  {
    __break(1u);
  }

  else
  {
    v30 = 0;
    v31 = v48;
    do
    {
      if ((v19 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1D38B29E0](v30, v19);
      }

      else
      {
      }

      sub_1D2FF5564(v3);

      v48 = v31;
      v33 = *(v31 + 16);
      v32 = *(v31 + 24);
      if (v33 >= v32 >> 1)
      {
        sub_1D3028D00((v32 > 1), v33 + 1, 1);
        v31 = v48;
      }

      ++v30;
      *(v31 + 16) = v33 + 1;
      sub_1D3056830(v3, v31 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v33, type metadata accessor for LicenseRecord.StaticRepresentation);
    }

    while (v29 != v30);

    *v35 = v31;
  }

  return result;
}

uint64_t sub_1D30D6228(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v96 = a4;
  v105 = a3;
  v113 = a2;
  v107 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A000, &qword_1D30F4C38);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v100 = &v91 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A008, &qword_1D30F4C40);
  v102 = *(v6 - 8);
  v103 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v101 = &v91 - v7;
  v106 = sub_1D30E8D5C();
  isa = v106[-1].isa;
  v8 = MEMORY[0x1EEE9AC00](v106);
  v99 = &v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v98 = &v91 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v91 - v12;
  v14 = type metadata accessor for FilePath.ResolutionError(0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = (&v91 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v91 - v18;
  v20 = sub_1D30E8D9C();
  v109 = *(v20 - 8);
  v110 = v20;
  v21 = MEMORY[0x1EEE9AC00](v20);
  v97 = &v91 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = &v91 - v24;
  v26 = MEMORY[0x1EEE9AC00](v23);
  v28 = &v91 - v27;
  v29 = MEMORY[0x1EEE9AC00](v26);
  MEMORY[0x1EEE9AC00](v29);
  v108 = &v91 - v30;
  sub_1D30E91FC();
  v112 = sub_1D30E91EC();
  sub_1D30E91AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v31 = sub_1D30E8D4C();
  v32 = v111;
  sub_1D302D670(v31, v33, v17, v28);
  if (v32)
  {

    sub_1D3056830(v17, v19, type metadata accessor for FilePath.ResolutionError);
    sub_1D3045A34(&qword_1EC749428, type metadata accessor for FilePath.ResolutionError, &protocol conformance descriptor for FilePath.ResolutionError);
    swift_allocError();
    sub_1D3056830(v19, v34, type metadata accessor for FilePath.ResolutionError);
  }

  else
  {

    sub_1D30E8D8C();
    v94 = *(isa + 2);
    v95 = isa + 16;
    v94(v13, v107, v106);
    v35 = v108;
    sub_1D30E8D7C();
    if (qword_1EE3152C8 != -1)
    {
      swift_once();
    }

    v36 = sub_1D30E8B3C();
    v37 = __swift_project_value_buffer(v36, qword_1EE314B60);
    v38 = sub_1D30E927C();
    v39 = v109;
    v40 = v110;
    v92 = *(v109 + 16);
    v92(v25, v35, v110);
    v93 = v37;
    v41 = sub_1D30E8B1C();
    if (os_log_type_enabled(v41, v38))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v114 = v43;
      *v42 = 136446210;
      sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8], MEMORY[0x1E69E83D0]);
      v44 = sub_1D30E977C();
      v46 = v45;
      v111 = *(v109 + 8);
      v111(v25, v110);
      v47 = sub_1D2FFEA04(v44, v46, &v114);

      *(v42 + 4) = v47;
      _os_log_impl(&dword_1D2FD9000, v41, v38, "Checking whether the asset pack at “%{public}s” is orphaned…", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v43);
      MEMORY[0x1D38B3760](v43, -1, -1);
      MEMORY[0x1D38B3760](v42, -1, -1);
    }

    else
    {

      v111 = *(v39 + 8);
      v111(v25, v40);
    }

    sub_1D30E8E7C();
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A010, &unk_1D30F4C48);
    (*(*(v48 - 8) + 56))(v100, 1, 1, v48);
    type metadata accessor for AssetPackRecord(0);
    sub_1D3045A34(&qword_1EE313610, type metadata accessor for AssetPackRecord, &protocol conformance descriptor for AssetPackRecord);
    v49 = v101;
    sub_1D30E8EBC();
    v50 = sub_1D30E8E1C();
    (*(v102 + 8))(v49, v103);

    MEMORY[0x1EEE9AC00](v51);
    *(&v91 - 2) = v113;
    v52 = sub_1D3040DC8(sub_1D30E6E30, &v91 - 4, v50);
    MEMORY[0x1EEE9AC00](v52);
    *(&v91 - 2) = v107;
    v54 = sub_1D3040DC8(sub_1D30E6E50, &v91 - 4, v53);
    if (v54 >> 62)
    {
      v55 = sub_1D30E958C();
    }

    else
    {
      v55 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v56 = v106;

    v57 = v99;
    v58 = v110;
    if (v55)
    {
      v111(v108, v110);
    }

    else
    {
      v60 = sub_1D30E92AC();
      v61 = v94;
      v94(v98, v113, v56);
      v61(v57, v107, v56);
      v62 = v97;
      v92(v97, v108, v58);
      v63 = sub_1D30E8B1C();
      LODWORD(v113) = v60;
      if (os_log_type_enabled(v63, v60))
      {
        v64 = swift_slowAlloc();
        v65 = v56;
        v107 = swift_slowAlloc();
        v114 = v107;
        *v64 = 136446722;
        v66 = v64;
        sub_1D3045A34(&qword_1EC749A48, MEMORY[0x1E69E8380], MEMORY[0x1E69E83A0]);
        v67 = v98;
        v68 = sub_1D30E977C();
        v106 = v63;
        v69 = v68;
        v71 = v70;
        v72 = *(isa + 1);
        v72(v67, v65);
        v73 = sub_1D2FFEA04(v69, v71, &v114);

        *(v66 + 1) = v73;
        *(v66 + 6) = 2082;
        v74 = v99;
        v75 = sub_1D30E977C();
        v77 = v76;
        v72(v74, v65);
        v78 = sub_1D2FFEA04(v75, v77, &v114);

        *(v66 + 14) = v78;
        *(v66 + 11) = 2082;
        v79 = v110;
        sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8], MEMORY[0x1E69E83D0]);
        v80 = v97;
        v81 = sub_1D30E977C();
        v83 = v82;
        v84 = v111;
        v111(v80, v79);
        v85 = sub_1D2FFEA04(v81, v83, &v114);

        *(v66 + 3) = v85;
        v86 = v106;
        _os_log_impl(&dword_1D2FD9000, v106, v113, "No record of an asset pack for the app with the bundle ID “%{public}s” has the root-directory component “%{public}s”; removing the asset pack at “%{public}s”…", v66, 0x20u);
        v87 = v107;
        swift_arrayDestroy();
        MEMORY[0x1D38B3760](v87, -1, -1);
        MEMORY[0x1D38B3760](v66, -1, -1);
      }

      else
      {

        v88 = v62;
        v79 = v110;
        v84 = v111;
        v111(v88, v110);
        v89 = *(isa + 1);
        v89(v57, v56);
        v89(v98, v56);
      }

      v90 = v108;
      sub_1D3009B38(v108);
      v84(v90, v79);
      *v96 = 1;
    }
  }
}

uint64_t sub_1D30D6E48(uint64_t *a1)
{
  v1 = *a1;
  sub_1D30E91FC();
  sub_1D30E91EC();
  sub_1D30E91AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_getKeyPath();
  sub_1D3045A34(&qword_1EE313618, type metadata accessor for AssetPackRecord, &protocol conformance descriptor for AssetPackRecord);
  sub_1D30E8AEC();

  swift_getKeyPath();
  sub_1D3045A34(&qword_1EE313610, type metadata accessor for AssetPackRecord, &protocol conformance descriptor for AssetPackRecord);
  sub_1D2FF67A4();
  sub_1D30E8F0C();

  if (v1 == sub_1D30E8D4C() && v5 == v2)
  {
    v3 = 1;
  }

  else
  {
    v3 = sub_1D30E97CC();
  }

  return v3 & 1;
}

uint64_t sub_1D30D7030(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D30E8D5C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D30E91FC();
  sub_1D30E91EC();
  sub_1D30E91AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1D3010008(v5);
  sub_1D3045A34(&qword_1EC74B040, MEMORY[0x1E69E8380], MEMORY[0x1E69E8390]);
  v6 = sub_1D30E905C();
  (*(v3 + 8))(v5, v2);

  return v6 & 1;
}

uint64_t sub_1D30D71D8@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v19 = a2;
  v20 = a3;
  v22 = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749448, &unk_1D30EF590);
  v23 = *(v4 - 8);
  v24 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v19 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749450, &unk_1D30FD100);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - v9;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749458, &qword_1D30EF5A0);
  v11 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v13 = &v19 - v12;
  sub_1D30E91FC();
  sub_1D30E91EC();
  sub_1D30E91AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1D2FF1768(&qword_1EE313FD8, &qword_1EC749450, &unk_1D30FD100, MEMORY[0x1E6968DA8]);
  sub_1D30E87BC();
  swift_getKeyPath();
  sub_1D30E876C();

  (*(v8 + 8))(v10, v7);
  v25 = v19;
  v26 = v20;
  sub_1D30E87AC();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749460, &qword_1D30EF5D0);
  v15 = v22;
  v22[3] = v14;
  v15[4] = sub_1D2FF15A8();
  __swift_allocate_boxed_opaque_existential_0Tm(v15);
  sub_1D2FF1768(&qword_1EE313FF0, &qword_1EC749458, &qword_1D30EF5A0, MEMORY[0x1E6968D58]);
  sub_1D2FF1768(&qword_1EE314000, &qword_1EC749448, &unk_1D30EF590, MEMORY[0x1E6968D20]);
  v16 = v21;
  v17 = v24;
  sub_1D30E875C();
  (*(v23 + 8))(v6, v17);
  (*(v11 + 8))(v13, v16);
}

uint64_t sub_1D30D75AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v42 = a1;
  v43 = a4;
  v52 = type metadata accessor for FilePath.ResolutionError(0);
  v6 = MEMORY[0x1EEE9AC00](v52);
  v8 = (&v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v51 = &v41 - v9;
  v54 = sub_1D30E8D5C();
  v10 = *(v54 - 8);
  v11 = MEMORY[0x1EEE9AC00](v54);
  v47 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v41 - v13;
  v15 = sub_1D30E8D9C();
  v49 = *(v15 - 8);
  v50 = v15;
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v45 = &v41 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v46 = &v41 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v48 = &v41 - v23;
  sub_1D30E91FC();
  v55 = sub_1D30E91EC();
  sub_1D30E91AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v44 = *(a3 + 16);
  sub_1D3010008(v14);
  v58 = a2;
  swift_getKeyPath();
  sub_1D3045A34(&qword_1EE313618, type metadata accessor for AssetPackRecord, &protocol conformance descriptor for AssetPackRecord);
  sub_1D30E8AEC();

  swift_getKeyPath();
  sub_1D3045A34(&qword_1EE313610, type metadata accessor for AssetPackRecord, &protocol conformance descriptor for AssetPackRecord);
  sub_1D2FF67A4();
  sub_1D30E8F0C();

  v25 = v56;
  v24 = v57;

  v26 = v53;
  sub_1D302D670(v25, v24, v8, v18);
  if (v26)
  {

    (*(v10 + 8))(v14, v54);
    v27 = type metadata accessor for FilePath.ResolutionError;
    v28 = v8;
    v29 = v51;
    sub_1D3056830(v28, v51, type metadata accessor for FilePath.ResolutionError);
    sub_1D3045A34(&qword_1EC749428, type metadata accessor for FilePath.ResolutionError, &protocol conformance descriptor for FilePath.ResolutionError);
    swift_allocError();
    sub_1D3056830(v29, v30, type metadata accessor for FilePath.ResolutionError);
  }

  else
  {

    sub_1D30E8D8C();
    v31 = v54;
    (*(v10 + 16))(v47, v14, v54);
    v32 = v46;
    sub_1D30E8D7C();
    (*(v10 + 8))(v14, v31);
    v33 = v48;
    sub_1D3003CF4(v32, 0, v48);
    v35 = *(v49 + 8);
    v36 = v32;
    v37 = v50;
    v35(v36, v50);
    v38 = [objc_opt_self() defaultManager];
    sub_1D30E8D3C();
    v39 = sub_1D30E906C();

    LODWORD(v27) = [v38 fileExistsAtPath_];

    v35(v33, v37);
    if (v27)
    {
      v40 = v43;
      *v43 = v42;
      *(v40 + 8) = 0;
    }
  }

  return v27 & 1;
}

void *Helper.deinit()
{

  return v0;
}

uint64_t Helper.__deallocating_deinit()
{
  Helper.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 80, 7);
}

char *sub_1D30D7C08(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749230, &unk_1D30F2B00);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1D30D7D0C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749B80, &qword_1D30F3238);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_1D30D7E60(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74AFF0, &unk_1D30FCFB0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1D30D7F80(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74B080, &unk_1D30FD1A8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[10 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 80 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A018, &qword_1D30F4C90);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D30D80C8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74AD10, &qword_1D30F5E60);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1D30D81E4(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
    v17 = MEMORY[0x1E69E7CC0];
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

uint64_t sub_1D30D83C0(void *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = sub_1D30E989C();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_1D30D8A74(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1D30D84A0(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_1D30E98AC();
  sub_1D30E90BC();
  v8 = sub_1D30E98EC();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_1D30E97CC() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_1D30D8B94(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1D30D85F0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74AFE8, &unk_1D30FCFA0);
  result = sub_1D30E945C();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    v25 = v2;
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
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      result = sub_1D30E989C();
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
      *(*(v5 + 48) + 8 * v13) = v17;
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

    if (v8 >= 64)
    {
      bzero((v3 + 56), 8 * v11);
    }

    else
    {
      *v7 = -1 << v8;
    }

    v2 = v25;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1D30D8814(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74B088, &qword_1D30FD1B8);
  result = sub_1D30E945C();
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
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_1D30E98AC();
      sub_1D30E90BC();
      result = sub_1D30E98EC();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1D30D8A74(uint64_t result, unint64_t a2, char a3)
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
    sub_1D30D85F0(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_1D30D8D14();
      a2 = v7;
      goto LABEL_12;
    }

    sub_1D30D8FB0(v5 + 1);
  }

  v8 = *v3;
  result = sub_1D30E989C();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 8 * a2) != v4)
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
  *(*(v11 + 48) + 8 * a2) = v4;
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
  result = sub_1D30E980C();
  __break(1u);
  return result;
}

uint64_t sub_1D30D8B94(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1D30D8814(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1D30D8E54();
      goto LABEL_16;
    }

    sub_1D30D91A0(v8 + 1);
  }

  v10 = *v4;
  sub_1D30E98AC();
  sub_1D30E90BC();
  result = sub_1D30E98EC();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_1D30E97CC();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_1D30E980C();
  __break(1u);
  return result;
}

void *sub_1D30D8D14()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74AFE8, &unk_1D30FCFA0);
  v2 = *v0;
  v3 = sub_1D30E944C();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
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

void *sub_1D30D8E54()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74B088, &qword_1D30FD1B8);
  v2 = *v0;
  v3 = sub_1D30E944C();
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
    v10 = *(v2 + 56);
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
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_1D30D8FB0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74AFE8, &unk_1D30FCFA0);
  result = sub_1D30E945C();
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
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      result = sub_1D30E989C();
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
      *(*(v5 + 48) + 8 * v12) = v16;
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

uint64_t sub_1D30D91A0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74B088, &qword_1D30FD1B8);
  result = sub_1D30E945C();
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
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_1D30E98AC();

      sub_1D30E90BC();
      result = sub_1D30E98EC();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

double sub_1D30D93EC(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_1D30D9404(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_1D30D944C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1D30E958C();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return MEMORY[0x1EEE6A410](0, v2, 0, a1);
}

id sub_1D30D94B0()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v1 = sub_1D30E906C();
  v2 = [v0 initWithSuiteName_];

  if (os_variant_has_internal_content())
  {
    if (!v2)
    {
      return 0;
    }

    v2 = v2;
    v3 = sub_1D30E906C();
    v4 = [v2 BOOLForKey_];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_1D30D9594(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1D38B2760](v2, MEMORY[0x1E69E76D8], MEMORY[0x1E69E76E8]);
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_1D30D83C0(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_1D30D9608(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x626F6C4768746977 && a2 == 0xEC00000044496C61;
  if (v4 || (sub_1D30E97CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1953722216 && a2 == 0xE400000000000000 || (sub_1D30E97CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000 || (sub_1D30E97CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001D30EBD30 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D30E97CC();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1D30D9778(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v3 || (sub_1D30E97CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x44496D616574 && a2 == 0xE600000000000000 || (sub_1D30E97CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D30EE570 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D30E97CC();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1D30D988C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F666E49707061 && a2 == 0xE700000000000000;
  if (v4 || (sub_1D30E97CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74736566696E616DLL && a2 == 0xEC00000061746144 || (sub_1D30E97CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D30EDF50 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001D30EDF70 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001D30EDF90 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001D30EDFB0 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001D30EDFD0 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x4D6C6C6174736E69 && a2 == 0xEF74736566696E61 || (sub_1D30E97CC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D30EDFF0 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D30EE010 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000025 && 0x80000001D30EE030 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D30EE060 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D30EE080 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D30EE0A0 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000020 && 0x80000001D30EE0C0 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D30EE0F0 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x6176417349746573 && a2 == 0xEE00656C62616C69 || (sub_1D30E97CC() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001D30EE110 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0x734165766F6D6572 && a2 == 0xEF6B636150746573 || (sub_1D30E97CC() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D30EE130 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001D30EE150 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0x4C74736575716572 && a2 == 0xEE0065736E656369 || (sub_1D30E97CC() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001D30EE170 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D30EE190 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 23;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001D30EE1B0 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 24;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D30EE1D0 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 25;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D30EE1F0 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 26;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D30EE210 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 27;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D30EE230 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 28;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D30EE250 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 29;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D30EE270 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 30;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D30EE290 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 31;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D30EE2B0 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 32;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D30EE2D0 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 33;
  }

  else if (a1 == 0x73416E4968746170 && a2 == 0xEF6B636150746573 || (sub_1D30E97CC() & 1) != 0)
  {

    return 34;
  }

  else if (a1 == 0x41726F4668746170 && a2 == 0xEA00000000007070 || (sub_1D30E97CC() & 1) != 0)
  {

    return 35;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001D30EE2F0 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 36;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001D30EE310 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 37;
  }

  else if (a1 == 0x6F436F5468746170 && a2 == 0xEF72656E6961746ELL || (sub_1D30E97CC() & 1) != 0)
  {

    return 38;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D30EE330 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 39;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D30EE350 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 40;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001D30EE370 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 41;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D30EE390 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 42;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001D30EE3B0 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 43;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001D30EE3D0 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 44;
  }

  else if (a1 == 0x744965766F6D6572 && a2 == 0xEA00000000006D65 || (sub_1D30E97CC() & 1) != 0)
  {

    return 45;
  }

  else if (a1 == 0x70556E61656C63 && a2 == 0xE700000000000000 || (sub_1D30E97CC() & 1) != 0)
  {

    return 46;
  }

  else if (a1 == 0x7461446573617265 && a2 == 0xED00006573616261 || (sub_1D30E97CC() & 1) != 0)
  {

    return 47;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001D30EE3F0 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 48;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D30EE410 == a2)
  {

    return 49;
  }

  else
  {
    v6 = sub_1D30E97CC();

    if (v6)
    {
      return 49;
    }

    else
    {
      return 50;
    }
  }
}

uint64_t sub_1D30DA7DC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6150656372756F73 && a2 == 0xEA00000000006874;
  if (v4 || (sub_1D30E97CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4449656C646E7562 && a2 == 0xE800000000000000 || (sub_1D30E97CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x44496D616574 && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D30E97CC();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1D30DA8F8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1836020326 && a2 == 0xE400000000000000;
  if (v3 || (sub_1D30E97CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D30EE470 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x44496D616574 && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D30E97CC();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1D30DAA14(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000012 && 0x80000001D30EE470 == a2;
  if (v3 || (sub_1D30E97CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x44496D616574 && a2 == 0xE600000000000000 || (sub_1D30E97CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D30EE590 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D30E97CC();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1D30DAB38(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000018 && 0x80000001D30EE450 == a2;
  if (v4 || (sub_1D30E97CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 28532 && a2 == 0xE200000000000000 || (sub_1D30E97CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D30EE470 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x44496D616574 && a2 == 0xE600000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D30E97CC();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1D30DAC9C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000018 && 0x80000001D30EE450 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 28532 && a2 == 0xE200000000000000 || (sub_1D30E97CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001D30EE490 == a2)
  {

    return 2;
  }

  else
  {
    v5 = sub_1D30E97CC();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1D30DADBC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 29793 && a2 == 0xE200000000000000;
  if (v3 || (sub_1D30E97CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4449656C646E7562 && a2 == 0xE800000000000000 || (sub_1D30E97CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x44496D616574 && a2 == 0xE600000000000000 || (sub_1D30E97CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001D30EE4B0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D30E97CC();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1D30DAF1C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 29793 && a2 == 0xE200000000000000;
  if (v3 || (sub_1D30E97CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x44496C61626F6C67 && a2 == 0xE800000000000000 || (sub_1D30E97CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001D30EE4B0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D30E97CC();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1D30DB034(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000017 && 0x80000001D30EE550 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000 || (sub_1D30E97CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F72724568746977 && a2 == 0xEF676E69646F4372)
  {

    return 2;
  }

  else
  {
    v5 = sub_1D30E97CC();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1D30DB160(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000012 && 0x80000001D30EE530 == a2;
  if (v4 || (sub_1D30E97CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x496E6F6973726576 && a2 == 0xE900000000000044 || (sub_1D30E97CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D30EB250 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C646E7542707061 && a2 == 0xEB00000000444965)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D30E97CC();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1D30DB2DC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F666E49707061 && a2 == 0xE700000000000000;
  if (v4 || (sub_1D30E97CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74736566696E616DLL && a2 == 0xEC00000061746144 || (sub_1D30E97CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D30EDF50 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001D30EDF70 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001D30EDF90 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001D30EDFB0 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001D30EDFD0 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x4D6C6C6174736E69 && a2 == 0xEF74736566696E61 || (sub_1D30E97CC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D30EDFF0 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D30EE010 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000001D30EE5D0 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D30EE060 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D30EE080 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D30EE0A0 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000020 && 0x80000001D30EE0C0 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D30EE0F0 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x6176417349746573 && a2 == 0xEE00656C62616C69 || (sub_1D30E97CC() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001D30EE110 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0x734165766F6D6572 && a2 == 0xEF6B636150746573 || (sub_1D30E97CC() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D30EE130 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001D30EE150 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0x4C74736575716572 && a2 == 0xEE0065736E656369 || (sub_1D30E97CC() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001D30EE170 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D30EE190 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 23;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001D30EE1B0 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 24;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D30EE1D0 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 25;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D30EE1F0 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 26;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D30EE210 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 27;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D30EE230 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 28;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D30EE250 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 29;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D30EE270 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 30;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D30EE290 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 31;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D30EE2B0 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 32;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D30EE2D0 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 33;
  }

  else if (a1 == 0x73416E4968746170 && a2 == 0xEF6B636150746573 || (sub_1D30E97CC() & 1) != 0)
  {

    return 34;
  }

  else if (a1 == 0x41726F4668746170 && a2 == 0xEA00000000007070 || (sub_1D30E97CC() & 1) != 0)
  {

    return 35;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001D30EE2F0 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 36;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001D30EE310 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 37;
  }

  else if (a1 == 0x6F436F5468746170 && a2 == 0xEF72656E6961746ELL || (sub_1D30E97CC() & 1) != 0)
  {

    return 38;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D30EE330 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 39;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D30EE350 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 40;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001D30EE370 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 41;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D30EE390 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 42;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001D30EE3B0 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 43;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001D30EE3D0 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 44;
  }

  else if (a1 == 0x744965766F6D6572 && a2 == 0xEA00000000006D65 || (sub_1D30E97CC() & 1) != 0)
  {

    return 45;
  }

  else if (a1 == 0x70556E61656C63 && a2 == 0xE700000000000000 || (sub_1D30E97CC() & 1) != 0)
  {

    return 46;
  }

  else if (a1 == 0x7461446573617265 && a2 == 0xED00006573616261 || (sub_1D30E97CC() & 1) != 0)
  {

    return 47;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001D30EE3F0 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    return 48;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D30EE410 == a2)
  {

    return 49;
  }

  else
  {
    v6 = sub_1D30E97CC();

    if (v6)
    {
      return 49;
    }

    else
    {
      return 50;
    }
  }
}

uint64_t sub_1D30DC22C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1752457584 && a2 == 0xE400000000000000;
  if (v3 || (sub_1D30E97CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6361507465737361 && a2 == 0xEB0000000044496BLL || (sub_1D30E97CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000001D30EE5F0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D30E97CC();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

id sub_1D30DC350(char *a1)
{
  v69[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1D30E881C();
  v61 = *(v2 - 8);
  v62 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v59 = &v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7493C0, &qword_1D30EF500);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v57 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v60 = &v55 - v7;
  v8 = sub_1D30E88CC();
  v9 = *(v8 - 8);
  v63 = v8;
  v64 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v58 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for FilePath.ResolutionError(0);
  MEMORY[0x1EEE9AC00](v65);
  v66 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D30E8D9C();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v68 = &v55 - v17;
  v18 = objc_opt_self();
  v19 = [v18 defaultManager];
  sub_1D30E8D3C();
  v20 = sub_1D30E906C();

  v21 = [v19 fileExistsAtPath_];

  if (v21)
  {
    v18 = type metadata accessor for HelperError(0);
    sub_1D3045A34(&qword_1EE313E48, type metadata accessor for HelperError, &unk_1D30EF3D8);
    swift_allocError();
    (*(v13 + 16))(v22, a1, v12);
LABEL_7:
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return v18;
  }

  v55 = v13;
  v56 = v12;
  v23 = [v18 defaultManager];
  sub_1D30E8D3C();
  v24 = sub_1D30E906C();

  v25 = [v23 createFileAtPath:v24 contents:0 attributes:0];

  if ((v25 & 1) == 0)
  {
    v18 = type metadata accessor for HelperError(0);
    sub_1D3045A34(&qword_1EE313E48, type metadata accessor for HelperError, &unk_1D30EF3D8);
    swift_allocError();
    (*(v55 + 16))(v30, a1, v56);
    goto LABEL_7;
  }

  v26 = v67;
  v27 = v68;
  v28 = v66;
  sub_1D302DD9C(v66, v68);
  if (v26)
  {
    sub_1D3045A34(&qword_1EC749428, type metadata accessor for FilePath.ResolutionError, &protocol conformance descriptor for FilePath.ResolutionError);
    swift_allocError();
    sub_1D3056830(v28, v29, type metadata accessor for FilePath.ResolutionError);
  }

  else
  {
    v66 = a1;
    v67 = 0;
    v65 = v18;
    v32 = v55;
    v33 = *(v55 + 16);
    v34 = v27;
    v35 = v27;
    v36 = v56;
    v33(v16, v34, v56);
    v37 = v59;
    (*(v61 + 104))(v59, *MEMORY[0x1E6968F70], v62);
    v38 = v60;
    sub_1D3040AB4(v16, v37, v60);
    v40 = v63;
    v39 = v64;
    if ((*(v64 + 48))(v38, 1, v63) == 1)
    {
      sub_1D2FF14DC(v38, &qword_1EC7493C0, &qword_1D30EF500);
      v18 = type metadata accessor for HelperError(0);
      sub_1D3045A34(&qword_1EE313E48, type metadata accessor for HelperError, &unk_1D30EF3D8);
      swift_allocError();
      v33(v41, v35, v36);
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      (*(v32 + 8))(v35, v36);
    }

    else
    {
      v42 = v58;
      (*(v39 + 32))(v58, v38, v40);
      v43 = v57;
      (*(v39 + 56))(v57, 1, 1, v40);
      v44 = v67;
      v45 = sub_1D30E880C();
      if (v44)
      {
        sub_1D2FF14DC(v43, &qword_1EC7493C0, &qword_1D30EF500);
        v46 = [v65 defaultManager];
        sub_1D30E8D3C();
        v47 = sub_1D30E906C();

        v69[0] = 0;
        v48 = [v46 removeItemAtPath:v47 error:v69];

        v18 = v69[0];
        v50 = v55;
        v49 = v56;
        if (v48)
        {
          swift_willThrow();
          v51 = *(v64 + 8);
          v52 = v18;
          v51(v42, v40);
          (*(v50 + 8))(v68, v49);
        }

        else
        {
          v54 = v69[0];
          sub_1D30E87DC();

          swift_willThrow();
          (*(v64 + 8))(v42, v40);
          (*(v50 + 8))(v68, v49);
        }
      }

      else
      {
        v53 = v39;
        v18 = v45;
        sub_1D2FF14DC(v43, &qword_1EC7493C0, &qword_1D30EF500);
        (*(v53 + 8))(v42, v40);
        (*(v55 + 8))(v68, v56);
      }
    }
  }

  return v18;
}