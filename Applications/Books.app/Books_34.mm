uint64_t sub_10048FCA4(char a1)
{
  v2 = *v1;
  *(v2 + 368) = a1;
  *(v2 + 360) = v1;

  return _swift_task_switch(sub_10048FDC4, 0, 0);
}

uint64_t sub_10048FDC4()
{
  v97 = v0;
  v1 = *(v0 + 568);
  sub_100007840(v0 + 176, &unk_100AD5B40, &unk_100811300);
  sub_1000074E0((v0 + 136));
  if (v1)
  {
    v2 = *(v0 + 368);
    goto LABEL_52;
  }

LABEL_46:
  v29 = *(v0 + 528);
  v46 = *(v0 + 496);
  if (v29 == v46)
  {
LABEL_54:

    goto LABEL_73;
  }

LABEL_59:
  v2 = 0;
  do
  {
    if (v29 >= v46)
    {
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

LABEL_76:
    v30 = 32 * v29;
    while (1)
    {
      *(v0 + 568) = v2 & 1;
      v5 = (*(v0 + 408) + v30);
      v7 = v5[4];
      v6 = v5[5];
      v9 = v5[6];
      v8 = v5[7];
      *(v0 + 528) = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        goto LABEL_62;
      }

      v90 = v29 + 1;
      v92 = v30;
      if (*(*(v0 + 520) + 16))
      {

        v10 = sub_10000E53C(v7, v6);
        v12 = v11;

        if (v12)
        {
          sub_100007484(*(*(v0 + 520) + 56) + 32 * v10, v0 + 176);
        }

        else
        {
          *(v0 + 176) = 0u;
          *(v0 + 192) = 0u;
        }
      }

      else
      {
        *(v0 + 176) = 0u;
        *(v0 + 192) = 0u;
      }

      v13 = v9 == 0x4165726F74537369 && v8 == 0xEE00444974657373;
      if (v13 || (sub_1007A3AB4() & 1) != 0)
      {
        sub_1000077D8(v0 + 176, v0 + 272, &unk_100AD5B40, &unk_100811300);
        if (*(v0 + 296))
        {
          if (swift_dynamicCast())
          {

            v14 = *(v0 + 344);
            v15 = *(v0 + 352);
            *(v0 + 536) = v15;
            sub_1000077D8(v0 + 16, v0 + 136, &qword_100AE59C8, &unk_100828C98);
            v16 = *(v0 + 160);
            if (v16)
            {
              v47 = *(v0 + 168);
              sub_10000E3E8((v0 + 136), *(v0 + 160));
              v93 = (*(v47 + 24) + **(v47 + 24));
              v48 = swift_task_alloc();
              *(v0 + 544) = v48;
              *v48 = v0;
              v48[1] = sub_10048FCA4;
              v49 = v14;
              v50 = v15;
              v51 = v16;
              v52 = v47;
              v53 = v93;

              return v53(v49, v50, v51, v52);
            }

            sub_100007840(v0 + 176, &unk_100AD5B40, &unk_100811300);

            sub_100007840(v0 + 136, &qword_100AE59C8, &unk_100828C98);
            if ((v2 & 1) == 0)
            {
              goto LABEL_46;
            }

            goto LABEL_27;
          }
        }

        else
        {
          sub_100007840(v0 + 272, &unk_100AD5B40, &unk_100811300);
        }

        sub_10079AC84();

        v17 = sub_10079ACC4();
        v18 = sub_1007A29B4();

        v19 = os_log_type_enabled(v17, v18);
        v20 = *(v0 + 480);
        v87 = *(v0 + 456);
        v21 = (*(v0 + 464) + 8);
        if (v19)
        {
          v23 = *(v0 + 416);
          v22 = *(v0 + 424);
          v85 = *(v0 + 480);
          v24 = swift_slowAlloc();
          v96 = swift_slowAlloc();
          *v24 = 136315394;
          *(v24 + 4) = sub_1000070F4(v23, v22, &v96);
          *(v24 + 12) = 2080;
          v25 = sub_1000070F4(v9, v8, &v96);

          *(v24 + 14) = v25;
          _os_log_impl(&_mh_execute_header, v17, v18, "Event %s with non-String for validation %s", v24, 0x16u);
          swift_arrayDestroy();

          (*v21)(v85, v87);
        }

        else
        {

          (*v21)(v20, v87);
        }

        sub_100007840(v0 + 176, &unk_100AD5B40, &unk_100811300);
LABEL_27:
        v26 = *(v0 + 496);
        v27 = v29 + 1;
        v28 = v90 == v26;
        goto LABEL_28;
      }

      v31 = v9 == 0xD000000000000016 && 0x80000001008D7380 == v8;
      if (!v31 && (sub_1007A3AB4() & 1) == 0)
      {
        break;
      }

      v86 = v29;
      sub_1000077D8(v0 + 176, v0 + 240, &unk_100AD5B40, &unk_100811300);
      if (!*(v0 + 264))
      {
        sub_100007840(v0 + 240, &unk_100AD5B40, &unk_100811300);
LABEL_42:
        sub_10079AC84();

        v36 = sub_10079ACC4();
        v37 = sub_1007A29B4();

        v38 = os_log_type_enabled(v36, v37);
        v39 = *(v0 + 472);
        v40 = *(v0 + 456);
        v41 = (*(v0 + 464) + 8);
        if (v38)
        {
          v43 = *(v0 + 416);
          v42 = *(v0 + 424);
          v88 = *(v0 + 456);
          v44 = swift_slowAlloc();
          v96 = swift_slowAlloc();
          *v44 = 136315394;
          *(v44 + 4) = sub_1000070F4(v43, v42, &v96);
          *(v44 + 12) = 2080;
          v45 = sub_1000070F4(v9, v8, &v96);

          *(v44 + 14) = v45;
          _os_log_impl(&_mh_execute_header, v36, v37, "Event %s with non-String for validation %s", v44, 0x16u);
          swift_arrayDestroy();

          (*v41)(v39, v88);
        }

        else
        {

          (*v41)(v39, v40);
        }

        sub_100007840(v0 + 176, &unk_100AD5B40, &unk_100811300);
        v26 = *(v0 + 496);
        v27 = v90;
        v28 = v90 == v26;
        v29 = v86;
        goto LABEL_28;
      }

      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_42;
      }

      v32 = *(v0 + 504);
      v33 = *(v0 + 400);

      v34 = *(v0 + 328);
      v35 = *(v0 + 336);
      *(v0 + 552) = v35;
      sub_1000077D8(v33 + v32, v0 + 56, &qword_100AE59C8, &unk_100828C98);
      if (*(v0 + 80))
      {
        sub_100009864(v0 + 56, v0 + 96);
        sub_100007840(v0 + 56, &qword_100AE59C8, &unk_100828C98);
        v54 = *(v0 + 120);
        v55 = *(v0 + 128);
        sub_10000E3E8((v0 + 96), v54);
        v94 = (*(v55 + 16) + **(v55 + 16));
        v56 = swift_task_alloc();
        *(v0 + 560) = v56;
        *v56 = v0;
        v56[1] = sub_100490B20;
        v49 = v34;
        v50 = v35;
        v51 = v54;
        v52 = v55;
        v53 = v94;

        return v53(v49, v50, v51, v52);
      }

      sub_100007840(v0 + 176, &unk_100AD5B40, &unk_100811300);

      sub_100007840(v0 + 56, &qword_100AE59C8, &unk_100828C98);
      if ((v2 & 1) == 0)
      {
        v29 = *(v0 + 528);
        v46 = *(v0 + 496);
        if (v29 == v46)
        {
          goto LABEL_54;
        }

        goto LABEL_59;
      }

      v26 = *(v0 + 496);
      v27 = v29 + 1;
      v28 = v90 == v26;
LABEL_28:
      if (v28)
      {
        goto LABEL_54;
      }

      v2 = 0;
      ++v29;
      v30 = v92 + 32;
      if (v27 >= v26)
      {
        goto LABEL_61;
      }
    }

    sub_100007840(v0 + 176, &unk_100AD5B40, &unk_100811300);

LABEL_52:
    v29 = *(v0 + 528);
    v46 = *(v0 + 496);
  }

  while (v29 != v46);
  if ((v2 & 1) == 0)
  {
    goto LABEL_54;
  }

LABEL_63:
  while (2)
  {
    v57 = *(v0 + 448);
    v58 = *(v0 + 432);
    v59 = *(v0 + 400);
    v60 = sub_1007A2744();
    v89 = *(v60 - 8);
    v91 = v60;
    (*(v89 + 56))(v57, 1, 1);
    v61 = qword_100AD1708;

    v62 = v59;
    v63 = v58;
    if (v61 != -1)
    {
      swift_once();
    }

    v64 = *(v0 + 520);
    v65 = *(v0 + 440);
    v95 = *(v0 + 448);
    v66 = *(v0 + 424);
    v67 = *(v0 + 432);
    v68 = *(v0 + 416);
    v69 = *(v0 + 400);
    v70 = qword_100AE5858;
    v71 = sub_100492E14(&qword_100AE5860, _s5Books18PropertyValueActorV9ActorTypeCMa_1, &unk_100828C64);
    v72 = swift_allocObject();
    v72[2] = v70;
    v72[3] = v71;
    v72[4] = v69;
    v72[5] = v68;
    v72[6] = v66;
    v72[7] = v64;
    v72[8] = v67;
    sub_1000077D8(v95, v65, &qword_100AD67D0, &qword_100814660);
    LODWORD(v65) = (*(v89 + 48))(v65, 1, v91);

    v73 = *(v0 + 440);
    if (v65 == 1)
    {
      sub_100007840(*(v0 + 440), &qword_100AD67D0, &qword_100814660);
    }

    else
    {
      sub_1007A2734();
      (*(v89 + 8))(v73, v91);
    }

    v74 = v72[2];
    swift_unknownObjectRetain();

    v75 = 0;
    v76 = 0;
    if (v74)
    {
      swift_getObjectType();
      v75 = sub_1007A2694();
      v76 = v77;
      swift_unknownObjectRelease();
    }

    sub_100007840(*(v0 + 448), &qword_100AD67D0, &qword_100814660);
    v78 = swift_allocObject();
    *(v78 + 16) = &unk_100828CC8;
    *(v78 + 24) = v72;
    if (v76 | v75)
    {
      *(v0 + 208) = 0;
      *(v0 + 216) = 0;
      *(v0 + 224) = v75;
      *(v0 + 232) = v76;
    }

    swift_task_create();

LABEL_73:
    v79 = *(v0 + 488);
    v80 = *(v0 + 512) + 1;
    sub_100007840(v0 + 16, &qword_100AE59C8, &unk_100828C98);
    if (v80 != v79)
    {
      v81 = *(v0 + 504);
      v82 = *(v0 + 512) + 1;
      *(v0 + 512) = v82;
      v83 = *(v0 + 496);
      v84 = *(v0 + 400);
      *(v0 + 520) = *(*(v0 + 392) + 8 * v82 + 32);
      sub_1000077D8(v84 + v81, v0 + 16, &qword_100AE59C8, &unk_100828C98);

      if (!v83)
      {
        continue;
      }

      v29 = 0;
      v2 = 1;
      goto LABEL_76;
    }

    break;
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100490B20(char a1)
{
  v2 = *v1;
  *(v2 + 384) = a1;
  *(v2 + 376) = v1;

  return _swift_task_switch(sub_100490C40, 0, 0);
}

uint64_t sub_100490C40()
{
  v88 = v2;
  v3 = *(v2 + 568);
  sub_100007840(v2 + 176, &unk_100AD5B40, &unk_100811300);
  sub_1000074E0((v2 + 96));
  if ((v3 & 1) == 0)
  {
LABEL_46:
    v10 = *(v2 + 528);
    v36 = *(v2 + 496);
    if (v10 == v36)
    {
      goto LABEL_56;
    }

    v4 = 0;
LABEL_48:
    if (v10 < v36)
    {
      goto LABEL_74;
    }

LABEL_49:
    __break(1u);
LABEL_50:
    v37 = *(v2 + 168);
    sub_10000E3E8((v2 + 136), v1);
    v84 = (*(v37 + 24) + **(v37 + 24));
    v38 = swift_task_alloc();
    *(v2 + 544) = v38;
    *v38 = v2;
    v38[1] = sub_10048FCA4;
    v39 = v0;
    v40 = v3;
    v41 = v1;
    v42 = v37;
    v43 = v84;

    return v43(v39, v40, v41, v42);
  }

  v4 = *(v2 + 384) ^ 1;
LABEL_54:
  v10 = *(v2 + 528);
  v36 = *(v2 + 496);
  if (v10 != v36)
  {
    goto LABEL_48;
  }

  if (v4)
  {
    goto LABEL_61;
  }

LABEL_56:

  while (1)
  {
    v69 = *(v2 + 488);
    v70 = *(v2 + 512) + 1;
    sub_100007840(v2 + 16, &qword_100AE59C8, &unk_100828C98);
    if (v70 == v69)
    {
      break;
    }

    v71 = *(v2 + 504);
    v72 = *(v2 + 512) + 1;
    *(v2 + 512) = v72;
    v73 = *(v2 + 496);
    v74 = *(v2 + 400);
    *(v2 + 520) = *(*(v2 + 392) + 8 * v72 + 32);
    sub_1000077D8(v74 + v71, v2 + 16, &qword_100AE59C8, &unk_100828C98);

    if (v73)
    {
      v10 = 0;
      v4 = 1;
LABEL_74:
      v11 = 32 * v10;
      while (2)
      {
        *(v2 + 568) = v4 & 1;
        v12 = (*(v2 + 408) + v11);
        v1 = v12[4];
        v13 = v12[5];
        v15 = v12[6];
        v14 = v12[7];
        *(v2 + 528) = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          __break(1u);
          goto LABEL_61;
        }

        v81 = v10 + 1;
        v83 = v11;
        if (*(*(v2 + 520) + 16))
        {

          v16 = sub_10000E53C(v1, v13);
          v1 = v17;

          if (v1)
          {
            sub_100007484(*(*(v2 + 520) + 56) + 32 * v16, v2 + 176);
          }

          else
          {
            *(v2 + 176) = 0u;
            *(v2 + 192) = 0u;
          }
        }

        else
        {
          *(v2 + 176) = 0u;
          *(v2 + 192) = 0u;
        }

        v18 = v15 == 0x4165726F74537369 && v14 == 0xEE00444974657373;
        v3 = &unk_100AD5B40;
        v0 = &unk_100811300;
        if (v18 || (sub_1007A3AB4() & 1) != 0)
        {
          sub_1000077D8(v2 + 176, v2 + 272, &unk_100AD5B40, &unk_100811300);
          if (*(v2 + 296))
          {
            if (swift_dynamicCast())
            {

              v0 = *(v2 + 344);
              v3 = *(v2 + 352);
              *(v2 + 536) = v3;
              sub_1000077D8(v2 + 16, v2 + 136, &qword_100AE59C8, &unk_100828C98);
              v1 = *(v2 + 160);
              if (v1)
              {
                goto LABEL_50;
              }

              sub_100007840(v2 + 176, &unk_100AD5B40, &unk_100811300);

              sub_100007840(v2 + 136, &qword_100AE59C8, &unk_100828C98);
              if ((v4 & 1) == 0)
              {
                goto LABEL_46;
              }

LABEL_8:
              v7 = *(v2 + 496);
              v8 = v10 + 1;
              v9 = v83;
              if (v81 == v7)
              {
                goto LABEL_56;
              }

LABEL_9:
              v4 = 0;
              ++v10;
              v11 = v9 + 32;
              if (v8 >= v7)
              {
                goto LABEL_49;
              }

              continue;
            }
          }

          else
          {
            sub_100007840(v2 + 272, &unk_100AD5B40, &unk_100811300);
          }

          sub_10079AC84();

          v3 = sub_10079ACC4();
          v1 = sub_1007A29B4();

          v19 = os_log_type_enabled(v3, v1);
          v20 = *(v2 + 480);
          v78 = *(v2 + 456);
          v0 = (*(v2 + 464) + 8);
          if (v19)
          {
            v22 = *(v2 + 416);
            v21 = *(v2 + 424);
            v75 = *(v2 + 480);
            v23 = swift_slowAlloc();
            v87 = swift_slowAlloc();
            *v23 = 136315394;
            *(v23 + 4) = sub_1000070F4(v22, v21, &v87);
            *(v23 + 12) = 2080;
            v24 = sub_1000070F4(v15, v14, &v87);

            *(v23 + 14) = v24;
            _os_log_impl(&_mh_execute_header, v3, v1, "Event %s with non-String for validation %s", v23, 0x16u);
            swift_arrayDestroy();

            (*v0)(v75, v78);
          }

          else
          {

            (*v0)(v20, v78);
          }

          sub_100007840(v2 + 176, &unk_100AD5B40, &unk_100811300);
          goto LABEL_8;
        }

        break;
      }

      v25 = v15 == 0xD000000000000016 && 0x80000001008D7380 == v14;
      if (!v25 && (sub_1007A3AB4() & 1) == 0)
      {
        sub_100007840(v2 + 176, &unk_100AD5B40, &unk_100811300);

        goto LABEL_54;
      }

      v77 = v10;
      sub_1000077D8(v2 + 176, v2 + 240, &unk_100AD5B40, &unk_100811300);
      if (*(v2 + 264))
      {
        if (swift_dynamicCast())
        {
          v26 = *(v2 + 504);
          v27 = *(v2 + 400);

          v0 = *(v2 + 328);
          v3 = *(v2 + 336);
          *(v2 + 552) = v3;
          v28 = v27 + v26;
          v1 = &qword_100AE59C8;
          sub_1000077D8(v28, v2 + 56, &qword_100AE59C8, &unk_100828C98);
          if (*(v2 + 80))
          {
            sub_100009864(v2 + 56, v2 + 96);
            sub_100007840(v2 + 56, &qword_100AE59C8, &unk_100828C98);
            v44 = *(v2 + 120);
            v45 = *(v2 + 128);
            sub_10000E3E8((v2 + 96), v44);
            v85 = (*(v45 + 16) + **(v45 + 16));
            v46 = swift_task_alloc();
            *(v2 + 560) = v46;
            *v46 = v2;
            v46[1] = sub_100490B20;
            v39 = v0;
            v40 = v3;
            v41 = v44;
            v42 = v45;
            v43 = v85;

            return v43(v39, v40, v41, v42);
          }

          sub_100007840(v2 + 176, &unk_100AD5B40, &unk_100811300);

          sub_100007840(v2 + 56, &qword_100AE59C8, &unk_100828C98);
          if ((v4 & 1) == 0)
          {
            goto LABEL_46;
          }

          goto LABEL_44;
        }
      }

      else
      {
        sub_100007840(v2 + 240, &unk_100AD5B40, &unk_100811300);
      }

      sub_10079AC84();

      v3 = sub_10079ACC4();
      v1 = sub_1007A29B4();

      v29 = os_log_type_enabled(v3, v1);
      v0 = *(v2 + 472);
      v30 = *(v2 + 456);
      v31 = (*(v2 + 464) + 8);
      if (v29)
      {
        v33 = *(v2 + 416);
        v32 = *(v2 + 424);
        v79 = *(v2 + 456);
        v34 = swift_slowAlloc();
        v76 = v0;
        v0 = swift_slowAlloc();
        v87 = v0;
        *v34 = 136315394;
        *(v34 + 4) = sub_1000070F4(v33, v32, &v87);
        *(v34 + 12) = 2080;
        v35 = sub_1000070F4(v15, v14, &v87);

        *(v34 + 14) = v35;
        _os_log_impl(&_mh_execute_header, v3, v1, "Event %s with non-String for validation %s", v34, 0x16u);
        swift_arrayDestroy();

        (*v31)(v76, v79);
      }

      else
      {

        (*v31)(v0, v30);
      }

      sub_100007840(v2 + 176, &unk_100AD5B40, &unk_100811300);
LABEL_44:
      v7 = *(v2 + 496);
      v8 = v81;
      v10 = v77;
      v9 = v83;
      if (v81 == v7)
      {
        goto LABEL_56;
      }

      goto LABEL_9;
    }

LABEL_61:
    v47 = *(v2 + 448);
    v48 = *(v2 + 432);
    v49 = *(v2 + 400);
    v50 = sub_1007A2744();
    v80 = *(v50 - 8);
    v82 = v50;
    (*(v80 + 56))(v47, 1, 1);
    v51 = qword_100AD1708;

    v52 = v49;
    v53 = v48;
    if (v51 != -1)
    {
      swift_once();
    }

    v54 = *(v2 + 520);
    v55 = *(v2 + 440);
    v86 = *(v2 + 448);
    v56 = *(v2 + 424);
    v57 = *(v2 + 432);
    v58 = *(v2 + 416);
    v59 = *(v2 + 400);
    v60 = qword_100AE5858;
    v61 = sub_100492E14(&qword_100AE5860, _s5Books18PropertyValueActorV9ActorTypeCMa_1, &unk_100828C64);
    v62 = swift_allocObject();
    v62[2] = v60;
    v62[3] = v61;
    v62[4] = v59;
    v62[5] = v58;
    v62[6] = v56;
    v62[7] = v54;
    v62[8] = v57;
    sub_1000077D8(v86, v55, &qword_100AD67D0, &qword_100814660);
    LODWORD(v55) = (*(v80 + 48))(v55, 1, v82);

    v63 = *(v2 + 440);
    if (v55 == 1)
    {
      sub_100007840(*(v2 + 440), &qword_100AD67D0, &qword_100814660);
    }

    else
    {
      sub_1007A2734();
      (*(v80 + 8))(v63, v82);
    }

    v64 = v62[2];
    swift_unknownObjectRetain();

    v65 = 0;
    v66 = 0;
    if (v64)
    {
      swift_getObjectType();
      v65 = sub_1007A2694();
      v66 = v67;
      swift_unknownObjectRelease();
    }

    sub_100007840(*(v2 + 448), &qword_100AD67D0, &qword_100814660);
    v68 = swift_allocObject();
    *(v68 + 16) = &unk_100828CC8;
    *(v68 + 24) = v62;
    if (v66 | v65)
    {
      *(v2 + 208) = 0;
      *(v2 + 216) = 0;
      *(v2 + 224) = v65;
      *(v2 + 232) = v66;
    }

    swift_task_create();
  }

  v5 = *(v2 + 8);

  return v5();
}

uint64_t sub_100491970(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v5 = OBJC_IVAR___BKPersonalizationEventDonor_sectionLinks;
    swift_beginAccess();
    v6 = *(v2 + v5);
    if (*(v6 + 16))
    {

      v7 = sub_10000E53C(a1, a2);
      if (v8)
      {
        v9 = (*(v6 + 56) + 16 * v7);
        v11 = *v9;
        v10 = v9[1];

        v12 = v11 == a1 && v10 == a2;
        if (v12 || (sub_1007A3AB4() & 1) != 0)
        {

          return a1;
        }
      }

      else
      {

        v11 = 0;
        v10 = 0;
      }
    }

    else
    {
      v11 = 0;
      v10 = 0;
    }

    v13 = sub_100491970(v11, v10);
    v15 = v14;

    if (v15)
    {

      return v13;
    }
  }

  return a1;
}

uint64_t sub_100491ABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = OBJC_IVAR___BKPersonalizationEventDonor_sectionLinks;
  swift_beginAccess();
  v11 = *(v5 + v10);
  if (*(v11 + 16))
  {

    v12 = sub_10000E53C(a1, a2);
    if (v13)
    {
      v14 = (*(v11 + 56) + 16 * v12);
      v15 = *v14;
      v16 = v14[1];
    }

    else
    {
      v15 = 0;
      v16 = 0;
    }

    if (a1 != a3)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v15 = 0;
    v16 = 0;
    if (a1 != a3)
    {
      goto LABEL_9;
    }
  }

  if (a2 == a4)
  {
LABEL_10:

    v17 = 1;
    return v17 & 1;
  }

LABEL_9:
  if (sub_1007A3AB4())
  {
    goto LABEL_10;
  }

  if (v16)
  {
    if ((v15 != a1 || v16 != a2) && (sub_1007A3AB4() & 1) == 0)
    {
      v17 = sub_100491ABC(v15, v16, a3, a4);

      return v17 & 1;
    }
  }

  v17 = 0;
  return v17 & 1;
}

void PersonalizationEventDonor.finishedBook(_:)()
{
  v1 = v0;
  v2 = sub_100796584();
  if (!v2)
  {
    goto LABEL_10;
  }

  v3 = v2;
  sub_1007A36B4();
  if (!*(v3 + 16) || (v4 = sub_10000E2A4(v10), (v5 & 1) == 0))
  {

    sub_10002899C(v10);
LABEL_10:
    v11 = 0u;
    v12 = 0u;
    goto LABEL_11;
  }

  sub_100007484(*(v3 + 56) + 32 * v4, &v11);
  sub_10002899C(v10);

  if (!*(&v12 + 1))
  {
LABEL_11:
    sub_100007840(&v11, &unk_100AD5B40, &unk_100811300);
    return;
  }

  if (swift_dynamicCast())
  {
    v7 = v10[0];
    v6 = v10[1];
    if (v7 == sub_1007A2254() && v6 == v8)
    {
      v9 = 1;
    }

    else
    {
      v9 = sub_1007A3AB4();
    }

    *(v1 + OBJC_IVAR___BKPersonalizationEventDonor_finishingBookAutomatically) = v9 & 1;
  }
}

