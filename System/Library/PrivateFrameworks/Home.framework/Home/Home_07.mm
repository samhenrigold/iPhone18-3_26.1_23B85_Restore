uint64_t sub_20DA5BD38()
{
  *(*v1 + 272) = v0;

  if (v0)
  {

    v2 = sub_20DA5CAE8;
  }

  else
  {
    v2 = sub_20DA5BE94;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20DA5BE94()
{
  v97 = v0;
  v96[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  v3 = *(v0 + 64);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_20D9D76EC(v3, &qword_27C8442E0, &qword_20DD95D90);
    if (qword_27C8424A8 != -1)
    {
LABEL_37:
      swift_once();
    }

    v4 = *(v0 + 248);
    v5 = *(v0 + 176);
    v6 = *(v0 + 184);
    v7 = *(v0 + 144);
    v8 = sub_20DD64C44();
    __swift_project_value_buffer(v8, qword_27C844788);
    v4(v5, v6, v7);
    v9 = sub_20DD64C24();
    v10 = sub_20DD65364();
    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 176);
    v13 = *(v0 + 184);
    v15 = *(v0 + 144);
    v14 = *(v0 + 152);
    v16 = *(v0 + 120);
    v17 = *(v0 + 128);
    v93 = *(v0 + 112);
    if (v11)
    {
      v18 = swift_slowAlloc();
      v90 = v17;
      v19 = swift_slowAlloc();
      v96[0] = v19;
      *v18 = 136315138;
      v85 = v10;
      v20 = sub_20DD63504();
      v88 = v13;
      v22 = v21;
      v23 = *(v14 + 8);
      v23(v12, v15);
      v24 = sub_20D9E0B38(v20, v22, v96);

      *(v18 + 4) = v24;
      _os_log_impl(&dword_20D9BF000, v9, v85, "Could not convert file to DateInterval: %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x20F327D10](v19, -1, -1);
      MEMORY[0x20F327D10](v18, -1, -1);

      (*(v16 + 8))(v90, v93);
      v23(v88, v15);
    }

    else
    {

      v35 = *(v14 + 8);
      v35(v12, v15);
      (*(v16 + 8))(v17, v93);
      v35(v13, v15);
    }

    v34 = *(v0 + 240);
    v95 = *(v0 + 224);
  }

  else
  {
    v25 = *(v0 + 224);
    v26 = *(v0 + 152);
    v91 = *(v0 + 144);
    v94 = *(v0 + 184);
    v28 = *(v0 + 120);
    v27 = *(v0 + 128);
    v89 = *(v0 + 112);
    v30 = *(v0 + 88);
    v29 = *(v0 + 96);
    (*(v2 + 32))(v29, v3, v1);
    (*(v2 + 16))(v30, v29, v1);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v96[0] = v25;
    sub_20D9D1588(v30, v27, isUniquelyReferenced_nonNull_native, v32, v33);
    (*(v2 + 8))(v29, v1);
    (*(v28 + 8))(v27, v89);
    (*(v26 + 8))(v94, v91);
    v34 = v25;
    v95 = v25;
  }

  v36 = *(v0 + 232) + 1;
  if (v36 == *(v0 + 216))
  {
LABEL_9:
    *(v0 + 280) = v34;

    if (*(v34 + 16))
    {
      v37 = swift_task_alloc();
      *(v0 + 288) = v37;
      *v37 = v0;
      v37[1] = sub_20DA5C848;

      return sub_20DA5D408(v34);
    }

    else
    {
      v76 = *(v0 + 200);
      (*(*(v0 + 152) + 8))(*(v0 + 192), *(v0 + 144));

      v77 = *(v0 + 8);

      return v77();
    }
  }

  v92 = v34;
  while (1)
  {
    *(v0 + 232) = v36;
    *(v0 + 240) = v34;
    *(v0 + 224) = v95;
    v40 = *(v0 + 208);
    if (v36 >= *(v40 + 16))
    {
      __break(1u);
      goto LABEL_37;
    }

    v41 = *(v0 + 184);
    v42 = *(v0 + 144);
    v43 = *(v0 + 152);
    v45 = *(v43 + 16);
    v43 += 16;
    v44 = v45;
    v46 = v40 + ((*(v0 + 304) + 32) & ~*(v0 + 304)) + *(v43 + 56) * v36;
    *(v0 + 248) = v45;
    *(v0 + 256) = v43 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v45(v41, v46, v42);
    if (sub_20DD634B4() == 1852797802 && v47 == 0xE400000000000000)
    {
      break;
    }

    v48 = sub_20DD65974();

    if (v48)
    {
      goto LABEL_22;
    }

    (*(*(v0 + 152) + 8))(*(v0 + 184), *(v0 + 144));
LABEL_16:
    v36 = *(v0 + 232) + 1;
    if (v36 == *(v0 + 216))
    {
      goto LABEL_9;
    }
  }

LABEL_22:
  *(v0 + 16) = sub_20DD634C4();
  *(v0 + 24) = v49;
  *(v0 + 32) = 95;
  *(v0 + 40) = 0xE100000000000000;
  sub_20D9C8A28();
  v50 = sub_20DD654B4();

  if (*(v50 + 16) != 3)
  {
LABEL_25:
    if (qword_27C8424A8 != -1)
    {
      swift_once();
    }

    v54 = *(v0 + 184);
    v55 = *(v0 + 168);
    v56 = *(v0 + 144);
    v57 = sub_20DD64C44();
    __swift_project_value_buffer(v57, qword_27C844788);
    v44(v55, v54, v56);

    v58 = sub_20DD64C24();
    v59 = sub_20DD65364();

    v60 = os_log_type_enabled(v58, v59);
    v61 = *(v0 + 184);
    v62 = *(v0 + 168);
    v63 = *(v0 + 144);
    v64 = *(v0 + 152);
    if (v60)
    {
      v65 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      v96[0] = v86;
      *v65 = 136315394;
      v66 = sub_20DD63504();
      v67 = v63;
      log = v63;
      v69 = v68;
      v70 = *(v64 + 8);
      v70(v62, v67);
      v71 = sub_20D9E0B38(v66, v69, v96);

      *(v65 + 4) = v71;
      *(v65 + 12) = 2080;
      v72 = MEMORY[0x20F325F40](v50, MEMORY[0x277D837D0]);
      v74 = v73;

      v75 = sub_20D9E0B38(v72, v74, v96);

      *(v65 + 14) = v75;
      _os_log_impl(&dword_20D9BF000, v58, v59, "Could not extract UUID from file at path: %s; components: %s", v65, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F327D10](v86, -1, -1);
      MEMORY[0x20F327D10](v65, -1, -1);

      v70(v61, log);
    }

    else
    {

      v39 = *(v64 + 8);
      v39(v62, v63);
      v39(v61, v63);
    }

    v34 = v92;
    goto LABEL_16;
  }

  v51 = *(v0 + 112);
  v52 = *(v0 + 120);
  v53 = *(v0 + 104);

  sub_20DD636D4();

  if ((*(v52 + 48))(v53, 1, v51) == 1)
  {
    sub_20D9D76EC(*(v0 + 104), &unk_27C843A70, &qword_20DD94260);
    goto LABEL_25;
  }

  v79 = *(v0 + 120);
  v78 = *(v0 + 128);
  v81 = *(v0 + 104);
  v80 = *(v0 + 112);

  (*(v79 + 32))(v78, v81, v80);
  v82 = swift_task_alloc();
  *(v0 + 264) = v82;
  *v82 = v0;
  v82[1] = sub_20DA5BD38;
  v83 = *(v0 + 184);
  v84 = *(v0 + 64);

  return sub_20DA5CE00(v84, v83);
}

uint64_t sub_20DA5C848()
{
  *(*v1 + 296) = v0;

  if (v0)
  {
    v2 = sub_20DA5CC64;
  }

  else
  {
    v2 = sub_20DA5C9A8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20DA5C9A8()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 144);
  v3 = *(v0 + 152);

  (*(v3 + 8))(v1, v2);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_20DA5CAE8()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 184);
  v3 = *(v0 + 144);
  v4 = *(v0 + 152);
  v6 = *(v0 + 120);
  v5 = *(v0 + 128);
  v7 = *(v0 + 112);

  (*(v6 + 8))(v5, v7);
  v8 = *(v4 + 8);
  v8(v2, v3);
  v8(v1, v3);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_20DA5CC64()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 144);
  v3 = *(v0 + 152);

  (*(v3 + 8))(v1, v2);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_20DA5CE00(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v4 = sub_20DD63514();
  v3[11] = v4;
  v3[12] = *(v4 - 8);
  v3[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DA5CEF0, 0, 0);
}

uint64_t sub_20DA5CEF0()
{
  v42 = v0;
  v41[1] = *MEMORY[0x277D85DE8];
  v2 = sub_20DD63524();
  v4 = v3;
  v5 = objc_opt_self();
  v6 = sub_20DD63534();
  v0[6] = 0;
  v7 = [v5 JSONObjectWithData:v6 options:0 error:v0 + 6];

  v8 = v0[6];
  if (v7)
  {
    v9 = v8;
    sub_20DD654E4();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C844850, &qword_20DD946F8);
    if (swift_dynamicCast())
    {
      v10 = v0[7];
      if (qword_27C8424A8 != -1)
      {
        swift_once();
      }

      v11 = sub_20DD64C44();
      __swift_project_value_buffer(v11, qword_27C844788);

      v12 = sub_20DD64C24();
      v13 = sub_20DD65354();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v41[0] = v15;
        *v14 = 136315138;
        v16 = sub_20DD64DD4();
        v18 = sub_20D9E0B38(v16, v17, v41);

        *(v14 + 4) = v18;
        _os_log_impl(&dword_20D9BF000, v12, v13, "Parsed DateInterval JSON: %s", v14, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v15);
        MEMORY[0x20F327D10](v15, -1, -1);
        MEMORY[0x20F327D10](v14, -1, -1);
      }

      sub_20DA5DF28(v10, v0[8]);

      sub_20DA62594(v2, v4);
    }

    else
    {
      if (qword_27C8424A8 != -1)
      {
        swift_once();
      }

      v21 = v0[12];
      v20 = v0[13];
      v22 = v0[11];
      v23 = v0[9];
      v24 = sub_20DD64C44();
      __swift_project_value_buffer(v24, qword_27C844788);
      (*(v21 + 16))(v20, v23, v22);
      v25 = sub_20DD64C24();
      v26 = sub_20DD65364();
      v27 = os_log_type_enabled(v25, v26);
      v29 = v0[12];
      v28 = v0[13];
      v30 = v0[11];
      if (v27)
      {
        v31 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v41[0] = v40;
        *v31 = 136315138;
        v32 = sub_20DD63504();
        log = v25;
        v34 = v33;
        (*(v29 + 8))(v28, v30);
        v35 = sub_20D9E0B38(v32, v34, v41);

        *(v31 + 4) = v35;
        _os_log_impl(&dword_20D9BF000, log, v26, "Could not parse JSON as dictionary from: %s", v31, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v40);
        MEMORY[0x20F327D10](v40, -1, -1);
        MEMORY[0x20F327D10](v31, -1, -1);
        sub_20DA62594(v2, v4);
      }

      else
      {
        sub_20DA62594(v2, v4);

        (*(v29 + 8))(v28, v30);
      }

      v36 = v0[8];
      v37 = sub_20DD63484();
      (*(*(v37 - 8) + 56))(v36, 1, 1, v37);
    }

    v1 = v0[1];
  }

  else
  {
    v19 = v8;
    sub_20DD634A4();

    swift_willThrow();
    sub_20DA62594(v2, v4);

    v1 = v0[1];
  }

  return v1();
}

uint64_t sub_20DA5D408(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_20DD63744();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_20DD63484();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DA5D530, 0, 0);
}

uint64_t sub_20DA5D530()
{
  v1 = *(v0 + 24);

  *(v0 + 88) = sub_20D9F4AB8(v2);
  v3 = [*(v1 + OBJC_IVAR___HFCameraEventDiagnosticsAttachmentRequestListener_homeManager) homes];
  sub_20D9D7510(0, &qword_280E01EF0, 0x277CD1A60);
  v4 = sub_20DD64FD4();
  *(v0 + 96) = v4;

  if (v4 >> 62)
  {
LABEL_31:
    result = sub_20DD655B4();
    *(v0 + 104) = result;
    if (result)
    {
      goto LABEL_3;
    }

LABEL_32:

    v37 = *(v0 + 8);

    return v37();
  }

  result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  *(v0 + 104) = result;
  if (!result)
  {
    goto LABEL_32;
  }

LABEL_3:
  v6 = 0;
  while (1)
  {
    v7 = *(v0 + 96);
    if ((v7 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x20F326680](v6);
    }

    else
    {
      if (v6 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return result;
      }

      v8 = *(v7 + 8 * v6 + 32);
    }

    *(v0 + 112) = v8;
    *(v0 + 120) = v6 + 1;
    if (__OFADD__(v6, 1))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v9 = sub_20DA60480(*(v0 + 88), v8);
    *(v0 + 128) = v9;
    if (v9 >> 62)
    {
      break;
    }

    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v0 + 136) = v10;
    if (v10)
    {
      goto LABEL_11;
    }

LABEL_22:
    v27 = *(v0 + 88);

    if (*(v27 + 16))
    {
      v6 = *(v0 + 120);
      if (v6 != *(v0 + 104))
      {
        continue;
      }
    }

    goto LABEL_32;
  }

  v26 = sub_20DD655B4();
  *(v0 + 136) = v26;
  if (!v26)
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = 0;
  while (1)
  {
    *(v0 + 144) = 0;
    v15 = *(v0 + 128);
    if ((v15 & 0xC000000000000001) != 0)
    {
      v16 = MEMORY[0x20F326680](v11);
    }

    else
    {
      if (v11 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_29;
      }

      v16 = *(v15 + 8 * v11 + 32);
    }

    v17 = v16;
    *(v0 + 152) = v16;
    *(v0 + 160) = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v18 = *(v0 + 16);
    v19 = [v16 uniqueIdentifier];
    sub_20DD63714();

    if (*(v18 + 16))
    {
      v24 = sub_20D9CB38C(*(v0 + 48), v20, v21, v22, v23);
      if (v25)
      {
        break;
      }
    }

    v13 = *(v0 + 40);
    v12 = *(v0 + 48);
    v14 = *(v0 + 32);

    (*(v13 + 8))(v12, v14);
    v11 = *(v0 + 160);
    if (v11 == *(v0 + 136))
    {
      goto LABEL_22;
    }
  }

  v29 = *(v0 + 72);
  v28 = *(v0 + 80);
  v30 = *(v0 + 56);
  v31 = *(v0 + 64);
  v33 = *(v0 + 40);
  v32 = *(v0 + 48);
  v34 = *(v0 + 32);
  (*(v31 + 16))(v29, *(*(v0 + 16) + 56) + *(v31 + 72) * v24, v30);
  (*(v33 + 8))(v32, v34);
  (*(v31 + 32))(v28, v29, v30);
  v35 = swift_task_alloc();
  *(v0 + 168) = v35;
  *v35 = v0;
  v35[1] = sub_20DA5D8F4;
  v36 = *(v0 + 80);

  return sub_20DA611A4(v36, v17);
}

uint64_t sub_20DA5D8F4()
{
  *(*v1 + 176) = v0;

  if (v0)
  {

    v2 = sub_20DA5DD84;
  }

  else
  {
    v2 = sub_20DA5DA2C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

id sub_20DA5DA2C()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 80);
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);

  result = (*(v4 + 8))(v2, v3);
  v6 = v1 + 1;
  if (__OFADD__(v1, 1))
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    while (1)
    {
      v7 = *(v0 + 160);
      if (v7 == *(v0 + 136))
      {
        while (1)
        {
          v8 = *(v0 + 88);

          if (v6 == *(v8 + 16) || (v9 = *(v0 + 120), v9 == *(v0 + 104)))
          {

            v25 = *(v0 + 8);

            return v25();
          }

          v10 = *(v0 + 96);
          if ((v10 & 0xC000000000000001) != 0)
          {
            result = MEMORY[0x20F326680](*(v0 + 120));
          }

          else
          {
            if (v9 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_30;
            }

            result = *(v10 + 8 * v9 + 32);
          }

          *(v0 + 112) = result;
          *(v0 + 120) = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            break;
          }

          v11 = sub_20DA60480(*(v0 + 88), result);
          *(v0 + 128) = v11;
          if (v11 >> 62)
          {
            result = sub_20DD655B4();
            *(v0 + 136) = result;
            if (result)
            {
LABEL_14:
              v7 = 0;
              goto LABEL_15;
            }
          }

          else
          {
            result = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
            *(v0 + 136) = result;
            if (result)
            {
              goto LABEL_14;
            }
          }
        }

        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

LABEL_15:
      *(v0 + 144) = v6;
      v12 = *(v0 + 128);
      if ((v12 & 0xC000000000000001) != 0)
      {
        result = MEMORY[0x20F326680](v7);
      }

      else
      {
        if (v7 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_33;
        }

        result = *(v12 + 8 * v7 + 32);
      }

      v13 = result;
      *(v0 + 152) = result;
      *(v0 + 160) = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_31;
      }

      v14 = *(v0 + 16);
      v15 = [result uniqueIdentifier];
      sub_20DD63714();

      if (*(v14 + 16))
      {
        v20 = sub_20D9CB38C(*(v0 + 48), v16, v17, v18, v19);
        if (v21)
        {
          break;
        }
      }

      v23 = *(v0 + 40);
      v22 = *(v0 + 48);
      v24 = *(v0 + 32);

      result = (*(v23 + 8))(v22, v24);
    }

    v27 = *(v0 + 72);
    v26 = *(v0 + 80);
    v28 = *(v0 + 56);
    v29 = *(v0 + 64);
    v31 = *(v0 + 40);
    v30 = *(v0 + 48);
    v32 = *(v0 + 32);
    (*(v29 + 16))(v27, *(*(v0 + 16) + 56) + *(v29 + 72) * v20, v28);
    (*(v31 + 8))(v30, v32);
    (*(v29 + 32))(v26, v27, v28);
    v33 = swift_task_alloc();
    *(v0 + 168) = v33;
    *v33 = v0;
    v33[1] = sub_20DA5D8F4;
    v34 = *(v0 + 80);

    return sub_20DA611A4(v34, v13);
  }

  return result;
}

uint64_t sub_20DA5DD84()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 80);
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);

  (*(v4 + 8))(v2, v3);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_20DA5DE3C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8443A0, &qword_20DD94E00);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844870, &unk_20DD95DC8);
    **(*(v4 + 64) + 40) = sub_20DD64FD4();

    return MEMORY[0x282200950](v4);
  }
}

uint64_t sub_20DA5DF28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_20DD636C4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v70 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v70 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v70 - v15;
  if (*(a1 + 16) && (v17 = sub_20D9CB170(0x7461447472617473, 0xE900000000000065), (v18 & 1) != 0) && (sub_20D9D7174(*(a1 + 56) + 32 * v17, v76), (swift_dynamicCast() & 1) != 0))
  {
    v71 = v5;
    v72 = a2;
    v19 = v74;
    v20 = v75;
    v21 = [objc_opt_self() hf_rfc3339Formatter];
    v22 = sub_20DD64E74();
    v73 = v21;
    v23 = [v21 dateFromString_];

    if (v23)
    {

      sub_20DD63674();

      v24 = v71;
      if (*(a1 + 16) && (v25 = sub_20D9CB170(0x65746144646E65, 0xE700000000000000), (v26 & 1) != 0) && (sub_20D9D7174(*(a1 + 56) + 32 * v25, v76), (swift_dynamicCast() & 1) != 0))
      {
        v27 = v74;
        v28 = v75;
        v29 = sub_20DD64E74();
        v30 = [v73 dateFromString_];

        if (v30)
        {

          sub_20DD63674();

          v31 = *(v24 + 16);
          v31(v11, v16, v4);
          v31(v8, v14, v4);
          a2 = v72;
          sub_20DD63444();

          v32 = *(v24 + 8);
          v32(v14, v4);
          v32(v16, v4);
          v33 = 0;
          goto LABEL_15;
        }

        v62 = v28;
        v63 = v27;
        if (qword_27C8424A8 != -1)
        {
          swift_once();
        }

        v64 = sub_20DD64C44();
        __swift_project_value_buffer(v64, qword_27C844788);
        v65 = v62;

        v45 = sub_20DD64C24();
        v66 = sub_20DD65364();

        if (!os_log_type_enabled(v45, v66))
        {

          goto LABEL_21;
        }

        v67 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        v76[0] = v68;
        *v67 = 136315138;
        v69 = sub_20D9E0B38(v63, v65, v76);

        *(v67 + 4) = v69;
        _os_log_impl(&dword_20D9BF000, v45, v66, "Could not convert endDate string to date: %s", v67, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v68);
        MEMORY[0x20F327D10](v68, -1, -1);
        v52 = v67;
      }

      else
      {
        if (qword_27C8424A8 != -1)
        {
          swift_once();
        }

        v44 = sub_20DD64C44();
        __swift_project_value_buffer(v44, qword_27C844788);

        v45 = sub_20DD64C24();
        v46 = sub_20DD65364();

        if (!os_log_type_enabled(v45, v46))
        {
          goto LABEL_21;
        }

        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v76[0] = v48;
        *v47 = 136315138;
        v49 = sub_20DD64DD4();
        v51 = sub_20D9E0B38(v49, v50, v76);

        *(v47 + 4) = v51;
        _os_log_impl(&dword_20D9BF000, v45, v46, "No endDate attribute in %s", v47, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v48);
        MEMORY[0x20F327D10](v48, -1, -1);
        v52 = v47;
      }

      MEMORY[0x20F327D10](v52, -1, -1);
LABEL_21:

      a2 = v72;
      (*(v24 + 16))(v11, v16, v4);
      sub_20DD63454();

      (*(v24 + 8))(v16, v4);
      v33 = 0;
      goto LABEL_15;
    }

    v53 = v19;
    if (qword_27C8424A8 != -1)
    {
      swift_once();
    }

    v54 = sub_20DD64C44();
    __swift_project_value_buffer(v54, qword_27C844788);

    v55 = sub_20DD64C24();
    v56 = sub_20DD65364();

    v57 = os_log_type_enabled(v55, v56);
    v58 = v73;
    if (v57)
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v76[0] = v60;
      *v59 = 136315138;
      v61 = sub_20D9E0B38(v53, v20, v76);

      *(v59 + 4) = v61;
      _os_log_impl(&dword_20D9BF000, v55, v56, "Could not convert startDate string to date: %s", v59, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v60);
      MEMORY[0x20F327D10](v60, -1, -1);
      MEMORY[0x20F327D10](v59, -1, -1);
    }

    else
    {
    }

    v33 = 1;
    a2 = v72;
  }

  else
  {
    if (qword_27C8424A8 != -1)
    {
      swift_once();
    }

    v34 = sub_20DD64C44();
    __swift_project_value_buffer(v34, qword_27C844788);

    v35 = sub_20DD64C24();
    v36 = sub_20DD65364();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v76[0] = v38;
      *v37 = 136315138;
      v39 = sub_20DD64DD4();
      v41 = sub_20D9E0B38(v39, v40, v76);

      *(v37 + 4) = v41;
      _os_log_impl(&dword_20D9BF000, v35, v36, "No startDate attribute in %s", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v38);
      MEMORY[0x20F327D10](v38, -1, -1);
      MEMORY[0x20F327D10](v37, -1, -1);
    }

    v33 = 1;
  }

LABEL_15:
  v42 = sub_20DD63484();
  return (*(*(v42 - 8) + 56))(a2, v33, 1, v42);
}

uint64_t sub_20DA5E8B8(void **a1, void **a2)
{
  v4 = sub_20DD636C4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v24 - v9;
  v11 = *a2;
  v12 = [*a1 dateOfOccurrence];
  sub_20DD63674();

  v13 = [v11 dateOfOccurrence];
  sub_20DD63674();

  if ((sub_20DD63664() & 1) != 0 && (objc_opt_self(), (v14 = swift_dynamicCastObjCClass()) != 0) && (v15 = v14, objc_opt_self(), (v16 = swift_dynamicCastObjCClass()) != 0))
  {
    v17 = v16;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v18 = [v15 quality];
    v19 = [v17 quality];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v20 = *(v5 + 8);
    v20(v8, v4);
    v20(v10, v4);
    v21 = v18 < v19;
  }

  else
  {
    v21 = sub_20DD63644();
    v22 = *(v5 + 8);
    v22(v8, v4);
    v22(v10, v4);
  }

  return v21 & 1;
}

uint64_t sub_20DA5EC48()
{
  v0 = sub_20DD64C44();
  __swift_allocate_value_buffer(v0, qword_27C844788);
  __swift_project_value_buffer(v0, qword_27C844788);
  return sub_20DD64C34();
}

