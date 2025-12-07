uint64_t sub_232B9E58C()
{
  sub_232B26C44();
  sub_232B9E25C();
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_232B9E630;

  return sub_232B9E748();
}

uint64_t sub_232B9E630()
{
  sub_232B482F8();
  v3 = v2;
  v5 = v4;
  sub_232B26C70();
  v7 = v6;
  sub_232B51338();
  *v8 = v7;
  v9 = *v1;
  sub_232B26B3C();
  *v10 = v9;
  v7[10] = v0;

  if (!v0)
  {
    v7[11] = v3;
    v7[12] = v5;
  }

  sub_232B48304();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_232B9E748()
{
  sub_232B482F8();
  v2 = v1;
  v3 = sub_232B124A8(&qword_27DDC73B8, &qword_232CF90B8);
  v0[2] = v3;
  sub_232B27FBC(v3);
  v0[3] = v4;
  v0[4] = sub_232B27FCC();
  swift_task_alloc();
  sub_232BA6740();
  v0[5] = v5;
  *v5 = v6;
  v5[1] = sub_232B9E85C;
  sub_232BA71B0();

  return sub_232B9EC90(v7, v8, v9, v10, v2);
}

uint64_t sub_232B9E85C()
{
  sub_232B26C7C();
  sub_232B26C70();
  v3 = v2;
  sub_232B51338();
  *v4 = v3;
  v5 = *v1;
  sub_232B26B3C();
  *v6 = v5;
  *(v3 + 48) = v0;

  if (v0)
  {
    sub_232B48304();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {
    v10 = swift_task_alloc();
    *(v3 + 56) = v10;
    sub_232BA5960();
    sub_232BA4DA4(v11, v12, MEMORY[0x277D71A48]);
    *v10 = v5;
    v13 = sub_232BA6F94();

    return MEMORY[0x282165A58](v13);
  }
}

uint64_t sub_232B9E9E0()
{
  sub_232B482F8();
  sub_232BA7124();
  sub_232B51338();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 64) = v0;

  (*(v2[3] + 8))(v2[4], v2[2]);
  if (!v0)
  {

    sub_232BA5FEC();
    sub_232BA7440();

    __asm { BRAA            X3, X16 }
  }

  sub_232B48304();
  sub_232BA7440();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_232B9EBA4(uint64_t a1, char a2, char *a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(unint64_t, unint64_t, uint64_t, void, uint64_t))
{
  v9 = v6;
  v12 = *a3;
  *(v9 + 24) = sub_232CE9C60();
  *(v9 + 16) = v12;
  v13 = sub_232CE9C60();
  a5(0);
  swift_allocObject();
  *(v9 + 32) = a6(0xD000000000000025, 0x8000000232D05880, a1, a2 & 1, v13);
  return v9;
}

uint64_t sub_232B9EC90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[31] = a4;
  v5[32] = a5;
  v5[29] = a2;
  v5[30] = a3;
  v5[28] = a1;
  sub_232B124A8(&qword_27DDC73C8, &qword_232CF90C8);
  v5[33] = swift_task_alloc();
  v5[34] = sub_232B124A8(&qword_27DDC73D0, &unk_232CF90D0);
  v5[35] = swift_task_alloc();
  v6 = sub_232CE9280();
  v5[36] = v6;
  v5[37] = *(v6 - 8);
  v5[38] = swift_task_alloc();
  v7 = sub_232CE9290();
  v5[39] = v7;
  v5[40] = *(v7 - 8);
  v5[41] = swift_task_alloc();
  sub_232B124A8(&qword_27DDC7360, &unk_232CF9030);
  v5[42] = swift_task_alloc();
  v8 = sub_232CE9900();
  v5[43] = v8;
  v5[44] = *(v8 - 8);
  v5[45] = swift_task_alloc();
  v5[46] = swift_task_alloc();
  v9 = sub_232CE9210();
  v5[47] = v9;
  v5[48] = *(v9 - 8);
  v5[49] = swift_task_alloc();
  v10 = sub_232CE9120();
  v5[50] = v10;
  v5[51] = *(v10 - 8);
  v5[52] = swift_task_alloc();
  v11 = sub_232CE9110();
  v5[53] = v11;
  v5[54] = *(v11 - 8);
  v5[55] = swift_task_alloc();
  v12 = sub_232B124A8(&qword_27DDC73D8, &unk_232CFB2B0);
  v5[56] = v12;
  v5[57] = *(v12 - 8);
  v5[58] = swift_task_alloc();
  v13 = sub_232CE91C0();
  v5[59] = v13;
  v5[60] = *(v13 - 8);
  v5[61] = swift_task_alloc();
  v14 = sub_232CE91B0();
  v5[62] = v14;
  v5[63] = *(v14 - 8);
  v5[64] = swift_task_alloc();
  v15 = sub_232B124A8(&qword_27DDC73E0, &qword_232CF90E0);
  v5[65] = v15;
  v5[66] = *(v15 - 8);
  v5[67] = swift_task_alloc();
  v16 = sub_232B124A8(&qword_27DDC7368, &unk_232CFB260);
  v5[68] = v16;
  v5[69] = *(v16 - 8);
  v5[70] = swift_task_alloc();
  v17 = sub_232CE9AE0();
  v5[71] = v17;
  v5[72] = *(v17 - 8);
  v5[73] = swift_task_alloc();
  v5[74] = swift_task_alloc();
  v5[75] = swift_task_alloc();
  v5[76] = swift_task_alloc();
  v5[77] = swift_task_alloc();
  v5[78] = swift_task_alloc();
  v5[79] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_232B9F270, 0, 0);
}

uint64_t sub_232B9F270()
{
  v58 = v0[76];
  v1 = v0[74];
  v72 = v0[72];
  v2 = v0[71];
  v3 = v0[70];
  v4 = v0[69];
  v5 = v0[68];
  v55 = v0[67];
  v56 = v0[66];
  v57 = v0[65];
  v49 = v0[64];
  v50 = v0[63];
  v51 = v0[62];
  v52 = v0[61];
  v53 = v0[60];
  v54 = v0[59];
  v65 = v0[58];
  v66 = v0[57];
  v67 = v0[56];
  v59 = v0[55];
  v60 = v0[54];
  v61 = v0[53];
  v64 = v0[52];
  v62 = v0[51];
  v63 = v0[50];
  v69 = v0[48];
  v70 = v0[47];
  v71 = v0[49];
  v6 = v0[32];
  v47 = v0[31];
  v7 = v0[29];
  v68 = v0[30];
  *(swift_task_alloc() + 16) = v7;
  sub_232CE9AF0();

  sub_232B9E150(v8);
  v48 = *MEMORY[0x277D0E550];
  (*(v4 + 104))(v3);
  v0[80] = sub_232BA4DA4(&qword_2814DFA48, MEMORY[0x277D42D40], MEMORY[0x277D42D38]);
  sub_232BA5880();
  sub_232CE9BE0();
  (*(v4 + 8))(v3, v5);
  v9 = *(v72 + 8);
  v0[81] = v9;
  v0[82] = (v72 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10 = sub_232BA7224();
  v9(v10);
  v0[83] = sub_232B124A8(&qword_27DDC7370, &unk_232CF9040);
  inited = swift_initStackObject();
  v12 = sub_232BA5A90(inited, xmmword_232CF6460);
  v13 = MEMORY[0x277D42EC0];
  v12[4].n128_u64[1] = MEMORY[0x277D837D0];
  v12[5].n128_u64[0] = v13;
  v12[3].n128_u64[0] = v47;
  v12[3].n128_u64[1] = v6;

  v0[84] = sub_232B124A8(&qword_27DDC7378, &unk_232CFB270);
  sub_232B5EFF4();
  sub_232CE9C60();
  sub_232BA5C64();
  sub_232CE9C10();

  (v9)(v1, v2);
  sub_232CE91D0();
  v14 = sub_232BA5CE4();
  sub_232B12504(v14, v15, v16, v17);
  (*(v50 + 104))(v49, *MEMORY[0x277D0E5C0], v51);
  sub_232CE91A0();
  sub_232B55484();
  sub_232B12504(v18, v19, v20, v21);
  (*(v53 + 104))(v52, *MEMORY[0x277D0E5C8], v54);
  sub_232B2080C();
  sub_232CE91E0();
  (*(v56 + 104))(v55, v48, v57);
  sub_232BA5D34();
  sub_232CE9BB0();
  (*(v56 + 8))(v55, v57);
  v22 = sub_232BA7224();
  v9(v22);
  sub_232CE9130();
  sub_232B55484();
  sub_232B12504(v23, v24, v25, v26);
  (*(v60 + 104))(v59, *MEMORY[0x277D0E578], v61);
  sub_232CE9100();
  sub_232B55484();
  sub_232B12504(v27, v28, v29, v30);
  (*(v62 + 104))(v64, *MEMORY[0x277D0E580], v63);
  sub_232B37C0C();
  sub_232CE9140();
  (*(v66 + 104))(v65, v48, v67);
  sub_232CE9BD0();
  v31 = sub_232BA64A4();
  v32(v31);
  (v9)(v58, v2);
  sub_232CE9C60();
  sub_232BA5C64();
  sub_232CE9B90();

  v33 = sub_232BA5ED4();
  v9(v33);
  v34 = *(v68 + 32);
  v0[85] = v34;
  v35 = OBJC_IVAR____TtCC21DocumentUnderstanding18DUEventDraftGatingP33_7DFF5EDDB67079A377F3E66D4A02DD0811_ClientInfo_trackingConfig;
  sub_232BA63D0();
  swift_beginAccess();
  (*(v69 + 16))(v71, v34 + v35, v70);
  sub_232BA59E0();
  sub_232CE9BF0();
  v36 = sub_232BA6AAC();
  v37(v36);
  v38 = sub_232BA5CAC();
  v9(v38);
  sub_232CE98F0();
  v39 = sub_232BA5CE4();
  sub_232B12504(v39, v40, v41, v42);
  sub_232BA6870();
  swift_task_alloc();
  sub_232BA6740();
  v0[86] = v43;
  *v43 = v44;
  v43[1] = sub_232B9F8AC;
  sub_232BA6458();

  return MEMORY[0x282166B58](v45);
}

uint64_t sub_232B9F8AC()
{
  sub_232B26C44();
  sub_232B26C70();
  sub_232B482C0();
  *v3 = v2;
  v4 = *v1;
  sub_232B26B3C();
  *v5 = v4;
  *(v6 + 696) = v0;

  sub_232B48304();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_232B9F9A8()
{
  v1 = v0[33];
  v2 = sub_232B124A8(&qword_27DDC73E8, &qword_232CF90E8);
  sub_232B351B0(v1, 1, v2);
  if (v3)
  {
    sub_232BA4D50(v1, &qword_27DDC73C8, &qword_232CF90C8);
  }

  else
  {
    v39 = v0[81];
    v36 = v0[79];
    v38 = v0[71];
    v4 = v0[45];
    v31 = v0[44];
    v32 = v0[43];
    v33 = v0[46];
    v40 = v0[41];
    v37 = v0[40];
    v5 = v0[37];
    v34 = v0[39];
    v35 = v5;
    v29 = v0[36];
    v30 = v0[38];
    v6 = v0[34];
    v7 = v0[35];
    v27 = *(v6 + 48);
    v28 = *(v2 + 48);
    v8 = *(v37 + 32);
    v9 = sub_232B35128();
    (v8)(v9);
    v10 = *(v5 + 32);
    v10(v7 + v27, v1 + v28, v29);
    v11 = *(v6 + 48);
    sub_232BA6358();
    v8();
    v10(v30, v7 + v11, v29);
    sub_232CE9270();
    (*(v31 + 8))(v33, v32);
    (*(v31 + 32))(v33, v4, v32);
    inited = swift_initStackObject();
    inited[4].n128_u64[1] = sub_232BA6308(inited, xmmword_232CF6460);
    sub_232BA5998();
    inited[5].n128_u64[0] = sub_232BA4DA4(v13, v14, MEMORY[0x277D0E680]);
    sub_232BA18A8(&inited[3]);
    sub_232BA5C58();
    (*(v15 + 16))();
    sub_232BA5FEC();
    sub_232CE9C60();
    sub_232CE9C60();
    sub_232BA71B0();
    sub_232CE9250();

    (*(v35 + 8))(v30, v29);
    (*(v37 + 8))(v40, v34);
    v39(v36, v38);
    v16 = sub_232BA7224();
    v17(v16);
  }

  v25 = v0[85];
  v18 = v0[81];
  v19 = v0[46];
  v20 = v0[44];
  v26 = v0[43];
  sub_232CE9B80();
  v0[27] = *(v25 + OBJC_IVAR____TtCC21DocumentUnderstanding18DUEventDraftGatingP33_7DFF5EDDB67079A377F3E66D4A02DD0811_ClientInfo__model);
  sub_232CE8FC0();
  sub_232CE9C00();
  v21 = sub_232BA7160();
  v18(v21);
  (*(v20 + 8))(v19, v26);
  v22 = sub_232BA7198();
  v18(v22);

  sub_232B26CF4();

  return v23();
}

uint64_t sub_232B9FED4()
{
  v1 = v0[81];
  v2 = v0[79];
  v3 = v0[71];
  (*(v0[44] + 8))(v0[46], v0[43]);
  v1(v2, v3);

  sub_232B26CF4();

  return v4();
}

uint64_t sub_232BA00A0(uint64_t a1)
{
  v2 = sub_232CE9B70();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_232CE9780();
  v13[3] = v6;
  v13[4] = sub_232BA4DA4(&qword_2814DFA60, MEMORY[0x277D0E698], MEMORY[0x277D0E680]);
  v7 = sub_232BA18A8(v13);
  (*(*(v6 - 8) + 16))(v7, a1, v6);
  v8 = MEMORY[0x277D42E18];
  sub_232CE9B60();
  sub_232B2040C(v13);
  sub_232B124A8(&qword_27DDC73F0, &qword_232CF90F0);
  v9 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_232CF6460;
  (*(v3 + 16))(v10 + v9, v5, v2);
  MEMORY[0x2383918E0](v10, v2, v8);

  return (*(v3 + 8))(v5, v2);
}

unsigned __int8 *sub_232BA02C4(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v6 = v5;
  v12 = sub_232CE8FE0();
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_232CE9080();
  MEMORY[0x28223BE20](v15 - 8);
  v54[3] = v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_232B124A8(&qword_27DDC73B0, &qword_232CF9088);
  MEMORY[0x28223BE20](v17 - 8);
  v54[2] = v54 - v18;
  v19 = sub_232CE9210();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;

  sub_232CE9C60();
  sub_232CE9200();
  (*(v20 + 32))(v6 + OBJC_IVAR____TtCC21DocumentUnderstanding18DUEventDraftGatingP33_7DFF5EDDB67079A377F3E66D4A02DD0811_ClientInfo_trackingConfig, v22, v19);
  v23 = sub_232B1E0D0(0xD000000000000015, 0x8000000232D058B0, a5);
  v25 = v24;

  v56 = v6;
  v55 = a4;
  v54[4] = v14;
  if (v25)
  {
    v27 = HIBYTE(v25) & 0xF;
    v28 = v23 & 0xFFFFFFFFFFFFLL;
    if ((v25 & 0x2000000000000000) != 0)
    {
      v29 = HIBYTE(v25) & 0xF;
    }

    else
    {
      v29 = v23 & 0xFFFFFFFFFFFFLL;
    }

    if (v29)
    {
      if ((v25 & 0x1000000000000000) != 0)
      {
        v31 = sub_232BA2B04(v23, v25, 10);
        v49 = v53;
        goto LABEL_65;
      }

      if ((v25 & 0x2000000000000000) != 0)
      {
        v57[0] = v23;
        v57[1] = v25 & 0xFFFFFFFFFFFFFFLL;
        if (v23 == 43)
        {
          if (v27)
          {
            if (--v27)
            {
              v31 = 0;
              v41 = v57 + 1;
              while (1)
              {
                v42 = *v41 - 48;
                if (v42 > 9)
                {
                  break;
                }

                v43 = 10 * v31;
                if ((v31 * 10) >> 64 != (10 * v31) >> 63)
                {
                  break;
                }

                v31 = v43 + v42;
                if (__OFADD__(v43, v42))
                {
                  break;
                }

                ++v41;
                if (!--v27)
                {
                  goto LABEL_64;
                }
              }
            }

            goto LABEL_63;
          }

LABEL_78:
          __break(1u);
          return result;
        }

        if (v23 != 45)
        {
          if (v27)
          {
            v31 = 0;
            v46 = v57;
            while (1)
            {
              v47 = *v46 - 48;
              if (v47 > 9)
              {
                break;
              }

              v48 = 10 * v31;
              if ((v31 * 10) >> 64 != (10 * v31) >> 63)
              {
                break;
              }

              v31 = v48 + v47;
              if (__OFADD__(v48, v47))
              {
                break;
              }

              ++v46;
              if (!--v27)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_63;
        }

        if (v27)
        {
          if (--v27)
          {
            v31 = 0;
            v35 = v57 + 1;
            while (1)
            {
              v36 = *v35 - 48;
              if (v36 > 9)
              {
                break;
              }

              v37 = 10 * v31;
              if ((v31 * 10) >> 64 != (10 * v31) >> 63)
              {
                break;
              }

              v31 = v37 - v36;
              if (__OFSUB__(v37, v36))
              {
                break;
              }

              ++v35;
              if (!--v27)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_63;
        }
      }

      else
      {
        if ((v23 & 0x1000000000000000) != 0)
        {
          result = ((v25 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          result = sub_232CEA550();
        }

        v30 = *result;
        if (v30 == 43)
        {
          if (v28 >= 1)
          {
            v27 = v28 - 1;
            if (v28 != 1)
            {
              v31 = 0;
              if (result)
              {
                v38 = result + 1;
                while (1)
                {
                  v39 = *v38 - 48;
                  if (v39 > 9)
                  {
                    goto LABEL_63;
                  }

                  v40 = 10 * v31;
                  if ((v31 * 10) >> 64 != (10 * v31) >> 63)
                  {
                    goto LABEL_63;
                  }

                  v31 = v40 + v39;
                  if (__OFADD__(v40, v39))
                  {
                    goto LABEL_63;
                  }

                  ++v38;
                  if (!--v27)
                  {
                    goto LABEL_64;
                  }
                }
              }

              goto LABEL_55;
            }

            goto LABEL_63;
          }

          goto LABEL_77;
        }

        if (v30 != 45)
        {
          if (v28)
          {
            v31 = 0;
            if (result)
            {
              while (1)
              {
                v44 = *result - 48;
                if (v44 > 9)
                {
                  goto LABEL_63;
                }

                v45 = 10 * v31;
                if ((v31 * 10) >> 64 != (10 * v31) >> 63)
                {
                  goto LABEL_63;
                }

                v31 = v45 + v44;
                if (__OFADD__(v45, v44))
                {
                  goto LABEL_63;
                }

                ++result;
                if (!--v28)
                {
                  goto LABEL_55;
                }
              }
            }

            goto LABEL_55;
          }

LABEL_63:
          v31 = 0;
          LOBYTE(v27) = 1;
          goto LABEL_64;
        }

        if (v28 >= 1)
        {
          v27 = v28 - 1;
          if (v28 != 1)
          {
            v31 = 0;
            if (result)
            {
              v32 = result + 1;
              while (1)
              {
                v33 = *v32 - 48;
                if (v33 > 9)
                {
                  goto LABEL_63;
                }

                v34 = 10 * v31;
                if ((v31 * 10) >> 64 != (10 * v31) >> 63)
                {
                  goto LABEL_63;
                }

                v31 = v34 - v33;
                if (__OFSUB__(v34, v33))
                {
                  goto LABEL_63;
                }

                ++v32;
                if (!--v27)
                {
                  goto LABEL_64;
                }
              }
            }

LABEL_55:
            LOBYTE(v27) = 0;
LABEL_64:
            v58 = v27;
            v49 = v27;
LABEL_65:

            if (v49)
            {
              v50 = 0;
            }

            else
            {
              v50 = v31;
            }

            v54[0] = v50;
            goto LABEL_69;
          }

          goto LABEL_63;
        }

        __break(1u);
      }

      __break(1u);
LABEL_77:
      __break(1u);
      goto LABEL_78;
    }
  }

  v54[0] = 0;
LABEL_69:
  v54[1] = a3;
  sub_232CE8FC0();
  if (qword_27DDC6388 != -1)
  {
    swift_once();
  }

  sub_232CE8F60();
  sub_232BA4DA4(&qword_27DDC7490, MEMORY[0x277D29B48], MEMORY[0x277D29B40]);

  sub_232CE8F70();
  sub_232CE8FD0();
  sub_232CE9070();
  v51 = sub_232CE8FB0();
  v52 = v56;
  *(v56 + OBJC_IVAR____TtCC21DocumentUnderstanding18DUEventDraftGatingP33_7DFF5EDDB67079A377F3E66D4A02DD0811_ClientInfo__model) = v51;
  return v52;
}

uint64_t sub_232BA0938(uint64_t *a1, void *a2)
{

  v4 = *a1;
  sub_232CE9210();
  sub_232BA5190();
  (*(v5 + 8))(v2 + v4);

  return v2;
}

uint64_t sub_232BA09C0(uint64_t *a1, void *a2)
{
  v2 = sub_232BA0938(a1, a2);
  v3 = *(*v2 + 48);
  v4 = *(*v2 + 52);

  return MEMORY[0x2821FE8D8](v2, v3, v4);
}

uint64_t sub_232BA0A20@<X0>(uint64_t *a1@<X2>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *a1;
  sub_232BA63D0();
  swift_beginAccess();
  sub_232CE9210();
  sub_232B13F24();
  return (*(v6 + 16))(a2, v4 + v5);
}

uint64_t sub_232BA0AA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = *v4;
  v7 = *a4;
  swift_beginAccess();
  sub_232CE9210();
  sub_232B13F24();
  (*(v8 + 40))(v6 + v7, a1);
  return swift_endAccess();
}

uint64_t sub_232BA0BA8()
{

  return v0;
}

uint64_t sub_232BA0C1C(uint64_t a1)
{
  result = sub_232CE9210();
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

uint64_t sub_232BA0CC4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_232BA4E58;

  return sub_232B9E4E0();
}

uint64_t sub_232BA0FBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_232BA1D98();
  sub_232BA1DEC();
  return sub_232CEA500();
}

uint64_t sub_232BA1054(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v7 = a3();
  v8 = a4();

  return MEMORY[0x2821662E8](a1, a2, v7, v8);
}

uint64_t sub_232BA1108(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t (*a5)(void))
{
  a4();
  a5();
  sub_232BA5CAC();
  sub_232BA5F5C();
  return sub_232CEA500();
}

void sub_232BA11A4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  sub_232B8298C(a1, a2, a3, a4, a5, a6, a7, a8, v11, __src[0], __src[1], SBYTE2(__src[1]), SHIBYTE(__src[1]));
  if (!v9)
  {
    memcpy(a9, __src, 0xB1uLL);
  }
}

void sub_232BA1214(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_232B84DB4(a1);
  if (!v2)
  {
    memcpy(a2, v4, 0x159uLL);
  }
}

void sub_232BA128C(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_232B878F4(a1);
  if (!v2)
  {
    memcpy(a2, __src, 0x138uLL);
  }
}

void sub_232BA1304(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_232B8970C(a1);
  if (!v2)
  {
    memcpy(a2, __src, 0xB8uLL);
  }
}

void sub_232BA1374(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_232B8AF2C(a1);
  if (!v2)
  {
    memcpy(a2, __src, 0x118uLL);
  }
}

void sub_232BA13EC(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_232B8D530(a1);
  if (!v2)
  {
    memcpy(a2, __src, 0x198uLL);
  }
}

void sub_232BA1464(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  sub_232B901C0(a1, a2, a3, a4, a5, a6, a7, a8, v11, __src[0], SWORD2(__src[0]), SBYTE6(__src[0]), SHIBYTE(__src[0]), __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10]);
  if (!v9)
  {
    memcpy(a9, __src, 0x111uLL);
  }
}

void sub_232BA1580(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, void *a7@<X8>)
{
  sub_232B930C0(a1, a2, a3, a2, a3, a4, a5, a6, v9, __src[0], SWORD2(__src[0]), SBYTE6(__src[0]), SHIBYTE(__src[0]), __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10]);
  if (!v7)
  {
    memcpy(a7, __src, 0xF1uLL);
  }
}

void sub_232BA1600(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  sub_232B94780(a1, a2, a3, a4, a5, a6, a7, a8, v11, __src[0], __src[1], SBYTE2(__src[1]), SHIBYTE(__src[1]));
  if (!v9)
  {
    memcpy(a9, __src, 0x81uLL);
  }
}

void sub_232BA1670(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_232B95D3C(a1);
  if (!v2)
  {
    memcpy(a2, __src, 0xE8uLL);
  }
}

void sub_232BA16E8(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_232B97E90(a1);
  if (!v2)
  {
    memcpy(a2, __src, 0x108uLL);
  }
}

uint64_t sub_232BA1760@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_232CE9940();
  sub_232B135C4(v6, a2);
  sub_232BA5C58();
  v8 = *(v7 + 16);

  return v8(a4);
}

void *sub_232BA17F8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_232B99600(a1, v5);
  if (!v2)
  {
    return memcpy(a2, v5, 0x60uLL);
  }

  return result;
}

uint64_t *sub_232BA18A8(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

unint64_t sub_232BA1908()
{
  result = qword_2814DFAA8;
  if (!qword_2814DFAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814DFAA8);
  }

  return result;
}

id sub_232BA1978(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  sub_232CE9D20();
  sub_232BA5CA0();

  v10[0] = 0;
  v6 = [v3 initWithPattern:v4 options:a3 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_232CE8B30();

    swift_willThrow();
  }

  return v6;
}

unint64_t sub_232BA1A50()
{
  result = qword_27DDC73F8;
  if (!qword_27DDC73F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC73F8);
  }

  return result;
}

