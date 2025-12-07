uint64_t sub_252AF967C(uint64_t a1)
{
  *(v2 + 192) = a1;
  *(v2 + 200) = v1;
  return MEMORY[0x2822009F8](sub_252AF969C, 0, 0);
}

uint64_t sub_252AF969C()
{
  sub_252B5A0C8(v0[24], (v0 + 2));
  if ((sub_252C4D664(5) & 1) != 0 || (sub_252C4E734() & 1) == 0)
  {
    v5 = v0[24];
    v4 = v0[25];
    sub_252929E74(v4 + 32, (v0 + 19));
    v7 = v0[22];
    v6 = v0[23];
    __swift_project_boxed_opaque_existential_1(v0 + 19, v7);
    v8 = swift_allocObject();
    v0[26] = v8;
    *(v8 + 16) = v4;
    *(v8 + 24) = v5;

    v9 = v5;
    v10 = swift_task_alloc();
    v0[27] = v10;
    *v10 = v0;
    v10[1] = sub_252AF985C;

    return sub_252BDC404(&unk_252E4A770, v8, v7, v6);
  }

  else
  {
    v1 = swift_task_alloc();
    v0[29] = v1;
    *v1 = v0;
    v1[1] = sub_252AF99E4;
    v2 = v0[24];

    return sub_252AFA0F0((v0 + 2), v2);
  }
}

