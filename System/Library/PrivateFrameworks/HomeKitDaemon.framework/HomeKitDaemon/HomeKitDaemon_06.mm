uint64_t sub_2295D0968()
{
  v1 = *(*v0 + 768);
  v2 = (*(*v0 + 792) + 32) & ~*(*v0 + 792);

  swift_setDeallocating();
  sub_2295D1E70(v1 + v2, type metadata accessor for RoomEntity);
  swift_deallocClassInstance();

  return MEMORY[0x2822009F8](sub_2295D0AB8, 0, 0);
}

int64_t sub_2295D0AB8()
{
  v1 = *(v0 + 760);
  v2 = *(v0 + 560);
  v3 = *(v0 + 752) + 1;
  sub_2295D1E70(*(v0 + 472), type metadata accessor for RoomEntity);
  __swift_destroy_boxed_opaque_existential_0((v0 + 96));
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));

  if (v3 != v2)
  {
    v11 = *(v0 + 752) + 5;
    *&v4 = 138412290;
    v124 = v4;
    while (1)
    {
      *(v0 + 752) = v11 - 4;
      v17 = *(v0 + 552);
      v18 = (v17 & 0xC000000000000001) != 0 ? MEMORY[0x22AAD13F0]() : *(v17 + 8 * v11);
      v19 = v18;
      *(v0 + 760) = v18;
      v20 = *(v0 + 528);
      v21 = __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
      *(v0 + 80) = v20;
      *(v0 + 88) = &off_283CDDAD8;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 56));
      sub_2295D1ED0(v21, boxed_opaque_existential_1, type metadata accessor for CascadeIndexer.CascadeIndexingSession);
      v23 = __swift_project_boxed_opaque_existential_0((v0 + 56), *(v0 + 80));
      *(v0 + 120) = v20;
      *(v0 + 128) = &off_283CDDAD8;
      v24 = __swift_allocate_boxed_opaque_existential_1((v0 + 96));
      sub_2295D1ED0(v23, v24, type metadata accessor for CascadeIndexer.CascadeIndexingSession);
      v25 = [v19 home];
      if (v25)
      {
        break;
      }

      sub_22A4DD5EC();
      off_283CDD788();
      sub_22A4DD06C();
      v26 = v19;
      v27 = sub_22A4DD05C();
      v28 = sub_22A4DDCEC();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        *v29 = v124;
        *(v29 + 4) = v26;
        *v30 = v26;
        v31 = v26;
        _os_log_impl(&dword_229538000, v27, v28, "room %@ has no home", v29, 0xCu);
        sub_22953EAE4(v30, &qword_27D87D7D0, &unk_22A578D90);
        MEMORY[0x22AAD4E50](v30, -1, -1);
        MEMORY[0x22AAD4E50](v29, -1, -1);
      }

      v12 = *(v0 + 560);
      v14 = *(v0 + 432);
      v13 = *(v0 + 440);
      v15 = *(v0 + 424);

      (*(v14 + 8))(v13, v15);
      __swift_destroy_boxed_opaque_existential_0((v0 + 96));
      __swift_destroy_boxed_opaque_existential_0((v0 + 56));

      v16 = v11 - 3;
      ++v11;
      if (v16 == v12)
      {
        goto LABEL_2;
      }
    }

    v32 = v25;
    v33 = v19;
    v34 = [v33 urlString];
    if (v34)
    {
      v35 = v34;
      v36 = sub_22A4DD5EC();
      v38 = v37;
    }

    else
    {
      v36 = 0;
      v38 = 0;
    }

    v66 = *(v0 + 464);
    v65 = *(v0 + 472);
    v68 = *(v0 + 448);
    v67 = *(v0 + 456);
    v69 = (v66 + *(v68 + 20));
    *v69 = v36;
    v69[1] = v38;
    v70 = [v33 spiClientIdentifier];
    sub_22A4DB79C();

    v71 = [v33 name];
    v72 = sub_22A4DD5EC();
    v74 = v73;

    v75 = (v66 + *(v68 + 24));
    *v75 = v72;
    v75[1] = v74;
    sub_2295D1E08(v66, v65, type metadata accessor for RoomEntity);
    __swift_project_boxed_opaque_existential_0((v0 + 96), *(v0 + 120));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D478, &qword_22A5798E0);
    v76 = *(v67 + 80);
    *(v0 + 792) = v76;
    v77 = (v76 + 32) & ~v76;
    v78 = swift_allocObject();
    *(v0 + 768) = v78;
    *(v78 + 16) = xmmword_22A576180;
    sub_2295D1ED0(v65, v78 + v77, type metadata accessor for RoomEntity);
    v125 = sub_2295CA9B8;
    v79 = swift_task_alloc();
    *(v0 + 776) = v79;
    *v79 = v0;
    v79[1] = sub_2295D0968;
    v64 = v78;
    goto LABEL_52;
  }

LABEL_2:
  v5 = *(v0 + 416);

  v6 = [v5 zones];
  sub_229562F68(0, &qword_281401788, off_278666398);
  v7 = sub_22A4DD83C();
  *(v0 + 576) = v7;

  if (v7 >> 62)
  {
    v8 = sub_22A4DE0EC();
    *(v0 + 584) = v8;
    if (v8)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v0 + 584) = v8;
    if (v8)
    {
LABEL_4:
      if (v8 >= 1)
      {
        *(v0 + 720) = 0;
        v9 = *(v0 + 576);
        if ((v9 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x22AAD13F0](0);
        }

        else
        {
          v10 = *(v9 + 32);
        }

        v39 = v10;
        *(v0 + 728) = v10;
        v40 = *(v0 + 528);
        v41 = *(v0 + 488);
        v42 = __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
        *(v0 + 160) = v40;
        *(v0 + 168) = &off_283CDDAD8;
        v43 = __swift_allocate_boxed_opaque_existential_1((v0 + 136));
        sub_2295D1ED0(v42, v43, type metadata accessor for CascadeIndexer.CascadeIndexingSession);
        v44 = __swift_project_boxed_opaque_existential_0((v0 + 136), *(v0 + 160));
        *(v0 + 200) = v40;
        *(v0 + 208) = &off_283CDDAD8;
        v45 = __swift_allocate_boxed_opaque_existential_1((v0 + 176));
        sub_2295D1ED0(v44, v45, type metadata accessor for CascadeIndexer.CascadeIndexingSession);
        __swift_project_boxed_opaque_existential_0((v0 + 176), *(v0 + 200));
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D9D0, &qword_22A5798B8);
        v46 = *(v41 + 80);
        *(v0 + 788) = v46;
        v47 = (v46 + 32) & ~v46;
        v48 = swift_allocObject();
        *(v0 + 736) = v48;
        *(v48 + 16) = xmmword_22A576180;
        v49 = v39;
        v50 = [v49 urlString];
        if (v50)
        {
          v51 = v50;
          v52 = sub_22A4DD5EC();
          v54 = v53;
        }

        else
        {
          v52 = 0;
          v54 = 0;
        }

        v55 = *(v0 + 496);
        v56 = *(v0 + 480);
        *v55 = v52;
        v55[1] = v54;
        v57 = [v49 spiClientIdentifier];
        sub_22A4DB79C();

        v58 = [v49 name];
        v59 = sub_22A4DD5EC();
        v61 = v60;

        v62 = (v55 + *(v56 + 24));
        *v62 = v59;
        v62[1] = v61;
        sub_2295D1E08(v55, v48 + v47, type metadata accessor for ZoneEntity);
        v125 = sub_2295CAF38;
        v63 = swift_task_alloc();
        *(v0 + 744) = v63;
        *v63 = v0;
        v63[1] = sub_2295CFEA8;
        v64 = v48;
        goto LABEL_52;
      }

      __break(1u);
      goto LABEL_37;
    }
  }

  v80 = *(v0 + 416);

  result = [v80 actionSets];
  if (!result)
  {
LABEL_72:
    __break(1u);
    return result;
  }

  v82 = result;
  sub_229562F68(0, &qword_281401C20, off_278666020);
  v83 = sub_22A4DD83C();
  *(v0 + 592) = v83;

  if (!(v83 >> 62))
  {
    v84 = *((v83 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v0 + 600) = v84;
    if (!v84)
    {
      goto LABEL_38;
    }

    goto LABEL_28;
  }

LABEL_37:
  v84 = sub_22A4DE0EC();
  *(v0 + 600) = v84;
  if (!v84)
  {
LABEL_38:
    v94 = *(v0 + 416);

    v95 = [v94 accessories];
    sub_229562F68(0, &qword_281401C30, off_278665FE8);
    v96 = sub_22A4DD83C();
    *(v0 + 608) = v96;

    if (!(v96 >> 62))
    {
      v97 = *((v96 & 0xFFFFFFFFFFFFFF8) + 0x10);
      *(v0 + 616) = v97;
      if (v97)
      {
LABEL_40:
        if (v97 < 1)
        {
          __break(1u);
        }

        else
        {
          *(v0 + 664) = 0;
          v98 = *(v0 + 608);
          if ((v98 & 0xC000000000000001) != 0)
          {
            v99 = MEMORY[0x22AAD13F0](0);
          }

          else
          {
            v99 = *(v98 + 32);
          }

          v100 = v99;
          *(v0 + 672) = v99;
          v101 = *(v0 + 528);
          v102 = __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
          *(v0 + 280) = v101;
          *(v0 + 288) = &off_283CDDAD8;
          v103 = __swift_allocate_boxed_opaque_existential_1((v0 + 256));
          sub_2295D1ED0(v102, v103, type metadata accessor for CascadeIndexer.CascadeIndexingSession);
          v104 = __swift_project_boxed_opaque_existential_0((v0 + 256), *(v0 + 280));
          *(v0 + 320) = v101;
          *(v0 + 328) = &off_283CDDAD8;
          v105 = __swift_allocate_boxed_opaque_existential_1((v0 + 296));
          sub_2295D1ED0(v104, v105, type metadata accessor for CascadeIndexer.CascadeIndexingSession);
          __swift_project_boxed_opaque_existential_0((v0 + 296), *(v0 + 320));
          v106 = [v100 home];
          v107 = sub_2295C08E4(v100, v106);

          v108 = v107[2];
          if (!v108)
          {
            goto LABEL_50;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D460, &unk_22A578600);
          v109 = *(type metadata accessor for HomeDeviceEntity(0) - 8);
          v110 = *(v109 + 72);
          v111 = (*(v109 + 80) + 32) & ~*(v109 + 80);
          v112 = swift_allocObject();
          result = _swift_stdlib_malloc_size(v112);
          if (v110)
          {
            if (result - v111 != 0x8000000000000000 || v110 != -1)
            {
              v112[2] = v108;
              v112[3] = 2 * ((result - v111) / v110);
              v113 = sub_22971573C((v0 + 336), v112 + v111, v108, v107);
              sub_22953EE84(*(v0 + 336));
              if (v113 == v108)
              {
LABEL_51:
                *(v0 + 680) = v112;
                v125 = sub_2295CBA38;
                v114 = swift_task_alloc();
                *(v0 + 688) = v114;
                *v114 = v0;
                v114[1] = sub_2295CF108;
                v64 = v112;
LABEL_52:

                return v125(v64);
              }

              __break(1u);
LABEL_50:

              v112 = MEMORY[0x277D84F90];
              goto LABEL_51;
            }

            goto LABEL_71;
          }
        }

        __break(1u);
        goto LABEL_66;
      }

LABEL_57:
      v115 = *(v0 + 416);

      v116 = [v115 serviceGroups];
      sub_229562F68(0, &unk_281401B60, off_278666318);
      v117 = sub_22A4DD83C();
      *(v0 + 624) = v117;

      if (!(v117 >> 62))
      {
        result = *((v117 & 0xFFFFFFFFFFFFFF8) + 0x10);
        *(v0 + 632) = result;
        if (!result)
        {
LABEL_67:
          sub_2295D1E70(*(v0 + 520), type metadata accessor for HomeEntity);

          __swift_destroy_boxed_opaque_existential_0((v0 + 16));

          v123 = *(v0 + 8);

          return v123();
        }

        goto LABEL_59;
      }

LABEL_66:
      result = sub_22A4DE0EC();
      *(v0 + 632) = result;
      if (!result)
      {
        goto LABEL_67;
      }

LABEL_59:
      if (result < 1)
      {
        __break(1u);
LABEL_71:
        __break(1u);
        goto LABEL_72;
      }

      *(v0 + 640) = 0;
      v118 = *(v0 + 624);
      if ((v118 & 0xC000000000000001) != 0)
      {
        v119 = MEMORY[0x22AAD13F0](0);
      }

      else
      {
        v119 = *(v118 + 32);
      }

      v87 = v119;
      *(v0 + 648) = v119;
      v120 = *(v0 + 528);
      v121 = __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
      *(v0 + 400) = v120;
      *(v0 + 408) = &off_283CDDAD8;
      v122 = __swift_allocate_boxed_opaque_existential_1((v0 + 376));
      sub_2295D1ED0(v121, v122, type metadata accessor for CascadeIndexer.CascadeIndexingSession);
      v91 = __swift_project_boxed_opaque_existential_0((v0 + 376), *(v0 + 400));
      v126 = sub_2295CCCA0;
      v92 = swift_task_alloc();
      *(v0 + 656) = v92;
      *v92 = v0;
      v93 = sub_2295CEDFC;
      goto LABEL_33;
    }

LABEL_56:
    v97 = sub_22A4DE0EC();
    *(v0 + 616) = v97;
    if (v97)
    {
      goto LABEL_40;
    }

    goto LABEL_57;
  }

LABEL_28:
  if (v84 < 1)
  {
    __break(1u);
    goto LABEL_56;
  }

  *(v0 + 696) = 0;
  v85 = *(v0 + 592);
  if ((v85 & 0xC000000000000001) != 0)
  {
    v86 = MEMORY[0x22AAD13F0](0);
  }

  else
  {
    v86 = *(v85 + 32);
  }

  v87 = v86;
  *(v0 + 704) = v86;
  v88 = *(v0 + 528);
  v89 = __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
  *(v0 + 240) = v88;
  *(v0 + 248) = &off_283CDDAD8;
  v90 = __swift_allocate_boxed_opaque_existential_1((v0 + 216));
  sub_2295D1ED0(v89, v90, type metadata accessor for CascadeIndexer.CascadeIndexingSession);
  v91 = __swift_project_boxed_opaque_existential_0((v0 + 216), *(v0 + 240));
  v126 = sub_2295CD29C;
  v92 = swift_task_alloc();
  *(v0 + 712) = v92;
  *v92 = v0;
  v93 = sub_2295CF734;
LABEL_33:
  v92[1] = v93;

  return v126(v87, v91);
}

uint64_t sub_2295D18BC(uint64_t a1, uint64_t a2)
{
  v2[12] = a1;
  v4 = type metadata accessor for CascadeIndexer.CascadeIndexingSession(0);
  v2[13] = v4;
  v2[5] = v4;
  v2[6] = &off_283CDDAD8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v2 + 2);
  sub_2295D1ED0(a2, boxed_opaque_existential_1, type metadata accessor for CascadeIndexer.CascadeIndexingSession);

  return MEMORY[0x2822009F8](sub_2295D1964, 0, 0);
}

uint64_t sub_2295D1964()
{
  result = [*(v0 + 96) homes];
  if (!result)
  {
    goto LABEL_16;
  }

  v2 = result;
  sub_229562F68(0, &qword_2814017B0, off_278666198);
  v3 = sub_22A4DD83C();
  *(v0 + 112) = v3;

  if (v3 >> 62)
  {
    result = sub_22A4DE0EC();
    *(v0 + 120) = result;
    if (result)
    {
      goto LABEL_4;
    }
  }

  else
  {
    result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v0 + 120) = result;
    if (result)
    {
LABEL_4:
      if (result >= 1)
      {
        *(v0 + 128) = 0;
        v4 = *(v0 + 112);
        if ((v4 & 0xC000000000000001) != 0)
        {
          v5 = MEMORY[0x22AAD13F0](0);
        }

        else
        {
          v5 = *(v4 + 32);
        }

        v6 = v5;
        *(v0 + 136) = v5;
        v7 = *(v0 + 104);
        v8 = __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
        *(v0 + 80) = v7;
        *(v0 + 88) = &off_283CDDAD8;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 56));
        sub_2295D1ED0(v8, boxed_opaque_existential_1, type metadata accessor for CascadeIndexer.CascadeIndexingSession);
        v10 = __swift_project_boxed_opaque_existential_0((v0 + 56), *(v0 + 80));
        v11 = swift_task_alloc();
        *(v0 + 144) = v11;
        *v11 = v0;
        v11[1] = sub_2295D1B6C;

        return sub_2295CDA44(v6, v10);
      }

      __break(1u);
LABEL_16:
      __break(1u);
      return result;
    }
  }

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_2295D1B6C()
{
  v1 = *v0;

  __swift_destroy_boxed_opaque_existential_0((v1 + 56));

  return MEMORY[0x2822009F8](sub_2295D1C70, 0, 0);
}

uint64_t sub_2295D1C70()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 120);

  if (v1 + 1 == v2)
  {

    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    v5 = *(v0 + 128) + 1;
    *(v0 + 128) = v5;
    v6 = *(v0 + 112);
    if ((v6 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x22AAD13F0]();
    }

    else
    {
      v7 = *(v6 + 8 * v5 + 32);
    }

    v8 = v7;
    *(v0 + 136) = v7;
    v9 = *(v0 + 104);
    v10 = __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
    *(v0 + 80) = v9;
    *(v0 + 88) = &off_283CDDAD8;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 56));
    sub_2295D1ED0(v10, boxed_opaque_existential_1, type metadata accessor for CascadeIndexer.CascadeIndexingSession);
    v12 = __swift_project_boxed_opaque_existential_0((v0 + 56), *(v0 + 80));
    v13 = swift_task_alloc();
    *(v0 + 144) = v13;
    *v13 = v0;
    v13[1] = sub_2295D1B6C;

    return sub_2295CDA44(v8, v12);
  }
}

uint64_t sub_2295D1E08(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2295D1E70(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2295D1ED0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2295D1F60(uint64_t a1)
{
  result = sub_229562F68(319, &qword_281401B18, 0x277CF94B8);
  if (v2 <= 0x3F)
  {
    result = sub_22A4DD07C();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2295D1FF4(uint64_t a1, uint64_t a2)
{
  sub_22953EAE4(a2, &qword_27D87DA10, &unk_22A579B50);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D9F0, &qword_22A579AD0);
  v7 = *(v4 - 8);
  (*(v7 + 16))(a2, a1, v4);
  v5 = *(v7 + 56);

  return v5(a2, 0, 1, v4);
}

void sub_2295D20D0(void *a1)
{
  v2 = v1;
  v4 = sub_22A4DD07C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22A4DBA2C();
  v8 = a1;
  v9 = sub_22A4DBA1C();
  v41[5] = &type metadata for HomeGraphTraverser;
  v41[6] = &off_283CDDE60;
  v41[0] = v8;
  v41[1] = v9;
  v10 = [v8 featuresDataSource];

  if (v10)
  {
    v11 = [v10 isCascadeDonationsEnabled];
    swift_unknownObjectRelease();
    if (v11)
    {
      sub_229541CB0(v2, &off_283CDDAE8);
      v12 = sub_22A4DD05C();
      v13 = sub_22A4DDCCC();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_229538000, v12, v13, "Cascade indexer is enabled", v14, 2u);
        MEMORY[0x22AAD4E50](v14, -1, -1);
      }

      (*(v5 + 8))(v7, v4);
      v37 = &type metadata for HomeGraphIndexer.DefaultIndexerDataSource;
      v38 = &off_283CDDD98;
      v35 = swift_allocObject();
      sub_2295E8BD8(v41, v35 + 16);
      v15 = type metadata accessor for CascadeIndexer();
      v16 = swift_allocObject();
      v17 = __swift_mutable_project_boxed_opaque_existential_0(&v35, &type metadata for HomeGraphIndexer.DefaultIndexerDataSource);
      MEMORY[0x28223BE20](v17);
      swift_cvw_initWithCopy();
      v33 = &type metadata for HomeGraphIndexer.DefaultIndexerDataSource;
      v34 = &off_283CDDD98;
      v18 = swift_allocObject();
      *&v32 = v18;
      v19 = *(&v31 - 3);
      *(v18 + 16) = *(&v31 - 4);
      *(v18 + 32) = v19;
      *(v18 + 48) = *(&v31 - 2);
      *(v18 + 64) = *(&v31 - 2);
      swift_defaultActor_initialize();
      *(v16 + 176) = sub_22A4DBC7C();
      *(v16 + 184) = sub_2295E9190(&qword_281403838, MEMORY[0x277D0EFE0], MEMORY[0x277D0EFD8]);
      __swift_allocate_boxed_opaque_existential_1((v16 + 152));
      sub_22A4DBC6C();
      *(v16 + 208) = 0u;
      *(v16 + 224) = 0u;
      *(v16 + 192) = 0u;
      sub_229557188(&v32, v16 + 112);
      __swift_destroy_boxed_opaque_existential_0(&v35);
      v37 = v15;
      v38 = &off_283CDD9A8;
      v35 = v16;
      v20 = sub_22958AF1C(0, 1, 1, MEMORY[0x277D84F90]);
      v22 = v20[2];
      v21 = v20[3];
      if (v22 >= v21 >> 1)
      {
        v20 = sub_22958AF1C((v21 > 1), v22 + 1, 1, v20);
      }

      v23 = __swift_mutable_project_boxed_opaque_existential_0(&v35, v15);
      MEMORY[0x28223BE20](v23);
      v25 = (&v31 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v26 + 16))(v25);
      v27 = *v25;
      v33 = v15;
      v34 = &off_283CDD9A8;
      *&v32 = v27;
      v20[2] = v22 + 1;
      sub_229557188(&v32, &v20[5 * v22 + 4]);
      __swift_destroy_boxed_opaque_existential_0(&v35);
    }

    else
    {
      v20 = MEMORY[0x277D84F90];
    }

    v28 = [objc_opt_self() defaultCenter];
    v38 = &type metadata for HomeGraphIndexer.DefaultIndexerDataSource;
    v39 = &off_283CDDD98;
    v36 = swift_allocObject();
    sub_2295E8BD8(v41, v36 + 16);
    v40 = v20;
    v33 = &type metadata for HomeGraphIndexer.DefaultHomeGraphIndexerDataSource;
    v34 = &off_283CDDD78;
    v35 = v28;
    *&v32 = swift_allocObject();
    sub_2295E8C10(&v35, v32 + 16);
    type metadata accessor for HomeGraphIndexer(0);
    v29 = swift_allocObject();
    v30 = __swift_mutable_project_boxed_opaque_existential_0(&v32, &type metadata for HomeGraphIndexer.DefaultHomeGraphIndexerDataSource);
    MEMORY[0x28223BE20](v30);
    swift_cvw_initWithCopy();
    sub_2295E8C48((&v31 - 8), v29);
    __swift_destroy_boxed_opaque_existential_0(&v32);
    sub_2295E8FF0(&v35);
    sub_2295E9020(v41);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2295D263C()
{
  *(v1 + 56) = v0;
  *(v1 + 64) = *v0;
  return MEMORY[0x2822009F8](sub_2295D2684, v0, 0);
}

uint64_t sub_2295D2684()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = __swift_project_boxed_opaque_existential_0((v1 + 112), *(v1 + 136));
  sub_22957F1C4((v3 + 1), (v0 + 2));
  v0[9] = __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5])[1];

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v4 = swift_allocObject();
  v0[10] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v8 = (*MEMORY[0x277D0EF80] + MEMORY[0x277D0EF80]);

  v5 = swift_task_alloc();
  v0[11] = v5;
  *v5 = v0;
  v5[1] = sub_2295D27C0;
  v6 = MEMORY[0x277D84F78] + 8;

  return v8(&unk_22A579C80, v4, v6);
}

uint64_t sub_2295D27C0(uint64_t a1)
{
  v4 = *v1;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2295D2900(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  v5 = sub_22A4DD07C();
  v3[4] = v5;
  v3[5] = *(v5 - 8);
  v3[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2295D29C4, a2, 0);
}

uint64_t sub_2295D29C4()
{
  v1 = v0[2];
  if (*(__swift_project_boxed_opaque_existential_0((v1 + 112), *(v1 + 136))[6] + 16))
  {
    v2 = __swift_project_boxed_opaque_existential_0((v1 + 112), *(v1 + 136))[6];
    v0[7] = v2;
    v3 = *(v2 + 16);
    v0[8] = v3;
    if (v3)
    {
      v0[9] = objc_opt_self();
      v0[10] = sel_handleDonateNowNotification_;
      v0[11] = 0;
      v4 = v0[7];
      v5 = *(v4 + 56);

      v6 = __swift_project_boxed_opaque_existential_0((v4 + 32), v5);
      v7 = *v6;
      v0[12] = *v6;

      return MEMORY[0x2822009F8](sub_2295D2C0C, v7, 0);
    }

    else
    {
      v16 = swift_task_alloc();
      v0[15] = v16;
      *v16 = v0;
      v16[1] = sub_2295D3080;

      return sub_2295D3368();
    }
  }

  else
  {
    sub_229541CB0(v0[3], &off_283CDDAE8);
    v8 = sub_22A4DD05C();
    v9 = sub_22A4DDCEC();
    v10 = os_log_type_enabled(v8, v9);
    v12 = v0[5];
    v11 = v0[6];
    v13 = v0[4];
    if (v10)
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_229538000, v8, v9, "There are no indexers enabled. Not starting indexing.", v14, 2u);
      MEMORY[0x22AAD4E50](v14, -1, -1);
    }

    (*(v12 + 8))(v11, v13);

    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_2295D2C0C()
{
  v1 = [*(v0 + 72) defaultCenter];
  if (qword_281402BB0 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 96);
  [v1 addObserver:v2 selector:*(v0 + 80) name:qword_2814050B8 object:0];

  v3 = *(v2 + 136);
  v4 = __swift_project_boxed_opaque_existential_0((v2 + 112), v3);
  v5 = *(v3 - 8);
  v6 = swift_task_alloc();
  (*(v5 + 16))(v6, v4, v3);
  *(v0 + 104) = *(v6 + 8);
  v7 = *(v5 + 8);

  v7(v6, v3);

  v12 = (*MEMORY[0x277D0EF80] + MEMORY[0x277D0EF80]);

  v8 = swift_task_alloc();
  *(v0 + 112) = v8;
  *v8 = v0;
  v8[1] = sub_2295D2E20;
  v9 = *(v0 + 96);
  v10 = MEMORY[0x277D84F78] + 8;

  return v12(&unk_22A579850, v9, v10);
}

uint64_t sub_2295D2E20(uint64_t a1)
{
  v2 = *(*v1 + 16);

  return MEMORY[0x2822009F8](sub_2295D2F7C, v2, 0);
}

uint64_t sub_2295D2F7C()
{
  v1 = v0[11] + 1;
  if (v1 == v0[8])
  {

    v2 = swift_task_alloc();
    v0[15] = v2;
    *v2 = v0;
    v2[1] = sub_2295D3080;

    return sub_2295D3368();
  }

  else
  {
    v0[11] = v1;
    v4 = __swift_project_boxed_opaque_existential_0((v0[7] + 40 * v1 + 32), *(v0[7] + 40 * v1 + 56));
    v5 = *v4;
    v0[12] = *v4;

    return MEMORY[0x2822009F8](sub_2295D2C0C, v5, 0);
  }
}

uint64_t sub_2295D3080()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2295D3194()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 112));

  sub_22953EAE4(v0 + OBJC_IVAR____TtC13HomeKitDaemon16HomeGraphIndexer_notificationContinuation, &qword_27D87DA10, &unk_22A579B50);
  sub_22953EAE4(v0 + OBJC_IVAR____TtC13HomeKitDaemon16HomeGraphIndexer_notificationStream, &qword_27D87DA08, &qword_22A579B48);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

void sub_2295D3244(uint64_t a1)
{
  sub_2295E8A30(319, &unk_281401C78, &qword_27D87D9F0, &qword_22A579AD0);
  if (v1 <= 0x3F)
  {
    sub_2295E8A30(319, &qword_281401C70, &qword_27D87D9F8, qword_22A579AD8);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_2295D3368()
{
  *(v1 + 656) = v0;

  return MEMORY[0x2822009F8](sub_2295D33F8, v0, 0);
}

uint64_t sub_2295D33F8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D480, &qword_22A578620);
  inited = swift_initStackObject();
  v0[83] = inited;
  *(inited + 16) = xmmword_22A5799A0;
  *(inited + 32) = @"HMDNotificationCurrentHomeDidChange";
  *(inited + 40) = sub_2295D3D2C;
  *(inited + 48) = 0;
  *(inited + 56) = @"HMDHomeAddedNotification";
  *(inited + 64) = sub_2295D3D34;
  *(inited + 72) = 0;
  *(inited + 80) = @"HMDHomeNameChangedNotification";
  *(inited + 88) = sub_2295D3DD8;
  *(inited + 96) = 0;
  *(inited + 104) = @"HMDHomeRemovedNotification";
  *(inited + 112) = sub_2295D3DE0;
  *(inited + 120) = 0;
  *(inited + 128) = @"HMDRoomAddedNotification";
  *(inited + 136) = sub_2295D3DE8;
  *(inited + 144) = 0;
  *(inited + 152) = @"HMDRoomNameUpdatedNotification";
  *(inited + 160) = sub_2295D3DF0;
  *(inited + 168) = 0;
  *(inited + 176) = @"HMDRoomRemovedNotification";
  *(inited + 184) = sub_2295D3DF8;
  *(inited + 192) = 0;
  *(inited + 200) = @"HMDZoneAddedNotification";
  *(inited + 208) = sub_2295D3E00;
  *(inited + 216) = 0;
  *(inited + 224) = @"HMDZoneNameChangedNotification";
  *(inited + 232) = sub_2295D3E08;
  *(inited + 240) = 0;
  *(inited + 248) = @"HMDZoneRoomsUpdatedNotification";
  *(inited + 256) = sub_2295D3E10;
  *(inited + 264) = 0;
  *(inited + 272) = @"HMDZoneRemovedNotification";
  *(inited + 280) = sub_2295D3E18;
  *(inited + 288) = 0;
  *(inited + 296) = @"HMDActionSetAddedNotification";
  *(inited + 304) = sub_2295D3E20;
  *(inited + 312) = 0;
  *(inited + 320) = @"HMDActionSetRenamedNotification";
  *(inited + 328) = sub_2295D3E28;
  *(inited + 336) = 0;
  *(inited + 344) = @"HMDActionSetRemovedNotification";
  *(inited + 352) = sub_2295D3E30;
  *(inited + 360) = 0;
  *(inited + 368) = @"HMDServiceGroupAddedNotification";
  *(inited + 376) = sub_2295D3E38;
  *(inited + 384) = 0;
  *(inited + 392) = @"HMDServiceGroupNameChangedNotification";
  *(inited + 400) = sub_2295D3E40;
  *(inited + 408) = 0;
  *(inited + 416) = @"HMDServiceGroupRemovedNotification";
  *(inited + 424) = sub_2295D3E48;
  *(inited + 432) = 0;
  *(inited + 440) = @"HMDNotificationHomeAddedAccessory";
  *(inited + 448) = sub_2295D3E50;
  *(inited + 456) = 0;
  *(inited + 464) = @"kHMDNotificationServicesUpdated";
  *(inited + 472) = sub_2295D3E58;
  *(inited + 480) = 0;
  *(inited + 488) = @"kHMDNotificationCharacteristicsUpdated";
  *(inited + 496) = sub_2295D3E60;
  *(inited + 504) = 0;
  *(inited + 512) = @"HMDNotificationAccessoryChangedRoom";
  *(inited + 520) = sub_2295D3E68;
  *(inited + 528) = 0;
  *(inited + 536) = @"HMDAccessoryNameUpdatedNotification";
  *(inited + 544) = sub_2295D3E70;
  *(inited + 552) = 0;
  *(inited + 560) = @"HMDHomeAccessoryRemovedNotification";
  *(inited + 568) = sub_2295D3E78;
  *(inited + 576) = 0;
  v2 = @"HMDNotificationCurrentHomeDidChange";
  v3 = @"HMDHomeAddedNotification";
  v4 = @"HMDHomeNameChangedNotification";
  v5 = @"HMDHomeRemovedNotification";
  v6 = @"HMDRoomAddedNotification";
  v7 = @"HMDRoomNameUpdatedNotification";
  v8 = @"HMDRoomRemovedNotification";
  v9 = @"HMDZoneAddedNotification";
  v10 = @"HMDZoneNameChangedNotification";
  v11 = @"HMDZoneRoomsUpdatedNotification";
  v12 = @"HMDZoneRemovedNotification";
  v13 = @"HMDActionSetAddedNotification";
  v14 = @"HMDActionSetRenamedNotification";
  v15 = @"HMDActionSetRemovedNotification";
  v16 = @"HMDServiceGroupAddedNotification";
  v17 = @"HMDServiceGroupNameChangedNotification";
  v18 = @"HMDServiceGroupRemovedNotification";
  v19 = @"HMDNotificationHomeAddedAccessory";
  v20 = @"kHMDNotificationServicesUpdated";
  v21 = @"kHMDNotificationCharacteristicsUpdated";
  v22 = @"HMDNotificationAccessoryChangedRoom";
  v23 = @"HMDAccessoryNameUpdatedNotification";
  v24 = @"HMDHomeAccessoryRemovedNotification";
  v25 = @"HMDNotificationRVCAreaMapsUpdated";
  v26 = sub_22958AF40(1, 24, 1, inited);
  v26[2] = 24;
  v26[73] = v25;
  v26[74] = sub_2295D3E80;
  v26[75] = 0;
  v0[81] = MEMORY[0x277D84F90];
  v42 = objc_opt_self();
  for (i = 0; i != 72; i += 3)
  {
    v28 = v26[i + 5];
    v29 = v26[i + 6];
    v30 = v26[i + 4];

    v31 = [v42 defaultCenter];
    v32 = swift_allocObject();
    swift_weakInit();
    v33 = swift_allocObject();
    v33[2] = v32;
    v33[3] = v28;
    v33[4] = v29;
    v0[79] = sub_2295E94D0;
    v0[80] = v33;
    v0[75] = MEMORY[0x277D85DD0];
    v0[76] = 1107296256;
    v0[77] = sub_2297739FC;
    v0[78] = &block_descriptor_5;
    v34 = _Block_copy(v0 + 75);
    v35 = v30;

    v36 = [v31 addObserverForName:v35 object:0 queue:0 usingBlock:v34];
    _Block_release(v34);

    v37 = swift_unknownObjectRetain();
    MEMORY[0x22AAD09E0](v37);
    if (*((v0[81] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[81] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_22A4DD85C();
    }

    sub_22A4DD87C();

    swift_unknownObjectRelease();
  }

  v38 = v0[82];
  v39 = v0[81];

  *(v38 + 160) = v39;

  v40 = swift_task_alloc();
  v0[84] = v40;
  *v40 = v0;
  v40[1] = sub_2295D3B6C;

  return sub_2295D45F4();
}

uint64_t sub_2295D3B6C()
{
  v1 = *(*v0 + 656);

  return MEMORY[0x2822009F8](sub_2295D3CA8, v1, 0);
}

uint64_t sub_2295D3CA8()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2295D3D3C@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DA18, &unk_22A579B60);
  (*(*(v5 - 8) + 16))(a3, a1, v5);
  type metadata accessor for HomeGraphIndexer.NotificationType(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_2295D3E88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = a3;
  v27 = a4;
  v25 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v25 - v5;
  v7 = sub_22A4DB21C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DA18, &unk_22A579B60);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v15 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v25 - v16;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v19 = result;
    (*(v8 + 16))(v10, v25, v7);
    MEMORY[0x22AACEC10](v10, v7);
    v20 = sub_22A4DD9DC();
    (*(*(v20 - 8) + 56))(v6, 1, 1, v20);
    (*(v12 + 16))(v15, v17, v11);
    v21 = (*(v12 + 80) + 56) & ~*(v12 + 80);
    v22 = swift_allocObject();
    *(v22 + 2) = 0;
    *(v22 + 3) = 0;
    v23 = v26;
    v24 = v27;
    *(v22 + 4) = v19;
    *(v22 + 5) = v23;
    *(v22 + 6) = v24;
    (*(v12 + 32))(&v22[v21], v15, v11);

    sub_22957F3C0(0, 0, v6, &unk_22A579C60, v22);

    return (*(v12 + 8))(v17, v11);
  }

  return result;
}