uint64_t sub_20DA5ECD0(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_20DA73C60(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_20DA5ED4C(v6);
  return sub_20DD65764();
}

uint64_t sub_20DA5ED4C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_20DD65924();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C844370, &qword_20DD94DA0);
        v6 = sub_20DD65034();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_20DA5F170(v8, v9, a1, v4);
      *(v7 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_20DA5EE5C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_20DA5EE5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v41 = sub_20DD636C4();
  v8 = MEMORY[0x28223BE20](v41);
  v43 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v13 = &v34 - v12;
  v35 = a2;
  if (a3 != a2)
  {
    v42 = *a4;
    v40 = (v11 + 8);
    v14 = v42 + 8 * a3 - 8;
    v15 = a1 - a3;
LABEL_5:
    v37 = v14;
    v38 = a3;
    v16 = *(v42 + 8 * a3);
    v36 = v15;
    while (1)
    {
      v17 = *v14;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v18 = [v16 dateOfOccurrence];
      sub_20DD63674();

      v19 = [v17 dateOfOccurrence];
      sub_20DD63674();

      if ((sub_20DD63664() & 1) != 0 && (objc_opt_self(), (v20 = swift_dynamicCastObjCClass()) != 0) && (v21 = v20, objc_opt_self(), (v22 = swift_dynamicCastObjCClass()) != 0))
      {
        v23 = v22;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v24 = [v21 quality];
        v39 = [v23 quality];
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v25 = v41;
        v26 = *v40;
        (*v40)(v43, v41);
        v26(v13, v25);
        swift_unknownObjectRelease();
        result = swift_unknownObjectRelease();
        if (v24 >= v39)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v27 = v43;
        v28 = sub_20DD63644();
        v29 = *v40;
        v30 = v27;
        v31 = v41;
        (*v40)(v30, v41);
        v29(v13, v31);
        swift_unknownObjectRelease();
        result = swift_unknownObjectRelease();
        if ((v28 & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      if (!v42)
      {
        break;
      }

      v32 = *v14;
      v16 = *(v14 + 8);
      *v14 = v16;
      *(v14 + 8) = v32;
      v14 -= 8;
      if (__CFADD__(v15++, 1))
      {
LABEL_4:
        a3 = v38 + 1;
        v14 = v37 + 8;
        v15 = v36 - 1;
        if (v38 + 1 == v35)
        {
          return result;
        }

        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_20DA5F170(int64_t *a1, uint64_t a2, unint64_t a3, int64_t a4)
{
  v5 = v4;
  v126 = a1;
  v137 = sub_20DD636C4();
  v8 = MEMORY[0x28223BE20](v137);
  v10 = &v121 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v138 = &v121 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v131 = &v121 - v14;
  result = MEMORY[0x28223BE20](v13);
  v130 = &v121 - v17;
  v133 = a3;
  v18 = *(a3 + 8);
  if (v18 < 1)
  {
    v20 = MEMORY[0x277D84F90];
LABEL_101:
    if (!*v126)
    {
      goto LABEL_141;
    }

    a3 = v20;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a3;
LABEL_104:
      v141 = result;
      a3 = *(result + 16);
      if (a3 >= 2)
      {
        while (*v133)
        {
          v117 = *(result + 16 * a3);
          v118 = result;
          v119 = *(result + 16 * (a3 - 1) + 40);
          sub_20DA5FC00((*v133 + 8 * v117), (*v133 + 8 * *(result + 16 * (a3 - 1) + 32)), (*v133 + 8 * v119));
          if (v5)
          {
          }

          if (v119 < v117)
          {
            goto LABEL_128;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v118 = sub_20DA73550(v118);
          }

          if (a3 - 2 >= *(v118 + 2))
          {
            goto LABEL_129;
          }

          v120 = &v118[16 * a3];
          *v120 = v117;
          *(v120 + 1) = v119;
          v141 = v118;
          sub_20DA734C4(a3 - 1);
          result = v141;
          a3 = *(v141 + 16);
          if (a3 <= 1)
          {
          }
        }

        goto LABEL_139;
      }
    }

LABEL_135:
    result = sub_20DA73550(a3);
    goto LABEL_104;
  }

  v19 = 0;
  v136 = (v16 + 8);
  v20 = MEMORY[0x277D84F90];
  v124 = a4;
  v134 = v10;
  while (1)
  {
    v21 = v19;
    v22 = v19 + 1;
    if (v19 + 1 < v18)
    {
      v128 = v18;
      v123 = v20;
      a3 = *v133;
      v23 = *(*v133 + 8 * v22);
      v139 = *(*v133 + 8 * v19);
      v140 = v23;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      LODWORD(v129) = sub_20DA5E8B8(&v140, &v139);
      if (v5)
      {

        swift_unknownObjectRelease();
        return swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
      result = swift_unknownObjectRelease();
      v22 = v21 + 2;
      v24 = v128;
      if (v21 + 2 < v128)
      {
        v122 = v21;
        a3 += 8 * v21 + 16;
        do
        {
          v32 = *(a3 - 8);
          v31 = *a3;
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          v135 = v31;
          v33 = [v31 dateOfOccurrence];
          sub_20DD63674();

          v34 = [v32 dateOfOccurrence];
          sub_20DD63674();

          v35 = sub_20DD63664();
          v132 = v32;
          if ((v35 & 1) != 0 && (objc_opt_self(), (v36 = swift_dynamicCastObjCClass()) != 0) && (v37 = v36, objc_opt_self(), (v38 = swift_dynamicCastObjCClass()) != 0))
          {
            v39 = v38;
            swift_unknownObjectRetain();
            swift_unknownObjectRetain();
            v127 = [v37 quality];
            v125 = [v39 quality];
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            v40 = v137;
            v41 = *v136;
            (*v136)(v131, v137);
            v41(v130, v40);
            swift_unknownObjectRelease();
            result = swift_unknownObjectRelease();
            if (((v129 ^ (v127 >= v125)) & 1) == 0)
            {
              goto LABEL_16;
            }
          }

          else
          {
            v26 = v130;
            v25 = v131;
            v27 = sub_20DD63644();
            v28 = *v136;
            v29 = v25;
            v30 = v137;
            (*v136)(v29, v137);
            v28(v26, v30);
            v24 = v128;
            swift_unknownObjectRelease();
            result = swift_unknownObjectRelease();
            if ((v129 ^ v27))
            {
              goto LABEL_16;
            }
          }

          ++v22;
          a3 += 8;
        }

        while (v24 != v22);
        v22 = v24;
LABEL_16:
        a4 = v124;
        v21 = v122;
      }

      v20 = v123;
      if (v129)
      {
        if (v22 < v21)
        {
          goto LABEL_134;
        }

        if (v21 < v22)
        {
          v42 = 8 * v22 - 8;
          v43 = 8 * v21;
          v44 = v22;
          v45 = v21;
          do
          {
            if (v45 != --v44)
            {
              v47 = *v133;
              if (!*v133)
              {
                goto LABEL_138;
              }

              v46 = *(v47 + v43);
              *(v47 + v43) = *(v47 + v42);
              *(v47 + v42) = v46;
            }

            ++v45;
            v42 -= 8;
            v43 += 8;
          }

          while (v45 < v44);
        }
      }
    }

    v48 = v133[1];
    if (v22 < v48)
    {
      if (__OFSUB__(v22, v21))
      {
        goto LABEL_131;
      }

      if (v22 - v21 < a4)
      {
        break;
      }
    }

LABEL_49:
    if (v22 < v21)
    {
      goto LABEL_130;
    }

    v71 = v20;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v20 = v71;
    }

    else
    {
      result = sub_20D9E014C(0, *(v71 + 16) + 1, 1, v71);
      v20 = result;
    }

    a3 = *(v20 + 16);
    v72 = *(v20 + 24);
    v73 = a3 + 1;
    if (a3 >= v72 >> 1)
    {
      result = sub_20D9E014C((v72 > 1), a3 + 1, 1, v20);
      v20 = result;
    }

    *(v20 + 16) = v73;
    v74 = v20 + 16 * a3;
    *(v74 + 32) = v21;
    *(v74 + 40) = v22;
    if (!*v126)
    {
      goto LABEL_140;
    }

    v132 = v22;
    if (a3)
    {
      while (1)
      {
        v75 = v73 - 1;
        if (v73 >= 4)
        {
          break;
        }

        if (v73 == 3)
        {
          v76 = *(v20 + 32);
          v77 = *(v20 + 40);
          v86 = __OFSUB__(v77, v76);
          v78 = v77 - v76;
          v79 = v86;
LABEL_69:
          if (v79)
          {
            goto LABEL_119;
          }

          v92 = (v20 + 16 * v73);
          v94 = *v92;
          v93 = v92[1];
          v95 = __OFSUB__(v93, v94);
          v96 = v93 - v94;
          v97 = v95;
          if (v95)
          {
            goto LABEL_122;
          }

          v98 = (v20 + 32 + 16 * v75);
          v100 = *v98;
          v99 = v98[1];
          v86 = __OFSUB__(v99, v100);
          v101 = v99 - v100;
          if (v86)
          {
            goto LABEL_125;
          }

          if (__OFADD__(v96, v101))
          {
            goto LABEL_126;
          }

          if (v96 + v101 >= v78)
          {
            if (v78 < v101)
            {
              v75 = v73 - 2;
            }

            goto LABEL_90;
          }

          goto LABEL_83;
        }

        v102 = (v20 + 16 * v73);
        v104 = *v102;
        v103 = v102[1];
        v86 = __OFSUB__(v103, v104);
        v96 = v103 - v104;
        v97 = v86;
LABEL_83:
        if (v97)
        {
          goto LABEL_121;
        }

        v105 = v20 + 16 * v75;
        v107 = *(v105 + 32);
        v106 = *(v105 + 40);
        v86 = __OFSUB__(v106, v107);
        v108 = v106 - v107;
        if (v86)
        {
          goto LABEL_124;
        }

        if (v108 < v96)
        {
          goto LABEL_3;
        }

LABEL_90:
        a3 = v75 - 1;
        if (v75 - 1 >= v73)
        {
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
          goto LABEL_133;
        }

        if (!*v133)
        {
          goto LABEL_137;
        }

        v113 = v20;
        v114 = *(v20 + 32 + 16 * a3);
        v115 = *(v20 + 32 + 16 * v75 + 8);
        sub_20DA5FC00((*v133 + 8 * v114), (*v133 + 8 * *(v20 + 32 + 16 * v75)), (*v133 + 8 * v115));
        if (v5)
        {
        }

        if (v115 < v114)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v113 = sub_20DA73550(v113);
        }

        if (a3 >= *(v113 + 2))
        {
          goto LABEL_116;
        }

        v116 = &v113[16 * a3];
        *(v116 + 4) = v114;
        *(v116 + 5) = v115;
        v141 = v113;
        result = sub_20DA734C4(v75);
        v20 = v141;
        v73 = *(v141 + 16);
        if (v73 <= 1)
        {
          goto LABEL_3;
        }
      }

      v80 = v20 + 32 + 16 * v73;
      v81 = *(v80 - 64);
      v82 = *(v80 - 56);
      v86 = __OFSUB__(v82, v81);
      v83 = v82 - v81;
      if (v86)
      {
        goto LABEL_117;
      }

      v85 = *(v80 - 48);
      v84 = *(v80 - 40);
      v86 = __OFSUB__(v84, v85);
      v78 = v84 - v85;
      v79 = v86;
      if (v86)
      {
        goto LABEL_118;
      }

      v87 = (v20 + 16 * v73);
      v89 = *v87;
      v88 = v87[1];
      v86 = __OFSUB__(v88, v89);
      v90 = v88 - v89;
      if (v86)
      {
        goto LABEL_120;
      }

      v86 = __OFADD__(v78, v90);
      v91 = v78 + v90;
      if (v86)
      {
        goto LABEL_123;
      }

      if (v91 >= v83)
      {
        v109 = (v20 + 32 + 16 * v75);
        v111 = *v109;
        v110 = v109[1];
        v86 = __OFSUB__(v110, v111);
        v112 = v110 - v111;
        if (v86)
        {
          goto LABEL_127;
        }

        if (v78 < v112)
        {
          v75 = v73 - 2;
        }

        goto LABEL_90;
      }

      goto LABEL_69;
    }

LABEL_3:
    v19 = v132;
    v18 = v133[1];
    a4 = v124;
    if (v132 >= v18)
    {
      goto LABEL_101;
    }
  }

  v49 = (v21 + a4);
  if (__OFADD__(v21, a4))
  {
    goto LABEL_132;
  }

  if (v49 >= v48)
  {
    v49 = v133[1];
  }

  if (v49 < v21)
  {
LABEL_133:
    __break(1u);
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  if (v22 == v49)
  {
    goto LABEL_49;
  }

  v122 = v21;
  v123 = v20;
  v125 = v5;
  v135 = *v133;
  a3 = &v135[v22 - 1];
  v50 = v21 - v22;
  v127 = v49;
LABEL_37:
  v132 = v22;
  v51 = v135[v22];
  v128 = v50;
  v129 = a3;
  while (1)
  {
    v52 = *a3;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v53 = [v51 dateOfOccurrence];
    sub_20DD63674();

    v54 = [v52 dateOfOccurrence];
    sub_20DD63674();

    if ((sub_20DD63664() & 1) != 0 && (objc_opt_self(), (v55 = swift_dynamicCastObjCClass()) != 0) && (v56 = v55, objc_opt_self(), (v57 = swift_dynamicCastObjCClass()) != 0))
    {
      v58 = v57;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v59 = [v56 quality];
      v60 = [v58 quality];
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v61 = *v136;
      v62 = v10;
      v63 = v137;
      (*v136)(v62, v137);
      v61(v138, v63);
      swift_unknownObjectRelease();
      result = swift_unknownObjectRelease();
      if (v59 >= v60)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v64 = v138;
      v65 = sub_20DD63644();
      v66 = *v136;
      v67 = v10;
      v68 = v137;
      (*v136)(v67, v137);
      v66(v64, v68);
      swift_unknownObjectRelease();
      result = swift_unknownObjectRelease();
      if ((v65 & 1) == 0)
      {
LABEL_35:
        v10 = v134;
LABEL_36:
        v22 = (v132 + 1);
        a3 = v129 + 8;
        v50 = v128 - 1;
        if (v132 + 1 == v127)
        {
          v22 = v127;
          v5 = v125;
          v21 = v122;
          v20 = v123;
          goto LABEL_49;
        }

        goto LABEL_37;
      }
    }

    if (!v135)
    {
      break;
    }

    v69 = *a3;
    v51 = *(a3 + 8);
    *a3 = v51;
    *(a3 + 8) = v69;
    a3 -= 8;
    v70 = __CFADD__(v50++, 1);
    v10 = v134;
    if (v70)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
  return result;
}

uint64_t sub_20DA5FC00(void **a1, void **a2, void **a3)
{
  v72 = sub_20DD636C4();
  v6 = *(v72 - 8);
  v7 = MEMORY[0x28223BE20](v72);
  v9 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v70 = &v64 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v71 = (&v64 - v13);
  MEMORY[0x28223BE20](v12);
  v16 = &v64 - v15;
  v17 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v17 = a2 - a1;
  }

  v18 = v17 >> 3;
  v19 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v19 = a3 - a2;
  }

  v20 = v19 >> 3;
  v73 = v14;
  if (v18 >= v19 >> 3)
  {
    if (v14 != a2 || &a2[v20] <= v14)
    {
      memmove(v14, a2, 8 * v20);
      v14 = v73;
    }

    v74 = &v14[v20];
    if (a3 - a2 < 8)
    {
      v40 = a2;
    }

    else
    {
      v40 = a2;
      if (a2 > a1)
      {
        v66 = (v6 + 8);
        v67 = v9;
LABEL_30:
        v41 = v40 - 1;
        --a3;
        v42 = v74;
        v68 = v40 - 1;
        v69 = v40;
        do
        {
          v43 = *(v42 - 1);
          v71 = (v42 - 8);
          v44 = *v41;
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          v45 = [v43 dateOfOccurrence];
          sub_20DD63674();

          v46 = [v44 dateOfOccurrence];
          sub_20DD63674();

          if ((sub_20DD63664() & 1) != 0 && (objc_opt_self(), (v47 = swift_dynamicCastObjCClass()) != 0) && (v48 = v47, objc_opt_self(), (v49 = swift_dynamicCastObjCClass()) != 0))
          {
            v50 = v49;
            swift_unknownObjectRetain();
            swift_unknownObjectRetain();
            v65 = [v48 quality];
            v51 = [v50 quality];
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            v52 = *v66;
            v53 = v72;
            (*v66)(v9, v72);
            v52(v70, v53);
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            if (v65 < v51)
            {
              goto LABEL_40;
            }
          }

          else
          {
            v54 = a3;
            v55 = a1;
            v56 = v70;
            v57 = sub_20DD63644();
            v58 = *v66;
            v59 = v9;
            v60 = v72;
            (*v66)(v59, v72);
            v61 = v56;
            a1 = v55;
            a3 = v54;
            v58(v61, v60);
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            if (v57)
            {
LABEL_40:
              v62 = v68;
              v14 = v73;
              if (a3 + 1 != v69)
              {
                *a3 = *v68;
              }

              v9 = v67;
              if (v74 <= v14 || (v40 = v62, v62 <= a1))
              {
                v40 = v62;
                goto LABEL_48;
              }

              goto LABEL_30;
            }
          }

          v14 = v73;
          v42 = v71;
          if (a3 + 1 != v74)
          {
            *a3 = *v71;
          }

          --a3;
          v74 = v42;
          v9 = v67;
          v41 = v68;
        }

        while (v42 > v14);
        v74 = v42;
        v40 = v69;
      }
    }
  }

  else
  {
    if (v14 != a1 || &a1[v18] <= v14)
    {
      v21 = v18;
      memmove(v14, a1, 8 * v18);
      v18 = v21;
      v14 = v73;
    }

    v74 = &v14[v18];
    if (a2 - a1 >= 8)
    {
      v22 = a2;
      if (a2 < a3)
      {
        v70 = (v6 + 8);
        do
        {
          v69 = v22;
          v23 = *v22;
          v73 = v14;
          v24 = *v14;
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          v25 = [v23 dateOfOccurrence];
          sub_20DD63674();

          v26 = [v24 dateOfOccurrence];
          sub_20DD63674();

          if ((sub_20DD63664() & 1) != 0 && (objc_opt_self(), (v27 = swift_dynamicCastObjCClass()) != 0) && (v28 = v27, objc_opt_self(), (v29 = swift_dynamicCastObjCClass()) != 0))
          {
            v30 = v29;
            swift_unknownObjectRetain();
            swift_unknownObjectRetain();
            v31 = [v28 quality];
            v68 = [v30 quality];
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            v32 = *v70;
            v33 = v72;
            (*v70)(v71, v72);
            v32(v16, v33);
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            if (v31 >= v68)
            {
              goto LABEL_16;
            }
          }

          else
          {
            v35 = v71;
            v36 = sub_20DD63644();
            v37 = *v70;
            v38 = v35;
            v39 = v72;
            (*v70)(v38, v72);
            v37(v16, v39);
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            if ((v36 & 1) == 0)
            {
LABEL_16:
              v34 = v73;
              v14 = v73 + 1;
              v22 = v69;
              if (a1 == v73)
              {
                goto LABEL_18;
              }

LABEL_17:
              *a1 = *v34;
              goto LABEL_18;
            }
          }

          v34 = v69;
          v22 = (v69 + 8);
          v14 = v73;
          if (a1 != v69)
          {
            goto LABEL_17;
          }

LABEL_18:
          ++a1;
        }

        while (v14 < v74 && v22 < a3);
      }
    }

    v40 = a1;
  }

LABEL_48:
  if (v40 != v14 || v40 >= (v14 + ((v74 - v14 + (v74 - v14 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v40, v14, 8 * ((v74 - v14) / 8));
  }

  return 1;
}

uint64_t sub_20DA602B8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8443F0, &qword_20DD93820);
  result = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v14 - v4;
  if (a1)
  {
    v6 = qword_27C8424A8;
    v7 = a1;
    if (v6 != -1)
    {
      swift_once();
    }

    v8 = sub_20DD64C44();
    __swift_project_value_buffer(v8, qword_27C844788);
    v9 = sub_20DD64C24();
    v10 = sub_20DD65344();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_20D9BF000, v9, v10, "Diagnostic attachment request received", v11, 2u);
      MEMORY[0x20F327D10](v11, -1, -1);
    }

    v12 = sub_20DD65114();
    (*(*(v12 - 8) + 56))(v5, 1, 1, v12);
    v13 = swift_allocObject();
    v13[2] = 0;
    v13[3] = 0;
    v13[4] = v7;
    sub_20DA1C514(0, 0, v5, &unk_20DD95D78, v13);
  }

  return result;
}

uint64_t sub_20DA60480(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843A70, &qword_20DD94260);
  MEMORY[0x28223BE20](v4 - 8);
  v48 = &v48 - v5;
  v6 = sub_20DD63744();
  v50 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  v60 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v48 - v9;
  v64 = a1;
  v65 = MEMORY[0x277D84F90];

  v11 = [a2 accessories];
  sub_20D9D7510(0, &qword_27C844290, 0x277CD1650);
  v12 = sub_20DD64FD4();

  if (v12 >> 62)
  {
    goto LABEL_36;
  }

  for (i = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_20DD655B4())
  {
    v14 = 0;
    v15 = v12 & 0xC000000000000001;
    v54 = v12 + 32;
    v55 = v12 & 0xFFFFFFFFFFFFFF8;
    v59 = v50 + 16;
    v16 = (v50 + 8);
    v49 = MEMORY[0x277D84F90];
    v62 = (v50 + 8);
    v63 = v6;
    v52 = i;
    v53 = v12;
    v51 = v12 & 0xC000000000000001;
    while (1)
    {
      if (v15)
      {
        v17 = MEMORY[0x20F326680](v14, v12);
      }

      else
      {
        if (v14 >= *(v55 + 16))
        {
          goto LABEL_35;
        }

        v17 = *(v54 + 8 * v14);
      }

      v18 = v17;
      if (__OFADD__(v14++, 1))
      {
        break;
      }

      v20 = [v17 cameraProfiles];
      if (v20)
      {
        v21 = v20;
        v58 = v18;
        sub_20D9D7510(0, &qword_27C844878, 0x277CD1920);
        v22 = sub_20DD64FD4();

        if (v22 >> 62)
        {
          if (!sub_20DD655B4())
          {
LABEL_30:

            goto LABEL_5;
          }
        }

        else if (!*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_30;
        }

        if ((v22 & 0xC000000000000001) != 0)
        {
          v23 = MEMORY[0x20F326680](0, v22);
        }

        else
        {
          if (!*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_34;
          }

          v23 = *(v22 + 32);
        }

        v24 = v23;

        v25 = v24;
        v26 = [v25 uniqueIdentifier];
        sub_20DD63714();

        if (*(a1 + 16))
        {
          v56 = v14;
          v57 = v25;
          sub_20DA62600(&qword_280E02290, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
          v27 = sub_20DD64E24();
          v28 = -1 << *(a1 + 32);
          v29 = v27 & ~v28;
          v61 = a1 + 56;
          if ((*(a1 + 56 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29))
          {
            v30 = ~v28;
            v31 = *(v50 + 72);
            v32 = *(v50 + 16);
            while (1)
            {
              v33 = a1;
              v34 = *(a1 + 48) + v31 * v29;
              v35 = v60;
              v36 = v63;
              v32(v60, v34, v63);
              sub_20DA62600(&qword_280E02288, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
              v37 = v10;
              v38 = sub_20DD64E64();
              v39 = *v62;
              (*v62)(v35, v36);
              if (v38)
              {
                break;
              }

              v29 = (v29 + 1) & v30;
              v10 = v37;
              a1 = v33;
              if (((*(v61 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
              {
                goto LABEL_22;
              }
            }

            v41 = v62;
            v6 = v63;
            v39(v37, v63);
            v42 = v57;
            MEMORY[0x20F325F00]();
            if (*((v65 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v65 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_20DD65014();
            }

            sub_20DD65054();
            v49 = v65;
            v43 = [v42 uniqueIdentifier];

            v44 = v60;
            sub_20DD63714();

            v45 = v48;
            sub_20D9EA40C(v44, v48);

            v39(v44, v6);
            sub_20D9D76EC(v45, &unk_27C843A70, &qword_20DD94260);
            a1 = v64;
            v12 = v53;
            if (!*(v64 + 16))
            {
LABEL_32:

              v46 = v49;
              goto LABEL_38;
            }

            v16 = v41;
            v10 = v37;
          }

          else
          {
LABEL_22:

            v40 = v57;
            v16 = v62;
            v6 = v63;
            (*v62)(v10, v63);
            v12 = v53;
          }

          v15 = v51;
          i = v52;
          v14 = v56;
        }

        else
        {

          (*v16)(v10, v6);
        }
      }

      else
      {
      }

LABEL_5:
      if (v14 == i)
      {
        goto LABEL_32;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    ;
  }

  v46 = MEMORY[0x277D84F90];
LABEL_38:

  return v46;
}

void sub_20DA60AC0(void *a1)
{
  v54[1] = *MEMORY[0x277D85DE8];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8442B8, &qword_20DD94B60);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v50 - v4;
  v6 = sub_20DD63514();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v50 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v50 - v14;
  type metadata accessor for CameraEventDebugLogger(0);
  static CameraEventDebugLogger.dateIntervalFileURL(for:)(a1, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_20D9D76EC(v5, &qword_27C8442B8, &qword_20DD94B60);
    if (qword_27C8424A8 != -1)
    {
      swift_once();
    }

    v16 = sub_20DD64C44();
    __swift_project_value_buffer(v16, qword_27C844788);
    v17 = sub_20DD64C24();
    v18 = sub_20DD65384();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_20D9BF000, v17, v18, "Could not get date interval file", v19, 2u);
      MEMORY[0x20F327D10](v19, -1, -1);
    }
  }

  else
  {
    v53 = v1;
    (*(v7 + 32))(v15, v5, v6);
    v20 = [objc_opt_self() defaultManager];
    sub_20DD63504();
    v21 = sub_20DD64E74();

    v22 = [v20 fileExistsAtPath_];

    if (v22)
    {
      v23 = sub_20DD634D4();
      v54[0] = 0;
      v24 = v15;
      v25 = [v20 removeItemAtURL:v23 error:v54];

      if (v25)
      {
        v26 = qword_27C8424A8;
        v27 = v54[0];
        if (v26 != -1)
        {
          swift_once();
        }

        v28 = sub_20DD64C44();
        __swift_project_value_buffer(v28, qword_27C844788);
        (*(v7 + 16))(v13, v24, v6);
        v29 = sub_20DD64C24();
        v30 = sub_20DD65344();
        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          v54[0] = swift_slowAlloc();
          v52 = v24;
          v32 = v54[0];
          *v31 = 136315138;
          v50 = sub_20DD63504();
          v51 = v20;
          v34 = v33;
          v35 = *(v7 + 8);
          v35(v13, v6);
          v36 = sub_20D9E0B38(v50, v34, v54);

          *(v31 + 4) = v36;
          _os_log_impl(&dword_20D9BF000, v29, v30, "Successfully removed date interval file: %s", v31, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v32);
          MEMORY[0x20F327D10](v32, -1, -1);
          MEMORY[0x20F327D10](v31, -1, -1);

          v35(v52, v6);
        }

        else
        {

          v49 = *(v7 + 8);
          v49(v13, v6);
          v49(v24, v6);
        }
      }

      else
      {
        v47 = v54[0];
        sub_20DD634A4();

        swift_willThrow();
        (*(v7 + 8))(v24, v6);
      }
    }

    else
    {
      if (qword_27C8424A8 != -1)
      {
        swift_once();
      }

      v37 = sub_20DD64C44();
      __swift_project_value_buffer(v37, qword_27C844788);
      (*(v7 + 16))(v10, v15, v6);
      v38 = sub_20DD64C24();
      v39 = sub_20DD65384();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        v54[0] = v50;
        *v40 = 136315138;
        v41 = sub_20DD63504();
        v51 = v20;
        v52 = v15;
        v43 = v42;
        v44 = *(v7 + 8);
        v44(v10, v6);
        v45 = sub_20D9E0B38(v41, v43, v54);

        *(v40 + 4) = v45;
        _os_log_impl(&dword_20D9BF000, v38, v39, "Date interval file does not exist: %s", v40, 0xCu);
        v46 = v50;
        __swift_destroy_boxed_opaque_existential_0(v50);
        MEMORY[0x20F327D10](v46, -1, -1);
        MEMORY[0x20F327D10](v40, -1, -1);

        v44(v52, v6);
      }

      else
      {

        v48 = *(v7 + 8);
        v48(v10, v6);
        v48(v15, v6);
      }
    }
  }
}

uint64_t sub_20DA611A4(uint64_t a1, uint64_t a2)
{
  v2[21] = a1;
  v2[22] = a2;
  v3 = sub_20DD636C4();
  v2[23] = v3;
  v2[24] = *(v3 - 8);
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v4 = sub_20DD63484();
  v2[28] = v4;
  v2[29] = *(v4 - 8);
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DA612E4, 0, 0);
}

uint64_t sub_20DA612E4()
{
  v43 = v0;
  if (qword_27C8424A8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 248);
  v3 = *(v0 + 224);
  v2 = *(v0 + 232);
  v4 = *(v0 + 168);
  v5 = *(v0 + 176);
  v6 = sub_20DD64C44();
  *(v0 + 256) = __swift_project_value_buffer(v6, qword_27C844788);
  (*(v2 + 16))(v1, v4, v3);
  v7 = v5;
  v8 = sub_20DD64C24();
  v9 = sub_20DD65344();

  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 248);
  v13 = *(v0 + 224);
  v12 = *(v0 + 232);
  if (v10)
  {
    v40 = *(v0 + 176);
    v14 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v42 = v41;
    *v14 = 136315394;
    sub_20DA62600(&qword_27C844868, MEMORY[0x277CC88A8], MEMORY[0x277CC88E0]);
    v15 = sub_20DD65934();
    v38 = v9;
    v17 = v16;
    v18 = *(v12 + 8);
    v18(v11, v13);
    v19 = sub_20D9E0B38(v15, v17, &v42);

    *(v14 + 4) = v19;
    *(v14 + 12) = 2112;
    *(v14 + 14) = v40;
    *v39 = v40;
    v20 = v40;
    _os_log_impl(&dword_20D9BF000, v8, v38, "Serializing cloud events from %s for %@", v14, 0x16u);
    sub_20D9D76EC(v39, &unk_27C843630, &qword_20DD94080);
    MEMORY[0x20F327D10](v39, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v41);
    MEMORY[0x20F327D10](v41, -1, -1);
    MEMORY[0x20F327D10](v14, -1, -1);
  }

  else
  {

    v18 = *(v12 + 8);
    v18(v11, v13);
  }

  *(v0 + 264) = v18;
  v21 = [*(v0 + 176) recordingEventManager];
  *(v0 + 272) = v21;
  if (v21)
  {
    v22 = v21;
    v23 = *(v0 + 192);
    v24 = *(v0 + 200);
    v25 = *(v0 + 184);
    v26 = [objc_allocWithZone(type metadata accessor for CameraRecordingEventManagerObserver()) init];
    *(v0 + 280) = v26;
    [v22 addObserver:v26 queue:0];
    sub_20DD63464();
    sub_20DD63434();
    sub_20DD63614();
    (*(v23 + 8))(v24, v25);
    sub_20DD63444();
    v27 = sub_20DD63414();
    *(v0 + 288) = v27;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 160;
    *(v0 + 24) = sub_20DA6186C;
    v28 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844860, &qword_20DD95DC0);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_20DA5DE3C;
    *(v0 + 104) = &block_descriptor_7;
    *(v0 + 112) = v28;
    [v22 fetchEventsWithDateInterval:v27 quality:0 limit:0x7FFFFFFFFFFFFFFFLL shouldOrderAscending:1 completion:?];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {
    v29 = *(v0 + 176);
    v30 = sub_20DD64C24();
    v31 = sub_20DD65364();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = *(v0 + 176);
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *v33 = 138412290;
      *(v33 + 4) = v32;
      *v34 = v32;
      v35 = v32;
      _os_log_impl(&dword_20D9BF000, v30, v31, "No recording event manager for camera profile: %@", v33, 0xCu);
      sub_20D9D76EC(v34, &unk_27C843630, &qword_20DD94080);
      MEMORY[0x20F327D10](v34, -1, -1);
      MEMORY[0x20F327D10](v33, -1, -1);
    }

    v36 = *(v0 + 8);

    return v36();
  }
}

uint64_t sub_20DA6186C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 296) = v1;
  if (v1)
  {
    v2 = sub_20DA61F9C;
  }

  else
  {
    v2 = sub_20DA6197C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20DA6197C()
{
  v25 = v0;
  v1 = *(v0 + 280);
  v2 = *(v0 + 288);
  v3 = *(v0 + 272);

  [v3 removeObserver_];
  v4 = v1 + OBJC_IVAR___HFCameraRecordingEventManagerObserver_recordingEventsByUUID;
  os_unfair_lock_lock(v4);
  v5 = *(v4 + 8);
  v6 = *(v5 + 16);
  if (v6)
  {
    v23 = v0;
    v7 = sub_20D9EF64C();
    v0 = sub_20D9EF640();
    swift_bridgeObjectRetain_n();
    sub_20DA55544(v24);
    if (v0 != v6)
    {
      __break(1u);
      goto LABEL_18;
    }

    v0 = v23;
  }

  else
  {

    v7 = MEMORY[0x277D84F90];
  }

  v24 = v7;
  sub_20DA5ECD0(&v24);

  v5 = v24;
  *(v0 + 304) = v24;
  os_unfair_lock_unlock(v4);

  v8 = sub_20DD64C24();
  v9 = sub_20DD65344();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 134217984;
    if (v5 < 0 || (v5 & 0x4000000000000000) != 0)
    {
      v11 = sub_20DD655B4();
    }

    else
    {
      v11 = *(v5 + 16);
    }

    *(v10 + 4) = v11;

    _os_log_impl(&dword_20D9BF000, v8, v9, "Fetched %ld events", v10, 0xCu);
    MEMORY[0x20F327D10](v10, -1, -1);
  }

  else
  {
  }

  if (v5 < 0 || (v5 & 0x4000000000000000) != 0)
  {
LABEL_18:
    if (sub_20DD655B4())
    {
      goto LABEL_14;
    }

    goto LABEL_19;
  }

  if (*(v5 + 16))
  {
LABEL_14:
    v12 = *(v0 + 224);
    v13 = *(v0 + 232);
    v14 = *(v0 + 176);
    v15 = type metadata accessor for CameraEventDebugLogger(0);
    v16 = swift_allocObject();
    swift_defaultActor_initialize();
    v16[15] = 0;
    v16[16] = 0;
    v16[17] = sub_20D9D5DF8(MEMORY[0x277D84F90]);
    (*(v13 + 56))(v16 + OBJC_IVAR___HFCameraEventDebugLogger_previousViewModelDateInterval, 1, 1, v12);
    v16[14] = v14;
    *(v0 + 144) = v16;
    *(v0 + 152) = v15;
    v17 = v14;
    *(v0 + 312) = objc_msgSendSuper2((v0 + 144), sel_init);
    v18 = swift_task_alloc();
    *(v0 + 320) = v18;
    *v18 = v0;
    v18[1] = sub_20DA61D6C;

    return sub_20DA241E4(v5, 2);
  }

LABEL_19:
  v21 = *(v0 + 272);
  v20 = *(v0 + 280);
  (*(v0 + 264))(*(v0 + 240), *(v0 + 224));

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_20DA61D6C(uint64_t a1)
{
  *(*v2 + 328) = v1;

  if (v1)
  {

    v3 = sub_20DA62084;
  }

  else
  {

    v3 = sub_20DA61EB8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20DA61EB8()
{
  sub_20DA60AC0(*(v0 + 176));
  v1 = *(v0 + 312);
  v3 = *(v0 + 272);
  v2 = *(v0 + 280);
  (*(v0 + 264))(*(v0 + 240), *(v0 + 224));

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_20DA61F9C(uint64_t a1)
{
  v2 = v1[36];
  v4 = v1[34];
  v3 = v1[35];
  v5 = v1[33];
  v6 = v1[30];
  v7 = v1[28];
  swift_willThrow();

  v5(v6, v7);

  v8 = v1[1];

  return v8();
}

uint64_t sub_20DA62084()
{
  v2 = *(v0 + 272);
  v1 = *(v0 + 280);
  v3 = *(v0 + 264);
  v4 = *(v0 + 240);
  v5 = *(v0 + 224);

  v3(v4, v5);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_20DA62158(uint64_t a1)
{
  v49 = sub_20DD63744();
  MEMORY[0x28223BE20](v49);
  v5 = v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = a1 + 56;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 56);
  v10 = v1 + OBJC_IVAR___HFCameraRecordingEventManagerObserver_recordingEventsByUUID;
  v11 = (v7 + 63) >> 6;
  v44[1] = v3 + 16;
  v45 = v3;
  v46 = (v3 + 8);

  v12 = 0;
  v47 = v10;
  v48 = a1;
  while (v9)
  {
LABEL_11:
    v14 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    sub_20D9D7288(*(a1 + 48) + 40 * (v14 | (v12 << 6)), v54);
    v51 = v54[0];
    v52 = v54[1];
    v53 = v55;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C844370, &qword_20DD94DA0);
    if (swift_dynamicCast())
    {
      v15 = v50;
      os_unfair_lock_lock(v10);
      v16 = [v15 uniqueIdentifier];
      sub_20DD63714();

      swift_unknownObjectRetain();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v51 = *(v10 + 8);
      v18 = v51;
      *(v10 + 8) = 0x8000000000000000;
      v19 = v5;
      v28 = sub_20D9CB38C(v5, v20, v21, v22, v23);
      v29 = *(v18 + 16);
      v30 = (v24 & 1) == 0;
      v31 = v29 + v30;
      if (__OFADD__(v29, v30))
      {
        goto LABEL_25;
      }

      v32 = v24;
      if (*(v18 + 24) >= v31)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v39 = v51;
          if (v24)
          {
            goto LABEL_4;
          }
        }

        else
        {
          sub_20D9D2FF4(v31, v24, v25, v26, v27);
          v39 = v51;
          if (v32)
          {
            goto LABEL_4;
          }
        }
      }

      else
      {
        sub_20D9CEA00(v31, isUniquelyReferenced_nonNull_native, v25, v26, v27);
        v37 = sub_20D9CB38C(v19, v33, v34, v35, v36);
        if ((v32 & 1) != (v38 & 1))
        {
          goto LABEL_27;
        }

        v28 = v37;
        v39 = v51;
        if (v32)
        {
LABEL_4:
          *(v39[7] + 8 * v28) = v15;
          swift_unknownObjectRelease();
          v5 = v19;
          goto LABEL_5;
        }
      }

      v39[(v28 >> 6) + 8] |= 1 << v28;
      v5 = v19;
      (*(v45 + 16))(v39[6] + *(v45 + 72) * v28, v19, v49);
      *(v39[7] + 8 * v28) = v15;
      v40 = v39[2];
      v41 = __OFADD__(v40, 1);
      v42 = v40 + 1;
      if (v41)
      {
        goto LABEL_26;
      }

      v39[2] = v42;
LABEL_5:
      (*v46)(v5, v49);
      v10 = v47;
      *(v47 + 8) = v39;
      os_unfair_lock_unlock(v10);
      swift_unknownObjectRelease();
      a1 = v48;
    }
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v11)
    {
    }

    v9 = *(v6 + 8 * v13);
    ++v12;
    if (v9)
    {
      v12 = v13;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_20DD659E4();
  __break(1u);
  return result;
}

uint64_t sub_20DA624E0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_20D9C76B4;

  return sub_20DA5AB9C();
}

uint64_t sub_20DA62594(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_20DA62600(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_20DA62648()
{
  sub_20DA65904();

  return result;
}

uint64_t sub_20DA62670(uint64_t a1)
{
  v3 = qword_27C844880;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

id sub_20DA62728(void *a1)
{
  v1 = a1;
  sub_20DA62798();

  sub_20DA65948();
  sub_20DA65994();
  v2 = sub_20DD651C4();

  return v2;
}

uint64_t sub_20DA62798()
{
  swift_beginAccess();
  sub_20DA65948();

  swift_getWitnessTable();
  sub_20DA65994();
  v0 = sub_20DD65634();

  return v0;
}

id sub_20DA62868()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8443F0, &qword_20DD93820);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v17 - v4;
  v6 = qword_27C844880;
  swift_beginAccess();
  v7 = *(v0 + v6);
  v8 = sub_20DD65114();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = *((v2 & v1) + 0x50);
  v10[5] = v9;
  v10[6] = v7;
  v11 = objc_allocWithZone(MEMORY[0x277D2C900]);

  v12 = [v11 init];
  [v12 setDescriptor_];
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_20DD95DE0;
  v13[5] = v10;
  v13[6] = v12;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_20DD95DE8;
  v14[5] = v13;

  v15 = v12;

  sub_20D9D6B40(0, 0, v5, 0, 0, &unk_20DD95DF0, v14);

  sub_20D9D76EC(v5, &qword_27C8443F0, &qword_20DD93820);
  return v15;
}

uint64_t sub_20DA62AF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[19] = a4;
  v5[20] = a5;
  v5[18] = a3;
  return MEMORY[0x2822009F8](sub_20DA62B14, 0, 0);
}

uint64_t sub_20DA62B14()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[21] = Strong;
  if (Strong)
  {
    v2 = *((*MEMORY[0x277D85000] & *Strong) + 0x78);
    v8 = (v2 + *v2);
    v3 = swift_task_alloc();
    v0[22] = v3;
    *v3 = v0;
    v3[1] = sub_20DA62CBC;
    v4 = v0[19];

    return v8(v4);
  }

  else
  {
    v6 = [objc_allocWithZone(HFItemProviderReloadResults) initWithAddedItems:0 removedItems:0 existingItems:0];
    v7 = v0[1];

    return v7(v6);
  }
}

uint64_t sub_20DA62CBC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 184) = a1;
  *(v3 + 192) = v1;

  if (v1)
  {
    v4 = sub_20DA62FDC;
  }

  else
  {

    v4 = sub_20DA62DD8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_20DA62DD8()
{
  v1 = v0[23];
  v11 = v0[19];

  v2 = [v1 addedItems];
  swift_getWitnessTable();
  v3 = sub_20DD651E4();

  v0[17] = v3;
  sub_20DD652C4();
  swift_getWitnessTable();
  sub_20DD652B4();
  v4 = [v1 removedItems];
  sub_20DD651E4();

  sub_20DD652A4();

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = qword_27C844880;
    v7 = Strong;
    swift_beginAccess();
    *&v7[v6] = v11;
  }

  objc_opt_self();
  v8 = swift_dynamicCastObjCClassUnconditional();
  v9 = v0[1];

  return v9(v8);
}

uint64_t sub_20DA62FDC()
{
  v1 = sub_20DD65364();
  if (qword_27C842498 != -1)
  {
    swift_once();
  }

  v2 = qword_27C84C660;
  if (os_log_type_enabled(qword_27C84C660, v1))
  {
    v3 = *(v0 + 192);
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    v6 = v3;
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v7;
    *v5 = v7;
    _os_log_impl(&dword_20D9BF000, v2, v1, "SwiftItemProvider threw error %@. Returning unchanged results", v4, 0xCu);
    sub_20D9D76EC(v5, &unk_27C843630, &qword_20DD94080);
    MEMORY[0x20F327D10](v5, -1, -1);
    MEMORY[0x20F327D10](v4, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    swift_beginAccess();

    sub_20DA65948();
    swift_getWitnessTable();
    sub_20DA65994();
    sub_20DD65634();

    v10 = sub_20DD651C4();
  }

  else
  {
    v10 = 0;
  }

  v11 = *(v0 + 192);
  v12 = [objc_allocWithZone(HFItemProviderReloadResults) initWithAddedItems:0 removedItems:0 existingItems:v10];

  v13 = *(v0 + 8);

  return v13(v12);
}

id sub_20DA63254(void *a1)
{
  v1 = a1;
  v2 = sub_20DA62868();

  return v2;
}

uint64_t sub_20DA632EC()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8434E8, &qword_20DD95E00);
  v2 = *(v1 + 80);
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v4 = sub_20DA652FC(0, 0, 0, v2);
  v5 = *(v0 + 8);

  return v5(v4);
}

id SwiftItemProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SwiftItemProvider.init()()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x50);
  v2 = sub_20DD65024();
  if (sub_20DD65064())
  {
    WitnessTable = swift_getWitnessTable();
    v4 = sub_20DA65C30(v2, v1, WitnessTable);
  }

  else
  {
    v4 = MEMORY[0x277D84FA0];
  }

  *(v0 + qword_27C844880) = v4;
  v8.receiver = v0;
  v8.super_class = type metadata accessor for SwiftItemProvider(0, v1, v5, v6);
  return objc_msgSendSuper2(&v8, sel_init);
}

id SwiftItemProvider.__deallocating_deinit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for SwiftItemProvider(0, *((*MEMORY[0x277D85000] & *v4) + 0x50), a3, a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

id static SwiftItemProvider.diffItems<A, B, C>(with:existingItems:keyProvider:itemProvider:itemKeyProvider:)(void *a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v135 = a8;
  v124 = a7;
  v128 = a6;
  v127 = a5;
  v134 = a4;
  v131 = a3;
  v14 = a2[3];
  v123 = a2[4];
  v126 = a2;
  v125 = __swift_project_boxed_opaque_existential_0(a2, v14);
  swift_getTupleTypeMetadata2();
  v15 = sub_20DD65024();
  v16 = sub_20DA65618(v15, a10, a11, a12);

  v152 = v12;
  v153 = v16;
  v145 = *(v12 + 80);
  v146 = a9;
  v147 = a10;
  v148 = a11;
  v149 = a12;
  v150 = v124;
  v151 = v135;
  v135 = v12;
  v137 = a11;
  sub_20DD64DF4();
  sub_20DD64F84();
  v17 = v154;
  v18 = a1[3];
  v124 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v18);
  swift_getTupleTypeMetadata2();
  v19 = sub_20DD65024();
  v20 = sub_20DA65618(v19, a10, a9, a12);

  v153 = v20;
  v132 = v145;
  v138 = v145;
  v139 = a9;
  v140 = a10;
  v141 = a11;
  v142 = a12;
  v143 = v131;
  v144 = v134;
  sub_20DD64DF4();
  sub_20DD64F84();
  v123 = v129;
  v21 = v154;
  v133 = a9;
  v22 = sub_20DD64DE4();

  WitnessTable = swift_getWitnessTable();
  v24 = sub_20DD652D4();
  v25 = sub_20DD64DE4();
  v26 = swift_getWitnessTable();
  v27 = MEMORY[0x20F326160](&v154, v24, a10, v25, a12, v26);
  v154 = v17;

  v28 = sub_20DD652D4();
  v154 = v21;
  v122 = MEMORY[0x20F326160](&v154, v28, a10, v22, a12, WitnessTable);
  v154 = v17;
  v129 = v17;

  sub_20DD652D4();
  v125 = v21;
  v154 = v21;
  v134 = sub_20DD65214();
  if (qword_27C842418 != -1)
  {
    swift_once();
  }

  v29 = sub_20DD64C44();
  v30 = __swift_project_value_buffer(v29, qword_27C84C588);

  v31 = sub_20DD64C24();
  v32 = sub_20DD65354();

  v131 = v30;
  v136 = a10;
  v124 = v27;
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v154 = v34;
    *v33 = 136315394;
    v35 = sub_20DD65B04();
    v37 = sub_20D9E0B38(v35, v36, &v154);

    *(v33 + 4) = v37;
    *(v33 + 12) = 2080;
    v153 = v27;
    sub_20DD652C4();
    swift_getWitnessTable();
    v38 = sub_20DD65934();
    v40 = sub_20D9E0B38(v38, v39, &v154);

    *(v33 + 14) = v40;
    _os_log_impl(&dword_20D9BF000, v31, v32, "%s-diffItems: newKeys=%s", v33, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F327D10](v34, -1, -1);
    MEMORY[0x20F327D10](v33, -1, -1);
  }

  v41 = v122;

  v42 = sub_20DD64C24();
  v43 = sub_20DD65354();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v154 = v45;
    *v44 = 136315394;
    v46 = sub_20DD65B04();
    v48 = sub_20D9E0B38(v46, v47, &v154);

    *(v44 + 4) = v48;
    *(v44 + 12) = 2080;
    v153 = v41;
    sub_20DD652C4();
    swift_getWitnessTable();
    v49 = sub_20DD65934();
    v51 = v50;

    v52 = sub_20D9E0B38(v49, v51, &v154);

    *(v44 + 14) = v52;
    _os_log_impl(&dword_20D9BF000, v42, v43, "%s-diffItems: removedKeys=%s", v44, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F327D10](v45, -1, -1);
    MEMORY[0x20F327D10](v44, -1, -1);
  }

  else
  {
  }

  v53 = v134;

  v54 = sub_20DD64C24();
  v55 = sub_20DD65354();

  v130 = a12;
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v154 = v57;
    *v56 = 136315394;
    v58 = sub_20DD65B04();
    v60 = sub_20D9E0B38(v58, v59, &v154);

    *(v56 + 4) = v60;
    *(v56 + 12) = 2080;
    v153 = v53;
    sub_20DD652C4();
    swift_getWitnessTable();
    v61 = sub_20DD65934();
    v63 = sub_20D9E0B38(v61, v62, &v154);

    *(v56 + 14) = v63;
    _os_log_impl(&dword_20D9BF000, v54, v55, "%s-diffItems: existingKeys=%s", v56, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F327D10](v57, -1, -1);
    MEMORY[0x20F327D10](v56, -1, -1);
  }

  __swift_project_boxed_opaque_existential_0(v126, v126[3]);
  v64 = v137;
  v65 = swift_getWitnessTable();
  v153 = sub_20DD64DA4();
  MEMORY[0x28223BE20](v153);
  v66 = v132;
  v67 = v130;
  v121[1] = v65;
  v122 = sub_20DD652C4();
  v68 = sub_20DD64F84();
  v69 = v123;
  v123 = v121;
  v126 = v154;
  v154 = v124;
  MEMORY[0x28223BE20](v68);
  v120[2] = v66;
  v120[3] = v70;
  v120[4] = v71;
  v120[5] = v64;
  v120[6] = v67;
  v120[7] = v127;
  v120[8] = v128;
  v120[9] = v125;
  sub_20DD652C4();
  swift_getWitnessTable();
  v72 = sub_20DD64F74();

  if (v69)
  {
  }

  else
  {
    v154 = v72;
    sub_20DD65084();
    v127 = swift_getWitnessTable();
    v128 = sub_20DD652D4();
    v125 = v120;
    v154 = v134;
    MEMORY[0x28223BE20](v128);
    v74 = v133;
    v120[-6] = v132;
    v120[-5] = v74;
    v120[-4] = v136;
    v120[-3] = v64;
    v75 = v130;
    v76 = v129;
    v120[-2] = v130;
    v120[-1] = v76;
    v77 = sub_20DD64F74();

    v154 = v77;
    v78 = sub_20DD652D4();
    v79 = MEMORY[0x28223BE20](v78);
    v80 = v133;
    v120[-8] = v132;
    v120[-7] = v80;
    v81 = v137;
    v120[-6] = v136;
    v120[-5] = v81;
    v82 = v128;
    v120[-4] = v75;
    v120[-3] = v82;
    v120[-2] = v79;
    v83 = sub_20DD65264();
    v134 = 0;
    v154 = v83;
    swift_getWitnessTable();
    v136 = sub_20DD652D4();

    v84 = sub_20DD64C24();
    v85 = sub_20DD65354();
    v86 = v82;

    if (os_log_type_enabled(v84, v85))
    {
      v87 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      v154 = v88;
      *v87 = 136315394;
      v89 = sub_20DD65B04();
      v91 = sub_20D9E0B38(v89, v90, &v154);

      *(v87 + 4) = v91;
      *(v87 + 12) = 2080;
      v153 = v86;
      swift_getWitnessTable();
      v92 = sub_20DD65934();
      v94 = sub_20D9E0B38(v92, v93, &v154);

      *(v87 + 14) = v94;
      _os_log_impl(&dword_20D9BF000, v84, v85, "%s-diffItems: newItems=%s", v87, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F327D10](v88, -1, -1);
      MEMORY[0x20F327D10](v87, -1, -1);
    }

    v95 = sub_20DD64C24();
    v96 = sub_20DD65354();

    if (os_log_type_enabled(v95, v96))
    {
      v97 = swift_slowAlloc();
      v98 = swift_slowAlloc();
      v154 = v98;
      *v97 = 136315394;
      v99 = sub_20DD65B04();
      v101 = sub_20D9E0B38(v99, v100, &v154);

      *(v97 + 4) = v101;
      *(v97 + 12) = 2080;
      v153 = v78;
      swift_getWitnessTable();
      v102 = sub_20DD65934();
      v104 = sub_20D9E0B38(v102, v103, &v154);

      *(v97 + 14) = v104;
      _os_log_impl(&dword_20D9BF000, v95, v96, "%s-diffItems: stillExistingItems=%s", v97, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F327D10](v98, -1, -1);
      MEMORY[0x20F327D10](v97, -1, -1);
    }

    v105 = v128;
    v106 = v136;

    v107 = sub_20DD64C24();
    v108 = sub_20DD65354();

    if (os_log_type_enabled(v107, v108))
    {
      v109 = swift_slowAlloc();
      v110 = swift_slowAlloc();
      v154 = v110;
      *v109 = 136315394;
      v111 = sub_20DD65B04();
      v113 = sub_20D9E0B38(v111, v112, &v154);

      *(v109 + 4) = v113;
      *(v109 + 12) = 2080;
      v153 = v136;
      swift_getWitnessTable();
      v114 = sub_20DD65934();
      v116 = sub_20D9E0B38(v114, v115, &v154);

      *(v109 + 14) = v116;
      _os_log_impl(&dword_20D9BF000, v107, v108, "%s-diffItems: removedItems=%s", v109, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F327D10](v110, -1, -1);
      v117 = v109;
      v106 = v136;
      MEMORY[0x20F327D10](v117, -1, -1);
    }

    v118 = v137;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8434E8, &qword_20DD95E00);
    v119 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    return sub_20DA652FC(v105, v106, v78, v118);
  }
}