uint64_t sub_252AF985C()
{
  *(*v1 + 224) = v0;

  if (v0)
  {
    v2 = sub_252AF9B5C;
  }

  else
  {

    v2 = sub_252AF9978;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_252AF9978()
{
  sub_252AFB8F8(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1((v0 + 152));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252AF99E4()
{
  *(*v1 + 240) = v0;

  if (v0)
  {
    v2 = sub_252AF9BD4;
  }

  else
  {
    v2 = sub_252AF9AF8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_252AF9AF8()
{
  sub_252AFB8F8(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252AF9B5C()
{
  sub_252AFB8F8(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1((v0 + 152));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252AF9BD4()
{
  sub_252AFB8F8(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252AF9C38(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v2[4] = swift_task_alloc();
  v2[5] = type metadata accessor for HomeAutomationBlockAsyncInProgressParameters(0);
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252AF9D04, 0, 0);
}

uint64_t sub_252AF9D04()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1((v0[2] + 112), *(v0[2] + 136));
  v3 = *(v1 + 20);
  v4 = sub_252E36324();
  v5 = *(*(v4 - 8) + 56);
  v6 = 1;
  v5(&v2[v3], 1, 1, v4);
  *v2 = 0;
  sub_252C4E214();
  if (v7)
  {
    sub_252E37024();

    v6 = 0;
  }

  v8 = v0[4];
  v5(v8, v6, 1, v4);
  sub_252956C98(v8, &v2[v3]);
  v9 = sub_252C05B94();
  v0[7] = v9;
  v12 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
  v10 = swift_task_alloc();
  v0[8] = v10;
  *v10 = v0;
  v10[1] = sub_252AF9EA8;

  return v12(0xD000000000000023, 0x8000000252E7AC30, v9);
}

uint64_t sub_252AF9EA8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = sub_252AFA074;
  }

  else
  {
    *(v4 + 80) = a1;
    v5 = sub_252AF9FF4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252AF9FF4()
{
  sub_252AFB960(v0[6]);

  v1 = v0[1];
  v2 = v0[10];

  return v1(v2);
}

uint64_t sub_252AFA074()
{
  sub_252AFB960(*(v0 + 48));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252AFA0F0(uint64_t a1, uint64_t a2)
{
  v3[43] = a2;
  v3[44] = v2;
  v3[42] = a1;

  return MEMORY[0x2822009F8](sub_252AFA184, 0, 0);
}

uint64_t sub_252AFA184()
{
  v74 = v0;
  v73[1] = *MEMORY[0x277D85DE8];
  v1 = swift_allocObject();
  *(v0 + 360) = v1;
  v65 = v1;
  *(v1 + 16) = 0;
  *(v0 + 328) = 0;
  v2 = type metadata accessor for HomeStore(0);
  v3 = static HomeStore.shared.getter(v2);
  v4 = v3[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_loadSucceeded];
  if (v4 == 2 || (v4) && (v5 = [*(v0 + 344) filters]) != 0)
  {
    v6 = v5;
    v7 = *(v0 + 344);
    type metadata accessor for HomeFilter();
    v8 = sub_252E37264();

    v9 = [v7 userTask];
    v10 = HomeStore.accessories(matching:supporting:)(v8, v9);
    LOBYTE(v7) = v11;

    if (v7)
    {
      sub_252929F10(v10, 1);
    }

    else
    {
      v73[0] = MEMORY[0x277D84F90];
      v12 = (v10 & 0xFFFFFFFFFFFFFF8);
      if (v10 >> 62)
      {
        goto LABEL_70;
      }

      for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_252E378C4())
      {
        v14 = MEMORY[0x277D84F90];
        v70 = i;
        if (!i)
        {
          break;
        }

        v15 = 0;
        v68 = v10 + 32;
        v69 = v10 & 0xC000000000000001;
        v66 = v10;
        v67 = v12;
        while (1)
        {
          if (v69)
          {
            v16 = MEMORY[0x2530ADF00](v15, v10);
            v17 = __OFADD__(v15++, 1);
            if (v17)
            {
              goto LABEL_67;
            }
          }

          else
          {
            if (v15 >= v12[2])
            {
              goto LABEL_68;
            }

            v16 = *(v68 + 8 * v15);

            v17 = __OFADD__(v15++, 1);
            if (v17)
            {
              goto LABEL_67;
            }
          }

          v18 = (*(*v16 + 272))();
          v19 = v18;
          v20 = *(v18 + 32);
          v21 = ((1 << v20) + 63) >> 6;
          v22 = 8 * v21;
          if ((v20 & 0x3Fu) <= 0xD)
          {
            break;
          }

          if (swift_stdlib_isStackAllocationSafe())
          {

            break;
          }

          v34 = swift_slowAlloc();

          v33 = sub_252C54758(v34, v21, v19, sub_252AFABD8);
          swift_bridgeObjectRelease_n();
          MEMORY[0x2530AED00](v34, -1, -1);
LABEL_31:
          i = v70;

          sub_25297AEDC(v33);
          v10 = v66;
          v12 = v67;
          if (v15 == i)
          {
            v35 = v73[0];
            v14 = MEMORY[0x277D84F90];
            goto LABEL_40;
          }
        }

        v12 = &v65;
        MEMORY[0x28223BE20](v18);
        v10 = &v65 - ((v22 + 15) & 0x3FFFFFFFFFFFFFF0);
        bzero(v10, v22);
        v23 = 0;
        v24 = 0;
        v25 = 1 << *(v19 + 32);
        if (v25 < 64)
        {
          v26 = ~(-1 << v25);
        }

        else
        {
          v26 = -1;
        }

        v27 = v26 & *(v19 + 56);
        v28 = (v25 + 63) >> 6;
        while (v27)
        {
          v29 = __clz(__rbit64(v27));
          v27 &= v27 - 1;
          v30 = v29 | (v24 << 6);
LABEL_26:
          if (*(*(v19 + 48) + 8 * v30))
          {
            *(v10 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
            v17 = __OFADD__(v23++, 1);
            if (v17)
            {
              goto LABEL_69;
            }
          }
        }

        v31 = v24;
        while (1)
        {
          v24 = v31 + 1;
          if (__OFADD__(v31, 1))
          {
            break;
          }

          if (v24 >= v28)
          {
            v33 = sub_252C53500((&v65 - ((v22 + 15) & 0x3FFFFFFFFFFFFFF0)), v21, v23, v19);
            goto LABEL_31;
          }

          v32 = *(v19 + 56 + 8 * v24);
          ++v31;
          if (v32)
          {
            v27 = (v32 - 1) & v32;
            v30 = __clz(__rbit64(v32)) | (v24 << 6);
            goto LABEL_26;
          }
        }

        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        ;
      }

      v35 = MEMORY[0x277D84F90];
LABEL_40:
      v36 = sub_252C759A0(v35);

      if (*(v36 + 16) != 1)
      {
        goto LABEL_56;
      }

      v37 = sub_252DB4F48();
      v39 = v38;

      if ((v39 & 1) == 0)
      {
        *(v0 + 328) = v37;
      }

      v71 = v14;
      if (i)
      {
LABEL_44:
        v40 = 0;
        v14 = v10 & 0xC000000000000001;
        v69 = MEMORY[0x277D84F90];
        while (1)
        {
          if (v14)
          {
            v41 = MEMORY[0x2530ADF00](v40, v10);
            v42 = v40 + 1;
            if (__OFADD__(v40, 1))
            {
              goto LABEL_55;
            }
          }

          else
          {
            if (v40 >= v12[2])
            {
              goto LABEL_66;
            }

            v41 = *(v10 + 8 * v40 + 32);

            v42 = v40 + 1;
            if (__OFADD__(v40, 1))
            {
LABEL_55:
              __break(1u);
LABEL_56:

              v71 = v14;
              if (!i)
              {
                break;
              }

              goto LABEL_44;
            }
          }

          v72 = v41;
          sub_252AFABE8(&v72, v0 + 328, v73);

          if (v73[0])
          {
            MEMORY[0x2530AD700](v43);
            if (*((v71 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v71 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_252E372A4();
              i = v70;
            }

            sub_252E372D4();
            v69 = v71;
          }

          ++v40;
          if (v42 == i)
          {
            goto LABEL_58;
          }
        }
      }

      v69 = v14;
LABEL_58:
      sub_252929F10(v10, 0);
      type metadata accessor for HomeAutomationEntityResponses();
      v44 = swift_allocObject();
      v45 = v69;
      *(v44 + 16) = 0;
      *(v44 + 24) = v45;
      *(v65 + 16) = v44;
    }
  }

  else
  {
  }

  v46 = *(v0 + 336);
  *(v0 + 152) = *v46;
  v47 = *(v46 + 64);
  v49 = *(v46 + 16);
  v48 = *(v46 + 32);
  *(v0 + 200) = *(v46 + 48);
  *(v0 + 216) = v47;
  *(v0 + 168) = v49;
  *(v0 + 184) = v48;
  v51 = *(v46 + 96);
  v50 = *(v46 + 112);
  v52 = *(v46 + 80);
  *(v0 + 280) = *(v46 + 128);
  *(v0 + 248) = v51;
  *(v0 + 264) = v50;
  *(v0 + 232) = v52;
  if (sub_252AFB7A0(v0 + 152) == 1)
  {
    v53 = 0;
  }

  else
  {
    v54 = *(v0 + 264);
    *(v0 + 112) = *(v0 + 248);
    *(v0 + 128) = v54;
    *(v0 + 144) = *(v0 + 280);
    v55 = *(v0 + 200);
    *(v0 + 48) = *(v0 + 184);
    *(v0 + 64) = v55;
    v56 = *(v0 + 232);
    *(v0 + 80) = *(v0 + 216);
    *(v0 + 96) = v56;
    v57 = *(v0 + 168);
    *(v0 + 16) = *(v0 + 152);
    *(v0 + 32) = v57;
    v53 = sub_252B4F854();
  }

  *(v0 + 368) = v53;
  v58 = *(v0 + 352);
  sub_252929E74(v58 + 32, v0 + 288);
  v59 = *(v0 + 312);
  v60 = *(v0 + 320);
  __swift_project_boxed_opaque_existential_1((v0 + 288), v59);
  v61 = swift_allocObject();
  *(v0 + 376) = v61;
  v62 = v65;
  v61[2] = v58;
  v61[3] = v62;
  v61[4] = v53;

  v63 = swift_task_alloc();
  *(v0 + 384) = v63;
  *v63 = v0;
  v63[1] = sub_252AFA934;

  return sub_252BDC404(&unk_252E4A758, v61, v59, v60);
}

uint64_t sub_252AFA934()
{
  *(*v1 + 392) = v0;

  if (v0)
  {
    v2 = sub_252AFAB24;
  }

  else
  {

    v2 = sub_252AFAA84;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_252AFAA84()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 288));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252AFAB24()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 288));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252AFABE8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v35 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v31 - v6;
  v8 = *a1;
  v9 = [*(*a1 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate) room];
  if (v9)
  {
    v10 = v9;
    type metadata accessor for Room(0);
    swift_allocObject();
    v11 = sub_2529A1E08(v10);
    v12 = *(v11 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);
    v31 = *(v11 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);

    type metadata accessor for HomeAutomationEntityResponse.Builder(0);
    v13 = swift_allocObject();
    v14 = OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_entityName;
    v15 = sub_252E36324();
    v32 = a3;
    v16 = v15;
    v17 = *(*(v15 - 8) + 56);
    v17(v13 + v14, 1, 1, v15);
    v17(v13 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_entityIdentifier, 1, 1, v16);
    *(v13 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_room) = 0;
    v18 = MEMORY[0x277D84F90];
    *(v13 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_zones) = MEMORY[0x277D84F90];
    *(v13 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_home) = 0;
    v17(v13 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_type, 1, 1, v16);
    *(v13 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_types) = v18;
    *(v13 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_states) = v18;

    sub_252E362F4();
    v19 = v16;
    a3 = v32;
    v17(v7, 0, 1, v19);
    swift_beginAccess();
    sub_252956C98(v7, v13 + v14);
    swift_endAccess();
    sub_252AD7130(v31, v12, 0);
  }

  else
  {
    if (qword_27F53F500 != -1)
    {
      swift_once();
    }

    v20 = sub_252E36AD4();
    __swift_project_value_buffer(v20, qword_27F544DA8);
    v33 = 0;
    v34 = 0xE000000000000000;
    sub_252E379F4();

    v33 = 0xD000000000000027;
    v34 = 0x8000000252E7AB40;
    v22 = (*(*v8 + 144))(v21);
    MEMORY[0x2530AD570](v22);

    MEMORY[0x2530AD570](46, 0xE100000000000000);
    sub_252CC4050(v33, v34, 0xD000000000000082, 0x8000000252E7AB70, 0xD00000000000002ALL, 0x8000000252E7AC00, 57);

    type metadata accessor for HomeAutomationEntityResponse.Builder(0);
    v23 = swift_allocObject();
    v24 = OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_entityName;
    v25 = sub_252E36324();
    v26 = *(*(v25 - 8) + 56);
    v26(v23 + v24, 1, 1, v25);
    v26(v23 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_entityIdentifier, 1, 1, v25);
    *(v23 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_room) = 0;
    v27 = MEMORY[0x277D84F90];
    *(v23 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_zones) = MEMORY[0x277D84F90];
    *(v23 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_home) = 0;
    v26(v23 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_type, 1, 1, v25);
    *(v23 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_types) = v27;
    *(v23 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_states) = v27;

    sub_252E362F4();
    v26(v7, 0, 1, v25);
    swift_beginAccess();
    sub_252956C98(v7, v23 + v24);
    swift_endAccess();
  }

  v28 = sub_252AD6F94();

  type metadata accessor for HomeAutomationEntityResponse(0);
  swift_allocObject();
  v29 = sub_2529605C0(v28);

  *a3 = v29;
  return result;
}

uint64_t sub_252AFB1B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  return MEMORY[0x2822009F8](sub_252AFB1D4, 0, 0);
}

uint64_t sub_252AFB1D4()
{
  v2 = v0[6];
  v1 = v0[7];
  __swift_project_boxed_opaque_existential_1((v0[5] + 112), *(v0[5] + 136));

  swift_beginAccess();
  v3 = *(v2 + 16);
  v0[8] = v3;
  v4 = sub_252C05030(v3, 0, v1, 0);
  v0[9] = v4;
  v7 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);

  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = sub_252AFB310;

  return v7(0xD000000000000029, 0x8000000252E699E0, v4);
}

uint64_t sub_252AFB310(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {
    v5 = sub_252AFB4D0;
  }

  else
  {
    *(v4 + 96) = a1;
    v5 = sub_252AFB45C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252AFB45C()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 96);

  return v1(v2);
}

uint64_t sub_252AFB4D0()
{

  v1 = *(v0 + 8);

  return v1();
}

BOOL sub_252AFB564(void *a1)
{
  if ((sub_252AFB684(a1) & 1) == 0)
  {
    return 0;
  }

  return sub_252B5AB90(a1);
}

uint64_t sub_252AFB5B0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25293B808;

  return sub_252AF967C(a1);
}

void *sub_252AFB648@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for BlockAsyncInProgressHandler();
  swift_allocObject();
  result = sub_252D192A0();
  *a1 = result;
  return result;
}

uint64_t sub_252AFB684(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543158, &qword_252E4A748);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_252E3C280;
  *(inited + 32) = type metadata accessor for AsyncScenesHandleDelegate();
  *(inited + 40) = &off_2864AFF40;
  *(inited + 48) = type metadata accessor for AsyncDefaultHandleDelegate();
  *(inited + 56) = &off_2864B38E0;
  *(inited + 64) = type metadata accessor for AsyncPollingHandleDelegate();
  *(inited + 72) = &off_2864B03F8;
  if (off_2864AFF58[0]() & 1) != 0 || ((*(*(inited + 56) + 24))(a1))
  {
    v3 = 1;
  }

  else
  {
    v3 = (*(*(inited + 72) + 24))(a1);
  }

  return v3 & 1;
}

uint64_t sub_252AFB7A0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_252AFB7B8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_25294B7BC;

  return sub_252AFB1B0(v2, v3, v4);
}

uint64_t sub_252AFB860()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_25294B958;

  return sub_252AF9C38(v2, v3);
}

uint64_t sub_252AFB8F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543160, &qword_252E4E950);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_252AFB960(uint64_t a1)
{
  v2 = type metadata accessor for HomeAutomationBlockAsyncInProgressParameters(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_252AFB9BC()
{
  __dst[0] = 0;
  __dst[1] = 0xE000000000000000;
  sub_252E379F4();
  v11 = 0;
  v12 = 0xE000000000000000;
  MEMORY[0x2530AD570](0x3A6E6F6973726556, 0xE800000000000000);
  v1 = v0[2];
  v2 = v0[3];

  MEMORY[0x2530AD570](v1, v2);

  MEMORY[0x2530AD570](0x69746E656449202CLL, 0xED00003A72656966);
  v3 = v0[4];
  v4 = v0[5];

  MEMORY[0x2530AD570](v3, v4);

  MEMORY[0x2530AD570](0x7461646174654D0ALL, 0xEA00000000003A61);

  v5 = sub_252AFC4C8();
  v7 = v6;

  MEMORY[0x2530AD570](v5, v7);

  MEMORY[0x2530AD570](0xD000000000000017, 0x8000000252E7B060);
  memcpy(__dst, v0 + 6, sizeof(__dst));
  v8 = HomeAutomationIntent.description.getter();
  MEMORY[0x2530AD570](v8);

  return v11;
}

void *sub_252AFBB30(uint64_t a1, uint64_t a2, const void *a3)
{
  v7 = sub_252E32E04();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3[2] = 3288625;
  v3[3] = 0xE300000000000000;
  v3[4] = a1;
  v3[5] = a2;
  memcpy(v3 + 6, a3, 0x1F8uLL);

  sub_252E32DF4();
  type metadata accessor for IntentSelectionCacheRecordMetadata(0);
  v11 = swift_allocObject();
  v12 = OBJC_IVAR____TtC22HomeAutomationInternal34IntentSelectionCacheRecordMetadata_isInvalidated;
  *(v11 + OBJC_IVAR____TtC22HomeAutomationInternal34IntentSelectionCacheRecordMetadata_isInvalidated) = 0;
  v13 = OBJC_IVAR____TtC22HomeAutomationInternal34IntentSelectionCacheRecordMetadata_shouldFlush;
  *(v11 + OBJC_IVAR____TtC22HomeAutomationInternal34IntentSelectionCacheRecordMetadata_shouldFlush) = 1;
  v11[2] = a1;
  v11[3] = a2;
  v11[4] = 1;
  (*(v8 + 32))(v11 + OBJC_IVAR____TtC22HomeAutomationInternal34IntentSelectionCacheRecordMetadata_lastAccessDate, v10, v7);
  *(v11 + v12) = 0;
  *(v11 + v13) = 1;
  v3[69] = v11;
  return v3;
}

unint64_t sub_252AFBC98()
{
  v1 = 0x6E6F6973726576;
  v2 = 0xD000000000000014;
  if (*v0 != 2)
  {
    v2 = 0x654D64726F636572;
  }

  if (*v0)
  {
    v1 = 0x696669746E656469;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_252AFBD28@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_252AFF560(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_252AFBD50(uint64_t a1)
{
  v2 = sub_252AFE2C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252AFBD8C(uint64_t a1)
{
  v2 = sub_252AFE2C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_252AFBDC8()
{

  memcpy(__dst, (v0 + 48), sizeof(__dst));
  sub_252935408(__dst);

  return swift_deallocClassInstance();
}

uint64_t sub_252AFBE50(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543238, &qword_252E4AB18);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252AFE2C8();
  sub_252E37F84();
  v13[0] = 0;

  sub_252E37CF4();
  if (v2)
  {
    (*(v6 + 8))(v8, v5);
  }

  else
  {

    v13[527] = 1;

    sub_252E37CF4();

    memcpy(v13, (v3 + 48), 0x1F8uLL);
    memcpy(v12, (v3 + 48), sizeof(v12));
    v13[526] = 2;
    sub_2529353AC(v13, v11);
    sub_2529847B0();
    sub_252E37D54();
    memcpy(v11, v12, sizeof(v11));
    sub_252935408(v11);
    v10[1] = *(v3 + 552);
    v13[525] = 3;
    type metadata accessor for IntentSelectionCacheRecordMetadata(0);
    sub_252B00B40(&qword_27F543220, 255, type metadata accessor for IntentSelectionCacheRecordMetadata, byte_252E4A9E4);
    sub_252E37D54();
    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_252AFC11C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5431A8, &qword_252E4AAC8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v13 - v7;
  *(v3 + 16) = 3288625;
  *(v3 + 24) = 0xE300000000000000;
  v9 = a1[3];
  v13[0] = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_252AFE2C8();
  sub_252E37F74();
  if (v2)
  {

    type metadata accessor for IntentSelectionCacheEntry();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v14[0] = 0;
    *(v3 + 16) = sub_252E37C04();
    *(v3 + 24) = v10;

    v14[0] = 1;
    *(v3 + 32) = sub_252E37C04();
    *(v3 + 40) = v12;
    v14[527] = 2;
    sub_252981F20();
    sub_252E37C64();
    memcpy((v3 + 48), v14, 0x1F8uLL);
    type metadata accessor for IntentSelectionCacheRecordMetadata(0);
    v14[526] = 3;
    sub_252B00B40(&qword_27F5431B8, 255, type metadata accessor for IntentSelectionCacheRecordMetadata, byte_252E4AA0C);
    sub_252E37C64();
    (*(v6 + 8))(v8, v5);
    *(v3 + 552) = v13[1];
  }

  __swift_destroy_boxed_opaque_existential_1(v13[0]);
  return v3;
}

uint64_t sub_252AFC4C8()
{
  v1 = v0;
  v2 = sub_252E32E04();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v7 = sub_252E36F04();
  [v6 setDateFormat_];

  v8 = OBJC_IVAR____TtC22HomeAutomationInternal34IntentSelectionCacheRecordMetadata_lastAccessDate;
  swift_beginAccess();
  (*(v3 + 16))(v5, &v1[v8], v2);
  v9 = sub_252E32D64();
  (*(v3 + 8))(v5, v2);
  v10 = [v6 stringFromDate_];

  v11 = sub_252E36F34();
  v13 = v12;

  v23 = 0;
  v24 = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0x654B64726F636572, 0xEB00000000203A79);
  v14 = *(v1 + 2);
  v15 = *(v1 + 3);

  MEMORY[0x2530AD570](v14, v15);

  MEMORY[0x2530AD570](0x437373656363610ALL, 0xEE00203A746E756FLL);
  v22 = *(v1 + 4);
  v16 = sub_252E37D94();
  MEMORY[0x2530AD570](v16);

  MEMORY[0x2530AD570](0xD000000000000011, 0x8000000252E7B020);
  MEMORY[0x2530AD570](v11, v13);

  MEMORY[0x2530AD570](0xD000000000000010, 0x8000000252E7B040);
  if (v1[OBJC_IVAR____TtC22HomeAutomationInternal34IntentSelectionCacheRecordMetadata_isInvalidated])
  {
    v17 = 1702195828;
  }

  else
  {
    v17 = 0x65736C6166;
  }

  if (v1[OBJC_IVAR____TtC22HomeAutomationInternal34IntentSelectionCacheRecordMetadata_isInvalidated])
  {
    v18 = 0xE400000000000000;
  }

  else
  {
    v18 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v17, v18);

  MEMORY[0x2530AD570](0x46646C756F68730ALL, 0xEE00203A6873756CLL);
  if (v1[OBJC_IVAR____TtC22HomeAutomationInternal34IntentSelectionCacheRecordMetadata_shouldFlush])
  {
    v19 = 1702195828;
  }

  else
  {
    v19 = 0x65736C6166;
  }

  if (v1[OBJC_IVAR____TtC22HomeAutomationInternal34IntentSelectionCacheRecordMetadata_shouldFlush])
  {
    v20 = 0xE400000000000000;
  }

  else
  {
    v20 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v19, v20);

  return v23;
}

uint64_t sub_252AFC800()
{
  v1 = sub_252E32E04();
  v2 = *(v1 - 8);
  result = MEMORY[0x28223BE20](v1);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 32);
  v7 = __CFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 32) = v8;
    sub_252E32DF4();
    v9 = OBJC_IVAR____TtC22HomeAutomationInternal34IntentSelectionCacheRecordMetadata_lastAccessDate;
    swift_beginAccess();
    (*(v2 + 40))(v0 + v9, v5, v1);
    result = swift_endAccess();
    *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal34IntentSelectionCacheRecordMetadata_isInvalidated) = 0;
    *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal34IntentSelectionCacheRecordMetadata_shouldFlush) = 1;
  }

  return result;
}

uint64_t sub_252AFC924()
{
  v1 = *v0;
  v2 = 0x654B64726F636572;
  v3 = 0x656363417473616CLL;
  v4 = 0x696C61766E497369;
  if (v1 != 3)
  {
    v4 = 0x6C46646C756F6873;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6F43737365636361;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_252AFC9EC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_252AFF6DC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_252AFCA14(uint64_t a1)
{
  v2 = sub_252AFE31C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252AFCA50(uint64_t a1)
{
  v2 = sub_252AFE31C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_252AFCA8C()
{

  v1 = OBJC_IVAR____TtC22HomeAutomationInternal34IntentSelectionCacheRecordMetadata_lastAccessDate;
  v2 = sub_252E32E04();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for IntentSelectionCacheRecordMetadata(uint64_t a1)
{
  result = qword_27F543168;
  if (!qword_27F543168)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_252AFCB84(uint64_t a1)
{
  result = sub_252E32E04();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_252AFCC38(void *a1)
{
  v2 = v1;
  v4 = sub_252E32E04();
  v20 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543228, &qword_252E4AB10);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252AFE31C();
  sub_252E37F84();
  v22 = 0;

  v11 = v21;
  sub_252E37CF4();
  if (v11)
  {
    (*(v8 + 8))(v10, v7);
  }

  else
  {
    v21 = v8;
    v19 = v6;
    v13 = v20;

    v22 = 1;
    sub_252E37D44();
    v14 = OBJC_IVAR____TtC22HomeAutomationInternal34IntentSelectionCacheRecordMetadata_lastAccessDate;
    swift_beginAccess();
    v15 = v13;
    v16 = *(v13 + 16);
    v17 = v19;
    v16(v19, v2 + v14, v4);
    v23 = 2;
    sub_252B00B40(&qword_27F543230, 255, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
    sub_252E37D54();
    (*(v15 + 8))(v17, v4);
    v23 = 3;
    sub_252E37D04();
    v18 = v21;
    v23 = 4;
    sub_252E37D04();
    return (*(v18 + 8))(v10, v7);
  }
}

void *sub_252AFCFCC(void *a1)
{
  v2 = v1;
  v22 = sub_252E32E04();
  v20 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5431C0, &qword_252E4AAD0);
  v21 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v7 = &v18 - v6;
  v2[4] = 1;
  v8 = OBJC_IVAR____TtC22HomeAutomationInternal34IntentSelectionCacheRecordMetadata_isInvalidated;
  *(v2 + OBJC_IVAR____TtC22HomeAutomationInternal34IntentSelectionCacheRecordMetadata_isInvalidated) = 0;
  v9 = OBJC_IVAR____TtC22HomeAutomationInternal34IntentSelectionCacheRecordMetadata_shouldFlush;
  *(v2 + OBJC_IVAR____TtC22HomeAutomationInternal34IntentSelectionCacheRecordMetadata_shouldFlush) = 1;
  v10 = a1[3];
  v25 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_252AFE31C();
  v11 = v24;
  sub_252E37F74();
  if (v11)
  {
    type metadata accessor for IntentSelectionCacheRecordMetadata(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v24 = v8;
    v19 = v9;
    v12 = v21;
    v13 = v22;
    v30 = 0;
    v14 = v23;
    v2[2] = sub_252E37C04();
    v2[3] = v15;
    v29 = 1;
    v16 = v12;
    v2[4] = sub_252E37C54();
    v28 = 2;
    sub_252B00B40(&qword_27F5431D0, 255, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
    sub_252E37C64();
    (*(v20 + 32))(v2 + OBJC_IVAR____TtC22HomeAutomationInternal34IntentSelectionCacheRecordMetadata_lastAccessDate, v5, v13);
    v27 = 3;
    *(v2 + v24) = sub_252E37C14() & 1;
    v26 = 4;
    LOBYTE(v12) = sub_252E37C14();
    (*(v16 + 8))(v7, v14);
    *(v2 + v19) = v12 & 1;
  }

  __swift_destroy_boxed_opaque_existential_1(v25);
  return v2;
}

void *sub_252AFD394@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for IntentSelectionCacheRecordMetadata(0);
  v5 = swift_allocObject();
  result = sub_252AFCFCC(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_252AFD444()
{
  v1 = 0x696669746E656469;
  if (*v0 != 1)
  {
    v1 = 0x79654B6568636163;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E6F6973726576;
  }
}

uint64_t sub_252AFD4A8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_252AFF8AC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_252AFD4D0(uint64_t a1)
{
  v2 = sub_252AFED70();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252AFD50C(uint64_t a1)
{
  v2 = sub_252AFED70();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_252AFD548()
{

  return swift_deallocClassInstance();
}

uint64_t sub_252AFD5B4(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543210, &qword_252E4AB08);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252AFED70();
  sub_252E37F84();
  v13 = 0;

  sub_252E37CF4();
  if (v2)
  {
    (*(v6 + 8))(v8, v5);
  }

  else
  {

    v12 = 1;

    sub_252E37CF4();

    v11 = *(v3 + 48);
    v10[15] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5431E8, &qword_252E4AAE0);
    sub_252B00A80();
    sub_252E37CD4();
    return (*(v6 + 8))(v8, v5);
  }
}

void *sub_252AFD7C0(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5431D8, &qword_252E4AAD8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v11 - v6;
  v1[2] = 3288625;
  v1[3] = 0xE300000000000000;
  v1[4] = 0xD000000000000020;
  v1[5] = 0x8000000252E7AE10;
  v1[6] = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252AFED70();
  sub_252E37F74();
  if (v2)
  {
  }

  else
  {
    v14 = 0;
    v1[2] = sub_252E37C04();
    v1[3] = v8;

    v13 = 1;
    v1[4] = sub_252E37C04();
    v1[5] = v9;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5431E8, &qword_252E4AAE0);
    v12 = 2;
    sub_252AFEDC4();
    sub_252E37BE4();
    (*(v5 + 8))(v7, v4);
    v1[6] = v11[1];
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v1;
}

uint64_t sub_252AFDA64@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t (*a4)(uint64_t)@<X5>, uint64_t *a5@<X8>)
{
  a2();
  v9 = swift_allocObject();
  result = a4(a1);
  if (!v5)
  {
    *a5 = v9;
  }

  return result;
}

unint64_t sub_252AFDAF8()
{
  v1 = 0x696669746E656469;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000001DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E6F6973726576;
  }
}

uint64_t sub_252AFDB5C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_252AFF9D4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_252AFDB84(uint64_t a1)
{
  v2 = sub_252AFEE84();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252AFDBC0(uint64_t a1)
{
  v2 = sub_252AFEE84();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t _s22HomeAutomationInternal0A28GraphCacheInvalidationSignalCfD_0()
{

  return swift_deallocClassInstance();
}

uint64_t sub_252AFDC68(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543208, &qword_252E4AB00);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252AFEE84();
  sub_252E37F84();
  v8[15] = 0;

  sub_252E37CF4();
  if (v1)
  {
    (*(v4 + 8))(v6, v3);
  }

  else
  {

    v8[14] = 1;

    sub_252E37CF4();

    v8[13] = 2;

    sub_252E37C94();
    (*(v4 + 8))(v6, v3);
  }
}

void *sub_252AFDE6C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5431F8, &qword_252E4AAE8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  v1[2] = 3288625;
  v1[3] = 0xE300000000000000;
  v1[6] = 0;
  v1[7] = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252AFEE84();
  sub_252E37F74();
  if (v2)
  {

    type metadata accessor for CacheInvalidationSignalRecord();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v18 = 0;
    v1[2] = sub_252E37C04();
    v1[3] = v9;

    v17 = 1;
    v1[4] = sub_252E37C04();
    v1[5] = v11;
    v16 = 2;
    v12 = sub_252E37BA4();
    v14 = v13;
    (*(v6 + 8))(v8, v5);
    v3[6] = v12;
    v3[7] = v14;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3;
}

void *sub_252AFE0B0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for CacheInvalidationSignalRecord();
  swift_allocObject();
  result = sub_252AFDE6C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_252AFE134(uint64_t a1)
{
  *(a1 + 8) = sub_252B00B40(&qword_27F543178, 255, type metadata accessor for CacheInvalidationSignalRecord, asc_252E4A8E4);
  result = sub_252B00B40(&qword_27F543180, 255, type metadata accessor for CacheInvalidationSignalRecord, byte_252E4A8BC);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_252AFE1C0(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = sub_252B00B40(&qword_27F543188, a2, type metadata accessor for IntentSelectionCacheKeysRecord, byte_252E4A950);
  result = sub_252B00B40(&qword_27F543190, v3, type metadata accessor for IntentSelectionCacheKeysRecord, byte_252E4A928);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_252AFE244(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = sub_252B00B40(&qword_27F543198, a2, type metadata accessor for IntentSelectionCacheEntry, byte_252E4AA5C);
  result = sub_252B00B40(&qword_27F5431A0, v3, type metadata accessor for IntentSelectionCacheEntry, byte_252E4AA34);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_252AFE2C8()
{
  result = qword_27F5431B0;
  if (!qword_27F5431B0)
  {
    result = swift_getWitnessTable(asc_252E4AEFC, &type metadata for IntentSelectionCacheEntry.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F5431B0);
  }

  return result;
}

unint64_t sub_252AFE31C()
{
  result = qword_27F5431C8;
  if (!qword_27F5431C8)
  {
    result = swift_getWitnessTable(asc_252E4AEAC, &type metadata for IntentSelectionCacheRecordMetadata.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F5431C8);
  }

  return result;
}

uint64_t sub_252AFE370(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  if (*a1)
  {
    swift_beginAccess();
    *(a3 + 16) = v3;
  }

  return sub_252E37614();
}

uint64_t sub_252AFE3DC(uint64_t result, uint64_t a2)
{
  if (result)
  {
    if (qword_27F53F528 != -1)
    {
      swift_once();
    }

    v3 = sub_252E36AD4();
    __swift_project_value_buffer(v3, qword_27F544E20);
    sub_252E379F4();

    v5 = *(a2 + 32);
    v4 = *(a2 + 40);

    MEMORY[0x2530AD570](v5, v4);

    MEMORY[0x2530AD570](0xD000000000000010, 0x8000000252E7AE40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541F30, &unk_252E4AAF0);
    v6 = sub_252E37714();
    MEMORY[0x2530AD570](v6);

    sub_252CC4050(0x206574697257, 0xE600000000000000, 0xD00000000000009BLL, 0x8000000252E7AE60, 0x746E456574697277, 0xEE00293A5F287972, 202);
  }

  return result;
}

uint64_t sub_252AFE56C(uint64_t result, uint64_t a2)
{
  if (result)
  {
    if (qword_27F53F528 != -1)
    {
      swift_once();
    }

    v3 = sub_252E36AD4();
    __swift_project_value_buffer(v3, qword_27F544E20);
    sub_252E379F4();

    v5 = *(a2 + 32);
    v4 = *(a2 + 40);

    MEMORY[0x2530AD570](v5, v4);

    MEMORY[0x2530AD570](0xD000000000000010, 0x8000000252E7AE40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541F30, &unk_252E4AAF0);
    v6 = sub_252E37714();
    MEMORY[0x2530AD570](v6);

    sub_252CC4050(0x206574656C6544, 0xE700000000000000, 0xD00000000000009BLL, 0x8000000252E7AE60, 0x6E456574656C6564, 0xEF293A5F28797274, 211);
  }

  return result;
}

uint64_t sub_252AFE700(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a1)
  {
    v3 = *(*a1 + 48);
    swift_beginAccess();
    *(a3 + 16) = v3;
  }

  return sub_252E37614();
}

uint64_t sub_252AFE770(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    if (qword_27F53F528 != -1)
    {
      swift_once();
    }

    v5 = sub_252E36AD4();
    __swift_project_value_buffer(v5, qword_27F544E20);
    sub_252E379F4();

    MEMORY[0x2530AD570](a2, a3);
    MEMORY[0x2530AD570](0xD000000000000010, 0x8000000252E7AE40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541F30, &unk_252E4AAF0);
    v6 = sub_252E37714();
    MEMORY[0x2530AD570](v6);

    sub_252CC4050(0x206574697257, 0xE600000000000000, 0xD00000000000009BLL, 0x8000000252E7AE60, 0xD000000000000012, 0x8000000252E7AF20, 249);
  }

  return result;
}

uint64_t sub_252AFE8E4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a4;
  v14 = a3;

  a7(a1, a2, a6, v13);
}

uint64_t sub_252AFE980(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  if (*a1)
  {
    v5 = *(v3 + 48);
    v4 = *(v3 + 56);
    swift_beginAccess();
    *(a3 + 16) = v5;
    *(a3 + 24) = v4;
  }

  return sub_252E37614();
}

uint64_t sub_252AFE9F8(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    if (qword_27F53F528 != -1)
    {
      swift_once();
    }

    v5 = sub_252E36AD4();
    __swift_project_value_buffer(v5, qword_27F544E20);
    sub_252E379F4();

    MEMORY[0x2530AD570](a2, a3);
    MEMORY[0x2530AD570](0xD000000000000010, 0x8000000252E7AE40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541F30, &unk_252E4AAF0);
    v6 = sub_252E37714();
    MEMORY[0x2530AD570](v6);

    sub_252CC4050(0x206574697257, 0xE600000000000000, 0xD00000000000009BLL, 0x8000000252E7AE60, 0xD00000000000002DLL, 0x8000000252E7AF80, 303);
  }

  return result;
}

uint64_t sub_252AFEB6C(char *a1, char *a2)
{
  v4 = sub_252E32E04();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v17[-v9];
  if (*(a1 + 4) == *(a2 + 4) && (v11 = OBJC_IVAR____TtC22HomeAutomationInternal34IntentSelectionCacheRecordMetadata_lastAccessDate, swift_beginAccess(), v12 = *(v5 + 16), v12(v10, &a1[v11], v4), v13 = OBJC_IVAR____TtC22HomeAutomationInternal34IntentSelectionCacheRecordMetadata_lastAccessDate, swift_beginAccess(), v12(v8, &a2[v13], v4), LOBYTE(v13) = sub_252E32DA4(), v14 = *(v5 + 8), v14(v8, v4), v14(v10, v4), (v13 & 1) != 0) && a1[OBJC_IVAR____TtC22HomeAutomationInternal34IntentSelectionCacheRecordMetadata_isInvalidated] == a2[OBJC_IVAR____TtC22HomeAutomationInternal34IntentSelectionCacheRecordMetadata_isInvalidated] && a1[OBJC_IVAR____TtC22HomeAutomationInternal34IntentSelectionCacheRecordMetadata_shouldFlush] == a2[OBJC_IVAR____TtC22HomeAutomationInternal34IntentSelectionCacheRecordMetadata_shouldFlush])
  {
    if (*(a1 + 2) == *(a2 + 2) && *(a1 + 3) == *(a2 + 3))
    {
      v15 = 1;
    }

    else
    {
      v15 = sub_252E37DB4();
    }
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

unint64_t sub_252AFED70()
{
  result = qword_27F5431E0;
  if (!qword_27F5431E0)
  {
    result = swift_getWitnessTable(byte_252E4AE5C, &type metadata for IntentSelectionCacheKeysRecord.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F5431E0);
  }

  return result;
}

unint64_t sub_252AFEDC4()
{
  result = qword_27F5431F0;
  if (!qword_27F5431F0)
  {
    v5[4] = v0;
    v5[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5431E8, &qword_252E4AAE0);
    v4 = sub_252B00B40(&qword_27F5431B8, 255, type metadata accessor for IntentSelectionCacheRecordMetadata, byte_252E4AA0C);
    v5[0] = MEMORY[0x277D83808];
    v5[1] = v4;
    result = swift_getWitnessTable(MEMORY[0x277D83528], v3, v5);
    atomic_store(result, &qword_27F5431F0);
  }

  return result;
}

unint64_t sub_252AFEE84()
{
  result = qword_27F543200;
  if (!qword_27F543200)
  {
    result = swift_getWitnessTable(byte_252E4AE0C, &type metadata for CacheInvalidationSignalRecord.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F543200);
  }

  return result;
}

uint64_t sub_252AFEED8()
{
  v41 = sub_252E36C84();
  v39 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v37 = (&v30 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0));
  v40 = sub_252E36D54();
  v38 = *(v40 - 8);
  v1 = MEMORY[0x28223BE20](v40);
  v34 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v35 = &v30 - v3;
  v30 = sub_252E36CA4();
  v33 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_252E36D04();
  v31 = *(v6 - 8);
  v32 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_252E36CB4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  v36 = v13 + 16;
  v14 = dispatch_semaphore_create(0);
  sub_252936DF8();
  (*(v10 + 104))(v12, *MEMORY[0x277D851C0], v9);
  v15 = sub_252E375A4();
  (*(v10 + 8))(v12, v9);
  v16 = swift_allocObject();
  v16[2] = 0xD000000000000020;
  v16[3] = 0x8000000252E7AE10;
  v16[4] = v14;
  v16[5] = v13;
  aBlock[4] = sub_252B00234;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_252AD686C;
  aBlock[3] = &block_descriptor_97;
  v17 = _Block_copy(aBlock);
  v18 = v14;

  sub_252E36CD4();
  v42 = MEMORY[0x277D84F90];
  sub_252B00B40(qword_2814B0298, 255, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5402F8, &qword_252E3E860);
  sub_2529905D0();
  v19 = v30;
  sub_252E37824();
  MEMORY[0x2530ADA30](0, v8, v5, v17);
  _Block_release(v17);

  (*(v33 + 8))(v5, v19);
  (*(v31 + 8))(v8, v32);

  v20 = v34;
  sub_252E36D14();
  v21 = v37;
  *v37 = 200;
  v22 = v39;
  v23 = v41;
  (*(v39 + 104))(v21, *MEMORY[0x277D85178], v41);
  v24 = v35;
  sub_252E36D24();
  (*(v22 + 8))(v21, v23);
  v25 = *(v38 + 8);
  v26 = v40;
  v25(v20, v40);
  sub_252E375F4();
  v25(v24, v26);
  if (sub_252E36C94())
  {
    if (qword_27F53F528 != -1)
    {
      swift_once();
    }

    v27 = sub_252E36AD4();
    __swift_project_value_buffer(v27, qword_27F544E20);
    sub_252CC4050(0xD00000000000003FLL, 0x8000000252E7AF40, 0xD00000000000009BLL, 0x8000000252E7AE60, 0x6863614364616572, 0xEF29287379654B65, 238);
  }

  swift_beginAccess();
  v28 = *(v13 + 16);

  return v28;
}

uint64_t sub_252AFF560(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v4 || (sub_252E37DB4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_252E37DB4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000252E6BCE0 == a2 || (sub_252E37DB4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x654D64726F636572 && a2 == 0xEE00617461646174)
  {

    return 3;
  }

  else
  {
    v6 = sub_252E37DB4();

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

uint64_t sub_252AFF6DC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x654B64726F636572 && a2 == 0xE900000000000079;
  if (v4 || (sub_252E37DB4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F43737365636361 && a2 == 0xEB00000000746E75 || (sub_252E37DB4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656363417473616CLL && a2 == 0xEE00657461447373 || (sub_252E37DB4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x696C61766E497369 && a2 == 0xED00006465746164 || (sub_252E37DB4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6C46646C756F6873 && a2 == 0xEB00000000687375)
  {

    return 4;
  }

  else
  {
    v6 = sub_252E37DB4();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_252AFF8AC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v4 || (sub_252E37DB4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_252E37DB4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x79654B6568636163 && a2 == 0xE900000000000073)
  {

    return 2;
  }

  else
  {
    v6 = sub_252E37DB4();

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

uint64_t sub_252AFF9D4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v4 || (sub_252E37DB4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_252E37DB4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001DLL && 0x8000000252E7ADF0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_252E37DB4();

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

uint64_t sub_252AFFAFC(uint64_t a1, uint64_t a2)
{
  v36 = a2;
  v49 = a1;
  v46 = sub_252E36C84();
  v44 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v42 = (&v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v45 = sub_252E36D54();
  v43 = *(v45 - 8);
  v3 = MEMORY[0x28223BE20](v45);
  v40 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v41 = &v36 - v5;
  v6 = sub_252E36CA4();
  v39 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_252E36D04();
  v37 = *(v9 - 8);
  v38 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_252E36CB4();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  v47 = v16 + 16;
  v17 = dispatch_semaphore_create(0);
  sub_252936DF8();
  (*(v13 + 104))(v15, *MEMORY[0x277D851C0], v12);
  v18 = sub_252E375A4();
  v19 = v15;
  v20 = v36;
  (*(v13 + 8))(v19, v12);
  v21 = swift_allocObject();
  v21[2] = v49;
  v21[3] = v20;
  v21[4] = v17;
  v21[5] = v16;
  v55 = sub_252B001C4;
  v56 = v21;
  aBlock = MEMORY[0x277D85DD0];
  v52 = 1107296256;
  v53 = sub_252AD686C;
  v54 = &block_descriptor_10;
  v22 = _Block_copy(&aBlock);

  v23 = v17;
  v48 = v16;

  sub_252E36CD4();
  v50 = MEMORY[0x277D84F90];
  sub_252B00B40(qword_2814B0298, 255, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5402F8, &qword_252E3E860);
  sub_2529905D0();
  sub_252E37824();
  MEMORY[0x2530ADA30](0, v11, v8, v22);
  _Block_release(v22);

  (*(v39 + 8))(v8, v6);
  v24 = v11;
  v25 = v23;
  (*(v37 + 8))(v24, v38);

  v26 = v40;
  sub_252E36D14();
  v27 = v42;
  *v42 = 200;
  v28 = v44;
  v29 = v46;
  (*(v44 + 104))(v27, *MEMORY[0x277D85178], v46);
  v30 = v41;
  sub_252E36D24();
  (*(v28 + 8))(v27, v29);
  v31 = *(v43 + 8);
  v32 = v45;
  v31(v26, v45);
  sub_252E375F4();
  v31(v30, v32);
  if (sub_252E36C94())
  {
    if (qword_27F53F528 != -1)
    {
      swift_once();
    }

    v33 = sub_252E36AD4();
    __swift_project_value_buffer(v33, qword_27F544E20);
    aBlock = 0;
    v52 = 0xE000000000000000;
    sub_252E379F4();

    aBlock = 0xD00000000000001FLL;
    v52 = 0x8000000252E7AF00;
    MEMORY[0x2530AD570](v49, v20);
    sub_252CC4050(aBlock, v52, 0xD00000000000009BLL, 0x8000000252E7AE60, 0x72746E4564616572, 0xEF293A726F662879, 193);
  }

  swift_beginAccess();
  v34 = *(v48 + 16);

  return v34;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_252B0028C(char a1)
{
  v48 = sub_252E36C84();
  v46 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v44 = (&v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v47 = sub_252E36D54();
  v45 = *(v47 - 8);
  v3 = MEMORY[0x28223BE20](v47);
  v42 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v43 = &v36 - v5;
  v38 = sub_252E36CA4();
  v41 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v37 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_252E36D04();
  v39 = *(v7 - 8);
  v40 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_252E36CB4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  v15 = v14;
  *(v14 + 16) = 0;
  v49 = v14 + 16;
  if (a1)
  {
    v16 = 0x65566D6574737973;
  }

  else
  {
    v16 = 0xD000000000000013;
  }

  if (a1)
  {
    v17 = 0xED00006E6F697372;
  }

  else
  {
    v17 = 0x8000000252E7AFE0;
  }

  *(v14 + 24) = 0;
  v18 = dispatch_semaphore_create(0);
  sub_252936DF8();
  (*(v11 + 104))(v13, *MEMORY[0x277D851C0], v10);
  v19 = sub_252E375A4();
  (*(v11 + 8))(v13, v10);
  v20 = swift_allocObject();
  v36 = v16;
  v20[2] = v16;
  v20[3] = v17;
  v21 = v17;
  v20[4] = v18;
  v20[5] = v15;
  v55 = sub_252B009E8;
  v56 = v20;
  aBlock = MEMORY[0x277D85DD0];
  v52 = 1107296256;
  v53 = sub_252AD686C;
  v54 = &block_descriptor_109;
  v22 = _Block_copy(&aBlock);

  v23 = v18;

  sub_252E36CD4();
  v50 = MEMORY[0x277D84F90];
  sub_252B00B40(qword_2814B0298, 255, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5402F8, &qword_252E3E860);
  sub_2529905D0();
  v24 = v37;
  v25 = v38;
  sub_252E37824();
  MEMORY[0x2530ADA30](0, v9, v24, v22);
  _Block_release(v22);

  (*(v41 + 8))(v24, v25);
  (*(v39 + 8))(v9, v40);

  v26 = v42;
  sub_252E36D14();
  v27 = v44;
  *v44 = 200;
  v28 = v46;
  v29 = v48;
  (*(v46 + 104))(v27, *MEMORY[0x277D85178], v48);
  v30 = v43;
  sub_252E36D24();
  (*(v28 + 8))(v27, v29);
  v31 = *(v45 + 8);
  v32 = v47;
  v31(v26, v47);
  sub_252E375F4();
  v31(v30, v32);
  if (sub_252E36C94())
  {
    if (qword_27F53F528 != -1)
    {
      swift_once();
    }

    v33 = sub_252E36AD4();
    __swift_project_value_buffer(v33, qword_27F544E20);
    aBlock = 0;
    v52 = 0xE000000000000000;
    sub_252E379F4();

    aBlock = 0xD00000000000001FLL;
    v52 = 0x8000000252E7AF00;
    MEMORY[0x2530AD570](v36, v21);

    sub_252CC4050(aBlock, v52, 0xD00000000000009BLL, 0x8000000252E7AE60, 0xD000000000000025, 0x8000000252E7AFB0, 292);
  }

  swift_beginAccess();
  v34 = *(v15 + 16);

  return v34;
}

uint64_t objectdestroy_84Tm()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t objectdestroy_87Tm()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

unint64_t sub_252B00A80()
{
  result = qword_27F543218;
  if (!qword_27F543218)
  {
    v5[4] = v0;
    v5[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5431E8, &qword_252E4AAE0);
    v4 = sub_252B00B40(&qword_27F543220, 255, type metadata accessor for IntentSelectionCacheRecordMetadata, byte_252E4A9E4);
    v5[0] = MEMORY[0x277D837D8];
    v5[1] = v4;
    result = swift_getWitnessTable(MEMORY[0x277D83508], v3, v5);
    atomic_store(result, &qword_27F543218);
  }

  return result;
}

uint64_t sub_252B00B40(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), const char *a4)
{
  result = *a1;
  if (!result)
  {
    v7 = a3(a2);
    result = swift_getWitnessTable(a4, v7);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_252B00BCC()
{
  result = qword_27F543240;
  if (!qword_27F543240)
  {
    result = swift_getWitnessTable(asc_252E4ABBC, &type metadata for IntentSelectionCacheEntry.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F543240);
  }

  return result;
}

unint64_t sub_252B00C24()
{
  result = qword_27F543248;
  if (!qword_27F543248)
  {
    result = swift_getWitnessTable(aU_9, &type metadata for IntentSelectionCacheRecordMetadata.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F543248);
  }

  return result;
}

unint64_t sub_252B00C7C()
{
  result = qword_27F543250;
  if (!qword_27F543250)
  {
    result = swift_getWitnessTable(byte_252E4AD2C, &type metadata for IntentSelectionCacheKeysRecord.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F543250);
  }

  return result;
}

unint64_t sub_252B00CD4()
{
  result = qword_27F543258;
  if (!qword_27F543258)
  {
    result = swift_getWitnessTable(byte_252E4ADE4, &type metadata for CacheInvalidationSignalRecord.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F543258);
  }

  return result;
}

unint64_t sub_252B00D2C()
{
  result = qword_27F543260;
  if (!qword_27F543260)
  {
    result = swift_getWitnessTable(aM_5, &type metadata for CacheInvalidationSignalRecord.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F543260);
  }

  return result;
}

unint64_t sub_252B00D84()
{
  result = qword_27F543268;
  if (!qword_27F543268)
  {
    result = swift_getWitnessTable(asc_252E4AD7C, &type metadata for CacheInvalidationSignalRecord.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F543268);
  }

  return result;
}

unint64_t sub_252B00DDC()
{
  result = qword_27F543270;
  if (!qword_27F543270)
  {
    result = swift_getWitnessTable(byte_252E4AC9C, &type metadata for IntentSelectionCacheKeysRecord.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F543270);
  }

  return result;
}

unint64_t sub_252B00E34()
{
  result = qword_27F543278;
  if (!qword_27F543278)
  {
    result = swift_getWitnessTable(byte_252E4ACC4, &type metadata for IntentSelectionCacheKeysRecord.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F543278);
  }

  return result;
}

unint64_t sub_252B00E8C()
{
  result = qword_27F543280;
  if (!qword_27F543280)
  {
    result = swift_getWitnessTable(byte_252E4ABE4, &type metadata for IntentSelectionCacheRecordMetadata.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F543280);
  }

  return result;
}

unint64_t sub_252B00EE4()
{
  result = qword_27F543288;
  if (!qword_27F543288)
  {
    result = swift_getWitnessTable(byte_252E4AC0C, &type metadata for IntentSelectionCacheRecordMetadata.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F543288);
  }

  return result;
}

unint64_t sub_252B00F3C()
{
  result = qword_27F543290;
  if (!qword_27F543290)
  {
    result = swift_getWitnessTable(aU_10, &type metadata for IntentSelectionCacheEntry.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F543290);
  }

  return result;
}

unint64_t sub_252B00F94()
{
  result = qword_27F543298;
  if (!qword_27F543298)
  {
    result = swift_getWitnessTable(byte_252E4AB54, &type metadata for IntentSelectionCacheEntry.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F543298);
  }

  return result;
}

HomeAutomationInternal::SnippetRenderingMode_optional __swiftcall SnippetRenderingMode.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_252E37B74();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t SnippetRenderingMode.rawValue.getter()
{
  v1 = 0x6863726172656968;
  v2 = 0x6F7268636F6E6F6DLL;
  if (*v0 != 2)
  {
    v2 = 0x657474656C6170;
  }

  if (*v0)
  {
    v1 = 0x6C6F6369746C756DLL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_252B010F4()
{
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252B011C4(uint64_t a1)
{
  sub_252E37044();
}

uint64_t sub_252B01280(uint64_t a1)
{
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

void sub_252B01358(uint64_t *a1@<X8>)
{
  v2 = 0xEC0000006C616369;
  v3 = 0x6863726172656968;
  v4 = 0x6F7268636F6E6F6DLL;
  v5 = 0xE700000000000000;
  if (*v1 == 2)
  {
    v5 = 0xEA0000000000656DLL;
  }

  else
  {
    v4 = 0x657474656C6170;
  }

  if (*v1)
  {
    v3 = 0x6C6F6369746C756DLL;
    v2 = 0xEA0000000000726FLL;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = v5;
  }

  *a1 = v6;
  a1[1] = v2;
}

HomeAutomationInternal::SnippetHomeDeviceType_optional __swiftcall SnippetHomeDeviceType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_252E37DE4();

  v5 = 0;
  v6 = 30;
  switch(v3)
  {
    case 0:
      goto LABEL_47;
    case 1:
      v5 = 1;
      goto LABEL_47;
    case 2:
      v5 = 2;
      goto LABEL_47;
    case 3:
      v5 = 3;
      goto LABEL_47;
    case 4:
      v5 = 4;
      goto LABEL_47;
    case 5:
      v5 = 5;
      goto LABEL_47;
    case 6:
      v5 = 6;
      goto LABEL_47;
    case 7:
      v5 = 7;
      goto LABEL_47;
    case 8:
      v5 = 8;
      goto LABEL_47;
    case 9:
      v5 = 9;
      goto LABEL_47;
    case 10:
      v5 = 10;
      goto LABEL_47;
    case 11:
      v5 = 11;
      goto LABEL_47;
    case 12:
      v5 = 12;
      goto LABEL_47;
    case 13:
      v5 = 13;
      goto LABEL_47;
    case 14:
      v5 = 14;
      goto LABEL_47;
    case 15:
      v5 = 15;
      goto LABEL_47;
    case 16:
      v5 = 16;
      goto LABEL_47;
    case 17:
      v5 = 17;
      goto LABEL_47;
    case 18:
      v5 = 18;
      goto LABEL_47;
    case 19:
      v5 = 19;
      goto LABEL_47;
    case 20:
      v5 = 20;
      goto LABEL_47;
    case 21:
      v5 = 21;
      goto LABEL_47;
    case 22:
      v5 = 22;
      goto LABEL_47;
    case 23:
      v5 = 23;
      goto LABEL_47;
    case 24:
      v5 = 24;
      goto LABEL_47;
    case 25:
      v5 = 25;
      goto LABEL_47;
    case 26:
      v5 = 26;
      goto LABEL_47;
    case 27:
      v5 = 27;
      goto LABEL_47;
    case 28:
      v5 = 28;
      goto LABEL_47;
    case 29:
      v5 = 29;
LABEL_47:
      v6 = v5;
      break;
    case 30:
      break;
    case 31:
      v6 = 31;
      break;
    case 32:
      v6 = 32;
      break;
    case 33:
      v6 = 33;
      break;
    case 34:
      v6 = 34;
      break;
    case 35:
      v6 = 35;
      break;
    case 36:
      v6 = 36;
      break;
    case 37:
      v6 = 37;
      break;
    case 38:
      v6 = 38;
      break;
    case 39:
      v6 = 39;
      break;
    case 40:
      v6 = 40;
      break;
    case 41:
      v6 = 41;
      break;
    case 42:
      v6 = 42;
      break;
    case 43:
      v6 = 43;
      break;
    case 44:
      v6 = 44;
      break;
    case 45:
      v6 = 45;
      break;
    case 46:
      v6 = 46;
      break;
    case 47:
      v6 = 47;
      break;
    default:
      v6 = 48;
      break;
  }

  *v2 = v6;
  return result;
}

uint64_t SnippetHomeDeviceType.rawValue.getter()
{
  result = 0x6C7562746867696CLL;
  switch(*v0)
  {
    case 1:
      result = 0x686374697773;
      break;
    case 2:
      result = 0x74736F6D72656874;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 7233894;
      break;
    case 5:
      result = 0x74656C74756FLL;
      break;
    case 6:
      result = 0x6B636F4C726F6F64;
      break;
    case 7:
      result = 0xD000000000000010;
      break;
    case 8:
      result = 0x79726574746162;
      break;
    case 9:
      result = 0xD000000000000013;
      break;
    case 0xA:
      result = 0xD000000000000014;
      break;
    case 0xB:
      result = 0x53746361746E6F63;
      break;
    case 0xC:
      result = 1919905636;
      break;
    case 0xD:
      result = 0x79746964696D7568;
      break;
    case 0xE:
      result = 0x736E65536B61656CLL;
      break;
    case 0xF:
      v2 = 0x53746867696CLL;
      goto LABEL_42;
    case 0x10:
      result = 0x65536E6F69746F6DLL;
      break;
    case 0x11:
      result = 0x636E61707563636FLL;
      break;
    case 0x12:
      result = 0x7974697275636573;
      break;
    case 0x13:
      v2 = 0x53656B6F6D73;
LABEL_42:
      result = v2 & 0xFFFFFFFFFFFFLL | 0x6E65000000000000;
      break;
    case 0x14:
      result = 0xD000000000000011;
      break;
    case 0x15:
      result = 0x776F646E6977;
      break;
    case 0x16:
      result = 0x736564616873;
      break;
    case 0x17:
      result = 0x6172656D61437069;
      break;
    case 0x18:
      result = 0x6F68706F7263696DLL;
      break;
    case 0x19:
      result = 0x72656B61657073;
      break;
    case 0x1A:
    case 0x1B:
      result = 0x657A69726F746F6DLL;
      break;
    case 0x1C:
      result = 0x6F43726574616568;
      break;
    case 0x1D:
      result = 0xD000000000000016;
      break;
    case 0x1E:
      result = 1952541811;
      break;
    case 0x1F:
      result = 0x656C6B6E69727073;
      break;
    case 0x20:
      result = 0x65766C6176;
      break;
    case 0x21:
      result = 0x746563756166;
      break;
    case 0x22:
      result = 0x7265776F6873;
      break;
    case 0x23:
      result = 0x69736976656C6574;
      break;
    case 0x24:
      result = 0x6C6C6542726F6F64;
      break;
    case 0x25:
      result = 0x6669727550726961;
      break;
    case 0x26:
      result = 0x7265746C6966;
      break;
    case 0x27:
      result = 0x5654656C707061;
      break;
    case 0x28:
      result = 0x65526172656D6163;
      break;
    case 0x29:
      result = 1802398067;
      break;
    case 0x2A:
      result = 0x706F4D746F626F72;
      break;
    case 0x2B:
      result = 0xD000000000000012;
      break;
    case 0x2C:
      result = 0x74726F70726961;
      break;
    case 0x2D:
      result = 0x726F736E6573;
      break;
    case 0x2E:
      result = 0x6D6F74737563;
      break;
    case 0x2F:
      result = 0x6E776F6E6B6E75;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_252B01B98()
{
  v0 = SnippetHomeDeviceType.rawValue.getter();
  v2 = v1;
  if (v0 == SnippetHomeDeviceType.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_252E37DB4();
  }

  return v5 & 1;
}

uint64_t sub_252B01C34()
{
  sub_252E37EC4();
  SnippetHomeDeviceType.rawValue.getter();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252B01C9C(uint64_t a1)
{
  SnippetHomeDeviceType.rawValue.getter();
  sub_252E37044();
}

uint64_t sub_252B01D00(uint64_t a1)
{
  sub_252E37EC4();
  SnippetHomeDeviceType.rawValue.getter();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252B01D70@<X0>(uint64_t *a1@<X8>)
{
  result = SnippetHomeDeviceType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_252B01E4C()
{
  result = qword_27F5432A0;
  if (!qword_27F5432A0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SnippetRenderingMode, &type metadata for SnippetRenderingMode, v0, v1);
    atomic_store(result, &qword_27F5432A0);
  }

  return result;
}

unint64_t sub_252B01EA4()
{
  result = qword_27F5432A8;
  if (!qword_27F5432A8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SnippetHomeDeviceType, &type metadata for SnippetHomeDeviceType, v0, v1);
    atomic_store(result, &qword_27F5432A8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SnippetHomeDeviceType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xD1)
  {
    goto LABEL_17;
  }

  if (a2 + 47 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 47) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 47;
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

      return (*a1 | (v4 << 8)) - 47;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 47;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x30;
  v8 = v6 - 48;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SnippetHomeDeviceType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 47 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 47) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xD1)
  {
    v4 = 0;
  }

  if (a2 > 0xD0)
  {
    v5 = ((a2 - 209) >> 8) + 1;
    *result = a2 + 47;
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
    *result = a2 + 47;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_252B02058()
{
  result = qword_27F5432B0;
  if (!qword_27F5432B0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SnippetHomeDeviceType, &type metadata for SnippetHomeDeviceType, v0, v1);
    atomic_store(result, &qword_27F5432B0);
  }

  return result;
}

unint64_t sub_252B020AC()
{
  result = qword_27F5432B8;
  if (!qword_27F5432B8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SnippetRenderingMode, &type metadata for SnippetRenderingMode, v0, v1);
    atomic_store(result, &qword_27F5432B8);
  }

  return result;
}

uint64_t LocationService.init(timeout:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_252E36C84();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t sub_252B0216C()
{
  v0 = sub_252E36C84();
  __swift_allocate_value_buffer(v0, qword_27F5432C0);
  *__swift_project_value_buffer(v0, qword_27F5432C0) = 50;
  v1 = *(*(v0 - 8) + 104);

  return v1();
}

uint64_t static LocationService.defaultTimeout.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F53F348 != -1)
  {
    swift_once();
  }

  v2 = sub_252E36C84();
  v3 = __swift_project_value_buffer(v2, qword_27F5432C0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_252B022C4()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D47310]) init];
  v0[12] = v1;
  [v1 setDesiredAccuracy_];
  sub_25293F638(0, &qword_27F5404D8, 0x277CCABB0);
  v2 = sub_252E37674();
  [v1 setMaxAge_];

  v3 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  [v1 setSearchTimeout_];

  v5 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v4);
  sub_252929E74((v5 + 56), (v0 + 2));

  v6 = v0[5];
  v7 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v6);
  v8 = swift_task_alloc();
  v0[13] = v8;
  v9 = sub_25293F638(0, &qword_27F5432D8, 0x277D471B0);
  *v8 = v0;
  v8[1] = sub_252B02484;

  return MEMORY[0x2821BB6A0](v1, v6, v9, v7);
}

uint64_t sub_252B02484(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 112) = a1;
  *(v3 + 120) = v1;

  if (v1)
  {
    v4 = sub_252B0274C;
  }

  else
  {
    v4 = sub_252B02598;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_252B02598()
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    v2 = v1;
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    v3 = [objc_allocWithZone(MEMORY[0x277D4C408]) init];
    v4 = *(v0 + 112);
    v5 = *(v0 + 96);
    if (v3)
    {
      [v2 latitude];
      [v3 setLat_];
      [v2 longitude];
      [v3 setLng_];
    }
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 96);
    v6 = sub_252E36AD4();
    __swift_project_value_buffer(v6, qword_27F544D60);
    sub_252CC4050(0xD000000000000020, 0x8000000252E7B150, 0xD000000000000078, 0x8000000252E7B0B0, 0xD000000000000014, 0x8000000252E7B130, 40);
    v3 = 0;
  }

  v7 = *(v0 + 8);

  return v7(v3);
}

uint64_t sub_252B0274C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  if (qword_27F53F4E8 != -1)
  {
    swift_once();
  }

  v1 = v0[15];
  v2 = v0[12];
  v3 = sub_252E36AD4();
  __swift_project_value_buffer(v3, qword_27F544D60);
  sub_252E379F4();

  swift_getErrorValue();
  v4 = sub_252E37E54();
  MEMORY[0x2530AD570](v4);

  sub_252CC4050(0xD000000000000020, 0x8000000252E7B080, 0xD000000000000078, 0x8000000252E7B0B0, 0xD000000000000014, 0x8000000252E7B130, 43);

  v5 = v0[1];

  return v5(0);
}

double sub_252B028D8()
{
  v1 = v0;
  v2 = sub_252E36C84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v3 + 16))(v5, v1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == *MEMORY[0x277D85188])
  {
    (*(v3 + 96))(v5, v2);
    return *v5;
  }

  if (v6 == *MEMORY[0x277D85178])
  {
    (*(v3 + 96))(v5, v2);
    v8 = *v5;
    v9 = 1000.0;
  }

  else if (v6 == *MEMORY[0x277D85170])
  {
    (*(v3 + 96))(v5, v2);
    v8 = *v5;
    v9 = 1000000.0;
  }

  else
  {
    if (v6 != *MEMORY[0x277D85168])
    {
      (*(v3 + 8))(v5, v2);
      return 9.22337204e18;
    }

    (*(v3 + 96))(v5, v2);
    v8 = *v5;
    v9 = 1000000000.0;
  }

  return v8 / v9;
}

uint64_t sub_252B02AD8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_25296BC70;

  return LocationService.getCurrentLocation()();
}

double sub_252B02B64()
{
  v1 = v0;
  v2 = sub_252E36C84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v3 + 16))(v5, v1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == *MEMORY[0x277D85188])
  {
    (*(v3 + 96))(v5, v2);
    v7 = *v5;
  }

  else
  {
    if (v6 == *MEMORY[0x277D85178])
    {
      (*(v3 + 96))(v5, v2);
      v8 = *v5;
      v9 = 1000.0;
    }

    else if (v6 == *MEMORY[0x277D85170])
    {
      (*(v3 + 96))(v5, v2);
      v8 = *v5;
      v9 = 1000000.0;
    }

    else
    {
      if (v6 != *MEMORY[0x277D85168])
      {
        (*(v3 + 8))(v5, v2);
        v7 = 9.22337204e18;
        return v7 * 1000.0;
      }

      (*(v3 + 96))(v5, v2);
      v8 = *v5;
      v9 = 1000000000.0;
    }

    v7 = v8 / v9;
  }

  return v7 * 1000.0;
}

uint64_t dispatch thunk of LocationProviding.getCurrentLocation()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25296BC70;

  return v7(a1, a2);
}

uint64_t type metadata accessor for LocationService(uint64_t a1)
{
  result = qword_27F5432E0;
  if (!qword_27F5432E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_252B02F00(uint64_t a1)
{
  result = sub_252E36C84();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
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

unint64_t UnitSemantic.rawValue.getter()
{
  v1 = 0x746E6563726570;
  v2 = 0xD000000000000011;
  if (*v0 != 2)
  {
    v2 = 0x4773656572676564;
  }

  if (*v0)
  {
    v1 = 0x4373656572676564;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

HomeAutomationInternal::UnitSemantic_optional __swiftcall UnitSemantic.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_252E37B74();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_252B030E0()
{
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252B031C0(uint64_t a1)
{
  sub_252E37044();
}

uint64_t sub_252B0328C(uint64_t a1)
{
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

void sub_252B03374(unint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x746E6563726570;
  v4 = 0x8000000252E67E40;
  v5 = 0xD000000000000011;
  if (*v1 != 2)
  {
    v5 = 0x4773656572676564;
    v4 = 0xEE00636972656E65;
  }

  if (*v1)
  {
    v3 = 0x4373656572676564;
    v2 = 0xEE00737569736C65;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_252B034F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_252AD617C();
  v5 = sub_252B0385C();
  v6 = sub_252B038B0();

  return MEMORY[0x2821C21F8](a1, a2, v4, v5, v6);
}

uint64_t _s22HomeAutomationInternal12UnitSemanticO1loiySbAC_ACtFZ_0(_BYTE *a1, _BYTE *a2)
{
  v2 = 0x746E6563726570;
  v3 = *a1;
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      v4 = 0xD000000000000011;
      v5 = 0x8000000252E67E40;
    }

    else
    {
      v4 = 0x4773656572676564;
      v5 = 0xEE00636972656E65;
    }
  }

  else
  {
    if (*a1)
    {
      v4 = 0x4373656572676564;
    }

    else
    {
      v4 = 0x746E6563726570;
    }

    if (v3)
    {
      v5 = 0xEE00737569736C65;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  v6 = 0xE700000000000000;
  v7 = 0xD000000000000011;
  v8 = 0x8000000252E67E40;
  if (*a2 != 2)
  {
    v7 = 0x4773656572676564;
    v8 = 0xEE00636972656E65;
  }

  if (*a2)
  {
    v2 = 0x4373656572676564;
    v6 = 0xEE00737569736C65;
  }

  if (*a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (*a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = sub_252E37DB4();
  }

  return v11 & 1;
}

unint64_t sub_252B036E0()
{
  result = qword_27F5432F0;
  if (!qword_27F5432F0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UnitSemantic, &type metadata for UnitSemantic, v0, v1);
    atomic_store(result, &qword_27F5432F0);
  }

  return result;
}

unint64_t sub_252B03738()
{
  result = qword_27F5432F8;
  if (!qword_27F5432F8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UnitSemantic, &type metadata for UnitSemantic, v0, v1);
    atomic_store(result, &qword_27F5432F8);
  }

  return result;
}

unint64_t sub_252B03790()
{
  result = qword_27F543300;
  if (!qword_27F543300)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5409C8, &qword_252E4B3C0);
    result = swift_getWitnessTable(MEMORY[0x277D83988], v3, v0, v1);
    atomic_store(result, &qword_27F543300);
  }

  return result;
}

unint64_t sub_252B037F8()
{
  result = qword_27F543308;
  if (!qword_27F543308)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UnitSemantic, &type metadata for UnitSemantic, v0, v1);
    atomic_store(result, &qword_27F543308);
  }

  return result;
}

unint64_t sub_252B0385C()
{
  result = qword_27F543310;
  if (!qword_27F543310)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UnitSemantic, &type metadata for UnitSemantic, v0, v1);
    atomic_store(result, &qword_27F543310);
  }

  return result;
}

unint64_t sub_252B038B0()
{
  result = qword_27F543318;
  if (!qword_27F543318)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UnitSemantic, &type metadata for UnitSemantic, v0, v1);
    atomic_store(result, &qword_27F543318);
  }

  return result;
}

uint64_t sub_252B03908(uint64_t a1)
{

  sub_252E362B4();
}

uint64_t sub_252B0399C(uint64_t a1, void *a2)
{
  if (!a2)
  {
    LOBYTE(v4) = 0;
    return v4 & 1;
  }

  v2 = a2;
  v3 = sub_252C2F554();
  if (v3 >> 62)
  {
    v4 = sub_252E378C4();

    if (!v4)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (v4)
  {
LABEL_4:
    LOBYTE(v4) = sub_252C2C2E4(0x12);
  }

LABEL_5:

  return v4 & 1;
}

uint64_t sub_252B03A30(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_252B03A54, 0, 0);
}

uint64_t sub_252B03A54()
{
  v1 = *(v0 + 24);
  v2 = v1[12];
  v3 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v2);

  sub_252943BD0(sub_252B03B8C, v1, 1, v2, v3);

  v4 = *(v0 + 8);

  return v4();
}

void *sub_252B03B28@<X0>(const void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for SceneNotSetUpResponseHandler();
  swift_allocObject();
  memcpy(__dst, a1, sizeof(__dst));
  result = sub_252BE97AC(__dst);
  *a2 = result;
  return result;
}

uint64_t sub_252B03B94()
{
  v0 = sub_252E33944();
  MEMORY[0x28223BE20](v0 - 8);
  sub_252E33924();
  return sub_252E33F54();
}

uint64_t sub_252B03C48()
{
  v0[3] = *(v0[2] + 24);
  v4 = (*MEMORY[0x277D55C70] + MEMORY[0x277D55C70]);

  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_252ACFBBC;
  v2 = MEMORY[0x277D84F90];

  return v4(0xD000000000000020, 0x8000000252E7B220, v2);
}

uint64_t sub_252B03D28(uint64_t a1)
{
  v1[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v1[3] = swift_task_alloc();
  v1[4] = type metadata accessor for HomeAutomationBlockDisableSceneParameters(0);
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252B03DF4, 0, 0);
}

uint64_t sub_252B03DF4()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  __swift_project_boxed_opaque_existential_1((v0[2] + 112), *(v0[2] + 136));
  v4 = sub_252E36324();
  v5 = *(*(v4 - 8) + 56);
  v5(v1, 1, 1, v4);
  *(v1 + *(v2 + 20)) = 0;
  v6 = v1 + *(v2 + 24);
  *v6 = 0x4000000000000000;
  *(v6 + 8) = 0;
  sub_252E37024();
  v5(v3, 0, 1, v4);
  sub_252956C98(v3, v1);
  v7 = sub_252C05BC4();
  v0[6] = v7;
  v10 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
  v8 = swift_task_alloc();
  v0[7] = v8;
  *v8 = v0;
  v8[1] = sub_252B03FA0;

  return v10(0xD000000000000020, 0x8000000252E7B220, v7);
}

uint64_t sub_252B03FA0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v5 = sub_252B0416C;
  }

  else
  {
    *(v4 + 72) = a1;
    v5 = sub_252B040EC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252B040EC()
{
  sub_252B04DE4(v0[5]);

  v1 = v0[1];
  v2 = v0[9];

  return v1(v2);
}

uint64_t sub_252B0416C()
{
  sub_252B04DE4(*(v0 + 40));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252B04214(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_25293B808;

  return (sub_252B0436C)(a2);
}

void *sub_252B042C4@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for BlockDisableSceneHandler();
  swift_allocObject();
  result = sub_252D192A0();
  *a1 = result;
  return result;
}

BOOL sub_252B04300(uint64_t *a1)
{
  v1 = a1[24];
  if (!*(a1[16] + 16) && !sub_2529A6F1C(19, a1[10]) || !*(v1 + 16))
  {
    return 0;
  }

  return sub_2529A78B0(1, v1);
}

uint64_t sub_252B0436C()
{
  v1[27] = v0;
  v2 = sub_252E34014();
  v1[28] = v2;
  v1[29] = *(v2 - 8);
  v1[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252B0442C, 0, 0);
}

uint64_t sub_252B0442C(uint64_t a1)
{
  v2 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(a1);
  sub_252929E74((v2 + 288), v1 + 16);

  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  __swift_project_boxed_opaque_existential_1((v1 + 16), v3);
  v5 = (*(v4 + 120))(v3, v4);
  v6 = __swift_destroy_boxed_opaque_existential_1((v1 + 16));
  if (v5)
  {
    v7 = *(v1 + 216);
    v8 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v6);
    sub_252929E74((v8 + 96), v1 + 96);

    v9 = *(v1 + 120);
    *(v1 + 248) = v9;
    *(v1 + 264) = __swift_project_boxed_opaque_existential_1((v1 + 96), v9);
    sub_252929E74(v7 + 32, v1 + 136);
    __swift_project_boxed_opaque_existential_1((v1 + 136), *(v1 + 160));
    sub_252B03B94();
    v10 = swift_task_alloc();
    *(v1 + 272) = v10;
    *v10 = v1;
    v10[1] = sub_252B046A4;
    v11 = *(v1 + 240);
    v12 = *(v1 + 216);

    return sub_252A199A8(v1 + 176, &unk_252E4B588, v12, &unk_252E4B590, 0, v11, 0, 0);
  }

  else
  {
    sub_252929E74(*(v1 + 216) + 32, v1 + 56);
    v14 = *(v1 + 80);
    v15 = *(v1 + 88);
    __swift_project_boxed_opaque_existential_1((v1 + 56), v14);

    v16 = swift_task_alloc();
    *(v1 + 304) = v16;
    *v16 = v1;
    v16[1] = sub_252B049E0;
    v17 = *(v1 + 216);

    return sub_252BDC404(&unk_252E4B578, v17, v14, v15);
  }
}

uint64_t sub_252B046A4()
{
  v2 = *v1;
  v2[35] = v0;

  if (v0)
  {
    (*(v2[29] + 8))(v2[30], v2[28]);

    return MEMORY[0x2822009F8](sub_252B04B68, 0, 0);
  }

  else
  {
    (*(v2[29] + 8))(v2[30], v2[28]);
    v3 = swift_task_alloc();
    v2[36] = v3;
    *v3 = v2;
    v3[1] = sub_252B04850;
    v4 = v2[32];
    v5 = v2[31];

    return MEMORY[0x2821BB5D0](v2 + 22, v5, v4);
  }
}

uint64_t sub_252B04850()
{
  v2 = *v1;
  v2[37] = v0;

  __swift_destroy_boxed_opaque_existential_1(v2 + 22);
  if (v0)
  {
    v3 = sub_252B04BDC;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v2 + 17);
    v3 = sub_252B04974;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_252B04974()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 96));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252B049E0()
{
  *(*v1 + 312) = v0;

  if (v0)
  {
    v2 = sub_252B04C50;
  }

  else
  {

    v2 = sub_252B04AFC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_252B04AFC()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252B04B68()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 17);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);

  v1 = v0[1];

  return v1();
}

uint64_t sub_252B04BDC()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 17);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);

  v1 = v0[1];

  return v1();
}

uint64_t sub_252B04C50()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252B04CC4()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_25294B958;

  return sub_252B03D28(v0);
}

uint64_t sub_252B04D54()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_25294B7BC;

  return sub_252B03C28(v0);
}

uint64_t sub_252B04DE4(uint64_t a1)
{
  v2 = type metadata accessor for HomeAutomationBlockDisableSceneParameters(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_252B04E40(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_52;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v3 = 0;
    v28 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v29 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v26 = isUniquelyReferenced_nonNull_bridgeObject;
    v27 = v1;
    v4 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v29)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x2530ADF00](v3, v26);
        v5 = __OFADD__(v3++, 1);
        if (v5)
        {
          goto LABEL_46;
        }
      }

      else
      {
        if (v3 >= *(v28 + 16))
        {
          goto LABEL_47;
        }

        v5 = __OFADD__(v3++, 1);
        if (v5)
        {
LABEL_46:
          __break(1u);
LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
LABEL_52:
          v25 = isUniquelyReferenced_nonNull_bridgeObject;
          v1 = sub_252E378C4();
          isUniquelyReferenced_nonNull_bridgeObject = v25;
          goto LABEL_3;
        }
      }

      v6 = sub_252E34524();

      v7 = v6 ? v6 : v2;
      v2 = v7 >> 62;
      v8 = v7 >> 62 ? sub_252E378C4() : *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v9 = v4 >> 62;
      if (v4 >> 62)
      {
        v23 = sub_252E378C4();
        v11 = v23 + v8;
        if (__OFADD__(v23, v8))
        {
LABEL_43:
          __break(1u);
          return v2;
        }
      }

      else
      {
        v10 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v11 = v10 + v8;
        if (__OFADD__(v10, v8))
        {
          goto LABEL_43;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        break;
      }

      if (v9)
      {
        goto LABEL_22;
      }

LABEL_23:
      isUniquelyReferenced_nonNull_bridgeObject = sub_252E37A54();
      v4 = isUniquelyReferenced_nonNull_bridgeObject;
      v12 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_24:
      v31 = v8;
      v13 = *(v12 + 16);
      v14 = *(v12 + 24);
      if (v2)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_252E378C4();
        v15 = isUniquelyReferenced_nonNull_bridgeObject;
        if (!isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_5:

          if (v31 > 0)
          {
            goto LABEL_48;
          }

          goto LABEL_6;
        }
      }

      else
      {
        v15 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v15)
        {
          goto LABEL_5;
        }
      }

      if (((v14 >> 1) - v13) < v31)
      {
        goto LABEL_49;
      }

      v16 = v12 + 8 * v13 + 32;
      if (v2)
      {
        if (v15 < 1)
        {
          goto LABEL_51;
        }

        sub_2529E6488(&qword_27F543338, &qword_27F541820, &qword_252E40AB8, MEMORY[0x277D83988]);
        for (i = 0; i != v15; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541820, &qword_252E40AB8);
          v18 = sub_2529FBE00(v30, i, v7);
          v20 = *v19;

          (v18)(v30, 0);
          *(v16 + 8 * i) = v20;
        }
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543330, &qword_252E4B5A8);
        swift_arrayInitWithCopy();
      }

      v1 = v27;
      if (v31 >= 1)
      {
        v21 = *(v12 + 16);
        v5 = __OFADD__(v21, v31);
        v22 = v21 + v31;
        if (v5)
        {
          goto LABEL_50;
        }

        *(v12 + 16) = v22;
      }

LABEL_6:
      v2 = MEMORY[0x277D84F90];
      if (v3 == v1)
      {
        return v4;
      }
    }

    if (!v9)
    {
      v12 = v4 & 0xFFFFFFFFFFFFFF8;
      if (v11 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    }

LABEL_22:
    sub_252E378C4();
    goto LABEL_23;
  }

  return v2;
}

