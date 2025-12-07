unint64_t sub_252BB48FC(void *a1)
{
  v2 = v1[4];
  v16 = v1[13];
  v17 = v1[20];
  v18 = v1[21];
  v19 = v1[19];
  v15 = v1[28];
  v25 = a1;
  v24 = MEMORY[0x277D84F90];
  v3 = *(v2 + 16);
  v4 = (v2 + 32);
  v20 = a1;
  while (1)
  {
    if (!v3)
    {

      return MEMORY[0x277D84F90];
    }

    v6 = *v4;
    if (v6 >= 4)
    {
      break;
    }

    v5 = sub_252E37DB4();

    ++v4;
    --v3;
    if (v5)
    {
      goto LABEL_9;
    }
  }

LABEL_9:
  if (!*(v19 + 16))
  {
    if (*(v18 + 16))
    {
      v8 = v20;
      v9 = v20;
      v10 = sub_252BB4FC0;
      v11 = v18;
      goto LABEL_19;
    }

    if (*(v17 + 16))
    {
      v8 = v20;
      v9 = v20;
      v10 = sub_252BB5340;
      v11 = v17;
      goto LABEL_19;
    }

    if (*(v16 + 16))
    {
      v8 = v20;
      v9 = v20;
      v10 = sub_252BB55E0;
      v11 = v16;
      goto LABEL_19;
    }

    if (*(v15 + 16))
    {
      v8 = v20;
      v9 = v20;
      v10 = sub_252BB5880;
      v11 = v15;
      goto LABEL_19;
    }

    v12 = v1;
    if (qword_27F53F4E8 != -1)
    {
LABEL_25:
      swift_once();
    }

    v13 = sub_252E36AD4();
    __swift_project_value_buffer(v13, qword_27F544D60);
    *&v21 = 0;
    *(&v21 + 1) = 0xE000000000000000;
    sub_252E379F4();
    v23 = v21;
    MEMORY[0x2530AD570](0xD000000000000035, 0x8000000252E85EF0);
    memcpy(v22, v12 + 29, sizeof(v22));
    v14 = HomeAutomationIntent.description.getter();
    MEMORY[0x2530AD570](v14);

    sub_252CC4050(v23, *(&v23 + 1), 0xD00000000000007ALL, 0x8000000252E85990, 0xD000000000000026, 0x8000000252E85F30, 351);

    return MEMORY[0x277D84F90];
  }

  v8 = v20;
  v9 = v20;
  v10 = sub_252BB4D20;
  v11 = v19;
LABEL_19:
  sub_252BBEE30(v11, v9, &v25, &v24, v10);

  v12 = v25;
  if (v24 >> 62 && sub_252E378C4() < 0)
  {
    __break(1u);
    goto LABEL_25;
  }

  sub_252D57BF4(0, 0, v12);

  return v24;
}

