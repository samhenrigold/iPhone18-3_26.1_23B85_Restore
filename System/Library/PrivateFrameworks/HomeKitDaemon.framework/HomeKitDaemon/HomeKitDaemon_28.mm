uint64_t sub_22980D4C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[78] = v3;
  v4[77] = a3;
  v4[76] = a2;
  v4[75] = a1;
  v5 = sub_22A4DD07C();
  v4[79] = v5;
  v4[80] = *(v5 - 8);
  v4[81] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D2A0, &unk_22A578BD0);
  v4[82] = swift_task_alloc();
  v4[83] = swift_task_alloc();
  v4[84] = swift_task_alloc();
  v6 = sub_22A4DB7DC();
  v4[85] = v6;
  v4[86] = *(v6 - 8);
  v4[87] = swift_task_alloc();
  v4[88] = swift_task_alloc();
  v4[89] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22980D658, 0, 0);
}

uint64_t sub_22980D658()
{
  v1 = 0xEB00000000736569;
  if (*(v0[75] + 16))
  {
    v2 = sub_229543DBC(0x726F737365636341, 0xEB00000000736569);
    if (v3)
    {
      sub_2295404B0(*(v0[75] + 56) + 32 * v2, (v0 + 17));
      v0[90] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881E90, &qword_22A5788A0);
      if (swift_dynamicCast())
      {
        result = v0[74];
        v0[91] = result;
        v5 = *(result + 16);
        v0[92] = v5;
        if (v5)
        {
          v6 = 0;
          while (1)
          {
            v0[93] = v6;
            v13 = v0[91];
            if (v6 >= *(v13 + 16))
            {
              __break(1u);
              goto LABEL_60;
            }

            v14 = *(v13 + 8 * v6 + 32);
            v0[94] = v14;
            if (*(v14 + 16))
            {

              v15 = sub_229543DBC(0x696669746E656449, 0xEA00000000007265);
              if (v16)
              {
                sub_2295404B0(*(v14 + 56) + 32 * v15, (v0 + 61));
                if (swift_dynamicCast())
                {
                  v17 = v0[86];
                  v18 = v0[85];
                  v19 = v0[84];
                  sub_22A4DB75C();

                  if ((*(v17 + 48))(v19, 1, v18) == 1)
                  {
                    v20 = v0[84];

                    result = sub_22953EAE4(v20, &unk_27D87D2A0, &unk_22A578BD0);
                    goto LABEL_8;
                  }

                  v7 = v0[89];
                  v8 = v0[86];
                  v9 = v0[85];
                  v10 = v0[78];
                  (*(v8 + 32))(v7, v0[84], v9);
                  v11 = sub_22A4DB77C();
                  v12 = [v10 accessoryWithUUID_];
                  v0[95] = v12;

                  (*(v8 + 8))(v7, v9);
                  if (v12)
                  {
                    v69 = swift_task_alloc();
                    v0[96] = v69;
                    *v69 = v0;
                    v69[1] = sub_22980E234;
                    v70 = v0[77];
                    v71 = v0[76];

                    return sub_229625AB0(v14, v71, v70);
                  }
                }
              }
            }

LABEL_8:
            v6 = v0[93] + 1;
            if (v6 == v0[92])
            {

              v1 = 0xEB00000000736569;
              goto LABEL_17;
            }
          }
        }
      }
    }
  }

LABEL_17:
  if (*(v0[75] + 16))
  {
    v21 = sub_229543DBC(0x736D6F6F52, 0xE500000000000000);
    if (v22)
    {
      sub_2295404B0(*(v0[75] + 56) + 32 * v21, (v0 + 21));
      v0[98] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881E90, &qword_22A5788A0);
      if (swift_dynamicCast())
      {
        result = v0[73];
        v0[99] = result;
        v23 = *(result + 16);
        v0[100] = v23;
        if (v23)
        {
          v24 = 0;
          v25 = 0x696669746E656449;
          while (1)
          {
            v0[101] = v24;
            v26 = v0[99];
            if (v24 >= *(v26 + 16))
            {
              break;
            }

            v27 = *(v26 + 8 * v24 + 32);
            v0[102] = v27;
            if (*(v27 + 16))
            {

              v28 = sub_229543DBC(v25, 0xEA00000000007265);
              if (v29 & 1) != 0 && (sub_2295404B0(*(v27 + 56) + 32 * v28, (v0 + 53)), (swift_dynamicCast()))
              {
                v30 = v0[86];
                v31 = v0[85];
                v32 = v0[83];
                sub_22A4DB75C();

                if ((*(v30 + 48))(v32, 1, v31) == 1)
                {
                  v33 = v0[83];

                  result = sub_22953EAE4(v33, &unk_27D87D2A0, &unk_22A578BD0);
                }

                else
                {
                  v34 = v25;
                  v35 = v1;
                  v36 = v0[88];
                  v37 = v0[86];
                  v38 = v0[85];
                  v39 = v0[78];
                  (*(v37 + 32))(v36, v0[83], v38);
                  v40 = sub_22A4DB77C();
                  v41 = [v39 roomWithUUID_];
                  v0[103] = v41;

                  (*(v37 + 8))(v36, v38);
                  if (v41)
                  {
                    v72 = sub_22981667C(v27, sub_22959E60C);
                    sub_229562F68(0, &qword_27D87D4D8, off_278666048);
                    v0[15] = sub_229562F68(0, &unk_2814017A0, off_278666308);
                    v0[16] = &off_283CDD0E8;
                    v0[12] = v41;
                    v73 = v0 + 12;
                    v0[60] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C370, &qword_22A578090);
                    v0[57] = v72;
                    v74 = v41;
                    v75 = swift_task_alloc();
                    v0[104] = v75;
                    *v75 = v0;
                    v75[1] = sub_22980EE84;
                    v65 = v0[77];
                    v66 = v0[76];
                    v67 = (v0 + 57);
LABEL_58:
                    v68 = v73;
                    goto LABEL_50;
                  }

                  v1 = v35;
                  v25 = v34;
                }
              }

              else
              {
              }
            }

            v24 = v0[101] + 1;
            if (v24 == v0[100])
            {
              goto LABEL_32;
            }
          }

LABEL_60:
          __break(1u);
          goto LABEL_61;
        }

LABEL_32:
      }
    }
  }

  if (*(v0[75] + 16))
  {
    v42 = sub_229543DBC(0x73656E656353, 0xE600000000000000);
    if (v43)
    {
      sub_2295404B0(*(v0[75] + 56) + 32 * v42, (v0 + 25));
      v0[106] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881E90, &qword_22A5788A0);
      if (swift_dynamicCast())
      {
        result = v0[72];
        v0[107] = result;
        v44 = *(result + 16);
        v0[108] = v44;
        if (v44)
        {
          v45 = 0;
          v46 = MEMORY[0x277D837D0];
          while (1)
          {
            v0[109] = v45;
            v47 = v0[107];
            if (v45 >= *(v47 + 16))
            {
              break;
            }

            v48 = *(v47 + 8 * v45 + 32);
            v0[110] = v48;
            if (*(v48 + 16))
            {

              v49 = sub_229543DBC(0x696669746E656449, 0xEA00000000007265);
              if (v50 & 1) != 0 && (sub_2295404B0(*(v48 + 56) + 32 * v49, (v0 + 45)), (swift_dynamicCast()))
              {
                v51 = v0[86];
                v52 = v0[85];
                v53 = v0[82];
                sub_22A4DB75C();

                if ((*(v51 + 48))(v53, 1, v52) == 1)
                {
                  v54 = v0[82];

                  result = sub_22953EAE4(v54, &unk_27D87D2A0, &unk_22A578BD0);
                  v1 = 0xEB00000000736569;
                }

                else
                {
                  v55 = v46;
                  v56 = v0[87];
                  v57 = v0[86];
                  v79 = v0[85];
                  v58 = v0[78];
                  (*(v57 + 32))(v56, v0[82]);
                  v59 = sub_22A4DB77C();
                  v60 = [v58 actionSetWithUUID_];
                  v0[111] = v60;

                  (*(v57 + 8))(v56, v79);
                  if (v60)
                  {
                    v76 = sub_22981667C(v48, sub_229628A88);
                    sub_229562F68(0, &qword_27D87D4D8, off_278666048);
                    v0[10] = sub_229562F68(0, &qword_281401C20, off_278666020);
                    v0[11] = &off_283CDD088;
                    v0[7] = v60;
                    v73 = v0 + 7;
                    v0[52] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C370, &qword_22A578090);
                    v0[49] = v76;
                    v77 = v60;
                    v78 = swift_task_alloc();
                    v0[112] = v78;
                    *v78 = v0;
                    v78[1] = sub_22980F8BC;
                    v65 = v0[77];
                    v66 = v0[76];
                    v67 = (v0 + 49);
                    goto LABEL_58;
                  }

                  v1 = 0xEB00000000736569;
                  v46 = v55;
                }
              }

              else
              {
              }
            }

            v45 = v0[109] + 1;
            if (v45 == v0[108])
            {
              goto LABEL_48;
            }
          }

LABEL_61:
          __break(1u);
          return result;
        }

LABEL_48:
      }
    }
  }

  v61 = v0[78];
  v0[71] = sub_22981667C(v0[75], sub_229628A88);
  sub_2297FCFD4(0x726F737365636341, v1, v0 + 29);
  sub_22953EAE4((v0 + 29), &unk_27D87FC20, &unk_22A578810);
  sub_2297FCFD4(0x736D6F6F52, 0xE500000000000000, v0 + 33);
  sub_22953EAE4((v0 + 33), &unk_27D87FC20, &unk_22A578810);
  sub_2297FCFD4(0x73656E656353, 0xE600000000000000, v0 + 37);
  sub_22953EAE4((v0 + 37), &unk_27D87FC20, &unk_22A578810);
  sub_229562F68(0, &qword_27D87D4D8, off_278666048);
  v0[5] = sub_229562F68(0, &qword_2814017B0, off_278666198);
  v0[6] = &off_283CE7050;
  v0[2] = v61;
  v62 = v0[71];
  v0[44] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C370, &qword_22A578090);
  v0[41] = v62;
  v63 = v61;
  v64 = swift_task_alloc();
  v0[114] = v64;
  *v64 = v0;
  v64[1] = sub_22980FFA8;
  v65 = v0[77];
  v66 = v0[76];
  v67 = (v0 + 41);
  v68 = (v0 + 2);
LABEL_50:

  return sub_229709F5C(v68, v67, v66, v65);
}

uint64_t sub_22980E234()
{
  *(*v1 + 776) = v0;

  if (v0)
  {

    v2 = sub_2298102CC;
  }

  else
  {
    v2 = sub_22980E37C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22980E37C()
{
  v3 = *(v1 + 744) + 1;
  if (v3 == *(v1 + 736))
  {
LABEL_2:

    if (*(*(v1 + 600) + 16))
    {
      v4 = sub_229543DBC(0x736D6F6F52, 0xE500000000000000);
      if (v5)
      {
        sub_2295404B0(*(*(v1 + 600) + 56) + 32 * v4, v1 + 168);
        *(v1 + 784) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881E90, &qword_22A5788A0);
        if (swift_dynamicCast())
        {
          result = *(v1 + 584);
          *(v1 + 792) = result;
          v7 = *(result + 16);
          *(v1 + 800) = v7;
          if (v7)
          {
            v8 = 0;
            v9 = MEMORY[0x277D837D0];
            while (1)
            {
              *(v1 + 808) = v8;
              v10 = *(v1 + 792);
              if (v8 >= *(v10 + 16))
              {
                break;
              }

              v2 = *(v10 + 8 * v8 + 32);
              *(v1 + 816) = v2;
              if (*(v2 + 16))
              {

                v11 = sub_229543DBC(0x696669746E656449, 0xEA00000000007265);
                if (v12 & 1) != 0 && (sub_2295404B0(*(v2 + 56) + 32 * v11, v1 + 424), (swift_dynamicCast()))
                {
                  v13 = *(v1 + 688);
                  v14 = *(v1 + 680);
                  v15 = *(v1 + 664);
                  sub_22A4DB75C();

                  if ((*(v13 + 48))(v15, 1, v14) == 1)
                  {
                    v16 = *(v1 + 664);

                    result = sub_22953EAE4(v16, &unk_27D87D2A0, &unk_22A578BD0);
                  }

                  else
                  {
                    v17 = v9;
                    v18 = *(v1 + 704);
                    v19 = *(v1 + 688);
                    v20 = *(v1 + 680);
                    v21 = *(v1 + 624);
                    (*(v19 + 32))(v18, *(v1 + 664), v20);
                    v22 = sub_22A4DB77C();
                    v0 = [v21 roomWithUUID_];
                    *(v1 + 824) = v0;

                    (*(v19 + 8))(v18, v20);
                    if (v0)
                    {
                      goto LABEL_52;
                    }

                    v9 = v17;
                  }
                }

                else
                {
                }
              }

              v8 = *(v1 + 808) + 1;
              if (v8 == *(v1 + 800))
              {
                goto LABEL_27;
              }
            }

            __break(1u);
            goto LABEL_56;
          }

LABEL_27:
        }
      }
    }

    v33 = 0x73656E656353;
    if (*(*(v1 + 600) + 16))
    {
      v34 = sub_229543DBC(0x73656E656353, 0xE600000000000000);
      if (v35)
      {
        sub_2295404B0(*(*(v1 + 600) + 56) + 32 * v34, v1 + 200);
        *(v1 + 848) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881E90, &qword_22A5788A0);
        if (swift_dynamicCast())
        {
          result = *(v1 + 576);
          *(v1 + 856) = result;
          v36 = *(result + 16);
          *(v1 + 864) = v36;
          if (v36)
          {
            v37 = 0;
            v38 = MEMORY[0x277D837D0];
            v39 = 0x696669746E656449;
            while (1)
            {
              *(v1 + 872) = v37;
              v40 = *(v1 + 856);
              if (v37 >= *(v40 + 16))
              {
                break;
              }

              v41 = *(v40 + 8 * v37 + 32);
              *(v1 + 880) = v41;
              if (*(v41 + 16))
              {

                v42 = sub_229543DBC(v39, 0xEA00000000007265);
                if (v43 & 1) != 0 && (sub_2295404B0(*(v41 + 56) + 32 * v42, v1 + 360), (swift_dynamicCast()))
                {
                  v44 = *(v1 + 688);
                  v45 = *(v1 + 680);
                  v46 = *(v1 + 656);
                  sub_22A4DB75C();

                  if ((*(v44 + 48))(v46, 1, v45) == 1)
                  {
                    v47 = *(v1 + 656);

                    result = sub_22953EAE4(v47, &unk_27D87D2A0, &unk_22A578BD0);
                  }

                  else
                  {
                    v48 = v39;
                    v49 = v33;
                    v50 = v38;
                    v51 = *(v1 + 696);
                    v52 = *(v1 + 688);
                    v74 = *(v1 + 680);
                    v53 = *(v1 + 624);
                    (*(v52 + 32))(v51, *(v1 + 656));
                    v54 = sub_22A4DB77C();
                    v55 = [v53 actionSetWithUUID_];
                    *(v1 + 888) = v55;

                    (*(v52 + 8))(v51, v74);
                    if (v55)
                    {
                      v71 = sub_22981667C(v41, sub_229628A88);
                      sub_229562F68(0, &qword_27D87D4D8, off_278666048);
                      *(v1 + 80) = sub_229562F68(0, &qword_281401C20, off_278666020);
                      *(v1 + 88) = &off_283CDD088;
                      *(v1 + 56) = v55;
                      v68 = v1 + 56;
                      *(v1 + 416) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C370, &qword_22A578090);
                      *(v1 + 392) = v71;
                      v72 = v55;
                      v73 = swift_task_alloc();
                      *(v1 + 896) = v73;
                      *v73 = v1;
                      v73[1] = sub_22980F8BC;
                      v60 = *(v1 + 616);
                      v61 = *(v1 + 608);
                      v62 = v1 + 392;
                      goto LABEL_54;
                    }

                    v38 = v50;
                    v33 = v49;
                    v39 = v48;
                  }
                }

                else
                {
                }
              }

              v37 = *(v1 + 872) + 1;
              if (v37 == *(v1 + 864))
              {
                goto LABEL_43;
              }
            }

LABEL_56:
            __break(1u);
            return result;
          }

LABEL_43:
        }
      }
    }

    v56 = *(v1 + 624);
    *(v1 + 568) = sub_22981667C(*(v1 + 600), sub_229628A88);
    sub_2297FCFD4(0x726F737365636341, 0xEB00000000736569, (v1 + 232));
    sub_22953EAE4(v1 + 232, &unk_27D87FC20, &unk_22A578810);
    sub_2297FCFD4(0x736D6F6F52, 0xE500000000000000, (v1 + 264));
    sub_22953EAE4(v1 + 264, &unk_27D87FC20, &unk_22A578810);
    sub_2297FCFD4(v33, 0xE600000000000000, (v1 + 296));
    sub_22953EAE4(v1 + 296, &unk_27D87FC20, &unk_22A578810);
    sub_229562F68(0, &qword_27D87D4D8, off_278666048);
    *(v1 + 40) = sub_229562F68(0, &qword_2814017B0, off_278666198);
    *(v1 + 48) = &off_283CE7050;
    *(v1 + 16) = v56;
    v57 = *(v1 + 568);
    *(v1 + 352) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C370, &qword_22A578090);
    *(v1 + 328) = v57;
    v58 = v56;
    v59 = swift_task_alloc();
    *(v1 + 912) = v59;
    *v59 = v1;
    v59[1] = sub_22980FFA8;
    v60 = *(v1 + 616);
    v61 = *(v1 + 608);
    v62 = v1 + 328;
    v63 = v1 + 16;
    goto LABEL_45;
  }

  while (1)
  {
    *(v1 + 744) = v3;
    v27 = *(v1 + 728);
    if (v3 >= *(v27 + 16))
    {
      break;
    }

    v28 = *(v27 + 8 * v3 + 32);
    *(v1 + 752) = v28;
    if (*(v28 + 16))
    {

      v0 = v28;
      v29 = sub_229543DBC(0x696669746E656449, 0xEA00000000007265);
      if (v30)
      {
        v0 = *(v1 + 720);
        sub_2295404B0(*(v28 + 56) + 32 * v29, v1 + 488);
        if (swift_dynamicCast())
        {
          v31 = *(v1 + 688);
          v32 = *(v1 + 680);
          v2 = *(v1 + 672);
          sub_22A4DB75C();

          if ((*(v31 + 48))(v2, 1, v32) == 1)
          {
            v0 = *(v1 + 672);

            sub_22953EAE4(v0, &unk_27D87D2A0, &unk_22A578BD0);
            goto LABEL_20;
          }

          v2 = *(v1 + 712);
          v23 = *(v1 + 688);
          v24 = *(v1 + 680);
          v25 = *(v1 + 624);
          (*(v23 + 32))(v2, *(v1 + 672), v24);
          v26 = sub_22A4DB77C();
          v0 = [v25 accessoryWithUUID_];
          *(v1 + 760) = v0;

          (*(v23 + 8))(v2, v24);
          if (v0)
          {
            v64 = swift_task_alloc();
            *(v1 + 768) = v64;
            *v64 = v1;
            v64[1] = sub_22980E234;
            v65 = *(v1 + 616);
            v66 = *(v1 + 608);

            return sub_229625AB0(v28, v66, v65);
          }
        }
      }
    }

LABEL_20:
    v3 = *(v1 + 744) + 1;
    if (v3 == *(v1 + 736))
    {
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_52:
  v67 = sub_22981667C(v2, sub_22959E60C);
  sub_229562F68(0, &qword_27D87D4D8, off_278666048);
  *(v1 + 120) = sub_229562F68(0, &unk_2814017A0, off_278666308);
  *(v1 + 128) = &off_283CDD0E8;
  *(v1 + 96) = v0;
  v68 = v1 + 96;
  *(v1 + 480) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C370, &qword_22A578090);
  *(v1 + 456) = v67;
  v69 = v0;
  v70 = swift_task_alloc();
  *(v1 + 832) = v70;
  *v70 = v1;
  v70[1] = sub_22980EE84;
  v60 = *(v1 + 616);
  v61 = *(v1 + 608);
  v62 = v1 + 456;
LABEL_54:
  v63 = v68;
LABEL_45:

  return sub_229709F5C(v63, v62, v61, v60);
}

uint64_t sub_22980EE84()
{
  v2 = *v1;
  *(*v1 + 840) = v0;

  if (v0)
  {

    v3 = sub_22980F7C8;
  }

  else
  {
    sub_22953EAE4(v2 + 456, &unk_27D87FC20, &unk_22A578810);
    __swift_destroy_boxed_opaque_existential_0((v2 + 96));
    v3 = sub_22980EFC0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22980EFC0()
{
  v2 = v0[103];

  v3 = v0[101] + 1;
  if (v3 == v0[100])
  {
LABEL_2:
    v4 = 0x73656E656353;

    if (*(v0[75] + 16))
    {
      v5 = sub_229543DBC(0x73656E656353, 0xE600000000000000);
      if (v6)
      {
        sub_2295404B0(*(v0[75] + 56) + 32 * v5, (v0 + 25));
        v0[106] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881E90, &qword_22A5788A0);
        if (swift_dynamicCast())
        {
          result = v0[72];
          v0[107] = result;
          v8 = *(result + 16);
          v0[108] = v8;
          if (v8)
          {
            v9 = 0;
            v10 = MEMORY[0x277D837D0];
            v11 = 0x696669746E656449;
            while (1)
            {
              v0[109] = v9;
              v12 = v0[107];
              if (v9 >= *(v12 + 16))
              {
                break;
              }

              v1 = *(v12 + 8 * v9 + 32);
              v0[110] = v1;
              if (*(v1 + 16))
              {

                v13 = sub_229543DBC(v11, 0xEA00000000007265);
                if (v14 & 1) != 0 && (sub_2295404B0(*(v1 + 56) + 32 * v13, (v0 + 45)), (swift_dynamicCast()))
                {
                  v15 = v0[86];
                  v16 = v0[85];
                  v17 = v0[82];
                  sub_22A4DB75C();

                  if ((*(v15 + 48))(v17, 1, v16) == 1)
                  {
                    v18 = v0[82];

                    result = sub_22953EAE4(v18, &unk_27D87D2A0, &unk_22A578BD0);
                  }

                  else
                  {
                    v19 = v11;
                    v20 = v4;
                    v21 = v10;
                    v22 = v0[87];
                    v23 = v0[86];
                    v51 = v0[85];
                    v24 = v0[78];
                    (*(v23 + 32))(v22, v0[82]);
                    v25 = sub_22A4DB77C();
                    v2 = [v24 actionSetWithUUID_];
                    v0[111] = v2;

                    (*(v23 + 8))(v22, v51);
                    if (v2)
                    {
                      goto LABEL_35;
                    }

                    v10 = v21;
                    v4 = v20;
                    v11 = v19;
                  }
                }

                else
                {
                }
              }

              v9 = v0[109] + 1;
              if (v9 == v0[108])
              {
                goto LABEL_27;
              }
            }

            __break(1u);
            return result;
          }

LABEL_27:
        }
      }
    }

    v36 = v0[78];
    v0[71] = sub_22981667C(v0[75], sub_229628A88);
    sub_2297FCFD4(0x726F737365636341, 0xEB00000000736569, v0 + 29);
    sub_22953EAE4((v0 + 29), &unk_27D87FC20, &unk_22A578810);
    sub_2297FCFD4(0x736D6F6F52, 0xE500000000000000, v0 + 33);
    sub_22953EAE4((v0 + 33), &unk_27D87FC20, &unk_22A578810);
    sub_2297FCFD4(v4, 0xE600000000000000, v0 + 37);
    sub_22953EAE4((v0 + 37), &unk_27D87FC20, &unk_22A578810);
    sub_229562F68(0, &qword_27D87D4D8, off_278666048);
    v0[5] = sub_229562F68(0, &qword_2814017B0, off_278666198);
    v0[6] = &off_283CE7050;
    v0[2] = v36;
    v37 = v0[71];
    v0[44] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C370, &qword_22A578090);
    v0[41] = v37;
    v38 = v36;
    v39 = swift_task_alloc();
    v0[114] = v39;
    *v39 = v0;
    v39[1] = sub_22980FFA8;
    v40 = v0[77];
    v41 = v0[76];
    v42 = (v0 + 41);
    v43 = (v0 + 2);
    goto LABEL_29;
  }

  while (1)
  {
    v0[101] = v3;
    v30 = v0[99];
    if (v3 >= *(v30 + 16))
    {
      break;
    }

    v31 = *(v30 + 8 * v3 + 32);
    v0[102] = v31;
    if (*(v31 + 16))
    {

      v2 = v31;
      v32 = sub_229543DBC(0x696669746E656449, 0xEA00000000007265);
      if (v33)
      {
        v2 = v0[98];
        sub_2295404B0(*(v31 + 56) + 32 * v32, (v0 + 53));
        if (swift_dynamicCast())
        {
          v34 = v0[86];
          v35 = v0[85];
          v1 = v0[83];
          sub_22A4DB75C();

          if ((*(v34 + 48))(v1, 1, v35) == 1)
          {
            v2 = v0[83];

            sub_22953EAE4(v2, &unk_27D87D2A0, &unk_22A578BD0);
            goto LABEL_20;
          }

          v1 = v0[88];
          v26 = v0[86];
          v27 = v0[85];
          v28 = v0[78];
          (*(v26 + 32))(v1, v0[83], v27);
          v29 = sub_22A4DB77C();
          v2 = [v28 roomWithUUID_];
          v0[103] = v2;

          (*(v26 + 8))(v1, v27);
          if (v2)
          {
            v44 = sub_22981667C(v31, sub_22959E60C);
            sub_229562F68(0, &qword_27D87D4D8, off_278666048);
            v0[15] = sub_229562F68(0, &unk_2814017A0, off_278666308);
            v0[16] = &off_283CDD0E8;
            v0[12] = v2;
            v45 = v0 + 12;
            v0[60] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C370, &qword_22A578090);
            v0[57] = v44;
            v46 = v2;
            v47 = swift_task_alloc();
            v0[104] = v47;
            *v47 = v0;
            v47[1] = sub_22980EE84;
            v40 = v0[77];
            v41 = v0[76];
            v42 = (v0 + 57);
            goto LABEL_33;
          }
        }
      }
    }

LABEL_20:
    v3 = v0[101] + 1;
    if (v3 == v0[100])
    {
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_35:
  v48 = sub_22981667C(v1, sub_229628A88);
  sub_229562F68(0, &qword_27D87D4D8, off_278666048);
  v0[10] = sub_229562F68(0, &qword_281401C20, off_278666020);
  v0[11] = &off_283CDD088;
  v0[7] = v2;
  v45 = v0 + 7;
  v0[52] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C370, &qword_22A578090);
  v0[49] = v48;
  v49 = v2;
  v50 = swift_task_alloc();
  v0[112] = v50;
  *v50 = v0;
  v50[1] = sub_22980F8BC;
  v40 = v0[77];
  v41 = v0[76];
  v42 = (v0 + 49);
LABEL_33:
  v43 = v45;
LABEL_29:

  return sub_229709F5C(v43, v42, v41, v40);
}

uint64_t sub_22980F7C8()
{
  v1 = v0[103];

  sub_22953EAE4((v0 + 57), &unk_27D87FC20, &unk_22A578810);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);

  v2 = v0[1];

  return v2();
}

uint64_t sub_22980F8BC()
{
  v2 = *v1;
  *(*v1 + 904) = v0;

  if (v0)
  {

    v3 = sub_22980FEB4;
  }

  else
  {
    sub_22953EAE4(v2 + 392, &unk_27D87FC20, &unk_22A578810);
    __swift_destroy_boxed_opaque_existential_0((v2 + 56));
    v3 = sub_22980F9F8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

void sub_22980F9F8()
{
  v1 = v0[111];

  for (i = v0[109] + 1; i != v0[108]; i = v0[109] + 1)
  {
    v0[109] = i;
    v17 = v0[107];
    if (i >= *(v17 + 16))
    {
      __break(1u);
      return;
    }

    v18 = *(v17 + 8 * i + 32);
    v0[110] = v18;
    if (*(v18 + 16))
    {

      v19 = sub_229543DBC(0x696669746E656449, 0xEA00000000007265);
      if (v20)
      {
        sub_2295404B0(*(v18 + 56) + 32 * v19, (v0 + 45));
        if (swift_dynamicCast())
        {
          v21 = v0[86];
          v22 = v0[85];
          v23 = v0[82];
          sub_22A4DB75C();

          if ((*(v21 + 48))(v23, 1, v22) == 1)
          {
            v24 = v0[82];

            sub_22953EAE4(v24, &unk_27D87D2A0, &unk_22A578BD0);
            continue;
          }

          v11 = v0[87];
          v12 = v0[86];
          v13 = v0[85];
          v14 = v0[78];
          (*(v12 + 32))(v11, v0[82], v13);
          v15 = sub_22A4DB77C();
          v16 = [v14 actionSetWithUUID_];
          v0[111] = v16;

          (*(v12 + 8))(v11, v13);
          if (v16)
          {
            v25 = sub_22981667C(v18, sub_229628A88);
            sub_229562F68(0, &qword_27D87D4D8, off_278666048);
            v0[10] = sub_229562F68(0, &qword_281401C20, off_278666020);
            v0[11] = &off_283CDD088;
            v0[7] = v16;
            v0[52] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C370, &qword_22A578090);
            v0[49] = v25;
            v26 = v16;
            v27 = swift_task_alloc();
            v0[112] = v27;
            *v27 = v0;
            v27[1] = sub_22980F8BC;
            v7 = v0[77];
            v8 = v0[76];
            v9 = (v0 + 49);
            v10 = (v0 + 7);
            goto LABEL_3;
          }
        }
      }
    }
  }

  v3 = v0[78];
  v0[71] = sub_22981667C(v0[75], sub_229628A88);
  sub_2297FCFD4(0x726F737365636341, 0xEB00000000736569, v0 + 29);
  sub_22953EAE4((v0 + 29), &unk_27D87FC20, &unk_22A578810);
  sub_2297FCFD4(0x736D6F6F52, 0xE500000000000000, v0 + 33);
  sub_22953EAE4((v0 + 33), &unk_27D87FC20, &unk_22A578810);
  sub_2297FCFD4(0x73656E656353, 0xE600000000000000, v0 + 37);
  sub_22953EAE4((v0 + 37), &unk_27D87FC20, &unk_22A578810);
  sub_229562F68(0, &qword_27D87D4D8, off_278666048);
  v0[5] = sub_229562F68(0, &qword_2814017B0, off_278666198);
  v0[6] = &off_283CE7050;
  v0[2] = v3;
  v4 = v0[71];
  v0[44] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C370, &qword_22A578090);
  v0[41] = v4;
  v5 = v3;
  v6 = swift_task_alloc();
  v0[114] = v6;
  *v6 = v0;
  v6[1] = sub_22980FFA8;
  v7 = v0[77];
  v8 = v0[76];
  v9 = (v0 + 41);
  v10 = (v0 + 2);
LABEL_3:

  sub_229709F5C(v10, v9, v8, v7);
}