uint64_t sub_252B051B4(uint64_t a1)
{
  v24 = *(a1 + 16);
  if (!v24)
  {
    return MEMORY[0x277D84F90];
  }

  v1 = 0;
  v2 = MEMORY[0x277D84F90];
  v23 = a1 + 32;
  while (1)
  {
    v4 = *(v23 + 8 * v1);
    v5 = v4 >> 62;
    if (v4 >> 62)
    {
      v6 = sub_252E378C4();
    }

    else
    {
      v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v7 = v2 >> 62;
    if (v2 >> 62)
    {
      v22 = sub_252E378C4();
      v9 = v22 + v6;
      if (__OFADD__(v22, v6))
      {
LABEL_32:
        __break(1u);
        return MEMORY[0x277D84F90];
      }
    }

    else
    {
      v8 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v9 = v8 + v6;
      if (__OFADD__(v8, v6))
      {
        goto LABEL_32;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v27 = v6;
    if (result)
    {
      if (!v7)
      {
        v10 = v2 & 0xFFFFFFFFFFFFFF8;
        if (v9 <= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

LABEL_14:
      sub_252E378C4();
      goto LABEL_15;
    }

    if (v7)
    {
      goto LABEL_14;
    }

LABEL_15:
    result = sub_252E37A54();
    v2 = result;
    v10 = result & 0xFFFFFFFFFFFFFF8;
LABEL_16:
    v11 = *(v10 + 16);
    v12 = *(v10 + 24);
    if (v5)
    {
      break;
    }

    v13 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v13)
    {
      goto LABEL_3;
    }

LABEL_20:
    if (((v12 >> 1) - v11) < v27)
    {
      goto LABEL_36;
    }

    v25 = v2;
    v14 = v10 + 8 * v11 + 32;
    if (v5)
    {
      if (v13 < 1)
      {
        goto LABEL_38;
      }

      sub_2529E6488(&qword_27F543340, &qword_27F5417F0, &qword_252E40A90, MEMORY[0x277D83988]);
      for (i = 0; i != v13; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5417F0, &qword_252E40A90);
        v16 = sub_2529FBE00(v26, i, v4);
        v18 = *v17;

        (v16)(v26, 0);
        *(v14 + 8 * i) = v18;
      }
    }

    else
    {
      sub_252E35944();
      swift_arrayInitWithCopy();
    }

    v2 = v25;
    if (v27 >= 1)
    {
      v19 = *(v10 + 16);
      v20 = __OFADD__(v19, v27);
      v21 = v19 + v27;
      if (v20)
      {
        goto LABEL_37;
      }

      *(v10 + 16) = v21;
    }

LABEL_4:
    if (++v1 == v24)
    {
      return v2;
    }
  }

  result = sub_252E378C4();
  v13 = result;
  if (result)
  {
    goto LABEL_20;
  }

LABEL_3:

  if (v27 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_252B05484(uint64_t a1)
{

  v2 = sub_252B087A4(a1);

  v10 = MEMORY[0x277D84F90];
  if (v2 >> 62)
  {
LABEL_18:
    v3 = sub_252E378C4();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  v5 = MEMORY[0x277D84F90];
  while (v3 != v4)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      MEMORY[0x2530ADF00](v4, v2);
      v6 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_16;
      }
    }

    else
    {
      if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      v6 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
LABEL_16:
        __break(1u);
LABEL_17:
        __break(1u);
        goto LABEL_18;
      }
    }

    v7 = sub_252E35904();

    ++v4;
    if (v7)
    {
      MEMORY[0x2530AD700](v8);
      if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_252E372A4();
      }

      sub_252E372D4();
      v5 = v10;
      v4 = v6;
    }
  }

  return v5;
}

uint64_t sub_252B05604(unint64_t a1)
{
  v1 = a1;
  v18 = MEMORY[0x277D84F90];
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_40:
    v3 = sub_252E378C4();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v5 = 0;
    v6 = MEMORY[0x277D84F90];
    while (2)
    {
      v7 = v5;
      while (1)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          MEMORY[0x2530ADF00](v7, v1);
          v5 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
            goto LABEL_36;
          }
        }

        else
        {
          if (v7 >= *(v2 + 16))
          {
            goto LABEL_37;
          }

          v5 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
LABEL_36:
            __break(1u);
LABEL_37:
            __break(1u);
LABEL_38:
            __break(1u);
LABEL_39:
            __break(1u);
            goto LABEL_40;
          }
        }

        sub_252E34554();
        sub_252E34E24();

        if (v17)
        {
          break;
        }

        ++v7;
        if (v5 == v3)
        {
          goto LABEL_20;
        }
      }

      MEMORY[0x2530AD700](v8);
      if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_252E372A4();
      }

      sub_252E372D4();
      v6 = v18;
      if (v5 != v3)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
  }

