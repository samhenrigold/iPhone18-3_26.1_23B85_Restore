uint64_t sub_252D908A8()
{
  type metadata accessor for SetSingleClimateControlAppIntentHandleDelegate();

  return swift_allocObject();
}

void sub_252D908D8(uint64_t a1, unsigned int a2)
{
  v3 = sub_252B680FC(a1);
  swift_beginAccess();
  v4 = *(v3 + 16);

  v5 = *(v4 + 16);
  if (!v5)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_20:

    v21 = sub_2529A6C88(a1, v8);

    if (!v21)
    {
      return;
    }

    v23 = sub_252B680FC(v22);
    swift_beginAccess();
    v24 = *(v23 + 16);

    v25 = *(v24 + 16);
    if (!v25)
    {
      v28 = MEMORY[0x277D84F90];
LABEL_41:

      sub_2529A6C88(a2, v28);

      return;
    }

    v26 = 0;
    v27 = (v24 + 32);
    v28 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v26 >= *(v24 + 16))
      {
        goto LABEL_46;
      }

      memcpy(__dst, v27, sizeof(__dst));
      sub_252A15750();
      v30 = *(v29 + 16);
      v31 = *(v28 + 2);
      v32 = v31 + v30;
      if (__OFADD__(v31, v30))
      {
        goto LABEL_47;
      }

      v33 = v29;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && (v35 = *(v28 + 3) >> 1, v35 >= v32))
      {
        if (!*(v33 + 16))
        {
          goto LABEL_23;
        }
      }

      else
      {
        if (v31 <= v32)
        {
          v36 = v31 + v30;
        }

        else
        {
          v36 = v31;
        }

        v28 = sub_2529F7F60(isUniquelyReferenced_nonNull_native, v36, 1, v28);
        v35 = *(v28 + 3) >> 1;
        if (!*(v33 + 16))
        {
LABEL_23:

          if (v30)
          {
            goto LABEL_48;
          }

          goto LABEL_24;
        }
      }

      v37 = *(v28 + 2);
      if (v35 - v37 < v30)
      {
        goto LABEL_50;
      }

      memcpy(&v28[v37 + 32], (v33 + 32), v30);

      if (v30)
      {
        v38 = *(v28 + 2);
        v19 = __OFADD__(v38, v30);
        v39 = v38 + v30;
        if (v19)
        {
          goto LABEL_51;
        }

        *(v28 + 2) = v39;
      }

LABEL_24:
      ++v26;
      v27 += 504;
      if (v25 == v26)
      {
        goto LABEL_41;
      }
    }
  }

  v6 = 0;
  v7 = (v4 + 32);
  v8 = MEMORY[0x277D84F90];
  while (v6 < *(v4 + 16))
  {
    memcpy(__dst, v7, sizeof(__dst));
    sub_252A15750();
    v10 = *(v9 + 16);
    v11 = *(v8 + 2);
    v12 = v11 + v10;
    if (__OFADD__(v11, v10))
    {
      goto LABEL_43;
    }

    v13 = v9;
    v14 = swift_isUniquelyReferenced_nonNull_native();
    if (v14 && (v15 = *(v8 + 3) >> 1, v15 >= v12))
    {
      if (!*(v13 + 16))
      {
        goto LABEL_3;
      }
    }

    else
    {
      if (v11 <= v12)
      {
        v16 = v11 + v10;
      }

      else
      {
        v16 = v11;
      }

      v8 = sub_2529F7F60(v14, v16, 1, v8);
      v15 = *(v8 + 3) >> 1;
      if (!*(v13 + 16))
      {
LABEL_3:

        if (v10)
        {
          goto LABEL_44;
        }

        goto LABEL_4;
      }
    }

    v17 = *(v8 + 2);
    if (v15 - v17 < v10)
    {
      goto LABEL_45;
    }

    memcpy(&v8[v17 + 32], (v13 + 32), v10);

    if (v10)
    {
      v18 = *(v8 + 2);
      v19 = __OFADD__(v18, v10);
      v20 = v18 + v10;
      if (v19)
      {
        goto LABEL_49;
      }

      *(v8 + 2) = v20;
    }

LABEL_4:
    ++v6;
    v7 += 504;
    if (v5 == v6)
    {
      goto LABEL_20;
    }
  }

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
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
}

uint64_t sub_252D90C4C()
{
  type metadata accessor for SetSingleTemperatureValueHandleDelegate();

  return swift_allocObject();
}

void sub_252D90C7C(uint64_t a1, void *a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  sub_252B680FC(a1);
  v124 = a5;
  sub_252B66C78(a5, a6, 0, __dst);

  if (!*&__dst[24])
  {
    sub_25293847C(__dst, &qword_27F541E80, &qword_252E3DFA0);
    return;
  }

  if (swift_dynamicCast())
  {
    v122 = a1;
    v123 = v126;
    v12 = [a2 userTask];
    if (v12)
    {
      v13 = v12;
      v14 = [v12 attribute];

      if (v14 == 6)
      {
        if (a4)
        {
          v15 = 0.0;
        }

        else
        {
          v15 = *&a3;
        }

        v16 = COERCE_DOUBLE(sub_252C4D57C());
        if (v17)
        {
          v16 = 0.0;
        }

        HIDWORD(v121) = v16 < v15;
LABEL_14:
        v18 = [a2 userTask];
        if (v18)
        {
          v19 = v18;
          v20 = [v18 attribute];

          if (v20 == 6)
          {
            if (a4)
            {
              v22 = 0.0;
            }

            else
            {
              v22 = *&a3;
            }

            v21 = sub_252C4D57C();
            v23 = *&v21;
            if (v24)
            {
              v23 = 0.0;
            }

            LODWORD(v121) = v22 < v23;
LABEL_24:
            v25 = sub_252B680FC(v21);
            swift_beginAccess();
            v26 = *(v25 + 16);

            v27 = *(v26 + 16);
            if (v27)
            {
              v28 = 0;
              v29 = (v26 + 32);
              v30 = MEMORY[0x277D84F90];
              while (1)
              {
                if (v28 >= *(v26 + 16))
                {
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
LABEL_145:
                  __break(1u);
LABEL_146:
                  __break(1u);
LABEL_147:
                  __break(1u);
LABEL_148:
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
LABEL_154:
                  __break(1u);
LABEL_155:
                  __break(1u);
                  return;
                }

                memcpy(__dst, v29, sizeof(__dst));
                sub_252A15750();
                v32 = *(v31 + 16);
                v33 = *(v30 + 2);
                v34 = v33 + v32;
                if (__OFADD__(v33, v32))
                {
                  goto LABEL_137;
                }

                v35 = v31;
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                if (isUniquelyReferenced_nonNull_native && (v37 = *(v30 + 3) >> 1, v37 >= v34))
                {
                  if (!*(v35 + 16))
                  {
                    goto LABEL_26;
                  }
                }

                else
                {
                  if (v33 <= v34)
                  {
                    v38 = v33 + v32;
                  }

                  else
                  {
                    v38 = v33;
                  }

                  v30 = sub_2529F7F60(isUniquelyReferenced_nonNull_native, v38, 1, v30);
                  v37 = *(v30 + 3) >> 1;
                  if (!*(v35 + 16))
                  {
LABEL_26:

                    if (v32)
                    {
                      goto LABEL_138;
                    }

                    goto LABEL_27;
                  }
                }

                v39 = *(v30 + 2);
                if (v37 - v39 < v32)
                {
                  goto LABEL_142;
                }

                memcpy(&v30[v39 + 32], (v35 + 32), v32);

                if (v32)
                {
                  v40 = *(v30 + 2);
                  v41 = __OFADD__(v40, v32);
                  v42 = v40 + v32;
                  if (v41)
                  {
                    goto LABEL_150;
                  }

                  *(v30 + 2) = v42;
                }

LABEL_27:
                ++v28;
                v29 += 504;
                if (v27 == v28)
                {
                  goto LABEL_43;
                }
              }
            }

            v30 = MEMORY[0x277D84F90];
LABEL_43:

            v43 = sub_2529A6C88(16, v30);

            if (v43)
            {
              v45 = sub_252B680FC(v44);
              swift_beginAccess();
              v46 = *(v45 + 16);

              v47 = *(v46 + 16);
              if (v47)
              {
                v48 = 0;
                v49 = (v46 + 32);
                v50 = MEMORY[0x277D84F90];
                while (1)
                {
                  if (v48 >= *(v46 + 16))
                  {
                    goto LABEL_144;
                  }

                  memcpy(__dst, v49, sizeof(__dst));
                  sub_252A15750();
                  v52 = *(v51 + 16);
                  v53 = *(v50 + 2);
                  v54 = v53 + v52;
                  if (__OFADD__(v53, v52))
                  {
                    goto LABEL_145;
                  }

                  v55 = v51;
                  v56 = swift_isUniquelyReferenced_nonNull_native();
                  if (v56 && (v57 = *(v50 + 3) >> 1, v57 >= v54))
                  {
                    if (!*(v55 + 16))
                    {
                      goto LABEL_46;
                    }
                  }

                  else
                  {
                    if (v53 <= v54)
                    {
                      v58 = v53 + v52;
                    }

                    else
                    {
                      v58 = v53;
                    }

                    v50 = sub_2529F7F60(v56, v58, 1, v50);
                    v57 = *(v50 + 3) >> 1;
                    if (!*(v55 + 16))
                    {
LABEL_46:

                      if (v52)
                      {
                        goto LABEL_146;
                      }

                      goto LABEL_47;
                    }
                  }

                  v59 = *(v50 + 2);
                  if (v57 - v59 < v52)
                  {
                    goto LABEL_152;
                  }

                  memcpy(&v50[v59 + 32], (v55 + 32), v52);

                  if (v52)
                  {
                    v60 = *(v50 + 2);
                    v41 = __OFADD__(v60, v52);
                    v61 = v60 + v52;
                    if (v41)
                    {
                      goto LABEL_154;
                    }

                    *(v50 + 2) = v61;
                  }

LABEL_47:
                  ++v48;
                  v49 += 504;
                  if (v47 == v48)
                  {
                    goto LABEL_63;
                  }
                }
              }

              v50 = MEMORY[0x277D84F90];
LABEL_63:

              v62 = sub_2529A6C88(27, v50);

              if (!v62)
              {
                if (v123 > 5)
                {
                }

                else
                {
                  v63 = sub_252E37DB4();

                  if (!(v63 & 1 | ((v121 & 0x100000000) == 0) | v121 & 1))
                  {
                    v64 = v122;
                    if (v122 == 15)
                    {
                      v65 = 0x5455415F4C4F4F43;
                    }

                    else
                    {
                      v65 = 1280266051;
                    }

                    if (v122 == 15)
                    {
                      v66 = 0xE90000000000004FLL;
                    }

                    else
                    {
                      v66 = 0xE400000000000000;
                    }

                    sub_252B680FC(v44);
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5402C8, &unk_252E5D320);
                    v67 = swift_allocObject();
                    *(v67 + 16) = xmmword_252E3C290;
                    *(v67 + 32) = v124;
                    v68 = v67 + 32;
                    *(v67 + 40) = a6;
                    *&__dst[24] = &type metadata for ClimateModes;
                    v69 = 6;
LABEL_134:
                    __dst[0] = v69;

                    sub_252B689F8(v67, __dst);
                    swift_setDeallocating();
                    sub_25293847C(v68, &unk_27F541300, &qword_252E3C100);
                    swift_deallocClassInstance();

                    sub_25293847C(__dst, &qword_27F541E80, &qword_252E3DFA0);
                    type metadata accessor for HomeAttributeValue();
                    v111 = HomeAttributeValue.__allocating_init(stringValue:unit:)(v65, v66, 0);
                    v118 = objc_allocWithZone(type metadata accessor for HomeUserTask());
                    v119 = sub_252E36F04();
                    v120 = [v118 initWithIdentifier:0 displayString:v119];

                    v115 = v120;
                    [v115 setTaskType_];
                    [v115 setAttribute_];
                    goto LABEL_135;
                  }
                }
              }
            }

            v70 = sub_252B680FC(v44);
            swift_beginAccess();
            v71 = *(v70 + 16);

            v72 = *(v71 + 16);
            if (v72)
            {
              v73 = 0;
              v74 = (v71 + 32);
              v75 = MEMORY[0x277D84F90];
              while (1)
              {
                if (v73 >= *(v71 + 16))
                {
                  goto LABEL_139;
                }

                memcpy(__dst, v74, sizeof(__dst));
                sub_252A15750();
                v77 = *(v76 + 16);
                v78 = *(v75 + 2);
                v79 = v78 + v77;
                if (__OFADD__(v78, v77))
                {
                  goto LABEL_140;
                }

                v80 = v76;
                v81 = swift_isUniquelyReferenced_nonNull_native();
                if (v81 && (v82 = *(v75 + 3) >> 1, v82 >= v79))
                {
                  if (!*(v80 + 16))
                  {
                    goto LABEL_76;
                  }
                }

                else
                {
                  if (v78 <= v79)
                  {
                    v83 = v78 + v77;
                  }

                  else
                  {
                    v83 = v78;
                  }

                  v75 = sub_2529F7F60(v81, v83, 1, v75);
                  v82 = *(v75 + 3) >> 1;
                  if (!*(v80 + 16))
                  {
LABEL_76:

                    if (v77)
                    {
                      goto LABEL_141;
                    }

                    goto LABEL_77;
                  }
                }

                v84 = *(v75 + 2);
                if (v82 - v84 < v77)
                {
                  goto LABEL_143;
                }

                memcpy(&v75[v84 + 32], (v80 + 32), v77);

                if (v77)
                {
                  v85 = *(v75 + 2);
                  v41 = __OFADD__(v85, v77);
                  v86 = v85 + v77;
                  if (v41)
                  {
                    goto LABEL_151;
                  }

                  *(v75 + 2) = v86;
                }

LABEL_77:
                ++v73;
                v74 += 504;
                if (v72 == v73)
                {
                  goto LABEL_93;
                }
              }
            }

            v75 = MEMORY[0x277D84F90];
LABEL_93:

            v87 = sub_2529A6C88(27, v75);

            if (v87)
            {
              v89 = sub_252B680FC(v88);
              swift_beginAccess();
              v90 = *(v89 + 16);

              v91 = *(v90 + 16);
              if (v91)
              {
                v92 = 0;
                v93 = (v90 + 32);
                v94 = MEMORY[0x277D84F90];
                while (1)
                {
                  if (v92 >= *(v90 + 16))
                  {
                    goto LABEL_147;
                  }

                  memcpy(__dst, v93, sizeof(__dst));
                  sub_252A15750();
                  v96 = *(v95 + 16);
                  v97 = *(v94 + 2);
                  v98 = v97 + v96;
                  if (__OFADD__(v97, v96))
                  {
                    goto LABEL_148;
                  }

                  v99 = v95;
                  v100 = swift_isUniquelyReferenced_nonNull_native();
                  if (v100 && (v101 = *(v94 + 3) >> 1, v101 >= v98))
                  {
                    if (!*(v99 + 16))
                    {
                      goto LABEL_96;
                    }
                  }

                  else
                  {
                    if (v97 <= v98)
                    {
                      v102 = v97 + v96;
                    }

                    else
                    {
                      v102 = v97;
                    }

                    v94 = sub_2529F7F60(v100, v102, 1, v94);
                    v101 = *(v94 + 3) >> 1;
                    if (!*(v99 + 16))
                    {
LABEL_96:

                      if (v96)
                      {
                        goto LABEL_149;
                      }

                      goto LABEL_97;
                    }
                  }

                  v103 = *(v94 + 2);
                  if (v101 - v103 < v96)
                  {
                    goto LABEL_153;
                  }

                  memcpy(&v94[v103 + 32], (v99 + 32), v96);

                  if (v96)
                  {
                    v104 = *(v94 + 2);
                    v41 = __OFADD__(v104, v96);
                    v105 = v104 + v96;
                    if (v41)
                    {
                      goto LABEL_155;
                    }

                    *(v94 + 2) = v105;
                  }

LABEL_97:
                  ++v92;
                  v93 += 504;
                  if (v91 == v92)
                  {
                    goto LABEL_113;
                  }
                }
              }

              v94 = MEMORY[0x277D84F90];
LABEL_113:

              v106 = sub_2529A6C88(16, v94);

              if (!v106)
              {
                if (v123 == 5)
                {

                  v107 = v122;
                  goto LABEL_122;
                }

                v116 = sub_252E37DB4();

                if (((v116 | HIDWORD(v121)) & 1) == 0 && ((v121 ^ 1) & 1) == 0)
                {
                  v64 = v122;
                  if (v122 == 15)
                  {
                    v65 = 0x5455415F54414548;
                  }

                  else
                  {
                    v65 = 1413563720;
                  }

                  if (v122 == 15)
                  {
                    v66 = 0xE90000000000004FLL;
                  }

                  else
                  {
                    v66 = 0xE400000000000000;
                  }

                  sub_252B680FC(v117);
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5402C8, &unk_252E5D320);
                  v67 = swift_allocObject();
                  *(v67 + 16) = xmmword_252E3C290;
                  *(v67 + 32) = v124;
                  v68 = v67 + 32;
                  *(v67 + 40) = a6;
                  *&__dst[24] = &type metadata for ClimateModes;
                  v69 = 5;
                  goto LABEL_134;
                }
              }
            }

            if (v123 <= 2)
            {
              v107 = v122;
              if (v123 > 1)
              {

LABEL_123:
                sub_252B680FC(v108);
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5402C8, &unk_252E5D320);
                v110 = swift_allocObject();
                *(v110 + 16) = xmmword_252E3C290;
                *(v110 + 32) = v124;
                *(v110 + 40) = a6;
                *&__dst[24] = &type metadata for ClimateModes;
                __dst[0] = 4;

                sub_252B689F8(v110, __dst);
                swift_setDeallocating();
                sub_25293847C(v110 + 32, &unk_27F541300, &qword_252E3C100);
                swift_deallocClassInstance();

                sub_25293847C(__dst, &qword_27F541E80, &qword_252E3DFA0);
                type metadata accessor for HomeAttributeValue();
                v111 = HomeAttributeValue.__allocating_init(stringValue:unit:)(1330926913, 0xE400000000000000, 0);
                v112 = objc_allocWithZone(type metadata accessor for HomeUserTask());
                v113 = sub_252E36F04();
                v114 = [v112 initWithIdentifier:0 displayString:v113];

                v115 = v114;
                [v115 setTaskType_];
                [v115 setAttribute_];
LABEL_135:
                [v115 setValue_];

                return;
              }
            }

            else
            {
              v107 = v122;
            }

LABEL_122:
            v109 = sub_252E37DB4();

            if ((v109 & 1) == 0)
            {
              return;
            }

            goto LABEL_123;
          }
        }

        else
        {
          v21 = sub_252C515AC();
        }

        LODWORD(v121) = 0;
        goto LABEL_24;
      }
    }

    else
    {
      sub_252C515AC();
    }

    HIDWORD(v121) = 0;
    goto LABEL_14;
  }
}

id sub_252D91A54(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = 17;
  }

  else
  {
    v3 = 19;
  }

  v4 = objc_allocWithZone(type metadata accessor for HomeUserTask());
  v5 = sub_252E36F04();
  v6 = [v4 initWithIdentifier:0 displayString:v5];

  v7 = v6;
  [v7 setTaskType_];
  [v7 setAttribute_];
  [v7 setValue_];

  return v7;
}

uint64_t sub_252D91B14(void *a1, void *a2, void *a3, void *a4, int a5, uint64_t a6)
{
  v95 = a5;
  v11 = sub_252E36AD4();
  v97 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F53F498 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v11, qword_27F544C70);
  sub_252CC3D90(0xD000000000000028, 0x8000000252E9AA50, 0xD000000000000095, 0x8000000252E9AA80);
  v15 = [a1 userTask];
  if (!v15 || (v96 = a1, v16 = v15, v17 = [v15 value], v16, !v17))
  {
    sub_252CC4050(0xD00000000000003CLL, 0x8000000252E9A8F0, 0xD000000000000095, 0x8000000252E9AA80, 0xD00000000000006ELL, 0x8000000252E90A60, 88);
    return 0;
  }

  v86 = v13;
  v91 = "alue temperature command";
  v18 = v14;
  v88 = a4;
  v89 = a6;
  v19 = sub_252C6E240(v96);
  v20 = v17;
  [v20 doubleValue];
  v22 = v21 > 82.0;
  v23 = v21 > 28.0;
  [v20 doubleValue];
  v25 = v24;
  v92 = v20;

  v26 = v25 < 60.0;
  if (v19 == 3)
  {
    v27 = v23;
  }

  else
  {
    v27 = v22;
  }

  v94 = v27;
  if (v19 == 3)
  {
    v26 = v25 < 15.0;
  }

  v90 = v26;
  v93 = a3;
  if (a2)
  {
    [a2 doubleValue];
    v29 = v28 <= 82.0;
    if (v28 < 60.0)
    {
      v29 = 0;
    }

    v30 = v28 <= 28.0;
    if (v28 < 15.0)
    {
      v30 = 0;
    }

    if (v19 == 3)
    {
      v31 = v30;
    }

    else
    {
      v31 = v29;
    }

    [a2 doubleValue];
    v33 = v32;
  }

  else
  {
    v31 = 0;
    v33 = 0.0;
  }

  v35 = v92;
  [v92 doubleValue];
  v37 = v36;
  v100 = 0;
  v101 = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000038, 0x8000000252E9AB20);
  v38 = [v35 description];
  v39 = sub_252E36F34();
  v41 = v40;

  MEMORY[0x2530AD570](v39, v41);

  MEMORY[0x2530AD570](0x202020202020200ALL, 0xEF203A74696E7520);
  v42 = sub_252C65640(v19);
  MEMORY[0x2530AD570](v42);

  MEMORY[0x2530AD570](0xD000000000000023, 0x8000000252E9A6E0);
  if (v94)
  {
    v43 = 1702195828;
  }

  else
  {
    v43 = 0x65736C6166;
  }

  v44 = 0xE400000000000000;
  if (v94)
  {
    v45 = 0xE400000000000000;
  }

  else
  {
    v45 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v43, v45);

  MEMORY[0x2530AD570](0xD000000000000023, 0x8000000252E9A710);
  if (v90)
  {
    v46 = 1702195828;
  }

  else
  {
    v46 = 0x65736C6166;
  }

  if (v90)
  {
    v47 = 0xE400000000000000;
  }

  else
  {
    v47 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v46, v47);

  MEMORY[0x2530AD570](0xD00000000000002ALL, 0x8000000252E9A740);
  HIDWORD(v84) = v31;
  if (v31)
  {
    v48 = 1702195828;
  }

  else
  {
    v48 = 0x65736C6166;
  }

  if (!v31)
  {
    v44 = 0xE500000000000000;
  }

  v85 = v48;
  MEMORY[0x2530AD570]();

  MEMORY[0x2530AD570](0x7D202020200ALL, 0xE600000000000000);
  sub_252CC3D90(v100, v101, 0xD000000000000095, v91 | 0x8000000000000000);

  v49 = v86;
  (*(v97 + 16))(v86, v18, v11);
  v100 = 0;
  v101 = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000027, 0x8000000252E9AB60);
  v50 = sub_252CDBB90();
  MEMORY[0x2530AD570](v50);

  MEMORY[0x2530AD570](0xD000000000000019, 0x8000000252E9AB90);
  if (a2)
  {
    v51 = [a2 description];
    a2 = sub_252E36F34();
    v53 = v52;
  }

  else
  {
    v53 = 0;
  }

  v87 = v18;
  v98 = a2;
  v99 = v53;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
  v54 = sub_252E36F94();
  MEMORY[0x2530AD570](v54);

  MEMORY[0x2530AD570](0xD000000000000017, 0x8000000252E9ABB0);
  if (v93)
  {
    v55 = [v93 description];
    v56 = sub_252E36F34();
    v58 = v57;
  }

  else
  {
    v56 = 0;
    v58 = 0;
  }

  v98 = v56;
  v99 = v58;
  v59 = sub_252E36F94();
  MEMORY[0x2530AD570](v59);

  MEMORY[0x2530AD570](0xD000000000000017, 0x8000000252E9ABD0);
  v60 = v88;
  v61 = v91;
  if (v88)
  {
    v62 = [v88 &_OBJC_LABEL_PROTOCOL___HMExecuteOperation];
    v63 = sub_252E36F34();
    v65 = v64;
  }

  else
  {
    v63 = 0;
    v65 = 0;
  }

  v98 = v63;
  v99 = v65;
  v66 = sub_252E36F94();
  MEMORY[0x2530AD570](v66);

  MEMORY[0x2530AD570](0xD000000000000026, 0x8000000252E9ABF0);
  MEMORY[0x2530AD570](v85, v44);

  MEMORY[0x2530AD570](0xD00000000000001CLL, 0x8000000252E9AC20);
  if (v33 >= v37)
  {
    v67 = 0x65736C6166;
  }

  else
  {
    v67 = 1702195828;
  }

  if (v33 >= v37)
  {
    v68 = 0xE500000000000000;
  }

  else
  {
    v68 = 0xE400000000000000;
  }

  MEMORY[0x2530AD570](v67, v68);

  MEMORY[0x2530AD570](0xD000000000000011, 0x8000000252E9AC40);
  LOBYTE(v98) = v95;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545D18, &unk_252E5F6B0);
  v69 = sub_252E36F94();
  MEMORY[0x2530AD570](v69);

  MEMORY[0x2530AD570](32010, 0xE200000000000000);
  sub_252CC3D90(v100, v101, 0xD000000000000095, v61 | 0x8000000000000000);

  (*(v97 + 8))(v49, v11);
  v70 = v93;
  if (!v94 && !v90)
  {
    goto LABEL_65;
  }

  if (!v93)
  {
    goto LABEL_65;
  }

  if (!v60)
  {
    goto LABEL_65;
  }

  if ((HIDWORD(v84) ^ 1))
  {
    goto LABEL_65;
  }

  type metadata accessor for HomeAttributeValue();
  v71 = v70;
  v72 = v60;
  v73 = sub_252E37694();

  if (v73)
  {
    goto LABEL_65;
  }

  if (v95 > 3u)
  {
    if (v95 > 5u)
    {
      if (v95 != 6)
      {
        goto LABEL_65;
      }
    }

    else if (v95 == 4)
    {

LABEL_64:
      sub_252CC3D90(0xD000000000000020, 0x8000000252E9ACA0, 0xD000000000000095, v61 | 0x8000000000000000);
      v75 = v92;
      v76 = sub_252D91A54(v92, v94);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
      v77 = swift_allocObject();
      *(v77 + 16) = xmmword_252E3C130;
      *(v77 + 32) = v76;

      return v77;
    }
  }

  v74 = sub_252E37DB4();

  if (v74)
  {
    goto LABEL_64;
  }