uint64_t sub_20DA646AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *, uint64_t), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v53 = a5;
  v12 = *(a8 - 8);
  v55 = a9;
  v56 = a10;
  v13 = MEMORY[0x28223BE20](a1);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v48 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v48 - v19;
  v22 = *v21;
  v23(*v21);
  if (qword_27C842418 != -1)
  {
    swift_once();
  }

  v24 = sub_20DD64C44();
  __swift_project_value_buffer(v24, qword_27C84C588);
  v25 = *(v12 + 16);
  v54 = v20;
  v57 = v25;
  v25(v18, v20, a8);
  v26 = v22;
  v27 = sub_20DD64C24();
  v28 = sub_20DD65354();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v52 = a1;
    v30 = v29;
    v50 = swift_slowAlloc();
    v59 = v50;
    *v30 = 136315650;
    v31 = sub_20DD65B04();
    v49 = v28;
    v33 = sub_20D9E0B38(v31, v32, &v59);
    v51 = v26;
    v34 = v33;

    *(v30 + 4) = v34;
    *(v30 + 12) = 2080;
    v57(v15, v18, a8);
    v35 = sub_20DD64ED4();
    v37 = v36;
    v38 = *(v12 + 8);
    v48 = v15;
    v53 = v38;
    v38(v18, a8);
    v39 = sub_20D9E0B38(v35, v37, &v59);
    v26 = v51;

    *(v30 + 14) = v39;
    *(v30 + 22) = 2080;
    v58 = v26;
    swift_getWitnessTable();
    v40 = sub_20DD65934();
    v42 = sub_20D9E0B38(v40, v41, &v59);
    v43 = v48;

    *(v30 + 24) = v42;
    _os_log_impl(&dword_20D9BF000, v27, v49, "%s-diffItems: key is %s for %s", v30, 0x20u);
    v44 = v50;
    swift_arrayDestroy();
    MEMORY[0x20F327D10](v44, -1, -1);
    MEMORY[0x20F327D10](v30, -1, -1);
  }

  else
  {

    v43 = v15;
    v53 = *(v12 + 8);
    v53(v18, a8);
  }

  v45 = v54;
  v57(v43, v54, a8);
  v59 = v26;
  sub_20DD64DF4();
  v46 = v26;
  sub_20DD64E14();
  return (v53)(v45, a8);
}

