BOOL sub_252C4B5D4()
{
  v1 = [v0 userTask];
  if (v1)
  {
    v2 = v1;
    if ([v1 taskType] == 1 || objc_msgSend(v2, sel_taskType) == 2 || objc_msgSend(v2, sel_taskType) == 3)
    {

      return 1;
    }

    else
    {
      v4 = [v2 taskType];

      return v4 == 6;
    }
  }

  else
  {
    sub_252C515AC();
    return 0;
  }
}

id sub_252C4B68C()
{
  result = [v0 userTask];
  if (result)
  {
    v2 = result;
    v3 = [result value];

    if (v3)
    {
      v4 = [v3 cleaningJob];

      if (v4)
      {
        if ([v4 runState] == 17)
        {
          v5 = [v0 userTask];
          if (v5)
          {
            v6 = v5;
            v7 = [v5 attribute];

            return (v7 == 67);
          }

          sub_252C515AC();
        }
      }
    }

    return 0;
  }

  return result;
}

void sub_252C4B778(uint64_t a1)
{
  v2 = sub_252C52A10(a1);
  if (v2)
  {
    if (qword_27F53F498 != -1)
    {
      swift_once();
    }

    v3 = sub_252E36AD4();
    __swift_project_value_buffer(v3, qword_27F544C70);
    oslog = sub_252E36AC4();
    v4 = sub_252E374C4();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_252917000, oslog, v4, "Skipping temperature confirmation since Siri Remembers remembered the intent.", v5, 2u);
      MEMORY[0x2530AED00](v5, -1, -1);
    }

    return;
  }

  v6 = *(sub_252B680FC(v2) + 77);

  if (v6 != 1)
  {
    return;
  }

  v8 = *(sub_252B680FC(v7) + 76);

  if (v8 != 1)
  {
    return;
  }

  if (qword_27F53F498 != -1)
  {
    swift_once();
  }

  v36 = sub_252E36AD4();
  __swift_project_value_buffer(v36, qword_27F544C70);
  sub_252E379F4();

  v9 = [v1 description];
  v10 = sub_252E36F34();
  v12 = v11;

  MEMORY[0x2530AD570](v10, v12);

  sub_252CC3D90(0xD000000000000012, 0x8000000252E8CA00, 0xD000000000000090, 0x8000000252E8C8B0);

  v14 = sub_252B680FC(v13);
  swift_beginAccess();
  v15 = *(v14 + 80);

  if (v15 >> 62)
  {
    v16 = sub_252E378C4();
    if (v16)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v16)
    {
LABEL_15:
      if (v16 < 1)
      {
        __break(1u);
        return;
      }

      v17 = 0;
      v18 = MEMORY[0x277D84F90];
      osloga = MEMORY[0x277D84F90];
      v19 = MEMORY[0x277D84F90];
      while (1)
      {
        if ((v15 & 0xC000000000000001) != 0)
        {
          v20 = MEMORY[0x2530ADF00](v17, v15);
          if ((*(v20 + 32) & 1) == 0)
          {
            goto LABEL_23;
          }
        }

        else
        {
          v20 = *(v15 + 8 * v17 + 32);

          if ((*(v20 + 32) & 1) == 0)
          {
LABEL_23:
            v21 = *(v20 + 24);
            if (*(v20 + 81) == 1)
            {

LABEL_26:
              if (*(v20 + 64) & 1) != 0 || (*(v20 + 80))
              {
LABEL_28:
                if ((*(v20 + 48) & 1) == 0)
                {
                  v23 = *(v20 + 40);
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v18 = sub_2529F7D44(0, *(v18 + 2) + 1, 1, v18);
                  }

                  v25 = *(v18 + 2);
                  v24 = *(v18 + 3);
                  if (v25 >= v24 >> 1)
                  {
                    v18 = sub_2529F7D44((v24 > 1), v25 + 1, 1, v18);
                  }

                  *(v18 + 2) = v25 + 1;
                  *&v18[8 * v25 + 32] = v23;
                }
              }

              else
              {
                v26 = *(v20 + 56);
                v27 = *(v20 + 72);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  osloga = sub_2529F7E5C(0, *(osloga + 2) + 1, 1, osloga);
                }

                v29 = *(osloga + 2);
                v28 = *(osloga + 3);
                if (v29 >= v28 >> 1)
                {
                  osloga = sub_2529F7E5C((v28 > 1), v29 + 1, 1, osloga);
                }

                *(osloga + 2) = v29 + 1;
                v30 = &osloga[16 * v29];
                *(v30 + 4) = v26;
                *(v30 + 5) = v27;
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v19 = sub_2529F7E48(0, *(v19 + 2) + 1, 1, v19);
              }

              v32 = *(v19 + 2);
              v31 = *(v19 + 3);
              if (v32 >= v31 >> 1)
              {
                v19 = sub_2529F7E48((v31 > 1), v32 + 1, 1, v19);
              }

              *(v19 + 2) = v32 + 1;
              *&v19[8 * v32 + 32] = v21;
              goto LABEL_18;
            }

            v22 = sub_252E37DB4();

            if (v22)
            {
              goto LABEL_26;
            }

            goto LABEL_28;
          }
        }

LABEL_18:
        if (v16 == ++v17)
        {
          goto LABEL_46;
        }
      }
    }
  }

  v18 = MEMORY[0x277D84F90];
  osloga = MEMORY[0x277D84F90];
  v19 = MEMORY[0x277D84F90];
LABEL_46:

  if (qword_27F53F490 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v36, qword_27F544C58);
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000022, 0x8000000252E8CA20);
  v33 = MEMORY[0x2530AD730](v18, MEMORY[0x277D839F8]);
  MEMORY[0x2530AD570](v33);

  MEMORY[0x2530AD570](0xD000000000000029, 0x8000000252E8CA50);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5445F0, &qword_252E54DE0);
  v35 = MEMORY[0x2530AD730](osloga, v34);
  MEMORY[0x2530AD570](v35);

  sub_252CC3D90(0, 0xE000000000000000, 0xD000000000000090, 0x8000000252E8C8B0);

  sub_252C52C48(v18, osloga, v19);
}

id sub_252C4BDE8()
{
  result = [v0 userTask];
  if (result)
  {
    v2 = result;
    v3 = [result attribute];

    result = [v0 userTask];
    if (result)
    {
      v4 = result;
      v5 = [result value];

      if (v5)
      {
        if (v3 == 27)
        {
          v6 = [v5 BOOLValue];

          return (v6 ^ 1);
        }
      }

      return 0;
    }
  }

  return result;
}

unint64_t sub_252C4BEB8()
{
  v1 = v0;
  v108 = sub_252E32E84();
  v2 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v107 = &v93 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [v0 filters];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  type metadata accessor for HomeFilter();
  v6 = sub_252E37264();

  if ((sub_252C4D670(5, &selRef_entityType) & 1) == 0)
  {
    v7 = [v1 userTask];
    if (!v7 || (v8 = v7, v9 = [v7 attribute], v8, v9 != 1))
    {

      v17 = type metadata accessor for HomeStore(0);
      v18 = static HomeStore.shared.getter(v17);
      v19 = v18[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_loadSucceeded];
      if (v19 != 2 && (v19 & 1) == 0 || (v20 = [v1 filters]) == 0)
      {

        return 0;
      }

      v21 = v20;
      v22 = sub_252E37264();

      v23 = [v1 userTask];
      v24 = HomeStore.accessories(matching:supporting:)(v22, v23);
      v26 = v25;

      if (v26)
      {
        sub_252929F10(v24, 1);
        return 0;
      }

LABEL_88:
      v69 = (v24 & 0xFFFFFFFFFFFFFF8);
      if (v24 >> 62)
      {
LABEL_137:
        v70 = sub_252E378C4();
        if (v70)
        {
LABEL_90:
          v71 = 0;
          v72 = v24 & 0xC000000000000001;
          v102 = v70;
          v103 = v69;
          v101 = v24 & 0xC000000000000001;
          v100 = v24 + 32;
          v104 = v24;
          while (1)
          {
            if (v72)
            {
              v73 = MEMORY[0x2530ADF00](v71, v24);
              v36 = __OFADD__(v71++, 1);
              if (v36)
              {
                goto LABEL_135;
              }
            }

            else
            {
              if (v71 >= v69[2])
              {
                goto LABEL_136;
              }

              v36 = __OFADD__(v71++, 1);
              if (v36)
              {
LABEL_135:
                __break(1u);
LABEL_136:
                __break(1u);
                goto LABEL_137;
              }
            }

            v105 = v73;
            v74 = *(v73 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_services);
            v24 = v74 >> 62 ? sub_252E378C4() : *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10);

            if (v24)
            {
              break;
            }

LABEL_119:

            v69 = v103;
            v72 = v101;
            v24 = v104;
            if (v71 == v102)
            {
              goto LABEL_138;
            }
          }

          v75 = 0;
          v107 = (v74 & 0xFFFFFFFFFFFFFF8);
          v108 = v74 & 0xC000000000000001;
          v106 = (v74 + 32);
          while (1)
          {
            if (v108)
            {
              v76 = MEMORY[0x2530ADF00](v75, v74);
              v36 = __OFADD__(v75++, 1);
              if (v36)
              {
                goto LABEL_133;
              }
            }

            else
            {
              if (v75 >= *(v107 + 2))
              {
                goto LABEL_134;
              }

              v76 = v106[v75];

              v36 = __OFADD__(v75++, 1);
              if (v36)
              {
LABEL_133:
                __break(1u);
LABEL_134:
                __break(1u);
                goto LABEL_135;
              }
            }

            if (qword_27F53F410 != -1)
            {
              swift_once();
            }

            v77 = qword_27F575A48;
            v78 = [*(v76 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) serviceType];
            v79 = sub_252E36F34();
            v81 = v80;

            if (qword_27F53F8B8 != -1)
            {
              swift_once();
            }

            v69 = off_27F546230;
            if (*(off_27F546230 + 2) && (v82 = sub_252A44A10(v79, v81), (v83 & 1) != 0))
            {
              v84 = *(v69[7] + 8 * v82);
            }

            else
            {
              v84 = 0;
            }

            if (*(v77 + 16))
            {
              sub_252E37EC4();
              v69 = &v113;
              MEMORY[0x2530AE390](v84);
              v85 = sub_252E37F14();
              v86 = -1 << *(v77 + 32);
              v87 = v85 & ~v86;
              if ((*(v77 + 56 + ((v87 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v87))
              {
                break;
              }
            }

LABEL_98:

            if (v75 == v24)
            {
              goto LABEL_119;
            }
          }

          v88 = ~v86;
          while (*(*(v77 + 48) + 8 * v87) != v84)
          {
            v87 = (v87 + 1) & v88;
            if (((*(v77 + 56 + ((v87 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v87) & 1) == 0)
            {
              goto LABEL_98;
            }
          }

LABEL_127:

          sub_252929F10(v104, 0);

          v89 = 1;
          goto LABEL_139;
        }
      }

      else
      {
        v70 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v70)
        {
          goto LABEL_90;
        }
      }

LABEL_138:
      sub_252929F10(v24, 0);
      v89 = 0;
LABEL_139:
      v12 = v89 & (sub_252C4E740() ^ 1);
      if (qword_27F53F498 != -1)
      {
        swift_once();
      }

      v90 = sub_252E36AD4();
      __swift_project_value_buffer(v90, qword_27F544C70);
      v113 = 0;
      v114 = 0xE000000000000000;
      sub_252E379F4();

      v113 = 0xD000000000000020;
      v114 = 0x8000000252E8CAD0;
      if (v12)
      {
        v91 = 1702195828;
      }

      else
      {
        v91 = 0x65736C6166;
      }

      if (v12)
      {
        v92 = 0xE400000000000000;
      }

      else
      {
        v92 = 0xE500000000000000;
      }

      MEMORY[0x2530AD570](v91, v92);

      sub_252CC3D90(v113, v114, 0xD000000000000090, 0x8000000252E8C8B0);
      goto LABEL_83;
    }
  }

  v10 = type metadata accessor for HomeStore(0);
  v11 = static HomeStore.shared.getter(v10);
  v12 = sub_2529DA828();

  v113 = MEMORY[0x277D84F90];
  if (v12 >> 62)
  {
    goto LABEL_131;
  }

  for (i = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_252E378C4())
  {
    v14 = MEMORY[0x277D84F90];
    if (i)
    {
      v106 = v2;
      v15 = 0;
      while (1)
      {
        if ((v12 & 0xC000000000000001) != 0)
        {
          MEMORY[0x2530ADF00](v15, v12);
          v2 = v15 + 1;
          if (__OFADD__(v15, 1))
          {
LABEL_18:
            __break(1u);
LABEL_19:
            v16 = v113;
            v14 = MEMORY[0x277D84F90];
            v2 = v106;
            goto LABEL_26;
          }
        }

        else
        {
          if (v15 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_129;
          }

          v2 = v15 + 1;
          if (__OFADD__(v15, 1))
          {
            goto LABEL_18;
          }
        }

        if (sub_252967B6C(v6))
        {
          sub_252E37A94();
          sub_252E37AC4();
          sub_252E37AD4();
          sub_252E37AA4();
        }

        else
        {
        }

        ++v15;
        if (v2 == i)
        {
          goto LABEL_19;
        }
      }
    }

    v16 = MEMORY[0x277D84F90];
LABEL_26:

    if (qword_27F53F498 != -1)
    {
      swift_once();
    }

    v27 = sub_252E36AD4();
    v28 = __swift_project_value_buffer(v27, qword_27F544C70);
    v113 = 0;
    v114 = 0xE000000000000000;
    sub_252E379F4();

    v113 = 0xD000000000000030;
    v114 = 0x8000000252E8CB00;
    v29 = type metadata accessor for Scene(0);
    v30 = MEMORY[0x2530AD730](v16, v29);
    MEMORY[0x2530AD570](v30);

    v99 = "Missing userTask from intent: ";
    v100 = v28;
    sub_252CC3D90(v113, v114, 0xD000000000000090, 0x8000000252E8C8B0);

    if (v16 < 0 || (v16 & 0x4000000000000000) != 0)
    {
      v98 = sub_252E378C4();
    }

    else
    {
      v98 = *(v16 + 16);
    }

    v6 = 0;
    v97 = v16 & 0xC000000000000001;
    v96 = v16 + 32;
    v106 = (v2 + 8);
    v95 = v16;
LABEL_35:
    v12 = v6 != v98;
    if (v6 == v98)
    {
      v66 = 0xE500000000000000;
      v67 = 0x65736C6166;
      goto LABEL_82;
    }

    if (!v97)
    {
      break;
    }

    v35 = MEMORY[0x2530ADF00](v6, v16);
    v36 = __OFADD__(v6++, 1);
    if (!v36)
    {
      goto LABEL_39;
    }

LABEL_129:
    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    ;
  }

  if (v6 >= *(v16 + 16))
  {
    goto LABEL_130;
  }

  v36 = __OFADD__(v6++, 1);
  if (v36)
  {
    goto LABEL_129;
  }

LABEL_39:
  v102 = v6;
  v101 = v35;
  v37 = [*(v35 + OBJC_IVAR____TtC22HomeAutomationInternal5Scene_delegate) actions];
  v38 = sub_25293F638(0, &qword_27F5412F0, 0x277CD17F8);
  sub_2529E6100();
  v39 = sub_252E373A4();

  v111 = v14;
  v94 = v12;
  v104 = v39;
  v105 = v38;
  if ((v39 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_252E37874();
    sub_252E373E4();
    v39 = v113;
    v40 = v114;
    v41 = v115;
    v42 = v116;
    v43 = v117;
  }

  else
  {
    v44 = -1 << *(v39 + 32);
    v40 = v39 + 56;
    v41 = ~v44;
    v45 = -v44;
    if (v45 < 64)
    {
      v46 = ~(-1 << v45);
    }

    else
    {
      v46 = -1;
    }

    v43 = v46 & *(v39 + 56);

    v42 = 0;
  }

  v103 = v41;
  v47 = (v41 + 64) >> 6;
  v24 = MEMORY[0x277D84F90];
  if ((v39 & 0x8000000000000000) == 0)
  {
    goto LABEL_49;
  }

  while (1)
  {
    v48 = sub_252E37904();
    if (!v48)
    {
      break;
    }

    v109 = v48;
    swift_dynamicCast();
    v49 = v110;
    v50 = v42;
    v51 = v43;
    if (!v110)
    {
      break;
    }

    while (1)
    {
      type metadata accessor for Action();
      v54 = swift_allocObject();
      *(v54 + 16) = v49;
      v55 = v49;
      v56 = [v55 uniqueIdentifier];
      v57 = v107;
      sub_252E32E64();

      v58 = sub_252E32E24();
      v60 = v59;
      (*v106)(v57, v108);
      *(v54 + 24) = v58;
      *(v54 + 32) = v60;
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v61 = 1;
      }

      else
      {
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          v61 = 2;
        }

        else
        {
          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            v61 = 3;
          }

          else
          {
            objc_opt_self();
            v61 = 4 * (swift_dynamicCastObjCClass() != 0);
          }
        }
      }

      *(v54 + 40) = v61;
      MEMORY[0x2530AD700]();
      if (*((v111 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v111 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_252E372A4();
      }

      sub_252E372D4();
      v24 = v111;
      v42 = v50;
      v43 = v51;
      if (v39 < 0)
      {
        break;
      }

LABEL_49:
      v52 = v42;
      v53 = v43;
      v50 = v42;
      if (!v43)
      {
        while (1)
        {
          v50 = v52 + 1;
          if (__OFADD__(v52, 1))
          {
            break;
          }

          if (v50 >= v47)
          {
            goto LABEL_65;
          }

          v53 = *(v40 + 8 * v50);
          ++v52;
          if (v53)
          {
            goto LABEL_53;
          }
        }

        __break(1u);
        goto LABEL_88;
      }

LABEL_53:
      v51 = (v53 - 1) & v53;
      v49 = *(*(v39 + 48) + ((v50 << 9) | (8 * __clz(__rbit64(v53)))));
      if (!v49)
      {
        goto LABEL_65;
      }
    }
  }

LABEL_65:
  sub_25291AE30(v39);

  if (v24 >> 62)
  {
    v62 = sub_252E378C4();
  }

  else
  {
    v62 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v63 = 0;
  do
  {
    v64 = v63;
    if (v62 == v63)
    {
      v2 = 0xE500000000000000;
      v31 = 0x65736C6166;
      goto LABEL_33;
    }

    if ((v24 & 0xC000000000000001) != 0)
    {
      MEMORY[0x2530ADF00](v63, v24);
      if (__OFADD__(v64, 1))
      {
        goto LABEL_125;
      }
    }

    else
    {
      if (v63 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_126;
      }

      if (__OFADD__(v64, 1))
      {
LABEL_125:
        __break(1u);
LABEL_126:
        __break(1u);
        goto LABEL_127;
      }
    }

    v65 = sub_252B3DE94();

    v63 = v64 + 1;
  }

  while ((v65 & 1) == 0);
  v2 = 0xE400000000000000;
  v31 = 1702195828;
LABEL_33:

  v111 = 0;
  v112 = 0xE000000000000000;
  sub_252E379F4();
  v33 = *(v101 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
  v32 = *(v101 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

  v111 = v33;
  v112 = v32;
  MEMORY[0x2530AD570](0x61736E7520736920, 0xEC000000203A6566);
  MEMORY[0x2530AD570](v31, v2);

  sub_252CC3D90(v111, v112, 0xD000000000000090, v99 | 0x8000000000000000);

  v34 = v62 == v64;
  v14 = MEMORY[0x277D84F90];
  v16 = v95;
  v6 = v102;
  if (v34)
  {
    goto LABEL_35;
  }

  v66 = 0xE400000000000000;
  v67 = 1702195828;
  v12 = v94;
LABEL_82:

  v111 = 0;
  v112 = 0xE000000000000000;
  sub_252E379F4();

  v111 = 0xD00000000000001ELL;
  v112 = 0x8000000252E8CB40;
  MEMORY[0x2530AD570](v67, v66);

  sub_252CC3D90(v111, v112, 0xD000000000000090, v99 | 0x8000000000000000);
LABEL_83:

  return v12;
}

BOOL sub_252C4CD44()
{
  v1 = v0;
  v2 = [v0 userTask];
  if (!v2)
  {
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v15 = sub_252E36AD4();
    __swift_project_value_buffer(v15, qword_27F544D60);
    sub_252E379F4();

    v16 = v0;
    v17 = [v16 description];
    v18 = sub_252E36F34();
    v20 = v19;

    MEMORY[0x2530AD570](v18, v20);

    v21 = 0xD00000000000001ELL;
    v22 = 0x8000000252E8C890;
    v23 = 295;
LABEL_21:
    sub_252CC4050(v21, v22, 0xD000000000000090, 0x8000000252E8C8B0, 0xD000000000000012, 0x8000000252E8C950, v23);

    return 0;
  }

  v3 = [v0 filters];
  if (!v3)
  {
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

    v21 = 0xD00000000000001DLL;
    v22 = 0x8000000252E8C970;
    v23 = 300;
    goto LABEL_21;
  }

  v4 = v3;
  type metadata accessor for HomeFilter();
  v5 = sub_252E37264();

  v46 = v1;
  if (v5 >> 62)
  {
LABEL_55:
    v47 = v5 & 0xFFFFFFFFFFFFFF8;
    v6 = sub_252E378C4();
  }

  else
  {
    v47 = v5 & 0xFFFFFFFFFFFFFF8;
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  v8 = v5 & 0xC000000000000001;
  while (1)
  {
    if (v6 == v7)
    {

      if (qword_27F53F4E8 != -1)
      {
        swift_once();
      }

      v32 = sub_252E36AD4();
      __swift_project_value_buffer(v32, qword_27F544D60);
      sub_252CC4050(0xD00000000000002DLL, 0x8000000252E8C9B0, 0xD000000000000090, 0x8000000252E8C8B0, 0xD000000000000012, 0x8000000252E8C950, 305);
      return 0;
    }

    if (v8)
    {
      v9 = MEMORY[0x2530ADF00](v7, v5);
    }

    else
    {
      if (v7 >= *(v47 + 16))
      {
        goto LABEL_52;
      }

      v9 = *(v5 + 8 * v7 + 32);
    }

    v10 = v9;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    v11 = [v9 isExcludeFilter];
    sub_25293F638(0, &qword_27F5404D8, 0x277CCABB0);
    v12 = sub_252E37674();
    v13 = v12;
    if (!v11)
    {
      break;
    }

    v14 = sub_252E37694();

    ++v7;
    if ((v14 & 1) == 0)
    {
      goto LABEL_28;
    }
  }

LABEL_28:
  v33 = [v46 userTask];
  if (v33)
  {
    v34 = v33;
    v35 = [v33 taskType];

    if (!v35)
    {

      if (qword_27F53F4E8 != -1)
      {
        swift_once();
      }

      v45 = sub_252E36AD4();
      __swift_project_value_buffer(v45, qword_27F544D60);
      sub_252CC4050(0xD000000000000014, 0x8000000252E8C990, 0xD000000000000090, 0x8000000252E8C8B0, 0xD000000000000012, 0x8000000252E8C950, 310);
      return 0;
    }
  }

  v36 = 0;
  do
  {
    v37 = v36;
    v30 = v6 != v36;
    if (v6 == v36)
    {
      break;
    }

    if (v8)
    {
      v38 = MEMORY[0x2530ADF00](v36, v5);
    }

    else
    {
      if (v36 >= *(v47 + 16))
      {
        goto LABEL_54;
      }

      v38 = *(v5 + 8 * v36 + 32);
    }

    v39 = v38;
    if (__OFADD__(v37, 1))
    {
      goto LABEL_53;
    }

    if ([v38 deviceType] == 46)
    {

      break;
    }

    v40 = [v39 deviceType];

    v36 = v37 + 1;
  }

  while (v40 != 47);

  v41 = [v46 userTask];
  if (v41)
  {
    v42 = v41;
    v43 = [v41 attribute];

    return v6 != v37 || v43 == 67;
  }

  return v30;
}

Swift::OpaquePointer_optional __swiftcall ControlHomeIntent.roomNames()()
{
  v0 = sub_252C4D39C(&selRef_roomName);
  result.value._rawValue = v0;
  result.is_nil = v1;
  return result;
}

char *sub_252C4D39C(SEL *a1)
{
  if (sub_252C51BA0(a1))
  {
    v3 = [v1 filters];
    if (v3)
    {
      v4 = v3;
      type metadata accessor for HomeFilter();
      v5 = sub_252E37264();

      if (v5 >> 62)
      {
LABEL_24:
        v6 = sub_252E378C4();
        if (v6)
        {
LABEL_5:
          v7 = 0;
          v8 = MEMORY[0x277D84F90];
          do
          {
            v9 = v7;
            while (1)
            {
              if ((v5 & 0xC000000000000001) != 0)
              {
                v10 = MEMORY[0x2530ADF00](v9, v5);
              }

              else
              {
                if (v9 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_23;
                }

                v10 = *(v5 + 8 * v9 + 32);
              }

              v11 = v10;
              v7 = v9 + 1;
              if (__OFADD__(v9, 1))
              {
                __break(1u);
LABEL_23:
                __break(1u);
                goto LABEL_24;
              }

              v12 = [v10 *a1];
              if (v12)
              {
                break;
              }

              ++v9;
              if (v7 == v6)
              {
                goto LABEL_26;
              }
            }

            v13 = v12;
            v14 = sub_252E36F34();
            v20 = v15;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v8 = sub_2529F7A80(0, *(v8 + 2) + 1, 1, v8);
            }

            v17 = *(v8 + 2);
            v16 = *(v8 + 3);
            if (v17 >= v16 >> 1)
            {
              v8 = sub_2529F7A80((v16 > 1), v17 + 1, 1, v8);
            }

            *(v8 + 2) = v17 + 1;
            v18 = &v8[16 * v17];
            *(v18 + 4) = v14;
            *(v18 + 5) = v20;
          }

          while (v7 != v6);
          goto LABEL_26;
        }
      }

      else
      {
        v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v6)
        {
          goto LABEL_5;
        }
      }

      v8 = MEMORY[0x277D84F90];
LABEL_26:

      return v8;
    }
  }

  return 0;
}

id sub_252C4D57C()
{
  result = [v0 userTask];
  if (*&result != 0.0)
  {
    v2 = result;
    v3 = [result value];

    if (v3)
    {
      if ([v3 type] == 2)
      {
        [v3 doubleValue];
        v5 = v4;

        return v5;
      }

      if ([v3 type] == 4)
      {
        v6 = [v3 integerValue];

        *&result = v6;
        return result;
      }
    }

    *&result = 0.0;
  }

  return result;
}

uint64_t sub_252C4D670(id a1, SEL *a2)
{
  v5 = [v2 filters];
  if (v5)
  {
    v6 = v5;
    type metadata accessor for HomeFilter();
    v7 = sub_252E37264();

    if (v7 >> 62)
    {
      goto LABEL_20;
    }

    for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
    {
      v9 = 0;
      v10 = v7 & 0xC000000000000001;
      v11 = v7 & 0xFFFFFFFFFFFFFF8;
      v24 = v7 & 0xFFFFFFFFFFFFFF8;
      v25 = v7;
      while (1)
      {
        if (v10)
        {
          v12 = MEMORY[0x2530ADF00](v9, v7);
        }

        else
        {
          if (v9 >= *(v11 + 16))
          {
            goto LABEL_19;
          }

          v12 = *(v7 + 8 * v9 + 32);
        }

        v13 = v12;
        v14 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        if ([v12 *a2] == a1)
        {
          v15 = i;
          v16 = v10;
          v17 = a1;
          v18 = a2;
          v19 = [v13 isExcludeFilter];
          sub_25293F638(0, &qword_27F5404D8, 0x277CCABB0);
          v20 = sub_252E37674();
          v21 = v20;
          if (!v19)
          {

            return 1;
          }

          v22 = sub_252E37694();

          a2 = v18;
          a1 = v17;
          v10 = v16;
          i = v15;
          v11 = v24;
          v7 = v25;
          if ((v22 & 1) == 0)
          {

            return 1;
          }
        }

        else
        {
        }

        ++v9;
        if (v14 == i)
        {
          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      ;
    }

LABEL_21:
  }

  else
  {
    sub_252C516E0();
  }

  return 0;
}

id sub_252C4D868()
{
  v1 = [v0 userTask];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 value];

    if (v3)
    {
      v4 = [v3 cleaningJob];

      if (v4)
      {
        v5 = [v4 runState];

        if (v5 == 2)
        {
          goto LABEL_9;
        }
      }
    }
  }

  result = [v0 userTask];
  if (!result)
  {
    return result;
  }

  v7 = result;
  v8 = [result value];

  if (v8)
  {
    v9 = [v8 cleaningJob];

    if (v9)
    {
      v10 = [v9 runState];

      if (v10 == 17)
      {
LABEL_9:
        v11 = [v0 userTask];
        if (v11)
        {
          v12 = v11;
          v13 = [v11 attribute];

          return (v13 == 67);
        }

        sub_252C515AC();
      }
    }
  }

  return 0;
}

void sub_252C4D9D8()
{
  v1 = [v0 filters];
  if (v1)
  {
    v2 = v1;
    type metadata accessor for HomeFilter();
    v3 = sub_252E37264();

    if (v3 >> 62)
    {
      goto LABEL_58;
    }

    for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
    {
      v5 = 0;
      v6 = v3 & 0xC000000000000001;
      do
      {
        if (v6)
        {
          v7 = MEMORY[0x2530ADF00](v5, v3);
        }

        else
        {
          if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_51;
          }

          v7 = *(v3 + 8 * v5 + 32);
        }

        v8 = v7;
        v9 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          __break(1u);
LABEL_51:
          __break(1u);
          goto LABEL_52;
        }

        v10 = [v7 outerDeviceName];
        if (v10)
        {
LABEL_49:
          v23 = v10;

          return;
        }

        ++v5;
      }

      while (v9 != i);
      v11 = 0;
      while (1)
      {
        if (v6)
        {
          v12 = MEMORY[0x2530ADF00](v11, v3);
        }

        else
        {
          if (v11 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_53;
          }

          v12 = *(v3 + 8 * v11 + 32);
        }

        v8 = v12;
        v13 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        v10 = [v12 groupName];
        if (v10)
        {
          goto LABEL_49;
        }

        ++v11;
        if (v13 == i)
        {
          v14 = 0;
          while (1)
          {
            if (v6)
            {
              v15 = MEMORY[0x2530ADF00](v14, v3);
            }

            else
            {
              if (v14 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_55;
              }

              v15 = *(v3 + 8 * v14 + 32);
            }

            v8 = v15;
            v16 = v14 + 1;
            if (__OFADD__(v14, 1))
            {
              goto LABEL_54;
            }

            v10 = [v15 roomName];
            if (v10)
            {
              goto LABEL_49;
            }

            ++v14;
            if (v16 == i)
            {
              v17 = 0;
              while (1)
              {
                if (v6)
                {
                  v18 = MEMORY[0x2530ADF00](v17, v3);
                }

                else
                {
                  if (v17 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_57;
                  }

                  v18 = *(v3 + 8 * v17 + 32);
                }

                v8 = v18;
                v19 = v17 + 1;
                if (__OFADD__(v17, 1))
                {
                  goto LABEL_56;
                }

                v10 = [v18 zoneName];
                if (v10)
                {
                  goto LABEL_49;
                }

                ++v17;
                if (v19 == i)
                {
                  v20 = 0;
                  while (1)
                  {
                    if (v6)
                    {
                      v21 = MEMORY[0x2530ADF00](v20, v3);
                    }

                    else
                    {
                      if (v20 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
                      {
                        goto LABEL_62;
                      }

                      v21 = *(v3 + 8 * v20 + 32);
                    }

                    v8 = v21;
                    v22 = v20 + 1;
                    if (__OFADD__(v20, 1))
                    {
                      break;
                    }

                    v10 = [v21 homeName];
                    if (v10)
                    {
                      goto LABEL_49;
                    }

                    ++v20;
                    if (v22 == i)
                    {
                      goto LABEL_59;
                    }
                  }

                  __break(1u);
LABEL_62:
                  __break(1u);
                  return;
                }
              }
            }
          }
        }
      }

LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      ;
    }

LABEL_59:
  }
}

uint64_t sub_252C4DD64()
{
  v1 = [v0 filters];
  if (v1)
  {
    type metadata accessor for HomeFilter();
    v2 = sub_252E37264();

    if (v2 >> 62)
    {
      goto LABEL_17;
    }

    for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
    {
      v4 = 0;
      while (1)
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          v5 = MEMORY[0x2530ADF00](v4, v2);
        }

        else
        {
          if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_16;
          }

          v5 = *(v2 + 8 * v4 + 32);
        }

        v6 = v5;
        v7 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          break;
        }

        v8 = [v5 hasAllQuantifier];
        sub_25293F638(0, &qword_27F5404D8, 0x277CCABB0);
        v9 = sub_252E37674();
        v10 = v9;
        if (v8)
        {
          v11 = sub_252E37694();

          if (v11)
          {
            v1 = 1;
            goto LABEL_19;
          }
        }

        else
        {
        }

        ++v4;
        if (v7 == i)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      ;
    }

LABEL_18:
    v1 = 0;
LABEL_19:
  }

  return v1;
}

uint64_t sub_252C4DEF0(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for HomeStore(0);
  v5 = static HomeStore.shared.getter(v4);
  v6 = v5[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_loadSucceeded];
  if (v6 != 2 && (v6 & 1) == 0 || (v7 = [v2 filters]) == 0)
  {

    goto LABEL_34;
  }

  v8 = v7;
  type metadata accessor for HomeFilter();
  v9 = sub_252E37264();

  v10 = [v2 userTask];
  v11 = HomeStore.services(matching:supporting:)(v9, v10);
  v13 = v12;

  if (v13)
  {
    v14 = v11;
    v15 = 1;
    goto LABEL_33;
  }

  v37 = a1;
  if (v11 >> 62)
  {
LABEL_31:
    v16 = sub_252E378C4();
    if (!v16)
    {
      goto LABEL_32;
    }
  }

  else
  {
    v16 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v16)
    {
      goto LABEL_32;
    }
  }

  v17 = 0;
  while (1)
  {
    if ((v11 & 0xC000000000000001) != 0)
    {
      v18 = MEMORY[0x2530ADF00](v17, v11);
      v19 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_29;
      }
    }

    else
    {
      if (v17 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_30;
      }

      v18 = *(v11 + 8 * v17 + 32);

      v19 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }
    }

    v20 = [*(v18 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) serviceType];
    v21 = sub_252E36F34();
    v23 = v22;

    if (qword_27F53F8B8 != -1)
    {
      swift_once();
    }

    v24 = off_27F546230;
    if (*(off_27F546230 + 2))
    {
      v25 = sub_252A44A10(v21, v23);
      if (v26)
      {
        break;
      }
    }

LABEL_11:
    ++v17;
    if (v19 == v16)
    {
      goto LABEL_32;
    }
  }

  v27 = *(v24[7] + 8 * v25);

  if (v27 != 1)
  {
    goto LABEL_11;
  }

  v28 = [v2 userTask];
  if (v28)
  {
    v29 = v28;
    v30 = [v28 taskType];

    if (v30 == 1)
    {
      v31 = [v2 userTask];
      if (v31)
      {
        v32 = v31;
        v33 = [v31 value];

        if (v33)
        {
          v34 = [v33 BOOLValue];

          sub_252929F10(v11, 0);
          v35 = v34 ^ v37 ^ 1;
          return v35 & 1;
        }
      }
    }
  }

