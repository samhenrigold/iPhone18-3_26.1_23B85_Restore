uint64_t sub_252C2A5D8()
{
  v0 = sub_252C28980(&qword_27F53F730, &qword_27F575C40, sub_252DA5854);
  v1 = v0;
  v24 = MEMORY[0x277D84F90];
  if (v0 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
  {
    v3 = 0;
    v4 = v1 & 0xC000000000000001;
    v5 = v1 & 0xFFFFFFFFFFFFFF8;
    v6 = &off_279711000;
    v23 = v1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v4)
      {
        v7 = MEMORY[0x2530ADF00](v3, v1);
      }

      else
      {
        if (v3 >= *(v5 + 16))
        {
          goto LABEL_17;
        }

        v7 = *(v1 + 8 * v3 + 32);
      }

      v8 = v7;
      v9 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v10 = [v7 v6[221]];
      if (v10 && (v11 = v10, v12 = [v10 entityIdentifier], v11, v12) && (v13 = sub_252E36F34(), v14 = i, v15 = v1, v16 = v4, v17 = v6, v19 = v18, v12, v20 = sub_252ADD4E4(v13, v19), v6 = v17, v4 = v16, v1 = v15, i = v14, v5 = v23, , (1.0 - v20) > 0.6))
      {
      }

      else
      {
        sub_252E37A94();
        sub_252E37AC4();
        sub_252E37AD4();
        sub_252E37AA4();
      }

      ++v3;
      if (v9 == i)
      {
        v21 = v24;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v21 = MEMORY[0x277D84F90];
LABEL_20:

  return v21;
}

id sub_252C2A7E8()
{
  v1 = [v0 entityResponses];
  if (!v1)
  {
    if (qword_27F53F4E8 != -1)
    {
      goto LABEL_41;
    }

    goto LABEL_32;
  }

  v2 = v1;
  type metadata accessor for HomeEntityResponse();
  v3 = sub_252E37264();

  if (!(v3 >> 62))
  {
    goto LABEL_3;
  }

  while (2)
  {
    v4 = sub_252E378C4();
    if (!v4)
    {
      goto LABEL_34;
    }

LABEL_4:
    v5 = 0;
    v6 = v3 & 0xC000000000000001;
    v30 = v3 + 32;
    v31 = v3 & 0xFFFFFFFFFFFFFF8;
    v33 = v4;
    v34 = v3;
    v32 = v3 & 0xC000000000000001;
    while (1)
    {
      if (v6)
      {
        v8 = MEMORY[0x2530ADF00](v5, v3);
        v9 = __OFADD__(v5++, 1);
        if (v9)
        {
          goto LABEL_39;
        }
      }

      else
      {
        if (v5 >= *(v31 + 16))
        {
          goto LABEL_40;
        }

        v8 = *(v30 + 8 * v5);
        v9 = __OFADD__(v5++, 1);
        if (v9)
        {
          goto LABEL_39;
        }
      }

      v35 = v8;
      v10 = [v8 taskResponses];
      if (v10)
      {
        break;
      }

LABEL_5:
      type metadata accessor for HomeUserTaskResponse();
      v7 = sub_252E37254();

      [v35 setTaskResponses_];

      if (v5 == v4)
      {
        goto LABEL_34;
      }
    }

    v11 = v10;
    type metadata accessor for HomeUserTaskResponse();
    v12 = sub_252E37264();

    if (!(v12 >> 62))
    {
      v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v13)
      {
        goto LABEL_15;
      }

      goto LABEL_30;
    }

    v13 = sub_252E378C4();
    if (!v13)
    {
LABEL_30:

      goto LABEL_5;
    }

LABEL_15:
    v14 = 0;
    while (1)
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x2530ADF00](v14, v12);
      }

      else
      {
        if (v14 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_38;
        }

        v15 = *(v12 + 8 * v14 + 32);
      }

      v16 = v15;
      v17 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      v18 = [v15 userTask];
      if (v18)
      {
        v19 = v18;
        v20 = [v18 taskType];
      }

      else
      {
        v20 = 0;
      }

      v21 = vdupq_n_s64(v20);
      if (vmaxv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(xmmword_2864A7318, v21), vceqq_s64(unk_2864A7328, v21)))))
      {
        sub_252E37A94();
        sub_252E37AC4();
        sub_252E37AD4();
        sub_252E37AA4();
      }

      else
      {
      }

      ++v14;
      if (v17 == v13)
      {
        v4 = v33;
        v3 = v34;
        v6 = v32;
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    swift_once();
LABEL_32:
    v22 = sub_252E36AD4();
    __swift_project_value_buffer(v22, qword_27F544D60);
    sub_252E379F4();

    v23 = v29;
    v24 = [v23 description];
    v25 = sub_252E36F34();
    v27 = v26;

    MEMORY[0x2530AD570](v25, v27);

    sub_252CC3D90(0xD00000000000002FLL, 0x8000000252E69700, 0xD000000000000098, 0x8000000252E69730);

    v3 = MEMORY[0x277D84F90];
    if (MEMORY[0x277D84F90] >> 62)
    {
      continue;
    }

    break;
  }

LABEL_3:
  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    goto LABEL_4;
  }

LABEL_34:

  return v29;
}

uint64_t sub_252C2AC20()
{
  v1 = [v0 entityResponses];
  if (!v1)
  {
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v27 = sub_252E36AD4();
    __swift_project_value_buffer(v27, qword_27F544D60);
    sub_252E379F4();

    v28 = v0;
    v29 = [v28 description];
    v30 = sub_252E36F34();
    v32 = v31;

    MEMORY[0x2530AD570](v30, v32);

    sub_252CC3D90(0xD00000000000002FLL, 0x8000000252E69700, 0xD000000000000098, 0x8000000252E69730);
    goto LABEL_45;
  }

  v2 = v1;
  type metadata accessor for HomeEntityResponse();
  v3 = sub_252E37264();

  if (v3 >> 62)
  {
LABEL_44:
    v4 = sub_252E378C4();
    if (v4)
    {
      goto LABEL_4;
    }

LABEL_45:

    return 0;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    goto LABEL_45;
  }

LABEL_4:
  v5 = 0;
  v6 = v3 & 0xC000000000000001;
  v7 = v3 & 0xFFFFFFFFFFFFFF8;
  v8 = v3 + 32;
  v9 = &off_279711000;
  v37 = v3 + 32;
  v38 = v3;
  v35 = v3 & 0xC000000000000001;
  v36 = v4;
  v34 = v3 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v6)
    {
      v10 = MEMORY[0x2530ADF00](v5, v3);
    }

    else
    {
      if (v5 >= *(v7 + 16))
      {
        goto LABEL_43;
      }

      v10 = *(v8 + 8 * v5);
    }

    v11 = v10;
    v12 = __OFADD__(v5++, 1);
    if (v12)
    {
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v13 = [v10 v9[220]];
    if (v13)
    {
      break;
    }

LABEL_6:
    if (v5 == v4)
    {
      goto LABEL_45;
    }
  }

  v14 = v13;
  type metadata accessor for HomeUserTaskResponse();
  v15 = sub_252E37264();

  v16 = [v11 entity];
  if (!v16)
  {

    v9 = &off_279711000;
    goto LABEL_6;
  }

  if (!(v15 >> 62))
  {
    v17 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v17)
    {
      goto LABEL_15;
    }

    goto LABEL_34;
  }

  v17 = sub_252E378C4();
  if (!v17)
  {
LABEL_34:

LABEL_35:
    v8 = v37;
    v9 = &off_279711000;
    goto LABEL_6;
  }

LABEL_15:
  v18 = 0;
  while (1)
  {
    if ((v15 & 0xC000000000000001) != 0)
    {
      v19 = MEMORY[0x2530ADF00](v18, v15);
    }

    else
    {
      if (v18 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_41;
      }

      v19 = *(v15 + 32 + 8 * v18);
    }

    v20 = v19;
    v12 = __OFADD__(v18++, 1);
    if (v12)
    {
      __break(1u);
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    if (qword_27F53F730 != -1)
    {
      swift_once();
    }

    v3 = qword_27F575C40;
    v21 = [v20 taskOutcome];
    if (*(v3 + 16))
    {
      v22 = v21;
      sub_252E37EC4();
      MEMORY[0x2530AE390](v22);
      v23 = sub_252E37F14();
      v24 = -1 << *(v3 + 32);
      v25 = v23 & ~v24;
      if ((*(v3 + 56 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25))
      {
        break;
      }
    }

LABEL_16:

    if (v18 == v17)
    {

      v3 = v38;
      v6 = v35;
      v4 = v36;
      v7 = v34;
      goto LABEL_35;
    }
  }

  v26 = ~v24;
  while (*(*(v3 + 48) + 8 * v25) != v22)
  {
    v25 = (v25 + 1) & v26;
    if (((*(v3 + 56 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  return 1;
}

uint64_t sub_252C2B064(void *a1)
{
  v3 = [v1 entityResponses];
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v5 = v3;
    type metadata accessor for HomeEntityResponse();
    v6 = sub_252E37264();

    v65 = v4;
    v59 = v6;
    if (v6 >> 62)
    {
      goto LABEL_91;
    }

    for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
    {
      v8 = 0;
      v61 = i;
      v9 = &off_279711000;
      v60 = a1;
      while (1)
      {
        if ((v59 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x2530ADF00](v8, v59);
        }

        else
        {
          if (v8 >= *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_88;
          }

          v10 = *(v59 + 32 + 8 * v8);
        }

        v11 = v10;
        v12 = __OFADD__(v8++, 1);
        if (v12)
        {
          goto LABEL_87;
        }

        v4 = [a1 attribute];
        v13 = [v11 v9[220]];
        v62 = v11;
        if (!v13)
        {
          if (qword_27F53F4E8 != -1)
          {
            swift_once();
          }

          v23 = sub_252E36AD4();
          __swift_project_value_buffer(v23, qword_27F544D60);
          v63 = 0;
          v64 = 0xE000000000000000;
          sub_252E379F4();

          v63 = 0xD00000000000002DLL;
          v64 = 0x8000000252E6E870;
          v24 = [v11 description];
          v25 = sub_252E36F34();
          v27 = v26;

          MEMORY[0x2530AD570](v25, v27);

          sub_252CC3D90(v63, v64, 0xD00000000000008CLL, 0x8000000252E6E8A0);
          goto LABEL_29;
        }

        v14 = v13;
        type metadata accessor for HomeUserTaskResponse();
        v15 = sub_252E37264();

        if (!(v15 >> 62))
        {
          break;
        }

        v16 = sub_252E378C4();
        if (v16)
        {
          goto LABEL_15;
        }

LABEL_29:

LABEL_30:
        v4 = [a1 attribute];
        v28 = [v62 v9[220]];
        if (v28)
        {
          v29 = v28;
          type metadata accessor for HomeUserTaskResponse();
          v30 = sub_252E37264();

          if (v30 >> 62)
          {
            v31 = sub_252E378C4();
            if (v31)
            {
LABEL_33:
              v32 = 0;
              while (1)
              {
                if ((v30 & 0xC000000000000001) != 0)
                {
                  v33 = MEMORY[0x2530ADF00](v32, v30);
                }

                else
                {
                  if (v32 >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_86;
                  }

                  v33 = *(v30 + 8 * v32 + 32);
                }

                v34 = v33;
                a1 = (v32 + 1);
                if (__OFADD__(v32, 1))
                {
                  break;
                }

                v35 = [v33 userTask];
                if (v35)
                {
                  v36 = v35;
                  v37 = [v35 attribute];

                  if (v37 == v4)
                  {

                    v4 = sub_2529C6784();

                    a1 = v60;
                    v9 = &off_279711000;
                    if ((v4 & 1) == 0)
                    {
                      goto LABEL_6;
                    }

                    goto LABEL_49;
                  }
                }

                ++v32;
                if (a1 == v31)
                {
                  goto LABEL_76;
                }
              }

LABEL_85:
              __break(1u);
LABEL_86:
              __break(1u);
LABEL_87:
              __break(1u);
LABEL_88:
              __break(1u);
LABEL_89:
              __break(1u);
              goto LABEL_90;
            }
          }

          else
          {
            v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v31)
            {
              goto LABEL_33;
            }
          }

LABEL_76:

          a1 = v60;
LABEL_77:
          v9 = &off_279711000;
        }

        else
        {
          if (qword_27F53F4E8 != -1)
          {
            swift_once();
          }

          v38 = sub_252E36AD4();
          v39 = __swift_project_value_buffer(v38, qword_27F544D60);
          v63 = 0;
          v64 = 0xE000000000000000;
          sub_252E379F4();

          v63 = 0xD00000000000002DLL;
          v64 = 0x8000000252E6E870;
          v40 = [v62 description];
          v41 = sub_252E36F34();
          v43 = v42;

          MEMORY[0x2530AD570](v41, v43);

          v4 = v39;
          sub_252CC3D90(v63, v64, 0xD00000000000008CLL, 0x8000000252E6E8A0);
        }

LABEL_7:
        if (v8 == v61)
        {
          v4 = v65;
          goto LABEL_81;
        }
      }

      v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v16)
      {
        goto LABEL_29;
      }

LABEL_15:
      v17 = 0;
      while (1)
      {
        if ((v15 & 0xC000000000000001) != 0)
        {
          v18 = MEMORY[0x2530ADF00](v17, v15);
        }

        else
        {
          if (v17 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_84;
          }

          v18 = *(v15 + 8 * v17 + 32);
        }

        v19 = v18;
        a1 = (v17 + 1);
        if (__OFADD__(v17, 1))
        {
          __break(1u);
LABEL_84:
          __break(1u);
          goto LABEL_85;
        }

        v20 = [v18 userTask];
        if (v20)
        {
          v21 = v20;
          v22 = [v20 attribute];

          if (v22 == v4)
          {
            break;
          }
        }

        ++v17;
        if (a1 == v16)
        {
          a1 = v60;
          v9 = &off_279711000;
          goto LABEL_29;
        }
      }

      v4 = sub_2529C61E4();

      a1 = v60;
      v9 = &off_279711000;
      if ((v4 & 1) == 0)
      {
        goto LABEL_30;
      }

LABEL_49:
      v44 = [v62 v9[220]];
      if (!v44)
      {
        goto LABEL_6;
      }

      v4 = v44;
      type metadata accessor for HomeUserTaskResponse();
      v45 = sub_252E37264();

      v46 = [v62 entity];
      if (!v46)
      {

        goto LABEL_7;
      }

      if (v45 >> 62)
      {
        v47 = sub_252E378C4();
        if (v47)
        {
          goto LABEL_53;
        }

LABEL_5:

LABEL_6:

        goto LABEL_7;
      }

      v47 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v47)
      {
        goto LABEL_5;
      }

LABEL_53:
      v48 = 0;
      while (1)
      {
        if ((v45 & 0xC000000000000001) != 0)
        {
          v49 = MEMORY[0x2530ADF00](v48, v45);
        }

        else
        {
          if (v48 >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_89;
          }

          v49 = *(v45 + 32 + 8 * v48);
        }

        v50 = v49;
        v12 = __OFADD__(v48++, 1);
        if (v12)
        {
          break;
        }

        if (qword_27F53F728 != -1)
        {
          swift_once();
        }

        v51 = qword_27F575C38;
        v52 = [v50 taskOutcome];
        if (*(v51 + 16))
        {
          v53 = v52;
          sub_252E37EC4();
          MEMORY[0x2530AE390](v53);
          v4 = &v63;
          v54 = sub_252E37F14();
          v55 = -1 << *(v51 + 32);
          v56 = v54 & ~v55;
          if ((*(v51 + 56 + ((v56 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v56))
          {
            v57 = ~v55;
            while (*(*(v51 + 48) + 8 * v56) != v53)
            {
              v56 = (v56 + 1) & v57;
              if (((*(v51 + 56 + ((v56 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v56) & 1) == 0)
              {
                goto LABEL_54;
              }
            }

            v4 = &v65;
            sub_252E37A94();
            sub_252E37AC4();
            sub_252E37AD4();
            sub_252E37AA4();
            goto LABEL_77;
          }
        }

LABEL_54:

        if (v48 == v47)
        {

          goto LABEL_77;
        }
      }

LABEL_90:
      __break(1u);
LABEL_91:
      ;
    }

LABEL_81:
  }

  return v4;
}

BOOL sub_252C2B888()
{
  v1 = v0;
  v2 = [v0 entityResponses];
  if (v2)
  {
    v3 = v2;
    type metadata accessor for HomeEntityResponse();
    v4 = sub_252E37264();

    if (!(v4 >> 62))
    {
LABEL_3:
      v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_4;
    }
  }

  else
  {
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v13 = sub_252E36AD4();
    __swift_project_value_buffer(v13, qword_27F544D60);
    sub_252E379F4();

    v14 = v0;
    v15 = [v14 description];
    v16 = sub_252E36F34();
    v18 = v17;

    MEMORY[0x2530AD570](v16, v18);

    sub_252CC3D90(0xD00000000000002FLL, 0x8000000252E69700, 0xD000000000000098, 0x8000000252E69730);

    v4 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
      goto LABEL_3;
    }
  }

  v5 = sub_252E378C4();
LABEL_4:

  if (!v5)
  {
    return 0;
  }

  v6 = [v1 entityResponses];
  if (!v6)
  {
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v19 = sub_252E36AD4();
    __swift_project_value_buffer(v19, qword_27F544D60);
    sub_252E379F4();

    v20 = v1;
    v21 = [v20 description];
    v22 = sub_252E36F34();
    v24 = v23;

    MEMORY[0x2530AD570](v22, v24);

    sub_252CC3D90(0xD00000000000002FLL, 0x8000000252E69700, 0xD000000000000098, 0x8000000252E69730);

    v8 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
      goto LABEL_7;
    }

LABEL_19:
    v9 = sub_252E378C4();
    goto LABEL_8;
  }

  v7 = v6;
  type metadata accessor for HomeEntityResponse();
  v8 = sub_252E37264();

  if (v8 >> 62)
  {
    goto LABEL_19;
  }

LABEL_7:
  v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_8:

  v10 = sub_252C28980(&qword_27F53F730, &qword_27F575C40, sub_252DA5854);
  if (v10 >> 62)
  {
    v11 = sub_252E378C4();
  }

  else
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v9 == v11;
}

id sub_252C2BC20(id a1)
{
  v2 = [v1 entityResponses];
  if (!v2)
  {
    if (qword_27F53F4E8 != -1)
    {
      goto LABEL_46;
    }

    goto LABEL_37;
  }

  v3 = v2;
  type metadata accessor for HomeEntityResponse();
  v4 = sub_252E37264();

  if (!(v4 >> 62))
  {
    goto LABEL_3;
  }

  while (2)
  {
    v5 = sub_252E378C4();
    if (!v5)
    {
      goto LABEL_39;
    }

LABEL_4:
    v6 = 0;
    v7 = v4 & 0xC000000000000001;
    v34 = v4 + 32;
    v35 = v4 & 0xFFFFFFFFFFFFFF8;
    v8 = &off_279711000;
    v9 = MEMORY[0x277D84F90];
    v37 = v5;
    v38 = v4;
    v36 = v4 & 0xC000000000000001;
    while (1)
    {
      if (v7)
      {
        v11 = MEMORY[0x2530ADF00](v6, v4);
      }

      else
      {
        if (v6 >= *(v35 + 16))
        {
          goto LABEL_45;
        }

        v11 = *(v34 + 8 * v6);
      }

      v12 = v11;
      if (__OFADD__(v6++, 1))
      {
        break;
      }

      v14 = [v11 v8[220]];
      if (v14)
      {
        v15 = v14;
        v39 = v12;
        type metadata accessor for HomeUserTaskResponse();
        v16 = sub_252E37264();

        v41 = v9;
        if (v16 >> 62)
        {
          v17 = sub_252E378C4();
          if (v17)
          {
LABEL_15:
            v18 = 0;
            while (1)
            {
              if ((v16 & 0xC000000000000001) != 0)
              {
                v19 = MEMORY[0x2530ADF00](v18, v16);
              }

              else
              {
                if (v18 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_43;
                }

                v19 = *(v16 + 8 * v18 + 32);
              }

              v20 = v19;
              v21 = v18 + 1;
              if (__OFADD__(v18, 1))
              {
                break;
              }

              v22 = [v19 userTask];
              if (v22 && (v23 = v22, v24 = [v22 attribute], v23, v24 == a1))
              {
                sub_252E37A94();
                sub_252E37AC4();
                sub_252E37AD4();
                sub_252E37AA4();
              }

              else
              {
              }

              ++v18;
              if (v21 == v17)
              {
                v25 = v41;
                v5 = v37;
                v4 = v38;
                v7 = v36;
                v8 = &off_279711000;
                v9 = MEMORY[0x277D84F90];
                goto LABEL_30;
              }
            }

            __break(1u);
LABEL_43:
            __break(1u);
            break;
          }
        }

        else
        {
          v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v17)
          {
            goto LABEL_15;
          }
        }

        v9 = MEMORY[0x277D84F90];
        v25 = MEMORY[0x277D84F90];
LABEL_30:

        v12 = v39;
      }

      else
      {
        v25 = v9;
      }

      if (v25 >> 62)
      {
        if (!sub_252E378C4())
        {
LABEL_33:

          goto LABEL_6;
        }
      }

      else if (!*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_33;
      }

      type metadata accessor for HomeUserTaskResponse();
      v10 = sub_252E37254();

      [v12 setTaskResponses_];

LABEL_6:
      if (v6 == v5)
      {
        goto LABEL_39;
      }
    }

    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    swift_once();
LABEL_37:
    v26 = sub_252E36AD4();
    __swift_project_value_buffer(v26, qword_27F544D60);
    sub_252E379F4();

    v27 = v33;
    v28 = [v27 description];
    v29 = sub_252E36F34();
    v31 = v30;

    MEMORY[0x2530AD570](v29, v31);

    sub_252CC3D90(0xD00000000000002FLL, 0x8000000252E69700, 0xD000000000000098, 0x8000000252E69730);

    v4 = MEMORY[0x277D84F90];
    if (MEMORY[0x277D84F90] >> 62)
    {
      continue;
    }

    break;
  }

LABEL_3:
  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5)
  {
    goto LABEL_4;
  }

LABEL_39:

  return v33;
}

uint64_t sub_252C2C068()
{
  v1 = [v0 entityResponses];
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v3 = v1;
    type metadata accessor for HomeEntityResponse();
    v4 = sub_252E37264();

    v24 = v2;
    if (v4 >> 62)
    {
      goto LABEL_31;
    }

    for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
    {
      v6 = 0;
      v22 = v4 & 0xFFFFFFFFFFFFFF8;
      v23 = v4 & 0xC000000000000001;
      v19 = v4;
      v20 = i;
      v21 = v4 + 32;
      v4 = &off_279711000;
      while (1)
      {
        if (v23)
        {
          v7 = MEMORY[0x2530ADF00](v6, v19);
        }

        else
        {
          if (v6 >= *(v22 + 16))
          {
            goto LABEL_30;
          }

          v7 = *(v21 + 8 * v6);
        }

        v8 = v7;
        if (__OFADD__(v6++, 1))
        {
          break;
        }

        v10 = [v7 taskResponses];
        if (v10)
        {
          v11 = v10;
          type metadata accessor for HomeUserTaskResponse();
          v12 = sub_252E37264();

          if (v12 >> 62)
          {
            v13 = sub_252E378C4();
          }

          else
          {
            v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v14 = 0;
          while (1)
          {
            if (v13 == v14)
            {

              i = v20;
              goto LABEL_6;
            }

            if ((v12 & 0xC000000000000001) != 0)
            {
              v15 = MEMORY[0x2530ADF00](v14, v12);
            }

            else
            {
              if (v14 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_28;
              }

              v15 = *(v12 + 8 * v14 + 32);
            }

            v16 = v15;
            if (__OFADD__(v14, 1))
            {
              break;
            }

            v17 = [v15 taskOutcome];

            ++v14;
            if (v17 == 17)
            {

              sub_252E37A94();
              sub_252E37AC4();
              sub_252E37AD4();
              sub_252E37AA4();
              i = v20;
              goto LABEL_6;
            }
          }

          __break(1u);
LABEL_28:
          __break(1u);
          break;
        }

LABEL_6:
        if (v6 == i)
        {
          v2 = v24;
          goto LABEL_33;
        }
      }

      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      ;
    }

    v2 = MEMORY[0x277D84F90];
LABEL_33:
  }

  return v2;
}

uint64_t sub_252C2C2E4(id a1)
{
  v2 = v1;
  v4 = [v2 entityResponses];
  if (v4)
  {
    v5 = v4;
    type metadata accessor for HomeEntityResponse();
    v6 = sub_252E37264();

    if (v6 >> 62)
    {
      goto LABEL_36;
    }

    for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
    {
      v8 = 0;
      v9 = v6 & 0xC000000000000001;
      v10 = v6 & 0xFFFFFFFFFFFFFF8;
      v36 = v6 + 32;
      v33 = i;
      v34 = v6;
      v31 = v6 & 0xFFFFFFFFFFFFFF8;
      v32 = v6 & 0xC000000000000001;
      while (1)
      {
        if (v9)
        {
          v11 = MEMORY[0x2530ADF00](v8, v6);
        }

        else
        {
          if (v8 >= *(v10 + 16))
          {
            goto LABEL_35;
          }

          v11 = *(v36 + 8 * v8);
        }

        v12 = v11;
        if (__OFADD__(v8++, 1))
        {
          break;
        }

        v14 = [v11 taskResponses];
        v15 = v12;
        if (v14)
        {
          v16 = v14;
          v35 = v15;
          type metadata accessor for HomeUserTaskResponse();
          v17 = sub_252E37264();

          v6 = v17 & 0xFFFFFFFFFFFFFF8;
          if (v17 >> 62)
          {
            v18 = sub_252E378C4();
          }

          else
          {
            v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v19 = 0;
          while (1)
          {
            if (v18 == v19)
            {

              i = v33;
              v6 = v34;
              v10 = v31;
              v9 = v32;
              goto LABEL_23;
            }

            if ((v17 & 0xC000000000000001) != 0)
            {
              v20 = MEMORY[0x2530ADF00](v19, v17);
            }

            else
            {
              if (v19 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_33;
              }

              v20 = *(v17 + 8 * v19 + 32);
            }

            v21 = v20;
            if (__OFADD__(v19, 1))
            {
              break;
            }

            v22 = [v20 taskOutcome];

            ++v19;
            if (v22 == a1)
            {

              v29 = 1;
              goto LABEL_31;
            }
          }

          __break(1u);
LABEL_33:
          __break(1u);
          break;
        }

LABEL_23:
        if (v8 == i)
        {
          goto LABEL_30;
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      ;
    }
  }

  else
  {
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v23 = sub_252E36AD4();
    __swift_project_value_buffer(v23, qword_27F544D60);
    sub_252E379F4();

    v24 = v2;
    v25 = [v24 description];
    v26 = sub_252E36F34();
    v28 = v27;

    MEMORY[0x2530AD570](v26, v28);

    sub_252CC4050(0xD00000000000002FLL, 0x8000000252E69700, 0xD000000000000098, 0x8000000252E69730, 0xD000000000000011, 0x8000000252E8B4F0, 72);
  }

LABEL_30:
  v29 = 0;
LABEL_31:

  return v29;
}

uint64_t sub_252C2C640()
{
  v1 = [v0 entityResponses];
  if (v1)
  {
    v2 = v1;
    type metadata accessor for HomeEntityResponse();
    v3 = sub_252E37264();

    v18 = MEMORY[0x277D84F90];
    if (v3 >> 62)
    {
LABEL_22:
      v4 = sub_252E378C4();
    }

    else
    {
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v5 = 0;
    v6 = MEMORY[0x277D84F90];
    while (v4 != v5)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x2530ADF00](v5, v3);
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        v7 = *(v3 + 8 * v5 + 32);
      }

      v8 = v7;
      v9 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      v10 = [v7 entity];

      ++v5;
      if (v10)
      {
        MEMORY[0x2530AD700]();
        if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_252E372A4();
        }

        sub_252E372D4();
        v6 = v18;
        v5 = v9;
      }
    }
  }

  else
  {
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v11 = sub_252E36AD4();
    __swift_project_value_buffer(v11, qword_27F544D60);
    sub_252E379F4();

    v12 = v0;
    v13 = [v12 description];
    v14 = sub_252E36F34();
    v16 = v15;

    MEMORY[0x2530AD570](v14, v16);

    sub_252CC3D90(0xD00000000000002FLL, 0x8000000252E69700, 0xD000000000000098, 0x8000000252E69730);

    return MEMORY[0x277D84F90];
  }

  return v6;
}

uint64_t sub_252C2C8E0(uint64_t a1)
{
  v3 = [v1 entityResponses];
  if (v3)
  {
    v4 = v3;
    type metadata accessor for HomeEntityResponse();
    v5 = sub_252E37264();

    if (v5 >> 62)
    {
      goto LABEL_22;
    }

    for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
    {
      v7 = 0;
      while (1)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x2530ADF00](v7, v5);
        }

        else
        {
          if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_21;
          }

          v8 = *(v5 + 32 + 8 * v7);
        }

        v9 = v8;
        if (__OFADD__(v7++, 1))
        {
          break;
        }

        v11 = sub_252DA6828();
        v12 = *(v11 + 2);
        v13 = 32;
        while (v12)
        {
          v14 = *&v11[v13];
          v13 += 8;
          --v12;
          if (v14 == a1)
          {

            return 1;
          }
        }

        if (v7 == i)
        {
          goto LABEL_19;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      ;
    }
  }

  else
  {
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v16 = sub_252E36AD4();
    __swift_project_value_buffer(v16, qword_27F544D60);
    sub_252E379F4();

    v17 = v1;
    v18 = [v17 description];
    v19 = sub_252E36F34();
    v21 = v20;

    MEMORY[0x2530AD570](v19, v21);

    sub_252CC4050(0xD00000000000002FLL, 0x8000000252E69700, 0xD000000000000098, 0x8000000252E69730, 0x7274746128736168, 0xEF293A6574756269, 80);
  }

LABEL_19:

  return 0;
}

uint64_t sub_252C2CB58()
{
  result = [v0 entityResponses];
  if (result)
  {
    v2 = result;
    type metadata accessor for HomeEntityResponse();
    v3 = sub_252E37264();

    if (v3 >> 62)
    {
      goto LABEL_33;
    }

    for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
    {
      v5 = 0;
      while (1)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x2530ADF00](v5, v3);
        }

        else
        {
          if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_32;
          }

          v6 = *(v3 + 32 + 8 * v5);
        }

        v7 = v6;
        if (__OFADD__(v5++, 1))
        {
          break;
        }

        v9 = [v6 entity];
        if (v9 && (v10 = v9, v11 = [v9 deviceTypes], v10, v11))
        {
          v12 = sub_252E37264();

          if (*(v12 + 16))
          {
            v13 = *(v12 + 32);

            if (qword_27F53F410 != -1)
            {
              swift_once();
            }

            v14 = 0;
            v15 = 1 << *(qword_27F575A48 + 32);
            if (v15 < 64)
            {
              v16 = ~(-1 << v15);
            }

            else
            {
              v16 = -1;
            }

            v17 = v16 & *(qword_27F575A48 + 56);
            v18 = (v15 + 63) >> 6;
            while (v17)
            {
              v19 = v14;
LABEL_25:
              v20 = __clz(__rbit64(v17));
              v17 &= v17 - 1;
              if (*(*(qword_27F575A48 + 48) + ((v19 << 9) | (8 * v20))) == v13)
              {

                return 1;
              }
            }

            while (1)
            {
              v19 = v14 + 1;
              if (__OFADD__(v14, 1))
              {
                break;
              }

              if (v19 >= v18)
              {
                goto LABEL_5;
              }

              v17 = *(qword_27F575A48 + 56 + 8 * v19);
              ++v14;
              if (v17)
              {
                v14 = v19;
                goto LABEL_25;
              }
            }

            __break(1u);
            break;
          }

          if (v5 == i)
          {
            goto LABEL_34;
          }
        }

        else
        {
LABEL_5:

          if (v5 == i)
          {
            goto LABEL_34;
          }
        }
      }

      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      ;
    }

