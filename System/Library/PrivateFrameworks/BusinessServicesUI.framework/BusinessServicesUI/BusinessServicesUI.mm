uint64_t sub_242136A88(uint64_t a1, unint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  if (qword_27EC8C800 != -1)
  {
    swift_once();
  }

  v12 = sub_24214386C();
  __swift_project_value_buffer(v12, qword_27EC8D540);

  v13 = sub_24214384C();
  v14 = sub_242143E8C();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    aBlock[0] = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_242136F1C(a1, a2, aBlock);
    _os_log_impl(&dword_242135000, v13, v14, "Fetching brand with URI: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v16);
    MEMORY[0x245D08DF0](v16, -1, -1);
    MEMORY[0x245D08DF0](v15, -1, -1);
  }

  v17 = objc_opt_self();
  v18 = +[(BSUIMapService *)v17];
  v19 = sub_242143DBC();
  v20 = [(BSUIMapService *)v18 ticketForBrandLookupWithIMessageUid:v19];

  sub_242136D70(v6, v26);
  v21 = swift_allocObject();
  v22 = v26[1];
  *(v21 + 56) = v26[0];
  *(v21 + 16) = a1;
  *(v21 + 24) = a2;
  *(v21 + 32) = a3 & 1;
  *(v21 + 40) = a4;
  *(v21 + 48) = a5;
  *(v21 + 72) = v22;
  *(v21 + 88) = v27;
  aBlock[4] = sub_2421394AC;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_242139340;
  aBlock[3] = &block_descriptor;
  v23 = _Block_copy(aBlock);

  [(_BSUIMapServiceTicket *)v20 submitWithHandler:v23];
  _Block_release(v23);
  return swift_unknownObjectRelease();
}

uint64_t sub_242136D28()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_242136E00()
{
  v0 = sub_24214386C();
  __swift_allocate_value_buffer(v0, qword_27EC8D540);
  __swift_project_value_buffer(v0, qword_27EC8D540);
  return sub_24214385C();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
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

unint64_t sub_242136F1C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_242136FF4(v11, 0, 0, 1, a1, a2);
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
    sub_242137100(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_242136FF4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_2421394C8(a5, a6);
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
    result = sub_242143F1C();
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

uint64_t sub_242137100(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
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

void sub_2421372B0(unint64_t a1, void *a2, uint64_t a3, uint64_t (*a4)(char *, char *, uint64_t), int a5, void (*a6)(__int128 *), uint64_t a7, void *a8)
{
  v147 = a8;
  v150 = a6;
  v151 = a7;
  LODWORD(v148) = a5;
  v152 = a4;
  v149 = a3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC8C830, &qword_242144ED0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v136 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v136 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v136 - v17;
  v19 = sub_24214378C();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v136 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v136 - v24;
  v26 = sub_24214376C();
  v27 = MEMORY[0x28223BE20](v26);
  v30 = &v136 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    v146 = v23;
    v147 = v20;
    v148 = v25;
    if (a1)
    {
      v51 = v19;
      v52 = v13;
      if (a1 >> 62)
      {
        if (sub_242143F2C())
        {
LABEL_12:
          if ((a1 & 0xC000000000000001) != 0)
          {
            v53 = MEMORY[0x245D08890](0, a1);
          }

          else
          {
            if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
LABEL_71:
              swift_once();
LABEL_58:
              v105 = sub_24214386C();
              __swift_project_value_buffer(v105, qword_27EC8D540);
              v106 = a2[2];
              v107 = v146;
              v106(v146, v52, v51);
              v108 = sub_24214384C();
              v109 = sub_242143E7C();
              if (os_log_type_enabled(v108, v109))
              {
                v110 = v107;
                v111 = swift_slowAlloc();
                *&v154 = swift_slowAlloc();
                v152 = v106;
                v112 = v154;
                *v111 = 136315138;
                sub_242139A08(&qword_27EC8C858, MEMORY[0x277CF3648], MEMORY[0x277CF3650]);
                v113 = sub_242143F3C();
                v114 = a2;
                v116 = v115;
                v117 = v110;
                v118 = v114[1];
                v118(v117, v51);
                v119 = sub_242136F1C(v113, v116, &v154);

                *(v111 + 4) = v119;
                _os_log_impl(&dword_242135000, v108, v109, "Fetched brand with model: %s", v111, 0xCu);
                __swift_destroy_boxed_opaque_existential_1(v112);
                v120 = v112;
                v106 = v152;
                MEMORY[0x245D08DF0](v120, -1, -1);
                MEMORY[0x245D08DF0](v111, -1, -1);
              }

              else
              {

                v118 = a2[1];
                v118(v107, v51);
              }

              v121 = v150;
              v122 = v145;
              *(&v155 + 1) = v51;
              v156 = v147;
              boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v154);
              v124 = v148;
              v106(boxed_opaque_existential_1, v148, v51);
              v158 = &type metadata for BSUIMapItemWrapper;
              v159 = sub_2421399B4();
              v157 = v122;
              v160 = 0;
              v125 = v122;
              v121(&v154);

              v118(v124, v51);
              goto LABEL_68;
            }

            v53 = *(a1 + 32);
          }

          v54 = v53;
          v55 = [(BSUIMapItem *)v53 name];
          if (!v55)
          {
            if (qword_27EC8C800 != -1)
            {
              swift_once();
            }

            v75 = sub_24214386C();
            __swift_project_value_buffer(v75, qword_27EC8D540);
            v76 = v152;

            v77 = sub_24214384C();
            v78 = sub_242143E8C();

            if (os_log_type_enabled(v77, v78))
            {
              v79 = swift_slowAlloc();
              v80 = swift_slowAlloc();
              *&v154 = v80;
              *v79 = 136315138;
              *(v79 + 4) = sub_242136F1C(v149, v76, &v154);
              _os_log_impl(&dword_242135000, v77, v78, "Found a brand with URI: %s but it was missing the name", v79, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v80);
              MEMORY[0x245D08DF0](v80, -1, -1);
              MEMORY[0x245D08DF0](v79, -1, -1);
            }

            v81 = v150;
            v82 = sub_2421437BC();
            sub_242139A08(&qword_27EC8C838, MEMORY[0x277CF3668], MEMORY[0x277CF3670]);
            v83 = swift_allocError();
            (*(*(v82 - 8) + 104))(v84, *MEMORY[0x277CF3658], v82);
            *&v154 = v83;
            v160 = 1;
            v81(&v154);

            goto LABEL_68;
          }

          v56 = v55;
          sub_242143DCC();

          v57 = [(BSUIMapItem *)v54 phoneNumber];
          if (v57)
          {
            v58 = v57;
            v144 = sub_242143DCC();
            v143 = v59;
          }

          else
          {
            v144 = 0;
            v143 = 0;
          }

          v90 = [(BSUIMapItem *)v54 _navBackgroundbrandColor];
          if (v90)
          {
            v91 = v90;
            v142 = sub_242139AF4();
            v141 = v92;
          }

          else
          {
            v142 = 0;
            v141 = 0;
          }

          v93 = [(BSUIMapItem *)v54 _navTintBrandColor];
          if (v93)
          {
            v94 = v93;
            v140 = sub_242139AF4();
            v139 = v95;
          }

          else
          {
            v140 = 0;
            v139 = 0;
          }

          v96 = [(BSUIMapItem *)v54 _isMessageIDVerified];
          v97 = [(BSUIMapItem *)v54 url];
          v138 = v96;
          if (v97)
          {
            v98 = v97;
            sub_24214366C();

            v99 = sub_24214369C();
            (*(*(v99 - 8) + 56))(v18, 0, 1, v99);
          }

          else
          {
            v99 = sub_24214369C();
            (*(*(v99 - 8) + 56))(v18, 1, 1, v99);
          }

          sub_24214369C();
          v100 = *(*(v99 - 8) + 56);
          v100(v16, 1, 1, v99);
          v145 = v54;
          v101 = [(BSUIMapItem *)v54 _localizedResponseTime];
          if (v101)
          {
            v102 = v101;
            v137 = sub_242143DCC();
            v136 = v103;
          }

          else
          {
            v137 = 0;
            v136 = 0;
          }

          a2 = v147;
          v100(v13, 1, 1, v99);
          v104 = sub_242139A08(&qword_27EC8C848, MEMORY[0x277CF3648], MEMORY[0x277CF3640]);

          v147 = v104;
          v52 = v148;
          sub_24214377C();
          if (qword_27EC8C800 == -1)
          {
            goto LABEL_58;
          }

          goto LABEL_71;
        }
      }

      else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }
    }

    if (qword_27EC8C800 != -1)
    {
      swift_once();
    }

    v126 = sub_24214386C();
    __swift_project_value_buffer(v126, qword_27EC8D540);
    v127 = v152;

    v128 = sub_24214384C();
    v129 = sub_242143E8C();

    if (os_log_type_enabled(v128, v129))
    {
      v130 = swift_slowAlloc();
      v131 = swift_slowAlloc();
      *&v154 = v131;
      *v130 = 136315138;
      *(v130 + 4) = sub_242136F1C(v149, v127, &v154);
      _os_log_impl(&dword_242135000, v128, v129, "Failed to find a brand with URI: %s - no results returned", v130, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v131);
      MEMORY[0x245D08DF0](v131, -1, -1);
      MEMORY[0x245D08DF0](v130, -1, -1);
    }

    v132 = v150;
    v133 = sub_2421437BC();
    sub_242139A08(&qword_27EC8C838, MEMORY[0x277CF3668], MEMORY[0x277CF3670]);
    v134 = swift_allocError();
    *v135 = 0;
    (*(*(v133 - 8) + 104))(v135, *MEMORY[0x277CF3660], v133);
    *&v154 = v134;
    v160 = 1;
    v132(&v154);
    goto LABEL_68;
  }

  v31 = v28;
  v146 = v27;
  v32 = a2;
  if (qword_27EC8C800 != -1)
  {
    swift_once();
  }

  v33 = sub_24214386C();
  __swift_project_value_buffer(v33, qword_27EC8D540);
  v34 = a2;
  v35 = v152;

  v36 = sub_24214384C();
  v37 = sub_242143E8C();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *&v154 = v39;
    *v38 = 136315650;
    *(v38 + 4) = sub_242136F1C(v149, v35, &v154);
    *(v38 + 12) = 2080;
    v153 = a2;
    v40 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC8C860, &unk_242144EE0);
    v41 = sub_242143DEC();
    v43 = sub_242136F1C(v41, v42, &v154);

    *(v38 + 14) = v43;
    *(v38 + 22) = 1024;
    *(v38 + 24) = v148 & 1;
    _os_log_impl(&dword_242135000, v36, v37, "Failed to fetch brand with URI: %s error: %s isNetworkRetry: %{BOOL}d", v38, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x245D08DF0](v39, -1, -1);
    MEMORY[0x245D08DF0](v38, -1, -1);
  }

  v44 = sub_24214365C();
  v45 = [v44 domain];
  v46 = sub_242143DCC();
  v48 = v47;

  v49 = [v44 code];
  if (sub_242143DCC() == v46 && v50 == v48)
  {
  }

  else
  {
    v60 = sub_242143F4C();

    if ((v60 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  if (v49 != 4)
  {
LABEL_22:
    v64 = GEOErrorDomain();
    if (v64)
    {
      v65 = v64;
      v66 = sub_242143DCC();
      v68 = v67;

      if (v66 == v46 && v68 == v48)
      {

        v35 = v152;
        if (v49 == -8)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v69 = sub_242143F4C();

        v35 = v152;
        if ((v69 & 1) != 0 && v49 == -8)
        {
          goto LABEL_20;
        }
      }
    }

    if (sub_242143DCC() == v46 && v70 == v48)
    {
    }

    else
    {
      v71 = sub_242143F4C();

      if ((v71 & 1) == 0)
      {
        goto LABEL_36;
      }
    }

    sub_24214374C();
    v72 = sub_24214375C();
    (*(v31 + 8))(v30, v146);
    if (v72 == v49)
    {
      if ((v148 & 1) == 0)
      {
        v85 = v147;
        __swift_project_boxed_opaque_existential_1(v147, v147[3]);
        sub_242136D70(v85, &v154);
        v86 = swift_allocObject();
        v87 = v155;
        *(v86 + 16) = v154;
        *(v86 + 32) = v87;
        v89 = v149;
        v88 = v150;
        *(v86 + 48) = v156;
        *(v86 + 56) = v89;
        *(v86 + 64) = v35;
        *(v86 + 72) = v88;
        *(v86 + 80) = v151;

        sub_24214381C();

        return;
      }

      *&v154 = a2;
      v160 = 1;
      v73 = a2;
      goto LABEL_21;
    }

LABEL_36:

    *&v154 = a2;
    v160 = 1;
    v74 = a2;
    v150(&v154);

    goto LABEL_37;
  }

LABEL_20:
  v61 = sub_2421437BC();
  sub_242139A08(&qword_27EC8C838, MEMORY[0x277CF3668], MEMORY[0x277CF3670]);
  v62 = swift_allocError();
  *v63 = v44;
  (*(*(v61 - 8) + 104))(v63, *MEMORY[0x277CF3660], v61);
  *&v154 = v62;
  v160 = 1;
  v44 = v44;
LABEL_21:
  v150(&v154);

LABEL_37:

LABEL_68:
  sub_2421398E8(&v154);
}

uint64_t sub_242138354()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_242138430()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_24213848C@<X0>(uint64_t a1@<X8>)
{
  result = sub_24214394C();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_2421384F0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2421438EC();
  *a1 = result;
  return result;
}

uint64_t sub_242138544@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24214390C();
  *a1 = result;
  return result;
}

uint64_t sub_24213859C()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2421385F4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_242138630(void *a1)
{
  swift_getTupleTypeMetadata2();
  sub_242143D6C();
  swift_getWitnessTable();
  sub_242143D2C();
  sub_2421438BC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EC8CC48, &qword_242145590);
  sub_2421438BC();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24213E090(&qword_27EC8CC50, &qword_27EC8CC48, &qword_242145590, MEMORY[0x277CE04A0]);
  return swift_getWitnessTable();
}