uint64_t sub_20DA64AB4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v32 = a4;
  v33 = a3;
  v31 = a1;
  v12 = sub_20DD65494();
  MEMORY[0x28223BE20](v12 - 8);
  v30 = &v28 - v13;
  v14 = sub_20DD65494();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v28 - v17;
  v19 = *(a7 - 8);
  v20 = MEMORY[0x28223BE20](v16);
  v22 = &v28 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v28 - v23;
  v29 = a2;
  v33(a2);
  if ((*(v19 + 48))(v18, 1, a7) == 1)
  {
    return (*(v15 + 8))(v18, v14);
  }

  (*(v19 + 32))(v24, v18, a7);
  (*(v19 + 16))(v22, v24, a7);
  v26 = *(a6 - 8);
  v27 = v30;
  (*(v26 + 16))(v30, v29, a6);
  (*(v26 + 56))(v27, 0, 1, a6);
  sub_20DD64DF4();
  sub_20DD64E14();
  return (*(v19 + 8))(v24, a7);
}

void sub_20DA64DA8(uint64_t a1, id *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *a2;
  swift_getWitnessTable();
  sub_20DD652C4();
  sub_20DD65274();
}

uint64_t sub_20DA64E38@<X0>(uint64_t (*a2)(char *)@<X1>, uint64_t a4@<X5>, uint64_t *a6@<X8>, uint64_t a7)
{
  v17 = a6;
  v10 = sub_20DD65494();
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v16 - v11;
  sub_20DD64E04();
  v13 = *(a4 - 8);
  result = (*(v13 + 48))(v12, 1, a4);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v15 = a2(v12);
    result = (*(v13 + 8))(v12, a4);
    if (!v7)
    {
      *v17 = v15;
    }
  }

  return result;
}

uint64_t sub_20DA64F90(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_getWitnessTable();
  if (sub_20DD65294())
  {
    v7 = 0;
  }

  else
  {
    v7 = sub_20DD65294() ^ 1;
  }

  return v7 & 1;
}

id static SwiftItemProvider.diffItems<A, B>(with:existingItems:itemProvider:objectProvider:)(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11[2] = *(v9 + 80);
  v11[3] = a7;
  v11[4] = a8;
  v11[5] = a9;
  return static SwiftItemProvider.diffItems<A, B, C>(with:existingItems:keyProvider:itemProvider:itemKeyProvider:)(a1, a2, sub_20DA66140, v11, a3, a4, a5, a6, a7, a7, a8, a9);
}

id static SwiftItemProvider.diffItems<A>(with:existingItems:itemProvider:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v20 = *(v6 + 80);
  v21 = a5;
  v22 = a6;
  v16 = v20;
  v17 = a5;
  v18 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return static SwiftItemProvider.diffItems<A, B, C>(with:existingItems:keyProvider:itemProvider:itemKeyProvider:)(a1, a2, sub_20DA661FC, &v19, a3, a4, sub_20DA66208, v15, AssociatedTypeWitness, AssociatedTypeWitness, a5, AssociatedConformanceWitness);
}

uint64_t sub_20DA651A0@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  (*(v9 + 16))(a4, a1, AssociatedTypeWitness);
  v7 = *(v9 + 56);

  return v7(a4, 0, 1, AssociatedTypeWitness);
}

id HFItemProvider.asGeneric()()
{
  sub_20DA65948();
  objc_opt_self();
  v0 = swift_dynamicCastObjCClassUnconditional();

  return v0;
}

id sub_20DA652FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    swift_getWitnessTable();
    v7 = sub_20DD651C4();

    if (a2)
    {
      goto LABEL_3;
    }

LABEL_6:
    v8 = 0;
    if (a3)
    {
      goto LABEL_4;
    }

LABEL_7:
    v9 = 0;
    goto LABEL_8;
  }

  v7 = 0;
  if (!a2)
  {
    goto LABEL_6;
  }

LABEL_3:
  swift_getWitnessTable();
  v8 = sub_20DD651C4();

  if (!a3)
  {
    goto LABEL_7;
  }

LABEL_4:
  swift_getWitnessTable();
  v9 = sub_20DD651C4();

LABEL_8:
  v10 = [v4 initWithAddedItems:v7 removedItems:v8 existingItems:v9];

  return v10;
}

unint64_t sub_20DA65434(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20DD64E24();

  return sub_20DA65490(a1, v6, a2, a3);
}