LABEL_34:

    return 0;
  }

  return result;
}

void *sub_252C2CDC4(unsigned __int8 *a1, uint64_t a2)
{
  v4 = *a1;
  if (qword_27F53F400 != -1)
  {
    goto LABEL_161;
  }

LABEL_2:
  v5 = qword_27F575A38;
  if (!*(qword_27F575A38 + 16))
  {
    return MEMORY[0x277D84F90];
  }

  v101 = v2;
  v6 = sub_252A4509C(v4);
  v7 = MEMORY[0x277D84F90];
  if ((v8 & 1) == 0)
  {
    return v7;
  }

  v9 = *(*(v5 + 56) + 8 * v6);
  type metadata accessor for MutableAttributeValue();
  swift_initStackObject();
  v10 = sub_252D6CC80(v9);
  if ((a2 & 0xFFFFFFFFFFFFFFFELL) != 8)
  {
    if (a2 != 13)
    {
      LODWORD(v17) = 0;
      goto LABEL_44;
    }

    v13 = v10;
    LOBYTE(v108) = v4;
    if (StateSemantic.rawValue.getter() == 0x64656D7261 && v14 == 0xE500000000000000)
    {
    }

    else
    {
      v19 = sub_252E37DB4();

      if ((v19 & 1) == 0)
      {
        LODWORD(v17) = 1;
        goto LABEL_44;
      }
    }

    *(v13 + 48) = xmmword_252E41BD0;

    LODWORD(v17) = 1;
    goto LABEL_44;
  }

  v11 = v10;
  LOBYTE(v108) = v4;
  if (StateSemantic.rawValue.getter() != 1852141679 || v12 != 0xE400000000000000)
  {
    v15 = sub_252E37DB4();

    if (v15)
    {
      goto LABEL_14;
    }

    LOBYTE(v108) = v4;
    if (StateSemantic.rawValue.getter() != 0x6465736F6C63 || v20 != 0xE600000000000000)
    {
      v21 = sub_252E37DB4();

      if ((v21 & 1) == 0)
      {
        goto LABEL_43;
      }

      goto LABEL_14;
    }
  }

LABEL_14:
  if (a2 == 9)
  {
    LOBYTE(v108) = v4;
    if (StateSemantic.rawValue.getter() == 1852141679 && v16 == 0xE400000000000000)
    {

LABEL_29:
      LODWORD(v17) = 0;
      v23 = 100;
LABEL_30:
      *(v11 + 40) = v23;
      goto LABEL_44;
    }

    v22 = sub_252E37DB4();

    if (v22)
    {
      goto LABEL_29;
    }

    LOBYTE(v108) = v4;
    if (StateSemantic.rawValue.getter() != 0x6465736F6C63 || v25 != 0xE600000000000000)
    {
      v26 = sub_252E37DB4();

      if (v26)
      {
        goto LABEL_32;
      }

      goto LABEL_43;
    }

    goto LABEL_21;
  }

  LOBYTE(v108) = v4;
  if (StateSemantic.rawValue.getter() == 1852141679 && v18 == 0xE400000000000000)
  {
LABEL_21:

LABEL_32:
    LODWORD(v17) = 0;
    *(v11 + 40) = 0;
    goto LABEL_44;
  }

  v24 = sub_252E37DB4();

  if (v24)
  {
    goto LABEL_32;
  }

  LOBYTE(v108) = v4;
  if (StateSemantic.rawValue.getter() == 0x6465736F6C63 && v27 == 0xE600000000000000)
  {

LABEL_42:
    LODWORD(v17) = 0;
    v23 = 1;
    goto LABEL_30;
  }

  v28 = sub_252E37DB4();

  if (v28)
  {
    goto LABEL_42;
  }

LABEL_43:
  LODWORD(v17) = 0;
LABEL_44:
  v29 = sub_252D6CDCC();
  v30 = "/Library/Caches/com.apple.xbs/Sources/SiriHomeAutomation/HomeAutomationInternal/Shared/Utilities/ControlHomeIntent/ControlHomeIntentResponse+Utils.swift";
  if (!v29)
  {
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v39 = sub_252E36AD4();
    __swift_project_value_buffer(v39, qword_27F544D60);
    sub_252CC4050(0xD00000000000004ALL, 0x8000000252E8B540, 0xD000000000000098, 0x8000000252E69730, 0xD000000000000014, 0x8000000252E8B590, 401);

    return v7;
  }

  v31 = v29;
  v104 = a2;
  if (qword_27F53F4E8 != -1)
  {
    goto LABEL_164;
  }

  while (1)
  {
    v32 = sub_252E36AD4();
    __swift_project_value_buffer(v32, qword_27F544D60);
    a2 = 0xE000000000000000;
    v108 = 0;
    v109 = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0x2064657269736544, 0xEF203A6574617473);
    LOBYTE(v107) = v4;
    sub_252E37AE4();
    v30 -= 32;
    sub_252CC3D90(v108, v109, 0xD000000000000098, v30 | 0x8000000000000000);

    v108 = 0;
    v109 = 0xE000000000000000;
    sub_252E379F4();

    v108 = 0xD000000000000018;
    v109 = 0x8000000252E8B5B0;
    v33 = v31;
    v34 = [v33 description];
    v35 = sub_252E36F34();
    v37 = v36;
    v106 = v33;

    MEMORY[0x2530AD570](v35, v37);

    v88 = v30;
    sub_252CC3D90(v108, v109, 0xD000000000000098, v30 | 0x8000000000000000);

    v31 = v104;
    if (!v17)
    {
      goto LABEL_80;
    }

    LOBYTE(v108) = v4;
    if (StateSemantic.rawValue.getter() == 0x64656D7261 && v38 == 0xE500000000000000)
    {
      break;
    }

    v40 = sub_252E37DB4();

    if (v40)
    {
      goto LABEL_54;
    }

LABEL_80:
    if (v104 != 9)
    {
      goto LABEL_123;
    }

    LOBYTE(v108) = v4;
    if (StateSemantic.rawValue.getter() == 1852141679 && v53 == 0xE400000000000000)
    {
    }

    else
    {
      v54 = sub_252E37DB4();

      if ((v54 & 1) == 0)
      {
LABEL_123:
        v70 = sub_252C285F0();
        v108 = v7;
        if (v70 >> 62)
        {
          v84 = v70;
          v2 = sub_252E378C4();
          v70 = v84;
          if (!v2)
          {
            goto LABEL_149;
          }
        }

        else
        {
          v2 = *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v2)
          {
            goto LABEL_149;
          }
        }

        v71 = 0;
        v97 = v70 & 0xFFFFFFFFFFFFFF8;
        v100 = v70 & 0xC000000000000001;
        v87 = v70;
        v91 = v2;
        v94 = (v70 + 32);
        while (1)
        {
          while (1)
          {
            if (v100)
            {
              v72 = MEMORY[0x2530ADF00](v71, v87);
            }

            else
            {
              if (v71 >= *(v97 + 16))
              {
                goto LABEL_158;
              }

              v72 = v94[v71];
            }

            v73 = v72;
            v45 = __OFADD__(v71++, 1);
            if (v45)
            {
              goto LABEL_157;
            }

            v74 = [v72 taskResponses];
            if (v74)
            {
              break;
            }

            if (v71 == v2)
            {
              goto LABEL_148;
            }
          }

          v75 = v74;
          v103 = v73;
          type metadata accessor for HomeUserTaskResponse();
          v2 = sub_252E37264();

          if (v2 >> 62)
          {
            v76 = sub_252E378C4();
            if (v76)
            {
LABEL_134:
              v77 = 0;
              a2 = v2 & 0xFFFFFFFFFFFFFF8;
              while (1)
              {
                if ((v2 & 0xC000000000000001) != 0)
                {
                  v78 = MEMORY[0x2530ADF00](v77, v2);
                }

                else
                {
                  if (v77 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_152;
                  }

                  v78 = *(v2 + 8 * v77 + 32);
                }

                v79 = v78;
                v80 = v77 + 1;
                if (__OFADD__(v77, 1))
                {
                  break;
                }

                v107 = v78;
                v4 = sub_252DA5D40(&v107, v104, v106, 0, 1);

                if (v4)
                {

                  sub_252E37A94();
                  sub_252E37AC4();
                  sub_252E37AD4();
                  sub_252E37AA4();
                  goto LABEL_147;
                }

                ++v77;
                if (v80 == v76)
                {
                  goto LABEL_146;
                }
              }

              __break(1u);
LABEL_152:
              __break(1u);
LABEL_153:
              __break(1u);
LABEL_154:
              __break(1u);
LABEL_155:
              __break(1u);
LABEL_156:
              __break(1u);
LABEL_157:
              __break(1u);
LABEL_158:
              __break(1u);
LABEL_159:
              __break(1u);
LABEL_160:
              __break(1u);
LABEL_161:
              swift_once();
              goto LABEL_2;
            }
          }

          else
          {
            v76 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v76)
            {
              goto LABEL_134;
            }
          }

LABEL_146:

LABEL_147:
          v2 = v91;
          if (v71 == v91)
          {
LABEL_148:
            v7 = v108;
            goto LABEL_149;
          }
        }
      }
    }

    v55 = sub_252C285F0();
    v108 = v7;
    if (v55 >> 62)
    {
      v86 = v55;
      v56 = sub_252E378C4();
      v55 = v86;
      if (!v56)
      {
        goto LABEL_149;
      }
    }

    else
    {
      v56 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v56)
      {
        goto LABEL_149;
      }
    }

    v57 = 0;
    v99 = v55 & 0xFFFFFFFFFFFFFF8;
    v101 = v55 & 0xC000000000000001;
    v90 = v55;
    v93 = v56;
    v96 = (v55 + 32);
    while (1)
    {
      if (v101)
      {
        v58 = MEMORY[0x2530ADF00](v57, v90);
      }

      else
      {
        if (v57 >= *(v99 + 16))
        {
          goto LABEL_163;
        }

        v58 = v96[v57];
      }

      v7 = v58;
      v45 = __OFADD__(v57++, 1);
      if (v45)
      {
        break;
      }

      v59 = [v58 taskResponses];
      if (v59)
      {
        v60 = v59;
        type metadata accessor for HomeUserTaskResponse();
        v2 = sub_252E37264();

        v104 = v7;
        if (!(v2 >> 62))
        {
          v61 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v61)
          {
            goto LABEL_96;
          }

          goto LABEL_120;
        }

        v61 = sub_252E378C4();
        if (v61)
        {
LABEL_96:
          v17 = 0;
          v4 = v2 & 0xC000000000000001;
          v30 = v2 & 0xFFFFFFFFFFFFFF8;
          while (1)
          {
            if (v4)
            {
              v62 = MEMORY[0x2530ADF00](v17, v2);
            }

            else
            {
              if (v17 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_156;
              }

              v62 = *(v2 + 8 * v17 + 32);
            }

            v31 = v62;
            v7 = (v17 + 1);
            if (__OFADD__(v17, 1))
            {
              goto LABEL_155;
            }

            v63 = [v62 userTask];
            if (!v63)
            {
              break;
            }

            v64 = v63;
            a2 = [v63 attribute];

            if (a2 != 9)
            {
              break;
            }

            v65 = [v31 userTask];
            if (!v65)
            {
              break;
            }

            a2 = v65;
            v66 = [v65 value];

            if (!v66)
            {
              break;
            }

            v67 = [v66 type];
            if (v67 == 2)
            {
              [v66 doubleValue];
              v69 = v68;

              if (v69 > 0.0)
              {
LABEL_117:

                sub_252E37A94();
                sub_252E37AC4();
                sub_252E37AD4();
                sub_252E37AA4();
                goto LABEL_121;
              }
            }

            else
            {
              if (v67 != 4)
              {

                goto LABEL_110;
              }

              a2 = [v66 integerValue];

              if (a2 > 0)
              {
                goto LABEL_117;
              }
            }

LABEL_111:
            ++v17;
            if (v7 == v61)
            {
              goto LABEL_120;
            }
          }

          v66 = v31;
LABEL_110:

          goto LABEL_111;
        }

LABEL_120:

LABEL_121:
        v56 = v93;
        if (v57 == v93)
        {
LABEL_122:
          v7 = v108;
          goto LABEL_149;
        }
      }

      else
      {

        if (v57 == v56)
        {
          goto LABEL_122;
        }
      }
    }

    __break(1u);
LABEL_163:
    __break(1u);
LABEL_164:
    swift_once();
  }

LABEL_54:
  v2 = v101;
  v41 = sub_252C285F0();
  v108 = v7;
  if (!(v41 >> 62))
  {
    v42 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v42)
    {
      goto LABEL_149;
    }

    goto LABEL_56;
  }

  v85 = v41;
  v42 = sub_252E378C4();
  v41 = v85;
  if (v42)
  {
LABEL_56:
    v4 = 0;
    v98 = v41 & 0xFFFFFFFFFFFFFF8;
    v102 = v41 & 0xC000000000000001;
    v89 = v41;
    v92 = v42;
    v95 = (v41 + 32);
    while (1)
    {
LABEL_59:
      if (v102)
      {
        v43 = MEMORY[0x2530ADF00](v4, v89);
      }

      else
      {
        if (v4 >= *(v98 + 16))
        {
          goto LABEL_160;
        }

        v43 = v95[v4];
      }

      v44 = v43;
      v45 = __OFADD__(v4++, 1);
      if (v45)
      {
        goto LABEL_159;
      }

      v46 = [v43 taskResponses];
      if (v46)
      {
        v47 = v46;
        type metadata accessor for HomeUserTaskResponse();
        v2 = sub_252E37264();

        if (v2 >> 62)
        {
          v48 = sub_252E378C4();
          v105 = v44;
          if (v48)
          {
LABEL_66:
            v49 = 0;
            do
            {
              if ((v2 & 0xC000000000000001) != 0)
              {
                v50 = MEMORY[0x2530ADF00](v49, v2);
              }

              else
              {
                if (v49 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_154;
                }

                v50 = *(v2 + 8 * v49 + 32);
              }

              v51 = v50;
              v52 = v49 + 1;
              if (__OFADD__(v49, 1))
              {
                goto LABEL_153;
              }

              v107 = v50;
              a2 = sub_252DA5D40(&v107, 0xD, v106, 0, 1);

              if (a2)
              {

                v42 = v92;
                if (v4 != v92)
                {
                  goto LABEL_59;
                }

                goto LABEL_122;
              }

              ++v49;
            }

            while (v52 != v48);
          }
        }

        else
        {
          v48 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v105 = v44;
          if (v48)
          {
            goto LABEL_66;
          }
        }

        v42 = v92;
      }

      sub_252E37A94();
      sub_252E37AC4();
      sub_252E37AD4();
      v2 = &v108;
      sub_252E37AA4();
      if (v4 == v42)
      {
        goto LABEL_122;
      }
    }
  }

LABEL_149:

  v108 = 0x65736E6F70736552;
  v109 = 0xEB00000000203A73;
  v81 = type metadata accessor for HomeEntityResponse();
  v82 = MEMORY[0x2530AD730](v7, v81);
  MEMORY[0x2530AD570](v82);

  sub_252CC3D90(v108, v109, 0xD000000000000098, v88 | 0x8000000000000000);

  return v7;
}

