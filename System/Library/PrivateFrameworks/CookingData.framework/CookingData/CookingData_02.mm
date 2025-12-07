uint64_t sub_2442E51C4()
{
  sub_2443131A8();
  sub_244312CF8();
  return sub_2443131D8();
}

uint64_t sub_2442E5228(uint64_t a1)
{
  sub_2443131A8();
  sub_244312CF8();
  return sub_2443131D8();
}

uint64_t sub_2442E5274@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_244312F98();

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_2442E52F4@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_244312F98();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_2442E534C(uint64_t a1)
{
  v2 = sub_2442F18E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2442E5388(uint64_t a1)
{
  v2 = sub_2442F18E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2442E53D8(char a1)
{
  result = 0x6570797440;
  switch(a1)
  {
    case 1:
      result = 0x687061726740;
      break;
    case 2:
      result = 1701667182;
      break;
    case 3:
      result = 0x7470697263736564;
      break;
    case 4:
      result = 0x6567616D69;
      break;
    case 5:
      result = 0x726F68747561;
      break;
    case 6:
      result = 0x656873696C627570;
      break;
    case 7:
      result = 0x7255656372756F73;
      break;
    case 8:
      result = 7107189;
      break;
    case 9:
      result = 1701669236;
      break;
    case 10:
      v3 = 1885696624;
      goto LABEL_23;
    case 11:
      v3 = 1802465123;
LABEL_23:
      result = v3 | 0x656D695400000000;
      break;
    case 12:
      result = 0x6D69546C61746F74;
      break;
    case 13:
      result = 0x4D676E696B6F6F63;
      break;
    case 14:
      result = 0x6C62755065746164;
      break;
    case 15:
      result = 0x7543657069636572;
      break;
    case 16:
      result = 0x7364726F7779656BLL;
      break;
    case 17:
      result = 0x6959657069636572;
      break;
    case 18:
      result = 0x617551646C656979;
      break;
    case 19:
      result = 0x6143657069636572;
      break;
    case 20:
      result = 0x6569646572676E69;
      break;
    case 21:
      result = 0xD000000000000010;
      break;
    case 22:
      result = 0x7463757274736E69;
      break;
    case 23:
      result = 0xD000000000000012;
      break;
    case 24:
      result = 0x65676175676E616CLL;
      break;
    case 25:
      result = 0x6175676E614C6E69;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2442E5718(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_2442E53D8(*a1);
  v5 = v4;
  if (v3 == sub_2442E53D8(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_244313108();
  }

  return v8 & 1;
}

uint64_t sub_2442E57A0()
{
  v1 = *v0;
  sub_2443131A8();
  sub_2442E53D8(v1);
  sub_244312CF8();

  return sub_2443131D8();
}

uint64_t sub_2442E5804(uint64_t a1)
{
  sub_2442E53D8(*v1);
  sub_244312CF8();
}

uint64_t sub_2442E5858(uint64_t a1)
{
  v2 = *v1;
  sub_2443131A8();
  sub_2442E53D8(v2);
  sub_244312CF8();

  return sub_2443131D8();
}

unint64_t sub_2442E58B8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2442F3220(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_2442E58E8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2442E53D8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_2442E591C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2442F3220(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2442E5950(uint64_t a1)
{
  v2 = sub_2442F1240();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2442E598C(uint64_t a1)
{
  v2 = sub_2442F1240();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t InternalJSONLDRecipe.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v491 = a1;
  v470 = a2;
  v3 = sub_244312EE8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v450 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v476 = sub_244312ED8();
  *&v487 = *(v476 - 8);
  v7 = MEMORY[0x28223BE20](v476);
  v475 = &v450 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v479 = (&v450 - v9);
  v10 = sub_2442C6564(&qword_27EDDF378, &unk_2443171A0);
  MEMORY[0x28223BE20](v10 - 8);
  v468 = &v450 - v11;
  v12 = sub_2442C6564(&qword_27EDDF370, &qword_244317198);
  MEMORY[0x28223BE20](v12 - 8);
  v467 = &v450 - v13;
  v14 = sub_2442C6564(&qword_27EDDF368, &qword_244317190);
  MEMORY[0x28223BE20](v14 - 8);
  v466 = &v450 - v15;
  v16 = sub_2442C6564(&qword_27EDDEFD0, &unk_2443160E0);
  MEMORY[0x28223BE20](v16 - 8);
  v471 = &v450 - v17;
  v477 = sub_244312F28();
  *&v473 = *(v477 - 8);
  MEMORY[0x28223BE20](v477);
  v472 = &v450 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v455 = sub_2442C6564(&qword_27EDDF380, &qword_2443171B0);
  *&v454 = *(v455 - 8);
  MEMORY[0x28223BE20](v455);
  v465 = &v450 - v19;
  v20 = sub_2442C6564(&qword_27EDDF388, &qword_2443171B8);
  v480 = *(v20 - 8);
  v21 = MEMORY[0x28223BE20](v20);
  v474 = &v450 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v453 = &v450 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v450 - v26;
  MEMORY[0x28223BE20](v25);
  v492 = &v450 - v28;
  v29 = type metadata accessor for InternalJSONLDRecipe(0);
  v30 = MEMORY[0x28223BE20](v29);
  v32 = &v450 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *(v30 + 28);
  v34 = type metadata accessor for InternalJSONLDRecipe.Author(0);
  v35 = *(v34 - 8);
  v36 = *(v35 + 56);
  v483 = v33;
  v458 = v34;
  v457 = v36;
  v456 = v35 + 56;
  (v36)(&v32[v33], 1, 1);
  v37 = &v32[v29[8]];
  *v37 = 0;
  *(v37 + 1) = 0;
  v484 = v37;
  v38 = v29[9];
  v39 = sub_244312BB8();
  v40 = *(v39 - 8);
  v41 = *(v40 + 56);
  v485 = v38;
  v461 = v39;
  v460 = v41;
  v459 = v40 + 56;
  (v41)(&v32[v38], 1, 1);
  v42 = v29[14];
  v43 = sub_244312C08();
  v44 = *(v43 - 8);
  v45 = *(v44 + 56);
  v486 = v42;
  v464 = v43;
  v463 = v45;
  v462 = v44 + 56;
  (v45)(&v32[v42], 1, 1);
  v46 = &v32[v29[21]];
  *v46 = 0;
  *(v46 + 1) = 0;
  v469 = v46;
  v488 = v29;
  v47 = v29[22];
  v489 = v32;
  v481 = &v32[v47];
  *&v32[v47] = xmmword_244317110;
  if (qword_27EDDE818 != -1)
  {
    swift_once();
  }

  v482 = v20;
  v48 = sub_244312C38();
  v490 = sub_2442D40C8(v48, qword_27EDED120);
  v49 = sub_244312C18();
  v50 = sub_244312E48();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    *v51 = 0;
    _os_log_impl(&dword_2442C5000, v49, v50, "Will decode JSON-LD", v51, 2u);
    MEMORY[0x245D5F2C0](v51, -1, -1);
  }

  sub_2442C65AC(v491, v491[3]);
  v52 = sub_2442F1240();
  sub_244313228();
  if (!v2)
  {
    v450 = *(v480 + 32);
    v450(v492, v27, v482);
    v64 = sub_244312C18();
    v65 = sub_244312E48();
    v66 = os_log_type_enabled(v64, v65);
    v478 = 0;
    v451 = v52;
    if (v66)
    {
      v67 = swift_slowAlloc();
      *v67 = 0;
      _os_log_impl(&dword_2442C5000, v64, v65, "JSON-LD root element is dictionary.", v67, 2u);
      MEMORY[0x245D5F2C0](v67, -1, -1);
    }

    v68 = v489;
LABEL_14:
    KeyPath = swift_getKeyPath();
    v474 = sub_2442C6564(&qword_27EDDF398, &qword_2443171E8);
    inited = swift_initStackObject();
    v487 = xmmword_244317120;
    *(inited + 16) = xmmword_244317120;
    v71 = swift_allocObject();
    *(v71 + 16) = 0;
    *(inited + 32) = sub_2442F1304;
    *(inited + 40) = v71;
    v72 = swift_allocObject();
    *(v72 + 16) = 0;
    *(v72 + 24) = sub_2442F433C;
    *(v72 + 32) = 0;
    *(inited + 48) = sub_2442F1344;
    *(inited + 56) = v72;
    v73 = sub_244312E38();
    *&v497 = KeyPath;

    v475 = sub_2442C6564(&qword_27EDDF3A0, &qword_2443171F0);
    v74 = sub_244312CD8();
    v76 = v75;
    v77 = sub_2442EE07C(v74, v75, v73, inited);
    swift_setDeallocating();
    v452 = sub_2442C6564(&qword_27EDDF3A8, &qword_2443171F8);
    swift_arrayDestroy();
    if (v77)
    {
    }

    else
    {

      v78 = sub_244312C18();

      if (!os_log_type_enabled(v78, v73))
      {

        v77 = MEMORY[0x277D84F90];
        goto LABEL_21;
      }

      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      *&v497 = v80;
      *v79 = 136446466;
      v81 = sub_2442EEF8C(v74, v76, &v497);

      *(v79 + 4) = v81;
      *(v79 + 12) = 2082;
      v77 = MEMORY[0x277D84F90];
      *&v494 = MEMORY[0x277D84F90];
      sub_2442C6564(&qword_27EDDF458, &qword_2443174C8);
      v82 = sub_244312CD8();
      v84 = sub_2442EEF8C(v82, v83, &v497);

      *(v79 + 14) = v84;
      swift_arrayDestroy();
      MEMORY[0x245D5F2C0](v80, -1, -1);
      MEMORY[0x245D5F2C0](v79, -1, -1);
    }

LABEL_21:
    v85 = v77 + 40;
    v86 = -*(v77 + 16);
    v87 = -1;
    v88 = 0xE600000000000000;
    while (v86 + v87 != -1)
    {
      if (++v87 >= *(v77 + 16))
      {
        __break(1u);
        goto LABEL_211;
      }

      if (sub_244312CE8() == 0x657069636572 && v89 == 0xE600000000000000)
      {

LABEL_36:
        v97 = v478;

        v98 = sub_244312C18();
        v99 = sub_244312E28();
        v102 = os_log_type_enabled(v98, v99);
        v86 = v482;
        v88 = v492;
        if (v102)
        {
          v100 = swift_slowAlloc();
          *v100 = 0;
          v101 = "Found recipe at top level.";
LABEL_38:
          _os_log_impl(&dword_2442C5000, v98, v99, v101, v100, 2u);
          MEMORY[0x245D5F2C0](v100, -1, -1);
        }

        goto LABEL_39;
      }

      v85 += 16;
      v91 = sub_244313108();

      if (v91)
      {
        goto LABEL_36;
      }
    }

    v92 = sub_244312C18();
    v93 = sub_244312E48();
    if (os_log_type_enabled(v92, v93))
    {
      v94 = swift_slowAlloc();
      *v94 = 0;
      _os_log_impl(&dword_2442C5000, v92, v93, "Look for @graph entry in top level dictionary.", v94, 2u);
      MEMORY[0x245D5F2C0](v94, -1, -1);
    }

    LOBYTE(v499) = 1;
    v86 = v482;
    v88 = v492;
    v95 = v478;
    sub_244312FA8();
    v96 = v451;
    if (v95)
    {
      v97 = 0;
      MEMORY[0x245D5F140](v95);
      v494 = 0u;
      v495 = 0u;
      v496 = 0;
      sub_2442F3A40(&v494, &qword_27EDDF490, &qword_244317500);
      v98 = sub_244312C18();
      v99 = sub_244312E28();
      if (os_log_type_enabled(v98, v99))
      {
        v100 = swift_slowAlloc();
        *v100 = 0;
        v101 = "No @graph entry at top level. Will attempt to decode root object as recipe.";
        goto LABEL_38;
      }

LABEL_39:
    }

    else
    {
      v478 = 0;
      sub_2442F186C(&v494, &v497);
      sub_2442C65AC(&v497, *(&v498 + 1));
      if ((sub_2443130F8() & 1) == 0)
      {
        v451 = v96;
        v479 = (v454 + 8);
        *&v139 = 136446466;
        v454 = v139;
        *&v139 = 136446210;
        v476 = v139;
LABEL_60:
        sub_2442F1884(&v497, &v494);
        sub_2442F1294(&v497, *(&v498 + 1));
        sub_2442F18E8();
        v140 = v478;
        sub_2443130E8();
        if (v140)
        {
LABEL_211:
          (*(v480 + 8))(v88, v86);
        }

        else
        {
          v478 = 0;
          v141 = swift_getKeyPath();
          sub_2442C6564(&qword_27EDDF4A0, &qword_244317508);
          v142 = swift_allocObject();
          *(v142 + 16) = v487;
          *(v142 + 32) = sub_2442F193C;
          *(v142 + 40) = 0;
          v143 = swift_allocObject();
          *(v143 + 16) = sub_2442F433C;
          *(v143 + 24) = 0;
          *(v142 + 48) = sub_2442F1954;
          *(v142 + 56) = v143;
          v144 = sub_244312E38();
          v499 = v141;

          v145 = sub_244312CD8();
          v147 = v146;
          v148 = sub_2442EE07C(v145, v146, v144, v142);
          swift_setDeallocating();
          sub_2442C6564(&qword_27EDDF4A8, &qword_244317510);
          swift_arrayDestroy();
          swift_deallocClassInstance();
          if (v148)
          {
          }

          else
          {

            v149 = sub_244312C18();

            if (os_log_type_enabled(v149, v144))
            {
              v150 = swift_slowAlloc();
              v151 = swift_slowAlloc();
              v499 = v151;
              *v150 = v454;
              v152 = sub_2442EEF8C(v145, v147, &v499);

              *(v150 + 4) = v152;
              *(v150 + 12) = 2082;
              v153 = MEMORY[0x277D84F90];
              v493 = MEMORY[0x277D84F90];
              sub_2442C6564(&qword_27EDDF458, &qword_2443174C8);
              v154 = sub_244312CD8();
              v156 = sub_2442EEF8C(v154, v155, &v499);

              *(v150 + 14) = v156;
              swift_arrayDestroy();
              MEMORY[0x245D5F2C0](v151, -1, -1);
              MEMORY[0x245D5F2C0](v150, -1, -1);

              v148 = v153;
            }

            else
            {

              v148 = MEMORY[0x277D84F90];
            }
          }

          v88 = v492;

          v157 = sub_244312C18();
          v158 = sub_244312E28();

          if (os_log_type_enabled(v157, v158))
          {
            v159 = swift_slowAlloc();
            v160 = swift_slowAlloc();
            v499 = v160;
            *v159 = v476;
            v161 = MEMORY[0x245D5E9E0](v148, MEMORY[0x277D837D0]);
            v163 = sub_2442EEF8C(v161, v162, &v499);

            *(v159 + 4) = v163;
            _os_log_impl(&dword_2442C5000, v157, v158, "Looking through graph entries. Current entry types=%{public}s", v159, 0xCu);
            sub_2442C6908(v160);
            MEMORY[0x245D5F2C0](v160, -1, -1);
            MEMORY[0x245D5F2C0](v159, -1, -1);
          }

          v86 = v482;
          v164 = v148 + 40;
          v165 = -1;
          while (1)
          {
            ++v165;
            v166 = *(v148 + 16);
            if (v165 == v166)
            {

              (*v479)(v465, v455);
              sub_2442C6908(&v494);
              sub_2442C65AC(&v497, *(&v498 + 1));
              v171 = sub_2443130F8();
              v68 = v489;
              if ((v171 & 1) == 0)
              {
                goto LABEL_60;
              }

              goto LABEL_209;
            }

            if (v165 >= v166)
            {
              __break(1u);
              goto LABEL_213;
            }

            v167 = sub_244312CE8();
            v157 = v168;
            if (v167 == 0x657069636572 && v168 == 0xE600000000000000)
            {
              break;
            }

            v164 += 16;
            v170 = sub_244313108();

            if (v170)
            {
              goto LABEL_204;
            }
          }

LABEL_204:

          v444 = sub_244312C18();
          v445 = sub_244312E48();
          v446 = os_log_type_enabled(v444, v445);
          v68 = v489;
          v447 = v478;
          v448 = v453;
          if (v446)
          {
            v449 = swift_slowAlloc();
            *v449 = 0;
            _os_log_impl(&dword_2442C5000, v444, v445, "Found recipe in @graph array.", v449, 2u);
            MEMORY[0x245D5F2C0](v449, -1, -1);
          }

          sub_2442F1294(&v494, *(&v495 + 1));
          sub_2443130E8();
          (*v479)(v465, v455);
          (*(v480 + 8))(v88, v86);
          if (!v447)
          {
            v478 = 0;
            v450(v88, v448, v86);
            sub_2442C6908(&v494);
            goto LABEL_209;
          }
        }

        sub_2442C6908(&v494);
        sub_2442C6908(&v497);
        goto LABEL_82;
      }

LABEL_209:
      sub_2442C6908(&v497);
      v97 = v478;
    }

    LOBYTE(v497) = 2;
    v103 = sub_244313008();
    if (v97)
    {
      (*(v480 + 8))(v88, v86);
      goto LABEL_82;
    }

    v105 = v104;
    v478 = 0;
    v106 = v103;
    *v68 = v103;
    v68[1] = v104;

    v107 = sub_244312C18();
    v108 = sub_244312E48();
    if (os_log_type_enabled(v107, v108))
    {
      v109 = swift_slowAlloc();
      v110 = swift_slowAlloc();
      *&v497 = v110;
      *v109 = 136446210;
      v111 = sub_2442EEF8C(v106, v105, &v497);

      *(v109 + 4) = v111;
      _os_log_impl(&dword_2442C5000, v107, v108, "Decoding JSON-LD for: %{public}s", v109, 0xCu);
      sub_2442C6908(v110);
      MEMORY[0x245D5F2C0](v110, -1, -1);
      MEMORY[0x245D5F2C0](v109, -1, -1);
    }

    else
    {
    }

    v113 = v472;
    v114 = v471;
    sub_2442C65AC(v491, v491[3]);
    v115 = sub_244313218();
    sub_244312F18();
    v116 = v473;
    v117 = v477;
    result = (*(v473 + 48))(v114, 1, v477);
    if (result == 1)
    {
      __break(1u);
      return result;
    }

    (*(v116 + 32))(v113, v114, v117);
    if (*(v115 + 16) && (v119 = sub_2442DC91C(v113), (v120 & 1) != 0))
    {
      sub_2442F1810(*(v115 + 56) + 32 * v119, &v497);
      (*(v116 + 8))(v113, v117);

      sub_2442C6564(&qword_27EDDF488, &qword_2443174F8);
      if (swift_dynamicCast())
      {
        v121 = v494;
        goto LABEL_54;
      }
    }

    else
    {

      (*(v116 + 8))(v113, v117);
    }

    v121 = &unk_2857A8E30;
LABEL_54:
    *&v476 = v121;
    v122 = swift_getKeyPath();
    v479 = sub_2442C6564(&qword_27EDDF3B0, &qword_244317220);
    v123 = swift_allocObject();
    v473 = xmmword_244313970;
    *(v123 + 16) = xmmword_244313970;
    v124 = swift_allocObject();
    *(v124 + 16) = 3;
    *(v123 + 32) = sub_2442F1370;
    *(v123 + 40) = v124;
    v125 = sub_244312E38();
    *&v497 = v122;

    sub_2442C6564(&qword_27EDDF3B8, &qword_244317228);
    v126 = sub_244312CD8();
    v128 = v127;
    v129 = sub_2442ED22C(v126, v127, v125, v123);
    v131 = v130;
    swift_setDeallocating();
    sub_2442F3A40(v123 + 32, &qword_27EDDF3C0, &qword_244317230);
    swift_deallocClassInstance();
    if (v131)
    {
    }

    else
    {

      v132 = sub_244312C18();

      if (os_log_type_enabled(v132, v125))
      {
        v133 = swift_slowAlloc();
        v134 = swift_slowAlloc();
        *&v494 = v134;
        *v133 = 136446466;
        v135 = sub_2442EEF8C(v126, v128, &v494);

        *(v133 + 4) = v135;
        *(v133 + 12) = 2082;
        v131 = 0xE000000000000000;
        *&v497 = 0;
        *(&v497 + 1) = 0xE000000000000000;
        v136 = sub_244312CD8();
        v138 = sub_2442EEF8C(v136, v137, &v494);

        *(v133 + 14) = v138;
        swift_arrayDestroy();
        MEMORY[0x245D5F2C0](v134, -1, -1);
        MEMORY[0x245D5F2C0](v133, -1, -1);

        v129 = 0;
      }

      else
      {

        v129 = 0;
        v131 = 0xE000000000000000;
      }
    }

    v176 = (v476 + 32);
    v68[2] = v129;
    v68[3] = v131;
    v177 = swift_getKeyPath();
    sub_2442C6564(&qword_27EDDF3C8, &qword_244317258);
    v178 = swift_allocObject();
    *(v178 + 16) = xmmword_244317130;
    v179 = swift_allocObject();
    *(v179 + 16) = 4;
    *(v178 + 32) = sub_2442F138C;
    *(v178 + 40) = v179;
    v180 = swift_allocObject();
    *(v180 + 16) = 4;
    *(v180 + 24) = sub_2442E9F0C;
    *(v180 + 32) = 0;
    *(v178 + 48) = sub_2442F13CC;
    *(v178 + 56) = v180;
    v181 = swift_allocObject();
    *(v181 + 16) = 4;
    *(v181 + 24) = sub_2442EA3A4;
    *(v181 + 32) = 0;
    *(v178 + 64) = sub_2442F13F8;
    *(v178 + 72) = v181;
    v182 = swift_allocObject();
    *(v182 + 16) = 4;
    *(v182 + 24) = sub_2442EA49C;
    *(v182 + 32) = 0;
    *(v178 + 80) = sub_2442F1424;
    *(v178 + 88) = v182;
    v183 = sub_244312E38();
    *&v497 = v177;

    sub_2442C6564(&qword_27EDDF3D0, &qword_244317260);
    v184 = sub_244312CD8();
    v186 = v185;
    v187 = sub_2442EE07C(v184, v185, v183, v178);
    swift_setDeallocating();
    sub_2442C6564(&qword_27EDDF3D8, &qword_244317268);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    if (v187)
    {
    }

    else
    {

      v188 = sub_244312C18();

      if (os_log_type_enabled(v188, v183))
      {
        v189 = swift_slowAlloc();
        v190 = swift_slowAlloc();
        *&v497 = v190;
        *v189 = 136446466;
        v191 = sub_2442EEF8C(v184, v186, &v497);

        *(v189 + 4) = v191;
        *(v189 + 12) = 2082;
        *&v494 = MEMORY[0x277D84F90];
        sub_2442C6564(&qword_27EDDF480, &qword_2443174F0);
        v192 = sub_244312CD8();
        v194 = sub_2442EEF8C(v192, v193, &v497);

        *(v189 + 14) = v194;
        swift_arrayDestroy();
        MEMORY[0x245D5F2C0](v190, -1, -1);
        MEMORY[0x245D5F2C0](v189, -1, -1);
      }

      else
      {
      }

      v187 = MEMORY[0x277D84F90];
    }

    v68[4] = v187;
    v195 = swift_getKeyPath();
    sub_2442C6564(&qword_27EDDF3E0, &qword_244317290);
    v196 = swift_allocObject();
    *(v196 + 16) = v487;
    v197 = swift_allocObject();
    *(v196 + 32) = sub_2442F1450;
    *(v197 + 16) = 5;
    *(v196 + 40) = v197;
    v198 = swift_allocObject();
    *(v198 + 16) = 5;
    *(v198 + 24) = sub_2442EA670;
    *(v198 + 32) = 0;
    *(v196 + 48) = sub_2442F14B0;
    *(v196 + 56) = v198;
    v199 = v476;
    v200 = *(v476 + 16);
    v201 = v176;
    v202 = v467;
    while (v200)
    {
      v203 = *v201++;
      --v200;
      if (v203 == 2)
      {
        v204 = sub_244312E38();
        *&v497 = v195;

        sub_2442C6564(&qword_27EDDF478, &qword_2443174E8);
        v205 = sub_244312CD8();
        v206 = v199;
        v207 = v202;
        v208 = v466;
        sub_2442EDC44(v205, v209, v204, v196, v466);

        swift_setDeallocating();
        sub_2442C6564(&qword_27EDDF3E8, &qword_244317298);
        swift_arrayDestroy();
        v210 = v208;
        v202 = v207;
        v199 = v206;
        v68 = v489;
        swift_deallocClassInstance();
        goto LABEL_95;
      }
    }

    sub_244312E38();

    swift_setDeallocating();
    sub_2442C6564(&qword_27EDDF3E8, &qword_244317298);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v210 = v466;
    v457(v466, 1, 1, v458);
LABEL_95:
    sub_2442E40C4(v210, v68 + v483, &qword_27EDDF368, &qword_244317190);
    v211 = swift_getKeyPath();
    sub_2442C6564(&qword_27EDDF3F0, &qword_2443172C0);
    v212 = swift_allocObject();
    *(v212 + 16) = v487;
    v213 = swift_allocObject();
    *(v212 + 32) = sub_2442F14D0;
    *(v213 + 16) = 6;
    *(v212 + 40) = v213;
    v214 = swift_allocObject();
    *(v214 + 16) = 6;
    *(v214 + 24) = sub_2442EA73C;
    *(v214 + 32) = 0;
    *(v212 + 48) = sub_2442F14EC;
    *(v212 + 56) = v214;
    v215 = *(v199 + 16);
    v216 = v176;
    while (v215)
    {
      v217 = *v216++;
      --v215;
      if (v217 == 3)
      {
        v218 = sub_244312E38();
        *&v497 = v211;

        sub_2442C6564(&qword_27EDDF470, &qword_2443174E0);
        v219 = sub_244312CD8();
        sub_2442ED954(v219, v220, v218, v212, &v497);

        swift_setDeallocating();
        sub_2442C6564(&qword_27EDDF3F8, &qword_2443172C8);
        swift_arrayDestroy();
        swift_deallocClassInstance();
        v221 = *(&v497 + 1);
        v222 = v497;
        goto LABEL_100;
      }
    }

    sub_244312E38();

    swift_setDeallocating();
    sub_2442C6564(&qword_27EDDF3F8, &qword_2443172C8);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v221 = 0;
    v222 = 0;
LABEL_100:
    v223 = v484;

    *v223 = v222;
    *(v223 + 1) = v221;
    v224 = swift_getKeyPath();
    sub_2442C6564(&qword_27EDDF400, &qword_2443172F0);
    v225 = swift_allocObject();
    *(v225 + 16) = v487;
    v226 = swift_allocObject();
    *(v225 + 32) = sub_2442F150C;
    *(v226 + 16) = 7;
    *(v225 + 40) = v226;
    v227 = swift_allocObject();
    *(v227 + 16) = 8;
    *(v225 + 48) = sub_2442F4464;
    *(v225 + 56) = v227;
    v228 = *(v199 + 16);
    v229 = v176;
    while (v228)
    {
      v230 = *v229++;
      --v228;
      if (v230 == 4)
      {
        v231 = sub_244312E38();
        *&v497 = v224;

        sub_2442C6564(&qword_27EDDF468, &qword_2443174D8);
        v232 = sub_244312CD8();
        sub_2442ED518(v232, v233, v231, v225, &qword_27EDDF370, &qword_244317198, MEMORY[0x277CC9260], v202);

        swift_setDeallocating();
        sub_2442C6564(&qword_27EDDF408, &qword_2443172F8);
        swift_arrayDestroy();
        swift_deallocClassInstance();
        goto LABEL_105;
      }
    }

    sub_244312E38();

    swift_setDeallocating();
    sub_2442C6564(&qword_27EDDF408, &qword_2443172F8);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v460(v202, 1, 1, v461);
LABEL_105:
    sub_2442E40C4(v202, v68 + v485, &qword_27EDDF370, &qword_244317198);
    v234 = swift_getKeyPath();
    v235 = swift_allocObject();
    *(v235 + 16) = v487;
    v236 = swift_allocObject();
    *(v235 + 32) = sub_2442F156C;
    *(v236 + 16) = 9;
    *(v236 + 24) = sub_2442EA780;
    *(v236 + 32) = 0;
    *(v235 + 40) = v236;
    v237 = swift_allocObject();
    *(v237 + 16) = 10;
    *(v235 + 48) = sub_2442F447C;
    *(v235 + 56) = v237;
    v238 = *(v199 + 16);
    v239 = v176;
    while (v238)
    {
      v240 = *v239++;
      --v238;
      if (v240 == 6)
      {
        v241 = sub_244312E38();
        *&v497 = v234;

        sub_2442C6564(&qword_27EDDF448, &qword_2443174B8);
        v242 = sub_244312CD8();
        v244 = sub_2442ED22C(v242, v243, v241, v235);
        v246 = v245;

        goto LABEL_110;
      }
    }

    sub_244312E38();

    v244 = 0;
    v246 = 0;
LABEL_110:
    v247 = (v68 + v488[10]);
    swift_setDeallocating();
    v485 = sub_2442C6564(&qword_27EDDF3C0, &qword_244317230);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    *v247 = v244;
    v247[1] = v246;
    v248 = swift_getKeyPath();
    v249 = swift_allocObject();
    *(v249 + 16) = v487;
    v250 = swift_allocObject();
    *(v249 + 32) = sub_2442F436C;
    *(v250 + 16) = 9;
    *(v250 + 24) = sub_2442EA7A0;
    *(v250 + 32) = 0;
    *(v249 + 40) = v250;
    v251 = swift_allocObject();
    *(v251 + 16) = 11;
    *(v249 + 48) = sub_2442F447C;
    *(v249 + 56) = v251;
    v252 = *(v199 + 16);
    v253 = v176;
    while (v252)
    {
      v254 = *v253++;
      --v252;
      if (v254 == 7)
      {
        v255 = sub_244312E38();
        *&v497 = v248;

        sub_2442C6564(&qword_27EDDF448, &qword_2443174B8);
        v256 = sub_244312CD8();
        v258 = sub_2442ED22C(v256, v257, v255, v249);
        v260 = v259;

        goto LABEL_115;
      }
    }

    sub_244312E38();

    v258 = 0;
    v260 = 0;
LABEL_115:
    v261 = (v68 + v488[11]);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    *v261 = v258;
    v261[1] = v260;
    v262 = swift_getKeyPath();
    v263 = swift_allocObject();
    *(v263 + 16) = v487;
    v264 = swift_allocObject();
    *(v263 + 32) = sub_2442F436C;
    *(v264 + 16) = 9;
    *(v264 + 24) = sub_2442EA7C0;
    *(v264 + 32) = 0;
    *(v263 + 40) = v264;
    v265 = swift_allocObject();
    *(v265 + 16) = 12;
    *(v263 + 48) = sub_2442F447C;
    *(v263 + 56) = v265;
    v266 = *(v199 + 16);
    v267 = v176;
    while (v266)
    {
      v268 = *v267++;
      --v266;
      if (v268 == 8)
      {
        v269 = sub_244312E38();
        *&v497 = v262;

        sub_2442C6564(&qword_27EDDF448, &qword_2443174B8);
        v270 = sub_244312CD8();
        v272 = sub_2442ED22C(v270, v271, v269, v263);
        v274 = v273;

        goto LABEL_120;
      }
    }

    sub_244312E38();

    v272 = 0;
    v274 = 0;
LABEL_120:
    v275 = (v68 + v488[12]);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    *v275 = v272;
    v275[1] = v274;
    v276 = swift_getKeyPath();
    v277 = swift_allocObject();
    *(v277 + 16) = v473;
    v278 = swift_allocObject();
    *(v277 + 32) = sub_2442F447C;
    *(v278 + 16) = 13;
    *(v277 + 40) = v278;
    v279 = *(v199 + 16);
    v280 = v176;
    do
    {
      if (!v279)
      {
        sub_244312E38();

        swift_setDeallocating();
        sub_2442F3A40(v277 + 32, &qword_27EDDF3C0, &qword_244317230);
        swift_deallocClassInstance();
        v288 = 0;
        v287 = 0;
        goto LABEL_127;
      }

      v281 = *v280++;
      --v279;
    }

    while (v281 != 9);
    v282 = sub_244312E38();
    *&v497 = v276;

    sub_2442C6564(&qword_27EDDF448, &qword_2443174B8);
    v283 = sub_244312CD8();
    v285 = sub_2442ED22C(v283, v284, v282, v277);
    v287 = v286;

    swift_setDeallocating();
    sub_2442F3A40(v277 + 32, &qword_27EDDF3C0, &qword_244317230);
    swift_deallocClassInstance();
    if (v287)
    {
      v288 = v285;
    }

    else
    {
      v288 = 0;
    }

LABEL_127:
    v289 = (v68 + v488[13]);
    *v289 = v288;
    v289[1] = v287;
    v290 = swift_getKeyPath();
    sub_2442C6564(&qword_27EDDF410, &qword_2443173A0);
    v291 = swift_allocObject();
    *(v291 + 16) = v487;
    v292 = swift_allocObject();
    *(v291 + 32) = sub_2442F1598;
    *(v292 + 16) = 14;
    *(v291 + 40) = v292;
    v293 = [objc_allocWithZone(MEMORY[0x277CCAA68]) init];
    v294 = swift_allocObject();
    *(v294 + 16) = v293;
    v295 = swift_allocObject();
    *(v295 + 16) = sub_2442F1630;
    *(v295 + 24) = v294;
    v296 = swift_allocObject();
    *(v296 + 16) = 14;
    *(v296 + 24) = sub_2442F1670;
    *(v296 + 32) = v295;
    *(v291 + 48) = sub_2442F16D8;
    *(v291 + 56) = v296;
    v297 = *(v199 + 16);
    v298 = v176;
    v299 = v468;
    while (v297)
    {
      v300 = *v298++;
      --v297;
      if (v300 == 10)
      {
        v301 = sub_244312E38();
        *&v497 = v290;

        sub_2442C6564(&qword_27EDDF460, &qword_2443174D0);
        v302 = sub_244312CD8();
        sub_2442ED518(v302, v303, v301, v291, &qword_27EDDF378, &unk_2443171A0, MEMORY[0x277CC9578], v299);

        swift_setDeallocating();
        sub_2442C6564(&qword_27EDDF418, &qword_2443173A8);
        swift_arrayDestroy();
        swift_deallocClassInstance();
        goto LABEL_132;
      }
    }

    sub_244312E38();

    swift_setDeallocating();
    sub_2442C6564(&qword_27EDDF418, &qword_2443173A8);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v463(v299, 1, 1, v464);
LABEL_132:
    sub_2442E40C4(v299, v68 + v486, &qword_27EDDF378, &unk_2443171A0);
    v304 = swift_getKeyPath();
    v305 = swift_allocObject();
    *(v305 + 16) = v487;
    v306 = swift_allocObject();
    *(v305 + 32) = sub_2442F447C;
    *(v306 + 16) = 15;
    *(v305 + 40) = v306;
    v307 = swift_allocObject();
    *(v307 + 16) = 15;
    *(v307 + 24) = sub_2442F4354;
    *(v307 + 32) = 0;
    *(v305 + 48) = sub_2442F16F8;
    *(v305 + 56) = v307;
    v308 = *(v199 + 16);
    v309 = v176;
    do
    {
      if (!v308)
      {
        sub_244312E38();

        swift_setDeallocating();
        swift_arrayDestroy();
        swift_deallocClassInstance();
        v317 = 0;
        v316 = 0;
        goto LABEL_139;
      }

      v310 = *v309++;
      --v308;
    }

    while (v310 != 11);
    v311 = sub_244312E38();
    *&v497 = v304;

    sub_2442C6564(&qword_27EDDF448, &qword_2443174B8);
    v312 = sub_244312CD8();
    v314 = sub_2442ED22C(v312, v313, v311, v305);
    v316 = v315;

    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    if (v316)
    {
      v317 = v314;
    }

    else
    {
      v317 = 0;
    }

LABEL_139:
    v318 = (v68 + v488[15]);
    *v318 = v317;
    v318[1] = v316;
    v319 = swift_getKeyPath();
    v320 = sub_244312E48();
    v321 = swift_allocObject();
    *(v321 + 16) = v487;
    v322 = swift_allocObject();
    *(v322 + 16) = 16;
    *(v322 + 24) = sub_2442EA8BC;
    *(v322 + 32) = 0;
    *(v321 + 32) = sub_2442F4384;
    *(v321 + 40) = v322;
    v323 = swift_allocObject();
    *(v323 + 16) = 16;
    *(v321 + 48) = sub_2442F4494;
    *(v321 + 56) = v323;
    *&v497 = v319;

    v324 = sub_244312CD8();
    v326 = v325;
    v327 = sub_2442EE07C(v324, v325, v320, v321);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    if (v327)
    {
    }

    else
    {

      v328 = sub_244312C18();

      if (os_log_type_enabled(v328, v320))
      {
        v329 = swift_slowAlloc();
        v330 = swift_slowAlloc();
        *&v497 = v330;
        *v329 = 136446466;
        v331 = sub_2442EEF8C(v324, v326, &v497);

        *(v329 + 4) = v331;
        *(v329 + 12) = 2082;
        v332 = MEMORY[0x277D84F90];
        *&v494 = MEMORY[0x277D84F90];
        sub_2442C6564(&qword_27EDDF458, &qword_2443174C8);
        v333 = sub_244312CD8();
        v335 = sub_2442EEF8C(v333, v334, &v497);

        *(v329 + 14) = v335;
        swift_arrayDestroy();
        MEMORY[0x245D5F2C0](v330, -1, -1);
        MEMORY[0x245D5F2C0](v329, -1, -1);

        v327 = v332;
      }

      else
      {

        v327 = MEMORY[0x277D84F90];
      }
    }

    v336 = v489;
    v337 = *(v327 + 16);
    if (v337)
    {
      *&v497 = MEMORY[0x277D84F90];
      sub_2442EF4C0(0, v337, 0);
      v338 = v497;
      v339 = (v327 + 40);
      do
      {
        v341 = *(v339 - 1);
        v340 = *v339;
        *&v497 = v338;
        v343 = *(v338 + 16);
        v342 = *(v338 + 24);

        if (v343 >= v342 >> 1)
        {
          sub_2442EF4C0((v342 > 1), v343 + 1, 1);
          v338 = v497;
        }

        *(v338 + 16) = v343 + 1;
        v344 = v338 + 16 * v343;
        *(v344 + 32) = v341;
        *(v344 + 40) = v340;
        v339 += 2;
        --v337;
      }

      while (v337);

      v336 = v489;
    }

    else
    {

      v338 = MEMORY[0x277D84F90];
    }

    *(v336 + v488[16]) = v338;
    v345 = swift_getKeyPath();
    v346 = swift_allocObject();
    *(v346 + 16) = xmmword_244317140;
    v347 = swift_allocObject();
    *(v346 + 32) = sub_2442F447C;
    *(v347 + 16) = 17;
    *(v346 + 40) = v347;
    v348 = swift_allocObject();
    *(v348 + 16) = 17;
    *(v348 + 24) = sub_2442F4354;
    *(v348 + 32) = 0;
    *(v346 + 48) = sub_2442F439C;
    *(v346 + 56) = v348;
    v349 = swift_allocObject();
    *(v349 + 16) = 18;
    *(v346 + 64) = sub_2442F447C;
    *(v346 + 72) = v349;
    v350 = swift_allocObject();
    *(v350 + 16) = 18;
    *(v350 + 24) = sub_2442F4354;
    *(v350 + 32) = 0;
    *(v346 + 80) = sub_2442F439C;
    *(v346 + 88) = v350;
    v351 = swift_allocObject();
    *(v351 + 16) = 17;
    *(v351 + 24) = sub_2442EAAF8;
    *(v351 + 32) = 0;
    *(v346 + 96) = sub_2442F1724;
    *(v346 + 104) = v351;
    v352 = *(v476 + 16);
    v353 = v176;
    do
    {
      if (!v352)
      {
        sub_244312E38();

        swift_setDeallocating();
        swift_arrayDestroy();
        swift_deallocClassInstance();
        v361 = 0;
        v360 = 0;
        goto LABEL_158;
      }

      v354 = *v353++;
      --v352;
    }

    while (v354 != 13);
    v355 = sub_244312E38();
    *&v497 = v345;

    sub_2442C6564(&qword_27EDDF448, &qword_2443174B8);
    v356 = sub_244312CD8();
    v358 = sub_2442ED22C(v356, v357, v355, v346);
    v360 = v359;

    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    if (v360)
    {
      v361 = v358;
    }

    else
    {
      v361 = 0;
    }

LABEL_158:
    v362 = (v336 + v488[17]);
    *v362 = v361;
    v362[1] = v360;
    v363 = swift_getKeyPath();
    v364 = swift_allocObject();
    *(v364 + 16) = v487;
    v365 = swift_allocObject();
    *(v364 + 32) = sub_2442F447C;
    *(v365 + 16) = 19;
    *(v364 + 40) = v365;
    v366 = swift_allocObject();
    *(v366 + 16) = 19;
    *(v366 + 24) = sub_2442F4354;
    *(v366 + 32) = 0;
    *(v364 + 48) = sub_2442F439C;
    *(v364 + 56) = v366;
    v367 = *(v476 + 16);
    v368 = v176;
    do
    {
      if (!v367)
      {
        sub_244312E38();

        swift_setDeallocating();
        swift_arrayDestroy();
        swift_deallocClassInstance();
        v376 = 0;
        v375 = 0;
        goto LABEL_165;
      }

      v369 = *v368++;
      --v367;
    }

    while (v369 != 14);
    v370 = sub_244312E38();
    *&v497 = v363;

    sub_2442C6564(&qword_27EDDF448, &qword_2443174B8);
    v371 = sub_244312CD8();
    v373 = sub_2442ED22C(v371, v372, v370, v364);
    v375 = v374;

    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    if (v375)
    {
      v376 = v373;
    }

    else
    {
      v376 = 0;
    }

LABEL_165:
    v377 = (v336 + v488[18]);
    *v377 = v376;
    v377[1] = v375;
    v378 = swift_getKeyPath();
    v379 = swift_allocObject();
    *(v379 + 16) = v487;
    v380 = swift_allocObject();
    *(v380 + 16) = 21;
    *(v379 + 32) = sub_2442F4494;
    *(v379 + 40) = v380;
    v381 = swift_allocObject();
    *(v381 + 16) = 20;
    *(v379 + 48) = sub_2442F4494;
    *(v379 + 56) = v381;
    v382 = sub_244312E38();
    *&v497 = v378;

    v383 = sub_244312CD8();
    v385 = v384;
    v386 = sub_2442EE07C(v383, v384, v382, v379);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    if (v386)
    {
    }

    else
    {

      v387 = sub_244312C18();

      if (os_log_type_enabled(v387, v382))
      {
        v388 = swift_slowAlloc();
        v389 = swift_slowAlloc();
        *&v497 = v389;
        *v388 = 136446466;
        v390 = sub_2442EEF8C(v383, v385, &v497);

        *(v388 + 4) = v390;
        *(v388 + 12) = 2082;
        v391 = MEMORY[0x277D84F90];
        *&v494 = MEMORY[0x277D84F90];
        sub_2442C6564(&qword_27EDDF458, &qword_2443174C8);
        v392 = sub_244312CD8();
        v394 = sub_2442EEF8C(v392, v393, &v497);

        *(v388 + 14) = v394;
        swift_arrayDestroy();
        MEMORY[0x245D5F2C0](v389, -1, -1);
        MEMORY[0x245D5F2C0](v388, -1, -1);

        v386 = v391;
      }

      else
      {

        v386 = MEMORY[0x277D84F90];
      }
    }

    v148 = v489;
    v395 = *(v386 + 16);
    if (v395)
    {
      *&v497 = MEMORY[0x277D84F90];
      sub_2442EF4C0(0, v395, 0);
      v396 = v497;
      v397 = (v386 + 40);
      do
      {
        v399 = *(v397 - 1);
        v398 = *v397;
        *&v497 = v396;
        v401 = *(v396 + 16);
        v400 = *(v396 + 24);

        if (v401 >= v400 >> 1)
        {
          sub_2442EF4C0((v400 > 1), v401 + 1, 1);
          v396 = v497;
        }

        *(v396 + 16) = v401 + 1;
        v402 = v396 + 16 * v401;
        *(v402 + 32) = v399;
        *(v402 + 40) = v398;
        v397 += 2;
        --v395;
      }

      while (v395);

      v148 = v489;
    }

    else
    {

      v396 = MEMORY[0x277D84F90];
    }

    *(v148 + v488[19]) = v396;
    v403 = swift_getKeyPath();
    sub_2442C6564(&qword_27EDDF420, &qword_244317470);
    v404 = swift_allocObject();
    *(v404 + 16) = xmmword_244317150;
    v405 = swift_allocObject();
    *(v405 + 16) = 23;
    *(v404 + 32) = sub_2442F178C;
    *(v404 + 40) = v405;
    v406 = swift_allocObject();
    *(v406 + 16) = 23;
    *(v406 + 24) = sub_2442EAB4C;
    *(v406 + 32) = 0;
    *(v404 + 48) = sub_2442F17A8;
    *(v404 + 56) = v406;
    v407 = swift_allocObject();
    *(v407 + 16) = 22;
    *(v404 + 64) = sub_2442F44AC;
    *(v404 + 72) = v407;
    v408 = sub_244312E38();
    *&v497 = v403;

    sub_2442C6564(&qword_27EDDF428, &qword_244317478);
    v409 = sub_244312CD8();
    v411 = v410;
    v412 = sub_2442EE07C(v409, v410, v408, v404);
    swift_setDeallocating();
    sub_2442C6564(&qword_27EDDF430, &qword_244317480);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    if (v412)
    {
    }

    else
    {

      v413 = sub_244312C18();

      if (os_log_type_enabled(v413, v408))
      {
        v414 = swift_slowAlloc();
        v415 = swift_slowAlloc();
        *&v497 = v415;
        *v414 = 136446466;
        v416 = sub_2442EEF8C(v409, v411, &v497);

        *(v414 + 4) = v416;
        *(v414 + 12) = 2082;
        *&v494 = MEMORY[0x277D84F90];
        sub_2442C6564(&qword_27EDDF450, &qword_2443174C0);
        v417 = sub_244312CD8();
        v419 = sub_2442EEF8C(v417, v418, &v497);

        *(v414 + 14) = v419;
        swift_arrayDestroy();
        MEMORY[0x245D5F2C0](v415, -1, -1);
        MEMORY[0x245D5F2C0](v414, -1, -1);
      }

      else
      {
      }

      v412 = MEMORY[0x277D84F90];
    }

    v88 = v492;
    *(v148 + v488[20]) = v412;
    v420 = swift_getKeyPath();
    v421 = swift_allocObject();
    *(v421 + 16) = v487;
    v422 = swift_allocObject();
    *(v421 + 32) = sub_2442F447C;
    *(v422 + 16) = 24;
    *(v421 + 40) = v422;
    v423 = swift_allocObject();
    *(v423 + 16) = 25;
    *(v421 + 48) = sub_2442F447C;
    *(v421 + 56) = v423;
    v424 = *(v476 + 16);
    do
    {
      v425 = v424;
      if (!v424)
      {
        break;
      }

      v426 = *v176++;
      --v424;
    }

    while (v426 != 17);

    v427 = sub_244312E38();
    if (v425)
    {
      v428 = v427;
      *&v497 = v420;

      sub_2442C6564(&qword_27EDDF448, &qword_2443174B8);
      v429 = sub_244312CD8();
      v431 = sub_2442ED22C(v429, v430, v428, v421);
      v425 = v432;
    }

    else
    {

      v431 = 0;
    }

    v433 = v469;
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    *v433 = v431;
    v433[1] = v425;
    sub_2442C65AC(v491, v491[3]);
    v157 = sub_244313218();
    if (qword_27EDDE810 != -1)
    {
LABEL_213:
      swift_once();
    }

    v434 = sub_2442D40C8(v477, qword_27EDDEFB8);
    v435 = v482;
    if (v157[2].isa && (v436 = sub_2442DC91C(v434), (v437 & 1) != 0))
    {
      sub_2442F1810(v157[7].isa + 32 * v436, &v497);
    }

    else
    {
      v497 = 0u;
      v498 = 0u;
    }

    if (*(&v498 + 1))
    {
      sub_2442C6564(&qword_27EDDF440, &qword_2443174B0);
      if (swift_dynamicCast())
      {
        v438 = v494;
        sub_2442C65AC(v491, v491[3]);
        *&v494 = sub_2443131E8();
        v438(&v497, &v494);

        (*(v480 + 8))(v88, v435);

        v439 = v497;
        v440 = v481;
        sub_2442E4788(*v481, *(v481 + 1));
        *v440 = v439;
      }

      else
      {
        (*(v480 + 8))(v88, v435);
      }
    }

    else
    {
      (*(v480 + 8))(v88, v435);
      sub_2442F3A40(&v497, &qword_27EDDF438, &qword_2443174A8);
    }

    sub_2442F19D8(v148, v470, type metadata accessor for InternalJSONLDRecipe);
    sub_2442C6908(v491);
    return sub_2442F1A40(v148, type metadata accessor for InternalJSONLDRecipe);
  }

  *&v494 = v2;
  MEMORY[0x245D5F150](v2);
  sub_2442C6564(&qword_27EDDF020, &qword_2443164B0);
  if (swift_dynamicCast())
  {
    if ((*(v4 + 88))(v6, v3) == *MEMORY[0x277D84160])
    {
      MEMORY[0x245D5F140](v2);
      (*(v4 + 96))(v6, v3);
      v53 = sub_2442C6564(&qword_27EDDEC40, &qword_244313E00);
      v54 = v487;
      v55 = v479;
      v56 = v476;
      (*(v487 + 32))(v479, &v6[*(v53 + 48)], v476);
      v57 = v475;
      (*(v54 + 16))(v475, v55, v56);
      v58 = sub_244312C18();
      v59 = sub_244312E28();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        *v60 = 138412290;
        if (sub_244312EB8())
        {
          v62 = _swift_stdlib_bridgeErrorToNSError();
          v63 = *(v54 + 8);
          v63(v57, v56);
        }

        else
        {
          v63 = *(v54 + 8);
          v63(v57, v56);
          v62 = 0;
        }

        *(v60 + 4) = v62;
        *v61 = v62;
        _os_log_impl(&dword_2442C5000, v58, v59, "Failed to decode top level object as Dictionary, will try Array. error=%@", v60, 0xCu);
        sub_2442F3A40(v61, &qword_27EDDF4B0, &qword_244317518);
        MEMORY[0x245D5F2C0](v61, -1, -1);
        MEMORY[0x245D5F2C0](v60, -1, -1);

        v112 = v63;
      }

      else
      {

        v112 = *(v54 + 8);
        v112(v57, v56);
      }

      sub_2442C65AC(v491, v491[3]);
      sub_2443131F8();
      v68 = v489;
      v172 = v492;
      v173 = v474;
      sub_2442F1294(&v497, *(&v498 + 1));
      sub_2443130E8();
      v450 = *(v480 + 32);
      v450(v172, v173, v482);
      v441 = sub_244312C18();
      v442 = sub_244312E48();
      if (os_log_type_enabled(v441, v442))
      {
        v443 = swift_slowAlloc();
        *v443 = 0;
        _os_log_impl(&dword_2442C5000, v441, v442, "Extracted dictionary from top level array.", v443, 2u);
        MEMORY[0x245D5F2C0](v443, -1, -1);
      }

      v451 = v52;
      v478 = 0;

      v112(v479, v476);
      sub_2442C6908(&v497);
      MEMORY[0x245D5F140](v494);
      goto LABEL_14;
    }

    (*(v4 + 8))(v6, v3);
  }

  MEMORY[0x245D5F140](v494);
  v68 = v489;
LABEL_82:
  v174 = v481;
  v175 = v486;
  sub_2442C6908(v491);
  sub_2442F3A40(v68 + v483, &qword_27EDDF368, &qword_244317190);

  sub_2442F3A40(v68 + v485, &qword_27EDDF370, &qword_244317198);
  sub_2442F3A40(v68 + v175, &qword_27EDDF378, &unk_2443171A0);
  return sub_2442E4788(*v174, *(v174 + 1));
}

uint64_t sub_2442E9D7C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  sub_2442C6564(&qword_27EDDF6A8, &unk_244318190);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_244313970;
  *(v5 + 32) = v4;
  *(v5 + 40) = v3;
  *a2 = v5;
}

uint64_t static CodingUserInfoKey.propertiesToDecode.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2442C6564(&qword_27EDDEFD0, &unk_2443160E0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v8 - v3;
  sub_244312F18();
  v5 = sub_244312F28();
  v6 = *(v5 - 8);
  result = (*(v6 + 48))(v4, 1, v5);
  if (result != 1)
  {
    return (*(v6 + 32))(a1, v4, v5);
  }

  __break(1u);
  return result;
}

uint64_t sub_2442E9F0C@<X0>(uint64_t *a1@<X0>, char **a2@<X8>)
{
  v37 = a2;
  v3 = sub_244312BB8();
  v39 = *(v3 - 8);
  v40 = v3;
  MEMORY[0x28223BE20](v3);
  v45 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ImageObject(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2442C6564(&qword_27EDDF370, &qword_244317198);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v43 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v37 - v14;
  MEMORY[0x28223BE20](v13);
  v44 = &v37 - v16;
  v17 = *a1;
  v18 = *(*a1 + 16);
  v19 = MEMORY[0x277D84F90];
  if (v18)
  {
    v46 = MEMORY[0x277D84F90];
    sub_2442EF4E0(0, v18, 0);
    v19 = v46;
    v20 = v17 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v21 = *(v6 + 72);
    do
    {
      sub_2442F19D8(v20, v8, type metadata accessor for ImageObject);
      sub_2442F3798(v8, v15, &qword_27EDDF370, &qword_244317198);
      sub_2442F1A40(v8, type metadata accessor for ImageObject);
      v46 = v19;
      v23 = *(v19 + 16);
      v22 = *(v19 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_2442EF4E0((v22 > 1), v23 + 1, 1);
        v19 = v46;
      }

      *(v19 + 16) = v23 + 1;
      sub_2442F391C(v15, v19 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v23);
      v20 += v21;
      --v18;
    }

    while (v18);
  }

  v24 = *(v19 + 16);
  if (v24)
  {
    v25 = v19 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v26 = *(v10 + 72);
    v27 = v40;
    v41 = (v39 + 48);
    v42 = (v39 + 32);
    v28 = MEMORY[0x277D84F90];
    v38 = v26;
    do
    {
      v29 = v44;
      sub_2442F3798(v25, v44, &qword_27EDDF370, &qword_244317198);
      v30 = v29;
      v31 = v43;
      sub_2442F391C(v30, v43);
      if ((*v41)(v31, 1, v27) == 1)
      {
        sub_2442F3A40(v31, &qword_27EDDF370, &qword_244317198);
      }

      else
      {
        v32 = v31;
        v33 = *v42;
        (*v42)(v45, v32, v27);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v28 = sub_2442DC154(0, *(v28 + 2) + 1, 1, v28);
        }

        v35 = *(v28 + 2);
        v34 = *(v28 + 3);
        if (v35 >= v34 >> 1)
        {
          v28 = sub_2442DC154((v34 > 1), v35 + 1, 1, v28);
        }

        *(v28 + 2) = v35 + 1;
        v27 = v40;
        v33(&v28[((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v35], v45, v40);
        v26 = v38;
      }

      v25 += v26;
      --v24;
    }

    while (v24);
  }

  else
  {

    v28 = MEMORY[0x277D84F90];
  }

  *v37 = v28;
  return result;
}

uint64_t sub_2442EA3A4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_2442C6564(&qword_27EDDF030, &qword_2443164C0);
  v4 = sub_244312BB8();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_244313970;
  result = (*(v5 + 16))(v7 + v6, a1, v4);
  *a2 = v7;
  return result;
}

uint64_t sub_2442EA49C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_244312BB8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2442C6564(&qword_27EDDF370, &qword_244317198);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v15 - v9;
  sub_2442F3798(a1, v15 - v9, &qword_27EDDF370, &qword_244317198);
  result = (*(v5 + 48))(v10, 1, v4);
  v12 = 0;
  if (result != 1)
  {
    v13 = *(v5 + 32);
    v13(v7, v10, v4);
    sub_2442C6564(&qword_27EDDF030, &qword_2443164C0);
    v14 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_244313970;
    result = (v13)(v12 + v14, v7, v4);
  }

  *a2 = v12;
  return result;
}

uint64_t sub_2442EA670@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(*a1 + 16);
  v5 = type metadata accessor for InternalJSONLDRecipe.Author(0);
  v6 = *(v5 - 8);
  if (v4)
  {
    sub_2442F19D8(v3 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), a2, type metadata accessor for InternalJSONLDRecipe.Author);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return (*(v6 + 56))(a2, v7, 1, v5);
}

uint64_t sub_2442EA73C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  if (*(*a1 + 16))
  {
    v3 = *(*a1 + 32);
  }

  else
  {
    v3 = 0;
    result = 0;
  }

  *a2 = v3;
  a2[1] = result;
  return result;
}

uint64_t sub_2442EA780@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v2 = a1[1];
  *a2 = v3;
  a2[1] = v2;
}

uint64_t sub_2442EA7A0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  *a2 = v3;
  a2[1] = v2;
}

uint64_t sub_2442EA7C0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  *a2 = v3;
  a2[1] = v2;
}