LABEL_65:
  v100 = 0;
  v101 = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000033, 0x8000000252E9AC60);
  v78 = v92;
  v79 = [v92 &_OBJC_LABEL_PROTOCOL___HMExecuteOperation];
  v80 = sub_252E36F34();
  v82 = v81;

  MEMORY[0x2530AD570](v80, v82);

  sub_252CC3D90(v100, v101, 0xD000000000000095, v61 | 0x8000000000000000);

  v83 = sub_252D3D550(v96, v70, v60, v89, v33 < v37, v78);

  return v83;
}

uint64_t sub_252D925A8(void *a1)
{
  v2 = [a1 userTask];
  if (!v2)
  {
    goto LABEL_6;
  }

  v3 = v2;
  v4 = [v2 taskType];

  if (v4 != 1)
  {
    return 0;
  }

  v5 = [a1 userTask];
  if (!v5)
  {
LABEL_6:
    sub_252C515AC();
    return 0;
  }

  v6 = v5;
  v7 = [v5 attribute];

  if (v7 == 6)
  {
    return sub_252CCFCB8() & 1;
  }

  return 0;
}

BOOL sub_252D92654(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (qword_27F53F520 != -1)
  {
LABEL_8:
    swift_once();
  }

  v5 = sub_252E36AD4();
  __swift_project_value_buffer(v5, qword_27F544E08);
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD00000000000001BLL, 0x8000000252E9ACD0);
  MEMORY[0x2530AD570](v3, v4);
  MEMORY[0x2530AD570](0xD000000000000016, 0x8000000252E9ACF0);

  v7 = MEMORY[0x2530AD730](v6, MEMORY[0x277D837D0]);
  v9 = v8;

  MEMORY[0x2530AD570](v7, v9);

  sub_252CC3D90(0, 0xE000000000000000, 0xD000000000000099, 0x8000000252E9AD10);

  v10 = *a2;
  v11 = *(*a2 + 16);

  v12 = (v10 + 40);
  v13 = -v11;
  v14 = -1;
  do
  {
    v15 = v13 + v14;
    if (v13 + v14 == -1)
    {
      break;
    }

    if (++v14 >= *(v10 + 16))
    {
      __break(1u);
      goto LABEL_8;
    }

    v16 = v12 + 2;
    v17 = *(v12 - 1);
    a2 = *v12;

    v18 = sub_252AD28DC(v17, a2, v3, v4);

    v12 = v16;
  }

  while (!v18);

  return v15 != -1;
}

uint64_t WhichOnesFailedFlow.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v0);
  swift_beginAccess();
  v2 = *(v1 + 22);

  *(v0 + 16) = v2;
  v4 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v3);
  sub_252929E74((v4 + 136), v0 + 24);

  v6 = *(_s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v5) + 29);

  *(v0 + 88) = type metadata accessor for HomeAutomationCATPatternsExecutor(0);
  *(v0 + 96) = &off_2864BA730;
  *(v0 + 64) = v6;
  *(v0 + 104) = 0;
  *(v0 + 112) = sub_252D92E00;
  *(v0 + 120) = 0;
  return v0;
}

HomeAutomationInternal::WhichOnesFailedFlow::State_optional __swiftcall WhichOnesFailedFlow.State.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_252E37B74();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t WhichOnesFailedFlow.State.rawValue.getter()
{
  v1 = 0x65747563657865;
  if (*v0 != 1)
  {
    v1 = 0x6574656C706D6F63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_252D929E8(_BYTE *a1, _BYTE *a2)
{
  v2 = 0x65747563657865;
  v3 = *a1;
  v4 = 0xE700000000000000;
  v5 = 0x6574656C706D6F63;
  if (v3 == 1)
  {
    v5 = 0x65747563657865;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0xD000000000000010;
  }

  if (v3)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0x8000000252E67F20;
  }

  v8 = 0xE700000000000000;
  if (*a2 != 1)
  {
    v2 = 0x6574656C706D6F63;
    v8 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0xD000000000000010;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0x8000000252E67F20;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_252E37DB4();
  }

  return v11 & 1;
}

uint64_t sub_252D92AE4()
{
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252D92B8C(uint64_t a1)
{
  sub_252E37044();
}

uint64_t sub_252D92C20(uint64_t a1)
{
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

void sub_252D92CD0(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x65747563657865;
  if (v2 != 1)
  {
    v4 = 0x6574656C706D6F63;
    v3 = 0xE800000000000000;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xD000000000000010;
  }

  if (v5)
  {
    v3 = 0x8000000252E67F20;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t WhichOnesFailedFlow.init()(uint64_t a1)
{
  v2 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(a1);
  swift_beginAccess();
  v3 = *(v2 + 22);

  *(v1 + 16) = v3;
  v5 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v4);
  sub_252929E74((v5 + 136), v1 + 24);

  v7 = *(_s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v6) + 29);

  *(v1 + 88) = type metadata accessor for HomeAutomationCATPatternsExecutor(0);
  *(v1 + 96) = &off_2864BA730;
  *(v1 + 64) = v7;
  *(v1 + 104) = 0;
  *(v1 + 112) = sub_252D92E00;
  *(v1 + 120) = 0;
  return v1;
}

uint64_t sub_252D92E04()
{
  v1 = sub_252E34164();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v12[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 104))
  {
    v5 = sub_252E37DB4();

    if ((v5 & 1) == 0)
    {
      if (qword_27F53F500 != -1)
      {
        swift_once();
      }

      v6 = sub_252E36AD4();
      __swift_project_value_buffer(v6, qword_27F544DA8);
      sub_252CC7784(0xD000000000000060, 0x8000000252E82850, 0, 0xD00000000000007ELL, 0x8000000252E9ADB0);
LABEL_11:
      v9 = 0;
      return v9 & 1;
    }
  }

  else
  {
  }

  sub_252E340E4();
  sub_252AB3FEC(v4, 0, v12);
  (*(v2 + 8))(v4, v1);
  memcpy(v13, v12, sizeof(v13));
  memcpy(v14, v12, sizeof(v14));
  if (sub_252956B94(v14) == 1)
  {
    if (qword_27F53F500 != -1)
    {
      swift_once();
    }

    v7 = sub_252E36AD4();
    __swift_project_value_buffer(v7, qword_27F544DA8);
    v12[0] = 0;
    v12[1] = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000032, 0x8000000252E9AE30);
    v8 = sub_252E340C4();
    MEMORY[0x2530AD570](v8);

    sub_252CC4050(v12[0], v12[1], 0xD00000000000007ELL, 0x8000000252E9ADB0, 0x7475706E69286E6FLL, 0xEA0000000000293ALL, 67);

    goto LABEL_11;
  }

  if (LOBYTE(v14[26]) == 9)
  {
    v9 = 0;
  }

  else
  {
    v9 = sub_252A0D524(v14[26], 8u);
  }

  sub_25299F5D4(v13);
  return v9 & 1;
}

uint64_t sub_252D93158(uint64_t a1)
{
  v2[27] = a1;
  v2[28] = v1;
  sub_252E33944();
  v2[29] = swift_task_alloc();
  v3 = sub_252E34014();
  v2[30] = v3;
  v2[31] = *(v3 - 8);
  v2[32] = swift_task_alloc();
  v4 = sub_252E36324();
  v2[33] = v4;
  v2[34] = *(v4 - 8);
  v2[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252D932A0, 0, 0);
}

uint64_t sub_252D932A0()
{
  v62 = v0;
  v3 = v0[28];
  v4 = qword_27F53F500;
  if (!*(v3 + 104))
  {
LABEL_21:
    if (v4 != -1)
    {
      swift_once();
      v3 = v0[28];
    }

    v20 = sub_252E36AD4();
    __swift_project_value_buffer(v20, qword_27F544DA8);
    sub_252CC3D90(0xD000000000000025, 0x8000000252E9AF20, 0xD00000000000007ELL, 0x8000000252E9ADB0);
    v0[26] = (*(v3 + 112))(v3);
    v21 = swift_allocObject();
    *(v21 + 16) = sub_252D94D18;
    *(v21 + 24) = v3;
    sub_252E33454();

    sub_252E33AC4();

LABEL_24:

    goto LABEL_28;
  }

  v5 = "/Library/Caches/com.apple.xbs/Sources/SiriHomeAutomation/HomeAutomationInternal/Flow/WhichOnesFailed/WhichOnesFailedFlow.swift";
  if (*(v3 + 104) != 1)
  {
    if (qword_27F53F500 != -1)
    {
      swift_once();
    }

    v22 = sub_252E36AD4();
    __swift_project_value_buffer(v22, qword_27F544DA8);
    sub_252CC3D90(0xD00000000000001DLL, 0x8000000252E9AE70, 0xD00000000000007ELL, 0x8000000252E9ADB0);
    sub_252E33B24();
LABEL_28:

    v23 = v0[1];

    return v23();
  }

  if (qword_27F53F500 != -1)
  {
    goto LABEL_46;
  }

  while (1)
  {
    v6 = v0;
    v7 = sub_252E36AD4();
    v55 = v5 - 32;
    __swift_project_value_buffer(v7, qword_27F544DA8);
    sub_252CC3D90(0xD00000000000002ALL, 0x8000000252E9AE90, 0xD00000000000007ELL, (v5 - 32) | 0x8000000000000000);
    sub_252B79938();
    v56 = sub_252CB008C();
    v8 = type metadata accessor for HomeStore(0);
    v9 = static HomeStore.shared.getter(v8);
    v10 = sub_2529D9D50();
    v3 = 0;
    v11 = sub_2529D70E4(v10);

    v60 = MEMORY[0x277D84F90];
    v0 = v11 >> 62 ? sub_252E378C4() : *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v12 = v6;
    v13 = MEMORY[0x277D84F90];
    v58 = v12;
    if (!v0)
    {
      break;
    }

    v14 = 0;
    v57 = v12 + 22;
    v5 = (v11 & 0xC000000000000001);
    v15 = v11 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v5)
      {
        v2 = MEMORY[0x2530ADF00](v14, v11);
        v1 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
LABEL_20:
          __break(1u);
          goto LABEL_21;
        }

        goto LABEL_13;
      }

      if (v14 >= *(v15 + 16))
      {
        break;
      }

      v2 = *(v11 + 8 * v14 + 32);

      v1 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        goto LABEL_20;
      }

LABEL_13:
      v16 = *(v2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier + 8);
      if (v16)
      {
        v17 = v11;
        v12[22] = *(v2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier);
        v12[23] = v16;
        v18 = swift_task_alloc();
        *(v18 + 16) = v57;
        v19 = sub_2529ED970(sub_25296A69C, v18, v56);

        if (v19)
        {
          sub_252E37A94();
          sub_252E37AC4();
          sub_252E37AD4();
          sub_252E37AA4();
        }

        else
        {
        }

        v12 = v58;
        v11 = v17;
      }

      else
      {
      }

      ++v14;
      if (v1 == v0)
      {
        v25 = v60;
        v13 = MEMORY[0x277D84F90];
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_46:
    swift_once();
  }

  v25 = MEMORY[0x277D84F90];
LABEL_33:

  if ((v25 & 0x8000000000000000) != 0 || (v25 & 0x4000000000000000) != 0)
  {
    v26 = sub_252E378C4();
    if (!v26)
    {
      goto LABEL_49;
    }

LABEL_36:
    v0 = v12;
    v60 = v13;
    v27 = &v60;
    sub_2529AA4E0(0, v26 & ~(v26 >> 63), 0);
    if ((v26 & 0x8000000000000000) == 0)
    {
      v28 = 0;
      v29 = v0[34];
      v3 = v60;
      v30 = v25;
      do
      {
        if ((v25 & 0xC000000000000001) != 0)
        {
          MEMORY[0x2530ADF00](v28, v30);
        }

        else
        {
        }

        sub_252E37024();

        v60 = v3;
        v32 = *(v3 + 16);
        v31 = *(v3 + 24);
        if (v32 >= v31 >> 1)
        {
          sub_2529AA4E0((v31 > 1), v32 + 1, 1);
          v3 = v60;
        }

        v33 = v58[35];
        v34 = v58[33];
        ++v28;
        *(v3 + 16) = v32 + 1;
        (*(v29 + 32))(v3 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v32, v33, v34);
        v30 = v25;
      }

      while (v26 != v28);

      v12 = v58;
      goto LABEL_50;
    }

    __break(1u);
LABEL_64:
    sub_2529A3A74(v3, v3 + v25, v27, (2 * v1) | 1);
    v54 = v53;

    v3 = v54;
    goto LABEL_58;
  }

  v26 = *(v25 + 16);
  if (v26)
  {
    goto LABEL_36;
  }

LABEL_49:

  v3 = MEMORY[0x277D84F90];
LABEL_50:
  v36 = v12[33];
  v35 = v12[34];
  v0 = v12;
  v60 = 0;
  v61 = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000039, 0x8000000252E9AEC0);
  v37 = MEMORY[0x2530AD730](v56, MEMORY[0x277D837D0]);
  v39 = v38;

  MEMORY[0x2530AD570](v37, v39);

  sub_252CC3D90(v60, v61, 0xD00000000000007ELL, v55 | 0x8000000000000000);

  v60 = 0;
  v61 = 0xE000000000000000;
  sub_252E379F4();

  v2 = 0xD00000000000007ELL;
  v60 = 0xD00000000000001BLL;
  v61 = 0x8000000252E9AF00;
  v40 = MEMORY[0x2530AD730](v3, v36);
  MEMORY[0x2530AD570](v40);

  sub_252CC3D90(v60, v61, 0xD00000000000007ELL, v55 | 0x8000000000000000);

  v1 = *(v3 + 16);
  if (v1 >= 5)
  {
    v27 = 5;
  }

  else
  {
    v27 = *(v3 + 16);
  }

  v25 = (*(v35 + 80) + 32) & ~*(v35 + 80);
  if (v1 < 6)
  {
LABEL_56:

    v13 = v3;
    v42 = v1;
  }

  else
  {
    sub_2529A3A74(v3, v3 + v25, 0, (2 * v27) | 1);
    v42 = *(v3 + 16);
    if (v42 < v1)
    {
      __break(1u);
      goto LABEL_56;
    }

    v13 = v41;
  }

  v0[36] = v13;
  if (v42 != v1 - v27)
  {
    goto LABEL_64;
  }

LABEL_58:
  v0[37] = v3;
  v43 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v41);
  sub_252929E74((v43 + 288), (v0 + 2));

  v44 = v0[5];
  v45 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v44);
  v46 = (*(v45 + 120))(v44, v45);
  v47 = __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v48 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v47);
  if (v46)
  {
    v49 = v0[28];
    sub_252929E74((v48 + 96), (v0 + 17));

    v50 = swift_allocObject();
    v50[2] = v49;
    v50[3] = v13;
    v50[4] = v3;
    sub_252E331C4();
    swift_allocObject();

    v0[25] = sub_252E331B4();
    sub_252E33AF4();
    goto LABEL_24;
  }

  v0[38] = *(v48 + 29);

  v51 = sub_252C0B308(0, v13, v3);
  v0[39] = v51;
  v59 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
  v52 = swift_task_alloc();
  v0[40] = v52;
  *v52 = v0;
  v52[1] = sub_252D93C40;

  return v59(v2 - 96, 0x8000000252E951C0, v51);
}

uint64_t sub_252D93C40(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 328) = v1;

  if (v1)
  {
    v5 = sub_252D93EFC;
  }

  else
  {

    *(v4 + 336) = a1;
    v5 = sub_252D93D70;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252D93D70()
{
  v1 = v0[42];
  v3 = v0[31];
  v2 = v0[32];
  v4 = v0[30];
  v5 = v0[28];

  v6 = v5[6];
  v7 = v5[7];
  __swift_project_boxed_opaque_existential_1(v5 + 3, v6);
  (*(v7 + 32))(v6, v7);
  __swift_project_boxed_opaque_existential_1(v0 + 12, v0[15]);
  sub_252E33924();
  sub_252E33F54();
  sub_252E334D4();
  (*(v3 + 8))(v2, v4);
  sub_252E33B04();

  __swift_destroy_boxed_opaque_existential_1(v0 + 12);

  v8 = v0[1];

  return v8();
}

uint64_t sub_252D93EFC()
{
  v1 = v0[41];

  v3 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v2);
  sub_252929E74((v3 + 96), (v0 + 7));

  sub_252E331C4();
  swift_allocObject();
  v0[24] = sub_252E331B4();
  sub_252E33AF4();

  v4 = v0[1];

  return v4();
}

uint64_t sub_252D94038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_252E34014();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252D940FC, 0, 0);
}

uint64_t sub_252D940FC()
{
  v6 = *(v0 + 32);
  __swift_project_boxed_opaque_existential_1((*(v0 + 24) + 24), *(*(v0 + 24) + 48));
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *(v1 + 16) = v6;
  sub_252B03B94();
  v2 = swift_task_alloc();
  *(v0 + 80) = v2;
  *v2 = v0;
  v2[1] = sub_252D9423C;
  v3 = *(v0 + 64);
  v4 = *(v0 + 16);

  return sub_252A199A8(v4, &unk_252E5F940, v1, &unk_252E5F948, 0, v3, 0, 0);
}

uint64_t sub_252D9423C()
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  v5 = *v1;
  *(v5 + 88) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_252D943F0, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_252D943F0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252D9445C(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x2822009F8](sub_252D9447C, 0, 0);
}

uint64_t sub_252D9447C(uint64_t a1)
{
  v2 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(a1);
  swift_beginAccess();
  v1[7] = *(v2 + 23);

  v3 = swift_task_alloc();
  v1[8] = v3;
  *v3 = v1;
  v3[1] = sub_252D94548;
  v5 = v1[5];
  v4 = v1[6];

  return sub_252D2BF00(v5, v4);
}

uint64_t sub_252D94548(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_252D946A0, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_252D946A0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252D94704(char a1)
{
  if (a1)
  {
    *(v1 + 104) = 2;
    if (qword_27F53F500 != -1)
    {
      swift_once();
    }

    v2 = sub_252E36AD4();
    __swift_project_value_buffer(v2, qword_27F544DA8);
    sub_252E379F4();
    v3 = "pdating the flowState to ";
    v4 = 0xD000000000000035;
  }

  else
  {
    *(v1 + 104) = 1;
    if (qword_27F53F500 != -1)
    {
      swift_once();
    }

    v5 = sub_252E36AD4();
    __swift_project_value_buffer(v5, qword_27F544DA8);
    sub_252E379F4();
    v3 = "l. Flow state set to: ";
    v4 = 0xD000000000000039;
  }

  MEMORY[0x2530AD570](v4, v3 | 0x8000000000000000);
  sub_252E37AE4();
  sub_252CC3D90(0, 0xE000000000000000, 0xD00000000000007ELL, 0x8000000252E9ADB0);
}

uint64_t WhichOnesFailedFlow.deinit()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  __swift_destroy_boxed_opaque_existential_1((v0 + 64));

  return v0;
}

uint64_t WhichOnesFailedFlow.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  __swift_destroy_boxed_opaque_existential_1((v0 + 64));

  return swift_deallocClassInstance();
}

void (*sub_252D9492C(uint64_t *a1))(void *a1)
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

uint64_t sub_252D949E0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25293B808;

  return sub_252D93158(a1);
}

uint64_t sub_252D94A7C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for WhichOnesFailedFlow();

  return sub_252E33644();
}

uint64_t sub_252D94AB4(uint64_t a1)
{
  v2 = sub_252E36AB4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 208);
  if (qword_27F53F5D0 != -1)
  {
    swift_once();
  }

  v7 = qword_27F544F58;
  sub_252E36A94();
  sub_252E375D4();
  sub_252E36A84();
  if (v6 == 9)
  {
    v8 = 0;
  }

  else
  {
    v8 = sub_252A0D524(v6, 8u);
  }

  v9 = sub_252E375C4();
  sub_252E36A74(v9, &dword_252917000, v7, "ShouldHandleWhichOnesFailedFlow", 31, 2, v5, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);
  (*(v3 + 8))(v5, v2);
  return v8 & 1;
}

uint64_t sub_252D94C64(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25293B808;

  return sub_252D94038(a1, v4, v5, v6);
}

unint64_t sub_252D94D24()
{
  result = qword_27F545D20;
  if (!qword_27F545D20)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for WhichOnesFailedFlow.State, &type metadata for WhichOnesFailedFlow.State, v0, v1);
    atomic_store(result, &qword_27F545D20);
  }

  return result;
}