uint64_t sub_2295D41A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D9F0, &qword_22A579AD0);
  v7[9] = v8;
  v7[10] = *(v8 - 8);
  v7[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DA10, &unk_22A579B50);
  v7[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DA50, &qword_22A579C68);
  v7[13] = swift_task_alloc();
  type metadata accessor for HomeGraphIndexer.NotificationType(0);
  v7[14] = swift_task_alloc();
  v7[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2295D4320, 0, 0);
}

uint64_t sub_2295D4320()
{
  v1 = *(v0 + 40);
  (*(v0 + 48))(*(v0 + 64));

  return MEMORY[0x2822009F8](sub_2295D4394, v1, 0);
}

uint64_t sub_2295D4394()
{
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[10];
  v4 = v0[5];
  v5 = OBJC_IVAR____TtC13HomeKitDaemon16HomeGraphIndexer_notificationContinuation;
  swift_beginAccess();
  sub_229564F88(v4 + v5, v1, &qword_27D87DA10, &unk_22A579B50);
  v6 = (*(v3 + 48))(v1, 1, v2);
  v7 = v0[15];
  if (v6)
  {
    v8 = v0[12];
    sub_2295E9130(v0[15], type metadata accessor for HomeGraphIndexer.NotificationType);
    sub_22953EAE4(v8, &qword_27D87DA10, &unk_22A579B50);
    v9 = 1;
  }

  else
  {
    v10 = v0[14];
    v12 = v0[11];
    v11 = v0[12];
    v13 = v0[9];
    v14 = v0[10];
    (*(v14 + 16))(v12, v11, v13);
    sub_22953EAE4(v11, &qword_27D87DA10, &unk_22A579B50);
    sub_2295E91D8(v7, v10, type metadata accessor for HomeGraphIndexer.NotificationType);
    sub_22A4DDA0C();
    (*(v14 + 8))(v12, v13);
    sub_2295E9130(v7, type metadata accessor for HomeGraphIndexer.NotificationType);
    v9 = 0;
  }

  v15 = v0[13];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DA58, &qword_22A579C70);
  (*(*(v16 - 8) + 56))(v15, v9, 1, v16);
  sub_22953EAE4(v15, &qword_27D87DA50, &qword_22A579C68);

  v17 = v0[1];

  return v17();
}

uint64_t sub_2295D45F4()
{
  v1[5] = v0;
  v1[6] = *v0;
  v2 = sub_22A4DD07C();
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v1[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DA08, &qword_22A579B48);
  v1[11] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D9F8, qword_22A579AD8);
  v1[12] = v3;
  v4 = *(v3 - 8);
  v1[13] = v4;
  v1[14] = *(v4 + 64);
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2295D47C8, v0, 0);
}

uint64_t sub_2295D47C8()
{
  v1 = v0[5];
  v2 = v1;
  if (*(v1 + 152))
  {

    sub_22A4DDA7C();

    v2 = v0[5];
  }

  v3 = v0[12];
  v4 = v0[13];
  v5 = v0[11];
  v6 = OBJC_IVAR____TtC13HomeKitDaemon16HomeGraphIndexer_notificationStream;
  swift_beginAccess();
  sub_229564F88(v2 + v6, v5, &qword_27D87DA08, &qword_22A579B48);
  if ((*(v4 + 48))(v5, 1, v3) == 1)
  {
    v7 = v0[6];
    sub_22953EAE4(v0[11], &qword_27D87DA08, &qword_22A579B48);
    sub_229541CB0(v7, &off_283CDDAE8);
    v8 = sub_22A4DD05C();
    v9 = sub_22A4DDCEC();
    v10 = os_log_type_enabled(v8, v9);
    v12 = v0[8];
    v11 = v0[9];
    v13 = v0[7];
    if (v10)
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_229538000, v8, v9, "Notification stream is nil", v14, 2u);
      MEMORY[0x22AAD4E50](v14, -1, -1);
    }

    (*(v12 + 8))(v11, v13);
  }

  else
  {
    v16 = v0[15];
    v15 = v0[16];
    v17 = v0[13];
    v18 = v0[12];
    v19 = v0[10];
    v27 = v19;
    v28 = *(v17 + 32);
    v28(v15, v0[11], v18);
    v20 = sub_22A4DD9DC();
    (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
    v21 = swift_allocObject();
    swift_weakInit();
    (*(v17 + 16))(v16, v15, v18);
    v22 = (*(v17 + 80) + 40) & ~*(v17 + 80);
    v23 = swift_allocObject();
    *(v23 + 2) = 0;
    *(v23 + 3) = 0;
    *(v23 + 4) = v21;
    v28(&v23[v22], v16, v18);
    v24 = sub_22957F3C0(0, 0, v27, &unk_22A579C38, v23);
    (*(v17 + 8))(v15, v18);
    *(v1 + 152) = v24;
  }

  v25 = v0[1];

  return v25();
}

uint64_t sub_2295D4B38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = type metadata accessor for HomeGraphIndexer.NotificationType(0);
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DA40, &qword_22A579C40);
  v5[10] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DA48, &unk_22A579C48);
  v5[11] = v7;
  v5[12] = *(v7 - 8);
  v5[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2295D4C98, 0, 0);
}

uint64_t sub_2295D4C98()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[14] = Strong;
  if (Strong)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D9F8, qword_22A579AD8);
    sub_22A4DDA3C();
    v2 = swift_task_alloc();
    v0[15] = v2;
    *v2 = v0;
    v2[1] = sub_2295D4DE0;
    v3 = v0[10];
    v4 = v0[11];

    return MEMORY[0x2822003E8](v3, 0, 0, v4);
  }

  else
  {

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_2295D4DE0()
{

  return MEMORY[0x2822009F8](sub_2295D4EDC, 0, 0);
}

uint64_t sub_2295D4EDC()
{
  v1 = v0[10];
  if ((*(v0[8] + 48))(v1, 1, v0[7]) == 1)
  {
    (*(v0[12] + 8))(v0[13], v0[11]);

LABEL_5:

    v6 = v0[1];

    return v6();
  }

  sub_2295E9240(v1, v0[9], type metadata accessor for HomeGraphIndexer.NotificationType);
  if (sub_22A4DDAAC())
  {
    v2 = v0[13];
    v3 = v0[11];
    v4 = v0[12];
    v5 = v0[9];

    sub_2295E9130(v5, type metadata accessor for HomeGraphIndexer.NotificationType);
    (*(v4 + 8))(v2, v3);
    goto LABEL_5;
  }

  v8 = swift_task_alloc();
  v0[16] = v8;
  *v8 = v0;
  v8[1] = sub_2295D5084;
  v9 = v0[9];

  return sub_2295D5240(v9);
}

uint64_t sub_2295D5084()
{

  return MEMORY[0x2822009F8](sub_2295D5180, 0, 0);
}

uint64_t sub_2295D5180()
{
  sub_2295E9130(v0[9], type metadata accessor for HomeGraphIndexer.NotificationType);
  v1 = swift_task_alloc();
  v0[15] = v1;
  *v1 = v0;
  v1[1] = sub_2295D4DE0;
  v2 = v0[10];
  v3 = v0[11];

  return MEMORY[0x2822003E8](v2, 0, 0, v3);
}

uint64_t sub_2295D5240(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v2[9] = *v1;
  v3 = *(type metadata accessor for HomeGraphIndexer.NotificationType(0) - 8);
  v2[10] = v3;
  v2[11] = *(v3 + 64);
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2295D532C, v1, 0);
}

uint64_t sub_2295D532C()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[9];
  v4 = v0[10];
  v6 = v0[7];
  v5 = v0[8];
  v7 = __swift_project_boxed_opaque_existential_0((v5 + 112), *(v5 + 136));
  sub_22957F1C4((v7 + 1), (v0 + 2));
  v0[13] = __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5])[1];

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  sub_2295E91D8(v6, v1, type metadata accessor for HomeGraphIndexer.NotificationType);
  v8 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v9 = (v2 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = swift_allocObject();
  v0[14] = v10;
  sub_2295E9240(v1, v10 + v8, type metadata accessor for HomeGraphIndexer.NotificationType);
  *(v10 + v9) = v5;
  *(v10 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8)) = v3;
  v14 = (*MEMORY[0x277D0EF80] + MEMORY[0x277D0EF80]);

  v11 = swift_task_alloc();
  v0[15] = v11;
  *v11 = v0;
  v11[1] = sub_2295D54DC;
  v12 = MEMORY[0x277D84F78] + 8;

  return v14(&unk_22A579C28, v10, v12);
}

uint64_t sub_2295D54DC(uint64_t a1)
{
  v4 = *v1;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2295D5638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a2;
  v6 = sub_22A4DB21C();
  v4[5] = v6;
  v4[6] = *(v6 - 8);
  v4[7] = swift_task_alloc();
  v7 = sub_22A4DD07C();
  v4[8] = v7;
  v4[9] = *(v7 - 8);
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  v4[34] = type metadata accessor for HomeGraphIndexer.NotificationType(0);
  v4[35] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DA18, &unk_22A579B60);
  v4[36] = v8;
  v4[37] = *(v8 - 8);
  v4[38] = swift_task_alloc();
  v4[39] = swift_task_alloc();
  v4[40] = swift_task_alloc();
  v4[41] = swift_task_alloc();
  v4[42] = swift_task_alloc();
  v4[43] = swift_task_alloc();
  v4[44] = swift_task_alloc();
  v4[45] = swift_task_alloc();
  v4[46] = swift_task_alloc();
  v4[47] = swift_task_alloc();
  v4[48] = swift_task_alloc();
  v4[49] = swift_task_alloc();
  v4[50] = swift_task_alloc();
  v4[51] = swift_task_alloc();
  v4[52] = swift_task_alloc();
  v4[53] = swift_task_alloc();
  v4[54] = swift_task_alloc();
  v4[55] = swift_task_alloc();
  v4[56] = swift_task_alloc();
  v4[57] = swift_task_alloc();
  v4[58] = swift_task_alloc();
  v4[59] = swift_task_alloc();
  v4[60] = swift_task_alloc();
  v4[61] = swift_task_alloc();
  v4[62] = swift_task_alloc();
  v4[63] = swift_task_alloc();
  v4[64] = swift_task_alloc();
  v4[65] = swift_task_alloc();
  v4[66] = swift_task_alloc();
  v4[67] = swift_task_alloc();
  v4[68] = swift_task_alloc();
  v4[69] = swift_task_alloc();
  v4[70] = swift_task_alloc();
  v4[71] = swift_task_alloc();
  v4[72] = swift_task_alloc();
  v4[73] = swift_task_alloc();
  v4[74] = swift_task_alloc();
  v4[75] = swift_task_alloc();
  v4[76] = swift_task_alloc();
  v4[77] = swift_task_alloc();
  v4[78] = swift_task_alloc();
  v4[79] = swift_task_alloc();
  v4[80] = swift_task_alloc();
  v4[81] = swift_task_alloc();
  v4[82] = swift_task_alloc();
  v4[83] = swift_task_alloc();
  v4[84] = swift_task_alloc();
  v4[85] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2295D5B3C, a3, 0);
}

