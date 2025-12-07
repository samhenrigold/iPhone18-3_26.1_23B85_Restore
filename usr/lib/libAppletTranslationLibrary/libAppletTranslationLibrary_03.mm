void *sub_22EF87B48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v24 = a4;

  sub_22EF9B6DC(v8);
  v9 = sub_22EFA30DC(v24);

  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = sub_22EF94370(*(v9 + 16), 0);
    v12 = sub_22EFAA300(&v24, v11 + 2, v10, v9);
    sub_22EFA0FD0(v24);
    if (v12 == v10)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v11 = MEMORY[0x277D84F90];
LABEL_5:
  v24 = a5;

  sub_22EF9B6DC(v13);
  v14 = sub_22EFA30DC(v24);

  v15 = *(v14 + 16);
  if (v15)
  {
    v16 = sub_22EF94370(*(v14 + 16), 0);
    v17 = sub_22EFAA300(&v24, v16 + 2, v15, v14);
    sub_22EFA0FD0(v24);
    if (v17 == v15)
    {
      goto LABEL_9;
    }

    __break(1u);
  }

LABEL_9:
  v24 = a6;

  sub_22EF947D0(v18);
  v19 = sub_22EFA3178(v24);

  v20 = *(v19 + 16);
  if (!v20)
  {
LABEL_12:

    return v11;
  }

  v21 = sub_22EF948BC(*(v19 + 16), 0);
  v22 = sub_22EFAA204(&v24, v21 + 32, v20, v19);
  sub_22EFA0FD0(v24);
  if (v22 != v20)
  {
    __break(1u);
    goto LABEL_12;
  }

  return v11;
}

uint64_t sub_22EF87D54(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v45 = *MEMORY[0x277D85DE8];
  if (*(a3 + 16))
  {
    sub_22EFB68DC();
    sub_22EFB61EC();
    v6 = sub_22EFB691C();
    v7 = a3 + 56;
    v8 = -1 << *(a3 + 32);
    v9 = v6 & ~v8;
    if ((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
    {
      v10 = ~v8;
      if (a1)
      {
        v11 = 0;
      }

      else
      {
        v11 = a2 == 0xC000000000000000;
      }

      v12 = !v11;
      v42 = v12;
      v13 = a2 >> 62;
      v14 = __OFSUB__(HIDWORD(a1), a1);
      v39 = v14;
      v37 = a2;
      v38 = HIDWORD(a1) - a1;
      v40 = v10;
      v41 = BYTE6(a2);
      v36 = a1;
      while (1)
      {
        v15 = (*(a3 + 48) + 16 * v9);
        v17 = *v15;
        v16 = v15[1];
        v18 = v16 >> 62;
        if (v16 >> 62 == 3)
        {
          break;
        }

        if (v18 > 1)
        {
          if (v18 != 2)
          {
            goto LABEL_37;
          }

          v24 = *(v17 + 16);
          v23 = *(v17 + 24);
          v25 = __OFSUB__(v23, v24);
          v22 = v23 - v24;
          if (v25)
          {
            goto LABEL_67;
          }

          if (v13 <= 1)
          {
            goto LABEL_34;
          }
        }

        else if (v18)
        {
          LODWORD(v22) = HIDWORD(v17) - v17;
          if (__OFSUB__(HIDWORD(v17), v17))
          {
            goto LABEL_68;
          }

          v22 = v22;
          if (v13 <= 1)
          {
LABEL_34:
            v26 = v41;
            if (v13)
            {
              v26 = v38;
              if (v39)
              {
                goto LABEL_66;
              }
            }

            goto LABEL_40;
          }
        }

        else
        {
          v22 = BYTE6(v16);
          if (v13 <= 1)
          {
            goto LABEL_34;
          }
        }

LABEL_38:
        if (v13 != 2)
        {
          if (!v22)
          {
            return 1;
          }

          goto LABEL_14;
        }

        v28 = *(a1 + 16);
        v27 = *(a1 + 24);
        v25 = __OFSUB__(v27, v28);
        v26 = v27 - v28;
        if (v25)
        {
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
          __break(1u);
LABEL_71:
          __break(1u);
LABEL_72:
          __break(1u);
        }

LABEL_40:
        if (v22 == v26)
        {
          if (v22 < 1)
          {
            return 1;
          }

          if (v18 <= 1)
          {
            if (!v18)
            {
              *v44 = v17;
              *&v44[8] = v16;
              v44[10] = BYTE2(v16);
              v44[11] = BYTE3(v16);
              v44[12] = BYTE4(v16);
              v44[13] = BYTE5(v16);
              sub_22EF70B68(v17, v16);
              sub_22EF92D44(v44, a1, a2, &v43);
              sub_22EF708C8(v17, v16);
              if (v43)
              {
                return 1;
              }

LABEL_61:
              v10 = v40;
              goto LABEL_14;
            }

            if (v17 >> 32 < v17)
            {
              goto LABEL_69;
            }

            sub_22EF70B68(v17, v16);
            v31 = sub_22EFB603C();
            if (v31)
            {
              v33 = sub_22EFB605C();
              if (__OFSUB__(v17, v33))
              {
                goto LABEL_72;
              }

              v31 += v17 - v33;
            }

LABEL_59:
            sub_22EFB604C();
            v34 = v31;
            a1 = v36;
            a2 = v37;
            sub_22EF92D44(v34, v36, v37, v44);
            sub_22EF708C8(v17, v16);
            if (v44[0])
            {
              return 1;
            }

            v7 = a3 + 56;
            goto LABEL_61;
          }

          if (v18 == 2)
          {
            v30 = *(v17 + 16);
            v29 = *(v17 + 24);
            sub_22EF70B68(v17, v16);
            v31 = sub_22EFB603C();
            if (v31)
            {
              v32 = sub_22EFB605C();
              if (__OFSUB__(v30, v32))
              {
                goto LABEL_71;
              }

              v31 += v30 - v32;
            }

            if (__OFSUB__(v29, v30))
            {
              goto LABEL_70;
            }

            goto LABEL_59;
          }

          *&v44[6] = 0;
          *v44 = 0;
          sub_22EF70B68(v17, v16);
          sub_22EF92D44(v44, a1, a2, &v43);
          sub_22EF708C8(v17, v16);
          if (v43)
          {
            return 1;
          }
        }

LABEL_14:
        v9 = (v9 + 1) & v10;
        if (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
        {
          return 0;
        }
      }

      if (v17)
      {
        v19 = 0;
      }

      else
      {
        v19 = v16 == 0xC000000000000000;
      }

      v21 = !v19 || v13 < 3;
      if (((v21 | v42) & 1) == 0)
      {
        return 1;
      }

LABEL_37:
      v22 = 0;
      if (v13 <= 1)
      {
        goto LABEL_34;
      }

      goto LABEL_38;
    }
  }

  return 0;
}

BOOL sub_22EF88178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v45 = a8;
  v46 = a4;
  v10 = a5;
  v14 = *(a1 + 32);
  v47 = a1;
  v15 = sub_22EF6E8C0(v14, *(a1 + 40), *(a5 + 32), *(a5 + 40));
  if ((v15 & 1) == 0)
  {
    v43 = a3;
    v44 = v10;
    v19 = *(a2 + 16);
    v20 = (a2 + 32);
    while (v19)
    {
      v21 = *v20++;
      v48 = v21;
      *&v22 = MEMORY[0x28223BE20](v15);
      v42 = &v48;
      v23 = v22;
      v25 = v24;
      sub_22EF70B68(v22, v24);
      v26 = sub_22EF83730(sub_22EFA8424, v41, a6);
      v15 = sub_22EF708C8(v23, v25);
      --v19;
      if (v26)
      {
        return 1;
      }
    }

    v10 = v44;
    v27 = *(v43 + 16);
    v28 = (v43 + 32);
    while (v27)
    {
      v29 = *v28++;
      v48 = v29;
      *&v30 = MEMORY[0x28223BE20](v15);
      v42 = &v48;
      v31 = v30;
      v33 = v32;
      sub_22EF70B68(v30, v32);
      v34 = sub_22EF83730(sub_22EFA8424, v41, a7);
      v15 = sub_22EF708C8(v31, v33);
      --v27;
      if (v34)
      {
        return 1;
      }
    }
  }

  v16 = v47;
  v17 = *(v47 + 16) == *(v10 + 16) && *(v47 + 24) == *(v10 + 24);
  if (v17 || (sub_22EFB684C()) && (*(v16 + 176) & 1) == 0)
  {
    v18 = *(v10 + 176) ^ 1;
  }

  else
  {
    v18 = 0;
  }

  if (*(v46 + 16) && !((*(v45 + 16) == 0) | v18 & 1))
  {
    return 1;
  }

  v35 = *(v16 + 72);
  if (v35 >> 60 != 15)
  {
    v36 = *(v16 + 64);
    v38 = *(v10 + 64);
    v37 = *(v10 + 72);
    sub_22EF70CB0(v36, v35);
    sub_22EF70CB0(v38, v37);
    if (v37 >> 60 == 15)
    {
      sub_22EF708B4(v36, v35);
      sub_22EF708B4(v38, v37);
      return 0;
    }

    v39 = sub_22EF6E8C0(v36, v35, v38, v37);
    sub_22EF708B4(v38, v37);
    sub_22EF708B4(v36, v35);
    return v39;
  }

  return 0;
}

uint64_t sub_22EF8841C(unint64_t a1)
{
  v120[1] = *MEMORY[0x277D85DE8];
  if (*(v1 + OBJC_IVAR____TtC24AppletTranslationLibrary11ExpressMode_internalBuild) == 1 && [*(v1 + OBJC_IVAR____TtC24AppletTranslationLibrary11ExpressMode_userDefaults) BOOLForKey_])
  {
    if (qword_27DA9E058 == -1)
    {
LABEL_4:
      v3 = sub_22EFB626C();
      __swift_project_value_buffer(v3, qword_27DAA03B8);
      v4 = sub_22EFB624C();
      v5 = sub_22EFB65EC();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 0;
        _os_log_impl(&dword_22EEF5000, v4, v5, "Forcing slow mode due to debug pref", v6, 2u);
        MEMORY[0x2318FC200](v6, -1, -1);
      }

      return 0;
    }

LABEL_200:
    swift_once();
    goto LABEL_4;
  }

  if (a1 >> 62)
  {
    goto LABEL_193;
  }

  v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v8)
  {
    while (1)
    {
      if (v8 == 1)
      {
        return 1;
      }

      v9 = 0;
      v111 = a1 & 0xC000000000000001;
      v104 = a1 & 0xFFFFFFFFFFFFFF8;
      v105 = a1 + 32;
      v103 = v1;
      v10 = 1;
      v108 = a1;
      v106 = v8;
LABEL_15:
      v11 = v9;
      v107 = v10;
      v109 = v9;
      while (1)
      {
        if (v10 >= v8)
        {
LABEL_177:
          __break(1u);
LABEL_178:
          __break(1u);
LABEL_179:
          __break(1u);
LABEL_180:
          __break(1u);
LABEL_181:
          __break(1u);
LABEL_182:
          __break(1u);
LABEL_183:
          __break(1u);
LABEL_184:
          __break(1u);
LABEL_185:
          __break(1u);
LABEL_186:
          __break(1u);
LABEL_187:
          __break(1u);
LABEL_188:
          __break(1u);
LABEL_189:
          __break(1u);
LABEL_190:
          __break(1u);
LABEL_191:
          __break(1u);
          goto LABEL_192;
        }

        if (v111)
        {
          v13 = MEMORY[0x2318FB480](v11, a1);
        }

        else
        {
          if (v11 >= *(v104 + 16))
          {
            goto LABEL_190;
          }

          v13 = *(v105 + 8 * v11);
        }

        v14 = v13[10];
        v1 = v13[11];
        v15 = v13[12];
        sub_22EFA0DA0(v14, v1, v15);

        v110 = v10;
        if (v111)
        {
          v16 = MEMORY[0x2318FB480](v10, a1);
        }

        else
        {
          if (v10 >= *(v104 + 16))
          {
            goto LABEL_191;
          }

          v16 = *(v105 + 8 * v10);
        }

        v18 = v16[10];
        v17 = v16[11];
        v19 = v16[12];
        sub_22EFA0DA0(v18, v17, v19);

        if (!v14)
        {
          v11 = v109;
          switch(v18)
          {
            case 0uLL:
              goto LABEL_42;
            case 1uLL:
              goto LABEL_48;
            case 2uLL:
LABEL_42:
              v24 = v18;
              v25 = v17;
              v26 = v19;
LABEL_53:
              sub_22EFA0DF0(v24, v25, v26);
              goto LABEL_17;
          }

          if (v111)
          {
            v35 = MEMORY[0x2318FB480](v110, a1);
            v1 = MEMORY[0x2318FB480](v109, a1);
          }

          else
          {
            v35 = *(v105 + 8 * v110);
            v1 = *(v105 + 8 * v109);
          }

          v54 = *(v35 + 136);
          if (v54 >> 60 == 15)
          {

            sub_22EFA0DF0(v18, v17, v19);

            goto LABEL_17;
          }

          v55 = *(v35 + 128);
          v56 = sub_22EFB648C();
          a1 = v57;
          sub_22EF70B68(v55, v54);
          v48 = sub_22EF7E630(v56, a1);
          if (v58 >> 60 == 15)
          {
            goto LABEL_208;
          }

          v59 = v48;
          v60 = v58;

          v1 = sub_22EF89E34(v59, v60, v55, v54);
          sub_22EFA0DF0(v18, v17, v19);
          sub_22EF708B4(v59, v60);
          sub_22EF708B4(v55, v54);
          if ((v1 & 1) == 0)
          {
LABEL_133:

            v11 = v109;
            goto LABEL_17;
          }

          v1 = *(v35 + 152);
          v61 = *(v35 + 160);

          v11 = v109;
          if ((v61 & 1) == 0 && v1 == 2)
          {
            return 0;
          }

          goto LABEL_17;
        }

        v11 = v109;
        if (v14 == 2)
        {
          break;
        }

        if (v14 == 1)
        {
          if (v18 != 2)
          {
            if (v18 == 1)
            {
              goto LABEL_17;
            }

            if (v18)
            {
              sub_22EFA0DF0(v18, v17, v19);
              return 0;
            }
          }

          if (v111)
          {
            v20 = MEMORY[0x2318FB480](v109, v108);
            v22 = *(v20 + 112);
            v21 = *(v20 + 120);
            sub_22EF70B68(v22, v21);
            swift_unknownObjectRelease();
            v23 = v21 >> 62;
            if ((v21 >> 62) <= 1)
            {
              if (v23)
              {
                goto LABEL_135;
              }

LABEL_64:
              v38 = BYTE6(v21);
              if (BYTE6(v21))
              {
                goto LABEL_137;
              }

              goto LABEL_140;
            }

            if (v23 != 2)
            {
              goto LABEL_140;
            }
          }

          else
          {
            v36 = *(v105 + 8 * v109);
            v22 = *(v36 + 112);
            v21 = *(v36 + 120);
            v37 = v21 >> 62;
            if ((v21 >> 62) <= 1)
            {
              if (!v37)
              {
                goto LABEL_64;
              }

              sub_22EF70B68(v22, v21);
LABEL_135:
              v81 = HIDWORD(v22) - v22;
              if (__OFSUB__(HIDWORD(v22), v22))
              {
                goto LABEL_198;
              }

              v38 = v81;
              if (v81)
              {
LABEL_137:
                v120[0] = MEMORY[0x277D84F90];
                v1 = v120;
                sub_22EF9AAC8(0, v38 & ~(v38 >> 63), 0);
                v113 = 0;
                v82 = v21 >> 62;
                if ((v21 >> 62) > 1)
                {
                  if (v82 == 2)
                  {
                    v83 = *(v22 + 16);
LABEL_143:
                    v113 = v83;
                  }
                }

                else if (v82)
                {
                  v83 = v22;
                  goto LABEL_143;
                }

                if (v38 < 0)
                {
LABEL_195:
                  __break(1u);
LABEL_196:
                  __break(1u);
LABEL_197:
                  __break(1u);
LABEL_198:
                  __break(1u);
LABEL_199:
                  __break(1u);
                  goto LABEL_200;
                }

                a1 = 0;
                v65 = v120[0];
                while (2)
                {
                  if (a1 >= v38)
                  {
                    goto LABEL_175;
                  }

                  v84 = a1 + 1;
                  if (__OFADD__(a1, 1))
                  {
                    goto LABEL_176;
                  }

                  v85 = v113 + a1;
                  if (v82 > 1)
                  {
                    if (v82 != 2)
                    {
                      goto LABEL_204;
                    }

                    if (v85 < *(v22 + 16))
                    {
                      goto LABEL_185;
                    }

                    if (v85 >= *(v22 + 24))
                    {
                      goto LABEL_187;
                    }

                    v86 = sub_22EFB603C();
                    if (!v86)
                    {
                      goto LABEL_206;
                    }

                    v87 = v86;
                    v1 = v21 & 0x3FFFFFFFFFFFFFFFLL;
                    v88 = sub_22EFB605C();
                    v89 = v85 - v88;
                    if (__OFSUB__(v85, v88))
                    {
                      goto LABEL_189;
                    }
                  }

                  else
                  {
                    if (!v82)
                    {
                      if (v85 >= BYTE6(v21))
                      {
                        goto LABEL_184;
                      }

                      v114 = v22;
                      v115 = v21;
                      v116 = BYTE2(v21);
                      v117 = BYTE3(v21);
                      v118 = BYTE4(v21);
                      v119 = BYTE5(v21);
                      v1 = *(&v114 + v113 + a1);
LABEL_164:
                      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E428, &unk_22EFBBC50);
                      v92 = swift_allocObject();
                      *(v92 + 16) = xmmword_22EFBB8C0;
                      *(v92 + 56) = MEMORY[0x277D84B78];
                      *(v92 + 64) = MEMORY[0x277D84BC0];
                      *(v92 + 32) = v1;
                      v93 = sub_22EFB649C();
                      v120[0] = v65;
                      v96 = *(v65 + 16);
                      v95 = *(v65 + 24);
                      if (v96 >= v95 >> 1)
                      {
                        v1 = v120;
                        v102 = v93;
                        v98 = v94;
                        sub_22EF9AAC8((v95 > 1), v96 + 1, 1);
                        v94 = v98;
                        v93 = v102;
                        v65 = v120[0];
                      }

                      *(v65 + 16) = v96 + 1;
                      v97 = v65 + 16 * v96;
                      *(v97 + 32) = v93;
                      *(v97 + 40) = v94;
                      ++a1;
                      if (v84 == v38)
                      {
                        goto LABEL_167;
                      }

                      continue;
                    }

                    if (v85 < v22 || v85 >= v22 >> 32)
                    {
                      goto LABEL_186;
                    }

                    v90 = sub_22EFB603C();
                    if (!v90)
                    {
                      goto LABEL_205;
                    }

                    v87 = v90;
                    v1 = v21 & 0x3FFFFFFFFFFFFFFFLL;
                    v91 = sub_22EFB605C();
                    v89 = v85 - v91;
                    if (__OFSUB__(v85, v91))
                    {
                      goto LABEL_188;
                    }
                  }

                  break;
                }

                v1 = *(v87 + v89);
                goto LABEL_164;
              }

LABEL_140:
              v65 = MEMORY[0x277D84F90];
LABEL_168:
              v114 = v65;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E400, &unk_22EFBD180);
              sub_22EF70E20(&qword_27DA9E408, &qword_27DA9E400, &unk_22EFBD180, MEMORY[0x277D83958]);
              v99 = sub_22EFB646C();
              v1 = v100;
              sub_22EF708C8(v22, v21);

              if (v99 == 0xD000000000000018 && 0x800000022EFC6B30 == v1)
              {
              }

              else
              {
                v12 = sub_22EFB684C();

                if ((v12 & 1) == 0)
                {
                  return 0;
                }
              }

              goto LABEL_17;
            }

            if (v37 != 2)
            {
              goto LABEL_140;
            }

            sub_22EF70B68(v22, v21);
          }

          v43 = *(v22 + 16);
          v42 = *(v22 + 24);
          v38 = v42 - v43;
          if (__OFSUB__(v42, v43))
          {
            goto LABEL_199;
          }

          if (v38)
          {
            goto LABEL_137;
          }

          goto LABEL_140;
        }

        if (v18)
        {
          if (v18 == 2)
          {
            v24 = v14;
            v25 = v1;
            v26 = v15;
            goto LABEL_53;
          }

          if (v18 == 1)
          {
            sub_22EFA0DF0(v14, v1, v15);
            return 0;
          }

          if (v111)
          {
            v27 = MEMORY[0x2318FB480](v109, a1);
            v28 = MEMORY[0x2318FB480](v110, a1);
          }

          else
          {
            v27 = *(v105 + 8 * v109);
            v28 = *(v105 + 8 * v110);
          }

          v41 = sub_22EF89288(v27, v28, v103);

          sub_22EFA0DF0(v18, v17, v19);
          sub_22EFA0DF0(v14, v1, v15);

          v11 = v109;
          if (!v41)
          {
            return 0;
          }
        }

        else
        {
          if (v111)
          {
            v31 = MEMORY[0x2318FB480](v109, a1);
            MEMORY[0x2318FB480](v110, a1);
          }

          else
          {
            v31 = *(v105 + 8 * v109);
          }

          v44 = *(v31 + 136);
          if (v44 >> 60 == 15)
          {

            sub_22EFA0DF0(v14, v1, v15);

            goto LABEL_17;
          }

          v45 = *(v31 + 128);
          v46 = sub_22EFB648C();
          a1 = v47;
          sub_22EF70B68(v45, v44);
          v48 = sub_22EF7E630(v46, a1);
          if (v49 >> 60 == 15)
          {
            __break(1u);
LABEL_208:
            __break(1u);
            goto LABEL_209;
          }

          v50 = v48;
          v51 = v49;

          v52 = sub_22EF89E34(v50, v51, v45, v44);
          sub_22EFA0DF0(v14, v1, v15);
          sub_22EF708B4(v50, v51);
          sub_22EF708B4(v45, v44);
          if ((v52 & 1) == 0)
          {
            goto LABEL_133;
          }

          v53 = *(v31 + 152);
          v1 = *(v31 + 160);

          v11 = v109;
          if ((v1 & 1) == 0 && v53 == 2)
          {
            return 0;
          }
        }

LABEL_17:
        v10 = v110 + 1;
        v8 = v106;
        v9 = v107;
        a1 = v108;
        if (v110 + 1 == v106)
        {
          v10 = v107 + 1;
          result = 1;
          if (v107 + 1 == v106)
          {
            return result;
          }

          goto LABEL_15;
        }
      }

      if (v18 != 1)
      {
        goto LABEL_42;
      }

LABEL_48:
      if (!v111)
      {
        break;
      }

      v29 = MEMORY[0x2318FB480](v110, a1);
      v22 = *(v29 + 112);
      v21 = *(v29 + 120);
      sub_22EF70B68(v22, v21);
      swift_unknownObjectRelease();
      v30 = v21 >> 62;
      if ((v21 >> 62) > 1)
      {
        if (v30 != 2)
        {
          goto LABEL_140;
        }

        goto LABEL_72;
      }

      if (!v30)
      {
        goto LABEL_58;
      }

LABEL_101:
      v62 = HIDWORD(v22) - v22;
      if (__OFSUB__(HIDWORD(v22), v22))
      {
        goto LABEL_196;
      }

      v34 = v62;
      if (!v62)
      {
        goto LABEL_140;
      }

LABEL_103:
      v120[0] = MEMORY[0x277D84F90];
      v1 = v120;
      sub_22EF9AAC8(0, v34 & ~(v34 >> 63), 0);
      v112 = 0;
      v63 = v21 >> 62;
      if ((v21 >> 62) > 1)
      {
        if (v63 == 2)
        {
          v64 = *(v22 + 16);
LABEL_108:
          v112 = v64;
        }
      }

      else if (v63)
      {
        v64 = v22;
        goto LABEL_108;
      }

      if ((v34 & 0x8000000000000000) == 0)
      {
        a1 = 0;
        v65 = v120[0];
        while (1)
        {
          if (a1 >= v34)
          {
            __break(1u);
LABEL_174:
            __break(1u);
LABEL_175:
            __break(1u);
LABEL_176:
            __break(1u);
            goto LABEL_177;
          }

          v66 = a1 + 1;
          if (__OFADD__(a1, 1))
          {
            goto LABEL_174;
          }

          v67 = v112 + a1;
          if (v63 > 1)
          {
            if (v63 != 2)
            {
              __break(1u);
LABEL_202:
              __break(1u);
LABEL_203:
              __break(1u);
LABEL_204:
              __break(1u);
LABEL_205:
              __break(1u);
LABEL_206:
              __break(1u);
            }

            if (v67 < *(v22 + 16))
            {
              goto LABEL_179;
            }

            if (v67 >= *(v22 + 24))
            {
              goto LABEL_181;
            }

            v68 = sub_22EFB603C();
            if (!v68)
            {
              goto LABEL_203;
            }

            v69 = v68;
            v1 = v21 & 0x3FFFFFFFFFFFFFFFLL;
            v70 = sub_22EFB605C();
            v71 = v67 - v70;
            if (__OFSUB__(v67, v70))
            {
              goto LABEL_183;
            }
          }

          else
          {
            if (!v63)
            {
              if (v67 >= BYTE6(v21))
              {
                goto LABEL_178;
              }

              v114 = v22;
              v115 = v21;
              v116 = BYTE2(v21);
              v117 = BYTE3(v21);
              v118 = BYTE4(v21);
              v119 = BYTE5(v21);
              v1 = *(&v114 + v112 + a1);
              goto LABEL_129;
            }

            if (v67 < v22 || v67 >= v22 >> 32)
            {
              goto LABEL_180;
            }

            v72 = sub_22EFB603C();
            if (!v72)
            {
              goto LABEL_202;
            }

            v69 = v72;
            v1 = v21 & 0x3FFFFFFFFFFFFFFFLL;
            v73 = sub_22EFB605C();
            v71 = v67 - v73;
            if (__OFSUB__(v67, v73))
            {
              goto LABEL_182;
            }
          }

          v1 = *(v69 + v71);
LABEL_129:
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E428, &unk_22EFBBC50);
          v74 = swift_allocObject();
          *(v74 + 16) = xmmword_22EFBB8C0;
          *(v74 + 56) = MEMORY[0x277D84B78];
          *(v74 + 64) = MEMORY[0x277D84BC0];
          *(v74 + 32) = v1;
          v75 = sub_22EFB649C();
          v120[0] = v65;
          v78 = *(v65 + 16);
          v77 = *(v65 + 24);
          if (v78 >= v77 >> 1)
          {
            v1 = v120;
            v101 = v75;
            v80 = v76;
            sub_22EF9AAC8((v77 > 1), v78 + 1, 1);
            v76 = v80;
            v75 = v101;
            v65 = v120[0];
          }

          *(v65 + 16) = v78 + 1;
          v79 = v65 + 16 * v78;
          *(v79 + 32) = v75;
          *(v79 + 40) = v76;
          ++a1;
          if (v66 == v34)
          {
LABEL_167:
            v11 = v109;
            goto LABEL_168;
          }
        }
      }