BOOL sub_252C2DC30()
{
  v1 = [v0 entityResponses];
  if (v1)
  {
    v2 = v1;
    type metadata accessor for HomeEntityResponse();
    v3 = sub_252E37264();
  }

  else
  {
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v4 = sub_252E36AD4();
    __swift_project_value_buffer(v4, qword_27F544D60);
    sub_252E379F4();

    v5 = v0;
    v6 = [v5 description];
    v7 = sub_252E36F34();
    v9 = v8;

    MEMORY[0x2530AD570](v7, v9);

    sub_252CC3D90(0xD00000000000002FLL, 0x8000000252E69700, 0xD000000000000098, 0x8000000252E69730);

    v3 = MEMORY[0x277D84F90];
  }

  v10 = sub_252C28980(&qword_27F53F730, &qword_27F575C40, sub_252DA5854);
  if (v3 >> 62)
  {
    v18 = v10;
    v19 = sub_252E378C4();
    v10 = v18;
    if (!v19)
    {
      goto LABEL_23;
    }
  }

  else if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_23;
  }

  v11 = v10 >> 62;
  if (!(v10 >> 62))
  {
    if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_10;
    }

LABEL_23:

    return 0;
  }

  v20 = v10;
  v21 = sub_252E378C4();
  v10 = v20;
  if (!v21)
  {
    goto LABEL_23;
  }

LABEL_10:
  v12 = v10;
  if (v3 >> 62)
  {
    v13 = sub_252E378C4();
  }

  else
  {
    v13 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v11)
  {
    v14 = sub_252E378C4();
  }

  else
  {
    v14 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v13 == v14)
  {
    return 0;
  }

  v15 = sub_252C2A5D8();
  if (v15 >> 62)
  {
    v16 = sub_252E378C4();
  }

  else
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v16 != 0;
}

uint64_t sub_252C2DF04(uint64_t a1)
{
  result = [v1 entityResponses];
  if (result)
  {
    v4 = result;
    type metadata accessor for HomeEntityResponse();
    v5 = sub_252E37264();

    if (v5 >> 62)
    {
      goto LABEL_39;
    }

    for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
    {
      v7 = 0;
      v8 = v5 & 0xC000000000000001;
      v36 = v5 + 32;
      v37 = v5 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v8)
        {
          v9 = MEMORY[0x2530ADF00](v7, v5);
        }

        else
        {
          if (v7 >= *(v37 + 16))
          {
            goto LABEL_38;
          }

          v9 = *(v36 + 8 * v7);
        }

        v10 = v9;
        if (__OFADD__(v7++, 1))
        {
          break;
        }

        v12 = [v9 entity];
        v38 = v10;
        if (!v12)
        {
          v25 = v8;
          if (qword_27F53F4E8 != -1)
          {
            swift_once();
          }

          v26 = sub_252E36AD4();
          __swift_project_value_buffer(v26, qword_27F544D60);
          sub_252E379F4();

          v27 = [v10 description];
          v28 = sub_252E36F34();
          v30 = v29;

          MEMORY[0x2530AD570](v28, v30);

          sub_252CC3D90(0xD000000000000025, 0x8000000252E75B90, 0xD00000000000008CLL, 0x8000000252E6E8A0);

          v18 = MEMORY[0x277D84F90];
          v8 = v25;
          v31 = *(MEMORY[0x277D84F90] + 16);
          if (!v31)
          {
            goto LABEL_25;
          }

          goto LABEL_30;
        }

        v13 = v12;
        v14 = [v12 deviceTypes];
        if (!v14)
        {

          goto LABEL_29;
        }

        v15 = v14;
        v16 = sub_252E37264();

        v17 = *(v16 + 16);
        if (v17)
        {
          v34 = i;
          v35 = v5;
          v39 = MEMORY[0x277D84F90];
          sub_2529AA420(0, v17, 0);
          v18 = v39;
          v19 = 32;
          do
          {
            v20 = sub_252E25FC4(*(v16 + v19));
            if (v21)
            {
              v22 = 0;
            }

            else
            {
              v22 = v20;
            }

            v24 = *(v39 + 16);
            v23 = *(v39 + 24);
            if (v24 >= v23 >> 1)
            {
              sub_2529AA420((v23 > 1), v24 + 1, 1);
            }

            *(v39 + 16) = v24 + 1;
            *(v39 + 8 * v24 + 32) = v22;
            v19 += 8;
            --v17;
          }

          while (v17);

          i = v34;
          v5 = v35;
          v31 = *(v39 + 16);
          if (!v31)
          {
            goto LABEL_25;
          }

LABEL_30:
          v32 = 32;
          while (v31)
          {
            v33 = *(v18 + v32);
            v32 += 8;
            --v31;
            if (v33 == a1)
            {

              return 1;
            }
          }

          if (v7 == i)
          {
            goto LABEL_40;
          }
        }

        else
        {

LABEL_29:
          v18 = MEMORY[0x277D84F90];
          v31 = *(MEMORY[0x277D84F90] + 16);
          if (v31)
          {
            goto LABEL_30;
          }

LABEL_25:

          if (v7 == i)
          {
            goto LABEL_40;
          }
        }
      }

      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      ;
    }

LABEL_40:

    return 0;
  }

  return result;
}

uint64_t sub_252C2E320(void *a1, uint64_t *a2, uint64_t a3)
{
  v3 = sub_252C2A5D8();
  v33 = MEMORY[0x277D84F90];
  if (v3 >> 62)
  {
    goto LABEL_42;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    while (1)
    {
      v25 = v3;
      v5 = 0;
      v27 = v3 & 0xFFFFFFFFFFFFFF8;
      v28 = v3 & 0xC000000000000001;
      v26 = v3 + 32;
      while (1)
      {
        if (v28)
        {
          v3 = MEMORY[0x2530ADF00](v5, v25);
        }

        else
        {
          if (v5 >= *(v27 + 16))
          {
            goto LABEL_38;
          }

          v3 = *(v26 + 8 * v5);
        }

        v6 = v3;
        v7 = __OFADD__(v5++, 1);
        if (v7)
        {
          __break(1u);
LABEL_38:
          __break(1u);
          goto LABEL_39;
        }

        if (*a1 != -1)
        {
          swift_once();
        }

        v8 = *(*a2 + 16);
        if (v8)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5402B8, &qword_252E3C0E8);
          v9 = swift_allocObject();
          v10 = _swift_stdlib_malloc_size(v9);
          v11 = v10 - 32;
          if (v10 < 32)
          {
            v11 = v10 - 25;
          }

          v9[2] = v8;
          v9[3] = 2 * (v11 >> 3);
          v31 = sub_252E1135C();

          v3 = sub_25291AE30(v32);
          if (v31 != v8)
          {
            goto LABEL_41;
          }
        }

        else
        {
          v9 = MEMORY[0x277D84F90];
        }

        v12 = [v6 taskResponses];
        if (v12)
        {
          break;
        }

LABEL_4:
        if (v5 == v4)
        {
          v22 = v33;
          goto LABEL_44;
        }
      }

      v13 = v12;
      type metadata accessor for HomeUserTaskResponse();
      v14 = sub_252E37264();

      if (!(v14 >> 62))
      {
        break;
      }

      v3 = sub_252E378C4();
      v15 = v3;
      if (!v3)
      {
        goto LABEL_35;
      }

LABEL_20:
      v16 = 0;
      while (1)
      {
        if ((v14 & 0xC000000000000001) != 0)
        {
          v3 = MEMORY[0x2530ADF00](v16, v14);
        }

        else
        {
          if (v16 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_40;
          }

          v3 = *(v14 + 32 + 8 * v16);
        }

        v17 = v3;
        v7 = __OFADD__(v16++, 1);
        if (v7)
        {
          break;
        }

        v18 = [v3 taskOutcome];
        v19 = v9[2];
        v20 = 4;
        while (v19)
        {
          v21 = v9[v20++];
          --v19;
          if (v21 == v18)
          {

            sub_252E37A94();
            sub_252E37AC4();
            sub_252E37AD4();
            v3 = sub_252E37AA4();
            goto LABEL_4;
          }
        }

        if (v16 == v15)
        {
          goto LABEL_35;
        }
      }

LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      v23 = v3;
      v4 = sub_252E378C4();
      v3 = v23;
      if (!v4)
      {
        goto LABEL_43;
      }
    }

    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v15)
    {
      goto LABEL_20;
    }

LABEL_35:

    goto LABEL_4;
  }

LABEL_43:
  v22 = MEMORY[0x277D84F90];
LABEL_44:

  return v22;
}

uint64_t sub_252C2E688()
{
  v0 = sub_252C2A5D8();
  v20 = MEMORY[0x277D84F90];
  if (v0 >> 62)
  {
    goto LABEL_30;
  }

  for (i = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10); i; v0 = v13)
  {
    v2 = 0;
    v18 = v0 & 0xFFFFFFFFFFFFFF8;
    v19 = v0 & 0xC000000000000001;
    v15 = v0;
    v16 = i;
    v17 = v0 + 32;
    while (1)
    {
      if (v19)
      {
        v0 = MEMORY[0x2530ADF00](v2, v15);
      }

      else
      {
        if (v2 >= *(v18 + 16))
        {
          goto LABEL_29;
        }

        v0 = *(v17 + 8 * v2);
      }

      v3 = v0;
      if (__OFADD__(v2++, 1))
      {
        break;
      }

      v5 = [v0 taskResponses];
      if (v5)
      {
        v6 = v5;
        type metadata accessor for HomeUserTaskResponse();
        v7 = sub_252E37264();

        if (v7 >> 62)
        {
          v0 = sub_252E378C4();
          v8 = v0;
        }

        else
        {
          v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v9 = 0;
        while (1)
        {
          if (v8 == v9)
          {

            i = v16;
            goto LABEL_5;
          }

          if ((v7 & 0xC000000000000001) != 0)
          {
            v0 = MEMORY[0x2530ADF00](v9, v7);
          }

          else
          {
            if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_27;
            }

            v0 = *(v7 + 8 * v9 + 32);
          }

          v10 = v0;
          if (__OFADD__(v9, 1))
          {
            break;
          }

          v11 = [v0 taskOutcome];

          ++v9;
          if (v11 == 17)
          {

            sub_252E37A94();
            sub_252E37AC4();
            sub_252E37AD4();
            v0 = sub_252E37AA4();
            i = v16;
            goto LABEL_5;
          }
        }

        __break(1u);
LABEL_27:
        __break(1u);
        break;
      }

LABEL_5:
      if (v2 == i)
      {
        v12 = v20;
        goto LABEL_32;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    v13 = v0;
    i = sub_252E378C4();
  }

  v12 = MEMORY[0x277D84F90];
LABEL_32:

  return v12;
}

id sub_252C2E8D0(id a1)
{
  v2 = [v1 entityResponses];
  if (!v2)
  {
    if (qword_27F53F4E8 != -1)
    {
      goto LABEL_38;
    }

    goto LABEL_29;
  }

  v3 = v2;
  type metadata accessor for HomeEntityResponse();
  v4 = sub_252E37264();

  if (v4 >> 62)
  {
    goto LABEL_30;
  }

  while (1)
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      break;
    }

    while (1)
    {
      v6 = 0;
      v7 = v4 & 0xC000000000000001;
      v32 = v4 + 32;
      v33 = v4 & 0xFFFFFFFFFFFFFF8;
      v8 = &off_279711000;
      v35 = v5;
      v36 = v4;
      v34 = v4 & 0xC000000000000001;
      while (1)
      {
        if (v7)
        {
          v10 = MEMORY[0x2530ADF00](v6, v4);
        }

        else
        {
          if (v6 >= *(v33 + 16))
          {
            goto LABEL_37;
          }

          v10 = *(v32 + 8 * v6);
        }

        v11 = v10;
        if (__OFADD__(v6++, 1))
        {
          break;
        }

        v13 = [v10 v8[220]];
        if (v13)
        {
          v14 = v13;
          v37 = v11;
          type metadata accessor for HomeUserTaskResponse();
          v15 = sub_252E37264();

          if (v15 >> 62)
          {
            v16 = sub_252E378C4();
            if (v16)
            {
LABEL_14:
              v17 = 0;
              while (1)
              {
                if ((v15 & 0xC000000000000001) != 0)
                {
                  v18 = MEMORY[0x2530ADF00](v17, v15);
                }

                else
                {
                  if (v17 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_35;
                  }

                  v18 = *(v15 + 8 * v17 + 32);
                }

                v19 = v18;
                v20 = v17 + 1;
                if (__OFADD__(v17, 1))
                {
                  break;
                }

                v21 = [v18 userTask];
                if (v21 && (v22 = v21, v23 = [v21 attribute], v22, v23 == a1))
                {
                }

                else
                {
                  sub_252E37A94();
                  sub_252E37AC4();
                  sub_252E37AD4();
                  sub_252E37AA4();
                }

                ++v17;
                if (v20 == v16)
                {
                  v5 = v35;
                  v4 = v36;
                  v7 = v34;
                  v8 = &off_279711000;
                  goto LABEL_27;
                }
              }

              __break(1u);
LABEL_35:
              __break(1u);
              break;
            }
          }

          else
          {
            v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v16)
            {
              goto LABEL_14;
            }
          }

LABEL_27:

          v11 = v37;
        }

        type metadata accessor for HomeUserTaskResponse();
        v9 = sub_252E37254();

        [v11 setTaskResponses_];

        if (v6 == v5)
        {
          goto LABEL_31;
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      swift_once();
LABEL_29:
      v24 = sub_252E36AD4();
      __swift_project_value_buffer(v24, qword_27F544D60);
      sub_252E379F4();

      v25 = v31;
      v26 = [v25 description];
      v27 = sub_252E36F34();
      v29 = v28;

      MEMORY[0x2530AD570](v27, v29);

      sub_252CC3D90(0xD00000000000002FLL, 0x8000000252E69700, 0xD000000000000098, 0x8000000252E69730);

      v4 = MEMORY[0x277D84F90];
      if (!(MEMORY[0x277D84F90] >> 62))
      {
        break;
      }

LABEL_30:
      v5 = sub_252E378C4();
      if (!v5)
      {
        goto LABEL_31;
      }
    }
  }

LABEL_31:

  return v31;
}

unint64_t sub_252C2ECE0()
{
  v1 = v0;
  v2 = [v0 entityResponses];
  if (!v2)
  {
    goto LABEL_66;
  }

  v3 = v2;
  type metadata accessor for HomeEntityResponse();
  v4 = sub_252E37264();

  v5 = v4;
  v6 = v4 & 0xFFFFFFFFFFFFFF8;
  v7 = v4 >> 62;
  if (v7)
  {
    goto LABEL_64;
  }

  v57 = *(v6 + 16);
  if (!v57)
  {
LABEL_65:

LABEL_66:
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v47 = sub_252E36AD4();
    __swift_project_value_buffer(v47, qword_27F544D60);
    sub_252E379F4();

    v48 = v1;
    v49 = [v48 description];
    v50 = sub_252E36F34();
    v52 = v51;

    MEMORY[0x2530AD570](v50, v52);

    sub_252CC3D90(0xD00000000000002FLL, 0x8000000252E69700, 0xD000000000000098, 0x8000000252E69730);

    return 0;
  }

  while (1)
  {
    v54 = v7;
    if (*(ControlHomeIntent.getTargetDeviceTypes()() + 2) != 1)
    {

      v1 = 0;
      v10 = v5 & 0xC000000000000001;
      v12 = v5 & 0xFFFFFFFFFFFFFF8;
      v13 = v5 + 32;
      v7 = v57;
      v58 = v5 & 0xFFFFFFFFFFFFFF8;
      v59 = v5 & 0xC000000000000001;
      v55 = v5 + 32;
      v56 = v5;
      while (1)
      {
        if (v10)
        {
          v19 = MEMORY[0x2530ADF00](v1, v5);
        }

        else
        {
          if (v1 >= *(v12 + 16))
          {
            goto LABEL_63;
          }

          v19 = *(v13 + 8 * v1);
        }

        v20 = v19;
        v21 = __OFADD__(v1++, 1);
        if (v21)
        {
          goto LABEL_62;
        }

        v22 = [v19 entity];
        if (!v22)
        {
          v10 = v59;
          if (qword_27F53F4E8 != -1)
          {
            swift_once();
          }

          v14 = sub_252E36AD4();
          __swift_project_value_buffer(v14, qword_27F544D60);
          sub_252E379F4();

          v15 = [v20 description];
          v16 = sub_252E36F34();
          v18 = v17;

          MEMORY[0x2530AD570](v16, v18);

          sub_252CC3D90(0xD000000000000025, 0x8000000252E75B90, 0xD00000000000008CLL, 0x8000000252E6E8A0);

          goto LABEL_11;
        }

        v23 = v22;
        v24 = [v22 deviceTypes];
        if (v24)
        {
          v25 = v24;
          v26 = sub_252E37264();

          v27 = *(v26 + 16);
          if (v27)
          {
            v60 = MEMORY[0x277D84F90];
            sub_2529AA420(0, v27, 0);
            v28 = v60;
            v29 = 32;
            do
            {
              v30 = sub_252E25FC4(*(v26 + v29));
              if (v31)
              {
                v32 = 0;
              }

              else
              {
                v32 = v30;
              }

              v34 = *(v60 + 16);
              v33 = *(v60 + 24);
              if (v34 >= v33 >> 1)
              {
                sub_2529AA420((v33 > 1), v34 + 1, 1);
              }

              *(v60 + 16) = v34 + 1;
              *(v60 + 8 * v34 + 32) = v32;
              v29 += 8;
              --v27;
            }

            while (v27);

            v13 = v55;
            v5 = v56;
            goto LABEL_30;
          }
        }

        else
        {
        }

        v28 = MEMORY[0x277D84F90];
LABEL_30:
        v35 = *(v28 + 16);

        v10 = v59;
        if (v35 == 1)
        {
          v36 = sub_252DA10F8();

          v7 = v57;
          if (*(v36 + 16))
          {
            v1 = *(v36 + 32);

            v11 = v58;
            goto LABEL_35;
          }

          goto LABEL_56;
        }

        v7 = v57;
LABEL_11:
        v12 = v58;
        if (v1 == v7)
        {
          goto LABEL_56;
        }
      }
    }

    v1 = sub_252DB4F48();
    v9 = v8;

    v7 = v57;
    if (v9)
    {
LABEL_56:

LABEL_57:
      if (qword_27F53F4E8 != -1)
      {
        swift_once();
      }

      v46 = sub_252E36AD4();
      __swift_project_value_buffer(v46, qword_27F544D60);
      sub_252CC3D90(0xD000000000000028, 0x8000000252E8B510, 0xD000000000000098, 0x8000000252E69730);
      return 0;
    }

    v10 = v5 & 0xC000000000000001;
    v11 = v5 & 0xFFFFFFFFFFFFFF8;
LABEL_35:
    v37 = 0;
    v61 = MEMORY[0x277D84F90];
LABEL_37:
    if (v10)
    {
      break;
    }

    if (v37 < *(v11 + 16))
    {
      v38 = *(v5 + 32 + 8 * v37);
      goto LABEL_40;
    }

LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    v57 = sub_252E378C4();
    if (!v57)
    {
      goto LABEL_65;
    }
  }

  v38 = MEMORY[0x2530ADF00](v37, v5);
LABEL_40:
  v39 = v38;
  v21 = __OFADD__(v37++, 1);
  if (v21)
  {
    __break(1u);
    goto LABEL_61;
  }

  v40 = sub_252DA10F8();
  v41 = *(v40 + 16);
  v42 = 32;
  do
  {
    if (!v41)
    {

      if (v37 != v7)
      {
        goto LABEL_37;
      }

      goto LABEL_47;
    }

    v43 = *(v40 + v42);
    v42 += 8;
    --v41;
  }

  while (v43 != v1);

  sub_252E37A94();
  sub_252E37AC4();
  sub_252E37AD4();
  sub_252E37AA4();
  if (v37 != v7)
  {
    goto LABEL_37;
  }

LABEL_47:
  if (v54)
  {
    v44 = sub_252E378C4();
  }

  else
  {
    v44 = *(v11 + 16);
  }

  if (v61 < 0 || (v61 & 0x4000000000000000) != 0)
  {
    v45 = sub_252E378C4();
  }

  else
  {
    v45 = *(v61 + 16);
  }

  if (v44 != v45)
  {
    goto LABEL_57;
  }

  return v1;
}

char *sub_252C2F3B0(uint64_t a1)
{
  v3 = [v1 entityResponses];
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v5 = v3;
    type metadata accessor for HomeEntityResponse();
    v6 = sub_252E37264();

    v17 = v4;
    if (v6 >> 62)
    {
      goto LABEL_21;
    }

    for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
    {
      v8 = 0;
LABEL_6:
      while (2)
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x2530ADF00](v8, v6);
        }

        else
        {
          if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_20;
          }

          v9 = *(v6 + 32 + 8 * v8);
        }

        v10 = v9;
        if (!__OFADD__(v8++, 1))
        {
          v12 = sub_252DA6828();
          v13 = *(v12 + 2);
          v14 = 32;
          do
          {
            if (!v13)
            {
              v4 = v12;

              if (v8 != i)
              {
                goto LABEL_6;
              }

              goto LABEL_16;
            }

            v15 = *&v12[v14];
            v14 += 8;
            --v13;
          }

          while (v15 != a1);

          sub_252E37A94();
          sub_252E37AC4();
          sub_252E37AD4();
          v4 = &v17;
          sub_252E37AA4();
          if (v8 != i)
          {
            continue;
          }

LABEL_16:
          v4 = v17;
          goto LABEL_17;
        }

        break;
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      ;
    }

LABEL_17:
  }

  return v4;
}

void *sub_252C2F554()
{
  v1 = [v0 entityResponses];
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v3 = v1;
    type metadata accessor for HomeEntityResponse();
    v4 = sub_252E37264();

    v13 = v2;
    if (v4 >> 62)
    {
      goto LABEL_20;
    }

    for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
    {
      v6 = 0;
      while (1)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x2530ADF00](v6, v4);
        }

        else
        {
          if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_19;
          }

          v7 = *(v4 + 8 * v6 + 32);
        }

        v8 = v7;
        v9 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        v10 = [v7 entity];
        if (v10 && (v2 = v10, v11 = [v10 type], v2, v11 == 5))
        {
          sub_252E37A94();
          sub_252E37AC4();
          sub_252E37AD4();
          v2 = &v13;
          sub_252E37AA4();
        }

        else
        {
        }

        ++v6;
        if (v9 == i)
        {
          v2 = v13;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      ;
    }

LABEL_16:
  }

  return v2;
}

uint64_t sub_252C2F6F4()
{
  result = sub_2529FE088(&unk_2864A19B0);
  qword_27F575A30 = result;
  return result;
}