uint64_t sub_242138798(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC8CCB0, &qword_2421455D8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_242138808()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_242138840()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

id MapKitBrandDataSourceObjcShim.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MapKitBrandDataSourceObjcShim.init()()
{
  v1 = v0;
  v2 = sub_2421437DC();
  v3 = sub_2421437CC();
  v9[3] = v2;
  v9[4] = MEMORY[0x277CF3678];
  v9[0] = v3;
  v4 = objc_allocWithZone(MEMORY[0x277CF3690]);
  sub_242136D70(v9, v8);
  v5 = [v4 initWithThing_];
  swift_unknownObjectRelease();
  sub_2421389F4(v9);
  *&v1[OBJC_IVAR___BSUIMapKitBrandDataSourceObjcShim_opaqueWrapper] = v5;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for MapKitBrandDataSourceObjcShim();
  return objc_msgSendSuper2(&v7, sel_init);
}

id MapKitBrandDataSourceObjcShim.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapKitBrandDataSourceObjcShim();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id BrandPlacecardViewControllerObjcShim.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BrandPlacecardViewControllerObjcShim.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BrandPlacecardViewControllerObjcShim();
  return objc_msgSendSuper2(&v2, sel_init);
}

id BrandPlacecardViewControllerObjcShim.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for BrandPlacecardViewControllerObjcShim();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t _s18BusinessServicesUI36BrandPlacecardViewControllerObjcShimC04makedefG005brandhI13OpaqueWrapperSo06UIViewG0CSo08BSOpaqueM0C_tFZ_0(void *a1)
{
  v1 = [a1 wrappedThing];
  sub_242143EEC();
  swift_unknownObjectRelease();
  sub_2421437AC();
  result = swift_dynamicCast();
  if (result)
  {
    sub_24214379C();
    sub_24214383C();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC8C810, &qword_242144DA8);
    result = swift_dynamicCast();
    if (result)
    {
      v3 = [(BSUIMapItem *)v4 makePlacecardViewController];

      return v3;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id _s18BusinessServicesUI36BrandPlacecardViewControllerObjcShimC18hoursConfiguration3foryXlSgSo15BSOpaqueWrapperC_tFZ_0(void *a1)
{
  v2 = sub_24214373C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v23 - v7;
  v9 = [a1 wrappedThing];
  sub_242143EEC();
  swift_unknownObjectRelease();
  sub_2421437AC();
  if (swift_dynamicCast())
  {
    v10 = v24;
    sub_24214379C();
    sub_24214383C();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC8C810, &qword_242144DA8);
    if (swift_dynamicCast())
    {
      v11 = v24;
      v12 = [(BSUIMapItem *)v24 messageBusinessHours];
      if (v12)
      {
        v13 = v12;
        v14 = [(BSUIMapItem *)v11 timeZone];
        if (v14)
        {
          v15 = v14;
          sub_24214372C();

          (*(v3 + 32))(v8, v6, v2);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC8CBC0, &qword_242144DB0);
          v16 = swift_allocObject();
          *(v16 + 16) = xmmword_242144D60;
          *(v16 + 32) = v13;
          v17 = objc_allocWithZone(MEMORY[0x277D26690]);
          sub_242139074();
          v18 = v13;
          v19 = sub_242143E4C();

          v20 = sub_24214371C();
          v21 = [v17 initWithBusinessHours:v19 timeZone:v20];

          (*(v3 + 8))(v8, v2);
          return v21;
        }
      }
    }
  }

  return 0;
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

unint64_t sub_242139074()
{
  result = qword_27EC8C818;
  if (!qword_27EC8C818)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EC8C818);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

id sub_242139134(uint64_t (*a1)(uint64_t, uint64_t))
{
  sub_24214382C();
  v2 = v10;
  v3 = v11;
  __swift_project_boxed_opaque_existential_1(v9, v10);
  a1(v2, v3);
  v5 = v4;
  if (v4)
  {
    __swift_destroy_boxed_opaque_existential_1(v9);
    v6 = objc_allocWithZone(MEMORY[0x277D75348]);
    v7 = sub_242143DBC();

    v5 = [v6 initWithHexString_];
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v9);
  }

  return v5;
}

void __swiftcall Brand.makeBrandPlacecardViewController()(UIViewController *__return_ptr retstr)
{
  sub_24214383C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC8C810, &qword_242144DA8);
  if (swift_dynamicCast())
  {
    [(BSUIMapItem *)v1 makePlacecardViewController];
  }

  else
  {
    __break(1u);
  }
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2421392A0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2421392E8(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_242139340(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_24213989C();
    v4 = sub_242143E5C();
  }

  v6 = a3;
  v5(v4, a3);
}

uint64_t sub_24213940C@<X0>(uint64_t (*a1)(uint64_t, uint64_t)@<X2>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = 1;
  v6 = a1(v4, 1);
  if (v6)
  {
    v7 = v6;
    sub_24214366C();

    v5 = 0;
  }

  v8 = sub_24214369C();
  v9 = *(*(v8 - 8) + 56);

  return v9(a2, v5, 1, v8);
}

void *sub_2421394C8(uint64_t a1, unint64_t a2)
{
  v3 = sub_242139514(a1, a2);
  sub_242139644(&unk_285465568);
  return v3;
}

void *sub_242139514(uint64_t a1, unint64_t a2)
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

  v6 = sub_242139730(v5, 0);
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

  result = sub_242143F1C();
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
        v10 = sub_242143E3C();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_242139730(v10, 0);
        result = sub_242143EFC();
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

uint64_t sub_242139644(uint64_t result)
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

  result = sub_2421397A4(result, v11, 1, v3);
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

void *sub_242139730(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC8C820, &qword_242144EC8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_2421397A4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC8C820, &qword_242144EC8);
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

unint64_t sub_24213989C()
{
  result = qword_27EC8C828;
  if (!qword_27EC8C828)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EC8C828);
  }

  return result;
}

uint64_t sub_2421398E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC8C840, &qword_242144ED8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
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

unint64_t sub_2421399B4()
{
  result = qword_27EC8C850;
  if (!qword_27EC8C850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC8C850);
  }

  return result;
}

uint64_t sub_242139A08(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

UIColor_optional __swiftcall UIColor.init(hexString:)(Swift::String hexString)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v2 = sub_242143DBC();

  v3 = [v1 initWithHexString_];

  v5 = v3;
  result.value.super.isa = v5;
  result.is_nil = v4;
  return result;
}

uint64_t sub_242139AF4()
{
  v1 = [v0 CGColor];
  v2 = sub_242143E6C();

  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 16);
  if (v3 < 3)
  {

    return 0;
  }

  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  v7 = *(v2 + 48);
  if (v3 == 3)
  {

    v8 = 255.0;
  }

  else
  {
    v9 = *(v2 + 56);

    v10 = v9;
    v8 = v10 * 255.0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC8C870, &qword_242145360);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_242144EF0;
  v12 = lroundf(v5 * 255.0);
  v13 = MEMORY[0x277D83B88];
  v14 = MEMORY[0x277D83C10];
  *(v11 + 56) = MEMORY[0x277D83B88];
  *(v11 + 64) = v14;
  *(v11 + 32) = v12;
  v15 = lroundf(v6 * 255.0);
  *(v11 + 96) = v13;
  *(v11 + 104) = v14;
  *(v11 + 72) = v15;
  v16 = lroundf(v7 * 255.0);
  *(v11 + 136) = v13;
  *(v11 + 144) = v14;
  *(v11 + 112) = v16;
  v17 = lroundf(v8);
  *(v11 + 176) = v13;
  *(v11 + 184) = v14;
  *(v11 + 152) = v17;
  return sub_242143DDC();
}

id UIColor.init(hexString:)(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v25 = *MEMORY[0x277D85DE8];
  v6 = sub_24214363C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = a1;
  v24 = a2;
  sub_24214362C();
  sub_242139F44();
  v10 = sub_242143ECC();
  v12 = v11;
  (*(v7 + 8))(v9, v6);

  v23 = v10;
  v24 = v12;
  v22[3] = 35;
  v22[4] = 0xE100000000000000;
  v22[1] = 0;
  v22[2] = 0xE000000000000000;
  sub_242143EDC();

  v23 = 0;
  v13 = sub_242143E0C();
  v14 = objc_allocWithZone(MEMORY[0x277CCAC80]);
  v15 = sub_242143DBC();

  v16 = [v14 initWithString_];

  LODWORD(v15) = [v16 scanHexLongLong_];
  if (!v15)
  {
    goto LABEL_5;
  }

  if (v13 == 8)
  {
    v18 = v23 >> 24;
    v19 = v23 >> 16;
    v17 = v23 >> 8;
    v20 = v23 / 255.0;
    return [v3 initWithRed:v18 / 255.0 green:v19 / 255.0 blue:v17 / 255.0 alpha:v20];
  }

  if (v13 != 6)
  {
LABEL_5:
    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return 0;
  }

  LOBYTE(v17) = v23;
  v18 = v23 >> 16;
  v19 = v23 >> 8;
  v20 = 1.0;
  return [v3 initWithRed:v18 / 255.0 green:v19 / 255.0 blue:v17 / 255.0 alpha:v20];
}

unint64_t sub_242139F44()
{
  result = qword_27EC8C868;
  if (!qword_27EC8C868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC8C868);
  }

  return result;
}

uint64_t BrandCardContentView.body.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC8C878, &qword_242144F00);
  MEMORY[0x28223BE20](v1);
  v3 = (v13 - v2);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC8C880, &qword_242144F08);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v13 - v7;
  v9 = *v0;
  if (*v0)
  {
    MEMORY[0x28223BE20](v6);
    v13[-2] = v9;
    v13[1] = 0;
    v10 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC8C8A0, &qword_242144F10);
    sub_242143CEC();
    v11 = v14;
    v15 = 0;
    v14 = v9;
    v16 = v11;
    sub_24213A340();
    sub_24213A394();
    sub_242143D3C();
    (*(v5 + 16))(v3, v8, v4);
    swift_storeEnumTagMultiPayload();
    sub_24213A260();
    sub_242143ABC();

    return (*(v5 + 8))(v8, v4);
  }

  else
  {
    *v3 = sub_242143C6C();
    swift_storeEnumTagMultiPayload();
    sub_24213A260();
    return sub_242143ABC();
  }
}

unint64_t sub_24213A260()
{
  result = qword_27EC8C888;
  if (!qword_27EC8C888)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EC8C880, &qword_242144F08);
    sub_24213A340();
    sub_24213A394();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC8C888);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_24213A340()
{
  result = qword_27EC8C890;
  if (!qword_27EC8C890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC8C890);
  }

  return result;
}

unint64_t sub_24213A394()
{
  result = qword_27EC8C898;
  if (!qword_27EC8C898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC8C898);
  }

  return result;
}

id sub_24213A3E8@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = v2;
  return v2;
}