LABEL_192:
      __break(1u);
LABEL_193:
      v48 = sub_22EFB67CC();
      if (v48 < 0)
      {
        __break(1u);
        goto LABEL_195;
      }

LABEL_209:
      v8 = v48;
      if (!v48)
      {
        return 1;
      }
    }

    v32 = *(v105 + 8 * v110);
    v22 = *(v32 + 112);
    v21 = *(v32 + 120);
    v33 = v21 >> 62;
    if ((v21 >> 62) <= 1)
    {
      if (v33)
      {
        sub_22EF70B68(v22, v21);
        goto LABEL_101;
      }

LABEL_58:
      v34 = BYTE6(v21);
      if (BYTE6(v21))
      {
        goto LABEL_103;
      }

      goto LABEL_140;
    }

    if (v33 != 2)
    {
      goto LABEL_140;
    }

    sub_22EF70B68(v22, v21);
LABEL_72:
    v40 = *(v22 + 16);
    v39 = *(v22 + 24);
    v34 = v39 - v40;
    if (__OFSUB__(v39, v40))
    {
      goto LABEL_197;
    }

    if (v34)
    {
      goto LABEL_103;
    }

    goto LABEL_140;
  }

  return 1;
}

BOOL sub_22EF89288(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + OBJC_IVAR____TtC24AppletTranslationLibrary11ExpressMode_modulesRequiringSlowPath);
  v96 = *(a1 + 112);
  v95 = &v96;
  v6 = sub_22EF83730(sub_22EFA8424, v94, v5);
  if (v6)
  {
    v96 = *(a2 + 112);
    MEMORY[0x28223BE20](v6);
    v91[2] = &v96;
    if (sub_22EF83730(sub_22EFA8424, v91, v5))
    {
      return 0;
    }
  }

  v7 = objc_opt_self();
  *&v96 = sub_22EF83154(*(a1 + 112), *(a1 + 120));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E400, &unk_22EFBD180);
  sub_22EF70E20(&qword_27DA9E408, &qword_27DA9E400, &unk_22EFBD180, MEMORY[0x277D83958]);
  sub_22EFB646C();

  v8 = sub_22EFB647C();

  v9 = [v7 isEMV_];

  if (v9)
  {
    *&v96 = sub_22EF83154(*(a2 + 112), *(a2 + 120));
    sub_22EFB646C();

    v10 = sub_22EFB647C();

    v11 = [v7 isEMV_];

    if (v11)
    {
      return 0;
    }
  }

  *&v96 = sub_22EF83154(*(a1 + 112), *(a1 + 120));
  sub_22EFB646C();

  v12 = sub_22EFB647C();

  v13 = [v7 isEMV_];

  if (v13)
  {
    v15 = *(a2 + 112);
    v14 = *(a2 + 120);
    v93 = a2;
    v16 = sub_22EFB648C();
    v18 = v17;
    sub_22EF70B68(v15, v14);
    v20 = sub_22EF7E630(v16, v18);
    v21 = v19;
    if (v14 >> 60 == 15)
    {
      if (v19 >> 60 == 15)
      {
        v22 = v15;
LABEL_47:
        v65 = v14;
LABEL_48:
        sub_22EF708B4(v22, v65);
        return 0;
      }

      goto LABEL_10;
    }

    if (v19 >> 60 == 15)
    {
LABEL_10:
      sub_22EF708B4(v15, v14);
      sub_22EF708B4(v20, v21);
      a2 = v93;
      goto LABEL_11;
    }

    sub_22EF70B68(v15, v14);
    sub_22EF70CB0(v20, v21);
    v92 = sub_22EF6E8C0(v15, v14, v20, v21);
    sub_22EF708B4(v20, v21);
    sub_22EF708B4(v20, v21);
    sub_22EF708C8(v15, v14);
    sub_22EF708B4(v15, v14);
    a2 = v93;
    if (v92)
    {
      return 0;
    }
  }

LABEL_11:
  *&v96 = sub_22EF83154(*(a2 + 112), *(a2 + 120));
  sub_22EFB646C();

  v23 = sub_22EFB647C();

  v24 = [v7 isEMV_];

  if (!v24)
  {
    goto LABEL_17;
  }

  v25 = *(a1 + 112);
  v14 = *(a1 + 120);
  v26 = sub_22EFB648C();
  v28 = v27;
  sub_22EF70B68(v25, v14);
  v30 = sub_22EF7E630(v26, v28);
  v31 = v29;
  if (v14 >> 60 == 15)
  {
    if (v29 >> 60 == 15)
    {
      goto LABEL_46;
    }

    goto LABEL_16;
  }

  if (v29 >> 60 == 15)
  {
LABEL_16:
    sub_22EF708B4(v25, v14);
    sub_22EF708B4(v30, v31);
    goto LABEL_17;
  }

  sub_22EF70B68(v25, v14);
  sub_22EF70CB0(v30, v31);
  v67 = sub_22EF6E8C0(v25, v14, v30, v31);
  sub_22EF708B4(v30, v31);
  sub_22EF708B4(v30, v31);
  sub_22EF708C8(v25, v14);
  sub_22EF708B4(v25, v14);
  if (v67)
  {
    return 0;
  }

LABEL_17:
  v25 = *(a1 + 112);
  v14 = *(a1 + 120);
  v32 = sub_22EFB648C();
  v34 = v33;
  sub_22EF70B68(v25, v14);
  v36 = sub_22EF7E630(v32, v34);
  v37 = v35;
  if (v14 >> 60 == 15)
  {
    if (v35 >> 60 != 15)
    {
      goto LABEL_28;
    }

    sub_22EF708B4(v25, v14);
  }

  else
  {
    if (v35 >> 60 == 15)
    {
      goto LABEL_28;
    }

    sub_22EF70B68(v25, v14);
    sub_22EF70CB0(v36, v37);
    v38 = sub_22EF6E8C0(v25, v14, v36, v37);
    sub_22EF708B4(v36, v37);
    sub_22EF708B4(v36, v37);
    sub_22EF708C8(v25, v14);
    sub_22EF708B4(v25, v14);
    if (!v38)
    {
      goto LABEL_29;
    }
  }

  v25 = *(a2 + 112);
  v14 = *(a2 + 120);
  v39 = sub_22EFB648C();
  v41 = v40;
  sub_22EF70B68(v25, v14);
  v36 = sub_22EF7E630(v39, v41);
  v37 = v42;
  if (v14 >> 60 == 15)
  {
    if (v42 >> 60 == 15)
    {
      goto LABEL_46;
    }

    goto LABEL_28;
  }

  if (v42 >> 60 == 15)
  {
LABEL_28:
    sub_22EF708B4(v25, v14);
    sub_22EF708B4(v36, v37);
    goto LABEL_29;
  }

  sub_22EF70B68(v25, v14);
  sub_22EF70CB0(v36, v37);
  v87 = sub_22EF6E8C0(v25, v14, v36, v37);
  sub_22EF708B4(v36, v37);
  sub_22EF708B4(v36, v37);
  sub_22EF708C8(v25, v14);
  sub_22EF708B4(v25, v14);
  if (v87)
  {
    return 0;
  }

LABEL_29:
  v25 = *(a2 + 112);
  v14 = *(a2 + 120);
  v43 = sub_22EFB648C();
  v45 = v44;
  sub_22EF70B68(v25, v14);
  v47 = sub_22EF7E630(v43, v45);
  v48 = v46;
  if (v14 >> 60 == 15)
  {
    if (v46 >> 60 != 15)
    {
      goto LABEL_38;
    }

    sub_22EF708B4(v25, v14);
  }

  else
  {
    if (v46 >> 60 == 15)
    {
      goto LABEL_38;
    }

    sub_22EF70B68(v25, v14);
    sub_22EF70CB0(v47, v48);
    v49 = sub_22EF6E8C0(v25, v14, v47, v48);
    sub_22EF708B4(v47, v48);
    sub_22EF708B4(v47, v48);
    sub_22EF708C8(v25, v14);
    sub_22EF708B4(v25, v14);
    if (!v49)
    {
      goto LABEL_39;
    }
  }

  v25 = *(a1 + 112);
  v14 = *(a1 + 120);
  v50 = sub_22EFB648C();
  v52 = v51;
  sub_22EF70B68(v25, v14);
  v47 = sub_22EF7E630(v50, v52);
  v48 = v53;
  if (v14 >> 60 == 15)
  {
    if (v53 >> 60 == 15)
    {
      goto LABEL_46;
    }

    goto LABEL_38;
  }

  if (v53 >> 60 == 15)
  {
LABEL_38:
    sub_22EF708B4(v25, v14);
    sub_22EF708B4(v47, v48);
    goto LABEL_39;
  }

  sub_22EF70B68(v25, v14);
  sub_22EF70CB0(v47, v48);
  v88 = sub_22EF6E8C0(v25, v14, v47, v48);
  sub_22EF708B4(v47, v48);
  sub_22EF708B4(v47, v48);
  sub_22EF708C8(v25, v14);
  sub_22EF708B4(v25, v14);
  if (v88)
  {
    return 0;
  }

LABEL_39:
  v25 = *(a1 + 112);
  v14 = *(a1 + 120);
  v54 = sub_22EFB648C();
  v56 = v55;
  sub_22EF70B68(v25, v14);
  v58 = sub_22EF7E630(v54, v56);
  v59 = v57;
  if (v14 >> 60 == 15)
  {
    if (v57 >> 60 != 15)
    {
      goto LABEL_53;
    }

    sub_22EF708B4(v25, v14);
  }

  else
  {
    if (v57 >> 60 == 15)
    {
      goto LABEL_53;
    }

    sub_22EF70B68(v25, v14);
    sub_22EF70CB0(v58, v59);
    v60 = sub_22EF6E8C0(v25, v14, v58, v59);
    sub_22EF708B4(v58, v59);
    sub_22EF708B4(v58, v59);
    sub_22EF708C8(v25, v14);
    sub_22EF708B4(v25, v14);
    if (!v60)
    {
      goto LABEL_54;
    }
  }

  v25 = *(a2 + 112);
  v14 = *(a2 + 120);
  v61 = sub_22EFB648C();
  v63 = v62;
  sub_22EF70B68(v25, v14);
  v58 = sub_22EF7E630(v61, v63);
  v59 = v64;
  if (v14 >> 60 == 15)
  {
    if (v64 >> 60 == 15)
    {
LABEL_46:
      v22 = v25;
      goto LABEL_47;
    }

    goto LABEL_53;
  }

  if (v64 >> 60 == 15)
  {
LABEL_53:
    sub_22EF708B4(v25, v14);
    sub_22EF708B4(v58, v59);
    goto LABEL_54;
  }

  sub_22EF70B68(v25, v14);
  sub_22EF70CB0(v58, v59);
  v89 = sub_22EF6E8C0(v25, v14, v58, v59);
  sub_22EF708B4(v58, v59);
  sub_22EF708B4(v58, v59);
  sub_22EF708C8(v25, v14);
  sub_22EF708B4(v25, v14);
  if (v89)
  {
    return 0;
  }

LABEL_54:
  v69 = *(a2 + 112);
  v68 = *(a2 + 120);
  v70 = sub_22EFB648C();
  v72 = v71;
  sub_22EF70B68(v69, v68);
  v74 = sub_22EF7E630(v70, v72);
  v75 = v73;
  if (v68 >> 60 != 15)
  {
    if (v73 >> 60 != 15)
    {
      sub_22EF70B68(v69, v68);
      sub_22EF70CB0(v74, v75);
      v78 = sub_22EF6E8C0(v69, v68, v74, v75);
      sub_22EF708B4(v74, v75);
      sub_22EF708B4(v74, v75);
      sub_22EF708C8(v69, v68);
      sub_22EF708B4(v69, v68);
      if (!v78)
      {
        return 1;
      }

      goto LABEL_60;
    }

LABEL_58:
    sub_22EF708B4(v69, v68);
    v76 = v74;
    v77 = v75;
LABEL_65:
    sub_22EF708B4(v76, v77);
    return 1;
  }

  if (v73 >> 60 != 15)
  {
    goto LABEL_58;
  }

  sub_22EF708B4(v69, v68);
LABEL_60:
  v80 = *(a1 + 112);
  v79 = *(a1 + 120);
  v81 = sub_22EFB648C();
  v83 = v82;
  sub_22EF70B68(v80, v79);
  v85 = sub_22EF7E630(v81, v83);
  v86 = v84;
  if (v79 >> 60 == 15)
  {
    if (v84 >> 60 == 15)
    {
      v22 = v80;
      v65 = v79;
      goto LABEL_48;
    }

    goto LABEL_64;
  }

  if (v84 >> 60 == 15)
  {
LABEL_64:
    sub_22EF708B4(v80, v79);
    v76 = v85;
    v77 = v86;
    goto LABEL_65;
  }

  sub_22EF70B68(v80, v79);
  sub_22EF70CB0(v85, v86);
  v90 = sub_22EF6E8C0(v80, v79, v85, v86);
  sub_22EF708B4(v85, v86);
  sub_22EF708B4(v85, v86);
  sub_22EF708C8(v80, v79);
  sub_22EF708B4(v80, v79);
  return !v90;
}

uint64_t sub_22EF89E34(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = sub_22EFB622C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v20[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v14 = &v20[-v13];
  sub_22EF70B68(a1, a2);
  sub_22EFB623C();
  sub_22EF70B68(a3, a4);
  sub_22EFB623C();
  sub_22EFA80DC(&qword_27DA9E480, MEMORY[0x277CC92E0], MEMORY[0x277CC92E8]);
  while (1)
  {
    sub_22EFB661C();
    if (v20[15])
    {
      v18 = *(v9 + 8);
      v18(v11, v8);
      sub_22EFB661C();
      v18(v14, v8);
      return v20[13];
    }

    v15 = v20[14];
    sub_22EFB661C();
    if (v20[11])
    {
      break;
    }

    if (v15 != v20[10])
    {
      v16 = *(v9 + 8);
      v16(v11, v8);
      v16(v14, v8);
      return 0;
    }
  }

  v19 = *(v9 + 8);
  v19(v11, v8);
  v19(v14, v8);
  return 1;
}

uint64_t sub_22EF8A0E4(uint64_t a1, int a2)
{
  LODWORD(v4) = a2;
  v209 = *MEMORY[0x277D85DE8];

  *&v196 = sub_22EFA0A40(v5);
  sub_22EF8DBE4(&v196);
  v192 = v2;
  if (v2)
  {
    goto LABEL_274;
  }

  LODWORD(v6) = v196 < 0 || (v196 & 0x4000000000000000) != 0;
  *&v184 = v196;
  if (v6 == 1)
  {
    goto LABEL_268;
  }

  v189 = *(v196 + 16);
LABEL_7:
  if ((v189 * 18) >> 64 != (18 * v189) >> 63)
  {
    __break(1u);
LABEL_270:
    __break(1u);
LABEL_271:
    __break(1u);
LABEL_272:
    __break(1u);
LABEL_273:
    __break(1u);
  }

  v207 = sub_22EF7E58C(18 * v189);
  v208 = v7;
  v193 = MEMORY[0x277D84FA0];
  v206 = xmmword_22EFBB8D0;
  if (v6)
  {
    v6 = v184;
    v8 = sub_22EFB67CC();
  }

  else
  {
    v6 = v184;
    v8 = *(v184 + 16);
  }

  v163 = v4;
  v182 = v6 & 0xC000000000000001;
  v4 = v8;
  if (v8)
  {
    v9 = MEMORY[0x277D84F90];
    v10 = 0;
    while (1)
    {
      if (v182)
      {
        v3 = MEMORY[0x2318FB480](v10, v184);
        v6 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          goto LABEL_238;
        }
      }

      else
      {
        if (v10 >= *(v184 + 16))
        {
          goto LABEL_239;
        }

        v3 = *(v184 + 8 * v10 + 32);

        v6 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
LABEL_238:
          __break(1u);
LABEL_239:
          __break(1u);
LABEL_240:
          __break(1u);
LABEL_241:
          __break(1u);
LABEL_242:
          __break(1u);
LABEL_243:
          __break(1u);
LABEL_244:
          __break(1u);
LABEL_245:
          __break(1u);
LABEL_246:
          __break(1u);
LABEL_247:
          __break(1u);
LABEL_248:
          __break(1u);
LABEL_249:
          __break(1u);
LABEL_250:
          __break(1u);
LABEL_251:
          __break(1u);
LABEL_252:
          __break(1u);
LABEL_253:
          __break(1u);
LABEL_254:
          __break(1u);
LABEL_255:
          __break(1u);
LABEL_256:
          __break(1u);
LABEL_257:
          __break(1u);
LABEL_258:
          __break(1u);
LABEL_259:
          __break(1u);
LABEL_260:
          __break(1u);
LABEL_261:
          __break(1u);
LABEL_262:
          __break(1u);
LABEL_263:
          __break(1u);
LABEL_264:
          __break(1u);
LABEL_265:
          __break(1u);
LABEL_266:
          __break(1u);
LABEL_267:
          __break(1u);
LABEL_268:
          v189 = sub_22EFB67CC();
          goto LABEL_7;
        }
      }

      v11 = *(v3 + 80);
      v12 = *(v3 + 88);
      v13 = *(v3 + 96);
      sub_22EFA0DA0(v11, v12, v13);

      if (v11 >= 3)
      {

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_22EF7E30C(0, v9[2] + 1, 1, v9);
        }

        v3 = v9[2];
        v14 = v9[3];
        if (v3 >= v14 >> 1)
        {
          v9 = sub_22EF7E30C((v14 > 1), v3 + 1, 1, v9);
        }

        v9[2] = v3 + 1;
        v9[v3 + 4] = v11;
        if (v6 == v4)
        {
          goto LABEL_29;
        }

        v10 = v6;
      }

      else
      {
        sub_22EFA0DF0(v11, v12, v13);
        ++v10;
        if (v6 == v4)
        {
          goto LABEL_29;
        }
      }
    }
  }

  v9 = MEMORY[0x277D84F90];
LABEL_29:
  v6 = v9[2];
  v15 = MEMORY[0x277D84F90];
  v181 = v4;
  if (v6)
  {
    v16 = 0;
    v191 = v9 + 4;
    while (v16 < v9[2])
    {
      v3 = v191[v16];
      v17 = *(v3 + 16);
      v4 = *(v15 + 16);
      v18 = v4 + v17;
      if (__OFADD__(v4, v17))
      {
        goto LABEL_241;
      }

      v19 = v9;

      v20 = v15;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v18 > *(v15 + 24) >> 1)
      {
        if (v4 <= v18)
        {
          v22 = v4 + v17;
        }

        else
        {
          v22 = v4;
        }

        v20 = sub_22EF7E200(isUniquelyReferenced_nonNull_native, v22, 1, v15);
      }

      v4 = v181;
      if (*(v3 + 16))
      {
        if ((*(v20 + 3) >> 1) - *(v20 + 2) < v17)
        {
          goto LABEL_243;
        }

        swift_arrayInitWithCopy();

        v15 = v20;
        v9 = v19;
        if (v17)
        {
          v23 = *(v15 + 16);
          v24 = __OFADD__(v23, v17);
          v25 = v23 + v17;
          if (v24)
          {
            goto LABEL_253;
          }

          *(v15 + 16) = v25;
        }
      }

      else
      {

        v15 = v20;
        v9 = v19;
        if (v17)
        {
          goto LABEL_242;
        }
      }

      if (v6 == ++v16)
      {
        goto LABEL_46;
      }
    }

    goto LABEL_240;
  }

LABEL_46:
  v190 = v15;

  v26 = sub_22EFA0E5C();
  v27 = MEMORY[0x2318FB1B0](v189, MEMORY[0x277CC9318], MEMORY[0x277D84C58], v26);
  v28 = v4;
  v4 = v27;
  if (!v28)
  {

    v166 = 0;
    v171 = 0x100000000;
    v164 = 0;
    v165 = 1;
    v167 = 1;
    v168 = 1;
    v6 = v192;
    goto LABEL_198;
  }

  v171 = 0x100000000;
  v164 = 0;
  v166 = 0;
  v29 = 0;
  v169 = 0x800000022EFC6B10;
  v170 = v184 + 32;
  *&v186 = v195 + 2;
  v187 = v194 + 2;
  v183 = xmmword_22EFBB8C0;
  v165 = 1;
  v167 = 1;
  v168 = 1;
  v6 = v192;
  while (1)
  {
    if (v182)
    {
      v191 = MEMORY[0x2318FB480](v29, v184);
      v24 = __OFADD__(v29++, 1);
      if (v24)
      {
        goto LABEL_252;
      }
    }

    else
    {
      if (v29 >= *(v184 + 16))
      {
        goto LABEL_261;
      }

      v191 = *(v170 + 8 * v29);

      v24 = __OFADD__(v29++, 1);
      if (v24)
      {
        goto LABEL_252;
      }
    }

    v30 = *(v4 + 16);
    v179 = v29;
    if (v30)
    {
      v31 = v191[4];
      v32 = v191[5];
      sub_22EF70B68(v31, v32);
      v33 = sub_22EFA9434(v31, v32);
      if (v34)
      {
        v180 = *(*(v4 + 56) + 2 * v33);
        sub_22EF708C8(v31, v32);
        v35 = MEMORY[0x277D84F90];
        goto LABEL_101;
      }

      sub_22EF708C8(v31, v32);
    }

    v36 = v208 >> 62;
    if ((v208 >> 62) > 1)
    {
      if (v36 != 2)
      {
        v37 = 0;
        goto LABEL_73;
      }

      v39 = *(v207 + 16);
      v38 = *(v207 + 24);
      v37 = v38 - v39;
      if (__OFSUB__(v38, v39))
      {
        goto LABEL_264;
      }
    }

    else
    {
      if (!v36)
      {
        v37 = BYTE6(v208);
        goto LABEL_73;
      }

      if (__OFSUB__(HIDWORD(v207), v207))
      {
        goto LABEL_263;
      }

      v37 = HIDWORD(v207) - v207;
    }

    if ((v37 & 0x8000000000000000) != 0)
    {
      goto LABEL_256;
    }

    if (v37 >> 16)
    {
      goto LABEL_257;
    }

LABEL_73:
    v40 = v191[4];
    v41 = v191[5];
    v42 = v41 >> 62;
    if ((v41 >> 62) > 1)
    {
      if (v42 != 2)
      {
        LOBYTE(v3) = 0;
        goto LABEL_86;
      }

      v45 = v40 + 16;
      v43 = *(v40 + 16);
      v44 = *(v45 + 8);
      v3 = v44 - v43;
      if (__OFSUB__(v44, v43))
      {
        goto LABEL_266;
      }
    }

    else
    {
      if (!v42)
      {
        v3 = HIWORD(v41);
        goto LABEL_86;
      }

      v24 = __OFSUB__(HIDWORD(v40), v40);
      v46 = HIDWORD(v40) - v40;
      if (v24)
      {
        goto LABEL_265;
      }

      v3 = v46;
    }

    if ((v3 & 0x8000000000000000) != 0)
    {
      goto LABEL_258;
    }

    if (v3 > 0xFF)
    {
      goto LABEL_259;
    }

LABEL_86:
    v180 = v37;
    if (v36 > 1)
    {
      v48 = v4;
      v47 = v6;
    }

    else
    {
      v47 = v6;
      v48 = v4;
    }

    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E5F8, &unk_22EFBD1A0);
    *(&v197 + 1) = v35;
    v49 = sub_22EF70E20(&qword_281477D58, &qword_27DA9E5F8, &unk_22EFBD1A0, MEMORY[0x277CC9EF0]);
    *&v198 = v49;
    LOBYTE(v196) = v3;
    LOBYTE(v194[0]) = *__swift_project_boxed_opaque_existential_1(&v196, v35);
    sub_22EFB616C();
    __swift_destroy_boxed_opaque_existential_0Tm(&v196);
    v50 = v191;
    v51 = v191[4];
    v52 = v191[5];
    sub_22EF70B68(v51, v52);
    sub_22EFB61FC();
    sub_22EF708C8(v51, v52);
    v53 = sub_22EF8BB38(v50);
    v6 = v47;
    if (v47)
    {

      sub_22EF708C8(v206, *(&v206 + 1));
      goto LABEL_216;
    }

    *(&v197 + 1) = v35;
    *&v198 = v49;
    LOBYTE(v196) = v53;
    LOBYTE(v194[0]) = *__swift_project_boxed_opaque_existential_1(&v196, v35);
    sub_22EFB616C();
    __swift_destroy_boxed_opaque_existential_0Tm(&v196);
    v32 = v191[4];
    v54 = v191[5];
    sub_22EF70B68(v32, v54);
    v3 = swift_isUniquelyReferenced_nonNull_native();
    *&v196 = v48;
    LODWORD(v4) = v48;
    v55 = sub_22EFA9434(v32, v54);
    v57 = *(v48 + 16);
    v58 = (v56 & 1) == 0;
    v24 = __OFADD__(v57, v58);
    v59 = v57 + v58;
    if (v24)
    {
      goto LABEL_260;
    }

    v60 = v56;
    if (*(v48 + 24) < v59)
    {
      sub_22EF755E4(v59, v3);
      v55 = sub_22EFA9434(v32, v54);
      if ((v60 & 1) != (v61 & 1))
      {
        sub_22EFB687C();
        __break(1u);
LABEL_274:

        __break(1u);
        return result;
      }

LABEL_95:
      v4 = v196;
      if ((v60 & 1) == 0)
      {
        goto LABEL_98;
      }

      goto LABEL_96;
    }

    if (v3)
    {
      goto LABEL_95;
    }

    v3 = 0;
    v62 = v55;
    sub_22EF761AC();
    v55 = v62;
    v6 = 0;
    v4 = v196;
    if ((v60 & 1) == 0)
    {
LABEL_98:
      *(v4 + 8 * (v55 >> 6) + 64) |= 1 << v55;
      v63 = (*(v4 + 48) + 16 * v55);
      *v63 = v32;
      v63[1] = v54;
      *(*(v4 + 56) + 2 * v55) = v180;
      v64 = *(v4 + 16);
      v24 = __OFADD__(v64, 1);
      v65 = v64 + 1;
      if (v24)
      {
        goto LABEL_262;
      }

      *(v4 + 16) = v65;
      goto LABEL_100;
    }

