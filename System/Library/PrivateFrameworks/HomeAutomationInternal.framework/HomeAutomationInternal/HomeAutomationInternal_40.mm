id sub_252C39B08(uint64_t a1, char a2)
{
  v3 = v2;
  v59 = v3;
  v6 = [v3 userTask];
  if (v6 && (v7 = v6, v8 = [v6 attribute], v7, v8 == 6) || (v9 = objc_msgSend(v59, sel_userTask)) != 0 && (v10 = v9, v11 = objc_msgSend(v9, sel_attribute), v10, v11 == 19) || (v12 = objc_msgSend(v59, sel_userTask)) != 0 && (v13 = v12, v14 = objc_msgSend(v12, sel_attribute), v13, v14 == 17))
  {
    if ((a2 & 1) == 0)
    {
      v15 = [v59 userTask];
      if (v15)
      {
        v16 = v15;
        v17 = [v15 value];
        if (v17)
        {
          v18 = v17;
          [v17 doubleValue];
          v20 = v19;

          if (a1 == 2)
          {
            v33 = [v16 value];
            if (!v33 || (v34 = v33, v35 = [v33 unit], v34, v35 != 2))
            {
              v36 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
              v37 = sub_252E36F04();
              v38 = [v36 initWithIdentifier:0 displayString:v37];

              v39 = v38;
              [v39 setDoubleValue_];
              [v39 setUnit_];
              [v39 setType_];

              v40 = qword_27F53F4E8;
              v29 = v39;
              if (v40 != -1)
              {
                swift_once();
              }

              v41 = sub_252E36AD4();
              __swift_project_value_buffer(v41, qword_27F544D60);
              sub_252E379F4();
              MEMORY[0x2530AD570](0xD000000000000011, 0x8000000252E8C1A0);
              sub_252E37374();
              v31 = 0xD000000000000010;
              v32 = 0x8000000252E8C1C0;
              goto LABEL_22;
            }
          }

          else if (a1 == 3)
          {
            v21 = [v16 value];
            if (!v21 || (v22 = v21, v23 = [v21 unit], v22, v23 != 3))
            {
              v24 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
              v25 = sub_252E36F04();
              v26 = [v24 initWithIdentifier:0 displayString:v25];

              v27 = v26;
              [v27 setDoubleValue_];
              [v27 setUnit_];
              [v27 setType_];

              v28 = qword_27F53F4E8;
              v29 = v27;
              if (v28 != -1)
              {
                swift_once();
              }

              v30 = sub_252E36AD4();
              __swift_project_value_buffer(v30, qword_27F544D60);
              sub_252E379F4();
              MEMORY[0x2530AD570](0xD000000000000011, 0x8000000252E8C1A0);
              sub_252E37374();
              v31 = 0x736C6563206F7420;
              v32 = 0xED0000203A737569;
LABEL_22:
              MEMORY[0x2530AD570](v31, v32);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540CD0, &unk_252E3E540);
              v42 = sub_252E36F94();
              MEMORY[0x2530AD570](v42);

              sub_252CC3D90(0, 0xE000000000000000, 0xD00000000000008ELL, 0x8000000252E6F700);

              v43 = [v16 taskType];
              v44 = [v16 attribute];
              v45 = objc_allocWithZone(type metadata accessor for HomeUserTask());
              v46 = sub_252E36F04();
              v47 = [v45 initWithIdentifier:0 displayString:v46];

              v48 = v47;
              [v48 setTaskType_];
              [v48 setAttribute_];
              [v48 setValue_];

              v49 = [v59 taskOutcome];
              v50 = objc_allocWithZone(type metadata accessor for HomeUserTaskResponse());
              v51 = sub_252E36F04();
              v52 = [v50 initWithIdentifier:0 displayString:v51];

              v53 = v52;
              [v53 setTaskOutcome_];
              [v53 setUserTask_];

              return v53;
            }
          }

          else
          {
            if (qword_27F53F4E8 != -1)
            {
              swift_once();
            }

            v55 = sub_252E36AD4();
            __swift_project_value_buffer(v55, qword_27F544D60);
            v56 = sub_252E36AC4();
            v57 = sub_252E374C4();
            if (os_log_type_enabled(v56, v57))
            {
              v58 = swift_slowAlloc();
              *v58 = 0;
              _os_log_impl(&dword_252917000, v56, v57, "Unsupported unit type", v58, 2u);
              MEMORY[0x2530AED00](v58, -1, -1);
            }
          }
        }
      }
    }
  }

  return v59;
}

id sub_252C3A26C(char a1)
{
  v2 = v1;
  v58 = v2;
  v4 = [v2 userTask];
  if (v4 && (v5 = v4, v6 = [v4 attribute], v5, v6 == 6) || (v7 = objc_msgSend(v58, sel_userTask)) != 0 && (v8 = v7, v9 = objc_msgSend(v7, sel_attribute), v8, v9 == 19))
  {
    if (a1 == 4)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v10 = [v58 userTask];
    if (!v10)
    {
      goto LABEL_33;
    }

    v11 = v10;
    v12 = [v10 attribute];

    if (v12 != 17 || a1 == 4)
    {
      goto LABEL_33;
    }
  }

  v14 = [v58 userTask];
  if (v14)
  {
    v15 = v14;
    v16 = [v14 value];
    if (v16)
    {
      v17 = v16;
      [v16 doubleValue];
      v19 = v18;

      if (a1 == 2)
      {
        v32 = [v15 value];
        if (!v32 || (v33 = v32, v34 = [v32 unit], v33, v34 != 2))
        {
          v35 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
          v36 = sub_252E36F04();
          v37 = [v35 initWithIdentifier:0 displayString:v36];

          v38 = v37;
          [v38 setDoubleValue_];
          [v38 setUnit_];
          [v38 setType_];

          v39 = qword_27F53F4E8;
          v28 = v38;
          if (v39 != -1)
          {
            swift_once();
          }

          v40 = sub_252E36AD4();
          __swift_project_value_buffer(v40, qword_27F544D60);
          sub_252E379F4();
          MEMORY[0x2530AD570](0xD000000000000011, 0x8000000252E8C1A0);
          sub_252E37374();
          v30 = 0xD000000000000010;
          v31 = 0x8000000252E8C1C0;
          goto LABEL_26;
        }
      }

      else if (a1 == 1)
      {
        v20 = [v15 value];
        if (!v20 || (v21 = v20, v22 = [v20 unit], v21, v22 != 3))
        {
          v23 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
          v24 = sub_252E36F04();
          v25 = [v23 initWithIdentifier:0 displayString:v24];

          v26 = v25;
          [v26 setDoubleValue_];
          [v26 setUnit_];
          [v26 setType_];

          v27 = qword_27F53F4E8;
          v28 = v26;
          if (v27 != -1)
          {
            swift_once();
          }

          v29 = sub_252E36AD4();
          __swift_project_value_buffer(v29, qword_27F544D60);
          sub_252E379F4();
          MEMORY[0x2530AD570](0xD000000000000011, 0x8000000252E8C1A0);
          sub_252E37374();
          v30 = 0x736C6563206F7420;
          v31 = 0xED0000203A737569;
LABEL_26:
          MEMORY[0x2530AD570](v30, v31);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540CD0, &unk_252E3E540);
          v41 = sub_252E36F94();
          MEMORY[0x2530AD570](v41);

          sub_252CC3D90(0, 0xE000000000000000, 0xD00000000000008ELL, 0x8000000252E6F700);

          v42 = [v15 taskType];
          v43 = [v15 attribute];
          v44 = objc_allocWithZone(type metadata accessor for HomeUserTask());
          v45 = sub_252E36F04();
          v46 = [v44 initWithIdentifier:0 displayString:v45];

          v47 = v46;
          [v47 setTaskType_];
          [v47 setAttribute_];
          [v47 setValue_];

          v48 = [v58 taskOutcome];
          v49 = objc_allocWithZone(type metadata accessor for HomeUserTaskResponse());
          v50 = sub_252E36F04();
          v51 = [v49 initWithIdentifier:0 displayString:v50];

          v52 = v51;
          [v52 setTaskOutcome_];
          [v52 setUserTask_];

          return v52;
        }
      }

      else
      {
        if (qword_27F53F4E8 != -1)
        {
          swift_once();
        }

        v54 = sub_252E36AD4();
        __swift_project_value_buffer(v54, qword_27F544D60);
        v55 = sub_252E36AC4();
        v56 = sub_252E374C4();
        if (os_log_type_enabled(v55, v56))
        {
          v57 = swift_slowAlloc();
          *v57 = 0;
          _os_log_impl(&dword_252917000, v55, v56, "Unsupported unit type", v57, 2u);
          MEMORY[0x2530AED00](v57, -1, -1);
        }
      }
    }
  }

LABEL_33:

  return v58;
}

void sub_252C3A9E4(uint64_t a1, char a2)
{
  v3 = v2;
  if ((a2 & 1) != 0 || (v19 = v2, v5 = [v2 taskResponses], v3 = v2, !v5))
  {

    v12 = v3;
    return;
  }

  v6 = v5;
  type metadata accessor for HomeUserTaskResponse();
  v7 = sub_252E37264();

  v20 = MEMORY[0x277D84F90];
  if (v7 >> 62)
  {
    v8 = sub_252E378C4();
    if (v8)
    {
      goto LABEL_5;
    }

LABEL_18:

    v13 = [v19 entity];
    v14 = objc_allocWithZone(type metadata accessor for HomeEntityResponse());
    v15 = sub_252E36F04();
    v16 = [v14 initWithIdentifier:0 displayString:v15];

    v17 = v16;
    [v17 setEntity_];
    v18 = sub_252E37254();

    [v17 setTaskResponses_];

    return;
  }

  v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v8)
  {
    goto LABEL_18;
  }

LABEL_5:
  if (v8 >= 1)
  {
    for (i = 0; i != v8; ++i)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x2530ADF00](i, v7);
      }

      else
      {
        v10 = *(v7 + 8 * i + 32);
      }

      v11 = v10;
      sub_252C39B08(a1, 0);
      MEMORY[0x2530AD700]();
      if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_252E372A4();
      }

      sub_252E372D4();
    }

    goto LABEL_18;
  }

  __break(1u);
}

void sub_252C3AC5C(char a1)
{
  v2 = v1;
  if (a1 == 4 || (v18 = v1, v4 = [v1 taskResponses], v2 = v1, !v4))
  {

    v11 = v2;
    return;
  }

  v5 = v4;
  type metadata accessor for HomeUserTaskResponse();
  v6 = sub_252E37264();

  v19 = MEMORY[0x277D84F90];
  if (v6 >> 62)
  {
    v7 = sub_252E378C4();
    if (v7)
    {
      goto LABEL_5;
    }

LABEL_18:

    v12 = [v18 entity];
    v13 = objc_allocWithZone(type metadata accessor for HomeEntityResponse());
    v14 = sub_252E36F04();
    v15 = [v13 initWithIdentifier:0 displayString:v14];

    v16 = v15;
    [v16 setEntity_];
    v17 = sub_252E37254();

    [v16 setTaskResponses_];

    return;
  }

  v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v7)
  {
    goto LABEL_18;
  }

LABEL_5:
  if (v7 >= 1)
  {
    for (i = 0; i != v7; ++i)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x2530ADF00](i, v6);
      }

      else
      {
        v9 = *(v6 + 8 * i + 32);
      }

      v10 = v9;
      sub_252C3A26C(a1);
      MEMORY[0x2530AD700]();
      if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_252E372A4();
      }

      sub_252E372D4();
    }

    goto LABEL_18;
  }

  __break(1u);
}