unint64_t sub_20DA65490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21[1] = a1;
  v21[2] = a4;
  MEMORY[0x28223BE20](a1);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v4;
  v9 = -1 << *(v4 + 32);
  v11 = v10 & ~v9;
  v21[0] = v4 + 64;
  if ((*(v4 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v9;
    v15 = *(v6 + 16);
    v13 = v6 + 16;
    v14 = v15;
    v16 = *(v13 + 56);
    v17 = (v13 - 8);
    do
    {
      v18 = v13;
      v14(v8, *(v22 + 48) + v16 * v11, a3);
      v19 = sub_20DD64E64();
      (*v17)(v8, a3);
      if (v19)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      v13 = v18;
    }

    while (((*(v21[0] + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

unint64_t sub_20DA65618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v12 = v23 - v11;
  if (sub_20DD65064())
  {
    sub_20DD65894();
    v13 = sub_20DD65884();
  }

  else
  {
    v13 = MEMORY[0x277D84F98];
  }

  result = sub_20DD65064();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (sub_20DD65044())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_20DD65714();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_20DA65434(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}

uint64_t sub_20DA65904()
{
  v1 = qword_27C844880;
  swift_beginAccess();
  return *(v0 + v1);
}

unint64_t sub_20DA65948()
{
  result = qword_280E01F10;
  if (!qword_280E01F10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280E01F10);
  }

  return result;
}

unint64_t sub_20DA65994()
{
  result = qword_280E01F00;
  if (!qword_280E01F00)
  {
    sub_20DA65948();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E01F00);
  }

  return result;
}

uint64_t sub_20DA659EC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_20D9D77BC;

  return sub_20DA62AF0(v2, v3, v5, v6, v4);
}

uint64_t sub_20DA65AA8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_20D9C76B4;

  return sub_20D9CAD70(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_20DA65B70(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20D9D77C4;

  return sub_20D9CA8B4(a1, v4, v5, v6);
}

uint64_t sub_20DA65C30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = *(a2 - 8);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v50 = &v38 - v11;
  v39 = v12;
  MEMORY[0x28223BE20](v10);
  v14 = &v38 - v13;
  if (sub_20DD65064())
  {
    sub_20DD656E4();
    v15 = sub_20DD656D4();
  }

  else
  {
    v15 = MEMORY[0x277D84FA0];
  }

  v43 = sub_20DD65064();
  if (!v43)
  {
    return v15;
  }

  v16 = 0;
  v48 = (v6 + 16);
  v49 = v15 + 56;
  v45 = v6 + 32;
  v47 = (v6 + 8);
  v40 = v6;
  v41 = v5;
  v42 = v14;
  while (1)
  {
    v17 = sub_20DD65044();
    sub_20DD65004();
    if (v17)
    {
      v18 = *(v6 + 16);
      v18(v14, (v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v16), a2);
      v19 = __OFADD__(v16, 1);
      v20 = v16 + 1;
      if (v19)
      {
        goto LABEL_20;
      }
    }

    else
    {
      result = sub_20DD65714();
      if (v39 != 8)
      {
        goto LABEL_23;
      }

      v51 = result;
      v18 = *v48;
      (*v48)(v14, &v51, a2);
      swift_unknownObjectRelease();
      v19 = __OFADD__(v16, 1);
      v20 = v16 + 1;
      if (v19)
      {
LABEL_20:
        __break(1u);
        return v15;
      }
    }

    v46 = v20;
    v44 = *(v6 + 32);
    v44(v50, v14, a2);
    v21 = sub_20DD64E24();
    v22 = v15;
    v23 = -1 << *(v15 + 32);
    v24 = v21 & ~v23;
    v25 = v24 >> 6;
    v26 = *(v49 + 8 * (v24 >> 6));
    v27 = 1 << v24;
    v28 = *(v6 + 72);
    if (((1 << v24) & v26) != 0)
    {
      v29 = ~v23;
      do
      {
        v18(v9, (*(v22 + 48) + v28 * v24), a2);
        v30 = a3;
        v31 = sub_20DD64E64();
        v32 = *v47;
        (*v47)(v9, a2);
        if (v31)
        {
          v32(v50, a2);
          a3 = v30;
          v6 = v40;
          v5 = v41;
          v15 = v22;
          goto LABEL_7;
        }

        v24 = (v24 + 1) & v29;
        v25 = v24 >> 6;
        v26 = *(v49 + 8 * (v24 >> 6));
        v27 = 1 << v24;
        a3 = v30;
      }

      while (((1 << v24) & v26) != 0);
      v6 = v40;
      v5 = v41;
    }

    v33 = v50;
    *(v49 + 8 * v25) = v27 | v26;
    v34 = *(v22 + 48) + v28 * v24;
    v15 = v22;
    result = (v44)(v34, v33, a2);
    v36 = *(v22 + 16);
    v19 = __OFADD__(v36, 1);
    v37 = v36 + 1;
    if (v19)
    {
      break;
    }

    *(v22 + 16) = v37;
LABEL_7:
    v14 = v42;
    v16 = v46;
    if (v46 == v43)
    {
      return v15;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_20DA660C4@<X0>(void *a2@<X8>)
{
  result = sub_20DD64E04();
  if (v4)
  {
    *a2 = v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20DA66140@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 24);
  v7 = *(v4 - 8);
  (*(v7 + 16))(a2, a1, v4);
  v5 = *(v7 + 56);

  return v5(a2, 0, 1, v4);
}

uint64_t dispatch thunk of SwiftItemProvider.reloadItems(with:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x78);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_20D9D7010;

  return v7(a1);
}

void __swiftcall ControlCenterPredictionsFetchTimeEvent.init(duration:numberOfPredictions:receivedBeforeModuleFreeze:)(Home::ControlCenterPredictionsFetchTimeEvent *__return_ptr retstr, Swift::Double duration, Swift::UInt numberOfPredictions, Swift::Bool receivedBeforeModuleFreeze)
{
  retstr->eventName._countAndFlagsBits = 0xD000000000000019;
  retstr->eventName._object = 0x800000020DD98C40;
  retstr->domainPrefix.value._countAndFlagsBits = 0xD00000000000001CLL;
  retstr->domainPrefix.value._object = 0x800000020DD98C60;
  retstr->duration = duration;
  retstr->numberOfPredictions = numberOfPredictions;
  retstr->receivedBeforeModuleFreeze = receivedBeforeModuleFreeze;
  v5 = [objc_opt_self() processInfo];
  v6 = [v5 processName];

  v7 = sub_20DD64EB4();
  v9 = v8;

  retstr->processName._countAndFlagsBits = v7;
  retstr->processName._object = v9;
}

uint64_t ControlCenterPredictionsFetchTimeEvent.eventName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ControlCenterPredictionsFetchTimeEvent.domainPrefix.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ControlCenterPredictionsFetchTimeEvent.processName.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t ControlCenterPredictionsFetchTimeEvent.processName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t sub_20DA66700()
{
  v1 = *v0;
  sub_20DD65A64();
  MEMORY[0x20F3269D0](v1);
  return sub_20DD65AA4();
}

uint64_t sub_20DA66774(uint64_t a1)
{
  v2 = *v1;
  sub_20DD65A64();
  MEMORY[0x20F3269D0](v2);
  return sub_20DD65AA4();
}

unint64_t sub_20DA667B8()
{
  v1 = *v0;
  v2 = 0x6D614E746E657665;
  v3 = 0xD000000000000013;
  v4 = 0x4E737365636F7270;
  if (v1 != 4)
  {
    v4 = 0xD00000000000001ALL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x72506E69616D6F64;
  if (v1 != 1)
  {
    v5 = 0x6E6F697461727564;
  }

  if (*v0)
  {
    v2 = v5;
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

uint64_t sub_20DA6688C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_20DA66FF8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_20DA668CC(uint64_t a1)
{
  v2 = sub_20DA66B88();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20DA66908(uint64_t a1)
{
  v2 = sub_20DA66B88();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ControlCenterPredictionsFetchTimeEvent.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844908, &qword_20DD95E60);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v15 - v5;
  v7 = v1[2];
  v15[4] = v1[3];
  v15[5] = v7;
  v8 = v1[5];
  v15[2] = v1[6];
  v15[3] = v8;
  v15[1] = v1[7];
  v9 = a1[3];
  v10 = a1;
  v12 = v11;
  __swift_project_boxed_opaque_existential_0(v10, v9);
  sub_20DA66B88();
  sub_20DD65AD4();
  v21 = 0;
  v13 = v15[6];
  sub_20DD658D4();
  if (!v13)
  {
    v20 = 1;
    sub_20DD658C4();
    v19 = 2;
    sub_20DD658F4();
    v18 = 3;
    sub_20DD65904();
    v17 = 4;
    sub_20DD658D4();
    v16 = 5;
    sub_20DD658E4();
  }

  return (*(v4 + 8))(v6, v12);
}

unint64_t sub_20DA66B88()
{
  result = qword_280E02190;
  if (!qword_280E02190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E02190);
  }

  return result;
}

unint64_t sub_20DA66BE0()
{
  result = qword_280E02170;
  if (!qword_280E02170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E02170);
  }

  return result;
}

uint64_t sub_20DA66C34()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_20DA66C64()
{
  v1 = *(v0 + 16);

  return v1;
}

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_20DA66CF4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
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

uint64_t sub_20DA66D3C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ControlCenterPredictionsFetchTimeEvent.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ControlCenterPredictionsFetchTimeEvent.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_20DA66EF4()
{
  result = qword_27C844910;
  if (!qword_27C844910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C844910);
  }

  return result;
}

unint64_t sub_20DA66F4C()
{
  result = qword_280E02180;
  if (!qword_280E02180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E02180);
  }

  return result;
}

unint64_t sub_20DA66FA4()
{
  result = qword_280E02188;
  if (!qword_280E02188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E02188);
  }

  return result;
}

uint64_t sub_20DA66FF8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D614E746E657665 && a2 == 0xE900000000000065;
  if (v4 || (sub_20DD65974() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x72506E69616D6F64 && a2 == 0xEC00000078696665 || (sub_20DD65974() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000 || (sub_20DD65974() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x800000020DD99B10 == a2 || (sub_20DD65974() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4E737365636F7270 && a2 == 0xEB00000000656D61 || (sub_20DD65974() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001ALL && 0x800000020DD99B30 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_20DD65974();

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

void sub_20DA67210(uint64_t a1)
{
  v1 = a1;
  v18 = MEMORY[0x277D84F90];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_20DD65564();
    sub_20DA65948();
    sub_20DA65994();
    sub_20DD65284();
    v1 = v13;
    v2 = v14;
    v3 = v15;
    v4 = v16;
    v5 = v17;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  while (v1 < 0)
  {
    if (!sub_20DD655F4() || (sub_20DA65948(), swift_dynamicCast(), (v11 = v12) == 0))
    {
LABEL_21:
      sub_20D9C51CC(v1);
      return;
    }

LABEL_16:
    type metadata accessor for MatterAccessoryLikeItem(0);
    if (swift_dynamicCastClass())
    {
      MEMORY[0x20F325F00]();
      if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_20DD65014();
      }

      sub_20DD65054();
    }

    else
    {
    }
  }

  v9 = v4;
  v10 = v5;
  if (v5)
  {
LABEL_12:
    v5 = (v10 - 1) & v10;
    v11 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v11)
    {
      goto LABEL_21;
    }

    goto LABEL_16;
  }

  while (1)
  {
    v4 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_21;
    }

    v10 = *(v2 + 8 * v4);
    ++v9;
    if (v10)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

Swift::Void __swiftcall HFItemManager.registerMatterDelegates()()
{
  v1 = v0;
  sub_20DD63C84();
  sub_20DD63C24();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844918, &qword_20DD96070);
  sub_20DA6776C();
  v2 = sub_20DD64D04();

  [v1 setMatterSnapshotObserverCancelable_];
}

uint64_t sub_20DA6753C(uint64_t a1, uint64_t a2)
{
  v3 = sub_20DD64354();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = [objc_opt_self() mainThreadScheduler];
  v7 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  (*(v4 + 16))(&aBlock[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  v9 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v10 = swift_allocObject();
  (*(v4 + 32))(v10 + v9, &aBlock[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  *(v10 + ((v5 + v9 + 7) & 0xFFFFFFFFFFFFFFF8)) = v7;
  aBlock[4] = sub_20DA69204;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20DA89A38;
  aBlock[3] = &block_descriptor_8;
  v11 = _Block_copy(aBlock);

  [v6 performBlock_];
  _Block_release(v11);
  return swift_unknownObjectRelease();
}

unint64_t sub_20DA6776C()
{
  result = qword_280E022C0;
  if (!qword_280E022C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C844918, &qword_20DD96070);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E022C0);
  }

  return result;
}

void sub_20DA677D0(uint64_t a1, uint64_t a2)
{
  v3 = sub_20DD63744();
  v55 = *(v3 - 8);
  v56 = v3;
  MEMORY[0x28223BE20](v3);
  v54 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_20DD64354();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20DD64C44();
  v58 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v59 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20DD642D4();
  v13 = v12;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v15 = Strong, v16 = [Strong home], v15, v16))
  {
    v57 = v9;
    v17 = [v16 matterControllerID];

    v18 = sub_20DD64EB4();
    v20 = v19;

    if (v11 == v18 && v13 == v20)
    {

      goto LABEL_13;
    }

    v38 = sub_20DD65974();

    v9 = v57;
    if (v38)
    {
LABEL_13:
      swift_beginAccess();
      v39 = swift_unknownObjectWeakLoadStrong();
      if (v39)
      {
        v40 = v39;
        sub_20DA67E00(a1);
      }

      return;
    }
  }

  else
  {
  }

  v21 = v59;
  sub_20DD64BE4();
  (*(v6 + 16))(v8, a1, v5);

  v22 = sub_20DD64C24();
  v23 = sub_20DD65364();

  if (!os_log_type_enabled(v22, v23))
  {

    (*(v6 + 8))(v8, v5);
    (*(v58 + 8))(v21, v9);
    return;
  }

  v57 = v9;
  v24 = swift_slowAlloc();
  v53 = swift_slowAlloc();
  v60 = v53;
  *v24 = 136315906;
  *(v24 + 4) = sub_20D9E0B38(0xD000000000000019, 0x800000020DD99B50, &v60);
  *(v24 + 12) = 2082;
  v25 = sub_20DD642D4();
  v27 = v26;
  (*(v6 + 8))(v8, v5);
  v28 = sub_20D9E0B38(v25, v27, &v60);

  *(v24 + 14) = v28;
  *(v24 + 22) = 2082;
  swift_beginAccess();
  v29 = swift_unknownObjectWeakLoadStrong();
  if (!v29)
  {
    v36 = 0xE500000000000000;
    v30 = 0x3E6C696E3CLL;
LABEL_17:
    v37 = 0x3E6C696E3CLL;
    goto LABEL_18;
  }

  v30 = 0x3E6C696E3CLL;
  v31 = v29;
  v32 = [v29 home];

  if (!v32)
  {
    v36 = 0xE500000000000000;
    goto LABEL_17;
  }

  v33 = [v32 matterControllerID];

  v34 = sub_20DD64EB4();
  v36 = v35;

  v37 = v34;
LABEL_18:
  v41 = sub_20D9E0B38(v37, v36, &v60);

  *(v24 + 24) = v41;
  *(v24 + 32) = 2082;
  swift_beginAccess();
  v42 = swift_unknownObjectWeakLoadStrong();
  if (v42)
  {
    v43 = v42;
    v44 = [v42 home];

    v45 = v57;
    if (v44)
    {
      v46 = [v44 uniqueIdentifier];

      v47 = v54;
      sub_20DD63714();

      v30 = sub_20DD636E4();
      v49 = v48;
      (*(v55 + 8))(v47, v56);
    }

    else
    {
      v49 = 0xE500000000000000;
    }
  }

  else
  {
    v49 = 0xE500000000000000;
    v45 = v57;
  }

  v50 = sub_20D9E0B38(v30, v49, &v60);

  *(v24 + 34) = v50;
  _os_log_impl(&dword_20D9BF000, v22, v23, "%s Matter snapshot changed, but does not match current home. Snapshot: %{public}s, current home controller ID: %{public}s, current home ID: %{public}s", v24, 0x2Au);
  v51 = v53;
  swift_arrayDestroy();
  MEMORY[0x20F327D10](v51, -1, -1);
  MEMORY[0x20F327D10](v24, -1, -1);

  (*(v58 + 8))(v59, v45);
}

void sub_20DA67E00(uint64_t a1)
{
  v87 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843A20, &qword_20DD940B0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v75[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v3);
  v7 = &v75[-v6];
  v8 = sub_20DD64354();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v75[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v14 = &v75[-v13];
  v15 = sub_20DD64C44();
  v88 = *(v15 - 8);
  v89 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = &v75[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v78 = v1;
  v18 = [v1 itemsToUpdateForMatterSnapshotChange];
  v19 = sub_20DA65948();
  v90 = sub_20DA65994();
  v20 = sub_20DD651E4();

  sub_20DD64BE4();
  v81 = v9;
  isa = v9[2].isa;
  v79 = v14;
  v22 = v14;
  v23 = v87;
  isa(v22, v87, v8);
  v80 = v12;
  v82 = v8;
  isa(v12, v23, v8);

  v83 = v17;
  v24 = v20;
  v25 = sub_20DD64C24();
  v26 = sub_20DD65384();
  v84 = v24;

  v27 = os_log_type_enabled(v25, v26);
  v86 = v19;
  if (v27)
  {
    v28 = swift_slowAlloc();
    v76 = v26;
    v29 = v28;
    v77 = swift_slowAlloc();
    v91[0] = v77;
    *v29 = 136315906;
    *(v29 + 4) = sub_20D9E0B38(0xD000000000000020, 0x800000020DD99B70, v91);
    *(v29 + 12) = 2082;
    v30 = v79;
    v31 = sub_20DD642D4();
    v33 = v32;
    v34 = v81[1].isa;
    v81 = v25;
    v35 = v82;
    (v34)(v30, v82);
    v36 = sub_20D9E0B38(v31, v33, v91);

    *(v29 + 14) = v36;
    *(v29 + 22) = 2082;
    v37 = sub_20DD651F4();
    v39 = sub_20D9E0B38(v37, v38, v91);

    *(v29 + 24) = v39;
    *(v29 + 32) = 2082;
    v40 = v80;
    sub_20DD642E4();
    sub_20DD64294();
    v41 = sub_20DD64DD4();
    v43 = v42;

    (v34)(v40, v35);
    v44 = sub_20D9E0B38(v41, v43, v91);

    *(v29 + 34) = v44;
    v45 = v81;
    _os_log_impl(&dword_20D9BF000, v81, v76, "%s Triggering item update because Matter snapshot changed. snapshot: (%{public}s) items: %{public}s devices: (%{public}s)", v29, 0x2Au);
    v46 = v77;
    swift_arrayDestroy();
    MEMORY[0x20F327D10](v46, -1, -1);
    MEMORY[0x20F327D10](v29, -1, -1);
  }

  else
  {

    v47 = v81[1].isa;
    v48 = v82;
    (v47)(v80, v82);
    (v47)(v79, v48);
  }

  (*(v88 + 8))(v83, v89);
  v49 = v90;
  sub_20DA67210(v84);
  v51 = v50;
  if (!(v50 >> 62))
  {
    v52 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v52)
    {
      goto LABEL_6;
    }

LABEL_17:

    v70 = [v78 batchedDelegateAdapterDisallowingReads];
    v71 = sub_20DD651C4();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843870, &qword_20DD93F40);
    v72 = swift_allocObject();
    *(v72 + 16) = xmmword_20DD93A70;
    *(v72 + 32) = sub_20DD64EB4();
    *(v72 + 40) = v73;
    v74 = sub_20DD64FB4();

    return;
  }

  v69 = v50;
  v52 = sub_20DD655B4();
  v51 = v69;
  if (!v52)
  {
    goto LABEL_17;
  }

LABEL_6:
  if (v52 >= 1)
  {
    v53 = 0;
    v88 = v51 & 0xC000000000000001;
    v89 = v52;
    v90 = v51;
    v85 = v5;
    do
    {
      if (v88)
      {
        v56 = MEMORY[0x20F326680](v53);
      }

      else
      {
        v56 = *(v51 + 8 * v53 + 32);
      }

      v57 = v56;
      v58 = *&v56[OBJC_IVAR____TtC4Home23MatterAccessoryLikeItem_matterAccessoryRepresentable];
      v59 = sub_20DD642E4();
      v60 = sub_20DD63FD4();
      if (*(v59 + 16) && (v61 = sub_20D9CB2A8(v60), (v62 & 1) != 0))
      {
        v63 = v61;
        v64 = *(v59 + 56);
        v65 = v49;
        v66 = sub_20DD64294();
        v67 = *(v66 - 8);
        (*(v67 + 16))(v7, v64 + *(v67 + 72) * v63, v66);

        v68 = v66;
        v49 = v65;
        v5 = v85;
        (*(v67 + 56))(v7, 0, 1, v68);
      }

      else
      {

        v54 = sub_20DD64294();
        (*(*(v54 - 8) + 56))(v7, 1, 1, v54);
      }

      ++v53;
      v55 = OBJC_IVAR___HFMatterAccessoryRepresentable_staticMatterDevice;
      swift_beginAccess();
      sub_20D9FA458(v58 + v55, v5);
      swift_beginAccess();
      sub_20D9F0D50(v7, v58 + v55);
      swift_endAccess();
      sub_20D9F04E4(v5);
      sub_20D9D76EC(v5, &qword_27C843A20, &qword_20DD940B0);
      sub_20D9D76EC(v7, &qword_27C843A20, &qword_20DD940B0);

      v51 = v90;
    }

    while (v89 != v53);
    goto LABEL_17;
  }

  __break(1u);
}

Swift::Void __swiftcall HFItemManager.deregisterMatterDelegates()()
{
  if ([v0 matterSnapshotObserverCancelable])
  {
    sub_20DD654E4();
    swift_unknownObjectRelease();
  }

  else
  {
    v1 = 0u;
    v2 = 0u;
  }

  v3[0] = v1;
  v3[1] = v2;
  if (*(&v2 + 1))
  {
    sub_20DD64C74();
    if (swift_dynamicCast())
    {

      sub_20DD64C64();
    }
  }

  else
  {
    sub_20D9D76EC(v3, &unk_27C843A80, &qword_20DD94100);
  }

  [v0 setMatterSnapshotObserverCancelable_];
}

void *sub_20DA6888C()
{
  v1 = 0;
  v67[4] = *MEMORY[0x277D85DE8];
  v2 = [v0 allItems];
  v3 = sub_20DA65948();
  sub_20DA65994();
  v4 = sub_20DD651E4();

  if ((v4 & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x277D84FA0];
    v66 = MEMORY[0x277D84FA0];
    sub_20DD65564();
    v7 = sub_20DD655F4();
    if (!v7)
    {
      v63 = v6;
LABEL_54:

      return v63;
    }

    v63 = MEMORY[0x277D84FA0];
    v4 = MEMORY[0x277D84F68];
    v8 = MEMORY[0x277D84F70];
    v9 = &selRef_isAnnounceAccessAllowed;
    while (1)
    {
      v67[0] = v7;
      swift_dynamicCast();
      v10 = [v65 v9[330]];
      if (v10)
      {
        v11 = v10;
        v12 = sub_20DD64DC4();

        v13 = sub_20DD64EB4();
        if (*(v12 + 16))
        {
          v15 = v9;
          v16 = v4;
          v17 = v8;
          v18 = sub_20D9CB170(v13, v14);
          v20 = v19;

          if ((v20 & 1) == 0)
          {

            v8 = v17;
LABEL_15:
            v4 = v16;
            v9 = v15;
            goto LABEL_16;
          }

          sub_20D9D7174(*(v12 + 56) + 32 * v18, v67);

          v8 = v17;
          if ((swift_dynamicCast() & 1) == 0)
          {
            goto LABEL_15;
          }

          v4 = v16;
          v9 = v15;
          if (v64)
          {
            v21 = v65;
            v22 = *(v63 + 16);
            if (*(v63 + 24) <= v22)
            {
              sub_20D9F776C(v22 + 1);
            }

            v1 = v66;
            v23 = sub_20DD65444();
            v24 = v66 + 56;
            v25 = -1 << *(v66 + 32);
            v26 = v23 & ~v25;
            v27 = v26 >> 6;
            if (((-1 << v26) & ~*(v66 + 56 + 8 * (v26 >> 6))) != 0)
            {
              v28 = __clz(__rbit64((-1 << v26) & ~*(v66 + 56 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
            }

            else
            {
              v29 = 0;
              v30 = (63 - v25) >> 6;
              do
              {
                if (++v27 == v30 && (v29 & 1) != 0)
                {
                  goto LABEL_56;
                }

                v31 = v27 == v30;
                if (v27 == v30)
                {
                  v27 = 0;
                }

                v29 |= v31;
                v32 = *(v24 + 8 * v27);
              }

              while (v32 == -1);
              v28 = __clz(__rbit64(~v32)) + (v27 << 6);
            }

            *(v24 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
            *(*(v1 + 48) + 8 * v28) = v21;
            v33 = *(v1 + 16) + 1;
            v63 = v1;
            *(v1 + 16) = v33;
            goto LABEL_17;
          }
        }

        else
        {
        }
      }

LABEL_16:

LABEL_17:
      v7 = sub_20DD655F4();
      if (!v7)
      {
        goto LABEL_54;
      }
    }
  }

  v34 = *(v4 + 32);
  v3 = ((1 << v34) + 63) >> 6;
  if ((v34 & 0x3Fu) > 0xD)
  {
    goto LABEL_57;
  }

  while (2)
  {
    v58[0] = v1;
    v58[1] = v58;
    v59 = v3;
    MEMORY[0x28223BE20](v5);
    v60 = v58 - ((v35 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v60, v35);
    v61 = 0;
    v1 = 0;
    v36 = v4 + 56;
    v37 = 1 << *(v4 + 32);
    v38 = -1;
    if (v37 < 64)
    {
      v38 = ~(-1 << v37);
    }

    v39 = v38 & *(v4 + 56);
    v3 = (v37 + 63) >> 6;
    v62 = @"dependentOnMatterSnapshot";
    v63 = v4;
    while (v39)
    {
      v40 = __clz(__rbit64(v39));
      v39 &= v39 - 1;
LABEL_40:
      v43 = v40 | (v1 << 6);
      v44 = *(*(v4 + 48) + 8 * v43);
      v45 = [v44 latestResults];
      if (v45)
      {
        v46 = v45;
        v47 = sub_20DD64DC4();

        v48 = sub_20DD64EB4();
        if (*(v47 + 16))
        {
          v50 = sub_20D9CB170(v48, v49);
          v52 = v51;

          if ((v52 & 1) == 0)
          {

            goto LABEL_51;
          }

          sub_20D9D7174(*(v47 + 56) + 32 * v50, v67);

          if (swift_dynamicCast())
          {
            v53 = v66;

            v4 = v63;
            if (v53)
            {
              *&v60[(v43 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v43;
              if (__OFADD__(v61++, 1))
              {
                __break(1u);
              }
            }
          }

          else
          {

LABEL_51:
            v4 = v63;
          }
        }

        else
        {
        }
      }

      else
      {
      }
    }

    v41 = v1;
    while (1)
    {
      v1 = v41 + 1;
      if (__OFADD__(v41, 1))
      {
        break;
      }

      if (v1 >= v3)
      {
        return sub_20D9F89D4(v60, v59, v61, v4);
      }

      v42 = *(v36 + 8 * v1);
      ++v41;
      if (v42)
      {
        v40 = __clz(__rbit64(v42));
        v39 = (v42 - 1) & v42;
        goto LABEL_40;
      }
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v56 = swift_slowAlloc();
  v57 = sub_20DA69160(v56, v3, v4, sub_20DA68EB8, 0);

  MEMORY[0x20F327D10](v56, -1, -1);
  return v57;
}

uint64_t sub_20DA68EB8()
{
  HFItem.result(for:)();
  if (v3)
  {
    result = swift_dynamicCast();
    if (result)
    {
      return v1;
    }
  }

  else
  {
    sub_20D9D76EC(v2, &unk_27C843A80, &qword_20DD94100);
    return 0;
  }

  return result;
}

void sub_20DA68FEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *), uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v23 = 0;
  v7 = 0;
  v8 = a3 + 56;
  v9 = 1 << *(a3 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a3 + 56);
  v12 = (v9 + 63) >> 6;
  while (v11)
  {
    v13 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_11:
    v16 = v13 | (v7 << 6);
    v26 = *(*(a3 + 48) + 8 * v16);
    v17 = v26;
    v18 = a4(&v26);

    if (v6)
    {
      return;
    }

    if (v18)
    {
      *(a1 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      if (__OFADD__(v23++, 1))
      {
        __break(1u);
LABEL_16:

        a6(a1, a2, v23, a3);
        return;
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
      goto LABEL_16;
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
}

void *sub_20DA69160(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *), uint64_t a5)
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
      v8 = a5;
      v9 = a4;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
      a4 = v9;
      a5 = v8;
    }

    sub_20DA68FEC(result, a2, a3, a4, a5, sub_20D9F89D4);
    v11 = v10;

    return v11;
  }

  return result;
}

void sub_20DA69204()
{
  v1 = *(sub_20DD64354() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_20DA677D0(v0 + v2, v3);
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t static HFNetworkRouterServiceItem.supportedServiceTypes.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843870, &qword_20DD93F40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20DD94280;
  *(inited + 32) = sub_20DD64EB4();
  *(inited + 40) = v1;
  *(inited + 48) = sub_20DD64EB4();
  *(inited + 56) = v2;
  v3 = sub_20D9EE93C(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  return v3;
}

id HFNetworkRouterServiceItem._subclass_update(options:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843870, &qword_20DD93F40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20DD95210;
  *(inited + 32) = sub_20DD64EB4();
  *(inited + 40) = v4;
  *(inited + 48) = sub_20DD64EB4();
  *(inited + 56) = v5;
  *(inited + 64) = sub_20DD64EB4();
  *(inited + 72) = v6;
  sub_20D9EE93C(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = sub_20DD651C4();
  if (a1)
  {
    v8 = result;

    v9 = sub_20DD64DB4();
    v10 = [v1 performStandardUpdateWithCharacteristicTypes:v8 options:v9];

    v13[4] = sub_20DA6962C;
    v13[5] = 0;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 1107296256;
    v13[2] = sub_20DA055A4;
    v13[3] = &block_descriptor_9;
    v11 = _Block_copy(v13);
    v12 = [v10 flatMap_];

    _Block_release(v11);
    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_20DA6962C(void *a1)
{
  v2 = [a1 standardResults];
  v3 = sub_20DD64DC4();

  v57 = v3;
  v4 = [a1 displayMetadata];
  v5 = [v4 serviceState];

  if (!v5)
  {
    goto LABEL_8;
  }

  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (!v6)
  {

LABEL_8:
    v31 = objc_allocWithZone(HFItemUpdateOutcome);
    v32 = sub_20DD64DB4();
    v33 = [v31 initWithResults_];

    v34 = [objc_opt_self() futureWithResult_];
    v35 = [v34 asGeneric];

    return v35;
  }

  v7 = v6;
  v8 = [objc_opt_self() systemGrayColor];
  v9 = [objc_opt_self() configurationWithHierarchicalColor_];

  v10 = objc_allocWithZone(HFImageIconDescriptor);
  v11 = sub_20DD64E74();
  v12 = [v10 initWithSystemImageNamed:v11 configuration:v9];

  type metadata accessor for HFItemResultKey(0);
  sub_20DA0583C();
  v13 = @"icon";
  sub_20DD65684();
  v54 = sub_20D9D7510(0, &unk_27C843D70, off_277DEFBA8);
  *&v53 = v12;
  sub_20D9D77C8(&v53, v55);
  v14 = v12;
  v15 = v57;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_20D9D0DFC(v55, v56, isUniquelyReferenced_nonNull_native);
  sub_20D9D4298(v56);
  v57 = v15;
  *&v53 = @"iconNames";
  v17 = @"iconNames";
  sub_20DD65684();
  v18 = [v14 imageIdentifier];
  v19 = sub_20DD64EB4();
  v21 = v20;

  v22 = MEMORY[0x277D837D0];
  v54 = MEMORY[0x277D837D0];
  *&v53 = v19;
  *(&v53 + 1) = v21;
  sub_20D9D77C8(&v53, v55);
  v23 = v57;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  *&v52[0] = v23;
  sub_20D9D0DFC(v55, v56, v24);
  sub_20D9D4298(v56);
  v57 = v23;
  if ([v7 type])
  {
    *&v53 = @"errorDescription";
    v25 = @"errorDescription";
    sub_20DD65684();
    *&v55[0] = @"description";
    v26 = @"description";
    sub_20DD65684();
    if (*(v23 + 16) && (v27 = sub_20D9CB264(&v53), (v28 & 1) != 0))
    {
      sub_20D9D7174(*(v23 + 56) + 32 * v27, v55);
      sub_20D9D4298(&v53);
      sub_20D9D77C8(v55, v52);
      v29 = v57;
      v30 = swift_isUniquelyReferenced_nonNull_native();
      sub_20D9D0DFC(v52, v56, v30);
      sub_20D9D4298(v56);
      v57 = v29;
    }

    else
    {
      sub_20D9D4298(&v53);
      sub_20DA2769C(v56, v55);
      sub_20D9F8608(v55);
      sub_20D9D4298(v56);
    }

    *&v53 = @"longErrorDescription";
    v37 = @"longErrorDescription";
    sub_20DD65684();
    [v7 underlyingStatus];
    v38 = HMNetworkStatusAsString();
    v39 = sub_20DD64EB4();
    v41 = v40;

    v54 = v22;
    *&v53 = v39;
    *(&v53 + 1) = v41;
    sub_20D9D77C8(&v53, v55);
    v42 = v57;
    v43 = swift_isUniquelyReferenced_nonNull_native();
    *&v52[0] = v42;
    sub_20D9D0DFC(v55, v56, v43);
    sub_20D9D4298(v56);
    v57 = *&v52[0];
    *&v53 = @"descriptionStyle";
    v44 = @"descriptionStyle";
    sub_20DD65684();
    v54 = MEMORY[0x277D83E88];
    *&v53 = 1;
    sub_20D9D77C8(&v53, v55);
    v45 = v57;
    v46 = swift_isUniquelyReferenced_nonNull_native();
    *&v52[0] = v45;
    sub_20D9D0DFC(v55, v56, v46);
    sub_20D9D4298(v56);
  }

  v47 = objc_allocWithZone(HFItemUpdateOutcome);
  v48 = sub_20DD64DB4();
  v49 = [v47 initWithResults_];

  v50 = [objc_opt_self() futureWithResult_];
  v51 = [v50 asGeneric];

  return v51;
}

id HFNetworkRouterServiceItem.init(valueSource:service:)(uint64_t a1, void *a2)
{
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValueSource:a1 service:a2];
  swift_unknownObjectRelease();

  return v3;
}

{
  v5.super_class = HFNetworkRouterServiceItem;
  v3 = objc_msgSendSuper2(&v5, sel_initWithValueSource_service_, a1, a2);
  swift_unknownObjectRelease();

  return v3;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t HMHomeManager.refresh(before:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_20DA69E50, 0, 0);
}

uint64_t sub_20DA69E50()
{
  _s11CancellableCMa();
  v1 = swift_allocObject();
  v0[2].i64[0] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844940, &qword_20DD96080);
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *(v1 + 16) = v2;
  *(v1 + 24) = 0;
  v3 = swift_task_alloc();
  v0[2].i64[1] = v3;
  v4 = v0[1];
  *(v3 + 16) = v1;
  *(v3 + 24) = vextq_s8(v4, v4, 8uLL);
  v5 = swift_allocObject();
  v0[3].i64[0] = v5;
  swift_weakInit();
  v6 = swift_task_alloc();
  v0[3].i64[1] = v6;
  *v6 = v0;
  v6[1] = sub_20DA69FB8;
  v7 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200830](v6, &unk_20DD96090, v3, sub_20DA6ACCC, v5, 0, 0, v7);
}

uint64_t sub_20DA69FB8()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_20DA6A140;
  }

  else
  {

    v2 = sub_20DA6A0DC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20DA6A0DC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20DA6A140()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20DA6A1DC()
{
  v0 = sub_20DD64C44();
  __swift_allocate_value_buffer(v0, qword_27C844928);
  __swift_project_value_buffer(v0, qword_27C844928);
  if (qword_27C842490 != -1)
  {
    swift_once();
  }

  v1 = qword_280E03EA8;
  return sub_20DD64C54();
}

void sub_20DA6A268()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 4);
  v2 = *(v0 + 24);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock(v1 + 4);
  if (v2)
  {
    [v2 cancel];
    swift_unknownObjectRelease();
  }

  os_unfair_lock_lock(v1 + 4);
  *(v0 + 24) = 0;
  swift_unknownObjectRelease();

  os_unfair_lock_unlock(v1 + 4);
}

uint64_t sub_20DA6A2F0()
{

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_20DA6A330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a3;
  v4[12] = a4;
  v4[10] = a2;
  return MEMORY[0x2822009F8](sub_20DA6A354, 0, 0);
}

uint64_t sub_20DA6A354()
{
  v1 = v0[11];
  v2 = v0[10];
  v0[2] = v0;
  v0[3] = sub_20DA6A400;
  v3 = swift_continuation_init();
  sub_20DA6A6D0(v3, v2, v1);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_20DA6A400(uint64_t a1)
{
  v2 = *(*v1 + 48);
  *(*v1 + 104) = v2;
  if (v2)
  {
    swift_willThrow();
    v3 = sub_20DA6A59C;
  }

  else
  {
    v3 = sub_20DA6A51C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20DA6A51C()
{
  v1 = *(v0 + 80);
  v2 = *(v1 + 16);
  os_unfair_lock_lock(v2 + 4);
  *(v1 + 24) = 0;
  swift_unknownObjectRelease();
  os_unfair_lock_unlock(v2 + 4);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_20DA6A59C()
{
  v1 = *(v0 + 80);
  v2 = *(v1 + 16);
  os_unfair_lock_lock(v2 + 4);
  *(v1 + 24) = 0;
  swift_unknownObjectRelease();
  os_unfair_lock_unlock(v2 + 4);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_20DA6A61C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20D9C76B4;

  return sub_20DA6A330(a1, v4, v5, v6);
}

uint64_t sub_20DA6A6D0(uint64_t a1, uint64_t a2, void *a3)
{
  if (qword_27C8424B0 != -1)
  {
    swift_once();
  }

  v6 = sub_20DD64C44();
  __swift_project_value_buffer(v6, qword_27C844928);
  v7 = sub_20DD64C24();
  v8 = sub_20DD65384();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17[0] = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_20D9E0B38(0xD000000000000010, 0x800000020DD99C50, v17);
    _os_log_impl(&dword_20D9BF000, v7, v8, "%s Sending homed request to refresh graph with local process", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x20F327D10](v10, -1, -1);
    MEMORY[0x20F327D10](v9, -1, -1);
  }

  v11 = sub_20DD63624();
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  v17[4] = sub_20DA6AD68;
  v17[5] = v12;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 1107296256;
  v17[2] = sub_20DA899CC;
  v17[3] = &block_descriptor_10;
  v13 = _Block_copy(v17);

  v14 = [a3 _refreshBeforeDate_completionHandler_];
  _Block_release(v13);

  v15 = *(a2 + 16);
  os_unfair_lock_lock(v15 + 4);
  *(a2 + 24) = v14;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  os_unfair_lock_unlock(v15 + 4);
  return swift_unknownObjectRelease();
}

uint64_t sub_20DA6A91C(void *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = a1;
    if (qword_27C8424B0 != -1)
    {
      swift_once();
    }

    v5 = sub_20DD64C44();
    __swift_project_value_buffer(v5, qword_27C844928);
    v6 = a1;
    v7 = sub_20DD64C24();
    v8 = sub_20DD65364();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v24 = v11;
      *v9 = 136315394;
      *(v9 + 4) = sub_20D9E0B38(0xD000000000000010, 0x800000020DD99C50, &v24);
      *(v9 + 12) = 2112;
      v12 = a1;
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 14) = v13;
      *v10 = v13;
      _os_log_impl(&dword_20D9BF000, v7, v8, "%s HMHomeManager returned error: %@", v9, 0x16u);
      sub_20DA55258(v10);
      MEMORY[0x20F327D10](v10, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x20F327D10](v11, -1, -1);
      MEMORY[0x20F327D10](v9, -1, -1);
    }

    sub_20DA6AD88();
    v14 = swift_allocError();
    *v15 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8443A0, &qword_20DD94E00);
    v16 = swift_allocError();
    *v17 = v14;

    return MEMORY[0x282200958](a2, v16);
  }

  else
  {
    if (qword_27C8424B0 != -1)
    {
      swift_once();
    }

    v18 = sub_20DD64C44();
    __swift_project_value_buffer(v18, qword_27C844928);
    v19 = sub_20DD64C24();
    v20 = sub_20DD65384();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v24 = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_20D9E0B38(0xD000000000000010, 0x800000020DD99C50, &v24);
      _os_log_impl(&dword_20D9BF000, v19, v20, "%s Finished refreshing with homed", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x20F327D10](v22, -1, -1);
      MEMORY[0x20F327D10](v21, -1, -1);
    }

    return MEMORY[0x282200950](a2);
  }
}

uint64_t sub_20DA6AC74(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20DA6A268();
  }

  return result;
}

uint64_t sub_20DA6ACD4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_20DA6AD1C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_20DA6AD88()
{
  result = qword_27C844948;
  if (!qword_27C844948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C844948);
  }

  return result;
}

uint64_t static HFNetworkRouterStatusItem.serviceTypes.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843870, &qword_20DD93F40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20DD94280;
  *(inited + 32) = sub_20DD64EB4();
  *(inited + 40) = v1;
  *(inited + 48) = sub_20DD64EB4();
  *(inited + 56) = v2;
  v3 = sub_20D9EE93C(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  return v3;
}

id sub_20DA6AF7C(void *a1, void *a2)
{
  v4 = [swift_getObjCClassFromMetadata() serviceTypes];
  v5 = MEMORY[0x277D837D0];
  sub_20DD651E4();

  v6 = sub_20DD651C4();

  v7 = [a2 standardResultsForBatchReadResponse:a1 serviceTypes:v6];

  v8 = sub_20DD64DC4();
  *v68 = @"hidden";
  type metadata accessor for HFItemResultKey(0);
  sub_20DA0583C();
  v9 = @"hidden";
  sub_20DD65684();
  if (*(v8 + 16) && (v10 = sub_20D9CB264(v69), (v11 & 1) != 0))
  {
    sub_20D9D7174(*(v8 + 56) + 32 * v10, &v70);
    sub_20D9D4298(v69);
    if ((swift_dynamicCast() & 1) != 0 && v68[0] == 1)
    {
      goto LABEL_13;
    }
  }

  else
  {
    sub_20D9D4298(v69);
  }

  *v68 = @"representedHomeKitObjects";
  v12 = @"representedHomeKitObjects";
  sub_20DD65684();
  if (!*(v8 + 16) || (v13 = sub_20D9CB264(v69), (v14 & 1) == 0))
  {
    sub_20D9D4298(v69);
    goto LABEL_13;
  }

  sub_20D9D7174(*(v8 + 56) + 32 * v13, &v70);
  sub_20D9D4298(v69);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8449B8, &qword_20DD96138);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_13:
    v23 = objc_allocWithZone(HFItemUpdateOutcome);
    v24 = sub_20DD64DB4();
    v25 = [v23 initWithResults_];

    v26 = [objc_opt_self() futureWithResult_];
    v27 = [v26 asGeneric];

LABEL_14:

    return v27;
  }

  v15 = *v68;
  v16 = a1;
  sub_20DA6BB00(*v68, v16);
  v18 = v17;

  v19 = sub_20D9F938C(v18);

  *&v70 = @"statusRepresentedServiceStates";
  v20 = @"statusRepresentedServiceStates";
  sub_20DD65684();
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8449C0, &qword_20DD96140);
  *&v70 = v19;
  sub_20D9D77C8(&v70, v68);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_20D9D0DFC(v68, v69, isUniquelyReferenced_nonNull_native);
  sub_20D9D4298(v69);
  if ((v19 & 0xC000000000000001) != 0)
  {
    v22 = sub_20DD655B4();
  }

  else
  {
    v22 = *(v19 + 16);
  }

  if (v22 != 1)
  {

    v30 = [objc_opt_self() combinedStateTypeIdentifier];
    goto LABEL_20;
  }

  result = sub_20DA532D8(v19);
  if (result)
  {
    v29 = result;

    v30 = [v29 stateTypeIdentifier];

LABEL_20:
    v31 = sub_20DD64EB4();
    v33 = v32;

    if ((v15 & 0xC000000000000001) != 0)
    {
      v34 = sub_20DD655B4();
    }

    else
    {
      v34 = *(v15 + 16);
    }

    if (v34 == 1)
    {

      *&v70 = @"title";
      v35 = @"title";
      sub_20DD65684();
      v36 = sub_20DD64E74();
      v37 = HFLocalizedString(v36);

      v38 = sub_20DD64EB4();
      v40 = v39;

      v71 = v5;
      *&v70 = v38;
      *(&v70 + 1) = v40;
      sub_20D9D77C8(&v70, v68);
      v41 = swift_isUniquelyReferenced_nonNull_native();
      sub_20D9D0DFC(v68, v69, v41);
      sub_20D9D4298(v69);
      *&v70 = @"description";
      v42 = @"description";
      sub_20DD65684();
      *&v70 = 0;
      *(&v70 + 1) = 0xE000000000000000;
      sub_20DD65704();

      *&v70 = 0xD000000000000024;
      *(&v70 + 1) = 0x800000020DD99D50;
      MEMORY[0x20F325E90](v31, v33);

      v43 = sub_20DD64E74();

      v44 = HFLocalizedString(v43);
    }

    else
    {
      v67 = v31;
      *&v70 = @"title";
      v45 = @"title";
      sub_20DD65684();
      v46 = sub_20DD64E74();
      v47 = HFLocalizedString(v46);

      sub_20DD64EB4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C844DF0, &qword_20DD96310);
      v48 = swift_allocObject();
      *(v48 + 16) = xmmword_20DD93A70;
      if ((v15 & 0xC000000000000001) != 0)
      {
        v49 = sub_20DD655B4();
      }

      else
      {
        v49 = *(v15 + 16);
      }

      v50 = MEMORY[0x277D83C10];
      *(v48 + 56) = MEMORY[0x277D83B88];
      *(v48 + 64) = v50;
      *(v48 + 32) = v49;
      v51 = sub_20DD64EC4();
      v53 = v52;

      v71 = v5;
      *&v70 = v51;
      *(&v70 + 1) = v53;
      sub_20D9D77C8(&v70, v68);
      v54 = swift_isUniquelyReferenced_nonNull_native();
      sub_20D9D0DFC(v68, v69, v54);
      sub_20D9D4298(v69);
      *&v70 = @"description";
      v55 = @"description";
      sub_20DD65684();
      *&v70 = 0;
      *(&v70 + 1) = 0xE000000000000000;
      sub_20DD65704();

      *&v70 = 0xD000000000000029;
      *(&v70 + 1) = 0x800000020DD99D00;
      MEMORY[0x20F325E90](v67, v33);

      v43 = sub_20DD64E74();

      v44 = HFLocalizedString(v43);
    }

    v56 = v44;

    v57 = sub_20DD64EB4();
    v59 = v58;

    v71 = v5;
    *&v70 = v57;
    *(&v70 + 1) = v59;
    sub_20D9D77C8(&v70, v68);
    v60 = swift_isUniquelyReferenced_nonNull_native();
    sub_20D9D0DFC(v68, v69, v60);
    sub_20D9D4298(v69);
    *&v70 = @"statusItemCategory";
    v61 = @"statusItemCategory";
    sub_20DD65684();
    v62 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInteger_];
    v71 = sub_20D9D7510(0, &qword_27C8433B0, 0x277CCABB0);
    *&v70 = v62;
    sub_20D9D77C8(&v70, v68);
    v63 = swift_isUniquelyReferenced_nonNull_native();
    sub_20D9D0DFC(v68, v69, v63);
    sub_20D9D4298(v69);
    v64 = objc_allocWithZone(HFItemUpdateOutcome);
    v65 = sub_20DD64DB4();
    v66 = [v64 initWithResults_];

    v26 = [objc_opt_self() futureWithResult_];
    v27 = [v26 asGeneric];

    goto LABEL_14;
  }

  __break(1u);
  return result;
}

id HFNetworkRouterStatusItem.init(home:room:valueSource:)(void *a1, void *a2, uint64_t a3)
{
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithHome:a1 room:a2 valueSource:a3];

  swift_unknownObjectRelease();
  return v5;
}

{
  v7.super_class = HFNetworkRouterStatusItem;
  v5 = objc_msgSendSuper2(&v7, sel_initWithHome_room_valueSource_, a1, a2, a3);

  swift_unknownObjectRelease();
  return v5;
}

void sub_20DA6BB00(uint64_t a1, void *a2)
{
  v2 = a1;
  v25 = MEMORY[0x277D84F90];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_20DD65564();
    sub_20D9D7510(0, &qword_27C8435F0, 0x277CD1D90);
    sub_20DA6C1EC();
    sub_20DD65284();
    v2 = v20;
    v3 = v21;
    v5 = v22;
    v4 = v23;
    v6 = v24;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
    v5 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a1 + 56);

    v4 = 0;
  }

  while (v2 < 0)
  {
    if (!sub_20DD655F4() || (sub_20D9D7510(0, &qword_27C8435F0, 0x277CD1D90), swift_dynamicCast(), (v12 = v19) == 0))
    {
LABEL_23:
      sub_20D9C51CC(v2);
      return;
    }

LABEL_17:
    v13 = [a2 batchResponseForService_];
    if (v13 && (v14 = v13, v15 = [objc_opt_self() displayMetadataForService:v12 characteristicReadResponse:v13], v16 = objc_msgSend(v15, sel_serviceState), v15, v14, v16) && (objc_opt_self(), v17 = swift_dynamicCastObjCClass(), v12, v12 = v16, v17))
    {
      MEMORY[0x20F325F00]();
      if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_20DD65014();
      }

      sub_20DD65054();
    }

    else
    {
    }
  }

  v10 = v4;
  v11 = v6;
  if (v6)
  {
LABEL_13:
    v6 = (v11 - 1) & v11;
    v12 = *(*(v2 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v11)))));
    if (!v12)
    {
      goto LABEL_23;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= ((v5 + 64) >> 6))
    {
      goto LABEL_23;
    }

    v11 = *(v3 + 8 * v4);
    ++v10;
    if (v11)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

id _sSo25HFNetworkRouterStatusItemC4HomeE16_subclass_update7optionsSo8NAFutureCySo19HFItemUpdateOutcomeCGSDys11AnyHashableVypGSg_tF_0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843870, &qword_20DD93F40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20DD95210;
  *(inited + 32) = sub_20DD64EB4();
  *(inited + 40) = v4;
  *(inited + 48) = sub_20DD64EB4();
  *(inited + 56) = v5;
  *(inited + 64) = sub_20DD64EB4();
  *(inited + 72) = v6;
  v7 = sub_20D9EE93C(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  v8 = [swift_getObjCClassFromMetadata() serviceTypes];
  v9 = sub_20DD651E4();

  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = sub_20D9E0930(*(v9 + 16), 0);
    v12 = sub_20D9EB61C(aBlock, v11 + 4, v10, v9);
    sub_20D9C51CC(aBlock[0]);
    if (v12 == v10)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

LABEL_5:
  v13 = sub_20DD64FB4();

  v14 = *(v7 + 16);
  if (!v14)
  {
LABEL_8:
    v19 = sub_20DD64FB4();

    v20 = [v1 filteredServicesOfTypes:v13 containingCharacteristicTypes:v19];

    sub_20D9D7510(0, &qword_27C8435F0, 0x277CD1D90);
    sub_20DA6C1EC();
    sub_20DD651E4();

    v21 = [v1 valueSource];
    v22 = sub_20DD651C4();

    v23 = sub_20DD651C4();

    v24 = [v21 readValuesForCharacteristicTypes:v22 inServices:v23];

    swift_unknownObjectRelease();
    v25 = swift_allocObject();
    *(v25 + 16) = v1;
    *(v25 + 24) = ObjectType;
    aBlock[4] = sub_20DA6C254;
    aBlock[5] = v25;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_20DA055A4;
    aBlock[3] = &block_descriptor_11;
    v26 = _Block_copy(aBlock);
    v27 = v1;

    v28 = [v24 flatMap_];

    _Block_release(v26);
    return v28;
  }

  v29 = ObjectType;
  v15 = sub_20D9E0930(v14, 0);
  v16 = sub_20D9EB61C(aBlock, v15 + 4, v14, v7);
  v17 = aBlock[0];

  result = sub_20D9C51CC(v17);
  if (v16 == v14)
  {
    ObjectType = v29;
    v1 = v0;
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

unint64_t sub_20DA6C1EC()
{
  result = qword_27C843900;
  if (!qword_27C843900)
  {
    sub_20D9D7510(255, &qword_27C8435F0, 0x277CD1D90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C843900);
  }

  return result;
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_20DA6C274(char a1, void (*a2)(uint64_t *__return_ptr, char *, uint64_t *), uint64_t a3, void *a4)
{
  v5 = a1;
  BYTE1(v14) = a1;
  v6 = a4[2];
  if (v6)
  {
    v13 = a4[4];

    a2(&v14, &v14 + 1, &v13);
    if (v4)
    {
    }

    else
    {
      v9 = a4 + 5;
      for (i = v6 - 1; ; --i)
      {

        v5 = v14;
        BYTE1(v14) = v14;
        if (!i)
        {
          break;
        }

        v11 = *v9++;
        v13 = v11;

        a2(&v14, &v14 + 1, &v13);
      }
    }
  }

  return v5 & 1;
}

uint64_t sub_20DA6C360(void *a1)
{
  v1 = a1;
  matched = HMMatterCommand.expectedValuesMatchCurrentState.getter();

  return matched & 1;
}

uint64_t HMMatterCommand.expectedValuesMatchCurrentState.getter()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = sub_20DD64C44();
  v73 = *(v2 - 8);
  v74 = v2;
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v63 - v7;
  MEMORY[0x28223BE20](v6);
  v71 = &v63 - v9;
  v10 = sub_20DD63744();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = sub_20DD63CF4();
  v68 = *(v11 - 8);
  v69 = v11;
  MEMORY[0x28223BE20](v11);
  v67 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C844010, &qword_20DD946F0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v63 - v14;
  v16 = sub_20DD63CD4();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v63 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v63 - v21;
  v23 = [v1 expectedValues];
  if (!v23)
  {
    sub_20DD64BE4();
    v40 = v1;
    v41 = sub_20DD64C24();
    v42 = sub_20DD65364();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v75 = v45;
      *v43 = 136315394;
      *(v43 + 4) = sub_20D9E0B38(0xD000000000000029, 0x800000020DD99D80, &v75);
      *(v43 + 12) = 2114;
      *(v43 + 14) = v40;
      *v44 = v40;
      v46 = v40;
      _os_log_impl(&dword_20D9BF000, v41, v42, "%s: Command has no expectedValues! %{public}@", v43, 0x16u);
      sub_20D9D76EC(v44, &unk_27C843630, &qword_20DD94080);
      MEMORY[0x20F327D10](v44, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v45);
      MEMORY[0x20F327D10](v45, -1, -1);
      MEMORY[0x20F327D10](v43, -1, -1);
    }

    (*(v73 + 8))(v5, v74);
    goto LABEL_18;
  }

  v24 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C844850, &qword_20DD946F8);
  v72 = sub_20DD64FD4();

  v25 = [v1 accessory];
  v26 = sub_20DD652F4();
  if (!v26)
  {
    goto LABEL_11;
  }

  v28 = v26;
  v66 = v27;
  v29 = [v25 home];
  if (!v29)
  {
    swift_unknownObjectRelease();
LABEL_11:

    sub_20DD64BE4();
    v47 = v1;
    v48 = v25;
    v49 = sub_20DD64C24();
    v50 = sub_20DD65364();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v75 = v53;
      *v51 = 136315650;
      *(v51 + 4) = sub_20D9E0B38(0xD000000000000029, 0x800000020DD99D80, &v75);
      *(v51 + 12) = 2112;
      *(v51 + 14) = v48;
      *(v51 + 22) = 2114;
      *(v51 + 24) = v47;
      *v52 = v48;
      v52[1] = v47;
      v54 = v47;
      v55 = v48;
      _os_log_impl(&dword_20D9BF000, v49, v50, "%s: Failed to get matter device on accessory %@ from command %{public}@", v51, 0x20u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843630, &qword_20DD94080);
      swift_arrayDestroy();
      MEMORY[0x20F327D10](v52, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v53);
      MEMORY[0x20F327D10](v53, -1, -1);
      MEMORY[0x20F327D10](v51, -1, -1);
    }

    else
    {
    }

    (*(v73 + 8))(v8, v74);
    goto LABEL_18;
  }

  v64 = v25;
  v65 = v29;
  v63 = v28;
  v30 = [v1 clusterID];
  [v30 unsignedIntValue];

  sub_20DD63CC4();
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {

    sub_20D9D76EC(v15, &unk_27C844010, &qword_20DD946F0);
    v31 = v71;
    sub_20DD64BE4();
    v32 = v1;
    v33 = sub_20DD64C24();
    v34 = sub_20DD65364();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v75 = v37;
      *v35 = 136315650;
      *(v35 + 4) = sub_20D9E0B38(0xD000000000000029, 0x800000020DD99D80, &v75);
      *(v35 + 12) = 2112;
      v38 = [v32 clusterID];
      *(v35 + 14) = v38;
      *(v35 + 22) = 2114;
      *(v35 + 24) = v32;
      *v36 = v38;
      v36[1] = v32;
      v39 = v32;
      _os_log_impl(&dword_20D9BF000, v33, v34, "%s: Failed to get cluster kind for %@ from command %{public}@", v35, 0x20u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843630, &qword_20DD94080);
      swift_arrayDestroy();
      MEMORY[0x20F327D10](v36, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v37);
      MEMORY[0x20F327D10](v37, -1, -1);
      MEMORY[0x20F327D10](v35, -1, -1);

      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }

    (*(v73 + 8))(v31, v74);
LABEL_18:
    v61 = 0;
    return v61 & 1;
  }

  (*(v17 + 32))(v22, v15, v16);
  v56 = [v65 uniqueIdentifier];
  sub_20DD63714();

  v57 = v63;
  swift_getObjectType();
  sub_20DD63D94();
  v58 = [v1 endpointID];
  [v58 unsignedShortValue];

  (*(v17 + 16))(v20, v22, v16);
  v59 = v67;
  v60 = sub_20DD63CE4();
  MEMORY[0x28223BE20](v60);
  *(&v63 - 6) = v1;
  *(&v63 - 5) = v57;
  *(&v63 - 4) = v66;
  *(&v63 - 3) = v59;
  *(&v63 - 2) = ObjectType;
  v61 = sub_20DA6C274(1, sub_20DA6E220, (&v63 - 8), v72);

  swift_unknownObjectRelease();

  (*(v17 + 8))(v22, v16);
  (*(v68 + 8))(v59, v69);
  return v61 & 1;
}

