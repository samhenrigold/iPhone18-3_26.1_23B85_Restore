uint64_t sub_245FB2100@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, float a10@<S0>, float a11@<S1>, float a12@<S2>)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 12) = BYTE4(a2) & 1;
  *(a9 + 13) = a3;
  *(a9 + 14) = a4;
  *(a9 + 16) = a10;
  *(a9 + 20) = a11;
  *(a9 + 24) = a12;
  *(a9 + 28) = a5;
  *(a9 + 32) = a6;
  *(a9 + 40) = a7;
  *(a9 + 48) = a8;
  return result;
}

uint64_t sub_245FB2144()
{
  v1 = sub_2460918F4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  if (v5)
  {
    v6 = sub_245FA32CC();
    (*(v2 + 16))(v4, v6, v1);
    v7 = sub_2460918D4();
    v8 = sub_246091FB4();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v13 = v10;
      *v9 = 136380675;
      *(v9 + 4) = sub_245F8D3C0(0x6573616572636E69, 0xEA00000000002928, &v13);
      _os_log_impl(&dword_245F8A000, v7, v8, "ObjectCaptureSession.%{private}s: Area mode is already at max extent, ignoring request to increase the extent further!", v9, 0xCu);
      sub_245F8E6F4(v10);
      MEMORY[0x24C1989D0](v10, -1, -1);
      MEMORY[0x24C1989D0](v9, -1, -1);
    }

    (*(v2 + 8))(v4, v1);
  }

  else
  {
    *v0 = 1;
  }

  return v5 ^ 1u;
}

char *sub_245FB2350(__int128 *a1)
{
  v2 = v1;
  v4 = sub_246091AA4();
  v155 = *(v4 - 8);
  v156 = v4;
  MEMORY[0x28223BE20](v4);
  v154 = v139 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_246092034();
  v160 = *(v6 - 8);
  v161 = v6;
  MEMORY[0x28223BE20](v6);
  v159 = v139 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = sub_246092004();
  MEMORY[0x28223BE20](v157);
  v158 = v139 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_246091A64();
  MEMORY[0x28223BE20](v9 - 8);
  v167 = v139 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2460918F4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v153 = v139 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = v139 - v15;
  MEMORY[0x28223BE20](v17);
  v150 = v139 - v18;
  MEMORY[0x28223BE20](v19);
  v145 = v139 - v20;
  MEMORY[0x28223BE20](v21);
  v147 = v139 - v22;
  MEMORY[0x28223BE20](v23);
  v146 = v139 - v24;
  MEMORY[0x28223BE20](v25);
  v149 = v139 - v26;
  MEMORY[0x28223BE20](v27);
  v29 = v139 - v28;
  *(v1 + 3) = 0;
  swift_unknownObjectWeakInit();
  v168 = &v1[OBJC_IVAR____TtC6CoreOC19FreeformMeshManager_backgroundData];
  sub_245FB1AE8(&v1[OBJC_IVAR____TtC6CoreOC19FreeformMeshManager_backgroundData]);
  *&v1[OBJC_IVAR____TtC6CoreOC19FreeformMeshManager_backgroundTaskCount] = 0;
  v30 = &v1[OBJC_IVAR____TtC6CoreOC19FreeformMeshManager_mainQueueData];
  v31 = MEMORY[0x277D84F90];
  v32 = sub_245FC4748(MEMORY[0x277D84F90]);
  v33 = MEMORY[0x277D84FA0];
  *v30 = v32;
  *(v30 + 1) = v33;
  *(v30 + 2) = sub_245FC4748(v31);
  *(v30 + 3) = v33;
  *(v30 + 4) = 0;
  *(v30 + 5) = 0;
  v30[48] = 1;
  *(v30 + 8) = 0;
  *(v30 + 9) = 0;
  v30[80] = 1;
  *(v30 + 11) = 0;
  *(v30 + 6) = 0u;
  *(v30 + 7) = 0u;
  *(v30 + 8) = 0u;
  *(v30 + 9) = 0u;
  v30[160] = 1;
  *&v2[OBJC_IVAR____TtC6CoreOC19FreeformMeshManager_kScaleFactorForBoundingBoxMeshIntersection] = xmmword_246097430;
  v183 = 1;
  *&v2[OBJC_IVAR____TtC6CoreOC19FreeformMeshManager_kMeshOverlapRemovalThreshold] = 1065353216;
  v34 = sub_245FA32CC();
  v35 = *(v12 + 16);
  v163 = v34;
  v164 = v35;
  v165 = v12 + 16;
  (v35)(v29);
  sub_245FC4950(a1, &v172);
  v166 = v29;
  v36 = sub_2460918D4();
  v37 = sub_246091FA4();
  sub_245FC4988(a1);
  v38 = os_log_type_enabled(v36, v37);
  v169 = v12;
  v151 = v16;
  if (v38)
  {
    v39 = swift_slowAlloc();
    v162 = swift_slowAlloc();
    v171 = v162;
    *v39 = 136380931;
    *(v39 + 4) = sub_245F8D3C0(0x6E6F632874696E69, 0xED0000293A676966, &v171);
    *(v39 + 12) = 2082;
    v40 = a1[1];
    v172 = *a1;
    v173 = v40;
    v174 = a1[2];
    *&v175 = *(a1 + 6);
    sub_245FC4950(a1, v170);
    v41 = sub_246091C54();
    v43 = v11;
    v44 = sub_245F8D3C0(v41, v42, &v171);

    *(v39 + 14) = v44;
    v11 = v43;
    _os_log_impl(&dword_245F8A000, v36, v37, "MeshManager.%{private}s: Configuration = %{public}s", v39, 0x16u);
    v45 = v162;
    swift_arrayDestroy();
    MEMORY[0x24C1989D0](v45, -1, -1);
    v12 = v169;
    MEMORY[0x24C1989D0](v39, -1, -1);
  }

  v46 = *(v12 + 8);
  v46(v166, v11);
  if ((sub_245FB1B90() & 1) == 0)
  {
    sub_245FC4988(a1);
    sub_245F91E84((v2 + 16));
    v72 = v168;
    goto LABEL_18;
  }

  v152 = v46;
  v148 = v11;
  v47 = a1[1];
  *(v2 + 3) = *a1;
  *(v2 + 4) = v47;
  *(v2 + 5) = a1[2];
  *(v2 + 12) = *(a1 + 6);
  v144 = sub_245F90360();
  v162 = a1;
  sub_245FC4950(a1, &v172);
  sub_246091A34();
  *&v172 = MEMORY[0x277D84F90];
  v142 = sub_245FC59D0(&qword_27EE3A9D0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  v141 = sub_245F8E624(&unk_27EE3A230, &qword_246096660);
  v143 = sub_245F9218C(&qword_27EE3A9E0, &unk_27EE3A230, &qword_246096660, MEMORY[0x277D83970]);
  sub_2460921A4();
  v140 = *MEMORY[0x277D85260];
  v166 = v2;
  v48 = v159;
  v160 = *(v160 + 104);
  v49 = v161;
  (v160)(v159);
  *(v166 + 4) = sub_246092074();
  v139[1] = "rea_mode.mesh_main";
  sub_246091A24();
  *&v172 = MEMORY[0x277D84F90];
  sub_2460921A4();
  (v160)(v48, v140, v49);
  v50 = v162;
  v51 = v166;
  result = sub_246092074();
  *(v51 + 5) = result;
  v53 = *(v50 + 48);
  v54 = (v53 * 3) >> 64;
  v55 = 3 * v53;
  if (v54 != v55 >> 63)
  {
    __break(1u);
    goto LABEL_46;
  }

  v56 = (v55 * 3) >> 64;
  v57 = 3 * v55;
  if (v56 != v57 >> 63)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if ((v57 - 0x2000000000000000) >> 62 == 3)
  {
    v58 = 4 * v57;
    type metadata accessor for FreeformMeshBuffer();
    v59 = *(v50 + 40);
    v60 = swift_unknownObjectRetain();
    v61 = sub_246083374(v60, v59, v58);
    if (v61)
    {
      *(v51 + 13) = v61;
      v62 = *(*v61 + 288);

      v62();
      v63 = v166;
      v64 = v154;
      sub_246091A84();
      v65 = v168;
      swift_beginAccess();
      v66 = type metadata accessor for FreeformMeshManager.BackgroundData(0);
      (*(v155 + 40))(v65 + *(v66 + 52), v64, v156);
      swift_endAccess();
      v67 = v148;
      v68 = v152;
      if (v63[62] == 1)
      {
        v69 = *(v50 + 13);
        *(v65 + 129) = v69;
        if (v69 == 2)
        {
          v70 = 0.0;
          v71 = v150;
          if ((*(v50 + 12) & 1) != 0 || (v70 = *(v50 + 8), v70 <= 0.0))
          {
LABEL_32:
            v164(v71, v163, v67);
            sub_245FC4950(v50, &v172);
            v118 = sub_2460918D4();
            v119 = sub_246091FB4();
            sub_245FC4988(v50);
            if (os_log_type_enabled(v118, v119))
            {
              v120 = swift_slowAlloc();
              v121 = swift_slowAlloc();
              *&v172 = v121;
              *v120 = 136381443;
              *(v120 + 4) = sub_245F8D3C0(0x6E6F632874696E69, 0xED0000293A676966, &v172);
              *(v120 + 12) = 2050;
              *(v120 + 14) = v70;
              *(v120 + 22) = 2050;
              v122 = *(v50 + 20);
              *(v120 + 24) = *(v50 + 16);
              *(v120 + 32) = 2050;
              *(v120 + 34) = v122;
              _os_log_impl(&dword_245F8A000, v118, v119, "MeshManager.%{private}s: Invalid mesh refinement voxel parameters: arkit scene recon voxel size = %{public}f, initial voxel size = %{public}f, voxel size increment = %{public}f", v120, 0x2Au);
              sub_245F8E6F4(v121);
              MEMORY[0x24C1989D0](v121, -1, -1);
              MEMORY[0x24C1989D0](v120, -1, -1);

              sub_245FC4988(v50);
              v123 = v71;
              v124 = v148;
            }

            else
            {

              sub_245FC4988(v50);

              v123 = v71;
              v124 = v67;
            }

            v68(v123, v124);
LABEL_36:

            return 0;
          }
        }

        else
        {
          v86 = v69 & 1;
          v70 = sub_245F9DAF4(v69 & 1);
          v87 = v149;
          v164(v149, v163, v67);
          v88 = sub_2460918D4();
          v89 = v67;
          v90 = sub_246091FC4();
          if (os_log_type_enabled(v88, v90))
          {
            v91 = swift_slowAlloc();
            v92 = swift_slowAlloc();
            *&v172 = v92;
            *v91 = 136381187;
            *(v91 + 4) = sub_245F8D3C0(0x6E6F632874696E69, 0xED0000293A676966, &v172);
            *(v91 + 12) = 2050;
            *(v91 + 14) = v70;
            *(v91 + 22) = 2082;
            v170[0] = v86;
            v93 = sub_246091C54();
            v95 = sub_245F8D3C0(v93, v94, &v172);

            *(v91 + 24) = v95;
            v96 = v90;
            v67 = v148;
            _os_log_impl(&dword_245F8A000, v88, v96, "MeshManager.%{private}s: Computed voxel size: %{public}f from scan extent: %{public}s. Enabled automatic scan extent switching in area mode!", v91, 0x20u);
            swift_arrayDestroy();
            v97 = v92;
            v68 = v152;
            MEMORY[0x24C1989D0](v97, -1, -1);
            v98 = v91;
            v65 = v168;
            MEMORY[0x24C1989D0](v98, -1, -1);

            v68(v149, v67);
            v71 = v150;
            if (v70 <= 0.0)
            {
              goto LABEL_32;
            }
          }

          else
          {

            v99 = v152;
            v152(v87, v89);
            v71 = v150;
            v67 = v89;
            v68 = v99;
            if (v70 <= 0.0)
            {
              goto LABEL_32;
            }
          }
        }

        v100 = *(v50 + 16);
        if (v100 <= 0.0)
        {
          goto LABEL_32;
        }

        v101 = *(v50 + 20);
        if (v101 <= 0.0)
        {
          goto LABEL_32;
        }

        *(v65 + 56) = v100;
        *(v65 + 60) = v101;
        *(v65 + 64) = *(v50 + 24);
        *(v65 + 68) = v70;
        v102 = *(v50 + 32);
        if (v102 < 1)
        {
          v125 = v145;
          v164(v145, v163, v67);
          sub_245FC4950(v50, &v172);
          v126 = sub_2460918D4();
          v127 = v67;
          v128 = sub_246091FB4();
          if (os_log_type_enabled(v126, v128))
          {
            v129 = swift_slowAlloc();
            v130 = swift_slowAlloc();
            *&v172 = v130;
            *v129 = 136380931;
            *(v129 + 4) = sub_245F8D3C0(0x6E6F632874696E69, 0xED0000293A676966, &v172);
            *(v129 + 12) = 2050;
            *(v129 + 14) = v102;
            sub_245FC4988(v50);
            _os_log_impl(&dword_245F8A000, v126, v128, "MeshManager.%{private}s: Invalid point density threshold %{public}ld!", v129, 0x16u);
            sub_245F8E6F4(v130);
            MEMORY[0x24C1989D0](v130, -1, -1);
            MEMORY[0x24C1989D0](v129, -1, -1);

            sub_245FC4988(v50);
            v131 = v125;
            v132 = v148;
          }

          else
          {

            sub_245FC4988(v50);
            sub_245FC4988(v50);

            v131 = v125;
            v132 = v127;
          }

          v152(v131, v132);
          goto LABEL_36;
        }

        *&v63[OBJC_IVAR____TtC6CoreOC19FreeformMeshManager_backgroundData + 48] = v102;
        v103 = v146;
        v164(v146, v163, v67);
        v104 = sub_2460918D4();
        v105 = v67;
        v106 = sub_246091FC4();
        if (os_log_type_enabled(v104, v106))
        {
          v107 = swift_slowAlloc();
          v108 = swift_slowAlloc();
          *&v172 = v108;
          *v107 = 136381443;
          *(v107 + 4) = sub_245F8D3C0(0x6E6F632874696E69, 0xED0000293A676966, &v172);
          *(v107 + 12) = 1026;
          *(v107 + 14) = GESSVersionNumberMajor();
          *(v107 + 18) = 1026;
          *(v107 + 20) = GESSVersionNumberMinor();
          *(v107 + 24) = 1026;
          v63 = v166;
          *(v107 + 26) = GESSVersionNumberPatch();
          _os_log_impl(&dword_245F8A000, v104, v106, "MeshManager.%{private}s: Found mesh processing library version: %{public}u.%{public}u.%{public}u", v107, 0x1Eu);
          sub_245F8E6F4(v108);
          MEMORY[0x24C1989D0](v108, -1, -1);
          MEMORY[0x24C1989D0](v107, -1, -1);
        }

        v109 = v103;
        v68 = v152;
        v152(v109, v105);
        v110 = v147;
        v67 = v105;
        v164(v147, v163, v105);
        v111 = sub_2460918D4();
        v112 = sub_246091FC4();
        if (os_log_type_enabled(v111, v112))
        {
          v113 = v68;
          v114 = v67;
          v115 = swift_slowAlloc();
          v116 = swift_slowAlloc();
          *&v172 = v116;
          *v115 = 136380675;
          *(v115 + 4) = sub_245F8D3C0(0x6E6F632874696E69, 0xED0000293A676966, &v172);
          _os_log_impl(&dword_245F8A000, v111, v112, "MeshManager.%{private}s: Enabled mesh simplification", v115, 0xCu);
          sub_245F8E6F4(v116);
          MEMORY[0x24C1989D0](v116, -1, -1);
          v117 = v115;
          v67 = v114;
          v68 = v113;
          MEMORY[0x24C1989D0](v117, -1, -1);

          v113(v147, v67);
        }

        else
        {

          v68(v110, v105);
        }
      }

      v133 = v151;
      v164(v151, v163, v67);
      v134 = sub_2460918D4();
      v135 = sub_246091FC4();
      if (os_log_type_enabled(v134, v135))
      {
        v136 = v67;
        v137 = swift_slowAlloc();
        v138 = swift_slowAlloc();
        *&v172 = v138;
        *v137 = 136380675;
        *(v137 + 4) = sub_245F8D3C0(0x6E6F632874696E69, 0xED0000293A676966, &v172);
        _os_log_impl(&dword_245F8A000, v134, v135, "MeshManager.%{private}s: Initialized area mode mesh manager", v137, 0xCu);
        sub_245F8E6F4(v138);
        MEMORY[0x24C1989D0](v138, -1, -1);
        MEMORY[0x24C1989D0](v137, -1, -1);

        sub_245FC4988(v50);
        v152(v133, v136);
      }

      else
      {

        sub_245FC4988(v50);

        v68(v133, v67);
      }

      return v63;
    }

    v73 = v153;
    v74 = v148;
    v164(v153, v163, v148);
    v75 = sub_2460918D4();
    v76 = sub_246091FB4();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      *&v172 = v78;
      *v77 = 136380675;
      *(v77 + 4) = sub_245F8D3C0(0x6E6F632874696E69, 0xED0000293A676966, &v172);
      _os_log_impl(&dword_245F8A000, v75, v76, "MeshManager.%{private}s: Failed to create mesh buffer in area mode mesh manager!", v77, 0xCu);
      sub_245F8E6F4(v78);
      MEMORY[0x24C1989D0](v78, -1, -1);
      MEMORY[0x24C1989D0](v77, -1, -1);

      sub_245FC4988(v50);
    }

    else
    {
      sub_245FC4988(v50);
    }

    v152(v73, v74);
    v79 = v168;
    sub_245F91E84((v51 + 16));

    v80 = *(v51 + 4);
    v172 = *(v51 + 3);
    v173 = v80;
    v174 = *(v51 + 5);
    *&v175 = *(v51 + 12);
    sub_245FC4988(&v172);
    v72 = v79;
LABEL_18:
    sub_245FC5600(v72, type metadata accessor for FreeformMeshManager.BackgroundData);
    v81 = *(v30 + 9);
    v180 = *(v30 + 8);
    v181 = v81;
    v182 = v30[160];
    v82 = *(v30 + 5);
    v176 = *(v30 + 4);
    v177 = v82;
    v83 = *(v30 + 7);
    v178 = *(v30 + 6);
    v179 = v83;
    v84 = *(v30 + 1);
    v172 = *v30;
    v173 = v84;
    v85 = *(v30 + 3);
    v174 = *(v30 + 2);
    v175 = v85;
    sub_245FC49D8(&v172);
    type metadata accessor for FreeformMeshManager(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

LABEL_47:
  __break(1u);
  return result;
}

uint64_t sub_245FB37A8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v58 = a2;
  v66 = a3;
  v4 = sub_2460918F4();
  v61 = *(v4 - 8);
  v62 = v4;
  MEMORY[0x28223BE20](v4);
  v59 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v57 = &v55 - v7;
  v8 = sub_245F8E624(&qword_27EE3A350, &unk_2460969A0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v55 - v9;
  v11 = sub_245F8E624(&qword_27EE3A308, "lM");
  MEMORY[0x28223BE20](v11 - 8);
  v56 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v55 - v14;
  v16 = type metadata accessor for ObjectCaptureSession.Mesh.Anchor(0);
  v60 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_246091834();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v55 = &v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v23 = MEMORY[0x28223BE20](v22).n128_u64[0];
  v25 = &v55 - v24;
  v26 = [a1 identifier];
  sub_246091814();

  v27 = *(v20 + 16);
  v63 = v25;
  v27(v10, v25, v19);
  v64 = v20;
  v65 = v19;
  (*(v20 + 56))(v10, 0, 1, v19);
  v28 = a1;
  v29 = v60;
  sub_245F9DB18(v28, v10, v15);
  sub_245F8E744(v10, &qword_27EE3A350, &unk_2460969A0);
  if ((*(v29 + 48))(v15, 1, v16) == 1)
  {
    sub_245F8E744(v15, &qword_27EE3A308, "lM");
    v30 = sub_245FA32CC();
    v32 = v61;
    v31 = v62;
    v33 = v59;
    (*(v61 + 16))(v59, v30, v62);
    v34 = sub_2460918D4();
    v35 = sub_246091FB4();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v68[0] = v37;
      *v36 = 136380675;
      *(v36 + 4) = sub_245F8D3C0(0xD000000000000012, 0x800000024609F440, v68);
      _os_log_impl(&dword_245F8A000, v34, v35, "MeshManager.%{private}s: Failed to convert ARMeshAnchor to ObjectCaptureSession.Mesh.Anchor", v36, 0xCu);
      sub_245F8E6F4(v37);
      MEMORY[0x24C1989D0](v37, -1, -1);
      MEMORY[0x24C1989D0](v36, -1, -1);
    }

    (*(v32 + 8))(v33, v31);
  }

  else
  {
    v38 = v27;
    v40 = v61;
    v39 = v62;
    sub_245FC559C(v15, v18);
    v41 = v58 + OBJC_IVAR____TtC6CoreOC19FreeformMeshManager_mainQueueData;
    swift_beginAccess();
    v42 = *(v41 + 24);

    v43 = sub_245FB3EB0(v18, v42);

    if ((v43 & 1) == 0)
    {
      v52 = v55;
      v53 = v65;
      v38(v55, v18, v65);
      v54 = v56;
      sub_245FA2954(v18, v56);
      v51 = 1;
      (*(v29 + 56))(v54, 0, 1, v16);
      swift_beginAccess();
      sub_245FB40C8(v54, v52);
      swift_endAccess();
      sub_245FC5600(v18, type metadata accessor for ObjectCaptureSession.Mesh.Anchor);
      result = (*(v64 + 8))(v63, v53);
      goto LABEL_11;
    }

    v44 = sub_245FA32CC();
    v45 = v57;
    (*(v40 + 16))(v57, v44, v39);
    v46 = sub_2460918D4();
    v47 = sub_246091FB4();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v67[0] = v49;
      *v48 = 136380675;
      *(v48 + 4) = sub_245F8D3C0(0xD000000000000012, 0x800000024609F440, v67);
      _os_log_impl(&dword_245F8A000, v46, v47, "MeshManager.%{private}s: Received mesh anchor from previous session, dropping it!", v48, 0xCu);
      sub_245F8E6F4(v49);
      MEMORY[0x24C1989D0](v49, -1, -1);
      MEMORY[0x24C1989D0](v48, -1, -1);
    }

    (*(v40 + 8))(v45, v39);
    sub_245FC5600(v18, type metadata accessor for ObjectCaptureSession.Mesh.Anchor);
  }

  result = (*(v64 + 8))(v63, v65);
  v51 = 0;
LABEL_11:
  *v66 = v51;
  return result;
}

uint64_t sub_245FB3EB0(uint64_t a1, uint64_t a2)
{
  v3 = sub_246091834();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_245FC59D0(&qword_27EE3A2D8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]), v7 = sub_246091B84(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
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
      sub_245FC59D0(&qword_27EE3AD10, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v15 = sub_246091BB4();
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

uint64_t sub_245FB40C8(uint64_t a1, uint64_t a2)
{
  v5 = sub_245F8E624(&qword_27EE3A308, "lM");
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v17 - v6;
  v8 = type metadata accessor for ObjectCaptureSession.Mesh.Anchor(0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v12 + 48))(a1, 1, v9) == 1)
  {
    sub_245F8E744(a1, &qword_27EE3A308, "lM");
    sub_245FC1E34(a2, v7);
    v13 = sub_246091834();
    (*(*(v13 - 8) + 8))(a2, v13);
    return sub_245F8E744(v7, &qword_27EE3A308, "lM");
  }

  else
  {
    sub_245FC559C(a1, v11);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v2;
    sub_245FC2B28(v11, a2, isUniquelyReferenced_nonNull_native);
    v16 = sub_246091834();
    result = (*(*(v16 - 8) + 8))(a2, v16);
    *v2 = v18;
  }

  return result;
}

uint64_t sub_245FB42EC(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 32);
  sub_246092044();

  return v5;
}

uint64_t sub_245FB4350@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v60 = a3;
  v5 = sub_2460918F4();
  v61 = *(v5 - 8);
  v62 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_245F8E624(&qword_27EE3A308, "lM");
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v57 - v9;
  v11 = sub_246091834();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v57 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v57 - v19;
  *&v22 = MEMORY[0x28223BE20](v21).n128_u64[0];
  v24 = &v57 - v23;
  v25 = [a1 identifier];
  sub_246091814();

  v26 = a2 + OBJC_IVAR____TtC6CoreOC19FreeformMeshManager_mainQueueData;
  swift_beginAccess();
  v27 = *(v26 + 16);
  if (*(v27 + 16))
  {
    v58 = v11;

    v28 = sub_245FC1BDC(v24);
    if (v29)
    {
      v30 = v28;
      v31 = *(v27 + 56);
      v32 = type metadata accessor for ObjectCaptureSession.Mesh.Anchor(0);
      v33 = *(v32 - 8);
      v59 = v24;
      v34 = v12;
      v35 = v33;
      sub_245FA2954(v31 + *(v33 + 72) * v30, v10);

      v36 = 1;
      (*(v35 + 56))(v10, 0, 1, v32);
      sub_245F8E744(v10, &qword_27EE3A308, "lM");
      v37 = v58;
      v38 = v59;
      (*(v34 + 16))(v17, v59, v58);
      swift_beginAccess();
      sub_245FC3364(v20, v17);
      v39 = *(v34 + 8);
      v39(v20, v37);
      swift_endAccess();
      result = (v39)(v38, v37);
      goto LABEL_9;
    }

    v11 = v58;
  }

  v41 = type metadata accessor for ObjectCaptureSession.Mesh.Anchor(0);
  (*(*(v41 - 8) + 56))(v10, 1, 1, v41);
  sub_245F8E744(v10, &qword_27EE3A308, "lM");
  v42 = sub_245FA32CC();
  v44 = v61;
  v43 = v62;
  (*(v61 + 16))(v7, v42, v62);
  (*(v12 + 16))(v14, v24, v11);
  v45 = sub_2460918D4();
  v46 = sub_246091FC4();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v63[0] = v48;
    *v47 = 136380931;
    *(v47 + 4) = sub_245F8D3C0(0xD000000000000015, 0x800000024609F420, v63);
    *(v47 + 12) = 2082;
    sub_245FC59D0(&unk_27EE3A310, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v49 = sub_2460923D4();
    v58 = v7;
    v59 = v24;
    v50 = v12;
    v51 = v11;
    v53 = v52;
    v54 = *(v50 + 8);
    v54(v14, v51);
    v55 = sub_245F8D3C0(v49, v53, v63);

    *(v47 + 14) = v55;
    _os_log_impl(&dword_245F8A000, v45, v46, "MeshManager.%{private}s: No mesh anchor with ID %{public}s in processed data!", v47, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1989D0](v48, -1, -1);
    MEMORY[0x24C1989D0](v47, -1, -1);

    (*(v61 + 8))(v58, v62);
    result = (v54)(v59, v51);
  }

  else
  {

    v56 = *(v12 + 8);
    v56(v14, v11);
    (*(v44 + 8))(v7, v43);
    result = (v56)(v24, v11);
  }

  v36 = 0;
LABEL_9:
  *v60 = v36;
  return result;
}

uint64_t sub_245FB4974()
{
  v1 = *(v0 + 32);
  sub_245F8E624(&qword_27EE3A240, &qword_246097448);
  sub_246092044();

  return v3;
}

double sub_245FB49F4@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 32);
  sub_245F8E624(&qword_27EE3A248, &qword_246097450);
  sub_246092044();

  result = *&v5;
  *a1 = v5;
  *(a1 + 16) = v6;
  *(a1 + 32) = v7;
  return result;
}