uint64_t sub_2295D5B3C()
{
  v760 = v0;
  v1 = v0[37];
  v2 = v0 + 35;
  sub_2295E91D8(v0[2], v0[35], type metadata accessor for HomeGraphIndexer.NotificationType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v4 = *(v1 + 32);
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v161 = v0[75];
      v162 = v0[74];
      v163 = v0[36];
      v164 = v0[37];
      v165 = v0[4];
      v4(v161, v0[35], v163);
      sub_229541CB0(v165, &off_283CDDAE8);
      (*(v164 + 16))(v162, v161, v163);
      v166 = sub_22A4DD05C();
      v167 = sub_22A4DDCCC();
      v168 = os_log_type_enabled(v166, v167);
      v169 = v0[74];
      v171 = v0[36];
      v170 = v0[37];
      v172 = v0[32];
      v173 = v0[8];
      v174 = v0[9];
      if (v168)
      {
        v718 = v166;
        v175 = v0[6];
        v176 = v0[7];
        v694 = v167;
        v177 = v0[5];
        v742 = v0[8];
        v178 = swift_slowAlloc();
        v646 = swift_slowAlloc();
        v759[0] = v646;
        *v178 = 136315138;
        sub_22A4DBA4C();
        v622 = sub_22A4DBA6C();
        v670 = v172;
        v180 = v179;
        (*(v175 + 8))(v176, v177);
        v183 = *(v170 + 8);
        v182 = v170 + 8;
        v181 = v183;
        v183(v169, v171);
        v184 = sub_2295A3E30(v622, v180, v759);

        *(v178 + 4) = v184;
        _os_log_impl(&dword_229538000, v718, v694, "New home added notification received: %s", v178, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v646);
        MEMORY[0x22AAD4E50](v646, -1, -1);
        MEMORY[0x22AAD4E50](v178, -1, -1);

        (*(v174 + 8))(v670, v742);
      }

      else
      {

        v429 = *(v170 + 8);
        v182 = v170 + 8;
        v181 = v429;
        v429(v169, v171);
        (*(v174 + 8))(v172, v173);
      }

      v0[90] = v181;
      v0[89] = v182;
      v430 = swift_task_alloc();
      v0[91] = v430;
      *v430 = v0;
      v430[1] = sub_2295D9BD8;
      v431 = v0[75];

      return sub_2295DDF48(v431);
    case 2:
      v95 = v0[73];
      v96 = v0[72];
      v97 = v0[36];
      v98 = v0[37];
      v99 = v0[4];
      v4(v95, v0[35], v97);
      sub_229541CB0(v99, &off_283CDDAE8);
      (*(v98 + 16))(v96, v95, v97);
      v100 = sub_22A4DD05C();
      v101 = sub_22A4DDCCC();
      v102 = os_log_type_enabled(v100, v101);
      v103 = v0[72];
      v105 = v0[36];
      v104 = v0[37];
      v106 = v0[31];
      v107 = v0[8];
      v108 = v0[9];
      if (v102)
      {
        v715 = v100;
        v109 = v0[6];
        v110 = v0[7];
        v691 = v101;
        v111 = v0[5];
        v739 = v0[8];
        v112 = swift_slowAlloc();
        v643 = swift_slowAlloc();
        v759[0] = v643;
        *v112 = 136315138;
        sub_22A4DBA4C();
        v619 = sub_22A4DBA6C();
        v667 = v106;
        v114 = v113;
        (*(v109 + 8))(v110, v111);
        v117 = *(v104 + 8);
        v116 = v104 + 8;
        v115 = v117;
        v117(v103, v105);
        v118 = sub_2295A3E30(v619, v114, v759);

        *(v112 + 4) = v118;
        _os_log_impl(&dword_229538000, v715, v691, "Home name changed notification received: %s", v112, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v643);
        MEMORY[0x22AAD4E50](v643, -1, -1);
        MEMORY[0x22AAD4E50](v112, -1, -1);

        (*(v108 + 8))(v667, v739);
      }

      else
      {

        v394 = *(v104 + 8);
        v116 = v104 + 8;
        v115 = v394;
        v394(v103, v105);
        (*(v108 + 8))(v106, v107);
      }

      v0[93] = v115;
      v0[92] = v116;
      v395 = swift_task_alloc();
      v0[94] = v395;
      *v395 = v0;
      v395[1] = sub_2295DA118;
      v396 = v0[73];

      return sub_2295DEEEC(v396);
    case 3:
      v137 = v0[71];
      v138 = v0[70];
      v139 = v0[36];
      v140 = v0[37];
      v141 = v0[4];
      v4(v137, v0[35], v139);
      sub_229541CB0(v141, &off_283CDDAE8);
      (*(v140 + 16))(v138, v137, v139);
      v142 = sub_22A4DD05C();
      v143 = sub_22A4DDCCC();
      v144 = os_log_type_enabled(v142, v143);
      v145 = v0[70];
      v147 = v0[36];
      v146 = v0[37];
      v148 = v0[30];
      v149 = v0[8];
      v150 = v0[9];
      if (v144)
      {
        v717 = v142;
        v151 = v0[6];
        v152 = v0[7];
        v693 = v143;
        v153 = v0[5];
        v741 = v0[8];
        v154 = swift_slowAlloc();
        v645 = swift_slowAlloc();
        v759[0] = v645;
        *v154 = 136315138;
        sub_22A4DBA4C();
        v621 = sub_22A4DBA6C();
        v669 = v148;
        v156 = v155;
        (*(v151 + 8))(v152, v153);
        v159 = *(v146 + 8);
        v158 = v146 + 8;
        v157 = v159;
        v159(v145, v147);
        v160 = sub_2295A3E30(v621, v156, v759);

        *(v154 + 4) = v160;
        _os_log_impl(&dword_229538000, v717, v693, "Home removed notification received: %s", v154, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v645);
        MEMORY[0x22AAD4E50](v645, -1, -1);
        MEMORY[0x22AAD4E50](v154, -1, -1);

        (*(v150 + 8))(v669, v741);
      }

      else
      {

        v425 = *(v146 + 8);
        v158 = v146 + 8;
        v157 = v425;
        v425(v145, v147);
        (*(v150 + 8))(v148, v149);
      }

      v0[96] = v157;
      v0[95] = v158;
      v426 = swift_task_alloc();
      v0[97] = v426;
      *v426 = v0;
      v426[1] = sub_2295DA658;

      return sub_2295DF84C();
    case 4:
      v2 = v0 + 69;
      v185 = v0[69];
      v186 = v0[68];
      v187 = v0[36];
      v188 = v0[37];
      v189 = v0[4];
      v4(v185, v0[35], v187);
      sub_229541CB0(v189, &off_283CDDAE8);
      (*(v188 + 16))(v186, v185, v187);
      v190 = sub_22A4DD05C();
      v671 = sub_22A4DDCCC();
      v191 = os_log_type_enabled(v190, v671);
      v192 = v0[68];
      v194 = v0[36];
      v193 = v0[37];
      v195 = v0[9];
      v695 = v0[29];
      v719 = v0[8];
      if (v191)
      {
        v743 = v4;
        v647 = v190;
        v196 = v0[6];
        v197 = v0[7];
        v604 = v0[9];
        v198 = v0[5];
        v609 = swift_slowAlloc();
        v623 = swift_slowAlloc();
        v759[0] = v623;
        *v609 = 136315138;
        sub_22A4DBA4C();
        v599 = sub_22A4DBA6C();
        v200 = v199;
        v201 = v197;
        v4 = v743;
        (*(v196 + 8))(v201, v198);
        (*(v193 + 8))(v192, v194);
        v202 = sub_2295A3E30(v599, v200, v759);

        *(v609 + 4) = v202;
        _os_log_impl(&dword_229538000, v647, v671, "Room added notification received: %s", v609, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v623);
        MEMORY[0x22AAD4E50](v623, -1, -1);
        MEMORY[0x22AAD4E50](v609, -1, -1);

        (*(v604 + 8))(v695, v719);
      }

      else
      {

        (*(v193 + 8))(v192, v194);
        (*(v195 + 8))(v695, v719);
      }

      goto LABEL_76;
    case 5:
LABEL_76:
      v432 = *v2;
      v433 = v0[85];
      v434 = v0[67];
      v435 = v0[36];
      v436 = v0[37];
      v437 = v0[4];
      v4(v433, v432, v435);
      sub_229541CB0(v437, &off_283CDDAE8);
      (*(v436 + 16))(v434, v433, v435);
      v438 = sub_22A4DD05C();
      v439 = sub_22A4DDCCC();
      v440 = os_log_type_enabled(v438, v439);
      v441 = v0[67];
      v443 = v0[36];
      v442 = v0[37];
      v444 = v0[28];
      v445 = v0[8];
      v446 = v0[9];
      if (v440)
      {
        v729 = v438;
        v447 = v0[6];
        v448 = v0[7];
        v705 = v439;
        v449 = v0[5];
        v753 = v0[8];
        v450 = swift_slowAlloc();
        v657 = swift_slowAlloc();
        v759[0] = v657;
        *v450 = 136315138;
        sub_22A4DBA4C();
        v633 = sub_22A4DBA6C();
        v681 = v444;
        v452 = v451;
        (*(v447 + 8))(v448, v449);
        v455 = *(v442 + 8);
        v454 = v442 + 8;
        v453 = v455;
        v455(v441, v443);
        v456 = sub_2295A3E30(v633, v452, v759);

        *(v450 + 4) = v456;
        _os_log_impl(&dword_229538000, v729, v705, "Room name updated notification received: %s", v450, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v657);
        MEMORY[0x22AAD4E50](v657, -1, -1);
        MEMORY[0x22AAD4E50](v450, -1, -1);

        (*(v446 + 8))(v681, v753);
      }

      else
      {

        v457 = *(v442 + 8);
        v454 = v442 + 8;
        v453 = v457;
        v457(v441, v443);
        (*(v446 + 8))(v444, v445);
      }

      v0[99] = v453;
      v0[98] = v454;
      v458 = swift_task_alloc();
      v0[100] = v458;
      *v458 = v0;
      v458[1] = sub_2295DAB98;
      v459 = v0[85];

      return sub_2295DFCA0(v459);
    case 6:
      v227 = v0[66];
      v228 = v0[65];
      v229 = v0[36];
      v230 = v0[37];
      v231 = v0[4];
      v4(v227, v0[35], v229);
      sub_229541CB0(v231, &off_283CDDAE8);
      (*(v230 + 16))(v228, v227, v229);
      v232 = sub_22A4DD05C();
      v233 = sub_22A4DDCCC();
      v234 = os_log_type_enabled(v232, v233);
      v235 = v0[65];
      v237 = v0[36];
      v236 = v0[37];
      v238 = v0[27];
      v239 = v0[8];
      v240 = v0[9];
      if (v234)
      {
        v721 = v232;
        v241 = v0[6];
        v242 = v0[7];
        v697 = v233;
        v243 = v0[5];
        v745 = v0[8];
        v244 = swift_slowAlloc();
        v649 = swift_slowAlloc();
        v759[0] = v649;
        *v244 = 136315138;
        sub_22A4DBA4C();
        v625 = sub_22A4DBA6C();
        v673 = v238;
        v246 = v245;
        (*(v241 + 8))(v242, v243);
        v249 = *(v236 + 8);
        v248 = v236 + 8;
        v247 = v249;
        v249(v235, v237);
        v250 = sub_2295A3E30(v625, v246, v759);

        *(v244 + 4) = v250;
        _os_log_impl(&dword_229538000, v721, v697, "Room removed notification received: %s", v244, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v649);
        MEMORY[0x22AAD4E50](v649, -1, -1);
        MEMORY[0x22AAD4E50](v244, -1, -1);

        (*(v240 + 8))(v673, v745);
      }

      else
      {

        v463 = *(v236 + 8);
        v248 = v236 + 8;
        v247 = v463;
        v463(v235, v237);
        (*(v240 + 8))(v238, v239);
      }

      v0[102] = v247;
      v0[101] = v248;
      v464 = swift_task_alloc();
      v0[103] = v464;
      *v464 = v0;
      v464[1] = sub_2295DB130;
      v465 = v0[66];

      return sub_2295E07E4(v465);
    case 7:
      v2 = v0 + 64;
      v294 = v0[63];
      v293 = v0[64];
      v295 = v0[36];
      v296 = v0[37];
      v297 = v0[4];
      v4(v293, v0[35], v295);
      sub_229541CB0(v297, &off_283CDDAE8);
      (*(v296 + 16))(v294, v293, v295);
      v298 = sub_22A4DD05C();
      v676 = sub_22A4DDCCC();
      v299 = os_log_type_enabled(v298, v676);
      v300 = v0[63];
      v302 = v0[36];
      v301 = v0[37];
      v303 = v0[9];
      v700 = v0[26];
      v724 = v0[8];
      if (v299)
      {
        v748 = v4;
        v652 = v298;
        v304 = v0[6];
        v305 = v0[7];
        v606 = v0[9];
        v306 = v0[5];
        v611 = swift_slowAlloc();
        v628 = swift_slowAlloc();
        v759[0] = v628;
        *v611 = 136315138;
        sub_22A4DBA4C();
        v601 = sub_22A4DBA6C();
        v308 = v307;
        v309 = v305;
        v4 = v748;
        (*(v304 + 8))(v309, v306);
        (*(v301 + 8))(v300, v302);
        v310 = sub_2295A3E30(v601, v308, v759);

        *(v611 + 4) = v310;
        _os_log_impl(&dword_229538000, v652, v676, "Zone added notification received: %s", v611, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v628);
        MEMORY[0x22AAD4E50](v628, -1, -1);
        MEMORY[0x22AAD4E50](v611, -1, -1);

        (*(v606 + 8))(v700, v724);
      }

      else
      {

        (*(v301 + 8))(v300, v302);
        (*(v303 + 8))(v700, v724);
      }

      goto LABEL_114;
    case 8:
LABEL_114:
      v560 = *v2;
      v561 = v0[84];
      v562 = v0[62];
      v563 = v0[36];
      v564 = v0[37];
      v565 = v0[4];
      v4(v561, v560, v563);
      sub_229541CB0(v565, &off_283CDDAE8);
      (*(v564 + 16))(v562, v561, v563);
      v566 = sub_22A4DD05C();
      v567 = sub_22A4DDCCC();
      v568 = os_log_type_enabled(v566, v567);
      v569 = v0[62];
      v571 = v0[36];
      v570 = v0[37];
      v572 = v0[25];
      v573 = v0[8];
      v574 = v0[9];
      if (v568)
      {
        v734 = v566;
        v575 = v0[6];
        v576 = v0[7];
        v710 = v567;
        v577 = v0[5];
        v758 = v0[8];
        v578 = swift_slowAlloc();
        v662 = swift_slowAlloc();
        v759[0] = v662;
        *v578 = 136315138;
        sub_22A4DBA4C();
        v638 = sub_22A4DBA6C();
        v686 = v572;
        v580 = v579;
        (*(v575 + 8))(v576, v577);
        v583 = *(v570 + 8);
        v582 = v570 + 8;
        v581 = v583;
        v583(v569, v571);
        v584 = sub_2295A3E30(v638, v580, v759);

        *(v578 + 4) = v584;
        _os_log_impl(&dword_229538000, v734, v710, "Zone name changed notification received: %s", v578, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v662);
        MEMORY[0x22AAD4E50](v662, -1, -1);
        MEMORY[0x22AAD4E50](v578, -1, -1);

        (*(v574 + 8))(v686, v758);
      }

      else
      {

        v585 = *(v570 + 8);
        v582 = v570 + 8;
        v581 = v585;
        v585(v569, v571);
        (*(v574 + 8))(v572, v573);
      }

      v0[105] = v581;
      v0[104] = v582;
      v586 = swift_task_alloc();
      v0[106] = v586;
      *v586 = v0;
      v586[1] = sub_2295DB670;
      v587 = v0[84];

      return sub_2295E10D0(v587);
    case 9:
      v72 = v0[60];
      v71 = v0[61];
      v73 = v0[36];
      v74 = v0[37];
      v75 = v0[4];
      v4(v71, v0[35], v73);
      sub_229541CB0(v75, &off_283CDDAE8);
      (*(v74 + 16))(v72, v71, v73);
      v76 = sub_22A4DD05C();
      v77 = sub_22A4DDCCC();
      v78 = os_log_type_enabled(v76, v77);
      v79 = v0[60];
      v81 = v0[36];
      v80 = v0[37];
      v82 = v0[24];
      v83 = v0[8];
      v84 = v0[9];
      if (v78)
      {
        v714 = v76;
        v85 = v0[6];
        v86 = v0[7];
        v690 = v77;
        v87 = v0[5];
        v738 = v0[8];
        v88 = swift_slowAlloc();
        v642 = swift_slowAlloc();
        v759[0] = v642;
        *v88 = 136315138;
        sub_22A4DBA4C();
        v618 = sub_22A4DBA6C();
        v666 = v82;
        v90 = v89;
        (*(v85 + 8))(v86, v87);
        v93 = *(v80 + 8);
        v92 = v80 + 8;
        v91 = v93;
        v93(v79, v81);
        v94 = sub_2295A3E30(v618, v90, v759);

        *(v88 + 4) = v94;
        _os_log_impl(&dword_229538000, v714, v690, "Zone updated notification received: %s", v88, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v642);
        MEMORY[0x22AAD4E50](v642, -1, -1);
        MEMORY[0x22AAD4E50](v88, -1, -1);

        (*(v84 + 8))(v666, v738);
      }

      else
      {

        v391 = *(v80 + 8);
        v92 = v80 + 8;
        v91 = v391;
        v391(v79, v81);
        (*(v84 + 8))(v82, v83);
      }

      v0[108] = v91;
      v0[107] = v92;
      v392 = swift_task_alloc();
      v0[109] = v392;
      *v392 = v0;
      v392[1] = sub_2295DB7F4;
      v393 = v0[61];

      return sub_2295E1A30(v393);
    case 10:
      v270 = v0[58];
      v269 = v0[59];
      v271 = v0[36];
      v272 = v0[37];
      v273 = v0[4];
      v4(v269, v0[35], v271);
      sub_229541CB0(v273, &off_283CDDAE8);
      (*(v272 + 16))(v270, v269, v271);
      v274 = sub_22A4DD05C();
      v275 = sub_22A4DDCCC();
      v276 = os_log_type_enabled(v274, v275);
      v277 = v0[58];
      v279 = v0[36];
      v278 = v0[37];
      v280 = v0[23];
      v281 = v0[8];
      v282 = v0[9];
      if (v276)
      {
        v723 = v274;
        v283 = v0[6];
        v284 = v0[7];
        v699 = v275;
        v285 = v0[5];
        v747 = v0[8];
        v286 = swift_slowAlloc();
        v651 = swift_slowAlloc();
        v759[0] = v651;
        *v286 = 136315138;
        sub_22A4DBA4C();
        v627 = sub_22A4DBA6C();
        v675 = v280;
        v288 = v287;
        (*(v283 + 8))(v284, v285);
        v291 = *(v278 + 8);
        v290 = v278 + 8;
        v289 = v291;
        v291(v277, v279);
        v292 = sub_2295A3E30(v627, v288, v759);

        *(v286 + 4) = v292;
        _os_log_impl(&dword_229538000, v723, v699, "Zone removed notification received: %s", v286, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v651);
        MEMORY[0x22AAD4E50](v651, -1, -1);
        MEMORY[0x22AAD4E50](v286, -1, -1);

        (*(v282 + 8))(v675, v747);
      }

      else
      {

        v557 = *(v278 + 8);
        v290 = v278 + 8;
        v289 = v557;
        v557(v277, v279);
        (*(v282 + 8))(v280, v281);
      }

      v0[111] = v289;
      v0[110] = v290;
      v558 = swift_task_alloc();
      v0[112] = v558;
      *v558 = v0;
      v558[1] = sub_2295DBD34;
      v559 = v0[59];

      return sub_2295E3B70(v559);
    case 11:
      v2 = v0 + 57;
      v54 = v0[56];
      v53 = v0[57];
      v55 = v0[36];
      v56 = v0[37];
      v57 = v0[4];
      v4(v53, v0[35], v55);
      sub_229541CB0(v57, &off_283CDDAE8);
      (*(v56 + 16))(v54, v53, v55);
      v58 = sub_22A4DD05C();
      v665 = sub_22A4DDCCC();
      v59 = os_log_type_enabled(v58, v665);
      v60 = v0[56];
      v62 = v0[36];
      v61 = v0[37];
      v63 = v0[9];
      v689 = v0[22];
      v713 = v0[8];
      if (v59)
      {
        v737 = v4;
        v641 = v58;
        v64 = v0[6];
        v65 = v0[7];
        v602 = v0[9];
        v66 = v0[5];
        v607 = swift_slowAlloc();
        v617 = swift_slowAlloc();
        v759[0] = v617;
        *v607 = 136315138;
        sub_22A4DBA4C();
        v597 = sub_22A4DBA6C();
        v68 = v67;
        v69 = v65;
        v4 = v737;
        (*(v64 + 8))(v69, v66);
        (*(v61 + 8))(v60, v62);
        v70 = sub_2295A3E30(v597, v68, v759);

        *(v607 + 4) = v70;
        _os_log_impl(&dword_229538000, v641, v665, "Scene added notification received: %s", v607, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v617);
        MEMORY[0x22AAD4E50](v617, -1, -1);
        MEMORY[0x22AAD4E50](v607, -1, -1);

        (*(v602 + 8))(v689, v713);
      }

      else
      {

        (*(v61 + 8))(v60, v62);
        (*(v63 + 8))(v689, v713);
      }

      goto LABEL_42;
    case 12:
LABEL_42:
      v363 = *v2;
      v364 = v0[83];
      v365 = v0[55];
      v366 = v0[36];
      v367 = v0[37];
      v368 = v0[4];
      v4(v364, v363, v366);
      sub_229541CB0(v368, &off_283CDDAE8);
      (*(v367 + 16))(v365, v364, v366);
      v369 = sub_22A4DD05C();
      v370 = sub_22A4DDCCC();
      v371 = os_log_type_enabled(v369, v370);
      v372 = v0[55];
      v374 = v0[36];
      v373 = v0[37];
      v375 = v0[21];
      v376 = v0[8];
      v377 = v0[9];
      if (v371)
      {
        v727 = v369;
        v378 = v0[6];
        v379 = v0[7];
        v703 = v370;
        v380 = v0[5];
        v751 = v0[8];
        v381 = swift_slowAlloc();
        v655 = swift_slowAlloc();
        v759[0] = v655;
        *v381 = 136315138;
        sub_22A4DBA4C();
        v631 = sub_22A4DBA6C();
        v679 = v375;
        v383 = v382;
        (*(v378 + 8))(v379, v380);
        v386 = *(v373 + 8);
        v385 = v373 + 8;
        v384 = v386;
        v386(v372, v374);
        v387 = sub_2295A3E30(v631, v383, v759);

        *(v381 + 4) = v387;
        _os_log_impl(&dword_229538000, v727, v703, "Scene renamed notification received: %s", v381, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v655);
        MEMORY[0x22AAD4E50](v655, -1, -1);
        MEMORY[0x22AAD4E50](v381, -1, -1);

        (*(v377 + 8))(v679, v751);
      }

      else
      {

        v388 = *(v373 + 8);
        v385 = v373 + 8;
        v384 = v388;
        v388(v372, v374);
        (*(v377 + 8))(v375, v376);
      }

      v0[114] = v384;
      v0[113] = v385;
      v389 = swift_task_alloc();
      v0[115] = v389;
      *v389 = v0;
      v389[1] = sub_2295DC274;
      v390 = v0[83];

      return sub_2295E44E8(v390);
    case 13:
      v204 = v0[53];
      v203 = v0[54];
      v205 = v0[36];
      v206 = v0[37];
      v207 = v0[4];
      v4(v203, v0[35], v205);
      sub_229541CB0(v207, &off_283CDDAE8);
      (*(v206 + 16))(v204, v203, v205);
      v208 = sub_22A4DD05C();
      v209 = sub_22A4DDCCC();
      v210 = os_log_type_enabled(v208, v209);
      v211 = v0[53];
      v213 = v0[36];
      v212 = v0[37];
      v214 = v0[20];
      v215 = v0[8];
      v216 = v0[9];
      if (v210)
      {
        v720 = v208;
        v217 = v0[6];
        v218 = v0[7];
        v696 = v209;
        v219 = v0[5];
        v744 = v0[8];
        v220 = swift_slowAlloc();
        v648 = swift_slowAlloc();
        v759[0] = v648;
        *v220 = 136315138;
        sub_22A4DBA4C();
        v624 = sub_22A4DBA6C();
        v672 = v214;
        v222 = v221;
        (*(v217 + 8))(v218, v219);
        v225 = *(v212 + 8);
        v224 = v212 + 8;
        v223 = v225;
        v225(v211, v213);
        v226 = sub_2295A3E30(v624, v222, v759);

        *(v220 + 4) = v226;
        _os_log_impl(&dword_229538000, v720, v696, "Scene removed notification received: %s", v220, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v648);
        MEMORY[0x22AAD4E50](v648, -1, -1);
        MEMORY[0x22AAD4E50](v220, -1, -1);

        (*(v216 + 8))(v672, v744);
      }

      else
      {

        v460 = *(v212 + 8);
        v224 = v212 + 8;
        v223 = v460;
        v460(v211, v213);
        (*(v216 + 8))(v214, v215);
      }

      v0[117] = v223;
      v0[116] = v224;
      v461 = swift_task_alloc();
      v0[118] = v461;
      *v461 = v0;
      v461[1] = sub_2295DC3F8;
      v462 = v0[54];

      return sub_2295E5B08(v462);
    case 14:
      v2 = v0 + 52;
      v120 = v0[51];
      v119 = v0[52];
      v121 = v0[36];
      v122 = v0[37];
      v123 = v0[4];
      v4(v119, v0[35], v121);
      sub_229541CB0(v123, &off_283CDDAE8);
      (*(v122 + 16))(v120, v119, v121);
      v124 = sub_22A4DD05C();
      v668 = sub_22A4DDCCC();
      v125 = os_log_type_enabled(v124, v668);
      v126 = v0[51];
      v128 = v0[36];
      v127 = v0[37];
      v129 = v0[9];
      v692 = v0[19];
      v716 = v0[8];
      if (v125)
      {
        v740 = v4;
        v644 = v124;
        v130 = v0[6];
        v131 = v0[7];
        v603 = v0[9];
        v132 = v0[5];
        v608 = swift_slowAlloc();
        v620 = swift_slowAlloc();
        v759[0] = v620;
        *v608 = 136315138;
        sub_22A4DBA4C();
        v598 = sub_22A4DBA6C();
        v134 = v133;
        v135 = v131;
        v4 = v740;
        (*(v130 + 8))(v135, v132);
        (*(v127 + 8))(v126, v128);
        v136 = sub_2295A3E30(v598, v134, v759);

        *(v608 + 4) = v136;
        _os_log_impl(&dword_229538000, v644, v668, "Service group added notification received: %s", v608, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v620);
        MEMORY[0x22AAD4E50](v620, -1, -1);
        MEMORY[0x22AAD4E50](v608, -1, -1);

        (*(v603 + 8))(v692, v716);
      }

      else
      {

        (*(v127 + 8))(v126, v128);
        (*(v129 + 8))(v692, v716);
      }

      goto LABEL_57;
    case 15:
LABEL_57:
      v397 = *v2;
      v398 = v0[82];
      v399 = v0[50];
      v400 = v0[36];
      v401 = v0[37];
      v402 = v0[4];
      v4(v398, v397, v400);
      sub_229541CB0(v402, &off_283CDDAE8);
      (*(v401 + 16))(v399, v398, v400);
      v403 = sub_22A4DD05C();
      v404 = sub_22A4DDCCC();
      v405 = os_log_type_enabled(v403, v404);
      v406 = v0[50];
      v408 = v0[36];
      v407 = v0[37];
      v409 = v0[18];
      v410 = v0[8];
      v411 = v0[9];
      if (v405)
      {
        v728 = v403;
        v412 = v0[6];
        v413 = v0[7];
        v704 = v404;
        v414 = v0[5];
        v752 = v0[8];
        v415 = swift_slowAlloc();
        v656 = swift_slowAlloc();
        v759[0] = v656;
        *v415 = 136315138;
        sub_22A4DBA4C();
        v632 = sub_22A4DBA6C();
        v680 = v409;
        v417 = v416;
        (*(v412 + 8))(v413, v414);
        v420 = *(v407 + 8);
        v419 = v407 + 8;
        v418 = v420;
        v420(v406, v408);
        v421 = sub_2295A3E30(v632, v417, v759);

        *(v415 + 4) = v421;
        _os_log_impl(&dword_229538000, v728, v704, "Service group renamed notification received: %s", v415, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v656);
        MEMORY[0x22AAD4E50](v656, -1, -1);
        MEMORY[0x22AAD4E50](v415, -1, -1);

        (*(v411 + 8))(v680, v752);
      }

      else
      {

        v422 = *(v407 + 8);
        v419 = v407 + 8;
        v418 = v422;
        v422(v406, v408);
        (*(v411 + 8))(v409, v410);
      }

      v0[120] = v418;
      v0[119] = v419;
      v423 = swift_task_alloc();
      v0[121] = v423;
      *v423 = v0;
      v423[1] = sub_2295DC938;
      v424 = v0[82];

      return sub_2295E7734(v424);
    case 16:
      v30 = v0[48];
      v29 = v0[49];
      v31 = v0[36];
      v32 = v0[37];
      v33 = v0[4];
      v4(v29, v0[35], v31);
      sub_229541CB0(v33, &off_283CDDAE8);
      (*(v32 + 16))(v30, v29, v31);
      v34 = sub_22A4DD05C();
      v35 = sub_22A4DDCCC();
      v36 = os_log_type_enabled(v34, v35);
      v37 = v0[48];
      v39 = v0[36];
      v38 = v0[37];
      v40 = v0[17];
      v41 = v0[8];
      v42 = v0[9];
      if (v36)
      {
        v712 = v34;
        v43 = v0[6];
        v44 = v0[7];
        v688 = v35;
        v45 = v0[5];
        v736 = v0[8];
        v46 = swift_slowAlloc();
        v640 = swift_slowAlloc();
        v759[0] = v640;
        *v46 = 136315138;
        sub_22A4DBA4C();
        v616 = sub_22A4DBA6C();
        v664 = v40;
        v48 = v47;
        (*(v43 + 8))(v44, v45);
        v51 = *(v38 + 8);
        v50 = v38 + 8;
        v49 = v51;
        v51(v37, v39);
        v52 = sub_2295A3E30(v616, v48, v759);

        *(v46 + 4) = v52;
        _os_log_impl(&dword_229538000, v712, v688, "Service group removed notification received: %s", v46, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v640);
        MEMORY[0x22AAD4E50](v640, -1, -1);
        MEMORY[0x22AAD4E50](v46, -1, -1);

        (*(v42 + 8))(v664, v736);
      }

      else
      {

        v359 = *(v38 + 8);
        v50 = v38 + 8;
        v49 = v359;
        v359(v37, v39);
        (*(v42 + 8))(v40, v41);
      }

      v0[123] = v49;
      v0[122] = v50;
      v360 = swift_task_alloc();
      v0[124] = v360;
      *v360 = v0;
      v360[1] = sub_2295DCABC;
      v361 = v0[49];

      return sub_2295E8074(v361);
    case 17:
      v2 = v0 + 47;
      v252 = v0[46];
      v251 = v0[47];
      v253 = v0[36];
      v254 = v0[37];
      v255 = v0[4];
      v4(v251, v0[35], v253);
      sub_229541CB0(v255, &off_283CDDAE8);
      (*(v254 + 16))(v252, v251, v253);
      v256 = sub_22A4DD05C();
      v674 = sub_22A4DDCCC();
      v257 = os_log_type_enabled(v256, v674);
      v258 = v0[46];
      v260 = v0[36];
      v259 = v0[37];
      v261 = v0[9];
      v698 = v0[16];
      v722 = v0[8];
      if (v257)
      {
        v746 = v4;
        v650 = v256;
        v262 = v0[6];
        v263 = v0[7];
        v605 = v0[9];
        v264 = v0[5];
        v610 = swift_slowAlloc();
        v626 = swift_slowAlloc();
        v759[0] = v626;
        *v610 = 136315138;
        sub_22A4DBA4C();
        v600 = sub_22A4DBA6C();
        v266 = v265;
        v267 = v263;
        v4 = v746;
        (*(v262 + 8))(v267, v264);
        (*(v259 + 8))(v258, v260);
        v268 = sub_2295A3E30(v600, v266, v759);

        *(v610 + 4) = v268;
        _os_log_impl(&dword_229538000, v650, v674, "Accessory added notification received: %s", v610, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v626);
        MEMORY[0x22AAD4E50](v626, -1, -1);
        MEMORY[0x22AAD4E50](v610, -1, -1);

        (*(v605 + 8))(v698, v722);
      }

      else
      {

        (*(v259 + 8))(v258, v260);
        (*(v261 + 8))(v698, v722);
      }

      goto LABEL_91;
    case 18:
LABEL_91:
      v466 = *v2;
      v467 = v0[81];
      v468 = v0[45];
      v469 = v0[36];
      v470 = v0[37];
      v471 = v0[4];
      v4(v467, v466, v469);
      sub_229541CB0(v471, &off_283CDDAE8);
      (*(v470 + 16))(v468, v467, v469);
      v472 = sub_22A4DD05C();
      v473 = sub_22A4DDCDC();
      v474 = os_log_type_enabled(v472, v473);
      v475 = v0[45];
      v476 = v0[36];
      v477 = v0[37];
      v478 = v0[15];
      v480 = v0[8];
      v479 = v0[9];
      if (v474)
      {
        v730 = v0[15];
        v754 = v4;
        v706 = v472;
        v481 = v0[6];
        v482 = v0[7];
        v483 = v0[5];
        v658 = v473;
        v484 = swift_slowAlloc();
        v634 = swift_slowAlloc();
        v759[0] = v634;
        *v484 = 136315138;
        sub_22A4DBA4C();
        v612 = sub_22A4DBA6C();
        v682 = v480;
        v486 = v485;
        v487 = v482;
        v4 = v754;
        (*(v481 + 8))(v487, v483);
        (*(v477 + 8))(v475, v476);
        v488 = sub_2295A3E30(v612, v486, v759);

        *(v484 + 4) = v488;
        _os_log_impl(&dword_229538000, v706, v658, "services inside accessory updated notification received: %s", v484, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v634);
        MEMORY[0x22AAD4E50](v634, -1, -1);
        MEMORY[0x22AAD4E50](v484, -1, -1);

        (*(v479 + 8))(v730, v682);
      }

      else
      {

        (*(v477 + 8))(v475, v476);
        (*(v479 + 8))(v478, v480);
      }

      v4(v0[80], v0[81], v0[36]);
      goto LABEL_95;
    case 19:
      v4(v0[80], v0[35], v0[36]);
LABEL_95:
      v489 = v0[80];
      v490 = v0[44];
      v491 = v0[36];
      v492 = v0[37];
      sub_229541CB0(v0[4], &off_283CDDAE8);
      (*(v492 + 16))(v490, v489, v491);
      v493 = sub_22A4DD05C();
      v494 = sub_22A4DDCCC();
      v495 = os_log_type_enabled(v493, v494);
      v496 = v0[44];
      v497 = v0[36];
      v498 = v0[37];
      v499 = v0[14];
      v501 = v0[8];
      v500 = v0[9];
      if (v495)
      {
        v731 = v0[14];
        v755 = v4;
        v707 = v493;
        v502 = v0[6];
        v503 = v0[7];
        v504 = v0[5];
        v659 = v494;
        v505 = swift_slowAlloc();
        v635 = swift_slowAlloc();
        v759[0] = v635;
        *v505 = 136315138;
        sub_22A4DBA4C();
        v613 = sub_22A4DBA6C();
        v683 = v501;
        v507 = v506;
        v508 = v503;
        v4 = v755;
        (*(v502 + 8))(v508, v504);
        (*(v498 + 8))(v496, v497);
        v509 = sub_2295A3E30(v613, v507, v759);

        *(v505 + 4) = v509;
        _os_log_impl(&dword_229538000, v707, v659, "Characteristics inside accessory updated notification received: %s", v505, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v635);
        MEMORY[0x22AAD4E50](v635, -1, -1);
        MEMORY[0x22AAD4E50](v505, -1, -1);

        (*(v500 + 8))(v731, v683);
      }

      else
      {

        (*(v498 + 8))(v496, v497);
        (*(v500 + 8))(v499, v501);
      }

      v4(v0[79], v0[80], v0[36]);
      goto LABEL_99;
    case 20:
      v4(v0[79], v0[35], v0[36]);
LABEL_99:
      v510 = v0[79];
      v511 = v0[43];
      v512 = v0[36];
      v513 = v0[37];
      sub_229541CB0(v0[4], &off_283CDDAE8);
      (*(v513 + 16))(v511, v510, v512);
      v514 = sub_22A4DD05C();
      v515 = sub_22A4DDCCC();
      v516 = os_log_type_enabled(v514, v515);
      v517 = v0[43];
      v518 = v0[36];
      v519 = v0[37];
      v520 = v0[13];
      v522 = v0[8];
      v521 = v0[9];
      if (v516)
      {
        v732 = v0[13];
        v756 = v4;
        v708 = v514;
        v523 = v0[6];
        v524 = v0[7];
        v525 = v0[5];
        v660 = v515;
        v526 = swift_slowAlloc();
        v636 = swift_slowAlloc();
        v759[0] = v636;
        *v526 = 136315138;
        sub_22A4DBA4C();
        v614 = sub_22A4DBA6C();
        v684 = v522;
        v528 = v527;
        v529 = v524;
        v4 = v756;
        (*(v523 + 8))(v529, v525);
        (*(v519 + 8))(v517, v518);
        v530 = sub_2295A3E30(v614, v528, v759);

        *(v526 + 4) = v530;
        _os_log_impl(&dword_229538000, v708, v660, "Accessory moved to room notification received: %s", v526, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v636);
        MEMORY[0x22AAD4E50](v636, -1, -1);
        MEMORY[0x22AAD4E50](v526, -1, -1);

        (*(v521 + 8))(v732, v684);
      }

      else
      {

        (*(v519 + 8))(v517, v518);
        (*(v521 + 8))(v520, v522);
      }

      v4(v0[78], v0[79], v0[36]);
      goto LABEL_103;
    case 21:
      v4(v0[78], v0[35], v0[36]);
LABEL_103:
      v531 = v0[78];
      v532 = v0[42];
      v533 = v0[36];
      v534 = v0[37];
      sub_229541CB0(v0[4], &off_283CDDAE8);
      (*(v534 + 16))(v532, v531, v533);
      v535 = sub_22A4DD05C();
      v536 = sub_22A4DDCCC();
      v537 = os_log_type_enabled(v535, v536);
      v538 = v0[42];
      v540 = v0[36];
      v539 = v0[37];
      v541 = v0[12];
      v542 = v0[8];
      v543 = v0[9];
      if (v537)
      {
        v733 = v535;
        v544 = v0[6];
        v545 = v0[7];
        v709 = v536;
        v546 = v0[5];
        v757 = v0[8];
        v547 = swift_slowAlloc();
        v661 = swift_slowAlloc();
        v759[0] = v661;
        *v547 = 136315138;
        sub_22A4DBA4C();
        v637 = sub_22A4DBA6C();
        v685 = v541;
        v549 = v548;
        (*(v544 + 8))(v545, v546);
        v552 = *(v539 + 8);
        v551 = v539 + 8;
        v550 = v552;
        v552(v538, v540);
        v553 = sub_2295A3E30(v637, v549, v759);

        *(v547 + 4) = v553;
        _os_log_impl(&dword_229538000, v733, v709, "Accessory name updated notification received: %s", v547, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v661);
        MEMORY[0x22AAD4E50](v661, -1, -1);
        MEMORY[0x22AAD4E50](v547, -1, -1);

        (*(v543 + 8))(v685, v757);
      }

      else
      {

        v554 = *(v539 + 8);
        v551 = v539 + 8;
        v550 = v554;
        v554(v538, v540);
        (*(v543 + 8))(v541, v542);
      }

      v0[126] = v550;
      v0[125] = v551;
      v555 = swift_task_alloc();
      v0[127] = v555;
      *v555 = v0;
      v555[1] = sub_2295DCFFC;
      v556 = v0[78];

      result = sub_2295E63C4(v556);
      break;
    case 22:
      v312 = v0[40];
      v311 = v0[41];
      v313 = v0[36];
      v314 = v0[37];
      v315 = v0[4];
      v4(v311, v0[35], v313);
      sub_229541CB0(v315, &off_283CDDAE8);
      (*(v314 + 16))(v312, v311, v313);
      v316 = sub_22A4DD05C();
      v317 = sub_22A4DDCCC();
      v318 = os_log_type_enabled(v316, v317);
      v319 = v0[40];
      v321 = v0[36];
      v320 = v0[37];
      v322 = v0[11];
      v323 = v0[8];
      v324 = v0[9];
      if (v318)
      {
        v725 = v316;
        v325 = v0[6];
        v326 = v0[7];
        v701 = v317;
        v327 = v0[5];
        v749 = v0[8];
        v328 = swift_slowAlloc();
        v653 = swift_slowAlloc();
        v759[0] = v653;
        *v328 = 136315138;
        sub_22A4DBA4C();
        v629 = sub_22A4DBA6C();
        v677 = v322;
        v330 = v329;
        (*(v325 + 8))(v326, v327);
        v333 = *(v320 + 8);
        v332 = v320 + 8;
        v331 = v333;
        v333(v319, v321);
        v334 = sub_2295A3E30(v629, v330, v759);

        *(v328 + 4) = v334;
        _os_log_impl(&dword_229538000, v725, v701, "Accessory removed notification received: %s", v328, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v653);
        MEMORY[0x22AAD4E50](v653, -1, -1);
        MEMORY[0x22AAD4E50](v328, -1, -1);

        (*(v324 + 8))(v677, v749);
      }

      else
      {

        v588 = *(v320 + 8);
        v332 = v320 + 8;
        v331 = v588;
        v588(v319, v321);
        (*(v324 + 8))(v322, v323);
      }

      v0[129] = v331;
      v0[128] = v332;
      v589 = swift_task_alloc();
      v0[130] = v589;
      *v589 = v0;
      v589[1] = sub_2295DD180;
      v590 = v0[41];

      result = sub_2295E6968(v590);
      break;
    case 23:
      v336 = v0[38];
      v335 = v0[39];
      v337 = v0[36];
      v338 = v0[37];
      v339 = v0[4];
      v4(v335, v0[35], v337);
      sub_229541CB0(v339, &off_283CDDAE8);
      (*(v338 + 16))(v336, v335, v337);
      v340 = sub_22A4DD05C();
      v341 = sub_22A4DDCCC();
      v342 = os_log_type_enabled(v340, v341);
      v344 = v0[37];
      v343 = v0[38];
      v345 = v0[36];
      v347 = v0[9];
      v346 = v0[10];
      v348 = v0[8];
      if (v342)
      {
        v726 = v340;
        v750 = v0[10];
        v349 = v0[6];
        v350 = v0[7];
        v351 = v0[5];
        v678 = v341;
        v352 = swift_slowAlloc();
        v654 = swift_slowAlloc();
        v759[0] = v654;
        *v352 = 136315138;
        sub_22A4DBA4C();
        v630 = sub_22A4DBA6C();
        v702 = v348;
        v354 = v353;
        (*(v349 + 8))(v350, v351);
        v355 = *(v344 + 8);
        v355(v343, v345);
        v356 = sub_2295A3E30(v630, v354, v759);

        *(v352 + 4) = v356;
        _os_log_impl(&dword_229538000, v726, v678, "RVC area & maps updated notification received: %s", v352, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v654);
        MEMORY[0x22AAD4E50](v654, -1, -1);
        v357 = v352;
        v358 = v355;
        MEMORY[0x22AAD4E50](v357, -1, -1);

        (*(v347 + 8))(v750, v702);
      }

      else
      {

        v358 = *(v344 + 8);
        v358(v343, v345);
        (*(v347 + 8))(v346, v348);
      }

      v591 = v0[39];
      v592 = v0[36];
      v594 = v0[6];
      v593 = v0[7];
      v595 = v0[5];
      sub_22A4DBA4C();
      (*(v594 + 8))(v593, v595);
      v358(v591, v592);

      v596 = v0[1];

      result = v596();
      break;
    default:
      v5 = v0[77];
      v6 = v0[76];
      v7 = v0[36];
      v8 = v0[37];
      v9 = v0[4];
      v4(v5, v0[35], v7);
      sub_229541CB0(v9, &off_283CDDAE8);
      (*(v8 + 16))(v6, v5, v7);
      v10 = sub_22A4DD05C();
      v11 = sub_22A4DDCCC();
      v12 = os_log_type_enabled(v10, v11);
      v13 = v0[76];
      v15 = v0[36];
      v14 = v0[37];
      v16 = v0[33];
      v17 = v0[8];
      v18 = v0[9];
      if (v12)
      {
        v711 = v10;
        v19 = v0[6];
        v20 = v0[7];
        v687 = v11;
        v21 = v0[5];
        v735 = v0[8];
        v22 = swift_slowAlloc();
        v639 = swift_slowAlloc();
        v759[0] = v639;
        *v22 = 136315138;
        sub_22A4DBA4C();
        v615 = sub_22A4DBA6C();
        v663 = v16;
        v24 = v23;
        (*(v19 + 8))(v20, v21);
        v27 = *(v14 + 8);
        v26 = v14 + 8;
        v25 = v27;
        v27(v13, v15);
        v28 = sub_2295A3E30(v615, v24, v759);

        *(v22 + 4) = v28;
        _os_log_impl(&dword_229538000, v711, v687, "Current home changed notification received: %s", v22, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v639);
        MEMORY[0x22AAD4E50](v639, -1, -1);
        MEMORY[0x22AAD4E50](v22, -1, -1);

        (*(v18 + 8))(v663, v735);
      }

      else
      {

        v427 = *(v14 + 8);
        v26 = v14 + 8;
        v25 = v427;
        v427(v13, v15);
        (*(v18 + 8))(v16, v17);
      }

      v0[87] = v25;
      v0[86] = v26;
      v428 = swift_task_alloc();
      v0[88] = v428;
      *v428 = v0;
      v428[1] = sub_2295D9698;

      result = sub_2295DD6C0();
      break;
  }

  return result;
}

uint64_t sub_2295D9698()
{
  v1 = *(*v0 + 24);

  return MEMORY[0x2822009F8](sub_2295D97A8, v1, 0);
}