uint64_t sub_24213A420(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_24213A47C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_24213A4DC()
{
  result = qword_27EC8C8A8;
  if (!qword_27EC8C8A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EC8C8B0, &qword_242144FA8);
    sub_24213A260();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC8C8A8);
  }

  return result;
}

double BrandHeaderView.init(brand:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC8C8A0, &qword_242144F10);
  sub_242143CEC();
  result = *&v5;
  *(a2 + 24) = v5;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = a1;
  return result;
}

double BrandHeaderView.init(brand:fallbackHandle:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC8C8A0, &qword_242144F10);
  sub_242143CEC();
  result = *&v9;
  *(a4 + 24) = v9;
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

uint64_t sub_24213A640()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  if (*v0)
  {
    v3 = *v0;
    v4 = [v3 name];
    v5 = sub_242143DCC();
    v7 = v6;

    v8 = HIBYTE(v7) & 0xF;
    if ((v7 & 0x2000000000000000) == 0)
    {
      v8 = v5 & 0xFFFFFFFFFFFFLL;
    }

    if (v8)
    {
      goto LABEL_5;
    }

    v18 = [v3 primaryPhoneNumber];
    if (!v18)
    {
      goto LABEL_5;
    }

    v19 = v18;
    v20 = sub_242143DCC();
    v22 = v21;

    v23 = HIBYTE(v22) & 0xF;
    if ((v22 & 0x2000000000000000) == 0)
    {
      v23 = v20 & 0xFFFFFFFFFFFFLL;
    }

    if (v23 && (v24 = [v3 primaryPhoneNumber]) != 0)
    {
      v25 = v24;
      v9 = sub_242143DCC();
      v10 = v26;
    }

    else
    {
LABEL_5:
      v9 = 0;
      v10 = 0;
    }

    v11 = [v3 name];
    v12 = sub_242143DCC();
    v14 = v13;

    v15 = HIBYTE(v14) & 0xF;
    if ((v14 & 0x2000000000000000) == 0)
    {
      v15 = v12 & 0xFFFFFFFFFFFFLL;
    }

    if (v15)
    {

      v16 = [v3 name];
      v9 = sub_242143DCC();
      v10 = v17;

      if (!v2)
      {
        goto LABEL_33;
      }
    }

    else
    {

      if (!v2)
      {
        goto LABEL_33;
      }
    }
  }

  else
  {
    v9 = 0;
    v10 = 0;
    if (!v2)
    {
      goto LABEL_33;
    }
  }

  v27 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v27 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (v27)
  {
    if (v10)
    {
      v28 = v9 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v28 = 0;
    }

    if (v10)
    {
      v29 = v10;
    }

    else
    {
      v29 = 0xE000000000000000;
    }

    v30 = HIBYTE(v29) & 0xF;
    if ((v29 & 0x2000000000000000) == 0)
    {
      v30 = v28;
    }

    if (!v30)
    {

      return v1;
    }
  }

LABEL_33:
  if (!v10)
  {
    v31 = [objc_allocWithZone(type metadata accessor for FrameworkBundleAnchor()) init];
    swift_getObjectType();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v33 = [objc_opt_self() bundleForClass_];

    v9 = sub_24214364C();
  }

  return v9;
}

uint64_t sub_24213A910()
{
  v1 = sub_2421439AC();
  MEMORY[0x28223BE20](v1 - 8);
  if (*v0)
  {
    v2 = *v0;
    if ([v2 isRCSChatBot])
    {
      if ([v2 isVerified])
      {
        v3 = [v2 verifiedBy];
        if (v3)
        {
          v4 = v3;
          v5 = sub_242143DCC();
          v7 = v6;

          v8 = [objc_allocWithZone(type metadata accessor for FrameworkBundleAnchor()) init];
          swift_getObjectType();
          ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
          v10 = [objc_opt_self() bundleForClass_];

          sub_24214364C();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC8C870, &qword_242145360);
          v11 = swift_allocObject();
          *(v11 + 16) = xmmword_242144FB0;
          *(v11 + 56) = MEMORY[0x277D837D0];
          *(v11 + 64) = sub_24213D900();
          *(v11 + 32) = v5;
          *(v11 + 40) = v7;
          sub_242143DDC();

          sub_242139F44();
          v12 = sub_242143BEC();
LABEL_8:
          v16 = v12;

          return v16;
        }
      }
    }

    if ([v2 isVerified])
    {
      v13 = [objc_allocWithZone(type metadata accessor for FrameworkBundleAnchor()) init];
      swift_getObjectType();
      v14 = swift_getObjCClassFromMetadata();
      v15 = [objc_opt_self() bundleForClass_];

      sub_24214364C();
      sub_24214399C();
      sub_24214398C();
      sub_242143CBC();
      sub_24214396C();

      sub_24214398C();
      sub_24214397C();

      sub_24214398C();
      sub_2421439BC();
      v12 = sub_242143BDC();
      goto LABEL_8;
    }
  }

  v18 = [objc_allocWithZone(type metadata accessor for FrameworkBundleAnchor()) init];
  swift_getObjectType();
  v19 = swift_getObjCClassFromMetadata();
  v20 = [objc_opt_self() bundleForClass_];

  sub_24214364C();
  sub_242139F44();
  return sub_242143BEC();
}

uint64_t BrandHeaderView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v57 = a1;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC8C8B8, &qword_242145008);
  MEMORY[0x28223BE20](v56);
  v3 = &v50 - v2;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC8C8C0, &qword_242145010);
  MEMORY[0x28223BE20](v54);
  v55 = &v50 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC8C8C8, &qword_242145018);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v50 - v6;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC8C8D0, &qword_242145020);
  MEMORY[0x28223BE20](v51);
  v9 = &v50 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC8C8D8, &qword_242145028);
  MEMORY[0x28223BE20](v10);
  v12 = &v50 - v11;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC8C8E0, &qword_242145030);
  MEMORY[0x28223BE20](v52);
  v14 = &v50 - v13;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC8C8E8, &qword_242145038);
  v15 = MEMORY[0x28223BE20](v53);
  v17 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v50 - v18;
  v20 = v1[1];
  v100 = *v1;
  v101 = v20;
  v102 = *(v1 + 4);
  if (v100)
  {
    v21 = v100;
    *v7 = sub_2421439DC();
    *(v7 + 1) = 0;
    v7[16] = 0;
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC8C968, &qword_242145098);
    sub_24213B52C(&v100, v21, &v7[*(v22 + 44)]);
    sub_242143D5C();
    sub_2421438DC();
    sub_24213D20C(v7, v9, &qword_27EC8C8C8, &qword_242145018);
    v23 = &v9[*(v51 + 36)];
    v24 = v92;
    *(v23 + 4) = v91;
    *(v23 + 5) = v24;
    *(v23 + 6) = v93;
    v25 = v88;
    *v23 = v87;
    *(v23 + 1) = v25;
    v26 = v90;
    *(v23 + 2) = v89;
    *(v23 + 3) = v26;
    v27 = &v12[*(v10 + 36)];
    v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC8C900, &qword_242145050) + 28);
    v29 = sub_242143BBC();
    (*(*(v29 - 8) + 56))(v27 + v28, 1, 1, v29);
    *v27 = swift_getKeyPath();
    sub_24213D20C(v9, v12, &qword_27EC8C8D0, &qword_242145020);
    LODWORD(v27) = sub_242143ACC();
    sub_24213D20C(v12, v14, &qword_27EC8C8D8, &qword_242145028);
    *&v14[*(v52 + 36)] = v27;
    v30 = swift_allocObject();
    *(v30 + 16) = v21;
    v31 = v101;
    *(v30 + 24) = v100;
    *(v30 + 40) = v31;
    *(v30 + 56) = v102;
    sub_24213D20C(v14, v17, &qword_27EC8C8E0, &qword_242145030);
    v32 = &v17[*(v53 + 36)];
    *v32 = sub_24213D200;
    v32[1] = v30;
    v32[2] = 0;
    v32[3] = 0;
    v33 = &qword_27EC8C8E8;
    v34 = &qword_242145038;
    sub_24213D20C(v17, v19, &qword_27EC8C8E8, &qword_242145038);
    sub_24213D954(v19, v55, &qword_27EC8C8E8, &qword_242145038);
    swift_storeEnumTagMultiPayload();
    sub_24213D274(&v100, &v74);
    sub_24213CDB0();
    sub_24213D064();
    sub_242143ABC();
    v35 = v19;
  }

  else
  {
    v36 = sub_2421439DC();
    v73 = 0;
    sub_24213C4BC(&v100, &v59);
    v84 = v69;
    v85 = v70;
    v80 = v65;
    v81 = v66;
    v82 = v67;
    v83 = v68;
    v76 = v61;
    v77 = v62;
    v78 = v63;
    v79 = v64;
    v74 = v59;
    v75 = v60;
    v97 = v69;
    v98 = v70;
    v93 = v65;
    v94 = v66;
    v95 = v67;
    v96 = v68;
    v89 = v61;
    v90 = v62;
    v91 = v63;
    v92 = v64;
    v86 = v71;
    v99 = v71;
    v87 = v59;
    v88 = v60;
    sub_24213D954(&v74, &v58, &qword_27EC8C8F0, &qword_242145040);
    sub_24213D8A0(&v87, &qword_27EC8C8F0, &qword_242145040);
    *&v72[151] = v83;
    *&v72[167] = v84;
    *&v72[183] = v85;
    *&v72[87] = v79;
    *&v72[103] = v80;
    *&v72[119] = v81;
    *&v72[135] = v82;
    *&v72[23] = v75;
    *&v72[39] = v76;
    *&v72[55] = v77;
    *&v72[71] = v78;
    v72[199] = v86;
    *&v72[7] = v74;
    v37 = v73;
    v38 = &v3[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC8C8F8, &qword_242145048) + 36)];
    v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC8C900, &qword_242145050) + 28);
    v40 = sub_242143BBC();
    (*(*(v40 - 8) + 56))(v38 + v39, 1, 1, v40);
    *v38 = swift_getKeyPath();
    v41 = *&v72[16];
    *(v3 + 17) = *v72;
    v42 = *&v72[80];
    *(v3 + 81) = *&v72[64];
    v43 = *&v72[32];
    *(v3 + 65) = *&v72[48];
    *(v3 + 49) = v43;
    *(v3 + 33) = v41;
    v44 = *&v72[144];
    *(v3 + 145) = *&v72[128];
    v45 = *&v72[96];
    *(v3 + 129) = *&v72[112];
    *(v3 + 113) = v45;
    *(v3 + 97) = v42;
    v46 = *&v72[160];
    *(v3 + 193) = *&v72[176];
    *(v3 + 177) = v46;
    *v3 = v36;
    *(v3 + 1) = 0;
    v3[16] = v37;
    *(v3 + 209) = *&v72[192];
    *(v3 + 161) = v44;
    v47 = sub_242143ACC();
    v48 = v55;
    *&v3[*(v56 + 36)] = v47;
    v33 = &qword_27EC8C8B8;
    v34 = &qword_242145008;
    sub_24213D954(v3, v48, &qword_27EC8C8B8, &qword_242145008);
    swift_storeEnumTagMultiPayload();
    sub_24213CDB0();
    sub_24213D064();
    sub_242143ABC();
    v35 = v3;
  }

  return sub_24213D8A0(v35, v33, v34);
}