void sub_252C3AED8(uint64_t a1, void (*a2)(void *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v8 = a1;
  v115 = MEMORY[0x277D84F90];
  sub_252C4B778(a1);
  if (qword_27F53F498 != -1)
  {
    goto LABEL_96;
  }

  while (1)
  {
    v9 = sub_252E36AD4();
    __swift_project_value_buffer(v9, qword_27F544C70);
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000066, 0x8000000252E6D140);
    v10 = [v8 description];
    v11 = sub_252E36F34();
    v13 = v12;

    MEMORY[0x2530AD570](v11, v13);

    sub_252CC3D90(0, 0xE000000000000000, 0xD00000000000008ALL, 0x8000000252E8BF70);

    v14 = [v8 filters];
    if (!v14)
    {
      goto LABEL_5;
    }

    v15 = v14;
    type metadata accessor for HomeFilter();
    v16 = sub_252E37264();

    v17 = type metadata accessor for HomeStore(0);
    v18 = static HomeStore.shared.getter(v17);
    v19 = HomeStore.accessories(matching:supporting:)(v16, 0);
    LOBYTE(v15) = v20;

    if (v15)
    {
      break;
    }

    v104 = v6;
    v25 = sub_2529EE724(v19);
    v6 = v25;
    if (v25 >> 62)
    {
      v26 = sub_252E378C4();
    }

    else
    {
      v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v105 = a2;
    v106 = v8;
    if (!v26)
    {
      v111 = 0;
LABEL_30:

      v41 = sub_2529EE724(v19);
      sub_252929F10(v19, 0);
      if (v41 >> 62)
      {
        v42 = sub_252E378C4();
      }

      else
      {
        v42 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v42)
      {
        v6 = 0;
        v8 = v41 & 0xC000000000000001;
        do
        {
          if (v8)
          {
            v43 = MEMORY[0x2530ADF00](v6, v41);
            v44 = v6 + 1;
            if (__OFADD__(v6, 1))
            {
              goto LABEL_94;
            }
          }

          else
          {
            if (v6 >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_95;
            }

            v43 = *(v41 + 8 * v6 + 32);

            v44 = v6 + 1;
            if (__OFADD__(v6, 1))
            {
              goto LABEL_94;
            }
          }

          v45 = [*(v43 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) serviceType];
          a2 = sub_252E36F34();
          v47 = v46;

          if (qword_27F53F8B8 != -1)
          {
            swift_once();
          }

          v48 = off_27F546230;
          if (*(off_27F546230 + 2) && (v49 = sub_252A44A10(a2, v47), (v50 & 1) != 0))
          {
            v51 = *(v48[7] + 8 * v49);

            if (v51 == 3)
            {
              v52 = 0xE400000000000000;
              LODWORD(v42) = 1;
              v53 = 1702195828;
              goto LABEL_50;
            }
          }

          else
          {
          }

          ++v6;
        }

        while (v44 != v42);
        LODWORD(v42) = 0;
        v52 = 0xE500000000000000;
        v53 = 0x65736C6166;
      }

      else
      {
        v52 = 0xE500000000000000;
        v53 = 0x65736C6166;
      }

LABEL_50:

      sub_252E379F4();

      if (v111)
      {
        v54 = 1702195828;
      }

      else
      {
        v54 = 0x65736C6166;
      }

      if (v111)
      {
        v55 = 0xE400000000000000;
      }

      else
      {
        v55 = 0xE500000000000000;
      }

      MEMORY[0x2530AD570](v54, v55);

      sub_252CC3D90(0xD000000000000022, 0x8000000252E6D260, 0xD00000000000008ALL, 0x8000000252E8BF70);

      sub_252E379F4();

      MEMORY[0x2530AD570](v53, v52);

      sub_252CC3D90(0xD000000000000020, 0x8000000252E6D290, 0xD00000000000008ALL, 0x8000000252E8BF70);

      v56 = sub_252C3DF6C(v106, v111, v42);
      v58 = v57;
      v113 = v56;
      v114 = v57 & 1;
      sub_2529904E4(v56);
      if (v58)
      {
LABEL_81:
        sub_25293847C(&v113, &qword_27F540880, &qword_252E53B20);
      }

      else
      {
        v59 = qword_27F53F3F8;
        v60 = v56;
        if (v59 != -1)
        {
          swift_once();
        }

        v61 = qword_27F575A30;
        v62 = OBJC_IVAR___ControlHomeIntentResponse_code;
        swift_beginAccess();
        if (*(v61 + 16))
        {
          v63 = *&v60[v62];
          sub_252E37EC4();
          MEMORY[0x2530AE390](v63);
          v64 = sub_252E37F14();
          v65 = -1 << *(v61 + 32);
          v66 = v64 & ~v65;
          if ((*(v61 + 56 + ((v66 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v66))
          {
            v67 = ~v65;
            while (*(*(v61 + 48) + 8 * v66) != v63)
            {
              v66 = (v66 + 1) & v67;
              if (((*(v61 + 56 + ((v66 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v66) & 1) == 0)
              {
                goto LABEL_64;
              }
            }

            sub_252927D3C(v56);
            goto LABEL_81;
          }
        }

LABEL_64:
        v68 = sub_252C2AC20();
        sub_252927D3C(v56);
        if (v68)
        {
          goto LABEL_81;
        }

        sub_25293847C(&v113, &qword_27F540880, &qword_252E53B20);
        v69 = v60;
        v70 = [v69 entityResponses];
        if (v70)
        {
          v71 = v70;
          type metadata accessor for HomeEntityResponse();
          v72 = sub_252E37264();

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541880, &qword_252E40B08);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_252E3C290;
          *(inited + 32) = v56;
          *(inited + 40) = 0;
          v74 = v69;
          sub_25297A930(inited);
          v75 = sub_252C3BC1C(v106, v72, v111, v42, a4, a5);

          sub_25297A930(v76);
          v77 = v75[2];
          if (v77)
          {
            v112 = v72;
            for (i = 0; i != v77; ++i)
            {
              v80 = &v75[2 * i + 4];
              if ((*(v80 + 8) & 1) == 0)
              {
                v81 = *v80;
                v82 = qword_27F53F3F8;
                v83 = *v80;
                if (v82 != -1)
                {
                  swift_once();
                }

                v84 = qword_27F575A30;
                v85 = OBJC_IVAR___ControlHomeIntentResponse_code;
                swift_beginAccess();
                if (*(v84 + 16) && (v86 = *&v83[v85], sub_252E37EC4(), MEMORY[0x2530AE390](v86), v87 = sub_252E37F14(), v88 = -1 << *(v84 + 32), v89 = v87 & ~v88, ((*(v84 + 56 + ((v89 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v89) & 1) != 0))
                {
                  v90 = ~v88;
                  while (*(*(v84 + 48) + 8 * v89) != v86)
                  {
                    v89 = (v89 + 1) & v90;
                    if (((*(v84 + 56 + ((v89 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v89) & 1) == 0)
                    {
                      goto LABEL_68;
                    }
                  }

                  sub_252927D3C(v81);
                }

                else
                {
LABEL_68:
                  v79 = sub_252C2AC20();
                  sub_252927D3C(v81);
                  if ((v79 & 1) == 0)
                  {

                    v102 = sub_252C3C724(v106, v112, a4, a5);

                    sub_25297A930(v102);
                    v103 = sub_252B4F134(v115);

                    v101 = combineResults(results:)(v103);

                    v105(v101);
                    goto LABEL_90;
                  }
                }
              }
            }
          }

          v97 = sub_252E36AC4();
          v98 = sub_252E374D4();
          if (os_log_type_enabled(v97, v98))
          {
            v99 = swift_slowAlloc();
            *v99 = 0;
            _os_log_impl(&dword_252917000, v97, v98, "All entities returned error to handle climate Mode. Exiting before continuing with thermostat request", v99, 2u);
            MEMORY[0x2530AED00](v99, -1, -1);
          }

          v100 = sub_252B4F134(v115);

          v101 = combineResults(results:)(v100);

          v105(v101);
LABEL_90:

          sub_252927D3C(v56);
          v96 = v56;
          goto LABEL_85;
        }

        sub_252927D3C(v56);
      }

      v91 = sub_252E36AC4();
      v92 = sub_252E374D4();
      if (os_log_type_enabled(v91, v92))
      {
        v93 = swift_slowAlloc();
        *v93 = 0;
        _os_log_impl(&dword_252917000, v91, v92, "There was an error getting the currentClimateValues", v93, 2u);
        MEMORY[0x2530AED00](v93, -1, -1);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5402A8, &unk_252E3E850);
      v94 = swift_initStackObject();
      *(v94 + 16) = xmmword_252E3C290;
      *(v94 + 32) = v56;
      *(v94 + 40) = v58 & 1;
      sub_2529904E4(v56);
      v95 = combineResults(results:)(v94);
      swift_setDeallocating();
      sub_25293847C(v94 + 32, &qword_27F5402B0, &qword_252E3C0E0);
      v105(v95);

      v96 = v56;
LABEL_85:
      sub_252927D3C(v96);
      return;
    }

    v8 = 0;
    v110 = (v6 & 0xC000000000000001);
    v27 = v6 & 0xFFFFFFFFFFFFFF8;
    while (v110)
    {
      v29 = MEMORY[0x2530ADF00](v8, v6);
      v30 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_92;
      }

LABEL_19:
      v31 = v6;
      v32 = v26;
      v33 = v19;
      v34 = [*(v29 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) serviceType];
      a2 = sub_252E36F34();
      v36 = v35;

      if (qword_27F53F8B8 != -1)
      {
        swift_once();
      }

      v37 = off_27F546230;
      if (*(off_27F546230 + 2) && (v38 = sub_252A44A10(a2, v36), (v39 & 1) != 0))
      {
        v40 = *(v37[7] + 8 * v38);

        if (v40 == 29)
        {
          v111 = 1;
          v19 = v33;
          goto LABEL_30;
        }
      }

      else
      {
      }

      ++v8;
      v26 = v32;
      v28 = v30 == v32;
      v19 = v33;
      v6 = v31;
      if (v28)
      {
        v111 = 0;
        goto LABEL_30;
      }
    }

    if (v8 >= *(v27 + 16))
    {
      goto LABEL_93;
    }

    v29 = *(v6 + 8 * v8 + 32);

    v30 = v8 + 1;
    if (!__OFADD__(v8, 1))
    {
      goto LABEL_19;
    }

LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    swift_once();
  }

  sub_252929F10(v19, 1);
LABEL_5:
  v21 = sub_252E36AC4();
  v22 = sub_252E374D4();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_252917000, v21, v22, "Failed to retrieve list of targeted accessories from intent filters.", v23, 2u);
    MEMORY[0x2530AED00](v23, -1, -1);
  }

  v24 = sub_252B4F134(MEMORY[0x277D84F90]);
  v109 = combineResults(results:)(v24);

  a2(v109);
}

void *sub_252C3BC1C(void *a1, uint64_t a2, char a3, char a4, uint64_t a5, uint64_t a6)
{
  v94 = MEMORY[0x277D84F90];
  v12 = [a1 filters];
  if (!v12)
  {
    if (qword_27F53F498 != -1)
    {
      swift_once();
    }

    v36 = sub_252E36AD4();
    __swift_project_value_buffer(v36, qword_27F544C70);
    sub_252CC3D90(0xD00000000000001ALL, 0x8000000252E8C050, 0xD00000000000008ALL, 0x8000000252E8BF70);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541880, &qword_252E40B08);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_252E3C290;
    v38 = [objc_allocWithZone(type metadata accessor for ControlHomeIntentResponse()) init];
    v39 = OBJC_IVAR___ControlHomeIntentResponse_code;
    swift_beginAccess();
    *&v38[v39] = 5;
    [v38 setUserActivity_];
    type metadata accessor for HomeEntityResponse();
    v40 = sub_252E37254();
    [v38 setEntityResponses_];

    result = v37;
    *(v37 + 32) = v38;
    *(v37 + 40) = 0;
    return result;
  }

  v13 = v12;
  v91 = a4;
  type metadata accessor for HomeFilter();
  v14 = sub_252E37264();

  v15 = MEMORY[0x277D84F90];
  v90 = sub_252CC507C(MEMORY[0x277D84F90]);
  v16 = sub_252CC507C(v15);
  v92 = v14;
  v88 = a2;
  v89 = a5;
  v87 = a1;
  if ((a3 & 1) == 0)
  {
LABEL_31:
    if (v91)
    {

      if (qword_27F53F498 != -1)
      {
        swift_once();
      }

      v69 = sub_252E36AD4();
      __swift_project_value_buffer(v69, qword_27F544C70);
      sub_252CC3D90(0xD00000000000001CLL, 0x8000000252E8C070, 0xD00000000000008ALL, 0x8000000252E8BF70);
      v70 = objc_allocWithZone(type metadata accessor for HomeUserTask());
      v71 = sub_252E36F04();
      v72 = [v70 initWithIdentifier:0 displayString:v71];

      v73 = v72;
      [v73 setTaskType_];
      [v73 setAttribute_];
      [v73 setValue_];

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_252E3C130;
      *(inited + 32) = v73;
      v75 = v73;
      v76 = sub_252B4CA9C(v92, inited, 0, 1);
      v78 = v77;

      swift_setDeallocating();
      swift_arrayDestroy();
      sub_2529904E4(v76);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_2529F7BEC(0, v15[2] + 1, 1, v15);
      }

      v80 = v15[2];
      v79 = v15[3];
      if (v80 >= v79 >> 1)
      {
        v15 = sub_2529F7BEC((v79 > 1), v80 + 1, 1, v15);
      }

      v15[2] = v80 + 1;
      v81 = &v15[2 * v80];
      v81[4] = v76;
      *(v81 + 40) = v78 & 1;
      v94 = v15;
      v82 = sub_252C3D0E4(14, v87, v88, v76, v78 & 1, v89, a6);

      sub_252927D3C(v76);
    }

    else
    {

      v82 = v90;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v93[0] = v82;
    sub_252C3F0C0(v16, sub_252C3DF2C, 0, isUniquelyReferenced_nonNull_native, v93);

    v84 = sub_252C3F504(v93[0]);

    sub_25297A930(v84);
    return v94;
  }

  if (qword_27F53F498 != -1)
  {
    swift_once();
  }

  v17 = sub_252E36AD4();
  __swift_project_value_buffer(v17, qword_27F544C70);
  sub_252CC3D90(0xD00000000000001ELL, 0x8000000252E8C090, 0xD00000000000008ALL, 0x8000000252E8BF70);
  v93[0] = v15;
  if (v14 >> 62)
  {
    v18 = sub_252E378C4();
    v86 = a6;
    if (v18)
    {
      goto LABEL_7;
    }

    goto LABEL_25;
  }

  v18 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v86 = a6;
  if (!v18)
  {
LABEL_25:
    v22 = MEMORY[0x277D84F90];
LABEL_26:
    v41 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
    v42 = sub_252E36F04();
    v43 = [v41 initWithIdentifier:0 displayString:v42];

    v44 = v43;
    [v44 setBoolValue_];
    [v44 setType_];

    v45 = type metadata accessor for HomeUserTask();
    v46 = objc_allocWithZone(v45);
    v47 = sub_252E36F04();
    v48 = [v46 initWithIdentifier:0 displayString:v47];

    v49 = v48;
    [v49 setTaskType_];
    [v49 setAttribute_];
    [v49 setValue_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
    v50 = swift_initStackObject();
    *(v50 + 16) = xmmword_252E3C130;
    *(v50 + 32) = v49;
    v85 = v49;
    v51 = sub_252B4CA9C(v22, v50, 0, 1);
    v53 = v52;

    swift_setDeallocating();
    swift_arrayDestroy();
    v15 = sub_2529F7BEC(0, 1, 1, MEMORY[0x277D84F90]);
    v55 = v15[2];
    v54 = v15[3];
    if (v55 >= v54 >> 1)
    {
      v15 = sub_2529F7BEC((v54 > 1), v55 + 1, 1, v15);
    }

    v15[2] = v55 + 1;
    v56 = &v15[2 * v55];
    v56[4] = v51;
    *(v56 + 40) = v53 & 1;
    v57 = objc_allocWithZone(v45);
    v58 = sub_252E36F04();
    v59 = [v57 initWithIdentifier:0 displayString:v58];

    v60 = v59;
    [v60 setTaskType_];
    [v60 setAttribute_];
    [v60 setValue_];

    v61 = swift_initStackObject();
    *(v61 + 16) = xmmword_252E3C130;
    *(v61 + 32) = v60;
    v62 = v60;
    v63 = sub_252B4CA9C(v92, v61, 0, 1);
    LOBYTE(v60) = v64;
    swift_setDeallocating();
    swift_arrayDestroy();
    v65 = v60 & 1;
    sub_2529904E4(v63);
    v67 = v15[2];
    v66 = v15[3];
    if (v67 >= v66 >> 1)
    {
      v15 = sub_2529F7BEC((v66 > 1), v67 + 1, 1, v15);
    }

    a6 = v86;
    v15[2] = v67 + 1;
    v68 = &v15[2 * v67];
    v68[4] = v63;
    *(v68 + 40) = v65;
    v94 = v15;
    v16 = sub_252C3D0E4(15, v87, v88, v63, v65, v89, v86);

    sub_252927D3C(v63);
    goto LABEL_31;
  }

LABEL_7:
  result = sub_252956D08();
  if (v18 >= 1)
  {
    v20 = 0;
    v21 = v14 & 0xC000000000000001;
    v22 = MEMORY[0x277D84F90];
    while (1)
    {
      v23 = v21 ? MEMORY[0x2530ADF00](v20, v14) : *(v14 + 8 * v20 + 32);
      v24 = v23;
      v25 = [v23 isExcludeFilter];
      v26 = sub_252E37674();
      v27 = v26;
      if (!v25)
      {
        break;
      }

      v28 = sub_252E37694();

      if ((v28 & 1) == 0)
      {
        goto LABEL_18;
      }

      v14 = v92;
LABEL_10:
      if (v18 == ++v20)
      {
        goto LABEL_26;
      }
    }

LABEL_18:
    type metadata accessor for HomeFilter.Builder();
    v29 = swift_allocObject();
    *(v29 + 16) = 0;
    *(v29 + 24) = 0;
    *(v29 + 32) = 0;
    *(v29 + 40) = 7;
    *(v29 + 48) = 0u;
    *(v29 + 64) = 0u;
    *(v29 + 80) = 0u;
    *(v29 + 96) = 0u;
    *(v29 + 112) = 0u;
    *(v29 + 128) = 0u;
    *(v29 + 144) = 0u;
    *(v29 + 160) = 0u;
    *(v29 + 175) = 0;
    v30 = v24;
    v31 = sub_252B72040(v24);

    v32 = (*(*v31 + 624))(29);

    v34 = (*(*v32 + 760))(v33);

    v35 = v34;
    MEMORY[0x2530AD700]();
    v14 = v92;
    if (*((v93[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v93[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_252E372A4();
    }

    sub_252E372D4();

    v22 = v93[0];
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t sub_252C3C724(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v102 = sub_252CC507C(MEMORY[0x277D84F90]);
  if (a2 >> 62)
  {
LABEL_129:
    v97 = a2 & 0xFFFFFFFFFFFFFF8;
    v5 = sub_252E378C4();
  }

  else
  {
    v97 = a2 & 0xFFFFFFFFFFFFFF8;
    v5 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v98 = a2 & 0xC000000000000001;
  if (v5)
  {
    v6 = 0;
    v7 = MEMORY[0x277D84F90];
    while (2)
    {
      v8 = v6;
      while (1)
      {
        if (v98)
        {
          v9 = MEMORY[0x2530ADF00](v8, a2);
        }

        else
        {
          if (v8 >= *(v97 + 16))
          {
            goto LABEL_125;
          }

          v9 = *(a2 + 8 * v8 + 32);
        }

        v10 = v9;
        v6 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
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
          goto LABEL_129;
        }

        v11 = [v9 entity];
        if (v11)
        {
          v12 = v11;
          v13 = [v11 entityIdentifier];

          if (v13)
          {
            break;
          }
        }

        ++v8;
        if (v6 == v5)
        {
          goto LABEL_22;
        }
      }

      v14 = sub_252E36F34();
      v16 = v15;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v7 = sub_2529F7A80(0, *(v7 + 2) + 1, 1, v7);
      }

      v19 = *(v7 + 2);
      v18 = *(v7 + 3);
      if (v19 >= v18 >> 1)
      {
        v7 = sub_2529F7A80((v18 > 1), v19 + 1, 1, v7);
      }

      *(v7 + 2) = v19 + 1;
      v20 = &v7[16 * v19];
      *(v20 + 4) = v14;
      *(v20 + 5) = v16;
      if (v6 != v5)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

LABEL_22:
  v93 = *(v7 + 2);
  if (v93)
  {
    v21 = 0;
    v92 = v7 + 32;
    type metadata accessor for HomeStore(0);
    v95 = a2;
    v96 = v5;
    v91 = v7;
    do
    {
      if (v21 >= *(v7 + 2))
      {
        goto LABEL_128;
      }

      v22 = &v92[16 * v21];
      v24 = *v22;
      v23 = v22[1];

      v26 = static HomeStore.shared.getter(v25);
      v27 = sub_2529D9D50();
      v28 = sub_2529D70E4(v27);

      v94 = v21;
      if (v28 >> 62)
      {
        v29 = sub_252E378C4();
        if (v29)
        {
LABEL_30:
          v30 = 0;
          a2 = v28 & 0xFFFFFFFFFFFFFF8;
          while (1)
          {
            if ((v28 & 0xC000000000000001) != 0)
            {
              v31 = MEMORY[0x2530ADF00](v30, v28);
              v32 = v30 + 1;
              if (__OFADD__(v30, 1))
              {
                goto LABEL_118;
              }
            }

            else
            {
              if (v30 >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_119;
              }

              v31 = *(v28 + 8 * v30 + 32);

              v32 = v30 + 1;
              if (__OFADD__(v30, 1))
              {
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
                goto LABEL_124;
              }
            }

            v33 = (v31 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier);
            v34 = *(v31 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier + 8);
            if (v34)
            {
              v35 = *v33 == v24 && v34 == v23;
              if (v35 || (sub_252E37DB4() & 1) != 0)
              {
                break;
              }
            }

            ++v30;
            if (v32 == v29)
            {
              goto LABEL_113;
            }
          }

          if (v96)
          {
            v36 = 0;
            v37 = v95;
            while (1)
            {
              if (v98)
              {
                v38 = MEMORY[0x2530ADF00](v36, v37);
              }

              else
              {
                if (v36 >= *(v97 + 16))
                {
                  goto LABEL_121;
                }

                v38 = *(v37 + 8 * v36 + 32);
              }

              v39 = v38;
              a2 = v36 + 1;
              if (__OFADD__(v36, 1))
              {
                goto LABEL_120;
              }

              v40 = [v38 entity];
              if (v40)
              {
                v41 = v40;
                v42 = [v40 entityIdentifier];

                if (v42)
                {
                  v43 = sub_252E36F34();
                  v45 = v44;

                  if (v43 == v24 && v45 == v23)
                  {

                    v37 = v95;
LABEL_80:
                    v90 = sub_252DA5378(6, 0, 1);

LABEL_63:
                    v48 = 0;
                    while (1)
                    {
                      if (v98)
                      {
                        v49 = MEMORY[0x2530ADF00](v48, v37);
                      }

                      else
                      {
                        if (v48 >= *(v97 + 16))
                        {
                          goto LABEL_123;
                        }

                        v49 = *(v37 + 8 * v48 + 32);
                      }

                      v50 = v49;
                      a2 = v48 + 1;
                      if (__OFADD__(v48, 1))
                      {
                        goto LABEL_122;
                      }

                      v51 = [v49 entity];
                      if (v51)
                      {
                        v52 = v51;
                        v53 = [v51 entityIdentifier];

                        if (v53)
                        {
                          v54 = sub_252E36F34();
                          v56 = v55;

                          if (v54 == v24 && v56 == v23)
                          {

                            v37 = v95;
LABEL_82:
                            v89 = sub_252DA5378(0x13, 0, 1);

LABEL_83:
                            v59 = 0;
                            while (1)
                            {
                              if (v98)
                              {
                                v60 = MEMORY[0x2530ADF00](v59, v37);
                              }

                              else
                              {
                                if (v59 >= *(v97 + 16))
                                {
                                  goto LABEL_127;
                                }

                                v60 = *(v37 + 8 * v59 + 32);
                              }

                              v61 = v60;
                              a2 = v59 + 1;
                              if (__OFADD__(v59, 1))
                              {
                                goto LABEL_126;
                              }

                              v62 = [v60 entity];
                              if (v62)
                              {
                                v63 = v62;
                                v64 = [v62 entityIdentifier];

                                if (v64)
                                {
                                  v65 = sub_252E36F34();
                                  v67 = v66;

                                  if (v65 == v24 && v67 == v23)
                                  {

LABEL_111:

                                    v71 = sub_252DA5378(0x11, 0, 1);

                                    goto LABEL_99;
                                  }

                                  v69 = sub_252E37DB4();

                                  v37 = v95;
                                  if (v69)
                                  {
                                    goto LABEL_111;
                                  }
                                }
                              }

                              ++v59;
                              if (a2 == v96)
                              {
                                goto LABEL_98;
                              }
                            }
                          }

                          v58 = sub_252E37DB4();

                          v37 = v95;
                          if (v58)
                          {
                            goto LABEL_82;
                          }
                        }
                      }

                      ++v48;
                      if (a2 == v96)
                      {
                        v89 = 0;
                        goto LABEL_83;
                      }
                    }
                  }

                  v47 = sub_252E37DB4();

                  v37 = v95;
                  if (v47)
                  {
                    goto LABEL_80;
                  }
                }
              }

              ++v36;
              if (a2 == v96)
              {
                v90 = 0;
                goto LABEL_63;
              }
            }
          }

          v89 = 0;
          v90 = 0;
LABEL_98:

          v71 = 0;
LABEL_99:
          sub_252B680FC(v70);
          sub_252B66C78(v24, v23, 0, &v100);

          if (v101)
          {
            if (swift_dynamicCast())
            {
              v72 = v99;
            }

            else
            {
              v72 = 7;
            }
          }

          else
          {
            sub_25293847C(&v100, &qword_27F541E80, &qword_252E3DFA0);
            v72 = 7;
          }

          a2 = v89;
          v73 = (*(a4 + 24))(a1, v90, v89, v71, v72, v31, a3);
          if (v73)
          {
            v74 = v73;
            v76 = *v33;
            v75 = v33[1];

            if (v75)
            {
              sub_252C3EE30(&v102, v74, v76, v75);
            }
          }

          else
          {
          }

          v7 = v91;
          v77 = v94;
          goto LABEL_26;
        }
      }

      else
      {
        v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v29)
        {
          goto LABEL_30;
        }
      }

LABEL_113:

      if (qword_27F53F498 != -1)
      {
        swift_once();
      }

      v78 = sub_252E36AD4();
      __swift_project_value_buffer(v78, qword_27F544C70);

      v79 = sub_252E36AC4();
      v80 = sub_252E374C4();

      v7 = v91;
      v77 = v94;
      if (os_log_type_enabled(v79, v80))
      {
        v81 = swift_slowAlloc();
        v82 = swift_slowAlloc();
        *&v100 = v82;
        *v81 = 136315138;
        v83 = sub_252BE2CE0(v24, v23, &v100);

        *(v81 + 4) = v83;
        _os_log_impl(&dword_252917000, v79, v80, "No service found matching id: %s.", v81, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v82);
        MEMORY[0x2530AED00](v82, -1, -1);
        MEMORY[0x2530AED00](v81, -1, -1);
      }

      else
      {
      }

LABEL_26:
      v21 = v77 + 1;
    }

    while (v21 != v93);
  }

  v84 = sub_252C3F504(v102);

  return v84;
}

unint64_t sub_252C3D0E4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char a5, uint64_t a6, uint64_t a7)
{
  v108 = a7;
  v107 = a6;
  v109 = a3;
  v106 = a2;
  v105 = a1;
  v115 = sub_252E36AD4();
  v9 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  v114 = &v92 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_252CC507C(MEMORY[0x277D84F90]);
  v124 = v11;
  if (a5)
  {

    goto LABEL_85;
  }

  v12 = v11;
  v13 = [a4 entityResponses];
  if (!v13)
  {

    sub_252927D3C(a4);
LABEL_85:
    if (qword_27F53F498 != -1)
    {
      goto LABEL_95;
    }

    goto LABEL_86;
  }

  v14 = v13;
  type metadata accessor for HomeEntityResponse();
  v15 = sub_252E37264();

  v103 = v15;
  if (v15 >> 62)
  {
    v16 = sub_252E378C4();
  }

  else
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v102 = v16;
  if (!v16)
  {
    sub_252927D3C(a4);

    return v12;
  }

  v93 = a4;
  v17 = 0;
  v18 = v103;
  v19 = v103 & 0xC000000000000001;
  v111 = v103 & 0xFFFFFFFFFFFFFF8;
  v110 = v103 + 32;
  v101 = (v9 + 16);
  v100 = "No targetMode responses found";
  v99 = "Adding target mode: ";
  v98 = "eResponseHandler";
  v97 = (v9 + 8);
  v20 = v109 & 0xFFFFFFFFFFFFFF8;
  v116 = v109 & 0xFFFFFFFFFFFFFF8;
  if (v109 < 0)
  {
    v20 = v109;
  }

  v92 = v20;
  v119 = v109 & 0xC000000000000001;
  v118 = v109 + 32;
  v95 = v108 + 16;
  v112 = xmmword_252E3C290;
  v94 = xmmword_252E3C130;
  v21 = v102;
  v96 = v103 & 0xC000000000000001;
  while (1)
  {
    if (v19)
    {
      v22 = MEMORY[0x2530ADF00](v17, v18);
    }

    else
    {
      if (v17 >= *(v111 + 16))
      {
        goto LABEL_94;
      }

      v22 = *(v110 + 8 * v17);
    }

    v23 = v22;
    v24 = __OFADD__(v17++, 1);
    if (v24)
    {
      break;
    }

    v25 = sub_252C6E3A4(v22);
    if (v25 != 7)
    {
      v26 = v25;
      v27 = [v23 entity];
      if (v27)
      {
        v28 = v27;
        v29 = [v27 entityIdentifier];

        if (v29)
        {
          v30 = sub_252E36F34();
          v113 = v31;

          v32 = sub_252DA10F8();
          v33 = *(v32 + 16);
          if (v33)
          {
            v34 = *(v32 + 32);
          }

          else
          {
            v34 = 0;
          }

          v35 = v116;

          if (qword_27F53F498 != -1)
          {
            swift_once();
          }

          v36 = v115;
          v37 = __swift_project_value_buffer(v115, qword_27F544C70);
          (*v101)(v114, v37, v36);
          *&v120 = 0;
          *(&v120 + 1) = 0xE000000000000000;
          sub_252E379F4();
          MEMORY[0x2530AD570](0xD000000000000014, v100 | 0x8000000000000000);
          LOBYTE(v122) = v26;
          sub_252E37AE4();
          MEMORY[0x2530AD570](0xD000000000000012, v99 | 0x8000000000000000);
          v117 = v30;
          v104 = v34;
          if (v33)
          {
            v38 = HomeDeviceType.description.getter(v34);
          }

          else
          {
            v38 = 0;
            v39 = 0;
          }

          v122 = v38;
          v123 = v39;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
          v40 = sub_252E36F94();
          MEMORY[0x2530AD570](v40);

          v41 = v114;
          sub_252CC3D90(v120, *(&v120 + 1), 0xD00000000000008ALL, v98 | 0x8000000000000000);

          v42 = (*v97)(v41, v115);
          sub_252B680FC(v42);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5402C8, &unk_252E5D320);
          inited = swift_initStackObject();
          *(inited + 16) = v112;
          v44 = [v23 entity];
          if (v44)
          {
            v45 = v44;
            v46 = [v44 entityIdentifier];

            if (v46)
            {
              v47 = sub_252E36F34();
              v49 = v48;
            }

            else
            {
              v47 = 0;
              v49 = 0;
            }

            *(inited + 32) = v47;
            *(inited + 40) = v49;
            v35 = v116;
          }

          else
          {
            *(inited + 32) = 0;
            *(inited + 40) = 0;
          }

          *(&v121 + 1) = &type metadata for ClimateModes;
          LOBYTE(v120) = v26;
          sub_252B689F8(inited, &v120);
          swift_setDeallocating();
          sub_25293847C(inited + 32, &unk_27F541300, &qword_252E3C100);

          v50 = sub_25293847C(&v120, &qword_27F541E80, &qword_252E3DFA0);
          sub_252B680FC(v50);
          v51 = swift_initStackObject();
          *(v51 + 16) = v112;
          v52 = [v23 entity];
          if (v52)
          {
            v53 = v52;
            v54 = [v52 entityIdentifier];

            v55 = v117;
            if (v54)
            {
              v56 = sub_252E36F34();
              v58 = v57;
            }

            else
            {
              v56 = 0;
              v58 = 0;
            }

            *(v51 + 32) = v56;
            *(v51 + 40) = v58;
            v35 = v116;
            if (v33)
            {
LABEL_41:
              *(&v121 + 1) = &type metadata for HomeDeviceType;
              *&v120 = v104;
LABEL_42:
              sub_252B689F8(v51, &v120);
              swift_setDeallocating();
              sub_25293847C(v51 + 32, &unk_27F541300, &qword_252E3C100);

              sub_25293847C(&v120, &qword_27F541E80, &qword_252E3DFA0);
              if (v109 >> 62)
              {
                v59 = sub_252E378C4();
              }

              else
              {
                v59 = *(v35 + 16);
              }

              v60 = v113;
              if (!v59)
              {
                v81 = 0;
                v82 = 1;
                v18 = v103;
                v21 = v102;
                v19 = v96;
                goto LABEL_81;
              }

              v61 = 0;
LABEL_47:
              if (v119)
              {
                v62 = MEMORY[0x2530ADF00](v61, v109);
              }

              else
              {
                if (v61 >= *(v35 + 16))
                {
                  goto LABEL_92;
                }

                v62 = *(v118 + 8 * v61);
              }

              v63 = v62;
              v24 = __OFADD__(v61++, 1);
              if (v24)
              {
                __break(1u);
LABEL_92:
                __break(1u);
                break;
              }

              v64 = sub_252DA6828();
              v65 = *(v64 + 2);
              v66 = 32;
              do
              {
                if (!v65)
                {

                  if (v61 != v59)
                  {
                    goto LABEL_47;
                  }

                  goto LABEL_79;
                }

                v67 = *&v64[v66];
                v66 += 8;
                --v65;
              }

              while (v67 != 6);

              v68 = [v63 entity];
              if (v68 && (v69 = v68, v70 = [v68 entityIdentifier], v69, v70))
              {
                v71 = sub_252E36F34();
                v73 = v72;
              }

              else
              {
                v71 = 0;
                v73 = 0;
              }

              v74 = [v23 entity];
              if (v74)
              {
                v75 = v74;
                v76 = [v74 entityIdentifier];

                if (v76)
                {
                  v77 = sub_252E36F34();
                  v79 = v78;
                }

                else
                {
                  v77 = 0;
                  v79 = 0;
                }

                v35 = v116;
                if (v73)
                {
LABEL_66:
                  if (v79)
                  {
                    if (v71 == v77 && v73 == v79)
                    {
                    }

                    else
                    {
                      v80 = sub_252E37DB4();

                      if ((v80 & 1) == 0)
                      {

LABEL_72:
                        v55 = v117;
                        if (v61 != v59)
                        {
                          goto LABEL_47;
                        }

LABEL_79:
                        v81 = 0;
                        v82 = 1;
LABEL_80:
                        v18 = v103;
                        v21 = v102;
                        v19 = v96;
                        v60 = v113;
LABEL_81:
                        v86 = (*(v108 + 16))(v105, v106, v81, v82, v55, v60, v107);
                        if (v86)
                        {
                          v87 = v86;
                          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
                          v88 = swift_allocObject();
                          *(v88 + 16) = v94;
                          *(v88 + 32) = v87;
                          v89 = v87;
                          sub_252C3EE30(&v124, v88, v55, v60);
                        }

                        goto LABEL_11;
                      }
                    }

LABEL_77:
                    v83 = sub_252DA5378(6, 0, 1);

                    v55 = v117;
                    if (v83)
                    {
                      [v83 doubleValue];
                      v85 = v84;

                      v82 = 0;
                      v81 = v85;
                      goto LABEL_80;
                    }

                    goto LABEL_79;
                  }

LABEL_71:

                  goto LABEL_72;
                }
              }

              else
              {
                v77 = 0;
                v79 = 0;
                if (v73)
                {
                  goto LABEL_66;
                }
              }

              if (!v79)
              {
                goto LABEL_77;
              }

              goto LABEL_71;
            }
          }

          else
          {
            *(v51 + 32) = 0;
            *(v51 + 40) = 0;
            v55 = v117;
            if (v33)
            {
              goto LABEL_41;
            }
          }

          v120 = 0u;
          v121 = 0u;
          goto LABEL_42;
        }
      }
    }

LABEL_11:

    if (v17 == v21)
    {
      sub_252927D3C(v93);

      return v124;
    }
  }

  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  swift_once();
LABEL_86:
  __swift_project_value_buffer(v115, qword_27F544C70);
  sub_252CC3D90(0xD00000000000001DLL, 0x8000000252E8C0B0, 0xD00000000000008ALL, 0x8000000252E8BF70);
  v90 = MEMORY[0x277D84F90];

  return sub_252CC507C(v90);
}

_OWORD *sub_252C3DCD4@<X0>(_OWORD *a1@<X0>, char a2@<W1>, _OWORD *a3@<X8>)
{
  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  v11 = sub_252A44D48(a2 & 1);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = v12;
  if (v10[3] < v16)
  {
    sub_252DFEE14(v16, isUniquelyReferenced_nonNull_native);
    v11 = sub_252A44D48(a2 & 1);
    if ((v4 & 1) == (v17 & 1))
    {
      goto LABEL_6;
    }

    v11 = sub_252E37E24();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    v20 = v11;
    sub_252E03314();
    v11 = v20;
    if (v4)
    {
      goto LABEL_7;
    }

LABEL_10:
    result = sub_252E02EC0(v11, a2 & 1, a1, v10);
    *a3 = 0u;
    a3[1] = 0u;
    goto LABEL_11;
  }

LABEL_6:
  if ((v4 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v18 = 32 * v11;
  sub_252A00AF4((v10[7] + 32 * v11), a3);
  result = sub_252A00AF4(a1, (v10[7] + v18));
LABEL_11:
  *v5 = v10;
  return result;
}

uint64_t sub_252C3DE08(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v2;
  v9 = sub_252A44DF4(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = v10;
  if (v8[3] < v14)
  {
    sub_252DFF0E8(v14, isUniquelyReferenced_nonNull_native);
    v9 = sub_252A44DF4(a2);
    if ((v3 & 1) == (v15 & 1))
    {
      goto LABEL_6;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541EA8, qword_252E51A90);
    v9 = sub_252E37E24();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    v18 = v9;
    sub_252E03490();
    v9 = v18;
    if (v3)
    {
      goto LABEL_7;
    }

LABEL_10:
    sub_252E02F2C(v9, a2, a1, v8);

    v17 = 0;
    goto LABEL_11;
  }

LABEL_6:
  if ((v3 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v16 = v8[7];
  v17 = *(v16 + 8 * v9);
  *(v16 + 8 * v9) = a1;
LABEL_11:
  *v4 = v8;
  return v17;
}

uint64_t sub_252C3DF2C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
}

char *sub_252C3DF6C(void *a1, unint64_t a2, int a3)
{
  LODWORD(v100) = a3;
  v7 = sub_252E36AD4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v98 = &v93 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [a1 filters];
  if (!v10)
  {
    sub_2529318DC();
    v3 = swift_allocError();
    *v44 = 1;
    return v3;
  }

  v11 = v10;
  v94 = a1;
  v95 = v8;
  v97 = v7;
  type metadata accessor for HomeFilter();
  v12 = sub_252E37264();

  v13 = objc_allocWithZone(type metadata accessor for HomeUserTask());
  v14 = sub_252E36F04();
  v15 = [v13 initWithIdentifier:0 displayString:v14];

  v16 = v15;
  [v16 setTaskType_];
  [v16 setAttribute_];
  [v16 setValue_];
  v96 = v16;

  v105 = MEMORY[0x277D84F90];
  LODWORD(v99) = a2;
  if (a2 & 1) != 0 || (a2 = MEMORY[0x277D84F90], (v100))
  {
    if (v12 >> 62)
    {
      v17 = sub_252E378C4();
      if (v17)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v17 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v17)
      {
LABEL_6:
        sub_252956D08();
        if (v17 >= 1)
        {
          v18 = 0;
          a2 = MEMORY[0x277D84F90];
          while (1)
          {
            if ((v12 & 0xC000000000000001) != 0)
            {
              v19 = MEMORY[0x2530ADF00](v18, v12);
            }

            else
            {
              v19 = *(v12 + 8 * v18 + 32);
            }

            v20 = v19;
            v21 = [v19 isExcludeFilter];
            v22 = sub_252E37674();
            v23 = v22;
            if (v21)
            {
              v24 = sub_252E37694();

              if (v24)
              {

                goto LABEL_9;
              }
            }

            else
            {
            }

            v25 = [v20 entityIdentifiers];
            if (v25)
            {
              v26 = v25;
              v27 = sub_252E37264();

              if (v99)
              {
                goto LABEL_22;
              }
            }

            else
            {
              v27 = 0;
              if (v99)
              {
LABEL_22:
                type metadata accessor for HomeFilter.Builder();
                v28 = swift_allocObject();
                *(v28 + 16) = 0;
                *(v28 + 24) = 0;
                *(v28 + 32) = 0;
                *(v28 + 40) = 7;
                *(v28 + 48) = 0u;
                *(v28 + 64) = 0u;
                *(v28 + 80) = 0u;
                *(v28 + 96) = 0u;
                *(v28 + 112) = 0u;
                *(v28 + 128) = 0u;
                *(v28 + 144) = 0u;
                *(v28 + 160) = 0u;
                *(v28 + 175) = 0;
                v29 = v20;
                v30 = sub_252B72040(v20);

                v31 = (*(*v30 + 568))(v27);

                v32 = (*(*v31 + 624))(29);

                v34 = (*(*v32 + 760))(v33);

                v35 = v34;
                MEMORY[0x2530AD700]();
                if (*((v105 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v105 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  sub_252E372A4();
                }

                sub_252E372D4();

                a2 = v105;
                if (v100)
                {
LABEL_25:
                  type metadata accessor for HomeFilter.Builder();
                  v36 = swift_allocObject();
                  *(v36 + 16) = 0;
                  *(v36 + 24) = 0;
                  *(v36 + 32) = 0;
                  *(v36 + 40) = 7;
                  *(v36 + 48) = 0u;
                  *(v36 + 64) = 0u;
                  *(v36 + 80) = 0u;
                  *(v36 + 96) = 0u;
                  *(v36 + 112) = 0u;
                  *(v36 + 128) = 0u;
                  *(v36 + 144) = 0u;
                  *(v36 + 160) = 0u;
                  *(v36 + 175) = 0;
                  v37 = v20;
                  v38 = sub_252B72040(v20);

                  v39 = (*(*v38 + 568))(v27);

                  v40 = (*(*v39 + 624))(3);

                  v42 = (*(*v40 + 760))(v41);

                  v43 = v42;
                  MEMORY[0x2530AD700]();
                  if (*((v105 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v105 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                  {
                    sub_252E372A4();
                  }

                  sub_252E372D4();

                  a2 = v105;
                  goto LABEL_9;
                }

                goto LABEL_8;
              }
            }

            if (v100)
            {
              goto LABEL_25;
            }

LABEL_8:

LABEL_9:
            if (v17 == ++v18)
            {
              goto LABEL_31;
            }
          }
        }

        __break(1u);
        goto LABEL_64;
      }
    }

    a2 = MEMORY[0x277D84F90];
  }

LABEL_31:
  if (!(a2 >> 62))
  {
    if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  if (sub_252E378C4())
  {
LABEL_33:

    v12 = a2;
  }

LABEL_34:
  v8 = v97;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_252E3C130;
  v46 = v96;
  *(inited + 32) = v96;
  v100 = v46;
  v3 = sub_252B4CA9C(v12, inited, 0, 1);
  v48 = v47;

  swift_setDeallocating();
  swift_arrayDestroy();
  if (v48)
  {

    if (qword_27F53F498 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v8, qword_27F544C70);
    sub_252CC3D90(0xD000000000000035, 0x8000000252E8C110, 0xD00000000000008ALL, 0x8000000252E8BF70);

    return v3;
  }

  v49 = qword_27F53F498;
  v50 = v3;
  if (v49 != -1)
  {
    swift_once();
  }

  v51 = __swift_project_value_buffer(v8, qword_27F544C70);
  (*(v95 + 16))(v98, v51, v8);
  v101 = 0;
  v102 = 0xE000000000000000;
  sub_252E379F4();
  v4 = 0xD00000000000008ALL;
  MEMORY[0x2530AD570](0xD000000000000029, 0x8000000252E8C150);
  v16 = [v50 entityResponses];
  v99 = v50;
  if (v16)
  {
    type metadata accessor for HomeEntityResponse();
    v52 = sub_252E37264();

    if (!(v52 >> 62))
    {
      v53 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_43:

      goto LABEL_45;
    }

LABEL_64:
    v53 = sub_252E378C4();
    v50 = v99;
    goto LABEL_43;
  }

  v53 = 0;
LABEL_45:
  v103 = v53;
  v104 = v16 == 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541EE0, &qword_252E4D8A0);
  v54 = sub_252E36F94();
  MEMORY[0x2530AD570](v54);

  MEMORY[0x2530AD570](v4 - 116, 0x8000000252E8C180);
  v55 = [v50 entityResponses];
  v96 = v3;
  if (!v55)
  {
    v60 = 0;
    goto LABEL_68;
  }

  v56 = v55;
  type metadata accessor for HomeEntityResponse();
  v57 = sub_252E37264();

  if (v57 >> 62)
  {
    v58 = sub_252E378C4();
    if (v58)
    {
      goto LABEL_48;
    }
  }

  else
  {
    v58 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v58)
    {
LABEL_48:
      v93 = a2;
      v103 = MEMORY[0x277D84F90];
      sub_2529AA380(0, v58 & ~(v58 >> 63), 0);
      if (v58 < 0)
      {
        goto LABEL_85;
      }

      v59 = 0;
      v60 = v103;
      do
      {
        if ((v57 & 0xC000000000000001) != 0)
        {
          v61 = MEMORY[0x2530ADF00](v59, v57);
        }

        else
        {
          v61 = *(v57 + 8 * v59 + 32);
        }

        v62 = v61;
        v63 = [v61 entity];
        if (v63)
        {
          v64 = v63;
          v65 = [v63 description];

          v66 = sub_252E36F34();
          v68 = v67;
        }

        else
        {

          v66 = 0;
          v68 = 0;
        }

        v103 = v60;
        v70 = *(v60 + 16);
        v69 = *(v60 + 24);
        if (v70 >= v69 >> 1)
        {
          sub_2529AA380((v69 > 1), v70 + 1, 1);
          v60 = v103;
        }

        ++v59;
        *(v60 + 16) = v70 + 1;
        v71 = v60 + 16 * v70;
        *(v71 + 32) = v66;
        *(v71 + 40) = v68;
      }

      while (v58 != v59);

      v8 = v97;
      a2 = v93;
      goto LABEL_67;
    }
  }

  v60 = MEMORY[0x277D84F90];
LABEL_67:
  v50 = v99;
LABEL_68:
  v103 = v60;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544360, &qword_252E53B28);
  v72 = sub_252E36F94();
  MEMORY[0x2530AD570](v72);

  v73 = v98;
  sub_252CC3D90(v101, v102, 0xD00000000000008ALL, 0x8000000252E8BF70);

  (*(v95 + 8))(v73, v8);
  v57 = sub_252C6E240(v94);
  v74 = [v50 entityResponses];
  if (!v74)
  {
    v3 = v96;
    if (qword_27F53F4E8 != -1)
    {
      goto LABEL_86;
    }

    goto LABEL_79;
  }

  v75 = v74;
  type metadata accessor for HomeEntityResponse();
  v76 = sub_252E37264();

  v3 = v96;
  if (v76 >> 62)
  {
    goto LABEL_80;
  }

LABEL_70:
  v8 = *((v76 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v8)
  {
    while (1)
    {
      v3 = a2;
      v101 = MEMORY[0x277D84F90];
      sub_252E37AB4();
      if ((v8 & 0x8000000000000000) == 0)
      {
        break;
      }

      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      swift_once();
LABEL_79:
      __swift_project_value_buffer(v8, qword_27F544D60);
      v101 = 0;
      v102 = 0xE000000000000000;
      sub_252E379F4();

      v101 = 0xD00000000000002FLL;
      v102 = 0x8000000252E69700;
      v81 = [v99 description];
      v82 = sub_252E36F34();
      v84 = v83;

      sub_252927D3C(v3);
      MEMORY[0x2530AD570](v82, v84);

      sub_252CC3D90(v101, v102, 0xD000000000000098, 0x8000000252E69730);

      v76 = MEMORY[0x277D84F90];
      if (!(MEMORY[0x277D84F90] >> 62))
      {
        goto LABEL_70;
      }

LABEL_80:
      v8 = sub_252E378C4();
      if (!v8)
      {
        goto LABEL_81;
      }
    }

    v77 = 0;
    do
    {
      if ((v76 & 0xC000000000000001) != 0)
      {
        v78 = MEMORY[0x2530ADF00](v77, v76);
      }

      else
      {
        v78 = *(v76 + 8 * v77 + 32);
      }

      v79 = v78;
      ++v77;
      sub_252C3A9E4(v57, 0);

      sub_252E37A94();
      sub_252E37AC4();
      sub_252E37AD4();
      sub_252E37AA4();
    }

    while (v8 != v77);

    v80 = v101;
    v3 = v96;
  }

  else
  {
LABEL_81:

    v80 = MEMORY[0x277D84F90];
  }

  type metadata accessor for ControlHomeIntentResponse.Builder();
  v85 = swift_allocObject();
  *(v85 + 24) = MEMORY[0x277D84F90];
  v86 = OBJC_IVAR___ControlHomeIntentResponse_code;
  v87 = v99;
  swift_beginAccess();
  *(v85 + 16) = *&v87[v86];
  v88 = sub_252B4EF24(v80);

  v89 = sub_25297D0C0(v88);

  v91 = (*(*v89 + 176))(v90);

  sub_252927D3C(v3);
  sub_252927D3C(v3);
  return v91;
}

uint64_t sub_252C3EE30(uint64_t *a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *a1;
  v8 = a2 >> 62;
  if (*(*a1 + 16))
  {
    v9 = sub_252A44DF4(a2);
    if (v10)
    {
      v11 = *(*(v7 + 56) + 8 * v9);
      if (v8)
      {
        if (sub_252E378C4())
        {
          goto LABEL_5;
        }
      }

      else if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_5:
        v12 = qword_27F53F498;

        if (v12 != -1)
        {
          swift_once();
        }

        v13 = sub_252E36AD4();
        __swift_project_value_buffer(v13, qword_27F544C70);
        sub_252CC3D90(0xD00000000000001FLL, 0x8000000252E8C030, 0xD00000000000008ALL, 0x8000000252E8BF70);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5401B0, &qword_252E41DB0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_252E3C290;
        *(inited + 32) = a3;
        *(inited + 40) = a4;

        sub_25297A744(inited);
        sub_252C3DE08(v11, a2);
      }
    }
  }

  if (v8)
  {
    result = sub_252E378C4();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  if (qword_27F53F498 != -1)
  {
    swift_once();
  }

  v16 = sub_252E36AD4();
  __swift_project_value_buffer(v16, qword_27F544C70);
  sub_252CC3D90(0xD000000000000024, 0x8000000252E8C000, 0xD00000000000008ALL, 0x8000000252E8BF70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5401B0, &qword_252E41DB0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_252E3C290;
  *(v17 + 32) = a3;
  *(v17 + 40) = a4;

  sub_252C3DE08(v17, a2);
}

uint64_t sub_252C3F0C0(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, int a4, void *a5)
{
  v7 = a1 + 64;
  v8 = -1 << *(a1 + 32);
  if (-v8 < 64)
  {
    v9 = ~(-1 << -v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(a1 + 64);
  v11 = (63 - v8) >> 6;

  v12 = 0;
  v34 = a5;
  v35 = v7;
  while (v10)
  {
    v40 = a4;
    v14 = v12;
LABEL_14:
    v16 = (v14 << 9) | (8 * __clz(__rbit64(v10)));
    v17 = *(*(a1 + 56) + v16);
    v39[0] = *(*(a1 + 48) + v16);
    v39[1] = v17;

    a2(v38, v39);

    v18 = v38[0];
    v19 = v38[1];
    v20 = *a5;
    v22 = sub_252A44DF4(v38[0]);
    v23 = *(v20 + 16);
    v24 = (v21 & 1) == 0;
    v25 = v23 + v24;
    if (__OFADD__(v23, v24))
    {
      goto LABEL_25;
    }

    v26 = v21;
    if (*(v20 + 24) >= v25)
    {
      if ((v40 & 1) == 0)
      {
        sub_252E03490();
      }
    }

    else
    {
      sub_252DFF0E8(v25, v40 & 1);
      v27 = sub_252A44DF4(v18);
      if ((v26 & 1) != (v28 & 1))
      {
        goto LABEL_27;
      }

      v22 = v27;
    }

    v10 &= v10 - 1;
    v29 = *a5;
    if (v26)
    {
      v13 = *(v29[7] + 8 * v22);

      *(v29[7] + 8 * v22) = v13;
    }

    else
    {
      v29[(v22 >> 6) + 8] |= 1 << v22;
      *(v29[6] + 8 * v22) = v18;
      *(v29[7] + 8 * v22) = v19;
      v30 = v29[2];
      v31 = __OFADD__(v30, 1);
      v32 = v30 + 1;
      if (v31)
      {
        goto LABEL_26;
      }

      v29[2] = v32;
    }

    a4 = 1;
    v12 = v14;
    a5 = v34;
    v7 = v35;
  }

  v15 = v12;
  while (1)
  {
    v14 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v14 >= v11)
    {
      sub_25291AE30(a1);
    }

    v10 = *(v7 + 8 * v14);
    ++v15;
    if (v10)
    {
      v40 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541EA8, qword_252E51A90);
  result = sub_252E37E24();
  __break(1u);
  return result;
}

void sub_252C3F354(uint64_t a1)
{
  v2 = *(sub_252B680FC(a1) + 48);

  if (v2 == 1)
  {
    LODWORD(v4) = 1;
    if (a1 < 0)
    {
LABEL_31:
      v17 = v4;
      goto LABEL_32;
    }

    v17 = 1;
    if ((a1 & 0x4000000000000000) != 0)
    {
LABEL_32:
      v6 = sub_252E378C4();
      if (!v6)
      {
        return;
      }

      goto LABEL_8;
    }
  }

  else
  {
    v5 = *(sub_252B680FC(v3) + 49);

    v17 = v5;
    if (a1 < 0 || (a1 & 0x4000000000000000) != 0)
    {
      goto LABEL_32;
    }
  }

  v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v6)
  {
    return;
  }

LABEL_8:
  for (i = 0; ; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x2530ADF00](i, a1);
    }

    else
    {
      v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (i >= v4)
      {
        goto LABEL_30;
      }

      v8 = *(a1 + 8 * i + 32);
    }

    v9 = v8;
    v10 = i + 1;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v11 = [v8 attribute];
    v12 = qword_2864A2370 == v11 || unk_2864A2378 == v11;
    if (v12 || qword_2864A2380 == v11)
    {
      break;
    }

LABEL_9:
    if (v10 == v6)
    {
      return;
    }
  }

  v14 = [v9 taskType];

  if (v14 != 1)
  {
    goto LABEL_9;
  }

  if (v17)
  {
    *(sub_252B680FC(v15) + 49) = 0;

    *(sub_252B680FC(v16) + 48) = 0;
  }
}

uint64_t sub_252C3F504(uint64_t a1)
{
  v2 = sub_252C39794(a1);
  sub_252C3F354(v2);

  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;
  v24 = a1;

  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  if (v6)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= v7)
    {

      return v10;
    }

    v6 = *(v3 + 8 * v11);
    ++v9;
    if (v6)
    {
      v9 = v11;
      do
      {
LABEL_8:
        v12 = (v9 << 9) | (8 * __clz(__rbit64(v6)));
        v13 = *(*(v24 + 48) + v12);
        v14 = *(*(v24 + 56) + v12);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
        v15 = swift_allocObject();
        *(v15 + 16) = xmmword_252E3C130;
        type metadata accessor for HomeFilter.Builder();
        inited = swift_initStackObject();
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
        *(inited + 16) = v14;
        *(inited + 24) = 0;

        v17 = sub_252B719E4();
        swift_setDeallocating();
        HomeFilter.Builder.deinit();
        swift_deallocClassInstance();
        *(v15 + 32) = v17;
        v18 = sub_252B4CA9C(v15, v13, 0, 1);
        v20 = v19;

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_2529F7BEC(0, v10[2] + 1, 1, v10);
          v10 = result;
        }

        v22 = v10[2];
        v21 = v10[3];
        if (v22 >= v21 >> 1)
        {
          result = sub_2529F7BEC((v21 > 1), v22 + 1, 1, v10);
          v10 = result;
        }

        v6 &= v6 - 1;
        v10[2] = v22 + 1;
        v23 = &v10[2 * v22];
        v23[4] = v18;
        *(v23 + 40) = v20 & 1;
      }

      while (v6);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_252C3F754(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v4[7] = swift_task_alloc();
  v4[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252C3F800, 0, 0);
}

void *sub_252C3F800()
{
  *(v1 + 16) = MEMORY[0x277D84F90];
  v96 = (v1 + 16);
  v2 = [*(v1 + 40) matchedEntities];
  if (!v2)
  {
    goto LABEL_48;
  }

  v3 = v2;
  type metadata accessor for HomeEntity();
  v4 = sub_252E37264();

  if (v4 >> 62)
  {
    goto LABEL_42;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v98 = v4;
  for (i = v5; v5; i = v5)
  {
    v6 = 0;
    v7 = MEMORY[0x277D84F90];
    while (1)
    {
      if ((v98 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x2530ADF00](v6, v98);
      }

      else
      {
        if (v6 >= *((v98 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_37;
        }

        v8 = *(v98 + 32 + 8 * v6);
      }

      v9 = v8;
      v10 = __OFADD__(v6++, 1);
      if (v10)
      {
        break;
      }

      v11 = [v8 deviceTypes];
      if (v11)
      {
        v12 = v11;
        v13 = sub_252E37264();

        v14 = *(v13 + 16);
        if (v14)
        {
          v15 = sub_2529F8104(0, 1, 1, MEMORY[0x277D84F90]);
          v16 = (v13 + 32);
          v17 = *(v15 + 2);
          do
          {
            v19 = *v16++;
            v18 = v19;
            v20 = *(v15 + 3);
            if (v17 >= v20 >> 1)
            {
              v15 = sub_2529F8104((v20 > 1), v17 + 1, 1, v15);
            }

            *(v15 + 2) = v17 + 1;
            *&v15[8 * v17++ + 32] = v18;
            --v14;
          }

          while (v14);
        }

        else
        {
          v15 = MEMORY[0x277D84F90];
        }

        v5 = i;
      }

      else
      {
        v15 = MEMORY[0x277D84F90];
      }

      v21 = *(v15 + 2);
      v4 = *(v7 + 2);
      v0 = v4 + v21;
      if (__OFADD__(v4, v21))
      {
        goto LABEL_38;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v0 <= *(v7 + 3) >> 1)
      {
        if (*(v15 + 2))
        {
          goto LABEL_30;
        }
      }

      else
      {
        if (v4 <= v0)
        {
          v23 = v4 + v21;
        }

        else
        {
          v23 = v4;
        }

        v7 = sub_2529F8104(isUniquelyReferenced_nonNull_native, v23, 1, v7);
        if (*(v15 + 2))
        {
LABEL_30:
          v24 = *(v7 + 2);
          if ((*(v7 + 3) >> 1) - v24 < v21)
          {
            goto LABEL_40;
          }

          memcpy(&v7[8 * v24 + 32], v15 + 32, 8 * v21);

          if (v21)
          {
            v25 = *(v7 + 2);
            v10 = __OFADD__(v25, v21);
            v26 = v25 + v21;
            if (v10)
            {
              goto LABEL_41;
            }

            *(v7 + 2) = v26;
          }

          goto LABEL_6;
        }
      }

      if (v21)
      {
        goto LABEL_39;
      }

LABEL_6:
      if (v6 == v5)
      {
        goto LABEL_44;
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
LABEL_41:
    __break(1u);
LABEL_42:
    v5 = sub_252E378C4();
    v98 = v4;
  }

  v7 = MEMORY[0x277D84F90];
LABEL_44:
  v27 = sub_252C76054(v7);

  v28 = *(v27 + 16);

  if (v5 && v28 >= 6)
  {
    v67 = 0;
    v104 = v106[6];
    v68 = v98;
    v69 = v98 & 0xC000000000000001;
    v30 = v98 & 0xFFFFFFFFFFFFFF8;
    v70 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v69)
      {
        v71 = MEMORY[0x2530ADF00](v67, v68);
      }

      else
      {
        if (v67 >= *((v98 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_103;
        }

        v71 = *(v98 + 32 + 8 * v67);
      }

      v72 = v71;
      v10 = __OFADD__(v67++, 1);
      if (v10)
      {
        break;
      }

      v73 = [v71 deviceTypes];
      if (v73)
      {
        v101 = v70;
        v74 = v73;
        v75 = sub_252E37264();

        v76 = *(v75 + 16);
        if (v76)
        {
          v77 = 0;
          v78 = *(v104 + 616);
          v79 = *(v78 + 16);
          v0 = v78 + 56;
          while (1)
          {
            if (v79)
            {
              v80 = *(v75 + 32 + 8 * v77);
              v81 = sub_252E37EB4();
              v82 = -1 << *(v78 + 32);
              v83 = v81 & ~v82;
              if ((*(v0 + ((v83 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v83))
              {
                break;
              }
            }

LABEL_89:
            if (++v77 == v76)
            {

              v70 = v101;
              goto LABEL_99;
            }
          }

          v84 = ~v82;
          while (*(*(v78 + 48) + 8 * v83) != v80)
          {
            v83 = (v83 + 1) & v84;
            if (((*(v0 + ((v83 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v83) & 1) == 0)
            {
              goto LABEL_89;
            }
          }

          v85 = v72;
          v86 = v96;
          MEMORY[0x2530AD700]();
          if (*((*v86 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v86 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_252E372A4();
            v86 = v96;
          }

          sub_252E372D4();

          v70 = *v86;
LABEL_99:
          v68 = v98;
          v5 = i;
          v69 = v98 & 0xC000000000000001;
        }

        else
        {

          v70 = v101;
        }
      }

      else
      {
      }

      if (v67 == v5)
      {
        goto LABEL_48;
      }
    }

    __break(1u);
LABEL_103:
    __break(1u);
  }

  else
  {
LABEL_48:
    i = sub_252C6CB2C();
    v106[9] = i;
    v0 = sub_252C6CB2C();
    v106[10] = v0;

    v30 = *(v0 + 24);
    if (!(v30 >> 62))
    {
      v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_50;
    }
  }

  v87 = v30;
  v88 = sub_252E378C4();
  v30 = v87;
  v31 = v88;
LABEL_50:
  v32 = MEMORY[0x277D84F90];
  v99 = v0;
  if (v31)
  {
    v33 = v30;
    v107 = MEMORY[0x277D84F90];
    result = sub_2529AA380(0, v31 & ~(v31 >> 63), 0);
    if (v31 < 0)
    {
      __break(1u);
      goto LABEL_114;
    }

    v35 = 0;
    v36 = v107;
    v37 = v33;
    v102 = v33;
    v105 = v33 & 0xC000000000000001;
    do
    {
      if (v105)
      {
        v38 = MEMORY[0x2530ADF00](v35, v37);
      }

      else
      {
        v38 = *(v37 + 8 * v35 + 32);
      }

      v39 = v106[8];
      sub_252938414(v38 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_type, v39, &qword_27F540298, &unk_252E3C270);
      v40 = sub_252E36324();
      v41 = *(v40 - 8);
      v42 = (*(v41 + 48))(v39, 1, v40);
      v43 = v106[8];
      if (v42 == 1)
      {

        sub_25293847C(v43, &qword_27F540298, &unk_252E3C270);
        v44 = 0;
        v45 = 0;
      }

      else
      {
        v44 = sub_252E36314();
        v45 = v46;

        (*(v41 + 8))(v43, v40);
      }

      v48 = *(v107 + 16);
      v47 = *(v107 + 24);
      if (v48 >= v47 >> 1)
      {
        sub_2529AA380((v47 > 1), v48 + 1, 1);
      }

      ++v35;
      *(v107 + 16) = v48 + 1;
      v49 = v107 + 16 * v48;
      *(v49 + 32) = v44;
      *(v49 + 40) = v45;
      v37 = v102;
    }

    while (v31 != v35);
    v32 = MEMORY[0x277D84F90];
  }

  else
  {
    v36 = MEMORY[0x277D84F90];
  }

  v50 = sub_252C75A1C(v36);

  v51 = *(i + 24);
  if (v51 >> 62)
  {
    v52 = sub_252E378C4();
    if (v52)
    {
LABEL_66:
      result = sub_2529AA380(0, v52 & ~(v52 >> 63), 0);
      if ((v52 & 0x8000000000000000) == 0)
      {
        v97 = v50;
        v53 = 0;
        v54 = v32;
        v103 = v52;
        do
        {
          if ((v51 & 0xC000000000000001) != 0)
          {
            v55 = MEMORY[0x2530ADF00](v53, v51);
          }

          else
          {
            v55 = *(v51 + 8 * v53 + 32);
          }

          v56 = v106[7];
          sub_252938414(v55 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_type, v56, &qword_27F540298, &unk_252E3C270);
          v57 = sub_252E36324();
          v58 = *(v57 - 8);
          v59 = (*(v58 + 48))(v56, 1, v57);
          v60 = v106[7];
          if (v59 == 1)
          {

            sub_25293847C(v60, &qword_27F540298, &unk_252E3C270);
            v61 = 0;
            v62 = 0;
          }

          else
          {
            v61 = sub_252E36314();
            v62 = v63;

            (*(v58 + 8))(v60, v57);
          }

          v65 = *(v54 + 16);
          v64 = *(v54 + 24);
          if (v65 >= v64 >> 1)
          {
            sub_2529AA380((v64 > 1), v65 + 1, 1);
          }

          ++v53;
          *(v54 + 16) = v65 + 1;
          v66 = v54 + 16 * v65;
          *(v66 + 32) = v61;
          *(v66 + 40) = v62;
        }

        while (v103 != v53);

        v50 = v97;
        goto LABEL_107;
      }

LABEL_114:
      __break(1u);
      return result;
    }
  }

  else
  {
    v52 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v52)
    {
      goto LABEL_66;
    }
  }

  v54 = MEMORY[0x277D84F90];
LABEL_107:
  v89 = sub_252C75A1C(v54);

  if (*(v89 + 16) <= *(v50 + 16) >> 3)
  {
    sub_2529AAB54(v89);

    v90 = v50;
  }

  else
  {
    v90 = sub_2529AC1D4(v89, v50);
  }

  v91 = v106[6];
  v92 = swift_allocObject();
  v106[11] = v92;
  v92[2] = v91;
  v92[3] = v99;
  v92[4] = i;
  v92[5] = v90;

  v93 = swift_task_alloc();
  v106[12] = v93;
  *v93 = v106;
  v93[1] = sub_252C40294;
  v94 = v106[3];
  v95 = v106[4];

  return sub_252C6C378(v94, v95, &unk_252E53BD0, v92);
}

uint64_t sub_252C40294()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_252C4044C;
  }

  else
  {
    v2 = sub_252C403C4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_252C403C4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252C4044C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252C404D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[137] = a4;
  v4[136] = a3;
  v4[135] = a2;
  v4[134] = a1;
  return MEMORY[0x2822009F8](sub_252C40500, 0, 0);
}

uint64_t sub_252C40500()
{
  v13 = v0;
  v1 = *(v0 + 1096);
  v2 = *(v0 + 1088);
  v3 = *(v0 + 1080);
  v4 = *(v0 + 1072);
  __swift_project_boxed_opaque_existential_1(v4 + 3, v4[6]);
  v5 = *(v1 + 16);
  memcpy((v0 + 16), v4 + 14, 0x1F8uLL);

  memcpy(__dst, v4 + 14, sizeof(__dst));

  sub_252938414(v0 + 16, v0 + 520, &qword_27F5404C8, &unk_252E3FD60);
  v6 = sub_252953488(0, __dst, 0);
  *(v0 + 1104) = v6;
  *(v0 + 1024) = v3;
  *(v0 + 1032) = 0;
  *(v0 + 1040) = v6;
  *(v0 + 1048) = v5;
  *(v0 + 1056) = 0;
  *(v0 + 1064) = v2;
  v7 = sub_252C06E1C();
  *(v0 + 1112) = v7;
  v12 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
  v8 = swift_task_alloc();
  *(v0 + 1120) = v8;
  *v8 = v0;
  v8[1] = sub_252C406B0;
  v9 = v12;

  return v9(0xD000000000000020, 0x8000000252E8C230, v7);
}

uint64_t sub_252C406B0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 1128) = v1;

  if (v1)
  {
    v5 = sub_252C408A4;
  }

  else
  {
    *(v4 + 1136) = a1;
    v5 = sub_252C407FC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252C407FC()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 1136);

  return v1(v2);
}

uint64_t sub_252C408A4()
{

  v1 = *(v0 + 8);

  return v1();
}

void *sub_252C40948(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5402C0, &unk_252E3C0F0);
  v2 = swift_allocObject();
  v2[1] = xmmword_252E3EF80;
  v2[2] = xmmword_252E53B30;
  v2[3] = xmmword_252E53B40;
  v3 = sub_2529FF590(v2);
  swift_setDeallocating();
  swift_deallocClassInstance();
  *(v1 + 616) = v3;
  return sub_252BE97AC(__dst);
}

uint64_t sub_252C409F4()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 3);

  __swift_destroy_boxed_opaque_existential_1(v0 + 9);
  memcpy(__dst, v0 + 14, sizeof(__dst));
  sub_25293847C(__dst, &qword_27F5404C8, &unk_252E3FD60);

  return swift_deallocClassInstance();
}

uint64_t sub_252C40AC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25293B808;

  return sub_252C3F754(a1, a2, a3);
}

void *sub_252C40B78@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for DiscoverInventoryResponseHandler();
  swift_allocObject();
  result = sub_252C40948(a1);
  *a2 = result;
  return result;
}

uint64_t sub_252C40BC4()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_25294B7BC;

  return sub_252C404D4(v2, v3, v5, v4);
}

uint64_t sub_252C40C70(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_252E34014();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252C40D3C, 0, 0);
}

uint64_t sub_252C40D3C(uint64_t a1)
{
  v2 = v1[8];
  v3 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(a1);
  sub_252929E74((v3 + 288), (v1 + 2));

  v4 = v1[5];
  v5 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v4);
  v6 = (*(v5 + 120))(v4, v5);
  __swift_destroy_boxed_opaque_existential_1(v1 + 2);
  v7 = *(v2 + 96);
  __swift_project_boxed_opaque_existential_1((v2 + 72), v7);
  if (v6)
  {
    sub_252B03B94();
    v8 = swift_task_alloc();
    v1[13] = v8;
    *v8 = v1;
    v8[1] = sub_252B2B87C;
    v9 = v1[12];
    v10 = v1[7];
    v11 = v1[8];

    return sub_252A199A8(v10, &unk_252E53C60, v11, &unk_252E53C68, 0, v9, 0, 0);
  }

  else
  {
    sub_252AD7CC4();
    v13 = swift_task_alloc();
    v1[15] = v13;
    *v13 = v1;
    v13[1] = sub_252B2BA30;
    v14 = v1[11];
    v15 = v1[7];
    v16 = v1[8];

    return sub_252BDB88C(v15, &unk_252E53C50, v16, v14, 0, 0, 0, v7);
  }
}

uint64_t sub_252C40F84()
{
  v0[3] = *(v0[2] + 64);
  v4 = (*MEMORY[0x277D55C70] + MEMORY[0x277D55C70]);

  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_252ACFBBC;
  v2 = MEMORY[0x277D84F90];

  return v4(0xD000000000000024, 0x8000000252E8C2B0, v2);
}

uint64_t sub_252C41064(uint64_t a1)
{
  v1[3] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v1[4] = swift_task_alloc();
  v1[5] = swift_task_alloc();
  v1[6] = type metadata accessor for HomeAutomationCalibrationInProgressParameters(0);
  v1[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252C41168, 0, 0);
}

uint64_t sub_252C41168()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  __swift_project_boxed_opaque_existential_1((*(v0 + 24) + 24), *(*(v0 + 24) + 48));
  v3 = sub_252E36324();
  v4 = *(*(v3 - 8) + 56);
  v4(v2, 1, 1, v3);
  v5 = *(v1 + 24);
  v4(v2 + v5, 1, 1, v3);
  *(v2 + *(v1 + 20)) = 0;
  v6 = sub_25294833C(1u, 0, 0);
  if (v6)
  {
    v7 = v6;
    v8 = [v6 dictionary];
    if (v8)
    {
      v9 = v8;
      v10 = objc_opt_self();
      *(v0 + 16) = 0;
      v11 = [v10 dataWithPropertyList:v9 format:200 options:0 error:v0 + 16];
      v12 = *(v0 + 16);
      if (v11)
      {
        v26 = *(v0 + 40);
        v13 = sub_252E32D34();
        v27 = v5;
        v15 = v14;

        sub_252E32D24();
        sub_252E362F4();

        v16 = v15;
        v5 = v27;
        sub_25296464C(v13, v16);
        v4(v26, 0, 1, v3);
        goto LABEL_8;
      }

      v17 = v12;
      v18 = sub_252E32C54();

      swift_willThrow();
    }

    else
    {
    }
  }

  v4(*(v0 + 40), 1, 1, v3);
LABEL_8:
  v19 = *(v0 + 56);
  v20 = *(v0 + 32);
  sub_252956C98(*(v0 + 40), v2 + v5);
  sub_252E37024();
  v4(v20, 0, 1, v3);
  sub_252956C98(v20, v19);
  v21 = sub_252C05E4C();
  *(v0 + 64) = v21;
  v22 = MEMORY[0x277D55BE8];
  v23 = *MEMORY[0x277D55BE8];
  v24 = swift_task_alloc();
  *(v0 + 72) = v24;
  *v24 = v0;
  v24[1] = sub_252C414AC;

  return ((v23 + v22))(0xD000000000000024, 0x8000000252E8C2B0, v21);
}

uint64_t sub_252C414AC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v5 = sub_252C416D8;
  }

  else
  {
    *(v4 + 88) = a1;
    v5 = sub_252C4161C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252C4161C()
{
  sub_252C41B34(v0[7]);

  v1 = v0[1];
  v2 = v0[11];

  return v1(v2);
}

uint64_t sub_252C416D8()
{
  sub_252C41B34(*(v0 + 56));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252C417BC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25293B808;

  return sub_252C40C70(a1);
}

void *sub_252C41858@<X0>(const void *a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for CalibrationInProgressResponseHandler();
  swift_allocObject();
  memcpy(__dst, a1, sizeof(__dst));
  result = sub_252BE97AC(__dst);
  *a2 = result;
  return result;
}

void *sub_252C418BC(void *result)
{
  if (result)
  {
    v1 = result;
    v2 = sub_252C30628();
    if (v2 >> 62)
    {
      v9 = sub_252E378C4();

      if (v9)
      {
LABEL_4:
        v4 = [v1 entityResponses];
        if (v4)
        {
          type metadata accessor for HomeEntityResponse();
          v5 = sub_252E37264();

          if (v5 >> 62)
          {
            v6 = sub_252E378C4();
          }

          else
          {
            v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }
        }

        else
        {
          v6 = 0;
        }

        v7 = sub_252C30628();
        if (v7 >> 62)
        {
          v8 = sub_252E378C4();
        }

        else
        {
          v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v4)
        {
          return (v6 == v8);
        }

        return 0;
      }
    }

    else
    {
      v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v3)
      {
        goto LABEL_4;
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_252C41A14()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_25294B958;

  return sub_252C41064(v0);
}

uint64_t sub_252C41AA4()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_25294B7BC;

  return sub_252C40F64(v0);
}

uint64_t sub_252C41B34(uint64_t a1)
{
  v2 = type metadata accessor for HomeAutomationCalibrationInProgressParameters(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_252C41B90@<X0>(uint64_t **a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_252E32E84();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v36 - v10;
  v12 = *a1;
  type metadata accessor for MatterAccessory(0);
  v13 = swift_dynamicCastClass();
  if (!v13 || (v14 = v13, !*(v13 + OBJC_IVAR____TtC22HomeAutomationInternal15MatterAccessory_matterNodeID)))
  {
LABEL_19:
    v20 = (*v12 + 256);
    v21 = *v20;
    if (((*v20)() == 24 || (result = v21(), result == 38)) && (result = sub_252D4EC64(), v23) || (v21)(result) == 41 && (result = sub_252D4EC58(), v23))
    {
      *a2 = result;
      a2[1] = v23;
      return result;
    }

    if (qword_27F53F560 != -1)
    {
      swift_once();
    }

    v27 = sub_252E36AD4();
    __swift_project_value_buffer(v27, qword_27F544EC8);
    sub_252CC3D90(0xD000000000000050, 0x8000000252E8C4A0, 0xD000000000000080, 0x8000000252E8C340);
    v28 = sub_252D4DFC8();
    if (v28)
    {
      (*(v6 + 16))(v9, v28 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v5);
      goto LABEL_38;
    }

    v29 = *(v12 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_services);
    if (v29 >> 62)
    {
      result = sub_252E378C4();
      if (result)
      {
        goto LABEL_34;
      }
    }

    else
    {
      result = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
LABEL_34:
        if ((v29 & 0xC000000000000001) != 0)
        {
          v30 = MEMORY[0x2530ADF00](0, v29);
        }

        else
        {
          if (!*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return result;
          }

          v30 = *(v29 + 32);
        }

        (*(v6 + 16))(v9, v30 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v5);
LABEL_38:

        v31 = sub_252E32E24();
        v33 = v32;
        result = (*(v6 + 8))(v9, v5);
        *a2 = v31;
        a2[1] = v33;
        return result;
      }
    }

    *a2 = 0;
    a2[1] = 0;
    return result;
  }

  v36[1] = v12;
  v37 = a2;

  v16 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0(v15);
  v17 = [*(v14 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate) uniqueIdentifier];
  sub_252E32E64();

  v44 = sub_252E32E24();
  v40 = v18;
  (*(v6 + 8))(v11, v5);
  v19 = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_deviceEntityStore;
  swift_beginAccess();
  v38 = v2;
  v39 = v16;
  v5 = *&v16[v19];
  if (v5 >> 62)
  {
    goto LABEL_43;
  }

  v12 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:

  if (v12)
  {
    v6 = 0;
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        MEMORY[0x2530ADF00](v6, v5);
        a2 = (v6 + 1);
        if (__OFADD__(v6, 1))
        {
LABEL_18:
          __break(1u);
          goto LABEL_19;
        }
      }

      else
      {
        if (v6 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_43:
          v12 = sub_252E378C4();
          goto LABEL_5;
        }

        a2 = (v6 + 1);
        if (__OFADD__(v6, 1))
        {
          goto LABEL_18;
        }
      }

      sub_252E36744();

      if (v42)
      {
        if (v41 == v44 && v42 == v40)
        {

LABEL_40:

          sub_252E36424();

          __swift_project_boxed_opaque_existential_1(&v41, v43);
          v25 = sub_252E364D4();
          v26 = v34;

          result = __swift_destroy_boxed_opaque_existential_1(&v41);
          goto LABEL_41;
        }

        v9 = sub_252E37DB4();

        if (v9)
        {

          goto LABEL_40;
        }
      }

      ++v6;
    }

    while (a2 != v12);
  }

  if (qword_27F53F560 != -1)
  {
    swift_once();
  }

  v24 = sub_252E36AD4();
  __swift_project_value_buffer(v24, qword_27F544EC8);
  v41 = 0;
  v42 = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000040, 0x8000000252E6B840);
  MEMORY[0x2530AD570](v44, v40);

  sub_252CC4050(v41, v42, 0xD00000000000007CLL, 0x8000000252E6B890, 0xD000000000000012, 0x8000000252E6B910, 375);

  v25 = 0;
  v26 = 0;
LABEL_41:
  v35 = v37;
  *v37 = v25;
  v35[1] = v26;
  return result;
}

uint64_t sub_252C421E8(unint64_t a1)
{
  v2 = sub_252E32E84();
  v3 = *(v2 - 8);
  isUniquelyReferenced_nonNull_native = MEMORY[0x28223BE20](v2);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
LABEL_46:
    v45 = v6;
    v46 = isUniquelyReferenced_nonNull_native;
    v56 = a1 & 0xFFFFFFFFFFFFFF8;
    v7 = sub_252E378C4();
    isUniquelyReferenced_nonNull_native = v46;
    v6 = v45;
  }

  else
  {
    v56 = a1 & 0xFFFFFFFFFFFFFF8;
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v54 = "eEntity. Returning nil";
  if (!v7)
  {
    v52 = MEMORY[0x277D84F90];
    goto LABEL_37;
  }

  v50 = v6;
  v51 = isUniquelyReferenced_nonNull_native;
  v8 = 0;
  v55 = a1 & 0xC000000000000001;
  v53 = "getDeviceEntities(from:)";
  v6 = (v3 + 16);
  v48 = (v3 + 8);
  v49 = (v3 + 16);
  v52 = MEMORY[0x277D84F90];
  do
  {
    v9 = v8;
    while (1)
    {
      if (v55)
      {
        isUniquelyReferenced_nonNull_native = MEMORY[0x2530ADF00](v9, a1);
        v10 = isUniquelyReferenced_nonNull_native;
        v8 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_44;
        }
      }

      else
      {
        if (v9 >= *(v56 + 16))
        {
          goto LABEL_45;
        }

        v10 = *(a1 + 8 * v9 + 32);

        v8 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
LABEL_44:
          __break(1u);
LABEL_45:
          __break(1u);
          goto LABEL_46;
        }
      }

      v11 = OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate;
      v12 = [*(v10 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) serviceType];
      v13 = sub_252E36F34();
      v15 = v14;

      if (qword_27F53F8B8 != -1)
      {
        swift_once();
      }

      v16 = off_27F546230;
      if (*(off_27F546230 + 2) && (v17 = sub_252A44A10(v13, v15), (v18 & 1) != 0))
      {
        v19 = *(v16[7] + 8 * v17);

        if (v19 == 9)
        {
          goto LABEL_20;
        }
      }

      else
      {
      }

      v20 = [*(v10 + v11) serviceType];
      v21 = sub_252E36F34();
      v23 = v22;

      if (!v16[2])
      {
        break;
      }

      v24 = sub_252A44A10(v21, v23);
      if ((v25 & 1) == 0)
      {
        break;
      }

      v26 = *(v16[7] + 8 * v24);

      if (v26 != 40)
      {
        goto LABEL_29;
      }

LABEL_20:
      if (qword_27F53F560 != -1)
      {
        swift_once();
      }

      v27 = sub_252E36AD4();
      v3 = __swift_project_value_buffer(v27, qword_27F544EC8);
      sub_252CC3D90(0xD00000000000004ELL, v53 | 0x8000000000000000, 0xD000000000000080, v54 | 0x8000000000000000);
      v28 = [*(v10 + v11) accessory];
      if (v28)
      {
        v29 = v28;
        type metadata accessor for Accessory(0);
        swift_allocObject();
        sub_252D4CE7C(v29);
        v3 = sub_252D4DFC8();

        if (v3)
        {
          v35 = v50;
          v36 = v51;
          (*v49)(v50, v3 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v51);

          v3 = sub_252E32E24();
          v38 = v37;

          (*v48)(v35, v36);
          goto LABEL_30;
        }
      }

      ++v9;
      if (v8 == v7)
      {
        goto LABEL_37;
      }
    }

LABEL_29:
    v3 = sub_252E32E24();
    v38 = v30;

LABEL_30:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      isUniquelyReferenced_nonNull_native = sub_2529F7A80(0, *(v52 + 2) + 1, 1, v52);
      v52 = isUniquelyReferenced_nonNull_native;
    }

    v32 = *(v52 + 2);
    v31 = *(v52 + 3);
    if (v32 >= v31 >> 1)
    {
      isUniquelyReferenced_nonNull_native = sub_2529F7A80((v31 > 1), v32 + 1, 1, v52);
      v52 = isUniquelyReferenced_nonNull_native;
    }

    v33 = v52;
    *(v52 + 2) = v32 + 1;
    v34 = &v33[16 * v32];
    *(v34 + 4) = v3;
    *(v34 + 5) = v38;
  }

  while (v8 != v7);
LABEL_37:
  if (qword_27F53F560 != -1)
  {
    swift_once();
  }

  v39 = sub_252E36AD4();
  __swift_project_value_buffer(v39, qword_27F544EC8);
  v57 = 0;
  v58 = 0xE000000000000000;
  sub_252E379F4();

  v57 = 0xD00000000000002DLL;
  v58 = 0x8000000252E8C440;
  v40 = v52;
  v41 = MEMORY[0x2530AD730](v52, MEMORY[0x277D837D0]);
  MEMORY[0x2530AD570](v41);

  sub_252CC3D90(v57, v58, 0xD000000000000080, v54 | 0x8000000000000000);

  v42 = *(v40 + 2);
  if (v42)
  {
    v57 = MEMORY[0x277D84F90];
    sub_252E37AB4();
    type metadata accessor for DeviceEntity(0);
    sub_252C42FA8();
    v43 = v40 + 40;
    do
    {

      sub_252E363E4();
      sub_252E37A94();
      sub_252E37AC4();
      sub_252E37AD4();
      sub_252E37AA4();
      v43 += 16;
      --v42;
    }

    while (v42);

    return v57;
  }

  else
  {

    return MEMORY[0x277D84F90];
  }
}

uint64_t sub_252C42820(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_27;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v4 = 0;
    v17 = v2;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x2530ADF00](v4, a1);
        v7 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_25;
        }
      }

      else
      {
        if (v4 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_26;
        }

        v6 = *(a1 + 8 * v4 + 32);

        v7 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
LABEL_25:
          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          v2 = sub_252E378C4();
          goto LABEL_3;
        }
      }

      v20 = v6;
      sub_252C41B90(&v20, &v18);

      v8 = v19;
      if (v19)
      {
        v9 = v18;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v3 = sub_2529F7A80(0, *(v3 + 2) + 1, 1, v3);
        }

        v11 = *(v3 + 2);
        v10 = *(v3 + 3);
        if (v11 >= v10 >> 1)
        {
          v3 = sub_2529F7A80((v10 > 1), v11 + 1, 1, v3);
        }

        *(v3 + 2) = v11 + 1;
        v5 = &v3[16 * v11];
        *(v5 + 4) = v9;
        *(v5 + 5) = v8;
        v2 = v17;
      }

      ++v4;
    }

    while (v7 != v2);
  }

  if (qword_27F53F560 != -1)
  {
    swift_once();
  }

  v12 = sub_252E36AD4();
  __swift_project_value_buffer(v12, qword_27F544EC8);
  v18 = 0;
  v19 = 0xE000000000000000;
  sub_252E379F4();

  v18 = 0xD00000000000002ELL;
  v19 = 0x8000000252E8C470;
  v13 = MEMORY[0x2530AD730](v3, MEMORY[0x277D837D0]);
  MEMORY[0x2530AD570](v13);

  sub_252CC3D90(v18, v19, 0xD000000000000080, 0x8000000252E8C340);

  v14 = *(v3 + 2);
  if (v14)
  {
    v18 = MEMORY[0x277D84F90];
    sub_252E37AB4();
    type metadata accessor for DeviceEntity(0);
    sub_252C42FA8();
    v15 = v3 + 40;
    do
    {

      sub_252E363E4();
      sub_252E37A94();
      sub_252E37AC4();
      sub_252E37AD4();
      sub_252E37AA4();
      v15 += 16;
      --v14;
    }

    while (v14);

    return v18;
  }

  else
  {

    return MEMORY[0x277D84F90];
  }
}

uint64_t sub_252C42B30(void *a1)
{
  v2 = sub_252E36AB4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F53F658 != -1)
  {
    swift_once();
  }

  v6 = qword_27F544FE0;
  sub_252E36A94();
  sub_252E375D4();
  sub_252E36A84();
  v7 = type metadata accessor for HomeStore(0);
  v8 = static HomeStore.shared.getter(v7);
  v9 = v8[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_loadSucceeded];
  v10 = &off_279711000;
  if (v9 == 2 || (v9) && (v11 = [a1 filters]) != 0)
  {
    v12 = v11;
    v38 = v3;
    v13 = v2;
    type metadata accessor for HomeFilter();
    v14 = sub_252E37264();

    v15 = [a1 userTask];
    v16 = HomeStore.services(matching:supporting:)(v14, v15);
    v18 = v17;

    if (v18)
    {
      sub_252929F10(v16, 1);
      v2 = v13;
      v3 = v38;
      v10 = &off_279711000;
    }

    else
    {
      if (v16 >> 62)
      {
        v31 = sub_252E378C4();
      }

      else
      {
        v31 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v2 = v13;
      v10 = &off_279711000;
      v3 = v38;
      if (v31)
      {
        v32 = sub_252C421E8(v16);
        v33 = v16;
LABEL_22:
        sub_252929F10(v33, 0);
        goto LABEL_31;
      }

      sub_252929F10(v16, 0);
    }
  }

  else
  {
  }

  v20 = static HomeStore.shared.getter(v19);
  v21 = v20[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_loadSucceeded];
  if (v21 == 2 || (v21 & 1) != 0)
  {
    v22 = [a1 v10[192]];
    if (v22)
    {
      v23 = v22;
      type metadata accessor for HomeFilter();
      v24 = sub_252E37264();

      v25 = [a1 userTask];
      v26 = HomeStore.accessories(matching:supporting:)(v24, v25);
      v28 = v27;

      if (v28)
      {
        v29 = v26;
        v30 = 1;
LABEL_27:
        sub_252929F10(v29, v30);
        goto LABEL_28;
      }

      if (v26 >> 62)
      {
        if (sub_252E378C4())
        {
          goto LABEL_21;
        }
      }

      else if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_21:
        v32 = sub_252C42820(v26);
        v33 = v26;
        goto LABEL_22;
      }

      v29 = v26;
      v30 = 0;
      goto LABEL_27;
    }
  }

LABEL_28:
  if (qword_27F53F560 != -1)
  {
    swift_once();
  }

  v34 = sub_252E36AD4();
  __swift_project_value_buffer(v34, qword_27F544EC8);
  sub_252CC4050(0xD000000000000036, 0x8000000252E8C300, 0xD000000000000080, 0x8000000252E8C340, 0xD000000000000018, 0x8000000252E8C3D0, 35);
  v32 = 0;
LABEL_31:
  v35 = sub_252E375C4();
  sub_252E36A74(v35, &dword_252917000, v6, "queryDeviceAppEntity", 20, 2, v5, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);
  (*(v3 + 8))(v5, v2);
  return v32;
}

unint64_t sub_252C42FA8()
{
  result = qword_27F544368;
  if (!qword_27F544368)
  {
    v3 = type metadata accessor for DeviceEntity(255);
    result = swift_getWitnessTable(aE_8, v3, v0, v1);
    atomic_store(result, &qword_27F544368);
  }

  return result;
}

uint64_t sub_252C43000()
{
  sub_252E379F4();

  strcpy(v9, "deviceEntity:");
  HIWORD(v9[1]) = -4864;

  sub_252E36744();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540EA8, &unk_252E491B0);
  v0 = sub_252E36F94();
  MEMORY[0x2530AD570](v0);

  MEMORY[0x2530AD570](0xD000000000000013, 0x8000000252E8C690);

  sub_252E36744();

  v1 = v7;
  if (v7)
  {
    v8 = MEMORY[0x277D84F90];
    if (v1 >> 62)
    {
      goto LABEL_18;
    }

    for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
    {
      v3 = 0;
      while ((v1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x2530ADF00](v3, v1);
        v4 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          goto LABEL_16;
        }

LABEL_8:
        MEMORY[0x2530AD700]();
        if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_252E372A4();
        }

        sub_252E372D4();
        ++v3;
        if (v4 == i)
        {
          goto LABEL_19;
        }
      }

      if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      v4 = v3 + 1;
      if (!__OFADD__(v3, 1))
      {
        goto LABEL_8;
      }

LABEL_16:
      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      ;
    }

LABEL_19:
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5445A0, &qword_252E54C48);
  v5 = sub_252E36F94();
  MEMORY[0x2530AD570](v5);

  return v9[0];
}

uint64_t sub_252C43278(uint64_t a1)
{
  v2 = sub_252E36454();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = swift_allocObject();
  v7 = qword_27F544440;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544590, &qword_252E54C30);
  swift_allocObject();
  *(v6 + v7) = sub_252E36734();
  v8 = qword_27F544448;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544598, &unk_252E54C38);
  swift_allocObject();
  *(v6 + v8) = sub_252E36734();
  (*(v3 + 16))(v5, a1, v2);
  v9 = sub_252E364B4();
  (*(v3 + 8))(a1, v2);
  return v9;
}

uint64_t sub_252C43470(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable(byte_252E54A7C);

  return MEMORY[0x28213DE00](a1, a2, WitnessTable);
}

uint64_t sub_252C434D0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(asc_252E54B04, a1);

  return MEMORY[0x28213DB58](a1, WitnessTable);
}

uint64_t sub_252C43524(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable(byte_252E54A7C);

  return MEMORY[0x28213DDE8](a1, a2, WitnessTable);
}

uint64_t sub_252C43584()
{

  sub_252E36744();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544588, &unk_252E54C20);
  v2 = sub_252E36F94();
  MEMORY[0x2530AD570](8250, 0xE200000000000000);

  sub_252E36744();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540EB0, &qword_252E3F4E8);
  v0 = sub_252E36F94();
  MEMORY[0x2530AD570](v0);

  return v2;
}

