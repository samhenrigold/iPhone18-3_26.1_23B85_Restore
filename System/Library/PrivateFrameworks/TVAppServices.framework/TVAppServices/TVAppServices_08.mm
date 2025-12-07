void sub_26CCD21C8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16))
  {
    v6 = sub_26CC181C4(25705, 0xE200000000000000);
    if (v7)
    {
      v58 = *(*(a1 + 56) + 8 * v6);
      swift_unknownObjectRetain();
      if (swift_dynamicCast())
      {
        v52 = *(&v54[0] + 1);
        v53 = *&v54[0];
        if (*(a1 + 16) && (v8 = sub_26CC181C4(0x656C746974, 0xE500000000000000), (v9 & 1) != 0) && (v58 = *(*(a1 + 56) + 8 * v8), swift_unknownObjectRetain(), (swift_dynamicCast() & 1) != 0))
        {
          v50 = *(&v54[0] + 1);
          v51 = *&v54[0];
        }

        else
        {
          if (qword_2804BBA60 != -1)
          {
            swift_once();
          }

          v15 = sub_26CD3A44C();
          __swift_project_value_buffer(v15, qword_2804D1538);
          v16 = sub_26CD3A42C();
          v17 = sub_26CD3A98C();
          if (os_log_type_enabled(v16, v17))
          {
            v18 = swift_slowAlloc();
            *v18 = 0;
            _os_log_impl(&dword_26CC14000, v16, v17, "Person title is missing", v18, 2u);
            MEMORY[0x26D6AE340](v18, -1, -1);
          }

          v50 = 0;
          v51 = 0;
        }

        if (*(a1 + 16) && (v19 = sub_26CC181C4(0x656C746974627573, 0xE800000000000000), (v20 & 1) != 0) && (v58 = *(*(a1 + 56) + 8 * v19), swift_unknownObjectRetain(), (swift_dynamicCast() & 1) != 0))
        {
          v21 = *(&v54[0] + 1);
          v49 = *&v54[0];
        }

        else
        {
          if (qword_2804BBA60 != -1)
          {
            swift_once();
          }

          v22 = sub_26CD3A44C();
          __swift_project_value_buffer(v22, qword_2804D1538);
          v23 = sub_26CD3A42C();
          v24 = sub_26CD3A98C();
          if (os_log_type_enabled(v23, v24))
          {
            v25 = swift_slowAlloc();
            *v25 = 0;
            _os_log_impl(&dword_26CC14000, v23, v24, "Person subtitle is missing", v25, 2u);
            MEMORY[0x26D6AE340](v25, -1, -1);
          }

          v49 = 0;
          v21 = 0;
        }

        if (*(a1 + 16) && (v26 = sub_26CC181C4(7107189, 0xE300000000000000), (v27 & 1) != 0) && (v58 = *(*(a1 + 56) + 8 * v26), swift_unknownObjectRetain(), (swift_dynamicCast() & 1) != 0))
        {
          v29 = *(&v54[0] + 1);
          v28 = *&v54[0];
        }

        else
        {
          if (qword_2804BBA60 != -1)
          {
            swift_once();
          }

          v30 = sub_26CD3A44C();
          __swift_project_value_buffer(v30, qword_2804D1538);
          v31 = sub_26CD3A42C();
          v32 = sub_26CD3A98C();
          if (os_log_type_enabled(v31, v32))
          {
            v33 = swift_slowAlloc();
            *v33 = 0;
            _os_log_impl(&dword_26CC14000, v31, v32, "Person page url is missing", v33, 2u);
            MEMORY[0x26D6AE340](v33, -1, -1);
          }

          v28 = 0;
          v29 = 0;
        }

        if (*(a1 + 16) && (v34 = sub_26CC181C4(0x6567616D69, 0xE500000000000000), (v35 & 1) != 0) && (*&v54[0] = *(*(a1 + 56) + 8 * v34), swift_unknownObjectRetain(), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD828, &qword_26CD479D0), (swift_dynamicCast() & 1) != 0))
        {
          sub_26CCD3C70(v58, v54);
          if (!v3)
          {

            v47 = v54[1];
            v48 = v54[0];
            v40 = v55;
            v41 = v56;
            v42 = v57;
            goto LABEL_51;
          }

          if (qword_2804BBA60 != -1)
          {
            swift_once();
          }

          v36 = sub_26CD3A44C();
          __swift_project_value_buffer(v36, qword_2804D1538);
          v37 = sub_26CD3A42C();
          v38 = sub_26CD3A98C();
          if (os_log_type_enabled(v37, v38))
          {
            v39 = swift_slowAlloc();
            *v39 = 0;
            _os_log_impl(&dword_26CC14000, v37, v38, "Person image data parsing failure", v39, 2u);
            MEMORY[0x26D6AE340](v39, -1, -1);
          }

          v40 = 0;
          v41 = 0;
          v42 = 0;
        }

        else
        {
          if (qword_2804BBA60 != -1)
          {
            swift_once();
          }

          v43 = sub_26CD3A44C();
          __swift_project_value_buffer(v43, qword_2804D1538);
          v44 = sub_26CD3A42C();
          v45 = sub_26CD3A98C();
          if (os_log_type_enabled(v44, v45))
          {
            v46 = swift_slowAlloc();
            *v46 = 0;
            _os_log_impl(&dword_26CC14000, v44, v45, "Person image metadata is missing", v46, 2u);
            MEMORY[0x26D6AE340](v46, -1, -1);
          }

          v40 = 0;
          v41 = 0;
          v42 = 0;
        }

        v47 = 0u;
        v48 = 0u;
LABEL_51:
        sub_26CCCF69C(0, 0, 0, 0, 0, 0, 0);
        *a2 = v53;
        *(a2 + 8) = v52;
        *(a2 + 16) = 0;
        *(a2 + 24) = v51;
        *(a2 + 32) = v50;
        *(a2 + 40) = v49;
        *(a2 + 48) = v21;
        *(a2 + 72) = v47;
        *(a2 + 56) = v48;
        *(a2 + 88) = v40;
        *(a2 + 96) = v41;
        *(a2 + 104) = v42;
        *(a2 + 112) = v28;
        *(a2 + 120) = v29;
        return;
      }
    }
  }

  if (qword_2804BBA60 != -1)
  {
    swift_once();
  }

  v10 = sub_26CD3A44C();
  __swift_project_value_buffer(v10, qword_2804D1538);
  v11 = sub_26CD3A42C();
  v12 = sub_26CD3A98C();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_26CC14000, v11, v12, "Person ID is missing", v13, 2u);
    MEMORY[0x26D6AE340](v13, -1, -1);
  }

  sub_26CCD4200();
  swift_allocError();
  *v14 = 3;
  swift_willThrow();
}

void sub_26CCD2940(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = 0x2804BB000uLL;
  if (*(a1 + 16) && (v6 = sub_26CC181C4(25705, 0xE200000000000000), (v7 & 1) != 0) && (v130 = *(*(a1 + 56) + 8 * v6), swift_unknownObjectRetain(), (swift_dynamicCast() & 1) != 0))
  {
    v9 = v128;
    v8 = v129;
    if (*(a1 + 16))
    {
      v10 = sub_26CC181C4(0x697041616964656DLL, 0xEC00000061746144);
      if (v11)
      {
        v128 = *(*(a1 + 56) + 8 * v10);
        swift_unknownObjectRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD828, &qword_26CD479D0);
        if (swift_dynamicCast())
        {
          v12 = v130;
          v127 = v9;
          v125 = v130;
          if (v130[2].isa)
          {
            v13 = sub_26CC181C4(0x6172615079616C70, 0xEA0000000000736DLL);
            if (v14)
            {
              v128 = *(v130[7].isa + v13);
              swift_unknownObjectRetain();
              if (swift_dynamicCast())
              {
                if (v130[2].isa && (v15 = sub_26CC181C4(25705, 0xE200000000000000), (v16 & 1) != 0))
                {
                  v17 = *(v130[7].isa + v15);
                  swift_unknownObjectRetain();

                  v130 = v17;
                  if (swift_dynamicCast())
                  {
                    v123 = v129;
                    v124 = v128;
                    v18 = v127;
                    goto LABEL_31;
                  }
                }

                else
                {
                }
              }
            }
          }

          if (qword_2804BBA60 != -1)
          {
            swift_once();
          }

          v29 = sub_26CD3A44C();
          __swift_project_value_buffer(v29, qword_2804D1538);

          v30 = sub_26CD3A42C();
          v31 = v129;
          v32 = sub_26CD3A98C();

          if (os_log_type_enabled(v30, v32))
          {
            v33 = swift_slowAlloc();
            v34 = swift_slowAlloc();
            v128 = v34;
            *v33 = 136315138;
            v18 = v127;
            *(v33 + 4) = sub_26CCF188C(v127, v31, &v128);
            _os_log_impl(&dword_26CC14000, v30, v32, "Song Id in current storefront is missing for entityId: %s", v33, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v34);
            MEMORY[0x26D6AE340](v34, -1, -1);
            v35 = v33;
            v12 = v125;
            MEMORY[0x26D6AE340](v35, -1, -1);

            v123 = 0;
            v124 = 0;
          }

          else
          {

            v123 = 0;
            v124 = 0;
            v18 = v127;
          }

          v8 = v31;
          v4 = 0x2804BB000uLL;
LABEL_31:
          if (v12[2].isa && (v36 = sub_26CC181C4(7107189, 0xE300000000000000), (v37 & 1) != 0) && (v130 = *(v12[7].isa + v36), swift_unknownObjectRetain(), (swift_dynamicCast() & 1) != 0))
          {
            v121 = v129;
            v122 = v128;
          }

          else
          {
            if (qword_2804BBA60 != -1)
            {
              swift_once();
            }

            v38 = sub_26CD3A44C();
            __swift_project_value_buffer(v38, qword_2804D1538);

            v39 = sub_26CD3A42C();
            v40 = sub_26CD3A98C();

            if (os_log_type_enabled(v39, v40))
            {
              v41 = swift_slowAlloc();
              v42 = swift_slowAlloc();
              v128 = v42;
              *v41 = 136315138;
              *(v41 + 4) = sub_26CCF188C(v127, v8, &v128);
              v43 = v40;
              v18 = v127;
              v4 = 0x2804BB000;
              _os_log_impl(&dword_26CC14000, v39, v43, "Song url is missing for entityId: %s", v41, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v42);
              v44 = v42;
              v12 = v125;
              MEMORY[0x26D6AE340](v44, -1, -1);
              MEMORY[0x26D6AE340](v41, -1, -1);

              v121 = 0;
              v122 = 0;
            }

            else
            {

              v121 = 0;
              v122 = 0;
              v18 = v127;
            }
          }

          if (v12[2].isa && (v45 = sub_26CC181C4(1701667182, 0xE400000000000000), (v46 & 1) != 0) && (v130 = *(v12[7].isa + v45), swift_unknownObjectRetain(), (swift_dynamicCast() & 1) != 0))
          {
            v119 = v129;
            v120 = v128;
          }

          else
          {
            if (*(v4 + 2656) != -1)
            {
              swift_once();
            }

            v47 = sub_26CD3A44C();
            __swift_project_value_buffer(v47, qword_2804D1538);

            v48 = sub_26CD3A42C();
            v49 = sub_26CD3A98C();

            if (os_log_type_enabled(v48, v49))
            {
              v50 = swift_slowAlloc();
              v51 = swift_slowAlloc();
              v128 = v51;
              *v50 = 136315138;
              *(v50 + 4) = sub_26CCF188C(v127, v8, &v128);
              v52 = v49;
              v18 = v127;
              v4 = 0x2804BB000;
              _os_log_impl(&dword_26CC14000, v48, v52, "Song name is missing for entityId: %s", v50, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v51);
              v53 = v51;
              v12 = v125;
              MEMORY[0x26D6AE340](v53, -1, -1);
              MEMORY[0x26D6AE340](v50, -1, -1);

              v119 = 0;
              v120 = 0;
            }

            else
            {

              v119 = 0;
              v120 = 0;
              v18 = v127;
            }
          }

          if (v12[2].isa && (v54 = sub_26CC181C4(0x614E747369747261, 0xEA0000000000656DLL), (v55 & 1) != 0) && (v130 = *(v12[7].isa + v54), swift_unknownObjectRetain(), (swift_dynamicCast() & 1) != 0))
          {
            v117 = v129;
            v118 = v128;
          }

          else
          {
            if (*(v4 + 2656) != -1)
            {
              swift_once();
            }

            v56 = sub_26CD3A44C();
            __swift_project_value_buffer(v56, qword_2804D1538);

            v57 = sub_26CD3A42C();
            v58 = sub_26CD3A98C();

            if (os_log_type_enabled(v57, v58))
            {
              v59 = swift_slowAlloc();
              v60 = swift_slowAlloc();
              v128 = v60;
              *v59 = 136315138;
              *(v59 + 4) = sub_26CCF188C(v127, v8, &v128);
              v61 = v58;
              v18 = v127;
              v4 = 0x2804BB000;
              _os_log_impl(&dword_26CC14000, v57, v61, "Song artist name is missing for entityId: %s", v59, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v60);
              v62 = v60;
              v12 = v125;
              MEMORY[0x26D6AE340](v62, -1, -1);
              MEMORY[0x26D6AE340](v59, -1, -1);

              v117 = 0;
              v118 = 0;
            }

            else
            {

              v117 = 0;
              v118 = 0;
              v18 = v127;
            }
          }

          if (v12[2].isa)
          {
            v63 = sub_26CC181C4(0x6B726F77747261, 0xE700000000000000);
            if (v64)
            {
              v128 = *(v12[7].isa + v63);
              swift_unknownObjectRetain();
              if (swift_dynamicCast())
              {
                v65 = v130;
                if (v130[2].isa && (v66 = sub_26CC181C4(7107189, 0xE300000000000000), (v67 & 1) != 0))
                {
                  v68 = *(v65[7].isa + v66);
                  swift_unknownObjectRetain();

                  v130 = v68;
                  if (swift_dynamicCast())
                  {
                    v115 = v129;
                    v116 = v128;
                    goto LABEL_71;
                  }
                }

                else
                {
                }
              }
            }
          }

          if (*(v4 + 2656) != -1)
          {
            swift_once();
          }

          v69 = sub_26CD3A44C();
          __swift_project_value_buffer(v69, qword_2804D1538);

          v70 = sub_26CD3A42C();
          v71 = sub_26CD3A98C();

          if (os_log_type_enabled(v70, v71))
          {
            v72 = swift_slowAlloc();
            v73 = swift_slowAlloc();
            v128 = v73;
            *v72 = 136315138;
            *(v72 + 4) = sub_26CCF188C(v127, v8, &v128);
            _os_log_impl(&dword_26CC14000, v70, v71, "Song artwork is missing for entityId: %s", v72, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v73);
            v74 = v73;
            v18 = v127;
            MEMORY[0x26D6AE340](v74, -1, -1);
            MEMORY[0x26D6AE340](v72, -1, -1);
          }

          v115 = 0;
          v116 = 0;
          v12 = v125;
LABEL_71:
          if (!*(a1 + 16) || (v75 = sub_26CC181C4(0x65707954676E6F73, 0xE800000000000000), (v76 & 1) == 0) || (v130 = *(*(a1 + 56) + 8 * v75), swift_unknownObjectRetain(), (swift_dynamicCast() & 1) == 0))
          {
            if (*(v4 + 2656) != -1)
            {
              swift_once();
            }

            v81 = sub_26CD3A44C();
            __swift_project_value_buffer(v81, qword_2804D1538);

            v82 = sub_26CD3A42C();
            v83 = sub_26CD3A98C();

            if (os_log_type_enabled(v82, v83))
            {
              v84 = swift_slowAlloc();
              v85 = swift_slowAlloc();
              v128 = v85;
              *v84 = 136315138;
              *(v84 + 4) = sub_26CCF188C(v18, v8, &v128);
              _os_log_impl(&dword_26CC14000, v82, v83, "Song type is missing for entityId: %s", v84, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v85);
              v86 = v85;
              v12 = v125;
              MEMORY[0x26D6AE340](v86, -1, -1);
              MEMORY[0x26D6AE340](v84, -1, -1);
            }

            v80 = 2;
LABEL_82:
            if (v12[2].isa && (v87 = sub_26CC181C4(0x52746E65746E6F63, 0xED0000676E697461), (v88 & 1) != 0))
            {
              v89 = *(v12[7].isa + v87);
              swift_unknownObjectRetain();

              v130 = v89;
              if (swift_dynamicCast())
              {
                v91 = v128;
                v90 = v129;
                v92 = sub_26CD3AD9C();
                if (!v92)
                {

                  v93 = sub_26CD3AFDC();

                  goto LABEL_111;
                }

                if (v92 == 1)
                {

                  v93 = 1;
LABEL_111:
                  v99 = v127;
                  goto LABEL_112;
                }

                if (*(v4 + 2656) != -1)
                {
                  swift_once();
                }

                v108 = sub_26CD3A44C();
                __swift_project_value_buffer(v108, qword_2804D1538);

                v95 = sub_26CD3A42C();
                v109 = sub_26CD3A98C();

                if (os_log_type_enabled(v95, v109))
                {
                  v110 = swift_slowAlloc();
                  v126 = v95;
                  v111 = swift_slowAlloc();
                  v128 = v111;
                  *v110 = 136315138;
                  v112 = sub_26CCF188C(v91, v90, &v128);

                  *(v110 + 4) = v112;
                  _os_log_impl(&dword_26CC14000, v126, v109, "unsupported contentRating: %s", v110, 0xCu);
                  __swift_destroy_boxed_opaque_existential_1(v111);
                  MEMORY[0x26D6AE340](v111, -1, -1);
                  MEMORY[0x26D6AE340](v110, -1, -1);

LABEL_110:
                  v93 = 0;
                  goto LABEL_111;
                }

LABEL_109:

                goto LABEL_110;
              }
            }

            else
            {
            }

            if (*(v4 + 2656) != -1)
            {
              swift_once();
            }

            v94 = sub_26CD3A44C();
            __swift_project_value_buffer(v94, qword_2804D1538);

            v95 = sub_26CD3A42C();
            v96 = sub_26CD3A99C();

            if (os_log_type_enabled(v95, v96))
            {
              v97 = swift_slowAlloc();
              v98 = swift_slowAlloc();
              v128 = v98;
              *v97 = 136315138;
              v99 = v127;
              *(v97 + 4) = sub_26CCF188C(v127, v8, &v128);
              _os_log_impl(&dword_26CC14000, v95, v96, "contentRating is not specified for entityId: %s", v97, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v98);
              MEMORY[0x26D6AE340](v98, -1, -1);
              MEMORY[0x26D6AE340](v97, -1, -1);

              v93 = 0;
LABEL_112:
              *(a2 + 16) = 0;
              *(a2 + 24) = 0;
              *(a2 + 122) = 0;
              *a2 = v99;
              *(a2 + 8) = v8;
              *(a2 + 32) = v124;
              *(a2 + 40) = v123;
              *(a2 + 48) = v122;
              *(a2 + 56) = v121;
              *(a2 + 64) = v120;
              *(a2 + 72) = v119;
              *(a2 + 80) = v118;
              *(a2 + 88) = v117;
              *(a2 + 96) = v80;
              *(a2 + 104) = v116;
              *(a2 + 112) = v115;
              *(a2 + 121) = v93 & 1;
              *(a2 + 120) = 0;
              return;
            }

            goto LABEL_109;
          }

          v77 = v128;
          v78 = v129;

          v79 = sub_26CD3AD9C();

          if (v79)
          {
            if (v79 != 1)
            {

              v80 = 2;
LABEL_98:
              v114 = v80;
              if (*(v4 + 2656) != -1)
              {
                swift_once();
              }

              v101 = sub_26CD3A44C();
              __swift_project_value_buffer(v101, qword_2804D1538);

              v102 = sub_26CD3A42C();
              v103 = sub_26CD3A98C();

              v113 = v103;
              if (os_log_type_enabled(v102, v103))
              {
                v104 = swift_slowAlloc();
                v105 = swift_slowAlloc();
                v128 = v105;
                *v104 = 136315394;
                v106 = sub_26CCF188C(v77, v78, &v128);

                *(v104 + 4) = v106;
                *(v104 + 12) = 2080;
                *(v104 + 14) = sub_26CCF188C(v127, v8, &v128);
                _os_log_impl(&dword_26CC14000, v102, v113, "Unsupported Song type: %s. entityId: %s", v104, 0x16u);
                swift_arrayDestroy();
                MEMORY[0x26D6AE340](v105, -1, -1);
                v107 = v104;
                v12 = v125;
                MEMORY[0x26D6AE340](v107, -1, -1);
              }

              else
              {
              }

              v80 = v114;
              goto LABEL_82;
            }

            v80 = 1;
          }

          else
          {
            v80 = 0;
          }

          v100 = sub_26CD3AFDC();

          if ((v100 & 1) == 0)
          {

            goto LABEL_82;
          }

          goto LABEL_98;
        }
      }
    }

    if (qword_2804BBA60 != -1)
    {
      swift_once();
    }

    v24 = sub_26CD3A44C();
    __swift_project_value_buffer(v24, qword_2804D1538);

    v25 = sub_26CD3A42C();
    v26 = sub_26CD3A98C();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v128 = v28;
      *v27 = 136315138;
      *(v27 + 4) = sub_26CCF188C(v9, v8, &v128);
      _os_log_impl(&dword_26CC14000, v25, v26, "Song data is missing for entityId: %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v28);
      MEMORY[0x26D6AE340](v28, -1, -1);
      MEMORY[0x26D6AE340](v27, -1, -1);
    }

    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 122) = 0;
    *a2 = v9;
    *(a2 + 8) = v8;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 80) = 0u;
    *(a2 + 96) = 3;
    *(a2 + 104) = 0;
    *(a2 + 112) = 0;
    *(a2 + 120) = 0;
  }

  else
  {
    if (qword_2804BBA60 != -1)
    {
      swift_once();
    }

    v19 = sub_26CD3A44C();
    __swift_project_value_buffer(v19, qword_2804D1538);
    v20 = sub_26CD3A42C();
    v21 = sub_26CD3A98C();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_26CC14000, v20, v21, "Song entity ID is missing", v22, 2u);
      MEMORY[0x26D6AE340](v22, -1, -1);
    }

    sub_26CCD4200();
    swift_allocError();
    *v23 = 7;
    swift_willThrow();
  }
}