LABEL_20:
  v18 = v6;

  v1 = sub_252B04E40(v9);

  v17 = v4;
  v2 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v1 >> 62)
  {
    v10 = sub_252E378C4();
    if (v10)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v10 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
LABEL_22:
      v11 = MEMORY[0x277D84F90];
      v12 = 0;
      while (1)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          MEMORY[0x2530ADF00](v12, v1);
          v13 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            goto LABEL_38;
          }
        }

        else
        {
          if (v12 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_39;
          }

          v13 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            goto LABEL_38;
          }
        }

        sub_252E349D4();

        if (v16)
        {
          MEMORY[0x2530AD700](v14);
          if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_252E372A4();
          }

          sub_252E372D4();
          v11 = v4;
          if (v13 == v10)
          {
            goto LABEL_43;
          }

          v12 = v13;
        }

        else
        {
          ++v12;
          if (v13 == v10)
          {
            goto LABEL_43;
          }
        }
      }
    }
  }

  v11 = MEMORY[0x277D84F90];
LABEL_43:

  sub_25297AE00(v11);
  return v6;
}

uint64_t sub_252B058DC(unint64_t a1)
{
  v10 = MEMORY[0x277D84F90];
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (!(a1 >> 62))
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

    return MEMORY[0x277D84F90];
  }

LABEL_20:
  v3 = sub_252E378C4();
  if (!v3)
  {
    return MEMORY[0x277D84F90];
  }

LABEL_3:
  v4 = 0;
  v5 = MEMORY[0x277D84F90];
  do
  {
    for (i = v4; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x2530ADF00](i, a1);
        v4 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_18;
        }
      }

      else
      {
        if (i >= *(v2 + 16))
        {
          goto LABEL_19;
        }

        v4 = i + 1;
        if (__OFADD__(i, 1))
        {
LABEL_18:
          __break(1u);
LABEL_19:
          __break(1u);
          goto LABEL_20;
        }
      }

      sub_252E34514();
      sub_252E34E24();

      if (v9)
      {
        break;
      }

      if (v4 == v3)
      {
        return v5;
      }
    }

    MEMORY[0x2530AD700](v7);
    if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_252E372A4();
    }

    sub_252E372D4();
    v5 = v10;
  }

  while (v4 != v3);
  return v5;
}

uint64_t sub_252B05A58()
{
  v0 = sub_252E34874();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v61 = &v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  v60 = &v55 - v5;
  v6 = MEMORY[0x28223BE20](v4);
  v59 = &v55 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v58 = &v55 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v57 = &v55 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v56 = &v55 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v55 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v55 - v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541BE8, &qword_252E41DB8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_252E419C0;
  v20 = *(v1 + 104);
  v20(v18, *MEMORY[0x277D5E508], v0);
  v21 = sub_252E34854();
  v23 = v22;
  v24 = *(v1 + 8);
  v24(v18, v0);
  *(inited + 32) = v21;
  *(inited + 40) = v23;
  *(inited + 48) = 1;
  v20(v16, *MEMORY[0x277D5E530], v0);
  v25 = sub_252E34854();
  v27 = v26;
  v24(v16, v0);
  *(inited + 56) = v25;
  *(inited + 64) = v27;
  *(inited + 72) = 2;
  v28 = v56;
  v20(v56, *MEMORY[0x277D5E528], v0);
  v29 = sub_252E34854();
  v31 = v30;
  v24(v28, v0);
  *(inited + 80) = v29;
  *(inited + 88) = v31;
  *(inited + 96) = 3;
  v32 = v57;
  v20(v57, *MEMORY[0x277D5E550], v0);
  v33 = sub_252E34854();
  v35 = v34;
  v24(v32, v0);
  *(inited + 104) = v33;
  *(inited + 112) = v35;
  *(inited + 120) = 4;
  v36 = v58;
  v20(v58, *MEMORY[0x277D5E540], v0);
  v37 = sub_252E34854();
  v39 = v38;
  v24(v36, v0);
  *(inited + 128) = v37;
  *(inited + 136) = v39;
  *(inited + 144) = 6;
  v40 = v59;
  v20(v59, *MEMORY[0x277D5E538], v0);
  v41 = sub_252E34854();
  v43 = v42;
  v24(v40, v0);
  *(inited + 152) = v41;
  *(inited + 160) = v43;
  *(inited + 168) = 5;
  v44 = v60;
  v20(v60, *MEMORY[0x277D5E558], v0);
  v45 = sub_252E34854();
  v47 = v46;
  v24(v44, v0);
  *(inited + 176) = v45;
  *(inited + 184) = v47;
  *(inited + 192) = 7;
  v48 = v61;
  v20(v61, *MEMORY[0x277D5E548], v0);
  v49 = v48;
  v50 = sub_252E34854();
  v52 = v51;
  v24(v49, v0);
  *(inited + 200) = v50;
  *(inited + 208) = v52;
  *(inited + 216) = 7;
  v53 = sub_252CC643C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541BF0, &qword_252E41DC0);
  result = swift_arrayDestroy();
  qword_27F575818 = v53;
  return result;
}

uint64_t sub_252B05F4C(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (qword_27F53F4F8 != -1)
  {
    swift_once();
  }

  v6 = sub_252E36AD4();
  __swift_project_value_buffer(v6, qword_27F544D90);
  sub_252CC3D90(0xD00000000000001ALL, 0x8000000252E7B4A0, 0xD000000000000068, 0x8000000252E7B280);
  v8 = *(sub_252B680FC(v7) + 72);

  if (v8 != 1)
  {
    sub_252E34DA4();
    if (v18)
    {
      sub_252A00AF4(&v17, v19);
      sub_252974E7C(v19, &v17);
      sub_252E34E94();
      if (swift_dynamicCast())
      {

        sub_252CC3D90(0xD00000000000001DLL, 0x8000000252E7B510, 0xD000000000000068, 0x8000000252E7B280);
        __swift_destroy_boxed_opaque_existential_1(v19);
        v11 = 0;
        return v11 & 1;
      }

      __swift_destroy_boxed_opaque_existential_1(v19);
    }

    else
    {
      sub_25293847C(&v17, &qword_27F541E80, &qword_252E3DFA0);
    }

    v12 = sub_252B05484(a1);
    v13 = sub_252B0C80C(v12);
    v14 = sub_252B05604(v12);

    *&v19[0] = v14;
    if (sub_252B0D160(v13))
    {

      v11 = 1;
      return v11 & 1;
    }

    if (a3 >> 62)
    {
      if (sub_252E378C4())
      {
        goto LABEL_15;
      }
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_15:

      v9 = "Evaluating parse rejection";
      v10 = 0xD00000000000002ELL;
      goto LABEL_5;
    }

    if (a2 >> 62)
    {
      if (!sub_252E378C4())
      {
        goto LABEL_20;
      }
    }

    else if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_20:
      v11 = sub_252B0622C(v13, v14);

      return v11 & 1;
    }

    sub_25297AE00(v15);
    v14 = *&v19[0];
    goto LABEL_20;
  }

  v9 = "Handling noVerb_noEntity task";
  v10 = 0xD00000000000004DLL;
LABEL_5:
  sub_252CC3D90(v10, v9 | 0x8000000000000000, 0xD000000000000068, 0x8000000252E7B280);
  v11 = 0;
  return v11 & 1;
}

uint64_t sub_252B0622C(unint64_t a1, unint64_t a2)
{
  v3 = v2;
  v196 = sub_252E34544();
  v190 = *(v196 - 8);
  MEMORY[0x28223BE20](v196);
  v191 = &v189 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v195 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541C20, &unk_252E5B5E0);
  MEMORY[0x28223BE20](v195);
  v194 = &v189 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540288, &qword_252E41DE0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v204 = &v189 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v198 = &v189 - v12;
  MEMORY[0x28223BE20](v11);
  v192 = &v189 - v13;
  v223 = sub_252E34B74();
  v232 = *(v223 - 8);
  v14 = MEMORY[0x28223BE20](v223);
  v203 = &v189 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v222 = &v189 - v17;
  MEMORY[0x28223BE20](v16);
  v221 = (&v189 - v18);
  v19 = sub_252E34804();
  v205 = *(v19 - 8);
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v189 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20);
  v217 = &v189 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v224 = &v189 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v189 - v28;
  v30 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v27);
  sub_252929E74((v30 + 288), &v237);

  v31 = v239;
  v32 = v240;
  __swift_project_boxed_opaque_existential_1(&v237, v239);
  v33 = (*(v32 + 88))(v31, v32);
  __swift_destroy_boxed_opaque_existential_1(&v237);
  v201 = a1;
  v202 = a2;
  if ((v33 & 1) == 0)
  {
    goto LABEL_7;
  }

  v34 = sub_252B0D240(a1, a2);
  if (!*(v34 + 16))
  {

LABEL_7:
    v38 = MEMORY[0x277D84F90];
    v36 = v204;
    goto LABEL_8;
  }

  v35 = v34;
  v36 = v204;
  if (qword_27F53F4F8 != -1)
  {
    swift_once();
  }

  v37 = sub_252E36AD4();
  __swift_project_value_buffer(v37, qword_27F544D90);
  sub_252CC3D90(0xD000000000000028, 0x8000000252E7BB90, 0xD000000000000068, 0x8000000252E7B280);
  v38 = v35;