LABEL_32:
  v14 = v11;
  v15 = 0;
LABEL_33:
  sub_252929F10(v14, v15);
LABEL_34:
  v35 = 0;
  return v35 & 1;
}

id sub_252C4E214()
{
  result = [v0 filters];
  if (!result)
  {
    return result;
  }

  v2 = result;
  type metadata accessor for HomeFilter();
  v3 = sub_252E37264();

  if (!(v3 >> 62))
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_4;
    }

LABEL_18:

    return 0;
  }

LABEL_17:
  v4 = sub_252E378C4();
  if (!v4)
  {
    goto LABEL_18;
  }

LABEL_4:
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

    v7 = v6;
    v8 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    if ([v6 entityType] == 5)
    {
      break;
    }

    ++v5;
    if (v8 == v4)
    {
      goto LABEL_18;
    }
  }

  v9 = [v7 homeEntityName];

  if (!v9)
  {
    return 0;
  }

  v10 = sub_252E36F34();

  return v10;
}

id sub_252C4E384()
{
  v0 = sub_252C51E7C(&selRef_homeName);
  v2 = v1;
  if (!v1)
  {
    return 0;
  }

  v3 = v0;
  v4 = type metadata accessor for HomeStore(0);
  v5 = static HomeStore.shared.getter(v4);
  v6 = sub_2529D8DC0();

  v15 = MEMORY[0x277D84F90];
  if (v6 >> 62)
  {
    goto LABEL_22;
  }

  v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v7)
  {
    while (1)
    {
      v8 = 0;
      while ((v6 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x2530ADF00](v8, v6);
        v10 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
LABEL_18:
          __break(1u);
LABEL_19:
          v12 = v15;
          goto LABEL_24;
        }

LABEL_10:
        v11 = *(v9 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name) == v3 && v2 == *(v9 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);
        if (v11 || (sub_252E37DB4() & 1) != 0)
        {
          sub_252E37A94();
          sub_252E37AC4();
          sub_252E37AD4();
          sub_252E37AA4();
        }

        else
        {
        }

        ++v8;
        if (v10 == v7)
        {
          goto LABEL_19;
        }
      }

      if (v8 < *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        break;
      }

      __break(1u);
LABEL_22:
      v7 = sub_252E378C4();
      if (!v7)
      {
        goto LABEL_23;
      }
    }

    v9 = *(v6 + 8 * v8 + 32);

    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      goto LABEL_18;
    }

    goto LABEL_10;
  }

LABEL_23:
  v12 = MEMORY[0x277D84F90];
LABEL_24:

  if (v12 < 0 || (v12 & 0x4000000000000000) != 0)
  {
    v13 = sub_252E378C4();
  }

  else
  {
    v13 = *(v12 + 16);
  }

  if (v13 != 1)
  {

    return 0;
  }

  return v3;
}

uint64_t sub_252C4E58C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = v1;
  v4 = (a1 + 32);
  while (1)
  {
    v8 = *v4++;
    v7 = v8;
    v9 = [v3 userTask];
    if (!v9)
    {
      if (qword_27F53F4E8 != -1)
      {
        swift_once();
      }

      v10 = sub_252E36AD4();
      __swift_project_value_buffer(v10, qword_27F544D60);
      sub_252E379F4();

      v11 = [v3 description];
      v12 = sub_252E36F34();
      v14 = v13;

      MEMORY[0x2530AD570](v12, v14);

      sub_252CC3D90(0xD00000000000001ELL, 0x8000000252E8CA80, 0xD000000000000090, 0x8000000252E8C8B0);

      goto LABEL_4;
    }

    v5 = v9;
    v6 = [v9 attribute];

    if (v6 == v7)
    {
      return 1;
    }

LABEL_4:
    if (!--v2)
    {
      return 0;
    }
  }
}

uint64_t sub_252C4E740()
{
  v1 = v0;
  v2 = [v0 userTask];
  if (v2)
  {
    v3 = v2;
    v4 = [v0 userTask];
    if (v4)
    {
      v5 = v4;
      if ([v4 taskType] == 4)
      {

LABEL_41:
        v6 = 1;
        return v6 & 1;
      }

      v7 = [v5 taskType];

      if (v7 == 5)
      {
        goto LABEL_41;
      }
    }

    else
    {
      sub_252C515AC();
    }

    v8 = [v3 attribute];
    if (v8 <= 9)
    {
      if (v8 == 8)
      {
        v33 = [v3 value];
        if (v33)
        {
          v34 = v33;
          v35 = [v33 type];

          if (v35 == 1)
          {
            v36 = [v3 value];
            if (v36)
            {
              v37 = v36;
              v38 = [v36 BOOLValue];

              if (v38)
              {
                goto LABEL_41;
              }
            }
          }
        }

        v39 = [v3 value];
        if (v39)
        {
          v40 = v39;
          v41 = [v39 type];

          if (v41 == 4)
          {
            v42 = [v3 value];
            if (v42)
            {
              v43 = v42;
              v44 = [v42 integerValue];

              v6 = v44 == 1;
              return v6 & 1;
            }
          }
        }

        goto LABEL_46;
      }

      if (v8 == 9)
      {
        v18 = [v3 value];
        if (!v18 || (v19 = v18, v20 = [v18 type], v19, v20 != 4))
        {
          v50 = [v3 value];
          if (v50)
          {
            v51 = v50;
            v52 = [v50 type];

            if (v52 == 2)
            {
              v53 = [v3 value];
              if (v53)
              {
                v54 = v53;
                [v53 doubleValue];
                v56 = v55;

                v6 = v56 == 0.0;
                return v6 & 1;
              }
            }
          }

          goto LABEL_46;
        }

LABEL_23:
        v21 = [v3 value];
        if (v21)
        {
          v22 = v21;
          v23 = [v21 integerValue];

          v6 = v23 == 0;
          return v6 & 1;
        }

LABEL_46:

        v6 = 0;
        return v6 & 1;
      }

LABEL_38:
      if (qword_27F53F4E8 != -1)
      {
        swift_once();
      }

      v45 = sub_252E36AD4();
      __swift_project_value_buffer(v45, qword_27F544D60);
      sub_252E379F4();

      v46 = [v1 description];
      v47 = sub_252E36F34();
      v49 = v48;

      MEMORY[0x2530AD570](v47, v49);

      sub_252CC3D90(0xD00000000000002BLL, 0x8000000252E8CAA0, 0xD000000000000090, 0x8000000252E8C8B0);

      goto LABEL_41;
    }

    if (v8 == 64)
    {
      v24 = [v3 value];
      if (v24)
      {
        v25 = v24;
        v26 = [v24 BOOLValue];

        v6 = v26 ^ 1;
        return v6 & 1;
      }

      goto LABEL_46;
    }

    if (v8 != 13)
    {
      if (v8 == 10)
      {
        v9 = [v3 value];
        if (v9)
        {
          v10 = v9;
          v11 = [v9 type];

          if (v11 == 1)
          {
            v12 = [v3 value];
            if (v12)
            {
              v13 = v12;
              v14 = [v12 BOOLValue];

              if ((v14 & 1) == 0)
              {
                goto LABEL_41;
              }
            }
          }
        }

        v15 = [v3 value];
        if (!v15)
        {
          goto LABEL_46;
        }

        v16 = v15;
        v17 = [v15 type];

        if (v17 != 4)
        {
          goto LABEL_46;
        }

        goto LABEL_23;
      }

      goto LABEL_38;
    }

    v27 = [v3 value];
    if (v27 && (v28 = v27, v29 = [v27 stringValue], v28, v29))
    {
      v30 = sub_252E36F34();
      v32 = v31;
    }

    else
    {
      v30 = 0;
      v32 = 0xE000000000000000;
    }

    v59[0] = v30;
    v59[1] = v32;
    MEMORY[0x28223BE20](v27);
    v58[2] = v59;
    v6 = sub_2529ED970(sub_25296A724, v58, &unk_2864A7590);

    swift_arrayDestroy();
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

void *ControlHomeIntent.getTargetDeviceTypes()()
{
  v96 = *MEMORY[0x277D85DE8];
  v1 = [v0 filters];
  if (!v1)
  {
    return MEMORY[0x277D84FA0];
  }

  v2 = v1;
  type metadata accessor for HomeFilter();
  v3 = sub_252E37264();

  v93[0] = MEMORY[0x277D84F90];
  if (v3 >> 62)
  {
    goto LABEL_79;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (2)
  {
    v5 = MEMORY[0x277D84F90];
    if (!v4)
    {
      v14 = MEMORY[0x277D84F90];
      goto LABEL_20;
    }

    v6 = 0;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x2530ADF00](v6, v3);
      }

      else
      {
        if (v6 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_75;
        }

        v7 = *(v3 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_74;
      }

      v10 = [v7 isExcludeFilter];
      sub_25293F638(0, &qword_27F5404D8, 0x277CCABB0);
      v11 = sub_252E37674();
      v12 = v11;
      if (!v10)
      {

LABEL_7:
        sub_252E37A94();
        sub_252E37AC4();
        sub_252E37AD4();
        sub_252E37AA4();
        goto LABEL_8;
      }

      v13 = sub_252E37694();

      if ((v13 & 1) == 0)
      {
        goto LABEL_7;
      }

LABEL_8:
      ++v6;
    }

    while (v9 != v4);
    v14 = v93[0];
    v5 = MEMORY[0x277D84F90];
LABEL_20:

    v95 = v5;
    if (v14 < 0 || (v14 & 0x4000000000000000) != 0)
    {
      v16 = sub_252E378C4();
    }

    else
    {
      v16 = *(v14 + 16);
    }

    v92 = v14 & 0xC000000000000001;
    v17 = MEMORY[0x277D84F90];
    if (v16)
    {
      v18 = 0;
      v19 = MEMORY[0x277D84F90];
      do
      {
        v20 = v18;
        while (1)
        {
          if (v92)
          {
            v21 = MEMORY[0x2530ADF00](v20, v14);
          }

          else
          {
            if (v20 >= *(v14 + 16))
            {
              goto LABEL_77;
            }

            v21 = *(v14 + 8 * v20 + 32);
          }

          v22 = v21;
          v18 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
            goto LABEL_76;
          }

          v23 = [v21 homeEntityName];
          if (v23)
          {
            break;
          }

          ++v20;
          if (v18 == v16)
          {
            goto LABEL_41;
          }
        }

        v24 = v23;
        v25 = sub_252E36F34();
        v3 = v26;

        v27 = v19;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v27 = sub_2529F7A80(0, *(v19 + 16) + 1, 1, v19);
        }

        v29 = *(v27 + 2);
        v28 = *(v27 + 3);
        if (v29 >= v28 >> 1)
        {
          v27 = sub_2529F7A80((v28 > 1), v29 + 1, 1, v27);
        }

        v19 = v27;
        *(v27 + 2) = v29 + 1;
        v30 = &v27[16 * v29];
        *(v30 + 4) = v25;
        *(v30 + 5) = v3;
        v17 = MEMORY[0x277D84F90];
      }

      while (v18 != v16);
    }

    else
    {
      v19 = MEMORY[0x277D84F90];
    }

LABEL_41:
    if (!*(v19 + 16))
    {
      goto LABEL_55;
    }

    v91 = v19;
    v31 = type metadata accessor for HomeStore(0);
    v32 = static HomeStore.shared.getter(v31);
    v33 = sub_2529D9D50();
    v3 = 0;
    v34 = sub_2529D70E4(v33);

    v94 = v17;
    if (!(v34 >> 62))
    {
      v35 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v90 = v16;
      if (v35)
      {
        goto LABEL_44;
      }

LABEL_84:

      v61 = v94;
      v16 = v90;
      if (v94 < 0 || (v94 & 0x4000000000000000) != 0)
      {
        goto LABEL_108;
      }

      v62 = *(v94 + 16);
      if (v62)
      {
LABEL_87:
        v63 = 0;
        v64 = MEMORY[0x277D84F90];
        v89 = v61 & 0xC000000000000001;
        while (1)
        {
          v91 = v3;
          if (v89)
          {
            v16 = MEMORY[0x2530ADF00](v63, v61);
            v3 = v63 + 1;
            if (__OFADD__(v63, 1))
            {
              goto LABEL_106;
            }
          }

          else
          {
            if (v63 >= *(v61 + 16))
            {
              goto LABEL_107;
            }

            v16 = *(v61 + 8 * v63 + 32);

            v3 = v63 + 1;
            if (__OFADD__(v63, 1))
            {
LABEL_106:
              __break(1u);
LABEL_107:
              __break(1u);
LABEL_108:
              v62 = sub_252E378C4();
              if (!v62)
              {
                break;
              }

              goto LABEL_87;
            }
          }

          v65 = v14;
          v66 = v62;
          v67 = [*(v16 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) serviceType];
          v68 = sub_252E36F34();
          v70 = v69;

          if (qword_27F53F8B8 != -1)
          {
            swift_once();
          }

          v71 = off_27F546230;
          if (*(off_27F546230 + 2) && (v72 = sub_252A44A10(v68, v70), (v73 & 1) != 0))
          {
            v74 = *(v71[7] + 8 * v72);
          }

          else
          {
            v74 = 0;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v64 = sub_2529F7B8C(0, *(v64 + 2) + 1, 1, v64);
          }

          v16 = v90;
          v76 = *(v64 + 2);
          v75 = *(v64 + 3);
          if (v76 >= v75 >> 1)
          {
            v64 = sub_2529F7B8C((v75 > 1), v76 + 1, 1, v64);
          }

          *(v64 + 2) = v76 + 1;
          *&v64[8 * v76 + 32] = v74;
          ++v63;
          v62 = v66;
          v37 = v3 == v66;
          v3 = v91;
          v14 = v65;
          if (v37)
          {
            goto LABEL_110;
          }
        }
      }

      v64 = MEMORY[0x277D84F90];
LABEL_110:

      sub_25297A87C(v64);
      if (!v16)
      {
        goto LABEL_56;
      }

LABEL_111:
      v47 = 0;
      v44 = MEMORY[0x277D84F90];
      while (1)
      {
        if (v92)
        {
          v77 = MEMORY[0x2530ADF00](v47, v14);
        }

        else
        {
          if (v47 >= *(v14 + 16))
          {
            goto LABEL_124;
          }

          v77 = *(v14 + 8 * v47 + 32);
        }

        v78 = v77;
        v79 = v47 + 1;
        if (__OFADD__(v47, 1))
        {
          break;
        }

        v80 = [v77 deviceType];

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v44 = sub_2529F7B8C(0, *(v44 + 2) + 1, 1, v44);
        }

        v82 = *(v44 + 2);
        v81 = *(v44 + 3);
        if (v82 >= v81 >> 1)
        {
          v44 = sub_2529F7B8C((v81 > 1), v82 + 1, 1, v44);
        }

        *(v44 + 2) = v82 + 1;
        *&v44[8 * v82 + 32] = v80;
        ++v47;
        if (v79 == v16)
        {
          goto LABEL_57;
        }
      }

      __break(1u);
LABEL_124:
      __break(1u);
      goto LABEL_125;
    }

    v35 = sub_252E378C4();
    v90 = v16;
    if (!v35)
    {
      goto LABEL_84;
    }

LABEL_44:
    v36 = 0;
    v88 = v34 & 0xFFFFFFFFFFFFFF8;
    v89 = v34 & 0xC000000000000001;
    while (2)
    {
      if (v89)
      {
        v16 = v34;
        v39 = MEMORY[0x2530ADF00](v36, v34);
        v38 = v39;
        v40 = v36 + 1;
        if (__OFADD__(v36, 1))
        {
          goto LABEL_54;
        }

LABEL_50:
        v41 = v35;
        v42 = *(v38 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);
        v93[0] = *(v38 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
        v93[1] = v42;
        MEMORY[0x28223BE20](v39);
        v86[2] = v93;

        v43 = sub_2529ED970(sub_25296A69C, v86, v91);

        if (v43)
        {
          sub_252E37A94();
          sub_252E37AC4();
          sub_252E37AD4();
          sub_252E37AA4();
        }

        else
        {
        }

        v35 = v41;
        ++v36;
        v37 = v40 == v41;
        v34 = v16;
        if (v37)
        {
          goto LABEL_84;
        }

        continue;
      }

      break;
    }

    if (v36 >= *(v88 + 16))
    {
      goto LABEL_78;
    }

    v16 = v34;
    v38 = *(v34 + 8 * v36 + 32);

    v40 = v36 + 1;
    if (!__OFADD__(v36, 1))
    {
      goto LABEL_50;
    }

LABEL_54:
    __break(1u);
LABEL_55:

    v3 = 0;
    if (v16)
    {
      goto LABEL_111;
    }

LABEL_56:
    v44 = MEMORY[0x277D84F90];
LABEL_57:

    sub_25297A87C(v44);

    v14 = sub_252C759A0(v45);

    v46 = *(v14 + 32);
    v47 = ((1 << v46) + 63) >> 6;
    v48 = 8 * v47;
    if ((v46 & 0x3Fu) <= 0xD)
    {
LABEL_58:

      MEMORY[0x28223BE20](v49);
      bzero(&v87 - ((v48 + 15) & 0x3FFFFFFFFFFFFFF0), v48);
      v50 = 0;
      v51 = 0;
      v52 = 1 << *(v14 + 32);
      v53 = -1;
      if (v52 < 64)
      {
        v53 = ~(-1 << v52);
      }

      v54 = v53 & *(v14 + 56);
      v55 = (v52 + 63) >> 6;
      while (v54)
      {
        v56 = __clz(__rbit64(v54));
        v54 &= v54 - 1;
        v57 = v56 | (v51 << 6);
LABEL_68:
        if (*(*(v14 + 48) + 8 * v57))
        {
          *(&v87 + ((v57 >> 3) & 0x1FFFFFFFFFFFFFF8) - ((v48 + 15) & 0x3FFFFFFFFFFFFFF0)) |= 1 << v57;
          if (__OFADD__(v50++, 1))
          {
            __break(1u);
            return sub_252C542FC((&v87 - ((v48 + 15) & 0x3FFFFFFFFFFFFFF0)), v47, v50, v14, &qword_27F541750, &qword_252E4A2E0);
          }
        }
      }

      v58 = v51;
      while (1)
      {
        v51 = v58 + 1;
        if (__OFADD__(v58, 1))
        {
          break;
        }

        if (v51 >= v55)
        {
          return sub_252C542FC((&v87 - ((v48 + 15) & 0x3FFFFFFFFFFFFFF0)), v47, v50, v14, &qword_27F541750, &qword_252E4A2E0);
        }

        v59 = *(v14 + 56 + 8 * v51);
        ++v58;
        if (v59)
        {
          v54 = (v59 - 1) & v59;
          v57 = __clz(__rbit64(v59)) | (v51 << 6);
          goto LABEL_68;
        }
      }

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
      v4 = sub_252E378C4();
      continue;
    }

    break;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_58;
  }

LABEL_125:
  v83 = swift_slowAlloc();

  v84 = sub_252C54758(v83, v47, v14, sub_252AFABD8);
  if (v3)
  {

    swift_bridgeObjectRelease_n();
    result = MEMORY[0x2530AED00](v83, -1, -1);
    __break(1u);
  }

  else
  {
    v85 = v84;
    swift_bridgeObjectRelease_n();

    MEMORY[0x2530AED00](v83, -1, -1);
    return v85;
  }

  return result;
}

id sub_252C4F73C()
{
  v1 = [v0 userTask];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 attribute];
  }

  else
  {
    v3 = 0;
  }

  v4 = objc_allocWithZone(type metadata accessor for HomeUserTask());
  v5 = sub_252E36F04();
  v6 = [v4 initWithIdentifier:0 displayString:v5];

  v7 = v6;
  [v7 setTaskType_];
  [v7 setAttribute_];
  [v7 setValue_];

  v8 = [v0 filters];
  if (v8)
  {
    v9 = v8;
    type metadata accessor for HomeFilter();
    v10 = sub_252E37264();
  }

  else
  {
    v10 = 0;
  }

  type metadata accessor for ControlHomeIntent();
  v11 = sub_252D473EC(v7, v10);

  return v11;
}