uint64_t sub_26CCD3C70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (!*(a1 + 16) || (v5 = sub_26CC181C4(7107189, 0xE300000000000000), (v6 & 1) == 0) || (v35 = *(*(a1 + 56) + 8 * v5), swift_unknownObjectRetain(), (swift_dynamicCast() & 1) == 0))
  {
    if (qword_2804BBA60 != -1)
    {
      swift_once();
    }

    v19 = sub_26CD3A44C();
    __swift_project_value_buffer(v19, qword_2804D1538);
    v20 = sub_26CD3A42C();
    v21 = sub_26CD3A98C();
    if (!os_log_type_enabled(v20, v21))
    {
      v23 = 4;
      goto LABEL_29;
    }

    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_26CC14000, v20, v21, "Image url is missing", v22, 2u);
    v23 = 4;
LABEL_27:
    MEMORY[0x26D6AE340](v22, -1, -1);
LABEL_29:

    sub_26CCD4200();
    swift_allocError();
    *v24 = v23;
    return swift_willThrow();
  }

  if (!*(a1 + 16) || (v7 = v32, sub_26CC181C4(0x6874646977, 0xE500000000000000), (v8 & 1) == 0) || (swift_unknownObjectRetain(), (swift_dynamicCast() & 1) == 0))
  {

    if (qword_2804BBA60 != -1)
    {
      swift_once();
    }

    v25 = sub_26CD3A44C();
    __swift_project_value_buffer(v25, qword_2804D1538);
    v20 = sub_26CD3A42C();
    v26 = sub_26CD3A98C();
    if (!os_log_type_enabled(v20, v26))
    {
      v23 = 5;
      goto LABEL_29;
    }

    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_26CC14000, v20, v26, "Image width is missing", v22, 2u);
    v23 = 5;
    goto LABEL_27;
  }

  if (!*(a1 + 16) || (v9 = v35, v10 = sub_26CC181C4(0x746867696568, 0xE600000000000000), (v11 & 1) == 0) || (v33 = *(*(a1 + 56) + 8 * v10), swift_unknownObjectRetain(), result = swift_dynamicCast(), (result & 1) == 0))
  {

    if (qword_2804BBA60 != -1)
    {
      swift_once();
    }

    v27 = sub_26CD3A44C();
    __swift_project_value_buffer(v27, qword_2804D1538);
    v20 = sub_26CD3A42C();
    v28 = sub_26CD3A98C();
    if (!os_log_type_enabled(v20, v28))
    {
      v23 = 6;
      goto LABEL_29;
    }

    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_26CC14000, v20, v28, "Image height is missing", v22, 2u);
    v23 = 6;
    goto LABEL_27;
  }

  v13 = v35;
  if (*(a1 + 16))
  {
    result = sub_26CC181C4(860910441, 0xE400000000000000);
    v14 = 2;
    if (v15)
    {
      v33 = *(*(a1 + 56) + 8 * result);
      swift_unknownObjectRetain();
      result = swift_dynamicCast();
      if (result)
      {
        v14 = v35;
      }

      else
      {
        v14 = 2;
      }
    }

    if (*(a1 + 16))
    {
      v31 = v14;
      result = sub_26CC181C4(0x726F6C6F43656F6ALL, 0xE800000000000000);
      if (v16)
      {
        v35 = *(*(a1 + 56) + 8 * result);
        swift_unknownObjectRetain();
        result = swift_dynamicCast();
        if (result)
        {
          v17 = v33;
        }

        else
        {
          v17 = 0;
        }

        if (result)
        {
          v18 = v34;
        }

        else
        {
          v18 = 0;
        }
      }

      else
      {
        v17 = 0;
        v18 = 0;
      }

      if (*(a1 + 16))
      {
        result = sub_26CC181C4(0xD000000000000014, 0x800000026CD4DE30);
        v29 = 2;
        if (v30)
        {
          swift_unknownObjectRetain();
          result = swift_dynamicCast();
          if (result)
          {
            v29 = v35;
          }

          else
          {
            v29 = 2;
          }
        }
      }

      else
      {
        v29 = 2;
      }

      v14 = v31;
    }

    else
    {
      v18 = 0;
      v17 = 0;
      v29 = 2;
    }
  }

  else
  {
    v18 = 0;
    v17 = 0;
    v14 = 2;
    v29 = 2;
  }

  *a2 = v13;
  *(a2 + 4) = v9;
  *(a2 + 8) = v14;
  *(a2 + 16) = v17;
  *(a2 + 24) = v18;
  *(a2 + 32) = v29;
  *(a2 + 40) = v7;
  *(a2 + 48) = v34;
  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_26CCD4200()
{
  result = qword_2804BD820;
  if (!qword_2804BD820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BD820);
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

void *sub_26CCD42B8(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  if (a1)
  {
    if (!*(a1 + 16) || (sub_26CC181C4(0x73656D617266, 0xE600000000000000), (v4 & 1) == 0) || (swift_unknownObjectRetain(), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD830, &unk_26CD47380), (swift_dynamicCast() & 1) == 0))
    {
      if (qword_2804BBA60 != -1)
      {
        goto LABEL_39;
      }

      goto LABEL_27;
    }

    v5 = *(v27 + 16);
    if (v5)
    {
      v6 = 0;
      v7 = MEMORY[0x277D84F90];
      while (1)
      {
        if (v6 >= *(v27 + 16))
        {
          __break(1u);
LABEL_39:
          swift_once();
LABEL_27:
          v20 = sub_26CD3A44C();
          __swift_project_value_buffer(v20, qword_2804D1538);
          v21 = sub_26CD3A42C();
          v22 = sub_26CD3A98C();
          if (os_log_type_enabled(v21, v22))
          {
            v23 = swift_slowAlloc();
            *v23 = 0;
            v24 = "Frames missing in visual entity mappings";
            goto LABEL_33;
          }

          goto LABEL_34;
        }

        v8 = *(v27 + 32 + 8 * v6);
        if (!*(v8 + 16))
        {
          goto LABEL_19;
        }

        sub_26CC181C4(0x7472617473, 0xE500000000000000);
        if ((v9 & 1) == 0)
        {
          break;
        }

        swift_unknownObjectRetain();
        if ((swift_dynamicCast() & 1) == 0)
        {
          break;
        }

        if (!*(v8 + 16))
        {
          break;
        }

        sub_26CC181C4(6581861, 0xE300000000000000);
        if ((v10 & 1) == 0)
        {
          break;
        }

        swift_unknownObjectRetain();
        if ((swift_dynamicCast() & 1) == 0)
        {
          break;
        }

        if (qword_2804BBA60 != -1)
        {
          swift_once();
        }

        v11 = sub_26CD3A44C();
        __swift_project_value_buffer(v11, qword_2804D1538);
        v12 = sub_26CD3A42C();
        v13 = sub_26CD3A99C();
        if (!os_log_type_enabled(v12, v13))
        {
          goto LABEL_24;
        }

        v14 = swift_slowAlloc();
        *v14 = 0;
        v15 = v13;
        v16 = v12;
        v17 = "Skipping frame as start and end are same";
LABEL_23:
        _os_log_impl(&dword_26CC14000, v16, v15, v17, v14, 2u);
        MEMORY[0x26D6AE340](v14, -1, -1);
LABEL_24:

        if (++v6 == v5)
        {

          return v7;
        }
      }

LABEL_19:
      if (qword_2804BBA60 != -1)
      {
        swift_once();
      }

      v18 = sub_26CD3A44C();
      __swift_project_value_buffer(v18, qword_2804D1538);
      v12 = sub_26CD3A42C();
      v19 = sub_26CD3A98C();
      if (!os_log_type_enabled(v12, v19))
      {
        goto LABEL_24;
      }

      v14 = swift_slowAlloc();
      *v14 = 0;
      v15 = v19;
      v16 = v12;
      v17 = "Start or end time missing";
      goto LABEL_23;
    }
  }

  else
  {
    if (qword_2804BBA60 != -1)
    {
      swift_once();
    }

    v25 = sub_26CD3A44C();
    __swift_project_value_buffer(v25, qword_2804D1538);
    v21 = sub_26CD3A42C();
    v22 = sub_26CD3A98C();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      v24 = "Visual entity mappings not found";
LABEL_33:
      _os_log_impl(&dword_26CC14000, v21, v22, v24, v23, 2u);
      MEMORY[0x26D6AE340](v23, -1, -1);
    }

LABEL_34:
  }

  return MEMORY[0x277D84F90];
}

unint64_t sub_26CCD4E0C(uint64_t a1, uint64_t a2, double a3)
{
  v4 = v3;
  if (a1)
  {
    if (!*(a1 + 16) || (sub_26CC181C4(0x794273656D617266, 0xEF73656C61636F4CLL), (v5 & 1) == 0) || (swift_unknownObjectRetain(), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD830, &unk_26CD47380), (swift_dynamicCast() & 1) == 0))
    {
      if (qword_2804BBA60 != -1)
      {
        goto LABEL_80;
      }

      goto LABEL_68;
    }

    v6 = v73;
    v7 = *(v73 + 16);
    if (v7)
    {
      v8 = 0;
      v9 = v73 + 32;
      v72 = MEMORY[0x277D84F98];
      while (1)
      {
        if (v8 >= *(v6 + 16))
        {
          __break(1u);
LABEL_77:
          __break(1u);
LABEL_78:
          __break(1u);
LABEL_79:
          __break(1u);
LABEL_80:
          swift_once();
LABEL_68:
          v58 = sub_26CD3A44C();
          __swift_project_value_buffer(v58, qword_2804D1538);
          v59 = sub_26CD3A42C();
          v60 = sub_26CD3A98C();
          if (os_log_type_enabled(v59, v60))
          {
            v61 = swift_slowAlloc();
            *v61 = 0;
            v62 = "Frames by locales missing in audio entity mappings";
            goto LABEL_73;
          }

          goto LABEL_74;
        }

        v10 = *(v9 + 8 * v8);
        if (!*(v10 + 16))
        {
          goto LABEL_36;
        }

        sub_26CC181C4(0x73656C61636F6CLL, 0xE700000000000000);
        if ((v11 & 1) == 0)
        {
          break;
        }

        swift_unknownObjectRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
        if ((swift_dynamicCast() & 1) == 0)
        {
          break;
        }

        if (*(v10 + 16) && (sub_26CC181C4(0x73656D617266, 0xE600000000000000), (v12 & 1) != 0))
        {
          swift_unknownObjectRetain();

          if (swift_dynamicCast())
          {
            v13 = v73;
            v68 = v9;
            v69 = *(v73 + 16);
            if (v69)
            {
              v65 = v6;
              v14 = 0;
              v71 = MEMORY[0x277D84F90];
              while (1)
              {
                if (v14 >= *(v13 + 16))
                {
                  goto LABEL_77;
                }

                v15 = v13;
                v16 = *(v73 + 32 + 8 * v14);
                if (!*(v16 + 16))
                {
                  goto LABEL_28;
                }

                sub_26CC181C4(0x7472617473, 0xE500000000000000);
                if ((v17 & 1) == 0)
                {
                  break;
                }

                swift_unknownObjectRetain();
                if ((swift_dynamicCast() & 1) == 0)
                {
                  break;
                }

                if (!*(v16 + 16))
                {
                  break;
                }

                sub_26CC181C4(6581861, 0xE300000000000000);
                if ((v18 & 1) == 0)
                {
                  break;
                }

                swift_unknownObjectRetain();
                if ((swift_dynamicCast() & 1) == 0)
                {
                  break;
                }

                if (qword_2804BBA60 != -1)
                {
                  swift_once();
                }

                v19 = sub_26CD3A44C();
                __swift_project_value_buffer(v19, qword_2804D1538);
                v20 = sub_26CD3A42C();
                v21 = sub_26CD3A99C();
                if (!os_log_type_enabled(v20, v21))
                {
                  goto LABEL_33;
                }

                v22 = swift_slowAlloc();
                *v22 = 0;
                v23 = v21;
                v24 = v20;
                v25 = "Skipping frame as start and end are same";
LABEL_32:
                _os_log_impl(&dword_26CC14000, v24, v23, v25, v22, 2u);
                MEMORY[0x26D6AE340](v22, -1, -1);
LABEL_33:

                v13 = v15;
                if (++v14 == v69)
                {

                  v6 = v65;
                  v9 = v68;
                  goto LABEL_50;
                }
              }

LABEL_28:
              if (qword_2804BBA60 != -1)
              {
                swift_once();
              }

              v26 = sub_26CD3A44C();
              __swift_project_value_buffer(v26, qword_2804D1538);
              v20 = sub_26CD3A42C();
              v27 = sub_26CD3A98C();
              if (!os_log_type_enabled(v20, v27))
              {
                goto LABEL_33;
              }

              v22 = swift_slowAlloc();
              *v22 = 0;
              v23 = v27;
              v24 = v20;
              v25 = "Start or end time missing";
              goto LABEL_32;
            }

            v71 = MEMORY[0x277D84F90];
LABEL_50:
            v37 = v73;
            v70 = *(v73 + 16);
            if (v70)
            {
              v66 = v8;
              v67 = v4;
              v38 = 0;
              v39 = (v73 + 40);
              while (1)
              {
                if (v38 >= *(v37 + 16))
                {
                  goto LABEL_78;
                }

                v41 = v7;
                v42 = v6;
                v44 = *(v39 - 1);
                v43 = *v39;

                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v46 = sub_26CC181C4(v44, v43);
                v48 = v72[2];
                v49 = (v47 & 1) == 0;
                v50 = __OFADD__(v48, v49);
                v51 = v48 + v49;
                if (v50)
                {
                  goto LABEL_79;
                }

                v52 = v47;
                if (v72[3] < v51)
                {
                  break;
                }

                if (isUniquelyReferenced_nonNull_native)
                {
                  goto LABEL_60;
                }

                v57 = v46;
                sub_26CD37734();
                v46 = v57;
                if (v52)
                {
LABEL_52:
                  v40 = v46;

                  *(v72[7] + 8 * v40) = v71;

                  goto LABEL_53;
                }

LABEL_61:
                v72[(v46 >> 6) + 8] |= 1 << v46;
                v54 = (v72[6] + 16 * v46);
                *v54 = v44;
                v54[1] = v43;
                *(v72[7] + 8 * v46) = v71;
                v55 = v72[2];
                v50 = __OFADD__(v55, 1);
                v56 = v55 + 1;
                if (v50)
                {
                  __break(1u);
                  goto LABEL_82;
                }

                v72[2] = v56;
LABEL_53:
                ++v38;
                v39 += 2;
                v9 = v68;
                v6 = v42;
                v7 = v41;
                v8 = v66;
                v37 = v73;
                if (v70 == v38)
                {

                  v4 = v67;
                  goto LABEL_42;
                }
              }

              sub_26CD358A0(v51, isUniquelyReferenced_nonNull_native);
              v46 = sub_26CC181C4(v44, v43);
              if ((v52 & 1) != (v53 & 1))
              {
                result = sub_26CD3B02C();
                __break(1u);
                return result;
              }

LABEL_60:
              if (v52)
              {
                goto LABEL_52;
              }

              goto LABEL_61;
            }

            goto LABEL_42;
          }
        }

        else
        {
        }

        if (qword_2804BBA60 != -1)
        {
          swift_once();
        }

        v35 = sub_26CD3A44C();
        __swift_project_value_buffer(v35, qword_2804D1538);
        v29 = sub_26CD3A42C();
        v36 = sub_26CD3A98C();
        if (os_log_type_enabled(v29, v36))
        {
          v31 = swift_slowAlloc();
          *v31 = 0;
          v32 = v36;
          v33 = v29;
          v34 = "No frames found for audio entities";
          goto LABEL_40;
        }

LABEL_41:

LABEL_42:
        if (++v8 == v7)
        {

          return v72;
        }
      }

LABEL_36:
      if (qword_2804BBA60 != -1)
      {
        swift_once();
      }

      v28 = sub_26CD3A44C();
      __swift_project_value_buffer(v28, qword_2804D1538);
      v29 = sub_26CD3A42C();
      v30 = sub_26CD3A98C();
      if (!os_log_type_enabled(v29, v30))
      {
        goto LABEL_41;
      }

      v31 = swift_slowAlloc();
      *v31 = 0;
      v32 = v30;
      v33 = v29;
      v34 = "No locales found for audio entities";
LABEL_40:
      _os_log_impl(&dword_26CC14000, v33, v32, v34, v31, 2u);
      MEMORY[0x26D6AE340](v31, -1, -1);
      goto LABEL_41;
    }

    return MEMORY[0x277D84F98];
  }

  else
  {
    if (qword_2804BBA60 != -1)
    {
LABEL_82:
      swift_once();
    }

    v63 = sub_26CD3A44C();
    __swift_project_value_buffer(v63, qword_2804D1538);
    v59 = sub_26CD3A42C();
    v60 = sub_26CD3A98C();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      v62 = "Audio entity mappings not found";
LABEL_73:
      _os_log_impl(&dword_26CC14000, v59, v60, v62, v61, 2u);
      MEMORY[0x26D6AE340](v61, -1, -1);
    }

LABEL_74:

    return sub_26CC3290C(MEMORY[0x277D84F90]);
  }
}

uint64_t sub_26CCD5E38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA00, &qword_26CD3D510);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_26CC1B4DC(a3, v25 - v10, &qword_2804BCA00, &qword_26CD3D510);
  v12 = sub_26CD3A86C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_26CC1B544(v11, &qword_2804BCA00, &qword_26CD3D510);
  }

  else
  {
    sub_26CD3A85C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_26CD3A80C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_26CD3A61C() + 32;
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

      sub_26CC1B544(a3, &qword_2804BCA00, &qword_26CD3D510);

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

  sub_26CC1B544(a3, &qword_2804BCA00, &qword_26CD3D510);
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

uint64_t sub_26CCD6138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA00, &qword_26CD3D510);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_26CC1B4DC(a3, v25 - v10, &qword_2804BCA00, &qword_26CD3D510);
  v12 = sub_26CD3A86C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_26CC1B544(v11, &qword_2804BCA00, &qword_26CD3D510);
  }

  else
  {
    sub_26CD3A85C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_26CD3A80C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_26CD3A61C() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD890, &qword_26CD47700);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_26CC1B544(a3, &qword_2804BCA00, &qword_26CD3D510);

      return v22;
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

  sub_26CC1B544(a3, &qword_2804BCA00, &qword_26CD3D510);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD890, &qword_26CD47700);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

void sub_26CCD644C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v3;
    sub_26CD38C60(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v14;
  }

  else
  {
    v9 = sub_26CC181C4(a2, a3);
    v11 = v10;

    if (v11)
    {
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v4;
      v15 = *v4;
      if (!v12)
      {
        sub_26CD368BC();
        v13 = v15;
      }

      sub_26CD37F2C(v9, v13);
      *v4 = v13;
    }
  }
}

void sub_26CCD6544(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCCF8, &unk_26CD42A78);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v15 - v8;
  v10 = type metadata accessor for UpNextDelta.ContinuationContentMetadata(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v13 + 48))(a1, 1) == 1)
  {
    sub_26CC1B544(a1, &qword_2804BCCF8, &unk_26CD42A78);
    sub_26CD2B738(a2, a3, v9);

    sub_26CC1B544(v9, &qword_2804BCCF8, &unk_26CD42A78);
  }

  else
  {
    sub_26CCE6774(a1, v12, type metadata accessor for UpNextDelta.ContinuationContentMetadata);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v3;
    sub_26CD39210(v12, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v16;
  }
}

uint64_t sub_26CCD6718(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD840, &qword_26CD473F0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBD30, &qword_26CD47400);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - v10;
  if ((*(v9 + 48))(a1, 1, v8) == 1)
  {
    sub_26CC1B544(a1, &qword_2804BD840, &qword_26CD473F0);
    sub_26CD2B890(a2, v7);
    v12 = sub_26CD3A20C();
    (*(*(v12 - 8) + 8))(a2, v12);
    return sub_26CC1B544(v7, &qword_2804BD840, &qword_26CD473F0);
  }

  else
  {
    (*(v9 + 32))(v11, a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_26CD39374(v11, a2, isUniquelyReferenced_nonNull_native);
    v15 = sub_26CD3A20C();
    result = (*(*(v15 - 8) + 8))(a2, v15);
    *v2 = v17;
  }

  return result;
}

uint64_t TimedMetadataVendor.PlaybackState.currentElapsedTime.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA90, &qword_26CD3C200);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v14 - v2;
  v4 = sub_26CD3A1EC();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - v9;
  v11 = type metadata accessor for TimedMetadataVendor.PlaybackState(0);
  sub_26CC1B4DC(v0 + *(v11 + 20), v3, &qword_2804BCA90, &qword_26CD3C200);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    return sub_26CC1B544(v3, &qword_2804BCA90, &qword_26CD3C200);
  }

  (*(v5 + 32))(v10, v3, v4);
  sub_26CD3A1DC();
  sub_26CD3A10C();
  v13 = *(v5 + 8);
  v13(v8, v4);
  return (v13)(v10, v4);
}