LABEL_8:
  v226 = *(v38 + 16);
  v199 = v22;
  v197 = v3;
  if (!v226)
  {

    if (qword_27F53F4F8 != -1)
    {
      swift_once();
    }

    v39 = sub_252E36AD4();
    __swift_project_value_buffer(v39, qword_27F544D90);
    v40 = 0xD000000000000068;
    sub_252CC3D90(0xD000000000000032, 0x8000000252E7BB50, 0xD000000000000068, 0x8000000252E7B280);
    v41 = v202;
    v42 = sub_252B0DA14(v201, v202);
    v226 = v42[2];
    if (v226)
    {
      v231 = v42;
      v207 = v19;
      v208 = 0;
      goto LABEL_14;
    }

    v77 = 1;
LABEL_190:
    sub_252E34DA4();
    if (v239)
    {
      sub_252A00AF4(&v237, &v234);
      sub_252974E7C(&v234, &v237);
      sub_252E35174();
      if (swift_dynamicCast())
      {

        if (qword_27F53F4F8 != -1)
        {
          swift_once();
        }

        v156 = sub_252E36AD4();
        __swift_project_value_buffer(v156, qword_27F544D90);
        sub_252CC3D90(0xD00000000000004BLL, 0x8000000252E7B680, 0xD000000000000068, 0x8000000252E7B280);
        v158 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v157);
        sub_252929E74((v158 + 368), &v237);

        v159 = sub_252C92828(&v237);
        __swift_destroy_boxed_opaque_existential_1(&v237);
        if (v159)
        {
          v160 = 0xD000000000000047;
          v161 = 0x8000000252E7B6D0;
          goto LABEL_268;
        }

        __swift_destroy_boxed_opaque_existential_1(&v234);
        if (!v77)
        {
          goto LABEL_248;
        }

        goto LABEL_205;
      }

      __swift_destroy_boxed_opaque_existential_1(&v234);
      if (!v77)
      {
LABEL_248:
        sub_252E34DA4();
        if (v236)
        {
          sub_252A00AF4(&v234, &v237);
          sub_252974E7C(&v237, &v234);
          sub_252E34E34();
          if (swift_dynamicCast() || (sub_252974E7C(&v237, &v234), sub_252E34EA4(), v169 = "/Library/Caches/com.apple.xbs/Sources/SiriHomeAutomation/HomeAutomationInternal/Flow/NL/NLv4+Utils.swift", swift_dynamicCast()))
          {

            if (qword_27F53F4F8 != -1)
            {
              swift_once();
            }

            v185 = sub_252E36AD4();
            __swift_project_value_buffer(v185, qword_27F544D90);
            sub_252CC3D90(v40 - 30, 0x8000000252E7B5C0, 0xD000000000000068, 0x8000000252E7B280);
            v186 = &v237;
            goto LABEL_269;
          }

          __swift_destroy_boxed_opaque_existential_1(&v237);
        }

        else
        {
          sub_25293847C(&v234, &qword_27F541E80, &qword_252E3DFA0);
          v169 = "/Library/Caches/com.apple.xbs/Sources/SiriHomeAutomation/HomeAutomationInternal/Flow/NL/NLv4+Utils.swift";
        }

        if (qword_27F53F4F8 != -1)
        {
          goto LABEL_276;
        }

        goto LABEL_258;
      }
    }

    else
    {
      sub_25293847C(&v237, &qword_27F541E80, &qword_252E3DFA0);
      if (!v77)
      {
        goto LABEL_248;
      }
    }

LABEL_205:
    sub_252E34DA4();
    if (!v239)
    {
      sub_25293847C(&v237, &qword_27F541E80, &qword_252E3DFA0);
      goto LABEL_248;
    }

    sub_252A00AF4(&v237, &v234);
    sub_252974E7C(&v234, &v237);
    sub_252E34F84();
    if (!swift_dynamicCast())
    {
      sub_252974E7C(&v234, &v237);
      sub_252E35034();
      if (!swift_dynamicCast())
      {
        goto LABEL_247;
      }
    }

    v163 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v162);
    sub_252929E74((v163 + 16), &v237);

    __swift_project_boxed_opaque_existential_1(&v237, v239);
    v220 = sub_252E338D4();
    __swift_destroy_boxed_opaque_existential_1(&v237);
    v164 = v41;
    if (v41 >> 62)
    {
      v165 = sub_252E378C4();
    }

    else
    {
      v165 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v166 = v198;
    v167 = v192;
    if (!v165)
    {
LABEL_231:
      v40 = v201;
      if (v201 >> 62)
      {
        v169 = sub_252E378C4();
      }

      else
      {
        v169 = *((v201 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v183 = 0;
      while (1)
      {
        if (v169 == v183)
        {
          goto LABEL_246;
        }

        if ((v40 & 0xC000000000000001) != 0)
        {
          MEMORY[0x2530ADF00](v183, v40);
          if (__OFADD__(v183, 1))
          {
LABEL_243:
            __break(1u);
            goto LABEL_247;
          }
        }

        else
        {
          if (v183 >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_274:
            __break(1u);
LABEL_275:
            __break(1u);
LABEL_276:
            swift_once();
LABEL_258:
            v187 = sub_252E36AD4();
            __swift_project_value_buffer(v187, qword_27F544D90);
            v151 = v40 - 85;
            v152 = 0x8000000252E7B5A0;
            v153 = (v169 - 4) | 0x8000000000000000;
LABEL_185:
            sub_252CC3D90(v151, v152, 0xD000000000000068, v153);
            return 1;
          }

          if (__OFADD__(v183, 1))
          {
            goto LABEL_243;
          }
        }

        if (sub_252E34A14())
        {

          goto LABEL_264;
        }

        v184 = sub_252E34A34();

        v183 = (v183 + 1);
        if (v184)
        {
          goto LABEL_264;
        }
      }
    }

    v168 = 0;
    v228 = (v164 & 0xFFFFFFFFFFFFFF8);
    v229 = v164 & 0xC000000000000001;
    LODWORD(v227) = *MEMORY[0x277D5E230];
    v225 = (v190 + 56);
    v226 = (v190 + 104);
    v224 = (v190 + 48);
    v221 = (v190 + 32);
    v222 = (v190 + 8);
    v169 = &qword_252E41DE0;
    v223 = v165;
    while (1)
    {
      if (v229)
      {
        v170 = MEMORY[0x2530ADF00](v168, v202);
      }

      else
      {
        if (v168 >= v228[2])
        {
          goto LABEL_275;
        }
      }

      v230 = v168 + 1;
      v231 = v168;
      if (__OFADD__(v168, 1))
      {
        goto LABEL_274;
      }

      v40 = v36;
      v232 = v170;
      sub_252E34534();
      v171 = v196;
      (*v226)(v166, v227, v196);
      (*v225)(v166, 0, 1, v171);
      v172 = *(v195 + 48);
      v173 = v194;
      sub_252938414(v167, v194, &qword_27F540288, &qword_252E41DE0);
      sub_252938414(v166, v173 + v172, &qword_27F540288, &qword_252E41DE0);
      v174 = v167;
      v175 = v166;
      v176 = *v224;
      if ((*v224)(v173, 1, v171) == 1)
      {
        sub_25293847C(v175, &qword_27F540288, &qword_252E41DE0);
        sub_25293847C(v174, &qword_27F540288, &qword_252E41DE0);
        v177 = v176(v173 + v172, 1, v171) == 1;
        v125 = v173;
        v167 = v174;
        if (v177)
        {
LABEL_263:
          sub_25293847C(v125, &qword_27F540288, &qword_252E41DE0);
          goto LABEL_264;
        }
      }

      else
      {
        sub_252938414(v173, v36, &qword_27F540288, &qword_252E41DE0);
        if (v176(v173 + v172, 1, v171) != 1)
        {
          v178 = v191;
          (*v221)(v191, v173 + v172, v171);
          sub_252B0F0EC(&qword_27F541C28, MEMORY[0x277D5E248], MEMORY[0x277D5E250]);
          v179 = sub_252E36EF4();
          v180 = *v222;
          v181 = v178;
          v36 = v204;
          (*v222)(v181, v171);
          sub_25293847C(v198, &qword_27F540288, &qword_252E41DE0);
          v167 = v192;
          sub_25293847C(v192, &qword_27F540288, &qword_252E41DE0);
          v180(v36, v171);
          sub_25293847C(v173, &qword_27F540288, &qword_252E41DE0);
          if (v179)
          {
            goto LABEL_264;
          }

          goto LABEL_224;
        }

        sub_25293847C(v198, &qword_27F540288, &qword_252E41DE0);
        v167 = v192;
        sub_25293847C(v192, &qword_27F540288, &qword_252E41DE0);
        (*v222)(v36, v171);
        v125 = v173;
      }

      sub_25293847C(v125, &qword_27F541C20, &unk_252E5B5E0);
LABEL_224:

      if (sub_252E34A24())
      {

        goto LABEL_264;
      }

      v182 = sub_252E34A14();

      if (v182)
      {
LABEL_264:

        goto LABEL_265;
      }

      v168 = v231 + 1;
      v166 = v198;
      if (v230 == v223)
      {
        goto LABEL_231;
      }
    }
  }

  v231 = v38;
  v207 = v19;
  v208 = 0;
LABEL_14:
  v43 = 0;
  v44 = v205;
  v45 = v231;
  v206 = v231 + ((*(v44 + 80) + 32) & ~*(v44 + 80));
  v229 = v205 + 16;
  v220 = *MEMORY[0x277D5E6B0];
  v219 = (v232 + 104);
  v218 = (v232 + 8);
  v228 = (v205 + 8);
  v230 = 0xD000000000000015;
  v213 = ":setUsoIdentifiers:)";
  v212 = "homeAutomationNoun";
  v232 = 0xD000000000000017;
  v211 = "homeAutomationHue";
  v46 = 0xD000000000000012;
  v210 = "homeAutomationTemperatureValue";
  v209 = "homeAutomationService";
  v216 = "sink";
  v215 = "floatSettingName";
  v214 = " input, will handle the parse";
  v47 = "homeAutomationTrigger";
  v48 = "homeAutomationScene";
  v49 = "homeAutomationEntityTag";
  v200 = 0xD000000000000012;
  while (1)
  {
    if (v43 >= *(v45 + 16))
    {
      __break(1u);
LABEL_271:
      __break(1u);
LABEL_272:
      swift_once();
      goto LABEL_64;
    }

    v225 = *(v44 + 72);
    v227 = *(v44 + 16);
    v227(v29, v206 + v225 * v43, v207);
    v50 = 0;
    v51 = (v43 + 1);
    do
    {
      v52 = byte_2864A5A20[v50 + 32];
      if (v52 <= 4)
      {
        v53 = 0xD000000000000013;
        if (v52 == 3)
        {
          v53 = v46;
        }

        v54 = v211;
        if (v52 != 3)
        {
          v54 = v210;
        }

        if (v52 == 2)
        {
          v53 = v232;
          v54 = v212;
        }

        v55 = 0xD00000000000001BLL;
        if (!byte_2864A5A20[v50 + 32])
        {
          v55 = v230;
        }

        v58 = v213;
        if (byte_2864A5A20[v50 + 32])
        {
          v58 = v209;
        }

        v59 = byte_2864A5A20[v50 + 32] <= 1u;
      }

      else
      {
        v53 = 0xD000000000000013;
        v54 = v215;
        if (v52 != 9)
        {
          v54 = v214;
        }

        if (v52 == 8)
        {
          v53 = v232;
          v54 = v216;
        }

        v55 = 0xD000000000000011;
        v56 = 0xD000000000000018;
        if (v52 == 6)
        {
          v56 = v230;
          v57 = "homeAutomationScene";
        }

        else
        {
          v57 = "homeAutomationEntityTag";
        }

        if (v52 == 5)
        {
          v58 = "homeAutomationTrigger";
        }

        else
        {
          v55 = v56;
          v58 = v57;
        }

        v59 = byte_2864A5A20[v50 + 32] <= 7u;
      }

      if (v59)
      {
        v60 = v55;
      }

      else
      {
        v60 = v53;
      }

      if (v59)
      {
        v61 = v58;
      }

      else
      {
        v61 = v54;
      }

      v62 = v61 | 0x8000000000000000;
      v63 = sub_252E347F4();
      if (v64)
      {
        if (v60 == v63 && v62 == v64)
        {

          goto LABEL_61;
        }

        v65 = sub_252E37DB4();

        if (v65)
        {
          goto LABEL_59;
        }
      }

      else
      {
      }

      ++v50;
    }

    while (v50 != 11);
    v193 = v51;
    v66 = v221;
    sub_252E34784();
    v67 = v222;
    v68 = v223;
    (*v219)(v222, v220, v223);
    v69 = MEMORY[0x2530AB010](v66, v67);
    v70 = *v218;
    (*v218)(v67, v68);
    v70(v66, v68);
    if (v69)
    {
LABEL_59:
      v47 = "/Library/Caches/com.apple.xbs/Sources/SiriHomeAutomation/HomeAutomationInternal/Flow/NL/NLv4+Utils.swift";
      v48 = v207;
      v46 = v206;
      goto LABEL_62;
    }

    v71 = v203;
    sub_252E34784();
    v72 = sub_252E34B64();
    v74 = v73;
    v70(v71, v68);
    if (v72 == 0x6C7070612E6D6F63 && v74 == 0xEE00656D6F482E65)
    {
      break;
    }

    v75 = sub_252E37DB4();

    v76 = *v228;
    (*v228)(v29, v207);
    if (v75)
    {
      v47 = "/Library/Caches/com.apple.xbs/Sources/SiriHomeAutomation/HomeAutomationInternal/Flow/NL/NLv4+Utils.swift";
      v48 = v207;
      v46 = v206;
      v49 = v76;
      goto LABEL_63;
    }

    v43 = v193;
    v45 = v231;
    v46 = v200;
    v44 = v205;
    if (v193 == v226)
    {

      v77 = 0;
      v40 = 0xD000000000000068;
      v41 = v202;
      v36 = v204;
      goto LABEL_190;
    }
  }

LABEL_61:
  v47 = "/Library/Caches/com.apple.xbs/Sources/SiriHomeAutomation/HomeAutomationInternal/Flow/NL/NLv4+Utils.swift";
  v48 = v207;
  v46 = v206;

LABEL_62:
  v49 = *v228;
  (*v228)(v29, v48);
LABEL_63:
  if (qword_27F53F4F8 != -1)
  {
    goto LABEL_272;
  }

LABEL_64:
  v78 = 0xEF65747562697274;
  v79 = sub_252E36AD4();
  v80 = __swift_project_value_buffer(v79, qword_27F544D90);
  v81 = (v47 - 32);
  v47 = 0xD000000000000068;
  v212 = v81;
  v213 = v80;
  sub_252CC3D90(0xD000000000000048, 0x8000000252E7B720, 0xD000000000000068, v81 | 0x8000000000000000);
  v82 = 0;
  v214 = 0x8000000252E7BA70;
  v215 = 0x8000000252E7BA90;
  v211 = 0x8000000252E7B970;
  v210 = 0x8000000252E7B990;
  v209 = 0x8000000252E7B9B0;
  v207 = 0x8000000252E7B9D0;
  v205 = 0x8000000252E7B9F0;
  v204 = 0x8000000252E7BA10;
  v203 = 0x8000000252E7BA30;
  v202 = 0x8000000252E7BA50;
  v83 = &unk_2864A5000;
  v216 = 0xD000000000000010;
  v84 = v224;
  while (1)
  {
    if (v82 >= v231[2])
    {
      goto LABEL_271;
    }

    v227(v84, v46 + v82 * v225, v48);
    v201 = v82 + 1;
    v85 = v83[2672];
    v86 = 0x74416D6574737973;
    v87 = v216;
    if (v85 == 2)
    {
      v86 = v216;
    }

    v88 = v214;
    if (v85 != 2)
    {
      v88 = v78;
    }

    if (!v83[2672])
    {
      v87 = 0x747465536C6F6F62;
    }

    v89 = v215;
    if (!v83[2672])
    {
      v89 = 0xEF656D614E676E69;
    }

    v90 = v83[2672] <= 1u ? v87 : v86;
    v91 = v83[2672] <= 1u ? v89 : v88;
    v92 = sub_252E347F4();
    if (v93)
    {
      if (v90 == v92 && v93 == v91)
      {
LABEL_163:
        v123 = v212;

        goto LABEL_165;
      }

      v94 = sub_252E37DB4();

      if (v94)
      {
        break;
      }
    }

    else
    {
    }

    v95 = 0x74416D6574737973;
    v96 = v216;
    if (byte_2864A5A71 == 2)
    {
      v95 = v216;
    }

    v97 = v214;
    if (byte_2864A5A71 != 2)
    {
      v97 = v78;
    }

    if (!byte_2864A5A71)
    {
      v96 = 0x747465536C6F6F62;
    }

    v98 = v215;
    if (!byte_2864A5A71)
    {
      v98 = 0xEF656D614E676E69;
    }

    v99 = byte_2864A5A71 <= 1u ? v96 : v95;
    v100 = byte_2864A5A71 <= 1u ? v98 : v97;
    v101 = sub_252E347F4();
    if (v102)
    {
      if (v99 == v101 && v102 == v100)
      {
        goto LABEL_163;
      }

      v103 = sub_252E37DB4();

      if (v103)
      {
        break;
      }
    }

    else
    {
    }

    if (byte_2864A5A72 > 1u)
    {
      if (byte_2864A5A72 == 2)
      {
        v104 = v216;
        v105 = v214;
        v106 = sub_252E347F4();
        if (!v107)
        {
          goto LABEL_122;
        }
      }

      else
      {
        v104 = 0x74416D6574737973;
        v105 = v78;
        v106 = sub_252E347F4();
        if (!v107)
        {
          goto LABEL_122;
        }
      }
    }

    else
    {
      if (byte_2864A5A72)
      {
        v104 = v216;
      }

      else
      {
        v104 = 0x747465536C6F6F62;
      }

      if (byte_2864A5A72)
      {
        v105 = v215;
      }

      else
      {
        v105 = 0xEF656D614E676E69;
      }

      v106 = sub_252E347F4();
      if (!v107)
      {
LABEL_122:

        goto LABEL_123;
      }
    }

    if (v104 == v106 && v107 == v105)
    {
      goto LABEL_163;
    }

    v108 = sub_252E37DB4();

    if (v108)
    {
      break;
    }

LABEL_123:
    if (byte_2864A5A73 <= 1u)
    {
      v109 = 0x747465536C6F6F62;
      v110 = 0xEF656D614E676E69;
      if (!byte_2864A5A73)
      {
        goto LABEL_129;
      }

      v109 = v216;
      v111 = &v242;
LABEL_128:
      v110 = *(v111 - 32);
LABEL_129:
      v112 = sub_252E347F4();
      if (!v113)
      {
        goto LABEL_135;
      }

      goto LABEL_130;
    }

    if (byte_2864A5A73 == 2)
    {
      v109 = v216;
      v111 = &v241;
      goto LABEL_128;
    }

    v109 = 0x74416D6574737973;
    v110 = v78;
    v112 = sub_252E347F4();
    if (!v113)
    {
LABEL_135:

      goto LABEL_136;
    }

LABEL_130:
    if (v109 == v112 && v113 == v110)
    {
      goto LABEL_163;
    }

    v114 = sub_252E37DB4();

    if (v114)
    {
      break;
    }

LABEL_136:
    v115 = v78;
    v47 = 0;
    do
    {
      v116 = &unk_2864A58E8 + v47++;
      v117 = 0xE700000000000000;
      v118 = 0x656D614E726143;
      switch(v116[32])
      {
        case 1:
          v118 = 0x656D614E726163;
          break;
        case 2:
          v118 = v230;
          v119 = &v233;
          goto LABEL_154;
        case 3:
          v118 = 0x6F69647541726163;
          v117 = 0xEE00656372756F53;
          break;
        case 4:
          v118 = 0x616D6D6F43726163;
          v117 = 0xEF6E756F4E73646ELL;
          break;
        case 5:
          v118 = v232;
          v119 = &v234;
          goto LABEL_154;
        case 6:
          v118 = v232;
          v119 = &v234 + 1;
          goto LABEL_154;
        case 7:
          v118 = v232;
          v119 = &v235;
          goto LABEL_154;
        case 8:
          v118 = 0xD000000000000013;
          v119 = &v237;
          goto LABEL_154;
        case 9:
          v118 = 0xD000000000000019;
          v119 = &v238;
          goto LABEL_154;
        case 10:
          v118 = v216;
          v119 = &v239;
          goto LABEL_154;
        case 11:
          v118 = v232;
          v119 = &v240;
LABEL_154:
          v117 = *(v119 - 32);
          break;
        case 12:
          v118 = 0x69666F7250726163;
          v117 = 0xEE00656D614E656CLL;
          break;
        case 13:
          v117 = 0xEB00000000657079;
          v118 = 0x5474616553726163;
          break;
        case 14:
          v118 = 0x4D746E6556726163;
          v117 = 0xEB0000000065646FLL;
          break;
        default:
          break;
      }

      v120 = sub_252E347F4();
      if (v121)
      {
        if (v118 == v120 && v121 == v117)
        {
          v84 = v224;
          goto LABEL_163;
        }

        v122 = sub_252E37DB4();

        if (v122)
        {
          v84 = v224;
          goto LABEL_164;
        }
      }

      else
      {
      }
    }

    while (v47 != 15);
    v84 = v224;
    (v49)(v224, v48);
    v82 = v201;
    v78 = v115;
    v83 = &unk_2864A5000;
    if (v201 == v226)
    {
LABEL_196:

      goto LABEL_197;
    }
  }

LABEL_164:
  v123 = v212;
LABEL_165:
  (v49)(v84, v48);
  *&v237 = 0;
  *(&v237 + 1) = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD0000000000000D2, 0x8000000252E7B770);
  v124 = MEMORY[0x2530AD730](v231, v48);
  MEMORY[0x2530AD570](v124);

  sub_252CC3D90(v237, *(&v237 + 1), 0xD000000000000068, v123 | 0x8000000000000000);

  v126 = 0;
  v127 = v46;
  v232 = v49;
  while (v226 != v126)
  {
    if (v126 >= v231[2])
    {
      __break(1u);
LABEL_246:
      v40 = 0xD000000000000068;
      if ((v220 & 1) == 0)
      {
LABEL_247:
        __swift_destroy_boxed_opaque_existential_1(&v234);
        goto LABEL_248;
      }

LABEL_265:
      if (qword_27F53F4F8 != -1)
      {
        swift_once();
      }

      v188 = sub_252E36AD4();
      __swift_project_value_buffer(v188, qword_27F544D90);
      v160 = 0xD00000000000006ALL;
      v161 = 0x8000000252E7B610;
LABEL_268:
      sub_252CC3D90(v160, v161, 0xD000000000000068, 0x8000000252E7B280);
      v186 = &v234;
LABEL_269:
      __swift_destroy_boxed_opaque_existential_1(v186);
      return 0;
    }

    ++v126;
    v128 = v225 + v127;
    v129 = v217;
    (v227)(v217);
    v130 = v221;
    sub_252E34784();
    v131 = v48;
    v132 = v222;
    v133 = v223;
    (*v219)(v222, v220, v223);
    v134 = MEMORY[0x2530AB010](v130, v132);
    v135 = *v218;
    v136 = v132;
    v48 = v131;
    (*v218)(v136, v133);
    v135(v130, v133);
    v49 = v232;
    v125 = (v232)(v129, v131);
    v127 = v128;
    if (v134)
    {

      v137 = 0xD000000000000041;
      v138 = 0x8000000252E7B850;
      v139 = v212 | 0x8000000000000000;
      goto LABEL_198;
    }
  }

  v140 = 0;
  v141 = v206;
  v142 = v199;
  while (2)
  {
    if (v140 >= v231[2])
    {
      __break(1u);
      goto LABEL_263;
    }

    v143 = (v227)(v142, v141, v48);
    if (sub_252B082A8(v143))
    {
      (v49)(v142, v48);
LABEL_183:

      v150 = " handle the parse";
      v151 = 0xD000000000000051;
LABEL_184:
      v152 = v150 | 0x8000000000000000;
      v153 = v212 | 0x8000000000000000;
      goto LABEL_185;
    }

    v144 = sub_252E347F4();
    if (!v145)
    {
LABEL_171:
      v125 = (v49)(v142, v48);
      goto LABEL_172;
    }

    if (v144 != 0x7250726577736E61 || v145 != 0xED0000746375646FLL)
    {
      v146 = sub_252E37DB4();

      if (v146)
      {
        goto LABEL_180;
      }

      goto LABEL_171;
    }

LABEL_180:
    *&v237 = sub_252E347E4();
    *(&v237 + 1) = v147;
    MEMORY[0x28223BE20](v237);
    *(&v189 - 2) = &v237;
    v148 = v208;
    v149 = sub_2529ED970(sub_25296A69C, (&v189 - 4), &unk_2864A5998);
    v208 = v148;

    v49 = v232;
    v125 = (v232)(v142, v48);
    if ((v149 & 1) == 0)
    {
      goto LABEL_183;
    }

LABEL_172:
    ++v140;
    v141 += v225;
    if (v226 != v140)
    {
      continue;
    }

    break;
  }

  if ((sub_252B0E134(v231) & 1) == 0)
  {
    goto LABEL_196;
  }

  v155 = sub_252B0E400(v231);

  if (v155)
  {
    v150 = "jecting the parse";
    v151 = 0xD00000000000006DLL;
    goto LABEL_184;
  }

LABEL_197:
  v138 = 0x8000000252E7B4F0;
  v139 = v212 | 0x8000000000000000;
  v137 = v200;
LABEL_198:
  sub_252CC3D90(v137, v138, 0xD000000000000068, v139);
  return 0;
}

uint64_t sub_252B082A8(uint64_t a1)
{
  v1 = sub_252E347F4();
  if (v2)
  {
    if (v1 == 0x656D614E726143 && v2 == 0xE700000000000000)
    {
      v3 = 1;
    }

    else
    {
      v3 = sub_252E37DB4();
    }

    v4 = sub_252E347F4();
    if (v5)
    {
      goto LABEL_9;
    }

LABEL_6:
    v21 = 0;
    goto LABEL_14;
  }

  v3 = 0;
  v4 = sub_252E347F4();
  if (!v5)
  {
    goto LABEL_6;
  }

LABEL_9:
  if (v4 == 0x656D614E726163 && v5 == 0xE700000000000000)
  {
    v21 = 1;
  }

  else
  {
    v21 = sub_252E37DB4();
  }

LABEL_14:
  v6 = sub_252E347F4();
  if (v7)
  {
    if (v6 == 0xD000000000000019 && v7 == 0x8000000252E7B9B0)
    {

LABEL_19:
      v22 = sub_252E347E4();
      v23 = v9;
      MEMORY[0x28223BE20](v22);
      v20[2] = &v22;
      v10 = sub_2529ED970(sub_25296A724, v20, &unk_2864A5918);

      goto LABEL_21;
    }

    v8 = sub_252E37DB4();

    if (v8)
    {
      goto LABEL_19;
    }
  }

  v10 = 0;
LABEL_21:
  if (qword_27F53F4E8 != -1)
  {
    swift_once();
  }

  v11 = sub_252E36AD4();
  __swift_project_value_buffer(v11, qword_27F544D60);
  v22 = 0;
  v23 = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000015, 0x8000000252E7BCC0);
  if (v3)
  {
    v12 = 1702195828;
  }

  else
  {
    v12 = 0x65736C6166;
  }

  if (v3)
  {
    v13 = 0xE400000000000000;
  }

  else
  {
    v13 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v12, v13);

  MEMORY[0x2530AD570](0xD000000000000014, 0x8000000252E7BCE0);
  v14 = v21;
  if (v21)
  {
    v15 = 1702195828;
  }

  else
  {
    v15 = 0x65736C6166;
  }

  if (v21)
  {
    v16 = 0xE400000000000000;
  }

  else
  {
    v16 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v15, v16);

  MEMORY[0x2530AD570](0xD000000000000014, 0x8000000252E7BD00);
  if (v10)
  {
    v17 = 1702195828;
  }

  else
  {
    v17 = 0x65736C6166;
  }

  if (v10)
  {
    v18 = 0xE400000000000000;
  }

  else
  {
    v18 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v17, v18);

  sub_252CC3D90(v22, v23, 0xD000000000000068, 0x8000000252E7B280);

  return (v3 | v14 | v10) & 1;
}