uint64_t sub_24213B52C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v134 = a2;
  v123 = a3;
  v4 = sub_242143B6C();
  v121 = *(v4 - 8);
  v122 = v4;
  MEMORY[0x28223BE20](v4);
  v125 = &v116[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_242143CCC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v116[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC8C9C8, &qword_242145310);
  MEMORY[0x28223BE20](v10);
  v12 = &v116[-v11];
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC8C9D0, &qword_242145318);
  MEMORY[0x28223BE20](v138);
  v14 = &v116[-v13];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC8C9D8, &qword_242145320);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v137 = &v116[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v16);
  v19 = &v116[-v18];
  v124 = a1;
  *v166 = *(a1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC8C9C0, &qword_242145308);
  sub_242143CFC();
  if (*&v162[0])
  {
    v135 = *&v162[0];
    sub_242143CAC();
    (*(v7 + 104))(v9, *MEMORY[0x277CE0FE0], v6);
    v20 = sub_242143CDC();

    (*(v7 + 8))(v9, v6);
    sub_242143D5C();
    sub_24214389C();
    LOBYTE(v166[0]) = 1;
    *&v139[6] = v187[0];
    *&v139[22] = v187[1];
    *&v139[38] = v187[2];
    v21 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC8C9F0, &qword_242145328) + 36)];
    v22 = *(sub_2421438CC() + 20);
    v23 = *MEMORY[0x277CE0118];
    v24 = sub_2421439CC();
    (*(*(v24 - 8) + 104))(&v21[v22], v23, v24);
    __asm { FMOV            V0.2D, #18.0 }

    *v21 = _Q0;
    *&v21[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC8C998, &qword_2421452B0) + 36)] = 256;
    v30 = *&v139[16];
    *(v12 + 18) = *v139;
    *v12 = v20;
    *(v12 + 1) = 0;
    *(v12 + 8) = 1;
    *(v12 + 34) = v30;
    *(v12 + 50) = *&v139[32];
    *(v12 + 8) = *&v139[46];
    v31 = sub_242143AFC();
    sub_24214387C();
    v32 = &v12[*(v10 + 36)];
    *v32 = v31;
    *(v32 + 1) = v33;
    *(v32 + 2) = v34;
    *(v32 + 3) = v35;
    *(v32 + 4) = v36;
    v32[40] = 0;
    sub_24213D954(v12, v14, &qword_27EC8C9C8, &qword_242145310);
    swift_storeEnumTagMultiPayload();
    sub_24213D5F8();
    sub_24213D84C();
    sub_242143ABC();

    sub_24213D8A0(v12, &qword_27EC8C9C8, &qword_242145310);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_24213D5F8();
    sub_24213D84C();
    sub_242143ABC();
  }

  v120 = sub_24213A640();
  v135 = v37;
  v38 = v134;
  v39 = [v134 isRCSChatBot];
  v40 = v122;
  if (v39)
  {
    v41 = [v38 brandURI];
    v119 = sub_242143DCC();
    v138 = v42;
  }

  else
  {
    v119 = 0;
    v138 = 0;
  }

  v43 = [v38 categories];
  v44 = MEMORY[0x277CE0A10];
  v136 = v19;
  if (!v43)
  {
    goto LABEL_14;
  }

  v45 = v43;
  v46 = sub_242143E5C();

  if (!v46[2])
  {
    goto LABEL_13;
  }

  v47 = v46[4];
  v48 = v46[5];

  v49 = HIBYTE(v48) & 0xF;
  if ((v48 & 0x2000000000000000) == 0)
  {
    v49 = v47 & 0xFFFFFFFFFFFFLL;
  }

  if (!v49)
  {
LABEL_13:

LABEL_14:
    v133 = 0;
    v134 = 0;
    KeyPath = 0;
    v132 = 0;
    v129 = 0;
    v130 = 0;
    v127 = 0;
    v128 = 0;
    v126 = 0;
    v55 = v121;
    goto LABEL_15;
  }

  v166[0] = v47;
  v166[1] = v48;
  sub_242139F44();
  v50 = sub_242143BEC();
  v52 = v51;
  v54 = v53;
  sub_242143B1C();
  v55 = v121;
  v56 = v125;
  (*(v121 + 104))(v125, *v44, v40);
  sub_242143B7C();

  (*(v55 + 8))(v56, v40);
  v57 = sub_242143BCC();
  v133 = v58;
  v134 = v57;
  v60 = v59;
  v132 = v61;
  v44 = MEMORY[0x277CE0A10];

  sub_24213D508(v50, v52, v54 & 1);

  KeyPath = swift_getKeyPath();
  v62 = sub_242143AEC();
  LOBYTE(v166[0]) = v60 & 1;
  LOBYTE(v162[0]) = 0;
  LOBYTE(v140) = 0;
  v126 = v60 & 1;
  v128 = 0;
  v127 = v62;
  v129 = 1;
  v130 = 0x4000000000000000;
LABEL_15:
  v63 = sub_24213A910();
  v65 = v64;
  v67 = v66;
  sub_242143B0C();
  v68 = v125;
  (*(v55 + 104))(v125, *v44, v40);
  sub_242143B7C();

  (*(v55 + 8))(v68, v40);
  v69 = sub_242143BCC();
  v71 = v70;
  LOBYTE(v68) = v72;

  sub_24213D508(v63, v65, v67 & 1);

  LODWORD(v166[0]) = sub_242143ADC();
  v73 = sub_242143BAC();
  v124 = v73;
  v125 = v74;
  v118 = v75;
  v77 = v76;
  v78 = v74;
  sub_24213D508(v69, v71, v68 & 1);

  v79 = sub_242143AEC();
  LOBYTE(v68) = v79;
  LODWORD(v122) = v79;
  LOBYTE(v166[0]) = v77 & 1;
  v80 = v77 & 1;
  LODWORD(v121) = v77 & 1;
  LOBYTE(v162[0]) = 0;
  v81 = sub_242143C6C();
  sub_242143D5C();
  sub_2421438DC();
  v117 = sub_242143AEC();
  sub_24214387C();
  v83 = v82;
  v85 = v84;
  v87 = v86;
  v89 = v88;
  LOBYTE(v166[0]) = 0;
  v90 = v137;
  sub_24213D954(v136, v137, &qword_27EC8C9D8, &qword_242145320);
  v91 = v90;
  v92 = v123;
  sub_24213D954(v91, v123, &qword_27EC8C9D8, &qword_242145320);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC8CA28, &qword_242145340);
  v94 = (v92 + v93[12]);
  v95 = v135;
  *v94 = v120;
  v94[1] = v95;
  v96 = v138;
  v94[2] = v119;
  v94[3] = v96;
  v138 = v96;
  v97 = v92 + v93[16];
  *&v150 = v134;
  *(&v150 + 1) = v133;
  *&v151 = v126;
  *(&v151 + 1) = v132;
  *&v152 = KeyPath;
  *(&v152 + 1) = v129;
  *&v153 = v128;
  *(&v153 + 1) = v127;
  v154 = v130;
  v155 = 0uLL;
  v156 = 0;
  *(v97 + 96) = 0;
  v98 = v151;
  *v97 = v150;
  *(v97 + 16) = v98;
  v99 = v153;
  *(v97 + 32) = v152;
  *(v97 + 48) = v99;
  v100 = v155;
  *(v97 + 64) = v154;
  *(v97 + 80) = v100;
  v101 = (v92 + v93[20]);
  v102 = v118;
  *&v157 = v73;
  *(&v157 + 1) = v118;
  LOBYTE(v158) = v80;
  DWORD1(v158) = *&v148[3];
  *(&v158 + 1) = *v148;
  *(&v158 + 1) = v78;
  LOBYTE(v159) = v68;
  DWORD1(v159) = *&v147[3];
  *(&v159 + 1) = *v147;
  *(&v159 + 1) = 0x4010000000000000;
  memset(v160, 0, sizeof(v160));
  v161 = 0;
  v103 = v157;
  v104 = v158;
  *(v101 + 57) = *&v160[9];
  v105 = *v160;
  v101[2] = v159;
  v101[3] = v105;
  *v101 = v103;
  v101[1] = v104;
  v106 = v92 + v93[24];
  v107 = v81;
  *&v162[0] = v81;
  *(&v162[5] + 8) = v145;
  *(&v162[6] + 8) = v146;
  *(&v162[2] + 8) = v142;
  *(&v162[1] + 8) = v141;
  *(v162 + 8) = v140;
  *(&v162[4] + 8) = v144;
  *(&v162[3] + 8) = v143;
  LOBYTE(v81) = v117;
  BYTE8(v162[7]) = v117;
  HIDWORD(v162[7]) = *&v149[3];
  *(&v162[7] + 9) = *v149;
  *&v163 = v83;
  *(&v163 + 1) = v85;
  *&v164 = v87;
  *(&v164 + 1) = v89;
  v165 = 0;
  v108 = v163;
  v109 = v164;
  *(v106 + 160) = 0;
  *(v106 + 128) = v108;
  *(v106 + 144) = v109;
  v110 = v162[1];
  *v106 = v162[0];
  *(v106 + 16) = v110;
  v111 = v162[2];
  v112 = v162[3];
  v113 = v162[7];
  *(v106 + 96) = v162[6];
  *(v106 + 112) = v113;
  v114 = v162[5];
  *(v106 + 64) = v162[4];
  *(v106 + 80) = v114;
  *(v106 + 32) = v111;
  *(v106 + 48) = v112;

  sub_24213D954(&v150, v166, &qword_27EC8CA30, &qword_242145348);
  sub_24213D954(&v157, v166, &qword_27EC8CA38, &qword_242145350);
  sub_24213D954(v162, v166, &qword_27EC8CA40, &qword_242145358);
  sub_24213D8A0(v136, &qword_27EC8C9D8, &qword_242145320);
  *&v166[7] = v143;
  *&v166[9] = v144;
  *&v166[11] = v145;
  *&v166[13] = v146;
  *&v166[1] = v140;
  *&v166[3] = v141;
  v166[0] = v107;
  *&v166[5] = v142;
  v167 = v81;
  *&v168[3] = *&v149[3];
  *v168 = *v149;
  v169 = v83;
  v170 = v85;
  v171 = v87;
  v172 = v89;
  v173 = 0;
  sub_24213D8A0(v166, &qword_27EC8CA40, &qword_242145358);
  v174[0] = v124;
  v174[1] = v102;
  v175 = v121;
  *v176 = *v148;
  *&v176[3] = *&v148[3];
  v177 = v125;
  v178 = v122;
  *v179 = *v147;
  *&v179[3] = *&v147[3];
  v180 = 0x4010000000000000;
  v181 = 0;
  v182 = 0;
  v183 = 0;
  v184 = 0;
  sub_24213D8A0(v174, &qword_27EC8CA38, &qword_242145350);
  v185[0] = v134;
  v185[1] = v133;
  v185[2] = v126;
  v185[3] = v132;
  v185[4] = KeyPath;
  v185[5] = v129;
  v185[6] = v128;
  v185[7] = v127;
  v185[8] = v130;
  memset(&v185[9], 0, 24);
  v186 = 0;
  sub_24213D8A0(v185, &qword_27EC8CA30, &qword_242145348);

  return sub_24213D8A0(v137, &qword_27EC8C9D8, &qword_242145320);
}

void sub_24213C1A4(void *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  v5 = *(a2 + 16);
  *(v4 + 16) = *a2;
  *(v4 + 32) = v5;
  *(v4 + 48) = *(a2 + 32);
  aBlock[4] = sub_24213D518;
  aBlock[5] = v4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24213C410;
  aBlock[3] = &block_descriptor_0;
  v6 = _Block_copy(aBlock);
  sub_24213D274(a2, v7);

  [a1 squareLogoDataForDesiredSize:v6 completion:{80.0, 80.0}];
  _Block_release(v6);
}

uint64_t sub_24213C2A0(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 >> 60 != 15)
  {
    v16[9] = v4;
    v16[10] = v5;
    v7 = result;
    v9 = objc_allocWithZone(MEMORY[0x277D755B8]);
    sub_24213D590(v7, a2);
    sub_24213D5A4(v7, a2);
    v10 = sub_2421436AC();
    v11 = [v9 initWithData_];

    sub_24213D528(v7, a2);
    v12 = *(a4 + 24);
    v15 = *(a4 + 32);
    v16[0] = v12;
    v14[2] = v12;
    v14[3] = v15;
    v14[1] = v11;
    sub_24213D954(v16, v14, &qword_27EC8C8A0, &qword_242144F10);
    sub_24213D954(&v15, v14, &qword_27EC8C9B8, &qword_242145300);
    v13 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC8C9C0, &qword_242145308);
    sub_242143D0C();
    sub_24213D528(v7, a2);

    sub_24213D8A0(v16, &qword_27EC8C8A0, &qword_242144F10);
    return sub_24213D8A0(&v15, &qword_27EC8C9B8, &qword_242145300);
  }

  return result;
}

double sub_24213C410(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {

    v6 = v4;
    v4 = sub_2421436BC();
    v8 = v7;
  }

  else
  {

    v8 = 0xF000000000000000;
  }

  v9 = a3;
  v5(v4, v8, a3);

  sub_24213D528(v4, v8);

  return result;
}