uint64_t sub_2295D97A8()
{
  (*(v0 + 696))(*(v0 + 616), *(v0 + 288));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2295D9BD8()
{
  v1 = *(*v0 + 24);

  return MEMORY[0x2822009F8](sub_2295D9CE8, v1, 0);
}

uint64_t sub_2295D9CE8()
{
  (*(v0 + 720))(*(v0 + 600), *(v0 + 288));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2295DA118()
{
  v1 = *(*v0 + 24);

  return MEMORY[0x2822009F8](sub_2295DA228, v1, 0);
}

uint64_t sub_2295DA228()
{
  (*(v0 + 744))(*(v0 + 584), *(v0 + 288));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2295DA658()
{
  v1 = *(*v0 + 24);

  return MEMORY[0x2822009F8](sub_2295DA768, v1, 0);
}

uint64_t sub_2295DA768()
{
  (*(v0 + 768))(*(v0 + 568), *(v0 + 288));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2295DAB98()
{
  v1 = *(*v0 + 792);
  v2 = *(*v0 + 680);
  v3 = *(*v0 + 288);
  v4 = *(*v0 + 24);

  v1(v2, v3);

  return MEMORY[0x2822009F8](sub_2295DAD1C, v4, 0);
}

uint64_t sub_2295DAD1C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2295DB130()
{
  v1 = *(*v0 + 24);

  return MEMORY[0x2822009F8](sub_2295DB240, v1, 0);
}

uint64_t sub_2295DB240()
{
  (*(v0 + 816))(*(v0 + 528), *(v0 + 288));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2295DB670()
{
  v1 = *(*v0 + 840);
  v2 = *(*v0 + 672);
  v3 = *(*v0 + 288);
  v4 = *(*v0 + 24);

  v1(v2, v3);

  return MEMORY[0x2822009F8](sub_2295E9774, v4, 0);
}

uint64_t sub_2295DB7F4()
{
  v1 = *(*v0 + 24);

  return MEMORY[0x2822009F8](sub_2295DB904, v1, 0);
}

uint64_t sub_2295DB904()
{
  (*(v0 + 864))(*(v0 + 488), *(v0 + 288));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2295DBD34()
{
  v1 = *(*v0 + 24);

  return MEMORY[0x2822009F8](sub_2295DBE44, v1, 0);
}

uint64_t sub_2295DBE44()
{
  (*(v0 + 888))(*(v0 + 472), *(v0 + 288));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2295DC274()
{
  v1 = *(*v0 + 912);
  v2 = *(*v0 + 664);
  v3 = *(*v0 + 288);
  v4 = *(*v0 + 24);

  v1(v2, v3);

  return MEMORY[0x2822009F8](sub_2295E9774, v4, 0);
}

uint64_t sub_2295DC3F8()
{
  v1 = *(*v0 + 24);

  return MEMORY[0x2822009F8](sub_2295DC508, v1, 0);
}

uint64_t sub_2295DC508()
{
  (*(v0 + 936))(*(v0 + 432), *(v0 + 288));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2295DC938()
{
  v1 = *(*v0 + 960);
  v2 = *(*v0 + 656);
  v3 = *(*v0 + 288);
  v4 = *(*v0 + 24);

  v1(v2, v3);

  return MEMORY[0x2822009F8](sub_2295E9774, v4, 0);
}

uint64_t sub_2295DCABC()
{
  v1 = *(*v0 + 24);

  return MEMORY[0x2822009F8](sub_2295DCBCC, v1, 0);
}

uint64_t sub_2295DCBCC()
{
  (*(v0 + 984))(*(v0 + 392), *(v0 + 288));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2295DCFFC()
{
  v1 = *(*v0 + 1008);
  v2 = *(*v0 + 624);
  v3 = *(*v0 + 288);
  v4 = *(*v0 + 24);

  v1(v2, v3);

  return MEMORY[0x2822009F8](sub_2295E9774, v4, 0);
}

uint64_t sub_2295DD180()
{
  v1 = *(*v0 + 24);

  return MEMORY[0x2822009F8](sub_2295DD290, v1, 0);
}

uint64_t sub_2295DD290()
{
  (*(v0 + 1032))(*(v0 + 328), *(v0 + 288));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2295DD6C0()
{
  v1[20] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v1[21] = swift_task_alloc();
  v1[22] = type metadata accessor for HomeEntity(0);
  v1[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2295DD78C, v0, 0);
}

uint64_t sub_2295DD78C()
{
  v1 = __swift_project_boxed_opaque_existential_0((v0[20] + 112), *(v0[20] + 136));
  sub_22957F1C4((v1 + 1), (v0 + 2));
  v2 = *__swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v3 = [v2 homes];

  if (!v3)
  {
    __break(1u);
    return MEMORY[0x2822009F8](v4, v5, v6);
  }

  sub_229562F68(0, &qword_2814017B0, off_278666198);
  v7 = sub_22A4DD83C();
  v0[24] = v7;

  if (v7 >> 62)
  {
LABEL_23:
    v34 = sub_22A4DE0EC();
    v0[25] = v34;
    if (v34)
    {
LABEL_4:
      v9 = 0;
      while (1)
      {
        v10 = v0[24];
        if ((v10 & 0xC000000000000001) != 0)
        {
          v11 = MEMORY[0x22AAD13F0](v9);
        }

        else
        {
          if (v9 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_22;
          }

          v11 = *(v10 + 8 * v9 + 32);
        }

        v12 = v11;
        v0[26] = v11;
        v0[27] = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          __break(1u);
LABEL_22:
          __break(1u);
          goto LABEL_23;
        }

        v13 = __swift_project_boxed_opaque_existential_0((v0[20] + 112), *(v0[20] + 136))[6];
        v0[28] = v13;
        v14 = *(v13 + 16);
        v0[29] = v14;
        if (v14)
        {
          break;
        }

        v9 = v0[27];
        if (v9 == v0[25])
        {
          goto LABEL_12;
        }
      }

      v0[30] = 0;
      v17 = v0[26];

      sub_22957F1C4(v18 + 32, (v0 + 7));
      v19 = __swift_project_boxed_opaque_existential_0(v0 + 7, v0[10]);
      v20 = [v17 urlString];
      if (v20)
      {
        v21 = v20;
        v22 = sub_22A4DD5EC();
        v24 = v23;
      }

      else
      {
        v22 = 0;
        v24 = 0;
      }

      v25 = v0[26];
      v27 = v0[22];
      v26 = v0[23];
      *v26 = v22;
      v26[1] = v24;
      v28 = [v25 spiClientIdentifier];
      sub_22A4DB79C();

      v29 = [v25 name];
      v30 = sub_22A4DD5EC();
      v32 = v31;

      v33 = (v26 + *(v27 + 24));
      *v33 = v30;
      v33[1] = v32;
      sub_2295E9130(v26, type metadata accessor for HomeEntity);
      v5 = *v19;
      v0[31] = *v19;
      v4 = sub_2295DDAA4;
      v6 = 0;

      return MEMORY[0x2822009F8](v4, v5, v6);
    }
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v0[25] = v8;
    if (v8)
    {
      goto LABEL_4;
    }
  }

LABEL_12:

  v15 = v0[1];

  return v15();
}

uint64_t sub_2295DDAA4()
{
  v1 = v0[31];
  if (v1[29])
  {

    sub_22A4DDA7C();

    v1 = v0[31];
  }

  v2 = v0[20];
  v3 = v0[21];
  sub_2295C9C1C();
  __swift_project_boxed_opaque_existential_0(v1 + 19, v1[22]);
  sub_22A4DD98C();
  v4 = sub_22A4DD9DC();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v0[15] = swift_getAssociatedTypeWitness();
  v0[16] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 12);

  sub_22A4DBAFC();

  sub_22953EAE4(v3, &unk_27D87D8F0, &qword_22A578D70);
  swift_beginAccess();
  sub_2295E90C8((v0 + 12), (v1 + 24), &qword_27D87EA00, &qword_22A579B80);
  swift_endAccess();

  return MEMORY[0x2822009F8](sub_2295DDCB4, v2, 0);
}

uint64_t sub_2295DDCB4()
{
  v1 = v0[29];
  v2 = v0[30] + 1;
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  if (v2 == v1)
  {
    v3 = v0[26];

    while (1)
    {
      v6 = v0[27];
      if (v6 == v0[25])
      {
        break;
      }

      v7 = v0[24];
      if ((v7 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x22AAD13F0](v0[27]);
      }

      else
      {
        if (v6 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }

        v4 = *(v7 + 8 * v6 + 32);
      }

      v8 = v4;
      v0[26] = v4;
      v0[27] = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_23:
        __break(1u);
        return MEMORY[0x2822009F8](v4, v7, v5);
      }

      v9 = __swift_project_boxed_opaque_existential_0((v0[20] + 112), *(v0[20] + 136))[6];
      v0[28] = v9;
      v10 = *(v9 + 16);
      v0[29] = v10;
      if (v10)
      {

        v11 = 0;
        goto LABEL_16;
      }
    }

    v13 = v0[1];

    return v13();
  }

  else
  {
    v11 = v0[30] + 1;
    v12 = v0[28];
LABEL_16:
    v0[30] = v11;
    v15 = v0[26];
    sub_22957F1C4(v12 + 40 * v11 + 32, (v0 + 7));
    v16 = __swift_project_boxed_opaque_existential_0(v0 + 7, v0[10]);
    v17 = [v15 urlString];
    if (v17)
    {
      v18 = v17;
      v19 = sub_22A4DD5EC();
      v21 = v20;
    }

    else
    {
      v19 = 0;
      v21 = 0;
    }

    v22 = v0[26];
    v24 = v0[22];
    v23 = v0[23];
    *v23 = v19;
    v23[1] = v21;
    v25 = [v22 spiClientIdentifier];
    sub_22A4DB79C();

    v26 = [v22 name];
    v27 = sub_22A4DD5EC();
    v29 = v28;

    v30 = (v23 + *(v24 + 24));
    *v30 = v27;
    v30[1] = v29;
    sub_2295E9130(v23, type metadata accessor for HomeEntity);
    v7 = *v16;
    v0[31] = *v16;
    v4 = sub_2295DDAA4;
    v5 = 0;

    return MEMORY[0x2822009F8](v4, v7, v5);
  }
}

uint64_t sub_2295DDF48(uint64_t a1)
{
  v2[32] = a1;
  v2[33] = v1;
  v2[34] = *v1;
  v3 = sub_22A4DD07C();
  v2[35] = v3;
  v2[36] = *(v3 - 8);
  v2[37] = swift_task_alloc();
  v2[38] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v2[39] = swift_task_alloc();
  v2[40] = type metadata accessor for HomeEntity(0);
  v2[41] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D2A0, &unk_22A578BD0);
  v2[42] = swift_task_alloc();
  v4 = sub_22A4DB7DC();
  v2[43] = v4;
  v2[44] = *(v4 - 8);
  v2[45] = swift_task_alloc();
  v2[46] = swift_task_alloc();
  v5 = sub_22A4DB21C();
  v2[47] = v5;
  v2[48] = *(v5 - 8);
  v2[49] = swift_task_alloc();
  v2[50] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2295DE1AC, v1, 0);
}

uint64_t sub_2295DE1AC()
{
  v101 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DA18, &unk_22A579B60);
  sub_22A4DBA4C();
  v1 = sub_22A4DB20C();
  if (!v1)
  {
    goto LABEL_11;
  }

  v2 = v1;
  *(v0 + 232) = sub_22A4DD5EC();
  *(v0 + 240) = v3;
  sub_22A4DE18C();
  if (!*(v2 + 16) || (v4 = sub_2295402E8(v0 + 16), (v5 & 1) == 0))
  {

    sub_22954045C(v0 + 16);
LABEL_11:
    *(v0 + 176) = 0u;
    *(v0 + 192) = 0u;
    goto LABEL_12;
  }

  sub_2295404B0(*(v2 + 56) + 32 * v4, v0 + 176);
  sub_22954045C(v0 + 16);

  if (!*(v0 + 200))
  {
LABEL_12:
    v25 = *(v0 + 344);
    v26 = *(v0 + 352);
    v27 = *(v0 + 336);
    sub_22953EAE4(v0 + 176, &unk_27D87DE60, &unk_22A57A960);
    (*(v26 + 56))(v27, 1, 1, v25);
LABEL_13:
    v29 = *(v0 + 392);
    v28 = *(v0 + 400);
    v30 = *(v0 + 376);
    v31 = *(v0 + 384);
    v32 = *(v0 + 272);
    sub_22953EAE4(*(v0 + 336), &unk_27D87D2A0, &unk_22A578BD0);
    sub_229541CB0(v32, &off_283CDDAE8);
    (*(v31 + 16))(v29, v28, v30);
    v33 = sub_22A4DD05C();
    v34 = sub_22A4DDCEC();
    v35 = os_log_type_enabled(v33, v34);
    v36 = *(v0 + 392);
    v37 = *(v0 + 400);
    v39 = *(v0 + 376);
    v38 = *(v0 + 384);
    v40 = *(v0 + 288);
    v41 = *(v0 + 296);
    v42 = *(v0 + 280);
    if (v35)
    {
      v98 = *(v0 + 296);
      v43 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      v100 = v94;
      *v43 = 136315138;
      v92 = v34;
      *(v0 + 248) = sub_22A4DB20C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DA20, &unk_22A579B70);
      v44 = sub_22A4DDF7C();
      v45 = v39;
      v47 = v46;
      v48 = *(v38 + 8);
      v49 = v36;
      v50 = v45;
      v48(v49, v45);

      v51 = sub_2295A3E30(v44, v47, &v100);

      *(v43 + 4) = v51;
      _os_log_impl(&dword_229538000, v33, v92, "Could not handle new home added notification %s", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v94);
      MEMORY[0x22AAD4E50](v94, -1, -1);
      MEMORY[0x22AAD4E50](v43, -1, -1);

      (*(v40 + 8))(v98, v42);
      v48(v37, v50);
    }

    else
    {

      v52 = *(v38 + 8);
      v52(v36, v39);
      (*(v40 + 8))(v41, v42);
      v52(v37, v39);
    }

    goto LABEL_16;
  }

  v6 = *(v0 + 344);
  v7 = *(v0 + 352);
  v8 = *(v0 + 336);
  v9 = swift_dynamicCast();
  (*(v7 + 56))(v8, v9 ^ 1u, 1, v6);
  if ((*(v7 + 48))(v8, 1, v6) == 1)
  {
    goto LABEL_13;
  }

  v10 = *(v0 + 264);
  (*(*(v0 + 352) + 32))(*(v0 + 368), *(v0 + 336), *(v0 + 344));
  v11 = __swift_project_boxed_opaque_existential_0((v10 + 112), *(v10 + 136));
  sub_22957F1C4((v11 + 1), v0 + 56);
  v12 = *__swift_project_boxed_opaque_existential_0((v0 + 56), *(v0 + 80));
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  v13 = sub_22A4DB77C();
  v14 = [v12 _homeWithUUID_];
  *(v0 + 408) = v14;

  if (v14)
  {
    v15 = __swift_project_boxed_opaque_existential_0((v10 + 112), *(v10 + 136))[6];
    *(v0 + 416) = v15;
    v16 = *(v15 + 16);
    *(v0 + 424) = v16;
    if (v16)
    {
      *(v0 + 432) = 0;
      v17 = *(v0 + 408);

      sub_22957F1C4(v18 + 32, v0 + 96);
      v19 = __swift_project_boxed_opaque_existential_0((v0 + 96), *(v0 + 120));
      v20 = [v17 urlString];
      if (v20)
      {
        v21 = v20;
        v22 = sub_22A4DD5EC();
        v24 = v23;
      }

      else
      {
        v22 = 0;
        v24 = 0;
      }

      v80 = *(v0 + 408);
      v82 = *(v0 + 320);
      v81 = *(v0 + 328);
      *v81 = v22;
      v81[1] = v24;
      v83 = [v80 spiClientIdentifier];
      sub_22A4DB79C();

      v84 = [v80 name];
      v85 = sub_22A4DD5EC();
      v87 = v86;

      v88 = (v81 + *(v82 + 24));
      *v88 = v85;
      v88[1] = v87;
      sub_2295E9130(v81, type metadata accessor for HomeEntity);
      v89 = *v19;
      *(v0 + 440) = *v19;

      return MEMORY[0x2822009F8](sub_2295DEA6C, v89, 0);
    }

    v76 = *(v0 + 400);
    v77 = *(v0 + 376);
    v78 = *(v0 + 384);
    (*(*(v0 + 352) + 8))(*(v0 + 368), *(v0 + 344));
    (*(v78 + 8))(v76, v77);
  }

  else
  {
    v56 = *(v0 + 360);
    v55 = *(v0 + 368);
    v57 = *(v0 + 344);
    v58 = *(v0 + 352);
    sub_229541CB0(*(v0 + 272), &off_283CDDAE8);
    (*(v58 + 16))(v56, v55, v57);
    v59 = sub_22A4DD05C();
    v60 = sub_22A4DDCCC();
    v61 = os_log_type_enabled(v59, v60);
    v62 = *(v0 + 400);
    v64 = *(v0 + 376);
    v63 = *(v0 + 384);
    v65 = *(v0 + 360);
    v66 = *(v0 + 344);
    v67 = *(v0 + 352);
    v97 = *(v0 + 304);
    v99 = *(v0 + 368);
    v68 = *(v0 + 288);
    v96 = *(v0 + 280);
    if (v61)
    {
      v90 = v60;
      v69 = swift_slowAlloc();
      v95 = v63;
      v70 = swift_slowAlloc();
      v100 = v70;
      *v69 = 136315138;
      sub_2295E9190(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v91 = v64;
      v93 = v62;
      v71 = sub_22A4DE5CC();
      v73 = v72;
      v74 = *(v67 + 8);
      v74(v65, v66);
      v75 = sub_2295A3E30(v71, v73, &v100);

      *(v69 + 4) = v75;
      _os_log_impl(&dword_229538000, v59, v90, "Could not find the home with UUID %s", v69, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v70);
      MEMORY[0x22AAD4E50](v70, -1, -1);
      MEMORY[0x22AAD4E50](v69, -1, -1);

      (*(v68 + 8))(v97, v96);
      v74(v99, v66);
      (*(v95 + 8))(v93, v91);
    }

    else
    {

      v79 = *(v67 + 8);
      v79(v65, v66);
      (*(v68 + 8))(v97, v96);
      v79(v99, v66);
      (*(v63 + 8))(v62, v64);
    }
  }

LABEL_16:

  v53 = *(v0 + 8);

  return v53();
}

uint64_t sub_2295DEA6C()
{
  v1 = v0[55];
  if (v1[29])
  {

    sub_22A4DDA7C();

    v1 = v0[55];
  }

  v2 = v0[39];
  v3 = v0[33];
  sub_2295C9C1C();
  __swift_project_boxed_opaque_existential_0(v1 + 19, v1[22]);
  sub_22A4DD98C();
  v4 = sub_22A4DD9DC();
  (*(*(v4 - 8) + 56))(v2, 0, 1, v4);
  v0[20] = swift_getAssociatedTypeWitness();
  v0[21] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 17);

  sub_22A4DBAFC();

  sub_22953EAE4(v2, &unk_27D87D8F0, &qword_22A578D70);
  swift_beginAccess();
  sub_2295E90C8((v0 + 17), (v1 + 24), &qword_27D87EA00, &qword_22A579B80);
  swift_endAccess();

  return MEMORY[0x2822009F8](sub_2295DEC80, v3, 0);
}

uint64_t sub_2295DEC80()
{
  v1 = v0[53];
  v2 = v0[54] + 1;
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  if (v2 == v1)
  {
    v3 = v0[51];

    v4 = v0[50];
    v5 = v0[47];
    v6 = v0[48];
    (*(v0[44] + 8))(v0[46], v0[43]);
    (*(v6 + 8))(v4, v5);

    v7 = v0[1];

    return v7();
  }

  else
  {
    v9 = v0[54];
    v0[54] = v9 + 1;
    v10 = v0[51];
    sub_22957F1C4(v0[52] + 40 * v9 + 72, (v0 + 12));
    v11 = __swift_project_boxed_opaque_existential_0(v0 + 12, v0[15]);
    v12 = [v10 urlString];
    if (v12)
    {
      v13 = v12;
      v14 = sub_22A4DD5EC();
      v16 = v15;
    }

    else
    {
      v14 = 0;
      v16 = 0;
    }

    v17 = v0[51];
    v19 = v0[40];
    v18 = v0[41];
    *v18 = v14;
    v18[1] = v16;
    v20 = [v17 spiClientIdentifier];
    sub_22A4DB79C();

    v21 = [v17 name];
    v22 = sub_22A4DD5EC();
    v24 = v23;

    v25 = (v18 + *(v19 + 24));
    *v25 = v22;
    v25[1] = v24;
    sub_2295E9130(v18, type metadata accessor for HomeEntity);
    v26 = *v11;
    v0[55] = *v11;

    return MEMORY[0x2822009F8](sub_2295DEA6C, v26, 0);
  }
}

uint64_t sub_2295DEEEC(uint64_t a1)
{
  v2[20] = a1;
  v2[21] = v1;
  v2[22] = *v1;
  v3 = sub_22A4DD07C();
  v2[23] = v3;
  v2[24] = *(v3 - 8);
  v2[25] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v2[26] = swift_task_alloc();
  v2[27] = type metadata accessor for HomeEntity(0);
  v2[28] = swift_task_alloc();
  v4 = sub_22A4DB21C();
  v2[29] = v4;
  v2[30] = *(v4 - 8);
  v2[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2295DF098, v1, 0);
}

uint64_t sub_2295DF098()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DA18, &unk_22A579B60);
  sub_22A4DBA4C();
  sub_22A4DB1FC();
  if (!v0[15])
  {
    sub_22953EAE4((v0 + 12), &unk_27D87DE60, &unk_22A57A960);
    goto LABEL_7;
  }

  sub_229562F68(0, &qword_2814017B0, off_278666198);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    sub_229541CB0(v0[22], &off_283CDDAE8);
    v13 = sub_22A4DD05C();
    v14 = sub_22A4DDCEC();
    v15 = os_log_type_enabled(v13, v14);
    v17 = v0[30];
    v16 = v0[31];
    v18 = v0[29];
    v20 = v0[24];
    v19 = v0[25];
    v21 = v0[23];
    if (v15)
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_229538000, v13, v14, "Could not handle home name changed notification as passed object is not HMDHome type", v22, 2u);
      MEMORY[0x22AAD4E50](v22, -1, -1);
    }

    (*(v20 + 8))(v19, v21);
    (*(v17 + 8))(v16, v18);
    goto LABEL_10;
  }

  v1 = v0[21];
  v2 = v0[19];
  v0[32] = v2;
  v3 = __swift_project_boxed_opaque_existential_0((v1 + 112), *(v1 + 136))[6];
  v0[33] = v3;
  v4 = *(v3 + 16);
  v0[34] = v4;
  if (v4)
  {
    v0[35] = 0;
    v5 = v0[32];

    sub_22957F1C4(v6 + 32, (v0 + 2));
    v7 = __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v8 = [v5 urlString];
    if (v8)
    {
      v9 = v8;
      v10 = sub_22A4DD5EC();
      v12 = v11;
    }

    else
    {
      v10 = 0;
      v12 = 0;
    }

    v25 = v0[32];
    v27 = v0[27];
    v26 = v0[28];
    *v26 = v10;
    v26[1] = v12;
    v28 = [v25 spiClientIdentifier];
    sub_22A4DB79C();

    v29 = [v25 name];
    v30 = sub_22A4DD5EC();
    v32 = v31;

    v33 = (v26 + *(v27 + 24));
    *v33 = v30;
    v33[1] = v32;
    sub_2295E9130(v26, type metadata accessor for HomeEntity);
    v34 = *v7;
    v0[36] = *v7;

    return MEMORY[0x2822009F8](sub_2295DF41C, v34, 0);
  }

  (*(v0[30] + 8))(v0[31], v0[29]);
LABEL_10:

  v23 = v0[1];

  return v23();
}

uint64_t sub_2295DF41C()
{
  v1 = v0[36];
  if (v1[29])
  {

    sub_22A4DDA7C();

    v1 = v0[36];
  }

  v2 = v0[26];
  v3 = v0[21];
  sub_2295C9C1C();
  __swift_project_boxed_opaque_existential_0(v1 + 19, v1[22]);
  sub_22A4DD98C();
  v4 = sub_22A4DD9DC();
  (*(*(v4 - 8) + 56))(v2, 0, 1, v4);
  v0[10] = swift_getAssociatedTypeWitness();
  v0[11] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 7);

  sub_22A4DBAFC();

  sub_22953EAE4(v2, &unk_27D87D8F0, &qword_22A578D70);
  swift_beginAccess();
  sub_2295E90C8((v0 + 7), (v1 + 24), &qword_27D87EA00, &qword_22A579B80);
  swift_endAccess();

  return MEMORY[0x2822009F8](sub_2295DF630, v3, 0);
}

uint64_t sub_2295DF630()
{
  v1 = v0[34];
  v2 = v0[35] + 1;
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  if (v2 == v1)
  {
    v3 = v0[32];

    (*(v0[30] + 8))(v0[31], v0[29]);

    v4 = v0[1];

    return v4();
  }

  else
  {
    v6 = v0[35];
    v0[35] = v6 + 1;
    v7 = v0[32];
    sub_22957F1C4(v0[33] + 40 * v6 + 72, (v0 + 2));
    v8 = __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v9 = [v7 urlString];
    if (v9)
    {
      v10 = v9;
      v11 = sub_22A4DD5EC();
      v13 = v12;
    }

    else
    {
      v11 = 0;
      v13 = 0;
    }

    v14 = v0[32];
    v16 = v0[27];
    v15 = v0[28];
    *v15 = v11;
    v15[1] = v13;
    v17 = [v14 spiClientIdentifier];
    sub_22A4DB79C();

    v18 = [v14 name];
    v19 = sub_22A4DD5EC();
    v21 = v20;

    v22 = (v15 + *(v16 + 24));
    *v22 = v19;
    v22[1] = v21;
    sub_2295E9130(v15, type metadata accessor for HomeEntity);
    v23 = *v8;
    v0[36] = *v8;

    return MEMORY[0x2822009F8](sub_2295DF41C, v23, 0);
  }
}

uint64_t sub_2295DF84C()
{
  *(v1 + 80) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  *(v1 + 88) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2295DF8E8, v0, 0);
}

uint64_t sub_2295DF8E8()
{
  v1 = __swift_project_boxed_opaque_existential_0((v0[10] + 112), *(v0[10] + 136))[6];
  v0[12] = v1;
  v2 = *(v1 + 16);
  v0[13] = v2;
  if (v2)
  {
    v0[14] = 0;
    v3 = *(v1 + 56);

    v5 = __swift_project_boxed_opaque_existential_0((v4 + 32), v3);
    v6 = *v5;
    v0[15] = *v5;

    return MEMORY[0x2822009F8](sub_2295DF9C0, v6, 0);
  }

  else
  {

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_2295DF9C0()
{
  v1 = v0[15];
  if (v1[29])
  {

    sub_22A4DDA7C();

    v1 = v0[15];
  }

  v2 = v0[10];
  v3 = v0[11];
  sub_2295C9C1C();
  __swift_project_boxed_opaque_existential_0(v1 + 19, v1[22]);
  sub_22A4DD98C();
  v4 = sub_22A4DD9DC();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);

  sub_22A4DBAFC();

  sub_22953EAE4(v3, &unk_27D87D8F0, &qword_22A578D70);
  swift_beginAccess();
  sub_2295E90C8((v0 + 2), (v1 + 24), &qword_27D87EA00, &qword_22A579B80);
  swift_endAccess();

  return MEMORY[0x2822009F8](sub_2295DFBD0, v2, 0);
}

uint64_t sub_2295DFBD0()
{
  v1 = v0[14] + 1;
  if (v1 == v0[13])
  {

    v2 = v0[1];

    return v2();
  }

  else
  {
    v0[14] = v1;
    v4 = __swift_project_boxed_opaque_existential_0((v0[12] + 40 * v1 + 32), *(v0[12] + 40 * v1 + 56));
    v5 = *v4;
    v0[15] = *v4;

    return MEMORY[0x2822009F8](sub_2295DF9C0, v5, 0);
  }
}

uint64_t sub_2295DFCA0(uint64_t a1)
{
  v2[20] = a1;
  v2[21] = v1;
  v2[22] = *v1;
  v3 = sub_22A4DD07C();
  v2[23] = v3;
  v2[24] = *(v3 - 8);
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v2[27] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DA38, &unk_22A579BE8);
  v2[28] = swift_task_alloc();
  v4 = type metadata accessor for RoomEntity(0);
  v2[29] = v4;
  v2[30] = *(v4 - 8);
  v2[31] = swift_task_alloc();
  v5 = sub_22A4DB21C();
  v2[32] = v5;
  v2[33] = *(v5 - 8);
  v2[34] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2295DFEBC, v1, 0);
}

uint64_t sub_2295DFEBC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DA18, &unk_22A579B60);
  sub_22A4DBA4C();
  sub_22A4DB1FC();
  if (!v0[15])
  {
    sub_22953EAE4((v0 + 12), &unk_27D87DE60, &unk_22A57A960);
    goto LABEL_8;
  }

  sub_229562F68(0, &unk_2814017A0, off_278666308);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    sub_229541CB0(v0[22], &off_283CDDAE8);
    v18 = sub_22A4DD05C();
    v19 = sub_22A4DDCEC();
    v20 = os_log_type_enabled(v18, v19);
    v22 = v0[33];
    v21 = v0[34];
    v23 = v0[32];
    v25 = v0[24];
    v24 = v0[25];
    v26 = v0[23];
    if (v20)
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_229538000, v18, v19, "Could not index room as the notification did not contain a HMDRoom", v27, 2u);
      MEMORY[0x22AAD4E50](v27, -1, -1);
    }

    (*(v25 + 8))(v24, v26);
    (*(v22 + 8))(v21, v23);
    goto LABEL_11;
  }

  v1 = v0[29];
  v2 = v0[30];
  v3 = v0[28];
  v4 = v0[19];
  v0[35] = v4;
  sub_2295C2A94(v4, v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v5 = v0[22];
    sub_22953EAE4(v0[28], &qword_27D87DA38, &unk_22A579BE8);
    sub_229541CB0(v5, &off_283CDDAE8);
    v6 = v4;
    v7 = sub_22A4DD05C();
    v8 = sub_22A4DDCEC();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      *(v9 + 4) = v6;
      *v10 = v6;
      v11 = v6;
      _os_log_impl(&dword_229538000, v7, v8, "Unable to create RoomEntity for %@", v9, 0xCu);
      sub_22953EAE4(v10, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v10, -1, -1);
      MEMORY[0x22AAD4E50](v9, -1, -1);
    }

    v13 = v0[33];
    v12 = v0[34];
    v14 = v0[32];
    v15 = v0[26];
    v16 = v0[23];
    v17 = v0[24];

    (*(v17 + 8))(v15, v16);
    (*(v13 + 8))(v12, v14);
    goto LABEL_11;
  }

  v30 = v0[21];
  sub_2295E9240(v0[28], v0[31], type metadata accessor for RoomEntity);
  v31 = __swift_project_boxed_opaque_existential_0((v30 + 112), *(v30 + 136))[6];
  v0[36] = v31;
  v32 = *(v31 + 16);
  v0[37] = v32;
  if (!v32)
  {

    v41 = v0[33];
    v40 = v0[34];
    v42 = v0[32];
    sub_2295E9130(v0[31], type metadata accessor for RoomEntity);
    (*(v41 + 8))(v40, v42);
LABEL_11:

    v28 = v0[1];

    return v28();
  }

  v0[38] = 0;
  v34 = v0[30];
  v33 = v0[31];

  sub_22957F1C4(v35 + 32, (v0 + 2));
  v36 = __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D478, &qword_22A5798E0);
  v37 = (*(v34 + 80) + 32) & ~*(v34 + 80);
  v38 = swift_allocObject();
  sub_2295E91D8(v33, v38 + v37, type metadata accessor for RoomEntity);
  swift_setDeallocating();
  sub_2295E9130(v38 + v37, type metadata accessor for RoomEntity);
  swift_deallocClassInstance();
  v39 = *v36;
  v0[39] = *v36;

  return MEMORY[0x2822009F8](sub_2295E03CC, v39, 0);
}

uint64_t sub_2295E03CC()
{
  v1 = v0[39];
  if (v1[29])
  {

    sub_22A4DDA7C();

    v1 = v0[39];
  }

  v2 = v0[27];
  v3 = v0[21];
  sub_2295C9C1C();
  __swift_project_boxed_opaque_existential_0(v1 + 19, v1[22]);
  sub_22A4DD98C();
  v4 = sub_22A4DD9DC();
  (*(*(v4 - 8) + 56))(v2, 0, 1, v4);
  v0[10] = swift_getAssociatedTypeWitness();
  v0[11] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 7);

  sub_22A4DBAFC();

  sub_22953EAE4(v2, &unk_27D87D8F0, &qword_22A578D70);
  swift_beginAccess();
  sub_2295E90C8((v0 + 7), (v1 + 24), &qword_27D87EA00, &qword_22A579B80);
  swift_endAccess();

  return MEMORY[0x2822009F8](sub_2295E05E0, v3, 0);
}

uint64_t sub_2295E05E0()
{
  v1 = v0[37];
  v2 = v0[38] + 1;
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  if (v2 == v1)
  {
    v3 = v0[35];

    v5 = v0[33];
    v4 = v0[34];
    v6 = v0[32];
    sub_2295E9130(v0[31], type metadata accessor for RoomEntity);
    (*(v5 + 8))(v4, v6);

    v7 = v0[1];

    return v7();
  }

  else
  {
    v9 = v0[38];
    v0[38] = v9 + 1;
    v11 = v0[30];
    v10 = v0[31];
    sub_22957F1C4(v0[36] + 40 * v9 + 72, (v0 + 2));
    v12 = __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D478, &qword_22A5798E0);
    v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v14 = swift_allocObject();
    sub_2295E91D8(v10, v14 + v13, type metadata accessor for RoomEntity);
    swift_setDeallocating();
    sub_2295E9130(v14 + v13, type metadata accessor for RoomEntity);
    swift_deallocClassInstance();
    v15 = *v12;
    v0[39] = *v12;

    return MEMORY[0x2822009F8](sub_2295E03CC, v15, 0);
  }
}

uint64_t sub_2295E07E4(uint64_t a1)
{
  v2[24] = a1;
  v2[25] = v1;
  v2[26] = *v1;
  v3 = sub_22A4DD07C();
  v2[27] = v3;
  v2[28] = *(v3 - 8);
  v2[29] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v2[30] = swift_task_alloc();
  v4 = sub_22A4DB21C();
  v2[31] = v4;
  v2[32] = *(v4 - 8);
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2295E096C, v1, 0);
}

uint64_t sub_2295E096C()
{
  v43 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DA18, &unk_22A579B60);
  sub_22A4DBA4C();
  v1 = sub_22A4DB20C();
  if (!v1)
  {
    goto LABEL_11;
  }

  v2 = v1;
  *(v0 + 152) = sub_22A4DD5EC();
  *(v0 + 160) = v3;
  sub_22A4DE18C();
  if (!*(v2 + 16) || (v4 = sub_2295402E8(v0 + 16), (v5 & 1) == 0))
  {

    sub_22954045C(v0 + 16);
LABEL_11:
    *(v0 + 96) = 0u;
    *(v0 + 112) = 0u;
    goto LABEL_12;
  }

  sub_2295404B0(*(v2 + 56) + 32 * v4, v0 + 96);
  sub_22954045C(v0 + 16);

  if (!*(v0 + 120))
  {
LABEL_12:
    sub_22953EAE4(v0 + 96, &unk_27D87DE60, &unk_22A57A960);
LABEL_13:
    v14 = *(v0 + 264);
    v13 = *(v0 + 272);
    v15 = *(v0 + 248);
    v16 = *(v0 + 256);
    sub_229541CB0(*(v0 + 208), &off_283CDDAE8);
    (*(v16 + 16))(v14, v13, v15);
    v17 = sub_22A4DD05C();
    v18 = sub_22A4DDCEC();
    v19 = os_log_type_enabled(v17, v18);
    v20 = *(v0 + 264);
    v21 = *(v0 + 272);
    v23 = *(v0 + 248);
    v22 = *(v0 + 256);
    v24 = *(v0 + 224);
    v25 = *(v0 + 232);
    v26 = *(v0 + 216);
    if (v19)
    {
      v41 = *(v0 + 232);
      v27 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v42 = v40;
      *v27 = 136315138;
      v39 = v18;
      *(v0 + 184) = sub_22A4DB20C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DA20, &unk_22A579B70);
      v28 = sub_22A4DDF7C();
      v29 = v23;
      v31 = v30;
      v32 = *(v22 + 8);
      v33 = v20;
      v34 = v29;
      v32(v33, v29);

      v35 = sub_2295A3E30(v28, v31, &v42);

      *(v27 + 4) = v35;
      _os_log_impl(&dword_229538000, v17, v39, "Did not find room uuid. Could not handle room removed notification %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v40);
      MEMORY[0x22AAD4E50](v40, -1, -1);
      MEMORY[0x22AAD4E50](v27, -1, -1);

      (*(v24 + 8))(v41, v26);
      v32(v21, v34);
    }

    else
    {

      v36 = *(v22 + 8);
      v36(v20, v23);
      (*(v24 + 8))(v25, v26);
      v36(v21, v23);
    }

    goto LABEL_16;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_13;
  }

  v6 = *(v0 + 200);

  v7 = __swift_project_boxed_opaque_existential_0((v6 + 112), *(v6 + 136))[6];
  *(v0 + 280) = v7;
  v8 = *(v7 + 16);
  *(v0 + 288) = v8;
  if (v8)
  {
    *(v0 + 296) = 0;
    v9 = *(v7 + 56);

    v11 = __swift_project_boxed_opaque_existential_0((v10 + 32), v9);
    v12 = *v11;
    *(v0 + 304) = *v11;

    return MEMORY[0x2822009F8](sub_2295E0DAC, v12, 0);
  }

  (*(*(v0 + 256) + 8))(*(v0 + 272), *(v0 + 248));