uint64_t sub_252D94D78(uint64_t a1)
{
  result = sub_252D94E8C(&qword_27F545D28, aD3);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_252D94DE0(uint64_t a1)
{
  result = sub_252D94E8C(&qword_27F545D30, protocol conformance descriptor for WhichOnesFailedFlow);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_252D94E8C(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for WhichOnesFailedFlow();
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t dispatch thunk of WhichOnesFailedFlow.execute()(uint64_t a1)
{
  v6 = (*(*v1 + 160) + **(*v1 + 160));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_25293B808;

  return v6(a1);
}

uint64_t sub_252D95050()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_25294B7BC;

  return sub_252D9445C(v2, v3);
}

uint64_t sub_252D950E8()
{
  v0 = sub_252E334A4();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v18[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v18[-1] - v6;
  v8 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v5);
  sub_252929E74((v8 + 288), v18);

  v9 = v19;
  v10 = v20;
  __swift_project_boxed_opaque_existential_1(v18, v19);
  v11 = (*(v10 + 176))(v9, v10);
  __swift_destroy_boxed_opaque_existential_1(v18);
  if (v11)
  {
    sub_252E33464();
    (*(v1 + 16))(v4, v7, v0);
    v12 = sub_2529F90D4(0, 1, 1, MEMORY[0x277D84F90]);
    v14 = v12[2];
    v13 = v12[3];
    if (v14 >= v13 >> 1)
    {
      v12 = sub_2529F90D4((v13 > 1), v14 + 1, 1, v12);
    }

    (*(v1 + 8))(v7, v0);
    v12[2] = v14 + 1;
    (*(v1 + 32))(v12 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v14, v4, v0);
  }

  v15 = sub_252E33144();

  return v15;
}

uint64_t CapabilityAttributeSemantic.rawValue.getter()
{
  v1 = 0x5F746E6572727563;
  if (*v0 != 1)
  {
    v1 = 0x656C67676F74;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x765F746567726174;
  }
}

HomeAutomationInternal::CapabilityAttributeSemantic_optional __swiftcall CapabilityAttributeSemantic.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_252E37B74();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_252D953F8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x5F746E6572727563;
  v4 = 0xED000065756C6176;
  if (v2 != 1)
  {
    v3 = 0x656C67676F74;
    v4 = 0xE600000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x765F746567726174;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xEC00000065756C61;
  }

  v7 = 0x5F746E6572727563;
  v8 = 0xED000065756C6176;
  if (*a2 != 1)
  {
    v7 = 0x656C67676F74;
    v8 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x765F746567726174;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xEC00000065756C61;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_252E37DB4();
  }

  return v11 & 1;
}

uint64_t sub_252D95510()
{
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252D955C4(uint64_t a1)
{
  sub_252E37044();
}

uint64_t sub_252D95664(uint64_t a1)
{
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

void sub_252D95720(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC00000065756C61;
  v4 = 0xED000065756C6176;
  v5 = 0x5F746E6572727563;
  if (v2 != 1)
  {
    v5 = 0x656C67676F74;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x765F746567726174;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_252D95794(unsigned __int8 *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x5F746E6572727563;
  v4 = 0xED000065756C6176;
  if (*a2 != 1)
  {
    v3 = 0x656C67676F74;
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x765F746567726174;
  }

  if (*a2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xEC00000065756C61;
  }

  v7 = 0x5F746E6572727563;
  v8 = 0xED000065756C6176;
  if (v2 != 1)
  {
    v7 = 0x656C67676F74;
    v8 = 0xE600000000000000;
  }

  if (v2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x765F746567726174;
  }

  if (v2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xEC00000065756C61;
  }

  if (v5 == v9 && v6 == v10)
  {

    v11 = 1;
  }

  else
  {
    v12 = sub_252E37DB4();

    v11 = v12 ^ 1;
  }

  return v11 & 1;
}

uint64_t sub_252D958C0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x5F746E6572727563;
  v4 = 0xED000065756C6176;
  if (v2 != 1)
  {
    v3 = 0x656C67676F74;
    v4 = 0xE600000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x765F746567726174;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xEC00000065756C61;
  }

  v7 = 0x5F746E6572727563;
  v8 = 0xED000065756C6176;
  if (*a2 != 1)
  {
    v7 = 0x656C67676F74;
    v8 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x765F746567726174;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xEC00000065756C61;
  }

  if (v5 == v9 && v6 == v10)
  {

    v11 = 1;
  }

  else
  {
    v12 = sub_252E37DB4();

    v11 = v12 ^ 1;
  }

  return v11 & 1;
}

uint64_t sub_252D959EC(unsigned __int8 *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x5F746E6572727563;
  v4 = 0xED000065756C6176;
  if (*a2 != 1)
  {
    v3 = 0x656C67676F74;
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x765F746567726174;
  }

  if (*a2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xEC00000065756C61;
  }

  v7 = 0x5F746E6572727563;
  v8 = 0xED000065756C6176;
  if (v2 != 1)
  {
    v7 = 0x656C67676F74;
    v8 = 0xE600000000000000;
  }

  if (v2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x765F746567726174;
  }

  if (v2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xEC00000065756C61;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = sub_252E37DB4();
  }

  return v11 & 1;
}

uint64_t sub_252D95BC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_252D95ECC();
  v5 = sub_252D95F20();
  v6 = sub_252D95F74();

  return MEMORY[0x2821C21F8](a1, a2, v4, v5, v6);
}

uint64_t _s22HomeAutomationInternal27CapabilityAttributeSemanticO1loiySbAC_ACtFZ_0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x5F746E6572727563;
  v4 = 0xED000065756C6176;
  if (v2 != 1)
  {
    v3 = 0x656C67676F74;
    v4 = 0xE600000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x765F746567726174;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xEC00000065756C61;
  }

  v7 = 0x5F746E6572727563;
  v8 = 0xED000065756C6176;
  if (*a2 != 1)
  {
    v7 = 0x656C67676F74;
    v8 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x765F746567726174;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xEC00000065756C61;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = sub_252E37DB4();
  }

  return v11 & 1;
}

unint64_t sub_252D95D50()
{
  result = qword_27F545D38;
  if (!qword_27F545D38)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CapabilityAttributeSemantic, &type metadata for CapabilityAttributeSemantic, v0, v1);
    atomic_store(result, &qword_27F545D38);
  }

  return result;
}

unint64_t sub_252D95DA8()
{
  result = qword_27F545D40;
  if (!qword_27F545D40)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CapabilityAttributeSemantic, &type metadata for CapabilityAttributeSemantic, v0, v1);
    atomic_store(result, &qword_27F545D40);
  }

  return result;
}

unint64_t sub_252D95E00()
{
  result = qword_27F545D48;
  if (!qword_27F545D48)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F545D50, &qword_252E5FA60);
    result = swift_getWitnessTable(MEMORY[0x277D83988], v3, v0, v1);
    atomic_store(result, &qword_27F545D48);
  }

  return result;
}

unint64_t sub_252D95E68()
{
  result = qword_27F545D58;
  if (!qword_27F545D58)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CapabilityAttributeSemantic, &type metadata for CapabilityAttributeSemantic, v0, v1);
    atomic_store(result, &qword_27F545D58);
  }

  return result;
}

unint64_t sub_252D95ECC()
{
  result = qword_27F545D60;
  if (!qword_27F545D60)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CapabilityAttributeSemantic, &type metadata for CapabilityAttributeSemantic, v0, v1);
    atomic_store(result, &qword_27F545D60);
  }

  return result;
}

unint64_t sub_252D95F20()
{
  result = qword_27F545D68;
  if (!qword_27F545D68)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CapabilityAttributeSemantic, &type metadata for CapabilityAttributeSemantic, v0, v1);
    atomic_store(result, &qword_27F545D68);
  }

  return result;
}

unint64_t sub_252D95F74()
{
  result = qword_27F545D70;
  if (!qword_27F545D70)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CapabilityAttributeSemantic, &type metadata for CapabilityAttributeSemantic, v0, v1);
    atomic_store(result, &qword_27F545D70);
  }

  return result;
}

uint64_t sub_252D95FCC()
{
  sub_252E363D4();
  swift_allocObject();
  result = sub_252E363C4();
  qword_27F575C30 = result;
  return result;
}

uint64_t sub_252D962AC()
{
  if (PlaceHintSemantic.rawValue.getter() == 1819042152 && v0 == 0xE400000000000000)
  {
LABEL_8:

    goto LABEL_9;
  }

  v2 = sub_252E37DB4();

  if ((v2 & 1) == 0)
  {
    if (PlaceHintSemantic.rawValue.getter() != 0x6E65686374696BLL || v3 != 0xE700000000000000)
    {
      v6 = sub_252E37DB4();

      if (v6)
      {
        goto LABEL_9;
      }

      if (PlaceHintSemantic.rawValue.getter() != 0x6F72676E6976696CLL || v7 != 0xEA00000000006D6FLL)
      {
        v8 = sub_252E37DB4();

        if (v8)
        {
          goto LABEL_9;
        }

        if (PlaceHintSemantic.rawValue.getter() != 0x6F72676E696E6964 || v9 != 0xEA00000000006D6FLL)
        {
          v10 = sub_252E37DB4();

          if (v10)
          {
            goto LABEL_9;
          }

          if (PlaceHintSemantic.rawValue.getter() != 0x65636E6172746E65 || v11 != 0xE800000000000000)
          {
            v12 = sub_252E37DB4();

            if (v12)
            {
              goto LABEL_9;
            }

            if (PlaceHintSemantic.rawValue.getter() != 0x6D6F6F7268746162 || v13 != 0xE800000000000000)
            {
              v14 = sub_252E37DB4();

              if (v14)
              {
                goto LABEL_9;
              }

              if (PlaceHintSemantic.rawValue.getter() != 0x65636966666FLL || v15 != 0xE600000000000000)
              {
                v16 = sub_252E37DB4();

                if (v16)
                {
                  goto LABEL_9;
                }

                if (PlaceHintSemantic.rawValue.getter() != 0x6D6F6F72646562 || v17 != 0xE700000000000000)
                {
                  v18 = sub_252E37DB4();

                  if (v18)
                  {
                    goto LABEL_9;
                  }

                  if (PlaceHintSemantic.rawValue.getter() != 0x625F72657473616DLL || v19 != 0xEE006D6F6F726465)
                  {
                    v20 = sub_252E37DB4();

                    if (v20)
                    {
                      goto LABEL_9;
                    }

                    if (PlaceHintSemantic.rawValue.getter() != 0x746E656D65736162 || v21 != 0xE800000000000000)
                    {
                      v22 = sub_252E37DB4();

                      if (v22)
                      {
                        goto LABEL_9;
                      }

                      if (PlaceHintSemantic.rawValue.getter() != 1685217657 || v23 != 0xE400000000000000)
                      {
                        v24 = sub_252E37DB4();

                        if (v24)
                        {
                          goto LABEL_9;
                        }

                        if (PlaceHintSemantic.rawValue.getter() != 7174503 || v25 != 0xE300000000000000)
                        {
                          v26 = sub_252E37DB4();

                          if (v26)
                          {
                            goto LABEL_9;
                          }

                          if (PlaceHintSemantic.rawValue.getter() != 0x6F6F725F79616C70 || v27 != 0xE90000000000006DLL)
                          {
                            v28 = sub_252E37DB4();

                            if (v28)
                            {
                              goto LABEL_9;
                            }

                            if (PlaceHintSemantic.rawValue.getter() != 0x6D6F6F725F7674 || v29 != 0xE700000000000000)
                            {
                              v30 = sub_252E37DB4();

                              if (v30)
                              {
                                goto LABEL_9;
                              }

                              if (PlaceHintSemantic.rawValue.getter() != 0x706F68736B726F77 || v31 != 0xE800000000000000)
                              {
                                v4 = sub_252E37DB4();

                                return v4 & 1;
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    goto LABEL_8;
  }

LABEL_9:
  v4 = 1;
  return v4 & 1;
}

char *sub_252D96838(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  v3 = a1 + 32;
  v4 = v2 + 1;
  v5 = 120;
  do
  {
    if (!--v4)
    {

      return v1;
    }

    v6 = *(a1 + v5);
    v5 += 504;
  }

  while (!*(v6 + 16));
  v7 = qword_27F53F520;

  if (v7 != -1)
  {
LABEL_173:
    swift_once();
  }

  v8 = sub_252E36AD4();
  __swift_project_value_buffer(v8, qword_27F544E08);
  __src[0] = 0;
  __src[1] = 0xE000000000000000;
  sub_252E379F4();

  __src[0] = 0xD000000000000021;
  __src[1] = 0x8000000252E9AF90;
  v9 = MEMORY[0x2530AD730](v1, &type metadata for HomeAutomationIntent);
  MEMORY[0x2530AD570](v9);

  sub_252CC3D90(__src[0], __src[1], 0xD000000000000092, 0x8000000252E9AFC0);

  if (!v2)
  {
    goto LABEL_93;
  }

  v11 = 0;
  while (1)
  {
    v12 = *(v3 + 504 * v11 + 88);
    v13 = *(v12 + 16);
    if (v13)
    {
      break;
    }

LABEL_7:
    if (++v11 == v2)
    {
      goto LABEL_93;
    }
  }

  v14 = 0;
  while (1)
  {
    v15 = *(v12 + 16);
    if (v14 >= v15)
    {
      __break(1u);
      goto LABEL_142;
    }

    LOBYTE(__src[0]) = *(v12 + 32 + v14);
    if (sub_252D962AC())
    {
      break;
    }

    if (v13 == ++v14)
    {
      goto LABEL_7;
    }
  }

  v12 = v11 + 1;
  if (__OFADD__(v11, 1))
  {
LABEL_176:
    __break(1u);
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
    goto LABEL_182;
  }

  while (1)
  {
    v17 = *(v1 + 2);
    if (v12 == v17)
    {
      break;
    }

    if (v12 >= v17)
    {
LABEL_164:
      __break(1u);
LABEL_165:
      __break(1u);
LABEL_166:
      __break(1u);
LABEL_167:
      __break(1u);
LABEL_168:
      __break(1u);
LABEL_169:
      __break(1u);
LABEL_170:
      __break(1u);
LABEL_171:
      __break(1u);
LABEL_172:
      __break(1u);
      goto LABEL_173;
    }

    v3 = (v1 + 32);
    v18 = &v1[504 * v12 + 32];
    v19 = *(v18 + 11);
    v20 = *(v19 + 16);
    if (v20)
    {
      v21 = 0;
      v2 = v19 + 32;
      while (1)
      {
        if (v21 >= *(v19 + 16))
        {
          goto LABEL_95;
        }

        LOBYTE(__src[0]) = *(v2 + v21);
        if (sub_252D962AC())
        {
          break;
        }

        if (v20 == ++v21)
        {
          goto LABEL_25;
        }
      }

      v16 = __OFADD__(v12++, 1);
      if (v16)
      {
        goto LABEL_165;
      }
    }

    else
    {
LABEL_25:
      if (v11 != v12)
      {
        if ((v11 & 0x8000000000000000) != 0)
        {
          goto LABEL_168;
        }

        v2 = *(v1 + 2);
        if (v11 >= v2)
        {
          goto LABEL_169;
        }

        memcpy(__dst, (v3 + 504 * v11), sizeof(__dst));
        if (v12 >= v2)
        {
          goto LABEL_170;
        }

        memcpy(__src, v18, 0x1F8uLL);
        sub_2529353AC(__dst, v63);
        sub_2529353AC(__src, v63);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v1 = sub_252D57AC0(v1);
        }

        if (v11 >= *(v1 + 2))
        {
          goto LABEL_171;
        }

        v2 = (v1 + 32);
        memcpy(v62, &v1[504 * v11 + 32], sizeof(v62));
        memcpy(&v1[504 * v11 + 32], __src, 0x1F8uLL);
        sub_252935408(v62);
        if (v12 >= *(v1 + 2))
        {
          goto LABEL_172;
        }

        memcpy(v63, (v2 + 504 * v12), sizeof(v63));
        memcpy((v2 + 504 * v12), __dst, 0x1F8uLL);
        sub_252935408(v63);
      }

      v16 = __OFADD__(v11++, 1);
      if (v16)
      {
        goto LABEL_167;
      }

      v16 = __OFADD__(v12++, 1);
      if (v16)
      {
        goto LABEL_165;
      }
    }
  }

  v2 = v11;
  v15 = v11 - v12;
  if (v11 > v12)
  {
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    v12 = *(v1 + 2);
LABEL_99:
    v10 = *(v1 + 2);
    v15 = v12 - v10;
    if (v12 > v10)
    {
LABEL_192:
      __break(1u);
    }

    else if ((v12 & 0x8000000000000000) == 0)
    {
      v16 = __OFADD__(v10, v15);
      v15 = v12;
      if (!v16)
      {
        v66 = v1;
        if (v12 <= *(v1 + 3) >> 1)
        {
          goto LABEL_103;
        }

        goto LABEL_195;
      }

LABEL_194:
      __break(1u);
LABEL_195:
      if (v10 > v15)
      {
        v15 = v10;
      }

      v52 = v10;
      v53 = sub_2529F7FB0(1, v15, 1, v1);
      v10 = v52;
      v1 = v53;
      v66 = v53;
LABEL_103:
      result = sub_252B7B280(v12, v10, 0);
LABEL_104:
      v10 = *(v1 + 2);
      if (v10)
      {
        v35 = v1 + 32;
        v36 = (v1 + 344);
        v37 = *(v1 + 2);
        while (1)
        {
          v38 = *v36;
          v39 = !*(*(v36 - 23) + 16) || v38 == 2;
          if (!v39 && (v38 & 1) != 0)
          {
            break;
          }

          v36 += 504;
          if (!--v37)
          {
            return v1;
          }
        }

        v40 = v10 + 1;
        v41 = 120;
        while (--v40)
        {
          v42 = *&v1[v41];
          v41 += 504;
          if (*(v42 + 16))
          {
            v12 = 0;
            v15 = v1;
            while (*(*(v15 + 160) + 16) || !*(*(v15 + 120) + 16))
            {
              ++v12;
              v15 += 504;
              if (v10 == v12)
              {
                goto LABEL_124;
              }
            }

            v43 = v12 + 1;
            if (__OFADD__(v12, 1))
            {
              __break(1u);
              goto LABEL_199;
            }

            if (v43 != v10)
            {
              v44 = (v15 + 536);
              while (v43 < v10)
              {
                v15 = *(v44[16] + 16);
                if (v15 || (v15 = *(v44[11] + 16)) == 0)
                {
                  if (v43 != v12)
                  {
                    if (v12 >= v10)
                    {
                      goto LABEL_180;
                    }

                    memcpy(v62, &v35[504 * v12], sizeof(v62));
                    memcpy(v63, v44, sizeof(v63));
                    sub_2529353AC(v62, __src);
                    sub_2529353AC(v63, __src);
                    memcpy(__dst, &v35[504 * v12], sizeof(__dst));
                    memcpy(&v35[504 * v12], v63, 0x1F8uLL);
                    sub_252935408(__dst);
                    v15 = *(v1 + 2);
                    if (v43 >= v15)
                    {
                      goto LABEL_181;
                    }

                    memcpy(__src, v44, 0x1F8uLL);
                    memcpy(v44, v62, 0x1F8uLL);
                    sub_252935408(__src);
                    v10 = *(v1 + 2);
                  }

                  ++v12;
                }

                ++v43;
                v44 += 63;
                if (v43 == v10)
                {
                  goto LABEL_121;
                }
              }

              goto LABEL_177;
            }

LABEL_121:
            if (v10 < v12)
            {
              goto LABEL_183;
            }

            if (v12 < 0)
            {
              __break(1u);
LABEL_124:
              v12 = v10;
            }

            v15 = v12;
            if (__OFADD__(v10, v12 - v10))
            {
              goto LABEL_184;
            }

            v66 = v1;
            if (v12 > *(v1 + 3) >> 1)
            {
              goto LABEL_185;
            }

            goto LABEL_127;
          }
        }
      }

      return v1;
    }

    __break(1u);
    goto LABEL_194;
  }

LABEL_39:
  if (v2 < 0)
  {
    __break(1u);
LABEL_175:
    __break(1u);
    goto LABEL_176;
  }

  v22 = v12 + v15;
  if (__OFADD__(v12, v15))
  {
    goto LABEL_175;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v66 = v1;
  if (!isUniquelyReferenced_nonNull_native || v22 > *(v1 + 3) >> 1)
  {
    if (v12 <= v22)
    {
      v24 = v22;
    }

    else
    {
      v24 = v12;
    }

    v1 = sub_2529F7FB0(isUniquelyReferenced_nonNull_native, v24, 1, v1);
    v66 = v1;
  }

  result = sub_252B7B280(v2, v12, 0);
  v55 = *(v1 + 2);
  if (!v55)
  {
    goto LABEL_104;
  }

  v3 = 0;
  v58 = v1 + 32;
  while (1)
  {
    if (v3 >= *(v1 + 2))
    {
      goto LABEL_166;
    }

    memcpy(__src, &v58[504 * v3], 0x1F8uLL);
    v26 = __src[11];
    ++v3;
    v27 = *(__src[11] + 16);
    sub_2529353AC(__src, __dst);
    v28 = (v26 + 32);
LABEL_54:
    if (v27)
    {
      break;
    }

    result = sub_252935408(__src);
LABEL_50:
    if (v3 == v55)
    {
      goto LABEL_104;
    }
  }

  switch(*v28)
  {
    case 1:

      break;
    default:
      v2 = sub_252E37DB4();

      ++v28;
      --v27;
      if ((v2 & 1) == 0)
      {
        goto LABEL_54;
      }

      break;
  }

  v29 = *(__src[13] + 16);
  result = sub_252935408(__src);
  if (v29)
  {
    goto LABEL_50;
  }

  if (!*(v1 + 2))
  {
    goto LABEL_104;
  }

  v30 = v1;
  v31 = *(v1 + 2);
  while (!*(*(v30 + 17) + 16) || *(*(v30 + 59) + 16))
  {
    v30 += 504;
    if (!--v31)
    {
      goto LABEL_104;
    }
  }

  v12 = 0;
  v56 = *(v1 + 2);
  while (2)
  {
    memcpy(__dst, &v58[504 * v12], sizeof(__dst));
    v2 = __dst[11];
    v32 = *(__dst[11] + 16);
    sub_2529353AC(__dst, v63);
    v33 = (v2 + 32);
    do
    {
      if (!v32)
      {
        sub_252935408(__dst);
        goto LABEL_90;
      }

      v2 = 0xEA0000000000746ELL;
      switch(*v33)
      {
        case 1:

          goto LABEL_89;
        case 2:
          v2 = 0xE700000000000000;
          break;
        case 3:
          v2 = 0xE500000000000000;
          break;
        case 4:
          v2 = 0xE400000000000000;
          break;
        case 5:
          v2 = 0xEC000000736D6F6FLL;
          break;
        case 6:
          v2 = 0xE400000000000000;
          break;
        case 7:
          v2 = 0xE700000000000000;
          break;
        case 8:
        case 9:
          v2 = 0xEA00000000006D6FLL;
          break;
        case 0xA:
          v2 = 0xE800000000000000;
          break;
        case 0xB:
          v2 = 0xE800000000000000;
          break;
        case 0xC:
          v2 = 0xE600000000000000;
          break;
        case 0xD:
          v2 = 0xE700000000000000;
          break;
        case 0xE:
          v2 = 0xEE006D6F6F726465;
          break;
        case 0xF:
          v2 = 0xE800000000000000;
          break;
        case 0x10:
          v2 = 0xE400000000000000;
          break;
        case 0x11:
          v2 = 0xE300000000000000;
          break;
        case 0x12:
          v2 = 0xE90000000000006DLL;
          break;
        case 0x13:
          v2 = 0xE700000000000000;
          break;
        case 0x14:
          v2 = 0xE800000000000000;
          break;
        default:
          break;
      }

      v34 = sub_252E37DB4();

      ++v33;
      --v32;
    }

    while ((v34 & 1) == 0);
LABEL_89:
    v2 = *(__dst[13] + 16);
    result = sub_252935408(__dst);
    if (v2)
    {
LABEL_90:
      if (++v12 == v56)
      {
        goto LABEL_96;
      }

      if (v12 < *(v1 + 2))
      {
        continue;
      }

      __break(1u);
LABEL_93:
      v12 = *(v1 + 2);
      v15 = v2 - v12;
      if (v2 > v12)
      {
        goto LABEL_94;
      }

      goto LABEL_39;
    }

    break;
  }

  v3 = v12 + 1;
  if (__OFADD__(v12, 1))
  {
LABEL_199:
    __break(1u);
    return result;
  }

  v15 = *(v1 + 2);
  if (v3 == v15)
  {
    goto LABEL_99;
  }

LABEL_142:
  if ((v3 & 0x8000000000000000) == 0)
  {
LABEL_143:
    v15 = *(v1 + 2);
    if (v3 >= v15)
    {
      goto LABEL_178;
    }

    v54 = &v58[504 * v3];
    v57 = v3;
    memcpy(v63, v54, sizeof(v63));
    v45 = v63[11];
    v46 = *(v63[11] + 16);
    sub_2529353AC(v63, v62);
    v2 = v45 + 32;
    while (2)
    {
      if (v46)
      {
        switch(*v2)
        {
          case 1:

            break;
          default:
            v47 = sub_252E37DB4();

            ++v2;
            --v46;
            if ((v47 & 1) == 0)
            {
              continue;
            }

            break;
        }

        v2 = *(v63[13] + 16);
        sub_252935408(v63);
        if (v2)
        {
LABEL_151:
          if (v12 != v57)
          {
            if (v12 < 0)
            {
              __break(1u);
LABEL_189:
              __break(1u);
LABEL_190:
              __break(1u);
LABEL_191:
              __break(1u);
              goto LABEL_192;
            }

            v48 = *(v1 + 2);
            if (v12 >= v48)
            {
              goto LABEL_189;
            }

            v49 = &v58[504 * v12];
            memcpy(v59, v49, sizeof(v59));
            if (v57 >= v48)
            {
              goto LABEL_190;
            }

            v2 = v54;
            memcpy(v60, v54, sizeof(v60));
            sub_2529353AC(v59, v62);
            sub_2529353AC(v60, v62);
            memcpy(v61, v49, sizeof(v61));
            memcpy(v49, v60, 0x1F8uLL);
            sub_252935408(v61);
            v15 = *(v1 + 2);
            if (v57 >= v15)
            {
              goto LABEL_191;
            }

            memcpy(v62, v54, sizeof(v62));
            memcpy(v54, v59, 0x1F8uLL);
            sub_252935408(v62);
          }

          v16 = __OFADD__(v12++, 1);
          if (v16)
          {
            goto LABEL_179;
          }

          v3 = v57 + 1;
          if (__OFADD__(v57, 1))
          {
LABEL_163:
            __break(1u);
            goto LABEL_164;
          }
        }

        else
        {
          v3 = v57 + 1;
          if (__OFADD__(v57, 1))
          {
            goto LABEL_163;
          }
        }

        if (v3 == *(v1 + 2))
        {
          goto LABEL_99;
        }

        goto LABEL_143;
      }

      break;
    }

    sub_252935408(v63);
    goto LABEL_151;
  }

LABEL_182:
  __break(1u);
LABEL_183:
  __break(1u);
LABEL_184:
  __break(1u);
LABEL_185:
  if (v10 > v15)
  {
    v15 = v10;
  }

  v50 = v10;
  v51 = sub_2529F7FB0(1, v15, 1, v1);
  v10 = v50;
  v1 = v51;
  v66 = v51;
LABEL_127:
  sub_252B7B280(v12, v10, 0);
  return v1;
}

void *sub_252D97840(void *a1)
{
  v3 = sub_252E32E84();
  v51 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540488, &unk_252E3C940);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v40 - v8;
  v10 = a1[3];
  v52 = a1;
  v11 = __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_252950A0C();
  sub_252E37F74();
  if (v1)
  {
    v13 = v52;
LABEL_4:
    __swift_destroy_boxed_opaque_existential_1(v13);
    type metadata accessor for Zone(0);
    swift_deallocPartialClassInstance();
    return v11;
  }

  v12 = v7;
  LOBYTE(v53[0]) = 0;
  sub_252950ADC(&qword_27F540498, MEMORY[0x277CC9618]);
  sub_252E37C64();
  v15 = v3;
  LOBYTE(v54) = 1;
  sub_252950A60();
  sub_252E37C64();
  v16 = v52;
  v17 = v5;
  v18 = v53[0];
  LOBYTE(v53[0]) = 2;
  v48 = sub_252E37C04();
  v49 = v18;
  v50 = v19;
  LOBYTE(v53[0]) = 3;
  v20 = sub_252E37BA4();
  v42 = v12;
  v44 = v9;
  v46 = v21;
  v47 = v15;
  v22 = v20;
  v23 = type metadata accessor for HomeStore(0);
  v24 = static HomeStore.shared.getter(v23);
  v25 = sub_2529D984C();

  MEMORY[0x28223BE20](v26);
  v28 = v48;
  v27 = v49;
  *(&v40 - 6) = v17;
  *(&v40 - 5) = v28;
  *(&v40 - 4) = v50;
  *(&v40 - 3) = v22;
  v41 = v22;
  *(&v40 - 2) = v46;
  *(&v40 - 1) = v27;
  v29 = sub_2529A3DE8(sub_252D98C7C, (&v40 - 8), v25);
  v43 = 0;

  v45 = v29;
  if (!v29)
  {
    if (qword_27F53F4B0 != -1)
    {
      swift_once();
    }

    v34 = sub_252E36AD4();
    v35 = __swift_project_value_buffer(v34, qword_27F544CB8);
    sub_252CC4050(0xD000000000000021, 0x8000000252E9B090, 0xD00000000000006ALL, 0x8000000252E9B0C0, 0x6F72662874696E69, 0xEB00000000293A6DLL, 43);
    strcpy(v53, "identifier: ");
    BYTE5(v53[1]) = 0;
    HIWORD(v53[1]) = -5120;
    sub_252950ADC(&qword_27F5404A8, MEMORY[0x277CC9628]);
    v36 = sub_252E37D94();
    MEMORY[0x2530AD570](v36);

    sub_252CC4050(v53[0], v53[1], 0xD00000000000006ALL, 0x8000000252E9B0C0, 0x6F72662874696E69, 0xEB00000000293A6DLL, 44);

    v53[0] = 0x203A656D616ELL;
    v53[1] = 0xE600000000000000;
    MEMORY[0x2530AD570](v48, v50);

    sub_252CC4050(v53[0], v53[1], 0xD00000000000006ALL, 0x8000000252E9B0C0, 0x6F72662874696E69, 0xEB00000000293A6DLL, 45);

    v53[0] = 0;
    v53[1] = 0xE000000000000000;
    sub_252E379F4();

    v53[0] = 0xD000000000000015;
    v53[1] = 0x8000000252E6AA20;
    v54 = v41;
    v55 = v46;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
    v37 = sub_252E36F94();
    MEMORY[0x2530AD570](v37);

    sub_252CC4050(v53[0], v53[1], 0xD00000000000006ALL, 0x8000000252E9B0C0, 0x6F72662874696E69, 0xEB00000000293A6DLL, 46);

    strcpy(v53, "entityType: ");
    BYTE5(v53[1]) = 0;
    HIWORD(v53[1]) = -5120;
    v54 = v49;
    v38 = sub_252E36F94();
    MEMORY[0x2530AD570](v38);

    v11 = v35;
    sub_252CC4050(v53[0], v53[1], 0xD00000000000006ALL, 0x8000000252E9B0C0, 0x6F72662874696E69, 0xEB00000000293A6DLL, 47);

    sub_252950B20();
    swift_allocError();
    swift_willThrow();
    (*(v42 + 8))(v44, v6);
    (*(v51 + 8))(v17, v47);
    v13 = v16;
    goto LABEL_4;
  }

  v30 = v45;

  v31 = *(v30 + OBJC_IVAR____TtC22HomeAutomationInternal4Zone_delegate);

  v11 = v56;
  *(v56 + OBJC_IVAR____TtC22HomeAutomationInternal4Zone_delegate) = v31;
  sub_252929E74(v16, v53);
  v32 = v43;
  v33 = Entity.init(from:)(v53);
  if (v32)
  {
    (*(v12 + 8))(v44, v6);

    (*(v51 + 8))(v17, v47);
    __swift_destroy_boxed_opaque_existential_1(v16);
  }

  else
  {
    v11 = v33;
    (*(v12 + 8))(v44, v6);

    v39 = *(v51 + 8);

    v39(v17, v47);
    __swift_destroy_boxed_opaque_existential_1(v16);
  }

  return v11;
}

BOOL sub_252D98098(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = *a1;
  if (sub_252E32E54())
  {
    v13 = *(v12 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name) == a3 && *(v12 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8) == a4;
    if (v13 || (sub_252E37DB4() & 1) != 0)
    {
      v14 = *(v12 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier + 8);
      if (a6)
      {
        if (v14)
        {
          v15 = *(v12 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier) == a5 && v14 == a6;
          if (v15 || (sub_252E37DB4() & 1) != 0)
          {
            return a7 == 2;
          }
        }
      }

      else if (!v14)
      {
        return a7 == 2;
      }
    }
  }

  return 0;
}

uint64_t sub_252D98194(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for HomeStore(0);
  v5 = static HomeStore.shared.getter(v4);
  v6 = sub_2529F55F8(a1);

  v9 = v2;
  v8[2] = &v9;
  LOBYTE(v2) = sub_252A00B58(sub_2529509E4, v8, v6);

  return v2 & 1;
}

uint64_t sub_252D9822C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  v3 = [*a1 accessories];
  sub_25293F638(0, &qword_2814B0270, 0x277CD1650);
  v4 = sub_252E37264();

  v12 = MEMORY[0x277D84F90];
  if (v4 >> 62)
  {
    goto LABEL_15;
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
          goto LABEL_14;
        }

        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      type metadata accessor for Accessory(0);
      swift_allocObject();
      sub_252D4CE7C(v8);
      MEMORY[0x2530AD700]();
      if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_252E372A4();
      }

      sub_252E372D4();
      ++v6;
      if (v9 == i)
      {
        v10 = v12;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

  v10 = MEMORY[0x277D84F90];
LABEL_17:

  *a2 = v10;
  return result;
}

uint64_t sub_252D983F4()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal4Zone_delegate);
  v3 = &off_279711000;
  v4 = [v2 rooms];
  sub_25293F638(0, &qword_2814B0200, 0x277CD1D88);
  v5 = sub_252E37264();

  if (v5 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_252E378C4())
  {

    if (!i)
    {
      v20 = *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);

      return v20;
    }

    sub_252E379F4();
    v7 = *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);

    v25 = v7;
    MEMORY[0x2530AD570](0x736D6F6F72207B20, 0xEA0000000000203ALL);
    v8 = [v2 v3[337]];
    v2 = sub_252E37264();

    if (v2 >> 62)
    {
      break;
    }

    v9 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v9)
    {
      goto LABEL_23;
    }

LABEL_6:
    v1 = 0;
    v10 = MEMORY[0x277D84F90];
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x2530ADF00](v1, v2);
      }

      else
      {
        if (v1 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v11 = *(v2 + 8 * v1 + 32);
      }

      v12 = v11;
      v13 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        break;
      }

      v14 = [v11 name];
      v15 = sub_252E36F34();
      v3 = v16;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_2529F7A80(0, *(v10 + 2) + 1, 1, v10);
      }

      v18 = *(v10 + 2);
      v17 = *(v10 + 3);
      if (v18 >= v17 >> 1)
      {
        v10 = sub_2529F7A80((v17 > 1), v18 + 1, 1, v10);
      }

      *(v10 + 2) = v18 + 1;
      v19 = &v10[16 * v18];
      *(v19 + 4) = v15;
      *(v19 + 5) = v3;
      ++v1;
      if (v13 == v9)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

  v9 = sub_252E378C4();
  if (v9)
  {
    goto LABEL_6;
  }

LABEL_23:
  v10 = MEMORY[0x277D84F90];
LABEL_24:

  v21 = MEMORY[0x2530AD730](v10, MEMORY[0x277D837D0]);
  v23 = v22;

  MEMORY[0x2530AD570](v21, v23);

  MEMORY[0x2530AD570](32032, 0xE200000000000000);
  return v25;
}

char *sub_252D98704()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal4Zone_delegate);
  v3 = [v2 rooms];
  sub_25293F638(0, &qword_2814B0200, 0x277CD1D88);
  v4 = sub_252E37264();

  if (v4 >> 62)
  {
    v5 = sub_252E378C4();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v5)
  {
    v20 = *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);

    return v20;
  }

  v6 = [v2 rooms];
  v7 = sub_252E37264();

  if (!(v7 >> 62))
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_6;
    }

LABEL_18:

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540480, &qword_252E3C910);
    sub_2529508A0();
    v21 = sub_252E36EA4();
    v23 = v22;

    sub_252E379F4();

    MEMORY[0x2530AD570](0x6F6F7220200A7B20, 0xED00005B203A736DLL);
    MEMORY[0x2530AD570](v21, v23);

    MEMORY[0x2530AD570](8194653, 0xE300000000000000);
    v20 = sub_252AD24A4(1, 8224, 0xE200000000000000);

    return v20;
  }

  v8 = sub_252E378C4();
  if (!v8)
  {
    goto LABEL_18;
  }