uint64_t sub_245FB4A84(__n128 a1, __n128 a2, __n128 a3, __n128 a4)
{
  v5 = *(v4 + 32);
  v6 = swift_allocObject();
  v6[1] = a1;
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = a4;
  v6[5].n128_u64[0] = v4;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_245FC4BE0;
  *(v7 + 24) = v6;
  aBlock[4] = sub_245FC4C80;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_245FB4BFC;
  aBlock[3] = &unk_2858DE1C0;
  v8 = _Block_copy(aBlock);
  v9 = v5;

  dispatch_sync(v9, v8);

  _Block_release(v8);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_245FB4C24()
{
  v1 = *(v0 + 32);
  v2 = swift_allocObject();
  *(v2 + 16) = sub_245FC4CC0;
  *(v2 + 24) = v0;
  v6[4] = sub_245FC5DA4;
  v6[5] = v2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = sub_245FB4BFC;
  v6[3] = &unk_2858DE210;
  v3 = _Block_copy(v6);
  v4 = v1;

  dispatch_sync(v4, v3);

  _Block_release(v3);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  return result;
}

void sub_245FB4D64(uint64_t a1)
{
  v2 = sub_2460918F4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v79 - v7;
  v9 = sub_245F8E624(&qword_27EE3A308, "lM");
  MEMORY[0x28223BE20](v9 - 8);
  v92 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v79 - v12;
  v101 = sub_246091834();
  v102 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v91 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v98 = &v79 - v16;
  MEMORY[0x28223BE20](v17);
  v100 = &v79 - v18;
  v19 = *(a1 + OBJC_IVAR____TtC6CoreOC19FreeformMeshManager_backgroundTaskCount);
  if (v19 < 0)
  {
LABEL_29:
    __break(1u);
    return;
  }

  if (!v19)
  {
    v89 = v8;
    v90 = v2;
    v82 = a1;
    v25 = (a1 + OBJC_IVAR____TtC6CoreOC19FreeformMeshManager_mainQueueData);
    swift_beginAccess();
    v26 = v25[1];
    v27 = v26 + 56;
    v28 = 1 << *(v26 + 32);
    v29 = -1;
    if (v28 < 64)
    {
      v29 = ~(-1 << v28);
    }

    v30 = v29 & *(v26 + 56);
    v31 = (v28 + 63) >> 6;
    v99 = v102 + 16;
    v94 = v102 + 32;
    v96 = (v102 + 8);
    v84 = (v3 + 16);
    v83 = (v3 + 8);
    v80 = "pdatedMeshData:)";
    v97 = v26;

    v32 = 0;
    v33.n128_u64[0] = 136380931;
    v79 = v33;
    v34 = v101;
    v35 = v98;
    v88 = v25;
    v85 = v13;
    if (!v30)
    {
LABEL_12:
      while (1)
      {
        v37 = v32 + 1;
        if (__OFADD__(v32, 1))
        {
          break;
        }

        if (v37 >= v31)
        {

          v74 = *v25;
          v75 = v25[1];
          v76 = *(v25 + 9);
          v106 = *(v25 + 8);
          v107 = v76;
          v108 = *(v25 + 160);
          v77 = *(v25 + 6);
          v105 = *(v25 + 7);
          v104 = v77;
          *&v103 = v74;
          *(&v103 + 1) = v75;

          sub_245FB5AA8(&v103);
          v109[2] = v105;
          v109[3] = v106;
          v109[4] = v107;
          v110 = v108;
          v109[0] = v103;
          v109[1] = v104;
          sub_245FC5698(v109);
          v78 = MEMORY[0x277D84FA0];
          *v25 = MEMORY[0x277D84F98];
          v25[1] = v78;

          return;
        }

        v30 = *(v27 + 8 * v37);
        ++v32;
        if (v30)
        {
          v32 = v37;
          goto LABEL_16;
        }
      }

      __break(1u);
      goto LABEL_29;
    }

    while (1)
    {
LABEL_16:
      v38 = __clz(__rbit64(v30));
      v30 &= v30 - 1;
      v39 = *(v97 + 48);
      v40 = v102;
      v93 = *(v102 + 72);
      v41 = v100;
      v95 = *(v102 + 16);
      v95(v100, v39 + v93 * (v38 | (v32 << 6)), v34);
      (*(v40 + 32))(v35, v41, v34);
      v42 = *v25;
      if (!*(*v25 + 16))
      {
        goto LABEL_11;
      }

      v43 = sub_245FC1BDC(v35);
      if (v44)
      {
        v45 = v43;
        v87 = *(v42 + 56);
        v46 = type metadata accessor for ObjectCaptureSession.Mesh.Anchor(0);
        v47 = *(v46 - 8);
        v81 = *(v47 + 72);
        v48 = v87 + v81 * v45;
        v49 = v46;
        sub_245FA2954(v48, v13);

        v50 = *(v47 + 56);
        v86 = v49;
        v87 = v47 + 56;
        v50(v13, 0, 1, v49);
        v51 = v50;
        sub_245F8E744(v13, &qword_27EE3A308, "lM");
        swift_beginAccess();
        v52 = sub_245FC1BDC(v35);
        v53 = 1;
        if (v54)
        {
          v55 = v52;
          v56 = v88;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v58 = *v56;
          *&v103 = *v56;
          *v56 = 0x8000000000000000;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_245FC2DEC();
            v58 = v103;
          }

          (*v96)(*(v58 + 48) + v55 * v93, v101);
          sub_245FC559C(*(v58 + 56) + v55 * v81, v92);
          sub_245FC27E4(v55, v58);
          v53 = 0;
          *v56 = v58;
        }

        v59 = v92;
        v51(v92, v53, 1, v86);
        sub_245F8E744(v59, &qword_27EE3A308, "lM");
        swift_endAccess();
        v60 = sub_245FA32CC();
        v61 = v89;
        v62 = v90;
        (*v84)(v89, v60, v90);
        v63 = v91;
        v34 = v101;
        v95(v91, v98, v101);
        v64 = sub_2460918D4();
        v65 = sub_246091FC4();
        if (os_log_type_enabled(v64, v65))
        {
          v66 = swift_slowAlloc();
          v95 = swift_slowAlloc();
          *&v109[0] = v95;
          *v66 = v79.n128_u32[0];
          *(v66 + 4) = sub_245F8D3C0(0xD000000000000013, v80 | 0x8000000000000000, v109);
          *(v66 + 12) = 2082;
          sub_245FC59D0(&unk_27EE3A310, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
          LODWORD(v87) = v65;
          v67 = sub_2460923D4();
          v68 = v63;
          v70 = v69;
          v93 = *v96;
          v93(v68, v34);
          v71 = sub_245F8D3C0(v67, v70, v109);

          *(v66 + 14) = v71;
          _os_log_impl(&dword_245F8A000, v64, v87, "MeshManager.%{private}s: Removed mesh anchor %{public}s from the unprocessed mesh anchor set", v66, 0x16u);
          v72 = v95;
          swift_arrayDestroy();
          MEMORY[0x24C1989D0](v72, -1, -1);
          MEMORY[0x24C1989D0](v66, -1, -1);

          (*v83)(v89, v90);
          v35 = v98;
          v93(v98, v34);
        }

        else
        {

          v73 = *v96;
          (*v96)(v63, v34);
          (*v83)(v61, v62);
          v35 = v98;
          v73(v98, v34);
        }

        v25 = v88;
        v13 = v85;
        if (!v30)
        {
          goto LABEL_12;
        }
      }

      else
      {

        v34 = v101;
LABEL_11:
        (*v96)(v35, v34);
        v36 = type metadata accessor for ObjectCaptureSession.Mesh.Anchor(0);
        (*(*(v36 - 8) + 56))(v13, 1, 1, v36);
        sub_245F8E744(v13, &qword_27EE3A308, "lM");
        if (!v30)
        {
          goto LABEL_12;
        }
      }
    }
  }

  v20 = sub_245FA32CC();
  (*(v3 + 16))(v5, v20, v2);
  v21 = sub_2460918D4();
  v22 = sub_246091FB4();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *&v109[0] = v24;
    *v23 = 136380675;
    *(v23 + 4) = sub_245F8D3C0(0xD000000000000013, 0x800000024609F400, v109);
    _os_log_impl(&dword_245F8A000, v21, v22, "MeshManager.%{private}s: Dropping the new mesh update request because the previous request is still running!", v23, 0xCu);
    sub_245F8E6F4(v24);
    MEMORY[0x24C1989D0](v24, -1, -1);
    MEMORY[0x24C1989D0](v23, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
}

uint64_t sub_245FB5890()
{
  v1 = sub_246091AF4();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = (aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + 40);
  *v5 = v6;
  (*(v2 + 104))(v5, *MEMORY[0x277D85200], v1, v3);
  v7 = v6;
  LOBYTE(v6) = sub_246091B24();
  result = (*(v2 + 8))(v5, v1);
  if ((v6 & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v9 = *(v0 + 32);
  v10 = swift_allocObject();
  *(v10 + 16) = sub_245FC5A18;
  *(v10 + 24) = v0;
  aBlock[4] = sub_245FC5DA4;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_245FB4BFC;
  aBlock[3] = &unk_2858DE5A0;
  v11 = _Block_copy(aBlock);
  v12 = v9;

  dispatch_sync(v12, v11);

  _Block_release(v11);
  LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

  if (v11)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_245FB5AA8(__int128 *a1)
{
  v37 = sub_2460918F4();
  v36 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2460919F4();
  v39 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_246091A64();
  v8 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_246091AF4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = (&v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = a1[3];
  v44 = a1[2];
  v45 = v15;
  v46 = a1[4];
  v47 = *(a1 + 80);
  v16 = a1[1];
  v42 = *a1;
  v43 = v16;
  v17 = *(v1 + 32);
  *v14 = v17;
  (*(v12 + 104))(v14, *MEMORY[0x277D85200], v11);
  v18 = v17;
  LOBYTE(v17) = sub_246091B24();
  result = (*(v12 + 8))(v14, v11);
  if ((v17 & 1) == 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (*(v42 + 16) || *(*(&v42 + 1) + 16))
  {
    v20 = *(v1 + OBJC_IVAR____TtC6CoreOC19FreeformMeshManager_backgroundTaskCount);
    v21 = __OFADD__(v20, 1);
    v22 = v20 + 1;
    if (!v21)
    {
      *(v1 + OBJC_IVAR____TtC6CoreOC19FreeformMeshManager_backgroundTaskCount) = v22;
      if (v22 == 1)
      {
        v23 = *(v1 + 40);
        v24 = swift_allocObject();
        v25 = v45;
        *(v24 + 48) = v44;
        *(v24 + 64) = v25;
        *(v24 + 80) = v46;
        *(v24 + 96) = v47;
        v26 = v43;
        *(v24 + 16) = v42;
        *(v24 + 32) = v26;
        *(v24 + 104) = v1;
        aBlock[4] = sub_245FC59C4;
        aBlock[5] = v24;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_245F913A4;
        aBlock[3] = &unk_2858DE550;
        v27 = _Block_copy(aBlock);
        v28 = v23;
        sub_245FC5660(&v42, v40);

        sub_246091A14();
        v40[0] = MEMORY[0x277D84F90];
        sub_245FC59D0(&qword_27EE3A380, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
        sub_245F8E624(&qword_27EE39F38, &qword_246096680);
        sub_245F9218C(&qword_27EE3A390, &qword_27EE39F38, &qword_246096680, MEMORY[0x277D83970]);
        sub_2460921A4();
        MEMORY[0x24C1969D0](0, v10, v7, v27);
        _Block_release(v27);

        (*(v39 + 8))(v7, v5);
        (*(v8 + 8))(v10, v38);
      }

LABEL_13:
      __break(1u);
      return result;
    }

LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v29 = sub_245FA32CC();
  v30 = v36;
  v31 = v37;
  (*(v36 + 16))(v4, v29, v37);
  v32 = sub_2460918D4();
  v33 = sub_246091FB4();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v40[0] = v35;
    *v34 = 136380675;
    *(v34 + 4) = sub_245F8D3C0(0xD000000000000030, 0x800000024609F3C0, v40);
    _os_log_impl(&dword_245F8A000, v32, v33, "MeshManager.%{private}s: Received empty mesh update data, not updating mesh!", v34, 0xCu);
    sub_245F8E6F4(v35);
    MEMORY[0x24C1989D0](v35, -1, -1);
    MEMORY[0x24C1989D0](v34, -1, -1);
  }

  return (*(v30 + 8))(v4, v31);
}

void sub_245FB6098(uint64_t *a1, uint64_t a2)
{
  v4 = sub_245F8E624(&qword_27EE3A330, &qword_2460976B8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v175 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v205 = &v175 - v8;
  v191 = sub_2460918F4();
  v9 = *(v191 - 8);
  MEMORY[0x28223BE20](v191);
  v183 = &v175 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v184 = &v175 - v12;
  MEMORY[0x28223BE20](v13);
  v179 = &v175 - v14;
  MEMORY[0x28223BE20](v15);
  v186 = &v175 - v16;
  v17 = sub_245F8E624(&qword_27EE3A308, "lM");
  MEMORY[0x28223BE20](v17 - 8);
  v199 = (&v175 - v18);
  v208 = type metadata accessor for ObjectCaptureSession.Mesh.Anchor(0);
  v19 = *(v208 - 8);
  MEMORY[0x28223BE20](v208);
  v198 = &v175 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v197 = &v175 - v22;
  MEMORY[0x28223BE20](v23);
  v201 = &v175 - v24;
  MEMORY[0x28223BE20](v25);
  v181 = &v175 - v26;
  MEMORY[0x28223BE20](v27);
  v182 = &v175 - v28;
  v212 = sub_246091834();
  v29 = *(v212 - 8);
  MEMORY[0x28223BE20](v212);
  v196 = &v175 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v200 = &v175 - v32;
  MEMORY[0x28223BE20](v33);
  v178 = &v175 - v34;
  MEMORY[0x28223BE20](v35);
  v37 = &v175 - v36;
  MEMORY[0x28223BE20](v38);
  v195 = &v175 - v39;
  sub_24608FD18();
  OCSignPostsAriadneDbgCode();
  kdebug_trace();
  v192 = a2;
  v40 = (a2 + OBJC_IVAR____TtC6CoreOC19FreeformMeshManager_backgroundData);
  swift_beginAccess();
  v210 = v40;
  v40[1] = MEMORY[0x277D84FA0];

  v185 = a1;
  v41 = a1[1];
  v42 = v41 + 56;
  v43 = 1 << *(v41 + 32);
  v44 = -1;
  if (v43 < 64)
  {
    v44 = ~(-1 << v43);
  }

  v45 = v44 & *(v41 + 56);
  v180 = MEMORY[0x277D84F90];
  v215 = MEMORY[0x277D84F90];
  v46 = (v43 + 63) >> 6;
  v207 = v29 + 16;
  v204 = v29 + 32;
  v194 = (v19 + 56);
  v206 = v29;
  v211 = (v29 + 8);
  v209 = v19;
  v193 = (v19 + 48);
  v189 = (v9 + 16);
  v190 = (v9 + 8);
  v188 = "removeOverlappingAnchors(_:)";
  v202 = v41;

  v47 = 0;
  *&v48 = 136380931;
  v187 = v48;
  v203 = v6;
  v49 = v37;
  while (1)
  {
    v50 = v47;
    if (!v45)
    {
      break;
    }

LABEL_8:
    v51 = v206;
    v52 = *(v206 + 72);
    v53 = *(v206 + 16);
    v54 = v195;
    v55 = v212;
    v53(v195, *(v202 + 48) + v52 * (__clz(__rbit64(v45)) | (v47 << 6)), v212);
    (*(v51 + 32))(v49, v54, v55);
    v56 = v49;
    v57 = v210;
    swift_beginAccess();
    v58 = v56;
    v59 = sub_245FC1BDC(v56);
    if (v60)
    {
      v61 = v59;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v63 = *v57;
      v213 = *v57;
      *v57 = 0x8000000000000000;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_245FC2DEC();
        v63 = v213;
      }

      (*v211)(*(v63 + 48) + v61 * v52, v212);
      v64 = v199;
      sub_245FC559C(*(v63 + 56) + *(v209 + 72) * v61, v199);
      sub_245FC27E4(v61, v63);
      *v57 = v63;

      v65 = 0;
    }

    else
    {
      v65 = 1;
      v64 = v199;
    }

    v45 &= v45 - 1;
    v66 = v208;
    (*v194)(v64, v65, 1, v208);
    swift_endAccess();
    if ((*v193)(v64, 1, v66) == 1)
    {
      v49 = v58;
      (*v211)(v58, v212);
      sub_245F8E744(v64, &qword_27EE3A308, "lM");
    }

    else
    {
      v67 = v182;
      sub_245FC559C(v64, v182);
      *(v67 + *(v208 + 52)) = 1;
      sub_245FA2954(v67, v181);
      v68 = v180;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v68 = sub_245FC1A04(0, v68[2] + 1, 1, v68);
      }

      v70 = v68[2];
      v69 = v68[3];
      if (v70 >= v69 >> 1)
      {
        v68 = sub_245FC1A04((v69 > 1), v70 + 1, 1, v68);
      }

      v68[2] = v70 + 1;
      sub_245FC559C(v181, v68 + ((*(v209 + 80) + 32) & ~*(v209 + 80)) + *(v209 + 72) * v70);
      v180 = v68;
      v215 = v68;
      v71 = sub_245FA32CC();
      v72 = v179;
      (*v189)(v179, v71, v191);
      v73 = v178;
      v49 = v58;
      v74 = v212;
      v53(v178, v58, v212);
      v75 = sub_2460918D4();
      v76 = sub_246091FC4();
      if (os_log_type_enabled(v75, v76))
      {
        v77 = swift_slowAlloc();
        v176 = swift_slowAlloc();
        v214 = v176;
        *v77 = v187;
        *(v77 + 4) = sub_245F8D3C0(0xD000000000000030, v188 | 0x8000000000000000, &v214);
        *(v77 + 12) = 2082;
        v177 = v49;
        v78 = v77;
        sub_245FC59D0(&unk_27EE3A310, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v79 = sub_2460923D4();
        v80 = v73;
        v82 = v81;
        v175 = *v211;
        v175(v80, v74);
        v83 = sub_245F8D3C0(v79, v82, &v214);

        *(v78 + 14) = v83;
        _os_log_impl(&dword_245F8A000, v75, v76, "MeshManager.%{private}s: Removed mesh anchor %{public}s from processed mesh anchors", v78, 0x16u);
        v84 = v176;
        swift_arrayDestroy();
        MEMORY[0x24C1989D0](v84, -1, -1);
        MEMORY[0x24C1989D0](v78, -1, -1);

        (*v190)(v179, v191);
        sub_245FC5600(v182, type metadata accessor for ObjectCaptureSession.Mesh.Anchor);
        v49 = v177;
        v175(v177, v212);
      }

      else
      {

        v85 = v73;
        v86 = *v211;
        (*v211)(v85, v74);
        (*v190)(v72, v191);
        sub_245FC5600(v182, type metadata accessor for ObjectCaptureSession.Mesh.Anchor);
        v86(v49, v74);
      }
    }
  }

  while (1)
  {
    v47 = v50 + 1;
    if (__OFADD__(v50, 1))
    {
      goto LABEL_66;
    }

    if (v47 >= v46)
    {
      break;
    }

    v45 = *(v42 + 8 * v47);
    ++v50;
    if (v45)
    {
      goto LABEL_8;
    }
  }

  v87 = v185;
  sub_245FB77C4(v185);

  sub_245FB7698(v181);
  type metadata accessor for Util.Timer(0);
  v88 = sub_246025FB8();
  (*(*v88 + 144))();
  sub_245FB9140(v87);
  (*(*v88 + 152))();
  v89 = sub_245FA32CC();
  v90 = *v189;
  v91 = v186;
  v195 = v89;
  v92 = v191;
  (v90)(v186);

  v93 = sub_2460918D4();
  v94 = sub_246091FA4();

  v95 = os_log_type_enabled(v93, v94);
  v182 = v88;
  v193 = v90;
  if (v95)
  {
    v96 = swift_slowAlloc();
    v97 = swift_slowAlloc();
    v214 = v97;
    *v96 = v187;
    *(v96 + 4) = sub_245F8D3C0(0xD000000000000030, v188 | 0x8000000000000000, &v214);
    *(v96 + 12) = 2048;
    *(v96 + 14) = (*(*v88 + 176))();
    _os_log_impl(&dword_245F8A000, v93, v94, "MeshManager.%{private}s: Mesh refinement took %f ms", v96, 0x16u);
    sub_245F8E6F4(v97);
    MEMORY[0x24C1989D0](v97, -1, -1);
    MEMORY[0x24C1989D0](v96, -1, -1);
  }

  v194 = *v190;
  (v194)(v91, v92);
  v98 = v210;
  v99 = v212;
  v100 = v203;
  v210[17] = 0;
  v101 = *v98;
  v103 = (*v98 + 64);
  v102 = *v103;
  v199 = v103;
  v104 = 1 << *(v101 + 32);
  v105 = -1;
  if (v104 < 64)
  {
    v105 = ~(-1 << v104);
  }

  v106 = v105 & v102;
  v107 = (v104 + 63) >> 6;
  v202 = v101;

  v108 = 0;
  if (!v106)
  {
LABEL_28:
    if (v107 <= v108 + 1)
    {
      v110 = v108 + 1;
    }

    else
    {
      v110 = v107;
    }

    v111 = v110 - 1;
    while (1)
    {
      v109 = v108 + 1;
      if (__OFADD__(v108, 1))
      {
        break;
      }

      if (v109 >= v107)
      {
        v133 = sub_245F8E624(&qword_27EE3A338, &qword_2460976C0);
        (*(*(v133 - 8) + 56))(v100, 1, 1, v133);
        v106 = 0;
        goto LABEL_36;
      }

      v106 = v199[v109];
      ++v108;
      if (v106)
      {
        goto LABEL_35;
      }
    }

    __break(1u);
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  while (1)
  {
    v109 = v108;
LABEL_35:
    v112 = __clz(__rbit64(v106));
    v106 &= v106 - 1;
    v113 = v112 | (v109 << 6);
    v114 = v202;
    v115 = v206;
    v116 = v200;
    (*(v206 + 16))(v200, *(v202 + 48) + *(v206 + 72) * v113, v99);
    v117 = v201;
    sub_245FA2954(*(v114 + 56) + *(v209 + 72) * v113, v201);
    v118 = sub_245F8E624(&qword_27EE3A338, &qword_2460976C0);
    v119 = v99;
    v120 = v118;
    v121 = *(v118 + 48);
    v122 = *(v115 + 32);
    v123 = v203;
    v122(v203, v116, v119);
    v124 = v117;
    v100 = v123;
    sub_245FC559C(v124, v123 + v121);
    (*(*(v120 - 8) + 56))(v123, 0, 1, v120);
    v111 = v109;
LABEL_36:
    v125 = v205;
    sub_245FC5914(v100, v205, &qword_27EE3A330, &qword_2460976B8);
    v126 = sub_245F8E624(&qword_27EE3A338, &qword_2460976C0);
    if ((*(*(v126 - 8) + 48))(v125, 1, v126) == 1)
    {
      break;
    }

    v127 = v125 + *(v126 + 48);
    v128 = *(v127 + *(v208 + 20));
    sub_245FC5600(v127, type metadata accessor for ObjectCaptureSession.Mesh.Anchor);
    v129 = [v128 count];

    v130 = v210[17];
    v131 = __OFADD__(v130, v129);
    v132 = &v129[v130];
    if (v131)
    {
      goto LABEL_68;
    }

    v210[17] = v132;
    v99 = v212;
    (*v211)(v125, v212);
    v108 = v111;
    if (!v106)
    {
      goto LABEL_28;
    }
  }

  v134 = v184;
  v135 = v191;
  v136 = v193;
  v193(v184, v195, v191);

  v137 = sub_2460918D4();
  v138 = sub_246091FA4();
  if (os_log_type_enabled(v137, v138))
  {
    v139 = swift_slowAlloc();
    v140 = swift_slowAlloc();
    v214 = v140;
    *v139 = v187;
    *(v139 + 4) = sub_245F8D3C0(0xD000000000000030, v188 | 0x8000000000000000, &v214);
    *(v139 + 12) = 2050;
    v141 = v210;
    *(v139 + 14) = v210[17];

    _os_log_impl(&dword_245F8A000, v137, v138, "MeshManager.%{private}s: Num vertices all anchors = %{public}ld", v139, 0x16u);
    sub_245F8E6F4(v140);
    MEMORY[0x24C1989D0](v140, -1, -1);
    MEMORY[0x24C1989D0](v139, -1, -1);

    (v194)(v134, v135);
  }

  else
  {

    (v194)(v134, v135);
    v141 = v210;
  }

  v142 = v196;
  sub_245FBA974();
  v143 = v141[1];
  v144 = 1 << *(v143 + 32);
  v145 = -1;
  if (v144 < 64)
  {
    v145 = ~(-1 << v144);
  }

  v146 = v145 & *(v143 + 56);
  v147 = (v144 + 63) >> 6;

  v148 = 0;
  if (v146)
  {
LABEL_51:
    do
    {
      (*(v206 + 16))(v142, *(v143 + 48) + *(v206 + 72) * (__clz(__rbit64(v146)) | (v148 << 6)), v212);
      v150 = *v141;
      if (!*(*v141 + 16))
      {
        goto LABEL_69;
      }

      v151 = sub_245FC1BDC(v142);
      if ((v152 & 1) == 0)
      {
        goto LABEL_70;
      }

      v153 = *(v209 + 72);
      v154 = *(v150 + 56) + v153 * v151;
      v155 = v197;
      sub_245FA2954(v154, v197);
      (*v211)(v142, v212);
      sub_245FA2954(v155, v198);
      v156 = v215;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v156 = sub_245FC1A04(0, v156[2] + 1, 1, v156);
      }

      v158 = v156[2];
      v157 = v156[3];
      if (v158 >= v157 >> 1)
      {
        v156 = sub_245FC1A04((v157 > 1), v158 + 1, 1, v156);
      }

      v146 &= v146 - 1;
      sub_245FC5600(v197, type metadata accessor for ObjectCaptureSession.Mesh.Anchor);
      v156[2] = v158 + 1;
      sub_245FC559C(v198, v156 + ((*(v209 + 80) + 32) & ~*(v209 + 80)) + v158 * v153);
      v215 = v156;
      v141 = v210;
      v142 = v196;
    }

    while (v146);
  }

  while (1)
  {
    v149 = v148 + 1;
    if (__OFADD__(v148, 1))
    {
      break;
    }

    if (v149 >= v147)
    {

      if ((*(*v192 + 160))(v159))
      {
        v161 = v160;
        ObjectType = swift_getObjectType();
        (*(v161 + 8))(v215, ObjectType, v161);
        swift_unknownObjectRelease();
      }

      v163 = v183;
      v164 = v191;
      v136(v183, v195, v191);
      v165 = v215;

      v166 = sub_2460918D4();
      v167 = sub_246091FC4();
      if (os_log_type_enabled(v166, v167))
      {
        v168 = swift_slowAlloc();
        v169 = swift_slowAlloc();
        v214 = v169;
        *v168 = 136381187;
        *(v168 + 4) = sub_245F8D3C0(0xD000000000000030, v188 | 0x8000000000000000, &v214);
        *(v168 + 12) = 2050;
        v170 = v141;
        v171 = v164;
        v172 = v165[2];

        *(v168 + 14) = v172;

        *(v168 + 22) = 2050;
        *(v168 + 24) = *(*v170 + 16);

        _os_log_impl(&dword_245F8A000, v166, v167, "MeshManager.%{private}s: Updated %{public}ld of %{public}ld mesh anchors", v168, 0x20u);
        sub_245F8E6F4(v169);
        MEMORY[0x24C1989D0](v169, -1, -1);
        MEMORY[0x24C1989D0](v168, -1, -1);

        v173 = v163;
        v174 = v171;
      }

      else
      {

        swift_bridgeObjectRelease_n();
        v173 = v163;
        v174 = v164;
      }

      (v194)(v173, v174);
      sub_245FC1628();
      sub_245FB5890();
      sub_24608FD24();
      OCSignPostsAriadneDbgCode();
      kdebug_trace();

      return;
    }

    v146 = *(v143 + 56 + 8 * v149);
    ++v148;
    if (v146)
    {
      v148 = v149;
      goto LABEL_51;
    }
  }

LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
}

void sub_245FB7698(uint64_t a1)
{
  v2 = *(a1 + 16);
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

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_245FC1A04(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = (v3[3] >> 1) - v3[2];
  type metadata accessor for ObjectCaptureSession.Mesh.Anchor(0);
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void *sub_245FB77C4(uint64_t *a1)
{
  v2 = v1;
  v210 = sub_2460918F4();
  v211 = *(v210 - 8);
  MEMORY[0x28223BE20](v210 - 8);
  v209 = &v200 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_245F8E624(&qword_27EE3A350, &unk_2460969A0);
  MEMORY[0x28223BE20](v5 - 8);
  v205 = &v200 - v6;
  v7 = sub_245F8E624(&qword_27EE3A308, "lM");
  MEMORY[0x28223BE20](v7 - 8);
  v224 = &v200 - v8;
  v9 = sub_245F8E624(&qword_27EE3A358, &qword_2460976C8);
  MEMORY[0x28223BE20](v9 - 8);
  v231 = &v200 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v230 = &v200 - v12;
  v13 = type metadata accessor for ObjectCaptureSession.Mesh.Anchor(0);
  v234 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v208 = &v200 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v207 = &v200 - v16;
  MEMORY[0x28223BE20](v17);
  v212 = &v200 - v18;
  MEMORY[0x28223BE20](v19);
  v213 = &v200 - v20;
  MEMORY[0x28223BE20](v21);
  v23 = (&v200 - v22);
  MEMORY[0x28223BE20](v24);
  v227 = (&v200 - v25);
  v244 = sub_246091834();
  v26 = *(v244 - 8);
  MEMORY[0x28223BE20](v244);
  v204 = &v200 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v203 = &v200 - v29;
  MEMORY[0x28223BE20](v30);
  v235 = &v200 - v31;
  MEMORY[0x28223BE20](v32);
  v202 = &v200 - v33;
  MEMORY[0x28223BE20](v34);
  v201 = &v200 - v35;
  MEMORY[0x28223BE20](v36);
  v222 = (&v200 - v37);
  MEMORY[0x28223BE20](v38);
  v220 = &v200 - v39;
  MEMORY[0x28223BE20](v40);
  v237 = &v200 - v41;
  v42 = sub_245F8E624(&qword_27EE3A330, &qword_2460976B8);
  MEMORY[0x28223BE20](v42 - 8);
  v44 = &v200 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45);
  v47 = &v200 - v46;
  v48 = *a1;

  v225 = sub_245FC572C(MEMORY[0x277D84F90]);
  v49 = *(v48 + 64);
  *&v223 = v48 + 64;
  v228 = v48;
  v50 = 1 << *(v48 + 32);
  if (v50 < 64)
  {
    v51 = ~(-1 << v50);
  }

  else
  {
    v51 = -1;
  }

  v52 = v51 & v49;
  v53 = (v2 + OBJC_IVAR____TtC6CoreOC19FreeformMeshManager_backgroundData);
  swift_beginAccess();
  v54 = 0;
  v55 = (v50 + 63) >> 6;
  v238 = (v26 + 16);
  v239 = v53;
  v56 = (v26 + 32);
  v240 = v26;
  v57 = (v26 + 8);
  v58 = v23;
  v236 = v13;
  v242 = v57;
  v243 = v56;
  v229 = v23;
  v233 = v44;
  v232 = v47;
  v226 = v55;
LABEL_5:
  v59 = v54;
  if (!v52)
  {
LABEL_7:
    if (v55 <= v59 + 1)
    {
      v61 = v59 + 1;
    }

    else
    {
      v61 = v55;
    }

    while (1)
    {
      v60 = v59 + 1;
      if (__OFADD__(v59, 1))
      {
        break;
      }

      if (v60 >= v55)
      {
        v241 = (v61 - 1);
        v77 = sub_245F8E624(&qword_27EE3A338, &qword_2460976C0);
        (*(*(v77 - 8) + 56))(v44, 1, 1, v77);
        v52 = 0;
        goto LABEL_14;
      }

      v52 = *(v223 + 8 * v60);
      v59 = (v59 + 1);
      if (v52)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  while (1)
  {
    v60 = v59;
LABEL_13:
    v62 = __clz(__rbit64(v52));
    v52 &= v52 - 1;
    v63 = v62 | (v60 << 6);
    v64 = v228;
    v65 = v240;
    v66 = v237;
    v67 = v244;
    (*(v240 + 16))(v237, *(v228 + 48) + *(v240 + 72) * v63, v244);
    v68 = *(v64 + 56) + *(v234 + 72) * v63;
    v69 = v227;
    sub_245FA2954(v68, v227);
    v70 = sub_245F8E624(&qword_27EE3A338, &qword_2460976C0);
    v71 = *(v70 + 48);
    v72 = *(v65 + 32);
    v73 = v233;
    v72(v233, v66, v67);
    v74 = v69;
    v44 = v73;
    sub_245FC559C(v74, &v73[v71]);
    (*(*(v70 - 8) + 56))(v73, 0, 1, v70);
    v241 = v60;
    v53 = v239;
    v57 = v242;
    v58 = v229;
    v47 = v232;
    v55 = v226;
LABEL_14:
    sub_245FC5914(v44, v47, &qword_27EE3A330, &qword_2460976B8);
    v75 = sub_245F8E624(&qword_27EE3A338, &qword_2460976C0);
    if ((*(*(v75 - 8) + 48))(v47, 1, v75) == 1)
    {

      v142 = *(v225 + 64);
      v232 = (v225 + 64);
      v143 = 1 << *(v225 + 32);
      v144 = -1;
      if (v143 < 64)
      {
        v144 = ~(-1 << v143);
      }

      v145 = v144 & v142;
      v146 = (v143 + 63) >> 6;
      v241 = (v234 + 56);
      v233 = (v234 + 48);
      v228 = v211 + 16;
      v227 = (v211 + 8);
      v226 = "updateMeshRefinementParams(_:)";

      v147 = 0;
      v229 = MEMORY[0x277D84F90];
      *&v148 = 136380931;
      v223 = v148;
      v149 = v244;
      while (1)
      {
        v150 = v147;
        if (!v145)
        {
          break;
        }

        v151 = v147;
LABEL_72:
        v153 = __clz(__rbit64(v145));
        v145 &= v145 - 1;
        v154 = v153 | (v151 << 6);
        v155 = v225;
        v156 = v240;
        v157 = v237;
        (*(v240 + 16))(v237, *(v225 + 48) + *(v240 + 72) * v154, v149);
        v158 = *(*(v155 + 56) + 4 * v154);
        v159 = sub_245F8E624(&qword_27EE3A360, &qword_2460976D0);
        v160 = *(v159 + 48);
        v161 = v149;
        v162 = v231;
        (*(v156 + 32))(v231, v157, v161);
        *(v162 + v160) = v158;
        (*(*(v159 - 8) + 56))(v162, 0, 1, v159);
        v147 = v151;
        v53 = v239;
LABEL_73:
        v163 = v230;
        sub_245FC5914(v162, v230, &qword_27EE3A358, &qword_2460976C8);
        v164 = sub_245F8E624(&qword_27EE3A360, &qword_2460976D0);
        if ((*(*(v164 - 8) + 48))(v163, 1, v164) == 1)
        {

          return v229;
        }

        v165 = *(v163 + *(v164 + 48));
        v149 = v244;
        v166 = v235;
        (*v243)(v235, v163, v244);
        if (v165 < 1.0)
        {
          (*v242)(v166, v149);
        }

        else
        {
          swift_beginAccess();
          v167 = sub_245FC1BDC(v166);
          if (v168)
          {
            v169 = v167;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v171 = *v53;
            v245 = *v53;
            *v53 = 0x8000000000000000;
            if (!isUniquelyReferenced_nonNull_native)
            {
              sub_245FC2DEC();
              v171 = v245;
            }

            (*(v240 + 8))(*(v171 + 48) + *(v240 + 72) * v169, v149);
            v172 = v224;
            sub_245FC559C(*(v171 + 56) + *(v234 + 72) * v169, v224);
            sub_245FC27E4(v169, v171);
            *v53 = v171;

            v173 = 0;
          }

          else
          {
            v173 = 1;
            v172 = v224;
          }

          v174 = v236;
          (*v241)(v172, v173, 1, v236);
          swift_endAccess();
          if ((*v233)(v172, 1, v174) == 1)
          {
            (*v242)(v235, v149);
            sub_245F8E744(v172, &qword_27EE3A308, "lM");
          }

          else
          {
            v176 = v207;
            sub_245FC559C(v172, v207);
            *(v176 + v236[13]) = 1;
            sub_245FA2954(v176, v208);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v229 = sub_245FC1A04(0, v229[2] + 1, 1, v229);
            }

            v178 = v229[2];
            v177 = v229[3];
            if (v178 >= v177 >> 1)
            {
              v229 = sub_245FC1A04((v177 > 1), v178 + 1, 1, v229);
            }

            v179 = v229;
            v229[2] = v178 + 1;
            sub_245FC559C(v208, v179 + ((*(v234 + 80) + 32) & ~*(v234 + 80)) + *(v234 + 72) * v178);
            swift_beginAccess();
            v180 = v205;
            v181 = v235;
            sub_245FC4198(v235, v205);
            sub_245F8E744(v180, &qword_27EE3A350, &unk_2460969A0);
            v221 = *v238;
            v182 = v203;
            (v221)(v203, v181, v149);
            v183 = v237;
            sub_245FC3364(v237, v182);
            v222 = *v242;
            v222(v183, v149);
            swift_endAccess();
            v184 = sub_245FA32CC();
            (*v228)(v209, v184, v210);
            v185 = v204;
            (v221)(v204, v181, v149);
            v186 = sub_2460918D4();
            v187 = sub_246091FC4();
            if (os_log_type_enabled(v186, v187))
            {
              v188 = swift_slowAlloc();
              LODWORD(v220) = v187;
              v189 = v188;
              v221 = swift_slowAlloc();
              v246 = v221;
              *v189 = v223;
              *(v189 + 4) = sub_245F8D3C0(0xD00000000000001CLL, v226 | 0x8000000000000000, &v246);
              *(v189 + 12) = 2082;
              sub_245FC59D0(&unk_27EE3A310, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
              v190 = sub_2460923D4();
              v219 = v186;
              v192 = v191;
              v193 = v185;
              v194 = v222;
              v222(v193, v149);
              v195 = sub_245F8D3C0(v190, v192, &v246);

              *(v189 + 14) = v195;
              v196 = v219;
              _os_log_impl(&dword_245F8A000, v219, v220, "MeshManager.%{private}s: Removed mesh anchor %{public}s because of overlap", v189, 0x16u);
              v197 = v221;
              swift_arrayDestroy();
              MEMORY[0x24C1989D0](v197, -1, -1);
              MEMORY[0x24C1989D0](v189, -1, -1);

              (*v227)(v209, v210);
              sub_245FC5600(v207, type metadata accessor for ObjectCaptureSession.Mesh.Anchor);
              v194(v235, v149);
            }

            else
            {

              v198 = v222;
              v222(v185, v149);
              (*v227)(v209, v210);
              sub_245FC5600(v207, type metadata accessor for ObjectCaptureSession.Mesh.Anchor);
              v198(v235, v149);
            }

            v53 = v239;
          }
        }
      }

      if (v146 <= v147 + 1)
      {
        v152 = v147 + 1;
      }

      else
      {
        v152 = v146;
      }

      v147 = v152 - 1;
      while (1)
      {
        v151 = v150 + 1;
        if (__OFADD__(v150, 1))
        {
          goto LABEL_93;
        }

        if (v151 >= v146)
        {
          v175 = sub_245F8E624(&qword_27EE3A360, &qword_2460976D0);
          v162 = v231;
          (*(*(v175 - 8) + 56))(v231, 1, 1, v175);
          v145 = 0;
          goto LABEL_73;
        }

        v145 = *&v232[8 * v151];
        ++v150;
        if (v145)
        {
          goto LABEL_72;
        }
      }
    }

    sub_245FC559C(&v47[*(v75 + 48)], v58);
    type metadata accessor for MeshUtils.AABB();
    v76 = sub_245F9F2BC(*(v58 + v236[11]), *(v58 + v236[12]));
    if (v76)
    {
      break;
    }

    sub_245FC5600(v58, type metadata accessor for ObjectCaptureSession.Mesh.Anchor);
    (*v57)(v47, v244);
    v59 = v241;
    if (!v52)
    {
      goto LABEL_7;
    }
  }

  v206 = v76;
  v78 = v53[2];
  v79 = (v78 + 56);
  v80 = 1 << *(v78 + 32);
  if (v80 < 64)
  {
    v81 = ~(-1 << v80);
  }

  else
  {
    v81 = -1;
  }

  isa = v81 & *(v78 + 56);
  v83 = (v80 + 63) >> 6;
  v221 = v78;

  v84 = v83;
  v85 = 0;
  v219 = v79;
  v218 = v84;
  if (isa)
  {
    while (1)
    {
LABEL_27:
      v87 = __clz(__rbit64(isa));
      isa &= isa - 1;
      v88 = *(v221 + 48);
      v89 = v240;
      v216 = *(v240 + 72);
      v90 = v220;
      v91 = v244;
      v217 = *(v240 + 16);
      v217(v220, v88 + v216 * (v87 | (v85 << 6)), v244);
      v92 = v222;
      (*(v89 + 32))(v222, v90, v91);
      v93 = *v239;
      v57 = v242;
      if (!*(*v239 + 16))
      {
        goto LABEL_31;
      }

      v94 = sub_245FC1BDC(v92);
      if ((v95 & 1) == 0)
      {
        goto LABEL_31;
      }

      v96 = *(v93 + 56) + *(v234 + 72) * v94;
      v97 = v212;
      sub_245FA2954(v96, v212);
      v98 = v213;
      sub_245FC559C(v97, v213);
      v99 = v236[12];
      v215 = *(v98 + v236[11]);
      v214 = *(v98 + v99);
      v100 = v236[9];
      v247 = __invert_f4(*(v229 + v100));
      v101 = sub_245F9F6A4(v215, v214, vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v247.columns[0], COERCE_FLOAT(*(v98 + v100))), v247.columns[1], *(v98 + v100), 1), v247.columns[2], *(v98 + v100), 2), v247.columns[3], *(v98 + v100), 3), vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v247.columns[0], COERCE_FLOAT(*(v98 + v100 + 16))), v247.columns[1], *(v98 + v100 + 16), 1), v247.columns[2], *(v98 + v100 + 16), 2), v247.columns[3], *(v98 + v100 + 16), 3), vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v247.columns[0], COERCE_FLOAT(*(v98 + v100 + 32))), v247.columns[1], *(v98 + v100 + 32), 1), v247.columns[2], *(v98 + v100 + 32), 2), v247.columns[3], *(v98 + v100 + 32), 3), vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v247.columns[0], COERCE_FLOAT(*(v98 + v100 + 48))), v247.columns[1], *(v98 + v100 + 48), 1), v247.columns[2], *(v98 + v100 + 48), 2), v247.columns[3], *(v98 + v100 + 48), 3));
      if (!v101)
      {
        break;
      }

      v102 = *(v101->i64[0] + 152);
      v215.i64[0] = v101;
      v103 = v102(v206);
      v104 = v225;
      v105 = v222;
      if (*(v225 + 16) && (v106 = sub_245FC1BDC(v222), v104 = v225, (v107 & 1) != 0))
      {
        v108 = *(*(v225 + 56) + 4 * v106);
        v109 = v201;
        v217(v201, v105, v244);
        v214.n128_u32[0] = swift_isUniquelyReferenced_nonNull_native();
        v246 = v104;
        v111 = sub_245FC1BDC(v109);
        v112 = *(v104 + 16);
        v113 = (v110 & 1) == 0;
        v114 = v112 + v113;
        v47 = v232;
        if (__OFADD__(v112, v113))
        {
          goto LABEL_97;
        }

        v44 = v233;
        if (*(v104 + 24) >= v114)
        {
          if ((v214.n128_u8[0] & 1) == 0)
          {
            v214.n128_u64[0] = v111;
            LODWORD(v225) = v110;
            sub_245FC30F0();
            LOBYTE(v110) = v225;
            v111 = v214.n128_u64[0];
          }
        }

        else
        {
          LODWORD(v225) = v110;
          sub_245FC2420(v114, v214.n128_u32[0]);
          v115 = sub_245FC1BDC(v201);
          v116 = v110 & 1;
          LOBYTE(v110) = v225;
          if ((v225 & 1) != v116)
          {
            goto LABEL_99;
          }

          v111 = v115;
        }

        v135 = v103 + v108;
        v225 = v246;
        if ((v110 & 1) == 0)
        {
          v136 = v111;
          *(v246 + 8 * (v111 >> 6) + 64) |= 1 << v111;
          v137 = v201;
          v217((*(v225 + 48) + v111 * v216), v201, v244);
          *(*(v225 + 56) + 4 * v136) = v135;

          v138 = *v57;
          v139 = v137;
          v140 = v244;
          (*v57)(v139, v244);
          sub_245FC5600(v213, type metadata accessor for ObjectCaptureSession.Mesh.Anchor);
          v138(v222, v140);
          v131 = v225;
          v141 = *(v225 + 16);
          v133 = __OFADD__(v141, 1);
          v134 = v141 + 1;
          if (v133)
          {
            goto LABEL_98;
          }

          goto LABEL_57;
        }

        *(*(v246 + 56) + 4 * v111) = v135;

        v125 = *v57;
        (*v57)(v201, v244);
      }

      else
      {
        v117 = v202;
        v217(v202, v105, v244);
        LODWORD(v225) = swift_isUniquelyReferenced_nonNull_native();
        v246 = v104;
        v119 = sub_245FC1BDC(v117);
        v120 = *(v104 + 16);
        v121 = (v118 & 1) == 0;
        v122 = v120 + v121;
        v47 = v232;
        if (__OFADD__(v120, v121))
        {
          goto LABEL_95;
        }

        v44 = v233;
        if (*(v104 + 24) >= v122)
        {
          if ((v225 & 1) == 0)
          {
            v225 = v119;
            v214.n128_u32[0] = v118;
            sub_245FC30F0();
            LOBYTE(v118) = v214.n128_u8[0];
            v119 = v225;
          }
        }

        else
        {
          v214.n128_u32[0] = v118;
          sub_245FC2420(v122, v225);
          v123 = sub_245FC1BDC(v202);
          v124 = v118 & 1;
          LOBYTE(v118) = v214.n128_u8[0];
          if ((v214.n128_u8[0] & 1) != v124)
          {
            goto LABEL_99;
          }

          v119 = v123;
        }

        v225 = v246;
        if ((v118 & 1) == 0)
        {
          v126 = v119;
          *(v246 + 8 * (v119 >> 6) + 64) |= 1 << v119;
          v127 = v202;
          v217((*(v225 + 48) + v119 * v216), v202, v244);
          *(*(v225 + 56) + 4 * v126) = v103;

          v128 = *v57;
          v129 = v127;
          v130 = v244;
          (*v57)(v129, v244);
          sub_245FC5600(v213, type metadata accessor for ObjectCaptureSession.Mesh.Anchor);
          v128(v222, v130);
          v131 = v225;
          v132 = *(v225 + 16);
          v133 = __OFADD__(v132, 1);
          v134 = v132 + 1;
          if (v133)
          {
            goto LABEL_96;
          }

LABEL_57:
          *(v131 + 16) = v134;
          v44 = v233;
          goto LABEL_32;
        }

        *(*(v246 + 56) + 4 * v119) = v103;

        v125 = *v57;
        (*v57)(v202, v244);
      }

      sub_245FC5600(v213, type metadata accessor for ObjectCaptureSession.Mesh.Anchor);
      v125(v222, v244);