id PersonalizationEventProcessor.__allocating_init(donor:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR___BKPersonalizationEventProcessor_donor] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, "init");
}

id PersonalizationEventProcessor.init(donor:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___BKPersonalizationEventProcessor_donor] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for PersonalizationEventProcessor();
  return objc_msgSendSuper2(&v3, "init");
}

id sub_100491EF8(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

double sub_100491F5C(void *a1, uint64_t a2, uint64_t a3, void *a4, void (**a5)(void, void))
{
  v10 = sub_1001F1160(&qword_100AD67D0, &qword_100814660);
  __chkstk_darwin(v10 - 8);
  v12 = &v29 - v11;
  v13 = swift_allocObject();
  *(v13 + 16) = a5;
  _Block_copy(a5);
  v14 = sub_1007998D4();
  if (a3)
  {
    if (v14 == a2 && v15 == a3)
    {
      goto LABEL_4;
    }

    v19 = sub_1007A3AB4();

    if (v19)
    {
      goto LABEL_10;
    }

    if (sub_1007998C4() == a2 && v27 == a3)
    {
LABEL_4:

LABEL_10:
      v20 = sub_1007A2744();
      (*(*(v20 - 8) + 56))(v12, 1, 1, v20);
      v21 = qword_100AD1708;
      v22 = a4;
      v23 = a1;

      if (v21 != -1)
      {
        swift_once();
      }

      v24 = qword_100AE5858;
      v25 = sub_100492E14(&qword_100AE5860, _s5Books18PropertyValueActorV9ActorTypeCMa_1, &unk_100828C64);
      v26 = swift_allocObject();
      v26[2] = v24;
      v26[3] = v25;
      v26[4] = v22;
      v26[5] = v23;
      v26[6] = sub_10037A74C;
      v26[7] = v13;

      sub_1003457A0(0, 0, v12, &unk_100828C90, v26);

      return result;
    }

    v28 = sub_1007A3AB4();

    if (v28)
    {
      goto LABEL_10;
    }
  }

  else
  {

    sub_1007998C4();
  }

  v33 = 0;
  v31 = 0u;
  v32 = 0u;
  v34 = -1;
  v16 = objc_allocWithZone(sub_1007997D4());
  v30 = sub_1007997C4();
  a5[2](a5, v30);

  v17 = v30;

  return result;
}

void *_s5Books25PersonalizationEventDonorC11listOfDicts08fromDictF5ListsSaySDySSypGGSDySSSayypGG_tF_0(uint64_t a1)
{
  v1 = a1;
  v46 = 0;
  v2 = 0;
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = *(*(*(a1 + 56) + ((v8 << 9) | (8 * v9))) + 16);
      v11 = v46;
      if (v10 > v46)
      {
        v11 = v10;
      }

      v46 = v11;
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      result = sub_1007A3B24();
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }

  if (!v46)
  {
    return _swiftEmptyArrayStorage;
  }

  v12 = 0;
  v13 = _swiftEmptyArrayStorage;
  do
  {
    v48 = v13;
    v49 = v12;
    v47 = v12 + 1;
    v14 = 1 << *(v1 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v1 + 64);
    v17 = (v14 + 63) >> 6;

    v18 = 0;
    while (v16)
    {
      v21 = v18;
LABEL_26:
      v22 = __clz(__rbit64(v16)) | (v21 << 6);
      v23 = *(*(v1 + 56) + 8 * v22);
      v24 = *(v23 + 16);
      if (!v24)
      {
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

      v25 = v1;
      v26 = (*(v1 + 48) + 16 * v22);
      v28 = *v26;
      v27 = v26[1];
      v29 = v24 - 1;
      if (v24 - 1 >= v49)
      {
        v29 = v49;
      }

      sub_100007484(v23 + 32 * v29 + 32, v51);
      sub_100007484(v51, v50);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v31 = sub_10000E53C(v28, v27);
      v33 = _swiftEmptyDictionarySingleton[2];
      v34 = (v32 & 1) == 0;
      v35 = __OFADD__(v33, v34);
      v36 = v33 + v34;
      if (v35)
      {
        goto LABEL_48;
      }

      v37 = v32;
      if (_swiftEmptyDictionarySingleton[3] >= v36)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v42 = v31;
          sub_1002F0EA0();
          v31 = v42;
        }
      }

      else
      {
        sub_1003D4168(v36, isUniquelyReferenced_nonNull_native);
        v31 = sub_10000E53C(v28, v27);
        if ((v37 & 1) != (v38 & 1))
        {
          goto LABEL_51;
        }
      }

      v16 &= v16 - 1;
      if (v37)
      {
        v19 = v31;

        v20 = (_swiftEmptyDictionarySingleton[7] + 32 * v19);
        sub_1000074E0(v20);
        sub_1000076D4(v50, v20);
        sub_1000074E0(v51);
      }

      else
      {
        _swiftEmptyDictionarySingleton[(v31 >> 6) + 8] |= 1 << v31;
        v39 = (_swiftEmptyDictionarySingleton[6] + 16 * v31);
        *v39 = v28;
        v39[1] = v27;
        sub_1000076D4(v50, _swiftEmptyDictionarySingleton[7] + 32 * v31);
        sub_1000074E0(v51);
        v40 = _swiftEmptyDictionarySingleton[2];
        v35 = __OFADD__(v40, 1);
        v41 = v40 + 1;
        if (v35)
        {
          goto LABEL_50;
        }

        _swiftEmptyDictionarySingleton[2] = v41;
      }

      v18 = v21;
      v1 = v25;
    }

    while (1)
    {
      v21 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_47;
      }

      if (v21 >= v17)
      {
        break;
      }

      v16 = *(v3 + 8 * v21);
      ++v18;
      if (v16)
      {
        goto LABEL_26;
      }
    }

    v13 = v48;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_10066B4D0(0, v48[2] + 1, 1, v48);
    }

    v44 = v13[2];
    v43 = v13[3];
    if (v44 >= v43 >> 1)
    {
      v13 = sub_10066B4D0((v43 > 1), v44 + 1, 1, v13);
    }

    v13[2] = v44 + 1;
    v13[v44 + 4] = _swiftEmptyDictionarySingleton;
    v12 = v47;
  }

  while (v47 != v46);
  return v13;
}

void _s5Books25PersonalizationEventDonorC10expression_7matchesSbSDySSypG_yptF_0(uint64_t a1, uint64_t a2)
{
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  v9 = &type metadata for Any;
  while (v6)
  {
LABEL_10:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v12 = (*(a1 + 48) + ((v8 << 10) | (16 * v11)));
    v14 = *v12;
    v13 = v12[1];

    v15._rawValue = &off_100A0D1F8;
    v27._countAndFlagsBits = v14;
    v27._object = v13;
    v16 = sub_1007A3964(v15, v27);
    if (v16 >= 3)
    {
    }

    else
    {
      v17 = v9;
      if (*(a1 + 16))
      {
        v24 = v16;
        v18 = sub_10000E53C(v14, v13);
        v20 = v19;

        if ((v20 & 1) == 0)
        {
          goto LABEL_19;
        }

        sub_100007484(*(a1 + 56) + 32 * v18, v26);
        sub_10000A7C4(0, &qword_100AD6750, NSNumber_ptr);
        v9 = v17;
        if (swift_dynamicCast())
        {
          sub_100007484(a2, v26);
          if (swift_dynamicCast())
          {
            v21 = [v25 compare:v25];

            if (v24)
            {
              if (v24 == 1)
              {
                v22 = v21 == 1;
              }

              else
              {
                v22 = v21 + 1 == 0;
              }

              v9 = v17;
              if (v22)
              {
LABEL_26:

                return;
              }
            }

            else
            {
              v9 = v17;
              if (!v21)
              {
                goto LABEL_26;
              }
            }
          }

          else
          {
          }
        }
      }

      else
      {

LABEL_19:
        v9 = v17;
      }
    }
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v7)
    {
      goto LABEL_26;
    }

    v6 = *(v3 + 8 * v10);
    ++v8;
    if (v6)
    {
      v8 = v10;
      goto LABEL_10;
    }
  }

  __break(1u);
}

uint64_t _s5Books25PersonalizationEventDonorC5value_19matchesFilterValues05debugC4NameSbyp_SayypGSSSgtF_0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v40 = sub_10079ACE4();
  __chkstk_darwin(v40);
  v11 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a2 + 16);
  if (v12)
  {
    v13 = a2 + 32;
    v14 = (v8 + 8);
    v15 = 0x6E776F6E6B6E753CLL;
    if (a4)
    {
      v15 = a3;
    }

    v37 = v15;
    v16 = 0xE90000000000003ELL;
    if (a4)
    {
      v16 = a4;
    }

    v36 = v16;
    *&v10 = 136315138;
    v35 = v10;
    v38 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    v39 = a1;
    do
    {
      sub_100007484(v13, v44);
      sub_100007484(a1, v43);
      if (swift_dynamicCast())
      {
        v18 = v41;
        v17 = v42;
        sub_100007484(v44, v43);
        if (swift_dynamicCast())
        {
          if (v41 == v18 && v42 == v17)
          {

            sub_1000074E0(v44);
            return 1;
          }

          v19 = sub_1007A3AB4();

          sub_1000074E0(v44);
          if (v19)
          {
            return 1;
          }

          goto LABEL_9;
        }
      }

      sub_100007484(a1, v43);
      if (swift_dynamicCast() & 1) != 0 && (v20 = v41, sub_100007484(v44, v43), (swift_dynamicCast()))
      {
        sub_1000074E0(v44);
        if (v20 == v41)
        {
          return 1;
        }
      }

      else
      {
        sub_100007484(v44, v43);
        sub_1001F1160(&qword_100AD6710, &unk_10080B890);
        if (!swift_dynamicCast())
        {
          sub_10079AC84();

          v26 = sub_10079ACC4();
          v27 = sub_1007A29B4();

          if (os_log_type_enabled(v26, v27))
          {
            v28 = swift_slowAlloc();
            v29 = swift_slowAlloc();
            v43[0] = v29;
            *v28 = v35;

            v30 = v14;
            v31 = a4;
            v32 = sub_1000070F4(v37, v36, v43);

            *(v28 + 4) = v32;
            a4 = v31;
            v14 = v30;
            _os_log_impl(&_mh_execute_header, v26, v27, "Filter values for case in event %s not string and not supported expression", v28, 0xCu);
            sub_1000074E0(v29);
            a1 = v39;
            v33 = v40;
            v11 = v38;

            (*v14)(v11, v33);
          }

          else
          {

            (*v14)(v11, v40);
          }

          goto LABEL_8;
        }

        v21 = v41;
        if (!*(v41 + 16) || (v22 = sub_10000E53C(0x6973736572707865, 0xEA00000000006E6FLL), (v23 & 1) == 0) || (sub_100007484(*(v21 + 56) + 32 * v22, v43), !swift_dynamicCast()))
        {

LABEL_8:
          sub_1000074E0(v44);
          goto LABEL_9;
        }

        _s5Books25PersonalizationEventDonorC10expression_7matchesSbSDySSypG_yptF_0(v41, a1);
        v25 = v24;

        sub_1000074E0(v44);
        if (v25)
        {
          return 1;
        }
      }

LABEL_9:
      v13 += 32;
      --v12;
    }

    while (v12);
  }

  return 0;
}

uint64_t sub_100492D38()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100492D88(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&qword_100AE59C8, &unk_100828C98);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100492E14(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_100492E5C(uint64_t *a1, uint64_t *a2, __n128 result)
{
  if (a1 != a2)
  {
    v3 = a1[3];
    v4 = a2[3];
    if (v3 == v4)
    {
      v11 = *(v3 - 8);
      if ((*(v11 + 82) & 2) != 0)
      {
        v13 = *a2;

        *a1 = v13;
      }

      else
      {
        v12 = *(v11 + 24);

        v12(result);
      }
    }

    else
    {
      a1[3] = v4;
      v5 = *(v3 - 8);
      v6 = *(v4 - 8);
      v7 = v6;
      v8 = *(v6 + 80);
      if ((*(v5 + 82) & 2) != 0)
      {
        if ((v8 & 0x20000) != 0)
        {
          *a1 = *a2;
        }

        else
        {
          (*(v6 + 16))(result);
        }
      }

      else
      {
        (*(v5 + 32))(v16, result);
        if ((v8 & 0x20000) != 0)
        {
          *a1 = *a2;
        }

        else
        {
          (*(v7 + 16))(a1, a2, v4);
        }

        (*(v5 + 8))(v16, v3);
      }
    }
  }

  return result.n128_f64[0];
}

uint64_t sub_100493070(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    goto LABEL_13;
  }

  v2 = sub_10000E53C(0x446E6F6974636573, 0xEB00000000617461);
  if ((v3 & 1) == 0)
  {
    goto LABEL_13;
  }

  sub_100007484(*(a1 + 56) + 32 * v2, &v20);
  sub_1001F1160(&qword_100AD6710, &unk_10080B890);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_13;
  }

  v4 = v23;
  if (!*(v23 + 16) || (v5 = sub_10000E53C(0x496E6F6974636573, 0xE900000000000044), (v6 & 1) == 0))
  {

    goto LABEL_13;
  }

  sub_100007484(*(v4 + 56) + 32 * v5, v22);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_13:
    v7 = 0;
    v8 = 0;
    v24 = 0;
    goto LABEL_14;
  }

  if (v24)
  {
    v7 = v23;
    v8 = HIBYTE(v24) & 0xF;
    if ((v24 & 0x2000000000000000) == 0)
    {
      v8 = v23 & 0xFFFFFFFFFFFFLL;
    }

    if (v8)
    {
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

LABEL_14:
  v23 = v7;
  v24 = v8;

  if (!*(a1 + 16))
  {
    goto LABEL_26;
  }

  v9 = sub_10000E53C(0x617461446B6E696CLL, 0xE800000000000000);
  if ((v10 & 1) == 0)
  {
    goto LABEL_26;
  }

  sub_100007484(*(a1 + 56) + 32 * v9, &v20);
  sub_1001F1160(&qword_100AD6710, &unk_10080B890);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_26;
  }

  if (!*(v19 + 16) || (v11 = sub_10000E53C(0xD000000000000011, 0x80000001008D73A0), (v12 & 1) == 0))
  {

LABEL_26:
    v14 = 0;
    v16 = 0;
    goto LABEL_27;
  }

  sub_100007484(*(v19 + 56) + 32 * v11, v22);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_26;
  }

  v13 = v21;
  if (!v21)
  {
    goto LABEL_26;
  }

  v14 = v20;
  v15 = HIBYTE(v21) & 0xF;
  if ((v21 & 0x2000000000000000) == 0)
  {
    v15 = v20 & 0xFFFFFFFFFFFFLL;
  }

  if (!v15)
  {
    goto LABEL_26;
  }

  v16 = v13;
LABEL_27:
  v20 = v14;
  v21 = v16;

  v17 = v23;

  return v17;
}

uint64_t sub_100493340(uint64_t a1)
{
  v4 = v1[3];
  v12 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100009A34;

  return sub_10048EFA0(a1, v12, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_100493434(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10002812C;

  return sub_10048EB04(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_100493510()
{
  v0 = sub_10079ACE4();
  sub_100009A38(v0, qword_100AE59F0);
  sub_100008B98(v0, qword_100AE59F0);
  return sub_10079ACD4();
}

Swift::Int sub_100493590(uint64_t a1, uint64_t a2)
{
  sub_1007A3C04();
  sub_1007A2084();
  return sub_1007A3C44();
}

uint64_t sub_1004935F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1004949B0();

  return _BridgedNSError.hash(into:)(a1, a2, v4);
}

void *sub_100493640@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result != 0;
  *a2 = 0;
  *(a2 + 8) = v2;
  return result;
}

uint64_t sub_100493658(uint64_t a1)
{
  v2 = sub_1004949B0();

  return _BridgedNSError._domain.getter(a1, v2);
}

uint64_t sub_100493694(uint64_t a1)
{
  v2 = sub_1004949B0();

  return _BridgedNSError._code.getter(a1, v2);
}

uint64_t sub_1004936EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1004949B0();

  return _BridgedNSError.init(_bridgedNSError:)(a1, a2, v4);
}

id ViewBookUpdatesOperation.__allocating_init(adamID:version:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = &v9[OBJC_IVAR___BKViewBookUpdatesOperation_parameters];
  *v10 = 0;
  *(v10 + 1) = 0;
  *&v9[OBJC_IVAR___BKViewBookUpdatesOperation_error] = 0;
  v11 = &v9[OBJC_IVAR___BKViewBookUpdatesOperation_adamID];
  *v11 = a1;
  *(v11 + 1) = a2;
  v12 = &v9[OBJC_IVAR___BKViewBookUpdatesOperation_version];
  *v12 = a3;
  *(v12 + 1) = a4;
  v14.receiver = v9;
  v14.super_class = v4;
  return objc_msgSendSuper2(&v14, "init");
}

id ViewBookUpdatesOperation.init(adamID:version:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = &v4[OBJC_IVAR___BKViewBookUpdatesOperation_parameters];
  *v5 = 0;
  *(v5 + 1) = 0;
  *&v4[OBJC_IVAR___BKViewBookUpdatesOperation_error] = 0;
  v6 = &v4[OBJC_IVAR___BKViewBookUpdatesOperation_adamID];
  *v6 = a1;
  *(v6 + 1) = a2;
  v7 = &v4[OBJC_IVAR___BKViewBookUpdatesOperation_version];
  *v7 = a3;
  *(v7 + 1) = a4;
  v9.receiver = v4;
  v9.super_class = type metadata accessor for ViewBookUpdatesOperation();
  return objc_msgSendSuper2(&v9, "init");
}

uint64_t ViewBookUpdatesOperation.parameters.getter()
{
  v1 = (v0 + OBJC_IVAR___BKViewBookUpdatesOperation_parameters);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

double ViewBookUpdatesOperation.parameters.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___BKViewBookUpdatesOperation_parameters);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  return result;
}

uint64_t ViewBookUpdatesOperation.error.getter()
{
  v1 = OBJC_IVAR___BKViewBookUpdatesOperation_error;
  swift_beginAccess();
  v2 = *(v0 + v1);
  swift_errorRetain();
  return v2;
}

uint64_t ViewBookUpdatesOperation.error.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___BKViewBookUpdatesOperation_error;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

Swift::Void __swiftcall ViewBookUpdatesOperation.main()()
{
  v1 = v0;
  v2 = objc_opt_self();
  v3 = [v2 defaultBag];
  v4 = [objc_allocWithZone(AMSURLRequestEncoder) initWithBag:v3];

  [v4 setDialogOptions:1];
  [v4 setRequestEncoding:2];
  [v4 setCompressRequestBody:1];
  sub_100494430();
  v5 = [v2 defaultBag];
  v6 = [v5 viewBookUpdateParams];

  *&v42[0] = 0;
  v7 = [v6 valueWithError:v42];

  if (!v7)
  {
    v19 = *&v42[0];

    v20 = sub_1007967D4();

    swift_willThrow();
LABEL_10:

    v23 = OBJC_IVAR___BKViewBookUpdatesOperation_error;
    swift_beginAccess();
    *&v1[v23] = v20;
LABEL_11:

    return;
  }

  v8 = *&v42[0];
  isa = sub_1007A2024().super.isa;

  v10 = [v4 requestWithMethod:4 URL:v7 parameters:isa];

  *&v42[0] = 0;
  v11 = [v10 resultWithError:v42];

  v12 = *&v42[0];
  if (!v11)
  {
    v21 = *&v42[0];
    v20 = sub_1007967D4();

    swift_willThrow();
LABEL_9:

    goto LABEL_10;
  }

  v13 = objc_opt_self();
  v14 = v12;
  v15 = [v13 defaultSession];
  v16 = [v15 dataTaskPromiseWithRequest:v11];

  *&v42[0] = 0;
  v17 = [v16 resultWithError:v42];

  if (!v17)
  {
    v22 = *&v42[0];
    v20 = sub_1007967D4();

    swift_willThrow();
    goto LABEL_9;
  }

  v18 = *&v42[0];

  if ([v17 object])
  {
    sub_1007A3504();
    swift_unknownObjectRelease();
  }

  else
  {
    v43 = 0u;
    v44 = 0u;
  }

  v42[0] = v43;
  v42[1] = v44;
  if (!*(&v44 + 1))
  {
    sub_1000230BC(v42);
    goto LABEL_26;
  }

  sub_1001F1160(&unk_100AEF1B0, &qword_10081EB10);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_26:
    sub_100494694();
    v31 = swift_allocError();
    *v32 = 0;

    v33 = OBJC_IVAR___BKViewBookUpdatesOperation_error;
    swift_beginAccess();
    *&v1[v33] = v31;
    goto LABEL_11;
  }

  sub_1007A36B4();
  if (!*(v40 + 16))
  {
    goto LABEL_27;
  }

  v24 = sub_10000E2A4(v42);
  if ((v25 & 1) == 0)
  {
    goto LABEL_27;
  }

  sub_100007484(*(v40 + 56) + 32 * v24, &v43);
  sub_10002899C(v42);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_28;
  }

  v41 = *&v1[OBJC_IVAR___BKViewBookUpdatesOperation_adamID];

  sub_1007A36B4();
  if (!MEMORY[0x73657461647085])
  {
    goto LABEL_27;
  }

  v26 = sub_10000E2A4(v42);
  if ((v27 & 1) == 0)
  {
    goto LABEL_27;
  }

  sub_100007484(MEMORY[0x736574616470AD] + 32 * v26, &v43);
  sub_10002899C(v42);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_28;
  }

  sub_1007A36B4();
  if (!*(v41 + 16) || (v28 = sub_10000E2A4(v42), (v29 & 1) == 0))
  {
LABEL_27:

    sub_10002899C(v42);
    goto LABEL_28;
  }

  sub_100007484(*(v41 + 56) + 32 * v28, &v43);
  sub_10002899C(v42);

  if (swift_dynamicCast())
  {

    v30 = &v1[OBJC_IVAR___BKViewBookUpdatesOperation_parameters];
    swift_beginAccess();
    *v30 = 0x6D61726150797562;
    *(v30 + 1) = 0xE900000000000073;

    return;
  }

LABEL_28:
  if (qword_100AD1718 != -1)
  {
    swift_once();
  }

  v34 = sub_10079ACE4();
  sub_100008B98(v34, qword_100AE59F0);
  v35 = v1;
  v36 = sub_10079ACC4();
  v37 = sub_1007A29D4();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *&v42[0] = v39;
    *v38 = 136315138;
    *(v38 + 4) = sub_1000070F4(*&v35[OBJC_IVAR___BKViewBookUpdatesOperation_adamID], *&v35[OBJC_IVAR___BKViewBookUpdatesOperation_adamID + 8], v42);
    _os_log_impl(&_mh_execute_header, v36, v37, "Updates payload for %s is missing or malformed from response", v38, 0xCu);
    sub_1000074E0(v39);
  }
}

unint64_t sub_100494430()
{
  sub_1001F1160(&qword_100ADA238, &unk_100817F50);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_10080B690;
  sub_1001F1160(qword_100AEA1F0, &unk_100828E80);
  inited = swift_initStackObject();
  *(inited + 32) = 0x64692D6D616461;
  *(inited + 16) = xmmword_10080EFF0;
  *(inited + 40) = 0xE700000000000000;
  v3 = *(v0 + OBJC_IVAR___BKViewBookUpdatesOperation_adamID + 8);
  *(inited + 48) = *(v0 + OBJC_IVAR___BKViewBookUpdatesOperation_adamID);
  *(inited + 56) = v3;
  *(inited + 64) = 0xD00000000000001CLL;
  *(inited + 72) = 0x80000001008CE270;
  v4 = *(v0 + OBJC_IVAR___BKViewBookUpdatesOperation_version);
  v5 = *(v0 + OBJC_IVAR___BKViewBookUpdatesOperation_version + 8);
  *(inited + 80) = v4;
  *(inited + 88) = v5;

  v6 = sub_1001ED994(inited);
  swift_setDeallocating();
  sub_1001F1160(&unk_100AE0920, &unk_100817F60);
  swift_arrayDestroy();
  *(v1 + 32) = v6;
  sub_1001F1160(&unk_100AE0AC0, &unk_100812C90);
  v7 = swift_initStackObject();
  *(v7 + 16) = xmmword_10080EFF0;
  sub_1007A36B4();
  *(v7 + 96) = sub_1001F1160(&qword_100AEF320, &unk_100838110);
  *(v7 + 72) = v1;
  sub_1007A36B4();
  v8 = [objc_opt_self() deviceGUID];
  v9 = sub_1007A2254();
  v11 = v10;

  *(v7 + 168) = &type metadata for String;
  *(v7 + 144) = v9;
  *(v7 + 152) = v11;
  v12 = sub_100013740(v7);
  swift_setDeallocating();
  sub_1001F1160(&unk_100AD1E50, &unk_10080B810);
  swift_arrayDestroy();
  return v12;
}