LABEL_96:
    *(*(v4 + 56) + 2 * v55) = v180;
    sub_22EF708C8(v32, v54);
LABEL_100:
    v35 = MEMORY[0x277D84F90];
    v29 = v179;
LABEL_101:
    v66 = v191[10];
    if (!v66)
    {

      v167 = 0;
      LODWORD(v166) = v180;
      goto LABEL_49;
    }

    if (v66 == 1)
    {
      break;
    }

    if (v66 != 2)
    {
      v172 = v4;
      v192 = v6;
      v70 = v191[11];
      v71 = v191[12];
      v72 = *(v70 + 16);
      v177 = v66;

      v188 = v71;

      v189 = v70;
      if (v72)
      {
        v74 = (v70 + 32);
        v176 = v72 - 1;
        *&v185 = MEMORY[0x277D84F90];
        v75 = 0;
        while (v75 < *(v70 + 16))
        {
          v32 = &v162;
          v35 = v75 + 1;
          v196 = *&v74[4 * v75];
          *&v76 = MEMORY[0x28223BE20](v73);
          v161[2] = &v196;
          v77 = v76;
          v3 = v78;
          sub_22EF70B68(v76, v78);
          v79 = v192;
          v80 = sub_22EF83730(sub_22EFA0EB0, v161, v190);
          v192 = v79;
          if (v80)
          {
            v73 = sub_22EF708C8(v77, v3);
            ++v75;
            v70 = v189;
            if (v72 == v35)
            {
              goto LABEL_126;
            }
          }

          else
          {
            v81 = v185;
            v73 = swift_isUniquelyReferenced_nonNull_native();
            *&v194[0] = v81;
            if ((v73 & 1) == 0)
            {
              v73 = sub_22EF9AB68(0, *(v81 + 16) + 1, 1);
              v81 = *&v194[0];
            }

            v32 = *(v81 + 16);
            v82 = *(v81 + 24);
            v83 = v32 + 1;
            if (v32 >= v82 >> 1)
            {
              *&v185 = v32 + 1;
              v73 = sub_22EF9AB68((v82 > 1), v32 + 1, 1);
              v83 = v185;
              v81 = *&v194[0];
            }

            *(v81 + 16) = v83;
            *&v185 = v81;
            v84 = v81 + 16 * v32;
            *(v84 + 32) = v77;
            *(v84 + 40) = v3;
            v70 = v189;
            if (v176 == v75)
            {
              goto LABEL_126;
            }

            ++v75;
          }
        }

        __break(1u);
        goto LABEL_223;
      }

      *&v185 = MEMORY[0x277D84F90];
LABEL_126:
      *&v196 = v177;

      sub_22EF9B6DC(v185);
      v87 = *(v196 + 16);
      v88 = bswap32(v180);
      LODWORD(v175) = v88;
      v176 = v196;
      if (!v87)
      {
LABEL_153:

        v107 = v188;
        v108 = *(v188 + 16);
        if (v108)
        {
          v109 = WORD1(v175);
          v110 = 32;
          do
          {
            v3 = *(v107 + v110);
            v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E5F8, &unk_22EFBD1A0);
            *(&v197 + 1) = v111;
            *&v198 = sub_22EF70E20(&qword_281477D58, &qword_27DA9E5F8, &unk_22EFBD1A0, MEMORY[0x277CC9EF0]);
            LOBYTE(v196) = v3;
            LOBYTE(v194[0]) = *__swift_project_boxed_opaque_existential_1(&v196, v111);
            sub_22EFB616C();
            __swift_destroy_boxed_opaque_existential_0Tm(&v196);
            LOWORD(v194[0]) = v109;
            *(&v197 + 1) = MEMORY[0x277D838B0];
            *&v198 = MEMORY[0x277CC9C18];
            *&v196 = v194;
            *(&v196 + 1) = v187;
            __swift_project_boxed_opaque_existential_1(&v196, MEMORY[0x277D838B0]);
            sub_22EFB617C();
            __swift_destroy_boxed_opaque_existential_0Tm(&v196);
            v107 = v188;
            ++v110;
            --v108;
          }

          while (v108);
        }

        v6 = v192;
        v4 = v172;
        v29 = v179;
        goto LABEL_49;
      }

      v89 = HIWORD(v88);
      v90 = (v196 + 40);
      LODWORD(v180) = HIWORD(v88);
      while (2)
      {
        v3 = *(v90 - 1);
        v91 = *v90;
        LOWORD(v195[0]) = v89;
        *(&v197 + 1) = MEMORY[0x277D838B0];
        *&v198 = MEMORY[0x277CC9C18];
        *&v196 = v195;
        *(&v196 + 1) = v186;
        v92 = __swift_project_boxed_opaque_existential_1(&v196, MEMORY[0x277D838B0]);
        v4 = *v92;
        if (*v92)
        {
          v93 = v92[1];
          v94 = v93 - v4;
          if (v93 == v4)
          {
            sub_22EF70B68(v3, v91);
            v4 = 0;
            goto LABEL_135;
          }

          if (v94 <= 14)
          {
            *(v194 + 6) = 0;
            *&v194[0] = 0;
            BYTE14(v194[0]) = v93 - v4;
            memcpy(v194, v4, v94);
            v4 = *&v194[0];
            v95 = v178 & 0xF00000000000000 | DWORD2(v194[0]) | ((WORD6(v194[0]) | (BYTE14(v194[0]) << 16)) << 32);
            sub_22EF70B68(v3, v91);
            v178 = v95;
          }

          else
          {
            sub_22EFB607C();
            swift_allocObject();
            sub_22EF70B68(v3, v91);
            v104 = sub_22EFB602C();
            v105 = v104;
            if (v94 >= 0x7FFFFFFF)
            {
              sub_22EFB614C();
              v4 = swift_allocObject();
              *(v4 + 16) = 0;
              *(v4 + 24) = v94;
              v95 = v105 | 0x8000000000000000;
            }

            else
            {
              v4 = v94 << 32;
              v95 = v104 | 0x4000000000000000;
            }
          }
        }

        else
        {
          sub_22EF70B68(v3, v91);
LABEL_135:
          v95 = 0xC000000000000000;
        }

        __swift_destroy_boxed_opaque_existential_0Tm(&v196);
        *&v194[0] = v3;
        *(&v194[0] + 1) = v91;
        *(&v197 + 1) = MEMORY[0x277CC9318];
        *&v198 = MEMORY[0x277CC9300];
        *&v196 = v4;
        *(&v196 + 1) = v95;
        v96 = __swift_project_boxed_opaque_existential_1(&v196, MEMORY[0x277CC9318]);
        v97 = *v96;
        v98 = v96[1];
        v99 = v98 >> 62;
        if ((v98 >> 62) > 1)
        {
          if (v99 != 2)
          {
            memset(v195, 0, 14);
            sub_22EF70B68(v3, v91);
            goto LABEL_129;
          }

          *&v185 = v87;
          v100 = v91;
          v102 = *(v97 + 16);
          v101 = *(v97 + 24);
          v6 = v3;
          v103 = v3;
          v3 = v100;
          sub_22EF70B68(v103, v100);
          LODWORD(v4) = v98;
          if (sub_22EFB603C())
          {
            LODWORD(v4) = v98;
            if (__OFSUB__(v102, sub_22EFB605C()))
            {
              goto LABEL_254;
            }
          }

          if (__OFSUB__(v101, v102))
          {
            goto LABEL_245;
          }
        }

        else
        {
          if (!v99)
          {
            v195[0] = *v96;
            LOWORD(v195[1]) = v98;
            BYTE2(v195[1]) = BYTE2(v98);
            BYTE3(v195[1]) = BYTE3(v98);
            BYTE4(v195[1]) = BYTE4(v98);
            BYTE5(v195[1]) = BYTE5(v98);
            sub_22EF70B68(v3, v91);
LABEL_129:
            sub_22EFB617C();
LABEL_130:
            v90 += 2;
            __swift_destroy_boxed_opaque_existential_0Tm(&v196);
            sub_22EF9BDD0(&v196, *&v194[0], *(&v194[0] + 1));
            sub_22EF708C8(v3, v91);
            sub_22EF708C8(v196, *(&v196 + 1));
            if (!--v87)
            {
              goto LABEL_153;
            }

            continue;
          }

          *&v185 = v87;
          v6 = v3;
          v3 = v91;
          v106 = v97;
          if (v97 >> 32 < v97)
          {
            goto LABEL_244;
          }

          sub_22EF70B68(v6, v91);
          if (sub_22EFB603C())
          {
            LODWORD(v4) = v98;
            if (__OFSUB__(v106, sub_22EFB605C()))
            {
              goto LABEL_255;
            }
          }
        }

        break;
      }

      sub_22EFB604C();
      sub_22EFB617C();
      LOWORD(v89) = v180;
      v91 = v3;
      v3 = v6;
      v87 = v185;
      goto LABEL_130;
    }

    v168 = 0;
    HIDWORD(v166) = v180;
LABEL_49:
    if (v29 == v181)
    {

LABEL_198:
      v35 = v207;
      v32 = v208;
      v135 = v208 >> 62;
      if ((v208 >> 62) > 1)
      {
        if (v135 != 2 || *(v207 + 16) == *(v207 + 24))
        {
          goto LABEL_211;
        }
      }

      else if (v135)
      {
        if (v207 == v207 >> 32)
        {
LABEL_211:

          v35 = sub_22EFAB164(&unk_2843B6D10);
          sub_22EF708C8(v206, *(&v206 + 1));
          goto LABEL_216;
        }
      }

      else if ((v208 & 0xFF000000000000) == 0)
      {
        goto LABEL_211;
      }

      v136 = sub_22EF973B0(v193);

      *&v196 = v136;
      sub_22EF8DB78(&v196);
      if (v6)
      {

        sub_22EF708C8(v206, *(&v206 + 1));
        goto LABEL_216;
      }

      v192 = sub_22EFA8518(v196);
      v3 = v137;
      v138 = [objc_opt_self() getExpressModeSettings];
      v139 = sub_22EFB642C();

      *&v194[0] = sub_22EFB648C();
      *(&v194[0] + 1) = v140;
      sub_22EFB668C();
      if (*(v139 + 16) && (v141 = sub_22EFA94F4(&v196), (v142 & 1) != 0))
      {
        sub_22EF76370(*(v139 + 56) + 32 * v141, v194);
        sub_22EFA0ECC(&v196);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E620, &qword_22EFBCD50);
        if (swift_dynamicCast())
        {
          v143 = v195[0];
LABEL_214:
          *&v196 = v143;

          sub_22EF8DB78(&v196);
          v72 = 0;

          v145 = sub_22EFA8518(v196);
          v189 = v146;
          v190 = v145;
          v147 = sub_22EFAB164(&unk_2843B6D38);
          v187 = v148;
          v188 = v147;
          if (v163)
          {
            v149 = 3840;
          }

          else
          {
            v149 = 3328;
          }

          LODWORD(v185) = v149;
          v74 = retryWithBackoff__backoffTable;
          if (v167)
          {
            sub_22EF70B68(v35, v32);
            v150 = xmmword_22EFBB8E0;
LABEL_224:
            v186 = v150;
            if (v165)
            {
              v151 = *(v74 + 142);
            }

            else
            {
              LOWORD(v194[0]) = bswap32(v164) >> 16;
              sub_22EF743A4(v194, v194 + 2, &v196);
              v151 = v196;
            }

            v184 = v151;
            v191 = v3;
            if ((v171 & 0x100000000) != 0)
            {
              *&v183 = 0;
              v152 = 0xF000000000000000;
            }

            else
            {
              LOWORD(v194[0]) = bswap32(v171) >> 16;
              sub_22EF743A4(v194, v194 + 2, &v196);
              v152 = *(&v196 + 1);
              *&v183 = v196;
            }

            v4 = *(&v206 + 1);
            v115 = v206;
            LOWORD(v194[0]) = v185;
            sub_22EF70B68(v206, *(&v206 + 1));
            sub_22EF743A4(v194, v194 + 2, &v196);
            v153 = v196;
            if (v168)
            {
              v154 = xmmword_22EFBB8E0;
            }

            else
            {
              LOWORD(v194[0]) = bswap32(HIDWORD(v166)) >> 16;
              v185 = v196;
              sub_22EF743A4(v194, v194 + 2, &v196);
              v153 = v185;
              v154 = v196;
            }

            *&v196 = v35;
            *(&v196 + 1) = v32;
            v197 = v186;
            v198 = v184;
            *&v199 = v183;
            *(&v199 + 1) = v152;
            *&v200 = v192;
            *(&v200 + 1) = v191;
            *&v201 = v115;
            *(&v201 + 1) = v4;
            v202 = v153;
            v203 = v154;
            *&v204 = v190;
            *(&v204 + 1) = v189;
            *&v205 = v188;
            *(&v205 + 1) = v187;
            v195[3] = &type metadata for SEEMConfiguration;
            v195[4] = &off_2843B8428;
            v155 = swift_allocObject();
            v195[0] = v155;
            v156 = v203;
            v155[7] = v202;
            v155[8] = v156;
            v157 = v205;
            v155[9] = v204;
            v155[10] = v157;
            v158 = v199;
            v155[3] = v198;
            v155[4] = v158;
            v159 = v201;
            v155[5] = v200;
            v155[6] = v159;
            v160 = v197;
            v155[1] = v196;
            v155[2] = v160;
            sub_22EFA0F20(&v196, v194);
            v113 = sub_22EFACDD8(v195);
            if (!v72)
            {
              goto LABEL_237;
            }

            sub_22EF708C8(v115, v4);
            sub_22EFA0F7C(&v196);
            __swift_destroy_boxed_opaque_existential_0Tm(v195);
            goto LABEL_216;
          }

LABEL_223:
          LOWORD(v194[0]) = bswap32(v166) >> 16;
          sub_22EF70B68(v35, v32);
          sub_22EF743A4(v194, v194 + 2, &v196);
          v150 = v196;
          goto LABEL_224;
        }
      }

      else
      {

        sub_22EFA0ECC(&v196);
      }

      v143 = MEMORY[0x277D84F90];
      goto LABEL_214;
    }
  }

  v172 = v4;
  v192 = v6;
  v6 = v191[14];
  v67 = v191[15];
  v68 = v67 >> 62;
  v177 = HIDWORD(v6);
  if ((v67 >> 62) > 1)
  {
    if (v68 == 2)
    {
      v86 = *(v6 + 16);
      v85 = *(v6 + 24);
      v69 = v85 - v86;
      if (__OFSUB__(v85, v86))
      {
        goto LABEL_271;
      }

      if (v69)
      {
        goto LABEL_159;
      }
    }

    goto LABEL_186;
  }

  if (!v68)
  {
    v69 = BYTE6(v67);
    if (BYTE6(v67))
    {
      goto LABEL_159;
    }

LABEL_186:
    *&v196 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E400, &unk_22EFBD180);
    sub_22EF70E20(&qword_27DA9E408, &qword_27DA9E400, &unk_22EFBD180, MEMORY[0x277D83958]);
    v129 = sub_22EFB646C();
    v131 = v130;

    v6 = v192;
    v4 = v172;
    if (v129 == 0xD000000000000014 && v169 == v131)
    {

      v29 = v179;
      v171 = v180;
    }

    else
    {
      v132 = sub_22EFB684C();

      v29 = v179;
      if (v132)
      {
        v133 = v180;
      }

      else
      {
        v133 = v171;
      }

      LODWORD(v171) = v133;
      HIDWORD(v171) &= v132 ^ 1;
      if (v132)
      {
        v134 = v164;
      }

      else
      {
        v134 = v180;
      }

      v164 = v134;
      v165 &= v132;
    }

    goto LABEL_49;
  }

  v112 = v177 - v6;
  if (__OFSUB__(v177, v6))
  {
    goto LABEL_270;
  }

  v69 = v112;
  if (!v112)
  {
    goto LABEL_186;
  }

LABEL_159:
  *&v194[0] = v35;
  v4 = v194;
  v113 = sub_22EF9AAC8(0, v69 & ~(v69 >> 63), 0);
  v176 = v6;
  if (v68)
  {
    if (v68 == 2)
    {
      v114 = *(v6 + 16);
    }

    else
    {
      v114 = v176;
    }
  }

  else
  {
    v114 = 0;
  }

  v189 = v114;
  if (v69 < 0)
  {
    goto LABEL_267;
  }

  v115 = 0;
  v35 = *&v194[0];
  v174 = v6 >> 32;
  v175 = BYTE6(v67);
  v173 = &v196 + v189;
  v188 = v67 >> 62;
  *&v185 = v69;
  while (2)
  {
    if (v115 < v69)
    {
      v3 = v115 + 1;
      if (__OFADD__(v115, 1))
      {
        goto LABEL_236;
      }

      v116 = v189 + v115;
      if (v68 == 2)
      {
        if (v116 < *(v6 + 16))
        {
          goto LABEL_247;
        }

        if (v116 >= *(v6 + 24))
        {
          goto LABEL_249;
        }

        v121 = sub_22EFB603C();
        if (!v121)
        {
          goto LABEL_273;
        }

        v118 = v121;
        LODWORD(v4) = v67;
        v122 = sub_22EFB605C();
        v120 = v116 - v122;
        if (__OFSUB__(v116, v122))
        {
          goto LABEL_251;
        }

LABEL_180:
        v4 = *(v118 + v120);
      }

      else
      {
        if (v68 == 1)
        {
          if (v116 < v176 || v116 >= v174)
          {
            goto LABEL_248;
          }

          v117 = sub_22EFB603C();
          if (!v117)
          {
            goto LABEL_272;
          }

          v118 = v117;
          LODWORD(v4) = v67;
          v119 = sub_22EFB605C();
          v120 = v116 - v119;
          if (__OFSUB__(v116, v119))
          {
            goto LABEL_250;
          }

          goto LABEL_180;
        }

        if (v116 >= v175)
        {
          goto LABEL_246;
        }

        LOWORD(v196) = v6;
        BYTE2(v196) = BYTE2(v6);
        BYTE3(v196) = BYTE3(v6);
        BYTE4(v196) = v177;
        BYTE5(v196) = BYTE5(v6);
        BYTE6(v196) = BYTE6(v6);
        BYTE7(v196) = HIBYTE(v6);
        WORD4(v196) = v67;
        BYTE10(v196) = BYTE2(v67);
        BYTE11(v196) = BYTE3(v67);
        BYTE12(v196) = BYTE4(v67);
        BYTE13(v196) = BYTE5(v67);
        v4 = v173[v115];
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E428, &unk_22EFBBC50);
      v123 = swift_allocObject();
      *(v123 + 16) = v183;
      *(v123 + 56) = MEMORY[0x277D84B78];
      *(v123 + 64) = MEMORY[0x277D84BC0];
      *(v123 + 32) = v4;
      v113 = sub_22EFB649C();
      *&v194[0] = v35;
      v126 = *(v35 + 16);
      v125 = *(v35 + 24);
      if (v126 >= v125 >> 1)
      {
        v4 = v194;
        v162 = v113;
        v128 = v124;
        sub_22EF9AAC8((v125 > 1), v126 + 1, 1);
        v124 = v128;
        v113 = v162;
        v35 = *&v194[0];
      }

      *(v35 + 16) = v126 + 1;
      v127 = v35 + 16 * v126;
      *(v127 + 32) = v113;
      *(v127 + 40) = v124;
      ++v115;
      v69 = v185;
      LODWORD(v68) = v188;
      if (v3 == v185)
      {
        goto LABEL_186;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_236:
  __break(1u);
LABEL_237:
  v35 = v113;
  sub_22EF708C8(v115, v4);
  sub_22EFA0F7C(&v196);
  __swift_destroy_boxed_opaque_existential_0Tm(v195);
LABEL_216:

  sub_22EF708C8(v207, v208);
  return v35;
}

uint64_t sub_22EF8B9E0(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  sub_22EF83154(*(*a1 + 32), *(*a1 + 40));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E400, &unk_22EFBD180);
  sub_22EF70E20(&qword_27DA9E408, &qword_27DA9E400, &unk_22EFBD180, MEMORY[0x277D83958]);
  v3 = sub_22EFB646C();
  v5 = v4;

  sub_22EF83154(*(v2 + 32), *(v2 + 40));
  v6 = sub_22EFB646C();
  v8 = v7;

  if (v3 == v6 && v5 == v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = sub_22EFB684C();
  }

  return v9 & 1;
}

uint64_t sub_22EF8BB38(uint64_t a1)
{
  v3 = *(a1 + 112);
  v4 = *(a1 + 120);
  v5 = sub_22EFB648C();
  result = sub_22EF7E630(v5, v6);
  if (v8 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    v10 = v8;
    v11 = sub_22EF6E8C0(v3, v4, result, v8);
    sub_22EF708B4(v9, v10);
    if (v11)
    {
      return 4;
    }

    v27[3] = v1;
    v12 = objc_opt_self();
    v27[0] = sub_22EF83154(*(a1 + 32), *(a1 + 40));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E400, &unk_22EFBD180);
    sub_22EF70E20(&qword_27DA9E408, &qword_27DA9E400, &unk_22EFBD180, MEMORY[0x277D83958]);
    sub_22EFB646C();

    v13 = sub_22EFB647C();

    LOBYTE(v12) = [v12 supportsStepUp_];

    if (v12)
    {
      return 5;
    }

    v14 = objc_opt_self();
    v27[0] = sub_22EF83154(*(a1 + 32), *(a1 + 40));
    sub_22EFB646C();

    v15 = sub_22EFB647C();

    LOBYTE(v14) = [v14 supportsStepUp_];

    if (v14)
    {
      return 5;
    }

    else
    {
      v16 = *(a1 + 80);
      v17 = v16 >= 3;
      v18 = 0x10301u >> (8 * v16);
      if (v17)
      {
        result = 2;
      }

      else
      {
        result = v18;
      }

      if (*(a1 + 177))
      {
        return result | 0xFFFFFF80;
      }

      v19 = result;
      v20 = sub_22EF8FCF4();
      if (!v20)
      {
        return v19;
      }

      v21 = v20;
      sub_22EF83154(*(a1 + 32), *(a1 + 40));
      v22 = sub_22EFB646C();
      v24 = v23;

      v27[0] = v22;
      v27[1] = v24;
      MEMORY[0x28223BE20](v25);
      v26[2] = v27;
      LOBYTE(v22) = sub_22EF837E0(sub_22EFA0E40, v26, v21);

      result = v19;
      if (v22)
      {
        return result | 0xFFFFFF80;
      }
    }
  }

  return result;
}