uint64_t sub_26CCD6B88@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC13TVAppServices19TimedMetadataVendor_playbackState;
  swift_beginAccess();
  return sub_26CC1B4DC(v1 + v3, a1, &qword_2804BD748, &qword_26CD46340);
}

uint64_t sub_26CCD6BF0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13TVAppServices19TimedMetadataVendor_playbackState;
  swift_beginAccess();
  sub_26CCC2E8C(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t TimedMetadataVendor.PlaybackState.init(elapsedTime:elapsedTimeTimestamp:playbackRate:audioLanguageCode:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, double *a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  *a4 = a5;
  v11 = type metadata accessor for TimedMetadataVendor.PlaybackState(0);
  result = sub_26CC16D64(a1, a4 + v11[5], &qword_2804BCA90, &qword_26CD3C200);
  *(a4 + v11[6]) = a6;
  v13 = (a4 + v11[7]);
  *v13 = a2;
  v13[1] = a3;
  return result;
}

double sub_26CCD6CDC()
{
  v1 = OBJC_IVAR____TtC13TVAppServices19TimedMetadataVendor_internalTimedEntityMappingTask;
  if (*(v0 + OBJC_IVAR____TtC13TVAppServices19TimedMetadataVendor_internalTimedEntityMappingTask))
  {

    sub_26CD3A8DC();
  }

  *(v0 + v1) = 0;

  v2 = OBJC_IVAR____TtC13TVAppServices19TimedMetadataVendor_loadingTasks;
  swift_beginAccess();
  v3 = *(*(v0 + v2) + 16);
  if (v3)
  {

    v4 = 32;
    do
    {

      sub_26CD3A8DC();

      v4 += 8;
      --v3;
    }

    while (v3);
  }

  *(v0 + v2) = MEMORY[0x277D84F90];

  return result;
}

uint64_t TimedMetadataVendor.TimedMetadataFetchParams.init(programID:adamID:contentId:playablePassThrough:featureStartTime:rawData:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, uint64_t a11, uint64_t a12)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 72) = a11;
  *(a9 + 80) = a12;
  return result;
}

uint64_t TimedMetadataVendor.init()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA00, &qword_26CD3D510);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = aBlock - v3;
  v5 = OBJC_IVAR____TtC13TVAppServices19TimedMetadataVendor_playbackState;
  v6 = type metadata accessor for TimedMetadataVendor.PlaybackState(0);
  (*(*(v6 - 8) + 56))(v1 + v5, 1, 1, v6);
  *(v1 + OBJC_IVAR____TtC13TVAppServices19TimedMetadataVendor_timedMetadataFetcher) = 0;
  v7 = v1 + OBJC_IVAR____TtC13TVAppServices19TimedMetadataVendor_smoothingConfig;
  *v7 = xmmword_26CD47390;
  *(v7 + 16) = xmmword_26CD473A0;
  *(v7 + 32) = 0x404E000000000000;
  *(v1 + OBJC_IVAR____TtC13TVAppServices19TimedMetadataVendor_fetcherDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + OBJC_IVAR____TtC13TVAppServices19TimedMetadataVendor_timedMetadata) = 0;
  v8 = OBJC_IVAR____TtC13TVAppServices19TimedMetadataVendor_entityMappingContinuations;
  v9 = MEMORY[0x277D84F90];
  *(v1 + v8) = sub_26CC326E0(MEMORY[0x277D84F90]);
  *(v1 + OBJC_IVAR____TtC13TVAppServices19TimedMetadataVendor_contIdsForFiringAtEveryRawDataBoundary) = MEMORY[0x277D84FA0];
  *(v1 + OBJC_IVAR____TtC13TVAppServices19TimedMetadataVendor_loadingTasks) = v9;
  v10 = OBJC_IVAR____TtC13TVAppServices19TimedMetadataVendor_internalTimedEntityMappingTask;
  *(v1 + OBJC_IVAR____TtC13TVAppServices19TimedMetadataVendor_internalTimedEntityMappingTask) = 0;
  v11 = (v1 + OBJC_IVAR____TtC13TVAppServices19TimedMetadataVendor_currentEntityMappingSnapshot);
  sub_26CCE557C(v30);
  v12 = v30[5];
  v11[4] = v30[4];
  v11[5] = v12;
  v13 = v30[7];
  v11[6] = v30[6];
  v11[7] = v13;
  v14 = v30[1];
  *v11 = v30[0];
  v11[1] = v14;
  v15 = v30[3];
  v11[2] = v30[2];
  v11[3] = v15;
  v16 = OBJC_IVAR____TtC13TVAppServices19TimedMetadataVendor_timedMetadataNotificationObserver;
  *(v1 + OBJC_IVAR____TtC13TVAppServices19TimedMetadataVendor_timedMetadataNotificationObserver) = 0;
  sub_26CD3A43C();
  v17 = sub_26CD3A86C();
  (*(*(v17 - 8) + 56))(v4, 1, 1, v17);
  v18 = swift_allocObject();
  swift_weakInit();
  sub_26CD3A84C();

  v19 = sub_26CD3A83C();
  v20 = swift_allocObject();
  v21 = MEMORY[0x277D85700];
  v20[2] = v19;
  v20[3] = v21;
  v20[4] = v18;

  *(v1 + v10) = sub_26CCD5E38(0, 0, v4, &unk_26CD473E0, v20);

  v22 = [objc_opt_self() defaultCenter];
  if (qword_280BB9BB0 != -1)
  {
    swift_once();
  }

  v23 = qword_280BB9BB8;
  v24 = [objc_opt_self() mainQueue];
  v25 = swift_allocObject();
  swift_weakInit();

  aBlock[4] = sub_26CCE5650;
  aBlock[5] = v25;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26CCDC2A8;
  aBlock[3] = &block_descriptor_9;
  v26 = _Block_copy(aBlock);

  v27 = [v22 addObserverForName:v23 object:0 queue:v24 usingBlock:v26];
  _Block_release(v26);

  *(v1 + v16) = v27;
  swift_unknownObjectRelease();
  return v1;
}

uint64_t TimedMetadataVendor.deinit()
{
  v1 = *(v0 + OBJC_IVAR____TtC13TVAppServices19TimedMetadataVendor_timedMetadataNotificationObserver);
  if (v1)
  {
    v2 = objc_opt_self();
    swift_unknownObjectRetain();
    v3 = [v2 defaultCenter];
    [v3 removeObserver_];
    swift_unknownObjectRelease();
  }

  sub_26CC1B544(v0 + OBJC_IVAR____TtC13TVAppServices19TimedMetadataVendor_playbackState, &qword_2804BD748, &qword_26CD46340);

  sub_26CC7BC78(v0 + OBJC_IVAR____TtC13TVAppServices19TimedMetadataVendor_fetcherDelegate);

  v4 = *(v0 + OBJC_IVAR____TtC13TVAppServices19TimedMetadataVendor_currentEntityMappingSnapshot + 80);
  v11[4] = *(v0 + OBJC_IVAR____TtC13TVAppServices19TimedMetadataVendor_currentEntityMappingSnapshot + 64);
  v11[5] = v4;
  v5 = *(v0 + OBJC_IVAR____TtC13TVAppServices19TimedMetadataVendor_currentEntityMappingSnapshot + 112);
  v11[6] = *(v0 + OBJC_IVAR____TtC13TVAppServices19TimedMetadataVendor_currentEntityMappingSnapshot + 96);
  v11[7] = v5;
  v6 = *(v0 + OBJC_IVAR____TtC13TVAppServices19TimedMetadataVendor_currentEntityMappingSnapshot + 16);
  v11[0] = *(v0 + OBJC_IVAR____TtC13TVAppServices19TimedMetadataVendor_currentEntityMappingSnapshot);
  v11[1] = v6;
  v7 = *(v0 + OBJC_IVAR____TtC13TVAppServices19TimedMetadataVendor_currentEntityMappingSnapshot + 48);
  v11[2] = *(v0 + OBJC_IVAR____TtC13TVAppServices19TimedMetadataVendor_currentEntityMappingSnapshot + 32);
  v11[3] = v7;
  sub_26CC1B544(v11, &qword_2804BD838, &qword_26CD473E8);
  swift_unknownObjectRelease();
  v8 = OBJC_IVAR____TtC13TVAppServices19TimedMetadataVendor_logger;
  v9 = sub_26CD3A44C();
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  return v0;
}

uint64_t sub_26CCD742C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13TVAppServices19TimedMetadataVendor_timedMetadataFetcher;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

double sub_26CCD74E8@<D0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC13TVAppServices19TimedMetadataVendor_smoothingConfig;
  swift_beginAccess();
  result = *(v3 + 32);
  v5 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v5;
  *(a1 + 32) = result;
  return result;
}

__n128 sub_26CCD7540(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = v1 + OBJC_IVAR____TtC13TVAppServices19TimedMetadataVendor_smoothingConfig;
  swift_beginAccess();
  result = *a1;
  v6 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 16) = v6;
  *(v4 + 32) = v3;
  return result;
}

uint64_t sub_26CCD7650(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC13TVAppServices19TimedMetadataVendor_fetcherDelegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_26CCD76BC(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC13TVAppServices19TimedMetadataVendor_fetcherDelegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_26CCD775C;
}

void sub_26CCD775C(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_26CCD7894@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v42 = a1;
  v46 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD840, &qword_26CD473F0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v38 - v3;
  v5 = sub_26CD3A20C();
  v47 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5);
  v39 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v38 - v9;
  v43 = v11;
  MEMORY[0x28223BE20](v8);
  v13 = &v38 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD848, &qword_26CD473F8);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = (&v38 - v16);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBD30, &qword_26CD47400);
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v38 - v20;
  *v17 = 1;
  (*(v15 + 104))(v17, *MEMORY[0x277D85768], v14);
  sub_26CD3A87C();
  (*(v15 + 8))(v17, v14);
  sub_26CD3A1FC();
  v22 = *(v47 + 16);
  v45 = v13;
  v46 = v5;
  v23 = v5;
  v24 = v22;
  v22(v10, v13, v23);
  v40 = *(v19 + 16);
  v41 = v19 + 16;
  v40(v4, v21, v18);
  v25 = *(v19 + 56);
  v44 = v18;
  v25(v4, 0, 1, v18);
  swift_beginAccess();
  sub_26CCD6718(v4, v10);
  swift_endAccess();
  if (v42)
  {
    v26 = v39;
    v27 = v46;
    v24(v39, v45, v46);
    swift_beginAccess();
    sub_26CCDFA50(v10, v26);
    (*(v47 + 8))(v10, v27);
    swift_endAccess();
  }

  v28 = swift_allocObject();
  swift_weakInit();
  v30 = v45;
  v29 = v46;
  v24(v10, v45, v46);
  v31 = v47;
  v32 = (*(v47 + 80) + 24) & ~*(v47 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = v28;
  (*(v31 + 32))(v33 + v32, v10, v29);
  v34 = v44;
  sub_26CD3A88C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD850, &qword_26CD47408);
  v35 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_26CD3C1E0;
  v40((v36 + v35), v21, v34);
  sub_26CCD9CF8(v36);

  (*(v31 + 8))(v30, v29);
  return (*(v19 + 8))(v21, v34);
}