uint64_t sub_22980FEB4()
{
  v1 = v0[111];

  sub_22953EAE4((v0 + 49), &unk_27D87FC20, &unk_22A578810);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);

  v2 = v0[1];

  return v2();
}

uint64_t sub_22980FFA8()
{
  v2 = *v1;
  *(*v1 + 920) = v0;

  if (v0)
  {
    v3 = sub_229810398;
  }

  else
  {
    sub_22953EAE4(v2 + 328, &unk_27D87FC20, &unk_22A578810);
    __swift_destroy_boxed_opaque_existential_0((v2 + 16));
    v3 = sub_2298100DC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2298100DC()
{
  v1 = v0[78];
  sub_22A4DD5EC();
  sub_22A4DD06C();
  v2 = v1;
  v3 = sub_22A4DD05C();
  v4 = sub_22A4DDCCC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[78];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v5;
    *v7 = v5;
    v8 = v5;
    _os_log_impl(&dword_229538000, v3, v4, "%@ Did save home demo configuration", v6, 0xCu);
    sub_22953EAE4(v7, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v7, -1, -1);
    MEMORY[0x22AAD4E50](v6, -1, -1);
  }

  v9 = v0[81];
  v10 = v3;
  v11 = v0[80];
  v12 = v0[79];

  (*(v11 + 8))(v9, v12);

  v13 = v0[1];

  return v13();
}

uint64_t sub_2298102CC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_229810398()
{
  sub_22953EAE4(v0 + 328, &unk_27D87FC20, &unk_22A578810);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22981047C()
{
  v1[10] = v0;
  v2 = sub_22A4DD07C();
  v1[11] = v2;
  v1[12] = *(v2 - 8);
  v1[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22981053C, 0, 0);
}

uint64_t sub_22981053C()
{
  v1 = [*(v0 + 80) rooms];
  sub_229562F68(0, &unk_2814017A0, off_278666308);
  v2 = sub_22A4DD83C();
  *(v0 + 112) = v2;

  *(v0 + 56) = v2;
  v3 = swift_task_alloc();
  *(v0 + 120) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87C3D0, &qword_22A576EA8);
  v5 = sub_229579858(&qword_27D881790, &qword_27D87C3D0, &qword_22A576EA8);
  *v3 = v0;
  v3[1] = sub_229810688;

  return MEMORY[0x282167808](&unk_22A585220, 0, v4, v5);
}

uint64_t sub_229810688()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_2298112FC;
  }

  else
  {
    v2 = sub_2298107B8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2298107B8()
{
  v1 = [*(v0 + 80) actionSets];
  if (v1)
  {
    v5 = v1;
    sub_229562F68(0, &qword_281401C20, off_278666020);
    v6 = sub_22A4DD83C();
    *(v0 + 136) = v6;

    *(v0 + 64) = v6;
    v7 = swift_task_alloc();
    *(v0 + 144) = v7;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D558, &unk_22A578890);
    v4 = sub_229579858(&qword_27D881798, &qword_27D87D558, &unk_22A578890);
    *v7 = v0;
    v7[1] = sub_22981090C;
    v1 = &unk_22A585228;
    v2 = 0;
    v3 = v8;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x282167808](v1, v2, v3, v4);
}

uint64_t sub_22981090C()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_229811360;
  }

  else
  {
    v2 = sub_229810A3C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_229810A3C()
{
  v1 = [*(v0 + 80) accessories];
  sub_229562F68(0, &qword_281401C30, off_278665FE8);
  v2 = sub_22A4DD83C();
  *(v0 + 160) = v2;

  *(v0 + 72) = v2;
  v3 = swift_task_alloc();
  *(v0 + 168) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D548, &unk_22A578880);
  v5 = sub_229579858(&qword_27D881788, &qword_27D87D548, &unk_22A578880);
  *v3 = v0;
  v3[1] = sub_229810B88;

  return MEMORY[0x282167808](&unk_22A585230, 0, v4, v5);
}

uint64_t sub_229810B88()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_2298113C4;
  }

  else
  {
    v2 = sub_229810CB8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_229810CB8()
{
  v1 = sub_229809210(0x53555F6E65, 0xE500000000000000);
  v0[23] = v2;
  if (v2)
  {
    v3 = v1;
    v4 = v2;
    v5 = swift_task_alloc();
    v0[24] = v5;
    *v5 = v0;
    v5[1] = sub_229810E44;

    return sub_22974C028(v3, v4);
  }

  else
  {
    v7 = v0[10];
    sub_229562F68(0, &qword_27D87D4D8, off_278666048);
    v0[5] = sub_229562F68(0, &qword_2814017B0, off_278666198);
    v0[6] = &off_283CE7050;
    v0[2] = v7;
    v8 = v7;
    v9 = swift_task_alloc();
    v0[26] = v9;
    *v9 = v0;
    v9[1] = sub_229811050;

    return sub_22970A4FC((v0 + 2), 0);
  }
}

uint64_t sub_229810E44()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_229811428;
  }

  else
  {
    v2 = sub_229810F58;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_229810F58()
{

  v1 = v0[10];
  sub_229562F68(0, &qword_27D87D4D8, off_278666048);
  v0[5] = sub_229562F68(0, &qword_2814017B0, off_278666198);
  v0[6] = &off_283CE7050;
  v0[2] = v1;
  v2 = v1;
  v3 = swift_task_alloc();
  v0[26] = v3;
  *v3 = v0;
  v3[1] = sub_229811050;

  return sub_22970A4FC((v0 + 2), 0);
}

uint64_t sub_229811050()
{
  v2 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v3 = sub_229811494;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0((v2 + 16));
    v3 = sub_22981116C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22981116C()
{
  v1 = v0[10];
  sub_22A4DD5EC();
  sub_22A4DD06C();
  v2 = v1;
  v3 = sub_22A4DD05C();
  v4 = sub_22A4DDCCC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[10];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v5;
    *v7 = v5;
    v8 = v5;
    _os_log_impl(&dword_229538000, v3, v4, "%@ Did reset demo configuration", v6, 0xCu);
    sub_22953EAE4(v7, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v7, -1, -1);
    MEMORY[0x22AAD4E50](v6, -1, -1);
  }

  v10 = v0[12];
  v9 = v0[13];
  v11 = v0[11];

  (*(v10 + 8))(v9, v11);

  v12 = v0[1];

  return v12();
}

uint64_t sub_2298112FC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_229811360()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2298113C4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_229811428()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_229811494()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_229811500(uint64_t a1, uint64_t a2)
{
  v3[21] = a2;
  v3[22] = v2;
  v3[20] = a1;
  v6 = sub_22A4DD07C();
  v3[23] = v6;
  v3[24] = *(v6 - 8);
  v3[25] = swift_task_alloc();
  v7 = swift_task_alloc();
  v3[26] = v7;
  *v7 = v3;
  v7[1] = sub_229811608;

  return sub_229808024(a1, a2);
}

uint64_t sub_229811608(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 216) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_229811758, 0, 0);
  }
}

uint64_t sub_229811758()
{
  v57 = v0;
  if (*(v0 + 216))
  {
    v1 = sub_229809210(*(v0 + 160), *(v0 + 168));
    *(v0 + 224) = v2;
    if (v2)
    {
      v3 = v1;
      v4 = v2;
      v5 = [*(v0 + 176) name];
      v6 = sub_22A4DD5EC();
      v8 = v7;

      if (v6 == v3 && v4 == v8)
      {
      }

      else
      {
        v10 = sub_22A4DE60C();

        if ((v10 & 1) == 0)
        {
          v11 = swift_task_alloc();
          *(v0 + 232) = v11;
          *v11 = v0;
          v11[1] = sub_229811E6C;

          return sub_22974C028(v3, v4);
        }
      }
    }

    if (*(*(v0 + 216) + 16))
    {
      v28 = sub_229543DBC(0x726F737365636341, 0xEB00000000736569);
      if (v29)
      {
        sub_2295404B0(*(*(v0 + 216) + 56) + 32 * v28, v0 + 16);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
        v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881E90, &qword_22A5788A0);
        if (swift_dynamicCast())
        {
          v32 = *(v0 + 168);
          v31 = *(v0 + 176);
          v33 = *(v0 + 160);
          v34 = *(v0 + 144);
          *(v0 + 248) = v34;
          *(v0 + 152) = v34;
          v35 = swift_task_alloc();
          *(v0 + 256) = v35;
          v35[2] = v31;
          v35[3] = v33;
          v35[4] = v32;
          v36 = swift_task_alloc();
          *(v0 + 264) = v36;
          v37 = sub_229579858(&qword_27D87D570, &unk_27D881E90, &qword_22A5788A0);
          *v36 = v0;
          v36[1] = sub_2298123DC;
          v38 = &unk_22A5851D0;
LABEL_27:

          return MEMORY[0x282167808](v38, v35, v30, v37);
        }
      }
    }

    if (*(*(v0 + 216) + 16))
    {
      v39 = sub_229543DBC(0x736D6F6F52, 0xE500000000000000);
      if (v40)
      {
        sub_2295404B0(*(*(v0 + 216) + 56) + 32 * v39, v0 + 48);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
        v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881E90, &qword_22A5788A0);
        if (swift_dynamicCast())
        {
          v42 = *(v0 + 168);
          v41 = *(v0 + 176);
          v43 = *(v0 + 160);
          v44 = *(v0 + 128);
          *(v0 + 280) = v44;
          *(v0 + 136) = v44;
          v35 = swift_task_alloc();
          *(v0 + 288) = v35;
          v35[2] = v41;
          v35[3] = v43;
          v35[4] = v42;
          v45 = swift_task_alloc();
          *(v0 + 296) = v45;
          v37 = sub_229579858(&qword_27D87D570, &unk_27D881E90, &qword_22A5788A0);
          *v45 = v0;
          v45[1] = sub_22981282C;
          v38 = &unk_22A5851C0;
          goto LABEL_27;
        }
      }
    }

    if (*(*(v0 + 216) + 16) && (v46 = sub_229543DBC(0x73656E656353, 0xE600000000000000), (v47 & 1) != 0))
    {
      sub_2295404B0(*(*(v0 + 216) + 56) + 32 * v46, v0 + 80);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881E90, &qword_22A5788A0);
      if (swift_dynamicCast())
      {
        v49 = *(v0 + 168);
        v48 = *(v0 + 176);
        v50 = *(v0 + 160);
        v51 = *(v0 + 112);
        *(v0 + 312) = v51;
        *(v0 + 120) = v51;
        v35 = swift_task_alloc();
        *(v0 + 320) = v35;
        v35[2] = v48;
        v35[3] = v50;
        v35[4] = v49;
        v52 = swift_task_alloc();
        *(v0 + 328) = v52;
        v37 = sub_229579858(&qword_27D87D570, &unk_27D881E90, &qword_22A5788A0);
        *v52 = v0;
        v52[1] = sub_229812B4C;
        v38 = &unk_22A5851B0;
        goto LABEL_27;
      }
    }

    else
    {
    }
  }

  else
  {
    v13 = *(v0 + 176);
    sub_22A4DD5EC();
    sub_22A4DD06C();
    v14 = v13;

    v15 = sub_22A4DD05C();
    v16 = sub_22A4DDCCC();

    v17 = os_log_type_enabled(v15, v16);
    v18 = *(v0 + 192);
    v19 = *(v0 + 200);
    v20 = *(v0 + 184);
    if (v17)
    {
      v55 = *(v0 + 200);
      v22 = *(v0 + 168);
      v21 = *(v0 + 176);
      v23 = *(v0 + 160);
      v54 = *(v0 + 184);
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v56 = v26;
      *v24 = 138412546;
      *(v24 + 4) = v21;
      *v25 = v21;
      *(v24 + 12) = 2080;
      v27 = v21;
      *(v24 + 14) = sub_2295A3E30(v23, v22, &v56);
      _os_log_impl(&dword_229538000, v15, v16, "%@ No demo configuration found for %s", v24, 0x16u);
      sub_22953EAE4(v25, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v25, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x22AAD4E50](v26, -1, -1);
      MEMORY[0x22AAD4E50](v24, -1, -1);

      (*(v18 + 8))(v55, v54);
    }

    else
    {

      (*(v18 + 8))(v19, v20);
    }
  }

  v53 = *(v0 + 8);

  return v53();
}

uint64_t sub_229811E6C()
{
  *(*v1 + 240) = v0;

  if (v0)
  {
    v2 = sub_229812C9C;
  }

  else
  {
    v2 = sub_229811F80;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_229811F80()
{

  if (*(v0[27] + 16))
  {
    v1 = sub_229543DBC(0x726F737365636341, 0xEB00000000736569);
    if (v2)
    {
      sub_2295404B0(*(v0[27] + 56) + 32 * v1, (v0 + 2));
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
      v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881E90, &qword_22A5788A0);
      if (swift_dynamicCast())
      {
        v5 = v0[21];
        v4 = v0[22];
        v6 = v0[20];
        v7 = v0[18];
        v0[31] = v7;
        v0[19] = v7;
        v8 = swift_task_alloc();
        v0[32] = v8;
        v8[2] = v4;
        v8[3] = v6;
        v8[4] = v5;
        v9 = swift_task_alloc();
        v0[33] = v9;
        v10 = sub_229579858(&qword_27D87D570, &unk_27D881E90, &qword_22A5788A0);
        *v9 = v0;
        v9[1] = sub_2298123DC;
        v11 = &unk_22A5851D0;
LABEL_13:

        return MEMORY[0x282167808](v11, v8, v3, v10);
      }
    }
  }

  if (*(v0[27] + 16))
  {
    v12 = sub_229543DBC(0x736D6F6F52, 0xE500000000000000);
    if (v13)
    {
      sub_2295404B0(*(v0[27] + 56) + 32 * v12, (v0 + 6));
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
      v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881E90, &qword_22A5788A0);
      if (swift_dynamicCast())
      {
        v15 = v0[21];
        v14 = v0[22];
        v16 = v0[20];
        v17 = v0[16];
        v0[35] = v17;
        v0[17] = v17;
        v8 = swift_task_alloc();
        v0[36] = v8;
        v8[2] = v14;
        v8[3] = v16;
        v8[4] = v15;
        v18 = swift_task_alloc();
        v0[37] = v18;
        v10 = sub_229579858(&qword_27D87D570, &unk_27D881E90, &qword_22A5788A0);
        *v18 = v0;
        v18[1] = sub_22981282C;
        v11 = &unk_22A5851C0;
        goto LABEL_13;
      }
    }
  }

  if (*(v0[27] + 16) && (v19 = sub_229543DBC(0x73656E656353, 0xE600000000000000), (v20 & 1) != 0))
  {
    sub_2295404B0(*(v0[27] + 56) + 32 * v19, (v0 + 10));

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881E90, &qword_22A5788A0);
    if (swift_dynamicCast())
    {
      v22 = v0[21];
      v21 = v0[22];
      v23 = v0[20];
      v24 = v0[14];
      v0[39] = v24;
      v0[15] = v24;
      v8 = swift_task_alloc();
      v0[40] = v8;
      v8[2] = v21;
      v8[3] = v23;
      v8[4] = v22;
      v25 = swift_task_alloc();
      v0[41] = v25;
      v10 = sub_229579858(&qword_27D87D570, &unk_27D881E90, &qword_22A5788A0);
      *v25 = v0;
      v25[1] = sub_229812B4C;
      v11 = &unk_22A5851B0;
      goto LABEL_13;
    }
  }

  else
  {
  }

  v26 = v0[1];

  return v26();
}

uint64_t sub_2298123DC()
{
  *(*v1 + 272) = v0;

  if (v0)
  {
    v2 = sub_229812D10;
  }

  else
  {
    v2 = sub_229812514;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_229812514()
{
  if (*(v0[27] + 16))
  {
    v1 = sub_229543DBC(0x736D6F6F52, 0xE500000000000000);
    if (v2)
    {
      sub_2295404B0(*(v0[27] + 56) + 32 * v1, (v0 + 6));
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
      v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881E90, &qword_22A5788A0);
      if (swift_dynamicCast())
      {
        v5 = v0[21];
        v4 = v0[22];
        v6 = v0[20];
        v7 = v0[16];
        v0[35] = v7;
        v0[17] = v7;
        v8 = swift_task_alloc();
        v0[36] = v8;
        v8[2] = v4;
        v8[3] = v6;
        v8[4] = v5;
        v9 = swift_task_alloc();
        v0[37] = v9;
        v10 = sub_229579858(&qword_27D87D570, &unk_27D881E90, &qword_22A5788A0);
        *v9 = v0;
        v9[1] = sub_22981282C;
        v11 = &unk_22A5851C0;
LABEL_9:

        return MEMORY[0x282167808](v11, v8, v3, v10);
      }
    }
  }

  if (*(v0[27] + 16) && (v12 = sub_229543DBC(0x73656E656353, 0xE600000000000000), (v13 & 1) != 0))
  {
    sub_2295404B0(*(v0[27] + 56) + 32 * v12, (v0 + 10));

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881E90, &qword_22A5788A0);
    if (swift_dynamicCast())
    {
      v15 = v0[21];
      v14 = v0[22];
      v16 = v0[20];
      v17 = v0[14];
      v0[39] = v17;
      v0[15] = v17;
      v8 = swift_task_alloc();
      v0[40] = v8;
      v8[2] = v14;
      v8[3] = v16;
      v8[4] = v15;
      v18 = swift_task_alloc();
      v0[41] = v18;
      v10 = sub_229579858(&qword_27D87D570, &unk_27D881E90, &qword_22A5788A0);
      *v18 = v0;
      v18[1] = sub_229812B4C;
      v11 = &unk_22A5851B0;
      goto LABEL_9;
    }
  }

  else
  {
  }

  v19 = v0[1];

  return v19();
}

uint64_t sub_22981282C()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_229812D7C;
  }

  else
  {
    v2 = sub_229812964;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_229812964()
{
  if (*(v0[27] + 16) && (v1 = sub_229543DBC(0x73656E656353, 0xE600000000000000), (v2 & 1) != 0))
  {
    sub_2295404B0(*(v0[27] + 56) + 32 * v1, (v0 + 10));

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881E90, &qword_22A5788A0);
    if (swift_dynamicCast())
    {
      v5 = v0[21];
      v4 = v0[22];
      v6 = v0[20];
      v7 = v0[14];
      v0[39] = v7;
      v0[15] = v7;
      v8 = swift_task_alloc();
      v0[40] = v8;
      v8[2] = v4;
      v8[3] = v6;
      v8[4] = v5;
      v9 = swift_task_alloc();
      v0[41] = v9;
      v10 = sub_229579858(&qword_27D87D570, &unk_27D881E90, &qword_22A5788A0);
      *v9 = v0;
      v9[1] = sub_229812B4C;

      return MEMORY[0x282167808](&unk_22A5851B0, v8, v3, v10);
    }
  }

  else
  {
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_229812B4C()
{
  v2 = *v1;
  *(v2 + 336) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_229812DE8, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_229812C9C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_229812D10()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_229812D7C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_229812DE8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_229812E5C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v31 = a4;
  v29 = a3;
  ObjectType = swift_getObjectType();
  v33 = sub_22A4DD26C();
  v36 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v32 = &ObjectType - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22A4DD29C();
  v34 = *(v9 - 8);
  v35 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &ObjectType - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22A4DB7DC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &ObjectType - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = [v5 workQueue];
  (*(v13 + 16))(v15, a2, v12);
  v16 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v17 = (v14 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  *(v18 + 16) = v5;
  *(v18 + 24) = a1;
  (*(v13 + 32))(v18 + v16, v15, v12);
  v19 = (v18 + v17);
  v20 = v31;
  *v19 = v29;
  v19[1] = v20;
  *(v18 + ((v17 + 23) & 0xFFFFFFFFFFFFFFF8)) = ObjectType;
  aBlock[4] = sub_229816B9C;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22953E640;
  aBlock[3] = &block_descriptor_42;
  v21 = _Block_copy(aBlock);
  v22 = v5;
  v23 = a1;

  sub_22A4DD28C();
  v37 = MEMORY[0x277D84F90];
  sub_22953E140(&qword_281401CF0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87CEA0, &unk_22A577A40);
  sub_229579858(qword_281401CB0, &unk_27D87CEA0, &unk_22A577A40);
  v25 = v32;
  v24 = v33;
  sub_22A4DE03C();
  v26 = v30;
  MEMORY[0x22AAD0F80](0, v11, v25, v21);
  _Block_release(v21);

  (*(v36 + 8))(v25, v24);
  (*(v34 + 8))(v11, v35);
}

void sub_22981324C(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(), void *a5, uint64_t a6)
{
  v31 = a2;
  v32 = a4;
  v30[1] = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D2A0, &unk_22A578BD0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v30 - v10;
  v12 = [objc_opt_self() allMessageDestinations];
  v13 = [objc_allocWithZone(MEMORY[0x277D0F818]) initWithName:@"HomeUtilAddDemoModeAccessory" destination:v12 payload:0];

  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = v13;
  v14[4] = a6;
  v37 = sub_229816C3C;
  v38 = v14;
  aBlock = MEMORY[0x277D85DD0];
  v34 = 1107296256;
  v35 = sub_2297986BC;
  v36 = &block_descriptor_41;
  v15 = _Block_copy(&aBlock);
  v16 = a1;
  v17 = v13;

  [v17 setResponseHandler_];
  _Block_release(v15);
  v18 = sub_22A4DB7DC();
  v19 = *(v18 - 8);
  (*(v19 + 56))(v11, 1, 1, v18);
  sub_229562F68(0, &qword_281401770, 0x277CCABB0);
  v20 = sub_22A4DDEBC();
  v21 = 0;
  if ((*(v19 + 48))(v11, 1, v18) != 1)
  {
    v21 = sub_22A4DB77C();
    (*(v19 + 8))(v11, v18);
  }

  v22 = [objc_allocWithZone(HMDAccessoryNetworkCredential) initWithNetworkRouterUUID:v21 clientIdentifier:v20 wiFiPSK:0];

  v23 = objc_allocWithZone(HMDNewPairedAccessoryServerInfo);
  v24 = v22;
  v25 = sub_22A4DB77C();
  v26 = [v23 initWithServer:v31 home:v16 primaryAccessoryUUID:v25 certificationStatus:2 hostAccessory:0 networkCredential:v24 pairingEvent:0];

  v37 = v32;
  v38 = a5;
  aBlock = MEMORY[0x277D85DD0];
  v34 = 1107296256;
  v35 = sub_2295AAF60;
  v36 = &block_descriptor_44_0;
  v27 = _Block_copy(&aBlock);
  v28 = v17;
  v29 = v26;

  [v16 _processNewlyPairedAccessoryServerInfo_message_completionHandler_];
  _Block_release(v27);
}

uint64_t sub_229813610(void *a1, unint64_t a2, void *a3, void *a4)
{
  v8 = sub_22A4DD07C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v54[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v14 = &v54[-v13];
  if (a1)
  {
    v15 = a1;
    sub_2297A46D4();
    v16 = a1;
    v17 = a3;
    v18 = a4;
    v19 = sub_22A4DD05C();
    v20 = sub_22A4DDCEC();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v58 = v9;
      v23 = v22;
      v24 = swift_slowAlloc();
      v56 = v24;
      *v21 = 136315650;
      v59 = 91;
      v60 = 0xE100000000000000;
      v61 = v24;
      v25 = [v17 logIdentifier];
      v26 = sub_22A4DD5EC();
      v57 = v8;
      v27 = v26;
      v29 = v28;

      v55 = v20;
      MEMORY[0x22AAD08C0](v27, v29);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v30 = sub_2295A3E30(v59, v60, &v61);

      *(v21 + 4) = v30;
      *(v21 + 12) = 2112;
      *(v21 + 14) = v18;
      *v23 = v18;
      *(v21 + 22) = 2112;
      v31 = a1;
      v32 = v18;
      v33 = _swift_stdlib_bridgeErrorToNSError();
      *(v21 + 24) = v33;
      v23[1] = v33;
      _os_log_impl(&dword_229538000, v19, v55, "%s Responded to %@ with %@", v21, 0x20u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7D0, &unk_22A578D90);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v23, -1, -1);
      v34 = v56;
      __swift_destroy_boxed_opaque_existential_0(v56);
      MEMORY[0x22AAD4E50](v34, -1, -1);
      MEMORY[0x22AAD4E50](v21, -1, -1);

      return (*(v58 + 8))(v14, v57);
    }

    else
    {

      return (*(v9 + 8))(v14, v8);
    }
  }

  else
  {
    v58 = v9;
    sub_2297A46D4();

    v36 = a3;
    v37 = a4;
    v38 = sub_22A4DD05C();
    v39 = sub_22A4DDCCC();

    if (os_log_type_enabled(v38, v39))
    {
      v55 = v39;
      v57 = v8;
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v56 = v42;
      *v40 = 136315650;
      v59 = 91;
      v60 = 0xE100000000000000;
      v61 = v42;
      v43 = [v36 logIdentifier];
      v44 = sub_22A4DD5EC();
      v46 = v45;

      MEMORY[0x22AAD08C0](v44, v46);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v47 = sub_2295A3E30(v59, v60, &v61);

      *(v40 + 4) = v47;
      *(v40 + 12) = 2112;
      *(v40 + 14) = v37;
      *v41 = v37;
      *(v40 + 22) = 2080;
      v48 = v37;
      if (!a2)
      {
        sub_22956AC5C(MEMORY[0x277D84F90]);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
      v49 = sub_22A4DD4AC();
      v51 = v50;

      v52 = sub_2295A3E30(v49, v51, &v61);

      *(v40 + 24) = v52;
      _os_log_impl(&dword_229538000, v38, v55, "%s Responded to %@ with %s", v40, 0x20u);
      sub_22953EAE4(v41, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v41, -1, -1);
      v53 = v56;
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v53, -1, -1);
      MEMORY[0x22AAD4E50](v40, -1, -1);

      return (*(v58 + 8))(v12, v57);
    }

    else
    {

      return (*(v58 + 8))(v12, v8);
    }
  }
}

uint64_t sub_229813B9C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = swift_getObjectType();
  v3 = sub_22A4DB7DC();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = sub_22A4DD07C();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_229813CD0, 0, 0);
}

uint64_t sub_229813CD0()
{
  v60 = v0;
  v1 = [*(v0 + 16) isDemoAccessory];
  v2 = *(v0 + 24);
  v3 = *(v0 + 16);
  if (v1)
  {
    sub_2297A46D4();
    v4 = v2;
    v5 = v3;
    v6 = sub_22A4DD05C();
    v7 = sub_22A4DDCEC();

    v8 = os_log_type_enabled(v6, v7);
    v10 = *(v0 + 72);
    v9 = *(v0 + 80);
    v11 = *(v0 + 64);
    if (v8)
    {
      v55 = *(v0 + 80);
      v12 = *(v0 + 24);
      v53 = *(v0 + 16);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 136315394;
      v57 = v14;
      v58 = 91;
      v59 = 0xE100000000000000;
      v15 = [v12 logIdentifier];
      v16 = sub_22A4DD5EC();
      v18 = v17;

      MEMORY[0x22AAD08C0](v16, v18);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v19 = sub_2295A3E30(91, 0xE100000000000000, &v57);

      *(v13 + 4) = v19;
      *(v13 + 12) = 2080;
      v20 = [v53 shortDescription];
      v21 = sub_22A4DD5EC();
      v23 = v22;

      v24 = sub_2295A3E30(v21, v23, &v57);

      *(v13 + 14) = v24;
      _os_log_impl(&dword_229538000, v6, v7, "%s Unable to remove non-demo accessory: %s", v13, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v14, -1, -1);
      MEMORY[0x22AAD4E50](v13, -1, -1);

      (*(v10 + 8))(v55, v11);
    }

    else
    {

      (*(v10 + 8))(v9, v11);
    }

    [objc_opt_self() hmErrorWithCode_];
    swift_willThrow();

    v43 = *(v0 + 8);

    return v43();
  }

  else
  {
    sub_2297A46D4();
    v25 = v2;
    v26 = v3;
    v27 = sub_22A4DD05C();
    v28 = sub_22A4DDCCC();

    v29 = os_log_type_enabled(v27, v28);
    v30 = *(v0 + 88);
    v31 = *(v0 + 64);
    v32 = *(v0 + 72);
    if (v29)
    {
      v56 = *(v0 + 88);
      v34 = *(v0 + 16);
      v33 = *(v0 + 24);
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      *v35 = 136315394;
      v57 = v54;
      v58 = 91;
      v59 = 0xE100000000000000;
      v37 = [v33 logIdentifier];
      v38 = sub_22A4DD5EC();
      v52 = v31;
      v40 = v39;

      MEMORY[0x22AAD08C0](v38, v40);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v41 = sub_2295A3E30(91, 0xE100000000000000, &v57);

      *(v35 + 4) = v41;
      *(v35 + 12) = 2112;
      *(v35 + 14) = v34;
      *v36 = v34;
      v42 = v34;
      _os_log_impl(&dword_229538000, v27, v28, "%s Removing non-demo accessory: %@", v35, 0x16u);
      sub_22953EAE4(v36, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v36, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v54);
      MEMORY[0x22AAD4E50](v54, -1, -1);
      MEMORY[0x22AAD4E50](v35, -1, -1);

      (*(v32 + 8))(v56, v52);
    }

    else
    {

      (*(v32 + 8))(v30, v31);
    }

    v45 = *(v0 + 56);
    v47 = *(v0 + 24);
    v46 = *(v0 + 32);
    v48 = [*(v0 + 16) uuid];
    sub_22A4DB79C();

    v49 = swift_task_alloc();
    *(v0 + 96) = v49;
    v49[2] = v47;
    v49[3] = v45;
    v49[4] = v46;
    v50 = swift_task_alloc();
    *(v0 + 104) = v50;
    *v50 = v0;
    v50[1] = sub_229814274;
    v51 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x2822008A0](v50, 0, 0, 0xD000000000000016, 0x800000022A597AB0, sub_229816318, v49, v51);
  }
}