uint64_t sub_22EF8BE44(void *a1)
{
  v3 = v1;
  *(v1 + 177) = 0;
  sub_22EF76370(a1, &v190);
  sub_22EF70EBC(0, &qword_27DA9E028, 0x277CBEAC0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_22EF70EBC(0, &qword_27DA9E448, 0x277CCA9B8);
    v190 = 0;
    v191 = 0xE000000000000000;
    sub_22EFB66DC();

    v190 = 0xD00000000000002DLL;
    v191 = 0x800000022EFC6B70;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    swift_getDynamicType();
    v15 = sub_22EFB695C();
    MEMORY[0x2318FB260](v15);

    sub_22EF74470(v190, v191, 8, 0);
    swift_willThrow();
    goto LABEL_6;
  }

  v5 = v189[0];
  v6 = sub_22EFB648C();
  v8 = sub_22EF8391C(v6, v7);
  if (v2)
  {

LABEL_6:
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
LABEL_7:
    type metadata accessor for ExpressMode.PassConfig(0, v16);
    swift_deallocPartialClassInstance();
    return v3;
  }

  v9 = v8;

  *(v3 + 162) = v9 & 1;
  v10 = sub_22EFB648C();
  v12 = sub_22EF8391C(v10, v11);

  *(v3 + 161) = v12 & 1;
  v13 = sub_22EFB648C();
  v18 = sub_22EF82BC8(v13, v14);
  v20 = v19;

  *(v3 + 16) = v18;
  *(v3 + 24) = v20;
  v21 = sub_22EFB648C();
  v23 = sub_22EF82BC8(v21, v22);
  v25 = v24;

  v26 = sub_22EF7E630(v23, v25);
  if (v27 >> 60 == 15)
  {
    sub_22EF70EBC(0, &qword_27DA9E448, 0x277CCA9B8);
    v190 = 0;
    v191 = 0xE000000000000000;
    sub_22EFB66DC();

    v190 = 0x412074656C707041;
    v191 = 0xEB00000000204449;
    MEMORY[0x2318FB260](v23, v25);

    MEMORY[0x2318FB260](0x20746F6E20736920, 0xEB00000000786568);
    sub_22EF74470(v190, v191, 8, 0);
    swift_willThrow();

    __swift_destroy_boxed_opaque_existential_0Tm(a1);

    goto LABEL_7;
  }

  v205 = v25;
  *(v3 + 32) = v26;
  *(v3 + 40) = v27;
  v28 = v26;
  v29 = v27;
  v30 = sub_22EFB648C();
  v32 = v31;
  sub_22EF70B68(v28, v29);
  v33 = sub_22EF83B50(v30, v32);
  v35 = v34;
  v186 = v28;
  v36 = v33;
  v185 = v29;

  v184 = v36;
  if (v35)
  {

    v37 = v35;
    v38 = sub_22EF7E630(v36, v35);
  }

  else
  {
    v37 = 0;
    v38 = 0;
    v39 = 0xF000000000000000;
  }

  *(v3 + 48) = v38;
  *(v3 + 56) = v39;
  v40 = sub_22EFB648C();
  v42 = sub_22EF83B50(v40, v41);
  v44 = v43;
  v45 = v42;

  if (v44)
  {

    v46 = sub_22EF7E630(v45, v44);
  }

  else
  {
    v46 = 0;
    v47 = 0xF000000000000000;
  }

  *(v3 + 64) = v46;
  *(v3 + 72) = v47;
  v48 = sub_22EFB648C();
  v50 = sub_22EF82BC8(v48, v49);
  v182 = v51;

  v52 = sub_22EFB648C();
  v54 = sub_22EF83D88(v52, v53, &qword_27DA9E028, 0x277CBEAC0, &qword_27DA9E728, &qword_22EFBD240);

  v55 = v54;
  v56 = v54;

  v180 = v55;
  sub_22EFA1FE4(v50, v182, v55);
  v176 = v56;
  *(v3 + 80) = v57;
  *(v3 + 88) = v58;
  *(v3 + 96) = v59;
  v60 = sub_22EFB648C();
  v179 = v5;
  v175 = sub_22EF83D88(v60, v61, &qword_27DA9E3F8, 0x277CCABB0, &qword_27DA9E720, &qword_22EFBD238);

  if (v175)
  {
    v62 = [v175 BOOLValue];
  }

  else
  {
    v62 = 0;
  }

  *(v3 + 104) = v62;
  v63 = sub_22EFB648C();
  v174 = sub_22EF83D88(v63, v64, &qword_27DA9E3F8, 0x277CCABB0, &qword_27DA9E720, &qword_22EFBD238);

  if (v174)
  {
    v65 = [v174 BOOLValue];
  }

  else
  {
    v65 = 0;
  }

  *(v3 + 176) = v65;
  v66 = sub_22EFB648C();
  v68 = sub_22EF83B50(v66, v67);
  v70 = v69;

  if (v70)
  {
    v71 = v70;
  }

  else
  {
    v68 = 0;
    v71 = 0xE000000000000000;
  }

  v171 = sub_22EF7E630(v68, v71);
  v172 = v72;
  if (v72 >> 60 == 15)
  {

    sub_22EF70EBC(0, &qword_27DA9E448, 0x277CCA9B8);
    v190 = 0;
    v191 = 0xE000000000000000;
    sub_22EFB66DC();

    v190 = 0xD000000000000011;
    v191 = 0x800000022EFC6C00;
    MEMORY[0x2318FB260](v68, v71);

    MEMORY[0x2318FB260](0x20746F6E20736920, 0xEB00000000786568);
    sub_22EF74470(v190, v191, 8, 0);
    swift_willThrow();

    sub_22EF708B4(v186, v185);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);

    sub_22EF708C8(*(v3 + 32), *(v3 + 40));
    sub_22EF708B4(*(v3 + 48), *(v3 + 56));
    sub_22EF708B4(*(v3 + 64), *(v3 + 72));
    sub_22EFA0DF0(*(v3 + 80), *(v3 + 88), *(v3 + 96));
    goto LABEL_7;
  }

  *(v3 + 112) = v171;
  *(v3 + 120) = v72;
  v73 = sub_22EFB648C();
  v75 = v74;
  sub_22EF70B68(v171, v172);
  v76 = sub_22EF83B50(v73, v75);
  v166 = v77;
  v78 = v76;

  if (v166)
  {

    v79 = sub_22EF7E630(v78, v166);
  }

  else
  {
    v79 = 0;
    v80 = 0xF000000000000000;
  }

  *(v3 + 128) = v79;
  *(v3 + 136) = v80;
  v81 = sub_22EFB648C();
  v169 = sub_22EF83FE0(v81, v82, &qword_27DA9E400, &unk_22EFBD180, &qword_27DA9E718, &qword_22EFBD230);

  if (v169)
  {
    v168 = *(v169 + 16);
    v83 = 0;
    v165 =  + 40;
    v84 = MEMORY[0x277D84F90];
LABEL_33:
    v85 = (v165 + 16 * v83);
    while (v168 != v83)
    {
      if (v83 >= *(v169 + 16))
      {
        __break(1u);
LABEL_72:

        if (qword_27DA9E058 == -1)
        {
LABEL_73:
          v115 = sub_22EFB626C();
          __swift_project_value_buffer(v115, qword_27DAA03B8);
          v116 = sub_22EFB624C();
          v117 = sub_22EFB65CC();
          if (os_log_type_enabled(v116, v117))
          {
            v118 = swift_slowAlloc();
            *v118 = 0;
            _os_log_impl(&dword_22EEF5000, v116, v117, "No ecp2 info?? skipping", v118, 2u);
            MEMORY[0x2318FC200](v118, -1, -1);

            sub_22EF708B4(v184, v37);
            sub_22EF708B4(v171, v172);
            v119 = v176;
            goto LABEL_83;
          }

          sub_22EF708B4(v186, v185);
LABEL_91:

          sub_22EF708B4(v171, v172);
          sub_22EF708B4(v184, v37);

LABEL_92:
          __swift_destroy_boxed_opaque_existential_0Tm(a1);
LABEL_56:
          *(v3 + 168) = 0;
          return v3;
        }

LABEL_142:
        swift_once();
        goto LABEL_73;
      }

      ++v83;
      v86 = v85 + 2;
      v88 = *(v85 - 1);
      v87 = *v85;

      v89 = sub_22EF7E630(v88, v87);
      v85 = v86;
      if (v90 >> 60 != 15)
      {
        v91 = v89;
        v92 = v90;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v84 = sub_22EF7E200(0, *(v84 + 2) + 1, 1, v84);
        }

        v94 = *(v84 + 2);
        v93 = *(v84 + 3);
        v164 = v94 + 1;
        if (v94 >= v93 >> 1)
        {
          v84 = sub_22EF7E200((v93 > 1), v164, 1, v84);
        }

        *(v84 + 2) = v164;
        v95 = &v84[16 * v94];
        *(v95 + 4) = v91;
        *(v95 + 5) = v92;
        goto LABEL_33;
      }
    }
  }

  else
  {
    v84 = 0;
  }

  *(v3 + 144) = v84;
  v96 = sub_22EFB648C();
  v168 = sub_22EF83D88(v96, v97, &qword_27DA9E3F8, 0x277CCABB0, &qword_27DA9E720, &qword_22EFBD238);

  if (v168)
  {
    v98 = [v168 integerValue];
  }

  else
  {
    v98 = 0;
  }

  *(v3 + 152) = v98;
  *(v3 + 160) = v168 == 0;
  v99 = sub_22EF7E630(0xD000000000000012, 0x800000022EFC60D0);
  if (v100 >> 60 == 15)
  {
LABEL_147:
    __break(1u);
LABEL_148:
    swift_once();
LABEL_88:
    v128 = sub_22EFB626C();
    __swift_project_value_buffer(v128, qword_27DAA03B8);
    v116 = sub_22EFB624C();
    v124 = sub_22EFB65AC();
    if (os_log_type_enabled(v116, v124))
    {
      v125 = swift_slowAlloc();
      *v125 = 0;
      v126 = "No associated readers found for pass, skipping";
LABEL_82:
      _os_log_impl(&dword_22EEF5000, v116, v124, v126, v125, 2u);
      MEMORY[0x2318FC200](v125, -1, -1);

      sub_22EF708B4(v184, v37);
      sub_22EF708B4(v171, v172);
      v119 = v205;
LABEL_83:

      v114 = v185;
      v113 = v186;
      goto LABEL_84;
    }

    goto LABEL_90;
  }

  v101 = v99;
  v102 = v100;
  v103 = sub_22EF6E8C0(v186, v185, v99, v100);
  sub_22EF708B4(v101, v102);
  if (!v103)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);

    sub_22EF708B4(v186, v185);
    sub_22EF708B4(v171, v172);

LABEL_53:

    goto LABEL_56;
  }

  if (!v37)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);

    sub_22EF708B4(v171, v172);
    goto LABEL_55;
  }

  v184 = sub_22EF7E630(v36, v37);
  if (v104 >> 60 == 15)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);

    sub_22EF708B4(v171, v172);

LABEL_55:

    sub_22EF708B4(v186, v185);
    goto LABEL_56;
  }

  v37 = v104;
  v105 = v104 >> 62;
  if ((v104 >> 62) <= 1)
  {
    if (!v105)
    {
      v106 = BYTE6(v104);
      goto LABEL_66;
    }

    goto LABEL_64;
  }

  if (v105 != 2)
  {

    sub_22EF708B4(v186, v185);

    sub_22EF708B4(v171, v172);

    v113 = v184;
    v114 = v37;
LABEL_84:
    sub_22EF708B4(v113, v114);
    goto LABEL_92;
  }

  v108 = *(v184 + 16);
  v107 = *(v184 + 24);
  v109 = __OFSUB__(v107, v108);
  v106 = v107 - v108;
  if (v109)
  {
    __break(1u);
LABEL_64:
    LODWORD(v106) = HIDWORD(v184) - v184;
    if (__OFSUB__(HIDWORD(v184), v184))
    {
      __break(1u);
      goto LABEL_142;
    }

    v106 = v106;
  }

LABEL_66:
  if (v106 != 20)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);

    sub_22EF708B4(v184, v37);

    sub_22EF708B4(v171, v172);

    sub_22EF708B4(v186, v185);
    goto LABEL_53;
  }

  if (!v180)
  {
    goto LABEL_72;
  }

  v110 = v176;

  v111 = sub_22EFB648C();
  v205 = v110;
  v120 = sub_22EF83FE0(v111, v112, &qword_27DA9E460, &unk_22EFBBCD0, &qword_27DA9E710, &qword_22EFBD228);

  if (!v120)
  {
    if (qword_27DA9E058 != -1)
    {
      swift_once();
    }

    v123 = sub_22EFB626C();
    __swift_project_value_buffer(v123, qword_27DAA03B8);
    v116 = sub_22EFB624C();
    v124 = sub_22EFB65AC();
    if (os_log_type_enabled(v116, v124))
    {
      v125 = swift_slowAlloc();
      *v125 = 0;
      v126 = "No associatedReaderIdentifers key with found for pass, skipping";
      goto LABEL_82;
    }

LABEL_90:

    sub_22EF708B4(v186, v185);
    goto LABEL_91;
  }

  v198 = v120;
  v121 = sub_22EFB648C();
  v127 = sub_22EF83FE0(v121, v122, &qword_27DA9E460, &unk_22EFBBCD0, &qword_27DA9E710, &qword_22EFBD228);

  if (!v127)
  {

    if (qword_27DA9E058 == -1)
    {
      goto LABEL_88;
    }

    goto LABEL_148;
  }

  v197 = v127;
  sub_22EF8DC60(&v197);
  sub_22EF8DC60(&v198);
  v173 = v198;
  v177 = v197;
  v161 = v197 >> 62;
  v167 = v197 & 0xFFFFFFFFFFFFFF8;
  if (v197 >> 62)
  {
    v129 = sub_22EFB67CC();
  }

  else
  {
    v129 = *((v197 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v170 = 0;
  v178 = MEMORY[0x277D84F90];
LABEL_96:
  v130 = v170 + 4;
  while (1)
  {
    if (v130 - v129 == 4)
    {

      goto LABEL_120;
    }

    v131 = v130 - 4;
    if ((v177 & 0xC000000000000001) != 0)
    {
      v132 = MEMORY[0x2318FB480](v130 - 4, v177);
    }

    else
    {
      if (v131 >= *(v167 + 16))
      {
        goto LABEL_144;
      }

      v132 = *(v177 + 8 * v130);
    }

    v133 = v132;
    v170 = v130 - 3;
    if (__OFADD__(v131, 1))
    {
      goto LABEL_145;
    }

    if (!(v173 >> 62))
    {
      if (v131 == *((v173 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        break;
      }

      goto LABEL_104;
    }

    if (v131 == sub_22EFB67CC())
    {
      break;
    }

LABEL_104:
    if ((v173 & 0xC000000000000001) != 0)
    {
      v134 = MEMORY[0x2318FB480](v130 - 4, v173);
    }

    else
    {
      if (v131 >= *((v173 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_146;
      }

      v134 = *(v173 + 8 * v130);
    }

    v135 = v134;
    v136 = v133;
    v137 = v135;
    sub_22EF70CB0(v184, v37);
    sub_22EF6EA28(v136, v137, v184, v37, &v199);
    v138 = v199;
    v181 = v200;
    v162 = v202;
    v163 = v201;

    ++v130;
    if (v181 >> 60 != 15)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v178 = sub_22EF7E464(0, *(v178 + 2) + 1, 1, v178);
      }

      v141 = *(v178 + 2);
      v140 = *(v178 + 3);
      if (v141 >= v140 >> 1)
      {
        v178 = sub_22EF7E464((v140 > 1), v141 + 1, 1, v178);
      }

      *(v178 + 2) = v141 + 1;
      v142 = &v178[56 * v141];
      *(v142 + 4) = v138;
      *(v142 + 40) = v181;
      *(v142 + 56) = v163;
      *(v142 + 72) = v162;
      goto LABEL_96;
    }
  }

LABEL_120:
  v196 = MEMORY[0x277D84FA0];
  v143 = *(v178 + 2);
  if (v143)
  {
    v144 = 0;
    v145 = v178 + 32;
    while (v144 < *(v178 + 2))
    {
      v146 = *v145;
      v147 = *(v145 + 1);
      v148 = *(v145 + 2);
      v204 = *(v145 + 6);
      v203[1] = v147;
      v203[2] = v148;
      v203[0] = v146;
      if (v196)
      {
        sub_22EF70CC4(v203, v189);
        sub_22EF9CB1C(&v190, v203);
        v149 = v192;
        v150 = v193;
        v187 = v194;
        v183 = v195;
        sub_22EF708C8(v190, v191);
        sub_22EF708C8(v149, v150);
        sub_22EF708C8(v187, v183);
      }

      ++v144;
      v145 += 56;
      if (v143 == v144)
      {
        goto LABEL_126;
      }
    }

    __break(1u);
LABEL_144:
    __break(1u);
LABEL_145:
    __break(1u);
LABEL_146:
    __break(1u);
    goto LABEL_147;
  }

LABEL_126:

  v151 = v196;
  *(v3 + 168) = v196;
  if (v151)
  {
    v152 = *(v151 + 16);
  }

  else
  {
    v152 = 0;
  }

  if (v161)
  {
    v153 = sub_22EFB67CC();
  }

  else
  {
    v153 = *(v167 + 16);
  }

  if (v151 && v152 == v153)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);

    sub_22EF708B4(v186, v185);
    sub_22EF708B4(v171, v172);

    sub_22EF708B4(v184, v37);
  }

  else
  {
    if (qword_27DA9E058 != -1)
    {
      swift_once();
    }

    v154 = sub_22EFB626C();
    __swift_project_value_buffer(v154, qword_27DAA03B8);

    v155 = sub_22EFB624C();
    v156 = sub_22EFB65CC();

    if (os_log_type_enabled(v155, v156))
    {
      v157 = swift_slowAlloc();
      v188 = swift_slowAlloc();
      v190 = v188;
      *v157 = 136315138;
      v158 = *(v3 + 16);
      v159 = *(v3 + 24);

      v160 = sub_22EF9447C(v158, v159, &v190);

      *(v157 + 4) = v160;
      _os_log_impl(&dword_22EEF5000, v155, v156, "Pass %s has conflicts within itself", v157, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v188);
      MEMORY[0x2318FC200](v188, -1, -1);
      MEMORY[0x2318FC200](v157, -1, -1);

      sub_22EF708B4(v184, v37);
      sub_22EF708B4(v171, v172);

      sub_22EF708B4(v186, v185);
    }

    else
    {

      sub_22EF708B4(v186, v185);
      sub_22EF708B4(v171, v172);

      sub_22EF708B4(v184, v37);
    }

    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  return v3;
}

uint64_t sub_22EF8DB78(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_22EFA0D14(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_22EF9746C(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_22EF8DBE4(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_22EFA0D28(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_22EF97564(v6);
  return sub_22EFB674C();
}

void sub_22EF8DC60(unint64_t *a1)
{
  v2 = *a1;
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v2 & 0x8000000000000000) != 0 || (v2 & 0x4000000000000000) != 0)
  {
    v2 = sub_22EFA0D3C(v2);
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v4[0] = (v2 & 0xFFFFFFFFFFFFFF8) + 32;
  v4[1] = v3;
  sub_22EF97668(v4);
  *a1 = v2;
}

uint64_t sub_22EF8DCD8(uint64_t *a1)
{
  v2 = *a1;
  v3 = sub_22EFB648C();
  sub_22EF82E7C(v3, v4, &v11);

  if (!v1)
  {
    v5 = v11;
    v6 = sub_22EFB648C();
    sub_22EF82E7C(v6, v7, &v10);

    v9 = v10;
    LOBYTE(v2) = sub_22EF71F2C(v5, *(&v5 + 1), v10, *(&v10 + 1));
    sub_22EF708C8(v5, *(&v5 + 1));
    sub_22EF708C8(v9, *(&v9 + 1));
  }

  return v2 & 1;
}

uint64_t sub_22EF8DDD8(uint64_t a1)
{
  v2 = v1;
  v113 = *MEMORY[0x277D85DE8];
  v3 = sub_22EFB651C();
  v5 = v4;
  v111 = 0;
  v112 = 0xE000000000000000;
  sub_22EFB66DC();
  MEMORY[0x2318FB260](v3, v5);
  MEMORY[0x2318FB260](0x4449657571696E55, 0xEE00202020202020);
  MEMORY[0x2318FB260](*(v2 + 16), *(v2 + 24));
  MEMORY[0x2318FB260](10, 0xE100000000000000);
  MEMORY[0x2318FB260](v3, v5);
  MEMORY[0x2318FB260](0x494174656C707061, 0xEE00202020202044);
  v6 = 0;
  v103 = sub_22EF83154(*(v2 + 32), *(v2 + 40));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E400, &unk_22EFBD180);
  sub_22EF70E20(&qword_27DA9E408, &qword_27DA9E400, &unk_22EFBD180, MEMORY[0x277D83958]);
  v7 = sub_22EFB646C();
  v9 = v8;

  MEMORY[0x2318FB260](v7, v9);

  MEMORY[0x2318FB260](10, 0xE100000000000000);
  MEMORY[0x2318FB260](v3, v5);
  MEMORY[0x2318FB260](0x202020444979656BLL, 0xEE00202020202020);
  v10 = *(v1 + 56);
  if (v10 >> 60 == 15)
  {
    v11 = 0xE300000000000000;
    v12 = 7104878;
  }

  else
  {
    v103 = sub_22EF83154(*(v1 + 48), v10);
    v13 = sub_22EFB646C();
    v11 = v14;

    v12 = v13;
  }

  MEMORY[0x2318FB260](v12, v11);

  MEMORY[0x2318FB260](10, 0xE100000000000000);
  MEMORY[0x2318FB260](v3, v5);
  MEMORY[0x2318FB260](0x4449726564616572, 0xEE00202020202020);
  v15 = *(v2 + 72);
  if (v15 >> 60 == 15)
  {
    v16 = 0xE300000000000000;
    v17 = 7104878;
  }

  else
  {
    v103 = sub_22EF83154(*(v2 + 64), v15);
    v18 = sub_22EFB646C();
    v16 = v19;

    v17 = v18;
  }

  MEMORY[0x2318FB260](v17, v16);

  MEMORY[0x2318FB260](10, 0xE100000000000000);
  MEMORY[0x2318FB260](v3, v5);
  MEMORY[0x2318FB260](0x4973736572707865, 0xEE002020206F666ELL);
  if (__OFADD__(a1, 1))
  {
    goto LABEL_106;
  }

  v21 = *(v2 + 88);
  v20 = *(v2 + 96);
  v94 = v2;
  v22 = *(v2 + 80);
  sub_22EFA0DA0(v22, v21, v20);
  v23 = sub_22EF8EA54(a1 + 1, v22, v21, v20);
  v25 = v24;
  sub_22EFA0DF0(v22, v21, v20);
  MEMORY[0x2318FB260](v23, v25);

  MEMORY[0x2318FB260](10, 0xE100000000000000);
  MEMORY[0x2318FB260](v3, v5);
  MEMORY[0x2318FB260](0x7078456277557369, 0xEE00202073736572);
  if (*(v2 + 161))
  {
    v26 = 1702195828;
  }

  else
  {
    v26 = 0x65736C6166;
  }

  if (*(v2 + 161))
  {
    v27 = 0xE400000000000000;
  }

  else
  {
    v27 = 0xE500000000000000;
  }

  MEMORY[0x2318FB260](v26, v27);

  MEMORY[0x2318FB260](10, 0xE100000000000000);
  MEMORY[0x2318FB260](v3, v5);
  MEMORY[0x2318FB260](0x70784563664E7369, 0xEE00202073736572);
  if (*(v2 + 162))
  {
    v28 = 1702195828;
  }

  else
  {
    v28 = 0x65736C6166;
  }

  if (*(v2 + 162))
  {
    v29 = 0xE400000000000000;
  }

  else
  {
    v29 = 0xE500000000000000;
  }

  MEMORY[0x2318FB260](v28, v29);

  MEMORY[0x2318FB260](10, 0xE100000000000000);
  MEMORY[0x2318FB260](v3, v5);
  MEMORY[0x2318FB260](0x6F69737365536E69, 0xEE0020202020206ELL);
  if (*(v2 + 104))
  {
    v30 = 1702195828;
  }

  else
  {
    v30 = 0x65736C6166;
  }

  if (*(v2 + 104))
  {
    v31 = 0xE400000000000000;
  }

  else
  {
    v31 = 0xE500000000000000;
  }

  MEMORY[0x2318FB260](v30, v31);

  MEMORY[0x2318FB260](10, 0xE100000000000000);
  MEMORY[0x2318FB260](v3, v5);
  MEMORY[0x2318FB260](0x6843726573557369, 0xEE0020206563696FLL);
  if (*(v2 + 176))
  {
    v32 = 1702195828;
  }

  else
  {
    v32 = 0x65736C6166;
  }

  if (*(v2 + 176))
  {
    v33 = 0xE400000000000000;
  }

  else
  {
    v33 = 0xE500000000000000;
  }

  v34 = v2;
  MEMORY[0x2318FB260](v32, v33);

  MEMORY[0x2318FB260](10, 0xE100000000000000);
  MEMORY[0x2318FB260](v3, v5);
  MEMORY[0x2318FB260](0x4941656C75646F6DLL, 0xEE00202020202044);
  v103 = sub_22EF83154(*(v34 + 112), *(v34 + 120));
  v35 = sub_22EFB646C();
  v37 = v36;

  MEMORY[0x2318FB260](v35, v37);

  MEMORY[0x2318FB260](10, 0xE100000000000000);
  v91 = v3;
  MEMORY[0x2318FB260](v3, v5);
  MEMORY[0x2318FB260](0x61654870756F7267, 0xEE00202020202064);
  v38 = *(v2 + 136);
  if (v38 >> 60 == 15)
  {
    v39 = 0xE300000000000000;
    v40 = 7104878;
  }

  else
  {
    v103 = sub_22EF83154(*(v2 + 128), v38);
    v41 = sub_22EFB646C();
    v39 = v42;

    v40 = v41;
  }

  MEMORY[0x2318FB260](v40, v39);

  MEMORY[0x2318FB260](10, 0xE100000000000000);
  MEMORY[0x2318FB260](v3, v5);
  MEMORY[0x2318FB260](0x6D654D70756F7267, 0xEE00202073726562);
  v43 = *(v2 + 144);
  if (v43)
  {
    v44 = *(v43 + 16);
    v45 = MEMORY[0x277D84F90];
    if (!v44)
    {
      goto LABEL_83;
    }

    v110 = MEMORY[0x277D84F90];
    v95 = v44;
    sub_22EF9AAC8(0, v44, 0);
    v46 = 0;
    v45 = v110;
    v93 = v43 + 32;
    v92 = v5;
    while (1)
    {
      v47 = (v93 + 16 * v46);
      v49 = *v47;
      v48 = v47[1];
      v50 = v48 >> 62;
      v100 = HIDWORD(*v47);
      v97 = v45;
      v98 = v6;
      v96 = v46;
      if ((v48 >> 62) > 1)
      {
        break;
      }

      if (v50)
      {
        if (__OFSUB__(v100, v49))
        {
          goto LABEL_105;
        }

        v51 = v100 - v49;
LABEL_47:
        sub_22EF70B68(v49, v48);
        goto LABEL_48;
      }

      v51 = BYTE6(v48);
LABEL_48:
      v54 = MEMORY[0x277D84F90];
      if (!v51)
      {
        goto LABEL_78;
      }

      v109 = MEMORY[0x277D84F90];
      sub_22EF9AAC8(0, v51 & ~(v51 >> 63), 0);
      if (v50)
      {
        if (v50 == 2)
        {
          v55 = *(v49 + 16);
        }

        else
        {
          v55 = v49;
        }
      }

      else
      {
        v55 = 0;
      }

      v102 = v55;
      if (v51 < 0)
      {
        goto LABEL_103;
      }

      v56 = 0;
      v54 = v109;
      v99 = &v103 + v55;
      do
      {
        if (v56 >= v51)
        {
          __break(1u);
LABEL_96:
          __break(1u);
LABEL_97:
          __break(1u);
LABEL_98:
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
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
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
        }

        v57 = v56 + 1;
        if (__OFADD__(v56, 1))
        {
          goto LABEL_96;
        }

        v58 = v102 + v56;
        if (v50 == 2)
        {
          if (v58 < *(v49 + 16))
          {
            goto LABEL_98;
          }

          if (v58 >= *(v49 + 24))
          {
            goto LABEL_100;
          }

          v63 = sub_22EFB603C();
          if (!v63)
          {
            goto LABEL_108;
          }

          v60 = v63;
          v64 = sub_22EFB605C();
          v62 = v58 - v64;
          if (__OFSUB__(v58, v64))
          {
            goto LABEL_102;
          }

          goto LABEL_71;
        }

        if (v50 == 1)
        {
          if (v58 < v49 || v58 >= v49 >> 32)
          {
            goto LABEL_99;
          }

          v59 = sub_22EFB603C();
          if (!v59)
          {
            goto LABEL_107;
          }

          v60 = v59;
          v61 = sub_22EFB605C();
          v62 = v58 - v61;
          if (__OFSUB__(v58, v61))
          {
            goto LABEL_101;
          }

LABEL_71:
          v65 = *(v60 + v62);
          goto LABEL_74;
        }

        if (v58 >= BYTE6(v48))
        {
          goto LABEL_97;
        }

        LOWORD(v103) = v49;
        BYTE2(v103) = BYTE2(v49);
        BYTE3(v103) = BYTE3(v49);
        BYTE4(v103) = v100;
        BYTE5(v103) = BYTE5(v49);
        BYTE6(v103) = BYTE6(v49);
        HIBYTE(v103) = HIBYTE(v49);
        v104 = v48;
        v105 = BYTE2(v48);
        v106 = BYTE3(v48);
        v107 = BYTE4(v48);
        v108 = BYTE5(v48);
        v65 = v99[v56];
LABEL_74:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E428, &unk_22EFBBC50);
        v66 = swift_allocObject();
        *(v66 + 16) = xmmword_22EFBB8C0;
        *(v66 + 56) = MEMORY[0x277D84B78];
        *(v66 + 64) = MEMORY[0x277D84BC0];
        *(v66 + 32) = v65;
        v67 = sub_22EFB649C();
        v109 = v54;
        v70 = *(v54 + 16);
        v69 = *(v54 + 24);
        if (v70 >= v69 >> 1)
        {
          v90 = v67;
          v72 = v68;
          sub_22EF9AAC8((v69 > 1), v70 + 1, 1);
          v68 = v72;
          v67 = v90;
          v54 = v109;
        }

        *(v54 + 16) = v70 + 1;
        v71 = v54 + 16 * v70;
        *(v71 + 32) = v67;
        *(v71 + 40) = v68;
        ++v56;
      }

      while (v57 != v51);
      v5 = v92;
LABEL_78:
      v103 = v54;
      v73 = sub_22EFB646C();
      v75 = v74;

      sub_22EF708C8(v49, v48);
      v45 = v97;
      v110 = v97;
      v77 = *(v97 + 16);
      v76 = *(v97 + 24);
      if (v77 >= v76 >> 1)
      {
        sub_22EF9AAC8((v76 > 1), v77 + 1, 1);
        v45 = v110;
      }

      v46 = v96 + 1;
      *(v45 + 16) = v77 + 1;
      v78 = v45 + 16 * v77;
      *(v78 + 32) = v73;
      *(v78 + 40) = v75;
      v6 = v98;
      if (v96 + 1 == v95)
      {
        v34 = v94;
        goto LABEL_83;
      }
    }

    if (v50 != 2)
    {
      v54 = MEMORY[0x277D84F90];
      goto LABEL_78;
    }

    v53 = *(v49 + 16);
    v52 = *(v49 + 24);
    v51 = v52 - v53;
    if (__OFSUB__(v52, v53))
    {
      goto LABEL_104;
    }

    goto LABEL_47;
  }

  v45 = MEMORY[0x277D84F90];
LABEL_83:
  v79 = MEMORY[0x2318FB2C0](v45, MEMORY[0x277D837D0]);
  v81 = v80;

  MEMORY[0x2318FB260](v79, v81);

  MEMORY[0x2318FB260](10, 0xE100000000000000);
  MEMORY[0x2318FB260](v91, v5);
  MEMORY[0x2318FB260](0x79745370756F7267, 0xEE0020202020656CLL);
  v82 = *(v34 + 152);
  if (*(v34 + 160))
  {
    v82 = -1;
  }

  v103 = v82;
  v83 = sub_22EFB683C();
  MEMORY[0x2318FB260](v83);

  MEMORY[0x2318FB260](10, 0xE100000000000000);
  MEMORY[0x2318FB260](v91, v5);
  MEMORY[0x2318FB260](0x74634170756F7267, 0xEE00202020207669);
  if (*(v34 + 177))
  {
    v84 = 1702195828;
  }

  else
  {
    v84 = 0x65736C6166;
  }

  if (*(v34 + 177))
  {
    v85 = 0xE400000000000000;
  }

  else
  {
    v85 = 0xE500000000000000;
  }

  MEMORY[0x2318FB260](v84, v85);

  MEMORY[0x2318FB260](10, 0xE100000000000000);
  MEMORY[0x2318FB260](v91, v5);

  MEMORY[0x2318FB260](0x4B7875416E6F796CLL, 0xEE00202020737965);
  v86 = *(v34 + 168);
  if (v86)
  {
    v87 = *(v86 + 16);
  }

  else
  {
    v87 = -1;
  }

  v103 = v87;
  v88 = sub_22EFB683C();
  MEMORY[0x2318FB260](v88);

  return v111;
}

uint64_t sub_22EF8EA54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_22EFB651C();
  switch(a2)
  {
    case 0:
      v11 = v8;
      MEMORY[0x2318FB260](0x6163697553, 0xE500000000000000);
      return v11;
    case 1:
      v11 = v8;
      MEMORY[0x2318FB260](0x41636972656E6547, 0xE800000000000000);
      return v11;
    case 2:
      v11 = v8;
      MEMORY[0x2318FB260](0x796168746143, 0xE600000000000000);
      return v11;
  }

  v11 = v8;
  MEMORY[0x2318FB260](0xA3A32504345, 0xE600000000000000);
  result = a1 + 1;
  if (!__OFADD__(a1, 1))
  {
    v10 = sub_22EF8EC2C(result, a2, a3, a4);
    MEMORY[0x2318FB260](v10);

    return v11;
  }

  __break(1u);
  return result;
}

void *sub_22EF8EB70()
{

  sub_22EF708C8(*(v0 + 32), *(v0 + 40));
  sub_22EF708B4(*(v0 + 48), *(v0 + 56));
  sub_22EF708B4(*(v0 + 64), *(v0 + 72));
  sub_22EFA0DF0(*(v0 + 80), *(v0 + 88), *(v0 + 96));
  sub_22EF708C8(*(v0 + 112), *(v0 + 120));
  sub_22EF708B4(*(v0 + 128), *(v0 + 136));

  return v0;
}

uint64_t sub_22EF8EBD4()
{
  sub_22EF8EB70();

  return swift_deallocClassInstance();
}

uint64_t sub_22EF8EC2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v122 = *MEMORY[0x277D85DE8];
  v6 = sub_22EFB651C();
  v8 = v7;
  v120 = 0;
  v121 = 0xE000000000000000;
  sub_22EFB66DC();
  MEMORY[0x2318FB260](v6, v8);
  MEMORY[0x2318FB260](0x547972616D697270, 0xED0000203A734943);
  v9 = MEMORY[0x277D84F90];
  v10 = *(a2 + 16);
  v96 = v6;
  v97 = v8;
  if (v10)
  {
    v93 = a3;
    v119 = MEMORY[0x277D84F90];
    sub_22EF9AAC8(0, v10, 0);
    v11 = 0;
    v12 = v119;
    v100 = a2 + 32;
    v13 = v9;
    v98 = v10;
    while (1)
    {
      v14 = (v100 + 16 * v11);
      v16 = *v14;
      v15 = v14[1];
      v17 = v15 >> 62;
      v108 = HIDWORD(*v14);
      v104 = v11;
      if ((v15 >> 62) > 1)
      {
        break;
      }

      v102 = v12;
      if (v17)
      {
        if (__OFSUB__(v108, v16))
        {
          goto LABEL_117;
        }

        v18 = v108 - v16;
LABEL_13:
        sub_22EF70B68(v16, v15);
        if (!v18)
        {
LABEL_6:
          v19 = v13;
          goto LABEL_43;
        }

        goto LABEL_14;
      }

      v18 = BYTE6(v15);
      if (!BYTE6(v15))
      {
        goto LABEL_6;
      }

LABEL_14:
      v118 = v13;
      sub_22EF9AAC8(0, v18 & ~(v18 >> 63), 0);
      if (v17)
      {
        if (v17 == 2)
        {
          v22 = *(v16 + 16);
        }

        else
        {
          v22 = v16;
        }
      }

      else
      {
        v22 = 0;
      }

      v110 = v22;
      if (v18 < 0)
      {
        goto LABEL_114;
      }

      v23 = 0;
      v19 = v118;
      v106 = &v112 + v22;
      do
      {
        if (v23 >= v18)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
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
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
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
        }

        v24 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          goto LABEL_99;
        }

        v25 = v110 + v23;
        if (v17 == 2)
        {
          if (v25 < *(v16 + 16))
          {
            goto LABEL_103;
          }

          if (v25 >= *(v16 + 24))
          {
            goto LABEL_105;
          }

          v30 = sub_22EFB603C();
          if (!v30)
          {
            goto LABEL_121;
          }

          v27 = v30;
          v31 = sub_22EFB605C();
          v29 = v25 - v31;
          if (__OFSUB__(v25, v31))
          {
            goto LABEL_107;
          }

          goto LABEL_36;
        }

        if (v17 == 1)
        {
          if (v25 < v16 || v25 >= v16 >> 32)
          {
            goto LABEL_104;
          }

          v26 = sub_22EFB603C();
          if (!v26)
          {
            goto LABEL_120;
          }

          v27 = v26;
          v28 = sub_22EFB605C();
          v29 = v25 - v28;
          if (__OFSUB__(v25, v28))
          {
            goto LABEL_106;
          }

LABEL_36:
          v32 = *(v27 + v29);
          goto LABEL_39;
        }

        if (v25 >= BYTE6(v15))
        {
          goto LABEL_102;
        }

        LOWORD(v112) = v16;
        BYTE2(v112) = BYTE2(v16);
        BYTE3(v112) = BYTE3(v16);
        BYTE4(v112) = v108;
        BYTE5(v112) = BYTE5(v16);
        BYTE6(v112) = BYTE6(v16);
        HIBYTE(v112) = HIBYTE(v16);
        v113 = v15;
        v114 = BYTE2(v15);
        v115 = BYTE3(v15);
        v116 = BYTE4(v15);
        v117 = BYTE5(v15);
        v32 = v106[v23];
LABEL_39:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E428, &unk_22EFBBC50);
        v33 = swift_allocObject();
        *(v33 + 16) = xmmword_22EFBB8C0;
        *(v33 + 56) = MEMORY[0x277D84B78];
        *(v33 + 64) = MEMORY[0x277D84BC0];
        *(v33 + 32) = v32;
        v34 = sub_22EFB649C();
        v118 = v19;
        v37 = *(v19 + 16);
        v36 = *(v19 + 24);
        if (v37 >= v36 >> 1)
        {
          v92 = v34;
          v39 = v35;
          sub_22EF9AAC8((v36 > 1), v37 + 1, 1);
          v35 = v39;
          v34 = v92;
          v19 = v118;
        }

        *(v19 + 16) = v37 + 1;
        v38 = v19 + 16 * v37;
        *(v38 + 32) = v34;
        *(v38 + 40) = v35;
        ++v23;
      }

      while (v24 != v18);
      v13 = MEMORY[0x277D84F90];
LABEL_43:
      v10 = v98;
      v12 = v102;
LABEL_44:
      v112 = v19;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E400, &unk_22EFBD180);
      sub_22EF70E20(&qword_27DA9E408, &qword_27DA9E400, &unk_22EFBD180, MEMORY[0x277D83958]);
      v40 = sub_22EFB646C();
      v42 = v41;
      sub_22EF708C8(v16, v15);

      v119 = v12;
      v44 = *(v12 + 16);
      v43 = *(v12 + 24);
      if (v44 >= v43 >> 1)
      {
        sub_22EF9AAC8((v43 > 1), v44 + 1, 1);
        v12 = v119;
      }

      v11 = v104 + 1;
      *(v12 + 16) = v44 + 1;
      v45 = v12 + 16 * v44;
      *(v45 + 32) = v40;
      *(v45 + 40) = v42;
      if (v104 + 1 == v10)
      {
        v6 = v96;
        v8 = v97;
        a3 = v93;
        goto LABEL_49;
      }
    }

    if (v17 != 2)
    {
      v19 = v13;
      goto LABEL_44;
    }

    v102 = v12;
    v21 = *(v16 + 16);
    v20 = *(v16 + 24);
    v18 = v20 - v21;
    if (__OFSUB__(v20, v21))
    {
      goto LABEL_116;
    }

    goto LABEL_13;
  }

  v12 = MEMORY[0x277D84F90];