uint64_t sub_26CCD7DD4()
{
  v1 = v0;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD858, &qword_26CD47410);
  v181 = *(v163 - 8);
  MEMORY[0x28223BE20](v163);
  v162 = &v156 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBD30, &qword_26CD47400);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v178 = &v156 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v167 = &v156 - v7;
  v186 = sub_26CD3A20C();
  v173 = *(v186 - 8);
  v8 = MEMORY[0x28223BE20](v186);
  v185 = &v156 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v183 = &v156 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD860, &qword_26CD47418);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v172 = &v156 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v175 = &v156 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA90, &qword_26CD3C200);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v156 - v16;
  *&v184 = sub_26CD3A1EC();
  *&v182 = *(v184 - 8);
  v18 = MEMORY[0x28223BE20](v184);
  *&v180 = &v156 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  *&v179 = &v156 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD748, &qword_26CD46340);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v156 - v22;
  v24 = type metadata accessor for TimedMetadataVendor.PlaybackState(0);
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v158 = (&v156 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = OBJC_IVAR____TtC13TVAppServices19TimedMetadataVendor_timedMetadata;
  result = swift_beginAccess();
  v29 = *(v1 + v27);
  if (v29)
  {
    v166 = v4;
    v159 = v3;
    v30 = *(*v1 + 176);

    v30(v31);
    if ((*(v25 + 48))(v23, 1, v24) == 1)
    {

      return sub_26CC1B544(v23, &qword_2804BD748, &qword_26CD46340);
    }

    v157 = v29;
    v32 = v23;
    v33 = v158;
    sub_26CCE6774(v32, v158, type metadata accessor for TimedMetadataVendor.PlaybackState);
    sub_26CC1B4DC(v33 + *(v24 + 20), v17, &qword_2804BCA90, &qword_26CD3C200);
    v34 = v182;
    v35 = v184;
    v36 = (*(v182 + 48))(v17, 1, v184);
    *&v177 = v24;
    if (v36 == 1)
    {
      sub_26CC1B544(v17, &qword_2804BCA90, &qword_26CD3C200);
      v37 = *v33;
    }

    else
    {
      v38 = v179;
      (*(v34 + 32))(v179, v17, v35);
      v39 = *v33;
      v40 = v180;
      sub_26CD3A1DC();
      sub_26CD3A10C();
      v42 = v41;
      v43 = *(v34 + 8);
      v43(v40, v35);
      v43(v38, v35);
      v37 = v39 + v42 * *(v33 + *(v24 + 24));
    }

    v44 = v159;
    v45 = v185;
    v46 = v175;
    v47 = (v1 + OBJC_IVAR____TtC13TVAppServices19TimedMetadataVendor_currentEntityMappingSnapshot);
    swift_beginAccess();
    v48 = v47[1];
    v243 = *v47;
    v244 = v48;
    v49 = v47[3];
    v50 = v47[5];
    v247 = v47[4];
    v248 = v50;
    v51 = v47[7];
    v52 = v47[5];
    v249 = v47[6];
    v250 = v51;
    v53 = v47[3];
    v245 = v47[2];
    v246 = v53;
    v54 = *(&v243 + 1);
    *&v55 = v243;
    v56 = *(&v244 + 1);
    *&v57 = v244;
    v220 = v49;
    v219 = v245;
    v156 = v47;
    v224 = v47[7];
    v223 = v249;
    v222 = v52;
    v221 = v247;
    v251[4] = v247;
    v251[5] = v52;
    v251[6] = v249;
    v251[7] = v224;
    v251[2] = v245;
    v251[3] = v49;
    v251[0] = v243;
    v251[1] = v244;
    if (sub_26CCE56CC(v251) == 1 || !v56)
    {
      *&v235 = v55;
      *(&v235 + 1) = v54;
      *&v236 = v57;
      *(&v236 + 1) = v56;
      v239 = v221;
      v240 = v222;
      v241 = v223;
      v242 = v224;
      v237 = v219;
      v238 = v220;
      sub_26CC1B4DC(&v243, &v227, &qword_2804BD838, &qword_26CD473E8);
      sub_26CC1B544(&v235, &qword_2804BD838, &qword_26CD473E8);
    }

    else
    {
      v235 = __PAIR128__(*&v54, *&v55);
      v236 = __PAIR128__(v56, *&v57);
      v239 = v221;
      v240 = v222;
      v241 = v223;
      v242 = v224;
      v237 = v219;
      v238 = v220;
      sub_26CC1B4DC(&v243, &v227, &qword_2804BD838, &qword_26CD473E8);
      sub_26CC1B544(&v235, &qword_2804BD838, &qword_26CD473E8);
      if (v55 <= v37 && v37 < v57)
      {
LABEL_14:
        v59 = sub_26CD3A42C();
        v60 = sub_26CD3A99C();
        if (os_log_type_enabled(v59, v60))
        {
          v61 = swift_slowAlloc();
          *v61 = 134217984;
          *(v61 + 4) = v37;
          _os_log_impl(&dword_26CC14000, v59, v60, "playbackState.currentElapsedTime: %f", v61, 0xCu);
          MEMORY[0x26D6AE340](v61, -1, -1);
        }

        v62 = sub_26CD3A42C();
        v63 = sub_26CD3A99C();
        if (os_log_type_enabled(v62, v63))
        {
          v64 = swift_slowAlloc();
          *v64 = 134218496;
          *(v64 + 4) = v55;
          *(v64 + 12) = 2048;
          *(v64 + 14) = v57;
          *(v64 + 22) = 2048;
          *(v64 + 24) = v54;
          _os_log_impl(&dword_26CC14000, v62, v63, "In updateListenersAndBoundaryObserver, time range start - %f, end - %f and duration - %f", v64, 0x20u);
          MEMORY[0x26D6AE340](v64, -1, -1);
        }

        v65 = *(v177 + 28);
        v66 = v156[5];
        v67 = v156[3];
        v231 = v156[4];
        v232 = v66;
        v68 = v156[7];
        v69 = v156[5];
        v233 = v156[6];
        v234 = v68;
        v70 = v156[1];
        v227 = *v156;
        v228 = v70;
        v71 = v156[3];
        v229 = v156[2];
        v230 = v71;
        *&v198 = v55;
        *(&v198 + 1) = v54;
        *&v199 = v57;
        v242 = v156[7];
        v241 = v233;
        v240 = v69;
        v239 = v231;
        v72 = (v158 + v65);
        v73 = *v72;
        v74 = v72[1];
        v238 = v67;
        v237 = v229;
        v236 = v70;
        v235 = v227;
        v75 = sub_26CCE56CC(&v235);
        v76 = v186;
        if (v75 == 1)
        {
          v77 = 0;
          v78 = 0;
          v79 = 0uLL;
        }

        else
        {
          v184 = v235;
          v77 = v236;

          v79 = v184;
        }

        v205 = v79;
        *&v206 = v77;
        *(&v206 + 1) = v78;
        sub_26CC1B4DC(&v227, &v219, &qword_2804BD838, &qword_26CD473E8);
        v80 = v157;
        sub_26CCEDB2C(&v219, &v212, &v198, &v205, v37);

        v184 = v220;
        v182 = v213;
        v179 = v212;
        v180 = v219;
        swift_bridgeObjectRelease_n();
        if (v74)
        {
          v81 = *(v80 + 48);
          if (*(v81 + 16))
          {

            v82 = sub_26CC181C4(v73, v74);
            if (v83)
            {
              v84 = v44;
              v85 = *(*(v81 + 56) + 8 * v82);

              sub_26CCEE6B4(&v219, v85, v37);
              *&v171 = v86;

              v176 = v220;
              v177 = v219;
              v87 = *(&v220 + 1);
              swift_bridgeObjectRetain_n();
              swift_bridgeObjectRelease_n();
              if (!v87 || (v88 = *(v87 + 16), , !v88))
              {
                v223 = v231;
                v224 = v232;
                v225 = v233;
                v226 = v234;
                v219 = v227;
                v220 = v228;
                v221 = v229;
                v222 = v230;
                if (sub_26CCE56CC(&v219) == 1)
                {
LABEL_70:
                  v94 = v176;
                  v93 = v177;
                  v91 = v177;
                  v92 = v176;
                  goto LABEL_71;
                }

                if (*(&v226 + 1))
                {
                  if (*(*(&v226 + 1) + 16))
                  {
                    sub_26CC19A84(*(&v226 + 1) + 32, &v197);
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCAA0, &qword_26CD460E0);
                    if (swift_dynamicCast())
                    {
                      v209 = v216;
                      v210 = v217;
                      v211[0] = v218[0];
                      *(v211 + 11) = *(v218 + 11);
                      v205 = v212;
                      v206 = v213;
                      v207 = v214;
                      v208 = v215;
                      v89 = *(&v214 + 1);
                      if (*(&v214 + 1))
                      {
                        v90 = v207;

                        sub_26CCE57A0(&v205);
                        sub_26CCF0D84(v90, v89, &v188);

                        v195[4] = v192;
                        v195[5] = v193;
                        v196[0] = v194[0];
                        *(v196 + 11) = *(v194 + 11);
                        v195[0] = v188;
                        v195[1] = v189;
                        v195[2] = v190;
                        v195[3] = v191;
                        v198 = v188;
                        v199 = v189;
                        v200 = v190;
                        v201 = v191;
                        v202 = v192;
                        v203 = v193;
                        v204[0] = v194[0];
                        *(v204 + 11) = *(v194 + 11);
                        if (sub_26CC28EA8(&v198) != 1)
                        {
                          v192 = v202;
                          v193 = v203;
                          v194[0] = v204[0];
                          *(v194 + 11) = *(v204 + 11);
                          v188 = v198;
                          v189 = v199;
                          v190 = v200;
                          v191 = v201;
                          sub_26CCF0FF0(&v188, v73, v74, v171, v187, v37);
                          sub_26CC1B544(v195, &qword_2804BD870, &unk_26CD47430);
                          v170 = v187[1];
                          v171 = v187[0];

                          sub_26CC1B544(&v227, &qword_2804BD838, &qword_26CD473E8);
                          v92 = v176;
                          v91 = v177;
                          v94 = v170;
                          v93 = v171;
                          v76 = v186;
                          goto LABEL_71;
                        }

                        goto LABEL_74;
                      }

                      while (1)
                      {
                        sub_26CCE57A0(&v205);
LABEL_74:
                        sub_26CC1B544(&v227, &qword_2804BD838, &qword_26CD473E8);
                        v94 = v176;
                        v93 = v177;
                        v91 = v177;
                        v92 = v176;
                        v76 = v186;
LABEL_71:
                        v44 = v84;
LABEL_35:
                        v219 = v180;
                        v220 = v184;
                        v221 = v179;
                        v222 = v182;
                        v223 = v91;
                        v224 = v92;
                        v225 = v93;
                        v226 = v94;
                        v216 = v91;
                        v217 = v92;
                        v218[0] = v93;
                        v218[1] = v94;
                        v212 = v180;
                        v213 = v184;
                        v214 = v179;
                        v215 = v182;
                        LODWORD(v170) = sub_26CCDA9DC(&v212);
                        if (v170 >= 0x10000)
                        {
                          v216 = v223;
                          v217 = v224;
                          v218[0] = v225;
                          v218[1] = v226;
                          v212 = v219;
                          v213 = v220;
                          v214 = v221;
                          v215 = v222;
                          (*(*v1 + 480))(v170 & 1, (v170 >> 8) & 1, &v212);
                        }

                        v95 = OBJC_IVAR____TtC13TVAppServices19TimedMetadataVendor_entityMappingContinuations;
                        swift_beginAccess();
                        v96 = *(v1 + v95);
                        v97 = *(v96 + 64);
                        *&v171 = v96 + 64;
                        v98 = 1 << *(v96 + 32);
                        v99 = v98 < 64 ? ~(-1 << v98) : -1;
                        v84 = v99 & v97;
                        v100 = OBJC_IVAR____TtC13TVAppServices19TimedMetadataVendor_contIdsForFiringAtEveryRawDataBoundary;
                        v165 = v96;

                        v160 = v100;
                        swift_beginAccess();
                        v101 = 0;
                        v102 = (v98 + 63) >> 6;
                        *&v182 = v173 + 16;
                        v164 = v166 + 16;
                        *&v177 = v173 + 32;
                        *&v176 = v166 + 32;
                        *&v184 = v173 + 8;
                        v161 = (v181 + 8);
                        v168 = (v166 + 8);
                        v169 = v102;
                        v174 = v1;
                        v103 = v171;
                        if (v84)
                        {
                          break;
                        }

LABEL_45:
                        if (v102 <= v101 + 1)
                        {
                          v108 = v101 + 1;
                        }

                        else
                        {
                          v108 = v102;
                        }

                        v109 = v108 - 1;
                        while (1)
                        {
                          v107 = v101 + 1;
                          if (__OFADD__(v101, 1))
                          {
                            break;
                          }

                          if (v107 >= v102)
                          {
                            v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD868, &unk_26CD47420);
                            v124 = v172;
                            (*(*(v139 - 8) + 56))(v172, 1, 1, v139);
                            v84 = 0;
                            v101 = v109;
                            goto LABEL_54;
                          }

                          v84 = *(v103 + 8 * v107);
                          ++v101;
                          if (v84)
                          {
                            v101 = v107;
                            goto LABEL_53;
                          }
                        }

                        __break(1u);
                      }

                      while (1)
                      {
                        while (1)
                        {
                          v107 = v101;
LABEL_53:
                          v110 = __clz(__rbit64(v84));
                          v84 &= v84 - 1;
                          v111 = v110 | (v107 << 6);
                          v112 = v165;
                          v113 = v173;
                          v114 = v183;
                          (*(v173 + 16))(v183, *(v165 + 48) + *(v173 + 72) * v111, v76);
                          v115 = *(v112 + 56);
                          v117 = v166;
                          v116 = v167;
                          (*(v166 + 16))(v167, v115 + *(v166 + 72) * v111, v44);
                          v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD868, &unk_26CD47420);
                          v119 = v76;
                          v120 = *(v118 + 48);
                          v121 = *(v113 + 32);
                          v122 = v172;
                          v121(v172, v114, v119);
                          v123 = &v122[v120];
                          v124 = v122;
                          (*(v117 + 32))(v123, v116, v44);
                          (*(*(v118 - 8) + 56))(v122, 0, 1, v118);
                          v1 = v174;
                          v46 = v175;
                          v45 = v185;
LABEL_54:
                          sub_26CC16D64(v124, v46, &qword_2804BD860, &qword_26CD47418);
                          v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD868, &unk_26CD47420);
                          if ((*(*(v125 - 8) + 48))(v46, 1, v125) == 1)
                          {

                            v209 = v223;
                            v210 = v224;
                            v211[0] = v225;
                            v211[1] = v226;
                            v205 = v219;
                            v206 = v220;
                            v207 = v221;
                            v208 = v222;
                            nullsub_1();
                            v142 = v156;
                            v143 = v156[5];
                            v216 = v156[4];
                            v217 = v143;
                            v144 = v156[7];
                            v218[0] = v156[6];
                            v218[1] = v144;
                            v145 = v156[1];
                            v212 = *v156;
                            v213 = v145;
                            v146 = v156[3];
                            v214 = v156[2];
                            v215 = v146;
                            v147 = v205;
                            v148 = v206;
                            v149 = v208;
                            v156[2] = v207;
                            v142[3] = v149;
                            *v142 = v147;
                            v142[1] = v148;
                            v150 = v209;
                            v151 = v210;
                            v152 = v211[1];
                            v142[6] = v211[0];
                            v142[7] = v152;
                            v142[4] = v150;
                            v142[5] = v151;
                            sub_26CCE56F0(&v219, &v198);
                            sub_26CC1B544(&v212, &qword_2804BD838, &qword_26CD473E8);
                            v202 = v223;
                            v203 = v224;
                            v204[0] = v225;
                            v204[1] = v226;
                            v198 = v219;
                            v199 = v220;
                            v200 = v221;
                            v201 = v222;
                            v153 = sub_26CCDB300(&v198);
                            v155 = v154;
                            sub_26CCE574C(&v219);
                            (*(*v1 + 504))(v153, v155 & 1);

                            return sub_26CCC490C(v158);
                          }

                          v126 = *(v125 + 48);
                          v76 = v186;
                          (*v177)(v45, v46, v186);
                          v127 = v46 + v126;
                          v128 = v178;
                          (*v176)(v178, v127, v44);
                          if (v170 < 0x10000)
                          {
                            break;
                          }

                          v216 = v223;
                          v217 = v224;
                          v218[0] = v225;
                          v218[1] = v226;
                          v212 = v219;
                          v213 = v220;
                          v214 = v221;
                          v215 = v222;
                          sub_26CCE56F0(&v219, &v205);
                          v104 = v162;
                          sub_26CD3A89C();
                          v105 = v178;
                          v106 = v104;
                          v76 = v186;
                          (*v161)(v106, v163);
                          (*v168)(v105, v44);
LABEL_43:
                          (*v184)(v45, v76);
                          v102 = v169;
                          v103 = v171;
                          if (!v84)
                          {
                            goto LABEL_45;
                          }
                        }

                        v129 = v44;
                        v130 = *(v1 + v160);
                        if (!*(v130 + 16))
                        {
                          v44 = v129;
                          (*v168)(v128, v129);
                          goto LABEL_43;
                        }

                        sub_26CCE666C(&qword_280BBB1C0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);

                        v131 = sub_26CD3A52C();
                        v132 = -1 << *(v130 + 32);
                        v133 = v131 & ~v132;
                        v181 = v130 + 56;
                        if ((*(v130 + 56 + ((v133 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v133))
                        {
                          *&v179 = ~v132;
                          *&v180 = *(v173 + 72);
                          v134 = *(v173 + 16);
                          while (1)
                          {
                            v135 = v183;
                            v136 = v186;
                            v134(v183, *(v130 + 48) + v180 * v133, v186);
                            sub_26CCE666C(&qword_280BBB1B8, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
                            v137 = sub_26CD3A56C();
                            v138 = *v184;
                            (*v184)(v135, v136);
                            if (v137)
                            {
                              break;
                            }

                            v133 = (v133 + 1) & v179;
                            if (((*(v181 + ((v133 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v133) & 1) == 0)
                            {
                              goto LABEL_61;
                            }
                          }

                          v216 = v223;
                          v217 = v224;
                          v218[0] = v225;
                          v218[1] = v226;
                          v212 = v219;
                          v213 = v220;
                          v214 = v221;
                          v215 = v222;
                          sub_26CCE56F0(&v219, &v205);
                          v140 = v162;
                          v44 = v159;
                          v141 = v178;
                          sub_26CD3A89C();
                          (*v161)(v140, v163);
                          (*v168)(v141, v44);
                          v45 = v185;
                          v76 = v186;
                          v138(v185, v186);
                        }

                        else
                        {
LABEL_61:

                          v44 = v159;
                          (*v168)(v178, v159);
                          v45 = v185;
                          v76 = v186;
                          (*v184)(v185, v186);
                        }

                        v1 = v174;
                        v46 = v175;
                        v102 = v169;
                        v103 = v171;
                        if (!v84)
                        {
                          goto LABEL_45;
                        }
                      }
                    }
                  }
                }
              }

              sub_26CC1B544(&v227, &qword_2804BD838, &qword_26CD473E8);
              goto LABEL_70;
            }
          }
        }

        sub_26CC1B544(&v227, &qword_2804BD838, &qword_26CD473E8);
        v93 = 0uLL;
        v94 = 0uLL;
        v91 = 0uLL;
        v92 = 0uLL;
        goto LABEL_35;
      }
    }

    v58 = v1 + OBJC_IVAR____TtC13TVAppServices19TimedMetadataVendor_smoothingConfig;
    swift_beginAccess();
    v54 = *(v58 + 16);
    v57 = v37 + v54;
    v55 = v37;
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_26CCD9454()
{
  v1 = v0;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD858, &qword_26CD47410);
  v2 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v84 = &v66 - v3;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBD30, &qword_26CD47400);
  v80 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v88 = &v66 - v4;
  v87 = sub_26CD3A20C();
  v79 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v76 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD860, &qword_26CD47418);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v78 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v66 - v9;
  v11 = sub_26CD3A42C();
  v12 = sub_26CD3A99C();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_26CC14000, v11, v12, "Current media item changed.  Resetting timed metadata and loading metadata for new item", v13, 2u);
    MEMORY[0x26D6AE340](v13, -1, -1);
  }

  v14 = OBJC_IVAR____TtC13TVAppServices19TimedMetadataVendor_loadingTasks;
  swift_beginAccess();
  v15 = *(*(v1 + v14) + 16);
  v68 = v1;
  if (v15)
  {
    v86 = v2;

    v16 = 32;
    do
    {

      sub_26CD3A8DC();

      v16 += 8;
      --v15;
    }

    while (v15);

    v1 = v68;
    v2 = v86;
  }

  *(v1 + v14) = MEMORY[0x277D84F90];

  (*(*v1 + 208))(0);
  v17 = OBJC_IVAR____TtC13TVAppServices19TimedMetadataVendor_timedMetadata;
  swift_beginAccess();
  *(v1 + v17) = 0;

  sub_26CCE557C(v92);
  v18 = (v1 + OBJC_IVAR____TtC13TVAppServices19TimedMetadataVendor_currentEntityMappingSnapshot);
  swift_beginAccess();
  v19 = v18[5];
  v93[4] = v18[4];
  v93[5] = v19;
  v20 = v18[7];
  v93[6] = v18[6];
  v93[7] = v20;
  v21 = v18[1];
  v93[0] = *v18;
  v93[1] = v21;
  v22 = v18[3];
  v93[2] = v18[2];
  v93[3] = v22;
  v23 = v92[0];
  v24 = v92[1];
  v25 = v92[3];
  v18[2] = v92[2];
  v18[3] = v25;
  *v18 = v23;
  v18[1] = v24;
  v26 = v92[4];
  v27 = v92[5];
  v28 = v92[7];
  v18[6] = v92[6];
  v18[7] = v28;
  v18[4] = v26;
  v18[5] = v27;
  sub_26CC1B544(v93, &qword_2804BD838, &qword_26CD473E8);
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  v99 = 0u;
  v100 = 0u;
  v101 = 0u;
  v29 = OBJC_IVAR____TtC13TVAppServices19TimedMetadataVendor_entityMappingContinuations;
  swift_beginAccess();
  v67 = v29;
  v30 = *(v1 + v29);
  v31 = *(v30 + 64);
  v70 = v30 + 64;
  v32 = 1 << *(v30 + 32);
  v33 = -1;
  if (v32 < 64)
  {
    v33 = ~(-1 << v32);
  }

  v34 = v33 & v31;
  v69 = (v32 + 63) >> 6;
  v73 = v80 + 16;
  v74 = v79 + 16;
  v72 = v79 + 32;
  v35 = (v80 + 32);
  v82 = (v80 + 8);
  v83 = (v2 + 8);
  v81 = (v79 + 8);
  v77 = v30;

  v37 = 0;
  v38 = v78;
  v75 = v10;
  v71 = v35;
  if (v34)
  {
    while (1)
    {
      v39 = v37;
LABEL_18:
      v42 = __clz(__rbit64(v34));
      v34 &= v34 - 1;
      v43 = v42 | (v39 << 6);
      v44 = v76;
      v45 = v77;
      v46 = v79;
      v47 = v87;
      (*(v79 + 16))(v76, *(v77 + 48) + *(v79 + 72) * v43, v87);
      v48 = *(v45 + 56);
      v49 = v80;
      v51 = v88;
      v50 = v89;
      (*(v80 + 16))(v88, v48 + *(v80 + 72) * v43, v89);
      v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD868, &unk_26CD47420);
      v86 = *(v52 + 48);
      v53 = *(v46 + 32);
      v38 = v78;
      v53(v78, v44, v47);
      v54 = v51;
      v35 = v71;
      (*(v49 + 32))(v38 + v86, v54, v50);
      (*(*(v52 - 8) + 56))(v38, 0, 1, v52);
      v41 = v39;
      v10 = v75;
LABEL_19:
      sub_26CC16D64(v38, v10, &qword_2804BD860, &qword_26CD47418);
      v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD868, &unk_26CD47420);
      if ((*(*(v55 - 8) + 48))(v10, 1, v55) == 1)
      {
        break;
      }

      v56 = &v10[*(v55 + 48)];
      v57 = v88;
      v58 = v89;
      (*v35)(v88, v56, v89);
      v91[4] = v98;
      v91[5] = v99;
      v91[6] = v100;
      v91[7] = v101;
      v91[0] = v94;
      v91[1] = v95;
      v91[2] = v96;
      v91[3] = v97;
      sub_26CCE56F0(&v94, &v90);
      v59 = v84;
      sub_26CD3A89C();
      (*v83)(v59, v85);
      (*v82)(v57, v58);
      result = (*v81)(v10, v87);
      v37 = v41;
      if (!v34)
      {
        goto LABEL_11;
      }
    }

    sub_26CCE574C(&v94);
    v61 = *(v68 + v67);
    v62 = *(v61 + 16);
    if (!v62)
    {
      v63 = MEMORY[0x277D84F90];
LABEL_27:
      sub_26CCD9CF8(v63);
    }

    v63 = sub_26CCDECCC(*(v61 + 16), 0);
    v64 = sub_26CCE4F3C(v91, &v63[(*(v80 + 80) + 32) & ~*(v80 + 80)], v62, v61);
    v65 = *&v91[0];

    result = sub_26CC33234(v65);
    if (v64 == v62)
    {
      goto LABEL_27;
    }
  }

  else
  {
LABEL_11:
    if (v69 <= v37 + 1)
    {
      v40 = v37 + 1;
    }

    else
    {
      v40 = v69;
    }

    v41 = v40 - 1;
    while (1)
    {
      v39 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        break;
      }

      if (v39 >= v69)
      {
        v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD868, &unk_26CD47420);
        (*(*(v60 - 8) + 56))(v38, 1, 1, v60);
        v34 = 0;
        goto LABEL_19;
      }

      v34 = *(v70 + 8 * v39);
      ++v37;
      if (v34)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_26CCD9CF8(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA00, &qword_26CD3D510);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v19 - v5;
  v7 = sub_26CD3A86C();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  swift_weakInit();
  sub_26CD3A84C();

  v9 = sub_26CD3A83C();
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D85700];
  v10[2] = v9;
  v10[3] = v11;
  v10[4] = v8;
  v10[5] = a1;

  v12 = sub_26CCD5E38(0, 0, v6, &unk_26CD47740, v10);
  v13 = OBJC_IVAR____TtC13TVAppServices19TimedMetadataVendor_loadingTasks;
  swift_beginAccess();
  v14 = *(v2 + v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + v13) = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = sub_26CCBEE98(0, v14[2] + 1, 1, v14);
    *(v2 + v13) = v14;
  }

  v17 = v14[2];
  v16 = v14[3];
  if (v17 >= v16 >> 1)
  {
    v14 = sub_26CCBEE98((v16 > 1), v17 + 1, 1, v14);
  }

  v14[2] = v17 + 1;
  v14[v17 + 4] = v12;
  *(v2 + v13) = v14;
  return swift_endAccess();
}

uint64_t sub_26CCD9F00(uint64_t a1)
{
  *(v2 + 200) = v1;
  v3 = *(a1 + 16);
  *(v2 + 16) = *a1;
  *(v2 + 32) = v3;
  v4 = *(a1 + 48);
  *(v2 + 48) = *(a1 + 32);
  *(v2 + 64) = v4;
  *(v2 + 208) = *(a1 + 64);
  *(v2 + 216) = *(a1 + 72);
  *(v2 + 232) = sub_26CD3A84C();
  *(v2 + 240) = sub_26CD3A83C();
  v6 = sub_26CD3A80C();
  *(v2 + 248) = v6;
  *(v2 + 256) = v5;

  return MEMORY[0x2822009F8](sub_26CCD9FBC, v6, v5);
}

uint64_t sub_26CCD9FBC()
{
  v27 = v0;
  v1 = *(v0 + 200);
  v2 = OBJC_IVAR____TtC13TVAppServices19TimedMetadataVendor_timedMetadata;
  *(v0 + 264) = OBJC_IVAR____TtC13TVAppServices19TimedMetadataVendor_timedMetadata;
  v3 = swift_beginAccess();
  v4 = *(v1 + v2);
  if (v4)
  {

    v5 = *(v0 + 8);

    return v5(v4);
  }

  else
  {
    v7 = *(**(v0 + 200) + 200);
    v8 = v7(v3);
    if (!v8)
    {
      v21 = *(v0 + 208);
      v22 = *(v0 + 32);
      v24[0] = *(v0 + 16);
      v24[1] = v22;
      v23 = *(v0 + 64);
      v24[2] = *(v0 + 48);
      v24[3] = v23;
      v25 = v21;
      v26 = *(v0 + 216);
      v8 = sub_26CCE6280(v24);
    }

    *(v0 + 272) = v8;
    v9 = *(**(v0 + 200) + 208);

    v11 = v9(v10);
    v12 = v7(v11);
    if (v12)
    {
      v13 = v12;
      v14 = *(v0 + 200) + OBJC_IVAR____TtC13TVAppServices19TimedMetadataVendor_fetcherDelegate;
      swift_beginAccess();
      swift_unknownObjectWeakLoadStrong();
      v15 = *(v14 + 8);
      swift_beginAccess();
      *(v13 + 24) = v15;
      swift_unknownObjectWeakAssign();
      swift_unknownObjectRelease();
    }

    *(v0 + 280) = OBJC_IVAR____TtC13TVAppServices19TimedMetadataVendor_logger;
    v16 = sub_26CD3A42C();
    v17 = sub_26CD3A99C();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_26CC14000, v16, v17, "Fetching timed metadata", v18, 2u);
      MEMORY[0x26D6AE340](v18, -1, -1);
    }

    *(v0 + 288) = sub_26CD3A83C();
    v20 = sub_26CD3A80C();
    *(v0 + 296) = v20;
    *(v0 + 304) = v19;

    return MEMORY[0x2822009F8](sub_26CCDA2F0, v20, v19);
  }
}

uint64_t sub_26CCDA2F0()
{
  v1 = sub_26CCE71CC(*(v0 + 216), *(v0 + 224), *(v0 + 208));
  *(v0 + 312) = v1;
  v2 = swift_task_alloc();
  *(v0 + 320) = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD898, &unk_26CD47710);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC10, &unk_26CD3D4C0);
  *v2 = v0;
  v2[1] = sub_26CCDA3E8;
  v5 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v0 + 152, v1, v3, v4, v5);
}

uint64_t sub_26CCDA3E8()
{
  v2 = *v1;
  *(*v1 + 328) = v0;

  v3 = *(v2 + 304);
  v4 = *(v2 + 296);
  if (v0)
  {
    v5 = sub_26CCDA8C0;
  }

  else
  {
    v5 = sub_26CCDA53C;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_26CCDA53C()
{
  v1 = *(v0 + 272);

  *(v0 + 336) = *(v0 + 152);
  *(v0 + 344) = *(v0 + 160);
  *(v1 + 96) = 0;

  v2 = *(v0 + 248);
  v3 = *(v0 + 256);

  return MEMORY[0x2822009F8](sub_26CCDA5C4, v2, v3);
}

uint64_t sub_26CCDA5C4()
{

  if (sub_26CD3A8EC())
  {
    v1 = sub_26CD3A42C();
    v2 = sub_26CD3A99C();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&dword_26CC14000, v1, v2, "Loading task cancelled while fetching timed metadata", v3, 2u);
      MEMORY[0x26D6AE340](v3, -1, -1);
    }

    v5 = *(v0 + 344);
    v4 = *(v0 + 352);

    sub_26CCE6400();
    swift_allocError();
    *v6 = 1;
    swift_willThrow();
    sub_26CC18C50(v5, v4);

    (*(**(v0 + 200) + 520))(0, 0xF000000000000000);
    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    v9 = *(v0 + 336);
    v10 = *(v0 + 200) + OBJC_IVAR____TtC13TVAppServices19TimedMetadataVendor_smoothingConfig;
    swift_beginAccess();
    *(v9 + 24) = *(v10 + 24);
    v11 = sub_26CD3A42C();
    v12 = sub_26CD3A99C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_26CC14000, v11, v12, "Done fetching timed metadata", v13, 2u);
      MEMORY[0x26D6AE340](v13, -1, -1);
    }

    v15 = *(v0 + 344);
    v14 = *(v0 + 352);
    v16 = *(v0 + 336);
    v17 = *(v0 + 264);
    v18 = *(v0 + 200);

    *(v18 + v17) = v16;

    (*(*v18 + 520))(v15, v14);
    sub_26CC18C50(v15, v14);
    v19 = *(v0 + 336);
    v20 = *(v0 + 8);

    return v20(v19);
  }
}