uint64_t sub_252C43678(uint64_t a1)
{
  v2 = sub_252E36454();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = swift_allocObject();
  v7 = qword_27F544460;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544578, &qword_252E54C10);
  swift_allocObject();
  *(v6 + v7) = sub_252E36734();
  v8 = qword_27F544468;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544580, &qword_252E54C18);
  swift_allocObject();
  *(v6 + v8) = sub_252E36734();
  (*(v3 + 16))(v5, a1, v2);
  v9 = sub_252E364B4();
  (*(v3 + 8))(a1, v2);
  return v9;
}

uint64_t sub_252C43818()
{
}

uint64_t sub_252C43870()
{
  sub_252E364A4();

  return swift_deallocClassInstance();
}

uint64_t sub_252C43910()
{
  v0 = *aComAppleHome_2;

  return v0;
}

uint64_t sub_252C4396C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable(aI_7);

  return MEMORY[0x28213DE00](a1, a2, WitnessTable);
}

uint64_t sub_252C439CC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(byte_252E548D8, a1);

  return MEMORY[0x28213DB58](a1, WitnessTable);
}

uint64_t sub_252C43A20(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable(aI_7);

  return MEMORY[0x28213DDE8](a1, a2, WitnessTable);
}

HomeAutomationInternal::HomeError_optional __swiftcall HomeError.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_252E37DE4();

  v5 = 0;
  v6 = 5;
  switch(v3)
  {
    case 0:
      goto LABEL_15;
    case 1:
      v5 = 1;
      goto LABEL_15;
    case 2:
      v5 = 2;
      goto LABEL_15;
    case 3:
      v5 = 3;
      goto LABEL_15;
    case 4:
      v5 = 4;
LABEL_15:
      v6 = v5;
      break;
    case 5:
      break;
    case 6:
      v6 = 6;
      break;
    case 7:
      v6 = 7;
      break;
    case 8:
      v6 = 8;
      break;
    case 9:
      v6 = 9;
      break;
    case 10:
      v6 = 10;
      break;
    case 11:
      v6 = 11;
      break;
    case 12:
      v6 = 12;
      break;
    case 13:
      v6 = 13;
      break;
    case 14:
      v6 = 14;
      break;
    case 15:
      v6 = 15;
      break;
    case 16:
      v6 = 16;
      break;
    case 17:
      v6 = 17;
      break;
    case 18:
      v6 = 18;
      break;
    case 19:
      v6 = 19;
      break;
    case 20:
      v6 = 20;
      break;
    case 21:
      v6 = 21;
      break;
    case 22:
      v6 = 22;
      break;
    default:
      v6 = 23;
      break;
  }

  *v2 = v6;
  return result;
}