uint64_t sub_252C2F71C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541AD8, &unk_252E58BD0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_252E53770;
  *(inited + 32) = 0;
  v1 = type metadata accessor for HomeAttributeValue();
  v2 = objc_allocWithZone(v1);
  v3 = sub_252E36F04();
  v4 = [v2 initWithIdentifier:0 displayString:v3];

  v5 = v4;
  [v5 setBoolValue_];
  [v5 setType_];

  *(inited + 40) = v5;
  *(inited + 48) = 1;
  v6 = objc_allocWithZone(v1);
  v7 = sub_252E36F04();
  v8 = [v6 initWithIdentifier:0 displayString:v7];

  v9 = v8;
  [v9 setBoolValue_];
  [v9 setType_];

  *(inited + 56) = v9;
  *(inited + 64) = 46;
  *(inited + 72) = HomeAttributeValue.__allocating_init(stringValue:unit:)(0x4D52415F59415741, 0xE800000000000000, 0);
  *(inited + 80) = 49;
  *(inited + 88) = HomeAttributeValue.__allocating_init(stringValue:unit:)(0x4D52415F59415741, 0xE800000000000000, 0);
  *(inited + 96) = 47;
  *(inited + 104) = HomeAttributeValue.__allocating_init(stringValue:unit:)(0x52415F544847494ELL, 0xE90000000000004DLL, 0);
  *(inited + 112) = 48;
  *(inited + 120) = HomeAttributeValue.__allocating_init(stringValue:unit:)(0x4D52415F59415453, 0xE800000000000000, 0);
  *(inited + 128) = 50;
  *(inited + 136) = HomeAttributeValue.__allocating_init(stringValue:unit:)(0x4D5241534944, 0xE600000000000000, 0);
  *(inited + 144) = 5;
  v10 = objc_allocWithZone(v1);
  v11 = sub_252E36F04();
  v12 = [v10 initWithIdentifier:0 displayString:v11];

  v13 = v12;
  [v13 setIntegerValue_];
  [v13 setUnit_];
  [v13 setType_];

  *(inited + 152) = v13;
  *(inited + 160) = 6;
  v14 = objc_allocWithZone(v1);
  v15 = sub_252E36F04();
  v16 = [v14 initWithIdentifier:0 displayString:v15];

  v17 = v16;
  [v17 setIntegerValue_];
  [v17 setUnit_];
  [v17 setType_];

  *(inited + 168) = v17;
  *(inited + 176) = 9;
  v18 = objc_allocWithZone(v1);
  v19 = sub_252E36F04();
  v20 = [v18 initWithIdentifier:0 displayString:v19];

  v21 = v20;
  [v21 setIntegerValue_];
  [v21 setUnit_];
  [v21 setType_];

  *(inited + 184) = v21;
  *(inited + 192) = 10;
  v22 = objc_allocWithZone(v1);
  v23 = sub_252E36F04();
  v24 = [v22 initWithIdentifier:0 displayString:v23];

  v25 = v24;
  [v25 setIntegerValue_];
  [v25 setUnit_];
  [v25 setType_];

  *(inited + 200) = v25;
  v26 = sub_252CC5AB4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541AE0, &qword_252E419E8);
  result = swift_arrayDestroy();
  qword_27F575A38 = v26;
  return result;
}

uint64_t sub_252C2FB64()
{
  result = sub_2529FC004(&unk_2864A7170);
  qword_27F575A40 = result;
  return result;
}

uint64_t sub_252C2FB8C()
{
  result = sub_2529FC004(&unk_2864A0EC8);
  qword_27F575A48 = result;
  return result;
}

void *sub_252C2FBE4(uint64_t (*a1)(void))
{
  v2 = [v1 entityResponses];
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v4 = v2;
    type metadata accessor for HomeEntityResponse();
    v5 = sub_252E37264();

    v15 = v3;
    if (v5 >> 62)
    {
      goto LABEL_21;
    }

    for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
    {
      v7 = 0;
      while (1)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x2530ADF00](v7, v5);
        }

        else
        {
          if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_20;
          }

          v8 = *(v5 + 8 * v7 + 32);
        }

        v9 = v8;
        v10 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        v11 = [v8 entity];
        if (v11 && (v3 = v11, v12 = [v11 type], v3, v12 == 5) && (v3 = v9, (a1() & 1) != 0))
        {
          sub_252E37A94();
          sub_252E37AC4();
          sub_252E37AD4();
          v3 = &v15;
          sub_252E37AA4();
        }

        else
        {
        }

        ++v7;
        if (v10 == i)
        {
          v3 = v15;
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      ;
    }

LABEL_17:
  }

  return v3;
}