uint64_t sub_252C4F88C()
{
  v1 = v0;
  v2 = [v0 userTask];
  if (!v2)
  {
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v14 = sub_252E36AD4();
    __swift_project_value_buffer(v14, qword_27F544D60);
    sub_252E379F4();

    v15 = v0;
    v16 = [v15 description];
    v17 = sub_252E36F34();
    v19 = v18;

    MEMORY[0x2530AD570](v17, v19);

    v20 = 0xD00000000000001ELL;
    v21 = 0x8000000252E8C890;
    v22 = 270;
    goto LABEL_21;
  }

  v3 = [v0 filters];
  if (!v3)
  {
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v23 = sub_252E36AD4();
    __swift_project_value_buffer(v23, qword_27F544D60);
    sub_252E379F4();

    v24 = v0;
    v25 = [v24 description];
    v26 = sub_252E36F34();
    v28 = v27;

    MEMORY[0x2530AD570](v26, v28);

    v20 = 0xD00000000000001DLL;
    v21 = 0x8000000252E8C970;
    v22 = 275;
LABEL_21:
    sub_252CC4050(v20, v21, 0xD000000000000090, 0x8000000252E8C8B0, 0x2864696C61567369, 0xE900000000000029, v22);

    return 0;
  }

  v4 = v3;
  type metadata accessor for HomeFilter();
  v5 = sub_252E37264();

  if (v5 >> 62)
  {
LABEL_35:
    v6 = sub_252E378C4();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  while (1)
  {
    if (v6 == v7)
    {

      if (qword_27F53F4E8 != -1)
      {
        swift_once();
      }

      v30 = sub_252E36AD4();
      __swift_project_value_buffer(v30, qword_27F544D60);
      sub_252CC4050(0xD00000000000002DLL, 0x8000000252E8C9B0, 0xD000000000000090, 0x8000000252E8C8B0, 0x2864696C61567369, 0xE900000000000029, 280);
      return 0;
    }

    if ((v5 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x2530ADF00](v7, v5);
    }

    else
    {
      if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_34;
      }

      v8 = *(v5 + 8 * v7 + 32);
    }

    v9 = v8;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v10 = [v8 isExcludeFilter];
    sub_25293F638(0, &qword_27F5404D8, 0x277CCABB0);
    v11 = sub_252E37674();
    v12 = v11;
    if (!v10)
    {
      break;
    }

    v13 = sub_252E37694();

    ++v7;
    if ((v13 & 1) == 0)
    {

      goto LABEL_27;
    }
  }

LABEL_27:
  v31 = [v1 userTask];
  if (!v31)
  {
    return 1;
  }

  v32 = v31;
  v33 = [v31 taskType];

  if (v33)
  {
    return 1;
  }

  if (qword_27F53F4E8 != -1)
  {
    swift_once();
  }

  v34 = sub_252E36AD4();
  __swift_project_value_buffer(v34, qword_27F544D60);
  sub_252CC4050(0xD000000000000014, 0x8000000252E8C990, 0xD000000000000090, 0x8000000252E8C8B0, 0x2864696C61567369, 0xE900000000000029, 285);
  return 0;
}

id sub_252C4FDF0(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  v2 = [v12 userTask];
  if (!v2)
  {
    goto LABEL_6;
  }

  v3 = v2;
  if ([v2 taskType])
  {

    goto LABEL_6;
  }

  v4 = [v3 attribute];

  if (v4 || (memcpy(__srca, __src, sizeof(__srca)), sub_252956B94(__srca) == 1))
  {
LABEL_6:

    return v12;
  }

  memcpy(v14, __dst, sizeof(v14));
  sub_2529353AC(v14, v13);
  if (qword_27F53F500 != -1)
  {
    swift_once();
  }

  v6 = sub_252E36AD4();
  __swift_project_value_buffer(v6, qword_27F544DA8);
  sub_252CC7784(0xD000000000000051, 0x8000000252E8CB60, 0, 0xD000000000000090, 0x8000000252E8C8B0);
  memcpy(v13, __srca, sizeof(v13));
  v7 = sub_252AEFEB0();
  v13[0] = 0;
  v13[1] = 0xE000000000000000;
  sub_252E379F4();

  v13[0] = 0xD000000000000011;
  v13[1] = 0x8000000252E8CBC0;
  v8 = [v7 description];
  v9 = sub_252E36F34();
  v11 = v10;

  MEMORY[0x2530AD570](v9, v11);

  sub_252CC7784(v13[0], v13[1], 0, 0xD000000000000090, 0x8000000252E8C8B0);

  sub_25293847C(__dst, &qword_27F5404C8, &unk_252E3FD60);
  return v7;
}

uint64_t sub_252C50064(const void *a1)
{
  v2[318] = v1;
  v2[317] = a1;
  v4 = sub_252E32E04();
  v2[319] = v4;
  v2[320] = *(v4 - 8);
  v2[321] = swift_task_alloc();
  v5 = sub_252E35BE4();
  v2[322] = v5;
  v2[323] = *(v5 - 8);
  v2[324] = swift_task_alloc();
  v6 = sub_252E35BF4();
  v2[325] = v6;
  v2[326] = *(v6 - 8);
  v2[327] = swift_task_alloc();
  v7 = sub_252E35C14();
  v2[328] = v7;
  v2[329] = *(v7 - 8);
  v2[330] = swift_task_alloc();
  memcpy(v2 + 65, a1, 0x1F8uLL);

  return MEMORY[0x2822009F8](sub_252C50250, 0, 0);
}

uint64_t sub_252C50250()
{
  memcpy((v0 + 16), *(v0 + 2536), 0x1F8uLL);
  if (sub_252956B94((v0 + 16)) == 1)
  {
    v1 = *(v0 + 2544);
LABEL_6:

    v6 = *(v0 + 8);

    return v6(v1);
  }

  v2 = *(v0 + 2544);
  memcpy((v0 + 1024), (v0 + 520), 0x1F8uLL);
  sub_2529353AC(v0 + 1024, v0 + 1528);
  v3 = [v2 time];
  if (v3)
  {

LABEL_5:
    v4 = *(v0 + 2544);
    sub_25293847C(v0 + 520, &qword_27F5404C8, &unk_252E3FD60);
    v5 = v4;
    v1 = *(v0 + 2544);
    goto LABEL_6;
  }

  if (!*(v0 + 32))
  {
    goto LABEL_5;
  }

  v8 = *(v0 + 2616);
  v9 = *(v0 + 2608);
  v10 = *(v0 + 2600);
  v11 = *(v0 + 2592);
  v12 = *(v0 + 2584);
  v13 = *(v0 + 2576);
  memcpy((v0 + 2032), (v0 + 16), 0x1F8uLL);
  (*(v9 + 104))(v8, *MEMORY[0x277D56140], v10);
  (*(v12 + 104))(v11, *MEMORY[0x277D56128], v13);
  sub_252CC6450(MEMORY[0x277D84F90]);
  sub_252E35C04();
  sub_252E32DF4();
  v14 = swift_task_alloc();
  *(v0 + 2648) = v14;
  *v14 = v0;
  v14[1] = sub_252C504B8;
  v15 = *(v0 + 2640);
  v16 = *(v0 + 2568);

  return sub_252BAE648(v15, v16);
}

uint64_t sub_252C504B8(uint64_t a1)
{
  v2 = *(*v1 + 2640);
  v3 = *(*v1 + 2632);
  v4 = *(*v1 + 2624);
  v5 = *(*v1 + 2568);
  v6 = *(*v1 + 2560);
  v7 = *(*v1 + 2552);
  *(*v1 + 2656) = a1;

  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);

  return MEMORY[0x2822009F8](sub_252C50674, 0, 0);
}

uint64_t sub_252C50674()
{
  v1 = v0[332];
  v2 = v0[318];
  if (v1)
  {
    v3 = v2;
    v4 = [v3 userTask];
    v5 = [v3 filters];
    if (v5)
    {
      v6 = v5;
      type metadata accessor for HomeFilter();
      v7 = sub_252E37264();
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v10 = v0[318];
    type metadata accessor for ControlHomeIntent.Builder();
    v11 = [v10 time];
    v12 = sub_252D47574(v4, v7, v11);

    v13 = (*(*v12 + 200))(v1);

    v9 = (*(*v13 + 224))(v14);

    sub_25293847C((v0 + 65), &qword_27F5404C8, &unk_252E3FD60);
  }

  else
  {
    sub_25293847C((v0 + 65), &qword_27F5404C8, &unk_252E3FD60);
    v8 = v2;
    v9 = v0[318];
  }

  v15 = v0[1];

  return v15(v9);
}

uint64_t sub_252C50874()
{
  v1 = v0;
  v2 = type metadata accessor for HomeStore(0);
  v3 = static HomeStore.shared.getter(v2);
  v4 = v3[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_loadSucceeded];
  if (v4 != 2 && (v4 & 1) == 0 || (v5 = [v1 filters]) == 0)
  {

    return 0;
  }

  v6 = v5;
  type metadata accessor for HomeFilter();
  v7 = sub_252E37264();

  v8 = [v1 userTask];
  v9 = HomeStore.accessories(matching:supporting:)(v7, v8);
  v11 = v10;

  if (v11)
  {
    sub_252929F10(v9, 1);
    return 0;
  }

  sub_252B680FC(v12);
  v14 = sub_252B653E0();

  if (v14)
  {
    sub_252929F10(v9, 0);
    return 1;
  }

  v15 = [v1 userTask];
  v16 = v9 >> 62;
  v78 = v1;
  if (v15)
  {
    v17 = v15;
    v18 = [v15 attribute];

    v77 = v18 == 7;
    if (!v16)
    {
      goto LABEL_12;
    }

LABEL_31:
    v19 = v9 & 0xFFFFFFFFFFFFFF8;
    v20 = sub_252E378C4();
    if (v20)
    {
      goto LABEL_13;
    }

    goto LABEL_32;
  }

  sub_252C515AC();
  v77 = 0;
  if (v16)
  {
    goto LABEL_31;
  }

LABEL_12:
  v19 = v9 & 0xFFFFFFFFFFFFFF8;
  v20 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v20)
  {
LABEL_13:
    v21 = 0;
    v22 = MEMORY[0x277D84F90];
    while (2)
    {
      v23 = v21;
      while (1)
      {
        if ((v9 & 0xC000000000000001) != 0)
        {
          v24 = MEMORY[0x2530ADF00](v23, v9);
          v21 = v23 + 1;
          if (__OFADD__(v23, 1))
          {
            goto LABEL_101;
          }
        }

        else
        {
          if (v23 >= *(v19 + 16))
          {
            goto LABEL_102;
          }

          v24 = *(v9 + 8 * v23 + 32);

          v21 = v23 + 1;
          if (__OFADD__(v23, 1))
          {
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
            goto LABEL_105;
          }
        }

        v25 = [*(v24 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate) room];
        if (v25)
        {
          break;
        }

        ++v23;
        if (v21 == v20)
        {
          goto LABEL_33;
        }
      }

      v26 = v25;
      type metadata accessor for Room(0);
      swift_allocObject();
      sub_2529A1E08(v26);
      v27 = sub_2529A2A0C();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = sub_2529F8F7C(0, v22[2] + 1, 1, v22);
      }

      v28 = v22;
      v29 = v22[2];
      v30 = v28;
      v31 = v28[3];
      if (v29 >= v31 >> 1)
      {
        v30 = sub_2529F8F7C((v31 > 1), v29 + 1, 1, v30);
      }

      v30[2] = v29 + 1;
      v32 = &v30[v29];
      v22 = v30;
      v32[4] = v27;
      if (v21 != v20)
      {
        continue;
      }

      goto LABEL_33;
    }
  }

LABEL_32:
  v22 = MEMORY[0x277D84F90];
LABEL_33:
  sub_252929F10(v9, 0);
  v9 = sub_252C4B320(v22);

  if (v9 >> 62)
  {
LABEL_105:
    v33 = sub_252E378C4();
    v79 = v33;
    if (!v33)
    {
      goto LABEL_63;
    }
  }

  else
  {
    v33 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v79 = v33;
    if (!v33)
    {
      goto LABEL_63;
    }
  }

  v34 = 0;
  while (1)
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      v35 = MEMORY[0x2530ADF00](v34, v9);
      v36 = __OFADD__(v34++, 1);
      if (v36)
      {
        goto LABEL_59;
      }
    }

    else
    {
      if (v34 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_103;
      }

      v35 = *(v9 + 32 + 8 * v34);

      v36 = __OFADD__(v34++, 1);
      if (v36)
      {
LABEL_59:
        __break(1u);
        goto LABEL_60;
      }
    }

    v37 = (*v35 + 256);
    v38 = *v37;
    if ((*v37)() == 30)
    {

      if (v77)
      {
        goto LABEL_61;
      }

      goto LABEL_63;
    }

    v39 = (*(*v35 + 272))();
    if (*(v39 + 16))
    {
      sub_252E37EC4();
      MEMORY[0x2530AE390](30);
      v40 = sub_252E37F14();
      v41 = -1 << *(v39 + 32);
      v42 = v40 & ~v41;
      if ((*(v39 + 56 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v42))
      {
        break;
      }
    }

LABEL_46:

    v45 = (v38)(v44);
    if (v45 == 38)
    {
      v47 = &unk_2864ADBA0;
      goto LABEL_50;
    }

    v46 = MEMORY[0x277D84FA0];
    if (v45 == 41)
    {
      v47 = &unk_2864ADBC8;
LABEL_50:
      v46 = sub_2529FC004(v47);
    }

    if (*(v46 + 16))
    {
      sub_252E37EC4();
      MEMORY[0x2530AE390](30);
      v48 = sub_252E37F14();
      v49 = -1 << *(v46 + 32);
      v50 = v48 & ~v49;
      if ((*(v46 + 56 + ((v50 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v50))
      {
        v51 = ~v49;
        while (*(*(v46 + 48) + 8 * v50) != 30)
        {
          v50 = (v50 + 1) & v51;
          if (((*(v46 + 56 + ((v50 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v50) & 1) == 0)
          {
            goto LABEL_36;
          }
        }

        goto LABEL_60;
      }
    }

LABEL_36:

    v33 = v79;
    if (v34 == v79)
    {
      goto LABEL_63;
    }
  }

  v43 = ~v41;
  while (*(*(v39 + 48) + 8 * v42) != 30)
  {
    v42 = (v42 + 1) & v43;
    if (((*(v39 + 56 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v42) & 1) == 0)
    {
      goto LABEL_46;
    }
  }

LABEL_60:

  v33 = v79;
  if (v77)
  {
LABEL_61:

    return 1;
  }

LABEL_63:
  v52 = [v78 userTask];
  if (v52)
  {
    v53 = v52;
    v54 = [v52 attribute];

    v77 = v54 == 28;
    if (!v33)
    {
      goto LABEL_95;
    }
  }

  else
  {
    sub_252C515AC();
    v77 = 0;
    if (!v33)
    {
LABEL_95:

      v73 = v78;
      goto LABEL_96;
    }
  }

  v55 = 0;
  while (2)
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      v56 = MEMORY[0x2530ADF00](v55, v9);
      v36 = __OFADD__(v55++, 1);
      if (v36)
      {
        goto LABEL_91;
      }
    }

    else
    {
      if (v55 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_104;
      }

      v56 = *(v9 + 32 + 8 * v55);

      v36 = __OFADD__(v55++, 1);
      if (v36)
      {
LABEL_91:
        __break(1u);
LABEL_92:

        goto LABEL_93;
      }
    }

    v57 = (*v56 + 256);
    v58 = *v57;
    if ((*v57)() != 39)
    {
      v59 = (*(*v56 + 272))();
      if (*(v59 + 16))
      {
        sub_252E37EC4();
        MEMORY[0x2530AE390](39);
        v60 = sub_252E37F14();
        v61 = -1 << *(v59 + 32);
        v62 = v60 & ~v61;
        if ((*(v59 + 56 + ((v62 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v62))
        {
          v63 = ~v61;
          while (*(*(v59 + 48) + 8 * v62) != 39)
          {
            v62 = (v62 + 1) & v63;
            if (((*(v59 + 56 + ((v62 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v62) & 1) == 0)
            {
              goto LABEL_78;
            }
          }

          goto LABEL_92;
        }
      }

LABEL_78:

      v65 = (v58)(v64);
      if (v65 == 38)
      {
        v67 = &unk_2864ADBF0;
LABEL_82:
        v66 = sub_2529FC004(v67);
      }

      else
      {
        v66 = MEMORY[0x277D84FA0];
        if (v65 == 41)
        {
          v67 = &unk_2864ADC18;
          goto LABEL_82;
        }
      }

      if (*(v66 + 16))
      {
        sub_252E37EC4();
        MEMORY[0x2530AE390](39);
        v68 = sub_252E37F14();
        v69 = -1 << *(v66 + 32);
        v70 = v68 & ~v69;
        if ((*(v66 + 56 + ((v70 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v70))
        {
          v71 = ~v69;
          while (*(*(v66 + 48) + 8 * v70) != 39)
          {
            v70 = (v70 + 1) & v71;
            if (((*(v66 + 56 + ((v70 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v70) & 1) == 0)
            {
              goto LABEL_68;
            }
          }

          goto LABEL_92;
        }
      }

LABEL_68:

      if (v55 == v79)
      {
        goto LABEL_95;
      }

      continue;
    }

    break;
  }

LABEL_93:

  v73 = v78;
  if (v77)
  {
    return 1;
  }

LABEL_96:
  v74 = *(sub_252B680FC(v72) + 48);

  if (v74)
  {
    v76 = 1;
  }

  else
  {
    v76 = *(sub_252B680FC(v75) + 49);
  }

  return v76 & sub_252D3E360(v73);
}

uint64_t sub_252C5117C(uint64_t a1)
{
  v2 = sub_2529FC004(a1);
  v3 = [v1 filters];
  if (!v3)
  {

    sub_252C516E0();
    return 0;
  }

  v4 = v3;
  type metadata accessor for HomeFilter();
  v5 = sub_252E37264();

  if (v5 >> 62)
  {
LABEL_25:
    v6 = sub_252E378C4();
    if (v6)
    {
      goto LABEL_4;
    }

    goto LABEL_26;
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v6)
  {
LABEL_26:

    return 0;
  }

LABEL_4:
  v7 = 0;
  v8 = v2 + 56;
  while (1)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x2530ADF00](v7, v5);
    }

    else
    {
      if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_24;
      }

      v9 = *(v5 + 32 + 8 * v7);
    }

    v10 = v9;
    if (__OFADD__(v7++, 1))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v12 = [v9 isExcludeFilter];
    sub_25293F638(0, &qword_27F5404D8, 0x277CCABB0);
    v13 = sub_252E37674();
    v14 = v13;
    if (!v12)
    {
      break;
    }

    v15 = sub_252E37694();

    if ((v15 & 1) == 0)
    {
      goto LABEL_14;
    }

LABEL_5:

    if (v7 == v6)
    {
      goto LABEL_26;
    }
  }

LABEL_14:
  v16 = [v10 deviceType];
  if (!*(v2 + 16))
  {
    goto LABEL_5;
  }

  v17 = v16;
  sub_252E37EC4();
  MEMORY[0x2530AE390](v17);
  v18 = sub_252E37F14();
  v19 = -1 << *(v2 + 32);
  v20 = v18 & ~v19;
  if (((*(v8 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
  {
    goto LABEL_5;
  }

  v21 = ~v19;
  while (*(*(v2 + 48) + 8 * v20) != v17)
  {
    v20 = (v20 + 1) & v21;
    if (((*(v8 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  return 1;
}

uint64_t sub_252C513E8()
{
  result = [v0 userTask];
  if (result)
  {
    v2 = result;
    v3 = [result value];

    if (!v3)
    {
      return 0;
    }

    result = [v0 userTask];
    if (!result)
    {
      return result;
    }

    v4 = result;
    v5 = [result value];

    if (v5)
    {
      [v5 unit];

      v6 = [v0 userTask];
      if (v6 && (v7 = v6, v8 = [v6 value], v7, v8))
      {
        v9 = [v8 unit];

        return v9 != 0;
      }

      else
      {
        return 1;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_252C51508()
{
  v1 = [v0 userTask];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 taskType];

    if (v3 == 2)
    {
      return 1;
    }
  }

  result = [v0 userTask];
  if (result)
  {
    v5 = result;
    v6 = [result taskType];

    return v6 == 3;
  }

  return result;
}

uint64_t sub_252C515AC()
{
  if (qword_27F53F4E8 != -1)
  {
    swift_once();
  }

  v1 = sub_252E36AD4();
  __swift_project_value_buffer(v1, qword_27F544D60);
  sub_252E379F4();

  v2 = [v0 description];
  v3 = sub_252E36F34();
  v5 = v4;

  MEMORY[0x2530AD570](v3, v5);

  sub_252CC3D90(0xD00000000000001ELL, 0x8000000252E8CA80, 0xD000000000000090, 0x8000000252E8C8B0);
}

uint64_t sub_252C516E0()
{
  if (qword_27F53F4E8 != -1)
  {
    swift_once();
  }

  v1 = sub_252E36AD4();
  __swift_project_value_buffer(v1, qword_27F544D60);
  sub_252E379F4();

  v2 = [v0 description];
  v3 = sub_252E36F34();
  v5 = v4;

  MEMORY[0x2530AD570](v3, v5);

  sub_252CC3D90(0xD00000000000001CLL, 0x8000000252E8C9E0, 0xD000000000000090, 0x8000000252E8C8B0);
}

uint64_t sub_252C51814(unsigned __int8 a1)
{
  v3 = [v1 filters];
  if (!v3)
  {
    sub_252C516E0();
    return 0;
  }

  v4 = v3;
  type metadata accessor for HomeFilter();
  v5 = sub_252E37264();

  if (a1 <= 1u)
  {
    if (!a1)
    {
      if (v5 >> 62)
      {
        goto LABEL_59;
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
              goto LABEL_55;
            }

            v8 = *(v5 + 8 * v7 + 32);
          }

          v9 = v8;
          v10 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
            break;
          }

          v11 = [v8 homeName];
          if (v11)
          {
            goto LABEL_50;
          }

          ++v7;
          if (v10 == i)
          {
            goto LABEL_66;
          }
        }

LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        ;
      }

      goto LABEL_66;
    }

    if (v5 >> 62)
    {
      v16 = sub_252E378C4();
      if (v16)
      {
LABEL_30:
        v17 = 0;
        while (1)
        {
          if ((v5 & 0xC000000000000001) != 0)
          {
            v18 = MEMORY[0x2530ADF00](v17, v5);
          }

          else
          {
            if (v17 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_57;
            }

            v18 = *(v5 + 8 * v17 + 32);
          }

          v9 = v18;
          v19 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            break;
          }

          v11 = [v18 zoneName];
          if (v11)
          {
            goto LABEL_50;
          }

          ++v17;
          if (v19 == v16)
          {
            goto LABEL_66;
          }
        }

LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
        goto LABEL_54;
      }
    }

    else
    {
      v16 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v16)
      {
        goto LABEL_30;
      }
    }

LABEL_66:

    return 0;
  }

  if (a1 == 2)
  {
    if (v5 >> 62)
    {
      v12 = sub_252E378C4();
      if (!v12)
      {
        goto LABEL_66;
      }
    }

    else
    {
      v12 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v12)
      {
        goto LABEL_66;
      }
    }

    v13 = 0;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x2530ADF00](v13, v5);
      }

      else
      {
        if (v13 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_56;
        }

        v14 = *(v5 + 8 * v13 + 32);
      }

      v9 = v14;
      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      v11 = [v14 roomName];
      if (v11)
      {
        goto LABEL_50;
      }

      ++v13;
      if (v15 == v12)
      {
        goto LABEL_66;
      }
    }

    __break(1u);
    goto LABEL_52;
  }

  if (v5 >> 62)
  {
    v20 = sub_252E378C4();
    if (!v20)
    {
      goto LABEL_66;
    }
  }

  else
  {
    v20 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v20)
    {
      goto LABEL_66;
    }
  }

  v21 = 0;
  while (1)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v22 = MEMORY[0x2530ADF00](v21, v5);
    }

    else
    {
      if (v21 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_58;
      }

      v22 = *(v5 + 8 * v21 + 32);
    }

    v9 = v22;
    v23 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      goto LABEL_53;
    }

    v11 = [v22 groupName];
    if (v11)
    {
      break;
    }

    ++v21;
    if (v23 == v20)
    {
      goto LABEL_66;
    }
  }

LABEL_50:
  v24 = v11;

  return 1;
}

uint64_t sub_252C51BA0(SEL *a1)
{
  if (sub_252C4F88C())
  {
    result = [v1 filters];
    if (!result)
    {
      return result;
    }

    v4 = result;
    type metadata accessor for HomeFilter();
    v5 = sub_252E37264();

    if (v5 >> 62)
    {
      goto LABEL_17;
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
            goto LABEL_16;
          }

          v8 = *(v5 + 8 * v7 + 32);
        }

        v9 = v8;
        v10 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        v11 = [v8 *a1];
        if (v11)
        {
          v12 = v11;

          return 1;
        }

        ++v7;
        if (v10 == i)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      ;
    }

LABEL_18:
  }

  return 0;
}

uint64_t sub_252C51CE8()
{
  if (sub_252C4F88C())
  {
    result = [v0 filters];
    if (!result)
    {
      return result;
    }

    v2 = result;
    type metadata accessor for HomeFilter();
    v3 = sub_252E37264();

    if (v3 >> 62)
    {
      goto LABEL_19;
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

        v9 = [v6 outerDeviceName];
        if (v9)
        {
          v11 = v9;

          return 1;
        }

        v10 = [v7 homeEntityName];
        if (v10)
        {
          v12 = v10;

          return 1;
        }

        ++v5;
        if (v8 == i)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      ;
    }

LABEL_20:
  }

  return 0;
}

id sub_252C51E7C(SEL *a1)
{
  if ((sub_252C51BA0(a1) & 1) == 0)
  {
    return 0;
  }

  result = [v1 filters];
  if (!result)
  {
    return result;
  }

  v4 = result;
  type metadata accessor for HomeFilter();
  v5 = sub_252E37264();

  if (!(v5 >> 62))
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  v6 = sub_252E378C4();
  if (!v6)
  {
LABEL_19:

    return 0;
  }

LABEL_5:
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
        goto LABEL_17;
      }

      v8 = *(v5 + 8 * v7 + 32);
    }

    v9 = v8;
    v10 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    v11 = [v8 *a1];
    if (v11)
    {
      break;
    }

    ++v7;
    if (v10 == v6)
    {
      goto LABEL_19;
    }
  }

  v12 = v11;

  v13 = [v9 *a1];
  if (!v13)
  {
    return 0;
  }

  v14 = sub_252E36F34();

  return v14;
}

uint64_t sub_252C52008()
{
  v1 = v0;
  v2 = type metadata accessor for HomeStore(0);
  v3 = static HomeStore.shared.getter(v2);
  v4 = v3[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_loadSucceeded];
  if (v4 == 2 || (v4) && (v5 = [v1 filters]) != 0)
  {
    v6 = v5;
    type metadata accessor for HomeFilter();
    v7 = sub_252E37264();

    v8 = [v1 userTask];
    v9 = HomeStore.accessories(matching:supporting:)(v7, v8);
    v11 = v10;

    if (v11)
    {
      v12 = v9;
      v13 = 1;
    }

    else
    {
      if (v9 >> 62)
      {
LABEL_28:
        v15 = sub_252E378C4();
      }

      else
      {
        v15 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v16 = 0;
      while (v15 != v16)
      {
        if ((v9 & 0xC000000000000001) != 0)
        {
          v17 = MEMORY[0x2530ADF00](v16, v9);
          if (__OFADD__(v16, 1))
          {
LABEL_23:
            __break(1u);
LABEL_24:

LABEL_25:
            sub_252929F10(v9, 0);
            return 1;
          }
        }

        else
        {
          if (v16 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_28;
          }

          v17 = *(v9 + 8 * v16 + 32);

          if (__OFADD__(v16, 1))
          {
            goto LABEL_23;
          }
        }

        v18 = (*v17 + 256);
        v19 = *v18;
        if ((*v18)() == 32 || v19() == 35 || v19() == 45)
        {
          goto LABEL_24;
        }

        v20 = v19();

        ++v16;
        if (v20 == 33)
        {
          goto LABEL_25;
        }
      }

      v12 = v9;
      v13 = 0;
    }

    sub_252929F10(v12, v13);
  }

  else
  {
  }

  return 0;
}

BOOL sub_252C52230()
{
  v1 = v0;
  v2 = type metadata accessor for HomeStore(0);
  v3 = static HomeStore.shared.getter(v2);
  v4 = v3[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_loadSucceeded];
  if (v4 != 2 && (v4 & 1) == 0 || (v5 = [v1 filters]) == 0)
  {

    return 0;
  }

  v6 = v5;
  type metadata accessor for HomeFilter();
  v7 = sub_252E37264();

  v8 = [v1 userTask];
  v9 = HomeStore.accessories(matching:supporting:)(v7, v8);
  LOBYTE(v6) = v10;

  if (v6)
  {
    sub_252929F10(v9, 1);
    return 0;
  }

  v41 = MEMORY[0x277D84F90];
  v12 = v9 & 0xFFFFFFFFFFFFFF8;
  if (v9 >> 62)
  {
    goto LABEL_59;
  }

  v13 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_10:
  v14 = MEMORY[0x277D84F90];
  if (v13)
  {
    v15 = 0;
    v38 = v9 + 32;
    v39 = v9 & 0xC000000000000001;
    v35 = v12;
    v36 = v9;
    v34 = v13;
    while (1)
    {
      if (v39)
      {
        v16 = MEMORY[0x2530ADF00](v15, v9);
        v17 = __OFADD__(v15++, 1);
        if (v17)
        {
          goto LABEL_57;
        }
      }

      else
      {
        if (v15 >= *(v12 + 16))
        {
          goto LABEL_58;
        }

        v16 = *(v38 + 8 * v15);

        v17 = __OFADD__(v15++, 1);
        if (v17)
        {
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
LABEL_59:
          v13 = sub_252E378C4();
          goto LABEL_10;
        }
      }

      v18 = (*v16 + 256);
      v19 = *v18;
      if ((*v18)() != 35 && v19() != 45)
      {
        goto LABEL_47;
      }

      v40 = v14;
      v20 = *(v16 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_services);
      if (!(v20 >> 62))
      {
        v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v21)
        {
          break;
        }

        goto LABEL_43;
      }

      v21 = sub_252E378C4();
      if (v21)
      {
        break;
      }

LABEL_43:
      v31 = v14;
      if (v14 < 0)
      {
        goto LABEL_49;
      }

LABEL_44:
      if ((v31 & 0x4000000000000000) != 0)
      {
LABEL_49:
        v32 = sub_252E378C4();
      }

      else
      {
        v32 = *(v31 + 16);
      }

      if (v32 > 1)
      {
        sub_252E37A94();
        sub_252E37AC4();
        sub_252E37AD4();
        sub_252E37AA4();
        if (v15 == v13)
        {
          goto LABEL_50;
        }
      }

      else
      {
LABEL_47:

        if (v15 == v13)
        {
LABEL_50:
          v14 = v41;
          goto LABEL_51;
        }
      }
    }

    v37 = v15;
    v22 = 0;
    while (1)
    {
      if ((v20 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x2530ADF00](v22, v20);
        v9 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          goto LABEL_55;
        }
      }

      else
      {
        if (v22 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_56;
        }

        v12 = *(v20 + 8 * v22 + 32);

        v9 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
LABEL_55:
          __break(1u);
LABEL_56:
          __break(1u);
          goto LABEL_57;
        }
      }

      v23 = [*(v12 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) serviceType];
      v24 = sub_252E36F34();
      v26 = v25;

      if (qword_27F53F8B8 != -1)
      {
        swift_once();
      }

      v27 = off_27F546230;
      if (*(off_27F546230 + 2) && (v28 = sub_252A44A10(v24, v26), (v29 & 1) != 0))
      {
        v30 = *(v27[7] + 8 * v28);

        if (v30 == 33)
        {
          sub_252E37A94();
          sub_252E37AC4();
          sub_252E37AD4();
          sub_252E37AA4();
          goto LABEL_23;
        }
      }

      else
      {
      }

LABEL_23:
      ++v22;
      if (v9 == v21)
      {
        v31 = v40;
        v12 = v35;
        v9 = v36;
        v14 = MEMORY[0x277D84F90];
        v13 = v34;
        v15 = v37;
        if ((v40 & 0x8000000000000000) == 0)
        {
          goto LABEL_44;
        }

        goto LABEL_49;
      }
    }
  }

LABEL_51:
  sub_252929F10(v9, 0);
  if (v14 < 0 || (v14 & 0x4000000000000000) != 0)
  {
    v33 = sub_252E378C4();
  }

  else
  {
    v33 = *(v14 + 16);
  }

  return v33 > 0;
}

uint64_t sub_252C526B4()
{
  v1 = v0;
  v2 = [v0 userTask];
  if (!v2)
  {
    return 1;
  }

  v3 = [v0 filters];
  if (!v3)
  {
    return 1;
  }

  v4 = [v0 userTask];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 taskType];

    if (v6 == 1)
    {
      v7 = sub_252CCFCB8();
      v8 = v7 ^ 1;
      goto LABEL_9;
    }
  }

  else
  {
    v7 = sub_252C515AC();
  }

  v8 = 0;
LABEL_9:
  sub_252B680FC(v7);
  v10 = sub_252B63488();

  if (!v10)
  {
    v12 = [v1 userTask];
    if (v12)
    {
      v13 = v12;
      if ([v12 taskType] == 4)
      {

        v11 = 0;
        return (v8 | v11) & 1;
      }

      v14 = [v13 taskType];

      if (v14 == 5)
      {
LABEL_20:
        v11 = 0;
        return (v8 | v11) & 1;
      }
    }

    else
    {
      sub_252C515AC();
    }

    if ((sub_252C51814(3u) & 1) == 0 && (sub_252C51814(1u) & 1) == 0 && (sub_252C51814(2u) & 1) == 0 && (sub_252C4DD64() & 1) == 0)
    {
      v11 = sub_252C5285C();
      return (v8 | v11) & 1;
    }

    goto LABEL_20;
  }

  v11 = 1;
  return (v8 | v11) & 1;
}