uint64_t sub_24213C4BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24213A640();
  v6 = v5;
  v8 = *(a1 + 8);
  v7 = *(a1 + 16);

  v9 = sub_242143C6C();
  sub_242143D5C();
  sub_2421438DC();
  v10 = sub_242143AEC();
  sub_24214387C();
  *v37 = v9;
  v11 = v32;
  *&v37[56] = v33;
  v12 = v33;
  *&v37[72] = v34;
  v13 = v34;
  *&v37[88] = v35;
  v14 = v35;
  *&v37[104] = v36;
  v15 = v31;
  *&v37[8] = v30;
  v16 = v30;
  *&v37[24] = v31;
  *&v37[40] = v32;
  v37[120] = v10;
  *&v38 = v17;
  *(&v38 + 1) = v18;
  *&v39 = v19;
  *(&v39 + 1) = v20;
  v21 = *&v37[112];
  v22 = v39;
  *(a2 + 160) = v38;
  *(a2 + 176) = v22;
  v23 = *&v37[16];
  v24 = *&v37[32];
  v25 = v36;
  *(a2 + 32) = *v37;
  *(a2 + 48) = v23;
  v26 = *&v37[80];
  *(a2 + 128) = *&v37[96];
  *(a2 + 144) = v21;
  v27 = *&v37[48];
  *(a2 + 96) = *&v37[64];
  *(a2 + 112) = v26;
  *(a2 + 64) = v24;
  *(a2 + 80) = v27;
  v45 = v12;
  v46 = v13;
  v47 = v14;
  v40 = 0;
  *a2 = v4;
  *(a2 + 8) = v6;
  *(a2 + 16) = v8;
  *(a2 + 24) = v7;
  *(a2 + 192) = 0;
  v41 = v9;
  v48 = v25;
  v42 = v16;
  v43 = v15;
  v44 = v11;
  v49 = v10;
  v50 = v17;
  v51 = v18;
  v52 = v19;
  v53 = v20;
  v54 = 0;

  sub_24213D954(v37, v29, &qword_27EC8CA40, &qword_242145358);
  sub_24213D8A0(&v41, &qword_27EC8CA40, &qword_242145358);
}

uint64_t sub_24213C694@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC8C980, &qword_242145298);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v45 - v3;
  v5 = sub_242143C5C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC8C988, &qword_2421452A0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_242144FC0;
  v10 = *MEMORY[0x277CE0EE0];
  v11 = *(v6 + 104);
  v11(v8, v10, v5);
  *(v9 + 32) = sub_242143C9C();
  v11(v8, v10, v5);
  *(v9 + 40) = sub_242143C9C();
  sub_242143D8C();
  sub_242143D9C();
  MEMORY[0x245D086D0](v9);
  sub_2421438AC();
  v12 = v47;
  v13 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC8C990, &qword_2421452A8) + 36));
  v14 = *(sub_2421438CC() + 20);
  v15 = *MEMORY[0x277CE0118];
  v16 = sub_2421439CC();
  v17 = *(*(v16 - 8) + 104);
  v45 = v49;
  v46 = v48;
  v17(&v13[v14], v15, v16);
  __asm { FMOV            V0.2D, #18.0 }

  *v13 = _Q0;
  *&v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC8C998, &qword_2421452B0) + 36)] = 256;
  *a1 = v12;
  v23 = v46;
  *(a1 + 24) = v45;
  *(a1 + 8) = v23;
  sub_242143D5C();
  sub_24214389C();
  v24 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC8C9A0, &qword_2421452B8) + 36));
  v25 = v51;
  *v24 = v50;
  v24[1] = v25;
  v24[2] = v52;
  v26 = sub_242143D5C();
  v28 = v27;
  v29 = sub_242143CBC();
  v30 = sub_242143C7C();
  v31 = sub_242143B4C();
  (*(*(v31 - 8) + 56))(v4, 1, 1, v31);
  v32 = sub_242143B5C();
  sub_24213D8A0(v4, &qword_27EC8C980, &qword_242145298);
  KeyPath = swift_getKeyPath();
  v34 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC8C9A8, &qword_2421452F0) + 36));
  *v34 = v29;
  v34[1] = v30;
  v34[2] = KeyPath;
  v34[3] = v32;
  v34[4] = v26;
  v34[5] = v28;
  LOBYTE(KeyPath) = sub_242143AFC();
  sub_24214387C();
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC8C9B0, &qword_2421452F8);
  v44 = a1 + *(result + 36);
  *v44 = KeyPath;
  *(v44 + 8) = v36;
  *(v44 + 16) = v38;
  *(v44 + 24) = v40;
  *(v44 + 32) = v42;
  *(v44 + 40) = 0;
  return result;
}

uint64_t sub_24213CAEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_242139F44();

  v8 = sub_242143BEC();
  v10 = v9;
  v12 = v11;
  sub_242143B3C();
  sub_242143B2C();

  v13 = sub_242143BCC();
  v39 = v14;
  v40 = v13;
  v16 = v15;
  v38 = v17;

  sub_24213D508(v8, v10, v12 & 1);

  KeyPath = swift_getKeyPath();
  v19 = swift_getKeyPath();
  v20 = v16 & 1;
  v21 = sub_242143AEC();
  sub_24214387C();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  result = sub_242143D5C();
  if (a4)
  {
    v32 = HIBYTE(a4) & 0xF;
    if ((a4 & 0x2000000000000000) == 0)
    {
      v32 = a3 & 0xFFFFFFFFFFFFLL;
    }

    if (v32)
    {
      v33 = result;
      v34 = v31;

      v31 = v34;
      result = v33;
      v32 = a3;
      v35 = a1;
    }

    else
    {
      v35 = 0;
      a2 = 0;
      a4 = 0;
    }
  }

  else
  {
    v35 = 0;
    a2 = 0;
    v32 = 0;
  }

  *a5 = v40;
  *(a5 + 8) = v39;
  *(a5 + 16) = v20;
  *(a5 + 24) = v38;
  *(a5 + 32) = KeyPath;
  *(a5 + 40) = 0;
  *(a5 + 48) = 1;
  *(a5 + 56) = v19;
  *(a5 + 64) = 1;
  *(a5 + 66) = 1;
  *(a5 + 72) = v21;
  *(a5 + 80) = v23;
  *(a5 + 88) = v25;
  *(a5 + 96) = v27;
  *(a5 + 104) = v29;
  *(a5 + 112) = 0;
  *(a5 + 120) = v35;
  *(a5 + 128) = a2;
  *(a5 + 136) = v32;
  *(a5 + 144) = a4;
  *(a5 + 152) = result;
  *(a5 + 160) = v31;
  return result;
}

uint64_t sub_24213CD08(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC8CA50, &qword_242145368);
  MEMORY[0x28223BE20](v2 - 8);
  sub_24213D954(a1, &v5 - v3, &qword_27EC8CA50, &qword_242145368);
  return sub_24214393C();
}

unint64_t sub_24213CDB0()
{
  result = qword_27EC8C908;
  if (!qword_27EC8C908)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EC8C8E8, &qword_242145038);
    sub_24213CE3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC8C908);
  }

  return result;
}

unint64_t sub_24213CE3C()
{
  result = qword_27EC8C910;
  if (!qword_27EC8C910)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EC8C8E0, &qword_242145030);
    sub_24213CEF4();
    sub_24213E090(&qword_27EC8C938, &qword_27EC8C940, &qword_242145088, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC8C910);
  }

  return result;
}

unint64_t sub_24213CEF4()
{
  result = qword_27EC8C918;
  if (!qword_27EC8C918)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EC8C8D8, &qword_242145028);
    sub_24213CFAC();
    sub_24213E090(&qword_27EC8C930, &qword_27EC8C900, &qword_242145050, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC8C918);
  }

  return result;
}

unint64_t sub_24213CFAC()
{
  result = qword_27EC8C920;
  if (!qword_27EC8C920)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EC8C8D0, &qword_242145020);
    sub_24213E090(&qword_27EC8C928, &qword_27EC8C8C8, &qword_242145018, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC8C920);
  }

  return result;
}

unint64_t sub_24213D064()
{
  result = qword_27EC8C948;
  if (!qword_27EC8C948)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EC8C8B8, &qword_242145008);
    sub_24213D11C();
    sub_24213E090(&qword_27EC8C938, &qword_27EC8C940, &qword_242145088, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC8C948);
  }

  return result;
}

unint64_t sub_24213D11C()
{
  result = qword_27EC8C950;
  if (!qword_27EC8C950)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EC8C8F8, &qword_242145048);
    sub_24213E090(&qword_27EC8C958, &qword_27EC8C960, &qword_242145090, MEMORY[0x277CE1198]);
    sub_24213E090(&qword_27EC8C930, &qword_27EC8C900, &qword_242145050, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC8C950);
  }

  return result;
}

uint64_t sub_24213D20C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_24213D2C8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_24213D324(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_24213D390()
{
  result = qword_27EC8C970;
  if (!qword_27EC8C970)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EC8C978, &qword_242145148);
    sub_24213CDB0();
    sub_24213D064();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC8C970);
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_24213D428(uint64_t a1, int a2)
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

uint64_t sub_24213D470(uint64_t result, int a2, int a3)
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

void sub_24213D508(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

double sub_24213D528(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_24213D53C(a1, a2);
  }

  return result;
}

double sub_24213D53C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }

  return result;
}

uint64_t sub_24213D590(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_24213D5A4(result, a2);
  }

  return result;
}

uint64_t sub_24213D5A4(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_24213D5F8()
{
  result = qword_27EC8C9E0;
  if (!qword_27EC8C9E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EC8C9C8, &qword_242145310);
    sub_24213D684();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC8C9E0);
  }

  return result;
}

unint64_t sub_24213D684()
{
  result = qword_27EC8C9E8;
  if (!qword_27EC8C9E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EC8C9F0, &qword_242145328);
    sub_24213D73C();
    sub_24213E090(&qword_27EC8CA18, &qword_27EC8C998, &qword_2421452B0, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC8C9E8);
  }

  return result;
}

unint64_t sub_24213D73C()
{
  result = qword_27EC8C9F8;
  if (!qword_27EC8C9F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EC8CA00, &qword_242145330);
    sub_24213D7C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC8C9F8);
  }

  return result;
}

unint64_t sub_24213D7C8()
{
  result = qword_27EC8CA08;
  if (!qword_27EC8CA08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EC8CA10, &qword_242145338);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC8CA08);
  }

  return result;
}

unint64_t sub_24213D84C()
{
  result = qword_27EC8CA20;
  if (!qword_27EC8CA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC8CA20);
  }

  return result;
}

uint64_t sub_24213D8A0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_24213D900()
{
  result = qword_27EC8CA48;
  if (!qword_27EC8CA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC8CA48);
  }

  return result;
}

uint64_t sub_24213D954(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_24213D9BC()
{
  result = qword_27EC8CA58;
  if (!qword_27EC8CA58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EC8CA60, &qword_242145370);
    sub_24213DA74();
    sub_24213E090(&qword_27EC8CAC8, &qword_27EC8CAD0, &qword_2421453A8, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC8CA58);
  }

  return result;
}

unint64_t sub_24213DA74()
{
  result = qword_27EC8CA68;
  if (!qword_27EC8CA68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EC8CA70, &qword_242145378);
    sub_24213DB00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC8CA68);
  }

  return result;
}

unint64_t sub_24213DB00()
{
  result = qword_27EC8CA78;
  if (!qword_27EC8CA78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EC8CA80, &qword_242145380);
    sub_24213DB8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC8CA78);
  }

  return result;
}

unint64_t sub_24213DB8C()
{
  result = qword_27EC8CA88;
  if (!qword_27EC8CA88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EC8CA90, &qword_242145388);
    sub_24213DC44();
    sub_24213E090(&qword_27EC8CAB8, &qword_27EC8CAC0, &qword_2421453A0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC8CA88);
  }

  return result;
}

unint64_t sub_24213DC44()
{
  result = qword_27EC8CA98;
  if (!qword_27EC8CA98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EC8CAA0, &qword_242145390);
    sub_24213E090(&qword_27EC8CAA8, &qword_27EC8CAB0, &qword_242145398, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC8CA98);
  }

  return result;
}

unint64_t sub_24213DCFC()
{
  result = qword_27EC8CAD8;
  if (!qword_27EC8CAD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EC8C9B0, &qword_2421452F8);
    sub_24213DD88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC8CAD8);
  }

  return result;
}

unint64_t sub_24213DD88()
{
  result = qword_27EC8CAE0;
  if (!qword_27EC8CAE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EC8C9A8, &qword_2421452F0);
    sub_24213DE40();
    sub_24213E090(&qword_27EC8CB20, &qword_27EC8CB28, &unk_2421453C0, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC8CAE0);
  }

  return result;
}