uint64_t sub_26CCDA8C0()
{

  v1 = *(v0 + 248);
  v2 = *(v0 + 256);

  return MEMORY[0x2822009F8](sub_26CCDA924, v1, v2);
}

uint64_t sub_26CCDA924()
{

  (*(**(v0 + 200) + 520))(0, 0xF000000000000000);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26CCDA9DC(uint64_t a1)
{
  v2 = MEMORY[0x277D84F90];
  if (*(a1 + 24))
  {
    v3 = *(a1 + 24);
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  if (*(a1 + 120))
  {
    v4 = *(a1 + 120);
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

  v84 = v4;
  v5 = (v1 + OBJC_IVAR____TtC13TVAppServices19TimedMetadataVendor_currentEntityMappingSnapshot);
  swift_beginAccess();
  v6 = v5[5];
  v7 = v5[3];
  v132 = v5[4];
  v133 = v6;
  v8 = v5[7];
  v9 = v5[5];
  v134 = v5[6];
  v135 = v8;
  v10 = v5[1];
  v129[0] = *v5;
  v129[1] = v10;
  v11 = v5[3];
  v130 = v5[2];
  v131 = v11;
  v128 = *(v5 + 2);
  v127 = v129[0];
  v12 = *(&v10 + 1);
  v13 = v5[7];
  v125 = v134;
  v126 = v13;
  v123 = v132;
  v124 = v9;
  v121 = v130;
  v122 = v7;
  v14 = *(v5 + 2);
  v136 = v129[0];
  v139 = v130;
  v140 = v7;
  v143 = v134;
  v144 = v13;
  v141 = v132;
  v142 = v9;
  v137 = v14;
  v138 = *(&v10 + 1);
  if (sub_26CCE56CC(&v136) == 1 || !v12)
  {
    v113 = v127;
    *&v114 = v128;
    *(&v114 + 1) = v12;
    v117 = v123;
    v118 = v124;
    v119 = v125;
    v120 = v126;
    v115 = v121;
    v116 = v122;

    sub_26CC1B4DC(v129, v106, &qword_2804BD838, &qword_26CD473E8);
    sub_26CC1B544(&v113, &qword_2804BD838, &qword_26CD473E8);
    v12 = MEMORY[0x277D84F90];
  }

  else
  {
    v113 = v127;
    *&v114 = v128;
    *(&v114 + 1) = v12;
    v117 = v123;
    v118 = v124;
    v119 = v125;
    v120 = v126;
    v115 = v121;
    v116 = v122;

    sub_26CC1B4DC(v129, v106, &qword_2804BD838, &qword_26CD473E8);

    sub_26CC1B544(&v113, &qword_2804BD838, &qword_26CD473E8);
  }

  v15 = v5[7];
  v16 = v5[5];
  v111 = v5[6];
  v112 = v15;
  v17 = v5[1];
  v106[0] = *v5;
  v106[1] = v17;
  v18 = v5[3];
  v107 = v5[2];
  v108 = v18;
  v88 = v106[0];
  v89 = v17;
  v90 = v107;
  v91 = v18;
  *v94 = v111;
  v19 = v5[5];
  v20 = v5[3];
  v109 = v5[4];
  v110 = v19;
  v92 = v109;
  v93 = v19;
  *&v94[16] = *(v5 + 14);
  v21 = *(&v112 + 1);
  v22 = *(v5 + 14);
  v118 = v16;
  v119 = v111;
  v116 = v20;
  v117 = v109;
  v114 = v17;
  v115 = v107;
  v113 = v106[0];
  *&v120 = v22;
  *(&v120 + 1) = *(&v112 + 1);
  if (sub_26CCE56CC(&v113) == 1 || !v21)
  {
    v103 = v92;
    v104 = v93;
    *v105 = *v94;
    v99 = v88;
    v100 = v89;
    v101 = v90;
    v102 = v91;
    *&v105[16] = *&v94[16];
    *&v105[24] = v21;
    sub_26CC1B4DC(v106, v97, &qword_2804BD838, &qword_26CD473E8);
    sub_26CC1B544(&v99, &qword_2804BD838, &qword_26CD473E8);
    v21 = MEMORY[0x277D84F90];
  }

  else
  {
    v103 = v92;
    v104 = v93;
    *v105 = *v94;
    v99 = v88;
    v100 = v89;
    v101 = v90;
    v102 = v91;
    *&v105[16] = *&v94[16];
    *&v105[24] = v21;
    sub_26CC1B4DC(v106, v97, &qword_2804BD838, &qword_26CD473E8);

    sub_26CC1B544(&v99, &qword_2804BD838, &qword_26CD473E8);
  }

  v23 = *(v3 + 16);
  v85 = v21;
  if (v23)
  {
    *&v97[0] = v2;
    sub_26CCEB1F8(0, v23, 0);
    v24 = *&v97[0];
    v25 = v3 + 32;
    do
    {
      sub_26CC19A84(v25, &v99);
      v26 = *(&v100 + 1);
      v27 = v101;
      __swift_project_boxed_opaque_existential_1(&v99, *(&v100 + 1));
      v28 = (*(v27 + 8))(v26, v27);
      v30 = v29;
      __swift_destroy_boxed_opaque_existential_1(&v99);
      *&v97[0] = v24;
      v32 = *(v24 + 16);
      v31 = *(v24 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_26CCEB1F8((v31 > 1), v32 + 1, 1);
        v24 = *&v97[0];
      }

      *(v24 + 16) = v32 + 1;
      v33 = v24 + 16 * v32;
      *(v33 + 32) = v28;
      *(v33 + 40) = v30;
      v25 += 40;
      --v23;
    }

    while (v23);

    v21 = v85;
  }

  else
  {

    v24 = MEMORY[0x277D84F90];
  }

  v34 = v84;
  v35 = *(v84 + 16);
  v36 = MEMORY[0x277D84F90];
  v83 = v12;
  if (v35)
  {
    *&v97[0] = MEMORY[0x277D84F90];
    sub_26CCEB1F8(0, v35, 0);
    v37 = *&v97[0];
    v38 = v84 + 32;
    do
    {
      v39 = v37;
      sub_26CC19A84(v38, &v99);
      v40 = *(&v100 + 1);
      v41 = v101;
      __swift_project_boxed_opaque_existential_1(&v99, *(&v100 + 1));
      v42 = (*(v41 + 8))(v40, v41);
      v44 = v43;
      __swift_destroy_boxed_opaque_existential_1(&v99);
      v37 = v39;
      *&v97[0] = v39;
      v46 = *(v39 + 16);
      v45 = *(v39 + 24);
      if (v46 >= v45 >> 1)
      {
        sub_26CCEB1F8((v45 > 1), v46 + 1, 1);
        v37 = *&v97[0];
      }

      *(v37 + 16) = v46 + 1;
      v47 = v37 + 16 * v46;
      *(v47 + 32) = v42;
      *(v47 + 40) = v44;
      v38 += 40;
      --v35;
    }

    while (v35);
    v21 = v85;
    v12 = v83;
    v36 = MEMORY[0x277D84F90];
  }

  else
  {
    v37 = MEMORY[0x277D84F90];
  }

  v82 = v37;
  v48 = *(v12 + 16);
  if (v48)
  {
    *&v97[0] = v36;
    sub_26CCEB1F8(0, v48, 0);
    v49 = *&v97[0];
    v50 = v12 + 32;
    do
    {
      sub_26CC19A84(v50, &v99);
      v51 = *(&v100 + 1);
      v52 = v101;
      __swift_project_boxed_opaque_existential_1(&v99, *(&v100 + 1));
      v53 = (*(v52 + 8))(v51, v52);
      v55 = v54;
      __swift_destroy_boxed_opaque_existential_1(&v99);
      *&v97[0] = v49;
      v57 = *(v49 + 16);
      v56 = *(v49 + 24);
      if (v57 >= v56 >> 1)
      {
        sub_26CCEB1F8((v56 > 1), v57 + 1, 1);
        v49 = *&v97[0];
      }

      *(v49 + 16) = v57 + 1;
      v58 = v49 + 16 * v57;
      *(v58 + 32) = v53;
      *(v58 + 40) = v55;
      v50 += 40;
      --v48;
    }

    while (v48);

    v21 = v85;
  }

  else
  {

    v49 = MEMORY[0x277D84F90];
  }

  v59 = *(v21 + 16);
  v60 = MEMORY[0x277D84F90];
  if (v59)
  {
    *&v97[0] = MEMORY[0x277D84F90];
    sub_26CCEB1F8(0, v59, 0);
    v60 = *&v97[0];
    v61 = v21 + 32;
    do
    {
      sub_26CC19A84(v61, &v99);
      v62 = *(&v100 + 1);
      v63 = v101;
      __swift_project_boxed_opaque_existential_1(&v99, *(&v100 + 1));
      v64 = (*(v63 + 8))(v62, v63);
      v66 = v65;
      __swift_destroy_boxed_opaque_existential_1(&v99);
      *&v97[0] = v60;
      v68 = *(v60 + 16);
      v67 = *(v60 + 24);
      if (v68 >= v67 >> 1)
      {
        sub_26CCEB1F8((v67 > 1), v68 + 1, 1);
        v60 = *&v97[0];
      }

      *(v60 + 16) = v68 + 1;
      v69 = v60 + 16 * v68;
      *(v69 + 32) = v64;
      *(v69 + 40) = v66;
      v61 += 40;
      --v59;
    }

    while (v59);
    v34 = v84;
    v21 = v85;
  }

  v70 = sub_26CCF3078(v24);

  v71 = sub_26CCF3078(v49);

  v72 = sub_26CCDEA18(v70, v71);

  if (!*(v34 + 16))
  {

    goto LABEL_51;
  }

  sub_26CC19A84(v34 + 32, v96);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCAA0, &qword_26CD460E0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_51:

    goto LABEL_52;
  }

  v97[4] = v103;
  v97[5] = v104;
  *v98 = *v105;
  *&v98[11] = *&v105[11];
  v97[0] = v99;
  v97[1] = v100;
  v97[2] = v101;
  v97[3] = v102;
  if (!*(v21 + 16))
  {
    sub_26CCE57A0(v97);
    goto LABEL_51;
  }

  sub_26CC19A84(v21 + 32, v95);

  if (swift_dynamicCast())
  {
    v86[4] = v92;
    v86[5] = v93;
    *v87 = *v94;
    *&v87[11] = *&v94[11];
    v86[0] = v88;
    v86[1] = v89;
    v86[2] = v90;
    v86[3] = v91;
    if (v97[0] == v88 || (sub_26CD3AFDC() & 1) != 0)
    {
      sub_26CCE57A0(v97);
      sub_26CCE57A0(v86);
      v73 = v98[26] ^ v87[26];
      v74 = v98[24] ^ v87[24];
      goto LABEL_53;
    }

    sub_26CCE57A0(v86);
  }

  sub_26CCE57A0(v97);
LABEL_52:
  v74 = 0;
  v73 = 0;
LABEL_53:
  v75 = v72 ^ 1;
  v76 = sub_26CCF3078(v82);

  v77 = sub_26CCF3078(v60);

  v78 = sub_26CCDEA18(v76, v77);

  if ((v75 | v78 ^ 1 | (v73 | v74)))
  {
    v79 = 0x10000;
  }

  else
  {
    v79 = 0;
  }

  if ((v78 ^ 1 | (v73 | v74)))
  {
    v80 = 256;
  }

  else
  {
    v80 = 0;
  }

  return v80 & 0xFFFFFFFE | v75 & 1 | v79;
}

uint64_t sub_26CCDB300(void *a1)
{
  v2 = a1[6];
  v3 = a1[7];
  v4 = a1[10];
  v5 = a1[11];
  v6 = a1[14];
  v7 = a1[15];
  if (!a1[3])
  {
    v9 = MEMORY[0x277D84F90];
    if (!v7)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v8 = a1[2];
  v9 = sub_26CCBED94(0, 1, 1, MEMORY[0x277D84F90]);
  v11 = *(v9 + 2);
  v10 = *(v9 + 3);
  if (v11 >= v10 >> 1)
  {
    v9 = sub_26CCBED94((v10 > 1), v11 + 1, 1, v9);
  }

  *(v9 + 2) = v11 + 1;
  *&v9[8 * v11 + 32] = v8;
  if (v7)
  {
LABEL_7:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_26CCBED94(0, *(v9 + 2) + 1, 1, v9);
    }

    v13 = *(v9 + 2);
    v12 = *(v9 + 3);
    if (v13 >= v12 >> 1)
    {
      v9 = sub_26CCBED94((v12 > 1), v13 + 1, 1, v9);
    }

    *(v9 + 2) = v13 + 1;
    *&v9[8 * v13 + 32] = v6;
  }

LABEL_12:
  v14 = OBJC_IVAR____TtC13TVAppServices19TimedMetadataVendor_contIdsForFiringAtEveryRawDataBoundary;
  swift_beginAccess();
  if (*(*(v1 + v14) + 16))
  {
    if (v3)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_26CCBED94(0, *(v9 + 2) + 1, 1, v9);
      }

      v16 = *(v9 + 2);
      v15 = *(v9 + 3);
      if (v16 >= v15 >> 1)
      {
        v9 = sub_26CCBED94((v15 > 1), v16 + 1, 1, v9);
      }

      *(v9 + 2) = v16 + 1;
      *&v9[8 * v16 + 32] = v2;
    }

    if (v5)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_26CCBED94(0, *(v9 + 2) + 1, 1, v9);
      }

      v18 = *(v9 + 2);
      v17 = *(v9 + 3);
      if (v18 >= v17 >> 1)
      {
        v9 = sub_26CCBED94((v17 > 1), v18 + 1, 1, v9);
      }

      *(v9 + 2) = v18 + 1;
      *&v9[8 * v18 + 32] = v4;
    }
  }

  v19 = *(v9 + 2);
  if (v19)
  {
    v20 = *(v9 + 4);
    v21 = v19 - 1;
    if (v19 != 1)
    {
      v22 = (v9 + 40);
      do
      {
        v23 = *v22++;
        v24 = v23;
        if (v23 < v20)
        {
          v20 = v24;
        }

        --v21;
      }

      while (v21);
    }

    v25 = v20;
  }

  else
  {
    v25 = 0.0;
  }

  return *&v25;
}

uint64_t TimedMetadataVendor.TimedMetadataVendorError.hashValue.getter()
{
  v1 = *v0;
  sub_26CD3B0FC();
  MEMORY[0x26D6ADAF0](v1);
  return sub_26CD3B13C();
}

uint64_t TimedMetadataVendor.TimedMetadataFetchParams.programID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t TimedMetadataVendor.TimedMetadataFetchParams.adamID.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t TimedMetadataVendor.TimedMetadataFetchParams.contentID.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t TimedMetadataVendor.TimedMetadataFetchParams.playablePassThrough.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t TimedMetadataVendor.TimedMetadataFetchParams.rawData.getter()
{
  v1 = *(v0 + 72);
  sub_26CCC706C(v1, *(v0 + 80));
  return v1;
}

uint64_t TimedMetadataVendor.PlaybackState.audioLanguageCode.getter()
{
  v1 = *(v0 + *(type metadata accessor for TimedMetadataVendor.PlaybackState(0) + 28));

  return v1;
}

uint64_t sub_26CCDB7D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD748, &qword_26CD46340);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v8 - v5;
  sub_26CC1B4DC(a1, &v8 - v5, &qword_2804BD748, &qword_26CD46340);
  return (*(**a2 + 184))(v6);
}

uint64_t sub_26CCDB8FC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC13TVAppServices19TimedMetadataVendor_timedMetadata;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

uint64_t TimedMetadataVendor.__allocating_init()()
{
  v0 = swift_allocObject();
  TimedMetadataVendor.init()();
  return v0;
}

uint64_t sub_26CCDB99C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[53] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD8C8, &qword_26CD47768);
  v4[54] = v5;
  v4[55] = *(v5 - 8);
  v4[56] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD8D0, &unk_26CD47770);
  v4[57] = v6;
  v4[58] = *(v6 - 8);
  v4[59] = swift_task_alloc();
  v4[60] = sub_26CD3A84C();
  v4[61] = sub_26CD3A83C();
  v8 = sub_26CD3A80C();
  v4[62] = v8;
  v4[63] = v7;

  return MEMORY[0x2822009F8](sub_26CCDBB08, v8, v7);
}

uint64_t sub_26CCDBB08()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[64] = Strong;
  if (Strong)
  {
    v3 = v0[55];
    v2 = v0[56];
    v4 = v0[54];
    sub_26CCD7894(0, v2);
    sub_26CD3A8AC();
    (*(v3 + 8))(v2, v4);
    v5 = sub_26CD3A83C();
    v0[65] = v5;
    v6 = swift_task_alloc();
    v0[66] = v6;
    *v6 = v0;
    v6[1] = sub_26CCDBC94;
    v7 = v0[57];
    v8 = MEMORY[0x277D85700];

    return MEMORY[0x2822003E8](v0 + 34, v5, v8, v7);
  }

  else
  {

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_26CCDBC94()
{
  v1 = *v0;

  v2 = *(v1 + 504);
  v3 = *(v1 + 496);

  return MEMORY[0x2822009F8](sub_26CCDBDD8, v3, v2);
}

uint64_t sub_26CCDBDD8()
{
  v1 = *(v0 + 336);
  v2 = *(v0 + 352);
  *(v0 + 208) = v1;
  *(v0 + 224) = v2;
  v3 = *(v0 + 368);
  v4 = *(v0 + 384);
  *(v0 + 240) = v3;
  *(v0 + 256) = v4;
  v5 = *(v0 + 272);
  v6 = *(v0 + 288);
  *(v0 + 144) = v5;
  *(v0 + 160) = v6;
  v7 = *(v0 + 304);
  v8 = *(v0 + 320);
  *(v0 + 176) = v7;
  *(v0 + 192) = v8;
  *(v0 + 48) = v7;
  *(v0 + 64) = v8;
  *(v0 + 16) = v5;
  *(v0 + 32) = v6;
  *(v0 + 112) = v3;
  *(v0 + 128) = v4;
  *(v0 + 80) = v1;
  *(v0 + 96) = v2;
  if (sub_26CCE56CC(v0 + 16) == 1)
  {
    (*(*(v0 + 464) + 8))(*(v0 + 472), *(v0 + 456));

    v9 = *(v0 + 8);

    return v9();
  }

  else
  {
    sub_26CC1B544(v0 + 144, &qword_2804BD838, &qword_26CD473E8);
    v11 = sub_26CD3A83C();
    *(v0 + 520) = v11;
    v12 = swift_task_alloc();
    *(v0 + 528) = v12;
    *v12 = v0;
    v12[1] = sub_26CCDBC94;
    v13 = *(v0 + 456);
    v14 = MEMORY[0x277D85700];

    return MEMORY[0x2822003E8](v0 + 272, v11, v14, v13);
  }
}

uint64_t sub_26CCDBF60(uint64_t a1, uint64_t a2)
{
  v2 = sub_26CD3A49C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &aBlock[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_26CD3A4CC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &aBlock[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26CC18080(0, &qword_280BBB790, 0x277D85C78);
  v10 = sub_26CD3A9DC();
  v11 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  aBlock[4] = sub_26CCE66B4;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26CC1DDD0;
  aBlock[3] = &block_descriptor_79_1;
  v12 = _Block_copy(aBlock);

  sub_26CD3A4AC();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_26CCE666C(&qword_280BBB7F0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC40, &unk_26CD45D50);
  sub_26CCC7658();
  sub_26CD3AB5C();
  MEMORY[0x26D6AD3E0](0, v9, v5, v12);
  _Block_release(v12);

  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_26CCDC250(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_26CCD7DD4();
  }

  return result;
}

uint64_t sub_26CCDC2A8(uint64_t a1, uint64_t a2)
{
  v3 = sub_26CD39DEC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  sub_26CD39DCC();

  v7(v6);

  return (*(v4 + 8))(v6, v3);
}

uint64_t TimedMetadataVendor.__deallocating_deinit()
{
  TimedMetadataVendor.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_26CCDC3F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27 = a3;
  v3 = sub_26CD3A49C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26CD3A4CC();
  v29 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v28 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_26CD3A20C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_26CC18080(0, &qword_280BBB790, 0x277D85C78);
    v26 = sub_26CD3A9DC();
    v13 = swift_allocObject();
    v25 = v6;
    v14 = v13;
    swift_weakInit();
    (*(v10 + 16))(&v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v27, v9);
    v15 = *(v10 + 80);
    v27 = v7;
    v16 = v4;
    v17 = v3;
    v18 = (v15 + 24) & ~v15;
    v19 = swift_allocObject();
    *(v19 + 16) = v14;
    (*(v10 + 32))(v19 + v18, &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
    aBlock[4] = sub_26CCE6608;
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_26CC1DDD0;
    aBlock[3] = &block_descriptor_75;
    v20 = _Block_copy(aBlock);

    v21 = v28;
    sub_26CD3A4AC();
    v30 = MEMORY[0x277D84F90];
    sub_26CCE666C(&qword_280BBB7F0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC40, &unk_26CD45D50);
    sub_26CCC7658();
    v22 = v25;
    sub_26CD3AB5C();
    v23 = v26;
    MEMORY[0x26D6AD3E0](0, v21, v22, v20);
    _Block_release(v20);

    (*(v16 + 8))(v22, v17);
    (*(v29 + 8))(v21, v27);
  }

  return result;
}

uint64_t sub_26CCDC7FC(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD8C0, &qword_26CD47748);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v18[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD840, &qword_26CD473F0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v18[-v7];
  v9 = sub_26CD3A20C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v18[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v14 = result;
    (*(v10 + 16))(v12, a2, v9);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBD30, &qword_26CD47400);
    (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
    v16 = OBJC_IVAR____TtC13TVAppServices19TimedMetadataVendor_entityMappingContinuations;
    swift_beginAccess();
    sub_26CCD6718(v8, v12);
    swift_endAccess();
    swift_beginAccess();
    sub_26CCE46C4(a2, v5);
    sub_26CC1B544(v5, &qword_2804BD8C0, &qword_26CD47748);
    v17 = swift_endAccess();
    if (!*(*(v14 + v16) + 16))
    {
      (*(*v14 + 496))(v17);
    }
  }

  return result;
}

uint64_t sub_26CCDCAA0(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_26CD3A84C();
  *(v1 + 24) = sub_26CD3A83C();
  v3 = sub_26CD3A80C();

  return MEMORY[0x2822009F8](sub_26CCDCB38, v3, v2);
}

uint64_t sub_26CCDCB38()
{
  v1 = *(v0 + 16);

  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  *v1 = 0u;
  *(v1 + 80) = 0xF000000000000000;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_26CCDCBB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[317] = a5;
  v5[316] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD858, &qword_26CD47410);
  v5[318] = v6;
  v5[319] = *(v6 - 8);
  v5[320] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBD30, &qword_26CD47400);
  v5[321] = v7;
  v5[322] = *(v7 - 8);
  v5[323] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA90, &qword_26CD3C200);
  v5[324] = swift_task_alloc();
  v5[325] = swift_task_alloc();
  v8 = sub_26CD3A1EC();
  v5[326] = v8;
  v5[327] = *(v8 - 8);
  v5[328] = swift_task_alloc();
  v5[329] = swift_task_alloc();
  v5[330] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD748, &qword_26CD46340);
  v5[331] = swift_task_alloc();
  v9 = type metadata accessor for TimedMetadataVendor.PlaybackState(0);
  v5[332] = v9;
  v5[333] = *(v9 - 8);
  v5[334] = swift_task_alloc();
  v5[335] = swift_task_alloc();
  sub_26CD3A84C();
  v5[336] = sub_26CD3A83C();
  v11 = sub_26CD3A80C();
  v5[337] = v11;
  v5[338] = v10;

  return MEMORY[0x2822009F8](sub_26CCDCE78, v11, v10);
}