unint64_t HomeError.rawValue.getter()
{
  result = 0x46746F4E656D6F68;
  switch(*v0)
  {
    case 1:
      result = 0x46746F4E6D6F6F72;
      break;
    case 2:
    case 0xB:
      result = 0xD000000000000011;
      break;
    case 3:
    case 0xF:
      result = 0xD000000000000014;
      break;
    case 4:
      result = 0xD000000000000015;
      break;
    case 5:
    case 0xD:
      result = 0xD00000000000001CLL;
      break;
    case 6:
      result = 0xD000000000000015;
      break;
    case 7:
    case 9:
    case 0x14:
      result = 0xD000000000000016;
      break;
    case 8:
      result = 0xD000000000000015;
      break;
    case 0xA:
    case 0x15:
      result = 0xD000000000000013;
      break;
    case 0xC:
      result = 0xD000000000000018;
      break;
    case 0xE:
      result = 0xD000000000000020;
      break;
    case 0x10:
      result = 0x6F4C656369766564;
      break;
    case 0x11:
      result = 0x6544737365636361;
      break;
    case 0x12:
      result = 0xD000000000000010;
      break;
    case 0x13:
      result = 0xD000000000000012;
      break;
    case 0x16:
      result = 0x65746F6D65526F6ELL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_252C43EA8()
{
  v0 = HomeError.rawValue.getter();
  v2 = v1;
  if (v0 == HomeError.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_252E37DB4();
  }

  return v5 & 1;
}

uint64_t sub_252C43F44()
{
  sub_252E37EC4();
  HomeError.rawValue.getter();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252C43FAC(uint64_t a1)
{
  HomeError.rawValue.getter();
  sub_252E37044();
}

uint64_t sub_252C44010(uint64_t a1)
{
  sub_252E37EC4();
  HomeError.rawValue.getter();
  sub_252E37044();

  return sub_252E37F14();
}

unint64_t sub_252C44080@<X0>(unint64_t *a1@<X8>)
{
  result = HomeError.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_252C440C8(uint64_t a1)
{
  v2 = sub_252C46A6C();

  return MEMORY[0x28213DAB0](a1, v2);
}

uint64_t sub_252C44104(uint64_t a1)
{
  v2 = sub_252C46A6C();

  return MEMORY[0x28213DAD0](a1, v2);
}

uint64_t sub_252C44140(uint64_t a1, uint64_t a2)
{
  v4 = sub_252C458BC();

  return MEMORY[0x28213DDE8](a1, a2, v4);
}

uint64_t sub_252C4418C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_252C46A6C();

  return MEMORY[0x28213DAC0](a1, a2, a3, v6);
}

uint64_t sub_252C441F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_252C458BC();

  return MEMORY[0x28213DE00](a1, a2, v4);
}

uint64_t sub_252C4424C(uint64_t *a1)
{
  swift_beginAccess();
  v2 = *a1;

  return v2;
}

uint64_t sub_252C442B0(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  swift_beginAccess();
  *a3 = a1;
  *a4 = a2;
}

uint64_t sub_252C44368(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t *a6)
{
  v9 = *a1;
  v8 = a1[1];
  swift_beginAccess();
  *a5 = v9;
  *a6 = v8;
}

HomeAutomationInternal::DeviceError_optional __swiftcall DeviceError.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_252E37B74();

  v5 = 10;
  if (v3 < 0xA)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t DeviceError.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 4)
  {
    v6 = 0xD000000000000011;
    v7 = 0xD000000000000013;
    v8 = 0xD000000000000018;
    if (v1 == 8)
    {
      v8 = 0xD000000000000013;
    }

    if (v1 != 7)
    {
      v6 = v8;
    }

    if (v1 == 5)
    {
      v7 = 0x4274737544637672;
    }

    if (*v0 <= 6u)
    {
      return v7;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v2 = 0x6E776F6E6B6E75;
    v3 = 0xD00000000000001BLL;
    if (v1 != 3)
    {
      v3 = 0xD000000000000011;
    }

    if (v1 != 2)
    {
      v2 = v3;
    }

    v4 = 0xD000000000000016;
    if (*v0)
    {
      v4 = 0xD00000000000001DLL;
    }

    if (*v0 <= 1u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_252C4459C()
{
  v1 = *v0;
  sub_252E37EC4();
  sub_252AB3C18(v3, v1);
  return sub_252E37F14();
}

uint64_t sub_252C445EC(uint64_t a1)
{
  v2 = *v1;
  sub_252E37EC4();
  sub_252AB3C18(v4, v2);
  return sub_252E37F14();
}

uint64_t sub_252C4463C@<X0>(uint64_t *a1@<X8>)
{
  result = DeviceError.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_252C44674(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  swift_beginAccess();
  v4 = *a3;

  return v4;
}

uint64_t sub_252C446DC(uint64_t a1)
{
  v2 = sub_252C46A18();

  return MEMORY[0x28213DAB0](a1, v2);
}

uint64_t sub_252C44718(uint64_t a1)
{
  v2 = sub_252C46A18();

  return MEMORY[0x28213DAD0](a1, v2);
}

uint64_t sub_252C44754(uint64_t a1, uint64_t a2)
{
  v4 = sub_252C45BA8();

  return MEMORY[0x28213DDE8](a1, a2, v4);
}

uint64_t sub_252C447A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_252C46A18();

  return MEMORY[0x28213DAC0](a1, a2, a3, v6);
}

uint64_t sub_252C44804(uint64_t a1, uint64_t a2)
{
  v4 = sub_252C45BA8();

  return MEMORY[0x28213DE00](a1, a2, v4);
}

unint64_t sub_252C44850()
{
  if (*(v0 + 33))
  {
    v1 = 2;
  }

  else
  {
    v1 = 0;
  }

  v2 = v1 & 0xFFFFFFFE | (*(v0 + 32) >> 1) & 1;
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      sub_252E379F4();

      v7 = 0x6146656369766564;
      v4 = &qword_27F544528;
      v5 = &unk_252E54C00;
    }

    else
    {
      sub_252E379F4();

      v7 = 0xD000000000000013;
      v4 = &qword_27F541EE0;
      v5 = &qword_252E4D8A0;
    }
  }

  else
  {
    if (!v2)
    {
      sub_252E37AE4();
      return 0;
    }

    v7 = 0x203A726F727265;
    v4 = &qword_27F544530;
    v5 = &unk_252E60660;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  v6 = sub_252E36F94();
  MEMORY[0x2530AD570](v6);

  return v7;
}

uint64_t sub_252C449FC()
{
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252C44AC8(uint64_t a1)
{
  sub_252E37044();
}

uint64_t sub_252C44B80(uint64_t a1)
{
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

unint64_t sub_252C44C48@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_252C4678C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_252C44C78(uint64_t *a1@<X8>)
{
  v2 = 0x2E656D6F6374754FLL;
  v3 = 0xEF73736563637573;
  v4 = 0xD000000000000015;
  v5 = 0x8000000252E684C0;
  if (*v1 != 2)
  {
    v4 = 0xD000000000000023;
    v5 = 0x8000000252E684E0;
  }

  if (*v1)
  {
    v3 = 0xEF6572756C696166;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v2 = v4;
    v6 = v5;
  }

  *a1 = v2;
  a1[1] = v6;
}

uint64_t sub_252C44D00()
{
  sub_252E37EC4();
  sub_252E37044();
  return sub_252E37F14();
}

uint64_t sub_252C44D54(uint64_t a1)
{
  sub_252E37EC4();
  sub_252E37044();
  return sub_252E37F14();
}

uint64_t sub_252C44D98@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_252E37B74();

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_252C44DFC()
{
  v7 = v0[1];
  v8 = *v0;
  v1 = *(v0 + 32);
  v2 = *(v0 + 33);
  if (qword_27F53F568 != -1)
  {
    swift_once();
  }

  v3 = sub_252E36AD4();
  __swift_project_value_buffer(v3, qword_27F544EE0);
  sub_252CC3D90(0xD00000000000001CLL, 0x8000000252E8C650, 0xD000000000000080, 0x8000000252E8C5C0);
  if (v2)
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 & 0xFFFFFFFE | (v1 >> 1) & 1;
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      v12 = 3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F50, &qword_252E450D0);
      sub_252E36724();
      *(swift_allocObject() + 16) = xmmword_252E3C290;
      *&v9[0] = v8;
      BYTE8(v9[0]) = BYTE8(v8) & 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541EE0, &qword_252E4D8A0);
      *&v11 = sub_252E37724();
      sub_252C468D0();
      sub_252C4691C();
      sub_252E366F4();
      sub_252C46970();
      goto LABEL_14;
    }

    LOBYTE(v11) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F50, &qword_252E450D0);
    sub_252E36724();
    *(swift_allocObject() + 16) = xmmword_252E3C290;
    v12 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544528, &unk_252E54C00);
    sub_252C45B50();
LABEL_12:
    *&v9[0] = sub_252E37724();
    sub_252C468D0();
    sub_252C4691C();
    sub_252E366F4();
    sub_252C46970();
LABEL_14:
    sub_252E36574();
  }

  if (v5)
  {
    LOBYTE(v11) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F50, &qword_252E450D0);
    sub_252E36724();
    *(swift_allocObject() + 16) = xmmword_252E3C290;
    v12 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544530, &unk_252E60660);
    sub_252C45864();
    goto LABEL_12;
  }

  v12 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F50, &qword_252E450D0);
  sub_252E36724();
  *(swift_allocObject() + 16) = xmmword_252E3C290;
  v9[1] = v7;
  v10 = v1;
  sub_252A82828();
  sub_252E36514();
  sub_252C468D0();
  sub_252C4691C();
  sub_252E366F4();
  sub_252C46970();
  sub_252E36574();

  *&v9[0] = 0;
  *(&v9[0] + 1) = 0xE000000000000000;
  sub_252E379F4();
  v11 = v9[0];
  MEMORY[0x2530AD570](0xD000000000000017, 0x8000000252E8C670);
  sub_252E36584();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544568, &qword_252E60670);
  sub_252E37AE4();
  __swift_destroy_boxed_opaque_existential_1(v9);
  sub_252CC3D90(v11, *(&v11 + 1), 0xD000000000000080, 0x8000000252E8C5C0);
}