uint64_t sub_20DA6CD54@<X0>(unsigned __int8 *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _BYTE *a7@<X8>)
{
  v165 = a6;
  v164 = a5;
  v163 = a4;
  v170 = a7;
  v166 = sub_20DD63CF4();
  v167 = *(v166 - 8);
  MEMORY[0x28223BE20](v166);
  v162 = &v154[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v171 = sub_20DD64C44();
  v180 = *(v171 - 8);
  v11 = MEMORY[0x28223BE20](v171);
  v13 = &v154[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v154[-v15];
  v17 = MEMORY[0x28223BE20](v14);
  v169 = &v154[-v18];
  v19 = MEMORY[0x28223BE20](v17);
  v168 = &v154[-v20];
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v154[-v22];
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v154[-v25];
  MEMORY[0x28223BE20](v24);
  v28 = &v154[-v27];
  v29 = *a1;
  v30 = *a2;
  v31 = sub_20DD64EB4();
  if (!*(v30 + 16))
  {

LABEL_8:
    sub_20DD64BE4();
    v52 = a3;

    v53 = sub_20DD64C24();
    v54 = sub_20DD65364();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v172[0] = v57;
      *v55 = 136315650;
      *(v55 + 4) = sub_20D9E0B38(0xD000000000000029, 0x800000020DD99D80, v172);
      *(v55 + 12) = 2080;
      v58 = sub_20DD64DD4();
      v60 = sub_20D9E0B38(v58, v59, v172);

      *(v55 + 14) = v60;
      *(v55 + 22) = 2114;
      *(v55 + 24) = v52;
      *v56 = v52;
      v61 = v52;
      _os_log_impl(&dword_20D9BF000, v53, v54, "%s: Failed to get attribute path for %s from command %{public}@", v55, 0x20u);
      sub_20D9D76EC(v56, &unk_27C843630, &qword_20DD94080);
      MEMORY[0x20F327D10](v56, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x20F327D10](v57, -1, -1);
      MEMORY[0x20F327D10](v55, -1, -1);
    }

    result = (*(v180 + 8))(v13, v171);
    goto LABEL_11;
  }

  v160 = v29;
  v159 = v23;
  v33 = sub_20D9CB170(v31, v32);
  v35 = v34;

  if ((v35 & 1) == 0)
  {
    goto LABEL_8;
  }

  sub_20D9D7174(*(v30 + 56) + 32 * v33, v172);
  sub_20D9D7510(0, &qword_27C8449D0, 0x277CD51C0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_8;
  }

  v161 = v179[0];
  v36 = [v161 endpoint];
  v37 = [v36 unsignedShortValue];

  v38 = [a3 endpointID];
  v39 = [v38 unsignedShortValue];

  if (v37 != v39)
  {
    sub_20DD64BE4();
    v40 = v161;
    v41 = a3;
    v42 = sub_20DD64C24();
    v43 = sub_20DD65364();

    v157 = v40;
    v158 = v42;
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v155 = v43;
      v46 = v45;
      v156 = swift_slowAlloc();
      v172[0] = v156;
      *v44 = 136315906;
      *(v44 + 4) = sub_20D9E0B38(0xD000000000000029, 0x800000020DD99D80, v172);
      *(v44 + 12) = 2112;
      v47 = [v157 endpoint];
      *(v44 + 14) = v47;
      *v46 = v47;
      *(v44 + 22) = 2112;
      v48 = [v41 endpointID];
      *(v44 + 24) = v48;
      *(v44 + 32) = 2114;
      *(v44 + 34) = v41;
      v46[1] = v48;
      v46[2] = v41;
      v49 = v41;
      v50 = v158;
      _os_log_impl(&dword_20D9BF000, v158, v155, "%s: WARNING: EndpointID in expectedValues (%@) doesn't match HMMatterCommand (%@). %{public}@", v44, 0x2Au);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843630, &qword_20DD94080);
      swift_arrayDestroy();
      MEMORY[0x20F327D10](v46, -1, -1);
      v51 = v156;
      __swift_destroy_boxed_opaque_existential_0(v156);
      MEMORY[0x20F327D10](v51, -1, -1);
      MEMORY[0x20F327D10](v44, -1, -1);
    }

    else
    {
    }

    (*(v180 + 8))(v28, v171);
  }

  v63 = v161;
  v64 = [v161 cluster];

  v65 = &selRef_source;
  LODWORD(v63) = [v64 unsignedIntValue];

  v66 = [a3 clusterID];
  v67 = [v66 unsignedIntValue];

  if (v63 != v67)
  {
    sub_20DD64BE4();
    v68 = v161;
    v69 = a3;
    v70 = sub_20DD64C24();
    v71 = sub_20DD65364();

    v158 = v70;
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      LODWORD(v156) = v71;
      v74 = v73;
      v157 = swift_slowAlloc();
      v172[0] = v157;
      *v72 = 136315906;
      *(v72 + 4) = sub_20D9E0B38(0xD000000000000029, 0x800000020DD99D80, v172);
      *(v72 + 12) = 2112;
      v75 = [v68 cluster];
      *(v72 + 14) = v75;
      *v74 = v75;
      *(v72 + 22) = 2112;
      v76 = [v69 clusterID];
      *(v72 + 24) = v76;
      *(v72 + 32) = 2114;
      *(v72 + 34) = v69;
      v74[1] = v76;
      v74[2] = v69;
      v77 = v69;
      v78 = v158;
      _os_log_impl(&dword_20D9BF000, v158, v156, "%s: WARNING: Cluster ID in expectedValues (%@) doesn't match HMMatterCommand (%@).  %{public}@", v72, 0x2Au);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843630, &qword_20DD94080);
      swift_arrayDestroy();
      MEMORY[0x20F327D10](v74, -1, -1);
      v79 = v157;
      __swift_destroy_boxed_opaque_existential_0(v157);
      MEMORY[0x20F327D10](v79, -1, -1);
      v80 = v72;
      v65 = 0x1FB752000;
      MEMORY[0x20F327D10](v80, -1, -1);
    }

    else
    {
    }

    (*(v180 + 8))(v26, v171);
  }

  v81 = sub_20DD64EB4();
  if (!*(v30 + 16))
  {

    goto LABEL_30;
  }

  v83 = sub_20D9CB170(v81, v82);
  v85 = v84;

  if ((v85 & 1) == 0 || (sub_20D9D7174(*(v30 + 56) + 32 * v83, v172), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C844850, &qword_20DD946F8), (swift_dynamicCast() & 1) == 0))
  {
LABEL_30:
    sub_20DD64BE4();
    v110 = a3;

    v111 = sub_20DD64C24();
    v112 = sub_20DD65364();

    if (os_log_type_enabled(v111, v112))
    {
      v113 = swift_slowAlloc();
      v114 = swift_slowAlloc();
      v115 = swift_slowAlloc();
      v172[0] = v115;
      *v113 = 136315650;
      *(v113 + 4) = sub_20D9E0B38(0xD000000000000029, 0x800000020DD99D80, v172);
      *(v113 + 12) = 2082;
      v116 = sub_20DD64DD4();
      v118 = sub_20D9E0B38(v116, v117, v172);

      *(v113 + 14) = v118;
      *(v113 + 22) = 2114;
      *(v113 + 24) = v110;
      *v114 = v110;
      v119 = v110;
      _os_log_impl(&dword_20D9BF000, v111, v112, "%s: Failed to get data for %{public}s from command %{public}@", v113, 0x20u);
      sub_20D9D76EC(v114, &unk_27C843630, &qword_20DD94080);
      MEMORY[0x20F327D10](v114, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x20F327D10](v115, -1, -1);
      MEMORY[0x20F327D10](v113, -1, -1);
    }

    else
    {
    }

    result = (*(v180 + 8))(v16, v171);
    goto LABEL_11;
  }

  v86 = v179[0];
  v87 = sub_20DD64EB4();
  if (!v86[2])
  {

    v92 = v169;
    goto LABEL_36;
  }

  v89 = sub_20D9CB170(v87, v88);
  v91 = v90;

  v92 = v169;
  if ((v91 & 1) == 0 || (sub_20D9D7174(v86[7] + 32 * v89, v172), (swift_dynamicCast() & 1) == 0))
  {

LABEL_36:
    sub_20DD64BE4();
    v120 = a3;

    v121 = sub_20DD64C24();
    v122 = sub_20DD65364();

    if (os_log_type_enabled(v121, v122))
    {
      v123 = swift_slowAlloc();
      v124 = swift_slowAlloc();
      v125 = swift_slowAlloc();
      v172[0] = v125;
      *v123 = 136315650;
      *(v123 + 4) = sub_20D9E0B38(0xD000000000000029, 0x800000020DD99D80, v172);
      *(v123 + 12) = 2082;
      v126 = sub_20DD64DD4();
      v128 = sub_20D9E0B38(v126, v127, v172);

      *(v123 + 14) = v128;
      *(v123 + 22) = 2112;
      *(v123 + 24) = v120;
      *v124 = v120;
      v129 = v120;
      _os_log_impl(&dword_20D9BF000, v121, v122, "%s: Failed to get data for %{public}s from command %@", v123, 0x20u);
      sub_20D9D76EC(v124, &unk_27C843630, &qword_20DD94080);
      MEMORY[0x20F327D10](v124, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x20F327D10](v125, -1, -1);
      MEMORY[0x20F327D10](v123, -1, -1);

      result = (*(v180 + 8))(v169, v171);
    }

    else
    {

      result = (*(v180 + 8))(v92, v171);
    }

    goto LABEL_11;
  }

  v94 = v179[0];
  v93 = v179[1];
  v95 = sub_20DD64EB4();
  if (!v86[2])
  {

LABEL_40:

    v130 = v168;
    sub_20DD64BE4();
    v131 = a3;

    v132 = sub_20DD64C24();
    v133 = sub_20DD65364();

    if (os_log_type_enabled(v132, v133))
    {
      v134 = swift_slowAlloc();
      v135 = swift_slowAlloc();
      v136 = swift_slowAlloc();
      v172[0] = v136;
      *v134 = 136315650;
      *(v134 + 4) = sub_20D9E0B38(0xD000000000000029, 0x800000020DD99D80, v172);
      *(v134 + 12) = 2082;
      v137 = sub_20DD64DD4();
      v139 = sub_20D9E0B38(v137, v138, v172);

      *(v134 + 14) = v139;
      *(v134 + 22) = 2114;
      *(v134 + 24) = v131;
      *v135 = v131;
      v140 = v131;
      _os_log_impl(&dword_20D9BF000, v132, v133, "%s: Failed to get data for %{public}s from command %{public}@", v134, 0x20u);
      sub_20D9D76EC(v135, &unk_27C843630, &qword_20DD94080);
      MEMORY[0x20F327D10](v135, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x20F327D10](v136, -1, -1);
      MEMORY[0x20F327D10](v134, -1, -1);

      result = (*(v180 + 8))(v168, v171);
    }

    else
    {

      result = (*(v180 + 8))(v130, v171);
    }

LABEL_11:
    *v170 = 0;
    return result;
  }

  v169 = v94;
  v97 = v65;
  v98 = sub_20D9CB170(v95, v96);
  v100 = v99;

  if ((v100 & 1) == 0)
  {
    goto LABEL_40;
  }

  sub_20D9D7174(v86[7] + 32 * v98, v179);

  v101 = [v161 attribute];
  v102 = [v101 (v97 + 696)];

  swift_getObjectType();
  v103 = v166;
  v173 = v166;
  v174 = sub_20DA6F528(&qword_27C8449D8, MEMORY[0x277D155A0]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v172);
  v105 = *(v167 + 16);
  v106 = v165;
  v105(boxed_opaque_existential_1, v165, v103);
  sub_20DD63DA4();
  __swift_destroy_boxed_opaque_existential_0(v172);
  if (!v176)
  {
    LODWORD(v169) = v102;

    sub_20D9D76EC(&v175, &qword_27C8442C0, &qword_20DD94B78);
    v141 = v159;
    sub_20DD64BE4();
    v142 = v162;
    v143 = v106;
    v144 = v141;
    v105(v162, v143, v103);
    v145 = sub_20DD64C24();
    v146 = sub_20DD65364();
    if (os_log_type_enabled(v145, v146))
    {
      v147 = v142;
      v148 = swift_slowAlloc();
      v172[0] = swift_slowAlloc();
      v149 = v172[0];
      *v148 = 136315650;
      *(v148 + 4) = sub_20D9E0B38(0xD000000000000029, 0x800000020DD99D80, v172);
      *(v148 + 12) = 2082;
      sub_20DA6F528(&unk_27C8449E0, MEMORY[0x277D155B0]);
      v150 = sub_20DD65934();
      v152 = v151;
      (*(v167 + 8))(v147, v103);
      v153 = sub_20D9E0B38(v150, v152, v172);

      *(v148 + 14) = v153;
      *(v148 + 22) = 1026;
      *(v148 + 24) = v169;
      _os_log_impl(&dword_20D9BF000, v145, v146, "%s: Failed to get current value for (%{public}s:%{public}u)", v148, 0x1Cu);
      swift_arrayDestroy();
      MEMORY[0x20F327D10](v149, -1, -1);
      MEMORY[0x20F327D10](v148, -1, -1);
    }

    else
    {

      (*(v167 + 8))(v142, v103);
    }

    (*(v180 + 8))(v144, v171);
    result = __swift_destroy_boxed_opaque_existential_0(v179);
    goto LABEL_11;
  }

  sub_20D9D77C8(&v175, &v177);
  v107 = v178;
  v108 = __swift_project_boxed_opaque_existential_0(&v177, v178);
  v173 = v107;
  v109 = __swift_allocate_boxed_opaque_existential_1(v172);
  (*(*(v107 - 8) + 16))(v109, v108, v107);
  LOBYTE(v107) = sub_20DA6E244(v179, v172, v169, v93);

  __swift_destroy_boxed_opaque_existential_0(v179);
  __swift_destroy_boxed_opaque_existential_0(v172);
  *v170 = v160 & v107;
  return __swift_destroy_boxed_opaque_existential_0(&v177);
}