uint64_t sub_252B085DC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543320, &qword_252E4B598);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v11 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543328, &qword_252E4B5A0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  if (!sub_252E35CD4() && !sub_252E35CF4() && !sub_252E35CE4() && !sub_252E35D14())
  {
    sub_252E35CC4();
    v7 = sub_252E35CB4();
    v8 = (*(*(v7 - 8) + 48))(v5, 1, v7);
    sub_25293847C(v5, &qword_27F543328, &qword_252E4B5A0);
    if (v8 != 1)
    {
      return 0;
    }

    sub_252E35D24();
    v9 = sub_252E35DC4();
    v10 = (*(*(v9 - 8) + 48))(v2, 1, v9);
    sub_25293847C(v2, &qword_27F543320, &qword_252E4B598);
    if (v10 != 1)
    {
      return 0;
    }

    if (!sub_252E35D04())
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_252B087A4(uint64_t a1)
{
  v37 = *(a1 + 16);
  if (!v37)
  {
    return MEMORY[0x277D84F90];
  }

  v1 = 0;
  v36 = a1 + 32;
  v2 = MEMORY[0x277D84F90];
  v3 = &qword_27F5417F0;
  v4 = &qword_252E40A90;
  while (1)
  {
    v6 = *(v36 + v1);
    v7 = sub_252E35854();
    if (v6)
    {
      if (v6 == 1)
      {
        v8 = 0x69746E4572657375;
        v9 = 0xEC00000073656974;
        if (!*(v7 + 16))
        {
          goto LABEL_13;
        }
      }

      else
      {
        v9 = 0xE900000000000065;
        v8 = 0x636E657265666572;
        if (!*(v7 + 16))
        {
LABEL_13:

          goto LABEL_14;
        }
      }
    }

    else
    {
      v9 = 0xE600000000000000;
      v8 = 0x797469746E65;
      if (!*(v7 + 16))
      {
        goto LABEL_13;
      }
    }

    v10 = sub_252A44A10(v8, v9);
    v12 = v11;

    if (v12)
    {
      v13 = *(*(v7 + 56) + 8 * v10);

      goto LABEL_15;
    }

LABEL_14:
    v13 = MEMORY[0x277D84F90];
LABEL_15:

    v14 = v13 >> 62;
    if (v13 >> 62)
    {
      v15 = sub_252E378C4();
    }

    else
    {
      v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v16 = v2 >> 62;
    if (v2 >> 62)
    {
      v34 = sub_252E378C4();
      v18 = v34 + v15;
      if (__OFADD__(v34, v15))
      {
LABEL_42:
        __break(1u);
        return MEMORY[0x277D84F90];
      }
    }

    else
    {
      v17 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v18 = v17 + v15;
      if (__OFADD__(v17, v15))
      {
        goto LABEL_42;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (result)
    {
      if (!v16)
      {
        v19 = v2 & 0xFFFFFFFFFFFFFF8;
        if (v18 <= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_26;
        }

        goto LABEL_25;
      }

LABEL_24:
      sub_252E378C4();
      goto LABEL_25;
    }

    if (v16)
    {
      goto LABEL_24;
    }

LABEL_25:
    result = sub_252E37A54();
    v2 = result;
    v19 = result & 0xFFFFFFFFFFFFFF8;
LABEL_26:
    v40 = v2;
    v20 = *(v19 + 16);
    v21 = *(v19 + 24);
    if (v14)
    {
      break;
    }

    v22 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v22)
    {
      goto LABEL_3;
    }

LABEL_30:
    if (((v21 >> 1) - v20) < v15)
    {
      goto LABEL_46;
    }

    v38 = v1;
    v24 = v19 + 8 * v20 + 32;
    v35 = v19;
    if (v14)
    {
      if (v22 < 1)
      {
        goto LABEL_48;
      }

      sub_2529E6488(&qword_27F543340, v3, v4, MEMORY[0x277D83988]);
      for (i = 0; i != v22; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
        v26 = sub_2529FBE00(v39, i, v13);
        v27 = v4;
        v28 = v3;
        v30 = *v29;

        (v26)(v39, 0);
        *(v24 + 8 * i) = v30;
        v3 = v28;
        v4 = v27;
      }
    }

    else
    {
      sub_252E35944();
      swift_arrayInitWithCopy();
    }

    v1 = v38;
    v2 = v40;
    if (v15 >= 1)
    {
      v31 = *(v35 + 16);
      v32 = __OFADD__(v31, v15);
      v33 = v31 + v15;
      if (v32)
      {
        goto LABEL_47;
      }

      *(v35 + 16) = v33;
    }

LABEL_4:
    if (++v1 == v37)
    {
      return v2;
    }
  }

  v23 = v19;
  result = sub_252E378C4();
  v19 = v23;
  v22 = result;
  if (result)
  {
    goto LABEL_30;
  }

LABEL_3:

  v2 = v40;
  if (v15 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
  return result;
}

uint64_t sub_252B08B50(uint64_t a1)
{
  v1 = sub_252E343C4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_252E34244();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_252E342C4())
  {
    sub_252E34314();
    sub_252E34394();
    (*(v2 + 8))(v4, v1);
    sub_252E344D4();
    v10 = MEMORY[0x2530AAF90]();

    (*(v6 + 8))(v8, v5);
    return v10;
  }

  else
  {
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v9 = sub_252E36AD4();
    __swift_project_value_buffer(v9, qword_27F544D60);
    v13 = 0;
    v14 = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000018, 0x8000000252E7B3C0);
    sub_252E34354();
    sub_252E37AE4();
    sub_252CC4050(v13, v14, 0xD000000000000068, 0x8000000252E7B280, 0x726628736B736174, 0xEC000000293A6D6FLL, 68);

    return MEMORY[0x277D84F90];
  }
}

unint64_t sub_252B08F3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v61 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541D90, &qword_252E42500);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v48 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541D98, &unk_252E5B5B0);
  MEMORY[0x28223BE20](v12 - 8);
  v62 = v48 - v13;
  v14 = sub_252E34874();
  v56 = *(v14 - 8);
  v57 = v14;
  MEMORY[0x28223BE20](v14);
  v64 = v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_252E34B94();
  v55 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_252E34B74();
  v53 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v21 = v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_252E34804();
  v58 = *(v22 - 8);
  v59 = v22;
  v23 = MEMORY[0x28223BE20](v22);
  v54 = v48 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v26 = v48 - v25;
  v60 = a2;
  v63 = a3;
  result = sub_252E34584();
  if ((a5 & 1) == 0)
  {
    return result;
  }

  sub_252E34DF4();
  result = sub_252E349E4();
  if (!result)
  {
    goto LABEL_13;
  }

  v28 = result & 0xFFFFFFFFFFFFFF8;
  if (!(result >> 62))
  {
    v29 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v29)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

  v45 = v11;
  v46 = result;
  v29 = sub_252E378C4();
  result = v46;
  v11 = v45;
  if (!v29)
  {
LABEL_12:

LABEL_13:
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v47 = sub_252E36AD4();
    __swift_project_value_buffer(v47, qword_27F544D60);
    v66 = 0;
    v67 = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000027, 0x8000000252E7B250);
    v65 = a1;
    sub_252E345A4();
    sub_252E37AE4();
    sub_252CC4050(v66, v67, 0xD000000000000068, 0x8000000252E7B280, 0xD00000000000003BLL, 0x8000000252E7B380, 548);
  }

LABEL_5:
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
    goto LABEL_18;
  }

  v51 = v11;
  if ((result & 0xC000000000000001) != 0)
  {
LABEL_18:
    v52 = MEMORY[0x2530ADF00](v31);
    goto LABEL_10;
  }

  if ((v31 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v31 < *(v28 + 16))
  {
    v52 = *(result + 8 * v31 + 32);

LABEL_10:

    v50 = *MEMORY[0x277D5E6B0];
    v32 = v53;
    v49 = *(v53 + 104);
    v49(v21);

    v33 = sub_252E34B64();
    v48[0] = v34;
    v48[1] = v33;
    (*(v32 + 8))(v21, v19);
    v35 = *MEMORY[0x277D5E6E0];
    v36 = v55;
    v53 = *(v55 + 104);
    (v53)(v18, v35, v16);
    sub_252E34B84();
    (*(v36 + 8))(v18, v16);
    sub_252E347D4();
    sub_252E34634();
    (*(v56 + 16))(v64, v61, v57);
    (v49)(v21, v50, v19);
    v37 = v62;
    (v53)(v62, *MEMORY[0x277D5E6E8], v16);
    (*(v36 + 56))(v37, 0, 1, v16);
    v38 = *MEMORY[0x277D5E4C8];
    v39 = sub_252E34764();
    v40 = *(v39 - 8);
    v41 = v51;
    (*(v40 + 104))(v51, v38, v39);
    (*(v40 + 56))(v41, 0, 1, v39);
    v42 = v54;
    sub_252E347C4();
    sub_252E34634();

    v43 = v59;
    v44 = *(v58 + 8);
    v44(v42, v59);
    return (v44)(v26, v43);
  }

  __break(1u);
  return result;
}

unint64_t sub_252B09664(char *a1, uint64_t a2, char a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541D90, &qword_252E42500);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v55 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541D98, &unk_252E5B5B0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v55 - v10;
  v12 = sub_252E34B74();
  v62 = *(v12 - 8);
  v63 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_252E34804();
  v65 = *(v15 - 8);
  v66 = v15;
  v16 = MEMORY[0x28223BE20](v15);
  v64 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v68 = &v55 - v18;
  v19 = sub_252E34874();
  v69 = *(v19 - 8);
  v20 = MEMORY[0x28223BE20](v19);
  v67 = &v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v55 - v22;
  v24 = *a1;
  LOBYTE(v71) = *a1;
  AccessoryTypeSemantic.rawValue.getter();
  sub_252E34584();

  if ((a3 & 1) == 0)
  {
    return result;
  }

  sub_252E34DF4();
  result = sub_252E349E4();
  if (!result)
  {
    goto LABEL_26;
  }

  v26 = result & 0xFFFFFFFFFFFFFF8;
  if (!(result >> 62))
  {
    v27 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v27)
    {
      goto LABEL_5;
    }

    goto LABEL_25;
  }

  v53 = result;
  v27 = sub_252E378C4();
  result = v53;
  if (!v27)
  {
LABEL_25:

LABEL_26:
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v54 = sub_252E36AD4();
    __swift_project_value_buffer(v54, qword_27F544D60);
    v71 = 0;
    v72 = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000027, 0x8000000252E7B250);
    v70 = a2;
    sub_252E345A4();
    sub_252E37AE4();
    sub_252CC4050(v71, v72, 0xD000000000000068, 0x8000000252E7B280, 0xD000000000000044, 0x8000000252E7B2F0, 569);
  }

LABEL_5:
  v28 = __OFSUB__(v27, 1);
  v29 = v27 - 1;
  if (v28)
  {
    __break(1u);
    goto LABEL_31;
  }

  a2 = v69;
  v58 = v8;
  if ((result & 0xC000000000000001) != 0)
  {
LABEL_31:
    v61 = MEMORY[0x2530ADF00](v29);
LABEL_10:

    v30 = *(a2 + 104);
    v30(v23, *MEMORY[0x277D5E548], v19);
    LOBYTE(v71) = v24;
    v31 = AccessoryTypeSemantic.rawValue.getter();
    v57 = v11;
    v59 = v23;
    v60 = v19;
    if (v31 == 0x656C6B6E69727073 && v32 == 0xE900000000000072)
    {
      goto LABEL_12;
    }

    v33 = sub_252E37DB4();

    if (v33)
    {
      goto LABEL_18;
    }

    LOBYTE(v71) = v24;
    if (AccessoryTypeSemantic.rawValue.getter() == 1802398067 && v34 == 0xE400000000000000)
    {
      goto LABEL_12;
    }

    v35 = sub_252E37DB4();

    if (v35)
    {
      goto LABEL_18;
    }

    LOBYTE(v71) = v24;
    if (AccessoryTypeSemantic.rawValue.getter() == 0x7265776F6873 && v51 == 0xE600000000000000)
    {
LABEL_12:
    }

    else
    {
      v52 = sub_252E37DB4();

      if ((v52 & 1) == 0)
      {
        v55 = 0xD000000000000015;
        v56 = ":setUsoIdentifiers:)";
        goto LABEL_19;
      }
    }

LABEL_18:
    (*(v69 + 8))(v23, v19);
    v30(v23, *MEMORY[0x277D5E558], v19);
    v55 = 0xD00000000000001BLL;
    v56 = "homeAutomationService";
LABEL_19:
    LOBYTE(v71) = v24;
    AccessoryTypeSemantic.rawValue.getter();
    v36 = *MEMORY[0x277D5E6B0];
    v37 = v62;
    v38 = v63;
    v39 = *(v62 + 104);
    v39(v14, v36, v63);
    sub_252E34B64();
    (*(v37 + 8))(v14, v38);
    sub_252E347D4();
    sub_252E34634();
    (*(v69 + 16))(v67, v59, v60);
    v39(v14, v36, v38);
    v40 = *MEMORY[0x277D5E6E8];
    v41 = sub_252E34B94();
    v42 = *(v41 - 8);
    v43 = v57;
    (*(v42 + 104))(v57, v40, v41);
    (*(v42 + 56))(v43, 0, 1, v41);
    v44 = *MEMORY[0x277D5E4C8];
    v45 = sub_252E34764();
    v46 = *(v45 - 8);
    v47 = v58;
    (*(v46 + 104))(v58, v44, v45);
    (*(v46 + 56))(v47, 0, 1, v45);
    v48 = v64;
    sub_252E347C4();
    sub_252E34634();

    v49 = v66;
    v50 = *(v65 + 8);
    v50(v48, v66);
    v50(v68, v49);
    return (*(v69 + 8))(v59, v60);
  }

  if ((v29 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v29 < *(v26 + 16))
  {
    v61 = *(result + 8 * v29 + 32);

    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t sub_252B09EF8(void *a1, int a2)
{
  v65 = a2;
  v3 = sub_252E34874();
  v4 = *(v3 - 8);
  v63 = v3;
  v64 = v4;
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v62 - v8;
  v10 = sub_252E34E84();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252E345A4();
  swift_allocObject();
  v66 = sub_252E34594();
  v14 = [a1 hasAllQuantifier];
  if (v14)
  {
    v15 = v14;
    if ([v14 BOOLValue])
    {
      sub_252E352F4();
      swift_allocObject();
      sub_252E352E4();
      (*(v11 + 104))(v13, *MEMORY[0x277D5EA28], v10);
      sub_252E352D4();
      (*(v11 + 8))(v13, v10);

      sub_252E34E14();
    }

    else
    {
    }
  }

  v16 = [a1 homeEntityName];
  v17 = v63;
  if (v16)
  {
    v18 = v16;
    v19 = sub_252E36F34();
    v21 = v20;

    v22 = v64;
    v23 = *(v64 + 104);
    v23(v9, *MEMORY[0x277D5E548], v17);
    if ([a1 entityType] == 5)
    {
      (*(v22 + 8))(v9, v17);
      v23(v9, *MEMORY[0x277D5E538], v17);
    }

    sub_252B08F3C(v66, v19, v21, v9, v65 & 1);

    (*(v22 + 8))(v9, v17);
  }

  if ([a1 outerDeviceType])
  {
    [a1 outerDeviceType];
    if (qword_27F53F2A0 != -1)
    {
      swift_once();
    }

    v24 = off_27F541CD0;
    if (*(off_27F541CD0 + 2))
    {
      v25 = sub_252A488EC();
      if (v26)
      {
        v67 = *(v24[7] + v25);
        sub_252B09664(&v67, v66, v65 & 1);
      }
    }
  }

  v27 = [a1 outerDeviceName];
  if (v27)
  {
    v28 = v27;
    v29 = sub_252E36F34();
    v31 = v30;

    v32 = v64;
    (*(v64 + 104))(v7, *MEMORY[0x277D5E558], v17);
    sub_252B08F3C(v66, v29, v31, v7, v65 & 1);

    (*(v32 + 8))(v7, v17);
  }

  if ([a1 deviceType])
  {
    [a1 deviceType];
    if (qword_27F53F2A0 != -1)
    {
      swift_once();
    }

    v33 = off_27F541CD0;
    if (*(off_27F541CD0 + 2))
    {
      v34 = sub_252A488EC();
      if (v35)
      {
        v68 = *(v33[7] + v34);
        sub_252B09664(&v68, v66, v65 & 1);
      }
    }
  }

  v36 = [a1 groupName];
  if (v36)
  {
    v37 = v36;
    v38 = sub_252E36F34();
    v40 = v39;

    swift_allocObject();
    v41 = sub_252E34594();
    v42 = v64;
    (*(v64 + 104))(v7, *MEMORY[0x277D5E550], v17);
    sub_252B08F3C(v41, v38, v40, v7, v65 & 1);

    (*(v42 + 8))(v7, v17);

    sub_252E34574();
  }

  else
  {
    v41 = 0;
    v42 = v64;
  }

  v43 = [a1 roomName];
  if (v43)
  {
    v44 = v43;
    v45 = sub_252E36F34();
    v47 = v46;

    swift_allocObject();
    v48 = sub_252E34594();
    (*(v42 + 104))(v7, *MEMORY[0x277D5E528], v17);
    sub_252B08F3C(v48, v45, v47, v7, v65 & 1);

    (*(v42 + 8))(v7, v17);

    sub_252E34574();
    if (v41)
    {
    }

    v41 = v48;
  }

  v49 = [a1 zoneName];
  if (v49)
  {
    v50 = v49;
    v51 = sub_252E36F34();
    v53 = v52;

    swift_allocObject();
    v54 = sub_252E34594();
    (*(v42 + 104))(v7, *MEMORY[0x277D5E530], v17);
    sub_252B08F3C(v54, v51, v53, v7, v65 & 1);

    (*(v42 + 8))(v7, v17);

    sub_252E34574();
    if (v41)
    {
    }

    v41 = v54;
  }

  v55 = [a1 homeName];
  if (v55)
  {
    v56 = v55;
    v57 = sub_252E36F34();
    v59 = v58;

    swift_allocObject();
    v60 = sub_252E34594();
    (*(v42 + 104))(v7, *MEMORY[0x277D5E508], v17);
    sub_252B08F3C(v60, v57, v59, v7, v65 & 1);

    (*(v42 + 8))(v7, v17);

    sub_252E34574();
    if (v41)
    {
    }
  }

  return v66;
}

void *sub_252B0A7D4(uint64_t a1)
{
  v2 = sub_252E34804();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v48 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v51 = &v41 - v6;
  v7 = MEMORY[0x277D84F98];
  v52 = MEMORY[0x277D84F98];
  v8 = *(a1 + 16);
  if (!v8)
  {
    return v7;
  }

  v10 = *(v3 + 16);
  v9 = v3 + 16;
  v43 = *(v9 + 64);
  v11 = *(v9 + 56);
  v46 = (v43 + 32) & ~v43;
  v47 = v10;
  v12 = a1 + v46;
  v50 = (v9 + 16);
  v42 = xmmword_252E3C290;
  v44 = v2;
  v45 = v9;
  v49 = v11;
  while (1)
  {
    v47(v51, v12, v2);
    v16 = sub_252E34744();
    v17 = v16;
    v18 = HIDWORD(v16) & 1;
    v19 = v16;
    v21 = sub_252A45430(v16 | (v18 << 32));
    v22 = v7[2];
    v23 = (v20 & 1) == 0;
    v24 = v22 + v23;
    if (__OFADD__(v22, v23))
    {
      break;
    }

    v25 = v20;
    if (v7[3] < v24)
    {
      sub_252DFFC2C(v24, 1);
      v7 = v52;
      v26 = sub_252A45430(v19 | (v18 << 32));
      if ((v25 & 1) != (v27 & 1))
      {
        goto LABEL_19;
      }

      v21 = v26;
    }

    if (v25)
    {
      v28 = v7[7];
      v29 = *v50;
      (*v50)(v48, v51, v2);
      v30 = *(v28 + 8 * v21);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v28 + 8 * v21) = v30;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v30 = sub_2529F85CC(0, v30[2] + 1, 1, v30);
        *(v28 + 8 * v21) = v30;
      }

      v33 = v30[2];
      v32 = v30[3];
      if (v33 >= v32 >> 1)
      {
        v30 = sub_2529F85CC((v32 > 1), v33 + 1, 1, v30);
        *(v28 + 8 * v21) = v30;
      }

      v13 = v46;
      v30[2] = v33 + 1;
      v14 = v49;
      v15 = v30 + v13 + v33 * v49;
      v2 = v44;
      v29(v15, v48, v44);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540250, &qword_252E3C080);
      v34 = v46;
      v35 = swift_allocObject();
      *(v35 + 16) = v42;
      (*v50)((v35 + v34), v51, v2);
      v7[(v21 >> 6) + 8] |= 1 << v21;
      v36 = v7[6] + 8 * v21;
      *v36 = v17;
      *(v36 + 4) = v18;
      *(v7[7] + 8 * v21) = v35;
      v37 = v7[2];
      v38 = __OFADD__(v37, 1);
      v39 = v37 + 1;
      if (v38)
      {
        goto LABEL_18;
      }

      v7[2] = v39;
      v14 = v49;
    }

    v12 += v14;
    if (!--v8)
    {
      return v7;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543360, &unk_252E5B590);
  result = sub_252E37E24();
  __break(1u);
  return result;
}