uint64_t sub_229814274()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_22981442C;
  }

  else
  {

    v2 = sub_229814390;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_229814390()
{
  (*(v0[6] + 8))(v0[7], v0[5]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_22981442C()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

BOOL sub_229814508()
{
  v1 = [v0 accessories];
  sub_229562F68(0, &qword_281401C30, off_278665FE8);
  v2 = sub_22A4DD83C();

  if (v2 >> 62)
  {
LABEL_15:
    v3 = sub_22A4DE0EC();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  do
  {
    v5 = v4;
    if (v3 == v4)
    {
      break;
    }

    if ((v2 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x22AAD13F0](v4, v2);
    }

    else
    {
      if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      v6 = *(v2 + 8 * v4 + 32);
    }

    v7 = v6;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    v8 = [v6 isDemoAccessory];

    v4 = v5 + 1;
  }

  while (!v8);

  return v3 != v5;
}

void sub_2298146C4()
{
  v50[0] = swift_getObjectType();
  v0 = sub_22A4DD07C();
  v51 = *(v0 - 8);
  v52 = v0;
  MEMORY[0x28223BE20](v0);
  v2 = v50 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D3E0, &unk_22A578560);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22A585160;
  *(inited + 32) = sub_22A4DD5AC();
  *(inited + 40) = sub_22A4DD5AC();
  *(inited + 48) = sub_22A4DD5AC();
  *(inited + 56) = sub_22A4DD5AC();
  *(inited + 64) = sub_22A4DD5AC();
  *(inited + 72) = sub_22A4DD5AC();
  *(inited + 80) = sub_22A4DD5AC();
  v4 = sub_22A4DD5AC();
  v5 = *MEMORY[0x277CD0678];
  v6 = MEMORY[0x277CCFEE8];
  *(inited + 88) = v4;
  *(inited + 96) = v5;
  v7 = *v6;
  v8 = *MEMORY[0x277CD2788];
  *(inited + 104) = *v6;
  *(inited + 112) = v8;
  v9 = *MEMORY[0x277CD2520];
  v10 = *MEMORY[0x277CD20A0];
  *(inited + 120) = *MEMORY[0x277CD2520];
  *(inited + 128) = v10;
  v11 = *MEMORY[0x277CD0518];
  v12 = *MEMORY[0x277CCF1E8];
  *(inited + 136) = *MEMORY[0x277CD0518];
  *(inited + 144) = v12;
  v56 = inited;
  v13 = v5;
  v14 = v7;
  v15 = v8;
  v16 = v9;
  v17 = v10;
  v18 = v11;
  v19 = v12;
  if (isRetailDemoModeV2Enabled())
  {
    v20 = swift_initStackObject();
    *(v20 + 16) = xmmword_22A57A9A0;
    v21 = *MEMORY[0x277CD2078];
    v22 = *MEMORY[0x277CD24F8];
    *(v20 + 32) = *MEMORY[0x277CD2078];
    *(v20 + 40) = v22;
    v23 = *MEMORY[0x277CD20B0];
    v24 = *MEMORY[0x277CD2530];
    *(v20 + 48) = *MEMORY[0x277CD20B0];
    *(v20 + 56) = v24;
    v25 = *MEMORY[0x277CD2070];
    v26 = *MEMORY[0x277CD24F0];
    *(v20 + 64) = *MEMORY[0x277CD2070];
    *(v20 + 72) = v26;
    v27 = v21;
    v28 = v22;
    v29 = v23;
    v30 = v24;
    v31 = v25;
    v32 = v26;
    sub_2296F0760(v20);
  }

  sub_2297A46D4();
  v33 = v50[1];
  v34 = sub_22A4DD05C();
  v35 = sub_22A4DDCCC();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *v36 = 136315138;
    v53 = 91;
    v54 = 0xE100000000000000;
    v55[0] = v37;
    v38 = [v33 logIdentifier];
    v39 = sub_22A4DD5EC();
    v41 = v40;

    MEMORY[0x22AAD08C0](v39, v41);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v42 = sub_2295A3E30(v53, v54, v55);

    *(v36 + 4) = v42;
    _os_log_impl(&dword_229538000, v34, v35, "%s Deregistering for messages in locked demo mode", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v37);
    MEMORY[0x22AAD4E50](v37, -1, -1);
    MEMORY[0x22AAD4E50](v36, -1, -1);
  }

  (*(v51 + 8))(v2, v52);
  v43 = v56;
  v44 = *(v56 + 16);
  if (v44)
  {
    v45 = 0;
    while (v45 < *(v43 + 16))
    {
      v46 = *(v43 + 32 + 8 * v45);
      v47 = [v33 administratorHandler];
      [v47 deregisterForMessage:v46 receiver:v33];

      v48 = [v33 msgDispatcher];
      if (!v48)
      {
        goto LABEL_12;
      }

      v49 = v48;
      ++v45;
      [v48 deregisterForMessage:v46 receiver:v33];

      if (v44 == v45)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
  }

  else
  {
LABEL_10:
  }
}

id sub_229814C20()
{
  v1 = v0;
  v2 = sub_22A4DB7DC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v1 appData];
  if (!result)
  {
    v7 = [v1 uuid];
    sub_22A4DB79C();

    v8 = objc_allocWithZone(HMDApplicationData);
    v9 = sub_22A4DB77C();
    v10 = [v8 initWithParentUUID_];

    (*(v3 + 8))(v5, v2);
    return v10;
  }

  return result;
}

uint64_t sub_229814D60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v7 = swift_task_alloc();
  *(v4 + 24) = v7;
  *v7 = v4;
  v7[1] = sub_229592790;

  return sub_229623634(a3, a4);
}

uint64_t sub_229814E0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v7 = swift_task_alloc();
  *(v4 + 24) = v7;
  *v7 = v4;
  v7[1] = sub_229814EB8;

  return sub_22958C334(a3, a4);
}

uint64_t sub_229814EB8(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 32) = a1;

    return MEMORY[0x2822009F8](sub_229816C50, 0, 0);
  }
}

uint64_t sub_229815004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v7 = swift_task_alloc();
  *(v4 + 24) = v7;
  *v7 = v4;
  v7[1] = sub_229814EB8;

  return sub_22958C334(a3, a4);
}

id sub_2298150B0(uint64_t a1, SEL *a2)
{
  v4 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D2A0, &unk_22A578BD0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v19[-v7];
  v9 = sub_22A4DB7DC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v19[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*(a1 + 16))
  {
    v13 = sub_229543DBC(0x696669746E656449, 0xEA00000000007265);
    if (v14)
    {
      sub_2295404B0(*(a1 + 56) + 32 * v13, v19);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
      if (swift_dynamicCast())
      {
        sub_22A4DB75C();

        if ((*(v10 + 48))(v8, 1, v9) == 1)
        {
          sub_22953EAE4(v8, &unk_27D87D2A0, &unk_22A578BD0);
        }

        else
        {
          (*(v10 + 32))(v12, v8, v9);
          v15 = sub_22A4DB77C();
          v16 = [v4 *a2];

          (*(v10 + 8))(v12, v9);
          result = v16;
          if (v16)
          {
            return result;
          }
        }
      }
    }
  }

  return 0;
}

uint64_t sub_2298152F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[26] = a4;
  v5[27] = v4;
  v5[24] = a2;
  v5[25] = a3;
  v5[23] = a1;
  v8 = swift_task_alloc();
  v5[28] = v8;
  *v8 = v5;
  v8[1] = sub_2298153A4;

  return sub_229808024(a3, a4);
}

uint64_t sub_2298153A4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 232) = a1;
  *(v3 + 240) = v1;

  if (v1)
  {
    v4 = sub_22981586C;
  }

  else
  {
    v4 = sub_2298154B8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2298154B8()
{
  v16 = v0;
  if (v0[29])
  {
    v1 = v0[29];
  }

  else
  {
    v1 = sub_22980CAD8();
  }

  v3 = v0[23];
  v2 = v0[24];

  v4 = sub_22981667C(v1, sub_229628A88);
  swift_bridgeObjectRelease_n();
  v0[22] = v4;
  sub_2297FCFD4(0x726F737365636341, 0xEB00000000736569, v0 + 2);
  sub_22953EAE4((v0 + 2), &unk_27D87FC20, &unk_22A578810);
  sub_2297FCFD4(0x736D6F6F52, 0xE500000000000000, v0 + 6);
  sub_22953EAE4((v0 + 6), &unk_27D87FC20, &unk_22A578810);
  sub_2297FCFD4(0x73656E656353, 0xE600000000000000, v0 + 10);
  sub_22953EAE4((v0 + 10), &unk_27D87FC20, &unk_22A578810);
  v0[17] = MEMORY[0x277D837D0];
  v0[14] = v3;
  v0[15] = v2;
  sub_229543C58((v0 + 14), (v0 + 18));

  v5 = v0[22];
  LOBYTE(v2) = swift_isUniquelyReferenced_nonNull_native();
  v15 = v5;
  v6 = v0[21];
  v7 = __swift_mutable_project_boxed_opaque_existential_0((v0 + 18), v6);
  v8 = *(v6 - 8);
  v9 = swift_task_alloc();
  (*(v8 + 16))(v9, v7, v6);
  sub_2297FE940(*v9, v9[1], 0x656D614E656D6F48, 0xE800000000000000, v2, &v15);
  __swift_destroy_boxed_opaque_existential_0(v0 + 18);

  v10 = v15;
  v0[31] = v15;
  v11 = swift_task_alloc();
  v0[32] = v11;
  *v11 = v0;
  v11[1] = sub_229815750;
  v12 = v0[26];
  v13 = v0[25];

  return sub_22980D4C8(v10, v13, v12);
}

uint64_t sub_229815750()
{
  *(*v1 + 264) = v0;

  if (v0)
  {
    v2 = sub_229815884;
  }

  else
  {

    v2 = sub_229566EE4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_229815884()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2298158E8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_229586D38;

  return sub_22958F178();
}

uint64_t sub_229815978()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_229586D38;

  return sub_22958D9EC();
}

uint64_t sub_229815A08()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_229586D38;

  return sub_22962746C();
}

uint64_t sub_229815A98(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a2;
  v4[3] = a3;
  v5 = *a1;
  v4[4] = a4;
  v4[5] = v5;
  return MEMORY[0x2822009F8](sub_229815AC0, 0, 0);
}

uint64_t sub_229815AC0()
{
  v1 = sub_2298150B0(v0[5], &selRef_accessoryWithUUID_);
  v0[6] = v1;
  if (v1)
  {
    v2 = swift_task_alloc();
    v0[7] = v2;
    *v2 = v0;
    v2[1] = sub_229598D74;
    v4 = v0[3];
    v3 = v0[4];

    return sub_229626978(v4, v3);
  }

  else
  {
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_229815BA4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a2;
  v4[3] = a3;
  v5 = *a1;
  v4[4] = a4;
  v4[5] = v5;
  return MEMORY[0x2822009F8](sub_229815BCC, 0, 0);
}

uint64_t sub_229815BCC()
{
  v1 = sub_2298150B0(*(v0 + 40), &selRef_roomWithUUID_);
  *(v0 + 48) = v1;
  if (v1)
  {
    v2 = v1;
    v3 = sub_22958E2F0(*(v0 + 24), *(v0 + 32));
    *(v0 + 56) = v4;
    if (v4)
    {
      v5 = v3;
      v6 = v4;
      v7 = [v2 name];
      v8 = sub_22A4DD5EC();
      v10 = v9;

      if (v8 == v5 && v6 == v10)
      {
      }

      else
      {
        v12 = sub_22A4DE60C();

        if ((v12 & 1) == 0)
        {
          v13 = swift_task_alloc();
          *(v0 + 64) = v13;
          *v13 = v0;
          v13[1] = sub_229815D5C;

          return sub_22989B8C4(v5, v6);
        }
      }
    }
  }

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_229815D5C()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_229815EDC;
  }

  else
  {
    v2 = sub_229815E70;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_229815E70()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_229815EDC()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_229815F44(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a2;
  v4[3] = a3;
  v5 = *a1;
  v4[4] = a4;
  v4[5] = v5;
  return MEMORY[0x2822009F8](sub_229815F6C, 0, 0);
}

uint64_t sub_229815F6C()
{
  v1 = sub_2298150B0(*(v0 + 40), &selRef_actionSetWithUUID_);
  *(v0 + 48) = v1;
  if (v1)
  {
    v2 = v1;
    v3 = sub_22958C4A4(*(v0 + 24), *(v0 + 32));
    *(v0 + 56) = v4;
    if (v4)
    {
      v5 = v3;
      v6 = v4;
      v7 = [v2 name];
      v8 = sub_22A4DD5EC();
      v10 = v9;

      if (v8 == v5 && v6 == v10)
      {
      }

      else
      {
        v12 = sub_22A4DE60C();

        if ((v12 & 1) == 0)
        {
          v13 = swift_task_alloc();
          *(v0 + 64) = v13;
          *v13 = v0;
          v13[1] = sub_2298160FC;

          return sub_22989CCDC(v5, v6);
        }
      }
    }
  }

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_2298160FC()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_229816C60;
  }

  else
  {
    v2 = sub_229816C54;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_229816234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_229569B30;

  return sub_2298152F4(a1, a2, a3, a4);
}

uint64_t sub_229816324(uint64_t *a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_229586D38;

  return sub_229815F44(a1, v4, v5, v6);
}

uint64_t sub_2298163D4(uint64_t *a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_229569B30;

  return sub_229815BA4(a1, v4, v5, v6);
}

uint64_t sub_229816484(uint64_t *a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_229586D38;

  return sub_229815A98(a1, v4, v5, v6);
}

unint64_t *sub_229816534(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, __n128))
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

    v8 = sub_2298167E8(result, a2, a3, a4);

    return v8;
  }

  return result;
}

unint64_t *sub_22981667C(uint64_t a1, uint64_t (*a2)(void *, __n128))
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
    result = sub_2298167E8(v8, v6, v4, a2);
    if (v2)
    {
      return swift_willThrow();
    }

    return result;
  }

  v10 = swift_slowAlloc();
  v11 = sub_229816534(v10, v6, v4, a2);
  result = MEMORY[0x22AAD4E50](v10, -1, -1);
  if (!v2)
  {
    return v11;
  }

  return result;
}

unint64_t *sub_2298167E8(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, __n128))
{
  v21 = 0;
  v22 = a4;
  v19 = a2;
  v20 = result;
  v4 = 0;
  v24 = a3;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = (*(v24 + 48) + 16 * v13);
    v15 = v14[1];
    v23[0] = *v14;
    v23[1] = v15;
    MEMORY[0x28223BE20](result);
    v18[2] = v23;

    v16 = sub_22986A5E0(v22, v18, &unk_283CDA2E8);

    if ((v16 & 1) == 0)
    {
      *(v20 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v21++, 1))
      {
        __break(1u);
        return sub_229772BD4(v20, v19, v21, v24);
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return sub_229772BD4(v20, v19, v21, v24);
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_229816980(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_229586D38;

  return sub_229814D60(a1, a2, v7, v6);
}

uint64_t sub_229816A34(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_229586D38;

  return sub_229814E0C(a1, a2, v7, v6);
}

uint64_t sub_229816AE8(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_229586D38;

  return sub_229815004(a1, a2, v7, v6);
}

void sub_229816B9C()
{
  v1 = *(sub_22A4DB7DC() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = v0 + v3;
  v8 = *v7;
  v9 = *(v7 + 8);
  v10 = *(v0 + v4);

  sub_22981324C(v5, v6, v0 + v2, v8, v9, v10);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance HMDHomeActivityStateContributorType()
{
  v1 = HMDHomeActivityStateContributorTypeAsString(*v0);
  v2 = sub_22A4DD5EC();

  return v2;
}

void Account.ChangeObserver.delegate.setter(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  if (Strong)
  {
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = *&v1[OBJC_IVAR___HMDAccountChangeObserver_eventSubscriber];
    v4 = swift_allocObject();
    *(v4 + 16) = v1;
    aBlock[4] = sub_229816F74;
    aBlock[5] = v4;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_229816F98;
    aBlock[3] = &block_descriptor_43;
    v5 = _Block_copy(aBlock);
    v6 = v1;

    [v3 registerAccountChangeEventHandler_];
    swift_unknownObjectRelease();
    _Block_release(v5);
  }
}

void sub_229816F98(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v6 = a2;
  v5(a2, a3);
}

uint64_t (*Account.ChangeObserver.delegate.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___HMDAccountChangeObserver_delegate;
  *(v3 + 80) = v1;
  *(v3 + 88) = v5;
  swift_beginAccess();
  *(v4 + 72) = swift_unknownObjectWeakLoadStrong();
  return sub_2298170A8;
}

void sub_2298170A8(void **a1, char a2)
{
  v3 = *a1;
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    if (!Strong)
    {
      v5 = v3[10];
      v6 = *&v5[OBJC_IVAR___HMDAccountChangeObserver_eventSubscriber];
      v7 = swift_allocObject();
      *(v7 + 16) = v5;
      v3[4] = sub_229818340;
      v3[5] = v7;
      *v3 = MEMORY[0x277D85DD0];
      v3[1] = 1107296256;
      v3[2] = sub_229816F98;
      v3[3] = &block_descriptor_7_0;
      v8 = _Block_copy(v3);
      v9 = v5;
      swift_unknownObjectRetain();

      [v6 registerAccountChangeEventHandler_];
      swift_unknownObjectRelease();
      _Block_release(v8);
      goto LABEL_7;
    }

LABEL_5:
    swift_unknownObjectRelease();
LABEL_7:
    swift_unknownObjectRelease();
    goto LABEL_8;
  }

  if (Strong)
  {
    goto LABEL_5;
  }

  v10 = v3[10];
  v11 = *&v10[OBJC_IVAR___HMDAccountChangeObserver_eventSubscriber];
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  v3[4] = sub_229818340;
  v3[5] = v12;
  *v3 = MEMORY[0x277D85DD0];
  v3[1] = 1107296256;
  v3[2] = sub_229816F98;
  v3[3] = &block_descriptor_14_1;
  v13 = _Block_copy(v3);
  v14 = v10;

  [v11 registerAccountChangeEventHandler_];
  swift_unknownObjectRelease();
  _Block_release(v13);
LABEL_8:

  free(v3);
}

id Account.ChangeObserver.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id Account.ChangeObserver.init()()
{
  swift_getObjectType();
  v0 = [objc_opt_self() sharedSubscriber];
  v1 = [objc_opt_self() productInfo];
  result = [objc_opt_self() sharedManager];
  if (result)
  {
    v3 = result;
    v4 = [objc_opt_self() defaultCenter];
    v5 = sub_229818260(v0, v1, v3, v4);

    swift_deallocPartialClassInstance();
    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_22981751C(void *a1, int a2)
{
  v86 = a2;
  ObjectType = swift_getObjectType();
  v5 = sub_22A4DD07C();
  v6 = *(v5 - 8);
  v87 = v5;
  v88 = v6;
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v84 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v84 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v84 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v84 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v84 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v84 - v25;
  if (*(v2 + OBJC_IVAR___HMDAccountChangeObserver_isSharediPad) == 1)
  {
    sub_229541CB0(ObjectType, &off_283CE7268);
    v27 = sub_22A4DD05C();
    v28 = sub_22A4DDCDC();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_229538000, v27, v28, "Ignoring change for shared iPad", v29, 2u);
      MEMORY[0x22AAD4E50](v29, -1, -1);
    }

    (*(v88 + 8))(v26, v87);
    return;
  }

  if (!a1)
  {
    sub_229541CB0(ObjectType, &off_283CE7268);
    v43 = sub_22A4DD05C();
    v44 = sub_22A4DDCDC();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 67109120;
      *(v45 + 4) = v86;
      _os_log_impl(&dword_229538000, v43, v44, "Ignoring change for nil account, change type: %u", v45, 8u);
      MEMORY[0x22AAD4E50](v45, -1, -1);
    }

    (*(v88 + 8))(v9, v87);
    return;
  }

  v30 = *MEMORY[0x277CEC688];
  v85 = a1;
  v31 = a1;
  if (![v31 aa:v30 isAccountClass:?])
  {
    sub_229541CB0(ObjectType, &off_283CE7268);
    v46 = v31;
    v47 = sub_22A4DD05C();
    v48 = sub_22A4DDCDC();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      *v49 = 138412290;
      *(v49 + 4) = v46;
      *v50 = v85;
      v51 = v46;
      _os_log_impl(&dword_229538000, v47, v48, "Ignoring change for non-primary account %@", v49, 0xCu);
      sub_2295A1C40(v50);
      MEMORY[0x22AAD4E50](v50, -1, -1);
      MEMORY[0x22AAD4E50](v49, -1, -1);
    }

    else
    {
      v51 = v47;
      v47 = v46;
    }

    (*(v88 + 8))(v12, v87);
    return;
  }

  v32 = v86;
  if (v86 <= 3)
  {
    v84 = v2;
    switch(v86)
    {
      case 1:
        sub_229541CB0(ObjectType, &off_283CE7268);
        v55 = v31;
        v56 = v31;
        v57 = sub_22A4DD05C();
        v58 = sub_22A4DDD0C();

        if (os_log_type_enabled(v57, v58))
        {
          v59 = swift_slowAlloc();
          v60 = swift_slowAlloc();
          *v59 = 138412290;
          *(v59 + 4) = v56;
          *v60 = v85;
          v61 = v56;
          _os_log_impl(&dword_229538000, v57, v58, "Account added %@", v59, 0xCu);
          sub_2295A1C40(v60);
          MEMORY[0x22AAD4E50](v60, -1, -1);
          MEMORY[0x22AAD4E50](v59, -1, -1);
        }

        (*(v88 + 8))(v24, v87);
        v62 = v84;
        swift_beginAccess();
        Strong = swift_unknownObjectWeakLoadStrong();
        v31 = v55;
        if (!Strong)
        {
          goto LABEL_36;
        }

        [Strong accountChangeObserver:v62 observedAddedAccount:{v56, v84}];
        break;
      case 2:
        sub_229541CB0(ObjectType, &off_283CE7268);
        v64 = v31;
        v65 = sub_22A4DD05C();
        v66 = sub_22A4DDD0C();

        if (os_log_type_enabled(v65, v66))
        {
          v67 = v31;
          v68 = swift_slowAlloc();
          v69 = swift_slowAlloc();
          *v68 = 138412290;
          *(v68 + 4) = v64;
          *v69 = v85;
          v70 = v64;
          _os_log_impl(&dword_229538000, v65, v66, "Account modified %@", v68, 0xCu);
          sub_2295A1C40(v69);
          MEMORY[0x22AAD4E50](v69, -1, -1);
          v71 = v68;
          v31 = v67;
          MEMORY[0x22AAD4E50](v71, -1, -1);
        }

        (*(v88 + 8))(v21, v87);
        v72 = v84;
        swift_beginAccess();
        v73 = swift_unknownObjectWeakLoadStrong();
        if (!v73)
        {
          goto LABEL_36;
        }

        [v73 accountChangeObserver:v72 observedModifiedAccount:{v64, v84}];
        break;
      case 3:
        sub_229541CB0(ObjectType, &off_283CE7268);
        v33 = v31;
        v34 = sub_22A4DD05C();
        v35 = sub_22A4DDD0C();

        if (os_log_type_enabled(v34, v35))
        {
          v36 = v31;
          v37 = swift_slowAlloc();
          v38 = swift_slowAlloc();
          *v37 = 138412290;
          *(v37 + 4) = v33;
          *v38 = v85;
          v39 = v33;
          _os_log_impl(&dword_229538000, v34, v35, "Account removed %@", v37, 0xCu);
          sub_2295A1C40(v38);
          MEMORY[0x22AAD4E50](v38, -1, -1);
          v40 = v37;
          v31 = v36;
          MEMORY[0x22AAD4E50](v40, -1, -1);
        }

        (*(v88 + 8))(v18, v87);
        v41 = v84;
        swift_beginAccess();
        v42 = swift_unknownObjectWeakLoadStrong();
        if (!v42)
        {
          goto LABEL_36;
        }

        [v42 accountChangeObserver:v41 observedDeletedAccount:{v33, v84}];
        break;
      default:
LABEL_24:
        sub_229541CB0(ObjectType, &off_283CE7268);
        v52 = sub_22A4DD05C();
        v53 = sub_22A4DDCEC();
        if (os_log_type_enabled(v52, v53))
        {
          v54 = swift_slowAlloc();
          *v54 = 67109120;
          *(v54 + 4) = v32;
          _os_log_impl(&dword_229538000, v52, v53, "Unexpected, unhandled account change case: %u", v54, 8u);
          MEMORY[0x22AAD4E50](v54, -1, -1);
        }

        (*(v88 + 8))(v15, v87);
        goto LABEL_36;
    }

    swift_unknownObjectRelease();
    goto LABEL_36;
  }

  if ((v86 - 4) >= 2)
  {
    goto LABEL_24;
  }

LABEL_36:
  v74 = [v31 accountType];
  if (v74)
  {
    v75 = v74;
    v76 = [v74 identifier];

    if (v76)
    {
      v77 = v31;
      v78 = sub_22A4DD5EC();
      v80 = v79;

      v81 = sub_22A4DD5EC();
      if (v80)
      {
        if (v78 == v81 && v80 == v82)
        {
        }

        else
        {
          v83 = sub_22A4DE60C();

          if ((v83 & 1) == 0)
          {

            return;
          }
        }

        sub_229817ED0(v77);

        return;
      }

      v31 = v77;
    }

    else
    {
      sub_22A4DD5EC();
    }

    return;
  }

  __break(1u);
}

id sub_229817ED0(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_22A4DD07C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v22 - v10;
  if (*(v2 + OBJC_IVAR___HMDAccountChangeObserver_isHomePod) == 1)
  {
    sub_229541CB0(ObjectType, &off_283CE7268);
    v12 = a1;
    v13 = sub_22A4DD05C();
    v14 = sub_22A4DDD0C();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412290;
      *(v15 + 4) = v12;
      *v16 = v12;
      v17 = v12;
      _os_log_impl(&dword_229538000, v13, v14, "IDSAccount change %@", v15, 0xCu);
      sub_2295A1C40(v16);
      MEMORY[0x22AAD4E50](v16, -1, -1);
      MEMORY[0x22AAD4E50](v15, -1, -1);
    }

    (*(v6 + 8))(v11, v5);
    return [*(v2 + OBJC_IVAR___HMDAccountChangeObserver_notificationCenter) postNotificationName:@"HMDHomeManagerIDMSAccountUsernameDidUpdateNotification" object:0];
  }

  else
  {
    sub_229541CB0(ObjectType, &off_283CE7268);
    v19 = sub_22A4DD05C();
    v20 = sub_22A4DDCDC();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_229538000, v19, v20, "Ignoring IDSAccount change on non-HomePod", v21, 2u);
      MEMORY[0x22AAD4E50](v21, -1, -1);
    }

    return (*(v6 + 8))(v9, v5);
  }
}

id sub_22981818C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_229818260(uint64_t a1, void *a2, void *a3, void *a4)
{
  v8 = type metadata accessor for Account.ChangeObserver();
  v9 = objc_allocWithZone(v8);
  swift_unknownObjectWeakInit();
  *&v9[OBJC_IVAR___HMDAccountChangeObserver_eventSubscriber] = a1;
  *&v9[OBJC_IVAR___HMDAccountChangeObserver_notificationCenter] = a4;
  v10 = a4;
  v11 = [a2 productClass] == 6;
  v9[OBJC_IVAR___HMDAccountChangeObserver_isHomePod] = v11;
  v12 = [a3 isSharedIPad];
  v9[OBJC_IVAR___HMDAccountChangeObserver_isSharediPad] = v12;
  v14.receiver = v9;
  v14.super_class = v8;
  return objc_msgSendSuper2(&v14, sel_init);
}

uint64_t sub_22981834C()
{
  sub_2296792B0(v0 + OBJC_IVAR____TtCOO13HomeKitDaemon16DeviceMediaState16FrameworkAdapter9PineBoard_updateStream);

  return swift_deallocClassInstance();
}

uint64_t _s9PineBoardCMa(uint64_t a1)
{
  result = qword_27D8817C8;
  if (!qword_27D8817C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_229818420(uint64_t a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87FFA8, &qword_22A5809C0);
  return sub_22A4DD8FC();
}

uint64_t sub_22981847C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[20] = a2;
  v3[21] = a3;
  v3[19] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87FFA8, &qword_22A5809C0);
  v3[22] = v4;
  v3[23] = *(v4 - 8);
  v3[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22981854C, 0, 0);
}

uint64_t sub_22981854C()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 10;
  v4 = v0 + 18;
  v5 = v0[23];
  v6 = v0[24];
  v7 = v0[22];
  v12 = v1[21];
  v11 = objc_opt_self();
  v8 = sub_22A4DD5AC();
  v1[25] = v8;
  v1[2] = v1;
  v1[7] = v4;
  v1[3] = sub_229818724;
  swift_continuation_init();
  v1[17] = v7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 14);
  type metadata accessor for MADownloadResult(0);
  sub_22A4DD8DC();
  (*(v5 + 32))(boxed_opaque_existential_1, v6, v7);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_229818420;
  v1[13] = &block_descriptor_44;
  [v11 startCatalogDownload:v8 options:v12 then:v3];
  (*(v5 + 8))(boxed_opaque_existential_1, v7);

  return MEMORY[0x282200938](v2);
}

uint64_t sub_229818724()
{

  return MEMORY[0x2822009F8](sub_229818804, 0, 0);
}

uint64_t sub_229818804()
{
  v1 = *(v0 + 144);

  v2 = *(v0 + 8);

  return v2(v1);
}