uint64_t sub_20DA6E160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v6 = a5;
  sub_20DD654E4();
  swift_unknownObjectRelease();
  sub_20DD654E4();
  swift_unknownObjectRelease();
  v7 = sub_20DD64EB4();
  v9 = v8;

  LOBYTE(v6) = sub_20DA6E244(v12, v11, v7, v9);

  __swift_destroy_boxed_opaque_existential_0(v11);
  __swift_destroy_boxed_opaque_existential_0(v12);
  return v6 & 1;
}

uint64_t sub_20DA6E244(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = sub_20DD64C44();
  v9 = *(v8 - 8);
  v145 = v8;
  v146 = v9;
  v10 = MEMORY[0x28223BE20](v8);
  v143 = &v141 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v141 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v144 = &v141 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v141 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v141 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v141 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v141 - v26;
  if (sub_20DD64EB4() == a3 && v28 == a4)
  {
  }

  else
  {
    v142 = v14;
    v30 = sub_20DD65974();

    if ((v30 & 1) == 0)
    {
      v32 = sub_20DD64EB4() == a3 && v31 == a4;
      v33 = a1;
      if (v32)
      {
      }

      else
      {
        v34 = sub_20DD65974();

        if ((v34 & 1) == 0)
        {
          if (sub_20DD64EB4() == a3 && v35 == a4)
          {

            v36 = a2;
            goto LABEL_33;
          }

          v65 = sub_20DD65974();

          v36 = a2;
          if (v65)
          {
LABEL_33:
            sub_20D9D7174(a1, v150);
            if (swift_dynamicCast())
            {
              v66 = v149[0];
              sub_20D9D7174(v36, v150);
              if (swift_dynamicCast())
              {
                v38 = *&v66 == *&v149[0];
                return v38 & 1;
              }
            }

            sub_20DD64BE4();
            sub_20D9D7174(a1, v150);
            sub_20D9D7174(v36, v149);
            v67 = sub_20DD64C24();
            v68 = sub_20DD65364();
            if (os_log_type_enabled(v67, v68))
            {
              v69 = swift_slowAlloc();
              v70 = swift_slowAlloc();
              v148 = v70;
              *v69 = 136315650;
              *(v69 + 4) = sub_20D9E0B38(0xD000000000000029, 0x800000020DD99D80, &v148);
              *(v69 + 12) = 2082;
              sub_20D9D7174(v150, v147);
              v71 = sub_20DD64EE4();
              v73 = v72;
              __swift_destroy_boxed_opaque_existential_0(v150);
              v74 = sub_20D9E0B38(v71, v73, &v148);

              *(v69 + 14) = v74;
              *(v69 + 22) = 2082;
              sub_20D9D7174(v149, v147);
              v75 = sub_20DD64EE4();
              v77 = v76;
              __swift_destroy_boxed_opaque_existential_0(v149);
              v78 = sub_20D9E0B38(v75, v77, &v148);

              *(v69 + 24) = v78;
              _os_log_impl(&dword_20D9BF000, v67, v68, "%s: Comparing UInt type, but couldn't cast all values: (%{public}s) (%{public}s)", v69, 0x20u);
              swift_arrayDestroy();
              MEMORY[0x20F327D10](v70, -1, -1);
              MEMORY[0x20F327D10](v69, -1, -1);
            }

            else
            {

              __swift_destroy_boxed_opaque_existential_0(v149);
              __swift_destroy_boxed_opaque_existential_0(v150);
            }

            (*(v146 + 8))(v22, v145);
            goto LABEL_22;
          }

          if (sub_20DD64EB4() == a3 && v79 == a4)
          {

            goto LABEL_44;
          }

          v80 = sub_20DD65974();

          if (v80)
          {
LABEL_44:
            sub_20D9D7174(a1, v150);
            if (swift_dynamicCast())
            {
              v81 = v149[0];
              sub_20D9D7174(a2, v150);
              if (swift_dynamicCast())
              {
                v38 = v81 == v149[0];
                return v38 & 1;
              }
            }

            sub_20DD64BE4();
            sub_20D9D7174(a1, v150);
            sub_20D9D7174(a2, v149);
            v82 = sub_20DD64C24();
            v83 = sub_20DD65364();
            if (os_log_type_enabled(v82, v83))
            {
              v84 = swift_slowAlloc();
              v85 = swift_slowAlloc();
              v148 = v85;
              *v84 = 136315650;
              *(v84 + 4) = sub_20D9E0B38(0xD000000000000029, 0x800000020DD99D80, &v148);
              *(v84 + 12) = 2082;
              sub_20D9D7174(v150, v147);
              v86 = sub_20DD64EE4();
              v88 = v87;
              __swift_destroy_boxed_opaque_existential_0(v150);
              v89 = sub_20D9E0B38(v86, v88, &v148);

              *(v84 + 14) = v89;
              *(v84 + 22) = 2082;
              sub_20D9D7174(v149, v147);
              v90 = sub_20DD64EE4();
              v92 = v91;
              __swift_destroy_boxed_opaque_existential_0(v149);
              v93 = sub_20D9E0B38(v90, v92, &v148);

              *(v84 + 24) = v93;
              _os_log_impl(&dword_20D9BF000, v82, v83, "%s: Comparing Double type, but couldn't cast all values: (%{public}s) (%{public}s)", v84, 0x20u);
              swift_arrayDestroy();
              MEMORY[0x20F327D10](v85, -1, -1);
              MEMORY[0x20F327D10](v84, -1, -1);
            }

            else
            {

              __swift_destroy_boxed_opaque_existential_0(v149);
              __swift_destroy_boxed_opaque_existential_0(v150);
            }

            (*(v146 + 8))(v19, v145);
            goto LABEL_22;
          }

          if (sub_20DD64EB4() == a3 && v94 == a4)
          {

LABEL_55:
            sub_20D9D7174(a1, v150);
            if (swift_dynamicCast())
            {
              v96 = *v149;
              sub_20D9D7174(a2, v150);
              v97 = swift_dynamicCast();
              v98 = v144;
              if (v97)
              {
                v38 = v96 == *v149;
                return v38 & 1;
              }
            }

            else
            {
              v98 = v144;
            }

            sub_20DD64BE4();
            sub_20D9D7174(v33, v150);
            sub_20D9D7174(a2, v149);
            v99 = sub_20DD64C24();
            v100 = sub_20DD65364();
            if (os_log_type_enabled(v99, v100))
            {
              v101 = swift_slowAlloc();
              v102 = swift_slowAlloc();
              v148 = v102;
              *v101 = 136315650;
              *(v101 + 4) = sub_20D9E0B38(0xD000000000000029, 0x800000020DD99D80, &v148);
              *(v101 + 12) = 2082;
              sub_20D9D7174(v150, v147);
              v103 = sub_20DD64EE4();
              v105 = v104;
              __swift_destroy_boxed_opaque_existential_0(v150);
              v106 = sub_20D9E0B38(v103, v105, &v148);

              *(v101 + 14) = v106;
              *(v101 + 22) = 2082;
              sub_20D9D7174(v149, v147);
              v107 = sub_20DD64EE4();
              v109 = v108;
              __swift_destroy_boxed_opaque_existential_0(v149);
              v110 = sub_20D9E0B38(v107, v109, &v148);

              *(v101 + 24) = v110;
              _os_log_impl(&dword_20D9BF000, v99, v100, "%s: Comparing Float type, but couldn't cast all values: (%{public}s) (%{public}s)", v101, 0x20u);
              swift_arrayDestroy();
              MEMORY[0x20F327D10](v102, -1, -1);
              MEMORY[0x20F327D10](v101, -1, -1);
            }

            else
            {

              __swift_destroy_boxed_opaque_existential_0(v149);
              __swift_destroy_boxed_opaque_existential_0(v150);
            }

            (*(v146 + 8))(v98, v145);
            goto LABEL_22;
          }

          v95 = sub_20DD65974();

          if (v95)
          {
            goto LABEL_55;
          }

          if (sub_20DD64EB4() == a3 && v111 == a4)
          {

LABEL_67:
            sub_20D9D7174(a1, v150);
            sub_20D9D7510(0, &qword_27C8449C8, 0x277CBEA60);
            if (swift_dynamicCast())
            {
              v113 = v149[0];
              sub_20D9D7174(a2, v150);
              if (swift_dynamicCast())
              {
                v114 = v149[0];
                sub_20D9D7510(0, &qword_27C8441A0, 0x277D82BB8);
                v38 = sub_20DD65454();

                return v38 & 1;
              }
            }

            v128 = v142;
            sub_20DD64BE4();
            sub_20D9D7174(a1, v150);
            sub_20D9D7174(a2, v149);
            v129 = sub_20DD64C24();
            v130 = sub_20DD65364();
            if (os_log_type_enabled(v129, v130))
            {
              v131 = swift_slowAlloc();
              v132 = swift_slowAlloc();
              v148 = v132;
              *v131 = 136315650;
              *(v131 + 4) = sub_20D9E0B38(0xD000000000000029, 0x800000020DD99D80, &v148);
              *(v131 + 12) = 2082;
              sub_20D9D7174(v150, v147);
              v133 = sub_20DD64EE4();
              v135 = v134;
              __swift_destroy_boxed_opaque_existential_0(v150);
              v136 = sub_20D9E0B38(v133, v135, &v148);

              *(v131 + 14) = v136;
              *(v131 + 22) = 2082;
              sub_20D9D7174(v149, v147);
              v137 = sub_20DD64EE4();
              v139 = v138;
              __swift_destroy_boxed_opaque_existential_0(v149);
              v140 = sub_20D9E0B38(v137, v139, &v148);

              *(v131 + 24) = v140;
              _os_log_impl(&dword_20D9BF000, v129, v130, "%s: Comparing Array type, but couldn't cast all values: (%{public}s) (%{public}s)", v131, 0x20u);
              swift_arrayDestroy();
              MEMORY[0x20F327D10](v132, -1, -1);
              MEMORY[0x20F327D10](v131, -1, -1);
            }

            else
            {

              __swift_destroy_boxed_opaque_existential_0(v149);
              __swift_destroy_boxed_opaque_existential_0(v150);
            }

            (*(v146 + 8))(v128, v145);
            goto LABEL_22;
          }

          v112 = sub_20DD65974();

          if (v112)
          {
            goto LABEL_67;
          }

          v115 = v143;
          sub_20DD64BE4();
          sub_20D9D7174(a1, v150);
          sub_20D9D7174(v36, v149);

          v116 = sub_20DD64C24();
          v117 = sub_20DD65364();

          if (os_log_type_enabled(v116, v117))
          {
            v118 = swift_slowAlloc();
            v119 = swift_slowAlloc();
            v148 = v119;
            *v118 = 136315906;
            *(v118 + 4) = sub_20D9E0B38(0xD000000000000029, 0x800000020DD99D80, &v148);
            *(v118 + 12) = 2080;
            *(v118 + 14) = sub_20D9E0B38(a3, a4, &v148);
            *(v118 + 22) = 2082;
            sub_20D9D7174(v150, v147);
            v120 = sub_20DD64EE4();
            v122 = v121;
            __swift_destroy_boxed_opaque_existential_0(v150);
            v123 = sub_20D9E0B38(v120, v122, &v148);

            *(v118 + 24) = v123;
            *(v118 + 32) = 2082;
            sub_20D9D7174(v149, v147);
            v124 = sub_20DD64EE4();
            v126 = v125;
            __swift_destroy_boxed_opaque_existential_0(v149);
            v127 = sub_20D9E0B38(v124, v126, &v148);

            *(v118 + 34) = v127;
            _os_log_impl(&dword_20D9BF000, v116, v117, "%s: Attempted to compare unsupported type: (%s) values: (%{public}s) (%{public}s)", v118, 0x2Au);
            swift_arrayDestroy();
            MEMORY[0x20F327D10](v119, -1, -1);
            MEMORY[0x20F327D10](v118, -1, -1);
          }

          else
          {

            __swift_destroy_boxed_opaque_existential_0(v149);
            __swift_destroy_boxed_opaque_existential_0(v150);
          }

          (*(v146 + 8))(v115, v145);
LABEL_22:
          v38 = 0;
          return v38 & 1;
        }
      }

      sub_20D9D7174(a1, v150);
      if (swift_dynamicCast())
      {
        v52 = v149[0];
        sub_20D9D7174(a2, v150);
        if (swift_dynamicCast())
        {
          v38 = *&v52 == *&v149[0];
          return v38 & 1;
        }
      }

      sub_20DD64BE4();
      sub_20D9D7174(a1, v150);
      sub_20D9D7174(a2, v149);
      v53 = sub_20DD64C24();
      v54 = sub_20DD65364();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v148 = v56;
        *v55 = 136315650;
        *(v55 + 4) = sub_20D9E0B38(0xD000000000000029, 0x800000020DD99D80, &v148);
        *(v55 + 12) = 2082;
        sub_20D9D7174(v150, v147);
        v57 = sub_20DD64EE4();
        v59 = v58;
        __swift_destroy_boxed_opaque_existential_0(v150);
        v60 = sub_20D9E0B38(v57, v59, &v148);

        *(v55 + 14) = v60;
        *(v55 + 22) = 2082;
        sub_20D9D7174(v149, v147);
        v61 = sub_20DD64EE4();
        v63 = v62;
        __swift_destroy_boxed_opaque_existential_0(v149);
        v64 = sub_20D9E0B38(v61, v63, &v148);

        *(v55 + 24) = v64;
        _os_log_impl(&dword_20D9BF000, v53, v54, "%s: Comparing Int type, but couldn't cast all values: (%{public}s) (%{public}s)", v55, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x20F327D10](v56, -1, -1);
        MEMORY[0x20F327D10](v55, -1, -1);
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_0(v149);
        __swift_destroy_boxed_opaque_existential_0(v150);
      }

      (*(v146 + 8))(v25, v145);
      goto LABEL_22;
    }
  }

  sub_20D9D7174(a1, v150);
  if ((swift_dynamicCast() & 1) == 0 || (v37 = LOBYTE(v149[0]), sub_20D9D7174(a2, v150), (swift_dynamicCast() & 1) == 0))
  {
    sub_20DD64BE4();
    sub_20D9D7174(a1, v150);
    sub_20D9D7174(a2, v149);
    v39 = sub_20DD64C24();
    v40 = sub_20DD65364();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v148 = v42;
      *v41 = 136315650;
      *(v41 + 4) = sub_20D9E0B38(0xD000000000000029, 0x800000020DD99D80, &v148);
      *(v41 + 12) = 2082;
      sub_20D9D7174(v150, v147);
      v43 = sub_20DD64EE4();
      v45 = v44;
      __swift_destroy_boxed_opaque_existential_0(v150);
      v46 = sub_20D9E0B38(v43, v45, &v148);

      *(v41 + 14) = v46;
      *(v41 + 22) = 2082;
      sub_20D9D7174(v149, v147);
      v47 = sub_20DD64EE4();
      v49 = v48;
      __swift_destroy_boxed_opaque_existential_0(v149);
      v50 = sub_20D9E0B38(v47, v49, &v148);

      *(v41 + 24) = v50;
      _os_log_impl(&dword_20D9BF000, v39, v40, "%s: Comparing Bool type, but couldn't cast all values: (%{public}s (%{public}s)", v41, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x20F327D10](v42, -1, -1);
      MEMORY[0x20F327D10](v41, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0(v149);
      __swift_destroy_boxed_opaque_existential_0(v150);
    }

    (*(v146 + 8))(v27, v145);
    goto LABEL_22;
  }

  v38 = v37 ^ LOBYTE(v149[0]) ^ 1;
  return v38 & 1;
}

uint64_t sub_20DA6F528(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_20DD63CF4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_20DA6F56C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v26 = MEMORY[0x277D84F90];
  sub_20DA4AF84(0, v1, 0);
  v2 = v26;
  v25 = a1 + 56;
  result = sub_20DD65514();
  v5 = result;
  v6 = 0;
  v24 = v1;
  while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(a1 + 32))
  {
    v9 = v5 >> 6;
    if ((*(v25 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
    {
      goto LABEL_21;
    }

    v10 = *(a1 + 36);
    result = sub_20DD64EB4();
    v13 = *(v26 + 16);
    v12 = *(v26 + 24);
    if (v13 >= v12 >> 1)
    {
      v22 = v11;
      v23 = result;
      sub_20DA4AF84((v12 > 1), v13 + 1, 1);
      v11 = v22;
      result = v23;
    }

    *(v26 + 16) = v13 + 1;
    v14 = v26 + 16 * v13;
    *(v14 + 32) = result;
    *(v14 + 40) = v11;
    v7 = 1 << *(a1 + 32);
    if (v5 >= v7)
    {
      goto LABEL_22;
    }

    v15 = *(v25 + 8 * v9);
    if ((v15 & (1 << v5)) == 0)
    {
      goto LABEL_23;
    }

    if (v10 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v16 = v15 & (-2 << (v5 & 0x3F));
    if (v16)
    {
      v7 = __clz(__rbit64(v16)) | v5 & 0x7FFFFFFFFFFFFFC0;
      v8 = v24;
    }

    else
    {
      v17 = v9 << 6;
      v18 = v9 + 1;
      v8 = v24;
      v19 = (a1 + 64 + 8 * v9);
      while (v18 < (v7 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          result = sub_20D9EF46C(v5, v10, 0);
          v7 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      result = sub_20D9EF46C(v5, v10, 0);
    }

LABEL_4:
    ++v6;
    v5 = v7;
    if (v6 == v8)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_20DA6F790(uint64_t a1)
{
  v3 = sub_20DD63744();
  v4 = *(v3 - 8);
  v41 = v3;
  v42 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = sub_20DD655B4();
  }

  else
  {
    v7 = *(a1 + 16);
  }

  result = MEMORY[0x277D84F90];
  if (v7)
  {
    v49 = MEMORY[0x277D84F90];
    sub_20DA4B068(0, v7 & ~(v7 >> 63), 0);
    v44 = v49;
    if (v43)
    {
      result = sub_20DD65554();
    }

    else
    {
      result = sub_20DD65514();
      v9 = *(a1 + 36);
    }

    v46 = result;
    v47 = v9;
    v48 = v43 != 0;
    if ((v7 & 0x8000000000000000) == 0)
    {
      v10 = 0;
      v39 = v7;
      v40 = v42 + 32;
      v11 = a1 & 0xFFFFFFFFFFFFFF8;
      if (a1 < 0)
      {
        v11 = a1;
      }

      v37 = a1 + 56;
      v38 = v11;
      v35[1] = v1;
      v36 = a1 + 64;
      while (v10 < v7)
      {
        if (__OFADD__(v10++, 1))
        {
          goto LABEL_37;
        }

        v14 = v46;
        v15 = v47;
        v16 = v48;
        v17 = a1;
        sub_20DA737FC(v46, v47, v48, a1, &qword_280E02100, 0x277CD1970);
        v19 = v18;
        v20 = [v18 uniqueIdentifier];
        sub_20DD63714();

        v21 = v44;
        v49 = v44;
        v23 = *(v44 + 16);
        v22 = *(v44 + 24);
        if (v23 >= v22 >> 1)
        {
          sub_20DA4B068((v22 > 1), v23 + 1, 1);
          v21 = v49;
        }

        *(v21 + 16) = v23 + 1;
        v24 = (*(v42 + 80) + 32) & ~*(v42 + 80);
        v44 = v21;
        result = (*(v42 + 32))(v21 + v24 + *(v42 + 72) * v23, v6, v41);
        if (v43)
        {
          if (!v16)
          {
            goto LABEL_42;
          }

          a1 = v17;
          if (sub_20DD65574())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v7 = v39;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844A98, &unk_20DD96270);
          v12 = sub_20DD65254();
          sub_20DD65624();
          result = v12(v45, 0);
          if (v10 == v7)
          {
LABEL_34:
            sub_20D9EF46C(v46, v47, v48);
            return v44;
          }
        }

        else
        {
          if (v16)
          {
            goto LABEL_43;
          }

          if ((v14 & 0x8000000000000000) != 0)
          {
            goto LABEL_38;
          }

          a1 = v17;
          v25 = 1 << *(v17 + 32);
          if (v14 >= v25)
          {
            goto LABEL_38;
          }

          v26 = v14 >> 6;
          v27 = *(v37 + 8 * (v14 >> 6));
          if (((v27 >> v14) & 1) == 0)
          {
            goto LABEL_39;
          }

          if (*(v17 + 36) != v15)
          {
            goto LABEL_40;
          }

          v28 = v27 & (-2 << (v14 & 0x3F));
          if (v28)
          {
            v25 = __clz(__rbit64(v28)) | v14 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v29 = v26 << 6;
            v30 = v26 + 1;
            v31 = (v36 + 8 * v26);
            while (v30 < (v25 + 63) >> 6)
            {
              v33 = *v31++;
              v32 = v33;
              v29 += 64;
              ++v30;
              if (v33)
              {
                result = sub_20D9EF46C(v14, v15, 0);
                v25 = __clz(__rbit64(v32)) + v29;
                goto LABEL_33;
              }
            }

            result = sub_20D9EF46C(v14, v15, 0);
          }

LABEL_33:
          v34 = *(v17 + 36);
          v46 = v25;
          v47 = v34;
          v48 = 0;
          v7 = v39;
          if (v10 == v39)
          {
            goto LABEL_34;
          }
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
  }

  return result;
}

uint64_t HFItemManagerMessageBatchCoordinator.discardsDelegatesReason.getter()
{
  v1 = (v0 + OBJC_IVAR___HFItemManagerMessageBatchCoordinator_discardsDelegatesReason);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t HFItemManagerMessageBatchCoordinator.discardsDelegatesReason.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___HFItemManagerMessageBatchCoordinator_discardsDelegatesReason);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

id HFItemManagerMessageBatchCoordinator.init(itemManager:delegateAdapter:)(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithItemManager:a1 delegateAdapter:a2];

  return v4;
}

char *HFItemManagerMessageBatchCoordinator.init(itemManager:delegateAdapter:)(void *a1, void *a2)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR___HFItemManagerMessageBatchCoordinator_batcher] = 0;
  v5 = &v2[OBJC_IVAR___HFItemManagerMessageBatchCoordinator_discardsDelegatesReason];
  *v5 = 0;
  *(v5 + 1) = 0;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  v20.receiver = v2;
  v20.super_class = HFItemManagerMessageBatchCoordinator;
  v6 = objc_msgSendSuper2(&v20, sel_init);
  v7 = [a1 description];
  sub_20DD64EB4();

  MEMORY[0x20F325E90](45, 0xE100000000000000);
  v8 = [a1 identifier];
  v9 = sub_20DD64EB4();
  v11 = v10;

  MEMORY[0x20F325E90](v9, v11);

  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v13 = objc_allocWithZone(HFMessageBatcher);

  v14 = sub_20DD64E74();

  v19[4] = sub_20DA7020C;
  v19[5] = v12;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 1107296256;
  v19[2] = sub_20DA72A18;
  v19[3] = &block_descriptor_12;
  v15 = _Block_copy(v19);
  v16 = [v13 initWithIdentifier:v14 batchingInterval:v15 maxDelay:0.1 block:0.5];

  _Block_release(v15);

  v17 = *&v6[OBJC_IVAR___HFItemManagerMessageBatchCoordinator_batcher];
  *&v6[OBJC_IVAR___HFItemManagerMessageBatchCoordinator_batcher] = v16;

  return v6;
}

void sub_20DA7002C(uint64_t a1, uint64_t a2)
{
  sub_20DA70214(a1);
  if (v2)
  {
    v3 = v2;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      sub_20DA70520(v3);
    }
  }

  else
  {
    if (qword_27C842400 != -1)
    {
      swift_once();
    }

    v6 = sub_20DD64C44();
    __swift_project_value_buffer(v6, qword_27C843390);

    oslog = sub_20DD64C24();
    v7 = sub_20DD65364();

    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v14[0] = v9;
      *v8 = 136315138;
      v10 = sub_20DD651F4();
      v12 = sub_20D9E0B38(v10, v11, v14);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_20D9BF000, oslog, v7, "Unexpected search containers in batch block: %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x20F327D10](v9, -1, -1);
      MEMORY[0x20F327D10](v8, -1, -1);
    }

    else
    {
    }
  }
}

void sub_20DA70214(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843800, &unk_20DD93EF0);
    v2 = sub_20DD656D4();
  }

  else
  {
    v2 = MEMORY[0x277D84FA0];
  }

  v3 = _s19ItemSearchContainerCMa();
  v29[5] = v2;
  v4 = a1 + 56;
  v5 = 1 << *(a1 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a1 + 56);
  if (v3 == MEMORY[0x277D837D0])
  {
    v24 = (v5 + 63) >> 6;

    v25 = 0;
    if (!v7)
    {
      goto LABEL_28;
    }

    do
    {
      v26 = v25;
LABEL_31:
      sub_20D9D7288(*(a1 + 48) + 40 * (__clz(__rbit64(v7)) | (v26 << 6)), v29);
      v27 = sub_20DD65644();
      sub_20D9D4298(v29);
      v28 = swift_dynamicCastClass();
      if (!v28)
      {

        return;
      }

      v7 &= v7 - 1;
      sub_20DA73564(v28);
      v25 = v26;
    }

    while (v7);
LABEL_28:
    while (1)
    {
      v26 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v26 >= v24)
      {
LABEL_34:

        return;
      }

      v7 = *(v4 + 8 * v26);
      ++v25;
      if (v7)
      {
        goto LABEL_31;
      }
    }
  }

  else
  {
    v8 = (v5 + 63) >> 6;
    v9 = v2 + 56;

    v10 = 0;
    while (v7)
    {
LABEL_16:
      sub_20D9D7288(*(a1 + 48) + 40 * (__clz(__rbit64(v7)) | (v10 << 6)), v29);
      v13 = sub_20DD65644();
      sub_20D9D4298(v29);
      v14 = swift_dynamicCastClass();
      if (!v14)
      {

        return;
      }

      v15 = v14;
      v16 = sub_20DD65444();
      v17 = -1 << *(v2 + 32);
      v18 = v16 & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v9 + 8 * (v18 >> 6))) == 0)
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
          v23 = *(v9 + 8 * v19);
          if (v23 != -1)
          {
            v11 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_10;
          }
        }

        goto LABEL_38;
      }

      v11 = __clz(__rbit64((-1 << v18) & ~*(v9 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      v7 &= v7 - 1;
      *(v9 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v2 + 48) + 8 * v11) = v15;
      ++*(v2 + 16);
    }

    while (1)
    {
      v12 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v12 >= v8)
      {
        goto LABEL_34;
      }

      v7 = *(v4 + 8 * v12);
      ++v10;
      if (v7)
      {
        v10 = v12;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
  }

  __break(1u);
}