unint64_t sub_24213DE40()
{
  result = qword_27EC8CAE8;
  if (!qword_27EC8CAE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EC8C9A0, &qword_2421452B8);
    sub_24213DECC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC8CAE8);
  }

  return result;
}

unint64_t sub_24213DECC()
{
  result = qword_27EC8CAF0;
  if (!qword_27EC8CAF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EC8C990, &qword_2421452A8);
    sub_24213DF84();
    sub_24213E090(&qword_27EC8CA18, &qword_27EC8C998, &qword_2421452B0, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC8CAF0);
  }

  return result;
}

unint64_t sub_24213DF84()
{
  result = qword_27EC8CAF8;
  if (!qword_27EC8CAF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EC8CB00, &qword_2421453B0);
    sub_24213E03C();
    sub_24213E090(&qword_27EC8CB10, &qword_27EC8CB18, &qword_2421453B8, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC8CAF8);
  }

  return result;
}

unint64_t sub_24213E03C()
{
  result = qword_27EC8CB08;
  if (!qword_27EC8CB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC8CB08);
  }

  return result;
}

uint64_t sub_24213E090(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

id sub_24213E0E4(void *a1)
{
  *&v1[OBJC_IVAR____TtC18BusinessServicesUI17BrandCardCopyMenu_editMenuInteraction] = 0;
  v3 = &v1[OBJC_IVAR____TtC18BusinessServicesUI17BrandCardCopyMenu_name];
  *v3 = 0;
  *(v3 + 1) = 0;
  v4 = &v1[OBJC_IVAR____TtC18BusinessServicesUI17BrandCardCopyMenu_sip];
  v5 = type metadata accessor for BrandCardCopyMenu();
  *v4 = 0;
  *(v4 + 1) = 0;
  v10.receiver = v1;
  v10.super_class = v5;
  v6 = objc_msgSendSuper2(&v10, sel_initWithCoder_, a1);
  v7 = v6;
  if (v6)
  {
    v8 = v6;
    sub_24213E258();
  }

  return v7;
}

void sub_24213E258()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D754C8]) initWithDelegate_];
  v2 = *&v0[OBJC_IVAR____TtC18BusinessServicesUI17BrandCardCopyMenu_editMenuInteraction];
  *&v0[OBJC_IVAR____TtC18BusinessServicesUI17BrandCardCopyMenu_editMenuInteraction] = v1;
  v3 = v1;

  if (v3)
  {
    [v0 addInteraction_];

    v4 = [objc_allocWithZone(MEMORY[0x277D75708]) initWithTarget:v0 action:sel_handleLongPress_];
    [v4 setMinimumPressDuration_];
    [v0 addGestureRecognizer_];
  }

  else
  {
    __break(1u);
  }
}

void sub_24213E3A8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = [objc_opt_self() generalPasteboard];
  if (*(a2 + *a3 + 8))
  {

    v6 = sub_242143DBC();
  }

  else
  {
    v6 = 0;
  }

  [v5 setString_];
}

id sub_24213E4D4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BrandCardCopyMenu();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_24213E590()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  type metadata accessor for BrandCardCopyMenu();
  v5 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  v6 = [v5 init];
  v7 = &v6[OBJC_IVAR____TtC18BusinessServicesUI17BrandCardCopyMenu_name];
  *v7 = v2;
  *(v7 + 1) = v1;

  v8 = &v6[OBJC_IVAR____TtC18BusinessServicesUI17BrandCardCopyMenu_sip];
  *v8 = v4;
  *(v8 + 1) = v3;

  return v6;
}

uint64_t sub_24213E664(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24213EC10();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_24213E6C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24213EC10();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_24213E72C(uint64_t a1)
{
  sub_24213EC10();
  sub_242143A8C();
  __break(1u);
}

void sub_24213E754()
{
  [v0 bounds];
  CGRectGetMidX(v4);
  [v0 bounds];
  CGRectGetMinY(v5);
  CGPointMake();
  sub_24213EB54(0, &qword_27EC8CBC8, 0x277D754C0);
  v2 = sub_242143E9C();
  v1 = *&v0[OBJC_IVAR____TtC18BusinessServicesUI17BrandCardCopyMenu_editMenuInteraction];
  [v1 presentEditMenuWithConfiguration_];
}

uint64_t sub_24213E838()
{
  sub_24213EB54(0, &qword_27EC8CBB0, 0x277D750C8);
  v1 = type metadata accessor for FrameworkBundleAnchor();
  v2 = [objc_allocWithZone(v1) init];
  swift_getObjectType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = objc_opt_self();
  v5 = [v4 bundleForClass_];

  sub_24214364C();
  v6 = swift_allocObject();
  *(v6 + 16) = v0;
  v7 = v0;
  v8 = sub_242143EBC();
  v9 = [objc_allocWithZone(v1) init];
  swift_getObjectType();
  v10 = [v4 bundleForClass_];

  sub_24214364C();
  *(swift_allocObject() + 16) = v7;
  v11 = v7;
  v12 = sub_242143EBC();
  sub_24213EB54(0, &qword_27EC8CBB8, 0x277D75710);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC8CBC0, &qword_242144DB0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_2421453D0;
  *(v13 + 32) = v8;
  *(v13 + 40) = v12;
  return sub_242143EAC();
}

uint64_t sub_24213EB54(uint64_t a1, unint64_t *a2, void *a3)
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

unint64_t sub_24213EBBC()
{
  result = qword_27EC8CBD0;
  if (!qword_27EC8CBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC8CBD0);
  }

  return result;
}

unint64_t sub_24213EC10()
{
  result = qword_27EC8CBD8;
  if (!qword_27EC8CBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC8CBD8);
  }

  return result;
}

id sub_24213ECA4(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for FrameworkBundleAnchor();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_24213ECFC(uint64_t a1, uint64_t a2)
{
  v3 = sub_24214370C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC8CC40, &qword_242145558);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v19 - v8;
  sub_2421436FC();
  sub_2421436EC();
  (*(v4 + 8))(v6, v3);
  v10 = sub_2421436DC();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_24213EF84(v9);
  }

  else
  {
    sub_2421436CC();
    (*(v11 + 8))(v9, v10);
    sub_242143DFC();
  }

  v12 = sub_242143DBC();
  v13 = sub_242143DBC();

  v14 = CFPhoneNumberCreate();

  if (!v14)
  {
    goto LABEL_8;
  }

  v15 = v14;
  String = CFPhoneNumberCreateString();
  if (!String)
  {

LABEL_8:

    return a1;
  }

  v17 = String;
  a1 = sub_242143DCC();

  return a1;
}

uint64_t sub_24213EF84(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC8CC40, &qword_242145558);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL sub_24213EFEC(uint64_t a1, uint64_t a2)
{

  do
  {
    sub_242143E2C();
    v3 = v2;
    if (!v2)
    {
      break;
    }

    v4 = sub_242143DAC();
  }

  while ((v4 & 1) != 0);

  return v3 == 0;
}

uint64_t sub_24213F074(uint64_t *TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x28223BE20](TupleTypeMetadata);
    v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  MEMORY[0x28223BE20](TupleTypeMetadata);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v22 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v23 = (v6 + 32);
    v24 = a2;
    do
    {
      if (a2 == 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = *v23;
      }

      v27 = *v22++;
      v26 = v27;
      v28 = *v5++;
      (*(*(v26 - 8) + 16))(&v21[v25], v28);
      v23 += 4;
      --v24;
    }

    while (v24);
  }

  return sub_242143D7C();
}

id sub_24213F244(int a1, id a2)
{
  result = [a2 hoursConfig];
  if (result)
  {
    sub_242143EEC();
    swift_unknownObjectRelease();
    sub_2421428D8(v7, &v8);
    sub_2421428E8();
    swift_dynamicCast();
    v3 = [objc_opt_self() viewModelForBusinessConfiguration:v6 showHoursAndOpenState:1];

    v4 = [objc_allocWithZone(MEMORY[0x277D266A0]) initWithViewModel_];
    LODWORD(v5) = 1144750080;
    [v4 setContentHuggingPriority:1 forAxis:v5];
    [v4 setDirectionalLayoutMargins_];

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24213F37C(uint64_t result, char a2, int a3, char a4, id a5)
{
  if (a2)
  {
    [a5 intrinsicContentSize];
    result = v7;
  }

  if (a4)
  {
    v8 = result;
    [a5 systemLayoutSizeFittingSize_];
    return v8;
  }

  return result;
}

uint64_t sub_24213F3F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_242142988();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_24213F45C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_242142988();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_24213F4C0(uint64_t a1)
{
  sub_242142988();
  sub_242143A8C();
  __break(1u);
}

id sub_24213F4E8(int a1, id a2)
{
  result = [a2 hoursConfig];
  if (result)
  {
    sub_242143EEC();
    swift_unknownObjectRelease();
    sub_2421428D8(v7, &v8);
    sub_2421428E8();
    swift_dynamicCast();
    v3 = [objc_allocWithZone(MEMORY[0x277D26698]) initWithBusinessHoursConfiguration_];

    v4 = v3;
    LODWORD(v5) = 1144750080;
    [v4 setContentHuggingPriority:1 forAxis:v5];
    [v4 setDirectionalLayoutMargins_];

    [v4 setBottomHairlineHidden_];
    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24213F604(uint64_t a1, char a2, uint64_t a3, uint64_t a4, id a5)
{
  if (a2)
  {
    [a5 intrinsicContentSize];
    a1 = v7;
  }

  [a5 intrinsicContentSize];
  return a1;
}

uint64_t sub_24213F660(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_242142934();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_24213F6C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_242142934();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_24213F728(uint64_t a1)
{
  sub_242142934();
  sub_242143A8C();
  __break(1u);
}

uint64_t BrandCardRowView.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v26 = a1;
  v30 = a2;
  v25[0] = *(a1 + 16);
  swift_getTupleTypeMetadata2();
  v25[2] = sub_242143D6C();
  v25[1] = swift_getWitnessTable();
  v3 = sub_242143D2C();
  v28 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = v25 - v4;
  v6 = sub_2421438BC();
  v29 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v25 - v7;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EC8CC48, &qword_242145590);
  v9 = sub_2421438BC();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v27 = v25 - v14;
  v15 = *v2;
  v16 = v2[3];
  sub_2421439EC();
  v17 = *(v26 + 24);
  v31 = v25[0];
  v32 = v17;
  v33 = v15;
  v34 = *(v2 + 1);
  v35 = v16;
  sub_242143D1C();
  WitnessTable = swift_getWitnessTable();
  sub_242143C4C();
  (*(v28 + 8))(v5, v3);
  v40 = xmmword_242145560;
  v41 = xmmword_242145560;
  v42 = 0;
  v38 = WitnessTable;
  v39 = MEMORY[0x277CDF918];
  v19 = swift_getWitnessTable();
  sub_242143C1C();
  (*(v29 + 8))(v8, v6);
  v20 = sub_24213E090(&qword_27EC8CC50, &qword_27EC8CC48, &qword_242145590, MEMORY[0x277CE04A0]);
  v36 = v19;
  v37 = v20;
  swift_getWitnessTable();
  v21 = *(v10 + 16);
  v22 = v27;
  v21(v27, v13, v9);
  v23 = *(v10 + 8);
  v23(v13, v9);
  v21(v30, v22, v9);
  return (v23)(v22, v9);
}

uint64_t sub_24213FB98@<X0>(uint64_t a1@<X0>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v41 = a5;
  v42 = a6;
  v39 = a4;
  v40 = a3;
  v43 = a7;
  v44 = *(a5 - 8);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = &v36[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = MEMORY[0x28223BE20](v7);
  v38 = &v36[-v11];
  v48 = v10;
  v49 = v12;
  sub_242139F44();

  v13 = sub_242143BEC();
  v15 = v14;
  v17 = v16;
  sub_242143C8C();
  v18 = sub_242143B9C();
  v20 = v19;
  v22 = v21;

  sub_24213D508(v13, v15, v17 & 1);

  sub_242143B0C();
  v23 = sub_242143BCC();
  v25 = v24;
  v37 = v26;
  v28 = v27;

  sub_24213D508(v18, v20, v22 & 1);

  v40(v29);
  v30 = v44;
  v31 = *(v44 + 16);
  v32 = v38;
  v33 = v41;
  v31(v38, v9, v41);
  v34 = *(v30 + 8);
  v44 = v30 + 8;
  v34(v9, v33);
  v48 = v23;
  v49 = v25;
  LOBYTE(v30) = v37 & 1;
  v50 = v37 & 1;
  v51 = v28;
  v52[0] = &v48;
  v31(v9, v32, v33);
  v52[1] = v9;
  sub_242142CF0(v23, v25, v30);

  v47[0] = MEMORY[0x277CE0BD8];
  v47[1] = v33;
  v45 = MEMORY[0x277CE0BC8];
  v46 = v42;
  sub_24213F074(v52, 2uLL, v47);
  sub_24213D508(v23, v25, v30);

  v34(v32, v33);
  v34(v9, v33);
  sub_24213D508(v48, v49, v50);
}

uint64_t BrandCardDetailView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v55 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC8CC58, &qword_242145598);
  MEMORY[0x28223BE20](v3);
  v5 = (v43 - v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC8CC60, &qword_2421455A0);
  MEMORY[0x28223BE20](v6);
  v52 = v43 - v7;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC8CC68, &qword_2421455A8);
  MEMORY[0x28223BE20](v47);
  v46 = v43 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC8CC70, &qword_2421455B0);
  v50 = *(v9 - 8);
  v51 = v9;
  v10 = MEMORY[0x28223BE20](v9);
  v48 = v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v49 = v43 - v12;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC8CC78, &qword_2421455B8);
  MEMORY[0x28223BE20](v45);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC8CC80, &qword_2421455C0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v43 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC8CC88, &qword_2421455C8);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v20 = v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = v43 - v21;
  v23 = *v2;
  if (*v2)
  {
    v43[2] = v3;
    v43[3] = v6;
    v44 = v5;
    v54 = v23;
    v24 = [v54 localizedDescription];
    v53 = v22;
    if (v24)
    {
      v25 = v24;
      v26 = sub_242143DCC();
      v28 = v27;

      v43[1] = v43;
      MEMORY[0x28223BE20](v29);
      v43[-2] = v26;
      v43[-1] = v28;
      sub_2421406B8();
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC8CCC8, &qword_2421455E8);
      v31 = sub_2421425C4();
      v56 = v30;
      v57 = v31;
      swift_getOpaqueTypeConformance2();
      sub_242143D3C();

      (*(v14 + 32))(v22, v16, v13);
      v32 = (*(v14 + 56))(v22, 0, 1, v13);
    }

    else
    {
      v32 = (*(v14 + 56))(v22, 1, 1, v13);
    }

    MEMORY[0x28223BE20](v32);
    v34 = v54;
    v43[-2] = v54;
    sub_242142100(v34, v46);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC8CC98, &qword_2421455D0);
    sub_242142450();
    v45 = MEMORY[0x277CE14C0];
    sub_24213E090(&qword_27EC8CCB8, &qword_27EC8CC98, &qword_2421455D0, MEMORY[0x277CE14C0]);
    v35 = v49;
    sub_242143D3C();
    sub_24213D954(v53, v20, &qword_27EC8CC88, &qword_2421455C8);
    v36 = v50;
    v37 = v51;
    v38 = *(v50 + 16);
    v39 = v48;
    v38(v48, v35, v51);
    v40 = v52;
    sub_24213D954(v20, v52, &qword_27EC8CC88, &qword_2421455C8);
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC8CCC0, &qword_2421455E0);
    v38((v40 + *(v41 + 48)), v39, v37);
    v42 = *(v36 + 8);
    v42(v39, v37);
    sub_24213D8A0(v20, &qword_27EC8CC88, &qword_2421455C8);
    sub_24213D954(v40, v44, &qword_27EC8CC60, &qword_2421455A0);
    swift_storeEnumTagMultiPayload();
    sub_24213E090(&qword_27EC8CC90, &qword_27EC8CC60, &qword_2421455A0, v45);
    sub_242143ABC();

    sub_24213D8A0(v40, &qword_27EC8CC60, &qword_2421455A0);
    v42(v35, v37);
    return sub_24213D8A0(v53, &qword_27EC8CC88, &qword_2421455C8);
  }

  else
  {
    *v5 = sub_242143C6C();
    swift_storeEnumTagMultiPayload();
    sub_24213E090(&qword_27EC8CC90, &qword_27EC8CC60, &qword_2421455A0, MEMORY[0x277CE14C0]);
    return sub_242143ABC();
  }
}