uint64_t sub_2442EA7E0@<X0>(void *a1@<X2>, uint64_t a2@<X8>)
{
  v4 = sub_244312C98();
  v5 = [a1 dateFromString_];

  if (v5)
  {
    sub_244312BF8();

    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = sub_244312C08();
  v8 = *(*(v7 - 8) + 56);

  return v8(a2, v6, 1, v7);
}

uint64_t sub_2442EA8BC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v30 = sub_244312B48();
  v6 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v9 = a1[1];
  *&v33 = 44;
  *(&v33 + 1) = 0xE100000000000000;
  v32 = &v33;

  v11 = v10;
  v12 = v3;
  v14 = sub_2442EEBCC(0x7FFFFFFFFFFFFFFFLL, 1, sub_2442F3420, v31, v11, v9, v13);
  v15 = *(v14 + 16);
  if (v15)
  {
    v27[2] = v12;
    v28 = a2;
    v36 = MEMORY[0x277D84F90];
    sub_2442EF4C0(0, v15, 0);
    v16 = v36;
    v29 = (v6 + 8);
    v27[1] = v14;
    v17 = (v14 + 56);
    do
    {
      v18 = *(v17 - 1);
      v19 = *v17;
      v33 = *(v17 - 3);
      v34 = v18;
      v35 = v19;

      sub_244312B38();
      sub_2442F3478();
      v20 = sub_244312E78();
      v22 = v21;
      (*v29)(v8, v30);

      v36 = v16;
      v24 = *(v16 + 16);
      v23 = *(v16 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_2442EF4C0((v23 > 1), v24 + 1, 1);
        v16 = v36;
      }

      *(v16 + 16) = v24 + 1;
      v25 = v16 + 16 * v24;
      *(v25 + 32) = v20;
      *(v25 + 40) = v22;
      v17 += 4;
      --v15;
    }

    while (v15);

    a2 = v28;
  }

  else
  {

    v16 = MEMORY[0x277D84F90];
  }

  *a2 = v16;
  return result;
}