LABEL_16:

  v37 = *(v0 + 8);

  return v37();
}

uint64_t sub_2295E0DAC()
{
  v1 = v0[38];
  if (v1[29])
  {

    sub_22A4DDA7C();

    v1 = v0[38];
  }

  v2 = v0[30];
  v3 = v0[25];
  sub_2295C9C1C();
  __swift_project_boxed_opaque_existential_0(v1 + 19, v1[22]);
  sub_22A4DD98C();
  v4 = sub_22A4DD9DC();
  (*(*(v4 - 8) + 56))(v2, 0, 1, v4);
  v0[10] = swift_getAssociatedTypeWitness();
  v0[11] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 7);

  sub_22A4DBAFC();

  sub_22953EAE4(v2, &unk_27D87D8F0, &qword_22A578D70);
  swift_beginAccess();
  sub_2295E90C8((v0 + 7), (v1 + 24), &qword_27D87EA00, &qword_22A579B80);
  swift_endAccess();

  return MEMORY[0x2822009F8](sub_2295E0FC0, v3, 0);
}

uint64_t sub_2295E0FC0()
{
  v1 = v0[37] + 1;
  if (v1 == v0[36])
  {

    (*(v0[32] + 8))(v0[34], v0[31]);

    v2 = v0[1];

    return v2();
  }

  else
  {
    v0[37] = v1;
    v4 = __swift_project_boxed_opaque_existential_0((v0[35] + 40 * v1 + 32), *(v0[35] + 40 * v1 + 56));
    v5 = *v4;
    v0[38] = *v4;

    return MEMORY[0x2822009F8](sub_2295E0DAC, v5, 0);
  }
}

uint64_t sub_2295E10D0(uint64_t a1)
{
  v2[20] = a1;
  v2[21] = v1;
  v2[22] = *v1;
  v3 = sub_22A4DD07C();
  v2[23] = v3;
  v2[24] = *(v3 - 8);
  v2[25] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v2[26] = swift_task_alloc();
  v2[27] = type metadata accessor for ZoneEntity(0);
  v2[28] = swift_task_alloc();
  v4 = sub_22A4DB21C();
  v2[29] = v4;
  v2[30] = *(v4 - 8);
  v2[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2295E127C, v1, 0);
}

uint64_t sub_2295E127C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DA18, &unk_22A579B60);
  sub_22A4DBA4C();
  sub_22A4DB1FC();
  if (!v0[15])
  {
    sub_22953EAE4((v0 + 12), &unk_27D87DE60, &unk_22A57A960);
    goto LABEL_7;
  }

  sub_229562F68(0, &qword_281401788, off_278666398);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    sub_229541CB0(v0[22], &off_283CDDAE8);
    v13 = sub_22A4DD05C();
    v14 = sub_22A4DDCEC();
    v15 = os_log_type_enabled(v13, v14);
    v17 = v0[30];
    v16 = v0[31];
    v18 = v0[29];
    v20 = v0[24];
    v19 = v0[25];
    v21 = v0[23];
    if (v15)
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_229538000, v13, v14, "Did not find HMDZone as part of the zone added notification", v22, 2u);
      MEMORY[0x22AAD4E50](v22, -1, -1);
    }

    (*(v20 + 8))(v19, v21);
    (*(v17 + 8))(v16, v18);
    goto LABEL_10;
  }

  v1 = v0[21];
  v2 = v0[19];
  v0[32] = v2;
  v3 = __swift_project_boxed_opaque_existential_0((v1 + 112), *(v1 + 136))[6];
  v0[33] = v3;
  v4 = *(v3 + 16);
  v0[34] = v4;
  if (v4)
  {
    v0[35] = 0;
    v5 = v0[32];

    sub_22957F1C4(v6 + 32, (v0 + 2));
    v7 = __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v8 = [v5 urlString];
    if (v8)
    {
      v9 = v8;
      v10 = sub_22A4DD5EC();
      v12 = v11;
    }

    else
    {
      v10 = 0;
      v12 = 0;
    }

    v25 = v0[32];
    v27 = v0[27];
    v26 = v0[28];
    *v26 = v10;
    v26[1] = v12;
    v28 = [v25 spiClientIdentifier];
    sub_22A4DB79C();

    v29 = [v25 name];
    v30 = sub_22A4DD5EC();
    v32 = v31;

    v33 = (v26 + *(v27 + 24));
    *v33 = v30;
    v33[1] = v32;
    sub_2295E9130(v26, type metadata accessor for ZoneEntity);
    v34 = *v7;
    v0[36] = *v7;

    return MEMORY[0x2822009F8](sub_2295E1600, v34, 0);
  }

  (*(v0[30] + 8))(v0[31], v0[29]);
LABEL_10:

  v23 = v0[1];

  return v23();
}

uint64_t sub_2295E1600()
{
  v1 = v0[36];
  if (v1[29])
  {

    sub_22A4DDA7C();

    v1 = v0[36];
  }

  v2 = v0[26];
  v3 = v0[21];
  sub_2295C9C1C();
  __swift_project_boxed_opaque_existential_0(v1 + 19, v1[22]);
  sub_22A4DD98C();
  v4 = sub_22A4DD9DC();
  (*(*(v4 - 8) + 56))(v2, 0, 1, v4);
  v0[10] = swift_getAssociatedTypeWitness();
  v0[11] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 7);

  sub_22A4DBAFC();

  sub_22953EAE4(v2, &unk_27D87D8F0, &qword_22A578D70);
  swift_beginAccess();
  sub_2295E90C8((v0 + 7), (v1 + 24), &qword_27D87EA00, &qword_22A579B80);
  swift_endAccess();

  return MEMORY[0x2822009F8](sub_2295E1814, v3, 0);
}

uint64_t sub_2295E1814()
{
  v1 = v0[34];
  v2 = v0[35] + 1;
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  if (v2 == v1)
  {
    v3 = v0[32];

    (*(v0[30] + 8))(v0[31], v0[29]);

    v4 = v0[1];

    return v4();
  }

  else
  {
    v6 = v0[35];
    v0[35] = v6 + 1;
    v7 = v0[32];
    sub_22957F1C4(v0[33] + 40 * v6 + 72, (v0 + 2));
    v8 = __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v9 = [v7 urlString];
    if (v9)
    {
      v10 = v9;
      v11 = sub_22A4DD5EC();
      v13 = v12;
    }

    else
    {
      v11 = 0;
      v13 = 0;
    }

    v14 = v0[32];
    v16 = v0[27];
    v15 = v0[28];
    *v15 = v11;
    v15[1] = v13;
    v17 = [v14 spiClientIdentifier];
    sub_22A4DB79C();

    v18 = [v14 name];
    v19 = sub_22A4DD5EC();
    v21 = v20;

    v22 = (v15 + *(v16 + 24));
    *v22 = v19;
    v22[1] = v21;
    sub_2295E9130(v15, type metadata accessor for ZoneEntity);
    v23 = *v8;
    v0[36] = *v8;

    return MEMORY[0x2822009F8](sub_2295E1600, v23, 0);
  }
}

uint64_t sub_2295E1A30(uint64_t a1)
{
  v2[71] = v1;
  v2[70] = a1;
  v2[72] = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v2[73] = swift_task_alloc();
  v2[74] = type metadata accessor for ZoneEntity(0);
  v2[75] = swift_task_alloc();
  v3 = type metadata accessor for RoomEntity(0);
  v2[76] = v3;
  v2[77] = *(v3 - 8);
  v2[78] = swift_task_alloc();
  v2[79] = swift_task_alloc();
  v2[80] = swift_task_alloc();
  v4 = sub_22A4DB45C();
  v2[81] = v4;
  v2[82] = *(v4 - 8);
  v2[83] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D2A0, &unk_22A578BD0);
  v2[84] = swift_task_alloc();
  v2[85] = swift_task_alloc();
  v5 = sub_22A4DB21C();
  v2[86] = v5;
  v2[87] = *(v5 - 8);
  v2[88] = swift_task_alloc();
  v2[89] = swift_task_alloc();
  v2[90] = swift_task_alloc();
  v6 = sub_22A4DD07C();
  v2[91] = v6;
  v2[92] = *(v6 - 8);
  v2[93] = swift_task_alloc();
  v2[94] = swift_task_alloc();
  v2[95] = swift_task_alloc();
  v2[96] = swift_task_alloc();
  v2[97] = swift_task_alloc();
  v2[98] = swift_task_alloc();
  v2[99] = swift_task_alloc();
  v2[100] = swift_task_alloc();
  v2[101] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2295E1D6C, v1, 0);
}

uint64_t sub_2295E1D6C()
{
  v212 = v0;
  v1 = v0;
  sub_229541CB0(v0[72], &off_283CDDAE8);
  v2 = sub_22A4DD05C();
  v3 = sub_22A4DDCCC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_229538000, v2, v3, "Handling zone room relationship updated notification", v4, 2u);
    MEMORY[0x22AAD4E50](v4, -1, -1);
  }

  v5 = v0[101];
  v6 = v0[92];
  v7 = v1[91];

  v8 = *(v6 + 8);
  v8(v5, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DA18, &unk_22A579B60);
  sub_22A4DBA4C();
  sub_22A4DB1FC();
  if (!v1[35])
  {
    sub_22953EAE4((v1 + 32), &unk_27D87DE60, &unk_22A57A960);
    goto LABEL_51;
  }

  sub_229562F68(0, &qword_281401788, off_278666398);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_51:
    sub_229541CB0(v1[72], &off_283CDDAE8);
    v94 = sub_22A4DD05C();
    v95 = sub_22A4DDCEC();
    v96 = os_log_type_enabled(v94, v95);
    v97 = v1[93];
    v98 = v1[91];
    v99 = v1[90];
    v100 = v1[87];
    v101 = v1[86];
    if (v96)
    {
      v210 = v8;
      v102 = swift_slowAlloc();
      *v102 = 0;
      _os_log_impl(&dword_229538000, v94, v95, "Did not find HMDZone as part of the zone updated notification", v102, 2u);
      MEMORY[0x22AAD4E50](v102, -1, -1);

      v210(v97, v98);
    }

    else
    {

      v8(v97, v98);
    }

    (*(v100 + 8))(v99, v101);
    goto LABEL_55;
  }

  v9 = v1[66];
  v1[102] = v9;
  v10 = sub_22A4DB20C();
  v209 = v8;
  if (!v10)
  {
LABEL_59:
    *(v1 + 18) = 0u;
    *(v1 + 19) = 0u;
    goto LABEL_60;
  }

  v11 = v10;
  v1[58] = sub_22A4DD5EC();
  v1[59] = v12;
  sub_22A4DE18C();
  if (!*(v11 + 16) || (v13 = sub_2295402E8((v1 + 2)), (v14 & 1) == 0))
  {

    sub_22954045C((v1 + 2));
    goto LABEL_59;
  }

  sub_2295404B0(*(v11 + 56) + 32 * v13, (v1 + 36));
  sub_22954045C((v1 + 2));

  if (!v1[39])
  {
LABEL_60:
    sub_22953EAE4((v1 + 36), &unk_27D87DE60, &unk_22A57A960);
LABEL_61:
    v105 = v1[90];
    v106 = v1[88];
    v107 = v1[87];
    v108 = v1[86];
    sub_229541CB0(v1[72], &off_283CDDAE8);
    (*(v107 + 16))(v106, v105, v108);
    v109 = sub_22A4DD05C();
    v110 = sub_22A4DDCEC();
    v111 = os_log_type_enabled(v109, v110);
    v112 = v1[94];
    v206 = v1[91];
    v113 = v1[90];
    v114 = v1[88];
    v115 = v1[87];
    v116 = v1[86];
    if (v111)
    {
      v198 = v1[90];
      v117 = v1 + 67;
      v204 = v9;
      v118 = swift_slowAlloc();
      v200 = v1;
      v119 = swift_slowAlloc();
      v211 = v119;
      *v118 = 136315138;
      *v117 = sub_22A4DB20C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DA20, &unk_22A579B70);
      v120 = sub_22A4DDF7C();
      v122 = v121;
      v123 = *(v115 + 8);
      v123(v114);

      v124 = sub_2295A3E30(v120, v122, &v211);

      *(v118 + 4) = v124;
      _os_log_impl(&dword_229538000, v109, v110, "Did not find list of rooms as part of the zone updated notification %s", v118, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v119);
      v125 = v119;
      v1 = v200;
      MEMORY[0x22AAD4E50](v125, -1, -1);
      MEMORY[0x22AAD4E50](v118, -1, -1);

      v209(v112, v206);
      (v123)(v198, v116);
    }

    else
    {

      v126 = *(v115 + 8);
      v126(v114, v116);
      v209(v112, v206);
      v126(v113, v116);
    }

    goto LABEL_55;
  }

  sub_229562F68(0, &qword_27D87DA30, 0x277CBEB98);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_61;
  }

  v15 = v1[68];
  v1[103] = v15;
  v16 = sub_22A4DB20C();
  v203 = v9;
  if (!v16)
  {
LABEL_65:
    *(v1 + 20) = 0u;
    *(v1 + 21) = 0u;
    goto LABEL_66;
  }

  v17 = v16;
  v1[60] = sub_22A4DD5EC();
  v1[61] = v18;
  sub_22A4DE18C();
  if (!*(v17 + 16) || (v19 = sub_2295402E8((v1 + 7)), (v20 & 1) == 0))
  {

    sub_22954045C((v1 + 7));
    goto LABEL_65;
  }

  sub_2295404B0(*(v17 + 56) + 32 * v19, (v1 + 40));
  sub_22954045C((v1 + 7));

  if (!v1[43])
  {
LABEL_66:
    sub_22953EAE4((v1 + 40), &unk_27D87DE60, &unk_22A57A960);
LABEL_67:
    v127 = v1[90];
    v128 = v1[89];
    v129 = v1[87];
    v130 = v1[86];
    sub_229541CB0(v1[72], &off_283CDDAE8);
    (*(v129 + 16))(v128, v127, v130);
    v131 = sub_22A4DD05C();
    v132 = sub_22A4DDCEC();
    v133 = os_log_type_enabled(v131, v132);
    v134 = v1[95];
    v207 = v1[91];
    v135 = v1[90];
    v136 = v1[89];
    v137 = v1[87];
    v138 = v1[86];
    if (v133)
    {
      v196 = v1[95];
      v139 = v1 + 69;
      v201 = v1;
      v140 = swift_slowAlloc();
      v193 = v138;
      v141 = swift_slowAlloc();
      v211 = v141;
      *v140 = 136315138;
      *v139 = sub_22A4DB20C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DA20, &unk_22A579B70);
      v142 = sub_22A4DDF7C();
      v144 = v143;
      v145 = *(v137 + 8);
      v145(v136, v193);

      v146 = sub_2295A3E30(v142, v144, &v211);

      *(v140 + 4) = v146;
      _os_log_impl(&dword_229538000, v131, v132, "Did not find homeUUID as part of the zone updated notification %s", v140, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v141);
      MEMORY[0x22AAD4E50](v141, -1, -1);
      v147 = v140;
      v1 = v201;
      MEMORY[0x22AAD4E50](v147, -1, -1);

      v209(v196, v207);
      v145(v135, v193);
    }

    else
    {

      v148 = *(v137 + 8);
      v148(v136, v138);
      v209(v134, v207);
      v148(v135, v138);
    }

    goto LABEL_55;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_67;
  }

  v197 = v15;
  v21 = v1[85];
  v23 = v1[62];
  v22 = v1[63];
  v190 = v1[71];
  v24 = __swift_project_boxed_opaque_existential_0((v190 + 112), *(v190 + 136));
  sub_22957F1C4((v24 + 1), (v1 + 12));
  v25 = *__swift_project_boxed_opaque_existential_0(v1 + 12, v1[15]);
  __swift_destroy_boxed_opaque_existential_0(v1 + 12);
  sub_22A4DB75C();
  v26 = sub_22A4DB7DC();
  v27 = *(v26 - 8);
  v192 = v26;
  v195 = *(v27 + 48);
  v28 = v195(v21, 1);
  v29 = 0;
  if (v28 != 1)
  {
    v30 = v1[85];
    v29 = sub_22A4DB77C();
    (*(v27 + 8))(v30, v192);
  }

  v31 = [v25 _homeWithUUID_];
  v1[104] = v31;

  v194 = v31;
  if (!v31)
  {
    sub_229541CB0(v1[72], &off_283CDDAE8);

    v149 = sub_22A4DD05C();
    v150 = sub_22A4DDCCC();

    v151 = os_log_type_enabled(v149, v150);
    v152 = v1[96];
    v153 = v1[91];
    v154 = v1[90];
    v155 = v1[87];
    v208 = v1[86];
    if (v151)
    {
      v202 = v1;
      v156 = swift_slowAlloc();
      v205 = v154;
      v157 = swift_slowAlloc();
      v211 = v157;
      *v156 = 136315138;
      v158 = sub_2295A3E30(v23, v22, &v211);

      *(v156 + 4) = v158;
      _os_log_impl(&dword_229538000, v149, v150, "Could not find the home with UUID %s", v156, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v157);
      MEMORY[0x22AAD4E50](v157, -1, -1);
      v159 = v156;
      v1 = v202;
      MEMORY[0x22AAD4E50](v159, -1, -1);

      v209(v152, v153);
      (*(v155 + 8))(v205, v208);
    }

    else
    {

      v209(v152, v153);
      (*(v155 + 8))(v154, v208);
    }

    goto LABEL_55;
  }

  sub_22A4DDE9C();
  sub_22A4DB44C();
  if (!v1[47])
  {
    v32 = MEMORY[0x277D84F90];
    goto LABEL_74;
  }

  v32 = MEMORY[0x277D84F90];
  v191 = (v27 + 8);
  v187 = v1[76];
  v188 = v1[77];
  v33 = v192;
  do
  {
    v189 = v32;
    while (1)
    {
      sub_229543C58((v1 + 44), (v1 + 48));
      if (!swift_dynamicCast())
      {
        sub_229541CB0(v1[72], &off_283CDDAE8);
        v42 = sub_22A4DD05C();
        v43 = sub_22A4DDCEC();
        v44 = os_log_type_enabled(v42, v43);
        v45 = v1[97];
        v46 = v1[91];
        if (v44)
        {
          v47 = swift_slowAlloc();
          *v47 = 0;
          _os_log_impl(&dword_229538000, v42, v43, "Could not convert affected room UUID string", v47, 2u);
          MEMORY[0x22AAD4E50](v47, -1, -1);
        }

        v34 = v45;
        v35 = v46;
        goto LABEL_22;
      }

      v36 = v1[84];
      v37 = v1[64];
      v38 = v1;
      v39 = v1[65];
      sub_22A4DB75C();
      v40 = v38;
      if ((v195)(v36, 1, v33) == 1)
      {
        v41 = 0;
      }

      else
      {
        v48 = v38[84];
        v41 = sub_22A4DB77C();
        (*v191)(v48, v33);
      }

      v49 = [v194 roomWithUUID_];

      if (!v49)
      {
        sub_229541CB0(v38[72], &off_283CDDAE8);

        v66 = sub_22A4DD05C();
        v67 = sub_22A4DDCEC();

        v68 = os_log_type_enabled(v66, v67);
        v69 = v38[98];
        v70 = v38[91];
        if (v68)
        {
          v71 = swift_slowAlloc();
          v72 = swift_slowAlloc();
          v211 = v72;
          *v71 = 136315138;
          v73 = sub_2295A3E30(v37, v39, &v211);

          *(v71 + 4) = v73;
          _os_log_impl(&dword_229538000, v66, v67, "Could not find room with UUID %s", v71, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v72);
          MEMORY[0x22AAD4E50](v72, -1, -1);
          v74 = v71;
          v33 = v192;
          MEMORY[0x22AAD4E50](v74, -1, -1);
        }

        else
        {
        }

        v209(v69, v70);
        v1 = v40;
        goto LABEL_23;
      }

      v50 = [v49 home];
      if (v50)
      {
        break;
      }

      sub_22A4DD5EC();
      off_283CDD788();
      sub_22A4DD06C();
      v51 = v49;
      v52 = sub_22A4DD05C();
      v53 = sub_22A4DDCEC();

      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        *v54 = 138412290;
        *(v54 + 4) = v51;
        *v55 = v49;
        v56 = v51;
        _os_log_impl(&dword_229538000, v52, v53, "room %@ has no home", v54, 0xCu);
        sub_22953EAE4(v55, &qword_27D87D7D0, &unk_22A578D90);
        MEMORY[0x22AAD4E50](v55, -1, -1);
        MEMORY[0x22AAD4E50](v54, -1, -1);
      }

      v57 = v38[100];
      v58 = v38[91];
      v59 = v38[72];

      v209(v57, v58);
      sub_229541CB0(v59, &off_283CDDAE8);
      v60 = v51;
      v61 = sub_22A4DD05C();
      v62 = sub_22A4DDCEC();

      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        *v63 = 138412290;
        *(v63 + 4) = v60;
        *v64 = v49;
        v65 = v60;
        _os_log_impl(&dword_229538000, v61, v62, "Unable to create RoomEntity for %@", v63, 0xCu);
        sub_22953EAE4(v64, &qword_27D87D7D0, &unk_22A578D90);
        MEMORY[0x22AAD4E50](v64, -1, -1);
        MEMORY[0x22AAD4E50](v63, -1, -1);
        v60 = v61;
        v61 = v65;
      }

      v33 = v192;

      v1 = v38;
      v34 = v38[99];
      v35 = v38[91];
LABEL_22:
      v209(v34, v35);
LABEL_23:
      sub_22A4DB44C();
      if (!v1[47])
      {
        v32 = v189;
        goto LABEL_74;
      }
    }

    v75 = v50;
    v186 = v49;
    v76 = [v186 urlString];
    if (v76)
    {
      v77 = v76;
      v78 = sub_22A4DD5EC();
      v80 = v79;
    }

    else
    {
      v78 = 0;
      v80 = 0;
    }

    v81 = v38[80];
    v82 = v38[79];
    v199 = v38;
    v185 = v38[78];
    v83 = (v82 + *(v187 + 20));
    *v83 = v78;
    v83[1] = v80;
    v84 = [v186 spiClientIdentifier];
    sub_22A4DB79C();

    v85 = [v186 name];
    v86 = sub_22A4DD5EC();
    v88 = v87;

    v89 = (v82 + *(v187 + 24));
    *v89 = v86;
    v89[1] = v88;
    sub_2295E9240(v82, v81, type metadata accessor for RoomEntity);
    sub_2295E91D8(v81, v185, type metadata accessor for RoomEntity);
    v32 = v189;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v32 = sub_22958B088(0, v189[2] + 1, 1, v189);
    }

    v91 = v32[2];
    v90 = v32[3];
    v1 = v199;
    if (v91 >= v90 >> 1)
    {
      v32 = sub_22958B088((v90 > 1), v91 + 1, 1, v32);
    }

    v92 = v199[80];
    v93 = v199[78];

    sub_2295E9130(v92, type metadata accessor for RoomEntity);
    v32[2] = v91 + 1;
    sub_2295E9240(v93, v32 + ((*(v188 + 80) + 32) & ~*(v188 + 80)) + *(v188 + 72) * v91, type metadata accessor for RoomEntity);
    sub_22A4DB44C();
  }

  while (v199[47]);
LABEL_74:
  v1[105] = v32;
  (*(v1[82] + 8))(v1[83], v1[81]);
  v160 = __swift_project_boxed_opaque_existential_0((v190 + 112), *(v190 + 136))[6];
  v1[106] = v160;
  v161 = *(v160 + 16);
  v1[107] = v161;
  if (v161)
  {
    v1[108] = 0;
    v162 = v1[102];

    sub_22957F1C4(v163 + 32, (v1 + 17));
    v164 = __swift_project_boxed_opaque_existential_0(v1 + 17, v1[20]);
    v165 = [v162 urlString];
    if (v165)
    {
      v166 = v165;
      v167 = sub_22A4DD5EC();
      v169 = v168;
    }

    else
    {
      v167 = 0;
      v169 = 0;
    }

    v175 = v1[102];
    v176 = v1[75];
    v177 = v1[74];
    *v176 = v167;
    v176[1] = v169;
    v178 = [v175 spiClientIdentifier];
    sub_22A4DB79C();

    v179 = [v175 name];
    v180 = sub_22A4DD5EC();
    v182 = v181;

    v183 = (v176 + *(v177 + 24));
    *v183 = v180;
    v183[1] = v182;
    sub_2295E9130(v176, type metadata accessor for ZoneEntity);
    v184 = *v164;
    v1[109] = *v164;

    return MEMORY[0x2822009F8](sub_2295E33A4, v184, 0);
  }

  v170 = v1[104];
  v171 = v1[103];
  v172 = v1[90];
  v173 = v1[87];
  v174 = v1[86];

  (*(v173 + 8))(v172, v174);

LABEL_55:

  v103 = v1[1];

  return v103();
}

uint64_t sub_2295E33A4()
{
  v1 = v0[109];
  if (v1[29])
  {

    sub_22A4DDA7C();

    v1 = v0[109];
  }

  v2 = v0[73];
  v3 = v0[71];
  sub_2295C9C1C();
  __swift_project_boxed_opaque_existential_0(v1 + 19, v1[22]);
  sub_22A4DD98C();
  v4 = sub_22A4DD9DC();
  v0[110] = v4;
  v5 = *(v4 - 8);
  v6 = *(v5 + 56);
  v0[111] = v6;
  v0[112] = (v5 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v6(v2, 0, 1, v4);
  v0[25] = swift_getAssociatedTypeWitness();
  v0[26] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 22);

  sub_22A4DBAFC();

  sub_22953EAE4(v2, &unk_27D87D8F0, &qword_22A578D70);
  swift_beginAccess();
  sub_2295E90C8((v0 + 22), (v1 + 24), &qword_27D87EA00, &qword_22A579B80);
  swift_endAccess();

  return MEMORY[0x2822009F8](sub_2295E35CC, v3, 0);
}

uint64_t sub_2295E35CC()
{
  v1 = __swift_project_boxed_opaque_existential_0(v0 + 17, v0[20]);
  v2 = *v1;
  v0[113] = *v1;

  return MEMORY[0x2822009F8](sub_2295E363C, v2, 0);
}

uint64_t sub_2295E363C()
{
  v1 = v0[113];
  if (v1[29])
  {

    sub_22A4DDA7C();

    v1 = v0[113];
  }

  v2 = v0[111];
  v3 = v0[110];
  v4 = v0[73];
  v5 = v0[71];
  sub_2295C9C1C();
  __swift_project_boxed_opaque_existential_0(v1 + 19, v1[22]);
  sub_22A4DD98C();
  v2(v4, 0, 1, v3);
  v0[30] = swift_getAssociatedTypeWitness();
  v0[31] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 27);

  sub_22A4DBAFC();

  sub_22953EAE4(v4, &unk_27D87D8F0, &qword_22A578D70);
  swift_beginAccess();
  sub_2295E90C8((v0 + 27), (v1 + 24), &qword_27D87EA00, &qword_22A579B80);
  swift_endAccess();

  return MEMORY[0x2822009F8](sub_2295E3838, v5, 0);
}

uint64_t sub_2295E3838()
{
  v1 = v0[107];
  v2 = v0[108] + 1;
  __swift_destroy_boxed_opaque_existential_0(v0 + 17);
  if (v2 == v1)
  {
    v3 = v0[104];
    v4 = v0[103];
    v5 = v0[102];
    v6 = v0[90];
    v7 = v0[87];
    v8 = v0[86];

    (*(v7 + 8))(v6, v8);

    v9 = v0[1];

    return v9();
  }

  else
  {
    v11 = v0[108];
    v0[108] = v11 + 1;
    v12 = v0[102];
    sub_22957F1C4(v0[106] + 40 * v11 + 72, (v0 + 17));
    v13 = __swift_project_boxed_opaque_existential_0(v0 + 17, v0[20]);
    v14 = [v12 urlString];
    if (v14)
    {
      v15 = v14;
      v16 = sub_22A4DD5EC();
      v18 = v17;
    }

    else
    {
      v16 = 0;
      v18 = 0;
    }

    v19 = v0[102];
    v20 = v0[75];
    v21 = v0[74];
    *v20 = v16;
    v20[1] = v18;
    v22 = [v19 spiClientIdentifier];
    sub_22A4DB79C();

    v23 = [v19 name];
    v24 = sub_22A4DD5EC();
    v26 = v25;

    v27 = (v20 + *(v21 + 24));
    *v27 = v24;
    v27[1] = v26;
    sub_2295E9130(v20, type metadata accessor for ZoneEntity);
    v28 = *v13;
    v0[109] = *v13;

    return MEMORY[0x2822009F8](sub_2295E33A4, v28, 0);
  }
}

uint64_t sub_2295E3B70(uint64_t a1)
{
  v2[23] = a1;
  v2[24] = v1;
  v2[25] = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v2[26] = swift_task_alloc();
  v3 = sub_22A4DB21C();
  v2[27] = v3;
  v2[28] = *(v3 - 8);
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v4 = sub_22A4DD07C();
  v2[31] = v4;
  v2[32] = *(v4 - 8);
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2295E3D04, v1, 0);
}

uint64_t sub_2295E3D04()
{
  v47 = v0;
  sub_229541CB0(*(v0 + 200), &off_283CDDAE8);
  v1 = sub_22A4DD05C();
  v2 = sub_22A4DDCCC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_229538000, v1, v2, "Handling zone removed notification", v3, 2u);
    MEMORY[0x22AAD4E50](v3, -1, -1);
  }

  v4 = *(v0 + 272);
  v5 = *(v0 + 248);
  v6 = *(v0 + 256);

  v7 = *(v6 + 8);
  v7(v4, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DA18, &unk_22A579B60);
  sub_22A4DBA4C();
  v8 = sub_22A4DB20C();
  if (!v8)
  {
    goto LABEL_13;
  }

  v9 = v8;
  *(v0 + 152) = sub_22A4DD5EC();
  *(v0 + 160) = v10;
  sub_22A4DE18C();
  if (!*(v9 + 16) || (v11 = sub_2295402E8(v0 + 16), (v12 & 1) == 0))
  {

    sub_22954045C(v0 + 16);
LABEL_13:
    *(v0 + 96) = 0u;
    *(v0 + 112) = 0u;
    goto LABEL_14;
  }

  sub_2295404B0(*(v9 + 56) + 32 * v11, v0 + 96);
  sub_22954045C(v0 + 16);

  if (!*(v0 + 120))
  {
LABEL_14:
    sub_22953EAE4(v0 + 96, &unk_27D87DE60, &unk_22A57A960);
LABEL_15:
    v21 = *(v0 + 232);
    v20 = *(v0 + 240);
    v22 = *(v0 + 216);
    v23 = *(v0 + 224);
    sub_229541CB0(*(v0 + 200), &off_283CDDAE8);
    (*(v23 + 16))(v21, v20, v22);
    v24 = sub_22A4DD05C();
    v25 = sub_22A4DDCEC();
    v26 = os_log_type_enabled(v24, v25);
    v27 = *(v0 + 264);
    v28 = *(v0 + 240);
    v45 = *(v0 + 248);
    v30 = *(v0 + 224);
    v29 = *(v0 + 232);
    v31 = *(v0 + 216);
    if (v26)
    {
      v44 = v7;
      v32 = swift_slowAlloc();
      v43 = v27;
      v33 = swift_slowAlloc();
      v46 = v33;
      *v32 = 136315138;
      v34 = sub_22A4DB1BC();
      v42 = v28;
      v36 = v35;
      v37 = *(v30 + 8);
      v37(v29, v31);
      v38 = sub_2295A3E30(v34, v36, &v46);

      *(v32 + 4) = v38;
      _os_log_impl(&dword_229538000, v24, v25, "Did not find zone uuid. Could not handle zone removed notification %s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v33);
      MEMORY[0x22AAD4E50](v33, -1, -1);
      MEMORY[0x22AAD4E50](v32, -1, -1);

      v44(v43, v45);
      v37(v42, v31);
    }

    else
    {

      v39 = *(v30 + 8);
      v39(v29, v31);
      v7(v27, v45);
      v39(v28, v31);
    }

    goto LABEL_18;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_15;
  }

  v13 = *(v0 + 192);

  v14 = __swift_project_boxed_opaque_existential_0((v13 + 112), *(v13 + 136))[6];
  *(v0 + 280) = v14;
  v15 = *(v14 + 16);
  *(v0 + 288) = v15;
  if (v15)
  {
    *(v0 + 296) = 0;
    v16 = *(v14 + 56);

    v18 = __swift_project_boxed_opaque_existential_0((v17 + 32), v16);
    v19 = *v18;
    *(v0 + 304) = *v18;

    return MEMORY[0x2822009F8](sub_2295E41B8, v19, 0);
  }

  (*(*(v0 + 224) + 8))(*(v0 + 240), *(v0 + 216));
LABEL_18:

  v40 = *(v0 + 8);

  return v40();
}