void sub_252C453BC(int8x16_t *a3@<X8>)
{
  sub_252E36584();
  __swift_project_boxed_opaque_existential_1(&v18, v19.i64[1]);
  v4 = sub_252E364C4();
  v6 = sub_252C4678C(v4, v5);
  __swift_destroy_boxed_opaque_existential_1(&v18);
  if (v6 <= 1u)
  {
    if (!v6)
    {
      sub_252A81B70();
      sub_252E36594();
      v11.i32[0] = -3;
      if (v20 <= 0xFDu)
      {
        v12 = v20;
      }

      else
      {
        v12 = -254;
      }

      v10.i32[0] = v20;
      v13 = vdupq_lane_s8(*&vcgtq_u8(v10, v11), 0);
      v14 = vbicq_s8(v19, v13);
      *a3 = vbicq_s8(v18, v13);
      a3[1] = v14;
LABEL_30:
      a3[2].i16[0] = v12;
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544530, &unk_252E60660);
    sub_252C46854(&qword_27F544548, &qword_27F544530, &unk_252E60660, sub_252C45864);
    sub_252E36594();
    v15 = v18.u8[0] == 24;
    if (v18.u8[0] == 24)
    {
      v16 = 0;
    }

    else
    {
      v16 = v18.u8[0];
    }

    v12 = 2;
LABEL_27:
    if (v15)
    {
      v12 = -254;
    }

    a3->i64[0] = v16;
    a3->i64[1] = 0;
    a3[1].i64[0] = 0;
    a3[1].i64[1] = 0;
    goto LABEL_30;
  }

  if (v6 == 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544528, &unk_252E54C00);
    sub_252C46854(&qword_27F544540, &qword_27F544528, &unk_252E54C00, sub_252C45B50);
    sub_252E36594();
    v15 = v18.u8[0] == 11;
    if (v18.u8[0] == 11)
    {
      v16 = 0;
    }

    else
    {
      v16 = v18.u8[0];
    }

    v12 = 256;
    goto LABEL_27;
  }

  if (v6 == 3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541EE0, &qword_252E4D8A0);
    sub_252C467D8();
    sub_252E36594();
    v7 = v18.i8[8] & 1;
    if (v18.i8[9])
    {
      v8 = 0;
    }

    else
    {
      v8 = v18.i64[0];
    }

    if (v18.i8[9])
    {
      v7 = 0;
      v9 = -254;
    }

    else
    {
      v9 = 258;
    }

    a3->i64[0] = v8;
    a3->i64[1] = v7;
    a3[1].i64[0] = 0;
    a3[1].i64[1] = 0;
    a3[2].i16[0] = v9;
  }

  else
  {
    if (qword_27F53F568 != -1)
    {
      swift_once();
    }

    v17 = sub_252E36AD4();
    __swift_project_value_buffer(v17, qword_27F544EE0);
    sub_252CC4050(0xD000000000000019, 0x8000000252E6EFC0, 0xD000000000000080, 0x8000000252E8C5C0, 0xD000000000000010, 0x8000000252E6F060, 179);
    *a3 = 0u;
    a3[1] = 0u;
    a3[2].i16[0] = -254;
  }
}