uint64_t sub_252C2FD9C()
{
  v1 = [v0 entityResponses];
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v3 = v1;
    type metadata accessor for HomeEntityResponse();
    v4 = sub_252E37264();

    v5 = v4;
    v75 = v2;
    if (v4 >> 62)
    {
      goto LABEL_84;
    }

    v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      while (1)
      {
        v7 = 0;
        v8 = v5 & 0xC000000000000001;
        v9 = v5 & 0xFFFFFFFFFFFFFF8;
        v65 = v5;
        v10 = v5 + 32;
        v11 = &off_279711000;
        v70 = v5 & 0xC000000000000001;
        v71 = v6;
        v68 = v5 + 32;
        v69 = v5 & 0xFFFFFFFFFFFFFF8;
        while (1)
        {
          if (v8)
          {
            v5 = MEMORY[0x2530ADF00](v7, v65);
          }

          else
          {
            if (v7 >= *(v9 + 16))
            {
              goto LABEL_81;
            }

            v5 = *(v10 + 8 * v7);
          }

          v12 = v5;
          v13 = __OFADD__(v7++, 1);
          if (v13)
          {
            goto LABEL_80;
          }

          v14 = [v5 v11[221]];
          if (!v14)
          {
            goto LABEL_6;
          }

          v15 = v14;
          v16 = [v14 type];

          if (v16 != 7)
          {
            goto LABEL_6;
          }

          v17 = [v12 taskResponses];
          v74 = v12;
          if (v17)
          {
            break;
          }

LABEL_49:
          v44 = [v12 taskResponses];
          if (!v44)
          {
            goto LABEL_6;
          }

          v45 = v44;
          type metadata accessor for HomeUserTaskResponse();
          v46 = sub_252E37264();

          v47 = [v12 v11[221]];
          if (!v47)
          {

LABEL_6:

            goto LABEL_7;
          }

          if (v46 >> 62)
          {
            v5 = sub_252E378C4();
            v48 = v5;
            if (v5)
            {
LABEL_53:
              v49 = 0;
              v73 = v46 & 0xC000000000000001;
              v50 = v46 & 0xFFFFFFFFFFFFFF8;
              v67 = v46;
              v51 = v46 + 32;
              while (1)
              {
                if (v73)
                {
                  v5 = MEMORY[0x2530ADF00](v49, v67);
                }

                else
                {
                  if (v49 >= *(v50 + 16))
                  {
                    goto LABEL_79;
                  }

                  v5 = *(v51 + 8 * v49);
                }

                v52 = v5;
                v13 = __OFADD__(v49++, 1);
                if (v13)
                {
                  break;
                }

                if (qword_27F53F740 != -1)
                {
                  swift_once();
                }

                v53 = qword_27F575C50;
                v54 = [v52 taskOutcome];
                if (!*(v53 + 16))
                {
                  goto LABEL_54;
                }

                v55 = v54;
                sub_252E37EC4();
                MEMORY[0x2530AE390](v55);
                v56 = sub_252E37F14();
                v57 = -1 << *(v53 + 32);
                v58 = v56 & ~v57;
                if (((*(v53 + 56 + ((v58 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v58) & 1) == 0)
                {
                  goto LABEL_54;
                }

                v59 = ~v57;
                while (*(*(v53 + 48) + 8 * v58) != v55)
                {
                  v58 = (v58 + 1) & v59;
                  if (((*(v53 + 56 + ((v58 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v58) & 1) == 0)
                  {
                    goto LABEL_54;
                  }
                }

                v60 = [v52 userTask];
                if (v60)
                {
                  v61 = v60;
                  v62 = [v60 attribute];

                  if (v62 == 67)
                  {

                    v11 = &off_279711000;
                    goto LABEL_45;
                  }
                }

                else
                {
LABEL_54:
                }

                if (v49 == v48)
                {

                  v8 = v70;
                  v6 = v71;
                  v10 = v68;
                  v9 = v69;
                  v11 = &off_279711000;
                  goto LABEL_7;
                }
              }

LABEL_78:
              __break(1u);
LABEL_79:
              __break(1u);
LABEL_80:
              __break(1u);
LABEL_81:
              __break(1u);
              goto LABEL_82;
            }
          }

          else
          {
            v48 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v48)
            {
              goto LABEL_53;
            }
          }

LABEL_75:
          v8 = v70;
          v6 = v71;
          v10 = v68;
          v9 = v69;
LABEL_7:
          if (v7 == v6)
          {
            v2 = v75;
            goto LABEL_86;
          }
        }

        v18 = v17;
        type metadata accessor for HomeUserTaskResponse();
        v72 = sub_252E37264();

        v19 = [v12 v11[221]];
        if (!v19)
        {
          goto LABEL_48;
        }

        if (!(v72 >> 62))
        {
          break;
        }

        v5 = sub_252E378C4();
        v20 = v5;
        if (!v5)
        {
          goto LABEL_48;
        }

LABEL_18:
        v21 = 0;
        v66 = v20;
        while (1)
        {
          if ((v72 & 0xC000000000000001) != 0)
          {
            v5 = MEMORY[0x2530ADF00](v21, v72);
          }

          else
          {
            if (v21 >= *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_83;
            }

            v5 = *(v72 + 32 + 8 * v21);
          }

          v22 = v5;
          v13 = __OFADD__(v21++, 1);
          if (v13)
          {
            break;
          }

          v23 = [v5 userTask];
          if (v23 && (v24 = v23, v25 = [v23 value], v24, v25) && (v26 = objc_msgSend(v25, sel_cleaningJob), v25, v26))
          {
            v27 = [v26 runState];
          }

          else
          {
            v27 = 0;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541690, &qword_252E40958);
          v28 = sub_252E379A4();
          v29 = 0;
          v30 = v28 + 56;
          do
          {
            v33 = qword_2864A7238[v29 + 4];
            sub_252E37EC4();
            MEMORY[0x2530AE390](v33);
            v5 = sub_252E37F14();
            v34 = ~(-1 << *(v28 + 32));
            v35 = v5 & v34;
            v36 = (v5 & v34) >> 6;
            v37 = *(v30 + 8 * v36);
            v38 = 1 << (v5 & v34);
            v39 = *(v28 + 48);
            if ((v38 & v37) != 0)
            {
              while (*(v39 + 8 * v35) != v33)
              {
                v35 = (v35 + 1) & v34;
                v36 = v35 >> 6;
                v37 = *(v30 + 8 * (v35 >> 6));
                v38 = 1 << v35;
                if (((1 << v35) & v37) == 0)
                {
                  goto LABEL_30;
                }
              }
            }

            else
            {
LABEL_30:
              *(v30 + 8 * v36) = v38 | v37;
              *(v39 + 8 * v35) = v33;
              v31 = *(v28 + 16);
              v13 = __OFADD__(v31, 1);
              v32 = v31 + 1;
              if (v13)
              {
                __break(1u);
                goto LABEL_78;
              }

              *(v28 + 16) = v32;
            }

            ++v29;
          }

          while (v29 != 10);
          v11 = &off_279711000;
          if (*(v28 + 16))
          {
            sub_252E37EC4();
            MEMORY[0x2530AE390](v27);
            v40 = sub_252E37F14();
            v41 = -1 << *(v28 + 32);
            v42 = v40 & ~v41;
            if ((*(v30 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v42))
            {
              v43 = ~v41;
              while (*(*(v28 + 48) + 8 * v42) != v27)
              {
                v42 = (v42 + 1) & v43;
                if (((*(v30 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v42) & 1) == 0)
                {
                  goto LABEL_19;
                }
              }

LABEL_45:
              sub_252E37A94();
              sub_252E37AC4();
              sub_252E37AD4();
              v5 = sub_252E37AA4();
              goto LABEL_75;
            }
          }

LABEL_19:

          v8 = v70;
          v6 = v71;
          v10 = v68;
          v9 = v69;
          if (v21 == v66)
          {
            goto LABEL_48;
          }
        }

LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);
LABEL_84:
        v63 = v5;
        v6 = sub_252E378C4();
        v5 = v63;
        if (!v6)
        {
          goto LABEL_85;
        }
      }

      v20 = *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v20)
      {
        goto LABEL_18;
      }

LABEL_48:

      v12 = v74;
      goto LABEL_49;
    }

LABEL_85:
    v2 = MEMORY[0x277D84F90];
LABEL_86:
  }

  return v2;
}

uint64_t sub_252C304C4()
{
  i = [v0 entityResponses];
  if (i)
  {
    type metadata accessor for HomeEntityResponse();
    v2 = sub_252E37264();

    if (v2 >> 62)
    {
      goto LABEL_20;
    }

    for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
    {
      v3 = 0;
      while (1)
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          v4 = MEMORY[0x2530ADF00](v3, v2);
        }

        else
        {
          if (v3 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_19;
          }

          v4 = *(v2 + 8 * v3 + 32);
        }

        v5 = v4;
        v6 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          break;
        }

        v7 = [v4 entity];
        if (v7)
        {
          v8 = v7;
          v9 = [v7 type];

          if (v9 == 7)
          {
            i = 1;
            goto LABEL_16;
          }
        }

        else
        {
        }

        ++v3;
        if (v6 == i)
        {
          i = 0;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      ;
    }

LABEL_16:
  }

  return i;
}

uint64_t sub_252C30628()
{
  v1 = [v0 entityResponses];
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v3 = v1;
    type metadata accessor for HomeEntityResponse();
    v4 = sub_252E37264();

    v24 = v2;
    if (v4 >> 62)
    {
      goto LABEL_31;
    }

    for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
    {
      v6 = 0;
      v22 = v4 & 0xFFFFFFFFFFFFFF8;
      v23 = v4 & 0xC000000000000001;
      v19 = v4;
      v20 = i;
      v21 = v4 + 32;
      v4 = &off_279711000;
      while (1)
      {
        if (v23)
        {
          v7 = MEMORY[0x2530ADF00](v6, v19);
        }

        else
        {
          if (v6 >= *(v22 + 16))
          {
            goto LABEL_30;
          }

          v7 = *(v21 + 8 * v6);
        }

        v8 = v7;
        if (__OFADD__(v6++, 1))
        {
          break;
        }

        v10 = [v7 taskResponses];
        if (v10)
        {
          v11 = v10;
          type metadata accessor for HomeUserTaskResponse();
          v12 = sub_252E37264();

          if (v12 >> 62)
          {
            v13 = sub_252E378C4();
          }

          else
          {
            v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v14 = 0;
          while (1)
          {
            if (v13 == v14)
            {

              i = v20;
              goto LABEL_6;
            }

            if ((v12 & 0xC000000000000001) != 0)
            {
              v15 = MEMORY[0x2530ADF00](v14, v12);
            }

            else
            {
              if (v14 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_28;
              }

              v15 = *(v12 + 8 * v14 + 32);
            }

            v16 = v15;
            if (__OFADD__(v14, 1))
            {
              break;
            }

            v17 = [v15 taskOutcome];

            ++v14;
            if (v17 == 23)
            {

              sub_252E37A94();
              sub_252E37AC4();
              sub_252E37AD4();
              sub_252E37AA4();
              i = v20;
              goto LABEL_6;
            }
          }

          __break(1u);
LABEL_28:
          __break(1u);
          break;
        }

LABEL_6:
        if (v6 == i)
        {
          v2 = v24;
          goto LABEL_33;
        }
      }

      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      ;
    }

    v2 = MEMORY[0x277D84F90];
LABEL_33:
  }

  return v2;
}

BOOL sub_252C308A4()
{
  v1 = [v0 entityResponses];
  if (v1)
  {
    v2 = v1;
    type metadata accessor for HomeEntityResponse();
    v3 = sub_252E37264();

    v40 = MEMORY[0x277D84F90];
    v4 = v3 >> 62;
    if (v3 >> 62)
    {
LABEL_38:
      v5 = sub_252E378C4();
      v35 = v3;
      if (v5)
      {
LABEL_4:
        v34 = v4;
        v4 = 0;
        v6 = v3 & 0xC000000000000001;
        v7 = v3 & 0xFFFFFFFFFFFFFF8;
        v8 = v3 + 32;
        v9 = &off_279711000;
        v3 = &off_279711000;
        v38 = v6;
        v39 = v5;
        v36 = v8;
        v37 = v7;
        while (1)
        {
LABEL_6:
          if (v6)
          {
            v10 = MEMORY[0x2530ADF00](v4, v35);
          }

          else
          {
            if (v4 >= *(v7 + 16))
            {
              goto LABEL_37;
            }

            v10 = *(v8 + 8 * v4);
          }

          v11 = v10;
          if (__OFADD__(v4++, 1))
          {
LABEL_36:
            __break(1u);
LABEL_37:
            __break(1u);
            goto LABEL_38;
          }

          v13 = [v10 v9[221]];
          if (v13)
          {
            v14 = v13;
            v15 = [v13 type];

            if (v15 == 7)
            {
              v16 = [v11 taskResponses];
              if (v16)
              {
                break;
              }
            }
          }

          if (v4 == v5)
          {
            goto LABEL_32;
          }
        }

        v17 = v16;
        type metadata accessor for HomeUserTaskResponse();
        v18 = sub_252E37264();

        if (v18 >> 62)
        {
          v19 = sub_252E378C4();
        }

        else
        {
          v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v20 = 0;
        while (v19 != v20)
        {
          if ((v18 & 0xC000000000000001) != 0)
          {
            v21 = MEMORY[0x2530ADF00](v20, v18);
          }

          else
          {
            if (v20 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_35;
            }

            v21 = *(v18 + 8 * v20 + 32);
          }

          v22 = v21;
          if (__OFADD__(v20, 1))
          {
            __break(1u);
LABEL_35:
            __break(1u);
            goto LABEL_36;
          }

          v23 = [v21 taskOutcome];

          ++v20;
          if (v23 == 12)
          {

            sub_252E37A94();
            sub_252E37AC4();
            sub_252E37AD4();
            sub_252E37AA4();
            goto LABEL_25;
          }
        }

LABEL_25:
        v6 = v38;
        v5 = v39;
        v8 = v36;
        v7 = v37;
        v9 = &off_279711000;
        if (v4 != v39)
        {
          goto LABEL_6;
        }

LABEL_32:
        v31 = v40;
        v4 = v34;
        if ((v40 & 0x8000000000000000) == 0)
        {
          goto LABEL_40;
        }

        goto LABEL_46;
      }
    }

    else
    {
      v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v35 = v3;
      if (v5)
      {
        goto LABEL_4;
      }
    }

    v31 = MEMORY[0x277D84F90];
    if ((MEMORY[0x277D84F90] & 0x8000000000000000) == 0)
    {
LABEL_40:
      if ((v31 & 0x4000000000000000) == 0)
      {
        v32 = *(v31 + 16);
LABEL_42:

        if (v4)
        {
          v33 = sub_252E378C4();
        }

        else
        {
          v33 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        return v33 == v32;
      }
    }

LABEL_46:
    v32 = sub_252E378C4();
    goto LABEL_42;
  }

  if (qword_27F53F4E8 != -1)
  {
    swift_once();
  }

  v24 = sub_252E36AD4();
  __swift_project_value_buffer(v24, qword_27F544D60);
  sub_252E379F4();

  v25 = v0;
  v26 = [v25 description];
  v27 = sub_252E36F34();
  v29 = v28;

  MEMORY[0x2530AD570](v27, v29);

  sub_252CC3D90(0xD00000000000002FLL, 0x8000000252E69700, 0xD000000000000098, 0x8000000252E69730);

  return 0;
}

uint64_t sub_252C30CB4()
{
  v1 = [v0 entityResponses];
  if (v1)
  {
    v2 = v1;
    type metadata accessor for HomeEntityResponse();
    v3 = sub_252E37264();

    v4 = v3 & 0xFFFFFFFFFFFFFF8;
    if (v3 >> 62)
    {
LABEL_57:
      v5 = sub_252E378C4();
    }

    else
    {
      v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v6 = 0;
    v45 = v3;
    v46 = v5;
    v51 = v3 + 32;
    v52 = v3 & 0xC000000000000001;
    v47 = v4;
    while (1)
    {
      v8 = v6 != v5;
      if (v6 == v5)
      {
        break;
      }

      if (v52)
      {
        v9 = MEMORY[0x2530ADF00](v6, v45);
      }

      else
      {
        if (v6 >= *(v4 + 16))
        {
          goto LABEL_56;
        }

        v9 = *(v51 + 8 * v6);
      }

      v3 = v9;
      v10 = __OFADD__(v6++, 1);
      if (v10)
      {
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
        goto LABEL_57;
      }

      v48 = v8;
      v11 = [v9 taskResponses];
      if (v11)
      {
        v12 = v11;
        v49 = v6;
        type metadata accessor for HomeUserTaskResponse();
        v4 = sub_252E37264();

        v13 = [v3 entity];
        if (v13)
        {

          if (v4 >> 62)
          {
            v14 = sub_252E378C4();
            if (v14)
            {
LABEL_16:
              v15 = 0;
              v56 = v4 & 0xFFFFFFFFFFFFFF8;
              v57 = v4 & 0xC000000000000001;
              v54 = v3;
              v55 = v4 + 32;
              v53 = v4;
              v50 = v14;
              while (1)
              {
                if (v57)
                {
                  v16 = MEMORY[0x2530ADF00](v15, v4);
                }

                else
                {
                  if (v15 >= *(v56 + 16))
                  {
                    goto LABEL_54;
                  }

                  v16 = *(v55 + 8 * v15);
                }

                v4 = v16;
                v10 = __OFADD__(v15++, 1);
                if (v10)
                {
LABEL_53:
                  __break(1u);
LABEL_54:
                  __break(1u);
                  goto LABEL_55;
                }

                v17 = [v16 userTask];
                v58 = v4;
                if (v17 && (v18 = v17, v19 = [v17 value], v18, v19) && (v20 = objc_msgSend(v19, sel_cleaningJob), v19, v20))
                {
                  v4 = [v20 runState];
                }

                else
                {
                  v4 = 0;
                }

                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541690, &qword_252E40958);
                v21 = sub_252E379A4();
                v22 = 0;
                v23 = v21 + 56;
                do
                {
                  v26 = qword_2864A9A38[v22 + 4];
                  sub_252E37EC4();
                  MEMORY[0x2530AE390](v26);
                  v3 = v59;
                  v27 = sub_252E37F14();
                  v28 = ~(-1 << *(v21 + 32));
                  v29 = v27 & v28;
                  v30 = (v27 & v28) >> 6;
                  v31 = *(v23 + 8 * v30);
                  v32 = 1 << (v27 & v28);
                  v33 = *(v21 + 48);
                  if ((v32 & v31) != 0)
                  {
                    while (*(v33 + 8 * v29) != v26)
                    {
                      v29 = (v29 + 1) & v28;
                      v30 = v29 >> 6;
                      v31 = *(v23 + 8 * (v29 >> 6));
                      v32 = 1 << v29;
                      if (((1 << v29) & v31) == 0)
                      {
                        goto LABEL_28;
                      }
                    }
                  }

                  else
                  {
LABEL_28:
                    *(v23 + 8 * v30) = v32 | v31;
                    *(v33 + 8 * v29) = v26;
                    v24 = *(v21 + 16);
                    v10 = __OFADD__(v24, 1);
                    v25 = v24 + 1;
                    if (v10)
                    {
                      __break(1u);
                      goto LABEL_53;
                    }

                    *(v21 + 16) = v25;
                  }

                  ++v22;
                }

                while (v22 != 10);
                if (*(v21 + 16))
                {
                  sub_252E37EC4();
                  MEMORY[0x2530AE390](v4);
                  v34 = sub_252E37F14();
                  v35 = -1 << *(v21 + 32);
                  v36 = v34 & ~v35;
                  if ((*(v23 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36))
                  {
                    break;
                  }
                }

LABEL_17:

                v4 = v53;
                v3 = v54;
                if (v15 == v50)
                {
                  goto LABEL_5;
                }
              }

              v37 = ~v35;
              while (*(*(v21 + 48) + 8 * v36) != v4)
              {
                v36 = (v36 + 1) & v37;
                if (((*(v23 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36) & 1) == 0)
                {
                  goto LABEL_17;
                }
              }

              v8 = 1;
              break;
            }
          }

          else
          {
            v14 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v14)
            {
              goto LABEL_16;
            }
          }
        }

LABEL_5:

        v5 = v46;
        v4 = v47;
        v6 = v49;
      }

      v7 = sub_252DA3E40();

      if (v7)
      {
        v8 = v48;
        break;
      }
    }
  }

  else
  {
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v38 = sub_252E36AD4();
    __swift_project_value_buffer(v38, qword_27F544D60);
    sub_252E379F4();

    v59[0] = 0xD00000000000002FLL;
    v59[1] = 0x8000000252E69700;
    v39 = v0;
    v40 = [v39 description];
    v41 = sub_252E36F34();
    v43 = v42;

    MEMORY[0x2530AD570](v41, v43);

    sub_252CC3D90(0xD00000000000002FLL, 0x8000000252E69700, 0xD000000000000098, 0x8000000252E69730);
    v8 = 0;
  }

  return v8;
}

uint64_t sub_252C31230()
{
  v1 = [v0 entityResponses];
  if (v1)
  {
    v2 = v1;
    type metadata accessor for HomeEntityResponse();
    v3 = sub_252E37264();

    v42 = v3;
    if (v3 >> 62)
    {
      goto LABEL_46;
    }

    for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
    {
      v5 = 0;
      v6 = v42 & 0xC000000000000001;
      v7 = v42 & 0xFFFFFFFFFFFFFF8;
      v8 = v42 + 32;
      v9 = &off_279711000;
      v10 = &off_279711000;
      v45 = v42 & 0xC000000000000001;
      v46 = i;
      v43 = v42 + 32;
      v44 = v42 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v6)
        {
          v11 = MEMORY[0x2530ADF00](v5, v42);
        }

        else
        {
          if (v5 >= *(v7 + 16))
          {
            goto LABEL_45;
          }

          v11 = *(v8 + 8 * v5);
        }

        v12 = v11;
        v13 = __OFADD__(v5++, 1);
        if (v13)
        {
          break;
        }

        v14 = [v11 v9[220]];
        if (v14)
        {
          v15 = v14;
          type metadata accessor for HomeUserTaskResponse();
          v16 = sub_252E37264();

          v17 = [v12 v10[221]];
          if (v17)
          {
            v47 = v12;

            v48 = v16;
            if (v16 >> 62)
            {
              v18 = sub_252E378C4();
              if (v18)
              {
LABEL_15:
                v19 = 0;
                v20 = v16 & 0xC000000000000001;
                v21 = v16 & 0xFFFFFFFFFFFFFF8;
                v22 = v16 + 32;
                while (1)
                {
                  if (v20)
                  {
                    v23 = MEMORY[0x2530ADF00](v19, v48);
                  }

                  else
                  {
                    if (v19 >= *(v21 + 16))
                    {
                      goto LABEL_43;
                    }

                    v23 = *(v22 + 8 * v19);
                  }

                  v24 = v23;
                  v13 = __OFADD__(v19++, 1);
                  if (v13)
                  {
                    break;
                  }

                  if (qword_27F53F740 != -1)
                  {
                    swift_once();
                  }

                  v25 = qword_27F575C50;
                  v26 = [v24 taskOutcome];
                  if (!*(v25 + 16))
                  {
                    goto LABEL_16;
                  }

                  v27 = v26;
                  sub_252E37EC4();
                  MEMORY[0x2530AE390](v27);
                  v28 = sub_252E37F14();
                  v29 = -1 << *(v25 + 32);
                  v30 = v28 & ~v29;
                  if (((*(v25 + 56 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
                  {
                    goto LABEL_16;
                  }

                  v31 = ~v29;
                  while (*(*(v25 + 48) + 8 * v30) != v27)
                  {
                    v30 = (v30 + 1) & v31;
                    if (((*(v25 + 56 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
                    {
                      goto LABEL_16;
                    }
                  }

                  v32 = [v24 userTask];
                  if (v32)
                  {
                    v33 = v32;
                    v34 = [v32 attribute];

                    if (v34 == 67)
                    {

                      return 1;
                    }
                  }

                  else
                  {
LABEL_16:
                  }

                  if (v19 == v18)
                  {

                    v6 = v45;
                    i = v46;
                    v8 = v43;
                    v7 = v44;
                    v9 = &off_279711000;
                    v10 = &off_279711000;
                    goto LABEL_6;
                  }
                }

                __break(1u);
LABEL_43:
                __break(1u);
                break;
              }
            }

            else
            {
              v18 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v18)
              {
                goto LABEL_15;
              }
            }
          }

          else
          {
          }
        }

        else
        {
        }

LABEL_6:
        if (v5 == i)
        {
          goto LABEL_47;
        }
      }

      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      ;
    }
  }

  else
  {
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v35 = sub_252E36AD4();
    __swift_project_value_buffer(v35, qword_27F544D60);
    sub_252E379F4();

    v36 = v0;
    v37 = [v36 description];
    v38 = sub_252E36F34();
    v40 = v39;

    MEMORY[0x2530AD570](v38, v40);

    sub_252CC3D90(0xD00000000000002FLL, 0x8000000252E69700, 0xD000000000000098, 0x8000000252E69730);
  }

LABEL_47:

  return 0;
}

uint64_t sub_252C316BC()
{
  v1 = [v0 entityResponses];
  if (v1)
  {
    v2 = v1;
    type metadata accessor for HomeEntityResponse();
    v3 = sub_252E37264();

    if (v3 >> 62)
    {
      goto LABEL_37;
    }

    for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
    {
      v5 = 0;
      v6 = v3 & 0xC000000000000001;
      v7 = v3 & 0xFFFFFFFFFFFFFF8;
      v30 = v3 & 0xFFFFFFFFFFFFFF8;
      v31 = v3 + 32;
      v28 = i;
      v29 = v3;
      v27 = v3 & 0xC000000000000001;
      while (1)
      {
        if (v6)
        {
          v8 = MEMORY[0x2530ADF00](v5, v3);
        }

        else
        {
          if (v5 >= *(v7 + 16))
          {
            goto LABEL_36;
          }

          v8 = *(v31 + 8 * v5);
        }

        v9 = v8;
        if (__OFADD__(v5++, 1))
        {
          break;
        }

        v11 = [v8 taskResponses];
        if (v11)
        {
          v12 = v11;
          type metadata accessor for HomeUserTaskResponse();
          v13 = sub_252E37264();

          v14 = [v9 entity];
          if (v14)
          {

            if (v13 >> 62)
            {
              v15 = sub_252E378C4();
              if (v15)
              {
LABEL_14:
                v16 = 0;
                v3 = v13 & 0xC000000000000001;
                while (1)
                {
                  if (v15 == v16)
                  {

                    i = v28;
                    v3 = v29;
                    v6 = v27;
                    goto LABEL_27;
                  }

                  if (v3)
                  {
                    v17 = MEMORY[0x2530ADF00](v16, v13);
                  }

                  else
                  {
                    if (v16 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
                    {
                      goto LABEL_34;
                    }

                    v17 = *(v13 + 8 * v16 + 32);
                  }

                  v18 = v17;
                  if (__OFADD__(v16, 1))
                  {
                    break;
                  }

                  v19 = [v17 taskOutcome];

                  ++v16;
                  if (v19 == 24)
                  {

                    return 1;
                  }
                }

                __break(1u);
LABEL_34:
                __break(1u);
                break;
              }
            }

            else
            {
              v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v15)
              {
                goto LABEL_14;
              }
            }
          }

LABEL_27:
          v7 = v30;
          if (v5 == i)
          {
            goto LABEL_32;
          }
        }

        else
        {

          if (v5 == i)
          {
            goto LABEL_32;
          }
        }
      }

      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      ;
    }
  }

  else
  {
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v20 = sub_252E36AD4();
    __swift_project_value_buffer(v20, qword_27F544D60);
    sub_252E379F4();

    v21 = v0;
    v22 = [v21 description];
    v23 = sub_252E36F34();
    v25 = v24;

    MEMORY[0x2530AD570](v23, v25);

    sub_252CC3D90(0xD00000000000002FLL, 0x8000000252E69700, 0xD000000000000098, 0x8000000252E69730);
  }

LABEL_32:

  return 0;
}

uint64_t sub_252C31A30()
{
  v1 = [v0 entityResponses];
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v3 = v1;
    type metadata accessor for HomeEntityResponse();
    v4 = sub_252E37264();

    v54 = v2;
    if (v4 >> 62)
    {
      goto LABEL_74;
    }

    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      while (2)
      {
        v6 = 0;
        v51 = v4 & 0xFFFFFFFFFFFFFF8;
        v52 = v4 & 0xC000000000000001;
        v48 = v4;
        v49 = v5;
        v50 = v4 + 32;
        while (1)
        {
          if (v52)
          {
            v7 = MEMORY[0x2530ADF00](v6, v48);
          }

          else
          {
            if (v6 >= *(v51 + 16))
            {
              goto LABEL_71;
            }

            v7 = *(v50 + 8 * v6);
          }

          v4 = v7;
          v8 = __OFADD__(v6++, 1);
          if (v8)
          {
            goto LABEL_70;
          }

          v9 = [v7 taskResponses];
          if (v9)
          {
            break;
          }

LABEL_6:
          if (v6 == v5)
          {
            v2 = v54;
            goto LABEL_76;
          }
        }

        v10 = v9;
        v53 = v4;
        type metadata accessor for HomeUserTaskResponse();
        v11 = sub_252E37264();

        if (v11 >> 62)
        {
          v12 = sub_252E378C4();
          if (v12)
          {
LABEL_14:
            v13 = 0;
            while (1)
            {
              if ((v11 & 0xC000000000000001) != 0)
              {
                v14 = MEMORY[0x2530ADF00](v13, v11);
              }

              else
              {
                if (v13 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_69;
                }

                v14 = *(v11 + 8 * v13 + 32);
              }

              v15 = v14;
              v16 = v13 + 1;
              if (__OFADD__(v13, 1))
              {
                __break(1u);
LABEL_69:
                __break(1u);
LABEL_70:
                __break(1u);
LABEL_71:
                __break(1u);
                goto LABEL_72;
              }

              v17 = [v14 userTask];
              if (v17)
              {
                v18 = v17;
                v4 = [v17 attribute];

                if (v4 == 20)
                {
                  break;
                }
              }

              v19 = [v15 userTask];
              if (v19)
              {
                v4 = v19;
                v20 = [v19 attribute];

                if (v20 == 22)
                {
                  break;
                }
              }

              v21 = [v15 userTask];
              if (v21)
              {
                v4 = v21;
                v22 = [v21 attribute];

                if (v22 == 21)
                {
                  break;
                }
              }

              v23 = [v15 userTask];
              if (v23)
              {
                v4 = v23;
                v24 = [v23 attribute];

                if (v24 == 15)
                {
                  break;
                }
              }

              v25 = [v15 userTask];
              if (v25)
              {
                v4 = v25;
                v26 = [v25 attribute];

                if (v26 == 14)
                {
                  break;
                }
              }

              v27 = [v15 userTask];
              if (v27)
              {
                v4 = v27;
                v28 = [v27 attribute];

                if (v28 == 18)
                {
                  break;
                }
              }

              v29 = [v15 userTask];
              if (v29)
              {
                v4 = v29;
                v30 = [v29 attribute];

                if (v30 == 47)
                {
                  break;
                }
              }

              v31 = [v15 userTask];
              if (v31)
              {
                v4 = v31;
                v32 = [v31 attribute];

                if (v32 == 67)
                {

                  goto LABEL_40;
                }
              }

              else
              {
              }

              ++v13;
              if (v16 == v12)
              {
                goto LABEL_64;
              }
            }

LABEL_40:
            v33 = [v53 taskResponses];
            if (!v33)
            {
              goto LABEL_60;
            }

            v4 = v33;
            v34 = sub_252E37264();

            v35 = [v53 entity];
            if (!v35)
            {

LABEL_60:

              v5 = v49;
              goto LABEL_6;
            }

            if (!(v34 >> 62))
            {
              v36 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (!v36)
              {
                break;
              }

LABEL_44:
              v37 = 0;
              v4 = v34 + 32;
              while (1)
              {
                if ((v34 & 0xC000000000000001) != 0)
                {
                  v38 = MEMORY[0x2530ADF00](v37, v34);
                }

                else
                {
                  if (v37 >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_73;
                  }

                  v38 = *(v4 + 8 * v37);
                }

                v39 = v38;
                v8 = __OFADD__(v37++, 1);
                if (v8)
                {
                  break;
                }

                if (qword_27F53F728 != -1)
                {
                  swift_once();
                }

                v40 = qword_27F575C38;
                v41 = [v39 taskOutcome];
                if (*(v40 + 16))
                {
                  v42 = v41;
                  sub_252E37EC4();
                  MEMORY[0x2530AE390](v42);
                  v43 = sub_252E37F14();
                  v44 = -1 << *(v40 + 32);
                  v45 = v43 & ~v44;
                  if ((*(v40 + 56 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45))
                  {
                    v46 = ~v44;
                    while (*(*(v40 + 48) + 8 * v45) != v42)
                    {
                      v45 = (v45 + 1) & v46;
                      if (((*(v40 + 56 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45) & 1) == 0)
                      {
                        goto LABEL_45;
                      }
                    }

                    sub_252E37A94();
                    v4 = *(v54 + 16);
                    sub_252E37AC4();
                    sub_252E37AD4();
                    sub_252E37AA4();
                    v5 = v49;
                    goto LABEL_6;
                  }
                }

LABEL_45:

                if (v37 == v36)
                {
                  goto LABEL_64;
                }
              }

LABEL_72:
              __break(1u);
LABEL_73:
              __break(1u);
LABEL_74:
              v5 = sub_252E378C4();
              if (!v5)
              {
                goto LABEL_75;
              }

              continue;
            }

            v36 = sub_252E378C4();
            if (v36)
            {
              goto LABEL_44;
            }
          }
        }

        else
        {
          v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v12)
          {
            goto LABEL_14;
          }
        }

        break;
      }

LABEL_64:

      v5 = v49;
      goto LABEL_6;
    }

LABEL_75:
    v2 = MEMORY[0x277D84F90];
LABEL_76:
  }

  return v2;
}

uint64_t sub_252C32060()
{
  v0 = sub_252C2C640();
  v1 = v0;
  v2 = v0 & 0xFFFFFFFFFFFFFF8;
  if (!(v0 >> 62))
  {
    v3 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_22:
    v5 = MEMORY[0x277D84F90];
    goto LABEL_23;
  }

LABEL_21:
  v3 = sub_252E378C4();
  if (!v3)
  {
    goto LABEL_22;
  }

LABEL_3:
  v4 = 0;
  v5 = MEMORY[0x277D84F90];
  do
  {
    v6 = v4;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x2530ADF00](v6, v1);
      }

      else
      {
        if (v6 >= *(v2 + 16))
        {
          goto LABEL_20;
        }

        v7 = *(v1 + 8 * v6 + 32);
      }

      v8 = v7;
      v4 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v9 = [v7 entityIdentifier];
      if (v9)
      {
        break;
      }

      ++v6;
      if (v4 == v3)
      {
        goto LABEL_23;
      }
    }

    v10 = v9;
    v11 = sub_252E36F34();
    v22 = v12;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_2529F7A80(0, *(v5 + 2) + 1, 1, v5);
    }

    v14 = *(v5 + 2);
    v13 = *(v5 + 3);
    if (v14 >= v13 >> 1)
    {
      v5 = sub_2529F7A80((v13 > 1), v14 + 1, 1, v5);
    }

    *(v5 + 2) = v14 + 1;
    v15 = &v5[16 * v14];
    *(v15 + 4) = v11;
    *(v15 + 5) = v22;
  }

  while (v4 != v3);
LABEL_23:

  if (*(v5 + 2))
  {
    type metadata accessor for HomeFilter.Builder();
    swift_allocObject();
    v16.n128_f64[0] = HomeFilter.Builder.init()();
    v18 = (*(*v17 + 568))(v5, v16);

    v20 = (*(*v18 + 760))(v19);
  }

  else
  {

    return 0;
  }

  return v20;
}

uint64_t sub_252C322CC()
{
  v1 = v0;
  v2 = sub_252E36AD4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v64 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = &off_279711000;
  v6 = [v0 entityResponses];
  v7 = 0x27F53F000uLL;
  v8 = "/Library/Caches/com.apple.xbs/Sources/SiriHomeAutomation/HomeAutomationInternal/Shared/Utilities/ControlHomeIntent/ControlHomeIntentResponse+Utils.swift";
  v59 = v2;
  if (!v6)
  {
    if (qword_27F53F4E8 != -1)
    {
      goto LABEL_51;
    }

    goto LABEL_36;
  }

  v9 = v6;
  type metadata accessor for HomeEntityResponse();
  v10 = sub_252E37264();

  if (v10 >> 62)
  {
    goto LABEL_37;
  }

LABEL_3:
  for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_252E378C4())
  {

    if (!i)
    {
      break;
    }

    v13 = [v1 *(v5 + 1752)];
    if (v13)
    {
      v14 = v13;
      type metadata accessor for HomeEntityResponse();
      v1 = sub_252E37264();

      if (!(v1 >> 62))
      {
        goto LABEL_7;
      }
    }

    else
    {
      if (*(v7 + 1256) != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v2, qword_27F544D60);
      v67 = 0;
      v68 = 0xE000000000000000;
      sub_252E379F4();

      v67 = 0xD00000000000002FLL;
      v68 = 0x8000000252E69700;
      v43 = v1;
      v44 = [v43 description];
      v45 = sub_252E36F34();
      v47 = v46;

      MEMORY[0x2530AD570](v45, v47);
      v2 = v59;

      sub_252CC3D90(v67, v68, 0xD000000000000098, (v8 - 32) | 0x8000000000000000);

      v1 = MEMORY[0x277D84F90];
      if (!(MEMORY[0x277D84F90] >> 62))
      {
LABEL_7:
        v15 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v15)
        {
          goto LABEL_44;
        }

        goto LABEL_8;
      }
    }

    v15 = sub_252E378C4();
    if (!v15)
    {
LABEL_44:
    }

LABEL_8:
    v5 = 0;
    v53 = "ry information found";
    v54 = v1 & 0xC000000000000001;
    v62 = v8 - 32;
    v48 = v1 + 32;
    v49 = v1 & 0xFFFFFFFFFFFFFF8;
    v57 = 0x8000000252E8B860;
    v58 = (v3 + 16);
    v56 = (v3 + 8);
    v51 = v1;
    v52 = 0xD000000000000034;
    v50 = v15;
    while (1)
    {
      if (v54)
      {
        v16 = MEMORY[0x2530ADF00](v5, v1);
      }

      else
      {
        if (v5 >= *(v49 + 16))
        {
          goto LABEL_50;
        }

        v16 = *(v48 + 8 * v5);
      }

      v8 = v16;
      if (__OFADD__(v5++, 1))
      {
        break;
      }

      if (*(v7 + 1256) != -1)
      {
        swift_once();
      }

      v3 = __swift_project_value_buffer(v2, qword_27F544D60);
      v67 = 0;
      v68 = 0xE000000000000000;
      sub_252E379F4();
      MEMORY[0x2530AD570](v52, v53 | 0x8000000000000000);
      v65 = [v8 entity];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540D50, &qword_252E3E868);
      v18 = sub_252E36F94();
      MEMORY[0x2530AD570](v18);

      MEMORY[0x2530AD570](0x7D202020200ALL, 0xE600000000000000);
      v61 = v3;
      sub_252CC3D90(v67, v68, 0xD000000000000098, v62 | 0x8000000000000000);

      v19 = [v8 taskResponses];
      if (v19)
      {
        v20 = v19;
        type metadata accessor for HomeUserTaskResponse();
        v21 = sub_252E37264();

        v55 = v5;
        v63 = v8;
        if (v21 >> 62)
        {
          v22 = sub_252E378C4();
          if (v22)
          {
LABEL_20:
            v3 = 0;
            v60 = v21 & 0xC000000000000001;
            v5 = v21 & 0xFFFFFFFFFFFFFF8;
            while (1)
            {
              if (v60)
              {
                v31 = MEMORY[0x2530ADF00](v3, v21);
              }

              else
              {
                if (v3 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_48;
                }

                v31 = *(v21 + 8 * v3 + 32);
              }

              v32 = v31;
              v8 = (v3 + 1);
              if (__OFADD__(v3, 1))
              {
                break;
              }

              (*v58)(v64, v61, v2);
              v67 = 0;
              v68 = 0xE000000000000000;
              sub_252E379F4();

              v67 = 0xD000000000000015;
              v68 = v57;
              v33 = [v63 entity];
              if (v33 && (v34 = v33, v35 = [v33 homeEntityName], v34, v35))
              {
                v23 = sub_252E36F34();
                v24 = v36;
              }

              else
              {
                v23 = 0;
                v24 = 0;
              }

              v65 = v23;
              v66 = v24;
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
              v25 = sub_252E36F94();
              MEMORY[0x2530AD570](v25);

              MEMORY[0x2530AD570](8250, 0xE200000000000000);
              v26 = v32;
              v27 = [v26 description];
              v28 = sub_252E36F34();
              v1 = v29;

              MEMORY[0x2530AD570](v28, v1);

              v30 = v64;
              sub_252CC3D90(v67, v68, 0xD000000000000098, v62 | 0x8000000000000000);

              v2 = v59;
              (*v56)(v30, v59);

              ++v3;
              if (v8 == v22)
              {
                goto LABEL_9;
              }
            }

            __break(1u);
LABEL_48:
            __break(1u);
            break;
          }
        }

        else
        {
          v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v22)
          {
            goto LABEL_20;
          }
        }

LABEL_9:

        v7 = 0x27F53F000uLL;
        v15 = v50;
        v1 = v51;
        v5 = v55;
        if (v55 == v50)
        {
        }
      }

      else
      {

        if (v5 == v15)
        {
        }
      }
    }

    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    swift_once();
LABEL_36:
    __swift_project_value_buffer(v2, qword_27F544D60);
    v67 = 0;
    v68 = 0xE000000000000000;
    sub_252E379F4();

    v67 = 0xD00000000000002FLL;
    v68 = 0x8000000252E69700;
    v37 = v1;
    v38 = [v37 description];
    v39 = sub_252E36F34();
    v41 = v40;

    v42 = v39;
    v2 = v59;
    MEMORY[0x2530AD570](v42, v41);

    sub_252CC3D90(v67, v68, 0xD000000000000098, (v8 - 32) | 0x8000000000000000);

    v10 = MEMORY[0x277D84F90];
    v7 = 0x27F53F000;
    if (!(MEMORY[0x277D84F90] >> 62))
    {
      goto LABEL_3;
    }

LABEL_37:
    ;
  }

  return result;
}

id sub_252C32AF0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 taskResponses];
  v4 = MEMORY[0x277D84F90];
  if (result)
  {
    v5 = result;
    type metadata accessor for HomeUserTaskResponse();
    v6 = sub_252E37264();

    v18 = v4;
    if (v6 >> 62)
    {
LABEL_23:
      v7 = sub_252E378C4();
      v16 = a2;
      if (v7)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v16 = a2;
      if (v7)
      {
LABEL_4:
        v8 = 0;
        a2 = (v6 & 0xC000000000000001);
        v17 = MEMORY[0x277D84F90];
        while (1)
        {
          v9 = v8;
          while (1)
          {
            if (a2)
            {
              v10 = MEMORY[0x2530ADF00](v9, v6);
            }

            else
            {
              if (v9 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_22;
              }

              v10 = *(v6 + 8 * v9 + 32);
            }

            v11 = v10;
            v8 = v9 + 1;
            if (__OFADD__(v9, 1))
            {
              __break(1u);
LABEL_22:
              __break(1u);
              goto LABEL_23;
            }

            v12 = [v10 userTask];
            if (v12)
            {
              v13 = v12;
              v14 = [v12 value];

              if (v14)
              {
                break;
              }
            }

LABEL_7:
            ++v9;
            if (v8 == v7)
            {
              goto LABEL_25;
            }
          }

          v15 = [v14 cleaningJob];

          if (!v15)
          {
            goto LABEL_7;
          }

          MEMORY[0x2530AD700]();
          if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_252E372A4();
          }

          sub_252E372D4();
          v17 = v18;
          if (v8 == v7)
          {
LABEL_25:

            a2 = v16;
            v4 = v17;
            goto LABEL_26;
          }
        }
      }
    }

    v17 = MEMORY[0x277D84F90];
    goto LABEL_25;
  }