LABEL_49:
  v46 = MEMORY[0x2318FB2C0](v12, MEMORY[0x277D837D0]);
  v48 = v47;

  MEMORY[0x2318FB260](v46, v48);

  MEMORY[0x2318FB260](10, 0xE100000000000000);
  MEMORY[0x2318FB260](v6, v8);
  MEMORY[0x2318FB260](0x203A494354787561, 0xED00002020202020);
  v49 = *(a3 + 16);
  v50 = MEMORY[0x277D84F90];
  if (!v49)
  {
    v52 = MEMORY[0x277D84F90];
    goto LABEL_97;
  }

  v119 = MEMORY[0x277D84F90];
  sub_22EF9AAC8(0, v49, 0);
  v51 = 0;
  v52 = v119;
  v101 = a3 + 32;
  v53 = v50;
  v54 = v49;
  v99 = v49;
  do
  {
    v55 = (v101 + 16 * v51);
    v57 = *v55;
    v56 = v55[1];
    v58 = v56 >> 62;
    v109 = HIDWORD(*v55);
    v103 = v51;
    v105 = v52;
    if ((v56 >> 62) > 1)
    {
      if (v58 != 2)
      {
        v60 = v53;
        goto LABEL_92;
      }

      v62 = *(v57 + 16);
      v61 = *(v57 + 24);
      v59 = v61 - v62;
      if (__OFSUB__(v61, v62))
      {
        goto LABEL_118;
      }

      goto LABEL_61;
    }

    if (v58)
    {
      if (__OFSUB__(v109, v57))
      {
        goto LABEL_119;
      }

      v59 = v109 - v57;
LABEL_61:
      sub_22EF70B68(v57, v56);
      if (!v59)
      {
LABEL_54:
        v60 = v53;
        goto LABEL_91;
      }

      goto LABEL_62;
    }

    v59 = BYTE6(v56);
    if (!BYTE6(v56))
    {
      goto LABEL_54;
    }

LABEL_62:
    v118 = v53;
    sub_22EF9AAC8(0, v59 & ~(v59 >> 63), 0);
    if (v58)
    {
      if (v58 == 2)
      {
        v63 = *(v57 + 16);
      }

      else
      {
        v63 = v57;
      }
    }

    else
    {
      v63 = 0;
    }

    v111 = v63;
    if (v59 < 0)
    {
      goto LABEL_115;
    }

    v64 = 0;
    v60 = v118;
    v107 = &v112 + v63;
    do
    {
      if (v64 >= v59)
      {
        goto LABEL_100;
      }

      v65 = v64 + 1;
      if (__OFADD__(v64, 1))
      {
        goto LABEL_101;
      }

      v66 = v111 + v64;
      if (v58 == 2)
      {
        if (v66 < *(v57 + 16))
        {
          goto LABEL_109;
        }

        if (v66 >= *(v57 + 24))
        {
          goto LABEL_111;
        }

        v71 = sub_22EFB603C();
        if (!v71)
        {
          goto LABEL_123;
        }

        v68 = v71;
        v72 = sub_22EFB605C();
        v70 = v66 - v72;
        if (__OFSUB__(v66, v72))
        {
          goto LABEL_113;
        }

        goto LABEL_84;
      }

      if (v58 == 1)
      {
        if (v66 < v57 || v66 >= v57 >> 32)
        {
          goto LABEL_110;
        }

        v67 = sub_22EFB603C();
        if (!v67)
        {
          goto LABEL_122;
        }

        v68 = v67;
        v69 = sub_22EFB605C();
        v70 = v66 - v69;
        if (__OFSUB__(v66, v69))
        {
          goto LABEL_112;
        }

LABEL_84:
        v73 = *(v68 + v70);
        goto LABEL_87;
      }

      if (v66 >= BYTE6(v56))
      {
        goto LABEL_108;
      }

      LOWORD(v112) = v57;
      BYTE2(v112) = BYTE2(v57);
      BYTE3(v112) = BYTE3(v57);
      BYTE4(v112) = v109;
      BYTE5(v112) = BYTE5(v57);
      BYTE6(v112) = BYTE6(v57);
      HIBYTE(v112) = HIBYTE(v57);
      v113 = v56;
      v114 = BYTE2(v56);
      v115 = BYTE3(v56);
      v116 = BYTE4(v56);
      v117 = BYTE5(v56);
      v73 = v107[v64];
LABEL_87:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E428, &unk_22EFBBC50);
      v74 = swift_allocObject();
      *(v74 + 16) = xmmword_22EFBB8C0;
      *(v74 + 56) = MEMORY[0x277D84B78];
      *(v74 + 64) = MEMORY[0x277D84BC0];
      *(v74 + 32) = v73;
      v75 = sub_22EFB649C();
      v118 = v60;
      v78 = *(v60 + 16);
      v77 = *(v60 + 24);
      if (v78 >= v77 >> 1)
      {
        v94 = v75;
        v80 = v76;
        sub_22EF9AAC8((v77 > 1), v78 + 1, 1);
        v76 = v80;
        v75 = v94;
        v60 = v118;
      }

      *(v60 + 16) = v78 + 1;
      v79 = v60 + 16 * v78;
      *(v79 + 32) = v75;
      *(v79 + 40) = v76;
      ++v64;
    }

    while (v65 != v59);
    v53 = MEMORY[0x277D84F90];
LABEL_91:
    v54 = v99;
LABEL_92:
    v112 = v60;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E400, &unk_22EFBD180);
    sub_22EF70E20(&qword_27DA9E408, &qword_27DA9E400, &unk_22EFBD180, MEMORY[0x277D83958]);
    v81 = sub_22EFB646C();
    v83 = v82;
    sub_22EF708C8(v57, v56);

    v52 = v105;
    v119 = v105;
    v85 = *(v105 + 16);
    v84 = *(v105 + 24);
    if (v85 >= v84 >> 1)
    {
      sub_22EF9AAC8((v84 > 1), v85 + 1, 1);
      v52 = v119;
    }

    v51 = v103 + 1;
    *(v52 + 16) = v85 + 1;
    v86 = v52 + 16 * v85;
    *(v86 + 32) = v81;
    *(v86 + 40) = v83;
  }

  while (v103 + 1 != v54);
  v6 = v96;
  v8 = v97;
LABEL_97:
  v87 = MEMORY[0x2318FB2C0](v52, MEMORY[0x277D837D0]);
  v89 = v88;

  MEMORY[0x2318FB260](v87, v89);

  MEMORY[0x2318FB260](10, 0xE100000000000000);
  MEMORY[0x2318FB260](v6, v8);

  MEMORY[0x2318FB260](0x646F437466696873, 0xED000020203A7365);
  v90 = MEMORY[0x2318FB2C0](a4, MEMORY[0x277D84B78]);
  MEMORY[0x2318FB260](v90);

  return v120;
}

BOOL sub_22EF8F6AC(uint64_t *a1, unint64_t *a2)
{
  v4 = *a1;
  v5 = *a2;
  switch(v4)
  {
    case 0:
      return !v5;
    case 1:
      return v5 == 1;
    case 2:
      return v5 == 2;
  }

  if (v5 < 3)
  {
    return 0;
  }

  v8 = a2[1];
  v7 = a2[2];
  v10 = a1[1];
  v9 = a1[2];
  return (sub_22EF8F768(v4, v5) & 1) != 0 && (sub_22EF8F768(v10, v8) & 1) != 0 && (sub_22EF8FB74(v9, v7) & 1) != 0;
}

uint64_t sub_22EF8F768(uint64_t a1, uint64_t a2)
{
  v33[3] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = 0;
    v4 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v7 = *(v4 - 1);
      v6 = *v4;
      v9 = *(i - 1);
      v8 = *i;
      v10 = *v4 >> 62;
      v11 = *i >> 62;
      if (v10 == 3)
      {
        break;
      }

      if (v10 > 1)
      {
        if (v10 == 2)
        {
          v20 = *(v7 + 16);
          v19 = *(v7 + 24);
          v17 = __OFSUB__(v19, v20);
          v13 = v19 - v20;
          if (v17)
          {
            goto LABEL_62;
          }

          goto LABEL_28;
        }

        v13 = 0;
        if (v11 <= 1)
        {
          goto LABEL_29;
        }
      }

      else if (v10)
      {
        LODWORD(v13) = HIDWORD(v7) - v7;
        if (__OFSUB__(HIDWORD(v7), v7))
        {
          goto LABEL_63;
        }

        v13 = v13;
        if (v11 <= 1)
        {
LABEL_29:
          if (v11)
          {
            LODWORD(v18) = HIDWORD(v9) - v9;
            if (__OFSUB__(HIDWORD(v9), v9))
            {
              __break(1u);
LABEL_61:
              __break(1u);
LABEL_62:
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
            }

            v18 = v18;
          }

          else
          {
            v18 = BYTE6(v8);
          }

          goto LABEL_33;
        }
      }

      else
      {
        v13 = BYTE6(v6);
        if (v11 <= 1)
        {
          goto LABEL_29;
        }
      }

LABEL_22:
      if (v11 != 2)
      {
        if (v13)
        {
          return 0;
        }

        goto LABEL_6;
      }

      v16 = *(v9 + 16);
      v15 = *(v9 + 24);
      v17 = __OFSUB__(v15, v16);
      v18 = v15 - v16;
      if (v17)
      {
        goto LABEL_61;
      }

LABEL_33:
      if (v13 != v18)
      {
        return 0;
      }

      if (v13 < 1)
      {
        goto LABEL_6;
      }

      if (v10 > 1)
      {
        if (v10 == 2)
        {
          v31 = v3;
          v21 = *(v7 + 16);
          v30 = *(v7 + 24);
          sub_22EF70B68(v7, v6);
          sub_22EF70B68(v9, v8);
          v22 = sub_22EFB603C();
          if (v22)
          {
            v23 = sub_22EFB605C();
            if (__OFSUB__(v21, v23))
            {
              goto LABEL_66;
            }

            v22 += v21 - v23;
          }

          if (__OFSUB__(v30, v21))
          {
            goto LABEL_65;
          }

          sub_22EFB604C();
          v24 = v22;
          v25 = v9;
          v26 = v8;
          v3 = v31;
          goto LABEL_54;
        }

        memset(v33, 0, 14);
        sub_22EF70B68(v7, v6);
        sub_22EF70B68(v9, v8);
      }

      else
      {
        if (v10)
        {
          if (v7 >> 32 < v7)
          {
            goto LABEL_64;
          }

          sub_22EF70B68(v7, v6);
          sub_22EF70B68(v9, v8);
          v27 = sub_22EFB603C();
          if (v27)
          {
            v28 = sub_22EFB605C();
            if (__OFSUB__(v7, v28))
            {
              goto LABEL_67;
            }

            v27 += v7 - v28;
          }

          sub_22EFB604C();
          v24 = v27;
          v25 = v9;
          v26 = v8;
LABEL_54:
          sub_22EF92D44(v24, v25, v26, v33);
          sub_22EF708C8(v9, v8);
          sub_22EF708C8(v7, v6);
          if ((v33[0] & 1) == 0)
          {
            return 0;
          }

          goto LABEL_6;
        }

        v33[0] = *(v4 - 1);
        LOWORD(v33[1]) = v6;
        BYTE2(v33[1]) = BYTE2(v6);
        BYTE3(v33[1]) = BYTE3(v6);
        BYTE4(v33[1]) = BYTE4(v6);
        BYTE5(v33[1]) = BYTE5(v6);
        sub_22EF70B68(v7, v6);
        sub_22EF70B68(v9, v8);
      }

      sub_22EF92D44(v33, v9, v8, &v32);
      sub_22EF708C8(v9, v8);
      sub_22EF708C8(v7, v6);
      if (!v32)
      {
        return 0;
      }

LABEL_6:
      v4 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    if (v7)
    {
      v12 = 0;
    }

    else
    {
      v12 = v6 == 0xC000000000000000;
    }

    v13 = 0;
    v14 = v12 && *i >> 62 == 3;
    if (v14 && !v9 && v8 == 0xC000000000000000)
    {
      goto LABEL_6;
    }

LABEL_28:
    if (v11 <= 1)
    {
      goto LABEL_29;
    }

    goto LABEL_22;
  }

  return 1;
}