uint64_t sub_252C456D0(uint64_t a1)
{
  sub_252C469C4();

  return sub_252E36514();
}

uint64_t sub_252C4570C(uint64_t a1, uint64_t a2)
{
  v4 = sub_252C469C4();

  return MEMORY[0x28213DA58](a1, a2, v4);
}

uint64_t sub_252C45758(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_252C469C4();

  return MEMORY[0x28213DA68](a1, a2, a3, v6);
}

uint64_t sub_252C457BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_252C469C4();

  return MEMORY[0x28213DA60](a1, a2, v4);
}

unint64_t sub_252C4580C()
{
  result = qword_27F5443A0;
  if (!qword_27F5443A0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for HomeError, &type metadata for HomeError, v0, v1);
    atomic_store(result, &qword_27F5443A0);
  }

  return result;
}

unint64_t sub_252C45864()
{
  result = qword_27F5443A8;
  if (!qword_27F5443A8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for HomeError, &type metadata for HomeError, v0, v1);
    atomic_store(result, &qword_27F5443A8);
  }

  return result;
}

unint64_t sub_252C458BC()
{
  result = qword_27F5443B0;
  if (!qword_27F5443B0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for HomeError, &type metadata for HomeError, v0, v1);
    atomic_store(result, &qword_27F5443B0);
  }

  return result;
}

unint64_t sub_252C45914()
{
  result = qword_27F5443B8;
  if (!qword_27F5443B8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for HomeError, &type metadata for HomeError, v0, v1);
    atomic_store(result, &qword_27F5443B8);
  }

  return result;
}

unint64_t sub_252C4596C()
{
  result = qword_27F5443C0;
  if (!qword_27F5443C0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for HomeError, &type metadata for HomeError, v0, v1);
    atomic_store(result, &qword_27F5443C0);
  }

  return result;
}

unint64_t sub_252C459F0()
{
  result = qword_27F5443D8;
  if (!qword_27F5443D8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for HomeError, &type metadata for HomeError, v0, v1);
    atomic_store(result, &qword_27F5443D8);
  }

  return result;
}

unint64_t sub_252C45A48()
{
  result = qword_27F5443E0;
  if (!qword_27F5443E0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for HomeError, &type metadata for HomeError, v0, v1);
    atomic_store(result, &qword_27F5443E0);
  }

  return result;
}

unint64_t sub_252C45AA0()
{
  result = qword_27F5443E8;
  if (!qword_27F5443E8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for HomeError, &type metadata for HomeError, v0, v1);
    atomic_store(result, &qword_27F5443E8);
  }

  return result;
}

unint64_t sub_252C45AF8()
{
  result = qword_27F5443F0;
  if (!qword_27F5443F0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DeviceError, &type metadata for DeviceError, v0, v1);
    atomic_store(result, &qword_27F5443F0);
  }

  return result;
}

unint64_t sub_252C45B50()
{
  result = qword_27F5443F8;
  if (!qword_27F5443F8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DeviceError, &type metadata for DeviceError, v0, v1);
    atomic_store(result, &qword_27F5443F8);
  }

  return result;
}

unint64_t sub_252C45BA8()
{
  result = qword_27F544400;
  if (!qword_27F544400)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DeviceError, &type metadata for DeviceError, v0, v1);
    atomic_store(result, &qword_27F544400);
  }

  return result;
}

unint64_t sub_252C45C00()
{
  result = qword_27F544408;
  if (!qword_27F544408)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DeviceError, &type metadata for DeviceError, v0, v1);
    atomic_store(result, &qword_27F544408);
  }

  return result;
}

unint64_t sub_252C45C58()
{
  result = qword_27F544410;
  if (!qword_27F544410)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DeviceError, &type metadata for DeviceError, v0, v1);
    atomic_store(result, &qword_27F544410);
  }

  return result;
}

unint64_t sub_252C45CDC()
{
  result = qword_27F544428;
  if (!qword_27F544428)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DeviceError, &type metadata for DeviceError, v0, v1);
    atomic_store(result, &qword_27F544428);
  }

  return result;
}

unint64_t sub_252C45D34()
{
  result = qword_27F544430;
  if (!qword_27F544430)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DeviceError, &type metadata for DeviceError, v0, v1);
    atomic_store(result, &qword_27F544430);
  }

  return result;
}

unint64_t sub_252C45D8C()
{
  result = qword_27F544438;
  if (!qword_27F544438)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DeviceError, &type metadata for DeviceError, v0, v1);
    atomic_store(result, &qword_27F544438);
  }

  return result;
}

uint64_t keypath_getTm@<X0>(void *a1@<X3>, uint64_t *a2@<X4>, void *a3@<X8>)
{
  swift_beginAccess();
  v6 = *a2;
  *a3 = *a1;
  a3[1] = v6;
}

uint64_t getEnumTagSinglePayload for HomeError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEA)
  {
    goto LABEL_17;
  }

  if (a2 + 22 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 22) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 22;
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

      return (*a1 | (v4 << 8)) - 22;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 22;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x17;
  v8 = v6 - 23;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HomeError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 22 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 22) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEA)
  {
    v4 = 0;
  }

  if (a2 > 0xE9)
  {
    v5 = ((a2 - 234) >> 8) + 1;
    *result = a2 + 22;
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
    *result = a2 + 22;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy34_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_252C46078(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x1FD && *(a1 + 34))
  {
    return (*a1 + 509);
  }

  v3 = ((*(a1 + 32) >> 1) & 1 | (2 * *(a1 + 33))) ^ 0x1FF;
  if (v3 >= 0x1FC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_252C460CC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x1FC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 509;
    *(result + 8) = 0;
    if (a3 >= 0x1FD)
    {
      *(result + 34) = 1;
    }
  }

  else
  {
    if (a3 >= 0x1FD)
    {
      *(result + 34) = 0;
    }

    if (a2)
    {
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 32) = 2 * (-a2 & 1);
      *(result + 33) = -a2 >> 1;
    }
  }

  return result;
}

uint64_t sub_252C46138(uint64_t result, char a2)
{
  *(result + 32) = *(result + 32) & 0xFD | (2 * (a2 & 1));
  *(result + 33) = (a2 & 2) != 0;
  return result;
}

unint64_t sub_252C46168()
{
  result = qword_27F544480;
  if (!qword_27F544480)
  {
    result = swift_getWitnessTable(asc_252E546EC, &type metadata for Outcome, v0, v1);
    atomic_store(result, &qword_27F544480);
  }

  return result;
}

unint64_t sub_252C461C0()
{
  result = qword_27F544488;
  if (!qword_27F544488)
  {
    result = swift_getWitnessTable(byte_252E54678, &type metadata for Outcome, v0, v1);
    atomic_store(result, &qword_27F544488);
  }

  return result;
}

unint64_t sub_252C46218()
{
  result = qword_27F544490;
  if (!qword_27F544490)
  {
    result = swift_getWitnessTable(asc_252E546C4, &type metadata for Outcome, v0, v1);
    atomic_store(result, &qword_27F544490);
  }

  return result;
}

unint64_t sub_252C46270()
{
  result = qword_27F544498;
  if (!qword_27F544498)
  {
    result = swift_getWitnessTable(byte_252E54694, &type metadata for Outcome, v0, v1);
    atomic_store(result, &qword_27F544498);
  }

  return result;
}

uint64_t sub_252C46354(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_252C4678C(uint64_t a1, uint64_t a2)
{
  v2 = sub_252E37B74();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_252C467D8()
{
  result = qword_27F544538;
  if (!qword_27F544538)
  {
    v4[1] = v0;
    v4[2] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F541EE0, &qword_252E4D8A0);
    v4[0] = MEMORY[0x277CEB178];
    result = swift_getWitnessTable(MEMORY[0x277CEB1A0], v3, v4);
    atomic_store(result, &qword_27F544538);
  }

  return result;
}

uint64_t sub_252C46854(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    v8 = a4();
    result = swift_getWitnessTable(MEMORY[0x277CEB1A0], v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_252C468D0()
{
  result = qword_27F544550;
  if (!qword_27F544550)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F544550);
  }

  return result;
}

unint64_t sub_252C4691C()
{
  result = qword_27F544558;
  if (!qword_27F544558)
  {
    result = swift_getWitnessTable(aT_0, &type metadata for Outcome.Identifiers, v0, v1);
    atomic_store(result, &qword_27F544558);
  }

  return result;
}

unint64_t sub_252C46970()
{
  result = qword_27F544560;
  if (!qword_27F544560)
  {
    result = swift_getWitnessTable(aEt, &type metadata for Outcome.TransientEntity, v0, v1);
    atomic_store(result, &qword_27F544560);
  }

  return result;
}

unint64_t sub_252C469C4()
{
  result = qword_27F544570;
  if (!qword_27F544570)
  {
    result = swift_getWitnessTable(byte_252E54734, &type metadata for Outcome, v0, v1);
    atomic_store(result, &qword_27F544570);
  }

  return result;
}

unint64_t sub_252C46A18()
{
  result = qword_27F5445A8;
  if (!qword_27F5445A8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DeviceError, &type metadata for DeviceError, v0, v1);
    atomic_store(result, &qword_27F5445A8);
  }

  return result;
}

unint64_t sub_252C46A6C()
{
  result = qword_27F5445B0;
  if (!qword_27F5445B0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for HomeError, &type metadata for HomeError, v0, v1);
    atomic_store(result, &qword_27F5445B0);
  }

  return result;
}

unint64_t sub_252C46AE4()
{
  result = qword_27F5445B8;
  if (!qword_27F5445B8)
  {
    result = swift_getWitnessTable(byte_252E54CAC, &type metadata for Outcome.Identifiers, v0, v1);
    atomic_store(result, &qword_27F5445B8);
  }

  return result;
}

unint64_t sub_252C46B3C()
{
  result = qword_27F5445C0;
  if (!qword_27F5445C0)
  {
    result = swift_getWitnessTable(byte_252E54D14, &type metadata for Outcome.TransientEntity, v0, v1);
    atomic_store(result, &qword_27F5445C0);
  }

  return result;
}

uint64_t sub_252C46BD4(uint64_t a1)
{
  v26 = *(a1 + 16);
  if (!v26)
  {
    return MEMORY[0x277D84F90];
  }

  v1 = 0;
  v2 = MEMORY[0x277D84F90];
  v25 = a1 + 32;
  while (1)
  {
    v4 = *(v25 + 8 * v1);
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
      v23 = sub_252E378C4();
      v9 = v23 + v6;
      if (__OFADD__(v23, v6))
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
    v30 = v6;
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
    if (((v12 >> 1) - v11) < v30)
    {
      goto LABEL_36;
    }

    v27 = v1;
    v28 = v2;
    v15 = v10 + 8 * v11 + 32;
    v24 = v10;
    if (v5)
    {
      if (v13 < 1)
      {
        goto LABEL_38;
      }

      sub_252A00B04(&qword_27F5421A8, &qword_27F541850, &qword_252E43DC0);
      for (i = 0; i != v13; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541850, &qword_252E43DC0);
        v17 = sub_2529FBD80(v29, i, v4);
        v19 = *v18;
        (v17)(v29, 0);
        *(v15 + 8 * i) = v19;
      }
    }

    else
    {
      type metadata accessor for HomeUserTaskResponse();
      swift_arrayInitWithCopy();
    }

    v1 = v27;
    v2 = v28;
    if (v30 >= 1)
    {
      v20 = *(v24 + 16);
      v21 = __OFADD__(v20, v30);
      v22 = v20 + v30;
      if (v21)
      {
        goto LABEL_37;
      }

      *(v24 + 16) = v22;
    }

LABEL_4:
    if (++v1 == v26)
    {
      return v2;
    }
  }

  v14 = v10;
  result = sub_252E378C4();
  v10 = v14;
  v13 = result;
  if (result)
  {
    goto LABEL_20;
  }

LABEL_3:

  if (v30 <= 0)
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

unint64_t sub_252C46EA0(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_46;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v29 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v30 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v3 = MEMORY[0x277D84F90];
    v25 = isUniquelyReferenced_nonNull_bridgeObject;
    v28 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v26 = v1;
    while (1)
    {
      if (v30)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x2530ADF00](v2, v25);
      }

      else
      {
        if (v2 >= *(v29 + 16))
        {
          goto LABEL_41;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v28 + 8 * v2);
      }

      v4 = isUniquelyReferenced_nonNull_bridgeObject;
      v5 = __OFADD__(v2++, 1);
      if (v5)
      {
        break;
      }

      v6 = sub_252C49A20();

      v7 = v6 >> 62;
      if (v6 >> 62)
      {
        v8 = sub_252E378C4();
      }

      else
      {
        v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v9 = v3 >> 62;
      if (v3 >> 62)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_252E378C4();
        v10 = isUniquelyReferenced_nonNull_bridgeObject + v8;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v8))
        {
LABEL_39:
          __break(1u);
          break;
        }
      }

      else
      {
        isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v10 = isUniquelyReferenced_nonNull_bridgeObject + v8;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v8))
        {
          goto LABEL_39;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v33 = v8;
      if (!isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v9)
        {
          goto LABEL_21;
        }

LABEL_20:
        sub_252E378C4();
        goto LABEL_21;
      }

      if (v9)
      {
        goto LABEL_20;
      }

      v11 = v3 & 0xFFFFFFFFFFFFFF8;
      if (v10 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v31 = v3;
        goto LABEL_22;
      }

LABEL_21:
      isUniquelyReferenced_nonNull_bridgeObject = sub_252E37A54();
      v31 = isUniquelyReferenced_nonNull_bridgeObject;
      v11 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_22:
      v12 = *(v11 + 16);
      v13 = *(v11 + 24);
      if (v7)
      {
        v15 = v11;
        isUniquelyReferenced_nonNull_bridgeObject = sub_252E378C4();
        v11 = v15;
        v14 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_26:
          if (((v13 >> 1) - v12) < v33)
          {
            goto LABEL_43;
          }

          v16 = v11 + 8 * v12 + 32;
          v27 = v11;
          if (v7)
          {
            if (v14 < 1)
            {
              goto LABEL_45;
            }

            sub_252A00B04(&qword_27F541360, &unk_27F53FBC0, &unk_252E3B240);
            for (i = 0; i != v14; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F53FBC0, &unk_252E3B240);
              v18 = sub_2529FBE00(v32, i, v6);
              v20 = *v19;

              (v18)(v32, 0);
              *(v16 + 8 * i) = v20;
            }
          }

          else
          {
            type metadata accessor for Service(0);
            swift_arrayInitWithCopy();
          }

          v1 = v26;
          v3 = v31;
          if (v33 >= 1)
          {
            v21 = *(v27 + 16);
            v5 = __OFADD__(v21, v33);
            v22 = v21 + v33;
            if (v5)
            {
              goto LABEL_44;
            }

            *(v27 + 16) = v22;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v14 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v14)
        {
          goto LABEL_26;
        }
      }

      v3 = v31;
      if (v33 > 0)
      {
        goto LABEL_42;
      }

LABEL_5:
      if (v2 == v1)
      {
        return v3;
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
LABEL_45:
    __break(1u);
LABEL_46:
    v23 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = sub_252E378C4();
    isUniquelyReferenced_nonNull_bridgeObject = v23;
  }

  return MEMORY[0x277D84F90];
}

void sub_252C471EC()
{
  v1 = v0;
  v101 = sub_252E36AD4();
  v2 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v96 = &v77 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541F20, &qword_252E3C180);
  MEMORY[0x28223BE20](v4 - 8);
  v92 = &v77 - v5;
  v94 = sub_252E32E84();
  v6 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v84 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x277D84F90];
  v106 = MEMORY[0x277D84F90];
  v9 = [v1 requests];
  sub_25293F638(0, &qword_27F542118, 0x277CD1D58);
  v10 = sub_252E37264();

  v11 = sub_252C4A750(v10);
  v85 = 0;

  v12 = 0;
  v14 = v11 + 8;
  v13 = v11[8];
  v100 = v11;
  v15 = 1 << *(v11 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & v13;
  v18 = (v15 + 63) >> 6;
  v95 = 0x8000000252E8C820;
  v97 = "quest for attribute ";
  v98 = "Enriching command with ";
  v90 = (v2 + 16);
  v91 = (v6 + 48);
  v88 = (v2 + 8);
  v89 = "enrich(metricsRequests:)";
  v83 = (v6 + 32);
  v82 = (v6 + 8);
  for (i = v8; ; i = v106)
  {
    while (1)
    {
      if (v17)
      {
        goto LABEL_10;
      }

      do
      {
        v21 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          __break(1u);
LABEL_71:
          __break(1u);
LABEL_72:
          __break(1u);
          goto LABEL_73;
        }

        if (v21 >= v18)
        {

          return;
        }

        v17 = v14[v21];
        ++v12;
      }

      while (!v17);
      v12 = v21;
LABEL_10:
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v23 = v22 | (v12 << 6);
      v24 = v100[6] + 16 * v23;
      v25 = *v24;
      v26 = *(v24 + 8);
      v27 = *(v100[7] + 8 * v23);
      v28 = objc_allocWithZone(MEMORY[0x277D57580]);

      v29 = [v28 init];
      if (!v29)
      {

        if (qword_27F53F530 != -1)
        {
          swift_once();
        }

        v34 = v101;
        v35 = __swift_project_value_buffer(v101, qword_27F544E38);
        (*v90)(v96, v35, v34);
        v104 = 0;
        v105 = 0xE000000000000000;
        sub_252E379F4();
        MEMORY[0x2530AD570](0xD000000000000034, v89 | 0x8000000000000000);
        v36 = 0;
        v37 = 0;
        if ((v26 & 1) == 0)
        {
          v36 = HomeAttributeType.description.getter(v25);
        }

        v102 = v36;
        v103 = v37;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
        v19 = sub_252E36F94();
        MEMORY[0x2530AD570](v19);

        v20 = v96;
        sub_252CC4050(v104, v105, 0xD000000000000078, v98 | 0x8000000000000000, 0xD000000000000012, v97 | 0x8000000000000000, 43);

        (*v88)(v20, v101);
        continue;
      }

      v99 = v29;
      v30 = [v1 clientContext];
      if (v30)
      {
        break;
      }

LABEL_19:
      if (qword_27F53F530 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v101, qword_27F544E38);
      v104 = 0;
      v105 = 0xE000000000000000;
      sub_252E379F4();

      v104 = 0xD000000000000023;
      v105 = v95;
      v102 = [v1 clientContext];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5445C8, &qword_252E54DB0);
      v38 = sub_252E36F94();
      MEMORY[0x2530AD570](v38);

      sub_252CC4050(v104, v105, 0xD000000000000078, v98 | 0x8000000000000000, 0xD000000000000012, v97 | 0x8000000000000000, 40);
    }

    v86 = v26;
    v93 = v25;
    v31 = v30;
    v32 = [v30 metricIdentifier];

    sub_252E36F34();
    v33 = v92;
    sub_252E32E14();

    if ((*v91)(v33, 1, v94) == 1)
    {

      sub_25293847C(v33, &unk_27F541F20, &qword_252E3C180);
      goto LABEL_19;
    }

    (*v83)(v84, v33, v94);
    v39 = objc_allocWithZone(MEMORY[0x277D5AC78]);
    v40 = sub_252E32E44();
    v41 = [v39 initWithNSUUID_];

    [v99 setHomeAutomationRequestId_];
    if (v27 >> 62)
    {
      break;
    }

    v42 = v93;
    if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_24;
    }

LABEL_35:
    v45 = 0;
LABEL_36:
    [v99 setHomeAutomationRequestType_];
    v48 = v85;
    v49 = sub_252C46EA0(v27);
    if (v49 >> 62)
    {
      v50 = sub_252E378C4();
    }

    else
    {
      v50 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    sub_252C77358(v50);
    v51 = sub_252C46EA0(v27);
    v85 = v48;

    if (v51 >> 62)
    {
      v52 = sub_252E378C4();
      if (v52)
      {
        goto LABEL_40;
      }
    }

    else
    {
      v52 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v52)
      {
LABEL_40:
        v53 = 0;
        v81 = v51 & 0xC000000000000001;
        v80 = v51 & 0xFFFFFFFFFFFFFF8;
        v54 = MEMORY[0x277D84F90];
        v79 = v1;
        v78 = v51;
        v77 = v52;
        while (1)
        {
          if (v81)
          {
            v55 = MEMORY[0x2530ADF00](v53, v51);
            v56 = v53 + 1;
            if (__OFADD__(v53, 1))
            {
              goto LABEL_71;
            }
          }

          else
          {
            if (v53 >= *(v80 + 16))
            {
              goto LABEL_72;
            }

            v55 = *(v51 + 8 * v53 + 32);

            v56 = v53 + 1;
            if (__OFADD__(v53, 1))
            {
              goto LABEL_71;
            }
          }

          i = v56;
          v57 = [*(v55 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) serviceType];
          v58 = sub_252E36F34();
          v60 = v59;

          if (qword_27F53F8B8 != -1)
          {
            swift_once();
          }

          v61 = off_27F546230;
          if (*(off_27F546230 + 2) && (v62 = sub_252A44A10(v58, v60), (v63 & 1) != 0))
          {
            v64 = *(v61[7] + 8 * v62);
          }

          else
          {
            v64 = 0;
          }

          v65 = HomeDeviceType.description.getter(v64);
          v67 = v66;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v54 = sub_2529F7A80(0, *(v54 + 2) + 1, 1, v54);
          }

          v69 = *(v54 + 2);
          v68 = *(v54 + 3);
          if (v69 >= v68 >> 1)
          {
            v54 = sub_2529F7A80((v68 > 1), v69 + 1, 1, v54);
          }

          *(v54 + 2) = v69 + 1;
          v70 = &v54[16 * v69];
          *(v70 + 4) = v65;
          *(v70 + 5) = v67;
          ++v53;
          v1 = v79;
          v42 = v93;
          v51 = v78;
          if (i == v77)
          {
            goto LABEL_62;
          }
        }
      }
    }

    v54 = MEMORY[0x277D84F90];
LABEL_62:

    v71 = sub_252AD4414(v54);

    sub_252C76E8C(v71);

    if (v86)
    {
      v72 = 0;
      v73 = 0;
    }

    else
    {
      v72 = HomeAttributeType.description.getter(v42);
      v73 = v74;
    }

    v75 = v99;
    sub_252C771A8(v72, v73);

    v76 = v75;
    MEMORY[0x2530AD700]();
    if (*((v106 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v106 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_252E372A4();
    }

    sub_252E372D4();

    (*v82)(v84, v94);
  }

  v47 = sub_252E378C4();
  v42 = v93;
  if (!v47)
  {
    goto LABEL_35;
  }

LABEL_24:
  if ((v27 & 0xC000000000000001) != 0)
  {
    v43 = MEMORY[0x2530ADF00](0, v27);
LABEL_27:
    v44 = v43;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {

      v45 = 8;
    }

    else
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {

        v45 = 7;
      }

      else
      {
        objc_opt_self();
        v46 = swift_dynamicCastObjCClass();

        if (v46)
        {
          v45 = 9;
        }

        else
        {
          v45 = 0;
        }
      }
    }

    goto LABEL_36;
  }

  if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v43 = *(v27 + 32);
    goto LABEL_27;
  }