LABEL_6:
  v24 = MEMORY[0x277D84F90];
  result = sub_2529AA3A0(0, v8 & ~(v8 >> 63), 0);
  if ((v8 & 0x8000000000000000) == 0)
  {
    v10 = 0;
    do
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x2530ADF00](v10, v7);
      }

      else
      {
        v11 = *(v7 + 8 * v10 + 32);
      }

      v12 = v11;
      v13 = [v11 name];
      v14 = sub_252E36F34();
      v16 = v15;

      v18 = *(v24 + 16);
      v17 = *(v24 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_2529AA3A0((v17 > 1), v18 + 1, 1);
      }

      ++v10;
      *(v24 + 16) = v18 + 1;
      v19 = v24 + 16 * v18;
      *(v19 + 32) = v14;
      *(v19 + 40) = v16;
    }

    while (v8 != v10);
    goto LABEL_18;
  }

  __break(1u);
  return result;
}

uint64_t Zone.deinit()
{
  v1 = OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier;
  v2 = sub_252E32E84();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t Zone.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier;
  v2 = sub_252E32E84();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for Zone(uint64_t a1)
{
  result = qword_2814B0840;
  if (!qword_2814B0840)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_252D98CA4()
{
  v0 = sub_252E33944();
  MEMORY[0x28223BE20](v0 - 8);
  sub_252E33924();
  return sub_252E33F54();
}

unint64_t sub_252D98D38()
{
  sub_252E379F4();

  v0 = sub_252BDAF00();
  v1 = (*(v0 + 16))(&type metadata for UserIsAdmin, v0);
  MEMORY[0x2530AD570](v1);

  MEMORY[0x2530AD570](41, 0xE100000000000000);
  return 0xD000000000000018;
}

uint64_t sub_252D98DE0(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_252E32E84();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  HIDWORD(v29) = (*(a4 + 24))(a1, a2, a3, a4);
  if (qword_27F53F4E8 != -1)
  {
    swift_once();
  }

  v12 = sub_252E36AD4();
  v30 = __swift_project_value_buffer(v12, qword_27F544D60);
  v31 = 0;
  v32 = 0xE000000000000000;
  sub_252E379F4();
  v13 = sub_252E37DC4();
  v15 = v14;

  v31 = v13;
  v32 = v15;
  MEMORY[0x2530AD570](0x65737520726F6620, 0xEA00000000002072);
  v16 = [a1 uniqueIdentifier];
  sub_252E32E64();

  sub_252D9C70C(&qword_27F5404A8, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v17 = sub_252E37D94();
  MEMORY[0x2530AD570](v17);

  v18 = *(v9 + 8);
  v18(v11, v8);
  MEMORY[0x2530AD570](0x656D6F68206E6920, 0xEA0000000000203ALL);
  v19 = [a2 name];
  v20 = sub_252E36F34();
  v22 = v21;

  MEMORY[0x2530AD570](v20, v22);

  MEMORY[0x2530AD570](45, 0xE100000000000000);
  v23 = [a2 uniqueIdentifier];
  sub_252E32E64();

  v24 = sub_252E37D94();
  MEMORY[0x2530AD570](v24);

  v18(v11, v8);
  MEMORY[0x2530AD570](0x7461756C61766520, 0xEB00000000206465);
  v25 = BYTE4(v29) & 1;
  if ((v29 & 0x100000000) != 0)
  {
    v26 = 1702195828;
  }

  else
  {
    v26 = 0x65736C6166;
  }

  if ((v29 & 0x100000000) != 0)
  {
    v27 = 0xE400000000000000;
  }

  else
  {
    v27 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v26, v27);

  sub_252CC3D90(v31, v32, 0xD00000000000007ALL, 0x8000000252E9B210);

  return v25;
}

id sub_252D991B8(uint64_t a1, id a2)
{
  v2 = [a2 homeAccessControlForUser_];
  v3 = [v2 isAdministrator];

  return v3;
}

unint64_t *sub_252D99214()
{
  v1 = [v0 users];
  sub_252D9C754();
  v2 = sub_252E37264();

  v3 = [v0 currentUser];
  MEMORY[0x2530AD700]();
  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_252E372A4();
  }

  sub_252E372D4();
  v4 = sub_252C76B30(v2);

  return v4;
}

uint64_t sub_252D99304(id *a1, uint64_t a2)
{
  v4 = sub_252E32E84();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5445D0, &qword_252E54DB8);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541F20, &qword_252E3C180);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v24 - v16;
  v18 = [*a1 uniqueIdentifier];
  sub_252E32E64();

  (*(v5 + 56))(v17, 0, 1, v4);
  v19 = *(v9 + 56);
  sub_252C4AE84(v17, v11);
  sub_252C4AE84(a2, &v11[v19]);
  v20 = *(v5 + 48);
  if (v20(v11, 1, v4) != 1)
  {
    sub_252C4AE84(v11, v15);
    if (v20(&v11[v19], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v11[v19], v4);
      sub_252D9C70C(&qword_27F540D48, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v21 = sub_252E36EF4();
      v22 = *(v5 + 8);
      v22(v7, v4);
      sub_25293847C(v17, &unk_27F541F20, &qword_252E3C180);
      v22(v15, v4);
      sub_25293847C(v11, &unk_27F541F20, &qword_252E3C180);
      return v21 & 1;
    }

    sub_25293847C(v17, &unk_27F541F20, &qword_252E3C180);
    (*(v5 + 8))(v15, v4);
    goto LABEL_6;
  }

  sub_25293847C(v17, &unk_27F541F20, &qword_252E3C180);
  if (v20(&v11[v19], 1, v4) != 1)
  {
LABEL_6:
    sub_25293847C(v11, &qword_27F5445D0, &qword_252E54DB8);
    v21 = 0;
    return v21 & 1;
  }

  sub_25293847C(v11, &unk_27F541F20, &qword_252E3C180);
  v21 = 1;
  return v21 & 1;
}

uint64_t sub_252D996C0(uint64_t a1)
{
  v2[49] = a1;
  v2[50] = v1;
  v3 = sub_252E33B54();
  v2[51] = v3;
  v2[52] = *(v3 - 8);
  v2[53] = swift_task_alloc();
  v2[54] = swift_task_alloc();
  v4 = sub_252E34014();
  v2[55] = v4;
  v2[56] = *(v4 - 8);
  v2[57] = swift_task_alloc();
  v2[58] = swift_task_alloc();
  v2[59] = swift_task_alloc();
  v5 = sub_252E36AB4();
  v2[60] = v5;
  v2[61] = *(v5 - 8);
  v2[62] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252D9985C, 0, 0);
}

uint64_t sub_252D9985C()
{
  v1 = v0[50];
  v2 = *(v1 + 16);
  v0[63] = v2;
  if (v2)
  {
    v3 = qword_27F53F600;
    v4 = v2;
    if (v3 != -1)
    {
LABEL_27:
      swift_once();
      v1 = v0[50];
    }

    v5 = qword_27F544F88;
    sub_252E36A94();
    sub_252E375D4();
    sub_252E36A84();
    v6 = *(v1 + 32);
    v7 = v6 + 32;
    v8 = -*(v6 + 16);
    v9 = -1;
    do
    {
      if (v8 + v9 == -1)
      {
        v28 = v0[61];
        v27 = v0[62];
        v29 = v0[60];
        v30 = sub_252E375C4();
        sub_252E36A74(v30, &dword_252917000, v5, "HomeAccessControl.ValidateUserAccess", 36, 2, v27, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);
        (*(v28 + 8))(v27, v29);
        sub_252E33B04();

        goto LABEL_16;
      }

      if (++v9 >= *(v6 + 16))
      {
        __break(1u);
        goto LABEL_27;
      }

      v10 = v7 + 40;
      sub_252929E74(v7, (v0 + 7));
      v11 = v0[10];
      v12 = v0[11];
      __swift_project_boxed_opaque_existential_1(v0 + 7, v11);
      LOBYTE(v11) = sub_252D98DE0(v4, *(v1 + 24), v11, v12);
      __swift_destroy_boxed_opaque_existential_1(v0 + 7);
      v7 = v10;
    }

    while ((v11 & 1) != 0);
    v14 = v0[61];
    v13 = v0[62];
    v15 = v0[60];
    v16 = sub_252E375C4();
    sub_252E36A74(v16, &dword_252917000, v5, "HomeAccessControl.ValidateUserAccess", 36, 2, v13, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);
    v17 = (*(v14 + 8))(v13, v15);
    v18 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v17);
    sub_252929E74((v18 + 288), (v0 + 12));

    v19 = v0[15];
    v20 = v0[16];
    __swift_project_boxed_opaque_existential_1(v0 + 12, v19);
    LOBYTE(v13) = (*(v20 + 120))(v19, v20);
    __swift_destroy_boxed_opaque_existential_1(v0 + 12);
    if (v13)
    {
      sub_252929E74(v0[50] + 104, (v0 + 27));
      __swift_project_boxed_opaque_existential_1(v0 + 27, v0[30]);
      sub_252B03B94();
      v21 = swift_task_alloc();
      v0[64] = v21;
      *v21 = v0;
      v21[1] = sub_252D99F44;
      v22 = v0[59];
      v23 = v0[50];

      return sub_252A199A8((v0 + 22), &unk_252E5FD60, v23, &unk_252E5FD68, 0, v22, 0, 0);
    }

    sub_252929E74(v0[50] + 104, (v0 + 17));
    v32 = v0[20];
    v33 = v0[21];
    __swift_project_boxed_opaque_existential_1(v0 + 17, v32);
    sub_252D98CA4();
    v34 = swift_task_alloc();
    v0[66] = v34;
    *v34 = v0;
    v34[1] = sub_252D9A23C;
    v35 = v0[58];
    v36 = v0[54];
    v37 = v0[50];
    v38 = &unk_252E5FD50;
    v39 = v32;
    goto LABEL_23;
  }

  if (!*(v1 + 40))
  {
    if (qword_27F53F500 != -1)
    {
      swift_once();
      v1 = v0[50];
    }

    v40 = sub_252E36AD4();
    v0[68] = v40;
    __swift_project_value_buffer(v40, qword_27F544DA8);
    sub_252CC4050(0xD00000000000005BLL, 0x8000000252E9B1B0, 0xD00000000000007ALL, 0x8000000252E9B210, 0x2865747563657865, 0xE900000000000029, 285);
    sub_252929E74(v1 + 104, (v0 + 2));
    v41 = v0[5];
    v33 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v41);
    sub_252D98CA4();
    v42 = swift_task_alloc();
    v0[69] = v42;
    *v42 = v0;
    v42[1] = sub_252D9A488;
    v35 = v0[57];
    v36 = v0[53];
    v37 = v0[50];
    v38 = &unk_252E5FD38;
    v39 = v41;
LABEL_23:

    return sub_252BDCFAC(v36, v38, v37, v35, v39, v33);
  }

  v25 = qword_27F53F500;

  if (v25 != -1)
  {
    swift_once();
  }

  v26 = sub_252E36AD4();
  __swift_project_value_buffer(v26, qword_27F544DA8);
  sub_252CC4050(0xD00000000000005ELL, 0x8000000252E9B2C0, 0xD00000000000007ALL, 0x8000000252E9B210, 0x2865747563657865, 0xE900000000000029, 281);
  sub_252E33B04();

LABEL_16:

  v31 = v0[1];

  return v31();
}