BOOL sub_252C5285C()
{
  v1 = v0;
  v2 = sub_252C4D670(5, &selRef_entityType);
  v3 = type metadata accessor for HomeStore(0);
  v4 = static HomeStore.shared.getter(v3);
  v5 = v4;
  if (v2)
  {
    v6 = [v1 filters];
    if (v6)
    {
      v7 = v6;
      type metadata accessor for HomeFilter();
      v8 = sub_252E37264();
    }

    else
    {
      v8 = MEMORY[0x277D84F90];
    }

    v14 = HomeStore.scenes(matching:)(v8);
    v20 = v19;

    if (v20)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v9 = v4[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_loadSucceeded];
    if (v9 != 2 && (v9 & 1) == 0 || (v10 = [v1 filters]) == 0)
    {

      return 0;
    }

    v11 = v10;
    type metadata accessor for HomeFilter();
    v12 = sub_252E37264();

    v13 = [v1 userTask];
    v14 = HomeStore.accessories(matching:supporting:)(v12, v13);
    v16 = v15;

    if (v16)
    {
LABEL_14:
      sub_252929F10(v14, 1);
      return 0;
    }
  }

  if (v14 >> 62)
  {
    v17 = sub_252E378C4();
  }

  else
  {
    v17 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_252929F10(v14, 0);
  return v17 > 1;
}

uint64_t sub_252C52A10(uint64_t a1)
{
  v2 = *(sub_252B680FC(a1) + 77);

  if (v2)
  {
    return 0;
  }

  v4 = *(sub_252B680FC(v3) + 88);

  if (v4 != 1)
  {
    return 0;
  }

  v5 = v1;
  if (qword_27F53F498 != -1)
  {
    swift_once();
  }

  v6 = sub_252E36AD4();
  __swift_project_value_buffer(v6, qword_27F544C70);
  v7 = sub_252E36AC4();
  v8 = sub_252E374C4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = *(sub_252B680FC(v10) + 96);
    v12 = v11;

    *(v9 + 4) = v12;
    *v10 = v11;
    _os_log_impl(&dword_252917000, v7, v8, "Remembered intent: %@", v9, 0xCu);
    sub_25293847C(v10, &qword_27F541B78, &qword_252E4A340);
    MEMORY[0x2530AED00](v10, -1, -1);
    MEMORY[0x2530AED00](v9, -1, -1);
  }

  v14 = *(sub_252B680FC(v13) + 96);

  v15 = [v14 userTask];

  [v5 setUserTask_];
  v17 = *(sub_252B680FC(v16) + 96);
  v18 = v17;

  if (!v17 || (v19 = [v18 filters], v18, !v19))
  {
    v19 = 0;
  }

  [v5 setFilters_];

  return 1;
}

void sub_252C52C48(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = *(a1 + 32);
    v7 = v5 - 1;
    if (v7)
    {
      v8 = (a1 + 40);
      do
      {
        v9 = *v8++;
        v10 = v9;
        if (v9 < v6)
        {
          v6 = v10;
        }

        --v7;
      }

      while (v7);
    }

    if (*(a3 + 16))
    {
      v11 = *(a3 + 32);
      v12 = [v3 userTask];
      v13 = [v12 value];

      [v13 setDoubleValue_];
      v14 = [v3 userTask];
      v15 = [v14 value];
LABEL_9:
      v42 = v15;

      [v42 setUnit_];
    }
  }

  else
  {
    v17 = a2[2];
    if (v17)
    {
      v18 = a2 + 4;
      v19 = MEMORY[0x277D84F90];
      v20 = a2[2];
      do
      {
        v21 = *v18;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_2529F7D44(0, *(v19 + 2) + 1, 1, v19);
        }

        v23 = *(v19 + 2);
        v22 = *(v19 + 3);
        if (v23 >= v22 >> 1)
        {
          v19 = sub_2529F7D44((v22 > 1), v23 + 1, 1, v19);
        }

        *(v19 + 2) = v23 + 1;
        *&v19[8 * v23 + 32] = v21;
        v18 += 2;
        --v20;
      }

      while (v20);
      v24 = a2 + 5;
      v25 = MEMORY[0x277D84F90];
      do
      {
        v26 = *v24;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v25 = sub_2529F7D44(0, *(v25 + 2) + 1, 1, v25);
        }

        v28 = *(v25 + 2);
        v27 = *(v25 + 3);
        if (v28 >= v27 >> 1)
        {
          v25 = sub_2529F7D44((v27 > 1), v28 + 1, 1, v25);
        }

        *(v25 + 2) = v28 + 1;
        *&v25[8 * v28 + 32] = v26;
        v24 += 2;
        --v17;
      }

      while (v17);
    }

    else
    {
      v25 = MEMORY[0x277D84F90];
      v19 = MEMORY[0x277D84F90];
    }

    v29 = sub_252987D34(v19);
    v31 = v30;

    if ((v31 & 1) == 0)
    {
      v32 = sub_252987D34(v25);
      v34 = v33;

      if ((v34 & 1) != 0 || !*(a3 + 16))
      {
        return;
      }

      v35 = *&v32;
      v11 = *(a3 + 32);
      v36 = [v3 userTask];
      v37 = [v36 value];

      v38 = [v37 rangeValue];
      [v38 setLowerValue_];

      v39 = [v3 userTask];
      v40 = [v39 value];

      v41 = [v40 rangeValue];
      [v41 setUpperValue_];

      v14 = [v3 userTask];
      v15 = [v14 value];
      goto LABEL_9;
    }
  }
}

uint64_t sub_252C53048(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541860, &qword_252E40AF0);
  result = sub_252E379A4();
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
  v12 = result + 56;
  v26 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v27 = (v10 - 1) & v10;
LABEL_17:
    v16 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    sub_252E37EC4();
    sub_252E32E84();
    sub_252C547E8();

    sub_252E36E94();
    MEMORY[0x2530AE390](*(v16 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType));

    sub_252E37044();

    result = sub_252E37F14();
    v17 = -1 << *(v9 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 48) + 8 * v20) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v26;
    v10 = v27;
    if (!v5)
    {
      goto LABEL_6;
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
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v27 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_252C532DC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541720, &qword_252E409D8);
  result = sub_252E379A4();
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
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_252E37EC4();

    sub_252E37044();
    result = sub_252E37F14();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
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
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_252C53528(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544600, &qword_252E54DF0);
  result = sub_252E379A4();
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
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v18 = *v16;
    v17 = v16[1];
    sub_252E37EC4();
    sub_252E37EE4();
    if (v17)
    {

      sub_252E37044();
    }

    result = sub_252E37F14();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_29;
        }
      }

      goto LABEL_33;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_29:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 48) + 16 * v22);
    *v27 = v18;
    v27[1] = v17;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_34;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
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
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_252C53768(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = sub_252E36324();
  v7 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  MEMORY[0x28223BE20](v11);
  v48 = &v40 - v13;
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(v51 + 16) == a3)
  {
    return v51;
  }

  v43 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544608, &qword_252E54DF8);
  result = sub_252E379A4();
  v14 = result;
  v42 = v9;
  if (a2 < 1)
  {
    v16 = 0;
  }

  else
  {
    v16 = *a1;
  }

  v17 = 0;
  v45 = result;
  v46 = (v7 + 48);
  v44 = (v7 + 8);
  v41 = (v7 + 32);
  v18 = result + 56;
  v19 = v48;
  v20 = v49;
  while (v16)
  {
    v21 = __clz(__rbit64(v16));
    v47 = (v16 - 1) & v16;
LABEL_16:
    v24 = *(*(v51 + 48) + 8 * (v21 | (v17 << 6)));
    sub_252E37EC4();
    sub_252956C1C(v24 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_attribute, v19);
    v25 = *v46;
    v26 = (*v46)(v19, 1, v20);
    v50 = v24;

    if (v26 == 1)
    {
      sub_25293847C(v19, &qword_27F540298, &unk_252E3C270);
      sub_252E37EE4();
    }

    else
    {
      sub_252E36304();
      (*v44)(v19, v20);
      sub_252E37EE4();
      sub_252E37044();
    }

    v27 = *(v50 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_stateValue);
    if (v27)
    {
      sub_252E37EE4();
      v28 = v43;
      sub_252956C1C(v27 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_stringValue, v43);
      v20 = v49;
      if (v25(v28, 1, v49) == 1)
      {
        sub_25293847C(v28, &qword_27F540298, &unk_252E3C270);
        if (*(v27 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue))
        {

          HomeAutomationAbstractMeasurement.hash(into:)(v52);
        }

        else
        {
          sub_252E37EE4();
        }
      }

      else
      {
        v29 = v28;
        v30 = v42;
        (*v41)(v42, v29, v20);
        sub_252E36304();
        sub_252E37044();

        (*v44)(v30, v20);
      }
    }

    else
    {
      sub_252E37EE4();
      v20 = v49;
    }

    result = sub_252E37F14();
    v14 = v45;
    v31 = -1 << *(v45 + 32);
    v32 = result & ~v31;
    v33 = v32 >> 6;
    v19 = v48;
    if (((-1 << v32) & ~*(v18 + 8 * (v32 >> 6))) == 0)
    {
      v35 = 0;
      v36 = (63 - v31) >> 6;
      while (++v33 != v36 || (v35 & 1) == 0)
      {
        v37 = v33 == v36;
        if (v33 == v36)
        {
          v33 = 0;
        }

        v35 |= v37;
        v38 = *(v18 + 8 * v33);
        if (v38 != -1)
        {
          v34 = __clz(__rbit64(~v38)) + (v33 << 6);
          goto LABEL_36;
        }
      }

      goto LABEL_41;
    }

    v34 = __clz(__rbit64((-1 << v32) & ~*(v18 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_36:
    *(v18 + ((v34 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v34;
    *(*(v14 + 48) + 8 * v34) = v50;
    ++*(v14 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_42;
    }

    v16 = v47;
    if (!a3)
    {
LABEL_38:

      return v14;
    }
  }

  v22 = v17;
  while (1)
  {
    v17 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v17 >= a2)
    {
      goto LABEL_38;
    }

    v23 = a1[v17];
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v47 = (v23 - 1) & v23;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

uint64_t sub_252C53CA8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5445F8, &qword_252E54DE8);
  result = sub_252E379A4();
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
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    result = sub_252E37684();
    v17 = -1 << *(v9 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 48) + 8 * v20) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
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
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_252C53E9C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5445E8, &qword_252E54DD8);
  result = sub_252E379A4();
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
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + (v13 | (v11 << 6)));
    sub_252E37EC4();
    sub_252A9AD58(v16);
    sub_252E37044();

    result = sub_252E37F14();
    v17 = -1 << *(v9 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 48) + v20) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
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
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_252C540C0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541638, &qword_252E40900);
  result = sub_252E379A4();
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
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + (v13 | (v11 << 6)));
    sub_252E37EC4();
    StateSemantic.rawValue.getter();
    sub_252E37044();

    result = sub_252E37F14();
    v17 = -1 << *(v9 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 48) + v20) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
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
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_252C542FC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v6 = a4;
  if (!a3)
  {
    v11 = MEMORY[0x277D84FA0];
LABEL_6:

    return v11;
  }

  v7 = a3;
  if (*(a4 + 16) == a3)
  {
    return v6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  result = sub_252E379A4();
  v11 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_17:
    v18 = *(*(v6 + 48) + 8 * (v15 | (v13 << 6)));
    sub_252E37EC4();
    MEMORY[0x2530AE390](v18);
    result = sub_252E37F14();
    v19 = -1 << *(v11 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v11 + 48) + 8 * v22) = v18;
    ++*(v11 + 16);
    if (__OFSUB__(v7--, 1))
    {
      goto LABEL_32;
    }

    if (!v7)
    {
      goto LABEL_6;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_6;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v12 = (v17 - 1) & v17;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_252C544FC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544610, &qword_252E54E08);
  result = sub_252E379A4();
  v6 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = (*(a4 + 48) + 504 * (v13 | (v11 << 6)));
    memcpy(__dst, v16, 0x1F8uLL);
    memcpy(v28, v16, sizeof(v28));
    sub_252E37EC4();
    sub_2529353AC(__dst, v26);
    HomeAutomationIntent.hash(into:)(v27);
    result = sub_252E37F14();
    v17 = -1 << *(v6 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    result = memcpy((*(v6 + 48) + 504 * v20), __dst, 0x1F8uLL);
    ++*(v6 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
LABEL_28:

      return v6;
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
      goto LABEL_28;
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

void *sub_252C54758(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *))
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

    v8 = sub_252A19310(result, a2, a3, a4);

    return v8;
  }

  return result;
}

unint64_t sub_252C547E8()
{
  result = qword_27F540680;
  if (!qword_27F540680)
  {
    v3 = sub_252E32E84();
    result = swift_getWitnessTable(MEMORY[0x277CC9600], v3, v0, v1);
    atomic_store(result, &qword_27F540680);
  }

  return result;
}

unint64_t sub_252C54840()
{
  result = qword_27F541868;
  if (!qword_27F541868)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F541840, &qword_252E40AD8);
    result = swift_getWitnessTable(MEMORY[0x277D83988], v3, v0, v1);
    atomic_store(result, &qword_27F541868);
  }

  return result;
}

uint64_t sub_252C548A4(uint64_t a1, uint64_t a2)
{
  v3[130] = v2;
  v3[129] = a2;
  v3[128] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540780, &unk_252E50210);
  v3[131] = swift_task_alloc();
  v3[132] = swift_task_alloc();
  v4 = sub_252E34164();
  v3[133] = v4;
  v3[134] = *(v4 - 8);
  v3[135] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252C55C28, 0, 0);
}

uint64_t sub_252C549B0(uint64_t a1, uint64_t a2)
{
  v3[130] = v2;
  v3[129] = a2;
  v3[128] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540780, &unk_252E50210);
  v3[131] = swift_task_alloc();
  v3[132] = swift_task_alloc();
  v4 = sub_252E34164();
  v3[133] = v4;
  v3[134] = *(v4 - 8);
  v3[135] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252C54ABC, 0, 0);
}

uint64_t sub_252C54ABC(uint64_t a1)
{
  v23 = v1;
  v2 = *(v1 + 1040);
  *(sub_252B680FC(a1) + 72) = 1;

  v3 = *(v2 + 64);
  if (v3)
  {
    v4 = *(v1 + 1080);
    v5 = *(v1 + 1072);
    v6 = *(v1 + 1064);
    v7 = v3;
    sub_252E340E4();
    sub_252AB3FEC(v4, 0, __src);
    (*(v5 + 8))(v4, v6);
    memcpy((v1 + 520), __src, 0x1F8uLL);
    memcpy((v1 + 16), __src, 0x1F8uLL);
    if (sub_252956B94((v1 + 16)) == 1)
    {
      if (qword_27F53F500 != -1)
      {
        swift_once();
      }

      v8 = *(v1 + 1080);
      v9 = *(v1 + 1048);
      v10 = sub_252E36AD4();
      __swift_project_value_buffer(v10, qword_27F544DA8);
      __src[0] = 0;
      __src[1] = 0xE000000000000000;
      sub_252E379F4();
      MEMORY[0x2530AD570](0xD000000000000044, 0x8000000252E6C210);
      sub_252E340E4();
      v11 = sub_252AD2138(v8);
      MEMORY[0x2530AD570](v11);

      sub_252CC4050(__src[0], __src[1], 0xD000000000000098, 0x8000000252E88C50, 0xD000000000000021, 0x8000000252E8CC80, 54);

      v12 = sub_252E33DE4();
      (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
      type metadata accessor for ControlHomeIntent();
      sub_252E33D84();
    }

    else
    {
      if (*(v1 + 25) - 2 >= 2)
      {
        v18 = *(v1 + 1056);
        if (*(v1 + 25))
        {
          v19 = MEMORY[0x277D5BED0];
        }

        else
        {
          v19 = MEMORY[0x277D5BED8];
        }

        v20 = *v19;
        v15 = sub_252E33DE4();
        v16 = *(v15 - 8);
        (*(v16 + 104))(v18, v20, v15);
        v17 = 0;
      }

      else
      {
        v15 = sub_252E33DE4();
        v16 = *(v15 - 8);
        v17 = 1;
      }

      (*(v16 + 56))(*(v1 + 1056), v17, 1, v15);
      type metadata accessor for ControlHomeIntent();
      sub_252E33D84();
      sub_25299F5D4(v1 + 520);
    }

    v14 = *(v1 + 8);
  }

  else
  {
    if (qword_27F53F500 != -1)
    {
      swift_once();
    }

    v13 = sub_252E36AD4();
    __swift_project_value_buffer(v13, qword_27F544DA8);
    sub_252CC4050(0xD000000000000048, 0x8000000252E8CC30, 0xD000000000000098, 0x8000000252E88C50, 0xD000000000000021, 0x8000000252E8CC80, 48);
    sub_2529515FC(6, 2, 0xD000000000000016, 0x8000000252E8CCB0);
    type metadata accessor for HomeAutomationError(0);
    sub_252C55B44(&qword_27F540430, 255, type metadata accessor for HomeAutomationError, byte_252E51C7C);
    swift_allocError();
    sub_252E340E4();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v14 = *(v1 + 8);
  }

  return v14();
}

uint64_t sub_252C54FF8(uint64_t a1, uint64_t a2)
{
  v3[18] = a2;
  v3[19] = v2;
  v3[17] = a1;
  v4 = sub_252E33C44();
  v3[20] = v4;
  v3[21] = *(v4 - 8);
  v3[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252C550BC, 0, 0);
}

uint64_t sub_252C550BC()
{
  if (qword_27F53F500 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  v3 = sub_252E36AD4();
  __swift_project_value_buffer(v3, qword_27F544DA8);
  sub_252E379F4();

  v4 = [v1 description];
  v5 = sub_252E36F34();
  v7 = v6;

  MEMORY[0x2530AD570](v5, v7);

  sub_252CC3D90(0xD000000000000025, 0x8000000252E8CCD0, 0xD000000000000097, 0x8000000252E8CD00);

  v8 = *(v2 + 64);
  *(v2 + 64) = v1;
  v9 = v1;

  v10 = [v9 userTask];
  if (v10 && (v11 = v10, v12 = [v10 value], v11, v12))
  {
    v13 = [v12 BOOLValue];
  }

  else
  {
    v13 = 1;
  }

  v14 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v10);
  sub_252929E74((v14 + 288), v0 + 16);

  v15 = *(v0 + 40);
  v16 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v15);
  v17 = (*(v16 + 120))(v15, v16);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  if (v17)
  {
    v18 = *(*(v0 + 152) + 112);
    v19 = swift_task_alloc();
    *(v0 + 184) = v19;
    *v19 = v0;
    v19[1] = sub_252C55450;
    v20 = *(v0 + 136);

    return sub_252C80F04(v20, v13 | 0x8000000000000000, v18);
  }

  else
  {
    v22 = *(v0 + 176);
    v23 = *(v0 + 152);
    sub_252929E74(v23 + 24, v0 + 56);
    v24 = *(v23 + 112);
    v25 = *(v0 + 80);
    v26 = *(v0 + 88);
    __swift_project_boxed_opaque_existential_1((v0 + 56), v25);
    sub_252929E74(v23 + 72, v0 + 96);
    v27 = swift_allocObject();
    *(v0 + 192) = v27;
    sub_252927BEC((v0 + 96), v27 + 16);
    *(v27 + 56) = v13;
    sub_252A6097C(v24, v22);
    v28 = swift_task_alloc();
    *(v0 + 200) = v28;
    *v28 = v0;
    v28[1] = sub_252C55568;
    v29 = *(v0 + 176);
    v30 = *(v0 + 136);

    return sub_252BDB3DC(v30, &unk_252E54F68, v27, v29, v25, v26);
  }
}

uint64_t sub_252C55450()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_252C55568()
{
  v2 = *v1;
  v2[26] = v0;

  if (v0)
  {
    (*(v2[21] + 8))(v2[22], v2[20]);

    return MEMORY[0x2822009F8](sub_252C55708, 0, 0);
  }

  else
  {
    v4 = v2[21];
    v3 = v2[22];
    v5 = v2[20];

    (*(v4 + 8))(v3, v5);
    __swift_destroy_boxed_opaque_existential_1(v2 + 7);

    v6 = v2[1];

    return v6();
  }
}

uint64_t sub_252C55708()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252C55798(uint64_t a1, uint64_t a2)
{
  result = sub_252C55B44(&qword_27F544618, a2, type metadata accessor for ControlHomeReformConfirmationStrategy, byte_252E54EE0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_252C557F0()
{
  swift_getWitnessTable(aI_8);

  return sub_252BEF6A8();
}

uint64_t sub_252C55858(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25294B954;

  return sub_252C549B0(a1, a2);
}

uint64_t sub_252C55914(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25294B954;

  return sub_252C54FF8(a1, v4);
}

uint64_t sub_252C559BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for ControlHomeReformConfirmationStrategy();
  *v8 = v4;
  v8[1] = sub_25294B954;

  return MEMORY[0x2821BA040](a1, a2, v9, a4);
}

uint64_t sub_252C55A80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for ControlHomeReformConfirmationStrategy();
  *v8 = v4;
  v8[1] = sub_25294B954;

  return MEMORY[0x2821BA048](a1, a2, v9, a4);
}

uint64_t sub_252C55B44(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), const char *a4)
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

uint64_t sub_252C55B8C()
{
  v2 = *(v0 + 56);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25294B7BC;

  return sub_252D0A33C(v0 + 16, v2);
}