uint64_t sub_252B0AB50(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541F20, &qword_252E3C180);
  MEMORY[0x28223BE20](v1 - 8);
  v179 = &v164 - v2;
  v180 = sub_252E32E84();
  v3 = *(v180 - 8);
  v4 = MEMORY[0x28223BE20](v180);
  v169 = &v164 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v171 = &v164 - v6;
  v7 = sub_252E34B94();
  v236 = *(v7 - 8);
  v237 = v7;
  MEMORY[0x28223BE20](v7);
  v210 = &v164 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543358, &qword_252E4B5B8);
  v10 = MEMORY[0x28223BE20](v9);
  v174 = &v164 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v205 = &v164 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v213 = &v164 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v164 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541D98, &unk_252E5B5B0);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v190 = &v164 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v176 = &v164 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v175 = &v164 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v197 = &v164 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v164 - v28;
  v30 = MEMORY[0x28223BE20](v27);
  v198 = &v164 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v212 = &v164 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v215 = &v164 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v216 = &v164 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v40 = &v164 - v39;
  v41 = MEMORY[0x28223BE20](v38);
  v43 = &v164 - v42;
  MEMORY[0x28223BE20](v41);
  v45 = &v164 - v44;
  v239 = sub_252E34804();
  v46 = *(v239 - 8);
  v47 = MEMORY[0x28223BE20](v239);
  v181 = &v164 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = MEMORY[0x28223BE20](v47);
  v166 = &v164 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  v208 = &v164 - v52;
  v53 = MEMORY[0x28223BE20](v51);
  v178 = &v164 - v54;
  v55 = MEMORY[0x28223BE20](v53);
  v219 = &v164 - v56;
  v57 = MEMORY[0x28223BE20](v55);
  v182 = &v164 - v58;
  v59 = MEMORY[0x28223BE20](v57);
  v238 = &v164 - v60;
  MEMORY[0x28223BE20](v59);
  v185 = &v164 - v61;
  v184 = MEMORY[0x277D84F90];
  v244 = MEMORY[0x277D84F90];

  v63 = sub_252B0A7D4(v62);

  v65 = 0;
  v67 = v63 + 8;
  v66 = v63[8];
  v199 = v63;
  v68 = 1 << *(v63 + 32);
  v69 = -1;
  if (v68 < 64)
  {
    v69 = ~(-1 << v68);
  }

  v70 = v69 & v66;
  v71 = (v68 + 63) >> 6;
  v233 = v46 + 16;
  v221 = *MEMORY[0x277D5E6E0];
  v232 = (v236 + 104);
  v231 = (v236 + 56);
  v223 = (v236 + 48);
  v209 = (v236 + 32);
  v218 = (v236 + 8);
  v235 = (v46 + 8);
  v222 = v46;
  v189 = (v46 + 32);
  v211 = *MEMORY[0x277D5E6E8];
  v204 = *MEMORY[0x277D5E700];
  v177 = (v3 + 48);
  v194 = "userDialogAct(from:)";
  v193 = "Dropped identifier group ";
  v192 = "me string builder from ";
  v170 = (v3 + 32);
  v173 = *MEMORY[0x277D5E6F0];
  v168 = (v3 + 16);
  v167 = (v3 + 8);
  v234 = v9;
  v206 = v29;
  v217 = v40;
  v207 = v43;
  v224 = v45;
  v195 = v71;
  v187 = v17;
  v196 = v63 + 8;
  if (!v70)
  {
    goto LABEL_4;
  }

LABEL_8:
  while (2)
  {
    v202 = (v70 - 1) & v70;
    v203 = v65;
    v73 = (v65 << 9) | (8 * __clz(__rbit64(v70)));
    v74 = v199[7];
    v75 = v199[6] + v73;
    LODWORD(v201) = *v75;
    LODWORD(v200) = *(v75 + 4);
    v76 = *(v74 + v73);
    v236 = *(v76 + 16);
    if (!v236)
    {

      goto LABEL_45;
    }

    v188 = (*(v222 + 80) + 32) & ~*(v222 + 80);
    v230 = v76 + v188;

    v77 = 0;
    v225 = v76;
    while (1)
    {
      if (v77 >= *(v76 + 16))
      {
        __break(1u);
        goto LABEL_78;
      }

      v226 = *(v222 + 72);
      v229 = *(v222 + 16);
      v229(v238, v230 + v226 * v77, v239);
      sub_252E34794();
      v79 = v237;
      v228 = *v232;
      v228(v43, v221, v237);
      v227 = *v231;
      v227(v43, 0, 1, v79);
      v80 = *(v234 + 48);
      sub_252938414(v45, v17, &qword_27F541D98, &unk_252E5B5B0);
      sub_252938414(v43, &v17[v80], &qword_27F541D98, &unk_252E5B5B0);
      v81 = *v223;
      if ((*v223)(v17, 1, v79) == 1)
      {
        break;
      }

      v82 = v217;
      sub_252938414(v17, v217, &qword_27F541D98, &unk_252E5B5B0);
      if (v81(&v17[v80], 1, v79) == 1)
      {
        sub_25293847C(v43, &qword_27F541D98, &unk_252E5B5B0);
        sub_25293847C(v224, &qword_27F541D98, &unk_252E5B5B0);
        (*v218)(v82, v79);
        v76 = v225;
        goto LABEL_11;
      }

      v220 = v81;
      v83 = v210;
      (*v209)(v210, &v17[v80], v79);
      sub_252B0F0EC(&qword_27F543368, MEMORY[0x277D5E708], MEMORY[0x277D5E710]);
      v84 = sub_252E36EF4();
      v85 = *v218;
      v86 = v83;
      v43 = v207;
      (*v218)(v86, v79);
      sub_25293847C(v43, &qword_27F541D98, &unk_252E5B5B0);
      sub_25293847C(v224, &qword_27F541D98, &unk_252E5B5B0);
      v85(v217, v79);
      sub_25293847C(v17, &qword_27F541D98, &unk_252E5B5B0);
      v76 = v225;
      if (v84)
      {
        goto LABEL_21;
      }

LABEL_12:
      ++v77;
      result = (*v235)(v238, v239);
      v45 = v224;
      if (v236 == v77)
      {
        goto LABEL_45;
      }
    }

    sub_25293847C(v43, &qword_27F541D98, &unk_252E5B5B0);
    sub_25293847C(v45, &qword_27F541D98, &unk_252E5B5B0);
    v78 = v81(&v17[v80], 1, v79);
    v76 = v225;
    if (v78 != 1)
    {
LABEL_11:
      sub_25293847C(v17, &qword_27F543358, &qword_252E4B5B8);
      goto LABEL_12;
    }

    v220 = v81;
    sub_25293847C(v17, &qword_27F541D98, &unk_252E5B5B0);
LABEL_21:
    v87 = v185;
    v88 = v239;
    v183 = *v189;
    v183(v185, v238, v239);
    v172 = sub_252E347E4();
    v186 = v89;
    v214 = *v235;
    result = v214(v87, v88);
    v90 = 0;
    v91 = v230;
    v92 = v237;
    while (2)
    {
      v95 = v90 >= *(v76 + 16);
      v96 = v216;
      if (v95)
      {
        goto LABEL_79;
      }

      v229(v219, v91, v239);
      sub_252E34794();
      v97 = v215;
      v228(v215, v211, v92);
      v227(v97, 0, 1, v92);
      v98 = *(v234 + 48);
      v99 = v213;
      sub_252938414(v96, v213, &qword_27F541D98, &unk_252E5B5B0);
      sub_252938414(v97, v99 + v98, &qword_27F541D98, &unk_252E5B5B0);
      v100 = v220;
      if (v220(v99, 1, v92) != 1)
      {
        v101 = v212;
        sub_252938414(v99, v212, &qword_27F541D98, &unk_252E5B5B0);
        if (v100((v99 + v98), 1, v237) == 1)
        {
          sub_25293847C(v215, &qword_27F541D98, &unk_252E5B5B0);
          sub_25293847C(v216, &qword_27F541D98, &unk_252E5B5B0);
          v92 = v237;
          (*v218)(v101, v237);
          v94 = v99;
          v76 = v225;
LABEL_23:
          sub_25293847C(v94, &qword_27F543358, &qword_252E4B5B8);
        }

        else
        {
          v102 = v210;
          v103 = v237;
          (*v209)(v210, (v99 + v98), v237);
          sub_252B0F0EC(&qword_27F543368, MEMORY[0x277D5E708], MEMORY[0x277D5E710]);
          v104 = sub_252E36EF4();
          v105 = *v218;
          (*v218)(v102, v103);
          sub_25293847C(v215, &qword_27F541D98, &unk_252E5B5B0);
          sub_25293847C(v216, &qword_27F541D98, &unk_252E5B5B0);
          v105(v212, v103);
          sub_25293847C(v99, &qword_27F541D98, &unk_252E5B5B0);
          v76 = v225;
          v92 = v103;
          if (v104)
          {
            goto LABEL_32;
          }
        }

        ++v90;
        result = v214(v219, v239);
        v91 += v226;
        if (v236 == v90)
        {
          goto LABEL_43;
        }

        continue;
      }

      break;
    }

    sub_25293847C(v97, &qword_27F541D98, &unk_252E5B5B0);
    sub_25293847C(v96, &qword_27F541D98, &unk_252E5B5B0);
    v92 = v237;
    v93 = v100((v99 + v98), 1, v237) == 1;
    v94 = v99;
    v76 = v225;
    if (!v93)
    {
      goto LABEL_23;
    }

    sub_25293847C(v99, &qword_27F541D98, &unk_252E5B5B0);
LABEL_32:
    v106 = v182;
    v107 = v239;
    v183(v182, v219, v239);
    v164 = sub_252E347E4();
    v165 = v108;
    result = v214(v106, v107);
    v109 = 0;
    v110 = v198;
    while (2)
    {
      if (v109 >= *(v76 + 16))
      {
        goto LABEL_80;
      }

      v229(v208, v230, v239);
      sub_252E34794();
      v113 = v206;
      v228(v206, v204, v92);
      v227(v113, 0, 1, v92);
      v114 = *(v234 + 48);
      v115 = v205;
      sub_252938414(v110, v205, &qword_27F541D98, &unk_252E5B5B0);
      sub_252938414(v113, v115 + v114, &qword_27F541D98, &unk_252E5B5B0);
      v116 = v92;
      v117 = v110;
      v118 = v220;
      if (v220(v115, 1, v92) == 1)
      {
        sub_25293847C(v113, &qword_27F541D98, &unk_252E5B5B0);
        sub_25293847C(v117, &qword_27F541D98, &unk_252E5B5B0);
        v93 = v118((v115 + v114), 1, v92) == 1;
        v111 = v115;
        v112 = v214;
        v110 = v117;
        if (!v93)
        {
          goto LABEL_34;
        }

        sub_25293847C(v115, &qword_27F541D98, &unk_252E5B5B0);
        v122 = v190;
LABEL_51:
        v128 = v178;
        v129 = v239;
        v183(v178, v208, v239);
        sub_252E347E4();
        v112(v128, v129);
        v130 = v179;
        sub_252E32E14();

        v131 = v180;
        if ((*v177)(v130, 1, v180) == 1)
        {

          sub_25293847C(v130, &unk_27F541F20, &qword_252E3C180);
          goto LABEL_44;
        }

        v200 = *v170;
        result = v200(v171, v130, v131);
        v132 = 0;
        v133 = v76 + v188;
        v134 = v176;
        while (1)
        {
          v138 = *(v225 + 16);
          v230 = v132;
          if (v132 >= v138)
          {
            goto LABEL_81;
          }

          v201 = v133;
          (v229)(v181);
          v139 = v175;
          sub_252E34794();
          v228(v134, v173, v92);
          v227(v134, 0, 1, v92);
          v140 = *(v234 + 48);
          v141 = v174;
          v142 = v92;
          sub_252938414(v139, v174, &qword_27F541D98, &unk_252E5B5B0);
          sub_252938414(v134, v141 + v140, &qword_27F541D98, &unk_252E5B5B0);
          v143 = v220;
          if (v220(v141, 1, v142) == 1)
          {
            sub_25293847C(v134, &qword_27F541D98, &unk_252E5B5B0);
            sub_25293847C(v139, &qword_27F541D98, &unk_252E5B5B0);
            v93 = v143((v141 + v140), 1, v142) == 1;
            v135 = v141;
            v136 = v214;
            if (v93)
            {
              sub_25293847C(v141, &qword_27F541D98, &unk_252E5B5B0);
              v137 = v187;
              v147 = v183;
LABEL_65:

              v150 = v166;
              v151 = v239;
              v147(v166, v181, v239);
              v148 = sub_252E347E4();
              v149 = v152;
              v136(v150, v151);
LABEL_66:
              (*v168)(v169, v171, v180);
              if (qword_27F53F350 != -1)
              {
                swift_once();
              }

              v153 = qword_27F575818;
              if (*(qword_27F575818 + 16))
              {
                v154 = sub_252A44A10(v164, v165);
                v156 = v155;

                if (v156)
                {
                  v157 = *(*(v153 + 56) + 8 * v154);
LABEL_73:
                  type metadata accessor for Entity(0);
                  v158 = swift_allocObject();
                  v159 = v180;
                  v160 = v200((v158 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier), v169, v180);
                  v161 = (v158 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
                  v162 = v186;
                  *v161 = v172;
                  v161[1] = v162;
                  *(v158 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType) = v157;
                  v163 = (v158 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier);
                  *v163 = v148;
                  v163[1] = v149;
                  MEMORY[0x2530AD700](v160);
                  v17 = v137;
                  if (*((v244 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v244 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                  {
                    sub_252E372A4();
                  }

                  sub_252E372D4();
                  result = (*v167)(v171, v159);
                  v184 = v244;
                  v43 = v207;
                  v45 = v224;
                  goto LABEL_48;
                }
              }

              else
              {
              }

              v157 = 0;
              goto LABEL_73;
            }
          }

          else
          {
            sub_252938414(v141, v122, &qword_27F541D98, &unk_252E5B5B0);
            if (v143((v141 + v140), 1, v142) != 1)
            {
              v144 = v210;
              (*v209)(v210, (v141 + v140), v142);
              sub_252B0F0EC(&qword_27F543368, MEMORY[0x277D5E708], MEMORY[0x277D5E710]);
              v145 = sub_252E36EF4();
              v146 = *v218;
              (*v218)(v144, v142);
              sub_25293847C(v176, &qword_27F541D98, &unk_252E5B5B0);
              sub_25293847C(v175, &qword_27F541D98, &unk_252E5B5B0);
              v146(v122, v142);
              sub_25293847C(v141, &qword_27F541D98, &unk_252E5B5B0);
              v137 = v187;
              v147 = v183;
              v136 = v214;
              v92 = v142;
              if (v145)
              {
                goto LABEL_65;
              }

              goto LABEL_56;
            }

            sub_25293847C(v176, &qword_27F541D98, &unk_252E5B5B0);
            sub_25293847C(v175, &qword_27F541D98, &unk_252E5B5B0);
            (*v218)(v122, v142);
            v135 = v141;
            v136 = v214;
          }

          v220 = v143;
          sub_25293847C(v135, &qword_27F543358, &qword_252E4B5B8);
          v137 = v187;
          v92 = v237;
LABEL_56:
          v132 = v230 + 1;
          result = v136(v181, v239);
          v133 = v201 + v226;
          v134 = v176;
          if (v236 == v132)
          {

            v148 = 0;
            v149 = 0;
            goto LABEL_66;
          }
        }
      }

      v119 = v197;
      sub_252938414(v115, v197, &qword_27F541D98, &unk_252E5B5B0);
      if (v118((v115 + v114), 1, v116) == 1)
      {
        sub_25293847C(v206, &qword_27F541D98, &unk_252E5B5B0);
        v110 = v117;
        sub_25293847C(v117, &qword_27F541D98, &unk_252E5B5B0);
        (*v218)(v119, v116);
        v111 = v115;
        v76 = v225;
        v92 = v116;
        v112 = v214;
LABEL_34:
        sub_25293847C(v111, &qword_27F543358, &qword_252E4B5B8);
      }

      else
      {
        v120 = v210;
        (*v209)(v210, (v115 + v114), v116);
        sub_252B0F0EC(&qword_27F543368, MEMORY[0x277D5E708], MEMORY[0x277D5E710]);
        v191 = sub_252E36EF4();
        v121 = *v218;
        (*v218)(v120, v116);
        sub_25293847C(v206, &qword_27F541D98, &unk_252E5B5B0);
        sub_25293847C(v198, &qword_27F541D98, &unk_252E5B5B0);
        v121(v119, v116);
        v110 = v198;
        sub_25293847C(v115, &qword_27F541D98, &unk_252E5B5B0);
        v122 = v190;
        v76 = v225;
        v92 = v116;
        v112 = v214;
        if (v191)
        {
          goto LABEL_51;
        }
      }

      ++v109;
      result = v112(v208, v239);
      v230 += v226;
      if (v236 != v109)
      {
        continue;
      }

      break;
    }

LABEL_43:

LABEL_44:
    v45 = v224;
    v17 = v187;
LABEL_45:
    if (qword_27F53F4B0 != -1)
    {
      swift_once();
    }

    v123 = sub_252E36AD4();
    __swift_project_value_buffer(v123, qword_27F544CB8);
    v242 = 0;
    v243 = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000019, v194 | 0x8000000000000000);
    v240 = v201;
    v241 = v200;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543360, &unk_252E5B590);
    v124 = sub_252E36F94();
    MEMORY[0x2530AD570](v124);

    MEMORY[0x2530AD570](8250, 0xE200000000000000);
    v125 = MEMORY[0x2530AD730](v76, v239);
    v127 = v126;

    MEMORY[0x2530AD570](v125, v127);

    MEMORY[0x2530AD570](0xD000000000000015, v193 | 0x8000000000000000);
    sub_252CC3D90(v242, v243, 0xD000000000000068, v192 | 0x8000000000000000);

    v43 = v207;
LABEL_48:
    v67 = v196;
    v65 = v203;
    v71 = v195;
    v70 = v202;
    if (v202)
    {
      continue;
    }

    break;
  }

LABEL_4:
  while (2)
  {
    v72 = v65 + 1;
    if (__OFADD__(v65, 1))
    {
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
      return result;
    }

    if (v72 < v71)
    {
      v70 = v67[v72];
      ++v65;
      if (!v70)
      {
        continue;
      }

      v65 = v72;
      goto LABEL_8;
    }

    break;
  }

  return v184;
}

unint64_t sub_252B0C80C(unint64_t a1)
{
  v1 = a1;
  v15 = MEMORY[0x277D84F90];
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_39:
    v3 = sub_252E378C4();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v5 = 0;
    v6 = MEMORY[0x277D84F90];
    do
    {
      v7 = v5;
      while (1)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          MEMORY[0x2530ADF00](v7, v1);
          v5 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
            goto LABEL_37;
          }
        }

        else
        {
          if (v7 >= *(v2 + 16))
          {
            goto LABEL_38;
          }

          v5 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
LABEL_37:
            __break(1u);
LABEL_38:
            __break(1u);
            goto LABEL_39;
          }
        }

        sub_252E34D94();
        sub_252E34E24();

        if (v14)
        {
          break;
        }

        ++v7;
        if (v5 == v3)
        {
          goto LABEL_20;
        }
      }

      MEMORY[0x2530AD700](v8);
      if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_252E372A4();
      }

      sub_252E372D4();
      v6 = v15;
    }

    while (v5 != v3);
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
  }

LABEL_20:
  v14 = v4;
  v15 = v6;
  if (v6 >> 62)
  {
    v1 = sub_252E378C4();
  }

  else
  {
    v1 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  while (v1 != v9)
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      MEMORY[0x2530ADF00](v9, v6);
      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_35;
      }
    }

    else
    {
      if (v9 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_36;
      }

      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }
    }

    v2 = sub_252E34D54();

    ++v9;
    if (v2)
    {
      MEMORY[0x2530AD700](v12);
      if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_252E372A4();
      }

      sub_252E372D4();
      v10 = v4;
      v9 = v11;
    }
  }

  sub_25297BB64(v10);
  return v6;
}

uint64_t sub_252B0CAB0()
{
  v43 = sub_252E34804();
  v39 = *(v43 - 8);
  v0 = MEMORY[0x28223BE20](v43);
  v41 = &v33 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v33 - v3;
  v5 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v2);
  sub_252929E74((v5 + 288), &v44);

  v6 = v46;
  v7 = v47;
  __swift_project_boxed_opaque_existential_1(&v44, v46);
  v8 = (*(v7 + 88))(v6, v7);
  __swift_destroy_boxed_opaque_existential_1(&v44);
  if (v8)
  {
    v9 = sub_252E34A44();
    if (v9)
    {
      if (*(v9 + 16))
      {
        if (qword_27F53F4F8 != -1)
        {
          swift_once();
        }

        v10 = sub_252E36AD4();
        __swift_project_value_buffer(v10, qword_27F544D90);
        sub_252CC3D90(0xD000000000000048, 0x8000000252E7BDA0, 0xD000000000000068, 0x8000000252E7B280);
        sub_252E34B04();
        v11 = sub_252E34AE4();

        v12 = sub_252A491E4(v11, MEMORY[0x277D84F90], 0, 0);

        v13 = v12;
        goto LABEL_10;
      }
    }
  }

  v14 = MEMORY[0x277D84F90];
  v13 = sub_252E34A64();
  if (!v13)
  {
    v13 = v14;
  }

LABEL_10:
  v38 = *(v13 + 16);
  if (v38)
  {
    v15 = 0;
    v35 = 0x8000000252E7BD20;
    v36 = v39 + 16;
    v33 = (v39 + 8);
    v34 = 0x8000000252E7BD40;
    v40 = (v39 + 32);
    v16 = MEMORY[0x277D84F90];
    v37 = v13;
    do
    {
      if (v15 >= *(v13 + 16))
      {
        __break(1u);
        goto LABEL_47;
      }

      v42 = (*(v39 + 80) + 32) & ~*(v39 + 80);
      v19 = *(v39 + 72);
      (*(v39 + 16))(v4, v13 + v42 + v19 * v15, v43);
      v20 = 0;
      ++v15;
      while (1)
      {
        v21 = &unk_2864A58B8 + v20++;
        v22 = 0xE600000000000000;
        v23 = 0x656D756C6F76;
        switch(v21[32])
        {
          case 1:
            v23 = 0xD000000000000011;
            v22 = v34;
            break;
          case 2:
            v23 = 0x6D6E6F7269766E65;
            v22 = 0xEB00000000746E65;
            break;
          case 3:
            v22 = 0xE800000000000000;
            v23 = 0x64656C6666756873;
            break;
          case 4:
            v22 = 0xE900000000000073;
            v23 = 0x656C746974627573;
            break;
          case 5:
            v22 = 0xE200000000000000;
            v23 = 25443;
            break;
          case 6:
            v23 = 0xD00000000000001BLL;
            v22 = v35;
            break;
          case 7:
            v22 = 0xE500000000000000;
            v23 = 0x6F69647561;
            break;
          case 8:
            v22 = 0xE400000000000000;
            v23 = 1702131053;
            break;
          case 9:
            v23 = 0x6574756D6E75;
            break;
          case 10:
            v23 = 0x707954616964656DLL;
            v22 = 0xE900000000000065;
            break;
          case 11:
            v22 = 0xE800000000000000;
            v23 = 0x6465746165706572;
            break;
          case 12:
            v23 = 0x6D6D69446F747561;
            v22 = 0xEB00000000676E69;
            break;
          case 13:
            v22 = 0xE700000000000000;
            v23 = 0x79616C50726961;
            break;
          default:
            break;
        }

        if (v23 == sub_252E347E4() && v22 == v24)
        {
          break;
        }

        v25 = sub_252E37DB4();

        if (v25)
        {
          goto LABEL_38;
        }

        if (v20 == 14)
        {
          (*v33)(v4, v43);
          goto LABEL_15;
        }
      }

LABEL_38:
      v26 = *v40;
      (*v40)(v41, v4, v43);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v44 = v16;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2529AA640(0, *(v16 + 16) + 1, 1);
        v16 = v44;
      }

      v18 = *(v16 + 16);
      v17 = *(v16 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_2529AA640((v17 > 1), v18 + 1, 1);
        v16 = v44;
      }

      *(v16 + 16) = v18 + 1;
      v26((v16 + v42 + v18 * v19), v41, v43);
LABEL_15:
      v13 = v37;
    }

    while (v15 != v38);

    if (*(v16 + 16))
    {
      if (qword_27F53F4F8 == -1)
      {
LABEL_42:
        v28 = sub_252E36AD4();
        __swift_project_value_buffer(v28, qword_27F544D90);
        v44 = 0;
        v45 = 0xE000000000000000;
        sub_252E379F4();
        MEMORY[0x2530AD570](0xD000000000000031, 0x8000000252E7BD60);
        v29 = MEMORY[0x2530AD730](v16, v43);
        v31 = v30;

        MEMORY[0x2530AD570](v29, v31);

        sub_252CC3D90(v44, v45, 0xD000000000000068, 0x8000000252E7B280);

        return 1;
      }

LABEL_47:
      swift_once();
      goto LABEL_42;
    }
  }

  else
  {
  }

  return 0;
}