LABEL_73:
  __break(1u);
}

void sub_252C47D2C(unint64_t *a1)
{
  v2 = *a1;
  v91 = *a1 >> 62;
  if (v91)
  {
    goto LABEL_148;
  }

  if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_149:
    if (qword_27F53F530 != -1)
    {
      swift_once();
    }

    v88 = sub_252E36AD4();
    __swift_project_value_buffer(v88, qword_27F544E38);
    sub_252CC4050(0xD000000000000024, 0x8000000252E8C770, 0xD000000000000078, 0x8000000252E8C6D0, 0xD000000000000018, 0x8000000252E8C7A0, 106);
    return;
  }

LABEL_3:
  v3 = [v1 entityResponses];
  if (v3)
  {
    v4 = v3;
    type metadata accessor for HomeEntityResponse();
    v1 = sub_252E37264();
  }

  else
  {
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v5 = sub_252E36AD4();
    __swift_project_value_buffer(v5, qword_27F544D60);
    v100 = 0;
    v101 = 0xE000000000000000;
    sub_252E379F4();

    v100 = 0xD00000000000002FLL;
    v101 = 0x8000000252E69700;
    v6 = v1;
    v7 = [v6 description];
    v8 = sub_252E36F34();
    v10 = v9;

    MEMORY[0x2530AD570](v8, v10);

    sub_252CC3D90(v100, v101, 0xD000000000000098, 0x8000000252E69730);

    v1 = MEMORY[0x277D84F90];
  }

  if (v1 >> 62)
  {
    v11 = sub_252E378C4();
  }

  else
  {
    v11 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v99 = v2;
  v12 = MEMORY[0x277D84F90];
  if (v11)
  {
    v13 = 0;
    v2 = v1 & 0xC000000000000001;
    do
    {
      v14 = v13;
      while (1)
      {
        if (v2)
        {
          v15 = MEMORY[0x2530ADF00](v14, v1);
        }

        else
        {
          if (v14 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_145;
          }

          v15 = *(v1 + 8 * v14 + 32);
        }

        v16 = v15;
        v13 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          goto LABEL_144;
        }

        v17 = [v15 taskResponses];
        if (v17)
        {
          break;
        }

        ++v14;
        if (v13 == v11)
        {
          goto LABEL_26;
        }
      }

      v18 = v17;
      type metadata accessor for HomeUserTaskResponse();
      v19 = sub_252E37264();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_2529F7BB4(0, v12[2] + 1, 1, v12);
      }

      v21 = v12[2];
      v20 = v12[3];
      if (v21 >= v20 >> 1)
      {
        v12 = sub_2529F7BB4((v20 > 1), v21 + 1, 1, v12);
      }

      v12[2] = v21 + 1;
      v12[v21 + 4] = v19;
    }

    while (v13 != v11);
  }

LABEL_26:

  v22 = sub_252C46BD4(v12);

  v23 = sub_252C4ABC4(v22);

  v24 = 0;
  v25 = v23 + 8;
  v92 = v23;
  v26 = 1 << *(v23 + 32);
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  else
  {
    v27 = -1;
  }

  v28 = v27 & v23[8];
  v29 = (v26 + 63) >> 6;
  v1 = v99;
  v89 = v29;
  v90 = v25;