uint64_t sub_252C55C40(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2 < 2)
  {

    return v1;
  }

  else
  {
    v3 = 0;
    v13 = result + 32;
    v1 = MEMORY[0x277D84F90];
    v12 = *(result + 16);
    while (v3 < v2)
    {
      result = memcpy(__dst, (v13 + 504 * v3), sizeof(__dst));
      if (__OFADD__(v3++, 1))
      {
        goto LABEL_20;
      }

      v5 = __dst[47];
      v6 = *(__dst[47] + 16);
      sub_2529353AC(__dst, v14);
      v7 = (v5 + 32);

      while (2)
      {
        if (v6)
        {
          switch(*v7)
          {
            case 3:

              break;
            default:
              v8 = sub_252E37DB4();

              ++v7;
              --v6;
              if ((v8 & 1) == 0)
              {
                continue;
              }

              break;
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v16 = v1;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_2529AA480(0, *(v1 + 16) + 1, 1);
            v1 = v16;
          }

          v11 = *(v1 + 16);
          v10 = *(v1 + 24);
          if (v11 >= v10 >> 1)
          {
            sub_2529AA480((v10 > 1), v11 + 1, 1);
            v1 = v16;
          }

          *(v1 + 16) = v11 + 1;
          result = memcpy((v1 + 504 * v11 + 32), __dst, 0x1F8uLL);
        }

        else
        {

          result = sub_252935408(__dst);
        }

        break;
      }

      v2 = v12;
      if (v3 == v12)
      {
        return v1;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  return result;
}

uint64_t sub_252C55FB4@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, __int16 *a3@<X8>)
{
  if (a2 && (v4 = result, , *&result = COERCE_DOUBLE(sub_252C5C088(v4, a2)), (v8 & 1) == 0))
  {
    if (qword_27F53F428 != -1)
    {
      v25 = result;
      v23 = v6;
      v24 = v7;
      swift_once();
      v7 = v24;
      v6 = v23;
      result = v25;
    }

    v10 = *(qword_27F575A90 + 16);
    if (v10)
    {
      v11 = (qword_27F575A90 + 56);
      v9 = 695;
      v12 = -1.0;
      do
      {
        v13 = *(v11 - 12);
        v14 = *(v11 - 2);
        v15 = *(v11 - 1);
        v16 = *v11;
        v11 += 4;
        v17 = v14 + 360.0;
        v18 = (v15 - v6) * (v15 - v6);
        v19 = (v16 - v7) * (v16 - v7);
        v20 = sqrt((v14 - *&result) * (v14 - *&result) + v18 + v19);
        v21 = sqrt((v17 - *&result) * (v17 - *&result) + v18 + v19);
        if (v21 < v20)
        {
          v20 = v21;
        }

        v22 = v12 == -1.0;
        if (v20 < v12)
        {
          v22 = 1;
        }

        if (v22)
        {
          v12 = v20;
          v9 = v13;
        }

        --v10;
      }

      while (v10);
    }

    else
    {
      v9 = 695;
    }
  }

  else
  {
    v9 = 709;
  }

  *a3 = v9;
  return result;
}

uint64_t sub_252C56114()
{
  if (qword_27F53F428 != -1)
  {
LABEL_12:
    swift_once();
  }

  v0 = qword_27F575A90;
  v1 = qword_27F575A90 + 56;
  v2 = -*(qword_27F575A90 + 16);
  v3 = -1;
  while (v2 + v3 != -1)
  {
    if (++v3 >= *(v0 + 16))
    {
      __break(1u);
      goto LABEL_12;
    }

    v5 = HueSemantic.rawValue.getter();
    v7 = v6;
    if (v5 == HueSemantic.rawValue.getter() && v7 == v8)
    {

LABEL_9:
      MEMORY[0x2530AD570](977425224, 0xE400000000000000);
      sub_252E37374();
      MEMORY[0x2530AD570](44, 0xE100000000000000);
      sub_252E37374();
      MEMORY[0x2530AD570](44, 0xE100000000000000);
      sub_252E37374();
      MEMORY[0x2530AD570](59, 0xE100000000000000);
      return 0;
    }

    v1 += 32;
    v4 = sub_252E37DB4();

    if (v4)
    {
      goto LABEL_9;
    }
  }

  return 0;
}

BOOL sub_252C562FC()
{
  if (qword_27F53F428 != -1)
  {
LABEL_16:
    swift_once();
  }

  v0 = qword_27F575A90;
  v1 = (qword_27F575A90 + 56);
  v2 = -*(qword_27F575A90 + 16);
  v3 = -1;
  while (1)
  {
    if (v2 + v3 == -1)
    {
      return 0;
    }

    if (++v3 >= *(v0 + 16))
    {
      __break(1u);
      goto LABEL_16;
    }

    v6 = *(v1 - 2);
    v5 = *(v1 - 1);
    v7 = *v1;
    v8 = HueSemantic.rawValue.getter();
    v10 = v9;
    if (v8 == HueSemantic.rawValue.getter() && v10 == v11)
    {
      break;
    }

    v1 += 4;
    v4 = sub_252E37DB4();

    if (v4)
    {
      goto LABEL_9;
    }
  }

LABEL_9:
  v12 = v6 == 0.0;
  if (v5 != 0.0)
  {
    v12 = 0;
  }

  return v7 != 0.0 && v12;
}

uint64_t sub_252C5645C()
{
  if (qword_27F53F428 != -1)
  {
LABEL_12:
    swift_once();
  }

  v0 = qword_27F575A90;
  v1 = qword_27F575A90 + 48;
  v2 = -*(qword_27F575A90 + 16);
  v3 = -1;
  while (v2 + v3 != -1)
  {
    if (++v3 >= *(v0 + 16))
    {
      __break(1u);
      goto LABEL_12;
    }

    v5 = HueSemantic.rawValue.getter();
    v7 = v6;
    if (v5 == HueSemantic.rawValue.getter() && v7 == v8)
    {

LABEL_9:
      MEMORY[0x2530AD570](977425224, 0xE400000000000000);
      sub_252E37374();
      MEMORY[0x2530AD570](44, 0xE100000000000000);
      sub_252E37374();
      MEMORY[0x2530AD570](15148, 0xE200000000000000);
      return 0;
    }

    v1 += 32;
    v4 = sub_252E37DB4();

    if (v4)
    {
      goto LABEL_9;
    }
  }

  return 0;
}

uint64_t sub_252C56614(uint64_t a1)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  HueSemantic.rawValue.getter();
  sub_252E37044();

  if (v2 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v2;
  }

  MEMORY[0x2530AE3C0](*&v5);
  if (v3 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v3;
  }

  MEMORY[0x2530AE3C0](*&v6);
  if (v4 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v4;
  }

  return MEMORY[0x2530AE3C0](*&v7);
}

uint64_t sub_252C566BC()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  sub_252E37EC4();
  HueSemantic.rawValue.getter();
  sub_252E37044();

  if (v1 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v1;
  }

  MEMORY[0x2530AE3C0](*&v4);
  if (v2 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v2;
  }

  MEMORY[0x2530AE3C0](*&v5);
  if (v3 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v3;
  }

  MEMORY[0x2530AE3C0](*&v6);
  return sub_252E37F14();
}

uint64_t sub_252C56784(uint64_t a1)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  sub_252E37EC4();
  HueSemantic.rawValue.getter();
  sub_252E37044();

  if (v2 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v2;
  }

  MEMORY[0x2530AE3C0](*&v5);
  if (v3 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v3;
  }

  MEMORY[0x2530AE3C0](*&v6);
  if (v4 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v4;
  }

  MEMORY[0x2530AE3C0](*&v7);
  return sub_252E37F14();
}