unint64_t sub_232BA1AA4()
{
  result = qword_27DDC7400;
  if (!qword_27DDC7400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC7400);
  }

  return result;
}

unint64_t sub_232BA1AF8()
{
  result = qword_2814E13B8;
  if (!qword_2814E13B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814E13B8);
  }

  return result;
}

unint64_t sub_232BA1B4C()
{
  result = qword_2814E13C0;
  if (!qword_2814E13C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814E13C0);
  }

  return result;
}

unint64_t sub_232BA1BA0()
{
  result = qword_2814E17F8;
  if (!qword_2814E17F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814E17F8);
  }

  return result;
}

unint64_t sub_232BA1BF4()
{
  result = qword_2814E1800;
  if (!qword_2814E1800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814E1800);
  }

  return result;
}

unint64_t sub_232BA1C48()
{
  result = qword_27DDC7408;
  if (!qword_27DDC7408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC7408);
  }

  return result;
}

unint64_t sub_232BA1C9C()
{
  result = qword_27DDC7410;
  if (!qword_27DDC7410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC7410);
  }

  return result;
}

unint64_t sub_232BA1CF0()
{
  result = qword_2814E14F0;
  if (!qword_2814E14F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814E14F0);
  }

  return result;
}

unint64_t sub_232BA1D44()
{
  result = qword_2814E14F8;
  if (!qword_2814E14F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814E14F8);
  }

  return result;
}

unint64_t sub_232BA1D98()
{
  result = qword_2814E13E8;
  if (!qword_2814E13E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814E13E8);
  }

  return result;
}

unint64_t sub_232BA1DEC()
{
  result = qword_2814E13F0;
  if (!qword_2814E13F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814E13F0);
  }

  return result;
}

unint64_t sub_232BA1E40()
{
  result = qword_2814E13A0;
  if (!qword_2814E13A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814E13A0);
  }

  return result;
}

unint64_t sub_232BA1E94()
{
  result = qword_2814E13A8;
  if (!qword_2814E13A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814E13A8);
  }

  return result;
}

unint64_t sub_232BA1EE8()
{
  result = qword_2814E13C8;
  if (!qword_2814E13C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814E13C8);
  }

  return result;
}

unint64_t sub_232BA1FA4()
{
  result = qword_2814E1808;
  if (!qword_2814E1808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814E1808);
  }

  return result;
}

unint64_t sub_232BA1FF8()
{
  result = qword_27DDC7420;
  if (!qword_27DDC7420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC7420);
  }

  return result;
}

unint64_t sub_232BA20B4()
{
  result = qword_2814E13F8;
  if (!qword_2814E13F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814E13F8);
  }

  return result;
}

unint64_t sub_232BA2108()
{
  result = qword_2814E1500;
  if (!qword_2814E1500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814E1500);
  }

  return result;
}

unint64_t sub_232BA2504()
{
  result = qword_2814E13B0;
  if (!qword_2814E13B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814E13B0);
  }

  return result;
}

unint64_t sub_232BA25C0()
{
  result = qword_2814E0260;
  if (!qword_2814E0260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814E0260);
  }

  return result;
}

unint64_t sub_232BA2614()
{
  result = qword_2814DFA98;
  if (!qword_2814DFA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814DFA98);
  }

  return result;
}

unint64_t sub_232BA2668()
{
  result = qword_2814DFAC8;
  if (!qword_2814DFAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814DFAC8);
  }

  return result;
}

unint64_t sub_232BA26BC()
{
  result = qword_2814E1830;
  if (!qword_2814E1830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814E1830);
  }

  return result;
}

unint64_t sub_232BA2710()
{
  result = qword_2814DFA88;
  if (!qword_2814DFA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814DFA88);
  }

  return result;
}

unint64_t sub_232BA2764()
{
  result = qword_2814DFAB8;
  if (!qword_2814DFAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814DFAB8);
  }

  return result;
}

unint64_t sub_232BA27B8()
{
  result = qword_2814E1840;
  if (!qword_2814E1840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814E1840);
  }

  return result;
}

unint64_t sub_232BA280C()
{
  result = qword_2814E1810;
  if (!qword_2814E1810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814E1810);
  }

  return result;
}

unint64_t sub_232BA2860()
{
  result = qword_2814E13D8;
  if (!qword_2814E13D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814E13D8);
  }

  return result;
}

unint64_t sub_232BA28B4()
{
  result = qword_2814DFA78;
  if (!qword_2814DFA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814DFA78);
  }

  return result;
}

unint64_t sub_232BA2908()
{
  result = qword_2814E17E8;
  if (!qword_2814E17E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814E17E8);
  }

  return result;
}

uint64_t sub_232BA295C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_232B27EEC(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_232BA29D8()
{
  result = qword_2814E1410;
  if (!qword_2814E1410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814E1410);
  }

  return result;
}

void *sub_232BA2A94(uint64_t a1, uint64_t a2)
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

  sub_232B124A8(&qword_27DDC7488, &qword_232CF9168);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

unsigned __int8 *sub_232BA2B04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v81 = a1;
  v82 = a2;

  result = sub_232CE9FA0();
  v7 = result;
  v8 = v6;
  if ((v6 & 0x1000000000000000) != 0)
  {
    v44 = sub_232B5A008();
    sub_232BA3010(v44, v45);
    sub_232BA5EAC();

    v8 = v3;
    if ((v3 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v6 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v7 & 0x1000000000000000) != 0)
    {
      result = ((v8 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v7 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      sub_232B5A008();
      result = sub_232CEA550();
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        if (v9 != 1)
        {
          sub_232BA6C20();
          if (v26 ^ v27 | v25)
          {
            v30 = 65;
          }

          if (!(v26 ^ v27 | v25))
          {
            v31 = 58;
          }

          if (v28)
          {
            v18 = 0;
            v32 = (v28 + 1);
            do
            {
              v33 = *v32;
              if (v33 < 0x30 || v33 >= v31)
              {
                if (v33 < 0x41 || v33 >= v30)
                {
                  sub_232BA6D34();
                  if (!v23 || v33 >= v35)
                  {
                    goto LABEL_142;
                  }

                  v34 = -87;
                }

                else
                {
                  v34 = -55;
                }
              }

              else
              {
                v34 = -48;
              }

              v36 = v18 * a3;
              if ((v18 * a3) >> 64 != (v18 * a3) >> 63)
              {
                goto LABEL_141;
              }

              v18 = v36 + (v33 + v34);
              if (__OFADD__(v36, (v33 + v34)))
              {
                goto LABEL_141;
              }

              ++v32;
              --v29;
            }

            while (v29);
LABEL_52:
            v7 = v18;
            goto LABEL_142;
          }

          goto LABEL_72;
        }

LABEL_141:
        v7 = 0;
        goto LABEL_142;
      }

      goto LABEL_146;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v37 = a3 + 48;
        v38 = a3 + 55;
        v39 = a3 + 87;
        if (a3 > 10)
        {
          v37 = 58;
        }

        else
        {
          v39 = 97;
          v38 = 65;
        }

        if (result)
        {
          v40 = 0;
          do
          {
            v41 = *result;
            if (v41 < 0x30 || v41 >= v37)
            {
              if (v41 < 0x41 || v41 >= v38)
              {
                v7 = 0;
                if (v41 < 0x61 || v41 >= v39)
                {
                  goto LABEL_142;
                }

                v42 = -87;
              }

              else
              {
                v42 = -55;
              }
            }

            else
            {
              v42 = -48;
            }

            v43 = v40 * a3;
            if ((v40 * a3) >> 64 != (v40 * a3) >> 63)
            {
              goto LABEL_141;
            }

            v40 = v43 + (v41 + v42);
            if (__OFADD__(v43, (v41 + v42)))
            {
              goto LABEL_141;
            }

            ++result;
            --v9;
          }

          while (v9);
          v7 = v43 + (v41 + v42);
          goto LABEL_142;
        }

        goto LABEL_72;
      }

      goto LABEL_141;
    }

    if (v9 >= 1)
    {
      if (v9 != 1)
      {
        sub_232BA6C20();
        if (v12 ^ v13 | v11)
        {
          v16 = 65;
        }

        if (!(v12 ^ v13 | v11))
        {
          v17 = 58;
        }

        if (v14)
        {
          v18 = 0;
          v19 = (v14 + 1);
          while (1)
          {
            v20 = *v19;
            if (v20 < 0x30 || v20 >= v17)
            {
              if (v20 < 0x41 || v20 >= v16)
              {
                sub_232BA6D34();
                if (!v23 || v20 >= v22)
                {
                  goto LABEL_142;
                }

                v21 = -87;
              }

              else
              {
                v21 = -55;
              }
            }

            else
            {
              v21 = -48;
            }

            v24 = v18 * a3;
            if ((v18 * a3) >> 64 != (v18 * a3) >> 63)
            {
              goto LABEL_141;
            }

            v18 = v24 - (v20 + v21);
            if (__OFSUB__(v24, (v20 + v21)))
            {
              goto LABEL_141;
            }

            ++v19;
            if (!--v15)
            {
              goto LABEL_52;
            }
          }
        }

LABEL_72:
        v7 = 0;
LABEL_142:

        return v7;
      }

      goto LABEL_141;
    }

    __break(1u);
LABEL_145:
    __break(1u);
LABEL_146:
    __break(1u);
    goto LABEL_147;
  }

  v46 = HIBYTE(v8) & 0xF;
  v81 = v7;
  v82 = v8 & 0xFFFFFFFFFFFFFFLL;
  if (v7 != 43)
  {
    if (v7 != 45)
    {
      if (v46)
      {
        sub_232BA5EF0();
        if (v71 ^ v72 | v70)
        {
          v74 = 65;
        }

        if (!(v71 ^ v72 | v70))
        {
          v75 = 58;
        }

        v76 = &v81;
        while (1)
        {
          v77 = *v76;
          if (v77 < 0x30 || v77 >= v75)
          {
            if (v77 < 0x41 || v77 >= v74)
            {
              sub_232BA6D34();
              if (!v23 || v77 >= v79)
              {
                goto LABEL_142;
              }

              v78 = -87;
            }

            else
            {
              v78 = -55;
            }
          }

          else
          {
            v78 = -48;
          }

          v80 = v51 * a3;
          if ((v51 * a3) >> 64 != (v51 * a3) >> 63)
          {
            goto LABEL_141;
          }

          v51 = v80 + (v77 + v78);
          if (__OFADD__(v80, (v77 + v78)))
          {
            goto LABEL_141;
          }

          v76 = (v76 + 1);
          if (!--v73)
          {
            goto LABEL_140;
          }
        }
      }

      goto LABEL_141;
    }

    if (v46)
    {
      if (v46 != 1)
      {
        sub_232BA5EF0();
        if (v48 ^ v49 | v47)
        {
          v52 = 65;
        }

        if (!(v48 ^ v49 | v47))
        {
          v53 = 58;
        }

        v54 = &v81 + 1;
        while (1)
        {
          v55 = *v54;
          if (v55 < 0x30 || v55 >= v53)
          {
            if (v55 < 0x41 || v55 >= v52)
            {
              sub_232BA6D34();
              if (!v23 || v55 >= v57)
              {
                goto LABEL_142;
              }

              v56 = -87;
            }

            else
            {
              v56 = -55;
            }
          }

          else
          {
            v56 = -48;
          }

          v58 = v51 * a3;
          if ((v51 * a3) >> 64 != (v51 * a3) >> 63)
          {
            goto LABEL_141;
          }

          v51 = v58 - (v55 + v56);
          if (__OFSUB__(v58, (v55 + v56)))
          {
            goto LABEL_141;
          }

          ++v54;
          if (!--v50)
          {
            goto LABEL_140;
          }
        }
      }

      goto LABEL_141;
    }

    goto LABEL_145;
  }

  if (v46)
  {
    if (v46 != 1)
    {
      sub_232BA5EF0();
      if (v60 ^ v61 | v59)
      {
        v63 = 65;
      }

      if (!(v60 ^ v61 | v59))
      {
        v64 = 58;
      }

      v65 = &v81 + 1;
      do
      {
        v66 = *v65;
        if (v66 < 0x30 || v66 >= v64)
        {
          if (v66 < 0x41 || v66 >= v63)
          {
            sub_232BA6D34();
            if (!v23 || v66 >= v68)
            {
              goto LABEL_142;
            }

            v67 = -87;
          }

          else
          {
            v67 = -55;
          }
        }

        else
        {
          v67 = -48;
        }

        v69 = v51 * a3;
        if ((v51 * a3) >> 64 != (v51 * a3) >> 63)
        {
          goto LABEL_141;
        }

        v51 = v69 + (v66 + v67);
        if (__OFADD__(v69, (v66 + v67)))
        {
          goto LABEL_141;
        }

        ++v65;
        --v62;
      }

      while (v62);
LABEL_140:
      v7 = v51;
      goto LABEL_142;
    }

    goto LABEL_141;
  }

LABEL_147:
  __break(1u);
  return result;
}

uint64_t sub_232BA3010(uint64_t a1, uint64_t a2)
{
  v2 = sub_232BA307C();
  v6 = sub_232BA30B0(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_232BA30B0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_232CEA360();
    if (!v9 || (v10 = v9, v11 = sub_232BA2A94(v9, 0), v12 = sub_232BA3210(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_232CE9E10();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_232CE9E10();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_232CEA550();
LABEL_4:

  return sub_232CE9E10();
}

unint64_t sub_232BA3210(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_36;
  }

  if (a3 < 0)
  {
    goto LABEL_40;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_36:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    result = v12;
    if ((v12 & 0xC) == v15)
    {
      result = sub_232BD336C(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_232CE9EF0();
      v19 = result;
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_232CEA550();
        }

        v19 = *(result + v18);
      }
    }

    if ((v12 & 0xC) == v15)
    {
      result = sub_232BD336C(v12, a6, a7);
      v12 = result;
      if ((a7 & 0x1000000000000000) == 0)
      {
LABEL_27:
        v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_31;
      }
    }

    else if ((a7 & 0x1000000000000000) == 0)
    {
      goto LABEL_27;
    }

    if (v23 <= v12 >> 16)
    {
      goto LABEL_39;
    }

    result = sub_232CE9ED0();
    v12 = result;
LABEL_31:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_36;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_38;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t getEnumTagSinglePayload for ReceivedDateRelationship(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 2 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 2) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ReceivedDateRelationship(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
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
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ConfirmationStatus(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
    if (a2 + 7 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 7) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ConfirmationStatus(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
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
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for OrderStatus(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
    if (a2 + 6 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 6) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for OrderStatus(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
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
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ProductType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
    if (a2 + 4 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 4) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ProductType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
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
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ShippingStatus(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF7)
  {
    if (a2 + 9 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 9) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 10;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v5 = v6 - 10;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ShippingStatus(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
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
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ShippingEmailType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
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
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DUExtractionCategory(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for TransportationType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
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
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_232BA3D5C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 177))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_232BA3D9C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 176) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 177) = 1;
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

    *(result + 177) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_232BA3E24(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 345))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_232BA3E64(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 344) = 0;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 345) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 345) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_232BA3F18(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 312))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_232BA3F58(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 312) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 312) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_232BA4000(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 184))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_232BA4040(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 184) = 1;
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

    *(result + 184) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_232BA40C4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 280))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_232BA4104(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 280) = 1;
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

    *(result + 280) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_232BA41A4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 408))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_232BA41E4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 408) = 1;
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

    *(result + 408) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_232BA42A4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 273))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_232BA42E4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 264) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 272) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 273) = 1;
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

    *(result + 273) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_232BA4394(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 241))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_232BA43D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 240) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 241) = 1;
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

    *(result + 241) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_232BA446C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 129))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_232BA44AC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 128) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 129) = 1;
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

    *(result + 129) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_232BA4528(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 232))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_232BA4568(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0u;
    *(result + 216) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 232) = 1;
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

    *(result + 232) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_232BA45F8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 264))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_232BA4638(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 248) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 264) = 1;
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

    *(result + 264) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_232BA46D0(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 96))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_232BA4710(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_232BA477C()
{
  result = qword_27DDC7498;
  if (!qword_27DDC7498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC7498);
  }

  return result;
}