uint64_t sub_2295E41B8()
{
  v1 = v0[38];
  if (v1[29])
  {

    sub_22A4DDA7C();

    v1 = v0[38];
  }

  v2 = v0[26];
  v3 = v0[24];
  sub_2295C9C1C();
  __swift_project_boxed_opaque_existential_0(v1 + 19, v1[22]);
  sub_22A4DD98C();
  v4 = sub_22A4DD9DC();
  (*(*(v4 - 8) + 56))(v2, 0, 1, v4);
  v0[10] = swift_getAssociatedTypeWitness();
  v0[11] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 7);

  sub_22A4DBAFC();

  sub_22953EAE4(v2, &unk_27D87D8F0, &qword_22A578D70);
  swift_beginAccess();
  sub_2295E90C8((v0 + 7), (v1 + 24), &qword_27D87EA00, &qword_22A579B80);
  swift_endAccess();

  return MEMORY[0x2822009F8](sub_2295E43CC, v3, 0);
}

uint64_t sub_2295E43CC()
{
  v1 = v0[37] + 1;
  if (v1 == v0[36])
  {

    (*(v0[28] + 8))(v0[30], v0[27]);

    v2 = v0[1];

    return v2();
  }

  else
  {
    v0[37] = v1;
    v4 = __swift_project_boxed_opaque_existential_0((v0[35] + 40 * v1 + 32), *(v0[35] + 40 * v1 + 56));
    v5 = *v4;
    v0[38] = *v4;

    return MEMORY[0x2822009F8](sub_2295E41B8, v5, 0);
  }
}

uint64_t sub_2295E44E8(uint64_t a1)
{
  v2[43] = a1;
  v2[44] = v1;
  v2[45] = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v2[46] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D9D8, &qword_22A579900);
  v2[47] = swift_task_alloc();
  v3 = sub_22A4DD07C();
  v2[48] = v3;
  v2[49] = *(v3 - 8);
  v2[50] = swift_task_alloc();
  v2[51] = swift_task_alloc();
  v2[52] = swift_task_alloc();
  v2[53] = swift_task_alloc();
  v2[54] = swift_task_alloc();
  v2[55] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D2A0, &unk_22A578BD0);
  v2[56] = swift_task_alloc();
  v2[57] = swift_task_alloc();
  v4 = sub_22A4DB21C();
  v2[58] = v4;
  v2[59] = *(v4 - 8);
  v2[60] = swift_task_alloc();
  v2[61] = swift_task_alloc();
  v2[62] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2295E4734, v1, 0);
}

uint64_t sub_2295E4734()
{
  v166 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DA18, &unk_22A579B60);
  sub_22A4DBA4C();
  v1 = sub_22A4DB20C();
  if (!v1)
  {
    goto LABEL_17;
  }

  v2 = v1;
  v0[33] = sub_22A4DD5EC();
  v0[34] = v3;
  sub_22A4DE18C();
  if (!*(v2 + 16) || (v4 = sub_2295402E8((v0 + 2)), (v5 & 1) == 0))
  {

    sub_22954045C((v0 + 2));
LABEL_17:
    *(v0 + 11) = 0u;
    *(v0 + 12) = 0u;
    goto LABEL_18;
  }

  sub_2295404B0(*(v2 + 56) + 32 * v4, (v0 + 22));
  sub_22954045C((v0 + 2));

  if (!v0[25])
  {
LABEL_18:
    sub_22953EAE4((v0 + 22), &unk_27D87DE60, &unk_22A57A960);
LABEL_19:
    v28 = v0[62];
    v30 = v0[59];
    v29 = v0[60];
    v31 = v0[58];
    sub_229541CB0(v0[45], &off_283CDDAE8);
    (*(v30 + 16))(v29, v28, v31);
    v32 = sub_22A4DD05C();
    v33 = sub_22A4DDCEC();
    v34 = os_log_type_enabled(v32, v33);
    v35 = v0[62];
    v37 = v0[59];
    v36 = v0[60];
    v38 = v0[58];
    v39 = v0[49];
    v40 = v0[50];
    v41 = v0[48];
    if (v34)
    {
      v163 = v0[50];
      v42 = swift_slowAlloc();
      v152 = swift_slowAlloc();
      v165 = v152;
      *v42 = 136315138;
      v149 = v33;
      v0[41] = sub_22A4DB20C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DA20, &unk_22A579B70);
      v43 = sub_22A4DDF7C();
      v44 = v38;
      v46 = v45;
      v47 = *(v37 + 8);
      v48 = v36;
      v49 = v44;
      v47(v48, v44);

      v50 = sub_2295A3E30(v43, v46, &v165);

      *(v42 + 4) = v50;
      _os_log_impl(&dword_229538000, v32, v149, "Could not handle new home added notification %s", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v152);
      MEMORY[0x22AAD4E50](v152, -1, -1);
      MEMORY[0x22AAD4E50](v42, -1, -1);

      (*(v39 + 8))(v163, v41);
      v47(v35, v49);
    }

    else
    {

      v51 = *(v37 + 8);
      v51(v36, v38);
      (*(v39 + 8))(v40, v41);
      v51(v35, v38);
    }

LABEL_22:

    v52 = v0[1];

    return v52();
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_19;
  }

  v6 = v0[57];
  v8 = v0[35];
  v7 = v0[36];
  v157 = v0[44];
  v9 = __swift_project_boxed_opaque_existential_0((v157 + 112), *(v157 + 136));
  sub_22957F1C4((v9 + 1), (v0 + 7));
  v10 = *__swift_project_boxed_opaque_existential_0(v0 + 7, v0[10]);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  sub_22A4DB75C();
  v11 = sub_22A4DB7DC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  v14 = v13(v6, 1, v11);
  v15 = 0;
  if (v14 != 1)
  {
    v16 = v0[57];
    v15 = sub_22A4DB77C();
    (*(v12 + 8))(v16, v11);
  }

  v17 = [v10 _homeWithUUID_];
  v0[63] = v17;

  if (!v17)
  {
    sub_229541CB0(v0[45], &off_283CDDAE8);

    v54 = sub_22A4DD05C();
    v55 = sub_22A4DDCCC();

    v56 = os_log_type_enabled(v54, v55);
    v57 = v0[62];
    v59 = v0[58];
    v58 = v0[59];
    v164 = v0[51];
    v61 = v0[48];
    v60 = v0[49];
    v147 = v0;
    if (v56)
    {
      v158 = v0[58];
      v62 = swift_slowAlloc();
      v63 = v57;
      v64 = swift_slowAlloc();
      v165 = v64;
      *v62 = 136315138;
      v65 = sub_2295A3E30(v8, v7, &v165);

      *(v62 + 4) = v65;
      _os_log_impl(&dword_229538000, v54, v55, "Could not find the home with UUID %s", v62, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v64);
      MEMORY[0x22AAD4E50](v64, -1, -1);
      MEMORY[0x22AAD4E50](v62, -1, -1);

      (*(v60 + 8))(v164, v61);
      (*(v58 + 8))(v63, v158);
    }

    else
    {

      (*(v60 + 8))(v164, v61);
      (*(v58 + 8))(v57, v59);
    }

    v0 = v147;
    goto LABEL_22;
  }

  v162 = v17;

  v18 = sub_22A4DB20C();
  v19 = v0;
  if (!v18)
  {
    goto LABEL_28;
  }

  v20 = v18;
  v0[37] = sub_22A4DD5EC();
  v0[38] = v21;
  sub_22A4DE18C();
  if (!*(v20 + 16) || (v22 = sub_2295402E8((v0 + 12)), (v23 & 1) == 0))
  {

    sub_22954045C((v0 + 12));
LABEL_28:
    *(v0 + 13) = 0u;
    *(v0 + 14) = 0u;
    goto LABEL_29;
  }

  sub_2295404B0(*(v20 + 56) + 32 * v22, (v0 + 26));
  sub_22954045C((v0 + 12));

  if (!v0[29])
  {
LABEL_29:
    sub_22953EAE4((v0 + 26), &unk_27D87DE60, &unk_22A57A960);
LABEL_30:
    v67 = v0[61];
    v66 = v0[62];
    v69 = v0[58];
    v68 = v0[59];
    sub_229541CB0(v19[45], &off_283CDDAE8);
    (*(v68 + 16))(v67, v66, v69);
    v0 = v19;
    v70 = sub_22A4DD05C();
    v71 = sub_22A4DDCEC();
    v72 = os_log_type_enabled(v70, v71);
    v73 = v19[61];
    v74 = v19[62];
    v76 = v19[58];
    v75 = v19[59];
    v77 = v19[52];
    v78 = v19[49];
    v159 = v19[48];
    if (v72)
    {
      v154 = v19[52];
      v79 = swift_slowAlloc();
      v80 = v76;
      v150 = v76;
      v81 = swift_slowAlloc();
      v165 = v81;
      *v79 = 136315138;
      v153 = v74;
      v82 = sub_22A4DB1BC();
      log = v70;
      v84 = v83;
      v85 = *(v75 + 8);
      v85(v73, v80);
      v86 = sub_2295A3E30(v82, v84, &v165);
      v0 = v19;

      *(v79 + 4) = v86;
      _os_log_impl(&dword_229538000, log, v71, "Did not find actionSet UUID in the notification dictionary %s", v79, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v81);
      MEMORY[0x22AAD4E50](v81, -1, -1);
      MEMORY[0x22AAD4E50](v79, -1, -1);

      (*(v78 + 8))(v154, v159);
      v85(v153, v150);
    }

    else
    {

      v87 = *(v75 + 8);
      v87(v73, v76);
      (*(v78 + 8))(v77, v159);
      v87(v74, v76);
    }

    goto LABEL_22;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_30;
  }

  v24 = v0[56];
  v26 = v0[39];
  v25 = v0[40];
  sub_22A4DB75C();
  if (v13(v24, 1, v11) == 1)
  {
    v27 = 0;
  }

  else
  {
    v88 = v0[56];
    v27 = sub_22A4DB77C();
    (*(v12 + 8))(v88, v11);
  }

  v89 = [v162 actionSetWithUUID_];
  v0[64] = v89;

  v148 = v0;
  if (!v89)
  {
    sub_229541CB0(v0[45], &off_283CDDAE8);

    v95 = sub_22A4DD05C();
    v96 = sub_22A4DDCEC();

    v97 = os_log_type_enabled(v95, v96);
    v98 = v0[62];
    v99 = v0[58];
    v100 = v0[59];
    v160 = v0[53];
    v102 = v0[48];
    v101 = v0[49];
    if (v97)
    {
      v155 = v0[62];
      v103 = swift_slowAlloc();
      v104 = v99;
      v105 = swift_slowAlloc();
      v165 = v105;
      *v103 = 136315138;
      v106 = sub_2295A3E30(v26, v25, &v165);

      *(v103 + 4) = v106;
      _os_log_impl(&dword_229538000, v95, v96, "Could not find the scene with UUID %s", v103, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v105);
      MEMORY[0x22AAD4E50](v105, -1, -1);
      MEMORY[0x22AAD4E50](v103, -1, -1);

      (*(v101 + 8))(v160, v102);
      (*(v100 + 8))(v155, v104);
    }

    else
    {

      (*(v101 + 8))(v160, v102);
      (*(v100 + 8))(v98, v99);
    }

    v0 = v148;
    goto LABEL_22;
  }

  v90 = [v89 type];
  v91 = sub_22A4DD5EC();
  v93 = v92;

  if (v91 == sub_22A4DD5EC() && v93 == v94)
  {

LABEL_43:
    sub_229541CB0(v0[45], &off_283CDDAE8);
    v108 = sub_22A4DD05C();
    v109 = sub_22A4DDCCC();
    v110 = os_log_type_enabled(v108, v109);
    v111 = v0[62];
    v113 = v0[58];
    v112 = v0[59];
    v114 = v0[55];
    v116 = v0[48];
    v115 = v0[49];
    if (v110)
    {
      v117 = v0[62];
      v118 = swift_slowAlloc();
      *v118 = 0;
      _os_log_impl(&dword_229538000, v108, v109, "Not going to index trigger owned actionSet", v118, 2u);
      MEMORY[0x22AAD4E50](v118, -1, -1);

      (*(v115 + 8))(v114, v116);
      (*(v112 + 8))(v117, v113);
    }

    else
    {

      (*(v115 + 8))(v114, v116);
      (*(v112 + 8))(v111, v113);
    }

    v0 = v148;
    goto LABEL_22;
  }

  v107 = sub_22A4DE60C();

  if (v107)
  {
    goto LABEL_43;
  }

  v119 = v0[47];
  sub_2295C3B8C(v89, v119);
  v120 = type metadata accessor for SceneEntity(0);
  v121 = (*(*(v120 - 8) + 48))(v119, 1, v120);
  sub_22953EAE4(v119, &qword_27D87D9D8, &qword_22A579900);
  if (v121 == 1)
  {
    sub_229541CB0(v0[45], &off_283CDDAE8);
    v122 = v89;
    v123 = sub_22A4DD05C();
    v124 = sub_22A4DDCEC();

    v125 = os_log_type_enabled(v123, v124);
    v126 = v0[62];
    v127 = v0[58];
    v128 = v0[59];
    v129 = v0[54];
    v131 = v0[48];
    v130 = v0[49];
    if (v125)
    {
      v161 = v0[48];
      v132 = swift_slowAlloc();
      v156 = v126;
      v133 = swift_slowAlloc();
      v165 = v133;
      *v132 = 136315138;
      v0[42] = v122;
      sub_229562F68(0, &qword_281401C20, off_278666020);
      v134 = sub_22A4DBA6C();
      v151 = v129;
      v136 = sub_2295A3E30(v134, v135, &v165);

      *(v132 + 4) = v136;
      _os_log_impl(&dword_229538000, v123, v124, "Unable to create SceneEntity from scene %s", v132, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v133);
      MEMORY[0x22AAD4E50](v133, -1, -1);
      MEMORY[0x22AAD4E50](v132, -1, -1);

      (*(v130 + 8))(v151, v161);
      (*(v128 + 8))(v156, v127);
    }

    else
    {

      (*(v130 + 8))(v129, v131);
      (*(v128 + 8))(v126, v127);
    }

    goto LABEL_22;
  }

  v137 = __swift_project_boxed_opaque_existential_0((v157 + 112), *(v157 + 136))[6];
  v0[65] = v137;
  v138 = *(v137 + 16);
  v0[66] = v138;
  if (!v138)
  {

    v143 = v0[62];
    v144 = v0[58];
    v145 = v0[59];

    (*(v145 + 8))(v143, v144);
    goto LABEL_22;
  }

  v0[67] = 0;
  v139 = *(v137 + 56);

  v141 = __swift_project_boxed_opaque_existential_0((v140 + 32), v139);
  v142 = *v141;
  v0[68] = *v141;

  return MEMORY[0x2822009F8](sub_2295E5744, v142, 0);
}

uint64_t sub_2295E5744()
{
  v1 = v0[68];
  if (v1[29])
  {

    sub_22A4DDA7C();

    v1 = v0[68];
  }

  v2 = v0[46];
  v3 = v0[44];
  sub_2295C9C1C();
  __swift_project_boxed_opaque_existential_0(v1 + 19, v1[22]);
  sub_22A4DD98C();
  v4 = sub_22A4DD9DC();
  (*(*(v4 - 8) + 56))(v2, 0, 1, v4);
  v0[20] = swift_getAssociatedTypeWitness();
  v0[21] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 17);

  sub_22A4DBAFC();

  sub_22953EAE4(v2, &unk_27D87D8F0, &qword_22A578D70);
  swift_beginAccess();
  sub_2295E90C8((v0 + 17), (v1 + 24), &qword_27D87EA00, &qword_22A579B80);
  swift_endAccess();

  return MEMORY[0x2822009F8](sub_2295E5958, v3, 0);
}

uint64_t sub_2295E5958()
{
  v1 = *(v0 + 536) + 1;
  if (v1 == *(v0 + 528))
  {
    v2 = *(v0 + 512);

    v3 = *(v0 + 496);
    v4 = *(v0 + 464);
    v5 = *(v0 + 472);

    (*(v5 + 8))(v3, v4);

    v6 = *(v0 + 8);

    return v6();
  }

  else
  {
    *(v0 + 536) = v1;
    v8 = __swift_project_boxed_opaque_existential_0((*(v0 + 520) + 40 * v1 + 32), *(*(v0 + 520) + 40 * v1 + 56));
    v9 = *v8;
    *(v0 + 544) = *v8;

    return MEMORY[0x2822009F8](sub_2295E5744, v9, 0);
  }
}

uint64_t sub_2295E5B08(uint64_t a1)
{
  v2[23] = a1;
  v2[24] = v1;
  v2[25] = *v1;
  v3 = sub_22A4DD07C();
  v2[26] = v3;
  v2[27] = *(v3 - 8);
  v2[28] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v2[29] = swift_task_alloc();
  v4 = sub_22A4DB21C();
  v2[30] = v4;
  v2[31] = *(v4 - 8);
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2295E5C90, v1, 0);
}

uint64_t sub_2295E5C90()
{
  v41 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DA18, &unk_22A579B60);
  sub_22A4DBA4C();
  v1 = sub_22A4DB20C();
  if (!v1)
  {
    goto LABEL_11;
  }

  v2 = v1;
  *(v0 + 152) = sub_22A4DD5EC();
  *(v0 + 160) = v3;
  sub_22A4DE18C();
  if (!*(v2 + 16) || (v4 = sub_2295402E8(v0 + 16), (v5 & 1) == 0))
  {

    sub_22954045C(v0 + 16);
LABEL_11:
    *(v0 + 96) = 0u;
    *(v0 + 112) = 0u;
    goto LABEL_12;
  }

  sub_2295404B0(*(v2 + 56) + 32 * v4, v0 + 96);
  sub_22954045C(v0 + 16);

  if (!*(v0 + 120))
  {
LABEL_12:
    sub_22953EAE4(v0 + 96, &unk_27D87DE60, &unk_22A57A960);
LABEL_13:
    v14 = *(v0 + 256);
    v13 = *(v0 + 264);
    v15 = *(v0 + 240);
    v16 = *(v0 + 248);
    sub_229541CB0(*(v0 + 200), &off_283CDDAE8);
    (*(v16 + 16))(v14, v13, v15);
    v17 = sub_22A4DD05C();
    v18 = sub_22A4DDCEC();
    v19 = os_log_type_enabled(v17, v18);
    v20 = *(v0 + 256);
    v21 = *(v0 + 264);
    v23 = *(v0 + 240);
    v22 = *(v0 + 248);
    v24 = *(v0 + 216);
    v25 = *(v0 + 224);
    v39 = *(v0 + 208);
    if (v19)
    {
      v26 = swift_slowAlloc();
      v38 = v25;
      v27 = swift_slowAlloc();
      v40 = v27;
      *v26 = 136315138;
      v36 = v18;
      v28 = sub_22A4DB1BC();
      v37 = v21;
      v30 = v29;
      v31 = *(v22 + 8);
      v31(v20, v23);
      v32 = sub_2295A3E30(v28, v30, &v40);

      *(v26 + 4) = v32;
      _os_log_impl(&dword_229538000, v17, v36, "Did not find scene uuid. Could not handle scene removed notification %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x22AAD4E50](v27, -1, -1);
      MEMORY[0x22AAD4E50](v26, -1, -1);

      (*(v24 + 8))(v38, v39);
      v31(v37, v23);
    }

    else
    {

      v33 = *(v22 + 8);
      v33(v20, v23);
      (*(v24 + 8))(v25, v39);
      v33(v21, v23);
    }

    goto LABEL_16;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_13;
  }

  v6 = *(v0 + 192);

  v7 = __swift_project_boxed_opaque_existential_0((v6 + 112), *(v6 + 136))[6];
  *(v0 + 272) = v7;
  v8 = *(v7 + 16);
  *(v0 + 280) = v8;
  if (v8)
  {
    *(v0 + 288) = 0;
    v9 = *(v7 + 56);

    v11 = __swift_project_boxed_opaque_existential_0((v10 + 32), v9);
    v12 = *v11;
    *(v0 + 296) = *v11;

    return MEMORY[0x2822009F8](sub_2295E60A0, v12, 0);
  }

  (*(*(v0 + 248) + 8))(*(v0 + 264), *(v0 + 240));
LABEL_16:

  v34 = *(v0 + 8);

  return v34();
}

uint64_t sub_2295E60A0()
{
  v1 = v0[37];
  if (v1[29])
  {

    sub_22A4DDA7C();

    v1 = v0[37];
  }

  v2 = v0[29];
  v3 = v0[24];
  sub_2295C9C1C();
  __swift_project_boxed_opaque_existential_0(v1 + 19, v1[22]);
  sub_22A4DD98C();
  v4 = sub_22A4DD9DC();
  (*(*(v4 - 8) + 56))(v2, 0, 1, v4);
  v0[10] = swift_getAssociatedTypeWitness();
  v0[11] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 7);

  sub_22A4DBAFC();

  sub_22953EAE4(v2, &unk_27D87D8F0, &qword_22A578D70);
  swift_beginAccess();
  sub_2295E90C8((v0 + 7), (v1 + 24), &qword_27D87EA00, &qword_22A579B80);
  swift_endAccess();

  return MEMORY[0x2822009F8](sub_2295E62B4, v3, 0);
}

uint64_t sub_2295E62B4()
{
  v1 = v0[36] + 1;
  if (v1 == v0[35])
  {

    (*(v0[31] + 8))(v0[33], v0[30]);

    v2 = v0[1];

    return v2();
  }

  else
  {
    v0[36] = v1;
    v4 = __swift_project_boxed_opaque_existential_0((v0[34] + 40 * v1 + 32), *(v0[34] + 40 * v1 + 56));
    v5 = *v4;
    v0[37] = *v4;

    return MEMORY[0x2822009F8](sub_2295E60A0, v5, 0);
  }
}

uint64_t sub_2295E63C4(uint64_t a1)
{
  v2[10] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v2[11] = swift_task_alloc();
  v4 = swift_task_alloc();
  v2[12] = v4;
  *v4 = v2;
  v4[1] = sub_2295E6494;

  return sub_2295E6F0C(a1);
}

uint64_t sub_2295E6494(uint64_t a1)
{
  v2 = *(*v1 + 80);

  return MEMORY[0x2822009F8](sub_2295E65B0, v2, 0);
}

uint64_t sub_2295E65B0()
{
  v1 = __swift_project_boxed_opaque_existential_0((v0[10] + 112), *(v0[10] + 136))[6];
  v0[13] = v1;
  v2 = *(v1 + 16);
  v0[14] = v2;
  if (v2)
  {
    v0[15] = 0;
    v3 = *(v1 + 56);

    v5 = __swift_project_boxed_opaque_existential_0((v4 + 32), v3);
    v6 = *v5;
    v0[16] = *v5;

    return MEMORY[0x2822009F8](sub_2295E6688, v6, 0);
  }

  else
  {

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_2295E6688()
{
  v1 = v0[16];
  if (v1[29])
  {

    sub_22A4DDA7C();

    v1 = v0[16];
  }

  v2 = v0[10];
  v3 = v0[11];
  sub_2295C9C1C();
  __swift_project_boxed_opaque_existential_0(v1 + 19, v1[22]);
  sub_22A4DD98C();
  v4 = sub_22A4DD9DC();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);

  sub_22A4DBAFC();

  sub_22953EAE4(v3, &unk_27D87D8F0, &qword_22A578D70);
  swift_beginAccess();
  sub_2295E90C8((v0 + 2), (v1 + 24), &qword_27D87EA00, &qword_22A579B80);
  swift_endAccess();

  return MEMORY[0x2822009F8](sub_2295E6898, v2, 0);
}

uint64_t sub_2295E6898()
{
  v1 = v0[15] + 1;
  if (v1 == v0[14])
  {

    v2 = v0[1];

    return v2();
  }

  else
  {
    v0[15] = v1;
    v4 = __swift_project_boxed_opaque_existential_0((v0[13] + 40 * v1 + 32), *(v0[13] + 40 * v1 + 56));
    v5 = *v4;
    v0[16] = *v4;

    return MEMORY[0x2822009F8](sub_2295E6688, v5, 0);
  }
}

uint64_t sub_2295E6968(uint64_t a1)
{
  v2[10] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v2[11] = swift_task_alloc();
  v4 = swift_task_alloc();
  v2[12] = v4;
  *v4 = v2;
  v4[1] = sub_2295E6A38;

  return sub_2295E6F0C(a1);
}

uint64_t sub_2295E6A38(uint64_t a1)
{
  v2 = *(*v1 + 80);

  return MEMORY[0x2822009F8](sub_2295E6B54, v2, 0);
}

uint64_t sub_2295E6B54()
{
  v1 = __swift_project_boxed_opaque_existential_0((v0[10] + 112), *(v0[10] + 136))[6];
  v0[13] = v1;
  v2 = *(v1 + 16);
  v0[14] = v2;
  if (v2)
  {
    v0[15] = 0;
    v3 = *(v1 + 56);

    v5 = __swift_project_boxed_opaque_existential_0((v4 + 32), v3);
    v6 = *v5;
    v0[16] = *v5;

    return MEMORY[0x2822009F8](sub_2295E6C2C, v6, 0);
  }

  else
  {

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_2295E6C2C()
{
  v1 = v0[16];
  if (v1[29])
  {

    sub_22A4DDA7C();

    v1 = v0[16];
  }

  v2 = v0[10];
  v3 = v0[11];
  sub_2295C9C1C();
  __swift_project_boxed_opaque_existential_0(v1 + 19, v1[22]);
  sub_22A4DD98C();
  v4 = sub_22A4DD9DC();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);

  sub_22A4DBAFC();

  sub_22953EAE4(v3, &unk_27D87D8F0, &qword_22A578D70);
  swift_beginAccess();
  sub_2295E90C8((v0 + 2), (v1 + 24), &qword_27D87EA00, &qword_22A579B80);
  swift_endAccess();

  return MEMORY[0x2822009F8](sub_2295E6E3C, v2, 0);
}

uint64_t sub_2295E6E3C()
{
  v1 = v0[15] + 1;
  if (v1 == v0[14])
  {

    v2 = v0[1];

    return v2();
  }

  else
  {
    v0[15] = v1;
    v4 = __swift_project_boxed_opaque_existential_0((v0[13] + 40 * v1 + 32), *(v0[13] + 40 * v1 + 56));
    v5 = *v4;
    v0[16] = *v4;

    return MEMORY[0x2822009F8](sub_2295E6C2C, v5, 0);
  }
}

uint64_t sub_2295E6F0C(uint64_t a1)
{
  v3 = *v1;
  v2[26] = a1;
  v2[27] = v3;
  v4 = sub_22A4DD07C();
  v2[28] = v4;
  v2[29] = *(v4 - 8);
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v5 = sub_22A4DB21C();
  v2[32] = v5;
  v2[33] = *(v5 - 8);
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2295E7070, v1, 0);
}

uint64_t sub_2295E7070()
{
  v67 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DA18, &unk_22A579B60);
  sub_22A4DBA4C();
  v1 = sub_22A4DB20C();
  if (!v1)
  {
    goto LABEL_11;
  }

  v2 = v1;
  *(v0 + 160) = sub_22A4DD5EC();
  *(v0 + 168) = v3;
  sub_22A4DE18C();
  if (!*(v2 + 16) || (v4 = sub_2295402E8(v0 + 16), (v5 & 1) == 0))
  {

    sub_22954045C(v0 + 16);
LABEL_11:
    *(v0 + 96) = 0u;
    *(v0 + 112) = 0u;
    goto LABEL_12;
  }

  sub_2295404B0(*(v2 + 56) + 32 * v4, v0 + 96);
  sub_22954045C(v0 + 16);

  if (!*(v0 + 120))
  {
LABEL_12:
    sub_22953EAE4(v0 + 96, &unk_27D87DE60, &unk_22A57A960);
LABEL_13:
    v15 = *(v0 + 288);
    v17 = *(v0 + 264);
    v16 = *(v0 + 272);
    v18 = *(v0 + 256);
    sub_229541CB0(*(v0 + 216), &off_283CDDAE8);
    (*(v17 + 16))(v16, v15, v18);
    v19 = sub_22A4DD05C();
    v20 = sub_22A4DDCEC();
    v21 = os_log_type_enabled(v19, v20);
    v23 = *(v0 + 264);
    v22 = *(v0 + 272);
    v24 = *(v0 + 256);
    v26 = *(v0 + 232);
    v25 = *(v0 + 240);
    v27 = *(v0 + 224);
    if (v21)
    {
      v64 = *(v0 + 224);
      v28 = swift_slowAlloc();
      v60 = v20;
      v29 = swift_slowAlloc();
      v66 = v29;
      *v28 = 136315138;
      v30 = sub_22A4DB1BC();
      v62 = v25;
      v32 = v31;
      (*(v23 + 8))(v22, v24);
      v33 = sub_2295A3E30(v30, v32, &v66);

      *(v28 + 4) = v33;
      _os_log_impl(&dword_229538000, v19, v60, "Could not find accessory in notification %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x22AAD4E50](v29, -1, -1);
      MEMORY[0x22AAD4E50](v28, -1, -1);

      (*(v26 + 8))(v62, v64);
    }

    else
    {

      (*(v23 + 8))(v22, v24);
      (*(v26 + 8))(v25, v27);
    }

    goto LABEL_16;
  }

  sub_229562F68(0, &qword_281401C30, off_278665FE8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_13;
  }

  v6 = *(v0 + 192);
  v7 = [v6 home];
  if (v7)
  {
    goto LABEL_7;
  }

  v35 = sub_22A4DB20C();
  if (!v35)
  {
    goto LABEL_28;
  }

  v36 = v35;
  *(v0 + 176) = sub_22A4DD5EC();
  *(v0 + 184) = v37;
  sub_22A4DE18C();
  if (!*(v36 + 16) || (v38 = sub_2295402E8(v0 + 56), (v39 & 1) == 0))
  {

    sub_22954045C(v0 + 56);
LABEL_28:
    *(v0 + 128) = 0u;
    *(v0 + 144) = 0u;
    goto LABEL_29;
  }

  sub_2295404B0(*(v36 + 56) + 32 * v38, v0 + 128);
  sub_22954045C(v0 + 56);

  if (!*(v0 + 152))
  {
LABEL_29:
    sub_22953EAE4(v0 + 128, &unk_27D87DE60, &unk_22A57A960);
    goto LABEL_30;
  }

  sub_229562F68(0, &qword_2814017B0, off_278666198);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_30:
    v41 = *(v0 + 280);
    v40 = *(v0 + 288);
    v42 = *(v0 + 256);
    v43 = *(v0 + 264);
    sub_229541CB0(*(v0 + 216), &off_283CDDAE8);
    (*(v43 + 16))(v41, v40, v42);
    v44 = sub_22A4DD05C();
    v45 = sub_22A4DDCEC();
    v46 = os_log_type_enabled(v44, v45);
    v47 = *(v0 + 280);
    v49 = *(v0 + 256);
    v48 = *(v0 + 264);
    v50 = *(v0 + 248);
    v52 = *(v0 + 224);
    v51 = *(v0 + 232);
    if (v46)
    {
      v65 = *(v0 + 224);
      v53 = swift_slowAlloc();
      v61 = v45;
      v54 = swift_slowAlloc();
      v66 = v54;
      *v53 = 136315138;
      log = v44;
      v55 = sub_22A4DB1BC();
      v63 = v50;
      v57 = v56;
      (*(v48 + 8))(v47, v49);
      v58 = sub_2295A3E30(v55, v57, &v66);

      *(v53 + 4) = v58;
      _os_log_impl(&dword_229538000, log, v61, "Could not find valid instance of home in notification %s", v53, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v54);
      MEMORY[0x22AAD4E50](v54, -1, -1);
      MEMORY[0x22AAD4E50](v53, -1, -1);

      (*(v51 + 8))(v63, v65);
    }

    else
    {

      (*(v48 + 8))(v47, v49);
      (*(v51 + 8))(v50, v52);
    }

    goto LABEL_16;
  }

  v7 = *(v0 + 200);
LABEL_7:
  v8 = sub_2295C08E4(v6, v7);
  v9 = v8;
  v10 = *(v8 + 16);
  if (!v10)
  {

LABEL_16:
    v11 = MEMORY[0x277D84F90];
    goto LABEL_17;
  }

  v11 = sub_229714F6C(*(v8 + 16), 0);
  v12 = *(type metadata accessor for HomeDeviceEntity(0) - 8);
  v13 = sub_22971573C(&v66, v11 + ((*(v12 + 80) + 32) & ~*(v12 + 80)), v10, v9);
  result = sub_22953EE84(v66);
  if (v13 != v10)
  {
    __break(1u);
    return result;
  }

LABEL_17:
  (*(*(v0 + 264) + 8))(*(v0 + 288), *(v0 + 256));

  v34 = *(v0 + 8);

  return v34(v11);
}