id sub_20DA70520(uint64_t a1)
{
  result = [v1 itemManager];
  v72 = result;
  if (result)
  {
    v4 = MEMORY[0x277D84FA0];
    v5 = MEMORY[0x277D84FA0];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
      goto LABEL_3;
    }

    while (1)
    {
      if (sub_20DD655B4())
      {
        sub_20D9EE8F4(MEMORY[0x277D84F90]);
      }

      else
      {
        v5 = MEMORY[0x277D84FA0];
      }

LABEL_3:
      v69 = v1;
      v75 = v4;
      v76[0] = v5;
      if ((a1 & 0xC000000000000001) != 0)
      {
        swift_unknownObjectRetain();
        sub_20DD65564();
        v1 = _s19ItemSearchContainerCMa();
        sub_20DA72B90(&unk_27C844AB0, v6, _s19ItemSearchContainerCMa, MEMORY[0x277D85378]);
        sub_20DD65284();
        a1 = v76[1];
        v7 = v76[2];
        v8 = v76[3];
        v9 = v76[4];
        v10 = v76[5];
      }

      else
      {
        v11 = -1 << *(a1 + 32);
        v7 = a1 + 56;
        v8 = ~v11;
        v12 = -v11;
        v13 = v12 < 64 ? ~(-1 << v12) : -1;
        v10 = v13 & *(a1 + 56);

        v9 = 0;
      }

      v14 = 0;
      v15 = (v8 + 64) >> 6;
      v16 = MEMORY[0x277D84F98];
      v70 = a1;
      for (i = v15; ; v15 = i)
      {
        v4 = v10;
        v73 = v14;
        if ((a1 & 0x8000000000000000) == 0)
        {
          break;
        }

        if (!sub_20DD655F4())
        {
          goto LABEL_42;
        }

        _s19ItemSearchContainerCMa();
        swift_dynamicCast();
        v23 = v74;
        if (!v74)
        {
          goto LABEL_42;
        }

LABEL_22:
        v24 = v7;
        v4 = *&v23[OBJC_IVAR____TtCE4HomeCSo36HFItemManagerMessageBatchCoordinator19ItemSearchContainer_sender];
        sub_20D9C2E38(v73, 0);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v74 = v16;
        v1 = v16;
        v26 = sub_20D9CB8D4(v4);
        v28 = *(v16 + 2);
        v29 = (v27 & 1) == 0;
        v30 = __OFADD__(v28, v29);
        v31 = v28 + v29;
        if (v30)
        {
          goto LABEL_65;
        }

        v32 = v27;
        if (*(v16 + 3) < v31)
        {
          sub_20D9CFDF0(v31, isUniquelyReferenced_nonNull_native);
          v16 = v74;
          v1 = v74;
          v26 = sub_20D9CB8D4(v4);
          if ((v32 & 1) != (v33 & 1))
          {
            sub_20DD659E4();
            __break(1u);

            __break(1u);
            return result;
          }

LABEL_27:
          if (v32)
          {
            goto LABEL_29;
          }

LABEL_28:
          v1 = v26;
          sub_20D9D1C80(v26, v4, 0, v16);
          v26 = v1;
          goto LABEL_29;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_27;
        }

        v1 = &v74;
        v50 = v26;
        sub_20D9D4090();
        v26 = v50;
        v16 = v74;
        if ((v32 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_29:
        v34 = *(v16 + 7);
        v35 = *(v34 + 8 * v26);
        v30 = __OFADD__(v35, 1);
        v36 = v35 + 1;
        if (v30)
        {
          goto LABEL_66;
        }

        *(v34 + 8 * v26) = v36;

        sub_20D9DD28C(v37);
        v38 = *&v23[OBJC_IVAR____TtCE4HomeCSo36HFItemManagerMessageBatchCoordinator19ItemSearchContainer_itemSearch];
        v39 = v23[OBJC_IVAR____TtCE4HomeCSo36HFItemManagerMessageBatchCoordinator19ItemSearchContainer_itemSearch + 8];
        if (v39 <= 1)
        {
          if (v23[OBJC_IVAR____TtCE4HomeCSo36HFItemManagerMessageBatchCoordinator19ItemSearchContainer_itemSearch + 8])
          {
            swift_unknownObjectRetain();
            v48 = [v72 _itemsToUpdateForMediaObjectChange_];
            sub_20D9D7510(0, &qword_280E01F10, off_277DEFBE0);
            a1 = v70;
            sub_20D9EC18C(&qword_280E01F00, &qword_280E01F10, off_277DEFBE0);
            v49 = sub_20DD651E4();

            v1 = v76;
            sub_20D9DD37C(v49);
            v19 = v38;
            v20 = 1;
            goto LABEL_11;
          }

          sub_20D9D7510(0, &qword_280E02100, 0x277CD1970);
          sub_20D9EC18C(&unk_280E020F0, &qword_280E02100, 0x277CD1970);

          v40 = sub_20DD651C4();
          sub_20DA73AEC(v38, 0);
          v41 = [v72 _itemsToUpdateForModifiedCharacteristics_];
        }

        else
        {
          if (v39 == 2)
          {
            v17 = [v72 _itemsToUpdateForHomeKitSettingsChange_];
            sub_20D9D7510(0, &qword_280E01F10, off_277DEFBE0);
            a1 = v70;
            sub_20D9EC18C(&qword_280E01F00, &qword_280E01F10, off_277DEFBE0);
            v18 = sub_20DD651E4();

            v1 = v76;
            sub_20D9DD37C(v18);
            v19 = v38;
            v20 = 2;
LABEL_11:
            sub_20DA73AEC(v19, v20);
            goto LABEL_12;
          }

          if (v39 != 3)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843A60, &qword_20DD94360);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_20DD940A0;
            *(inited + 32) = v38;
            sub_20DA73AAC(v38, 4u);
            sub_20DA73AAC(v38, 4u);
            sub_20D9EEE14(inited);
            swift_setDeallocating();
            swift_arrayDestroy();
            sub_20D9D7510(0, &unk_27C8437E0, 0x277CD1B18);
            sub_20D9EC18C(&unk_27C844AC0, &unk_27C8437E0, 0x277CD1B18);
            v45 = sub_20DD651C4();

            v46 = [v72 _itemsToUpdateForLightProfiles_];

            sub_20D9D7510(0, &qword_280E01F10, off_277DEFBE0);
            a1 = v70;
            sub_20D9EC18C(&qword_280E01F00, &qword_280E01F10, off_277DEFBE0);
            v47 = sub_20DD651E4();

            v1 = v76;
            sub_20D9DD37C(v47);
            v19 = v38;
            v20 = 4;
            goto LABEL_11;
          }

          sub_20D9D7510(0, &qword_27C844290, 0x277CD1650);
          sub_20D9EC18C(&qword_27C843840, &qword_27C844290, 0x277CD1650);

          v40 = sub_20DD651C4();
          sub_20DA73AEC(v38, 3u);
          v41 = [v72 _itemsToUpdateForModifiedAccessories_];
        }

        v42 = v41;

        sub_20D9D7510(0, &qword_280E01F10, off_277DEFBE0);
        sub_20D9EC18C(&qword_280E01F00, &qword_280E01F10, off_277DEFBE0);
        v43 = sub_20DD651E4();

        v1 = v76;
        sub_20D9DD37C(v43);
LABEL_12:

        v14 = sub_20DA539C4;
        v7 = v24;
      }

      v21 = v9;
      v22 = v10;
      if (v10)
      {
        break;
      }

      while (1)
      {
        v9 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          goto LABEL_64;
        }

        if (v9 >= v15)
        {
          break;
        }

        v22 = *(v7 + 8 * v9);
        ++v21;
        if (v22)
        {
          goto LABEL_18;
        }
      }

      v4 = 0;
LABEL_42:
      sub_20D9C51CC(a1);
      a1 = (v16 + 64);
      v51 = 1 << v16[32];
      v52 = -1;
      if (v51 < 64)
      {
        v52 = ~(-1 << v51);
      }

      v53 = v52 & *(v16 + 8);
      v54 = (v51 + 63) >> 6;

      v55 = 0;
      v1 = MEMORY[0x277D84F90];
      if (v53)
      {
        goto LABEL_49;
      }

      while (1)
      {
        v56 = v55 + 1;
        if (__OFADD__(v55, 1))
        {
          break;
        }

        if (v56 >= v54)
        {

          v74 = v1;

          sub_20DA72BD8(&v74);

          v63 = v74;
          v64 = [v69 delegateAdapter];
          if (v64)
          {
            v65 = v64;
            sub_20D9D7510(0, &qword_280E01F10, off_277DEFBE0);
            sub_20D9EC18C(&qword_280E01F00, &qword_280E01F10, off_277DEFBE0);
            v66 = sub_20DD651C4();
            sub_20DA6F56C(v75);

            v67 = sub_20DD64FB4();

            if (*(v63 + 2))
            {
              v68 = *(v63 + 4);
            }

            else
            {

              v68 = sub_20DD63854();
            }
          }

          else
          {
          }

          return sub_20D9C2E38(v73, 0);
        }

        v53 = *(a1 + 8 * v56);
        ++v55;
        if (v53)
        {
          v55 = v56;
          do
          {
LABEL_49:
            v57 = (v55 << 9) | (8 * __clz(__rbit64(v53)));
            v58 = *(*(v16 + 6) + v57);
            v59 = *(*(v16 + 7) + v57);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v1 = sub_20D9E082C(0, (v1[2] + 1), 1, v1);
            }

            v61 = v1[2];
            v60 = v1[3];
            v4 = v61 + 1;
            if (v61 >= v60 >> 1)
            {
              v1 = sub_20D9E082C((v60 > 1), v61 + 1, 1, v1);
            }

            v53 &= v53 - 1;
            v1[2] = v4;
            v62 = &v1[2 * v61];
            v62[4] = v58;
            v62[5] = v59;
          }

          while (v53);
          continue;
        }
      }

      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
    }

LABEL_18:
    v10 = (v22 - 1) & v22;
    v23 = *(*(a1 + 48) + ((v9 << 9) | (8 * __clz(__rbit64(v22)))));
    if (!v23)
    {
      goto LABEL_42;
    }

    goto LABEL_22;
  }

  return result;
}

uint64_t sub_20DA70FC4(void *a1, unsigned __int8 a2)
{
  v4 = sub_20DD63744();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 <= 1u)
  {
    if (a2)
    {
      v20[0] = 0;
      v20[1] = 0xE000000000000000;
      sub_20DD65704();

      strcpy(v20, ".mediaObject(");
      HIWORD(v20[1]) = -4864;
      v17 = [a1 uniqueIdentifier];
      sub_20DD63714();

      sub_20DA72B90(&qword_27C8436C0, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v18 = sub_20DD65934();
      MEMORY[0x20F325E90](v18);

      (*(v5 + 8))(v7, v4);
      goto LABEL_11;
    }

    v20[0] = 0;
    v20[1] = 0xE000000000000000;
    sub_20DD65704();

    v20[0] = 0xD000000000000011;
    v20[1] = 0x800000020DD99FF0;
    sub_20DA6F790(a1);
    v9 = MEMORY[0x20F325F40]();
    v11 = v10;

    goto LABEL_9;
  }

  if (a2 == 2)
  {
    strcpy(v20, ".settings(");
    BYTE3(v20[1]) = 0;
    HIDWORD(v20[1]) = -369098752;
    v12 = [a1 description];
    v9 = sub_20DD64EB4();
    v11 = v13;

LABEL_9:
    MEMORY[0x20F325E90](v9, v11);
    goto LABEL_10;
  }

  if (a2 != 3)
  {
    v20[0] = 0;
    v20[1] = 0xE000000000000000;
    sub_20DD65704();

    strcpy(v20, ".lightProfile(");
    HIBYTE(v20[1]) = -18;
    v14 = [a1 description];
    v9 = sub_20DD64EB4();
    v11 = v15;

    goto LABEL_9;
  }

  v20[0] = 0;
  v20[1] = 0xE000000000000000;
  sub_20DD65704();

  strcpy(v20, ".accessories(");
  HIWORD(v20[1]) = -4864;
  sub_20D9D7510(0, &qword_27C844290, 0x277CD1650);
  sub_20D9EC18C(&qword_27C843840, &qword_27C844290, 0x277CD1650);
  v8 = sub_20DD651F4();
  MEMORY[0x20F325E90](v8);
LABEL_10:

LABEL_11:
  MEMORY[0x20F325E90](41, 0xE100000000000000);
  return v20[0];
}

id sub_20DA71394(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = _s19ItemSearchContainerCMa();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_20DA7141C(void *a1, unsigned int a2, uint64_t a3, void *a4, uint64_t a5)
{
  v163 = a5;
  v164 = a3;
  v166 = a4;
  v167 = a1;
  v168 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843A70, &qword_20DD94260);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v162 = &v153 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v161 = &v153 - v9;
  v10 = sub_20DD63744();
  v165 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v153 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v153 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v153 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v153 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v25 = (&v153 - v24);
  MEMORY[0x28223BE20](v23);
  v27 = (&v153 - v26);
  v28 = &v5[OBJC_IVAR___HFItemManagerMessageBatchCoordinator_discardsDelegatesReason];
  swift_beginAccess();
  v29 = v28[1];
  if (v29)
  {
    v30 = *v28;
    v31 = qword_27C842400;

    if (v31 != -1)
    {
      swift_once();
    }

    v32 = sub_20DD64C44();
    __swift_project_value_buffer(v32, qword_27C843390);

    v33 = v167;
    v34 = v168;
    sub_20DA73AAC(v167, v168);
    v35 = sub_20DD64C24();
    v36 = sub_20DD65384();
    sub_20DA73AEC(v33, v34);

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v170 = v38;
      *v37 = 136315394;
      v39 = sub_20DA70FC4(v33, v34);
      v41 = sub_20D9E0B38(v39, v40, &v170);

      *(v37 + 4) = v41;
      *(v37 + 12) = 2082;
      v42 = sub_20D9E0B38(v30, v29, &v170);

      *(v37 + 14) = v42;
      _os_log_impl(&dword_20D9BF000, v35, v36, "HFItemManagerMessageBatchCoordinator discarding item update %s, reason: %{public}s", v37, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F327D10](v38, -1, -1);
      MEMORY[0x20F327D10](v37, -1, -1);
    }

    else
    {
    }

    return;
  }

  v154 = v25;
  v43 = v164;
  v156 = v27;
  v44 = v166;
  v158 = v16;
  v157 = v13;
  v159 = v19;
  v160 = v22;
  v45 = [v5 delegateAdapter];
  if (!v45)
  {
    if (qword_27C842400 != -1)
    {
      swift_once();
    }

    v61 = sub_20DD64C44();
    __swift_project_value_buffer(v61, qword_27C843390);
    v62 = sub_20DD64C24();
    v63 = sub_20DD65374();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v170 = v65;
      *v64 = 136446210;
      v66 = sub_20DD63844();
      v68 = sub_20D9E0B38(v66, v67, &v170);

      *(v64 + 4) = v68;
      _os_log_impl(&dword_20D9BF000, v62, v63, "Attempted to process a search from %{public}s but delegateAdapter was nil!", v64, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v65);
      MEMORY[0x20F327D10](v65, -1, -1);
      MEMORY[0x20F327D10](v64, -1, -1);
    }

    goto LABEL_41;
  }

  v155 = v45;
  v46 = &selRef_isAnnounceAccessAllowed;
  v47 = [v5 itemManager];
  if (v47)
  {
    v48 = v47;
    v49 = v43;
    if (v44)
    {
      v50 = v10;
      v51 = v166;
      v52 = [v48 home];
      if (v52)
      {
        v53 = v52;
        v54 = [v51 uniqueIdentifier];
        v55 = v156;
        sub_20DD63714();

        v56 = [v53 uniqueIdentifier];
        v57 = v154;
        sub_20DD63714();

        LOBYTE(v56) = sub_20DD63704();
        v58 = v165[1];
        v59 = v57;
        v46 = &selRef_isAnnounceAccessAllowed;
        v58(v59, v50);
        v58(v55, v50);
        v60 = v51;
        if (v56)
        {
LABEL_23:
          v74 = _s19ItemSearchContainerCMa();
          v75 = objc_allocWithZone(v74);
          v76 = &v75[OBJC_IVAR____TtCE4HomeCSo36HFItemManagerMessageBatchCoordinator19ItemSearchContainer_itemSearch];
          v77 = v167;
          *v76 = v167;
          v78 = v168;
          v76[8] = v168;
          *&v75[OBJC_IVAR____TtCE4HomeCSo36HFItemManagerMessageBatchCoordinator19ItemSearchContainer_reloadReasons] = v49;
          v79 = v163;
          *&v75[OBJC_IVAR____TtCE4HomeCSo36HFItemManagerMessageBatchCoordinator19ItemSearchContainer_sender] = v163;
          sub_20DA73AAC(v77, v78);
          v169.receiver = v75;
          v169.super_class = v74;

          v62 = objc_msgSendSuper2(&v169, sel_init);
          v80 = v155;
          if (([v155 hasUncommittedBatchingReasons] & 1) != 0 || objc_msgSend(objc_opt_self(), sel_isInternalTest))
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843A60, &qword_20DD94360);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_20DD940A0;
            *(inited + 32) = v62;
            v62 = v62;
            sub_20D9EF030(inited);
            v83 = v82;
            swift_setDeallocating();
            swift_arrayDestroy();
            sub_20DA70520(v83);
          }

          else
          {
            v109 = *&v5[OBJC_IVAR___HFItemManagerMessageBatchCoordinator_batcher];
            if (!v109)
            {
              __break(1u);
              return;
            }

            v110 = v109;
            [v110 batchObject:v62 sender:v79];
          }

LABEL_41:
          return;
        }

        goto LABEL_20;
      }
    }

    goto LABEL_23;
  }

  v50 = v10;
  if (!v44)
  {
    v84 = v165;
    v73 = v165[7];
    v85 = v161;
    v73(v161, 1, 1, v10);
    v86 = [objc_opt_self() hmf_zeroUUID];
    sub_20DD63714();

    if ((v84[6])(v85, 1, v10) != 1)
    {
      sub_20D9C9040(v85);
    }

    LODWORD(v161) = 1;
    goto LABEL_29;
  }

  v60 = v166;
  v55 = v156;
LABEL_20:
  v69 = [v60 uniqueIdentifier];
  sub_20DD63714();

  v70 = v165;
  v71 = v165[4];
  v72 = v161;
  v71(v161, v55, v50);
  v73 = v70[7];
  v73(v72, 0, 1, v50);
  v71(v160, v72, v50);
  LODWORD(v161) = 0;
LABEL_29:
  v87 = [v5 v46[257]];
  if (v87 && (v88 = v87, v89 = [v87 home], v88, v89))
  {
    v90 = [v89 uniqueIdentifier];

    v91 = v156;
    sub_20DD63714();

    v92 = v165[4];
    v93 = v162;
    v92(v162, v91, v50);
    v73(v93, 0, 1, v50);
    v94 = v50;
    v95 = v159;
    v96 = v94;
    (v92)(v159, v93);
    v97 = v160;
  }

  else
  {
    v98 = v165;
    v99 = v162;
    v73(v162, 1, 1, v50);
    v100 = [objc_opt_self() hmf_zeroUUID];
    v101 = v50;
    v95 = v159;
    sub_20DD63714();

    v102 = v98[6];
    v96 = v101;
    v103 = v102(v99, 1, v101);
    v97 = v160;
    if (v103 != 1)
    {
      sub_20D9C9040(v99);
    }
  }

  v104 = [v5 itemManager];
  if (v104)
  {
    v105 = v104;
    v106 = [v104 home];

    if (v106)
    {
      v107 = [v106 name];

      v162 = sub_20DD64EB4();
      v106 = v108;
    }

    else
    {
      v162 = 0;
    }
  }

  else
  {
    v162 = 0;
    v106 = 0;
  }

  v164 = v106;
  if (qword_27C842400 != -1)
  {
    swift_once();
  }

  v111 = sub_20DD64C44();
  __swift_project_value_buffer(v111, qword_27C843390);
  v112 = v165;
  v113 = v165[2];
  v113(v158, v97, v96);
  v114 = v157;
  v113(v157, v95, v96);
  v115 = v167;
  v116 = v168;
  sub_20DA73AAC(v167, v168);

  v117 = v166;
  v118 = sub_20DD64C24();
  v119 = sub_20DD65364();

  v156 = v117;

  v120 = v116;
  v121 = v118;
  sub_20DA73AEC(v115, v120);
  LODWORD(v166) = v119;
  if (os_log_type_enabled(v118, v119))
  {
    v122 = v96;
    v154 = v121;
    v123 = swift_slowAlloc();
    v124 = swift_slowAlloc();
    v170 = v124;
    *v123 = 136316418;
    v125 = sub_20DD63844();
    v127 = sub_20D9E0B38(v125, v126, &v170);

    *(v123 + 4) = v127;
    *(v123 + 12) = 2080;
    v128 = 7104878;
    v129 = 0xE300000000000000;
    if ((v161 & 1) == 0)
    {
      v130 = [v156 name];
      v131 = sub_20DD64EB4();
      v129 = v132;

      v128 = v131;
    }

    v133 = sub_20D9E0B38(v128, v129, &v170);

    *(v123 + 14) = v133;
    *(v123 + 22) = 2082;
    sub_20DA72B90(&qword_27C8436C0, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v134 = v158;
    v135 = sub_20DD65934();
    v137 = v136;
    v138 = v165[1];
    v138(v134, v122);
    v139 = sub_20D9E0B38(v135, v137, &v170);

    *(v123 + 24) = v139;
    *(v123 + 32) = 2080;
    if (v164)
    {
      v140 = v162;
    }

    else
    {
      v140 = 7104878;
    }

    if (v164)
    {
      v141 = v164;
    }

    else
    {
      v141 = 0xE300000000000000;
    }

    v142 = sub_20D9E0B38(v140, v141, &v170);

    *(v123 + 34) = v142;
    *(v123 + 42) = 2082;
    v143 = v157;
    v144 = sub_20DD65934();
    v146 = v145;
    v138(v143, v122);
    v147 = sub_20D9E0B38(v144, v146, &v170);

    *(v123 + 44) = v147;
    *(v123 + 52) = 2080;
    v148 = sub_20DA70FC4(v167, v168);
    v150 = sub_20D9E0B38(v148, v149, &v170);

    *(v123 + 54) = v150;
    v151 = v154;
    _os_log_impl(&dword_20D9BF000, v154, v166, "Request to update for %s, but home does not match. modifiedHome: %s (%{public}s) itemManager.home: %s (%{public}s)\nitemSearch: %s", v123, 0x3Eu);
    swift_arrayDestroy();
    MEMORY[0x20F327D10](v124, -1, -1);
    MEMORY[0x20F327D10](v123, -1, -1);

    v138(v159, v122);
    v138(v160, v122);
  }

  else
  {

    v152 = v112[1];
    v152(v114, v96);
    v152(v158, v96);
    v152(v159, v96);
    v152(v160, v96);
  }
}

void sub_20DA7274C(void *a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843A60, &qword_20DD94360);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20DD940A0;
  *(inited + 32) = a1;
  v5 = a1;
  sub_20D9EE8D0(inited);
  v7 = v6;
  swift_setDeallocating();
  swift_arrayDestroy();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C844AA0, &unk_20DD96280);
  v8 = swift_initStackObject();
  *(v8 + 16) = xmmword_20DD93A70;
  *(v8 + 32) = @"softwareUpdate";
  v9 = @"softwareUpdate";
  v10 = sub_20D9EEE3C(v8);
  swift_setDeallocating();
  sub_20DA73A50(v8 + 32);
  v11 = [v5 home];
  sub_20DA7141C(v7, 3u, v10, v11, a2);
}

id HFItemManagerMessageBatchCoordinator.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_20DA72A18(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = sub_20DD651E4();

  v2(v3);
}