unint64_t sub_100494694()
{
  result = qword_100AE5A28;
  if (!qword_100AE5A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE5A28);
  }

  return result;
}

id ViewBookUpdatesOperation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ViewBookUpdatesOperation();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_100494854()
{
  result = qword_100AE5A58;
  if (!qword_100AE5A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE5A58);
  }

  return result;
}

unint64_t sub_1004948AC()
{
  result = qword_100AE5A60;
  if (!qword_100AE5A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE5A60);
  }

  return result;
}

unint64_t sub_100494904()
{
  result = qword_100AE5A68;
  if (!qword_100AE5A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE5A68);
  }

  return result;
}

unint64_t sub_10049495C()
{
  result = qword_100AE5A70;
  if (!qword_100AE5A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE5A70);
  }

  return result;
}

unint64_t sub_1004949B0()
{
  result = qword_100AE5A78;
  if (!qword_100AE5A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE5A78);
  }

  return result;
}

void sub_100494A04()
{
  v1 = [v0 sortedDocuments];
  if (v1)
  {
    v2 = v1;
    sub_10000A7C4(0, &qword_100AE5A80, BKDocument_ptr);
    v3 = sub_1007A25E4();

    if (v3 >> 62)
    {
      if (sub_1007A38D4())
      {
        goto LABEL_4;
      }
    }

    else if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_4:
      if ((v3 & 0xC000000000000001) != 0)
      {
        v4 = sub_1007A3784();
        goto LABEL_7;
      }

      if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v4 = *(v3 + 32);
LABEL_7:
        v5 = v4;

        [v5 fixedLayoutSize];

        return;
      }

      __break(1u);
      goto LABEL_12;
    }

    return;
  }

LABEL_12:
  __break(1u);
}

void *sub_100494B14()
{
  v1 = _swiftEmptyArrayStorage;
  v13 = _swiftEmptyArrayStorage;
  v2 = [v0 physicalPageMap];
  if (v2)
  {
    v3 = v2;
    v4 = sub_1007A25E4();

    v5 = v4;
    v6 = *(v4 + 16);
    if (v6)
    {
      v7 = v5 + 32;
      do
      {
        sub_100007484(v7, v12);
        sub_1001F1160(&unk_100AE0B70, &unk_100831210);
        if (swift_dynamicCast())
        {
          if (*(v11 + 16))
          {
            sub_10000E53C(1717924456, 0xE400000000000000);
            if (v8)
            {
              if (*(v11 + 16))
              {

                sub_10000E53C(1701667182, 0xE400000000000000);
                if (v9)
                {

                  sub_1007A0734();
                  swift_allocObject();
                  sub_1007A0724();
                  sub_1007A25C4();
                  if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                  {
                    sub_1007A2614();
                  }

                  sub_1007A2644();
                  v1 = v13;
                  goto LABEL_5;
                }
              }
            }
          }
        }

LABEL_5:
        v7 += 32;
        --v6;
      }

      while (v6);
    }
  }

  return v1;
}

void AEBookInfo.bookEntity.getter(uint64_t *a1@<X8>)
{
  v2 = v1;
  v145 = a1;
  v3 = sub_1007969B4();
  v4 = __chkstk_darwin(v3 - 8);
  v146 = &v114 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v1 chapters];
  v152 = v1;
  if (v6 && (v7 = v6, v8 = sub_1007A2834(), v7, sub_100495E58(v8), v10 = v9, , v10))
  {
    *&v155 = sub_100496A84(v10);
    sub_100496B34(&v155);

    v11 = v155;
    *&v155 = _swiftEmptyArrayStorage;
    if (v11 < 0 || (v11 & 0x4000000000000000) != 0)
    {
      goto LABEL_23;
    }

    for (i = *(v11 + 16); i; i = sub_1007A38D4())
    {
      v2 = 0;
      v153 = v11 & 0xC000000000000001;
      v151 = i;
      while (1)
      {
        if (v153)
        {
          v13 = sub_1007A3784();
        }

        else
        {
          if (v2 >= *(v11 + 16))
          {
            goto LABEL_22;
          }

          v13 = *(v11 + 8 * v2 + 32);
        }

        v14 = v13;
        if (__OFADD__(v2, 1))
        {
          break;
        }

        v15 = [v13 href];
        if (!v15)
        {
          goto LABEL_125;
        }

        v16 = v15;
        sub_1007A2254();

        v17 = [v14 name];
        if (!v17)
        {
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        v18 = v17;
        v154 = (v2 + 1);
        sub_1007A2254();

        v19 = [v14 indentationLevel];
        if (!v19)
        {
          goto LABEL_124;
        }

        v20 = v19;
        [v19 integerValue];

        v21 = [v14 absoluteOrder];
        if (!v21)
        {
          goto LABEL_123;
        }

        v22 = v21;
        [v21 integerValue];

        sub_10079FDD4();
        swift_allocObject();
        sub_10079FDA4();

        sub_1007A25C4();
        if (*((v155 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v155 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1007A2614();
        }

        sub_1007A2644();
        ++v2;
        if (v154 == v151)
        {
          v143 = v155;
          v2 = v152;
          goto LABEL_25;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      ;
    }

    v143 = _swiftEmptyArrayStorage;
LABEL_25:
  }

  else
  {
    v143 = 0;
  }

  v23 = [v2 storeFrontId];
  v140 = v23;
  if (v23)
  {
    v24 = v23;
    v25 = sub_1007A3C94();
  }

  else
  {
    v25 = 0;
  }

  v26 = [v2 assetID];
  if (!v26)
  {
    goto LABEL_131;
  }

  v27 = v26;
  v28 = sub_1007A2254();
  v141 = v29;
  v142 = v28;

  v30 = [v2 bookBundlePath];
  if (!v30)
  {
    goto LABEL_131;
  }

  v31 = v30;
  v139 = sub_1007A2254();
  v138 = v32;

  v33 = [v2 storeId];
  if (v33)
  {
    v34 = v33;
    v137 = sub_1007A2254();
    v136 = v35;
  }

  else
  {
    v137 = 0;
    v136 = 0xE000000000000000;
  }

  v36 = [v2 bookTitle];
  if (v36)
  {
    v37 = v36;
    v135 = sub_1007A2254();
    v134 = v38;
  }

  else
  {
    v135 = 0;
    v134 = 0xE000000000000000;
  }

  v39 = [v2 bookAuthor];
  if (v39)
  {
    v40 = v39;
    v133 = sub_1007A2254();
    v132 = v41;
  }

  else
  {
    v133 = 0;
    v132 = 0xE000000000000000;
  }

  v42 = [v2 tocPageHref];
  v144 = v25;
  if (v42)
  {
    v43 = v42;
    v131 = sub_1007A2254();
    v130 = v44;
  }

  else
  {
    v131 = 0;
    v130 = 0xE000000000000000;
  }

  v45 = [v2 linearDocuments];
  if (!v45)
  {
LABEL_127:
    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
    goto LABEL_130;
  }

  v46 = v45;
  v47 = sub_10000A7C4(0, &qword_100AE5A80, BKDocument_ptr);
  v48 = sub_1007A25E4();

  if (v48 >> 62)
  {
    goto LABEL_63;
  }

  v49 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v49)
  {
    while (1)
    {
      v158 = _swiftEmptyArrayStorage;
      sub_1003BD6E8(0, v49 & ~(v49 >> 63), 0);
      if (v49 < 0)
      {
        __break(1u);
LABEL_114:
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
        goto LABEL_126;
      }

      v50 = 0;
      v51 = v158;
      v153 = v48 & 0xC000000000000001;
      v147 = v47;
      v148 = v48 & 0xFFFFFFFFFFFFFF8;
      v149 = 0x80000001008D7560;
      v150 = v49;
      v151 = v48;
      while (v153)
      {
        v52 = sub_1007A3784();
LABEL_53:
        v154 = v51;
        v53 = v52;
        v54 = [v53 href];
        if (!v54)
        {
          goto LABEL_117;
        }

        v55 = v54;
        sub_1007A2254();

        v56 = [v53 documentOrdinal];
        if (!v56)
        {
          goto LABEL_115;
        }

        v57 = v56;
        [v56 integerValue];

        [v53 linearDocumentIndex];
        v58 = [v53 nonlinearElement];
        if (!v58)
        {
          goto LABEL_116;
        }

        v59 = v58;
        [v58 BOOLValue];

        v60 = [v53 manifestId];
        if (!v60)
        {
          goto LABEL_118;
        }

        v61 = v60;
        sub_1007A2254();

        v62 = sub_1007A0064();
        swift_allocObject();
        v63 = sub_1007A0054();

        v156 = v62;
        v157 = &protocol witness table for DocumentEntity;

        *&v155 = v63;
        v51 = v154;
        v158 = v154;
        v47 = v154[2];
        v64 = v154[3];
        if (v47 >= v64 >> 1)
        {
          sub_1003BD6E8((v64 > 1), v47 + 1, 1);
          v51 = v158;
        }

        ++v50;
        v51[2] = v47 + 1;
        sub_1000077C0(&v155, &v51[5 * v47 + 4]);
        v48 = v151;
        v2 = v152;
        if (v150 == v50)
        {
          v154 = v51;

          goto LABEL_65;
        }
      }

      if ((v50 & 0x8000000000000000) == 0)
      {
        break;
      }

      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      v49 = sub_1007A38D4();
      if (!v49)
      {
        goto LABEL_64;
      }
    }

    if (v50 >= *(v148 + 16))
    {
      goto LABEL_62;
    }

    v52 = *(v48 + 8 * v50 + 32);
    goto LABEL_53;
  }

LABEL_64:

  v154 = _swiftEmptyArrayStorage;
LABEL_65:
  v65 = [v2 allDocuments];
  if (!v65)
  {
    goto LABEL_128;
  }

  v66 = v65;
  v67 = sub_1007A25E4();

  if (v67 >> 62)
  {
    goto LABEL_85;
  }

  for (j = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = sub_1007A38D4())
  {
    v158 = _swiftEmptyArrayStorage;
    sub_1003BD6E8(0, j & ~(j >> 63), 0);
    if (j < 0)
    {
      goto LABEL_114;
    }

    v69 = 0;
    v70 = v158;
    v150 = v67;
    v151 = (v67 & 0xC000000000000001);
    v147 = v67 & 0xFFFFFFFFFFFFFF8;
    v148 = 0x80000001008D7560;
    v149 = j;
    while (1)
    {
      if (v151)
      {
        v71 = sub_1007A3784();
        goto LABEL_75;
      }

      if ((v69 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (v69 >= *(v147 + 16))
      {
        goto LABEL_84;
      }

      v71 = *(v67 + 8 * v69 + 32);
LABEL_75:
      v72 = v71;
      v73 = [v72 href];
      if (!v73)
      {
        goto LABEL_121;
      }

      v74 = v73;
      sub_1007A2254();
      v2 = v75;

      v76 = [v72 documentOrdinal];
      if (!v76)
      {
        goto LABEL_119;
      }

      v77 = v76;
      [v76 integerValue];

      [v72 linearDocumentIndex];
      v78 = [v72 nonlinearElement];
      if (!v78)
      {
        goto LABEL_120;
      }

      v79 = v78;
      v153 = v69;
      [v78 BOOLValue];

      v80 = [v72 manifestId];
      if (!v80)
      {
        goto LABEL_122;
      }

      v81 = v80;
      sub_1007A2254();

      v82 = sub_1007A0064();
      swift_allocObject();
      v83 = sub_1007A0054();

      v156 = v82;
      v157 = &protocol witness table for DocumentEntity;

      *&v155 = v83;
      v158 = v70;
      v85 = v70[2];
      v84 = v70[3];
      if (v85 >= v84 >> 1)
      {
        sub_1003BD6E8((v84 > 1), v85 + 1, 1);
        v70 = v158;
      }

      v69 = v153 + 1;
      v70[2] = v85 + 1;
      sub_1000077C0(&v155, &v70[5 * v85 + 4]);
      v67 = v150;
      if (v149 == v69)
      {

        v2 = v152;
        goto LABEL_87;
      }
    }

    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    ;
  }

LABEL_87:
  v86 = [v2 firstDocumentLocation];
  if (!v86)
  {
    goto LABEL_129;
  }

  v87 = v86;
  v88 = [v86 ordinal];

  [v2 isFixedLayout];
  v89 = [v2 baseURL];
  if (!v89)
  {
LABEL_130:
    __break(1u);
LABEL_131:
    sub_1007A38A4();
    __break(1u);

    __break(1u);
    return;
  }

  v90 = v89;
  sub_100796974();

  v91 = [v2 spineIndexInPackage];
  if (v91)
  {
    v92 = v91;
    v151 = [v91 unsignedIntegerValue];
  }

  else
  {
    v151 = 0;
  }

  LODWORD(v148) = [v2 bkPageProgressionDirection];
  v129 = [v2 scrollModeOrientation];
  if ([v2 isFixedLayout])
  {
    sub_100494A04();
    v149 = v94;
    v150 = v93;
  }

  else
  {
    v149 = 0;
    v150 = 0;
  }

  LODWORD(v147) = [v2 obeyPageBreaks];
  v128 = [v2 shouldAllowRemoteInspection];
  v127 = [v2 respectImageSizeClassIsPrefix];
  v126 = [v2 shouldDisableOptimizeSpeed];
  v95 = [v2 respectImageSizeClass];
  if (v95)
  {
    v96 = v95;
    v125 = sub_1007A2254();
    v124 = v97;
  }

  else
  {
    v125 = 0;
    v124 = 0;
  }

  v98 = [v2 bookLanguage];
  if (v98)
  {
    v99 = v98;
    v123 = sub_1007A2254();
    v122 = v100;
  }

  else
  {
    v123 = 0;
    v122 = 0xE000000000000000;
  }

  v101 = [v2 sampleContent];
  if (v101)
  {
    v102 = v101;
    v121 = [v101 BOOLValue];
  }

  else
  {
    v121 = 0;
  }

  v120 = [v2 isProtected];
  v119 = [v2 suppressTOC];
  v118 = sub_100494B14();
  v103 = [v2 isPreorder];
  if (v103)
  {
    v104 = v103;
    v117 = [v103 BOOLValue];
  }

  else
  {
    v117 = 0;
  }

  v153 = v88;
  v116 = [v2 hasBuiltInFonts];
  v105 = [v2 versionNumberHumanReadable];
  if (v105)
  {
    v106 = v105;
    v115 = sub_1007A2254();
    v114 = v107;
  }

  else
  {
    v115 = 0;
    v114 = 0;
  }

  v108 = [v2 databaseKey];
  if (v108)
  {
    v109 = v108;
    sub_1007A2254();
  }

  v110 = sub_10079F884();
  swift_allocObject();
  v111 = sub_10079F874();
  v112 = [v152 cacheItem];
  sub_10079F864();
  v113 = v145;
  v145[3] = v110;
  v113[4] = &protocol witness table for BookEntity;
  *v113 = v111;
}

void sub_100495E58(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1001F1160(&qword_100AE5AF0, &unk_100828F30);
    v2 = sub_1007A36F4();
  }

  else
  {
    v2 = &_swiftEmptySetSingleton;
  }

  v3 = sub_10000A7C4(0, &qword_100AECD40, BKNavigationInfo_ptr);
  v30[5] = v2;
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
  v8 = v5 + 63;
  if (v3 == &type metadata for String)
  {
    v25 = v8 >> 6;

    v26 = 0;
    if (!v7)
    {
      goto LABEL_28;
    }

    do
    {
      v27 = v26;
LABEL_31:
      sub_100028940(*(a1 + 48) + 40 * (__clz(__rbit64(v7)) | (v27 << 6)), v30);
      v28.isa = sub_1007A3684().isa;
      sub_10002899C(v30);
      objc_opt_self();
      v29 = swift_dynamicCastObjCClass();
      if (!v29)
      {

        return;
      }

      v7 &= v7 - 1;
      sub_1006884A4(v29);
      v26 = v27;
    }

    while (v7);
LABEL_28:
    while (1)
    {
      v27 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v27 >= v25)
      {
LABEL_34:

        return;
      }

      v7 = *(v4 + 8 * v27);
      ++v26;
      if (v7)
      {
        goto LABEL_31;
      }
    }
  }

  else
  {
    v9 = v8 >> 6;
    v10 = (v2 + 7);

    v11 = 0;
    while (v7)
    {
LABEL_16:
      sub_100028940(*(a1 + 48) + 40 * (__clz(__rbit64(v7)) | (v11 << 6)), v30);
      v14.isa = sub_1007A3684().isa;
      sub_10002899C(v30);
      objc_opt_self();
      v15 = swift_dynamicCastObjCClass();
      if (!v15)
      {

        return;
      }

      v16 = v15;
      v17 = sub_1007A3174(v2[5]);
      v18 = -1 << *(v2 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*&v10[8 * (v19 >> 6)]) == 0)
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
          v24 = *&v10[8 * v20];
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_10;
          }
        }

        goto LABEL_38;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*&v10[8 * (v19 >> 6)])) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      v7 &= v7 - 1;
      *&v10[(v12 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v12;
      *(v2[6] + 8 * v12) = v16;
      ++v2[2];
    }

    while (1)
    {
      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v13 >= v9)
      {
        goto LABEL_34;
      }

      v7 = *(v4 + 8 * v13);
      ++v11;
      if (v7)
      {
        v11 = v13;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
  }

  __break(1u);
}

id BKDocument.documentEntity.getter()
{
  result = [v0 href];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = result;
  sub_1007A2254();

  result = [v0 documentOrdinal];
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v3 = result;
  [result integerValue];

  [v0 linearDocumentIndex];
  result = [v0 nonlinearElement];
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v4 = result;
  [result BOOLValue];

  result = [v0 manifestId];
  if (result)
  {
    v5 = result;
    sub_1007A2254();

    sub_1007A0064();
    swift_allocObject();
    return sub_1007A0054();
  }

LABEL_9:
  __break(1u);
  return result;
}

void *BookProviderService.bookInfo.getter()
{
  v1 = *(v0 + OBJC_IVAR___REBookProviderService_bookInfo);
  v2 = v1;
  return v1;
}

void *BookProviderService.bookInfoMOC.getter()
{
  v1 = *(v0 + OBJC_IVAR___REBookProviderService_bookInfoMOC);
  v2 = v1;
  return v1;
}

uint64_t sub_100496364(uint64_t a1, uint64_t *a2)
{
  sub_100009864(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR___REBookProviderService_bookEntity;
  swift_beginAccess();
  sub_1000074E0((v3 + v4));
  sub_1000077C0(v6, v3 + v4);
  return swift_endAccess();
}

uint64_t BookProviderService.bookEntity.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___REBookProviderService_bookEntity;
  swift_beginAccess();
  return sub_100009864(v1 + v3, a1);
}

void *BookProviderService.__allocating_init(bookEntity:bookInfo:storeController:epubParser:)(void *a1, void *a2, void *a3, void *a4)
{
  v9 = a3[3];
  v10 = a3[4];
  v11 = sub_10022569C(a3, v9);
  v12 = sub_100497B90(a1, a2, v11, a4, v4, v9, v10);

  sub_1000074E0(a3);
  return v12;
}

void *BookProviderService.init(bookEntity:bookInfo:storeController:epubParser:)(void *a1, void *a2, void *a3, void *a4)
{
  v9 = a3[3];
  v10 = a3[4];
  v11 = sub_10022569C(a3, v9);
  v12 = __chkstk_darwin(v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, v12);
  v16 = sub_1004979F4(a1, a2, v14, a4, v4, v9, v10);

  sub_1000074E0(a3);
  return v16;
}

uint64_t BookProviderService.areCitationsAllowed.getter()
{
  v1 = v0;
  v2 = OBJC_IVAR___REBookProviderService_bookEntity;
  swift_beginAccess();
  sub_100009864(v0 + v2, v8);
  sub_10000E3E8(v8, v9);
  v3 = sub_10079EC84();
  sub_1000074E0(v8);
  if ((v3 & 1) == 0)
  {
    sub_100009864(v1 + v2, v8);
    sub_10000E3E8(v8, v9);
    v5 = sub_10079ECE4();
    sub_1000074E0(v8);
    if ((v5 & 1) == 0)
    {
      v4 = 1;
      return v4 & 1;
    }

    sub_100009864(v1 + v2, v8);
    sub_10000E3E8(v8, v9);
    sub_10079EBE4();
    if ((v6 & 1) == 0)
    {
      sub_1000074E0(v8);
      sub_10000E3E8((v1 + OBJC_IVAR___REBookProviderService_storeController), *(v1 + OBJC_IVAR___REBookProviderService_storeController + 24));
      v4 = sub_1007A0434();
      return v4 & 1;
    }

    sub_1000074E0(v8);
  }

  v4 = 0;
  return v4 & 1;
}

Swift::Void __swiftcall BookProviderService.setPreordered(_:)(Swift::Bool a1)
{
  v2 = v1 + OBJC_IVAR___REBookProviderService_bookEntity;
  swift_beginAccess();
  sub_10022569C(v2, *(v2 + 24));
  sub_10079EBC4();
  swift_endAccess();
}

Swift::OpaquePointer_optional __swiftcall BookProviderService.cachedTocCfiIdMap()()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR___REBookProviderService_bookInfo);
  if (v2)
  {
    v3 = [v2 databaseKey];
    if (v3)
    {
      v4 = v3;
      sub_1007A2254();

LABEL_5:
      sub_10000E3E8((v1 + OBJC_IVAR___REBookProviderService_epubParser), *(v1 + OBJC_IVAR___REBookProviderService_epubParser + 24));
      v8 = sub_10079FA94();

      goto LABEL_9;
    }
  }

  v5 = OBJC_IVAR___REBookProviderService_bookEntity;
  swift_beginAccess();
  sub_100009864(v1 + v5, v14);
  sub_10000E3E8(v14, v14[3]);
  sub_10079EBF4();
  v7 = v6;
  sub_1000074E0(v14);
  if (v7)
  {
    goto LABEL_5;
  }

  v10 = sub_10079ACC4();
  v11 = sub_1007A29B4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Could not retrive TOC CFI Id map from parser, missing database key from book", v12, 2u);
  }

  v8 = 0;
LABEL_9:
  v13 = v8;
  result.value._rawValue = v13;
  result.is_nil = v9;
  return result;
}