uint64_t sub_2295E7734(uint64_t a1)
{
  v2[15] = a1;
  v2[16] = v1;
  v2[17] = *v1;
  v3 = sub_22A4DD07C();
  v2[18] = v3;
  v2[19] = *(v3 - 8);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v2[22] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DA28, &unk_22A579B88);
  v2[23] = swift_task_alloc();
  v4 = sub_22A4DB21C();
  v2[24] = v4;
  v2[25] = *(v4 - 8);
  v2[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2295E78F4, v1, 0);
}

uint64_t sub_2295E78F4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DA18, &unk_22A579B60);
  sub_22A4DBA4C();
  sub_22A4DB1FC();
  if (!v0[10])
  {
    sub_22953EAE4((v0 + 7), &unk_27D87DE60, &unk_22A57A960);
    goto LABEL_8;
  }

  sub_229562F68(0, &unk_281401B60, off_278666318);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    sub_229541CB0(v0[17], &off_283CDDAE8);
    v17 = sub_22A4DD05C();
    v18 = sub_22A4DDCEC();
    v19 = os_log_type_enabled(v17, v18);
    v21 = v0[25];
    v20 = v0[26];
    v22 = v0[24];
    v24 = v0[19];
    v23 = v0[20];
    v25 = v0[18];
    if (v19)
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_229538000, v17, v18, "Could not index service group as the notification did not contain a HMDServiceGroup", v26, 2u);
      MEMORY[0x22AAD4E50](v26, -1, -1);
    }

    (*(v24 + 8))(v23, v25);
    (*(v21 + 8))(v20, v22);
    goto LABEL_11;
  }

  v1 = v0[23];
  v2 = v0[14];
  v0[27] = v2;
  sub_2295C1D64(v2, v1);
  v3 = type metadata accessor for HomeGroupEntity(0);
  v4 = (*(*(v3 - 8) + 48))(v1, 1, v3);
  sub_22953EAE4(v1, &qword_27D87DA28, &unk_22A579B88);
  if (v4 == 1)
  {
    sub_229541CB0(v0[17], &off_283CDDAE8);
    v5 = v2;
    v6 = sub_22A4DD05C();
    v7 = sub_22A4DDCEC();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      *(v8 + 4) = v5;
      *v9 = v5;
      v10 = v5;
      _os_log_impl(&dword_229538000, v6, v7, "Unable to create HomeGroupEntity for %@", v8, 0xCu);
      sub_22953EAE4(v9, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v9, -1, -1);
      MEMORY[0x22AAD4E50](v8, -1, -1);
    }

    v12 = v0[25];
    v11 = v0[26];
    v13 = v0[24];
    v14 = v0[21];
    v15 = v0[18];
    v16 = v0[19];

    (*(v16 + 8))(v14, v15);
    (*(v12 + 8))(v11, v13);
    goto LABEL_11;
  }

  v29 = __swift_project_boxed_opaque_existential_0((v0[16] + 112), *(v0[16] + 136))[6];
  v0[28] = v29;
  v30 = *(v29 + 16);
  v0[29] = v30;
  if (!v30)
  {

    (*(v0[25] + 8))(v0[26], v0[24]);
LABEL_11:

    v27 = v0[1];

    return v27();
  }

  v0[30] = 0;
  v31 = *(v29 + 56);

  v33 = __swift_project_boxed_opaque_existential_0((v32 + 32), v31);
  v34 = *v33;
  v0[31] = *v33;

  return MEMORY[0x2822009F8](sub_2295E7D40, v34, 0);
}

uint64_t sub_2295E7D40()
{
  v1 = v0[31];
  if (v1[29])
  {

    sub_22A4DDA7C();

    v1 = v0[31];
  }

  v2 = v0[22];
  v3 = v0[16];
  sub_2295C9C1C();
  __swift_project_boxed_opaque_existential_0(v1 + 19, v1[22]);
  sub_22A4DD98C();
  v4 = sub_22A4DD9DC();
  (*(*(v4 - 8) + 56))(v2, 0, 1, v4);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);

  sub_22A4DBAFC();

  sub_22953EAE4(v2, &unk_27D87D8F0, &qword_22A578D70);
  swift_beginAccess();
  sub_2295E90C8((v0 + 2), (v1 + 24), &qword_27D87EA00, &qword_22A579B80);
  swift_endAccess();

  return MEMORY[0x2822009F8](sub_2295E7F54, v3, 0);
}

uint64_t sub_2295E7F54()
{
  v1 = v0[30] + 1;
  if (v1 == v0[29])
  {
    v2 = v0[27];

    (*(v0[25] + 8))(v0[26], v0[24]);

    v3 = v0[1];

    return v3();
  }

  else
  {
    v0[30] = v1;
    v5 = __swift_project_boxed_opaque_existential_0((v0[28] + 40 * v1 + 32), *(v0[28] + 40 * v1 + 56));
    v6 = *v5;
    v0[31] = *v5;

    return MEMORY[0x2822009F8](sub_2295E7D40, v6, 0);
  }
}

uint64_t sub_2295E8074(uint64_t a1)
{
  v2[24] = a1;
  v2[25] = v1;
  v2[26] = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v2[27] = swift_task_alloc();
  v3 = sub_22A4DB21C();
  v2[28] = v3;
  v2[29] = *(v3 - 8);
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v4 = sub_22A4DD07C();
  v2[32] = v4;
  v2[33] = *(v4 - 8);
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2295E8208, v1, 0);
}

uint64_t sub_2295E8208()
{
  v50 = v0;
  sub_229541CB0(*(v0 + 208), &off_283CDDAE8);
  v1 = sub_22A4DD05C();
  v2 = sub_22A4DDCCC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_229538000, v1, v2, "Handling service group removed notification", v3, 2u);
    MEMORY[0x22AAD4E50](v3, -1, -1);
  }

  v4 = *(v0 + 280);
  v5 = *(v0 + 256);
  v6 = *(v0 + 264);

  v7 = *(v6 + 8);
  v7(v4, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DA18, &unk_22A579B60);
  sub_22A4DBA4C();
  v8 = sub_22A4DB20C();
  if (!v8)
  {
    goto LABEL_13;
  }

  v9 = v8;
  *(v0 + 152) = sub_22A4DD5EC();
  *(v0 + 160) = v10;
  sub_22A4DE18C();
  if (!*(v9 + 16) || (v11 = sub_2295402E8(v0 + 16), (v12 & 1) == 0))
  {

    sub_22954045C(v0 + 16);
LABEL_13:
    *(v0 + 96) = 0u;
    *(v0 + 112) = 0u;
    goto LABEL_14;
  }

  sub_2295404B0(*(v9 + 56) + 32 * v11, v0 + 96);
  sub_22954045C(v0 + 16);

  if (!*(v0 + 120))
  {
LABEL_14:
    sub_22953EAE4(v0 + 96, &unk_27D87DE60, &unk_22A57A960);
LABEL_15:
    v21 = *(v0 + 240);
    v20 = *(v0 + 248);
    v22 = *(v0 + 224);
    v23 = *(v0 + 232);
    sub_229541CB0(*(v0 + 208), &off_283CDDAE8);
    (*(v23 + 16))(v21, v20, v22);
    v24 = sub_22A4DD05C();
    v25 = sub_22A4DDCEC();
    v26 = os_log_type_enabled(v24, v25);
    v27 = *(v0 + 272);
    v28 = *(v0 + 248);
    v48 = *(v0 + 256);
    v30 = *(v0 + 232);
    v29 = *(v0 + 240);
    v31 = *(v0 + 224);
    if (v26)
    {
      v47 = v7;
      v32 = swift_slowAlloc();
      v46 = v27;
      v33 = swift_slowAlloc();
      v49 = v33;
      *v32 = 136315138;
      v45 = v25;
      *(v0 + 184) = sub_22A4DB20C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DA20, &unk_22A579B70);
      v34 = sub_22A4DDF7C();
      v35 = v31;
      v37 = v36;
      v38 = *(v30 + 8);
      v39 = v29;
      v40 = v35;
      v38(v39, v35);

      v41 = sub_2295A3E30(v34, v37, &v49);

      *(v32 + 4) = v41;
      _os_log_impl(&dword_229538000, v24, v45, "Did not find service group uuid. Could not handle service group removed notification %s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v33);
      MEMORY[0x22AAD4E50](v33, -1, -1);
      MEMORY[0x22AAD4E50](v32, -1, -1);

      v47(v46, v48);
      v38(v28, v40);
    }

    else
    {

      v42 = *(v30 + 8);
      v42(v29, v31);
      v7(v27, v48);
      v42(v28, v31);
    }

    goto LABEL_18;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_15;
  }

  v13 = *(v0 + 200);

  v14 = __swift_project_boxed_opaque_existential_0((v13 + 112), *(v13 + 136))[6];
  *(v0 + 288) = v14;
  v15 = *(v14 + 16);
  *(v0 + 296) = v15;
  if (v15)
  {
    *(v0 + 304) = 0;
    v16 = *(v14 + 56);

    v18 = __swift_project_boxed_opaque_existential_0((v17 + 32), v16);
    v19 = *v18;
    *(v0 + 312) = *v18;

    return MEMORY[0x2822009F8](sub_2295E8700, v19, 0);
  }

  (*(*(v0 + 232) + 8))(*(v0 + 248), *(v0 + 224));
LABEL_18:

  v43 = *(v0 + 8);

  return v43();
}

uint64_t sub_2295E8700()
{
  v1 = v0[39];
  if (v1[29])
  {

    sub_22A4DDA7C();

    v1 = v0[39];
  }

  v2 = v0[27];
  v3 = v0[25];
  sub_2295C9C1C();
  __swift_project_boxed_opaque_existential_0(v1 + 19, v1[22]);
  sub_22A4DD98C();
  v4 = sub_22A4DD9DC();
  (*(*(v4 - 8) + 56))(v2, 0, 1, v4);
  v0[10] = swift_getAssociatedTypeWitness();
  v0[11] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 7);

  sub_22A4DBAFC();

  sub_22953EAE4(v2, &unk_27D87D8F0, &qword_22A578D70);
  swift_beginAccess();
  sub_2295E90C8((v0 + 7), (v1 + 24), &qword_27D87EA00, &qword_22A579B80);
  swift_endAccess();

  return MEMORY[0x2822009F8](sub_2295E8914, v3, 0);
}

uint64_t sub_2295E8914()
{
  v1 = v0[38] + 1;
  if (v1 == v0[37])
  {

    (*(v0[29] + 8))(v0[31], v0[28]);

    v2 = v0[1];

    return v2();
  }

  else
  {
    v0[38] = v1;
    v4 = __swift_project_boxed_opaque_existential_0((v0[36] + 40 * v1 + 32), *(v0[36] + 40 * v1 + 56));
    v5 = *v4;
    v0[39] = *v4;

    return MEMORY[0x2822009F8](sub_2295E8700, v5, 0);
  }
}

void sub_2295E8A30(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_22A4DDF9C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_2295E8AF4(uint64_t a1)
{
  sub_2295E8B80(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_2295E8B80(uint64_t a1)
{
  if (!qword_281403850)
  {
    sub_22A4DB21C();
    v1 = sub_22A4DBA5C();
    if (!v2)
    {
      atomic_store(v1, &qword_281403850);
    }
  }
}

uint64_t sub_2295E8C48(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DA00, &qword_22A579B40);
  v26 = *(v4 - 8);
  v27 = v4;
  MEMORY[0x28223BE20](v4);
  v25 = &v24 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DA08, &qword_22A579B48);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DA10, &unk_22A579B50);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v24 - v10;
  v29[3] = &type metadata for HomeGraphIndexer.DefaultHomeGraphIndexerDataSource;
  v29[4] = &off_283CDDD78;
  v12 = swift_allocObject();
  v29[0] = v12;
  v13 = *(a1 + 16);
  *(v12 + 16) = *a1;
  *(v12 + 32) = v13;
  *(v12 + 48) = *(a1 + 32);
  *(v12 + 64) = *(a1 + 48);
  swift_defaultActor_initialize();
  v14 = MEMORY[0x277D84F90];
  *(a2 + 152) = 0;
  *(a2 + 160) = v14;
  v15 = OBJC_IVAR____TtC13HomeKitDaemon16HomeGraphIndexer_notificationContinuation;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D9F0, &qword_22A579AD0);
  v17 = *(*(v16 - 8) + 56);
  v17(a2 + v15, 1, 1, v16);
  v18 = OBJC_IVAR____TtC13HomeKitDaemon16HomeGraphIndexer_notificationStream;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D9F8, qword_22A579AD8);
  v20 = *(*(v19 - 8) + 56);
  v20(a2 + v18, 1, 1, v19);
  sub_22957F1C4(v29, a2 + 112);
  v17(v11, 1, 1, v16);
  v28 = v11;
  type metadata accessor for HomeGraphIndexer.NotificationType(0);
  (*(v26 + 104))(v25, *MEMORY[0x277D85778], v27);
  sub_22A4DDA6C();
  __swift_destroy_boxed_opaque_existential_0(v29);
  v20(v8, 0, 1, v19);
  v21 = OBJC_IVAR____TtC13HomeKitDaemon16HomeGraphIndexer_notificationStream;
  swift_beginAccess();
  sub_2295E90C8(v8, a2 + v21, &qword_27D87DA08, &qword_22A579B48);
  swift_endAccess();
  v22 = OBJC_IVAR____TtC13HomeKitDaemon16HomeGraphIndexer_notificationContinuation;
  swift_beginAccess();
  sub_2295E9058(v11, a2 + v22);
  swift_endAccess();
  sub_22953EAE4(v11, &qword_27D87DA10, &unk_22A579B50);
  return a2;
}

uint64_t sub_2295E9058(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DA10, &unk_22A579B50);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_2295E90C8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_2295E9130(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2295E9190(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2295E91D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2295E9240(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2295E92A8(uint64_t a1)
{
  v4 = *(type metadata accessor for HomeGraphIndexer.NotificationType(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + v6);
  v8 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_229586D38;

  return sub_2295D5638(a1, v1 + v5, v7, v8);
}

uint64_t sub_2295E93CC(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D9F8, qword_22A579AD8) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_229586D38;

  return sub_2295D4B38(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_2295E94DC(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DA18, &unk_22A579B60) - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_229569B30;

  return sub_2295D41A8(a1, v6, v7, v8, v9, v10, v1 + v5);
}

uint64_t sub_2295E95F4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_229569B30;

  return sub_2295D2900(a1, v5, v4);
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_2295E96CC(uint64_t *a1, int a2)
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

uint64_t sub_2295E9714(uint64_t result, int a2, int a3)
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

uint64_t sub_2295E978C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DA60, &qword_22A579E88);
  v0 = sub_22A4DD64C();
  MEMORY[0x22AAD08C0](v0);

  return 0x2E786F626C6F6F54;
}

unint64_t sub_2295E9808()
{
  result = qword_27D87DA68;
  if (!qword_27D87DA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87DA68);
  }

  return result;
}

unint64_t sub_2295E9860()
{
  result = qword_27D87DA70;
  if (!qword_27D87DA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87DA70);
  }

  return result;
}

unint64_t sub_2295E9938()
{
  result = qword_27D87DA78;
  if (!qword_27D87DA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87DA78);
  }

  return result;
}

uint64_t sub_2295E998C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[9] = a2;
  v5[10] = a3;
  v5[8] = a1;
  v6 = sub_22A4DCFCC();
  v5[13] = v6;
  v5[14] = *(v6 - 8);
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2295E9A60, 0, 0);
}

uint64_t sub_2295E9A60()
{
  if (qword_281402D58 != -1)
  {
    swift_once();
  }

  v1 = sub_22A4DCFFC();
  __swift_project_value_buffer(v1, qword_2814050D0);
  sub_22A4DCFBC();
  v2 = sub_22A4DCFEC();
  v3 = sub_22A4DDE0C();
  if (sub_22A4DDF5C())
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = sub_22A4DCFAC();
    _os_signpost_emit_with_name_impl(&dword_229538000, v2, v3, v5, "SetPersonalContentSettingIntent.perform.signpost", "", v4, 2u);
    MEMORY[0x22AAD4E50](v4, -1, -1);
  }

  v6 = *(v0 + 120);
  v7 = *(v0 + 128);
  v8 = *(v0 + 104);
  v9 = *(v0 + 112);

  (*(v9 + 16))(v6, v7, v8);
  sub_22A4DD03C();
  swift_allocObject();
  *(v0 + 136) = sub_22A4DD02C();
  (*(v9 + 8))(v7, v8);
  sub_22A4DB05C();
  v10 = *(v0 + 16);
  v11 = *(v0 + 24);
  *(v0 + 144) = v11;
  sub_22A4DB05C();
  v12 = *(v0 + 32);
  v13 = *(v0 + 40);
  *(v0 + 152) = v13;
  sub_22A4DB05C();
  v14 = *(v0 + 48);
  v15 = *(v0 + 56);
  *(v0 + 160) = v15;
  sub_22A4DB05C();
  v16 = *(v0 + 184);
  v17 = swift_task_alloc();
  *(v0 + 168) = v17;
  *v17 = v0;
  v17[1] = sub_2295E9CD0;

  return sub_2295EB030(v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_2295E9CD0(char a1)
{
  v4 = *v2;
  *(*v2 + 176) = v1;

  if (v1)
  {
    v5 = sub_2295E9EE8;
  }

  else
  {

    *(v4 + 186) = a1 & 1;
    v5 = sub_2295E9E18;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2295E9E18()
{
  v1 = *(v0 + 136);
  *(v0 + 185) = *(v0 + 186);
  sub_2295ECBD4();
  sub_22A4DB04C();
  sub_2295E9FA4("SetPersonalContentSettingIntent.perform.signpost", 48, 2, v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2295E9EE8()
{
  v1 = *(v0 + 136);

  sub_2295E9FA4("SetPersonalContentSettingIntent.perform.signpost", 48, 2, v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2295E9FA4(const char *a1, uint64_t a2, int a3, uint64_t a4)
{
  v20 = a3;
  v5 = sub_22A4DD00C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22A4DCFCC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281402D58 != -1)
  {
    swift_once();
  }

  v13 = sub_22A4DCFFC();
  __swift_project_value_buffer(v13, qword_2814050D0);
  v14 = sub_22A4DCFEC();
  sub_22A4DD01C();
  v19 = sub_22A4DDDFC();
  result = sub_22A4DDF5C();
  if ((result & 1) == 0)
  {
    goto LABEL_15;
  }

  if ((v20 & 1) == 0)
  {
    if (a1)
    {
LABEL_11:

      sub_22A4DD04C();

      if ((*(v6 + 88))(v8, v5) == *MEMORY[0x277D85B00])
      {
        v16 = "[Error] Interval already ended";
      }

      else
      {
        (*(v6 + 8))(v8, v5);
        v16 = "";
      }

      v17 = swift_slowAlloc();
      *v17 = 0;
      v18 = sub_22A4DCFAC();
      _os_signpost_emit_with_name_impl(&dword_229538000, v14, v19, v18, a1, v16, v17, 2u);
      MEMORY[0x22AAD4E50](v17, -1, -1);
LABEL_15:

      return (*(v10 + 8))(v12, v9);
    }

    __break(1u);
  }

  if (a1 >> 32)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if ((a1 & 0xFFFFF800) != 0xD800)
  {
    if (a1 >> 16 <= 0x10)
    {
      a1 = &v21;
      goto LABEL_11;
    }

    goto LABEL_17;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_2295EA2B0(uint64_t a1)
{
  v4 = *v1;
  v5 = v1[1];
  v7 = v1[2];
  v6 = v1[3];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_229569B30;

  return sub_2295E998C(a1, v4, v5, v7, v6);
}

uint64_t sub_2295EA370@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2295EC5B0();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return result;
}

uint64_t sub_2295EA39C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DA90, &qword_22A57A078);
  v0 = sub_22A4DD64C();
  MEMORY[0x22AAD08C0](v0);

  return 0x2E786F626C6F6F54;
}

uint64_t sub_2295EA414(uint64_t a1)
{
  v2 = sub_2295E9938();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t sub_2295EA450(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_2295EA498(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_2295EA4E8()
{
  result = qword_27D87DA80;
  if (!qword_27D87DA80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D87DA88, &qword_22A57A070);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87DA80);
  }

  return result;
}

char *sub_2295EA54C(void *a1, void *a2, int a3)
{
  LODWORD(v97) = a3;
  v96 = a1;
  v5 = sub_22A4DD07C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v90 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v90 - v13;
  v98 = sub_22A4DB7DC();
  v15 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v17 = &v90 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a2 isRestrictedGuest])
  {
    sub_22A4DD5EC();
    sub_2295EA39C();
    sub_22A4DD06C();
    v18 = sub_22A4DD05C();
    v19 = sub_22A4DDCEC();
    if (!os_log_type_enabled(v18, v19))
    {
      v21 = 15;
      v12 = v9;
LABEL_15:

      (*(v6 + 8))(v12, v5);
      sub_2295ECC28();
      swift_allocError();
      *v88 = v21;
      swift_willThrow();
      return v9;
    }

    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_229538000, v18, v19, "Personal content settings does not exist for restricted guests.", v20, 2u);
    v21 = 15;
    v12 = v9;
LABEL_9:
    MEMORY[0x22AAD4E50](v20, -1, -1);
    goto LABEL_15;
  }

  v99 = v15;
  v22 = [a2 assistantAccessControl];
  if (!v22)
  {
    sub_22A4DD5EC();
    sub_2295EA39C();
    sub_22A4DD06C();
    v54 = a2;
    v18 = sub_22A4DD05C();
    v9 = sub_22A4DDCEC();

    if (!os_log_type_enabled(v18, v9))
    {
      v21 = 44;
      goto LABEL_15;
    }

    v20 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    *v20 = 138412290;
    *(v20 + 4) = v54;
    *v55 = v54;
    v56 = v54;
    _os_log_impl(&dword_229538000, v18, v9, "Could not find assistant access control for user %@", v20, 0xCu);
    sub_22953EAE4(v55, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v55, -1, -1);
    v21 = 44;
    goto LABEL_9;
  }

  v23 = v22;
  v92 = v14;
  v93 = v3;
  v94 = v6;
  v95 = v5;
  v24 = sub_22A4DD5EC();
  v26 = v25;
  v91 = v23;
  v27 = encodeRootObject();
  v28 = sub_22A4DB62C();
  v30 = v29;

  v104 = MEMORY[0x277CC9318];
  v102 = v28;
  v103 = v30;
  sub_229543C58(&v102, v100);
  v31 = MEMORY[0x277D84F98];
  LOBYTE(v28) = swift_isUniquelyReferenced_nonNull_native();
  v105 = v31;
  v32 = __swift_mutable_project_boxed_opaque_existential_0(v100, v101);
  MEMORY[0x28223BE20](v32);
  v34 = (&v90 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v35 + 16))(v34);
  sub_2297FF398(*v34, v34[1], v24, v26, v28, &v105);
  __swift_destroy_boxed_opaque_existential_0(v100);

  v36 = v105;
  v37 = sub_22A4DD5EC();
  v39 = v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E400, "ll\b");
  v104 = v40;
  v102 = MEMORY[0x277D84F90];
  sub_229543C58(&v102, v100);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v105 = v36;
  v42 = __swift_mutable_project_boxed_opaque_existential_0(v100, v101);
  MEMORY[0x28223BE20](v42);
  v44 = (&v90 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v45 + 16))(v44);
  sub_2297FEB3C(*v44, v37, v39, isUniquelyReferenced_nonNull_native, &v105);
  __swift_destroy_boxed_opaque_existential_0(v100);

  v46 = v105;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8814D0, &unk_22A578030);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_22A576180;
  v48 = [v96 uuid];
  sub_22A4DB79C();

  v49 = sub_22A4DB76C();
  v51 = v50;
  v52 = v98;
  v53 = *(v99 + 8);
  v99 += 8;
  v53(v17, v98);
  *(v47 + 32) = v49;
  *(v47 + 40) = v51;
  v97 = sub_22A4DD5EC();
  v58 = v57;
  v104 = v40;
  v102 = v47;
  sub_229543C58(&v102, v100);
  v59 = swift_isUniquelyReferenced_nonNull_native();
  v105 = v46;
  v60 = __swift_mutable_project_boxed_opaque_existential_0(v100, v101);
  MEMORY[0x28223BE20](v60);
  v62 = (&v90 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v63 + 16))(v62);
  sub_2297FEB3C(*v62, v97, v58, v59, &v105);
  __swift_destroy_boxed_opaque_existential_0(v100);

  v64 = v105;
  v65 = sub_22A4DD5EC();
  v67 = v66;
  v68 = [a2 uuid];
  sub_22A4DB79C();

  v69 = sub_22A4DB76C();
  v71 = v70;
  v53(v17, v52);
  v104 = MEMORY[0x277D837D0];
  v102 = v69;
  v103 = v71;
  sub_229543C58(&v102, v100);
  v72 = swift_isUniquelyReferenced_nonNull_native();
  v105 = v64;
  v73 = __swift_mutable_project_boxed_opaque_existential_0(v100, v101);
  MEMORY[0x28223BE20](v73);
  v75 = (&v90 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v76 + 16))(v75);
  sub_2297FE940(*v75, v75[1], v65, v67, v72, &v105);
  __swift_destroy_boxed_opaque_existential_0(v100);

  v9 = v105;
  sub_22A4DD5EC();
  sub_2295EA39C();
  v77 = v92;
  sub_22A4DD06C();
  v78 = sub_22A4DD05C();
  v79 = sub_22A4DDCCC();
  v80 = os_log_type_enabled(v78, v79);
  v81 = v94;
  if (v80)
  {
    v82 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    v102 = v83;
    *v82 = 136315138;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
    v84 = sub_22A4DD4AC();
    v86 = v85;

    v87 = sub_2295A3E30(v84, v86, &v102);

    *(v82 + 4) = v87;
    _os_log_impl(&dword_229538000, v78, v79, "Prepared the Personal content message payload: %s", v82, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v83);
    MEMORY[0x22AAD4E50](v83, -1, -1);
    MEMORY[0x22AAD4E50](v82, -1, -1);
  }

  else
  {
  }

  (*(v81 + 8))(v77, v95);
  return v9;
}

uint64_t sub_2295EB030(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 25) = a7;
  *(v7 + 64) = a5;
  *(v7 + 72) = a6;
  *(v7 + 48) = a3;
  *(v7 + 56) = a4;
  *(v7 + 32) = a1;
  *(v7 + 40) = a2;
  v8 = sub_22A4DD07C();
  *(v7 + 80) = v8;
  *(v7 + 88) = *(v8 - 8);
  *(v7 + 96) = swift_task_alloc();
  *(v7 + 104) = swift_task_alloc();
  *(v7 + 112) = swift_task_alloc();
  *(v7 + 120) = swift_task_alloc();
  *(v7 + 128) = swift_task_alloc();
  *(v7 + 136) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D2A0, &unk_22A578BD0);
  *(v7 + 144) = swift_task_alloc();
  v9 = sub_22A4DB7DC();
  *(v7 + 152) = v9;
  *(v7 + 160) = *(v9 - 8);
  *(v7 + 168) = swift_task_alloc();
  *(v7 + 176) = swift_task_alloc();
  *(v7 + 184) = swift_task_alloc();
  *(v7 + 192) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2295EB1F0, 0, 0);
}