uint64_t sub_26CCDCE78()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[339] = Strong;
  if (!Strong)
  {
LABEL_6:

    v6 = v0[1];

    return v6();
  }

  v2 = Strong;
  if (sub_26CD3A8EC())
  {

    v3 = sub_26CD3A42C();
    v4 = sub_26CD3A99C();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_26CC14000, v3, v4, "Loading task cancelled prior to loading", v5, 2u);
      MEMORY[0x26D6AE340](v5, -1, -1);
    }

    goto LABEL_6;
  }

  v0[340] = OBJC_IVAR____TtC13TVAppServices19TimedMetadataVendor_logger;
  v8 = sub_26CD3A42C();
  v9 = sub_26CD3A99C();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_26CC14000, v8, v9, "Starting loading process", v10, 2u);
    MEMORY[0x26D6AE340](v10, -1, -1);
  }

  v12 = (*(*v2 + 512) + **(*v2 + 512));
  v11 = swift_task_alloc();
  v0[341] = v11;
  *v11 = v0;
  v11[1] = sub_26CCDD1B0;

  return v12(v0 + 269);
}

uint64_t sub_26CCDD1B0()
{
  v1 = *v0;

  v2 = *(v1 + 2704);
  v3 = *(v1 + 2696);

  return MEMORY[0x2822009F8](sub_26CCDD2D0, v3, v2);
}

uint64_t sub_26CCDD2D0(uint64_t a1)
{
  v2 = *(v1 + 2200);
  *(v1 + 2096) = *(v1 + 2184);
  *(v1 + 2112) = v2;
  *(v1 + 2128) = *(v1 + 2216);
  v3 = *(v1 + 2168);
  *(v1 + 2064) = *(v1 + 2152);
  *(v1 + 2144) = *(v1 + 2232);
  *(v1 + 2080) = v3;
  if (sub_26CD3A8EC())
  {

    v4 = sub_26CD3A42C();
    v5 = sub_26CD3A99C();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_26CC14000, v4, v5, "Loading task cancelled while loading fetch params", v6, 2u);
      MEMORY[0x26D6AE340](v6, -1, -1);
    }

    sub_26CCE6514(v1 + 2064);

    v7 = *(v1 + 8);

    return v7();
  }

  else
  {
    v9 = *(v1 + 2112);
    *(v1 + 2272) = *(v1 + 2096);
    *(v1 + 2288) = v9;
    *(v1 + 2304) = *(v1 + 2128);
    *(v1 + 2320) = *(v1 + 2144);
    v10 = *(v1 + 2080);
    *(v1 + 2240) = *(v1 + 2064);
    *(v1 + 2256) = v10;
    v11 = swift_task_alloc();
    *(v1 + 2736) = v11;
    *v11 = v1;
    v11[1] = sub_26CCDD530;

    return sub_26CCD9F00(v1 + 2240);
  }
}

uint64_t sub_26CCDD530(uint64_t a1)
{
  v3 = *v2;
  v3[343] = a1;
  v3[344] = v1;

  v4 = v3[338];
  v5 = v3[337];
  if (v1)
  {
    v6 = sub_26CCDE4FC;
  }

  else
  {
    v6 = sub_26CCDD650;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_26CCDD650()
{
  v190 = v0;

  if (sub_26CD3A8EC())
  {
    v1 = sub_26CD3A42C();
    v2 = sub_26CD3A99C();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&dword_26CC14000, v1, v2, "Loading task cancelled while fetching timed metadata", v3, 2u);
      MEMORY[0x26D6AE340](v3, -1, -1);
    }

    sub_26CCE6514(v0 + 2064);

    goto LABEL_47;
  }

  v4 = *(v0 + 2664);
  v5 = *(v0 + 2656);
  v6 = *(v0 + 2648);
  (*(**(v0 + 2712) + 176))();
  if ((*(v4 + 48))(v6, 1, v5) == 1)
  {
    v7 = *(v0 + 2648);
    sub_26CCE6514(v0 + 2064);

    sub_26CC1B544(v7, &qword_2804BD748, &qword_26CD46340);
    goto LABEL_47;
  }

  sub_26CCE6774(*(v0 + 2648), *(v0 + 2680), type metadata accessor for TimedMetadataVendor.PlaybackState);
  v8 = sub_26CD3A42C();
  v9 = sub_26CD3A99C();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_26CC14000, v8, v9, "Finished loading process", v10, 2u);
    MEMORY[0x26D6AE340](v10, -1, -1);
  }

  v11 = sub_26CD3A42C();
  v12 = sub_26CD3A99C();

  v13 = &unk_280BBC000;
  if (os_log_type_enabled(v11, v12))
  {
    v14 = *(v0 + 2712);
    v15 = swift_slowAlloc();
    *v15 = 134218496;
    v16 = (v14 + OBJC_IVAR____TtC13TVAppServices19TimedMetadataVendor_smoothingConfig);
    swift_beginAccess();
    *(v15 + 4) = *v16;
    *(v15 + 12) = 2048;
    *(v15 + 14) = v16[1];
    *(v15 + 22) = 2048;
    *(v15 + 24) = v16[2];
    _os_log_impl(&dword_26CC14000, v11, v12, "Initial look back: %f initial look ahead: %f look ahead %f", v15, 0x20u);
    MEMORY[0x26D6AE340](v15, -1, -1);
  }

  v17 = *(v0 + 2680);
  v18 = *(v0 + 2656);
  v19 = *(v0 + 2616);
  v20 = *(v0 + 2608);
  v21 = *(v0 + 2600);

  sub_26CC1B4DC(v17 + *(v18 + 20), v21, &qword_2804BCA90, &qword_26CD3C200);
  v22 = *(v19 + 48);
  v23 = v22(v21, 1, v20);
  v24 = *(v0 + 2680);
  v175 = v18;
  if (v23 == 1)
  {
    sub_26CC1B544(*(v0 + 2600), &qword_2804BCA90, &qword_26CD3C200);
    v25 = *v24;
  }

  else
  {
    v26 = *(v0 + 2656);
    v27 = *(v0 + 2640);
    v28 = *(v0 + 2632);
    v29 = *(v0 + 2616);
    v30 = *(v0 + 2608);
    (*(v29 + 32))(v27, *(v0 + 2600), v30);
    v31 = *v24;
    sub_26CD3A1DC();
    sub_26CD3A10C();
    v33 = v32;
    v34 = *(v29 + 8);
    v34(v28, v30);
    v34(v27, v30);
    v13 = &unk_280BBC000;
    v25 = v31 + v33 * *(v24 + *(v26 + 24));
  }

  v35 = v0 + 2368;
  sub_26CCC48A8(*(v0 + 2680), *(v0 + 2672));
  v36 = sub_26CD3A42C();
  v37 = sub_26CD3A99C();
  v38 = os_log_type_enabled(v36, v37);
  v39 = *(v0 + 2672);
  if (v38)
  {
    v40 = *(v0 + 2608);
    v41 = *(v0 + 2592);
    v42 = swift_slowAlloc();
    *v42 = 134217984;
    sub_26CC1B4DC(v39 + *(v175 + 20), v41, &qword_2804BCA90, &qword_26CD3C200);
    v43 = v22(v41, 1, v40);
    v44 = *(v0 + 2672);
    v45 = v0;
    if (v43 == 1)
    {
      sub_26CC1B544(*(v0 + 2592), &qword_2804BCA90, &qword_26CD3C200);
      v46 = *v44;
    }

    else
    {
      v176 = *(v0 + 2656);
      v47 = *(v0 + 2632);
      v48 = *(v0 + 2624);
      v49 = *(v0 + 2616);
      v50 = *(v0 + 2608);
      (*(v49 + 32))(v48, *(v0 + 2592), v50);
      v51 = *v44;
      sub_26CD3A1DC();
      sub_26CD3A10C();
      v53 = v52;
      v54 = *(v49 + 8);
      v54(v47, v50);
      v54(v48, v50);
      v45 = v0;
      v46 = v51 + v53 * *(v44 + *(v176 + 24));
    }

    v13 = &unk_280BBC000;
    sub_26CCC490C(*(v45 + 2672));
    *(v42 + 4) = v46;
    _os_log_impl(&dword_26CC14000, v36, v37, "playbackState.currentElapsedTime: %f", v42, 0xCu);
    MEMORY[0x26D6AE340](v42, -1, -1);

    v35 = v0 + 2368;
  }

  else
  {

    sub_26CCC490C(v39);
    v45 = v0;
  }

  v55 = (*(v45 + 2712) + v13[393]);
  swift_beginAccess();
  v56 = v25 - *v55;
  v57 = v25 + v55[1];
  v58 = sub_26CD3A42C();
  v59 = sub_26CD3A99C();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    *v60 = 134218496;
    *(v60 + 4) = v56;
    *(v60 + 12) = 2048;
    *(v60 + 14) = v57;
    *(v60 + 22) = 2048;
    *(v60 + 24) = v57 - v56;
    _os_log_impl(&dword_26CC14000, v58, v59, "Time range start - %f, end - %f and duration - %f", v60, 0x20u);
    MEMORY[0x26D6AE340](v60, -1, -1);
  }

  v61 = sub_26CCD7834(v35);
  v63 = v62;
  memmove((v45 + 16), v62, 0x80uLL);
  if (sub_26CCE56CC(v45 + 16) != 1)
  {
    *v63 = 0u;
    v63[1] = 0u;
  }

  (v61)(v35, 0);
  v64 = sub_26CCD7834(v45 + 2400);
  v66 = v65;
  memmove((v45 + 144), v65, 0x80uLL);
  if (sub_26CCE56CC(v45 + 144) != 1)
  {
    v66[2] = 0u;
    v66[3] = 0u;
  }

  (v64)(v45 + 2400, 0);
  v67 = (*(v45 + 2680) + *(*(v45 + 2656) + 28));
  v68 = *v67;
  v69 = v67[1];
  v70 = (*(v45 + 2712) + OBJC_IVAR____TtC13TVAppServices19TimedMetadataVendor_currentEntityMappingSnapshot);
  swift_beginAccess();
  v71 = *v70;
  v72 = v70[1];
  v73 = v70[3];
  *(v45 + 432) = v70[2];
  *(v45 + 448) = v73;
  *(v45 + 400) = v71;
  *(v45 + 416) = v72;
  v74 = v70[4];
  v75 = v70[5];
  v76 = v70[7];
  *(v45 + 496) = v70[6];
  *(v45 + 512) = v76;
  *(v45 + 464) = v74;
  *(v45 + 480) = v75;
  v180[0] = v56;
  v180[1] = v57 - v56;
  v180[2] = v57;
  memmove((v45 + 272), v70, 0x80uLL);
  if (sub_26CCE56CC(v45 + 272) == 1)
  {
    v77 = 0;
    v78 = 0;
    v79 = 0uLL;
  }

  else
  {
    v177 = *(v45 + 272);
    v77 = *(v45 + 288);

    v79 = v177;
  }

  v80 = (v45 + 912);
  v181 = v79;
  *&v182 = v77;
  *(&v182 + 1) = v78;
  sub_26CC1B4DC(v45 + 400, v45 + 528, &qword_2804BD838, &qword_26CD473E8);
  sub_26CCEDB2C(v179, &v188, v180, &v181, v25);

  v173 = v189;
  v178 = v179[1];
  v169 = v188;
  v171 = v179[0];
  swift_bridgeObjectRelease_n();
  if (v69)
  {
    v81 = *(*(v45 + 2744) + 48);
    if (*(v81 + 16))
    {

      v82 = sub_26CC181C4(v68, v69);
      if (v83)
      {
        v84 = *(*(v81 + 56) + 8 * v82);

        sub_26CCEE6B4(&v181, v84, v25);
        v86 = v85;

        v167 = v182;
        v168 = v181;
        v87 = *(&v182 + 1);
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRelease_n();
        if (!v87 || (v88 = *(v87 + 16), , !v88))
        {
          v89 = *(v45 + 480);
          *(v45 + 1488) = *(v45 + 464);
          *(v45 + 1504) = v89;
          v90 = *(v45 + 512);
          *(v45 + 1520) = *(v45 + 496);
          *(v45 + 1536) = v90;
          v91 = *(v45 + 416);
          *(v45 + 1424) = *(v45 + 400);
          *(v45 + 1440) = v91;
          v92 = *(v45 + 448);
          *(v45 + 1456) = *(v45 + 432);
          *(v45 + 1472) = v92;
          if (sub_26CCE56CC(v45 + 1424) == 1)
          {
LABEL_51:
            v113 = v167;
            v112 = v168;
            v114 = v168;
            v115 = v167;
            goto LABEL_43;
          }

          v93 = *(v45 + 1544);
          if (v93)
          {
            if (*(v93 + 16))
            {
              v94 = (v45 + 1936);
              sub_26CC19A84(v93 + 32, v45 + 2328);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCAA0, &qword_26CD460E0);
              if (swift_dynamicCast())
              {
                v165 = v86;
                v95 = v45;
                v96 = (v45 + 1552);
                v97 = v94[3];
                v96[2] = v94[2];
                v96[3] = v97;
                *(v96 + 107) = *(v94 + 107);
                v98 = v94[6];
                v96[5] = v94[5];
                v96[6] = v98;
                v96[4] = v94[4];
                v99 = v94[1];
                *v96 = *v94;
                v96[1] = v99;
                v100 = *(v95 + 1592);
                if (!v100)
                {
                  sub_26CCE57A0(v96);
                  sub_26CC1B544(v95 + 400, &qword_2804BD838, &qword_26CD473E8);
                  v113 = v167;
                  v112 = v168;
                  v114 = v168;
                  v115 = v167;
                  v45 = v95;
                  goto LABEL_43;
                }

                v101 = (v95 + 1680);
                v102 = v95;
                v103 = (v95 + 1808);
                v164 = v102;
                v162 = *(v102 + 1584);

                sub_26CCE57A0(v96);
                sub_26CCF0D84(v162, v100, &v181);

                v105 = v184;
                v104 = v185;
                v106 = v186;
                v107 = v187[0];
                v101[4] = v185;
                v101[5] = v106;
                v101[6] = v107;
                v108 = *(v187 + 11);
                *(v101 + 107) = *(v187 + 11);
                v109 = v181;
                v110 = v182;
                *v101 = v181;
                v101[1] = v110;
                v111 = v183;
                v101[2] = v183;
                v101[3] = v105;
                *v103 = v109;
                v103[1] = v110;
                v103[2] = v111;
                v103[3] = v105;
                v103[4] = v104;
                v103[5] = v106;
                v103[6] = v107;
                *(v103 + 107) = v108;
                if (sub_26CC28EA8(v103) != 1)
                {
                  v158 = v103[4];
                  v159 = v103[6];
                  v186 = v103[5];
                  v187[0] = v159;
                  *(v187 + 11) = *(v103 + 107);
                  v160 = v103[1];
                  v181 = *v103;
                  v182 = v160;
                  v161 = v103[3];
                  v183 = v103[2];
                  v184 = v161;
                  v185 = v158;
                  sub_26CCF0FF0(&v181, v68, v69, v165, &v188, v25);
                  sub_26CC1B544(v101, &qword_2804BD870, &unk_26CD47430);
                  v166 = v188;
                  v163 = v189;

                  sub_26CC1B544(v164 + 400, &qword_2804BD838, &qword_26CD473E8);
                  v115 = v167;
                  v114 = v168;
                  v112 = v166;
                  v113 = v163;
                  v45 = v164;
                  goto LABEL_43;
                }

                v45 = v164;
              }
            }
          }
        }

        sub_26CC1B544(v45 + 400, &qword_2804BD838, &qword_26CD473E8);
        goto LABEL_51;
      }
    }
  }

  sub_26CC1B544(v45 + 400, &qword_2804BD838, &qword_26CD473E8);
  v112 = 0uLL;
  v113 = 0uLL;
  v114 = 0uLL;
  v115 = 0uLL;
LABEL_43:
  v116 = *(v45 + 2536);
  *v80 = v171;
  v80[1] = v178;
  v80[2] = v169;
  v80[3] = v173;
  *(v45 + 976) = v114;
  *(v45 + 992) = v115;
  *(v45 + 1008) = v112;
  *(v45 + 1024) = v113;
  v117 = v80[5];
  *(v45 + 848) = v80[4];
  *(v45 + 864) = v117;
  v118 = v80[7];
  *(v45 + 880) = v80[6];
  *(v45 + 896) = v118;
  v119 = v80[1];
  *(v45 + 784) = *v80;
  *(v45 + 800) = v119;
  v120 = v80[3];
  *(v45 + 816) = v80[2];
  *(v45 + 832) = v120;
  nullsub_1();
  v121 = *v70;
  v122 = v70[1];
  v123 = v70[3];
  *(v45 + 688) = v70[2];
  *(v45 + 704) = v123;
  *(v45 + 656) = v121;
  *(v45 + 672) = v122;
  v124 = v70[4];
  v125 = v70[5];
  v126 = v70[7];
  *(v45 + 752) = v70[6];
  *(v45 + 768) = v126;
  *(v45 + 720) = v124;
  *(v45 + 736) = v125;
  v127 = *(v45 + 896);
  v129 = *(v45 + 848);
  v128 = *(v45 + 864);
  v70[6] = *(v45 + 880);
  v70[7] = v127;
  v70[4] = v129;
  v70[5] = v128;
  v130 = *(v45 + 784);
  v131 = *(v45 + 800);
  v132 = *(v45 + 832);
  v70[2] = *(v45 + 816);
  v70[3] = v132;
  *v70 = v130;
  v70[1] = v131;
  sub_26CCE56F0(v80, v45 + 1040);
  sub_26CC1B544(v45 + 656, &qword_2804BD838, &qword_26CD473E8);
  v0 = v45;
  v133 = *(v116 + 16);
  if (v133)
  {
    v134 = *(v0 + 2576);
    v135 = *(v134 + 16);
    v134 += 16;
    v174 = v135;
    v136 = *(v0 + 2536) + ((*(v134 + 64) + 32) & ~*(v134 + 64));
    v172 = *(v134 + 56);
    v170 = (*(v0 + 2552) + 8);
    v137 = (v134 - 8);
    do
    {
      v138 = *(v0 + 2584);
      v139 = *(v0 + 2568);
      v140 = *(v0 + 2560);
      v141 = *(v0 + 2544);
      v174(v138, v136, v139);
      v142 = v80[5];
      *(v0 + 1232) = v80[4];
      *(v0 + 1248) = v142;
      v143 = v80[7];
      *(v0 + 1264) = v80[6];
      *(v0 + 1280) = v143;
      v144 = v80[1];
      *(v0 + 1168) = *v80;
      *(v0 + 1184) = v144;
      v145 = v80[3];
      *(v0 + 1200) = v80[2];
      *(v0 + 1216) = v145;
      sub_26CCE56F0(v80, v0 + 1296);
      sub_26CD3A89C();
      (*v170)(v140, v141);
      (*v137)(v138, v139);
      v136 += v172;
      --v133;
    }

    while (v133);
  }

  v146 = *(v0 + 2712);
  v147 = *(v0 + 2680);
  v148 = v80[4];
  v149 = v80[6];
  v150 = v80[7];
  v186 = v80[5];
  v187[0] = v149;
  v187[1] = v150;
  v151 = v80[1];
  v181 = *v80;
  v182 = v151;
  v152 = v80[3];
  v183 = v80[2];
  v184 = v152;
  v185 = v148;
  v153 = sub_26CCDB300(&v181);
  v155 = v154;
  sub_26CCE574C(v80);
  (*(*v146 + 504))(v153, v155 & 1);

  sub_26CCE6514(v0 + 2064);

  sub_26CCC490C(v147);