__n128 sub_2421405C4@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __n128 *a3@<X8>)
{
  sub_242139F44();

  v4 = sub_242143BEC();
  v6 = v5;
  v8 = v7;
  sub_242143B1C();
  v9 = sub_242143BCC();
  v11 = v10;
  v13 = v12;
  v15 = v14;

  sub_24213D508(v4, v6, v8 & 1);

  a3->n128_u64[0] = v9;
  a3->n128_u64[1] = v11;
  a3[1].n128_u8[0] = v13 & 1;
  a3[1].n128_u64[1] = v15;
  __asm { FMOV            V0.2D, #16.0 }

  a3[2] = result;
  a3[3] = result;
  a3[4].n128_u8[0] = 0;
  return result;
}

uint64_t sub_2421406B8()
{
  v0 = sub_24214388C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(type metadata accessor for FrameworkBundleAnchor()) init];
  swift_getObjectType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = [objc_opt_self() bundleForClass_];

  v7 = sub_24214364C();
  v9 = v8;

  *&v23[0] = v7;
  *(&v23[0] + 1) = v9;
  sub_242139F44();
  v10 = sub_242143BEC();
  v22 = v11 & 1;
  v21 = 0;
  *&v16 = v10;
  *(&v16 + 1) = v12;
  LOBYTE(v17) = v11 & 1;
  *(&v17 + 1) = v13;
  v18 = xmmword_242145570;
  v19 = xmmword_242145580;
  v20 = 0;
  (*(v1 + 104))(v3, *MEMORY[0x277CDF350], v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC8CCC8, &qword_2421455E8);
  sub_2421425C4();
  sub_242143C3C();
  (*(v1 + 8))(v3, v0);
  v23[2] = v18;
  v23[3] = v19;
  v24 = v20;
  v23[0] = v16;
  v23[1] = v17;
  return sub_24213D8A0(v23, &qword_27EC8CCC8, &qword_2421455E8);
}

double sub_242140914@<D0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v180 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC8C830, &qword_242144ED0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v205 = &v177 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v207 = &v177 - v7;
  MEMORY[0x28223BE20](v6);
  v208 = &v177 - v8;
  v9 = sub_24214369C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v186 = &v177 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v12);
  v185 = &v177 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v203 = &v177 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v204 = &v177 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v201 = &v177 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v177 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v177 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = &v177 - v27;
  v29 = [a1 website];
  v202 = a1;
  v198 = v11;
  v199 = v10;
  if (v29)
  {
    v30 = v29;
    sub_24214366C();

    v31 = *(v10 + 32);
    v31(v28, v26, v9);
    v206 = "BRAND_CARD_PHONE_HEADER";
    v32 = [objc_allocWithZone(type metadata accessor for FrameworkBundleAnchor()) init];
    swift_getObjectType();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v34 = [objc_opt_self() bundleForClass_];

    v197 = sub_24214364C();
    v196 = v35;

    a1 = v202;
    v31(v23, v28, v9);
    v36 = (*(v10 + 80) + 16) & ~*(v10 + 80);
    v195 = swift_allocObject();
    v31((v195 + v36), v23, v9);
    v194 = sub_242142D54;
  }

  else
  {
    v197 = 0;
    v196 = 0;
    v194 = 0;
    v195 = 0;
  }

  v37 = v9;
  v38 = v23;
  v39 = [a1 primaryPhoneNumber];
  if (!v39)
  {
    v193 = 0;
    v191 = 0;
    v192 = 0;
    v208 = 1;
    goto LABEL_8;
  }

  v40 = v39;
  v41 = sub_242143DCC();
  v43 = v42;

  if (sub_24213EFEC(v41, v43))
  {

    v193 = 0;
    v191 = 0;
    v192 = 0;
    v208 = 1;
    a1 = v202;
LABEL_8:
    v44 = v199;
    goto LABEL_9;
  }

  *&v213[0] = v41;
  *(&v213[0] + 1) = v43;
  v211 = 980182388;
  v212 = 0xE400000000000000;
  v209 = 0;
  v210 = 0xE000000000000000;
  sub_242139F44();
  v50 = sub_242143EDC();
  v52 = v51;

  v206 = sub_24213ECFC(v50, v52);
  v54 = v53;
  *&v213[0] = 980182388;
  *(&v213[0] + 1) = 0xE400000000000000;
  MEMORY[0x245D087A0](v50, v52);

  v55 = v208;
  sub_24214368C();

  v44 = v199;
  if ((*(v199 + 48))(v55, 1, v37) == 1)
  {

    sub_24213D8A0(v55, &qword_27EC8C830, &qword_242144ED0);
    v193 = 0;
    v208 = 0;
    v191 = 0;
    v192 = 0;
  }

  else
  {
    v200 = v54;
    v64 = *(v44 + 32);
    v65 = v201;
    v64(v201, v55, v37);
    v66 = [objc_allocWithZone(type metadata accessor for FrameworkBundleAnchor()) init];
    swift_getObjectType();
    v67 = swift_getObjCClassFromMetadata();
    v68 = [objc_opt_self() bundleForClass_];

    v193 = sub_24214364C();
    v208 = v69;

    v64(v23, v65, v37);
    v70 = (*(v44 + 80) + 32) & ~*(v44 + 80);
    v71 = swift_allocObject();
    v72 = v200;
    *(v71 + 16) = v206;
    *(v71 + 24) = v72;
    v192 = v71;
    v64(v71 + v70, v23, v37);
    v191 = sub_242142C00;
  }

  a1 = v202;
LABEL_9:
  v45 = [a1 messageNumber];
  if (!v45)
  {
LABEL_17:
    v206 = 0;
    v207 = 0;
    v189 = 0;
    v190 = 0;
    goto LABEL_18;
  }

  v46 = v45;
  v47 = sub_242143DCC();
  v49 = v48;

  if (sub_24213EFEC(v47, v49))
  {

    goto LABEL_17;
  }

  v56 = v207;
  sub_24214368C();
  if ((*(v44 + 48))(v56, 1, v37) == 1)
  {

    sub_24213D8A0(v56, &qword_27EC8C830, &qword_242144ED0);
    goto LABEL_17;
  }

  v73 = v199 + 32;
  v74 = *(v199 + 32);
  v74(v204, v56, v37);
  *&v213[0] = v47;
  *(&v213[0] + 1) = v49;
  v211 = 980643187;
  v212 = 0xE400000000000000;
  v209 = 0;
  v210 = 0xE000000000000000;
  sub_242139F44();
  v75 = sub_242143EDC();
  v77 = v76;

  v78 = sub_24213ECFC(v75, v77);
  v80 = v79;

  v81 = [objc_allocWithZone(type metadata accessor for FrameworkBundleAnchor()) init];
  swift_getObjectType();
  v82 = swift_getObjCClassFromMetadata();
  v83 = [objc_opt_self() bundleForClass_];

  a1 = v202;
  v84 = sub_24214364C();
  v206 = v85;
  v207 = v84;

  v74(v23, v204, v37);
  v86 = (*(v73 + 48) + 32) & ~*(v73 + 48);
  v87 = swift_allocObject();
  *(v87 + 16) = v78;
  *(v87 + 24) = v80;
  v190 = v87;
  v74(v87 + v86, v23, v37);
  v44 = v199;
  v189 = sub_242142D50;
LABEL_18:
  v57 = [a1 emailAddress];
  if (!v57)
  {
LABEL_21:
    v205 = 0;
    v188 = 0;
    v203 = 0;
    v204 = 1;
    goto LABEL_28;
  }

  v58 = v57;
  v59 = sub_242143DCC();
  v61 = v60;

  if (sub_24213EFEC(v59, v61))
  {

    goto LABEL_21;
  }

  *&v213[0] = v59;
  *(&v213[0] + 1) = v61;
  v211 = 0x3A6F746C69616DLL;
  v212 = 0xE700000000000000;
  v209 = 0;
  v210 = 0xE000000000000000;
  sub_242139F44();
  v62 = sub_242143EDC();
  *&v213[0] = 0x3A6F746C69616DLL;
  *(&v213[0] + 1) = 0xE700000000000000;
  MEMORY[0x245D087A0](v62);

  v63 = v205;
  sub_24214368C();

  if ((*(v44 + 48))(v63, 1, v37) == 1)
  {

    sub_24213D8A0(v63, &qword_27EC8C830, &qword_242144ED0);
    v204 = 0;
    v205 = 0;
    v188 = 0;
    v203 = 0;
  }

  else
  {
    v88 = v44 + 32;
    v89 = *(v44 + 32);
    v90 = v203;
    v89(v203, v63, v37);
    v91 = [objc_allocWithZone(type metadata accessor for FrameworkBundleAnchor()) init];
    swift_getObjectType();
    v92 = swift_getObjCClassFromMetadata();
    v93 = [objc_opt_self() bundleForClass_];

    v44 = v199;
    v94 = sub_24214364C();
    v204 = v95;
    v205 = v94;

    v96 = v90;
    v38 = v23;
    v89(v23, v96, v37);
    v97 = (*(v88 + 48) + 32) & ~*(v88 + 48);
    v98 = swift_allocObject();
    *(v98 + 16) = v59;
    *(v98 + 24) = v61;
    v203 = v98;
    v89(v98 + v97, v23, v37);
    v188 = sub_242142D50;
  }

  a1 = v202;