id BookProviderService.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BookProviderService(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

void *sub_100496A84(uint64_t *a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = sub_1007A3624();
  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  while (1)
  {
    v3 = sub_1005D889C();

    v1 = sub_1005D700C(&v5, (v3 + 32), v2, v1);
    sub_10004DC54(v5);
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = v1[2];
    if (!v2)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  return v3;
}

uint64_t sub_100496B34(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_100786DBC(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_100496BB0(v6);
  return sub_1007A37E4();
}

void sub_100496BB0(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1007A3A64(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_10000A7C4(0, &qword_100AECD40, BKNavigationInfo_ptr);
        v6 = sub_1007A2634();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_100496E28(v8, v9, a1, v4);
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
    sub_100496CC4(0, v2, 1, a1);
  }
}

void sub_100496CC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 8 * a3 - 8;
    v6 = a1 - a3;
    v7 = &selRef_networkReachabilityChangedWithNotification_;
    v26 = *a4;
LABEL_5:
    v24 = v5;
    v25 = a3;
    v8 = *(v4 + 8 * a3);
    v23 = v6;
    while (1)
    {
      v9 = *v5;
      v10 = v8;
      v11 = v9;
      v12 = [v10 v7[331]];
      if (!v12)
      {
        break;
      }

      v13 = v12;
      v14 = [v11 v7[331]];
      if (!v14)
      {

        v10 = v11;
        goto LABEL_12;
      }

      v15 = v14;
      v16 = v7;
      v17 = [v13 integerValue];
      v18 = [v15 integerValue];

      v19 = v17 < v18;
      v7 = v16;
      v4 = v26;
      if (!v19)
      {
        goto LABEL_4;
      }

LABEL_13:
      if (!v4)
      {
        __break(1u);
        return;
      }

      v20 = *v5;
      v8 = *(v5 + 8);
      *v5 = v8;
      *(v5 + 8) = v20;
      v5 -= 8;
      if (__CFADD__(v6++, 1))
      {
LABEL_4:
        a3 = v25 + 1;
        v5 = v24 + 8;
        v6 = v23 - 1;
        if (v25 + 1 == a2)
        {
          return;
        }

        goto LABEL_5;
      }
    }

    v13 = v11;
LABEL_12:

    goto LABEL_13;
  }
}

void sub_100496E28(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = a3[1];
  if (v5 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_114:
    v6 = *a1;
    if (!*a1)
    {
      goto LABEL_153;
    }

    v4 = v8;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_147;
    }

    v108 = v4;
LABEL_117:
    v4 = *(v108 + 2);
    if (v4 >= 2)
    {
      while (*a3)
      {
        v109 = *&v108[16 * v4];
        v110 = v108;
        v111 = *&v108[16 * v4 + 24];
        sub_100497618((*a3 + 8 * v109), (*a3 + 8 * *&v108[16 * v4 + 16]), (*a3 + 8 * v111), v6);
        if (v126)
        {
          goto LABEL_125;
        }

        if (v111 < v109)
        {
          goto LABEL_140;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v110 = sub_100784A7C(v110);
        }

        if (v4 - 2 >= *(v110 + 2))
        {
          goto LABEL_141;
        }

        v112 = &v110[16 * v4];
        *v112 = v109;
        *(v112 + 1) = v111;
        sub_1007849F0(v4 - 1);
        v108 = v110;
        v4 = *(v110 + 2);
        if (v4 <= 1)
        {
          goto LABEL_125;
        }
      }

      goto LABEL_151;
    }

LABEL_125:

    return;
  }

  v6 = a3;
  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  v9 = &selRef_networkReachabilityChangedWithNotification_;
LABEL_4:
  v10 = v7++;
  if (v7 >= v5)
  {
    goto LABEL_39;
  }

  v114 = v8;
  v116 = v10;
  v11 = v7;
  v12 = *v6;
  v13 = *(*v6 + 8 * v10);
  v14 = *(*v6 + 8 * v11);
  v15 = v13;
  v16 = [v14 v9[331]];
  if (v16)
  {
    v17 = v16;
    v18 = v5;
    v19 = [v15 v9[331]];
    if (v19)
    {
      v20 = v19;
      v21 = [v17 integerValue];
      v22 = [v20 integerValue];

      v23 = v21 < v22;
      v6 = a3;
      v24 = v23;
    }

    else
    {

      v24 = 1;
    }

    v124 = v24;
    v9 = &selRef_networkReachabilityChangedWithNotification_;
    v5 = v18;
  }

  else
  {

    v124 = 1;
  }

  v10 = v116;
  v4 = v116 + 2;
  if (v116 + 2 >= v5)
  {
    v8 = v114;
    v7 = v116 + 2;
    if (v124)
    {
      goto LABEL_31;
    }

    goto LABEL_39;
  }

  v25 = &v12[8 * v116 + 16];
  v122 = v5;
  while (1)
  {
    v30 = *(v25 - 1);
    v31 = *v25;
    v32 = v30;
    v33 = [v31 v9[331]];
    if (v33)
    {
      break;
    }

    v34 = v32;
LABEL_24:

    if (!v124)
    {
      v8 = v114;
      v10 = v116;
      v7 = v4;
      goto LABEL_39;
    }

LABEL_19:
    ++v25;
    if (v5 == ++v4)
    {
      v7 = v5;
      v8 = v114;
      goto LABEL_30;
    }
  }

  v34 = v33;
  v35 = [v32 v9[331]];
  if (!v35)
  {

    v31 = v32;
    v9 = &selRef_networkReachabilityChangedWithNotification_;
    v5 = v122;
    goto LABEL_24;
  }

  v26 = v35;
  v27 = [v34 integerValue];
  v28 = [v26 integerValue];

  v23 = v27 < v28;
  v6 = a3;
  v29 = !v23;
  v9 = &selRef_networkReachabilityChangedWithNotification_;
  v5 = v122;
  if ((v124 ^ v29))
  {
    goto LABEL_19;
  }

  v8 = v114;
  v7 = v4;
LABEL_30:
  v10 = v116;
  if (v124)
  {
LABEL_31:
    if (v7 >= v10)
    {
      if (v10 < v7)
      {
        v36 = 8 * v7 - 8;
        v37 = 8 * v10;
        v38 = v7;
        v39 = v10;
        do
        {
          if (v39 != --v38)
          {
            v41 = *v6;
            if (!*v6)
            {
              goto LABEL_150;
            }

            v40 = *&v41[v37];
            *&v41[v37] = *&v41[v36];
            *&v41[v36] = v40;
          }

          ++v39;
          v36 -= 8;
          v37 += 8;
        }

        while (v39 < v38);
      }

      goto LABEL_39;
    }

LABEL_146:
    __break(1u);
LABEL_147:
    v108 = sub_100784A7C(v4);
    goto LABEL_117;
  }

LABEL_39:
  v42 = v6[1];
  if (v7 >= v42)
  {
    goto LABEL_62;
  }

  if (__OFSUB__(v7, v10))
  {
    goto LABEL_143;
  }

  if (v7 - v10 >= a4)
  {
    goto LABEL_62;
  }

  v43 = v10 + a4;
  if (__OFADD__(v10, a4))
  {
    goto LABEL_144;
  }

  if (v43 >= v42)
  {
    v43 = v6[1];
  }

  if (v43 < v10)
  {
LABEL_145:
    __break(1u);
    goto LABEL_146;
  }

  if (v7 == v43)
  {
    goto LABEL_62;
  }

  v115 = v8;
  v117 = v10;
  v44 = *v6;
  v4 = *v6 + 8 * v7 - 8;
  v45 = v10 - v7;
  v120 = v43;
LABEL_49:
  v123 = v4;
  v125 = v7;
  v46 = v45;
  v47 = v44[v7];
  v121 = v46;
  v48 = v46;
  while (1)
  {
    v49 = *v4;
    v50 = v47;
    v51 = v49;
    v52 = [v50 v9[331]];
    if (!v52)
    {
      v53 = v51;
LABEL_56:

      goto LABEL_57;
    }

    v53 = v52;
    v54 = [v51 v9[331]];
    if (!v54)
    {

      v50 = v51;
      v9 = &selRef_networkReachabilityChangedWithNotification_;
      goto LABEL_56;
    }

    v55 = v54;
    v56 = [v53 integerValue];
    v57 = [v55 integerValue];

    v23 = v56 < v57;
    v9 = &selRef_networkReachabilityChangedWithNotification_;
    if (!v23)
    {
      goto LABEL_48;
    }

LABEL_57:
    if (!v44)
    {
      break;
    }

    v58 = *v4;
    v47 = *(v4 + 8);
    *v4 = v47;
    *(v4 + 8) = v58;
    v4 -= 8;
    if (__CFADD__(v48++, 1))
    {
LABEL_48:
      v7 = v125 + 1;
      v4 = v123 + 8;
      v45 = v121 - 1;
      if (v125 + 1 == v120)
      {
        v7 = v120;
        v6 = a3;
        v8 = v115;
        v10 = v117;
LABEL_62:
        if (v7 < v10)
        {
          goto LABEL_142;
        }

        v60 = v8;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v8 = v60;
        }

        else
        {
          v8 = sub_10066B274(0, *(v60 + 2) + 1, 1, v60);
        }

        v4 = *(v8 + 2);
        v61 = *(v8 + 3);
        v62 = v4 + 1;
        if (v4 >= v61 >> 1)
        {
          v8 = sub_10066B274((v61 > 1), v4 + 1, 1, v8);
        }

        *(v8 + 2) = v62;
        v63 = &v8[16 * v4];
        *(v63 + 4) = v10;
        *(v63 + 5) = v7;
        v64 = *a1;
        if (!*a1)
        {
          goto LABEL_152;
        }

        if (!v4)
        {
LABEL_3:
          v5 = v6[1];
          if (v7 >= v5)
          {
            goto LABEL_114;
          }

          goto LABEL_4;
        }

        while (1)
        {
          v65 = v62 - 1;
          if (v62 >= 4)
          {
            break;
          }

          if (v62 == 3)
          {
            v66 = *(v8 + 4);
            v67 = *(v8 + 5);
            v76 = __OFSUB__(v67, v66);
            v68 = v67 - v66;
            v69 = v76;
LABEL_82:
            if (v69)
            {
              goto LABEL_131;
            }

            v82 = &v8[16 * v62];
            v84 = *v82;
            v83 = *(v82 + 1);
            v85 = __OFSUB__(v83, v84);
            v86 = v83 - v84;
            v87 = v85;
            if (v85)
            {
              goto LABEL_134;
            }

            v88 = &v8[16 * v65 + 32];
            v90 = *v88;
            v89 = *(v88 + 1);
            v76 = __OFSUB__(v89, v90);
            v91 = v89 - v90;
            if (v76)
            {
              goto LABEL_137;
            }

            if (__OFADD__(v86, v91))
            {
              goto LABEL_138;
            }

            if (v86 + v91 >= v68)
            {
              if (v68 < v91)
              {
                v65 = v62 - 2;
              }

              goto LABEL_103;
            }

            goto LABEL_96;
          }

          v92 = &v8[16 * v62];
          v94 = *v92;
          v93 = *(v92 + 1);
          v76 = __OFSUB__(v93, v94);
          v86 = v93 - v94;
          v87 = v76;
LABEL_96:
          if (v87)
          {
            goto LABEL_133;
          }

          v95 = &v8[16 * v65];
          v97 = *(v95 + 4);
          v96 = *(v95 + 5);
          v76 = __OFSUB__(v96, v97);
          v98 = v96 - v97;
          if (v76)
          {
            goto LABEL_136;
          }

          if (v98 < v86)
          {
            goto LABEL_3;
          }

LABEL_103:
          v4 = v65 - 1;
          if (v65 - 1 >= v62)
          {
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
LABEL_133:
            __break(1u);
LABEL_134:
            __break(1u);
LABEL_135:
            __break(1u);
LABEL_136:
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
LABEL_142:
            __break(1u);
LABEL_143:
            __break(1u);
LABEL_144:
            __break(1u);
            goto LABEL_145;
          }

          if (!*v6)
          {
            goto LABEL_149;
          }

          v103 = v7;
          v104 = v8;
          v105 = *&v8[16 * v4 + 32];
          v106 = *&v8[16 * v65 + 40];
          sub_100497618((*v6 + 8 * v105), (*v6 + 8 * *&v8[16 * v65 + 32]), (*v6 + 8 * v106), v64);
          if (v126)
          {
            goto LABEL_125;
          }

          if (v106 < v105)
          {
            goto LABEL_127;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v104 = sub_100784A7C(v104);
          }

          if (v4 >= *(v104 + 2))
          {
            goto LABEL_128;
          }

          v107 = &v104[16 * v4];
          *(v107 + 4) = v105;
          *(v107 + 5) = v106;
          sub_1007849F0(v65);
          v8 = v104;
          v62 = *(v104 + 2);
          v7 = v103;
          if (v62 <= 1)
          {
            goto LABEL_3;
          }
        }

        v70 = &v8[16 * v62 + 32];
        v71 = *(v70 - 64);
        v72 = *(v70 - 56);
        v76 = __OFSUB__(v72, v71);
        v73 = v72 - v71;
        if (v76)
        {
          goto LABEL_129;
        }

        v75 = *(v70 - 48);
        v74 = *(v70 - 40);
        v76 = __OFSUB__(v74, v75);
        v68 = v74 - v75;
        v69 = v76;
        if (v76)
        {
          goto LABEL_130;
        }

        v77 = &v8[16 * v62];
        v79 = *v77;
        v78 = *(v77 + 1);
        v76 = __OFSUB__(v78, v79);
        v80 = v78 - v79;
        if (v76)
        {
          goto LABEL_132;
        }

        v76 = __OFADD__(v68, v80);
        v81 = v68 + v80;
        if (v76)
        {
          goto LABEL_135;
        }

        if (v81 >= v73)
        {
          v99 = &v8[16 * v65 + 32];
          v101 = *v99;
          v100 = *(v99 + 1);
          v76 = __OFSUB__(v100, v101);
          v102 = v100 - v101;
          if (v76)
          {
            goto LABEL_139;
          }

          if (v68 < v102)
          {
            v65 = v62 - 2;
          }

          goto LABEL_103;
        }

        goto LABEL_82;
      }

      goto LABEL_49;
    }
  }

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
}

uint64_t sub_100497618(void **__src, void **a2, void **a3, void **a4)
{
  v4 = a3;
  v5 = a2 - __src;
  v6 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v6 = a2 - __src;
  }

  v7 = v6 >> 3;
  v8 = a3 - a2;
  v9 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v9 = a3 - a2;
  }

  v10 = v9 >> 3;
  if (v7 >= v9 >> 3)
  {
    v14 = a4;
    if (a4 != a2 || &a2[v10] <= a4)
    {
      v32 = a2;
      memmove(a4, a2, 8 * v10);
      a2 = v32;
    }

    v13 = &v14[v10];
    if (v8 < 8)
    {
      v31 = a2;
      goto LABEL_49;
    }

    v31 = a2;
    if (a2 > __src)
    {
      v54 = v14;
      while (2)
      {
        v33 = v31 - 1;
        --v4;
        v34 = v13;
        v35 = &selRef_networkReachabilityChangedWithNotification_;
        v50 = v31 - 1;
        while (1)
        {
          v36 = *--v34;
          v37 = *v33;
          v38 = v36;
          v39 = v37;
          v40 = [v38 v35[331]];
          if (!v40)
          {
            break;
          }

          v41 = v40;
          v42 = [v39 v35[331]];
          if (!v42)
          {

            v38 = v39;
            goto LABEL_40;
          }

          v43 = v42;
          v52 = [v41 integerValue];
          v44 = v4;
          v45 = v13;
          v46 = v31;
          v47 = [v43 integerValue];

          v33 = v50;
          v28 = v52 < v47;
          v31 = v46;
          v13 = v45;
          v4 = v44;
          v35 = &selRef_networkReachabilityChangedWithNotification_;
          if (v28)
          {
            goto LABEL_41;
          }

          if (v44 + 1 != v13)
          {
            *v44 = *v34;
          }

          v4 = v44 - 1;
          v13 = v34;
          if (v34 <= v54)
          {
            v13 = v34;
            v14 = v54;
            goto LABEL_49;
          }
        }

        v41 = v39;
LABEL_40:

        v33 = v50;
LABEL_41:
        if (v4 + 1 != v31)
        {
          *v4 = *v33;
        }

        v14 = v54;
        if (v13 <= v54 || (v31 = v33, v33 <= __src))
        {
          v31 = v33;
          break;
        }

        continue;
      }
    }
  }

  else
  {
    v11 = a2;
    if (a4 != __src || &__src[v7] <= a4)
    {
      v12 = a4;
      memmove(a4, __src, 8 * v7);
      a4 = v12;
    }

    v13 = &a4[v7];
    v14 = a4;
    if (v5 < 8)
    {
      v31 = __src;
      goto LABEL_49;
    }

    v15 = __src;
    if (v11 < v4)
    {
      v16 = v11;
      while (1)
      {
        v17 = *v14;
        v18 = *v16;
        v19 = v17;
        v20 = [v18 absoluteOrder];
        if (!v20)
        {
          break;
        }

        v21 = v20;
        v53 = v14;
        v22 = [v19 absoluteOrder];
        if (!v22)
        {

          v18 = v19;
LABEL_19:

LABEL_20:
          v29 = v16;
          if (v15 == v16++)
          {
            goto LABEL_22;
          }

LABEL_21:
          *v15 = *v29;
          goto LABEL_22;
        }

        v23 = v22;
        v51 = [v21 integerValue];
        v24 = v13;
        v25 = v15;
        v26 = v16;
        v27 = [v23 integerValue];

        v28 = v51 < v27;
        v16 = v26;
        v15 = v25;
        v13 = v24;
        v14 = v53;
        if (v28)
        {
          goto LABEL_20;
        }

        v29 = v53;
        v14 = v53 + 1;
        if (v15 != v53)
        {
          goto LABEL_21;
        }

LABEL_22:
        ++v15;
        if (v14 >= v13 || v16 >= v4)
        {
          goto LABEL_24;
        }
      }

      v21 = v19;
      goto LABEL_19;
    }

LABEL_24:
    v31 = v15;
  }

LABEL_49:
  if (v31 != v14 || v31 >= (v14 + ((v13 - v14 + (v13 - v14 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v31, v14, 8 * (v13 - v14));
  }

  return 1;
}

void *sub_1004979F4(void *a1, void *a2, uint64_t a3, void *a4, char *a5, uint64_t a6, uint64_t a7)
{
  v20[3] = a6;
  v20[4] = a7;
  v13 = sub_1002256EC(v20);
  (*(*(a6 - 8) + 32))(v13, a3, a6);
  v14 = type metadata accessor for BookProviderService(0);
  v19 = v14;
  sub_1001F1160(&qword_100AEBCE0, &unk_100832BF0);
  sub_1007A22E4();
  sub_10079ACD4();
  sub_100009864(a1, &a5[OBJC_IVAR___REBookProviderService_bookEntity]);
  *&a5[OBJC_IVAR___REBookProviderService_bookInfo] = a2;
  sub_100009864(v20, &a5[OBJC_IVAR___REBookProviderService_storeController]);
  sub_100009864(a4, &a5[OBJC_IVAR___REBookProviderService_epubParser]);
  if (a2)
  {
    v15 = [a2 managedObjectContext];
  }

  else
  {
    v15 = 0;
  }

  *&a5[OBJC_IVAR___REBookProviderService_bookInfoMOC] = v15;
  v18.receiver = a5;
  v18.super_class = v14;
  v16 = objc_msgSendSuper2(&v18, "init");
  sub_1000074E0(a4);
  sub_1000074E0(a1);
  sub_1000074E0(v20);
  return v16;
}

void *sub_100497B90(void *a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = *(a6 - 8);
  __chkstk_darwin(a1);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = objc_allocWithZone(type metadata accessor for BookProviderService(0));
  (*(v13 + 16))(v15, a3, a6);
  return sub_1004979F4(a1, a2, v15, a4, v16, a6, a7);
}

uint64_t type metadata accessor for BookProviderService(uint64_t a1)
{
  result = qword_100AE5AE0;
  if (!qword_100AE5AE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100497CF4(uint64_t a1)
{
  result = sub_10079ACE4();
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

uint64_t type metadata accessor for ViewSupplementalContentActionItem(uint64_t a1)
{
  result = qword_100AE5B50;
  if (!qword_100AE5B50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100497E14@<X0>(uint64_t a1@<X8>)
{
  sub_10000E3E8(v1, v1[3]);
  v3 = sub_100797704();
  if (*(v3 + 16))
  {
    sub_100009864(v3 + 32, v5);

    sub_1001F1160(&qword_100AD4B48, qword_10080ED60);
    sub_1001F1160(&qword_100AE5B98, &qword_100829018);
    if (swift_dynamicCast())
    {
      if (*(&v7 + 1))
      {
        return sub_1000077C0(&v6, a1);
      }
    }

    else
    {
      v8 = 0;
      v6 = 0u;
      v7 = 0u;
    }
  }

  else
  {

    v6 = 0u;
    v7 = 0u;
    v8 = 0;
  }

  sub_100007840(&v6, &unk_100AE5BA0, &unk_100829020);
  result = sub_1007A38A4();
  __break(1u);
  return result;
}

uint64_t sub_100497F64@<X0>(uint64_t a1@<X8>)
{
  sub_100009864(v1 + 40, v6);
  sub_1001F1160(&qword_100AD5ED0, &unk_10083CFE0);
  sub_1001F1160(&qword_100AD5ED8, &unk_100812380);
  if (swift_dynamicCast())
  {
    return sub_1000077C0(v4, a1);
  }

  v5 = 0;
  memset(v4, 0, sizeof(v4));
  sub_100007840(v4, qword_100AD5EE0, qword_10083CFF0);
  result = sub_1007A38A4();
  __break(1u);
  return result;
}

uint64_t sub_10049805C()
{
  v1 = v0;
  v2 = sub_1007971A4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v17 - v7;
  sub_10000E3E8(v0, v0[3]);
  sub_1007977A4();
  if (v19)
  {
    sub_1001FF70C(&v18);
LABEL_13:
    v15 = 0;
    return v15 & 1;
  }

  sub_1000077C0(&v18, v23);
  sub_100497E14(v21);
  sub_10000E3E8(v21, v22);
  sub_1002C5BF4(&v18);
  v9 = v18;
  v10 = BYTE8(v18);

  sub_1000074E0(v21);
  if (v10 & 1) != 0 || v9 < 1 || (sub_10000E3E8(v0, v0[3]), sub_100797784(), (*(v3 + 104))(v5, enum case for ContextActionSource.productPage(_:), v2), sub_100498DFC(), v11 = sub_1007A2124(), v12 = *(v3 + 8), v12(v5, v2), v12(v8, v2), (v11) || (sub_10000E3E8(v23, v24), v13 = sub_100797694(), v13 == 2) || (v13 & 1) == 0 || (sub_10000E3E8(v23, v24), sub_1007976A4(), !v14) || (, sub_10000E3E8(v23, v24), sub_1007976B4(), (sub_1007972D4() & 1) == 0))
  {
    sub_1000074E0(v23);
    goto LABEL_13;
  }

  sub_10000E3E8(v1, v1[3]);
  if (sub_100797794())
  {
    v15 = 1;
  }

  else
  {
    sub_100497E14(v21);
    sub_10000E3E8(v21, v22);
    sub_1002C5BF4(&v18);
    v15 = v20;

    sub_1000074E0(v21);
  }

  sub_1000074E0(v23);
  return v15 & 1;
}

uint64_t sub_100498384()
{
  v1[28] = v0;
  v2 = sub_10079ACE4();
  v1[29] = v2;
  v1[30] = *(v2 - 8);
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v3 = sub_100797D54();
  v1[33] = v3;
  v1[34] = *(v3 - 8);
  v1[35] = swift_task_alloc();
  sub_1007A26F4();
  v1[36] = sub_1007A26E4();
  v5 = sub_1007A2694();

  return _swift_task_switch(sub_1004984E0, v5, v4);
}

uint64_t sub_1004984E0()
{
  v39 = v0;
  v1 = *(v0 + 224);

  sub_10000E3E8(v1, v1[3]);
  sub_1007977A4();
  if (*(v0 + 56) == 1)
  {
    sub_1001FF70C(v0 + 16);
LABEL_5:
    sub_10079AC44();
    v4 = sub_10079ACC4();
    v5 = sub_1007A29B4();
    v6 = os_log_type_enabled(v4, v5);
    v8 = *(v0 + 240);
    v7 = *(v0 + 248);
    v9 = *(v0 + 232);
    if (v6)
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Trying to view a pdf when no supplemental pdf count in unavailable", v10, 2u);
    }

    (*(v8 + 8))(v7, v9);
    goto LABEL_20;
  }

  sub_1000077C0((v0 + 16), v0 + 64);
  sub_100497E14(v0 + 104);
  sub_10000E3E8((v0 + 104), *(v0 + 128));
  sub_1002C5BF4(&v33);
  v2 = v33;
  v3 = v34;

  sub_1000074E0((v0 + 104));
  if (v3 == 1)
  {
    sub_1000074E0((v0 + 64));
    goto LABEL_5;
  }

  if (v2 == 1)
  {
    v12 = *(v0 + 272);
    v11 = *(v0 + 280);
    v13 = *(v0 + 264);
    sub_100798004();
    v14 = sub_100797FF4();
    sub_10000E3E8((v0 + 64), *(v0 + 88));
    sub_100797674();
    (*(v12 + 104))(v11, enum case for ViewSource.actionMenu(_:), v13);
    LOBYTE(v33) = 0;
    sub_100797FD4();

    (*(v12 + 8))(v11, v13);
    sub_100497E14(v0 + 144);
    sub_10000E3E8((v0 + 144), *(v0 + 168));
    sub_1002C5BF4(&v33);
    v16 = v35;
    v15 = v36;

    if (v15)
    {
      sub_1000074E0((v0 + 144));
      sub_100497E14(v0 + 184);
      sub_10000E3E8((v0 + 184), *(v0 + 208));
      sub_1002C5BF4(&v33);
      v17 = v37;
      v18 = v38;

      sub_100498990(v16, v15, v17, v18);

      v19 = (v0 + 184);
    }

    else
    {
      v19 = (v0 + 144);
    }

    sub_1000074E0(v19);
  }

  else if (v2 < 2)
  {
    sub_10079AC44();
    v24 = sub_10079ACC4();
    v25 = sub_1007A29B4();
    v26 = os_log_type_enabled(v24, v25);
    v27 = *(v0 + 256);
    v28 = *(v0 + 232);
    v29 = *(v0 + 240);
    if (v26)
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "Trying to view a pdf when no supplemental pdf should be available", v30, 2u);
    }

    (*(v29 + 8))(v27, v28);
  }

  else
  {
    v20 = objc_opt_self();
    sub_10000E3E8((v0 + 64), *(v0 + 88));
    sub_100797674();
    v21 = sub_1007A2214();

    v22 = [v20 supplementalContentPDFPickerWithPlaylistID:v21 fromActionMenu:1];

    if (v22)
    {
      v23 = *(v0 + 224);
      [v22 setModalPresentationStyle:2];
      sub_10000E3E8((v23 + 40), *(v23 + 64));
      sub_100796EC4();
    }
  }

  sub_1000074E0((v0 + 64));
LABEL_20:

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_100498990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = _swiftEmptyDictionarySingleton;
  sub_100497F64(&v29);
  sub_10000E3E8(&v29, ObjectType);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v7 = Strong, v8 = [objc_opt_self() sceneControllerForViewController:Strong], v7, v8))
  {
    sub_1000074E0(&v29);
    v9 = [v8 newShowAssetTransaction];
    v10 = sub_1007A2254();
    v11 = a3;
    v13 = v12;
    ObjectType = swift_getObjectType();
    *&v29 = v9;
    sub_1000076D4(&v29, v28);
    swift_unknownObjectRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1002F4B78(v28, v10, v13, isUniquelyReferenced_nonNull_native);
    a3 = v11;

    swift_unknownObjectRelease();
    v31 = _swiftEmptyDictionarySingleton;
  }

  else
  {
    sub_1000074E0(&v29);
    v9 = 0;
  }

  v15 = sub_1007A2254();
  v17 = v15;
  v18 = v16;
  if (a4)
  {
    ObjectType = &type metadata for String;
    *&v29 = a3;
    *(&v29 + 1) = a4;
    sub_1000076D4(&v29, v28);

    v19 = swift_isUniquelyReferenced_nonNull_native();
    sub_1002F4B78(v28, v17, v18, v19);

    v20 = _swiftEmptyDictionarySingleton;
  }

  else
  {
    sub_1002EEBD0(v15, v16, &v29);

    sub_100007840(&v29, &unk_100AD5B40, &unk_100811300);
    v20 = v31;
  }

  sub_100497F64(&v29);
  sub_10000E3E8(&v29, ObjectType);
  sub_10058096C(v20);

  v21 = sub_1004C32C4();
  if (v21)
  {
    v22 = v21;
    v23 = objc_allocWithZone(BKAssetID);
    v24 = sub_1007A2214();
    v25 = [v23 initWithAssetID:v24];

    isa = sub_1007A2024().super.isa;

    [v22 showAssetWithTransaction:v9 assetIdentifier:v25 location:0 options:isa completion:0];
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
  }

  return sub_1000074E0(&v29);
}

uint64_t sub_100498CB4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10002812C;

  return sub_100498384();
}

uint64_t sub_100498D40@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  sub_1000077C0(a1, a6);
  sub_1000077C0(a2, a6 + 40);
  *(a6 + 80) = a3;
  sub_1000077C0(a4, a6 + 88);
  v11 = *(a5 + 32);
  v12 = enum case for ContextActionType.viewIncludedPDF(_:);
  v13 = sub_100797144();
  v14 = *(*(v13 - 8) + 104);

  return v14(a6 + v11, v12, v13);
}