uint64_t sub_22EF8FB74(uint64_t result, uint64_t a2)
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

uint64_t sub_22EF8FBE0(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  if ((sub_22EF8F768(*a1, *a2) & 1) == 0 || (sub_22EF8F768(v2, v4) & 1) == 0)
  {
    return 0;
  }

  return sub_22EF8FB74(v3, v5);
}

id sub_22EF8FC60(uint64_t a1, uint64_t a2)
{
  result = [objc_allocWithZone(type metadata accessor for ExpressMode(a1 a2))];
  qword_281477D70 = result;
  return result;
}

uint64_t sub_22EF8FC90()
{
  if (qword_27DA9E398 != -1)
  {
    swift_once();
  }

  qword_27DA9E698 = qword_27DA9E6A0;
}

uint64_t sub_22EF8FCF4()
{
  if (*(v0 + OBJC_IVAR____TtC24AppletTranslationLibrary11ExpressMode_internalBuild) != 1)
  {
    return 0;
  }

  if ([*(v0 + OBJC_IVAR____TtC24AppletTranslationLibrary11ExpressMode_userDefaults) objectForKey_])
  {
    sub_22EFB663C();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5[0] = v3;
  v5[1] = v4;
  if (!*(&v4 + 1))
  {
    sub_22EF7CFF8(v5, &qword_27DA9E4B0, &qword_22EFBBE60);
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E400, &unk_22EFBD180);
  if (swift_dynamicCast())
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

void sub_22EF8FDE8(void *a1)
{
  v2 = v1;
  v45[1] = *MEMORY[0x277D85DE8];
  if ((byte_27DAA0408 & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E430, &unk_22EFBD190);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_22EFBCE00;
    *(v4 + 32) = -3200;
    *(v4 + 34) = 2;
    v5 = v2[OBJC_IVAR____TtC24AppletTranslationLibrary11ExpressMode_internalBuild];
    if (v5 == 1 && ([*&v2[OBJC_IVAR____TtC24AppletTranslationLibrary11ExpressMode_userDefaults] BOOLForKey_] & 1) != 0)
    {
      v6 = 90;
    }

    else
    {
      v6 = -91;
    }

    *(v4 + 35) = v6;
    v7 = sub_22EFAB164(v4);
    v9 = v8;

    v10 = sub_22EFB61BC();
    v45[0] = 0;
    v11 = [a1 transceive:v10 error:v45];

    v12 = v45[0];
    if (v11)
    {
      v13 = sub_22EFB61DC();
      sub_22EF708C8(v13, v14);
    }

    else
    {
      v15 = v12;
      v16 = sub_22EFB60EC();

      swift_willThrow();
    }

    byte_27DAA0408 = 1;
    if (qword_27DA9E058 != -1)
    {
      swift_once();
    }

    v17 = sub_22EFB626C();
    __swift_project_value_buffer(v17, qword_27DAA03B8);
    v18 = v2;
    v19 = sub_22EFB624C();
    v20 = sub_22EFB65EC();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 67109120;
      v22 = v5 && ([*&v18[OBJC_IVAR____TtC24AppletTranslationLibrary11ExpressMode_userDefaults] BOOLForKey_] & 1) != 0;
      *(v21 + 4) = v22;

      _os_log_impl(&dword_22EEF5000, v19, v20, "Configured express debug : enabled %{BOOL}d", v21, 8u);
      MEMORY[0x2318FC200](v21, -1, -1);
    }

    else
    {
    }

    sub_22EF708C8(v7, v9);
  }

  if (v2[OBJC_IVAR____TtC24AppletTranslationLibrary11ExpressMode_internalBuild] == 1 && [*&v2[OBJC_IVAR____TtC24AppletTranslationLibrary11ExpressMode_userDefaults] BOOLForKey_])
  {
    v23 = sub_22EFAB164(&unk_2843B6D60);
    v25 = v24;
    v26 = sub_22EFB61BC();
    v45[0] = 0;
    v27 = [a1 transceive:v26 error:v45];

    v28 = v45[0];
    if (v27)
    {
      v29 = sub_22EFB61DC();
      v31 = v30;
    }

    else
    {
      v32 = v28;
      v33 = sub_22EFB60EC();

      swift_willThrow();
      v29 = 0;
      v31 = 0xF000000000000000;
    }

    if (qword_27DA9E058 != -1)
    {
      swift_once();
    }

    v34 = sub_22EFB626C();
    __swift_project_value_buffer(v34, qword_27DAA03B8);
    sub_22EF70CB0(v29, v31);
    v35 = sub_22EFB624C();
    v36 = sub_22EFB65EC();
    sub_22EF708B4(v29, v31);
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v45[0] = v38;
      *v37 = 136315138;
      if (v31 >> 60 == 15)
      {
        v39 = 0xE700000000000000;
        v40 = 0x3E726F7272653CLL;
      }

      else
      {
        v44 = v25;
        sub_22EF83154(v29, v31);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E400, &unk_22EFBD180);
        sub_22EF70E20(&qword_27DA9E408, &qword_27DA9E400, &unk_22EFBD180, MEMORY[0x277D83958]);
        v41 = sub_22EFB646C();
        v39 = v42;

        v40 = v41;
        v25 = v44;
      }

      v43 = sub_22EF9447C(v40, v39, v45);

      *(v37 + 4) = v43;
      _os_log_impl(&dword_22EEF5000, v35, v36, "Express Mode Debug Log: %s", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v38);
      MEMORY[0x2318FC200](v38, -1, -1);
      MEMORY[0x2318FC200](v37, -1, -1);
      sub_22EF708C8(v23, v25);
      sub_22EF708B4(v29, v31);
    }

    else
    {
      sub_22EF708C8(v23, v25);

      sub_22EF708B4(v29, v31);
    }
  }
}

uint64_t sub_22EF90388()
{
  v1 = *v0;
  sub_22EFB68DC();
  MEMORY[0x2318FB660](v1);
  return sub_22EFB691C();
}

uint64_t sub_22EF903FC(uint64_t a1)
{
  v2 = *v1;
  sub_22EFB68DC();
  MEMORY[0x2318FB660](v2);
  return sub_22EFB691C();
}

uint64_t sub_22EF90440(uint64_t a1, uint64_t a2)
{
  v4 = sub_22EFAB164(a1);
  v6 = v5;
  v27 = *v2;
  v24 = v4;
  v25 = v5;
  v7 = MEMORY[0x277CC9318];
  v8 = MEMORY[0x277CC9300];
  v22 = MEMORY[0x277CC9318];
  v23 = MEMORY[0x277CC9300];
  v21 = *v2;
  v9 = __swift_project_boxed_opaque_existential_1(&v21, MEMORY[0x277CC9318]);
  v10 = *v9;
  v11 = v9[1];
  sub_22EF70B68(v4, v6);
  sub_22EFA8080(&v27, v26);
  sub_22EF9F87C(v10, v11, &v24);
  sub_22EF708C8(v4, v6);
  __swift_destroy_boxed_opaque_existential_0Tm(&v21);
  v12 = v24;
  v13 = v25;
  v14 = sub_22EFAB164(a2);
  v16 = v15;
  v26[0] = v12;
  v26[1] = v13;
  v22 = v7;
  v23 = v8;
  *&v21 = v14;
  *(&v21 + 1) = v15;
  v17 = __swift_project_boxed_opaque_existential_1(&v21, v7);
  v18 = *v17;
  v19 = v17[1];
  sub_22EF70B68(v12, v13);
  sub_22EF70B68(v14, v16);
  sub_22EF9F87C(v18, v19, v26);
  sub_22EF708C8(v14, v16);
  sub_22EF708C8(v12, v13);
  __swift_destroy_boxed_opaque_existential_0Tm(&v21);
  return v26[0];
}

uint64_t sub_22EF90580()
{
  v1 = *(v0 + 32);
  sub_22EFB68DC();
  sub_22EFB61EC();
  sub_22EFB61EC();
  MEMORY[0x2318FB660](v1);
  return sub_22EFB691C();
}

uint64_t sub_22EF90600(uint64_t a1)
{
  v2 = *(v1 + 32);
  sub_22EFB61EC();
  sub_22EFB61EC();
  return MEMORY[0x2318FB660](v2);
}

uint64_t sub_22EF90654(uint64_t a1)
{
  v2 = *(v1 + 32);
  sub_22EFB68DC();
  sub_22EFB61EC();
  sub_22EFB61EC();
  MEMORY[0x2318FB660](v2);
  return sub_22EFB691C();
}

uint64_t sub_22EF906D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  if (!sub_22EF6E8C0(*a1, *(a1 + 8), *a2, *(a2 + 8)))
  {
    return 0;
  }

  if (sub_22EF6E8C0(v2, v3, v5, v6))
  {
    return v4 ^ v7 ^ 1u;
  }

  return 0;
}

void *sub_22EF90750(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ExpressMode.PTAExpressModeManager(0, a2);
  result = swift_allocObject();
  v3 = MEMORY[0x277D84FA0];
  result[2] = MEMORY[0x277D84FA0];
  result[3] = v3;
  result[4] = v3;
  qword_27DA9E6A0 = result;
  return result;
}

uint64_t sub_22EF90790(unint64_t a1, char a2, uint64_t a3)
{
  v3 = a1;
  v69 = *MEMORY[0x277D85DE8];
  v62 = MEMORY[0x277D84FA0];
  if (a1 >> 62)
  {
    goto LABEL_89;
  }

  v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    return MEMORY[0x277D84FA0];
  }

LABEL_3:
  v5 = 0;
  v56 = v3 & 0xC000000000000001;
  v49 = v3 + 32;
  v50 = v3 & 0xFFFFFFFFFFFFFF8;
  v53 = a3 & 1;
  v52 = v3;
  v51 = v4;
  while (1)
  {
    while (1)
    {
      if (v56)
      {
        v6 = MEMORY[0x2318FB480](v5, v3);
        v7 = __OFADD__(v5++, 1);
        if (v7)
        {
          goto LABEL_84;
        }
      }

      else
      {
        if (v5 >= *(v50 + 16))
        {
          goto LABEL_86;
        }

        v6 = *(v49 + 8 * v5);

        v7 = __OFADD__(v5++, 1);
        if (v7)
        {
          goto LABEL_84;
        }
      }

      v8 = v6[4];
      v9 = v6[5];
      v10 = v9 >> 62;
      if ((v9 >> 62) > 1)
      {
        if (v10 != 2)
        {
          v12 = MEMORY[0x277D84F90];
          goto LABEL_51;
        }

        v57 = v6;
        v14 = *(v8 + 16);
        v13 = *(v8 + 24);
        v11 = v13 - v14;
        if (__OFSUB__(v13, v14))
        {
          goto LABEL_87;
        }

        if (v11)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v57 = v6;
        if (!v10)
        {
          v11 = BYTE6(v9);
          if (BYTE6(v9))
          {
            goto LABEL_18;
          }

          goto LABEL_14;
        }

        v16 = HIDWORD(v8) - v8;
        if (__OFSUB__(HIDWORD(v8), v8))
        {
          goto LABEL_88;
        }

        v11 = v16;
        if (v16)
        {
LABEL_18:
          v60 = MEMORY[0x277D84F90];
          sub_22EF9AAC8(0, v11 & ~(v11 >> 63), 0);
          if (v10)
          {
            if (v10 == 2)
            {
              v15 = *(v8 + 16);
            }

            else
            {
              v15 = v8;
            }
          }

          else
          {
            v15 = 0;
          }

          v59 = v15;
          if (v11 < 0)
          {
            goto LABEL_85;
          }

          v55 = v5;
          v17 = 0;
          v12 = v60;
          v58 = &v63 + v15;
          while (2)
          {
            if (v17 >= v11)
            {
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
LABEL_84:
              __break(1u);
LABEL_85:
              __break(1u);
LABEL_86:
              __break(1u);
LABEL_87:
              __break(1u);
LABEL_88:
              __break(1u);
LABEL_89:
              v46 = a3;
              v47 = sub_22EFB67CC();
              a3 = v46;
              v4 = v47;
              if (!v47)
              {
                return MEMORY[0x277D84FA0];
              }

              goto LABEL_3;
            }

            v3 = v17 + 1;
            if (__OFADD__(v17, 1))
            {
              goto LABEL_77;
            }

            v18 = v59 + v17;
            if (v10 != 2)
            {
              if (v10 == 1)
              {
                if (v18 < v8 || v18 >= v8 >> 32)
                {
                  goto LABEL_80;
                }

                v19 = sub_22EFB603C();
                if (!v19)
                {
                  __break(1u);
LABEL_92:
                  __break(1u);
                }

                v20 = v19;
                v21 = sub_22EFB605C();
                v22 = v18 - v21;
                if (__OFSUB__(v18, v21))
                {
                  goto LABEL_82;
                }

LABEL_43:
                v25 = *(v20 + v22);
              }

              else
              {
                if (v18 >= BYTE6(v9))
                {
                  goto LABEL_78;
                }

                v63 = v8;
                LOWORD(v64) = v9;
                BYTE2(v64) = BYTE2(v9);
                BYTE3(v64) = BYTE3(v9);
                BYTE4(v64) = BYTE4(v9);
                BYTE5(v64) = BYTE5(v9);
                v25 = v58[v17];
              }

              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E428, &unk_22EFBBC50);
              v26 = swift_allocObject();
              *(v26 + 16) = xmmword_22EFBB8C0;
              *(v26 + 56) = MEMORY[0x277D84B78];
              *(v26 + 64) = MEMORY[0x277D84BC0];
              *(v26 + 32) = v25;
              v27 = sub_22EFB649C();
              v61 = v12;
              v30 = *(v12 + 16);
              v29 = *(v12 + 24);
              if (v30 >= v29 >> 1)
              {
                v48 = v27;
                v32 = v28;
                sub_22EF9AAC8((v29 > 1), v30 + 1, 1);
                v28 = v32;
                v27 = v48;
                v12 = v61;
              }

              *(v12 + 16) = v30 + 1;
              v31 = v12 + 16 * v30;
              *(v31 + 32) = v27;
              *(v31 + 40) = v28;
              ++v17;
              LODWORD(v10) = v9 >> 62;
              if (v3 == v11)
              {
                v4 = v51;
                v3 = v52;
                v5 = v55;
                goto LABEL_50;
              }

              continue;
            }

            break;
          }

          if (v18 < *(v8 + 16))
          {
            goto LABEL_79;
          }

          if (v18 >= *(v8 + 24))
          {
            goto LABEL_81;
          }

          v23 = sub_22EFB603C();
          if (!v23)
          {
            goto LABEL_92;
          }

          v20 = v23;
          v24 = sub_22EFB605C();
          v22 = v18 - v24;
          if (__OFSUB__(v18, v24))
          {
            goto LABEL_83;
          }

          goto LABEL_43;
        }
      }

LABEL_14:
      v12 = MEMORY[0x277D84F90];
LABEL_50:
      v6 = v57;
LABEL_51:
      v63 = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E400, &unk_22EFBD180);
      sub_22EF70E20(&qword_27DA9E408, &qword_27DA9E400, &unk_22EFBD180, MEMORY[0x277D83958]);
      sub_22EFB646C();

      v33 = sub_22EFB680C();

      if (v33)
      {
        if (v33 == 1)
        {
          v34 = 0xD000000000000018;
          v35 = "A00000085802010100000001";
        }

        else
        {
          if (v33 != 2)
          {
            goto LABEL_4;
          }

          v34 = 0xD000000000000012;
          v35 = "A00000085801010100000001";
        }
      }

      else
      {
        v34 = 0xD000000000000018;
        v35 = "Pin Max retries exhausted";
      }

      if (a2)
      {
        if (a2 == 1)
        {
          v36 = 0xD000000000000018;
        }

        else
        {
          v36 = 0xD000000000000012;
        }

        v37 = "A00000085802010100000001";
        if (a2 != 1)
        {
          v37 = "A00000085801010100000001";
        }
      }

      else
      {
        v36 = 0xD000000000000018;
        v37 = "Pin Max retries exhausted";
      }

      if (v34 == v36 && (v35 | 0x8000000000000000) == (v37 | 0x8000000000000000))
      {

        break;
      }

      v38 = sub_22EFB684C();

      if (v38)
      {
        break;
      }

LABEL_4:

      if (v5 == v4)
      {
        return v62;
      }
    }

    v39 = v6[7];
    if (v39 >> 60 == 15)
    {

      sub_22EF70EBC(0, &qword_27DA9E448, 0x277CCA9B8);
      sub_22EF74470(0xD00000000000002ALL, 0x800000022EFC6E60, 8, 0);
      swift_willThrow();
    }

    v40 = v6[6];
    v41 = v6[9];
    if (v41 >> 60 == 15)
    {
      break;
    }

    v42 = v6[8];
    v67[0] = v6[6];
    v67[1] = v39;
    v67[2] = v42;
    v67[3] = v41;
    v68 = v53;
    sub_22EF70CB0(v40, v39);
    sub_22EF70CB0(v42, v41);
    sub_22EF70CB0(v40, v39);
    sub_22EF70CB0(v42, v41);
    sub_22EF9C258(&v63, v67);

    sub_22EF708B4(v42, v41);
    sub_22EF708B4(v40, v39);
    v43 = v65;
    v44 = v66;
    sub_22EF708C8(v63, v64);
    sub_22EF708C8(v43, v44);
    if (v5 == v4)
    {
      return v62;
    }
  }

  sub_22EF70B68(v40, v39);

  sub_22EF70EBC(0, &qword_27DA9E448, 0x277CCA9B8);
  sub_22EF74470(0xD00000000000002DLL, 0x800000022EFC6E90, 8, 0);
  swift_willThrow();
  sub_22EF708B4(v40, v39);
}

uint64_t sub_22EF90F34(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  for (i = (v4 + 63) >> 6; v6; result = sub_22EF708C8(v12, v13))
  {
    v8 = v2;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = *(v1 + 48) + 40 * (v9 | (v8 << 6));
    LOBYTE(v9) = *(v10 + 32);
    v11 = *(v10 + 16);
    v15[0] = *v10;
    v15[1] = v11;
    v16 = v9;
    sub_22EFA8018(v15, v14);
    sub_22EF9C258(v14, v15);
    v12 = v14[2];
    v13 = v14[3];
    sub_22EF708C8(v14[0], v14[1]);
  }

  while (1)
  {
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v8 >= i)
    {
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_22EF91050(char a1, id a2)
{
  v127 = *MEMORY[0x277D85DE8];
  v4 = 0xD000000000000018;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 16;
    }

    else
    {
      v5 = 32;
    }

    if (a1 == 1)
    {
      v6 = "A00000085802010100000001";
    }

    else
    {
      v4 = 0xD000000000000012;
      v6 = "A00000085801010100000001";
    }
  }

  else
  {
    v6 = "Pin Max retries exhausted";
    v5 = 24;
  }

  v7 = *(v2 + v5);

  v8 = sub_22EF7E630(v4, v6 | 0x8000000000000000);
  if (v9 >> 60 == 15)
  {
    goto LABEL_96;
  }

  v10 = v8;
  v11 = v9;
  v12 = sub_22EFB61BC();
  v13 = SelectByNameCmd(v12);

  v14 = sub_22EFB61DC();
  v16 = v15;

  v17 = sub_22EFB61BC();
  sub_22EF708C8(v14, v16);
  v122 = 0;
  v18 = [a2 transceiveAndCheckSW:v17 error:&v122];

  v19 = v122;
  if (!v18)
  {
    v97 = v19;

    sub_22EFB60EC();

    swift_willThrow();
    sub_22EF708B4(v10, v11);
    return;
  }

  v20 = sub_22EFB61DC();
  sub_22EF708C8(v20, v21);

  v22 = sub_22EFAB164(&unk_2843B6F08);
  v24 = v23;
  v25 = sub_22EFB61BC();
  v122 = 0;
  v26 = [a2 transceiveAndCheckSW:v25 error:&v122];

  v27 = v122;
  if (!v26)
  {
    v98 = v27;

    sub_22EFB60EC();

    swift_willThrow();
    sub_22EF708B4(v10, v11);
    sub_22EF708C8(v22, v24);
    return;
  }

  v103 = v24;
  v28 = sub_22EFB61DC();
  sub_22EF708C8(v28, v29);

  v30 = 0;
  v105 = v7 + 56;
  v31 = 1 << *(v7 + 32);
  v32 = -1;
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  v33 = v32 & *(v7 + 56);
  v34 = (v31 + 63) >> 6;
  v35 = v11;
  v104 = v11;
  v110 = a2;
  v111 = v10;
  v108 = v22;
  v109 = v7;
  v106 = v34;
  while (2)
  {
    while (2)
    {
      while (2)
      {
        if (!v33)
        {
          do
          {
            v36 = v30 + 1;
            if (__OFADD__(v30, 1))
            {
              __break(1u);
              goto LABEL_82;
            }

            if (v36 >= v34)
            {
              sub_22EF708B4(v10, v35);
              sub_22EF708C8(v22, v103);

              return;
            }

            v33 = *(v105 + 8 * v36);
            ++v30;
          }

          while (!v33);
          v30 = v36;
        }

        v37 = __clz(__rbit64(v33));
        v33 &= v33 - 1;
        v38 = *(v7 + 48) + 40 * (v37 | (v30 << 6));
        v40 = *v38;
        v39 = *(v38 + 16);
        v126 = *(v38 + 32);
        v125[0] = v40;
        v125[1] = v39;
        if (v126)
        {
          continue;
        }

        break;
      }

      v112 = v33;
      sub_22EFA8018(v125, &v122);
      if (qword_27DA9E058 != -1)
      {
        swift_once();
      }

      v41 = sub_22EFB626C();
      __swift_project_value_buffer(v41, qword_27DAA03B8);
      sub_22EFA8018(v125, &v122);
      v42 = sub_22EFB624C();
      v43 = sub_22EFB65EC();
      sub_22EFA8050(v125);
      v107 = v43;
      if (!os_log_type_enabled(v42, v43))
      {
        goto LABEL_65;
      }

      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v121 = v45;
      buf = v44;
      *v44 = 136315138;
      v119 = *(&v125[0] + 1);
      v46 = *&v125[0];
      v47 = *(&v125[0] + 1) >> 62;
      log = v42;
      v100 = v45;
      if ((*(&v125[0] + 1) >> 62) > 1)
      {
        if (v47 != 2)
        {
          v54 = MEMORY[0x277D84F90];
          goto LABEL_64;
        }

        v99 = v30;
        v50 = *(*&v125[0] + 16);
        v49 = *(*&v125[0] + 24);
        v48 = v49 - v50;
        if (__OFSUB__(v49, v50))
        {
          goto LABEL_92;
        }

        if (!v48)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v99 = v30;
        if (!v47)
        {
          v48 = BYTE14(v125[0]);
          if (!BYTE14(v125[0]))
          {
            goto LABEL_36;
          }

          goto LABEL_31;
        }

        v53 = DWORD1(v125[0]) - LODWORD(v125[0]);
        if (__OFSUB__(DWORD1(v125[0]), v125[0]))
        {
LABEL_93:
          __break(1u);
LABEL_94:
          __break(1u);
LABEL_95:
          __break(1u);
LABEL_96:
          __break(1u);
        }

        v48 = v53;
        if (!v53)
        {
LABEL_36:
          v54 = MEMORY[0x277D84F90];
          goto LABEL_63;
        }
      }

LABEL_31:
      v120 = MEMORY[0x277D84F90];
      v117 = *(&v125[0] + 1) >> 62;
      sub_22EF9AAC8(0, v48 & ~(v48 >> 63), 0);
      v51 = v117;
      v115 = v46;
      if (v117)
      {
        if (v117 == 2)
        {
          v52 = *(v46 + 16);
        }

        else
        {
          v52 = v46;
        }
      }

      else
      {
        v52 = 0;
      }

      v118 = v52;
      if (v48 < 0)
      {
LABEL_91:
        __break(1u);
LABEL_92:
        __break(1u);
        goto LABEL_93;
      }

      v55 = 0;
      v114 = v46 >> 32;
      v56 = v119;
      v54 = v120;
      v113 = &v122 + v52;
      v116 = v46;
      do
      {
        if (v55 >= v48)
        {
          __break(1u);
LABEL_84:
          __break(1u);
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
LABEL_90:
          __break(1u);
          goto LABEL_91;
        }

        v57 = v55 + 1;
        if (__OFADD__(v55, 1))
        {
          goto LABEL_84;
        }

        v58 = v118 + v55;
        if (v51 == 2)
        {
          if (v58 < *(v46 + 16))
          {
            goto LABEL_85;
          }

          if (v58 >= *(v46 + 24))
          {
            goto LABEL_88;
          }

          v63 = sub_22EFB603C();
          if (!v63)
          {
            goto LABEL_95;
          }

          v60 = v63;
          v64 = sub_22EFB605C();
          v62 = v58 - v64;
          if (__OFSUB__(v58, v64))
          {
            goto LABEL_90;
          }

          goto LABEL_56;
        }

        if (v51 == 1)
        {
          if (v58 < v115 || v58 >= v114)
          {
            goto LABEL_87;
          }

          v59 = sub_22EFB603C();
          if (!v59)
          {
            goto LABEL_94;
          }

          v60 = v59;
          v61 = sub_22EFB605C();
          v62 = v58 - v61;
          if (__OFSUB__(v58, v61))
          {
            goto LABEL_89;
          }

LABEL_56:
          v65 = *(v60 + v62);
          goto LABEL_59;
        }

        if (v58 >= BYTE6(v119))
        {
          goto LABEL_86;
        }

        v122 = v46;
        v123 = v56;
        v124 = WORD2(v56);
        v65 = v113[v55];
LABEL_59:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E428, &unk_22EFBBC50);
        v66 = swift_allocObject();
        *(v66 + 16) = xmmword_22EFBB8C0;
        *(v66 + 56) = MEMORY[0x277D84B78];
        *(v66 + 64) = MEMORY[0x277D84BC0];
        *(v66 + 32) = v65;
        v67 = sub_22EFB649C();
        v69 = v68;
        v71 = v120[2];
        v70 = v120[3];
        if (v71 >= v70 >> 1)
        {
          sub_22EF9AAC8((v70 > 1), v71 + 1, 1);
        }

        v120[2] = v71 + 1;
        v72 = &v120[2 * v71];
        v72[4] = v67;
        v72[5] = v69;
        ++v55;
        v46 = v116;
        v51 = v117;
        v56 = v119;
      }

      while (v57 != v48);
      v35 = v104;
LABEL_63:
      v30 = v99;
LABEL_64:
      v122 = v54;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E400, &unk_22EFBD180);
      sub_22EF70E20(&qword_27DA9E408, &qword_27DA9E400, &unk_22EFBD180, MEMORY[0x277D83958]);
      v73 = sub_22EFB646C();
      v75 = v74;

      v76 = sub_22EF9447C(v73, v75, &v121);

      *(buf + 4) = v76;
      v42 = log;
      _os_log_impl(&dword_22EEF5000, log, v107, "Setup Endpoint for persistent CL visibility over Identifier: %s", buf, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v100);
      MEMORY[0x2318FC200](v100, -1, -1);
      MEMORY[0x2318FC200](buf, -1, -1);
LABEL_65:

      v7 = sub_22EF90440(&unk_2843B6EB8, &unk_2843B6EE0);
      v78 = v77;
      v79 = sub_22EFB61BC();
      if (qword_27DA9E360 != -1)
      {
        swift_once();
      }

      sub_22EF70EBC(0, &qword_27DA9E3F8, 0x277CCABB0);
      v80 = sub_22EFB653C();
      v122 = 0;
      a2 = [v110 transceiveAndCheckSW:v79 inArray:v80 error:&v122];

      v81 = v122;
      if (a2)
      {
        v82 = sub_22EFB61DC();
        v84 = v83;
        sub_22EF708C8(v7, v78);
        sub_22EFA8050(v125);
        sub_22EF708C8(v82, v84);

        v10 = v111;
        v33 = v112;
        v22 = v108;
        v7 = v109;
        v34 = v106;
        continue;
      }

      break;
    }

    v85 = v81;
    v86 = sub_22EFB60EC();

    swift_willThrow();
    v122 = v86;
    v87 = v86;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E760, &unk_22EFBD278);
    sub_22EF70EBC(0, &qword_27DA9E448, 0x277CCA9B8);
    if (swift_dynamicCast())
    {
      v35 = v78;
      v88 = v86;
      a2 = v121;
      v89 = [v121 domain];
      v90 = sub_22EFB648C();
      v92 = v91;

      if (v90 == 5002305 && v92 == 0xE300000000000000)
      {

        goto LABEL_74;
      }

      v93 = sub_22EFB684C();

      if (v93)
      {
LABEL_74:

        v94 = sub_22EFB624C();
        v95 = sub_22EFB65CC();
        if (os_log_type_enabled(v94, v95))
        {
          v96 = swift_slowAlloc();
          *v96 = 0;
          _os_log_impl(&dword_22EEF5000, v94, v95, "Setup Failed.. continue", v96, 2u);
          MEMORY[0x2318FC200](v96, -1, -1);
        }

        sub_22EF708C8(v7, v35);

        sub_22EFA8050(v125);
        v10 = v111;
        v33 = v112;
        v22 = v108;
        v7 = v109;
        v34 = v106;
        v35 = v104;
        continue;
      }

LABEL_82:

      sub_22EF708B4(v111, v104);
      sub_22EF708C8(v108, v103);
      sub_22EF708C8(v7, v35);

      sub_22EFA8050(v125);
    }

    else
    {

      sub_22EF708B4(v111, v35);
      sub_22EF708C8(v108, v103);
      sub_22EF708C8(v7, v78);
      sub_22EFA8050(v125);
    }

    break;
  }
}