void sub_252BB4D20(uint64_t *a1, void *a2, void **a3, void *a4)
{
  v7 = *a1;
  v8 = a1[1];
  type metadata accessor for HomeFilter.Builder();
  swift_allocObject();
  v9.n128_f64[0] = HomeFilter.Builder.init()();
  v11 = (*(*v10 + 728))(1, v9);

  v12 = (*(*v11 + 576))(v7, v8);

  v14 = (*(*v12 + 760))(v13);

  v15 = [a2 homeEntityName];
  if (v15)
  {
    v29 = v14;
    v16 = a2;
    v17 = a3;
    v18 = v15;
    v19 = sub_252E36F34();
    v21 = v20;

    if (v19 == v7 && v21 == v8)
    {

      v22 = v17;
      v14 = v29;
    }

    else
    {
      v23 = sub_252E37DB4();

      v22 = v17;
      v14 = v29;
      if ((v23 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    type metadata accessor for MutableMatterHomeFilter();
    swift_initStackObject();
    v24 = v16;
    v25 = sub_2529D0A90(v24);

    *(v25 + 24) = 0;
    *(v25 + 32) = 0;

    v26 = sub_2529D0538();

    v27 = *v22;
    *v22 = v26;
  }

LABEL_7:
  v28 = v14;
  MEMORY[0x2530AD700]();
  if (*((*a4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_252E372A4();
  }

  sub_252E372D4();
}

void sub_252BB4FC0(uint64_t *a1, void *a2, id *a3, void *a4)
{
  v7 = *a1;
  v8 = a1[1];
  type metadata accessor for HomeFilter.Builder();
  swift_allocObject();
  v9.n128_f64[0] = HomeFilter.Builder.init()();
  v11 = (*(*v10 + 728))(1, v9);

  v38 = v8;
  v12 = (*(*v11 + 608))(v7, v8);

  v14 = (*(*v12 + 760))(v13);

  v15 = [a2 homeEntityName];
  if (v15)
  {
    v16 = a2;
    v17 = v15;
    v18 = sub_252E36F34();
    v20 = v19;

    if (v18 == v7 && v20 == v38)
    {
    }

    else
    {
      v21 = sub_252E37DB4();

      if ((v21 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    type metadata accessor for MutableMatterHomeFilter();
    swift_initStackObject();
    v22 = v16;
    v23 = sub_2529D0A90(v22);

    *(v23 + 24) = 0;
    *(v23 + 32) = 0;

    v24 = sub_2529D0538();

    v25 = *a3;
    *a3 = v24;
  }

LABEL_7:
  v26 = [*a3 outerDeviceName];
  if (!v26)
  {
    goto LABEL_13;
  }

  v27 = v26;
  v28 = sub_252E36F34();
  v30 = v29;

  if (v28 == v7 && v30 == v38)
  {
  }

  else
  {
    v31 = sub_252E37DB4();

    if ((v31 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  v32 = *a3;
  type metadata accessor for MutableMatterHomeFilter();
  swift_initStackObject();
  v33 = v32;
  v34 = sub_2529D0A90(v33);

  *(v34 + 56) = 0;
  *(v34 + 64) = 0;

  v35 = sub_2529D0538();

  v36 = *a3;
  *a3 = v35;

LABEL_13:
  v37 = v14;
  MEMORY[0x2530AD700]();
  if (*((*a4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_252E372A4();
  }

  sub_252E372D4();
}

void sub_252BB5340(uint64_t *a1, void *a2, void **a3, void *a4)
{
  v7 = *a1;
  v8 = a1[1];
  type metadata accessor for HomeFilter.Builder();
  swift_allocObject();
  v9.n128_f64[0] = HomeFilter.Builder.init()();
  v11 = (*(*v10 + 728))(1, v9);

  v12 = (*(*v11 + 664))(v7, v8);

  v14 = (*(*v12 + 760))(v13);

  v15 = [a2 groupName];
  if (v15)
  {
    v29 = v14;
    v16 = a2;
    v17 = a3;
    v18 = v15;
    v19 = sub_252E36F34();
    v21 = v20;

    if (v19 == v7 && v21 == v8)
    {

      v22 = v17;
      v14 = v29;
    }

    else
    {
      v23 = sub_252E37DB4();

      v22 = v17;
      v14 = v29;
      if ((v23 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    type metadata accessor for MutableMatterHomeFilter();
    swift_initStackObject();
    v24 = v16;
    v25 = sub_2529D0A90(v24);

    *(v25 + 112) = 0;
    *(v25 + 120) = 0;

    v26 = sub_2529D0538();

    v27 = *v22;
    *v22 = v26;
  }

LABEL_7:
  v28 = v14;
  MEMORY[0x2530AD700]();
  if (*((*a4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_252E372A4();
  }

  sub_252E372D4();
}

void sub_252BB55E0(uint64_t *a1, void *a2, void **a3, void *a4)
{
  v7 = *a1;
  v8 = a1[1];
  type metadata accessor for HomeFilter.Builder();
  swift_allocObject();
  v9.n128_f64[0] = HomeFilter.Builder.init()();
  v11 = (*(*v10 + 728))(1, v9);

  v12 = (*(*v11 + 680))(v7, v8);

  v14 = (*(*v12 + 760))(v13);

  v15 = [a2 roomName];
  if (v15)
  {
    v29 = v14;
    v16 = a2;
    v17 = a3;
    v18 = v15;
    v19 = sub_252E36F34();
    v21 = v20;

    if (v19 == v7 && v21 == v8)
    {

      v22 = v17;
      v14 = v29;
    }

    else
    {
      v23 = sub_252E37DB4();

      v22 = v17;
      v14 = v29;
      if ((v23 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    type metadata accessor for MutableMatterHomeFilter();
    swift_initStackObject();
    v24 = v16;
    v25 = sub_2529D0A90(v24);

    *(v25 + 128) = 0;
    *(v25 + 136) = 0;

    v26 = sub_2529D0538();

    v27 = *v22;
    *v22 = v26;
  }

LABEL_7:
  v28 = v14;
  MEMORY[0x2530AD700]();
  if (*((*a4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_252E372A4();
  }

  sub_252E372D4();
}

void sub_252BB5880(uint64_t *a1, void *a2, void **a3, void *a4)
{
  v7 = *a1;
  v8 = a1[1];
  type metadata accessor for HomeFilter.Builder();
  swift_allocObject();
  v9.n128_f64[0] = HomeFilter.Builder.init()();
  v11 = (*(*v10 + 728))(1, v9);

  v12 = (*(*v11 + 648))(v7, v8);

  v14 = (*(*v12 + 760))(v13);

  v15 = [a2 zoneName];
  if (v15)
  {
    v29 = v14;
    v16 = a2;
    v17 = a3;
    v18 = v15;
    v19 = sub_252E36F34();
    v21 = v20;

    if (v19 == v7 && v21 == v8)
    {

      v22 = v17;
      v14 = v29;
    }

    else
    {
      v23 = sub_252E37DB4();

      v22 = v17;
      v14 = v29;
      if ((v23 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    type metadata accessor for MutableMatterHomeFilter();
    swift_initStackObject();
    v24 = v16;
    v25 = sub_2529D0A90(v24);

    *(v25 + 96) = 0;
    *(v25 + 104) = 0;

    v26 = sub_2529D0538();

    v27 = *v22;
    *v22 = v26;
  }

LABEL_7:
  v28 = v14;
  MEMORY[0x2530AD700]();
  if (*((*a4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_252E372A4();
  }

  sub_252E372D4();
}

unint64_t sub_252BB5B20(unint64_t result)
{
  v1 = result;
  v18 = MEMORY[0x277D84F90];
  if (!(result >> 62))
  {
    v2 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

    return MEMORY[0x277D84F90];
  }

  result = sub_252E378C4();
  v2 = result;
  if (!result)
  {
    return MEMORY[0x277D84F90];
  }

LABEL_3:
  if (v2 < 1)
  {
    __break(1u);
  }

  else
  {
    for (i = 0; i != v2; ++i)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x2530ADF00](i, v1);
      }

      else
      {
        v4 = *(v1 + 8 * i + 32);
      }

      v5 = v4;
      if ([v4 entityType] == 5)
      {
        type metadata accessor for HomeFilter.Builder();
        inited = swift_initStackObject();
        *(inited + 16) = 0;
        *(inited + 24) = 0;
        *(inited + 32) = 0;
        *(inited + 40) = 7;
        *(inited + 48) = 0u;
        *(inited + 64) = 0u;
        *(inited + 80) = 0u;
        *(inited + 96) = 0u;
        *(inited + 112) = 0u;
        *(inited + 128) = 0u;
        *(inited + 144) = 0u;
        *(inited + 160) = 0u;
        *(inited + 175) = 0;
        v7 = [v5 homeEntityName];
        if (v7)
        {
          v8 = v7;
          v9 = sub_252E36F34();
          v11 = v10;
        }

        else
        {
          v9 = 0;
          v11 = 0;
        }

        *(inited + 24) = v9;
        *(inited + 32) = v11;
        *(inited + 40) = 5;
        v13 = [v5 homeName];
        if (v13)
        {
          v14 = v13;
          v15 = sub_252E36F34();
          v17 = v16;
        }

        else
        {
          v15 = 0;
          v17 = 0;
        }

        *(inited + 80) = v15;
        *(inited + 88) = v17;
        sub_252B719E4();
        swift_setDeallocating();
        HomeFilter.Builder.deinit();
        v12 = swift_deallocClassInstance();
      }

      else
      {
        v12 = v5;
      }

      MEMORY[0x2530AD700](v12);
      if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_252E372A4();
      }

      sub_252E372D4();
    }

    return v18;
  }

  return result;
}

unint64_t sub_252BB5D44(unint64_t a1)
{
  v2 = *(v1 + 104);
  v109 = *(v1 + 224);
  v3 = MEMORY[0x277D84F90];
  v129 = MEMORY[0x277D84F90];
  v4 = type metadata accessor for HomeStore(0);
  v5 = static HomeStore.shared.getter(v4);
  v6 = sub_2529DA2BC();

  v7 = v6;
  v128 = v3;
  if (v6 >> 62)
  {
    goto LABEL_144;
  }

  v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (2)
  {
    v9 = MEMORY[0x277D84F90];
    if (!v8)
    {
      v33 = MEMORY[0x277D84F90];
LABEL_41:

      v34 = sub_252C75848(v33);

      v127 = sub_252BBC1F0(v2, v34);
      v35 = static HomeStore.shared.getter(v127);
      v36 = sub_2529DA2BC();

      v128 = v9;
      if (v36 >> 62)
      {
        v7 = sub_252E378C4();
        v37 = v7;
      }

      else
      {
        v37 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v4 = MEMORY[0x277D84F90];
      if (v37)
      {
        v38 = 0;
        v117 = v36 & 0xFFFFFFFFFFFFFF8;
        v120 = v36 & 0xC000000000000001;
        v108 = v36;
        v114 = v36 + 32;
        v111 = v37;
        while (1)
        {
          if (v120)
          {
            v7 = MEMORY[0x2530ADF00](v38, v108);
            v2 = v7;
            v11 = __OFADD__(v38++, 1);
            if (v11)
            {
              goto LABEL_141;
            }
          }

          else
          {
            if (v38 >= *(v117 + 16))
            {
              goto LABEL_142;
            }

            v2 = *(v114 + 8 * v38);

            v11 = __OFADD__(v38++, 1);
            if (v11)
            {
              goto LABEL_141;
            }
          }

          v39 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0(v7);
          v40 = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_deviceEntityStore;
          swift_beginAccess();
          v41 = *&v39[v40];
          if (v41 >> 62)
          {
            v47 = sub_252E378C4();

            if (!v47)
            {
LABEL_58:
              v46 = v4;
              goto LABEL_59;
            }
          }

          else
          {
            v42 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);

            if (!v42)
            {
              goto LABEL_58;
            }
          }

          v44 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0(v43);
          v45 = sub_252AC11C8(v2);

          if (v45)
          {
            v46 = v45;
          }

          else
          {
            v46 = v4;
          }

LABEL_59:
          if (v46 >> 62)
          {
            v48 = sub_252E378C4();
            if (v48)
            {
LABEL_61:
              v49 = 0;
              do
              {
                v50 = v49;
                while (1)
                {
                  if ((v46 & 0xC000000000000001) != 0)
                  {
                    v51 = MEMORY[0x2530ADF00](v50, v46);
                  }

                  else
                  {
                    if (v50 >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10))
                    {
                      goto LABEL_136;
                    }

                    v51 = *(v46 + 8 * v50 + 32);
                  }

                  v52 = v51;
                  v49 = v50 + 1;
                  if (__OFADD__(v50, 1))
                  {
                    goto LABEL_135;
                  }

                  v53 = [v51 name];
                  if (v53)
                  {
                    break;
                  }

                  ++v50;
                  if (v49 == v48)
                  {
                    goto LABEL_45;
                  }
                }

                v54 = v53;
                v55 = sub_252E36F34();
                v123 = v56;

                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v4 = sub_2529F7A80(0, *(v4 + 16) + 1, 1, v4);
                }

                v2 = *(v4 + 16);
                v57 = *(v4 + 24);
                if (v2 >= v57 >> 1)
                {
                  v4 = sub_2529F7A80((v57 > 1), v2 + 1, 1, v4);
                }

                *(v4 + 16) = v2 + 1;
                v58 = v4 + 16 * v2;
                *(v58 + 32) = v55;
                *(v58 + 40) = v123;
              }

              while (v49 != v48);
            }
          }

          else
          {
            v48 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v48)
            {
              goto LABEL_61;
            }
          }

LABEL_45:

          v7 = sub_25297A744(v4);
          v4 = MEMORY[0x277D84F90];
          if (v38 == v111)
          {
            v4 = v9;
            break;
          }
        }
      }

      v59 = sub_252C75848(v4);

      v7 = sub_252BBC1F0(v109, v59);
      v4 = v7;
      if (!v127[2] && !*(v7 + 16))
      {
        goto LABEL_137;
      }

      v60 = a1;
      if (a1 >> 62)
      {
        v7 = sub_252E378C4();
        v60 = a1;
        v2 = v7;
        if (v7)
        {
          goto LABEL_84;
        }
      }

      else
      {
        v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v2)
        {
LABEL_84:
          v61 = 0;
          v126 = v60 & 0xC000000000000001;
          v115 = v60 + 32;
          v118 = v60 & 0xFFFFFFFFFFFFFF8;
          v62 = v127 + 7;
          v121 = MEMORY[0x277D84F90];
          v124 = v2;
          v63 = v4 + 56;
          while (1)
          {
            if (v126)
            {
              v7 = MEMORY[0x2530ADF00](v61);
            }

            else
            {
              if (v61 >= *(v118 + 16))
              {
                goto LABEL_143;
              }

              v7 = *(v115 + 8 * v61);
            }

            v64 = v7;
            v11 = __OFADD__(v61++, 1);
            if (v11)
            {
              goto LABEL_140;
            }

            v65 = [v7 roomName];
            if (!v65)
            {
              v65 = [v64 zoneName];
              if (!v65)
              {
                v103 = v64;
                MEMORY[0x2530AD700]();
                if (*((v129 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v129 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  sub_252E372A4();
                  v2 = v124;
                }

                sub_252E372D4();

                v121 = v129;
                goto LABEL_87;
              }
            }

            v66 = [v64 roomName];
            if (!v66)
            {
              goto LABEL_106;
            }

            v67 = v66;
            v68 = sub_252E36F34();
            v70 = v69;

            if (!v127[2])
            {
              break;
            }

            sub_252E37EC4();
            sub_252E37044();
            v71 = sub_252E37F14();
            v72 = v127;
            v73 = -1 << *(v127 + 32);
            v74 = v71 & ~v73;
            if (((*(v62 + ((v74 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v74) & 1) == 0)
            {
              break;
            }

            v75 = ~v73;
            while (1)
            {
              v76 = (v72[6] + 16 * v74);
              v77 = *v76 == v68 && v76[1] == v70;
              if (v77 || (sub_252E37DB4() & 1) != 0)
              {
                break;
              }

              v74 = (v74 + 1) & v75;
              v72 = v127;
              if (((*(v62 + ((v74 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v74) & 1) == 0)
              {
                goto LABEL_105;
              }
            }

            type metadata accessor for HomeFilter.Builder();
            swift_allocObject();
            HomeFilter.Builder.init()();
            v92 = *(*v91 + 752);
            v93 = v64;
            v94 = v92(v64);

            v95 = (*(*v94 + 760))();

            [v95 setRoomName_];
            v96 = v95;
            MEMORY[0x2530AD700]();
            if (*((v129 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v129 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_252E372A4();
            }

            sub_252E372D4();

            v78 = 1;
            v121 = v129;
LABEL_107:
            v79 = [v64 zoneName];
            if (v79)
            {
              v80 = v79;
              v81 = sub_252E36F34();
              v83 = v82;

              if (*(v4 + 16))
              {
                sub_252E37EC4();
                sub_252E37044();
                v84 = sub_252E37F14();
                v85 = -1 << *(v4 + 32);
                v86 = v84 & ~v85;
                if ((*(v63 + ((v86 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v86))
                {
                  v87 = ~v85;
                  while (1)
                  {
                    v88 = (*(v4 + 48) + 16 * v86);
                    v89 = *v88 == v81 && v88[1] == v83;
                    if (v89 || (sub_252E37DB4() & 1) != 0)
                    {
                      break;
                    }

                    v86 = (v86 + 1) & v87;
                    if (((*(v63 + ((v86 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v86) & 1) == 0)
                    {
                      goto LABEL_117;
                    }
                  }

                  type metadata accessor for HomeFilter.Builder();
                  swift_allocObject();
                  HomeFilter.Builder.init()();
                  v98 = *(*v97 + 752);
                  v99 = v64;
                  v100 = v98(v64);

                  v101 = (*(*v100 + 760))();

                  [v101 setZoneName_];
                  v102 = v101;
                  MEMORY[0x2530AD700]();
                  if (*((v129 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v129 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                  {
                    sub_252E372A4();
                  }

                  sub_252E372D4();

                  goto LABEL_128;
                }
              }

LABEL_117:
            }

            if (!v78)
            {
              v90 = v64;
              MEMORY[0x2530AD700]();
              if (*((v129 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v129 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_252E372A4();
              }

              sub_252E372D4();

LABEL_128:
              v121 = v129;
              goto LABEL_86;
            }

LABEL_86:
            v2 = v124;
LABEL_87:
            if (v61 == v2)
            {

              return v121;
            }
          }

LABEL_105:

LABEL_106:
          v78 = 0;
          goto LABEL_107;
        }
      }

      return MEMORY[0x277D84F90];
    }

    v106 = v4;
    v107 = v2;
    v10 = 0;
    v119 = v7 & 0xFFFFFFFFFFFFFF8;
    v122 = v7 & 0xC000000000000001;
    v110 = v7;
    v113 = v8;
    v116 = v7 + 32;
LABEL_6:
    if (v122)
    {
      v7 = MEMORY[0x2530ADF00](v10, v110);
      v2 = v7;
      v11 = __OFADD__(v10++, 1);
      if (v11)
      {
        goto LABEL_138;
      }
    }

    else
    {
      if (v10 >= *(v119 + 16))
      {
        goto LABEL_139;
      }

      v2 = *(v116 + 8 * v10);

      v11 = __OFADD__(v10++, 1);
      if (v11)
      {
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
        v105 = v7;
        v8 = sub_252E378C4();
        v7 = v105;
        continue;
      }
    }

    break;
  }

  v12 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0(v7);
  v13 = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_deviceEntityStore;
  swift_beginAccess();
  v14 = *&v12[v13];
  if (!(v14 >> 62))
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v15)
    {
      goto LABEL_11;
    }

LABEL_18:
    v4 = MEMORY[0x277D84F90];
    v19 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  v20 = sub_252E378C4();

  if (!v20)
  {
    goto LABEL_18;
  }

LABEL_11:
  v17 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0(v16);
  v18 = sub_252AC0F68(v2);

  v4 = MEMORY[0x277D84F90];
  if (v18)
  {
    v19 = v18;
  }

  else
  {
    v19 = MEMORY[0x277D84F90];
  }

LABEL_19:
  if (v19 >> 62)
  {
    v21 = sub_252E378C4();
    if (!v21)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v21 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v21)
    {
      goto LABEL_5;
    }
  }

  v22 = 0;
  v2 = v19 & 0xC000000000000001;
LABEL_22:
  v23 = v22;
  while (1)
  {
    if (v2)
    {
      v24 = MEMORY[0x2530ADF00](v23, v19);
    }

    else
    {
      if (v23 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_134;
      }

      v24 = *(v19 + 8 * v23 + 32);
    }

    v25 = v24;
    v22 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    v26 = [v24 name];
    if (v26)
    {
      v27 = v26;
      v125 = sub_252E36F34();
      v29 = v28;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_2529F7A80(0, *(v4 + 16) + 1, 1, v4);
      }

      v31 = *(v4 + 16);
      v30 = *(v4 + 24);
      if (v31 >= v30 >> 1)
      {
        v4 = sub_2529F7A80((v30 > 1), v31 + 1, 1, v4);
      }

      *(v4 + 16) = v31 + 1;
      v32 = v4 + 16 * v31;
      *(v32 + 32) = v125;
      *(v32 + 40) = v29;
      if (v22 != v21)
      {
        goto LABEL_22;
      }

LABEL_5:

      v7 = sub_25297A744(v4);
      if (v10 == v113)
      {
        v33 = v128;
        v2 = v107;
        v9 = MEMORY[0x277D84F90];
        goto LABEL_41;
      }

      goto LABEL_6;
    }

    ++v23;
    if (v22 == v21)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:

  return a1;
}

BOOL sub_252BB6A08(void *a1)
{
  v2 = v1[4];
  v3 = v1[16];
  v39 = v1[11];
  v40 = v1[19];
  v33 = v1[13];
  v36 = v1[20];
  v38 = v1[21];
  v34 = v1[49];
  v35 = v2;
  if (sub_252A169C8())
  {
LABEL_2:
    v4 = 1;
  }

  else
  {
    v37 = v3;
    v5 = *(v2 + 16);
    v6 = (v2 + 32);
    v7 = v6;
    while (v5)
    {
      v9 = *v7;
      if (v9 > 1 && v9 != 3 && v9 != 4)
      {
LABEL_34:
        v3 = v37;
LABEL_43:

        goto LABEL_2;
      }

      v8 = sub_252E37DB4();

      ++v7;
      --v5;
      if (v8)
      {
LABEL_21:
        v4 = 1;
        v3 = v37;
        goto LABEL_22;
      }
    }

    v10 = *(v35 + 16);
    v3 = v37;
    while (v10)
    {
      v12 = *v6;
      if (v12 > 2 && v12 != 4)
      {
        goto LABEL_43;
      }

      v11 = sub_252E37DB4();

      ++v6;
      --v10;
      if (v11)
      {
        goto LABEL_2;
      }
    }

    v13 = *(v39 + 16);
    v14 = (v39 + 32);
    v15 = (v39 + 32);
    while (2)
    {
      if (v13)
      {
        switch(*v15)
        {
          case 1:
          case 2:
          case 3:
          case 4:
          case 5:
          case 6:
          case 7:
          case 8:
          case 9:
          case 0xA:
          case 0xB:
          case 0xC:
          case 0xD:
          case 0xE:
          case 0xF:
          case 0x10:
          case 0x11:
          case 0x12:
          case 0x13:
          case 0x14:
            v16 = sub_252E37DB4();

            ++v15;
            --v13;
            if ((v16 & 1) == 0)
            {
              continue;
            }

            goto LABEL_21;
          default:
            goto LABEL_34;
        }
      }

      break;
    }

    v24 = *(v39 + 16);
    HIDWORD(v30) = -385875968;
    v3 = v37;
    while (2)
    {
      v26 = v24-- != 0;
      v4 = v26;
      if (v26)
      {
        switch(*v14)
        {
          case 1:
          case 2:
          case 3:
          case 4:
          case 5:
          case 6:
          case 7:
          case 8:
          case 9:
          case 0xA:
          case 0xB:
          case 0xC:
          case 0xD:
          case 0xE:
          case 0xF:
          case 0x10:
          case 0x11:
          case 0x12:
          case 0x13:
          case 0x14:
            v25 = sub_252E37DB4();

            ++v14;
            if ((v25 & 1) == 0)
            {
              continue;
            }

            break;
          default:
            goto LABEL_43;
        }
      }

      break;
    }
  }

LABEL_22:
  if (*(v40 + 16) <= 1uLL)
  {
    v17 = *(v38 + 16) > 1uLL;
    if (*(v3 + 16))
    {
      return 0;
    }
  }

  else
  {
    v17 = 1;
    if (*(v3 + 16))
    {
      return 0;
    }
  }

  LODWORD(v30) = v17;
  v18 = *(v39 + 16);
  v19 = (v39 + 32);
  v20 = (v39 + 32);
  while (2)
  {
    if (v18)
    {
      switch(*v20)
      {
        case 2:

          goto LABEL_48;
        default:
          v21 = sub_252E37DB4();

          ++v20;
          --v18;
          if ((v21 & 1) == 0)
          {
            continue;
          }

          goto LABEL_48;
      }
    }

    break;
  }

  v22 = *(v39 + 16);
  while (2)
  {
    if (!v22)
    {
      goto LABEL_57;
    }

    switch(*v19)
    {
      case 1:

        break;
      default:
        v23 = sub_252E37DB4();

        ++v19;
        --v22;
        if ((v23 & 1) == 0)
        {
          continue;
        }

        break;
    }

    break;
  }

  if (*(v33 + 16))
  {
LABEL_57:
    v27 = sub_252A10C68([a1 attribute]);
    if (v4 & 1 | ((v27 & 1) == 0) | v31 & 1)
    {
      return 0;
    }
  }

LABEL_48:
  if (!*(v36 + 16))
  {
    if (v34 >> 62)
    {
      if (sub_252E378C4())
      {
        return 0;
      }
    }

    else if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return 0;
    }

    return sub_252C5CF44();
  }

  return 0;
}

unint64_t sub_252BB776C(unint64_t result)
{
  if (result != 1)
  {
    v2 = v1[8];
    v3 = v1[24];
    v4 = v1[26];
    v5 = v1[208];
    v6 = v1[209];
    if (v5 == 9)
    {
      if (v6 == 2)
      {
        v7 = result;
        if ((sub_252B9D64C(result) & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      return 4;
    }

    v7 = result;
    if ((sub_252A0D524(v1[208], 4u) & 1) == 0)
    {
      result = 4;
      if (v6 != 2)
      {
        return result;
      }

      if ((sub_252A0D524(v5, 1u) & 1) == 0)
      {
        if ((sub_252A0D524(v5, 3u) & 1) == 0)
        {
          sub_252B9D64C(v7);
          if (sub_252A0D524(v5, 2u))
          {
            return 6;
          }

LABEL_5:
          memcpy(v11, v1 + 210, sizeof(v11));
          if ((sub_252A10C68(v7) & 1) == 0)
          {
            return 0;
          }

          if (v3 == 2)
          {
            return 1;
          }

          if (v3)
          {
            v10 = sub_252E37DB4();
            swift_bridgeObjectRelease_n();
            if ((v10 & 1) == 0)
            {
              goto LABEL_29;
            }
          }

          else
          {
            swift_bridgeObjectRelease_n();
          }

          if (sub_252BB7C30())
          {
            memcpy(v11, v1 + 210, sizeof(v11));
            if (!sub_252A12698() && (v4 == 4 || (sub_252A0C910(v4, 1u) & 1) == 0))
            {
              return 2;
            }
          }

          if ((v3 & 1) == 0)
          {
            v9 = sub_252E37DB4();
            swift_bridgeObjectRelease_n();
            if ((v9 & 1) == 0)
            {
              return 1;
            }

            goto LABEL_31;
          }

LABEL_29:
          swift_bridgeObjectRelease_n();
LABEL_31:
          if (sub_252BB7C30())
          {
            memcpy(v11, v1 + 210, sizeof(v11));
            if (!sub_252A12698() && (v4 == 4 || (sub_252A0C910(v4, 1u) & 1) == 0))
            {
              return 3;
            }
          }

          return 1;
        }

        return 4;
      }

      if (v2 <= 1)
      {
        if (!v2)
        {
          swift_bridgeObjectRelease_n();
          return 5;
        }

LABEL_21:
        v8 = sub_252E37DB4();

        if (v8)
        {
          return 5;
        }

        return 4;
      }

      if (v2 == 2)
      {
        goto LABEL_21;
      }
    }

    return 4;
  }

  return result;
}

uint64_t sub_252BB7C30()
{
  if (qword_27F53F3B0 != -1)
  {
    swift_once();
  }

  v0 = qword_27F575920;
  if (!*(qword_27F575920 + 16))
  {
    return 0;
  }

  v1 = sub_252A488EC();
  if ((v2 & 1) == 0)
  {
    return 0;
  }

  sub_252974E7C(*(v0 + 56) + 32 * v1, v4);
  sub_252A00AF4(v4, v5);
  sub_252974E7C(v5, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5439F8, &qword_252E502D0);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(v5);
    return 1;
  }

  else
  {
    sub_252A00AF4(v5, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543A00, &qword_252E502D8);
    return swift_dynamicCast();
  }
}

unint64_t sub_252BB7D58(unint64_t a1)
{
  v2 = sub_252E36AD4();
  v56 = *(v2 - 8);
  v57 = v2;
  MEMORY[0x28223BE20](v2);
  v55 = &v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for HomeStore(0);
  v5 = static HomeStore.shared.getter(v4);
  v6 = HomeStore.services(matching:supporting:)(a1, 0);
  v8 = v7;

  if (v8)
  {
    if (qword_27F53F4F8 != -1)
    {
      goto LABEL_54;
    }

    goto LABEL_3;
  }

  if (qword_27F53F4F8 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v57, qword_27F544D90);
  v61 = 0;
  v62 = 0xE000000000000000;
  sub_252E379F4();

  v61 = 0x616D206261636F56;
  v62 = 0xEF203A7365686374;
  v10 = type metadata accessor for Service(0);
  v11 = MEMORY[0x2530AD730](v6, v10);
  MEMORY[0x2530AD570](v11);

  sub_252CC3D90(v61, v62, 0xD00000000000007ALL, 0x8000000252E85990);

LABEL_7:
  v61 = MEMORY[0x277D84F90];
  if (v6 >> 62)
  {
    goto LABEL_21;
  }

  v12 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v12)
  {
LABEL_22:
    v16 = MEMORY[0x277D84F90];
    if (!*(MEMORY[0x277D84F90] + 16))
    {
      goto LABEL_23;
    }

    goto LABEL_69;
  }

LABEL_9:
  v13 = 0;
  while ((v6 & 0xC000000000000001) == 0)
  {
    if (v13 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_21:
      v9 = sub_252E378C4();
      v12 = v9;
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_9;
    }

    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      goto LABEL_17;
    }

LABEL_13:
    v15 = sub_252CD95D8();

    v9 = sub_25297A864(v15);
    ++v13;
    if (v14 == v12)
    {
      goto LABEL_18;
    }
  }

  v9 = MEMORY[0x2530ADF00](v13, v6);
  v14 = v13 + 1;
  if (!__OFADD__(v13, 1))
  {
    goto LABEL_13;
  }

LABEL_17:
  __break(1u);
LABEL_18:
  v16 = v61;
  if (*(v61 + 16))
  {
    goto LABEL_69;
  }

LABEL_23:
  v17 = static HomeStore.shared.getter(v9);
  v18 = HomeStore.accessories(matching:supporting:)(a1, 0);
  v20 = v19;

  if (v20)
  {
    sub_252929F10(v18, 1);
    goto LABEL_69;
  }

  v21 = v18 & 0xFFFFFFFFFFFFFF8;
  if (v18 >> 62)
  {
    a1 = sub_252E378C4();
    if (!a1)
    {
      goto LABEL_56;
    }

LABEL_27:
    v22 = 0;
    v59 = v18 & 0xC000000000000001;
    v16 = MEMORY[0x277D84F90];
    v58 = v18 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v59)
      {
        v24 = v18;
        v25 = MEMORY[0x2530ADF00](v22, v18);
        v26 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          goto LABEL_48;
        }
      }

      else
      {
        if (v22 >= *(v21 + 16))
        {
          goto LABEL_49;
        }

        v24 = v18;
        v25 = *(v18 + 8 * v22 + 32);

        v26 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
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
          swift_once();
LABEL_3:
          __swift_project_value_buffer(v57, qword_27F544D90);
          v61 = 0;
          v62 = 0xE000000000000000;
          sub_252E379F4();
          MEMORY[0x2530AD570](0xD00000000000002CLL, 0x8000000252E85E30);
          v60 = v6;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541ED0, &unk_252E3C480);
          sub_252E37AE4();
          sub_252CC4050(v61, v62, 0xD00000000000007ALL, 0x8000000252E85990, 0xD000000000000021, 0x8000000252E85E60, 636);

          sub_252929F10(v6, 1);
          v6 = MEMORY[0x277D84F90];
          goto LABEL_7;
        }
      }

      v27 = (*(*v25 + 336))();

      v28 = *(v27 + 16);
      v29 = *(v16 + 2);
      v30 = v29 + v28;
      if (__OFADD__(v29, v28))
      {
        goto LABEL_50;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v30 <= *(v16 + 3) >> 1)
      {
        if (*(v27 + 16))
        {
          goto LABEL_42;
        }
      }

      else
      {
        if (v29 <= v30)
        {
          v32 = v29 + v28;
        }

        else
        {
          v32 = v29;
        }

        v16 = sub_2529F7A6C(isUniquelyReferenced_nonNull_native, v32, 1, v16);
        if (*(v27 + 16))
        {
LABEL_42:
          v33 = *(v16 + 2);
          if ((*(v16 + 3) >> 1) - v33 < v28)
          {
            goto LABEL_52;
          }

          memcpy(&v16[8 * v33 + 32], (v27 + 32), 8 * v28);

          if (v28)
          {
            v34 = *(v16 + 2);
            v35 = __OFADD__(v34, v28);
            v36 = v34 + v28;
            if (v35)
            {
              goto LABEL_53;
            }

            *(v16 + 2) = v36;
          }

          goto LABEL_29;
        }
      }

      if (v28)
      {
        goto LABEL_51;
      }

LABEL_29:
      ++v22;
      v23 = v26 == a1;
      v21 = v58;
      v18 = v24;
      if (v23)
      {
        goto LABEL_57;
      }
    }
  }

  a1 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (a1)
  {
    goto LABEL_27;
  }

LABEL_56:
  v16 = MEMORY[0x277D84F90];
LABEL_57:
  sub_252929F10(v18, 0);
  if (qword_27F53F4F8 != -1)
  {
    swift_once();
  }

  v37 = v57;
  v38 = __swift_project_value_buffer(v57, qword_27F544D90);
  (*(v56 + 16))(v55, v38, v37);
  v61 = 0;
  v62 = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD00000000000003ALL, 0x8000000252E85DF0);
  v39 = *(v16 + 2);
  if (v39)
  {
    v40 = (v16 + 32);
    v41 = MEMORY[0x277D84F90];
    do
    {
      v42 = *v40++;
      v43 = HomeAttributeType.description.getter(v42);
      v45 = v44;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v41 = sub_2529F7A80(0, *(v41 + 2) + 1, 1, v41);
      }

      v47 = *(v41 + 2);
      v46 = *(v41 + 3);
      if (v47 >= v46 >> 1)
      {
        v41 = sub_2529F7A80((v46 > 1), v47 + 1, 1, v41);
      }

      *(v41 + 2) = v47 + 1;
      v48 = &v41[16 * v47];
      *(v48 + 4) = v43;
      *(v48 + 5) = v45;
      --v39;
    }

    while (v39);
  }

  else
  {
    v41 = MEMORY[0x277D84F90];
  }

  v49 = MEMORY[0x2530AD730](v41, MEMORY[0x277D837D0]);
  v51 = v50;

  MEMORY[0x2530AD570](v49, v51);

  v52 = v55;
  sub_252CC3D90(v61, v62, 0xD00000000000007ALL, 0x8000000252E85990);

  (*(v56 + 8))(v52, v57);
LABEL_69:
  v53 = sub_252DF9098(v16);

  sub_252BB00B0(v53);

  return v6;
}

uint64_t sub_252BB84E8()
{
  v1 = v0;
  v2 = sub_252E36AD4();
  v293 = *(v2 - 8);
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v273 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v273 - v7;
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v273 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v273 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v279 = &v273 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v282 = &v273 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  j = &v273 - v20;
  MEMORY[0x28223BE20](v19);
  v22 = &v273 - v21;
  v23 = v1[11];
  v323 = v1[10];
  v324 = v23;
  v325 = v1[12];
  v24 = v1[7];
  v319 = v1[6];
  v320 = v24;
  v25 = v1[8];
  v322 = v1[9];
  v321 = v25;
  v26 = v1[3];
  v315 = v1[2];
  v316 = v26;
  v27 = v1[4];
  v318 = v1[5];
  v317 = v27;
  v28 = v1[1];
  v313 = *v1;
  v314 = v28;
  LODWORD(v29) = *(v1 + 208);
  memcpy(v312, v1 + 209, sizeof(v312));
  if (v29 != 9 && (sub_252A0D524(v29, 4u) & 1) != 0)
  {
    return 0;
  }

  v278 = v14;
  v275 = v5;
  v31 = v1[11];
  v307 = v1[10];
  v308 = v31;
  v309 = v1[12];
  v32 = v1[7];
  v303 = v1[6];
  v304 = v32;
  v33 = v1[9];
  v305 = v1[8];
  v306 = v33;
  v34 = v1[3];
  v299 = v1[2];
  v300 = v34;
  v35 = v1[5];
  v301 = v1[4];
  v302 = v35;
  v36 = v1[1];
  v297 = *v1;
  v298 = v36;
  v310 = v29;
  memcpy(v311, v1 + 209, sizeof(v311));
  v37 = sub_252A10F24();
  i = sub_252BB00B0(v37);

  v39 = v1[11];
  v307 = v1[10];
  v308 = v39;
  v309 = v1[12];
  v40 = v1[7];
  v303 = v1[6];
  v304 = v40;
  v41 = v1[9];
  v305 = v1[8];
  v306 = v41;
  v42 = v1[3];
  v299 = v1[2];
  v300 = v42;
  v43 = v1[5];
  v301 = v1[4];
  v302 = v43;
  v44 = v1[1];
  v297 = *v1;
  v298 = v44;
  v310 = v29;
  memcpy(v311, v1 + 209, sizeof(v311));
  v283 = sub_252BAC7E4();
  v294 = sub_252BB7D58(v283);
  v291 = v45;
  if (qword_27F53F4F8 == -1)
  {
    goto LABEL_5;
  }

  while (2)
  {
    swift_once();
LABEL_5:
    v277 = v11;
    v274 = v8;
    v46 = __swift_project_value_buffer(v2, qword_27F544D90);
    v47 = *(v293 + 16);
    v290 = v46;
    v292 = v2;
    v287 = v47;
    v288 = v293 + 16;
    (v47)(v22);
    *&v297 = 0;
    *(&v297 + 1) = 0xE000000000000000;
    sub_252E379F4();

    v281 = 0xD000000000000012;
    *&v296 = 0xD000000000000012;
    *(&v296 + 1) = 0x8000000252E85A40;
    v307 = v323;
    v308 = v324;
    v309 = v325;
    v303 = v319;
    v304 = v320;
    v305 = v321;
    v306 = v322;
    v299 = v315;
    v300 = v316;
    v301 = v317;
    v302 = v318;
    v297 = v313;
    v298 = v314;
    v285 = v29;
    v310 = v29;
    memcpy(v311, v312, sizeof(v311));
    v48 = sub_252A10F24();
    v49 = *(v48 + 2);
    v280 = i;
    if (v49)
    {
      v50 = (v48 + 32);
      v2 = MEMORY[0x277D84F90];
      do
      {
        v51 = *v50++;
        v52 = HomeAttributeType.description.getter(v51);
        v54 = v53;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v2 = sub_2529F7A80(0, *(v2 + 16) + 1, 1, v2);
        }

        v56 = *(v2 + 16);
        v55 = *(v2 + 24);
        if (v56 >= v55 >> 1)
        {
          v2 = sub_2529F7A80((v55 > 1), v56 + 1, 1, v2);
        }

        *(v2 + 16) = v56 + 1;
        v57 = v2 + 16 * v56;
        *(v57 + 32) = v52;
        *(v57 + 40) = v54;
        --v49;
      }

      while (v49);
    }

    else
    {
      v2 = MEMORY[0x277D84F90];
    }

    v58 = MEMORY[0x2530AD730](v2, MEMORY[0x277D837D0]);
    v60 = v59;

    MEMORY[0x2530AD570](v58, v60);

    v289 = "esult";
    sub_252CC3D90(v296, *(&v296 + 1), 0xD00000000000007ALL, 0x8000000252E85990);

    v61 = *(v293 + 8);
    v62 = v292;
    v293 += 8;
    v286 = v61;
    v61(v22, v292);
    v287(j, v290, v62);
    *&v297 = 0;
    *(&v297 + 1) = 0xE000000000000000;
    sub_252E379F4();

    *&v297 = 0xD000000000000011;
    *(&v297 + 1) = 0x8000000252E85A60;
    v22 = v291;
    v8 = v291 + 64;
    v63 = 1 << v291[32];
    v64 = -1;
    if (v63 < 64)
    {
      v64 = ~(-1 << v63);
    }

    v29 = v64 & *(v291 + 8);
    v65 = (v63 + 63) >> 6;

    v11 = 0;
    for (i = MEMORY[0x277D84F90]; v29; v22 = v291)
    {
LABEL_21:
      v67 = (v11 << 9) | (8 * __clz(__rbit64(v29)));
      v68 = *(*(v22 + 56) + v67);
      *&v296 = HomeAttributeType.description.getter(*(*(v22 + 48) + v67));
      *(&v296 + 1) = v69;
      MEMORY[0x2530AD570](8250, 0xE200000000000000);
      v295 = v68;
      v70 = sub_252E37D94();
      MEMORY[0x2530AD570](v70);

      v2 = *(&v296 + 1);
      v71 = v296;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        i = sub_2529F7A80(0, *(i + 16) + 1, 1, i);
      }

      v73 = *(i + 16);
      v72 = *(i + 24);
      if (v73 >= v72 >> 1)
      {
        i = sub_2529F7A80((v72 > 1), v73 + 1, 1, i);
      }

      v29 &= v29 - 1;
      *(i + 16) = v73 + 1;
      v74 = i + 16 * v73;
      *(v74 + 32) = v71;
      *(v74 + 40) = v2;
    }

    while (1)
    {
      v66 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
LABEL_105:
        __break(1u);
        goto LABEL_106;
      }

      if (v66 >= v65)
      {
        break;
      }

      v29 = *&v8[8 * v66];
      ++v11;
      if (v29)
      {
        v11 = v66;
        goto LABEL_21;
      }
    }

    v75 = MEMORY[0x2530AD730](i, MEMORY[0x277D837D0]);
    v77 = v76;

    MEMORY[0x2530AD570](v75, v77);

    v78 = j;
    sub_252CC3D90(v297, *(&v297 + 1), 0xD00000000000007ALL, v289 | 0x8000000000000000);

    v79 = v292;
    v80 = v286(v78, v292);
    v81 = v280;
    v82 = *(v280 + 16);
    if (*(v22 + 16))
    {
      v83 = v285;
      v84 = v281;
      if (!v82)
      {
        v80 = sub_252BAFB3C(v283);
        if (v80)
        {

          *&v297 = 0;
          *(&v297 + 1) = 0xE000000000000000;
          sub_252E379F4();
          v296 = v297;
          MEMORY[0x2530AD570](0xD000000000000038, 0x8000000252E85C20);
          v307 = v323;
          v308 = v324;
          v309 = v325;
          v303 = v319;
          v304 = v320;
          v305 = v321;
          v306 = v322;
          v299 = v315;
          v300 = v316;
          v301 = v317;
          v302 = v318;
          v297 = v313;
          v298 = v314;
          v310 = v83;
          memcpy(v311, v312, sizeof(v311));
          v85 = HomeAutomationIntent.description.getter();
          MEMORY[0x2530AD570](v85);

          v86 = v296;
          v87 = v289 | 0x8000000000000000;
          v88 = *(&v296 + 1);
          v89 = v84;
          v90 = 673;
          goto LABEL_103;
        }
      }
    }

    else
    {
      v91 = v285;
      v92 = v281;
      if (!v82)
      {

        *&v297 = 0;
        *(&v297 + 1) = 0xE000000000000000;
        sub_252E379F4();

        *&v296 = 0xD000000000000022;
        *(&v296 + 1) = 0x8000000252E85C60;
        v307 = v323;
        v308 = v324;
        v309 = v325;
        v303 = v319;
        v304 = v320;
        v305 = v321;
        v306 = v322;
        v299 = v315;
        v300 = v316;
        v301 = v317;
        v302 = v318;
        v297 = v313;
        v298 = v314;
        v310 = v91;
        memcpy(v311, v312, sizeof(v311));
        v155 = HomeAutomationIntent.description.getter();
        MEMORY[0x2530AD570](v155);

        v86 = v296;
        v87 = v289 | 0x8000000000000000;
        v88 = *(&v296 + 1);
        v89 = v92;
        v90 = 668;
LABEL_103:
        sub_252CC4050(v86, v88, 0xD00000000000007ALL, v87, v89, 0x8000000252E85B20, v90);

        return 0;
      }
    }

    v2 = &v273;
    MEMORY[0x28223BE20](v80);
    *(&v273 - 2) = v22;

    v8 = sub_252BBF018(v93, sub_252BBF450);

    v94 = *(v8 + 2);
    v276 = 0;
    if (v94)
    {
    }

    else
    {

      if (*(v81 + 2))
      {
        v8 = v81;
      }

      else
      {
        v8 = v22;
      }
    }

    v287(v282, v290, v79);
    *&v297 = 0;
    *(&v297 + 1) = 0xE000000000000000;
    sub_252E379F4();

    j = 0xD00000000000001ELL;
    *&v297 = 0xD00000000000001ELL;
    *(&v297 + 1) = 0x8000000252E85A80;
    v95 = v8 + 64;
    v96 = 1 << v8[32];
    v97 = -1;
    if (v96 < 64)
    {
      v97 = ~(-1 << v96);
    }

    v29 = v97 & *(v8 + 8);
    v98 = (v96 + 63) >> 6;

    v22 = 0;
    v11 = MEMORY[0x277D84F90];
    v291 = v8;
    if (v29)
    {
      goto LABEL_44;
    }

    while (1)
    {
      v99 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        goto LABEL_105;
      }

      if (v99 >= v98)
      {
        break;
      }

      v29 = *&v95[8 * v99];
      ++v22;
      if (v29)
      {
        v22 = v99;
        do
        {
LABEL_44:
          v100 = (v22 << 9) | (8 * __clz(__rbit64(v29)));
          v101 = *(*(v8 + 7) + v100);
          *&v296 = HomeAttributeType.description.getter(*(*(v8 + 6) + v100));
          *(&v296 + 1) = v102;
          MEMORY[0x2530AD570](8250, 0xE200000000000000);
          v295 = v101;
          v103 = sub_252E37D94();
          MEMORY[0x2530AD570](v103);

          v2 = *(&v296 + 1);
          v104 = v296;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v11 = sub_2529F7A80(0, *(v11 + 16) + 1, 1, v11);
          }

          i = *(v11 + 16);
          v105 = *(v11 + 24);
          if (i >= v105 >> 1)
          {
            v11 = sub_2529F7A80((v105 > 1), i + 1, 1, v11);
          }

          v29 &= v29 - 1;
          *(v11 + 16) = i + 1;
          v106 = v11 + 16 * i;
          *(v106 + 32) = v104;
          *(v106 + 40) = v2;
          v8 = v291;
        }

        while (v29);
      }
    }

    v107 = MEMORY[0x2530AD730](v11, MEMORY[0x277D837D0]);
    v29 = v108;

    MEMORY[0x2530AD570](v107, v29);

    v109 = v282;
    sub_252CC3D90(v297, *(&v297 + 1), 0xD00000000000007ALL, v289 | 0x8000000000000000);

    v110 = v292;
    v286(v109, v292);
    v2 = v285;
    if (v285 == 9 || (sub_252A0D524(v285, 0) & 1) == 0)
    {
      v11 = v8;
    }

    else
    {
      v111 = v276;
      v2 = sub_252BBE2C0(v8, sub_252BBE604, sub_252BBE604);
      v276 = v111;

      v287(v279, v290, v110);
      *&v297 = 0;
      *(&v297 + 1) = 0xE000000000000000;
      sub_252E379F4();

      *&v297 = j;
      *(&v297 + 1) = 0x8000000252E85C00;
      v112 = v2 + 64;
      v113 = 1 << *(v2 + 32);
      v114 = -1;
      if (v113 < 64)
      {
        v114 = ~(-1 << v113);
      }

      i = v114 & *(v2 + 64);
      v8 = ((v113 + 63) >> 6);
      v291 = v2;

      v115 = 0;
      v11 = MEMORY[0x277D84F90];
      if (i)
      {
        goto LABEL_59;
      }

      while (1)
      {
        v116 = v115 + 1;
        if (__OFADD__(v115, 1))
        {
          goto LABEL_107;
        }

        if (v116 >= v8)
        {
          break;
        }

        i = *(v112 + 8 * v116);
        ++v115;
        if (i)
        {
          v115 = v116;
          do
          {
LABEL_59:
            v117 = (v115 << 9) | (8 * __clz(__rbit64(i)));
            v118 = *(*(v291 + 7) + v117);
            *&v296 = HomeAttributeType.description.getter(*(*(v291 + 6) + v117));
            *(&v296 + 1) = v119;
            MEMORY[0x2530AD570](8250, 0xE200000000000000);
            v295 = v118;
            v120 = sub_252E37D94();
            MEMORY[0x2530AD570](v120);

            v29 = *(&v296 + 1);
            v22 = v296;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v11 = sub_2529F7A80(0, *(v11 + 16) + 1, 1, v11);
            }

            v2 = *(v11 + 16);
            v121 = *(v11 + 24);
            if (v2 >= v121 >> 1)
            {
              v11 = sub_2529F7A80((v121 > 1), v2 + 1, 1, v11);
            }

            i &= i - 1;
            *(v11 + 16) = v2 + 1;
            v122 = v11 + 16 * v2;
            *(v122 + 32) = v22;
            *(v122 + 40) = v29;
          }

          while (i);
        }
      }

      v123 = v291;

      v124 = MEMORY[0x2530AD730](v11, MEMORY[0x277D837D0]);
      v126 = v125;
      v11 = v123;

      MEMORY[0x2530AD570](v124, v126);

      v127 = v279;
      sub_252CC3D90(v297, *(&v297 + 1), 0xD00000000000007ALL, v289 | 0x8000000000000000);

      v110 = v292;
      v286(v127, v292);
      v2 = v285;
    }

    v128 = v294;
    v129 = *(v11 + 16);
    v291 = v11;
    if (v129)
    {
      if (v129 != 1)
      {
        goto LABEL_83;
      }

      v287(v278, v290, v110);
      *&v297 = 0;
      *(&v297 + 1) = 0xE000000000000000;
      sub_252E379F4();

      *&v297 = j;
      *(&v297 + 1) = 0x8000000252E85BE0;
      v130 = v11 + 64;
      v131 = 1 << *(v11 + 32);
      v132 = -1;
      if (v131 < 64)
      {
        v132 = ~(-1 << v131);
      }

      i = v132 & *(v11 + 64);
      v8 = ((v131 + 63) >> 6);

      v22 = 0;
      v29 = MEMORY[0x277D84F90];
      if (i)
      {
        goto LABEL_76;
      }

      while (1)
      {
        v133 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          break;
        }

        if (v133 >= v8)
        {

          v148 = MEMORY[0x2530AD730](v29, MEMORY[0x277D837D0]);
          v150 = v149;

          MEMORY[0x2530AD570](v148, v150);

          v151 = v278;
          sub_252CC3D90(v297, *(&v297 + 1), 0xD00000000000007ALL, v289 | 0x8000000000000000);

          v286(v151, v110);
          v152 = sub_252DA0A14(v11);
          v154 = v153;
          goto LABEL_253;
        }

        i = *(v130 + 8 * v133);
        ++v22;
        if (i)
        {
          v22 = v133;
          do
          {
LABEL_76:
            v134 = (v22 << 9) | (8 * __clz(__rbit64(i)));
            v135 = *(*(v11 + 56) + v134);
            *&v296 = HomeAttributeType.description.getter(*(*(v11 + 48) + v134));
            *(&v296 + 1) = v136;
            MEMORY[0x2530AD570](8250, 0xE200000000000000);
            v295 = v135;
            v137 = sub_252E37D94();
            MEMORY[0x2530AD570](v137);

            v138 = *(&v296 + 1);
            v2 = v296;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v29 = sub_2529F7A80(0, *(v29 + 16) + 1, 1, v29);
            }

            v140 = *(v29 + 16);
            v139 = *(v29 + 24);
            if (v140 >= v139 >> 1)
            {
              v29 = sub_2529F7A80((v139 > 1), v140 + 1, 1, v29);
            }

            i &= i - 1;
            *(v29 + 16) = v140 + 1;
            v141 = v29 + 16 * v140;
            *(v141 + 32) = v2;
            *(v141 + 40) = v138;
            v11 = v291;
            v110 = v292;
          }

          while (i);
        }
      }

LABEL_106:
      __break(1u);
LABEL_107:
      __break(1u);
LABEL_108:
      __break(1u);
LABEL_109:
      __break(1u);
      continue;
    }

    break;
  }

  *&v297 = 0;
  *(&v297 + 1) = 0xE000000000000000;
  sub_252E379F4();

  *&v296 = 0xD000000000000021;
  *(&v296 + 1) = 0x8000000252E85BB0;
  v307 = v323;
  v308 = v324;
  v309 = v325;
  v303 = v319;
  v304 = v320;
  v305 = v321;
  v306 = v322;
  v299 = v315;
  v300 = v316;
  v301 = v317;
  v302 = v318;
  v297 = v313;
  v298 = v314;
  v310 = v2;
  v128 = v294;
  memcpy(v311, v312, sizeof(v311));
  v142 = HomeAutomationIntent.description.getter();
  MEMORY[0x2530AD570](v142);

  sub_252CC4050(v296, *(&v296 + 1), 0xD00000000000007ALL, v289 | 0x8000000000000000, v281, 0x8000000252E85B20, 701);

LABEL_83:
  v29 = v128 >> 62;
  v282 = (v128 >> 62);
  if (!(v128 >> 62))
  {
    v143 = v128 & 0xFFFFFFFFFFFFFF8;
    v11 = *(v143 + 16);
    if (v11 <= 1)
    {
      goto LABEL_117;
    }

    *&v297 = MEMORY[0x277D84F90];
LABEL_86:
    i = 0;
    v8 = (v294 & 0xC000000000000001);
    v144 = MEMORY[0x277D84F90];
    v22 = &off_279711000;
    while (1)
    {
      v2 = i;
      while (1)
      {
        if (v8)
        {
          v29 = MEMORY[0x2530ADF00](v2, v294);
          i = v2 + 1;
          if (__OFADD__(v2, 1))
          {
            goto LABEL_108;
          }
        }

        else
        {
          if (v2 >= *(v143 + 16))
          {
            goto LABEL_109;
          }

          v29 = *(v294 + 8 * v2 + 32);

          i = v2 + 1;
          if (__OFADD__(v2, 1))
          {
            goto LABEL_108;
          }
        }

        v145 = [*(v29 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) accessory];
        if (v145)
        {
          break;
        }

        ++v2;
        if (i == v11)
        {
          goto LABEL_114;
        }
      }

      v146 = v145;
      type metadata accessor for Accessory(0);
      swift_allocObject();
      sub_252D4CE7C(v146);

      MEMORY[0x2530AD700](v147);
      if (*((v297 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v297 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v29 = *((v297 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_252E372A4();
      }

      sub_252E372D4();
      v144 = v297;
      if (i == v11)
      {
        goto LABEL_114;
      }
    }
  }

  v143 = v128 & 0xFFFFFFFFFFFFFF8;
  if (sub_252E378C4() < 2)
  {
LABEL_117:
    v158 = 0;
    goto LABEL_118;
  }

  *&v297 = MEMORY[0x277D84F90];
  v11 = sub_252E378C4();
  if (v11)
  {
    goto LABEL_86;
  }

  v144 = MEMORY[0x277D84F90];
LABEL_114:
  v156 = sub_252DF90B0(v144);

  v29 = v282;
  if (!(v156 >> 62))
  {
    v157 = *((v156 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_116;
  }

  while (2)
  {
    v157 = sub_252E378C4();
LABEL_116:

    v158 = v157 == 1;
LABEL_118:
    KeyPath = swift_getKeyPath();
    v160 = sub_2529304DC(KeyPath, v283);

    if ((v160 & 1) == 0)
    {
      v161 = swift_getKeyPath();
      v160 = sub_252BAF91C(v161, v283);

      if (((v160 | v158) & 1) == 0)
      {
        v178 = v294;
        goto LABEL_216;
      }
    }

    *&v297 = MEMORY[0x277D84F90];
    if (v29)
    {
      v162 = v294;
      v163 = sub_252E378C4();
      if (v163)
      {
        goto LABEL_124;
      }

      goto LABEL_147;
    }

    v162 = v294;
    v163 = *((v294 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v163)
    {
      goto LABEL_147;
    }

LABEL_124:
    v164 = 0;
    v165 = v162 & 0xC000000000000001;
    v166 = v162 & 0xFFFFFFFFFFFFFF8;
    while (2)
    {
      if (v165)
      {
        v167 = MEMORY[0x2530ADF00](v164, v162);
        v168 = v164 + 1;
        if (!__OFADD__(v164, 1))
        {
          goto LABEL_128;
        }

        break;
      }

      if (v164 >= *(v166 + 16))
      {
        __break(1u);
LABEL_162:
        __break(1u);
        goto LABEL_163;
      }

      v167 = *(v162 + 8 * v164 + 32);

      v168 = v164 + 1;
      if (!__OFADD__(v164, 1))
      {
LABEL_128:
        v169 = [*(v167 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) accessory];
        if (v169 && (v170 = v169, type metadata accessor for Accessory(0), swift_allocObject(), v160 = sub_252D4CE7C(v170), v171 = sub_252D4DFC8(), , v171))
        {
          v160 = OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier;

          if ((sub_252E32E54() & 1) == 0 || *(v171 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType) != *(v167 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType))
          {

            goto LABEL_139;
          }

          if (*(v171 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name) == *(v167 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name) && *(v171 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8) == *(v167 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8))
          {
          }

          else
          {
            v160 = sub_252E37DB4();

            if ((v160 & 1) == 0)
            {
              goto LABEL_139;
            }
          }

          sub_252E37A94();
          v160 = *(v297 + 16);
          sub_252E37AC4();
          sub_252E37AD4();
          sub_252E37AA4();
        }

        else
        {
LABEL_139:
        }

        ++v164;
        v162 = v294;
        if (v168 == v163)
        {
          goto LABEL_147;
        }

        continue;
      }

      break;
    }

    __break(1u);
LABEL_147:
    v160 = v297;
    *&v297 = MEMORY[0x277D84F90];
    if (v160 < 0 || (v160 & 0x4000000000000000) != 0)
    {
LABEL_163:
      v29 = sub_252E378C4();
      v173 = v292;
      if (!v29)
      {
        goto LABEL_164;
      }

LABEL_150:
      v174 = 0;
      while (1)
      {
        if ((v160 & 0xC000000000000001) != 0)
        {
          MEMORY[0x2530ADF00](v174, v160);
          v175 = v174 + 1;
          if (__OFADD__(v174, 1))
          {
            goto LABEL_158;
          }
        }

        else
        {
          if (v174 >= *(v160 + 16))
          {
            goto LABEL_162;
          }

          v175 = v174 + 1;
          if (__OFADD__(v174, 1))
          {
LABEL_158:
            __break(1u);
LABEL_159:
            v177 = v297;
            v173 = v292;
            goto LABEL_165;
          }
        }

        v176 = sub_252CD95D8();

        sub_25297A864(v176);
        ++v174;
        if (v175 == v29)
        {
          goto LABEL_159;
        }
      }
    }

    v29 = *(v160 + 16);
    v173 = v292;
    if (v29)
    {
      goto LABEL_150;
    }

LABEL_164:
    v177 = MEMORY[0x277D84F90];
LABEL_165:

    v179 = *(v177 + 16);
    if (!v179)
    {

      v178 = v294;
      v29 = v282;
      goto LABEL_216;
    }

    v280 = v177;
    v287(v277, v290, v173);
    *&v297 = 0;
    *(&v297 + 1) = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000047, 0x8000000252E85AA0);
    v180 = v291 + 64;
    v181 = 1 << v291[32];
    v182 = -1;
    if (v181 < 64)
    {
      v182 = ~(-1 << v181);
    }

    v183 = v182 & *(v291 + 8);
    v184 = (v181 + 63) >> 6;

    v185 = 0;
    v186 = MEMORY[0x277D84F90];
    for (j = v180; v183; v180 = j)
    {
LABEL_173:
      v188 = HomeAttributeType.description.getter(*(*(v291 + 6) + ((v185 << 9) | (8 * __clz(__rbit64(v183))))));
      v29 = v189;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v186 = sub_2529F7A80(0, *(v186 + 2) + 1, 1, v186);
      }

      v191 = *(v186 + 2);
      v190 = *(v186 + 3);
      if (v191 >= v190 >> 1)
      {
        v186 = sub_2529F7A80((v190 > 1), v191 + 1, 1, v186);
      }

      v183 &= v183 - 1;
      *(v186 + 2) = v191 + 1;
      v192 = &v186[16 * v191];
      *(v192 + 4) = v188;
      *(v192 + 5) = v29;
      v173 = v292;
    }

    while (2)
    {
      v187 = v185 + 1;
      if (__OFADD__(v185, 1))
      {
        __break(1u);
LABEL_257:
        __break(1u);
LABEL_258:
        __break(1u);
        goto LABEL_259;
      }

      if (v187 < v184)
      {
        v183 = *&v180[8 * v187];
        ++v185;
        if (!v183)
        {
          continue;
        }

        v185 = v187;
        goto LABEL_173;
      }

      break;
    }

    v193 = MEMORY[0x2530AD730](v186, MEMORY[0x277D837D0]);
    v195 = v194;

    MEMORY[0x2530AD570](v193, v195);

    MEMORY[0x2530AD570](0xD00000000000002DLL, 0x8000000252E85AF0);
    v196 = MEMORY[0x277D84F90];
    v197 = 32;
    v198 = v280;
    do
    {
      v199 = HomeAttributeType.description.getter(*(v198 + v197));
      v201 = v200;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v196 = sub_2529F7A80(0, *(v196 + 2) + 1, 1, v196);
      }

      v203 = *(v196 + 2);
      v202 = *(v196 + 3);
      if (v203 >= v202 >> 1)
      {
        v196 = sub_2529F7A80((v202 > 1), v203 + 1, 1, v196);
      }

      *(v196 + 2) = v203 + 1;
      v204 = &v196[16 * v203];
      *(v204 + 4) = v199;
      *(v204 + 5) = v201;
      v197 += 8;
      --v179;
    }

    while (v179);
    v205 = MEMORY[0x2530AD730](v196, MEMORY[0x277D837D0]);
    v29 = v206;

    MEMORY[0x2530AD570](v205, v29);

    v207 = v277;
    sub_252CC4050(v297, *(&v297 + 1), 0xD00000000000007ALL, v289 | 0x8000000000000000, v281, 0x8000000252E85B20, 711);

    v286(v207, v173);
    v208 = v291;

    v209 = sub_252BBF2A0(v208, v198);

    swift_bridgeObjectRelease_n();
    if (v209[2])
    {

      v210 = v209[2];
      v291 = v209;
      goto LABEL_202;
    }

    v287(v274, v290, v173);
    *&v297 = 0;
    *(&v297 + 1) = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000048, 0x8000000252E85B60);
    v211 = 1 << *(v208 + 32);
    v212 = -1;
    if (v211 < 64)
    {
      v212 = ~(-1 << v211);
    }

    v213 = v212 & *(v208 + 64);
    v214 = (v211 + 63) >> 6;

    v215 = 0;
    v216 = MEMORY[0x277D84F90];
    for (k = j; v213; k = j)
    {
LABEL_195:
      v219 = HomeAttributeType.description.getter(*(*(v291 + 6) + ((v215 << 9) | (8 * __clz(__rbit64(v213))))));
      v221 = v220;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v216 = sub_2529F7A80(0, *(v216 + 2) + 1, 1, v216);
      }

      v223 = *(v216 + 2);
      v222 = *(v216 + 3);
      v29 = v223 + 1;
      if (v223 >= v222 >> 1)
      {
        v216 = sub_2529F7A80((v222 > 1), v223 + 1, 1, v216);
      }

      v213 &= v213 - 1;
      *(v216 + 2) = v29;
      v224 = &v216[16 * v223];
      *(v224 + 4) = v219;
      *(v224 + 5) = v221;
    }

    while (2)
    {
      v218 = v215 + 1;
      if (__OFADD__(v215, 1))
      {
        goto LABEL_260;
      }

      if (v218 < v214)
      {
        v213 = *&k[8 * v218];
        ++v215;
        if (!v213)
        {
          continue;
        }

        v215 = v218;
        goto LABEL_195;
      }

      break;
    }

    v225 = v291;

    v226 = MEMORY[0x2530AD730](v216, MEMORY[0x277D837D0]);
    v228 = v227;

    MEMORY[0x2530AD570](v226, v228);

    v229 = v274;
    sub_252CC4050(v297, *(&v297 + 1), 0xD00000000000007ALL, v289 | 0x8000000000000000, v281, 0x8000000252E85B20, 718);

    v173 = v292;
    v286(v229, v292);
    v210 = *(v225 + 2);
LABEL_202:
    v178 = v294;
    v29 = v282;
    if (v210 != 1)
    {
LABEL_216:
      v246 = sub_252BAFC18(v283);

      if (v29)
      {
        result = sub_252E378C4();
        v247 = result;
      }

      else
      {
        v247 = *((v178 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v248 = v285;
      v29 = v291;
      if (v247)
      {
        v290 = v246;
        v249 = 0;
        v250 = v178 & 0xC000000000000001;
        v292 = v178 & 0xC000000000000001;
        v293 = v178 & 0xFFFFFFFFFFFFFF8;
        do
        {
          if (v247 == v249)
          {
            if (v250)
            {
              MEMORY[0x2530ADF00](0, v178);
              v248 = v285;
              v29 = v291;
            }

            else
            {
              v248 = v285;
              v29 = v291;
              if (!*(v293 + 16))
              {
                __break(1u);
                return result;
              }
            }

            v246 = sub_252CD941C();

            goto LABEL_249;
          }

          if (v250)
          {
            v252 = MEMORY[0x2530ADF00](v249, v178);
            if (__OFADD__(v249, 1))
            {
              goto LABEL_257;
            }
          }

          else
          {
            if (v249 >= *(v293 + 16))
            {
              goto LABEL_258;
            }

            v252 = *(v178 + 8 * v249 + 32);

            if (__OFADD__(v249, 1))
            {
              goto LABEL_257;
            }
          }

          v253 = [*(v252 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) serviceType];
          v254 = sub_252E36F34();
          v29 = v255;

          if (qword_27F53F8B8 != -1)
          {
            swift_once();
          }

          v256 = off_27F546230;
          if (*(off_27F546230 + 2) && (v257 = sub_252A44A10(v254, v29), (v258 & 1) != 0))
          {
            v259 = *(v256[7] + 8 * v257);
          }

          else
          {
            v259 = 0;
          }

          if (v250)
          {
            v29 = MEMORY[0x2530ADF00](0, v178);
          }

          else
          {
            if (!*(v293 + 16))
            {
              goto LABEL_261;
            }

            v29 = *(v178 + 32);
          }

          v260 = [*(v29 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) serviceType];
          v261 = sub_252E36F34();
          v263 = v262;

          if (v256[2] && (v264 = sub_252A44A10(v261, v263), (v265 & 1) != 0))
          {
            v251 = *(v256[7] + 8 * v264);
          }

          else
          {

            v251 = 0;
          }

          v250 = v292;
          ++v249;
          v178 = v294;
        }

        while (v259 == v251);

        v248 = v285;
        v246 = v290;
        v29 = v291;
      }

      else
      {
      }

LABEL_249:
      v307 = v323;
      v308 = v324;
      v309 = v325;
      v303 = v319;
      v304 = v320;
      v305 = v321;
      v306 = v322;
      v299 = v315;
      v300 = v316;
      v301 = v317;
      v302 = v318;
      v297 = v313;
      v298 = v314;
      v310 = v248;
      memcpy(v311, v312, sizeof(v311));
      if (sub_252A12D08())
      {

        return 67;
      }

      else
      {
        v307 = v323;
        v308 = v324;
        v309 = v325;
        v303 = v319;
        v304 = v320;
        v305 = v321;
        v306 = v322;
        v299 = v315;
        v300 = v316;
        v301 = v317;
        v302 = v318;
        v297 = v313;
        v298 = v314;
        v310 = v248;
        memcpy(v311, v312, sizeof(v311));
        v266 = sub_252BBA91C(v29, v246);

        return v266;
      }
    }

    v287(v275, v290, v173);
    *&v297 = 0;
    *(&v297 + 1) = 0xE000000000000000;
    sub_252E379F4();

    *&v297 = 0xD000000000000018;
    *(&v297 + 1) = 0x8000000252E85B40;
    v230 = v291 + 64;
    v231 = 1 << v291[32];
    v232 = -1;
    if (v231 < 64)
    {
      v232 = ~(-1 << v231);
    }

    v233 = v232 & *(v291 + 8);
    v234 = (v231 + 63) >> 6;

    v235 = 0;
    for (m = MEMORY[0x277D84F90]; v233; *(v245 + 5) = v29)
    {
LABEL_210:
      v238 = (v235 << 9) | (8 * __clz(__rbit64(v233)));
      v239 = *(*(v291 + 7) + v238);
      *&v296 = HomeAttributeType.description.getter(*(*(v291 + 6) + v238));
      *(&v296 + 1) = v240;
      MEMORY[0x2530AD570](8250, 0xE200000000000000);
      v295 = v239;
      v241 = sub_252E37D94();
      MEMORY[0x2530AD570](v241);

      v29 = *(&v296 + 1);
      v242 = v296;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        m = sub_2529F7A80(0, *(m + 2) + 1, 1, m);
      }

      v244 = *(m + 2);
      v243 = *(m + 3);
      if (v244 >= v243 >> 1)
      {
        m = sub_2529F7A80((v243 > 1), v244 + 1, 1, m);
      }

      v233 &= v233 - 1;
      *(m + 2) = v244 + 1;
      v245 = &m[16 * v244];
      *(v245 + 4) = v242;
    }

LABEL_206:
    v237 = v235 + 1;
    if (__OFADD__(v235, 1))
    {
LABEL_259:
      __break(1u);
LABEL_260:
      __break(1u);
LABEL_261:
      __break(1u);
      continue;
    }

    break;
  }

  if (v237 < v234)
  {
    v233 = *&v230[8 * v237];
    ++v235;
    if (!v233)
    {
      goto LABEL_206;
    }

    v235 = v237;
    goto LABEL_210;
  }

  v267 = v291;

  v268 = MEMORY[0x2530AD730](m, MEMORY[0x277D837D0]);
  v270 = v269;

  MEMORY[0x2530AD570](v268, v270);

  v271 = v275;
  sub_252CC3D90(v297, *(&v297 + 1), 0xD00000000000007ALL, v289 | 0x8000000000000000);

  v286(v271, v292);
  v152 = sub_252DA0A14(v267);
  v154 = v272;
LABEL_253:

  if (v154)
  {
    return 0;
  }

  else
  {
    return v152;
  }
}

uint64_t sub_252BBA880(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  v4 = 1 << *(a3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a3 + 64);
  v7 = (v4 + 63) >> 6;
  while (v6)
  {
    v8 = v3;
LABEL_10:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    if (*(*(a3 + 48) + ((v8 << 9) | (8 * v9))) == result)
    {
      return 1;
    }
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= v7)
    {
      return 0;
    }

    v6 = *(a3 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

char *sub_252BBA91C(char *a1, uint64_t a2)
{
  v91 = a2;
  v4 = sub_252E36AD4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v94 = &v89 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v89 - v8;
  v10 = v2[3];
  v129 = v2[2];
  v130 = v10;
  v131 = v2[4];
  v11 = v2[1];
  v127 = *v2;
  v128 = v11;
  v12 = *(v2 + 24);
  v126 = *(v2 + 23);
  v13 = *(v2 + 10);
  v101 = v12;
  v102 = v13;
  v14 = *(v2 + 136);
  v15 = *(v2 + 168);
  v124 = *(v2 + 152);
  v125 = v15;
  v16 = *(v2 + 104);
  v120 = *(v2 + 88);
  v121 = v16;
  v122 = *(v2 + 120);
  v123 = v14;
  memcpy(v119, v2 + 200, sizeof(v119));
  v17 = qword_27F53F4F8;

  if (v17 == -1)
  {
    goto LABEL_2;
  }

LABEL_83:
  swift_once();
LABEL_2:
  v18 = __swift_project_value_buffer(v4, qword_27F544D90);
  v98 = v4;
  v99 = v5;
  v19 = *(v5 + 16);
  v5 += 16;
  v95 = v9;
  v97 = v18;
  v92 = v19;
  v93 = v5;
  (v19)(v9);
  *&v104 = 0;
  *(&v104 + 1) = 0xE000000000000000;
  sub_252E379F4();

  *&v104 = 0xD000000000000028;
  *(&v104 + 1) = 0x8000000252E85C90;
  v20 = a1 + 64;
  v21 = 1 << a1[32];
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & *(a1 + 8);
  v4 = (v21 + 63) >> 6;

  v24 = 0;
  v25 = MEMORY[0x277D84F90];
  for (i = a1; v23; a1 = i)
  {
LABEL_9:
    v9 = HomeAttributeType.description.getter(*(*(a1 + 6) + ((v24 << 9) | (8 * __clz(__rbit64(v23))))));
    v28 = v27;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v25 = sub_2529F7A80(0, *(v25 + 2) + 1, 1, v25);
    }

    v30 = *(v25 + 2);
    v29 = *(v25 + 3);
    v5 = v30 + 1;
    if (v30 >= v29 >> 1)
    {
      v25 = sub_2529F7A80((v29 > 1), v30 + 1, 1, v25);
    }

    v23 &= v23 - 1;
    *(v25 + 2) = v5;
    v31 = &v25[16 * v30];
    *(v31 + 4) = v9;
    *(v31 + 5) = v28;
  }

  while (1)
  {
    v26 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
      goto LABEL_83;
    }

    if (v26 >= v4)
    {
      break;
    }

    v23 = *&v20[8 * v26];
    ++v24;
    if (v23)
    {
      v24 = v26;
      goto LABEL_9;
    }
  }

  v32 = MEMORY[0x2530AD730](v25, MEMORY[0x277D837D0]);
  v34 = v33;

  MEMORY[0x2530AD570](v32, v34);

  v35 = v95;
  sub_252CC3D90(v104, *(&v104 + 1), 0xD00000000000007ALL, 0x8000000252E85990);

  v5 = v98;
  v36 = v99 + 8;
  v37 = *(v99 + 8);
  v37(v35, v98);
  v106 = v129;
  v107 = v130;
  v108 = v131;
  v104 = v127;
  v105 = v128;
  v113 = v123;
  v114 = v124;
  v115 = v125;
  v110 = v120;
  v111 = v121;
  v109 = v102;
  v112 = v122;
  v116 = v126;
  v117 = v101;
  memcpy(v118, v119, sizeof(v118));
  v38 = sub_252A10A34();
  v96 = "esult";
  if (v38)
  {
    v90 = v37;
    v99 = v36;
    v39 = v97;
    sub_252CC3D90(0xD00000000000004BLL, 0x8000000252E85D70, 0xD00000000000007ALL, 0x8000000252E85990);
    v9 = sub_252BBE2C0(a1, sub_252BBE430, sub_252BBE430);
    v95 = 0;

    v92(v94, v39, v5);
    *&v104 = 0;
    *(&v104 + 1) = 0xE000000000000000;
    sub_252E379F4();

    *&v104 = 0xD000000000000021;
    *(&v104 + 1) = 0x8000000252E85DC0;
    a1 = v9 + 64;
    v40 = 1 << v9[32];
    v41 = -1;
    if (v40 < 64)
    {
      v41 = ~(-1 << v40);
    }

    v42 = v41 & *(v9 + 8);
    v4 = (v40 + 63) >> 6;

    v43 = 0;
    v44 = MEMORY[0x277D84F90];
    if (v42)
    {
      goto LABEL_23;
    }

    while (1)
    {
      v45 = v43 + 1;
      if (__OFADD__(v43, 1))
      {
        goto LABEL_80;
      }

      if (v45 >= v4)
      {
        break;
      }

      v42 = *&a1[8 * v45];
      ++v43;
      if (v42)
      {
        v43 = v45;
        do
        {
LABEL_23:
          v46 = HomeAttributeType.description.getter(*(*(v9 + 6) + ((v43 << 9) | (8 * __clz(__rbit64(v42))))));
          v48 = v47;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          i = v48;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v44 = sub_2529F7A80(0, *(v44 + 2) + 1, 1, v44);
          }

          v51 = *(v44 + 2);
          v50 = *(v44 + 3);
          v5 = v51 + 1;
          if (v51 >= v50 >> 1)
          {
            v44 = sub_2529F7A80((v50 > 1), v51 + 1, 1, v44);
          }

          v42 &= v42 - 1;
          *(v44 + 2) = v5;
          v52 = &v44[16 * v51];
          v53 = i;
          *(v52 + 4) = v46;
          *(v52 + 5) = v53;
        }

        while (v42);
      }
    }

    v54 = MEMORY[0x2530AD730](v44, MEMORY[0x277D837D0]);
    v56 = v55;

    MEMORY[0x2530AD570](v54, v56);

    v5 = *(&v104 + 1);
    v57 = v94;
    sub_252CC3D90(v104, *(&v104 + 1), 0xD00000000000007ALL, v96 | 0x8000000000000000);

    v90(v57, v98);
  }

  else
  {
    v95 = 0;
    v9 = a1;
  }

  v58 = *(v102 + 16);
  if (v58)
  {
    if (qword_27F53F3A0 != -1)
    {
      swift_once();
    }

    v4 = 0;
    i = (v102 + 32);
    v59 = qword_27F575910;
    while (v4 < *(v102 + 16))
    {
      if (*(v59 + 16))
      {
        v60 = i[v4];
        v61 = sub_252A4525C(v60);
        if (v62)
        {
          v63 = *(*(v59 + 56) + 8 * v61);
          v64 = *(v63 + 16);
          if (v64)
          {
            v5 = v63 + 32;
            while (1)
            {
              if (*(v9 + 2))
              {
                a1 = *v5;
                sub_252A488EC();
                if (v65)
                {
                  break;
                }
              }

              v5 += 8;
              if (!--v64)
              {
                goto LABEL_35;
              }
            }

            *&v104 = 0;
            *(&v104 + 1) = 0xE000000000000000;
            sub_252E379F4();

            *&v104 = 0x676E696B63695022;
            *(&v104 + 1) = 0xE900000000000020;
            v66 = HomeAttributeType.description.getter(a1);
            MEMORY[0x2530AD570](v66);

            MEMORY[0x2530AD570](0xD000000000000023, 0x8000000252E85D40);
            v103 = v60;
LABEL_59:
            v76 = sub_252E36F94();
            goto LABEL_60;
          }
        }
      }

LABEL_35:
      if (++v4 == v58)
      {
        goto LABEL_45;
      }
    }

    goto LABEL_81;
  }

LABEL_45:
  v67 = *(v101 + 16);
  if (v67)
  {
    if (qword_27F53F3A8 != -1)
    {
      swift_once();
    }

    v4 = 0;
    v102 = v101 + 32;
    v68 = qword_27F575918;
    while (v4 < *(v101 + 16))
    {
      if (*(v68 + 16))
      {
        v69 = *(v102 + v4);
        v70 = sub_252A4509C(v69);
        if (v71)
        {
          v72 = *(*(v68 + 56) + 8 * v70);
          v73 = *(v72 + 16);
          if (v73)
          {
            v5 = v72 + 32;
            while (1)
            {
              if (*(v9 + 2))
              {
                a1 = *v5;
                sub_252A488EC();
                if (v74)
                {
                  break;
                }
              }

              v5 += 8;
              if (!--v73)
              {
                goto LABEL_49;
              }
            }

            *&v104 = 0;
            *(&v104 + 1) = 0xE000000000000000;
            sub_252E379F4();

            *&v104 = 0x676E696B63695022;
            *(&v104 + 1) = 0xE900000000000020;
            v75 = HomeAttributeType.description.getter(a1);
            MEMORY[0x2530AD570](v75);

            MEMORY[0x2530AD570](0xD000000000000024, 0x8000000252E85D10);
            v103 = v69;
            goto LABEL_59;
          }
        }
      }

LABEL_49:
      if (++v4 == v67)
      {
        goto LABEL_61;
      }
    }

    goto LABEL_82;
  }

LABEL_61:
  if (qword_27F53F398 != -1)
  {
    swift_once();
  }

  v77 = qword_27F575908;
  if (*(qword_27F575908 + 16) && (v78 = sub_252A488EC(), (v79 & 1) != 0) && (v80 = *(*(v77 + 56) + 8 * v78), (v81 = *(v80 + 16)) != 0))
  {
    v82 = (v80 + 32);
    while (1)
    {
      if (*(v9 + 2))
      {
        a1 = *v82;
        sub_252A488EC();
        if (v83)
        {
          break;
        }
      }

      ++v82;
      if (!--v81)
      {
        goto LABEL_71;
      }
    }

    *&v104 = 0;
    *(&v104 + 1) = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0x676E696B63695022, 0xE900000000000020);
    v84 = HomeAttributeType.description.getter(a1);
    MEMORY[0x2530AD570](v84);

    MEMORY[0x2530AD570](0xD000000000000029, 0x8000000252E85CE0);
    v76 = HomeDeviceType.description.getter(v91);
LABEL_60:
    MEMORY[0x2530AD570](v76);
  }

  else
  {
LABEL_71:
    v85 = 0x20u;
    while (1)
    {
      if (*(v9 + 2))
      {
        a1 = *(&unk_2864A41F0 + v85);
        sub_252A488EC();
        if (v86)
        {
          break;
        }
      }

      v85 += 8;
      if (v85 == 448)
      {
        a1 = 0;
        break;
      }
    }

    *&v104 = 0;
    *(&v104 + 1) = 0xE000000000000000;
    sub_252E379F4();

    *&v104 = 0x20676E696B636950;
    *(&v104 + 1) = 0xE800000000000000;
    v87 = HomeAttributeType.description.getter(a1);
    MEMORY[0x2530AD570](v87);

    MEMORY[0x2530AD570](0xD00000000000001BLL, 0x8000000252E85CC0);
  }

  sub_252CC3D90(v104, *(&v104 + 1), 0xD00000000000007ALL, v96 | 0x8000000000000000);

  return a1;
}

id sub_252BBB45C(unint64_t a1)
{
  v3 = v1[1];
  v101 = *v1;
  v102 = v3;
  v4 = v1[3];
  v103 = v1[2];
  v104 = v4;
  v5 = *(v1 + 64);
  v6 = *(v1 + 81);
  v98 = *(v1 + 65);
  v99 = v6;
  v100[0] = *(v1 + 97);
  *(v100 + 15) = v1[7];
  v7 = *(v1 + 24);
  v97 = *(v1 + 23);
  v8 = *(v1 + 16);
  v96 = *(v1 + 168);
  v9 = *(v1 + 136);
  v95 = *(v1 + 152);
  v94 = v9;
  memcpy(__dst, v1 + 200, sizeof(__dst));
  v10 = v1[1];
  v78 = *v1;
  v79 = v10;
  v11 = v1[3];
  v80 = v1[2];
  v81 = v11;
  v82 = v5;
  v83 = *(v1 + 65);
  v84 = *(v1 + 81);
  *v85 = *(v1 + 97);
  *&v85[15] = v1[7];
  v12 = *(v1 + 23);
  v86 = v8;
  v90 = v12;
  v89 = *(v1 + 168);
  v88 = *(v1 + 152);
  v87 = *(v1 + 136);
  v91 = v7;
  memcpy(v92, v1 + 200, sizeof(v92));
  if (sub_252BB776C(a1) == 4)
  {
    return 0;
  }

  if (*(v8 + 16))
  {
    v14 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
    v15 = sub_252E36F04();
    v16 = [v14 initWithIdentifier:0 displayString:v15];

    v17 = v16;
    [v17 setBoolValue_];
    [v17 setType_];

    return v17;
  }

  v18 = v1[1];
  v78 = *v1;
  v79 = v18;
  v19 = v1[3];
  v80 = v1[2];
  v81 = v19;
  v82 = v5;
  v83 = *(v1 + 65);
  v84 = *(v1 + 81);
  *v85 = *(v1 + 97);
  *&v85[15] = v1[7];
  v87 = *(v1 + 136);
  v88 = *(v1 + 152);
  v89 = *(v1 + 168);
  v20 = *(v1 + 23);
  v86 = v8;
  v90 = v20;
  v91 = v7;
  memcpy(v92, v1 + 200, sizeof(v92));
  sub_252A10E18(v66);
  v21 = LOBYTE(v66[0]);
  v22 = v1[1];
  v78 = *v1;
  v79 = v22;
  v23 = v1[3];
  v80 = v1[2];
  v81 = v23;
  v82 = v5;
  v83 = *(v1 + 65);
  v84 = *(v1 + 81);
  *v85 = *(v1 + 97);
  *&v85[15] = v1[7];
  v87 = *(v1 + 136);
  v88 = *(v1 + 152);
  v89 = *(v1 + 168);
  v24 = *(v1 + 23);
  v86 = v8;
  v90 = v24;
  v91 = v7;
  memcpy(v92, v1 + 200, sizeof(v92));
  result = sub_252A1778C(a1, 0);
  if (v21 == 77)
  {
    goto LABEL_11;
  }

  v25 = result;
  LOBYTE(v78) = v21;
  LOBYTE(v66[0]) = 9;
  v26 = StateSemantic.rawValue.getter();
  v28 = v27;
  if (v26 == StateSemantic.rawValue.getter() && v28 == v29)
  {
    goto LABEL_8;
  }

  v30 = sub_252E37DB4();

  if (v30)
  {
LABEL_10:
    result = v25;
    if (v25)
    {
      return result;
    }

LABEL_11:
    v31 = result;
    LOBYTE(v78) = v21;
    v32 = sub_252A47DD4(&v78, a1, 0);
    if (v32)
    {
      goto LABEL_34;
    }

    if (qword_27F53F258 != -1)
    {
      swift_once();
    }

    v33 = qword_27F575740;
    if (*(qword_27F575740 + 16))
    {
      v34 = sub_252A488EC();
      if (v35)
      {
        v36 = *(*(v33 + 56) + 8 * v34);
        v78 = v101;
        v79 = v102;
        v80 = v103;
        v81 = v104;
        v83 = v98;
        v84 = v99;
        *v85 = v100[0];
        *&v85[15] = *(v100 + 15);
        v89 = v96;
        v88 = v95;
        v82 = v5;
        v86 = v8;
        v90 = v97;
        v87 = v94;
        v91 = v7;
        memcpy(v92, __dst, sizeof(v92));
        v37 = v36;
        sub_252A10E18(v66);
        if (LOBYTE(v66[0]) != 77 && sub_2529A78B0(LOBYTE(v66[0]), &unk_2864A43B0))
        {
          goto LABEL_25;
        }
      }
    }

    if (qword_27F53F260 != -1)
    {
      swift_once();
    }

    v38 = qword_27F575748;
    if (*(qword_27F575748 + 16))
    {
      v39 = sub_252A488EC();
      if (v40)
      {
        v41 = *(*(v38 + 56) + 8 * v39);
        v78 = v101;
        v79 = v102;
        v80 = v103;
        v81 = v104;
        v83 = v98;
        v84 = v99;
        *v85 = v100[0];
        *&v85[15] = *(v100 + 15);
        v89 = v96;
        v88 = v95;
        v82 = v5;
        v86 = v8;
        v90 = v97;
        v87 = v94;
        v91 = v7;
        memcpy(v92, __dst, sizeof(v92));
        v37 = v41;
        sub_252A10E18(v66);
        if (LOBYTE(v66[0]) != 77 && sub_2529A78B0(LOBYTE(v66[0]), &unk_2864A4440))
        {
LABEL_25:

          return v37;
        }
      }
    }

    v78 = v101;
    v79 = v102;
    v80 = v103;
    v81 = v104;
    v83 = v98;
    v84 = v99;
    *v85 = v100[0];
    *&v85[15] = *(v100 + 15);
    v89 = v96;
    v88 = v95;
    v82 = v5;
    v86 = v8;
    v90 = v97;
    v87 = v94;
    v91 = v7;
    memcpy(v92, __dst, sizeof(v92));
    v32 = sub_252A1778C(a1, 0);
    if (v32 || (v78 = v101, v79 = v102, v80 = v103, v81 = v104, v83 = v98, v84 = v99, *v85 = v100[0], *&v85[15] = *(v100 + 15), v89 = v96, v88 = v95, v82 = v5, v86 = v8, v90 = v97, v87 = v94, v91 = v7, memcpy(v92, __dst, sizeof(v92)), (v32 = sub_252A17D08()) != 0))
    {
LABEL_34:
      v47 = v32;

      return v47;
    }

    if (v21 != 77)
    {
      if (qword_27F53F250 != -1)
      {
        swift_once();
      }

      v48 = qword_27F575738;
      if (*(qword_27F575738 + 16))
      {
        v49 = sub_252A4509C(v21);
        if (v50)
        {
          v51 = *(*(v48 + 56) + 8 * v49);
          if (a1 == 9)
          {
            v52 = v51;
            v53 = sub_252A0A6A0();

LABEL_80:
            return v53;
          }

          goto LABEL_78;
        }
      }

      LOBYTE(v78) = v21;
      LOBYTE(v66[0]) = 56;
      v54 = StateSemantic.rawValue.getter();
      v56 = v55;
      if (v54 == StateSemantic.rawValue.getter() && v56 == v57)
      {
      }

      else
      {
        v58 = sub_252E37DB4();

        if ((v58 & 1) == 0)
        {
          goto LABEL_49;
        }
      }

      if (a1 == 27)
      {
        v59 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
        v60 = sub_252E36F04();
        v61 = [v59 initWithIdentifier:0 displayString:v60];

        v53 = v61;
        [v53 setBoolValue_];
        [v53 setType_];

        goto LABEL_80;
      }
    }

LABEL_49:
    v78 = v101;
    v79 = v102;
    v80 = v103;
    v81 = v104;
    v83 = v98;
    v84 = v99;
    *v85 = v100[0];
    *&v85[15] = *(v100 + 15);
    v87 = v94;
    v82 = v5;
    v88 = v95;
    v89 = v96;
    v86 = v8;
    v90 = v97;
    v91 = v7;
    memcpy(v92, __dst, sizeof(v92));
    if (sub_252A12574())
    {
      v66[0] = v101;
      v66[1] = v102;
      v66[2] = v103;
      v66[3] = v104;
      v68 = v98;
      v69 = v99;
      *v70 = v100[0];
      *&v70[15] = *(v100 + 15);
      v72 = v94;
      v67 = v5;
      v73 = v95;
      v74 = v96;
      v71 = v8;
      v75 = v97;
      v76 = v7;
      memcpy(v77, __dst, sizeof(v77));
      if (!sub_252A12D08())
      {
        if (qword_27F53F678 != -1)
        {
          swift_once();
        }

        v51 = qword_27F575AF0;
        goto LABEL_78;
      }
    }

    if (v5 != 4 && (sub_252A0CE08(v5, 1u) & 1) != 0)
    {
      v78 = v101;
      v79 = v102;
      v80 = v103;
      v81 = v104;
      v83 = v98;
      v84 = v99;
      *v85 = v100[0];
      *&v85[15] = *(v100 + 15);
      v87 = v94;
      v82 = v5;
      v88 = v95;
      v89 = v96;
      v86 = v8;
      v90 = v97;
      v91 = v7;
      memcpy(v92, __dst, sizeof(v92));
      if (!sub_252A12D08())
      {
        if (qword_27F53F680 != -1)
        {
          swift_once();
        }

        v51 = qword_27F575AF8;
        goto LABEL_78;
      }
    }

    if (a1 == 9)
    {
      if (sub_2529A78B0(9, v7) || sub_2529A78B0(0, v7))
      {
        if (qword_27F53F668 != -1)
        {
          swift_once();
        }

        v51 = qword_27F575AE0;
        goto LABEL_78;
      }

      if (sub_2529A78B0(10, v7) || sub_2529A78B0(1, v7))
      {
        if (qword_27F53F670 != -1)
        {
          swift_once();
        }

        v51 = qword_27F575AE8;
        goto LABEL_78;
      }
    }

    else
    {
      if (qword_27F53F290 != -1)
      {
        swift_once();
      }

      v62 = off_27F541CC0;
      if (*(off_27F541CC0 + 2))
      {
        v63 = sub_252A488EC();
        if (v64)
        {
          v51 = *(v62[7] + 8 * v63);
LABEL_78:
          v65 = v51;
          goto LABEL_79;
        }
      }

      if (a1 == 67)
      {
        v78 = v101;
        v79 = v102;
        v80 = v103;
        v81 = v104;
        v83 = v98;
        v84 = v99;
        *v85 = v100[0];
        *&v85[15] = *(v100 + 15);
        v89 = v96;
        v88 = v95;
        v82 = v5;
        v86 = v8;
        v90 = v97;
        v87 = v94;
        v91 = v7;
        memcpy(v92, __dst, sizeof(v92));
        v65 = sub_252D5B220();
LABEL_79:
        v53 = v65;
        goto LABEL_80;
      }
    }

    return 0;
  }

  LOBYTE(v78) = v21;
  LOBYTE(v66[0]) = 10;
  v42 = StateSemantic.rawValue.getter();
  v44 = v43;
  if (v42 == StateSemantic.rawValue.getter() && v44 == v45)
  {
LABEL_8:

    goto LABEL_10;
  }

  v46 = sub_252E37DB4();

  result = v25;
  if ((v46 & 1) == 0 || !v25)
  {
    goto LABEL_11;
  }

  return result;
}

void *sub_252BBC050(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v17[6] = *MEMORY[0x277D85DE8];
  v16 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v17[3] = &v16;
  v17[4] = a2;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  if (v5 <= 0xD || (v12 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    v9 = &v15 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    v10 = sub_252BBC6D0(v9, v7, v3, a2);
  }

  else
  {
    v13 = v12;
    v14 = swift_slowAlloc();
    bzero(v14, v13);
    sub_252BBF528(v14, v7, v17);
    v10 = v17[0];

    MEMORY[0x2530AED00](v14, -1, -1);
  }

  return v10;
}

unint64_t *sub_252BBC1F0(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v17[6] = *MEMORY[0x277D85DE8];
  v16 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v17[3] = &v16;
  v17[4] = a2;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  if (v5 <= 0xD || (v12 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    v9 = &v15 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    v10 = sub_252BBCB20(v9, v7, v3, a2);
  }

  else
  {
    v13 = v12;
    v14 = swift_slowAlloc();
    bzero(v14, v13);
    sub_252BBF458(v14, v7, v17);
    v10 = v17[0];

    MEMORY[0x2530AED00](v14, -1, -1);
  }

  return v10;
}

void *sub_252BBC390(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v17[6] = *MEMORY[0x277D85DE8];
  v16 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v17[3] = &v16;
  v17[4] = a2;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  if (v5 <= 0xD || (v12 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    v9 = &v15 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    v10 = sub_252BBCD00(v9, v7, v3, a2);
  }

  else
  {
    v13 = v12;
    v14 = swift_slowAlloc();
    bzero(v14, v13);
    sub_252BBF4B0(v14, v7, v17);
    v10 = v17[0];

    MEMORY[0x2530AED00](v14, -1, -1);
  }

  return v10;
}

uint64_t sub_252BBC530(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v17[6] = *MEMORY[0x277D85DE8];
  v16 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v17[3] = &v16;
  v17[4] = a2;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  if (v5 <= 0xD || (v12 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    v9 = &v15 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    v10 = sub_252BBDFCC(v9, v7, v3, a2);
  }

  else
  {
    v13 = v12;
    v14 = swift_slowAlloc();
    bzero(v14, v13);
    sub_252BBF484(v14, v7, v17);
    v10 = v17[0];

    MEMORY[0x2530AED00](v14, -1, -1);
  }

  return v10;
}

void *sub_252BBC6D0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a3;
  if ((a3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_252E37874();
    type metadata accessor for Service(0);
    sub_252BBF590(&qword_27F541EB0, type metadata accessor for Service, protocol conformance descriptor for Entity);
    result = sub_252E373E4();
    v4 = v42;
    v6 = v43;
    v7 = v44;
    i = v45;
    v9 = v46;
  }

  else
  {
    v10 = -1 << *(a3 + 32);
    v6 = a3 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(a3 + 56);

    i = 0;
  }

  v32 = 0;
  v13 = (v7 + 64) >> 6;
  v39 = a4 + 56;
  v35 = v6;
  v36 = v4;
  v34 = v13;
  while (2)
  {
    v14 = i;
    v15 = v9;
    do
    {
      while (1)
      {
        if (v4 < 0)
        {
          if (!sub_252E37904())
          {
            goto LABEL_36;
          }

          type metadata accessor for Service(0);
          swift_dynamicCast();
          v19 = v41;
          i = v14;
          v18 = v15;
          if (!v41)
          {
            goto LABEL_36;
          }
        }

        else
        {
          v16 = v14;
          v17 = v15;
          for (i = v14; !v17; ++v16)
          {
            i = v16 + 1;
            if (__OFADD__(v16, 1))
            {
              __break(1u);
              return result;
            }

            if (i >= v13)
            {
              goto LABEL_36;
            }

            v17 = *(v6 + 8 * i);
          }

          v18 = (v17 - 1) & v17;
          v19 = *(*(v4 + 48) + ((i << 9) | (8 * __clz(__rbit64(v17)))));

          if (!v19)
          {
            goto LABEL_36;
          }
        }

        sub_252E37EC4();
        sub_252E32E84();
        sub_252BBF590(&qword_27F540680, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
        sub_252E36E94();
        v38 = OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType;
        MEMORY[0x2530AE390](*(v19 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType));
        v37 = (v19 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);

        sub_252E37044();

        v20 = sub_252E37F14();
        v21 = -1 << *(a4 + 32);
        v22 = v20 & ~v21;
        v23 = v22 >> 6;
        v24 = 1 << v22;
        if (((1 << v22) & *(v39 + 8 * (v22 >> 6))) != 0)
        {
          break;
        }

LABEL_9:

        v14 = i;
        v4 = v36;
        v15 = v18;
        v13 = v34;
        v6 = v35;
      }

      v25 = ~v21;
      while (1)
      {
        v26 = *(*(a4 + 48) + 8 * v22);

        if ((sub_252E32E54() & 1) == 0 || *(v26 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType) != *(v19 + v38))
        {

          goto LABEL_22;
        }

        if (*(v26 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name) == *v37 && *(v26 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8) == v37[1])
        {
          break;
        }

        v28 = sub_252E37DB4();

        if (v28)
        {
          goto LABEL_32;
        }

LABEL_22:
        v22 = (v22 + 1) & v25;
        v23 = v22 >> 6;
        v24 = 1 << v22;
        if ((*(v39 + 8 * (v22 >> 6)) & (1 << v22)) == 0)
        {
          goto LABEL_9;
        }
      }

LABEL_32:

      v13 = v34;
      v29 = a1[v23];
      a1[v23] = v29 | v24;
      v14 = i;
      v4 = v36;
      v9 = v18;
      v15 = v18;
      v6 = v35;
    }

    while ((v29 & v24) != 0);
    if (!__OFADD__(v32++, 1))
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_36:
  sub_25291AE30(v4);

  return sub_252C53048(a1, a2, v32, a4);
}

unint64_t *sub_252BBCB20(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v6 = 0;
  v7 = *(a3 + 16);
  v27 = a3 + 32;
  v8 = a4 + 56;
  v25 = result;
  v26 = v7;
  while (2)
  {
    v24 = v5;
    if (v6 != v7)
    {
      while (1)
      {
        while (1)
        {
          if (v6 >= v7)
          {
            __break(1u);
LABEL_26:
            __break(1u);
            return result;
          }

          v9 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_26;
          }

          v10 = (v27 + 16 * v6);
          v12 = *v10;
          v11 = v10[1];
          sub_252E37EC4();

          sub_252E37044();
          v13 = sub_252E37F14();
          v14 = -1 << *(a4 + 32);
          v15 = v13 & ~v14;
          v16 = v15 >> 6;
          v17 = 1 << v15;
          if (((1 << v15) & *(v8 + 8 * (v15 >> 6))) != 0)
          {
            break;
          }

LABEL_5:
          v6 = v9;

          if (v9 == v7)
          {
            goto LABEL_24;
          }
        }

        v18 = (*(a4 + 48) + 16 * v15);
        if (*v18 != v12 || v18[1] != v11)
        {
          v20 = ~v14;
          while ((sub_252E37DB4() & 1) == 0)
          {
            v15 = (v15 + 1) & v20;
            v16 = v15 >> 6;
            v17 = 1 << v15;
            if (((1 << v15) & *(v8 + 8 * (v15 >> 6))) == 0)
            {
              v7 = v26;
              goto LABEL_5;
            }

            v21 = (*(a4 + 48) + 16 * v15);
            if (*v21 == v12 && v21[1] == v11)
            {
              break;
            }
          }
        }

        v22 = v25[v16];
        v25[v16] = v22 | v17;
        if ((v22 & v17) == 0)
        {
          break;
        }

        v7 = v26;
        v6 = v9;
        if (v9 == v26)
        {
          goto LABEL_24;
        }
      }

      v5 = v24 + 1;
      v7 = v26;
      v6 = v9;
      if (!__OFADD__(v24, 1))
      {
        continue;
      }

      __break(1u);
    }

    break;
  }

LABEL_24:

  return sub_252C532DC(v25, a2, v24, a4);
}

void *sub_252BBCD00(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v125 = a1;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540758, &unk_252E4D160);
  v8 = MEMORY[0x28223BE20](v150);
  v139 = &v121 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v121 - v10;
  v163 = sub_252E36324();
  v12 = *(v163 - 8);
  v13 = MEMORY[0x28223BE20](v163);
  v127 = &v121 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v138 = &v121 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v130 = &v121 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v145 = &v121 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v147 = &v121 - v22;
  MEMORY[0x28223BE20](v21);
  v126 = &v121 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v25 = MEMORY[0x28223BE20](v24 - 8);
  v143 = &v121 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v129 = &v121 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v137 = &v121 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v136 = &v121 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v146 = &v121 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v37 = &v121 - v36;
  v38 = MEMORY[0x28223BE20](v35);
  v128 = &v121 - v39;
  MEMORY[0x28223BE20](v38);
  v132 = &v121 - v40;
  v123 = v4;
  v122 = a2;
  if ((a3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_252E37874();
    type metadata accessor for HomeAutomationEntityState(0);
    sub_252BBF590(&qword_27F540E40, type metadata accessor for HomeAutomationEntityState, byte_252E430B8);
    result = sub_252E373E4();
    a3 = v164[9];
    v42 = v164[10];
    v44 = v164[11];
    v43 = v164[12];
    v45 = v164[13];
  }

  else
  {
    v46 = -1 << *(a3 + 32);
    v42 = a3 + 56;
    v44 = ~v46;
    v47 = -v46;
    if (v47 < 64)
    {
      v48 = ~(-1 << v47);
    }

    else
    {
      v48 = -1;
    }

    v45 = v48 & *(a3 + 56);

    v43 = 0;
  }

  v124 = 0;
  v121 = v44;
  v49 = (v44 + 64) >> 6;
  v153 = (v12 + 48);
  v154 = (v12 + 8);
  v149 = (v12 + 32);
  v160 = a4 + 56;
  v135 = a3;
  v156 = v37;
  v151 = v11;
  v134 = v42;
  v133 = v49;
  v152 = a4;
  while (2)
  {
    v50 = v43;
    while (2)
    {
      while (2)
      {
        if (a3 < 0)
        {
          v57 = sub_252E37904();
          if (!v57)
          {
            goto LABEL_79;
          }

          v164[16] = v57;
          type metadata accessor for HomeAutomationEntityState(0);
          swift_dynamicCast();
          v56 = v164[0];
          v141 = v50;
          v140 = v45;
          if (!v164[0])
          {
            goto LABEL_79;
          }
        }

        else
        {
          v51 = v50;
          v52 = v45;
          v53 = v50;
          if (!v45)
          {
            while (1)
            {
              v53 = v51 + 1;
              if (__OFADD__(v51, 1))
              {
                break;
              }

              if (v53 >= v49)
              {
                goto LABEL_79;
              }

              v52 = *(v42 + 8 * v53);
              ++v51;
              if (v52)
              {
                goto LABEL_15;
              }
            }

            __break(1u);
            return result;
          }

LABEL_15:
          v54 = __clz(__rbit64(v52));
          v140 = (v52 - 1) & v52;
          v55 = *(a3 + 48);
          v141 = v53;
          v56 = *(v55 + ((v53 << 9) | (8 * v54)));

          if (!v56)
          {
            goto LABEL_79;
          }
        }

        sub_252E37EC4();
        v162 = v56;
        v159 = OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_attribute;
        v58 = v56 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_attribute;
        v59 = v132;
        sub_252956C1C(v58, v132);
        v161 = *v153;
        if (v161(v59, 1, v163) == 1)
        {
          sub_25293847C(v59, &qword_27F540298, &unk_252E3C270);
          sub_252E37EE4();
        }

        else
        {
          sub_252E36304();
          (*v154)(v59, v163);
          sub_252E37EE4();
          sub_252E37044();
        }

        v60 = v149;
        v148 = OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_stateValue;
        v61 = *(v162 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_stateValue);
        if (v61)
        {
          sub_252E37EE4();
          v62 = v128;
          sub_252956C1C(v61 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_stringValue, v128);
          if (v161(v62, 1, v163) == 1)
          {
            sub_25293847C(v62, &qword_27F540298, &unk_252E3C270);
            v63 = v150;
            if (*(v61 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue))
            {

              HomeAutomationAbstractMeasurement.hash(into:)(v164);
            }

            else
            {
              sub_252E37EE4();
            }

            goto LABEL_29;
          }

          v64 = v126;
          v65 = v163;
          (*v60)(v126, v62, v163);
          sub_252E36304();
          sub_252E37044();

          (*v154)(v64, v65);
        }

        else
        {
          sub_252E37EE4();
        }

        v63 = v150;
LABEL_29:
        v66 = sub_252E37F14();
        v67 = -1 << *(a4 + 32);
        v68 = v66 & ~v67;
        v69 = v68 >> 6;
        v70 = 1 << v68;
        if (((1 << v68) & *(v160 + 8 * (v68 >> 6))) == 0)
        {
LABEL_9:

          v50 = v141;
          v45 = v140;
          a3 = v135;
          v42 = v134;
          v49 = v133;
          continue;
        }

        break;
      }

      v158 = ~v67;
      v144 = OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_userTaskType;
      while (1)
      {
        v157 = v69;
        v71 = *(*(a4 + 48) + 8 * v68);
        v72 = *(v63 + 48);
        sub_252956C1C(v71 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_attribute, v11);
        sub_252956C1C(v162 + v159, &v11[v72]);
        v73 = v161;
        if (v161(v11, 1, v163) != 1)
        {
          break;
        }

        if (v73(&v11[v72], 1, v163) == 1)
        {

          sub_25293847C(v11, &qword_27F540298, &unk_252E3C270);
          goto LABEL_39;
        }

LABEL_32:
        sub_25293847C(v11, &qword_27F540758, &unk_252E4D160);
LABEL_33:
        v68 = (v68 + 1) & v158;
        v69 = v68 >> 6;
        v70 = 1 << v68;
        if ((*(v160 + 8 * (v68 >> 6)) & (1 << v68)) == 0)
        {
          goto LABEL_9;
        }
      }

      v155 = v70;
      v74 = v71;
      v75 = v156;
      sub_252956C1C(v11, v156);
      if (v73(&v11[v72], 1, v163) == 1)
      {
        (*v154)(v75, v163);
        goto LABEL_32;
      }

      v76 = &v11[v72];
      v77 = v163;
      v78 = a4;
      v79 = v147;
      (*v149)(v147, v76, v163);
      sub_252BBF590(&qword_27F540760, MEMORY[0x277D55C48], MEMORY[0x277D55C58]);

      v80 = sub_252E36EF4();
      v81 = *v154;
      v82 = v79;
      a4 = v78;
      (*v154)(v82, v77);
      v81(v156, v77);
      v71 = v74;
      v63 = v150;
      sub_25293847C(v11, &qword_27F540298, &unk_252E3C270);
      v70 = v155;
      if ((v80 & 1) == 0)
      {

        v11 = v151;
        goto LABEL_33;
      }

LABEL_39:
      v83 = *(v71 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_stateValue);
      v84 = *(v162 + v148);
      if (!v83)
      {
        a4 = v152;
        v11 = v151;
        if (!v84)
        {
          goto LABEL_58;
        }

        goto LABEL_48;
      }

      v11 = v151;
      if (!v84)
      {
        goto LABEL_50;
      }

      v155 = v71;
      v85 = OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_stringValue;
      v86 = v146;
      sub_252956C1C(v83 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_stringValue, v146);
      v87 = v161;
      if (v161(v86, 1, v163) != 1)
      {
        v92 = v163;
        v142 = *v149;
        (v142)(v145, v86, v163);
        v93 = v84 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_stringValue;
        v94 = v136;
        sub_252956C1C(v93, v136);
        v95 = v87(v94, 1, v92);
        v96 = v152;
        if (v95 == 1)
        {
          (*v154)(v145, v163);
          sub_25293847C(v94, &qword_27F540298, &unk_252E3C270);

          v63 = v150;
          a4 = v96;
          goto LABEL_33;
        }

        v99 = v163;
        v100 = v130;
        (v142)(v130, v94, v163);
        v101 = v145;
        LODWORD(v142) = sub_252E362E4();
        v102 = *v154;
        v103 = v100;
        v104 = v152;
        (*v154)(v103, v99);
        v105 = v101;
        a4 = v104;
        v102(v105, v99);
        goto LABEL_57;
      }

      v142 = v85;

      sub_25293847C(v86, &qword_27F540298, &unk_252E3C270);
      v88 = v163;
      v89 = v137;
      sub_252956C1C(v84 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_stringValue, v137);
      if (v87(v89, 1, v88) != 1)
      {
        v131 = *v149;
        v131(v138, v89, v88);
        v97 = v83 + v142;
        v98 = v129;
        sub_252956C1C(v97, v129);
        if (v87(v98, 1, v88) == 1)
        {

          (*v154)(v138, v163);
          sub_25293847C(v98, &qword_27F540298, &unk_252E3C270);

          a4 = v152;
          v63 = v150;
          goto LABEL_33;
        }

        v106 = v127;
        v107 = v163;
        v131(v127, v98, v163);
        v108 = v138;
        LODWORD(v142) = sub_252E362E4();

        v109 = *v154;
        (*v154)(v106, v107);
        v109(v108, v107);
        a4 = v152;
LABEL_57:
        v63 = v150;
        v71 = v155;
        if (v142)
        {
          goto LABEL_58;
        }

        goto LABEL_48;
      }

      sub_25293847C(v89, &qword_27F540298, &unk_252E3C270);
      v90 = *(v83 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue);
      v91 = *(v84 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue);
      if (!v90)
      {
        v63 = v150;
        v71 = v155;
        if (v91)
        {

LABEL_50:

          goto LABEL_64;
        }

        v116 = *(v83 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_BOOLeanValue);
        v117 = *(v84 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_BOOLeanValue);

        v118 = v116 == v117;
        v63 = v150;
        a4 = v152;
        if (v118)
        {
          goto LABEL_58;
        }

        goto LABEL_48;
      }

      a4 = v152;
      v63 = v150;
      v71 = v155;
      if (!v91)
      {

        goto LABEL_33;
      }

      v142 = v90;

      LODWORD(v131) = _s22HomeAutomationInternal0aB19AbstractMeasurementC2eeoiySbAC_ACtFZ_0(v142, v91);

      if ((v131 & 1) == 0)
      {
LABEL_48:

        goto LABEL_33;
      }

LABEL_58:
      v110 = *(v63 + 48);
      v111 = v139;
      sub_252956C1C(v71 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_userTaskType, v139);
      sub_252956C1C(v162 + v144, v111 + v110);
      v112 = v161;
      if (v161(v111, 1, v163) == 1)
      {

        if (v112(v111 + v110, 1, v163) == 1)
        {

          result = sub_25293847C(v111, &qword_27F540298, &unk_252E3C270);
          a4 = v152;
          goto LABEL_74;
        }

LABEL_63:
        sub_25293847C(v111, &qword_27F540758, &unk_252E4D160);
LABEL_64:
        a4 = v152;
        goto LABEL_33;
      }

      sub_252956C1C(v111, v143);
      if (v112(v111 + v110, 1, v163) == 1)
      {

        (*v154)(v143, v163);
        goto LABEL_63;
      }

      v113 = v163;
      (*v149)(v147, v111 + v110, v163);
      sub_252BBF590(&qword_27F540760, MEMORY[0x277D55C48], MEMORY[0x277D55C58]);
      v114 = sub_252E36EF4();

      v115 = *v154;
      (*v154)(v147, v113);
      v115(v143, v113);
      v63 = v150;
      sub_25293847C(v111, &qword_27F540298, &unk_252E3C270);
      a4 = v152;
      if ((v114 & 1) == 0)
      {
        goto LABEL_33;
      }

LABEL_74:
      v119 = v125[v157];
      v125[v157] = v119 | v70;
      v43 = v141;
      v50 = v141;
      v45 = v140;
      v118 = (v119 & v70) == 0;
      a3 = v135;
      v42 = v134;
      v49 = v133;
      if (!v118)
      {
        continue;
      }

      break;
    }

    v120 = __OFADD__(v124++, 1);
    v45 = v140;
    if (!v120)
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_79:
  sub_25291AE30(a3);

  return sub_252C53768(v125, v122, v124, a4);
}

uint64_t sub_252BBDFCC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + 16);
  if (!v5)
  {
    goto LABEL_14;
  }

  v6 = 0;
  v7 = 0;
  v8 = a4 + 56;
  v9 = a3 + 32;
  while (1)
  {
    v11 = *(v9 + 8 * v7);
    sub_252E37EC4();
    MEMORY[0x2530AE390](v11);
    v12 = sub_252E37F14();
    v13 = -1 << *(a4 + 32);
    v14 = v12 & ~v13;
    v15 = v14 >> 6;
    v16 = 1 << v14;
    if (((1 << v14) & *(v8 + 8 * (v14 >> 6))) != 0)
    {
      v17 = *(a4 + 48);
      if (*(v17 + 8 * v14) != v11)
      {
        v18 = ~v13;
        do
        {
          v14 = (v14 + 1) & v18;
          v15 = v14 >> 6;
          v16 = 1 << v14;
          if (((1 << v14) & *(v8 + 8 * (v14 >> 6))) == 0)
          {
            goto LABEL_4;
          }
        }

        while (*(v17 + 8 * v14) != v11);
      }

      v10 = a1[v15];
      a1[v15] = v10 | v16;
      if ((v10 & v16) == 0 && __OFADD__(v6++, 1))
      {
        break;
      }
    }

LABEL_4:
    if (++v7 == v5)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_14:
  v6 = 0;
LABEL_15:

  return sub_252C53500(a1, a2, v6, a4);
}

unint64_t *sub_252BBE118(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = sub_252BBF198(result, a2, a3, a4);

    return v8;
  }

  return result;
}

void *sub_252BBE1A8(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = a4(result, a2, a3);

    return v8;
  }

  return result;
}

void *sub_252BBE230(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, void))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_252BBEEE0(result, a2, a3, a4);

    return v8;
  }

  return result;
}

void *sub_252BBE2C0(uint64_t a1, uint64_t (*a2)(char *, uint64_t, uint64_t), uint64_t (*a3)(void *, uint64_t, uint64_t))
{
  v5 = a1;
  v14[1] = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 32);
  v7 = ((1 << v6) + 63) >> 6;
  if ((v6 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x28223BE20](a1);
    v9 = v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    result = a2(v9, v7, v5);
    if (v3)
    {
      return swift_willThrow();
    }

    return result;
  }

  v12 = swift_slowAlloc();
  v13 = sub_252BBE1A8(v12, v7, v5, a3);
  result = MEMORY[0x2530AED00](v12, -1, -1);
  if (!v3)
  {
    return v13;
  }

  return result;
}

unint64_t *sub_252BBE430(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  while (v8)
  {
    v9 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v10 = v9 | (v5 << 6);
LABEL_11:
    v13 = vdupq_n_s64(*(*(a3 + 48) + 8 * v10));
    v14 = vandq_s8(vcltzq_s8(vshlq_n_s8(vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(vceqq_s64(xmmword_2864A3BB0, v13), vceqq_s64(unk_2864A3BC0, v13)), vuzp1q_s32(vceqq_s64(xmmword_2864A3BD0, v13), vceqq_s64(unk_2864A3BE0, v13))), vuzp1q_s16(vuzp1q_s32(vceqq_s64(xmmword_2864A3BF0, v13), vceqq_s64(unk_2864A3C00, v13)), vuzp1q_s32(vceqq_s64(xmmword_2864A3C10, v13), vceqq_s64(unk_2864A3C20, v13)))), 7uLL)), xmmword_252E502B0);
    v15 = vandq_s8(vcltzq_s8(vshlq_n_s8(vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(vceqq_s64(xmmword_2864A3C30, v13), vceqq_s64(xmmword_2864A3C40, v13)), vuzp1q_s32(vceqq_s64(xmmword_2864A3C50, v13), vceqq_s64(xmmword_2864A3C60, v13))), vuzp1q_s16(vuzp1q_s32(vceqq_s64(xmmword_2864A3C70, v13), vceqq_s64(xmmword_2864A3C80, v13)), vuzp1q_s32(vceqq_s64(xmmword_2864A3C90, v13), vceqq_s64(xmmword_2864A3CA0[0], v13)))), 7uLL)), xmmword_252E502B0);
    if (vaddvq_s16(vzip1q_s8(v14, vextq_s8(v14, v14, 8uLL))) | vaddvq_s16(vzip1q_s8(v15, vextq_s8(v15, v15, 8uLL))))
    {
      *(result + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
        return sub_252BBE9CC(result, a2, v4, a3);
      }
    }
  }

  v11 = v5;
  while (1)
  {
    v5 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v5 >= ((v6 + 63) >> 6))
    {
      return sub_252BBE9CC(result, a2, v4, a3);
    }

    v12 = *(a3 + 64 + 8 * v5);
    ++v11;
    if (v12)
    {
      v8 = (v12 - 1) & v12;
      v10 = __clz(__rbit64(v12)) | (v5 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_252BBE604(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  while (v8)
  {
    v9 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v10 = v9 | (v5 << 6);
LABEL_11:
    v13 = vdupq_n_s64(*(*(a3 + 48) + 8 * v10));
    if ((vmaxvq_u8(vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(vceqq_s64(xmmword_2864A3AD0, v13), vceqq_s64(xmmword_2864A3AE0, v13)), vuzp1q_s32(vceqq_s64(xmmword_2864A3AF0, v13), vceqq_s64(xmmword_2864A3B00, v13))), vuzp1q_s16(vuzp1q_s32(vceqq_s64(xmmword_2864A3B10, v13), vceqq_s64(xmmword_2864A3B20, v13)), vuzp1q_s32(vceqq_s64(xmmword_2864A3B30, v13), vceqq_s64(xmmword_2864A3B40, v13))))) & 1) == 0 && !vaddvq_s16(vandq_s8(vuzp1q_s16(vuzp1q_s32(vceqq_s64(xmmword_2864A3B50, v13), vceqq_s64(unk_2864A3B60, v13)), vuzp1q_s32(vceqq_s64(xmmword_2864A3B70, v13), vceqq_s64(unk_2864A3B80, v13))), xmmword_252E502C0)))
    {
      *(result + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
        return sub_252BBE9CC(result, a2, v4, a3);
      }
    }
  }

  v11 = v5;
  while (1)
  {
    v5 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v5 >= ((v6 + 63) >> 6))
    {
      return sub_252BBE9CC(result, a2, v4, a3);
    }

    v12 = *(a3 + 64 + 8 * v5);
    ++v11;
    if (v12)
    {
      v8 = (v12 - 1) & v12;
      v10 = __clz(__rbit64(v12)) | (v5 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_252BBE78C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543A50, &qword_252E50398);
  result = sub_252E37B54();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v32 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = *(v17 + 8 * v16);
    sub_252E37EC4();

    v33 = v21;
    sub_252E37044();
    result = sub_252E37F14();
    v22 = -1 << *(v9 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v12 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = (*(v9 + 48) + 16 * v25);
    *v30 = v19;
    v30[1] = v20;
    *(*(v9 + 56) + 8 * v25) = v33;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v32;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_252BBE9CC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545080, &qword_252E5A400);
  result = sub_252E37B54();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(*(v4 + 48) + 8 * v16);
    v27 = *(*(v4 + 56) + 8 * v16);
    sub_252E37EC4();
    MEMORY[0x2530AE390](v17);
    result = sub_252E37F14();
    v18 = -1 << *(v9 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v9 + 48) + 8 * v21) = v17;
    *(*(v9 + 56) + 8 * v21) = v27;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_252BBEBEC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543A58, &unk_252E503A0);
  result = sub_252E37B54();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v32 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = *(v17 + 8 * v16);
    sub_252E37EC4();

    sub_252E37044();
    result = sub_252E37F14();
    v22 = -1 << *(v9 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v12 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = (*(v9 + 48) + 16 * v25);
    *v30 = v19;
    v30[1] = v20;
    *(*(v9 + 56) + 8 * v25) = v21;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v32;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_252BBEE30(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *, uint64_t, uint64_t, uint64_t))
{
  v6 = *(result + 16);
  if (v6)
  {
    for (i = (result + 40); ; i += 2)
    {
      v12 = *i;
      v13[0] = *(i - 1);
      v13[1] = v12;

      a5(v13, a2, a3, a4);
      if (v5)
      {
        break;
      }

      if (!--v6)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_252BBEEE0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, void))
{
  v19 = result;
  v6 = 0;
  v7 = 0;
  v8 = a3 + 64;
  v9 = 1 << *(a3 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a3 + 64);
  v12 = (v9 + 63) >> 6;
  while (v11)
  {
    v13 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_11:
    v16 = v13 | (v7 << 6);
    result = a4(*(*(a3 + 48) + 8 * v16), *(*(a3 + 56) + 8 * v16));
    if (result)
    {
      *(v19 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      if (__OFADD__(v6++, 1))
      {
        __break(1u);
        return sub_252BBE9CC(v19, a2, v6, a3);
      }
    }
  }

  v14 = v7;
  while (1)
  {
    v7 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v7 >= v12)
    {
      return sub_252BBE9CC(v19, a2, v6, a3);
    }

    v15 = *(v8 + 8 * v7);
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v11 = (v15 - 1) & v15;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_252BBF018(uint64_t a1, uint64_t (*a2)(void, void))
{
  v4 = a1;
  v12[1] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x28223BE20](a1);
    v8 = v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v8, v7);
    result = sub_252BBEEE0(v8, v6, v4, a2);
    if (v2)
    {
      return swift_willThrow();
    }

    return result;
  }

  v10 = swift_slowAlloc();
  v11 = sub_252BBE230(v10, v6, v4, a2);
  result = MEMORY[0x2530AED00](v10, -1, -1);
  if (!v2)
  {
    return v11;
  }

  return result;
}

unint64_t *sub_252BBF198(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v6 = 0;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
LABEL_4:
  while (v9)
  {
    v10 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v11 = v10 | (v6 << 6);
LABEL_11:
    v14 = *(a4 + 16);
    v15 = (a4 + 32);
    while (v14)
    {
      v16 = *v15++;
      --v14;
      if (v16 == *(*(a3 + 48) + 8 * v11))
      {
        *(result + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        if (!__OFADD__(v5++, 1))
        {
          goto LABEL_4;
        }

        __break(1u);
        return sub_252BBE9CC(result, a2, v5, a3);
      }
    }
  }

  v12 = v6;
  while (1)
  {
    v6 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v6 >= ((v7 + 63) >> 6))
    {
      return sub_252BBE9CC(result, a2, v5, a3);
    }

    v13 = *(a3 + 64 + 8 * v6);
    ++v12;
    if (v13)
    {
      v9 = (v13 - 1) & v13;
      v11 = __clz(__rbit64(v13)) | (v6 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_252BBF2A0(uint64_t a1, uint64_t a2)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = swift_bridgeObjectRetain_n();
  if (v6 <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x28223BE20](v9);
    bzero(v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v8);
    v10 = sub_252BBF198((v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0)), v7, a1, a2);
    if (v2)
    {
      swift_willThrow();
      return swift_bridgeObjectRelease_n();
    }

    v12 = v10;
    swift_bridgeObjectRelease_n();
    return v12;
  }

  v13 = swift_slowAlloc();

  v12 = sub_252BBE118(v13, v7, a1, a2);
  MEMORY[0x2530AED00](v13, -1, -1);
  result = swift_bridgeObjectRelease_n();
  if (!v2)
  {
    return v12;
  }

  return result;
}

unint64_t sub_252BBF4DC()
{
  result = qword_2814B0200;
  if (!qword_2814B0200)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2814B0200);
  }

  return result;
}

uint64_t sub_252BBF554@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t, uint64_t, void, void)@<X2>, uint64_t *a4@<X8>)
{
  result = a3(a1, a2, **(v4 + 16), *(v4 + 24));
  if (!v5)
  {
    *a4 = result;
  }

  return result;
}

uint64_t sub_252BBF590(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_252BBF5D8(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  v2 = v1;
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_48;
  }

  v3 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v3)
  {
    v4 = 0;
    v33 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v34 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v5 = MEMORY[0x277D84F90];
    v29 = isUniquelyReferenced_nonNull_bridgeObject;
    v31 = v3;
    v32 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    while (v34)
    {
      isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x2530ADF00](v4, v29);
      v6 = isUniquelyReferenced_nonNull_bridgeObject;
      v7 = __OFADD__(v4++, 1);
      if (v7)
      {
        goto LABEL_42;
      }

LABEL_9:
      v37 = v6;
      sub_252B9A780(&v37, &v36);
      if (v2)
      {
        goto LABEL_41;
      }

      v8 = v36;
      v9 = v36 >> 62;
      if (v36 >> 62)
      {
        v10 = sub_252E378C4();
      }

      else
      {
        v10 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v11 = v5 >> 62;
      if (v5 >> 62)
      {
        v26 = sub_252E378C4();
        v13 = v26 + v10;
        if (__OFADD__(v26, v10))
        {
LABEL_40:
          __break(1u);
LABEL_41:

          return v5;
        }
      }

      else
      {
        v12 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v13 = v12 + v10;
        if (__OFADD__(v12, v10))
        {
          goto LABEL_40;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v11)
        {
          v14 = v5 & 0xFFFFFFFFFFFFFF8;
          if (v13 <= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_21;
          }

          goto LABEL_20;
        }

LABEL_19:
        sub_252E378C4();
        goto LABEL_20;
      }

      if (v11)
      {
        goto LABEL_19;
      }

LABEL_20:
      isUniquelyReferenced_nonNull_bridgeObject = sub_252E37A54();
      v5 = isUniquelyReferenced_nonNull_bridgeObject;
      v14 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_21:
      v15 = *(v14 + 16);
      v16 = *(v14 + 24);
      if (v9)
      {
        v18 = v14;
        isUniquelyReferenced_nonNull_bridgeObject = sub_252E378C4();
        v14 = v18;
        v17 = isUniquelyReferenced_nonNull_bridgeObject;
        if (!isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_4:

          if (v10 > 0)
          {
            goto LABEL_44;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v17 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v17)
        {
          goto LABEL_4;
        }
      }

      if (((v16 >> 1) - v15) < v10)
      {
        goto LABEL_45;
      }

      v19 = v14 + 8 * v15 + 32;
      v30 = v14;
      if (v9)
      {
        if (v17 < 1)
        {
          goto LABEL_47;
        }

        sub_252BBFCB8();
        for (i = 0; i != v17; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543A60, &unk_252E50420);
          v21 = sub_2529FBE00(v35, i, v8);
          v23 = *v22;

          (v21)(v35, 0);
          *(v19 + 8 * i) = v23;
        }
      }

      else
      {
        sub_252E36294();
        swift_arrayInitWithCopy();
      }

      v2 = 0;
      if (v10 >= 1)
      {
        v24 = *(v30 + 16);
        v7 = __OFADD__(v24, v10);
        v25 = v24 + v10;
        if (v7)
        {
          goto LABEL_46;
        }

        *(v30 + 16) = v25;
      }

LABEL_5:
      if (v4 == v31)
      {
        return v5;
      }
    }

    if (v4 >= *(v33 + 16))
    {
      goto LABEL_43;
    }

    v6 = *(v32 + 8 * v4);

    v7 = __OFADD__(v4++, 1);
    if (!v7)
    {
      goto LABEL_9;
    }

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
    v27 = isUniquelyReferenced_nonNull_bridgeObject;
    v3 = sub_252E378C4();
    isUniquelyReferenced_nonNull_bridgeObject = v27;
  }

  return MEMORY[0x277D84F90];
}

unint64_t sub_252BBF958@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a1 == 0x73655265766C6176 && a2 == 0xEE007365736E6F70;
  if (v6 || (sub_252E37DB4() & 1) != 0)
  {
    swift_beginAccess();
    v8 = sub_252B9A254(&unk_27F5438E8, 33);
    goto LABEL_7;
  }

  if (a1 == 0xD000000000000013 && 0x8000000252E86380 == a2 || (sub_252E37DB4() & 1) != 0)
  {
    swift_beginAccess();
    v8 = sub_252B9A34C(&unk_27F5438E9, &unk_2864ADF78);
LABEL_7:
    v9 = v8;
    result = swift_endAccess();
    if (v9)
    {
LABEL_8:
      result = type metadata accessor for HomeAutomationWaterSystemResponses();
LABEL_9:
      *(a3 + 24) = result;
      *a3 = v9;
      return result;
    }

    goto LABEL_23;
  }

  if (a1 == 0x6552657669746361 && a2 == 0xEF7365736E6F7073 || (sub_252E37DB4() & 1) != 0)
  {
    result = sub_252B9A4BC();
    if (result)
    {
LABEL_18:
      v9 = result;
      goto LABEL_8;
    }

LABEL_23:
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return result;
  }

  if (a1 == 0xD000000000000011 && 0x8000000252E863A0 == a2 || (sub_252E37DB4() & 1) != 0)
  {
    result = sub_252B9A4CC();
    if (result)
    {
      goto LABEL_18;
    }

    goto LABEL_23;
  }

  if (a1 == 0x7365526573556E69 && a2 == 0xEE007365736E6F70 || (sub_252E37DB4() & 1) != 0)
  {
    result = sub_252B9A600();
    if (result)
    {
      goto LABEL_18;
    }

    goto LABEL_23;
  }

  if (a1 == 0x6552646575657571 && a2 == 0xEF7365736E6F7073 || (sub_252E37DB4() & 1) != 0)
  {
    result = sub_252B9A610();
    if (result)
    {
      goto LABEL_18;
    }

    goto LABEL_23;
  }

  if (a1 == 0x6E6F697461727564 && a2 == 0xE900000000000073 || (sub_252E37DB4() & 1) != 0)
  {
    v9 = sub_252BBF5D8(*(v3 + 24));
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543A60, &unk_252E50420);
    goto LABEL_9;
  }

  return sub_252C86824(a1, a2, a3);
}

unint64_t sub_252BBFCB8()
{
  result = qword_27F543A68;
  if (!qword_27F543A68)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F543A60, &unk_252E50420);
    result = swift_getWitnessTable(MEMORY[0x277D83988], v3, v0, v1);
    atomic_store(result, &qword_27F543A68);
  }

  return result;
}

uint64_t sub_252BBFD44(void *a1)
{
  v1 = [a1 userTask];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 taskType];

    if (v3 == 1)
    {
      return sub_252C4E58C(&unk_2864AC3C0) & 1;
    }
  }

  else
  {
    sub_252C515AC();
  }

  return 0;
}

uint64_t sub_252BBFDC0()
{
  type metadata accessor for SetModeHandleDelegate();

  return swift_allocObject();
}

void sub_252BBFDF0(void *a1, void (*a2)(char *))
{
  v4 = [a1 userTask];
  if (v4)
  {
    v5 = v4;
    v6 = [a1 filters];
    if (v6)
    {
      v7 = v6;
      type metadata accessor for HomeFilter();
      v8 = sub_252E37264();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_252E3C3D0;
      *(inited + 32) = v5;
      v10 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
      v11 = v5;
      v12 = sub_252E36F04();
      v13 = [v10 initWithIdentifier:0 displayString:v12];

      v14 = v13;
      [v14 setBoolValue_];
      [v14 setType_];

      v15 = objc_allocWithZone(type metadata accessor for HomeUserTask());
      v16 = sub_252E36F04();
      v17 = [v15 initWithIdentifier:0 displayString:v16];

      v18 = v17;
      [v18 setTaskType_];
      [v18 setAttribute_];
      [v18 setValue_];

      *(inited + 40) = v18;
      v19 = sub_252B4CA9C(v8, inited, 0, 1);
      LOBYTE(v18) = v20;

      swift_setDeallocating();
      swift_arrayDestroy();
      if (v18)
      {
        v21 = v19;
        if (qword_27F53F498 != -1)
        {
          swift_once();
        }

        v22 = sub_252E36AD4();
        __swift_project_value_buffer(v22, qword_27F544C70);
        MEMORY[0x2530AD570](0x6F72724520746F47, 0xEA00000000002072);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541ED0, &unk_252E3C480);
        sub_252E37AE4();
        sub_252CC4050(0, 0xE000000000000000, 0xD00000000000007BLL, 0x8000000252E86430, 0xD000000000000021, 0x8000000252E68B10, 41);

        v23 = parse(error:with:)(v19, a1);
        (a2)();

        sub_252927D3C(v19);
        v24 = v19;
      }

      else
      {
        v28 = v19;
        v29 = sub_252C2E8D0(0x1B);
        (a2)();

        sub_252927D3C(v19);
        v24 = v19;
      }

      sub_252927D3C(v24);
      goto LABEL_13;
    }
  }

  if (qword_27F53F498 != -1)
  {
    swift_once();
  }

  v25 = sub_252E36AD4();
  __swift_project_value_buffer(v25, qword_27F544C70);
  sub_252CC4050(0xD000000000000014, 0x8000000252E6D520, 0xD00000000000007BLL, 0x8000000252E86430, 0xD000000000000021, 0x8000000252E68B10, 28);
  v11 = [objc_allocWithZone(type metadata accessor for ControlHomeIntentResponse()) init];
  v26 = OBJC_IVAR___ControlHomeIntentResponse_code;
  swift_beginAccess();
  *&v11[v26] = 5;
  [v11 setUserActivity_];
  type metadata accessor for HomeEntityResponse();
  v27 = sub_252E37254();
  [v11 setEntityResponses_];

  a2(v11);
LABEL_13:
}

unint64_t HomeAutomationSnippetModels.description.getter()
{
  v1 = v0;
  v2 = type metadata accessor for TemperatureSnippetModel(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CallToActionSnippetModel(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AutomationSnippetModel(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for CompletionSnippetModel(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ConfirmationSnippetModel(0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DisambiguationSnippetModel(0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for HomeAutomationSnippetModels(0);
  MEMORY[0x28223BE20](v20);
  v22 = &v29 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252BC0700(v1, v22);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v24 = type metadata accessor for ConfirmationSnippetModel;
        sub_252BC2B10(v22, v16, type metadata accessor for ConfirmationSnippetModel);
        v25 = ConfirmationSnippetModel.description.getter();
        v26 = v16;
      }

      else
      {
        v24 = type metadata accessor for CompletionSnippetModel;
        sub_252BC2B10(v22, v13, type metadata accessor for CompletionSnippetModel);
        v25 = CompletionSnippetModel.description.getter();
        v26 = v13;
      }
    }

    else
    {
      v24 = type metadata accessor for DisambiguationSnippetModel;
      sub_252BC2B10(v22, v19, type metadata accessor for DisambiguationSnippetModel);
      v25 = sub_252D48390();
      v26 = v19;
    }

    goto LABEL_12;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v24 = type metadata accessor for AutomationSnippetModel;
    sub_252BC2B10(v22, v10, type metadata accessor for AutomationSnippetModel);
    v25 = AutomationSnippetModel.description.getter();
    v26 = v10;
LABEL_12:
    v27 = v24;
    goto LABEL_13;
  }

  if (EnumCaseMultiPayload != 4)
  {
    v24 = type metadata accessor for TemperatureSnippetModel;
    sub_252BC2B10(v22, v4, type metadata accessor for TemperatureSnippetModel);
    v25 = TemperatureSnippetModel.description.getter();
    v26 = v4;
    goto LABEL_12;
  }

  sub_252BC2B10(v22, v7, type metadata accessor for CallToActionSnippetModel);
  v25 = CallToActionSnippetModel.description.getter();
  v26 = v7;
  v27 = type metadata accessor for CallToActionSnippetModel;
LABEL_13:
  sub_252BC0920(v26, v27);
  return v25;
}

uint64_t type metadata accessor for HomeAutomationSnippetModels(uint64_t a1)
{
  result = qword_27F543B48;
  if (!qword_27F543B48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_252BC0700(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomeAutomationSnippetModels(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t HomeAutomationSnippetModels.snippetHidden(for:idiom:)(uint64_t a1, uint64_t a2)
{
  v3 = sub_252E35FD4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for HomeAutomationSnippetModels(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252BC0700(v2, v9);
  if ((swift_getEnumCaseMultiPayload() | 2) == 2)
  {
    v10 = 0;
  }

  else
  {
    (*(v4 + 104))(v6, *MEMORY[0x277D61BE8], v3);
    v10 = sub_252E35FC4();
    (*(v4 + 8))(v6, v3);
  }

  sub_252BC0920(v9, type metadata accessor for HomeAutomationSnippetModels);
  return v10 & 1;
}

uint64_t sub_252BC0920(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_252BC0980(uint64_t a1)
{
  v2 = sub_252BC1B08();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252BC09BC(uint64_t a1)
{
  v2 = sub_252BC1B08();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_252BC09F8(uint64_t a1)
{
  v2 = sub_252BC1AB4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252BC0A34(uint64_t a1)
{
  v2 = sub_252BC1AB4();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_252BC0A70()
{
  v1 = *v0;
  v2 = 0x6974656C706D6F63;
  v3 = 0x6974616D6F747561;
  v4 = 0x74617265706D6574;
  if (v1 == 4)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  if (v1 == 1)
  {
    v2 = 0xD000000000000010;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000012;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_252BC0B48@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_252BC36A4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_252BC0B70(uint64_t a1)
{
  v2 = sub_252BC1A0C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252BC0BAC(uint64_t a1)
{
  v2 = sub_252BC1A0C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_252BC0BE8(uint64_t a1)
{
  v2 = sub_252BC1B5C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252BC0C24(uint64_t a1)
{
  v2 = sub_252BC1B5C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_252BC0C60(uint64_t a1)
{
  v2 = sub_252BC1BB0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252BC0C9C(uint64_t a1)
{
  v2 = sub_252BC1BB0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_252BC0CD8(uint64_t a1)
{
  v2 = sub_252BC1C04();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252BC0D14(uint64_t a1)
{
  v2 = sub_252BC1C04();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_252BC0D50(uint64_t a1)
{
  v2 = sub_252BC1A60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252BC0D8C(uint64_t a1)
{
  v2 = sub_252BC1A60();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HomeAutomationSnippetModels.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543A70, &qword_252E50460);
  v74 = *(v2 - 8);
  v75 = v2;
  MEMORY[0x28223BE20](v2);
  v73 = &v48 - v3;
  v71 = type metadata accessor for TemperatureSnippetModel(0);
  MEMORY[0x28223BE20](v71);
  v72 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543A78, &qword_252E50468);
  v69 = *(v5 - 8);
  v70 = v5;
  MEMORY[0x28223BE20](v5);
  v68 = &v48 - v6;
  v66 = type metadata accessor for CallToActionSnippetModel(0);
  MEMORY[0x28223BE20](v66);
  v67 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543A80, &qword_252E50470);
  v64 = *(v8 - 8);
  v65 = v8;
  MEMORY[0x28223BE20](v8);
  v63 = &v48 - v9;
  v61 = type metadata accessor for AutomationSnippetModel(0);
  MEMORY[0x28223BE20](v61);
  v62 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543A88, &qword_252E50478);
  v59 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v58 = &v48 - v11;
  v56 = type metadata accessor for CompletionSnippetModel(0);
  MEMORY[0x28223BE20](v56);
  v57 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543A90, &qword_252E50480);
  v54 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v53 = &v48 - v13;
  v51 = type metadata accessor for ConfirmationSnippetModel(0);
  MEMORY[0x28223BE20](v51);
  v52 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543A98, &qword_252E50488);
  v49 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v16 = &v48 - v15;
  v17 = type metadata accessor for DisambiguationSnippetModel(0);
  MEMORY[0x28223BE20](v17);
  v19 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for HomeAutomationSnippetModels(0);
  MEMORY[0x28223BE20](v20);
  v22 = &v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543AA0, &qword_252E50490);
  v77 = *(v23 - 8);
  v78 = v23;
  MEMORY[0x28223BE20](v23);
  v25 = &v48 - v24;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252BC1A0C();
  v76 = v25;
  sub_252E37F84();
  sub_252BC0700(v79, v22);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v36 = v62;
      sub_252BC2B10(v22, v62, type metadata accessor for AutomationSnippetModel);
      v83 = 3;
      sub_252BC1B08();
      v44 = v63;
      v34 = v78;
      v35 = v76;
      sub_252E37C84();
      sub_252BC2C08(&qword_27F543968, type metadata accessor for AutomationSnippetModel, protocol conformance descriptor for AutomationSnippetModel);
      v45 = v65;
      sub_252E37D54();
      (*(v64 + 8))(v44, v45);
      v39 = type metadata accessor for AutomationSnippetModel;
    }

    else
    {
      v34 = v78;
      v35 = v76;
      if (EnumCaseMultiPayload == 4)
      {
        v36 = v67;
        sub_252BC2B10(v22, v67, type metadata accessor for CallToActionSnippetModel);
        v84 = 4;
        sub_252BC1AB4();
        v37 = v68;
        sub_252E37C84();
        sub_252BC2C08(&qword_27F543AC0, type metadata accessor for CallToActionSnippetModel, protocol conformance descriptor for CallToActionSnippetModel);
        v38 = v70;
        sub_252E37D54();
        (*(v69 + 8))(v37, v38);
        v39 = type metadata accessor for CallToActionSnippetModel;
      }

      else
      {
        v36 = v72;
        sub_252BC2B10(v22, v72, type metadata accessor for TemperatureSnippetModel);
        v85 = 5;
        sub_252BC1A60();
        v46 = v73;
        sub_252E37C84();
        sub_252BC2C08(&qword_27F542E48, type metadata accessor for TemperatureSnippetModel, protocol conformance descriptor for TemperatureSnippetModel);
        v47 = v75;
        sub_252E37D54();
        (*(v74 + 8))(v46, v47);
        v39 = type metadata accessor for TemperatureSnippetModel;
      }
    }

    sub_252BC0920(v36, v39);
    return (*(v77 + 8))(v35, v34);
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v27 = type metadata accessor for ConfirmationSnippetModel;
      v28 = v52;
      sub_252BC2B10(v22, v52, type metadata accessor for ConfirmationSnippetModel);
      v81 = 1;
      sub_252BC1BB0();
      v29 = v53;
      v30 = v78;
      v31 = v76;
      sub_252E37C84();
      sub_252BC2C08(&qword_27F542A68, type metadata accessor for ConfirmationSnippetModel, protocol conformance descriptor for ConfirmationSnippetModel);
      v32 = v55;
      sub_252E37D54();
      v33 = &v86;
    }

    else
    {
      v27 = type metadata accessor for CompletionSnippetModel;
      v28 = v57;
      sub_252BC2B10(v22, v57, type metadata accessor for CompletionSnippetModel);
      v82 = 2;
      sub_252BC1B5C();
      v29 = v58;
      v30 = v78;
      v31 = v76;
      sub_252E37C84();
      sub_252BC2C08(&qword_27F543590, type metadata accessor for CompletionSnippetModel, protocol conformance descriptor for CompletionSnippetModel);
      v32 = v60;
      sub_252E37D54();
      v33 = &v87;
    }

    (*(*(v33 - 32) + 8))(v29, v32);
    sub_252BC0920(v28, v27);
    return (*(v77 + 8))(v31, v30);
  }

  else
  {
    sub_252BC2B10(v22, v19, type metadata accessor for DisambiguationSnippetModel);
    v80 = 0;
    sub_252BC1C04();
    v40 = v78;
    v41 = v76;
    sub_252E37C84();
    sub_252BC2C08(&qword_27F543AE8, type metadata accessor for DisambiguationSnippetModel, protocol conformance descriptor for DisambiguationSnippetModel);
    v42 = v50;
    sub_252E37D54();
    (*(v49 + 8))(v16, v42);
    sub_252BC0920(v19, type metadata accessor for DisambiguationSnippetModel);
    return (*(v77 + 8))(v41, v40);
  }
}

unint64_t sub_252BC1A0C()
{
  result = qword_27F543AA8;
  if (!qword_27F543AA8)
  {
    result = swift_getWitnessTable(byte_252E50D84, &type metadata for HomeAutomationSnippetModels.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F543AA8);
  }

  return result;
}

unint64_t sub_252BC1A60()
{
  result = qword_27F543AB0;
  if (!qword_27F543AB0)
  {
    result = swift_getWitnessTable(byte_252E50D34, &type metadata for HomeAutomationSnippetModels.TemperatureViewCodingKeys, v0, v1);
    atomic_store(result, &qword_27F543AB0);
  }

  return result;
}

unint64_t sub_252BC1AB4()
{
  result = qword_27F543AB8;
  if (!qword_27F543AB8)
  {
    result = swift_getWitnessTable(aE_7, &type metadata for HomeAutomationSnippetModels.CallToActionViewCodingKeys, v0, v1);
    atomic_store(result, &qword_27F543AB8);
  }

  return result;
}

unint64_t sub_252BC1B08()
{
  result = qword_27F543AC8;
  if (!qword_27F543AC8)
  {
    result = swift_getWitnessTable(byte_252E50C94, &type metadata for HomeAutomationSnippetModels.AutomationViewCodingKeys, v0, v1);
    atomic_store(result, &qword_27F543AC8);
  }

  return result;
}

unint64_t sub_252BC1B5C()
{
  result = qword_27F543AD0;
  if (!qword_27F543AD0)
  {
    result = swift_getWitnessTable(byte_252E50C44, &type metadata for HomeAutomationSnippetModels.CompletionViewCodingKeys, v0, v1);
    atomic_store(result, &qword_27F543AD0);
  }

  return result;
}

unint64_t sub_252BC1BB0()
{
  result = qword_27F543AD8;
  if (!qword_27F543AD8)
  {
    result = swift_getWitnessTable(a5_2, &type metadata for HomeAutomationSnippetModels.ConfirmationViewCodingKeys, v0, v1);
    atomic_store(result, &qword_27F543AD8);
  }

  return result;
}

unint64_t sub_252BC1C04()
{
  result = qword_27F543AE0;
  if (!qword_27F543AE0)
  {
    result = swift_getWitnessTable(byte_252E50BA4, &type metadata for HomeAutomationSnippetModels.DisambiguationViewCodingKeys, v0, v1);
    atomic_store(result, &qword_27F543AE0);
  }

  return result;
}

uint64_t HomeAutomationSnippetModels.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v104 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543AF0, &qword_252E50498);
  v4 = *(v3 - 8);
  v95 = v3;
  v96 = v4;
  MEMORY[0x28223BE20](v3);
  v98 = &v77 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543AF8, &qword_252E504A0);
  v93 = *(v6 - 8);
  v94 = v6;
  MEMORY[0x28223BE20](v6);
  v97 = &v77 - v7;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543B00, &qword_252E504A8);
  v92 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v103 = &v77 - v8;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543B08, &qword_252E504B0);
  v90 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v102 = &v77 - v9;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543B10, &qword_252E504B8);
  v88 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v101 = &v77 - v10;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543B18, &qword_252E504C0);
  v85 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v99 = &v77 - v11;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543B20, &unk_252E504C8);
  v105 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v13 = &v77 - v12;
  v106 = type metadata accessor for HomeAutomationSnippetModels(0);
  v14 = MEMORY[0x28223BE20](v106);
  v84 = &v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v83 = &v77 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v77 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v77 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v77 - v25;
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v77 - v28;
  MEMORY[0x28223BE20](v27);
  v31 = &v77 - v30;
  v32 = a1[3];
  v109 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v32);
  sub_252BC1A0C();
  v100 = v13;
  v33 = v108;
  sub_252E37F74();
  if (!v33)
  {
    v78 = v26;
    v79 = v23;
    v80 = v20;
    v81 = v29;
    v34 = v99;
    v36 = v101;
    v35 = v102;
    v108 = 0;
    v37 = v103;
    v82 = v31;
    v39 = v106;
    v38 = v107;
    v40 = v104;
    v41 = v100;
    v42 = sub_252E37C74();
    v43 = (2 * *(v42 + 16)) | 1;
    v110 = v42;
    v111 = v42 + 32;
    v112 = 0;
    v113 = v43;
    v44 = sub_252ABA29C();
    v45 = v38;
    if (v44 == 6 || v112 != v113 >> 1)
    {
      v51 = sub_252E37A74();
      swift_allocError();
      v53 = v52;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542C30, &qword_252E48200);
      *v53 = v39;
      sub_252E37B94();
      sub_252E37A64();
      (*(*(v51 - 8) + 104))(v53, *MEMORY[0x277D84160], v51);
      swift_willThrow();
      (*(v105 + 8))(v41, v45);
    }

    else
    {
      if (v44 <= 2u)
      {
        if (v44)
        {
          v46 = v108;
          if (v44 != 1)
          {
            v114 = 2;
            sub_252BC1B5C();
            v66 = v35;
            sub_252E37B84();
            if (!v46)
            {
              type metadata accessor for CompletionSnippetModel(0);
              sub_252BC2C08(&qword_27F543588, type metadata accessor for CompletionSnippetModel, protocol conformance descriptor for CompletionSnippetModel);
              v73 = v79;
              v74 = v87;
              sub_252E37C64();
              v75 = v105;
              (*(v90 + 8))(v66, v74);
              (*(v75 + 8))(v41, v38);
              swift_unknownObjectRelease();
              swift_storeEnumTagMultiPayload();
              v76 = v73;
              goto LABEL_27;
            }

            (*(v105 + 8))(v41, v38);
            goto LABEL_10;
          }

          v114 = 1;
          sub_252BC1BB0();
          v47 = v36;
          v48 = v38;
          sub_252E37B84();
          if (!v46)
          {
            type metadata accessor for ConfirmationSnippetModel(0);
            sub_252BC2C08(&qword_27F542A60, type metadata accessor for ConfirmationSnippetModel, protocol conformance descriptor for ConfirmationSnippetModel);
            v49 = v78;
            v50 = v89;
            sub_252E37C64();
            (*(v88 + 8))(v47, v50);
            (*(v105 + 8))(v41, v48);
            swift_unknownObjectRelease();
            swift_storeEnumTagMultiPayload();
            v76 = v49;
LABEL_27:
            v55 = v40;
            goto LABEL_28;
          }
        }

        else
        {
          v114 = 0;
          sub_252BC1C04();
          v48 = v38;
          v61 = v108;
          sub_252E37B84();
          if (!v61)
          {
            type metadata accessor for DisambiguationSnippetModel(0);
            sub_252BC2C08(&qword_27F543B30, type metadata accessor for DisambiguationSnippetModel, protocol conformance descriptor for DisambiguationSnippetModel);
            v62 = v81;
            v63 = v86;
            sub_252E37C64();
            (*(v85 + 8))(v34, v63);
            (*(v105 + 8))(v41, v48);
            swift_unknownObjectRelease();
            swift_storeEnumTagMultiPayload();
            v55 = v40;
            v76 = v62;
LABEL_28:
            v56 = v82;
            goto LABEL_29;
          }
        }

        goto LABEL_24;
      }

      v55 = v40;
      if (v44 != 3)
      {
        v56 = v82;
        if (v44 == 4)
        {
          v114 = 4;
          sub_252BC1AB4();
          v57 = v97;
          v48 = v45;
          v58 = v108;
          sub_252E37B84();
          if (!v58)
          {
            type metadata accessor for CallToActionSnippetModel(0);
            sub_252BC2C08(&qword_27F543B28, type metadata accessor for CallToActionSnippetModel, protocol conformance descriptor for CallToActionSnippetModel);
            v59 = v83;
            v60 = v94;
            sub_252E37C64();
            (*(v93 + 8))(v57, v60);
            (*(v105 + 8))(v41, v107);
            swift_unknownObjectRelease();
            swift_storeEnumTagMultiPayload();
            v76 = v59;
LABEL_29:
            sub_252BC2B10(v76, v56, type metadata accessor for HomeAutomationSnippetModels);
            sub_252BC2B10(v56, v55, type metadata accessor for HomeAutomationSnippetModels);
            return __swift_destroy_boxed_opaque_existential_1(v109);
          }
        }

        else
        {
          v114 = 5;
          sub_252BC1A60();
          v48 = v45;
          v67 = v108;
          sub_252E37B84();
          if (!v67)
          {
            type metadata accessor for TemperatureSnippetModel(0);
            sub_252BC2C08(&qword_27F542E40, type metadata accessor for TemperatureSnippetModel, protocol conformance descriptor for TemperatureSnippetModel);
            v68 = v84;
            v69 = v95;
            v70 = v98;
            sub_252E37C64();
            (*(v96 + 8))(v70, v69);
            (*(v105 + 8))(v41, v48);
            swift_unknownObjectRelease();
            swift_storeEnumTagMultiPayload();
            v76 = v68;
            goto LABEL_29;
          }
        }

LABEL_24:
        (*(v105 + 8))(v41, v48);
        goto LABEL_10;
      }

      v64 = v40;
      v114 = 3;
      sub_252BC1B08();
      v65 = v108;
      sub_252E37B84();
      v56 = v82;
      if (!v65)
      {
        type metadata accessor for AutomationSnippetModel(0);
        sub_252BC2C08(&qword_27F543960, type metadata accessor for AutomationSnippetModel, protocol conformance descriptor for AutomationSnippetModel);
        v71 = v80;
        v72 = v91;
        sub_252E37C64();
        (*(v92 + 8))(v37, v72);
        (*(v105 + 8))(v41, v107);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v76 = v71;
        v55 = v64;
        goto LABEL_29;
      }

      (*(v105 + 8))(v41, v45);
    }

LABEL_10:
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v109);
}

uint64_t sub_252BC2B10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_252BC2C08(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_252BC2C6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_252E35FD4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252BC0700(v3, v10);
  if ((swift_getEnumCaseMultiPayload() | 2) == 2)
  {
    v11 = 0;
  }

  else
  {
    (*(v5 + 104))(v8, *MEMORY[0x277D61BE8], v4);
    v11 = sub_252E35FC4();
    (*(v5 + 8))(v8, v4);
  }

  sub_252BC0920(v10, type metadata accessor for HomeAutomationSnippetModels);
  return v11 & 1;
}

uint64_t sub_252BC2E38(uint64_t a1)
{
  result = type metadata accessor for DisambiguationSnippetModel(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ConfirmationSnippetModel(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for CompletionSnippetModel(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for AutomationSnippetModel(319);
        if (v5 <= 0x3F)
        {
          result = type metadata accessor for CallToActionSnippetModel(319);
          if (v6 <= 0x3F)
          {
            result = type metadata accessor for TemperatureSnippetModel(319);
            if (v7 <= 0x3F)
            {
              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return result;
}

unint64_t sub_252BC2F70()
{
  result = qword_27F543B58;
  if (!qword_27F543B58)
  {
    result = swift_getWitnessTable(byte_252E5072C, &type metadata for HomeAutomationSnippetModels.TemperatureViewCodingKeys, v0, v1);
    atomic_store(result, &qword_27F543B58);
  }

  return result;
}

unint64_t sub_252BC2FC8()
{
  result = qword_27F543B60;
  if (!qword_27F543B60)
  {
    result = swift_getWitnessTable(byte_252E507E4, &type metadata for HomeAutomationSnippetModels.CallToActionViewCodingKeys, v0, v1);
    atomic_store(result, &qword_27F543B60);
  }

  return result;
}

unint64_t sub_252BC3020()
{
  result = qword_27F543B68;
  if (!qword_27F543B68)
  {
    result = swift_getWitnessTable(asc_252E5089C, &type metadata for HomeAutomationSnippetModels.AutomationViewCodingKeys, v0, v1);
    atomic_store(result, &qword_27F543B68);
  }

  return result;
}

unint64_t sub_252BC3078()
{
  result = qword_27F543B70;
  if (!qword_27F543B70)
  {
    result = swift_getWitnessTable(aU_11, &type metadata for HomeAutomationSnippetModels.CompletionViewCodingKeys, v0, v1);
    atomic_store(result, &qword_27F543B70);
  }

  return result;
}

unint64_t sub_252BC30D0()
{
  result = qword_27F543B78;
  if (!qword_27F543B78)
  {
    result = swift_getWitnessTable(byte_252E50A0C, &type metadata for HomeAutomationSnippetModels.ConfirmationViewCodingKeys, v0, v1);
    atomic_store(result, &qword_27F543B78);
  }

  return result;
}

unint64_t sub_252BC3128()
{
  result = qword_27F543B80;
  if (!qword_27F543B80)
  {
    result = swift_getWitnessTable(byte_252E50AC4, &type metadata for HomeAutomationSnippetModels.DisambiguationViewCodingKeys, v0, v1);
    atomic_store(result, &qword_27F543B80);
  }

  return result;
}

unint64_t sub_252BC3180()
{
  result = qword_27F543B88;
  if (!qword_27F543B88)
  {
    result = swift_getWitnessTable(aM_6, &type metadata for HomeAutomationSnippetModels.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F543B88);
  }

  return result;
}

unint64_t sub_252BC31D8()
{
  result = qword_27F543B90;
  if (!qword_27F543B90)
  {
    result = swift_getWitnessTable(aM_7, &type metadata for HomeAutomationSnippetModels.DisambiguationViewCodingKeys, v0, v1);
    atomic_store(result, &qword_27F543B90);
  }

  return result;
}

unint64_t sub_252BC3230()
{
  result = qword_27F543B98;
  if (!qword_27F543B98)
  {
    result = swift_getWitnessTable(asc_252E50A5C, &type metadata for HomeAutomationSnippetModels.DisambiguationViewCodingKeys, v0, v1);
    atomic_store(result, &qword_27F543B98);
  }

  return result;
}

unint64_t sub_252BC3288()
{
  result = qword_27F543BA0;
  if (!qword_27F543BA0)
  {
    result = swift_getWitnessTable(asc_252E5097C, &type metadata for HomeAutomationSnippetModels.ConfirmationViewCodingKeys, v0, v1);
    atomic_store(result, &qword_27F543BA0);
  }

  return result;
}

unint64_t sub_252BC32E0()
{
  result = qword_27F543BA8;
  if (!qword_27F543BA8)
  {
    result = swift_getWitnessTable(a5_3, &type metadata for HomeAutomationSnippetModels.ConfirmationViewCodingKeys, v0, v1);
    atomic_store(result, &qword_27F543BA8);
  }

  return result;
}

unint64_t sub_252BC3338()
{
  result = qword_27F543BB0;
  if (!qword_27F543BB0)
  {
    result = swift_getWitnessTable(a8, &type metadata for HomeAutomationSnippetModels.CompletionViewCodingKeys, v0, v1);
    atomic_store(result, &qword_27F543BB0);
  }

  return result;
}

unint64_t sub_252BC3390()
{
  result = qword_27F543BB8;
  if (!qword_27F543BB8)
  {
    result = swift_getWitnessTable(byte_252E508EC, &type metadata for HomeAutomationSnippetModels.CompletionViewCodingKeys, v0, v1);
    atomic_store(result, &qword_27F543BB8);
  }

  return result;
}

unint64_t sub_252BC33E8()
{
  result = qword_27F543BC0;
  if (!qword_27F543BC0)
  {
    result = swift_getWitnessTable(byte_252E5080C, &type metadata for HomeAutomationSnippetModels.AutomationViewCodingKeys, v0, v1);
    atomic_store(result, &qword_27F543BC0);
  }

  return result;
}

unint64_t sub_252BC3440()
{
  result = qword_27F543BC8;
  if (!qword_27F543BC8)
  {
    result = swift_getWitnessTable(byte_252E50834, &type metadata for HomeAutomationSnippetModels.AutomationViewCodingKeys, v0, v1);
    atomic_store(result, &qword_27F543BC8);
  }

  return result;
}

unint64_t sub_252BC3498()
{
  result = qword_27F543BD0;
  if (!qword_27F543BD0)
  {
    result = swift_getWitnessTable(aM_8, &type metadata for HomeAutomationSnippetModels.CallToActionViewCodingKeys, v0, v1);
    atomic_store(result, &qword_27F543BD0);
  }

  return result;
}

unint64_t sub_252BC34F0()
{
  result = qword_27F543BD8;
  if (!qword_27F543BD8)
  {
    result = swift_getWitnessTable(asc_252E5077C, &type metadata for HomeAutomationSnippetModels.CallToActionViewCodingKeys, v0, v1);
    atomic_store(result, &qword_27F543BD8);
  }

  return result;
}

unint64_t sub_252BC3548()
{
  result = qword_27F543BE0;
  if (!qword_27F543BE0)
  {
    result = swift_getWitnessTable(byte_252E5069C, &type metadata for HomeAutomationSnippetModels.TemperatureViewCodingKeys, v0, v1);
    atomic_store(result, &qword_27F543BE0);
  }

  return result;
}

unint64_t sub_252BC35A0()
{
  result = qword_27F543BE8;
  if (!qword_27F543BE8)
  {
    result = swift_getWitnessTable(byte_252E506C4, &type metadata for HomeAutomationSnippetModels.TemperatureViewCodingKeys, v0, v1);
    atomic_store(result, &qword_27F543BE8);
  }

  return result;
}

unint64_t sub_252BC35F8()
{
  result = qword_27F543BF0;
  if (!qword_27F543BF0)
  {
    result = swift_getWitnessTable(byte_252E50AEC, &type metadata for HomeAutomationSnippetModels.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F543BF0);
  }

  return result;
}

unint64_t sub_252BC3650()
{
  result = qword_27F543BF8;
  if (!qword_27F543BF8)
  {
    result = swift_getWitnessTable(aS, &type metadata for HomeAutomationSnippetModels.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F543BF8);
  }

  return result;
}

uint64_t sub_252BC36A4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000012 && 0x8000000252E864D0 == a2;
  if (v3 || (sub_252E37DB4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000252E864F0 == a2 || (sub_252E37DB4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6974656C706D6F63 && a2 == 0xEE00776569566E6FLL || (sub_252E37DB4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6974616D6F747561 && a2 == 0xEE00776569566E6FLL || (sub_252E37DB4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000252E86510 == a2 || (sub_252E37DB4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x74617265706D6574 && a2 == 0xEF77656956657275)
  {

    return 5;
  }

  else
  {
    v6 = sub_252E37DB4();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

void sub_252BC38D8(uint64_t a1)
{
  v2 = v1;
  v5 = sub_252E34114();
  v6 = v4;
  if (v5 == 0xD000000000000041 && 0x8000000252E86530 == v4 || (sub_252E37DB4() & 1) != 0)
  {

    sub_252BC3CEC(a1);
    return;
  }

  if (v5 == 0xD00000000000003ALL && 0x8000000252E86580 == v6 || (sub_252E37DB4() & 1) != 0)
  {

    sub_252BC4524();
    return;
  }

  if (v5 == 0xD000000000000045 && 0x8000000252E865C0 == v6 || (sub_252E37DB4() & 1) != 0)
  {

    v7 = *(v2 + 32);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_2529F8B34(0, *(v7 + 2) + 1, 1, v7);
    }

    v9 = *(v7 + 2);
    v8 = *(v7 + 3);
    if (v9 >= v8 >> 1)
    {
      v7 = sub_2529F8B34((v8 > 1), v9 + 1, 1, v7);
    }

    *(v7 + 2) = v9 + 1;
    v7[v9 + 32] = 2;
    *(v2 + 32) = v7;
    return;
  }

  if (v5 == 0xD000000000000046 && 0x8000000252E86610 == v6 || (sub_252E37DB4() & 1) != 0)
  {

    sub_252BC47F8();
    return;
  }

  if (v5 == 0xD000000000000044 && 0x8000000252E727F0 == v6 || (sub_252E37DB4() & 1) != 0)
  {

    sub_252BC512C();
    return;
  }

  if (v5 == 0xD000000000000041 && 0x8000000252E6B180 == v6 || (sub_252E37DB4() & 1) != 0)
  {

    sub_252BC55A8();
    return;
  }

  if (v5 == 0xD000000000000048 && 0x8000000252E86660 == v6)
  {

LABEL_43:

    sub_252BC5A14();
    return;
  }

  v10 = sub_252E37DB4();

  if (v10)
  {
    goto LABEL_43;
  }

  if (qword_27F53F4F8 != -1)
  {
    swift_once();
  }

  v11 = sub_252E36AD4();
  __swift_project_value_buffer(v11, qword_27F544D90);
  sub_252CC4050(0xD000000000000020, 0x8000000252E866B0, 0xD000000000000083, 0x8000000252E866E0, 0xD000000000000016, 0x8000000252E86770, 31);
}

uint64_t sub_252BC3CEC(uint64_t a1)
{
  v2 = sub_252E36F84();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = type metadata accessor for HomeAutomationNLV3Intent(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_252E358D4();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v46 - v11;
  v13 = sub_252E34124();
  if (!v13)
  {
    if (qword_27F53F4F8 != -1)
    {
LABEL_49:
      swift_once();
    }

    v19 = sub_252E36AD4();
    __swift_project_value_buffer(v19, qword_27F544D90);
    v60 = 0;
    v61 = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000032, 0x8000000252E86790);
    sub_252E34134();
    sub_252E37AE4();
    sub_252CC4050(v60, v61, 0xD000000000000083, 0x8000000252E866E0, 0xD00000000000002DLL, 0x8000000252E867D0, 134);
  }

  v14 = v13;
  if (!*(v13 + 16))
  {
  }

  v15 = sub_252A44A10(0x6573726150, 0xE500000000000000);
  if ((v16 & 1) == 0)
  {
  }

  sub_252974E7C(*(v14 + 56) + 32 * v15, &v60);
  if ((swift_dynamicCast() & 1) == 0)
  {
  }

  v54 = v1;
  v55 = v7;
  v56 = v6;
  v17 = v58;
  v18 = v59;
  sub_2529E61B0(v58, v59);
  v57 = v17;
  sub_252E35874();
  (*(v55 + 16))(v10, v12, v56);
  HomeAutomationNLV3Intent.init(_:)(v10, v5);
  sub_25295B778(v5);
  sub_25294E8F4(v5);
  if (!*(v14 + 16) || (v21 = sub_252A44A10(0x6F6E79536D6F6F52, 0xEC000000736D796ELL), (v22 & 1) == 0))
  {
    sub_25296464C(v57, v18);

    return (*(v55 + 8))(v12, v56);
  }

  sub_252974E7C(*(v14 + 56) + 32 * v21, &v60);

  if ((swift_dynamicCast() & 1) == 0)
  {
    (*(v55 + 8))(v12, v56);
    return sub_25296464C(v57, v18);
  }

  v24 = v58;
  v23 = v59;
  sub_252E36F74();
  v25 = sub_252E36F54();
  if (!v26)
  {
    (*(v55 + 8))(v12, v56);
    sub_25296464C(v57, v18);
    return sub_25296464C(v24, v23);
  }

  v60 = v25;
  v61 = v26;
  v58 = 12079;
  v59 = 0xE200000000000000;
  sub_252947DBC();
  v27 = sub_252E37794();

  v52 = *(v27 + 16);
  if (!v52)
  {
    v44 = v24;
    v45 = v23;
LABEL_46:
    sub_25296464C(v44, v45);

    sub_25296464C(v57, v18);
    return (*(v55 + 8))(v12, v56);
  }

  v46 = v24;
  result = type metadata accessor for HomeStore(0);
  v28 = 0;
  v50 = v27 + 32;
  v51 = result;
  v48 = v23;
  v49 = v18;
  v47 = v27;
  while (v28 < *(v27 + 16))
  {
    v31 = (v50 + 16 * v28);
    v33 = *v31;
    v32 = v31[1];

    v35 = static HomeStore.shared.getter(v34);
    v36 = sub_2529D9884();

    v53 = v28;
    if (v36 >> 62)
    {
      v37 = sub_252E378C4();
      if (v37)
      {
LABEL_21:
        v38 = 0;
        while (1)
        {
          if ((v36 & 0xC000000000000001) != 0)
          {
            v39 = MEMORY[0x2530ADF00](v38, v36);
            v40 = v38 + 1;
            if (__OFADD__(v38, 1))
            {
              goto LABEL_47;
            }
          }

          else
          {
            if (v38 >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_48;
            }

            v39 = *(v36 + 8 * v38 + 32);

            v40 = v38 + 1;
            if (__OFADD__(v38, 1))
            {
LABEL_47:
              __break(1u);
LABEL_48:
              __break(1u);
              goto LABEL_49;
            }
          }

          v41 = *(v39 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name) == v33 && *(v39 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8) == v32;
          if (v41 || (sub_252E37DB4() & 1) != 0)
          {
            break;
          }

          ++v38;
          if (v40 == v37)
          {
            goto LABEL_16;
          }
        }

        v43 = v54;
        MEMORY[0x2530AD700](v42);
        v29 = v48;
        v18 = v49;
        v27 = v47;
        v30 = v53;
        if (*((*(v43 + 392) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v43 + 392) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_252E372A4();
        }

        sub_252E372D4();

        goto LABEL_17;
      }
    }

    else
    {
      v37 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v37)
      {
        goto LABEL_21;
      }
    }

LABEL_16:

    v29 = v48;
    v18 = v49;
    v27 = v47;
    v30 = v53;
LABEL_17:
    v28 = v30 + 1;
    if (v28 == v52)
    {
      v44 = v46;
      v45 = v29;
      goto LABEL_46;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_252BC4524()
{
  v1 = v0;
  v2 = sub_252E36AD4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_252E34124();
  if (v6)
  {
    v7 = v6;
    if (*(v6 + 16) && (v8 = sub_252A44A10(0x72506E6F74747562, 0xED00006465737365), (v9 & 1) != 0))
    {
      sub_252974E7C(*(v7 + 56) + 32 * v8, &v18);

      if (swift_dynamicCast())
      {
        v10 = sub_252E37B74();

        v12 = 3;
        if (v10 < 3)
        {
          v12 = v10;
        }

        *(v1 + 9) = v12;
        return result;
      }
    }

    else
    {
    }
  }

  if (qword_27F53F4F8 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v2, qword_27F544D90);
  (*(v3 + 16))(v5, v13, v2);
  v18 = 0;
  v19 = 0xE000000000000000;
  sub_252E379F4();

  v18 = 0xD000000000000023;
  v19 = 0x8000000252E86870;
  if (sub_252E34124())
  {
    v14 = sub_252E36E54();
    v16 = v15;
  }

  else
  {
    v16 = 0xE300000000000000;
    v14 = 7104878;
  }

  MEMORY[0x2530AD570](v14, v16);

  sub_252CC4050(v18, v19, 0xD000000000000083, 0x8000000252E866E0, 0xD00000000000002CLL, 0x8000000252E868A0, 140);

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_252BC47F8()
{
  v1 = v0;
  v2 = sub_252E36AD4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v85 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_252E34124();
  if (v6)
  {
    v7 = v6;
    if (*(v6 + 16) && (v8 = sub_252A44A10(1836019570, 0xE400000000000000), (v9 & 1) != 0))
    {
      sub_252974E7C(*(v7 + 56) + 32 * v8, &v87);

      if (swift_dynamicCast())
      {
        v10 = v85;
        v11 = v86;
        v12 = v1[13];
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_2529F7A80(0, *(v12 + 16) + 1, 1, v12);
          v12 = result;
        }

        v15 = *(v12 + 16);
        v14 = *(v12 + 24);
        if (v15 >= v14 >> 1)
        {
          result = sub_2529F7A80((v14 > 1), v15 + 1, 1, v12);
          v12 = result;
        }

        *(v12 + 16) = v15 + 1;
        v16 = v12 + 16 * v15;
        *(v16 + 32) = v10;
        *(v16 + 40) = v11;
        v1[13] = v12;
        return result;
      }
    }

    else
    {
    }
  }

  v17 = sub_252E34124();
  if (v17)
  {
    v18 = v17;
    if (*(v17 + 16) && (v19 = sub_252A44A10(1701736314, 0xE400000000000000), (v20 & 1) != 0))
    {
      sub_252974E7C(*(v18 + 56) + 32 * v19, &v87);

      if (swift_dynamicCast())
      {
        v21 = v85;
        v22 = v86;
        v23 = v1[28];
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_2529F7A80(0, *(v23 + 16) + 1, 1, v23);
          v23 = result;
        }

        v25 = *(v23 + 16);
        v24 = *(v23 + 24);
        if (v25 >= v24 >> 1)
        {
          result = sub_2529F7A80((v24 > 1), v25 + 1, 1, v23);
          v23 = result;
        }

        *(v23 + 16) = v25 + 1;
        v26 = v23 + 16 * v25;
        *(v26 + 32) = v21;
        *(v26 + 40) = v22;
        v1[28] = v23;
        return result;
      }
    }

    else
    {
    }
  }

  v27 = sub_252E34124();
  if (v27)
  {
    v28 = v27;
    if (*(v27 + 16) && (v29 = sub_252A44A10(1701670760, 0xE400000000000000), (v30 & 1) != 0))
    {
      sub_252974E7C(*(v28 + 56) + 32 * v29, &v87);

      if (swift_dynamicCast())
      {
        v31 = v85;
        v32 = v86;
        v33 = v1[6];
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_2529F7A80(0, *(v33 + 16) + 1, 1, v33);
          v33 = result;
        }

        v35 = *(v33 + 16);
        v34 = *(v33 + 24);
        if (v35 >= v34 >> 1)
        {
          result = sub_2529F7A80((v34 > 1), v35 + 1, 1, v33);
          v33 = result;
        }

        *(v33 + 16) = v35 + 1;
        v36 = v33 + 16 * v35;
        *(v36 + 32) = v31;
        *(v36 + 40) = v32;
        v1[6] = v33;
        return result;
      }
    }

    else
    {
    }
  }

  v37 = sub_252E34124();
  if (v37)
  {
    v38 = v37;
    if (*(v37 + 16) && (v39 = sub_252A44A10(0x70756F7267, 0xE500000000000000), (v40 & 1) != 0))
    {
      sub_252974E7C(*(v38 + 56) + 32 * v39, &v87);

      if (swift_dynamicCast())
      {
        v41 = v85;
        v42 = v86;
        v43 = v1[20];
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_2529F7A80(0, *(v43 + 16) + 1, 1, v43);
          v43 = result;
        }

        v45 = *(v43 + 16);
        v44 = *(v43 + 24);
        if (v45 >= v44 >> 1)
        {
          result = sub_2529F7A80((v44 > 1), v45 + 1, 1, v43);
          v43 = result;
        }

        *(v43 + 16) = v45 + 1;
        v46 = v43 + 16 * v45;
        *(v46 + 32) = v41;
        *(v46 + 40) = v42;
        v1[20] = v43;
        return result;
      }
    }

    else
    {
    }
  }

  v47 = sub_252E34124();
  if (v47)
  {
    v48 = v47;
    if (*(v47 + 16) && (v49 = sub_252A44A10(0x656369766564, 0xE600000000000000), (v50 & 1) != 0))
    {
      sub_252974E7C(*(v48 + 56) + 32 * v49, &v87);

      if (swift_dynamicCast())
      {
        v51 = v85;
        v52 = v86;
        v53 = v1[21];
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_2529F7A80(0, *(v53 + 16) + 1, 1, v53);
          v53 = result;
        }

        v55 = *(v53 + 16);
        v54 = *(v53 + 24);
        if (v55 >= v54 >> 1)
        {
          result = sub_2529F7A80((v54 > 1), v55 + 1, 1, v53);
          v53 = result;
        }

        *(v53 + 16) = v55 + 1;
        v56 = v53 + 16 * v55;
        *(v56 + 32) = v51;
        *(v56 + 40) = v52;
        v1[21] = v53;
        return result;
      }
    }

    else
    {
    }
  }

  v57 = sub_252E34124();
  if (v57)
  {
    v58 = v57;
    if (*(v57 + 16) && (v59 = sub_252A44A10(0x65636976726573, 0xE700000000000000), (v60 & 1) != 0))
    {
      sub_252974E7C(*(v58 + 56) + 32 * v59, &v87);

      if (swift_dynamicCast())
      {
        v61 = v85;
        v62 = v86;
        v63 = v1[19];
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_2529F7A80(0, *(v63 + 16) + 1, 1, v63);
          v63 = result;
        }

        v65 = *(v63 + 16);
        v64 = *(v63 + 24);
        if (v65 >= v64 >> 1)
        {
          result = sub_2529F7A80((v64 > 1), v65 + 1, 1, v63);
          v63 = result;
        }

        *(v63 + 16) = v65 + 1;
        v66 = v63 + 16 * v65;
        *(v66 + 32) = v61;
        *(v66 + 40) = v62;
        v1[19] = v63;
        return result;
      }
    }

    else
    {
    }
  }

  v67 = sub_252E34124();
  if (v67)
  {
    v68 = v67;
    if (*(v67 + 16) && (v69 = sub_252A44A10(0x614D746567726174, 0xE900000000000070), (v70 & 1) != 0))
    {
      sub_252974E7C(*(v68 + 56) + 32 * v69, &v87);

      if (swift_dynamicCast())
      {
        v72 = v85;
        v71 = v86;
        if (v1[31] | v1[34])
        {
          v81 = v1[28];
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_2529F7A80(0, *(v81 + 16) + 1, 1, v81);
            v81 = result;
          }

          v83 = *(v81 + 16);
          v82 = *(v81 + 24);
          if (v83 >= v82 >> 1)
          {
            result = sub_2529F7A80((v82 > 1), v83 + 1, 1, v81);
            v81 = result;
          }

          *(v81 + 16) = v83 + 1;
          v84 = v81 + 16 * v83;
          *(v84 + 32) = v72;
          *(v84 + 40) = v71;
          v1[28] = v81;
        }

        else
        {
          v73 = v1[15];
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_2529F7A80(0, *(v73 + 16) + 1, 1, v73);
            v73 = result;
          }

          v75 = *(v73 + 16);
          v74 = *(v73 + 24);
          if (v75 >= v74 >> 1)
          {
            result = sub_2529F7A80((v74 > 1), v75 + 1, 1, v73);
            v73 = result;
          }

          *(v73 + 16) = v75 + 1;
          v76 = v73 + 16 * v75;
          *(v76 + 32) = v72;
          *(v76 + 40) = v71;
          v1[15] = v73;
        }

        return result;
      }
    }

    else
    {
    }
  }

  if (qword_27F53F4F8 != -1)
  {
    swift_once();
  }

  v77 = __swift_project_value_buffer(v2, qword_27F544D90);
  (*(v3 + 16))(v5, v77, v2);
  v87 = 0;
  v88 = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000035, 0x8000000252E868D0);
  if (sub_252E34124())
  {
    v78 = sub_252E36E54();
    v80 = v79;
  }

  else
  {
    v80 = 0xE300000000000000;
    v78 = 7104878;
  }

  MEMORY[0x2530AD570](v78, v80);

  sub_252CC4050(v87, v88, 0xD000000000000083, 0x8000000252E866E0, 0xD000000000000023, 0x8000000252E86910, 100);

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_252BC512C()
{
  v1 = v0;
  v2 = sub_252E36AD4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_252E34124();
  if (v6)
  {
    v7 = v6;
    if (*(v6 + 16) && (v8 = sub_252A44A10(0x6E496465646E6168, 0xEC000000746E6574), (v9 & 1) != 0))
    {
      sub_252974E7C(*(v7 + 56) + 32 * v8, &v22);

      if (swift_dynamicCast())
      {
        v10 = v21[2];
        v11 = v21[3];
        sub_252E32994();
        swift_allocObject();
        sub_252E32984();
        type metadata accessor for HandoffHandleIntentData();
        sub_252BC5F94(&qword_27F543C00, type metadata accessor for HandoffHandleIntentData, protocol conformance descriptor for HandoffHandleIntentData);
        sub_252E32974();

        v17 = v22;
        if (qword_27F53F500 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v2, qword_27F544DA8);
        v22 = 0;
        v23 = 0xE000000000000000;
        sub_252E379F4();

        v22 = 0xD00000000000001FLL;
        v23 = 0x8000000252E869A0;
        v18 = sub_252ADBCF0();
        MEMORY[0x2530AD570](v18);

        sub_252CC3D90(v22, v23, 0xD000000000000083, 0x8000000252E866E0);

        *(sub_252B680FC(v19) + 129) = 1;

        v20 = sub_252ADB274();
        sub_25296464C(v10, v11);

        *(v1 + 496) = v20;
        LOBYTE(v20) = *(v17 + 24);

        *(v1 + 384) = v20;
        return result;
      }
    }

    else
    {
    }
  }

  if (qword_27F53F4F8 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v2, qword_27F544D90);
  (*(v3 + 16))(v5, v12, v2);
  v22 = 0;
  v23 = 0xE000000000000000;
  sub_252E379F4();

  v22 = 0xD00000000000002ALL;
  v23 = 0x8000000252E86940;
  if (sub_252E34124())
  {
    v13 = sub_252E36E54();
    v15 = v14;
  }

  else
  {
    v15 = 0xE300000000000000;
    v13 = 7104878;
  }

  MEMORY[0x2530AD570](v13, v15);

  sub_252CC4050(v22, v23, 0xD000000000000083, 0x8000000252E866E0, 0xD000000000000025, 0x8000000252E86970, 69);

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_252BC55A8()
{
  v1 = v0;
  v2 = sub_252E36AD4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_252E34124();
  if (v6)
  {
    v7 = v6;
    if (*(v6 + 16) && (v8 = sub_252A44A10(0x6E496465646E6168, 0xEC000000746E6574), (v9 & 1) != 0))
    {
      sub_252974E7C(*(v7 + 56) + 32 * v8, &v21);

      if (swift_dynamicCast())
      {
        v10 = v20[2];
        v11 = v20[3];
        sub_252E32994();
        swift_allocObject();
        sub_252E32984();
        type metadata accessor for HandoffHandleIntentData();
        sub_252BC5F94(&qword_27F543C00, type metadata accessor for HandoffHandleIntentData, protocol conformance descriptor for HandoffHandleIntentData);
        sub_252E32974();

        v17 = v21;
        if (qword_27F53F500 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v2, qword_27F544DA8);
        v21 = 0;
        v22 = 0xE000000000000000;
        sub_252E379F4();

        v21 = 0xD00000000000001FLL;
        v22 = 0x8000000252E869A0;
        v18 = sub_252ADBCF0();
        MEMORY[0x2530AD570](v18);

        sub_252CC3D90(v21, v22, 0xD000000000000083, 0x8000000252E866E0);

        v19 = sub_252ADB274();
        sub_25296464C(v10, v11);

        *(v1 + 496) = v19;
        LOBYTE(v19) = *(v17 + 24);

        *(v1 + 384) = v19;
        return result;
      }
    }

    else
    {
    }
  }

  if (qword_27F53F4F8 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v2, qword_27F544D90);
  (*(v3 + 16))(v5, v12, v2);
  v21 = 0;
  v22 = 0xE000000000000000;
  sub_252E379F4();

  v21 = 0xD00000000000002ALL;
  v22 = 0x8000000252E86940;
  if (sub_252E34124())
  {
    v13 = sub_252E36E54();
    v15 = v14;
  }

  else
  {
    v15 = 0xE300000000000000;
    v13 = 7104878;
  }

  MEMORY[0x2530AD570](v13, v15);

  sub_252CC4050(v21, v22, 0xD000000000000083, 0x8000000252E866E0, 0xD000000000000027, 0x8000000252E869C0, 43);

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_252BC5A14()
{
  v1 = v0;
  v2 = sub_252E36AD4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_252E34124();
  if (!v6)
  {
LABEL_7:
    if (qword_27F53F4F8 != -1)
    {
      goto LABEL_33;
    }

    goto LABEL_8;
  }

  v7 = v6;
  if (!*(v6 + 16) || (v8 = sub_252A44A10(0x737265746C6966, 0xE700000000000000), (v9 & 1) == 0))
  {

    goto LABEL_7;
  }

  sub_252974E7C(*(v7 + 56) + 32 * v8, &v36);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_7;
  }

  v10 = v34;
  v11 = v35;
  sub_252E32994();
  swift_allocObject();
  sub_252E32984();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540A38, &qword_252E3DF88);
  sub_252982BC0();
  sub_252E32974();

  v5 = v36;
  if (qword_27F53F4F8 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v2, qword_27F544D90);

  v17 = sub_252E36AC4();
  v18 = sub_252E374C4();

  v19 = os_log_type_enabled(v17, v18);
  v32 = v11;
  v33 = v10;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v36 = v21;
    *v20 = 136315138;
    v22 = type metadata accessor for CodableHomeFilter();
    v23 = MEMORY[0x2530AD730](v5, v22);
    v25 = sub_252BE2CE0(v23, v24, &v36);

    *(v20 + 4) = v25;
    _os_log_impl(&dword_252917000, v17, v18, "Multiple entity invocation filters: %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v21);
    MEMORY[0x2530AED00](v21, -1, -1);
    MEMORY[0x2530AED00](v20, -1, -1);
  }

  v36 = MEMORY[0x277D84F90];
  v31 = 0;
  v3 = v5 & 0xFFFFFFFFFFFFFF8;
  if (v5 >> 62)
  {
    v2 = sub_252E378C4();
  }

  else
  {
    v2 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v26 = 0;
  v27 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v2 == v26)
    {
      sub_25296464C(v33, v32);

      *(v1 + 304) = v27;
      return result;
    }

    if ((v5 & 0xC000000000000001) == 0)
    {
      break;
    }

    MEMORY[0x2530ADF00](v26, v5);
    v28 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      goto LABEL_31;
    }

LABEL_23:
    v29 = sub_252A79090();

    ++v26;
    if (v29)
    {
      MEMORY[0x2530AD700](v30);
      if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_252E372A4();
      }

      sub_252E372D4();
      v27 = v36;
      v26 = v28;
    }
  }

  if (v26 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_32;
  }

  v28 = v26 + 1;
  if (!__OFADD__(v26, 1))
  {
    goto LABEL_23;
  }

LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  swift_once();
LABEL_8:
  v12 = __swift_project_value_buffer(v2, qword_27F544D90);
  (*(v3 + 16))(v5, v12, v2);
  v36 = 0;
  v37 = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000038, 0x8000000252E869F0);
  if (sub_252E34124())
  {
    v13 = sub_252E36E54();
    v15 = v14;
  }

  else
  {
    v15 = 0xE300000000000000;
    v13 = 7104878;
  }

  MEMORY[0x2530AD570](v13, v15);

  sub_252CC4050(v36, v37, 0xD000000000000083, 0x8000000252E866E0, 0xD000000000000025, 0x8000000252E86A30, 54);

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_252BC5F94(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_252BC5FF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a1 == 0x657669746361 && a2 == 0xE600000000000000;
  if (v5 || (sub_252E37DB4() & 1) != 0)
  {
    result = sub_252BA06E4();
    if (result)
    {
LABEL_7:
      v8 = result;
      result = type metadata accessor for HomeAutomationAirPurifierResponses();
      *(a3 + 24) = result;
      *a3 = v8;
      return result;
    }

    goto LABEL_12;
  }

  if (a1 == 0x6576697463616E69 && a2 == 0xE800000000000000 || (sub_252E37DB4() & 1) != 0)
  {
    result = sub_252BA0974();
    if (result)
    {
      goto LABEL_7;
    }

LABEL_12:
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return result;
  }

  if (a1 == 1701602409 && a2 == 0xE400000000000000 || (sub_252E37DB4() & 1) != 0)
  {
    v9 = sub_25299C0F0(47, 1162626121, 0xE400000000000000);
    v10 = type metadata accessor for HomeAutomationAirPurifierResponses();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v9;
    *(a3 + 24) = v10;
    *a3 = result;
  }

  else
  {

    return sub_252C86824(a1, a2, a3);
  }

  return result;
}

uint64_t sub_252BC61B0()
{
  swift_beginAccess();
  v0 = sub_252BC6360(&unk_27F543C09, 0);
  swift_endAccess();
  v1 = *(v0 + 24);
  if (v1 >> 62)
  {
    if (sub_252E378C4())
    {
      goto LABEL_3;
    }
  }

  else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    result = sub_252998A68();
    if ((result & 0xC000000000000001) != 0)
    {
LABEL_13:
      v3 = MEMORY[0x2530ADF00](0, result);
      goto LABEL_6;
    }

    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_5:
      v3 = *(result + 32);

LABEL_6:

      return v3;
    }

    __break(1u);
    goto LABEL_15;
  }

  swift_beginAccess();
  v4 = sub_252BC6360(&unk_27F543C08, 1);
  swift_endAccess();
  v5 = *(v4 + 24);
  if (v5 >> 62)
  {
LABEL_15:
    if (!sub_252E378C4())
    {
      goto LABEL_16;
    }

    goto LABEL_10;
  }

  if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_16:

    return 0;
  }

LABEL_10:
  result = sub_252998A68();
  if ((result & 0xC000000000000001) != 0)
  {
    goto LABEL_13;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

unint64_t sub_252BC6360(const void *a1, char a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v51 - v10;
  v12 = sub_252E36AD4();
  v57 = *(v12 - 1);
  v13 = MEMORY[0x28223BE20](v12);
  v56 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v51 - v15;
  if (objc_getAssociatedObject(v3, a1))
  {
    sub_252E377F4();
    swift_unknownObjectRelease();
  }

  else
  {
    v59 = 0u;
    v60 = 0u;
  }

  v61[0] = v59;
  v61[1] = v60;
  v55 = v6;
  if (*(&v60 + 1))
  {
    type metadata accessor for HomeAutomationPolledEntityResponses();
    if (swift_dynamicCast())
    {
      v17 = v58;
      if (qword_27F53F4C8 == -1)
      {
        goto LABEL_7;
      }

      goto LABEL_69;
    }
  }

  else
  {
    sub_25293847C(v61, &qword_27F541E80, &qword_252E3DFA0);
  }

  v25 = v3[3];
  v53 = v9;
  if (a2)
  {
    *&v61[0] = MEMORY[0x277D84F90];
    if (v25 >> 62)
    {
      goto LABEL_52;
    }

    v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v26)
    {
      goto LABEL_55;
    }

    goto LABEL_17;
  }

  *&v61[0] = MEMORY[0x277D84F90];
  if (v25 >> 62)
  {
    v29 = sub_252E378C4();
    if (!v29)
    {
      goto LABEL_55;
    }
  }

  else
  {
    v29 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v29)
    {
      goto LABEL_55;
    }
  }

  v51 = a1;
  v52 = v3;
  v54 = v12;
  v16 = 0;
  a1 = (v25 & 0xC000000000000001);
  v12 = &OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_states;
  while (1)
  {
    if (a1)
    {
      v30 = MEMORY[0x2530ADF00](v16, v25);
      v3 = (v16 + 1);
      if (__OFADD__(v16, 1))
      {
        break;
      }

      goto LABEL_39;
    }

    if (v16 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_51;
    }

    v30 = *(v25 + 8 * v16 + 32);

    v3 = (v16 + 1);
    if (__OFADD__(v16, 1))
    {
      break;
    }

LABEL_39:
    v31 = *(v30 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_states);
    if (v31 >> 62)
    {
      if (sub_252E378C4() == 2)
      {
LABEL_41:
        sub_252E37A94();
        sub_252E37AC4();
        sub_252E37AD4();
        sub_252E37AA4();
        goto LABEL_35;
      }
    }

    else if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) == 2)
    {
      goto LABEL_41;
    }

LABEL_35:
    ++v16;
    if (v3 == v29)
    {
LABEL_47:
      v32 = *&v61[0];
      v12 = v54;
      a1 = v51;
      v3 = v52;
      goto LABEL_56;
    }
  }

LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  v26 = sub_252E378C4();
  if (v26)
  {
LABEL_17:
    v51 = a1;
    v52 = v3;
    v54 = v12;
    v16 = 0;
    a1 = (v25 & 0xC000000000000001);
    v12 = &OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_states;
    while (1)
    {
      if (a1)
      {
        v27 = MEMORY[0x2530ADF00](v16, v25);
        v3 = (v16 + 1);
        if (__OFADD__(v16, 1))
        {
          goto LABEL_48;
        }
      }

      else
      {
        if (v16 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_50;
        }

        v27 = *(v25 + 8 * v16 + 32);

        v3 = (v16 + 1);
        if (__OFADD__(v16, 1))
        {
LABEL_48:
          __break(1u);
          goto LABEL_49;
        }
      }

      v28 = *(v27 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_states);
      if (v28 >> 62)
      {
        if (sub_252E378C4() == 1)
        {
LABEL_25:
          sub_252E37A94();
          sub_252E37AC4();
          sub_252E37AD4();
          sub_252E37AA4();
          goto LABEL_19;
        }
      }

      else if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
      {
        goto LABEL_25;
      }

LABEL_19:
      ++v16;
      if (v3 == v26)
      {
        goto LABEL_47;
      }
    }
  }

LABEL_55:
  v32 = MEMORY[0x277D84F90];
LABEL_56:
  type metadata accessor for HomeAutomationPolledEntityResponses();
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = v32;
  objc_setAssociatedObject(v3, a1, v17, 1);
  if (qword_27F53F4C8 != -1)
  {
    swift_once();
  }

  v33 = __swift_project_value_buffer(v12, qword_27F544D00);
  *&v61[0] = 0;
  *(&v61[0] + 1) = 0xE000000000000000;
  sub_252E379F4();

  *&v61[0] = 0xD000000000000016;
  *(&v61[0] + 1) = 0x8000000252E86B30;

  v34 = sub_252998A68();
  v35 = type metadata accessor for HomeAutomationEntityState(0);
  v36 = MEMORY[0x2530AD730](v34, v35);
  v38 = v37;

  MEMORY[0x2530AD570](v36, v38);

  v11 = "newValue states ******";
  sub_252CC3D90(*&v61[0], *(&v61[0] + 1), 0xD0000000000000A4, 0x8000000252E86B50);

  (*(v57 + 16))(v56, v33, v12);
  *&v61[0] = 0;
  *(&v61[0] + 1) = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000016, 0x8000000252E86C00);
  v39 = sub_2529992EC();

  if (v39 >> 62)
  {
    v41 = sub_252E378C4();
    v40 = v53;
    if (!v41)
    {
      goto LABEL_65;
    }

LABEL_60:
    if ((v39 & 0xC000000000000001) != 0)
    {
      MEMORY[0x2530ADF00](0, v39);
    }

    else
    {
      if (!*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_69:
        swift_once();
LABEL_7:
        v18 = __swift_project_value_buffer(v12, qword_27F544D00);
        *&v61[0] = 0;
        *(&v61[0] + 1) = 0xE000000000000000;
        sub_252E379F4();

        *&v61[0] = 0xD000000000000013;
        *(&v61[0] + 1) = 0x8000000252E86C20;

        v19 = sub_252998A68();
        v56 = type metadata accessor for HomeAutomationEntityState(0);
        v20 = MEMORY[0x2530AD730](v19);
        v22 = v21;

        MEMORY[0x2530AD570](v20, v22);

        sub_252CC3D90(*&v61[0], *(&v61[0] + 1), 0xD0000000000000A4, 0x8000000252E86B50);

        v23 = *(v57 + 16);
        v54 = v12;
        v23(v16, v18, v12);
        *&v61[0] = 0;
        *(&v61[0] + 1) = 0xE000000000000000;
        sub_252E379F4();
        MEMORY[0x2530AD570](0xD000000000000013, 0x8000000252E86C40);
        result = sub_2529992EC();
        if (result >> 62)
        {
          v44 = result;
          v45 = sub_252E378C4();
          result = v44;
          if (v45)
          {
            goto LABEL_9;
          }
        }

        else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_9:
          if ((result & 0xC000000000000001) != 0)
          {
            MEMORY[0x2530ADF00](0);
          }

          else
          {
            if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              return result;
            }
          }

          sub_252A657C0(v11);

LABEL_72:
          sub_252E37AE4();
          sub_25293847C(v11, &qword_27F540298, &unk_252E3C270);
          sub_252CC3D90(*&v61[0], *(&v61[0] + 1), 0xD0000000000000A4, 0x8000000252E86B50);

          (*(v57 + 8))(v16, v54);
          *&v61[0] = 0x2A2A2A2A2A2ALL;
          *(&v61[0] + 1) = 0xE600000000000000;
          v47 = sub_252998A68();

          v48 = MEMORY[0x2530AD730](v47, v56);
          v50 = v49;

          MEMORY[0x2530AD570](v48, v50);

          sub_252CC3D90(*&v61[0], *(&v61[0] + 1), 0xD0000000000000A4, 0x8000000252E86B50);

          return v17;
        }

        v46 = sub_252E36324();
        (*(*(v46 - 8) + 56))(v11, 1, 1, v46);
        goto LABEL_72;
      }
    }

    sub_252A657C0(v40);

    goto LABEL_66;
  }

  v40 = v53;
  if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_60;
  }

LABEL_65:

  v42 = sub_252E36324();
  (*(*(v42 - 8) + 56))(v40, 1, 1, v42);
LABEL_66:
  sub_252E37AE4();
  sub_25293847C(v40, &qword_27F540298, &unk_252E3C270);
  v43 = v56;
  sub_252CC3D90(*&v61[0], *(&v61[0] + 1), 0xD0000000000000A4, 0x8000000252E86B50);

  (*(v57 + 8))(v43, v12);
  return v17;
}