LABEL_28:
  v99 = [a1 address];
  v184 = v38;
  if (!v99)
  {
LABEL_31:
    v201 = 0;
    v202 = 0;
    v187 = 0;
    v200 = 0;
    goto LABEL_33;
  }

  v100 = v99;
  v101 = sub_242143DCC();
  v103 = v102;

  if (sub_24213EFEC(v101, v103))
  {

    goto LABEL_31;
  }

  v104 = [objc_allocWithZone(type metadata accessor for FrameworkBundleAnchor()) init];
  swift_getObjectType();
  v105 = swift_getObjCClassFromMetadata();
  v106 = [objc_opt_self() bundleForClass_];

  v44 = v199;
  v107 = sub_24214364C();
  v201 = v108;
  v202 = v107;

  v109 = swift_allocObject();
  *(v109 + 16) = v101;
  *(v109 + 24) = v103;
  v200 = v109;
  v187 = sub_242142AB8;
LABEL_33:
  v110 = [a1 termsAndConditionsURL];
  if (v110)
  {
    v111 = v186;
    v112 = v110;
    sub_24214366C();

    v113 = *(v44 + 32);
    v114 = v185;
    v113(v185, v111, v37);
    v115 = [objc_allocWithZone(type metadata accessor for FrameworkBundleAnchor()) init];
    swift_getObjectType();
    v116 = swift_getObjCClassFromMetadata();
    v117 = [objc_opt_self() bundleForClass_];

    v186 = sub_24214364C();
    v199 = v118;

    v119 = v184;
    v113(v184, v114, v37);
    v120 = (*(v44 + 80) + 16) & ~*(v44 + 80);
    v185 = swift_allocObject();
    v113(v185 + v120, v119, v37);
    v198 = sub_242142AB4;
  }

  else
  {
    v186 = 0;
    v198 = 0;
    v199 = 0;
    v185 = 0;
  }

  v121 = [a1 localizedResponseTime];
  if (v121)
  {
    v122 = v121;
    v123 = sub_242143DCC();
    v125 = v124;

    v126 = 0x278D3E000uLL;
    if (sub_24213EFEC(v123, v125))
    {

      v184 = 0;
      v179 = 0;
      v182 = 0;
      v183 = 0;
    }

    else
    {
      v127 = [objc_allocWithZone(type metadata accessor for FrameworkBundleAnchor()) init];
      swift_getObjectType();
      v128 = swift_getObjCClassFromMetadata();
      v129 = [objc_opt_self() bundleForClass_];

      v184 = sub_24214364C();
      v179 = v130;

      v131 = swift_allocObject();
      *(v131 + 16) = v123;
      *(v131 + 24) = v125;
      v183 = v131;
      v182 = sub_242142D58;
    }
  }

  else
  {
    v184 = 0;
    v179 = 0;
    v182 = 0;
    v183 = 0;
    v126 = 0x278D3E000;
  }

  if ([a1 hoursConfig])
  {
    sub_242143EEC();
    swift_unknownObjectRelease();
    sub_24213D8A0(v213, &qword_27EC8CD90, &qword_242145950);
    v132 = [objc_allocWithZone(type metadata accessor for FrameworkBundleAnchor()) init];
    swift_getObjectType();
    v133 = swift_getObjCClassFromMetadata();
    v134 = [objc_opt_self() *(v126 + 3808)];

    v178 = sub_24214364C();
    v181 = v135;

    v136 = swift_allocObject();
    *(v136 + 16) = a1;
    v137 = a1;
    v138 = sub_242142AAC;
  }

  else
  {
    memset(v213, 0, sizeof(v213));
    sub_24213D8A0(v213, &qword_27EC8CD90, &qword_242145950);
    v178 = 0;
    v181 = 0;
    v138 = 0;
    v136 = 0;
  }

  v139 = v197;
  v140 = v180;
  *v180 = v197;
  v141 = v139;
  v197 = v139;
  v142 = v196;
  v140[1] = v196;
  v143 = v142;
  v196 = v142;
  v144 = v194;
  v140[2] = v194;
  v145 = v144;
  v194 = v144;
  v146 = v195;
  v140[3] = v195;
  v147 = v146;
  v195 = v146;
  v148 = v193;
  v149 = v208;
  v140[4] = v193;
  v140[5] = v149;
  v150 = v191;
  v151 = v192;
  v140[6] = v191;
  v140[7] = v151;
  v192 = v151;
  v152 = v206;
  v140[8] = v207;
  v140[9] = v152;
  v153 = v189;
  v154 = v190;
  v140[10] = v189;
  v140[11] = v154;
  v190 = v154;
  v155 = v204;
  v140[12] = v205;
  v140[13] = v155;
  v156 = v188;
  v158 = v202;
  v157 = v203;
  v140[14] = v188;
  v140[15] = v157;
  v159 = v201;
  v140[16] = v158;
  v140[17] = v159;
  v160 = v187;
  v161 = v200;
  v140[18] = v187;
  v140[19] = v161;
  v162 = v198;
  v163 = v199;
  v140[20] = v186;
  v140[21] = v163;
  v140[22] = v162;
  v164 = v184;
  v140[23] = v185;
  v140[24] = v164;
  v165 = v179;
  v166 = v182;
  v140[25] = v179;
  v140[26] = v166;
  v167 = v178;
  v140[27] = v183;
  v140[28] = v167;
  v140[29] = v181;
  v140[30] = v138;
  v177 = v136;
  v140[31] = v136;
  v168 = v138;
  sub_242142A00(v141, v143, v145, v147);
  sub_2421429DC(v148, v208, v150, v151);
  sub_242142A00(v207, v206, v153, v154);
  sub_2421429DC(v205, v204, v156, v203);
  sub_242142A00(v202, v201, v160, v200);
  v169 = v186;
  v170 = v185;
  sub_242142A00(v186, v199, v198, v185);
  v171 = v184;
  v172 = v182;
  v173 = v183;
  sub_242142A00(v184, v165, v182, v183);
  v174 = v181;
  v175 = v177;
  sub_242142A00(v167, v181, v168, v177);
  sub_242142A44(v167, v174, v168, v175);
  sub_242142A44(v171, v165, v172, v173);
  sub_242142A44(v169, v199, v198, v170);
  sub_242142A44(v202, v201, v187, v200);
  sub_242142A88(v205, v204, v188, v203);
  sub_242142A44(v207, v206, v189, v190);
  sub_242142A88(v193, v208, v191, v192);
  return sub_242142A44(v197, v196, v194, v195);
}

uint64_t sub_242141DB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24214369C();
  MEMORY[0x28223BE20](v6);
  v10[0] = a1;
  v10[1] = a2;
  (*(v8 + 16))(v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a3);
  sub_242139F44();

  return sub_242143B8C();
}

uint64_t sub_242141EB4(uint64_t a1)
{
  v2 = sub_24214369C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24214367C();
  if (v7)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  v9 = 0xE000000000000000;
  if (v7)
  {
    v9 = v7;
  }

  v11[0] = v8;
  v11[1] = v9;
  (*(v3 + 16))(v5, a1, v2);
  sub_242139F44();
  return sub_242143B8C();
}

uint64_t sub_242141FC0@<X0>(uint64_t a3@<X8>)
{
  sub_242139F44();

  result = sub_242143BEC();
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6 & 1;
  *(a3 + 24) = v7;
  return result;
}

double sub_24214202C@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2421439DC();
  v5 = a1;
  sub_242143D5C();
  sub_2421438DC();
  *(a2 + 88) = v10;
  *(a2 + 104) = v11;
  *(a2 + 120) = v12;
  *(a2 + 136) = v13;
  result = *&v7;
  *(a2 + 40) = v7;
  *(a2 + 56) = v8;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 24) = v5;
  *(a2 + 32) = v5;
  *(a2 + 72) = v9;
  return result;
}

uint64_t sub_242142100@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24214388C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EC8CCB0, &qword_2421455D8);
  v28 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v27 - v9;
  if ([a1 isRCSChatBot])
  {
    v11 = [objc_allocWithZone(type metadata accessor for FrameworkBundleAnchor()) init];
    swift_getObjectType();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v27 = a2;
    v13 = [objc_opt_self() bundleForClass_];

    v14 = sub_24214364C();
    v16 = v15;

    v29 = v14;
    v30 = v16;
    sub_242139F44();
    v17 = sub_242143BEC();
    v19 = v18;
    v29 = v17;
    v30 = v18;
    v21 = v20 & 1;
    v31 = v20 & 1;
    v32 = v22;
    (*(v5 + 104))(v7, *MEMORY[0x277CDF350], v4);
    sub_242143C3C();
    (*(v5 + 8))(v7, v4);
    sub_24213D508(v17, v19, v21);

    v23 = &v10[*(v8 + 36)];
    *v23 = xmmword_242145570;
    *(v23 + 1) = xmmword_242145580;
    v23[32] = 0;
    v24 = v27;
    sub_242138798(v10, v27);
    return (*(v28 + 56))(v24, 0, 1, v8);
  }

  else
  {
    v26 = *(v28 + 56);

    return v26(a2, 1, 1, v8);
  }
}

unint64_t sub_242142450()
{
  result = qword_27EC8CCA0;
  if (!qword_27EC8CCA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EC8CC68, &qword_2421455A8);
    sub_2421424D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC8CCA0);
  }

  return result;
}

unint64_t sub_2421424D4()
{
  result = qword_27EC8CCA8;
  if (!qword_27EC8CCA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EC8CCB0, &qword_2421455D8);
    swift_getOpaqueTypeConformance2();
    sub_24213E090(&qword_27EC8CC50, &qword_27EC8CC48, &qword_242145590, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC8CCA8);
  }

  return result;
}

unint64_t sub_2421425C4()
{
  result = qword_27EC8CCD0[0];
  if (!qword_27EC8CCD0[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EC8CCC8, &qword_2421455E8);
    sub_24213E090(&qword_27EC8CC50, &qword_27EC8CC48, &qword_242145590, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EC8CCD0);
  }

  return result;
}

uint64_t sub_2421426E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_242142750()
{
  result = qword_27EC8CD58;
  if (!qword_27EC8CD58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EC8CD60, &qword_242145738);
    sub_24213E090(&qword_27EC8CC90, &qword_27EC8CC60, &qword_2421455A0, MEMORY[0x277CE14C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC8CD58);
  }

  return result;
}

unint64_t sub_24214282C()
{
  result = qword_27EC8CD68;
  if (!qword_27EC8CD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC8CD68);
  }

  return result;
}

unint64_t sub_242142884()
{
  result = qword_27EC8CD70;
  if (!qword_27EC8CD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC8CD70);
  }

  return result;
}

_OWORD *sub_2421428D8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_2421428E8()
{
  result = qword_27EC8CD78;
  if (!qword_27EC8CD78)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EC8CD78);
  }

  return result;
}

unint64_t sub_242142934()
{
  result = qword_27EC8CD80;
  if (!qword_27EC8CD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC8CD80);
  }

  return result;
}

unint64_t sub_242142988()
{
  result = qword_27EC8CD88;
  if (!qword_27EC8CD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EC8CD88);
  }

  return result;
}

void sub_2421429DC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != 1)
  {
    sub_242142A00(result, a2, a3, a4);
  }
}

void sub_242142A00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

double sub_242142A44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }

  return result;
}

double sub_242142A88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != 1)
  {
    return sub_242142A44(a1, a2, a3, a4);
  }

  return result;
}

uint64_t objectdestroy_21Tm()
{
  v1 = sub_24214369C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t objectdestroy_15Tm()
{
  v1 = sub_24214369C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_242142CF0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}