void sub_22EF91B70(char a1, void *a2)
{
  v128 = *MEMORY[0x277D85DE8];
  v4 = 0xD000000000000018;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = "A00000085802010100000001";
    }

    else
    {
      v4 = 0xD000000000000012;
      v5 = "A00000085801010100000001";
    }
  }

  else
  {
    v5 = "Pin Max retries exhausted";
  }

  v6 = *(v2 + 32);

  v7 = sub_22EF7E630(v4, v5 | 0x8000000000000000);
  if (v8 >> 60 == 15)
  {
    goto LABEL_93;
  }

  v9 = v7;
  v10 = v8;
  v11 = sub_22EFB61BC();
  v12 = SelectByNameCmd(v11);

  v13 = sub_22EFB61DC();
  v15 = v14;

  v16 = sub_22EFB61BC();
  sub_22EF708C8(v13, v15);
  v123 = 0;
  v17 = [a2 transceiveAndCheckSW:v16 error:&v123];

  v18 = v123;
  if (!v17)
  {
    v96 = v18;

    sub_22EFB60EC();

    swift_willThrow();
    sub_22EF708B4(v9, v10);
    return;
  }

  v19 = sub_22EFB61DC();
  sub_22EF708C8(v19, v20);

  v21 = sub_22EFAB164(&unk_2843B6F80);
  v23 = v22;
  v24 = sub_22EFB61BC();
  v123 = 0;
  v25 = [a2 transceiveAndCheckSW:v24 error:&v123];

  v26 = v123;
  if (!v25)
  {
    v97 = v26;

    sub_22EFB60EC();

    swift_willThrow();
    sub_22EF708B4(v9, v10);
    sub_22EF708C8(v21, v23);
    return;
  }

  v101 = v10;
  v27 = sub_22EFB61DC();
  sub_22EF708C8(v27, v28);

  v29 = 0;
  v30 = v6;
  v102 = v6 + 56;
  v31 = 1 << *(v6 + 32);
  v32 = -1;
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  v33 = v32 & *(v6 + 56);
  v34 = (v31 + 63) >> 6;
  v35 = v111;
  v108 = v9;
  v109 = v30;
  v106 = v23;
  v107 = a2;
  v105 = v21;
  v103 = v34;
  while (2)
  {
    while (2)
    {
      if (v33)
      {
        goto LABEL_17;
      }

      do
      {
        v36 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          __break(1u);
          goto LABEL_78;
        }

        if (v36 >= v34)
        {
          sub_22EF708B4(v9, v101);
          sub_22EF708C8(v21, v23);

          return;
        }

        v33 = *(v102 + 8 * v36);
        ++v29;
      }

      while (!v33);
      v29 = v36;
LABEL_17:
      v37 = __clz(__rbit64(v33));
      v33 &= v33 - 1;
      v38 = *(v30 + 48) + 40 * (v37 | (v29 << 6));
      v40 = *v38;
      v39 = *(v38 + 16);
      v127 = *(v38 + 32);
      v126[0] = v40;
      v126[1] = v39;
      if (v127 != 1)
      {
        continue;
      }

      break;
    }

    v110 = v33;
    sub_22EFA8018(v126, &v123);
    if (qword_27DA9E058 != -1)
    {
      swift_once();
    }

    v41 = sub_22EFB626C();
    __swift_project_value_buffer(v41, qword_27DAA03B8);
    sub_22EFA8018(v126, &v123);
    v42 = sub_22EFB624C();
    v43 = sub_22EFB65EC();
    sub_22EFA8050(v126);
    v104 = v43;
    if (!os_log_type_enabled(v42, v43))
    {
      goto LABEL_60;
    }

    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v122 = v45;
    buf = v44;
    log = v42;
    *v44 = 136315138;
    v46 = *&v126[0];
    v47 = *(&v126[0] + 1) >> 62;
    v98 = v45;
    if ((*(&v126[0] + 1) >> 62) > 1)
    {
      if (v47 != 2)
      {
        goto LABEL_33;
      }

      v50 = *(*&v126[0] + 16);
      v49 = *(*&v126[0] + 24);
      v48 = v49 - v50;
      if (__OFSUB__(v49, v50))
      {
LABEL_89:
        __break(1u);
        goto LABEL_90;
      }

      if (!v48)
      {
        goto LABEL_33;
      }
    }

    else
    {
      if (!v47)
      {
        v48 = BYTE14(v126[0]);
        if (!BYTE14(v126[0]))
        {
          goto LABEL_33;
        }

        goto LABEL_28;
      }

      v53 = DWORD1(v126[0]) - LODWORD(v126[0]);
      if (__OFSUB__(DWORD1(v126[0]), v126[0]))
      {
LABEL_90:
        __break(1u);
LABEL_91:
        __break(1u);
LABEL_92:
        __break(1u);
LABEL_93:
        __break(1u);
      }

      v48 = v53;
      if (!v53)
      {
LABEL_33:
        v54 = MEMORY[0x277D84F90];
        goto LABEL_59;
      }
    }

LABEL_28:
    v118 = *(&v126[0] + 1);
    v121 = MEMORY[0x277D84F90];
    v119 = *(&v126[0] + 1) >> 62;
    sub_22EF9AAC8(0, v48 & ~(v48 >> 63), 0);
    v51 = v119;
    v115 = v46;
    if (v119)
    {
      if (v119 == 2)
      {
        v52 = *(v46 + 16);
      }

      else
      {
        v52 = v46;
      }
    }

    else
    {
      v52 = 0;
    }

    v120 = v52;
    v112 = v35;
    if (v48 < 0)
    {
LABEL_88:
      __break(1u);
      goto LABEL_89;
    }

    v55 = 0;
    v54 = v121;
    v56 = v118;
    v114 = v46 >> 32;
    v113 = &v123 + v52;
    v116 = v48;
    v117 = v46;
    do
    {
      if (v55 >= v48)
      {
        __break(1u);
LABEL_81:
        __break(1u);
LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);
LABEL_84:
        __break(1u);
LABEL_85:
        __break(1u);
LABEL_86:
        __break(1u);
LABEL_87:
        __break(1u);
        goto LABEL_88;
      }

      v57 = v55 + 1;
      if (__OFADD__(v55, 1))
      {
        goto LABEL_81;
      }

      v58 = v120 + v55;
      if (v51 == 2)
      {
        if (v58 < *(v46 + 16))
        {
          goto LABEL_82;
        }

        if (v58 >= *(v46 + 24))
        {
          goto LABEL_85;
        }

        v63 = sub_22EFB603C();
        if (!v63)
        {
          goto LABEL_92;
        }

        v60 = v63;
        v64 = sub_22EFB605C();
        v62 = v58 - v64;
        if (__OFSUB__(v58, v64))
        {
          goto LABEL_87;
        }

        goto LABEL_52;
      }

      if (v51 == 1)
      {
        if (v58 < v115 || v58 >= v114)
        {
          goto LABEL_84;
        }

        v59 = sub_22EFB603C();
        if (!v59)
        {
          goto LABEL_91;
        }

        v60 = v59;
        v61 = sub_22EFB605C();
        v62 = v58 - v61;
        if (__OFSUB__(v58, v61))
        {
          goto LABEL_86;
        }

LABEL_52:
        v65 = *(v60 + v62);
        goto LABEL_55;
      }

      if (v58 >= BYTE6(v118))
      {
        goto LABEL_83;
      }

      v123 = v46;
      v124 = v56;
      v125 = WORD2(v56);
      v65 = v113[v55];
LABEL_55:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E428, &unk_22EFBBC50);
      v66 = swift_allocObject();
      *(v66 + 16) = xmmword_22EFBB8C0;
      *(v66 + 56) = MEMORY[0x277D84B78];
      *(v66 + 64) = MEMORY[0x277D84BC0];
      *(v66 + 32) = v65;
      v67 = sub_22EFB649C();
      v69 = v68;
      v71 = v121[2];
      v70 = v121[3];
      if (v71 >= v70 >> 1)
      {
        sub_22EF9AAC8((v70 > 1), v71 + 1, 1);
      }

      v121[2] = v71 + 1;
      v72 = &v121[2 * v71];
      v72[4] = v67;
      v72[5] = v69;
      ++v55;
      v48 = v116;
      v46 = v117;
      v56 = v118;
      v51 = v119;
    }

    while (v57 != v116);
    v35 = v112;
LABEL_59:
    v123 = v54;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E400, &unk_22EFBD180);
    sub_22EF70E20(&qword_27DA9E408, &qword_27DA9E400, &unk_22EFBD180, MEMORY[0x277D83958]);
    v73 = sub_22EFB646C();
    v75 = v74;

    v76 = sub_22EF9447C(v73, v75, &v122);

    *(buf + 4) = v76;
    v42 = log;
    _os_log_impl(&dword_22EEF5000, log, v104, "Setup Endpoint for persistent BT visibility over Identifier: %s", buf, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v98);
    MEMORY[0x2318FC200](v98, -1, -1);
    MEMORY[0x2318FC200](buf, -1, -1);
LABEL_60:

    a2 = sub_22EF90440(&unk_2843B6F30, &unk_2843B6F58);
    v30 = v77;
    v78 = sub_22EFB61BC();
    if (qword_27DA9E360 != -1)
    {
      swift_once();
    }

    sub_22EF70EBC(0, &qword_27DA9E3F8, 0x277CCABB0);
    v79 = sub_22EFB653C();
    v123 = 0;
    v80 = [v107 transceiveAndCheckSW:v78 inArray:v79 error:&v123];

    v81 = v123;
    if (v80)
    {
      v82 = sub_22EFB61DC();
      v84 = v83;
      sub_22EF708C8(a2, v30);
      sub_22EFA8050(v126);
      sub_22EF708C8(v82, v84);

      goto LABEL_72;
    }

    v85 = v81;
    v86 = sub_22EFB60EC();

    swift_willThrow();
    v123 = v86;
    v87 = v86;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E760, &unk_22EFBD278);
    sub_22EF70EBC(0, &qword_27DA9E448, 0x277CCA9B8);
    if (swift_dynamicCast())
    {
      v9 = v122;
      v88 = [v122 domain];
      v89 = sub_22EFB648C();
      v91 = v90;

      if (v89 == 5002305 && v91 == 0xE300000000000000)
      {

LABEL_69:

        v93 = sub_22EFB624C();
        v94 = sub_22EFB65CC();
        if (os_log_type_enabled(v93, v94))
        {
          v95 = swift_slowAlloc();
          *v95 = 0;
          _os_log_impl(&dword_22EEF5000, v93, v94, "Setup Failed.. continue", v95, 2u);
          MEMORY[0x2318FC200](v95, -1, -1);
        }

        sub_22EF708C8(a2, v30);

        sub_22EFA8050(v126);
        v35 = 0;
LABEL_72:
        v9 = v108;
        v30 = v109;
        v21 = v105;
        v23 = v106;
        v34 = v103;
        v33 = v110;
        continue;
      }

      v92 = sub_22EFB684C();

      if (v92)
      {
        goto LABEL_69;
      }

LABEL_78:

      sub_22EF708B4(v108, v101);
      sub_22EF708C8(v105, v106);
      sub_22EF708C8(a2, v30);
    }

    else
    {

      sub_22EF708B4(v108, v101);
      sub_22EF708C8(v105, v106);
      sub_22EF708C8(a2, v30);
    }

    break;
  }

  sub_22EFA8050(v126);
}

uint64_t sub_22EF92638()
{

  return swift_deallocClassInstance();
}

id sub_22EF92680()
{
  v1 = v0;
  v2 = sub_22EFB648C();
  v4 = v3;
  v55 = v2;
  v56 = v3;
  v5 = sub_22EFB648C();
  v7 = v6;
  v57 = v5;
  v58 = v6;
  v54 = MEMORY[0x277D84F90];
  sub_22EF9AB68(0, 2, 0);
  v8 = v54;
  swift_bridgeObjectRetain_n();
  result = sub_22EF7E630(v2, v4);
  if (v10 >> 60 == 15)
  {
    goto LABEL_8;
  }

  v11 = result;
  v12 = v10;

  v14 = *(v54 + 16);
  v13 = *(v54 + 24);
  if (v14 >= v13 >> 1)
  {
    sub_22EF9AB68((v13 > 1), v14 + 1, 1);
    v8 = v54;
  }

  *(v8 + 16) = v14 + 1;
  v15 = v8 + 16 * v14;
  *(v15 + 32) = v11;
  *(v15 + 40) = v12;
  swift_bridgeObjectRetain_n();
  result = sub_22EF7E630(v5, v7);
  if (v16 >> 60 == 15)
  {
LABEL_8:
    __break(1u);
  }

  else
  {
    v17 = result;
    v18 = v16;

    v54 = v8;
    v20 = *(v8 + 16);
    v19 = *(v8 + 24);
    if (v20 >= v19 >> 1)
    {
      sub_22EF9AB68((v19 > 1), v20 + 1, 1);
      v8 = v54;
    }

    *(v8 + 16) = v20 + 1;
    v21 = v8 + 16 * v20;
    *(v21 + 32) = v17;
    *(v21 + 40) = v18;
    v22 = OBJC_IVAR____TtC24AppletTranslationLibrary11ExpressMode_modulesRequiringSlowPath;
    swift_arrayDestroy();
    *&v1[v22] = v8;
    v23 = OBJC_IVAR____TtC24AppletTranslationLibrary11ExpressMode_reservedTCIs;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E610, &qword_22EFBCD40);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22EFBCE10;
    *(inited + 32) = sub_22EFAB164(&unk_2843B6FA8);
    *(inited + 40) = v25;
    *(inited + 48) = sub_22EFAB164(&unk_2843B6FD0);
    *(inited + 56) = v26;
    *(inited + 64) = sub_22EFAB164(&unk_2843B6FF8);
    *(inited + 72) = v27;
    *(inited + 80) = sub_22EFAB164(&unk_2843B7020);
    *(inited + 88) = v28;
    *(inited + 96) = sub_22EFAB164(&unk_2843B7048);
    *(inited + 104) = v29;
    *(inited + 112) = sub_22EFAB164(&unk_2843B7070);
    *(inited + 120) = v30;
    *(inited + 128) = sub_22EFAB164(&unk_2843B7098);
    *(inited + 136) = v31;
    *(inited + 144) = sub_22EFAB164(&unk_2843B70C0);
    *(inited + 152) = v32;
    *(inited + 160) = sub_22EFAB164(&unk_2843B70E8);
    *(inited + 168) = v33;
    *(inited + 176) = sub_22EFAB164(&unk_2843B7110);
    *(inited + 184) = v34;
    *(inited + 192) = sub_22EFAB164(&unk_2843B7138);
    *(inited + 200) = v35;
    *(inited + 208) = sub_22EFAB164(&unk_2843B7160);
    *(inited + 216) = v36;
    *(inited + 224) = sub_22EFAB164(&unk_2843B7188);
    *(inited + 232) = v37;
    *(inited + 240) = sub_22EFAB164(&unk_2843B71B0);
    *(inited + 248) = v38;
    *(inited + 256) = sub_22EFAB164(&unk_2843B71D8);
    *(inited + 264) = v39;
    *(inited + 272) = sub_22EFAB164(&unk_2843B7200);
    *(inited + 280) = v40;
    *(inited + 288) = sub_22EFAB164(&unk_2843B7228);
    *(inited + 296) = v41;
    *(inited + 304) = sub_22EFAB164(&unk_2843B7250);
    *(inited + 312) = v42;
    *(inited + 320) = sub_22EFAB164(&unk_2843B7278);
    *(inited + 328) = v43;
    *(inited + 336) = sub_22EFAB164(&unk_2843B72A0);
    *(inited + 344) = v44;
    v45 = sub_22EFA30DC(inited);
    swift_setDeallocating();
    swift_arrayDestroy();
    *&v1[v23] = v45;
    v46 = OBJC_IVAR____TtC24AppletTranslationLibrary11ExpressMode_internalBuild;
    v47 = objc_opt_self();
    v1[v46] = +[(AppletTranslator *)v47];
    v49 = OBJC_IVAR____TtC24AppletTranslationLibrary11ExpressMode_userDefaults;
    v51 = +[(AppletTranslator *)v47];
    *&v1[v49] = v51;
    v53.receiver = v1;
    v53.super_class = type metadata accessor for ExpressMode(v51, v52);
    return objc_msgSendSuper2(&v53, sel_init);
  }

  return result;
}