LABEL_32:
  if (v28)
  {
    goto LABEL_37;
  }

  while (1)
  {
    v30 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      goto LABEL_141;
    }

    if (v30 >= v29)
    {
      break;
    }

    v28 = v25[v30];
    ++v24;
    if (v28)
    {
      v24 = v30;
LABEL_37:
      v31 = __clz(__rbit64(v28)) | (v24 << 6);
      v32 = v92[6] + 16 * v31;
      v96 = *v32;
      v33 = *(v32 + 8);
      v34 = *(v92[7] + 8 * v31);
      if (v91)
      {
        v35 = sub_252E378C4();
      }

      else
      {
        v35 = *((v99 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v28 &= v28 - 1;
      v93 = v34;

      if (v35)
      {
        v2 = 0;
        do
        {
          if ((v99 & 0xC000000000000001) != 0)
          {
            v38 = MEMORY[0x2530ADF00](v2, v1);
          }

          else
          {
            if (v2 >= *((v99 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_140;
            }

            v38 = *(v1 + 8 * v2 + 32);
          }

          v39 = v38;
          v1 = v2 + 1;
          if (__OFADD__(v2, 1))
          {
            __break(1u);
LABEL_140:
            __break(1u);
LABEL_141:
            __break(1u);
            goto LABEL_142;
          }

          v40 = [v38 homeAutomationRequestMetadata];
          if (v40 && (v41 = v40, v42 = [v40 targetAttribute], v41, v42))
          {
            v43 = sub_252E36F34();
            v45 = v44;

            if (v33)
            {
              goto LABEL_58;
            }
          }

          else
          {
            v43 = 0;
            v45 = 0;
            if (v33)
            {
LABEL_58:
              if (!v45)
              {
                goto LABEL_63;
              }

LABEL_59:

              goto LABEL_44;
            }
          }

          v46 = HomeAttributeType.description.getter(v96);
          if (v45)
          {
            if (!v47)
            {
              goto LABEL_59;
            }

            if (v43 == v46 && v45 == v47)
            {

LABEL_63:
              v102[0] = MEMORY[0x277D84F90];
              v48 = v93;
              if (!(v93 >> 62))
              {
                v49 = *((v93 & 0xFFFFFFFFFFFFFF8) + 0x10);
                v97 = v49;
                if (!v49)
                {
                  goto LABEL_85;
                }

LABEL_65:
                v2 = 0;
                while (1)
                {
                  if ((v93 & 0xC000000000000001) != 0)
                  {
                    v50 = MEMORY[0x2530ADF00](v2, v93);
                  }

                  else
                  {
                    if (v2 >= *((v93 & 0xFFFFFFFFFFFFFF8) + 0x10))
                    {
                      goto LABEL_143;
                    }

                    v50 = *(v93 + 32 + 8 * v2);
                  }

                  v51 = v50;
                  v52 = __OFADD__(v2++, 1);
                  if (v52)
                  {
                    break;
                  }

                  if (qword_27F53F728 != -1)
                  {
                    swift_once();
                  }

                  v53 = qword_27F575C38;
                  v54 = [v51 taskOutcome];
                  if (*(v53 + 16) && (v55 = v54, sub_252E37EC4(), MEMORY[0x2530AE390](v55), v1 = &v100, v56 = sub_252E37F14(), v57 = -1 << *(v53 + 32), v58 = v56 & ~v57, ((*(v53 + 56 + ((v58 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v58) & 1) != 0))
                  {
                    v59 = ~v57;
                    while (*(*(v53 + 48) + 8 * v58) != v55)
                    {
                      v58 = (v58 + 1) & v59;
                      if (((*(v53 + 56 + ((v58 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v58) & 1) == 0)
                      {
                        goto LABEL_66;
                      }
                    }

                    v1 = v102;
                    sub_252E37A94();
                    sub_252E37AC4();
                    sub_252E37AD4();
                    sub_252E37AA4();
                  }

                  else
                  {
LABEL_66:
                  }

                  v49 = v97;
                  if (v2 == v97)
                  {
                    v60 = v102[0];
                    v48 = v93;
                    if ((v102[0] & 0x8000000000000000) == 0)
                    {
                      goto LABEL_86;
                    }

                    goto LABEL_131;
                  }
                }

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
                if (!sub_252E378C4())
                {
                  goto LABEL_149;
                }

                goto LABEL_3;
              }

              v49 = sub_252E378C4();
              v97 = v49;
              if (v49)
              {
                goto LABEL_65;
              }

LABEL_85:
              v60 = MEMORY[0x277D84F90];
              if ((MEMORY[0x277D84F90] & 0x8000000000000000) == 0)
              {
LABEL_86:
                if ((v60 & 0x4000000000000000) == 0)
                {
                  v61 = *(v60 + 16);
                  goto LABEL_88;
                }
              }

LABEL_131:
              v61 = sub_252E378C4();
LABEL_88:

              v1 = v39;
              sub_252C77A20(v61);
              if (v93 >> 62)
              {
                v62 = sub_252E378C4();
              }

              else
              {
                v62 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
              }

              if (v62 == v61)
              {
                [v39 setHomeAutomationRequestOutcome_];
              }

              else
              {
                if (v61)
                {
                  v63 = 3;
                }

                else
                {
                  v63 = 2;
                }

                [v39 setHomeAutomationRequestOutcome_];
              }

              if ([v39 homeAutomationRequestOutcome] == 1)
              {

LABEL_135:
                v1 = v99;
                goto LABEL_31;
              }

              v102[0] = MEMORY[0x277D84F90];
              if (v49)
              {
                v2 = 0;
                v94 = v48 & 0xC000000000000001;
                v64 = v48 & 0xFFFFFFFFFFFFFF8;
                v65 = v48 + 32;
                while (1)
                {
                  if (v94)
                  {
                    v66 = MEMORY[0x2530ADF00](v2, v93);
                  }

                  else
                  {
                    if (v2 >= *(v64 + 16))
                    {
                      goto LABEL_147;
                    }

                    v66 = *(v65 + 8 * v2);
                  }

                  v67 = v66;
                  v52 = __OFADD__(v2++, 1);
                  if (v52)
                  {
                    goto LABEL_146;
                  }

                  if (qword_27F53F730 != -1)
                  {
                    swift_once();
                  }

                  v68 = qword_27F575C40;
                  v69 = [v67 taskOutcome];
                  if (*(v68 + 16) && (v70 = v69, sub_252E37EC4(), MEMORY[0x2530AE390](v70), v1 = &v100, v71 = sub_252E37F14(), v72 = -1 << *(v68 + 32), v73 = v71 & ~v72, ((*(v68 + 56 + ((v73 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v73) & 1) != 0))
                  {
                    v74 = ~v72;
                    while (*(*(v68 + 48) + 8 * v73) != v70)
                    {
                      v73 = (v73 + 1) & v74;
                      if (((*(v68 + 56 + ((v73 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v73) & 1) == 0)
                      {
                        goto LABEL_101;
                      }
                    }

                    v1 = v102;
                    sub_252E37A94();
                    sub_252E37AC4();
                    sub_252E37AD4();
                    sub_252E37AA4();
                  }

                  else
                  {
LABEL_101:
                  }

                  if (v2 == v97)
                  {
                    v75 = v102[0];
                    goto LABEL_119;
                  }
                }
              }

              v75 = MEMORY[0x277D84F90];
LABEL_119:

              if (v75 < 0 || (v75 & 0x4000000000000000) != 0)
              {
                v76 = sub_252E378C4();
                if (!v76)
                {
                  goto LABEL_133;
                }

LABEL_122:
                v100 = MEMORY[0x277D84F90];
                sub_2529AA3A0(0, v76 & ~(v76 >> 63), 0);
                if (v76 < 0)
                {
                  __break(1u);
                  return;
                }

                v2 = 0;
                v77 = v100;
                v78 = v75;
                v95 = v75 & 0xC000000000000001;
                v98 = v75;
                do
                {
                  if (v95)
                  {
                    v79 = MEMORY[0x2530ADF00](v2, v78);
                  }

                  else
                  {
                    v79 = *(v78 + 8 * v2 + 32);
                  }

                  v80 = v79;
                  v81 = sub_252B9ACF0([v79 taskOutcome]);
                  v83 = v82;

                  v100 = v77;
                  v85 = *(v77 + 16);
                  v84 = *(v77 + 24);
                  if (v85 >= v84 >> 1)
                  {
                    sub_2529AA3A0((v84 > 1), v85 + 1, 1);
                    v77 = v100;
                  }

                  ++v2;
                  *(v77 + 16) = v85 + 1;
                  v86 = v77 + 16 * v85;
                  *(v86 + 32) = v81;
                  *(v86 + 40) = v83;
                  v78 = v98;
                }

                while (v76 != v2);
              }

              else
              {
                v76 = *(v75 + 16);
                if (v76)
                {
                  goto LABEL_122;
                }

LABEL_133:

                v77 = MEMORY[0x277D84F90];
              }

              sub_252AD4414(v77);

              v87 = sub_252E37254();

              [v39 setHomeAutomationRequestErrorReasons_];

              goto LABEL_135;
            }

            v36 = sub_252E37DB4();

            if (v36)
            {
              goto LABEL_63;
            }
          }

          else
          {
            if (!v47)
            {
              goto LABEL_63;
            }
          }

LABEL_44:
          ++v2;
          v37 = v1 == v35;
          v1 = v99;
        }

        while (!v37);
      }

LABEL_31:
      v29 = v89;
      v25 = v90;
      goto LABEL_32;
    }
  }
}

id sub_252C488D8(void **a1)
{
  v2 = v1;
  v145 = sub_252E32E84();
  v153 = *(v145 - 8);
  MEMORY[0x28223BE20](v145);
  v144 = &v132 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *a1;
  v133 = 0;
  sub_25293F638(0, &qword_27F5418B8, 0x277D57580);
  v6 = sub_252E37254();
  v146 = v5;
  [v5 setHomeAutomationRequests_];

  if (qword_27F53F530 != -1)
  {
    goto LABEL_41;
  }

  while (1)
  {
    v154 = sub_252E36AD4();
    v7 = __swift_project_value_buffer(v154, qword_27F544E38);
    *&v157 = 0;
    *(&v157 + 1) = 0xE000000000000000;
    sub_252E379F4();
    v166 = v157;
    MEMORY[0x2530AD570](0xD000000000000017, 0x8000000252E8C6B0);
    v8 = *(v2 + 112);
    v163 = *(v2 + 96);
    v164 = v8;
    v165 = *(v2 + 128);
    v9 = *(v2 + 48);
    v159 = *(v2 + 32);
    v160 = v9;
    v10 = *(v2 + 80);
    v161 = *(v2 + 64);
    v162 = v10;
    v11 = *(v2 + 16);
    v157 = *v2;
    v158 = v11;
    sub_252E37AE4();
    v139 = "Enriching command with ";
    v140 = v7;
    sub_252CC3D90(v166, *(&v166 + 1), 0xD000000000000078, 0x8000000252E8C6D0);

    v12 = sub_252B4F670();
    v13 = [v12 entityResponses];
    v155 = v2;
    if (v13)
    {
      v14 = v13;
      type metadata accessor for HomeEntityResponse();
      v15 = sub_252E37264();

      if (!(v15 >> 62))
      {
        goto LABEL_4;
      }
    }

    else
    {
      if (qword_27F53F4E8 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v154, qword_27F544D60);
      *&v157 = 0;
      *(&v157 + 1) = 0xE000000000000000;
      sub_252E379F4();

      *&v157 = 0xD00000000000002FLL;
      *(&v157 + 1) = 0x8000000252E69700;
      v35 = v12;
      v36 = [v35 description];
      v37 = sub_252E36F34();
      v39 = v38;

      MEMORY[0x2530AD570](v37, v39);

      sub_252CC3D90(v157, *(&v157 + 1), 0xD000000000000098, 0x8000000252E69730);

      v15 = MEMORY[0x277D84F90];
      if (!(MEMORY[0x277D84F90] >> 62))
      {
LABEL_4:
        v149 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_5;
      }
    }

    v149 = sub_252E378C4();
LABEL_5:

    v16 = sub_252B4F670();
    v17 = sub_252C2C640();

    if (!(v17 >> 62))
    {
      v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v18)
      {
        break;
      }

      goto LABEL_7;
    }

    v18 = sub_252E378C4();
    if (!v18)
    {
      break;
    }

LABEL_7:
    v2 = 0;
    v156 = v17 & 0xC000000000000001;
    v19 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v156)
      {
        v20 = MEMORY[0x2530ADF00](v2, v17);
      }

      else
      {
        if (v2 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_36;
        }

        v20 = *(v17 + 8 * v2 + 32);
      }

      v21 = v20;
      v22 = (v2 + 1);
      if (__OFADD__(v2, 1))
      {
        break;
      }

      v23 = [v20 deviceTypes];
      if (v23)
      {
        v24 = v23;
        v25 = sub_252E37264();

        v21 = v24;
      }

      else
      {
        v25 = MEMORY[0x277D84F90];
      }

      v26 = *(v25 + 16);
      v27 = *(v19 + 2);
      v28 = v27 + v26;
      if (__OFADD__(v27, v26))
      {
        goto LABEL_37;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v28 <= *(v19 + 3) >> 1)
      {
        if (*(v25 + 16))
        {
          goto LABEL_26;
        }
      }

      else
      {
        if (v27 <= v28)
        {
          v30 = v27 + v26;
        }

        else
        {
          v30 = v27;
        }

        v19 = sub_2529F8104(isUniquelyReferenced_nonNull_native, v30, 1, v19);
        if (*(v25 + 16))
        {
LABEL_26:
          v31 = *(v19 + 2);
          if ((*(v19 + 3) >> 1) - v31 < v26)
          {
            goto LABEL_39;
          }

          memcpy(&v19[8 * v31 + 32], (v25 + 32), 8 * v26);

          if (v26)
          {
            v32 = *(v19 + 2);
            v33 = __OFADD__(v32, v26);
            v34 = v32 + v26;
            if (v33)
            {
              goto LABEL_40;
            }

            *(v19 + 2) = v34;
          }

          goto LABEL_9;
        }
      }

      if (v26)
      {
        goto LABEL_38;
      }

LABEL_9:
      ++v2;
      if (v22 == v18)
      {
        goto LABEL_44;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    swift_once();
  }

  v19 = MEMORY[0x277D84F90];
LABEL_44:

  v40 = *(v19 + 2);
  v41 = MEMORY[0x277D84F90];
  if (v40)
  {
    v42 = (v19 + 32);
    v151 = MEMORY[0x277D84F90];
    do
    {
      v44 = *v42++;
      v45 = sub_252E25FC4(v44);
      if ((v46 & 1) == 0)
      {
        v47 = v45;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v151 = sub_2529F7B8C(0, *(v151 + 2) + 1, 1, v151);
        }

        v49 = *(v151 + 2);
        v48 = *(v151 + 3);
        if (v49 >= v48 >> 1)
        {
          v151 = sub_2529F7B8C((v48 > 1), v49 + 1, 1, v151);
        }

        v43 = v151;
        *(v151 + 2) = v49 + 1;
        *&v43[8 * v49 + 32] = v47;
      }

      --v40;
    }

    while (v40);
  }

  else
  {
    v151 = MEMORY[0x277D84F90];
  }

  v50 = sub_252B4F670();
  v51 = [v50 entityResponses];
  if (v51)
  {
    v52 = v51;
    type metadata accessor for HomeEntityResponse();
    v53 = sub_252E37264();

    v54 = v133;
    v55 = sub_252B1F554(v53);
    v133 = v54;
  }

  else
  {
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v154, qword_27F544D60);
    *&v157 = 0;
    *(&v157 + 1) = 0xE000000000000000;
    sub_252E379F4();

    *&v157 = 0xD00000000000002FLL;
    *(&v157 + 1) = 0x8000000252E69700;
    v56 = v50;
    v57 = [v56 description];
    v58 = sub_252E36F34();
    v60 = v59;

    MEMORY[0x2530AD570](v58, v60);

    sub_252CC3D90(v157, *(&v157 + 1), 0xD000000000000098, 0x8000000252E69730);

    v55 = MEMORY[0x277D84F90];
  }

  *&v157 = v41;
  v61 = v55 & 0xFFFFFFFFFFFFFF8;
  if (v55 >> 62)
  {
LABEL_163:
    v62 = sub_252E378C4();
  }

  else
  {
    v62 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v63 = 0;
  v156 = v55 & 0xC000000000000001;
  v64 = MEMORY[0x277D84F90];
  while (v62 != v63)
  {
    if (v156)
    {
      v65 = MEMORY[0x2530ADF00](v63, v55);
    }

    else
    {
      if (v63 >= *(v61 + 16))
      {
        goto LABEL_160;
      }

      v65 = *(v55 + 8 * v63 + 32);
    }

    v66 = v65;
    v67 = v63 + 1;
    if (__OFADD__(v63, 1))
    {
LABEL_159:
      __break(1u);
LABEL_160:
      __break(1u);
LABEL_161:
      __break(1u);
LABEL_162:
      __break(1u);
      goto LABEL_163;
    }

    v68 = [v65 userTask];

    ++v63;
    if (v68)
    {
      MEMORY[0x2530AD700]();
      if (*((v157 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v157 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_252E372A4();
      }

      sub_252E372D4();
      v64 = v157;
      v63 = v67;
    }
  }

  v69 = sub_252DF9B64(v64);

  if (v69 >> 62)
  {
    v70 = sub_252E378C4();
    if (!v70)
    {
      goto LABEL_165;
    }

LABEL_74:
    v71 = 0;
    v147 = v69 & 0xC000000000000001;
    v137 = v69 & 0xFFFFFFFFFFFFFF8;
    v136 = v69 + 32;
    v143 = (v153 + 8);
    v138 = v151 + 32;
    v135 = "ry home\n    originalHomes: ";
    v134 = "tchRequest+Metrics.swift";
    v153 = v55;
    v152 = v61;
    v154 = v62;
    v142 = v69;
    v141 = v70;
    while (1)
    {
      if (v147)
      {
        v75 = MEMORY[0x2530ADF00](v71, v69);
      }

      else
      {
        if (v71 >= *(v137 + 16))
        {
          goto LABEL_162;
        }

        v75 = *(v136 + 8 * v71);
      }

      v74 = v75;
      v33 = __OFADD__(v71++, 1);
      if (v33)
      {
        goto LABEL_161;
      }

      v150 = [objc_allocWithZone(MEMORY[0x277D57580]) init];
      if (!v150)
      {
        sub_252CC4050(0xD000000000000025, v135 | 0x8000000000000000, 0xD000000000000078, v139 | 0x8000000000000000, 0xD000000000000017, v134 | 0x8000000000000000, 153);
        goto LABEL_76;
      }

      v155 = v74;
      v148 = v71;
      v76 = MEMORY[0x277D84F90];
      *&v157 = MEMORY[0x277D84F90];
      if (v62)
      {
        v77 = 0;
        while (1)
        {
          if (v156)
          {
            v78 = MEMORY[0x2530ADF00](v77, v55);
          }

          else
          {
            if (v77 >= *(v61 + 16))
            {
              goto LABEL_154;
            }

            v78 = *(v55 + 8 * v77 + 32);
          }

          v79 = v78;
          v80 = v77 + 1;
          if (__OFADD__(v77, 1))
          {
            break;
          }

          v81 = [v78 userTask];
          if (v81 && (v82 = v81, type metadata accessor for HomeUserTask(), v83 = v155, v84 = sub_252E37694(), v83, v82, (v84 & 1) != 0) && [v79 taskOutcome] == 1)
          {
            sub_252E37A94();
            sub_252E37AC4();
            sub_252E37AD4();
            sub_252E37AA4();
          }

          else
          {
          }

          ++v77;
          if (v80 == v62)
          {
            v76 = v157;
            goto LABEL_97;
          }
        }

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
        goto LABEL_159;
      }

LABEL_97:
      if (v76 < 0 || (v76 & 0x4000000000000000) != 0)
      {
        v85 = sub_252E378C4();
      }

      else
      {
        v85 = *(v76 + 16);
      }

      v86 = v144;
      sub_252E32E74();
      v87 = objc_allocWithZone(MEMORY[0x277D5AC78]);
      v88 = sub_252E32E44();
      v89 = [v87 initWithNSUUID_];

      (*v143)(v86, v145);
      v90 = v150;
      [v150 setHomeAutomationRequestId_];

      if ([v155 taskType] == 4)
      {
        v91 = 7;
      }

      else
      {
        v91 = 8;
      }

      [v90 setHomeAutomationRequestType_];
      sub_252C77D64(1);
      sub_252C77358(v149);
      v92 = *(v151 + 2);
      if (v92)
      {
        v93 = v138;
        v94 = MEMORY[0x277D84F90];
        do
        {
          v95 = *v93++;
          v96 = HomeDeviceType.description.getter(v95);
          v98 = v97;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v94 = sub_2529F7A80(0, *(v94 + 2) + 1, 1, v94);
          }

          v100 = *(v94 + 2);
          v99 = *(v94 + 3);
          if (v100 >= v99 >> 1)
          {
            v94 = sub_2529F7A80((v99 > 1), v100 + 1, 1, v94);
          }

          *(v94 + 2) = v100 + 1;
          v101 = &v94[16 * v100];
          *(v101 + 4) = v96;
          *(v101 + 5) = v98;
          --v92;
        }

        while (v92);
      }

      else
      {
        v94 = MEMORY[0x277D84F90];
      }

      v102 = sub_252AD4414(v94);

      v103 = v150;
      sub_252C76E8C(v102);

      v104 = HomeAttributeType.description.getter([v155 attribute]);
      v106 = sub_252AD41C0(v104, v105);
      v108 = v107;

      sub_252C771A8(v106, v108);

      sub_252C77A20(v85);
      if (v149 == v85)
      {
        [v103 setHomeAutomationRequestOutcome_];
        v62 = v154;
      }

      else
      {
        v62 = v154;
        if (v85)
        {
          v109 = 3;
        }

        else
        {
          v109 = 2;
        }

        [v150 setHomeAutomationRequestOutcome_];
      }

      v110 = MEMORY[0x277D84F90];
      *&v157 = MEMORY[0x277D84F90];
      if (v62)
      {
        v111 = 0;
        while (1)
        {
          if (v156)
          {
            v112 = MEMORY[0x2530ADF00](v111, v55);
          }

          else
          {
            if (v111 >= *(v61 + 16))
            {
              goto LABEL_156;
            }

            v112 = *(v55 + 8 * v111 + 32);
          }

          v113 = v112;
          v114 = v111 + 1;
          if (__OFADD__(v111, 1))
          {
            goto LABEL_155;
          }

          v115 = [v112 userTask];
          if (v115 && (v116 = v115, type metadata accessor for HomeUserTask(), v117 = v155, v118 = sub_252E37694(), v117, v116, (v118 & 1) != 0) && [v113 taskOutcome] != 1)
          {
            sub_252E37A94();
            sub_252E37AC4();
            sub_252E37AD4();
            sub_252E37AA4();
          }

          else
          {
          }

          ++v111;
          if (v114 == v62)
          {
            v119 = v157;
            v110 = MEMORY[0x277D84F90];
            if ((v157 & 0x8000000000000000) == 0)
            {
              goto LABEL_135;
            }

            goto LABEL_151;
          }
        }
      }

      v119 = MEMORY[0x277D84F90];
      if ((MEMORY[0x277D84F90] & 0x8000000000000000) != 0)
      {
        break;
      }

LABEL_135:

      v120 = *(v119 + 16);
      if (v120)
      {
        goto LABEL_137;
      }

LABEL_75:

      sub_252AD4414(v110);

      v72 = sub_252E37254();

      v73 = v150;
      [v150 setHomeAutomationRequestErrorReasons_];

      v74 = v73;
      sub_252C77EC4(v73);

      v69 = v142;
      v70 = v141;
      v71 = v148;
LABEL_76:

      if (v71 == v70)
      {
        goto LABEL_165;
      }
    }

LABEL_151:
    v120 = sub_252E378C4();
    if (v120)
    {
LABEL_137:
      v121 = 0;
      while (1)
      {
        if ((v119 & 0xC000000000000001) != 0)
        {
          v122 = MEMORY[0x2530ADF00](v121, v119);
        }

        else
        {
          if (v121 >= *(v119 + 16))
          {
            goto LABEL_158;
          }

          v122 = *(v119 + 8 * v121 + 32);
        }

        v123 = v122;
        v55 = v121 + 1;
        if (__OFADD__(v121, 1))
        {
          goto LABEL_157;
        }

        v124 = sub_252B9ACF0([v122 taskOutcome]);
        v126 = v125;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v110 = sub_2529F7A80(0, *(v110 + 2) + 1, 1, v110);
        }

        v128 = *(v110 + 2);
        v127 = *(v110 + 3);
        if (v128 >= v127 >> 1)
        {
          v110 = sub_2529F7A80((v127 > 1), v128 + 1, 1, v110);
        }

        *(v110 + 2) = v128 + 1;
        v129 = &v110[16 * v128];
        *(v129 + 4) = v124;
        *(v129 + 5) = v126;
        ++v121;
        v130 = v55 == v120;
        v55 = v153;
        v61 = v152;
        v62 = v154;
        if (v130)
        {
          goto LABEL_75;
        }
      }
    }

    goto LABEL_75;
  }

  v70 = *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v70)
  {
    goto LABEL_74;
  }

LABEL_165:

  return sub_252DB559C();
}

uint64_t sub_252C49A20()
{
  v1 = v0;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5445D0, &qword_252E54DB8);
  v2 = MEMORY[0x28223BE20](v108);
  v105 = &v91 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v104 = &v91 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541F20, &qword_252E3C180);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = (&v91 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v91 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v91 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = (&v91 - v16);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v91 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v91 - v21;
  v23 = sub_252E32E84();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v91 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v110 = v1;
  v27 = swift_dynamicCastObjCClass();
  if (v27)
  {
    v28 = v27;
    type metadata accessor for HomeStore(0);
    v29 = v110;
    v30 = static HomeStore.shared.getter(v29);
    v31 = [v28 actionSet];
    v32 = [v31 uniqueIdentifier];

    sub_252E32E64();
    v33 = sub_252E32E24();
    v35 = v34;
    (*(v24 + 8))(v26, v23);
    v36 = sub_2529F53FC(v33, v35);
    v38 = v37;

    if (v38)
    {
      sub_252956C8C(v36, 1);
    }

    else
    {
LABEL_25:
      if (v36)
      {

        v66 = sub_252B2F470();
        sub_252956C8C(v36, 0);
        sub_252956C8C(v36, 0);

        return v66;
      }
    }

    return MEMORY[0x277D84F90];
  }

  v94 = v24;
  v95 = v26;
  v106 = v20;
  v107 = v22;
  v101 = v17;
  v39 = v14;
  v109 = v11;
  objc_opt_self();
  v102 = swift_dynamicCastObjCClass();
  if (v102)
  {
    type metadata accessor for HomeStore(0);
    v40 = v110;
    v36 = static HomeStore.shared.getter(v40);
    v29 = sub_2529D9D50();
    v41 = sub_2529D70E4(v29);

    v103 = v41;
    v105 = v23;
    v91 = v40;
    if (v41 >> 62)
    {
      goto LABEL_57;
    }

    v42 = *((v103 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v43 = v107;
    if (v42)
    {
      while (1)
      {
        v44 = 0;
        v99 = v103 & 0xFFFFFFFFFFFFFF8;
        v100 = v103 & 0xC000000000000001;
        v45 = (v94 + 2);
        v110 = v94 + 7;
        v46 = (v94 + 6);
        v92 = (v94 + 4);
        ++v94;
        v96 = v42;
        v97 = v46;
        v98 = v45;
        while (v100)
        {
          v49 = MEMORY[0x2530ADF00](v44, v103);
          v50 = v44 + 1;
          if (__OFADD__(v44, 1))
          {
LABEL_24:
            __break(1u);
            goto LABEL_25;
          }

LABEL_14:
          v51 = *v98;
          v109 = v49;
          v52 = v105;
          v51(v43, v49 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v105);
          v53 = *v110;
          v54 = 1;
          (*v110)(v43, 0, 1, v52);
          v55 = [v102 characteristic];
          v56 = [v55 service];

          if (v56)
          {
            v57 = [v56 uniqueIdentifier];

            v58 = v106;
            sub_252E32E64();

            v54 = 0;
            v59 = v108;
            v60 = v101;
          }

          else
          {
            v59 = v108;
            v60 = v101;
            v58 = v106;
          }

          v53(v58, v54, 1, v52);
          v61 = *(v59 + 48);
          v43 = v107;
          v29 = v104;
          sub_252C4AE84(v107, v104);
          sub_252C4AE84(v58, v29 + v61);
          v36 = *v97;
          if ((*v97)(v29, 1, v52) == 1)
          {
            sub_25293847C(v58, &unk_27F541F20, &qword_252E3C180);
            sub_25293847C(v43, &unk_27F541F20, &qword_252E3C180);
            v47 = (v36)(v29 + v61, 1, v52) == 1;
            v48 = v29;
            if (v47)
            {
              sub_25293847C(v29, &unk_27F541F20, &qword_252E3C180);
              v65 = v109;
LABEL_52:
              v88 = v65;

              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
              v89 = swift_allocObject();
              *(v89 + 16) = xmmword_252E3C130;
              *(v89 + 32) = v88;

              return v89;
            }

            goto LABEL_9;
          }

          sub_252C4AE84(v29, v60);
          if ((v36)(v29 + v61, 1, v52) == 1)
          {
            v36 = &qword_252E3C180;
            sub_25293847C(v58, &unk_27F541F20, &qword_252E3C180);
            sub_25293847C(v43, &unk_27F541F20, &qword_252E3C180);
            (*v94)(v60, v52);
            v48 = v29;
LABEL_9:
            sub_25293847C(v48, &qword_27F5445D0, &qword_252E54DB8);
            goto LABEL_10;
          }

          v62 = v95;
          (*v92)(v95, v29 + v61, v52);
          sub_252C4AEF4();
          LODWORD(v93) = sub_252E36EF4();
          v63 = *v94;
          v64 = v62;
          v43 = v107;
          (*v94)(v64, v52);
          v36 = &qword_252E3C180;
          sub_25293847C(v106, &unk_27F541F20, &qword_252E3C180);
          sub_25293847C(v43, &unk_27F541F20, &qword_252E3C180);
          v63(v60, v52);
          sub_25293847C(v29, &unk_27F541F20, &qword_252E3C180);
          v65 = v109;
          if (v93)
          {
            goto LABEL_52;
          }

LABEL_10:

          ++v44;
          if (v50 == v96)
          {
            goto LABEL_58;
          }
        }

        if (v44 < *(v99 + 16))
        {
          break;
        }

        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        v42 = sub_252E378C4();
        v43 = v107;
        if (!v42)
        {
          goto LABEL_58;
        }
      }

      v50 = v44 + 1;
      if (__OFADD__(v44, 1))
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

LABEL_58:

    goto LABEL_59;
  }

  objc_opt_self();
  v106 = swift_dynamicCastObjCClass();
  if (!v106)
  {
    return MEMORY[0x277D84F90];
  }

  v98 = v8;
  type metadata accessor for HomeStore(0);
  v93 = v110;
  v68 = static HomeStore.shared.getter(v93);
  v69 = sub_2529D9D50();
  v70 = sub_2529D70E4(v69);

  v107 = v70;
  if (v70 >> 62)
  {
    v36 = sub_252E378C4();
  }

  else
  {
    v36 = *((v107 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v29 = v105;
  v71 = v94;
  if (!v36)
  {
LABEL_50:

LABEL_59:

    return MEMORY[0x277D84F90];
  }

  v72 = 0;
  v103 = v107 & 0xFFFFFFFFFFFFFF8;
  v104 = v107 & 0xC000000000000001;
  v110 = v94 + 7;
  v94 += 4;
  v97 = (v71 + 1);
  v99 = v39;
  v100 = v36;
  v105 = v23;
  v101 = (v71 + 6);
  v102 = (v71 + 2);
  while (1)
  {
    if (v104)
    {
      v73 = MEMORY[0x2530ADF00](v72, v107);
      v74 = v72 + 1;
      if (__OFADD__(v72, 1))
      {
        goto LABEL_49;
      }
    }

    else
    {
      if (v72 >= *(v103 + 16))
      {
        goto LABEL_56;
      }

      v73 = *(v107 + 8 * v72 + 32);

      v74 = v72 + 1;
      if (__OFADD__(v72, 1))
      {
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }
    }

    (*v102)(v39, v73 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v23);
    v75 = *v110;
    v76 = 1;
    (*v110)(v39, 0, 1, v23);
    v77 = [v106 characteristic];
    v78 = [v77 service];

    if (v78)
    {
      v79 = [v78 uniqueIdentifier];

      v80 = v109;
      sub_252E32E64();

      v76 = 0;
    }

    else
    {
      v80 = v109;
    }

    v75(v80, v76, 1, v23);
    v81 = *(v108 + 48);
    sub_252C4AE84(v39, v29);
    sub_252C4AE84(v80, v29 + v81);
    v82 = v80;
    v83 = *v101;
    if ((*v101)(v29, 1, v23) == 1)
    {
      break;
    }

    v84 = v98;
    sub_252C4AE84(v29, v98);
    v85 = v83(v29 + v81, 1, v23);
    v86 = v95;
    if (v85 == 1)
    {
      sub_25293847C(v109, &unk_27F541F20, &qword_252E3C180);
      sub_25293847C(v39, &unk_27F541F20, &qword_252E3C180);
      (*v97)(v84, v23);
      goto LABEL_34;
    }

    (*v94)(v95, v29 + v81, v23);
    sub_252C4AEF4();
    LODWORD(v96) = sub_252E36EF4();
    v87 = *v97;
    (*v97)(v86, v23);
    sub_25293847C(v109, &unk_27F541F20, &qword_252E3C180);
    v23 = v105;
    sub_25293847C(v39, &unk_27F541F20, &qword_252E3C180);
    (v87)(v84, v23);
    sub_25293847C(v29, &unk_27F541F20, &qword_252E3C180);
    if (v96)
    {
      goto LABEL_54;
    }

LABEL_35:

    ++v72;
    v39 = v99;
    v36 = v100;
    if (v74 == v100)
    {
      goto LABEL_50;
    }
  }

  sub_25293847C(v82, &unk_27F541F20, &qword_252E3C180);
  v23 = v105;
  sub_25293847C(v39, &unk_27F541F20, &qword_252E3C180);
  if (v83(v29 + v81, 1, v23) != 1)
  {
LABEL_34:
    sub_25293847C(v29, &qword_27F5445D0, &qword_252E54DB8);
    goto LABEL_35;
  }

  sub_25293847C(v29, &unk_27F541F20, &qword_252E3C180);
LABEL_54:

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
  v90 = swift_allocObject();
  *(v90 + 16) = xmmword_252E3C130;
  *(v90 + 32) = v73;

  return v90;
}

void *sub_252C4A750(unint64_t a1)
{
  v40 = MEMORY[0x277D84F98];
  if (!(a1 >> 62))
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

    return MEMORY[0x277D84F98];
  }

LABEL_43:
  v2 = sub_252E378C4();
  if (!v2)
  {
    return MEMORY[0x277D84F98];
  }

LABEL_3:
  v3 = 0;
  v4 = MEMORY[0x277D84F98];
  v39 = v2;
  while (1)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x2530ADF00](v3, a1);
    }

    else
    {
      if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_40;
      }

      v7 = *(a1 + 8 * v3 + 32);
    }

    v8 = v7;
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v10 = 0;
      v11 = 1;
    }

    else
    {
      objc_opt_self();
      v12 = swift_dynamicCastObjCClass();
      if (v12 || (objc_opt_self(), (v12 = swift_dynamicCastObjCClass()) != 0))
      {
        v13 = v12;
        v14 = v8;
        v15 = [v13 characteristic];
        v16 = [v15 characteristicType];

        v17 = sub_252E36F34();
        v19 = v18;

        if (qword_27F53F8D0 != -1)
        {
          swift_once();
        }

        v20 = off_27F546248;
        if (*(off_27F546248 + 2))
        {
          v21 = sub_252A44A10(v17, v19);
          if (v22)
          {
            goto LABEL_28;
          }
        }

        if (qword_27F53F8E0 != -1)
        {
          swift_once();
        }

        v20 = off_27F546258;
        if (*(off_27F546258 + 2))
        {
          v21 = sub_252A44A10(v17, v19);
          if (v23)
          {
            goto LABEL_28;
          }
        }

        if (qword_27F53F8C8 != -1)
        {
          swift_once();
        }

        v20 = off_27F546240;
        if (*(off_27F546240 + 2) && (v21 = sub_252A44A10(v17, v19), (v24 & 1) != 0))
        {
LABEL_28:
          v11 = *(v20[7] + 8 * v21);
        }

        else
        {
          v11 = 0;
        }

        v10 = 0;
      }

      else
      {
        v11 = 0;
        v10 = 1;
      }
    }

    v25 = sub_252A4575C(v11, v10);
    v27 = v4[2];
    v28 = (v26 & 1) == 0;
    v29 = __OFADD__(v27, v28);
    v30 = v27 + v28;
    if (v29)
    {
      goto LABEL_41;
    }

    v31 = v26;
    if (v4[3] < v30)
    {
      sub_252E00974(v30, 1);
      v4 = v40;
      v25 = sub_252A4575C(v11, v10);
      if ((v31 & 1) != (v32 & 1))
      {
        break;
      }
    }

    if (v31)
    {
      v5 = (v4[7] + 8 * v25);
      MEMORY[0x2530AD700]();
      v6 = v39;
      if (*((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_252E372A4();
      }

      sub_252E372D4();
    }

    else
    {
      v33 = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_252E3C130;
      *(v34 + 32) = v8;
      v4[(v33 >> 6) + 8] |= 1 << v33;
      v35 = v4[6] + 16 * v33;
      *v35 = v11;
      *(v35 + 8) = v10;
      *(v4[7] + 8 * v33) = v34;
      v36 = v4[2];
      v29 = __OFADD__(v36, 1);
      v37 = v36 + 1;
      if (v29)
      {
        goto LABEL_42;
      }

      v4[2] = v37;
      v6 = v39;
    }

    ++v3;
    if (v9 == v6)
    {
      return v4;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540728, qword_252E4B870);
  result = sub_252E37E24();
  __break(1u);
  return result;
}

void *sub_252C4ABC4(unint64_t a1)
{
  v1 = a1;
  v30 = MEMORY[0x277D84F98];
  if (!(a1 >> 62))
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

    return MEMORY[0x277D84F98];
  }

LABEL_26:
  v2 = sub_252E378C4();
  if (!v2)
  {
    return MEMORY[0x277D84F98];
  }

LABEL_3:
  v3 = 0;
  v28 = v1 & 0xFFFFFFFFFFFFFF8;
  v29 = v1 & 0xC000000000000001;
  v4 = MEMORY[0x277D84F98];
  v26 = v2;
  v27 = v1;
  while (1)
  {
    if (v29)
    {
      v7 = MEMORY[0x2530ADF00](v3, v1);
    }

    else
    {
      if (v3 >= *(v28 + 16))
      {
        goto LABEL_23;
      }

      v7 = *(v1 + 8 * v3 + 32);
    }

    v8 = v7;
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v10 = [v7 userTask];
    v11 = v10;
    if (v10)
    {
      v12 = [v10 attribute];
    }

    else
    {
      v12 = 0;
    }

    v1 = v11 == 0;
    v13 = sub_252A4575C(v12, v11 == 0);
    v15 = v4[2];
    v16 = (v14 & 1) == 0;
    v17 = __OFADD__(v15, v16);
    v18 = v15 + v16;
    if (v17)
    {
      goto LABEL_24;
    }

    v19 = v14;
    if (v4[3] < v18)
    {
      sub_252E00988(v18, 1);
      v4 = v30;
      v13 = sub_252A4575C(v12, v11 == 0);
      if ((v19 & 1) != (v20 & 1))
      {
        break;
      }
    }

    if (v19)
    {
      v5 = (v4[7] + 8 * v13);
      MEMORY[0x2530AD700]();
      v6 = v26;
      v1 = v27;
      if (*((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_252E372A4();
      }

      sub_252E372D4();
    }

    else
    {
      v1 = v13;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_252E3C130;
      *(v21 + 32) = v8;
      v4[(v1 >> 6) + 8] |= 1 << v1;
      v22 = v4[6] + 16 * v1;
      *v22 = v12;
      *(v22 + 8) = v11 == 0;
      *(v4[7] + 8 * v1) = v21;
      v23 = v4[2];
      v17 = __OFADD__(v23, 1);
      v24 = v23 + 1;
      if (v17)
      {
        goto LABEL_25;
      }

      v4[2] = v24;
      v6 = v26;
      v1 = v27;
    }

    ++v3;
    if (v9 == v6)
    {
      return v4;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540728, qword_252E4B870);
  result = sub_252E37E24();
  __break(1u);
  return result;
}

uint64_t sub_252C4AE84(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541F20, &qword_252E3C180);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_252C4AEF4()
{
  result = qword_27F540D48;
  if (!qword_27F540D48)
  {
    v3 = sub_252E32E84();
    result = swift_getWitnessTable(MEMORY[0x277CC9610], v3, v0, v1);
    atomic_store(result, &qword_27F540D48);
  }

  return result;
}

uint64_t HomeSuggestionCATs.__allocating_init(templateDir:options:globals:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_252E363B4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540370, &qword_252E3C450);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v14 - v10;
  swift_allocObject();
  sub_252ACD0DC(a1, v11);
  (*(v6 + 16))(v8, a2, v5);
  v12 = sub_252E362A4();
  (*(v6 + 8))(a2, v5);
  sub_25293EF40(a1);
  return v12;
}

uint64_t HomeSuggestionCATs.init(templateDir:options:globals:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_252E363B4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540370, &qword_252E3C450);
  MEMORY[0x28223BE20](v9 - 8);
  sub_252ACD0DC(a1, &v13 - v10);
  (*(v6 + 16))(v8, a2, v5);
  v11 = sub_252E362A4();
  (*(v6 + 8))(a2, v5);
  sub_25293EF40(a1);
  return v11;
}

uint64_t HomeSuggestionCATs.__deallocating_deinit()
{
  _s22HomeAutomationInternal0aB4CATsCfd_0();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for HomeSuggestionCATs(uint64_t a1)
{
  result = qword_27F5445D8;
  if (!qword_27F5445D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_252C4B320(uint64_t a1)
{
  v27 = *(a1 + 16);
  if (!v27)
  {
    return MEMORY[0x277D84F90];
  }

  v1 = 0;
  v2 = MEMORY[0x277D84F90];
  v26 = a1 + 32;
  while (1)
  {
    v4 = *(v26 + 8 * v1);
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
      v24 = sub_252E378C4();
      v9 = v24 + v6;
      if (__OFADD__(v24, v6))
      {
LABEL_33:
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
        goto LABEL_33;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (!result)
    {
      if (!v7)
      {
        goto LABEL_16;
      }

LABEL_15:
      sub_252E378C4();
      goto LABEL_16;
    }

    if (v7)
    {
      goto LABEL_15;
    }

    v10 = v2 & 0xFFFFFFFFFFFFFF8;
    if (v9 <= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v11 = v6;
      goto LABEL_17;
    }

LABEL_16:
    v11 = v6;
    result = sub_252E37A54();
    v2 = result;
    v10 = result & 0xFFFFFFFFFFFFFF8;
LABEL_17:
    v12 = *(v10 + 16);
    v13 = *(v10 + 24);
    if (v5)
    {
      break;
    }

    v14 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      goto LABEL_3;
    }

LABEL_21:
    if (((v13 >> 1) - v12) < v11)
    {
      goto LABEL_37;
    }

    v29 = v11;
    v16 = v10 + 8 * v12 + 32;
    v25 = v10;
    if (v5)
    {
      if (v14 < 1)
      {
        goto LABEL_39;
      }

      sub_252C54840();
      for (i = 0; i != v14; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541840, &qword_252E40AD8);
        v18 = sub_2529FBE00(v28, i, v4);
        v20 = *v19;

        (v18)(v28, 0);
        *(v16 + 8 * i) = v20;
      }
    }

    else
    {
      type metadata accessor for Accessory(0);
      swift_arrayInitWithCopy();
    }

    if (v29 >= 1)
    {
      v21 = *(v25 + 16);
      v22 = __OFADD__(v21, v29);
      v23 = v21 + v29;
      if (v22)
      {
        goto LABEL_38;
      }

      *(v25 + 16) = v23;
    }

LABEL_4:
    if (++v1 == v27)
    {
      return v2;
    }
  }

  v15 = v10;
  result = sub_252E378C4();
  v10 = v15;
  v14 = result;
  if (result)
  {
    goto LABEL_21;
  }

LABEL_3:

  if (v11 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
  return result;
}