uint64_t sub_2442EAAF8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2443130D8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_2442EAB4C(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = *(a1 + 24);
  sub_2442C6564(&qword_27EDDF6C0, &qword_2443181A0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_244313970;
  *(v7 + 32) = v3;
  *(v7 + 40) = v4;
  *(v7 + 48) = v5;
  *(v7 + 56) = v6;
  *a2 = v7;
  sub_2442F33BC(v3, v4, v5, v6);
}

uint64_t sub_2442EABE0()
{
  v1 = 0x656D69546B6F6F63;
  if (*v0 != 1)
  {
    v1 = 0x6D69546C61746F74;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656D695470657270;
  }
}

uint64_t sub_2442EAC40@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2442F3D38(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2442EAC68(uint64_t a1)
{
  v2 = sub_2442F405C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2442EACA4(uint64_t a1)
{
  v2 = sub_2442F405C();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_2442EACE0@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_2442F3E58(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
    result = *&v7;
    a1[2] = v7;
  }

  return result;
}

uint64_t sub_2442EAD3C()
{
  if (*v0)
  {
    return 7107189;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_2442EAD68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v5 || (sub_244313108() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_244313108();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_2442EAE44(uint64_t a1)
{
  v2 = sub_2442F1984();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2442EAE80(uint64_t a1)
{
  v2 = sub_2442F1984();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t InternalJSONLDRecipe.Author.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v4 = sub_2442C6564(&qword_27EDDF370, &qword_244317198);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v20 - v5;
  v7 = sub_2442C6564(&qword_27EDDF4B8, &qword_244317520);
  v21 = *(v7 - 8);
  v22 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v20 - v8;
  v10 = type metadata accessor for InternalJSONLDRecipe.Author(0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = (&v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(v11 + 28);
  v15 = sub_244312BB8();
  v16 = *(*(v15 - 8) + 56);
  v23 = v14;
  v16(v13 + v14, 1, 1, v15);
  sub_2442C65AC(a1, a1[3]);
  sub_2442F1984();
  sub_244313228();
  if (v2)
  {
    sub_2442C6908(a1);
    return sub_2442F3A40(v13 + v23, &qword_27EDDF370, &qword_244317198);
  }

  else
  {
    v17 = v21;
    v25 = 0;
    *v13 = sub_244313008();
    v13[1] = v18;
    v24 = 1;
    sub_2442F34CC(&qword_27EDDF4C8, MEMORY[0x277CC9260], MEMORY[0x277CC9280]);
    sub_244312FF8();
    (*(v17 + 8))(v9, v22);
    sub_2442E40C4(v6, v13 + v23, &qword_27EDDF370, &qword_244317198);
    sub_2442F19D8(v13, v20, type metadata accessor for InternalJSONLDRecipe.Author);
    sub_2442C6908(a1);
    return sub_2442F1A40(v13, type metadata accessor for InternalJSONLDRecipe.Author);
  }
}

uint64_t sub_2442EB240@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1701667182 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_244313108();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2442EB2C8(uint64_t a1)
{
  v2 = sub_2442F1AA0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2442EB304(uint64_t a1)
{
  v2 = sub_2442F1AA0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t InternalJSONLDRecipe.InstructionEntry.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_2442C6564(&qword_27EDDF380, &qword_2443171B0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  sub_2442C65AC(a1, a1[3]);
  sub_244313208();
  if (!v2)
  {
    v15[6] = v6;
    sub_2442C65AC(v15, v15[3]);
    v7 = sub_244313118();
    v9 = v8;
    if (qword_27EDDE818 != -1)
    {
      swift_once();
    }

    v10 = sub_244312C38();
    sub_2442D40C8(v10, qword_27EDED120);
    v11 = sub_244312C18();
    v12 = sub_244312E18();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_2442C5000, v11, v12, "Decoded InstructionEntry as String", v13, 2u);
      MEMORY[0x245D5F2C0](v13, -1, -1);
    }

    sub_2442C6908(v15);
    *a2 = v7;
    *(a2 + 8) = v9;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
  }

  return sub_2442C6908(a1);
}

uint64_t sub_2442EBB7C()
{
  if (*v0)
  {
    return 0x7473694C6D657469;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_2442EBBBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v5 || (sub_244313108() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7473694C6D657469 && a2 == 0xEF746E656D656C45)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_244313108();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_2442EBCA0(uint64_t a1)
{
  v2 = sub_2442F1B9C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2442EBCDC(uint64_t a1)
{
  v2 = sub_2442F1B9C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t InternalJSONLDRecipe.HowToSection.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_2442C6564(&qword_27EDDF4F0, &qword_244317530);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  sub_2442C65AC(a1, a1[3]);
  sub_2442F1B9C();
  sub_244313228();
  if (v2)
  {
    return sub_2442C6908(a1);
  }

  v20 = 0;
  v9 = sub_244313008();
  v11 = v10;
  v16 = a2;
  v17 = v9;
  sub_2442C6564(&qword_27EDDF500, &qword_244317538);
  v19 = 1;
  sub_2442F35BC(&qword_27EDDF508, &qword_27EDDF500, &qword_244317538, sub_2442F1AF4);
  sub_244313038();
  (*(v6 + 8))(v8, v5);
  v12 = v18;
  v13 = v16;
  *v16 = v17;
  v13[1] = v11;
  v13[2] = v12;

  sub_2442C6908(a1);
}

uint64_t sub_2442EBF94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1954047348 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_244313108();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2442EC01C(uint64_t a1)
{
  v2 = sub_2442F1BF0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2442EC058(uint64_t a1)
{
  v2 = sub_2442F1BF0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2442EC0D8@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t *a6@<X8>)
{
  v20 = a6;
  v9 = sub_2442C6564(a2, a3);
  v19 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v18 - v10;
  sub_2442C65AC(a1, a1[3]);
  a4();
  sub_244313228();
  if (!v6)
  {
    v12 = v19;
    v13 = v20;
    v14 = sub_244313008();
    v16 = v15;
    (*(v12 + 8))(v11, v9);
    *v13 = v14;
    v13[1] = v16;
  }

  return sub_2442C6908(a1);
}

uint64_t sub_2442EC270(uint64_t a1, char a2, void (*a3)(uint64_t *__return_ptr, void *))
{
  v19 = a2;
  sub_2442C6564(&qword_27EDDF388, &qword_2443171B8);
  sub_2442F32F0();
  sub_244312FF8();
  if (!v3)
  {
    v6 = v15;
    v7 = v16;
    v8 = v17;
    v9 = v18;
    if (v18 == 255)
    {
      a1 = 0;
      v10 = -1;
    }

    else
    {
      v12[0] = v15;
      v12[1] = v16;
      v12[2] = v17;
      v13 = v18;
      sub_2442F33BC(v15, v16, v17, v18);
      a3(&v14, v12);
      sub_2442F3344(v6, v7, v8, v9);
      a1 = v14;
      v6 = v15;
      v7 = v16;
      v8 = v17;
      v10 = v18;
    }

    sub_2442F3344(v6, v7, v8, v10);
  }

  return a1;
}

void *sub_2442EC3C0(uint64_t a1, char a2, void (*a3)(uint64_t *__return_ptr, uint64_t *))
{
  v9 = a2;
  sub_2442C6564(&qword_27EDDF388, &qword_2443171B8);
  result = sub_244312FF8();
  if (!v3)
  {
    if (v8)
    {
      return 0;
    }

    else
    {
      v6 = v7[2];
      a3(v7, &v6);
      return v7[0];
    }
  }

  return result;
}

void *sub_2442EC47C(uint64_t a1, char a2, void (*a3)(uint64_t *__return_ptr, uint64_t *))
{
  v9 = a2;
  sub_2442C6564(&qword_27EDDF458, &qword_2443174C8);
  sub_2442C6564(&qword_27EDDF388, &qword_2443171B8);
  sub_2442F3274();
  result = sub_244312FF8();
  if (!v3)
  {
    if (v8)
    {
      v6 = v8;

      a3(&v7, &v6);
      swift_bridgeObjectRelease_n();
      return v7;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *sub_2442EC570@<X0>(char a1@<W1>, void (*a2)(void *)@<X2>, uint64_t a3@<X8>)
{
  v10 = a1;
  sub_2442C6564(&qword_27EDDF388, &qword_2443171B8);
  result = sub_244312FF8();
  if (!v3)
  {
    if (v9)
    {
      v8[0] = v8[2];
      v8[1] = v9;

      a2(v8);
      return swift_bridgeObjectRelease_n();
    }

    else
    {
      v7 = sub_244312C08();
      return (*(*(v7 - 8) + 56))(a3, 1, 1, v7);
    }
  }

  return result;
}

void sub_2442EC688(uint64_t a1, char a2, void (*a3)(uint64_t *__return_ptr, void *))
{
  v19 = a2;
  sub_2442C6564(&qword_27EDDF388, &qword_2443171B8);
  sub_2442F3514();
  sub_244312FF8();
  if (!v3)
  {
    v5 = v14;
    if (v14 != 1)
    {
      v7 = v17;
      v6 = v18;
      v9 = v15;
      v8 = v16;
      v10 = v13;
      v11[0] = v13;
      v11[1] = v14;
      v11[2] = v15;
      v11[3] = v16;
      v11[4] = v17;
      v11[5] = v18;

      a3(&v12, v11);

      sub_2442F3568(v10, v5, v9, v8, v7, v6);
    }
  }
}

void *sub_2442EC7C8@<X0>(char a1@<W1>, void (*a2)(uint64_t *)@<X2>, void *a3@<X8>)
{
  v9 = a1;
  sub_2442C6564(&qword_27EDDF6E8, &qword_2443181A8);
  sub_2442C6564(&qword_27EDDF388, &qword_2443171B8);
  sub_2442F35BC(&qword_27EDDF6F0, &qword_27EDDF6E8, &qword_2443181A8, sub_2442F3638);
  result = sub_244312FF8();
  if (!v3)
  {
    if (v8)
    {
      v7 = v8;

      a2(&v7);
      return swift_bridgeObjectRelease_n();
    }

    else
    {
      *a3 = 0;
      a3[1] = 0;
    }
  }

  return result;
}

void *sub_2442EC8EC@<X0>(char a1@<W1>, void (*a2)(uint64_t *)@<X2>, uint64_t a3@<X8>)
{
  v10 = a1;
  sub_2442C6564(&qword_27EDDF700, &qword_2443181B0);
  sub_2442C6564(&qword_27EDDF388, &qword_2443171B8);
  sub_2442F368C();
  result = sub_244312FF8();
  if (!v3)
  {
    if (v9)
    {
      v8 = v9;

      a2(&v8);
      return swift_bridgeObjectRelease_n();
    }

    else
    {
      v7 = type metadata accessor for InternalJSONLDRecipe.Author(0);
      return (*(*(v7 - 8) + 56))(a3, 1, 1, v7);
    }
  }

  return result;
}

uint64_t sub_2442ECA20(uint64_t a1, char a2, void (*a3)(uint64_t *__return_ptr, char *), uint64_t a4)
{
  v18 = a4;
  v7 = type metadata accessor for ImageObject(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2442C6564(&qword_27EDDF718, &unk_2443181B8);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v18 - v15;
  v20 = a2;
  sub_2442C6564(&qword_27EDDF388, &qword_2443171B8);
  sub_2442F34CC(&qword_27EDDF720, type metadata accessor for ImageObject, &unk_2443181F8);
  sub_244312FF8();
  if (!v4)
  {
    sub_2442F3798(v16, v14, &qword_27EDDF718, &unk_2443181B8);
    if ((*(v8 + 48))(v14, 1, v7) == 1)
    {
      v8 = 0;
    }

    else
    {
      sub_2442F3800(v14, v10, type metadata accessor for ImageObject);
      a3(&v19, v10);
      v8 = v19;
      sub_2442F1A40(v10, type metadata accessor for ImageObject);
    }

    sub_2442F3A40(v16, &qword_27EDDF718, &unk_2443181B8);
  }

  return v8;
}

uint64_t sub_2442ECCE0(uint64_t a1, char a2, void (*a3)(uint64_t *__return_ptr, char *), uint64_t a4)
{
  v19 = a4;
  v8 = sub_244312BB8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2442C6564(&qword_27EDDF370, &qword_244317198);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v19 - v16;
  v21 = a2;
  sub_2442C6564(&qword_27EDDF388, &qword_2443171B8);
  sub_2442F34CC(&qword_27EDDF4C8, MEMORY[0x277CC9260], MEMORY[0x277CC9280]);
  sub_244312FF8();
  if (!v4)
  {
    sub_2442F3798(v17, v15, &qword_27EDDF370, &qword_244317198);
    if ((*(v9 + 48))(v15, 1, v8) == 1)
    {
      a1 = 0;
    }

    else
    {
      (*(v9 + 32))(v11, v15, v8);
      a3(&v20, v11);
      a1 = v20;
      (*(v9 + 8))(v11, v8);
    }

    sub_2442F3A40(v17, &qword_27EDDF370, &qword_244317198);
  }

  return a1;
}

void *sub_2442ECF9C(uint64_t a1, char a2, void (*a3)(uint64_t *__return_ptr, uint64_t *))
{
  v9 = a2;
  sub_2442C6564(&qword_27EDDF728, &qword_2443181C8);
  sub_2442C6564(&qword_27EDDF388, &qword_2443171B8);
  sub_2442F3868();
  result = sub_244312FF8();
  if (!v3)
  {
    if (v8)
    {
      v6 = v8;

      a3(&v7, &v6);
      swift_bridgeObjectRelease_n();
      return v7;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *sub_2442ED08C(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *))
{
  sub_2442C6564(&qword_27EDDF380, &qword_2443171B0);
  result = sub_244312FF8();
  if (!v2)
  {
    if (v7)
    {
      v5[0] = v6[1];
      v5[1] = v7;

      a2(v6, v5);
      swift_bridgeObjectRelease_n();
      return v6[0];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *sub_2442ED158(uint64_t a1, char a2, void (*a3)(uint64_t *__return_ptr, void *))
{
  v9 = a2;
  sub_2442C6564(&qword_27EDDF388, &qword_2443171B8);
  result = sub_244312FF8();
  if (!v3)
  {
    if (v8)
    {
      v6[0] = v7[1];
      v6[1] = v8;

      a3(v7, v6);
      swift_bridgeObjectRelease_n();
      return v7[0];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2442ED22C(uint64_t a1, unint64_t a2, os_log_type_t a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  if (v7)
  {
    v8 = a4 + 40;
    v9 = MEMORY[0x277D84F90];
    while (1)
    {
      v10 = *(v8 - 8);

      v10(v23, v4);

      if (v23[1])
      {
        break;
      }

      v8 += 16;
      if (!--v7)
      {
        goto LABEL_7;
      }
    }

    v21 = v23[0];

    return v21;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
LABEL_7:
    if (*(v9 + 16))
    {
      if (qword_27EDDE818 != -1)
      {
        swift_once();
      }

      v11 = sub_244312C38();
      sub_2442D40C8(v11, qword_27EDED120);

      v12 = sub_244312C18();

      if (os_log_type_enabled(v12, a3))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v23[0] = v14;
        *v13 = 136446466;
        *(v13 + 4) = sub_2442EEF8C(a1, a2, v23);
        *(v13 + 12) = 2082;
        v15 = sub_2442C6564(&qword_27EDDF020, &qword_2443164B0);
        v16 = MEMORY[0x245D5E9E0](v9, v15);
        v18 = v17;

        v19 = sub_2442EEF8C(v16, v18, v23);

        *(v13 + 14) = v19;
        _os_log_impl(&dword_2442C5000, v12, a3, "JSON-LD decoding of property %{public}s failed with errors: %{public}s", v13, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x245D5F2C0](v14, -1, -1);
        MEMORY[0x245D5F2C0](v13, -1, -1);
      }

      else
      {
      }
    }

    else
    {
    }

    return 0;
  }
}

uint64_t sub_2442ED518@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t (*a7)(void)@<X6>, uint64_t a8@<X8>)
{
  v39 = a6;
  v40 = a7;
  v10 = v8;
  v37 = a3;
  v35 = a1;
  v36 = a2;
  v38 = a8;
  v12 = sub_2442C6564(a5, a6);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v35 - v13;
  v15 = *(a4 + 16);
  if (v15)
  {
    v16 = a4 + 40;
    v17 = MEMORY[0x277D84F90];
    while (1)
    {
      v18 = *(v16 - 8);

      v18(v10);

      v19 = v40(0);
      v20 = *(v19 - 8);
      if ((*(v20 + 48))(v14, 1, v19) != 1)
      {
        break;
      }

      sub_2442F3A40(v14, a5, v39);
      v16 += 16;
      if (!--v15)
      {
        goto LABEL_7;
      }
    }

    v34 = v38;
    (*(v20 + 32))(v38, v14, v19);
    return (*(v20 + 56))(v34, 0, 1, v19);
  }

  else
  {
    v17 = MEMORY[0x277D84F90];
LABEL_7:
    if (*(v17 + 16))
    {
      if (qword_27EDDE818 != -1)
      {
        swift_once();
      }

      v21 = sub_244312C38();
      sub_2442D40C8(v21, qword_27EDED120);
      v22 = v36;

      v23 = sub_244312C18();

      v24 = v37;
      if (os_log_type_enabled(v23, v37))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v41[0] = v26;
        *v25 = 136446466;
        *(v25 + 4) = sub_2442EEF8C(v35, v22, v41);
        *(v25 + 12) = 2082;
        v27 = sub_2442C6564(&qword_27EDDF020, &qword_2443164B0);
        v28 = MEMORY[0x245D5E9E0](v17, v27);
        v30 = v29;

        v31 = sub_2442EEF8C(v28, v30, v41);

        *(v25 + 14) = v31;
        _os_log_impl(&dword_2442C5000, v23, v24, "JSON-LD decoding of property %{public}s failed with errors: %{public}s", v25, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x245D5F2C0](v26, -1, -1);
        MEMORY[0x245D5F2C0](v25, -1, -1);
      }

      else
      {
      }
    }

    else
    {
    }

    v32 = v40(0);
    return (*(*(v32 - 8) + 56))(v38, 1, 1, v32);
  }
}

void sub_2442ED954(uint64_t a1@<X0>, unint64_t a2@<X1>, os_log_type_t a3@<W2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v8 = *(a4 + 16);
  if (v8)
  {
    v9 = v5;
    v10 = a4 + 40;
    v11 = MEMORY[0x277D84F90];
    while (1)
    {
      v12 = *(v10 - 8);

      v12(&v25, v9);

      v13 = v26;
      if (v26)
      {
        break;
      }

      v10 += 16;
      if (!--v8)
      {
        goto LABEL_7;
      }
    }

    *a5 = v25;
    a5[1] = v13;
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
LABEL_7:
    if (*(v11 + 16))
    {
      if (qword_27EDDE818 != -1)
      {
        swift_once();
      }

      v14 = sub_244312C38();
      sub_2442D40C8(v14, qword_27EDED120);

      v15 = sub_244312C18();

      if (os_log_type_enabled(v15, a3))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v25 = v17;
        *v16 = 136446466;
        *(v16 + 4) = sub_2442EEF8C(a1, a2, &v25);
        *(v16 + 12) = 2082;
        v18 = sub_2442C6564(&qword_27EDDF020, &qword_2443164B0);
        v19 = MEMORY[0x245D5E9E0](v11, v18);
        v21 = v20;

        v22 = sub_2442EEF8C(v19, v21, &v25);

        *(v16 + 14) = v22;
        _os_log_impl(&dword_2442C5000, v15, a3, "JSON-LD decoding of property %{public}s failed with errors: %{public}s", v16, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x245D5F2C0](v17, -1, -1);
        MEMORY[0x245D5F2C0](v16, -1, -1);
      }

      else
      {
      }
    }

    else
    {
    }

    *a5 = 0;
    a5[1] = 0;
  }
}

uint64_t sub_2442EDC44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v33 = a3;
  v31 = a1;
  v32 = a2;
  v34 = a5;
  v8 = sub_2442C6564(&qword_27EDDF368, &qword_244317190);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v31 - v9;
  v11 = *(a4 + 16);
  if (v11)
  {
    v12 = a4 + 40;
    v13 = MEMORY[0x277D84F90];
    while (1)
    {
      v14 = *(v12 - 8);

      v14(v6);

      v15 = type metadata accessor for InternalJSONLDRecipe.Author(0);
      v16 = *(v15 - 8);
      if ((*(v16 + 48))(v10, 1, v15) != 1)
      {
        break;
      }

      sub_2442F3A40(v10, &qword_27EDDF368, &qword_244317190);
      v12 += 16;
      if (!--v11)
      {
        goto LABEL_7;
      }
    }

    v30 = v34;
    sub_2442F3800(v10, v34, type metadata accessor for InternalJSONLDRecipe.Author);
    return (*(v16 + 56))(v30, 0, 1, v15);
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
LABEL_7:
    if (*(v13 + 16))
    {
      if (qword_27EDDE818 != -1)
      {
        swift_once();
      }

      v17 = sub_244312C38();
      sub_2442D40C8(v17, qword_27EDED120);
      v18 = v32;

      v19 = sub_244312C18();

      v20 = v33;
      if (os_log_type_enabled(v19, v33))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v35[0] = v22;
        *v21 = 136446466;
        *(v21 + 4) = sub_2442EEF8C(v31, v18, v35);
        *(v21 + 12) = 2082;
        v23 = sub_2442C6564(&qword_27EDDF020, &qword_2443164B0);
        v24 = MEMORY[0x245D5E9E0](v13, v23);
        v26 = v25;

        v27 = sub_2442EEF8C(v24, v26, v35);

        *(v21 + 14) = v27;
        _os_log_impl(&dword_2442C5000, v19, v20, "JSON-LD decoding of property %{public}s failed with errors: %{public}s", v21, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x245D5F2C0](v22, -1, -1);
        MEMORY[0x245D5F2C0](v21, -1, -1);
      }

      else
      {
      }
    }

    else
    {
    }

    v28 = type metadata accessor for InternalJSONLDRecipe.Author(0);
    return (*(*(v28 - 8) + 56))(v34, 1, 1, v28);
  }
}

uint64_t sub_2442EE07C(uint64_t a1, unint64_t a2, os_log_type_t a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  if (v7)
  {
    v8 = a4 + 40;
    v9 = MEMORY[0x277D84F90];
    while (1)
    {
      v10 = *(v8 - 8);

      v10(&v23, v4);

      if (v23)
      {
        break;
      }

      v8 += 16;
      if (!--v7)
      {
        goto LABEL_7;
      }
    }

    v21 = v23;

    return v21;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
LABEL_7:
    if (*(v9 + 16))
    {
      if (qword_27EDDE818 != -1)
      {
        swift_once();
      }

      v11 = sub_244312C38();
      sub_2442D40C8(v11, qword_27EDED120);

      v12 = sub_244312C18();

      if (os_log_type_enabled(v12, a3))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v23 = v14;
        *v13 = 136446466;
        *(v13 + 4) = sub_2442EEF8C(a1, a2, &v23);
        *(v13 + 12) = 2082;
        v15 = sub_2442C6564(&qword_27EDDF020, &qword_2443164B0);
        v16 = MEMORY[0x245D5E9E0](v9, v15);
        v18 = v17;

        v19 = sub_2442EEF8C(v16, v18, &v23);

        *(v13 + 14) = v19;
        _os_log_impl(&dword_2442C5000, v12, a3, "JSON-LD decoding of property %{public}s failed with errors: %{public}s", v13, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x245D5F2C0](v14, -1, -1);
        MEMORY[0x245D5F2C0](v13, -1, -1);
      }

      else
      {
      }

      return 0;
    }

    else
    {

      return 0;
    }
  }
}

uint64_t sub_2442EE360@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v3 = sub_2442C6564(&qword_27EDDF370, &qword_244317198);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v17 - v4;
  v6 = sub_2442C6564(&qword_27EDDF798, &qword_244318250);
  v18 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = type metadata accessor for ImageObject(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_244312BB8();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  sub_2442C65AC(a1, a1[3]);
  sub_2442F40B0();
  v13 = v19;
  sub_244313228();
  if (v13)
  {
    sub_2442C6908(a1);
    v15 = v11;
  }

  else
  {
    v14 = v17;
    sub_2442F34CC(&qword_27EDDF4C8, MEMORY[0x277CC9260], MEMORY[0x277CC9280]);
    sub_244312FF8();
    (*(v18 + 8))(v8, v6);
    sub_2442E40C4(v5, v11, &qword_27EDDF370, &qword_244317198);
    sub_2442F19D8(v11, v14, type metadata accessor for ImageObject);
    sub_2442C6908(a1);
    v15 = v11;
  }

  return sub_2442F1A40(v15, type metadata accessor for ImageObject);
}

uint64_t sub_2442EE650@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 7107189 && a2 == 0xE300000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_244313108();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2442EE6D8(uint64_t a1)
{
  v2 = sub_2442F40B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2442EE714(uint64_t a1)
{
  v2 = sub_2442F40B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t InternalJSONLDRecipeProperty.hashValue.getter()
{
  v1 = *v0;
  sub_2443131A8();
  MEMORY[0x245D5EDF0](v1);
  return sub_2443131D8();
}

uint64_t sub_2442EE80C@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_244312B68();
    if (v10)
    {
      v11 = sub_244312B88();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_244312B78();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_244312B68();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_244312B88();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_244312B78();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_2442EEA3C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_2442EFBD8(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_2442D5DE8(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_2442EE80C(v13, a3, a4, &v12);
  v10 = v4;
  sub_2442D5DE8(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

unint64_t sub_2442EEBCC@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    v7 = sub_244312D88();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_2442DC32C(0, 1, 1, MEMORY[0x277D84F90]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_2442DC32C((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x277D84F90];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_244312D78();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_244312D08();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_244312D08();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_244312D88();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_2442DC32C(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_244312D88();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_2442DC32C(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_2442DC32C((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_244312D08();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_2442EEF8C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2442EF058(v11, 0, 0, 1, a1, a2);
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
    sub_2442F1810(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_2442C6908(v11);
  return v7;
}

unint64_t sub_2442EF058(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_2442EF164(a5, a6);
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
    result = sub_244312EF8();
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

void *sub_2442EF164(uint64_t a1, unint64_t a2)
{
  v3 = sub_2442EF1B0(a1, a2);
  sub_2442EF2E0(&unk_2857A8E08);
  return v3;
}

void *sub_2442EF1B0(uint64_t a1, unint64_t a2)
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

  v6 = sub_2442D54E0(v5, 0);
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

  result = sub_244312EF8();
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
        v10 = sub_244312D28();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2442D54E0(v10, 0);
        result = sub_244312E88();
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

uint64_t sub_2442EF2E0(uint64_t result)
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

  result = sub_2442EF3CC(result, v11, 1, v3);
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

char *sub_2442EF3CC(char *result, int64_t a2, char a3, char *a4)
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
    sub_2442C6564(&qword_27EDDE920, &qword_244316370);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

char *sub_2442EF4C0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2442EF500(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2442EF4E0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2442EF60C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2442EF500(char *result, int64_t a2, char a3, char *a4)
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
    sub_2442C6564(&qword_27EDDF6A8, &unk_244318190);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

void *sub_2442EF60C(void *result, int64_t a2, char a3, void *a4)
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

  sub_2442C6564(&qword_27EDDF738, &qword_2443181D0);
  v10 = *(sub_2442C6564(&qword_27EDDF370, &qword_244317198) - 8);
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
  v15 = *(sub_2442C6564(&qword_27EDDF370, &qword_244317198) - 8);
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

void *sub_2442EF7FC@<X0>(void *a2@<X8>)
{
  sub_2442C6564(&qword_27EDDF450, &qword_2443174C0);
  sub_2442C6564(&qword_27EDDF388, &qword_2443171B8);
  sub_2442F35BC(&qword_27EDDF6C8, &qword_27EDDF450, &qword_2443174C0, sub_2442F32F0);
  result = sub_244312FF8();
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

void *sub_2442EF8D8()
{
  sub_2442C6564(&qword_27EDDF388, &qword_2443171B8);
  sub_2442F3638();
  return sub_244312FF8();
}

void *sub_2442EF958(void x0_0, char *a1, uint64_t (*a2)(void), unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  a2(0);
  sub_2442C6564(&qword_27EDDF388, &qword_2443171B8);
  sub_2442F34CC(a3, a4, a5);
  return sub_244312FF8();
}

void *sub_2442EFA10@<X0>(uint64_t *a2@<X2>, uint64_t *a3@<X3>, uint64_t (*a4)(void)@<X4>, void *a5@<X8>)
{
  sub_2442C6564(a2, a3);
  sub_2442C6564(&qword_27EDDF388, &qword_2443171B8);
  a4();
  result = sub_244312FF8();
  if (!v5)
  {
    *a5 = v9;
  }

  return result;
}

double sub_2442EFABC@<D0>(_OWORD *a2@<X8>)
{
  sub_2442C6564(&qword_27EDDF388, &qword_2443171B8);
  sub_244312FF8();
  if (!v2)
  {
    result = *&v5;
    *a2 = v5;
  }

  return result;
}

void *sub_2442EFB44@<X0>(void *a1@<X8>)
{
  sub_2442C6564(&qword_27EDDF458, &qword_2443174C8);
  sub_2442C6564(&qword_27EDDF380, &qword_2443171B0);
  sub_2442F3274();
  result = sub_244312FF8();
  if (!v1)
  {
    *a1 = v4;
  }

  return result;
}

uint64_t sub_2442EFBD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_244312B68();
  v11 = result;
  if (result)
  {
    result = sub_244312B88();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_244312B78();
  sub_2442EE80C(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

BOOL sub_2442EFC90(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_2442D5D94(a3, a4);
          return sub_2442EEA3C(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

BOOL _s11CookingData20InternalJSONLDRecipeV16InstructionEntryO2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = *(a1 + 24);
  v7 = *a2;
  v6 = a2[1];
  v8 = a2[2];
  v9 = *(a2 + 24);
  if (!*(a1 + 24))
  {
    if (!*(a2 + 24))
    {
      v14 = *a1;
      if (v3 != v7 || v2 != v6)
      {
        v16 = sub_244313108();
        sub_2442F33BC(v7, v6, v8, 0);
        sub_2442F33BC(v3, v2, v4, 0);
        sub_2442F3358(v3, v2, v4, 0);
        sub_2442F3358(v7, v6, v8, 0);
        return v16 & 1;
      }

      sub_2442F33BC(v14, v2, v8, 0);
      sub_2442F33BC(v3, v2, v4, 0);
      sub_2442F3358(v3, v2, v4, 0);
      v23 = v3;
      v24 = v2;
      v25 = v8;
      v26 = 0;
      goto LABEL_30;
    }

    goto LABEL_24;
  }

  if (v5 != 1)
  {
    if (v9 == 2)
    {
      v17 = v3 == v7 && v2 == v6;
      if (v17 || (sub_244313108() & 1) != 0)
      {
        v18 = sub_2442E4D50(v4, v8);
        sub_2442F33BC(v7, v6, v8, 2u);
        sub_2442F33BC(v3, v2, v4, 2u);
        sub_2442F3358(v3, v2, v4, 2u);
        sub_2442F3358(v7, v6, v8, 2u);
        return (v18 & 1) != 0;
      }

      sub_2442F33BC(v7, v6, v8, 2u);
      sub_2442F33BC(v3, v2, v4, 2u);
      sub_2442F3358(v3, v2, v4, 2u);
      v19 = v7;
      v20 = v6;
      v21 = v8;
      v22 = 2;
LABEL_25:
      sub_2442F3358(v19, v20, v21, v22);
      return 0;
    }

LABEL_24:
    sub_2442F33BC(*a2, a2[1], v8, v9);
    sub_2442F33BC(v3, v2, v4, v5);
    sub_2442F3358(v3, v2, v4, v5);
    v19 = v7;
    v20 = v6;
    v21 = v8;
    v22 = v9;
    goto LABEL_25;
  }

  if (v9 != 1)
  {
    goto LABEL_24;
  }

  v10 = *a1;
  if (v3 == v7 && v2 == v6)
  {
    sub_2442F33BC(v10, v2, v8, 1u);
    sub_2442F33BC(v3, v2, v4, 1u);
    sub_2442F3358(v3, v2, v4, 1u);
    v23 = v3;
    v24 = v2;
    v25 = v8;
    v26 = 1;
LABEL_30:
    sub_2442F3358(v23, v24, v25, v26);
    return 1;
  }

  v12 = sub_244313108();
  sub_2442F33BC(v7, v6, v8, 1u);
  sub_2442F33BC(v3, v2, v4, 1u);
  sub_2442F3358(v3, v2, v4, 1u);
  sub_2442F3358(v7, v6, v8, 1u);
  result = 0;
  if (v12)
  {
    return 1;
  }

  return result;
}

BOOL _s11CookingData20InternalJSONLDRecipeV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = sub_244312C08();
  v123 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v120 = &v116 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2442C6564(&qword_27EDDF378, &unk_2443171A0);
  MEMORY[0x28223BE20](v6 - 8);
  v129 = &v116 - v7;
  v121 = sub_2442C6564(&qword_27EDDF748, &qword_2443181D8);
  MEMORY[0x28223BE20](v121);
  v122 = &v116 - v8;
  v9 = sub_244312BB8();
  v10 = *(v9 - 8);
  v125 = v9;
  v126 = v10;
  MEMORY[0x28223BE20](v9);
  v124 = &v116 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2442C6564(&qword_27EDDF370, &qword_244317198);
  MEMORY[0x28223BE20](v12 - 8);
  v127 = &v116 - v13;
  v14 = sub_2442C6564(&qword_27EDDF750, &qword_2443181E0);
  MEMORY[0x28223BE20](v14);
  v128 = &v116 - v15;
  v16 = type metadata accessor for InternalJSONLDRecipe.Author(0);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = (&v116 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = sub_2442C6564(&qword_27EDDF368, &qword_244317190);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = (&v116 - v21);
  v23 = sub_2442C6564(&qword_27EDDF758, &qword_2443181E8);
  MEMORY[0x28223BE20](v23);
  v25 = &v116 - v24;
  if (*a1 != *a2 && (sub_244313108() & 1) == 0 || (a1[2] != a2[2] || a1[3] != a2[3]) && (sub_244313108() & 1) == 0 || (sub_2442E4B3C(a1[4], a2[4]) & 1) == 0)
  {
    return 0;
  }

  v116 = v4;
  v26 = type metadata accessor for InternalJSONLDRecipe(0);
  v119 = a2;
  v27 = *(v26 + 28);
  v28 = *(v23 + 48);
  v117 = v26;
  v118 = a1;
  sub_2442F3798(a1 + v27, v25, &qword_27EDDF368, &qword_244317190);
  v29 = v119 + v27;
  v30 = v119;
  sub_2442F3798(v29, &v25[v28], &qword_27EDDF368, &qword_244317190);
  v31 = *(v17 + 48);
  if (v31(v25, 1, v16) == 1)
  {
    if (v31(&v25[v28], 1, v16) == 1)
    {
      sub_2442F3A40(v25, &qword_27EDDF368, &qword_244317190);
      goto LABEL_15;
    }

LABEL_12:
    v32 = &qword_27EDDF758;
    v33 = &qword_2443181E8;
LABEL_13:
    sub_2442F3A40(v25, v32, v33);
    return 0;
  }

  sub_2442F3798(v25, v22, &qword_27EDDF368, &qword_244317190);
  if (v31(&v25[v28], 1, v16) == 1)
  {
    sub_2442F1A40(v22, type metadata accessor for InternalJSONLDRecipe.Author);
    goto LABEL_12;
  }

  sub_2442F3800(&v25[v28], v19, type metadata accessor for InternalJSONLDRecipe.Author);
  v34 = _s11CookingData20InternalJSONLDRecipeV6AuthorV2eeoiySbAE_AEtFZ_0(v22, v19);
  sub_2442F1A40(v19, type metadata accessor for InternalJSONLDRecipe.Author);
  sub_2442F1A40(v22, type metadata accessor for InternalJSONLDRecipe.Author);
  sub_2442F3A40(v25, &qword_27EDDF368, &qword_244317190);
  if (!v34)
  {
    return 0;
  }

LABEL_15:
  v36 = v117;
  v35 = v118;
  v37 = v117[8];
  v38 = (v118 + v37);
  v39 = *(v118 + v37 + 8);
  v40 = (v30 + v37);
  v41 = v40[1];
  if (!v39)
  {
    v25 = v128;
    v42 = v129;
    v43 = v127;
    if (!v41)
    {

      goto LABEL_25;
    }

LABEL_22:

    return 0;
  }

  v25 = v128;
  v42 = v129;
  v43 = v127;
  if (!v41)
  {
    goto LABEL_22;
  }

  if ((*v38 != *v40 || v39 != v41) && (sub_244313108() & 1) == 0)
  {
    return 0;
  }

LABEL_25:
  v45 = v36[9];
  v46 = *(v14 + 48);
  sub_2442F3798(v35 + v45, v25, &qword_27EDDF370, &qword_244317198);
  v47 = v119 + v45;
  v48 = v119;
  sub_2442F3798(v47, &v25[v46], &qword_27EDDF370, &qword_244317198);
  v49 = v125;
  v50 = *(v126 + 48);
  if (v50(v25, 1, v125) == 1)
  {
    if (v50(&v25[v46], 1, v49) == 1)
    {
      sub_2442F3A40(v25, &qword_27EDDF370, &qword_244317198);
      goto LABEL_32;
    }

    goto LABEL_30;
  }

  sub_2442F3798(v25, v43, &qword_27EDDF370, &qword_244317198);
  if (v50(&v25[v46], 1, v49) == 1)
  {
    (*(v126 + 8))(v43, v49);
LABEL_30:
    v32 = &qword_27EDDF750;
    v33 = &qword_2443181E0;
    goto LABEL_13;
  }

  v51 = v126;
  v52 = v124;
  (*(v126 + 32))(v124, &v25[v46], v49);
  sub_2442F34CC(&qword_27EDDF768, MEMORY[0x277CC9260], MEMORY[0x277CC9278]);
  v53 = sub_244312C68();
  v54 = *(v51 + 8);
  v54(v52, v49);
  v54(v43, v49);
  sub_2442F3A40(v25, &qword_27EDDF370, &qword_244317198);
  if ((v53 & 1) == 0)
  {
    return 0;
  }

LABEL_32:
  v55 = v36[10];
  v56 = v118;
  v57 = (v118 + v55);
  v58 = *(v118 + v55 + 8);
  v59 = (v48 + v55);
  v60 = v59[1];
  if (v58)
  {
    if (!v60 || (*v57 != *v59 || v58 != v60) && (sub_244313108() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v60)
  {
    return 0;
  }

  v61 = v36[11];
  v62 = (v56 + v61);
  v63 = *(v56 + v61 + 8);
  v64 = (v48 + v61);
  v65 = v64[1];
  if (v63)
  {
    if (!v65 || (*v62 != *v64 || v63 != v65) && (sub_244313108() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v65)
  {
    return 0;
  }

  v66 = v36[12];
  v67 = (v56 + v66);
  v68 = *(v56 + v66 + 8);
  v69 = (v48 + v66);
  v70 = v69[1];
  if (v68)
  {
    if (!v70 || (*v67 != *v69 || v68 != v70) && (sub_244313108() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v70)
  {
    return 0;
  }

  v71 = v36[13];
  v72 = (v56 + v71);
  v73 = *(v56 + v71 + 8);
  v74 = (v48 + v71);
  v75 = v74[1];
  if (v73)
  {
    if (!v75 || (*v72 != *v74 || v73 != v75) && (sub_244313108() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v75)
  {
    return 0;
  }

  v76 = v36[14];
  v25 = v122;
  v77 = *(v121 + 48);
  sub_2442F3798(v56 + v76, v122, &qword_27EDDF378, &unk_2443171A0);
  v78 = v119 + v76;
  v79 = v119;
  sub_2442F3798(v78, &v25[v77], &qword_27EDDF378, &unk_2443171A0);
  v80 = *(v123 + 48);
  v81 = v116;
  if (v80(v25, 1, v116) == 1)
  {
    if (v80(&v25[v77], 1, v81) == 1)
    {
      sub_2442F3A40(v25, &qword_27EDDF378, &unk_2443171A0);
      goto LABEL_67;
    }

    goto LABEL_65;
  }

  sub_2442F3798(v25, v42, &qword_27EDDF378, &unk_2443171A0);
  if (v80(&v25[v77], 1, v81) == 1)
  {
    (*(v123 + 8))(v42, v81);
LABEL_65:
    v32 = &qword_27EDDF748;
    v33 = &qword_2443181D8;
    goto LABEL_13;
  }

  v82 = v123;
  v83 = v120;
  (*(v123 + 32))(v120, &v25[v77], v81);
  sub_2442F34CC(&qword_27EDDF760, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
  v84 = sub_244312C68();
  v85 = *(v82 + 8);
  v85(v83, v81);
  v85(v42, v81);
  sub_2442F3A40(v25, &qword_27EDDF378, &unk_2443171A0);
  if ((v84 & 1) == 0)
  {
    return 0;
  }

LABEL_67:
  v86 = v36[15];
  v87 = v118;
  v88 = (v118 + v86);
  v89 = *(v118 + v86 + 8);
  v90 = (v79 + v86);
  v91 = v90[1];
  if (v89)
  {
    if (!v91 || (*v88 != *v90 || v89 != v91) && (sub_244313108() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v91)
  {
    return 0;
  }

  if ((sub_2442E4D50(*(v87 + v36[16]), *(v79 + v36[16])) & 1) == 0)
  {
    return 0;
  }

  v92 = v36[17];
  v93 = (v87 + v92);
  v94 = *(v87 + v92 + 8);
  v95 = (v79 + v92);
  v96 = v95[1];
  if (v94)
  {
    if (!v96 || (*v93 != *v95 || v94 != v96) && (sub_244313108() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v96)
  {
    return 0;
  }

  v97 = v117[18];
  v98 = (v118 + v97);
  v99 = *(v118 + v97 + 8);
  v100 = (v119 + v97);
  v101 = v100[1];
  if (v99)
  {
    if (!v101 || (*v98 != *v100 || v99 != v101) && (sub_244313108() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v101)
  {
    return 0;
  }

  if ((sub_2442E4D50(*(v118 + v117[19]), *(v119 + v117[19])) & 1) == 0)
  {
    return 0;
  }

  sub_2442E4DE0(*(v118 + v117[20]), *(v119 + v117[20]));
  if ((v102 & 1) == 0)
  {
    return 0;
  }

  v103 = v117[21];
  v104 = (v118 + v103);
  v105 = *(v118 + v103 + 8);
  v106 = (v119 + v103);
  v107 = v106[1];
  if (!v105)
  {
    if (!v107)
    {
      goto LABEL_98;
    }

    return 0;
  }

  if (!v107 || (*v104 != *v106 || v105 != v107) && (sub_244313108() & 1) == 0)
  {
    return 0;
  }

LABEL_98:
  v108 = v117[22];
  v109 = v118 + v108;
  v111 = *(v118 + v108);
  v110 = *(v118 + v108 + 8);
  v112 = (v119 + v108);
  v114 = *v112;
  v113 = v112[1];
  if (v110 >> 60 == 15)
  {
    if (v113 >> 60 == 15)
    {
      sub_2442E472C(*v109, *(v109 + 1));
      sub_2442E472C(v114, v113);
      sub_2442E4788(v111, v110);
      return 1;
    }

    goto LABEL_102;
  }

  if (v113 >> 60 == 15)
  {
LABEL_102:
    sub_2442E472C(*v109, *(v109 + 1));
    sub_2442E472C(v114, v113);
    sub_2442E4788(v111, v110);
    sub_2442E4788(v114, v113);
    return 0;
  }

  sub_2442E472C(*v109, *(v109 + 1));
  sub_2442E472C(v114, v113);
  v115 = sub_2442EFC90(v111, v110, v114, v113);
  sub_2442E4788(v114, v113);
  sub_2442E4788(v111, v110);
  return v115;
}

BOOL _s11CookingData20InternalJSONLDRecipeV6AuthorV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v4 = sub_244312BB8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2442C6564(&qword_27EDDF370, &qword_244317198);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v22 - v9;
  v11 = sub_2442C6564(&qword_27EDDF750, &qword_2443181E0);
  MEMORY[0x28223BE20](v11);
  v13 = &v22 - v12;
  if (*a1 == *a2 || (v14 = sub_244313108(), result = 0, (v14 & 1) != 0))
  {
    v23 = v7;
    v16 = *(type metadata accessor for InternalJSONLDRecipe.Author(0) + 20);
    v17 = *(v11 + 48);
    sub_2442F3798(a1 + v16, v13, &qword_27EDDF370, &qword_244317198);
    sub_2442F3798(a2 + v16, &v13[v17], &qword_27EDDF370, &qword_244317198);
    v18 = *(v5 + 48);
    if (v18(v13, 1, v4) == 1)
    {
      if (v18(&v13[v17], 1, v4) == 1)
      {
        sub_2442F3A40(v13, &qword_27EDDF370, &qword_244317198);
        return 1;
      }
    }

    else
    {
      sub_2442F3798(v13, v10, &qword_27EDDF370, &qword_244317198);
      if (v18(&v13[v17], 1, v4) != 1)
      {
        v19 = v23;
        (*(v5 + 32))(v23, &v13[v17], v4);
        sub_2442F34CC(&qword_27EDDF768, MEMORY[0x277CC9260], MEMORY[0x277CC9278]);
        v20 = sub_244312C68();
        v21 = *(v5 + 8);
        v21(v19, v4);
        v21(v10, v4);
        sub_2442F3A40(v13, &qword_27EDDF370, &qword_244317198);
        return (v20 & 1) != 0;
      }

      (*(v5 + 8))(v10, v4);
    }

    sub_2442F3A40(v13, &qword_27EDDF750, &qword_2443181E0);
    return 0;
  }

  return result;
}

unint64_t sub_2442F1240()
{
  result = qword_27EDDF390;
  if (!qword_27EDDF390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF390);
  }

  return result;
}

uint64_t sub_2442F1294(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_2442F15F8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2442F1638()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2442F16A0()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2442F1750@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, void, void, void)@<X1>, uint64_t *a3@<X8>)
{
  result = a2(a1, *(v3 + 16), *(v3 + 24), *(v3 + 32));
  if (!v4)
  {
    *a3 = result;
    a3[1] = v7;
  }

  return result;
}

uint64_t sub_2442F17D4@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, void, void, void)@<X1>, uint64_t *a3@<X8>)
{
  result = a2(a1, *(v3 + 16), *(v3 + 24), *(v3 + 32));
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_2442F1810(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2442F186C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_2442F1884(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_2442F18E8()
{
  result = qword_27EDDF498;
  if (!qword_27EDDF498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF498);
  }

  return result;
}

void *sub_2442F1954@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_2442ED08C(a1, *(v2 + 16));
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_2442F1984()
{
  result = qword_27EDDF4C0;
  if (!qword_27EDDF4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF4C0);
  }

  return result;
}

uint64_t sub_2442F19D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2442F1A40(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_2442F1AA0()
{
  result = qword_27EDDF4D8;
  if (!qword_27EDDF4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF4D8);
  }

  return result;
}

unint64_t sub_2442F1AF4()
{
  result = qword_27EDDF4E0;
  if (!qword_27EDDF4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF4E0);
  }

  return result;
}

unint64_t sub_2442F1B48()
{
  result = qword_27EDDF4E8;
  if (!qword_27EDDF4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF4E8);
  }

  return result;
}

unint64_t sub_2442F1B9C()
{
  result = qword_27EDDF4F8;
  if (!qword_27EDDF4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF4F8);
  }

  return result;
}

unint64_t sub_2442F1BF0()
{
  result = qword_27EDDF518;
  if (!qword_27EDDF518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF518);
  }

  return result;
}

unint64_t sub_2442F1C48()
{
  result = qword_27EDDF520;
  if (!qword_27EDDF520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF520);
  }

  return result;
}

unint64_t sub_2442F1CA0()
{
  result = qword_27EDDF528;
  if (!qword_27EDDF528)
  {
    sub_2442C745C(&qword_27EDDF488, &qword_2443174F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF528);
  }

  return result;
}

uint64_t sub_2442F1D18(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_2442C6564(&qword_27EDDF368, &qword_244317190);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[7];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = sub_2442C6564(&qword_27EDDF370, &qword_244317198);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[9];
    goto LABEL_9;
  }

  v14 = sub_2442C6564(&qword_27EDDF378, &unk_2443171A0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[14];

  return v15(v16, a2, v14);
}

uint64_t sub_2442F1EBC(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_2442C6564(&qword_27EDDF368, &qword_244317190);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[7];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = sub_2442C6564(&qword_27EDDF370, &qword_244317198);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[9];
    goto LABEL_7;
  }

  v14 = sub_2442C6564(&qword_27EDDF378, &unk_2443171A0);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[14];

  return v15(v16, a2, a2, v14);
}

void sub_2442F204C(uint64_t a1)
{
  sub_2442F2314(319, &qword_27EDDF540, MEMORY[0x277CC9260], MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_2442F2314(319, &qword_27EDDF548, type metadata accessor for InternalJSONLDRecipe.Author, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_2442F2378(319, &qword_27EDDF550, &type metadata for InternalJSONLDRecipe.Publisher, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_2442F2314(319, &qword_27EDDF558, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_2442F2378(319, &qword_27EDDF560, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            sub_2442F2314(319, &qword_27EDDF568, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
            if (v6 <= 0x3F)
            {
              sub_2442F2378(319, &qword_27EDDF570, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
              if (v7 <= 0x3F)
              {
                sub_2442F2378(319, &qword_27EDDF578, &type metadata for InternalJSONLDRecipe.InstructionEntry, MEMORY[0x277D83940]);
                if (v8 <= 0x3F)
                {
                  sub_2442F2378(319, &qword_27EDDF580, MEMORY[0x277CC9318], MEMORY[0x277D83D88]);
                  if (v9 <= 0x3F)
                  {
                    swift_cvw_initStructMetadataWithLayoutString();
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_2442F2314(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_2442F2378(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_2442F23DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_2442C6564(&qword_27EDDF370, &qword_244317198);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2442F24AC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_2442C6564(&qword_27EDDF370, &qword_244317198);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_2442F255C(uint64_t a1)
{
  sub_2442F2314(319, &qword_27EDDF558, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

__n128 initializeBufferWithCopyOfBuffer for IARFTextRange(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 sub_2442F2630(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_2442F2644(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 25))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_2442F268C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_2442F26F0(uint64_t a1, int a2)
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

uint64_t sub_2442F273C(uint64_t result, int a2, int a3)
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

uint64_t sub_2442F2788(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_2442F27D0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for InternalJSONLDRecipeProperty(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEF)
  {
    goto LABEL_17;
  }

  if (a2 + 17 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 17) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 17;
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

      return (*a1 | (v4 << 8)) - 17;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 17;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v8 = v6 - 18;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for InternalJSONLDRecipeProperty(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEF)
  {
    v4 = 0;
  }

  if (a2 > 0xEE)
  {
    v5 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
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
    *result = a2 + 17;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_2442F29B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2442F29F4(uint64_t *a1, int a2)
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

uint64_t sub_2442F2A3C(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for InternalJSONLDRecipe.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE7)
  {
    goto LABEL_17;
  }

  if (a2 + 25 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 25) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 25;
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

      return (*a1 | (v4 << 8)) - 25;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 25;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1A;
  v8 = v6 - 26;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for InternalJSONLDRecipe.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 25 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 25) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE7)
  {
    v4 = 0;
  }

  if (a2 > 0xE6)
  {
    v5 = ((a2 - 231) >> 8) + 1;
    *result = a2 + 25;
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
    *result = a2 + 25;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2442F2BF4()
{
  result = qword_27EDDF618;
  if (!qword_27EDDF618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF618);
  }

  return result;
}

unint64_t sub_2442F2C4C()
{
  result = qword_27EDDF620;
  if (!qword_27EDDF620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF620);
  }

  return result;
}

unint64_t sub_2442F2CA4()
{
  result = qword_27EDDF628;
  if (!qword_27EDDF628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF628);
  }

  return result;
}

unint64_t sub_2442F2CFC()
{
  result = qword_27EDDF630;
  if (!qword_27EDDF630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF630);
  }

  return result;
}

unint64_t sub_2442F2D54()
{
  result = qword_27EDDF638;
  if (!qword_27EDDF638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF638);
  }

  return result;
}

unint64_t sub_2442F2DAC()
{
  result = qword_27EDDF640;
  if (!qword_27EDDF640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF640);
  }

  return result;
}

unint64_t sub_2442F2E04()
{
  result = qword_27EDDF648;
  if (!qword_27EDDF648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF648);
  }

  return result;
}

unint64_t sub_2442F2E5C()
{
  result = qword_27EDDF650;
  if (!qword_27EDDF650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF650);
  }

  return result;
}

unint64_t sub_2442F2EB4()
{
  result = qword_27EDDF658;
  if (!qword_27EDDF658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF658);
  }

  return result;
}

unint64_t sub_2442F2F0C()
{
  result = qword_27EDDF660;
  if (!qword_27EDDF660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF660);
  }

  return result;
}

unint64_t sub_2442F2F64()
{
  result = qword_27EDDF668;
  if (!qword_27EDDF668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF668);
  }

  return result;
}

unint64_t sub_2442F2FBC()
{
  result = qword_27EDDF670;
  if (!qword_27EDDF670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF670);
  }

  return result;
}

unint64_t sub_2442F3014()
{
  result = qword_27EDDF678;
  if (!qword_27EDDF678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF678);
  }

  return result;
}

unint64_t sub_2442F306C()
{
  result = qword_27EDDF680;
  if (!qword_27EDDF680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF680);
  }

  return result;
}

unint64_t sub_2442F30C4()
{
  result = qword_27EDDF688;
  if (!qword_27EDDF688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF688);
  }

  return result;
}

unint64_t sub_2442F311C()
{
  result = qword_27EDDF690;
  if (!qword_27EDDF690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF690);
  }

  return result;
}

unint64_t sub_2442F3174()
{
  result = qword_27EDDF698;
  if (!qword_27EDDF698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF698);
  }

  return result;
}

unint64_t sub_2442F31CC()
{
  result = qword_27EDDF6A0;
  if (!qword_27EDDF6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF6A0);
  }

  return result;
}

unint64_t sub_2442F3220(uint64_t a1, uint64_t a2)
{
  v2 = sub_244313138();

  if (v2 >= 0x1A)
  {
    return 26;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_2442F3274()
{
  result = qword_27EDDF6B0;
  if (!qword_27EDDF6B0)
  {
    sub_2442C745C(&qword_27EDDF458, &qword_2443174C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF6B0);
  }

  return result;
}

unint64_t sub_2442F32F0()
{
  result = qword_27EDDF6B8;
  if (!qword_27EDDF6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF6B8);
  }

  return result;
}

void sub_2442F3344(uint64_t result, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 != 0xFF)
  {
    sub_2442F3358(result, a2, a3, a4);
  }
}

void sub_2442F3358(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 < 2u)
  {

LABEL_4:

    return;
  }

  if (a4 == 2)
  {

    goto LABEL_4;
  }
}

void sub_2442F33BC(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 < 2u)
  {

LABEL_4:

    return;
  }

  if (a4 == 2)
  {

    goto LABEL_4;
  }
}

uint64_t sub_2442F3420(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_244313108() & 1;
  }
}

unint64_t sub_2442F3478()
{
  result = qword_27EDDF6D0;
  if (!qword_27EDDF6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF6D0);
  }

  return result;
}

uint64_t sub_2442F34CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2442F3514()
{
  result = qword_27EDDF6E0;
  if (!qword_27EDDF6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF6E0);
  }

  return result;
}

void sub_2442F3568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2 != 1)
  {
  }
}

uint64_t sub_2442F35BC(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_2442C745C(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2442F3638()
{
  result = qword_27EDDF6F8;
  if (!qword_27EDDF6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF6F8);
  }

  return result;
}

unint64_t sub_2442F368C()
{
  result = qword_27EDDF708;
  if (!qword_27EDDF708)
  {
    sub_2442C745C(&qword_27EDDF700, &qword_2443181B0);
    sub_2442F34CC(&qword_27EDDF710, type metadata accessor for InternalJSONLDRecipe.Author, &protocol conformance descriptor for InternalJSONLDRecipe.Author);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF708);
  }

  return result;
}

uint64_t sub_2442F3760(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2442F3798(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_2442C6564(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2442F3800(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_2442F3868()
{
  result = qword_27EDDF730;
  if (!qword_27EDDF730)
  {
    sub_2442C745C(&qword_27EDDF728, &qword_2443181C8);
    sub_2442F34CC(&qword_27EDDF720, type metadata accessor for ImageObject, &unk_2443181F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF730);
  }

  return result;
}

uint64_t sub_2442F391C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2442C6564(&qword_27EDDF370, &qword_244317198);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2442F398C()
{
  result = qword_27EDDF740;
  if (!qword_27EDDF740)
  {
    sub_2442C745C(&qword_27EDDF480, &qword_2443174F0);
    sub_2442F34CC(&qword_27EDDF4C8, MEMORY[0x277CC9260], MEMORY[0x277CC9280]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF740);
  }

  return result;
}

uint64_t sub_2442F3A40(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_2442C6564(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2442F3AB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2442C6564(&qword_27EDDF370, &qword_244317198);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2442F3B40(uint64_t a1, uint64_t a2)
{
  v4 = sub_2442C6564(&qword_27EDDF370, &qword_244317198);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_2442F3BBC(uint64_t a1)
{
  sub_2442F2314(319, &qword_27EDDF558, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

__n128 sub_2442F3C58(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_2442F3C6C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
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

uint64_t sub_2442F3CC8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_2442F3D38(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D695470657270 && a2 == 0xE800000000000000;
  if (v4 || (sub_244313108() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656D69546B6F6F63 && a2 == 0xE800000000000000 || (sub_244313108() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D69546C61746F74 && a2 == 0xE900000000000065)
  {

    return 2;
  }

  else
  {
    v6 = sub_244313108();

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

uint64_t sub_2442F3E58@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_2442C6564(&qword_27EDDF788, &qword_244318248);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - v7;
  sub_2442C65AC(a1, a1[3]);
  sub_2442F405C();
  sub_244313228();
  if (v2)
  {
    return sub_2442C6908(a1);
  }

  v25 = 0;
  v9 = sub_244312FD8();
  v11 = v10;
  v22 = v9;
  v24 = 1;
  v12 = sub_244312FD8();
  v14 = v13;
  v21 = v12;
  v23 = 2;
  v15 = sub_244312FD8();
  v16 = v8;
  v18 = v17;
  (*(v6 + 8))(v16, v5);
  result = sub_2442C6908(a1);
  v20 = v21;
  *a2 = v22;
  a2[1] = v11;
  a2[2] = v20;
  a2[3] = v14;
  a2[4] = v15;
  a2[5] = v18;
  return result;
}

unint64_t sub_2442F405C()
{
  result = qword_27EDDF790;
  if (!qword_27EDDF790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF790);
  }

  return result;
}

unint64_t sub_2442F40B0()
{
  result = qword_27EDDF7A0;
  if (!qword_27EDDF7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF7A0);
  }

  return result;
}

unint64_t sub_2442F4128()
{
  result = qword_27EDDF7A8;
  if (!qword_27EDDF7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF7A8);
  }

  return result;
}

unint64_t sub_2442F4180()
{
  result = qword_27EDDF7B0;
  if (!qword_27EDDF7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF7B0);
  }

  return result;
}

unint64_t sub_2442F41D8()
{
  result = qword_27EDDF7B8;
  if (!qword_27EDDF7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF7B8);
  }

  return result;
}

unint64_t sub_2442F4230()
{
  result = qword_27EDDF7C0;
  if (!qword_27EDDF7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF7C0);
  }

  return result;
}

unint64_t sub_2442F4288()
{
  result = qword_27EDDF7C8;
  if (!qword_27EDDF7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF7C8);
  }

  return result;
}

unint64_t sub_2442F42E0()
{
  result = qword_27EDDF7D0;
  if (!qword_27EDDF7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF7D0);
  }

  return result;
}

uint64_t sub_2442F44DC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = *a1;
  v8 = *(*a1 + 32);
  if (v8 > 3221225471)
  {
    sub_2442DDB84();
    swift_allocError();
    *v15 = 2;
    *(v15 + 8) = 0u;
    *(v15 + 24) = 0u;
    *(v15 + 40) = 0u;
    *(v15 + 56) = 0;
    *(v15 + 64) = 7;
    return swift_willThrow();
  }

  v10 = a1[1];
  v11 = a1[2];
  LOBYTE(v31) = 1;
  *(&v31 + 1) = v8;
  LODWORD(v32) = 0;
  *(&v32 + 1) = 0;
  *&v33 = 0;
  *(&v33 + 1) = v7;
  *v34 = v10;
  *&v34[8] = v11;
  *&v34[16] = a4;
  *&v34[24] = a5;
  v34[28] = BYTE4(a5) & 1;
  if (a3)
  {

    sub_2442E13BC(a2, a3);
    if (v6)
    {
LABEL_4:
      v29 = v33;
      v30[0] = *v34;
      *(v30 + 13) = *&v34[13];
      v27 = v31;
      v28 = v32;
      return sub_2442DE954(&v27);
    }
  }

  else
  {
  }

  if ((*(v7 + 24) & 3) != 0)
  {
    *&v27 = MEMORY[0x277D84CC0];
    sub_2442C6564(&qword_27EDDF268, qword_244316998);
    v16 = sub_244312CD8();
    v18 = v17;
    sub_2442DDB84();
    swift_allocError();
    *v19 = 0;
    *(v19 + 8) = v16;
    *(v19 + 16) = v18;
    v20 = v29;
    v21 = v28;
    *(v19 + 24) = v27;
    *(v19 + 40) = v21;
    *(v19 + 56) = v20;
    *(v19 + 64) = 0;
    swift_willThrow();
    goto LABEL_4;
  }

  Verifier.rangeInBuffer(position:size:)(0, 4);
  if (v22)
  {
    goto LABEL_4;
  }

  sub_2442F7728(&v31, **(v7 + 24));
  v23 = *(*(v7 + 24) + *(v7 + 32) - v10);
  v29 = v33;
  v30[0] = *v34;
  *(v30 + 13) = *&v34[13];
  v27 = v31;
  v28 = v32;

  result = sub_2442DE954(&v27);
  if (v23 < 0)
  {
    __break(1u);
    goto LABEL_18;
  }

  v24 = *(v7 + 32) - v10;
  if (v24 < 0xFFFFFFFF80000000)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v24 > 0x7FFFFFFF)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v25 = __OFADD__(v23, v24);
  v26 = v23 + v24;
  if (!v25)
  {
    *a6 = v7;
    *(a6 + 8) = v10;
    *(a6 + 16) = v11;
    *(a6 + 24) = v26;
    return result;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t IARFRecipe.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t IARFRecipe.schemaVersion.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t IARFRecipe.title.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t IARFRecipe.description.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t IARFRecipe.prepTime.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  v3 = *(v1 + 72);
  v4 = *(v1 + 80);
  v5 = *(v1 + 88);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v6 = *(v1 + 96);
  *(a1 + 32) = v6;
  return sub_2442C6EFC(v2, v3, v4, v5, v6);
}

uint64_t IARFRecipe.cookTime.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 104);
  v3 = *(v1 + 112);
  v4 = *(v1 + 120);
  v5 = *(v1 + 128);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v6 = *(v1 + 136);
  *(a1 + 32) = v6;
  return sub_2442C6EFC(v2, v3, v4, v5, v6);
}

uint64_t IARFRecipe.totalTime.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 144);
  v3 = *(v1 + 152);
  v4 = *(v1 + 160);
  v5 = *(v1 + 168);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v6 = *(v1 + 176);
  *(a1 + 32) = v6;
  return sub_2442C6EFC(v2, v3, v4, v5, v6);
}

uint64_t IARFRecipe.language.getter()
{
  v1 = *(v0 + 208);

  return v1;
}

uint64_t sub_2442F48DC(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0x7463655370657473;
    v7 = 0x65676175676E616CLL;
    if (a1 != 10)
    {
      v7 = 0xD000000000000014;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0x6D69546C61746F74;
    v9 = 0x6959657069636572;
    if (a1 != 7)
    {
      v9 = 0x6569646572676E69;
    }

    if (a1 != 6)
    {
      v8 = v9;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 25705;
    v2 = 0x7470697263736564;
    v3 = 0x656D695470657270;
    if (a1 != 4)
    {
      v3 = 0x656D69546B6F6F63;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x6556616D65686373;
    if (a1 != 1)
    {
      v4 = 0x656C746974;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_2442F4A84@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2442F87C4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2442F4AB8(uint64_t a1)
{
  v2 = sub_2442F5100();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2442F4AF4(uint64_t a1)
{
  v2 = sub_2442F5100();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IARFRecipe.encode(to:)(void *a1)
{
  v3 = sub_2442C6564(&qword_27EDDF7D8, &qword_244318480);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v30 - v5;
  v7 = *(v1 + 16);
  v55 = *(v1 + 24);
  v56 = v7;
  v8 = *(v1 + 32);
  v53 = *(v1 + 40);
  v54 = v8;
  v9 = *(v1 + 48);
  v51 = *(v1 + 56);
  v52 = v9;
  v10 = *(v1 + 64);
  v12 = *(v1 + 80);
  v11 = *(v1 + 88);
  v47 = *(v1 + 72);
  v48 = v12;
  v49 = v11;
  v50 = v10;
  v63 = *(v1 + 96);
  v13 = *(v1 + 112);
  v42 = *(v1 + 104);
  v43 = v13;
  v14 = *(v1 + 128);
  v44 = *(v1 + 120);
  v45 = v14;
  v46 = *(v1 + 136);
  v15 = *(v1 + 152);
  v37 = *(v1 + 144);
  v38 = v15;
  v16 = *(v1 + 168);
  v39 = *(v1 + 160);
  v40 = v16;
  v41 = *(v1 + 176);
  v17 = *(v1 + 192);
  v36 = *(v1 + 184);
  v35 = v17;
  v18 = *(v1 + 208);
  v34 = *(v1 + 200);
  v32 = v18;
  v19 = *(v1 + 224);
  v33 = *(v1 + 216);
  v31 = v19;
  sub_2442C65AC(a1, a1[3]);
  sub_2442F5100();
  v20 = v3;
  sub_244313238();
  LOBYTE(v58) = 0;
  v21 = v57;
  sub_244313098();
  if (v21)
  {
    v57 = v21;
    return (*(v4 + 8))(v6, v3);
  }

  v22 = v50;
  LOBYTE(v58) = 1;
  sub_244313098();
  LOBYTE(v58) = 2;
  sub_244313098();
  v56 = v4;
  LOBYTE(v58) = 3;
  sub_244313098();
  v57 = 0;
  v58 = v22;
  v59 = v47;
  v60 = v48;
  v61 = v49;
  v62 = v63;
  v64 = 4;
  sub_2442C6EFC(v22, v47, v48, v49, v63);
  sub_2442C73A0();
  v24 = v57;
  sub_244313088();
  v57 = v24;
  if (v24 || (sub_2442C73F4(v58, v59, v60, v61, v62), v58 = v42, v59 = v43, v60 = v44, v61 = v45, v62 = v46, v64 = 5, sub_2442C6EFC(v42, v43, v44, v45, v46), v25 = v57, sub_244313088(), (v57 = v25) != 0) || (sub_2442C73F4(v58, v59, v60, v61, v62), v58 = v37, v59 = v38, v60 = v39, v61 = v40, v62 = v41, v64 = 6, sub_2442C6EFC(v37, v38, v39, v40, v41), v26 = v57, sub_244313088(), (v57 = v26) != 0))
  {
    sub_2442C73F4(v58, v59, v60, v61, v62);
    return (*(v56 + 8))(v6, v20);
  }

  sub_2442C73F4(v58, v59, v60, v61, v62);
  v58 = v36;
  v64 = 7;
  sub_2442C6564(&qword_27EDDF7E8, &qword_244318488);
  sub_2442F5154();
  v27 = v57;
  sub_244313088();
  v57 = v27;
  if (v27)
  {
    return (*(v56 + 8))(v6, v20);
  }

  v58 = v35;
  v64 = 8;
  sub_2442C6564(&qword_27EDDE898, &qword_2443139A8);
  sub_2442F522C();
  v28 = v57;
  sub_2443130C8();
  v57 = v28;
  if (v28)
  {
    return (*(v56 + 8))(v6, v20);
  }

  v58 = v34;
  v64 = 9;
  sub_2442C6564(&qword_27EDDF800, &qword_244318490);
  sub_2442F52B0();
  v29 = v57;
  sub_2443130C8();
  v57 = v29;
  if (v29)
  {
    return (*(v56 + 8))(v6, v20);
  }

  LOBYTE(v58) = 10;
  sub_244313098();
  v57 = 0;
  v58 = v31;
  v64 = 11;
  sub_2442C6564(&qword_27EDDF818, &qword_244318498);
  sub_2442F5388();
  sub_2443130C8();
  return (*(v4 + 8))(v6, v20);
}

unint64_t sub_2442F5100()
{
  result = qword_27EDDF7E0;
  if (!qword_27EDDF7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF7E0);
  }

  return result;
}

unint64_t sub_2442F5154()
{
  result = qword_27EDDF7F0;
  if (!qword_27EDDF7F0)
  {
    sub_2442C745C(&qword_27EDDF7E8, &qword_244318488);
    sub_2442F51D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF7F0);
  }

  return result;
}

unint64_t sub_2442F51D8()
{
  result = qword_27EDDF7F8;
  if (!qword_27EDDF7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF7F8);
  }

  return result;
}

unint64_t sub_2442F522C()
{
  result = qword_27EDDE8A0;
  if (!qword_27EDDE8A0)
  {
    sub_2442C745C(&qword_27EDDE898, &qword_2443139A8);
    sub_2442C74A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDE8A0);
  }

  return result;
}

unint64_t sub_2442F52B0()
{
  result = qword_27EDDF808;
  if (!qword_27EDDF808)
  {
    sub_2442C745C(&qword_27EDDF800, &qword_244318490);
    sub_2442F5334();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF808);
  }

  return result;
}

unint64_t sub_2442F5334()
{
  result = qword_27EDDF810;
  if (!qword_27EDDF810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF810);
  }

  return result;
}

unint64_t sub_2442F5388()
{
  result = qword_27EDDF820;
  if (!qword_27EDDF820)
  {
    sub_2442C745C(&qword_27EDDF818, &qword_244318498);
    sub_2442F540C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF820);
  }

  return result;
}

unint64_t sub_2442F540C()
{
  result = qword_27EDDF828;
  if (!qword_27EDDF828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF828);
  }

  return result;
}

uint64_t IARFRecipe.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_2442C6564(&qword_27EDDF830, &qword_2443184A0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v47 - v7;
  v9 = a1[3];
  v112 = a1;
  sub_2442C65AC(a1, v9);
  sub_2442F5100();
  sub_244313228();
  if (v2)
  {
    return sub_2442C6908(v112);
  }

  v10 = v6;
  LOBYTE(v83) = 0;
  v12 = sub_244313008();
  v66 = v13;
  LOBYTE(v83) = 1;
  v14 = sub_244313008();
  v65 = v15;
  v16 = v14;
  LOBYTE(v83) = 2;
  v54 = sub_244313008();
  v64 = v17;
  LOBYTE(v83) = 3;
  v18 = sub_244313008();
  v67 = 0;
  v53 = v18;
  v63 = v19;
  LOBYTE(v68) = 4;
  v57 = sub_2442C7938();
  v20 = v67;
  sub_244312FF8();
  if (v20)
  {
    v67 = v20;
    (*(v10 + 8))(v8, v5);
    v21 = 0;
    v22 = 0;
    v23 = 0;
LABEL_8:
    sub_2442C6908(v112);

    if (v21)
    {
      result = sub_2442C73F4(v61, *(&v61 + 1), v62, *(&v62 + 1), v60);
      if (v22)
      {
        goto LABEL_14;
      }
    }

    else if (v22)
    {
LABEL_14:
      result = sub_2442C73F4(*v58, *&v58[8], *&v58[16], *&v58[24], v59);
      if ((v23 & 1) == 0)
      {
        return result;
      }

      return sub_2442C73F4(v55, *(&v55 + 1), v56, *(&v56 + 1), v57);
    }

    if (!v23)
    {
      return result;
    }

    return sub_2442C73F4(v55, *(&v55 + 1), v56, *(&v56 + 1), v57);
  }

  v61 = v83;
  v62 = v84;
  v60 = v85;
  LOBYTE(v68) = 5;
  sub_244312FF8();
  *v58 = v83;
  *&v58[16] = v84;
  v59 = v85;
  LOBYTE(v68) = 6;
  sub_244312FF8();
  v67 = 0;
  v55 = v83;
  v56 = v84;
  LODWORD(v57) = v85;
  sub_2442C6564(&qword_27EDDF7E8, &qword_244318488);
  LOBYTE(v68) = 7;
  sub_2442F5D8C();
  v24 = v67;
  sub_244312FF8();
  v67 = v24;
  if (v24)
  {
    (*(v10 + 8))(v8, v5);
    v21 = 1;
    v22 = 1;
    v23 = 1;
    goto LABEL_8;
  }

  v52 = v83;
  sub_2442C6564(&qword_27EDDE898, &qword_2443139A8);
  LOBYTE(v68) = 8;
  sub_2442F5E64();
  v25 = v67;
  sub_244313038();
  v26 = v25;
  if (v25)
  {
    (*(v10 + 8))(v8, v5);
    v27 = 0;
    v28 = 0;
    v67 = v25;
  }

  else
  {
    v51 = v83;
    sub_2442C6564(&qword_27EDDF800, &qword_244318490);
    LOBYTE(v68) = 9;
    sub_2442F5EE8();
    sub_244313038();
    v67 = 0;
    v50 = v83;
    LOBYTE(v83) = 10;
    *&v49 = sub_244313008();
    *(&v49 + 1) = v29;
    v67 = 0;
    sub_2442C6564(&qword_27EDDF818, &qword_244318498);
    v107 = 11;
    sub_2442F5FC0();
    v30 = v67;
    sub_244313038();
    v67 = v30;
    if (!v30)
    {
      (*(v10 + 8))(v8, v5);
      v31 = v108;
      v32 = v66;
      *&v68 = v12;
      *(&v68 + 1) = v66;
      *&v69 = v16;
      *(&v69 + 1) = v65;
      v33 = v54;
      v34 = v63;
      v35 = v64;
      *&v70 = v54;
      *(&v70 + 1) = v64;
      *&v71 = v53;
      *(&v71 + 1) = v63;
      v72 = v61;
      v73 = v62;
      v36 = v60;
      LOBYTE(v74) = v60;
      *(&v74 + 1) = *v58;
      v75 = *&v58[8];
      *&v76 = *&v58[24];
      BYTE8(v76) = v59;
      v77 = v55;
      v78 = v56;
      LOBYTE(v79) = v57;
      *(&v79 + 1) = v52;
      *&v80 = v51;
      *(&v80 + 1) = v50;
      v81 = v49;
      v82 = v108;
      v48 = v108;
      v37 = v55;
      *(a2 + 128) = v76;
      *(a2 + 144) = v37;
      v38 = v78;
      v39 = v79;
      v40 = v80;
      v41 = v81;
      *(a2 + 224) = v31;
      *(a2 + 192) = v40;
      *(a2 + 208) = v41;
      *(a2 + 160) = v38;
      *(a2 + 176) = v39;
      v42 = v69;
      *a2 = v68;
      *(a2 + 16) = v42;
      v43 = v70;
      v44 = v71;
      v45 = v75;
      *(a2 + 96) = v74;
      *(a2 + 112) = v45;
      v46 = v73;
      *(a2 + 64) = v72;
      *(a2 + 80) = v46;
      *(a2 + 32) = v43;
      *(a2 + 48) = v44;
      sub_2442F6098(&v68, &v83);
      sub_2442C6908(v112);
      *&v83 = v12;
      *(&v83 + 1) = v32;
      *&v84 = v16;
      *(&v84 + 1) = v65;
      v85 = v33;
      v86 = v35;
      v87 = v53;
      v88 = v34;
      v89 = v61;
      v90 = v62;
      v91 = v36;
      *v92 = v111[0];
      *&v92[3] = *(v111 + 3);
      v93 = *v58;
      v94 = *&v58[8];
      v95 = *&v58[24];
      v96 = v59;
      *&v97[3] = *&v110[3];
      *v97 = *v110;
      v98 = v55;
      v99 = v56;
      v100 = v57;
      *&v101[3] = *&v109[3];
      *v101 = *v109;
      v102 = v52;
      v103 = v51;
      v104 = v50;
      v105 = v49;
      v106 = v48;
      return sub_2442F60D0(&v83);
    }

    (*(v10 + 8))(v8, v5);
    v27 = 1;
    v28 = 1;
  }

  sub_2442C6908(v112);

  sub_2442C73F4(v61, *(&v61 + 1), v62, *(&v62 + 1), v60);
  sub_2442C73F4(*v58, *&v58[8], *&v58[16], *&v58[24], v59);
  sub_2442C73F4(v55, *(&v55 + 1), v56, *(&v56 + 1), v57);

  if (v26)
  {
    if (v27)
    {
      goto LABEL_22;
    }
  }

  else
  {

    if (v27)
    {
LABEL_22:

      if (v28)
      {
      }

      return result;
    }
  }

  if (v28)
  {
  }

  return result;
}

unint64_t sub_2442F5D8C()
{
  result = qword_27EDDF838;
  if (!qword_27EDDF838)
  {
    sub_2442C745C(&qword_27EDDF7E8, &qword_244318488);
    sub_2442F5E10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF838);
  }

  return result;
}

unint64_t sub_2442F5E10()
{
  result = qword_27EDDF840;
  if (!qword_27EDDF840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF840);
  }

  return result;
}

unint64_t sub_2442F5E64()
{
  result = qword_27EDDE8D8;
  if (!qword_27EDDE8D8)
  {
    sub_2442C745C(&qword_27EDDE898, &qword_2443139A8);
    sub_2442C7A04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDE8D8);
  }

  return result;
}

unint64_t sub_2442F5EE8()
{
  result = qword_27EDDF848;
  if (!qword_27EDDF848)
  {
    sub_2442C745C(&qword_27EDDF800, &qword_244318490);
    sub_2442F5F6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF848);
  }

  return result;
}

unint64_t sub_2442F5F6C()
{
  result = qword_27EDDF850;
  if (!qword_27EDDF850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF850);
  }

  return result;
}

unint64_t sub_2442F5FC0()
{
  result = qword_27EDDF858;
  if (!qword_27EDDF858)
  {
    sub_2442C745C(&qword_27EDDF818, &qword_244318498);
    sub_2442F6044();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF858);
  }

  return result;
}

unint64_t sub_2442F6044()
{
  result = qword_27EDDF860;
  if (!qword_27EDDF860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF860);
  }

  return result;
}

double static IARFRecipe.exampleChocolateChipCookies.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_2443130D8();
  MEMORY[0x245D5E950](v2);

  MEMORY[0x245D5E950](77, 0xE100000000000000);
  v3 = sub_2443130D8();
  MEMORY[0x245D5E950](v3);

  MEMORY[0x245D5E950](77, 0xE100000000000000);
  v4 = sub_2443130D8();
  MEMORY[0x245D5E950](v4);

  MEMORY[0x245D5E950](77, 0xE100000000000000);
  v5 = sub_2443130D8();
  MEMORY[0x245D5E950](v5);

  MEMORY[0x245D5E950](77, 0xE100000000000000);
  sub_2442C6564(&qword_27EDDEFE8, &unk_244316460);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_244317120;
  sub_2442E2620(v15 + 32);
  sub_2442E266C(v15 + 112);
  sub_2442C6564(&qword_27EDDE928, &qword_244313BF0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_244317130;
  sub_244300090(v6 + 32);
  sub_2442C6564(&qword_27EDDE938, &unk_244316490);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_244313970;
  *(v7 + 32) = 0;
  *(v7 + 40) = 0;
  *(v7 + 48) = 0;
  *(v7 + 56) = 4;
  *(v6 + 80) = 1953259891;
  *(v6 + 88) = 0xE400000000000000;
  *(v6 + 96) = 1953259891;
  *(v6 + 104) = 0xE400000000000000;
  *(v6 + 112) = 0;
  *(v6 + 120) = v7;
  sub_244300188((v6 + 128));
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_244313970;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0;
  *(v8 + 48) = 0;
  *(v8 + 56) = 4;
  *(v6 + 176) = 1953259891;
  *(v6 + 184) = 0xE400000000000000;
  *(v6 + 192) = 1953259891;
  *(v6 + 200) = 0xE400000000000000;
  *(v6 + 208) = 0;
  *(v6 + 216) = v8;
  sub_2442C6564(&qword_27EDDEFF0, &qword_244316470);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_244313970;
  v10 = sub_2443130D8();
  MEMORY[0x245D5E950](v10);

  MEMORY[0x245D5E950](77, 0xE100000000000000);
  v11 = sub_2443130D8();
  MEMORY[0x245D5E950](v11);

  MEMORY[0x245D5E950](77, 0xE100000000000000);
  sub_2442C6564(&qword_27EDDF000, &qword_244316480);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_244317120;
  sub_2442C7E1C(v12 + 32);
  sub_2442C7F88(v12 + 88);
  result = 1.51227698e20;
  *(v9 + 32) = xmmword_244318470;
  *(v9 + 48) = 21584;
  *(v9 + 56) = 0xE200000000000000;
  *(v9 + 64) = 21584;
  *(v9 + 72) = 0xE200000000000000;
  *(v9 + 80) = 1;
  *(v9 + 88) = v12;
  *(v9 + 96) = 0;
  *a1 = 0x7365696B6F6F63;
  *(a1 + 8) = 0xE700000000000000;
  *(a1 + 16) = 49;
  *(a1 + 24) = 0xE100000000000000;
  *(a1 + 32) = 0xD00000000000001CLL;
  *(a1 + 40) = 0x800000024431C480;
  *(a1 + 48) = 0xD00000000000017ALL;
  *(a1 + 56) = 0x800000024431C4A0;
  *(a1 + 64) = 21584;
  *(a1 + 72) = 0xE200000000000000;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 21584;
  *(a1 + 112) = 0xE200000000000000;
  *(a1 + 120) = 21584;
  *(a1 + 128) = 0xE200000000000000;
  *(a1 + 136) = 1;
  *(a1 + 144) = 21584;
  *(a1 + 152) = 0xE200000000000000;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = v15;
  *(a1 + 192) = v6;
  *(a1 + 200) = v9;
  *(a1 + 208) = 28261;
  v14 = MEMORY[0x277D84F90];
  *(a1 + 216) = 0xE200000000000000;
  *(a1 + 224) = v14;
  return result;
}

__n128 IARFRecipe.init(data:)@<Q0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_2442D5D94(a1, a2);
  v24[0] = _s11CookingData10ByteBufferV4dataAC10Foundation0B0V_tcfC_0(a1, a2);
  v24[1] = v7;
  v24[2] = v8;
  sub_2442F44DC(v24, 0, 0, 0xF424080000000, 0xFFFFFFFFLL, &v21);
  if (v3)
  {

    sub_2442D5DE8(a1, a2);
  }

  else
  {
    v16 = v21;
    v17 = v22;
    v18 = v23;
    sub_2442F66B8(&v16, v19);
    sub_2442D5DE8(a1, a2);

    v10 = v19[13];
    *(a3 + 192) = v19[12];
    *(a3 + 208) = v10;
    *(a3 + 224) = v20;
    v11 = v19[9];
    *(a3 + 128) = v19[8];
    *(a3 + 144) = v11;
    v12 = v19[11];
    *(a3 + 160) = v19[10];
    *(a3 + 176) = v12;
    v13 = v19[5];
    *(a3 + 64) = v19[4];
    *(a3 + 80) = v13;
    v14 = v19[7];
    *(a3 + 96) = v19[6];
    *(a3 + 112) = v14;
    v15 = v19[1];
    *a3 = v19[0];
    *(a3 + 16) = v15;
    result = v19[3];
    *(a3 + 32) = v19[2];
    *(a3 + 48) = result;
  }

  return result;
}

void sub_2442F66B8(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = *(a1 + 6);
  v7 = Table.offset(_:)(4);
  v8 = __OFADD__(v7, v6);
  v9 = v7 + v6;
  if (v8)
  {
LABEL_228:
    __break(1u);
LABEL_229:
    __break(1u);
LABEL_230:
    __break(1u);
LABEL_231:
    __break(1u);
    goto LABEL_232;
  }

  v10 = Table.directString(at:)(v9);
  if (!v10.value._object)
  {
LABEL_262:
    __break(1u);
    goto LABEL_263;
  }

  v11 = Table.offset(_:)(6);
  v8 = __OFADD__(v11, v6);
  v12 = v11 + v6;
  if (v8)
  {
    goto LABEL_229;
  }

  v13 = Table.directString(at:)(v12);
  if (!v13.value._object)
  {
LABEL_263:
    __break(1u);
    goto LABEL_264;
  }

  v14 = Table.offset(_:)(8);
  v8 = __OFADD__(v14, v6);
  v15 = v14 + v6;
  if (v8)
  {
    goto LABEL_230;
  }

  v16 = Table.directString(at:)(v15);
  if (!v16.value._object)
  {
LABEL_264:
    __break(1u);
    goto LABEL_265;
  }

  v17 = Table.offset(_:)(10);
  v8 = __OFADD__(v17, v6);
  v18 = v17 + v6;
  if (v8)
  {
    goto LABEL_231;
  }

  v19 = Table.directString(at:)(v18);
  if (!v19.value._object)
  {
LABEL_265:
    __break(1u);
    goto LABEL_266;
  }

  v20 = Table.offset(_:)(12);
  v225 = v5;
  if (!v20)
  {
    goto LABEL_30;
  }

  if (__OFADD__(v20, v6))
  {
LABEL_237:
    __break(1u);
    goto LABEL_238;
  }

  v21 = *(v4 + 24);
  v22 = *(v21 + v20 + v6);
  if (v22 != 2)
  {
    if (v22 == 1)
    {
      v23 = Table.offset(_:)(14);
      if (v23)
      {
        v24 = v23 + v6;
        if (__OFADD__(v23, v6))
        {
LABEL_240:
          __break(1u);
          goto LABEL_241;
        }

        v25 = *(v21 + v24);
        v26 = v24 + v25;
        if (__OFADD__(v24, v25))
        {
LABEL_242:
          __break(1u);
          goto LABEL_243;
        }

        v27 = Table.offset(_:)(4);
        if (v27)
        {
          v28 = v3;
          v29 = v27 + v26;
          if (__OFADD__(v27, v26))
          {
LABEL_255:
            __break(1u);
            goto LABEL_256;
          }

          v30 = v29;
          v3 = v28;
          v5 = v225;
          v31 = Table.directString(at:)(v30);
          countAndFlagsBits = v31.value._countAndFlagsBits;

          object = v31.value._object;
          if (v31.value._object)
          {
            v216 = 0;
            v217 = 0;
            v211 = 0;
            goto LABEL_32;
          }
        }
      }
    }

    goto LABEL_30;
  }

  v32 = Table.offset(_:)(14);
  if (!v32)
  {
LABEL_30:
    countAndFlagsBits = 0;
    object = 0;
    v216 = 0;
    v217 = 0;
    v44 = -1;
    goto LABEL_31;
  }

  v33 = v32 + v6;
  if (__OFADD__(v32, v6))
  {
LABEL_241:
    __break(1u);
    goto LABEL_242;
  }

  v34 = *(v21 + v33);
  v35 = v33 + v34;
  if (__OFADD__(v33, v34))
  {
LABEL_243:
    __break(1u);
    goto LABEL_244;
  }

  v36 = Table.offset(_:)(4);
  v37 = v5;
  v38 = v3;
  v39 = v36 + v35;
  if (__OFADD__(v36, v35))
  {
LABEL_246:
    __break(1u);
    goto LABEL_247;
  }

  v40 = Table.directString(at:)(v39);
  v3 = v38;
  object = v40.value._object;
  if (!v40.value._object)
  {

    countAndFlagsBits = 0;
    object = 0;
    v216 = 0;
    v217 = 0;
    v211 = -1;
    v5 = v37;
    goto LABEL_32;
  }

  countAndFlagsBits = v40.value._countAndFlagsBits;
  v41 = Table.offset(_:)(6);
  v8 = __OFADD__(v41, v35);
  v42 = v41 + v35;
  if (v8)
  {
LABEL_256:
    __break(1u);
    goto LABEL_257;
  }

  v5 = v37;
  v43 = Table.directString(at:)(v42);
  v217 = v43.value._countAndFlagsBits;

  v216 = v43.value._object;
  if (!v43.value._object)
  {

    goto LABEL_30;
  }

  v44 = 1;
LABEL_31:
  v211 = v44;
LABEL_32:
  v45 = Table.offset(_:)(16);
  if (!v45)
  {
    goto LABEL_53;
  }

  if (__OFADD__(v45, v6))
  {
LABEL_238:
    __break(1u);
    goto LABEL_239;
  }

  v46 = *(v4 + 24);
  v47 = *(v46 + v45 + v6);
  if (v47 == 2)
  {
    v57 = Table.offset(_:)(18);
    if (v57)
    {
      v58 = v57 + v6;
      if (__OFADD__(v57, v6))
      {
LABEL_245:
        __break(1u);
        goto LABEL_246;
      }

      v59 = *(v46 + v58);
      v60 = v58 + v59;
      if (__OFADD__(v58, v59))
      {
LABEL_248:
        __break(1u);
        goto LABEL_249;
      }

      v61 = Table.offset(_:)(4);
      v62 = v5;
      v63 = v3;
      v64 = v61 + v60;
      if (__OFADD__(v61, v60))
      {
LABEL_251:
        __break(1u);
        goto LABEL_252;
      }

      v65 = Table.directString(at:)(v64);
      v3 = v63;
      v222 = v65.value._object;
      if (!v65.value._object)
      {

        v219 = 0;
        v222 = 0;
        v214 = 0;
        v215 = 0;
        v210 = -1;
        v5 = v62;
        goto LABEL_55;
      }

      v219 = v65.value._countAndFlagsBits;
      v66 = Table.offset(_:)(6);
      v8 = __OFADD__(v66, v60);
      v67 = v66 + v60;
      if (v8)
      {
LABEL_258:
        __break(1u);
        goto LABEL_259;
      }

      v5 = v62;
      v68 = Table.directString(at:)(v67);
      v215 = v68.value._countAndFlagsBits;

      v214 = v68.value._object;
      if (v68.value._object)
      {
        v69 = 1;
LABEL_54:
        v210 = v69;
        goto LABEL_55;
      }
    }

LABEL_53:
    v219 = 0;
    v222 = 0;
    v214 = 0;
    v215 = 0;
    v69 = -1;
    goto LABEL_54;
  }

  if (v47 != 1)
  {
    goto LABEL_53;
  }

  v48 = Table.offset(_:)(18);
  if (!v48)
  {
    goto LABEL_53;
  }

  v49 = v48 + v6;
  if (__OFADD__(v48, v6))
  {
LABEL_244:
    __break(1u);
    goto LABEL_245;
  }

  v50 = *(v46 + v49);
  v51 = v49 + v50;
  if (__OFADD__(v49, v50))
  {
LABEL_247:
    __break(1u);
    goto LABEL_248;
  }

  v52 = Table.offset(_:)(4);
  if (!v52)
  {
    goto LABEL_53;
  }

  v53 = v3;
  v54 = v52 + v51;
  if (__OFADD__(v52, v51))
  {
LABEL_257:
    __break(1u);
    goto LABEL_258;
  }

  v55 = v54;
  v3 = v53;
  v5 = v225;
  v56 = Table.directString(at:)(v55);
  v219 = v56.value._countAndFlagsBits;

  v222 = v56.value._object;
  if (!v56.value._object)
  {
    goto LABEL_53;
  }

  v214 = 0;
  v215 = 0;
  v210 = 0;
LABEL_55:
  v70 = Table.offset(_:)(20);
  if (!v70)
  {
    goto LABEL_76;
  }

  if (__OFADD__(v70, v6))
  {
LABEL_239:
    __break(1u);
    goto LABEL_240;
  }

  v71 = *(v4 + 24);
  v72 = *(v71 + v70 + v6);
  if (v72 != 2)
  {
    if (v72 == 1)
    {
      v73 = Table.offset(_:)(22);
      if (v73)
      {
        v74 = v73 + v6;
        if (__OFADD__(v73, v6))
        {
LABEL_249:
          __break(1u);
          goto LABEL_250;
        }

        v75 = *(v71 + v74);
        v76 = v74 + v75;
        if (__OFADD__(v74, v75))
        {
LABEL_252:
          __break(1u);
          goto LABEL_253;
        }

        v77 = Table.offset(_:)(4);
        if (v77)
        {
          v78 = v3;
          v79 = v77 + v76;
          if (__OFADD__(v77, v76))
          {
LABEL_259:
            __break(1u);
LABEL_260:
            __break(1u);
LABEL_261:
            __break(1u);
            goto LABEL_262;
          }

          v80 = v79;
          v3 = v78;
          v5 = v225;
          v81 = Table.directString(at:)(v80);
          v218 = v81.value._countAndFlagsBits;

          v221 = v81.value._object;
          if (v81.value._object)
          {
            v212 = 0;
            v213 = 0;
            v209 = 0;
            goto LABEL_78;
          }
        }
      }
    }

    goto LABEL_76;
  }

  v82 = Table.offset(_:)(22);
  if (!v82)
  {
LABEL_76:
    v218 = 0;
    v221 = 0;
    v212 = 0;
    v213 = 0;
    v94 = -1;
    goto LABEL_77;
  }

  v83 = v82 + v6;
  if (__OFADD__(v82, v6))
  {
LABEL_250:
    __break(1u);
    goto LABEL_251;
  }

  v84 = *(v71 + v83);
  v85 = v83 + v84;
  if (__OFADD__(v83, v84))
  {
LABEL_253:
    __break(1u);
    goto LABEL_254;
  }

  v86 = Table.offset(_:)(4);
  v87 = v5;
  v88 = v3;
  v89 = v86 + v85;
  if (__OFADD__(v86, v85))
  {
LABEL_254:
    __break(1u);
    goto LABEL_255;
  }

  v90 = Table.directString(at:)(v89);
  v3 = v88;
  v221 = v90.value._object;
  if (!v90.value._object)
  {

    v218 = 0;
    v221 = 0;
    v212 = 0;
    v213 = 0;
    v209 = -1;
    v5 = v87;
    goto LABEL_78;
  }

  v218 = v90.value._countAndFlagsBits;
  v91 = Table.offset(_:)(6);
  v8 = __OFADD__(v91, v85);
  v92 = v91 + v85;
  if (v8)
  {
    goto LABEL_260;
  }

  v5 = v87;
  v93 = Table.directString(at:)(v92);
  v213 = v93.value._countAndFlagsBits;

  v212 = v93.value._object;
  if (!v93.value._object)
  {

    goto LABEL_76;
  }

  v94 = 1;
LABEL_77:
  v209 = v94;
LABEL_78:
  v239.value._countAndFlagsBits = v4;
  v239.value._object = v3;
  v226 = v3;
  *&v240 = v5;
  DWORD2(v240) = v6;
  v95 = IARFFB_Recipe.recipeYieldCount.getter();
  if (v95 < 0)
  {
LABEL_232:
    __break(1u);
LABEL_233:
    __break(1u);
LABEL_234:
    __break(1u);
LABEL_235:
    __break(1u);
LABEL_236:
    __break(1u);
    goto LABEL_237;
  }

  v96 = v95;
  v208 = a2;
  v229 = v6;
  if (v95)
  {
    v97 = 0;
    v224 = MEMORY[0x277D84F90];
    v98 = -536870912;
    while (1)
    {
      v103 = *(v4 + 24);
      v104 = *(v103 + v6);
      v8 = __OFSUB__(v6, v104);
      v105 = v6 - v104;
      if (v8)
      {
        goto LABEL_192;
      }

      if (*(v103 + v105) >= 0x19u)
      {
        v8 = __OFADD__(v105, 24);
        v106 = v105 + 24;
        if (v8)
        {
          goto LABEL_195;
        }

        v107 = *(v103 + v106);
        if (v107)
        {
          v8 = __OFADD__(v107, v6);
          v108 = v107 + v6;
          if (v8)
          {
            goto LABEL_199;
          }

          v109 = *(v103 + v108);
          v8 = __OFADD__(v108, v109);
          v110 = v108 + v109;
          if (v8)
          {
            goto LABEL_200;
          }

          v8 = __OFADD__(v110, 4);
          v111 = v110 + 4;
          if (v8)
          {
            goto LABEL_201;
          }

          if (v98 >> 30 != 3)
          {
            goto LABEL_202;
          }

          v8 = __OFADD__(v111, v97);
          v112 = v111 + v97;
          if (v8)
          {
            goto LABEL_203;
          }

          v113 = *(v103 + v112);
          v114 = v112 + v113;
          if (__OFADD__(v112, v113))
          {
            goto LABEL_204;
          }

          v115 = *(v103 + v114);
          v8 = __OFSUB__(v114, v115);
          v116 = v114 - v115;
          if (v8)
          {
            goto LABEL_205;
          }

          if (*(v103 + v116) < 5u)
          {
            v118 = 0;
          }

          else
          {
            v8 = __OFADD__(v116, 4);
            v117 = v116 + 4;
            if (v8)
            {
              goto LABEL_224;
            }

            v118 = *(v103 + v117);
          }

          v119 = v118 + v114;
          if (__OFADD__(v118, v114))
          {
            goto LABEL_206;
          }

          v120 = Table.directString(at:)(v119);
          if (!v120.value._object)
          {
            goto LABEL_261;
          }

          v121 = *(v4 + 24);
          v122 = *(v121 + v114);
          v8 = __OFSUB__(v114, v122);
          v123 = v114 - v122;
          if (v8)
          {
            goto LABEL_207;
          }

          if (*(v121 + v123) < 7u)
          {
            goto LABEL_107;
          }

          v8 = __OFADD__(v123, 6);
          v124 = v123 + 6;
          if (v8)
          {
            goto LABEL_225;
          }

          v125 = *(v121 + v124);
          if (v125)
          {
            v8 = __OFADD__(v125, v114);
            v126 = v125 + v114;
            if (v8)
            {
              goto LABEL_226;
            }

            v127 = *(v121 + v126);
            v128 = v126 + v127;
            if (__OFADD__(v126, v127))
            {
              goto LABEL_227;
            }

            v129 = v4;
            v131 = v225;
            v130 = v226;
          }

          else
          {
LABEL_107:
            v129 = 0;
            v130 = 0;
            v131 = 0;
            v128 = 0;
          }

          v234.value._countAndFlagsBits = v129;
          v234.value._object = v130;
          *&v235 = v131;
          DWORD2(v235) = v128;
          sub_2442C6D98(&v234, &v239);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v224 = sub_2442DC660(0, *(v224 + 2) + 1, 1, v224);
          }

          v133 = *(v224 + 2);
          v132 = *(v224 + 3);
          if (v133 >= v132 >> 1)
          {
            v224 = sub_2442DC660((v132 > 1), v133 + 1, 1, v224);
          }

          *(v224 + 2) = v133 + 1;
          v99 = &v224[80 * v133];
          *(v99 + 2) = v120;
          v100 = v239;
          v101 = v240;
          v102 = *v241;
          *(v99 + 89) = *&v241[9];
          *(v99 + 4) = v101;
          *(v99 + 5) = v102;
          *(v99 + 3) = v100;
          v6 = v229;
          v5 = v225;
        }
      }

      ++v98;
      v97 += 4;
      if (!--v96)
      {
        goto LABEL_113;
      }
    }
  }

  v224 = MEMORY[0x277D84F90];
LABEL_113:
  v239.value._countAndFlagsBits = v4;
  v239.value._object = v226;
  *&v240 = v5;
  DWORD2(v240) = v6;
  v134 = IARFFB_Recipe.ingredientsCount.getter();
  if (v134 < 0)
  {
    goto LABEL_233;
  }

  v135 = v134;
  v228 = v4;
  if (v134)
  {
    v136 = 0;
    v137 = MEMORY[0x277D84F90];
    v138 = -536870912;
    while (1)
    {
      v139 = *(v4 + 24);
      v140 = *(v139 + v229);
      v8 = __OFSUB__(v229, v140);
      v141 = v229 - v140;
      if (v8)
      {
        break;
      }

      if (*(v139 + v141) < 0x1Bu)
      {
        goto LABEL_129;
      }

      v8 = __OFADD__(v141, 26);
      v142 = v141 + 26;
      if (v8)
      {
        goto LABEL_196;
      }

      v143 = *(v139 + v142);
      if (v143)
      {
        v8 = __OFADD__(v143, v229);
        v144 = v143 + v229;
        if (v8)
        {
          goto LABEL_208;
        }

        v145 = *(v139 + v144);
        v8 = __OFADD__(v144, v145);
        v146 = v144 + v145;
        if (v8)
        {
          goto LABEL_209;
        }

        v8 = __OFADD__(v146, 4);
        v147 = v146 + 4;
        if (v8)
        {
          goto LABEL_210;
        }

        if (v138 >> 30 != 3)
        {
          goto LABEL_211;
        }

        v8 = __OFADD__(v147, v136);
        v148 = v147 + v136;
        if (v8)
        {
          goto LABEL_212;
        }

        v149 = *(v139 + v148);
        v150 = v148 + v149;
        if (__OFADD__(v148, v149))
        {
          goto LABEL_213;
        }

        v152 = v225;
        v151 = v226;
      }

      else
      {
LABEL_129:
        v4 = 0;
        v151 = 0;
        v152 = 0;
        v150 = 0;
      }

      v234.value._countAndFlagsBits = v4;
      v234.value._object = v151;
      *&v235 = v152;
      DWORD2(v235) = v150;
      sub_244300288(&v234, &v239);
      v154 = v239.value._countAndFlagsBits;
      v153 = v239.value._object;
      v155 = v240;
      v156 = *v241;
      if (v239.value._object)
      {
        v227 = *&v241[8];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v137 = sub_2442DB9A8(0, *(v137 + 2) + 1, 1, v137);
        }

        v158 = *(v137 + 2);
        v157 = *(v137 + 3);
        v159 = v137;
        if (v158 >= v157 >> 1)
        {
          v159 = sub_2442DB9A8((v157 > 1), v158 + 1, 1, v137);
        }

        *(v159 + 2) = v158 + 1;
        v137 = v159;
        v160 = &v159[48 * v158];
        *(v160 + 4) = v154;
        *(v160 + 5) = v153;
        *(v160 + 3) = v155;
        *(v160 + 8) = v156;
        *(v160 + 9) = v227;
      }

      else
      {
        sub_2442F8BA4(v239.value._countAndFlagsBits, 0, v240, *(&v240 + 1), *v241, *&v241[8]);
      }

      ++v138;
      v136 += 4;
      --v135;
      v4 = v228;
      if (!v135)
      {
        goto LABEL_137;
      }
    }

LABEL_193:
    __break(1u);
LABEL_194:
    __break(1u);
LABEL_195:
    __break(1u);
LABEL_196:
    __break(1u);
LABEL_197:
    __break(1u);
LABEL_198:
    __break(1u);
LABEL_199:
    __break(1u);
LABEL_200:
    __break(1u);
LABEL_201:
    __break(1u);
LABEL_202:
    __break(1u);
LABEL_203:
    __break(1u);
LABEL_204:
    __break(1u);
LABEL_205:
    __break(1u);
LABEL_206:
    __break(1u);
LABEL_207:
    __break(1u);
LABEL_208:
    __break(1u);
LABEL_209:
    __break(1u);
LABEL_210:
    __break(1u);
LABEL_211:
    __break(1u);
LABEL_212:
    __break(1u);
LABEL_213:
    __break(1u);
LABEL_214:
    __break(1u);
LABEL_215:
    __break(1u);
LABEL_216:
    __break(1u);
LABEL_217:
    __break(1u);
LABEL_218:
    __break(1u);
LABEL_219:
    __break(1u);
LABEL_220:
    __break(1u);
LABEL_221:
    __break(1u);
LABEL_222:
    __break(1u);
LABEL_223:
    __break(1u);
LABEL_224:
    __break(1u);
LABEL_225:
    __break(1u);
LABEL_226:
    __break(1u);
LABEL_227:
    __break(1u);
    goto LABEL_228;
  }

  v137 = MEMORY[0x277D84F90];
LABEL_137:
  v239.value._countAndFlagsBits = v4;
  v239.value._object = v226;
  *&v240 = v225;
  v161 = v229;
  DWORD2(v240) = v229;
  v162 = IARFFB_Recipe.stepSectionsCount.getter();
  if (v162 < 0)
  {
    goto LABEL_234;
  }

  if (v162)
  {
    v163 = *(v4 + 24);
    v164 = *(v163 + v229);
    v8 = __OFSUB__(v229, v164);
    v165 = v229 - v164;
    if (!v8)
    {
      v166 = v137;
      v167 = 0;
      v168 = v162 - 1;
      v169 = MEMORY[0x277D84F90];
      v170 = -536870912;
      do
      {
        if (*(v163 + v165) < 0x1Du)
        {
          goto LABEL_151;
        }

        v8 = __OFADD__(v165, 28);
        v171 = v165 + 28;
        if (v8)
        {
          goto LABEL_197;
        }

        v172 = *(v163 + v171);
        if (v172)
        {
          v8 = __OFADD__(v172, v229);
          v173 = v172 + v229;
          if (v8)
          {
            goto LABEL_214;
          }

          v174 = *(v163 + v173);
          v8 = __OFADD__(v173, v174);
          v175 = v173 + v174;
          if (v8)
          {
            goto LABEL_215;
          }

          v8 = __OFADD__(v175, 4);
          v176 = v175 + 4;
          if (v8)
          {
            goto LABEL_216;
          }

          if (v170 >> 30 != 3)
          {
            goto LABEL_217;
          }

          v8 = __OFADD__(v176, v167);
          v177 = v176 + v167;
          if (v8)
          {
            goto LABEL_218;
          }

          v178 = *(v163 + v177);
          v179 = v177 + v178;
          if (__OFADD__(v177, v178))
          {
            goto LABEL_219;
          }

          v180 = v4;
          v182 = v225;
          v181 = v226;
        }

        else
        {
LABEL_151:
          v180 = 0;
          v181 = 0;
          v182 = 0;
          v179 = 0;
        }

        v234.value._countAndFlagsBits = v180;
        v234.value._object = v181;
        *&v235 = v182;
        DWORD2(v235) = v179;
        sub_2442FA8C0(&v234, &v239);
        if (*&v241[24])
        {
          v236 = *v241;
          v237 = *&v241[16];
          v238 = v242;
          v234 = v239;
          v235 = v240;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v169 = sub_2442DC538(0, *(v169 + 2) + 1, 1, v169);
          }

          v184 = *(v169 + 2);
          v183 = *(v169 + 3);
          if (v184 >= v183 >> 1)
          {
            v169 = sub_2442DC538((v183 > 1), v184 + 1, 1, v169);
          }

          v233 = v238;
          v231 = v236;
          v232 = v237;
          v185 = v234;
          v230 = v235;
          *(v169 + 2) = v184 + 1;
          v186 = &v169[72 * v184];
          *(v186 + 2) = v185;
          *(v186 + 12) = v233;
          *(v186 + 4) = v231;
          *(v186 + 5) = v232;
          *(v186 + 3) = v230;
          if (!v168)
          {
LABEL_163:
            v137 = v166;
            goto LABEL_165;
          }
        }

        else
        {
          v236 = *v241;
          v237 = *&v241[16];
          v238 = v242;
          v234 = v239;
          v235 = v240;
          sub_2442F8C08(&v234);
          if (!v168)
          {
            goto LABEL_163;
          }
        }

        v163 = *(v4 + 24);
        v187 = *(v163 + v229);
        ++v170;
        v167 += 4;
        --v168;
        v8 = __OFSUB__(v229, v187);
        v165 = v229 - v187;
      }

      while (!v8);
    }

    __break(1u);
LABEL_192:
    __break(1u);
    goto LABEL_193;
  }

  v169 = MEMORY[0x277D84F90];
LABEL_165:
  v188 = Table.offset(_:)(32);
  v8 = __OFADD__(v188, v229);
  v189 = v188 + v229;
  if (v8)
  {
    goto LABEL_235;
  }

  v190 = Table.directString(at:)(v189);
  if (!v190.value._object)
  {
LABEL_266:
    __break(1u);
    return;
  }

  v239.value._countAndFlagsBits = v4;
  v239.value._object = v226;
  *&v240 = v225;
  DWORD2(v240) = v229;
  v191 = IARFFB_Recipe.structuredComponentsCount.getter();
  if (v191 < 0)
  {
    goto LABEL_236;
  }

  v192 = v191;
  if (v191)
  {
    v193 = 0;
    v194 = MEMORY[0x277D84F90];
    while (1)
    {
      v195 = *(v4 + 24);
      v196 = *(v195 + v161);
      v8 = __OFSUB__(v161, v196);
      v197 = v161 - v196;
      if (v8)
      {
        goto LABEL_194;
      }

      if (*(v195 + v197) < 0x1Fu)
      {
        break;
      }

      v8 = __OFADD__(v197, 30);
      v198 = v197 + 30;
      if (v8)
      {
        goto LABEL_198;
      }

      v199 = *(v195 + v198);
      if (!v199)
      {
        break;
      }

      v8 = __OFADD__(v199, v161);
      v200 = v199 + v161;
      if (v8)
      {
        goto LABEL_220;
      }

      v201 = *(v195 + v200);
      v8 = __OFADD__(v200, v201);
      v202 = v200 + v201;
      if (v8)
      {
        goto LABEL_221;
      }

      v8 = __OFADD__(v202, 4);
      v203 = v202 + 4;
      if (v8)
      {
        goto LABEL_222;
      }

      v8 = __OFADD__(v203, v193);
      v204 = v203 + v193;
      if (v8)
      {
        goto LABEL_223;
      }

      v205 = *(v195 + v204);
      if (v205 <= 4)
      {
        goto LABEL_183;
      }

      v4 = v228;
LABEL_171:
      if (v192 == ++v193)
      {

        goto LABEL_190;
      }
    }

    LOBYTE(v205) = 0;
LABEL_183:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v194 = sub_2442DC438(0, *(v194 + 2) + 1, 1, v194);
    }

    v207 = *(v194 + 2);
    v206 = *(v194 + 3);
    if (v207 >= v206 >> 1)
    {
      v194 = sub_2442DC438((v206 > 1), v207 + 1, 1, v194);
    }

    *(v194 + 2) = v207 + 1;
    v194[v207 + 32] = v205;
    v4 = v228;
    v161 = v229;
    goto LABEL_171;
  }

  v194 = MEMORY[0x277D84F90];
LABEL_190:
  *v208 = v10;
  *(v208 + 16) = v13;
  *(v208 + 32) = v16;
  *(v208 + 48) = v19;
  *(v208 + 64) = countAndFlagsBits;
  *(v208 + 72) = object;
  *(v208 + 80) = v217;
  *(v208 + 88) = v216;
  *(v208 + 96) = v211;
  *(v208 + 104) = v219;
  *(v208 + 112) = v222;
  *(v208 + 120) = v215;
  *(v208 + 128) = v214;
  *(v208 + 136) = v210;
  *(v208 + 144) = v218;
  *(v208 + 152) = v221;
  *(v208 + 160) = v213;
  *(v208 + 168) = v212;
  *(v208 + 176) = v209;
  *(v208 + 184) = v224;
  *(v208 + 192) = v137;
  *(v208 + 200) = v169;
  *(v208 + 208) = v190;
  *(v208 + 224) = v194;
}

void sub_2442F7728(uint64_t a1, unint64_t a2)
{
  Verifier.visitTable(at:)(a2, &v108);
  if (!v2)
  {
    sub_244306DC0(4u, 25705, 0xE200000000000000, 1);
    sub_244306DC0(6u, 0x6556616D65686373, 0xED00006E6F697372, 1);
    sub_244306DC0(8u, 0x656C746974, 0xE500000000000000, 1);
    sub_244306DC0(0xAu, 0x7470697263736564, 0xEB000000006E6F69, 1);
    v4 = v109;
    if (v109 <= 12)
    {
      goto LABEL_151;
    }

    v5 = *(&v108 + 1) + 12;
    if (BYTE8(v109) == 1 && ((*(v112 + 24) + v5) & 1) != 0)
    {
      goto LABEL_16;
    }

    Verifier.rangeInBuffer(position:size:)(*(&v108 + 1) + 12, 2);
    if (v6)
    {
      goto LABEL_39;
    }

    v7 = *(v112 + 24);
    v8 = *(v7 + v5);
    v9 = v108 + v8;
    if (*(v7 + v5))
    {
      v10 = v108 + v8;
    }

    else
    {
      v10 = 0;
    }

    if (v4 <= 0xE)
    {
      goto LABEL_34;
    }

    v5 = *(&v108 + 1) + 14;
    if (BYTE8(v109) == 1 && ((v7 + v5) & 1) != 0)
    {
LABEL_16:
      *&v102 = MEMORY[0x277D84C58];
      v11 = &qword_27EDDF260;
      v12 = &unk_24431B160;
LABEL_17:
      sub_2442C6564(v11, v12);
      v13 = sub_244312CD8();
      v15 = v14;
      sub_2442DDB84();
      swift_allocError();
      *v16 = v5;
      *(v16 + 8) = v13;
      *(v16 + 16) = v15;
      v17 = v104;
      v18 = v103;
      *(v16 + 24) = v102;
      *(v16 + 40) = v18;
      *(v16 + 56) = v17;
      *(v16 + 64) = 0;
LABEL_38:
      swift_willThrow();
      goto LABEL_39;
    }

    Verifier.rangeInBuffer(position:size:)(*(&v108 + 1) + 14, 2);
    v3 = v19;
    if (v19)
    {
      goto LABEL_39;
    }

    v114 = v9;
    if (*(*(v112 + 24) + v5))
    {
      v5 = v108 + *(*(v112 + 24) + v5);
      if (v8)
      {
        Verifier.rangeInBuffer(position:size:)(v114, 1);
        v3 = v20;
        if (v20)
        {
          goto LABEL_39;
        }

        v21 = v112;
        v22 = *(v112 + 24);
        v23 = *(v22 + v114);
        if (!*(v22 + v114))
        {
          goto LABEL_53;
        }

        if (v23 == 1)
        {
          if (BYTE8(v109) != 1 || ((v22 + v5) & 3) == 0)
          {
            Verifier.rangeInBuffer(position:size:)(v5, 4);
            if (v31)
            {
              goto LABEL_39;
            }

            v32 = v5 + *(*(v21 + 24) + v5);
            if (v32 < 0)
            {
              v32 = -v32;
            }

            if (v32 >= 0x7FFFFFFFFFFFFFFFLL)
            {
              v33 = 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v33 = v32;
            }

            sub_24431297C(&v109 + 8, v33);
            goto LABEL_52;
          }

          goto LABEL_43;
        }

        if (v23 == 2)
        {
          if (BYTE8(v109) != 1 || ((v22 + v5) & 3) == 0)
          {
            Verifier.rangeInBuffer(position:size:)(v5, 4);
            if (!v24)
            {
              v25 = v5 + *(*(v21 + 24) + v5);
              if (v25 < 0)
              {
                v25 = -v25;
              }

              if (v25 >= 0x7FFFFFFFFFFFFFFFLL)
              {
                v26 = 0x7FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v26 = v25;
              }

              sub_2443088F4(&v109 + 8, v26);
LABEL_52:
              v3 = 0;
LABEL_53:
              if (v4 < 0x11)
              {
                goto LABEL_151;
              }

              v34 = *(&v108 + 1) + 16;
              if (BYTE8(v109) == 1 && ((*(v112 + 24) + v34) & 1) != 0)
              {
                goto LABEL_63;
              }

              Verifier.rangeInBuffer(position:size:)(*(&v108 + 1) + 16, 2);
              v114 = v35;
              if (v35)
              {
                goto LABEL_39;
              }

              v36 = *(v112 + 24);
              v37 = *(v36 + v34);
              v3 = v108 + v37;
              if (*(v36 + v34))
              {
                v38 = v108 + v37;
              }

              else
              {
                v38 = 0;
              }

              if (v4 <= 0x12)
              {
                goto LABEL_81;
              }

              v34 = *(&v108 + 1) + 18;
              if (BYTE8(v109) == 1 && ((v36 + v34) & 1) != 0)
              {
                goto LABEL_63;
              }

              Verifier.rangeInBuffer(position:size:)(*(&v108 + 1) + 18, 2);
              v114 = v48;
              if (v48)
              {
                goto LABEL_39;
              }

              if (*(*(v112 + 24) + v34))
              {
                v34 = v108 + *(*(v112 + 24) + v34);
                if (v37)
                {
                  Verifier.rangeInBuffer(position:size:)(v3, 1);
                  v114 = v49;
                  if (v49)
                  {
                    goto LABEL_39;
                  }

                  v50 = v112;
                  v51 = *(v112 + 24);
                  v52 = *(v51 + v3);
                  if (*(v51 + v3))
                  {
                    if (v52 == 1)
                    {
                      if (BYTE8(v109) == 1 && ((v51 + v34) & 3) != 0)
                      {
                        goto LABEL_91;
                      }

                      Verifier.rangeInBuffer(position:size:)(v34, 4);
                      v114 = v63;
                      if (v63)
                      {
                        goto LABEL_39;
                      }

                      v64 = v34 + *(*(v50 + 24) + v34);
                      if (v64 < 0)
                      {
                        v64 = -v64;
                      }

                      if (v64 >= 0x7FFFFFFFFFFFFFFFLL)
                      {
                        v65 = 0x7FFFFFFFFFFFFFFFLL;
                      }

                      else
                      {
                        v65 = v64;
                      }

                      v56 = v114;
                      sub_24431297C(&v109 + 8, v65);
                    }

                    else
                    {
                      if (v52 != 2)
                      {
LABEL_129:
                        sub_2442DDB84();
                        v44 = swift_allocError();
                        *v59 = 5;
                        *(v59 + 8) = 0u;
                        *(v59 + 24) = 0u;
                        *(v59 + 40) = 0u;
                        *(v59 + 56) = 0;
                        v62 = 7;
                        goto LABEL_85;
                      }

                      if (BYTE8(v109) == 1 && ((v51 + v34) & 3) != 0)
                      {
                        goto LABEL_91;
                      }

                      Verifier.rangeInBuffer(position:size:)(v34, 4);
                      v114 = v53;
                      if (v53)
                      {
                        goto LABEL_39;
                      }

                      v54 = v34 + *(*(v50 + 24) + v34);
                      if (v54 < 0)
                      {
                        v54 = -v54;
                      }

                      if (v54 >= 0x7FFFFFFFFFFFFFFFLL)
                      {
                        v55 = 0x7FFFFFFFFFFFFFFFLL;
                      }

                      else
                      {
                        v55 = v54;
                      }

                      v56 = v114;
                      sub_2443088F4(&v109 + 8, v55);
                    }

                    v114 = v56;
                  }

LABEL_100:
                  if (v4 < 0x15)
                  {
                    goto LABEL_151;
                  }

                  v34 = *(&v108 + 1) + 20;
                  if (BYTE8(v109) != 1 || ((*(v112 + 24) + v34) & 1) == 0)
                  {
                    Verifier.rangeInBuffer(position:size:)(*(&v108 + 1) + 20, 2);
                    v114 = v66;
                    if (v66)
                    {
                      goto LABEL_39;
                    }

                    v67 = *(v112 + 24);
                    v68 = *(v67 + v34);
                    v3 = v108 + v68;
                    if (*(v67 + v34))
                    {
                      v69 = v108 + v68;
                    }

                    else
                    {
                      v69 = 0;
                    }

                    if (v4 <= 0x16)
                    {
                      goto LABEL_126;
                    }

                    v34 = *(&v108 + 1) + 22;
                    if (BYTE8(v109) != 1 || ((v67 + v34) & 1) == 0)
                    {
                      Verifier.rangeInBuffer(position:size:)(*(&v108 + 1) + 22, 2);
                      v114 = v70;
                      if (v70)
                      {
                        goto LABEL_39;
                      }

                      if (*(*(v112 + 24) + v34))
                      {
                        v34 = v108 + *(*(v112 + 24) + v34);
                        if (v68)
                        {
                          Verifier.rangeInBuffer(position:size:)(v3, 1);
                          v114 = v71;
                          if (v71)
                          {
                            goto LABEL_39;
                          }

                          v72 = v112;
                          v73 = *(v112 + 24);
                          v74 = *(v73 + v3);
                          if (!*(v73 + v3))
                          {
LABEL_141:
                            if (v4 >= 0x19)
                            {
                              v3 = *(&v108 + 1) + 24;
                              v84 = BYTE8(v109);
                              if (BYTE8(v109) == 1 && ((*(v112 + 24) + v3) & 1) != 0)
                              {
LABEL_160:
                                *&v102 = MEMORY[0x277D84C58];
                                v90 = &qword_27EDDF260;
                                v91 = &unk_24431B160;
                                goto LABEL_161;
                              }

                              Verifier.rangeInBuffer(position:size:)(*(&v108 + 1) + 24, 2);
                              if (v85)
                              {
                                goto LABEL_3;
                              }

                              v86 = v112;
                              v87 = *(v112 + 24);
                              v88 = *(v87 + v3);
                              if (*(v87 + v3))
                              {
                                v3 = v108 + v88;
                                if (((v87 + v108 + v88) & 3) != 0)
                                {
                                  v89 = v84;
                                }

                                else
                                {
                                  v89 = 0;
                                }

                                if (v89 == 1)
                                {
                                  *&v102 = MEMORY[0x277D84CC0];
                                  v90 = &qword_27EDDF268;
                                  v91 = qword_244316998;
LABEL_161:
                                  sub_2442C6564(v90, v91);
                                  v93 = sub_244312CD8();
                                  v95 = v94;
                                  sub_2442DDB84();
                                  swift_allocError();
                                  *v96 = v3;
                                  *(v96 + 8) = v93;
                                  *(v96 + 16) = v95;
                                  v97 = v104;
                                  v98 = v103;
                                  *(v96 + 24) = v102;
                                  *(v96 + 40) = v98;
                                  *(v96 + 56) = v97;
                                  *(v96 + 64) = 0;
                                  swift_willThrow();
LABEL_3:
                                  v106 = v112;
                                  *v107 = v113[0];
                                  *&v107[13] = *(v113 + 13);
                                  v102 = v108;
                                  v103 = v109;
                                  v104 = v110;
                                  v105 = v111;
LABEL_4:
                                  sub_2442F8C70(&v102);
                                  return;
                                }

                                Verifier.rangeInBuffer(position:size:)(v108 + v88, 4);
                                if (v99)
                                {
                                  goto LABEL_3;
                                }

                                v100 = v3 + *(*(v86 + 24) + v3);
                                if (v100 < 0)
                                {
                                  v100 = -v100;
                                }

                                if (v100 >= 0x7FFFFFFFFFFFFFFFLL)
                                {
                                  v101 = 0x7FFFFFFFFFFFFFFFLL;
                                }

                                else
                                {
                                  v101 = v100;
                                }

                                sub_244307704(&v109 + 8, v101);
                              }
                            }

LABEL_151:
                            sub_244307058(26, 0x6569646572676E69, 0xEB0000000073746ELL, 1);
                            sub_244307084(28, 0x7463655370657473, 0xEC000000736E6F69, 1);
                            if (v4 > 30)
                            {
                              v3 = *(&v108 + 1) + 30;
                              sub_2442E0E9C(*(&v108 + 1) + 30);
                              Verifier.rangeInBuffer(position:size:)(v3, 2);
                              if (v92)
                              {
                                goto LABEL_3;
                              }

                              if (*(*(v112 + 24) + v3))
                              {
                                sub_244306980(&v109 + 8, v108 + *(*(v112 + 24) + v3));
                              }
                            }

                            sub_244306DC0(0x20u, 0x65676175676E616CLL, 0xE800000000000000, 1);
                            if (!__OFSUB__(*(&v111 + 1), 1))
                            {
                              --*(&v111 + 1);
                              v106 = v112;
                              *v107 = v113[0];
                              *&v107[13] = *(v113 + 13);
                              v102 = v108;
                              v103 = v109;
                              v104 = v110;
                              v105 = v111;
                              goto LABEL_4;
                            }

                            __break(1u);
                            goto LABEL_160;
                          }

                          if (v74 == 1)
                          {
                            if (BYTE8(v109) != 1 || ((v73 + v34) & 3) == 0)
                            {
                              Verifier.rangeInBuffer(position:size:)(v34, 4);
                              v114 = v81;
                              if (v81)
                              {
                                goto LABEL_39;
                              }

                              v82 = v34 + *(*(v72 + 24) + v34);
                              if (v82 < 0)
                              {
                                v82 = -v82;
                              }

                              if (v82 >= 0x7FFFFFFFFFFFFFFFLL)
                              {
                                v83 = 0x7FFFFFFFFFFFFFFFLL;
                              }

                              else
                              {
                                v83 = v82;
                              }

                              v78 = v114;
                              sub_24431297C(&v109 + 8, v83);
LABEL_140:
                              v114 = v78;
                              goto LABEL_141;
                            }

LABEL_91:
                            *&v102 = MEMORY[0x277D84CC0];
                            v39 = &qword_27EDDF268;
                            v40 = qword_244316998;
                            goto LABEL_64;
                          }

                          if (v74 == 2)
                          {
                            if (BYTE8(v109) != 1 || ((v73 + v34) & 3) == 0)
                            {
                              Verifier.rangeInBuffer(position:size:)(v34, 4);
                              v114 = v75;
                              if (v75)
                              {
                                goto LABEL_39;
                              }

                              v76 = v34 + *(*(v72 + 24) + v34);
                              if (v76 < 0)
                              {
                                v76 = -v76;
                              }

                              if (v76 >= 0x7FFFFFFFFFFFFFFFLL)
                              {
                                v77 = 0x7FFFFFFFFFFFFFFFLL;
                              }

                              else
                              {
                                v77 = v76;
                              }

                              v78 = v114;
                              sub_2443088F4(&v109 + 8, v77);
                              goto LABEL_140;
                            }

                            goto LABEL_91;
                          }

                          goto LABEL_129;
                        }

                        v80 = 0;
                        v79 = 1;
                        goto LABEL_128;
                      }

LABEL_126:
                      if (!v68)
                      {
                        goto LABEL_141;
                      }

                      v34 = 0;
                      v79 = 0;
                      v80 = 1;
LABEL_128:
                      LOBYTE(v102) = v79;
                      sub_2442DDB84();
                      v44 = swift_allocError();
                      *v59 = v69;
                      *(v59 + 8) = v79;
                      v60 = 0x6D69546C61746F74;
                      strcpy((v59 + 16), "totalTimeType");
                      *(v59 + 30) = -4864;
                      *(v59 + 32) = v34;
                      *(v59 + 40) = v80;
                      v61 = 0xE900000000000065;
                      goto LABEL_84;
                    }
                  }

LABEL_63:
                  *&v102 = MEMORY[0x277D84C58];
                  v39 = &qword_27EDDF260;
                  v40 = &unk_24431B160;
LABEL_64:
                  sub_2442C6564(v39, v40);
                  v41 = sub_244312CD8();
                  v43 = v42;
                  sub_2442DDB84();
                  v44 = swift_allocError();
                  *v45 = v34;
                  *(v45 + 8) = v41;
                  *(v45 + 16) = v43;
                  v46 = v104;
                  v47 = v103;
                  *(v45 + 24) = v102;
                  *(v45 + 40) = v47;
                  *(v45 + 56) = v46;
                  *(v45 + 64) = 0;
LABEL_86:
                  v114 = v44;
                  swift_willThrow();
                  goto LABEL_39;
                }

                v58 = 0;
                v57 = 1;
              }

              else
              {
LABEL_81:
                if (!v37)
                {
                  goto LABEL_100;
                }

                v34 = 0;
                v57 = 0;
                v58 = 1;
              }

              LOBYTE(v102) = v57;
              sub_2442DDB84();
              v44 = swift_allocError();
              *v59 = v38;
              *(v59 + 8) = v57;
              v60 = 0x656D69546B6F6F63;
              strcpy((v59 + 16), "cookTimeType");
              *(v59 + 29) = 0;
              *(v59 + 30) = -5120;
              *(v59 + 32) = v34;
              *(v59 + 40) = v58;
              v61 = 0xE800000000000000;
LABEL_84:
              *(v59 + 48) = v60;
              *(v59 + 56) = v61;
              v62 = 5;
LABEL_85:
              *(v59 + 64) = v62;
              goto LABEL_86;
            }

LABEL_39:
            v106 = v112;
            *v107 = v113[0];
            *&v107[13] = *(v113 + 13);
            v102 = v108;
            v103 = v109;
            v104 = v110;
            v105 = v111;
            sub_2442F8C70(&v102);
            return;
          }

LABEL_43:
          *&v102 = MEMORY[0x277D84CC0];
          v11 = &qword_27EDDF268;
          v12 = qword_244316998;
          goto LABEL_17;
        }

        sub_2442DDB84();
        swift_allocError();
        *v29 = 5;
        *(v29 + 8) = 0u;
        *(v29 + 24) = 0u;
        *(v29 + 40) = 0u;
        *(v29 + 56) = 0;
        v30 = 7;
LABEL_37:
        *(v29 + 64) = v30;
        goto LABEL_38;
      }

      v28 = 0;
      v27 = 1;
    }

    else
    {
LABEL_34:
      if (!v8)
      {
        goto LABEL_53;
      }

      v5 = 0;
      v27 = 0;
      v28 = 1;
    }

    LOBYTE(v102) = v27;
    sub_2442DDB84();
    swift_allocError();
    *v29 = v10;
    *(v29 + 8) = v27;
    strcpy((v29 + 16), "prepTimeType");
    *(v29 + 29) = 0;
    *(v29 + 30) = -5120;
    *(v29 + 32) = v5;
    *(v29 + 40) = v28;
    *(v29 + 48) = 0x656D695470657270;
    *(v29 + 56) = 0xE800000000000000;
    v30 = 5;
    goto LABEL_37;
  }
}