BOOL sub_229818890(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v4 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v4 >= 0x21 || ((0x100003E01uLL >> v4) & 1) == 0)
      {
LABEL_10:
        v6 = _swift_stdlib_strtod_clocale();
        return v6 && *v6 == 0;
      }

      return 0;
    }
  }

  sub_22A4DE1EC();
  if (!v3)
  {
    return v8;
  }

  return v5;
}

uint64_t sub_229818988()
{
  v0 = sub_22A4DCDAC();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_22A4DCC4C();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = sub_22A4DCD0C();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_22A4DCDFC();
  __swift_allocate_value_buffer(v3, qword_27D8817E0);
  __swift_project_value_buffer(v3, qword_27D8817E0);
  sub_22A4DCCDC();
  sub_22A4DCC2C();
  sub_22A4DCD8C();
  return sub_22A4DCE1C();
}

uint64_t sub_229818AE4()
{
  v0 = sub_22A4DD07C();
  __swift_allocate_value_buffer(v0, qword_27D8817F8);
  __swift_project_value_buffer(v0, qword_27D8817F8);
  sub_22A4DD5EC();
  return sub_22A4DD06C();
}

uint64_t sub_229818BAC()
{
  v1 = v0;
  v2 = sub_22A4DCDAC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22A4DCC4C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_msgSend(v1 featuresDataSource)];
  swift_unknownObjectRelease();
  if (v10)
  {
    v11 = [v1 valenciaMatterEndpoint];
    if (v11)
    {
      v12 = v11;
      v13 = [v1 matterAdapter];
      if (v13)
      {
        v14 = v13;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C350, &qword_22A576E40);
        v15 = swift_allocObject();
        *(v15 + 16) = xmmword_22A576190;
        v16 = v12;
        sub_22A4DCC2C();
        sub_22A4DCC3C();
        (*(v7 + 8))(v9, v6);
        v17 = sub_22A4DE7DC();
        sub_22A4DCD6C();
        sub_22A4DCD9C();
        (*(v3 + 8))(v5, v2);
        v18 = sub_22A4DE7DC();
        v19 = [objc_opt_self() attributePathWithEndpointID:v16 clusterID:v17 attributeID:v18];

        *(v15 + 32) = v19;
        sub_229562F68(0, &qword_27D87CF48, 0x277CD51C0);
        v20 = sub_22A4DD81C();

        v21 = [v14 isImplementingAttributePaths_];

        if (v21)
        {
          return 1;
        }
      }

      else
      {
      }
    }
  }

  return 0;
}

void sub_229818EDC(void (*a1)(void), uint64_t a2)
{
  v5 = sub_22A4DB7DC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v30 - v10;
  v12 = [v2 home];
  if (v12)
  {
    v13 = v12;
    if ([v12 isCurrentDeviceConfirmedPrimaryResident])
    {
      v14 = [objc_msgSend(v13 featuresDataSource)];
      swift_unknownObjectRelease();
      if (v14)
      {
        v15 = sub_22A4DD9DC();
        (*(*(v15 - 8) + 56))(v11, 1, 1, v15);
        v16 = swift_allocObject();
        v16[2] = 0;
        v16[3] = 0;
        v16[4] = v2;
        v16[5] = v13;
        v16[6] = a1;
        v16[7] = a2;
        v17 = v2;
        sub_2295A1C30(a1, a2);
        sub_22957F3C0(0, 0, v11, &unk_22A585680, v16);

        return;
      }
    }
  }

  if (qword_27D87BA98 != -1)
  {
    swift_once();
  }

  v18 = sub_22A4DD07C();
  __swift_project_value_buffer(v18, qword_27D8817F8);
  v19 = v2;
  v20 = sub_22A4DD05C();
  v21 = sub_22A4DDCEC();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v30 = a2;
    v23 = v22;
    v24 = swift_slowAlloc();
    v31 = v24;
    *v23 = 136315394;
    v25 = [v19 uuid];
    sub_22A4DB79C();

    sub_229839520(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v26 = sub_22A4DE5CC();
    v28 = v27;
    (*(v6 + 8))(v8, v5);
    v29 = sub_2295A3E30(v26, v28, &v31);

    *(v23 + 4) = v29;
    *(v23 + 12) = 2080;
    *(v23 + 14) = sub_2295A3E30(0xD000000000000032, 0x800000022A5983C0, &v31);
    _os_log_impl(&dword_229538000, v20, v21, "[%s] %s Not evaluating adaptive temperature automations support, feature is not enabled", v23, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v24, -1, -1);
    MEMORY[0x22AAD4E50](v23, -1, -1);
  }

  if (a1)
  {
    a1();
  }
}

uint64_t sub_2298192FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[9] = a6;
  v7[10] = a7;
  v7[7] = a4;
  v7[8] = a5;
  v8 = sub_22A4DB7DC();
  v7[11] = v8;
  v7[12] = *(v8 - 8);
  v7[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2298193C0, 0, 0);
}

uint64_t sub_2298193C0()
{
  *(v0 + 144) = [*(v0 + 56) matterDeviceSupportsValencia];
  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  *v1 = v0;
  v1[1] = sub_229819468;
  v2 = *(v0 + 64);

  return sub_229819FEC(v2);
}