uint64_t sub_2295EB1F0()
{
  v125 = v0;
  v1 = [objc_opt_self() driver];
  v2 = [v1 homeManager];
  *(v0 + 200) = v2;

  v3 = [v2 homes];
  if (!v3)
  {
    __break(1u);
LABEL_66:
    __break(1u);
    return MEMORY[0x2822007B8](v3, v4, v5, v6, v7, v8, v9, v10);
  }

  v11 = v3;
  sub_229562F68(0, &qword_2814017B0, off_278666198);
  v12 = sub_22A4DD83C();

  v122 = v12;
  v118 = v2;
  if (v12 >> 62)
  {
LABEL_52:
    v13 = sub_22A4DE0EC();
    if (v13)
    {
LABEL_4:
      v14 = 0;
      v121 = *(v0 + 160) + 8;
      while (1)
      {
        if ((v122 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x22AAD13F0](v14, v122);
        }

        else
        {
          if (v14 >= *((v122 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_49;
          }

          v15 = *(v122 + 8 * v14 + 32);
        }

        *(v0 + 208) = v15;
        v16 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          __break(1u);
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
          goto LABEL_52;
        }

        v17 = *(v0 + 192);
        v18 = *(v0 + 152);
        v19 = *(v0 + 32);
        v20 = *(v0 + 40);
        v123 = v15;
        v21 = [v15 spiClientIdentifier];
        sub_22A4DB79C();

        v22 = sub_22A4DB76C();
        v24 = v23;
        v25 = *v121;
        *(v0 + 216) = *v121;
        *(v0 + 224) = v121 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v120 = v25;
        v25(v17, v18);
        if (v22 == v19 && v24 == v20)
        {
          break;
        }

        v26 = sub_22A4DE60C();

        if (v26)
        {
          goto LABEL_16;
        }

        ++v14;
        if (v16 == v13)
        {
          goto LABEL_53;
        }
      }

LABEL_16:

      v3 = [v123 users];
      if (v3)
      {
        v27 = v3;
        sub_229562F68(0, &qword_281401790, off_278666348);
        v28 = sub_22A4DD83C();

        if (v28 >> 62)
        {
          v29 = sub_22A4DE0EC();
          if (v29)
          {
            goto LABEL_19;
          }
        }

        else
        {
          v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v29)
          {
LABEL_19:
            v30 = 0;
            v119 = v29;
            while (1)
            {
              if ((v28 & 0xC000000000000001) != 0)
              {
                v31 = MEMORY[0x22AAD13F0](v30, v28);
              }

              else
              {
                if (v30 >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_51;
                }

                v31 = *(v28 + 8 * v30 + 32);
              }

              *(v0 + 232) = v31;
              v32 = v30 + 1;
              if (__OFADD__(v30, 1))
              {
                goto LABEL_50;
              }

              v33 = *(v0 + 184);
              v34 = *(v0 + 152);
              v36 = *(v0 + 48);
              v35 = *(v0 + 56);
              v122 = v31;
              v37 = [v31 spiClientIdentifier];
              sub_22A4DB79C();

              v38 = sub_22A4DB76C();
              v40 = v39;
              v120(v33, v34);
              if (v38 == v36 && v40 == v35)
              {
                break;
              }

              v41 = sub_22A4DE60C();

              if (v41)
              {
                goto LABEL_31;
              }

              ++v30;
              if (v32 == v119)
              {
                goto LABEL_57;
              }
            }

LABEL_31:
            v42 = *(v0 + 152);
            v43 = *(v0 + 160);
            v44 = *(v0 + 144);

            sub_22A4DB75C();
            if ((*(v43 + 48))(v44, 1, v42) == 1)
            {
              sub_22953EAE4(*(v0 + 144), &unk_27D87D2A0, &unk_22A578BD0);
LABEL_39:
              sub_22A4DD5EC();
              sub_2295EA39C();
              sub_22A4DD06C();

              v63 = sub_22A4DD05C();
              v64 = sub_22A4DDCEC();

              v65 = os_log_type_enabled(v63, v64);
              v66 = *(v0 + 112);
              v68 = *(v0 + 80);
              v67 = *(v0 + 88);
              if (v65)
              {
                v70 = *(v0 + 64);
                v69 = *(v0 + 72);
                v71 = swift_slowAlloc();
                v72 = swift_slowAlloc();
                v124[0] = v72;
                *v71 = 136315138;
                *(v71 + 4) = sub_2295A3E30(v70, v69, v124);
                _os_log_impl(&dword_229538000, v63, v64, "Could not find the accessory with %s", v71, 0xCu);
                __swift_destroy_boxed_opaque_existential_0(v72);
                MEMORY[0x22AAD4E50](v72, -1, -1);
                MEMORY[0x22AAD4E50](v71, -1, -1);
              }

              (*(v67 + 8))(v66, v68);
              sub_2295ECC28();
              swift_allocError();
              *v73 = 42;
              swift_willThrow();

              goto LABEL_60;
            }

            v45 = *(v0 + 176);
            (*(*(v0 + 160) + 32))(v45, *(v0 + 144), *(v0 + 152));
            sub_2295EE028(v45);
            *(v0 + 240) = v46;
            if (!v46)
            {
              v120(*(v0 + 176), *(v0 + 152));
              goto LABEL_39;
            }

            v47 = v46;
            objc_opt_self();
            v48 = swift_dynamicCastObjCClass();
            *(v0 + 248) = *MEMORY[0x277D0F1A8];
            sub_22A4DD5EC();
            if (v48)
            {
              v49 = v47;
              sub_2295EA39C();
              sub_22A4DD06C();
              v50 = v49;
              v51 = sub_22A4DD05C();
              v52 = sub_22A4DDCCC();

              if (os_log_type_enabled(v51, v52))
              {
                v53 = *(v0 + 25);
                v54 = swift_slowAlloc();
                v55 = swift_slowAlloc();
                *v54 = 138412546;
                *(v54 + 4) = v48;
                *v55 = v48;
                *(v54 + 12) = 1024;
                *(v54 + 14) = v53;
                v56 = v50;
                _os_log_impl(&dword_229538000, v51, v52, "Going to change personal content settings for %@ to %{BOOL}d", v54, 0x12u);
                sub_22953EAE4(v55, &qword_27D87D7D0, &unk_22A578D90);
                MEMORY[0x22AAD4E50](v55, -1, -1);
                MEMORY[0x22AAD4E50](v54, -1, -1);
              }

              v57 = *(v0 + 136);
              v59 = *(v0 + 80);
              v58 = *(v0 + 88);
              v60 = *(v0 + 25);

              v61 = *(v58 + 8);
              *(v0 + 256) = v61;
              *(v0 + 264) = (v58 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
              v61(v57, v59);
              v62 = sub_2295EA54C(v48, v122, v60);
              *(v0 + 272) = v62;
              v86 = *(v0 + 168);
              v87 = v62;
              v88 = sub_22A4DD5EC();
              v90 = v89;
              *(v0 + 280) = v89;
              v91 = [v123 messageTargetUUID];
              sub_22A4DB79C();

              v92 = swift_task_alloc();
              *(v0 + 288) = v92;
              v92[2] = v88;
              v92[3] = v90;
              v92[4] = v86;
              v92[5] = v87;
              v92[6] = v123;
              v93 = swift_task_alloc();
              *(v0 + 296) = v93;
              v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DAD0, &qword_22A57A0C0);
              *v93 = v0;
              v93[1] = sub_2295EC054;
              v8 = sub_2295ECC7C;
              v3 = (v0 + 16);
              v7 = 0x800000022A58C610;
              v4 = 0;
              v5 = 0;
              v6 = 0xD00000000000002ALL;
              v9 = v92;

              return MEMORY[0x2822007B8](v3, v4, v5, v6, v7, v8, v9, v10);
            }

            sub_2295EA39C();
            sub_22A4DD06C();
            v74 = v47;
            v75 = sub_22A4DD05C();
            v76 = sub_22A4DDCEC();

            if (os_log_type_enabled(v75, v76))
            {
              v77 = swift_slowAlloc();
              v78 = swift_slowAlloc();
              *v77 = 138412290;
              *(v77 + 4) = v74;
              *v78 = v47;
              v79 = v74;
              _os_log_impl(&dword_229538000, v75, v76, "Cannot change personal content settings for non apple media accessory: %@", v77, 0xCu);
              sub_22953EAE4(v78, &qword_27D87D7D0, &unk_22A578D90);
              MEMORY[0x22AAD4E50](v78, -1, -1);
              MEMORY[0x22AAD4E50](v77, -1, -1);
            }

            v80 = *(v0 + 176);
            v81 = *(v0 + 152);
            v82 = *(v0 + 120);
            v84 = *(v0 + 80);
            v83 = *(v0 + 88);

            (*(v83 + 8))(v82, v84);
            sub_2295ECC28();
            swift_allocError();
            *v85 = 45;
            swift_willThrow();

            v120(v80, v81);
            goto LABEL_62;
          }
        }

LABEL_57:

        sub_22A4DD5EC();
        sub_2295EA39C();
        sub_22A4DD06C();

        v105 = sub_22A4DD05C();
        v106 = sub_22A4DDCEC();

        v107 = os_log_type_enabled(v105, v106);
        v108 = *(v0 + 104);
        v110 = *(v0 + 80);
        v109 = *(v0 + 88);
        if (v107)
        {
          v112 = *(v0 + 48);
          v111 = *(v0 + 56);
          v113 = swift_slowAlloc();
          v114 = swift_slowAlloc();
          v124[0] = v114;
          *v113 = 136315138;
          *(v113 + 4) = sub_2295A3E30(v112, v111, v124);
          _os_log_impl(&dword_229538000, v105, v106, "Could not find the user with %s", v113, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v114);
          MEMORY[0x22AAD4E50](v114, -1, -1);
          MEMORY[0x22AAD4E50](v113, -1, -1);
        }

        (*(v109 + 8))(v108, v110);
        sub_2295ECC28();
        swift_allocError();
        *v115 = 41;
        swift_willThrow();
LABEL_60:

        goto LABEL_61;
      }

      goto LABEL_66;
    }
  }

  else
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13)
    {
      goto LABEL_4;
    }
  }

LABEL_53:

  sub_22A4DD5EC();
  sub_2295EA39C();
  sub_22A4DD06C();

  v94 = sub_22A4DD05C();
  v95 = sub_22A4DDCEC();

  v96 = os_log_type_enabled(v94, v95);
  v98 = *(v0 + 88);
  v97 = *(v0 + 96);
  v99 = *(v0 + 80);
  if (v96)
  {
    v101 = *(v0 + 32);
    v100 = *(v0 + 40);
    v102 = swift_slowAlloc();
    v103 = swift_slowAlloc();
    v124[0] = v103;
    *v102 = 136315138;
    *(v102 + 4) = sub_2295A3E30(v101, v100, v124);
    _os_log_impl(&dword_229538000, v94, v95, "Could not find the home with %s", v102, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v103);
    MEMORY[0x22AAD4E50](v103, -1, -1);
    MEMORY[0x22AAD4E50](v102, -1, -1);
  }

  (*(v98 + 8))(v97, v99);
  sub_2295ECC28();
  swift_allocError();
  *v104 = 40;
  swift_willThrow();
LABEL_61:

LABEL_62:

  v116 = *(v0 + 8);

  return v116(0);
}

uint64_t sub_2295EC054()
{

  return MEMORY[0x2822009F8](sub_2295EC1AC, 0, 0);
}

uint64_t sub_2295EC1AC()
{
  v36 = v0;
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  (*(v0 + 216))(*(v0 + 168), *(v0 + 152));
  if (v2 == 1)
  {
    v4 = *(v0 + 232);
    v3 = *(v0 + 240);
    v5 = *(v0 + 216);
    v6 = v1;
    v8 = *(v0 + 200);
    v7 = *(v0 + 208);
    v9 = *(v0 + 176);
    v10 = *(v0 + 152);
    swift_willThrow();
    v11 = v6;

    sub_2295ECC8C(v6, 1);
    v5(v9, v10);

    v12 = *(v0 + 8);
    v13 = 0;
  }

  else
  {
    sub_22A4DD5EC();
    sub_2295EA39C();
    sub_22A4DD06C();

    v14 = sub_22A4DD05C();
    v15 = sub_22A4DDCCC();
    sub_2295ECC8C(v1, 0);
    v16 = os_log_type_enabled(v14, v15);
    v17 = *(v0 + 240);
    v18 = *(v0 + 216);
    v20 = *(v0 + 200);
    v19 = *(v0 + 208);
    v33 = *(v0 + 176);
    v34 = *(v0 + 256);
    v31 = *(v0 + 128);
    v32 = *(v0 + 152);
    v29 = *(v0 + 232);
    v30 = *(v0 + 80);
    if (v16)
    {
      v27 = *(v0 + 25);
      v28 = *(v0 + 216);
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v35 = v22;
      *v21 = 136315394;
      v23 = sub_22A4DD4AC();
      v25 = sub_2295A3E30(v23, v24, &v35);

      *(v21 + 4) = v25;
      *(v21 + 12) = 1024;
      *(v21 + 14) = v27;
      _os_log_impl(&dword_229538000, v14, v15, "Personal content settings was updated successfully. %s with enabled: %{BOOL}d", v21, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x22AAD4E50](v22, -1, -1);
      MEMORY[0x22AAD4E50](v21, -1, -1);

      sub_2295ECC8C(v1, 0);
      v34(v31, v30);
      v28(v33, v32);
    }

    else
    {

      sub_2295ECC8C(v1, 0);
      v34(v31, v30);
      v18(v33, v32);
    }

    v12 = *(v0 + 8);
    v13 = 1;
  }

  return v12(v13);
}

uint64_t sub_2295EC5B0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DA98, &qword_22A57A080);
  MEMORY[0x28223BE20](v0 - 8);
  v37 = &v32 - v1;
  v48 = sub_22A4DB08C();
  v2 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v50 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DAA0, &qword_22A57A088);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v32 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DAA8, &qword_22A57A090);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v32 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DAB0, &qword_22A57A098);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v32 - v11;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DAB8, &qword_22A57A0A0);
  sub_22A4DB3FC();
  v42 = sub_22A4DB40C();
  v13 = *(v42 - 8);
  v34 = *(v13 + 56);
  v49 = v13 + 56;
  v34(v12, 0, 1, v42);
  v46 = sub_22A4DD59C();
  v51 = 0;
  v52 = 0;
  v14 = *(v46 - 8);
  v15 = *(v14 + 56);
  v44 = v14 + 56;
  v45 = v15;
  v15(v9, 1, 1, v46);
  v16 = sub_22A4DB03C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 56);
  v41 = v17 + 56;
  v47 = v16;
  v18(v6, 1, 1, v16);
  v33 = v18;
  v40 = *MEMORY[0x277CBA308];
  v19 = *(v2 + 104);
  v39 = v2 + 104;
  v43 = v19;
  v20 = v48;
  v19(v50);
  v36 = sub_22A4DB06C();
  sub_22A4DB3FC();
  v21 = v42;
  v22 = v34;
  v34(v12, 0, 1, v42);
  v51 = 0;
  v52 = 0;
  v45(v9, 1, 1, v46);
  v23 = v6;
  v18(v6, 1, 1, v16);
  v24 = v40;
  v43(v50, v40, v20);
  v35 = sub_22A4DB06C();
  sub_22A4DB3FC();
  v22(v12, 0, 1, v21);
  v51 = 0;
  v52 = 0;
  v45(v9, 1, 1, v46);
  v25 = v33;
  v33(v23, 1, 1, v47);
  v26 = v50;
  v27 = v24;
  v28 = v48;
  v29 = v43;
  v43(v50, v27, v48);
  sub_22A4DB06C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DAC0, &qword_22A57A0A8);
  sub_22A4DB3FC();
  v22(v12, 0, 1, v42);
  LOBYTE(v51) = 2;
  v30 = sub_22A4DD89C();
  (*(*(v30 - 8) + 56))(v37, 1, 1, v30);
  v25(v23, 1, 1, v47);
  v29(v26, v40, v28);
  sub_22A4DB07C();
  return v36;
}

unint64_t sub_2295ECBD4()
{
  result = qword_281401CE8;
  if (!qword_281401CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281401CE8);
  }

  return result;
}

unint64_t sub_2295ECC28()
{
  result = qword_27D87DAC8;
  if (!qword_27D87DAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87DAC8);
  }

  return result;
}

void sub_2295ECC8C(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_2295ECC98()
{
  v0 = sub_22A4DD07C();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_22A4DCFFC();
  __swift_allocate_value_buffer(v1, qword_2814050D0);
  __swift_project_value_buffer(v1, qword_2814050D0);
  sub_22A4DD5EC();
  sub_2295ED93C();
  sub_22A4DD06C();
  return sub_22A4DCFDC();
}

uint64_t sub_2295ECD8C@<X0>(void **a1@<X0>, char *a3@<X8>)
{
  v5 = sub_22A4DB7DC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  result = [v9 isHidden];
  if (result)
  {
    v11 = 2;
  }

  else
  {
    v12 = [v9 spiClientIdentifier];
    sub_22A4DB79C();

    v13 = sub_22A4DB78C();
    result = (*(v6 + 8))(v8, v5);
    v11 = v13 & 1;
  }

  *a3 = v11;
  return result;
}

uint64_t sub_2295ECEC8@<X0>(id *a1@<X0>, _BYTE *a3@<X8>)
{
  v5 = sub_22A4DB7DC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [*a1 uniqueIdentifier];
  sub_22A4DB79C();

  v10 = sub_22A4DB78C();
  result = (*(v6 + 8))(v8, v5);
  *a3 = v10 & 1;
  return result;
}

void sub_2295ECFE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v31 = a1;
  v32 = a6;
  v28 = a5;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DAD8, &qword_22A57A0C8);
  v6 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v29 = &v26 - v7;
  v27 = sub_22A4DD5AC();
  v8 = objc_allocWithZone(MEMORY[0x277D0F820]);
  v9 = sub_22A4DB77C();
  v10 = [v8 initWithTarget_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D080, &qword_22A57CF50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22A576180;
  *(inited + 32) = sub_22A4DD5EC();
  *(inited + 40) = v12;
  *(inited + 72) = MEMORY[0x277D839B0];
  *(inited + 48) = 1;
  sub_22956AC5C(inited);
  swift_setDeallocating();
  sub_2295ED9B4(inited + 32);
  sub_22956AC5C(MEMORY[0x277D84F90]);
  v13 = objc_allocWithZone(MEMORY[0x277D0F818]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
  v14 = sub_22A4DD47C();

  v15 = sub_22A4DD47C();

  v16 = sub_22A4DD47C();
  v17 = v27;
  v18 = [v13 initWithName:v27 qualityOfService:25 destination:v10 userInfo:v14 headers:v15 payload:v16];

  v20 = v29;
  v19 = v30;
  (*(v6 + 16))(v29, v31, v30);
  v21 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v22 = swift_allocObject();
  (*(v6 + 32))(v22 + v21, v20, v19);
  aBlock[4] = sub_2295EDA1C;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2297986BC;
  aBlock[3] = &block_descriptor_6;
  v23 = _Block_copy(aBlock);

  [v18 setResponseHandler_];
  _Block_release(v23);
  v24 = [v32 msgDispatcher];
  if (v24)
  {
    v25 = v24;
    [v24 dispatchMessage_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2295ED394(void *a1, unint64_t a2)
{
  v4 = sub_22A4DCFCC();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v23 - v9;
  if (qword_281402D58 != -1)
  {
    swift_once();
  }

  v11 = sub_22A4DCFFC();
  __swift_project_value_buffer(v11, qword_2814050D0);
  sub_22A4DCFBC();
  v12 = sub_22A4DCFEC();
  v13 = sub_22A4DDE0C();
  if (sub_22A4DDF5C())
  {
    v14 = swift_slowAlloc();
    v24 = a1;
    v15 = v14;
    *v14 = 0;
    v16 = sub_22A4DCFAC();
    _os_signpost_emit_with_name_impl(&dword_229538000, v12, v13, v16, "dispatchMessage.toolbox.signpost", "", v15, 2u);
    a1 = v24;
    MEMORY[0x22AAD4E50](v15, -1, -1);
  }

  (*(v5 + 16))(v8, v10, v4);
  sub_22A4DD03C();
  swift_allocObject();
  v17 = sub_22A4DD02C();
  (*(v5 + 8))(v10, v4);
  if (a1)
  {
    v25 = a1;
    v26 = 1;
    v18 = a1;
  }

  else
  {
    if (a2)
    {
      v19 = a2;
    }

    else
    {
      v19 = sub_22956AC5C(MEMORY[0x277D84F90]);
    }

    sub_2296F7AE8(v19);
    v21 = v20;

    v25 = v21;
    v26 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DAD8, &qword_22A57A0C8);
  sub_22A4DD8FC();
  sub_2295ED660("dispatchMessage.toolbox.signpost", 32, 2, v17);
}

uint64_t sub_2295ED660(const char *a1, uint64_t a2, int a3, uint64_t a4)
{
  v20 = a3;
  v5 = sub_22A4DD00C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22A4DCFCC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281402D58 != -1)
  {
    swift_once();
  }

  v13 = sub_22A4DCFFC();
  __swift_project_value_buffer(v13, qword_2814050D0);
  v14 = sub_22A4DCFEC();
  sub_22A4DD01C();
  v19 = sub_22A4DDDFC();
  result = sub_22A4DDF5C();
  if ((result & 1) == 0)
  {
    goto LABEL_15;
  }

  if ((v20 & 1) == 0)
  {
    if (a1)
    {
LABEL_11:

      sub_22A4DD04C();

      if ((*(v6 + 88))(v8, v5) == *MEMORY[0x277D85B00])
      {
        v16 = "[Error] Interval already ended";
      }

      else
      {
        (*(v6 + 8))(v8, v5);
        v16 = "";
      }

      v17 = swift_slowAlloc();
      *v17 = 0;
      v18 = sub_22A4DCFAC();
      _os_signpost_emit_with_name_impl(&dword_229538000, v14, v19, v18, a1, v16, v17, 2u);
      MEMORY[0x22AAD4E50](v17, -1, -1);
LABEL_15:

      return (*(v10 + 8))(v12, v9);
    }

    __break(1u);
  }

  if (a1 >> 32)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if ((a1 & 0xFFFFF800) != 0xD800)
  {
    if (a1 >> 16 <= 0x10)
    {
      a1 = &v21;
      goto LABEL_11;
    }

    goto LABEL_17;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_2295ED93C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87DAE0, &qword_22A57A0F8);
  v0 = sub_22A4DD64C();
  MEMORY[0x22AAD08C0](v0);

  return 0x2E786F626C6F6F54;
}

uint64_t sub_2295ED9B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87DE50, &qword_22A577CD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2295EDA1C(void *a1, unint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DAD8, &qword_22A57A0C8);

  return sub_2295ED394(a1, a2);
}

void *sub_2295EDAA8(uint64_t a1, void *a2)
{
  v4 = sub_22A4DB7DC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a2 spiClientIdentifier];
  sub_22A4DB79C();

  LOBYTE(v8) = sub_22A4DB78C();
  v9 = *(v5 + 8);
  v9(v7, v4);
  if (v8)
  {
    goto LABEL_26;
  }

  v10 = [a2 services];
  sub_229562F68(0, &unk_27D87D360, off_278666310);
  v11 = sub_22A4DD83C();

  MEMORY[0x28223BE20](v12);
  v50[-2] = a1;
  v13 = sub_229716318(sub_2295EEFC8, &v50[-4], v11);

  v14 = *(v13 + 2);
  if (v14)
  {
    v15 = (v13 + 32);
    while (v14)
    {
      v16 = *v15++;
      --v14;
      if (v16 == 1)
      {
LABEL_25:

        goto LABEL_26;
      }
    }
  }

  v17 = [a2 mediaProfile];
  if (v17)
  {
    v18 = v17;
    v19 = [v17 uniqueIdentifier];
    sub_22A4DB79C();

    LOBYTE(v19) = sub_22A4DB78C();
    v9(v7, v4);
    if (v19)
    {
      goto LABEL_26;
    }
  }

  v20 = [a2 cameraProfiles];
  sub_229562F68(0, &qword_27D87D938, off_278666080);
  sub_22959E62C(&qword_27D881EF0, &qword_27D87D938, off_278666080);
  v21 = sub_22A4DDB6C();

  MEMORY[0x28223BE20](v22);
  v50[-2] = a1;
  sub_2297164E4(sub_2295EF0A0, &v50[-4], v21);
  v24 = v23;

  v25 = *(v24 + 16);
  if (v25)
  {
    v26 = (v24 + 32);
    while (v25)
    {
      v27 = *v26++;
      --v25;
      if (v27 == 1)
      {
        goto LABEL_25;
      }
    }
  }

  v28 = [a2 siriEndpointProfile];
  v29 = v50[0];
  if (v28 && (v30 = v28, v31 = [v28 uniqueIdentifier], sub_22A4DB79C(), v31, LOBYTE(v31) = sub_22A4DB78C(), v30, v9(v7, v29), (v31 & 1) != 0))
  {
LABEL_26:
    v48 = a2;
  }

  else
  {
    v32 = [a2 lightProfiles];
    sub_229562F68(0, &unk_27D880970, off_278666228);
    sub_22959E62C(&unk_27D87E4A0, &unk_27D880970, off_278666228);
    v33 = sub_22A4DDB6C();

    MEMORY[0x28223BE20](v34);
    v50[-2] = a1;
    sub_229716514(sub_2295EEFE4, &v50[-4], v33);
    v36 = v35;

    v37 = *(v36 + 16);
    if (v37)
    {
      v38 = (v36 + 32);
      while (v37)
      {
        v39 = *v38++;
        --v37;
        if (v39 == 1)
        {
          goto LABEL_25;
        }
      }
    }

    v40 = [a2 identifiersForBridgedAccessories];
    sub_2295EF000();
    v41 = sub_22A4DDB6C();

    MEMORY[0x28223BE20](v42);
    v50[-2] = a1;
    sub_22971682C(sub_2295EF058, &v50[-4], v41);
    v44 = v43;

    v45 = *(v44 + 16);
    if (v45)
    {
      v46 = (v44 + 32);
      while (v45)
      {
        v47 = *v46++;
        --v45;
        if (v47)
        {
          goto LABEL_25;
        }
      }
    }

    return 0;
  }

  return a2;
}

void sub_2295EE028(uint64_t a1)
{
  v149 = a1;
  v1 = sub_22A4DB7DC();
  v131 = *(v1 - 8);
  v2 = MEMORY[0x28223BE20](v1);
  v127 = &v123 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v5 = &v123 - v4;
  v150 = sub_22A4DD07C();
  v130 = *(v150 - 8);
  v6 = MEMORY[0x28223BE20](v150);
  v128 = &v123 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v123 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v123 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v123 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v123 - v17;
  v19 = [objc_opt_self() driver];
  v20 = [v19 homeManager];

  v21 = [v20 homes];
  if (v21)
  {
    sub_229562F68(0, &qword_2814017B0, off_278666198);
    v22 = sub_22A4DD83C();

    v24 = v22;
    v133 = v22;
    if (v22 >> 62)
    {
LABEL_49:
      v25 = sub_22A4DE0EC();
      v24 = v133;
    }

    else
    {
      v25 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v25)
    {
      v124 = v16;
      v123 = v10;
      v26 = 0;
      v132 = v24 & 0xC000000000000001;
      v126 = v24 & 0xFFFFFFFFFFFFFF8;
      v125 = v24 + 32;
      v27 = *MEMORY[0x277D0F1A8];
      v148 = (v130 + 8);
      v141 = (v131 + 8);
      *&v23 = 136315394;
      v139 = v23;
      v143 = v1;
      v151 = v5;
      v129 = v25;
      v138 = v13;
      v145 = v27;
      v140 = v18;
      do
      {
        if (v132)
        {
          v28 = v26;
          v29 = MEMORY[0x22AAD13F0](v26, v24);
          v30 = __OFADD__(v28, 1);
          v31 = v28 + 1;
          if (v30)
          {
            goto LABEL_48;
          }
        }

        else
        {
          if (v26 >= *(v126 + 16))
          {
            __break(1u);
            goto LABEL_51;
          }

          v32 = v26;
          v29 = *(v125 + 8 * v26);
          v30 = __OFADD__(v32, 1);
          v31 = v32 + 1;
          if (v30)
          {
            goto LABEL_48;
          }
        }

        v134 = v31;
        v135 = v29;
        v33 = [v29 accessories];
        sub_229562F68(0, &qword_281401C30, off_278665FE8);
        v10 = sub_22A4DD83C();

        v34 = v10;
        if (v10 >> 62)
        {
          v35 = sub_22A4DE0EC();
          v34 = v10;
          if (v35)
          {
LABEL_15:
            v1 = 0;
            v146 = v34;
            v147 = v34 & 0xC000000000000001;
            v137 = v34 & 0xFFFFFFFFFFFFFF8;
            v144 = v35;
            while (1)
            {
              if (v147)
              {
                v38 = MEMORY[0x22AAD13F0](v1);
              }

              else
              {
                if (v1 >= *(v137 + 16))
                {
                  goto LABEL_47;
                }

                v38 = *(v34 + 8 * v1 + 32);
              }

              v16 = v38;
              v5 = (v1 + 1);
              if (__OFADD__(v1, 1))
              {
                break;
              }

              objc_opt_self();
              v39 = swift_dynamicCastObjCClass();
              sub_22A4DD5EC();
              v152 = v1 + 1;
              v153 = v16;
              if (v39)
              {
                v16 = v16;
                sub_2295ED93C();
                sub_22A4DD06C();
                v5 = v16;
                v40 = v18;
                v41 = sub_22A4DD05C();
                v10 = sub_22A4DDCCC();

                v42 = os_log_type_enabled(v41, v10);
                v142 = v5;
                if (v42)
                {
                  v43 = swift_slowAlloc();
                  v44 = swift_slowAlloc();
                  v154 = v44;
                  *v43 = v139;
                  v45 = [v5 name];
                  v46 = sub_22A4DD5EC();
                  v48 = v47;

                  v49 = sub_2295A3E30(v46, v48, &v154);

                  *(v43 + 4) = v49;
                  *(v43 + 12) = 2080;
                  v50 = [v5 spiClientIdentifier];

                  sub_22A4DB79C();
                  v51 = sub_22A4DB76C();
                  v16 = v52;
                  (*v141)(v151, v143);
                  v53 = sub_2295A3E30(v51, v16, &v154);

                  *(v43 + 14) = v53;
                  _os_log_impl(&dword_229538000, v41, v10, "Checking HAP accessory: %s with UUID: %s", v43, 0x16u);
                  swift_arrayDestroy();
                  MEMORY[0x22AAD4E50](v44, -1, -1);
                  v54 = v43;
                  v13 = v138;
                  MEMORY[0x22AAD4E50](v54, -1, -1);

                  v36 = *v148;
                  v18 = v140;
                  (*v148)(v140, v150);
                }

                else
                {

                  v36 = *v148;
                  (*v148)(v40, v150);
                  v18 = v40;
                }

                v37 = sub_2295EDAA8(v149, v39);
                if (v37)
                {
                  v86 = v37;

                  sub_22A4DD5EC();
                  sub_2295ED93C();
                  v87 = v124;
                  sub_22A4DD06C();
                  v88 = v86;
                  v89 = v135;
                  v90 = sub_22A4DD05C();
                  v91 = sub_22A4DDCCC();

                  if (os_log_type_enabled(v90, v91))
                  {
                    v92 = swift_slowAlloc();
                    v93 = swift_slowAlloc();
                    v154 = v93;
                    *v92 = v139;
                    v94 = [v88 name];
                    v95 = sub_22A4DD5EC();
                    v97 = v96;

                    v98 = sub_2295A3E30(v95, v97, &v154);

                    *(v92 + 4) = v98;
                    *(v92 + 12) = 2080;
                    v99 = [v89 name];
                    v100 = sub_22A4DD5EC();
                    v102 = v101;

                    v103 = sub_2295A3E30(v100, v102, &v154);

                    *(v92 + 14) = v103;
                    _os_log_impl(&dword_229538000, v90, v91, "Found matching HAP accessory: %s in home: %s", v92, 0x16u);
                    swift_arrayDestroy();
                    MEMORY[0x22AAD4E50](v93, -1, -1);
                    MEMORY[0x22AAD4E50](v92, -1, -1);

                    v104 = v124;
                  }

                  else
                  {

                    v104 = v87;
                  }

LABEL_44:
                  v36(v104, v150);
                  return;
                }
              }

              else
              {
                sub_2295ED93C();
                sub_22A4DD06C();
                v10 = v16;
                v55 = sub_22A4DD05C();
                v56 = v13;
                v57 = sub_22A4DDCCC();

                if (os_log_type_enabled(v55, v57))
                {
                  v58 = swift_slowAlloc();
                  v142 = v10;
                  v59 = v58;
                  v136 = swift_slowAlloc();
                  v154 = v136;
                  *v59 = v139;
                  v60 = [v142 name];
                  v61 = sub_22A4DD5EC();
                  v63 = v62;

                  v64 = sub_2295A3E30(v61, v63, &v154);

                  *(v59 + 4) = v64;
                  *(v59 + 12) = 2080;
                  v65 = [v142 spiClientIdentifier];
                  v16 = v151;
                  sub_22A4DB79C();

                  v66 = sub_22A4DB76C();
                  v68 = v67;
                  v5 = v141;
                  v69 = v143;
                  (*v141)(v16, v143);
                  v70 = sub_2295A3E30(v66, v68, &v154);

                  *(v59 + 14) = v70;
                  _os_log_impl(&dword_229538000, v55, v57, "Checking non-HAP accessory: %s with UUID: %s", v59, 0x16u);
                  v71 = v136;
                  swift_arrayDestroy();
                  MEMORY[0x22AAD4E50](v71, -1, -1);
                  v72 = v59;
                  v10 = v142;
                  MEMORY[0x22AAD4E50](v72, -1, -1);

                  v36 = *v148;
                  v13 = v138;
                  (*v148)(v138, v150);
                }

                else
                {

                  v36 = *v148;
                  (*v148)(v56, v150);
                  v69 = v143;
                  v16 = v151;
                  v13 = v56;
                  v5 = v141;
                }

                v73 = [v10 spiClientIdentifier];
                sub_22A4DB79C();

                LOBYTE(v73) = sub_22A4DB78C();
                (*v5)(v16, v69);
                v18 = v140;
                if (v73)
                {

                  sub_22A4DD5EC();
                  sub_2295ED93C();
                  v105 = v123;
                  sub_22A4DD06C();
                  v106 = v10;
                  v107 = v135;
                  v108 = sub_22A4DD05C();
                  v109 = sub_22A4DDCCC();

                  if (os_log_type_enabled(v108, v109))
                  {
                    v111 = swift_slowAlloc();
                    v153 = swift_slowAlloc();
                    v154 = v153;
                    *v111 = v139;
                    v112 = [v106 name];
                    v113 = sub_22A4DD5EC();
                    v115 = v114;

                    v116 = sub_2295A3E30(v113, v115, &v154);

                    *(v111 + 4) = v116;
                    *(v111 + 12) = 2080;
                    v117 = [v107 name];
                    v118 = sub_22A4DD5EC();
                    v120 = v119;

                    v121 = sub_2295A3E30(v118, v120, &v154);

                    *(v111 + 14) = v121;
                    _os_log_impl(&dword_229538000, v108, v109, "Found matching non-HAP accessory: %s in home: %s", v111, 0x16u);
                    v122 = v153;
                    swift_arrayDestroy();
                    MEMORY[0x22AAD4E50](v122, -1, -1);
                    MEMORY[0x22AAD4E50](v111, -1, -1);
                  }

                  else
                  {
                  }

                  v104 = v105;
                  goto LABEL_44;
                }
              }

              ++v1;
              v34 = v146;
              if (v152 == v144)
              {
                goto LABEL_6;
              }
            }

            __break(1u);
LABEL_47:
            __break(1u);
LABEL_48:
            __break(1u);
            goto LABEL_49;
          }
        }

        else
        {
          v35 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v35)
          {
            goto LABEL_15;
          }
        }

LABEL_6:

        v26 = v134;
        v1 = v143;
        v24 = v133;
      }

      while (v134 != v129);
    }

    sub_22A4DD5EC();
    sub_2295ED93C();
    v74 = v128;
    sub_22A4DD06C();
    v75 = v131;
    v76 = v127;
    (*(v131 + 16))(v127, v149, v1);
    v77 = sub_22A4DD05C();
    v78 = sub_22A4DDCEC();
    if (os_log_type_enabled(v77, v78))
    {
      v79 = v74;
      v80 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      v154 = v81;
      *v80 = 136315138;
      v82 = sub_22A4DB76C();
      v84 = v83;
      (*(v75 + 8))(v76, v1);
      v85 = sub_2295A3E30(v82, v84, &v154);

      *(v80 + 4) = v85;
      _os_log_impl(&dword_229538000, v77, v78, "Could not find any accessory with UUID: %s in any home after searching all the homes", v80, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v81);
      MEMORY[0x22AAD4E50](v81, -1, -1);
      MEMORY[0x22AAD4E50](v80, -1, -1);

      (*(v130 + 8))(v79, v150);
    }

    else
    {

      (*(v75 + 8))(v76, v1);
      (*(v130 + 8))(v74, v150);
    }
  }

  else
  {
LABEL_51:
    __break(1u);
  }
}