id sub_22EF92A48(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for ExpressMode(a1, a2);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_22EF92B58(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_22EF92B9C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2 + 1;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_24AppletTranslationLibrary11ExpressModeC0D4Info33_F6A5673F67A2A086B8B4649671CBFF82LLO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_22EF92C0C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 24))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22EF92C68(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

void *sub_22EF92CBC(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[1] = 0;
    result[2] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

unint64_t sub_22EF92CF0()
{
  result = qword_27DA9E6A8;
  if (!qword_27DA9E6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA9E6A8);
  }

  return result;
}

uint64_t sub_22EF92D44@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_22EFB603C();
    if (v10)
    {
      v11 = sub_22EFB605C();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_22EFB604C();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_22EFB603C();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_22EFB605C();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_22EFB604C();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_22EF92F74(uint64_t a1, uint64_t a2)
{
  v188 = *MEMORY[0x277D85DE8];
  if (a1 == a2)
  {
    return 1;
  }

  v2 = a2;
  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
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
  v8 = (v5 + 63) >> 6;
  v183 = a2 + 56;
  v156 = v8;
  v157 = a1 + 56;
  if (v7)
  {
LABEL_7:
    v9 = __clz(__rbit64(v7));
    v153 = (v7 - 1) & v7;
    goto LABEL_13;
  }

  while (1)
  {
    v10 = v3;
    do
    {
      v3 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
LABEL_305:
        __break(1u);
LABEL_306:
        __break(1u);
LABEL_307:
        __break(1u);
LABEL_308:
        __break(1u);
LABEL_309:
        __break(1u);
LABEL_310:
        __break(1u);
LABEL_311:
        __break(1u);
LABEL_312:
        __break(1u);
LABEL_313:
        __break(1u);
LABEL_314:
        __break(1u);
LABEL_315:
        __break(1u);
LABEL_316:
        __break(1u);
LABEL_317:
        __break(1u);
LABEL_318:
        __break(1u);
LABEL_319:
        __break(1u);
LABEL_320:
        __break(1u);
LABEL_321:
        __break(1u);
LABEL_322:
        __break(1u);
LABEL_323:
        __break(1u);
LABEL_324:
        __break(1u);
LABEL_325:
        __break(1u);
LABEL_326:
        __break(1u);
LABEL_327:
        __break(1u);
LABEL_328:
        __break(1u);
LABEL_329:
        __break(1u);
LABEL_330:
        __break(1u);
LABEL_331:
        __break(1u);
LABEL_332:
        __break(1u);
LABEL_333:
        __break(1u);
LABEL_334:
        __break(1u);
LABEL_335:
        __break(1u);
LABEL_336:
        __break(1u);
LABEL_337:
        __break(1u);
LABEL_338:
        __break(1u);
LABEL_339:
        __break(1u);
LABEL_340:
        __break(1u);
LABEL_341:
        __break(1u);
LABEL_342:
        __break(1u);
LABEL_343:
        __break(1u);
LABEL_344:
        __break(1u);
LABEL_345:
        __break(1u);
LABEL_346:
        __break(1u);
LABEL_347:
        __break(1u);
LABEL_348:
        __break(1u);
LABEL_349:
        __break(1u);
LABEL_350:
        __break(1u);
      }

      if (v3 >= v8)
      {
        return 1;
      }

      v11 = *(v4 + 8 * v3);
      ++v10;
    }

    while (!v11);
    v9 = __clz(__rbit64(v11));
    v153 = (v11 - 1) & v11;
LABEL_13:
    v154 = v3;
    v155 = a1;
    v12 = *(a1 + 48) + 40 * (v9 | (v3 << 6));
    v14 = *v12;
    v13 = *(v12 + 8);
    v16 = *(v12 + 16);
    v15 = *(v12 + 24);
    v17 = *(v12 + 32);
    sub_22EFB68DC();
    sub_22EF70B68(v14, v13);
    sub_22EF70B68(v16, v15);
    v178 = v13;
    v179 = v14;
    sub_22EFB61EC();
    v174 = v16;
    v173 = v15;
    sub_22EFB61EC();
    v176 = v17;
    MEMORY[0x2318FB660](v17);
    v18 = sub_22EFB691C();
    v19 = -1 << *(v2 + 32);
    v20 = v18 & ~v19;
    if (((*(v183 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
    {
LABEL_302:
      sub_22EF708C8(v179, v178);
      sub_22EF708C8(v174, v173);
      return 0;
    }

    v21 = !v179 && v13 == 0xC000000000000000;
    v22 = v13 >> 62;
    v23 = !v21;
    v182 = ~v19;
    v24 = __OFSUB__(HIDWORD(v179), v179);
    v172 = v24;
    v168 = (v179 >> 32) - v179;
    v169 = v179 >> 32;
    v180 = v15 >> 62;
    v25 = !v174 && v15 == 0xC000000000000000;
    v26 = !v25;
    v175 = v26;
    v27 = __OFSUB__(HIDWORD(v174), v174);
    v171 = v27;
    v158 = (v174 >> 32) - v174;
    v159 = v174 >> 32;
    v177 = v23;
LABEL_36:
    v28 = *(v2 + 48) + 40 * v20;
    v30 = *v28;
    v29 = *(v28 + 8);
    v31 = *(v28 + 16);
    v32 = *(v28 + 24);
    v33 = *(v28 + 32);
    v34 = v29 >> 62;
    if (v29 >> 62 == 3)
    {
      if (v30)
      {
        v35 = 0;
      }

      else
      {
        v35 = v29 == 0xC000000000000000;
      }

      v37 = !v35 || v22 < 3;
      if (((v37 | v23) & 1) == 0)
      {
        v181 = v33;
        v38 = 0;
        v39 = 0xC000000000000000;
        goto LABEL_74;
      }

LABEL_58:
      v40 = 0;
      if (v22 <= 1)
      {
        goto LABEL_55;
      }

      goto LABEL_59;
    }

    if (v34 > 1)
    {
      if (v34 != 2)
      {
        goto LABEL_58;
      }

      v42 = *(v30 + 16);
      v41 = *(v30 + 24);
      v43 = __OFSUB__(v41, v42);
      v40 = v41 - v42;
      if (v43)
      {
        goto LABEL_307;
      }

      if (v22 <= 1)
      {
        goto LABEL_55;
      }
    }

    else if (v34)
    {
      LODWORD(v40) = HIDWORD(v30) - v30;
      if (__OFSUB__(HIDWORD(v30), v30))
      {
        goto LABEL_308;
      }

      v40 = v40;
      if (v22 <= 1)
      {
LABEL_55:
        v44 = BYTE6(v178);
        if (v22)
        {
          v44 = HIDWORD(v179) - v179;
          if (v172)
          {
            goto LABEL_305;
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      v40 = BYTE6(v29);
      if (v22 <= 1)
      {
        goto LABEL_55;
      }
    }

LABEL_59:
    if (v22 != 2)
    {
      if (v40)
      {
        goto LABEL_35;
      }

LABEL_73:
      v181 = v33;
      v38 = v30;
      v39 = v29;
LABEL_74:
      sub_22EF70B68(v38, v39);
      sub_22EF70B68(v31, v32);
      v52 = v180;
      goto LABEL_75;
    }

    v46 = *(v179 + 16);
    v45 = *(v179 + 24);
    v43 = __OFSUB__(v45, v46);
    v44 = v45 - v46;
    if (v43)
    {
      goto LABEL_306;
    }

LABEL_61:
    if (v40 != v44)
    {
      goto LABEL_35;
    }

    if (v40 < 1)
    {
      goto LABEL_73;
    }

    v181 = v33;
    if (v34 <= 1)
    {
      break;
    }

    if (v34 == 2)
    {
      v71 = *(v30 + 16);
      sub_22EF70B68(v30, v29);
      sub_22EF70B68(v31, v32);
      v72 = sub_22EFB603C();
      if (v72)
      {
        v73 = v72;
        v74 = sub_22EFB605C();
        if (__OFSUB__(v71, v74))
        {
          goto LABEL_314;
        }

        v160 = (v71 - v74 + v73);
      }

      else
      {
        v160 = 0;
      }

      sub_22EFB604C();
      v23 = v177;
      if (v22 == 2)
      {
        v105 = *(v179 + 16);
        v149 = *(v179 + 24);
        v93 = sub_22EFB603C();
        if (v93)
        {
          v106 = sub_22EFB605C();
          if (__OFSUB__(v105, v106))
          {
            goto LABEL_331;
          }

          v93 += v105 - v106;
        }

        if (__OFSUB__(v149, v105))
        {
          goto LABEL_324;
        }

        v137 = sub_22EFB604C();
        if (v137 >= v149 - v105)
        {
          v96 = v149 - v105;
        }

        else
        {
          v96 = v137;
        }

        v84 = v160;
        v23 = v177;
        if (!v160)
        {
          goto LABEL_356;
        }

        v2 = a2;
        v52 = v180;
        if (!v93)
        {
          goto LABEL_355;
        }

        goto LABEL_272;
      }

      if (v22 == 1)
      {
        if (v169 < v179)
        {
          goto LABEL_321;
        }

        v93 = sub_22EFB603C();
        if (v93)
        {
          v94 = sub_22EFB605C();
          if (__OFSUB__(v179, v94))
          {
            goto LABEL_332;
          }

          v93 += v179 - v94;
        }

        v23 = v177;
        v95 = sub_22EFB604C();
        v96 = (v179 >> 32) - v179;
        if (v95 < v168)
        {
          v96 = v95;
        }

        v84 = v160;
        if (!v160)
        {
          goto LABEL_361;
        }

        v52 = v180;
        if (!v93)
        {
          goto LABEL_360;
        }

LABEL_272:
        if (v84 == v93)
        {
          goto LABEL_75;
        }

        v109 = v96;
        v85 = v93;
        goto LABEL_274;
      }

      v84 = v160;
      *__s1 = v179;
      *&__s1[8] = v178;
      *&__s1[12] = WORD2(v178);
      if (!v160)
      {
        goto LABEL_352;
      }

      goto LABEL_192;
    }

    *&__s1[6] = 0;
    *__s1 = 0;
    if (v22)
    {
      if (v22 == 2)
      {
        v163 = *(v179 + 16);
        v147 = *(v179 + 24);
        sub_22EF70B68(v30, v29);
        sub_22EF70B68(v31, v32);
        v50 = sub_22EFB603C();
        if (v50)
        {
          v82 = sub_22EFB605C();
          v83 = v163;
          if (__OFSUB__(v163, v82))
          {
            goto LABEL_330;
          }

          v50 = &v163[v50 - v82];
        }

        else
        {
          v83 = v163;
        }

        v134 = v147 - v83;
        if (__OFSUB__(v147, v83))
        {
          goto LABEL_320;
        }

        v135 = sub_22EFB604C();
        if (!v50)
        {
          goto LABEL_365;
        }

        goto LABEL_255;
      }

      if (v169 < v179)
      {
        goto LABEL_318;
      }

      sub_22EF70B68(v30, v29);
      sub_22EF70B68(v31, v32);
      v101 = sub_22EFB603C();
      if (!v101)
      {
        goto LABEL_353;
      }

      v102 = v101;
      v103 = sub_22EFB605C();
      if (__OFSUB__(v179, v103))
      {
        goto LABEL_323;
      }

      v50 = (v179 - v103 + v102);
      v51 = sub_22EFB604C();
      if (!v50)
      {
        goto LABEL_354;
      }

LABEL_180:
      if (v51 >= v168)
      {
        v104 = (v179 >> 32) - v179;
      }

      else
      {
        v104 = v51;
      }

LABEL_258:
      v136 = memcmp(__s1, v50, v104);
      v23 = v177;
      goto LABEL_275;
    }

LABEL_135:
    v184 = v179;
    v185 = v178;
    v186 = WORD2(v178);
    sub_22EF70B68(v30, v29);
    sub_22EF70B68(v31, v32);
    v84 = __s1;
    v85 = &v184;
LABEL_193:
    v109 = BYTE6(v178);
LABEL_274:
    v136 = memcmp(v84, v85, v109);
LABEL_275:
    v52 = v180;
    if (v136)
    {
      goto LABEL_34;
    }

LABEL_75:
    v53 = v32 >> 62;
    if (v32 >> 62 == 3)
    {
      if (v31)
      {
        v54 = 0;
      }

      else
      {
        v54 = v32 == 0xC000000000000000;
      }

      v56 = !v54 || v52 < 3;
      if (((v56 | v175) & 1) == 0)
      {
        sub_22EF708C8(v30, v29);
        v57 = 0;
        v58 = 0xC000000000000000;
        goto LABEL_294;
      }

LABEL_98:
      v59 = 0;
      if (v52 <= 1)
      {
        goto LABEL_94;
      }

      goto LABEL_99;
    }

    if (v53 > 1)
    {
      if (v53 != 2)
      {
        goto LABEL_98;
      }

      v61 = *(v31 + 16);
      v60 = *(v31 + 24);
      v43 = __OFSUB__(v60, v61);
      v59 = v60 - v61;
      if (v43)
      {
        goto LABEL_312;
      }

      if (v52 <= 1)
      {
        goto LABEL_94;
      }
    }

    else if (v53)
    {
      LODWORD(v59) = HIDWORD(v31) - v31;
      if (__OFSUB__(HIDWORD(v31), v31))
      {
        goto LABEL_311;
      }

      v59 = v59;
      if (v52 <= 1)
      {
LABEL_94:
        v62 = BYTE6(v173);
        if (v52)
        {
          v62 = HIDWORD(v174) - v174;
          if (v171)
          {
            goto LABEL_309;
          }
        }

        if (v59 != v62)
        {
LABEL_34:
          sub_22EF708C8(v30, v29);
          sub_22EF708C8(v31, v32);
          goto LABEL_35;
        }

        goto LABEL_102;
      }
    }

    else
    {
      v59 = BYTE6(v32);
      if (v52 <= 1)
      {
        goto LABEL_94;
      }
    }

LABEL_99:
    if (v52 != 2)
    {
      if (v59)
      {
        goto LABEL_34;
      }

LABEL_293:
      sub_22EF708C8(v30, v29);
      v57 = v31;
      v58 = v32;
LABEL_294:
      sub_22EF708C8(v57, v58);
      if (v176 == v181)
      {
        goto LABEL_299;
      }

      goto LABEL_35;
    }

    v64 = *(v174 + 16);
    v63 = *(v174 + 24);
    v43 = __OFSUB__(v63, v64);
    v65 = v63 - v64;
    if (v43)
    {
      goto LABEL_310;
    }

    LODWORD(v52) = v180;
    if (v59 != v65)
    {
      goto LABEL_34;
    }

LABEL_102:
    if (v59 < 1)
    {
      goto LABEL_293;
    }

    if (v53 > 1)
    {
      if (v53 != 2)
      {
        *&__s1[6] = 0;
        *__s1 = 0;
        if (v52 == 2)
        {
          v120 = *(v174 + 16);
          v166 = *(v174 + 24);
          v69 = sub_22EFB603C();
          if (v69)
          {
            v121 = sub_22EFB605C();
            if (__OFSUB__(v120, v121))
            {
              goto LABEL_346;
            }

            v69 += v120 - v121;
          }

          v43 = __OFSUB__(v166, v120);
          v122 = &v166[-v120];
          if (v43)
          {
            goto LABEL_337;
          }

          v123 = sub_22EFB604C();
          v2 = a2;
          if (!v69)
          {
            goto LABEL_372;
          }

          goto LABEL_230;
        }

        if (v52 == 1)
        {
          if (v159 < v174)
          {
            goto LABEL_335;
          }

          v89 = sub_22EFB603C();
          if (!v89)
          {
            goto LABEL_370;
          }

          v90 = v89;
          v91 = sub_22EFB605C();
          if (__OFSUB__(v174, v91))
          {
            goto LABEL_340;
          }

          v69 = (v174 - v91 + v90);
          v70 = sub_22EFB604C();
          if (!v69)
          {
            goto LABEL_371;
          }

          goto LABEL_146;
        }

        v117 = HIDWORD(v174);
        LODWORD(v184) = v174;
        v119 = v173 >> 40;
        BYTE4(v184) = BYTE4(v174);
        v118 = v173;
        goto LABEL_236;
      }

      v75 = *(v31 + 16);
      v76 = sub_22EFB603C();
      if (v76)
      {
        v77 = v76;
        v78 = sub_22EFB605C();
        if (__OFSUB__(v75, v78))
        {
          goto LABEL_327;
        }

        v161 = (v75 - v78 + v77);
      }

      else
      {
        v161 = 0;
      }

      sub_22EFB604C();
      v23 = v177;
      if (v180 == 2)
      {
        v145 = *(v174 + 24);
        v151 = *(v174 + 16);
        v110 = sub_22EFB603C();
        if (v110)
        {
          v129 = sub_22EFB605C();
          v130 = v151;
          if (__OFSUB__(v151, v129))
          {
            goto LABEL_347;
          }

          v110 += v151 - v129;
        }

        else
        {
          v130 = v151;
        }

        v139 = v145 - v130;
        if (__OFSUB__(v145, v130))
        {
          goto LABEL_342;
        }

        v140 = sub_22EFB604C();
        if (v140 >= v139)
        {
          v113 = v139;
        }

        else
        {
          v113 = v140;
        }

        v114 = v161;
        if (!v161)
        {
          goto LABEL_376;
        }

        v2 = a2;
        if (!v110)
        {
          goto LABEL_375;
        }
      }

      else
      {
        if (v180 != 1)
        {
          v114 = v161;
          *__s1 = v174;
          *&__s1[8] = v173;
          *&__s1[12] = WORD2(v173);
          if (!v161)
          {
            goto LABEL_367;
          }

LABEL_246:
          v128 = __s1;
          goto LABEL_247;
        }

        if (v159 < v174)
        {
          goto LABEL_339;
        }

        v110 = sub_22EFB603C();
        if (v110)
        {
          v111 = sub_22EFB605C();
          if (__OFSUB__(v174, v111))
          {
            goto LABEL_349;
          }

          v110 += v174 - v111;
        }

        v23 = v177;
        v112 = sub_22EFB604C();
        v113 = (v174 >> 32) - v174;
        if (v112 < v158)
        {
          v113 = v112;
        }

        v114 = v161;
        if (!v161)
        {
          goto LABEL_374;
        }

        if (!v110)
        {
          goto LABEL_373;
        }
      }

LABEL_292:
      if (v114 == v110)
      {
        goto LABEL_293;
      }

      v133 = v113;
      v128 = v110;
LABEL_297:
      v143 = memcmp(v114, v128, v133);
      sub_22EF708C8(v30, v29);
      sub_22EF708C8(v31, v32);
      v127 = v181;
      if (!v143)
      {
        goto LABEL_298;
      }

LABEL_35:
      v20 = (v20 + 1) & v182;
      if (((*(v183 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
      {
        goto LABEL_302;
      }

      goto LABEL_36;
    }

    if (v53)
    {
      if (v31 > v31 >> 32)
      {
        goto LABEL_316;
      }

      v86 = sub_22EFB603C();
      if (v86)
      {
        v87 = v86;
        v88 = sub_22EFB605C();
        if (__OFSUB__(v31, v88))
        {
          goto LABEL_328;
        }

        v164 = (v31 - v88 + v87);
      }

      else
      {
        v164 = 0;
      }

      sub_22EFB604C();
      v23 = v177;
      if (v180 == 2)
      {
        v146 = *(v174 + 24);
        v152 = *(v174 + 16);
        v110 = sub_22EFB603C();
        if (v110)
        {
          v131 = sub_22EFB605C();
          v132 = v152;
          if (__OFSUB__(v152, v131))
          {
            goto LABEL_348;
          }

          v110 += v152 - v131;
        }

        else
        {
          v132 = v152;
        }

        v141 = v146 - v132;
        if (__OFSUB__(v146, v132))
        {
          goto LABEL_344;
        }

        v142 = sub_22EFB604C();
        if (v142 >= v141)
        {
          v113 = v141;
        }

        else
        {
          v113 = v142;
        }

        v114 = v164;
        if (!v164)
        {
          goto LABEL_369;
        }

        v2 = a2;
        if (!v110)
        {
          goto LABEL_368;
        }

        goto LABEL_292;
      }

      if (v180 != 1)
      {
        v114 = v164;
        *__s1 = v174;
        *&__s1[8] = v173;
        *&__s1[12] = WORD2(v173);
        if (!v164)
        {
          goto LABEL_377;
        }

        goto LABEL_246;
      }

      if (v159 < v174)
      {
        goto LABEL_343;
      }

      v110 = sub_22EFB603C();
      if (v110)
      {
        v115 = sub_22EFB605C();
        if (__OFSUB__(v174, v115))
        {
          goto LABEL_350;
        }

        v110 += v174 - v115;
      }

      v23 = v177;
      v116 = sub_22EFB604C();
      v113 = (v174 >> 32) - v174;
      if (v116 < v158)
      {
        v113 = v116;
      }

      v114 = v164;
      if (!v164)
      {
        goto LABEL_379;
      }

      if (!v110)
      {
        goto LABEL_378;
      }

      goto LABEL_292;
    }

    *__s1 = v31;
    *&__s1[8] = v32;
    __s1[10] = BYTE2(v32);
    __s1[11] = BYTE3(v32);
    __s1[12] = BYTE4(v32);
    __s1[13] = BYTE5(v32);
    if (!v52)
    {
      v117 = HIDWORD(v174);
      LODWORD(v184) = v174;
      v118 = v173;
      v119 = v173 >> 40;
      BYTE4(v184) = BYTE4(v174);
LABEL_236:
      BYTE5(v184) = BYTE1(v117);
      BYTE6(v184) = BYTE2(v117);
      HIBYTE(v184) = HIBYTE(v117);
      LOWORD(v185) = v118;
      BYTE2(v185) = BYTE2(v118);
      HIBYTE(v185) = BYTE3(v118);
      LOBYTE(v186) = BYTE4(v118);
      HIBYTE(v186) = v119;
      v114 = __s1;
      v128 = &v184;
LABEL_247:
      v133 = BYTE6(v173);
      goto LABEL_297;
    }

    if (v52 == 1)
    {
      if (v159 < v174)
      {
        goto LABEL_336;
      }

      v66 = sub_22EFB603C();
      if (!v66)
      {
        goto LABEL_382;
      }

      v67 = v66;
      v68 = sub_22EFB605C();
      if (__OFSUB__(v174, v68))
      {
        goto LABEL_341;
      }

      v69 = (v174 - v68 + v67);
      v70 = sub_22EFB604C();
      if (!v69)
      {
        goto LABEL_381;
      }

LABEL_146:
      if (v70 >= v158)
      {
        v92 = (v174 >> 32) - v174;
      }

      else
      {
        v92 = v70;
      }

      goto LABEL_233;
    }

    v124 = *(v174 + 16);
    v167 = *(v174 + 24);
    v69 = sub_22EFB603C();
    if (v69)
    {
      v125 = sub_22EFB605C();
      if (__OFSUB__(v124, v125))
      {
        goto LABEL_345;
      }

      v69 += v124 - v125;
    }

    v43 = __OFSUB__(v167, v124);
    v122 = &v167[-v124];
    if (v43)
    {
      goto LABEL_338;
    }

    v123 = sub_22EFB604C();
    v2 = a2;
    if (!v69)
    {
      goto LABEL_380;
    }

LABEL_230:
    if (v123 >= v122)
    {
      v92 = v122;
    }

    else
    {
      v92 = v123;
    }

LABEL_233:
    v126 = memcmp(__s1, v69, v92);
    sub_22EF708C8(v30, v29);
    sub_22EF708C8(v31, v32);
    v23 = v177;
    v127 = v181;
    if (v126)
    {
      goto LABEL_35;
    }

LABEL_298:
    if ((v176 ^ v127))
    {
      goto LABEL_35;
    }

LABEL_299:
    sub_22EF708C8(v179, v178);
    sub_22EF708C8(v174, v173);
    v3 = v154;
    a1 = v155;
    v8 = v156;
    v4 = v157;
    v7 = v153;
    if (v153)
    {
      goto LABEL_7;
    }
  }

  if (v34)
  {
    if (v30 > v30 >> 32)
    {
      goto LABEL_313;
    }

    sub_22EF70B68(v30, v29);
    sub_22EF70B68(v31, v32);
    v79 = sub_22EFB603C();
    if (v79)
    {
      v80 = v79;
      v81 = sub_22EFB605C();
      if (__OFSUB__(v30, v81))
      {
        goto LABEL_315;
      }

      v162 = (v30 - v81 + v80);
    }

    else
    {
      v162 = 0;
    }

    sub_22EFB604C();
    v23 = v177;
    if (v22 == 2)
    {
      v107 = *(v179 + 16);
      v150 = *(v179 + 24);
      v93 = sub_22EFB603C();
      if (v93)
      {
        v108 = sub_22EFB605C();
        if (__OFSUB__(v107, v108))
        {
          goto LABEL_333;
        }

        v93 += v107 - v108;
      }

      if (__OFSUB__(v150, v107))
      {
        goto LABEL_326;
      }

      v138 = sub_22EFB604C();
      if (v138 >= v150 - v107)
      {
        v96 = v150 - v107;
      }

      else
      {
        v96 = v138;
      }

      v84 = v162;
      v23 = v177;
      if (!v162)
      {
        goto LABEL_358;
      }

      v2 = a2;
      v52 = v180;
      if (!v93)
      {
        goto LABEL_357;
      }

      goto LABEL_272;
    }

    if (v22 == 1)
    {
      if (v169 < v179)
      {
        goto LABEL_325;
      }

      v93 = sub_22EFB603C();
      if (v93)
      {
        v97 = sub_22EFB605C();
        if (__OFSUB__(v179, v97))
        {
          goto LABEL_334;
        }

        v93 += v179 - v97;
      }

      v23 = v177;
      v98 = sub_22EFB604C();
      v96 = (v179 >> 32) - v179;
      if (v98 < v168)
      {
        v96 = v98;
      }

      v84 = v162;
      if (!v162)
      {
        goto LABEL_363;
      }

      v52 = v180;
      if (!v93)
      {
        goto LABEL_362;
      }

      goto LABEL_272;
    }

    v84 = v162;
    *__s1 = v179;
    *&__s1[8] = v178;
    *&__s1[12] = WORD2(v178);
    if (!v162)
    {
      goto LABEL_364;
    }

LABEL_192:
    v85 = __s1;
    goto LABEL_193;
  }

  *__s1 = v30;
  *&__s1[8] = v29;
  __s1[10] = BYTE2(v29);
  __s1[11] = BYTE3(v29);
  __s1[12] = BYTE4(v29);
  __s1[13] = BYTE5(v29);
  if (!v22)
  {
    goto LABEL_135;
  }

  if (v22 != 1)
  {
    v165 = *(v179 + 16);
    v148 = *(v179 + 24);
    sub_22EF70B68(v30, v29);
    sub_22EF70B68(v31, v32);
    v50 = sub_22EFB603C();
    if (v50)
    {
      v99 = sub_22EFB605C();
      v100 = v165;
      if (__OFSUB__(v165, v99))
      {
        goto LABEL_329;
      }

      v50 = &v165[v50 - v99];
    }

    else
    {
      v100 = v165;
    }

    v134 = v148 - v100;
    if (__OFSUB__(v148, v100))
    {
      goto LABEL_319;
    }

    v135 = sub_22EFB604C();
    if (!v50)
    {
      goto LABEL_366;
    }

LABEL_255:
    if (v135 >= v134)
    {
      v104 = v134;
    }

    else
    {
      v104 = v135;
    }

    goto LABEL_258;
  }

  if (v169 < v179)
  {
    goto LABEL_317;
  }

  sub_22EF70B68(v30, v29);
  sub_22EF70B68(v31, v32);
  v47 = sub_22EFB603C();
  if (v47)
  {
    v48 = v47;
    v49 = sub_22EFB605C();
    if (__OFSUB__(v179, v49))
    {
      goto LABEL_322;
    }

    v50 = (v179 - v49 + v48);
    v51 = sub_22EFB604C();
    if (!v50)
    {
      goto LABEL_359;
    }

    goto LABEL_180;
  }

  sub_22EFB604C();
  __break(1u);
LABEL_352:
  __break(1u);
LABEL_353:
  sub_22EFB604C();
LABEL_354:
  __break(1u);
LABEL_355:
  __break(1u);
LABEL_356:
  __break(1u);
LABEL_357:
  __break(1u);
LABEL_358:
  __break(1u);
LABEL_359:
  __break(1u);
LABEL_360:
  __break(1u);
LABEL_361:
  __break(1u);
LABEL_362:
  __break(1u);
LABEL_363:
  __break(1u);
LABEL_364:
  __break(1u);
LABEL_365:
  __break(1u);
LABEL_366:
  __break(1u);
LABEL_367:
  __break(1u);
LABEL_368:
  __break(1u);
LABEL_369:
  __break(1u);
LABEL_370:
  sub_22EFB604C();
LABEL_371:
  __break(1u);
LABEL_372:
  __break(1u);
LABEL_373:
  __break(1u);
LABEL_374:
  __break(1u);
LABEL_375:
  __break(1u);
LABEL_376:
  __break(1u);
LABEL_377:
  __break(1u);
LABEL_378:
  __break(1u);
LABEL_379:
  __break(1u);
LABEL_380:
  __break(1u);
LABEL_381:
  __break(1u);
LABEL_382:
  result = sub_22EFB604C();
  __break(1u);
  return result;
}

void *sub_22EF94370(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E610, &qword_22EFBCD40);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_22EF943F4(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA9E3F0, &unk_22EFBBC40);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

unint64_t sub_22EF9447C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_22EF94548(v11, 0, 0, 1, a1, a2);
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
    sub_22EF76370(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return v7;
}

unint64_t sub_22EF94548(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_22EF94654(a5, a6);
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
    result = sub_22EFB672C();
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

void *sub_22EF94654(uint64_t a1, unint64_t a2)
{
  v3 = sub_22EF946A0(a1, a2);
  sub_22EF947D0(byte_2843B6740);
  return v3;
}

void *sub_22EF946A0(uint64_t a1, unint64_t a2)
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

  v6 = sub_22EF948BC(v5, 0);
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

  result = sub_22EFB672C();
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
        v10 = sub_22EFB650C();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_22EF948BC(v10, 0);
        result = sub_22EFB66CC();
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

char *sub_22EF947D0(char *result)
{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
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
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
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

  result = sub_22EF7E10C(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[v7 + 32], v6 + 32, v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 2) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}