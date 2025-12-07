uint64_t sub_254EE0F08(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 32))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_254EE0F5C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_254EE0FB0(uint64_t a1, void *a2)
{
  result = sub_254EE05D8(a1);
  if (v2)
  {
    *a2 = v2;
  }

  return result;
}

uint64_t sub_254EE1014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    if (!a6)
    {
      return 0;
    }

    v12 = a1 == a5 && a2 == a6;
    if (!v12 && (sub_254F29B10() & 1) == 0)
    {
      return 0;
    }
  }

  else if (a6)
  {
    return 0;
  }

  if (a4)
  {
    if (a8)
    {
      v13 = a3 == a7 && a4 == a8;
      if (v13 || (sub_254F29B10() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!a8)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_254EE10B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_254F29BC0();
  sub_254EB7B34(v9, a1, a2, a3, a4);
  return sub_254F29C00();
}

uint64_t sub_254EE11AC(uint64_t a1, uint64_t a2)
{
  result = sub_254EB6264(qword_281426E20, a2, type metadata accessor for ContextCache, &unk_254F2BBF8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_254EE1204()
{
  sub_254EB3A3C();
  v2 = *v1;
  v3 = *v1;
  sub_254EB2CE0();
  *v4 = v3;

  v5 = *(v2 + 128);
  if (v0)
  {

    v6 = sub_254EE1398;
  }

  else
  {
    v6 = sub_254EE1330;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_254EE1330()
{
  sub_254EB3BD8();
  sub_254EE3034(*(v0 + 160), *(v0 + 176));

  v1 = sub_254EC38B0();

  return v2(v1);
}

uint64_t sub_254EE1398()
{
  sub_254EB3BD8();
  sub_254EE3034(*(v0 + 160), *(v0 + 176));

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_254EE1404()
{
  sub_254EB3A3C();
  v3 = v2;
  sub_254EB4918();
  v5 = v4;
  v6 = *v1;
  sub_254EB2CE0();
  *v7 = v6;

  if (v0)
  {
    v8 = *(v6 + 8);

    return v8();
  }

  else
  {
    *(v5 + 32) = v3;
    sub_254EB3FB8();

    return MEMORY[0x2822009F8](v10, v11, v12);
  }
}

uint64_t sub_254EE153C()
{
  **(v0 + 16) = *(v0 + 32);
  sub_254EB4924();
  return v1();
}

uint64_t sub_254EE156C()
{
  v41 = v0;
  v2 = *(v0 + 320);
  v1 = *(v0 + 328);
  v3 = *(v0 + 312);
  v4 = *(v0 + 280);
  sub_254EB5C9C(*(v0 + 272), v0 + 16);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  sub_254EB5A9C((v0 + 16), v5);
  (*(v6 + 16))(v5, v6);
  v7 = sub_254F28040();
  v9 = v8;
  (*(v2 + 8))(v1, v3);
  sub_254EB2BBC((v0 + 16));
  sub_254EB6D78();
  swift_beginAccess();
  v10 = *(v4 + 120);

  sub_254EB6D78();
  sub_254EB50B8(v11, v12, v13, v14, v10, v15);

  if (*(v0 + 128) == 255)
  {
    sub_254EB306C(v0 + 96, &qword_27F75F0F8, &qword_254F2BDC8);
    sub_254F284C0();

    v18 = sub_254F291D0();
    v19 = sub_254F296F0();

    v20 = os_log_type_enabled(v18, v19);
    v22 = *(v0 + 296);
    v21 = *(v0 + 304);
    v23 = *(v0 + 288);
    if (v20)
    {
      v24 = swift_slowAlloc();
      v40 = sub_254EE3254();
      *v24 = 136315394;
      v25 = sub_254EB63C8(0x6567u);
      *(v24 + 4) = sub_254EC2D74(v25, 0xE900000000000029, &v40);
      *(v24 + 12) = 2080;
      *(v0 + 176) = v7;
      *(v0 + 184) = v9;
      *(v0 + 192) = 0;
      *(v0 + 200) = 0;
      v26 = sub_254F29480();
      v28 = sub_254EC2D74(v26, v27, &v40);

      *(v24 + 14) = v28;
      _os_log_impl(&dword_254EAE000, v18, v19, "%s cache MISS for %s", v24, 0x16u);
      sub_254EB4A28();
      sub_254EB3C04();
      sub_254EB3C04();
    }

    else
    {
    }

    (*(v22 + 8))(v21, v23);
    v36 = *(v0 + 264);
    *v36 = 0u;
    v36[1] = 0u;
LABEL_11:

    sub_254EB4924();
    sub_254EB3CE4();

    __asm { BRAA            X1, X16 }
  }

  v16 = *(v0 + 112);
  *(v0 + 56) = *(v0 + 96);
  *(v0 + 72) = v16;
  *(v0 + 88) = *(v0 + 128);
  sub_254ED7AC0(v0 + 56, v0 + 136, &qword_27F75F100, &qword_254F2BDD0);
  if (*(v0 + 168))
  {
    v17 = *(v0 + 264);
    sub_254EB306C(v0 + 56, &qword_27F75F100, &qword_254F2BDD0);
    sub_254EE31B4((v0 + 136), v17);
    goto LABEL_11;
  }

  *(v0 + 336) = *(v0 + 136);
  v29 = swift_task_alloc();
  *(v0 + 344) = v29;
  sub_254EC8BC0(&qword_27F75F108, &qword_254F2BDD8);
  sub_254EC8BC0(&qword_27F75F090, "P<");
  *v29 = v0;
  v29[1] = sub_254EE1920;
  sub_254EB3CE4();

  return MEMORY[0x282200430](v30, v31, v32, v33, v34);
}

uint64_t sub_254EE1920()
{
  sub_254EB3A3C();
  v2 = *v1;
  v3 = *v1;
  sub_254EB2CE0();
  *v4 = v3;

  v5 = *(v2 + 280);
  if (v0)
  {

    v6 = sub_254EE1ADC;
  }

  else
  {
    v6 = sub_254EE1A4C;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_254EE1A4C()
{
  sub_254EB3BD8();

  sub_254EB306C(v0 + 56, &qword_27F75F100, &qword_254F2BDD0);
  v1 = *(v0 + 264);
  v2 = *(v0 + 224);
  *v1 = *(v0 + 208);
  v1[1] = v2;

  sub_254EB4924();

  return v3();
}

uint64_t sub_254EE1ADC()
{
  sub_254EB3BD8();

  sub_254EB306C(v0 + 56, &qword_27F75F100, &qword_254F2BDD0);
  v1 = *(v0 + 264);
  *v1 = 0u;
  v1[1] = 0u;

  sub_254EB4924();

  return v2();
}

uint64_t sub_254EE1B6C()
{
  sub_254EB3A3C();
  v3 = v2;
  *(v1 + 64) = v4;
  *(v1 + 72) = v0;
  *(v1 + 48) = v5;
  *(v1 + 56) = v6;
  v7 = sub_254F28080();
  *(v1 + 80) = v7;
  sub_254EB2CAC(v7);
  *(v1 + 88) = v8;
  *(v1 + 96) = swift_task_alloc();
  *(v1 + 104) = swift_task_alloc();
  *(v1 + 112) = swift_task_alloc();
  *(v1 + 120) = swift_task_alloc();
  v9 = sub_254EC8BC0(&qword_27F75F0B8, &qword_254F2BD28);
  sub_254EB2D90(v9);
  *(v1 + 128) = swift_task_alloc();
  *(v1 + 136) = swift_task_alloc();
  v10 = sub_254F280A0();
  *(v1 + 144) = v10;
  sub_254EB2CAC(v10);
  *(v1 + 152) = v11;
  *(v1 + 160) = sub_254EB3FC4();
  *(v1 + 200) = *v3;
  *(v1 + 168) = *(v3 + 8);
  v12 = sub_254EB7E4C();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

void sub_254EE1CE8()
{
  v1 = v0;
  v2 = v0[19];
  v92 = v0[18];
  v94 = v0[20];
  v4 = v0[10];
  v3 = v0[11];

  sub_254F0CD4C();
  v98 = v5;
  v0[5] = v5;
  v91 = v0 + 5;
  sub_254EC8BC0(&qword_27F75F0C0, &qword_254F2BD30);
  v6 = (sub_254EC8BC0(&qword_27F75F0C8, &qword_254F2BD38) - 8);
  v7 = (*(*v6 + 80) + 32) & ~*(*v6 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_254F2AE00;
  v9 = v8 + v7;
  v10 = v6[14];
  v11 = *(v3 + 104);
  v3 += 104;
  v11(v9, *MEMORY[0x277D1EA50], v4);
  sub_254EC8BC0(&qword_27F75F0D0, &qword_254F2BD40);
  v12 = (*(v3 - 24) + 32) & ~*(v3 - 24);
  v97 = *(v3 - 32);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_254F2AE00;
  v83 = v12;
  v11(v13 + v12, *MEMORY[0x277D1EAD0], v4);
  *(v9 + v10) = v13;
  sub_254EC8BC0(&qword_27F75F0D8, &unk_254F2BD48);
  sub_254EB67D8();
  sub_254EB6264(v14, 255, v15, MEMORY[0x277D1EB68]);
  v16 = sub_254F293D0();
  (*(v2 + 104))(v94, *MEMORY[0x277D1EBF8], v92);
  v17 = sub_254F28090();
  (*(v2 + 8))(v94, v92);
  v93 = v1;
  if ((v17 & 1) == 0)
  {

    v26 = v1;
    v58 = v98;
LABEL_28:
    v59 = v26[11];
    v60 = v58 + 56;
    v61 = -1;
    v62 = -1 << *(v58 + 32);
    if (-v62 < 64)
    {
      v61 = ~(-1 << -v62);
    }

    v63 = v61 & *(v58 + 56);
    v64 = (63 - v62) >> 6;
    v96 = (v59 + 16);
    v65 = (v59 + 8);

    v66 = 0;
    v67 = MEMORY[0x277D84F90];
    v100 = v58;
    while (1)
    {
      v93[23] = v67;
      if (!v63)
      {
        break;
      }

LABEL_36:
      (*v96)(v93[12], *(v58 + 48) + (__clz(__rbit64(v63)) | (v66 << 6)) * v97, v93[10]);
      if (qword_281427288 != -1)
      {
        swift_once();
      }

      v69 = qword_281427CE0;
      if (*(qword_281427CE0 + 16) && (sub_254F059E0(), (v71 & 1) != 0))
      {
        v72 = *(*(v69 + 56) + 8 * v70);
      }

      else
      {
        v72 = MEMORY[0x277D84F90];
      }

      (*v65)(v93[12], v93[10]);
      v73 = *(v72 + 16);
      v74 = *(v67 + 16);
      if (__OFADD__(v74, v73))
      {
        goto LABEL_58;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v74 + v73 > *(v67 + 24) >> 1)
      {
        sub_254EB4818();
        v67 = v75;
      }

      v58 = v100;
      v63 &= v63 - 1;
      if (*(v72 + 16))
      {
        if ((*(v67 + 24) >> 1) - *(v67 + 16) < v73)
        {
          goto LABEL_60;
        }

        sub_254EC8BC0(&qword_27F75EDA0, &unk_254F2AF90);
        swift_arrayInitWithCopy();

        if (v73)
        {
          v76 = *(v67 + 16);
          v77 = __OFADD__(v76, v73);
          v78 = v76 + v73;
          if (v77)
          {
            goto LABEL_61;
          }

          *(v67 + 16) = v78;
        }
      }

      else
      {

        if (v73)
        {
          goto LABEL_59;
        }
      }
    }

    while (1)
    {
      v68 = v66 + 1;
      if (__OFADD__(v66, 1))
      {
        goto LABEL_57;
      }

      if (v68 >= v64)
      {
        v80 = v93[21];
        v79 = v93[22];
        v81 = v93[25];

        v93[2] = v81;
        v93[3] = v80;
        v93[4] = v79;
        v82 = swift_task_alloc();
        v93[24] = v82;
        *v82 = v93;
        v82[1] = sub_254EE25F8;

        sub_254EE27B8();
        return;
      }

      v63 = *(v60 + 8 * v68);
      ++v66;
      if (v63)
      {
        v66 = v68;
        goto LABEL_36;
      }
    }
  }

  v18 = 0;
  v19 = v16 + 64;
  v20 = -1 << *(v16 + 32);
  v21 = v1[11];
  if (-v20 < 64)
  {
    v22 = ~(-1 << -v20);
  }

  else
  {
    v22 = -1;
  }

  v23 = v22 & *(v16 + 64);
  v24 = (63 - v20) >> 6;
  v25 = (v21 + 16);
  v89 = (v21 + 32);
  v99 = (v21 + 8);
  v26 = v1;
  v27 = v97;
  v85 = v24;
  v86 = v16 + 64;
  v95 = (v21 + 16);
  v87 = v16;
  if (v23)
  {
    while (1)
    {
      v28 = v18;
LABEL_11:
      v30 = v26[15];
      v29 = v26[16];
      v31 = v26[10];
      v90 = (v23 - 1) & v23;
      v32 = __clz(__rbit64(v23)) | (v28 << 6);
      (*v25)(v30, *(v16 + 48) + v32 * v27, v31);
      v33 = *(*(v16 + 56) + 8 * v32);
      v34 = sub_254EC8BC0(&qword_27F75F0E0, &qword_254F2BD60);
      v35 = *(v34 + 48);
      (*v89)(v29, v30, v31);
      *(v29 + v35) = v33;
      sub_254EB2F04(v29, 0, 1, v34);

LABEL_12:
      v36 = v26[17];
      sub_254EE3058(v26[16], v36);
      v37 = sub_254EC8BC0(&qword_27F75F0E0, &qword_254F2BD60);
      if (sub_254EB2F2C(v36, 1, v37) == 1)
      {
        break;
      }

      v38 = *(v26[17] + *(v37 + 48));
      (*v89)(v26[14]);
      v39 = v26[5];
      v16 = v87;
      if (*(v39 + 16))
      {
        v88 = v38;
        v40 = sub_254F293F0();
        v41 = ~(-1 << *(v39 + 32));
        do
        {
          v42 = v40 & v41;
          if (((*(v39 + 56 + (((v40 & v41) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v40 & v41)) & 1) == 0)
          {
            v26 = v93;
            (*v99)(v93[14], v93[10]);
            v27 = v97;
            v16 = v87;
            goto LABEL_23;
          }

          v43 = v93[15];
          v44 = v93[10];
          v45 = *v95;
          (*v95)(v43, *(v39 + 48) + v42 * v97, v44);
          sub_254EB67D8();
          sub_254EB6264(&qword_281427530, 255, v46, MEMORY[0x277D1EB70]);
          v47 = sub_254F29410();
          v48 = *v99;
          (*v99)(v43, v44);
          v40 = v42 + 1;
        }

        while ((v47 & 1) == 0);
        v84 = v18;
        v49 = *(v88 + 16);
        v26 = v93;
        v50 = v95;
        v27 = v97;
        if (v49)
        {
          v51 = v88 + v83;
          do
          {
            v52 = v93[15];
            v53 = v93[10];
            v54 = v50;
            v45(v93[13], v51, v53);
            sub_254F0F7E0();
            v48(v52, v53);
            v50 = v54;
            v51 += v97;
            --v49;
          }

          while (v49);
        }

        v48(v93[14], v93[10]);
        v16 = v87;
        v18 = v84;
      }

      else
      {
        (*v99)(v26[14], v26[10]);
        v27 = v97;
      }

LABEL_23:

      v24 = v85;
      v19 = v86;
      v25 = v95;
      v23 = v90;
      if (!v90)
      {
        goto LABEL_7;
      }
    }

    v58 = *v91;
    goto LABEL_28;
  }

LABEL_7:
  while (1)
  {
    v28 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v28 >= v24)
    {
      v55 = sub_254EC8BC0(&qword_27F75F0E0, &qword_254F2BD60);
      sub_254EB7D30(v55, v56, v57, v55);
      v90 = 0;
      goto LABEL_12;
    }

    v23 = *(v19 + 8 * v28);
    ++v18;
    if (v23)
    {
      v18 = v28;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
}

uint64_t sub_254EE25F8()
{
  sub_254EB3BD8();
  sub_254EB4918();
  v2 = *(v1 + 72);
  v3 = *v0;
  sub_254EB2CE0();
  *v4 = v3;

  return MEMORY[0x2822009F8](sub_254EE2714, v2, 0);
}

uint64_t sub_254EE2714()
{
  sub_254EC00E4();

  sub_254EB4924();

  return v0();
}

uint64_t sub_254EE27B8()
{
  sub_254EB3A3C();
  v3 = v2;
  *(v1 + 312) = v4;
  *(v1 + 320) = v0;
  *(v1 + 296) = v5;
  *(v1 + 304) = v6;
  v7 = type metadata accessor for ContextDefinition(0);
  *(v1 + 328) = v7;
  sub_254EB2D90(v7);
  *(v1 + 336) = sub_254EB3FC4();
  v8 = sub_254EC8BC0(&qword_27F75EFA0, &qword_254F2B6B0);
  sub_254EB2D90(v8);
  *(v1 + 344) = sub_254EB3FC4();
  v9 = sub_254F28050();
  *(v1 + 352) = v9;
  sub_254EB2CAC(v9);
  *(v1 + 360) = v10;
  *(v1 + 368) = swift_task_alloc();
  *(v1 + 376) = swift_task_alloc();
  v11 = sub_254F291E0();
  *(v1 + 384) = v11;
  sub_254EB2CAC(v11);
  *(v1 + 392) = v12;
  *(v1 + 400) = sub_254EB3FC4();
  *(v1 + 424) = *v3;
  *(v1 + 408) = *(v3 + 8);
  v13 = sub_254EB7E4C();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_254EE2930()
{
  sub_254EB3BD8();
  sub_254EB4918();
  v2 = *v1;
  sub_254EB2CE0();
  *v3 = v2;
  *(v4 + 64) = v0;

  if (v0)
  {
    sub_254EB3FB8();

    return MEMORY[0x2822009F8](v5, v6, v7);
  }

  else
  {
    sub_254EB4924();

    return v8();
  }
}

uint64_t sub_254EE2A4C()
{
  sub_254EB3BD8();
  sub_254EE3204(*(v0 + 40));
  sub_254EB4924();

  return v1();
}

uint64_t sub_254EE2AA8()
{
  sub_254EB3BD8();
  sub_254EB4918();
  v1 = *v0;
  sub_254EB2CE0();
  *v2 = v1;

  sub_254EB3FB8();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_254EE2B90()
{
  sub_254EC00E4();
  v1 = *(v0 + 288);
  v3 = v1[3];
  v2 = v1[4];
  sub_254EB5A9C(v1, v3);
  sub_254ED7AC0(v0 + 128, v0 + 192, &qword_27F75F0F0, &qword_254F2BDC0);
  v4 = *(v0 + 216);
  if (v4)
  {
    v5 = sub_254EB5A9C((v0 + 192), *(v0 + 216));
    *(v0 + 184) = v4;
    v6 = sub_254EB4178((v0 + 160));
    (*(*(v4 - 8) + 16))(v6, v5, v4);
    sub_254EB2BBC((v0 + 192));
  }

  else
  {
    sub_254EB306C(v0 + 192, &qword_27F75F0F0, &qword_254F2BDC0);
    *(v0 + 160) = 0u;
    *(v0 + 176) = 0u;
  }

  *(v0 + 248) = *(v0 + 320);
  *(v0 + 256) = *(v0 + 328);
  v7 = swift_task_alloc();
  *(v0 + 400) = v7;
  *v7 = v0;
  v7[1] = sub_254EE2D0C;
  v8 = *(v0 + 304);
  v9 = *(v0 + 312);

  return sub_254ED6D88(v0 + 160, v8, v9, v0 + 248, v3, v2);
}

uint64_t sub_254EE2D0C()
{
  sub_254EB3BD8();
  sub_254EB4918();
  v2 = v1;
  *(v1 + 272) = v0;
  *(v1 + 280) = v3;
  v4 = *v0;
  sub_254EB2CE0();
  *v5 = v4;

  sub_254EB306C(v2 + 160, &qword_27F75EE68, &qword_254F2B4C0);
  sub_254EB3FB8();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_254EE2E10()
{
  sub_254EB3A3C();
  v2 = v0[47];
  v1 = v0[48];
  v3 = v0[46];
  sub_254EB306C((v0 + 16), &qword_27F75F0F0, &qword_254F2BDC0);
  sub_254EB2BBC(v0 + 2);
  (*(v2 + 8))(v1, v3);

  v4 = sub_254EC38B0();

  return v5(v4);
}

uint64_t sub_254EE2ED0()
{
  sub_254EB3A3C();
  v2 = v1;
  v3 = *v0;
  sub_254EB2CE0();
  *v4 = v3;
  v5 = *v0;
  *v4 = *v0;

  sub_254EB306C(v3 + 96, &qword_27F75EE68, &qword_254F2B4C0);

  v6 = *(v5 + 8);

  return v6(v2);
}

uint64_t sub_254EE3034(uint64_t result, char a2)
{
  if (a2 != -1)
  {
    return sub_254EE304C(result, a2 & 1);
  }

  return result;
}

uint64_t sub_254EE304C(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_254EE3058(uint64_t a1, uint64_t a2)
{
  v4 = sub_254EC8BC0(&qword_27F75F0B8, &qword_254F2BD28);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_254EE30C8()
{
  sub_254EB3BD8();
  v2 = v1;
  sub_254EB4918();
  v3 = *v0;
  sub_254EB2CE0();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v2);
}

_OWORD *sub_254EE31B4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_254EE31C4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_254EE3204(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x259C2EB80);
  }

  return result;
}

uint64_t sub_254EE3254()
{

  return swift_slowAlloc();
}

uint64_t sub_254EE326C(uint64_t a1)
{
  v3 = sub_254F29A40();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + 16) = *a1;
  *(v1 + 24) = *(a1 + 8);
  sub_254F29A30();
  (*(v4 + 32))(v1 + OBJC_IVAR____TtC30IntelligenceFlowContextRuntime16ContextRetriever_clock, v6, v3);
  return v1;
}

uint64_t sub_254EE3358()
{
  sub_254EB3BD8();
  *(v1 + 96) = v2;
  *(v1 + 104) = v0;
  *(v1 + 264) = v3;
  *(v1 + 88) = v4;
  v5 = sub_254F28080();
  *(v1 + 112) = v5;
  sub_254EB2CAC(v5);
  *(v1 + 120) = v6;
  *(v1 + 128) = sub_254EB3FC4();
  v7 = sub_254F29A20();
  *(v1 + 136) = v7;
  sub_254EB2CAC(v7);
  *(v1 + 144) = v8;
  *(v1 + 152) = sub_254EB3FC4();
  v9 = sub_254F29140();
  *(v1 + 160) = v9;
  sub_254EB2CAC(v9);
  *(v1 + 168) = v10;
  *(v1 + 176) = sub_254EB3C44();
  *(v1 + 184) = swift_task_alloc();
  v11 = sub_254F29170();
  *(v1 + 192) = v11;
  sub_254EB2CAC(v11);
  *(v1 + 200) = v12;
  *(v1 + 208) = sub_254EB3C44();
  *(v1 + 216) = swift_task_alloc();
  v13 = sub_254EB3CA0();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

void sub_254EE3500(uint64_t a1)
{
  sub_254F280C0();
  sub_254F280C0();
  sub_254F29160();
  sub_254F29120();
  v2 = sub_254EB63E8();
  v52 = v3;
  v3(v2);
  v4 = sub_254F29160();
  sub_254F297A0();
  if (sub_254F29800())
  {
    *swift_slowAlloc() = 0;
    v5 = sub_254F29130();
    sub_254EC38C0(&dword_254EAE000, v6, v7, v5, "ContextRetrieval.retrieveContextValues(contextTypes:timeout:)", "");
    sub_254EB3C04();
  }

  v8 = *(v1 + 216);
  v10 = *(v1 + 184);
  v9 = *(v1 + 192);
  v11 = *(v1 + 168);
  v12 = *(v1 + 104);
  v51 = *(v1 + 88);

  v13 = sub_254EB6D84();
  v14(v13);
  v15 = sub_254F291B0();
  sub_254EB82B4(v15);
  *(v1 + 224) = sub_254EB5AE0();
  v16 = v11 + 8;
  v17 = sub_254EC0D3C();
  v18(v17);
  v19 = sub_254EB3AEC();
  (v52)(v19);
  sub_254F29A00();
  v20 = *(v51 + 16);
  v21 = MEMORY[0x277D84F90];
  if (v20)
  {
    sub_254EB3AC8();
    do
    {
      (v10)(*(v1 + 128), v8, *(v1 + 112));
      if (qword_281427288 != -1)
      {
        sub_254EB6BD8();
        swift_once();
      }

      if (*(qword_281427CE0 + 16))
      {
        sub_254F059E0();
        v12 = *v9;
        if (v22)
        {
          v16 = v10;

          v23 = sub_254EC0D3C();
          v12(v23);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_254EB4958();
            sub_254EF0730();
            v21 = v26;
          }

          v25 = *(v21 + 16);
          v24 = *(v21 + 24);
          v10 = (v25 + 1);
          if (v25 >= v24 >> 1)
          {
            sub_254EB5124(v24);
            sub_254EF0730();
            v21 = v27;
          }

          sub_254EEA0CC();
          goto LABEL_16;
        }
      }

      else
      {
        v12 = *v9;
      }

      (v12)(*(v1 + 128), *(v1 + 112));
LABEL_16:
      v8 += v16;
      --v20;
    }

    while (v20);
  }

  v28 = sub_254EE9D38(v21);
  v31 = sub_254EC1AC8(v28, v29, v30);
  if (v31)
  {
    sub_254EBED5C(v31);
    v32 = v52;
    v33 = v53;
    sub_254EE9D38(v21);
    if ((v52 & 0x8000000000000000) == 0)
    {
      sub_254EB3EA4();
      while (1)
      {
        v35 = __OFADD__(v12, 1);
        v12 = (v12 + 1);
        if (v35)
        {
          break;
        }

        if ((v8 & 0x8000000000000000) != 0)
        {
          goto LABEL_45;
        }

        if (v8 >= *(v21 + 16))
        {
          goto LABEL_46;
        }

        if (v16)
        {
          goto LABEL_51;
        }

        v36 = v10[v8];
        if (v20 >= *(v36 + 16))
        {
          goto LABEL_47;
        }

        sub_254EB5C9C(v36 + v20 * v34 + 32, v1 + 16);
        sub_254EB99C0();
        if (v38)
        {
          v40 = sub_254EB5124(v37);
          sub_254ECA74C(v40, v16, 1);
          v32 = v52;
          v33 = v53;
        }

        sub_254EEA0E4();
        if (v38)
        {
          goto LABEL_48;
        }

        sub_254EB81A8();
        if (v39)
        {
          ++v8;
          while (1)
          {
            v16 = v8 == v9;
            if (v8 == v9)
            {
              v20 = 0;
              v8 = v9;
              goto LABEL_30;
            }

            sub_254EC8BC0(&qword_27F75F130, &unk_254F2BE60);
            sub_254EE9EDC();
            sub_254EB63E8();
            sub_254EB80C4();
            v50 = sub_254EF171C(v41, v42, v43);
            v45 = *v44;

            (v50)(v51, 0);
            v46 = *(v45 + 16);

            if (v46)
            {
              break;
            }

            v35 = __OFADD__(v8++, 1);
            v32 = v52;
            if (v35)
            {
              goto LABEL_50;
            }
          }

          v20 = 0;
          v32 = v52;
        }

        else
        {
          v16 = 0;
        }

LABEL_30:
        v34 = 40;
        if (v12 == v32)
        {

          goto LABEL_41;
        }
      }

      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
    }

    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
  }

  else
  {

    v33 = MEMORY[0x277D84F90];
LABEL_41:
    *(v1 + 232) = v33;
    v47 = *(v1 + 264);
    v48 = swift_task_alloc();
    *(v1 + 240) = v48;
    *v48 = v1;
    v48[1] = sub_254EE39A8;
    v49 = *(v1 + 96);

    sub_254EE42C4(v33, v49, v47 & 1);
  }
}

uint64_t sub_254EE39A8(uint64_t a1)
{
  sub_254EB4918();
  v5 = v4;
  sub_254EB63D8();
  *v6 = v5;
  v7 = *v2;
  sub_254EB2CE0();
  *v8 = v7;
  *(v5 + 248) = v1;

  if (!v1)
  {

    *(v5 + 256) = a1;
  }

  sub_254EB3FB8();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_254EE3AC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_254EB4B18();
  sub_254EB5BE4();
  v13 = *(v12 + 152);
  sub_254EB7D4C();
  sub_254EE3C84(v14, v15, v16, v17, v18, v13);

  v19 = sub_254EC1BEC();
  v20(v19);

  sub_254EB3CE4();

  return v23(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12);
}

uint64_t sub_254EE3BA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_254EB4B18();
  sub_254EB5BE4();
  v13 = v12[19];
  v30 = v12[16];
  v14 = v12[13];

  sub_254EB7D4C();
  sub_254EE3C84(v15, v16, v17, v18, v14, v13);

  v19 = sub_254EC1BEC();
  v20(v19);

  sub_254EB4924();
  sub_254EB3CE4();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, v30, a10, a11, a12);
}

uint64_t sub_254EE3C84(const char *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v46 = a6;
  v47 = a5;
  v42 = a3;
  v48 = a1;
  v6 = sub_254F29A20();
  v44 = *(v6 - 8);
  v45 = v6;
  MEMORY[0x28223BE20](v6);
  v43 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_254F29180();
  v40 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v39 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_254F29140();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_254F29170();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_254F280C0();
  v17 = sub_254F29160();
  v18 = v47;
  sub_254F29190();
  v38 = sub_254F29790();
  result = sub_254F29800();
  if (result)
  {
    v36 = v10;
    v37 = v9;
    if ((v42 & 1) == 0)
    {
      if (v48)
      {
LABEL_9:

        v20 = v39;
        sub_254F291C0();

        v21 = v40;
        v22 = v41;
        if ((*(v40 + 88))(v20, v41) == *MEMORY[0x277D85B00])
        {
          v23 = "[Error] Interval already ended";
        }

        else
        {
          (*(v21 + 8))(v20, v22);
          v23 = "";
        }

        v24 = swift_slowAlloc();
        *v24 = 0;
        v25 = sub_254F29130();
        _os_signpost_emit_with_name_impl(&dword_254EAE000, v17, v38, v25, v48, v23, v24, 2u);
        MEMORY[0x259C2EB80](v24, -1, -1);
        v9 = v37;
        v10 = v36;
        goto LABEL_13;
      }

      __break(1u);
    }

    if (v48 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v48 & 0xFFFFF800) == 0xD800)
      {
LABEL_19:
        __break(1u);
        return result;
      }

      if (v48 >> 16 <= 0x10)
      {
        v48 = &v49;
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_19;
  }

LABEL_13:

  (*(v10 + 8))(v12, v9);
  (*(v14 + 8))(v16, v13);
  sub_254EC8BC0(&qword_27F75EFA8, &qword_254F2BA60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_254F2B4D0;
  *(inited + 32) = 0x6449746E65696C63;
  *(inited + 40) = 0xE800000000000000;
  if (*(v18 + 32))
  {
    v27 = *(v18 + 24);
    v28 = *(v18 + 32);
  }

  else
  {
    v27 = 0;
    v28 = 0xE000000000000000;
  }

  type metadata accessor for Analytics();
  sub_254EB48D8(0, &qword_281426030, 0x277CCACA8);

  *(inited + 48) = sub_254EF3180(v27, v28);
  *(inited + 56) = 0x79636E6574616CLL;
  *(inited + 64) = 0xE700000000000000;
  v29 = v43;
  sub_254F29A00();
  sub_254F29A10();
  (*(v44 + 8))(v29, v45);
  v30 = sub_254F29C10();
  v32 = v30 * 1000.0 + v31 * 1.0e-15;
  v33 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  *&v34 = v32;
  *(inited + 72) = [v33 initWithFloat_];
  strcpy((inited + 80), "retrievalType");
  *(inited + 94) = -4864;
  *(inited + 96) = sub_254EF3180(0xD00000000000002CLL, 0x8000000254F2DDD0);
  sub_254EB48D8(0, &qword_281426038, 0x277D82BB8);
  v35 = sub_254F293D0();
  static Analytics.sendEventForProduction(eventName:prefix:eventPayload:)(0xD000000000000010, 0x8000000254F2DDB0, 0, 0, v35);
}

uint64_t sub_254EE42C4(uint64_t a1, uint64_t a2, char a3)
{
  v7 = sub_254F284A0();
  v3[2] = v7;
  v3[3] = *(v7 - 8);
  v8 = swift_task_alloc();
  v3[4] = v8;
  v9 = swift_task_alloc();
  v3[5] = v9;
  *v9 = v3;
  v9[1] = sub_254EE43E4;

  return sub_254EE5528(v8, a1, a2, a3 & 1, 0);
}

uint64_t sub_254EE43E4()
{
  sub_254EB3BD8();
  sub_254EB4918();
  sub_254EB5BF0();
  *v3 = v2;
  v4 = *v1;
  sub_254EB2CE0();
  *v5 = v4;
  *(v6 + 48) = v0;

  sub_254EB3FB8();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_254EE44DC()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = sub_254F28490();
  (*(v2 + 8))(v1, v3);

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_254EE4574()
{
  sub_254EB3BD8();

  sub_254EB4924();

  return v0();
}

uint64_t sub_254EE45D0()
{
  sub_254EB3BD8();
  *(v1 + 264) = v2;
  *(v1 + 104) = v3;
  *(v1 + 112) = v0;
  *(v1 + 88) = v4;
  *(v1 + 96) = v5;
  v6 = sub_254F28080();
  *(v1 + 120) = v6;
  sub_254EB2CAC(v6);
  *(v1 + 128) = v7;
  *(v1 + 136) = sub_254EB3FC4();
  v8 = sub_254F29A20();
  *(v1 + 144) = v8;
  sub_254EB2CAC(v8);
  *(v1 + 152) = v9;
  *(v1 + 160) = sub_254EB3FC4();
  v10 = sub_254F29140();
  *(v1 + 168) = v10;
  sub_254EB2CAC(v10);
  *(v1 + 176) = v11;
  *(v1 + 184) = sub_254EB3C44();
  *(v1 + 192) = swift_task_alloc();
  v12 = sub_254F29170();
  *(v1 + 200) = v12;
  sub_254EB2CAC(v12);
  *(v1 + 208) = v13;
  *(v1 + 216) = sub_254EB3C44();
  *(v1 + 224) = swift_task_alloc();
  v14 = sub_254EB3CA0();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

void sub_254EE4778(uint64_t a1)
{
  sub_254F280C0();
  sub_254F280C0();
  sub_254F29160();
  sub_254F29120();
  v2 = sub_254EB63E8();
  v54 = v3;
  v3(v2);
  v4 = sub_254F29160();
  sub_254F297A0();
  if (sub_254F29800())
  {
    *swift_slowAlloc() = 0;
    v5 = sub_254F29130();
    sub_254EC38C0(&dword_254EAE000, v6, v7, v5, "ContextRetrieval.retrieveContextValuesWithFailures(contextTypes:timeout:)", "");
    sub_254EB3C04();
  }

  v8 = *(v1 + 224);
  v10 = *(v1 + 192);
  v9 = *(v1 + 200);
  v11 = *(v1 + 176);
  v12 = *(v1 + 112);
  v53 = *(v1 + 96);

  v13 = sub_254EB6D84();
  v14(v13);
  v15 = sub_254F291B0();
  sub_254EB82B4(v15);
  *(v1 + 232) = sub_254EB5AE0();
  v16 = v11 + 8;
  v17 = sub_254EC0D3C();
  v18(v17);
  v19 = sub_254EB3AEC();
  (v54)(v19);
  sub_254F29A00();
  v20 = *(v53 + 16);
  v21 = MEMORY[0x277D84F90];
  if (v20)
  {
    sub_254EB3AC8();
    do
    {
      (v10)(*(v1 + 136), v8, *(v1 + 120));
      if (qword_281427288 != -1)
      {
        sub_254EB6BD8();
        swift_once();
      }

      if (*(qword_281427CE0 + 16))
      {
        sub_254F059E0();
        v12 = *v9;
        if (v22)
        {
          v16 = v10;

          v23 = sub_254EC0D3C();
          v12(v23);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_254EB4958();
            sub_254EF0730();
            v21 = v26;
          }

          v25 = *(v21 + 16);
          v24 = *(v21 + 24);
          v10 = (v25 + 1);
          if (v25 >= v24 >> 1)
          {
            sub_254EB5124(v24);
            sub_254EF0730();
            v21 = v27;
          }

          sub_254EEA0CC();
          goto LABEL_16;
        }
      }

      else
      {
        v12 = *v9;
      }

      (v12)(*(v1 + 136), *(v1 + 120));
LABEL_16:
      v8 += v16;
      --v20;
    }

    while (v20);
  }

  v28 = sub_254EE9D38(v21);
  v31 = sub_254EC1AC8(v28, v29, v30);
  if (v31)
  {
    sub_254EBED5C(v31);
    v32 = v54;
    v33 = v55;
    sub_254EE9D38(v21);
    if ((v54 & 0x8000000000000000) == 0)
    {
      sub_254EB3EA4();
      while (1)
      {
        v35 = __OFADD__(v12, 1);
        v12 = (v12 + 1);
        if (v35)
        {
          break;
        }

        if ((v8 & 0x8000000000000000) != 0)
        {
          goto LABEL_45;
        }

        if (v8 >= *(v21 + 16))
        {
          goto LABEL_46;
        }

        if (v16)
        {
          goto LABEL_51;
        }

        v36 = v10[v8];
        if (v20 >= *(v36 + 16))
        {
          goto LABEL_47;
        }

        sub_254EB5C9C(v36 + v20 * v34 + 32, v1 + 16);
        sub_254EB99C0();
        if (v38)
        {
          v40 = sub_254EB5124(v37);
          sub_254ECA74C(v40, v16, 1);
          v32 = v54;
          v33 = v55;
        }

        sub_254EEA0E4();
        if (v38)
        {
          goto LABEL_48;
        }

        sub_254EB81A8();
        if (v39)
        {
          ++v8;
          while (1)
          {
            v16 = v8 == v9;
            if (v8 == v9)
            {
              v20 = 0;
              v8 = v9;
              goto LABEL_30;
            }

            sub_254EC8BC0(&qword_27F75F130, &unk_254F2BE60);
            sub_254EE9EDC();
            sub_254EB63E8();
            sub_254EB80C4();
            v52 = sub_254EF171C(v41, v42, v43);
            v45 = *v44;

            (v52)(v53, 0);
            v46 = *(v45 + 16);

            if (v46)
            {
              break;
            }

            v35 = __OFADD__(v8++, 1);
            v32 = v54;
            if (v35)
            {
              goto LABEL_50;
            }
          }

          v20 = 0;
          v32 = v54;
        }

        else
        {
          v16 = 0;
        }

LABEL_30:
        v34 = 40;
        if (v12 == v32)
        {

          goto LABEL_41;
        }
      }

      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
    }

    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
  }

  else
  {

    v33 = MEMORY[0x277D84F90];
LABEL_41:
    *(v1 + 240) = v33;
    v47 = *(v1 + 264);
    swift_task_alloc();
    sub_254EB5718();
    *(v1 + 248) = v48;
    *v48 = v49;
    v48[1] = sub_254EE4C28;
    v50 = *(v1 + 104);
    v51 = *(v1 + 88);

    sub_254EE5528(v51, v33, v50, v47 & 1, 1);
  }
}

uint64_t sub_254EE4C28()
{
  sub_254EB3BD8();
  sub_254EB4918();
  v3 = v2;
  sub_254EB63D8();
  *v4 = v3;
  v5 = *v1;
  sub_254EB2CE0();
  *v6 = v5;
  *(v3 + 256) = v0;

  if (!v0)
  {
  }

  sub_254EB3FB8();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_254EE4D28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_254EB4B18();
  sub_254EB5BE4();
  v13 = *(v12 + 160);
  sub_254EB7D4C();
  sub_254EE4EE4(v14, v15, v16, v17, v18, v13);

  v19 = sub_254EC1BEC();
  v20(v19);

  sub_254EB4924();
  sub_254EB3CE4();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12);
}

uint64_t sub_254EE4E00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_254EB4B18();
  sub_254EB5BE4();
  v13 = v12[20];
  v30 = v12[17];
  v14 = v12[14];

  sub_254EB7D4C();
  sub_254EE4EE4(v15, v16, v17, v18, v14, v13);

  v19 = sub_254EC1BEC();
  v20(v19);

  sub_254EB4924();
  sub_254EB3CE4();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, v30, a10, a11, a12);
}

uint64_t sub_254EE4EE4(const char *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v46 = a6;
  v47 = a5;
  v42 = a3;
  v48 = a1;
  v6 = sub_254F29A20();
  v44 = *(v6 - 8);
  v45 = v6;
  MEMORY[0x28223BE20](v6);
  v43 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_254F29180();
  v40 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v39 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_254F29140();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_254F29170();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_254F280C0();
  v17 = sub_254F29160();
  v18 = v47;
  sub_254F29190();
  v38 = sub_254F29790();
  result = sub_254F29800();
  if (result)
  {
    v36 = v10;
    v37 = v9;
    if ((v42 & 1) == 0)
    {
      if (v48)
      {
LABEL_9:

        v20 = v39;
        sub_254F291C0();

        v21 = v40;
        v22 = v41;
        if ((*(v40 + 88))(v20, v41) == *MEMORY[0x277D85B00])
        {
          v23 = "[Error] Interval already ended";
        }

        else
        {
          (*(v21 + 8))(v20, v22);
          v23 = "";
        }

        v24 = swift_slowAlloc();
        *v24 = 0;
        v25 = sub_254F29130();
        _os_signpost_emit_with_name_impl(&dword_254EAE000, v17, v38, v25, v48, v23, v24, 2u);
        MEMORY[0x259C2EB80](v24, -1, -1);
        v9 = v37;
        v10 = v36;
        goto LABEL_13;
      }

      __break(1u);
    }

    if (v48 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v48 & 0xFFFFF800) == 0xD800)
      {
LABEL_19:
        __break(1u);
        return result;
      }

      if (v48 >> 16 <= 0x10)
      {
        v48 = &v49;
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_19;
  }

LABEL_13:

  (*(v10 + 8))(v12, v9);
  (*(v14 + 8))(v16, v13);
  sub_254EC8BC0(&qword_27F75EFA8, &qword_254F2BA60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_254F2B4D0;
  *(inited + 32) = 0x6449746E65696C63;
  *(inited + 40) = 0xE800000000000000;
  if (*(v18 + 32))
  {
    v27 = *(v18 + 24);
    v28 = *(v18 + 32);
  }

  else
  {
    v27 = 0;
    v28 = 0xE000000000000000;
  }

  type metadata accessor for Analytics();
  sub_254EB48D8(0, &qword_281426030, 0x277CCACA8);

  *(inited + 48) = sub_254EF3180(v27, v28);
  *(inited + 56) = 0x79636E6574616CLL;
  *(inited + 64) = 0xE700000000000000;
  v29 = v43;
  sub_254F29A00();
  sub_254F29A10();
  (*(v44 + 8))(v29, v45);
  v30 = sub_254F29C10();
  v32 = v30 * 1000.0 + v31 * 1.0e-15;
  v33 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  *&v34 = v32;
  *(inited + 72) = [v33 initWithFloat_];
  strcpy((inited + 80), "retrievalType");
  *(inited + 94) = -4864;
  *(inited + 96) = sub_254EF3180(0xD000000000000038, 0x8000000254F2DEA0);
  sub_254EB48D8(0, &qword_281426038, 0x277D82BB8);
  v35 = sub_254F293D0();
  static Analytics.sendEventForProduction(eventName:prefix:eventPayload:)(0xD000000000000010, 0x8000000254F2DDB0, 0, 0, v35);
}

uint64_t sub_254EE5528(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  *(v6 + 73) = a5;
  *(v6 + 72) = a4;
  *(v6 + 32) = a3;
  *(v6 + 40) = v5;
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  return MEMORY[0x2822009F8](sub_254EE5554, 0, 0);
}

uint64_t sub_254EE5554()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = *(v0 + 73);
  v4 = *(v0 + 72);
  v5 = *(v0 + 24);
  v6 = sub_254EC8BC0(&qword_27F75F138, &qword_254F2BE78);
  v7 = swift_task_alloc();
  *(v0 + 48) = v7;
  *(v7 + 16) = v5;
  *(v7 + 24) = v2;
  *(v7 + 32) = v4 & 1;
  *(v7 + 33) = v3;
  *(v7 + 40) = v1;
  v8 = sub_254F284A0();
  swift_task_alloc();
  sub_254EB5718();
  *(v0 + 56) = v9;
  *v9 = v10;
  v9[1] = sub_254EE568C;
  v11 = *(v0 + 16);

  return MEMORY[0x282200740](v11, v6, v8, 0, 0, &unk_254F2BE88, v7, v6);
}

uint64_t sub_254EE568C()
{
  sub_254EB3BD8();
  sub_254EB4918();
  v3 = v2;
  sub_254EB63D8();
  *v4 = v3;
  v5 = *v1;
  sub_254EB2CE0();
  *v6 = v5;
  *(v3 + 64) = v0;

  if (v0)
  {
    sub_254EB3FB8();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    sub_254EB4924();

    return v10();
  }
}

uint64_t sub_254EE57A8()
{
  sub_254EB3BD8();

  sub_254EB4924();

  return v0();
}

uint64_t sub_254EE5804()
{
  sub_254EB3BD8();
  *(v1 + 56) = v2;
  *(v1 + 64) = v0;
  *(v1 + 416) = v3;
  *(v1 + 40) = v4;
  *(v1 + 48) = v5;
  *(v1 + 32) = v6;
  v7 = sub_254EC8BC0(&qword_27F75F160, &qword_254F2BEE8);
  sub_254EB2D90(v7);
  *(v1 + 72) = sub_254EB3FC4();
  v8 = sub_254EC8BC0(&qword_27F75EE48, &unk_254F2B550);
  sub_254EB2D90(v8);
  *(v1 + 80) = sub_254EB3FC4();
  v9 = sub_254EC8BC0(&qword_27F75EEC0, &unk_254F2B4A0);
  sub_254EB2D90(v9);
  *(v1 + 88) = sub_254EB3FC4();
  v10 = sub_254EC8BC0(&unk_27F75EEB0, &unk_254F2B490);
  sub_254EB2D90(v10);
  *(v1 + 96) = sub_254EB3C44();
  *(v1 + 104) = swift_task_alloc();
  v11 = sub_254F28260();
  *(v1 + 112) = v11;
  sub_254EB2CAC(v11);
  *(v1 + 120) = v12;
  *(v1 + 128) = sub_254EB3C44();
  *(v1 + 136) = swift_task_alloc();
  v13 = sub_254EC8BC0(&qword_27F75EDB0, &qword_254F2AFA0);
  *(v1 + 144) = v13;
  sub_254EB2CAC(v13);
  *(v1 + 152) = v14;
  *(v1 + 160) = sub_254EB3C44();
  *(v1 + 168) = swift_task_alloc();
  *(v1 + 176) = swift_task_alloc();
  *(v1 + 184) = swift_task_alloc();
  *(v1 + 192) = swift_task_alloc();
  *(v1 + 200) = swift_task_alloc();
  *(v1 + 208) = swift_task_alloc();
  *(v1 + 216) = swift_task_alloc();
  *(v1 + 224) = swift_task_alloc();
  v15 = sub_254F291E0();
  *(v1 + 232) = v15;
  sub_254EB2CAC(v15);
  *(v1 + 240) = v16;
  *(v1 + 248) = sub_254EB3FC4();
  v17 = sub_254F28080();
  *(v1 + 256) = v17;
  sub_254EB2CAC(v17);
  *(v1 + 264) = v18;
  *(v1 + 272) = sub_254EB3C44();
  *(v1 + 280) = swift_task_alloc();
  v19 = sub_254F29140();
  *(v1 + 288) = v19;
  sub_254EB2CAC(v19);
  *(v1 + 296) = v20;
  *(v1 + 304) = sub_254EB3C44();
  *(v1 + 312) = swift_task_alloc();
  v21 = sub_254F29170();
  *(v1 + 320) = v21;
  sub_254EB2CAC(v21);
  *(v1 + 328) = v22;
  *(v1 + 336) = sub_254EB3C44();
  *(v1 + 344) = swift_task_alloc();
  v23 = sub_254EB3CA0();

  return MEMORY[0x2822009F8](v23, v24, v25);
}

uint64_t sub_254EE5B88()
{
  sub_254EB4B18();
  sub_254EB5BE4();
  v1 = v0[41];
  sub_254F280C0();
  sub_254F280C0();
  sub_254F29160();
  sub_254F29120();
  v2 = *(v1 + 8);
  v3 = sub_254EB63E8();
  v2(v3);
  v4 = sub_254F29160();
  sub_254F297A0();
  if (sub_254F29800())
  {
    *swift_slowAlloc() = 0;
    v5 = sub_254F29130();
    sub_254EC38C0(&dword_254EAE000, v6, v7, v5, "ContextRetrieval.retrieveAndRankIntelligenceCommandContextValues(query:)", "");
    sub_254EB3C04();
  }

  v8 = sub_254EB6D84();
  v9(v8);
  v10 = sub_254F291B0();
  sub_254EB82B4(v10);
  v0[44] = sub_254EB5AE0();
  v11 = sub_254EC0D3C();
  v12(v11);
  v13 = sub_254EB3AEC();
  v2(v13);
  if (qword_281427288 != -1)
  {
    sub_254EB6BD8();
    swift_once();
  }

  v14 = v0[35];
  v15 = v0[32];
  v16 = v0[33];
  (*(v16 + 104))(v14, *MEMORY[0x277D1EAD0], v15);
  v17 = sub_254EB63E8();
  sub_254F0B918(v17, v18);
  v0[45] = v19;
  (*(v16 + 8))(v14, v15);
  v20 = swift_task_alloc();
  v0[46] = v20;
  *v20 = v0;
  v20[1] = sub_254EE5DB8;
  sub_254EB3CE4();

  return sub_254EE42C4(v21, v22, v23);
}

uint64_t sub_254EE5DB8()
{
  sub_254EB3BD8();
  sub_254EB4918();
  v3 = v2;
  sub_254EB63D8();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 376) = v5;
  *(v3 + 384) = v0;

  if (!v0)
  {
  }

  sub_254EB3FB8();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_254EE5ED0()
{
  sub_254EB3BD8();
  v1 = type metadata accessor for IntelligenceCommandScorer(0);
  sub_254EB82B4(v1);
  *(v0 + 392) = sub_254ECDDF8();
  v2 = swift_task_alloc();
  *(v0 + 400) = v2;
  *v2 = v0;
  v2[1] = sub_254EE5F80;

  return sub_254ECDF20();
}

uint64_t sub_254EE5F80()
{
  sub_254EB3BD8();
  sub_254EB4918();
  sub_254EB5BF0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 408) = v3;

  v4 = sub_254EB3CA0();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_254EE6068(uint64_t a1)
{
  v101 = v1;
  v2 = *(v1 + 408);
  if (!v2)
  {
    v2 = sub_254EC9CBC(*(*(v1 + 376) + 16), 0.0);
  }

  if (*(v1 + 416))
  {
    v4 = 0.0;
  }

  else
  {
    v3 = *(v1 + 56);
    v4 = v3;
  }

  sub_254F284C0();

  v5 = sub_254F291D0();
  v6 = sub_254F296F0();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v1 + 240);
  v9 = *(v1 + 248);
  v10 = *(v1 + 232);
  if (v7)
  {
    v11 = *(v1 + 48);
    v98 = *(v1 + 248);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v100[0] = v13;
    *v12 = 136315138;
    v14 = MEMORY[0x259C2DCE0](v11, MEMORY[0x277D837D0]);
    v16 = sub_254EC2D74(v14, v15, v100);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_254EAE000, v5, v6, "Scoring apps in focus %s", v12, 0xCu);
    sub_254EB2BBC(v13);
    sub_254EB3C04();
    sub_254EB3C04();

    result = (*(v8 + 8))(v98, v10);
  }

  else
  {

    result = (*(v8 + 8))(v9, v10);
  }

  v18 = 0;
  v19 = *(v1 + 144);
  v20 = *(v1 + 120);
  v90 = *(v1 + 48);
  v96 = (v20 + 32);
  v22 = *(v1 + 376);
  v21 = *(v1 + 384);
  v93 = *(v22 + 16);
  v97 = v20;
  v99 = (v20 + 8);
  v89 = MEMORY[0x277D84F90];
  v95 = v19;
  while (v93 != v18)
  {
    if (v18 >= *(v22 + 16))
    {
      __break(1u);
LABEL_45:
      __break(1u);
      return result;
    }

    result = (*(v97 + 16))(*(v1 + 136), *(v1 + 376) + ((*(v97 + 80) + 32) & ~*(v97 + 80)) + *(v97 + 72) * v18, *(v1 + 112));
    v23 = *(v2 + 16);
    if (v18 == v23)
    {
      (*v99)(*(v1 + 136), *(v1 + 112));
      break;
    }

    if (v18 >= v23)
    {
      goto LABEL_45;
    }

    v25 = *(v1 + 216);
    v24 = *(v1 + 224);
    v26 = *(v2 + 4 * v18 + 32);
    v27 = *(v19 + 48);
    (*v96)(v25, *(v1 + 136), *(v1 + 112));
    *(v25 + v27) = v26;
    sub_254EEA034(v25, v24);
    v28 = *(v1 + 224);
    if (*(v90 + 16))
    {
      v29 = *(v1 + 208);
      v31 = *(v1 + 104);
      v30 = *(v1 + 112);
      sub_254ED7AC0(v28, v29, &qword_27F75EDB0, &qword_254F2AFA0);
      sub_254F28250();
      (*v99)(v29, v30);
      v32 = sub_254F281F0();
      v33 = sub_254EB2F2C(v31, 1, v32);
      v34 = *(v1 + 104);
      if (v33 == 1)
      {
        sub_254EB306C(*(v1 + 104), &unk_27F75EEB0, &unk_254F2B490);
LABEL_20:

        v35 = 0;
        v37 = 0xE000000000000000;
        goto LABEL_21;
      }

      v35 = sub_254F28150();
      v37 = v36;
      (*(*(v32 - 8) + 8))(v34, v32);
      if (!v37)
      {
        goto LABEL_20;
      }

LABEL_21:
      v38 = *(v1 + 224);
      v39 = *(v1 + 48);
      *(v1 + 16) = v35;
      *(v1 + 24) = v37;
      v40 = swift_task_alloc();
      *(v40 + 16) = v1 + 16;
      v41 = sub_254EBD590(sub_254EBD640, v40, v39);

      v19 = v95;
      v28 = *(v1 + 224);
      if (v4 <= *(v38 + *(v95 + 48)) && v41)
      {
        goto LABEL_24;
      }

LABEL_23:
      result = sub_254EB306C(v28, &qword_27F75EDB0, &qword_254F2AFA0);
      ++v18;
    }

    else
    {
      if (v4 > *(v28 + *(v19 + 48)))
      {
        goto LABEL_23;
      }

LABEL_24:
      sub_254EEA034(v28, *(v1 + 200));
      v42 = v89;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v100[0] = v89;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_254ECA7C4(0, *(v89 + 16) + 1, 1);
        v42 = v100[0];
      }

      v45 = *(v42 + 16);
      v44 = *(v42 + 24);
      if (v45 >= v44 >> 1)
      {
        v49 = sub_254EB5124(v44);
        sub_254ECA7C4(v49, v45 + 1, 1);
        v42 = v100[0];
      }

      ++v18;
      *(v42 + 16) = v45 + 1;
      sub_254EB5168();
      v89 = v42;
      result = sub_254EEA034(v48, v42 + v46 + *(v47 + 72) * v45);
    }
  }

  v100[0] = v89;

  sub_254EE8934(v100);
  if (v21)
  {
  }

  else
  {

    v50 = v100[0];
    v51 = *(v100[0] + 16);
    if (v51)
    {
      v100[0] = MEMORY[0x277D84F90];
      sub_254ECA76C(0, v51, 0);
      v94 = v100[0];
      sub_254EB5168();
      v53 = v50 + v52;
      v88 = *(v54 + 72);
      do
      {
        v91 = v53;
        v92 = v51;
        v55 = *(v1 + 184);
        v56 = *(v1 + 176);
        v57 = *(v1 + 112);
        sub_254ED7AC0(v53, *(v1 + 192), &qword_27F75EDB0, &qword_254F2AFA0);
        sub_254EB80C4();
        sub_254ED7AC0(v58, v59, v60, v61);
        sub_254F28200();
        v62 = *v99;
        (*v99)(v55, v57);
        sub_254EB80C4();
        sub_254ED7AC0(v63, v64, v65, v66);
        sub_254F28220();
        v62(v56, v57);
        sub_254F28020();
        v67 = *(v1 + 192);
        v69 = *(v1 + 160);
        v68 = *(v1 + 168);
        v70 = *(v1 + 112);
        v71 = *(v1 + 72);
        v72 = sub_254F28030();
        sub_254EB2F04(v71, 0, 1, v72);
        sub_254ED7AC0(v67, v68, &qword_27F75EDB0, &qword_254F2AFA0);
        sub_254F28240();
        v62(v68, v70);
        v73 = sub_254EB3AEC();
        sub_254ED7AC0(v73, v74, &qword_27F75EDB0, &qword_254F2AFA0);
        sub_254F28250();
        v62(v69, v70);
        sub_254F28210();
        sub_254EB306C(v67, &qword_27F75EDB0, &qword_254F2AFA0);
        v75 = v94;
        v100[0] = v94;
        v77 = *(v94 + 16);
        v76 = *(v94 + 24);
        if (v77 >= v76 >> 1)
        {
          v81 = sub_254EB5124(v76);
          sub_254ECA76C(v81, v77 + 1, 1);
          v75 = v100[0];
        }

        *(v75 + 16) = v77 + 1;
        sub_254EB5168();
        v94 = v78;
        (*(v80 + 32))(v78 + v79 + *(v80 + 72) * v77);
        v53 = v91 + v88;
        v51 = v92 - 1;
      }

      while (v92 != 1);

      v82 = v94;
    }

    else
    {

      v82 = MEMORY[0x277D84F90];
    }

    sub_254EB7D4C();
    sub_254EE6BA0(v83, v84, v85, v86);

    v87 = *(v1 + 8);

    return v87(v82);
  }
}

uint64_t sub_254EE69DC()
{
  v1 = *(v0 + 352);

  sub_254EE6BA0("ContextRetrieval.retrieveAndRankIntelligenceCommandContextValues(query:)", 72, 2, v1);

  sub_254EB4924();

  return v2();
}

uint64_t sub_254EE6BA0(const char *a1, uint64_t a2, int a3, uint64_t a4)
{
  v27 = a3;
  v28 = a1;
  v4 = sub_254F29180();
  v25 = *(v4 - 8);
  v26 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_254F29140();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_254F29170();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_254F280C0();
  v15 = sub_254F29160();
  sub_254F29190();
  v24 = sub_254F29790();
  result = sub_254F29800();
  if ((result & 1) == 0)
  {
LABEL_13:

    (*(v8 + 8))(v10, v7);
    return (*(v12 + 8))(v14, v11);
  }

  v23 = v11;
  if ((v27 & 1) == 0)
  {
    if (v28)
    {
LABEL_9:

      sub_254F291C0();

      v18 = v25;
      v17 = v26;
      if ((*(v25 + 88))(v6, v26) == *MEMORY[0x277D85B00])
      {
        v19 = "[Error] Interval already ended";
      }

      else
      {
        (*(v18 + 8))(v6, v17);
        v19 = "";
      }

      v20 = swift_slowAlloc();
      *v20 = 0;
      v21 = sub_254F29130();
      _os_signpost_emit_with_name_impl(&dword_254EAE000, v15, v24, v21, v28, v19, v20, 2u);
      MEMORY[0x259C2EB80](v20, -1, -1);
      v11 = v23;
      goto LABEL_13;
    }

    __break(1u);
  }

  if (v28 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v28 & 0xFFFFF800) != 0xD800)
  {
    if (v28 >> 16 <= 0x10)
    {
      v28 = &v29;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_254EE6EE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6, uint64_t a7)
{
  *(v7 + 392) = a4;
  *(v7 + 400) = a7;
  *(v7 + 545) = a6;
  *(v7 + 544) = a5;
  *(v7 + 376) = a2;
  *(v7 + 384) = a3;
  *(v7 + 368) = a1;
  type metadata accessor for ContextDefinition(0);
  *(v7 + 408) = swift_task_alloc();
  sub_254EC8BC0(&qword_27F75F140, &qword_254F2BE90);
  *(v7 + 416) = swift_task_alloc();
  v8 = sub_254F28080();
  *(v7 + 424) = v8;
  *(v7 + 432) = *(v8 - 8);
  *(v7 + 440) = swift_task_alloc();
  v9 = sub_254F291E0();
  *(v7 + 448) = v9;
  *(v7 + 456) = *(v9 - 8);
  *(v7 + 464) = swift_task_alloc();
  *(v7 + 472) = swift_task_alloc();
  v10 = sub_254EC8BC0(&qword_27F75F148, &unk_254F2BE98);
  *(v7 + 480) = v10;
  *(v7 + 488) = *(v10 - 8);
  *(v7 + 496) = swift_task_alloc();
  sub_254EC8BC0(&qword_27F75EE08, &qword_254F2B1A0);
  *(v7 + 504) = swift_task_alloc();
  *(v7 + 512) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_254EE712C, 0, 0);
}

uint64_t sub_254EE712C()
{
  v1 = *(v0 + 384);
  v2 = *(v1 + 16);
  if (v2)
  {
    v22 = *(v0 + 545);
    v21 = **(v0 + 376);
    v3 = v1 + 32;
    v4 = sub_254F29600();
    do
    {
      v25 = v2;
      v6 = *(v0 + 504);
      v5 = *(v0 + 512);
      v23 = *(v0 + 544);
      v7 = *(v0 + 392);
      v8 = *(v0 + 400);
      sub_254EB2F04(v5, 1, 1, v4);
      v24 = v3;
      sub_254EB5C9C(v3, v0 + 64);
      v9 = swift_allocObject();
      *(v9 + 16) = 0;
      *(v9 + 24) = 0;
      sub_254EB26F4((v0 + 64), v9 + 32);
      *(v9 + 72) = v7;
      *(v9 + 80) = v23 & 1;
      *(v9 + 81) = v22;
      *(v9 + 88) = v8;
      sub_254ED7AC0(v5, v6, &qword_27F75EE08, &qword_254F2B1A0);
      LODWORD(v6) = sub_254EB2F2C(v6, 1, v4);

      if (v6 == 1)
      {
        sub_254EB306C(*(v0 + 504), &qword_27F75EE08, &qword_254F2B1A0);
      }

      else
      {
        sub_254F295F0();
        v10 = sub_254EB63E8();
        v11(v10);
      }

      if (*(v9 + 16))
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v12 = sub_254F295C0();
        v14 = v13;
        swift_unknownObjectRelease();
      }

      else
      {
        v12 = 0;
        v14 = 0;
      }

      sub_254EC8BC0(&qword_27F75F138, &qword_254F2BE78);
      v15 = v14 | v12;
      if (v14 | v12)
      {
        v15 = v0 + 304;
        *(v0 + 304) = 0;
        *(v0 + 312) = 0;
        *(v0 + 320) = v12;
        *(v0 + 328) = v14;
      }

      v16 = *(v0 + 512);
      *(v0 + 336) = 1;
      *(v0 + 344) = v15;
      *(v0 + 352) = v21;
      swift_task_create();

      sub_254EB306C(v16, &qword_27F75EE08, &qword_254F2B1A0);
      v3 = v24 + 40;
      v2 = v25 - 1;
    }

    while (v25 != 1);
  }

  sub_254EC8BC0(&qword_27F75F138, &qword_254F2BE78);
  sub_254EC8BC0(&qword_27F75F090, "P<");
  sub_254F29650();
  v17 = MEMORY[0x277D84F90];
  *(v0 + 528) = MEMORY[0x277D84F90];
  *(v0 + 520) = v17;
  swift_task_alloc();
  sub_254EB5718();
  *(v0 + 536) = v18;
  *v18 = v19;
  sub_254EB6808(v18);
  sub_254EB3FB8();

  return MEMORY[0x2822004E8]();
}

uint64_t sub_254EE747C()
{
  sub_254EB3BD8();
  sub_254EB4918();
  v3 = v2;
  sub_254EB63D8();
  *v4 = v3;
  v5 = *v1;
  sub_254EB2CE0();
  *v6 = v5;

  if (v0)
  {
  }

  sub_254EB3FB8();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_254EE7584()
{
  v81 = v0;
  v1 = *(v0 + 16);
  v2 = *(v0 + 528);
  if (v1)
  {
    v3 = *(v0 + 40);
    *(v0 + 144) = *(v0 + 24);
    *(v0 + 160) = v3;
    *(v0 + 176) = *(v0 + 56);
    v4 = *(v1 + 16);
    v5 = *(v2 + 16);
    if (__OFADD__(v5, v4))
    {
      __break(1u);
    }

    else
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v2 = *(v0 + 528);
      if (!isUniquelyReferenced_nonNull_native || v5 + v4 > *(v2 + 24) >> 1)
      {
        sub_254EF0968();
        v2 = v7;
      }

      if (*(v1 + 16))
      {
        v8 = (*(v2 + 24) >> 1) - *(v2 + 16);
        sub_254F28260();
        if (v8 >= v4)
        {
          swift_arrayInitWithCopy();

          if (v4)
          {
            v9 = *(v2 + 16);
            v10 = __OFADD__(v9, v4);
            v11 = v9 + v4;
            if (v10)
            {
              __break(1u);
              return MEMORY[0x2822004E8]();
            }

            *(v2 + 16) = v11;
          }

LABEL_14:
          sub_254ED7AC0(v0 + 144, v0 + 224, &qword_27F75F150, &qword_254F2BEC0);
          if (!*(v0 + 248))
          {
            sub_254EB306C(v0 + 144, &qword_27F75F150, &qword_254F2BEC0);
            sub_254EB306C(v0 + 224, &qword_27F75F150, &qword_254F2BEC0);
            v26 = *(v0 + 520);
LABEL_20:
            *(v0 + 528) = v2;
            *(v0 + 520) = v26;
            swift_task_alloc();
            sub_254EB5718();
            *(v0 + 536) = v29;
            *v29 = v30;
            sub_254EB6808(v29);
            sub_254EB3FB8();

            return MEMORY[0x2822004E8]();
          }

          sub_254EB26F4((v0 + 224), v0 + 184);
          sub_254EB5C9C(v0 + 184, v0 + 264);
          v25 = swift_isUniquelyReferenced_nonNull_native();
          v26 = *(v0 + 520);
          if (v25)
          {
LABEL_16:
            v28 = *(v26 + 16);
            v27 = *(v26 + 24);
            if (v28 >= v27 >> 1)
            {
              sub_254EB5124(v27);
              sub_254EB4818();
              v26 = v71;
            }

            sub_254EB2BBC((v0 + 184));
            sub_254EB306C(v0 + 144, &qword_27F75F150, &qword_254F2BEC0);
            *(v26 + 16) = v28 + 1;
            sub_254EB26F4((v0 + 264), v26 + 40 * v28 + 32);
            goto LABEL_20;
          }

LABEL_50:
          sub_254EB4958();
          sub_254EB4818();
          v26 = v70;
          goto LABEL_16;
        }

LABEL_49:
        __break(1u);
        goto LABEL_50;
      }

      if (!v4)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
    goto LABEL_49;
  }

  (*(*(v0 + 488) + 8))(*(v0 + 496), *(v0 + 480));
  sub_254F284C0();

  v12 = sub_254F291D0();
  v13 = sub_254F296E0();

  v14 = os_log_type_enabled(v12, v13);
  v15 = *(v0 + 528);
  v16 = *(v0 + 472);
  v18 = *(v0 + 448);
  v17 = *(v0 + 456);
  if (v14)
  {
    v19 = *(v0 + 400);
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v78 = v21;
    *v20 = 134349314;
    *(v20 + 4) = *(v15 + 16);

    *(v20 + 12) = 2082;
    v79 = *(v19 + 16);
    v80 = *(v19 + 24);
    v22 = RequestID.debugDescription.getter();
    v24 = sub_254EC2D74(v22, v23, &v78);

    *(v20 + 14) = v24;
    _os_log_impl(&dword_254EAE000, v12, v13, "Retrieved %{public}ld values of context for %{public}s", v20, 0x16u);
    sub_254EB2BBC(v21);
    sub_254EB3C04();
    sub_254EB3C04();
  }

  else
  {
  }

  v31 = *(v17 + 8);
  v31(v16, v18);
  v32 = *(v0 + 520);
  if (*(v0 + 545) == 1)
  {
    v72 = v31;
    v33 = *(v32 + 16);
    if (v33)
    {
      v34 = *(v0 + 432);
      v35 = v32 + 32;
      v73 = (v34 + 32);
      v74 = (v34 + 16);
      v76 = MEMORY[0x277D84F90];
      do
      {
        v37 = *(v0 + 416);
        v36 = *(v0 + 424);
        v38 = *(v0 + 408);
        sub_254EB5C9C(v35, v0 + 104);
        sub_254EB5A9C((v0 + 104), *(v0 + 128));
        v39 = sub_254EC0D3C();
        v40(v39);
        (*v74)(v37, v38, v36);
        sub_254EB5C40(v38);
        sub_254EB2F04(v37, 0, 1, v36);
        sub_254EB2BBC((v0 + 104));
        if (sub_254EB2F2C(v37, 1, v36) == 1)
        {
          sub_254EB306C(*(v0 + 416), &qword_27F75F140, &qword_254F2BE90);
        }

        else
        {
          v41 = *v73;
          (*v73)(*(v0 + 440), *(v0 + 416), *(v0 + 424));
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v42 = v76;
          }

          else
          {
            sub_254EB4958();
            sub_254EF08A0();
            v42 = v48;
          }

          v44 = *(v42 + 16);
          v43 = *(v42 + 24);
          if (v44 >= v43 >> 1)
          {
            sub_254EB5124(v43);
            sub_254EF08A0();
            v42 = v49;
          }

          *(v42 + 16) = v44 + 1;
          sub_254EB5168();
          v76 = v45;
          v41(v45 + v46 + *(v47 + 72) * v44);
        }

        v35 += 40;
        --v33;
      }

      while (v33);

      v50 = v76;
    }

    else
    {

      v50 = MEMORY[0x277D84F90];
    }

    if (*(v50 + 16))
    {
      v51 = v50;
      sub_254F284C0();

      v52 = sub_254F291D0();
      v53 = sub_254F296E0();

      v54 = os_log_type_enabled(v52, v53);
      v55 = *(v0 + 464);
      v56 = *(v0 + 448);
      if (v54)
      {
        v75 = *(v0 + 448);
        v77 = *(v0 + 464);
        v57 = *(v0 + 424);
        v58 = *(v0 + 400);
        v59 = swift_slowAlloc();
        v78 = swift_slowAlloc();
        *v59 = 136315394;
        v60 = MEMORY[0x259C2DCE0](v51, v57);
        v62 = sub_254EC2D74(v60, v61, &v78);

        *(v59 + 4) = v62;
        *(v59 + 12) = 2082;
        v79 = *(v58 + 16);
        v80 = *(v58 + 24);
        v63 = RequestID.debugDescription.getter();
        v65 = sub_254EC2D74(v63, v64, &v78);

        *(v59 + 14) = v65;
        _os_log_impl(&dword_254EAE000, v52, v53, "Collection failed or was incomplete for the following ContextTypes: %s for %{public}s", v59, 0x16u);
        swift_arrayDestroy();
        sub_254EB3C04();
        sub_254EB3C04();

        v67 = v75;
        v66 = v77;
      }

      else
      {

        v66 = v55;
        v67 = v56;
      }

      v72(v66, v67);
    }
  }

  else
  {
  }

  sub_254F28480();

  sub_254EB4924();

  return v68();
}

uint64_t sub_254EE7D98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_254EB4B18();
  sub_254EB5BE4();
  (*(v12[61] + 8))(v12[62], v12[60]);

  sub_254EB4924();
  sub_254EB3CE4();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10, a11, a12);
}

uint64_t sub_254EE7E60()
{
  sub_254EB3BD8();
  sub_254EB4918();
  v3 = v2;
  sub_254EB63D8();
  *v4 = v3;
  v5 = *v1;
  sub_254EB2CE0();
  *v6 = v5;
  *(v3 + 264) = v0;

  if (!v0)
  {
  }

  sub_254EB3FB8();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_254EE7F60()
{
  v1 = v0[15];
  if (v1)
  {
    v2 = v0[28];
    v3 = swift_task_alloc();
    *(v3 + 16) = v2;
    v4 = sub_254EF7F20(sub_254EEA018, v3, v1);
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

  v5 = v0[17];
  *v5 = v4;
  *(v5 + 8) = 0u;
  *(v5 + 24) = 0u;
  *(v5 + 40) = 0;
  v6 = sub_254EB4A44();
  v7(v6);

  sub_254EB4924();

  return v8();
}

uint64_t sub_254EE8070()
{
  v41 = v0;
  v1 = *(v0 + 273);

  v2 = *(v0 + 264);
  if (v1)
  {
    v3 = *(v0 + 136);
    v4 = *(v0 + 144);

    *v3 = MEMORY[0x277D84F90];
    sub_254EB5C9C(v4, (v3 + 1));
  }

  else
  {
    v5 = *(v0 + 144);
    sub_254F284C0();
    sub_254EB5C9C(v5, v0 + 56);
    v6 = v2;

    v7 = sub_254F291D0();
    v8 = sub_254F296E0();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = *(v0 + 232);
      v33 = *(v0 + 264);
      v10 = *(v0 + 216);
      v12 = *(v0 + 192);
      v11 = *(v0 + 200);
      v36 = *(v0 + 176);
      v37 = *(v0 + 168);
      v38 = *(v0 + 184);
      v35 = *(v0 + 160);
      v13 = swift_slowAlloc();
      v39[0] = swift_slowAlloc();
      *v13 = 136315650;
      v14 = *(v0 + 80);
      v15 = *(v0 + 88);
      sub_254EB5A9C((v0 + 56), v14);
      v34 = v8;
      (*(v15 + 8))(v14, v15);
      v9(v10, v12, v11);
      sub_254EB5C40(v12);
      sub_254F29480();
      sub_254EB2BBC((v0 + 56));
      v16 = sub_254EB63E8();
      v19 = sub_254EC2D74(v16, v17, v18);

      *(v13 + 4) = v19;
      *(v13 + 12) = 2080;
      swift_getErrorValue();
      v20 = sub_254F29B60();
      v22 = sub_254EC2D74(v20, v21, v39);

      *(v13 + 14) = v22;
      *(v13 + 22) = 2082;
      v39[1] = *(v35 + 16);
      v40 = *(v35 + 24);
      v23 = RequestID.debugDescription.getter();
      v25 = sub_254EC2D74(v23, v24, v39);

      *(v13 + 24) = v25;
      _os_log_impl(&dword_254EAE000, v7, v34, "[%s] unable to retrieve context for due to %s for %{public}s", v13, 0x20u);
      swift_arrayDestroy();
      sub_254EB3C04();
      sub_254EB3C04();

      (*(v36 + 8))(v38, v37);
    }

    else
    {

      v26 = sub_254EB63E8();
      v27(v26);
      sub_254EB2BBC((v0 + 56));
    }

    v28 = *(v0 + 136);
    *v28 = MEMORY[0x277D84F90];
    *(v28 + 8) = 0u;
    *(v28 + 24) = 0u;
    *(v28 + 40) = 0;
  }

  v29 = sub_254EB4A44();
  v30(v29);

  sub_254EB4924();

  return v31();
}

uint64_t sub_254EE83E8()
{
  sub_254EB3BD8();
  sub_254EB4918();
  sub_254EB5BF0();
  *v2 = v1;
  v3 = *v0;
  sub_254EB2CE0();
  *v4 = v3;
  *(v6 + 48) = v5;

  v7 = sub_254EB3CA0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_254EE84E8()
{
  **(v0 + 16) = *(v0 + 48);
  sub_254EB4924();
  return v1();
}

uint64_t sub_254EE8518@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v17 = a1;
  v3 = sub_254EC8BC0(&unk_27F75EEB0, &unk_254F2B490);
  MEMORY[0x28223BE20](v3 - 8);
  v4 = sub_254F28080();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_254EC8BC0(&qword_27F75F160, &qword_254F2BEE8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v16 - v9;
  v11 = sub_254EC8BC0(&qword_27F75EE48, &unk_254F2B550);
  MEMORY[0x28223BE20](v11 - 8);
  v12 = sub_254EC8BC0(&qword_27F75EEC0, &unk_254F2B4A0);
  MEMORY[0x28223BE20](v12 - 8);
  sub_254F280E0();
  sub_254F280F0();
  v13 = sub_254F28030();
  sub_254EB2F04(v10, 1, 1, v13);
  (*(v5 + 16))(v7, v17, v4);
  sub_254F28100();
  sub_254F28210();
  v14 = sub_254F28260();
  return sub_254EB2F04(a2, 0, 1, v14);
}

uint64_t sub_254EE87A8()
{

  v1 = OBJC_IVAR____TtC30IntelligenceFlowContextRuntime16ContextRetriever_clock;
  sub_254F29A40();
  sub_254EB2D80();
  (*(v2 + 8))(v0 + v1);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t type metadata accessor for ContextRetriever(uint64_t a1)
{
  result = qword_281426CC8;
  if (!qword_281426CC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_254EE8898(uint64_t a1)
{
  result = sub_254F29A40();
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

uint64_t sub_254EE8934(uint64_t *a1)
{
  v2 = *(sub_254EC8BC0(&qword_27F75EDB0, &qword_254F2AFA0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_254EEA0A4(v3);
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v7[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v7[1] = v5;
  result = sub_254EE89E8(v7);
  *a1 = v3;
  return result;
}

uint64_t sub_254EE89E8(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_254F29AE0();
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
        sub_254EC8BC0(&qword_27F75EDB0, &qword_254F2AFA0);
        v6 = sub_254F295A0();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_254EC8BC0(&qword_27F75EDB0, &qword_254F2AFA0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_254EE8D80(v8, v9, a1, v4);
      *(v6 + 16) = 0;
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
    return sub_254EE8B30(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_254EE8B30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v39 = sub_254EC8BC0(&qword_27F75EDB0, &qword_254F2AFA0);
  v8 = MEMORY[0x28223BE20](v39);
  v38 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v29 - v11;
  result = MEMORY[0x28223BE20](v10);
  v16 = &v29 - v15;
  v31 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v18 = *(v14 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v36 = -v18;
    v37 = v17;
    v20 = a1 - a3;
    v30 = v18;
    v21 = v17 + v18 * a3;
    while (2)
    {
      v34 = v19;
      v35 = a3;
      v32 = v21;
      v33 = v20;
      v22 = v20;
      v23 = v39;
      do
      {
        sub_254ED7AC0(v21, v16, &qword_27F75EDB0, &qword_254F2AFA0);
        sub_254ED7AC0(v19, v12, &qword_27F75EDB0, &qword_254F2AFA0);
        v24 = *(v23 + 48);
        v25 = *&v16[v24];
        v26 = *&v12[v24];
        sub_254EB306C(v12, &qword_27F75EDB0, &qword_254F2AFA0);
        result = sub_254EB306C(v16, &qword_27F75EDB0, &qword_254F2AFA0);
        if (v26 >= v25)
        {
          break;
        }

        if (!v37)
        {
          __break(1u);
          return result;
        }

        v27 = v38;
        sub_254EEA034(v21, v38);
        v23 = v39;
        swift_arrayInitWithTakeFrontToBack();
        result = sub_254EEA034(v27, v19);
        v19 += v36;
        v21 += v36;
      }

      while (!__CFADD__(v22++, 1));
      a3 = v35 + 1;
      v19 = v34 + v30;
      v20 = v33 - 1;
      v21 = v32 + v30;
      if (v35 + 1 != v31)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_254EE8D80(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v118 = a1;
  v8 = sub_254EC8BC0(&qword_27F75EDB0, &qword_254F2AFA0);
  v126 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v122 = &v114 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v130 = &v114 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v132 = &v114 - v14;
  MEMORY[0x28223BE20](v13);
  v131 = &v114 - v15;
  v127 = a3;
  v16 = a3[1];
  if (v16 < 1)
  {
    v18 = MEMORY[0x277D84F90];
LABEL_98:
    v133 = *v118;
    if (!v133)
    {
      goto LABEL_139;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_100:
      v107 = (v18 + 16);
      v108 = *(v18 + 16);
      while (v108 >= 2)
      {
        if (!*v127)
        {
          goto LABEL_136;
        }

        v109 = v5;
        v110 = v18;
        v5 = (v18 + 16 * v108);
        v111 = *v5;
        v112 = &v107[2 * v108];
        v18 = v112[1];
        sub_254EE9698(*v127 + *(v126 + 72) * *v5, *v127 + *(v126 + 72) * *v112, *v127 + *(v126 + 72) * v18, v133);
        if (v109)
        {
          break;
        }

        if (v18 < v111)
        {
          goto LABEL_124;
        }

        if (v108 - 2 >= *v107)
        {
          goto LABEL_125;
        }

        *v5 = v111;
        v5[1] = v18;
        v113 = *v107 - v108;
        if (*v107 < v108)
        {
          goto LABEL_126;
        }

        v108 = *v107 - 1;
        memmove(v112, v112 + 2, 16 * v113);
        *v107 = v108;
        v18 = v110;
        v5 = 0;
      }

LABEL_108:

      return;
    }

LABEL_133:
    v18 = sub_254EE9B38(v18);
    goto LABEL_100;
  }

  v116 = a4;
  v17 = 0;
  v18 = MEMORY[0x277D84F90];
  v133 = v8;
  while (1)
  {
    v19 = v17;
    v20 = v17 + 1;
    v119 = v17;
    if (v17 + 1 < v16)
    {
      v117 = v5;
      v21 = *v127;
      v124 = v21;
      v125 = v16;
      v22 = *(v126 + 72);
      v128 = v17 + 1;
      v23 = v21 + v22 * v20;
      v24 = v131;
      sub_254ED7AC0(v23, v131, &qword_27F75EDB0, &qword_254F2AFA0);
      v25 = v21 + v22 * v19;
      v26 = v132;
      sub_254ED7AC0(v25, v132, &qword_27F75EDB0, &qword_254F2AFA0);
      v27 = *(v8 + 48);
      v28 = *(v24 + v27);
      v29 = *(v26 + v27);
      sub_254EB306C(v26, &qword_27F75EDB0, &qword_254F2AFA0);
      sub_254EB306C(v24, &qword_27F75EDB0, &qword_254F2AFA0);
      v30 = v125;
      v31 = v19 + 2;
      v129 = v22;
      v32 = v124 + v22 * (v19 + 2);
      while (1)
      {
        v33 = v31;
        if (++v128 >= v30)
        {
          break;
        }

        v34 = v131;
        sub_254ED7AC0(v32, v131, &qword_27F75EDB0, &qword_254F2AFA0);
        v35 = v132;
        sub_254ED7AC0(v23, v132, &qword_27F75EDB0, &qword_254F2AFA0);
        v36 = *(v133 + 48);
        v37 = *(v34 + v36);
        v38 = *(v35 + v36);
        sub_254EB306C(v35, &qword_27F75EDB0, &qword_254F2AFA0);
        sub_254EB306C(v34, &qword_27F75EDB0, &qword_254F2AFA0);
        v30 = v125;
        v32 += v129;
        v23 += v129;
        v31 = v33 + 1;
        if (v29 < v28 == v38 >= v37)
        {
          goto LABEL_9;
        }
      }

      v128 = v30;
LABEL_9:
      v5 = v117;
      if (v29 >= v28)
      {
        v20 = v128;
        v19 = v119;
        v8 = v133;
      }

      else
      {
        v20 = v128;
        v19 = v119;
        if (v128 < v119)
        {
          goto LABEL_130;
        }

        v8 = v133;
        if (v119 < v128)
        {
          v115 = v18;
          if (v30 >= v33)
          {
            v39 = v33;
          }

          else
          {
            v39 = v30;
          }

          v40 = v129 * (v39 - 1);
          v41 = v128;
          v42 = v129 * v39;
          v43 = v119 * v129;
          do
          {
            if (v19 != --v41)
            {
              v44 = *v127;
              if (!*v127)
              {
                goto LABEL_137;
              }

              sub_254EEA034(v44 + v43, v122);
              v45 = v43 < v40 || v44 + v43 >= v44 + v42;
              if (v45)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v43 != v40)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_254EEA034(v122, v44 + v40);
            }

            ++v19;
            v40 -= v129;
            v42 -= v129;
            v43 += v129;
          }

          while (v19 < v41);
          v5 = v117;
          v18 = v115;
          v8 = v133;
          v20 = v128;
          v19 = v119;
        }
      }
    }

    v46 = v127[1];
    if (v20 < v46)
    {
      if (__OFSUB__(v20, v19))
      {
        goto LABEL_129;
      }

      if (v20 - v19 < v116)
      {
        break;
      }
    }

LABEL_46:
    if (v20 < v19)
    {
      goto LABEL_128;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v128 = v20;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_254EF07EC();
      v18 = v105;
    }

    v62 = *(v18 + 16);
    v63 = v62 + 1;
    if (v62 >= *(v18 + 24) >> 1)
    {
      sub_254EF07EC();
      v18 = v106;
    }

    *(v18 + 16) = v63;
    v64 = v18 + 32;
    v65 = (v18 + 32 + 16 * v62);
    v66 = v128;
    *v65 = v119;
    v65[1] = v66;
    v129 = *v118;
    if (!v129)
    {
      goto LABEL_138;
    }

    if (v62)
    {
      while (1)
      {
        v67 = v63 - 1;
        v68 = (v64 + 16 * (v63 - 1));
        v69 = (v18 + 16 * v63);
        if (v63 >= 4)
        {
          break;
        }

        if (v63 == 3)
        {
          v70 = *(v18 + 32);
          v71 = *(v18 + 40);
          v80 = __OFSUB__(v71, v70);
          v72 = v71 - v70;
          v73 = v80;
LABEL_66:
          if (v73)
          {
            goto LABEL_115;
          }

          v85 = *v69;
          v84 = v69[1];
          v86 = __OFSUB__(v84, v85);
          v87 = v84 - v85;
          v88 = v86;
          if (v86)
          {
            goto LABEL_118;
          }

          v89 = v68[1];
          v90 = v89 - *v68;
          if (__OFSUB__(v89, *v68))
          {
            goto LABEL_121;
          }

          if (__OFADD__(v87, v90))
          {
            goto LABEL_123;
          }

          if (v87 + v90 >= v72)
          {
            if (v72 < v90)
            {
              v67 = v63 - 2;
            }

            goto LABEL_88;
          }

          goto LABEL_81;
        }

        if (v63 < 2)
        {
          goto LABEL_117;
        }

        v92 = *v69;
        v91 = v69[1];
        v80 = __OFSUB__(v91, v92);
        v87 = v91 - v92;
        v88 = v80;
LABEL_81:
        if (v88)
        {
          goto LABEL_120;
        }

        v94 = *v68;
        v93 = v68[1];
        v80 = __OFSUB__(v93, v94);
        v95 = v93 - v94;
        if (v80)
        {
          goto LABEL_122;
        }

        if (v95 < v87)
        {
          goto LABEL_95;
        }

LABEL_88:
        if (v67 - 1 >= v63)
        {
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
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
          goto LABEL_132;
        }

        if (!*v127)
        {
          goto LABEL_135;
        }

        v99 = (v64 + 16 * (v67 - 1));
        v100 = *v99;
        v101 = (v64 + 16 * v67);
        v102 = v101[1];
        sub_254EE9698(*v127 + *(v126 + 72) * *v99, *v127 + *(v126 + 72) * *v101, *v127 + *(v126 + 72) * v102, v129);
        if (v5)
        {
          goto LABEL_108;
        }

        if (v102 < v100)
        {
          goto LABEL_110;
        }

        v103 = v18;
        v18 = *(v18 + 16);
        if (v67 > v18)
        {
          goto LABEL_111;
        }

        *v99 = v100;
        v99[1] = v102;
        if (v67 >= v18)
        {
          goto LABEL_112;
        }

        v63 = v18 - 1;
        memmove((v64 + 16 * v67), v101 + 2, 16 * (v18 - 1 - v67));
        *(v103 + 16) = v18 - 1;
        v104 = v18 > 2;
        v18 = v103;
        v8 = v133;
        if (!v104)
        {
          goto LABEL_95;
        }
      }

      v74 = v64 + 16 * v63;
      v75 = *(v74 - 64);
      v76 = *(v74 - 56);
      v80 = __OFSUB__(v76, v75);
      v77 = v76 - v75;
      if (v80)
      {
        goto LABEL_113;
      }

      v79 = *(v74 - 48);
      v78 = *(v74 - 40);
      v80 = __OFSUB__(v78, v79);
      v72 = v78 - v79;
      v73 = v80;
      if (v80)
      {
        goto LABEL_114;
      }

      v81 = v69[1];
      v82 = v81 - *v69;
      if (__OFSUB__(v81, *v69))
      {
        goto LABEL_116;
      }

      v80 = __OFADD__(v72, v82);
      v83 = v72 + v82;
      if (v80)
      {
        goto LABEL_119;
      }

      if (v83 >= v77)
      {
        v97 = *v68;
        v96 = v68[1];
        v80 = __OFSUB__(v96, v97);
        v98 = v96 - v97;
        if (v80)
        {
          goto LABEL_127;
        }

        if (v72 < v98)
        {
          v67 = v63 - 2;
        }

        goto LABEL_88;
      }

      goto LABEL_66;
    }

LABEL_95:
    v17 = v128;
    v16 = v127[1];
    if (v128 >= v16)
    {
      goto LABEL_98;
    }
  }

  v47 = v19 + v116;
  if (__OFADD__(v19, v116))
  {
    goto LABEL_131;
  }

  if (v47 >= v46)
  {
    v47 = v127[1];
  }

  if (v47 < v19)
  {
LABEL_132:
    __break(1u);
    goto LABEL_133;
  }

  if (v20 == v47)
  {
    goto LABEL_46;
  }

  v115 = v18;
  v117 = v5;
  v48 = *(v126 + 72);
  v49 = *v127 + v48 * (v20 - 1);
  v50 = -v48;
  v51 = v19 - v20;
  v129 = *v127;
  v120 = v48;
  v121 = v47;
  v52 = v129 + v20 * v48;
LABEL_39:
  v128 = v20;
  v123 = v52;
  v124 = v51;
  v53 = v52;
  v125 = v49;
  v54 = v133;
  while (1)
  {
    v55 = v131;
    sub_254ED7AC0(v53, v131, &qword_27F75EDB0, &qword_254F2AFA0);
    v56 = v132;
    sub_254ED7AC0(v49, v132, &qword_27F75EDB0, &qword_254F2AFA0);
    v57 = *(v54 + 48);
    v58 = *(v55 + v57);
    v59 = *(v56 + v57);
    sub_254EB306C(v56, &qword_27F75EDB0, &qword_254F2AFA0);
    sub_254EB306C(v55, &qword_27F75EDB0, &qword_254F2AFA0);
    if (v59 >= v58)
    {
LABEL_44:
      v20 = v128 + 1;
      v49 = v125 + v120;
      v51 = v124 - 1;
      v52 = v123 + v120;
      if (v128 + 1 == v121)
      {
        v20 = v121;
        v5 = v117;
        v18 = v115;
        v8 = v133;
        v19 = v119;
        goto LABEL_46;
      }

      goto LABEL_39;
    }

    if (!v129)
    {
      break;
    }

    v60 = v130;
    sub_254EEA034(v53, v130);
    v54 = v133;
    swift_arrayInitWithTakeFrontToBack();
    sub_254EEA034(v60, v49);
    v49 += v50;
    v53 += v50;
    v45 = __CFADD__(v51++, 1);
    if (v45)
    {
      goto LABEL_44;
    }
  }

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
}

uint64_t sub_254EE9698(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v52 = a3;
  v54 = sub_254EC8BC0(&qword_27F75EDB0, &qword_254F2AFA0);
  v7 = MEMORY[0x28223BE20](v54);
  v53 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v7);
  v11 = &v46 - v10;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  v14 = a2 - a1;
  v15 = a2 - a1 == 0x8000000000000000 && v13 == -1;
  if (v15)
  {
    goto LABEL_61;
  }

  v16 = v52 - a2;
  if (v52 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_62;
  }

  v18 = v14 / v13;
  v57 = a1;
  v56 = a4;
  v19 = v16 / v13;
  if (v14 / v13 >= v16 / v13)
  {
    sub_254ECA24C(a2, v16 / v13, a4);
    v27 = a4 + v19 * v13;
    v28 = -v13;
    v29 = v27;
    v30 = v52;
    v51 = v28;
    v49 = a1;
LABEL_37:
    v52 = a2 + v28;
    v31 = v30;
    v47 = v29;
    v50 = a2;
    while (1)
    {
      if (v27 <= a4)
      {
        v57 = a2;
        v55 = v29;
        goto LABEL_59;
      }

      if (a2 <= a1)
      {
        break;
      }

      v48 = v29;
      v32 = a4;
      v33 = v31 + v51;
      v34 = v27 + v51;
      sub_254ED7AC0(v27 + v51, v11, &qword_27F75EDB0, &qword_254F2AFA0);
      v35 = v11;
      v36 = v53;
      sub_254ED7AC0(v52, v53, &qword_27F75EDB0, &qword_254F2AFA0);
      v37 = *(v54 + 48);
      v38 = *(v35 + v37);
      v39 = *(v36 + v37);
      v40 = v36;
      v11 = v35;
      sub_254EB306C(v40, &qword_27F75EDB0, &qword_254F2AFA0);
      sub_254EB306C(v35, &qword_27F75EDB0, &qword_254F2AFA0);
      if (v39 < v38)
      {
        v42 = v31 < v50 || v33 >= v50;
        v30 = v33;
        a4 = v32;
        if (v42)
        {
          a2 = v52;
          swift_arrayInitWithTakeFrontToBack();
          v30 = v33;
          v28 = v51;
          v29 = v48;
          a1 = v49;
        }

        else
        {
          v29 = v48;
          v15 = v31 == v50;
          v28 = v51;
          v43 = v52;
          a2 = v52;
          a1 = v49;
          if (!v15)
          {
            v44 = v30;
            v45 = v48;
            swift_arrayInitWithTakeBackToFront();
            v30 = v44;
            a2 = v43;
            v29 = v45;
          }
        }

        goto LABEL_37;
      }

      v41 = v31 < v27 || v33 >= v27;
      a4 = v32;
      if (v41)
      {
        v31 = v33;
        swift_arrayInitWithTakeFrontToBack();
        v27 = v34;
        v29 = v34;
        a1 = v49;
        a2 = v50;
      }

      else
      {
        v29 = v34;
        v15 = v27 == v31;
        v31 = v33;
        v27 = v34;
        a1 = v49;
        a2 = v50;
        if (!v15)
        {
          v31 = v33;
          swift_arrayInitWithTakeBackToFront();
          v27 = v34;
          v29 = v34;
        }
      }
    }

    v57 = a2;
    v55 = v47;
  }

  else
  {
    sub_254ECA24C(a1, v14 / v13, a4);
    v51 = a4 + v18 * v13;
    v55 = v51;
    while (a4 < v51 && a2 < v52)
    {
      sub_254ED7AC0(a2, v11, &qword_27F75EDB0, &qword_254F2AFA0);
      v21 = v53;
      sub_254ED7AC0(a4, v53, &qword_27F75EDB0, &qword_254F2AFA0);
      v22 = *(v54 + 48);
      v23 = *&v11[v22];
      v24 = *(v21 + v22);
      sub_254EB306C(v21, &qword_27F75EDB0, &qword_254F2AFA0);
      sub_254EB306C(v11, &qword_27F75EDB0, &qword_254F2AFA0);
      if (v24 >= v23)
      {
        if (a1 < a4 || a1 >= a4 + v13)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a4)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v56 = a4 + v13;
        a4 += v13;
      }

      else
      {
        if (a1 < a2 || a1 >= a2 + v13)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a2)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        a2 += v13;
      }

      a1 += v13;
      v57 = a1;
    }
  }

LABEL_59:
  sub_254EE9B4C(&v57, &v56, &v55);
  return 1;
}

uint64_t sub_254EE9B4C(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_254EC8BC0(&qword_27F75EDB0, &qword_254F2AFA0);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_20;
  }

  v9 = v4 + (v5 - v4) / v7 * v7;
  if (v3 < v4 || v3 >= v9)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_254EE9C38(char *result, int64_t a2, char a3, char *a4)
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
    sub_254EC8BC0(&qword_27F75F168, &qword_254F2BF00);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

uint64_t sub_254EE9D38(uint64_t a1)
{
  v2 = 0;
  v3 = *(a1 + 16);
  result = v3;
  v5 = a1 + 32;
  while (v3 != v2)
  {
    if (*(*(v5 + 8 * v2) + 16))
    {
      return v2;
    }

    ++v2;
  }

  return result;
}

uint64_t sub_254EE9D7C(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  if (a4 != result)
  {
    v7 = result;
    if (a4 >= result)
    {
      if (result < 0)
      {
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      v8 = *(a7 + 16);
      if (v8 <= result)
      {
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      if (a3)
      {
LABEL_50:
        __break(1u);
        return result;
      }

      v12 = *(*(a7 + 8 * result + 32) + 16);
      result = v12 - a2;
      if (__OFSUB__(v12, a2))
      {
        goto LABEL_45;
      }

      v10 = 1;
      a2 = a5;
      a3 = a6;
      v11 = a4;
      a4 = v7;
    }

    else
    {
      if (a4 < 0)
      {
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      v8 = *(a7 + 16);
      if (v8 <= a4)
      {
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      if (a6)
      {
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }

      v9 = *(*(a7 + 8 * a4 + 32) + 16);
      result = a5 - v9;
      if (__OFSUB__(a5, v9))
      {
        goto LABEL_43;
      }

      v10 = -1;
      v11 = v7;
    }

    v13 = a4 + 1;
    if (a4 + 1 >= v11)
    {
LABEL_27:
      if (a3)
      {
        return result;
      }

      if (v11 < 0)
      {
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

      if (v11 >= v8)
      {
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      v16 = __OFADD__(result, a2 * v10);
      result += a2 * v10;
      if (!v16)
      {
        return result;
      }

      __break(1u);
    }

    else
    {
      v14 = a7 + 8 * a4 + 40;
      while (v13 < v8)
      {
        v15 = *(*v14 + 16) * v10;
        v16 = __OFADD__(result, v15);
        result += v15;
        if (v16)
        {
          goto LABEL_34;
        }

        v17 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          goto LABEL_35;
        }

        ++v13;
        v14 += 8;
        if (v17 >= v11)
        {
          goto LABEL_27;
        }
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (a6)
  {
    if (a3)
    {
      return 0;
    }

    goto LABEL_36;
  }

  if (a3)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if (a4 < 0)
  {
    goto LABEL_39;
  }

  if (*(a7 + 16) <= a4)
  {
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  result = a5 - a2;
  if (__OFSUB__(a5, a2))
  {
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  return result;
}

unint64_t sub_254EE9EDC()
{
  result = qword_281426140;
  if (!qword_281426140)
  {
    sub_254EDEFE4(&qword_27F75F130, &unk_254F2BE60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281426140);
  }

  return result;
}

uint64_t sub_254EE9F40(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = *(v2 + 33);
  v10 = *(v2 + 40);
  swift_task_alloc();
  sub_254EB5718();
  *(v3 + 16) = v11;
  *v11 = v12;
  v11[1] = sub_254ECDD98;

  return sub_254EE6EE4(a1, a2, v6, v7, v8, v9, v10);
}

uint64_t sub_254EEA034(uint64_t a1, uint64_t a2)
{
  v4 = sub_254EC8BC0(&qword_27F75EDB0, &qword_254F2AFA0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_254EEA110()
{
  sub_254EB3BD8();
  v1[2] = v2;
  v1[3] = v0;
  sub_254EC8BC0(&qword_27F75EE08, &qword_254F2B1A0);
  v1[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_254EEA1A8, v0, 0);
}

uint64_t sub_254EEA1A8()
{
  sub_254EB3BD8();
  v0[5] = *(v0[3] + 136);

  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_254EEA250;
  v2 = v0[2];

  return sub_254EEA52C(v2);
}

uint64_t sub_254EEA250()
{
  sub_254EB3BD8();
  v1 = *(*v0 + 24);
  v2 = *v0;
  sub_254EB2CE0();
  *v3 = v2;
  *(v5 + 56) = v4;

  return MEMORY[0x2822009F8](sub_254EEA378, v1, 0);
}

uint64_t sub_254EEA378()
{
  sub_254EB3A3C();
  v1 = v0[3];
  v2 = v0[4];
  v3 = sub_254F29600();
  sub_254EB2F04(v2, 1, 1, v3);
  v4 = sub_254EEB4AC();
  v5 = swift_allocObject();
  v5[2] = v1;
  v5[3] = v4;
  v5[4] = v1;
  swift_retain_n();
  sub_254ECB91C(0, 0, v2, &unk_254F2C038, v5);

  sub_254EB4930();
  v7 = v0[7];

  return v6(v7);
}

uint64_t sub_254EEA45C()
{

  return v0;
}

uint64_t sub_254EEA484()
{
  v0 = sub_254EEA45C();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

void *sub_254EEA4B4(uint64_t a1, uint64_t a2)
{
  swift_defaultActor_initialize();
  v5 = MEMORY[0x277D84F90];
  v2[16] = sub_254F293D0();
  v2[17] = 0;
  v2[18] = v5;
  v2[19] = 0;
  v2[20] = v5;
  if (a2 <= 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = a2;
  }

  v2[14] = a1;
  v2[15] = v6;
  return v2;
}

uint64_t sub_254EEA52C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_254EEA54C, v1, 0);
}

uint64_t sub_254EEA54C()
{
  sub_254EB3A3C();
  v1 = v0[2];
  v2 = *(v1 + 16);
  v0[4] = v2;
  if (v2)
  {
    v3 = 0;
    v4 = MEMORY[0x277D84F90];
    while (1)
    {
      v0[5] = v3;
      v0[6] = v4;
      v5 = *(v1 + 16 * v3 + 40);
      v0[7] = v5;
      if (v5)
      {
        break;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_254EB6BEC();
        v4 = v9;
      }

      v6 = *(v4 + 16);
      if (v6 >= *(v4 + 24) >> 1)
      {
        sub_254EB7A38();
        v4 = v10;
      }

      v7 = v0[4];
      v8 = v0[5] + 1;
      *(v4 + 16) = v6 + 1;
      *(v4 + 8 * v6 + 32) = 0;
      if (v8 == v7)
      {
        goto LABEL_11;
      }

      v3 = v0[5] + 1;
      v1 = v0[2];
    }

    v13 = swift_task_alloc();
    v0[8] = v13;
    *v13 = v0;
    sub_254EB2E14(v13);

    return sub_254EEA93C();
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
LABEL_11:
    sub_254EB4930();

    return v11(v4);
  }
}

uint64_t sub_254EEA6A0()
{
  sub_254EB3BD8();
  v1 = *(*v0 + 24);
  v2 = *v0;
  sub_254EB2CE0();
  *v3 = v2;
  *(v5 + 72) = v4;

  return MEMORY[0x2822009F8](sub_254EEA7C8, v1, 0);
}

uint64_t sub_254EEA7C8()
{
  sub_254EB3A3C();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2 = v0[6];
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_254EB6BEC();
    v2 = v15;
  }

  v3 = *(v2 + 16);
  v4 = v3 + 1;
  if (v3 >= *(v2 + 24) >> 1)
  {
    sub_254EB7A38();
    v2 = v16;
  }

  v5 = v0[9];
  while (1)
  {
    v6 = v0[4];
    v7 = v0[5] + 1;
    *(v2 + 16) = v4;
    *(v2 + 8 * v3 + 32) = v5;
    if (v7 == v6)
    {
      break;
    }

    v8 = v0[5] + 1;
    v0[5] = v8;
    v0[6] = v2;
    v9 = *(v0[2] + 16 * v8 + 40);
    v0[7] = v9;
    if (v9)
    {

      v14 = swift_task_alloc();
      v0[8] = v14;
      *v14 = v0;
      sub_254EB2E14(v14);

      return sub_254EEA93C();
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_254EB6BEC();
      v2 = v11;
    }

    v5 = 0;
    v3 = *(v2 + 16);
    v4 = v3 + 1;
    if (v3 >= *(v2 + 24) >> 1)
    {
      sub_254EB7A38();
      v2 = v10;
      v5 = 0;
    }
  }

  sub_254EB4930();

  return v12(v2);
}

uint64_t sub_254EEA93C()
{
  sub_254EB3BD8();
  v1[6] = v2;
  v1[7] = v0;
  v1[5] = v3;
  v4 = sub_254F291E0();
  v1[8] = v4;
  v1[9] = *(v4 - 8);
  v1[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_254EEA9FC, v0, 0);
}

uint64_t sub_254EEA9FC()
{
  v23 = v0;
  v1 = v0[7];
  swift_beginAccess();
  v2 = *(v1 + 128);
  if (!*(v2 + 16))
  {
    goto LABEL_6;
  }

  v4 = v0[5];
  v3 = v0[6];

  v5 = sub_254F057E4(v4, v3);
  if ((v6 & 1) == 0)
  {

LABEL_6:
    sub_254F284E0();

    v10 = sub_254F291D0();
    v11 = sub_254F296F0();

    v12 = os_log_type_enabled(v10, v11);
    v14 = v0[9];
    v13 = v0[10];
    v15 = v0[8];
    if (v12)
    {
      v17 = v0[5];
      v16 = v0[6];
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v22 = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_254EC2D74(v17, v16, &v22);
      _os_log_impl(&dword_254EAE000, v10, v11, "Embedding cache is missing requested string %s", v18, 0xCu);
      sub_254EB2BBC(v19);
      MEMORY[0x259C2EB80](v19, -1, -1);
      MEMORY[0x259C2EB80](v18, -1, -1);
    }

    (*(v14 + 8))(v13, v15);
    goto LABEL_9;
  }

  v7 = *(v2 + 56) + 16 * v5;
  v8 = *v7;
  v9 = *(v7 + 8);
  sub_254EB6EF0(*v7, v9);

  if (v9)
  {
    goto LABEL_10;
  }

  sub_254EE304C(v8, 0);
LABEL_9:
  v8 = 0;
LABEL_10:

  sub_254EB4930();

  return v20(v8);
}

uint64_t sub_254EEABF8(char a1)
{
  v2 = v1;
  sub_254EB67F0(v1 + 136);

  sub_254EEBC38((v1 + 144), v1);
  v5 = *(*(v1 + 144) + 16);
  if (v5 < v4)
  {
    __break(1u);

    v14 = *(v1 + 136);
    if (v14)
    {
      sub_254EB7F8C();
      v15 = *(v14 + 24) & 0x3FLL;
    }

    else
    {
      v15 = 0;
    }

    v16 = *(v2[18] + 16);
    if (!v15 && v16 < 0x10)
    {

      __break(1u);
    }

    v17 = MEMORY[0x259C2C220](v16);
    result = sub_254EEB8E4(v17, v15);
    __break(1u);
  }

  else
  {
    sub_254EEB60C(v4, v5);
    v6 = *(v1 + 136);
    if (v6)
    {
      sub_254EB7F8C();
      v7 = *(v6 + 24) & 0x3FLL;
    }

    else
    {
      v7 = 0;
    }

    v8 = *(v2[18] + 16);
    if (v7 || v8 >= 0x10)
    {
      v9 = MEMORY[0x259C2C220](v8);
      sub_254EEB8E4(v9, v7);
    }

    else
    {

      v2[17] = 0;
    }

    swift_endAccess();
    v10 = v2[19];
    v11 = v2[20];
    sub_254EB67F0((v2 + 17));

    sub_254EEAD98(v10, v11);
    swift_endAccess();

    v12 = MEMORY[0x277D84F90];
    v2[19] = 0;
    v2[20] = v12;

    if (a1)
    {
      return sub_254EEAEAC();
    }
  }

  return result;
}

void sub_254EEAD98(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = *(a2 + 16);
  v5 = a2 + 32;
LABEL_2:
  while (v3 != v4)
  {
    v6 = (v5 + 16 * v3);
    v8 = *v6;
    v7 = v6[1];
    ++v3;
    v9 = *v2;
    v10 = v2[1];
    v11 = *(v10 + 16);
    if (!*v2)
    {
      v16 = (v10 + 40);
      v17 = v11 + 1;
      while (--v17)
      {
        v18 = v16 + 2;
        if (*(v16 - 1) != v8 || *v16 != v7)
        {
          v20 = sub_254F29B10();
          v16 = v18;
          if ((v20 & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_2;
      }

      v15 = 0;
LABEL_15:
      sub_254EEB718(v8, v7, v15);
      goto LABEL_16;
    }

    sub_254EEBB0C(v8, v7, v10 + 32, v11, (v9 + 16), v9 + 32);
    v13 = v12;
    v15 = v14;

    if (v13)
    {
      goto LABEL_15;
    }

LABEL_16:
  }
}

uint64_t sub_254EEAEAC()
{
  v1 = v0;
  v2 = sub_254F291E0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_beginAccess();
  v7 = *(v1[18] + 16);
  v8 = *(v1[20] + 16);
  v9 = __OFADD__(v7, v8);
  v10 = v7 + v8;
  if (v9)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v11 = v1[14];
  v9 = __OFSUB__(v10, v11);
  v12 = v10 - v11;
  if (v9)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v12 >= 1 && v7 != 0)
  {
    if (v7 >= v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = *(v1[18] + 16);
    }

    sub_254F284C0();
    v15 = sub_254F291D0();
    v16 = sub_254F296F0();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 134217984;
      *(v17 + 4) = v14;
      _os_log_impl(&dword_254EAE000, v15, v16, "Pruning unlocked cache: %ld", v17, 0xCu);
      MEMORY[0x259C2EB80](v17, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    v18 = v1[18];
    v32 = sub_254EEB200(v14, v1[17]);
    v20 = v19;
    v22 = v21;
    v24 = v23;
    result = sub_254EB67F0((v1 + 17));
    if (*(v18 + 16) < v14)
    {
      goto LABEL_29;
    }

    sub_254EEBF04(0, v14);
    result = swift_endAccess();
    if (v22 != v24)
    {
      if (v24 < 0)
      {
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      if (v22 >= v24)
      {
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      if (v22 < 0)
      {
LABEL_32:
        __break(1u);
        return result;
      }

      v25 = (v20 + 16 * v22 + 40);
      while (*(v20 + 16) >= v24)
      {
        if (v22 >= v24)
        {
          goto LABEL_26;
        }

        v27 = *(v25 - 1);
        v26 = *v25;
        sub_254EB67F0((v1 + 16));

        v28 = sub_254F057E4(v27, v26);
        if (v29)
        {
          v30 = v28;
          swift_isUniquelyReferenced_nonNull_native();
          v33 = v1[16];
          v1[16] = 0x8000000000000000;
          sub_254EC8BC0(&qword_27F75F170, &unk_254F2C040);
          sub_254F29A50();
          v31 = v33;

          sub_254EE304C(*(*(v31 + 56) + 16 * v30), *(*(v31 + 56) + 16 * v30 + 8));
          sub_254F29A70();
          v1[16] = v31;
        }

        ++v22;
        swift_endAccess();

        v25 += 2;
        if (v24 == v22)
        {
          goto LABEL_23;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

LABEL_23:
  }

  return result;
}

uint64_t sub_254EEB200(uint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) == 0)
  {
    return a2;
  }

  __break(1u);
  return result;
}

void *sub_254EEB22C()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_254EEB27C()
{
  sub_254EEB22C();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_254EEB2FC(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_254EEB310(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 9))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_254EEB350(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_254EEB3D0()
{
  sub_254EB3BD8();
  v1 = *(*(v0 + 16) + 136);
  *(v0 + 24) = v1;

  return MEMORY[0x2822009F8](sub_254EEB444, v1, 0);
}

uint64_t sub_254EEB444()
{
  sub_254EB3BD8();
  sub_254EEABF8(1);

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_254EEB4AC()
{
  result = qword_281426E18;
  if (!qword_281426E18)
  {
    type metadata accessor for ContextCache();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281426E18);
  }

  return result;
}

uint64_t sub_254EEB504()
{
  sub_254EB3A3C();
  v3 = v2;
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_254ED038C;

  return sub_254EEB3B0(v3, v4, v5, v6);
}

uint64_t sub_254EEB5B4()
{
  result = *v0;
  if (*v0)
  {
    result = swift_isUniquelyReferenced_native();
    if ((result & 1) == 0)
    {
      if (*v0)
      {
        v2 = sub_254F27AA0();

        *v0 = v2;
      }

      else
      {
        __break(1u);
      }
    }
  }

  return result;
}

unint64_t sub_254EEB60C(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_21;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v6 = result;
  v7 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v8 = (result - a2);
  if (__OFSUB__(0, v7))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v9 = v5 - v7;
  if (__OFADD__(v5, v8))
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (isUniquelyReferenced_nonNull_native)
  {
    if (v9 <= *(v4 + 24) >> 1)
    {
      goto LABEL_15;
    }

    if (v5 <= v9)
    {
      v11 = &v8[v5];
    }

    else
    {
      v11 = v5;
    }
  }

  else if (v5 <= v9)
  {
    v11 = &v8[v5];
  }

  else
  {
    v11 = v5;
  }

  sub_254ECA804(isUniquelyReferenced_nonNull_native, v11, 1);
  v4 = *v2;
LABEL_15:
  v12 = (v4 + 32 + 16 * v6);
  result = swift_arrayDestroy();
  if (!v7)
  {
LABEL_19:
    *v2 = v4;
    return result;
  }

  v13 = *(v4 + 16);
  if (__OFSUB__(v13, a2))
  {
    goto LABEL_25;
  }

  result = sub_254ECA150((v4 + 32 + 16 * a2), v13 - a2, v12);
  v14 = *(v4 + 16);
  v15 = __OFADD__(v14, v8);
  v16 = v14 - v7;
  if (!v15)
  {
    *(v4 + 16) = v16;
    goto LABEL_19;
  }

LABEL_26:
  __break(1u);
  return result;
}

void sub_254EEB718(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v10 = v3[1];
  v8 = v3 + 1;
  v9 = v10;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v8 = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_254ECA804(0, *(v9 + 16) + 1, 1);
    v9 = *v8;
  }

  v13 = *(v9 + 16);
  v12 = *(v9 + 24);
  if (v13 >= v12 >> 1)
  {
    sub_254ECA804(v12 > 1, v13 + 1, 1);
    v9 = *v8;
  }

  *(v9 + 16) = v13 + 1;
  v14 = v9 + 16 * v13;
  *(v14 + 32) = a1;
  *(v14 + 40) = a2;
  v4[1] = v9;
  v15 = *v4;
  if (!*v4)
  {
    if (v13 <= 0xE)
    {
      return;
    }

    v16 = 0;
    goto LABEL_15;
  }

  swift_beginAccess();
  if (MEMORY[0x259C2C1F0](*(v15 + 16) & 0x3FLL) <= v13)
  {
    v16 = *(v15 + 24) & 0x3FLL;
    if (v13 <= 0xE && v16 == 0)
    {

      *v4 = 0;
      return;
    }

LABEL_15:
    v18 = MEMORY[0x259C2C220](v13 + 1);
    sub_254EEB8E4(v18, v16);
    return;
  }

  sub_254EEB5B4();
  if (*v4)
  {
    sub_254EEB87C((*v4 + 16), *v4 + 32, a3, v4);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_254EEB8E4(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if (a2 <= a1)
  {
    a2 = a1;
  }

  v4 = sub_254EEB92C(v2[1], a2, 0, v3);

  *v2 = v4;
  return result;
}

uint64_t sub_254EEB92C(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = *(a1 + 16);
  if (a3)
  {
    v7 = 0;
  }

  else
  {
    v7 = a2;
  }

  v8 = MEMORY[0x259C2C220](v6, a2);
  v9 = 0;
  if (v8 <= v7)
  {
    v10 = v7;
  }

  else
  {
    v10 = v8;
  }

  if (v10 <= a4)
  {
    v11 = a4;
  }

  else
  {
    v11 = v10;
  }

  if (v11 >= 5)
  {
    v9 = MEMORY[0x259C2C230]();
    sub_254EEB9A4(a1, (v9 + 16), v9 + 32);
  }

  return v9;
}

uint64_t sub_254EEB9E4(uint64_t result, uint64_t a2, void *a3, uint64_t a4)
{
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      while (1)
      {
        sub_254F29BC0();

        sub_254F294C0();
        v7 = sub_254F29C00();
        if (__OFSUB__(1 << *a3, 1))
        {
          break;
        }

        v8 = sub_254F27A10();

        if (v8)
        {
          while (1)
          {
            sub_254F27A70();
          }
        }

        v7 = sub_254F27A60();
        if (++v6 == a2)
        {
          return v7;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return v7;
}

uint64_t sub_254EEBB0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  sub_254F29BC0();
  sub_254F294C0();
  result = sub_254F29C00();
  if (__OFSUB__(1 << *a5, 1))
  {
    __break(1u);
  }

  else
  {
    sub_254F27A40();
    v11 = v15;
    if ((v16 & 1) == 0)
    {
      do
      {
        v12 = (a3 + 16 * v11);
        if (*v12 == a1 && v12[1] == a2)
        {
          break;
        }

        if (sub_254F29B10())
        {
          break;
        }

        sub_254F27A70();
        v11 = sub_254F27A50();
      }

      while ((v14 & 1) == 0);
    }

    return v11;
  }

  return result;
}

void sub_254EEBC38(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(*a1 + 16);
  v4 = *a1 + 32;

  for (i = 0; ; ++i)
  {
    if (i == v3)
    {
LABEL_40:

LABEL_41:

      return;
    }

    v6 = (v4 + 16 * i);
    v8 = *v6;
    v7 = v6[1];
    v9 = *(a2 + 152);
    v10 = *(a2 + 160);
    v11 = *(v10 + 16);
    if (v9)
    {
      break;
    }

    v14 = (v10 + 40);
    v15 = v11 + 1;
    while (--v15)
    {
      if (*(v14 - 1) != v8 || *v14 != v7)
      {
        v14 += 2;
        if ((sub_254F29B10() & 1) == 0)
        {
          continue;
        }
      }

      goto LABEL_13;
    }

LABEL_5:
    ;
  }

  sub_254EEBB0C(v8, v7, v10 + 32, v11, (v9 + 16), v9 + 32);
  v13 = v12;

  if (v13)
  {
    goto LABEL_5;
  }

LABEL_13:

  v17 = i + 1;
  if (!__OFADD__(i, 1))
  {
    while (2)
    {
      v18 = *(v2 + 16);
      if (v17 == v18)
      {
        goto LABEL_41;
      }

      if (v17 >= v18)
      {
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
        __break(1u);
        break;
      }

      v19 = (v2 + 32 + 16 * v17);
      v21 = *v19;
      v20 = v19[1];
      v22 = *(a2 + 152);
      v23 = *(a2 + 160);
      v24 = *(v23 + 16);
      if (v22)
      {

        sub_254EEBB0C(v21, v20, v23 + 32, v24, (v22 + 16), v22 + 32);
        v26 = v25;

        if (v26)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v37 = (v23 + 40);
        v38 = v24 + 1;
        while (--v38)
        {
          if (*(v37 - 1) != v21 || *v37 != v20)
          {
            v37 += 2;
            if ((sub_254F29B10() & 1) == 0)
            {
              continue;
            }
          }

          goto LABEL_37;
        }

LABEL_18:
        if (i != v17)
        {
          if ((i & 0x8000000000000000) != 0)
          {
            goto LABEL_44;
          }

          v27 = *(v2 + 16);
          if (i >= v27)
          {
            goto LABEL_45;
          }

          if (v17 >= v27)
          {
            goto LABEL_46;
          }

          v28 = (v2 + 32 + 16 * i);
          v29 = *v28;
          v30 = v28[1];
          v32 = *v19;
          v31 = v19[1];

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_254EEA0B8(v2);
            v2 = v33;
          }

          if (i >= *(v2 + 16))
          {
            goto LABEL_47;
          }

          v34 = (v2 + 32 + 16 * i);
          *v34 = v32;
          v34[1] = v31;

          if (v17 >= *(v2 + 16))
          {
            goto LABEL_48;
          }

          v35 = (v2 + 32 + 16 * v17);
          *v35 = v29;
          v35[1] = v30;

          *a1 = v2;
        }

        v36 = __OFADD__(i++, 1);
        if (v36)
        {
          goto LABEL_43;
        }
      }

LABEL_37:
      v36 = __OFADD__(v17++, 1);
      if (v36)
      {
        __break(1u);
        goto LABEL_40;
      }

      continue;
    }
  }

  __break(1u);
}

char *sub_254EEBF04(char *result, uint64_t a2)
{
  v4 = result;
  v6 = v2 + 1;
  v5 = *v2;
  if (!*v2)
  {
    return sub_254EEB60C(v4, a2);
  }

  v7 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_18;
  }

  if (v7 <= 0)
  {
    return result;
  }

  v8 = v2;
  v9 = *(*v6 + 16);
  v10 = v9 - v7;
  if ((v9 - v7) > (v9 >> 1))
  {
    swift_beginAccess();
    if ((*(v5 + 16) & 0x3FLL) == (*(v5 + 24) & 0x3FLL) || v10 >= MEMORY[0x259C2C200]())
    {
      result = sub_254EEB5B4();
      v14 = *v8;
      if (*v8)
      {

        sub_254EEC060((v14 + 16), v14 + 32, v8, v4, a2);

        return sub_254EEB60C(v4, a2);
      }

LABEL_18:
      __break(1u);
      return result;
    }
  }

  sub_254EEB60C(v4, a2);
  swift_beginAccess();
  v11 = *(v5 + 24) & 0x3FLL;
  if (v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = *(*v6 + 16) >= 0x10uLL;
  }

  if (v12)
  {
    v13 = MEMORY[0x259C2C220]();
    return sub_254EEB8E4(v13, v11);
  }

  else
  {

    *v8 = 0;
  }

  return result;
}

void *sub_254EEC060(void *result, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x8000000000000000) != 0)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v5 = a5;
  v6 = a4;
  v8 = *(a3 + 8);
  v9 = *(v8 + 16);
  if (v9 < a4 || v9 < a5)
  {
    goto LABEL_18;
  }

  if (a5 < 0)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v12 = result;
  if (a4 == a5)
  {
LABEL_14:

    sub_254EEC3CC(v6, v5, v8, v12, a2);
  }

  if (a4 < a5)
  {

    v23 = v6;
    v13 = (v8 + 16 * v6 + 40);
    v14 = v6;
    v24 = v5;
    while (v14 < v5)
    {
      v15 = *(v13 - 1);
      v16 = *v13;
      v17 = *(a3 + 8);
      v18 = *(v17 + 16);

      sub_254EEBB0C(v15, v16, v17 + 32, v18, v12, a2);
      v20 = v19;
      v22 = v21;

      if (v20)
      {
        goto LABEL_16;
      }

      ++v14;
      result = sub_254EEC1DC(v22, v12, a2, a3);
      v13 += 2;
      v5 = v24;
      if (v24 == v14)
      {

        v8 = *(a3 + 8);
        v6 = v23;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

LABEL_20:
  __break(1u);
  return result;
}

unint64_t sub_254EEC1DC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v17 = sub_254F27A10();
  sub_254F27A70();
  if (v17)
  {
    v7 = sub_254F27A20();
    v8 = a1;
    while (1)
    {
      result = sub_254F27A50();
      if (v10)
      {
LABEL_26:
        __break(1u);
        return result;
      }

      if ((result & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (result >= *(*(a4 + 8) + 16))
      {
        goto LABEL_24;
      }

      sub_254F29BC0();

      sub_254F294C0();
      v11 = sub_254F29C00();

      v12 = 1 << *a2;
      if (__OFSUB__(v12, 1))
      {
        goto LABEL_25;
      }

      v13 = (v12 - 1) & v11;
      if (v8 >= v7)
      {
        if (v13 >= v7 && v8 >= v13)
        {
LABEL_18:
          sub_254F27A50();
          v8 = a1;
          sub_254F27A30();
        }
      }

      else if (v13 >= v7 || v8 >= v13)
      {
        goto LABEL_18;
      }

      sub_254F27A70();
    }
  }

  return sub_254F27A30();
}

uint64_t sub_254EEC3CC(uint64_t result, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    goto LABEL_57;
  }

  if (v5 >= 1)
  {
    v8 = result;
    v9 = *(a3 + 16);
    if ((v9 - v5) / 2 <= result)
    {
      v13 = a2;
      v14 = __OFSUB__(v9, a2);
      v15 = v9 - a2;
      if (v14)
      {
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
        goto LABEL_60;
      }

      if (v15 >= MEMORY[0x259C2C1F0](*a4 & 0x3FLL) / 3)
      {
        sub_254F27A10();
        v24 = sub_254F27A50();
        if ((v25 & 1) == 0 && v24 >= v13)
        {
          v14 = __OFSUB__(v24, v5);
          result = v24 - v5;
          if (v14)
          {
LABEL_56:
            __break(1u);
LABEL_57:
            __break(1u);
            goto LABEL_58;
          }

          sub_254F27A60();
        }

        return sub_254F27A70();
      }

      result = sub_254EEC81C(v13, a3);
      v17 = v16;
      v19 = v18 >> 1;
      while (v17 != v19)
      {
        if (v17 >= v19)
        {
          goto LABEL_51;
        }

        sub_254F29BC0();

        sub_254F294C0();
        result = sub_254F29C00();
        if (__OFSUB__(1 << *a4, 1))
        {
          goto LABEL_52;
        }

        if (sub_254F27A10())
        {
          while (1)
          {
            v20 = sub_254F27A50();
            if ((v21 & 1) == 0 && v20 == v13)
            {
              break;
            }

            sub_254F27A70();
          }
        }

        result = v13 - v5;
        if (__OFSUB__(v13, v5))
        {
          goto LABEL_53;
        }

        sub_254F27A60();

        v14 = __OFADD__(v13++, 1);
        if (v14)
        {
          goto LABEL_54;
        }

        ++v17;
      }

      return swift_unknownObjectRelease();
    }

    else
    {
      result = MEMORY[0x259C2C1F0](*a4 & 0x3FLL);
      if (result / 3 > v8)
      {
        if (v8 < 0)
        {
LABEL_61:
          __break(1u);
          goto LABEL_62;
        }

        if (v9 < v8)
        {
LABEL_62:
          __break(1u);
          return result;
        }

        for (i = 0; ; ++i)
        {
          if (i == v8)
          {

            goto LABEL_40;
          }

          sub_254F29BC0();

          sub_254F294C0();
          result = sub_254F29C00();
          if (__OFSUB__(1 << *a4, 1))
          {
            break;
          }

          if (sub_254F27A10())
          {
            while (1)
            {
              v11 = sub_254F27A50();
              if ((v12 & 1) == 0 && v11 == i)
              {
                break;
              }

              sub_254F27A70();
            }
          }

          result = i + v5;
          if (__OFADD__(i, v5))
          {
            goto LABEL_50;
          }

          sub_254F27A60();
        }

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
        __break(1u);
        goto LABEL_55;
      }

      sub_254F27A10();
      v22 = sub_254F27A50();
      if ((v23 & 1) == 0 && v22 < v8)
      {
        v14 = __OFADD__(v22, v5);
        result = v22 + v5;
        if (v14)
        {
LABEL_55:
          __break(1u);
          goto LABEL_56;
        }

        sub_254F27A60();
      }

      result = sub_254F27A70();
LABEL_40:
      v26 = a4[1];
      if (__OFSUB__(v26 >> 6, v5))
      {
        goto LABEL_59;
      }

      v27 = 1 << *a4;
      v14 = __OFSUB__(v27, 1);
      v28 = v27 - 1;
      if (v14)
      {
LABEL_60:
        __break(1u);
        goto LABEL_61;
      }

      v29 = (v28 & (((v26 >> 6) - v5) >> 63)) + (v26 >> 6) - v5;
      if (v29 < v28)
      {
        v28 = 0;
      }

      a4[1] = a4[1] & 0x3FLL | ((v29 - v28) << 6);
    }
  }

  return result;
}

uint64_t sub_254EEC81C(uint64_t result, uint64_t a2)
{
  if (*(a2 + 16) < result)
  {
    __break(1u);
  }

  else if ((result & 0x8000000000000000) == 0)
  {
  }

  __break(1u);
  return result;
}

uint64_t static IntelligenceFlowContextDaemon.start()()
{
  v0 = sub_254EC8BC0(&qword_27F75F178, &qword_254F2C050);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v11 - v1;
  v3 = sub_254F291E0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s30IntelligenceFlowContextRuntime0abC6DaemonV6logger2os6LoggerVvgZ_0();
  v7 = sub_254F291D0();
  v8 = sub_254F29710();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_254EAE000, v7, v8, "Starting intelligencecontextd", v9, 2u);
    MEMORY[0x259C2EB80](v9, -1, -1);
  }

  (*(v4 + 8))(v6, v3);
  _s30IntelligenceFlowContextRuntime0abC6DaemonV6logger2os6LoggerVvgZ_0();
  sub_254EB2F04(v2, 0, 1, v3);
  sub_254F285D0();
  sub_254F285E0();
  type metadata accessor for ContextXPCServiceServer();
  sub_254EECB1C(&qword_281427080, type metadata accessor for ContextXPCServiceServer, &unk_254F2CD10);
  sub_254F28520();
  type metadata accessor for UIContextXPCServiceServer();
  sub_254EECB1C(&qword_2814265E0, type metadata accessor for UIContextXPCServiceServer, "ݳ/-|Q");
  sub_254F28520();
  sub_254F29110();
  return sub_254F28EF0();
}

uint64_t sub_254EECB1C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t getEnumTagSinglePayload for IntelligenceFlowContextDaemon(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_BYTE *storeEnumTagSinglePayload for IntelligenceFlowContextDaemon(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

__n128 sub_254EECC88(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_254EECC9C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 17))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_254EECCDC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

unint64_t sub_254EECD38()
{
  v1 = sub_254F27B20();
  sub_254EB2CBC();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  sub_254EB3AB8();
  v7 = v6 - v5;
  v9 = *v0;
  v8 = v0[1];
  v10 = *(v0 + 16);
  sub_254F27B00();
  sub_254F27B10();
  (*(v3 + 8))(v7, v1);
  if (v10)
  {
    if (v10 != 1)
    {

      sub_254EB6AA0();
      sub_254F29940();

      v16 = 0xD000000000000012;
      MEMORY[0x259C2DC50](v9, v8);
      v13 = 10535;
      v14 = 0xE200000000000000;
      goto LABEL_7;
    }

    sub_254EB6AA0();
    sub_254F29940();

    sub_254EB4040();

    v11 = 0xD000000000000017;
    v12 = 0x8000000254F2E050;
  }

  else
  {
    sub_254EB6AA0();
    sub_254F29940();

    sub_254EB4040();

    v12 = 0x8000000254F2E070;
    v11 = 0xD000000000000011;
  }

  MEMORY[0x259C2DC50](v11, v12);
  MEMORY[0x259C2DC50](v9, v8);
  v13 = 2697511;
  v14 = 0xE300000000000000;
LABEL_7:
  MEMORY[0x259C2DC50](v13, v14);
  return v16;
}

uint64_t sub_254EECF14@<X0>(uint64_t *a1@<X8>)
{
  v105 = a1;
  sub_254F28080();
  sub_254EB2CBC();
  v101 = v3;
  v102 = v2;
  MEMORY[0x28223BE20](v2);
  sub_254EB3AB8();
  v100 = v5 - v4;
  v6 = sub_254F292D0();
  sub_254EB2CBC();
  v99 = v7;
  MEMORY[0x28223BE20](v8);
  sub_254EB3AB8();
  v11 = v10 - v9;
  v12 = sub_254F292F0();
  sub_254EB2CBC();
  v104 = v13;
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v94 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v103 = &v94 - v18;
  v19 = sub_254EC8BC0(&qword_27F75EE48, &unk_254F2B550);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v94 - v20;
  v22 = sub_254F29300();
  sub_254EB2CBC();
  v24 = v23;
  v26 = MEMORY[0x28223BE20](v25);
  v28 = &v94 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v30 = &v94 - v29;
  v98 = v1;
  sub_254F28220();
  if (sub_254EB2F2C(v21, 1, v22) == 1)
  {
    result = sub_254EED720(v21);
LABEL_32:
    v75 = v105;
    *v105 = 0;
    v75[1] = 0;
    v76 = -1;
    goto LABEL_33;
  }

  (*(v24 + 32))(v30, v21, v22);
  (*(v24 + 16))(v28, v30, v22);
  if ((*(v24 + 88))(v28, v22) != *MEMORY[0x277D72A58])
  {
    v61 = *(v24 + 8);
    v61(v30, v22);
    result = (v61)(v28, v22);
    goto LABEL_32;
  }

  v96 = v11;
  v97 = v6;
  (*(v24 + 96))(v28, v22);
  v32 = swift_projectBox();
  v33 = v104;
  v34 = *(v104 + 16);
  v35 = v12;
  v36 = v103;
  v34(v103, v32, v35);

  v34(v17, v36, v35);
  if ((*(v33 + 88))(v17, v35) != *MEMORY[0x277D729B0])
  {
    v62 = *(v33 + 8);
    v62(v36, v35);
    v63 = sub_254EB6C10();
    v64(v63);
    result = (v62)(v17, v35);
    goto LABEL_32;
  }

  (*(v33 + 96))(v17, v35);
  v37 = v99;
  (*(v99 + 32))(v96, v17, v97);
  v38 = sub_254F292C0();
  v39 = [v38 personHandle];
  v95 = v38;
  v40 = [v38 displayName];
  v41 = sub_254F29450();
  v43 = v42;

  v44 = v100;
  sub_254F28240();
  v45 = (*(v101 + 88))(v44, v102);
  v46 = v45 == *MEMORY[0x277D1EA78] || v45 == *MEMORY[0x277D1EB38];
  v47 = v35;
  if (v46)
  {

    v48 = v103;
    v49 = v104;
    if (v39)
    {
      if ([v39 type] == 1)
      {
        v50 = [v39 value];
        if (v50)
        {
          v51 = v50;
          v52 = sub_254F29450();
          v102 = v47;
          v53 = v48;
          v54 = v52;
          v55 = v37;
          v57 = v56;

          (*(v55 + 8))(v96, v97);
          (*(v49 + 8))(v53, v102);
          v58 = sub_254EB6C10();
          result = v59(v58);
          v60 = v105;
          *v105 = v54;
          v60[1] = v57;
          *(v60 + 16) = 0;
          return result;
        }
      }
    }

    v83 = sub_254EB3D20();
    v84(v83);
    (*(v49 + 8))(v48, v47);
    goto LABEL_31;
  }

  v65 = v45;
  if (v45 == *MEMORY[0x277D1EB28])
  {

    v66 = v104;
    if (v39)
    {
      if ([v39 type] == 2)
      {
        v67 = [v39 value];
        if (v67)
        {
          v68 = v67;
          v69 = sub_254F29450();
          v70 = v37;
          v72 = v71;

          (*(v70 + 8))(v96, v97);
          (*(v66 + 8))(v103, v47);
          v73 = sub_254EB6C10();
          result = v74(v73);
          v75 = v105;
          *v105 = v69;
          v75[1] = v72;
          v76 = 1;
          goto LABEL_33;
        }
      }
    }

    v90 = sub_254EB3D20();
    v91(v90);
    (*(v66 + 8))(v103, v35);
LABEL_31:
    v92 = sub_254EB6C10();
    result = v93(v92);
    goto LABEL_32;
  }

  v77 = *MEMORY[0x277D1EA80];

  if (v65 != v77)
  {

    v85 = sub_254EB3D20();
    v86(v85);
    (*(v104 + 8))(v103, v47);
    v87 = sub_254EB6C10();
    v88(v87);
    v89 = v105;
    *v105 = 0;
    v89[1] = 0;
    *(v89 + 16) = -1;
    return (*(v101 + 8))(v100, v102);
  }

  v78 = sub_254EB3D20();
  v79(v78);
  (*(v104 + 8))(v103, v47);
  v80 = sub_254EB6C10();
  result = v81(v80);
  v82 = HIBYTE(v43) & 0xF;
  if ((v43 & 0x2000000000000000) == 0)
  {
    v82 = v41 & 0xFFFFFFFFFFFFLL;
  }

  if (!v82)
  {

    goto LABEL_32;
  }

  v75 = v105;
  *v105 = v41;
  v75[1] = v43;
  v76 = 2;
LABEL_33:
  *(v75 + 16) = v76;
  return result;
}

uint64_t sub_254EED720(uint64_t a1)
{
  v2 = sub_254EC8BC0(&qword_27F75EE48, &unk_254F2B550);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_254EED788(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_254EED7A4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 9))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_254EED7E4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_254EED828(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_254EED850(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_254F16D4C(result, 1);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = *(v6 + 16);
  if ((*(v6 + 24) >> 1) - v7 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  memcpy((v6 + 32 * v7 + 32), (a1 + 32), 32 * v3);

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v8 = *(v6 + 16);
  v9 = __OFADD__(v8, v3);
  v10 = v8 + v3;
  if (!v9)
  {
    *(v6 + 16) = v10;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_254EED98C(unint64_t a1)
{
  v3 = sub_254EC5594(a1);
  v4 = sub_254EC5594(*v1);
  v5 = __OFADD__(v4, v3);
  result = v4 + v3;
  if (v5)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_254F16DAC(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_254EF1594(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v10 < 1)
  {
LABEL_6:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_254EEDAE8(uint64_t a1)
{
  result = sub_254EB8060(a1);
  if (v7)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = v6;
  v5(result, 1);
  v9 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v10 = (*(v9 + 24) >> 1) - *(v9 + 16);
  result = v8(0);
  if (v10 < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v9;
    return result;
  }

  v11 = *(v9 + 16);
  v7 = __OFADD__(v11, v1);
  v12 = v11 + v1;
  if (!v7)
  {
    *(v9 + 16) = v12;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t KGEntityGrounding.__allocating_init(knosisServer:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

void sub_254EEDC30()
{
  sub_254EC1A1C();
  v71 = v0;
  v72 = v1;
  v78 = v2;
  v3 = sub_254EC8BC0(&qword_27F75EE48, &unk_254F2B550);
  sub_254EB2D90(v3);
  sub_254EB6BCC();
  MEMORY[0x28223BE20](v4);
  sub_254EB4020();
  v70 = v5;
  sub_254EB7FC4();
  sub_254F28080();
  sub_254EB2CBC();
  v76 = v7;
  v77 = v6;
  MEMORY[0x28223BE20](v6);
  sub_254EB2E04();
  v75 = v8 - v9;
  sub_254EB3D2C();
  MEMORY[0x28223BE20](v10);
  sub_254EB59E4();
  v74 = v11;
  sub_254EB7FC4();
  v73 = sub_254F29140();
  sub_254EB2CBC();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  sub_254EB2E04();
  v17 = v15 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v68 - v19;
  v21 = sub_254F29170();
  sub_254EB2CBC();
  v23 = v22;
  MEMORY[0x28223BE20](v24);
  sub_254EB2E04();
  v27 = v25 - v26;
  MEMORY[0x28223BE20](v28);
  sub_254F280C0();
  sub_254F280C0();
  sub_254F29160();
  sub_254F29120();
  v29 = *(v23 + 8);
  v29(v27, v21);
  v30 = sub_254F29160();
  v31 = sub_254F297A0();
  if (sub_254F29800())
  {
    v32 = swift_slowAlloc();
    v69 = v17;
    v33 = v32;
    *v32 = 0;
    v34 = sub_254F29130();
    _os_signpost_emit_with_name_impl(&dword_254EAE000, v30, v31, v34, "KGEntityGrounding.performGrounding", "", v33, 2u);
    v35 = v33;
    v17 = v69;
    MEMORY[0x259C2EB80](v35, -1, -1);
  }

  v36 = v73;
  (*(v13 + 16))(v17, v20, v73);
  sub_254F291B0();
  swift_allocObject();
  v37 = sub_254F291A0();
  (*(v13 + 8))(v20, v36);
  v38 = sub_254EB82CC();
  (v29)(v38);
  sub_254F28240();
  v39 = sub_254EB82CC();
  v40(v39);
  v41 = sub_254EB82CC();
  v43 = v42(v41);
  if (v43 != *MEMORY[0x277D1EA78] && v43 != *MEMORY[0x277D1EB38] && v43 != *MEMORY[0x277D1EB28] && v43 != *MEMORY[0x277D1EA80])
  {
    v64 = sub_254EB82CC();
    v65(v64);
    v66 = 0;
LABEL_20:
    v53 = 2;
    goto LABEL_22;
  }

  sub_254EECF14(v81);
  v47 = v82;
  if (v82 == 255)
  {
    v53 = 2;
    v66 = 1;
    goto LABEL_22;
  }

  v48 = v81[1];
  sub_254EEE510();
  v50 = v49;
  v51 = sub_254EB81BC();
  sub_254EEFCEC(v51, v52, v47);
  v66 = v79;
  v53 = v80;
  if (!sub_254EEFD18(v50))
  {
    sub_254EF1328(v66, v53);

    v66 = 2;
    goto LABEL_20;
  }

  if ((v50 & 0xC000000000000001) != 0)
  {
    MEMORY[0x259C2E0D0](0, v50);
    goto LABEL_19;
  }

  if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v54 = *(v50 + 32);
LABEL_19:
    sub_254EC1AEC();

    v55 = sub_254F292F0();
    v56 = swift_allocBox();
    v58 = v57;
    v59 = v48;
    sub_254F292B0();
    (*(*(v55 - 8) + 104))(v58, *MEMORY[0x277D729B0], v55);
    v60 = v70;
    *v70 = v56;
    v61 = *MEMORY[0x277D72A58];
    v62 = sub_254F29300();
    sub_254EB2D80();
    (*(v63 + 104))(v60, v61, v62);
    sub_254EB2F04(v60, 0, 1, v62);
    sub_254F28230();

LABEL_22:
    v67 = v72;
    *v72 = v66;
    *(v67 + 8) = v53;
    sub_254EEE1CC("KGEntityGrounding.performGrounding", 34, 2, v37);

    sub_254EB4078();
    return;
  }

  __break(1u);
}

uint64_t sub_254EEE1CC(const char *a1, uint64_t a2, int a3, uint64_t a4)
{
  v27 = a3;
  v28 = a1;
  v4 = sub_254F29180();
  v25 = *(v4 - 8);
  v26 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_254F29140();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_254F29170();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_254F280C0();
  v15 = sub_254F29160();
  sub_254F29190();
  v24 = sub_254F29790();
  result = sub_254F29800();
  if ((result & 1) == 0)
  {
LABEL_13:

    (*(v8 + 8))(v10, v7);
    return (*(v12 + 8))(v14, v11);
  }

  v23 = v11;
  if ((v27 & 1) == 0)
  {
    if (v28)
    {
LABEL_9:

      sub_254F291C0();

      v18 = v25;
      v17 = v26;
      if ((*(v25 + 88))(v6, v26) == *MEMORY[0x277D85B00])
      {
        v19 = "[Error] Interval already ended";
      }

      else
      {
        (*(v18 + 8))(v6, v17);
        v19 = "";
      }

      v20 = swift_slowAlloc();
      *v20 = 0;
      v21 = sub_254F29130();
      _os_signpost_emit_with_name_impl(&dword_254EAE000, v15, v24, v21, v28, v19, v20, 2u);
      MEMORY[0x259C2EB80](v20, -1, -1);
      v11 = v23;
      goto LABEL_13;
    }

    __break(1u);
  }

  if (v28 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v28 & 0xFFFFF800) != 0xD800)
  {
    if (v28 >> 16 <= 0x10)
    {
      v28 = &v29;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

void sub_254EEE510()
{
  sub_254EC1A1C();
  v1 = v0;
  v124 = v2;
  v111 = sub_254F27B50();
  sub_254EB2CBC();
  v116 = v3;
  MEMORY[0x28223BE20](v4);
  sub_254EB3AB8();
  v110 = v6 - v5;
  sub_254EB7FC4();
  v127 = sub_254F27BB0();
  sub_254EB2CBC();
  v115 = v7;
  MEMORY[0x28223BE20](v8);
  sub_254EB2E04();
  v109 = v9 - v10;
  sub_254EB3D2C();
  MEMORY[0x28223BE20](v11);
  sub_254EB59E4();
  v112 = v12;
  v13 = sub_254EC8BC0(&qword_27F75F180, &qword_254F2C258);
  sub_254EB2D90(v13);
  sub_254EB6BCC();
  MEMORY[0x28223BE20](v14);
  v16 = &v104 - v15;
  v117 = sub_254EC8BC0(&qword_27F75F188, &qword_254F2C260);
  sub_254EB2D80();
  MEMORY[0x28223BE20](v17);
  sub_254EB2E04();
  v130 = (v18 - v19);
  sub_254EB3D2C();
  MEMORY[0x28223BE20](v20);
  sub_254EB59E4();
  v131 = v21;
  v22 = sub_254EC8BC0(&qword_27F75F190, &qword_254F2C268);
  sub_254EB2CBC();
  v133 = v23;
  sub_254EB6BCC();
  MEMORY[0x28223BE20](v24);
  v26 = &v104 - v25;
  v27 = sub_254EC8BC0(&qword_27F75F198, &qword_254F2C270);
  v28 = sub_254EB2D90(v27);
  MEMORY[0x28223BE20](v28);
  sub_254EB2E04();
  v31 = v29 - v30;
  MEMORY[0x28223BE20](v32);
  sub_254EB59E4();
  v136 = v33;
  v114 = sub_254EC8BC0(&qword_27F75F1A0, &qword_254F2C278);
  sub_254EB2CBC();
  v132 = v34;
  sub_254EB6BCC();
  MEMORY[0x28223BE20](v35);
  sub_254EB4020();
  v137 = v36;
  v119 = sub_254EC8BC0(&qword_27F75F1A8, &qword_254F2C280);
  sub_254EB2CBC();
  v118 = v37;
  MEMORY[0x28223BE20](v38);
  sub_254EB2E04();
  v135 = v39 - v40;
  sub_254EB3D2C();
  MEMORY[0x28223BE20](v41);
  sub_254EB59E4();
  v128 = v42;
  v126 = sub_254EC8BC0(&qword_27F75F1B0, &qword_254F2C288);
  sub_254EB2CBC();
  v123 = v43;
  sub_254EB6BCC();
  MEMORY[0x28223BE20](v44);
  sub_254EB4020();
  v125 = v45;
  sub_254EB7FC4();
  sub_254F27B70();
  sub_254EB2CBC();
  MEMORY[0x28223BE20](v46);
  sub_254EB3AB8();
  v122 = sub_254F27AE0();
  sub_254EB2CBC();
  v121 = v47;
  MEMORY[0x28223BE20](v48);
  sub_254EB3AB8();
  v51 = v50 - v49;
  v52 = *(v1 + 8);
  v53 = *(v1 + 16);
  v108 = *v1;
  v138 = v108;
  v139 = v52;
  v107 = v52;
  v106 = v53;
  LOBYTE(v140) = v53;
  sub_254EECD38();
  sub_254F27B60();
  sub_254F27AF0();
  v54 = sub_254EB81BC();
  v55(v54);
  v120 = v51;
  sub_254F27AD0();
  v143 = MEMORY[0x277D84F90];
  v56 = sub_254EBEDE8(&qword_27F75F1B8, &qword_27F75F1B0, &qword_254F2C288, MEMORY[0x277D1F3C0]);
  v57 = sub_254EF1344();
  v58 = sub_254EBEDE8(&qword_27F75F1C8, &qword_27F75F1D0, &qword_254F2C290, MEMORY[0x277D1F3F8]);
  v59 = v126;
  v134 = v56;
  v113 = v57;
  sub_254F27BE0();
  (*(v118 + 16))(v135, v128, v119);
  v60 = v127;
  v138 = v59;
  v139 = v127;
  v140 = v134;
  v141 = v113;
  v142 = v58;
  swift_getOpaqueTypeConformance2();
  sub_254F29530();
  v61 = v114;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v134 = (v133 + 32);
  v135 = AssociatedConformanceWitness;
  v133 += 8;
  v113 = (v115 + 32);
  v105 = (v116 + 8);
  v104 = (v115 + 8);
  v116 = MEMORY[0x277D84F90];
  v115 = MEMORY[0x277D84F90];
  v63 = v136;
  v129 = v31;
LABEL_2:
  v64 = v117;
  v65 = v132;
  while (1)
  {
    sub_254F29820();
    sub_254ED20D4(v31, v63, &qword_27F75F198, &qword_254F2C270);
    v66 = sub_254EC8BC0(&qword_27F75F1D8, &unk_254F2C298);
    if (sub_254EB2F2C(v63, 1, v66) == 1)
    {
      break;
    }

    v67 = *(v66 + 48);
    (*v134)(v26, v63, v22);
    v68 = v63 + v67;
    v69 = v26;
    v70 = v22;
    sub_254ED20D4(v68, v16, &qword_27F75F180, &qword_254F2C258);
    if (sub_254EB2F2C(v16, 1, v64) == 1)
    {
      v71 = sub_254EBED80();
      v72(v71, v22);
      sub_254EB306C(v16, &qword_27F75F180, &qword_254F2C258);
      v26 = v69;
      v63 = v136;
    }

    else
    {
      v73 = v61;
      v74 = v16;
      v75 = v131;
      sub_254ED20D4(v16, v131, &qword_27F75F188, &qword_254F2C260);
      v76 = v130;
      sub_254EF139C(v75, v130);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v80 = *v113;
        v81 = v109;
        (*v113)(v109, v76, v60);
        v80(v112, v81, v60);
        v138 = v108;
        v139 = v107;
        LOBYTE(v140) = v106;
        CustomGraphPerson.toINPerson(using:)();
        MEMORY[0x259C2DCB0]();
        if (*((v143 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v143 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_254F29580();
        }

        sub_254F295B0();
        v115 = v143;
        v82 = v110;
        sub_254F27BC0();
        v83 = sub_254F27B30();
        v85 = v84;
        v138 = sub_254F27B40();
        v114 = sub_254F29AF0();
        v87 = v86;
        v138 = v83;
        v139 = v85;

        MEMORY[0x259C2DC50](v114, v87);

        v88 = v139;
        v114 = v138;
        (*v105)(v82, v111);
        v61 = v73;
        v89 = v88;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_254EEFF7C();
          v116 = v97;
        }

        v90 = *(v116 + 16);
        v91 = v112;
        v22 = v70;
        if (v90 >= *(v116 + 24) >> 1)
        {
          sub_254EEFF7C();
          v116 = v98;
          v91 = v112;
        }

        v26 = v69;
        v92 = v127;
        (*v104)(v91, v127);
        sub_254EB306C(v131, &qword_27F75F188, &qword_254F2C260);
        v93 = sub_254EBED80();
        v94(v93, v22);
        v95 = v116;
        *(v116 + 16) = v90 + 1;
        v96 = v95 + 16 * v90;
        v60 = v92;
        *(v96 + 32) = v114;
        *(v96 + 40) = v89;
        v31 = v129;
        v16 = v74;
        v63 = v136;
        goto LABEL_2;
      }

      v77 = *v76;
      v138 = v77;
      sub_254EC8BC0(&qword_27F75F090, "P<");
      swift_willThrowTypedImpl();
      sub_254EB306C(v75, &qword_27F75F188, &qword_254F2C260);
      v78 = sub_254EBED80();
      v79(v78, v70);

      v61 = v73;
      v22 = v70;
      v26 = v69;
      v31 = v129;
      v65 = v132;
      v63 = v136;
    }
  }

  (*(v65 + 8))(v137, v61);
  (*(v118 + 8))(v128, v119);
  v99 = sub_254EEFD18(v115);
  (*(v123 + 8))(v125, v126);
  v100 = sub_254EC19FC();
  v101(v100);
  if (v99)
  {
    v102 = v124;
    *v124 = v116;
    *(v102 + 8) = 1;
  }

  else
  {

    v103 = v124;
    *v124 = 2;
    *(v103 + 8) = 2;
  }

  sub_254EB4078();
}

void CustomGraphPerson.toINPerson(using:)()
{
  sub_254EC1A1C();
  v1 = v0;
  v2 = sub_254EC8BC0(&qword_27F75F1E0, &qword_254F2C2A8);
  sub_254EB2D90(v2);
  sub_254EB6BCC();
  MEMORY[0x28223BE20](v3);
  sub_254EB4020();
  v52 = v4;
  sub_254EB7FC4();
  v5 = sub_254F27BD0();
  sub_254EB2CBC();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  sub_254EB3AB8();
  v11 = v10 - v9;
  sub_254F27B50();
  sub_254EB2CBC();
  v49 = v13;
  v50 = v12;
  MEMORY[0x28223BE20](v12);
  sub_254EB3AB8();
  v16 = v15 - v14;
  v17 = sub_254EC8BC0(&qword_27F75F190, &qword_254F2C268);
  sub_254EB2CBC();
  v19 = v18;
  sub_254EB6BCC();
  MEMORY[0x28223BE20](v20);
  v22 = v48 - v21;
  v23 = *v1;
  v24 = *(v1 + 8);
  LODWORD(v1) = *(v1 + 16);
  v53.value._countAndFlagsBits = v23;
  v53.value._object = v24;
  v55 = v23;
  v56 = v24;
  v57 = v1;
  CustomGraphPerson.getPrimaryINPersonHandle(using:)();
  v51 = v25;
  if (v1 > 1)
  {
  }

  else
  {
    v53 = CustomGraphPerson.getFullName()();
  }

  MEMORY[0x259C2C300]();
  sub_254F27BC0();
  (*(v19 + 8))(v22, v17);
  v26 = sub_254F27B30();
  v28 = v27;
  v55 = sub_254F27B40();
  v29 = sub_254F29AF0();
  v31 = v30;
  v55 = v26;
  v56 = v28;

  MEMORY[0x259C2DC50](v29, v31);

  v32 = v55;
  v33 = v56;
  (*(v49 + 8))(v16, v50);
  v34 = sub_254F27B80();
  v55 = MEMORY[0x277D84F90];
  v35 = *(v34 + 16);
  if (v35)
  {
    v49 = v33;
    v50 = v32;
    v36 = *(v7 + 16);
    sub_254EB3A30();
    v48[1] = v37;
    v39 = v37 + v38;
    v40 = *(v7 + 72);
    do
    {
      v36(v11, v39, v5);
      v41 = sub_254EB5B00();
      v42 = sub_254EC00F0();
      v54 = v41;
      sub_254EED98C(v42);
      v43 = sub_254EB81BC();
      v44(v43);
      sub_254EED98C(v54);
      v39 += v40;
      --v35;
    }

    while (v35);

    v45 = v55;
    v33 = v49;
    v32 = v50;
  }

  else
  {

    v45 = MEMORY[0x277D84F90];
  }

  v46 = sub_254F27840();
  v47 = v52;
  sub_254EB2F04(v52, 1, 1, v46);
  objc_allocWithZone(MEMORY[0x277CD3E90]);
  sub_254EEFB2C(v51, v47, v53.value._countAndFlagsBits, v53.value._object, 0, 0, 0, v32, v33, v45, 0);
  sub_254EB4078();
}

Swift::String __swiftcall EntityIdentifier.getmdID()()
{
  v0 = sub_254F27B30();
  v2 = v1;
  sub_254F27B40();
  v3 = sub_254F29AF0();
  v5 = v4;

  MEMORY[0x259C2DC50](v3, v5);

  v6 = v0;
  v7 = v2;
  result._object = v7;
  result._countAndFlagsBits = v6;
  return result;
}

uint64_t KGEntityGrounding.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

void CustomGraphPerson.getPrimaryINPersonHandle(using:)()
{
  sub_254EC1A1C();
  v1 = v0;
  v2 = sub_254F27BD0();
  sub_254EB2CBC();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  sub_254EB3AB8();
  v8 = v7 - v6;
  v9 = *v1;
  v10 = *(v1 + 8);
  if (!*(v1 + 16))
  {
    v15 = objc_allocWithZone(MEMORY[0x277CD3E98]);
    sub_254EC1AEC();

    v12 = v9;
    v13 = v10;
    v14 = 1;
    goto LABEL_5;
  }

  if (*(v1 + 16) == 1)
  {
    v11 = objc_allocWithZone(MEMORY[0x277CD3E98]);
    sub_254EC1AEC();

    v12 = v9;
    v13 = v10;
    v14 = 2;
LABEL_5:
    sub_254EEFAC0(v12, v13, v14);
LABEL_16:
    sub_254EB4078();
    return;
  }

  v16 = objc_allocWithZone(MEMORY[0x277CD3E98]);
  v17 = sub_254EEFAC0(0, 0, 0);
  v18 = sub_254F27B80();
  v32 = MEMORY[0x277D84F90];
  v19 = *(v18 + 16);
  if (v19)
  {
    v31 = v17;
    v20 = *(v4 + 16);
    sub_254EB3A30();
    v23 = v21 + v22;
    v24 = *(v4 + 72);
    do
    {
      v20(v8, v23, v2);
      v25 = sub_254EB5B00();
      v26 = sub_254EC00F0();
      sub_254EED98C(v26);
      v27 = sub_254EB81BC();
      v28(v27);
      sub_254EED98C(v25);
      v23 += v24;
      --v19;
    }

    while (v19);

    v29 = v32;
    v17 = v31;
  }

  else
  {

    v29 = MEMORY[0x277D84F90];
  }

  if (!sub_254EEFD18(v29))
  {

    goto LABEL_16;
  }

  if ((v29 & 0xC000000000000001) != 0)
  {
    MEMORY[0x259C2E0D0](0, v29);
    swift_unknownObjectRelease();
    MEMORY[0x259C2E0D0](0, v29);
    sub_254EC1AEC();

    goto LABEL_16;
  }

  if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v30 = *(v29 + 32);
    sub_254EC1AEC();

    goto LABEL_16;
  }

  __break(1u);
}

uint64_t CustomGraphPerson.getName(using:)(uint64_t *a1)
{
  if (!*(a1 + 16) || *(a1 + 16) == 1)
  {
    return CustomGraphPerson.getFullName()().value._countAndFlagsBits;
  }

  v1 = *a1;

  return v1;
}

Swift::String_optional __swiftcall CustomGraphPerson.getFullName()()
{
  v0 = MEMORY[0x259C2C310]();
  if (v0[2])
  {
    v1 = v0[4];
    v2 = v0[5];
  }

  else
  {
    v1 = 0;
    v2 = 0;
  }

  v3 = v1;
  v4 = v2;
  result.value._object = v4;
  result.value._countAndFlagsBits = v3;
  return result;
}

uint64_t sub_254EEF9A4(uint64_t (*a1)(void), uint64_t a2)
{
  v3 = MEMORY[0x277D84F90];
  v11 = MEMORY[0x277D84F90];
  result = a1();
  v5 = result;
  v6 = 0;
  v7 = *(result + 16);
  for (i = (result + 40); ; i += 2)
  {
    if (v7 == v6)
    {

      return v3;
    }

    if (v6 >= *(v5 + 16))
    {
      break;
    }

    v10 = *(i - 1);
    v9 = *i;
    objc_allocWithZone(MEMORY[0x277CD3E98]);

    sub_254EEFAC0(v10, v9, a2);
    MEMORY[0x259C2DCB0]();
    if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_254F29580();
    }

    result = sub_254F295B0();
    v3 = v11;
    ++v6;
  }

  __break(1u);
  return result;
}

id sub_254EEFAC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_254F29420();
  }

  else
  {
    v5 = 0;
  }

  v6 = [v3 initWithValue:v5 type:a3];

  return v6;
}

id sub_254EEFB2C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v16 = sub_254F27840();
  v17 = 0;
  if (sub_254EB2F2C(a2, 1, v16) != 1)
  {
    v17 = sub_254F27830();
    (*(*(v16 - 8) + 8))(a2, v16);
  }

  if (a4)
  {
    v18 = sub_254F29420();
  }

  else
  {
    v18 = 0;
  }

  if (a7)
  {
    v19 = sub_254F29420();
  }

  else
  {
    v19 = 0;
  }

  if (a9)
  {
    v20 = sub_254F29420();
  }

  else
  {
    v20 = 0;
  }

  if (a10)
  {
    sub_254EF18DC();
    v21 = sub_254F29550();
  }

  else
  {
    v21 = 0;
  }

  v22 = [v24 initWithPersonHandle:a1 nameComponents:v17 displayName:v18 image:a5 contactIdentifier:v19 customIdentifier:v20 aliases:v21 suggestionType:a11];

  return v22;
}

uint64_t sub_254EEFCEC(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_254EEFD00(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_254EEFD00(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

uint64_t sub_254EEFD18(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_254F29AA0();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

void sub_254EEFD3C()
{
  sub_254EC0D48();
  if ((v3 & 1) == 0 || (sub_254EB3BC8(), v4 == v5))
  {
LABEL_6:
    sub_254EB7E5C();
    if (v2)
    {
      v6 = sub_254EC8BC0(&qword_27F75F1E8, &qword_254F2C2F8);
      v7 = sub_254EC1FA8(v6);
      v8 = j__malloc_size(v7);
      sub_254EB7FAC(v8);
      if (v1)
      {
LABEL_8:
        v9 = sub_254EB6830();
        sub_254ECB640(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v12 = sub_254EC8BC0(&qword_27F75F1F0, &qword_254F2C300);
    sub_254EB4968(v12);
    goto LABEL_11;
  }

  sub_254EB5724();
  if (!v4)
  {
    sub_254EB3BB8();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_254EEFDF8()
{
  sub_254EC0D48();
  if ((v3 & 1) == 0 || (sub_254EB3BC8(), v4 == v5))
  {
LABEL_6:
    sub_254EB7E5C();
    if (v2)
    {
      v6 = sub_254EC8BC0(&qword_27F75F260, &qword_254F2C3A0);
      v7 = sub_254EC1FA8(v6);
      v8 = j__malloc_size(v7);
      sub_254EB7FAC(v8);
      if (v1)
      {
LABEL_8:
        v9 = sub_254EB6830();
        sub_254EC7048(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v12 = sub_254EC8BC0(&qword_27F75F268, &qword_254F2C3A8);
    sub_254EB4968(v12);
    goto LABEL_11;
  }

  sub_254EB5724();
  if (!v4)
  {
    sub_254EB3BB8();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_254EEFEB4()
{
  sub_254EB4068();
  if (v4)
  {
    sub_254EB7A58();
    if (v6 != v7)
    {
      sub_254EB5C00();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_254EB6AB0();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_254EB4A5C(v2, v5, &unk_27F75EF00, &unk_254F2B660);
  sub_254EB4B34();
  sub_254F28120();
  sub_254EB7DAC();
  sub_254EB3A30();
  if (v1)
  {
    v9 = sub_254EB6C20(v8);
    sub_254ECA138(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_254EB693C();
  }
}

void sub_254EEFF7C()
{
  sub_254EC0D48();
  if ((v3 & 1) == 0 || (sub_254EB3BC8(), v4 == v5))
  {
LABEL_6:
    sub_254EB7E5C();
    if (v2)
    {
      sub_254EC8BC0(&qword_27F75EEF0, &qword_254F2AF30);
      v6 = sub_254EC1BF8();
      sub_254EC005C(v6);
      sub_254EB5178(v7);
      if (v1)
      {
LABEL_8:
        v8 = sub_254EB6830();
        sub_254ECA150(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    sub_254EC38E0();
    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  sub_254EB5724();
  if (!v4)
  {
    sub_254EB3BB8();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_254EF0038()
{
  sub_254EB4068();
  if (v4)
  {
    sub_254EB7A58();
    if (v6 != v7)
    {
      sub_254EB5C00();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_254EB6AB0();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_254EB4A5C(v2, v5, &qword_27F75F2C0, &unk_254F2C400);
  v8 = sub_254EB4B34();
  type metadata accessor for ContextValueElement(v8);
  sub_254EB7DAC();
  sub_254EB3A30();
  if (v1)
  {
    v10 = sub_254EB6C20(v9);
    sub_254ECA170(v10, v11, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_254EB693C();
  }
}

void sub_254EF0100()
{
  sub_254EC0D48();
  if ((v3 & 1) == 0 || (sub_254EB3BC8(), v4 == v5))
  {
LABEL_6:
    sub_254EB7E5C();
    if (v2)
    {
      sub_254EC8BC0(&qword_27F75F2B8, &qword_254F2C3F8);
      v6 = sub_254EC1BF8();
      sub_254EC005C(v6);
      sub_254EB5178(v7);
      if (v1)
      {
LABEL_8:
        v8 = sub_254EB6830();
        sub_254ECA188(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = sub_254EC38E0();
    memcpy(v11, v12, v13);
    goto LABEL_11;
  }

  sub_254EB5724();
  if (!v4)
  {
    sub_254EB3BB8();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_254EF01B4()
{
  sub_254EC0D48();
  if (v3)
  {
    sub_254EB3BC8();
    if (v5 != v6)
    {
      sub_254EB5724();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_254EB3BB8();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 16);
  v8 = sub_254EF105C(v7, v4);
  sub_254EC8BC0(&qword_27F75ED80, &qword_254F2AF68);
  sub_254EB7DAC();
  sub_254EB3A30();
  if (v1)
  {
    sub_254ECA1A8(v0 + v9, v7, v8 + v9);
    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_254EF028C()
{
  sub_254EB4068();
  if (v4)
  {
    sub_254EB7A58();
    if (v6 != v7)
    {
      sub_254EB5C00();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_254EB6AB0();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_254EB4A5C(v2, v5, &qword_27F75F1F8, &qword_254F2C308);
  sub_254EB4B34();
  sub_254F289A0();
  sub_254EB7DAC();
  sub_254EB3A30();
  if (v1)
  {
    v9 = sub_254EB6C20(v8);
    sub_254ECA1BC(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_254EB693C();
  }
}

void sub_254EF0354()
{
  sub_254EC0D48();
  if ((v3 & 1) == 0 || (sub_254EB3BC8(), v4 == v5))
  {
LABEL_6:
    sub_254EB7E5C();
    if (v2)
    {
      v6 = sub_254EC8BC0(&qword_27F75F208, &qword_254F2C318);
      v7 = sub_254EC1FA8(v6);
      v8 = j__malloc_size(v7);
      sub_254EB7FAC(v8);
      if (v1)
      {
LABEL_8:
        v9 = sub_254EB6830();
        sub_254ECB640(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v12 = sub_254EC8BC0(&qword_27F75F210, &qword_254F2C320);
    sub_254EB4968(v12);
    goto LABEL_11;
  }

  sub_254EB5724();
  if (!v4)
  {
    sub_254EB3BB8();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_254EF0410()
{
  sub_254EB4068();
  if (v4)
  {
    sub_254EB7A58();
    if (v6 != v7)
    {
      sub_254EB5C00();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_254EB6AB0();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_254EB4A5C(v2, v5, &qword_27F75F2C8, &qword_254F2C410);
  sub_254EB4B34();
  sub_254F28410();
  sub_254EB7DAC();
  sub_254EB3A30();
  if (v1)
  {
    v9 = sub_254EB6C20(v8);
    sub_254ECA1D4(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_254EB693C();
  }
}

void sub_254EF04D8()
{
  sub_254EB4068();
  if (v4)
  {
    sub_254EB7A58();
    if (v6 != v7)
    {
      sub_254EB5C00();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_254EB6AB0();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_254EB4A5C(v2, v5, &qword_27F75F218, &qword_254F2C328);
  sub_254EB4B34();
  sub_254F29290();
  sub_254EB7DAC();
  sub_254EB3A30();
  if (v1)
  {
    v9 = sub_254EB6C20(v8);
    sub_254ECA1EC(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_254EB693C();
  }
}

void sub_254EF05A0()
{
  sub_254EB4068();
  if (v4)
  {
    sub_254EB7A58();
    if (v6 != v7)
    {
      sub_254EB5C00();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_254EB6AB0();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_254EB4A5C(v2, v5, &qword_27F75F228, &qword_254F2C338);
  sub_254EB4B34();
  sub_254F28EE0();
  sub_254EB7DAC();
  sub_254EB3A30();
  if (v1)
  {
    v9 = sub_254EB6C20(v8);
    sub_254ECA204(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_254EB693C();
  }
}

void sub_254EF0668()
{
  sub_254EB4068();
  if (v4)
  {
    sub_254EB7A58();
    if (v6 != v7)
    {
      sub_254EB5C00();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_254EB6AB0();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_254EB4A5C(v2, v5, &qword_27F75F250, &unk_254F2C388);
  sub_254EB4B34();
  sub_254F28050();
  sub_254EB7DAC();
  sub_254EB3A30();
  if (v1)
  {
    v9 = sub_254EB6C20(v8);
    sub_254ECA21C(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_254EB693C();
  }
}

void sub_254EF0730()
{
  sub_254EC0D48();
  if ((v3 & 1) == 0 || (sub_254EB3BC8(), v4 == v5))
  {
LABEL_6:
    sub_254EB7E5C();
    if (v2)
    {
      v6 = sub_254EC8BC0(&qword_27F75F240, &qword_254F2C360);
      v7 = sub_254EC1FA8(v6);
      v8 = j__malloc_size(v7);
      sub_254EB7FAC(v8);
      if (v1)
      {
LABEL_8:
        v9 = sub_254EB6830();
        sub_254ECB640(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v12 = sub_254EC8BC0(&qword_27F75F248, &qword_254F2C368);
    sub_254EB4968(v12);
    goto LABEL_11;
  }

  sub_254EB5724();
  if (!v4)
  {
    sub_254EB3BB8();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_254EF07EC()
{
  sub_254EC0D48();
  if ((v3 & 1) == 0 || (sub_254EB3BC8(), v4 == v5))
  {
LABEL_6:
    sub_254EB7E5C();
    if (v2)
    {
      sub_254EC8BC0(&qword_27F75F168, &qword_254F2BF00);
      v6 = sub_254EC1BF8();
      sub_254EC005C(v6);
      sub_254EB5178(v7);
      if (v1)
      {
LABEL_8:
        v8 = sub_254EB6830();
        sub_254ECA150(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = sub_254EC38E0();
    memcpy(v11, v12, v13);
    goto LABEL_11;
  }

  sub_254EB5724();
  if (!v4)
  {
    sub_254EB3BB8();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_254EF08A0()
{
  sub_254EB4068();
  if (v4)
  {
    sub_254EB7A58();
    if (v6 != v7)
    {
      sub_254EB5C00();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_254EB6AB0();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_254EB4A5C(v2, v5, &qword_27F75F0D0, &qword_254F2BD40);
  sub_254EB4B34();
  sub_254F28080();
  sub_254EB7DAC();
  sub_254EB3A30();
  if (v1)
  {
    v9 = sub_254EB6C20(v8);
    sub_254ECA330(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_254EB693C();
  }
}

void sub_254EF0968()
{
  sub_254EB4068();
  if (v4)
  {
    sub_254EB7A58();
    if (v6 != v7)
    {
      sub_254EB5C00();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_254EB6AB0();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_254EB4A5C(v2, v5, &qword_27F75EDA8, &qword_254F2C380);
  sub_254EB4B34();
  sub_254F28260();
  sub_254EB7DAC();
  sub_254EB3A30();
  if (v1)
  {
    v9 = sub_254EB6C20(v8);
    sub_254ECA234(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_254EB693C();
  }
}

void sub_254EF0A30()
{
  sub_254EB4068();
  if (v4)
  {
    sub_254EB7A58();
    if (v6 != v7)
    {
      sub_254EB5C00();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_254EB6AB0();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_254EB4A5C(v2, v5, &qword_27F75F230, &unk_254F2C340);
  sub_254EB4B34();
  sub_254F289F0();
  sub_254EB7DAC();
  sub_254EB3A30();
  if (v1)
  {
    v9 = sub_254EB6C20(v8);
    sub_254ECA368(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_254EB693C();
  }
}

void sub_254EF0AF8()
{
  sub_254EB4068();
  if (v4)
  {
    sub_254EB7A58();
    if (v6 != v7)
    {
      sub_254EB5C00();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_254EB6AB0();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_254EB4A5C(v2, v5, &unk_27F75F4F0, &unk_254F2AF70);
  sub_254EB4B34();
  sub_254F28CA0();
  sub_254EB7DAC();
  sub_254EB3A30();
  if (v1)
  {
    v9 = sub_254EB6C20(v8);
    sub_254ECA380(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_254EB693C();
  }
}

void sub_254EF0BC0()
{
  sub_254EB4068();
  if (v2)
  {
    sub_254EB7A58();
    if (v3 != v4)
    {
      sub_254EB5C00();
      if (v3)
      {
        __break(1u);
        return;
      }

      sub_254EB6AB0();
    }
  }

  v5 = *(v0 + 16);
  sub_254EB7D58();
  sub_254EF118C(v5, v6, v7, v8, v9);
  sub_254EB4B34();
  sub_254F28CE0();
  sub_254EB7DAC();
  sub_254EB3A30();
  if (v1)
  {
    v11 = sub_254EB6C20(v10);
    sub_254ECA398(v11, v12, v13);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_254EB693C();
  }
}

void sub_254EF0C80()
{
  sub_254EB4068();
  if (v4)
  {
    sub_254EB7A58();
    if (v6 != v7)
    {
      sub_254EB5C00();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_254EB6AB0();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_254EB4A5C(v2, v5, &qword_27F75F270, &qword_254F2C3B0);
  sub_254EB4B34();
  sub_254F28750();
  sub_254EB7DAC();
  sub_254EB3A30();
  if (v1)
  {
    v9 = sub_254EB6C20(v8);
    sub_254ECA3B0(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_254EB693C();
  }
}

void sub_254EF0D48()
{
  sub_254EB4068();
  if (v4)
  {
    sub_254EB7A58();
    if (v6 != v7)
    {
      sub_254EB5C00();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_254EB6AB0();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_254EB4A5C(v2, v5, &qword_27F75F238, &qword_254F2C358);
  sub_254EB4B34();
  sub_254F278E0();
  sub_254EB7DAC();
  sub_254EB3A30();
  if (v1)
  {
    v9 = sub_254EB6C20(v8);
    sub_254ECA3C8(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_254EB693C();
  }
}

void sub_254EF0E10()
{
  sub_254EB4068();
  if (v4)
  {
    sub_254EB7A58();
    if (v6 != v7)
    {
      sub_254EB5C00();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_254EB6AB0();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_254EB4A5C(v2, v5, &qword_27F75F200, &qword_254F2C310);
  sub_254EB4B34();
  sub_254F286E0();
  sub_254EB7DAC();
  sub_254EB3A30();
  if (v1)
  {
    v9 = sub_254EB6C20(v8);
    sub_254ECA3E0(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_254EB693C();
  }
}

void sub_254EF0ED8()
{
  sub_254EB4068();
  if (v4)
  {
    sub_254EB7A58();
    if (v6 != v7)
    {
      sub_254EB5C00();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_254EB6AB0();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_254EB4A5C(v2, v5, &qword_27F75F220, &qword_254F2C330);
  sub_254EB4B34();
  sub_254F27F50();
  sub_254EB7DAC();
  sub_254EB3A30();
  if (v1)
  {
    v9 = sub_254EB6C20(v8);
    sub_254ECA3F8(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_254EB693C();
  }
}

void sub_254EF0FA0()
{
  sub_254EC0D48();
  if ((v3 & 1) == 0 || (sub_254EB3BC8(), v4 == v5))
  {
LABEL_6:
    sub_254EB7E5C();
    if (v2)
    {
      v6 = sub_254EC8BC0(&qword_27F75F288, &qword_254F2C3C8);
      v7 = sub_254EC1FA8(v6);
      v8 = j__malloc_size(v7);
      sub_254EB7FAC(v8);
      if (v1)
      {
LABEL_8:
        v9 = sub_254EB6830();
        sub_254ECB640(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v12 = sub_254EC8BC0(&qword_27F75F290, &qword_254F2C3D0);
    sub_254EB4968(v12);
    goto LABEL_11;
  }

  sub_254EB5724();
  if (!v4)
  {
    sub_254EB3BB8();
    goto LABEL_6;
  }

  __break(1u);
}

void *sub_254EF105C(uint64_t a1, uint64_t a2)
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

  sub_254EC8BC0(&qword_27F75ED78, &qword_254F2AF60);
  v4 = *(sub_254EC8BC0(&qword_27F75ED80, &qword_254F2AF68) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = j__malloc_size(v7);
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

void *sub_254EF118C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  sub_254EC8BC0(a3, a4);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = j__malloc_size(v11);
  if (v9)
  {
    if ((result - v10) != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_254EF1288(uint64_t a1, uint64_t a2)
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

  sub_254EC8BC0(&qword_27F75F298, &qword_254F2C3E0);
  v4 = sub_254EC1BF8();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 8);
  return v4;
}

unint64_t sub_254EF1308(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(a3 + 16) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

void sub_254EF1328(id a1, char a2)
{
  if (a2 == 1)
  {
  }

  else if (!a2)
  {
  }
}

unint64_t sub_254EF1344()
{
  result = qword_27F75F1C0;
  if (!qword_27F75F1C0)
  {
    sub_254F27BB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F75F1C0);
  }

  return result;
}

uint64_t sub_254EF139C(uint64_t a1, uint64_t a2)
{
  v4 = sub_254EC8BC0(&qword_27F75F188, &qword_254F2C260);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_254EF140C(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_254EF1430(unint64_t a1, uint64_t a2)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (*(a2 + 16) <= a1)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v2 = *((a2 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
  swift_unknownObjectRetain_n();
  sub_254EC8BC0(&qword_27F75F248, &qword_254F2C368);
  if (swift_dynamicCast())
  {

    return v2;
  }

LABEL_7:
  sub_254F29940();
  MEMORY[0x259C2DC50](0xD000000000000043, 0x8000000254F2E120);
  MEMORY[0x259C2DC50](0xD00000000000001ELL, 0x8000000254F2E170);
  MEMORY[0x259C2DC50](0x756F662074756220, 0xEB0000000020646ELL);
  swift_getObjectType();
  v4 = sub_254F29C20();
  MEMORY[0x259C2DC50](v4);

  result = sub_254F29A80();
  __break(1u);
  return result;
}

uint64_t sub_254EF1594(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_254F29AA0();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_254EC5594(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_254EF18DC();
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_254EBEDE8(&qword_27F75F2B0, &qword_27F75F2A8, &unk_254F2C3E8, MEMORY[0x277D83988]);
        for (i = 0; i != v7; ++i)
        {
          sub_254EC8BC0(&qword_27F75F2A8, &unk_254F2C3E8);
          v9 = sub_254EF17B0(v12, i, a3);
          v11 = *v10;
          (v9)(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t (*sub_254EF171C(uint64_t *a1, unint64_t a2, uint64_t a3))()
{
  v6 = sub_254EECB14();
  sub_254EF1308(a2, v6 & 1, a3);
  if (v6)
  {
  }

  else
  {
    v7 = sub_254EF1430(a2, a3);
  }

  *a1 = v7;
  return sub_254EF17A8;
}

void (*sub_254EF17B0(void *a1, unint64_t a2, uint64_t a3))(id *a1)
{
  v6 = sub_254EF12FC(a3);
  sub_254EF140C(a2, v6, a3);
  if (v6)
  {
    v7 = *(a3 + 8 * a2 + 32);
  }

  else
  {
    v7 = MEMORY[0x259C2E0D0](a2, a3);
  }

  *a1 = v7;
  return sub_254EF183C;
}

unint64_t sub_254EF18DC()
{
  result = qword_27F75F2A0;
  if (!qword_27F75F2A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F75F2A0);
  }

  return result;
}

uint64_t sub_254EF1920(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_254EF1940()
{
  v0 = sub_254F27D10();
  v1 = sub_254F0B968(0x7463656C65537369, 0xEA00000000006465, v0);
  v3 = v2;

  if (!v3)
  {
    return sub_254F27D30() & 1;
  }

  if (v1 == 1702195828 && v3 == 0xE400000000000000)
  {
  }

  else
  {
    v5 = sub_254F29B10();

    if ((v5 & 1) == 0)
    {
      return sub_254F27D30() & 1;
    }
  }

  return 1;
}

uint64_t sub_254EF1A04(uint64_t a1, uint64_t a2, void (*a3)(void, void), uint64_t a4)
{
  v181 = a4;
  v7 = sub_254F291E0();
  sub_254EB2CBC();
  v167 = v8;
  MEMORY[0x28223BE20](v9);
  v11 = &v140 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_254EC8BC0(&qword_27F75EEE8, &unk_254F2B648);
  v13 = sub_254EB2D90(v12);
  MEMORY[0x28223BE20](v13);
  v179 = &v140 - v14;
  v178 = sub_254F29290();
  sub_254EB2CBC();
  v180 = v15;
  MEMORY[0x28223BE20](v16);
  sub_254EB2E04();
  v177 = v17 - v18;
  sub_254EB3D2C();
  MEMORY[0x28223BE20](v19);
  sub_254EB40A4();
  v176 = v20;
  sub_254EB3D2C();
  MEMORY[0x28223BE20](v21);
  sub_254EB40A4();
  v175 = v22;
  sub_254EB3D2C();
  MEMORY[0x28223BE20](v23);
  sub_254EB59E4();
  v174 = v24;
  v183 = sub_254F29330();
  sub_254EB2CBC();
  v166 = v25;
  MEMORY[0x28223BE20](v26);
  sub_254EB2E04();
  v173 = (v27 - v28);
  sub_254EB3D2C();
  MEMORY[0x28223BE20](v29);
  sub_254EB40A4();
  v172 = v30;
  sub_254EB3D2C();
  MEMORY[0x28223BE20](v31);
  sub_254EB59E4();
  v171 = v32;
  v33 = sub_254EC8BC0(&qword_27F75F2D0, &qword_254F2C418);
  v34 = sub_254EB2D90(v33);
  MEMORY[0x28223BE20](v34);
  sub_254EB2E04();
  v170 = v35 - v36;
  sub_254EB3D2C();
  MEMORY[0x28223BE20](v37);
  sub_254EB40A4();
  v169 = v38;
  sub_254EB3D2C();
  MEMORY[0x28223BE20](v39);
  sub_254EB59E4();
  v168 = v40;
  v41 = sub_254F27720();
  sub_254EB2CBC();
  v43 = v42;
  MEMORY[0x28223BE20](v44);
  sub_254EB2E04();
  v47 = (v45 - v46);
  v49 = MEMORY[0x28223BE20](v48);
  v51 = (&v140 - v50);
  MEMORY[0x28223BE20](v49);
  sub_254EB59E4();
  v182 = v52;
  v53 = sub_254F27D80();
  if (v54 >> 60 == 15)
  {
LABEL_6:
    a3(MEMORY[0x277D84F90], MEMORY[0x277D84F90]);
    goto LABEL_7;
  }

  v165 = v43;
  v159 = a1;
  v160 = a2;
  v55 = v54;
  v56 = v53;
  sub_254EB48D8(0, &qword_2814260A8, 0x277CCAAC8);
  sub_254EB48D8(0, &unk_2814260B0, 0x277D23CD8);
  v161 = v56;
  v162 = v55;
  v57 = sub_254F29750();
  if (!v57)
  {
    sub_254F284E0();
    v58 = sub_254F291D0();
    v59 = sub_254F29700();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v184 = v61;
      *v60 = 136315138;
      v62 = sub_254F29C20();
      v64 = a3;
      v65 = sub_254EC2D74(v62, v63, &v184);

      *(v60 + 4) = v65;
      a3 = v64;
      _os_log_impl(&dword_254EAE000, v58, v59, "unable to convert decoded data of type %s to annotation identifiers", v60, 0xCu);
      sub_254EB2BBC(v61);
      MEMORY[0x259C2EB80](v61, -1, -1);
      MEMORY[0x259C2EB80](v60, -1, -1);
    }

    sub_254EB6D9C();

    (*(v167 + 8))(v11, v7);
    goto LABEL_6;
  }

  v67 = v57;
  v68 = sub_254F29740();
  v141 = v67;
  v142 = a3;
  v69 = *(v68 + 16);
  if (v69)
  {
    v70 = *(v165 + 16);
    v71 = (*(v165 + 80) + 32) & ~*(v165 + 80);
    v140 = v68;
    v72 = v68 + v71;
    v157 = *(v165 + 72);
    v167 = v165 + 88;
    v156 = *MEMORY[0x277CBA3C0];
    v143 = *MEMORY[0x277CBA3C8];
    v164 = (v165 + 8);
    v163 = v165 + 96;
    v155 = *MEMORY[0x277D72D28];
    v154 = v166 + 104;
    v153 = v166 + 16;
    v152 = v180 + 16;
    v151 = v180 + 8;
    v150 = v166 + 8;
    v149 = v180 + 32;
    v73 = MEMORY[0x277D84F90];
    v148 = *MEMORY[0x277CBA3B8];
    v144 = MEMORY[0x277D84F90];
    v165 += 16;
    v74 = v182;
    v158 = v70;
    do
    {
      v166 = v69;
      v70(v74, v72, v41);
      v70(v51, v74, v41);
      v75 = *v167;
      v76 = sub_254EB5188();
      v77 = v75(v76);
      if (v77 == v156)
      {
        v147 = v75;
        sub_254EB6AC0();
        v78 = sub_254EB5188();
        v79(v78);
        v81 = *v51;
        v80 = v51[1];
        v82 = v51[3];
        *&v146 = v51[2];
        v145 = v82;
        v83 = sub_254EC8BC0(&qword_27F75F2E0, &qword_254F2C428);
        v84 = v168;
        sub_254EF27E4(v51 + *(v83 + 64), v168);
        v85 = swift_allocObject();
        v86 = v160;
        v85[2] = v159;
        v85[3] = v86;
        v85[4] = v81;
        v85[5] = v80;
        v87 = v171;
        *v171 = v85;
        sub_254EB6AC0();
        v88 = sub_254EB6840();
        v89(v88);
        sub_254EB6AC0();
        v90(v172, v87, v80);
        v91 = v169;
        sub_254EB2F54(v84, v169, &qword_27F75F2D0, &qword_254F2C418);
        v92 = v178;

        sub_254F19374(v91, v179);
        v93 = sub_254F29380();
        sub_254EB4988(v93);
        v94 = v174;
        sub_254F29270();
        sub_254EB6AC0();
        v95(v175, v94, v92);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_254EB4958();
          sub_254EF04D8();
          v73 = v134;
        }

        v97 = *(v73 + 16);
        v96 = *(v73 + 24);
        v70 = v158;
        if (v97 >= v96 >> 1)
        {
          sub_254EB4090(v96);
          sub_254EF04D8();
          v73 = v135;
        }

        v98 = v180;
        (*(v180 + 8))(v174, v92);
        sub_254EB6AC0();
        v99(v171, v183);
        sub_254EB2B68(v168, &qword_27F75F2D0, &qword_254F2C418);
        *(v73 + 16) = v97 + 1;
        (*(v98 + 32))(v73 + ((*(v98 + 80) + 32) & ~*(v98 + 80)) + *(v98 + 72) * v97, v175, v92);
        v74 = v182;
        v75 = v147;
      }

      else if (v77 == v143)
      {
        v100 = v75;
        sub_254EB6AC0();
        v101 = sub_254EB5188();
        v102(v101);
        v103 = v51[1];
        v147 = *v51;
        *&v146 = v103;
        v104 = v144;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_254EB4958();
          sub_254EEFF7C();
          v104 = v138;
        }

        v144 = v104;
        v106 = *(v104 + 16);
        v105 = *(v104 + 24);
        if (v106 >= v105 >> 1)
        {
          sub_254EB4090(v105);
          sub_254EEFF7C();
          v144 = v139;
        }

        v75 = v100;
        v107 = v144;
        *(v144 + 16) = v106 + 1;
        v108 = v107 + 16 * v106;
        v109 = v146;
        *(v108 + 32) = v147;
        *(v108 + 40) = v109;
        v74 = v182;
      }

      else
      {
        sub_254EB6AC0();
        v110 = sub_254EB5188();
        v111(v110);
      }

      v70(v47, v74, v41);
      v112 = (v75)(v47, v41);
      if (v112 == v148)
      {
        sub_254EB6AC0();
        v113(v47, v41);
        v114 = *v47;
        v115 = v47[1];
        v146 = *(v47 + 1);
        v147 = v47[4];
        v116 = sub_254EC8BC0(&qword_27F75F2D8, &qword_254F2C420);
        v117 = v170;
        sub_254EF27E4(v47 + *(v116 + 80), v170);
        v118 = swift_allocObject();
        *(v118 + 16) = v146;
        *(v118 + 32) = v114;
        *(v118 + 40) = v115;
        v119 = v173;
        *v173 = v118;
        sub_254EB6AC0();
        v120 = sub_254EB6840();
        v121(v120);
        sub_254EB6AC0();
        v122(v172, v119, v114);
        v123 = v169;
        sub_254EB2F54(v117, v169, &qword_27F75F2D0, &qword_254F2C418);
        sub_254F19374(v123, v179);
        v124 = sub_254F29380();
        sub_254EB4988(v124);
        v125 = v176;
        sub_254F29270();
        sub_254EB6AC0();
        v126 = v178;
        v127(v177, v125, v178);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_254EB4958();
          sub_254EF04D8();
          v73 = v136;
        }

        v129 = *(v73 + 16);
        v128 = *(v73 + 24);
        v74 = v182;
        if (v129 >= v128 >> 1)
        {
          sub_254EB4090(v128);
          sub_254EF04D8();
          v73 = v137;
        }

        v130 = v180;
        (*(v180 + 8))(v176, v126);
        sub_254EB6AC0();
        v131(v173, v183);
        sub_254EB2B68(v170, &qword_27F75F2D0, &qword_254F2C418);
        sub_254EB6AC0();
        v132(v74, v41);
        *(v73 + 16) = v129 + 1;
        (*(v130 + 32))(v73 + ((*(v130 + 80) + 32) & ~*(v130 + 80)) + *(v130 + 72) * v129, v177, v126);
        v70 = v158;
      }

      else
      {
        v133 = *v164;
        (*v164)(v74, v41);
        v133(v47, v41);
      }

      v72 += v157;
      v69 = v166 - 1;
    }

    while (v166 != 1);

    sub_254EB6D9C();

    v142(v73, v144);
  }

  else
  {

    sub_254EB6D9C();

    v142(MEMORY[0x277D84F90], MEMORY[0x277D84F90]);
  }

LABEL_7:
}