unint64_t sub_100498DFC()
{
  result = qword_100AD7780;
  if (!qword_100AD7780)
  {
    sub_1007971A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD7780);
  }

  return result;
}

uint64_t sub_100498E54()
{
  v0 = sub_10079ACE4();
  sub_100009A38(v0, qword_100AE5BB0);
  sub_100008B98(v0, qword_100AE5BB0);
  sub_10000A7C4(0, &qword_100AD20A0, OS_os_log_ptr);
  return sub_1007A33F4();
}

id sub_100498F20(void *a1, void *a2, void *a3, void *a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  v5[OBJC_IVAR___BKAudiobookController_supportsReportConcernInJS] = 0;
  v5[OBJC_IVAR___BKAudiobookController_canChangePlayerVolume] = 0;
  v5[OBJC_IVAR___BKAudiobookController_canStopPlayer] = 1;
  *&v5[OBJC_IVAR___BKAudiobookController_player] = a1;
  *&v5[OBJC_IVAR___BKAudiobookController_sleepTimer] = a2;
  *&v5[OBJC_IVAR___BKAudiobookController_bag] = a3;
  *&v5[OBJC_IVAR___BKAudiobookController_bridge] = a4;
  v18.receiver = v5;
  v18.super_class = ObjectType;
  v11 = a1;
  v12 = a2;
  v13 = a3;
  v14 = a4;
  v15 = objc_msgSendSuper2(&v18, "init");
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = v15;

  sub_1007A3304();

  return v16;
}

void sub_10049912C(void *a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = sub_1007A2214();
    v6 = [a1 objectForKeyedSubscript:v5];

    if (v6)
    {
      v7 = [v6 toBool];

      v4[OBJC_IVAR___BKAudiobookController_supportsReportConcernInJS] = v7;
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1004991F8()
{
  v1 = [*(v0 + OBJC_IVAR___BKAudiobookController_bag) reportConcerns];
  *&v10 = 0;
  v2 = [v1 jsa_valueWithError:&v10];

  v3 = v10;
  if (!v2)
  {
    v6 = v10;
    sub_1007967D4();

    swift_willThrow();

    v10 = 0u;
    v11 = 0u;
LABEL_9:
    sub_1000230BC(&v10);
    return 0;
  }

  *&v10 = 0x64656C62616E65;
  *(&v10 + 1) = 0xE700000000000000;
  v4 = v3;
  v5 = [v2 __swift_objectForKeyedSubscript:sub_1007A3B04()];
  swift_unknownObjectRelease();

  if (v5)
  {
    sub_1007A3504();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v10 = v8;
  v11 = v9;
  if (!*(&v9 + 1))
  {
    goto LABEL_9;
  }

  result = swift_dynamicCast();
  if (result)
  {
    return v8;
  }

  return result;
}

id sub_1004993A0(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  sub_10000AE20(a2, v29);
  v6 = v30;
  if (v30)
  {
    v7 = sub_10000E3E8(v29, v30);
    v8 = *(v6 - 8);
    v9 = __chkstk_darwin(v7);
    v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))(v11, v9);
    v12 = sub_1007A3AA4();
    (*(v8 + 8))(v11, v6);
    sub_1000074E0(v29);
  }

  else
  {
    v12 = 0;
  }

  v28.receiver = v2;
  v28.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v28, "canPerformAction:withSender:", a1, v12);
  swift_unknownObjectRelease();
  if (sub_100796E94() & 1) != 0 || (sub_100796E94() & 1) != 0 || (sub_100796E94() & 1) != 0 || (sub_100796E94() & 1) != 0 || (sub_100796E94() & 1) != 0 || (sub_100796E94() & 1) != 0 || (sub_100796E94() & 1) != 0 || (sub_100796E94() & 1) != 0 || (sub_100796E94() & 1) != 0 || (sub_100796E94() & 1) != 0 || (sub_100796E94() & 1) != 0 || (sub_100796E94() & 1) != 0 || (sub_100796E94() & 1) != 0 || (sub_100796E94() & 1) != 0 || (sub_100796E94() & 1) != 0 || (sub_100796E94() & 1) != 0 || (sub_100796E94())
  {
    if (v13)
    {
      v14 = *&v2[OBJC_IVAR___BKAudiobookController_player];
      if ([v14 currentAudiobook])
      {
LABEL_23:
        swift_unknownObjectRelease();
        v15 = [v14 state] != 4;
        return (v15 & 1);
      }
    }

LABEL_51:
    v15 = 0;
    return (v15 & 1);
  }

  if (sub_100796E94())
  {
    if (v13)
    {
      v14 = *&v2[OBJC_IVAR___BKAudiobookController_player];
      if ([v14 currentAudiobook])
      {
        goto LABEL_23;
      }
    }

    goto LABEL_51;
  }

  if ((sub_100796E94() & 1) == 0)
  {
    if (sub_100796E94())
    {
      if (v13)
      {
        v21 = *&v2[OBJC_IVAR___BKAudiobookController_player];
        if ([v21 currentAudiobook])
        {
          swift_unknownObjectRelease();
          if ([v21 state] != 4)
          {
            v15 = [v21 currentChapterIndex] != 0;
            return (v15 & 1);
          }
        }
      }
    }

    else if ((sub_100796E94() & 1) == 0 && (sub_100796E94() & 1) == 0)
    {
      v22 = sub_100796E94();
      if ((v22 & v13 & 1) == 0)
      {
        v15 = (v22 ^ 1) & v13;
        return (v15 & 1);
      }

      v23 = [*&v2[OBJC_IVAR___BKAudiobookController_player] currentAudiobook];
      if (v23)
      {
        v24 = [v23 isSG];
        swift_unknownObjectRelease();
        if (v24)
        {
          if ((sub_1004991F8() & 1) != 0 && v2[OBJC_IVAR___BKAudiobookController_supportsReportConcernInJS] == 1)
          {
            v15 = [objc_opt_self() isOffline] ^ 1;
            return (v15 & 1);
          }
        }
      }
    }

    goto LABEL_51;
  }

  v16 = *&v2[OBJC_IVAR___BKAudiobookController_player];
  v17 = [v16 currentAudiobook];
  if (v17)
  {
    v18 = [v17 chapters];
    swift_unknownObjectRelease();
    sub_1001F1160(&qword_100AED9C0, &unk_100829060);
    v19 = sub_1007A25E4();

    if (v19 >> 62)
    {
      v20 = sub_1007A38D4();
    }

    else
    {
      v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if ((v13 & 1) == 0)
    {
      goto LABEL_51;
    }
  }

  else
  {
    if (!v13)
    {
      goto LABEL_51;
    }

    v20 = 0;
  }

  if (![v16 currentAudiobook])
  {
    goto LABEL_51;
  }

  swift_unknownObjectRelease();
  if ([v16 state] == 4)
  {
    goto LABEL_51;
  }

  result = [v16 currentChapterIndex];
  v26 = v20 - 1;
  if (!__OFSUB__(v20, 1))
  {
    v15 = v26 > 0 && result < v26;
    return (v15 & 1);
  }

  __break(1u);
  return result;
}

void sub_1004999E4(void *a1)
{
  v2 = v1;
  v4 = sub_100796CF4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v37 - v9;
  v11 = sub_1007A21D4();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v15);
  v18 = &v37 - v17;
  v39 = a1;
  [a1 action];
  if (sub_100796E94())
  {
    v38 = v4;
    v37 = *(v2 + OBJC_IVAR___BKAudiobookController_player);
    v19 = (v12 + 16);
    v20 = (v5 + 16);
    if ([v37 isPlaying])
    {
      sub_1007A2154();
      sub_100796C94();
      (*v19)(v14, v18, v11);
      type metadata accessor for BundleFinder();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v22 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
      v23 = v38;
      (*v20)(v7, v10, v38);
      sub_1007A22D4(v14, 0, 0, v22, v7, "Controls -> Pause", 17, 2);
    }

    else
    {
      sub_1007A2154();
      sub_100796C94();
      (*v19)(v14, v18, v11);
      type metadata accessor for BundleFinder();
      v25 = swift_getObjCClassFromMetadata();
      v26 = [objc_opt_self() bundleForClass:v25];
      v23 = v38;
      (*v20)(v7, v10, v38);
      sub_1007A22D4(v14, 0, 0, v26, v7, "Controls -> Play", 16, 2);
    }

    (*(v5 + 8))(v10, v23);
    (*(v12 + 8))(v18, v11);
    v27 = sub_1007A2214();

    v28 = v39;
    [v39 setTitle:v27];

    [v37 isPlaying];
    v29 = sub_1007A2214();
    v30 = [objc_opt_self() systemImageNamed:v29];

    [v28 setImage:v30];
    return;
  }

  if (sub_100796E94())
  {
    v24 = [*(v2 + OBJC_IVAR___BKAudiobookController_player) playbackSpeed] == 0;
    goto LABEL_23;
  }

  if (sub_100796E94())
  {
    v24 = [*(v2 + OBJC_IVAR___BKAudiobookController_player) playbackSpeed] == 1;
    goto LABEL_23;
  }

  if (sub_100796E94())
  {
    v31 = [*(v2 + OBJC_IVAR___BKAudiobookController_player) playbackSpeed];
LABEL_13:
    v24 = v31 == 2;
    goto LABEL_23;
  }

  if (sub_100796E94())
  {
    v32 = [*(v2 + OBJC_IVAR___BKAudiobookController_player) playbackSpeed];
LABEL_16:
    v24 = v32 == 3;
    goto LABEL_23;
  }

  if (sub_100796E94())
  {
    v33 = [*(v2 + OBJC_IVAR___BKAudiobookController_player) playbackSpeed];
LABEL_19:
    v24 = v33 == 4;
    goto LABEL_23;
  }

  if (sub_100796E94())
  {
    v34 = [*(v2 + OBJC_IVAR___BKAudiobookController_player) playbackSpeed];
LABEL_22:
    v24 = v34 == 5;
    goto LABEL_23;
  }

  if (sub_100796E94())
  {
    v31 = [*(v2 + OBJC_IVAR___BKAudiobookController_sleepTimer) sleepTimerOption];
    goto LABEL_13;
  }

  if (sub_100796E94())
  {
    v32 = [*(v2 + OBJC_IVAR___BKAudiobookController_sleepTimer) sleepTimerOption];
    goto LABEL_16;
  }

  if (sub_100796E94())
  {
    v33 = [*(v2 + OBJC_IVAR___BKAudiobookController_sleepTimer) sleepTimerOption];
    goto LABEL_19;
  }

  if (sub_100796E94())
  {
    v34 = [*(v2 + OBJC_IVAR___BKAudiobookController_sleepTimer) sleepTimerOption];
    goto LABEL_22;
  }

  if (sub_100796E94())
  {
    v24 = [*(v2 + OBJC_IVAR___BKAudiobookController_sleepTimer) sleepTimerOption] == 6;
  }

  else
  {
    if ((sub_100796E94() & 1) == 0)
    {
      if (sub_100796E94())
      {
        v35 = [*(v2 + OBJC_IVAR___BKAudiobookController_sleepTimer) expiresAtChapterEnd];
      }

      else
      {
        if ((sub_100796E94() & 1) == 0)
        {
          return;
        }

        v35 = [*(v2 + OBJC_IVAR___BKAudiobookController_sleepTimer) isActive] ^ 1;
      }

      goto LABEL_26;
    }

    v24 = [*(v2 + OBJC_IVAR___BKAudiobookController_sleepTimer) sleepTimerOption] == 7;
  }

LABEL_23:
  v35 = v24;
LABEL_26:
  v36 = v39;

  [v36 setState:v35];
}

id sub_10049A1F8()
{
  v1 = v0;
  if (qword_100AD1720 != -1)
  {
    swift_once();
  }

  v2 = sub_10079ACE4();
  sub_100008B98(v2, qword_100AE5BB0);
  v3 = sub_10079ACC4();
  v4 = sub_1007A29D4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Stopping playback from AudiobookController", v5, 2u);
  }

  v6 = *(v1 + OBJC_IVAR___BKAudiobookController_player);
  [v6 stop];

  return [v6 setCurrentAudiobook:0];
}

uint64_t sub_10049A348(char *a1, uint64_t a2, uint64_t a3, SEL *a4, uint64_t a5)
{
  if (a3)
  {
    v8 = a1;
    swift_unknownObjectRetain();
    sub_1007A3504();
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
    v9 = a1;
  }

  v10 = [*&a1[OBJC_IVAR___BKAudiobookController_player] skipController];
  [v10 *a4];
  [v10 singleSkip:a5 interval:?];

  return sub_1000230BC(&v12);
}

void sub_10049A41C(char *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    sub_1007A3504();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
    v7 = a1;
  }

  [*&a1[OBJC_IVAR___BKAudiobookController_player] *a4];
  sub_1000230BC(&v8);
}

void sub_10049A76C(char *a1, uint64_t a2, uint64_t a3, void *a4, SEL *a5, uint64_t a6)
{
  if (a3)
  {
    v10 = a1;
    swift_unknownObjectRetain();
    sub_1007A3504();
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
    v11 = a1;
  }

  [*&a1[*a4] *a5];
  sub_1000230BC(&v12);
}

void sub_10049A804()
{
  v1 = v0;
  v2 = sub_1001F1160(&qword_100AD67D0, &qword_100814660);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v27 - v4;
  v6 = [*&v0[OBJC_IVAR___BKAudiobookController_player] currentAudiobook];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 assetID];
    v9 = sub_1007A2254();
    v11 = v10;

    v12 = [v7 supplementalContents];
    sub_10000A7C4(0, &qword_100AE5C30, BKAudiobookSupplementalContent_ptr);
    v13 = sub_1007A25E4();

    if (v13 >> 62)
    {
      sub_1007A38D4();
    }

    isa = sub_1007A2884().super.super.isa;
    v14 = [objc_opt_self() delegate];
    v15 = [v14 primaryAnalyticsController];

    v16 = sub_100797CF4();
    if (v16)
    {
      v17 = sub_1007A2744();
      (*(*(v17 - 8) + 56))(v5, 1, 1, v17);
      sub_1007A26F4();
      v18 = isa;
      v19 = v16;
      v20 = v1;
      v21 = sub_1007A26E4();
      v22 = swift_allocObject();
      v22[2] = v21;
      v22[3] = &protocol witness table for MainActor;
      v22[4] = v9;
      v22[5] = v11;
      v22[6] = v18;
      v22[7] = v19;
      v22[8] = v20;
      sub_1003457A0(0, 0, v5, &unk_100829058, v22);
      swift_unknownObjectRelease();

      return;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_100AD1720 != -1)
    {
      swift_once();
    }

    v23 = sub_10079ACE4();
    sub_100008B98(v23, qword_100AE5BB0);
    isa = sub_10079ACC4();
    v24 = sub_1007A29B4();
    if (os_log_type_enabled(isa, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, isa, v24, "Current audiobook is nil", v25, 2u);
    }
  }

  v26 = isa;
}

uint64_t sub_10049AB9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[10] = sub_1007A26F4();
  v7[11] = sub_1007A26E4();
  objc_allocWithZone(sub_1001F1160(&qword_100AD4B38, &unk_10080ED50));

  v12 = a6;
  v13 = a7;
  v14 = swift_task_alloc();
  v7[12] = v14;
  *v14 = v7;
  v14[1] = sub_10049ACA8;

  return sub_1005DE8A4(a4, a5, a6, v13);
}

uint64_t sub_10049ACA8(uint64_t a1)
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 64);
  *(*v1 + 104) = a1;

  v5 = sub_1007A2694();

  return _swift_task_switch(sub_10049AE24, v5, v4);
}

uint64_t sub_10049AE24()
{
  v1 = v0[13];

  v2 = [objc_opt_self() delegate];
  v3 = [v2 sceneManager];
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  v0[6] = sub_10049B294;
  v0[7] = v4;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100201C54;
  v0[5] = &unk_100A1E4B8;
  v5 = _Block_copy(v0 + 2);
  v6 = v1;

  [v3 requestPrimaryScene:v5];
  _Block_release(v5);

  v7 = v0[1];

  return v7();
}

uint64_t sub_10049AFA4(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void *))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    sub_1007A3504();
    v7 = swift_unknownObjectRelease();
  }

  else
  {
    memset(v9, 0, sizeof(v9));
    v7 = a1;
  }

  a4(v7);

  return sub_1000230BC(v9);
}

void sub_10049B0F0(void *a1, void *a2)
{
  v4 = objc_opt_self();
  v5 = [a1 bk_window];
  v6 = [v4 jsa_topMostViewControllerForWindow:v5];

  [a2 setModalPresentationStyle:2];
  [v6 presentViewController:a2 animated:1 completion:0];
}

uint64_t sub_10049B1B8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10002812C;

  return sub_10049AB9C(a1, v4, v5, v6, v7, v8, v9);
}

double ScrubberStatePublisher.statusBarStateProvider.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 32) = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return result;
}

void (*ScrubberStatePublisher.statusBarStateProvider.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 32);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_10049B3E4;
}

void sub_10049B3E4(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 32) = *(*a1 + 32);
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

uint64_t ScrubberStatePublisher.scrubberState.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(&v1);

  return v1;
}

double ScrubberStatePublisher.scrubberState.setter(uint64_t a1, char a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_100337314(a1, a2);
  sub_10079B9B4();
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return sub_100342F4C(a1, a2);
  }

  v5 = *(v2 + 32);
  ObjectType = swift_getObjectType();
  v7 = (*(v5 + 24))(ObjectType, v5);
  v9 = v8;
  swift_unknownObjectRelease();
  if (!v7)
  {
    return sub_100342F4C(a1, a2);
  }

  v10 = swift_getObjectType();
  (*(v9 + 8))(v10, v9);
  sub_100342F4C(a1, a2);
  swift_unknownObjectRelease();
  return result;
}

void (*ScrubberStatePublisher.scrubberState.modify(uint64_t *a1))(char **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 64) = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(v4);

  *(v4 + 48) = *v4;
  *(v4 + 56) = *(v4 + 8);
  return sub_10049B70C;
}

void sub_10049B70C(char **a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 6);
  v5 = (*a1)[56];
  swift_getKeyPath();
  swift_getKeyPath();
  if (a2)
  {
    *v3 = v4;
    *(v3 + 8) = v5;
    sub_100337314(v4, v5);

    sub_100337314(v4, v5);
    sub_10079B9B4();
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong() && (v6 = *(v3[8] + 32), v7 = swift_getObjectType(), v8 = (*(v6 + 24))(v7, v6), v10 = v9, swift_unknownObjectRelease(), v8))
    {
      ObjectType = swift_getObjectType();
      (*(v10 + 8))(ObjectType, v10);
      sub_100342F4C(v4, v5);
      swift_unknownObjectRelease();
    }

    else
    {
      sub_100342F4C(v4, v5);
    }

    v18 = v3[6];
    v19 = *(v3 + 56);
  }

  else
  {
    *v3 = v4;
    *(v3 + 8) = v5;

    sub_100337314(v4, v5);
    sub_10079B9B4();
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v12 = *(v3[8] + 32);
      v13 = swift_getObjectType();
      v14 = (*(v12 + 24))(v13, v12);
      v16 = v15;
      swift_unknownObjectRelease();
      if (v14)
      {
        v17 = swift_getObjectType();
        (*(v16 + 8))(v17, v16);
        sub_100342F4C(v4, v5);
        swift_unknownObjectRelease();
        goto LABEL_12;
      }
    }

    v18 = v4;
    v19 = v5;
  }

  sub_100342F4C(v18, v19);
LABEL_12:

  free(v3);
}

uint64_t ScrubberStatePublisher.$scrubberState.getter()
{
  swift_beginAccess();
  sub_1001F1160(&qword_100AE5C40, &unk_10082E450);
  sub_10079B974();
  return swift_endAccess();
}

uint64_t ScrubberStatePublisher.$scrubberState.setter(uint64_t a1)
{
  v2 = sub_1001F1160(&qword_100AE5C48, &qword_1008290C0);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_1001F1160(&qword_100AE5C40, &unk_10082E450);
  sub_10079B984();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*ScrubberStatePublisher.$scrubberState.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_1001F1160(&qword_100AE5C48, &qword_1008290C0);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC5Books22ScrubberStatePublisher__scrubberState;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_1001F1160(&qword_100AE5C40, &unk_10082E450);
  sub_10079B974();
  swift_endAccess();
  return sub_1002E7304;
}

uint64_t ScrubberStatePublisher.__allocating_init(bookContentViewProxy:)(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 32) = 0;
  swift_unknownObjectWeakInit();
  sub_10079B964();
  *(v2 + 16) = a1;
  return v2;
}

uint64_t ScrubberStatePublisher.init(bookContentViewProxy:)(uint64_t a1)
{
  v3 = sub_1001F1160(&qword_100AE5C40, &unk_10082E450);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  *(v1 + 32) = 0;
  swift_unknownObjectWeakInit();
  v7 = OBJC_IVAR____TtC5Books22ScrubberStatePublisher__scrubberState;
  v9 = 0;
  v10 = 2;
  sub_10079B964();
  (*(v4 + 32))(v1 + v7, v6, v3);
  *(v1 + 16) = a1;
  return v1;
}

UIView __swiftcall ScrubberStatePublisher.makeSnapshotView()()
{
  v0 = sub_1007A0C44();
  if (v0)
  {
    v1 = v0;
    v2 = [v0 snapshotViewAfterScreenUpdates:0];

    if (v2)
    {
      return v2;
    }
  }

  v4 = objc_allocWithZone(UIView);

  return [v4 init];
}