uint64_t sub_229819468(char a1)
{
  v3 = *v2;
  *(v3 + 145) = a1;
  *(v3 + 120) = v1;

  if (v1)
  {
    v4 = sub_229819CF8;
  }

  else
  {
    v4 = sub_229819580;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_229819580()
{
  v24 = v0;
  if (qword_27D87BA98 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 56);
  v2 = sub_22A4DD07C();
  __swift_project_value_buffer(v2, qword_27D8817F8);
  v3 = v1;
  v4 = sub_22A4DD05C();
  v5 = sub_22A4DDCCC();

  if (os_log_type_enabled(v4, v5))
  {
    v21 = *(v0 + 144);
    v22 = *(v0 + 145);
    v7 = *(v0 + 96);
    v6 = *(v0 + 104);
    v8 = *(v0 + 88);
    v9 = *(v0 + 56);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v23 = v11;
    *v10 = 136315906;
    v12 = [v9 uuid];
    sub_22A4DB79C();

    sub_229839520(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v13 = sub_22A4DE5CC();
    v15 = v14;
    (*(v7 + 8))(v6, v8);
    v16 = sub_2295A3E30(v13, v15, &v23);

    *(v10 + 4) = v16;
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_2295A3E30(0xD000000000000032, 0x800000022A5983C0, &v23);
    *(v10 + 22) = 1024;
    *(v10 + 24) = v21;
    *(v10 + 28) = 1024;
    *(v10 + 30) = v22;
    _os_log_impl(&dword_229538000, v4, v5, "[%s] %s Found currentDeviceSupportStatus: %{BOOL}d and currentMFiCertificateStatus: %{BOOL}d", v10, 0x22u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v11, -1, -1);
    MEMORY[0x22AAD4E50](v10, -1, -1);
  }

  v17 = *(v0 + 145);
  v18 = *(v0 + 144);
  sub_229785F6C((v0 + 16));
  __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
  v19 = swift_task_alloc();
  *(v0 + 128) = v19;
  *v19 = v0;
  v19[1] = sub_22981986C;

  return sub_2296C5BE0(v18 & v17 & 1);
}

uint64_t sub_22981986C()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_2298199FC;
  }

  else
  {
    v2 = sub_229819980;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_229819980()
{
  v1 = v0[9];
  v2 = __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  if (v1)
  {
    (v0[9])(v2);
  }

  v3 = v0[1];

  return v3();
}

uint64_t sub_2298199FC()
{
  v26 = v0;
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[17];
  if (qword_27D87BA98 != -1)
  {
    swift_once();
  }

  v2 = v0[7];
  v3 = sub_22A4DD07C();
  __swift_project_value_buffer(v3, qword_27D8817F8);
  v4 = v2;
  v5 = v1;
  v6 = sub_22A4DD05C();
  v7 = sub_22A4DDCEC();

  if (os_log_type_enabled(v6, v7))
  {
    v9 = v0[12];
    v8 = v0[13];
    v10 = v0[11];
    v11 = v0[7];
    v12 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v25 = v24;
    *v12 = 136315650;
    v13 = [v11 uuid];
    sub_22A4DB79C();

    sub_229839520(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v14 = sub_22A4DE5CC();
    v16 = v15;
    (*(v9 + 8))(v8, v10);
    v17 = sub_2295A3E30(v14, v16, &v25);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_2295A3E30(0xD000000000000032, 0x800000022A5983C0, &v25);
    *(v12 + 22) = 2112;
    v18 = v1;
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 24) = v19;
    *v23 = v19;
    _os_log_impl(&dword_229538000, v6, v7, "[%s] %s Failed to update supportsAdaptiveTemperatureAutomations with error: %@", v12, 0x20u);
    sub_22953EAE4(v23, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v23, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v24, -1, -1);
    MEMORY[0x22AAD4E50](v12, -1, -1);
  }

  v20 = v0[9];
  if (v20)
  {
    v20();
  }

  v21 = v0[1];

  return v21();
}

uint64_t sub_229819CF8()
{
  v26 = v0;
  v1 = v0[15];
  if (qword_27D87BA98 != -1)
  {
    swift_once();
  }

  v2 = v0[7];
  v3 = sub_22A4DD07C();
  __swift_project_value_buffer(v3, qword_27D8817F8);
  v4 = v2;
  v5 = v1;
  v6 = sub_22A4DD05C();
  v7 = sub_22A4DDCEC();

  if (os_log_type_enabled(v6, v7))
  {
    v9 = v0[12];
    v8 = v0[13];
    v10 = v0[11];
    v11 = v0[7];
    v12 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v25 = v24;
    *v12 = 136315650;
    v13 = [v11 uuid];
    sub_22A4DB79C();

    sub_229839520(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v14 = sub_22A4DE5CC();
    v16 = v15;
    (*(v9 + 8))(v8, v10);
    v17 = sub_2295A3E30(v14, v16, &v25);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_2295A3E30(0xD000000000000032, 0x800000022A5983C0, &v25);
    *(v12 + 22) = 2112;
    v18 = v1;
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 24) = v19;
    *v23 = v19;
    _os_log_impl(&dword_229538000, v6, v7, "[%s] %s Failed to update supportsAdaptiveTemperatureAutomations with error: %@", v12, 0x20u);
    sub_22953EAE4(v23, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v23, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v24, -1, -1);
    MEMORY[0x22AAD4E50](v12, -1, -1);
  }

  v20 = v0[9];
  if (v20)
  {
    v20();
  }

  v21 = v0[1];

  return v21();
}

uint64_t sub_229819FEC(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_22A4DD18C();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v4 = sub_22A4DD16C();
  v2[12] = v4;
  v2[13] = *(v4 - 8);
  v2[14] = swift_task_alloc();
  v5 = sub_22A4DD12C();
  v2[15] = v5;
  v2[16] = *(v5 - 8);
  v2[17] = swift_task_alloc();
  v6 = sub_22A4DB7DC();
  v2[18] = v6;
  v2[19] = *(v6 - 8);
  v2[20] = swift_task_alloc();
  v7 = sub_22A4DD13C();
  v2[21] = v7;
  v2[22] = *(v7 - 8);
  v2[23] = swift_task_alloc();
  v8 = sub_22A4DD1AC();
  v2[24] = v8;
  v2[25] = *(v8 - 8);
  v2[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22981A278, 0, 0);
}

uint64_t sub_22981A278()
{
  v24 = v0;
  v1 = [objc_msgSend(*(v0 + 56) featuresDataSource)];
  swift_unknownObjectRelease();
  if (v1)
  {
    (*(*(v0 + 176) + 104))(*(v0 + 184), *MEMORY[0x277CCE640], *(v0 + 168));
    v2 = swift_task_alloc();
    *(v0 + 216) = v2;
    *v2 = v0;
    v2[1] = sub_22981A604;
    v3 = *(v0 + 208);
    v4 = *(v0 + 184);

    return MEMORY[0x2821211C8](v3, v4);
  }

  else
  {
    if (qword_27D87BA98 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 64);
    v6 = sub_22A4DD07C();
    __swift_project_value_buffer(v6, qword_27D8817F8);
    v7 = v5;
    v8 = sub_22A4DD05C();
    v9 = sub_22A4DDCCC();

    if (os_log_type_enabled(v8, v9))
    {
      v11 = *(v0 + 152);
      v10 = *(v0 + 160);
      v12 = *(v0 + 144);
      v13 = *(v0 + 64);
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v23 = v15;
      *v14 = 136315394;
      v16 = [v13 uuid];
      sub_22A4DB79C();

      sub_229839520(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v17 = sub_22A4DE5CC();
      v19 = v18;
      (*(v11 + 8))(v10, v12);
      v20 = sub_2295A3E30(v17, v19, &v23);

      *(v14 + 4) = v20;
      *(v14 + 12) = 2080;
      *(v14 + 14) = sub_2295A3E30(0xD000000000000036, 0x800000022A598400, &v23);
      _os_log_impl(&dword_229538000, v8, v9, "[%s] %s Developer profile or feature flag enabled, skipping MFi certificate check", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v15, -1, -1);
      MEMORY[0x22AAD4E50](v14, -1, -1);
    }

    v21 = *(v0 + 8);

    return v21(1);
  }
}

uint64_t sub_22981A604()
{
  *(*v1 + 224) = v0;

  if (v0)
  {
    v2 = sub_22981B24C;
  }

  else
  {
    v2 = sub_22981A718;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_22981A718()
{
  v110 = v0;
  v1 = [*(v0 + 64) bridge];
  if (!v1)
  {
    v1 = *(v0 + 64);
  }

  v2 = [v1 matterVendorID];
  if (v2 && (v3 = v2, v4 = [v2 integerValue], v3, (v5 = objc_msgSend(v1, sel_matterProductID)) != 0))
  {
    v6 = v5;
    v7 = [v5 integerValue];

    v8 = [v1 firmwareVersion];
    if (v8)
    {
      v9 = v8;
      v10 = [v8 rawVersionString];

      v11 = sub_22A4DD5EC();
      v13 = v12;

      *(v0 + 32) = 0;
      LOBYTE(v11) = sub_229818890(v11, v13, v0 + 32);

      if (v11)
      {
        v14 = *(v0 + 32);
        if (qword_27D87BA98 != -1)
        {
          swift_once();
        }

        v15 = *(v0 + 64);
        v16 = sub_22A4DD07C();
        __swift_project_value_buffer(v16, qword_27D8817F8);
        v17 = v15;
        v18 = sub_22A4DD05C();
        v19 = sub_22A4DDCDC();

        v104 = v7;
        v106 = v4;
        if (os_log_type_enabled(v18, v19))
        {
          v21 = *(v0 + 152);
          v20 = *(v0 + 160);
          v22 = *(v0 + 144);
          v23 = *(v0 + 64);
          v24 = swift_slowAlloc();
          v101 = swift_slowAlloc();
          v109[0] = v101;
          *v24 = 136316162;
          v25 = [v23 uuid];
          sub_22A4DB79C();

          sub_229839520(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
          v26 = sub_22A4DE5CC();
          v28 = v27;
          (*(v21 + 8))(v20, v22);
          v29 = sub_2295A3E30(v26, v28, v109);

          *(v24 + 4) = v29;
          *(v24 + 12) = 2080;
          *(v24 + 14) = sub_2295A3E30(0xD000000000000036, 0x800000022A598400, v109);
          *(v24 + 22) = 2048;
          *(v24 + 24) = v106;
          *(v24 + 32) = 2048;
          *(v24 + 34) = v104;
          *(v24 + 42) = 2048;
          if ((*&v14 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
LABEL_38:
            __break(1u);
            goto LABEL_39;
          }

          if (v14 <= -9.22337204e18)
          {
LABEL_39:
            __break(1u);
            goto LABEL_40;
          }

          if (v14 >= 9.22337204e18)
          {
LABEL_40:
            __break(1u);
            return;
          }

          *(v24 + 44) = v14;
          _os_log_impl(&dword_229538000, v18, v19, "[%s] %s Checking MFi support using matterVendorID %ld, matterProductID %ld, and firmwareVersion %ld", v24, 0x34u);
          swift_arrayDestroy();
          MEMORY[0x22AAD4E50](v101, -1, -1);
          MEMORY[0x22AAD4E50](v24, -1, -1);
        }

        else
        {

          if ((*&v14 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
            __break(1u);
            goto LABEL_36;
          }
        }

        if (v14 > -9.22337204e18)
        {
          if (v14 < 9.22337204e18)
          {
            v83 = *(v0 + 200);
            v84 = *(v0 + 128);
            v85 = *(v0 + 136);
            v86 = *(v0 + 112);
            v98 = *(v0 + 120);
            v87 = *(v0 + 104);
            v100 = *(v0 + 96);
            v103 = *(v0 + 192);
            v89 = *(v0 + 80);
            v88 = *(v0 + 88);
            v96 = *(v0 + 208);
            v97 = *(v0 + 72);
            *v85 = v14;
            (*(v84 + 104))(v85, *MEMORY[0x277CCE628]);
            sub_22A4DD17C();
            sub_22A4DD17C();
            v56 = sub_22A4DD14C();

            (*(v89 + 8))(v88, v97);
            (*(v87 + 8))(v86, v100);
            (*(v84 + 8))(v85, v98);
            (*(v83 + 8))(v96, v103);
            goto LABEL_20;
          }

          goto LABEL_37;
        }

LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }
    }

    if (qword_27D87BA98 != -1)
    {
      swift_once();
    }

    v58 = *(v0 + 64);
    v59 = sub_22A4DD07C();
    __swift_project_value_buffer(v59, qword_27D8817F8);
    v60 = v58;
    v61 = v1;
    v62 = sub_22A4DD05C();
    v63 = sub_22A4DDCEC();

    if (os_log_type_enabled(v62, v63))
    {
      v65 = *(v0 + 152);
      v64 = *(v0 + 160);
      v66 = *(v0 + 144);
      v67 = *(v0 + 64);
      v68 = swift_slowAlloc();
      v108 = swift_slowAlloc();
      v109[0] = v108;
      *v68 = 136315650;
      v69 = [v67 uuid];
      sub_22A4DB79C();

      sub_229839520(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v70 = sub_22A4DE5CC();
      v72 = v71;
      (*(v65 + 8))(v64, v66);
      v73 = sub_2295A3E30(v70, v72, v109);

      *(v68 + 4) = v73;
      *(v68 + 12) = 2080;
      *(v68 + 14) = sub_2295A3E30(0xD000000000000036, 0x800000022A598400, v109);
      *(v68 + 22) = 2080;
      v74 = [v61 firmwareVersion];
      if (v74)
      {
        v75 = v74;
        v76 = [v74 rawVersionString];

        v77 = sub_22A4DD5EC();
        v79 = v78;
      }

      else
      {
        v77 = 0;
        v79 = 0;
      }

      v91 = *(v0 + 200);
      v90 = *(v0 + 208);
      v92 = *(v0 + 192);
      *(v0 + 16) = v77;
      *(v0 + 24) = v79;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87EC90, &unk_22A57CFD0);
      v93 = sub_22A4DD64C();
      v95 = sub_2295A3E30(v93, v94, v109);

      *(v68 + 24) = v95;
      _os_log_impl(&dword_229538000, v62, v63, "[%s] %s Failed to parse firmwareVersion from rawVersionString %s", v68, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v108, -1, -1);
      MEMORY[0x22AAD4E50](v68, -1, -1);

      (*(v91 + 8))(v90, v92);
    }

    else
    {
      v81 = *(v0 + 200);
      v80 = *(v0 + 208);
      v82 = *(v0 + 192);

      (*(v81 + 8))(v80, v82);
    }
  }

  else
  {
    if (qword_27D87BA98 != -1)
    {
      swift_once();
    }

    v30 = *(v0 + 64);
    v31 = sub_22A4DD07C();
    __swift_project_value_buffer(v31, qword_27D8817F8);
    v32 = v30;
    v33 = v1;
    v34 = sub_22A4DD05C();
    v35 = sub_22A4DDCEC();

    v36 = os_log_type_enabled(v34, v35);
    v38 = *(v0 + 200);
    v37 = *(v0 + 208);
    v39 = *(v0 + 192);
    if (v36)
    {
      v105 = *(v0 + 192);
      v107 = *(v0 + 208);
      v102 = v35;
      v41 = *(v0 + 152);
      v40 = *(v0 + 160);
      v42 = *(v0 + 144);
      v43 = *(v0 + 64);
      v44 = swift_slowAlloc();
      v99 = swift_slowAlloc();
      v109[0] = v99;
      *v44 = 136315906;
      v45 = [v43 uuid];
      sub_22A4DB79C();

      sub_229839520(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v46 = sub_22A4DE5CC();
      v48 = v47;
      (*(v41 + 8))(v40, v42);
      v49 = sub_2295A3E30(v46, v48, v109);

      *(v44 + 4) = v49;
      *(v44 + 12) = 2080;
      *(v44 + 14) = sub_2295A3E30(0xD000000000000036, 0x800000022A598400, v109);
      *(v44 + 22) = 2080;
      *(v0 + 40) = [v33 matterVendorID];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881F10, &qword_22A5804F0);
      v50 = sub_22A4DD64C();
      v52 = sub_2295A3E30(v50, v51, v109);

      *(v44 + 24) = v52;
      *(v44 + 32) = 2080;
      *(v0 + 48) = [v33 matterProductID];
      v53 = sub_22A4DD64C();
      v55 = sub_2295A3E30(v53, v54, v109);

      *(v44 + 34) = v55;
      _os_log_impl(&dword_229538000, v34, v102, "[%s] %s Missing required context: vendorID %s or productID %s", v44, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v99, -1, -1);
      MEMORY[0x22AAD4E50](v44, -1, -1);

      (*(v38 + 8))(v107, v105);
    }

    else
    {

      (*(v38 + 8))(v37, v39);
    }
  }

  v56 = 0;
LABEL_20:

  v57 = *(v0 + 8);

  v57(v56 & 1);
}

uint64_t sub_22981B24C()
{
  v27 = v0;
  if (qword_27D87BA98 != -1)
  {
    swift_once();
  }

  v1 = v0[28];
  v2 = v0[8];
  v3 = sub_22A4DD07C();
  __swift_project_value_buffer(v3, qword_27D8817F8);
  v4 = v2;
  v5 = v1;
  v6 = sub_22A4DD05C();
  v7 = sub_22A4DDCEC();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[28];
  if (v8)
  {
    v11 = v0[19];
    v10 = v0[20];
    v12 = v0[18];
    v13 = v0[8];
    v14 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v26 = v25;
    *v14 = 136315650;
    v15 = [v13 uuid];
    sub_22A4DB79C();

    sub_229839520(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v16 = sub_22A4DE5CC();
    v18 = v17;
    (*(v11 + 8))(v10, v12);
    v19 = sub_2295A3E30(v16, v18, &v26);

    *(v14 + 4) = v19;
    *(v14 + 12) = 2080;
    *(v14 + 14) = sub_2295A3E30(0xD000000000000036, 0x800000022A598400, &v26);
    *(v14 + 22) = 2112;
    v20 = v9;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 24) = v21;
    *v24 = v21;
    _os_log_impl(&dword_229538000, v6, v7, "[%s] %s Failed to build mobile asset with error: %@", v14, 0x20u);
    sub_22953EAE4(v24, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v24, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v25, -1, -1);
    MEMORY[0x22AAD4E50](v14, -1, -1);
  }

  else
  {
  }

  v22 = v0[1];

  return v22(0);
}

void *sub_22981B6D4(uint64_t (*a1)(void), uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v51 - v7;
  v9 = sub_22A4DB7DC();
  v55 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22A4DD2FC();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = (&v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v15 = [v3 workQueue];
  (*(v13 + 104))(v15, *MEMORY[0x277D85200], v12);
  v16 = sub_22A4DD31C();
  (*(v13 + 8))(v15, v12);
  if ((v16 & 1) == 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = [objc_msgSend(v3 featuresDataSource)];
  result = swift_unknownObjectRelease();
  if (v17)
  {
    result = [v3 home];
    if (result)
    {
      v15 = result;
      v52 = a1;
      v53 = v8;
      v54 = a2;
      if (qword_27D87BA98 == -1)
      {
LABEL_5:
        v19 = sub_22A4DD07C();
        __swift_project_value_buffer(v19, qword_27D8817F8);
        v20 = v3;
        v21 = sub_22A4DD05C();
        v22 = sub_22A4DDCCC();

        if (os_log_type_enabled(v21, v22))
        {
          v23 = swift_slowAlloc();
          v24 = swift_slowAlloc();
          v51 = v15;
          v25 = v24;
          v56 = v24;
          *v23 = 136315394;
          v26 = [v20 uuid];
          sub_22A4DB79C();

          sub_229839520(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
          v27 = sub_22A4DE5CC();
          v29 = v28;
          (*(v55 + 8))(v11, v9);
          v30 = sub_2295A3E30(v27, v29, &v56);

          *(v23 + 4) = v30;
          *(v23 + 12) = 2080;
          *(v23 + 14) = sub_2295A3E30(0xD000000000000031, 0x800000022A598380, &v56);
          _os_log_impl(&dword_229538000, v21, v22, "[%s] %s", v23, 0x16u);
          swift_arrayDestroy();
          v31 = v25;
          v15 = v51;
          MEMORY[0x22AAD4E50](v31, -1, -1);
          MEMORY[0x22AAD4E50](v23, -1, -1);
        }

        v32 = v54;
        v33 = v15;
        v34 = [v15 homeActivityStateManager];
        v35 = v53;
        if (v34)
        {
          v36 = v34;
          [v34 addObserver_];
        }

        else
        {
          v37 = v20;
          v38 = sub_22A4DD05C();
          v39 = sub_22A4DDCEC();

          if (os_log_type_enabled(v38, v39))
          {
            v40 = swift_slowAlloc();
            v51 = swift_slowAlloc();
            v56 = v51;
            *v40 = 136315394;
            v41 = [v37 uuid];
            sub_22A4DB79C();

            sub_229839520(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
            v42 = sub_22A4DE5CC();
            v44 = v43;
            (*(v55 + 8))(v11, v9);
            v45 = sub_2295A3E30(v42, v44, &v56);

            *(v40 + 4) = v45;
            *(v40 + 12) = 2080;
            *(v40 + 14) = sub_2295A3E30(0xD000000000000031, 0x800000022A598380, &v56);
            _os_log_impl(&dword_229538000, v38, v39, "[%s] %s missing homeActivityStateManager", v40, 0x16u);
            v46 = v51;
            swift_arrayDestroy();
            MEMORY[0x22AAD4E50](v46, -1, -1);
            MEMORY[0x22AAD4E50](v40, -1, -1);
          }

          v35 = v53;
          v32 = v54;
        }

        sub_22981BDCC(v33);
        v47 = sub_22A4DD9DC();
        (*(*(v47 - 8) + 56))(v35, 1, 1, v47);
        v48 = swift_allocObject();
        v48[2] = 0;
        v48[3] = 0;
        v48[4] = v20;
        v48[5] = v33;
        v49 = v52;
        v48[6] = v52;
        v48[7] = v32;
        v50 = v20;
        sub_2295A1C30(v49, v32);
        sub_22957F3C0(0, 0, v35, &unk_22A585670, v48);
      }

LABEL_17:
      swift_once();
      goto LABEL_5;
    }
  }

  if (a1)
  {
    return a1(result);
  }

  return result;
}

void sub_22981BDCC(void *a1)
{
  v3 = [a1 notificationCenter];
  [v3 addObserver:v1 selector:sel_handleMatterAttributeChanged_ name:@"HMDMatterAttributeChangedNotification" object:v1];

  v4 = [a1 notificationCenter];
  if (qword_27D87B9F0 != -1)
  {
    swift_once();
  }

  [v4 addObserver:v1 selector:? name:? object:?];

  v5 = [a1 notificationCenter];
  v6 = v5;
  if (qword_27D87B9F8 != -1)
  {
    swift_once();
    v5 = v6;
  }

  [v5 addObserver:v1 selector:? name:? object:?];
}

uint64_t sub_22981BF48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = sub_22A4DB7DC();
  v7[6] = v8;
  v7[7] = *(v8 - 8);
  v7[8] = swift_task_alloc();
  v7[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22981C018, 0, 0);
}

uint64_t sub_22981C018()
{
  v1 = [objc_msgSend(*(v0 + 16) featuresDataSource)];
  swift_unknownObjectRelease();
  if (v1)
  {
    v2 = swift_task_alloc();
    *(v0 + 80) = v2;
    *v2 = v0;
    v2[1] = sub_22981C148;

    return sub_2297D361C();
  }

  else
  {
    v4 = swift_task_alloc();
    *(v0 + 120) = v4;
    *v4 = v0;
    v4[1] = sub_22981CA50;

    return sub_22981D8B4();
  }
}

uint64_t sub_22981C148(uint64_t a1, uint64_t a2)
{
  v5 = *v3;
  v6 = *v3;
  *(*v3 + 88) = a2;

  if (v2)
  {

    v7 = swift_task_alloc();
    *(v5 + 120) = v7;
    *v7 = v6;
    v7[1] = sub_22981CA50;

    return sub_22981D8B4();
  }

  else
  {
    *(v5 + 96) = a1;

    return MEMORY[0x2822009F8](sub_22981C2D4, 0, 0);
  }
}

uint64_t sub_22981C2D4()
{
  v41 = v0;
  v1 = *(v0 + 88);
  if (*(v0 + 96) == 2)
  {
    if (v1)
    {
      v40 = MEMORY[0x277D84F90];
      v2 = *(v1 + 16);
      if (v2)
      {
        v3 = *(v0 + 56);
        v5 = *(v3 + 16);
        v4 = v3 + 16;
        v39 = v5;
        v6 = v1 + ((*(v4 + 64) + 32) & ~*(v4 + 64));
        v7 = *(v4 + 56);
        v38 = MEMORY[0x277D84F90];
        do
        {
          v8 = *(v0 + 72);
          v9 = *(v0 + 48);
          v10 = *(v0 + 24);
          v39(v8, v6, v9);
          v11 = sub_22A4DB77C();
          v12 = [v10 roomWithUUID_];

          v13 = (*(v4 - 8))(v8, v9);
          if (v12)
          {
            MEMORY[0x22AAD09E0](v13);
            if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_22A4DD85C();
            }

            sub_22A4DD87C();
            v38 = v40;
          }

          v6 += v7;
          --v2;
        }

        while (v2);
      }

      else
      {
        v38 = MEMORY[0x277D84F90];
      }

      *(v0 + 104) = v38;

      if (v38 >> 62)
      {
        if (sub_22A4DE0EC())
        {
          goto LABEL_16;
        }
      }

      else if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_16:
        v16 = swift_task_alloc();
        *(v0 + 112) = v16;
        *v16 = v0;
        v16[1] = sub_22981C83C;
        v17 = *(v0 + 24);

        return sub_22981CD4C(v17, v38);
      }
    }

    if (qword_27D87BA98 != -1)
    {
      swift_once();
    }

    v18 = *(v0 + 16);
    v19 = sub_22A4DD07C();
    __swift_project_value_buffer(v19, qword_27D8817F8);
    v20 = v18;
    v21 = sub_22A4DD05C();
    v22 = sub_22A4DDCEC();

    if (os_log_type_enabled(v21, v22))
    {
      v24 = *(v0 + 56);
      v23 = *(v0 + 64);
      v25 = *(v0 + 48);
      v26 = *(v0 + 16);
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v40 = v28;
      *v27 = 136315394;
      v29 = [v26 uuid];
      sub_22A4DB79C();

      sub_229839520(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v30 = sub_22A4DE5CC();
      v32 = v31;
      (*(v24 + 8))(v23, v25);
      v33 = sub_2295A3E30(v30, v32, &v40);

      *(v27 + 4) = v33;
      *(v27 + 12) = 2080;
      *(v27 + 14) = sub_2295A3E30(0xD000000000000031, 0x800000022A598380, &v40);
      _os_log_impl(&dword_229538000, v21, v22, "[%s] %s Adaptive thermostat driver is localPresence but rooms are not configured", v27, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v28, -1, -1);
      MEMORY[0x22AAD4E50](v27, -1, -1);
    }

    v34 = *(v0 + 32);
    if (v34)
    {
      v34();
    }

    if ([*(v0 + 16) isConfiguredAsValenciaThermostat])
    {
      v35 = *(v0 + 16);
      v36 = [objc_msgSend(v35 dataSource)];
      swift_unknownObjectRelease();
      [v36 postNotificationName:@"HMDAccessoryConfiguredAsValenciaThermostat" object:v35];
    }

    v37 = *(v0 + 8);

    return v37();
  }

  else
  {

    v14 = swift_task_alloc();
    *(v0 + 120) = v14;
    *v14 = v0;
    v14[1] = sub_22981CA50;

    return sub_22981D8B4();
  }
}

uint64_t sub_22981C83C()
{

  return MEMORY[0x2822009F8](sub_22981C954, 0, 0);
}

uint64_t sub_22981C954()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v1();
  }

  if ([*(v0 + 16) isConfiguredAsValenciaThermostat])
  {
    v2 = *(v0 + 16);
    v3 = [objc_msgSend(v2 dataSource)];
    swift_unknownObjectRelease();
    [v3 postNotificationName:@"HMDAccessoryConfiguredAsValenciaThermostat" object:v2];
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_22981CA50()
{

  return MEMORY[0x2822009F8](sub_22981CB4C, 0, 0);
}

uint64_t sub_22981CB4C()
{
  v1 = [*(v0 + 16) swiftExtensions];
  _s15SwiftExtensionsCMa_1();
  v2 = swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtCE13HomeKitDaemonCSo15HMDHAPAccessory15SwiftExtensions_configuredAsValenciaThermostat;
  os_unfair_lock_lock(v2);
  *(v2 + 4) = 1;
  os_unfair_lock_unlock(v2);
  swift_unknownObjectRelease();
  v3 = swift_task_alloc();
  *(v0 + 128) = v3;
  *v3 = v0;
  v3[1] = sub_22981CC50;
  v4 = *(v0 + 24);

  return sub_22981DFEC(v4, 12);
}

uint64_t sub_22981CC50()
{

  return MEMORY[0x2822009F8](sub_229839A34, 0, 0);
}

uint64_t sub_22981CD4C(uint64_t a1, uint64_t a2)
{
  v3[22] = a2;
  v3[23] = v2;
  v3[21] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E9E8, &qword_22A57CB18);
  v3[24] = v4;
  v3[25] = *(v4 - 8);
  v3[26] = swift_task_alloc();
  v5 = sub_22A4DB7DC();
  v3[27] = v5;
  v3[28] = *(v5 - 8);
  v3[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22981CE78, 0, 0);
}

uint64_t (**sub_22981CE78())(uint64_t, uint64_t, id)
{
  v56 = v0;
  v1 = [objc_msgSend(*(v0 + 184) featuresDataSource)];
  swift_unknownObjectRelease();
  if (!v1)
  {
    goto LABEL_15;
  }

  result = [*(v0 + 168) swiftExtensions];
  if (!result)
  {
    __break(1u);
    goto LABEL_25;
  }

  ObjectType = swift_getObjectType();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_25:
    __break(1u);
    return result;
  }

  v4 = result[8](v0 + 136, ObjectType, result);
  v6 = v5;
  os_unfair_lock_lock(v5);
  sub_229564F88(&v6[2], v0 + 56, &qword_27D881140, &qword_22A5855F0);
  os_unfair_lock_unlock(v6);
  v4(v0 + 136, 0);
  swift_unknownObjectRelease();
  if (*(v0 + 80))
  {
    sub_229557188((v0 + 56), v0 + 16);
    if (qword_27D87BA98 != -1)
    {
      swift_once();
    }

    v7 = *(v0 + 184);
    v8 = sub_22A4DD07C();
    __swift_project_value_buffer(v8, qword_27D8817F8);
    v9 = v7;

    v10 = sub_22A4DD05C();
    v11 = sub_22A4DDCCC();

    if (os_log_type_enabled(v10, v11))
    {
      v13 = *(v0 + 224);
      v12 = *(v0 + 232);
      v14 = *(v0 + 216);
      v15 = *(v0 + 184);
      v54 = *(v0 + 176);
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v55[0] = v17;
      *v16 = 136315650;
      v18 = [v15 uuid];
      sub_22A4DB79C();

      sub_229839520(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v19 = sub_22A4DE5CC();
      v21 = v20;
      (*(v13 + 8))(v12, v14);
      v22 = sub_2295A3E30(v19, v21, v55);

      *(v16 + 4) = v22;
      *(v16 + 12) = 2080;
      *(v16 + 14) = sub_2295A3E30(0xD00000000000002BLL, 0x800000022A5981E0, v55);
      *(v16 + 22) = 2080;
      v23 = sub_229562F68(0, &unk_2814017A0, off_278666308);
      v24 = MEMORY[0x22AAD0A20](v54, v23);
      v26 = sub_2295A3E30(v24, v25, v55);

      *(v16 + 24) = v26;
      _os_log_impl(&dword_229538000, v10, v11, "[%s] %s Configuring local presence observer for rooms: %s", v16, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v17, -1, -1);
      MEMORY[0x22AAD4E50](v16, -1, -1);
    }

    v27 = *(v0 + 184);
    v28 = [v27 swiftExtensions];
    *(v0 + 240) = _s15SwiftExtensionsCMa_1();
    v29 = (swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtCE13HomeKitDaemonCSo15HMDHAPAccessory15SwiftExtensions_localPresenceObserver);
    os_unfair_lock_lock(v29);
    sub_22983499C(&v29[2], v27, (v0 + 96));
    os_unfair_lock_unlock(v29);
    v48 = *(v0 + 176);
    v47 = *(v0 + 184);
    swift_unknownObjectRelease();
    v49 = [v47 swiftExtensions];
    v50 = swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtCE13HomeKitDaemonCSo15HMDHAPAccessory15SwiftExtensions_configuredAsValenciaThermostat;
    os_unfair_lock_lock(v50);
    *(v50 + 4) = 1;
    os_unfair_lock_unlock(v50);
    swift_unknownObjectRelease();
    __swift_project_boxed_opaque_existential_0((v0 + 96), *(v0 + 120));

    if (v48 >> 62)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881F00, &unk_22A57CB50);
      v51 = sub_22A4DE3AC();
    }

    else
    {
      sub_22A4DE61C();
      v51 = *(v0 + 176);
    }

    *(v0 + 248) = v51;
    v52 = swift_task_alloc();
    *(v0 + 256) = v52;
    *v52 = v0;
    v52[1] = sub_22981D654;
    v53 = *(v0 + 208);

    return sub_229691DD8(v53, v51, v0 + 16);
  }

  sub_22953EAE4(v0 + 56, &qword_27D881140, &qword_22A5855F0);
  if (qword_27D87BA98 != -1)
  {
    swift_once();
  }

  v30 = *(v0 + 184);
  v31 = sub_22A4DD07C();
  __swift_project_value_buffer(v31, qword_27D8817F8);
  v32 = v30;
  v33 = sub_22A4DD05C();
  v34 = sub_22A4DDCEC();

  if (os_log_type_enabled(v33, v34))
  {
    v36 = *(v0 + 224);
    v35 = *(v0 + 232);
    v37 = *(v0 + 216);
    v38 = *(v0 + 184);
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v55[0] = v40;
    *v39 = 136315394;
    v41 = [v38 uuid];
    sub_22A4DB79C();

    sub_229839520(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v42 = sub_22A4DE5CC();
    v44 = v43;
    (*(v36 + 8))(v35, v37);
    v45 = sub_2295A3E30(v42, v44, v55);

    *(v39 + 4) = v45;
    *(v39 + 12) = 2080;
    *(v39 + 14) = sub_2295A3E30(0xD00000000000002BLL, 0x800000022A5981E0, v55);
    _os_log_impl(&dword_229538000, v33, v34, "[%s] %s roomPresencePublisher is nil", v39, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v40, -1, -1);
    MEMORY[0x22AAD4E50](v39, -1, -1);
  }

LABEL_15:

  v46 = *(v0 + 8);

  return v46();
}

uint64_t sub_22981D654()
{

  return MEMORY[0x2822009F8](sub_22981D76C, 0, 0);
}

uint64_t sub_22981D76C()
{
  v1 = [*(v0 + 184) swiftExtensions];
  v2 = swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtCE13HomeKitDaemonCSo15HMDHAPAccessory15SwiftExtensions_localPresenceObserverTask;
  os_unfair_lock_lock(v2);
  if (*(v2 + 8))
  {
    sub_22A4DDA7C();
  }

  v4 = *(v0 + 200);
  v3 = *(v0 + 208);
  v5 = *(v0 + 192);
  *(v2 + 8) = sub_229835414(v3);
  os_unfair_lock_unlock(v2);
  swift_unknownObjectRelease();
  (*(v4 + 8))(v3, v5);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0((v0 + 96));

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_22981D8B4()
{
  v1[12] = v0;
  v2 = sub_22A4DB7DC();
  v1[13] = v2;
  v1[14] = *(v2 - 8);
  v1[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22981D974, 0, 0);
}

uint64_t sub_22981D974()
{
  v32 = v0;
  if (qword_27D87BA98 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 96);
  v2 = sub_22A4DD07C();
  __swift_project_value_buffer(v2, qword_27D8817F8);
  v3 = v1;
  v4 = sub_22A4DD05C();
  v5 = sub_22A4DDCCC();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = *(v0 + 112);
    v6 = *(v0 + 120);
    v9 = *(v0 + 96);
    v8 = *(v0 + 104);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v31 = v11;
    *v10 = 136315394;
    v12 = [v9 uuid];
    sub_22A4DB79C();

    sub_229839520(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v13 = sub_22A4DE5CC();
    v15 = v14;
    (*(v7 + 8))(v6, v8);
    v16 = sub_2295A3E30(v13, v15, &v31);

    *(v10 + 4) = v16;
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_2295A3E30(0xD000000000000022, 0x800000022A5982F0, &v31);
    _os_log_impl(&dword_229538000, v4, v5, "[%s] %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v11, -1, -1);
    MEMORY[0x22AAD4E50](v10, -1, -1);
  }

  v17 = [*(v0 + 96) swiftExtensions];
  _s15SwiftExtensionsCMa_1();
  v18 = swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtCE13HomeKitDaemonCSo15HMDHAPAccessory15SwiftExtensions_localPresenceObserverTask;
  os_unfair_lock_lock(v18);
  v19 = *(v18 + 8);
  *(v0 + 128) = v19;
  *(v18 + 8) = 0;
  os_unfair_lock_unlock(v18);
  swift_unknownObjectRelease();
  if (v19)
  {

    sub_22A4DDA7C();
  }

  v20 = [*(v0 + 96) swiftExtensions];
  v21 = swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtCE13HomeKitDaemonCSo15HMDHAPAccessory15SwiftExtensions_localPresenceObserver;
  os_unfair_lock_lock(v21);
  v22 = *(v21 + 8);
  v23 = *(v21 + 24);
  *(v0 + 48) = *(v21 + 40);
  *(v0 + 16) = v22;
  *(v0 + 32) = v23;
  *(v21 + 24) = 0u;
  *(v21 + 40) = 0;
  *(v21 + 8) = 0u;
  os_unfair_lock_unlock(v21);
  swift_unknownObjectRelease();
  sub_229564F88(v0 + 16, v0 + 56, &qword_27D880BF0, &unk_22A585580);
  v24 = *(v0 + 80);
  if (v24)
  {
    __swift_project_boxed_opaque_existential_0((v0 + 56), v24);
    v25 = off_283CDF908;
    v26 = _s32DefaultAccessoryPresenceObserverCMa(0);
    v30 = (v25 + *v25);
    v27 = swift_task_alloc();
    *(v0 + 136) = v27;
    *v27 = v0;
    v27[1] = sub_22981DE68;

    return (v30)(v26, &off_283CDF900);
  }

  else
  {
    sub_22953EAE4(v0 + 16, &qword_27D880BF0, &unk_22A585580);

    sub_22953EAE4(v0 + 56, &qword_27D880BF0, &unk_22A585580);

    v29 = *(v0 + 8);

    return v29();
  }
}

uint64_t sub_22981DE68()
{

  return MEMORY[0x2822009F8](sub_22981DF64, 0, 0);
}

uint64_t sub_22981DF64()
{

  sub_22953EAE4(v0 + 16, &qword_27D880BF0, &unk_22A585580);
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22981DFEC(uint64_t a1, char a2)
{
  *(v3 + 281) = a2;
  *(v3 + 96) = a1;
  *(v3 + 104) = v2;
  v4 = sub_22A4DB7DC();
  *(v3 + 112) = v4;
  *(v3 + 120) = *(v4 - 8);
  *(v3 + 128) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881888, &qword_22A5854C0);
  *(v3 + 136) = swift_task_alloc();
  *(v3 + 144) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881890, &qword_22A5854C8);
  *(v3 + 152) = swift_task_alloc();
  v5 = sub_22A4DB74C();
  *(v3 + 160) = v5;
  *(v3 + 168) = *(v5 - 8);
  *(v3 + 176) = swift_task_alloc();
  *(v3 + 184) = swift_task_alloc();
  v6 = sub_22A4DCD0C();
  *(v3 + 192) = v6;
  *(v3 + 200) = *(v6 - 8);
  *(v3 + 208) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22981E1E8, 0, 0);
}

uint64_t sub_22981E1E8()
{
  v46 = v0;
  v1 = [*(v0 + 104) matterAdapter];
  *(v0 + 216) = v1;
  if (!v1)
  {
    goto LABEL_8;
  }

  v2 = v1;
  v3 = [v1 matterDevice];
  if (!v3)
  {

LABEL_8:
    if (qword_27D87BA98 != -1)
    {
      swift_once();
    }

    v12 = *(v0 + 104);
    v13 = sub_22A4DD07C();
    __swift_project_value_buffer(v13, qword_27D8817F8);
    v14 = v12;
    v15 = sub_22A4DD05C();
    v16 = sub_22A4DDCEC();

    if (os_log_type_enabled(v15, v16))
    {
      v18 = *(v0 + 120);
      v17 = *(v0 + 128);
      v20 = *(v0 + 104);
      v19 = *(v0 + 112);
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v45 = v22;
      *v21 = 136315394;
      v23 = [v20 uuid];
      sub_22A4DB79C();

      sub_229839520(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v24 = sub_22A4DE5CC();
      v26 = v25;
      (*(v18 + 8))(v17, v19);
      v27 = sub_2295A3E30(v24, v26, &v45);

      *(v21 + 4) = v27;
      *(v21 + 12) = 2080;
      *(v21 + 14) = sub_2295A3E30(0xD000000000000023, 0x800000022A597F00, &v45);
      _os_log_impl(&dword_229538000, v15, v16, "[%s] %s No Matter device", v21, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v22, -1, -1);
      MEMORY[0x22AAD4E50](v21, -1, -1);
    }

    goto LABEL_13;
  }

  v4 = v3;
  v5 = *(v0 + 104);
  v6 = sub_229562F68(0, &qword_27D87DB90, 0x277CD5310);
  v7 = MEMORY[0x277D17450];
  *(v0 + 80) = v6;
  *(v0 + 88) = v7;
  *(v0 + 56) = v4;
  sub_229557188((v0 + 56), v0 + 16);
  v8 = [v5 valenciaMatterEndpoint];
  *(v0 + 224) = v8;
  if (v8)
  {
    [v8 unsignedShortValue];
    sub_22A4DCCEC();
    v9 = swift_task_alloc();
    *(v0 + 232) = v9;
    *v9 = v0;
    v9[1] = sub_22981E7AC;
    v10 = *(v0 + 208);

    return sub_229822BCC(v0 + 16, v10);
  }

  if (qword_27D87BA98 != -1)
  {
    swift_once();
  }

  v29 = *(v0 + 104);
  v30 = sub_22A4DD07C();
  __swift_project_value_buffer(v30, qword_27D8817F8);
  v31 = v29;
  v32 = sub_22A4DD05C();
  v33 = sub_22A4DDCEC();

  if (os_log_type_enabled(v32, v33))
  {
    v35 = *(v0 + 120);
    v34 = *(v0 + 128);
    v37 = *(v0 + 104);
    v36 = *(v0 + 112);
    v38 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v45 = v44;
    *v38 = 136315394;
    v39 = [v37 uuid];
    sub_22A4DB79C();

    sub_229839520(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v40 = sub_22A4DE5CC();
    v42 = v41;
    (*(v35 + 8))(v34, v36);
    v43 = sub_2295A3E30(v40, v42, &v45);

    *(v38 + 4) = v43;
    *(v38 + 12) = 2080;
    *(v38 + 14) = sub_2295A3E30(0xD000000000000023, 0x800000022A597F00, &v45);
    _os_log_impl(&dword_229538000, v32, v33, "[%s] %s No Valencia Thermostat Endpoints", v38, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v44, -1, -1);
    MEMORY[0x22AAD4E50](v38, -1, -1);
  }

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
LABEL_13:

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_22981E7AC(char a1)
{
  *(*v1 + 282) = a1;

  return MEMORY[0x2822009F8](sub_22981E8AC, 0, 0);
}

uint64_t sub_22981E8AC()
{
  v36 = v0;
  if (*(v0 + 282) == 1)
  {
    if ([*(v0 + 104) isConfiguredAsValenciaThermostat])
    {
      v1 = swift_task_alloc();
      *(v0 + 240) = v1;
      *v1 = v0;
      v1[1] = sub_22981EC74;
      v2 = *(v0 + 136);
      v3 = *(v0 + 96);

      return sub_229823618(v2, v3);
    }

    if (qword_27D87BA98 != -1)
    {
      swift_once();
    }

    v10 = *(v0 + 104);
    v11 = sub_22A4DD07C();
    __swift_project_value_buffer(v11, qword_27D8817F8);
    v12 = v10;
    v13 = sub_22A4DD05C();
    v14 = sub_22A4DDCCC();

    v15 = os_log_type_enabled(v13, v14);
    v16 = *(v0 + 224);
    v18 = *(v0 + 200);
    v17 = *(v0 + 208);
    v19 = *(v0 + 192);
    if (v15)
    {
      v34 = *(v0 + 208);
      v21 = *(v0 + 120);
      v20 = *(v0 + 128);
      v23 = *(v0 + 104);
      v22 = *(v0 + 112);
      v32 = *(v0 + 216);
      v33 = *(v0 + 224);
      v24 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v35 = v31;
      *v24 = 136315394;
      v25 = [v23 uuid];
      sub_22A4DB79C();

      sub_229839520(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v26 = sub_22A4DE5CC();
      v30 = v19;
      v28 = v27;
      (*(v21 + 8))(v20, v22);
      v29 = sub_2295A3E30(v26, v28, &v35);

      *(v24 + 4) = v29;
      *(v24 + 12) = 2080;
      *(v24 + 14) = sub_2295A3E30(0xD000000000000023, 0x800000022A597F00, &v35);
      _os_log_impl(&dword_229538000, v13, v14, "[%s] %s Not configured yet", v24, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v31, -1, -1);
      MEMORY[0x22AAD4E50](v24, -1, -1);

      (*(v18 + 8))(v34, v30);
    }

    else
    {

      (*(v18 + 8))(v17, v19);
    }
  }

  else
  {
    v5 = *(v0 + 224);
    v7 = *(v0 + 200);
    v6 = *(v0 + 208);
    v8 = *(v0 + 192);

    (*(v7 + 8))(v6, v8);
  }

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_22981EC74()
{

  return MEMORY[0x2822009F8](sub_22981ED70, 0, 0);
}

uint64_t sub_22981ED70()
{
  v73 = v0;
  v1 = *(v0 + 136);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8818A0, &qword_22A5854E0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = *(v0 + 224);
    v5 = *(v0 + 200);
    v4 = *(v0 + 208);
    v6 = *(v0 + 192);

    (*(v5 + 8))(v4, v6);
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    sub_22953EAE4(v1, &qword_27D881888, &qword_22A5854C0);
LABEL_9:

    v60 = *(v0 + 8);

    return v60();
  }

  v7 = *(v0 + 184);
  v8 = *(v0 + 160);
  v9 = *(v0 + 168);
  v11 = *(v0 + 144);
  v10 = *(v0 + 152);
  v12 = *(v2 + 48);
  v13 = *(v11 + 48);
  *v10 = *v1;
  v14 = *(v9 + 32);
  v14(v10 + v13, v1 + v12, v8);
  v15 = *v10;
  *(v0 + 248) = *v10;
  v14(v7, v10 + *(v11 + 48), v8);
  if (![v15 state])
  {
    v53 = *(v0 + 224);
    v55 = *(v0 + 200);
    v54 = *(v0 + 208);
    v57 = *(v0 + 184);
    v56 = *(v0 + 192);
    v58 = *(v0 + 160);
    v59 = *(v0 + 168);

    (*(v59 + 8))(v57, v58);
    (*(v55 + 8))(v54, v56);
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    goto LABEL_9;
  }

  if (qword_27D87BA98 != -1)
  {
    swift_once();
  }

  v17 = *(v0 + 176);
  v16 = *(v0 + 184);
  v18 = *(v0 + 160);
  v19 = *(v0 + 168);
  v20 = *(v0 + 104);
  v21 = sub_22A4DD07C();
  __swift_project_value_buffer(v21, qword_27D8817F8);
  (*(v19 + 16))(v17, v16, v18);
  v22 = v20;
  v23 = v15;
  v24 = sub_22A4DD05C();
  v25 = sub_22A4DDCCC();

  v26 = os_log_type_enabled(v24, v25);
  v28 = *(v0 + 168);
  v27 = *(v0 + 176);
  v29 = *(v0 + 160);
  if (v26)
  {
    v71 = v25;
    v31 = *(v0 + 120);
    v30 = *(v0 + 128);
    v69 = *(v0 + 160);
    v33 = *(v0 + 104);
    v32 = *(v0 + 112);
    v67 = *(v0 + 281);
    v68 = *(v0 + 176);
    v34 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    v72 = v70;
    *v34 = 136316162;
    v35 = [v33 uuid];
    sub_22A4DB79C();

    sub_229839520(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v36 = sub_22A4DE5CC();
    v38 = v37;
    (*(v31 + 8))(v30, v32);
    v39 = sub_2295A3E30(v36, v38, &v72);

    *(v34 + 4) = v39;
    *(v34 + 12) = 2080;
    *(v34 + 14) = sub_2295A3E30(0xD000000000000023, 0x800000022A597F00, &v72);
    *(v34 + 22) = 2112;
    *(v34 + 24) = v23;
    *v66 = v23;
    *(v34 + 32) = 2080;
    *(v0 + 280) = v67;
    v40 = v23;
    v41 = sub_22A4DD64C();
    v43 = sub_2295A3E30(v41, v42, &v72);

    *(v34 + 34) = v43;
    *(v34 + 42) = 2080;
    v44 = sub_22A4DB6AC();
    v45 = [v44 hmf_localTimeDescription];

    v46 = sub_22A4DD5EC();
    v48 = v47;

    v51 = *(v28 + 8);
    v49 = v28 + 8;
    v50 = v51;
    v51(v68, v69);
    v52 = sub_2295A3E30(v46, v48, &v72);

    *(v34 + 44) = v52;
    _os_log_impl(&dword_229538000, v24, v71, "[%s] %s newState: %@ reason: %s, nextFireDate: %s", v34, 0x34u);
    sub_22953EAE4(v66, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v66, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v70, -1, -1);
    MEMORY[0x22AAD4E50](v34, -1, -1);
  }

  else
  {

    v62 = *(v28 + 8);
    v49 = v28 + 8;
    v50 = v62;
    v62(v27, v29);
  }

  *(v0 + 256) = v49;
  *(v0 + 264) = v50;
  v63 = swift_task_alloc();
  *(v0 + 272) = v63;
  *v63 = v0;
  v63[1] = sub_22981F37C;
  v64 = *(v0 + 208);
  v65 = *(v0 + 281);

  return sub_229825D3C(v23, v0 + 16, v64, v65);
}

uint64_t sub_22981F37C()
{

  return MEMORY[0x2822009F8](sub_22981F478, 0, 0);
}

uint64_t sub_22981F478()
{
  v1 = v0[31];
  v2 = v0[27];
  v3 = v0[28];
  v4 = v0[25];
  v10 = v0[26];
  v11 = v0[33];
  v6 = v0[23];
  v5 = v0[24];
  v7 = v0[20];
  sub_22982AB44();

  v11(v6, v7);
  (*(v4 + 8))(v10, v5);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v8 = v0[1];

  return v8();
}

void *sub_22981F650()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v54 - v2;
  v4 = sub_22A4DB7DC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22A4DD2FC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (&v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v11 = [v0 workQueue];
  (*(v9 + 104))(v11, *MEMORY[0x277D85200], v8);
  v12 = sub_22A4DD31C();
  (*(v9 + 8))(v11, v8);
  if ((v12 & 1) == 0)
  {
    __break(1u);
LABEL_15:
    swift_once();
    goto LABEL_5;
  }

  v13 = [objc_msgSend(v0 featuresDataSource)];
  result = swift_unknownObjectRelease();
  if (!v13)
  {
    return result;
  }

  result = [v0 home];
  if (!result)
  {
    return result;
  }

  v11 = result;
  if (qword_27D87BA98 != -1)
  {
    goto LABEL_15;
  }

LABEL_5:
  v60 = v7;
  v15 = sub_22A4DD07C();
  v16 = __swift_project_value_buffer(v15, qword_27D8817F8);
  v17 = v0;
  v18 = sub_22A4DD05C();
  v19 = sub_22A4DDCCC();

  v20 = os_log_type_enabled(v18, v19);
  v57 = v4;
  v58 = v5;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v56 = v16;
    v22 = v4;
    v23 = v21;
    v24 = swift_slowAlloc();
    v59 = v11;
    v55 = v24;
    v61 = v24;
    *v23 = 136315394;
    v25 = [v17 uuid];
    v26 = v60;
    sub_22A4DB79C();

    sub_229839520(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v27 = sub_22A4DE5CC();
    LOBYTE(v25) = v19;
    v29 = v28;
    (*(v5 + 8))(v26, v22);
    v30 = sub_2295A3E30(v27, v29, &v61);

    *(v23 + 4) = v30;
    *(v23 + 12) = 2080;
    *(v23 + 14) = sub_2295A3E30(0xD000000000000021, 0x800000022A598350, &v61);
    _os_log_impl(&dword_229538000, v18, v25, "[%s] %s", v23, 0x16u);
    v31 = v55;
    swift_arrayDestroy();
    v11 = v59;
    MEMORY[0x22AAD4E50](v31, -1, -1);
    MEMORY[0x22AAD4E50](v23, -1, -1);
  }

  v32 = sub_22A4DD9DC();
  (*(*(v32 - 8) + 56))(v3, 1, 1, v32);
  v33 = swift_allocObject();
  v33[2] = 0;
  v33[3] = 0;
  v33[4] = v17;
  v34 = v17;
  sub_22957F3C0(0, 0, v3, &unk_22A585660, v33);

  v35 = [v11 notificationCenter];
  [v35 removeObserver_];

  v36 = [v11 homeActivityStateManager];
  if (v36)
  {
    v37 = v36;
    [v36 removeObserver_];
  }

  else
  {
    v38 = v34;
    v39 = sub_22A4DD05C();
    v40 = sub_22A4DDCEC();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v59 = v11;
      v42 = v41;
      v43 = swift_slowAlloc();
      v61 = v43;
      *v42 = 136315394;
      v44 = [v38 uuid];
      v45 = v60;
      sub_22A4DB79C();

      sub_229839520(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v46 = v57;
      v47 = sub_22A4DE5CC();
      v49 = v48;
      (*(v58 + 8))(v45, v46);
      v50 = sub_2295A3E30(v47, v49, &v61);

      *(v42 + 4) = v50;
      *(v42 + 12) = 2080;
      *(v42 + 14) = sub_2295A3E30(0xD000000000000021, 0x800000022A598350, &v61);
      _os_log_impl(&dword_229538000, v39, v40, "[%s] %s missing homeActivityStateManager", v42, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v43, -1, -1);
      v51 = v42;
      v11 = v59;
      MEMORY[0x22AAD4E50](v51, -1, -1);
    }
  }

  v52 = [v34 swiftExtensions];
  _s15SwiftExtensionsCMa_1();
  v53 = swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtCE13HomeKitDaemonCSo15HMDHAPAccessory15SwiftExtensions_configuredAsValenciaThermostat;
  os_unfair_lock_lock(v53);
  *(v53 + 4) = 0;
  os_unfair_lock_unlock(v53);

  return swift_unknownObjectRelease();
}

uint64_t sub_22981FDB4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_229586D38;

  return sub_22981D8B4();
}

id sub_22981FE8C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v15 - v2;
  v4 = sub_22A4DD2FC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v7 = [v0 workQueue];
  (*(v5 + 104))(v7, *MEMORY[0x277D85200], v4);
  v8 = sub_22A4DD31C();
  result = (*(v5 + 8))(v7, v4);
  if (v8)
  {
    v10 = [objc_msgSend(v0 featuresDataSource)];
    result = swift_unknownObjectRelease();
    if (v10)
    {
      result = [v0 home];
      if (result)
      {
        v11 = result;
        v12 = sub_22A4DD9DC();
        (*(*(v12 - 8) + 56))(v3, 1, 1, v12);
        v13 = swift_allocObject();
        v13[2] = 0;
        v13[3] = 0;
        v13[4] = v0;
        v13[5] = v11;
        v14 = v0;
        sub_22957F3C0(0, 0, v3, &unk_22A585650, v13);
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2298200D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_229586D38;

  return sub_22981DFEC(a5, 1);
}

uint64_t sub_2298201C0()
{
  v1 = sub_22A4DB7DC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = sub_22A4DCD0C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v0 matterAdapter];
  if (!v7)
  {
    goto LABEL_7;
  }

  v8 = v7;
  v9 = [v7 matterDevice];
  if (!v9)
  {
LABEL_6:

LABEL_7:
    v13 = 0;
    return v13 & 1;
  }

  v10 = v9;
  v17 = sub_229562F68(0, &qword_27D87DB90, 0x277CD5310);
  v18 = MEMORY[0x277D17450];
  *&v16 = v10;
  sub_229557188(&v16, v19);
  v11 = [v0 valenciaMatterEndpoint];
  if (!v11)
  {
    __swift_destroy_boxed_opaque_existential_0(v19);
    goto LABEL_6;
  }

  v12 = v11;
  v15[6] = v2;
  [v11 unsignedShortValue];
  sub_22A4DCCEC();
  v13 = sub_22A4DC92C();

  (*(v4 + 8))(v6, v3);
  __swift_destroy_boxed_opaque_existential_0(v19);
  return v13 & 1;
}

void sub_2298206CC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v36[-v3];
  v5 = sub_22A4DCDAC();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v36[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v11 = &v36[-v10];
  v12 = sub_22A4DCC4C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v36[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = [v0 home];
  if (v16)
  {
    v40 = v16;
    if ([v16 isCurrentDeviceConfirmedPrimaryResident])
    {
      v17 = sub_22A4DB20C();
      if (v17)
      {
        v18 = v17;
        v41 = sub_22A4DD5EC();
        v42 = v19;
        sub_22A4DE18C();
        if (*(v18 + 16) && (v20 = sub_2295402E8(v43), (v21 & 1) != 0))
        {
          sub_2295404B0(*(v18 + 56) + 32 * v20, v44);
          sub_22954045C(v43);
          v39 = sub_229562F68(0, &qword_281401770, 0x277CCABB0);
          if ((swift_dynamicCast() & 1) == 0)
          {

            return;
          }

          v38 = v41;
          v41 = sub_22A4DD5EC();
          v42 = v22;
          sub_22A4DE18C();
          if (*(v18 + 16))
          {
            v23 = sub_2295402E8(v43);
            if (v24)
            {
              sub_2295404B0(*(v18 + 56) + 32 * v23, v44);
              sub_22954045C(v43);

              if (swift_dynamicCast())
              {
                v39 = v41;
                v37 = [v38 unsignedIntValue];
                sub_22A4DCB6C();
                v25 = sub_22A4DCC3C();
                (*(v13 + 8))(v15, v12);
                if (v37 == v25)
                {
                  v26 = v39;
                  [v39 unsignedIntValue];
                  sub_22A4DCD8C();
                  if (sub_229838694())
                  {
                    (*(v6 + 16))(v9, v11, v5);
                    v27 = sub_229838920(v9);
                    v28 = sub_22A4DD9DC();
                    (*(*(v28 - 8) + 56))(v4, 1, 1, v28);
                    v29 = swift_allocObject();
                    *(v29 + 16) = 0;
                    *(v29 + 24) = 0;
                    *(v29 + 32) = v1;
                    *(v29 + 40) = v40;
                    *(v29 + 48) = v27;
                    v30 = v1;
                    v31 = v40;
                    sub_22957F3C0(0, 0, v4, &unk_22A585640, v29);

                    sub_22A4DCD3C();
                    sub_229839520(&unk_27D881930, MEMORY[0x277D17430], MEMORY[0x277D17440]);
                    sub_22A4DD7DC();
                    sub_22A4DD7DC();
                    v32 = *(v6 + 8);
                    v32(v9, v5);
                    v33 = v38;
                    if (LODWORD(v43[0]) == v44[0])
                    {
                      v34 = [v31 notificationCenter];
                      [v34 postNotificationName:@"HMDAccessoryValenciaStateEnabledAttributeChanged" object:v30];

                      v32(v11, v5);
                    }

                    else
                    {
                      v32(v11, v5);
                    }
                  }

                  else
                  {
                    (*(v6 + 8))(v11, v5);
                  }
                }

                else
                {
                }
              }

              else
              {
              }

              return;
            }
          }
        }

        else
        {
        }

        sub_22954045C(v43);
        return;
      }
    }

    v35 = v40;
  }
}

uint64_t sub_229820D1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v9 = swift_task_alloc();
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = sub_229586D38;

  return sub_22981DFEC(a5, a6);
}

uint64_t sub_229820EB0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_229586D38;

  return sub_229820F40();
}

uint64_t sub_229820F40()
{
  v1[7] = v0;
  v1[8] = swift_getObjectType();
  v2 = sub_22A4DB7DC();
  v1[9] = v2;
  v1[10] = *(v2 - 8);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_229821018, 0, 0);
}

uint64_t sub_229821018()
{
  v42 = v0;
  v1 = [*(v0 + 56) home];
  *(v0 + 104) = v1;
  if (v1)
  {
    v2 = v1;
    if ([v1 isCurrentDeviceConfirmedPrimaryResident])
    {
      v3 = *(v0 + 56);
      v4 = [v3 swiftExtensions];
      _s15SwiftExtensionsCMa_1();
      v5 = (swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtCE13HomeKitDaemonCSo15HMDHAPAccessory15SwiftExtensions_climateStorage);
      os_unfair_lock_lock(v5);
      sub_22978620C(&v5[2], v3, (v0 + 16));
      os_unfair_lock_unlock(v5);
      swift_unknownObjectRelease();
      __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
      v39 = swift_task_alloc();
      *(v0 + 112) = v39;
      *v39 = v0;
      v39[1] = sub_2298215D4;

      return sub_2296C31A8();
    }

    if (qword_27D87BA98 != -1)
    {
      swift_once();
    }

    v22 = *(v0 + 56);
    v23 = sub_22A4DD07C();
    __swift_project_value_buffer(v23, qword_27D8817F8);
    v24 = v22;
    v25 = sub_22A4DD05C();
    v26 = sub_22A4DDCEC();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = *(v0 + 96);
      v29 = *(v0 + 72);
      v28 = *(v0 + 80);
      v30 = *(v0 + 56);
      v31 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v41[0] = v40;
      *v31 = 136315394;
      v32 = [v30 uuid];
      sub_22A4DB79C();

      sub_229839520(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v33 = sub_22A4DE5CC();
      v35 = v34;
      (*(v28 + 8))(v27, v29);
      v36 = sub_2295A3E30(v33, v35, v41);

      *(v31 + 4) = v36;
      *(v31 + 12) = 2080;
      *(v31 + 14) = sub_2295A3E30(0xD000000000000031, 0x800000022A5981A0, v41);
      _os_log_impl(&dword_229538000, v25, v26, "[%s] %s Ignoring notification. Not the primary resident", v31, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v40, -1, -1);
      MEMORY[0x22AAD4E50](v31, -1, -1);
    }
  }

  else
  {
    if (qword_27D87BA98 != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 56);
    v7 = sub_22A4DD07C();
    __swift_project_value_buffer(v7, qword_27D8817F8);
    v8 = v6;
    v9 = sub_22A4DD05C();
    v10 = sub_22A4DDCEC();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = *(v0 + 96);
      v12 = *(v0 + 72);
      v13 = *(v0 + 80);
      v14 = *(v0 + 56);
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v41[0] = v16;
      *v15 = 136315394;
      v17 = [v14 uuid];
      sub_22A4DB79C();

      sub_229839520(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v18 = sub_22A4DE5CC();
      v20 = v19;
      (*(v13 + 8))(v11, v12);
      v21 = sub_2295A3E30(v18, v20, v41);

      *(v15 + 4) = v21;
      *(v15 + 12) = 2080;
      *(v15 + 14) = sub_2295A3E30(0xD000000000000031, 0x800000022A5981A0, v41);
      _os_log_impl(&dword_229538000, v9, v10, "[%s] %s home is nil", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v16, -1, -1);
      MEMORY[0x22AAD4E50](v15, -1, -1);
    }
  }

  v37 = *(v0 + 8);

  return v37();
}

uint64_t sub_2298215D4(uint64_t a1, uint64_t a2)
{
  v5 = *v3;
  *(*v3 + 120) = a2;

  if (v2)
  {

    v6 = sub_229821C3C;
  }

  else
  {
    *(v5 + 128) = a1;
    v6 = sub_229821704;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_229821704()
{
  v45 = v0;
  v1 = v0[16];
  v2 = v0[7];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v3 = [objc_msgSend(v2 featuresDataSource)];
  swift_unknownObjectRelease();
  v4 = v0[15];
  if (v3)
  {
    v5 = v1 == 2;
  }

  else
  {
    v5 = 0;
  }

  if (!v5)
  {

    v6 = swift_task_alloc();
    v0[19] = v6;
    *v6 = v0;
    v6[1] = sub_22982204C;

    return sub_22981D8B4();
  }

  if (v4)
  {
    v44 = MEMORY[0x277D84F90];
    v8 = *(v4 + 16);
    if (v8)
    {
      v9 = v0[10];
      v11 = *(v9 + 16);
      v10 = v9 + 16;
      v42 = v11;
      v12 = v4 + ((*(v10 + 64) + 32) & ~*(v10 + 64));
      v13 = *(v10 + 56);
      v41 = MEMORY[0x277D84F90];
      do
      {
        v14 = v0[13];
        v15 = v0[11];
        v16 = v0[9];
        v42(v15, v12, v16);
        v17 = sub_22A4DB77C();
        v18 = [v14 roomWithUUID_];

        v19 = (*(v10 - 8))(v15, v16);
        if (v18)
        {
          MEMORY[0x22AAD09E0](v19);
          if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_22A4DD85C();
          }

          sub_22A4DD87C();
          v41 = v44;
        }

        v12 += v13;
        --v8;
      }

      while (v8);
    }

    else
    {
      v41 = MEMORY[0x277D84F90];
    }

    v0[17] = v41;

    if (v41 >> 62)
    {
      if (sub_22A4DE0EC())
      {
        goto LABEL_19;
      }
    }

    else if (*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_19:
      v20 = swift_task_alloc();
      v0[18] = v20;
      *v20 = v0;
      v20[1] = sub_229821EC4;
      v21 = v0[13];

      return sub_22981CD4C(v21, v41);
    }
  }

  if (qword_27D87BA98 != -1)
  {
    swift_once();
  }

  v22 = v0[7];
  v23 = sub_22A4DD07C();
  __swift_project_value_buffer(v23, qword_27D8817F8);
  v24 = v22;
  v25 = sub_22A4DD05C();
  v26 = sub_22A4DDCEC();

  v27 = os_log_type_enabled(v25, v26);
  v28 = v0[13];
  if (v27)
  {
    v29 = v0[12];
    v30 = v0[9];
    v31 = v0[10];
    v32 = v0[7];
    v43 = v0[13];
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v44 = v34;
    *v33 = 136315394;
    v35 = [v32 uuid];
    sub_22A4DB79C();

    sub_229839520(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v36 = sub_22A4DE5CC();
    v38 = v37;
    (*(v31 + 8))(v29, v30);
    v39 = sub_2295A3E30(v36, v38, &v44);

    *(v33 + 4) = v39;
    *(v33 + 12) = 2080;
    *(v33 + 14) = sub_2295A3E30(0xD000000000000031, 0x800000022A5981A0, &v44);
    _os_log_impl(&dword_229538000, v25, v26, "[%s] %s Adaptive thermostat driver is localPresence but rooms are not configured", v33, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v34, -1, -1);
    MEMORY[0x22AAD4E50](v33, -1, -1);
    v28 = v43;
  }

  v40 = v0[1];

  return v40();
}

uint64_t sub_229821C3C()
{
  v23 = v0;
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  if (qword_27D87BA98 != -1)
  {
    swift_once();
  }

  v1 = v0[7];
  v2 = sub_22A4DD07C();
  __swift_project_value_buffer(v2, qword_27D8817F8);
  v3 = v1;
  v4 = sub_22A4DD05C();
  v5 = sub_22A4DDCEC();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[13];
  if (v6)
  {
    v8 = v0[12];
    v9 = v0[9];
    v10 = v0[10];
    v11 = v0[7];
    v21 = v0[13];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v22 = v13;
    *v12 = 136315394;
    v14 = [v11 uuid];
    sub_22A4DB79C();

    sub_229839520(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v15 = sub_22A4DE5CC();
    v17 = v16;
    (*(v10 + 8))(v8, v9);
    v18 = sub_2295A3E30(v15, v17, &v22);

    *(v12 + 4) = v18;
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_2295A3E30(0xD000000000000031, 0x800000022A5981A0, &v22);
    _os_log_impl(&dword_229538000, v4, v5, "[%s] %s failed to fetch settings", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v13, -1, -1);
    MEMORY[0x22AAD4E50](v12, -1, -1);
    v7 = v21;
  }

  v19 = v0[1];

  return v19();
}

uint64_t sub_229821EC4()
{

  return MEMORY[0x2822009F8](sub_229821FDC, 0, 0);
}

uint64_t sub_229821FDC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22982204C()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 160) = v3;
  *v3 = v2;
  v3[1] = sub_2298221A8;
  v4 = *(v1 + 104);

  return sub_22981DFEC(v4, 2);
}

uint64_t sub_2298221A8()
{

  return MEMORY[0x2822009F8](sub_229839A3C, 0, 0);
}

uint64_t sub_2298222C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_22A4DB7DC();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_229822384, 0, 0);
}

uint64_t sub_229822384()
{
  v39 = v0;
  v1 = [*(v0 + 16) home];
  *(v0 + 48) = v1;
  if (v1)
  {
    v2 = v1;
    if ([v1 isCurrentDeviceConfirmedPrimaryResident])
    {
      v3 = swift_task_alloc();
      *(v0 + 56) = v3;
      *v3 = v0;
      v3[1] = sub_229822888;

      return sub_22981DFEC(v2, 11);
    }

    if (qword_27D87BA98 != -1)
    {
      swift_once();
    }

    v21 = *(v0 + 16);
    v22 = sub_22A4DD07C();
    __swift_project_value_buffer(v22, qword_27D8817F8);
    v23 = v21;
    v24 = sub_22A4DD05C();
    v25 = sub_22A4DDCEC();

    if (os_log_type_enabled(v24, v25))
    {
      v27 = *(v0 + 32);
      v26 = *(v0 + 40);
      v29 = *(v0 + 16);
      v28 = *(v0 + 24);
      v30 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v38 = v37;
      *v30 = 136315394;
      v31 = [v29 uuid];
      sub_22A4DB79C();

      sub_229839520(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v32 = sub_22A4DE5CC();
      v34 = v33;
      (*(v27 + 8))(v26, v28);
      v35 = sub_2295A3E30(v32, v34, &v38);

      *(v30 + 4) = v35;
      *(v30 + 12) = 2080;
      *(v30 + 14) = sub_2295A3E30(0xD000000000000023, 0x800000022A598170, &v38);
      _os_log_impl(&dword_229538000, v24, v25, "[%s] %s Ignoring notification. Not the primary resident", v30, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v37, -1, -1);
      MEMORY[0x22AAD4E50](v30, -1, -1);
    }
  }

  else
  {
    if (qword_27D87BA98 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 16);
    v6 = sub_22A4DD07C();
    __swift_project_value_buffer(v6, qword_27D8817F8);
    v7 = v5;
    v8 = sub_22A4DD05C();
    v9 = sub_22A4DDCEC();

    if (os_log_type_enabled(v8, v9))
    {
      v11 = *(v0 + 32);
      v10 = *(v0 + 40);
      v13 = *(v0 + 16);
      v12 = *(v0 + 24);
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v38 = v15;
      *v14 = 136315394;
      v16 = [v13 uuid];
      sub_22A4DB79C();

      sub_229839520(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v17 = sub_22A4DE5CC();
      v19 = v18;
      (*(v11 + 8))(v10, v12);
      v20 = sub_2295A3E30(v17, v19, &v38);

      *(v14 + 4) = v20;
      *(v14 + 12) = 2080;
      *(v14 + 14) = sub_2295A3E30(0xD000000000000023, 0x800000022A598170, &v38);
      _os_log_impl(&dword_229538000, v8, v9, "[%s] %s home is nil", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v15, -1, -1);
      MEMORY[0x22AAD4E50](v14, -1, -1);
    }
  }

  v36 = *(v0 + 8);

  return v36();
}

uint64_t sub_229822888()
{

  return MEMORY[0x2822009F8](sub_229822984, 0, 0);
}

uint64_t sub_229822984()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_229822A0C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v18 - v8;
  v10 = sub_22A4DB21C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22A4DB1DC();
  v14 = sub_22A4DD9DC();
  (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = a1;
  v16 = a1;
  sub_22957F3C0(0, 0, v9, a5, v15);

  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_229822BCC(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = v2;
  v6 = sub_22A4DB7DC();
  v3[4] = v6;
  v3[5] = *(v6 - 8);
  v3[6] = swift_task_alloc();
  v7 = swift_task_alloc();
  v3[7] = v7;
  *v7 = v3;
  v7[1] = sub_229822CD4;

  return MEMORY[0x2821716E8](a1, a2);
}

uint64_t sub_229822CD4(__int16 a1)
{
  v3 = *v2;
  *(v3 + 72) = a1;
  *(v3 + 64) = v1;

  if (v1)
  {
    v4 = sub_229823364;
  }

  else
  {
    v4 = sub_229822DEC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_229822DEC()
{
  v48 = v0;
  __swift_project_boxed_opaque_existential_0(*(v0 + 16), *(*(v0 + 16) + 24));
  if (qword_27D87BA90 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 64);
  v2 = sub_22A4DCDFC();
  __swift_project_value_buffer(v2, qword_27D8817E0);
  sub_22A4DC7CC();
  if (!v1)
  {
    v21 = *(v0 + 76);
    v22 = *(v0 + 72);
    if ((v22 & 0x100) == 0 && v21 == v22)
    {
      v23 = 1;
      goto LABEL_18;
    }

    if (qword_27D87BA98 != -1)
    {
      swift_once();
    }

    v24 = *(v0 + 24);
    v25 = sub_22A4DD07C();
    __swift_project_value_buffer(v25, qword_27D8817F8);
    v26 = v24;
    v7 = sub_22A4DD05C();
    v27 = sub_22A4DDCCC();

    if (os_log_type_enabled(v7, v27))
    {
      v44 = *(v0 + 72);
      v29 = *(v0 + 40);
      v28 = *(v0 + 48);
      v31 = *(v0 + 24);
      v30 = *(v0 + 32);
      v32 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v47[0] = v46;
      *v32 = 136315650;
      v33 = [v31 uuid];
      sub_22A4DB79C();

      sub_229839520(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v34 = sub_22A4DE5CC();
      v36 = v35;
      (*(v29 + 8))(v28, v30);
      v37 = sub_2295A3E30(v34, v36, v47);

      *(v32 + 4) = v37;
      *(v32 + 12) = 2080;
      *(v0 + 74) = v44;
      *(v0 + 75) = HIBYTE(v44) & 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881908, &qword_22A585590);
      v38 = sub_22A4DBA6C();
      v40 = sub_2295A3E30(v38, v39, v47);

      *(v32 + 14) = v40;
      *(v32 + 22) = 256;
      *(v32 + 24) = v21;
      _os_log_impl(&dword_229538000, v7, v27, "[%s] We're not the fabric suggesting preset. fabricIndexSuggestingPresets: %s, fabricIndex: %hhu", v32, 0x19u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v46, -1, -1);
      MEMORY[0x22AAD4E50](v32, -1, -1);
    }

    goto LABEL_16;
  }

  if (qword_27D87BA98 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 24);
  v4 = sub_22A4DD07C();
  __swift_project_value_buffer(v4, qword_27D8817F8);
  v5 = v3;
  v6 = v1;
  v7 = sub_22A4DD05C();
  v8 = sub_22A4DDCEC();

  if (os_log_type_enabled(v7, v8))
  {
    v10 = *(v0 + 40);
    v9 = *(v0 + 48);
    v12 = *(v0 + 24);
    v11 = *(v0 + 32);
    v13 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v47[0] = v45;
    *v13 = 136315394;
    v14 = [v12 uuid];
    sub_22A4DB79C();

    sub_229839520(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v15 = sub_22A4DE5CC();
    v17 = v16;
    (*(v10 + 8))(v9, v11);
    v18 = sub_2295A3E30(v15, v17, v47);

    *(v13 + 4) = v18;
    *(v13 + 12) = 2112;
    v19 = v1;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 14) = v20;
    *v43 = v20;
    _os_log_impl(&dword_229538000, v7, v8, "[%s] Failed to read primary fabric with error %@", v13, 0x16u);
    sub_22953EAE4(v43, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v43, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v45);
    MEMORY[0x22AAD4E50](v45, -1, -1);
    MEMORY[0x22AAD4E50](v13, -1, -1);

LABEL_16:
    goto LABEL_17;
  }

LABEL_17:
  v23 = 0;
LABEL_18:

  v41 = *(v0 + 8);

  return v41(v23);
}

uint64_t sub_229823364()
{
  v25 = v0;
  v1 = v0[8];
  if (qword_27D87BA98 != -1)
  {
    swift_once();
  }

  v2 = v0[3];
  v3 = sub_22A4DD07C();
  __swift_project_value_buffer(v3, qword_27D8817F8);
  v4 = v2;
  v5 = v1;
  v6 = sub_22A4DD05C();
  v7 = sub_22A4DDCEC();

  if (os_log_type_enabled(v6, v7))
  {
    v9 = v0[5];
    v8 = v0[6];
    v11 = v0[3];
    v10 = v0[4];
    v12 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v24 = v23;
    *v12 = 136315394;
    v13 = [v11 uuid];
    sub_22A4DB79C();

    sub_229839520(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v14 = sub_22A4DE5CC();
    v16 = v15;
    (*(v9 + 8))(v8, v10);
    v17 = sub_2295A3E30(v14, v16, &v24);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2112;
    v18 = v1;
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v19;
    *v22 = v19;
    _os_log_impl(&dword_229538000, v6, v7, "[%s] Failed to read primary fabric with error %@", v12, 0x16u);
    sub_22953EAE4(v22, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v22, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v23);
    MEMORY[0x22AAD4E50](v23, -1, -1);
    MEMORY[0x22AAD4E50](v12, -1, -1);
  }

  else
  {
  }

  v20 = v0[1];

  return v20(0);
}

uint64_t sub_229823618(uint64_t a1, uint64_t a2)
{
  v3[16] = a2;
  v3[17] = v2;
  v3[15] = a1;
  v4 = sub_22A4DB91C();
  v3[18] = v4;
  v3[19] = *(v4 - 8);
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881AA0, &qword_22A57BC20);
  v3[22] = swift_task_alloc();
  v5 = sub_22A4DB74C();
  v3[23] = v5;
  v3[24] = *(v5 - 8);
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v6 = sub_22A4DB7DC();
  v3[32] = v6;
  v3[33] = *(v6 - 8);
  v3[34] = swift_task_alloc();
  _s13PresenceStateOMa(0);
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_229823864, 0, 0);
}

uint64_t sub_229823864()
{
  v73 = v0;
  [*(v0 + 136) swiftExtensions];
  _s15SwiftExtensionsCMa_1();
  v1 = (swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtCE13HomeKitDaemonCSo15HMDHAPAccessory15SwiftExtensions_localPresenceObserver);
  os_unfair_lock_lock(v1);
  sub_229564F88(&v1[2], v0 + 56, &qword_27D880BF0, &unk_22A585580);
  os_unfair_lock_unlock(v1);
  swift_unknownObjectRelease();
  if (*(v0 + 80))
  {
    sub_229557188((v0 + 56), v0 + 16);
    v2 = __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
    *(v0 + 304) = v2;
    v3 = *v2;

    return MEMORY[0x2822009F8](sub_229824184, v3, 0);
  }

  v4 = *(v0 + 128);
  sub_22953EAE4(v0 + 56, &qword_27D880BF0, &unk_22A585580);
  v5 = [v4 homeActivityStateManager];
  *(v0 + 312) = v5;
  if (v5)
  {
    v6 = *(v0 + 248);
    v7 = *(v0 + 184);
    v8 = *(v0 + 192);
    v9 = *(v0 + 136);
    v10 = [v5 currentHomeActivityStateDetails];
    *(v0 + 320) = v10;
    v11 = [objc_msgSend(v9 dataSource)];
    swift_unknownObjectRelease();
    sub_22A4DB70C();

    sub_22A4DB6DC();
    v12 = *(v8 + 8);
    *(v0 + 328) = v12;
    *(v0 + 336) = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v12(v6, v7);
    if ([v10 isHomeOccupied])
    {
      v13 = swift_task_alloc();
      *(v0 + 344) = v13;
      *v13 = v0;
      v13[1] = sub_2298247A0;

      return sub_2297D39D4();
    }

    if ([*(v0 + 320) state] == 3 || objc_msgSend(*(v0 + 320), sel_state) == 5)
    {
      if (qword_27D87BA98 != -1)
      {
        swift_once();
      }

      v32 = *(v0 + 320);
      v33 = *(v0 + 136);
      v34 = sub_22A4DD07C();
      __swift_project_value_buffer(v34, qword_27D8817F8);
      v35 = v33;
      v36 = v32;
      v37 = sub_22A4DD05C();
      v38 = sub_22A4DDCCC();

      if (os_log_type_enabled(v37, v38))
      {
        v71 = *(v0 + 320);
        v40 = *(v0 + 264);
        v39 = *(v0 + 272);
        v41 = *(v0 + 256);
        v42 = *(v0 + 136);
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v72 = v44;
        *v43 = 136315650;
        v45 = [v42 uuid];
        sub_22A4DB79C();

        sub_229839520(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v46 = sub_22A4DE5CC();
        v48 = v47;
        (*(v40 + 8))(v39, v41);
        v49 = sub_2295A3E30(v46, v48, &v72);

        *(v43 + 4) = v49;
        *(v43 + 12) = 2080;
        *(v43 + 14) = sub_2295A3E30(0xD00000000000001BLL, 0x800000022A5980D0, &v72);
        *(v43 + 22) = 2080;
        [v71 state];
        v50 = HMHomeActivityStateToString();
        v51 = sub_22A4DD5EC();
        v53 = v52;

        v54 = sub_2295A3E30(v51, v53, &v72);

        *(v43 + 24) = v54;
        _os_log_impl(&dword_229538000, v37, v38, "[%s] %s overridden homeActivityState: %s because SleepAS is not supported for thermostat", v43, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x22AAD4E50](v44, -1, -1);
        MEMORY[0x22AAD4E50](v43, -1, -1);
      }

      v56 = *(v0 + 312);
      v55 = *(v0 + 320);
      v57 = *(v0 + 240);
      v58 = *(v0 + 184);
      v59 = *(v0 + 192);
      v60 = *(v0 + 120);
      v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8818A0, &qword_22A5854E0);
      v62 = *(v61 + 48);
      v63 = [objc_allocWithZone(HMDHomeActivityStateDetails) initWithHomeActivityState_];

      *v60 = v63;
      (*(v59 + 32))(&v60[v62], v57, v58);
    }

    else
    {
      v64 = *(v0 + 320);
      v65 = *(v0 + 240);
      v66 = *(v0 + 184);
      v67 = *(v0 + 192);
      v60 = *(v0 + 120);

      v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8818A0, &qword_22A5854E0);
      v68 = *(v61 + 48);
      *v60 = v64;
      (*(v67 + 32))(&v60[v68], v65, v66);
    }

    (*(*(v61 - 8) + 56))(v60, 0, 1, v61);
  }

  else
  {
    if (qword_27D87BA98 != -1)
    {
      swift_once();
    }

    v14 = *(v0 + 136);
    v15 = sub_22A4DD07C();
    __swift_project_value_buffer(v15, qword_27D8817F8);
    v16 = v14;
    v17 = sub_22A4DD05C();
    v18 = sub_22A4DDCEC();

    if (os_log_type_enabled(v17, v18))
    {
      v20 = *(v0 + 264);
      v19 = *(v0 + 272);
      v21 = *(v0 + 256);
      v22 = *(v0 + 136);
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v72 = v24;
      *v23 = 136315394;
      v25 = [v22 uuid];
      sub_22A4DB79C();

      sub_229839520(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v26 = sub_22A4DE5CC();
      v28 = v27;
      (*(v20 + 8))(v19, v21);
      v29 = sub_2295A3E30(v26, v28, &v72);

      *(v23 + 4) = v29;
      *(v23 + 12) = 2080;
      *(v23 + 14) = sub_2295A3E30(0xD00000000000001BLL, 0x800000022A5980D0, &v72);
      _os_log_impl(&dword_229538000, v17, v18, "[%s] %s Home Activity State Manager is nil", v23, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v24, -1, -1);
      MEMORY[0x22AAD4E50](v23, -1, -1);
    }

    v30 = *(v0 + 120);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8818A0, &qword_22A5854E0);
    (*(*(v31 - 8) + 56))(v30, 1, 1, v31);
  }

  v69 = *(v0 + 8);

  return v69();
}

uint64_t sub_229824184()
{
  v1 = *(v0 + 296);
  v2 = **(v0 + 304);
  v3 = OBJC_IVAR____TtCO13HomeKitDaemon13LocalPresence32DefaultAccessoryPresenceObserver_currentPresenceState;
  swift_beginAccess();
  sub_229696298(v2 + v3, v1);

  return MEMORY[0x2822009F8](sub_22982421C, 0, 0);
}

uint64_t sub_22982421C()
{
  v46 = v0;
  v1 = v0[36];
  sub_229696298(v0[37], v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87E9F0, &unk_22A57CB40);
  v3 = (*(*(v2 - 8) + 48))(v1, 2, v2);
  if (v3)
  {
    v4 = v3 != 1;
  }

  else
  {
    (*(v0[24] + 8))(v0[36], v0[23]);
    v4 = 2;
  }

  if (qword_27D87BA98 != -1)
  {
    swift_once();
  }

  v5 = v0[37];
  v6 = v0[35];
  v7 = v0[17];
  v8 = sub_22A4DD07C();
  __swift_project_value_buffer(v8, qword_27D8817F8);
  sub_229696298(v5, v6);
  v9 = v7;
  v10 = sub_22A4DD05C();
  v11 = sub_22A4DDCCC();

  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[35];
  if (v12)
  {
    v44 = v11;
    v15 = v0[33];
    v14 = v0[34];
    v16 = v0[32];
    v17 = v0[17];
    v18 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v45 = v43;
    *v18 = 136315906;
    v19 = [v17 uuid];
    sub_22A4DB79C();

    sub_229839520(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v20 = sub_22A4DE5CC();
    v22 = v21;
    (*(v15 + 8))(v14, v16);
    v23 = sub_2295A3E30(v20, v22, &v45);

    *(v18 + 4) = v23;
    *(v18 + 12) = 2080;
    *(v18 + 14) = sub_2295A3E30(0xD00000000000001BLL, 0x800000022A5980D0, &v45);
    *(v18 + 22) = 2080;
    v24 = HMHomeActivityStateToString();
    v25 = sub_22A4DD5EC();
    v27 = v26;

    v28 = sub_2295A3E30(v25, v27, &v45);

    *(v18 + 24) = v28;
    *(v18 + 32) = 2080;
    v29 = sub_229698D5C();
    v31 = v30;
    sub_229839118(v13, _s13PresenceStateOMa);
    v32 = sub_2295A3E30(v29, v31, &v45);

    *(v18 + 34) = v32;
    _os_log_impl(&dword_229538000, v10, v44, "[%s] %s homeActivityState: %s from presenceState: %s", v18, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v43, -1, -1);
    MEMORY[0x22AAD4E50](v18, -1, -1);
  }

  else
  {

    sub_229839118(v13, _s13PresenceStateOMa);
  }

  v33 = v0[37];
  v34 = v0[31];
  v35 = v0[23];
  v36 = v0[24];
  v37 = v0[17];
  v38 = v0[15];
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8818A0, &qword_22A5854E0);
  *v38 = [objc_allocWithZone(HMDHomeActivityStateDetails) initWithHomeActivityState_];
  v40 = [objc_msgSend(v37 dataSource)];
  swift_unknownObjectRelease();
  sub_22A4DB70C();

  sub_22A4DB6DC();
  (*(v36 + 8))(v34, v35);
  sub_229839118(v33, _s13PresenceStateOMa);
  (*(*(v39 - 8) + 56))(v38, 0, 1, v39);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v41 = v0[1];

  return v41();
}

uint64_t sub_2298247A0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 352) = a1;
  *(v3 + 360) = v1;

  if (v1)
  {
    v4 = sub_2298256AC;
  }

  else
  {
    v4 = sub_2298248B4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

id sub_2298248B4()
{
  v134 = v0;
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);
  v3 = objc_allocWithZone(MEMORY[0x277CD1F18]);
  sub_229562F68(0, &qword_27D87CD80, 0x277CD1F20);
  v4 = sub_22A4DD81C();
  v128 = [v3 initWithScheduleRules_];

  v5 = [objc_msgSend(v2 dataSource)];
  swift_unknownObjectRelease();
  sub_22A4DB70C();
  result = [v1 timeZone];
  if (!result)
  {
    __break(1u);
LABEL_36:
    __break(1u);
    return result;
  }

  v7 = result;
  v122 = *(v0 + 328);
  v8 = *(v0 + 224);
  v10 = *(v0 + 184);
  v9 = *(v0 + 192);
  v12 = *(v0 + 168);
  v11 = *(v0 + 176);
  v14 = *(v0 + 144);
  v13 = *(v0 + 152);

  sub_22A4DB8FC();
  sub_22989B2B4(v8, v12, v11);
  v121 = *(v13 + 8);
  v121(v12, v14);
  v122(v8, v10);
  if ((*(v9 + 48))(v11, 1, v10) == 1)
  {
    sub_22953EAE4(*(v0 + 176), &unk_27D881AA0, &qword_22A57BC20);
    v15 = &selRef_credential;
    v16 = &selRef_credential;
  }

  else
  {
    v17 = *(v0 + 248);
    v119 = *(v0 + 328);
    v120 = *(v0 + 240);
    v18 = *(v0 + 232);
    v19 = *(v0 + 208);
    v20 = *(v0 + 184);
    v21 = *(v0 + 136);
    v123 = *(*(v0 + 192) + 32);
    v124 = *(v0 + 216);
    v123(v18, *(v0 + 176), v20);
    v22 = [objc_msgSend(v21 dataSource)];
    swift_unknownObjectRelease();
    sub_22A4DB70C();

    v15 = &selRef_credential;
    sub_22A4DB6DC();
    v119(v17, v20);
    sub_229839520(&unk_27D87EBD0, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
    v23 = sub_22A4DD52C();
    v119(v120, v20);
    if (v23)
    {
      v24 = v18;
    }

    else
    {
      v24 = v19;
    }

    if (v23)
    {
      v25 = v19;
    }

    else
    {
      v25 = v18;
    }

    v119(v24, v20);
    v123(v124, v25, v20);
    v16 = &selRef_credential;
    v123(v120, v124, v20);
  }

  v26 = *(v0 + 128);
  v27 = [objc_msgSend(*(v0 + 136) v15[248])];
  swift_unknownObjectRelease();
  sub_22A4DB70C();
  result = [v26 timeZone];
  if (!result)
  {
    goto LABEL_36;
  }

  v28 = result;
  v29 = *(v0 + 328);
  v30 = *(v0 + 200);
  v31 = *(v0 + 184);
  v32 = *(v0 + 160);
  v33 = *(v0 + 144);

  sub_22A4DB8FC();
  v34 = [v128 scheduleRules];
  v35 = sub_22A4DD83C();

  v36 = swift_task_alloc();
  *(v36 + 16) = v30;
  *(v36 + 24) = v32;
  v37 = sub_2298906AC(sub_2298390F8, v36, v35);

  v29(v30, v31);
  v121(v32, v33);
  v38 = &OBJC_IVAR___HMCRedirectorChange__context;
  if (v37)
  {
    if (qword_27D87BA98 != -1)
    {
      swift_once();
    }

    v39 = *(v0 + 136);
    v40 = sub_22A4DD07C();
    __swift_project_value_buffer(v40, qword_27D8817F8);
    v41 = v39;
    v42 = v128;
    v43 = sub_22A4DD05C();
    v44 = sub_22A4DDCCC();

    if (os_log_type_enabled(v43, v44))
    {
      v46 = *(v0 + 264);
      v45 = *(v0 + 272);
      v47 = *(v0 + 256);
      v48 = *(v0 + 136);
      v49 = swift_slowAlloc();
      v126 = swift_slowAlloc();
      v129 = swift_slowAlloc();
      v133[0] = v129;
      *v49 = 136315650;
      v50 = [v48 uuid];
      sub_22A4DB79C();

      sub_229839520(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v51 = sub_22A4DE5CC();
      v53 = v52;
      (*(v46 + 8))(v45, v47);
      v54 = sub_2295A3E30(v51, v53, v133);

      *(v49 + 4) = v54;
      *(v49 + 12) = 2080;
      *(v49 + 14) = sub_2295A3E30(0xD00000000000001BLL, 0x800000022A5980D0, v133);
      *(v49 + 22) = 2112;
      *(v49 + 24) = v42;
      *v126 = v42;
      v55 = v42;
      _os_log_impl(&dword_229538000, v43, v44, "[%s] %s In Sleep with schedule: %@", v49, 0x20u);
      sub_22953EAE4(v126, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v126, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v129, -1, -1);
      MEMORY[0x22AAD4E50](v49, -1, -1);
    }

    v56 = v42;
    v58 = *(v0 + 312);
    v57 = *(v0 + 320);
    v130 = *(v0 + 240);
    v59 = *(v0 + 184);
    v60 = *(v0 + 192);
    v61 = *(v0 + 120);
    v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8818A0, &qword_22A5854E0);
    v63 = *(v62 + 48);
    v64 = [objc_allocWithZone(HMDHomeActivityStateDetails) initWithHomeActivityState_];

    *v61 = v64;
    (*(v60 + 32))(&v61[v63], v130, v59);
    (*(*(v62 - 8) + 56))(v61, 0, 1, v62);
  }

  else
  {
    if (qword_27D87BA98 != -1)
    {
      swift_once();
    }

    v65 = *(v0 + 136);
    v66 = sub_22A4DD07C();
    __swift_project_value_buffer(v66, qword_27D8817F8);
    v67 = v65;
    v68 = v128;
    v69 = sub_22A4DD05C();
    v70 = sub_22A4DDCCC();

    if (os_log_type_enabled(v69, v70))
    {
      v131 = v66;
      v72 = *(v0 + 264);
      v71 = *(v0 + 272);
      v73 = *(v0 + 256);
      v74 = *(v0 + 136);
      v75 = swift_slowAlloc();
      v125 = swift_slowAlloc();
      v127 = swift_slowAlloc();
      v133[0] = v127;
      *v75 = 136315650;
      v76 = [v74 uuid];
      sub_22A4DB79C();

      sub_229839520(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v77 = sub_22A4DE5CC();
      v79 = v78;
      (*(v72 + 8))(v71, v73);
      v66 = v131;
      v80 = sub_2295A3E30(v77, v79, v133);
      v38 = &OBJC_IVAR___HMCRedirectorChange__context;

      *(v75 + 4) = v80;
      *(v75 + 12) = 2080;
      *(v75 + 14) = sub_2295A3E30(0xD00000000000001BLL, 0x800000022A5980D0, v133);
      *(v75 + 22) = 2112;
      *(v75 + 24) = v68;
      *v125 = v68;
      v81 = v68;
      _os_log_impl(&dword_229538000, v69, v70, "[%s] %s Not in Sleep with schedule: %@", v75, 0x20u);
      sub_22953EAE4(v125, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v125, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v127, -1, -1);
      MEMORY[0x22AAD4E50](v75, -1, -1);
    }

    else
    {
    }

    if ([*(v0 + 320) state] == 3 || objc_msgSend(*(v0 + 320), sel_state) == 5)
    {
      if (*(v38 + 339) != -1)
      {
        swift_once();
      }

      v82 = *(v0 + 320);
      v83 = *(v0 + 136);
      __swift_project_value_buffer(v66, qword_27D8817F8);
      v84 = v83;
      v85 = v82;
      v86 = sub_22A4DD05C();
      v87 = sub_22A4DDCCC();

      if (os_log_type_enabled(v86, v87))
      {
        v132 = *(v0 + 320);
        v89 = *(v0 + 264);
        v88 = *(v0 + 272);
        v90 = *(v0 + 256);
        v91 = *(v0 + 136);
        v92 = swift_slowAlloc();
        v93 = swift_slowAlloc();
        v133[0] = v93;
        *v92 = 136315650;
        v94 = [v91 uuid];
        sub_22A4DB79C();

        sub_229839520(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v95 = sub_22A4DE5CC();
        v97 = v96;
        (*(v89 + 8))(v88, v90);
        v98 = sub_2295A3E30(v95, v97, v133);

        *(v92 + 4) = v98;
        *(v92 + 12) = 2080;
        *(v92 + 14) = sub_2295A3E30(0xD00000000000001BLL, 0x800000022A5980D0, v133);
        *(v92 + 22) = 2080;
        [v132 state];
        v99 = HMHomeActivityStateToString();
        v100 = sub_22A4DD5EC();
        v102 = v101;

        v103 = sub_2295A3E30(v100, v102, v133);

        *(v92 + 24) = v103;
        _os_log_impl(&dword_229538000, v86, v87, "[%s] %s overridden homeActivityState: %s because SleepAS is not supported for thermostat", v92, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x22AAD4E50](v93, -1, -1);
        MEMORY[0x22AAD4E50](v92, -1, -1);
      }

      v105 = *(v0 + 312);
      v104 = *(v0 + 320);
      v106 = *(v0 + 240);
      v107 = *(v0 + 184);
      v108 = *(v0 + 192);
      v109 = *(v0 + 120);
      v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8818A0, &qword_22A5854E0);
      v111 = *(v110 + 48);
      v112 = [objc_allocWithZone(HMDHomeActivityStateDetails) initWithHomeActivityState_];

      *v109 = v112;
      (*(v108 + 32))(&v109[v111], v106, v107);
    }

    else
    {
      v113 = *(v0 + 320);
      v114 = *(v0 + 240);
      v115 = *(v0 + 184);
      v116 = *(v0 + 192);
      v109 = *(v0 + 120);

      v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8818A0, &qword_22A5854E0);
      v117 = *(v110 + 48);
      *v109 = v113;
      (*(v116 + 32))(&v109[v117], v114, v115);
    }

    (*(*(v110 - 8) + 56))(v109, 0, 1, v110);
  }

  v118 = *(v0 + 8);

  return v118();
}

uint64_t sub_2298256AC()
{
  v63 = v0;
  v1 = &OBJC_IVAR___HMCRedirectorChange__context;
  if (qword_27D87BA98 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 136);
  v3 = sub_22A4DD07C();
  __swift_project_value_buffer(v3, qword_27D8817F8);
  v4 = v2;
  v5 = sub_22A4DD05C();
  v6 = sub_22A4DDCEC();

  if (os_log_type_enabled(v5, v6))
  {
    v8 = *(v0 + 264);
    v7 = *(v0 + 272);
    v9 = *(v0 + 256);
    v10 = *(v0 + 136);
    v59 = *(v0 + 360);
    v11 = swift_slowAlloc();
    v60 = v3;
    v62 = swift_slowAlloc();
    v12 = v62;
    *v11 = 136315394;
    v13 = [v10 uuid];
    sub_22A4DB79C();

    sub_229839520(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v14 = sub_22A4DE5CC();
    v16 = v15;
    (*(v8 + 8))(v7, v9);
    v17 = sub_2295A3E30(v14, v16, &v62);

    *(v11 + 4) = v17;
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_2295A3E30(0xD00000000000001BLL, 0x800000022A5980D0, &v62);
    _os_log_impl(&dword_229538000, v5, v6, "[%s] %s failed to read sleep schedule", v11, 0x16u);
    swift_arrayDestroy();
    v18 = v12;
    v3 = v60;
    MEMORY[0x22AAD4E50](v18, -1, -1);
    v19 = v11;
    v1 = &OBJC_IVAR___HMCRedirectorChange__context;
    MEMORY[0x22AAD4E50](v19, -1, -1);
    v20 = v59;
  }

  else
  {
    v20 = *(v0 + 360);
  }

  if ([*(v0 + 320) state] == 3 || objc_msgSend(*(v0 + 320), sel_state) == 5)
  {
    if (*(v1 + 339) != -1)
    {
      swift_once();
    }

    v21 = *(v0 + 320);
    v22 = *(v0 + 136);
    __swift_project_value_buffer(v3, qword_27D8817F8);
    v23 = v22;
    v24 = v21;
    v25 = sub_22A4DD05C();
    v26 = sub_22A4DDCCC();

    if (os_log_type_enabled(v25, v26))
    {
      v61 = *(v0 + 320);
      v28 = *(v0 + 264);
      v27 = *(v0 + 272);
      v29 = *(v0 + 256);
      v30 = *(v0 + 136);
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v62 = v32;
      *v31 = 136315650;
      v33 = [v30 uuid];
      sub_22A4DB79C();

      sub_229839520(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v34 = sub_22A4DE5CC();
      v36 = v35;
      (*(v28 + 8))(v27, v29);
      v37 = sub_2295A3E30(v34, v36, &v62);

      *(v31 + 4) = v37;
      *(v31 + 12) = 2080;
      *(v31 + 14) = sub_2295A3E30(0xD00000000000001BLL, 0x800000022A5980D0, &v62);
      *(v31 + 22) = 2080;
      [v61 state];
      v38 = HMHomeActivityStateToString();
      v39 = sub_22A4DD5EC();
      v41 = v40;

      v42 = sub_2295A3E30(v39, v41, &v62);

      *(v31 + 24) = v42;
      _os_log_impl(&dword_229538000, v25, v26, "[%s] %s overridden homeActivityState: %s because SleepAS is not supported for thermostat", v31, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v32, -1, -1);
      MEMORY[0x22AAD4E50](v31, -1, -1);
    }

    v44 = *(v0 + 312);
    v43 = *(v0 + 320);
    v45 = *(v0 + 240);
    v46 = *(v0 + 184);
    v47 = *(v0 + 192);
    v48 = *(v0 + 120);
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8818A0, &qword_22A5854E0);
    v50 = *(v49 + 48);
    v51 = [objc_allocWithZone(HMDHomeActivityStateDetails) initWithHomeActivityState_];

    *v48 = v51;
    (*(v47 + 32))(&v48[v50], v45, v46);
  }

  else
  {
    v52 = *(v0 + 320);
    v53 = *(v0 + 240);
    v54 = *(v0 + 184);
    v55 = *(v0 + 192);
    v48 = *(v0 + 120);

    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8818A0, &qword_22A5854E0);
    v56 = *(v49 + 48);
    *v48 = v52;
    (*(v55 + 32))(&v48[v56], v53, v54);
  }

  (*(*(v49 - 8) + 56))(v48, 0, 1, v49);

  v57 = *(v0 + 8);

  return v57();
}

uint64_t sub_229825D3C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 536) = a4;
  *(v5 + 72) = a3;
  *(v5 + 80) = v4;
  *(v5 + 56) = a1;
  *(v5 + 64) = a2;
  v8 = sub_22A4DCD0C();
  *(v5 + 88) = v8;
  v9 = *(v8 - 8);
  *(v5 + 96) = v9;
  *(v5 + 104) = *(v9 + 64);
  *(v5 + 112) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  *(v5 + 120) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8818B0, &qword_22A5854F8);
  *(v5 + 128) = v10;
  v11 = *(v10 - 8);
  *(v5 + 136) = v11;
  *(v5 + 144) = *(v11 + 64);
  *(v5 + 152) = swift_task_alloc();
  *(v5 + 160) = swift_task_alloc();
  *(v5 + 168) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8818B8, &unk_22A585500);
  *(v5 + 176) = swift_task_alloc();
  v12 = sub_22A4DCA9C();
  *(v5 + 184) = v12;
  v13 = *(v12 - 8);
  *(v5 + 192) = v13;
  *(v5 + 200) = *(v13 + 64);
  *(v5 + 208) = swift_task_alloc();
  *(v5 + 216) = swift_task_alloc();
  *(v5 + 224) = swift_task_alloc();
  v14 = sub_22A4DB7DC();
  *(v5 + 232) = v14;
  *(v5 + 240) = *(v14 - 8);
  *(v5 + 248) = swift_task_alloc();
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8818C0, &unk_22A5820B0) - 8);
  *(v5 + 256) = v15;
  *(v5 + 264) = *(v15 + 64);
  *(v5 + 272) = swift_task_alloc();
  *(v5 + 280) = swift_task_alloc();
  *(v5 + 288) = swift_task_alloc();
  *(v5 + 296) = swift_task_alloc();
  v16 = swift_task_alloc();
  *(v5 + 304) = v16;
  *v16 = v5;
  v16[1] = sub_2298260B4;

  return MEMORY[0x2821715D0](a2, a3);
}

uint64_t sub_2298260B4(char a1)
{
  v3 = *v2;
  *(v3 + 537) = a1;
  *(v3 + 312) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_229828DB4, 0, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    *(v3 + 320) = v4;
    *v4 = v3;
    v4[1] = sub_22982622C;
    v5 = *(v3 + 72);
    v6 = *(v3 + 64);

    return MEMORY[0x2821716A8](v6, v5);
  }
}

uint64_t sub_22982622C(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[41] = a1;
  v4[42] = a2;
  v4[43] = v2;

  if (v2)
  {

    return MEMORY[0x2822009F8](sub_2298290F8, 0, 0);
  }

  else
  {
    v5 = swift_task_alloc();
    v4[44] = v5;
    *v5 = v4;
    v5[1] = sub_2298263A8;
    v6 = v4[36];
    v7 = v4[8];
    v8 = v4[9];

    return MEMORY[0x282171618](v6, v7, v8);
  }
}

uint64_t sub_2298263A8()
{
  *(*v1 + 360) = v0;

  if (v0)
  {
    v2 = sub_22982943C;
  }

  else
  {
    v2 = sub_2298264BC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2298264BC()
{
  v1 = *(v0 + 537);
  sub_22957F2F8(*(v0 + 288), *(v0 + 296), &qword_27D8818C0, &unk_22A5820B0);
  if (v1)
  {
    v2 = swift_task_alloc();
    *(v0 + 408) = v2;
    *v2 = v0;
    v2[1] = sub_229826DB0;
    v4 = *(v0 + 64);
    v3 = *(v0 + 72);

    return MEMORY[0x282171560](v4, v3);
  }

  else if (*(v0 + 336) >> 60 == 15)
  {
    v5 = *(v0 + 280);
    sub_229564F88(*(v0 + 296), v5, &qword_27D8818C0, &unk_22A5820B0);
    v6 = sub_22A4DCA3C();
    v7 = (*(*(v6 - 8) + 48))(v5, 1, v6);
    sub_22953EAE4(v5, &qword_27D8818C0, &unk_22A5820B0);
    if (v7 == 1)
    {
      v8 = swift_task_alloc();
      *(v0 + 400) = v8;
      *v8 = v0;
      v8[1] = sub_229826B84;
      v9 = *(v0 + 536);

      return sub_22982AFA8(v9);
    }

    else
    {
      v13 = swift_task_alloc();
      *(v0 + 384) = v13;
      *v13 = v0;
      v13[1] = sub_229826A10;
      v15 = *(v0 + 64);
      v14 = *(v0 + 72);

      return MEMORY[0x2821716F0](v15, v14);
    }
  }

  else
  {
    v10 = swift_task_alloc();
    *(v0 + 368) = v10;
    *v10 = v0;
    v10[1] = sub_229826768;
    v12 = *(v0 + 64);
    v11 = *(v0 + 72);

    return MEMORY[0x2821716B8](v12, v11);
  }
}

uint64_t sub_229826768()
{
  *(*v1 + 376) = v0;

  if (v0)
  {
    v2 = sub_22982979C;
  }

  else
  {
    v2 = sub_22982687C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22982687C()
{
  v1 = *(v0 + 280);
  sub_229564F88(*(v0 + 296), v1, &qword_27D8818C0, &unk_22A5820B0);
  v2 = sub_22A4DCA3C();
  v3 = (*(*(v2 - 8) + 48))(v1, 1, v2);
  sub_22953EAE4(v1, &qword_27D8818C0, &unk_22A5820B0);
  if (v3 == 1)
  {
    v4 = swift_task_alloc();
    *(v0 + 400) = v4;
    *v4 = v0;
    v4[1] = sub_229826B84;
    v5 = *(v0 + 536);

    return sub_22982AFA8(v5);
  }

  else
  {
    v7 = swift_task_alloc();
    *(v0 + 384) = v7;
    *v7 = v0;
    v7[1] = sub_229826A10;
    v9 = *(v0 + 64);
    v8 = *(v0 + 72);

    return MEMORY[0x2821716F0](v9, v8);
  }
}

uint64_t sub_229826A10()
{
  v2 = *v1;
  *(v2 + 392) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_229829A88, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    *(v2 + 400) = v3;
    *v3 = v2;
    v3[1] = sub_229826B84;
    v4 = *(v2 + 536);

    return sub_22982AFA8(v4);
  }
}

uint64_t sub_229826B84()
{

  return MEMORY[0x2822009F8](sub_229826C80, 0, 0);
}

uint64_t sub_229826C80()
{
  v1 = v0[37];
  sub_229590D18(v0[41], v0[42]);
  sub_22953EAE4(v1, &qword_27D8818C0, &unk_22A5820B0);

  v2 = v0[1];

  return v2();
}

uint64_t sub_229826DB0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 416) = a1;
  *(v3 + 424) = v1;

  if (v1)
  {
    v4 = sub_229829D74;
  }

  else
  {
    v4 = sub_229826EC4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_229826EC4()
{
  v28 = v0;
  v1 = qword_27D87BA98;

  if (v1 != -1)
  {
    swift_once();
  }

  v2 = v0[10];
  v3 = sub_22A4DD07C();
  v0[54] = __swift_project_value_buffer(v3, qword_27D8817F8);
  v4 = v2;
  v5 = sub_22A4DD05C();
  v6 = sub_22A4DDCCC();

  if (os_log_type_enabled(v5, v6))
  {
    v26 = v0[52];
    v8 = v0[30];
    v7 = v0[31];
    v9 = v0[29];
    v10 = v0[10];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v27 = v12;
    *v11 = 136315394;
    v13 = [v10 uuid];
    sub_22A4DB79C();

    sub_229839520(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v14 = sub_22A4DE5CC();
    v16 = v15;
    (*(v8 + 8))(v7, v9);
    v17 = sub_2295A3E30(v14, v16, &v27);

    *(v11 + 4) = v17;
    *(v11 + 12) = 2080;
    v18 = sub_22A4DC85C();
    v19 = MEMORY[0x22AAD0A20](v26, v18);
    v21 = sub_2295A3E30(v19, v20, &v27);

    *(v11 + 14) = v21;
    _os_log_impl(&dword_229538000, v5, v6, "[%s] presetStructs: %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v12, -1, -1);
    MEMORY[0x22AAD4E50](v11, -1, -1);
  }

  v22 = swift_task_alloc();
  v0[55] = v22;
  *v22 = v0;
  v22[1] = sub_229827194;
  v24 = v0[8];
  v23 = v0[9];

  return MEMORY[0x282171590](v24, v23);
}

uint64_t sub_229827194(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 448) = a1;
  *(v3 + 456) = v1;

  if (v1)
  {

    v4 = sub_22982A108;
  }

  else
  {
    v4 = sub_2298272B0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2298272B0()
{
  v25 = v0;
  v1 = *(v0 + 80);

  v2 = sub_22A4DD05C();
  v3 = sub_22A4DDCCC();

  if (os_log_type_enabled(v2, v3))
  {
    v23 = *(v0 + 448);
    v5 = *(v0 + 240);
    v4 = *(v0 + 248);
    v6 = *(v0 + 232);
    v7 = *(v0 + 80);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v24 = v9;
    *v8 = 136315394;
    v10 = [v7 uuid];
    sub_22A4DB79C();

    sub_229839520(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v11 = sub_22A4DE5CC();
    v13 = v12;
    (*(v5 + 8))(v4, v6);
    v14 = sub_2295A3E30(v11, v13, &v24);

    *(v8 + 4) = v14;
    *(v8 + 12) = 2080;
    v15 = sub_22A4DC8AC();
    v16 = MEMORY[0x22AAD0A20](v23, v15);
    v18 = sub_2295A3E30(v16, v17, &v24);

    *(v8 + 14) = v18;
    _os_log_impl(&dword_229538000, v2, v3, "[%s] presetTypeStructs: %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v9, -1, -1);
    MEMORY[0x22AAD4E50](v8, -1, -1);
  }

  v19 = swift_task_alloc();
  *(v0 + 464) = v19;
  *v19 = v0;
  v19[1] = sub_229827534;
  v21 = *(v0 + 64);
  v20 = *(v0 + 72);

  return MEMORY[0x2821715E0](v21, v20);
}

uint64_t sub_229827534(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 472) = a1;
  *(v3 + 480) = v1;

  if (v1)
  {

    v4 = sub_22982A458;
  }

  else
  {
    v4 = sub_22982765C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22982765C()
{
  v65 = v0;
  v1 = *(v0 + 80);

  v2 = sub_22A4DD05C();
  v3 = sub_22A4DDCCC();

  if (os_log_type_enabled(v2, v3))
  {
    v62 = *(v0 + 472);
    v5 = *(v0 + 240);
    v4 = *(v0 + 248);
    v6 = *(v0 + 232);
    v7 = *(v0 + 80);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v64 = v9;
    *v8 = 136315394;
    v10 = [v7 uuid];
    sub_22A4DB79C();

    sub_229839520(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v11 = sub_22A4DE5CC();
    v13 = v12;
    (*(v5 + 8))(v4, v6);
    v14 = sub_2295A3E30(v11, v13, &v64);

    *(v8 + 4) = v14;
    *(v8 + 12) = 2080;
    v15 = sub_22A4DC96C();
    v16 = MEMORY[0x22AAD0A20](v62, v15);
    v18 = sub_2295A3E30(v16, v17, &v64);

    *(v8 + 14) = v18;
    _os_log_impl(&dword_229538000, v2, v3, "[%s] presetsAdditionalInfo: %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v9, -1, -1);
    MEMORY[0x22AAD4E50](v8, -1, -1);
  }

  v19 = *(v0 + 472);
  v20 = *(v0 + 448);
  v21 = *(v0 + 416);
  v22 = *(v0 + 184);
  v23 = *(v0 + 192);
  v24 = *(v0 + 176);
  v25 = *(v0 + 56);

  sub_22982B6F0(v25, v21, v20, v19, v24);
  if ((*(v23 + 48))(v24, 1, v22) == 1)
  {
    v26 = *(v0 + 176);
    v27 = *(v0 + 80);
    v28 = *(v0 + 56);

    sub_22953EAE4(v26, &qword_27D8818B8, &unk_22A585500);
    v29 = v27;
    v30 = v28;
    v31 = sub_22A4DD05C();
    v32 = sub_22A4DDCEC();

    v33 = os_log_type_enabled(v31, v32);
    v34 = *(v0 + 296);
    if (v33)
    {
      v61 = *(v0 + 336);
      v63 = *(v0 + 296);
      v36 = *(v0 + 240);
      v35 = *(v0 + 248);
      v37 = *(v0 + 232);
      v38 = *(v0 + 80);
      v39 = *(v0 + 56);
      v60 = *(v0 + 328);
      v40 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v64 = v59;
      *v40 = 136315394;
      v41 = [v38 uuid];
      sub_22A4DB79C();

      sub_229839520(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v42 = sub_22A4DE5CC();
      v44 = v43;
      (*(v36 + 8))(v35, v37);
      v45 = sub_2295A3E30(v42, v44, &v64);

      *(v40 + 4) = v45;
      *(v40 + 12) = 2112;
      *(v40 + 14) = v39;
      *v58 = v39;
      v46 = v39;
      _os_log_impl(&dword_229538000, v31, v32, "[%s] Failed to create AppleSetCurrentSuggestedPresetCommand from %@", v40, 0x16u);
      sub_22953EAE4(v58, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v58, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v59);
      MEMORY[0x22AAD4E50](v59, -1, -1);
      MEMORY[0x22AAD4E50](v40, -1, -1);

      sub_229590D18(v60, v61);
      v47 = v63;
    }

    else
    {
      sub_229590D18(*(v0 + 328), *(v0 + 336));

      v47 = v34;
    }

    sub_22953EAE4(v47, &qword_27D8818C0, &unk_22A5820B0);

    v56 = *(v0 + 8);

    return v56();
  }

  else
  {
    v48 = *(v0 + 224);
    v49 = *(v0 + 184);
    v50 = *(v0 + 192);
    v51 = *(v0 + 176);
    v52 = *(v50 + 32);
    *(v0 + 488) = v52;
    *(v0 + 496) = (v50 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v52(v48, v51, v49);
    v53 = swift_task_alloc();
    *(v0 + 504) = v53;
    *v53 = v0;
    v53[1] = sub_229827C80;
    v55 = *(v0 + 64);
    v54 = *(v0 + 72);

    return MEMORY[0x2821715F0](v55, v54);
  }
}

uint64_t sub_229827C80(char a1)
{
  v4 = *v2;
  *(*v2 + 512) = v1;

  if (v1)
  {

    v5 = sub_22982A7A8;
  }

  else
  {
    *(v4 + 538) = a1 & 1;
    v5 = sub_229827DB4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_229827DB4()
{
  v30 = v0;
  if (*(v0 + 538))
  {
    v1 = *(v0 + 80);
    v2 = sub_22A4DD05C();
    v3 = sub_22A4DDCCC();

    if (os_log_type_enabled(v2, v3))
    {
      v5 = *(v0 + 240);
      v4 = *(v0 + 248);
      v6 = *(v0 + 232);
      v7 = *(v0 + 80);
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v29 = v9;
      *v8 = 136315138;
      v10 = [v7 uuid];
      sub_22A4DB79C();

      sub_229839520(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v11 = sub_22A4DE5CC();
      v13 = v12;
      (*(v5 + 8))(v4, v6);
      v14 = sub_2295A3E30(v11, v13, &v29);

      *(v8 + 4) = v14;
      _os_log_impl(&dword_229538000, v2, v3, "[%s] Not suggesting predicted preset because ignorePredictedPresets is true", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x22AAD4E50](v9, -1, -1);
      MEMORY[0x22AAD4E50](v8, -1, -1);
    }

    v15 = *(v0 + 168);
    v16 = sub_22A4DCB1C();
    (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  }

  else
  {
    v17 = *(v0 + 416);
    v18 = *(v0 + 168);
    v19 = *(v0 + 56);

    sub_22982C2F8(v19, v17, v18);
  }

  v20 = swift_task_alloc();
  *(v0 + 520) = v20;
  *v20 = v0;
  v20[1] = sub_229828058;
  v21 = *(v0 + 328);
  v22 = *(v0 + 336);
  v23 = *(v0 + 296);
  v24 = *(v0 + 224);
  v25 = *(v0 + 168);
  v26 = *(v0 + 72);
  v27 = *(v0 + 64);

  return sub_22982C848(v27, v26, v24, v25, v21, v22, v23);
}

uint64_t sub_229828058(char a1)
{
  *(*v1 + 539) = a1;

  return MEMORY[0x2822009F8](sub_229828158, 0, 0);
}

uint64_t sub_229828158()
{
  v114 = v0;
  if (*(v0 + 539) == 1)
  {
    v1 = *(v0 + 56);
    v2 = *(v0 + 80);
    v3 = v1;
    v4 = sub_22A4DD05C();
    v5 = sub_22A4DDCCC();

    if (os_log_type_enabled(v4, v5))
    {
      v7 = *(v0 + 240);
      v6 = *(v0 + 248);
      v8 = *(v0 + 232);
      v9 = *(v0 + 80);
      v110 = *(v0 + 56);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v113 = v11;
      *v10 = 136315394;
      v12 = [v9 uuid];
      sub_22A4DB79C();

      sub_229839520(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v13 = sub_22A4DE5CC();
      v15 = v14;
      (*(v7 + 8))(v6, v8);
      v16 = sub_2295A3E30(v13, v15, &v113);

      *(v10 + 4) = v16;
      *(v10 + 12) = 2080;
      [v110 state];
      v17 = HMHomeActivityStateToString();
      v18 = sub_22A4DD5EC();
      v20 = v19;

      v21 = sub_2295A3E30(v18, v20, &v113);

      *(v10 + 14) = v21;
      _os_log_impl(&dword_229538000, v4, v5, "[%s] Setting suggested preset for state %s", v10, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v11, -1, -1);
      MEMORY[0x22AAD4E50](v10, -1, -1);
    }

    v107 = *(v0 + 488);
    v92 = *(v0 + 296);
    v111 = *(v0 + 272);
    v99 = *(v0 + 256);
    v22 = *(v0 + 216);
    v90 = v22;
    v23 = *(v0 + 192);
    v24 = *(v0 + 184);
    v88 = v24;
    v25 = *(v0 + 160);
    v86 = *(v0 + 224);
    v87 = *(v0 + 168);
    v95 = *(v0 + 200);
    v97 = *(v0 + 144);
    v93 = *(v0 + 136);
    v26 = *(v0 + 112);
    v27 = *(v0 + 120);
    v105 = v27;
    v28 = *(v0 + 96);
    v89 = *(v0 + 104);
    v29 = *(v0 + 88);
    v91 = v29;
    v103 = *(v0 + 80);
    v101 = *(v0 + 536);
    v30 = *(v0 + 64);
    v85 = *(v0 + 72);
    v31 = sub_22A4DD9DC();
    (*(*(v31 - 8) + 56))(v27, 1, 1, v31);
    sub_22957F1C4(v30, v0 + 16);
    (*(v28 + 16))(v26, v85, v29);
    (*(v23 + 16))(v22, v86, v24);
    sub_229564F88(v87, v25, &qword_27D8818B0, &qword_22A5854F8);
    sub_229564F88(v92, v111, &qword_27D8818C0, &unk_22A5820B0);
    v32 = (*(v28 + 80) + 72) & ~*(v28 + 80);
    v33 = (v89 + *(v23 + 80) + v32) & ~*(v23 + 80);
    v34 = (v33 + v95) & 0xFFFFFFFFFFFFFFF8;
    v35 = (*(v93 + 80) + v34 + 16) & ~*(v93 + 80);
    v36 = (v97 + *(v99 + 80) + v35) & ~*(v99 + 80);
    v37 = swift_allocObject();
    *(v37 + 16) = 0;
    *(v37 + 24) = 0;
    sub_229557188((v0 + 16), v37 + 32);
    (*(v28 + 32))(v37 + v32, v26, v91);
    v107(v37 + v33, v90, v88);
    *(v37 + v33 + v95) = v101;
    *(v37 + v34 + 8) = v103;
    sub_22957F2F8(v25, v37 + v35, &qword_27D8818B0, &qword_22A5854F8);
    sub_22957F2F8(v111, v37 + v36, &qword_27D8818C0, &unk_22A5820B0);
    v38 = v103;
    sub_22957F3C0(0, 0, v105, &unk_22A585528, v37);

    v39 = swift_task_alloc();
    *(v0 + 528) = v39;
    *v39 = v0;
    v39[1] = sub_229828B30;
    v40 = *(v0 + 416);
    v41 = *(v0 + 224);
    v42 = *(v0 + 168);
    v43 = *(v0 + 536);

    return sub_229830A04(v41, v42, v40, v43);
  }

  else
  {
    v45 = *(v0 + 224);
    v46 = *(v0 + 208);
    v47 = *(v0 + 184);
    v48 = *(v0 + 192);
    v49 = *(v0 + 168);
    v50 = *(v0 + 152);
    v51 = *(v0 + 80);

    (*(v48 + 16))(v46, v45, v47);
    sub_229564F88(v49, v50, &qword_27D8818B0, &qword_22A5854F8);
    v52 = v51;
    v53 = sub_22A4DD05C();
    v54 = sub_22A4DDCCC();

    v55 = os_log_type_enabled(v53, v54);
    v56 = *(v0 + 336);
    v109 = *(v0 + 328);
    v112 = *(v0 + 296);
    if (v55)
    {
      v58 = *(v0 + 240);
      v57 = *(v0 + 248);
      v104 = *(v0 + 336);
      v59 = *(v0 + 232);
      v106 = *(v0 + 224);
      v94 = *(v0 + 208);
      v60 = *(v0 + 184);
      v108 = *(v0 + 192);
      v102 = *(v0 + 168);
      v96 = *(v0 + 152);
      v98 = *(v0 + 160);
      v61 = *(v0 + 80);
      v62 = swift_slowAlloc();
      v100 = swift_slowAlloc();
      v113 = v100;
      *v62 = 136315650;
      v63 = [v61 uuid];
      sub_22A4DB79C();

      sub_229839520(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v64 = sub_22A4DE5CC();
      v66 = v65;
      (*(v58 + 8))(v57, v59);
      v67 = sub_2295A3E30(v64, v66, &v113);

      *(v62 + 4) = v67;
      *(v62 + 12) = 2080;
      sub_229839520(&qword_27D8818C8, MEMORY[0x277D17350], MEMORY[0x277D17358]);
      v68 = sub_22A4DE5CC();
      v70 = v69;
      v71 = *(v108 + 8);
      v71(v94, v60);
      v72 = sub_2295A3E30(v68, v70, &v113);

      *(v62 + 14) = v72;
      *(v62 + 22) = 2080;
      sub_229564F88(v96, v98, &qword_27D8818B0, &qword_22A5854F8);
      v73 = sub_22A4DD64C();
      v75 = v74;
      sub_22953EAE4(v96, &qword_27D8818B0, &qword_22A5854F8);
      v76 = sub_2295A3E30(v73, v75, &v113);

      *(v62 + 24) = v76;
      _os_log_impl(&dword_229538000, v53, v54, "[%s] No update needed: currentSuggestedPreset: %s, predictedSuggestedPreset: %s", v62, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v100, -1, -1);
      MEMORY[0x22AAD4E50](v62, -1, -1);

      sub_229590D18(v109, v104);
      sub_22953EAE4(v102, &qword_27D8818B0, &qword_22A5854F8);
      v71(v106, v60);
    }

    else
    {
      v77 = *(v0 + 224);
      v78 = *(v0 + 208);
      v79 = *(v0 + 184);
      v80 = *(v0 + 192);
      v81 = *(v0 + 168);
      v82 = *(v0 + 152);

      sub_229590D18(v109, v56);
      sub_22953EAE4(v82, &qword_27D8818B0, &qword_22A5854F8);
      v83 = *(v80 + 8);
      v83(v78, v79);
      sub_22953EAE4(v81, &qword_27D8818B0, &qword_22A5854F8);
      v83(v77, v79);
    }

    sub_22953EAE4(v112, &qword_27D8818C0, &unk_22A5820B0);

    v84 = *(v0 + 8);

    return v84();
  }
}

uint64_t sub_229828B30()
{

  return MEMORY[0x2822009F8](sub_229828C48, 0, 0);
}

uint64_t sub_229828C48()
{
  v1 = v0[37];
  v2 = v0[28];
  v3 = v0[23];
  v4 = v0[24];
  v5 = v0[21];
  sub_229590D18(v0[41], v0[42]);
  sub_22953EAE4(v5, &qword_27D8818B0, &qword_22A5854F8);
  (*(v4 + 8))(v2, v3);
  sub_22953EAE4(v1, &qword_27D8818C0, &unk_22A5820B0);

  v6 = v0[1];

  return v6();
}

uint64_t sub_229828DB4()
{
  v27 = v0;
  if (qword_27D87BA98 != -1)
  {
    swift_once();
  }

  v1 = v0[39];
  v2 = v0[10];
  v3 = sub_22A4DD07C();
  __swift_project_value_buffer(v3, qword_27D8817F8);
  v4 = v2;
  v5 = v1;
  v6 = sub_22A4DD05C();
  v7 = sub_22A4DDCEC();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[39];
  if (v8)
  {
    v11 = v0[30];
    v10 = v0[31];
    v12 = v0[29];
    v13 = v0[10];
    v14 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v26 = v25;
    *v14 = 136315394;
    v15 = [v13 uuid];
    sub_22A4DB79C();

    sub_229839520(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v16 = sub_22A4DE5CC();
    v18 = v17;
    (*(v11 + 8))(v10, v12);
    v19 = sub_2295A3E30(v16, v18, &v26);

    *(v14 + 4) = v19;
    *(v14 + 12) = 2112;
    v20 = v9;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 14) = v21;
    *v24 = v21;
    _os_log_impl(&dword_229538000, v6, v7, "[%s] Failed to read valenciaStateEnabled: %@", v14, 0x16u);
    sub_22953EAE4(v24, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v24, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v25);
    MEMORY[0x22AAD4E50](v25, -1, -1);
    MEMORY[0x22AAD4E50](v14, -1, -1);
  }

  else
  {
  }

  v22 = v0[1];

  return v22();
}

uint64_t sub_2298290F8()
{
  v27 = v0;
  if (qword_27D87BA98 != -1)
  {
    swift_once();
  }

  v1 = v0[43];
  v2 = v0[10];
  v3 = sub_22A4DD07C();
  __swift_project_value_buffer(v3, qword_27D8817F8);
  v4 = v2;
  v5 = v1;
  v6 = sub_22A4DD05C();
  v7 = sub_22A4DDCEC();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[43];
  if (v8)
  {
    v11 = v0[30];
    v10 = v0[31];
    v12 = v0[29];
    v13 = v0[10];
    v14 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v26 = v25;
    *v14 = 136315394;
    v15 = [v13 uuid];
    sub_22A4DB79C();

    sub_229839520(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v16 = sub_22A4DE5CC();
    v18 = v17;
    (*(v11 + 8))(v10, v12);
    v19 = sub_2295A3E30(v16, v18, &v26);

    *(v14 + 4) = v19;
    *(v14 + 12) = 2112;
    v20 = v9;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 14) = v21;
    *v24 = v21;
    _os_log_impl(&dword_229538000, v6, v7, "[%s] Failed to read currentSuggestedPresetHandle: %@", v14, 0x16u);
    sub_22953EAE4(v24, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v24, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v25);
    MEMORY[0x22AAD4E50](v25, -1, -1);
    MEMORY[0x22AAD4E50](v14, -1, -1);
  }

  else
  {
  }

  v22 = v0[1];

  return v22();
}

uint64_t sub_22982943C()
{
  v29 = v0;
  if (qword_27D87BA98 != -1)
  {
    swift_once();
  }

  v1 = v0[45];
  v2 = v0[10];
  v3 = sub_22A4DD07C();
  __swift_project_value_buffer(v3, qword_27D8817F8);
  v4 = v2;
  v5 = v1;
  v6 = sub_22A4DD05C();
  v7 = sub_22A4DDCEC();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[45];
  if (v8)
  {
    v11 = v0[30];
    v10 = v0[31];
    v12 = v0[29];
    v13 = v0[10];
    v26 = v0[41];
    v27 = v0[42];
    v14 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v28 = v25;
    *v14 = 136315394;
    v15 = [v13 uuid];
    sub_22A4DB79C();

    sub_229839520(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v16 = sub_22A4DE5CC();
    v18 = v17;
    (*(v11 + 8))(v10, v12);
    v19 = sub_2295A3E30(v16, v18, &v28);

    *(v14 + 4) = v19;
    *(v14 + 12) = 2112;
    v20 = v9;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 14) = v21;
    *v24 = v21;
    _os_log_impl(&dword_229538000, v6, v7, "[%s] Failed to read predictedSuggestedPreset: %@", v14, 0x16u);
    sub_22953EAE4(v24, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v24, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v25);
    MEMORY[0x22AAD4E50](v25, -1, -1);
    MEMORY[0x22AAD4E50](v14, -1, -1);
    sub_229590D18(v26, v27);
  }

  else
  {
    sub_229590D18(v0[41], v0[42]);
  }

  v22 = v0[1];

  return v22();
}

uint64_t sub_22982979C()
{
  v26 = v0;
  v1 = *(v0 + 376);
  if (qword_27D87BA98 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 80);
  v3 = sub_22A4DD07C();
  __swift_project_value_buffer(v3, qword_27D8817F8);
  v4 = v2;
  v5 = v1;
  v6 = sub_22A4DD05C();
  v7 = sub_22A4DDCEC();

  if (os_log_type_enabled(v6, v7))
  {
    v9 = *(v0 + 240);
    v8 = *(v0 + 248);
    v10 = *(v0 + 232);
    v11 = *(v0 + 80);
    v12 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v25 = v24;
    *v12 = 136315394;
    v13 = [v11 uuid];
    sub_22A4DB79C();

    sub_229839520(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v14 = sub_22A4DE5CC();
    v16 = v15;
    (*(v9 + 8))(v8, v10);
    v17 = sub_2295A3E30(v14, v16, &v25);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2112;
    v18 = v1;
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v19;
    *v23 = v19;
    _os_log_impl(&dword_229538000, v6, v7, "[%s] Failed to clear suggested preset or predicted preset: %@", v12, 0x16u);
    sub_22953EAE4(v23, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v23, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v24);
    MEMORY[0x22AAD4E50](v24, -1, -1);
    MEMORY[0x22AAD4E50](v12, -1, -1);
  }

  else
  {
  }

  v20 = swift_task_alloc();
  *(v0 + 400) = v20;
  *v20 = v0;
  v20[1] = sub_229826B84;
  v21 = *(v0 + 536);

  return sub_22982AFA8(v21);
}

uint64_t sub_229829A88()
{
  v26 = v0;
  v1 = *(v0 + 392);
  if (qword_27D87BA98 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 80);
  v3 = sub_22A4DD07C();
  __swift_project_value_buffer(v3, qword_27D8817F8);
  v4 = v2;
  v5 = v1;
  v6 = sub_22A4DD05C();
  v7 = sub_22A4DDCEC();

  if (os_log_type_enabled(v6, v7))
  {
    v9 = *(v0 + 240);
    v8 = *(v0 + 248);
    v10 = *(v0 + 232);
    v11 = *(v0 + 80);
    v12 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v25 = v24;
    *v12 = 136315394;
    v13 = [v11 uuid];
    sub_22A4DB79C();

    sub_229839520(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v14 = sub_22A4DE5CC();
    v16 = v15;
    (*(v9 + 8))(v8, v10);
    v17 = sub_2295A3E30(v14, v16, &v25);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2112;
    v18 = v1;
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v19;
    *v23 = v19;
    _os_log_impl(&dword_229538000, v6, v7, "[%s] Failed to clear suggested preset or predicted preset: %@", v12, 0x16u);
    sub_22953EAE4(v23, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v23, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v24);
    MEMORY[0x22AAD4E50](v24, -1, -1);
    MEMORY[0x22AAD4E50](v12, -1, -1);
  }

  else
  {
  }

  v20 = swift_task_alloc();
  *(v0 + 400) = v20;
  *v20 = v0;
  v20[1] = sub_229826B84;
  v21 = *(v0 + 536);

  return sub_22982AFA8(v21);
}

uint64_t sub_229829D74()
{
  v32 = v0;
  if (qword_27D87BA98 != -1)
  {
    swift_once();
  }

  v1 = v0[53];
  v2 = v0[10];
  v3 = sub_22A4DD07C();
  __swift_project_value_buffer(v3, qword_27D8817F8);
  v4 = v2;
  v5 = v1;
  v6 = sub_22A4DD05C();
  v7 = sub_22A4DDCEC();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[53];
  v10 = v0[37];
  if (v8)
  {
    v29 = v0[42];
    v30 = v0[37];
    v12 = v0[30];
    v11 = v0[31];
    v13 = v0[29];
    v14 = v0[10];
    v28 = v0[41];
    v15 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v31 = v27;
    *v15 = 136315394;
    v16 = [v14 uuid];
    sub_22A4DB79C();

    sub_229839520(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v17 = sub_22A4DE5CC();
    v19 = v18;
    (*(v12 + 8))(v11, v13);
    v20 = sub_2295A3E30(v17, v19, &v31);

    *(v15 + 4) = v20;
    *(v15 + 12) = 2112;
    v21 = v9;
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 14) = v22;
    *v26 = v22;
    _os_log_impl(&dword_229538000, v6, v7, "[%s] Failed to read presets: %@", v15, 0x16u);
    sub_22953EAE4(v26, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v26, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v27);
    MEMORY[0x22AAD4E50](v27, -1, -1);
    MEMORY[0x22AAD4E50](v15, -1, -1);

    sub_229590D18(v28, v29);
    v23 = v30;
  }

  else
  {
    sub_229590D18(v0[41], v0[42]);

    v23 = v10;
  }

  sub_22953EAE4(v23, &qword_27D8818C0, &unk_22A5820B0);

  v24 = v0[1];

  return v24();
}

uint64_t sub_22982A108()
{
  v30 = v0;
  v1 = *(v0 + 456);
  v2 = *(v0 + 80);
  v3 = v1;
  v4 = sub_22A4DD05C();
  v5 = sub_22A4DDCEC();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 456);
  v8 = *(v0 + 296);
  if (v6)
  {
    v27 = *(v0 + 336);
    v28 = *(v0 + 296);
    v10 = *(v0 + 240);
    v9 = *(v0 + 248);
    v11 = *(v0 + 232);
    v12 = *(v0 + 80);
    v26 = *(v0 + 328);
    v13 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v29 = v25;
    *v13 = 136315394;
    v14 = [v12 uuid];
    sub_22A4DB79C();

    sub_229839520(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v15 = sub_22A4DE5CC();
    v17 = v16;
    (*(v10 + 8))(v9, v11);
    v18 = sub_2295A3E30(v15, v17, &v29);

    *(v13 + 4) = v18;
    *(v13 + 12) = 2112;
    v19 = v7;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 14) = v20;
    *v24 = v20;
    _os_log_impl(&dword_229538000, v4, v5, "[%s] Failed to read presetTypes: %@", v13, 0x16u);
    sub_22953EAE4(v24, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v24, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v25);
    MEMORY[0x22AAD4E50](v25, -1, -1);
    MEMORY[0x22AAD4E50](v13, -1, -1);

    sub_229590D18(v26, v27);
    v21 = v28;
  }

  else
  {
    sub_229590D18(*(v0 + 328), *(v0 + 336));

    v21 = v8;
  }

  sub_22953EAE4(v21, &qword_27D8818C0, &unk_22A5820B0);

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_22982A458()
{
  v30 = v0;
  v1 = *(v0 + 480);
  v2 = *(v0 + 80);
  v3 = v1;
  v4 = sub_22A4DD05C();
  v5 = sub_22A4DDCEC();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 480);
  v8 = *(v0 + 296);
  if (v6)
  {
    v27 = *(v0 + 336);
    v28 = *(v0 + 296);
    v10 = *(v0 + 240);
    v9 = *(v0 + 248);
    v11 = *(v0 + 232);
    v12 = *(v0 + 80);
    v26 = *(v0 + 328);
    v13 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v29 = v25;
    *v13 = 136315394;
    v14 = [v12 uuid];
    sub_22A4DB79C();

    sub_229839520(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v15 = sub_22A4DE5CC();
    v17 = v16;
    (*(v10 + 8))(v9, v11);
    v18 = sub_2295A3E30(v15, v17, &v29);

    *(v13 + 4) = v18;
    *(v13 + 12) = 2112;
    v19 = v7;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 14) = v20;
    *v24 = v20;
    _os_log_impl(&dword_229538000, v4, v5, "[%s] Failed to read applePresetsAdditionalInfo: %@", v13, 0x16u);
    sub_22953EAE4(v24, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v24, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v25);
    MEMORY[0x22AAD4E50](v25, -1, -1);
    MEMORY[0x22AAD4E50](v13, -1, -1);

    sub_229590D18(v26, v27);
    v21 = v28;
  }

  else
  {
    sub_229590D18(*(v0 + 328), *(v0 + 336));

    v21 = v8;
  }

  sub_22953EAE4(v21, &qword_27D8818C0, &unk_22A5820B0);

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_22982A7A8()
{
  v38 = v0;
  v1 = *(v0 + 512);
  v2 = *(v0 + 80);
  v3 = v1;
  v4 = sub_22A4DD05C();
  v5 = sub_22A4DDCEC();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 512);
  v9 = *(v0 + 328);
  v8 = *(v0 + 336);
  v10 = *(v0 + 296);
  if (v6)
  {
    v32 = *(v0 + 328);
    v12 = *(v0 + 240);
    v11 = *(v0 + 248);
    v13 = *(v0 + 232);
    v33 = *(v0 + 192);
    v34 = *(v0 + 184);
    v35 = *(v0 + 224);
    v36 = *(v0 + 296);
    v14 = *(v0 + 80);
    v31 = *(v0 + 336);
    v15 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v37 = v30;
    *v15 = 136315394;
    v16 = [v14 uuid];
    sub_22A4DB79C();

    sub_229839520(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v17 = sub_22A4DE5CC();
    v19 = v18;
    (*(v12 + 8))(v11, v13);
    v20 = sub_2295A3E30(v17, v19, &v37);

    *(v15 + 4) = v20;
    *(v15 + 12) = 2112;
    v21 = v7;
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 14) = v22;
    *v29 = v22;
    _os_log_impl(&dword_229538000, v4, v5, "[%s] Failed to read appleIgnorePredictedPresets: %@", v15, 0x16u);
    sub_22953EAE4(v29, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v29, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v30);
    MEMORY[0x22AAD4E50](v30, -1, -1);
    MEMORY[0x22AAD4E50](v15, -1, -1);

    sub_229590D18(v32, v31);
    (*(v33 + 8))(v35, v34);
    v23 = v36;
  }

  else
  {
    v24 = *(v0 + 224);
    v25 = *(v0 + 184);
    v26 = *(v0 + 192);

    sub_229590D18(v9, v8);
    (*(v26 + 8))(v24, v25);
    v23 = v10;
  }

  sub_22953EAE4(v23, &qword_27D8818C0, &unk_22A5820B0);

  v27 = *(v0 + 8);

  return v27();
}

void sub_22982AB44()
{
  v1 = v0;
  v30[1] = *MEMORY[0x277D85DE8];
  v2 = sub_22A4DB7DC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_msgSend(v0 dataSource)];
  swift_unknownObjectRelease();
  sub_2298321A0();
  v7 = sub_22A4DD5AC();

  v8 = sub_22A4DB6AC();
  v30[0] = 0;
  v9 = [v6 scheduleTaskWithIdentifier:v7 fireDate:v8 onObserver:v1 selector:sel_handleValenciaTimerFiredWithNotification_ error:v30];

  v10 = v30[0];
  if (v9)
  {

    v11 = v10;
  }

  else
  {
    v29 = v30[0];
    v12 = v30[0];
    v13 = sub_22A4DB3EC();

    swift_willThrow();
    if (qword_27D87BA98 != -1)
    {
      swift_once();
    }

    v14 = sub_22A4DD07C();
    __swift_project_value_buffer(v14, qword_27D8817F8);
    v15 = v1;
    v16 = v13;
    v17 = sub_22A4DD05C();
    v18 = sub_22A4DDCEC();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v30[0] = v29;
      *v19 = 136315650;
      v21 = [v15 uuid];
      sub_22A4DB79C();

      sub_229839520(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v22 = sub_22A4DE5CC();
      v24 = v23;
      (*(v3 + 8))(v5, v2);
      v25 = sub_2295A3E30(v22, v24, v30);

      *(v19 + 4) = v25;
      *(v19 + 12) = 2080;
      *(v19 + 14) = sub_2295A3E30(0xD000000000000021, 0x800000022A597F30, v30);
      *(v19 + 22) = 2112;
      v26 = v13;
      v27 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 24) = v27;
      *v20 = v27;
      _os_log_impl(&dword_229538000, v17, v18, "[%s] %s Failed schedule suggested preset refresh timer: %@", v19, 0x20u);
      sub_22953EAE4(v20, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v20, -1, -1);
      v28 = v29;
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v28, -1, -1);
      MEMORY[0x22AAD4E50](v19, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_22982AFA8(char a1)
{
  *(v2 + 56) = v1;
  *(v2 + 128) = a1;
  *(v2 + 64) = swift_getObjectType();
  v3 = sub_22A4DB7DC();
  *(v2 + 72) = v3;
  *(v2 + 80) = *(v3 - 8);
  *(v2 + 88) = swift_task_alloc();
  *(v2 + 96) = type metadata accessor for ThermostatSuggestedPreset.Current(0);
  *(v2 + 104) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22982B0A8, 0, 0);
}

uint64_t sub_22982B0A8()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 56);
  v3 = *(v0 + 128);
  v4 = [objc_msgSend(v2 dataSource)];
  swift_unknownObjectRelease();
  sub_22A4DB70C();

  *v1 = 0;
  v1[1] = v3;
  v5 = [v2 swiftExtensions];
  _s15SwiftExtensionsCMa_1();
  v6 = (swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtCE13HomeKitDaemonCSo15HMDHAPAccessory15SwiftExtensions_climateStorage);
  os_unfair_lock_lock(v6);
  sub_22978620C(&v6[2], v2, (v0 + 16));
  os_unfair_lock_unlock(v6);
  swift_unknownObjectRelease();
  __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
  v7 = swift_task_alloc();
  *(v0 + 112) = v7;
  *v7 = v0;
  v7[1] = sub_22982B264;
  v8 = *(v0 + 104);

  return sub_2296C7160(v8);
}