uint64_t sub_252D99F44()
{
  v2 = *(*v1 + 472);
  v3 = *(*v1 + 448);
  v4 = *(*v1 + 440);
  *(*v1 + 520) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_252D9A8A0;
  }

  else
  {
    v5 = sub_252D9A0B4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252D9A0B4()
{
  v1 = *(v0 + 504);
  v2 = __swift_destroy_boxed_opaque_existential_1((v0 + 216));
  v3 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v2);
  sub_252929E74((v3 + 96), v0 + 256);

  sub_252929E74(v0 + 176, v0 + 296);
  v4 = swift_allocObject();
  sub_252A52D18((v0 + 296), v4 + 16);
  sub_252E331C4();
  swift_allocObject();
  *(v0 + 384) = sub_252E331B4();
  sub_252E33604();

  sub_252E33B04();

  __swift_destroy_boxed_opaque_existential_1((v0 + 176));

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_252D9A23C()
{
  v2 = *(*v1 + 464);
  v3 = *(*v1 + 448);
  v4 = *(*v1 + 440);
  *(*v1 + 536) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_252D9AA80;
  }

  else
  {
    v5 = sub_252D9A3AC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252D9A3AC()
{
  v1 = *(v0 + 432);
  v2 = *(v0 + 408);
  v3 = *(v0 + 416);
  v4 = *(v0 + 392);

  __swift_destroy_boxed_opaque_existential_1((v0 + 136));
  (*(v3 + 32))(v4, v1, v2);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_252D9A488()
{
  v2 = *(*v1 + 456);
  v3 = *(*v1 + 448);
  v4 = *(*v1 + 440);
  *(*v1 + 560) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_252D9A6CC;
  }

  else
  {
    v5 = sub_252D9A5F8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252D9A5F8()
{
  v2 = v0[52];
  v1 = v0[53];
  v3 = v0[51];
  v4 = v0[49];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  (*(v2 + 32))(v4, v1, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_252D9A6CC()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  if (qword_27F53F4D0 != -1)
  {
    swift_once();
  }

  v1 = v0[70];
  __swift_project_value_buffer(v0[68], qword_27F544D18);
  sub_252E379F4();
  v0[42] = 0;
  v0[43] = 0xE000000000000000;
  MEMORY[0x2530AD570](0xD000000000000029, 0x8000000252E9B290);
  v0[46] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541ED0, &unk_252E3C480);
  sub_252E37AE4();
  sub_252CC4050(v0[42], v0[43], 0xD00000000000007ALL, 0x8000000252E9B210, 0x2865747563657865, 0xE900000000000029, 298);

  sub_252E33B24();

  v2 = v0[1];

  return v2();
}

uint64_t sub_252D9A8A0()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 27);
  v1 = v0[65];
  if (qword_27F53F4D0 != -1)
  {
    swift_once();
  }

  v2 = v0[63];
  v3 = sub_252E36AD4();
  __swift_project_value_buffer(v3, qword_27F544D18);
  sub_252E379F4();
  v0[44] = 0;
  v0[45] = 0xE000000000000000;
  MEMORY[0x2530AD570](0xD000000000000029, 0x8000000252E9B290);
  v0[47] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541ED0, &unk_252E3C480);
  sub_252E37AE4();
  sub_252CC4050(v0[44], v0[45], 0xD00000000000007ALL, 0x8000000252E9B210, 0x2865747563657865, 0xE900000000000029, 338);

  sub_252E33B24();

  v4 = v0[1];

  return v4();
}

uint64_t sub_252D9AA80()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 17);
  v1 = v0[67];
  if (qword_27F53F4D0 != -1)
  {
    swift_once();
  }

  v2 = v0[63];
  v3 = sub_252E36AD4();
  __swift_project_value_buffer(v3, qword_27F544D18);
  sub_252E379F4();
  v0[44] = 0;
  v0[45] = 0xE000000000000000;
  MEMORY[0x2530AD570](0xD000000000000029, 0x8000000252E9B290);
  v0[47] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541ED0, &unk_252E3C480);
  sub_252E37AE4();
  sub_252CC4050(v0[44], v0[45], 0xD00000000000007ALL, 0x8000000252E9B210, 0x2865747563657865, 0xE900000000000029, 338);

  sub_252E33B24();

  v4 = v0[1];

  return v4();
}

uint64_t sub_252D9AC60(uint64_t a1)
{
  v1[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v1[3] = swift_task_alloc();
  v1[4] = type metadata accessor for HomeAutomationUnrecognizedUserParameters(0);
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252D9AD2C, 0, 0);
}

uint64_t sub_252D9AD2C()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  __swift_project_boxed_opaque_existential_1((v0[2] + 184), *(v0[2] + 208));
  v4 = sub_252E36324();
  v5 = *(*(v4 - 8) + 56);
  v5(v1, 1, 1, v4);
  *(v1 + *(v2 + 20)) = 0;
  v6 = v1 + *(v2 + 24);
  *v6 = 0x4020000000000000;
  *(v6 + 8) = 0;
  sub_252E37024();
  v5(v3, 0, 1, v4);
  sub_252A909F4(v3, v1, &qword_27F540298, &unk_252E3C270);
  v7 = sub_252C0B2C0();
  v0[6] = v7;
  v10 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
  v8 = swift_task_alloc();
  v0[7] = v8;
  *v8 = v0;
  v8[1] = sub_252D9AEE8;

  return v10(0xD00000000000001FLL, 0x8000000252E953F0, v7);
}

uint64_t sub_252D9AEE8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v5 = sub_252D9B0C8;
  }

  else
  {
    *(v4 + 72) = a1;
    v5 = sub_252D9B034;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252D9B034()
{
  sub_252D9BD5C(v0[5], type metadata accessor for HomeAutomationUnrecognizedUserParameters);

  v1 = v0[1];
  v2 = v0[9];

  return v1(v2);
}

uint64_t sub_252D9B0C8()
{
  sub_252D9BD5C(*(v0 + 40), type metadata accessor for HomeAutomationUnrecognizedUserParameters);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252D9B178()
{
  v0[3] = *(v0[2] + 224);

  sub_252B680FC(v1);
  v2 = sub_252B631FC();
  v0[4] = v2;

  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_252D9B244;

  return sub_252D2B9EC(v2);
}

uint64_t sub_252D9B244(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 48) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_252D9B3A0, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_252D9B3A0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252D9B40C(uint64_t a1)
{
  v1[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v1[3] = swift_task_alloc();
  v1[4] = type metadata accessor for HomeAutomationUnauthorizedUserParameters(0);
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252D9B4D8, 0, 0);
}

uint64_t sub_252D9B4D8()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  __swift_project_boxed_opaque_existential_1((v0[2] + 184), *(v0[2] + 208));
  v4 = sub_252E36324();
  v5 = *(*(v4 - 8) + 56);
  v5(v1, 1, 1, v4);
  *(v1 + v2[5]) = 0;
  v6 = v1 + v2[6];
  *v6 = 0;
  *(v6 + 8) = 1;
  *(v1 + v2[7]) = 0;
  *v6 = 0x4020000000000000;
  *(v6 + 8) = 0;
  sub_252E37024();
  v5(v3, 0, 1, v4);
  sub_252A909F4(v3, v1, &qword_27F540298, &unk_252E3C270);
  v7 = sub_252C0AC58();
  v0[6] = v7;
  v10 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
  v8 = swift_task_alloc();
  v0[7] = v8;
  *v8 = v0;
  v8[1] = sub_252D9B6AC;

  return v10(0xD00000000000001FLL, 0x8000000252E88260, v7);
}

uint64_t sub_252D9B6AC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v5 = sub_252D9B88C;
  }

  else
  {
    *(v4 + 72) = a1;
    v5 = sub_252D9B7F8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252D9B7F8()
{
  sub_252D9BD5C(v0[5], type metadata accessor for HomeAutomationUnauthorizedUserParameters);

  v1 = v0[1];
  v2 = v0[9];

  return v1(v2);
}

uint64_t sub_252D9B88C()
{
  sub_252D9BD5C(*(v0 + 40), type metadata accessor for HomeAutomationUnauthorizedUserParameters);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252D9B91C()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  __swift_destroy_boxed_opaque_existential_1((v0 + 104));
  __swift_destroy_boxed_opaque_existential_1((v0 + 144));
  __swift_destroy_boxed_opaque_existential_1((v0 + 184));

  return v0;
}

uint64_t sub_252D9B98C()
{
  sub_252D9B91C();

  return swift_deallocClassInstance();
}

uint64_t sub_252D9B9E4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25293B808;

  return sub_252D996C0(a1);
}

uint64_t sub_252D9BA80(uint64_t a1, uint64_t a2)
{
  type metadata accessor for HomeAccessControlValidatingFlow();

  return sub_252E33644();
}

uint64_t sub_252D9BAB8(uint64_t a1, uint64_t a2)
{
  result = sub_252D9C70C(&qword_27F543D10, a2, type metadata accessor for HomeAccessControlValidatingFlow, asc_252E5FCA0);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_252D9BB10()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_25294B958;

  return sub_252D9AC60(v0);
}

uint64_t sub_252D9BBA0()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_25294B958;

  return sub_252D9B40C(v0);
}

uint64_t sub_252D9BC30()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_25294B7BC;

  return sub_252D9B158(v0);
}

uint64_t sub_252D9BCC0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_25293B808;

  return sub_252A738CC(a1, v1 + 16);
}

uint64_t sub_252D9BD5C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_252D9BDBC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v76 = a3;
  v77 = a4;
  v75 = a2;
  v5 = sub_252E36AB4();
  v72 = *(v5 - 8);
  v73 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541F20, &qword_252E3C180);
  v8 = MEMORY[0x28223BE20](v74);
  v10 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v66 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v66 - v15;
  v17 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v14);
  sub_252929E74((v17 + 16), &v79);

  __swift_project_boxed_opaque_existential_1(&v79, v81);
  v18 = sub_252E338F4();
  __swift_destroy_boxed_opaque_existential_1(&v79);
  if (v18)
  {
    v68 = v10;
    v71 = a1;
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v19 = sub_252E36AD4();
    __swift_project_value_buffer(v19, qword_27F544D60);
    sub_252CC3D90(0xD000000000000037, 0x8000000252E9B360, 0xD00000000000007ALL, 0x8000000252E9B210);
    v20 = sub_252E32E84();
    v21 = *(v20 - 8);
    v67 = *(v21 + 56);
    v66 = v21 + 56;
    v67(v16, 1, 1, v20);
    sub_252E33814();
    __swift_project_boxed_opaque_existential_1(&v79, v81);
    sub_252E33EB4();
    __swift_project_boxed_opaque_existential_1(v78, v78[3]);
    v22 = sub_252E33E74();
    v70 = v16;
    if (v23)
    {
      v24 = v22;
      v25 = v23;
      __swift_destroy_boxed_opaque_existential_1(v78);
      __swift_destroy_boxed_opaque_existential_1(&v79);
      sub_252E32E14();
      sub_252A909F4(v13, v16, &unk_27F541F20, &qword_252E3C180);
      v79 = 0;
      v80 = 0xE000000000000000;
      sub_252E379F4();

      v79 = 0xD00000000000002BLL;
      v80 = 0x8000000252E9B3F0;
      MEMORY[0x2530AD570](v24, v25);

      sub_252CC3D90(v79, v80, 0xD00000000000007ALL, 0x8000000252E9B210);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v78);
      __swift_destroy_boxed_opaque_existential_1(&v79);
    }

    v69 = "g unrecognized user dialog.";
    if (qword_27F53F600 != -1)
    {
      swift_once();
    }

    v29 = qword_27F544F88;
    sub_252E36A94();
    sub_252E375D4();
    sub_252E36A84();
    sub_252CC3D90(0xD000000000000011, 0x8000000252E9B3A0, 0xD00000000000006BLL, 0x8000000252E6C470);
    v67(v13, 1, 1, v20);
    v30 = sub_252E375C4();
    LOBYTE(v64) = 2;
    sub_252E36A74(v30, &dword_252917000, v29, "HomeAccessControl.GetHomeKitUser", 32, 2, v7, " enableTelemetry=YES ", 21, v64, MEMORY[0x277D84F90]);
    (*(v72 + 8))(v7, v73);
    v79 = 0;
    v80 = 0xE000000000000000;
    sub_252E379F4();

    v79 = 0xD000000000000021;
    v80 = 0x8000000252E9B3C0;
    sub_252C4AE84(v13, v68);
    v31 = sub_252E36F94();
    MEMORY[0x2530AD570](v31);

    sub_252CC3D90(v79, v80, 0xD00000000000007ALL, v69 | 0x8000000000000000);

    v28 = v71;
    v32 = sub_252D99214();
    MEMORY[0x28223BE20](v32);
    v65 = v13;
    sub_2529A1BC4(sub_252D9C6EC, &v63, v32);
    v26 = v33;

    sub_25293847C(v70, &unk_27F541F20, &qword_252E3C180);
    v34 = v26;
    sub_25293847C(v13, &unk_27F541F20, &qword_252E3C180);
  }

  else
  {
    v26 = [a1 currentUser];
    v27 = v26;
    v28 = a1;
  }

  if (qword_27F53F4E8 != -1)
  {
    swift_once();
  }

  v35 = sub_252E36AD4();
  __swift_project_value_buffer(v35, qword_27F544D60);
  v79 = 0;
  v80 = 0xE000000000000000;
  sub_252E379F4();

  v79 = 0xD00000000000001BLL;
  v80 = 0x8000000252E9B320;
  v78[0] = v26;
  v36 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545D78, &unk_252E5FD80);
  v37 = sub_252E36F94();
  MEMORY[0x2530AD570](v37);

  sub_252CC3D90(v79, v80, 0xD00000000000007ALL, 0x8000000252E9B210);

  type metadata accessor for HomeAccessControlValidatingFlow();
  v38 = swift_allocObject();
  v38[2] = 0;
  if (v26)
  {
    v74 = v36;
    v39 = v36;
    v40 = sub_252D99214();
    v41 = sub_252DA0784(v39, v40);

    v79 = 0;
    v80 = 0xE000000000000000;
    sub_252E379F4();

    v79 = 0xD000000000000014;
    v80 = 0x8000000252E9B340;
    v42 = v41 & 1;
    if (v41)
    {
      v43 = 1702195828;
    }

    else
    {
      v43 = 0x65736C6166;
    }

    if (v41)
    {
      v44 = 0xE400000000000000;
    }

    else
    {
      v44 = 0xE500000000000000;
    }

    MEMORY[0x2530AD570](v43, v44);

    sub_252CC3D90(v79, v80, 0xD00000000000007ALL, 0x8000000252E9B210);

    v45 = v26;
    if (!v42)
    {

      v45 = 0;
    }

    v36 = v74;
  }

  else
  {
    v45 = 0;
  }

  v38[2] = v26;

  v46 = v75;
  v47 = v76;
  v38[3] = v28;
  v38[4] = v46;
  v38[5] = v77;
  v38[6] = v47;
  v49 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v48);
  sub_252929E74((v49 + 16), (v38 + 7));

  v51 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v50);
  swift_beginAccess();
  v52 = *(v51 + 22);

  v38[12] = v52;
  v54 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v53);
  sub_252929E74((v54 + 136), (v38 + 13));

  v56 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v55);
  sub_252929E74((v56 + 96), (v38 + 18));

  v58 = *(_s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v57) + 29);

  v59 = type metadata accessor for HomeAutomationCATPatternsExecutor(0);
  v38[26] = v59;
  v38[27] = &off_2864BA730;
  v38[23] = v58;
  v60 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v59);

  swift_beginAccess();
  v61 = *(v60 + 23);

  v38[28] = v61;
  return v38;
}

uint64_t sub_252D9C70C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), const char *a4)
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

unint64_t sub_252D9C754()
{
  result = qword_27F540E58;
  if (!qword_27F540E58)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F540E58);
  }

  return result;
}

unint64_t sub_252D9C7B0(uint64_t a1)
{
  result = sub_252D9C7D8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_252D9C7D8()
{
  result = qword_27F545D80;
  if (!qword_27F545D80)
  {
    result = swift_getWitnessTable(byte_252E5FD9C, &type metadata for UserIsAdmin, v0, v1);
    atomic_store(result, &qword_27F545D80);
  }

  return result;
}

uint64_t sub_252D9C840(void *a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25296BC70;

  return sub_252D9CC04(a1);
}

uint64_t sub_252D9C8E8(uint64_t result)
{
  v1 = 0;
  v2 = *(result + 96);
  v3 = *(result + 144);
  v4 = *(result + 192);
  v5 = *(v3 + 16);
  while (1)
  {
    if (v5 == v1)
    {
      v8 = *(v4 + 16);

      v9 = 0;
      while (v8 != v9)
      {
        if (v9 >= *(v4 + 16))
        {
          goto LABEL_41;
        }

        if (StateSemantic.rawValue.getter() == 0x6573756170 && v11 == 0xE500000000000000)
        {
          goto LABEL_17;
        }

        v12 = sub_252E37DB4();

        if (v12)
        {
          goto LABEL_18;
        }

        if (StateSemantic.rawValue.getter() == 0x656D75736572 && v13 == 0xE600000000000000)
        {
LABEL_17:

LABEL_18:

          v14 = MEMORY[0x277D84F90];
          v24 = MEMORY[0x277D84F90];
          v15 = *(v2 + 16);
          if (!v15)
          {
LABEL_23:
            v19 = (v14 + 40);
            v20 = *(v14 + 16) + 1;
            while (--v20)
            {
              v21 = *(v19 - 1);
              v22 = *v19;
              v23 = v21 == 0xD000000000000015 && 0x8000000252E64CC0 == v22;
              if (!v23 && (sub_252E37DB4() & 1) == 0 && (v21 != 0xD000000000000017 || 0x8000000252E64CA0 != v22) && (sub_252E37DB4() & 1) == 0 && (v21 != 0xD000000000000016 || 0x8000000252E64CE0 != v22))
              {
                v19 += 2;
                if ((sub_252E37DB4() & 1) == 0)
                {
                  continue;
                }
              }

              return 1;
            }

            break;
          }

          v16 = 0;
          while (v16 < *(v2 + 16))
          {
            v17 = v16 + 1;

            result = sub_25297AB2C(v18);
            v16 = v17;
            if (v15 == v17)
            {
              v14 = v24;
              goto LABEL_23;
            }
          }

          goto LABEL_40;
        }

        v10 = sub_252E37DB4();

        ++v9;
        if (v10)
        {
          goto LABEL_18;
        }
      }

LABEL_37:

      return 0;
    }

    if (v1 >= *(v3 + 16))
    {
      break;
    }

    if (AccessoryTypeSemantic.rawValue.getter() == 0xD000000000000012 && 0x8000000252E65350 == v7)
    {
      goto LABEL_37;
    }

    ++v1;
    v6 = sub_252E37DB4();

    if (v6)
    {
      return 0;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

uint64_t sub_252D9CC04(void *__src)
{
  *(v1 + 1024) = __src;
  memcpy((v1 + 16), __src, 0x1F8uLL);

  return MEMORY[0x2822009F8](sub_252D9CC78, 0, 0);
}

uint64_t sub_252D9CC78()
{
  v18 = v0;
  v1 = v0[128];
  v2 = v0[20];
  v14 = v1[6];
  v15 = v1[7];
  v16 = v1[8];
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = v1[5];
  v8 = *v1;
  v9 = v1[1];
  memcpy(__dst, v1 + 152, sizeof(__dst));
  sub_2529353AC((v0 + 2), (v0 + 65));
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_2529F80DC(0, *(v2 + 2) + 1, 1, v2);
  }

  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  if (v4 >= v3 >> 1)
  {
    v2 = sub_2529F80DC((v3 > 1), v4 + 1, 1, v2);
  }

  *(v2 + 2) = v4 + 1;
  v2[v4 + 32] = 50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540190, &qword_252E4A5F0);
  v5 = swift_allocObject();
  *(v5 + 112) = v13;
  *(v5 + 128) = v14;
  *(v5 + 144) = v15;
  *(v5 + 160) = v16;
  *(v5 + 48) = v9;
  *(v5 + 64) = v10;
  *(v5 + 80) = v11;
  *(v5 + 96) = v12;
  *(v5 + 16) = xmmword_252E3C290;
  *(v5 + 32) = v8;
  *(v5 + 176) = v2;
  memcpy((v5 + 184), __dst, 0x160uLL);
  v6 = v0[1];

  return v6(v5);
}

uint64_t DirectInvocationConfig.Builder.build()()
{
  v1 = *v0;
  sub_252A75B60();
  v2 = v1;

  return sub_252E33054();
}

uint64_t DirectInvocationConfig.action.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542A18, &qword_252E5FE30);

  return sub_252E33074();
}

uint64_t sub_252D9CE98(id *a1)
{
  v1 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542A18, &qword_252E5FE30);
  return sub_252E33084();
}

uint64_t DirectInvocationConfig.action.setter(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542A18, &qword_252E5FE30);

  return sub_252E33084();
}

void (*DirectInvocationConfig.action.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542A18, &qword_252E5FE30);
  *(v3 + 32) = sub_252E33064();
  return sub_25292E00C;
}