uint64_t ScrubberStatePublisher.deinit()
{

  sub_10002B130(v0 + 24);
  v1 = OBJC_IVAR____TtC5Books22ScrubberStatePublisher__scrubberState;
  v2 = sub_1001F1160(&qword_100AE5C40, &unk_10082E450);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t ScrubberStatePublisher.__deallocating_deinit()
{

  sub_10002B130(v0 + 24);
  v1 = OBJC_IVAR____TtC5Books22ScrubberStatePublisher__scrubberState;
  v2 = sub_1001F1160(&qword_100AE5C40, &unk_10082E450);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_10049BFB0@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for ScrubberStatePublisher(0);
  result = sub_10079B8B4();
  *a2 = result;
  return result;
}

uint64_t type metadata accessor for ScrubberStatePublisher(uint64_t a1)
{
  result = qword_100AE5C78;
  if (!qword_100AE5C78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10049C044(uint64_t a1)
{
  sub_10049C0EC();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10049C0EC()
{
  if (!qword_100AE5C88)
  {
    v0 = sub_10079B9D4();
    if (!v1)
    {
      atomic_store(v0, &qword_100AE5C88);
    }
  }
}

void sub_10049C274()
{
  v13.receiver = v0;
  v13.super_class = type metadata accessor for BuyButtonUIViewController();
  objc_msgSendSuper2(&v13, "viewDidLoad");
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    type metadata accessor for BuyButtonUIView();
    v3 = swift_dynamicCastClass();
    if (v3)
    {
      v4 = v3;
      [*(v3 + OBJC_IVAR____TtC5Books15BuyButtonUIView_button) addTarget:v0 action:"_buyButtonPressed:" forControlEvents:64];

      sub_10049C430(v5);

      v6 = OBJC_IVAR____TtC5Books15BuyButtonUIView_radialProgress;
      v7 = *(v4 + OBJC_IVAR____TtC5Books15BuyButtonUIView_radialProgress);
      v8 = objc_opt_self();
      v9 = v7;
      v10 = [v8 clearColor];
      [v9 setTrackColor:v10];

      [*(v4 + v6) setInscribeProgress:0];
      [*(v4 + v6) setProgressThickness:2.0];
      v11 = *(v4 + v6);
      v12 = [v8 labelColor];
      [v11 setProgressColor:v12];

      [*(v4 + v6) setTrackThickness:2.0];
    }
  }
}

double sub_10049C430(uint64_t a1)
{
  v2 = sub_1001F1160(&qword_100AE5DC0, &qword_100829190);
  v3 = *(v2 - 8);
  v108 = v2;
  v109 = v3;
  __chkstk_darwin(v2);
  v106 = &v72 - v4;
  v5 = sub_1001F1160(&qword_100AE5DC8, &qword_100829198);
  v6 = *(v5 - 8);
  v110 = v5;
  v111 = v6;
  __chkstk_darwin(v5);
  v107 = &v72 - v7;
  v102 = sub_1001F1160(&qword_100AD81B0, &unk_100815420);
  v103 = *(v102 - 8);
  __chkstk_darwin(v102);
  v100 = &v72 - v8;
  v104 = sub_1001F1160(&qword_100AE1558, &qword_100822618);
  v105 = *(v104 - 8);
  __chkstk_darwin(v104);
  v101 = &v72 - v9;
  v96 = sub_1001F1160(&qword_100AD8228, &unk_10081F2B0);
  v97 = *(v96 - 8);
  __chkstk_darwin(v96);
  v94 = &v72 - v10;
  v98 = sub_1001F1160(&qword_100AD8230, &qword_1008154A0);
  v99 = *(v98 - 8);
  __chkstk_darwin(v98);
  v95 = &v72 - v11;
  v85 = sub_1001F1160(&unk_100AE1530, &unk_10081F270);
  v87 = *(v85 - 8);
  __chkstk_darwin(v85);
  v80 = &v72 - v12;
  v91 = sub_1001F1160(&qword_100AD8200, &qword_100815470);
  v92 = *(v91 - 8);
  __chkstk_darwin(v91);
  v81 = &v72 - v13;
  v75 = sub_1001F1160(&qword_100AE5DD0, &qword_1008291A0);
  v76 = *(v75 - 8);
  __chkstk_darwin(v75);
  v73 = &v72 - v14;
  v77 = sub_1001F1160(&qword_100AE5DD8, &unk_1008291A8);
  v78 = *(v77 - 8);
  __chkstk_darwin(v77);
  v74 = &v72 - v15;
  v16 = sub_1001F1160(&qword_100AD7EB0, &qword_10080EFD0);
  __chkstk_darwin(v16 - 8);
  v18 = &v72 - v17;
  v19 = sub_1001F1160(&qword_100AE5DE0, &qword_1008291B8);
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v72 - v21;
  v113 = sub_1001F1160(&qword_100AE5DE8, &unk_1008291C0);
  v118 = *(v113 - 8);
  __chkstk_darwin(v113);
  v24 = &v72 - v23;
  v121 = a1;
  swift_beginAccess();
  v93 = sub_1001F1160(&qword_100AE3D00, &qword_100838CA0);
  sub_10079B974();
  swift_endAccess();
  v120 = sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
  v25 = sub_1007A2D74();
  v123 = v25;
  v119 = sub_1007A2D24();
  v26 = *(v119 - 8);
  v27 = *(v26 + 56);
  v122 = v26 + 56;
  v27(v18, 1, 1, v119);
  v116 = v27;
  v117 = &protocol conformance descriptor for Published<A>.Publisher;
  v90 = sub_100005920(&qword_100AE5DF0, &qword_100AE5DE0, &qword_1008291B8, &protocol conformance descriptor for Published<A>.Publisher);
  v28 = sub_100017E1C();
  v83 = v19;
  v114 = v28;
  v82 = v22;
  sub_10079BAB4();
  sub_100007840(v18, &qword_100AD7EB0, &qword_10080EFD0);

  v29 = *(v20 + 8);
  v88 = v20 + 8;
  v89 = v29;
  v29(v22, v19);
  swift_allocObject();
  swift_unknownObjectUnownedInit();
  v115 = &protocol conformance descriptor for Publishers.ReceiveOn<A, B>;
  v86 = sub_100005920(&qword_100AE5DF8, &qword_100AE5DE8, &unk_1008291C0, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v30 = v113;
  v79 = v24;
  sub_10079BB04();

  v31 = *(v118 + 8);
  v118 += 8;
  v84 = v31;
  v31(v24, v30);
  v32 = OBJC_IVAR____TtC5Books25BuyButtonUIViewController_cancellables;
  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  swift_beginAccess();
  sub_1001F1160(&qword_100AE3D08, &unk_1008291D0);
  v33 = v73;
  sub_10079B974();
  swift_endAccess();
  v34 = sub_1007A2D74();
  v123 = v34;
  v27(v18, 1, 1, v119);
  sub_100005920(&qword_100AE5E00, &qword_100AE5DD0, &qword_1008291A0, &protocol conformance descriptor for Published<A>.Publisher);
  v35 = v74;
  v36 = v75;
  sub_10079BAB4();
  sub_100007840(v18, &qword_100AD7EB0, &qword_10080EFD0);

  (*(v76 + 8))(v33, v36);
  swift_allocObject();
  swift_unknownObjectUnownedInit();
  v37 = v115;
  sub_100005920(&qword_100AE5E08, &qword_100AE5DD8, &unk_1008291A8, v115);
  v38 = v77;
  sub_10079BB04();

  (*(v78 + 8))(v35, v38);
  v112 = v32;
  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  swift_beginAccess();
  sub_1001F1160(&qword_100AD50E0, &qword_10080FBE0);
  v39 = v80;
  sub_10079B974();
  swift_endAccess();
  v40 = sub_1007A2D74();
  v123 = v40;
  v41 = v119;
  v116(v18, 1, 1, v119);
  v42 = v117;
  sub_100005920(&qword_100AD82D0, &unk_100AE1530, &unk_10081F270, v117);
  v43 = v81;
  v44 = v85;
  sub_10079BAB4();
  sub_100007840(v18, &qword_100AD7EB0, &qword_10080EFD0);

  (*(v87 + 8))(v39, v44);
  swift_allocObject();
  swift_unknownObjectUnownedInit();
  sub_100005920(&qword_100AD82D8, &qword_100AD8200, &qword_100815470, v37);
  v45 = v91;
  sub_10079BB04();

  (*(v92 + 8))(v43, v45);
  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  swift_beginAccess();
  sub_1001F1160(&unk_100AD5110, &unk_10080FC10);
  v46 = v94;
  sub_10079B974();
  swift_endAccess();
  v47 = sub_1007A2D74();
  v123 = v47;
  v48 = v41;
  v49 = v116;
  v116(v18, 1, 1, v48);
  sub_100005920(&unk_100ADF110, &qword_100AD8228, &unk_10081F2B0, v42);
  v50 = v95;
  v51 = v96;
  sub_10079BAB4();
  sub_100007840(v18, &qword_100AD7EB0, &qword_10080EFD0);

  (*(v97 + 8))(v46, v51);
  swift_allocObject();
  swift_unknownObjectUnownedInit();
  sub_100005920(&unk_100AD82A0, &qword_100AD8230, &qword_1008154A0, v115);
  v52 = v98;
  sub_10079BB04();

  (*(v99 + 8))(v50, v52);
  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  swift_beginAccess();
  v53 = v82;
  sub_10079B974();
  swift_endAccess();
  v54 = sub_1007A2D74();
  v123 = v54;
  v55 = v119;
  v49(v18, 1, 1, v119);
  v56 = v49;
  v57 = v79;
  v58 = v83;
  sub_10079BAB4();
  sub_100007840(v18, &qword_100AD7EB0, &qword_10080EFD0);

  v89(v53, v58);
  swift_allocObject();
  swift_unknownObjectUnownedInit();
  v59 = v113;
  sub_10079BB04();

  v84(v57, v59);
  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  swift_beginAccess();
  sub_1001F1160(&unk_100ADF120, &qword_100822620);
  v60 = v100;
  sub_10079B974();
  swift_endAccess();
  v61 = sub_1007A2D74();
  v123 = v61;
  v56(v18, 1, 1, v55);
  sub_100005920(&unk_100AD8320, &qword_100AD81B0, &unk_100815420, v117);
  v62 = v101;
  v63 = v102;
  sub_10079BAB4();
  sub_100007840(v18, &qword_100AD7EB0, &qword_10080EFD0);

  (*(v103 + 8))(v60, v63);
  swift_allocObject();
  swift_unknownObjectUnownedInit();
  v64 = v115;
  sub_100005920(&qword_100AE1568, &qword_100AE1558, &qword_100822618, v115);
  v65 = v104;
  sub_10079BB04();

  (*(v105 + 8))(v62, v65);
  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  swift_beginAccess();
  sub_1001F1160(&qword_100AE5E10, &qword_1008291E0);
  v66 = v106;
  sub_10079B974();
  swift_endAccess();
  v67 = sub_1007A2D74();
  v123 = v67;
  v116(v18, 1, 1, v119);
  sub_100005920(&qword_100AE5E18, &qword_100AE5DC0, &qword_100829190, v117);
  v68 = v107;
  v69 = v108;
  sub_10079BAB4();
  sub_100007840(v18, &qword_100AD7EB0, &qword_10080EFD0);

  (*(v109 + 8))(v66, v69);
  swift_allocObject();
  swift_unknownObjectUnownedInit();
  sub_100005920(&qword_100AE5E20, &qword_100AE5DC8, &qword_100829198, v64);
  v70 = v110;
  sub_10079BB04();

  (*(v111 + 8))(v68, v70);
  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  return result;
}

id sub_10049D95C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BuyButtonUIViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10049DA20(double *a1, uint64_t a2)
{
  v2 = *a1;
  Strong = swift_unknownObjectUnownedLoadStrong();
  v6 = [Strong view];

  if (v6)
  {
    type metadata accessor for BuyButtonUIView();
    v4 = swift_dynamicCastClass();
    if (v4)
    {
      *&v5 = v2;
      [*(v4 + OBJC_IVAR____TtC5Books15BuyButtonUIView_radialProgress) setProgress:v5];
    }
  }
}

void sub_10049DAE0(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  Strong = swift_unknownObjectUnownedLoadStrong();
  v8 = [Strong view];

  if (v8)
  {
    type metadata accessor for BuyButtonUIView();
    v4 = swift_dynamicCastClass();
    if (v4)
    {
      v5 = v4;
      v6 = swift_unknownObjectUnownedLoadStrong();
      if (v2)
      {
        v7 = [v5 isUserInteractionEnabled];
      }

      else
      {
        v7 = 0;
      }

      v6[OBJC_IVAR____TtC5Books25BuyButtonUIViewController_buttonEnabled] = v7;

      [*&v5[OBJC_IVAR____TtC5Books15BuyButtonUIView_button] setUserInteractionEnabled:v2];
    }
  }
}

void sub_10049DBE0(uint64_t *a1, uint64_t a2)
{
  v2 = a1[1];
  Strong = swift_unknownObjectUnownedLoadStrong();
  v4 = [Strong view];

  if (v4)
  {
    type metadata accessor for BuyButtonUIView();
    v5 = swift_dynamicCastClass();
    if (v5)
    {
      v6 = v5;
      if (v2)
      {
        v7 = objc_opt_self();
        v8 = sub_1007A2214();
        v15 = [v7 __systemImageNamedSwift:v8];

        v9 = v15;
      }

      else
      {
        v9 = 0;
      }

      v16 = v9;
      [*(v6 + OBJC_IVAR____TtC5Books15BuyButtonUIView_button) setImage:? forState:?];
      v11 = swift_unknownObjectUnownedLoadStrong();
      v12 = [v11 parentViewController];
      if (v12)
      {
        v13 = v12;
        v14 = [v12 view];

        if (!v14)
        {
          __break(1u);
          return;
        }

        [v14 setNeedsLayout];
      }

      v10 = v16;
    }

    else
    {
      v10 = v4;
    }
  }
}

void sub_10049DD80(uint64_t *a1, uint64_t a2)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v5 = [Strong view];

  if (v5)
  {
    type metadata accessor for BuyButtonUIView();
    v3 = swift_dynamicCastClass();
    if (v3)
    {
      v4 = *(v3 + OBJC_IVAR____TtC5Books15BuyButtonUIView_button);

      sub_10000A7C4(0, &qword_100AEEF60, UIColor_ptr);

      v5 = sub_1007A3144();
      [v4 setTitleColor:? forState:?];
    }
  }
}

void sub_10049DE90(uint64_t *a1, uint64_t a2)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v17 = [Strong view];

  if (v17)
  {
    type metadata accessor for BuyButtonUIView();
    v3 = swift_dynamicCastClass();
    if (v3)
    {
      v4 = v3;
      sub_1001F1160(&qword_100AE5E28, &qword_1008291E8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10080B690;
      *(inited + 32) = NSFontAttributeName;
      v6 = UIContentSizeCategoryAccessibilityExtraExtraExtraLarge;
      v7 = NSFontAttributeName;
      *(inited + 40) = sub_10069D3B8(UIFontTextStyleCallout, v6);
      v8 = sub_1001EEC00(inited);
      swift_setDeallocating();
      sub_100007840(inited + 32, &qword_100AE5E30, &qword_1008291F0);

      sub_10058190C(v8);

      v9 = objc_allocWithZone(NSAttributedString);
      v10 = sub_1007A2214();

      type metadata accessor for Key(0);
      sub_100282B6C();
      isa = sub_1007A2024().super.isa;

      v12 = [v9 initWithString:v10 attributes:isa];

      [*(v4 + OBJC_IVAR____TtC5Books15BuyButtonUIView_button) setAttributedTitle:v12 forState:0];
      v13 = swift_unknownObjectUnownedLoadStrong();
      v14 = [v13 parentViewController];
      if (v14)
      {
        v15 = v14;
        v16 = [v14 view];

        if (!v16)
        {
          __break(1u);
          return;
        }

        [v16 setNeedsLayout];
      }
    }

    else
    {
    }
  }
}

void sub_10049E14C(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  Strong = swift_unknownObjectUnownedLoadStrong();
  v15 = [Strong view];

  if (v15)
  {
    type metadata accessor for BuyButtonUIView();
    v4 = swift_dynamicCastClass();
    if (v4)
    {
      if (v2)
      {
        v5 = 0.0;
      }

      else
      {
        v5 = 1.0;
      }

      v6 = v4;
      [*(v4 + OBJC_IVAR____TtC5Books15BuyButtonUIView_button) setAlpha:v5];
      v7 = OBJC_IVAR____TtC5Books15BuyButtonUIView_radialProgress;
      v8 = v2 != 2;
      if (v2 == 2)
      {
        v9 = 1.0;
      }

      else
      {
        v9 = 0.0;
      }

      [*(v6 + OBJC_IVAR____TtC5Books15BuyButtonUIView_radialProgress) setAlpha:v9];
      [*(v6 + v7) setIsAccessibilityElement:v2 != 2];
      v10 = *(v6 + OBJC_IVAR____TtC5Books15BuyButtonUIView_spinner);
      v11 = v10;
      if (v2 == 1)
      {
        v12 = 1.0;
      }

      else
      {
        v12 = 0.0;
      }

      if (v2 == 1)
      {
        v13 = &selRef_startAnimating;
      }

      else
      {
        v13 = &selRef_stopAnimating;
      }

      [v10 setAlpha:v12];
      [v11 setIsAccessibilityElement:v8];
      [v11 *v13];

      v14 = v11;
    }

    else
    {
      v14 = v15;
    }
  }
}

uint64_t sub_10049E2D8()
{
  sub_10049E410(v0 + OBJC_IVAR____TtC5Books25BuyButtonUIViewController_eventHandler, v3);
  if (!v4)
  {
    return sub_100007840(v3, &qword_100AE5DB8, &qword_100829188);
  }

  sub_100009864(v3, v2);
  sub_100007840(v3, &qword_100AE5DB8, &qword_100829188);
  sub_10000E3E8(v2, v2[3]);
  swift_unknownObjectRetain();
  sub_1005354F4();
  swift_unknownObjectRelease();
  return sub_1000074E0(v2);
}

uint64_t sub_10049E410(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&qword_100AE5DB8, &qword_100829188);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_10049E4E8(uint64_t a1)
{
  v95 = sub_100796CF4();
  v1 = *(v95 - 8);
  __chkstk_darwin(v95);
  v94 = &v77 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v93 = &v77 - v4;
  v92 = sub_1007A21D4();
  v5 = *(v92 - 8);
  __chkstk_darwin(v92);
  v91 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v90 = &v77 - v8;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(v107);

  v9 = *&v107[0];
  v10 = *(*&v107[0] + 16);
  if (v10)
  {
    v11 = 0;
    v89 = (v5 + 16);
    v88 = (v1 + 16);
    v87 = (v1 + 8);
    v86 = (v5 + 8);
    v12 = *&v107[0] + 32;
    v97 = v10 - 1;
    v85 = xmmword_100811390;
    v13 = _swiftEmptyArrayStorage;
    v99 = *&v107[0];
    v98 = *&v107[0] + 32;
    do
    {
      v14 = *(v9 + 16);
      v15 = v12 + 72 * v11;
      v16 = v11;
      while (1)
      {
        if (v16 >= v14)
        {
          __break(1u);
LABEL_48:
          __break(1u);
          goto LABEL_49;
        }

        v17 = *(v15 + 16);
        v18 = *(v15 + 32);
        v19 = *(v15 + 48);
        *&v108[15] = *(v15 + 63);
        v20 = *v15;
        v107[2] = v18;
        *v108 = v19;
        v107[0] = v20;
        v107[1] = v17;
        if (v108[18] >> 6 == 1)
        {
          v100 = v13;
          sub_1001F1160(&unk_100AD8160, &unk_100813160);
          v84 = swift_allocObject();
          *(v84 + 16) = v85;
          v96 = sub_10000A7C4(0, &qword_100AECAB0, UICommand_ptr);

          v43 = v90;
          sub_1007A2154();
          v44 = v93;
          sub_100796C94();
          v45 = v91;
          v46 = v92;
          (*v89)(v91, v43, v92);
          type metadata accessor for BundleFinder();
          ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
          v48 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
          v49 = v94;
          v50 = v95;
          (*v88)(v94, v44, v95);
          v51 = v49;
          v52 = v84;
          sub_1007A22D4(v45, 0, 0, v48, v51, "Search tab/sidebar item", 23, 2);
          (*v87)(v44, v50);
          (*v86)(v43, v46);
          swift_bridgeObjectRelease_n();
          v103 = 0u;
          v104 = 0u;
          v52[4] = sub_1007A3414();
          sub_10049F8FC(v107);
          goto LABEL_41;
        }

        if (!(v108[18] >> 6))
        {
          break;
        }

        ++v16;
        v15 += 72;
        if (v10 == v16)
        {
          goto LABEL_46;
        }
      }

      v100 = v13;
      v21 = *(&v107[0] + 1);
      v22 = *(*(&v107[0] + 1) + 16);

      v23 = 0;
      v24 = _swiftEmptyArrayStorage;
LABEL_10:
      v25 = v21 + 72 * v23;
      while (v22 != v23)
      {
        if (v23 >= *(v21 + 16))
        {
          goto LABEL_48;
        }

        ++v23;
        v26 = (v25 + 72);
        v27 = *(v25 + 96) | (*(v25 + 98) << 16);
        v25 += 72;
        if ((v27 & 0xC00000) == 0x800000)
        {
          v28 = *(v26 - 5);
          v29 = *(v26 - 4);
          v30 = *(v26 - 3);
          v31 = *(v26 - 2);
          v32 = *(v26 - 1);
          v33 = *v26;
          v35 = v26[1];
          v34 = v26[2];
          v96 = v28;
          *&v103 = v28;
          *(&v103 + 1) = v29;
          v84 = v29;
          v83 = v30;
          *&v104 = v30;
          *(&v104 + 1) = v31;
          v82 = v31;
          v81 = v32;
          *&v105 = v32;
          *(&v105 + 1) = v33;
          v80 = v33;
          v79 = v35;
          *v106 = v35;
          *&v106[8] = v34;
          v78 = v34;
          v106[18] = BYTE2(v27) & 0x3F;
          *&v106[16] = v27;
          sub_10049F950(&v103, v102);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v24 = sub_10066BE14(0, *(v24 + 2) + 1, 1, v24);
          }

          v37 = *(v24 + 2);
          v36 = *(v24 + 3);
          if (v37 >= v36 >> 1)
          {
            v24 = sub_10066BE14((v36 > 1), v37 + 1, 1, v24);
          }

          *(v24 + 2) = v37 + 1;
          v38 = &v24[72 * v37];
          v39 = v84;
          *(v38 + 4) = v96;
          *(v38 + 5) = v39;
          v40 = v82;
          *(v38 + 6) = v83;
          *(v38 + 7) = v40;
          v41 = v80;
          *(v38 + 8) = v81;
          *(v38 + 9) = v41;
          v42 = v78;
          *(v38 + 10) = v79;
          *(v38 + 11) = v42;
          v38[98] = (v27 & 0x3FFFFFu) >> 16;
          *(v38 + 48) = v27;
          goto LABEL_10;
        }
      }

      v53 = *(v24 + 2);
      if (v53)
      {
        v54 = 0;
        v55 = v24 + 32;
        v84 = v53 - 1;
        v56 = _swiftEmptyArrayStorage;
LABEL_22:
        v96 = v56;
        v57 = &v55[72 * v54];
        v58 = v54;
        while (v58 < *(v24 + 2))
        {
          v103 = *v57;
          v61 = *(v57 + 1);
          v62 = *(v57 + 2);
          v63 = *(v57 + 3);
          *&v106[15] = *(v57 + 63);
          v105 = v62;
          *v106 = v63;
          v104 = v61;
          if (v103 != __PAIR128__(0xED00006E6F697463, 0x656C6C6F4377656ELL))
          {
            v59 = v55;
            v60 = sub_1007A3AB4();
            v55 = v59;
            if ((v60 & 1) == 0)
            {
              sub_10049F950(&v103, v102);
              v56 = v96;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v101 = v56;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_1003BD728(0, v56[2] + 1, 1);
                v56 = v101;
              }

              v66 = v56[2];
              v65 = v56[3];
              if (v66 >= v65 >> 1)
              {
                sub_1003BD728((v65 > 1), v66 + 1, 1);
                v56 = v101;
              }

              v54 = v58 + 1;
              v56[2] = v66 + 1;
              v67 = &v56[9 * v66];
              *(v67 + 2) = v103;
              v68 = v104;
              v69 = v105;
              v70 = *v106;
              *(v67 + 95) = *&v106[15];
              *(v67 + 4) = v69;
              *(v67 + 5) = v70;
              *(v67 + 3) = v68;
              v55 = v59;
              if (v84 != v58)
              {
                goto LABEL_22;
              }

              goto LABEL_36;
            }
          }

          ++v58;
          v57 += 72;
          if (v53 == v58)
          {
            v56 = v96;
            goto LABEL_36;
          }
        }

LABEL_49:
        __break(1u);
        return;
      }

      v56 = _swiftEmptyArrayStorage;
LABEL_36:

      v71 = v56[2];
      if (v71)
      {
        v102[0] = _swiftEmptyArrayStorage;
        sub_1007A37F4();
        sub_10000A7C4(0, &qword_100AECAB0, UICommand_ptr);
        v96 = v56;
        v72 = v56 + 7;
        do
        {
          v74 = *(v72 - 3);
          v73 = *(v72 - 2);
          *(&v104 + 1) = &type metadata for String;
          *&v103 = v74;
          *(&v103 + 1) = v73;

          sub_1007A3414();
          sub_1007A37D4();
          sub_1007A3804();
          sub_1007A3814();
          sub_1007A37E4();
          v72 += 9;
          --v71;
        }

        while (v71);

        sub_10049F8FC(v107);
        v52 = v102[0];
      }

      else
      {

        sub_10049F8FC(v107);
        v52 = _swiftEmptyArrayStorage;
      }

LABEL_41:
      v13 = v100;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_10066BDF0(0, v13[2] + 1, 1, v13);
      }

      v76 = v13[2];
      v75 = v13[3];
      if (v76 >= v75 >> 1)
      {
        v13 = sub_10066BDF0((v75 > 1), v76 + 1, 1, v13);
      }

      v11 = v16 + 1;
      v13[2] = v76 + 1;
      v13[v76 + 4] = v52;
      v9 = v99;
      v12 = v98;
    }

    while (v97 != v16);
  }

LABEL_46:
}