LABEL_26:
  *a2 = v4;
  return result;
}

uint64_t sub_252C32D14()
{
  v1 = [v0 entityResponses];
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v3 = v1;
    type metadata accessor for HomeEntityResponse();
    v4 = sub_252E37264();

    v55 = v2;
    v5 = v4;
    if (v4 >> 62)
    {
      goto LABEL_83;
    }

    v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
    v7 = MEMORY[0x277D84F90];
    if (v6)
    {
      v8 = 0;
      v51 = v5 & 0xFFFFFFFFFFFFFF8;
      v52 = v5 & 0xC000000000000001;
      v48 = v5;
      v49 = v6;
      v50 = v5 + 32;
      do
      {
        while (1)
        {
          if (v52)
          {
            v5 = MEMORY[0x2530ADF00](v8, v48);
          }

          else
          {
            if (v8 >= *(v51 + 16))
            {
              goto LABEL_80;
            }

            v5 = *(v50 + 8 * v8);
          }

          v9 = v5;
          v10 = __OFADD__(v8++, 1);
          if (v10)
          {
            goto LABEL_79;
          }

          v11 = [v5 taskResponses];
          if (v11)
          {
            break;
          }

          if (v8 == v6)
          {
            goto LABEL_57;
          }
        }

        v12 = v11;
        type metadata accessor for HomeUserTaskResponse();
        v13 = sub_252E37264();

        v53 = v9;
        if (v13 >> 62)
        {
          v5 = sub_252E378C4();
          v14 = v5;
          if (v5)
          {
LABEL_14:
            v15 = 0;
            while (1)
            {
              if ((v13 & 0xC000000000000001) != 0)
              {
                v5 = MEMORY[0x2530ADF00](v15, v13);
              }

              else
              {
                if (v15 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_76;
                }

                v5 = *(v13 + 8 * v15 + 32);
              }

              v16 = v5;
              v17 = v15 + 1;
              if (__OFADD__(v15, 1))
              {
                break;
              }

              v18 = [v5 userTask];
              if (v18)
              {
                v19 = v18;
                v20 = [v18 value];

                if (v20)
                {
                  v21 = [v20 type];

                  if (v21 == 2)
                  {

LABEL_30:
                    v26 = [v53 taskResponses];
                    if (v26)
                    {
                      v27 = v26;
                      v28 = sub_252E37264();

                      v29 = [v53 entity];
                      if (v29)
                      {

                        if (v28 >> 62)
                        {
                          v5 = sub_252E378C4();
                          v30 = v5;
                          if (v5)
                          {
                            goto LABEL_34;
                          }
                        }

                        else
                        {
                          v30 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
                          if (v30)
                          {
LABEL_34:
                            v31 = 0;
                            while (1)
                            {
                              if ((v28 & 0xC000000000000001) != 0)
                              {
                                v5 = MEMORY[0x2530ADF00](v31, v28);
                              }

                              else
                              {
                                if (v31 >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
                                {
                                  goto LABEL_82;
                                }

                                v5 = *(v28 + 32 + 8 * v31);
                              }

                              v32 = v5;
                              v10 = __OFADD__(v31++, 1);
                              if (v10)
                              {
                                break;
                              }

                              if (qword_27F53F728 != -1)
                              {
                                swift_once();
                              }

                              v33 = qword_27F575C38;
                              v34 = [v32 taskOutcome];
                              if (*(v33 + 16))
                              {
                                v35 = v34;
                                sub_252E37EC4();
                                MEMORY[0x2530AE390](v35);
                                v36 = sub_252E37F14();
                                v37 = -1 << *(v33 + 32);
                                v38 = v36 & ~v37;
                                if ((*(v33 + 56 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38))
                                {
                                  v39 = ~v37;
                                  while (*(*(v33 + 48) + 8 * v38) != v35)
                                  {
                                    v38 = (v38 + 1) & v39;
                                    if (((*(v33 + 56 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38) & 1) == 0)
                                    {
                                      goto LABEL_35;
                                    }
                                  }

                                  sub_252E37A94();
                                  sub_252E37AC4();
                                  sub_252E37AD4();
                                  v5 = sub_252E37AA4();
                                  goto LABEL_56;
                                }
                              }

LABEL_35:

                              if (v31 == v30)
                              {
                                goto LABEL_52;
                              }
                            }

LABEL_81:
                            __break(1u);
LABEL_82:
                            __break(1u);
LABEL_83:
                            v47 = v5;
                            v6 = sub_252E378C4();
                            v5 = v47;
                            goto LABEL_4;
                          }
                        }
                      }
                    }

                    goto LABEL_56;
                  }
                }
              }

              v22 = [v16 userTask];
              if (v22 && (v23 = v22, v24 = [v22 value], v23, v24))
              {
                v25 = [v24 type];

                if (v25 == 4)
                {

                  goto LABEL_30;
                }
              }

              else
              {
              }

              ++v15;
              if (v17 == v14)
              {
                goto LABEL_52;
              }
            }

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
            goto LABEL_81;
          }
        }

        else
        {
          v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v14)
          {
            goto LABEL_14;
          }
        }

LABEL_52:

LABEL_56:
        v6 = v49;
      }

      while (v8 != v49);
LABEL_57:
      v40 = v55;
      v7 = MEMORY[0x277D84F90];
    }

    else
    {
      v40 = MEMORY[0x277D84F90];
    }

    v54 = v7;
    if (v40 < 0 || (v40 & 0x4000000000000000) != 0)
    {
      v5 = sub_252E378C4();
      v41 = v5;
    }

    else
    {
      v41 = *(v40 + 16);
    }

    v42 = 0;
    v2 = MEMORY[0x277D84F90];
    while (v41 != v42)
    {
      if ((v40 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x2530ADF00](v42, v40);
      }

      else
      {
        if (v42 >= *(v40 + 16))
        {
          goto LABEL_78;
        }

        v5 = *(v40 + 8 * v42 + 32);
      }

      v43 = v5;
      v44 = v42 + 1;
      if (__OFADD__(v42, 1))
      {
        goto LABEL_77;
      }

      v45 = sub_252DA124C(0);

      ++v42;
      if (v45)
      {
        MEMORY[0x2530AD700]();
        if (*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_252E372A4();
        }

        v5 = sub_252E372D4();
        v2 = v54;
        v42 = v44;
      }
    }
  }

  return v2;
}

uint64_t AsyncFlow.__allocating_init()()
{
  v0 = swift_allocObject();
  AsyncFlow.init()();
  return v0;
}

uint64_t AsyncFlow.init()()
{
  *(v0 + 16) = 0xD000000000000013;
  *(v0 + 24) = 0x8000000252E8B880;
  *(v0 + 32) = 0x6E6974726F706572;
  *(v0 + 40) = 0xEF6E69616D6F4467;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  sub_252B5ADCC(v16);
  v1 = v16[7];
  *(v0 + 176) = v16[6];
  *(v0 + 192) = v1;
  *(v0 + 208) = v17;
  v2 = v16[3];
  *(v0 + 112) = v16[2];
  *(v0 + 128) = v2;
  v3 = v16[5];
  *(v0 + 144) = v16[4];
  *(v0 + 160) = v3;
  v4 = v16[1];
  *(v0 + 80) = v16[0];
  *(v0 + 96) = v4;
  v6 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v5);
  sub_252929E74((v6 + 96), v15);

  v7 = sub_252927BEC(v15, v0 + 216);
  v8 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v7);
  swift_beginAccess();
  v9 = *(v8 + 22);

  *(v0 + 256) = v9;
  v11 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v10);
  sub_252929E74((v11 + 136), v15);

  v12 = sub_252927BEC(v15, v0 + 264);
  v13 = *(_s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v12) + 29);

  *(v0 + 328) = type metadata accessor for HomeAutomationCATPatternsExecutor(0);
  *(v0 + 336) = &off_2864BA730;
  *(v0 + 304) = v13;
  return v0;
}

uint64_t sub_252C334D8()
{
  v1 = v0;
  v2 = sub_252E34164();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_252E34134();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252E340E4();
  if ((*(v3 + 88))(v5, v2) != *MEMORY[0x277D5C150])
  {
    (*(v3 + 8))(v5, v2);
    goto LABEL_9;
  }

  (*(v3 + 96))(v5, v2);
  (*(v7 + 32))(v9, v5, v6);
  v10 = sub_252E34114();
  v12 = v11;
  if (v10 == sub_252E36F34() && v12 == v13)
  {

LABEL_13:
    v19 = sub_252E34124();
    if (v19)
    {
      v20 = v19;
      if (*(v19 + 16) && (v21 = sub_252A44A10(*(v1 + 16), *(v1 + 24)), (v22 & 1) != 0))
      {
        sub_252974E7C(*(v20 + 56) + 32 * v21, v86);

        if (swift_dynamicCast())
        {
          v23 = v77;
          v24 = sub_252E34124();
          if (v24)
          {
            v25 = v24;
            if (*(v24 + 16) && (v26 = sub_252A44A10(*(v1 + 32), *(v1 + 40)), (v27 & 1) != 0))
            {
              sub_252974E7C(*(v25 + 56) + 32 * v26, &v76);

              if (swift_dynamicCast())
              {
                v28 = v74;
                v29 = v75;
                sub_252B59988(v23, *(&v23 + 1), &v77);
                v71 = v83;
                v72 = v84;
                v67 = v79;
                v68 = v80;
                v69 = v81;
                v70 = v82;
                v65 = v77;
                v66 = v78;
                v86[6] = v83;
                v86[7] = v84;
                v86[2] = v79;
                v86[3] = v80;
                v86[4] = v81;
                v86[5] = v82;
                v73 = v85;
                v87 = v85;
                v86[0] = v77;
                v86[1] = v78;
                if (sub_252AFB7A0(v86) != 1)
                {
                  *(v1 + 48) = v23;

                  *(v1 + 64) = v28;
                  *(v1 + 72) = v29;

                  v46 = *(v1 + 192);
                  v61[6] = *(v1 + 176);
                  v61[7] = v46;
                  v62 = *(v1 + 208);
                  v47 = *(v1 + 128);
                  v61[2] = *(v1 + 112);
                  v61[3] = v47;
                  v48 = *(v1 + 160);
                  v61[4] = *(v1 + 144);
                  v61[5] = v48;
                  v49 = *(v1 + 96);
                  v61[0] = *(v1 + 80);
                  v61[1] = v49;
                  v50 = v82;
                  *(v1 + 144) = v81;
                  *(v1 + 160) = v50;
                  v51 = v84;
                  *(v1 + 176) = v83;
                  *(v1 + 192) = v51;
                  *(v1 + 208) = v85;
                  v52 = v80;
                  *(v1 + 112) = v79;
                  *(v1 + 128) = v52;
                  v53 = v78;
                  *(v1 + 80) = v77;
                  *(v1 + 96) = v53;
                  v63[6] = v71;
                  v63[7] = v72;
                  v64 = v73;
                  v63[2] = v67;
                  v63[3] = v68;
                  v63[4] = v69;
                  v63[5] = v70;
                  v63[0] = v65;
                  v63[1] = v66;
                  sub_252B5ADE8(v63, &v59);
                  sub_25293847C(v61, &qword_27F543160, &qword_252E4E950);
                  if (qword_27F53F510 != -1)
                  {
                    swift_once();
                  }

                  v54 = sub_252E36AD4();
                  __swift_project_value_buffer(v54, qword_27F544DD8);
                  v59 = 0;
                  v60 = 0xE000000000000000;
                  sub_252E379F4();
                  MEMORY[0x2530AD570](0xD000000000000030, 0x8000000252E8B990);
                  v55 = *(v1 + 56);
                  v58[1] = *(v1 + 48);
                  v58[2] = v55;

                  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
                  v56 = sub_252E36F94();
                  MEMORY[0x2530AD570](v56);

                  MEMORY[0x2530AD570](0x3A6E69616D6F640ALL, 0xEA0000000000090ALL);
                  MEMORY[0x2530AD570](v28, v29);

                  sub_252CC3D90(v59, v60, 0xD00000000000006ALL, 0x8000000252E8B8D0);

                  sub_252B680FC(v57);
                  sub_252B6796C();

                  swift_unknownObjectRelease();
                  sub_25293847C(&v77, &qword_27F543160, &qword_252E4E950);
                  goto LABEL_35;
                }

                if (qword_27F53F510 != -1)
                {
                  swift_once();
                }

                v30 = sub_252E36AD4();
                __swift_project_value_buffer(v30, qword_27F544DD8);
                v31 = sub_252E36AC4();
                v32 = sub_252E374D4();
                if (os_log_type_enabled(v31, v32))
                {
                  v33 = swift_slowAlloc();
                  *v33 = 0;
                  _os_log_impl(&dword_252917000, v31, v32, "Async record not found.", v33, 2u);
                  MEMORY[0x2530AED00](v33, -1, -1);
                }

                v34 = 0x45636972656E6567;
                v35 = 0xEC000000726F7272;
                v36 = 0;
LABEL_34:
                sub_2529515FC(4, v36, v34, v35);
LABEL_35:
                (*(v7 + 8))(v9, v6);
                return 1;
              }
            }

            else
            {
            }
          }

          if (qword_27F53F510 != -1)
          {
            swift_once();
          }

          v42 = sub_252E36AD4();
          __swift_project_value_buffer(v42, qword_27F544DD8);
          v43 = sub_252E36AC4();
          v44 = sub_252E374D4();
          if (os_log_type_enabled(v43, v44))
          {
            v45 = swift_slowAlloc();
            *v45 = 0;
            _os_log_impl(&dword_252917000, v43, v44, "Couldn't find reportingDomain in userData", v45, 2u);
            MEMORY[0x2530AED00](v45, -1, -1);
          }

          v41 = "tContextIdentifier";
          v34 = 0xD00000000000001ALL;
LABEL_33:
          v35 = v41 | 0x8000000000000000;
          v36 = 5;
          goto LABEL_34;
        }
      }

      else
      {
      }
    }

    if (qword_27F53F510 != -1)
    {
      swift_once();
    }

    v37 = sub_252E36AD4();
    __swift_project_value_buffer(v37, qword_27F544DD8);
    v38 = sub_252E36AC4();
    v39 = sub_252E374D4();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_252917000, v38, v39, "Couldn't find reportContextIdentifier in userData", v40, 2u);
      MEMORY[0x2530AED00](v40, -1, -1);
    }

    v41 = "Flow/Async/AsyncFlow.swift";
    v34 = 0xD000000000000022;
    goto LABEL_33;
  }

  v15 = sub_252E37DB4();

  if (v15)
  {
    goto LABEL_13;
  }

  (*(v7 + 8))(v9, v6);
LABEL_9:
  if (qword_27F53F510 != -1)
  {
    swift_once();
  }

  v16 = sub_252E36AD4();
  __swift_project_value_buffer(v16, qword_27F544DD8);
  *&v86[0] = 0;
  *(&v86[0] + 1) = 0xE000000000000000;
  sub_252E379F4();

  *&v86[0] = 0xD000000000000020;
  *(&v86[0] + 1) = 0x8000000252E8B8A0;
  sub_252E34104();
  sub_252C3626C(&qword_27F5406B0, 255, MEMORY[0x277D5C118], MEMORY[0x277D5C120]);
  v17 = sub_252E37D94();
  MEMORY[0x2530AD570](v17);

  sub_252CC4050(*&v86[0], *(&v86[0] + 1), 0xD00000000000006ALL, 0x8000000252E8B8D0, 0x7475706E69286E6FLL, 0xEA0000000000293ALL, 87);

  return 0;
}

uint64_t sub_252C33F44(uint64_t a1)
{
  v2[276] = v1;
  v2[275] = a1;
  v3 = sub_252E36AB4();
  v2[277] = v3;
  v2[278] = *(v3 - 8);
  v2[279] = swift_task_alloc();
  v2[280] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252C34014, 0, 0);
}

uint64_t sub_252C34014()
{
  v1 = *(v0 + 2208);
  if (!*(v1 + 72) || !*(v1 + 56))
  {
LABEL_5:
    v15 = *(v1 + 288);
    v16 = *(v1 + 296);
    __swift_project_boxed_opaque_existential_1((v1 + 264), v15);

    sub_252943C10(sub_252C35890, v1, v15, v16, v0 + 1784);

    sub_252929E74(v1 + 216, v0 + 1880);
    sub_252938414(v0 + 1784, v0 + 1832, &qword_27F542198, &qword_252E53790);
    v17 = swift_allocObject();
    v18 = *(v0 + 1848);
    v17[1] = *(v0 + 1832);
    v17[2] = v18;
    *(v17 + 41) = *(v0 + 1857);
    sub_252E331C4();
    swift_allocObject();
    *(v0 + 2176) = sub_252E331B4();
    sub_252E33AF4();

    sub_25293847C(v0 + 1784, &qword_27F542198, &qword_252E53790);

    v19 = *(v0 + 8);

    return v19();
  }

  v2 = v0 + 1104;
  *(v0 + 1240) = *(v1 + 80);
  v3 = *(v1 + 96);
  v4 = *(v1 + 112);
  v5 = *(v1 + 144);
  *(v0 + 1288) = *(v1 + 128);
  *(v0 + 1304) = v5;
  *(v0 + 1256) = v3;
  *(v0 + 1272) = v4;
  v6 = *(v1 + 160);
  v7 = *(v1 + 176);
  v8 = *(v1 + 192);
  *(v0 + 1368) = *(v1 + 208);
  *(v0 + 1336) = v7;
  *(v0 + 1352) = v8;
  *(v0 + 1320) = v6;
  *(v0 + 1104) = *(v1 + 80);
  v9 = *(v1 + 96);
  v10 = *(v1 + 112);
  v11 = *(v1 + 144);
  *(v0 + 1152) = *(v1 + 128);
  *(v0 + 1168) = v11;
  *(v0 + 1120) = v9;
  *(v0 + 1136) = v10;
  v12 = *(v1 + 160);
  v13 = *(v1 + 176);
  v14 = *(v1 + 192);
  *(v0 + 1232) = *(v1 + 208);
  *(v0 + 1200) = v13;
  *(v0 + 1216) = v14;
  *(v0 + 1184) = v12;
  if (sub_252AFB7A0(v0 + 1104) == 1)
  {
    v1 = *(v0 + 2208);
    goto LABEL_5;
  }

  v21 = *(v0 + 1216);
  *(v0 + 112) = *(v0 + 1200);
  *(v0 + 128) = v21;
  *(v0 + 144) = *(v0 + 1232);
  v22 = *(v0 + 1152);
  *(v0 + 48) = *(v0 + 1136);
  *(v0 + 64) = v22;
  v23 = *(v0 + 1184);
  *(v0 + 80) = *(v0 + 1168);
  *(v0 + 96) = v23;
  v24 = *(v0 + 1120);
  *(v0 + 16) = *v2;
  *(v0 + 32) = v24;
  v92 = *(v0 + 1168);
  v25 = *(v0 + 1176);
  v95 = *(v0 + 1192);
  v26 = *(v0 + 1200);
  sub_252938414(v0 + 1240, v0 + 1376, &qword_27F543160, &qword_252E4E950);
  v27 = qword_27F53F608;
  v93 = v25;

  v94 = v26;

  if (v27 != -1)
  {
    swift_once();
  }

  v28 = *(v0 + 2240);
  v29 = *(v0 + 2224);
  v30 = *(v0 + 2216);
  v31 = qword_27F544F90;
  v32 = sub_252E375E4();
  sub_252E36AA4();
  sub_252E36A74(v32, &dword_252917000, v31, "AsyncDirectInvocation", 21, 2, v28, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);
  v33 = *(v29 + 8);
  *(v0 + 2248) = v33;
  *(v0 + 2256) = (v29 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v91 = v33;
  v33(v28, v30);
  v34 = v31;
  sub_252E36A94();
  sub_252E375D4();
  sub_252E36A84();
  if (qword_27F53F510 != -1)
  {
    swift_once();
  }

  v35 = (v0 + 1648);
  v36 = sub_252E36AD4();
  *(v0 + 2264) = __swift_project_value_buffer(v36, qword_27F544DD8);
  sub_252E379F4();

  *(v0 + 2160) = v95;
  *(v0 + 2168) = v94;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
  v37 = sub_252E36F94();
  MEMORY[0x2530AD570](v37);

  sub_252CC3D90(0xD00000000000002FLL, 0x8000000252E8BA10, 0xD00000000000006ALL, 0x8000000252E8B8D0);

  v38 = v92;
  if (v92 == 0x676E696B6F766E69 && v93 == 0xEE006E6967756C50)
  {
  }

  else
  {
    v39 = sub_252E37DB4();

    if ((v39 & 1) == 0)
    {
      v55 = *(v0 + 2240);
      v56 = *(v0 + 2216);
      v57 = sub_252E375E4();
      sub_252E36AA4();
      LOBYTE(v90) = 2;
      sub_252E36A74(v57, &dword_252917000, v34, "HomekitDirectInvocation", 23, 2, v55, " enableTelemetry=YES ", 21, v90, MEMORY[0x277D84F90]);
      v91(v55, v56);
      sub_252B8CEE4((v0 + 16));
      v58 = *(v1 + 56);
      if (v58)
      {
        v59 = *(v1 + 48);

        sub_252B59988(v59, v58, v0 + 968);

        v60 = *(v0 + 1080);
        *(v0 + 520) = *(v0 + 1064);
        *(v0 + 536) = v60;
        *(v0 + 552) = *(v0 + 1096);
        v61 = *(v0 + 1016);
        *(v0 + 456) = *(v0 + 1000);
        *(v0 + 472) = v61;
        v62 = *(v0 + 1048);
        *(v0 + 488) = *(v0 + 1032);
        *(v0 + 504) = v62;
        v63 = *(v0 + 984);
        *(v0 + 424) = *(v0 + 968);
        *(v0 + 440) = v63;
        if (sub_252AFB7A0(v0 + 424) != 1)
        {
          v2 = v0 + 288;
          v86 = *(v0 + 536);
          *(v0 + 384) = *(v0 + 520);
          *(v0 + 400) = v86;
          *(v0 + 416) = *(v0 + 552);
          v87 = *(v0 + 472);
          *(v0 + 320) = *(v0 + 456);
          *(v0 + 336) = v87;
          v88 = *(v0 + 504);
          *(v0 + 352) = *(v0 + 488);
          *(v0 + 368) = v88;
          v89 = *(v0 + 440);
          *(v0 + 288) = *(v0 + 424);
          *(v0 + 304) = v89;
          sub_252CC3D90(0xD000000000000028, 0x8000000252E8BA60, 0xD00000000000006ALL, 0x8000000252E8B8D0);
          sub_25293847C(v0 + 1240, &qword_27F543160, &qword_252E4E950);
          sub_252938414(v0 + 968, v0 + 152, &qword_27F543160, &qword_252E4E950);
          sub_252C35B64(v0 + 288, 1);
          sub_25293847C(v0 + 968, &qword_27F543160, &qword_252E4E950);
          v50 = (v0 + 408);
          v51 = (v0 + 416);
          v52 = (v0 + 392);
          v53 = (v0 + 400);
          v94 = *(v0 + 384);
          v95 = *(v0 + 376);
          v54 = (v0 + 368);
          v38 = *(v0 + 352);
          v64 = *(v0 + 360);
          goto LABEL_24;
        }
      }

      goto LABEL_22;
    }
  }

  v40 = *(v1 + 56);
  if (v40)
  {
    v41 = *(v1 + 48);

    sub_252B59988(v41, v40, v0 + 832);

    v42 = *(v0 + 944);
    *(v0 + 792) = *(v0 + 928);
    *(v0 + 808) = v42;
    *(v0 + 824) = *(v0 + 960);
    v43 = *(v0 + 880);
    *(v0 + 728) = *(v0 + 864);
    *(v0 + 744) = v43;
    v44 = *(v0 + 912);
    *(v0 + 760) = *(v0 + 896);
    *(v0 + 776) = v44;
    v45 = *(v0 + 848);
    *(v0 + 696) = *(v0 + 832);
    *(v0 + 712) = v45;
    if (sub_252AFB7A0(v0 + 696) != 1)
    {
      v46 = *(v0 + 808);
      *(v0 + 656) = *(v0 + 792);
      *(v0 + 672) = v46;
      *(v0 + 688) = *(v0 + 824);
      v47 = *(v0 + 744);
      *(v0 + 592) = *(v0 + 728);
      *(v0 + 608) = v47;
      v48 = *(v0 + 776);
      *(v0 + 624) = *(v0 + 760);
      *(v0 + 640) = v48;
      v49 = *(v0 + 712);
      *(v0 + 560) = *(v0 + 696);
      *(v0 + 576) = v49;
      sub_252C35B64(v0 + 560, 0);
      sub_25293847C(v0 + 832, &qword_27F543160, &qword_252E4E950);
    }

LABEL_22:
    v50 = (v0 + 1224);
    v51 = (v0 + 1232);
    v52 = (v0 + 1208);
    v53 = (v0 + 1216);
    v54 = (v0 + 1184);
    v38 = v92;
    goto LABEL_23;
  }

  v50 = (v0 + 1224);
  v51 = (v0 + 1232);
  v52 = (v0 + 1208);
  v53 = (v0 + 1216);
  v54 = (v0 + 1184);
LABEL_23:
  v64 = v93;
LABEL_24:
  v65 = *v51;
  v66 = *v50;
  v67 = *v53;
  v68 = *v52;
  v69 = *v54;
  v70 = *(v2 + 56);
  v71 = *(v2 + 40);
  v72 = *(v2 + 8);
  v73 = *(v2 + 16);
  v74 = *(v2 + 24);
  *(v0 + 1512) = *v2;
  *(v0 + 1520) = v72;
  *(v0 + 1528) = v73;
  *(v0 + 1536) = v74;
  *(v0 + 1552) = v71;
  *(v0 + 1568) = v70;
  *(v0 + 1576) = v38;
  *(v0 + 1584) = v64;
  *(v0 + 1592) = v69;
  *(v0 + 1600) = v95;
  *(v0 + 1608) = v94;
  *(v0 + 1616) = v68;
  *(v0 + 1624) = v67;
  *(v0 + 1632) = v66;
  *(v0 + 1640) = v65;
  v75 = *(v0 + 1512);
  v76 = *(v0 + 1528);
  v77 = *(v0 + 1560);
  *(v0 + 1680) = *(v0 + 1544);
  *(v0 + 1696) = v77;
  *v35 = v75;
  *(v0 + 1664) = v76;
  v78 = *(v0 + 1576);
  v79 = *(v0 + 1592);
  v80 = *(v0 + 1608);
  v81 = *(v0 + 1624);
  *(v0 + 1776) = v65;
  *(v0 + 1744) = v80;
  *(v0 + 1760) = v81;
  v82 = v74;
  *(v0 + 1712) = v78;
  *(v0 + 1728) = v79;

  sub_252C350A0(v0 + 1648, (v0 + 1920));
  sub_252B58FEC(v73, v82);

  v83 = *(v0 + 1944);
  v84 = *(v0 + 1952);
  __swift_project_boxed_opaque_existential_1((v0 + 1920), v83);
  v96 = (*(v84 + 32) + **(v84 + 32));
  v85 = swift_task_alloc();
  *(v0 + 2272) = v85;
  *v85 = v0;
  v85[1] = sub_252C349BC;

  return v96(v0 + 1960, v35, v83, v84);
}

uint64_t sub_252C349BC()
{
  *(*v1 + 2280) = v0;

  if (v0)
  {
    v2 = sub_252C34C8C;
  }

  else
  {
    v2 = sub_252C34AD0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_252C34AD0()
{
  v1 = *(v0 + 2248);
  v2 = *(v0 + 2232);
  v3 = *(v0 + 2216);
  sub_252929E74(v0 + 1920, v0 + 2040);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544320, &unk_252E537A0);
  v4 = sub_252E36F94();
  sub_252C35EF4(v2, v4, v5);

  v7 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v6);
  sub_252929E74((v7 + 96), v0 + 2080);

  sub_252929E74(v0 + 1960, v0 + 2120);
  v8 = swift_allocObject();
  sub_252927BEC((v0 + 2120), v8 + 16);
  sub_252E331C4();
  swift_allocObject();
  *(v0 + 2192) = sub_252E331B4();
  sub_252E33AF4();
  sub_252B5AE20(v0 + 1512);

  __swift_destroy_boxed_opaque_existential_1((v0 + 1960));
  v1(v2, v3);
  __swift_destroy_boxed_opaque_existential_1((v0 + 1920));

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_252C34C8C()
{
  v21 = v0;
  v1 = v0[285];
  v2 = v1;
  v3 = sub_252E36AC4();
  v4 = sub_252E374D4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[285];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v20 = v7;
    *v6 = 136315138;
    v0[273] = v5;
    v8 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541ED0, &unk_252E3C480);
    v9 = sub_252E36F94();
    v11 = sub_252BE2CE0(v9, v10, &v20);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_252917000, v3, v4, "Got error while obtaining output: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x2530AED00](v7, -1, -1);
    MEMORY[0x2530AED00](v6, -1, -1);
  }

  v12 = v0[285];
  v13 = v0[281];
  v14 = v0[279];
  v15 = v0[277];
  sub_252929E74((v0 + 240), (v0 + 250));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544320, &unk_252E537A0);
  v16 = sub_252E36F94();
  sub_252C35EF4(v14, v16, v17);

  sub_252E33B24();
  sub_252B5AE20((v0 + 189));

  v13(v14, v15);
  __swift_destroy_boxed_opaque_existential_1(v0 + 240);

  v18 = v0[1];

  return v18();
}