uint64_t sub_252C56844()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544620, &qword_252E57120);
  result = swift_allocObject();
  *(result + 16) = xmmword_252E54FA0;
  *(result + 32) = 0;
  *(result + 40) = xmmword_252E54FB0;
  *(result + 56) = 0x404E000000000000;
  *(result + 64) = 1;
  *(result + 72) = xmmword_252E54FC0;
  *(result + 88) = 0x4059000000000000;
  *(result + 96) = 2;
  *(result + 104) = xmmword_252E54FD0;
  *(result + 120) = 0x4059000000000000;
  *(result + 128) = 3;
  *(result + 136) = xmmword_252E54FE0;
  *(result + 152) = 0x4059000000000000;
  *(result + 160) = 4;
  *(result + 168) = xmmword_252E54FF0;
  *(result + 184) = 0x4059000000000000;
  *(result + 192) = 6;
  *(result + 200) = xmmword_252E55000;
  *(result + 216) = 0x4059000000000000;
  *(result + 224) = 621;
  *(result + 232) = xmmword_252E55010;
  *(result + 248) = 0x4059000000000000;
  *(result + 256) = 7;
  *(result + 264) = 0x406A866666666666;
  *(result + 272) = xmmword_252E55020;
  *(result + 288) = 8;
  *(result + 296) = 0x406A633333333333;
  *(result + 304) = xmmword_252E55030;
  *(result + 320) = 9;
  *(result + 328) = 0x40414CCCCCCCCCCDLL;
  *(result + 336) = xmmword_252E55040;
  *(result + 352) = 10;
  *(result + 360) = 0x4063166666666666;
  *(result + 368) = xmmword_252E55050;
  *(result + 384) = 11;
  *(result + 392) = 0x4069FCCCCCCCCCCDLL;
  *(result + 400) = xmmword_252E55060;
  *(result + 416) = 12;
  *(result + 424) = 0x4022666666666666;
  *(result + 432) = xmmword_252E55070;
  *(result + 448) = 13;
  *(result + 456) = 0x407174CCCCCCCCCDLL;
  v1 = vdupq_n_s64(0x4059000000000000uLL);
  *(result + 464) = v1;
  *(result + 480) = 14;
  *(result + 488) = 0x406809999999999ALL;
  *(result + 496) = xmmword_252E55080;
  *(result + 512) = 15;
  strcpy((result + 520), "3333338@333333>@");
  *(result + 537) = 0;
  *(result + 538) = 0;
  *(result + 540) = 1079574528;
  *(result + 544) = 16;
  *(result + 552) = 0x406839999999999ALL;
  *(result + 560) = xmmword_252E55070;
  *(result + 576) = 17;
  *(result + 584) = 0x4041F33333333333;
  *(result + 592) = xmmword_252E550A0;
  *(result + 608) = 18;
  *(result + 616) = 0x4069800000000000;
  *(result + 624) = xmmword_252E550B0;
  *(result + 640) = 19;
  *(result + 648) = 0x406A000000000000;
  *(result + 656) = xmmword_252E550C0;
  *(result + 672) = 20;
  *(result + 680) = 0x40762E6666666666;
  *(result + 688) = xmmword_252E550D0;
  *(result + 704) = 21;
  *(result + 712) = 0x403E000000000000;
  *(result + 720) = xmmword_252E550E0;
  *(result + 736) = 22;
  *(result + 744) = 0x4075C1999999999ALL;
  *(result + 752) = xmmword_252E550F0;
  *(result + 768) = 23;
  *(result + 776) = 0x4046733333333333;
  *(result + 784) = v1;
  *(result + 800) = 24;
  *(result + 808) = 0x4075A00000000000;
  *(result + 816) = xmmword_252E55100;
  *(result + 832) = 25;
  *(result + 840) = 0x4070E00000000000;
  *(result + 848) = xmmword_252E55110;
  *(result + 864) = 26;
  *(result + 872) = 0x4035CCCCCCCCCCCDLL;
  *(result + 880) = xmmword_252E55120;
  *(result + 896) = 27;
  *(result + 904) = 0x4073BCCCCCCCCCCDLL;
  *(result + 912) = xmmword_252E55130;
  *(result + 928) = 28;
  *(result + 936) = 0x4041266666666666;
  *(result + 944) = xmmword_252E55140;
  *(result + 960) = 29;
  *(result + 968) = 0x4037800000000000;
  *(result + 976) = xmmword_252E55150;
  *(result + 992) = 30;
  *(result + 1000) = 0x4066800000000000;
  *(result + 1008) = v1;
  *(result + 1024) = 31;
  *(result + 1032) = 0x4063F9999999999ALL;
  *(result + 1040) = xmmword_252E55160;
  *(result + 1056) = 32;
  *(result + 1064) = 0x405159999999999ALL;
  *(result + 1072) = xmmword_252E55170;
  *(result + 1088) = 33;
  *(result + 1096) = 0x4049800000000000;
  *(result + 1104) = xmmword_252E55180;
  *(result + 1120) = 34;
  *(result + 1128) = 0x4060E00000000000;
  *(result + 1136) = xmmword_252E55190;
  *(result + 1152) = 35;
  *(result + 1160) = 0x405739999999999ALL;
  *(result + 1168) = xmmword_252E551A0;
  *(result + 1184) = 36;
  *(result + 1192) = 0x4034000000000000;
  *(result + 1200) = xmmword_252E551B0;
  *(result + 1216) = 37;
  *(result + 1224) = 0;
  *(result + 1232) = xmmword_252E551C0;
  *(result + 1248) = 38;
  *(result + 1256) = 0x404C333333333333;
  *(result + 1264) = xmmword_252E551D0;
  *(result + 1280) = 39;
  *(result + 1288) = 0x4066E9999999999ALL;
  *(result + 1296) = xmmword_252E551E0;
  *(result + 1312) = 40;
  *(result + 1320) = 0x406A433333333333;
  *(result + 1328) = v1;
  *(result + 1344) = 41;
  *(result + 1352) = 0x4068E66666666666;
  *(result + 1360) = xmmword_252E551F0;
  *(result + 1376) = 42;
  *(result + 1384) = 0;
  *(result + 1392) = xmmword_252E55200;
  *(result + 1408) = 43;
  *(result + 1416) = 0x4045C00000000000;
  *(result + 1424) = xmmword_252E55210;
  *(result + 1440) = 44;
  *(result + 1448) = 0x40498CCCCCCCCCCDLL;
  *(result + 1456) = xmmword_252E55220;
  *(result + 1472) = 45;
  *(result + 1480) = 0x404E000000000000;
  *(result + 1488) = xmmword_252E55230;
  *(result + 1504) = 46;
  *(result + 1536) = 47;
  *(result + 1552) = xmmword_252E55250;
  *(result + 1568) = 48;
  *(result + 1576) = 0x4040400000000000;
  *(result + 1584) = xmmword_252E55260;
  *(result + 1600) = 49;
  *(result + 1608) = 0x4038000000000000;
  *(result + 1616) = xmmword_252E55270;
  *(result + 1632) = 50;
  *(result + 1640) = 0x401999999999999ALL;
  *(result + 1648) = xmmword_252E55280;
  *(result + 1664) = 51;
  *(result + 1672) = 0u;
  *(result + 1696) = 52;
  *(result + 1704) = 0x4042000000000000;
  *(result + 1728) = 53;
  *(result + 1744) = xmmword_252E552A0;
  *(result + 1760) = 54;
  *(result + 1768) = 0x4049000000000000;
  *(result + 1776) = xmmword_252E552B0;
  *(result + 1792) = 55;
  *(result + 1824) = 56;
  *(result + 1840) = xmmword_252E55110;
  *(result + 1856) = 57;
  *(result + 1864) = 0x4067F9999999999ALL;
  *(result + 1872) = xmmword_252E552C0;
  *(result + 1888) = 58;
  *(result + 1896) = 0x4070F1999999999ALL;
  *(result + 1904) = xmmword_252E552D0;
  *(result + 1920) = 59;
  *(result + 1928) = 0x4070F1999999999ALL;
  *(result + 1936) = xmmword_252E552D0;
  *(result + 1952) = 60;
  *(result + 1960) = 0x407564CCCCCCCCCDLL;
  *(result + 1968) = xmmword_252E552E0;
  *(result + 1984) = 61;
  *(result + 2000) = xmmword_252E552F0;
  *(result + 2016) = 62;
  *(result + 2032) = xmmword_252E55300;
  *(result + 2048) = 63;
  *(result + 2080) = 64;
  *(result + 2088) = 0x4064866666666666;
  *(result + 2096) = xmmword_252E55320;
  *(result + 2112) = 65;
  *(result + 2120) = 0x4074780000000000;
  *(result + 2128) = xmmword_252E55330;
  *(result + 2144) = 66;
  *(result + 2152) = 0x406AB33333333333;
  *(result + 2176) = 67;
  *(result + 2184) = 0x404A19999999999ALL;
  *(result + 2192) = xmmword_252E55340;
  *(result + 2208) = 68;
  *(result + 2216) = 0x4075FB3333333333;
  *(result + 2224) = xmmword_252E55350;
  *(result + 2240) = 69;
  *(result + 2256) = xmmword_252E55360;
  *(result + 2272) = 70;
  *(result + 2288) = xmmword_252E55370;
  *(result + 2304) = 71;
  *(result + 2312) = 0u;
  *(result + 2336) = 73;
  *(result + 2344) = 0x406C800000000000;
  *(result + 2352) = xmmword_252E55380;
  *(result + 2368) = 72;
  *(result + 2376) = 0x4050400000000000;
  *(result + 2384) = xmmword_252E55390;
  *(result + 2400) = 74;
  *(result + 2408) = 0x4068333333333333;
  *(result + 2416) = xmmword_252E553A0;
  *(result + 2432) = 75;
  *(result + 2440) = 0x4058000000000000;
  *(result + 2464) = 76;
  *(result + 2472) = 0x407104CCCCCCCCCDLL;
  *(result + 2480) = xmmword_252E553B0;
  *(result + 2496) = 77;
  *(result + 2504) = 0x407599999999999ALL;
  *(result + 2512) = xmmword_252E553C0;
  *(result + 2528) = 78;
  *(result + 2560) = 79;
  *(result + 2576) = xmmword_252E553D0;
  *(result + 2592) = 80;
  *(result + 2600) = 0x407224CCCCCCCCCDLL;
  *(result + 2608) = xmmword_252E553E0;
  *(result + 2624) = 81;
  *(result + 2632) = 0x4074C80000000000;
  *(result + 2640) = xmmword_252E553F0;
  *(result + 2656) = 82;
  *(result + 2664) = 0x4063333333333333;
  *(result + 2688) = 83;
  *(result + 2696) = 0x403DCCCCCCCCCCCDLL;
  *(result + 2720) = 84;
  *(result + 2752) = 85;
  *(result + 2760) = 0x4075D66666666666;
  *(result + 2768) = xmmword_252E55420;
  *(result + 2784) = 86;
  *(result + 2792) = 0x40488CCCCCCCCCCDLL;
  *(result + 2800) = xmmword_252E55430;
  *(result + 2816) = 87;
  *(result + 2832) = xmmword_252E55440;
  *(result + 2848) = 88;
  *(result + 2880) = 89;
  *(result + 2888) = 0x4040E66666666666;
  *(result + 2896) = xmmword_252E55460;
  *(result + 2912) = 90;
  *(result + 2944) = 92;
  *(result + 2976) = 91;
  *(result + 2984) = 0x402B99999999999ALL;
  *(result + 2992) = xmmword_252E55470;
  *(result + 3008) = 92;
  *(result + 3016) = 0x402199999999999ALL;
  *(result + 3024) = xmmword_252E55480;
  *(result + 3040) = 93;
  *(result + 3048) = 0x40736E6666666666;
  *(result + 3056) = xmmword_252E55490;
  *(result + 3072) = 94;
  *(result + 3080) = 0x4073700000000000;
  *(result + 3088) = xmmword_252E554A0;
  *(result + 3104) = 95;
  *(result + 3112) = 0x4068733333333333;
  *(result + 3136) = 96;
  *(result + 3144) = 0x400E666666666666;
  *(result + 3152) = xmmword_252E554C0;
  *(result + 3168) = 97;
  *(result + 3176) = 0x4068ECCCCCCCCCCDLL;
  *(result + 3184) = xmmword_252E554D0;
  *(result + 3200) = 98;
  *(result + 3208) = 0x4066B9999999999ALL;
  *(result + 3216) = xmmword_252E554E0;
  *(result + 3232) = 99;
  *(result + 3240) = 0x4069A66666666666;
  *(result + 3248) = xmmword_252E554F0;
  *(result + 3264) = 100;
  *(result + 3272) = 0x4063333333333333;
  *(result + 3280) = xmmword_252E55500;
  *(result + 3296) = 101;
  *(result + 3304) = 0x403C19999999999ALL;
  *(result + 3312) = xmmword_252E55510;
  *(result + 3328) = 102;
  *(result + 3344) = xmmword_252E55520;
  *(result + 3360) = 100;
  *(result + 3368) = 0x404CF33333333333;
  *(result + 3392) = 103;
  *(result + 3400) = 0x404CF33333333333;
  *(result + 3424) = 104;
  *(result + 3432) = 0x4061133333333333;
  *(result + 3440) = xmmword_252E55530;
  *(result + 3456) = 105;
  *(result + 3472) = xmmword_252E55540;
  *(result + 3488) = 106;
  *(result + 3496) = 0x4056C66666666666;
  *(result + 3504) = xmmword_252E55550;
  *(result + 3520) = 107;
  *(result + 3632) = xmmword_252E55570;
  *(result + 3696) = xmmword_252E55580;
  *(result + 3760) = xmmword_252E55590;
  *(result + 3856) = xmmword_252E555A0;
  *(result + 3920) = xmmword_252E555B0;
  *(result + 3952) = xmmword_252E555C0;
  *(result + 3984) = xmmword_252E555D0;
  *(result + 4016) = xmmword_252E555E0;
  *(result + 4048) = xmmword_252E555F0;
  *(result + 4080) = xmmword_252E55090;
  *(result + 4112) = xmmword_252E55600;
  *(result + 4144) = xmmword_252E55610;
  *(result + 4176) = xmmword_252E55620;
  *(result + 4240) = xmmword_252E55640;
  *(result + 4272) = xmmword_252E55650;
  *(result + 4336) = xmmword_252E55670;
  *(result + 4352) = 132;
  *(result + 4360) = 0x4056866666666666;
  *(result + 4384) = 133;
  *(result + 4400) = xmmword_252E55610;
  *(result + 4416) = 134;
  *(result + 4424) = 0x4075C4CCCCCCCCCDLL;
  *(result + 4432) = xmmword_252E55680;
  *(result + 4448) = 135;
  *(result + 4464) = xmmword_252E55690;
  *(result + 4480) = 136;
  *(result + 4496) = xmmword_252E556A0;
  *(result + 4560) = xmmword_252E556B0;
  *(result + 4624) = xmmword_252E556A0;
  *(result + 4656) = xmmword_252E556D0;
  *(result + 4688) = xmmword_252E556E0;
  *(result + 4720) = xmmword_252E556F0;
  *(result + 4752) = xmmword_252E556A0;
  *(result + 4784) = xmmword_252E55700;
  *(result + 4816) = xmmword_252E55710;
  *(result + 4848) = xmmword_252E55720;
  *(result + 4880) = xmmword_252E55730;
  *(result + 4912) = xmmword_252E55740;
  *(result + 4944) = xmmword_252E55750;
  *(result + 5008) = xmmword_252E55760;
  *(result + 5040) = xmmword_252E55770;
  *(result + 5072) = xmmword_252E55780;
  *(result + 5104) = xmmword_252E55790;
  *(result + 5168) = xmmword_252E555C0;
  *(result + 5184) = 158;
  *(result + 5192) = 0x4069300000000000;
  *(result + 5200) = xmmword_252E557B0;
  *(result + 5216) = 159;
  *(result + 5224) = 0x406B500000000000;
  *(result + 5232) = xmmword_252E557C0;
  *(result + 5248) = 160;
  *(result + 5264) = xmmword_252E557D0;
  *(result + 5280) = 161;
  *(result + 5296) = xmmword_252E557E0;
  *(result + 5312) = 162;
  *(result + 5320) = 0x4074E00000000000;
  *(result + 5328) = xmmword_252E557F0;
  *(result + 5344) = 163;
  *(result + 5352) = 0x404CB33333333333;
  *(result + 5392) = xmmword_252E55810;
  *(result + 5440) = 166;
  *(result + 5448) = 0x4075833333333333;
  *(result + 5520) = xmmword_252E55840;
  *(result + 5552) = xmmword_252E55850;
  *(result + 5568) = 170;
  *(result + 5600) = 171;
  *(result + 5648) = xmmword_252E55880;
  *(result + 5664) = 173;
  *(result + 5680) = xmmword_252E55890;
  *(result + 5696) = 174;
  *(result + 5704) = 0x406A200000000000;
  *(result + 5712) = xmmword_252E558A0;
  *(result + 5728) = 175;
  *(result + 5736) = 0x4023333333333333;
  *(result + 5744) = xmmword_252E558B0;
  *(result + 5760) = 176;
  *(result + 5768) = 0x4023666666666666;
  *(result + 5776) = xmmword_252E558C0;
  *(result + 5792) = 177;
  *(result + 5824) = 178;
  *(result + 5856) = 179;
  *(result + 5864) = 0x404559999999999ALL;
  *(result + 6824) = 0x403B4CCCCCCCCCCDLL;
  *(result + 9408) = 290;
  *(result + 9376) = 289;
  *(result + 9384) = 0x4042333333333333;
  *(result + 9392) = xmmword_252E55DE0;
  *(result + 9096) = 0x4072C00000000000;
  *(result + 9344) = 288;
  *(result + 9352) = 0x40494CCCCCCCCCCDLL;
  *(result + 9360) = v1;
  *(result + 9320) = 0x406D400000000000;
  *(result + 9328) = xmmword_252E55DD0;
  *(result + 9288) = 0x406B09999999999ALL;
  *(result + 9296) = xmmword_252E55DC0;
  *(result + 9312) = 287;
  *(result + 9264) = xmmword_252E55DB0;
  *(result + 9280) = 286;
  *(result + 9200) = xmmword_252E55D90;
  *(result + 9248) = 285;
  *(result + 9256) = 0x4041333333333333;
  *(result + 9216) = 284;
  *(result + 9224) = 0x406E000000000000;
  *(result + 9232) = xmmword_252E55DA0;
  *(result + 9184) = 283;
  *(result + 9192) = 0x4043B33333333333;
  *(result + 9152) = 282;
  *(result + 9160) = 0u;
  *(result + 9176) = 0x4055933333333333;
  *(result + 9104) = xmmword_252E55D80;
  *(result + 9120) = 281;
  *(result + 9128) = 0;
  *(result + 9136) = xmmword_252E55110;
  *(result + 9064) = 0x4072C00000000000;
  *(result + 9072) = v1;
  *(result + 9088) = 280;
  *(result + 9040) = xmmword_252E55D70;
  *(result + 9056) = 279;
  *(result + 9008) = xmmword_252E55D60;
  *(result + 9024) = 278;
  *(result + 9032) = 0x40751B3333333333;
  *(result + 7360) = 226;
  *(result + 8992) = 277;
  *(result + 9000) = 0x407219999999999ALL;
  *(result + 8960) = 276;
  *(result + 8968) = 0x40696CCCCCCCCCCDLL;
  *(result + 8976) = xmmword_252E55D50;
  *(result + 8936) = 0x403999999999999ALL;
  *(result + 8944) = xmmword_252E55D40;
  *(result + 8904) = 0x405E000000000000;
  *(result + 8912) = xmmword_252E55D30;
  *(result + 8928) = 275;
  *(result + 8864) = 273;
  *(result + 8872) = 0x4075566666666666;
  *(result + 8880) = v1;
  *(result + 8896) = 274;
  *(result + 8840) = 0x4052000000000000;
  *(result + 8848) = v1;
  *(result + 8800) = 271;
  *(result + 8808) = 0x407479999999999ALL;
  *(result + 8816) = xmmword_252E55B50;
  *(result + 8832) = 272;
  *(result + 8768) = 270;
  *(result + 8776) = 0x4046733333333333;
  *(result + 8784) = v1;
  *(result + 8720) = xmmword_252E55D20;
  *(result + 8736) = 269;
  *(result + 8744) = 0x4044000000000000;
  *(result + 8752) = xmmword_252E550C0;
  *(result + 8704) = 268;
  *(result + 8712) = 0x4049000000000000;
  *(result + 8672) = 267;
  *(result + 8680) = 0x404A000000000000;
  *(result + 8688) = xmmword_252E55D10;
  *(result + 8648) = 0x407579999999999ALL;
  *(result + 8656) = xmmword_252E55D00;
  *(result + 8616) = 0x4030E66666666666;
  *(result + 8624) = xmmword_252E55CF0;
  *(result + 8640) = 266;
  *(result + 8584) = 0;
  *(result + 8592) = xmmword_252E55CE0;
  *(result + 8608) = 265;
  *(result + 8560) = xmmword_252E55CD0;
  *(result + 8576) = 264;
  *(result + 8528) = xmmword_252E55CC0;
  *(result + 8544) = 263;
  *(result + 8552) = 0x40764E6666666666;
  *(result + 7376) = xmmword_252E55B40;
  *(result + 8512) = 262;
  *(result + 8520) = 0x4044C00000000000;
  *(result + 8464) = xmmword_252E55CB0;
  *(result + 8480) = 261;
  *(result + 8488) = 0x4022CCCCCCCCCCCDLL;
  *(result + 8496) = v1;
  *(result + 8448) = 260;
  *(result + 8456) = 0x405A733333333333;
  *(result + 8416) = 259;
  *(result + 8424) = 0x405F666666666666;
  *(result + 8432) = xmmword_252E55CA0;
  *(result + 8392) = 0x403DB33333333333;
  *(result + 8400) = xmmword_252E55C90;
  *(result + 8360) = 0x4074066666666666;
  *(result + 8368) = xmmword_252E55C80;
  *(result + 8384) = 258;
  *(result + 8328) = 0;
  *(result + 8336) = xmmword_252E55C70;
  *(result + 8352) = 257;
  *(result + 8320) = 256;
  *(result + 8304) = xmmword_252E55B80;
  *(result + 8288) = 255;
  *(result + 8272) = xmmword_252E55C60;
  *(result + 8296) = 0x4040666666666666;
  *(result + 8208) = v1;
  *(result + 8256) = 254;
  *(result + 8264) = 0x4060CCCCCCCCCCCDLL;
  *(result + 8224) = 253;
  *(result + 8232) = 0x4061800000000000;
  *(result + 8240) = xmmword_252E55C50;
  *(result + 0x2000) = 252;
  *(result + 8200) = 0x407119999999999ALL;
  *(result + 8176) = v1;
  *(result + 8136) = 0x4071CE6666666666;
  *(result + 8144) = v1;
  *(result + 8160) = 251;
  *(result + 8168) = 0x406FD9999999999ALL;
  *(result + 8096) = 249;
  *(result + 8104) = 0x4052000000000000;
  *(result + 8112) = v1;
  *(result + 8128) = 250;
  *(result + 7568) = xmmword_252E55B90;
  *(result + 8048) = v1;
  *(result + 8064) = 248;
  *(result + 8072) = 0x407224CCCCCCCCCDLL;
  *(result + 8080) = xmmword_252E553E0;
  *(result + 8008) = 0x4066800000000000;
  *(result + 8016) = v1;
  *(result + 8032) = 247;
  *(result + 8040) = 0x4070A1999999999ALL;
  *(result + 7976) = 0x4075933333333333;
  *(result + 7984) = v1;
  *(result + 8000) = 246;
  *(result + 7952) = xmmword_252E55C40;
  *(result + 7968) = 245;
  *(result + 7920) = xmmword_252E55C30;
  *(result + 7936) = 244;
  *(result + 7944) = 0x4066D9999999999ALL;
  *(result + 7904) = 243;
  *(result + 7912) = 0x406C333333333333;
  *(result + 7872) = 242;
  *(result + 7880) = 0x404719999999999ALL;
  *(result + 7888) = xmmword_252E55C20;
  *(result + 7848) = 0x407491999999999ALL;
  *(result + 7856) = xmmword_252E55C10;
  *(result + 7816) = 0x4046C00000000000;
  *(result + 7824) = xmmword_252E55C00;
  *(result + 7840) = 241;
  *(result + 7808) = 240;
  *(result + 7792) = xmmword_252E55BF0;
  *(result + 7760) = xmmword_252E55BE0;
  *(result + 7776) = 239;
  *(result + 7784) = 0x404119999999999ALL;
  *(result + 7728) = xmmword_252E55BD0;
  *(result + 7744) = 238;
  *(result + 7752) = 0x406E000000000000;
  *(result + 7680) = 236;
  *(result + 7712) = 237;
  *(result + 7720) = 0x4045400000000000;
  *(result + 7688) = 0x40586CCCCCCCCCCDLL;
  *(result + 7664) = xmmword_252E55BB0;
  *(result + 7696) = xmmword_252E55BC0;
  *(result + 7648) = 235;
  *(result + 7656) = 0x4074EE6666666666;
  *(result + 7632) = xmmword_252E55BA0;
  *(result + 7624) = 0x406A333333333333;
  *(result + 7592) = 0u;
  *(result + 7608) = 0x404499999999999ALL;
  *(result + 7616) = 234;
  *(result + 7552) = 232;
  *(result + 7584) = 233;
  *(result + 7560) = 0x4039333333333333;
  *(result + 7520) = 231;
  *(result + 7504) = xmmword_252E55B70;
  *(result + 7528) = 0x4040666666666666;
  *(result + 7536) = xmmword_252E55B80;
  *(result + 7488) = 230;
  *(result + 7496) = 0x406AA66666666666;
  *(result + 7456) = 229;
  *(result + 7440) = xmmword_252E55B60;
  *(result + 7464) = 0x4068633333333333;
  *(result + 7472) = v1;
  *(result + 7392) = 227;
  *(result + 7400) = 0x407479999999999ALL;
  *(result + 7424) = 228;
  *(result + 7408) = xmmword_252E55B50;
  *(result + 7432) = 0x403E000000000000;
  *(result + 2064) = xmmword_252E55310;
  *(result + 2928) = xmmword_252E55310;
  *(result + 2960) = xmmword_252E55310;
  *(result + 3792) = xmmword_252E55310;
  *(result + 7368) = 0x4039B33333333333;
  *(result + 7344) = xmmword_252E55310;
  *(result + 7304) = 0x4071800000000000;
  *(result + 7336) = 0x4072C00000000000;
  *(result + 6704) = xmmword_252E55A30;
  *(result + 7328) = 225;
  *(result + 7312) = xmmword_252E55B30;
  *(result + 7296) = 224;
  *(result + 7280) = xmmword_252E55B20;
  *(result + 7264) = 223;
  *(result + 7272) = 0x40664CCCCCCCCCCDLL;
  *(result + 7248) = xmmword_252E55B10;
  *(result + 6984) = 0u;
  *(result + 9544) = 0u;
  *(result + 11624) = 0u;
  *(result + 6736) = xmmword_252E55A40;
  *(result + 6720) = 205;
  *(result + 6728) = 0x4062C9999999999ALL;
  *(result + 6672) = xmmword_252E55A20;
  *(result + 6688) = 204;
  *(result + 6696) = 0x4066800000000000;
  *(result + 6624) = 202;
  *(result + 6656) = 203;
  *(result + 6664) = 0x406F100000000000;
  *(result + 6160) = xmmword_252E55950;
  *(result + 6608) = xmmword_252E55A00;
  *(result + 6632) = 0;
  *(result + 6640) = xmmword_252E55A10;
  *(result + 6592) = 201;
  *(result + 6600) = 0x405E000000000000;
  *(result + 6568) = 0x407581999999999ALL;
  *(result + 6192) = xmmword_252E55960;
  *(result + 6576) = xmmword_252E559F0;
  *(result + 6544) = xmmword_252E559E0;
  *(result + 6560) = 200;
  *(result + 6528) = 199;
  *(result + 6536) = 0x402E333333333333;
  *(result + 6256) = xmmword_252E55970;
  *(result + 6512) = xmmword_252E55860;
  *(result + 6496) = 198;
  *(result + 6480) = xmmword_252E559D0;
  *(result + 6504) = 0;
  *(result + 6464) = 197;
  *(result + 6472) = 0x40749B3333333333;
  *(result + 6432) = 196;
  *(result + 6416) = xmmword_252E559C0;
  *(result + 6440) = 0x406B800000000000;
  *(result + 6448) = xmmword_252E55820;
  *(result + 6400) = 195;
  *(result + 6408) = 0x4075600000000000;
  *(result + 6384) = xmmword_252E559B0;
  *(result + 6344) = 0x40706B3333333333;
  *(result + 6376) = 0x4022CCCCCCCCCCCDLL;
  *(result + 6320) = xmmword_252E55990;
  *(result + 6368) = 194;
  *(result + 6352) = xmmword_252E559A0;
  *(result + 6312) = 0x4061433333333333;
  *(result + 6336) = 193;
  *(result + 6304) = 192;
  *(result + 6280) = 0x406A833333333333;
  *(result + 6288) = xmmword_252E55980;
  *(result + 6248) = 0x407181999999999ALL;
  *(result + 6272) = 191;
  *(result + 6112) = 213;
  *(result + 6240) = 190;
  *(result + 6216) = 0x4040733333333333;
  *(result + 6224) = v1;
  *(result + 6120) = 0x40636CCCCCCCCCCDLL;
  *(result + 6184) = 0x4054800000000000;
  *(result + 6208) = 189;
  *(result + 6144) = 187;
  *(result + 6176) = 188;
  *(result + 6152) = 0x406A400000000000;
  *(result + 5584) = xmmword_252E55860;
  *(result + 5808) = xmmword_252E55860;
  *(result + 6096) = xmmword_252E55860;
  *(result + 6128) = xmmword_252E55940;
  *(result + 6080) = 186;
  *(result + 6088) = 0x4072C00000000000;
  *(result + 6056) = 0x4070E66666666666;
  *(result + 5936) = xmmword_252E558F0;
  *(result + 6064) = xmmword_252E55930;
  *(result + 6048) = 185;
  *(result + 6000) = xmmword_252E55910;
  *(result + 6024) = 0x403B4CCCCCCCCCCDLL;
  *(result + 6032) = xmmword_252E55920;
  *(result + 5992) = 0x404BCCCCCCCCCCCDLL;
  *(result + 6016) = 184;
  *(result + 5984) = 183;
  *(result + 5960) = 0x4064400000000000;
  *(result + 5968) = xmmword_252E55900;
  *(result + 5888) = 180;
  *(result + 5952) = 182;
  *(result + 5896) = 0u;
  *(result + 5920) = 181;
  *(result + 5928) = 0x4063C00000000000;
  *(result + 5912) = 0x4050933333333333;
  *(result + 5872) = xmmword_252E558E0;
  *(result + 6768) = xmmword_252E55A50;
  *(result + 6800) = xmmword_252E55A60;
  *(result + 6864) = xmmword_252E55A70;
  *(result + 6896) = xmmword_252E55A80;
  *(result + 6928) = xmmword_252E55A90;
  *(result + 5832) = 0x4069BCCCCCCCCCCDLL;
  *(result + 5840) = xmmword_252E558D0;
  *(result + 6960) = xmmword_252E55AA0;
  *(result + 7024) = xmmword_252E55AB0;
  *(result + 5800) = 0x4066800000000000;
  *(result + 7056) = xmmword_252E55AC0;
  *(result + 7088) = xmmword_252E55AD0;
  *(result + 7120) = xmmword_252E55AE0;
  *(result + 7184) = xmmword_252E55AF0;
  *(result + 7216) = xmmword_252E55B00;
  *(result + 9497) = 0;
  *(result + 9498) = 0;
  *(result + 9500) = 1079336960;
  *(result + 9520) = xmmword_252E55E10;
  *(result + 9616) = xmmword_252E55E20;
  *(result + 9648) = xmmword_252E55E30;
  *(result + 9680) = xmmword_252E55E40;
  *(result + 9744) = xmmword_252E55E50;
  *(result + 5672) = 0;
  *(result + 9776) = xmmword_252E55E60;
  *(result + 5632) = 172;
  *(result + 5616) = xmmword_252E55870;
  *(result + 5640) = 0x4073B00000000000;
  *(result + 9808) = xmmword_252E55180;
  *(result + 5608) = 0x403E000000000000;
  *(result + 9840) = xmmword_252E55E70;
  *(result + 9872) = xmmword_252E55E80;
  *(result + 5576) = 0x406E000000000000;
  *(result + 9936) = xmmword_252E55E90;
  *(result + 5536) = 169;
  *(result + 5544) = 0x404BA66666666666;
  *(result + 5472) = 167;
  *(result + 5504) = 168;
  *(result + 5488) = v1;
  *(result + 5512) = 0x404E000000000000;
  *(result + 9968) = xmmword_252E55C80;
  *(result + 5456) = xmmword_252E55830;
  *(result + 5480) = 0x4066800000000000;
  *(result + 10032) = xmmword_252E55EA0;
  *(result + 10096) = xmmword_252E55EC0;
  *(result + 5424) = xmmword_252E55820;
  *(result + 10160) = xmmword_252E55ED0;
  *(result + 5408) = 165;
  *(result + 5416) = 0;
  *(result + 5376) = 164;
  *(result + 5384) = 0x4075C00000000000;
  *(result + 4208) = xmmword_252E55630;
  *(result + 10192) = xmmword_252E55630;
  *(result + 10256) = xmmword_252E55EE0;
  *(result + 5360) = xmmword_252E55800;
  *(result + 10288) = xmmword_252E55EF0;
  *(result + 10384) = xmmword_252E55F10;
  *(result + 10416) = xmmword_252E55F20;
  *(result + 10448) = xmmword_252E55F30;
  *(result + 10512) = xmmword_252E55F50;
  *(result + 5288) = 0x4045400000000000;
  *(result + 10544) = xmmword_252E55F60;
  *(result + 10576) = xmmword_252E55F70;
  *(result + 5256) = 0x4048000000000000;
  *(result + 10608) = xmmword_252E55F80;
  *(result + 10640) = xmmword_252E55F90;
  *(result + 10672) = xmmword_252E55FA0;
  *(result + 10704) = xmmword_252E55FB0;
  *(result + 10736) = xmmword_252E55FC0;
  *(result + 10768) = xmmword_252E55FD0;
  *(result + 10800) = xmmword_252E55FE0;
  *(result + 5160) = 0;
  *(result + 10832) = xmmword_252E55FF0;
  *(result + 5152) = 157;
  *(result + 5128) = 0x404B266666666666;
  *(result + 5136) = xmmword_252E557A0;
  *(result + 5088) = 155;
  *(result + 5096) = 0x407631999999999ALL;
  *(result + 5120) = 156;
  *(result + 4512) = 137;
  *(result + 5056) = 154;
  *(result + 5064) = 0;
  *(result + 4520) = 0x4043A66666666666;
  *(result + 5024) = 153;
  *(result + 5032) = 0x4012CCCCCCCCCCCDLL;
  *(result + 4544) = 138;
  *(result + 4992) = 152;
  *(result + 5000) = 0x403019999999999ALL;
  *(result + 4552) = 0x4028CCCCCCCCCCCDLL;
  *(result + 4960) = 151;
  *(result + 4968) = 0x402A666666666666;
  *(result + 4976) = v1;
  *(result + 4608) = 140;
  *(result + 4928) = 150;
  *(result + 4936) = 0;
  *(result + 4640) = 141;
  *(result + 4896) = 149;
  *(result + 4904) = 0x403CE66666666666;
  *(result + 4648) = 0x404B400000000000;
  *(result + 4864) = 148;
  *(result + 4872) = 0x406C99999999999ALL;
  *(result + 4672) = 142;
  *(result + 4680) = 0x4074580000000000;
  *(result + 4832) = 147;
  *(result + 4840) = 0x406A833333333333;
  *(result + 4704) = 143;
  *(result + 4800) = 146;
  *(result + 4808) = 0x40690CCCCCCCCCCDLL;
  *(result + 4768) = 145;
  *(result + 4776) = 0x403899999999999ALL;
  *(result + 4744) = 0x4039000000000000;
  *(result + 4712) = 0x406AE33333333333;
  *(result + 4736) = 144;
  *(result + 10000) = xmmword_252E550C0;
  *(result + 10320) = xmmword_252E550C0;
  *(result + 10896) = xmmword_252E550C0;
  *(result + 10928) = xmmword_252E56010;
  *(result + 10960) = xmmword_252E56020;
  *(result + 11024) = xmmword_252E56030;
  *(result + 11056) = xmmword_252E56040;
  *(result + 11088) = xmmword_252E56050;
  *(result + 9424) = xmmword_252E55DF0;
  *(result + 11120) = xmmword_252E55DF0;
  *(result + 4616) = 0x4039000000000000;
  *(result + 11184) = xmmword_252E56060;
  *(result + 4584) = 0x4013333333333333;
  *(result + 4592) = xmmword_252E556C0;
  *(result + 4576) = 139;
  *(result + 1712) = xmmword_252E55290;
  *(result + 11216) = xmmword_252E55290;
  *(result + 11280) = xmmword_252E56070;
  *(result + 11312) = xmmword_252E56080;
  *(result + 4528) = v1;
  *(result + 11344) = xmmword_252E56090;
  *(result + 11376) = xmmword_252E560A0;
  *(result + 11408) = xmmword_252E560B0;
  *(result + 4488) = 0x4039000000000000;
  *(result + 11440) = xmmword_252E560C0;
  *(result + 11472) = xmmword_252E560D0;
  *(result + 4456) = 0;
  *(result + 11504) = xmmword_252E560E0;
  *(result + 11536) = xmmword_252E560F0;
  *(result + 11600) = xmmword_252E56110;
  *(result + 11664) = xmmword_252E56120;
  *(result + 11696) = xmmword_252E56130;
  *(result + 4392) = 0x40756B3333333333;
  *(result + 11728) = xmmword_252E56140;
  *(result + 11760) = xmmword_252E56150;
  *(result + 4368) = v1;
  *(result + 11792) = xmmword_252E56160;
  *(result + 4320) = 131;
  *(result + 4328) = 0x4069800000000000;
  *(result + 4304) = xmmword_252E55660;
  *(result + 3552) = 108;
  *(result + 4288) = 130;
  *(result + 4296) = 0x40414CCCCCCCCCCDLL;
  *(result + 3560) = 0x404C19999999999ALL;
  *(result + 3584) = 109;
  *(result + 4256) = 129;
  *(result + 4264) = 0x4039B33333333333;
  *(result + 3592) = 0x3FFE666666666666;
  *(result + 4224) = 128;
  *(result + 4232) = 0x406BF9999999999ALL;
  *(result + 4192) = 127;
  *(result + 4200) = 0x406879999999999ALL;
  *(result + 4168) = 0x4074F9999999999ALL;
  *(result + 3616) = 110;
  *(result + 4136) = 0x40756B3333333333;
  *(result + 4160) = 126;
  *(result + 4096) = 124;
  *(result + 4104) = 0x4069A9999999999ALL;
  *(result + 4128) = 125;
  *(result + 3648) = 111;
  *(result + 3656) = 0x4068633333333333;
  *(result + 4064) = 123;
  *(result + 4072) = 0x4066800000000000;
  *(result + 3680) = 112;
  *(result + 4032) = 122;
  *(result + 4040) = 0x405ED9999999999ALL;
  *(result + 3688) = 0x401D99999999999ALL;
  *(result + 3712) = 5;
  *(result + 4000) = 121;
  *(result + 4008) = 0x4040733333333333;
  *(result + 3720) = 0u;
  *(result + 3968) = 120;
  *(result + 3976) = 0x406A5CCCCCCCCCCDLL;
  *(result + 3736) = 0x4053800000000000;
  *(result + 3936) = 119;
  *(result + 3944) = 0;
  *(result + 3744) = 113;
  *(result + 3904) = 118;
  *(result + 3912) = 0x4075066666666666;
  *(result + 3888) = v1;
  *(result + 3872) = 117;
  *(result + 3880) = 0x4075ACCCCCCCCCCDLL;
  *(result + 3848) = 0x400CCCCCCCCCCCCDLL;
  *(result + 3816) = 0x40758E6666666666;
  *(result + 3840) = 116;
  *(result + 3824) = v1;
  *(result + 3752) = 0x4075DE6666666666;
  *(result + 3784) = 0x4064A00000000000;
  *(result + 3808) = 115;
  *(result + 3776) = 114;
  *(result + 6752) = 206;
  *(result + 6784) = 207;
  *(result + 6792) = 0x4043000000000000;
  *(result + 6816) = 208;
  *(result + 6848) = 209;
  *(result + 6856) = 0x407614CCCCCCCCCDLL;
  *(result + 6880) = 210;
  *(result + 6888) = 0x40669CCCCCCCCCCDLL;
  *(result + 6912) = 211;
  *(result + 6920) = 0x4071A1999999999ALL;
  *(result + 6944) = 212;
  *(result + 3664) = v1;
  *(result + 6952) = 0x404A800000000000;
  *(result + 6976) = 214;
  *(result + 3624) = 0x407634CCCCCCCCCDLL;
  *(result + 7008) = 215;
  *(result + 7016) = 0x4075AE6666666666;
  *(result + 3600) = v1;
  *(result + 7040) = 216;
  *(result + 7072) = 217;
  *(result + 7080) = 0x4033666666666666;
  *(result + 3568) = v1;
  *(result + 7104) = 218;
  *(result + 7112) = 0x407499999999999ALL;
  *(result + 3528) = 0x404E000000000000;
  *(result + 3536) = xmmword_252E55560;
  *(result + 7136) = 219;
  *(result + 7168) = 220;
  *(result + 7176) = 0x400999999999999ALL;
  *(result + 7200) = 221;
  *(result + 7208) = 0x3FF4CCCCCCCCCCCDLL;
  *(result + 3464) = 0x4061800000000000;
  *(result + 7232) = 222;
  *(result + 9416) = 0x404719999999999ALL;
  *(result + 9440) = 291;
  *(result + 3408) = v1;
  *(result + 9448) = 0x404A400000000000;
  *(result + 9472) = 292;
  strcpy((result + 9480), "33333sE@33333SU@");
  *(result + 3376) = v1;
  *(result + 9504) = 293;
  *(result + 9512) = 0x405C39999999999ALL;
  *(result + 3336) = 0x4075F00000000000;
  *(result + 9536) = 294;
  *(result + 9568) = 295;
  *(result + 9600) = 296;
  *(result + 9608) = 0x406A2CCCCCCCCCCDLL;
  *(result + 9632) = 297;
  *(result + 9640) = 0x4054ECCCCCCCCCCDLL;
  *(result + 9664) = 298;
  *(result + 9696) = 299;
  *(result + 9728) = 300;
  *(result + 9736) = 0x406BD66666666666;
  *(result + 9760) = 301;
  *(result + 9768) = 0x406FECCCCCCCCCCDLL;
  *(result + 9792) = 302;
  *(result + 9800) = 0x4049800000000000;
  *(result + 9824) = 303;
  *(result + 9832) = 0x4076166666666666;
  *(result + 9856) = 304;
  *(result + 9864) = 0x4043F33333333333;
  *(result + 9888) = 305;
  *(result + 9920) = 306;
  *(result + 9928) = 0x4071E4CCCCCCCCCDLL;
  *(result + 3120) = xmmword_252E554B0;
  *(result + 9952) = 307;
  *(result + 9984) = 308;
  *(result + 10016) = 309;
  *(result + 10024) = 0x4073900000000000;
  *(result + 10048) = 310;
  *(result + 10056) = 0x4074A00000000000;
  *(result + 11824) = xmmword_252E55560;
  *(result + 11856) = xmmword_252E56170;
  *(result + 11888) = xmmword_252E56180;
  *(result + 11920) = xmmword_252E56190;
  *(result + 11952) = xmmword_252E561A0;
  *(result + 11984) = xmmword_252E561B0;
  *(result + 12016) = xmmword_252E561C0;
  *(result + 2952) = 0x4039000000000000;
  *(result + 12112) = xmmword_252E561D0;
  *(result + 10080) = 311;
  *(result + 10112) = 312;
  *(result + 2920) = 0x4039000000000000;
  *(result + 10120) = 0x4046733333333333;
  *(result + 10144) = 313;
  *(result + 10152) = 0x407129999999999ALL;
  *(result + 10176) = 314;
  *(result + 10184) = 0x406BE33333333333;
  *(result + 2856) = 0x4075900000000000;
  *(result + 2864) = xmmword_252E55450;
  *(result + 10208) = 315;
  *(result + 10240) = 316;
  *(result + 2824) = 0x407671999999999ALL;
  *(result + 10248) = 0x406EA66666666666;
  *(result + 10272) = 317;
  *(result + 10304) = 318;
  *(result + 10336) = 319;
  *(result + 10344) = 0x4063C66666666666;
  *(result + 2728) = 0;
  *(result + 2736) = xmmword_252E551C0;
  *(result + 10992) = xmmword_252E55DD0;
  *(result + 12144) = xmmword_252E55DD0;
  *(result + 2704) = xmmword_252E55410;
  *(result + 10368) = 320;
  *(result + 10376) = 0x404799999999999ALL;
  *(result + 10400) = 321;
  *(result + 2672) = xmmword_252E55400;
  *(result + 10408) = 0x40766CCCCCCCCCCDLL;
  *(result + 10432) = 322;
  *(result + 10440) = 0x40747B3333333333;
  *(result + 10464) = 323;
  *(result + 10496) = 324;
  *(result + 10504) = 0x4052533333333333;
  *(result + 10528) = 325;
  *(result + 10536) = 0x40646CCCCCCCCCCDLL;
  *(result + 2568) = 0x406629999999999ALL;
  *(result + 10560) = 326;
  *(result + 2536) = 0x4074A1999999999ALL;
  *(result + 2544) = v1;
  *(result + 10568) = 0x4059266666666666;
  *(result + 10592) = 327;
  *(result + 10600) = 0x404299999999999ALL;
  *(result + 10624) = 328;
  *(result + 10632) = 0x4061ACCCCCCCCCCDLL;
  *(result + 10656) = 329;
  *(result + 10664) = 0x40715E6666666666;
  *(result + 10688) = 330;
  *(result + 10720) = 331;
  *(result + 2448) = v1;
  *(result + 10752) = 332;
  *(result + 10760) = 0x4057CCCCCCCCCCCDLL;
  *(result + 10784) = 333;
  *(result + 2248) = 0x4076300000000000;
  *(result + 10792) = 0x4076300000000000;
  *(result + 10816) = 334;
  *(result + 10824) = 0x4071300000000000;
  *(result + 10848) = 335;
  *(result + 10880) = 336;
  *(result + 10912) = 337;
  *(result + 10920) = 0x406E933333333333;
  *(result + 10944) = 338;
  *(result + 2328) = 0x4059000000000000;
  *(result + 10952) = 0x40708B3333333333;
  *(result + 10976) = 339;
  *(result + 2280) = 0x4008000000000000;
  *(result + 11008) = 340;
  *(result + 11016) = 0x4074BE6666666666;
  *(result + 11040) = 341;
  *(result + 11048) = 0x4070B80000000000;
  *(result + 11072) = 342;
  *(result + 11080) = 0x4073BCCCCCCCCCCDLL;
  *(result + 11104) = 343;
  *(result + 11112) = 0x4056A00000000000;
  *(result + 11136) = 344;
  *(result + 2160) = v1;
  *(result + 10088) = 0x404D0CCCCCCCCCCDLL;
  *(result + 11144) = 0x404D0CCCCCCCCCCDLL;
  *(result + 11168) = 345;
  *(result + 11176) = 0x404C266666666666;
  *(result + 11200) = 346;
  *(result + 11232) = 347;
  *(result + 11264) = 348;
  *(result + 11272) = 0x40756E6666666666;
  *(result + 11296) = 349;
  *(result + 2056) = 0;
  *(result + 10888) = 0x4075400000000000;
  *(result + 11304) = 0x4075400000000000;
  *(result + 2024) = 0x404399999999999ALL;
  *(result + 11328) = 350;
  *(result + 11360) = 351;
  *(result + 1992) = 0x4067DCCCCCCCCCCDLL;
  *(result + 11368) = 0x4068566666666666;
  *(result + 11392) = 352;
  *(result + 11336) = 0x403C666666666666;
  *(result + 11400) = 0x403C666666666666;
  *(result + 11424) = 353;
  *(result + 11432) = 0x407634CCCCCCCCCDLL;
  *(result + 11456) = 354;
  *(result + 11488) = 355;
  *(result + 11496) = 0x4069166666666666;
  *(result + 11520) = 356;
  *(result + 11552) = 357;
  *(result + 11560) = 0x407311999999999ALL;
  *(result + 11584) = 358;
  *(result + 1832) = 0x406A400000000000;
  *(result + 11616) = 359;
  *(result + 11640) = 0x4054ACCCCCCCCCCDLL;
  *(result + 1800) = 0x406E000000000000;
  *(result + 1808) = v1;
  *(result + 11648) = 360;
  *(result + 11680) = 361;
  *(result + 11208) = 0x404B000000000000;
  *(result + 11688) = 0x404B000000000000;
  *(result + 11712) = 362;
  *(result + 11720) = 0x40704B3333333333;
  *(result + 1736) = 0x406A400000000000;
  *(result + 11744) = 363;
  *(result + 11752) = 0x4075F00000000000;
  *(result + 11776) = 364;
  *(result + 11784) = 0x403119999999999ALL;
  *(result + 11808) = 365;
  *(result + 11840) = 366;
  *(result + 1688) = 0;
  *(result + 11848) = 0x4066166666666666;
  *(result + 11872) = 367;
  *(result + 11880) = 0x4069600000000000;
  *(result + 11904) = 368;
  *(result + 11936) = 369;
  *(result + 11944) = 0x4039B33333333333;
  *(result + 11968) = 370;
  *(result + 12000) = 371;
  *(result + 12032) = 372;
  *(result + 1544) = 0x404E000000000000;
  *(result + 11240) = 0x4052C66666666666;
  *(result + 12040) = 0x4052C66666666666;
  *(result + 1512) = 0x4069B66666666666;
  *(result + 1520) = xmmword_252E55240;
  *(result + 12064) = 373;
  *(result + 12096) = 374;
  *(result + 7240) = 0x4072C00000000000;
  *(result + 12104) = 0x405A6CCCCCCCCCCDLL;
  *(result + 12128) = 375;
  *(result + 6760) = 0x4046800000000000;
  *(result + 12160) = 376;
  *(result + 6832) = xmmword_252E55920;
  *(result + 7000) = 0x4040A66666666666;
  *(result + 7048) = 0x4076580000000000;
  *(result + 7144) = 0x40414CCCCCCCCCCDLL;
  *(result + 7152) = xmmword_252E55660;
  *(result + 9456) = v1;
  *(result + 9560) = 0x404919999999999ALL;
  *(result + 9576) = 0x405E000000000000;
  *(result + 9584) = v1;
  *(result + 9672) = 0x4041266666666666;
  *(result + 9704) = 0x4062BCCCCCCCCCCDLL;
  *(result + 9712) = v1;
  *(result + 9896) = 0x404E000000000000;
  *(result + 9904) = xmmword_252E55450;
  *(result + 9960) = 0x4074066666666666;
  *(result + 9992) = 0x405E000000000000;
  *(result + 10064) = xmmword_252E55EB0;
  *(result + 10128) = v1;
  *(result + 10216) = 0x403299999999999ALL;
  *(result + 10224) = v1;
  *(result + 10280) = 0x403E000000000000;
  *(result + 10312) = 0x404E000000000000;
  *(result + 10352) = xmmword_252E55F00;
  *(result + 10472) = 0x4047D9999999999ALL;
  *(result + 10480) = xmmword_252E55F40;
  *(result + 10696) = 0x406A400000000000;
  *(result + 10728) = 0x404E000000000000;
  *(result + 10856) = 0x406E000000000000;
  *(result + 10864) = xmmword_252E56000;
  *(result + 10984) = 0x406E000000000000;
  *(result + 11152) = v1;
  *(result + 11248) = v1;
  *(result + 11464) = 0;
  *(result + 11528) = 0x4066800000000000;
  *(result + 11568) = xmmword_252E56100;
  *(result + 11592) = 0x404E000000000000;
  *(result + 11656) = 0x405E000000000000;
  *(result + 11816) = 0;
  *(result + 11912) = 0x406A400000000000;
  *(result + 11976) = 0x404E000000000000;
  *(result + 12008) = 0x4072C00000000000;
  *(result + 12048) = v1;
  *(result + 12072) = 0x405E000000000000;
  *(result + 12080) = xmmword_252E55410;
  *(result + 12136) = 0x403E000000000000;
  *(result + 17488) = xmmword_252E55B60;
  *(result + 17712) = xmmword_252E56A00;
  *(result + 17744) = xmmword_252E56A10;
  *(result + 17776) = xmmword_252E56A20;
  *(result + 17808) = xmmword_252E56A30;
  *(result + 17840) = xmmword_252E56A40;
  *(result + 17904) = xmmword_252E56A50;
  *(result + 17936) = xmmword_252E56A60;
  *(result + 17968) = xmmword_252E550D0;
  *(result + 18032) = xmmword_252E56A70;
  *(result + 18064) = xmmword_252E56A80;
  *(result + 18105) = 0;
  *(result + 18106) = 0;
  *(result + 18108) = 1079033856;
  *(result + 18128) = xmmword_252E56AA0;
  *(result + 18160) = xmmword_252E56AB0;
  *(result + 18192) = xmmword_252E55A00;
  *(result + 18256) = xmmword_252E56AC0;
  *(result + 19440) = xmmword_252E56C90;
  *(result + 19504) = xmmword_252E56CA0;
  *(result + 19536) = xmmword_252E56CB0;
  *(result + 19568) = xmmword_252E56CC0;
  *(result + 19600) = xmmword_252E56CD0;
  *(result + 19632) = xmmword_252E56CE0;
  *(result + 19696) = xmmword_252E56CF0;
  *(result + 19728) = xmmword_252E56D00;
  *(result + 19760) = xmmword_252E56D10;
  *(result + 19856) = xmmword_252E56D20;
  *(result + 19984) = xmmword_252E56D30;
  *(result + 20048) = xmmword_252E55660;
  *(result + 12192) = 377;
  *(result + 12224) = 378;
  *(result + 12256) = 379;
  *(result + 12288) = 380;
  *(result + 12320) = 381;
  *(result + 12352) = 382;
  *(result + 12384) = 383;
  *(result + 12416) = 384;
  *(result + 12448) = 385;
  *(result + 12480) = 386;
  *(result + 12512) = 387;
  *(result + 12544) = 388;
  *(result + 12576) = 389;
  *(result + 12608) = 390;
  *(result + 12640) = 391;
  *(result + 12672) = 392;
  *(result + 12704) = 393;
  *(result + 12736) = 394;
  *(result + 12768) = 395;
  *(result + 12800) = 396;
  *(result + 12832) = 397;
  *(result + 12864) = 398;
  *(result + 12896) = 399;
  *(result + 12928) = 400;
  *(result + 12960) = 401;
  *(result + 12992) = 402;
  *(result + 13024) = 403;
  *(result + 13056) = 404;
  *(result + 13088) = 405;
  *(result + 13120) = 406;
  *(result + 13152) = 407;
  *(result + 13184) = 408;
  *(result + 13216) = 409;
  *(result + 13248) = 410;
  *(result + 13280) = 411;
  *(result + 13312) = 412;
  *(result + 13344) = 413;
  *(result + 13376) = 414;
  *(result + 13408) = 415;
  *(result + 13440) = 416;
  *(result + 13472) = 417;
  *(result + 13504) = 418;
  *(result + 13536) = 419;
  *(result + 13568) = 420;
  *(result + 13600) = 421;
  *(result + 13632) = 422;
  *(result + 13664) = 423;
  *(result + 13696) = 424;
  *(result + 13728) = 425;
  *(result + 13760) = 426;
  *(result + 13792) = 427;
  *(result + 13824) = 428;
  *(result + 13856) = 429;
  *(result + 13888) = 430;
  *(result + 13920) = 431;
  *(result + 13952) = 432;
  *(result + 13984) = 433;
  *(result + 14016) = 434;
  *(result + 14048) = 435;
  *(result + 14080) = 436;
  *(result + 14112) = 437;
  *(result + 14144) = 438;
  *(result + 14176) = 439;
  *(result + 14208) = 440;
  *(result + 14240) = 441;
  *(result + 14272) = 442;
  *(result + 14304) = 443;
  *(result + 14336) = 444;
  *(result + 14368) = 445;
  *(result + 14400) = 446;
  *(result + 14432) = 447;
  *(result + 14464) = 448;
  *(result + 14496) = 449;
  *(result + 14528) = 450;
  *(result + 14560) = 451;
  *(result + 14592) = 452;
  *(result + 14624) = 453;
  *(result + 14656) = 454;
  *(result + 14688) = 455;
  *(result + 14720) = 456;
  *(result + 14752) = 457;
  *(result + 14784) = 458;
  *(result + 14816) = 459;
  *(result + 14848) = 460;
  *(result + 14880) = 461;
  *(result + 14912) = 462;
  *(result + 14944) = 463;
  *(result + 14976) = 464;
  *(result + 15008) = 465;
  *(result + 15040) = 466;
  *(result + 15072) = 467;
  *(result + 15104) = 468;
  *(result + 15136) = 469;
  *(result + 15168) = 470;
  *(result + 15200) = 471;
  *(result + 15232) = 472;
  *(result + 15264) = 473;
  *(result + 15296) = 474;
  *(result + 15328) = 475;
  *(result + 15392) = 477;
  *(result + 15424) = 478;
  *(result + 15456) = 479;
  *(result + 15360) = 476;
  *(result + 15488) = 476;
  *(result + 15520) = 480;
  *(result + 15552) = 481;
  *(result + 15584) = 482;
  *(result + 15616) = 483;
  *(result + 15648) = 484;
  *(result + 15680) = 485;
  *(result + 15712) = 486;
  *(result + 15744) = 487;
  *(result + 15776) = 488;
  *(result + 15808) = 489;
  *(result + 15840) = 490;
  *(result + 15872) = 491;
  *(result + 15904) = 492;
  *(result + 15936) = 493;
  *(result + 15968) = 494;
  *(result + 16000) = 495;
  *(result + 16032) = 496;
  *(result + 16064) = 497;
  *(result + 16096) = 498;
  *(result + 16128) = 499;
  *(result + 16160) = 500;
  *(result + 16192) = 501;
  *(result + 16224) = 502;
  *(result + 16256) = 503;
  *(result + 16288) = 504;
  *(result + 16320) = 505;
  *(result + 16352) = 506;
  *(result + 0x4000) = 507;
  *(result + 16416) = 508;
  *(result + 16448) = 509;
  *(result + 16480) = 510;
  *(result + 16512) = 511;
  *(result + 16544) = 512;
  *(result + 16576) = 513;
  *(result + 16608) = 514;
  *(result + 16640) = 515;
  *(result + 16672) = 516;
  *(result + 16704) = 517;
  *(result + 16736) = 518;
  *(result + 16768) = 519;
  *(result + 16800) = 520;
  *(result + 16832) = 521;
  *(result + 16864) = 522;
  *(result + 16896) = 523;
  *(result + 16928) = 524;
  *(result + 16960) = 525;
  *(result + 16992) = 526;
  *(result + 17024) = 527;
  *(result + 17056) = 528;
  *(result + 17088) = 529;
  *(result + 17120) = 530;
  *(result + 17152) = 531;
  *(result + 17184) = 532;
  *(result + 17216) = 533;
  *(result + 17248) = 534;
  *(result + 17280) = 535;
  *(result + 17312) = 536;
  *(result + 17344) = 537;
  *(result + 17376) = 538;
  *(result + 17408) = 539;
  *(result + 17440) = 540;
  *(result + 17472) = 541;
  *(result + 17504) = 542;
  *(result + 17536) = 543;
  *(result + 17568) = 544;
  *(result + 17600) = 545;
  *(result + 17632) = 546;
  *(result + 17664) = 547;
  *(result + 17696) = 548;
  *(result + 17728) = 549;
  *(result + 17760) = 550;
  *(result + 17792) = 551;
  *(result + 17824) = 552;
  *(result + 17856) = 553;
  *(result + 17888) = 554;
  *(result + 17920) = 555;
  *(result + 17952) = 556;
  *(result + 17984) = 557;
  *(result + 18016) = 558;
  *(result + 18048) = 559;
  *(result + 18080) = 560;
  *(result + 18112) = 561;
  *(result + 18144) = 562;
  *(result + 18176) = 563;
  *(result + 18208) = 564;
  *(result + 18240) = 565;
  *(result + 18272) = 566;
  *(result + 18304) = 567;
  *(result + 18336) = 568;
  *(result + 18368) = 569;
  *(result + 18400) = 570;
  *(result + 18432) = 571;
  *(result + 18464) = 572;
  *(result + 18496) = 573;
  *(result + 18528) = 574;
  *(result + 18560) = 575;
  *(result + 18592) = 576;
  *(result + 18624) = 577;
  *(result + 18656) = 578;
  *(result + 18688) = 579;
  *(result + 18720) = 580;
  *(result + 18752) = 581;
  *(result + 18784) = 582;
  *(result + 18816) = 583;
  *(result + 18848) = 584;
  *(result + 18880) = 585;
  *(result + 18912) = 586;
  *(result + 18944) = 587;
  *(result + 18976) = 588;
  *(result + 19008) = 589;
  *(result + 19040) = 590;
  *(result + 19072) = 591;
  *(result + 19104) = 592;
  *(result + 19136) = 593;
  *(result + 19168) = 594;
  *(result + 19200) = 595;
  *(result + 19232) = 596;
  *(result + 19264) = 597;
  *(result + 19296) = 598;
  *(result + 19328) = 599;
  *(result + 19360) = 600;
  *(result + 20072) = 0x400F333333333333;
  *(result + 19392) = 601;
  *(result + 20032) = 622;
  *(result + 20040) = 0x40414CCCCCCCCCCDLL;
  *(result + 20064) = 623;
  *(result + 20016) = xmmword_252E55B60;
  *(result + 20000) = 620;
  *(result + 20008) = 0x4046800000000000;
  *(result + 19968) = 619;
  *(result + 19976) = 0x404B333333333333;
  *(result + 19944) = 0x4066800000000000;
  *(result + 19952) = xmmword_252E55450;
  *(result + 19904) = 617;
  *(result + 19936) = 618;
  *(result + 19912) = 0;
  *(result + 19920) = xmmword_252E55820;
  *(result + 19424) = 602;
  *(result + 19872) = 616;
  *(result + 19880) = 0x4047D9999999999ALL;
  *(result + 19888) = xmmword_252E55F40;
  *(result + 19840) = 615;
  *(result + 19848) = 0x4069E9999999999ALL;
  *(result + 19824) = v1;
  *(result + 19464) = 0u;
  *(result + 19808) = 614;
  *(result + 19816) = 0x4062BCCCCCCCCCCDLL;
  *(result + 19456) = 603;
  *(result + 19776) = 613;
  *(result + 19784) = 0x4068666666666666;
  *(result + 19792) = xmmword_252E56C80;
  *(result + 19480) = 0x4052D33333333333;
  *(result + 19744) = 612;
  *(result + 19752) = 0;
  *(result + 19488) = 604;
  *(result + 19688) = 0x4076533333333333;
  *(result + 19712) = 611;
  *(result + 19720) = 0x403E000000000000;
  *(result + 19648) = 609;
  *(result + 19680) = 610;
  *(result + 19656) = 0x406B800000000000;
  *(result + 19664) = xmmword_252E55820;
  *(result + 19520) = 605;
  *(result + 19616) = 608;
  *(result + 19624) = 0x406A400000000000;
  *(result + 19552) = 606;
  *(result + 19560) = 0x4074066666666666;
  *(result + 19584) = 607;
  *(result + 19592) = 0x406F09999999999ALL;
  *(result + 20096) = 624;
  *(result + 20128) = 625;
  *(result + 20160) = 626;
  *(result + 20192) = 627;
  *(result + 20224) = 628;
  *(result + 19528) = 0x4068ACCCCCCCCCCDLL;
  *(result + 20256) = 629;
  *(result + 20288) = 630;
  *(result + 19496) = 0x4066800000000000;
  *(result + 20320) = 631;
  *(result + 20352) = 632;
  *(result + 20384) = 633;
  *(result + 20416) = 634;
  *(result + 20448) = 635;
  *(result + 19408) = xmmword_252E56C80;
  *(result + 19432) = 0x4027666666666666;
  *(result + 19400) = 0x4073B33333333333;
  *(result + 18288) = xmmword_252E56AD0;
  *(result + 19376) = xmmword_252E56C70;
  *(result + 19368) = 0x4063900000000000;
  *(result + 18320) = xmmword_252E56AE0;
  *(result + 19344) = xmmword_252E56C60;
  *(result + 18352) = xmmword_252E56AF0;
  *(result + 19336) = 0x4064166666666666;
  *(result + 19312) = xmmword_252E56C50;
  *(result + 19304) = 0x4042A66666666666;
  *(result + 19280) = xmmword_252E56C40;
  *(result + 18384) = xmmword_252E56B00;
  *(result + 19248) = v1;
  *(result + 19272) = 0x403E000000000000;
  *(result + 18416) = xmmword_252E56B10;
  *(result + 19240) = 0x4045E66666666666;
  *(result + 19208) = 0x4038B33333333333;
  *(result + 18448) = xmmword_252E56B20;
  *(result + 19216) = xmmword_252E56C30;
  *(result + 18480) = xmmword_252E56B30;
  *(result + 19184) = xmmword_252E56C20;
  *(result + 18512) = xmmword_252E56B40;
  *(result + 19152) = xmmword_252E56C10;
  *(result + 19176) = 0;
  *(result + 19144) = 0x4062500000000000;
  *(result + 19120) = xmmword_252E56C00;
  *(result + 18544) = xmmword_252E56B50;
  *(result + 19112) = 0x4068ACCCCCCCCCCDLL;
  *(result + 19080) = 0x405E733333333333;
  *(result + 18576) = xmmword_252E56B60;
  *(result + 19088) = xmmword_252E56BF0;
  *(result + 19048) = 0x4049666666666666;
  *(result + 18640) = xmmword_252E56B70;
  *(result + 19056) = v1;
  *(result + 19016) = 0x4021000000000000;
  *(result + 18672) = xmmword_252E56B80;
  *(result + 19024) = v1;
  *(result + 18992) = xmmword_252E56BE0;
  *(result + 18984) = 0x404599999999999ALL;
  *(result + 18960) = xmmword_252E56BD0;
  *(result + 18952) = 0x406B100000000000;
  *(result + 18920) = 0x4057200000000000;
  *(result + 18704) = xmmword_252E55EB0;
  *(result + 18928) = xmmword_252E56BC0;
  *(result + 18736) = xmmword_252E56B90;
  *(result + 18888) = 0x4045400000000000;
  *(result + 18896) = xmmword_252E55BD0;
  *(result + 18856) = 0x403B99999999999ALL;
  *(result + 18768) = xmmword_252E55C00;
  *(result + 18864) = xmmword_252E56BB0;
  *(result + 18832) = xmmword_252E56BA0;
  *(result + 18824) = 0x404A000000000000;
  *(result + 17704) = 0x407561999999999ALL;
  *(result + 17736) = 0x4068D33333333333;
  *(result + 18792) = 0x4045400000000000;
  *(result + 18800) = xmmword_252E55BD0;
  *(result + 17768) = 0x4071C66666666666;
  *(result + 17800) = 0x4075180000000000;
  *(result + 18760) = 0x4046C00000000000;
  *(result + 17832) = 0x4066600000000000;
  *(result + 17864) = 0x4074A1999999999ALL;
  *(result + 18696) = 0x402C000000000000;
  *(result + 18728) = 0x4075D9999999999ALL;
  *(result + 17896) = 0x40749CCCCCCCCCCDLL;
  *(result + 17928) = 0x400CCCCCCCCCCCCDLL;
  *(result + 17960) = 0x40762E6666666666;
  *(result + 18664) = 0x406D7CCCCCCCCCCDLL;
  *(result + 18024) = 0x4072F4CCCCCCCCCDLL;
  *(result + 18632) = 0x4046A66666666666;
  *(result + 18608) = v1;
  strcpy((result + 18088), "fffffVv@fffff&K@");
  *(result + 18120) = 0x4076180000000000;
  *(result + 18216) = 0x406B800000000000;
  *(result + 18600) = 0x4038333333333333;
  *(result + 18248) = 0x406C200000000000;
  *(result + 18280) = 0x407414CCCCCCCCCDLL;
  *(result + 18312) = 0x4070A9999999999ALL;
  *(result + 18568) = 0x4039000000000000;
  *(result + 18344) = 0x4075166666666666;
  *(result + 18376) = 0x4038E66666666666;
  *(result + 18536) = 0x4064800000000000;
  *(result + 18408) = 0x4076233333333333;
  *(result + 18440) = 0x401F333333333333;
  *(result + 18504) = 0x403219999999999ALL;
  *(result + 20480) = 636;
  *(result + 18472) = 0x4039800000000000;
  *(result + 20512) = 637;
  *(result + 20544) = 638;
  *(result + 20576) = 639;
  *(result + 20608) = 640;
  *(result + 20640) = 641;
  *(result + 20672) = 642;
  *(result + 20704) = 643;
  *(result + 20736) = 644;
  *(result + 20768) = 645;
  *(result + 20800) = 646;
  *(result + 20832) = 647;
  *(result + 20864) = 648;
  *(result + 20896) = 649;
  *(result + 20928) = 650;
  *(result + 20960) = 651;
  *(result + 20992) = 652;
  *(result + 21024) = 653;
  *(result + 21056) = 654;
  *(result + 21088) = 655;
  *(result + 21120) = 656;
  *(result + 21152) = 657;
  *(result + 18224) = xmmword_252E55F00;
  *(result + 21184) = 658;
  *(result + 21216) = 659;
  *(result + 18184) = 0;
  *(result + 21248) = 660;
  *(result + 21280) = 661;
  *(result + 21312) = 662;
  *(result + 18152) = 0;
  *(result + 21344) = 663;
  *(result + 21376) = 664;
  *(result + 21408) = 665;
  *(result + 21440) = 666;
  *(result + 21472) = 667;
  *(result + 21504) = 668;
  *(result + 21536) = 669;
  *(result + 21568) = 670;
  *(result + 18056) = 0;
  *(result + 21600) = 671;
  *(result + 21632) = 672;
  *(result + 21664) = 673;
  *(result + 21696) = 674;
  *(result + 21728) = 675;
  *(result + 17992) = 0x4074000000000000;
  *(result + 18000) = xmmword_252E551B0;
  *(result + 21760) = 676;
  *(result + 21792) = 677;
  *(result + 21824) = 678;
  *(result + 21856) = 679;
  *(result + 21888) = 680;
  *(result + 21920) = 681;
  *(result + 21952) = 682;
  *(result + 21984) = 683;
  *(result + 17872) = v1;
  *(result + 22016) = 684;
  *(result + 22048) = 685;
  *(result + 22080) = 686;
  *(result + 22112) = 687;
  *(result + 22144) = 688;
  *(result + 22176) = 689;
  *(result + 22208) = 690;
  *(result + 22240) = 691;
  *(result + 22272) = 692;
  *(result + 22304) = 693;
  *(result + 22336) = 694;
  *(result + 22368) = 695;
  *(result + 22400) = 696;
  *(result + 22432) = 697;
  *(result + 22464) = 698;
  *(result + 22496) = 699;
  *(result + 22528) = 700;
  *(result + 22560) = 701;
  *(result + 22592) = 702;
  *(result + 22624) = 703;
  *(result + 17648) = xmmword_252E56390;
  *(result + 17672) = 0x4066800000000000;
  *(result + 17680) = xmmword_252E569F0;
  *(result + 22656) = 704;
  *(result + 17616) = xmmword_252E551C0;
  *(result + 17640) = 0x4074233333333333;
  *(result + 22688) = 705;
  *(result + 22720) = 706;
  *(result + 17584) = xmmword_252E569E0;
  *(result + 17608) = 0;
  *(result + 22752) = 707;
  *(result + 22784) = 708;
  *(result + 17576) = 0x400A666666666666;
  *(result + 17552) = v1;
  *(result + 17512) = 0x40751E6666666666;
  *(result + 17520) = xmmword_252E569D0;
  *(result + 17544) = 0;
  *(result + 12168) = 0x4040666666666666;
  *(result + 12200) = 0x4064D66666666666;
  *(result + 17480) = 0x4073B00000000000;
  *(result + 12264) = 0x40632CCCCCCCCCCDLL;
  *(result + 17448) = 0x4037800000000000;
  *(result + 17456) = xmmword_252E569C0;
  *(result + 17416) = 0x4075266666666666;
  *(result + 17424) = xmmword_252E569B0;
  *(result + 17392) = xmmword_252E569A0;
  *(result + 17328) = xmmword_252E56990;
  *(result + 17384) = 0x4074A66666666666;
  *(result + 12296) = 0x40705CCCCCCCCCCDLL;
  *(result + 17320) = 0x4075133333333333;
  qmemcpy((result + 17352), "33333su@333333A@33333sL@", 24);
  *(result + 12176) = xmmword_252E55B80;
  *(result + 17296) = xmmword_252E55220;
  *(result + 12208) = xmmword_252E561E0;
  *(result + 17288) = 0x4075BCCCCCCCCCCDLL;
  *(result + 17264) = xmmword_252E56980;
  *(result + 17256) = 0x407374CCCCCCCCCDLL;
  *(result + 12272) = xmmword_252E561F0;
  *(result + 17232) = xmmword_252E56970;
  *(result + 17224) = 0x407384CCCCCCCCCDLL;
  *(result + 12304) = xmmword_252E56200;
  *(result + 17200) = xmmword_252E56960;
  *(result + 17136) = xmmword_252E56940;
  *(result + 17192) = 0x4070D00000000000;
  *(result + 17168) = xmmword_252E56950;
  *(result + 17128) = 0x4070E4CCCCCCCCCDLL;
  *(result + 17160) = 0x4070D80000000000;
  *(result + 12336) = xmmword_252E56210;
  *(result + 12368) = xmmword_252E557A0;
  *(result + 17104) = xmmword_252E55450;
  *(result + 12400) = xmmword_252E56220;
  *(result + 17072) = xmmword_252E56930;
  *(result + 17096) = 0x4072C00000000000;
  *(result + 17040) = xmmword_252E56920;
  *(result + 17064) = 0x4038333333333333;
  *(result + 12432) = xmmword_252E56230;
  *(result + 17032) = 0x4075900000000000;
  *(result + 12528) = xmmword_252E56250;
  *(result + 17008) = v1;
  *(result + 16976) = xmmword_252E563C0;
  *(result + 17000) = 0x4072480000000000;
  *(result + 16968) = 0x4069933333333333;
  *(result + 12592) = xmmword_252E56270;
  *(result + 16944) = v1;
  *(result + 16936) = 0x4040CCCCCCCCCCCDLL;
  *(result + 16912) = xmmword_252E56910;
  *(result + 12624) = xmmword_252E554B0;
  *(result + 16904) = 0x4067566666666666;
  *(result + 16872) = 0x4025666666666666;
  *(result + 12656) = xmmword_252E56280;
  *(result + 16880) = xmmword_252E56900;
  *(result + 12720) = xmmword_252E562A0;
  *(result + 16840) = 0x4072C00000000000;
  *(result + 16848) = xmmword_252E562F0;
  *(result + 12816) = xmmword_252E562D0;
  *(result + 16816) = xmmword_252E568F0;
  *(result + 12848) = xmmword_252E562E0;
  *(result + 16784) = xmmword_252E568E0;
  *(result + 16808) = 0x4044000000000000;
  *(result + 12912) = xmmword_252E56300;
  *(result + 16776) = 0x4058066666666666;
  *(result + 16752) = xmmword_252E568D0;
  *(result + 16744) = 0x4074466666666666;
  *(result + 12976) = xmmword_252E56320;
  *(result + 16720) = xmmword_252E568C0;
  *(result + 13008) = xmmword_252E56330;
  *(result + 16712) = 0x4075A33333333333;
  *(result + 16688) = xmmword_252E568B0;
  *(result + 16680) = 0x4072B9999999999ALL;
  *(result + 13040) = xmmword_252E56340;
  *(result + 16656) = xmmword_252E568A0;
  *(result + 16648) = 0x4075D80000000000;
  *(result + 13072) = xmmword_252E56350;
  *(result + 16624) = xmmword_252E56890;
  *(result + 13104) = xmmword_252E56360;
  *(result + 16616) = 0x4065E00000000000;
  *(result + 16592) = xmmword_252E56880;
  *(result + 16584) = 0x407571999999999ALL;
  *(result + 13136) = xmmword_252E56370;
  *(result + 16560) = xmmword_252E56870;
  *(result + 16552) = 0x4062DCCCCCCCCCCDLL;
  *(result + 16528) = xmmword_252E56860;
  *(result + 16520) = 0x406D2CCCCCCCCCCDLL;
  *(result + 16496) = v1;
  *(result + 13168) = xmmword_252E56380;
  *(result + 16488) = 0x4072480000000000;
  *(result + 13200) = xmmword_252E56390;
  *(result + 16464) = xmmword_252E56850;
  *(result + 16456) = 0x40745CCCCCCCCCCDLL;
  *(result + 13232) = xmmword_252E563A0;
  *(result + 16424) = 0;
  *(result + 16432) = xmmword_252E56840;
  *(result + 16400) = xmmword_252E56830;
  *(result + 16392) = 0;
  *(result + 16360) = 0x4074880000000000;
  *(result + 13264) = xmmword_252E563B0;
  *(result + 16368) = xmmword_252E56820;
  *(result + 13296) = xmmword_252E563C0;
  *(result + 16336) = xmmword_252E56810;
  *(result + 13328) = xmmword_252E563D0;
  *(result + 16328) = 0x403A000000000000;
  *(result + 16296) = 0x4070280000000000;
  *(result + 16272) = xmmword_252E567F0;
  *(result + 16304) = xmmword_252E56800;
  *(result + 16264) = 0x406CA33333333333;
  *(result + 16240) = xmmword_252E56000;
  *(result + 13448) = 0x4018000000000000;
  *(result + 13360) = xmmword_252E563E0;
  *(result + 16232) = 0x406E000000000000;
  *(result + 16208) = xmmword_252E567E0;
  *(result + 16200) = 0x404D800000000000;
  *(result + 16168) = 0x4064400000000000;
  *(result + 16144) = xmmword_252E567C0;
  *(result + 16176) = xmmword_252E567D0;
  *(result + 13512) = 0x4045400000000000;
  *(result + 13544) = 0x4068E00000000000;
  *(result + 16136) = 0x4045333333333333;
  *(result + 16104) = 0x4050733333333333;
  *(result + 13392) = xmmword_252E563F0;
  *(result + 16112) = xmmword_252E567B0;
  *(result + 16080) = xmmword_252E567A0;
  *(result + 13576) = 0x4010666666666666;
  *(result + 13424) = xmmword_252E56400;
  *(result + 16072) = 0x4043800000000000;
  *(result + 16040) = 0x403C4CCCCCCCCCCDLL;
  *(result + 16016) = xmmword_252E56780;
  *(result + 16048) = xmmword_252E56790;
  *(result + 15984) = xmmword_252E558D0;
  *(result + 16008) = 0x404399999999999ALL;
  *(result + 15952) = xmmword_252E56770;
  *(result + 13640) = 0x406429999999999ALL;
  *(result + 15976) = 0x4069BCCCCCCCCCCDLL;
  *(result + 13456) = xmmword_252E56410;
  *(result + 15888) = xmmword_252E56750;
  *(result + 15944) = 0x404E000000000000;
  *(result + 15920) = xmmword_252E56760;
  *(result + 15912) = 0x4072E66666666666;
  *(result + 13672) = 0x4074333333333333;
  *(result + 13488) = xmmword_252E55140;
  *(result + 15880) = 0x4008000000000000;
  *(result + 15848) = 0x40726CCCCCCCCCCDLL;
  *(result + 15824) = xmmword_252E56730;
  *(result + 15856) = xmmword_252E56740;
  *(result + 13704) = 0x4074800000000000;
  *(result + 15816) = 0x40759B3333333333;
  *(result + 15784) = 0x404199999999999ALL;
  *(result + 13520) = xmmword_252E55BD0;
  *(result + 15792) = xmmword_252E56720;
  *(result + 13552) = xmmword_252E56420;
  *(result + 15760) = xmmword_252E56710;
  *(result + 13584) = xmmword_252E56430;
  *(result + 15752) = 0x4074D4CCCCCCCCCDLL;
  *(result + 15728) = xmmword_252E56700;
  *(result + 15696) = xmmword_252E566F0;
  *(result + 15720) = 0x405E000000000000;
  *(result + 15568) = xmmword_252E566C0;
  *(result + 15632) = xmmword_252E566D0;
  *(result + 15688) = 0x404E000000000000;
  *(result + 15664) = xmmword_252E566E0;
  *(result + 15656) = 0x403B800000000000;
  *(result + 13768) = 0x40478CCCCCCCCCCDLL;
  *(result + 15624) = 0x40688CCCCCCCCCCDLL;
  *(result + 15600) = xmmword_252E55C50;
  *(result + 13800) = 0x405CC00000000000;
  *(result + 15560) = 0x40428CCCCCCCCCCDLL;
  *(result + 15592) = 0x4061800000000000;
  *(result + 12880) = xmmword_252E562F0;
  *(result + 15344) = xmmword_252E562F0;
  *(result + 15528) = 0x4075466666666666;
  *(result + 15536) = xmmword_252E56310;
  *(result + 15472) = xmmword_252E566B0;
  *(result + 15496) = 0x4075466666666666;
  *(result + 15504) = xmmword_252E56310;
  *(result + 13832) = 0x4075380000000000;
  *(result + 15464) = 0x4039333333333333;
  *(result + 12944) = xmmword_252E56310;
  *(result + 15376) = xmmword_252E56310;
  *(result + 15440) = xmmword_252E566A0;
  *(result + 15432) = 0x4035666666666666;
  *(result + 15408) = xmmword_252E56690;
  *(result + 15368) = 0x4075466666666666;
  *(result + 15400) = 0x4065266666666666;
  *(result + 13864) = 0x4059133333333333;
  *(result + 13896) = 0x4047D9999999999ALL;
  *(result + 13928) = 0x4041F33333333333;
  *(result + 15336) = 0x4072C00000000000;
  strcpy((result + 15304), "fffff&v@ffffff)@");
  *(result + 15280) = xmmword_252E56100;
  *(result + 15321) = 0;
  *(result + 15322) = 0;
  *(result + 15324) = 1079541760;
  *(result + 13992) = 0x403E99999999999ALL;
  *(result + 15272) = 0x407364CCCCCCCCCDLL;
  *(result + 14024) = 0x40741CCCCCCCCCCDLL;
  *(result + 15248) = xmmword_252E55800;
  *(result + 15240) = 0x406FE9999999999ALL;
  *(result + 15216) = xmmword_252E56670;
  *(result + 14056) = 0x405BA66666666666;
  *(result + 14088) = 0x40617CCCCCCCCCCDLL;
  *(result + 13616) = xmmword_252E56440;
  *(result + 15184) = xmmword_252E56660;
  *(result + 15208) = 0x405E000000000000;
  *(result + 15176) = 0x404B59999999999ALL;
  *(result + 15120) = xmmword_252E56640;
  *(result + 15152) = xmmword_252E56650;
  *(result + 15144) = 0x4040F33333333333;
  *(result + 14928) = xmmword_252E565F0;
  *(result + 13736) = 0x406A400000000000;
  *(result + 15112) = 0x406A400000000000;
  *(result + 15080) = 0x40324CCCCCCCCCCDLL;
  *(result + 14960) = xmmword_252E56600;
  *(result + 15088) = xmmword_252E56630;
  *(result + 15048) = 0x4076580000000000;
  *(result + 15024) = xmmword_252E56610;
  *(result + 15056) = xmmword_252E56620;
  *(result + 14120) = 0x40694CCCCCCCCCCDLL;
  *(result + 15016) = 0x4069ACCCCCCCCCCDLL;
  *(result + 12752) = xmmword_252E562B0;
  *(result + 14952) = 0x403E000000000000;
  *(result + 14984) = 0x401599999999999ALL;
  *(result + 14992) = xmmword_252E562B0;
  *(result + 13416) = 0x405E000000000000;
  *(result + 13608) = 0x405E000000000000;
  *(result + 14184) = 0x405E000000000000;
  *(result + 14920) = 0x4066800000000000;
  *(result + 14216) = 0x4048C00000000000;
  *(result + 13648) = xmmword_252E56450;
  *(result + 14896) = xmmword_252E55240;
  *(result + 14832) = xmmword_252E565D0;
  *(result + 14888) = 0x4069B66666666666;
  *(result + 14864) = xmmword_252E565E0;
  *(result + 14280) = 0x4072F80000000000;
  *(result + 14856) = 0x4067E33333333333;
  *(result + 14760) = 0x4067DCCCCCCCCCCDLL;
  *(result + 13680) = xmmword_252E56460;
  *(result + 14824) = 0x406A833333333333;
  *(result + 14800) = xmmword_252E565C0;
  *(result + 14792) = 0x4027CCCCCCCCCCCDLL;
  *(result + 14768) = xmmword_252E565B0;
  *(result + 14312) = 0x4074F9999999999ALL;
  *(result + 14152) = 0x403E000000000000;
  *(result + 14728) = 0x403E000000000000;
  *(result + 14736) = xmmword_252E55870;
  *(result + 14704) = xmmword_252E565A0;
  *(result + 14696) = 0x4072E4CCCCCCCCCDLL;
  *(result + 14632) = 0x4042B33333333333;
  *(result + 14664) = 0x4030333333333333;
  *(result + 14672) = v1;
  *(result + 13712) = xmmword_252E56470;
  *(result + 13744) = xmmword_252E56480;
  *(result + 13776) = xmmword_252E56490;
  *(result + 13808) = xmmword_252E564A0;
  *(result + 13840) = xmmword_252E564B0;
  *(result + 13904) = xmmword_252E55F40;
  *(result + 13936) = xmmword_252E564C0;
  *(result + 14032) = xmmword_252E564D0;
  *(result + 14064) = xmmword_252E55B50;
  *(result + 14096) = xmmword_252E564E0;
  *(result + 14288) = xmmword_252E56520;
  *(result + 14640) = v1;
  *(result + 14320) = xmmword_252E56530;
  *(result + 14344) = 0x407671999999999ALL;
  *(result + 14600) = 0x4046B33333333333;
  *(result + 14608) = xmmword_252E56590;
  *(result + 14352) = xmmword_252E56540;
  *(result + 14568) = 0x4043666666666666;
  *(result + 14576) = v1;
  *(result + 14376) = 0x404E000000000000;
  *(result + 14536) = 0x4073ECCCCCCCCCCDLL;
  *(result + 14544) = xmmword_252E56580;
  *(result + 14384) = xmmword_252E55450;
  *(result + 14504) = 0u;
  *(result + 14520) = 0x401799999999999ALL;
  *(result + 14408) = 0x4053E66666666666;
  *(result + 14480) = xmmword_252E56570;
  *(result + 14448) = xmmword_252E56560;
  *(result + 14472) = 0x4055A66666666666;
  *(result + 14416) = xmmword_252E56550;
  *(result + 14440) = 0x404D400000000000;
  *(result + 20808) = 0u;
  *(result + 22376) = 0u;
  *(result + 22408) = 0u;
  *(result + 14248) = 0x40438CCCCCCCCCCDLL;
  *(result + 14256) = xmmword_252E56510;
  *(result + 14128) = xmmword_252E55830;
  *(result + 14224) = xmmword_252E56500;
  *(result + 14160) = xmmword_252E564F0;
  *(result + 20080) = xmmword_252E56D40;
  *(result + 20112) = xmmword_252E56D50;
  *(result + 14192) = xmmword_252E55450;
  *(result + 20144) = xmmword_252E56D60;
  *(result + 20176) = xmmword_252E56D70;
  *(result + 20240) = xmmword_252E55920;
  *(result + 20272) = xmmword_252E56D80;
  *(result + 12688) = xmmword_252E56290;
  *(result + 20304) = xmmword_252E56290;
  *(result + 20336) = xmmword_252E56D90;
  *(result + 20368) = xmmword_252E55200;
  *(result + 12496) = xmmword_252E55450;
  *(result + 13872) = xmmword_252E55450;
  *(result + 13968) = xmmword_252E55450;
  *(result + 20400) = xmmword_252E55450;
  *(result + 20432) = xmmword_252E56DA0;
  *(result + 20464) = xmmword_252E56DB0;
  *(result + 14000) = xmmword_252E56240;
  *(result + 20496) = xmmword_252E56DC0;
  *(result + 20528) = xmmword_252E56DD0;
  *(result + 20560) = xmmword_252E56DE0;
  *(result + 20592) = xmmword_252E56DF0;
  *(result + 13960) = 0x406E000000000000;
  *(result + 20624) = xmmword_252E56E00;
  *(result + 20656) = xmmword_252E56E10;
  *(result + 20688) = xmmword_252E56E20;
  *(result + 20720) = xmmword_252E56720;
  *(result + 20752) = xmmword_252E56E30;
  *(result + 20784) = xmmword_252E56E40;
  *(result + 20848) = xmmword_252E56E50;
  *(result + 20880) = xmmword_252E56E60;
  *(result + 20912) = xmmword_252E56E70;
  *(result + 20944) = xmmword_252E56E80;
  *(result + 20976) = xmmword_252E56E90;
  *(result + 21008) = xmmword_252E56EA0;
  *(result + 21072) = xmmword_252E56EB0;
  *(result + 21104) = xmmword_252E56EC0;
  *(result + 21136) = xmmword_252E56ED0;
  *(result + 21168) = xmmword_252E56EE0;
  *(result + 21200) = xmmword_252E56EF0;
  *(result + 21232) = xmmword_252E56F00;
  *(result + 21264) = xmmword_252E56F10;
  *(result + 21328) = xmmword_252E56F20;
  *(result + 21360) = xmmword_252E56F30;
  *(result + 21392) = xmmword_252E56F40;
  *(result + 21424) = xmmword_252E55820;
  *(result + 21488) = xmmword_252E56F50;
  *(result + 21520) = xmmword_252E56F60;
  *(result + 21552) = xmmword_252E56F70;
  *(result + 21584) = xmmword_252E56F80;
  *(result + 21616) = xmmword_252E56F90;
  *(result + 21648) = xmmword_252E56FA0;
  *(result + 21680) = xmmword_252E56FB0;
  *(result + 21712) = xmmword_252E551B0;
  *(result + 21744) = xmmword_252E56FC0;
  *(result + 12784) = xmmword_252E562C0;
  *(result + 21776) = xmmword_252E562C0;
  *(result + 21808) = xmmword_252E56FD0;
  *(result + 21840) = xmmword_252E56FE0;
  *(result + 21872) = xmmword_252E56FF0;
  *(result + 21904) = xmmword_252E556C0;
  *(result + 21936) = xmmword_252E57000;
  *(result + 21968) = xmmword_252E55D20;
  *(result + 22000) = xmmword_252E57010;
  *(result + 22032) = xmmword_252E57020;
  *(result + 22064) = xmmword_252E57030;
  *(result + 22096) = xmmword_252E57040;
  *(result + 22128) = xmmword_252E57050;
  *(result + 22160) = xmmword_252E57060;
  *(result + 22192) = xmmword_252E57070;
  *(result + 22256) = xmmword_252E55400;
  *(result + 22320) = xmmword_252E57080;
  *(result + 22352) = xmmword_252E57090;
  *(result + 12464) = xmmword_252E56240;
  *(result + 22448) = xmmword_252E56240;
  *(result + 22480) = xmmword_252E570A0;
  *(result + 22521) = 0;
  *(result + 22522) = 0;
  *(result + 22524) = 1079271424;
  *(result + 22544) = xmmword_252E570C0;
  *(result + 22576) = xmmword_252E570D0;
  *(result + 22608) = xmmword_252E570E0;
  *(result + 22640) = xmmword_252E570F0;
  *(result + 12240) = v1;
  *(result + 13480) = 0x4041266666666666;
  *(result + 20208) = v1;
  *(result + 21040) = v1;
  *(result + 21296) = v1;
  *(result + 21456) = v1;
  *(result + 22224) = v1;
  *(result + 22288) = v1;
  *(result + 22672) = v1;
  *(result + 22704) = xmmword_252E57100;
  *(result + 22736) = xmmword_252E55410;
  *(result + 22768) = xmmword_252E55F00;
  *(result + 22800) = xmmword_252E57110;
  *(result + 12328) = 0x4034000000000000;
  *(result + 12360) = 0x404B266666666666;
  *(result + 13384) = 0x4062C00000000000;
  *(result + 12392) = 0x406EDCCCCCCCCCCDLL;
  *(result + 12424) = 0x406189999999999ALL;
  *(result + 13352) = 0x4063C33333333333;
  *(result + 12456) = 0x403419999999999ALL;
  *(result + 12520) = 0x4071480000000000;
  qmemcpy((result + 12552), "33333su@333333A@33333sL@", 24);
  *(result + 13320) = 0x4046B33333333333;
  *(result + 12584) = 0x4075B9999999999ALL;
  *(result + 12616) = 0x4069500000000000;
  *(result + 13288) = 0x4067666666666666;
  *(result + 12648) = 0x406349999999999ALL;
  *(result + 13224) = 0x401A666666666666;
  *(result + 12680) = 0x406E000000000000;
  *(result + 13256) = 0x406E000000000000;
  *(result + 12744) = 0x401599999999999ALL;
  *(result + 12808) = 0x406A133333333333;
  *(result + 12840) = 0x406419999999999ALL;
  *(result + 13192) = 0x4074233333333333;
  *(result + 12904) = 0x407201999999999ALL;
  *(result + 12936) = 0x407039999999999ALL;
  *(result + 13160) = 0x406639999999999ALL;
  *(result + 12968) = 0x40743CCCCCCCCCCDLL;
  *(result + 13000) = 0x4062566666666666;
  *(result + 13128) = 0x406A800000000000;
  *(result + 13032) = 0x406F100000000000;
  *(result + 13064) = 0x4063A00000000000;
  *(result + 13096) = 0x4022CCCCCCCCCCCDLL;
  *(result + 20136) = 0x403299999999999ALL;
  *(result + 20168) = 0x4040800000000000;
  *(result + 20232) = 0x403B4CCCCCCCCCCDLL;
  *(result + 20264) = 0x4074000000000000;
  *(result + 20296) = 0x4039800000000000;
  *(result + 20424) = 0x40683CCCCCCCCCCDLL;
  *(result + 20456) = 0x4065433333333333;
  *(result + 20488) = 0x4024666666666666;
  *(result + 20552) = 0x4074D00000000000;
  *(result + 20584) = 0x406649999999999ALL;
  *(result + 20616) = 0x403D99999999999ALL;
  *(result + 20648) = 0x4040A66666666666;
  *(result + 20680) = 0x404D000000000000;
  *(result + 20712) = 0x4022333333333333;
  *(result + 20744) = 0x4041666666666666;
  *(result + 20776) = 0x4075E33333333333;
  *(result + 12776) = 0x4048266666666666;
  *(result + 12872) = 0x4072C00000000000;
  *(result + 20824) = 0x404919999999999ALL;
  *(result + 20840) = 0x4065066666666666;
  *(result + 20872) = 0x4069D66666666666;
  *(result + 20904) = 0x406A7CCCCCCCCCCDLL;
  *(result + 20936) = 0x4037B33333333333;
  *(result + 20968) = 0x4075A9999999999ALL;
  *(result + 21000) = 0x4065E9999999999ALL;
  *(result + 21032) = 0x4066066666666666;
  *(result + 21064) = 0x4061C66666666666;
  *(result + 21096) = 0x40755B3333333333;
  *(result + 21128) = 0x407489999999999ALL;
  *(result + 21160) = 0x4074533333333333;
  *(result + 21192) = 0x406BC00000000000;
  *(result + 21224) = 0x4075300000000000;
  *(result + 21256) = 0x406B9CCCCCCCCCCDLL;
  *(result + 21288) = 0x40450CCCCCCCCCCDLL;
  *(result + 21320) = 0x4061A33333333333;
  *(result + 21352) = 0x4062966666666666;
  *(result + 21384) = 0x40766E6666666666;
  *(result + 12712) = 0x4075D9999999999ALL;
  *(result + 20200) = 0x4048000000000000;
  *(result + 21448) = 0x4048000000000000;
  *(result + 21480) = 0x406F99999999999ALL;
  *(result + 21544) = 0x406E733333333333;
  *(result + 21576) = 0x406C766666666666;
  *(result + 21608) = 0x4035666666666666;
  *(result + 21640) = 0x406B033333333333;
  *(result + 21672) = 0x4044000000000000;
  *(result + 21736) = 0x4076433333333333;
  *(result + 21768) = 0x4048266666666666;
  *(result + 21800) = 0x40490CCCCCCCCCCDLL;
  *(result + 21832) = 0x40763E6666666666;
  *(result + 21864) = 0x406629999999999ALL;
  *(result + 21896) = 0x4013333333333333;
  *(result + 21928) = 0x40714E6666666666;
  *(result + 12488) = 0;
  *(result + 12232) = 0x4072C00000000000;
  *(result + 20520) = 0x4072C00000000000;
  *(result + 21512) = 0x4072C00000000000;
  *(result + 21960) = 0x4072C00000000000;
  *(result + 21992) = 0x406C99999999999ALL;
  *(result + 22024) = 0x4075033333333333;
  *(result + 22056) = 0x40641CCCCCCCCCCDLL;
  *(result + 22088) = 0x3FF999999999999ALL;
  *(result + 22120) = 0x4075CE6666666666;
  *(result + 22152) = 0x407484CCCCCCCCCDLL;
  *(result + 22184) = 0x4027666666666666;
  *(result + 22216) = 0x4071566666666666;
  *(result + 20392) = 0x4066800000000000;
  *(result + 22248) = 0x4066800000000000;
  *(result + 22280) = 0x4066800000000000;
  *(result + 22312) = 0x401ACCCCCCCCCCCDLL;
  *(result + 22344) = 0x40438CCCCCCCCCCDLL;
  *(result + 20328) = 0x4059000000000000;
  *(result + 22392) = 0x4059000000000000;
  *(result + 22424) = 0x4058066666666666;
  *(result + 22440) = 0x4074900000000000;
  *(result + 22472) = 0x4075D9999999999ALL;
  strcpy((result + 22504), "fffff6l@3333336@");
  *(result + 22536) = 0x40760CCCCCCCCCCDLL;
  *(result + 22568) = 0x4071900000000000;
  *(result + 22600) = 0x4060F9999999999ALL;
  *(result + 22632) = 0x406A733333333333;
  *(result + 21704) = 0x404E000000000000;
  *(result + 22664) = 0x404E000000000000;
  *(result + 20104) = 0x4041266666666666;
  *(result + 22696) = 0x4041266666666666;
  *(result + 22728) = 0x4053ECCCCCCCCCCDLL;
  *(result + 22760) = 0x406D1CCCCCCCCCCDLL;
  *(result + 22792) = 0x40374CCCCCCCCCCDLL;
  qword_27F575A90 = result;
  *(result + 20360) = 0;
  *(result + 21416) = 0;
  return result;
}