LABEL_47:

  v156 = *(v0 + 8);

  return v156();
}

uint64_t sub_26CCDE4FC()
{
  v1 = *(v0 + 2752);

  v2 = v1;
  v3 = sub_26CD3A42C();
  v4 = sub_26CD3A98C();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 2752);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_26CC14000, v3, v4, "Unable to fetch timed metadata: %@", v7, 0xCu);
    sub_26CC1B544(v8, &qword_2804BD8B8, &qword_26CD477D0);
    MEMORY[0x26D6AE340](v8, -1, -1);
    MEMORY[0x26D6AE340](v7, -1, -1);
    sub_26CCE6514(v0 + 2064);
  }

  else
  {
    sub_26CCE6514(v0 + 2064);
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_26CCDE714(uint64_t result, uint64_t a2)
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
  v38 = a2 + 56;
  v33 = result + 56;
  v34 = result;
  v32 = v8;
  if (!v7)
  {
    goto LABEL_8;
  }

  do
  {
    v9 = __clz(__rbit64(v7));
    v35 = (v7 - 1) & v7;
LABEL_13:
    v12 = *(result + 48) + 32 * (v9 | (v3 << 6));
    v14 = *v12;
    v13 = *(v12 + 8);
    v36 = *(v12 + 16);
    v15 = *(v12 + 24);
    v37 = *(v12 + 25);
    sub_26CD3B0FC();

    sub_26CD3A54C();
    v16 = sub_26CD3B13C();
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if (((*(v38 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
LABEL_50:

      return 0;
    }

    v19 = ~v17;
    while (1)
    {
      v22 = *(a2 + 48) + 32 * v18;
      v23 = *(v22 + 16);
      v24 = *(v22 + 24);
      v25 = *(v22 + 25);
      v26 = *v22 == v14 && *(v22 + 8) == v13;
      if (!v26 && (sub_26CD3AFDC() & 1) == 0)
      {
        goto LABEL_18;
      }

      if (v24)
      {
        if (!v15)
        {
          goto LABEL_18;
        }
      }

      else
      {
        if (v23 == v36)
        {
          v27 = v15;
        }

        else
        {
          v27 = 1;
        }

        if (v27)
        {
          goto LABEL_18;
        }
      }

      if (v25)
      {
        break;
      }

      v29 = 0xE400000000000000;
      v30 = 1835099508;
      v28 = v37;
      if (!v37)
      {
        goto LABEL_15;
      }

LABEL_38:
      if (v28 == 1)
      {
        v31 = 0x65756761656CLL;
      }

      else
      {
        v31 = 0x746E657665;
      }

      if (v28 == 1)
      {
        v20 = 0xE600000000000000;
      }

      else
      {
        v20 = 0xE500000000000000;
      }

      if (v30 == v31)
      {
        goto LABEL_16;
      }

LABEL_17:
      v21 = sub_26CD3AFDC();

      if (v21)
      {
        goto LABEL_47;
      }

LABEL_18:
      v18 = (v18 + 1) & v19;
      if (((*(v38 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_50;
      }
    }

    v28 = v37;
    if (v25 == 1)
    {
      v29 = 0xE600000000000000;
      v30 = 0x65756761656CLL;
      if (!v37)
      {
        goto LABEL_15;
      }

      goto LABEL_38;
    }

    v29 = 0xE500000000000000;
    v30 = 0x746E657665;
    if (v37)
    {
      goto LABEL_38;
    }

LABEL_15:
    v20 = 0xE400000000000000;
    if (v30 != 1835099508)
    {
      goto LABEL_17;
    }

LABEL_16:
    if (v29 != v20)
    {
      goto LABEL_17;
    }

LABEL_47:

    v4 = v33;
    result = v34;
    v8 = v32;
    v7 = v35;
  }

  while (v35);
LABEL_8:
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
      v35 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26CCDEA18(uint64_t result, uint64_t a2)
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
  v9 = a2 + 56;
  v22 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    sub_26CD3B0FC();

    sub_26CD3A54C();
    v16 = sub_26CD3B13C();
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v19 = ~v17;
    while (1)
    {
      v20 = (*(a2 + 48) + 16 * v18);
      v21 = *v20 == v15 && v20[1] == v14;
      if (v21 || (sub_26CD3AFDC() & 1) != 0)
      {
        break;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v22;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

void *sub_26CCDEBD0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BC630, &unk_26CD454C0);
  v4 = *(sub_26CD39E2C() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_26CCDECCC(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD850, &qword_26CD47408);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBD30, &qword_26CD47400) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_26CCDEDD4(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD8E8, &unk_26CD47790);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x6666666666666667) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 4) + (v7 >> 63));
  return result;
}

uint64_t sub_26CCDEE64(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_26CD39E2C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_26CCE666C(&qword_280BBB1D8, MEMORY[0x277CC8918], MEMORY[0x277CC8920]);
  v33 = a2;
  v11 = sub_26CD3A52C();
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
      sub_26CCE666C(&qword_280BBB1D0, MEMORY[0x277CC8918], MEMORY[0x277CC8928]);
      v21 = sub_26CD3A56C();
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
    sub_26CCE17D8(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_26CCDF144(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_26CD3B0FC();
  sub_26CD3A54C();
  v8 = sub_26CD3B13C();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_26CD3AFDC() & 1) != 0)
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

    sub_26CCE1AA0(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_26CCDF294(__int128 *a1, uint64_t *a2)
{
  v4 = *v2;
  sub_26CD3B0FC();
  sub_26CC532D8(v41);
  v5 = sub_26CD3B13C();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  v36 = v4 + 56;
  if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
LABEL_27:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v40[0] = *v30;
    sub_26CC54820(a2, v41);
    sub_26CCE1C20(a2, v7, isUniquelyReferenced_nonNull_native);
    *v30 = v40[0];
    v20 = *(a2 + 1);
    *a1 = *a2;
    a1[1] = v20;
    v21 = *(a2 + 3);
    a1[2] = *(a2 + 2);
    a1[3] = v21;
    return 1;
  }

  v33 = ~v6;
  v38 = a2[1];
  v39 = *a2;
  v29 = v4;
  v34 = *(v4 + 48);
  while (1)
  {
    v8 = v34 + (v7 << 6);
    v9 = *(v8 + 16);
    v10 = *(v8 + 24);
    v11 = *(v8 + 32);
    v12 = *(v8 + 33);
    v13 = *(v8 + 34);
    v14 = *(v8 + 35);
    v15 = *(v8 + 36);
    v16 = *(v8 + 37);
    v35 = *(v8 + 40);
    v37 = *(v8 + 48);
    v32 = *(v8 + 56);
    v17 = *v8 == v39 && *(v8 + 8) == v38;
    if (!v17 && (sub_26CD3AFDC() & 1) == 0 || (v9 != a2[2] || v10 != a2[3]) && (sub_26CD3AFDC() & 1) == 0 || v11 != (a2[4] & 1) || ((v12 ^ *(a2 + 33)) & 1) != 0 || v13 != (*(a2 + 34) & 1) || ((v14 ^ *(a2 + 35)) & 1) != 0 || v15 != (*(a2 + 36) & 1) || ((v16 ^ *(a2 + 37)) & 1) != 0)
    {
      goto LABEL_4;
    }

    v18 = a2[6];
    if (v37)
    {
      if (!v18 || (v35 != a2[5] || v37 != v18) && (sub_26CD3AFDC() & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    else if (v18)
    {
      goto LABEL_4;
    }

    if (v32 == a2[7])
    {
      break;
    }

LABEL_4:
    v7 = (v7 + 1) & v33;
    if (((*(v36 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  sub_26CC54858(a2);
  v23 = (*(v29 + 48) + (v7 << 6));
  v25 = *v23;
  v24 = v23[1];
  v26 = v23[3];
  v41[2] = v23[2];
  v41[3] = v26;
  v41[0] = v25;
  v41[1] = v24;
  v27 = v23[1];
  *a1 = *v23;
  a1[1] = v27;
  v28 = v23[3];
  a1[2] = v23[2];
  a1[3] = v28;
  sub_26CC54820(v41, v40);
  return 0;
}

uint64_t sub_26CCDF54C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5)
{
  v9 = *v5;
  sub_26CD3B0FC();
  sub_26CD3A54C();
  v10 = sub_26CD3B13C();
  v11 = -1 << *(v9 + 32);
  v12 = v10 & ~v11;
  if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
LABEL_32:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v35 = *v32;

    sub_26CCE1EE4(a2, a3, a4, a5 & 0xFF01, v12, isUniquelyReferenced_nonNull_native);
    *v32 = v35;
    *a1 = a2;
    *(a1 + 8) = a3;
    *(a1 + 16) = a4;
    *(a1 + 24) = a5 & 1;
    *(a1 + 25) = HIBYTE(a5);
    return 1;
  }

  v13 = ~v11;
  while (1)
  {
    v15 = *(v9 + 48) + 32 * v12;
    v16 = *(v15 + 16);
    v17 = *(v15 + 24);
    v18 = *(v15 + 25);
    v19 = *v15 == a2 && *(v15 + 8) == a3;
    if (!v19 && (sub_26CD3AFDC() & 1) == 0)
    {
      goto LABEL_4;
    }

    if (v17)
    {
      if ((a5 & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    else if ((a5 & 1) != 0 || v16 != a4)
    {
      goto LABEL_4;
    }

    if (v18)
    {
      break;
    }

    v21 = 0xE400000000000000;
    v22 = 1835099508;
    v20 = HIBYTE(a5);
    if (!HIBYTE(a5))
    {
      goto LABEL_29;
    }

LABEL_20:
    if (v20 == 1)
    {
      v23 = 0x65756761656CLL;
    }

    else
    {
      v23 = 0x746E657665;
    }

    if (v20 == 1)
    {
      v24 = 0xE600000000000000;
    }

    else
    {
      v24 = 0xE500000000000000;
    }

    if (v22 == v23)
    {
      goto LABEL_30;
    }

LABEL_3:
    v14 = sub_26CD3AFDC();

    if (v14)
    {
      goto LABEL_33;
    }

LABEL_4:
    v12 = (v12 + 1) & v13;
    if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  v20 = HIBYTE(a5);
  if (v18 == 1)
  {
    v21 = 0xE600000000000000;
    v22 = 0x65756761656CLL;
    if (!HIBYTE(a5))
    {
      goto LABEL_29;
    }

    goto LABEL_20;
  }

  v21 = 0xE500000000000000;
  v22 = 0x746E657665;
  if (HIBYTE(a5))
  {
    goto LABEL_20;
  }

LABEL_29:
  v24 = 0xE400000000000000;
  if (v22 != 1835099508)
  {
    goto LABEL_3;
  }

LABEL_30:
  if (v21 != v24)
  {
    goto LABEL_3;
  }

LABEL_33:

  v27 = *(v9 + 48) + 32 * v12;
  v29 = *v27;
  v28 = *(v27 + 8);
  v30 = *(v27 + 16);
  v31 = *(v27 + 24);
  LOBYTE(v27) = *(v27 + 25);
  *a1 = v29;
  *(a1 + 8) = v28;
  *(a1 + 16) = v30;
  *(a1 + 24) = v31;
  *(a1 + 25) = v27;

  return 0;
}

uint64_t sub_26CCDF818(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_26CD3ABBC();

    if (v9)
    {

      sub_26CC18080(0, &qword_2804BCA38, 0x277CE1FF0);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_26CD3ABAC();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_26CCDFF48(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_26CCE0F1C(v20 + 1);
    }

    v18 = v8;
    sub_26CCE1754(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_26CC18080(0, &qword_2804BCA38, 0x277CE1FF0);
  v11 = sub_26CD3AA8C();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_26CCE2194(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_26CD3AA9C();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_26CCDFA50(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_26CD3A20C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_26CCE666C(&qword_280BBB1C0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v33 = a2;
  v11 = sub_26CD3A52C();
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
      sub_26CCE666C(&qword_280BBB1B8, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v21 = sub_26CD3A56C();
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
    sub_26CCE2304(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_26CCDFD30(uint64_t a1, char *a2)
{
  v4 = *a2;
  v5 = *v2;
  sub_26CD3B0FC();
  v6 = v4 & 1;
  v8 = *(a2 + 1);
  v7 = *(a2 + 2);
  v10 = *(a2 + 3);
  v9 = *(a2 + 4);
  v32 = a2;
  sub_26CD3B11C();
  v34 = v7;
  sub_26CD3A54C();
  sub_26CD3A54C();
  v11 = sub_26CD3B13C();
  v12 = v5 + 56;
  v13 = -1 << *(v5 + 32);
  v14 = v11 & ~v13;
  if ((*(v5 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v30 = v5;
    v16 = *(v5 + 48);
    while (1)
    {
      v17 = (v16 + 40 * v14);
      if (*v17 == v6)
      {
        v19 = v17[3];
        v18 = v17[4];
        v20 = v17[1] == v8 && v17[2] == v34;
        if (v20 || (sub_26CD3AFDC() & 1) != 0)
        {
          v21 = v19 == v10 && v18 == v9;
          if (v21 || (sub_26CD3AFDC() & 1) != 0)
          {
            break;
          }
        }
      }

      v14 = (v14 + 1) & v15;
      if (((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    v22 = *(v30 + 48) + 40 * v14;
    v24 = *(v22 + 8);
    v23 = *(v22 + 16);
    v25 = *(v22 + 24);
    v26 = *(v22 + 32);
    *a1 = *v22;
    *(a1 + 8) = v24;
    *(a1 + 16) = v23;
    *(a1 + 24) = v25;
    *(a1 + 32) = v26;

    return 0;
  }

  else
  {
LABEL_16:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v35 = *v31;

    sub_26CCE25CC(v32, v14, isUniquelyReferenced_nonNull_native);
    *v31 = v35;
    v29 = *(v32 + 1);
    *a1 = *v32;
    *(a1 + 16) = v29;
    *(a1 + 32) = *(v32 + 4);
    return 1;
  }
}

uint64_t sub_26CCDFF48(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD8A8, &unk_26CD47720);
    v2 = sub_26CD3AC3C();
    v15 = v2;
    sub_26CD3AB9C();
    if (sub_26CD3ABCC())
    {
      sub_26CC18080(0, &qword_2804BCA38, 0x277CE1FF0);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_26CCE0F1C(v9 + 1);
        }

        v2 = v15;
        result = sub_26CD3AA8C();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_26CD3ABCC());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_26CCE0138(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA98, &unk_26CD42870);
  result = sub_26CD3AC2C();
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
      sub_26CD3B0FC();
      sub_26CD3A54C();
      result = sub_26CD3B13C();
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

uint64_t sub_26CCE0398(uint64_t a1)
{
  v2 = v1;
  v36 = sub_26CD39E2C();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD880, &unk_26CD476D8);
  result = sub_26CD3AC2C();
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
      sub_26CCE666C(&qword_280BBB1D8, MEMORY[0x277CC8918], MEMORY[0x277CC8920]);
      result = sub_26CD3A52C();
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

uint64_t sub_26CCE06F4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD888, &qword_26CD476E8);
  result = sub_26CD3AC2C();
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
      sub_26CD3B0FC();
      sub_26CD3A54C();
      result = sub_26CD3B13C();
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

uint64_t sub_26CCE0954(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD8E0, &qword_26CD47788);
  result = sub_26CD3AC2C();
  if (*(v3 + 16))
  {
    v28 = v1;
    v5 = 0;
    v29 = (v3 + 56);
    v6 = 1 << *(v3 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v3 + 56);
    v9 = (v6 + 63) >> 6;
    v32 = result + 56;
    v33 = v3;
    v30 = v9;
    v31 = result;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v38 = (v8 - 1) & v8;
LABEL_14:
      v15 = *(v3 + 48) + ((v12 | (v5 << 6)) << 6);
      v16 = *v15;
      v17 = *(v15 + 8);
      v18 = *(v15 + 16);
      v19 = *(v15 + 24);
      v20 = *(v15 + 32);
      v21 = *(v15 + 33);
      v34 = *(v15 + 35);
      v35 = *(v15 + 34);
      v22 = *(v15 + 36);
      v23 = *(v15 + 37);
      v37 = *(v15 + 38);
      v24 = *(v15 + 48);
      v39 = *(v15 + 40);
      v36 = *(v15 + 56);
      sub_26CD3B0FC();
      sub_26CD3A54C();
      sub_26CD3A54C();
      sub_26CD3B11C();
      sub_26CD3B11C();
      sub_26CD3B11C();
      sub_26CD3B11C();
      sub_26CD3B11C();
      sub_26CD3B11C();
      sub_26CD3B11C();
      if (v24)
      {
        sub_26CD3A54C();
      }

      MEMORY[0x26D6ADB10](v36);
      sub_26CD3B13C();
      v10 = sub_26CD3AB8C();
      *(v32 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
      v11 = *(v31 + 48) + (v10 << 6);
      result = v31;
      *v11 = v16;
      *(v11 + 8) = v17;
      *(v11 + 16) = v18;
      *(v11 + 24) = v19;
      *(v11 + 32) = v20;
      *(v11 + 33) = v21;
      *(v11 + 34) = v35;
      *(v11 + 35) = v34;
      *(v11 + 36) = v22;
      *(v11 + 37) = v23;
      *(v11 + 38) = v37;
      *(v11 + 40) = v39;
      *(v11 + 48) = v24;
      *(v11 + 56) = v36;
      ++*(v31 + 16);
      v3 = v33;
      v8 = v38;
      v9 = v30;
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        return result;
      }

      if (v5 >= v9)
      {
        break;
      }

      v14 = v29[v5];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v38 = (v14 - 1) & v14;
        goto LABEL_14;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      v26 = result;
      bzero(v29, ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      result = v26;
    }

    else
    {
      *v29 = -1 << v25;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  v27 = result;

  *v2 = v27;
  return result;
}

uint64_t sub_26CCE0C98(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD8D8, &qword_26CD47780);
  result = sub_26CD3AC2C();
  v5 = result;
  if (*(v3 + 16))
  {
    v30 = v3;
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
      v18 = *(v3 + 48) + 32 * (v15 | (v6 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      v31 = *(v18 + 25);
      v32 = *(v18 + 24);
      sub_26CD3B0FC();
      sub_26CD3A54C();
      result = sub_26CD3B13C();
      v22 = -1 << *(v5 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 32 * v13;
      *v14 = v19;
      *(v14 + 8) = v20;
      *(v14 + 16) = v21;
      *(v14 + 24) = v32;
      *(v14 + 25) = v31;
      ++*(v5 + 16);
      v3 = v30;
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

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      bzero(v7, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_26CCE0F1C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD8A8, &unk_26CD47720);
  result = sub_26CD3AC2C();
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
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      result = sub_26CD3AA8C();
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

uint64_t sub_26CCE1144(uint64_t a1)
{
  v2 = v1;
  v36 = sub_26CD3A20C();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD8B0, &qword_26CD47730);
  result = sub_26CD3AC2C();
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
      sub_26CCE666C(&qword_280BBB1C0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_26CD3A52C();
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

uint64_t sub_26CCE14A0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCAD8, &qword_26CD42890);
  v4 = sub_26CD3AC2C();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v32 = (v3 + 56);
    v33 = v3;
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
    v11 = v4 + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v34 = (v9 - 1) & v9;
LABEL_15:
      v18 = *(v3 + 48) + 40 * (v14 | (v6 << 6));
      v19 = *v18;
      v21 = *(v18 + 8);
      v20 = *(v18 + 16);
      v22 = *(v18 + 24);
      v23 = *(v18 + 32);
      sub_26CD3B0FC();
      sub_26CD3B11C();
      sub_26CD3A54C();
      sub_26CD3A54C();
      result = sub_26CD3B13C();
      v24 = -1 << *(v5 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v11 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v11 + 8 * v26);
          if (v30 != -1)
          {
            v12 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v25) & ~*(v11 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = *(v5 + 48) + 40 * v12;
      *v13 = v19;
      v9 = v34;
      *(v13 + 8) = v21;
      *(v13 + 16) = v20;
      *(v13 + 24) = v22;
      *(v13 + 32) = v23;
      ++*(v5 + 16);
      v3 = v33;
    }

    v15 = v6;
    result = v32;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v10)
      {
        break;
      }

      v17 = v32[v6];
      ++v15;
      if (v17)
      {
        v14 = __clz(__rbit64(v17));
        v34 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v31 = 1 << *(v3 + 32);
    if (v31 >= 64)
    {
      bzero(v32, ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v32 = -1 << v31;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_26CCE1754(uint64_t a1, uint64_t a2)
{
  sub_26CD3AA8C();
  result = sub_26CD3AB8C();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_26CCE17D8(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_26CD39E2C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_26CCE0398(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_26CCE2EDC(MEMORY[0x277CC8918], &qword_2804BD880, &unk_26CD476D8);
      goto LABEL_12;
    }

    sub_26CCE34C4(v10 + 1);
  }

  v12 = *v3;
  sub_26CCE666C(&qword_280BBB1D8, MEMORY[0x277CC8918], MEMORY[0x277CC8920]);
  v13 = sub_26CD3A52C();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_26CCE666C(&qword_280BBB1D0, MEMORY[0x277CC8918], MEMORY[0x277CC8928]);
      v21 = sub_26CD3A56C();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_26CD3B01C();
  __break(1u);
  return result;
}

uint64_t sub_26CCE1AA0(uint64_t result, uint64_t a2, unint64_t a3, char a4)
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
    sub_26CCE06F4(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_26CCE2938();
      goto LABEL_16;
    }

    sub_26CCE37E0(v8 + 1);
  }

  v10 = *v4;
  sub_26CD3B0FC();
  sub_26CD3A54C();
  result = sub_26CD3B13C();
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

      result = sub_26CD3AFDC();
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
  result = sub_26CD3B01C();
  __break(1u);
  return result;
}

uint64_t sub_26CCE1C20(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_26CCE0954(v6 + 1);
    }

    else
    {
      if (v7 > v6)
      {
        result = sub_26CCE2A94();
        goto LABEL_34;
      }

      sub_26CCE3A18(v6 + 1);
    }

    v8 = *v3;
    sub_26CD3B0FC();
    sub_26CC532D8(v40);
    result = sub_26CD3B13C();
    v9 = -1 << *(v8 + 32);
    a2 = result & ~v9;
    v36 = v8 + 56;
    if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v34 = ~v9;
      v38 = *(v5 + 8);
      v39 = *v5;
      v33 = *(v8 + 48);
      v31 = *(v5 + 33);
      v28 = *(v5 + 37);
      v29 = *(v5 + 35);
      do
      {
        v10 = v33 + (a2 << 6);
        result = *v10;
        v11 = *(v10 + 16);
        v12 = *(v10 + 24);
        v13 = *(v10 + 32);
        v14 = *(v10 + 33);
        v15 = *(v10 + 34);
        v16 = *(v10 + 35);
        v17 = *(v10 + 36);
        v18 = *(v10 + 37);
        v35 = *(v10 + 40);
        v37 = *(v10 + 48);
        v32 = *(v10 + 56);
        v19 = *v10 == v39 && *(v10 + 8) == v38;
        if (v19 || (result = sub_26CD3AFDC(), (result & 1) != 0))
        {
          if (v11 == *(v5 + 16) && v12 == *(v5 + 24) || (result = sub_26CD3AFDC(), (result & 1) != 0))
          {
            if (v13 == (*(v5 + 32) & 1) && ((v14 ^ v31) & 1) == 0 && v15 == (*(v5 + 34) & 1) && ((v16 ^ v29) & 1) == 0 && v17 == (*(v5 + 36) & 1) && ((v18 ^ v28) & 1) == 0)
            {
              v20 = *(v5 + 48);
              if (v37)
              {
                if (v20)
                {
                  if (v35 == *(v5 + 40) && v37 == v20 || (result = sub_26CD3AFDC(), (result & 1) != 0))
                  {
LABEL_10:
                    if (v32 == *(v5 + 56))
                    {
                      goto LABEL_37;
                    }
                  }
                }
              }

              else if (!v20)
              {
                goto LABEL_10;
              }
            }
          }
        }

        a2 = (a2 + 1) & v34;
      }

      while (((*(v36 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_34:
  v21 = *v30;
  *(*v30 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v22 = (*(v21 + 48) + (a2 << 6));
  v23 = *(v5 + 16);
  *v22 = *v5;
  v22[1] = v23;
  v24 = *(v5 + 48);
  v22[2] = *(v5 + 32);
  v22[3] = v24;
  v25 = *(v21 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (v26)
  {
    __break(1u);
LABEL_37:
    result = sub_26CD3B01C();
    __break(1u);
  }

  else
  {
    *(v21 + 16) = v27;
  }

  return result;
}

void sub_26CCE1EE4(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4, unint64_t a5, char a6)
{
  v11 = *(*v6 + 16);
  v12 = *(*v6 + 24);
  if (v12 > v11 && (a6 & 1) != 0)
  {
    goto LABEL_40;
  }

  if (a6)
  {
    sub_26CCE0C98(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_26CCE2C18();
      goto LABEL_40;
    }

    sub_26CCE3CA0(v11 + 1);
  }

  v13 = *v6;
  sub_26CD3B0FC();
  sub_26CD3A54C();
  v14 = sub_26CD3B13C();
  v15 = -1 << *(v13 + 32);
  a5 = v14 & ~v15;
  if ((*(v13 + 56 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5))
  {
    v16 = ~v15;
    do
    {
      v18 = *(v13 + 48) + 32 * a5;
      v19 = *(v18 + 16);
      v20 = *(v18 + 24);
      v21 = *(v18 + 25);
      v22 = *v18 == a1 && *(v18 + 8) == a2;
      if (!v22 && (sub_26CD3AFDC() & 1) == 0)
      {
        goto LABEL_11;
      }

      if (v20)
      {
        if ((a4 & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      else if ((a4 & 1) != 0 || v19 != a3)
      {
        goto LABEL_11;
      }

      if (v21)
      {
        v23 = HIBYTE(a4);
        if (v21 == 1)
        {
          v24 = 0xE600000000000000;
          v25 = 0x65756761656CLL;
          if (!HIBYTE(a4))
          {
            goto LABEL_36;
          }
        }

        else
        {
          v24 = 0xE500000000000000;
          v25 = 0x746E657665;
          if (!HIBYTE(a4))
          {
LABEL_36:
            v27 = 0xE400000000000000;
            if (v25 == 1835099508)
            {
              goto LABEL_37;
            }

            goto LABEL_10;
          }
        }
      }

      else
      {
        v24 = 0xE400000000000000;
        v25 = 1835099508;
        v23 = HIBYTE(a4);
        if (!HIBYTE(a4))
        {
          goto LABEL_36;
        }
      }

      if (v23 == 1)
      {
        v26 = 0x65756761656CLL;
      }

      else
      {
        v26 = 0x746E657665;
      }

      if (v23 == 1)
      {
        v27 = 0xE600000000000000;
      }

      else
      {
        v27 = 0xE500000000000000;
      }

      if (v25 == v26)
      {
LABEL_37:
        if (v24 == v27)
        {

LABEL_39:
          sub_26CD3B01C();
          __break(1u);
          break;
        }
      }

LABEL_10:
      v17 = sub_26CD3AFDC();

      if (v17)
      {
        goto LABEL_39;
      }

LABEL_11:
      a5 = (a5 + 1) & v16;
    }

    while (((*(v13 + 56 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5) & 1) != 0);
  }

LABEL_40:
  v28 = *v33;
  *(*v33 + 8 * (a5 >> 6) + 56) |= 1 << a5;
  v29 = *(v28 + 48) + 32 * a5;
  *v29 = a1;
  *(v29 + 8) = a2;
  *(v29 + 16) = a3;
  *(v29 + 24) = a4 & 1;
  *(v29 + 25) = HIBYTE(a4);
  v30 = *(v28 + 16);
  v31 = __OFADD__(v30, 1);
  v32 = v30 + 1;
  if (v31)
  {
    __break(1u);
  }

  else
  {
    *(v28 + 16) = v32;
  }
}

void sub_26CCE2194(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_26CCE0F1C(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_26CCE2D8C();
      goto LABEL_12;
    }

    sub_26CCE3EFC(v6 + 1);
  }

  v8 = *v3;
  v9 = sub_26CD3AA8C();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_26CC18080(0, &qword_2804BCA38, 0x277CE1FF0);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_26CD3AA9C();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_26CD3B01C();
  __break(1u);
}

uint64_t sub_26CCE2304(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_26CD3A20C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_26CCE1144(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_26CCE2EDC(MEMORY[0x277CC95F0], &qword_2804BD8B0, &qword_26CD47730);
      goto LABEL_12;
    }

    sub_26CCE4110(v10 + 1);
  }

  v12 = *v3;
  sub_26CCE666C(&qword_280BBB1C0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v13 = sub_26CD3A52C();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_26CCE666C(&qword_280BBB1B8, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v21 = sub_26CD3A56C();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_26CD3B01C();
  __break(1u);
  return result;
}

uint64_t sub_26CCE25CC(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  v34 = result;
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_23;
  }

  if (a3)
  {
    sub_26CCE14A0(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_26CCE3114();
      goto LABEL_23;
    }

    sub_26CCE442C(v6 + 1);
  }

  v8 = *v5;
  v9 = *v3;
  sub_26CD3B0FC();
  v10 = v8 & 1;
  v11 = *(v5 + 8);
  v12 = *(v5 + 16);
  v14 = *(v5 + 24);
  v13 = *(v5 + 32);
  sub_26CD3B11C();
  v35 = v11;
  v15 = v12;
  sub_26CD3A54C();
  v16 = v14;
  v17 = v13;
  sub_26CD3A54C();
  result = sub_26CD3B13C();
  v18 = v9 + 56;
  v19 = -1 << *(v9 + 32);
  a2 = result & ~v19;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v20 = ~v19;
    v21 = *(v9 + 48);
    while (1)
    {
      v22 = (v21 + 40 * a2);
      if (*v22 == v10)
      {
        v23 = v22[3];
        v24 = v22[4];
        v25 = v22[1] == v35 && v22[2] == v15;
        if (v25 || (result = sub_26CD3AFDC(), (result & 1) != 0))
        {
          if (v23 == v16 && v24 == v17)
          {
            break;
          }

          result = sub_26CD3AFDC();
          if (result)
          {
            break;
          }
        }
      }

      a2 = (a2 + 1) & v20;
      if (((*(v18 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = sub_26CD3B01C();
    __break(1u);
  }

LABEL_23:
  v27 = *v33;
  *(*v33 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v28 = *(v27 + 48) + 40 * a2;
  v29 = *(v34 + 16);
  *v28 = *v34;
  *(v28 + 16) = v29;
  *(v28 + 32) = *(v34 + 32);
  v30 = *(v27 + 16);
  v31 = __OFADD__(v30, 1);
  v32 = v30 + 1;
  if (v31)
  {
    __break(1u);
  }

  else
  {
    *(v27 + 16) = v32;
  }

  return result;
}

void *sub_26CCE27DC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA98, &unk_26CD42870);
  v2 = *v0;
  v3 = sub_26CD3AC1C();
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

void *sub_26CCE2938()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD888, &qword_26CD476E8);
  v2 = *v0;
  v3 = sub_26CD3AC1C();
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

void *sub_26CCE2A94()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD8E0, &qword_26CD47788);
  v2 = *v0;
  v3 = sub_26CD3AC1C();
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
        v17 = (v14 | (v8 << 6)) << 6;
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = v18[3];
        v27[2] = v18[2];
        v27[3] = v21;
        v27[0] = v20;
        v27[1] = v19;
        v22 = (*(v4 + 48) + v17);
        v23 = *v18;
        v24 = v18[1];
        v25 = v18[3];
        v22[2] = v18[2];
        v22[3] = v25;
        *v22 = v23;
        v22[1] = v24;
        result = sub_26CC54820(v27, &v26);
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

void *sub_26CCE2C18()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD8D8, &qword_26CD47780);
  v2 = *v0;
  v3 = sub_26CD3AC1C();
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
        v17 = 32 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v20 = *v18;
        v19 = *(v18 + 8);
        v21 = *(v18 + 16);
        v22 = *(v18 + 24);
        LOBYTE(v18) = *(v18 + 25);
        v23 = *(v4 + 48) + v17;
        *v23 = v20;
        *(v23 + 8) = v19;
        *(v23 + 16) = v21;
        *(v23 + 24) = v22;
        *(v23 + 25) = v18;
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

id sub_26CCE2D8C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD8A8, &unk_26CD47720);
  v2 = *v0;
  v3 = sub_26CD3AC1C();
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

void *sub_26CCE2EDC(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v7 = a1(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v11 = *v3;
  v12 = sub_26CD3AC1C();
  v13 = v12;
  if (*(v11 + 16))
  {
    v27 = v6;
    result = (v12 + 56);
    v15 = ((1 << *(v13 + 32)) + 63) >> 6;
    if (v13 != v11 || result >= v11 + 56 + 8 * v15)
    {
      result = memmove(result, (v11 + 56), 8 * v15);
    }

    v17 = 0;
    *(v13 + 16) = *(v11 + 16);
    v18 = 1 << *(v11 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v11 + 56);
    v21 = (v18 + 63) >> 6;
    v28 = v8 + 32;
    for (i = v8 + 16; v20; result = (*(v8 + 32))(*(v13 + 48) + v25, v10, v7))
    {
      v22 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_17:
      v25 = *(v8 + 72) * (v22 | (v17 << 6));
      (*(v8 + 16))(v10, *(v11 + 48) + v25, v7);
    }

    v23 = v17;
    while (1)
    {
      v17 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v17 >= v21)
      {

        v6 = v27;
        goto LABEL_21;
      }

      v24 = *(v11 + 56 + 8 * v17);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v20 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v13;
  }

  return result;
}

void *sub_26CCE3114()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCAD8, &qword_26CD42890);
  v2 = *v0;
  v3 = sub_26CD3AC1C();
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
        v17 = 40 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v20 = *(v18 + 8);
        v19 = *(v18 + 16);
        v21 = *(v18 + 24);
        v22 = *(v18 + 32);
        v23 = *(v4 + 48) + v17;
        *v23 = *v18;
        *(v23 + 8) = v20;
        *(v23 + 16) = v19;
        *(v23 + 24) = v21;
        *(v23 + 32) = v22;
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

uint64_t sub_26CCE328C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA98, &unk_26CD42870);
  result = sub_26CD3AC2C();
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
      sub_26CD3B0FC();

      sub_26CD3A54C();
      result = sub_26CD3B13C();
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

uint64_t sub_26CCE34C4(uint64_t a1)
{
  v2 = v1;
  v33 = sub_26CD39E2C();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD880, &unk_26CD476D8);
  v7 = sub_26CD3AC2C();
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
      sub_26CCE666C(&qword_280BBB1D8, MEMORY[0x277CC8918], MEMORY[0x277CC8920]);
      result = sub_26CD3A52C();
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

uint64_t sub_26CCE37E0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD888, &qword_26CD476E8);
  result = sub_26CD3AC2C();
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
      v19 = *v17;
      v18 = v17[1];
      sub_26CD3B0FC();
      sub_26CD3A54C();
      result = sub_26CD3B13C();
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
      *v13 = v19;
      v13[1] = v18;
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

unint64_t sub_26CCE3A18(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD8E0, &qword_26CD47788);
  result = sub_26CD3AC2C();
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
    v22 = result + 56;
    while (v9)
    {
      v15 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + ((v15 | (v6 << 6)) << 6));
      v20 = *v18;
      v19 = v18[1];
      v21 = v18[3];
      v26 = v18[2];
      v27 = v21;
      v24 = v20;
      v25 = v19;
      sub_26CD3B0FC();
      sub_26CC54820(&v24, v23);
      sub_26CD3A54C();
      sub_26CD3A54C();
      sub_26CD3B11C();
      sub_26CD3B11C();
      sub_26CD3B11C();
      sub_26CD3B11C();
      sub_26CD3B11C();
      sub_26CD3B11C();
      if (v27)
      {
        sub_26CD3B11C();
        sub_26CD3A54C();
      }

      else
      {
        sub_26CD3B11C();
      }

      MEMORY[0x26D6ADB10](*(&v27 + 1));
      sub_26CD3B13C();
      result = sub_26CD3AB8C();
      *(v22 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v11 = (*(v5 + 48) + (result << 6));
      v13 = v26;
      v12 = v27;
      v14 = v25;
      *v11 = v24;
      v11[1] = v14;
      v11[2] = v13;
      v11[3] = v12;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_19;
      }

      v17 = *(v3 + 56 + 8 * v6);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v9 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_19:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_26CCE3CA0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD8D8, &qword_26CD47780);
  result = sub_26CD3AC2C();
  v5 = result;
  if (*(v3 + 16))
  {
    v29 = v3;
    v6 = 0;
    v7 = v3 + 56;
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
      v18 = *(v3 + 48) + 32 * (v15 | (v6 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      v30 = *(v18 + 25);
      v31 = *(v18 + 24);
      sub_26CD3B0FC();

      sub_26CD3A54C();
      result = sub_26CD3B13C();
      v22 = -1 << *(v5 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 32 * v13;
      *v14 = v19;
      *(v14 + 8) = v20;
      *(v14 + 16) = v21;
      *(v14 + 24) = v31;
      *(v14 + 25) = v30;
      ++*(v5 + 16);
      v3 = v29;
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v17 = *(v7 + 8 * v6);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
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

uint64_t sub_26CCE3EFC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD8A8, &unk_26CD47720);
  result = sub_26CD3AC2C();
  v5 = result;
  if (*(v3 + 16))
  {
    v24 = v1;
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
      result = sub_26CD3AA8C();
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

        goto LABEL_28;
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

        v2 = v24;
        goto LABEL_26;
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

uint64_t sub_26CCE4110(uint64_t a1)
{
  v2 = v1;
  v33 = sub_26CD3A20C();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BD8B0, &qword_26CD47730);
  v7 = sub_26CD3AC2C();
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
      sub_26CCE666C(&qword_280BBB1C0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_26CD3A52C();
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

uint64_t sub_26CCE442C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCAD8, &qword_26CD42890);
  result = sub_26CD3AC2C();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = v3 + 56;
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
    v30 = (v8 + 63) >> 6;
    v31 = v3;
    v11 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v32 = (v10 - 1) & v10;
LABEL_15:
      v17 = *(v3 + 48) + 40 * (v14 | (v6 << 6));
      v18 = *v17;
      v20 = *(v17 + 8);
      v19 = *(v17 + 16);
      v22 = *(v17 + 24);
      v21 = *(v17 + 32);
      sub_26CD3B0FC();
      sub_26CD3B11C();

      sub_26CD3A54C();
      sub_26CD3A54C();
      result = sub_26CD3B13C();
      v23 = -1 << *(v5 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v11 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v11 + 8 * v25);
          if (v29 != -1)
          {
            v12 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v24) & ~*(v11 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = *(v5 + 48) + 40 * v12;
      *v13 = v18;
      v10 = v32;
      *(v13 + 8) = v20;
      *(v13 + 16) = v19;
      *(v13 + 24) = v22;
      *(v13 + 32) = v21;
      ++*(v5 + 16);
      v3 = v31;
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v30)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v7 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v32 = (v16 - 1) & v16;
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

uint64_t sub_26CCE46C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_26CD3A20C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_26CCE666C(&qword_280BBB1C0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v31 = a1;
  v10 = sub_26CD3A52C();
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
      sub_26CCE666C(&qword_280BBB1B8, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v19 = sub_26CD3A56C();
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
      sub_26CCE2EDC(MEMORY[0x277CC95F0], &qword_2804BD8B0, &qword_26CD47730);
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    sub_26CCE4990(v13);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

uint64_t sub_26CCE4990(int64_t a1)
{
  v3 = sub_26CD3A20C();
  v4 = *(v3 - 8);
  result = MEMORY[0x28223BE20](v3);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v9 = *v1 + 56;
  v10 = -1 << *(*v1 + 32);
  v11 = (a1 + 1) & ~v10;
  if (((1 << v11) & *(v9 + 8 * (v11 >> 6))) != 0)
  {
    v12 = ~v10;

    v13 = sub_26CD3AB7C();
    if ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) != 0)
    {
      v14 = v12;
      v15 = (v13 + 1) & v12;
      v35 = *(v4 + 16);
      v36 = v4 + 16;
      v16 = *(v4 + 72);
      v33 = (v4 + 8);
      v34 = v9;
      v17 = v16;
      do
      {
        v18 = v17;
        v19 = v17 * v11;
        v35(v7, *(v8 + 48) + v17 * v11, v3);
        v20 = v8;
        v21 = v15;
        v22 = v14;
        v23 = v20;
        sub_26CCE666C(&qword_280BBB1C0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
        v24 = sub_26CD3A52C();
        (*v33)(v7, v3);
        v25 = v24 & v22;
        v14 = v22;
        v15 = v21;
        if (a1 >= v21)
        {
          if (v25 >= v21 && a1 >= v25)
          {
LABEL_16:
            v8 = v23;
            v28 = *(v23 + 48);
            v17 = v18;
            v29 = v18 * a1;
            if (v18 * a1 < v19 || v28 + v18 * a1 >= (v28 + v19 + v18))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v11;
            }

            else
            {
              a1 = v11;
              if (v29 != v19)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v11;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v25 >= v21 || a1 >= v25)
        {
          goto LABEL_16;
        }

        v8 = v23;
        v17 = v18;
LABEL_5:
        v11 = (v11 + 1) & v14;
        v9 = v34;
      }

      while (((*(v34 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
    }

    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v30 = *(v8 + 16);
  v31 = __OFSUB__(v30, 1);
  v32 = v30 - 1;
  if (v31)
  {
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v32;
    ++*(v8 + 36);
  }

  return result;
}

uint64_t sub_26CCE4C98(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = sub_26CD39E2C();
  v42 = *(v40 - 8);
  v8 = MEMORY[0x28223BE20](v40);
  v41 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v39 = &v33 - v11;
  v12 = a4 + 56;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return a3;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    result = 0;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = 1;
    v37 = a4 + 56;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 48);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      a3 = v38;
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      result = a1;
      v30 = __OFADD__(a1++, 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    a3 = result;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_26CCE4F3C(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBD30, &qword_26CD47400);
  v42 = *(v40 - 8);
  v8 = MEMORY[0x28223BE20](v40);
  v41 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v39 = &v33 - v11;
  v12 = a4 + 64;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 64);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return a3;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    result = 0;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = 1;
    v37 = a4 + 64;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 56);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      a3 = v38;
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      result = a1;
      v30 = __OFADD__(a1++, 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    a3 = result;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}