LABEL_32:
      v79 = v219;
      v84 = v218;
      if (!isa)
      {
        goto LABEL_23;
      }
    }

    sub_245FC5600(v98, type metadata accessor for ObjectCaptureSession.Mesh.Anchor);
    v92 = v222;
LABEL_31:
    (*v57)(v92, v244);
    v44 = v233;
    v47 = v232;
    goto LABEL_32;
  }

LABEL_23:
  while (1)
  {
    v86 = v85 + 1;
    if (__OFADD__(v85, 1))
    {
      break;
    }

    if (v86 >= v84)
    {
      v58 = v229;
      sub_245FC5600(v229, type metadata accessor for ObjectCaptureSession.Mesh.Anchor);

      (*v57)(v47, v244);
      v53 = v239;
      v54 = v241;
      goto LABEL_5;
    }

    isa = v79[v86].isa;
    ++v85;
    if (isa)
    {
      v85 = v86;
      goto LABEL_27;
    }
  }

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
  result = sub_246092424();
  __break(1u);
  return result;
}

void sub_245FB9140(uint64_t a1)
{
  sub_2460918F4();
  v3 = sub_246091AF4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = (v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) + 16);
  v7 = *(a1 + 48);
  v13[2] = *(a1 + 32);
  v13[3] = v7;
  v13[4] = *(a1 + 64);
  v14 = *(a1 + 80);
  v8 = *(a1 + 16);
  v13[0] = *a1;
  v13[1] = v8;
  v9 = *(v1 + 40);
  *v6 = v9;
  (*(v4 + 104))(v6, *MEMORY[0x277D85200], v3);
  v10 = v9;
  LOBYTE(v9) = sub_246091B24();
  (*(v4 + 8))(v6, v3);
  if (v9)
  {
    sub_245FB92CC(v13);
    v11 = v1 + OBJC_IVAR____TtC6CoreOC19FreeformMeshManager_backgroundData;
    swift_beginAccess();
    if (*(v11 + 33))
    {
      if (*(v11 + 33) == 1)
      {
        sub_245FBB458(v13);
      }

      else
      {
        sub_245FBC094(v13);
      }
    }

    else
    {
      sub_245FC086C(v13);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_245FB92CC(uint64_t *a1)
{
  v2 = v1;
  v4 = type metadata accessor for ObjectCaptureSession.Mesh.Anchor(0);
  v173 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v172 = &v153 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v180 = sub_246091834();
  v174 = *(v180 - 8);
  MEMORY[0x28223BE20](v180);
  v176 = &v153 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v179 = &v153 - v8;
  v9 = sub_245F8E624(&qword_27EE3A330, &qword_2460976B8);
  MEMORY[0x28223BE20](v9 - 8);
  v170 = &v153 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v175 = &v153 - v12;
  MEMORY[0x28223BE20](v13);
  v171 = (&v153 - v14);
  MEMORY[0x28223BE20](v15);
  v177 = (&v153 - v16);
  v17 = sub_2460918F4();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v153 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v178 = &v153 - v22;
  MEMORY[0x28223BE20](v23);
  v165 = &v153 - v24;
  MEMORY[0x28223BE20](v25);
  v27 = &v153 - v26;
  MEMORY[0x28223BE20](v28);
  v30 = &v153 - v29;
  v31 = sub_246091AF4();
  v32 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v34 = (&v153 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  v168 = *a1;
  v35 = *(a1 + 4);
  v184[2] = *(a1 + 3);
  v184[3] = v35;
  v185 = *(a1 + 80);
  v36 = *(a1 + 2);
  v184[0] = *(a1 + 1);
  v184[1] = v36;
  v37 = *(v2 + 40);
  *v34 = v37;
  (*(v32 + 104))(v34, *MEMORY[0x277D85200], v31);
  v38 = v37;
  LOBYTE(v37) = sub_246091B24();
  (*(v32 + 8))(v34, v31);
  if ((v37 & 1) == 0)
  {
    goto LABEL_74;
  }

  if (*(v2 + 62) != 1)
  {
    return;
  }

  v39 = (v2 + OBJC_IVAR____TtC6CoreOC19FreeformMeshManager_backgroundData);
  swift_beginAccess();
  if (*(v39 + 72) == 1)
  {
    v39[14] = v39[15] + v39[14];
    *(v39 + 16) = 256;
    *(v39 + 72) = 0;
    return;
  }

  sub_245FBA700(v184);
  v41 = v40;
  v42 = sub_245FA32CC();
  v43 = *(v18 + 16);
  v162 = v42;
  v163 = v18 + 16;
  v161 = v43;
  (v43)(v30);
  v44 = sub_2460918D4();
  v45 = sub_246091FC4();
  v46 = os_log_type_enabled(v44, v45);
  v169 = v39;
  v164 = v18;
  if (v46)
  {
    v47 = swift_slowAlloc();
    v48 = v20;
    v49 = swift_slowAlloc();
    *&v181 = v49;
    *v47 = 136380931;
    *(v47 + 4) = sub_245F8D3C0(0xD00000000000001ELL, 0x800000024609F380, &v181);
    *(v47 + 12) = 2050;
    *(v47 + 14) = v41;
    _os_log_impl(&dword_245F8A000, v44, v45, "MeshManager.%{private}s: Computed uniform point density = %{public}ld", v47, 0x16u);
    sub_245F8E6F4(v49);
    v50 = v49;
    v20 = v48;
    v39 = v169;
    MEMORY[0x24C1989D0](v50, -1, -1);
    MEMORY[0x24C1989D0](v47, -1, -1);

    v51 = v164;
  }

  else
  {

    v51 = v18;
  }

  v52 = *(v51 + 8);
  v52(v30, v17);
  if (v41 >= *(v39 + 6))
  {
    v39[14] = v39[15] + v39[14];
    *(v39 + 33) = 1;
    *(v39 + 5) = v41;
    v161(v27, v162, v17);

    v53 = sub_2460918D4();
    v54 = sub_246091FC4();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v158 = v52;
      v56 = v55;
      v57 = swift_slowAlloc();
      *&v181 = v57;
      *v56 = 136380931;
      *(v56 + 4) = sub_245F8D3C0(0xD00000000000001ELL, 0x800000024609F380, &v181);
      *(v56 + 12) = 2050;
      *(v56 + 14) = *(v39 + 6);

      _os_log_impl(&dword_245F8A000, v53, v54, "MeshManager.%{private}s: Uniform point density is greater than the threshold for simplification (%{public}ld), triggering full mesh refinement in the next update.", v56, 0x16u);
      sub_245F8E6F4(v57);
      MEMORY[0x24C1989D0](v57, -1, -1);
      v58 = v56;
      v52 = v158;
      MEMORY[0x24C1989D0](v58, -1, -1);
    }

    else
    {
    }

    v52(v27, v17);
  }

  else
  {
    *(v39 + 33) = 2;
  }

  v59 = v178;
  v60 = v39[17];
  v61 = v39[14];
  if (v61 < v60)
  {
    v62 = sub_246026268();
    if (!sub_246026278(v60, v62, v61))
    {
      *(v39 + 32) = 1;
      goto LABEL_44;
    }
  }

  if (*(v39 + 129) == 2)
  {
    goto LABEL_37;
  }

  v63 = v39[16];
  v64 = sub_246026268();
  if (!sub_246026278(v63, v64, v61) && v63 >= v61)
  {
    goto LABEL_37;
  }

  swift_beginAccess();
  if (*(v39 + 129) == 2)
  {
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  v65 = sub_245FB2144();
  swift_endAccess();
  if ((v65 & 1) == 0)
  {
LABEL_37:
    if (*(v39 + 32) == 1)
    {
      v161(v59, v162, v17);
      v94 = sub_2460918D4();
      v95 = sub_246091FC4();
      if (os_log_type_enabled(v94, v95))
      {
        v96 = swift_slowAlloc();
        v97 = swift_slowAlloc();
        *&v181 = v97;
        *v96 = 136380675;
        *(v96 + 4) = sub_245F8D3C0(0xD00000000000001ELL, 0x800000024609F380, &v181);
        _os_log_impl(&dword_245F8A000, v94, v95, "MeshManager.%{private}s: Turned off mesh densification", v96, 0xCu);
        sub_245F8E6F4(v97);
        MEMORY[0x24C1989D0](v97, -1, -1);
        MEMORY[0x24C1989D0](v96, -1, -1);

        v98 = v178;
      }

      else
      {

        v98 = v59;
      }

      v52(v98, v17);
    }

    *(v39 + 32) = 0;
    goto LABEL_44;
  }

  v157 = v39 + 129;
  v158 = v52;
  v154 = v20;
  v156 = v17;
  v66 = *(v168 + 64);
  v160 = v168 + 64;
  v67 = 1 << *(v168 + 32);
  v68 = -1;
  if (v67 < 64)
  {
    v68 = ~(-1 << v67);
  }

  v69 = v68 & v66;
  v159 = (v67 + 63) >> 6;
  v166 = v174 + 16;
  v178 = (v174 + 32);
  v167 = (v174 + 8);

  v70 = 0;
  v155 = v2;
  if (!v69)
  {
LABEL_25:
    if (v159 <= v70 + 1)
    {
      v72 = v70 + 1;
    }

    else
    {
      v72 = v159;
    }

    v73 = v72 - 1;
    v74 = v171;
    while (1)
    {
      v71 = v70 + 1;
      if (__OFADD__(v70, 1))
      {
        break;
      }

      if (v71 >= v159)
      {
        v93 = sub_245F8E624(&qword_27EE3A338, &qword_2460976C0);
        (*(*(v93 - 8) + 56))(v74, 1, 1, v93);
        v69 = 0;
        goto LABEL_33;
      }

      v69 = *(v160 + 8 * v71);
      ++v70;
      if (v69)
      {
        goto LABEL_32;
      }
    }

    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  while (1)
  {
    v71 = v70;
LABEL_32:
    v75 = __clz(__rbit64(v69));
    v69 &= v69 - 1;
    v76 = v75 | (v71 << 6);
    v77 = v168;
    v78 = v174;
    v79 = v179;
    v80 = v180;
    (*(v174 + 16))(v179, *(v168 + 48) + *(v174 + 72) * v76, v180);
    v81 = v172;
    sub_245FA2954(*(v77 + 56) + *(v173 + 72) * v76, v172);
    v82 = sub_245F8E624(&qword_27EE3A338, &qword_2460976C0);
    v83 = *(v82 + 48);
    v84 = *(v78 + 32);
    v74 = v171;
    v84(v171, v79, v80);
    sub_245FC559C(v81, v74 + v83);
    (*(*(v82 - 8) + 56))(v74, 0, 1, v82);
    v73 = v71;
LABEL_33:
    v85 = v177;
    sub_245FC5914(v74, v177, &qword_27EE3A330, &qword_2460976B8);
    v86 = sub_245F8E624(&qword_27EE3A338, &qword_2460976C0);
    v87 = *(v86 - 8);
    v88 = *(v87 + 48);
    if ((v88)(v85, 1, v86) == 1)
    {
      break;
    }

    v89 = *(v86 + 48);
    v90 = v176;
    v91 = v180;
    (*v178)(v176, v85, v180);
    swift_beginAccess();
    v92 = v179;
    sub_245FC3364(v179, v90);
    (*v167)(v92, v91);
    swift_endAccess();
    sub_245FC5600(v177 + v89, type metadata accessor for ObjectCaptureSession.Mesh.Anchor);
    v70 = v73;
    if (!v69)
    {
      goto LABEL_25;
    }
  }

  v177 = v88;

  v107 = *v169;
  v108 = *(*v169 + 64);
  v160 = *v169 + 64;
  v109 = 1 << *(v107 + 32);
  v110 = -1;
  if (v109 < 64)
  {
    v110 = ~(-1 << v109);
  }

  v111 = v110 & v108;
  v112 = (v109 + 63) >> 6;
  v171 = (v87 + 56);
  v168 = v107;

  v113 = 0;
  v114 = v175;
  if (!v111)
  {
LABEL_52:
    if (v112 <= v113 + 1)
    {
      v116 = v113 + 1;
    }

    else
    {
      v116 = v112;
    }

    v117 = v116 - 1;
    v118 = v170;
    while (1)
    {
      v115 = v113 + 1;
      if (__OFADD__(v113, 1))
      {
        goto LABEL_73;
      }

      if (v115 >= v112)
      {
        v111 = 0;
        v129 = 1;
        goto LABEL_60;
      }

      v111 = *(v160 + 8 * v115);
      ++v113;
      if (v111)
      {
        goto LABEL_59;
      }
    }
  }

  while (1)
  {
    v115 = v113;
LABEL_59:
    v119 = __clz(__rbit64(v111));
    v111 &= v111 - 1;
    v120 = v119 | (v115 << 6);
    v121 = v168;
    v122 = v174;
    v123 = v179;
    v124 = v180;
    (*(v174 + 16))(v179, *(v168 + 48) + *(v174 + 72) * v120, v180);
    v125 = *(v121 + 56) + *(v173 + 72) * v120;
    v126 = v172;
    sub_245FA2954(v125, v172);
    v127 = *(v86 + 48);
    v128 = *(v122 + 32);
    v118 = v170;
    v128(v170, v123, v124);
    sub_245FC559C(v126, v118 + v127);
    v129 = 0;
    v117 = v115;
    v114 = v175;
LABEL_60:
    (*v171)(v118, v129, 1, v86);
    sub_245FC5914(v118, v114, &qword_27EE3A330, &qword_2460976B8);
    if ((v177)(v114, 1, v86) == 1)
    {
      break;
    }

    v130 = *(v86 + 48);
    v131 = v176;
    v132 = v180;
    (*v178)(v176, v114, v180);
    swift_beginAccess();
    v133 = v179;
    sub_245FC3364(v179, v131);
    v134 = v133;
    v114 = v175;
    (*v167)(v134, v132);
    swift_endAccess();
    sub_245FC5600(v114 + v130, type metadata accessor for ObjectCaptureSession.Mesh.Anchor);
    v113 = v117;
    if (!v111)
    {
      goto LABEL_52;
    }
  }

  v135 = *v157;
  if (v135 == 2)
  {
    goto LABEL_76;
  }

  v136 = sub_245F9DAF4(v135 & 1);
  v39 = v169;
  v169[17] = v136;
  *(v39 + 33) = 1;
  v137 = v165;
  v17 = v156;
  v161(v165, v162, v156);
  v138 = v155;

  v139 = sub_2460918D4();
  v140 = sub_246091FC4();
  if (os_log_type_enabled(v139, v140))
  {
    v141 = swift_slowAlloc();
    v142 = swift_slowAlloc();
    *&v181 = v142;
    *v141 = 136380931;
    *(v141 + 4) = sub_245F8D3C0(0xD00000000000001ELL, 0x800000024609F380, &v181);
    *(v141 + 12) = 2082;
    v143 = *v157;

    if (v143 == 2)
    {
LABEL_78:
      __break(1u);
      return;
    }

    LOBYTE(v183) = v143 & 1;
    v144 = sub_246091C54();
    v146 = sub_245F8D3C0(v144, v145, &v181);

    *(v141 + 14) = v146;
    _os_log_impl(&dword_245F8A000, v139, v140, "MeshManager.%{private}s: Updated scan extent to: %{public}s in area mode.Now triggering scan extent update in scene reconstruction.", v141, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1989D0](v142, -1, -1);
    MEMORY[0x24C1989D0](v141, -1, -1);

    v147 = v137;
    v17 = v156;
  }

  else
  {

    v147 = v137;
  }

  v52 = v158;
  v148 = (v158)(v147, v17);
  v20 = v154;
  if ((*(*v138 + 160))(v148))
  {
    v150 = *v157;
    if (v150 != 2)
    {
      v151 = v149;
      ObjectType = swift_getObjectType();
      (*(v151 + 16))(v150 & 1, ObjectType, v151);
      swift_unknownObjectRelease();
      goto LABEL_44;
    }

    goto LABEL_77;
  }

LABEL_44:
  v161(v20, v162, v17);

  v99 = sub_2460918D4();
  v100 = sub_246091FC4();

  if (os_log_type_enabled(v99, v100))
  {
    v101 = swift_slowAlloc();
    v102 = swift_slowAlloc();
    v183 = v102;
    *v101 = 136380931;
    *(v101 + 4) = sub_245F8D3C0(0xD00000000000001ELL, 0x800000024609F380, &v183);
    *(v101 + 12) = 2082;
    v103 = *(v39 + 3);
    v181 = *(v39 + 2);
    *v182 = v103;
    *&v182[9] = *(v39 + 57);
    v104 = sub_246091C54();
    v106 = sub_245F8D3C0(v104, v105, &v183);

    *(v101 + 14) = v106;
    _os_log_impl(&dword_245F8A000, v99, v100, "MeshManager.%{private}s: Mesh refinement parameters = %{public}s", v101, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1989D0](v102, -1, -1);
    MEMORY[0x24C1989D0](v101, -1, -1);
  }

  v52(v20, v17);
}

void sub_245FBA700(uint64_t *a1)
{
  v3 = sub_246091AF4();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = (&v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *a1;
  v9 = a1[1];
  v10 = a1[3];
  v30 = a1[2];
  v31 = v8;
  v11 = a1[4];
  v12 = a1[5];
  v13 = a1[7];
  v28 = a1[6];
  v29 = v11;
  v14 = *(a1 + 64);
  v15 = *(v1 + 40);
  *v7 = v15;
  (*(v4 + 104))(v7, *MEMORY[0x277D85200], v3, v5);
  v16 = v15;
  LOBYTE(v15) = sub_246091B24();
  (*(v4 + 8))(v7, v3);
  if ((v15 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (*(v1 + 76) == 1)
  {
    v17 = 0.0;
    if (v14)
    {
      goto LABEL_9;
    }

    v32 = v31;
    v33 = v9;
    v34 = v30;
    v35 = v10;
    v36 = v29;
    v37 = v12;
    v38 = v28;
    v39 = v13;
    *v18.f32 = OCBoundingBox.extent.getter();
    goto LABEL_8;
  }

  v19 = v1 + OBJC_IVAR____TtC6CoreOC19FreeformMeshManager_backgroundData;
  swift_beginAccess();
  v17 = 0.0;
  if ((*(v19 + 96) & 1) == 0 && (*(v19 + 128) & 1) == 0)
  {
    v20 = *(v19 + 112);
    v21 = *(v19 + 80);
    v22.i64[0] = v20;
    v23.i64[0] = v21;
    v23.i64[1] = *(v19 + 88);
    v22.i64[1] = *(v19 + 120);
    v18 = vsubq_f32(v22, v23);
LABEL_8:
    v24 = vmulq_f32(v18, v18);
    v17 = sqrtf(v24.f32[2] + vaddv_f32(*v24.f32));
  }

LABEL_9:
  v25 = v1 + OBJC_IVAR____TtC6CoreOC19FreeformMeshManager_backgroundData;
  swift_beginAccess();
  v26 = *(v25 + 56);
  if (v26 <= 0.0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v27 = v17 / v26;
  if ((LODWORD(v27) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v27 <= -9.2234e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v27 >= 9.2234e18)
  {
LABEL_18:
    __break(1u);
  }
}

void sub_245FBA974()
{
  v93 = sub_2460918F4();
  v92 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v91 = &v90 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = type metadata accessor for ObjectCaptureSession.Mesh.Anchor(0);
  v103 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v3 = &v90 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v102 = &v90 - v5;
  v112 = sub_246091834();
  v6 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v101 = &v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_245F8E624(&qword_27EE3A330, &qword_2460976B8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v90 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v105 = &v90 - v12;
  v13 = sub_246091AF4();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = (&v90 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = v0;
  v19 = *(v0 + 40);
  *v17 = v19;
  (*(v14 + 104))(v17, *MEMORY[0x277D85200], v13, v15);
  v20 = v19;
  v21 = sub_246091B24();
  (*(v14 + 8))(v17, v13);
  if (v21)
  {
    v22 = (v18 + OBJC_IVAR____TtC6CoreOC19FreeformMeshManager_backgroundData);
    v109 = v22;
    swift_beginAccess();
    v23 = v22->i64[0];
    v24 = v22->i64[0] + 64;
    v25 = 1 << *(v22->i64[0] + 32);
    v26 = -1;
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    v27 = v26 & *(v22->i64[0] + 64);
    v28 = (v25 + 63) >> 6;
    v97 = v6 + 16;
    v96 = v6 + 32;
    v100 = v6;
    v107 = (v6 + 8);
    v104 = v23;

    v29 = 0;
    v99 = v3;
    v98 = v10;
    v30 = v105;
    v106 = v24;
    while (v27)
    {
      v35 = v29;
LABEL_17:
      v38 = __clz(__rbit64(v27));
      v27 &= v27 - 1;
      v39 = v38 | (v35 << 6);
      v40 = v104;
      v41 = v100;
      v42 = v101;
      v43 = v112;
      (*(v100 + 16))(v101, *(v104 + 48) + *(v100 + 72) * v39, v112);
      v44 = *(v40 + 56) + *(v103 + 72) * v39;
      v45 = v102;
      sub_245FA2954(v44, v102);
      v46 = sub_245F8E624(&qword_27EE3A338, &qword_2460976C0);
      v47 = *(v46 + 48);
      v48 = *(v41 + 32);
      v10 = v98;
      v48(v98, v42, v43);
      sub_245FC559C(v45, &v10[v47]);
      (*(*(v46 - 8) + 56))(v10, 0, 1, v46);
      v3 = v99;
      v30 = v105;
LABEL_18:
      sub_245FC5914(v10, v30, &qword_27EE3A330, &qword_2460976B8);
      v49 = sub_245F8E624(&qword_27EE3A338, &qword_2460976C0);
      if ((*(*(v49 - 8) + 48))(v30, 1, v49) == 1)
      {

        if ((v109[6].i8[0] & 1) == 0 && (v109[8].i8[0] & 1) == 0)
        {
          v67 = *v109[5].f32;
          v66 = v109[5].i64[1];
          v69 = *v109[7].f32;
          v68 = v109[7].u64[1];
          v70 = sub_245FA32CC();
          v71 = v92;
          v72 = v91;
          v73 = v93;
          (*(v92 + 16))(v91, v70, v93);
          v74 = sub_2460918D4();
          v75 = sub_246091FC4();
          if (os_log_type_enabled(v74, v75))
          {
            *v76.f32 = v67;
            v76.i64[1] = v66;
            *v77.f32 = vsub_f32(v69, v67);
            v77.i64[1] = vsubq_f32(vdupq_n_s64(v68), v76).u32[2];
            v117 = v77;
            v78 = swift_slowAlloc();
            v118.i64[0] = swift_slowAlloc();
            v119.i64[0] = v118.i64[0];
            *v78 = 136381443;
            *(v78 + 4) = sub_245F8D3C0(0xD000000000000013, 0x800000024609F360, &v119);
            *(v78 + 12) = 2082;
            v120 = v117;
            v117.i64[0] = v68;
            sub_245F8E624(&qword_27EE3A2F0, &unk_246096850);
            sub_245F9218C(&qword_27EE3A340, &qword_27EE3A2F0, &unk_246096850, MEMORY[0x277D84B08]);
            v79 = sub_246092404();
            v81 = v66;
            v82 = sub_245F8D3C0(v79, v80, &v119);

            *(v78 + 14) = v82;
            *(v78 + 22) = 2082;
            *v120.f32 = v67;
            v120.i64[1] = v81;
            v83 = sub_246092404();
            v85 = sub_245F8D3C0(v83, v84, &v119);

            *(v78 + 24) = v85;
            *(v78 + 32) = 2082;
            *v120.f32 = v69;
            v120.i64[1] = v117.i64[0];
            v86 = sub_246092404();
            v88 = sub_245F8D3C0(v86, v87, &v119);

            *(v78 + 34) = v88;
            _os_log_impl(&dword_245F8A000, v74, v75, "MeshManager.%{private}s: Updated mesh extents: extent = %{public}s\nminCorner = %{public}s maxCorner = %{public}s", v78, 0x2Au);
            v89 = v118.i64[0];
            swift_arrayDestroy();
            MEMORY[0x24C1989D0](v89, -1, -1);
            MEMORY[0x24C1989D0](v78, -1, -1);

            (*(v92 + 8))(v91, v93);
          }

          else
          {

            (*(v71 + 8))(v72, v73);
          }
        }

        return;
      }

      sub_245FC559C(v30 + *(v49 + 48), v3);
      v50 = v108;
      v51 = &v3[*(v108 + 36)];
      v52 = v51[1];
      v116 = *v51;
      v117 = v52;
      v53 = *&v3[*(v108 + 44)];
      v54 = v51[3];
      v115 = v51[2];
      v113 = v53;
      v114 = v54;
      v120 = vaddq_f32(v54, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v116, v53.f32[0]), v52, *v53.f32, 1), v115, v53, 2));
      v55 = sub_245F8E624(&qword_27EE3A080, &unk_246096F90);
      sub_246026078(v55);
      v118 = v119;
      v56 = vaddq_f32(v113, *&v3[*(v50 + 48)]);
      v120 = vaddq_f32(v114, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v116, v56.f32[0]), v117, *v56.f32, 1), v115, v56, 2));
      sub_246026078(v55);
      v57 = v119;
      v58 = v109;
      if (v109[6].i8[0] & 1) != 0 || (v109[8].i8[0])
      {
        v57.i32[3] = 0;
        v31 = v118;
        v31.i32[3] = 0;
        v32 = vminnmq_f32(v57, v31);
        v32.i32[3] = v110.i32[3];
        v109[5] = v32;
        v58[6].i8[0] = 0;
        v33 = vmaxnmq_f32(v57, v31);
        v33.i32[3] = v111;
        v110 = v32;
        v118 = v33;
        v34 = &v121;
      }

      else
      {
        v57.i32[3] = 0;
        v59 = v118;
        v59.i32[3] = 0;
        v60 = vminnmq_f32(v57, v59);
        v60.i32[3] = 0;
        v61 = v109[5];
        v61.i32[3] = 0;
        v62 = vminnmq_f32(v60, v61);
        v62.i32[3] = v94.i32[3];
        v63 = vmaxnmq_f32(v57, v59);
        v63.i32[3] = 0;
        v109[5] = v62;
        v64 = v58[7];
        v64.i32[3] = 0;
        v58[6].i8[0] = 0;
        v33 = vmaxnmq_f32(v63, v64);
        v33.i32[3] = v95;
        v94 = v62;
        v118 = v33;
        v34 = &v118;
      }

      v34[-16] = v33;
      v24 = v106;
      sub_245FC5600(v3, type metadata accessor for ObjectCaptureSession.Mesh.Anchor);
      v58[7] = v118;
      v58[8].i8[0] = 0;
      (*v107)(v30, v112);
    }

    if (v28 <= v29 + 1)
    {
      v36 = v29 + 1;
    }

    else
    {
      v36 = v28;
    }

    v37 = v36 - 1;
    while (1)
    {
      v35 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v35 >= v28)
      {
        v65 = sub_245F8E624(&qword_27EE3A338, &qword_2460976C0);
        (*(*(v65 - 8) + 56))(v10, 1, 1, v65);
        v27 = 0;
        v29 = v37;
        goto LABEL_18;
      }

      v27 = *(v24 + 8 * v35);
      ++v29;
      if (v27)
      {
        v29 = v35;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void sub_245FBB458(uint64_t *a1)
{
  v2 = sub_245F8E624(&qword_27EE3A308, "lM");
  MEMORY[0x28223BE20](v2 - 8);
  v106 = v86 - v3;
  v105 = type metadata accessor for ObjectCaptureSession.Mesh.Anchor(0);
  v108 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v5 = v86 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v104 = v86 - v7;
  MEMORY[0x28223BE20](v8);
  v10 = v86 - v9;
  v11 = sub_2460918F4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v99 = v86 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v95 = v86 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = v86 - v17;
  v19 = sub_246091AF4();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = (v86 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = *a1;
  v25 = a1[3];
  v96.i64[0] = a1[2];
  v91 = v25;
  v26 = a1[5];
  v94.i64[0] = a1[4];
  v90 = v26;
  v27 = a1[7];
  v93.i64[0] = a1[6];
  v89 = v27;
  v28 = a1[9];
  v92 = a1[8];
  v88 = v28;
  v107.i32[0] = *(a1 + 80);
  v29 = *(v109 + 40);
  *v23 = v29;
  (*(v20 + 104))(v23, *MEMORY[0x277D85200], v19, v21);
  v30 = v29;
  LOBYTE(v29) = sub_246091B24();
  (*(v20 + 8))(v23, v19);
  if (v29)
  {
    v31 = sub_245FA32CC();
    v32 = *(v12 + 16);
    v103 = v31;
    v102 = v32;
    (v32)(v18);
    v33 = sub_2460918D4();
    v34 = sub_246091FC4();
    v35 = os_log_type_enabled(v33, v34);
    v36 = v12;
    v100 = v12 + 16;
    if (v35)
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v112.columns[0].i64[0] = v38;
      *v37 = 136380675;
      *(v37 + 4) = sub_245F8D3C0(0xD000000000000018, 0x800000024609F340, &v112);
      _os_log_impl(&dword_245F8A000, v33, v34, "MeshManager.%{private}s: Refining all mesh anchors...", v37, 0xCu);
      sub_245F8E6F4(v38);
      MEMORY[0x24C1989D0](v38, -1, -1);
      MEMORY[0x24C1989D0](v37, -1, -1);
    }

    v39 = *(v36 + 8);
    v39(v18, v11);
    v40 = v109;
    v41 = (v109 + OBJC_IVAR____TtC6CoreOC19FreeformMeshManager_backgroundData);
    swift_beginAccess();
    v101 = v41;
    if (*(v41[1] + 16))
    {
      goto LABEL_48;
    }

    v111 = 1;
    v98 = v11;
    v97 = v36;
    if (v107.i8[0])
    {
      v107.i64[0] = 0;
      v42 = 0uLL;
      v43 = v111;
      v44 = 0uLL;
      v45 = 0uLL;
      v46 = 0uLL;
    }

    else
    {
      v47.i64[0] = v96.i64[0];
      v47.i64[1] = v91;
      v87 = v47;
      v47.i64[0] = v94.i64[0];
      v47.i64[1] = v90;
      v86[2] = v47;
      v47.i64[0] = v93.i64[0];
      v47.i64[1] = v89;
      v86[1] = v47;
      v47.i64[0] = v92;
      v47.i64[1] = v88;
      v86[0] = v47;
      v110[1] = v91;
      v110[0] = v96.i64[0];
      v110[2] = v94.i64[0];
      v110[3] = v90;
      v110[4] = v93.i64[0];
      v110[5] = v89;
      v110[6] = v92;
      v110[7] = v88;
      OCBoundingBox.scale(_:)(&v112, *(v40 + OBJC_IVAR____TtC6CoreOC19FreeformMeshManager_kScaleFactorForBoundingBoxMeshIntersection));
      v107 = v112.columns[0];
      v96 = v112.columns[1];
      v94 = v112.columns[2];
      v93 = v112.columns[3];
      type metadata accessor for MeshUtils.AABB();
      v112.columns[0] = v107;
      v112.columns[1] = v96;
      v112.columns[2] = v94;
      v112.columns[3] = v93;
      v107.i64[0] = sub_245FA0068();
      *v42.i64 = sub_2460214C8(v87);
      v43 = 0;
      v112.columns[0].i8[0] = 0;
    }

    v112.columns[0] = v42;
    v112.columns[1] = v44;
    v112.columns[2] = v45;
    v112.columns[3] = v46;
    v113 = v43;
    v48 = 1 << *(v24 + 32);
    v49 = -1;
    if (v48 < 64)
    {
      v49 = ~(-1 << v48);
    }

    v50 = v49 & *(v24 + 64);
    v51 = (v48 + 63) >> 6;

    v94.i64[0] = 0;
    v52 = 0;
    while (v50)
    {
LABEL_16:
      v54 = __clz(__rbit64(v50));
      v50 &= v50 - 1;
      sub_245FA2954(*(v24 + 56) + *(v108 + 72) * (v54 | (v52 << 6)), v10);
      v55 = sub_245FBC8B0(v10, v107.i64[0], &v112);
      sub_245FC5600(v10, type metadata accessor for ObjectCaptureSession.Mesh.Anchor);
      if (v55 != 2 && (v55 & 1) != 0)
      {
        v56 = __OFADD__(v94.i64[0]++, 1);
        if (v56)
        {
          __break(1u);
LABEL_21:
          v96.i64[0] = v39;

          v57 = *v101;
          v58 = *v101 + 64;
          v59 = 1 << *(*v101 + 32);
          v60 = -1;
          if (v59 < 64)
          {
            v60 = ~(-1 << v59);
          }

          v61 = v60 & *(*v101 + 64);
          v62 = (v59 + 63) >> 6;
          v63 = (v108 + 56);

          v64 = 0;
          while (v61)
          {
LABEL_30:
            v67 = __clz(__rbit64(v61));
            v61 &= v61 - 1;
            v68 = *(v108 + 72);
            v69 = v104;
            sub_245FA2954(*(v57 + 56) + v68 * (v67 | (v64 << 6)), v104);
            sub_245FC559C(v69, v5);
            if (*(v24 + 16) && (v70 = sub_245FC1BDC(v5), (v71 & 1) != 0))
            {
              v65 = v106;
              sub_245FA2954(*(v24 + 56) + v70 * v68, v106);
              sub_245FC5600(v5, type metadata accessor for ObjectCaptureSession.Mesh.Anchor);
              (*v63)(v65, 0, 1, v105);
              sub_245F8E744(v65, &qword_27EE3A308, "lM");
            }

            else
            {
              v72 = v106;
              (*v63)(v106, 1, 1, v105);
              sub_245F8E744(v72, &qword_27EE3A308, "lM");
              v73 = sub_245FBC8B0(v5, v107.i64[0], &v112);
              sub_245FC5600(v5, type metadata accessor for ObjectCaptureSession.Mesh.Anchor);
              if (v73 != 2 && (v73 & 1) != 0)
              {
                v56 = __OFADD__(v94.i64[0]++, 1);
                if (v56)
                {
                  __break(1u);
LABEL_37:

                  v74 = v98;
                  v75 = v99;
                  v76 = v96.i64[0];
                  if (v107.i64[0])
                  {
                    v77 = v95;
                    v102(v95, v103, v98);

                    v78 = sub_2460918D4();
                    v79 = sub_246091FC4();
                    if (os_log_type_enabled(v78, v79))
                    {
                      v80 = swift_slowAlloc();
                      v81 = swift_slowAlloc();
                      v110[0] = v81;
                      *v80 = 136381187;
                      *(v80 + 4) = sub_245F8D3C0(0xD000000000000018, 0x800000024609F340, v110);
                      *(v80 + 12) = 2050;
                      *(v80 + 14) = v94.i64[0];
                      *(v80 + 22) = 2050;
                      *(v80 + 24) = *(*v101 + 16);

                      _os_log_impl(&dword_245F8A000, v78, v79, "MeshManager.%{private}s: %{public}ld/%{public}ld all mesh anchors intersect with bounding box.", v80, 0x20u);
                      sub_245F8E6F4(v81);
                      MEMORY[0x24C1989D0](v81, -1, -1);
                      MEMORY[0x24C1989D0](v80, -1, -1);
                    }

                    else
                    {
                    }

                    v76(v77, v74);
                  }

                  v102(v75, v103, v74);
                  v82 = sub_2460918D4();
                  v83 = sub_246091FC4();
                  if (os_log_type_enabled(v82, v83))
                  {
                    v84 = swift_slowAlloc();
                    v85 = swift_slowAlloc();
                    v110[0] = v85;
                    *v84 = 136380675;
                    *(v84 + 4) = sub_245F8D3C0(0xD000000000000018, 0x800000024609F340, v110);
                    _os_log_impl(&dword_245F8A000, v82, v83, "MeshManager.%{private}s: Finished refining all mesh anchors.", v84, 0xCu);
                    sub_245F8E6F4(v85);
                    MEMORY[0x24C1989D0](v85, -1, -1);
                    MEMORY[0x24C1989D0](v84, -1, -1);
                  }

                  v76(v75, v74);
                  return;
                }
              }
            }
          }

          while (1)
          {
            v66 = v64 + 1;
            if (__OFADD__(v64, 1))
            {
              goto LABEL_46;
            }

            if (v66 >= v62)
            {
              goto LABEL_37;
            }

            v61 = *(v58 + 8 * v66);
            ++v64;
            if (v61)
            {
              v64 = v66;
              goto LABEL_30;
            }
          }
        }
      }
    }

    while (1)
    {
      v53 = v52 + 1;
      if (__OFADD__(v52, 1))
      {
        break;
      }

      if (v53 >= v51)
      {
        goto LABEL_21;
      }

      v50 = *(v24 + 64 + 8 * v53);
      ++v52;
      if (v50)
      {
        v52 = v53;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_46:
    __break(1u);
  }

  __break(1u);
LABEL_48:
  __break(1u);
}

void sub_245FBC094(__int128 *a1)
{
  v3 = type metadata accessor for ObjectCaptureSession.Mesh.Anchor(0);
  v77 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2460918F4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v72 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v69 = &v61 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v61 - v12;
  v14 = sub_246091AF4();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = (&v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = a1[3];
  v87.columns[1] = a1[2];
  v87.columns[2] = v18;
  v87.columns[3] = a1[4];
  v88 = *(a1 + 80);
  v19 = a1[1];
  v86 = *a1;
  v87.columns[0] = v19;
  v78 = v1;
  v20 = *(v1 + 40);
  *v17 = v20;
  (*(v15 + 104))(v17, *MEMORY[0x277D85200], v14);
  v21 = v20;
  LOBYTE(v20) = sub_246091B24();
  (*(v15 + 8))(v17, v14);
  if (v20)
  {
    v22 = sub_245FA32CC();
    v75 = *(v7 + 16);
    v76 = v22;
    v75(v13);
    v23 = sub_2460918D4();
    v24 = sub_246091FC4();
    v25 = os_log_type_enabled(v23, v24);
    v73 = v7 + 16;
    if (v25)
    {
      v26 = swift_slowAlloc();
      v27 = v7;
      v28 = swift_slowAlloc();
      v79.i64[0] = v28;
      *v26 = 136380675;
      *(v26 + 4) = sub_245F8D3C0(0xD000000000000020, 0x800000024609F310, &v79);
      _os_log_impl(&dword_245F8A000, v23, v24, "MeshManager.%{private}s: Refining updated mesh anchors...", v26, 0xCu);
      sub_245F8E6F4(v28);
      v29 = v28;
      v7 = v27;
      MEMORY[0x24C1989D0](v29, -1, -1);
      MEMORY[0x24C1989D0](v26, -1, -1);

      v30 = v27;
    }

    else
    {

      v30 = v7;
    }

    v71 = *(v30 + 8);
    v71(v13, v6);
    v31 = v78 + OBJC_IVAR____TtC6CoreOC19FreeformMeshManager_backgroundData;
    swift_beginAccess();
    if (*(*(v31 + 8) + 16))
    {
      goto LABEL_32;
    }

    v83 = 1;
    v70 = v6;
    v74 = v7;
    if (v88)
    {
      v32 = 0;
      v33 = 0uLL;
      v34 = v83;
      v35 = 0uLL;
      v36 = 0uLL;
      v37 = 0uLL;
    }

    else
    {
      v84 = v87;
      v68 = v87.columns[0];
      v67 = v87.columns[1];
      v66 = v87.columns[2];
      v65 = v87.columns[3];
      OCBoundingBox.scale(_:)(&v79, *(v78 + OBJC_IVAR____TtC6CoreOC19FreeformMeshManager_kScaleFactorForBoundingBoxMeshIntersection));
      v63 = v80;
      v64 = v79;
      v61 = v82;
      v62 = v81;
      type metadata accessor for MeshUtils.AABB();
      v79 = v64;
      v80 = v63;
      v81 = v62;
      v82 = v61;
      v32 = sub_245FA0068();
      *v33.i64 = sub_2460214C8(v68);
      v34 = 0;
      v79.i8[0] = 0;
    }

    v84.columns[0] = v33;
    v84.columns[1] = v35;
    v84.columns[2] = v36;
    v84.columns[3] = v37;
    v85 = v34;
    v38 = v86;
    v39 = v86 + 64;
    v40 = 1 << *(v86 + 32);
    v41 = -1;
    if (v40 < 64)
    {
      v41 = ~(-1 << v40);
    }

    v42 = v41 & *(v86 + 64);
    v43 = (v40 + 63) >> 6;

    v68.i64[0] = 0;
    v44 = 0;
    while (v42)
    {
LABEL_17:
      v46 = __clz(__rbit64(v42));
      v42 &= v42 - 1;
      sub_245FA2954(*(v38 + 56) + *(v77 + 72) * (v46 | (v44 << 6)), v5);
      v47 = sub_245FBC8B0(v5, v32, &v84);
      sub_245FC5600(v5, type metadata accessor for ObjectCaptureSession.Mesh.Anchor);
      if (v47 != 2 && (v47 & 1) != 0 && __OFADD__(v68.i64[0]++, 1))
      {
        __break(1u);
LABEL_22:

        v49 = v70;
        v50 = v71;
        if (v32)
        {
          v51 = v69;
          (v75)(v69, v76, v70);
          sub_245FC5660(&v86, &v79);
          v52 = sub_2460918D4();
          v53 = sub_246091FC4();
          if (os_log_type_enabled(v52, v53))
          {
            v54 = swift_slowAlloc();
            v55 = swift_slowAlloc();
            v79.i64[0] = v55;
            *v54 = 136381187;
            *(v54 + 4) = sub_245F8D3C0(0xD000000000000020, 0x800000024609F310, &v79);
            *(v54 + 12) = 2050;
            *(v54 + 14) = v68.i64[0];
            *(v54 + 22) = 2050;
            *(v54 + 24) = *(v38 + 16);
            sub_245FC5698(&v86);
            _os_log_impl(&dword_245F8A000, v52, v53, "MeshManager.%{private}s: %{public}ld/%{public}ld updated mesh anchors intersect with bounding box.", v54, 0x20u);
            sub_245F8E6F4(v55);
            MEMORY[0x24C1989D0](v55, -1, -1);
            MEMORY[0x24C1989D0](v54, -1, -1);
          }

          else
          {
            sub_245FC5698(&v86);
          }

          v50(v51, v49);
        }

        v56 = v72;
        (v75)(v72, v76, v49);
        v57 = sub_2460918D4();
        v58 = sub_246091FC4();
        if (os_log_type_enabled(v57, v58))
        {
          v59 = swift_slowAlloc();
          v60 = swift_slowAlloc();
          v79.i64[0] = v60;
          *v59 = 136380675;
          *(v59 + 4) = sub_245F8D3C0(0xD000000000000020, 0x800000024609F310, &v79);
          _os_log_impl(&dword_245F8A000, v57, v58, "MeshManager.%{private}s: Finished refining updated mesh anchors.", v59, 0xCu);
          sub_245F8E6F4(v60);
          MEMORY[0x24C1989D0](v60, -1, -1);
          MEMORY[0x24C1989D0](v59, -1, -1);
        }

        v50(v56, v49);
        return;
      }
    }

    while (1)
    {
      v45 = v44 + 1;
      if (__OFADD__(v44, 1))
      {
        break;
      }

      if (v45 >= v43)
      {
        goto LABEL_22;
      }

      v42 = *(v39 + 8 * v45);
      ++v44;
      if (v42)
      {
        v44 = v45;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_32:
  __break(1u);
}

uint64_t sub_245FBC8B0(char *a1, uint64_t a2, simd_float4x4 *a3)
{
  v4 = v3;
  v97 = sub_246091834();
  v94 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v93 = &v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v92 = &v87 - v10;
  v11 = sub_2460918F4();
  v99 = *(v11 - 8);
  v100 = v11;
  MEMORY[0x28223BE20](v11);
  v98 = &v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v96 = &v87 - v14;
  v15 = sub_245F8E624(&qword_27EE3A308, "lM");
  MEMORY[0x28223BE20](v15 - 8);
  v91 = &v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v87 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v87 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v87 - v24;
  v26 = type metadata accessor for ObjectCaptureSession.Mesh.Anchor(0);
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v95 = &v87 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v90 = &v87 - v30;
  MEMORY[0x28223BE20](v31);
  v33 = &v87 - v32;
  if (a2 && (a3[1].columns[0].i8[0] & 1) == 0)
  {
    v103 = __invert_f4(*a3);
    v38 = &a1[*(v26 + 36)];
    v39 = *v38[2].f32;
    v40 = *v38[4].f32;
    v41 = *v38[6].f32;
    v101 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v103.columns[0], COERCE_FLOAT(*v38->f32)), v103.columns[1], *v38, 1), v103.columns[2], *v38->f32, 2), v103.columns[3], *v38->f32, 3);
    v89 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v103.columns[0], v39.f32[0]), v103.columns[1], *v39.f32, 1), v103.columns[2], v39, 2), v103.columns[3], v39, 3);
    v88 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v103.columns[0], v40.f32[0]), v103.columns[1], *v40.f32, 1), v103.columns[2], v40, 2), v103.columns[3], v40, 3);
    v87 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v103.columns[0], v41.f32[0]), v103.columns[1], *v41.f32, 1), v103.columns[2], v41, 2), v103.columns[3], v41, 3);

    sub_245FA00F4(a1, v101, v89, v88, v87);
    v43 = v42;

    sub_245FA2954(a1, v33);
    if (v43 <= 0.0)
    {
      sub_245FC5600(v33, type metadata accessor for ObjectCaptureSession.Mesh.Anchor);
      return 2;
    }
  }

  else
  {
    sub_245FA2954(a1, &v87 - v32);
  }

  v101.i64[0] = v33;
  type metadata accessor for Util.Timer(0);
  v34 = sub_246025FB8();
  (*(*v34 + 144))();
  v35 = (v4 + OBJC_IVAR____TtC6CoreOC19FreeformMeshManager_backgroundData);
  swift_beginAccess();
  if (v35[32] == 1 && *&a1[*(v26 + 32)])
  {
    sub_245FBD484(a1, v25);
    sub_245FC5600(v101.i64[0], type metadata accessor for ObjectCaptureSession.Mesh.Anchor);
    if ((*(v27 + 48))(v25, 1, v26) == 1)
    {

      v36 = v25;
LABEL_10:
      sub_245F8E744(v36, &qword_27EE3A308, "lM");
      return 0;
    }
  }

  else
  {
    sub_245FBF7FC(a1, v22);
    sub_245FC5600(v101.i64[0], type metadata accessor for ObjectCaptureSession.Mesh.Anchor);
    if ((*(v27 + 48))(v22, 1, v26) == 1)
    {

      v36 = v22;
      goto LABEL_10;
    }

    v25 = v22;
  }

  sub_245FC559C(v25, v101.i64[0]);
  v44 = *v35;
  v45 = v100;
  if (*(*v35 + 16))
  {
    v46 = sub_245FC1BDC(a1);
    if (v47)
    {
      sub_245FA2954(*(v44 + 56) + *(v27 + 72) * v46, v19);
      v48 = *(v27 + 56);
      v88.i64[0] = (v27 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
      v89.i64[0] = v48;
      v48(v19, 0, 1, v26);
      sub_245F8E744(v19, &qword_27EE3A308, "lM");
LABEL_20:
      v65 = v97;
      goto LABEL_21;
    }
  }

  v49 = *(v27 + 56);
  v88.i64[0] = (v27 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v89.i64[0] = v49;
  v49(v19, 1, 1, v26);
  sub_245F8E744(v19, &qword_27EE3A308, "lM");
  v50 = sub_245FA32CC();
  v51 = v99;
  v52 = v96;
  (*(v99 + 16))(v96, v50, v45);
  v53 = v90;
  sub_245FA2954(a1, v90);
  v54 = sub_2460918D4();
  v55 = sub_246091FC4();
  if (!os_log_type_enabled(v54, v55))
  {

    sub_245FC5600(v53, type metadata accessor for ObjectCaptureSession.Mesh.Anchor);
    (*(v51 + 8))(v52, v45);
    goto LABEL_20;
  }

  v56 = v53;
  v57 = swift_slowAlloc();
  v87.i64[0] = swift_slowAlloc();
  v102[0] = v87.i64[0];
  *v57 = 136380931;
  *(v57 + 4) = sub_245F8D3C0(0xD000000000000023, 0x800000024609F2E0, v102);
  *(v57 + 12) = 2082;
  sub_245FC59D0(&unk_27EE3A310, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v58 = v56;
  v59 = sub_2460923D4();
  v61 = v60;
  sub_245FC5600(v58, type metadata accessor for ObjectCaptureSession.Mesh.Anchor);
  v62 = sub_245F8D3C0(v59, v61, v102);

  *(v57 + 14) = v62;
  _os_log_impl(&dword_245F8A000, v54, v55, "MeshManager.%{private}s: Adding mesh anchor %{public}s after refinement", v57, 0x16u);
  v63 = v87.i64[0];
  swift_arrayDestroy();
  MEMORY[0x24C1989D0](v63, -1, -1);
  v64 = v57;
  v65 = v97;
  MEMORY[0x24C1989D0](v64, -1, -1);

  (*(v99 + 8))(v96, v100);
LABEL_21:
  v66 = v94;
  v67 = *(v94 + 16);
  v68 = v92;
  v67(v92, a1, v65);
  v69 = v91;
  sub_245FA2954(v101.i64[0], v91);
  (v89.i64[0])(v69, 0, 1, v26);
  swift_beginAccess();
  sub_245FB40C8(v69, v68);
  v70 = v93;
  v67(v93, a1, v65);
  sub_245FC3364(v68, v70);
  (*(v66 + 8))(v68, v65);
  v71 = swift_endAccess();
  (*(*v34 + 152))(v71);
  v72 = sub_245FA32CC();
  v73 = v98;
  v74 = v99;
  v75 = v100;
  (*(v99 + 16))(v98, v72, v100);
  v76 = v95;
  sub_245FA2954(a1, v95);

  v77 = sub_2460918D4();
  v78 = sub_246091FA4();

  if (os_log_type_enabled(v77, v78))
  {
    v79 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    v102[0] = v80;
    *v79 = 136381187;
    *(v79 + 4) = sub_245F8D3C0(0xD000000000000023, 0x800000024609F2E0, v102);
    *(v79 + 12) = 2082;
    sub_245FC59D0(&unk_27EE3A310, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v81 = sub_2460923D4();
    v82 = v76;
    v84 = v83;
    sub_245FC5600(v82, type metadata accessor for ObjectCaptureSession.Mesh.Anchor);
    v85 = sub_245F8D3C0(v81, v84, v102);

    *(v79 + 14) = v85;
    *(v79 + 22) = 2048;
    *(v79 + 24) = (*(*v34 + 176))(v86);
    _os_log_impl(&dword_245F8A000, v77, v78, "MeshManager.%{private}s: Refine mesh anchor %{public}s took %f ms", v79, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C1989D0](v80, -1, -1);
    MEMORY[0x24C1989D0](v79, -1, -1);

    (*(v74 + 8))(v98, v75);
  }

  else
  {

    sub_245FC5600(v76, type metadata accessor for ObjectCaptureSession.Mesh.Anchor);
    (*(v74 + 8))(v73, v75);
  }

  sub_245FC5600(v101.i64[0], type metadata accessor for ObjectCaptureSession.Mesh.Anchor);
  return 1;
}

void sub_245FBD484(char *a1@<X0>, uint64_t a2@<X8>)
{
  v274 = a1;
  v268 = a2;
  v282[3] = *MEMORY[0x277D85DE8];
  v3 = sub_245F8E624(&qword_27EE3A308, "lM");
  MEMORY[0x28223BE20](v3 - 8);
  v253 = &v246 - v4;
  v276 = type metadata accessor for ObjectCaptureSession.Mesh.Anchor(0);
  v273 = *(v276 - 1);
  MEMORY[0x28223BE20](v276);
  v267 = &v246 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v266 = &v246 - v7;
  MEMORY[0x28223BE20](v8);
  v264 = &v246 - v9;
  MEMORY[0x28223BE20](v10);
  v263 = &v246 - v11;
  MEMORY[0x28223BE20](v12);
  v260.n128_u64[0] = &v246 - v13;
  MEMORY[0x28223BE20](v14);
  v258.n128_u64[0] = &v246 - v15;
  MEMORY[0x28223BE20](v16);
  v252 = &v246 - v17;
  MEMORY[0x28223BE20](v18);
  v250 = &v246 - v19;
  MEMORY[0x28223BE20](v20);
  v249 = &v246 - v21;
  MEMORY[0x28223BE20](v22);
  v248 = &v246 - v23;
  MEMORY[0x28223BE20](v24);
  v255 = &v246 - v25;
  MEMORY[0x28223BE20](v26);
  v277 = &v246 - v27;
  MEMORY[0x28223BE20](v28);
  v30 = &v246 - v29;
  v31 = sub_2460918F4();
  v278 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v269 = &v246 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v275 = &v246 - v34;
  MEMORY[0x28223BE20](v35);
  v265 = &v246 - v36;
  MEMORY[0x28223BE20](v37);
  v262 = &v246 - v38;
  MEMORY[0x28223BE20](v39);
  v259.n128_u64[0] = &v246 - v40;
  MEMORY[0x28223BE20](v41);
  v257.n128_u64[0] = &v246 - v42;
  MEMORY[0x28223BE20](v43);
  v254 = &v246 - v44;
  MEMORY[0x28223BE20](v45);
  v251 = &v246 - v46;
  MEMORY[0x28223BE20](v47);
  v247 = &v246 - v48;
  MEMORY[0x28223BE20](v49);
  v51 = &v246 - v50;
  MEMORY[0x28223BE20](v52);
  v54 = &v246 - v53;
  v55 = sub_246091AF4();
  v56 = *(v55 - 8);
  v57 = MEMORY[0x28223BE20](v55);
  v59 = (&v246 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0));
  v261.n128_u64[0] = v2;
  v60 = *(v2 + 40);
  *v59 = v60;
  (*(v56 + 104))(v59, *MEMORY[0x277D85200], v55, v57);
  v61 = v60;
  v62 = sub_246091B24();
  (*(v56 + 8))(v59, v55);
  if ((v62 & 1) == 0)
  {
    __break(1u);
    goto LABEL_58;
  }

  v246 = v51;
  v63 = sub_245FA32CC();
  v64 = *(v278 + 16);
  v270 = v63;
  v271 = v64;
  v272 = v278 + 16;
  (v64)(v54);
  v65 = v274;
  sub_245FA2954(v274, v30);
  sub_245FA2954(v65, v277);
  v66 = sub_2460918D4();
  v67 = sub_246091FA4();
  v68 = v31;
  if (os_log_type_enabled(v66, v67))
  {
    v69 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    v256.n128_u64[0] = v68;
    v71 = v70;
    v282[0] = v70;
    *v69 = 136381187;
    *(v69 + 4) = sub_245F8D3C0(0xD000000000000014, 0x800000024609F2C0, v282);
    *(v69 + 12) = 2082;
    sub_246091834();
    sub_245FC59D0(&unk_27EE3A310, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v72 = sub_2460923D4();
    v74 = v73;
    sub_245FC5600(v30, type metadata accessor for ObjectCaptureSession.Mesh.Anchor);
    v75 = sub_245F8D3C0(v72, v74, v282);

    *(v69 + 14) = v75;
    *(v69 + 22) = 2050;
    v76 = v277;
    v77 = [*&v277[v276[5]] count];
    sub_245FC5600(v76, type metadata accessor for ObjectCaptureSession.Mesh.Anchor);
    *(v69 + 24) = v77;
    _os_log_impl(&dword_245F8A000, v66, v67, "MeshManager.%{private}s: Mesh anchor %{public}s num vertices before densification = %{public}ld", v69, 0x20u);
    swift_arrayDestroy();
    v78 = v71;
    v68 = v256.n128_u64[0];
    MEMORY[0x24C1989D0](v78, -1, -1);
    MEMORY[0x24C1989D0](v69, -1, -1);
  }

  else
  {
    sub_245FC5600(v277, type metadata accessor for ObjectCaptureSession.Mesh.Anchor);

    sub_245FC5600(v30, type metadata accessor for ObjectCaptureSession.Mesh.Anchor);
  }

  v277 = *(v278 + 8);
  (v277)(v54, v68);
  v79 = v269;
  v80 = sub_245F9EB34(v65);
  v81 = v275;
  if (v80)
  {
    v82 = v80;
    v83 = [objc_allocWithZone(MEMORY[0x277D0AE70]) init];
    LODWORD(v84) = 0.5;
    [v83 setRatio_];
    [v83 setIterations_];
    v85 = v82;
    if (!GESSAlgSplitLongEdges())
    {

      v271(v81, v270, v68);
      v149 = v65;
      v150 = v266;
      sub_245FA2954(v149, v266);
      v151 = sub_2460918D4();
      v152 = sub_246091FB4();
      if (os_log_type_enabled(v151, v152))
      {
        v153 = swift_slowAlloc();
        v154 = swift_slowAlloc();
        v282[0] = v154;
        *v153 = 136380931;
        *(v153 + 4) = sub_245F8D3C0(0xD000000000000014, 0x800000024609F2C0, v282);
        *(v153 + 12) = 2082;
        sub_246091834();
        sub_245FC59D0(&unk_27EE3A310, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v155 = sub_2460923D4();
        v157 = v156;
        sub_245FC5600(v150, type metadata accessor for ObjectCaptureSession.Mesh.Anchor);
        v158 = sub_245F8D3C0(v155, v157, v282);

        *(v153 + 14) = v158;
        _os_log_impl(&dword_245F8A000, v151, v152, "MeshManager.%{private}s: Failed to densify mesh anchor %{public}s - failed to subdivide mesh!", v153, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x24C1989D0](v154, -1, -1);
        MEMORY[0x24C1989D0](v153, -1, -1);

        v159 = v275;
      }

      else
      {

        sub_245FC5600(v150, type metadata accessor for ObjectCaptureSession.Mesh.Anchor);
        v159 = v81;
      }

      goto LABEL_38;
    }

    v86 = [v85 vertexSize];
    v87 = 3 * v86;
    if ((v87 & 0xFFFFFFFF00000000) == 0)
    {
      v88 = v87;
      v89 = 12 * v86;
      v90 = swift_slowAlloc();
      if ([v85 getPositions:v90 size:v88])
      {
        v269 = v83;
        v275 = [objc_allocWithZone(MEMORY[0x277CBEB28]) initWithBytesNoCopy:v90 length:v89 freeWhenDone:1];
        v91 = swift_slowAlloc();
        if ([v85 getVertexColors:v91 size:v88])
        {
          v267 = [objc_allocWithZone(MEMORY[0x277CBEB28]) initWithBytesNoCopy:v91 length:v89 freeWhenDone:1];
          v92 = [v85 vertexNormalSize];

          v93 = 3 * v92;
          if ((v93 & 0xFFFFFFFF00000000) == 0)
          {
            v94 = v93;
            v95 = 12 * v92;
            v96 = swift_slowAlloc();
            v266 = v85;
            if ([v85 getVertexNormals:v96 size:v94])
            {
              v97 = [objc_allocWithZone(MEMORY[0x277CBEB28]) initWithBytesNoCopy:v96 length:v95 freeWhenDone:1];
              v98 = [objc_allocWithZone(MEMORY[0x277CBEB28]) init];
              v99 = [objc_allocWithZone(MEMORY[0x277CBEB28]) init];
              v100 = [objc_allocWithZone(MEMORY[0x277CBEB28]) init];
              v101 = [objc_allocWithZone(MEMORY[0x277D0AE78]) init];
              v102 = v261.n128_u64[0];
              v103 = v261.n128_u64[0] + OBJC_IVAR____TtC6CoreOC19FreeformMeshManager_backgroundData;
              swift_beginAccess();
              LODWORD(v104) = *(v103 + 56);
              [v101 setVoxelSize_];
              v280 = v99;
              v281 = v98;
              v279 = v100;
              v262 = v97;
              v263 = v101;
              LODWORD(v101) = GESSAlgVertexClusterDownsample();
              v105 = v279;

              v265 = v280;
              v106 = v281;

              v264 = v106;
              if (!v101)
              {
                v194 = v257.n128_u64[0];
                v271(v257.n128_u64[0], v270, v68);
                v195 = v258.n128_u64[0];
                sub_245FA2954(v274, v258.n128_i64[0]);
                v196 = sub_2460918D4();
                v197 = sub_246091FB4();
                if (os_log_type_enabled(v196, v197))
                {
                  v198 = swift_slowAlloc();
                  v199 = v194;
                  v200 = swift_slowAlloc();
                  v281 = v200;
                  *v198 = 136380931;
                  *(v198 + 4) = sub_245F8D3C0(0xD000000000000014, 0x800000024609F2C0, &v281);
                  *(v198 + 12) = 2082;
                  sub_246091834();
                  v274 = v105;
                  sub_245FC59D0(&unk_27EE3A310, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
                  v201 = sub_2460923D4();
                  v203 = v202;
                  sub_245FC5600(v195, type metadata accessor for ObjectCaptureSession.Mesh.Anchor);
                  v204 = sub_245F8D3C0(v201, v203, &v281);
                  v105 = v274;

                  *(v198 + 14) = v204;
                  _os_log_impl(&dword_245F8A000, v196, v197, "MeshManager.%{private}s: Failed to densify mesh anchor\n%{public}s - failed to vertex cluster mesh!", v198, 0x16u);
                  swift_arrayDestroy();
                  MEMORY[0x24C1989D0](v200, -1, -1);
                  MEMORY[0x24C1989D0](v198, -1, -1);

                  v205 = v199;
                }

                else
                {

                  sub_245FC5600(v195, type metadata accessor for ObjectCaptureSession.Mesh.Anchor);
                  v205 = v194;
                }

                (v277)(v205, v68);
                (*(v273 + 56))(v268, 1, 1, v276);
                goto LABEL_55;
              }

              v107 = [v106 length];
              v108 = [v265 length];
              v109 = __OFADD__(v107, v108);
              v110 = &v108[v107];
              if (!v109)
              {
                v111 = [v105 length];
                v109 = __OFADD__(v110, v111);
                v112 = &v111[v110];
                if (!v109)
                {
                  v113 = *(**(v102 + 104) + 280);

                  v114 = v113(v112);

                  if ((v114 & 1) == 0)
                  {
                    v206 = v251;
                    v271(v251, v270, v68);
                    v207 = v252;
                    sub_245FA2954(v274, v252);
                    v208 = sub_2460918D4();
                    v209 = sub_246091FB4();
                    if (os_log_type_enabled(v208, v209))
                    {
                      v210 = v206;
                      v211 = swift_slowAlloc();
                      v212 = swift_slowAlloc();
                      v274 = v105;
                      v213 = v212;
                      v281 = v212;
                      *v211 = 136380931;
                      *(v211 + 4) = sub_245F8D3C0(0xD000000000000014, 0x800000024609F2C0, &v281);
                      *(v211 + 12) = 2082;
                      sub_246091834();
                      v256.n128_u64[0] = v68;
                      sub_245FC59D0(&unk_27EE3A310, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
                      v214 = sub_2460923D4();
                      v216 = v215;
                      sub_245FC5600(v207, type metadata accessor for ObjectCaptureSession.Mesh.Anchor);
                      v217 = sub_245F8D3C0(v214, v216, &v281);
                      v68 = v256.n128_u64[0];

                      *(v211 + 14) = v217;
                      _os_log_impl(&dword_245F8A000, v208, v209, "MeshManager.%{private}s: Failed to copy densify mesh anchor %{public}s. Heap full!", v211, 0x16u);
                      swift_arrayDestroy();
                      v218 = v213;
                      v105 = v274;
                      MEMORY[0x24C1989D0](v218, -1, -1);
                      MEMORY[0x24C1989D0](v211, -1, -1);

                      v219 = v210;
                    }

                    else
                    {

                      sub_245FC5600(v207, type metadata accessor for ObjectCaptureSession.Mesh.Anchor);
                      v219 = v206;
                    }

                    (v277)(v219, v68);
                    v237 = v269;
                    v236 = v270;
                    v238 = v254;
                    *(v103 + 72) = 1;
                    v271(v238, v236, v68);
                    v239 = sub_2460918D4();
                    v240 = sub_246091F94();
                    if (os_log_type_enabled(v239, v240))
                    {
                      v241 = swift_slowAlloc();
                      v242 = swift_slowAlloc();
                      v281 = v242;
                      *v241 = 136380675;
                      *(v241 + 4) = sub_245F8D3C0(0xD000000000000014, 0x800000024609F2C0, &v281);
                      _os_log_impl(&dword_245F8A000, v239, v240, "MeshManager.%{private}s: Trigerring all mesh anchor refinement in the next update.", v241, 0xCu);
                      sub_245F8E6F4(v242);
                      MEMORY[0x24C1989D0](v242, -1, -1);
                      MEMORY[0x24C1989D0](v241, -1, -1);

                      v243 = &v283;
                    }

                    else
                    {

                      v243 = &v284;
                    }

                    (v277)(v238, v68);
                    v244 = v264;
                    (*(v273 + 56))(v268, 1, 1, v276);

                    goto LABEL_56;
                  }

                  v115 = *(v102 + 104);
                  v116 = v276;
                  v117 = v276[10];
                  v118 = v274;
                  v119 = &v274[v276[9]];
                  v120 = v119[1];
                  v261 = *v119;
                  v260 = v120;
                  v121 = v119[3];
                  v259 = v119[2];
                  v258 = v121;
                  v122 = *&v274[v117];
                  v123 = v276[12];
                  v257 = *&v274[v276[11]];
                  v256 = *&v274[v123];

                  v124 = v253;
                  sub_245F9E1C4(v264, v265, v105, v115, v118, v253, v261, v260, v259, v258, v122, v257, v256);

                  if ((*(v273 + 48))(v124, 1, v116) == 1)
                  {
                    sub_245F8E744(v124, &qword_27EE3A308, "lM");
                    v125 = v247;
                    v271(v247, v270, v68);
                    v126 = v250;
                    sub_245FA2954(v118, v250);
                    v127 = sub_2460918D4();
                    v128 = sub_246091FB4();
                    if (os_log_type_enabled(v127, v128))
                    {
                      v129 = swift_slowAlloc();
                      v130 = swift_slowAlloc();
                      v281 = v130;
                      *v129 = 136380931;
                      *(v129 + 4) = sub_245F8D3C0(0xD000000000000014, 0x800000024609F2C0, &v281);
                      *(v129 + 12) = 2082;
                      sub_246091834();
                      v274 = v105;
                      sub_245FC59D0(&unk_27EE3A310, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
                      v131 = sub_2460923D4();
                      v133 = v132;
                      sub_245FC5600(v126, type metadata accessor for ObjectCaptureSession.Mesh.Anchor);
                      v134 = sub_245F8D3C0(v131, v133, &v281);
                      v105 = v274;

                      *(v129 + 14) = v134;
                      _os_log_impl(&dword_245F8A000, v127, v128, "MeshManager.%{private}s: Failed to densify mesh anchor\n%{public}s", v129, 0x16u);
                      swift_arrayDestroy();
                      MEMORY[0x24C1989D0](v130, -1, -1);
                      v135 = v129;
                      v116 = v276;
                      MEMORY[0x24C1989D0](v135, -1, -1);
                    }

                    else
                    {

                      sub_245FC5600(v126, type metadata accessor for ObjectCaptureSession.Mesh.Anchor);
                    }

                    (v277)(v125, v68);
                    (*(v273 + 56))(v268, 1, 1, v116);
                  }

                  else
                  {
                    v220 = v255;
                    sub_245FC559C(v124, v255);
                    v221 = v246;
                    v271(v246, v270, v68);
                    v222 = v248;
                    sub_245FA2954(v118, v248);
                    v223 = v249;
                    sub_245FA2954(v220, v249);
                    v224 = sub_2460918D4();
                    v225 = sub_246091FA4();
                    if (os_log_type_enabled(v224, v225))
                    {
                      v226 = swift_slowAlloc();
                      v227 = swift_slowAlloc();
                      v281 = v227;
                      *v226 = 136381187;
                      *(v226 + 4) = sub_245F8D3C0(0xD000000000000014, 0x800000024609F2C0, &v281);
                      *(v226 + 12) = 2082;
                      sub_246091834();
                      v274 = v105;
                      sub_245FC59D0(&unk_27EE3A310, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
                      v228 = sub_2460923D4();
                      v230 = v229;
                      v256.n128_u64[0] = v68;
                      sub_245FC5600(v222, type metadata accessor for ObjectCaptureSession.Mesh.Anchor);
                      v231 = sub_245F8D3C0(v228, v230, &v281);
                      v105 = v274;

                      *(v226 + 14) = v231;
                      *(v226 + 22) = 2050;
                      v232 = [*(v223 + v276[5]) count];
                      sub_245FC5600(v223, type metadata accessor for ObjectCaptureSession.Mesh.Anchor);
                      *(v226 + 24) = v232;
                      _os_log_impl(&dword_245F8A000, v224, v225, "MeshManager.%{private}s: Mesh anchor %{public}s num vertices after densification = %{public}ld", v226, 0x20u);
                      swift_arrayDestroy();
                      MEMORY[0x24C1989D0](v227, -1, -1);
                      v233 = v226;
                      v116 = v276;
                      MEMORY[0x24C1989D0](v233, -1, -1);

                      v234 = v221;
                      v235 = v256.n128_u64[0];
                    }

                    else
                    {
                      sub_245FC5600(v223, type metadata accessor for ObjectCaptureSession.Mesh.Anchor);

                      sub_245FC5600(v222, type metadata accessor for ObjectCaptureSession.Mesh.Anchor);
                      v234 = v221;
                      v235 = v68;
                    }

                    (v277)(v234, v235);
                    v245 = v268;
                    sub_245FC559C(v255, v268);
                    (*(v273 + 56))(v245, 0, 1, v116);
                  }

LABEL_55:

LABEL_56:
                  return;
                }

LABEL_61:
                __break(1u);
              }

LABEL_60:
              __break(1u);
              goto LABEL_61;
            }

            v160 = v259.n128_u64[0];
            v271(v259.n128_u64[0], v270, v68);
            v182 = v260.n128_u64[0];
            sub_245FA2954(v274, v260.n128_i64[0]);
            v183 = sub_2460918D4();
            v184 = sub_246091FB4();
            v185 = os_log_type_enabled(v183, v184);
            v186 = v275;
            if (v185)
            {
              v187 = v160;
              v188 = swift_slowAlloc();
              v189 = swift_slowAlloc();
              v282[0] = v189;
              *v188 = 136380931;
              *(v188 + 4) = sub_245F8D3C0(0xD000000000000014, 0x800000024609F2C0, v282);
              *(v188 + 12) = 2082;
              sub_246091834();
              sub_245FC59D0(&unk_27EE3A310, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
              v190 = sub_2460923D4();
              v192 = v191;
              sub_245FC5600(v182, type metadata accessor for ObjectCaptureSession.Mesh.Anchor);
              v193 = sub_245F8D3C0(v190, v192, v282);

              *(v188 + 14) = v193;
              _os_log_impl(&dword_245F8A000, v183, v184, "MeshManager.%{private}s: Failed to densify mesh anchor %{public}s - failed to get normals from tri mesh!", v188, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x24C1989D0](v189, -1, -1);
              MEMORY[0x24C1989D0](v188, -1, -1);

              v159 = v187;
              goto LABEL_38;
            }

            v181 = v182;
LABEL_37:
            sub_245FC5600(v181, type metadata accessor for ObjectCaptureSession.Mesh.Anchor);
            v159 = v160;
            goto LABEL_38;
          }

LABEL_59:
          __break(1u);
          goto LABEL_60;
        }

        v160 = v262;
        v271(v262, v270, v68);
        v171 = v263;
        sub_245FA2954(v274, v263);
        v172 = sub_2460918D4();
        v173 = sub_246091FB4();
        if (!os_log_type_enabled(v172, v173))
        {

          v181 = v171;
          goto LABEL_37;
        }

        v174 = v160;
        v175 = swift_slowAlloc();
        v176 = swift_slowAlloc();
        v282[0] = v176;
        *v175 = 136380931;
        *(v175 + 4) = sub_245F8D3C0(0xD000000000000014, 0x800000024609F2C0, v282);
        *(v175 + 12) = 2082;
        sub_246091834();
        sub_245FC59D0(&unk_27EE3A310, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v177 = sub_2460923D4();
        v179 = v178;
        sub_245FC5600(v171, type metadata accessor for ObjectCaptureSession.Mesh.Anchor);
        v180 = sub_245F8D3C0(v177, v179, v282);

        *(v175 + 14) = v180;
        _os_log_impl(&dword_245F8A000, v172, v173, "MeshManager.%{private}s: Failed to densify mesh anchor %{public}s - failed to get colors from tri mesh!", v175, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x24C1989D0](v176, -1, -1);
        MEMORY[0x24C1989D0](v175, -1, -1);

        v159 = v174;
      }

      else
      {

        v160 = v265;
        v271(v265, v270, v68);
        v161 = v65;
        v162 = v264;
        sub_245FA2954(v161, v264);
        v163 = sub_2460918D4();
        v164 = sub_246091FB4();
        if (!os_log_type_enabled(v163, v164))
        {

          v181 = v162;
          goto LABEL_37;
        }

        v165 = swift_slowAlloc();
        v166 = swift_slowAlloc();
        v282[0] = v166;
        *v165 = 136380931;
        *(v165 + 4) = sub_245F8D3C0(0xD000000000000014, 0x800000024609F2C0, v282);
        *(v165 + 12) = 2082;
        sub_246091834();
        sub_245FC59D0(&unk_27EE3A310, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v167 = sub_2460923D4();
        v169 = v168;
        sub_245FC5600(v162, type metadata accessor for ObjectCaptureSession.Mesh.Anchor);
        v170 = sub_245F8D3C0(v167, v169, v282);

        *(v165 + 14) = v170;
        _os_log_impl(&dword_245F8A000, v163, v164, "MeshManager.%{private}s: Failed to densify mesh anchor %{public}s - failed to get positions from tri mesh!", v165, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x24C1989D0](v166, -1, -1);
        MEMORY[0x24C1989D0](v165, -1, -1);

        v159 = v265;
      }

LABEL_38:
      (v277)(v159, v68);
      (*(v273 + 56))(v268, 1, 1, v276);
      return;
    }

LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v271(v79, v270, v68);
  v136 = v65;
  v137 = v267;
  sub_245FA2954(v136, v267);
  v138 = sub_2460918D4();
  v139 = sub_246091FB4();
  if (os_log_type_enabled(v138, v139))
  {
    v140 = swift_slowAlloc();
    v141 = v68;
    v142 = swift_slowAlloc();
    v282[0] = v142;
    *v140 = 136380931;
    *(v140 + 4) = sub_245F8D3C0(0xD000000000000014, 0x800000024609F2C0, v282);
    *(v140 + 12) = 2082;
    sub_246091834();
    sub_245FC59D0(&unk_27EE3A310, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v143 = sub_2460923D4();
    v145 = v144;
    sub_245FC5600(v137, type metadata accessor for ObjectCaptureSession.Mesh.Anchor);
    v146 = sub_245F8D3C0(v143, v145, v282);

    *(v140 + 14) = v146;
    _os_log_impl(&dword_245F8A000, v138, v139, "MeshManager.%{private}s: Failed to densify mesh anchor %{public}s", v140, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1989D0](v142, -1, -1);
    MEMORY[0x24C1989D0](v140, -1, -1);

    v147 = v79;
    v148 = v141;
  }

  else
  {

    sub_245FC5600(v137, type metadata accessor for ObjectCaptureSession.Mesh.Anchor);
    v147 = v79;
    v148 = v68;
  }

  (v277)(v147, v148);
  (*(v273 + 56))(v268, 1, 1, v276);
}

void sub_245FBF7FC(char *a1@<X0>, uint64_t a2@<X8>)
{
  v142 = a2;
  v152[3] = *MEMORY[0x277D85DE8];
  v146.n128_u64[0] = type metadata accessor for ObjectCaptureSession.Mesh.Anchor(0);
  v137 = *(v146.n128_u64[0] - 8);
  MEMORY[0x28223BE20](v146.n128_u64[0]);
  v134 = &v129 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v130 = &v129 - v6;
  MEMORY[0x28223BE20](v7);
  v147 = &v129 - v8;
  MEMORY[0x28223BE20](v9);
  v11 = &v129 - v10;
  v12 = sub_2460918F4();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v138 = &v129 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v132 = &v129 - v16;
  MEMORY[0x28223BE20](v17);
  v131 = &v129 - v18;
  MEMORY[0x28223BE20](v19);
  v148 = &v129 - v20;
  v21 = sub_246091AF4();
  v22 = *(v21 - 8);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = (&v129 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v143.n128_u64[0] = v2;
  v26 = *(v2 + 40);
  *v25 = v26;
  (*(v22 + 104))(v25, *MEMORY[0x277D85200], v21, v23);
  v27 = v26;
  v28 = sub_246091B24();
  (*(v22 + 8))(v25, v21);
  if ((v28 & 1) == 0)
  {
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v29 = sub_245FA32CC();
  v30 = *(v13 + 16);
  v139.n128_u64[0] = v29;
  v141.n128_u64[0] = v13 + 16;
  v140.n128_u64[0] = v30;
  v30(v148);
  sub_245FA2954(a1, v11);
  v145 = a1;
  sub_245FA2954(a1, v147);
  v31 = sub_2460918D4();
  v32 = sub_246091FA4();
  v33 = os_log_type_enabled(v31, v32);
  v144.n128_u64[0] = v12;
  v136 = v13;
  if (v33)
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v152[0] = v35;
    *v34 = 136381187;
    *(v34 + 4) = sub_245F8D3C0(0xD000000000000015, 0x800000024609F2A0, v152);
    *(v34 + 12) = 2082;
    sub_246091834();
    sub_245FC59D0(&unk_27EE3A310, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v36 = sub_2460923D4();
    v38 = v37;
    sub_245FC5600(v11, type metadata accessor for ObjectCaptureSession.Mesh.Anchor);
    v39 = sub_245F8D3C0(v36, v38, v152);

    *(v34 + 14) = v39;
    *(v34 + 22) = 2050;
    v40 = v146.n128_u64[0];
    v41 = v147;
    v42 = [*&v147[*(v146.n128_u64[0] + 20)] count];
    sub_245FC5600(v41, type metadata accessor for ObjectCaptureSession.Mesh.Anchor);
    *(v34 + 24) = v42;
    _os_log_impl(&dword_245F8A000, v31, v32, "MeshManager.%{private}s: Mesh anchor %{public}s num vertices before simplification = %{public}ld", v34, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C1989D0](v35, -1, -1);
    MEMORY[0x24C1989D0](v34, -1, -1);

    v43 = *(v13 + 8);
    v43(v148, v144.n128_u64[0]);
  }

  else
  {
    sub_245FC5600(v147, type metadata accessor for ObjectCaptureSession.Mesh.Anchor);

    sub_245FC5600(v11, type metadata accessor for ObjectCaptureSession.Mesh.Anchor);
    v43 = *(v13 + 8);
    v43(v148, v12);
    v40 = v146.n128_u64[0];
  }

  v44 = v145;
  v45 = *&v145[v40[5]];
  v46 = [v45 buffer];
  v47 = [v46 contents];
  v48 = v46;
  v49 = [v45 &selRef_encodeDouble_forKey_];
  if ((v49 * 3) >> 64 != (3 * v49) >> 63)
  {
    goto LABEL_30;
  }

  if ((3 * v49 - 0x2000000000000000) >> 62 != 3)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v135 = v43;
  v147 = [objc_allocWithZone(MEMORY[0x277CBEB28]) initWithBytesNoCopy:v47 length:12 * v49 freeWhenDone:0];
  v50 = *&v44[v40[6]];
  v51 = [v50 buffer];
  v52 = [v51 contents];
  v53 = v51;
  v54 = [v50 &selRef_encodeDouble_forKey_];
  if ((v54 * 3) >> 64 != (3 * v54) >> 63)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if ((3 * v54 - 0x2000000000000000) >> 62 != 3)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v148 = [objc_allocWithZone(MEMORY[0x277CBEB28]) initWithBytesNoCopy:v52 length:12 * v54 freeWhenDone:0];
  v55 = *&v44[v40[7]];
  v56 = [v55 buffer];
  v57 = [v56 contents];
  v58 = v56;
  v59 = [v55 &selRef_encodeDouble_forKey_];
  if ((v59 * 3) >> 64 != (3 * v59) >> 63)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if ((3 * v59 - 0x2000000000000000) >> 62 != 3)
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
  }

  v60 = [objc_allocWithZone(MEMORY[0x277CBEB28]) initWithBytesNoCopy:v57 length:12 * v59 freeWhenDone:0];
  v61 = [objc_allocWithZone(MEMORY[0x277CBEB28]) init];
  v62 = [objc_allocWithZone(MEMORY[0x277CBEB28]) init];
  v63 = [objc_allocWithZone(MEMORY[0x277CBEB28]) init];
  v64 = [objc_allocWithZone(MEMORY[0x277D0AE78]) init];
  v65 = v143.n128_u64[0];
  v66 = v143.n128_u64[0] + OBJC_IVAR____TtC6CoreOC19FreeformMeshManager_backgroundData;
  swift_beginAccess();
  LODWORD(v67) = *(v66 + 56);
  [v64 setVoxelSize_];
  v150 = v62;
  v151 = v61;
  v149 = v63;
  v68 = v147;
  v69 = GESSAlgVertexClusterDownsample();
  v70 = v149;

  v71 = v150;
  v72 = v151;

  if (!v69)
  {
    v143.n128_u64[0] = v71;
    v132 = v70;
    v90 = v60;
    v91 = v68;
    v92 = v138;
    v93 = v144.n128_u64[0];
    (v140.n128_u64[0])(v138, v139.n128_u64[0], v144.n128_u64[0]);
    v94 = v134;
    sub_245FA2954(v145, v134);
    v95 = sub_2460918D4();
    v96 = sub_246091FB4();
    if (os_log_type_enabled(v95, v96))
    {
      v97 = swift_slowAlloc();
      v133 = v72;
      v98 = v97;
      v99 = swift_slowAlloc();
      v151 = v99;
      *v98 = 136380931;
      *(v98 + 4) = sub_245F8D3C0(0xD000000000000015, 0x800000024609F2A0, &v151);
      *(v98 + 12) = 2082;
      sub_246091834();
      v100 = v94;
      sub_245FC59D0(&unk_27EE3A310, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v101 = sub_2460923D4();
      v103 = v102;
      sub_245FC5600(v100, type metadata accessor for ObjectCaptureSession.Mesh.Anchor);
      v104 = sub_245F8D3C0(v101, v103, &v151);

      *(v98 + 14) = v104;
      _os_log_impl(&dword_245F8A000, v95, v96, "MeshManager.%{private}s: Failed to simplify mesh anchor %{public}s", v98, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1989D0](v99, -1, -1);
      v105 = v98;
      v72 = v133;
      MEMORY[0x24C1989D0](v105, -1, -1);

      v106 = v138;
      v107 = v144.n128_u64[0];
    }

    else
    {

      sub_245FC5600(v94, type metadata accessor for ObjectCaptureSession.Mesh.Anchor);
      v106 = v92;
      v107 = v93;
    }

    v135(v106, v107);
    (*(v137 + 56))(v142, 1, 1, v146.n128_u64[0]);
    v70 = v132;
    goto LABEL_27;
  }

  v73 = [v72 length];
  v74 = [v71 length];
  v75 = __OFADD__(v73, v74);
  v76 = &v74[v73];
  if (v75)
  {
    goto LABEL_36;
  }

  v77 = [v70 length];
  v78 = &v77[v76];
  if (__OFADD__(v76, v77))
  {
    goto LABEL_37;
  }

  v133 = v72;
  v138 = v60;
  v79 = *(**(v65 + 104) + 280);

  v80 = v79(v78);

  if ((v80 & 1) == 0)
  {
    v143.n128_u64[0] = v71;
    v108 = v131;
    v109 = v144.n128_u64[0];
    (v140.n128_u64[0])(v131, v139.n128_u64[0], v144.n128_u64[0]);
    v110 = v130;
    sub_245FA2954(v145, v130);
    v111 = sub_2460918D4();
    v112 = sub_246091FB4();
    if (os_log_type_enabled(v111, v112))
    {
      v113 = swift_slowAlloc();
      v145 = swift_slowAlloc();
      v151 = v145;
      *v113 = 136380931;
      *(v113 + 4) = sub_245F8D3C0(0xD000000000000015, 0x800000024609F2A0, &v151);
      *(v113 + 12) = 2082;
      sub_246091834();
      v114 = v110;
      sub_245FC59D0(&unk_27EE3A310, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v115 = sub_2460923D4();
      v117 = v116;
      sub_245FC5600(v114, type metadata accessor for ObjectCaptureSession.Mesh.Anchor);
      v118 = sub_245F8D3C0(v115, v117, &v151);

      *(v113 + 14) = v118;
      _os_log_impl(&dword_245F8A000, v111, v112, "MeshManager.%{private}s: Failed to copy simplified mesh anchor %{public}s. Heap full!", v113, 0x16u);
      v119 = v145;
      swift_arrayDestroy();
      MEMORY[0x24C1989D0](v119, -1, -1);
      v120 = v113;
      v109 = v144.n128_u64[0];
      MEMORY[0x24C1989D0](v120, -1, -1);
    }

    else
    {

      sub_245FC5600(v110, type metadata accessor for ObjectCaptureSession.Mesh.Anchor);
    }

    v121 = v135;
    v135(v108, v109);
    v122 = v132;
    *(v66 + 72) = 1;
    (v140.n128_u64[0])(v122, v139.n128_u64[0], v109);
    v123 = sub_2460918D4();
    v124 = sub_246091F94();
    if (os_log_type_enabled(v123, v124))
    {
      v125 = swift_slowAlloc();
      v126 = v121;
      v127 = v109;
      v128 = swift_slowAlloc();
      v151 = v128;
      *v125 = 136380675;
      *(v125 + 4) = sub_245F8D3C0(0xD000000000000015, 0x800000024609F2A0, &v151);
      _os_log_impl(&dword_245F8A000, v123, v124, "MeshManager.%{private}s: Trigerring all mesh anchor simplification in the next update.", v125, 0xCu);
      sub_245F8E6F4(v128);
      MEMORY[0x24C1989D0](v128, -1, -1);
      MEMORY[0x24C1989D0](v125, -1, -1);

      v126(v122, v127);
    }

    else
    {

      v121(v122, v109);
    }

    (*(v137 + 56))(v142, 1, 1, v146.n128_u64[0]);
    v72 = v133;
LABEL_27:
    v89 = v143.n128_u64[0];
    goto LABEL_28;
  }

  v81 = *(v65 + 104);
  v82 = v145;
  v83 = *(v146.n128_u64[0] + 40);
  v84 = &v145[*(v146.n128_u64[0] + 36)];
  v85 = *v84;
  v143 = v84[1];
  v144 = v85;
  v86 = v84[3];
  v141 = v84[2];
  v140 = v86;
  v87 = *&v145[v83];
  v88 = *(v146.n128_u64[0] + 48);
  v146 = *&v145[*(v146.n128_u64[0] + 44)];
  v139 = *&v145[v88];

  v72 = v133;
  sub_245F9E1C4(v133, v71, v70, v81, v82, v142, v144, v143, v141, v140, v87, v146, v139);

  v89 = v138;
  v70 = v148;
LABEL_28:
}

void sub_245FC086C(__int128 *a1)
{
  v118 = sub_246091834();
  v141.i64[0] = *(v118 - 8);
  MEMORY[0x28223BE20](v118);
  v116 = &v106 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v115 = &v106 - v4;
  v5 = sub_245F8E624(&qword_27EE3A308, "lM");
  MEMORY[0x28223BE20](v5 - 8);
  v117 = &v106 - v6;
  v7 = type metadata accessor for ObjectCaptureSession.Mesh.Anchor(0);
  v8 = *(v7 - 8);
  v137 = v7;
  v138 = v8;
  MEMORY[0x28223BE20](v7);
  v114 = &v106 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v109 = &v106 - v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v106 - v13;
  MEMORY[0x28223BE20](v15);
  v136 = &v106 - v16;
  v17 = sub_2460918F4();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v106 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v121 = &v106 - v22;
  MEMORY[0x28223BE20](v23);
  v119 = &v106 - v24;
  MEMORY[0x28223BE20](v25);
  v27 = &v106 - v26;
  v28 = sub_246091AF4();
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v31 = (&v106 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = a1[3];
  v153 = a1[2];
  v154 = v32;
  v155 = a1[4];
  v156 = *(a1 + 80);
  v33 = a1[1];
  v151 = *a1;
  v152 = v33;
  v34 = *(v142.i64[0] + 40);
  *v31 = v34;
  (*(v29 + 104))(v31, *MEMORY[0x277D85200], v28);
  v35 = v34;
  LOBYTE(v34) = sub_246091B24();
  (*(v29 + 8))(v31, v28);
  if (v34)
  {
    v36 = sub_245FA32CC();
    v37 = *(v18 + 16);
    v128 = v36;
    v129 = v18 + 16;
    v127 = v37;
    (v37)(v27);
    v38 = sub_2460918D4();
    v39 = sub_246091FC4();
    v40 = os_log_type_enabled(v38, v39);
    v124 = v20;
    if (v40)
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v147.i64[0] = v42;
      *v41 = 136380675;
      *(v41 + 4) = sub_245F8D3C0(0xD000000000000026, 0x800000024609F270, &v147);
      _os_log_impl(&dword_245F8A000, v38, v39, "MeshManager.%{private}s: Processing updated mesh anchors without refinement...", v41, 0xCu);
      sub_245F8E6F4(v42);
      MEMORY[0x24C1989D0](v42, -1, -1);
      MEMORY[0x24C1989D0](v41, -1, -1);
    }

    v125 = *(v18 + 8);
    v125(v27, v17);
    v43 = v142.i64[0];
    v44 = v142.i64[0] + OBJC_IVAR____TtC6CoreOC19FreeformMeshManager_backgroundData;
    swift_beginAccess();
    v120 = v44;
    v45 = *(v44 + 8);
    v113 = v44 + 8;
    if (*(v45 + 16))
    {
      goto LABEL_43;
    }

    v46 = v156;
    v130 = v17;
    if (v156)
    {
      v47 = 0;
      v133 = 0u;
      v134 = 0u;
      v131 = 0u;
      v132 = 0u;
    }

    else
    {
      v143 = v152;
      v142 = v152;
      v144 = v153;
      v140 = v153;
      v139 = v154;
      v145 = v154;
      v146 = v155;
      v135 = v155;
      OCBoundingBox.scale(_:)(&v147, *(v43 + OBJC_IVAR____TtC6CoreOC19FreeformMeshManager_kScaleFactorForBoundingBoxMeshIntersection));
      v133 = v148;
      v134 = v147;
      v131 = v150;
      v132 = v149;
      type metadata accessor for MeshUtils.AABB();
      v147 = v134;
      v148 = v133;
      v149 = v132;
      v150 = v131;
      v47 = sub_245FA0068();
      *v48.i64 = sub_2460214C8(v142);
      v133 = v49;
      v134 = v48;
      v131 = v51;
      v132 = v50;
    }

    v52 = v151;
    v53 = v151 + 64;
    v54 = 1 << *(v151 + 32);
    v55 = -1;
    if (v54 < 64)
    {
      v55 = ~(-1 << v54);
    }

    v56 = v55 & *(v151 + 64);
    v57 = (v54 + 63) >> 6;
    if (v47)
    {
      v58 = v46;
    }

    else
    {
      v58 = 1;
    }

    LODWORD(v135) = v58;
    v126 = v18 + 8;
    v123 = "kMeshOverlapRemovalThreshold";
    v111 = (v141.i64[0] + 16);
    v112 = (v138 + 56);
    v110 = (v141.i64[0] + 8);

    v122 = 0;
    v59 = 0;
    *&v60 = 136380931;
    v108 = v60;
    while (1)
    {
      v61 = v59;
      if (!v56)
      {
        break;
      }

LABEL_19:
      v63 = __clz(__rbit64(v56));
      v56 &= v56 - 1;
      v64 = *(v138 + 72);
      v65 = v136;
      sub_245FA2954(*(v52 + 56) + v64 * (v63 | (v59 << 6)), v136);
      sub_245FC559C(v65, v14);
      if ((v135 & 1) != 0 || (v157.columns[1] = v133, v157.columns[0] = v134, v157.columns[3] = v131, v157.columns[2] = v132, v158 = __invert_f4(v157), v66 = &v14[*(v137 + 36)], v67 = *v66[4].f32, v68 = *v66[6].f32, v69 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v158.columns[0], COERCE_FLOAT(*v66->f32)), v158.columns[1], *v66, 1), v158.columns[2], *v66->f32, 2), v158.columns[3], *v66->f32, 3), v141 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v158.columns[0], COERCE_FLOAT(*v66[2].f32)), v158.columns[1], v66[2], 1), v158.columns[2], *v66[2].f32, 2), v158.columns[3], *v66[2].f32, 3), v142 = v69, v139 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v158.columns[0], v68.f32[0]), v158.columns[1], *v68.f32, 1), v158.columns[2], v68, 2), v158.columns[3], v68, 3), v140 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v158.columns[0], v67.f32[0]), v158.columns[1], *v67.f32, 1), v158.columns[2], v67, 2), v158.columns[3], v67, 3), , sub_245FA00F4(v14, v142, v141, v140, v139), v71 = v70, , v71 > 0.0))
      {
        v72 = *v120;
        v73 = *(*v120 + 16);
        v107 = v52;
        if (v73 && (v74 = sub_245FC1BDC(v14), (v75 & 1) != 0))
        {
          v76 = *(v72 + 56) + v74 * v64;
          v77 = v117;
          sub_245FA2954(v76, v117);
          (*v112)(v77, 0, 1, v137);
          sub_245F8E744(v77, &qword_27EE3A308, "lM");
        }

        else
        {
          v78 = v117;
          (*v112)(v117, 1, 1, v137);
          sub_245F8E744(v78, &qword_27EE3A308, "lM");
          v127(v119, v128, v130);
          v79 = v109;
          sub_245FA2954(v14, v109);
          v80 = sub_2460918D4();
          v81 = sub_246091FC4();
          if (os_log_type_enabled(v80, v81))
          {
            v82 = swift_slowAlloc();
            v141.i32[0] = v81;
            v83 = v82;
            v142.i64[0] = swift_slowAlloc();
            v147.i64[0] = v142.i64[0];
            *v83 = v108;
            *(v83 + 4) = sub_245F8D3C0(0xD000000000000026, v123 | 0x8000000000000000, &v147);
            *(v83 + 12) = 2082;
            sub_245FC59D0(&unk_27EE3A310, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
            *&v140 = v80;
            v139.i64[0] = sub_2460923D4();
            v85 = v84;
            sub_245FC5600(v79, type metadata accessor for ObjectCaptureSession.Mesh.Anchor);
            v86 = sub_245F8D3C0(v139.i64[0], v85, &v147);

            *(v83 + 14) = v86;
            v87 = v140;
            _os_log_impl(&dword_245F8A000, v140, v141.i8[0], "MeshManager.%{private}s: Adding mesh anchor %{public}s without refinement", v83, 0x16u);
            v88 = v142.i64[0];
            swift_arrayDestroy();
            MEMORY[0x24C1989D0](v88, -1, -1);
            MEMORY[0x24C1989D0](v83, -1, -1);
          }

          else
          {

            sub_245FC5600(v79, type metadata accessor for ObjectCaptureSession.Mesh.Anchor);
          }

          v125(v119, v130);
        }

        v89 = v114;
        sub_245FA2954(v14, v114);
        v90 = v120;
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v143.i64[0] = *v90;
        *v90 = 0x8000000000000000;
        sub_245FC2B28(v89, v14, isUniquelyReferenced_nonNull_native);
        *v90 = v143.i64[0];
        v92 = v116;
        v93 = v118;
        (*v111)(v116, v14, v118);
        v62 = v115;
        sub_245FC3364(v115, v92);
        (*v110)(v62, v93);
        swift_endAccess();
        sub_245FC5600(v14, type metadata accessor for ObjectCaptureSession.Mesh.Anchor);
        v94 = __OFADD__(v122++, 1);
        v52 = v107;
        if (v94)
        {
          __break(1u);
LABEL_32:

          v95 = v125;
          if (v47)
          {
            v96 = v121;
            v127(v121, v128, v62);
            sub_245FC5660(&v151, &v147);
            v97 = sub_2460918D4();
            v98 = sub_246091FC4();
            if (os_log_type_enabled(v97, v98))
            {
              v99 = swift_slowAlloc();
              v100 = swift_slowAlloc();
              v147.i64[0] = v100;
              *v99 = 136381187;
              *(v99 + 4) = sub_245F8D3C0(0xD000000000000026, v123 | 0x8000000000000000, &v147);
              *(v99 + 12) = 2050;
              *(v99 + 14) = v122;
              *(v99 + 22) = 2050;
              *(v99 + 24) = *(v52 + 16);
              sub_245FC5698(&v151);
              _os_log_impl(&dword_245F8A000, v97, v98, "MeshManager.%{private}s: %{public}ld/%{public}ld mesh anchors intersect with bounding box.", v99, 0x20u);
              sub_245F8E6F4(v100);
              MEMORY[0x24C1989D0](v100, -1, -1);
              MEMORY[0x24C1989D0](v99, -1, -1);
            }

            else
            {
              sub_245FC5698(&v151);
            }

            v95(v96, v62);
          }

          v101 = v124;
          v127(v124, v128, v62);
          v102 = sub_2460918D4();
          v103 = sub_246091FC4();
          if (os_log_type_enabled(v102, v103))
          {
            v104 = swift_slowAlloc();
            v105 = swift_slowAlloc();
            v147.i64[0] = v105;
            *v104 = 136380675;
            *(v104 + 4) = sub_245F8D3C0(0xD000000000000026, v123 | 0x8000000000000000, &v147);
            _os_log_impl(&dword_245F8A000, v102, v103, "MeshManager.%{private}s: Finished processing all updated mesh anchors.", v104, 0xCu);
            sub_245F8E6F4(v105);
            MEMORY[0x24C1989D0](v105, -1, -1);
            MEMORY[0x24C1989D0](v104, -1, -1);
          }

          else
          {
          }

          v95(v101, v62);
          return;
        }
      }

      else
      {
        sub_245FC5600(v14, type metadata accessor for ObjectCaptureSession.Mesh.Anchor);
      }
    }

    v62 = v130;
    while (1)
    {
      v59 = v61 + 1;
      if (__OFADD__(v61, 1))
      {
        break;
      }

      if (v59 >= v57)
      {
        goto LABEL_32;
      }

      v56 = *(v53 + 8 * v59);
      ++v61;
      if (v56)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_43:
  __break(1u);
}

uint64_t sub_245FC1628()
{
  v1 = v0;
  v2 = sub_246091AA4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v24 - v7;
  v9 = sub_246091AF4();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = (&v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(v1 + 40);
  *v13 = v14;
  (*(v10 + 104))(v13, *MEMORY[0x277D85200], v9, v11);
  v15 = v14;
  LOBYTE(v14) = sub_246091B24();
  result = (*(v10 + 8))(v13, v9);
  if ((v14 & 1) == 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  sub_246091A84();
  v17 = sub_246091A74();
  v25 = v1;
  v18 = v1 + OBJC_IVAR____TtC6CoreOC19FreeformMeshManager_backgroundData;
  swift_beginAccess();
  v19 = type metadata accessor for FreeformMeshManager.BackgroundData(0);
  (*(v3 + 16))(v5, v18 + *(v19 + 52), v2);
  v20 = sub_246091A74();
  v21 = *(v3 + 8);
  result = v21(v5, v2);
  if (v17 < v20)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  if (v17 - v20 >= 0x28FA6AE00)
  {
    v22 = *(**(v25 + 104) + 288);

    v22(v23);

    swift_beginAccess();
    (*(v3 + 24))(v18 + *(v19 + 52), v8, v2);
    swift_endAccess();
  }

  return v21(v8, v2);
}

uint64_t sub_245FC1924()
{
  sub_245F91E84(v0 + 16);

  swift_unknownObjectRelease();

  sub_245FC5600(v0 + OBJC_IVAR____TtC6CoreOC19FreeformMeshManager_backgroundData, type metadata accessor for FreeformMeshManager.BackgroundData);
  v1 = *(v0 + OBJC_IVAR____TtC6CoreOC19FreeformMeshManager_mainQueueData + 144);
  v7[8] = *(v0 + OBJC_IVAR____TtC6CoreOC19FreeformMeshManager_mainQueueData + 128);
  v7[9] = v1;
  v8 = *(v0 + OBJC_IVAR____TtC6CoreOC19FreeformMeshManager_mainQueueData + 160);
  v2 = *(v0 + OBJC_IVAR____TtC6CoreOC19FreeformMeshManager_mainQueueData + 80);
  v7[4] = *(v0 + OBJC_IVAR____TtC6CoreOC19FreeformMeshManager_mainQueueData + 64);
  v7[5] = v2;
  v3 = *(v0 + OBJC_IVAR____TtC6CoreOC19FreeformMeshManager_mainQueueData + 112);
  v7[6] = *(v0 + OBJC_IVAR____TtC6CoreOC19FreeformMeshManager_mainQueueData + 96);
  v7[7] = v3;
  v4 = *(v0 + OBJC_IVAR____TtC6CoreOC19FreeformMeshManager_mainQueueData + 16);
  v7[0] = *(v0 + OBJC_IVAR____TtC6CoreOC19FreeformMeshManager_mainQueueData);
  v7[1] = v4;
  v5 = *(v0 + OBJC_IVAR____TtC6CoreOC19FreeformMeshManager_mainQueueData + 48);
  v7[2] = *(v0 + OBJC_IVAR____TtC6CoreOC19FreeformMeshManager_mainQueueData + 32);
  v7[3] = v5;
  sub_245FC49D8(v7);
  return swift_deallocClassInstance();
}

void *sub_245FC1A04(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_245F8E624(&qword_27EE3A370, &qword_2460976E0);
  v10 = *(type metadata accessor for ObjectCaptureSession.Mesh.Anchor(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for ObjectCaptureSession.Mesh.Anchor(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

unint64_t sub_245FC1BDC(uint64_t a1)
{
  sub_246091834();
  sub_245FC59D0(&qword_27EE3A2D8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v2 = sub_246091B84();

  return sub_245FC1C74(a1, v2);
}

unint64_t sub_245FC1C74(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_246091834();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4, v6);
      sub_245FC59D0(&qword_27EE3AD10, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v16 = sub_246091BB4();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

uint64_t sub_245FC1E34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_245FC1BDC(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_245FC2DEC();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = sub_246091834();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56);
    v13 = type metadata accessor for ObjectCaptureSession.Mesh.Anchor(0);
    v20 = *(v13 - 8);
    sub_245FC559C(v12 + *(v20 + 72) * v7, a2);
    sub_245FC27E4(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = type metadata accessor for ObjectCaptureSession.Mesh.Anchor(0);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_245FC1FBC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for ObjectCaptureSession.Mesh.Anchor(0);
  v42 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v47 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_246091834();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v46 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_245F8E624(&qword_27EE3A328, &qword_2460976B0);
  v43 = v4;
  result = sub_246092374();
  v12 = result;
  if (*(v10 + 16))
  {
    v38 = v2;
    v13 = 0;
    v14 = (v10 + 64);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 64);
    v18 = (v15 + 63) >> 6;
    v39 = (v8 + 16);
    v40 = v8;
    v44 = (v8 + 32);
    v19 = result + 64;
    v41 = v10;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = v21 | (v13 << 6);
      v25 = *(v10 + 48);
      v45 = *(v8 + 72);
      v26 = v25 + v45 * v24;
      if (v43)
      {
        (*v44)(v46, v26, v7);
        v27 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_245FC559C(v27 + v28 * v24, v47);
      }

      else
      {
        (*v39)(v46, v26, v7);
        v29 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_245FA2954(v29 + v28 * v24, v47);
      }

      sub_245FC59D0(&qword_27EE3A2D8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_246091B84();
      v30 = -1 << *(v12 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v19 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v19 + 8 * v32);
          if (v36 != -1)
          {
            v20 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v31) & ~*(v19 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v44)((*(v12 + 48) + v45 * v20), v46, v7);
      result = sub_245FC559C(v47, *(v12 + 56) + v28 * v20);
      ++*(v12 + 16);
      v8 = v40;
      v10 = v41;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v37 = 1 << *(v10 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v14, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v37;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

uint64_t sub_245FC2420(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_246091834();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_245F8E624(&qword_27EE3A368, &qword_2460976D8);
  v39 = v4;
  result = sub_246092374();
  v11 = result;
  if (*(v9 + 16))
  {
    v42 = v8;
    v43 = v5;
    v36 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v37 = (v6 + 16);
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    v19 = v6;
    while (v16)
    {
      v21 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v24 = v21 | (v12 << 6);
      v25 = *(v9 + 48);
      v41 = *(v19 + 72);
      v26 = v25 + v41 * v24;
      if (v39)
      {
        (*v40)(v42, v26, v43);
      }

      else
      {
        (*v37)(v42, v26, v43);
      }

      v27 = *(*(v9 + 56) + 4 * v24);
      sub_245FC59D0(&qword_27EE3A2D8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_246091B84();
      v28 = -1 << *(v11 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v18 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v18 + 8 * v30);
          if (v34 != -1)
          {
            v20 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v29) & ~*(v18 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      result = (*v40)(*(v11 + 48) + v41 * v20, v42, v43);
      *(*(v11 + 56) + 4 * v20) = v27;
      ++*(v11 + 16);
      v19 = v38;
    }

    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v23 = v13[v12];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v16 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v35 = 1 << *(v9 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v13, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v35;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

void sub_245FC27E4(int64_t a1, uint64_t a2)
{
  v4 = sub_246091834();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v41 = a2;
    v11 = ~v9;
    v12 = sub_2460921C4();
    v13 = v11;
    a2 = v41;
    v40 = (v12 + 1) & v13;
    v15 = *(v5 + 16);
    v14 = v5 + 16;
    v38 = v8;
    v39 = v15;
    v16 = *(v14 + 56);
    v37 = (v14 - 8);
    do
    {
      v17 = v16;
      v18 = v16 * v10;
      v19 = v13;
      v20 = v14;
      v39(v7, *(a2 + 48) + v16 * v10, v4);
      sub_245FC59D0(&qword_27EE3A2D8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v21 = sub_246091B84();
      (*v37)(v7, v4);
      v13 = v19;
      v22 = v21 & v19;
      if (a1 >= v40)
      {
        if (v22 >= v40 && a1 >= v22)
        {
LABEL_15:
          v14 = v20;
          if (v17 * a1 < v18 || *(v41 + 48) + v17 * a1 >= (*(v41 + 48) + v18 + v17))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v17 * a1 != v18)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v41;
          v25 = *(v41 + 56);
          v26 = *(*(type metadata accessor for ObjectCaptureSession.Mesh.Anchor(0) - 8) + 72);
          v27 = v26 * a1;
          v28 = v25 + v26 * a1;
          v29 = v26 * v10;
          v30 = v25 + v26 * v10 + v26;
          if (v27 < v29 || v28 >= v30)
          {
            swift_arrayInitWithTakeFrontToBack();
            a1 = v10;
            v8 = v38;
            v13 = v19;
          }

          else
          {
            a1 = v10;
            v32 = v27 == v29;
            v8 = v38;
            v13 = v19;
            if (!v32)
            {
              swift_arrayInitWithTakeBackToFront();
              v13 = v19;
              a1 = v10;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v22 >= v40 || a1 >= v22)
      {
        goto LABEL_15;
      }

      v14 = v20;
      v8 = v38;
      a2 = v41;
LABEL_4:
      v10 = (v10 + 1) & v13;
      v16 = v17;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v33 = *(a2 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v35;
    ++*(a2 + 36);
  }
}

uint64_t sub_245FC2B28(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_246091834();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_245FC1BDC(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_245FC2DEC();
      goto LABEL_7;
    }

    sub_245FC1FBC(v17, a3 & 1);
    v24 = sub_245FC1BDC(a2);
    if ((v18 & 1) == (v25 & 1))
    {
      v14 = v24;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_245FC2D10(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_246092424();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = v21 + *(*(type metadata accessor for ObjectCaptureSession.Mesh.Anchor(0) - 8) + 72) * v14;

  return sub_245FC56C8(a1, v22);
}

uint64_t sub_245FC2D10(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_246091834();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = type metadata accessor for ObjectCaptureSession.Mesh.Anchor(0);
  result = sub_245FC559C(a3, v10 + *(*(v11 - 8) + 72) * a1);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

char *sub_245FC2DEC()
{
  v1 = v0;
  v2 = type metadata accessor for ObjectCaptureSession.Mesh.Anchor(0);
  v36 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v35 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_246091834();
  v37 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v33 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_245F8E624(&qword_27EE3A328, &qword_2460976B0);
  v5 = *v0;
  v6 = sub_246092364();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v38 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v31 = v37 + 32;
    v32 = v37 + 16;
    v17 = v33;
    if (v15)
    {
      do
      {
        v18 = __clz(__rbit64(v15));
        v39 = (v15 - 1) & v15;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = v37;
        v23 = *(v37 + 72) * v21;
        v24 = v34;
        (*(v37 + 16))(v17, *(v5 + 48) + v23, v34);
        v25 = v35;
        v26 = *(v36 + 72) * v21;
        sub_245FA2954(*(v5 + 56) + v26, v35);
        v27 = v38;
        (*(v22 + 32))(*(v38 + 48) + v23, v17, v24);
        result = sub_245FC559C(v25, *(v27 + 56) + v26);
        v15 = v39;
      }

      while (v39);
    }

    v19 = v11;
    v7 = v38;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v29;
        goto LABEL_18;
      }

      v20 = *(v30 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v39 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

void *sub_245FC30F0()
{
  v1 = v0;
  v29 = sub_246091834();
  v31 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v28 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_245F8E624(&qword_27EE3A368, &qword_2460976D8);
  v3 = *v0;
  v4 = sub_246092364();
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
    for (i = v31 + 32; v12; *(*(v23 + 56) + 4 * v17) = v22)
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_14:
      v17 = v14 | (v8 << 6);
      v18 = v31;
      v19 = *(v31 + 72) * v17;
      v20 = v28;
      v21 = v29;
      (*(v31 + 16))(v28, *(v3 + 48) + v19, v29);
      v22 = *(*(v3 + 56) + 4 * v17);
      v23 = v30;
      result = (*(v18 + 32))(*(v30 + 48) + v19, v20, v21);
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

uint64_t sub_245FC3364(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_246091834();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_245FC59D0(&qword_27EE3A2D8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v33 = a2;
  v11 = sub_246091B84();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_245FC59D0(&qword_27EE3AD10, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v21 = sub_246091BB4();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_245FC39A0(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_245FC3644(uint64_t a1)
{
  v2 = v1;
  v36 = sub_246091834();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_245F8E624(&qword_27EE3A320, "lM");
  result = sub_246092244();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_245FC59D0(&qword_27EE3A2D8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_246091B84();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
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

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

uint64_t sub_245FC39A0(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_246091834();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_245FC3644(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_245FC3C44();
      goto LABEL_12;
    }

    sub_245FC3E7C(v11 + 1);
  }

  v13 = *v3;
  sub_245FC59D0(&qword_27EE3A2D8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v14 = sub_246091B84();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_245FC59D0(&qword_27EE3AD10, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v22 = sub_246091BB4();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_246092414();
  __break(1u);
  return result;
}

void *sub_245FC3C44()
{
  v1 = v0;
  v2 = sub_246091834();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_245F8E624(&qword_27EE3A320, "lM");
  v6 = *v0;
  v7 = sub_246092234();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
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
    *v1 = v8;
  }

  return result;
}

uint64_t sub_245FC3E7C(uint64_t a1)
{
  v2 = v1;
  v33 = sub_246091834();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_245F8E624(&qword_27EE3A320, "lM");
  v7 = sub_246092244();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_245FC59D0(&qword_27EE3A2D8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_246091B84();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
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
    *v2 = v7;
  }

  return result;
}

uint64_t sub_245FC4198@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_246091834();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_245FC59D0(&qword_27EE3A2D8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v31 = a1;
  v10 = sub_246091B84();
  v11 = v9 + 56;
  v29 = v9 + 56;
  v30 = v9;
  v12 = -1 << *(v9 + 32);
  v13 = v10 & ~v12;
  if ((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v8, *(v30 + 48) + v18 * v13, v5);
      sub_245FC59D0(&qword_27EE3AD10, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v19 = sub_246091BB4();
      (*(v16 - 8))(v8, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_245FC3C44();
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    sub_245FC4440(v13);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

void sub_245FC4440(int64_t a1)
{
  v3 = sub_246091834();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = *v1 + 56;
  v9 = -1 << *(*v1 + 32);
  v10 = (a1 + 1) & ~v9;
  if (((1 << v10) & *(v8 + 8 * (v10 >> 6))) != 0)
  {
    v11 = ~v9;

    v12 = sub_2460921C4();
    if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) != 0)
    {
      v13 = v11;
      v14 = (v12 + 1) & v11;
      v34 = *(v4 + 16);
      v35 = v4 + 16;
      v15 = *(v4 + 72);
      v32 = (v4 + 8);
      v33 = v8;
      v16 = v15;
      do
      {
        v17 = v16;
        v18 = v16 * v10;
        v34(v6, *(v7 + 48) + v16 * v10, v3);
        v19 = v7;
        v20 = v14;
        v21 = v13;
        v22 = v19;
        sub_245FC59D0(&qword_27EE3A2D8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
        v23 = sub_246091B84();
        (*v32)(v6, v3);
        v24 = v23 & v21;
        v13 = v21;
        v14 = v20;
        if (a1 >= v20)
        {
          if (v24 >= v20 && a1 >= v24)
          {
LABEL_16:
            v7 = v22;
            v27 = *(v22 + 48);
            v16 = v17;
            v28 = v17 * a1;
            if (v17 * a1 < v18 || v27 + v17 * a1 >= (v27 + v18 + v17))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v10;
            }

            else
            {
              a1 = v10;
              if (v28 != v18)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v10;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v24 >= v20 || a1 >= v24)
        {
          goto LABEL_16;
        }

        v7 = v22;
        v16 = v17;
LABEL_5:
        v10 = (v10 + 1) & v13;
        v8 = v33;
      }

      while (((*(v33 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
    }

    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v29 = *(v7 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v31;
    ++*(v7 + 36);
  }
}

unint64_t sub_245FC4748(uint64_t a1)
{
  v2 = sub_245F8E624(&unk_27EE3A3A0, qword_2460976F0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_245F8E624(&qword_27EE3A328, &qword_2460976B0);
    v7 = sub_246092384();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_245F8E7A4(v9, v5, &unk_27EE3A3A0, qword_2460976F0);
      result = sub_245FC1BDC(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_246091834();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = type metadata accessor for ObjectCaptureSession.Mesh.Anchor(0);
      result = sub_245FC559C(&v5[v8], v16 + *(*(v17 - 8) + 72) * v13);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
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

double sub_245FC4A80@<D0>(void *a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC6CoreOC19FreeformMeshManager_mainQueueData;
  swift_beginAccess();
  *a1 = *(v3 + 16);

  return result;
}

float sub_245FC4AE4@<S0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC6CoreOC19FreeformMeshManager_mainQueueData;
  swift_beginAccess();
  if (*(v3 + 48) & 1) != 0 || (*(v3 + 80))
  {
    LODWORD(v4) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 1;
  }

  else
  {
    v5 = (v3 + 72);
    v6 = *(v3 + 64);
    v7 = *(v3 + 40);
    v8 = *(v3 + 32);
    v9 = vld1q_dup_f64(v5);
    *&v4 = vsub_f32(v6, v8);
    *(&v4 + 1) = vsubq_f32(v9, vdupq_n_s64(v7)).u32[2];
    *a1 = v8;
    *(a1 + 8) = v7;
    *(a1 + 16) = v4;
    *(a1 + 32) = 0;
  }

  return *&v4;
}

uint64_t sub_245FC4BA8()
{

  return MEMORY[0x2821FE8E8](v0, 88, 15);
}

void sub_245FC4BE0(uint64_t a1)
{
  v2 = *(v1 + 80);
  v3 = sub_246021E38(a1, *(v1 + 16), *(v1 + 32), *(v1 + 48), *(v1 + 64));
  if (v3)
  {
    OCBoundingBox.init(transform:)(&v9, v3);
    v7 = v9.transform.columns[1];
    v8 = v9.transform.columns[0];
    v5 = v9.transform.columns[3];
    v6 = v9.transform.columns[2];
    v10 = 0;
    v4 = (v2 + OBJC_IVAR____TtC6CoreOC19FreeformMeshManager_mainQueueData);
    swift_beginAccess();
    v4[6] = v8;
    v4[7] = v7;
    v4[8] = v6;
    v4[9] = v5;
    v4[10].i8[0] = v10;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_245FC4CA8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_245FC4CDC()
{
  result = qword_27EE3A250;
  if (!qword_27EE3A250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE3A250);
  }

  return result;
}

uint64_t sub_245FC4D38(uint64_t a1)
{
  result = type metadata accessor for FreeformMeshManager.BackgroundData(319);
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

__n128 sub_245FC4E2C(uint64_t a1, uint64_t a2)
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

uint64_t sub_245FC4E48(uint64_t *a1, int a2)
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

uint64_t sub_245FC4E90(uint64_t result, int a2, int a3)
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

__n128 sub_245FC4EEC(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_245FC4EF8(uint64_t a1, int a2)
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

uint64_t sub_245FC4F18(uint64_t result, int a2, int a3)
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

__n128 sub_245FC4F64(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_245FC4FA0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 161))
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

uint64_t sub_245FC4FE8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 160) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 161) = 1;
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

    *(result + 161) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_245FC5078(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_246091AA4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 52);

    return v9(v10, a2, v8);
  }
}

void *sub_245FC5138(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_246091AA4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 52);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_245FC51DC(uint64_t a1)
{
  sub_245FC52E0(319);
  if (v1 <= 0x3F)
  {
    sub_245FC538C(319);
    if (v2 <= 0x3F)
    {
      sub_245FC5420(319);
      if (v3 <= 0x3F)
      {
        sub_245FC5484(319, &unk_27EE3A2F8, &type metadata for FreeformMeshManager.ScanExtent, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_246091AA4();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_245FC52E0(uint64_t a1)
{
  if (!qword_27EE3A2D0)
  {
    sub_246091834();
    type metadata accessor for ObjectCaptureSession.Mesh.Anchor(255);
    sub_245FC59D0(&qword_27EE3A2D8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    v1 = sub_246091B74();
    if (!v2)
    {
      atomic_store(v1, &qword_27EE3A2D0);
    }
  }
}

void sub_245FC538C(uint64_t a1)
{
  if (!qword_27EE3A2E0)
  {
    sub_246091834();
    sub_245FC59D0(&qword_27EE3A2D8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    v1 = sub_246091F64();
    if (!v2)
    {
      atomic_store(v1, &qword_27EE3A2E0);
    }
  }
}

void sub_245FC5420(uint64_t a1)
{
  if (!qword_27EE3A2E8)
  {
    sub_245F9135C(&qword_27EE3A2F0, &unk_246096850);
    v1 = sub_2460920F4();
    if (!v2)
    {
      atomic_store(v1, &qword_27EE3A2E8);
    }
  }
}

void sub_245FC5484(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

__n128 sub_245FC54D4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_245FC54E8(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[41])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_245FC553C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_245FC559C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ObjectCaptureSession.Mesh.Anchor(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_245FC5600(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_245FC56C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ObjectCaptureSession.Mesh.Anchor(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_245FC572C(uint64_t a1)
{
  v2 = sub_245F8E624(&qword_27EE3A378, &qword_2460976E8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_245F8E624(&qword_27EE3A368, &qword_2460976D8);
    v7 = sub_246092384();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_245F8E7A4(v9, v5, &qword_27EE3A378, &qword_2460976E8);
      result = sub_245FC1BDC(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_246091834();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 4 * v13) = *&v5[v8];
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

uint64_t sub_245FC5914(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_245F8E624(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_245FC597C()
{

  return MEMORY[0x2821FE8E8](v0, 112, 15);
}

uint64_t sub_245FC59D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_245FC5A18()
{
  v1 = (v0 + OBJC_IVAR____TtC6CoreOC19FreeformMeshManager_backgroundData);
  swift_beginAccess();
  v2 = *v1;
  v3 = v0 + OBJC_IVAR____TtC6CoreOC19FreeformMeshManager_mainQueueData;
  swift_beginAccess();
  *(v3 + 16) = v2;

  v4 = *(v1 + 96);
  *(v3 + 32) = *(v1 + 5);
  *(v3 + 48) = v4;
  v5 = *(v1 + 128);
  *(v3 + 64) = *(v1 + 7);
  *(v3 + 80) = v5;
  *(v3 + 24) = v1[2];

  *(v3 + 88) = v1[17];
  result = swift_endAccess();
  v7 = *(v0 + OBJC_IVAR____TtC6CoreOC19FreeformMeshManager_backgroundTaskCount);
  v8 = __OFSUB__(v7, 1);
  v9 = v7 - 1;
  if (v8)
  {
    __break(1u);
    goto LABEL_5;
  }

  *(v0 + OBJC_IVAR____TtC6CoreOC19FreeformMeshManager_backgroundTaskCount) = v9;
  if (v9)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

__n128 sub_245FC5B14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_245FC5B38(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 81))
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

uint64_t sub_245FC5B80(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 81) = 1;
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

    *(result + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FreeformMeshManager.MeshRefinementType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FreeformMeshManager.MeshRefinementType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_245FC5D3C()
{
  result = qword_27EE3C000[0];
  if (!qword_27EE3C000[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EE3C000);
  }

  return result;
}

uint64_t sub_245FC5E04(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v35[1] = *MEMORY[0x277D85DE8];
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  sub_245F8E624(&qword_27EE3A410, &qword_246097800);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_2460977F0;
  v7 = *MEMORY[0x277CC4E30];
  type metadata accessor for CFString(0);
  v9 = v8;
  *(v6 + 56) = v8;
  *(v6 + 32) = v7;
  v10 = MEMORY[0x277D84CC0];
  *(v6 + 64) = 1717855600;
  v11 = *MEMORY[0x277CC4EC8];
  *(v6 + 88) = v10;
  *(v6 + 96) = v11;
  v12 = MEMORY[0x277D83E88];
  v13 = MEMORY[0x277CC4DD8];
  *(v6 + 120) = v8;
  *(v6 + 128) = a1;
  v14 = *v13;
  *(v6 + 152) = v12;
  *(v6 + 160) = v14;
  *(v6 + 184) = v8;
  *(v6 + 192) = a2;
  v15 = *MEMORY[0x277CC4F68];
  *(v6 + 248) = v8;
  *(v6 + 216) = v12;
  *(v6 + 224) = v15;
  v16 = MEMORY[0x277D839B0];
  *(v6 + 256) = 1;
  v17 = *MEMORY[0x277CC4DE8];
  *(v6 + 312) = v8;
  *(v6 + 280) = v16;
  *(v6 + 288) = v17;
  v18 = objc_allocWithZone(MEMORY[0x277CBEAC0]);
  v19 = v7;
  v20 = v11;
  v21 = v14;
  v22 = v15;
  v23 = v17;
  v24 = [v18 init];
  *(v6 + 344) = sub_245FC609C();
  *(v6 + 320) = v24;
  v25 = sub_246091F84();
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_246096EF0;
  v27 = *MEMORY[0x277CC4E50];
  v28 = MEMORY[0x277D83B88];
  *(v26 + 32) = *MEMORY[0x277CC4E50];
  *(v26 + 56) = v9;
  *(v26 + 64) = 1;
  v29 = *MEMORY[0x277CC4E40];
  *(v26 + 88) = v28;
  *(v26 + 96) = v29;
  *(v26 + 152) = v28;
  *(v26 + 120) = v9;
  *(v26 + 128) = 3;
  v30 = v27;
  v31 = v29;
  v32 = sub_246091F84();
  v35[0] = 0;
  result = CVPixelBufferPoolCreate(*MEMORY[0x277CBECE8], v32, v25, v35);
  if (result)
  {

    type metadata accessor for ImageFilter();
    swift_deallocPartialClassInstance();
    return 0;
  }

  if (v35[0])
  {
    v34 = v35[0];

    *(v3 + 32) = v34;
    return v3;
  }

  __break(1u);
  return result;
}

unint64_t sub_245FC609C()
{
  result = qword_27EE3A418;
  if (!qword_27EE3A418)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EE3A418);
  }

  return result;
}

uint64_t sub_245FC610C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_245FC6180(uint64_t a1)
{
  result = OCImageFilterBilateralCreate();
  if (result)
  {
    type metadata accessor for BilateralImageFilter();
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

CVPixelBufferRef sub_245FC6284(uint64_t a1)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v8[0] = 0;
  PixelBuffer = CVPixelBufferPoolCreatePixelBuffer(*MEMORY[0x277CBECE8], *(v1 + 32), v8);
  v3 = v8[0];
  if (PixelBuffer || (v4 = OCImageFilterApplyFilter(), v3 = v8[0], v4))
  {
    v5 = 0;
  }

  else
  {
    v7 = v8[0];
    v5 = v3;
  }

  return v5;
}

CVPixelBufferRef sub_245FC6364(uint64_t a1, uint64_t a2)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v9[0] = 0;
  PixelBuffer = CVPixelBufferPoolCreatePixelBuffer(*MEMORY[0x277CBECE8], *(v2 + 32), v9);
  v4 = v9[0];
  if (PixelBuffer || (v5 = OCImageFilterApplyCrossBilateralFilter(), v4 = v9[0], v5))
  {
    v6 = 0;
  }

  else
  {
    v8 = v9[0];
    v6 = v4;
  }

  return v6;
}

uint64_t sub_245FC641C()
{
  result = OCImageFilterDestroy();
  if (result)
  {
    __break(1u);
  }

  else
  {

    return swift_deallocClassInstance();
  }

  return result;
}

__n128 sub_245FC6488(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_245FC649C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_245FC64BC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = (a2 - 1);
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

  *(result + 40) = v3;
  return result;
}

unint64_t sub_245FC6540()
{
  result = sub_245FC66F8(&unk_2858DE798);
  qword_27EE3C118 = result;
  return result;
}

BOOL sub_245FC6568(__CVBuffer *a1)
{
  if (qword_27EE3C110 != -1)
  {
    v10 = a1;
    swift_once();
    a1 = v10;
  }

  v1 = qword_27EE3C118;
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  if (!*(v1 + 16))
  {
    return 0;
  }

  v3 = PixelFormatType;
  v4 = MEMORY[0x24C196E60](*(v1 + 40), PixelFormatType, 4);
  v5 = -1 << *(v1 + 32);
  v6 = v4 & ~v5;
  if (((*(v1 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(v1 + 48) + 4 * v6);
    result = v8 == v3;
    if (v8 == v3)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(v1 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

unint64_t sub_245FC66F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_245F8E624(&qword_27EE3A428, &unk_2460978F0);
    v3 = sub_246092254();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    v7 = *(v3 + 40);
    v8 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v12 = *(v6 + 4 * v4);
      result = MEMORY[0x24C196E60](v7, v12, 4);
      v14 = result & v8;
      v15 = (result & v8) >> 6;
      v16 = *(v5 + 8 * v15);
      v17 = 1 << (result & v8);
      v18 = *(v3 + 48);
      if ((v17 & v16) != 0)
      {
        while (*(v18 + 4 * v14) != v12)
        {
          v14 = (v14 + 1) & v8;
          v15 = v14 >> 6;
          v16 = *(v5 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v15) = v17 | v16;
        *(v18 + 4 * v14) = v12;
        v9 = *(v3 + 16);
        v10 = __OFADD__(v9, 1);
        v11 = v9 + 1;
        if (v10)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v11;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

double sub_245FC6834@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0x3FE0000000000000;
  result = 3.80295244e30;
  *(a1 + 8) = xmmword_246097900;
  return result;
}

uint64_t sub_245FC6888(float *a1)
{
  v2 = v1;
  v18 = *MEMORY[0x277D85DE8];
  v4 = sub_2460918F4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + 48) = 0;
  v8 = sub_245FA3174();
  (*(v5 + 16))(v7, v8, v4);
  v9 = sub_2460918D4();
  v10 = sub_246091FC4();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 134350080;
    *(v11 + 4) = *a1;
    v12 = a1[3];
    *(v11 + 14) = a1[2];
    *(v11 + 24) = v12;
    v13 = a1[5];
    *(v11 + 34) = a1[4];
    *(v11 + 12) = 2050;
    *(v11 + 22) = 2050;
    *(v11 + 32) = 2050;
    *(v11 + 42) = 2050;
    *(v11 + 44) = v13;
    _os_log_impl(&dword_245F8A000, v9, v10, "ExplicitFeedbackManager: ExplicitFeedback Configuration: motionTimeWindow %{public}f, isoThresholdLowLight %{public}f, isoThresholdTooDark %{public}f, ratioObjectInFOVThreshold %{public}f, tooFarRatioBoxAreaToImgArea %{public}f", v11, 0x34u);
    MEMORY[0x24C1989D0](v11, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  v17 = 0;
  v15 = *a1;
  v16 = *(a1 + 2);
  result = OCExplicitFeedbackCreate();
  if (result)
  {
    type metadata accessor for ExplicitFeedbackManager();
    swift_deallocPartialClassInstance();
    return 0;
  }

  *(v2 + 16) = *a1;
  *(v2 + 32) = *(a1 + 2);
  if (v17)
  {
    *(v2 + 40) = v17;
    return v2;
  }

  __break(1u);
  return result;
}

uint64_t sub_245FC6AD0()
{
  result = OCExplicitFeedbackDestroy();
  if (result)
  {
    __break(1u);
  }

  else
  {

    return swift_deallocClassInstance();
  }

  return result;
}

uint64_t sub_245FC6B10()
{
  if (*(v0 + 48))
  {
    return 1;
  }

  if (OCExplicitFeedbackStart())
  {
    return 0;
  }

  result = 1;
  *(v0 + 48) = 1;
  return result;
}

uint64_t sub_245FC6B58()
{
  if (*(v0 + 48) == 1)
  {
    if (OCExplicitFeedbackStop())
    {
      return 0;
    }

    *(v0 + 48) = 0;
  }

  return 1;
}

uint64_t sub_245FC6B98(__int128 *a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (*(v7 + 48) != 1)
  {
    return 0;
  }

  if (*(a4 + 64) & 1) != 0 || (*(a5 + 64) & 1) != 0 || !a2 || (a3[4])
  {
    if (OCExplicitFeedbackProcess())
    {
      return 0;
    }
  }

  else
  {
    sub_245FC6F9C(&unk_2858DE7C8);
    v11 = v10;

    Size = OCDataBufferGetSize();
    if (Size < 0)
    {
      __break(1u);
      __break(1u);
      __break(1u);
    }

    v13 = Size;
    if (Size)
    {
      sub_245F8E624(&qword_27EE3A430, qword_246097920);
      v14 = sub_246091E14();
      v15 = v14;
      *(v14 + 16) = v13;
      v16 = 32;
      do
      {
        *(v14 + v16) = v11;
        v16 += 8;
        --v13;
      }

      while (v13);
    }

    else
    {
      v15 = MEMORY[0x277D84F90];
    }

    v17 = OCExplicitFeedbackProcess();
    if (*(v15 + 16))
    {
      sub_245FC6EA8(v15, v15 + 32, 0, 1uLL);
      v19 = v18;
    }

    else
    {

      v19 = v15;
    }

    *(a6 + 8) = v19;
    if (v17)
    {
      return 0;
    }
  }

  *a6 = 0;
  v20 = *&vshl_u16(vdup_n_s16(0), 0xFFFDFFFEFFFBFFFFLL) & 0xFF01FF01FF01FF01;
  *(a6 + 1) = vuzp1_s8(v20, v20).u32[0];
  *(a6 + 5) = 0;
  return 1;
}

void sub_245FC6EA8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = MEMORY[0x277D84F90];
      if (v4 != a3)
      {
LABEL_7:
        memcpy(v8 + 4, (a2 + 8 * a3), 8 * v5);
        return;
      }
    }

    else
    {
      sub_245F8E624(&unk_27EE3AD90, "lK");
      v8 = swift_allocObject();
      v9 = j__malloc_size(v8);
      v10 = v9 - 32;
      if (v9 < 32)
      {
        v10 = v9 - 25;
      }

      v8[2] = v5;
      v8[3] = 2 * (v10 >> 3);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t sub_245FC6F9C(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    goto LABEL_6;
  }

  if ((v1 - 1) > 1)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v1 == 1)
  {
LABEL_6:
    __break(1u);
  }

  return result;
}

uint64_t sub_245FC6FD4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_245FC701C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

void type metadata accessor for OCExplicitFeedbackConfig()
{
  if (!qword_27EE3A438)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27EE3A438);
    }
  }
}

_OWORD *sub_245FC70B8@<X0>(_OWORD *result@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>, __n128 a4@<Q1>, __n128 a5@<Q2>, __n128 a6@<Q3>, double a7@<D4>)
{
  v7 = result[1];
  *a2 = *result;
  *(a2 + 16) = v7;
  *(a2 + 32) = result[2];
  *(a2 + 48) = a3;
  *(a2 + 64) = a4;
  *(a2 + 80) = a5;
  *(a2 + 96) = a6;
  *(a2 + 112) = a7;
  return result;
}

unint64_t sub_245FC70D8()
{
  sub_245F8E624(&qword_27EE3A440, &unk_2460979E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_246096640;
  *(inited + 32) = 48;
  *(inited + 40) = 0xE100000000000000;
  v2 = v0[1];
  v10[0] = *v0;
  v10[1] = v2;
  v10[2] = v0[2];
  sub_246020EF0(v10);
  v4 = v3;
  v5 = sub_245F8E624(&unk_27EE3B1A0, &qword_246098F50);
  *(inited + 48) = v4;
  *(inited + 72) = v5;
  *(inited + 80) = 49;
  *(inited + 88) = 0xE100000000000000;
  sub_246020FBC(v0[3], v0[4], v0[5], v0[6]);
  *(inited + 96) = v6;
  *(inited + 120) = v5;
  *(inited + 128) = 50;
  *(inited + 136) = 0xE100000000000000;
  sub_245F8E624(&qword_27EE3A448, &qword_2460979F0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_246096EF0;
  *(v7 + 32) = v0[7].i64[0];
  *(inited + 168) = sub_245F8E624(&qword_27EE3A450, &qword_2460979F8);
  *(inited + 144) = v7;
  v8 = sub_245F8E498(inited);
  swift_setDeallocating();
  sub_245F8E624(&qword_27EE39EF8, &unk_246096ED0);
  swift_arrayDestroy();
  return v8;
}

id sub_245FC7308()
{
  swift_beginAccess();
  v1 = *(v0 + 24);

  return v1;
}

void sub_245FC734C(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  *(v1 + 24) = a1;
}

__n128 sub_245FC7394@<Q0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 112);
  *(a1 + 64) = *(v1 + 96);
  *(a1 + 80) = v3;
  *(a1 + 96) = *(v1 + 128);
  *(a1 + 112) = *(v1 + 144);
  v4 = *(v1 + 48);
  *a1 = *(v1 + 32);
  *(a1 + 16) = v4;
  result = *(v1 + 64);
  v6 = *(v1 + 80);
  *(a1 + 32) = result;
  *(a1 + 48) = v6;
  return result;
}

__n128 sub_245FC73F8(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(a1 + 80);
  *(v1 + 96) = *(a1 + 64);
  *(v1 + 112) = v3;
  *(v1 + 128) = *(a1 + 96);
  *(v1 + 144) = *(a1 + 112);
  v4 = *(a1 + 16);
  *(v1 + 32) = *a1;
  *(v1 + 48) = v4;
  result = *(a1 + 32);
  v6 = *(a1 + 48);
  *(v1 + 64) = result;
  *(v1 + 80) = v6;
  return result;
}

__n128 sub_245FC74AC(uint64_t a1, uint64_t a2, double a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  *(v6 + 24) = a1;
  v7 = *(a2 + 80);
  *(v6 + 96) = *(a2 + 64);
  *(v6 + 112) = v7;
  *(v6 + 128) = *(a2 + 96);
  *(v6 + 144) = *(a2 + 112);
  v8 = *(a2 + 16);
  *(v6 + 32) = *a2;
  *(v6 + 48) = v8;
  result = *(a2 + 32);
  v10 = *(a2 + 48);
  *(v6 + 64) = result;
  *(v6 + 80) = v10;
  return result;
}

void sub_245FC7560(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2460918F4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a1 + 16))
  {
    goto LABEL_15;
  }

  v8 = sub_245F8D968(48, 0xE100000000000000);
  if ((v9 & 1) == 0)
  {
    goto LABEL_15;
  }

  sub_245F8E5C8(*(a1 + 56) + 32 * v8, v28);
  sub_245FC82A8();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_15;
  }

  v10 = v30.n128_u64[0];
  if (*(a1 + 16))
  {
    v11 = sub_245F8D968(49, 0xE100000000000000);
    if (v12)
    {
      sub_245F8E5C8(*(a1 + 56) + 32 * v11, v28);
      if (swift_dynamicCast())
      {
        v13 = v30;
        if (*(a1 + 16))
        {
          v14 = sub_245F8D968(50, 0xE100000000000000);
          if (v15)
          {
            sub_245F8E5C8(*(a1 + 56) + 32 * v14, v28);
            sub_245F8E624(&qword_27EE39ED0, &unk_246096480);
            if (swift_dynamicCast())
            {

              sub_245FC7C4C(v16, v28);
              if (sub_245FC82F4(v28) != 1)
              {
                v34 = v28[4];
                v35 = v28[5];
                v36 = v28[6];
                v37 = v29;
                v30 = v28[0];
                v31 = v28[1];
                v32 = v28[2];
                v33 = v28[3];
                [v10 doubleValue];
                v2[1].n128_u64[0] = v21;
                v22 = sub_246091734();
                DepthPointCloudDataBuffer = OCNonModularSPI_NSData_CreateDepthPointCloudDataBuffer();

                if (DepthPointCloudDataBuffer)
                {

                  v24 = DepthPointCloudDataBuffer;

                  sub_245FAEC7C(v13.n128_i64[0], v13.n128_u64[1]);
                  v2[1].n128_u64[1] = v24;
                  v25 = v35;
                  v2[6] = v34;
                  v2[7] = v25;
                  v2[8] = v36;
                  v2[9].n128_u64[0] = v37;
                  v26 = v31;
                  v2[2] = v30;
                  v2[3] = v26;
                  v27 = v33;
                  v2[4] = v32;
                  v2[5] = v27;
                }

                else
                {
                  __break(1u);
                }

                return;
              }

              sub_245FAEC7C(v13.n128_i64[0], v13.n128_u64[1]);
              goto LABEL_13;
            }
          }
        }

        sub_245FAEC7C(v13.n128_i64[0], v13.n128_u64[1]);
LABEL_15:

        goto LABEL_16;
      }
    }
  }

LABEL_13:

LABEL_16:
  v17 = sub_245FA3174();
  (*(v5 + 16))(v7, v17, v4);
  v18 = sub_2460918D4();
  v19 = sub_246091FB4();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_245F8A000, v18, v19, "Temporal pointcloud: Failed to initialize temporal LiDAR point cloud data from dictionary!", v20, 2u);
    MEMORY[0x24C1989D0](v20, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  type metadata accessor for TemporalDepthPointCloud();
  swift_deallocPartialClassInstance();
}

unint64_t sub_245FC7920()
{
  v1 = (*(*v0 + 128))();
  v2 = OCNonModularSPI_Serialization_CVBufferToData();

  if (!v2)
  {
    return 0;
  }

  v3 = sub_246091744();
  v5 = v4;

  sub_245F8E624(&qword_27EE3A440, &unk_2460979E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_246096640;
  *(inited + 32) = 48;
  *(inited + 40) = 0xE100000000000000;
  v7 = (*(*v0 + 104))();
  v8 = MEMORY[0x277D839F8];
  *(inited + 48) = v7;
  v9 = MEMORY[0x277CC9318];
  *(inited + 72) = v8;
  *(inited + 80) = 49;
  *(inited + 88) = 0xE100000000000000;
  *(inited + 96) = v3;
  *(inited + 104) = v5;
  *(inited + 120) = v9;
  *(inited + 128) = 50;
  *(inited + 136) = 0xE100000000000000;
  v10 = *(*v0 + 152);
  v11 = sub_245FAED40(v3, v5);
  v10(v15, v11);
  v12 = sub_245FC70D8();
  *(inited + 168) = sub_245F8E624(&qword_27EE39ED0, &unk_246096480);
  *(inited + 144) = v12;
  v13 = sub_245F8E498(inited);
  swift_setDeallocating();
  sub_245F8E624(&qword_27EE39EF8, &unk_246096ED0);
  swift_arrayDestroy();
  sub_245FAEC7C(v3, v5);
  return v13;
}

uint64_t sub_245FC7AF0()
{

  return swift_deallocClassInstance();
}

char *sub_245FC7B28(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_245FC7B48(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_245FC7B48(char *result, int64_t a2, char a3, char *a4)
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
    sub_245F8E624(&qword_27EE3AE70, &unk_246097400);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

void sub_245FC7C4C(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  v4 = sub_2460918F4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a1 + 16))
  {
    goto LABEL_24;
  }

  v8 = sub_245F8D968(48, 0xE100000000000000);
  if ((v9 & 1) == 0)
  {
    goto LABEL_24;
  }

  sub_245F8E5C8(*(a1 + 56) + 32 * v8, &v71);
  sub_245F8E624(&qword_27EE3A460, "6K");
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_24;
  }

  v10 = v63.n128_u64[0];
  if (!*(a1 + 16))
  {
    goto LABEL_22;
  }

  v11 = sub_245F8D968(49, 0xE100000000000000);
  if ((v12 & 1) == 0)
  {
    goto LABEL_22;
  }

  sub_245F8E5C8(*(a1 + 56) + 32 * v11, &v71);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_22;
  }

  if (!*(a1 + 16) || (v62.n128_u64[0] = v63.n128_u64[0], v13 = sub_245F8D968(50, 0xE100000000000000), (v14 & 1) == 0))
  {

    goto LABEL_24;
  }

  sub_245F8E5C8(*(a1 + 56) + 32 * v13, &v71);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_22:

LABEL_24:

    v27 = sub_245FA3174();
    (*(v5 + 16))(v7, v27, v4);
    v28 = sub_2460918D4();
    v29 = sub_246091FB4();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_245F8A000, v28, v29, "Temporal pointcloud: Failed to initialize LiDAR point cloud camera from dictionary!", v30, 2u);
      MEMORY[0x24C1989D0](v30, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
    sub_245FC83B4(&v71);
    goto LABEL_27;
  }

  v15 = v63.n128_u64[0];
  if (v10 >> 62)
  {
    v16 = sub_246092354();
  }

  else
  {
    v16 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v17 = MEMORY[0x277D84F90];
  v61 = v15;
  if (v16)
  {
    v71.n128_u64[0] = MEMORY[0x277D84F90];
    sub_245FC7B28(0, v16 & ~(v16 >> 63), 0);
    if (v16 < 0)
    {
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    v18 = 0;
    v19 = v71.n128_u64[0];
    do
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v20 = MEMORY[0x24C196C20](v18, v10);
      }

      else
      {
        v20 = *(v10 + 8 * v18 + 32);
      }

      v21 = v20;
      [v20 floatValue];
      v23 = v22;

      v71.n128_u64[0] = v19;
      v25 = *(v19 + 16);
      v24 = *(v19 + 24);
      v26 = v25 + 1;
      if (v25 >= v24 >> 1)
      {
        v60.n128_u64[0] = v25 + 1;
        sub_245FC7B28((v24 > 1), v25 + 1, 1);
        v26 = v60.n128_u64[0];
        v19 = v71.n128_u64[0];
      }

      ++v18;
      *(v19 + 16) = v26;
      *(v19 + 4 * v25 + 32) = v23;
    }

    while (v16 != v18);

    v15 = v61;
    v17 = MEMORY[0x277D84F90];
  }

  else
  {

    v19 = MEMORY[0x277D84F90];
  }

  sub_246020F68(v19, v70, v34, v35, v36);

  if (v62.n128_u64[0] >> 62)
  {
    v37 = sub_246092354();
    if (v37)
    {
      goto LABEL_32;
    }

LABEL_43:

    v39 = MEMORY[0x277D84F90];
    goto LABEL_44;
  }

  v37 = *((v62.n128_u64[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v37)
  {
    goto LABEL_43;
  }

LABEL_32:
  v71.n128_u64[0] = v17;
  sub_245FC7B28(0, v37 & ~(v37 >> 63), 0);
  if (v37 < 0)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v38 = 0;
  v39 = v71.n128_u64[0];
  v40 = v62.n128_u64[0];
  v41 = v62.n128_u64[0] & 0xC000000000000001;
  do
  {
    if (v41)
    {
      v42 = MEMORY[0x24C196C20](v38);
    }

    else
    {
      v42 = *(v40 + 8 * v38 + 32);
    }

    v43 = v42;
    [v42 floatValue];
    v45 = v44;

    v71.n128_u64[0] = v39;
    v47 = *(v39 + 16);
    v46 = *(v39 + 24);
    if (v47 >= v46 >> 1)
    {
      sub_245FC7B28((v46 > 1), v47 + 1, 1);
      v39 = v71.n128_u64[0];
    }

    ++v38;
    *(v39 + 16) = v47 + 1;
    *(v39 + 4 * v47 + 32) = v45;
    v40 = v62.n128_u64[0];
  }

  while (v37 != v38);

  v15 = v61;
LABEL_44:
  sub_24602105C(v39);
  v62 = v48;
  v59 = v50;
  v60 = v49;
  v58 = v51;

  if ((v15 & 0xC000000000000001) != 0)
  {
    v52 = MEMORY[0x24C196C20](0, v15);
    goto LABEL_47;
  }

  if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_54;
  }

  v52 = *(v15 + 32);
LABEL_47:
  v53 = v52;
  v54 = [v52 unsignedIntValue];

  if ((v15 & 0xC000000000000001) != 0)
  {
    v55 = MEMORY[0x24C196C20](1, v15);
LABEL_51:
    v56 = v55;

    v57 = [v56 unsignedIntValue];

    v63 = v70[0];
    v64 = v70[1];
    v65 = v70[2];
    v66 = v62;
    v67 = v60;
    v68 = v59;
    v69[0] = v58;
    *&v69[1] = __PAIR64__(v57, v54);
    sub_245FC83D8(&v63);
    v75 = v67;
    v76 = v68;
    v77[0] = v69[0];
    *(v77 + 9) = *(v69 + 9);
    v71 = v63;
    v72 = v64;
    v73 = v65;
    v74 = v66;
LABEL_27:
    v31 = v76;
    a2[4] = v75;
    a2[5] = v31;
    a2[6] = v77[0];
    *(a2 + 105) = *(v77 + 9);
    v32 = v72;
    *a2 = v71;
    a2[1] = v32;
    v33 = v74;
    a2[2] = v73;
    a2[3] = v33;
    return;
  }

  if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
  {
    v55 = *(v15 + 40);
    goto LABEL_51;
  }

LABEL_56:
  __break(1u);
}