unint64_t sub_232BA47D4()
{
  result = qword_27DDC74A0;
  if (!qword_27DDC74A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC74A0);
  }

  return result;
}

unint64_t sub_232BA482C()
{
  result = qword_27DDC74A8;
  if (!qword_27DDC74A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC74A8);
  }

  return result;
}

unint64_t sub_232BA4884()
{
  result = qword_27DDC74B0;
  if (!qword_27DDC74B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC74B0);
  }

  return result;
}

unint64_t sub_232BA48DC()
{
  result = qword_27DDC74B8;
  if (!qword_27DDC74B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC74B8);
  }

  return result;
}

unint64_t sub_232BA4934()
{
  result = qword_27DDC74C0;
  if (!qword_27DDC74C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC74C0);
  }

  return result;
}

unint64_t sub_232BA498C()
{
  result = qword_27DDC74C8;
  if (!qword_27DDC74C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDC74C8);
  }

  return result;
}

uint64_t sub_232BA4BBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_232B124A8(&qword_27DDC6A80, &qword_232CF6D30);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_232BA4C2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CalendarEvent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_232BA4C90(uint64_t a1)
{
  v2 = type metadata accessor for CalendarEvent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_232BA4CEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CalendarEvent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_232BA4D50(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_232B124A8(a2, a3);
  sub_232BA5190();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_232BA4DA4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_232BA4DEC(uint64_t a1, unint64_t *a2, void *a3)
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

id sub_232BA55B4(uint64_t a1)
{

  return sub_232B1FCE4(v2, v3, v1, a1);
}

id sub_232BA571C(uint64_t a1)
{

  return sub_232B1FCE4(v2, v3, v1, a1);
}

void sub_232BA5744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  type metadata accessor for DUExtractionAttributeKey(0, a2, a3, a4);
}

void sub_232BA5764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  type metadata accessor for DUExtractionAttributeKey(0, a2, a3, a4);
}

void sub_232BA5784()
{
  v2 = *(v0 + 16) + 1;

  sub_232B36640(0, v2, 1, v0);
}

uint64_t sub_232BA57C8()
{
  *(v2 - 112) = v0;
  *(v2 - 104) = v1;
  *(v2 - 136) = 2847580;
  *(v2 - 128) = 0xE300000000000000;
  *(v2 - 152) = 32;
  *(v2 - 144) = 0xE100000000000000;
  return v2 - 136;
}

uint64_t sub_232BA5828()
{

  return sub_232CEA5C0();
}

void sub_232BA5848(unint64_t a1@<X8>)
{

  sub_232B36640(a1 > 1, v2, 1, v1);
}

uint64_t sub_232BA5890()
{

  return sub_232CEA5C0();
}

void sub_232BA5918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  type metadata accessor for DUExtractionAttributeKey(0, a2, a3, a4);
}

id sub_232BA5938(uint64_t a1)
{

  return sub_232B1FCE4(v1, v3, v2, a1);
}

id sub_232BA5A50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_232B1FCE4(v5, v6, v4, a4);
}

void sub_232BA5A70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  type metadata accessor for DUExtractionAttributeKey(0, a2, a3, a4);
}

__n128 *sub_232BA5A90(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 0x746E6F4372657375;
  result[2].n128_u64[1] = 0xEB00000000746E65;
  return result;
}

uint64_t sub_232BA5AE8()
{

  return sub_232CEA5C0();
}

uint64_t sub_232BA5B08()
{
}

void sub_232BA5BA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  type metadata accessor for DUExtractionAttributeKey(0, a2, a3, a4);
}

uint64_t sub_232BA5D0C()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

id sub_232BA5D4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_232B1FCE4(v5, v6, v4, a4);
}

void sub_232BA5D74()
{
  *(v1 - 128) = v0[85];
  *(v1 - 96) = v0[80];
  *(v1 - 136) = v0[66];
  *(v1 - 104) = v0[63];
  *(v1 - 120) = v0[59];
}

uint64_t sub_232BA5E28()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

id sub_232BA5E44(uint64_t a1, const char *a2)
{

  return [v4 a2];
}

uint64_t sub_232BA5F0C()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t sub_232BA6004(uint64_t a1, uint64_t a2)
{

  return sub_232CE9910();
}

uint64_t sub_232BA6080()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t sub_232BA6194()
{

  return sub_232CE9D20();
}

void sub_232BA626C(uint64_t a1, uint64_t a2)
{
  *(v6 - 320) = a2;
  *(v6 - 328) = v3;
  *(v6 - 336) = v2;
  *(v6 - 304) = v5;
  *(v6 - 312) = v4;
}

uint64_t sub_232BA62D4()
{

  return sub_232CE9CD0();
}

uint64_t sub_232BA6308(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  strcpy(&a1[2], "promptTemplate");
  a1[2].n128_u8[15] = -18;

  return sub_232CE9780();
}

double sub_232BA63EC()
{
  *(v0 - 112) = 25180;
  *(v0 - 104) = 0xE200000000000000;

  return result;
}

uint64_t sub_232BA64B0(uint64_t a1)
{

  return sub_232CE98C0();
}

uint64_t sub_232BA6504()
{
  sub_232B811AC(v0);

  return sub_232CE9D50();
}

uint64_t sub_232BA6530()
{
  sub_232B8119C(v0);

  return sub_232CE9D50();
}

uint64_t sub_232BA655C()
{

  return sub_232B20540();
}

uint64_t sub_232BA6574()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t sub_232BA658C()
{

  return sub_232B20540();
}

id sub_232BA65A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_232B1FCE4(a1, v5, v4, a4);
}

uint64_t sub_232BA65BC()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t sub_232BA6634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  *(v17 + 728) = *(a17 + 8);
  *(v17 + 736) = (a17 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  return v18;
}

uint64_t sub_232BA66B8()
{

  return sub_232B20540();
}

void sub_232BA66EC()
{

  JUMPOUT(0x238393870);
}

void sub_232BA676C()
{
  v4 = HIBYTE(v0) & 0xF;
  if ((v0 & 0x2000000000000000) == 0)
  {
    v4 = v1;
  }

  *(v3 - 248) = v2 | (v4 << 16);
  *(v3 - 160) = v0;
}

uint64_t sub_232BA67B0()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t sub_232BA680C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  *(v21 + 744) = *(a21 + 8);
  *(v21 + 752) = (a21 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  return v22;
}

uint64_t sub_232BA682C()
{
  *(v1 + 688) = *(v2 + 8);
  *(v1 + 696) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  return v0;
}

uint64_t sub_232BA6858()
{

  return sub_232B20540();
}

uint64_t sub_232BA6870()
{

  return MEMORY[0x282165FC8](0xD00000000000001CLL, v1 | 0x8000000000000000, v0);
}

void sub_232BA6890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  type metadata accessor for NSTextCheckingKey(0, a2, a3, a4);
}

uint64_t sub_232BA68E8(uint64_t a1)
{

  return sub_232CE98C0();
}

uint64_t sub_232BA6900()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t sub_232BA6918()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t sub_232BA6930()
{
}

id sub_232BA6980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_232B1FCE4(a1, v5, v4, a4);
}

uint64_t sub_232BA69B4(uint64_t a1)
{

  return sub_232CE98C0();
}

uint64_t sub_232BA6A08()
{
  v3 = *(v1 - 288);

  return sub_232C0A394(v0, v3);
}

uint64_t sub_232BA6A24(uint64_t a1)
{

  return sub_232CE98C0();
}

uint64_t sub_232BA6A3C(uint64_t a1)
{

  return sub_232CE98C0();
}

uint64_t sub_232BA6A54()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t sub_232BA6A6C()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

void sub_232BA6A84()
{

  JUMPOUT(0x238393870);
}

uint64_t sub_232BA6AFC()
{

  return sub_232B20540();
}

id sub_232BA6B24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_232B1FCE4(a1, v5, v4, a4);
}

uint64_t sub_232BA6B6C()
{

  return swift_allocObject();
}

void sub_232BA6B94()
{

  sub_232B80BB0();
}

uint64_t sub_232BA6BBC(uint64_t a1)
{

  return sub_232CEA3A0();
}

id sub_232BA6BE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_232B1FCE4(a1, v4, v5, a4);
}

uint64_t sub_232BA6BFC(uint64_t a1)
{

  return sub_232CE98C0();
}

uint64_t sub_232BA6C98(uint64_t result, uint64_t a2)
{
  *(v2 - 112) = result;
  *(v2 - 104) = a2;
  return result;
}

uint64_t sub_232BA6D40(uint64_t a1)
{

  return sub_232CE98C0();
}

uint64_t sub_232BA6D58(uint64_t a1)
{

  return sub_232CE98C0();
}

void sub_232BA6D70()
{
  v2 = *(v0 - 344);
}

void sub_232BA6D88()
{

  sub_232B80BB0();
}

id sub_232BA6DAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_232B1FCE4(a1, v4, v5, a4);
}

uint64_t sub_232BA6DC4()
{

  return sub_232CEA610();
}

double sub_232BA6DE0()
{
  *(v1 - 136) = 15;
  *(v1 - 112) = *(v1 - 168);
  *(v1 - 104) = v0;

  return result;
}

void sub_232BA6E0C()
{

  sub_232B80BB0();
}

uint64_t sub_232BA6E30@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 112) = a1 - 32;

  return swift_task_alloc();
}

uint64_t sub_232BA6E54(uint64_t a1)
{

  return sub_232CE9FE0();
}

id sub_232BA6E6C(id a1, SEL a2, uint64_t a3)
{

  return [a1 a2];
}

uint64_t sub_232BA6E88()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t sub_232BA6EA0(uint64_t a1)
{

  return sub_232CE98C0();
}