BOOL sub_252B0D160(unint64_t a1)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_15:
    v3 = sub_252E378C4();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  do
  {
    v5 = v4;
    if (v3 == v4)
    {
      break;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      MEMORY[0x2530ADF00](v4, a1);
      if (__OFADD__(v5, 1))
      {
LABEL_12:
        __break(1u);
        return v3 != v5;
      }
    }

    else
    {
      if (v4 >= *(v2 + 16))
      {
        __break(1u);
        goto LABEL_15;
      }

      if (__OFADD__(v5, 1))
      {
        goto LABEL_12;
      }
    }

    v6 = sub_252B0CAB0();

    v4 = v5 + 1;
  }

  while ((v6 & 1) == 0);
  return v3 != v5;
}

uint64_t sub_252B0D240(unint64_t a1, unint64_t a2)
{
  if (qword_27F53F4F8 != -1)
  {
LABEL_49:
    swift_once();
  }

  v4 = sub_252E36AD4();
  __swift_project_value_buffer(v4, qword_27F544D90);
  sub_252CC3D90(0xD000000000000064, 0x8000000252E7BBC0, 0xD000000000000068, 0x8000000252E7B280);
  if (a1 >> 62)
  {
    v5 = sub_252E378C4();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  while (v5 != v6)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      MEMORY[0x2530ADF00](v6, a1);
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_44;
      }
    }

    else
    {
      if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_45;
      }

      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
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
        goto LABEL_49;
      }
    }

    v9 = sub_252E34A44();

    ++v6;
    if (v9)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_2529F8AEC(0, v7[2] + 1, 1, v7);
      }

      v11 = v7[2];
      v10 = v7[3];
      if (v11 >= v10 >> 1)
      {
        v7 = sub_2529F8AEC((v10 > 1), v11 + 1, 1, v7);
      }

      v7[2] = v11 + 1;
      v7[v11 + 4] = v9;
      v6 = v8;
    }
  }

  v12 = MEMORY[0x277D84F90];
  v62 = MEMORY[0x277D84F90];
  v13 = v7[2];
  if (v13)
  {
    v14 = 0;
    a1 = MEMORY[0x277D84F90];
    while (v14 < v7[2])
    {
      v15 = v14 + 1;

      sub_252E34B04();
      v16 = sub_252E34AE4();
      v17 = sub_252A491E4(v16, a1, 0, 0);

      sub_25297BA5C(v17);
      v14 = v15;
      if (v13 == v15)
      {
        v12 = v62;
        goto LABEL_23;
      }
    }

    goto LABEL_46;
  }

LABEL_23:

  if (!(a2 >> 62))
  {
    a1 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v60 = v12;
    if (a1)
    {
      goto LABEL_25;
    }

LABEL_52:
    v19 = MEMORY[0x277D84F90];
    goto LABEL_53;
  }

  a1 = sub_252E378C4();
  v60 = v12;
  if (!a1)
  {
    goto LABEL_52;
  }

LABEL_25:
  v18 = 0;
  v19 = MEMORY[0x277D84F90];
  do
  {
    v61 = v19;
    v20 = v18;
    while (1)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        MEMORY[0x2530ADF00](v20, a2);
        v18 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          goto LABEL_47;
        }
      }

      else
      {
        if (v20 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_48;
        }

        v18 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          goto LABEL_47;
        }
      }

      sub_252E34644();
      v21 = sub_252E359F4();

      if (*(v21 + 16))
      {
        v22 = sub_252A44A10(0x73656D616ELL, 0xE500000000000000);
        if (v23)
        {
          break;
        }
      }

      ++v20;
      if (v18 == a1)
      {
        v19 = v61;
        goto LABEL_53;
      }
    }

    v24 = *(*(v21 + 56) + 8 * v22);

    v25 = v61;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v25 = sub_2529F8B10(0, v61[2] + 1, 1, v61);
    }

    v28 = v25[2];
    v27 = v25[3];
    v29 = v25;
    if (v28 >= v27 >> 1)
    {
      v29 = sub_2529F8B10((v27 > 1), v28 + 1, 1, v25);
    }

    v29[2] = v28 + 1;
    v19 = v29;
    v29[v28 + 4] = v24;
  }

  while (v18 != a1);
LABEL_53:
  v30 = sub_252B051B4(v19);

  if (v30 >> 62)
  {
    goto LABEL_69;
  }

  for (i = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
  {
    v32 = 0;
    v33 = MEMORY[0x277D84F90];
    while ((v30 & 0xC000000000000001) != 0)
    {
      MEMORY[0x2530ADF00](v32, v30);
      v34 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        goto LABEL_67;
      }

LABEL_59:
      v35 = sub_252E35914();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v33 = sub_2529F8AEC(0, v33[2] + 1, 1, v33);
      }

      v37 = v33[2];
      v36 = v33[3];
      if (v37 >= v36 >> 1)
      {
        v33 = sub_2529F8AEC((v36 > 1), v37 + 1, 1, v33);
      }

      v33[2] = v37 + 1;
      v33[v37 + 4] = v35;
      ++v32;
      if (v34 == i)
      {
        goto LABEL_71;
      }
    }

    if (v32 >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_68;
    }

    v34 = v32 + 1;
    if (!__OFADD__(v32, 1))
    {
      goto LABEL_59;
    }

LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    ;
  }

  v33 = MEMORY[0x277D84F90];
LABEL_71:

  v39 = v33[2];
  if (!v39)
  {
    v42 = MEMORY[0x277D84F90];
LABEL_81:

    v47 = v42[2];
    if (!v47)
    {
      v49 = MEMORY[0x277D84F90];
LABEL_100:

      sub_25297BA5C(v49);
      return v60;
    }

    v48 = 0;
    v49 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v48 >= v42[2])
      {
        goto LABEL_102;
      }

      v50 = v42[v48 + 4];
      v51 = *(v50 + 16);
      v52 = v49[2];
      v53 = v52 + v51;
      if (__OFADD__(v52, v51))
      {
        goto LABEL_103;
      }

      v54 = swift_isUniquelyReferenced_nonNull_native();
      if (v54 && v53 <= v49[3] >> 1)
      {
        if (!*(v50 + 16))
        {
          goto LABEL_83;
        }
      }

      else
      {
        if (v52 <= v53)
        {
          v55 = v52 + v51;
        }

        else
        {
          v55 = v52;
        }

        v49 = sub_2529F85CC(v54, v55, 1, v49);
        if (!*(v50 + 16))
        {
LABEL_83:

          if (v51)
          {
            goto LABEL_104;
          }

          goto LABEL_84;
        }
      }

      v56 = (v49[3] >> 1) - v49[2];
      result = sub_252E34804();
      if (v56 < v51)
      {
        goto LABEL_105;
      }

      swift_arrayInitWithCopy();

      if (v51)
      {
        v57 = v49[2];
        v58 = __OFADD__(v57, v51);
        v59 = v57 + v51;
        if (v58)
        {
          goto LABEL_106;
        }

        v49[2] = v59;
      }

LABEL_84:
      if (v47 == ++v48)
      {
        goto LABEL_100;
      }
    }
  }

  v40 = 0;
  v41 = MEMORY[0x277D84F90];
  v42 = MEMORY[0x277D84F90];
  while (v40 < v33[2])
  {

    sub_252E34B04();
    v43 = sub_252E34AE4();
    v44 = sub_252A491E4(v43, v41, 0, 0);

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_2529F8AC8(0, v42[2] + 1, 1, v42);
      v42 = result;
    }

    v46 = v42[2];
    v45 = v42[3];
    if (v46 >= v45 >> 1)
    {
      result = sub_2529F8AC8((v45 > 1), v46 + 1, 1, v42);
      v42 = result;
    }

    ++v40;
    v42[2] = v46 + 1;
    v42[v46 + 4] = v44;
    if (v39 == v40)
    {
      goto LABEL_81;
    }
  }

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
  return result;
}

void *sub_252B0DA14(unint64_t a1, unint64_t a2)
{
  v2 = a1;
  v3 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_84:
    v4 = sub_252E378C4();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  v56 = MEMORY[0x277D84F90];
  while (v4 != v5)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      MEMORY[0x2530ADF00](v5, v2);
      v6 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_73;
      }
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        goto LABEL_74;
      }

      v6 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
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
LABEL_78:
        __break(1u);
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
        goto LABEL_84;
      }
    }

    v7 = sub_252E34A64();

    ++v5;
    if (v7)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v56 = sub_2529F8AC8(0, v56[2] + 1, 1, v56);
      }

      v9 = v56[2];
      v8 = v56[3];
      if (v9 >= v8 >> 1)
      {
        v56 = sub_2529F8AC8((v8 > 1), v9 + 1, 1, v56);
      }

      v56[2] = v9 + 1;
      v56[v9 + 4] = v7;
      v5 = v6;
    }
  }

  v2 = a2;
  v10 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
    v11 = sub_252E378C4();
    if (v11)
    {
LABEL_19:
      v3 = 0;
      v12 = a2 & 0xC000000000000001;
      v55 = MEMORY[0x277D84F90];
      while (1)
      {
        v13 = v3;
        while (1)
        {
          if (v12)
          {
            MEMORY[0x2530ADF00](v13, v2);
            v3 = v13 + 1;
            if (__OFADD__(v13, 1))
            {
              goto LABEL_75;
            }
          }

          else
          {
            if (v13 >= *(v10 + 16))
            {
              goto LABEL_76;
            }

            v3 = v13 + 1;
            if (__OFADD__(v13, 1))
            {
              goto LABEL_75;
            }
          }

          sub_252E34644();
          v14 = sub_252E359F4();

          if (*(v14 + 16))
          {
            v15 = sub_252A44A10(0x73656D616ELL, 0xE500000000000000);
            if (v16)
            {
              break;
            }
          }

          ++v13;
          if (v3 == v11)
          {
            goto LABEL_87;
          }
        }

        v17 = *(*(v14 + 56) + 8 * v15);

        if (v17 >> 62)
        {
          v2 = sub_252E378C4();
          v52 = v11;
          v53 = v10;
          if (v2)
          {
LABEL_33:
            v18 = 0;
            v57 = v17 & 0xFFFFFFFFFFFFFF8;
            v58 = v17 & 0xC000000000000001;
            v19 = MEMORY[0x277D84F90];
            v20 = v17;
            while (1)
            {
              if (v58)
              {
                MEMORY[0x2530ADF00](v18, v17);
                v21 = v18 + 1;
                if (__OFADD__(v18, 1))
                {
                  goto LABEL_77;
                }
              }

              else
              {
                if (v18 >= *(v57 + 16))
                {
                  goto LABEL_78;
                }

                v21 = v18 + 1;
                if (__OFADD__(v18, 1))
                {
                  goto LABEL_77;
                }
              }

              v22 = sub_252E358F4();

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v19 = sub_2529F8AC8(0, v19[2] + 1, 1, v19);
              }

              v24 = v19[2];
              v23 = v19[3];
              if (v24 >= v23 >> 1)
              {
                v19 = sub_2529F8AC8((v23 > 1), v24 + 1, 1, v19);
              }

              v19[2] = v24 + 1;
              v19[v24 + 4] = v22;
              ++v18;
              v17 = v20;
              if (v21 == v2)
              {
                goto LABEL_48;
              }
            }
          }
        }

        else
        {
          v2 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v52 = v11;
          v53 = v10;
          if (v2)
          {
            goto LABEL_33;
          }
        }

        v19 = MEMORY[0x277D84F90];
LABEL_48:

        v25 = v19[2];
        if (v25)
        {
          break;
        }

        v27 = MEMORY[0x277D84F90];
LABEL_67:

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v55 = sub_2529F8AC8(0, v55[2] + 1, 1, v55);
        }

        v11 = v52;
        v10 = v53;
        v12 = a2 & 0xC000000000000001;
        v38 = v55[2];
        v37 = v55[3];
        if (v38 >= v37 >> 1)
        {
          v55 = sub_2529F8AC8((v37 > 1), v38 + 1, 1, v55);
        }

        v55[2] = v38 + 1;
        v55[v38 + 4] = v27;
        v2 = a2;
        if (v3 == v52)
        {
          goto LABEL_87;
        }
      }

      v26 = 0;
      v27 = MEMORY[0x277D84F90];
      while (1)
      {
        if (v26 >= v19[2])
        {
          goto LABEL_79;
        }

        v28 = v19[v26 + 4];
        v29 = *(v28 + 16);
        v2 = v27[2];
        v30 = v2 + v29;
        if (__OFADD__(v2, v29))
        {
          goto LABEL_80;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (isUniquelyReferenced_nonNull_native && v30 <= v27[3] >> 1)
        {
          if (!*(v28 + 16))
          {
            goto LABEL_50;
          }
        }

        else
        {
          if (v2 <= v30)
          {
            v32 = v2 + v29;
          }

          else
          {
            v32 = v2;
          }

          v27 = sub_2529F85CC(isUniquelyReferenced_nonNull_native, v32, 1, v27);
          if (!*(v28 + 16))
          {
LABEL_50:

            if (v29)
            {
              goto LABEL_81;
            }

            goto LABEL_51;
          }
        }

        v2 = v27[2];
        v33 = (v27[3] >> 1) - v2;
        sub_252E34804();
        if (v33 < v29)
        {
          goto LABEL_82;
        }

        swift_arrayInitWithCopy();

        if (v29)
        {
          v34 = v27[2];
          v35 = __OFADD__(v34, v29);
          v36 = v34 + v29;
          if (v35)
          {
            goto LABEL_83;
          }

          v27[2] = v36;
        }

LABEL_51:
        if (v25 == ++v26)
        {
          goto LABEL_67;
        }
      }
    }
  }

  else
  {
    v11 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      goto LABEL_19;
    }
  }

  v55 = MEMORY[0x277D84F90];
LABEL_87:
  result = sub_25297BB90(v55);
  v40 = v56[2];
  if (!v40)
  {
    v42 = MEMORY[0x277D84F90];
LABEL_106:

    return v42;
  }

  v41 = 0;
  v42 = MEMORY[0x277D84F90];
  while (v41 < v56[2])
  {
    v43 = v56[v41 + 4];
    v44 = *(v43 + 16);
    v45 = v42[2];
    v46 = v45 + v44;
    if (__OFADD__(v45, v44))
    {
      goto LABEL_108;
    }

    v47 = swift_isUniquelyReferenced_nonNull_native();
    if (v47 && v46 <= v42[3] >> 1)
    {
      if (*(v43 + 16))
      {
        goto LABEL_101;
      }
    }

    else
    {
      if (v45 <= v46)
      {
        v48 = v45 + v44;
      }

      else
      {
        v48 = v45;
      }

      v42 = sub_2529F85CC(v47, v48, 1, v42);
      if (*(v43 + 16))
      {
LABEL_101:
        v49 = (v42[3] >> 1) - v42[2];
        result = sub_252E34804();
        if (v49 < v44)
        {
          goto LABEL_110;
        }

        swift_arrayInitWithCopy();

        if (v44)
        {
          v50 = v42[2];
          v35 = __OFADD__(v50, v44);
          v51 = v50 + v44;
          if (v35)
          {
            goto LABEL_111;
          }

          v42[2] = v51;
        }

        goto LABEL_90;
      }
    }

    if (v44)
    {
      goto LABEL_109;
    }

LABEL_90:
    if (v40 == ++v41)
    {
      goto LABEL_106;
    }
  }

  __break(1u);
LABEL_108:
  __break(1u);
LABEL_109:
  __break(1u);
LABEL_110:
  __break(1u);
LABEL_111:
  __break(1u);
  return result;
}

uint64_t sub_252B0E134(uint64_t a1)
{
  v2 = sub_252E34804();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  if (!v6)
  {
    return 1;
  }

  v8 = *(v3 + 16);
  v7 = v3 + 16;
  v9 = a1 + ((*(v7 + 64) + 32) & ~*(v7 + 64));
  v10 = *(v7 + 56);
  v25 = 0x8000000252E7B340;
  v26 = v8;
  v23 = v10;
  v24 = 0x8000000252E7B360;
  v21 = 0x8000000252E7BAB0;
  v22 = 0x8000000252E7BB30;
  v11 = (v7 - 8);
  v8(v5, v9, v2);
  while (1)
  {
    v13 = sub_252E347F4();
    if (!v14)
    {
      goto LABEL_4;
    }

    v15 = v13;
    v16 = v14;
    if (v13 == 0xD000000000000015 && v25 == v14)
    {
      break;
    }

    if ((sub_252E37DB4() & 1) != 0 || v15 == 0xD00000000000001BLL && v24 == v16)
    {
      break;
    }

    if ((sub_252E37DB4() & 1) != 0 || v15 == 0xD000000000000017 && v22 == v16)
    {
      break;
    }

    v17 = sub_252E37DB4();
    v18 = v15 == 0xD000000000000015 && 0x8000000252E7BAD0 == v16;
    v19 = v18;
    if ((v17 & 1) != 0 || v19 || (sub_252E37DB4() & 1) != 0 || v15 == 0xD000000000000013 && v21 == v16)
    {
      break;
    }

    v12 = sub_252E37DB4();

    if (v12)
    {
      goto LABEL_27;
    }

LABEL_4:
    (*v11)(v5, v2);
    v9 += v23;
    if (!--v6)
    {
      return 1;
    }

    v26(v5, v9, v2);
  }

LABEL_27:
  (*v11)(v5, v2);
  return 0;
}

uint64_t sub_252B0E400(uint64_t a1)
{
  v45 = sub_252E36CA4();
  v2 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v44 = v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_252E36D04();
  v4 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v42 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_252E34804();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  if (!v10)
  {
    return 0;
  }

  v13 = *(v7 + 16);
  v11 = v7 + 16;
  v12 = v13;
  v14 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
  v47 = *(v11 + 56);
  v36 = "tings + userEntities";
  v41 = "me string builder from ";
  v35 = 0x8000000252E72DC0;
  v34 = &v50;
  v33 = (v2 + 8);
  v32 = (v4 + 8);
  v15 = (v11 - 8);
  v31 = xmmword_252E41C50;
  v39 = v11;
  v40 = v6;
  v37 = (v11 - 8);
  v38 = v13;
  v13(v9, v14, v6);
  while (1)
  {
    sub_252E347F4();
    if (v19)
    {

      sub_252E347E4();
      v20 = sub_252E37B74();

      if (!v20)
      {
        if (qword_27F53F4F8 != -1)
        {
          swift_once();
        }

        v21 = sub_252E36AD4();
        v22 = __swift_project_value_buffer(v21, qword_27F544D90);
        sub_252CC3D90(0xD000000000000026, v36 | 0x8000000000000000, 0xD000000000000068, v41 | 0x8000000000000000);
        if (qword_2814B0DB8 != -1)
        {
          swift_once();
        }

        sub_252E37604();
        v23 = off_2814B0DC0;
        v30[1] = v22;
        if (off_2814B0DC0)
        {
        }

        else
        {
          type metadata accessor for LifeCycleManager();
          swift_allocObject();
          v23 = sub_252D7EAE8();
          off_2814B0DC0 = v23;

          sub_252D7E92C();
        }

        sub_252E37614();
        v46 = *(v23 + 2);
        v24 = swift_allocObject();
        *(v24 + 16) = v23;
        *(v24 + 24) = v31;
        *(v24 + 40) = v35;
        *(v24 + 48) = sub_252979724;
        *(v24 + 56) = 0;
        v52 = sub_252990560;
        v53 = v24;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        v50 = sub_252AD686C;
        v51 = &block_descriptor_11;
        v25 = _Block_copy(aBlock);

        v26 = v42;
        sub_252E36CD4();
        v48 = MEMORY[0x277D84F90];
        sub_252B0F0EC(qword_2814B0298, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5402F8, &qword_252E3E860);
        sub_2529E6488(&qword_2814B0280, &qword_27F5402F8, &qword_252E3E860, MEMORY[0x277D83970]);
        v27 = v44;
        v28 = v45;
        sub_252E37824();
        MEMORY[0x2530ADA30](0, v26, v27, v25);
        _Block_release(v25);
        (*v33)(v27, v28);
        (*v32)(v26, v43);

        if (qword_27F53F220 != -1)
        {
          swift_once();
        }

        sub_252E37604();
        v16 = qword_27F5407C0;
        v6 = v40;
        v12 = v38;
        if (qword_27F5407C0)
        {
        }

        else
        {
          type metadata accessor for ApplicationContext(0);
          swift_allocObject();
          v16 = sub_252978E58();
          qword_27F5407C0 = v16;
        }

        sub_252E37614();
        sub_252929E74((v16 + 16), aBlock);

        v17 = v51;
        v18 = v52;
        __swift_project_boxed_opaque_existential_1(aBlock, v51);
        LOBYTE(v17) = sub_252979634(v17, v18);
        __swift_destroy_boxed_opaque_existential_1(aBlock);
        v15 = v37;
        if (v17)
        {
          break;
        }
      }
    }

    (*v15)(v9, v6);
    v14 += v47;
    if (!--v10)
    {
      return 0;
    }

    v12(v9, v14, v6);
  }

  sub_252CC3D90(0xD000000000000058, 0x8000000252E7BC60, 0xD000000000000068, v41 | 0x8000000000000000);
  (*v15)(v9, v6);
  return 1;
}

id sub_252B0EB38(uint64_t a1)
{
  v2 = sub_252E34614();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v25 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541F50, &qword_252E42D00);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v25 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543348, &qword_252E4B5B0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v25 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v25 - v15;
  v26 = v3;
  v17 = *(v3 + 56);
  v17(&v25 - v15, 1, 1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_252E3C130;
  *(v18 + 32) = a1;
  v19 = sub_252E34A74();
  (*(*(v19 - 8) + 56))(v7, 1, 1, v19);

  MEMORY[0x2530AAE70](v18, v7);

  sub_25293847C(v7, &qword_27F541F50, &qword_252E42D00);
  sub_252E357F4();
  sub_25293847C(v16, &qword_27F543348, &qword_252E4B5B0);
  v17(v14, 0, 1, v2);
  sub_252B0F064(v14, v16);
  v20 = v26;
  sub_252938414(v16, v11, &qword_27F543348, &qword_252E4B5B0);
  if ((*(v20 + 48))(v11, 1, v2) == 1)
  {
    sub_25293847C(v16, &qword_27F543348, &qword_252E4B5B0);

    sub_25293847C(v11, &qword_27F543348, &qword_252E4B5B0);
    return 0;
  }

  else
  {
    v22 = v25;
    (*(v20 + 32))(v25, v11, v2);
    sub_252A62FB0();
    v23 = MEMORY[0x2530ADA70](v22);
    v24 = [objc_allocWithZone(MEMORY[0x277D5F5E0]) initWithTask_];

    (*(v20 + 8))(v22, v2);
    sub_25293847C(v16, &qword_27F543348, &qword_252E4B5B0);
    return v24;
  }
}

uint64_t sub_252B0F064(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543348, &qword_252E4B5B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}