void *sub_10049EF10(uint64_t a1, uint64_t a2)
{
  sub_10049E4E8(a1);
  v4 = v3;
  v5 = *(a2 + 16);
  if (v5)
  {
    sub_1007A37F4();
    sub_10000A7C4(0, &qword_100AECAB0, UICommand_ptr);
    v6 = a2 + 56;
    do
    {

      v14._rawValue = 0;
      sub_1007A3414();
      sub_1007A37D4();
      sub_1007A3804();
      sub_1007A3814();
      sub_1007A37E4();
      v6 += 32;
      --v5;
    }

    while (v5);
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_10066BDF0(0, v4[2] + 1, 1, v4);
  }

  v8 = v4[2];
  v7 = v4[3];
  v9 = v8 + 1;
  if (v8 >= v7 >> 1)
  {
    v4 = sub_10066BDF0((v7 > 1), v8 + 1, 1, v4);
  }

  v4[2] = v9;
  v4[v8 + 4] = _swiftEmptyArrayStorage;
  sub_1007A37F4();
  sub_10000A7C4(0, &qword_100AD8170, UIMenu_ptr);
  v10 = 32;
  do
  {

    v16._countAndFlagsBits = 0;
    v16._object = 0xE000000000000000;
    v17.value._countAndFlagsBits = 0;
    v17.value._object = 0;
    v15.value.super.isa = 0;
    v15.is_nil = 0;
    v11.value = 1;
    sub_1007A30C4(v16, v17, v15, v11, 0xFFFFFFFFFFFFFFFFLL, v13, v14);
    sub_1007A37D4();
    sub_1007A3804();
    sub_1007A3814();
    sub_1007A37E4();
    v10 += 8;
    --v9;
  }

  while (v9);

  return _swiftEmptyArrayStorage;
}

void sub_10049F170(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_10000A7C4(0, &qword_100AD8170, UIMenu_ptr);
  sub_1001F1160(&unk_100AD8160, &unk_100813160);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10081F7C0;
  sub_10000A7C4(0, &qword_100ADA970, UIKeyCommand_ptr);
  *(v5 + 32) = sub_1007A2964();
  sub_10000A7C4(0, &qword_100AECAB0, UICommand_ptr);
  *(v5 + 40) = sub_1007A3414();
  *(v5 + 48) = sub_1007A3414();
  *(v5 + 56) = sub_1007A2964();
  *(v5 + 64) = sub_1007A3414();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100811370;
  *(v6 + 32) = sub_1007A3414();
  *(v6 + 40) = sub_1007A3414();
  *(v6 + 48) = sub_1007A3414();
  v34._countAndFlagsBits = 0xD000000000000023;
  v34._object = 0x80000001008D79F0;
  v40.value._countAndFlagsBits = 0;
  v40.value._object = 0;
  v28.value.super.isa = 0;
  v28.is_nil = 0;
  v7.value = 0;
  *(v5 + 72) = sub_1007A30C4(v34, v40, v28, v7, 0xFFFFFFFFFFFFFFFFLL, v6, 0);
  *(v5 + 80) = sub_1007A3414();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100811390;
  v19 = sub_10049EF10(a2, a3);
  v35._countAndFlagsBits = 0xD000000000000019;
  v35._object = 0x80000001008D7A60;
  v41.value._countAndFlagsBits = 0;
  v41.value._object = 0;
  v29.value.super.isa = 0;
  v29.is_nil = 0;
  v9.value = 0;
  *(v8 + 32) = sub_1007A30C4(v35, v41, v29, v9, 0xFFFFFFFFFFFFFFFFLL, v19, 0);
  v36._countAndFlagsBits = 0;
  v36._object = 0xE000000000000000;
  v42.value._countAndFlagsBits = 0;
  v42.value._object = 0;
  v30.value.super.isa = 0;
  v30.is_nil = 0;
  v10.value = 1;
  *(v5 + 88) = sub_1007A30C4(v36, v42, v30, v10, 0xFFFFFFFFFFFFFFFFLL, v8, v20);
  v11 = *(a4 + 16);
  if (v11)
  {
    sub_1007A37F4();
    v12 = (a4 + 40);
    do
    {
      v13 = *v12;
      v12 += 2;
      if (v13)
      {
        swift_bridgeObjectRetain_n();
        v21.super.super.isa = 0;
        sub_1007A3414();
      }

      else
      {
        sub_10000A7C4(0, &qword_100AD8390, UIAction_ptr);
        v21.super.super.isa = 1;
        sub_1007A31D4();
      }

      sub_1007A37D4();
      sub_1007A3804();
      sub_1007A3814();
      sub_1007A37E4();
      --v11;
    }

    while (v11);
    v14 = a1;
  }

  else
  {
    v14 = a1;
  }

  v37._object = 0x80000001008D7AA0;
  v37._countAndFlagsBits = 0xD000000000000012;
  v43.value._countAndFlagsBits = 0;
  v43.value._object = 0;
  v31.value.super.isa = 0;
  v31.is_nil = 0;
  v15.value = 0;
  *(v5 + 96) = sub_1007A30C4(v37, v43, v31, v15, 0xFFFFFFFFFFFFFFFFLL, _swiftEmptyArrayStorage, v21.super.super.isa);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_100811390;
  *(v16 + 32) = sub_1007A3414();
  v38._countAndFlagsBits = 5525584;
  v38._object = 0xE300000000000000;
  v44.value._countAndFlagsBits = 0;
  v44.value._object = 0;
  v32.value.super.isa = 0;
  v32.is_nil = 0;
  v17.value = 0;
  *(v5 + 104) = sub_1007A30C4(v38, v44, v32, v17, 0xFFFFFFFFFFFFFFFFLL, v16, 0);
  v39._countAndFlagsBits = 0x6C616E7265746E49;
  v39._object = 0xE800000000000000;
  v45.value._countAndFlagsBits = 0;
  v45.value._object = 0;
  v33.value.super.isa = 0;
  v33.is_nil = 0;
  v18.value = 0;
  isa = sub_1007A30C4(v39, v45, v33, v18, 0xFFFFFFFFFFFFFFFFLL, v5, v22).super.super.isa;
  [v14 insertSiblingMenu:isa afterMenuForIdentifier:UIMenuHelp];
}

void sub_10049F9E4(double a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock((v3 + 24));
  v4 = [*(v3 + 16) allObjects];
  sub_1001F1160(&qword_100AE1B70, &unk_100822B10);
  v5 = sub_1007A25E4();

  os_unfair_lock_unlock((v3 + 24));
  if (v5 >> 62)
  {
    v6 = sub_1007A38D4();
    if (!v6)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      goto LABEL_10;
    }
  }

  if (v6 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v6; ++i)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v8 = sub_1007A3784();
    }

    else
    {
      v8 = *(v5 + 8 * i + 32);
      swift_unknownObjectRetain();
    }

    [v8 audiobookBuyButtonProgressDidChangeTo:a1];
    swift_unknownObjectRelease();
  }

LABEL_10:
}

void sub_10049FB1C(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock((v3 + 24));
  v4 = [*(v3 + 16) allObjects];
  sub_1001F1160(&qword_100AE1B70, &unk_100822B10);
  v5 = sub_1007A25E4();

  os_unfair_lock_unlock((v3 + 24));
  if (v5 >> 62)
  {
    v6 = sub_1007A38D4();
    if (!v6)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      goto LABEL_10;
    }
  }

  if (v6 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v6; ++i)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v8 = sub_1007A3784();
    }

    else
    {
      v8 = *(v5 + 8 * i + 32);
      swift_unknownObjectRetain();
    }

    [v8 audiobookCoverWillChangeTo:a1];
    swift_unknownObjectRelease();
  }

LABEL_10:
}

void sub_10049FC6C(char a1, SEL *a2)
{
  v5 = *(v2 + 16);
  os_unfair_lock_lock((v5 + 24));
  v6 = [*(v5 + 16) allObjects];
  sub_1001F1160(&qword_100AE1B70, &unk_100822B10);
  v7 = sub_1007A25E4();

  os_unfair_lock_unlock((v5 + 24));
  if (v7 >> 62)
  {
    v8 = sub_1007A38D4();
    if (!v8)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v8)
    {
      goto LABEL_10;
    }
  }

  if (v8 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v8; ++i)
  {
    if ((v7 & 0xC000000000000001) != 0)
    {
      v10 = sub_1007A3784();
    }

    else
    {
      v10 = *(v7 + 8 * i + 32);
      swift_unknownObjectRetain();
    }

    [v10 *a2];
    swift_unknownObjectRelease();
  }

LABEL_10:
}

void sub_10049FDA4(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 16);
  os_unfair_lock_lock((v4 + 24));
  v5 = [*(v4 + 16) allObjects];
  sub_1001F1160(&qword_100AE1B70, &unk_100822B10);
  v6 = sub_1007A25E4();

  os_unfair_lock_unlock((v4 + 24));
  if (v6 >> 62)
  {
    v7 = sub_1007A38D4();
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_13:

    return;
  }

  v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v7)
  {
    goto LABEL_13;
  }

LABEL_3:
  if (v7 >= 1)
  {
    v8 = 0;
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v10 = sub_1007A3784();
        if (!a2)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v10 = *(v6 + 8 * v8 + 32);
        swift_unknownObjectRetain();
        if (!a2)
        {
LABEL_11:
          v9 = 0;
          goto LABEL_6;
        }
      }

      v9 = sub_1007A2214();
LABEL_6:
      ++v8;
      [v10 audiobookStoreIDDidChangeTo:v9];
      swift_unknownObjectRelease();

      if (v7 == v8)
      {
        goto LABEL_13;
      }
    }
  }

  __break(1u);
}

void _s5Books26UserCollectionReorderEventV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2, __n128 a3)
{
  v3 = *(a1 + 16);
  if (v3 == *(a2 + 16) && v3 && a1 != a2)
  {
    for (i = 0; ; i += 48)
    {
      v5 = *(a1 + i + 48);
      v6 = *(a1 + i + 56);
      v17 = *(a1 + i + 64);
      v7 = *(a1 + i + 72);
      v8 = *(a2 + i + 48);
      v9 = *(a2 + i + 56);
      v20 = *(a2 + i + 64);
      v10 = *(a2 + i + 72);
      v11 = *(a1 + i + 32) == *(a2 + i + 32) && *(a1 + i + 40) == *(a2 + i + 40);
      if (!v11 && (sub_1007A3AB4() & 1) == 0)
      {
        return;
      }

      v12 = v5 == v8 && v6 == v9;
      if (!v12 && (sub_1007A3AB4() & 1) == 0)
      {
        return;
      }

      if (v7 == 253)
      {
        if (v10 != 253)
        {
          return;
        }

        goto LABEL_6;
      }

      if (v7 == 254)
      {
        break;
      }

      if (v7 == 255)
      {
        if (v10 != 255)
        {
          return;
        }

        goto LABEL_6;
      }

      if (v10 > 0xFC)
      {
        return;
      }

      if (v7)
      {
        if ((v10 & 1) == 0)
        {
          return;
        }

        v13 = v20;
        sub_1004A30D0(v20, v10);

        v14 = v17;
        sub_1004A30D0(v17, v7);
        v15 = sub_1004A03D0(v17, v20);
      }

      else
      {
        if (v10)
        {
          return;
        }

        v13 = v20;
        sub_1004A30D0(v20, v10);

        v14 = v17;
        sub_1004A30D0(v17, v7);
        v15 = sub_1004A0190(v17, v20);
      }

      v16 = v15;

      sub_1004A3B7C(v13, v10);

      sub_1004A3B7C(v14, v7);
      if ((v16 & 1) == 0)
      {
        return;
      }

LABEL_7:
      if (!--v3)
      {
        return;
      }
    }

    if (v10 != 254)
    {
      return;
    }

LABEL_6:
    sub_1004A30D0(v20, v7);
    goto LABEL_7;
  }
}

uint64_t sub_1004A0190(unint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      v18 = 1;
      return v18 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v4 = sub_10079E794();
    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v13 = v12 - 4;
        v14 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v15 = sub_1007A3784();
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v13 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v15 = *(v3 + 8 * v12);
          if (!v11)
          {
LABEL_24:
            if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v16 = *(a2 + 8 * v12);
            goto LABEL_26;
          }
        }

        v16 = sub_1007A3784();
LABEL_26:
        v17 = v16;
        v18 = sub_1007A3184();

        if (v18)
        {
          ++v12;
          if (v14 != v5)
          {
            continue;
          }
        }

        return v18 & 1;
      }
    }

    v19 = (v3 + 32);
    v20 = (a2 + 32);
    v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = v5 - 1;
    while (1)
    {
      if (!v21)
      {
        goto LABEL_40;
      }

      if (!v22)
      {
        break;
      }

      v25 = *v19++;
      v24 = v25;
      v26 = *v20++;
      a2 = v24;
      v3 = v26;
      v18 = sub_1007A3184();

      v28 = v23-- != 0;
      if (v18)
      {
        --v22;
        --v21;
        if (v28)
        {
          continue;
        }
      }

      return v18 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = sub_1007A38D4();
  }

  result = sub_1007A38D4();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v18 = 0;
  return v18 & 1;
}

uint64_t sub_1004A03D0(unint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      v18 = 1;
      return v18 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v4 = sub_10000A7C4(0, &unk_100AE8D70, UIDragItem_ptr);
    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v13 = v12 - 4;
        v14 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v15 = sub_1007A3784();
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v13 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v15 = *(v3 + 8 * v12);
          if (!v11)
          {
LABEL_24:
            if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v16 = *(a2 + 8 * v12);
            goto LABEL_26;
          }
        }

        v16 = sub_1007A3784();
LABEL_26:
        v17 = v16;
        v18 = sub_1007A3184();

        if (v18)
        {
          ++v12;
          if (v14 != v5)
          {
            continue;
          }
        }

        return v18 & 1;
      }
    }

    v19 = (v3 + 32);
    v20 = (a2 + 32);
    v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = v5 - 1;
    while (1)
    {
      if (!v21)
      {
        goto LABEL_40;
      }

      if (!v22)
      {
        break;
      }

      v25 = *v19++;
      v24 = v25;
      v26 = *v20++;
      a2 = v24;
      v3 = v26;
      v18 = sub_1007A3184();

      v28 = v23-- != 0;
      if (v18)
      {
        --v22;
        --v21;
        if (v28)
        {
          continue;
        }
      }

      return v18 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = sub_1007A38D4();
  }

  result = sub_1007A38D4();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v18 = 0;
  return v18 & 1;
}

void sub_1004A0620(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16) || !v2 || result == a2)
  {
    return;
  }

  v3 = 0;
  v4 = result + 32;
  v5 = a2 + 32;
  while (1)
  {
    if (v3 == v2)
    {
      __break(1u);
      goto LABEL_149;
    }

    v6 = v4 + 24 * v3;
    v7 = *v6;
    v8 = *(v6 + 16);
    v9 = v5 + 24 * v3;
    v10 = *v9;
    v81 = *(v9 + 8);
    v82 = *(v6 + 8);
    v11 = *(v9 + 16);
    if (v8 <= 2)
    {
      if (*(v6 + 16))
      {
        if (v8 == 1)
        {
          if (v11 != 1)
          {
            return;
          }

          sub_10000A7C4(0, &qword_100ADAF70, NSObject_ptr);
          sub_1004A38E8(v10, v81, 1u);
          sub_1004A38E8(v7, v82, 1u);
          v12 = sub_1007A3184();
          sub_1004A392C(v10, v81, 1u);
          v13 = v7;
          v14 = v82;
          v15 = 1;
        }

        else
        {
          if (v11 != 2)
          {
            return;
          }

          sub_10000A7C4(0, &qword_100ADAF70, NSObject_ptr);
          sub_1004A38E8(v10, v81, 2u);
          sub_1004A38E8(v7, v82, 2u);
          v12 = sub_1007A3184();
          sub_1004A392C(v10, v81, 2u);
          v13 = v7;
          v14 = v82;
          v15 = 2;
        }

        sub_1004A392C(v13, v14, v15);
        if ((v12 & 1) == 0)
        {
          return;
        }
      }

      else
      {
        if (v11)
        {
          return;
        }

        v41 = v7 == v10 && v82 == v81;
        if (!v41 && (sub_1007A3AB4() & 1) == 0)
        {
          return;
        }
      }

      goto LABEL_6;
    }

    if (v8 == 3)
    {
      break;
    }

    if (v8 == 4)
    {
      if (v11 != 4)
      {
        return;
      }

      v16 = *(v7 + 16);
      if (v16 != *(v10 + 16))
      {
        return;
      }

      if (v16)
      {
        v17 = v7 == v10;
      }

      else
      {
        v17 = 1;
      }

      if (v17)
      {
        goto LABEL_6;
      }

      v18 = v10 + 32;
      sub_1004A38E8(v10, v81, 4u);
      sub_1004A38E8(v7, v82, 4u);
      v19 = v7 + 32;
      v20 = 0;
      v77 = v5;
      v79 = v4;
      v73 = v16;
      while (v20 < *(v7 + 16))
      {
        v75 = v19;
        sub_1003DEBC4(v19, &v97);
        if (v20 >= *(v10 + 16))
        {
          goto LABEL_152;
        }

        sub_1003DEBC4(v18, &v83);
        if (v97 != v83 || v98 != v84 || v99 != v85 || v100 != v86 || v101 != v87 || v102 != v88)
        {
          goto LABEL_145;
        }

        if (v103)
        {
          if (v103 != v89)
          {
            goto LABEL_145;
          }
        }

        else if (v89)
        {
          goto LABEL_145;
        }

        if (v104)
        {
          if (!v90 || (sub_100796E94() & 1) == 0)
          {
            goto LABEL_145;
          }
        }

        else if (v90)
        {
          goto LABEL_145;
        }

        if (v106)
        {
          if (!v92 || (v105 != v91 || v106 != v92) && (sub_1007A3AB4() & 1) == 0)
          {
            goto LABEL_145;
          }
        }

        else if (v92)
        {
          goto LABEL_145;
        }

        v21 = v107;
        v22 = v93;
        if (v107)
        {
          if (!v93)
          {
            goto LABEL_145;
          }

          sub_10000A7C4(0, &unk_100AE1400, NSAttributedString_ptr);
          v23 = v22;
          v24 = v21;
          v25 = sub_1007A3184();

          if ((v25 & 1) == 0)
          {
            goto LABEL_145;
          }
        }

        else if (v93)
        {
          goto LABEL_145;
        }

        v26 = v108;
        v27 = v94;
        if (v108)
        {
          if (!v94)
          {
            goto LABEL_145;
          }

          sub_10000A7C4(0, &qword_100ADDB48, UIImage_ptr);
          v28 = v27;
          v29 = v26;
          v30 = sub_1007A3184();

          if ((v30 & 1) == 0)
          {
            goto LABEL_145;
          }
        }

        else if (v94)
        {
          goto LABEL_145;
        }

        v31 = v109;
        v32 = v95;
        if (v109)
        {
          if (!v95)
          {
            goto LABEL_145;
          }

          sub_10000A7C4(0, &qword_100AD8170, UIMenu_ptr);
          v33 = v32;
          v34 = v31;
          v35 = sub_1007A3184();

          if ((v35 & 1) == 0)
          {
            goto LABEL_145;
          }
        }

        else if (v95)
        {
          goto LABEL_145;
        }

        v36 = v110;
        v37 = v96;
        v38 = v96 == 0;
        if (v110)
        {
          if (!v96)
          {
            goto LABEL_145;
          }

          sub_10000A7C4(0, &qword_100AE13F8, TUIAXAttributes_ptr);
          v39 = v37;
          v40 = v36;
          v38 = sub_1007A3184();
        }

        sub_1003DEBFC(&v83);
        sub_1003DEBFC(&v97);
        v5 = v77;
        v4 = v79;
        if ((v38 & 1) == 0)
        {
          goto LABEL_146;
        }

        ++v20;
        v19 = v75 + 120;
        v18 += 120;
        if (v73 == v20)
        {
          goto LABEL_125;
        }
      }

LABEL_149:
      __break(1u);
      goto LABEL_150;
    }

    if (v7 | v82)
    {
      if (v7 ^ 1 | v82)
      {
        if (v11 != 5)
        {
          return;
        }

        v69 = v10 == 2;
      }

      else
      {
        if (v11 != 5)
        {
          return;
        }

        v69 = v10 == 1;
      }

      if (!v69 || v81 != 0)
      {
        return;
      }
    }

    else if (v11 != 5 || (v81 | v10) != 0)
    {
      return;
    }

LABEL_6:
    if (++v3 == v2)
    {
      return;
    }
  }

  if (v11 != 3)
  {
    return;
  }

  v42 = *(v7 + 16);
  if (v42 != *(v10 + 16))
  {
    return;
  }

  if (v42)
  {
    v43 = v7 == v10;
  }

  else
  {
    v43 = 1;
  }

  if (v43)
  {
    goto LABEL_6;
  }

  v44 = (v10 + 32);
  sub_1004A38E8(v10, v81, 3u);
  sub_1004A38E8(v7, v82, 3u);
  v45 = v7 + 32;
  v46 = 0;
  v78 = v5;
  v80 = v4;
  v72 = v42;
  while (v46 < *(v7 + 16))
  {
    v47 = v44;
    v48 = v46;
    v76 = v45;
    sub_1003DEBC4(v45, &v97);
    v74 = v48;
    if (v48 >= *(v10 + 16))
    {
      goto LABEL_151;
    }

    sub_1003DEBC4(v47, &v83);
    if (v97 != v83 || v98 != v84 || v99 != v85 || v100 != v86 || v101 != v87 || v102 != v88)
    {
LABEL_145:
      sub_1003DEBFC(&v83);
      sub_1003DEBFC(&v97);
LABEL_146:
      sub_1004A392C(v10, v81, v8);
      sub_1004A392C(v7, v82, v8);
      return;
    }

    if (v103)
    {
      if (v103 != v89)
      {
        goto LABEL_145;
      }
    }

    else if (v89)
    {
      goto LABEL_145;
    }

    if (v104)
    {
      if (!v90 || (sub_100796E94() & 1) == 0)
      {
        goto LABEL_145;
      }
    }

    else if (v90)
    {
      goto LABEL_145;
    }

    if (v106)
    {
      if (!v92 || (v105 != v91 || v106 != v92) && (sub_1007A3AB4() & 1) == 0)
      {
        goto LABEL_145;
      }
    }

    else if (v92)
    {
      goto LABEL_145;
    }

    v49 = v107;
    v50 = v93;
    if (v107)
    {
      if (!v93)
      {
        goto LABEL_145;
      }

      sub_10000A7C4(0, &unk_100AE1400, NSAttributedString_ptr);
      v51 = v50;
      v52 = v49;
      v53 = sub_1007A3184();

      if ((v53 & 1) == 0)
      {
        goto LABEL_145;
      }
    }

    else if (v93)
    {
      goto LABEL_145;
    }

    v54 = v108;
    v55 = v94;
    if (v108)
    {
      if (!v94)
      {
        goto LABEL_145;
      }

      sub_10000A7C4(0, &qword_100ADDB48, UIImage_ptr);
      v56 = v55;
      v57 = v54;
      v58 = sub_1007A3184();

      if ((v58 & 1) == 0)
      {
        goto LABEL_145;
      }
    }

    else if (v94)
    {
      goto LABEL_145;
    }

    v59 = v109;
    v60 = v95;
    if (v109)
    {
      if (!v95)
      {
        goto LABEL_145;
      }

      sub_10000A7C4(0, &qword_100AD8170, UIMenu_ptr);
      v61 = v60;
      v62 = v59;
      v63 = sub_1007A3184();

      if ((v63 & 1) == 0)
      {
        goto LABEL_145;
      }
    }

    else if (v95)
    {
      goto LABEL_145;
    }

    v64 = v110;
    v65 = v96;
    v66 = v96 == 0;
    if (v110)
    {
      if (!v96)
      {
        goto LABEL_145;
      }

      sub_10000A7C4(0, &qword_100AE13F8, TUIAXAttributes_ptr);
      v67 = v65;
      v68 = v64;
      v66 = sub_1007A3184();
    }

    sub_1003DEBFC(&v83);
    sub_1003DEBFC(&v97);
    v5 = v78;
    v4 = v80;
    if ((v66 & 1) == 0)
    {
      goto LABEL_146;
    }

    v46 = v48 + 1;
    v45 = v76 + 120;
    v44 = (v47 + 120);
    if (v72 == v74 + 1)
    {
LABEL_125:
      sub_1004A392C(v10, v81, v8);
      sub_1004A392C(v7, v82, v8);
      goto LABEL_6;
    }
  }

LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
}

BOOL sub_1004A0F04(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    else
    {
      v3 = a1 + 32;
      v4 = a2 + 32;
      do
      {
        sub_1003DEBC4(v3, v8);
        sub_1003DEBC4(v4, v7);
        v5 = sub_1003DE754(v8, v7);
        sub_1003DEBFC(v7);
        sub_1003DEBFC(v8);
        if (!v5)
        {
          break;
        }

        v3 += 120;
        v4 += 120;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    return 0;
  }

  return v5;
}

uint64_t sub_1004A0FCC(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1004A1070(unint64_t a1, unint64_t a2)
{
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_32;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (a2 >> 62)
  {
    result = sub_1007A38D4();
    if (v5 == result)
    {
      goto LABEL_5;
    }

LABEL_34:
    v15 = 0;
    return v15 & 1;
  }

  result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 != result)
  {
    goto LABEL_34;
  }

LABEL_5:
  if (!v5)
  {
    goto LABEL_28;
  }

  v7 = a1 & 0xFFFFFFFFFFFFFF8;
  v8 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
  if ((a1 & 0x8000000000000000) != 0)
  {
    v7 = a1;
  }

  if (v4)
  {
    v8 = v7;
  }

  v9 = a2 & 0xFFFFFFFFFFFFFF8;
  v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
  if ((a2 & 0x8000000000000000) != 0)
  {
    v9 = a2;
  }

  if (a2 >> 62)
  {
    v10 = v9;
  }

  if (v8 == v10)
  {
LABEL_28:
    v15 = 1;
    return v15 & 1;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    v4 = sub_10079B884();
    v11 = a2 & 0xC000000000000001;
    v12 = 4;
    while (1)
    {
      v13 = v12 - 4;
      v14 = v12 - 3;
      if (__OFADD__(v12 - 4, 1))
      {
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        v5 = sub_1007A38D4();
        goto LABEL_3;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        sub_1007A3784();
        if (v11)
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v13 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_30;
        }

        if (v11)
        {
LABEL_20:
          sub_1007A3784();
          goto LABEL_25;
        }
      }

      if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_31;
      }

LABEL_25:
      sub_1004A3B34(&qword_100AD3710, &type metadata accessor for AnyCancellable, &protocol conformance descriptor for AnyCancellable);
      v15 = sub_1007A2124();

      if (v15)
      {
        ++v12;
        if (v14 != v5)
        {
          continue;
        }
      }

      return v15 & 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1004A1284(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 56);
    for (i = (a2 + 56); ; i += 4)
    {
      v5 = *(v3 - 1);
      v6 = *v3;
      v7 = *(i - 1);
      v8 = *i;
      v9 = *(v3 - 3) == *(i - 3) && *(v3 - 2) == *(i - 2);
      if (!v9 && (sub_1007A3AB4() & 1) == 0)
      {
        break;
      }

      v10 = v5 == v7 && v6 == v8;
      if (!v10 && (sub_1007A3AB4() & 1) == 0)
      {
        break;
      }

      v3 += 4;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1004A139C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v33 = a5;
  v34 = a6;
  v32 = a4;
  v8 = a3(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13.n128_f64[0] = __chkstk_darwin(v12);
  v15 = &v29 - v14;
  v16 = *(a1 + 16);
  if (v16 != *(a2 + 16))
  {
    v26 = 0;
    return v26 & 1;
  }

  if (!v16 || a1 == a2)
  {
    v26 = 1;
    return v26 & 1;
  }

  v17 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v18 = a1 + v17;
  v19 = a2 + v17;
  v21 = *(v9 + 16);
  v20 = v9 + 16;
  v22 = (v20 - 8);
  v30 = *(v20 + 56);
  v31 = v21;
  while (1)
  {
    v23 = v31;
    result = (v31)(v15, v18, v8, v13);
    if (!v16)
    {
      break;
    }

    v25 = v20;
    v23(v11, v19, v8);
    sub_1004A3B34(v32, v33, v34);
    v26 = sub_1007A2124();
    v27 = *v22;
    (*v22)(v11, v8);
    v27(v15, v8);
    if (v26)
    {
      v19 += v30;
      v18 += v30;
      v28 = v16-- == 1;
      v20 = v25;
      if (!v28)
      {
        continue;
      }
    }

    return v26 & 1;
  }

  __break(1u);
  return result;
}

uint64_t static SidebarItemEvent.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4, uint64_t a5, __int16 a6)
{
  if (a1 == a4 && a2 == a5)
  {
    if (a6 != a3)
    {
      return 0;
    }

    return ((a6 & 0x100) == 0) ^ ((a3 & 0x100) >> 8);
  }

  v9 = sub_1007A3AB4();
  result = 0;
  if ((v9 & 1) != 0 && a6 == a3)
  {
    return ((a6 & 0x100) == 0) ^ ((a3 & 0x100) >> 8);
  }

  return result;
}

void SidebarItemEvent.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4)
{
  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
  sub_1007A3C14(a4);
  sub_1007A3C24(HIBYTE(a4) & 1);
}

Swift::Int SidebarItemEvent.hashValue.getter(uint64_t a1, uint64_t a2, __int16 a3)
{
  sub_1007A3C04();
  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
  sub_1007A3C14(a3);
  sub_1007A3C24(HIBYTE(a3) & 1);
  return sub_1007A3C44();
}

Swift::Int sub_1004A1704()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 17);
  sub_1007A3C04();
  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
  sub_1007A3C14(v1);
  sub_1007A3C24(v2);
  return sub_1007A3C44();
}

void sub_1004A1780(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 17);
  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
  sub_1007A3C14(v2);
  sub_1007A3C24(v3);
}

Swift::Int sub_1004A17CC(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 17);
  sub_1007A3C04();
  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
  sub_1007A3C14(v2);
  sub_1007A3C24(v3);
  return sub_1007A3C44();
}

uint64_t sub_1004A1844(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 17);
  v4 = *(a2 + 16);
  v5 = *(a2 + 17);
  if (*a1 == *a2 && a1[1] == *(a2 + 8))
  {
    if (v2 != v4)
    {
      return 0;
    }

    return v3 ^ v5 ^ 1u;
  }

  v7 = sub_1007A3AB4();
  result = 0;
  if ((v7 & 1) != 0 && v2 == v4)
  {
    return v3 ^ v5 ^ 1u;
  }

  return result;
}

Swift::Int BuyButtonViewState.hashValue.getter(unsigned __int8 a1)
{
  sub_1007A3C04();
  sub_1007A3C14(a1);
  return sub_1007A3C44();
}

void SearchBarEvent.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a3)
  {
    sub_1007A3C24(1u);
    _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    sub_1007A3C24(0);
  }

  sub_1007A3C14(a4);
}

Swift::Int SearchBarEvent.hashValue.getter(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  sub_1007A3C04();
  if (a2)
  {
    sub_1007A3C24(1u);
    _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    sub_1007A3C24(0);
  }

  sub_1007A3C14(a3);
  return sub_1007A3C44();
}

Swift::Int sub_1004A1A40()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  sub_1007A3C04();
  if (v1)
  {
    sub_1007A3C24(1u);
    _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    sub_1007A3C24(0);
  }

  sub_1007A3C14(v2);
  return sub_1007A3C44();
}

void sub_1004A1AC0(uint64_t a1)
{
  v2 = *(v1 + 16);
  if (*(v1 + 8))
  {
    sub_1007A3C24(1u);
    _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    sub_1007A3C24(0);
  }

  sub_1007A3C14(v2);
}

Swift::Int sub_1004A1B28(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  sub_1007A3C04();
  if (v2)
  {
    sub_1007A3C24(1u);
    _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    sub_1007A3C24(0);
  }

  sub_1007A3C14(v3);
  return sub_1007A3C44();
}

uint64_t UserCollectionEvent.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t AnnotationProviderService.AnnotationUpgradeEntity.uniqueID.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t UserCollectionEvent.reason.getter(__n128 a1)
{
  v2 = *(v1 + 32);
  sub_1004A30D0(v2, *(v1 + 40));
  return v2;
}

uint64_t static UserCollectionEvent.Reason.DragItemType.__derived_enum_equals(_:_:)(unint64_t a1, char a2, unint64_t a3, char a4)
{
  if (a2)
  {
    if (a4)
    {
      return sub_1004A03D0(a1, a3);
    }

    return 0;
  }

  if (a4)
  {
    return 0;
  }

  return sub_1004A0190(a1, a3);
}

Swift::Int UserCollectionEvent.Reason.DragItemType.hashValue.getter(unint64_t a1, char a2)
{
  sub_1007A3C04();
  sub_1007A3C14(a2 & 1);
  sub_1004A2E84(v5, a1);
  return sub_1007A3C44();
}

Swift::Int sub_1004A1D14()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1007A3C04();
  sub_1007A3C14(v2);
  sub_1004A2E84(v4, v1);
  return sub_1007A3C44();
}

void sub_1004A1D74(uint64_t a1)
{
  v3 = *v1;
  sub_1007A3C14(*(v1 + 8));
  sub_1004A2E84(a1, v3);
}

Swift::Int sub_1004A1DB8(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  sub_1007A3C04();
  sub_1007A3C14(v3);
  sub_1004A2E84(v5, v2);
  return sub_1007A3C44();
}

uint64_t sub_1004A1E14(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  v6 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (v6)
    {
      return sub_1004A03D0(v4, v5);
    }

    return 0;
  }

  if (v6)
  {
    return 0;
  }

  return sub_1004A0190(v4, v5);
}

BOOL static UserCollectionEvent.Reason.__derived_enum_equals(_:_:)(unint64_t a1, unsigned __int8 a2, unint64_t a3, unsigned __int8 a4)
{
  switch(a2)
  {
    case 0xFDu:
      return a4 == 253;
    case 0xFEu:
      return a4 == 254;
    case 0xFFu:
      return a4 == 0xFF;
  }

  if (a4 > 0xFCu)
  {
    return 0;
  }

  if ((a2 & 1) == 0)
  {
    return (a4 & 1) == 0 && (sub_1004A0190(a1, a3) & 1) != 0;
  }

  return (a4 & 1) != 0 && (sub_1004A03D0(a1, a3) & 1) != 0;
}

void UserCollectionEvent.Reason.hash(into:)(uint64_t a1, unint64_t a2, unsigned __int8 a3)
{
  switch(a3)
  {
    case 0xFDu:
      sub_1007A3C14(2uLL);
      break;
    case 0xFEu:
      sub_1007A3C14(1uLL);
      break;
    case 0xFFu:
      sub_1007A3C14(0);
      break;
    default:
      sub_1007A3C14(3uLL);
      sub_1007A3C14((a3 & 1) != 0);
      sub_1004A2E84(a1, a2);
      break;
  }
}

Swift::Int UserCollectionEvent.Reason.hashValue.getter(unint64_t a1, unsigned __int8 a2)
{
  sub_1007A3C04();
  switch(a2)
  {
    case 0xFDu:
      sub_1007A3C14(2uLL);
      break;
    case 0xFEu:
      sub_1007A3C14(1uLL);
      break;
    case 0xFFu:
      sub_1007A3C14(0);
      break;
    default:
      sub_1007A3C14(3uLL);
      sub_1007A3C14((a2 & 1) != 0);
      sub_1004A2E84(v5, a1);
      break;
  }

  return sub_1007A3C44();
}

void sub_1004A2058(uint64_t a1)
{
  v3 = *(v1 + 8);
  switch(v3)
  {
    case 253:
      v4 = 2;
      goto LABEL_7;
    case 254:
      v4 = 1;
      goto LABEL_7;
    case 255:
      v4 = 0;
LABEL_7:
      sub_1007A3C14(v4);
      return;
  }

  v5 = *v1;
  sub_1007A3C14(3uLL);
  sub_1007A3C14((v3 & 1) != 0);
  sub_1004A2E84(a1, v5);
}

Swift::Int sub_1004A20F0(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  sub_1007A3C04();
  switch(v3)
  {
    case 253:
      sub_1007A3C14(2uLL);
      break;
    case 254:
      sub_1007A3C14(1uLL);
      break;
    case 255:
      sub_1007A3C14(0);
      break;
    default:
      sub_1007A3C14(3uLL);
      sub_1007A3C14((v3 & 1) != 0);
      sub_1004A2E84(v5, v2);
      break;
  }

  return sub_1007A3C44();
}

BOOL sub_1004A21A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  switch(v2)
  {
    case 253:
      return v3 == 253;
    case 254:
      return v3 == 254;
    case 255:
      return v3 == 255;
  }

  if (v3 > 0xFC)
  {
    return 0;
  }

  v5 = *a1;
  v6 = *a2;
  if ((v2 & 1) == 0)
  {
    return (v3 & 1) == 0 && (sub_1004A0190(v5, v6) & 1) != 0;
  }

  return (v3 & 1) != 0 && (sub_1004A03D0(v5, v6) & 1) != 0;
}

void UserCollectionEvent.hash(into:)(uint64_t a1)
{
  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
  v3 = *(v1 + 40);
  switch(v3)
  {
    case 253:
      v4 = 2;
      goto LABEL_7;
    case 254:
      v4 = 1;
      goto LABEL_7;
    case 255:
      v4 = 0;
LABEL_7:
      sub_1007A3C14(v4);
      return;
  }

  v5 = *(v1 + 32);
  sub_1007A3C14(3uLL);
  sub_1007A3C14((v3 & 1) != 0);
  sub_1004A2E84(a1, v5);
}

Swift::Int UserCollectionEvent.hashValue.getter()
{
  sub_1007A3C04();
  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
  v1 = *(v0 + 40);
  switch(v1)
  {
    case 253:
      v2 = 2;
      break;
    case 254:
      v2 = 1;
      break;
    case 255:
      v2 = 0;
      break;
    default:
      v3 = *(v0 + 32);
      sub_1007A3C14(3uLL);
      sub_1007A3C14((v1 & 1) != 0);
      sub_1004A2E84(v5, v3);
      return sub_1007A3C44();
  }

  sub_1007A3C14(v2);
  return sub_1007A3C44();
}

void sub_1004A23C8(uint64_t a1)
{
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
  switch(v4)
  {
    case 253:
      v5 = 2;
      goto LABEL_7;
    case 254:
      v5 = 1;
      goto LABEL_7;
    case 255:
      v5 = 0;
LABEL_7:
      sub_1007A3C14(v5);
      return;
  }

  sub_1007A3C14(3uLL);
  sub_1007A3C14((v4 & 1) != 0);
  sub_1004A2E84(a1, v3);
}

Swift::Int sub_1004A2484(uint64_t a1)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  sub_1007A3C04();
  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
  switch(v3)
  {
    case 253:
      sub_1007A3C14(2uLL);
      break;
    case 254:
      sub_1007A3C14(1uLL);
      break;
    case 255:
      sub_1007A3C14(0);
      break;
    default:
      sub_1007A3C14(3uLL);
      sub_1007A3C14((v3 & 1) != 0);
      sub_1004A2E84(v5, v2);
      break;
  }

  return sub_1007A3C44();
}

BOOL sub_1004A256C(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v5 = *a1;
  v6[0] = v2;
  *(v6 + 9) = *(a1 + 25);
  v3 = a2[1];
  v7 = *a2;
  v8[0] = v3;
  *(v8 + 9) = *(a2 + 25);
  return _s5Books19UserCollectionEventV23__derived_struct_equalsySbAC_ACtFZ_0(&v5, &v7);
}

Swift::Int UserCollectionReorderEvent.hashValue.getter(uint64_t a1)
{
  sub_1007A3C04();
  _s5Books26UserCollectionReorderEventV4hash4intoys6HasherVz_tF_0(v3, a1);
  return sub_1007A3C44();
}

Swift::Int sub_1004A260C()
{
  v1 = *v0;
  sub_1007A3C04();
  _s5Books26UserCollectionReorderEventV4hash4intoys6HasherVz_tF_0(v3, v1);
  return sub_1007A3C44();
}

Swift::Int sub_1004A265C(uint64_t a1)
{
  v2 = *v1;
  sub_1007A3C04();
  _s5Books26UserCollectionReorderEventV4hash4intoys6HasherVz_tF_0(v4, v2);
  return sub_1007A3C44();
}

uint64_t sub_1004A26AC@<X0>(ValueMetadata *a1@<X0>, uint64_t a3@<X8>)
{
  v29 = a3;
  v28 = sub_1001F1160(&qword_100AE6008, &unk_100829AA0);
  __chkstk_darwin(v28);
  v27 = &v20 - v4;
  v5 = sub_1001F1160(&qword_100AE1108, &qword_100831A20);
  v24 = *(v5 - 8);
  v25 = v5;
  __chkstk_darwin(v5);
  v7 = &v20 - v6;
  v26 = sub_1001F1160(&qword_100AE6010, &qword_100829AB0);
  v23 = *(v26 - 8);
  __chkstk_darwin(v26);
  v9 = &v20 - v8;
  type metadata accessor for SidebarViewModel(0);
  sub_1004A3B34(&unk_100ADE828, type metadata accessor for SidebarViewModel, &protocol conformance descriptor for SidebarViewModel);
  v22 = a1;

  v10 = sub_10079C024();
  v30 = a1;
  v31 = v10;
  v32 = v11;
  v33 = 0;
  sub_10079E414();
  sub_10079C9F4();
  v12 = sub_1001F1160(&qword_100AE6018, &qword_100829AB8);
  v21 = sub_1004A3970();
  v36 = &type metadata for Solarium;
  v37 = &protocol witness table for Solarium;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v19 = sub_1004A39C4();
  v14 = v25;
  sub_10079DC64();
  v15 = v14;
  (*(v24 + 8))(v7, v14);

  v16 = v23;
  v17 = v26;
  (*(v23 + 16))(v27, v9, v26);
  swift_storeEnumTagMultiPayload();
  sub_1001F1160(&qword_100AE6030, &qword_100829AC0);
  sub_1004A3A50();
  v30 = &type metadata for SidebarCollectionView;
  v31 = v15;
  v32 = v12;
  v33 = v21;
  v34 = OpaqueTypeConformance2;
  v35 = v19;
  swift_getOpaqueTypeConformance2();
  sub_10079CCA4();
  return (*(v16 + 8))(v9, v17);
}

double sub_1004A2A78@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = sub_10079C2C4();
  v8 = sub_10079D294();
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = v7;
  *(a2 + 40) = v8;

  return result;
}

id sub_1004A2B04()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = [objc_allocWithZone(_UIScrollPocketContainerInteraction) initWithScrollView:0 edge:v1];
  [v3 _setCollectorInteraction:v2];
  return v3;
}

id sub_1004A2B5C()
{
  v0 = objc_allocWithZone(_UIScrollPocketInteraction);

  return [v0 initWithStyle:0];
}

void _s5Books26UserCollectionReorderEventV4hash4intoys6HasherVz_tF_0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  sub_1007A3C14(v3);
  if (!v3)
  {
    return;
  }

  v4 = 0;
  v5 = a2 + 32;
  while (1)
  {
    v7 = v5 + 48 * v4;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);

    sub_1004A30D0(v8, v9);
    _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
    _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
    if (v9 == 253)
    {
      v6 = 2;
      goto LABEL_4;
    }

    if (v9 != 254)
    {
      break;
    }

    v6 = 1;
LABEL_4:
    sub_1007A3C14(v6);

LABEL_5:
    if (++v4 == v3)
    {
      return;
    }
  }

  if (v9 == 255)
  {
    v6 = 0;
    goto LABEL_4;
  }

  sub_1007A3C14(3uLL);
  if (v9)
  {
    sub_1007A3C14(1uLL);
    if (v8 >> 62)
    {
      v20 = sub_1007A38D4();
      sub_1007A3C14(v20);
      v10 = sub_1007A38D4();
      if (!v10)
      {
        goto LABEL_35;
      }
    }

    else
    {
      sub_1007A3C14(*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10));
      v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v10)
      {
        goto LABEL_35;
      }
    }

    if (v10 < 1)
    {
      goto LABEL_38;
    }

    if ((v8 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v10; ++i)
      {
        sub_1007A3784();
        sub_1007A3194();
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v14 = (v8 + 32);
      do
      {
        v15 = *v14++;
        v16 = v15;
        sub_1007A3194();

        --v10;
      }

      while (v10);
    }

    goto LABEL_31;
  }

  sub_1007A3C14(0);
  if (v8 >> 62)
  {
    v21 = sub_1007A38D4();
    sub_1007A3C14(v21);
    v12 = sub_1007A38D4();
    if (!v12)
    {
LABEL_35:

      sub_1004A3B7C(v8, v9);
      goto LABEL_5;
    }
  }

  else
  {
    sub_1007A3C14(*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10));
    v12 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v12)
    {
      goto LABEL_35;
    }
  }

  if (v12 >= 1)
  {
    if ((v8 & 0xC000000000000001) != 0)
    {
      for (j = 0; j != v12; ++j)
      {
        sub_1007A3784();
        sub_1007A3194();
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v17 = (v8 + 32);
      do
      {
        v18 = *v17++;
        v19 = v18;
        sub_1007A3194();

        --v12;
      }

      while (v12);
    }

LABEL_31:

    sub_1004A3B7C(v8, v9);
    v5 = a2 + 32;
    goto LABEL_5;
  }

  __break(1u);
LABEL_38:
  __break(1u);
}

void sub_1004A2E84(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v8 = sub_1007A38D4();
    sub_1007A3C14(v8);
    v3 = sub_1007A38D4();
    if (!v3)
    {
      return;
    }
  }

  else
  {
    sub_1007A3C14(*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10));
    v3 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      return;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
  }

  else if ((a2 & 0xC000000000000001) != 0)
  {
    for (i = 0; i != v3; ++i)
    {
      sub_1007A3784();
      sub_1007A3194();
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v5 = (a2 + 32);
    do
    {
      v6 = *v5++;
      v7 = v6;
      sub_1007A3194();

      --v3;
    }

    while (v3);
  }
}

BOOL _s5Books14SearchBarEventV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a2)
  {
    if (a5)
    {
      if (a1 == a4 && a2 == a5)
      {
        return a3 == a6;
      }

      v6 = a3;
      v7 = a6;
      v8 = sub_1007A3AB4();
      a3 = v6;
      a6 = v7;
      if (v8)
      {
        return a3 == a6;
      }
    }
  }

  else if (!a5)
  {
    return a3 == a6;
  }

  return 0;
}

BOOL _s5Books19UserCollectionEventV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (sub_1007A3AB4() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == *(a2 + 16) && a1[3] == *(a2 + 24);
  if (!v5 && (sub_1007A3AB4() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a1 + 40);
  v7 = *(a2 + 40);
  switch(v6)
  {
    case 253:
      return v7 == 253;
    case 254:
      return v7 == 254;
    case 255:
      if (v7 == 255)
      {
        return 1;
      }

      break;
    default:
      if (v7 <= 0xFC)
      {
        v9 = a1[4];
        v10 = *(a2 + 32);
        if (v6)
        {
          if (v7 & 1) != 0 && (sub_1004A03D0(v9, v10))
          {
            return 1;
          }
        }

        else if (v7 & 1) == 0 && (sub_1004A0190(v9, v10))
        {
          return 1;
        }
      }

      break;
  }

  return 0;
}

double sub_1004A30D0(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 0xFCu)
  {
  }

  return result;
}

unint64_t sub_1004A30E8()
{
  result = qword_100AE5F20;
  if (!qword_100AE5F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE5F20);
  }

  return result;
}

unint64_t sub_1004A3140()
{
  result = qword_100AE5F28;
  if (!qword_100AE5F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE5F28);
  }

  return result;
}

unint64_t sub_1004A3198()
{
  result = qword_100AE5F30;
  if (!qword_100AE5F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE5F30);
  }

  return result;
}