BOOL sub_232BA6EB8(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_232BA6ED4()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

double sub_232BA6EF8@<D0>(void *a1@<X0>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  a1[9] = v7;
  a1[10] = a2;
  a1[6] = a6;
  *(v8 + 56) = a7;

  return result;
}

uint64_t sub_232BA6F1C()
{

  return sub_232CE8E80();
}

uint64_t sub_232BA6F34(uint64_t a1)
{

  return sub_232CE98C0();
}

uint64_t sub_232BA6F4C(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_232CEA750();
}

uint64_t sub_232BA6F64()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t sub_232BA6F7C(uint64_t a1)
{

  return sub_232CE98C0();
}

uint64_t sub_232BA7294()
{

  return sub_232CE9B20();
}

void sub_232BA72B4(uint64_t a1@<X8>)
{

  sub_232B649F4(0, a1 + 1, 1);
}

uint64_t sub_232BA72D4()
{

  return sub_232CE8FF0();
}

id sub_232BA72F4(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t sub_232BA7314(__n128 a1)
{
  *(v4 - 184) = v3;
  *(v4 - 112) = v1;
  *(v4 - 104) = v2;

  return sub_232CE89B0();
}

double sub_232BA7334@<D0>(uint64_t a1@<X8>)
{
  *(v1 - 256) = a1 + 8;

  return result;
}

uint64_t sub_232BA7354()
{
}

void sub_232BA7374()
{

  sub_232B9B898();
}

uint64_t sub_232BA7394()
{
}

uint64_t sub_232BA73AC()
{

  return sub_232CE9DD0();
}

void sub_232BA73C4()
{

  JUMPOUT(0x238391C30);
}

uint64_t sub_232BA73DC()
{

  return swift_slowAlloc();
}

uint64_t sub_232BA73F4(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_232CEA3F0();
}

uint64_t sub_232BA7428()
{

  return sub_232B2053C();
}

uint64_t sub_232BA746C(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x65726F666562;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x7265746661;
    }

    else
    {
      v4 = 1701736302;
    }

    if (v3 == 1)
    {
      v5 = 0xE500000000000000;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  else
  {
    v5 = 0xE600000000000000;
    v4 = 0x65726F666562;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x7265746661;
    }

    else
    {
      v2 = 1701736302;
    }

    if (a2 == 1)
    {
      v6 = 0xE500000000000000;
    }

    else
    {
      v6 = 0xE400000000000000;
    }
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_232BAE0CC(v4, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_232BA7540(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x73746E657645;
  v3 = 0xE600000000000000;
  v4 = a1;
  v5 = 0x73746E657645;
  switch(v4)
  {
    case 1:
      v5 = 0x724473746E657645;
      v3 = 0xEB00000000746661;
      break;
    case 2:
      v3 = 0xE400000000000000;
      v5 = 1685217603;
      break;
    case 3:
      v5 = 0x6661724464726143;
      v3 = 0xE900000000000074;
      break;
    default:
      break;
  }

  v6 = 0xE600000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x724473746E657645;
      v6 = 0xEB00000000746661;
      break;
    case 2:
      v6 = 0xE400000000000000;
      v2 = 1685217603;
      break;
    case 3:
      v2 = 0x6661724464726143;
      v6 = 0xE900000000000074;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_232BAE0CC(v5, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_232BA7684(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x6E69617254;
  v3 = 0xE500000000000000;
  v4 = a1;
  v5 = 0x6E69617254;
  switch(v4)
  {
    case 1:
      v3 = 0xE300000000000000;
      v5 = 7566658;
      break;
    case 2:
      v3 = 0xE400000000000000;
      v5 = 1952542530;
      break;
    case 3:
      v3 = 0xE700000000000000;
      v5 = 0x636972656E6547;
      break;
    default:
      break;
  }

  v6 = 0xE500000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE300000000000000;
      v2 = 7566658;
      break;
    case 2:
      v6 = 0xE400000000000000;
      v2 = 1952542530;
      break;
    case 3:
      v6 = 0xE700000000000000;
      v2 = 0x636972656E6547;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_232BAE0CC(v5, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_232BA77A0(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0xE900000000000064;
  v3 = 0x656D7269666E6F43;
  v4 = a1;
  v5 = 0x656D7269666E6F43;
  v6 = 0xE900000000000064;
  switch(v4)
  {
    case 1:
      v6 = 0xE800000000000000;
      v5 = 0x6465696669646F4DLL;
      break;
    case 2:
      v5 = 0x656C6C65636E6143;
      break;
    case 3:
      v6 = 0xE800000000000000;
      v5 = 0x7265646E696D6552;
      break;
    case 4:
      v5 = 0xD000000000000013;
      v7 = "d";
      goto LABEL_8;
    case 5:
      v5 = 0xD000000000000013;
      v7 = "PendingConfirmation";
LABEL_8:
      v6 = v7 | 0x8000000000000000;
      break;
    case 6:
      v6 = 0x8000000232D01730;
      v5 = 0xD000000000000012;
      break;
    case 7:
      v6 = 0xE500000000000000;
      v5 = 0x726568744FLL;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v2 = 0xE800000000000000;
      v3 = 0x6465696669646F4DLL;
      break;
    case 2:
      v3 = 0x656C6C65636E6143;
      break;
    case 3:
      v2 = 0xE800000000000000;
      v3 = 0x7265646E696D6552;
      break;
    case 4:
      v3 = 0xD000000000000013;
      v8 = "d";
      goto LABEL_17;
    case 5:
      v3 = 0xD000000000000013;
      v8 = "PendingConfirmation";
LABEL_17:
      v2 = v8 | 0x8000000000000000;
      break;
    case 6:
      v2 = 0x8000000232D01730;
      v3 = 0xD000000000000012;
      break;
    case 7:
      v2 = 0xE500000000000000;
      v3 = 0x726568744FLL;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_232BAE194(v5, a2, v3);
  }

  return v10 & 1;
}

uint64_t sub_232BA7998(char a1, uint64_t a2)
{
  v2 = "Merchant Shipping Update";
  v3 = (a1 & 1) == 0;
  if (a1)
  {
    v4 = 0xD000000000000017;
  }

  else
  {
    v4 = 0xD000000000000018;
  }

  if (v3)
  {
    v5 = "Yet to be shipped";
  }

  else
  {
    v5 = "Merchant Shipping Update";
  }

  if (a2)
  {
    v6 = 0xD000000000000017;
  }

  else
  {
    v6 = 0xD000000000000018;
  }

  if ((a2 & 1) == 0)
  {
    v2 = "Yet to be shipped";
  }

  if (v4 == v6 && (v5 | 0x8000000000000000) == (v2 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_232BAE0CC(v4, a2, v6);
  }

  return v8 & 1;
}

uint64_t sub_232BA7A44(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = a3(a1);
  v7 = v6;
  v8 = a3(a2);
  if (v5 == v8 && v7 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_232BAE0CC(v5, v9, v8);
  }

  return v11 & 1;
}

uint64_t sub_232BA7AC8(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0xEE00726564724F20;
  v3 = 0x6C61636973796850;
  v4 = a1;
  v5 = 0x6C61636973796850;
  v6 = 0xEE00726564724F20;
  switch(v4)
  {
    case 1:
      v5 = 0x206C617469676944;
      v6 = 0xED0000726564724FLL;
      break;
    case 2:
      v5 = 0x7069726373627553;
      v6 = 0xEC0000006E6F6974;
      break;
    case 3:
      v5 = 0xD000000000000011;
      v6 = 0x8000000232D017B0;
      break;
    case 4:
      v6 = 0xE500000000000000;
      v5 = 0x726568746FLL;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = 0x206C617469676944;
      v2 = 0xED0000726564724FLL;
      break;
    case 2:
      v3 = 0x7069726373627553;
      v2 = 0xEC0000006E6F6974;
      break;
    case 3:
      v3 = 0xD000000000000011;
      v2 = 0x8000000232D017B0;
      break;
    case 4:
      v2 = 0xE500000000000000;
      v3 = 0x726568746FLL;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_232BAE194(v5, a2, v3);
  }

  return v8 & 1;
}

uint64_t sub_232BA7C64(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0xEC0000006E6F6974;
  v3 = 0x616D7269666E6F43;
  v4 = a1;
  v5 = 0x616D7269666E6F43;
  v6 = 0xEC0000006E6F6974;
  switch(v4)
  {
    case 1:
      v6 = 0xE600000000000000;
      v5 = 0x657461647055;
      break;
    case 2:
      v5 = 0x616C6C65636E6143;
      v6 = 0xEC0000006E6F6974;
      break;
    case 3:
      v6 = 0xE500000000000000;
      v5 = 0x6575737349;
      break;
    case 4:
      v6 = 0xE700000000000000;
      v5 = 0x6E776F6E6B6E55;
      break;
    case 5:
      v6 = 0xE600000000000000;
      v5 = 0x6E7275746552;
      break;
    case 6:
      v6 = 0xE600000000000000;
      v5 = 0x646E75666552;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v2 = 0xE600000000000000;
      v3 = 0x657461647055;
      break;
    case 2:
      v3 = 0x616C6C65636E6143;
      break;
    case 3:
      v2 = 0xE500000000000000;
      v3 = 0x6575737349;
      break;
    case 4:
      v2 = 0xE700000000000000;
      v3 = 0x6E776F6E6B6E55;
      break;
    case 5:
      v2 = 0xE600000000000000;
      v3 = 0x6E7275746552;
      break;
    case 6:
      v2 = 0xE600000000000000;
      v3 = 0x646E75666552;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_232BAE194(v5, a2, v3);
  }

  return v8 & 1;
}

BOOL sub_232BA7E18(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v4 = a1 != 0;
  if ((a2 & 1) == 0)
  {
    v4 = a1;
  }

  v5 = a3 != 0;
  if ((a4 & 1) == 0)
  {
    v5 = a3;
  }

  return v4 == v5;
}

BOOL sub_232BA7E44(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = sub_232CEA470();
  v5 = ~(-1 << *(a2 + 32));
  do
  {
    v6 = v4 & v5;
    v7 = (1 << (v4 & v5)) & *(a2 + 56 + (((v4 & v5) >> 3) & 0xFFFFFFFFFFFFFF8));
    v8 = v7 != 0;
    if (!v7)
    {
      break;
    }

    sub_232B1FA04(*(a2 + 48) + 40 * v6, v11);
    v9 = MEMORY[0x238392210](v11, a1);
    sub_232B1FA60(v11);
    v4 = v6 + 1;
  }

  while ((v9 & 1) == 0);
  return v8;
}

BOOL sub_232BA7F18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_232CEA820();
  sub_232CE9E40();
  v6 = sub_232CEA850();
  v7 = ~(-1 << *(a3 + 32));
  do
  {
    v8 = v6 & v7;
    v9 = (1 << (v6 & v7)) & *(a3 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8));
    v10 = v9 != 0;
    if (!v9)
    {
      break;
    }

    v11 = (*(a3 + 48) + 16 * v8);
    if (*v11 == a1 && v11[1] == a2)
    {
      break;
    }

    v13 = sub_232CEA750();
    v6 = v8 + 1;
  }

  while ((v13 & 1) == 0);
  return v10;
}

BOOL sub_232BA8004(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_232CE9D50();
  sub_232CEA820();
  sub_232CE9E40();
  v3 = sub_232CEA850();

  v4 = ~(-1 << *(a2 + 32));
  do
  {
    v5 = (1 << (v3 & v4)) & *(a2 + 56 + (((v3 & v4) >> 3) & 0xFFFFFFFFFFFFFF8));
    v6 = v5 != 0;
    if (!v5)
    {
      break;
    }

    v7 = sub_232CE9D50();
    v9 = v8;
    if (v7 == sub_232CE9D50() && v9 == v10)
    {

      return 1;
    }

    v12 = sub_232CEA750();

    v3 = (v3 & v4) + 1;
  }

  while ((v12 & 1) == 0);
  return v6;
}

void *LanguageDetectionResult.dominantLanguage.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

uint64_t LanguageDetectionResult.processedText.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t DUFoundInEventClassificationImplementation.__allocating_init()()
{
  v0 = swift_allocObject();
  DUFoundInEventClassificationImplementation.init()();
  return v0;
}

void *DUFoundInEventClassificationImplementation.init()()
{
  v0[2] = 0;
  v0[3] = 0;
  v0[4] = 0;
  v1 = OBJC_IVAR____TtC21DocumentUnderstanding42DUFoundInEventClassificationImplementation_currentlyLoadedLocale;
  v2 = sub_232CE8E10();
  sub_232B12504(v0 + v1, 1, 1, v2);
  return v0;
}

uint64_t sub_232BA8298@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for DUFoundInEventClassificationSpecification();
  result = swift_allocObject();
  a1[3] = v2;
  a1[4] = &off_281931D38;
  *a1 = result;
  return result;
}

uint64_t sub_232BA82E0()
{
  v1 = *(v0 + 24);

  return v1;
}

void sub_232BA8310()
{
  sub_232B35110();
  v131 = v1;
  v4 = v3;
  sub_232CE9A30();
  sub_232B48F0C();
  v133 = v5;
  v134 = v6;
  MEMORY[0x28223BE20](v5);
  sub_232B3516C();
  v9 = v7 - v8;
  MEMORY[0x28223BE20](v10);
  sub_232BAE120();
  MEMORY[0x28223BE20](v11);
  sub_232B20628();
  v126 = v12;
  sub_232B20600();
  MEMORY[0x28223BE20](v13);
  sub_232B20628();
  v128 = v14;
  sub_232B20600();
  MEMORY[0x28223BE20](v15);
  v127 = &v120 - v16;
  v17 = sub_232B124A8(&qword_27DDC7538, &unk_232CFA0F0);
  sub_232B13F24();
  MEMORY[0x28223BE20](v18);
  v20 = &v120 - v19;
  v21 = sub_232B124A8(&qword_27DDC7398, &unk_232CF9070);
  MEMORY[0x28223BE20](v21 - 8);
  sub_232B3516C();
  v129 = v22 - v23;
  sub_232B20600();
  MEMORY[0x28223BE20](v24);
  v26 = &v120 - v25;
  MEMORY[0x28223BE20](v27);
  v29 = &v120 - v28;
  MEMORY[0x28223BE20](v30);
  sub_232BAE0B8();
  v31 = sub_232CE8E10();
  sub_232B48F0C();
  v132 = v32;
  MEMORY[0x28223BE20](v33);
  sub_232B3516C();
  MEMORY[0x28223BE20](v34);
  v36 = &v120 - v35;
  MEMORY[0x28223BE20](v37);
  v130 = &v120 - v39;
  if (!v4)
  {
    sub_232CE9A20();
    v58 = sub_232CE9A00();
    v59 = sub_232CEA1A0();
    if (os_log_type_enabled(v58, v59))
    {
      sub_232BAE0AC();
      *swift_slowAlloc() = 0;
      sub_232BAE288(&dword_232B02000, v60, v61, "DUFoundInEventClassificationImplementation: Language from language detector is nil, skipping model loading");
      v62 = sub_232BAE07C();
      MEMORY[0x238393870](v62);
    }

    v63 = *(v134 + 8);
    v64 = v9;
    goto LABEL_17;
  }

  v125 = v38;
  v40 = v4;
  getNLAssetLocale(for:)(v40, v0);
  sub_232BAE100(v0);
  if (v72)
  {
    sub_232B13790(v0, &qword_27DDC7398, &unk_232CF9070);
    sub_232CE9A20();
    v41 = v40;
    v42 = sub_232CE9A00();
    sub_232CEA1A0();

    if (sub_232BAE2C0())
    {
      sub_232BAE0E8();
      v43 = swift_slowAlloc();
      sub_232BAE0F4();
      v44 = swift_slowAlloc();
      v136[0] = v44;
      *v43 = 136315138;
      v135 = v41;
      type metadata accessor for NLLanguage(0, v45, v46, v47);
      v48 = v41;
      v49 = sub_232CE9DC0();
      v51 = sub_232BAD2D4(v49, v50, v136);

      *(v43 + 4) = v51;
      sub_232BA6138();
      _os_log_impl(v52, v53, v54, v55, v56, 0xCu);
      sub_232B2040C(v44);
      v57 = sub_232BAE08C();
      MEMORY[0x238393870](v57);
      sub_232B4ACF0();
      MEMORY[0x238393870]();
    }

    else
    {
    }

    v63 = *(v134 + 8);
    v64 = v2;
LABEL_17:
    v63(v64, v133);
    goto LABEL_18;
  }

  v65 = v130;
  v123 = v132[4];
  v124._rawValue = v40;
  v123(v130, v0, v31);
  v66 = &unk_2814E3000;
  if (!v131[2].isa)
  {
    goto LABEL_23;
  }

  v121 = v132[2];
  v122 = v132 + 2;
  v121(v29, v65, v31);
  sub_232B12504(v29, 0, 1, v31);
  v67 = OBJC_IVAR____TtC21DocumentUnderstanding42DUFoundInEventClassificationImplementation_currentlyLoadedLocale;
  v68 = v131;
  sub_232BA63D0();
  swift_beginAccess();
  v69 = *(v17 + 48);
  v70 = sub_232BA5CAC();
  sub_232BAD840(v70, v71);
  sub_232BAD840(v68 + v67, &v20[v69]);
  sub_232BAE100(v20);
  if (v72)
  {
    sub_232B13790(v29, &qword_27DDC7398, &unk_232CF9070);
    sub_232BAE100(&v20[v69]);
    v65 = v130;
    if (v72)
    {
      sub_232B13790(v20, &qword_27DDC7398, &unk_232CF9070);
LABEL_31:
      v103 = v127;
      sub_232CE9A20();
      v121(v125, v65, v31);
      v104 = sub_232CE9A00();
      v105 = sub_232CEA1A0();
      if (os_log_type_enabled(v104, v105))
      {
        sub_232BAE0E8();
        v106 = swift_slowAlloc();
        v131 = v104;
        v107 = v106;
        sub_232BAE0F4();
        v108 = swift_slowAlloc();
        v136[0] = v108;
        *v107 = 136315138;
        v109 = sub_232CE8D60();
        v111 = v110;
        v112 = v132[1];
        v113 = sub_232BAE188();
        v112(v113);
        v114 = sub_232BAD2D4(v109, v111, v136);

        *(v107 + 4) = v114;
        v115 = v131;
        _os_log_impl(&dword_232B02000, v131, v105, "DUFoundInEventClassificationImplementation: OTA model is already loaded and locale %s matches currently loaded model, early return.", v107, 0xCu);
        sub_232B2040C(v108);
        sub_232B4ACF0();
        MEMORY[0x238393870]();
        sub_232B4ACF0();
        MEMORY[0x238393870]();

        sub_232BAE210();
        v116(v127);
        (v112)(v65, v31);
      }

      else
      {

        v117 = v132[1];
        v118 = sub_232BAE188();
        v117(v118);
        sub_232BAE210();
        v119(v103);
        (v117)(v65, v31);
      }

      goto LABEL_18;
    }

    goto LABEL_22;
  }

  sub_232BAD840(v20, v26);
  sub_232BAE100(&v20[v69]);
  if (v72)
  {
    sub_232B13790(v29, &qword_27DDC7398, &unk_232CF9070);
    (v132[1])(v26, v31);
    v65 = v130;
LABEL_22:
    sub_232B13790(v20, &qword_27DDC7538, &unk_232CFA0F0);
    v66 = &unk_2814E3000;
    goto LABEL_23;
  }

  v123(v36, &v20[v69], v31);
  sub_232BAE00C(&qword_27DDC7540, MEMORY[0x277CC9788], MEMORY[0x277CC97A0]);
  v101 = sub_232CE9CF0();
  v102 = v132[1];
  v102(v36, v31);
  sub_232B13790(v29, &qword_27DDC7398, &unk_232CF9070);
  v102(v26, v31);
  sub_232B13790(v20, &qword_27DDC7398, &unk_232CF9070);
  v65 = v130;
  v66 = &unk_2814E3000;
  if (v101)
  {
    goto LABEL_31;
  }

LABEL_23:
  getLDAsset(for:with:)(0xD00000000000001DLL, 0x8000000232D05960, v65);
  if (v73)
  {
    v74 = v73;
    v75 = v66;
    v76 = v128;
    sub_232CE9A20();
    v77 = sub_232CE9A00();
    sub_232CEA1A0();
    v78 = sub_232BAE140();
    if (os_log_type_enabled(v78, v79))
    {
      sub_232BAE0AC();
      *swift_slowAlloc() = 0;
      sub_232BAE130();
      _os_log_impl(v80, v81, v82, v83, v84, 2u);
      v85 = sub_232BAE08C();
      MEMORY[0x238393870](v85);
    }

    sub_232BAE210();
    v86(v76);
    v87 = v131;
    sub_232BA8CE8();

    v88 = v129;
    v123(v129, v65, v31);
    sub_232B12504(v88, 0, 1, v31);
    v89 = v75[461];
    swift_beginAccess();
    sub_232BAD7D0(v88, v87 + v89);
    swift_endAccess();
  }

  else
  {
    v90 = v126;
    sub_232CE9A20();
    v91 = sub_232CE9A00();
    v92 = sub_232CEA1A0();
    if (sub_232BA6EB8(v92))
    {
      sub_232BAE0AC();
      *swift_slowAlloc() = 0;
      sub_232BAE150();
      _os_log_impl(v93, v94, v95, v96, v97, 2u);
      v98 = sub_232BAE07C();
      MEMORY[0x238393870](v98);
    }

    sub_232BAE210();
    v99(v90);
    rawValue = v124._rawValue;
    requestNLAsset(for:)(v124);

    (v132[1])(v65, v31);
  }

LABEL_18:
  sub_232B20A00();
}

void sub_232BA8CE8()
{
  sub_232B35110();
  v88 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v99 = sub_232CE8B40();
  sub_232B48F0C();
  v96 = v7;
  MEMORY[0x28223BE20](v8);
  sub_232B20704();
  v95 = v10 - v9;
  v11 = sub_232B124A8(&qword_27DDC6AD8, &unk_232CF82F0);
  MEMORY[0x28223BE20](v11 - 8);
  v94 = &v87 - v12;
  v93 = sub_232CE8C00();
  sub_232B13F24();
  MEMORY[0x28223BE20](v13);
  sub_232B20704();
  v16 = v15 - v14;
  v17 = sub_232CE9970();
  sub_232B48F0C();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  sub_232B3516C();
  v23 = v21 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v87 - v25;
  sub_232CE9A30();
  sub_232B48F0C();
  v101 = v28;
  v102 = v27;
  MEMORY[0x28223BE20](v27);
  sub_232B3516C();
  v92 = v29 - v30;
  sub_232B20600();
  MEMORY[0x28223BE20](v31);
  v33 = &v87 - v32;
  MEMORY[0x28223BE20](v34);
  sub_232B20628();
  v89 = v35;
  sub_232B20600();
  MEMORY[0x28223BE20](v36);
  sub_232B20628();
  v90 = v37;
  sub_232B20600();
  MEMORY[0x28223BE20](v38);
  v40 = &v87 - v39;
  sub_232CE99A0();
  sub_232B48F0C();
  v97 = v42;
  v98 = v41;
  MEMORY[0x28223BE20](v41);
  sub_232B20704();
  v100 = v44 - v43;
  v45 = sub_232BD7050(v6, v4, 0x6C65646F6D6C6D2ELL, 0xE900000000000063, v2);
  if (v46)
  {
    v91 = v45;
    if (qword_2814DFA58 != -1)
    {
      sub_232BAE068();
      swift_once();
    }

    v47 = v102;
    v48 = sub_232B135C4(v102, qword_2814E3DC0);
    (*(v101 + 16))(v40, v48, v47);
    sub_232CE9980();
    sub_232CE9990();
    sub_232CE9950();
    v49 = sub_232CE9990();
    v50 = sub_232CEA270();
    if (sub_232CEA340())
    {
      sub_232BAE0AC();
      v51 = swift_slowAlloc();
      *v51 = 0;
      v52 = sub_232CE9960();
      _os_signpost_emit_with_name_impl(&dword_232B02000, v49, v50, v52, "DUFoundInEventClassificationImplementation:loadCompiledNLModel", "", v51, 2u);
      sub_232B4ACF0();
      MEMORY[0x238393870]();
    }

    (*(v19 + 16))(v23, v26, v17);
    sub_232CE99E0();
    sub_232BAE1EC();
    swift_allocObject();
    sub_232CE99D0();
    (*(v19 + 8))(v26, v17);
    v53 = [objc_allocWithZone(MEMORY[0x277CBFF38]) init];
    [v53 setComputeUnits_];
    sub_232BA4DEC(0, &qword_2814DF8D0, 0x277CBFF20);
    sub_232B12504(v94, 1, 1, v93);
    (*(v96 + 104))(v95, *MEMORY[0x277CC91D8], v99);
    sub_232CE8BE0();
    v54 = v53;
    v60 = sub_232C13FE8(v16, v54);
    v61 = objc_allocWithZone(MEMORY[0x277CD89D0]);
    v62 = v60;
    v63 = sub_232BD6F4C(v60);
    v64 = [v62 modelDescription];
    v65 = [v64 metadata];

    type metadata accessor for MLModelMetadataKey(0, v66, v67, v68);
    sub_232BAE00C(&qword_2814DF900, type metadata accessor for MLModelMetadataKey, &unk_232CF5CBC);
    v69 = sub_232CE9C40();

    sub_232B1E114(*MEMORY[0x277CBFE98], v69);

    if (v105[3])
    {
      v70 = swift_dynamicCast();
      v71 = v88;
      if (v70)
      {
        v73 = v103;
        v72 = v104;
        v74 = v89;
LABEL_17:
        v71[3] = v73;
        v71[4] = v72;

        v76 = v71[2];
        v71[2] = v63;
        v77 = v63;

        sub_232CE9A20();

        v78 = sub_232CE9A00();
        v79 = sub_232CEA1A0();

        if (os_log_type_enabled(v78, v79))
        {
          sub_232BAE0E8();
          v80 = swift_slowAlloc();
          sub_232BAE0F4();
          v81 = swift_slowAlloc();
          v105[0] = v81;
          *v80 = 136315138;
          if (v71[4])
          {
            v82 = v71[3];
            v83 = v71[4];
          }

          else
          {
            v83 = 0xE700000000000000;
            v82 = 0x6E776F6E6B6E75;
          }

          v84 = sub_232BAD2D4(v82, v83, v105);

          *(v80 + 4) = v84;
          _os_log_impl(&dword_232B02000, v78, v79, "DUFoundInEventClassificationImplementation: Successfully loaded model. Description %s", v80, 0xCu);
          sub_232B2040C(v81);
          v85 = sub_232BAE08C();
          MEMORY[0x238393870](v85);
          v86 = sub_232BAE07C();
          MEMORY[0x238393870](v86);

          (*(v101 + 8))(v89, v102);
        }

        else
        {

          (*(v101 + 8))(v74, v102);
        }

        v75 = v100;
        sub_232BAC8AC();

        (*(v97 + 8))(v75, v98);
        goto LABEL_14;
      }
    }

    else
    {
      sub_232B13790(v105, &qword_27DDC68C8, &qword_232CF6210);
      v71 = v88;
    }

    v74 = v89;
    v72 = 0xE300000000000000;
    v73 = 7104878;
    goto LABEL_17;
  }

  sub_232CE9A20();
  v55 = sub_232CE9A00();
  v56 = sub_232CEA1C0();
  if (os_log_type_enabled(v55, v56))
  {
    sub_232BAE0AC();
    *swift_slowAlloc() = 0;
    sub_232BAE288(&dword_232B02000, v57, v58, "DUFoundInEventClassificationImplementation: Unable to find model URL from DocumentUnderstanding bundle.");
    v59 = sub_232BAE07C();
    MEMORY[0x238393870](v59);
  }

  (*(v101 + 8))(v33, v102);
LABEL_14:
  sub_232B20A00();
}

uint64_t sub_232BA9754(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, double a5)
{
  v67 = a3;
  v69 = a1;
  v70 = a2;
  v71 = sub_232CE9970();
  sub_232B48F0C();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  sub_232B3516C();
  sub_232BAE120();
  MEMORY[0x28223BE20](v12);
  sub_232BAE0B8();
  v13 = sub_232CE9A30();
  sub_232B48F0C();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  sub_232B3516C();
  v68 = v17 - v18;
  sub_232B20600();
  MEMORY[0x28223BE20](v19);
  v21 = &v64 - v20;
  v22 = sub_232CE99A0();
  sub_232B48F0C();
  v24 = v23;
  MEMORY[0x28223BE20](v25);
  sub_232B20704();
  v28 = v27 - v26;
  if (qword_2814DFA58 != -1)
  {
    sub_232BAE068();
    swift_once();
  }

  v29 = sub_232B135C4(v13, qword_2814E3DC0);
  v65 = v15;
  v66 = v13;
  (*(v15 + 16))(v21, v29, v13);
  sub_232CE9980();
  sub_232CE9990();
  sub_232CE9950();
  v73 = v28;
  v30 = sub_232CE9990();
  v31 = sub_232CEA270();
  if (sub_232CEA340())
  {
    sub_232BAE0AC();
    v32 = a4;
    v33 = v24;
    v34 = v22;
    v35 = swift_slowAlloc();
    *v35 = 0;
    v36 = sub_232CE9960();
    _os_signpost_emit_with_name_impl(&dword_232B02000, v30, v31, v36, "DUFoundInEventClassificationImplementation:isDocumentEvent", "", v35, 2u);
    v22 = v34;
    v24 = v33;
    a4 = v32;
    sub_232B4ACF0();
    MEMORY[0x238393870]();
  }

  (*(v10 + 16))(v6, v5, v71);
  sub_232CE99E0();
  sub_232BAE1EC();
  swift_allocObject();
  sub_232CE99D0();
  v37 = sub_232BA5FEC();
  v38(v37);
  v39 = *(v72 + 16);
  if (!v39)
  {
    goto LABEL_12;
  }

  v78[0] = v69;
  v78[1] = v70;
  v76 = 10;
  v77 = 0xE100000000000000;
  v74 = 32;
  v75 = 0xE100000000000000;
  sub_232B48080();
  v40 = v39;
  sub_232BA63D0();
  sub_232CEA3B0();
  v41 = sub_232CEA2C0();

  if (!*(v41 + 16))
  {

LABEL_12:
    v58 = 2;
    v59 = v73;
    goto LABEL_17;
  }

  v42 = v68;
  sub_232CE9A20();

  v43 = sub_232CE9A00();
  v44 = sub_232CEA1E0();

  LODWORD(v72) = v44;
  if (sub_232BAE2C0())
  {
    sub_232BAE204();
    v45 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    v78[0] = v70;
    *v45 = 136315394;
    v46 = v67;
    *(v45 + 4) = sub_232BAD2D4(v67, a4, v78);
    *(v45 + 12) = 2080;
    sub_232B124A8(&qword_27DDC6910, &unk_232CFA100);
    v47 = swift_allocObject();
    v71 = v22;
    v48 = v47;
    *(v47 + 16) = xmmword_232CF6460;
    v49 = sub_232B1DFEC(v46, a4, v41);
    v50 = MEMORY[0x277D83A80];
    v48[7] = MEMORY[0x277D839F8];
    v48[8] = v50;
    v52 = 0xBFF0000000000000;
    if ((v51 & 1) == 0)
    {
      v52 = v49;
    }

    v48[4] = v52;
    v53 = sub_232CE9D80();
    v55 = v40;
    v56 = sub_232BAD2D4(v53, v54, v78);
    v22 = v71;

    *(v45 + 14) = v56;
    v40 = v55;
    _os_log_impl(&dword_232B02000, v43, v72, "DUFoundInEventClassificationImplementation: Probability for predicting %s, Value: %s", v45, 0x16u);
    swift_arrayDestroy();
    v57 = sub_232BAE07C();
    MEMORY[0x238393870](v57);
    sub_232B4ACF0();
    MEMORY[0x238393870]();

    (*(v65 + 8))(v68, v66);
  }

  else
  {

    (*(v65 + 8))(v42, v66);
    v46 = v67;
  }

  v60 = COERCE_DOUBLE(sub_232B1DFEC(v46, a4, v41));
  v62 = v61;

  v59 = v73;
  if (v62)
  {
    v58 = 2;
  }

  else
  {
    v58 = v60 > a5;
  }

LABEL_17:
  sub_232BAC8AC();

  (*(v24 + 8))(v59, v22);
  return v58;
}

uint64_t sub_232BA9D70(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_232B124A8(&qword_27DDC7398, &unk_232CF9070);
  v2[4] = sub_232B27FCC();
  v3 = sub_232CE9970();
  v2[5] = v3;
  sub_232B27FBC(v3);
  v2[6] = v4;
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v5 = sub_232CE9A30();
  v2[9] = v5;
  sub_232B27FBC(v5);
  v2[10] = v6;
  v2[11] = sub_232B27FCC();
  v7 = sub_232CE99A0();
  v2[12] = v7;
  sub_232B27FBC(v7);
  v2[13] = v8;
  v2[14] = sub_232B27FCC();
  sub_232B48304();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_232BA9EF8()
{
  sub_232BAE1F8();
  v22 = v0;
  if (qword_2814DFA58 != -1)
  {
    sub_232BAE068();
    swift_once();
  }

  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v4 = sub_232B135C4(v3, qword_2814E3DC0);
  (*(v2 + 16))(v1, v4, v3);
  sub_232CE9980();
  sub_232CE9990();
  sub_232CE9950();
  v5 = sub_232CE9990();
  v6 = sub_232CEA270();
  if (sub_232CEA340())
  {
    sub_232BAE0AC();
    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = sub_232CE9960();
    _os_signpost_emit_with_name_impl(&dword_232B02000, v5, v6, v8, "DUFoundInEventClassificationImplementation:isDocumentEvent", "", v7, 2u);
    v9 = sub_232BAE08C();
    MEMORY[0x238393870](v9);
  }

  v10 = v0[7];
  v11 = v0[8];
  v12 = v0[5];
  v13 = v0[6];
  v14 = v0[4];

  (*(v13 + 16))(v10, v11, v12);
  sub_232CE99E0();
  sub_232BAE1EC();
  swift_allocObject();
  v0[15] = sub_232CE99D0();
  (*(v13 + 8))(v11, v12);
  type metadata accessor for DUModelRunner();
  v21 = 1;
  v0[16] = DUModelRunner.__allocating_init(extractionCategory:pid:)(&v21, 0, 1);
  sub_232CE8D50();
  v15 = sub_232CE8E10();
  sub_232B12504(v14, 0, 1, v15);
  v16 = swift_task_alloc();
  v0[17] = v16;
  *v16 = v0;
  v16[1] = sub_232BAA154;
  v17 = v0[3];
  v18 = v0[4];
  v19 = v0[2];

  return sub_232BDE98C(v19, v17, v18);
}

uint64_t sub_232BAA154()
{
  sub_232BAE1F8();
  v3 = v2;
  v5 = v4;
  v6 = *v1;
  v7 = *v1;
  sub_232B26B3C();
  *v8 = v7;
  *v8 = *v1;
  v7[18] = v0;

  v9 = v6[4];
  if (!v0)
  {
    v7[19] = v3;
    v7[20] = v5;
  }

  sub_232B13790(v9, &qword_27DDC7398, &unk_232CF9070);

  sub_232B48304();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_232BAA2DC()
{
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[14];
  v4 = v0[12];
  v5 = v0[13];

  v6 = HIBYTE(v1) & 0xF;
  if ((v1 & 0x2000000000000000) == 0)
  {
    v6 = v2 & 0xFFFFFFFFFFFFLL;
  }

  v7 = v6 != 0;
  sub_232BAC8AC();

  (*(v5 + 8))(v3, v4);

  v8 = v0[1];
  v9.n128_u64[0] = 1.0;

  return v8(v7, v9);
}

uint64_t sub_232BAA400()
{
  sub_232BAE1F8();
  sub_232BAC8AC();

  v1 = sub_232BA5FEC();
  v2(v1);

  v3 = *(v0 + 8);

  return v3(0);
}

void sub_232BAA4E8()
{
  sub_232B35110();
  v1 = v0;
  v3 = v2;
  v199 = v4;
  sub_232CE9A30();
  sub_232B48F0C();
  v201 = v5;
  v202 = v6;
  MEMORY[0x28223BE20](v5);
  sub_232B3516C();
  v193 = (v7 - v8);
  sub_232B20600();
  MEMORY[0x28223BE20](v9);
  sub_232B20628();
  v195 = v10;
  sub_232B20600();
  MEMORY[0x28223BE20](v11);
  sub_232B20628();
  v198 = v12;
  sub_232B20600();
  MEMORY[0x28223BE20](v13);
  sub_232B20628();
  v203 = v14;
  sub_232B20600();
  MEMORY[0x28223BE20](v15);
  v17 = &v189 - v16;
  v18 = sub_232CE89D0();
  sub_232B48F0C();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  sub_232B20704();
  v24 = v23 - v22;
  v204 = v3;
  v205 = v1;
  v208 = 0x2B5D090A735C5BLL;
  v209 = 0xE700000000000000;
  v206 = 32;
  v207 = 0xE100000000000000;
  v25 = sub_232B48080();
  v26 = MEMORY[0x277D837D0];
  v204 = sub_232BAE160(&v208, &v206, v27, v28, v29, v30, v31, v32, MEMORY[0x277D837D0], v25, v25, v25);
  v205 = v33;
  v208 = 0x1000000000000038;
  v209 = 0x8000000232D059C0;
  v206 = 0;
  v207 = 0xE000000000000000;
  v40 = sub_232BAE160(&v208, &v206, v34, v35, v36, v37, v38, v39, v26, v25, v25, v25);
  v42 = v41;

  v204 = v40;
  v205 = v42;
  sub_232CE89B0();
  sub_232BA5CAC();
  v43 = sub_232CEA3A0();
  v45 = v44;
  (*(v20 + 8))(v24, v18);

  v46 = HIBYTE(v45) & 0xF;
  if ((v45 & 0x2000000000000000) == 0)
  {
    v46 = v43 & 0xFFFFFFFFFFFFLL;
  }

  if (!v46)
  {

    sub_232CE9A20();
    v77 = sub_232CE9A00();
    v78 = sub_232CEA1C0();
    if (sub_232BA6EB8(v78))
    {
      sub_232BAE0AC();
      *swift_slowAlloc() = 0;
      sub_232BA6138();
      _os_log_impl(v79, v80, v81, v82, v83, 2u);
      sub_232B4ACF0();
      MEMORY[0x238393870]();
    }

    (*(v202 + 8))(v17, v201);
    goto LABEL_84;
  }

  v192 = v43;
  v194 = v45;
  v47 = sub_232B57E40(500, v43, v45);
  v48 = MEMORY[0x238391B80](v47);
  v50 = v49;

  v51 = HIBYTE(v50) & 0xF;
  if ((v50 & 0x2000000000000000) == 0)
  {
    v51 = v48 & 0xFFFFFFFFFFFFLL;
  }

  v52 = 4 * v51;
  v53 = 7;
  if (((v50 >> 60) & ((v48 & 0x800000000000000) == 0)) != 0)
  {
    v53 = 11;
  }

  v54 = v53 | (v51 << 16);
  v55 = MEMORY[0x277D84F90];
  for (i = 15; i >> 14 < v52; i = v59)
  {
    v57 = sub_232CE9E80();
    if (v58)
    {
      v59 = v54;
    }

    else
    {
      v59 = v57;
    }

    if (i >> 14 > v59 >> 14)
    {
      __break(1u);
LABEL_87:
      __break(1u);
      goto LABEL_88;
    }

    sub_232BA5FEC();
    v60 = sub_232CE9FB0();
    v61 = MEMORY[0x238391B80](v60);
    v63 = v62;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_232B35ECC();
      v55 = v66;
    }

    v64 = *(v55 + 16);
    if (v64 >= *(v55 + 24) >> 1)
    {
      sub_232B35ECC();
      v55 = v67;
    }

    *(v55 + 16) = v64 + 1;
    v65 = v55 + 16 * v64;
    *(v65 + 32) = v61;
    *(v65 + 40) = v63;
  }

  v68 = v203;
  sub_232CE9A20();

  v69 = sub_232CE9A00();
  v70 = sub_232CEA1A0();
  if (sub_232BA6EB8(v70))
  {
    sub_232BAE0E8();
    v71 = swift_slowAlloc();
    *v71 = 134217984;
    *(v71 + 4) = *(v55 + 16);

    sub_232BA6138();
    _os_log_impl(v72, v73, v74, v75, v76, 0xCu);
    sub_232B4ACF0();
    MEMORY[0x238393870]();
  }

  else
  {
  }

  v84 = *(v202 + 8);
  v202 += 8;
  v197 = v84;
  v84(v68, v201);
  type metadata accessor for NLLanguage(0, v85, v86, v87);
  v89 = v88;
  v90 = sub_232BAE00C(&qword_2814DF970, type metadata accessor for NLLanguage, &unk_232CF5778);
  v191 = v89;
  v190 = v90;
  v91 = sub_232CE9C60();
  v200 = 0;
  v92 = 0;
  v93 = *(v55 + 16);
  v94 = v55 + 40;
  *&v95 = 134218242;
  v189 = v95;
  v196 = v55 + 40;
LABEL_26:
  v96 = v94 + 16 * v92;
  while (v93 != v92)
  {
    if (v92 >= *(v55 + 16))
    {
      goto LABEL_87;
    }

    v97 = objc_opt_self();

    sub_232BA5FEC();
    v98 = sub_232CE9D20();
    v99 = [v97 dominantLanguageForString_];

    if (v99)
    {
      sub_232B0D210(v200, 0);
      swift_isUniquelyReferenced_nonNull_native();
      v204 = v91;
      v100 = sub_232B20540();
      v101 = *(v91 + 16);
      LODWORD(v203) = v102;
      if (__OFADD__(v101, (v102 & 1) == 0))
      {
        goto LABEL_89;
      }

      v103 = v100;
      sub_232B124A8(&qword_27DDC7548, &qword_232CFA110);
      if (sub_232CEA5C0())
      {
        v91 = v204;
        v104 = sub_232B20540();
        v106 = v203;
        v107 = v198;
        if ((v203 & 1) != (v105 & 1))
        {
          goto LABEL_92;
        }

        v103 = v104;

        if (v106)
        {
          goto LABEL_39;
        }

LABEL_37:
        *(v91 + 8 * (v103 >> 6) + 64) |= 1 << v103;
        *(*(v91 + 48) + 8 * v103) = v99;
        *(*(v91 + 56) + 8 * v103) = 0;
        v108 = *(v91 + 16);
        v109 = __OFADD__(v108, 1);
        v110 = v108 + 1;
        if (v109)
        {
          goto LABEL_91;
        }

        *(v91 + 16) = v110;
        v111 = v99;
      }

      else
      {

        v91 = v204;
        v107 = v198;
        if ((v203 & 1) == 0)
        {
          goto LABEL_37;
        }
      }

LABEL_39:
      v112 = *(v91 + 56);
      v113 = *(v112 + 8 * v103);
      v109 = __OFADD__(v113, 1);
      v114 = v113 + 1;
      if (v109)
      {
        goto LABEL_90;
      }

      ++v92;
      *(v112 + 8 * v103) = v114;
      sub_232CE9A20();
      v115 = v99;
      v116 = sub_232CE9A00();
      v117 = sub_232CEA1A0();

      if (os_log_type_enabled(v116, v117))
      {
        sub_232BAE204();
        v118 = swift_slowAlloc();
        v203 = v116;
        v119 = v118;
        sub_232BAE0F4();
        v120 = swift_slowAlloc();
        v204 = v120;
        *v119 = v189;
        *(v119 + 4) = v92;
        *(v119 + 12) = 2080;
        v121 = sub_232CE9D50();
        v123 = sub_232BAD2D4(v121, v122, &v204);
        v200 = v115;
        v124 = v123;

        *(v119 + 14) = v124;
        v125 = v117;
        v126 = v203;
        _os_log_impl(&dword_232B02000, v203, v125, "DUFoundInEventClassificationImplementation: Chunk %ld language: %s", v119, 0x16u);
        sub_232B2040C(v120);
        sub_232B4ACF0();
        MEMORY[0x238393870]();
        v127 = sub_232BAE08C();
        MEMORY[0x238393870](v127);

        v128 = v198;
      }

      else
      {

        v128 = v107;
      }

      v197(v128, v201);
      v200 = sub_232B0D260;
      v94 = v196;
      goto LABEL_26;
    }

    v96 += 16;
    ++v92;
  }

  v129 = v91 + 64;
  v130 = 1 << *(v91 + 32);
  v131 = -1;
  if (v130 < 64)
  {
    v131 = ~(-1 << v130);
  }

  v132 = v131 & *(v91 + 64);
  v203 = v91;
  if (!v132)
  {
    v137 = 0;
    v136 = (v130 + 63) >> 6;
    while (1)
    {
      v133 = v132 + 1;
      if (v132 + 1 >= v136)
      {
        break;
      }

      v138 = *(v91 + 8 * v132 + 72);
      v137 += 64;
      ++v132;
      if (v138)
      {
        v135 = (v138 - 1) & v138;
        v134 = __clz(__rbit64(v138)) + v137;
        goto LABEL_52;
      }
    }

    v180 = v193;
    sub_232CE9A20();
    v181 = sub_232CE9A00();
    v182 = sub_232CEA1C0();
    if (sub_232BA6EB8(v182))
    {
      sub_232BAE0AC();
      *swift_slowAlloc() = 0;
      sub_232BA6138();
      _os_log_impl(v183, v184, v185, v186, v187, 2u);
      sub_232B4ACF0();
      MEMORY[0x238393870]();
    }

    v197(v180, v201);
    sub_232B0D210(v200, 0);
LABEL_84:
    v188 = v199;
    v199[1] = 0u;
    v188[2] = 0u;
    *v188 = 0u;
LABEL_85:
    sub_232B20A00();
    return;
  }

  v133 = 0;
  v134 = __clz(__rbit64(v132));
  v135 = (v132 - 1) & v132;
  v136 = (v130 + 63) >> 6;
LABEL_52:
  v139 = *(v203[6].isa + v134);
  v140 = *(v203[7].isa + v134);
  v198 = *MEMORY[0x277CD8708];
  v141 = v139;

LABEL_53:
  v142 = v141;
  v196 = v140;
  while (v135)
  {
LABEL_59:
    v144 = __clz(__rbit64(v135));
    v135 &= v135 - 1;
    v145 = (v133 << 9) | (8 * v144);
    v141 = *(v203[6].isa + v145);
    v146 = *(v203[7].isa + v145);
    if (v140 == v146)
    {
      v147 = sub_232CE9D50();
      v149 = v148;
      v150 = sub_232CE9D50();
      if (v147 == v150 && v149 == v151)
      {

        v140 = v196;
      }

      else
      {
        v193 = v142;
        v153 = sub_232BAE248(v150, v151, v150);
        v154 = v141;

        if ((v153 & 1) == 0)
        {
          v156 = sub_232CE9D50();
          v158 = v157;
          v159 = sub_232CE9D50();
          if (v156 == v159 && v158 == v160)
          {

            v142 = v193;
            v140 = v196;
            goto LABEL_76;
          }

          v162 = sub_232BAE248(v159, v160, v159);

          v142 = v193;
          v140 = v196;
          if (v162)
          {
            goto LABEL_76;
          }

          goto LABEL_67;
        }

        v142 = v193;
        v140 = v196;
      }
    }

    else
    {
      v155 = v141;
      if (v140 < v146)
      {
        v140 = v146;
LABEL_76:

        goto LABEL_53;
      }

LABEL_67:
    }
  }

  while (1)
  {
    v143 = v133 + 1;
    if (__OFADD__(v133, 1))
    {
      break;
    }

    if (v143 >= v136)
    {
      v163 = v203;

      v164 = [objc_opt_self() supportedLanguages];
      v165 = sub_232CEA0D0();

      v208 = v142;
      v166 = v142;
      sub_232CEA490();
      v167 = sub_232BA7E44(&v204, v165);

      sub_232B1FA60(&v204);
      v168 = v195;
      sub_232CE9A20();
      v169 = v166;
      v170 = sub_232CE9A00();
      v171 = sub_232CEA1A0();

      if (os_log_type_enabled(v170, v171))
      {
        v172 = swift_slowAlloc();
        sub_232BAE0F4();
        v173 = swift_slowAlloc();
        v204 = v173;
        *v172 = 136315394;
        v174 = sub_232CE9D50();
        v176 = sub_232BAD2D4(v174, v175, &v204);

        *(v172 + 4) = v176;
        *(v172 + 12) = 1024;
        *(v172 + 14) = v167;
        _os_log_impl(&dword_232B02000, v170, v171, "DUFoundInEventClassificationImplementation: Dominant language from chunks: %s, supported: %{BOOL}d", v172, 0x12u);
        sub_232B2040C(v173);
        v163 = v203;
        sub_232B4ACF0();
        MEMORY[0x238393870]();
        sub_232B4ACF0();
        MEMORY[0x238393870]();
      }

      v197(v168, v201);
      sub_232B0D210(v200, 0);
      v177 = v199;
      v178 = v192;
      *v199 = v167;
      v177[1] = v142;
      v179 = v194;
      v177[2] = v178;
      v177[3] = v179;
      v177[4] = v163;
      v177[5] = v55;
      goto LABEL_85;
    }

    v135 = *(v129 + 8 * v143);
    ++v133;
    if (v135)
    {
      v133 = v143;
      goto LABEL_59;
    }
  }

LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  sub_232CEA7A0();
  __break(1u);
}

void sub_232BAB1FC()
{
  sub_232B35110();
  v0 = sub_232CE9A30();
  sub_232B48F0C();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  sub_232B20704();
  v6 = v5 - v4;
  sub_232BAE188();
  sub_232BAA4E8();
  if (v19)
  {
    if (v18)
    {
      v7 = v18;
      v8 = sub_232BA5CAC();
      sub_232BAE268(v8, v9);
      goto LABEL_8;
    }

    sub_232BAE268(v16, 0);
  }

  sub_232CE9A20();

  v10 = sub_232CE9A00();
  v11 = sub_232CEA1A0();

  if (os_log_type_enabled(v10, v11))
  {
    sub_232BAE0E8();
    v12 = swift_slowAlloc();
    sub_232BAE0F4();
    v17 = swift_slowAlloc();
    *v12 = 136380675;
    v13 = sub_232BAE188();
    *(v12 + 4) = sub_232BAD2D4(v13, v14, v15);
    _os_log_impl(&dword_232B02000, v10, v11, "DUFoundInEventClassificationImplementation: Cannot detect language for text: %{private}s", v12, 0xCu);
    sub_232B2040C(v17);
    sub_232B4ACF0();
    MEMORY[0x238393870]();
    sub_232B4ACF0();
    MEMORY[0x238393870]();
  }

  (*(v2 + 8))(v6, v0);
LABEL_8:
  sub_232B20A00();
}

uint64_t sub_232BAB3D4(uint64_t a1)
{
  sub_232BA63D0();
  swift_beginAccess();
  sub_232BA63D0();
  swift_beginAccess();

  sub_232BAB484();
  v2 = v1;

  return v2;
}

void sub_232BAB484()
{
  sub_232B35110();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_232CE9A30();
  sub_232B48F0C();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  sub_232B3516C();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v26 - v14;
  if (v5 && v1)
  {
    type metadata accessor for DUInhumans();
    swift_initStackObject();
    if (*(v5 + 16))
    {
      [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
    }

    else
    {
      sub_232CE9A20();
      v16 = sub_232CE9A00();
      v17 = sub_232CEA1E0();
      if (os_log_type_enabled(v16, v17))
      {
        sub_232BAE0AC();
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_232B02000, v16, v17, "DUFoundInEventClassificationImplementation: empty emailHeadersDictionary", v18, 2u);
        sub_232B4ACF0();
        MEMORY[0x238393870]();
      }

      (*(v8 + 8))(v15, v6);
    }

    v19 = HIBYTE(v1) & 0xF;
    if ((v1 & 0x2000000000000000) == 0)
    {
      v19 = v3 & 0xFFFFFFFFFFFFLL;
    }

    if (v19)
    {
      v20 = objc_opt_self();
      v21 = sub_232CE9D20();
      LOBYTE(v20) = [v20 isInhumanEmailAddress_];

      if (v20)
      {
        LOBYTE(v22) = 0;
      }

      else
      {
        v22 = sub_232BD7D58(v3, v1) ^ 1;
      }

      [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
    }

    else
    {
      sub_232CE9A20();
      v23 = sub_232CE9A00();
      v24 = sub_232CEA1E0();
      if (os_log_type_enabled(v23, v24))
      {
        sub_232BAE0AC();
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_232B02000, v23, v24, "DUFoundInEventClassificationImplementation: empty senderEmail", v25, 2u);
        sub_232B4ACF0();
        MEMORY[0x238393870]();
      }

      (*(v8 + 8))(v12, v6);
    }
  }

  sub_232B20A00();
}

void *sub_232BAB768(void *a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_232B124A8(&qword_27DDC7550, &qword_232CFA118);
  sub_232B48F0C();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  sub_232B3516C();
  v12 = (v10 - v11);
  MEMORY[0x28223BE20](v13);
  v15 = v23 - v14;
  if (a1)
  {
    if (a1[2] && (v16 = sub_232B1F160(0x7463656A627573, 0xE700000000000000), (v17 & 1) != 0))
    {
      v18 = (a1[7] + 16 * v16);
      a2 = *v18;
      a3 = v18[1];
    }

    else
    {
      if (!a3)
      {
        return 0;
      }

      swift_bridgeObjectRetain_n();
    }

    v19 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v19 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v19)
    {
      sub_232B124A8(&qword_27DDC7558, &qword_232CFA120);
      sub_232CE9220();
      sub_232CE9230();
      v20 = *(v8 + 8);
      v20(v12, v6);
      v23[0] = a2;
      v23[1] = a3;
      sub_232BAD8B0();
      sub_232BAD904();
      v21 = sub_232CE9CC0();

      a1 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
      v20(v15, v6);
      return a1;
    }

    return 0;
  }

  return a1;
}

char *sub_232BAB9A0()
{
  v1 = v0;
  v2 = sub_232B5821C();
  if (v3)
  {
    v4 = v2;
    v5 = v3;
    v6 = sub_232B58760();
    if (v6)
    {
      v7 = OBJC_IVAR____TtC21DocumentUnderstanding18DUDocumentHTMLData_documentEmailData;
      sub_232BA63D0();
      swift_beginAccess();
      v8 = *&v6[v7];
      v9 = v8;

      if (v8)
      {
        v10 = &v9[OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_subject];
        sub_232BA63D0();
        swift_beginAccess();
        v6 = *v10;
        v8 = *(v10 + 1);
        sub_232BA63D0();
        swift_beginAccess();
        sub_232BA63D0();
        swift_beginAccess();

LABEL_9:
        v1 = sub_232BABB6C(v4, v5, v6, v8);

        return v1;
      }

      v6 = 0;
    }

    else
    {
      v8 = 0;
    }

    v9 = 0;
    goto LABEL_9;
  }

  sub_232B4A95C();
  sub_232B4ACD4();
  swift_allocError();
  sub_232BAE228(v11, 74);
  return v1;
}

char *sub_232BABB6C(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v132 = a4;
  v127 = a3;
  v131 = a2;
  v130 = a1;
  sub_232CE89D0();
  sub_232B48F0C();
  v133 = v7;
  v134 = v6;
  MEMORY[0x28223BE20](v6);
  sub_232B20704();
  v8 = sub_232CE9970();
  sub_232B48F0C();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  sub_232B3516C();
  sub_232BAE120();
  MEMORY[0x28223BE20](v12);
  v14 = v126 - v13;
  v15 = sub_232CE9A30();
  sub_232B48F0C();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  sub_232B3516C();
  v126[1] = v19 - v20;
  sub_232B20600();
  MEMORY[0x28223BE20](v21);
  sub_232B20628();
  v126[2] = v22;
  sub_232B20600();
  MEMORY[0x28223BE20](v23);
  sub_232B20628();
  v126[3] = v24;
  sub_232B20600();
  MEMORY[0x28223BE20](v25);
  sub_232B20628();
  v126[4] = v26;
  sub_232B20600();
  MEMORY[0x28223BE20](v27);
  sub_232BAE0B8();
  sub_232CE99A0();
  sub_232B48F0C();
  v137 = v29;
  v138 = v28;
  MEMORY[0x28223BE20](v28);
  sub_232B20704();
  v32 = v31 - v30;
  if (qword_2814DFA58 != -1)
  {
    sub_232BAE068();
    swift_once();
  }

  v33 = sub_232B135C4(v15, qword_2814E3DC0);
  v128 = v17;
  v34 = *(v17 + 16);
  v129 = v15;
  v34(v4, v33, v15);
  sub_232CE9980();
  sub_232CE9990();
  sub_232CE9950();
  v136 = v32;
  v35 = sub_232CE9990();
  v36 = sub_232CEA270();
  if (sub_232CEA340())
  {
    sub_232BAE0AC();
    v37 = swift_slowAlloc();
    *v37 = 0;
    v38 = sub_232CE9960();
    _os_signpost_emit_with_name_impl(&dword_232B02000, v35, v36, v38, "DUFoundInEventClassificationImplementation:isCandidateForEventExtraction", "", v37, 2u);
    sub_232B4ACF0();
    MEMORY[0x238393870]();
  }

  (*(v10 + 16))(v5, v14, v8);
  sub_232CE99E0();
  sub_232BAE1EC();
  swift_allocObject();
  v135 = sub_232CE99D0();
  (*(v10 + 8))(v14, v8);
  v39 = static DULLMInput.cleanText(_:)(v130, v131);
  v41 = v40;
  if (v132)
  {
    v143 = v127;
    v144 = v132;

    MEMORY[0x238391C30](32, 0xE100000000000000);

    MEMORY[0x238391C30](v39, v41);

    v42 = v144;
    v131 = v143;
  }

  else
  {

    v131 = v39;
    v42 = v41;
  }

  v143 = v39;
  v144 = v41;
  sub_232CE89B0();
  sub_232B48080();
  v132 = sub_232CEA3A0();
  v44 = v43;
  v45 = *(v133 + 8);
  v46 = sub_232BA5CAC();
  v45(v46);

  v143 = v131;
  v144 = v42;
  sub_232CE89B0();
  v133 = sub_232CEA3A0();
  v48 = v47;
  v49 = sub_232BA5CAC();
  v45(v49);

  v50 = [objc_allocWithZone(type metadata accessor for DUFoundInEventClassificationResult()) init];
  sub_232BA4DEC(0, &qword_2814DF8C0, 0x277CCABB0);
  v51 = sub_232BAE1D4();
  v52 = OBJC_IVAR____TtC21DocumentUnderstanding34DUFoundInEventClassificationResult_isEventCandidate;
  sub_232B13F5C(v50 + OBJC_IVAR____TtC21DocumentUnderstanding34DUFoundInEventClassificationResult_isEventCandidate, &v143);
  v53 = *(v50 + v52);
  *(v50 + v52) = v51;

  type metadata accessor for DUIDClassificationImplementation();
  if (!static DUIDClassificationImplementation.textLengthGate(for:minLength:maxLength:)(v132, v44, 40, 0x7FFFFFFFFFFFFFFFLL))
  {
    v78 = v54;

    sub_232CE9A20();
    v79 = sub_232CE9A00();
    sub_232CEA1E0();
    v80 = sub_232BAE140();
    if (os_log_type_enabled(v80, v81))
    {
      sub_232BAE204();
      v82 = swift_slowAlloc();
      v48 = v52;
      *v82 = 134218240;
      *(v82 + 4) = v78;
      *(v82 + 12) = 2048;
      *(v82 + 14) = 40;
      sub_232BAE130();
      _os_log_impl(v83, v84, v85, v86, v87, 0x16u);
      sub_232B4ACF0();
      MEMORY[0x238393870]();
    }

    sub_232BAE09C();
    sub_232BAE21C();
    v88();
    sub_232BAE1D4();
    v89 = v50 + OBJC_IVAR____TtC21DocumentUnderstanding34DUFoundInEventClassificationResult_textLengthPass;
    v90 = v142;
    goto LABEL_20;
  }

  sub_232CEA2F0();
  sub_232B13F5C(v50 + OBJC_IVAR____TtC21DocumentUnderstanding34DUFoundInEventClassificationResult_textLengthPass, v142);
  sub_232BAE2A8();
  v55 = v133;
  static DUIDClassificationImplementation.containsDataDetector(for:)();
  v57 = v56;

  if ((v57 & 1) == 0)
  {

    sub_232CE9A20();
    v91 = sub_232CE9A00();
    sub_232CEA1E0();
    v92 = sub_232BAE140();
    if (os_log_type_enabled(v92, v93))
    {
      sub_232BAE0AC();
      v48 = v52;
      *swift_slowAlloc() = 0;
      sub_232BAE130();
      _os_log_impl(v94, v95, v96, v97, v98, 2u);
      sub_232B4ACF0();
      MEMORY[0x238393870]();
    }

    sub_232BAE09C();
    sub_232BAE21C();
    v99();
    sub_232BAE1D4();
    v89 = v50 + OBJC_IVAR____TtC21DocumentUnderstanding34DUFoundInEventClassificationResult_containsDataDetectors;
    v90 = v141;
LABEL_20:
    sub_232B13F5C(v89, v90);
    sub_232BAE2A8();
    v100 = sub_232BAE1D4();
    goto LABEL_21;
  }

  v58 = v55;
  sub_232CEA2F0();
  sub_232B13F5C(v50 + OBJC_IVAR____TtC21DocumentUnderstanding34DUFoundInEventClassificationResult_containsDataDetectors, v141);
  sub_232BAE2A8();
  sub_232BAB1FC();
  v60 = v59;
  v62 = v61;

  if (!v62)
  {

    sub_232B4A95C();
    sub_232B4ACD4();
    swift_allocError();
    sub_232BAE228(v103, 78);
    v104 = v50;
LABEL_32:

    sub_232BAE1B0();

    (*(v137 + 8))(v104, v138);
    return v50;
  }

  v134 = v52;
  if (v60)
  {
    v132 = v48;
    v63 = sub_232CEA2F0();
    v64 = OBJC_IVAR____TtC21DocumentUnderstanding34DUFoundInEventClassificationResult_isSupportedLocale;
    sub_232B13F5C(v50 + OBJC_IVAR____TtC21DocumentUnderstanding34DUFoundInEventClassificationResult_isSupportedLocale, v140);
    v65 = *(v50 + v64);
    *(v50 + v64) = v63;

    sub_232CE9A20();
    v66 = v62;
    v67 = sub_232CE9A00();
    v68 = sub_232CEA1E0();

    if (os_log_type_enabled(v67, v68))
    {
      sub_232BAE0E8();
      v69 = swift_slowAlloc();
      sub_232BAE0F4();
      v131 = swift_slowAlloc();
      v139[0] = v131;
      *v69 = 136315138;
      v145 = v66;
      type metadata accessor for NLLanguage(0, v70, v71, v72);
      v73 = v66;
      v74 = sub_232CE9DC0();
      v76 = sub_232BAD2D4(v74, v75, v139);

      *(v69 + 4) = v76;
      _os_log_impl(&dword_232B02000, v67, v68, "DUFoundInEventClassificationImplementation: Loading classifier model from OTA for %s", v69, 0xCu);
      sub_232B2040C(v131);
      v77 = sub_232BAE08C();
      MEMORY[0x238393870](v77);
      sub_232B4ACF0();
      MEMORY[0x238393870]();
    }

    sub_232BAE09C();
    sub_232BAE21C();
    v118();
    v52 = v134;
    v104 = v66;
    v119 = v126[0];
    sub_232BA8310();

    if (!*(v119 + 16))
    {

      sub_232B4A95C();
      sub_232B4ACD4();
      swift_allocError();
      *v121 = 0;
      *(v121 + 8) = 0;
      v122 = 2;
      goto LABEL_31;
    }

    v120 = sub_232BA9754(v58, v132, 0x746E657665, 0xE500000000000000, 0.3);

    if (v120 == 2)
    {
      sub_232B4A95C();
      sub_232B4ACD4();
      swift_allocError();
      *v121 = 0xD000000000000058;
      *(v121 + 8) = 0x8000000232D05AC0;
      v122 = 1;
LABEL_31:
      *(v121 + 16) = v122;
      swift_willThrow();

      goto LABEL_32;
    }

    v100 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];

    v48 = OBJC_IVAR____TtC21DocumentUnderstanding34DUFoundInEventClassificationResult_isClassifiedAsEvent;
    sub_232B13F5C(v50 + OBJC_IVAR____TtC21DocumentUnderstanding34DUFoundInEventClassificationResult_isClassifiedAsEvent, v139);
    v124 = *&v48[v50];
    *&v48[v50] = v100;
    v125 = v100;
  }

  else
  {

    sub_232CE9A20();
    v48 = v62;
    v105 = sub_232CE9A00();
    v106 = sub_232CEA1E0();

    if (os_log_type_enabled(v105, v106))
    {
      sub_232BAE204();
      v107 = swift_slowAlloc();
      LODWORD(v132) = v106;
      v108 = v107;
      v133 = swift_slowAlloc();
      v140[0] = v133;
      *v108 = 136315394;
      v109 = sub_232CE9D50();
      v111 = sub_232BAD2D4(v109, v110, v140);

      *(v108 + 4) = v111;
      *(v108 + 12) = 2080;
      v112 = [objc_opt_self() supportedLanguages];
      sub_232CEA0D0();

      v113 = sub_232CEA0E0();
      v115 = v114;

      v116 = sub_232BAD2D4(v113, v115, v140);

      *(v108 + 14) = v116;
      _os_log_impl(&dword_232B02000, v105, v132, "DUFoundInEventClassificationImplementation: Dominant Language is %s, not supported in %s", v108, 0x16u);
      swift_arrayDestroy();
      v117 = sub_232BAE07C();
      MEMORY[0x238393870](v117);
      sub_232B4ACF0();
      MEMORY[0x238393870]();
    }

    sub_232BAE09C();
    sub_232BAE21C();
    v123();
    sub_232BAE1D4();
    sub_232B13F5C(v50 + OBJC_IVAR____TtC21DocumentUnderstanding34DUFoundInEventClassificationResult_isSupportedLocale, v140);
    sub_232BAE2A8();
    v100 = sub_232BAE1D4();

    v52 = v134;
  }

LABEL_21:
  v101 = *(v50 + v52);
  *(v50 + v52) = v100;

  sub_232BAE1B0();

  (*(v137 + 8))(v48, v138);
  return v50;
}

void sub_232BAC8AC()
{
  sub_232B35110();
  v1 = v0;
  v19 = v2;
  v3 = sub_232CE99B0();
  sub_232B48F0C();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  sub_232B20704();
  v9 = v8 - v7;
  sub_232CE9970();
  sub_232B48F0C();
  MEMORY[0x28223BE20](v10);
  sub_232B20704();
  v11 = sub_232CE9990();
  sub_232CE99C0();
  v18 = sub_232CEA260();
  if ((sub_232CEA340() & 1) == 0)
  {
LABEL_13:

    v16 = sub_232BAE188();
    v17(v16);
    sub_232B20A00();
    return;
  }

  if ((v1 & 1) == 0)
  {
    v12 = v19;
    if (v19)
    {
LABEL_9:

      sub_232CE99F0();

      if ((*(v5 + 88))(v9, v3) == *MEMORY[0x277D85B00])
      {
        v13 = "[Error] Interval already ended";
      }

      else
      {
        (*(v5 + 8))(v9, v3);
        v13 = "";
      }

      sub_232BAE0AC();
      v14 = swift_slowAlloc();
      *v14 = 0;
      v15 = sub_232CE9960();
      _os_signpost_emit_with_name_impl(&dword_232B02000, v11, v18, v15, v12, v13, v14, 2u);
      sub_232B4ACF0();
      MEMORY[0x238393870]();
      goto LABEL_13;
    }

    __break(1u);
  }

  if (v19 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v19 & 0xFFFFF800) != 0xD800)
  {
    if (v19 >> 16 <= 0x10)
    {
      v12 = &v20;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
}

uint64_t sub_232BACB04(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_232CE9A30();
  v2[4] = v3;
  sub_232B27FBC(v3);
  v2[5] = v4;
  v2[6] = sub_232B27FCC();
  sub_232B48304();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_232BACBB0()
{
  sub_232BAE1F8();
  v1 = *(v0[2] + 24);
  if (v1)
  {
    v2 = v1;
    v3 = 0;
    v5 = sub_232BAB9A0();

    v6 = v5;
    v7 = v0[3];
    v8 = *(v7 + 16);
    *(v7 + 16) = 0;
  }

  else
  {
    sub_232B4A95C();
    sub_232B4ACD4();
    v6 = swift_allocError();
    *v4 = 0xD000000000000041;
    *(v4 + 8) = 0x8000000232D05BE0;
    *(v4 + 16) = 0;
    v3 = 1;
  }

  v9 = v0[1];

  return v9(v6, v3);
}

uint64_t DUFoundInEventClassificationImplementation.deinit()
{

  sub_232B13790(v0 + OBJC_IVAR____TtC21DocumentUnderstanding42DUFoundInEventClassificationImplementation_currentlyLoadedLocale, &qword_27DDC7398, &unk_232CF9070);
  return v0;
}

uint64_t DUFoundInEventClassificationImplementation.__deallocating_deinit()
{
  DUFoundInEventClassificationImplementation.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_232BACE6C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_232BACF08;

  return sub_232BACB04(a2);
}

uint64_t sub_232BACF08(uint64_t a1, char a2)
{
  v5 = *(*v2 + 16);
  v6 = *v2;
  sub_232B26B3C();
  *v7 = v6;

  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  v8 = *(v6 + 8);

  return v8();
}

uint64_t sub_232BAD114(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

uint64_t sub_232BAD248(uint64_t result)
{
  if (result + 1 > *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    return sub_232CEA000();
  }

  return result;
}

uint64_t sub_232BAD28C(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

uint64_t sub_232BAD2D4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  sub_232B48304();
  v9 = sub_232BAD394(v6, v7, v8, 1, a1, a2);
  v10 = v14[0];
  if (v9)
  {
    v11 = v9;

    ObjectType = swift_getObjectType();
    v14[0] = v11;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v14[0] = a1;
    v14[1] = a2;
  }

  v12 = *a3;
  if (*a3)
  {
    sub_232B204B4(v14, *a3);
    *a3 = v12 + 32;
  }

  sub_232B2040C(v14);
  return v10;
}

unint64_t sub_232BAD394(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_232BAD494(a5, a6);
    *a1 = v9;
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
    result = sub_232CEA550();
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

void *sub_232BAD494(uint64_t a1, unint64_t a2)
{
  v3 = sub_232BAD4E0(a1, a2);
  sub_232BAD5F8(&unk_28480CC60);
  return v3;
}

void *sub_232BAD4E0(uint64_t a1, unint64_t a2)
{
  v4 = (HIBYTE(a2) & 0xF);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_232CE9EC0())
  {
    result = sub_232BA2A94(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_232CEA4D0();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = result + 4;
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v4 = (a1 & 0xFFFFFFFFFFFFLL);
        }

        else
        {
          result = sub_232CEA550();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = v7 + 4;
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_232BAD5F8(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_232BAD6DC(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_232BAD6DC(char *result, int64_t a2, char a3, char *a4)
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
    sub_232B124A8(&qword_27DDC7488, &qword_232CF9168);
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
    if (v10 != a4 || &v13[v8] <= v12)
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

uint64_t sub_232BAD7D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_232B124A8(&qword_27DDC7398, &unk_232CF9070);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_232BAD840(uint64_t a1, uint64_t a2)
{
  v4 = sub_232B124A8(&qword_27DDC7398, &unk_232CF9070);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_232BAD8B0()
{
  result = qword_2814DFA38;
  if (!qword_2814DFA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814DFA38);
  }

  return result;
}

unint64_t sub_232BAD904()
{
  result = qword_2814E25A8;
  if (!qword_2814E25A8)
  {
    sub_232B27EEC(&qword_27DDC7550, &qword_232CFA118);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814E25A8);
  }

  return result;
}

__n128 sub_232BAD974(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_232BAD988(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_232BAD9C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata accessor for DUFoundInEventClassificationImplementation(uint64_t a1)
{
  result = qword_2814E0050;
  if (!qword_2814E0050)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_232BADA78(uint64_t a1)
{
  sub_232BADED8(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of DUFoundInEventClassificationImplementation.isDocumentEventLLM(for:labelThreshold:)(uint64_t a1, uint64_t a2, double a3)
{
  v11 = (*(*v3 + 232) + **(*v3 + 232));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_232BADCEC;
  v9.n128_f64[0] = a3;

  return v11(a1, a2, v9);
}

uint64_t sub_232BADCEC(uint64_t a1, double a2)
{
  v5 = *v2;
  sub_232B26B3C();
  *v6 = v5;

  v7 = *(v5 + 8);
  v8.n128_f64[0] = a2;

  return v7(a1, v8);
}

void sub_232BADED8(uint64_t a1)
{
  if (!qword_2814E25D8)
  {
    sub_232CE8E10();
    v1 = sub_232CEA350();
    if (!v2)
    {
      atomic_store(v1, &qword_2814E25D8);
    }
  }
}

uint64_t sub_232BADF30(uint64_t a1, uint64_t a2)
{
  v2 = sub_232CE9D50();
  v4 = v3;
  v5 = sub_232CE9D50();
  if (v2 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_232BAE0CC(v2, v6, v5);
  }

  return v8 & 1;
}

void sub_232BADFA8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a4)
  {
  }
}

uint64_t sub_232BAE00C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_232BAE0CC(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_232CEA750();
}

uint64_t sub_232BAE160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{

  return sub_232CEA3B0();
}

uint64_t sub_232BAE194(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_232CEA750();
}

void sub_232BAE1B0()
{

  sub_232BAC8AC();
}

uint64_t sub_232BAE1D4()
{

  return sub_232CEA2F0();
}

uint64_t sub_232BAE228@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *a1 = a2 & 0xFFFFFFFFFFFFLL | 0xD000000000000000;
  *(a1 + 8) = v2;
  *(a1 + 16) = 0;

  return swift_willThrow();
}

uint64_t sub_232BAE248(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_232CEA750();
}

void sub_232BAE268(uint64_t a1, void *a2)
{

  sub_232BADFA8(a1, a2, v5, v2, v3, v4);
}

void sub_232BAE288(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void sub_232BAE2A8()
{
  v4 = *(v2 + v1);
  *(v2 + v1) = v0;
}

BOOL sub_232BAE2C0()
{

  return os_log_type_enabled(v0, v1);
}

id DUFoundInEventClassificationResult.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void *sub_232BAE340(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC21DocumentUnderstanding34DUFoundInEventClassificationResult_isSupportedLocale;
  sub_232B26BFC(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

void sub_232BAE418(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_232BAE3D8(v1);
}

void *sub_232BAE4C8(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC21DocumentUnderstanding34DUFoundInEventClassificationResult_containsDataDetectors;
  sub_232B26BFC(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

void sub_232BAE5A0(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_232BAE560(v1);
}

void *sub_232BAE650(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC21DocumentUnderstanding34DUFoundInEventClassificationResult_isClassifiedAsEvent;
  sub_232B26BFC(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

void sub_232BAE728(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_232BAE6E8(v1);
}

void *sub_232BAE7D8(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC21DocumentUnderstanding34DUFoundInEventClassificationResult_textLengthPass;
  sub_232B26BFC(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

void sub_232BAE8B0(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_232BAE870(v1);
}

void *sub_232BAE960(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC21DocumentUnderstanding34DUFoundInEventClassificationResult_isEventCandidate;
  sub_232B26BFC(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

void sub_232BAEA38(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_232BAE9F8(v1);
}

char *sub_232BAEAB4(uint64_t a1)
{
  v2 = type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventClassificationResult(0);
  sub_232B13F24();
  MEMORY[0x28223BE20](v3);
  sub_232B20704();
  v6 = v5 - v4;
  sub_232BAFF70(a1, v5 - v4);
  v7 = [objc_allocWithZone(type metadata accessor for DUFoundInEventClassificationResult()) init];
  if (*(v6 + v2[5]) != 2)
  {
    sub_232BB0058(objc_allocWithZone(MEMORY[0x277CCABB0]));
    sub_232B13F5C(&v7[OBJC_IVAR____TtC21DocumentUnderstanding34DUFoundInEventClassificationResult_isSupportedLocale], v13);
    sub_232BB0088();
  }

  if (*(v6 + v2[6]) != 2)
  {
    sub_232BB0058(objc_allocWithZone(MEMORY[0x277CCABB0]));
    sub_232B13F5C(&v7[OBJC_IVAR____TtC21DocumentUnderstanding34DUFoundInEventClassificationResult_containsDataDetectors], v14);
    sub_232BB0088();
  }

  if (*(v6 + v2[7]) != 2)
  {
    sub_232BB0058(objc_allocWithZone(MEMORY[0x277CCABB0]));
    sub_232B13F5C(&v7[OBJC_IVAR____TtC21DocumentUnderstanding34DUFoundInEventClassificationResult_isClassifiedAsEvent], v15);
    sub_232BB0088();
  }

  if (*(v6 + v2[8]) != 2)
  {
    sub_232BB0058(objc_allocWithZone(MEMORY[0x277CCABB0]));
    sub_232B13F5C(&v7[OBJC_IVAR____TtC21DocumentUnderstanding34DUFoundInEventClassificationResult_textLengthPass], v16);
    sub_232BB0088();
  }

  v8 = *(v6 + v2[9]);
  if (v8 == 2)
  {
    sub_232BAF318(a1);
    sub_232BAF318(v6);
  }

  else
  {
    v9 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
    sub_232BAF318(a1);
    sub_232BAF318(v6);
    v10 = OBJC_IVAR____TtC21DocumentUnderstanding34DUFoundInEventClassificationResult_isEventCandidate;
    sub_232B13F5C(&v7[OBJC_IVAR____TtC21DocumentUnderstanding34DUFoundInEventClassificationResult_isEventCandidate], v17);
    v11 = *&v7[v10];
    *&v7[v10] = v9;
  }

  return v7;
}

char *sub_232BAECAC(uint64_t a1)
{
  v3 = type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventClassificationResult(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_232BAFF70(a1, v5);
  v6 = [objc_allocWithZone(v1) init];
  v7 = v5[v3[5]];
  if (v7 != 2)
  {
    v8 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
    v9 = OBJC_IVAR____TtC21DocumentUnderstanding34DUFoundInEventClassificationResult_isSupportedLocale;
    swift_beginAccess();
    v10 = *&v6[v9];
    *&v6[v9] = v8;
  }

  v11 = v5[v3[6]];
  if (v11 != 2)
  {
    v12 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
    v13 = OBJC_IVAR____TtC21DocumentUnderstanding34DUFoundInEventClassificationResult_containsDataDetectors;
    swift_beginAccess();
    v14 = *&v6[v13];
    *&v6[v13] = v12;
  }

  v15 = v5[v3[7]];
  if (v15 != 2)
  {
    v16 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
    v17 = OBJC_IVAR____TtC21DocumentUnderstanding34DUFoundInEventClassificationResult_isClassifiedAsEvent;
    swift_beginAccess();
    v18 = *&v6[v17];
    *&v6[v17] = v16;
  }

  v19 = v5[v3[8]];
  if (v19 != 2)
  {
    v20 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
    v21 = OBJC_IVAR____TtC21DocumentUnderstanding34DUFoundInEventClassificationResult_textLengthPass;
    swift_beginAccess();
    v22 = *&v6[v21];
    *&v6[v21] = v20;
  }

  v23 = v5[v3[9]];
  if (v23 == 2)
  {
    sub_232BAF318(a1);
    sub_232BAF318(v5);
  }

  else
  {
    v24 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
    sub_232BAF318(a1);
    sub_232BAF318(v5);
    v25 = OBJC_IVAR____TtC21DocumentUnderstanding34DUFoundInEventClassificationResult_isEventCandidate;
    swift_beginAccess();
    v26 = *&v6[v25];
    *&v6[v25] = v24;
  }

  return v6;
}

char *DUFoundInEventClassificationResult.__allocating_init<A>(proto:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_232B124A8(&qword_27DDC7588, &qword_232CFA250);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v31[-v6 - 8];
  v8 = *(a2 - 8);
  MEMORY[0x28223BE20](v9);
  sub_232B20704();
  v12 = v11 - v10;
  v13 = type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventClassificationResult(0);
  sub_232B13F24();
  MEMORY[0x28223BE20](v14);
  sub_232B20704();
  v17 = v16 - v15;
  (*(v8 + 16))(v12, a1, a2);
  if (swift_dynamicCast())
  {
    sub_232B12504(v7, 0, 1, v13);
    sub_232BAF2B4(v7, v17);
    v18 = [objc_allocWithZone(v2) init];
    if (*(v17 + *(v13 + 20)) != 2)
    {
      sub_232BAFFFC(objc_allocWithZone(MEMORY[0x277CCABB0]));
      sub_232B13F5C(&v18[OBJC_IVAR____TtC21DocumentUnderstanding34DUFoundInEventClassificationResult_isSupportedLocale], v31);
      sub_232BB0070();
    }

    sub_232BB002C();
    if (!v19)
    {
      sub_232BAFFFC(objc_allocWithZone(MEMORY[0x277CCABB0]));
      sub_232B13F5C(&v18[OBJC_IVAR____TtC21DocumentUnderstanding34DUFoundInEventClassificationResult_containsDataDetectors], v32);
      sub_232BB0070();
    }

    sub_232BB002C();
    if (!v19)
    {
      sub_232BAFFFC(objc_allocWithZone(MEMORY[0x277CCABB0]));
      sub_232B13F5C(&v18[OBJC_IVAR____TtC21DocumentUnderstanding34DUFoundInEventClassificationResult_isClassifiedAsEvent], v33);
      sub_232BB0070();
    }

    sub_232BB002C();
    if (!v19)
    {
      sub_232BAFFFC(objc_allocWithZone(MEMORY[0x277CCABB0]));
      sub_232B13F5C(&v18[OBJC_IVAR____TtC21DocumentUnderstanding34DUFoundInEventClassificationResult_textLengthPass], v34);
      sub_232BB0070();
    }

    sub_232BB002C();
    if (v19)
    {
      v20 = sub_232BAFFEC();
      v21(v20);
      sub_232BAF318(v17);
    }

    else
    {
      v24 = sub_232BAFFFC(objc_allocWithZone(MEMORY[0x277CCABB0]));
      v25 = sub_232BAFFEC();
      v26(v25);
      sub_232BAF318(v17);
      v27 = OBJC_IVAR____TtC21DocumentUnderstanding34DUFoundInEventClassificationResult_isEventCandidate;
      sub_232B13F5C(&v18[OBJC_IVAR____TtC21DocumentUnderstanding34DUFoundInEventClassificationResult_isEventCandidate], v35);
      v28 = *&v18[v27];
      *&v18[v27] = v24;
    }
  }

  else
  {
    v22 = sub_232BAFFEC();
    v23(v22);
    sub_232B12504(v7, 1, 1, v13);
    sub_232BAF24C(v7);
    return 0;
  }

  return v18;
}

uint64_t sub_232BAF24C(uint64_t a1)
{
  v2 = sub_232B124A8(&qword_27DDC7588, &qword_232CFA250);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_232BAF2B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventClassificationResult(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_232BAF318(uint64_t a1)
{
  v2 = type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventClassificationResult(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_232BAF374@<X0>(uint64_t a2@<X8>)
{
  sub_232CE9330();
  v4 = type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventClassificationResult(0);
  v5 = v4[5];
  *(a2 + v5) = 2;
  v6 = v4[6];
  *(a2 + v6) = 2;
  v7 = v4[7];
  *(a2 + v7) = 2;
  v8 = v4[8];
  *(a2 + v8) = 2;
  v9 = v4[9];
  *(a2 + v9) = 2;
  v10 = OBJC_IVAR____TtC21DocumentUnderstanding34DUFoundInEventClassificationResult_isSupportedLocale;
  sub_232B13F74(v2 + OBJC_IVAR____TtC21DocumentUnderstanding34DUFoundInEventClassificationResult_isSupportedLocale, v24);
  v11 = *(v2 + v10);
  if (v11)
  {
    *(a2 + v5) = [v11 BOOLValue];
  }

  v12 = OBJC_IVAR____TtC21DocumentUnderstanding34DUFoundInEventClassificationResult_containsDataDetectors;
  sub_232B13F74(v2 + OBJC_IVAR____TtC21DocumentUnderstanding34DUFoundInEventClassificationResult_containsDataDetectors, v23);
  v13 = *(v2 + v12);
  if (v13)
  {
    *(a2 + v6) = [v13 BOOLValue];
  }

  v14 = OBJC_IVAR____TtC21DocumentUnderstanding34DUFoundInEventClassificationResult_isClassifiedAsEvent;
  sub_232B13F74(v2 + OBJC_IVAR____TtC21DocumentUnderstanding34DUFoundInEventClassificationResult_isClassifiedAsEvent, v22);
  v15 = *(v2 + v14);
  if (v15)
  {
    *(a2 + v7) = [v15 BOOLValue];
  }

  v16 = OBJC_IVAR____TtC21DocumentUnderstanding34DUFoundInEventClassificationResult_textLengthPass;
  sub_232B13F74(v2 + OBJC_IVAR____TtC21DocumentUnderstanding34DUFoundInEventClassificationResult_textLengthPass, v21);
  v17 = *(v2 + v16);
  if (v17)
  {
    *(a2 + v8) = [v17 BOOLValue];
  }

  v18 = OBJC_IVAR____TtC21DocumentUnderstanding34DUFoundInEventClassificationResult_isEventCandidate;
  sub_232B13F74(v2 + OBJC_IVAR____TtC21DocumentUnderstanding34DUFoundInEventClassificationResult_isEventCandidate, v20);
  result = *(v2 + v18);
  if (result)
  {
    result = [result BOOLValue];
    *(a2 + v9) = result;
  }

  return result;
}

char *sub_232BAF4B8@<X0>(char **a1@<X8>)
{
  v2 = type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventClassificationResult(0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_232B20704();
  v5 = v4 - v3;
  sub_232BAF374(v4 - v3);
  v6 = sub_232BAEAB4(v5);
  result = sub_232B124A8(&qword_27DDC7590, &qword_232CFA258);
  a1[3] = result;
  *a1 = v6;
  return result;
}

id sub_232BAF5B0()
{
  type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventClassificationResult(0);
  sub_232B13F24();
  MEMORY[0x28223BE20](v0);
  sub_232B20704();
  v3 = v2 - v1;
  sub_232BAF374(v2 - v1);
  sub_232BAFFD4();
  sub_232BAFF28(v4, 255, v5, &unk_232CFD018);
  v6 = sub_232CE94E0();
  v8 = v7;
  sub_232BAF318(v3);
  sub_232B1F870();
  return sub_232C2EB20(v6, v8);
}

void sub_232BAF6EC(void *a1)
{
  v2 = sub_232BAF5B0();
  if (v2)
  {
    v3 = v2;
    v4 = sub_232CE9D20();
    [a1 encodeObject:v3 forKey:v4];
  }
}

uint64_t DUFoundInEventClassificationResult.init(coder:)(void *a1)
{
  swift_getObjectType();
  sub_232B1F870();
  if (!sub_232CEA2D0())
  {

    goto LABEL_5;
  }

  swift_getObjectType();
  sub_232BAFF28(&qword_27DDC7598, v2, type metadata accessor for DUFoundInEventClassificationResult, &protocol conformance descriptor for DUFoundInEventClassificationResult);
  sub_232CE98B0();

  v3 = v7;
  if (!v7)
  {
LABEL_5:
    ObjectType = swift_getObjectType();
    sub_232BB0038(ObjectType);
    return 0;
  }

  v4 = swift_getObjectType();
  sub_232BB0038(v4);
  return v3;
}

id DUFoundInEventClassificationResult.init()()
{
  *&v0[OBJC_IVAR____TtC21DocumentUnderstanding34DUFoundInEventClassificationResult_isSupportedLocale] = 0;
  *&v0[OBJC_IVAR____TtC21DocumentUnderstanding34DUFoundInEventClassificationResult_containsDataDetectors] = 0;
  *&v0[OBJC_IVAR____TtC21DocumentUnderstanding34DUFoundInEventClassificationResult_isClassifiedAsEvent] = 0;
  *&v0[OBJC_IVAR____TtC21DocumentUnderstanding34DUFoundInEventClassificationResult_textLengthPass] = 0;
  *&v0[OBJC_IVAR____TtC21DocumentUnderstanding34DUFoundInEventClassificationResult_isEventCandidate] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DUFoundInEventClassificationResult();
  return objc_msgSendSuper2(&v2, sel_init);
}

id DUFoundInEventClassificationResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DUFoundInEventClassificationResult();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_232BAFB08@<X0>(uint64_t a1@<X0>, char **a2@<X8>)
{
  result = sub_232BAECAC(a1);
  *a2 = result;
  return result;
}

uint64_t sub_232BAFF28(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_232BAFF70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DocumentUnderstanding_ClientInterface_FoundInEventClassificationResult(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_232BAFFFC(void *a1)
{

  return [a1 (v2 + 3468)];
}

void sub_232BB0014()
{
  v4 = *(v1 + v2);
  *(v1 + v2) = v0;
}

uint64_t sub_232BB0038(uint64_t a1)
{

  return swift_deallocPartialClassInstance();
}

id sub_232BB0058(void *a1)
{

  return [a1 (v2 + 3468)];
}

void sub_232BB0070()
{
  v4 = *(v1 + v2);
  *(v1 + v2) = v0;
}

void sub_232BB0088()
{
  v4 = *(v0 + v2);
  *(v0 + v2) = v1;
}

uint64_t sub_232BB0100(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = sub_232CE9A30();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_232BB01C4, 0, 0);
}

uint64_t sub_232BB01C4(uint64_t a1)
{
  v14 = v1;
  sub_232CE9A20();
  v2 = sub_232CE9A00();
  v3 = sub_232CEA1B0();
  v4 = os_log_type_enabled(v2, v3);
  v6 = v1[9];
  v5 = v1[10];
  v7 = v1[8];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v13 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_232BAD2D4(0xD000000000000024, 0x8000000232D05EF0, &v13);
    _os_log_impl(&dword_232B02000, v2, v3, "FoundInEventClassification phase ID: %s", v8, 0xCu);
    sub_232B2040C(v9);
    MEMORY[0x238393870](v9, -1, -1);
    MEMORY[0x238393870](v8, -1, -1);
  }

  (*(v6 + 8))(v5, v7);
  v10 = swift_task_alloc();
  v1[11] = v10;
  *v10 = v1;
  v10[1] = sub_232BB037C;
  v11 = v1[6];

  return sub_232B50954(v11);
}

uint64_t sub_232BB037C(uint64_t a1)
{
  *(*v1 + 96) = a1;

  return MEMORY[0x2822009F8](sub_232BB047C, 0, 0);
}

uint64_t sub_232BB047C()
{
  v1 = v0[12];
  if (v1)
  {
    v2 = v0[5];
    v3 = OBJC_IVAR____TtC21DocumentUnderstanding10DUResponse_foundInEventClassificationResult;
    swift_beginAccess();
    v4 = *(v2 + v3);
    *(v2 + v3) = v1;
  }

  v5 = v0[1];

  return v5();
}

id sub_232BB051C()
{
  v0 = type metadata accessor for DURequestContentType();
  v1 = objc_allocWithZone(v0);
  *&v1[OBJC_IVAR____TtC21DocumentUnderstanding20DURequestContentType_rawValue] = 4096;
  v3.receiver = v1;
  v3.super_class = v0;
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t sub_232BB0578(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_232BB0620;

  return sub_232BB0100(a1, a2);
}

uint64_t sub_232BB0620()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_232BB072C@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for DUFoundInEventDDSpecification();
  result = swift_allocObject();
  a1[3] = v2;
  a1[4] = &off_281931D88;
  *a1 = result;
  return result;
}

uint64_t sub_232BB0774(uint64_t a1)
{
  v1[10] = a1;
  sub_232B124A8(&qword_27DDC6A80, &qword_232CF6D30);
  v1[11] = swift_task_alloc();
  v2 = sub_232CE8D10();
  v1[12] = v2;
  v1[13] = *(v2 - 8);
  v1[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_232BB086C, 0, 0);
}

uint64_t sub_232BB086C()
{
  v1 = *(v0[10] + 24);
  if (!v1)
  {
    v14 = 0x8000000232D04650;
    sub_232B4A95C();
    swift_allocError();
    sub_232BB0CDC();
LABEL_14:
    *v15 = v16;
    *(v15 + 8) = v14;
    *(v15 + 16) = 0;
    goto LABEL_15;
  }

  v2 = sub_232B5821C();
  if (!v3)
  {
    v14 = 0x8000000232D05F60;
    sub_232B4A95C();
    swift_allocError();
    sub_232BB0CDC();
    v16 = v24 + 14;
    goto LABEL_14;
  }

  v4 = v2;
  v5 = v3;
  type metadata accessor for DUDataDetectors();
  swift_initStackObject();
  v6 = sub_232B58760();
  if (!v6 || (v7 = v6, v8 = OBJC_IVAR____TtC21DocumentUnderstanding18DUDocumentHTMLData_documentEmailData, swift_beginAccess(), v9 = *&v7[v8], v10 = v9, v7, !v9))
  {
    sub_232B12504(v0[11], 1, 1, v0[12]);
LABEL_9:
    v18 = v0[11];
    v17 = v0[12];
    sub_232CE8D00();
    if (sub_232B12480(v18, 1, v17) != 1)
    {
      sub_232BB0C04(v0[11]);
    }

    goto LABEL_11;
  }

  v12 = v0[11];
  v11 = v0[12];
  v13 = OBJC_IVAR____TtC21DocumentUnderstanding19DUDocumentEmailData_dateReceived;
  swift_beginAccess();
  sub_232BB0C6C(v10 + v13, v12);

  if (sub_232B12480(v12, 1, v11) == 1)
  {
    goto LABEL_9;
  }

  (*(v0[13] + 32))(v0[14], v0[11], v0[12]);
LABEL_11:
  sub_232B54C3C(v4, v5, v0[14]);
  v1 = v19;

  v21 = v0[13];
  v20 = v0[14];
  v22 = v0[12];
  if (v1)
  {
    (*(v21 + 8))(v0[14], v0[12]);
    v23 = 0;
    goto LABEL_16;
  }

  sub_232B4A95C();
  swift_allocError();
  sub_232BB0CDC();
  *v28 = v27 + 23;
  *(v28 + 8) = 0x8000000232D05F90;
  *(v28 + 16) = 0;
  (*(v21 + 8))(v20, v22);
LABEL_15:
  v23 = 1;
LABEL_16:

  v25 = v0[1];

  return v25(v1, v23);
}

uint64_t sub_232BB0B6C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_232B4A838;

  return sub_232BB0774(a2);
}

uint64_t sub_232BB0C04(uint64_t a1)
{
  v2 = sub_232B124A8(&qword_27DDC6A80, &qword_232CF6D30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_232BB0C6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_232B124A8(&qword_27DDC6A80, &qword_232CF6D30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_232BB0D4C@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for DUFoundInEventSpecification();
  result = sub_232BB18A8(v2);
  a1[3] = v2;
  a1[4] = &off_281932028;
  *a1 = result;
  return result;
}

uint64_t sub_232BB0D8C()
{
  sub_232B26C44();
  *(v0 + 16) = v1;
  sub_232B124A8(&qword_27DDC6F98, &unk_232CF7CA0);
  *(v0 + 24) = swift_task_alloc();
  v2 = sub_232B5138C();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_232BB0E1C()
{
  sub_232B26C7C();
  if (*(v0[2] + 24))
  {
    v1 = type metadata accessor for DUFoundInEventHTMLPreprocessingSpecification();
    v0[4] = sub_232BB18A8(v1);
    sub_232BB1878(&dword_232CF8058);
    v9 = v2;
    v3 = swift_task_alloc();
    v0[5] = v3;
    *v3 = v0;
    v4 = sub_232BB1888(v3);

    return v9(v4);
  }

  else
  {
    sub_232B4A95C();
    v6 = sub_232B4EC24(&type metadata for DUProcessingPhaseImplementationBaseError);
    *v7 = 0xD000000000000015;
    *(v7 + 8) = 0x8000000232D04650;
    *(v7 + 16) = 0;

    sub_232BB189C();

    return v8(v6, 1);
  }
}

uint64_t sub_232BB0F48()
{
  sub_232B26C44();
  sub_232B26C70();
  v1 = *v0;
  sub_232B26B3C();
  *v2 = v1;
  *(v4 + 48) = v3;

  v5 = sub_232B5138C();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_232BB1050()
{
  sub_232B26C7C();
  v1 = v0[6];
  if (v1)
  {
    sub_232B5821C();
    if (v2)
    {

      v3 = type metadata accessor for DUFoundInEventDDSpecification();
      v0[7] = sub_232BB18A8(v3);
      sub_232BB1878(&dword_232CF8040);
      v12 = v4;
      v5 = swift_task_alloc();
      v0[8] = v5;
      *v5 = v0;
      v6 = sub_232BB1888(v5);

      return v12(v6);
    }

    sub_232B4A95C();
    v8 = sub_232B4EC24(&type metadata for DUProcessingPhaseImplementationBaseError);
    *v10 = 0xD000000000000020;
    *(v10 + 8) = 0x8000000232D06090;
    *(v10 + 16) = 0;
  }

  else
  {
    sub_232B4A95C();
    v8 = sub_232B4EC24(&type metadata for DUProcessingPhaseImplementationBaseError);
    *v9 = 0xD000000000000017;
    *(v9 + 8) = 0x8000000232D06070;
    *(v9 + 16) = 0;
  }

  sub_232BB189C();

  return v11(v8, 1);
}

uint64_t sub_232BB11D0()
{
  sub_232B26C44();
  sub_232B26C70();
  v1 = *v0;
  sub_232B26B3C();
  *v2 = v1;
  *(v4 + 72) = v3;

  v5 = sub_232B5138C();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_232BB12D8()
{
  sub_232B26C7C();
  if (v0[9])
  {

    v1 = type metadata accessor for DUWordPieceTokenizerSpecification();
    v0[10] = sub_232BB18A8(v1);
    sub_232BB1878(&dword_232CF8038);
    v11 = v2;
    v3 = swift_task_alloc();
    v0[11] = v3;
    *v3 = v0;
    v3[1] = sub_232BB141C;
    v5 = v0[2];
    v4 = v0[3];

    return v11(v4, v5);
  }

  else
  {
    v7 = v0[6];
    sub_232B4A95C();
    v8 = sub_232B4EC24(&type metadata for DUProcessingPhaseImplementationBaseError);
    *v9 = 0xD00000000000001BLL;
    *(v9 + 8) = 0x8000000232D060C0;
    *(v9 + 16) = 0;

    sub_232BB189C();

    return v10(v8, 1);
  }
}

uint64_t sub_232BB141C()
{
  sub_232B26C44();
  sub_232B26C70();
  v1 = *v0;
  sub_232B26B3C();
  *v2 = v1;

  v3 = sub_232B5138C();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_232BB151C()
{
  sub_232B26C7C();
  v1 = *(v0 + 24);
  v2 = sub_232CE9700();
  v3 = sub_232B12480(v1, 1, v2);
  sub_232BB1810(v1);
  v4 = *(v0 + 48);
  if (v3 == 1)
  {
    sub_232B4A95C();
    v5 = sub_232B4EC24(&type metadata for DUProcessingPhaseImplementationBaseError);
    *v6 = 0xD000000000000018;
    *(v6 + 8) = 0x8000000232D060E0;
    *(v6 + 16) = 0;
  }

  else
  {
    v5 = [objc_allocWithZone(type metadata accessor for DUFoundInEventResult()) init];
  }

  sub_232BB189C();

  return v7(v5, v3 == 1);
}

uint64_t sub_232BB1664(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_232BB16FC;

  return sub_232BB0D8C();
}

uint64_t sub_232BB16FC()
{
  sub_232B26C7C();
  v2 = v1;
  v4 = v3;
  sub_232B26C70();
  v6 = *(v5 + 16);
  v7 = *v0;
  sub_232B26B3C();
  *v8 = v7;

  *v6 = v4;
  *(v6 + 8) = v2 & 1;
  v9 = *(v7 + 8);

  return v9();
}

uint64_t sub_232BB1810(uint64_t a1)
{
  v2 = sub_232B124A8(&qword_27DDC6F98, &unk_232CF7CA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_232BB18A8(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_232BB18C0@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for DUFoundInEventEncodingSmolBERToSpecification();
  result = swift_allocObject();
  a1[3] = v2;
  a1[4] = &off_281931E10;
  *a1 = result;
  return result;
}

uint64_t sub_232BB1908(uint64_t a1)
{
  v4 = sub_232B124A8(&qword_27DDC6FA0, &unk_232CF7CB0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v36 - v9;
  v11 = *a1;
  sub_232BB2CCC();
  v12 = sub_232CE9D20();
  v13 = [v11 featureValueForName_];

  if (v13)
  {
    v38 = *(a1 + 8);

    sub_232B124A8(&qword_27DDC6FB0, &unk_232CF8840);
    v37 = v1;
    sub_232BB2C48();
    sub_232CE9A50();
    sub_232B124A8(&qword_27DDC6FC0, &unk_232CF7CC0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_232CF5E60;
    *(inited + 32) = 0xD00000000000001DLL;
    *(inited + 40) = v2;
    v15 = sub_232B4AA60();
    *(inited + 48) = v13;
    *(inited + 72) = v15;
    strcpy((inited + 80), "attention_mask");
    *(inited + 95) = -18;
    (*(v5 + 16))(v7, v10, v4);
    v16 = v13;
    v17 = sub_232CEA200();
    *(inited + 120) = v15;
    *(inited + 96) = v17;
    v18 = sub_232CE9C60();
    v19 = objc_allocWithZone(MEMORY[0x277CBFED0]);
    v20 = v37;
    v21 = sub_232C3B328(v18);
    if (v20)
    {
      if (qword_2814DFA50 != -1)
      {
        sub_232BB2CAC(&qword_2814DFA50);
      }

      v22 = sub_232CE9A30();
      sub_232B135C4(v22, qword_2814E3DA8);
      v23 = v20;
      v24 = sub_232CE9A00();
      v2 = sub_232CEA1C0();

      if (os_log_type_enabled(v24, v2))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        *v25 = 138412290;
        v27 = v20;
        v28 = _swift_stdlib_bridgeErrorToNSError();
        *(v25 + 4) = v28;
        *v26 = v28;
        _os_log_impl(&dword_232B02000, v24, v2, "Error building FoundInEventSmolBERToClassificationModel model inputs: %@", v25, 0xCu);
        sub_232B267AC(v26, &qword_27DDC6FD0, &unk_232CFA240);
        MEMORY[0x238393870](v26, -1, -1);
        MEMORY[0x238393870](v25, -1, -1);
      }

      sub_232B4AA0C();
      sub_232B4ACD4();
      swift_allocError();
      *v29 = 1;
      swift_willThrow();

      (*(v5 + 8))(v10, v4);
    }

    else
    {
      v2 = v21;
      (*(v5 + 8))(v10, v4);
    }
  }

  else
  {
    if (qword_2814DFA50 != -1)
    {
      sub_232BB2CAC(&qword_2814DFA50);
    }

    v30 = sub_232CE9A30();
    sub_232B135C4(v30, qword_2814E3DA8);
    v31 = sub_232CE9A00();
    v32 = sub_232CEA1C0();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_232B02000, v31, v32, "Error extracting encoding output from FoundInEventSmolBERToEncodingModel", v33, 2u);
      MEMORY[0x238393870](v33, -1, -1);
    }

    sub_232B4AA0C();
    sub_232B4ACD4();
    swift_allocError();
    *v34 = 0;
    swift_willThrow();
  }

  return v2;
}

uint64_t sub_232BB1E0C()
{
  sub_232B26C44();
  v1[5] = v2;
  v1[6] = v0;
  v1[7] = type metadata accessor for FeatureProviderWithMask(0);
  v1[8] = swift_task_alloc();
  sub_232B124A8(&qword_27DDC6F98, &unk_232CF7CA0);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v3 = sub_232CE9700();
  v1[11] = v3;
  v1[12] = *(v3 - 8);
  v1[13] = swift_task_alloc();
  v4 = sub_232B5138C();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_232BB1F34()
{
  sub_232B26C44();
  type metadata accessor for DUTrialAssetLoader();
  *(v0 + 112) = swift_initStackObject();
  *(v0 + 120) = sub_232C14534();
  *(v0 + 208) = sub_232C149A0();
  type metadata accessor for DUBackboneEncodingSmolBERToSpecification();
  *(v0 + 128) = swift_allocObject();
  v1 = swift_task_alloc();
  *(v0 + 136) = v1;
  *v1 = v0;
  v1[1] = sub_232BB2054;
  v2 = *(v0 + 40);

  return sub_232B4EC3C(v2);
}

uint64_t sub_232BB2054()
{
  sub_232B26C44();
  sub_232B26C70();
  v1 = *v0;
  sub_232B26B3C();
  *v2 = v1;
  *(v4 + 144) = v3;

  v5 = sub_232B5138C();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_232BB215C()
{
  v1 = *(v0 + 144);
  if (v1)
  {
    v2 = sub_232C15424(0xD00000000000001FLL, 0x8000000232D06190, 0xD000000000000022, 0x8000000232D061B0, *(v0 + 208) & 1);
    *(v0 + 152) = v2;
    if (v2)
    {
      v3 = objc_allocWithZone(MEMORY[0x277CBFF68]);
      v4 = v1;
      v5 = [v3 init];
      *(v0 + 160) = v5;
      v6 = swift_task_alloc();
      *(v0 + 168) = v6;
      *v6 = v0;
      v6[1] = sub_232BB237C;

      return MEMORY[0x282111978](v4, v5);
    }

    sub_232B4A95C();
    sub_232B4ACD4();
    v7 = swift_allocError();
    *v9 = 0xD000000000000037;
    *(v9 + 8) = 0x8000000232D061E0;
    *(v9 + 16) = 0;
  }

  else
  {
    sub_232B4A95C();
    sub_232B4ACD4();
    v7 = swift_allocError();
    *v8 = 0xD00000000000003FLL;
    *(v8 + 8) = 0x8000000232D06150;
    *(v8 + 16) = 0;
  }

  v10 = *(v0 + 8);

  return v10(v7, 1);
}

uint64_t sub_232BB237C()
{
  sub_232B26C70();
  v3 = v2;
  v4 = *v1;
  *(v2 + 176) = v5;
  *(v2 + 184) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_232BB28D8, 0, 0);
  }

  else
  {
    v6 = *(v3 + 144);

    type metadata accessor for DUWordPieceTokenizerSpecification();
    *(v3 + 192) = swift_allocObject();
    v7 = swift_task_alloc();
    *(v3 + 200) = v7;
    *v7 = v4;
    v7[1] = sub_232BB2534;
    v8 = *(v3 + 80);
    v9 = *(v3 + 40);

    return sub_232B4EE70(v8, v9);
  }
}

uint64_t sub_232BB2534()
{
  sub_232B26C44();
  sub_232B26C70();
  v1 = *v0;
  sub_232B26B3C();
  *v2 = v1;

  v3 = sub_232B5138C();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_232BB2634()
{
  v3 = v0[10];
  v2 = v0[11];
  if (sub_232B12480(v3, 1, v2) == 1)
  {
    v5 = v0[18];
    v4 = v0[19];
    sub_232B267AC(v3, &qword_27DDC6F98, &unk_232CF7CA0);
    sub_232BB2CCC();
    sub_232B4A95C();
    sub_232B4ACD4();
    v6 = swift_allocError();
    *v7 = 0xD00000000000001ALL;
    *(v7 + 8) = v1;
    *(v7 + 16) = 0;
    swift_unknownObjectRelease();

LABEL_5:

    v22 = 1;
    goto LABEL_6;
  }

  v9 = v0[22];
  v8 = v0[23];
  v11 = v0[12];
  v10 = v0[13];
  v13 = v0[8];
  v12 = v0[9];
  v14 = v0[7];
  (*(v11 + 32))(v10, v3, v2);
  v15 = sub_232CE96A0();
  (*(v11 + 16))(v12, v10, v2);
  sub_232B12504(v12, 0, 1, v2);
  v16 = *(v14 + 24);
  sub_232B12504(v13 + v16, 1, 1, v2);
  *v13 = v9;
  v13[1] = v15;
  sub_232BB2BD8(v12, v13 + v16);
  v17 = sub_232BB1908(v13);
  if (v8)
  {
    v18 = v0[8];
    (*(v0[12] + 8))(v0[13], v0[11]);
    sub_232B4A9B0(v18);
    v20 = v0[18];
    v19 = v0[19];
    sub_232BB2CCC();
    sub_232B4A95C();
    sub_232B4ACD4();
    v6 = swift_allocError();
    *v21 = 0xD000000000000038;
    *(v21 + 8) = v13;
    *(v21 + 16) = 0;

    goto LABEL_5;
  }

  v6 = v17;
  v26 = v0[18];
  v25 = v0[19];
  v27 = v0[8];
  (*(v0[12] + 8))(v0[13], v0[11]);

  sub_232B4A9B0(v27);
  v22 = 0;
LABEL_6:

  v23 = v0[1];

  return v23(v6, v22);
}