uint64_t sub_252C34EA4(uint64_t a1, uint64_t a2)
{
  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
  return MEMORY[0x2822009F8](sub_252C34EC4, 0, 0);
}

uint64_t sub_252C34EC4()
{
  sub_252938414(*(v0 + 96), v0 + 16, &qword_27F542198, &qword_252E53790);
  if (*(v0 + 56) == 1)
  {
    v1 = *(v0 + 16);
    if (qword_27F53F510 != -1)
    {
      swift_once();
    }

    v2 = sub_252E36AD4();
    __swift_project_value_buffer(v2, qword_27F544DD8);
    sub_252E379F4();
    *(v0 + 64) = 0;
    *(v0 + 72) = 0xE000000000000000;
    MEMORY[0x2530AD570](0xD000000000000030, 0x8000000252E87BE0);
    *(v0 + 80) = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541ED0, &unk_252E3C480);
    sub_252E37AE4();
    sub_252CC4050(*(v0 + 64), *(v0 + 72), 0xD00000000000006ALL, 0x8000000252E8B8D0, 0x2865747563657865, 0xE900000000000029, 105);

    sub_252E33964();
    sub_252E33954();
  }

  else
  {
    sub_252927BEC((v0 + 16), *(v0 + 88));
  }

  v3 = *(v0 + 8);

  return v3();
}

void *sub_252C350A0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v34 = a2;
  v3 = sub_252E36AD4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AsyncPartialFailureResponseHandler();
  v8 = type metadata accessor for AsyncFailedScenesResponseHandler();
  v33 = type metadata accessor for AsyncInProgressResponseHandler();
  v32 = type metadata accessor for AsyncPollingPartialFailureResponseHandler();
  v31 = type metadata accessor for AsyncHomekitInvocationResponseHandler();
  v30 = type metadata accessor for AsyncUnreachableResponseHandler();
  v29 = type metadata accessor for AsyncFailedStateResponseHandler();
  if (qword_27F53F4D0 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v3, qword_27F544D18);
  v10 = *(v4 + 16);
  v35 = v9;
  v10(v6);
  v37 = 0;
  v38 = 0xE000000000000000;
  sub_252E379F4();
  MetatypeMetadata = v37;
  v40 = v38;
  MEMORY[0x2530AD570](0xD000000000000025, 0x8000000252E8BB80);
  v11 = sub_252B4F670();
  swift_beginAccess();

  v12 = sub_252B9AAC4();
  MEMORY[0x2530AD570](v12);

  MEMORY[0x2530AD570](0xD000000000000013, 0x8000000252E8BBB0);
  v13 = sub_252B4F670();
  v14 = [v13 entityResponses];

  if (v14)
  {
    type metadata accessor for HomeEntityResponse();
    v15 = sub_252E37264();
  }

  else
  {
    v15 = 0;
  }

  v36 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5436C8, &unk_252E4D890);
  v16 = sub_252E36F94();
  MEMORY[0x2530AD570](v16);

  sub_252CC3D90(MetatypeMetadata, v40, 0xD00000000000006ALL, 0x8000000252E8B8D0);

  (*(v4 + 8))(v6, v3);
  v17 = &off_2864BAF68;
  if (off_2864BAF80(a1, v7, &off_2864BAF68) & 1) != 0 || (v17 = &off_2864BEE10, v7 = v8, (off_2864BEE28(a1, v8, &off_2864BEE10)) || (v17 = &off_2864BC230, v7 = v33, (off_2864BC248(a1, v33, &off_2864BC230)) || (v17 = &off_2864B03A8, v7 = v32, (off_2864B03C0()) || (v17 = &off_2864BD788, v7 = v31, (off_2864BD7A0(a1, v31, &off_2864BD788)) || (v17 = &off_2864BC890, v7 = v30, (off_2864BC8A8(a1, v30, &off_2864BC890)) || (v17 = &off_2864C1008, v7 = v29, (off_2864C1020(a1, v29, &off_2864C1008)))
  {
    MetatypeMetadata = 0;
    v40 = 0xE000000000000000;
    sub_252E379F4();
    MetatypeMetadata = swift_getMetatypeMetadata();
    v40 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544348, &qword_252E53958);
    v18 = sub_252E36F94();
    v20 = v19;

    MetatypeMetadata = v18;
    v40 = v20;
    MEMORY[0x2530AD570](0xD000000000000018, 0x8000000252E73DB0);
    sub_252CC3D90(MetatypeMetadata, v40, 0xD00000000000006ALL, 0x8000000252E8B8D0);

    v21 = v17[2];
    v22 = v34;
    v34[3] = v7;
    v22[4] = v17;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v22);
    return v21(boxed_opaque_existential_0);
  }

  else
  {
    sub_252CC3D90(0xD00000000000004CLL, 0x8000000252E8BBD0, 0xD00000000000006ALL, 0x8000000252E8B8D0);
    v25 = type metadata accessor for AsyncGenericErrorResponseHandler();
    v26 = swift_allocObject();
    result = sub_252D46D94(v26);
    v27 = v34;
    v34[3] = v25;
    v27[4] = &off_2864B8F90;
    *v27 = result;
  }

  return result;
}

uint64_t AsyncFlow.deinit()
{

  v1 = *(v0 + 192);
  v6[6] = *(v0 + 176);
  v6[7] = v1;
  v7 = *(v0 + 208);
  v2 = *(v0 + 128);
  v6[2] = *(v0 + 112);
  v6[3] = v2;
  v3 = *(v0 + 160);
  v6[4] = *(v0 + 144);
  v6[5] = v3;
  v4 = *(v0 + 96);
  v6[0] = *(v0 + 80);
  v6[1] = v4;
  sub_25293847C(v6, &qword_27F543160, &qword_252E4E950);
  __swift_destroy_boxed_opaque_existential_1((v0 + 216));

  __swift_destroy_boxed_opaque_existential_1((v0 + 264));
  __swift_destroy_boxed_opaque_existential_1((v0 + 304));
  return v0;
}

uint64_t AsyncFlow.__deallocating_deinit()
{
  AsyncFlow.deinit();

  return swift_deallocClassInstance();
}

void (*sub_252C35708(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_252E35F94();
  return sub_252A6999C;
}

uint64_t sub_252C357BC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25293B808;

  return sub_252C33F44(a1);
}

uint64_t sub_252C35858(uint64_t a1, uint64_t a2)
{
  type metadata accessor for AsyncFlow();

  return sub_252E33644();
}

uint64_t sub_252C358D4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_25293B808;

  return sub_252C34EA4(a1, v1 + 16);
}

uint64_t sub_252C35970()
{
  v0 = sub_252E36AB4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F53F5D0 != -1)
  {
    swift_once();
  }

  v4 = qword_27F544F58;
  sub_252E36A94();
  sub_252E375D4();
  sub_252E36A84();
  v5 = sub_252E34114();
  v7 = v6;
  if (v5 == sub_252E36F34() && v7 == v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_252E37DB4();
  }

  v11 = sub_252E375C4();
  sub_252E36A74(v11, &dword_252917000, v4, "ShouldHandleAsyncFlow", 21, 2, v3, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);
  (*(v1 + 8))(v3, v0);
  return v10 & 1;
}

void sub_252C35B64(uint64_t a1, char a2)
{
  sub_252DB7C84(a1);
  v4 = sub_252DB8C40(a1);

  if (v4)
  {
    *&v15 = v4;
    if (a2)
    {
      sub_252C488D8(&v15);
LABEL_9:
      v11 = sub_252DB7C84([v4 setCommandOutcome_]);
      swift_beginAccess();
      v12 = v4;
      MEMORY[0x2530AD700]();
      if (*((v11[4] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v11[4] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_252E372A4();
      }

      sub_252E372D4();
      swift_endAccess();

      sub_252DB7C84(v13);
      sub_252DB649C(*(a1 + 88), *(a1 + 96), a2 & 1);

      return;
    }

    v6 = [objc_allocWithZone(MEMORY[0x277D57580]) init];
    if (v6)
    {
      v7 = v6;
      sub_252C77D64(1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_252E3C130;
      *(v8 + 32) = v7;
      sub_252A01B88();
      v9 = v7;
      v10 = sub_252E37254();

      [v4 setHomeAutomationRequests_];

      goto LABEL_9;
    }

    if (qword_27F53F530 != -1)
    {
      swift_once();
    }

    v14 = sub_252E36AD4();
    __swift_project_value_buffer(v14, qword_27F544E38);
    sub_252CC4050(0xD000000000000025, 0x8000000252E71520, 0xD00000000000006ALL, 0x8000000252E8B8D0, 0xD00000000000002CLL, 0x8000000252E8BB50, 211);
  }

  else
  {
    if (qword_27F53F530 != -1)
    {
      swift_once();
    }

    v5 = sub_252E36AD4();
    __swift_project_value_buffer(v5, qword_27F544E38);
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000028, 0x8000000252E8BB20);
    sub_252E37AE4();
    sub_252CC4050(0, 0xE000000000000000, 0xD00000000000006ALL, 0x8000000252E8B8D0, 0xD00000000000002CLL, 0x8000000252E8BB50, 203);
  }
}

uint64_t sub_252C35EF4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (qword_27F53F608 != -1)
  {
    v7 = a2;
    swift_once();
    a2 = v7;
  }

  v5 = qword_27F544F90;
  v22 = 1;
  v21 = 1;
  v20 = 1;
  v19 = 1;
  *&v23 = 0;
  BYTE8(v23) = 1;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  *&v27 = 0;
  *(&v27 + 1) = a2;
  v28 = a3;
  v29 = 0;
  LOBYTE(v30) = 1;
  v31 = 0;
  v32 = 0;
  v33 = 0;
  LOWORD(v34) = 513;
  v35 = 0;
  v36 = 0;
  v37 = 0;
  v38 = 1;
  GEOLocationCoordinate2DMake();
  v16 = v34;
  v17 = 0u;
  v18 = 1;
  v12 = v27;
  v13 = a3;
  v14 = v30;
  v15 = 0u;
  v8 = v23;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;

  _s22HomeAutomationInternal8SignpostO3end7logging___ySo9OS_os_logC_0H012OSSignpostIDVs12StaticStringVAC7ContextVSgtFZ_0(v5, a1, "HandleAsyncDialog", 17, 2, &v8);
  v39[8] = v16;
  v39[9] = v17;
  v40 = v18;
  v39[4] = v12;
  v39[5] = v13;
  v39[6] = v14;
  v39[7] = v15;
  v39[0] = v8;
  v39[1] = v9;
  v39[2] = v10;
  v39[3] = v11;
  return sub_25293847C(v39, &qword_27F5407B0, &unk_252E42860);
}

uint64_t sub_252C3606C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_25294B954;

  return sub_252A738CC(a1, v1 + 16);
}

uint64_t sub_252C36108(uint64_t a1, uint64_t a2)
{
  result = sub_252C3626C(&qword_27F544328, a2, type metadata accessor for AsyncFlow, byte_252E537EC);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_252C36184(uint64_t a1, uint64_t a2)
{
  result = sub_252C3626C(&qword_27F544330, a2, type metadata accessor for AsyncFlow, protocol conformance descriptor for AsyncFlow);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_252C3626C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), const char *a4)
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

uint64_t dispatch thunk of AsyncFlow.execute()(uint64_t a1)
{
  v6 = (*(*v1 + 264) + **(*v1 + 264));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_25293B808;

  return v6(a1);
}

uint64_t sub_252C36438(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_252E34014();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252C36508, 0, 0);
}

uint64_t sub_252C36508()
{
  v1 = MEMORY[0x277D84F90];
  if (!v0[4])
  {
    v10 = 0;
    v47 = 0;
LABEL_39:
    v0[10] = v10;
    type metadata accessor for HomeAutomationEntityResponses();
    v17 = swift_allocObject();
    v0[11] = v17;
    *(v17 + 16) = 0;
    *(v17 + 24) = v1;
    if (qword_27F53F4D0 == -1)
    {
      goto LABEL_40;
    }

    goto LABEL_48;
  }

  v2 = sub_252C2FD9C();
  v3 = v2;
  if (!(v2 >> 62))
  {
    if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_23:

    goto LABEL_24;
  }

  if (!sub_252E378C4())
  {
    goto LABEL_23;
  }

LABEL_4:
  if ((v3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x2530ADF00](0, v3);
  }

  else
  {
    if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_22:
      result = sub_252E378C4();
      if (result)
      {
        goto LABEL_10;
      }

      goto LABEL_23;
    }

    v4 = *(v3 + 32);
  }

  v5 = v4;

  v6 = [v5 taskResponses];

  if (v6)
  {
    type metadata accessor for HomeUserTaskResponse();
    v3 = sub_252E37264();

    if (!(v3 >> 62))
    {
      result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
LABEL_10:
        if ((v3 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x2530ADF00](0, v3);
        }

        else
        {
          if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return result;
          }

          v8 = *(v3 + 32);
        }

        v9 = v8;

        v43 = v9;
        if ((sub_252C31230() & 1) != 0 && v9)
        {
          [v9 taskOutcome];
          v47 = sub_252DB4F4C();
        }

        else
        {
          v47 = 0;
        }

        goto LABEL_25;
      }

      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_24:
  sub_252C31230();
  v47 = 0;
  v43 = 0;
LABEL_25:
  v11 = sub_252C2FD9C();
  v12 = v11;
  v45 = v1;
  v13 = v11 & 0xFFFFFFFFFFFFFF8;
  if (v11 >> 62)
  {
    v14 = sub_252E378C4();
  }

  else
  {
    v14 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v15 = 0;
  v16 = v0[3];
  v17 = v12 & 0xC000000000000001;
  v44 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v14 == v15)
    {

      v10 = v43;
      v1 = v44;
      goto LABEL_39;
    }

    if (v17)
    {
      v18 = MEMORY[0x2530ADF00](v15, v12);
    }

    else
    {
      if (v15 >= *(v13 + 16))
      {
        goto LABEL_47;
      }

      v18 = *(v12 + 8 * v15 + 32);
    }

    v19 = v18;
    v20 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    v21 = sub_252DA124C(v16);

    ++v15;
    if (v21)
    {
      MEMORY[0x2530AD700]();
      if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_252E372A4();
      }

      sub_252E372D4();
      v44 = v45;
      v15 = v20;
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  swift_once();
LABEL_40:
  v22 = v0[4];
  v23 = v0[5];
  v24 = v0[3];
  v25 = sub_252E36AD4();
  __swift_project_value_buffer(v25, qword_27F544D18);
  v26 = v24;
  v27 = [v26 description];
  v28 = sub_252E36F34();
  v30 = v29;

  MEMORY[0x2530AD570](v28, v30);

  sub_252CC3D90(0x203A746E65746E49, 0xE800000000000000, 0xD000000000000091, 0x8000000252E8BC80);

  sub_252E379F4();

  v31 = type metadata accessor for HomeAutomationEntityResponse(0);

  v33 = MEMORY[0x2530AD730](v32, v31);
  v35 = v34;

  MEMORY[0x2530AD570](v33, v35);

  sub_252CC3D90(0xD000000000000011, 0x8000000252E8BD20, 0xD000000000000091, 0x8000000252E8BC80);

  v36 = *(v23 + 96);
  __swift_project_boxed_opaque_existential_1((v23 + 72), v36);
  v37 = swift_task_alloc();
  v0[12] = v37;
  *(v37 + 16) = v23;
  *(v37 + 24) = v17;
  v38 = sub_252DC6D48(v26, v22);
  sub_252AD7CC4();
  v39 = swift_task_alloc();
  if (v47)
  {
    v0[13] = v39;
    *v39 = v0;
    v39[1] = sub_252C36B00;
    v40 = v0[9];
    v41 = v0[2];
    v42 = &unk_252E539E8;
  }

  else
  {
    v0[15] = v39;
    *v39 = v0;
    v39[1] = sub_252C36D08;
    v40 = v0[8];
    v41 = v0[2];
    v42 = &unk_252E539D8;
  }

  return sub_252BDB88C(v41, v42, v37, v40, 0, 0, v38, v36);
}

uint64_t sub_252C36B00()
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  *(*v1 + 112) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_252C36E88;
  }

  else
  {

    v5 = sub_252C36C80;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252C36C80()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252C36D08()
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  *(*v1 + 128) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_252C36F24;
  }

  else
  {

    v5 = sub_252C377D8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252C36E88()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252C36F24()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252C36FC0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_252C36FE0, 0, 0);
}

uint64_t sub_252C36FE0()
{
  v1 = v0[3];
  __swift_project_boxed_opaque_existential_1((v0[2] + 24), *(v0[2] + 48));

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v2 = swift_allocObject();
  v0[4] = v2;
  *(v2 + 16) = xmmword_252E3C3C0;
  *(v2 + 32) = 0xD000000000000017;
  *(v2 + 40) = 0x8000000252E6FE70;
  v3 = MEMORY[0x277D839B0];
  *(v2 + 48) = 0;
  *(v2 + 72) = v3;
  *(v2 + 80) = 0x65736E6F70736572;
  *(v2 + 88) = 0xE900000000000073;
  *(v2 + 120) = type metadata accessor for HomeAutomationEntityResponses();
  *(v2 + 96) = v1;
  v6 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
  swift_retain_n();
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_2529A5084;

  return v6(0xD000000000000027, 0x8000000252E8BD40, v2);
}

uint64_t sub_252C37168(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_252C37188, 0, 0);
}