BOOL sub_252C5BE1C(uint64_t a1, uint64_t a2, uint64_t a3)
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

  sub_252E379C4();
  if (!v3)
  {
    return v8;
  }

  return v5;
}

BOOL sub_252C5BF14(double *a1, double *a2)
{
  v3 = a1[1];
  v2 = a1[2];
  v4 = a1[3];
  v6 = a2[1];
  v5 = a2[2];
  v7 = a2[3];
  v8 = HueSemantic.rawValue.getter();
  v10 = v9;
  if (v8 == HueSemantic.rawValue.getter() && v10 == v11)
  {

    if (v3 != v6 || v2 != v5)
    {
      return 0;
    }

    return v4 == v7;
  }

  v14 = sub_252E37DB4();

  result = 0;
  if ((v14 & 1) != 0 && v3 == v6 && v2 == v5)
  {
    return v4 == v7;
  }

  return result;
}

uint64_t sub_252C5C010(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v6 = a5 & 0xFFFFFFFFFFFFLL;
  }

  if (a3 == a5 && a4 == a6 && !(a1 >> 16) && a2 >> 16 == v6)
  {
    return 1;
  }

  else
  {
    return sub_252E37D84() & 1;
  }
}

unint64_t sub_252C5C088(uint64_t a1, unint64_t a2)
{
  sub_252DCD3CC(58, 0xE100000000000000, a1, a2);
  v4 = sub_252E37084();
  v5 = sub_252E37194();
  v9 = sub_252C5C010(v5, v6, v7, v8, 4346696, 0xE300000000000000);

  if (v9)
  {
    v10 = sub_252DCD3CC(59, 0xE100000000000000, a1, a2);
    v12 = v11;
    v13 = sub_252E37084();
    if ((v12 & 1) == 0 && (v10 ^ v13) < 0x4000)
    {
      result = sub_252E37084();
      if (v4 >> 14 < result >> 14)
      {
        __break(1u);
      }

      else
      {
        v15 = sub_252E37194();
        v17 = v16;
        v19 = v18;
        v21 = v20;

        v32[0] = v15;
        v32[1] = v17;
        v32[2] = v19;
        v32[3] = v21;
        sub_2529C7C0C();
        sub_252947DBC();
        v22 = sub_252E37794();

        if (v22[2])
        {
          v23 = v22[4];
          v24 = v22[5];
          v32[0] = 0;

          v25 = sub_252C5BE1C(v23, v24, v32);

          if (v22[2] >= 2uLL)
          {
            v26 = v32[0];
            v27 = v22[6];
            v28 = v22[7];
            v32[0] = 0;

            sub_252C5BE1C(v27, v28, v32);

            if (v22[2] >= 3uLL)
            {
              v29 = v22[8];
              v30 = v22[9];

              v32[0] = 0;
              sub_252C5BE1C(v29, v30, v32);

              if (v25)
              {
                return v26;
              }

              else
              {
                return 0;
              }
            }

LABEL_17:
            __break(1u);
            return result;
          }

LABEL_16:
          __break(1u);
          goto LABEL_17;
        }
      }

      __break(1u);
      goto LABEL_16;
    }
  }

  if (qword_27F53F4B0 != -1)
  {
    swift_once();
  }

  v31 = sub_252E36AD4();
  __swift_project_value_buffer(v31, qword_27F544CB8);
  sub_252E379F4();

  strcpy(v32, "Invalid color ");
  HIBYTE(v32[1]) = -18;
  MEMORY[0x2530AD570](a1, a2);

  MEMORY[0x2530AD570](0xD000000000000019, 0x8000000252E8CDA0);
  sub_252CC4050(v32[0], v32[1], 0xD000000000000083, 0x8000000252E8CDC0, 0xD000000000000012, 0x8000000252E8CE50, 38);

  return 0;
}

_BYTE *sub_252C5C488@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v2 = *result;
  v3 = v2 > 0x20;
  v4 = (1 << v2) & 0x100003E01;
  if (v3 || v4 == 0)
  {
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v7 = *result == 0;
    }

    else
    {
      v7 = 0;
    }

    *a2 = v7;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_252C5C514(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD3C && *(a1 + 32))
  {
    return (*a1 + 64828);
  }

  v3 = *a1;
  v4 = v3 >= 0x2C5;
  v5 = v3 - 709;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}