uint64_t DirectInvocationConfig.id.getter()
{
  v0 = sub_252E32E84();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252E32E74();
  v4 = sub_252E32E24();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t sub_252D9D098()
{
  sub_252E37EC4();
  sub_252E37044();
  return sub_252E37F14();
}

uint64_t sub_252D9D0FC(uint64_t a1)
{
  sub_252E37EC4();
  sub_252E37044();
  return sub_252E37F14();
}

uint64_t sub_252D9D148@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_252E37B74();

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_252D9D1C8@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_252E37B74();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_252D9D220(uint64_t a1)
{
  v2 = sub_252D9D598();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252D9D25C(uint64_t a1)
{
  v2 = sub_252D9D598();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DirectInvocationConfig.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542A18, &qword_252E5FE30);
  v16 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v15 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545D90, &qword_252E5FE38);
  v18 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for DirectInvocationConfig(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252D9D598();
  v12 = v19;
  sub_252E37F74();
  if (!v12)
  {
    v13 = v18;
    sub_252AA8EEC(&qword_27F542A30, MEMORY[0x277D63230]);
    sub_252E37C64();
    sub_252E33074();
    (*(v16 + 8))(v5, v3);
    sub_252A75B60();
    sub_252E33054();
    (*(v13 + 8))(v8, v6);
    sub_252D9D5EC(v11, v17);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t type metadata accessor for DirectInvocationConfig(uint64_t a1)
{
  result = qword_27F545DA8;
  if (!qword_27F545DA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_252D9D598()
{
  result = qword_27F545D98;
  if (!qword_27F545D98)
  {
    result = swift_getWitnessTable(asc_252E6001C, &type metadata for DirectInvocationConfig.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F545D98);
  }

  return result;
}

uint64_t sub_252D9D5EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DirectInvocationConfig(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t DirectInvocationConfig.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542A18, &qword_252E5FE30);
  v11 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v10 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545DA0, &qword_252E5FE40);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252D9D598();
  sub_252E37F84();
  sub_252E33074();
  sub_252A75B60();
  sub_252E33054();
  sub_252AA8EEC(&qword_27F542A58, MEMORY[0x277D63228]);
  sub_252E37D54();
  (*(v11 + 8))(v4, v2);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_252D9D8B0@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_252E32E84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252E32E74();
  v6 = sub_252E32E24();
  v8 = v7;
  result = (*(v3 + 8))(v5, v2);
  *a1 = v6;
  a1[1] = v8;
  return result;
}

void sub_252D9D9B4(uint64_t a1)
{
  sub_252BD3D94(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_252D9DA20(uint64_t *a1, int a2)
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

uint64_t sub_252D9DA68(uint64_t result, int a2, int a3)
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

unint64_t sub_252D9DAC8()
{
  result = qword_27F545DB8;
  if (!qword_27F545DB8)
  {
    result = swift_getWitnessTable(aD, &type metadata for DirectInvocationConfig.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F545DB8);
  }

  return result;
}

unint64_t sub_252D9DB20()
{
  result = qword_27F545DC0;
  if (!qword_27F545DC0)
  {
    result = swift_getWitnessTable(aU_18, &type metadata for DirectInvocationConfig.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F545DC0);
  }

  return result;
}

unint64_t sub_252D9DB78()
{
  result = qword_27F545DC8;
  if (!qword_27F545DC8)
  {
    result = swift_getWitnessTable(byte_252E5FF54, &type metadata for DirectInvocationConfig.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F545DC8);
  }

  return result;
}

void *sub_252D9DBCC()
{
  v105 = sub_252E36324();
  v88 = *(v105 - 8);
  v1 = MEMORY[0x28223BE20](v105);
  v86 = &v85 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v87 = &v85 - v3;
  v104 = sub_252E36CA4();
  v4 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v103 = &v85 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_252E36D04();
  v6 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v101 = &v85 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  MEMORY[0x28223BE20](v8 - 8);
  v100 = &v85 - v9;
  v106 = *(v0 + 24);
  if (v106 >> 62)
  {
    goto LABEL_86;
  }

  v10 = *((v106 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v10)
  {
LABEL_87:
    v6 = MEMORY[0x277D84FA0];
LABEL_88:
    if (sub_252DB4F4C())
    {
      v6 = sub_2529ABE40(&unk_2864ADE68, v6);
    }

    if (sub_252DB4F4C() & 1) != 0 || (sub_252DB4F4C())
    {
      v119[0] = sub_2529ABE40(&unk_2864ADE90, v6);
      sub_252DA8D64(v121, 5);
      v6 = v119[0];
    }

    v69 = 1 << *(v6 + 32);
    v70 = -1;
    if (v69 < 64)
    {
      v70 = ~(-1 << v69);
    }

    v71 = v70 & *(v6 + 56);
    v72 = (v69 + 63) >> 6;
    v118 = (v88 + 32);

    v73 = 0;
    v74 = MEMORY[0x277D84F90];
    while (v71)
    {
LABEL_101:
      if (qword_27F53F2A8 != -1)
      {
        swift_once();
      }

      v71 &= v71 - 1;
      v76 = off_27F541CD8;
      if (*(off_27F541CD8 + 2))
      {
        v77 = sub_252A488EC();
        if (v78)
        {
          LOBYTE(v119[0]) = *(v76[7] + v77);
          AttributeSemantic.rawValue.getter();
          v79 = v86;
          sub_252E362F4();
          v117 = *v118;
          v117(v87, v79, v105);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v74 = sub_2529F7F74(0, v74[2] + 1, 1, v74);
          }

          v81 = v74[2];
          v80 = v74[3];
          v82 = v81 + 1;
          if (v81 >= v80 >> 1)
          {
            v116 = v81 + 1;
            v83 = sub_2529F7F74((v80 > 1), v81 + 1, 1, v74);
            v82 = v116;
            v74 = v83;
          }

          v74[2] = v82;
          (v117)(v74 + ((*(v88 + 80) + 32) & ~*(v88 + 80)) + *(v88 + 72) * v81, v87);
        }
      }
    }

    while (1)
    {
      v75 = v73 + 1;
      if (__OFADD__(v73, 1))
      {
        break;
      }

      if (v75 >= v72)
      {

        return v74;
      }

      v71 = *(v6 + 56 + 8 * v75);
      ++v73;
      if (v71)
      {
        v73 = v75;
        goto LABEL_101;
      }
    }

    __break(1u);
    goto LABEL_112;
  }

LABEL_3:
  v92 = v10;
  v107 = type metadata accessor for HomeStore(0);
  v11 = 0;
  v89 = v106 + 32;
  v90 = v106 & 0xFFFFFFFFFFFFFF8;
  v98 = (v88 + 48);
  v99 = v106 & 0xC000000000000001;
  v91 = (v88 + 8);
  v96 = (v4 + 8);
  v97 = v120;
  v95 = (v6 + 8);
  v6 = MEMORY[0x277D84FA0];
  v94 = xmmword_252E3E810;
  v93 = xmmword_252E3C130;
  while (1)
  {
    if (v99)
    {
      v109 = MEMORY[0x2530ADF00](v11);
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_83;
      }
    }

    else
    {
      if (v11 >= *(v90 + 16))
      {
        goto LABEL_85;
      }

      v109 = *(v89 + 8 * v11);

      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
LABEL_83:
        __break(1u);
LABEL_84:
        __break(1u);
LABEL_85:
        __break(1u);
LABEL_86:
        v10 = sub_252E378C4();
        if (!v10)
        {
          goto LABEL_87;
        }

        goto LABEL_3;
      }
    }

    v108 = v13;
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
    v15 = v100;
    sub_252956C1C(v109 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_entityName, v100);
    v16 = v105;
    if ((*v98)(v15, 1, v105) == 1)
    {
      sub_25293847C(v15, &qword_27F540298, &unk_252E3C270);
      v17 = 0;
      v18 = 0;
    }

    else
    {
      v17 = sub_252E36304();
      v18 = v19;
      (*v91)(v15, v16);
    }

    *(inited + 24) = v17;
    *(inited + 32) = v18;
    v118 = sub_252B719E4();
    swift_setDeallocating();
    HomeFilter.Builder.deinit();
    swift_deallocClassInstance();
    if (qword_2814B0DB8 != -1)
    {
      swift_once();
    }

    sub_252E37604();
    v20 = off_2814B0DC0;
    if (off_2814B0DC0)
    {
    }

    else
    {
      type metadata accessor for LifeCycleManager();
      swift_allocObject();
      v20 = sub_252D7EAE8();
      off_2814B0DC0 = v20;

      sub_252D7E92C();
    }

    sub_252E37614();
    v21 = swift_allocObject();
    *(v21 + 16) = v107;
    v117 = *(v20 + 2);
    v22 = swift_allocObject();
    *(v22 + 16) = v20;
    *(v22 + 24) = v94;
    *(v22 + 40) = 0xE900000000000065;
    *(v22 + 48) = sub_2529919D4;
    *(v22 + 56) = v21;
    v120[2] = sub_252D083EC;
    v120[3] = v22;
    v119[0] = MEMORY[0x277D85DD0];
    v119[1] = 1107296256;
    v120[0] = sub_252AD686C;
    v120[1] = &block_descriptor_14;
    v23 = _Block_copy(v119);

    v24 = v101;
    sub_252E36CD4();
    v121[0] = MEMORY[0x277D84F90];
    sub_252990E98();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5402F8, &qword_252E3E860);
    sub_2529905D0();
    v25 = v103;
    v26 = v104;
    sub_252E37824();
    MEMORY[0x2530ADA30](0, v24, v25, v23);
    _Block_release(v23);

    (*v96)(v25, v26);
    (*v95)(v24, v102);

    if (qword_2814B0E18 != -1)
    {
      swift_once();
    }

    sub_252E37604();
    v4 = &unk_2814B0000;
    if (qword_2814B0E30)
    {
      v27 = qword_2814B0E30;
    }

    else
    {
      v28 = [objc_allocWithZone(v107) init];
      v29 = qword_2814B0E30;
      qword_2814B0E30 = v28;
      v27 = v28;
    }

    sub_252E37614();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
    v30 = swift_allocObject();
    *(v30 + 16) = v93;
    v31 = v118;
    *(v30 + 32) = v118;
    v32 = v31;
    v33 = HomeStore.accessories(matching:supporting:)(v30, 0);
    v35 = v34;

    if ((v35 & 1) == 0)
    {
      break;
    }

    sub_252929F10(v33, 1);

LABEL_5:
    v11 = v108;
    if (v108 == v92)
    {
      goto LABEL_88;
    }
  }

  v36 = v33 & 0xFFFFFFFFFFFFFF8;
  if (!(v33 >> 62))
  {
    v37 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v37)
    {
      goto LABEL_28;
    }

    goto LABEL_79;
  }

  v37 = sub_252E378C4();
  if (!v37)
  {
LABEL_79:

    sub_252929F10(v33, 0);

    goto LABEL_5;
  }

LABEL_28:
  v38 = 0;
  v114 = v32;
  v115 = v33 & 0xC000000000000001;
  v110 = v33 + 32;
  v111 = v37;
  v112 = v33 & 0xFFFFFFFFFFFFFF8;
  v113 = v33;
  while (1)
  {
    if (v115)
    {
      v39 = MEMORY[0x2530ADF00](v38, v33);
      v12 = __OFADD__(v38++, 1);
      if (v12)
      {
        goto LABEL_81;
      }
    }

    else
    {
      if (v38 >= *(v36 + 16))
      {
        goto LABEL_82;
      }

      v39 = *(v110 + 8 * v38);

      v12 = __OFADD__(v38++, 1);
      if (v12)
      {
        goto LABEL_81;
      }
    }

    v40 = (*(*v39 + 336))();
    v4 = *(v40 + 16);
    if (v4)
    {
      break;
    }

LABEL_30:

    if (v38 == v37)
    {
      goto LABEL_79;
    }
  }

  v117 = v39;
  v118 = v38;
  v41 = 0;
  v116 = v40;
  v42 = v40 + 32;
  while (2)
  {
    v43 = v6 + 56;
    while (1)
    {
      v44 = *(v42 + 8 * v41++);
      sub_252E37EC4();
      MEMORY[0x2530AE390](v44);
      v45 = sub_252E37F14();
      v46 = -1 << *(v6 + 32);
      v47 = v45 & ~v46;
      if (((*(v43 + ((v47 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v47) & 1) == 0)
      {
        break;
      }

      v48 = ~v46;
      while (*(*(v6 + 48) + 8 * v47) != v44)
      {
        v47 = (v47 + 1) & v48;
        if (((*(v43 + ((v47 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v47) & 1) == 0)
        {
          goto LABEL_47;
        }
      }

      if (v41 == v4)
      {

LABEL_77:
        v33 = v113;
        v32 = v114;
        v37 = v111;
        v36 = v112;
        v38 = v118;
        goto LABEL_30;
      }
    }

LABEL_47:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v121[0] = v6;
    v50 = *(v6 + 16);
    if (*(v6 + 24) > v50)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v51 = v6;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541688, &qword_252E40950);
        v57 = sub_252E37974();
        v51 = v57;
        if (*(v6 + 16))
        {
          v58 = (v57 + 56);
          v59 = ((1 << *(v51 + 32)) + 63) >> 6;
          if (v51 != v6 || v58 >= v43 + 8 * v59)
          {
            memmove(v58, (v6 + 56), 8 * v59);
          }

          v60 = 0;
          *(v51 + 16) = *(v6 + 16);
          v61 = 1 << *(v6 + 32);
          if (v61 < 64)
          {
            v62 = ~(-1 << v61);
          }

          else
          {
            v62 = -1;
          }

          v63 = v62 & *(v6 + 56);
          for (i = (v61 + 63) >> 6; v63; *(*(v51 + 48) + 8 * v66) = *(*(v6 + 48) + 8 * v66))
          {
            v65 = __clz(__rbit64(v63));
            v63 &= v63 - 1;
            v66 = v65 | (v60 << 6);
LABEL_74:
            ;
          }

          v67 = v60;
          while (1)
          {
            v60 = v67 + 1;
            if (__OFADD__(v67, 1))
            {
              goto LABEL_84;
            }

            if (v60 >= i)
            {
              break;
            }

            v68 = *(v43 + 8 * v60);
            ++v67;
            if (v68)
            {
              v63 = (v68 - 1) & v68;
              v66 = __clz(__rbit64(v68)) | (v60 << 6);
              goto LABEL_74;
            }
          }
        }
      }

LABEL_57:
      *(v51 + ((v47 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v47;
      *(*(v51 + 48) + 8 * v47) = v44;
      v55 = *(v51 + 16);
      v12 = __OFADD__(v55, 1);
      v56 = v55 + 1;
      if (!v12)
      {
        *(v51 + 16) = v56;
        v6 = v51;
        if (v41 != v4)
        {
          continue;
        }

        v6 = v51;
        goto LABEL_77;
      }

      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
      goto LABEL_83;
    }

    break;
  }

  if (isUniquelyReferenced_nonNull_native)
  {
    sub_252DAC434(v50 + 1);
  }

  else
  {
    sub_252DB2DD4(v50 + 1);
  }

  v51 = v121[0];
  sub_252E37EC4();
  MEMORY[0x2530AE390](v44);
  v52 = sub_252E37F14();
  v53 = -1 << *(v51 + 32);
  v47 = v52 & ~v53;
  if (((*(v51 + 56 + ((v47 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v47) & 1) == 0)
  {
    goto LABEL_57;
  }

  v54 = ~v53;
  while (*(*(v51 + 48) + 8 * v47) != v44)
  {
    v47 = (v47 + 1) & v54;
    if (((*(v51 + 56 + ((v47 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v47) & 1) == 0)
    {
      goto LABEL_57;
    }
  }

LABEL_112:
  result = sub_252E37E14();
  __break(1u);
  return result;
}

uint64_t sub_252D9E9A0(uint64_t a1)
{
  v68 = sub_252E36CA4();
  v3 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v67 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_252E36D04();
  v5 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v65 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = (&v53 - v8);
  v10 = *(v1 + 24);
  if (v10 >> 62)
  {
    goto LABEL_65;
  }

  result = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result)
  {
LABEL_3:
    v57 = result;
    v70 = type metadata accessor for HomeStore(0);
    v64 = v10 & 0xC000000000000001;
    v55 = v10 & 0xFFFFFFFFFFFFFF8;
    v54 = (v10 + 32);
    v63 = v76;
    v62 = (v3 + 8);
    v61 = (v5 + 8);
    v5 = 0;
    v60 = xmmword_252E3E810;
    v59 = xmmword_252E3C130;
    v69 = v9;
    v58 = v10;
    while (1)
    {
      if (v64)
      {
        v3 = MEMORY[0x2530ADF00](v5, v10);
        v12 = __OFADD__(v5++, 1);
        if (v12)
        {
          goto LABEL_63;
        }
      }

      else
      {
        if (v5 >= *(v55 + 16))
        {
          goto LABEL_64;
        }

        v3 = v54[v5];

        v12 = __OFADD__(v5++, 1);
        if (v12)
        {
          goto LABEL_63;
        }
      }

      v71 = v5;
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
      v73 = v3;
      sub_252956C1C(v3 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_entityName, v9);
      v14 = sub_252E36324();
      v15 = *(v14 - 8);
      if ((*(v15 + 48))(v9, 1, v14) == 1)
      {
        sub_25293847C(v9, &qword_27F540298, &unk_252E3C270);
        v16 = 0;
        v17 = 0;
      }

      else
      {
        v16 = sub_252E36304();
        v17 = v18;
        (*(v15 + 8))(v9, v14);
      }

      *(inited + 24) = v16;
      *(inited + 32) = v17;
      v72 = sub_252B719E4();
      swift_setDeallocating();
      HomeFilter.Builder.deinit();
      swift_deallocClassInstance();
      if (qword_2814B0DB8 != -1)
      {
        swift_once();
      }

      sub_252E37604();
      v19 = off_2814B0DC0;
      if (off_2814B0DC0)
      {
      }

      else
      {
        type metadata accessor for LifeCycleManager();
        swift_allocObject();
        v19 = sub_252D7EAE8();
        off_2814B0DC0 = v19;

        sub_252D7E92C();
      }

      sub_252E37614();
      v20 = swift_allocObject();
      *(v20 + 16) = v70;
      v21 = swift_allocObject();
      *(v21 + 16) = v19;
      *(v21 + 24) = v60;
      *(v21 + 40) = 0xE900000000000065;
      *(v21 + 48) = sub_252990558;
      *(v21 + 56) = v20;
      v76[2] = sub_252990E7C;
      v76[3] = v21;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      v76[0] = sub_252AD686C;
      v76[1] = &block_descriptor_25;
      v22 = _Block_copy(aBlock);

      v23 = v65;
      sub_252E36CD4();
      v74 = MEMORY[0x277D84F90];
      sub_252990E98();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5402F8, &qword_252E3E860);
      sub_2529905D0();
      v24 = v67;
      v25 = v68;
      sub_252E37824();
      MEMORY[0x2530ADA30](0, v23, v24, v22);
      _Block_release(v22);

      (*v62)(v24, v25);
      (*v61)(v23, v66);

      if (qword_2814B0E18 != -1)
      {
        swift_once();
      }

      sub_252E37604();
      if (qword_2814B0E30)
      {
        v26 = qword_2814B0E30;
      }

      else
      {
        v27 = [objc_allocWithZone(v70) init];
        v28 = qword_2814B0E30;
        qword_2814B0E30 = v27;
        v26 = v27;
      }

      v9 = v69;
      sub_252E37614();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
      v3 = swift_allocObject();
      *(v3 + 16) = v59;
      v29 = v72;
      *(v3 + 32) = v72;
      v30 = v29;
      v31 = HomeStore.accessories(matching:supporting:)(v3, 0);
      v10 = v32;

      if ((v10 & 1) == 0)
      {
        break;
      }

      sub_252929F10(v31, 1);

      v5 = v71;
LABEL_5:
      v10 = v58;
      if (v5 == v57)
      {
        return 0;
      }
    }

    aBlock[0] = MEMORY[0x277D84F90];
    v33 = v31 & 0xFFFFFFFFFFFFFF8;
    v3 = v73;
    if (v31 >> 62)
    {
      v5 = sub_252E378C4();
      if (v5)
      {
LABEL_28:
        v56 = v30;
        v3 = 0;
        v34 = v31 & 0xC000000000000001;
        v72 = v31;
        v35 = v31 + 32;
        while (1)
        {
LABEL_30:
          if (v34)
          {
            v36 = MEMORY[0x2530ADF00](v3, v72);
            v12 = __OFADD__(v3++, 1);
            if (v12)
            {
              goto LABEL_61;
            }
          }

          else
          {
            if (v3 >= *(v33 + 16))
            {
              goto LABEL_62;
            }

            v36 = *(v35 + 8 * v3);

            v12 = __OFADD__(v3++, 1);
            if (v12)
            {
LABEL_61:
              __break(1u);
LABEL_62:
              __break(1u);
LABEL_63:
              __break(1u);
LABEL_64:
              __break(1u);
LABEL_65:
              result = sub_252E378C4();
              if (!result)
              {
                return result;
              }

              goto LABEL_3;
            }
          }

          v37 = (*v36 + 336);
          v9 = *v37;
          v38 = (*v37)();
          v39 = *(v38 + 16);
          v40 = 32;
          if (a1 == 5)
          {
            while (v39)
            {
              v41 = *(v38 + v40);
              v40 += 8;
              --v39;
              if (v41 == 3)
              {

                v38 = (v9)(v42);
                v43 = *(v38 + 16);
                v44 = 32;
                while (v43)
                {
                  v45 = *(v38 + v44);
                  v44 += 8;
                  --v43;
                  if (v45 == 4)
                  {

                    v38 = (v9)(v46);
                    v47 = *(v38 + 16);
                    v48 = 32;
                    while (v47)
                    {
                      v49 = *(v38 + v48);
                      v48 += 8;
                      --v47;
                      if (v49 == 2)
                      {
                        goto LABEL_45;
                      }
                    }

                    goto LABEL_29;
                  }
                }

                break;
              }
            }
          }

          else
          {
            while (v39)
            {
              v50 = *(v38 + v40);
              v40 += 8;
              --v39;
              if (v50 == a1)
              {
LABEL_45:

                v10 = aBlock;
                sub_252E37A94();
                v9 = *(aBlock[0] + 16);
                sub_252E37AC4();
                sub_252E37AD4();
                sub_252E37AA4();
                if (v3 != v5)
                {
                  goto LABEL_30;
                }

                goto LABEL_50;
              }
            }
          }

LABEL_29:
          v10 = v38;

          if (v3 == v5)
          {
LABEL_50:
            v51 = aBlock[0];
            v9 = v69;
            v3 = v73;
            v30 = v56;
            v31 = v72;
            goto LABEL_53;
          }
        }
      }
    }

    else
    {
      v5 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v5)
      {
        goto LABEL_28;
      }
    }

    v51 = MEMORY[0x277D84F90];
LABEL_53:
    v5 = v71;
    if (v51 < 0 || (v51 & 0x4000000000000000) != 0)
    {
      v52 = sub_252E378C4();
      v5 = v71;
    }

    else
    {
      v52 = *(v51 + 16);
    }

    sub_252929F10(v31, 0);

    if (v52)
    {
      return 1;
    }

    goto LABEL_5;
  }

  return result;
}

uint64_t sub_252D9F3E0(uint64_t a1)
{
  v41 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545DD0, &unk_252E60070);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v52 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = &v41 - v5;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v45 = *(v51 - 8);
  v7 = MEMORY[0x28223BE20](v51);
  v42 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v50 = &v41 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v44 = &v41 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v41 - v14;
  MEMORY[0x28223BE20](v13);
  v43 = &v41 - v16;
  v17 = *(v1 + 24);
  if (v17 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
  {
    v19 = 0;
    v48 = v17 & 0xFFFFFFFFFFFFFF8;
    v49 = v17 & 0xC000000000000001;
    v46 = (v45 + 48);
    v47 = (v45 + 56);
    v53 = MEMORY[0x277D84F90];
    while (v49)
    {
      v20 = MEMORY[0x2530ADF00](v19, v17);
      v21 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        goto LABEL_19;
      }

LABEL_9:
      sub_252956C1C(v20 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_type, v15);
      v22 = sub_252E36324();
      v23 = *(v22 - 8);
      v24 = 1;
      if ((*(v23 + 48))(v15, 1, v22) != 1)
      {
        v25 = v44;
        (*(v23 + 32))(v44, v15, v22);
        (*(v23 + 56))(v25, 0, 1, v22);
        sub_25293DDF0(v25, v52, &qword_27F540298, &unk_252E3C270);
        v24 = 0;
      }

      v26 = v52;
      v27 = v24;
      v28 = v51;
      (*v47)(v52, v27, 1, v51);
      sub_25293DDF0(v26, v6, &qword_27F545DD0, &unk_252E60070);

      if ((*v46)(v6, 1, v28) == 1)
      {
        sub_25293847C(v6, &qword_27F545DD0, &unk_252E60070);
      }

      else
      {
        v29 = v43;
        sub_25293DDF0(v6, v43, &qword_27F540298, &unk_252E3C270);
        sub_25293DDF0(v29, v50, &qword_27F540298, &unk_252E3C270);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v53 = sub_2529F9318(0, v53[2] + 1, 1, v53);
        }

        v31 = v53[2];
        v30 = v53[3];
        if (v31 >= v30 >> 1)
        {
          v53 = sub_2529F9318((v30 > 1), v31 + 1, 1, v53);
        }

        v32 = v53;
        v53[2] = v31 + 1;
        sub_25293DDF0(v50, v32 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v31, &qword_27F540298, &unk_252E3C270);
      }

      ++v19;
      if (v21 == i)
      {
        goto LABEL_23;
      }
    }

    if (v19 >= *(v48 + 16))
    {
      goto LABEL_20;
    }

    v20 = *(v17 + 8 * v19 + 32);

    v21 = v19 + 1;
    if (!__OFADD__(v19, 1))
    {
      goto LABEL_9;
    }

LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

  v53 = MEMORY[0x277D84F90];
LABEL_23:
  if (qword_27F53F2A0 != -1)
  {
    swift_once();
  }

  v33 = off_27F541CD0;
  if (*(off_27F541CD0 + 2) && (v34 = sub_252A488EC(), (v35 & 1) != 0))
  {
    v54 = *(v33[7] + v34);
    AccessoryTypeSemantic.rawValue.getter();
    v36 = v42;
    sub_252E362F4();
    v37 = 0;
  }

  else
  {
    v37 = 1;
    v36 = v42;
  }

  v38 = sub_252E36324();
  (*(*(v38 - 8) + 56))(v36, v37, 1, v38);
  v39 = sub_2529A7A64(v36, v53);

  sub_25293847C(v36, &qword_27F540298, &unk_252E3C270);
  return v39 & 1;
}

uint64_t block_copy_helper_25(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

BOOL sub_252D9F9E0(unint64_t a1)
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
      v6 = MEMORY[0x2530ADF00](v4, a1);
    }

    else
    {
      if (v4 >= *(v2 + 16))
      {
        goto LABEL_14;
      }

      v6 = *(a1 + 8 * v4 + 32);
    }

    v7 = v6;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    v8 = [v6 entityType];

    v4 = v5 + 1;
  }

  while (v8 != 6);
  return v3 != v5;
}

uint64_t sub_252D9FAE4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25296BC70;

  return sub_252D9FC58(a1);
}

uint64_t sub_252D9FB8C(void *a1)
{
  v1 = [a1 filters];
  if (v1)
  {
    type metadata accessor for HomeFilter();
    v2 = sub_252E37264();

    if (v2 >> 62)
    {
      if (sub_252E378C4())
      {
        goto LABEL_4;
      }
    }

    else if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_4:
      LOBYTE(v1) = sub_252D9F9E0(v2);
LABEL_7:

      return v1 & 1;
    }

    LOBYTE(v1) = 0;
    goto LABEL_7;
  }

  return v1 & 1;
}

uint64_t sub_252D9FC28()
{
  type metadata accessor for TriggersHandleDelegate();

  return swift_allocObject();
}

uint64_t sub_252D9FC78()
{
  v1 = sub_252990EF0(*(v0 + 112));
  if (v2)
  {
    sub_252929F10(v1, 1);
    if (qword_27F53F498 != -1)
    {
      swift_once();
    }

    v3 = sub_252E36AD4();
    __swift_project_value_buffer(v3, qword_27F544C70);
    sub_252CC4050(0xD00000000000001FLL, 0x8000000252E6D800, 0xD00000000000007DLL, 0x8000000252E9B480, 0x6928656C646E6168, 0xEF293A746E65746ELL, 23);
    v4 = [objc_allocWithZone(type metadata accessor for DiscoverHomeIntentResponse()) init];
    v5 = OBJC_IVAR___DiscoverHomeIntentResponse_code;
    swift_beginAccess();
    v6 = 5;
    goto LABEL_5;
  }

  v7 = v1;
  v8 = type metadata accessor for HomeStore(0);
  v9 = static HomeStore.shared.getter(v8);
  v10 = sub_2529F5A80(v7);
  v12 = v11;
  sub_252929F10(v7, 0);

  if (v12)
  {
    if (qword_27F53F498 != -1)
    {
      swift_once();
    }

    v13 = sub_252E36AD4();
    __swift_project_value_buffer(v13, qword_27F544C70);
    sub_252E379F4();
    *(v0 + 16) = 0;
    *(v0 + 24) = 0xE000000000000000;
    MEMORY[0x2530AD570](0xD000000000000023, 0x8000000252E6D8B0);
    *(v0 + 40) = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541ED0, &unk_252E3C480);
    sub_252E37AE4();
    sub_252CC4050(*(v0 + 16), *(v0 + 24), 0xD00000000000007DLL, 0x8000000252E9B480, 0x6928656C646E6168, 0xEF293A746E65746ELL, 38);

    v4 = [objc_allocWithZone(type metadata accessor for DiscoverHomeIntentResponse()) init];
    v14 = OBJC_IVAR___DiscoverHomeIntentResponse_code;
    swift_beginAccess();
    *&v4[v14] = 5;
    [v4 setUserActivity_];
    sub_252929F10(v10, 1);
    goto LABEL_25;
  }

  if (!(v10 >> 62))
  {
    if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_12;
    }

LABEL_29:
    sub_252929F10(v10, 0);
    if (qword_27F53F498 == -1)
    {
LABEL_30:
      v23 = sub_252E36AD4();
      __swift_project_value_buffer(v23, qword_27F544C70);
      sub_252CC4050(0xD00000000000003ELL, 0x8000000252E9B500, 0xD00000000000007DLL, 0x8000000252E9B480, 0x6928656C646E6168, 0xEF293A746E65746ELL, 30);
      v4 = [objc_allocWithZone(type metadata accessor for DiscoverHomeIntentResponse()) init];
      v5 = OBJC_IVAR___DiscoverHomeIntentResponse_code;
      swift_beginAccess();
      v6 = 100;
LABEL_5:
      *&v4[v5] = v6;
      [v4 setUserActivity_];
      goto LABEL_25;
    }

LABEL_32:
    swift_once();
    goto LABEL_30;
  }

  if (!sub_252E378C4())
  {
    goto LABEL_29;
  }

LABEL_12:
  v4 = [objc_allocWithZone(type metadata accessor for DiscoverHomeIntentResponse()) init];
  v15 = OBJC_IVAR___DiscoverHomeIntentResponse_code;
  swift_beginAccess();
  *&v4[v15] = 4;
  [v4 setUserActivity_];
  if (v10 >> 62)
  {
    v16 = sub_252E378C4();
    if (v16)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v16 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v16)
    {
LABEL_14:
      v24 = MEMORY[0x277D84F90];
      sub_252E37AB4();
      if ((v16 & 0x8000000000000000) == 0)
      {
        v17 = 0;
        do
        {
          if ((v10 & 0xC000000000000001) != 0)
          {
            MEMORY[0x2530ADF00](v17, v10);
          }

          else
          {
          }

          ++v17;
          sub_252B9D2D4();

          sub_252E37A94();
          sub_252E37AC4();
          sub_252E37AD4();
          sub_252E37AA4();
        }

        while (v16 != v17);
        goto LABEL_22;
      }

      __break(1u);
      goto LABEL_32;
    }
  }

LABEL_22:
  sub_252929F10(v10, 0);
  type metadata accessor for HomeEntity();
  v18 = sub_252E37254();

  [v4 setMatchedEntities_];

  if (qword_27F53F498 != -1)
  {
    swift_once();
  }

  v19 = sub_252E36AD4();
  __swift_project_value_buffer(v19, qword_27F544C70);
  sub_252E379F4();

  *(v0 + 16) = v16;
  v20 = sub_252E37D94();
  MEMORY[0x2530AD570](v20);

  MEMORY[0x2530AD570](0x65697469746E6520, 0xE900000000000073);
  sub_252CC3D90(0xD000000000000010, 0x8000000252E6D8E0, 0xD00000000000007DLL, 0x8000000252E9B480);

LABEL_25:
  v21 = *(v0 + 8);

  return v21(v4);
}

uint64_t sub_252DA035C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_252E37EC4();
  sub_252E37044();
  v6 = sub_252E37F14();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_252E37DB4() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_252DA0454(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (sub_252E37EC4(), StateSemantic.rawValue.getter(), sub_252E37044(), , v3 = sub_252E37F14(), v4 = -1 << *(a2 + 32), v5 = v3 & ~v4, ((*(a2 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0))
  {
    v6 = ~v4;
    while (1)
    {
      v7 = StateSemantic.rawValue.getter();
      v9 = v8;
      if (v7 == StateSemantic.rawValue.getter() && v9 == v10)
      {
        break;
      }

      v12 = sub_252E37DB4();

      if ((v12 & 1) == 0)
      {
        v5 = (v5 + 1) & v6;
        if ((*(a2 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
        {
          continue;
        }
      }

      return v12 & 1;
    }

    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

BOOL sub_252DA05B4(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_252E37EC4();
  MEMORY[0x2530AE390](a1);
  v4 = sub_252E37F14();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + 8 * v6);
    result = v8 == a1;
    if (v8 == a1)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t sub_252DA0680(uint64_t a1, char a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_252E37EC4();
  sub_252E37EE4();
  if ((a2 & 1) == 0)
  {
    MEMORY[0x2530AE390](a1);
  }

  v7 = sub_252E37F14();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if ((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    do
    {
      v11 = *(a3 + 48) + 16 * v9;
      if (*(v11 + 8))
      {
        if (a2)
        {
          return 1;
        }
      }

      else if ((a2 & 1) == 0 && *v11 == a1)
      {
        return 1;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return 0;
}

uint64_t sub_252DA0784(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_252E37914();
  }

  else if (*(a2 + 16) && (sub_25293F638(0, &qword_27F540E58, 0x277CD1EE0), v5 = sub_252E37684(), v6 = -1 << *(a2 + 32), v7 = v5 & ~v6, ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0))
  {
    v8 = ~v6;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v7);
      v4 = sub_252E37694();

      if (v4)
      {
        break;
      }

      v7 = (v7 + 1) & v8;
    }

    while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_252DA08B4(uint64_t a1)
{
  v2 = sub_252E37834();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return sub_252DB3974(v2, *(a1 + 36), 0, a1);
  }
}

uint64_t sub_252DA0930(uint64_t a1)
{
  v2 = sub_252E37834();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  sub_252DB3E10(v2, *(a1 + 36), 0, a1);
}

uint64_t sub_252DA0998(uint64_t a1)
{
  v2 = sub_252E37834();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v4 = sub_252DB4E10(v2, *(a1 + 36), 0, a1);

  return v4;
}

void *sub_252DA0A14(uint64_t a1)
{
  v2 = sub_252E37834();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return sub_252DB3DB4(&v4, v2, *(a1 + 36), 0, a1);
  }
}

uint64_t sub_252DA0AA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_252E37834();
  v5 = 1;
  if (v4 != 1 << *(a1 + 32))
  {
    sub_252DB39C4(v4, *(a1 + 36), a1, a2);
    v5 = 0;
  }

  v6 = sub_252E359C4();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

uint64_t sub_252DA0B60(uint64_t a1)
{
  v2 = sub_252E37834();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  sub_252DB4E64(v2, *(a1 + 36), 0, a1);
}

uint64_t sub_252DA0BF8(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v5 = sub_252E37864();
    v7 = v6;
    v8 = sub_252E37924();
    v10 = v9;
    v11 = MEMORY[0x2530ADD50](v5, v7, v8, v9);
    sub_252ACBF38(v8, v10, 1);
    if (v11)
    {
LABEL_3:
      sub_252ACBF38(v5, v7, v4 != 0);
      return 0;
    }
  }

  else
  {
    v5 = sub_252E37834();
    v7 = *(a1 + 36);
    if (v5 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  v13 = sub_252DB3A84(v5, v7, v4 != 0, a1, a2);
  sub_252ACBF38(v5, v7, v4 != 0);
  return v13;
}

uint64_t sub_252DA0D1C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v26 = MEMORY[0x277D84F90];
  sub_2529AA3A0(0, v1, 0);
  v2 = v26;
  v25 = a1 + 56;
  result = sub_252E37834();
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
    result = sub_252B9AAC4();
    v13 = *(v26 + 16);
    v12 = *(v26 + 24);
    if (v13 >= v12 >> 1)
    {
      v22 = v11;
      v23 = result;
      sub_2529AA3A0((v12 > 1), v13 + 1, 1);
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
          result = sub_252ACBF38(v5, v10, 0);
          v7 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      result = sub_252ACBF38(v5, v10, 0);
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

uint64_t sub_252DA0F40(id a1, id a2)
{
  v2 = sub_252DA2334();
  v3 = v2;
  v19 = MEMORY[0x277D84F90];
  if (v2 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
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
          goto LABEL_18;
        }

        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v9 = [v6 userTask];
      if (v9 && (v10 = v9, v11 = [v9 attribute], v10, v11 == a1) && (v12 = objc_msgSend(v7, sel_userTask)) != 0 && (v13 = v12, v14 = objc_msgSend(v12, sel_taskType), v13, v14 == a2))
      {
        sub_252E37A94();
        sub_252E37AC4();
        sub_252E37AD4();
        sub_252E37AA4();
      }

      else
      {
      }

      ++v5;
      if (v8 == i)
      {
        v15 = v19;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  v15 = MEMORY[0x277D84F90];
LABEL_21:

  return v15;
}

uint64_t sub_252DA10F8()
{
  v1 = [v0 entity];
  if (!v1)
  {
    sub_252DA6A00();
    return MEMORY[0x277D84F90];
  }

  v2 = v1;
  v3 = [v1 deviceTypes];
  if (!v3)
  {

    return MEMORY[0x277D84F90];
  }

  v4 = v3;
  v5 = sub_252E37264();

  v6 = *(v5 + 16);
  if (!v6)
  {

    return MEMORY[0x277D84F90];
  }

  v15 = MEMORY[0x277D84F90];
  sub_2529AA420(0, v6, 0);
  v7 = 32;
  v8 = v15;
  do
  {
    v9 = sub_252E25FC4(*(v5 + v7));
    if (v10)
    {
      v11 = 0;
    }

    else
    {
      v11 = v9;
    }

    v13 = *(v15 + 16);
    v12 = *(v15 + 24);
    if (v13 >= v12 >> 1)
    {
      sub_2529AA420((v12 > 1), v13 + 1, 1);
    }

    *(v15 + 16) = v13 + 1;
    *(v15 + 8 * v13 + 32) = v11;
    v7 += 8;
    --v6;
  }

  while (v6);

  return v8;
}

uint64_t sub_252DA124C(void *a1)
{
  v4 = v2;
  v133 = a1;
  v134 = sub_252E36324();
  v5 = *(v134 - 8);
  v6 = MEMORY[0x28223BE20](v134);
  v123 = &v121 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v129 = &v121 - v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v121 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v126 = &v121 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v127 = &v121 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v121 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v128 = &v121 - v21;
  MEMORY[0x28223BE20](v20);
  v23 = &v121 - v22;
  v24 = [v4 entity];
  if (v24 && (v3 = v24, v25 = [v24 homeEntityName], v3, v25))
  {
    v3 = sub_252E36F34();

    sub_252E37024();

    v26 = *(v5 + 56);
    v27 = v23;
    v28 = 0;
  }

  else
  {
    v26 = *(v5 + 56);
    v27 = v23;
    v28 = 1;
  }

  v131 = v26;
  v26(v27, v28, 1, v134);
  v29 = [v4 entity];
  if (v29 && (v3 = v29, v30 = [v29 entityIdentifier], v3, v30))
  {
    v3 = sub_252E36F34();

    sub_252E37024();

    v31 = 0;
  }

  else
  {
    v31 = 1;
  }

  v32 = 1;
  v130 = v5 + 56;
  v131(v128, v31, 1, v134);
  v33 = [v4 entity];
  if (v33)
  {
    v3 = v33;
    v34 = [v33 room];

    if (v34)
    {
      v3 = sub_252E36F34();

      sub_252E37024();

      v32 = 0;
    }

    else
    {
      v32 = 1;
    }
  }

  v131(v19, v32, 1, v134);
  v35 = [v4 entity];
  v124 = v23;
  v125 = v19;
  if (v35 && (v36 = v35, v3 = [v35 zones], v36, v3))
  {
    v122 = v4;
    v37 = sub_252E37264();

    v38 = *(v37 + 16);
    if (v38)
    {
      v4 = 0;
      v23 = (v5 + 32);
      v39 = v37 + 40;
      v40 = MEMORY[0x277D84F90];
      while (v4 < *(v37 + 16))
      {

        sub_252E37024();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v40 = sub_2529F7F74(0, v40[2] + 1, 1, v40);
        }

        v1 = v40[2];
        v41 = v40[3];
        v3 = v1 + 1;
        if (v1 >= v41 >> 1)
        {
          v40 = sub_2529F7F74((v41 > 1), v1 + 1, 1, v40);
        }

        ++v4;
        v40[2] = v3;
        (*(v5 + 32))(v40 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v1, v11, v134);
        v39 += 16;
        if (v38 == v4)
        {
          goto LABEL_26;
        }
      }

      __break(1u);
LABEL_76:
      result = sub_252E378C4();
      if (!result)
      {
        goto LABEL_77;
      }

      goto LABEL_54;
    }

    v40 = MEMORY[0x277D84F90];
LABEL_26:

    v23 = v124;
    v19 = v125;
    v4 = v122;
  }

  else
  {
    v40 = MEMORY[0x277D84F90];
  }

  v42 = [v4 entity];
  if (v42 && (v43 = v42, v44 = [v42 home], v43, v44))
  {
    sub_252E36F34();

    v45 = v127;
    sub_252E37024();

    v46 = 0;
  }

  else
  {
    v46 = 1;
    v45 = v127;
  }

  v131(v45, v46, 1, v134);
  v47 = [v4 entity];
  v37 = &off_279711000;
  if (v47)
  {
    v48 = v47;
    v49 = [v47 deviceTypes];

    if (v49)
    {
      v122 = v4;
      v50 = sub_252E37264();

      v51 = *(v50 + 16);
      v121 = v50;
      if (v51)
      {
        v52 = (v50 + 32);
        v3 = v5 + 32;
        v132 = MEMORY[0x277D84F90];
        do
        {
          v54 = *v52++;
          sub_252E25FC4(v54);
          if ((v55 & 1) == 0)
          {
            if (qword_27F53F2A0 != -1)
            {
              swift_once();
            }

            v56 = off_27F541CD0;
            if (*(off_27F541CD0 + 2))
            {
              v57 = sub_252A488EC();
              if (v58)
              {
                v136 = *(v56[7] + v57);
                AccessoryTypeSemantic.rawValue.getter();
                v59 = v123;
                sub_252E362F4();
                v60 = *v3;
                (*v3)(v129, v59, v134);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v132 = sub_2529F7F74(0, *(v132 + 2) + 1, 1, v132);
                }

                v62 = *(v132 + 2);
                v61 = *(v132 + 3);
                if (v62 >= v61 >> 1)
                {
                  v132 = sub_2529F7F74((v61 > 1), v62 + 1, 1, v132);
                }

                v53 = v132;
                *(v132 + 2) = v62 + 1;
                v60(&v53[((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v62], v129, v134);
              }
            }
          }

          --v51;
        }

        while (v51);
      }

      else
      {
        v132 = MEMORY[0x277D84F90];
      }

      v23 = v124;
      v19 = v125;
      v4 = v122;
      v37 = &off_279711000;
    }

    else
    {
      v132 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v132 = MEMORY[0x277D84F90];
  }

  v63 = [v4 entity];
  if (!v63)
  {
    goto LABEL_79;
  }

  v64 = v63;
  v65 = [v63 deviceTypes];

  if (!v65)
  {
    goto LABEL_79;
  }

  v1 = sub_252E37264();

  v67 = sub_252B680FC(v66);
  swift_beginAccess();
  v38 = *(v67 + 24);
  if (v38 >> 62)
  {
    goto LABEL_76;
  }

  result = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
LABEL_77:

    goto LABEL_78;
  }

LABEL_54:
  v3 = result - 1;
  if (__OFSUB__(result, 1))
  {
    goto LABEL_107;
  }

  if ((v38 & 0xC000000000000001) != 0)
  {
    goto LABEL_108;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_110;
  }

  if (v3 >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_110:
    __break(1u);
    return result;
  }

  v3 = *(v38 + 8 * v3 + 32);

  while (1)
  {
    v69 = [v3 filters];

    if (v69)
    {
      type metadata accessor for HomeFilter();
      v70 = sub_252E37264();

      v71 = sub_252BAFC18(v70);

      v3 = *(v1 + 16);
      if (v3)
      {
        v72 = sub_2529F8104(0, 1, 1, MEMORY[0x277D84F90]);
        v73 = (v1 + 32);
        v74 = *(v72 + 2);
        do
        {
          v76 = *v73++;
          v75 = v76;
          v77 = *(v72 + 3);
          v78 = v74 + 1;
          if (v74 >= v77 >> 1)
          {
            v72 = sub_2529F8104((v77 > 1), v74 + 1, 1, v72);
          }

          *(v72 + 2) = v78;
          *&v72[8 * v74++ + 32] = v75;
          --v3;
        }

        while (v3);
      }

      else
      {
        v78 = *(MEMORY[0x277D84F90] + 16);
      }

      if (v78 > 1)
      {
        v79 = *(v1 + 16);
        v80 = 32;
        v19 = v125;
        while (v79)
        {
          v81 = *(v1 + v80);
          v80 += 8;
          --v79;
          if (v81 == v71)
          {

            v82 = v71;
            v83 = 0;
            goto LABEL_86;
          }
        }

        goto LABEL_83;
      }

      v19 = v125;
      v37 = 0x279711000;
    }

    else
    {

LABEL_78:
      v19 = v125;
    }

LABEL_79:
    v82 = [v4 entity];
    if (v82)
    {
      v84 = v82;
      v85 = [v82 *(v37 + 3192)];

      if (!v85)
      {
LABEL_84:
        v82 = 0;
        goto LABEL_85;
      }

      v86 = sub_252E37264();

      if (*(v86 + 16))
      {
        v87 = *(v86 + 32);

        v82 = sub_252E25FC4(v87);
        goto LABEL_86;
      }

LABEL_83:

      goto LABEL_84;
    }

LABEL_85:
    v83 = 1;
LABEL_86:
    static SemanticMapper.getSemanticKey(for:)(v82, v83 & 1, v126);
    v88 = [v4 taskResponses];
    if (!v88)
    {
      type metadata accessor for HomeAutomationEntityResponse.Builder(0);
      v95 = swift_allocObject();
      v96 = OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_entityName;
      v97 = v23;
      v98 = v134;
      v99 = v131;
      v131(v95 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_entityName, 1, 1, v134);
      v100 = OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_entityIdentifier;
      v99(v95 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_entityIdentifier, 1, 1, v98);
      *(v95 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_room) = 0;
      v101 = MEMORY[0x277D84F90];
      *(v95 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_zones) = MEMORY[0x277D84F90];
      *(v95 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_home) = 0;
      v99(v95 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_type, 1, 1, v98);
      *(v95 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_types) = v101;
      *(v95 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_states) = v101;
      swift_beginAccess();
      v102 = v97;
      sub_252956BAC(v97, v95 + v96);
      swift_endAccess();
      swift_beginAccess();
      v103 = v128;
      sub_252956BAC(v128, v95 + v100);
      swift_endAccess();
      sub_252AD6B04(v19);

      sub_252AD6B10(v40);

      v104 = v127;
      v105 = v19;
      v106 = sub_252AD6E30(v127);

      v107 = OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_type;
      swift_beginAccess();
      v108 = v126;
      sub_252956BAC(v126, v106 + v107);
      swift_endAccess();
      *(v106 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_types) = v132;

      type metadata accessor for HomeAutomationEntityResponse(0);
      swift_allocObject();
      v109 = sub_2529605C0(v106);

      sub_25293847C(v108, &qword_27F540298, &unk_252E3C270);
      sub_25293847C(v104, &qword_27F540298, &unk_252E3C270);
      sub_25293847C(v105, &qword_27F540298, &unk_252E3C270);
      v110 = v103;
      goto LABEL_104;
    }

    v89 = v88;

    type metadata accessor for HomeUserTaskResponse();
    v37 = sub_252E37264();

    v135 = MEMORY[0x277D84F90];
    if (v37 >> 62)
    {
      v38 = sub_252E378C4();
    }

    else
    {
      v38 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v1 = MEMORY[0x277D84F90];
    if (!v38)
    {
      v90 = MEMORY[0x277D84F90];
      goto LABEL_103;
    }

    if (v38 >= 1)
    {
      break;
    }

    __break(1u);
LABEL_107:
    __break(1u);
LABEL_108:

    v3 = MEMORY[0x2530ADF00](v3, v38);
  }

  v90 = MEMORY[0x277D84F90];
  for (i = 0; i != v38; ++i)
  {
    if ((v37 & 0xC000000000000001) != 0)
    {
      v92 = MEMORY[0x2530ADF00](i, v37);
    }

    else
    {
      v92 = *(v37 + 8 * i + 32);
    }

    v93 = v92;
    if (sub_252DB3E60(v92, v133))
    {

      MEMORY[0x2530AD700](v94);
      if (*((v135 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v135 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_252E372A4();
      }

      sub_252E372D4();

      v1 = v135;
    }

    else
    {
    }
  }

LABEL_103:

  type metadata accessor for HomeAutomationEntityResponse.Builder(0);
  v111 = swift_allocObject();
  v112 = OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_entityName;
  v113 = v134;
  v114 = v131;
  v131(v111 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_entityName, 1, 1, v134);
  v114(v111 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_entityIdentifier, 1, 1, v113);
  *(v111 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_room) = 0;
  *(v111 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_zones) = v90;
  *(v111 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_home) = 0;
  v114(v111 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_type, 1, 1, v113);
  *(v111 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_types) = v90;
  *(v111 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_states) = v90;
  swift_beginAccess();
  v102 = v124;
  sub_252956BAC(v124, v111 + v112);
  swift_endAccess();
  v115 = v125;
  sub_252AD6B04(v125);

  sub_252AD6B10(v40);

  v116 = v127;
  v117 = sub_252AD6E30(v127);

  v118 = OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_type;
  swift_beginAccess();
  v119 = v126;
  sub_252956BAC(v126, v117 + v118);
  swift_endAccess();
  v120 = sub_252DF8E6C(v1);

  *(v117 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_states) = v120;

  type metadata accessor for HomeAutomationEntityResponse(0);
  swift_allocObject();
  v109 = sub_2529605C0(v117);

  sub_25293847C(v119, &qword_27F540298, &unk_252E3C270);
  sub_25293847C(v116, &qword_27F540298, &unk_252E3C270);
  sub_25293847C(v115, &qword_27F540298, &unk_252E3C270);
  v110 = v128;
LABEL_104:
  sub_25293847C(v110, &qword_27F540298, &unk_252E3C270);
  sub_25293847C(v102, &qword_27F540298, &unk_252E3C270);
  return v109;
}

uint64_t sub_252DA2334()
{
  v1 = [v0 taskResponses];
  if (v1)
  {
    v2 = v1;
    type metadata accessor for HomeUserTaskResponse();
    v3 = sub_252E37264();

    v10 = MEMORY[0x277D84F90];
    if (v3 >> 62)
    {
      goto LABEL_17;
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
            goto LABEL_16;
          }

          v6 = *(v3 + 8 * v5 + 32);
        }

        v7 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        MEMORY[0x2530AD700](v6);
        if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_252E372A4();
        }

        sub_252E372D4();
        ++v5;
        if (v7 == i)
        {
          v8 = v10;
          goto LABEL_19;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      ;
    }

    v8 = MEMORY[0x277D84F90];
LABEL_19:
  }

  else
  {
    sub_252DA6A00();
    return MEMORY[0x277D84F90];
  }

  return v8;
}

id HomeEntityResponse.__allocating_init(entity:taskResponses:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = objc_allocWithZone(v3);
  v7 = sub_252E36F04();
  v8 = [v6 initWithIdentifier:0 displayString:v7];

  v9 = v8;
  [v9 setEntity_];
  if (a2)
  {
    type metadata accessor for HomeUserTaskResponse();
    v10 = sub_252E37254();
  }

  else
  {
    v10 = 0;
  }

  [v9 setTaskResponses_];

  return v9;
}

char *combineResults(results:)(uint64_t a1)
{
  v154 = MEMORY[0x277D84FA0];
  v155 = MEMORY[0x277D84F90];
  v153 = MEMORY[0x277D84F90];
  if (qword_27F53F498 != -1)
  {
    goto LABEL_205;
  }

  while (1)
  {
    v141 = sub_252E36AD4();
    v133 = __swift_project_value_buffer(v141, qword_27F544C70);
    sub_252CC3D90(0xD00000000000002CLL, 0x8000000252E9B540, 0xD00000000000008CLL, 0x8000000252E6E8A0);
    v7 = 0;
    v8 = *(a1 + 16);
    v9 = a1 + 40;
    v10 = MEMORY[0x277D84F90];
LABEL_3:
    v11 = (v9 + 16 * v7);
    while (v8 != v7)
    {
      if (v7 >= v8)
      {
        __break(1u);
LABEL_159:
        __break(1u);
LABEL_160:
        __break(1u);
LABEL_161:
        __break(1u);
LABEL_162:
        __break(1u);
LABEL_163:
        __break(1u);
        goto LABEL_164;
      }

      v1 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_159;
      }

      v12 = *v11;
      v11 += 16;
      v2 = v12;
      ++v7;
      if (v12 != 255)
      {
        a1 = *(v11 - 3);
        sub_2529904E4(a1);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_2529F7BEC(0, v10[2] + 1, 1, v10);
        }

        v3 = v10[2];
        v13 = v10[3];
        v14 = v10;
        if (v3 >= v13 >> 1)
        {
          v14 = sub_2529F7BEC((v13 > 1), v3 + 1, 1, v10);
        }

        v14[2] = v3 + 1;
        v10 = v14;
        v15 = &v14[2 * v3];
        v15[4] = a1;
        *(v15 + 40) = v2 & 1;
        v7 = v1;
        goto LABEL_3;
      }
    }

    v137 = v10[2];
    if (!v137)
    {

      v139 = 0;
      goto LABEL_78;
    }

    v139 = 0;
    v16 = 0;
    v138 = v10 + 4;
    v136 = v10;
    do
    {
      v18 = v10[2];
      if (v16 >= v18)
      {
        goto LABEL_180;
      }

      v19 = &v138[2 * v16];
      v20 = *v19;
      v140 = v16;
      if ((v19[1] & 1) == 0)
      {
        if (v18 == 1)
        {
          v85 = v20;

          goto LABEL_115;
        }

        sub_2529904E4(v20);
        v135 = v20;
        v134 = v20;
        v29 = [v134 entityResponses];
        if (!v29)
        {
LABEL_75:
          v54 = OBJC_IVAR___ControlHomeIntentResponse_code;
          swift_beginAccess();
          sub_252DA8D80(&v151, *&v134[v54], &qword_27F541878, &qword_252E40B00, &type metadata for ControlHomeIntentResponseCode);
          LOBYTE(v54) = [v134 _requiresAuthentication];
          sub_252927D3C(v135);
          sub_252927D3C(v135);
          v139 |= v54;
          goto LABEL_17;
        }

        a1 = v29;
        type metadata accessor for HomeEntityResponse();
        v2 = sub_252E37264();

        sub_25297A894(v30);
        if (!(v2 >> 62))
        {
          v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v3)
          {
            goto LABEL_29;
          }

          goto LABEL_73;
        }

        v3 = sub_252E378C4();
        if (!v3)
        {
LABEL_73:
          v31 = MEMORY[0x277D84F90];
LABEL_74:

          sub_25297A8C0(v31);
          goto LABEL_75;
        }

LABEL_29:
        v4 = 0;
        v145 = v2 & 0xFFFFFFFFFFFFFF8;
        v146 = v2 & 0xC000000000000001;
        v144 = v2 + 32;
        v31 = MEMORY[0x277D84F90];
        v142 = v3;
        v143 = v2;
        while (1)
        {
          if (v146)
          {
            v32 = MEMORY[0x2530ADF00](v4, v2);
          }

          else
          {
            if (v4 >= *(v145 + 16))
            {
              goto LABEL_161;
            }

            v32 = *(v144 + 8 * v4);
          }

          v33 = v32;
          v34 = __OFADD__(v4++, 1);
          if (v34)
          {
            goto LABEL_160;
          }

          v35 = [v32 taskResponses];
          if (v35)
          {
            v36 = v35;
            type metadata accessor for HomeUserTaskResponse();
            v37 = sub_252E37264();

            if (v37 >> 62)
            {
              v1 = sub_252E378C4();
            }

            else
            {
              v1 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v147 = v33;
            v148 = v31;
            v149 = v4;
            if (v1)
            {
              v20 = 0;
              v38 = MEMORY[0x277D84F90];
              while (1)
              {
                if ((v37 & 0xC000000000000001) != 0)
                {
                  v39 = MEMORY[0x2530ADF00](v20, v37);
                }

                else
                {
                  if (v20 >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_117;
                  }

                  v39 = *(v37 + 8 * v20 + 32);
                }

                v40 = v39;
                v41 = (v20 + 1);
                if (__OFADD__(v20, 1))
                {
                  break;
                }

                v42 = [v39 taskOutcome];

                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v38 = sub_2529F7BD8(0, *(v38 + 2) + 1, 1, v38);
                }

                v44 = *(v38 + 2);
                v43 = *(v38 + 3);
                v5 = v44 + 1;
                if (v44 >= v43 >> 1)
                {
                  v38 = sub_2529F7BD8((v43 > 1), v44 + 1, 1, v38);
                }

                *(v38 + 2) = v5;
                *&v38[8 * v44 + 32] = v42;
                ++v20;
                if (v41 == v1)
                {
                  goto LABEL_56;
                }
              }

              __break(1u);
LABEL_117:
              __break(1u);
LABEL_118:
              v88 = v20;
              sub_2529904E4(v20);
              v89 = v20;

              v85 = parse(error:with:)(v20, 0);
              sub_252927D3C(v88);
              sub_252927D3C(v88);
              goto LABEL_115;
            }

            v38 = MEMORY[0x277D84F90];
LABEL_56:

            v3 = v142;
            v2 = v143;
            v4 = v149;
          }

          else
          {
            if (qword_27F53F4E8 != -1)
            {
              swift_once();
            }

            __swift_project_value_buffer(v141, qword_27F544D60);
            v151 = 0;
            v152 = 0xE000000000000000;
            sub_252E379F4();

            v151 = 0xD00000000000002DLL;
            v152 = 0x8000000252E6E870;
            v45 = [v33 description];
            v46 = sub_252E36F34();
            v1 = v47;

            MEMORY[0x2530AD570](v46, v1);

            sub_252CC3D90(v151, v152, 0xD00000000000008CLL, 0x8000000252E6E8A0);

            v38 = MEMORY[0x277D84F90];
          }

          a1 = *(v38 + 2);
          v48 = *(v31 + 2);
          v9 = v48 + a1;
          if (__OFADD__(v48, a1))
          {
            goto LABEL_162;
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if ((isUniquelyReferenced_nonNull_native & 1) != 0 && v9 <= *(v31 + 3) >> 1)
          {
            if (!*(v38 + 2))
            {
              goto LABEL_30;
            }
          }

          else
          {
            if (v48 <= v9)
            {
              v50 = v48 + a1;
            }

            else
            {
              v50 = v48;
            }

            v31 = sub_2529F7BD8(isUniquelyReferenced_nonNull_native, v50, 1, v31);
            if (!*(v38 + 2))
            {
LABEL_30:

              if (a1)
              {
                goto LABEL_163;
              }

              goto LABEL_31;
            }
          }

          v51 = *(v31 + 2);
          if ((*(v31 + 3) >> 1) - v51 < a1)
          {
            __break(1u);
LABEL_178:
            __break(1u);
LABEL_179:
            __break(1u);
LABEL_180:
            __break(1u);
            goto LABEL_181;
          }

          memcpy(&v31[8 * v51 + 32], v38 + 32, 8 * a1);

          if (a1)
          {
            v52 = *(v31 + 2);
            v34 = __OFADD__(v52, a1);
            v53 = v52 + a1;
            if (v34)
            {
              goto LABEL_179;
            }

            *(v31 + 2) = v53;
          }

LABEL_31:
          if (v4 == v3)
          {
            goto LABEL_74;
          }
        }
      }

      if (v18 == 1)
      {
        goto LABEL_118;
      }

      sub_2529904E4(v20);
      v21 = v20;
      v22 = v20;
      v23 = parse(error:with:)(v20, 0);
      v24 = OBJC_IVAR___ControlHomeIntentResponse_code;
      swift_beginAccess();
      sub_252DA8D80(&v151, *&v23[v24], &qword_27F541878, &qword_252E40B00, &type metadata for ControlHomeIntentResponseCode);
      v25 = [v23 entityResponses];
      if (v25)
      {
        v17 = v25;
        type metadata accessor for HomeEntityResponse();
        v9 = sub_252E37264();
      }

      else
      {
        if (qword_27F53F4E8 != -1)
        {
          swift_once();
        }

        v3 = __swift_project_value_buffer(v141, qword_27F544D60);
        v151 = 0;
        v152 = 0xE000000000000000;
        sub_252E379F4();

        v151 = 0xD00000000000002FLL;
        v152 = 0x8000000252E69700;
        v26 = v23;
        v27 = [v26 description];
        v1 = sub_252E36F34();
        v2 = v28;

        MEMORY[0x2530AD570](v1, v2);

        sub_252CC3D90(v151, v152, 0xD000000000000098, 0x8000000252E69730);

        v9 = MEMORY[0x277D84F90];
      }

      sub_25297A894(v9);
      sub_252927D3C(v22);

      sub_252927D3C(v22);
LABEL_17:
      v16 = v140 + 1;
      v10 = v136;
    }

    while (v140 + 1 != v137);

LABEL_78:
    v151 = 0;
    v152 = 0xE000000000000000;
    sub_252E379F4();

    v151 = 0xD000000000000017;
    v152 = 0x8000000252E9B570;
    v55 = v154;
    sub_252DA0D1C(v154);
    v56 = MEMORY[0x2530AD730]();
    v58 = v57;

    MEMORY[0x2530AD570](v56, v58);

    a1 = v152;
    v1 = v133;
    sub_252CC3D90(v151, v152, 0xD00000000000008CLL, 0x8000000252E6E8A0);

    if (!*(v55 + 16))
    {
      if (v155 >> 62)
      {
        goto LABEL_209;
      }

      if (*((v155 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_81;
      }

LABEL_210:

      sub_252CC4050(0xD000000000000050, 0x8000000252E9B7B0, 0xD00000000000008CLL, 0x8000000252E6E8A0, 0xD000000000000018, 0x8000000252E9B810, 738);
      v85 = [objc_allocWithZone(type metadata accessor for ControlHomeIntentResponse()) init];
      v131 = OBJC_IVAR___ControlHomeIntentResponse_code;
      swift_beginAccess();
      *&v85[v131] = 5;
      [v85 setUserActivity_];
      type metadata accessor for HomeEntityResponse();
      v132 = sub_252E37254();
      [v85 setEntityResponses_];

      goto LABEL_115;
    }

LABEL_81:
    v59 = 0;
    v2 = v55 + 56;
    v60 = 1 << *(v55 + 32);
    v61 = -1;
    if (v60 < 64)
    {
      v61 = ~(-1 << v60);
    }

    v62 = v61 & *(v55 + 56);
    v63 = (v60 + 63) >> 6;
    do
    {
      if (v62)
      {
        v64 = v59;
      }

      else
      {
        do
        {
          v64 = v59 + 1;
          if (__OFADD__(v59, 1))
          {
            goto LABEL_178;
          }

          if (v64 >= v63)
          {

            v80 = "sults. Will return ";
            v81 = 0xD000000000000039;
            goto LABEL_113;
          }

          v62 = *(v2 + 8 * v64);
          ++v59;
        }

        while (!v62);
        v59 = v64;
      }

      v65 = __clz(__rbit64(v62));
      v62 &= v62 - 1;
    }

    while (*(*(v55 + 48) + ((v64 << 9) | (8 * v65))) == 4);
    v66 = 0;
    v67 = 1 << *(v55 + 32);
    v68 = -1;
    if (v67 < 64)
    {
      v68 = ~(-1 << v67);
    }

    v69 = v68 & *(v55 + 56);
    v70 = (v67 + 63) >> 6;
LABEL_94:
    if (v69)
    {
      v71 = v66;
      goto LABEL_100;
    }

LABEL_96:
    v71 = v66 + 1;
    if (!__OFADD__(v66, 1))
    {
      break;
    }

    __break(1u);
LABEL_205:
    swift_once();
  }

  if (v71 < v70)
  {
    v69 = *(v2 + 8 * v71);
    ++v66;
    if (v69)
    {
      v66 = v71;
LABEL_100:
      v72 = __clz(__rbit64(v69));
      v69 &= v69 - 1;
      if (*(*(v55 + 48) + ((v71 << 9) | (8 * v72))) == 101)
      {
        v73 = 0;
        v74 = 1 << *(v55 + 32);
        v75 = -1;
        if (v74 < 64)
        {
          v75 = ~(-1 << v74);
        }

        v76 = v75 & *(v55 + 56);
        v77 = (v74 + 63) >> 6;
        do
        {
          if (v76)
          {
            v78 = v73;
          }

          else
          {
            do
            {
              v78 = v73 + 1;
              if (__OFADD__(v73, 1))
              {
                __break(1u);
                goto LABEL_212;
              }

              if (v78 >= v77)
              {
                goto LABEL_120;
              }

              v76 = *(v2 + 8 * v78);
              ++v73;
            }

            while (!v76);
            v73 = v78;
          }

          v79 = __clz(__rbit64(v76));
          v76 &= v76 - 1;
        }

        while (*(*(v55 + 48) + ((v78 << 9) | (8 * v79))) != 4);

        v80 = "Intent response codes: ";
        v81 = 0xD00000000000003DLL;
LABEL_113:
        v82 = 4;
        goto LABEL_114;
      }

      goto LABEL_94;
    }

    goto LABEL_96;
  }

LABEL_120:
  v90 = 1 << *(v55 + 32);
  if (v90 < 64)
  {
    v91 = ~(-1 << v90);
  }

  else
  {
    v91 = -1;
  }

  v92 = v91 & *(v55 + 56);
  v4 = (v90 + 63) >> 6;

  v5 = 0;
LABEL_124:
  while (2)
  {
    while (2)
    {
      if (v92)
      {
        goto LABEL_130;
      }

      v1 = v133;
      while (2)
      {
        v93 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          __break(1u);
LABEL_208:
          __break(1u);
LABEL_209:
          if (!sub_252E378C4())
          {
            goto LABEL_210;
          }

          goto LABEL_81;
        }

        if (v93 >= v4)
        {

LABEL_139:

          if (*(v55 + 16) == 1)
          {
            v151 = 0;
            v152 = 0xE000000000000000;
            sub_252E379F4();
            MEMORY[0x2530AD570](0xD000000000000033, 0x8000000252E9B730);
            sub_252DA08B4(v55);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545DE0, &qword_252E600C0);
            v99 = sub_252E36F94();
            MEMORY[0x2530AD570](v99);

            sub_252CC3D90(v151, v152, 0xD00000000000008CLL, 0x8000000252E6E8A0);

            v100 = sub_252DA08B4(v55);
            if (v101)
            {
              v82 = 5;
            }

            else
            {
              v82 = v100;
            }

            v80 = "Will return generic failure";
            v81 = 0xD00000000000003FLL;
          }

          else
          {
            sub_252CC3D90(0xD00000000000004BLL, 0x8000000252E9B6A0, 0xD00000000000008CLL, 0x8000000252E6E8A0);
            v80 = "Will return generic failure";
            v81 = 0xD00000000000003FLL;
            v82 = 5;
          }

          goto LABEL_114;
        }

        v92 = *(v2 + 8 * v93);
        ++v5;
        if (!v92)
        {
          continue;
        }

        break;
      }

      v5 = v93;
LABEL_130:
      v94 = *(*(v55 + 48) + ((v5 << 9) | (8 * __clz(__rbit64(v92)))));
      if (qword_27F53F3F8 != -1)
      {
        swift_once();
      }

      v92 &= v92 - 1;
      a1 = qword_27F575A30;
      if (!*(qword_27F575A30 + 16))
      {
        continue;
      }

      break;
    }

    sub_252E37EC4();
    v3 = 0x27F53F000uLL;
    MEMORY[0x2530AE390](v94);
    v95 = sub_252E37F14();
    v96 = -1 << *(a1 + 32);
    v97 = v95 & ~v96;
    if (((*(a1 + 56 + ((v97 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v97) & 1) == 0)
    {
      continue;
    }

    break;
  }

  v98 = ~v96;
  while (*(*(a1 + 48) + 8 * v97) != v94)
  {
    v97 = (v97 + 1) & v98;
    if (((*(a1 + 56 + ((v97 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v97) & 1) == 0)
    {
      goto LABEL_124;
    }
  }

  v102 = 0;
  v103 = 1 << *(v55 + 32);
  v104 = -1;
  if (v103 < 64)
  {
    v104 = ~(-1 << v103);
  }

  v105 = v104 & *(v55 + 56);
  v106 = (v103 + 63) >> 6;
  v1 = v133;
  do
  {
    if (v105)
    {
      v107 = v102;
    }

    else
    {
      do
      {
        v107 = v102 + 1;
        if (__OFADD__(v102, 1))
        {
          goto LABEL_208;
        }

        if (v107 >= v106)
        {
          goto LABEL_139;
        }

        v105 = *(v2 + 8 * v107);
        ++v102;
      }

      while (!v105);
      v102 = v107;
    }

    v108 = __clz(__rbit64(v105));
    v105 &= v105 - 1;
  }

  while (*(*(v55 + 48) + ((v107 << 9) | (8 * v108))) != 4);
  sub_252CC3D90(0xD000000000000032, 0x8000000252E9B5D0, 0xD00000000000008CLL, 0x8000000252E6E8A0);
  v2 = v153;
  v3 = *(v153 + 16);
  v148 = v153;
  if (v3)
  {
    if (qword_27F53F730 != -1)
    {
      goto LABEL_214;
    }

    while (1)
    {
      v4 = 0;
      v109 = v2 + 32;
      v5 = qword_27F575C40;
      a1 = qword_27F575C40 + 56;
      v1 = MEMORY[0x277D84F90];
      v147 = v2 + 32;
      while (v4 < *(v2 + 16))
      {
        if (*(v5 + 16))
        {
          v9 = *(v109 + 8 * v4);
          sub_252E37EC4();
          MEMORY[0x2530AE390](v9);
          v112 = sub_252E37F14();
          v113 = -1 << *(v5 + 32);
          v114 = v112 & ~v113;
          if ((*(a1 + ((v114 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v114))
          {
            v115 = ~v113;
            while (*(*(v5 + 48) + 8 * v114) != v9)
            {
              v114 = (v114 + 1) & v115;
              if (((*(a1 + ((v114 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v114) & 1) == 0)
              {
                goto LABEL_167;
              }
            }

            v150 = v1;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_2529AA3E0(0, *(v1 + 16) + 1, 1);
            }

LABEL_164:
            v111 = *(v1 + 16);
            v110 = *(v1 + 24);
            if (v111 >= v110 >> 1)
            {
              sub_2529AA3E0((v110 > 1), v111 + 1, 1);
              v1 = v150;
            }

            *(v1 + 16) = v111 + 1;
            *(v1 + 8 * v111 + 32) = v9;
            v109 = v147;
            v2 = v148;
          }
        }

LABEL_167:
        if (++v4 == v3)
        {
          goto LABEL_182;
        }
      }

LABEL_212:
      __break(1u);
LABEL_213:
      __break(1u);
LABEL_214:
      swift_once();
    }
  }

LABEL_181:
  v1 = MEMORY[0x277D84F90];
LABEL_182:
  v116 = sub_252C75AC8(v1);

  v151 = 0;
  v152 = 0xE000000000000000;
  sub_252E379F4();

  v151 = 0xD00000000000001DLL;
  v152 = 0x8000000252E9B610;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545DD8, &qword_252E600B8);
  v117 = sub_252E36FB4();
  MEMORY[0x2530AD570](v117);

  sub_252CC3D90(v151, v152, 0xD00000000000008CLL, 0x8000000252E6E8A0);

  if (*(v116 + 16))
  {
    v118 = 1 << *(v116 + 32);
    if (v118 < 64)
    {
      v119 = ~(-1 << v118);
    }

    else
    {
      v119 = -1;
    }

    v120 = v119 & *(v116 + 56);
    v121 = (v118 + 63) >> 6;

    v122 = 0;
    v123 = 0x27F53F000uLL;
    if (!v120)
    {
LABEL_188:
      while (1)
      {
        v124 = v122 + 1;
        if (__OFADD__(v122, 1))
        {
          goto LABEL_213;
        }

        if (v124 >= v121)
        {

          v80 = "Response code is failure.";
          v81 = 0xD00000000000004CLL;
          v82 = 4;
          goto LABEL_114;
        }

        v120 = *(v116 + 56 + 8 * v124);
        ++v122;
        if (v120)
        {
          goto LABEL_191;
        }
      }
    }

    while (1)
    {
      v124 = v122;
LABEL_191:
      v125 = *(*(v116 + 48) + ((v124 << 9) | (8 * __clz(__rbit64(v120)))));
      v3 = v123;
      if (*(v123 + 1888) != -1)
      {
        swift_once();
      }

      v126 = qword_27F575C80;
      if (!*(qword_27F575C80 + 16))
      {
        break;
      }

      sub_252E37EC4();
      MEMORY[0x2530AE390](v125);
      v127 = sub_252E37F14();
      v128 = -1 << *(v126 + 32);
      v129 = v127 & ~v128;
      if (((*(v126 + 56 + ((v129 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v129) & 1) == 0)
      {
        break;
      }

      v120 &= v120 - 1;
      v130 = ~v128;
      while (*(*(v126 + 48) + 8 * v129) != v125)
      {
        v129 = (v129 + 1) & v130;
        if (((*(v126 + 56 + ((v129 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v129) & 1) == 0)
        {
          goto LABEL_201;
        }
      }

      v122 = v124;
      v2 = v148;
      v123 = v3;
      if (!v120)
      {
        goto LABEL_188;
      }
    }

LABEL_201:
  }

  else
  {
  }

  v80 = "Inspecting failure outcomes: ";
  v81 = 0xD000000000000019;
  v82 = 5;
LABEL_114:
  sub_252CC3D90(v81, v80 | 0x8000000000000000, 0xD00000000000008CLL, 0x8000000252E6E8A0);
  v83 = [objc_allocWithZone(type metadata accessor for ControlHomeIntentResponse()) init];
  v84 = OBJC_IVAR___ControlHomeIntentResponse_code;
  swift_beginAccess();
  *&v83[v84] = v82;
  v85 = v83;
  [v85 setUserActivity_];
  combineEntityResponses(entityResponses:)(v155);
  type metadata accessor for HomeEntityResponse();
  v86 = sub_252E37254();

  [v85 setEntityResponses_];

  [v85 _setRequiresAuthentication_];
LABEL_115:

  return v85;
}