uint64_t sub_252C37188()
{
  v1 = v0[3];
  __swift_project_boxed_opaque_existential_1((v0[2] + 24), *(v0[2] + 48));

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v2 = swift_allocObject();
  v0[4] = v2;
  *(v2 + 16) = xmmword_252E3C3C0;
  *(v2 + 32) = 0xD000000000000017;
  *(v2 + 40) = 0x8000000252E6FE70;
  v3 = MEMORY[0x277D839B0];
  *(v2 + 48) = 0;
  *(v2 + 72) = v3;
  *(v2 + 80) = 0x65736E6F70736572;
  *(v2 + 88) = 0xE900000000000073;
  *(v2 + 120) = type metadata accessor for HomeAutomationEntityResponses();
  *(v2 + 96) = v1;
  v6 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
  swift_retain_n();
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_252C37310;

  return v6(0xD000000000000024, 0x8000000252E8BD70, v2);
}

uint64_t sub_252C37310(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {
    v5 = sub_252C377E0;
  }

  else
  {
    *(v4 + 56) = a1;
    v5 = sub_252C377DC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252C37464()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 3);

  __swift_destroy_boxed_opaque_existential_1(v0 + 9);
  memcpy(__dst, v0 + 14, sizeof(__dst));
  sub_25299F5D4(__dst);

  return swift_deallocClassInstance();
}

uint64_t sub_252C374FC(void *a1, uint64_t a2)
{
  v3 = [a1 userTask];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 attribute];

    if (v5 == 67 && a2 != 0)
    {
      return sub_252C30CB4() & 1;
    }
  }

  else
  {
    sub_252C515AC();
  }

  return 0;
}

uint64_t sub_252C3757C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25293B808;

  return sub_252C36438(a1, a2, a3);
}

void *sub_252C37634@<X0>(const void *a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for RvcFailureResponseHandler();
  v4 = swift_allocObject();
  memcpy(__dst, a1, sizeof(__dst));
  *(v4 + 616) = sub_2529FC1F0(&unk_2864A9B90);
  result = sub_252BE97AC(__dst);
  *a2 = result;
  return result;
}

uint64_t sub_252C376A8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_25294B958;

  return sub_252C37168(v2, v3);
}

uint64_t sub_252C37740()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_25294B7BC;

  return sub_252C36FC0(v2, v3);
}

uint64_t sub_252C377E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_252C37808, 0, 0);
}

uint64_t sub_252C37808()
{
  v1 = [*(v0 + 32) matchedEntities];
  if (v1)
  {
    v2 = v1;
    type metadata accessor for HomeEntity();
    sub_252E37264();
  }

  v3 = *(v0 + 40);
  v4 = sub_252C6CB2C();
  *(v0 + 48) = v4;

  v5 = swift_allocObject();
  *(v0 + 56) = v5;
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;

  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  *v6 = v0;
  v6[1] = sub_252C37970;
  v7 = *(v0 + 16);
  v8 = *(v0 + 24);

  return sub_252C6C378(v7, v8, &unk_252E53A58, v5);
}

uint64_t sub_252C37970()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_252C37B04;
  }

  else
  {
    v2 = sub_252C37AA0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_252C37AA0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252C37B04()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252C37B68(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_252C37B88, 0, 0);
}

uint64_t sub_252C37B88()
{
  v1 = *__swift_project_boxed_opaque_existential_1((v0[2] + 24), *(v0[2] + 48));

  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_252C37C68;
  v4 = v0[2];
  v3 = v0[3];

  return sub_252C15CD4(0, v1, v3, v4);
}

uint64_t sub_252C37C68(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_252C37DF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25293B808;

  return sub_252C377E4(a1, a2, a3);
}

void *sub_252C37EA8@<X0>(const void *a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for DiscoverLocationResponseHandler();
  swift_allocObject();
  memcpy(__dst, a1, sizeof(__dst));
  result = sub_252BE97AC(__dst);
  *a2 = result;
  return result;
}

uint64_t sub_252C37F0C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_25294B7BC;

  return sub_252C37B68(v2, v3);
}

dispatch_semaphore_t sub_252C37FA4()
{
  result = dispatch_semaphore_create(1);
  qword_27F575A50 = result;
  return result;
}

uint64_t sub_252C37FC8()
{
  v1 = sub_252E36AB4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2814B0A18 != -1)
  {
    swift_once();
  }

  v5 = qword_2814B0A20;
  sub_252E36A94();
  sub_252E375D4();
  sub_252E36A84();
  if (qword_2814B0A70 != -1)
  {
    swift_once();
  }

  v6 = sub_252E36AD4();
  __swift_project_value_buffer(v6, qword_2814B0A78);
  sub_252CC3D90(0xD00000000000001ELL, 0x8000000252E8BEE0, 0xD00000000000006ELL, 0x8000000252E8BE50);
  *(v0 + 16) = [objc_allocWithZone(MEMORY[0x277CD19B8]) init];
  v7 = sub_252E375C4();
  sub_252E36A74(v7, &dword_252917000, v5, "OpenHKConnection", 16, 2, v4, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);
  (*(v2 + 8))(v4, v1);
  return v0;
}

uint64_t ClientConnection.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_252C3828C()
{
  if (qword_2814B0A70 != -1)
  {
    swift_once();
  }

  v0 = sub_252E36AD4();
  __swift_project_value_buffer(v0, qword_2814B0A78);
  sub_252CC3D90(0xD000000000000012, 0x8000000252E8BF00, 0xD00000000000006ELL, 0x8000000252E8BE50);
  if (qword_27F53F418 != -1)
  {
    swift_once();
  }

  sub_252E37604();
  qword_27F544350 = 0;

  return sub_252E37614();
}

uint64_t sub_252C38378(uint64_t a1)
{
  sub_252D806C0(a1);
  sub_252D7ED58(0xD000000000000010, 0x8000000252E53A50, sub_252C3828C, 0, 15);

  if (qword_27F53F418 != -1)
  {
    swift_once();
  }

  sub_252E37604();
  v1 = qword_27F544350;
  if (qword_27F544350)
  {
  }

  else
  {
    if (qword_2814B0A98 != -1)
    {
      swift_once();
    }

    v2 = sub_252E36AD4();
    __swift_project_value_buffer(v2, qword_2814B0AA0);
    sub_252CC3D90(0xD000000000000019, 0x8000000252E8BE30, 0xD00000000000006ELL, 0x8000000252E8BE50);
    type metadata accessor for ClientConnection();
    swift_allocObject();
    v1 = sub_252C37FC8();
    qword_27F544350 = v1;
  }

  sub_252E37614();
  return v1;
}

uint64_t sub_252C384FC()
{
  result = sub_2529FC004(&unk_2864AE2A8);
  qword_27F575A58 = result;
  return result;
}

uint64_t sub_252C38524(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_252E36324();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252C38624, 0, 0);
}

uint64_t sub_252C38624()
{
  v63 = sub_252B4F670();
  v1 = sub_252C2E2D8();
  v2 = v1;
  if (v1 >> 62)
  {
    goto LABEL_41;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_252E378C4())
  {
    v4 = &off_279711000;
    v83 = v0;
    if (i)
    {
      v5 = 0;
      v6 = v2 & 0xC000000000000001;
      v69 = v0[6];
      v78 = (v69 + 32);
      v81 = v2 & 0xFFFFFFFFFFFFFF8;
      v84 = MEMORY[0x277D84F90];
      v72 = i;
      v75 = v2;
      v66 = v2 & 0xC000000000000001;
      while (1)
      {
        if (v6)
        {
          v7 = MEMORY[0x2530ADF00](v5, v2);
        }

        else
        {
          if (v5 >= *(v81 + 16))
          {
            goto LABEL_38;
          }

          v7 = *(v2 + 8 * v5 + 32);
        }

        v8 = v7;
        v9 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v10 = [v7 v4[221]];
        if (v10 && (v11 = v10, v12 = [v10 homeEntityName], v11, v12))
        {
          v14 = v0[11];
          v13 = v0[12];
          v15 = v0[5];
          sub_252E36F34();

          sub_252E37024();

          v16 = *v78;
          (*v78)(v13, v14, v15);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v84 = sub_2529F7F74(0, v84[2] + 1, 1, v84);
          }

          v0 = v83;
          v18 = v84[2];
          v17 = v84[3];
          i = v72;
          v6 = v66;
          if (v18 >= v17 >> 1)
          {
            v84 = sub_2529F7F74((v17 > 1), v18 + 1, 1, v84);
          }

          v19 = v83[12];
          v20 = v83[5];
          v84[2] = v18 + 1;
          v16(v84 + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v18, v19, v20);
          v4 = &off_279711000;
          v2 = v75;
        }

        else
        {
        }

        ++v5;
        if (v9 == i)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v84 = MEMORY[0x277D84F90];
LABEL_20:

    v21 = sub_252C2E2FC();
    v22 = v21;
    if (!(v21 >> 62))
    {
      v23 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v23)
      {
        break;
      }

      goto LABEL_22;
    }

    v23 = sub_252E378C4();
    if (!v23)
    {
      break;
    }

LABEL_22:
    v24 = 0;
    v25 = v22 & 0xC000000000000001;
    v67 = v0[6];
    v76 = (v67 + 32);
    v79 = v22 & 0xFFFFFFFFFFFFFF8;
    v82 = MEMORY[0x277D84F90];
    v70 = v23;
    v73 = v22;
    v64 = v22 & 0xC000000000000001;
    while (1)
    {
      if (v25)
      {
        v26 = MEMORY[0x2530ADF00](v24, v22);
      }

      else
      {
        if (v24 >= *(v79 + 16))
        {
          goto LABEL_40;
        }

        v26 = *(v22 + 8 * v24 + 32);
      }

      v27 = v26;
      v28 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      v29 = [v26 v4[221]];
      if (v29 && (v2 = v29, v30 = [v29 homeEntityName], v2, v30))
      {
        v32 = v0[9];
        v31 = v0[10];
        v33 = v0[5];
        sub_252E36F34();

        sub_252E37024();

        v34 = *v76;
        (*v76)(v31, v32, v33);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v82 = sub_2529F7F74(0, v82[2] + 1, 1, v82);
        }

        v0 = v83;
        v2 = v82[2];
        v35 = v82[3];
        v23 = v70;
        v22 = v73;
        v25 = v64;
        if (v2 >= v35 >> 1)
        {
          v82 = sub_2529F7F74((v35 > 1), v2 + 1, 1, v82);
        }

        v36 = v83[10];
        v37 = v83[5];
        v82[2] = v2 + 1;
        v34(v82 + ((*(v67 + 80) + 32) & ~*(v67 + 80)) + *(v67 + 72) * v2, v36, v37);
        v4 = &off_279711000;
      }

      else
      {
      }

      ++v24;
      if (v28 == v23)
      {
        goto LABEL_44;
      }
    }

LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    ;
  }

  v82 = MEMORY[0x277D84F90];
LABEL_44:

  v38 = sub_252C2C068();
  v39 = v38;
  if (v38 >> 62)
  {
    goto LABEL_63;
  }

  for (j = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = sub_252E378C4())
  {
    v41 = 0;
    v77 = v39 & 0xFFFFFFFFFFFFFF8;
    v80 = v39 & 0xC000000000000001;
    v65 = v0[6];
    v74 = (v65 + 32);
    v42 = MEMORY[0x277D84F90];
    v68 = j;
    v71 = v39;
    while (1)
    {
      if (v80)
      {
        v43 = MEMORY[0x2530ADF00](v41, v39);
      }

      else
      {
        if (v41 >= *(v77 + 16))
        {
          goto LABEL_62;
        }

        v43 = *(v39 + 8 * v41 + 32);
      }

      v44 = v43;
      v45 = v41 + 1;
      if (__OFADD__(v41, 1))
      {
        break;
      }

      v46 = [v43 v4[221]];
      if (v46 && (v47 = v46, v48 = [v46 homeEntityName], v47, v48))
      {
        v50 = v0[7];
        v49 = v0[8];
        v51 = v0[5];
        sub_252E36F34();

        sub_252E37024();

        v52 = *v74;
        (*v74)(v49, v50, v51);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v42 = sub_2529F7F74(0, v42[2] + 1, 1, v42);
        }

        v54 = v42[2];
        v53 = v42[3];
        v0 = v83;
        v4 = &off_279711000;
        j = v68;
        if (v54 >= v53 >> 1)
        {
          v42 = sub_2529F7F74((v53 > 1), v54 + 1, 1, v42);
        }

        v55 = v83[8];
        v56 = v83[5];
        v42[2] = v54 + 1;
        v52(v42 + ((*(v65 + 80) + 32) & ~*(v65 + 80)) + *(v65 + 72) * v54, v55, v56);
        v39 = v71;
      }

      else
      {
      }

      ++v41;
      if (v45 == j)
      {
        goto LABEL_65;
      }
    }

    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    ;
  }

  v42 = MEMORY[0x277D84F90];
LABEL_65:
  v57 = v0[4];

  v58 = v57[6];
  v59 = v57[7];
  __swift_project_boxed_opaque_existential_1(v57 + 3, v58);
  v60 = swift_allocObject();
  v60[2] = v57;
  v60[3] = v84;
  v60[4] = v82;
  v60[5] = v42;

  sub_252943B8C(sub_252C39788, v60, v58, v59);

  v61 = v83[1];

  return v61();
}

uint64_t sub_252C38DDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_252E3C280;
  *(v7 + 32) = 0xD000000000000011;
  *(v7 + 40) = 0x8000000252E851F0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540600, &qword_252E3CF90);
  *(v7 + 48) = a2;
  *(v7 + 72) = v8;
  *(v7 + 80) = 0xD000000000000016;
  *(v7 + 88) = 0x8000000252E85210;
  *(v7 + 96) = a3;
  *(v7 + 120) = v8;
  *(v7 + 128) = 0xD000000000000015;
  *(v7 + 168) = v8;
  *(v7 + 136) = 0x8000000252E85230;
  *(v7 + 144) = a4;

  sub_252E362B4();
}

void *sub_252C38F34@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AsyncPartialFailureResponseHandler();
  v2 = swift_allocObject();
  result = sub_252D46D94(v2);
  *a1 = result;
  return result;
}

uint64_t sub_252C38F74(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25293B808;

  return sub_252C38524(a1, a2);
}

BOOL sub_252C39020()
{
  v2 = sub_252B4F670();
  v3 = [v2 entityResponses];
  if (v3)
  {
    v4 = v3;
    type metadata accessor for HomeEntityResponse();
    v5 = sub_252E37264();

    if (!(v5 >> 62))
    {
      goto LABEL_3;
    }

LABEL_28:
    v6 = sub_252E378C4();
    v61 = v2;
    if (v6)
    {
      goto LABEL_4;
    }

    goto LABEL_29;
  }

  if (qword_27F53F4E8 != -1)
  {
    swift_once();
  }

  v20 = sub_252E36AD4();
  v0 = __swift_project_value_buffer(v20, qword_27F544D60);
  sub_252E379F4();

  v66 = 0xD00000000000002FLL;
  v67 = 0x8000000252E69700;
  v21 = v2;
  v22 = [v21 description];
  v23 = sub_252E36F34();
  v25 = v24;

  MEMORY[0x2530AD570](v23, v25);

  sub_252CC3D90(0xD00000000000002FLL, 0x8000000252E69700, 0xD000000000000098, 0x8000000252E69730);

  v5 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62)
  {
    goto LABEL_28;
  }

LABEL_3:
  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v61 = v2;
  if (v6)
  {
LABEL_4:
    v7 = 0;
    v62 = v5 & 0xC000000000000001;
    v8 = (v5 & 0xFFFFFFFFFFFFFF8);
    v9 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v62)
      {
        v10 = v5;
        v11 = MEMORY[0x2530ADF00](v7, v5);
      }

      else
      {
        if (v7 >= v8[2])
        {
          goto LABEL_63;
        }

        v10 = v5;
        v11 = *(v5 + 8 * v7 + 32);
      }

      v1 = v11;
      v2 = (v7 + 1);
      if (__OFADD__(v7, 1))
      {
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        v32 = sub_252E378C4();
        goto LABEL_40;
      }

      v12 = sub_252DA10F8();

      v1 = *(v12 + 16);
      v13 = *(v9 + 2);
      v0 = v13 + v1;
      if (__OFADD__(v13, v1))
      {
        goto LABEL_64;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v0 <= *(v9 + 3) >> 1)
      {
        if (*(v12 + 16))
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v13 <= v0)
        {
          v15 = v13 + v1;
        }

        else
        {
          v15 = v13;
        }

        v9 = sub_2529F7B8C(isUniquelyReferenced_nonNull_native, v15, 1, v9);
        if (*(v12 + 16))
        {
LABEL_20:
          v16 = *(v9 + 2);
          if ((*(v9 + 3) >> 1) - v16 < v1)
          {
            goto LABEL_66;
          }

          memcpy(&v9[8 * v16 + 32], (v12 + 32), 8 * v1);

          if (v1)
          {
            v17 = *(v9 + 2);
            v18 = __OFADD__(v17, v1);
            v19 = (v17 + v1);
            if (v18)
            {
              goto LABEL_67;
            }

            *(v9 + 2) = v19;
          }

          goto LABEL_6;
        }
      }

      if (v1)
      {
        goto LABEL_65;
      }

LABEL_6:
      ++v7;
      v5 = v10;
      if (v2 == v6)
      {
        goto LABEL_30;
      }
    }
  }

LABEL_29:
  v9 = MEMORY[0x277D84F90];
LABEL_30:

  v26 = sub_252C759A0(v9);

  if (*(v26 + 16))
  {
    v2 = v61;
    v8 = &off_279711000;
    if (qword_27F53F420 != -1)
    {
      swift_once();
    }

    v27 = sub_252938C88(qword_27F575A58, v26);

    LODWORD(v1) = v27 ^ 1;
  }

  else
  {

    LODWORD(v1) = 1;
    v2 = v61;
    v8 = &off_279711000;
  }

  v28 = [v2 v8[219]];
  if (!v28)
  {
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v40 = sub_252E36AD4();
    __swift_project_value_buffer(v40, qword_27F544D60);
    sub_252E379F4();

    v66 = 0xD00000000000002FLL;
    v67 = 0x8000000252E69700;
    v41 = v2;
    v42 = [v41 description];
    v43 = sub_252E36F34();
    v45 = v44;

    MEMORY[0x2530AD570](v43, v45);

    sub_252CC3D90(0xD00000000000002FLL, 0x8000000252E69700, 0xD000000000000098, 0x8000000252E69730);

    v30 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
      goto LABEL_37;
    }

LABEL_49:
    v0 = sub_252E378C4();
    goto LABEL_38;
  }

  v29 = v28;
  type metadata accessor for HomeEntityResponse();
  v30 = sub_252E37264();

  if (v30 >> 62)
  {
    goto LABEL_49;
  }

LABEL_37:
  v0 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_38:

  v31 = sub_252C285CC();
  if (v31 >> 62)
  {
    goto LABEL_68;
  }

  v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_40:

  v33 = sub_252C285CC();
  if (v33 >> 62)
  {
    v34 = sub_252E378C4();
  }

  else
  {
    v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v35 = [v2 v8[219]];
  if (v35)
  {
    v36 = v35;
    type metadata accessor for HomeEntityResponse();
    v37 = sub_252E37264();

    if (v37 >> 62)
    {
      v38 = sub_252E378C4();
    }

    else
    {
      v38 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v39 = v34 == v38;
  }

  else
  {
    v39 = 0;
  }

  v46 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v35);
  sub_252929E74((v46 + 16), &v66);

  __swift_project_boxed_opaque_existential_1(&v66, v68);
  v47 = sub_252E338F4();
  __swift_destroy_boxed_opaque_existential_1(&v66);
  v48 = *(sub_252B4F854() + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_isSceneRequest);

  v50 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v49);
  sub_252929E74((v50 + 288), &v66);

  v51 = v68;
  v52 = v69;
  __swift_project_boxed_opaque_existential_1(&v66, v68);
  v53 = (*(v52 + 72))(v51, v52);
  if (v53)
  {

    __swift_destroy_boxed_opaque_existential_1(&v66);
    v54 = v48 | ~v47;
  }

  else
  {
    v55 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v53);
    sub_252929E74((v55 + 288), v63);

    v56 = v64;
    v57 = v65;
    __swift_project_boxed_opaque_existential_1(v63, v64);
    v58 = (*(v57 + 80))(v56, v57);

    __swift_destroy_boxed_opaque_existential_1(v63);
    __swift_destroy_boxed_opaque_existential_1(&v66);
    v54 = v48 | ~(v58 & v47);
  }

  if ((v54 | v1 | v39))
  {
    return 0;
  }

  if (v0)
  {
    v60 = v32 == 0;
  }

  else
  {
    v60 = 1;
  }

  return !v60;
}

unint64_t sub_252C39794(uint64_t a1)
{
  v1 = a1 + 64;
  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v35 = v5;
  v36 = result;
  v33 = v1;
  while (1)
  {
    if (!v4)
    {
      while (1)
      {
        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        if (v9 >= v5)
        {
          goto LABEL_39;
        }

        v4 = *(v1 + 8 * v9);
        ++v7;
        if (v4)
        {
          v7 = v9;
          goto LABEL_10;
        }
      }

      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
      return result;
    }

LABEL_10:
    v40 = v4;
    v10 = *(*(result + 48) + ((v7 << 9) | (8 * __clz(__rbit64(v4)))));
    v11 = v10 >> 62;
    v12 = v10;
    v13 = v10 >> 62 ? sub_252E378C4() : *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v14 = v8 >> 62;
    if (v8 >> 62)
    {
      break;
    }

    v15 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v16 = v15 + v13;
    if (__OFADD__(v15, v13))
    {
      goto LABEL_38;
    }

LABEL_14:

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v38 = v13;
    if (result)
    {
      if (!v14)
      {
        v17 = v8;
        v18 = v8 & 0xFFFFFFFFFFFFFF8;
        if (v16 <= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_22;
        }

        goto LABEL_21;
      }
    }

    else if (!v14)
    {
      goto LABEL_21;
    }

    sub_252E378C4();
LABEL_21:
    result = sub_252E37A54();
    v17 = result;
    v18 = result & 0xFFFFFFFFFFFFFF8;
LABEL_22:
    v19 = *(v18 + 16);
    v20 = *(v18 + 24);
    v21 = v12;
    v37 = v17;
    if (v11)
    {
      v23 = v18;
      result = sub_252E378C4();
      v18 = v23;
      v21 = v12;
      v22 = result;
    }

    else
    {
      v22 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v4 = (v40 - 1) & v40;
    if (v22)
    {
      if (((v20 >> 1) - v19) < v38)
      {
        goto LABEL_42;
      }

      v24 = v18 + 8 * v19 + 32;
      v40 &= v40 - 1;
      v34 = v18;
      if (v11)
      {
        if (v22 < 1)
        {
          goto LABEL_44;
        }

        sub_252A00B04(&qword_27F544358, &qword_27F541EA8, qword_252E51A90);
        for (i = 0; i != v22; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541EA8, qword_252E51A90);
          v26 = sub_2529FBD80(v39, i, v21);
          v28 = *v27;
          (v26)(v39, 0);
          *(v24 + 8 * i) = v28;
        }
      }

      else
      {
        type metadata accessor for HomeUserTask();
        swift_arrayInitWithCopy();
      }

      v8 = v37;
      v5 = v35;
      result = v36;
      v1 = v33;
      v4 = v40;
      if (v38 >= 1)
      {
        v29 = *(v34 + 16);
        v30 = __OFADD__(v29, v38);
        v31 = v29 + v38;
        if (v30)
        {
          goto LABEL_43;
        }

        *(v34 + 16) = v31;
      }
    }

    else
    {

      v8 = v37;
      v5 = v35;
      result = v36;
      if (v38 > 0)
      {
        goto LABEL_41;
      }
    }
  }

  v32 = sub_252E378C4();
  v16 = v32 + v13;
  if (!__OFADD__(v32, v13))
  {
    goto LABEL_14;
  }

LABEL_38:
  __break(1u);
LABEL_39:

  return v8;
}