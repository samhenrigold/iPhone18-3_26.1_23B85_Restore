void sub_238111C60()
{
  v1 = OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_isInvalidated;
  if ((*(v0 + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_isInvalidated) & 1) == 0)
  {
    v2 = v0;
    if (qword_27DEEA108 != -1)
    {
      swift_once();
    }

    v3 = sub_23815293C();
    __swift_project_value_buffer(v3, qword_27DEED4B0);
    v4 = sub_23815291C();
    v5 = sub_2381550FC();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_238060000, v4, v5, "Invalidating NameDrop session controller", v6, 2u);
      MEMORY[0x2383EA8A0](v6, -1, -1);
    }

    *(v0 + v1) = 1;
    v7 = OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_transferMonitoringTask;
    if (*(v0 + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_transferMonitoringTask))
    {

      sub_238154FCC();
    }

    *(v0 + v7) = 0;

    if (*(v0 + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_state) <= 1uLL)
    {
      v8 = sub_23815291C();
      v9 = sub_2381550FC();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&dword_238060000, v8, v9, "Attempting to cancel transfer", v10, 2u);
        MEMORY[0x2383EA8A0](v10, -1, -1);
      }

      sub_238119558();
    }

    v11 = OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_lockScreenService;
    v12 = *(v2 + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_lockScreenService);
    if (v12)
    {
      [v12 invalidate];
      v12 = *(v2 + v11);
    }

    *(v2 + v11) = 0;
  }
}

uint64_t sub_238111E80()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  return v1;
}

id sub_238111EF4()
{
  v1 = OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController____lazy_storage___contactsIconImage;
  v2 = *(v0 + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController____lazy_storage___contactsIconImage);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController____lazy_storage___contactsIconImage);
  }

  else
  {
    v4 = sub_23811393C();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_238111F54()
{
  v0 = sub_23815293C();
  __swift_allocate_value_buffer(v0, qword_27DEED4B0);
  v1 = __swift_project_value_buffer(v0, qword_27DEED4B0);
  if (qword_27DEEA038 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27DEF3198);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_23811201C(char a1)
{
  v1 = a1 & 1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  if (v4[0] != v1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v2 = sub_238152A7C();
    if (__OFADD__(*v3, 1))
    {
      __break(1u);
    }

    else
    {
      ++*v3;
      v2(v4, 0);
    }
  }
}

void sub_23811214C(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  *a2 = v3;
}

uint64_t sub_2381121CC(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_238152A9C();
}

void sub_238112240(char a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  if (v4[0] != 1 || (swift_getKeyPath(), swift_getKeyPath(), sub_238152A8C(), , , v4[0] != (a1 & 1)))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v2 = sub_238152A7C();
    if (__OFADD__(*v3, 1))
    {
      __break(1u);
    }

    else
    {
      ++*v3;
      v2(v4, 0);
    }
  }
}

uint64_t sub_2381123C4(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t))
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  swift_getKeyPath();
  swift_getKeyPath();

  sub_238152A9C();
  return a7(v9);
}

uint64_t sub_23811249C()
{
  v1 = v0;
  v2 = sub_2381530DC();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v77 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v71 - v6;
  v8 = sub_2381545FC();
  v9 = sub_2381545FC();
  v10 = sub_2381545FC();
  v11 = [objc_opt_self() systemFontOfSize:60.0 weight:*MEMORY[0x277D74400]];
  *&v104[0] = 0;
  v103 = 0uLL;
  *(v104 + 8) = xmmword_23815E310;
  BYTE8(v104[1]) = 0;
  *&v105 = 0;
  v75 = v9;
  v76 = v8;
  *(&v105 + 1) = v8;
  *&v106 = v9;
  v73 = v11;
  v74 = v10;
  *(&v106 + 1) = v10;
  *&v108 = 0;
  v107 = v11;
  v109 = 0u;
  v110 = 0u;
  v112 = 0;
  v12 = *(v1 + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_meCardContactProvider);
  *&v111 = 0;
  *(&v111 + 1) = v12;
  sub_23809B3A0(v12);
  sub_23809B3A0(v12);
  sub_23809BF44(1);
  if (v12 > 1)
  {
    v71 = v2;
    v13 = sub_23815529C();
    v15 = v14;
    sub_23809BF44(v12);

    *&v108 = v13;
    *(&v108 + 1) = v15;
    sub_23815288C();
    swift_getKeyPath();
    swift_getKeyPath();
    v72 = v1;
    sub_238152A8C();

    v16 = v92;
    sub_23815284C();
    v17 = v92;
    v18 = v93;
    v19 = v94;

    v109 = v17;
    v110 = v18;
    *&v111 = v19;

    sub_23811D1D8(0, 0, 0, 0, 0);
    v20 = [objc_opt_self() sharedApplication];
    v21 = [v20 userInterfaceLayoutDirection];

    if (v21 == 1)
    {
      sub_23811CFD4();
    }

    v22 = *(v17 + 16);

    swift_getKeyPath();
    swift_getKeyPath();
    v1 = v72;
    sub_238152A8C();

    v23 = v92;
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v92) = v22 != 0;

    sub_238152A9C();
    sub_238112240(v23);
    v2 = v71;
  }

  else
  {

    *&v108 = 0;
    *(&v108 + 1) = 0xE000000000000000;
  }

  v24 = *(v1 + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_posterImage);
  v25 = *(v1 + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_computedTextColors + 8);
  v26 = *(v1 + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_computedTextColors + 16);
  *(&v105 + 1) = *(v1 + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_computedTextColors);
  *&v106 = v25;
  *(&v107 + 1) = v24;
  *(&v106 + 1) = v26;

  v27 = v24;

  *&v107 = *(v1 + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_nameFont);
  v28 = v107;

  sub_2381532FC();
  v29 = v77;
  (*(v3 + 104))(v77, *MEMORY[0x277D54940], v2);
  LOBYTE(v25) = sub_2381530CC();
  v30 = *(v3 + 8);
  v30(v29, v2);
  v30(v7, v2);
  BYTE8(v104[1]) = v25 & 1;
  v31 = OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_userAction;
  if (*(v1 + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_userAction) == 2)
  {
    v32 = sub_23815467C();
    *&v92 = sub_23807CB28(84);
    *(&v92 + 1) = v33;
    sub_2380704A0();
    v34 = sub_23815438C();
    v36 = v35;
    v38 = v37;
    v40 = v39;
    sub_23811D128(0, 0, 0, 3, 0);
    v41 = v38 & 1;
    *&v103 = v34;
    *(&v103 + 1) = v36;
    *&v104[0] = v41;
    *(&v104[0] + 1) = v40;
    v77 = v32;
    *&v104[1] = v32;
  }

  else
  {
    v34 = 0;
    v36 = 0;
    LOBYTE(v41) = 0;
    v77 = 0;
    v40 = 3;
  }

  v42 = *(v1 + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_state);
  if (v42 <= 1)
  {
    if (v42)
    {
      if (v42 == 1)
      {
        sub_23811D128(v34, v36, v41, v40, v77);
        v103 = 0uLL;
        *(v104 + 8) = xmmword_2381587F0;
        v43 = 2;
LABEL_21:
        *&v104[0] = 0;
        *&v105 = v43;
        goto LABEL_26;
      }

      goto LABEL_17;
    }

    v72 = v1;
    *&v92 = sub_23807CB28(80);
    *(&v92 + 1) = v53;
    sub_2380704A0();
    v54 = sub_23815438C();
    v56 = v55;
    *&v103 = v54;
    *(&v103 + 1) = v55;
    v58 = v57 & 1;
    *&v104[0] = v57 & 1;
    *(&v104[0] + 1) = v59;
    *&v104[1] = 0;

    sub_238070430(v54, v56, v58);
    sub_23811D128(v34, v36, v41, v40, v77);
    if (v12 == 1)
    {
      sub_238070490(v54, v56, v58);
    }

    else
    {
      sub_238070490(v54, v56, v58);

      if (v12)
      {
        v60 = 12;
LABEL_25:
        *&v105 = v60;
        goto LABEL_26;
      }
    }

    v60 = 24;
    goto LABEL_25;
  }

  if (v42 == 2)
  {
    sub_23811D128(v34, v36, v41, v40, v77);
    v103 = 0uLL;
    *(v104 + 8) = xmmword_23815E320;
    v43 = 1;
    goto LABEL_21;
  }

  if (v42 != 3)
  {
LABEL_17:
    v112 = *(v1 + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_state);
    *&v105 = 1;
    v52 = v42;
    goto LABEL_26;
  }

  *&v105 = 1;
  if (*(v1 + v31) == 1)
  {
    *&v92 = sub_23807CB28(85);
    *(&v92 + 1) = v44;
    sub_2380704A0();
    v45 = sub_23815438C();
    v47 = v46;
    v49 = v48;
    v51 = v50;
    sub_23811D128(v34, v36, v41, v40, v77);
    *&v103 = v45;
    *(&v103 + 1) = v47;
    *&v104[0] = v49 & 1;
    *(&v104[0] + 1) = v51;
    *&v104[1] = 0;
  }

LABEL_26:
  if (qword_27DEEA108 != -1)
  {
    swift_once();
  }

  v61 = sub_23815293C();
  __swift_project_value_buffer(v61, qword_27DEED4B0);
  v62 = sub_23815291C();
  v63 = sub_2381550FC();
  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v80[0] = v65;
    *v64 = 136315138;
    swift_beginAccess();
    v100 = v110;
    v101 = v111;
    v96 = v106;
    v97 = v107;
    v98 = v108;
    v99 = v109;
    v92 = v103;
    v93 = v104[0];
    v94 = v104[1];
    v95 = v105;
    v89 = v110;
    v90 = v111;
    v85 = v106;
    v86 = v107;
    v87 = v108;
    v88 = v109;
    v81 = v103;
    v82 = v104[0];
    v102 = v112;
    v91 = v112;
    v83 = v104[1];
    v84 = v105;
    sub_23809F2E8(&v92, v78);
    v66 = sub_238154D2C();
    v68 = sub_238085EAC(v66, v67, v80);

    *(v64 + 4) = v68;
    _os_log_impl(&dword_238060000, v62, v63, "View model updated: %s", v64, 0xCu);
    v69 = __swift_destroy_boxed_opaque_existential_1(v65);
    MEMORY[0x2383EA8A0](v65, -1, -1, v69);
    MEMORY[0x2383EA8A0](v64, -1, -1);
  }

  swift_beginAccess();
  v89 = v110;
  v90 = v111;
  v91 = v112;
  v85 = v106;
  v86 = v107;
  v87 = v108;
  v88 = v109;
  v81 = v103;
  v82 = v104[0];
  v83 = v104[1];
  v84 = v105;
  swift_getKeyPath();
  swift_getKeyPath();
  v78[7] = v88;
  v78[8] = v89;
  v78[9] = v90;
  v79 = v91;
  v78[4] = v85;
  v78[5] = v86;
  v78[6] = v87;
  v78[0] = v81;
  v78[1] = v82;
  v78[2] = v83;
  v78[3] = v84;

  sub_23809F2E8(&v81, &v92);
  sub_238152A9C();
  v100 = v110;
  v101 = v111;
  v102 = v112;
  v96 = v106;
  v97 = v107;
  v98 = v108;
  v99 = v109;
  v92 = v103;
  v93 = v104[0];
  v94 = v104[1];
  v95 = v105;
  return sub_23809B34C(&v92);
}

void sub_238112F9C(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  *a2 = v3;
}

void sub_23811301C(id *a1)
{
  v1 = *a1;
  sub_23811D394(v1);
}

void sub_238113068()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBA00, &qword_23815B4A0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v29 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED5D0, &qword_23815E670);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC530, &qword_23815E3B0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v11 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v29 - v12;
  v14 = *(v0 + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_userAction);
  if (*(v0 + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_userAction))
  {
    if (v14 == 3)
    {
      if (qword_27DEEA108 != -1)
      {
        swift_once();
      }

      v15 = sub_23815293C();
      __swift_project_value_buffer(v15, qword_27DEED4B0);
      v30 = sub_23815291C();
      v16 = sub_2381550FC();
      if (os_log_type_enabled(v30, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_238060000, v30, v16, "User has not made a selection yet", v17, 2u);
        MEMORY[0x2383EA8A0](v17, -1, -1);
      }

      v18 = v30;
    }

    else
    {
      v19 = OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_contactPermissionResponseAction;
      swift_beginAccess();
      sub_2380712E4(v0 + v19, v6, &qword_27DEED5D0, &qword_23815E670);
      if ((*(v8 + 48))(v6, 1, v7) == 1)
      {
        sub_238071284(v6, &qword_27DEED5D0, &qword_23815E670);
        if (qword_27DEEA108 != -1)
        {
          swift_once();
        }

        v20 = sub_23815293C();
        __swift_project_value_buffer(v20, qword_27DEED4B0);
        v21 = sub_23815291C();
        v22 = sub_2381550FC();
        if (os_log_type_enabled(v21, v22))
        {
          v23 = swift_slowAlloc();
          *v23 = 0;
          _os_log_impl(&dword_238060000, v21, v22, "Not in contact permissions response state yet", v23, 2u);
          MEMORY[0x2383EA8A0](v23, -1, -1);
        }
      }

      else
      {
        v24 = *(v8 + 32);
        v29[1] = v8 + 32;
        v30 = v24;
        (v24)(v13, v6, v7);
        v25 = sub_238154FBC();
        (*(*(v25 - 8) + 56))(v3, 1, 1, v25);
        (*(v8 + 16))(v11, v13, v7);
        v26 = (*(v8 + 80) + 17) & ~*(v8 + 80);
        v27 = (v9 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
        v28 = swift_allocObject();
        *(v28 + 16) = v14;
        (v30)(v28 + v26, v11, v7);
        *(v28 + v27) = v0;

        sub_238154FEC();

        sub_238071284(v3, &qword_27DEEBA00, &qword_23815B4A0);
        (*(v8 + 8))(v13, v7);
      }
    }
  }

  else
  {

    sub_238119558();
  }
}

uint64_t sub_23811358C()
{
  v1 = *(v0 + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_posterImage);
  if (v1)
  {
    v2 = v1;
    v3 = [v2 CGImage];
    if (v3)
    {
      v4 = v3;
      v5 = v0;
      Width = CGImageGetWidth(v3);
      Height = CGImageGetHeight(v4);
      if (qword_27DEEA108 != -1)
      {
        swift_once();
      }

      v8 = sub_23815293C();
      __swift_project_value_buffer(v8, qword_27DEED4B0);
      v9 = v2;
      v10 = sub_23815291C();
      v11 = sub_2381550FC();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        *v12 = 138412290;
        *(v12 + 4) = v9;
        *v13 = v1;
        v14 = v9;
        _os_log_impl(&dword_238060000, v10, v11, "Computing text colors for poster %@", v12, 0xCu);
        sub_238071284(v13, &unk_27DEECA10, &qword_2381588F0);
        MEMORY[0x2383EA8A0](v13, -1, -1);
        MEMORY[0x2383EA8A0](v12, -1, -1);
      }

      v15 = Width;
      v31.size.height = (Height / 6);
      v31.origin.x = 0.0;
      v31.origin.y = 0.0;
      v31.size.width = Width;
      v16 = CGImageCreateWithImageInRect(v4, v31);
      if (v16)
      {
        v17 = v16;
        v18 = [objc_opt_self() colorsForImageRef_];
        if (!v18)
        {
          sub_23807A3F8(0, &qword_27DEED678, 0x277D75348);
          sub_238154EDC();
          v18 = sub_238154ECC();
        }

        v19 = [objc_opt_self() backgroundColorsPreferWhiteForegroundText_];

        if (v19)
        {
          v20 = sub_2381545FC();
        }

        else
        {
          v20 = sub_2381545DC();
        }

        v21 = v20;

        *(v5 + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_computedTextColors) = v21;
      }

      v32.origin.x = 0.0;
      v32.origin.y = 0.0;
      v32.size.height = 0.0;
      v32.size.width = v15;
      v22 = CGImageCreateWithImageInRect(v4, v32);
      if (v22)
      {
        v23 = v22;
        v24 = [objc_opt_self() colorsForImageRef_];
        if (!v24)
        {
          sub_23807A3F8(0, &qword_27DEED678, 0x277D75348);
          sub_238154EDC();
          v24 = sub_238154ECC();
        }

        v25 = [objc_opt_self() backgroundColorsPreferWhiteForegroundText_];

        if (v25)
        {
          v26 = sub_2381545FC();
        }

        else
        {
          v26 = sub_2381545DC();
        }

        v27 = v26;

        v28 = v5 + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_computedTextColors;
        *(v28 + 8) = v27;
        *(v28 + 16) = v27;
      }

      else
      {
      }
    }

    else
    {
    }
  }

  return sub_23811249C();
}

id sub_23811393C()
{
  v0 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
  v1 = sub_238154C8C();
  v2 = [v0 initWithBundleIdentifier_];

  v3 = [objc_allocWithZone(MEMORY[0x277D1B1C8]) initWithSize:150.0 scale:{150.0, 1.0}];
  v4 = [v2 prepareImageForDescriptor_];
  if (!v4)
  {
    if (qword_27DEEA108 != -1)
    {
      swift_once();
    }

    v10 = sub_23815293C();
    __swift_project_value_buffer(v10, qword_27DEED4B0);
    v11 = sub_23815291C();
    v12 = sub_2381550EC();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_238060000, v11, v12, "Failed to load Contacts icon", v13, 2u);
      MEMORY[0x2383EA8A0](v13, -1, -1);
    }

    v9 = [objc_allocWithZone(MEMORY[0x277D755B8]) init];
    goto LABEL_9;
  }

  v5 = v4;
  result = [v4 CGImage];
  if (result)
  {
    v7 = result;
    [v5 scale];
    v9 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage:v7 scale:0 orientation:v8];

    v2 = v5;
    v3 = v7;
LABEL_9:

    return v9;
  }

  __break(1u);
  return result;
}

void sub_238113B5C(void *a1, void *a2, uint64_t a3)
{
  if (a1)
  {
    v5 = qword_27DEEA108;
    v6 = a1;
    if (v5 != -1)
    {
      swift_once();
    }

    v7 = sub_23815293C();
    __swift_project_value_buffer(v7, qword_27DEED4B0);
    v8 = v6;
    v9 = sub_23815291C();
    v10 = sub_2381550FC();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      *(v11 + 4) = v8;
      *v12 = a1;
      v13 = v8;
      _os_log_impl(&dword_238060000, v9, v10, "Received poster image: %@", v11, 0xCu);
      sub_238071284(v12, &unk_27DEECA10, &qword_2381588F0);
      MEMORY[0x2383EA8A0](v12, -1, -1);
      MEMORY[0x2383EA8A0](v11, -1, -1);
    }

    v14 = *(a3 + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_posterImage);
    *(a3 + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_posterImage) = a1;
    v24 = v8;

    sub_23811358C();
  }

  else
  {
    if (qword_27DEEA108 != -1)
    {
      swift_once();
    }

    v16 = sub_23815293C();
    __swift_project_value_buffer(v16, qword_27DEED4B0);
    v17 = a2;
    v24 = sub_23815291C();
    v18 = sub_2381550DC();

    if (os_log_type_enabled(v24, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      if (a2)
      {
        v21 = a2;
        v22 = _swift_stdlib_bridgeErrorToNSError();
        v23 = v22;
      }

      else
      {
        v22 = 0;
        v23 = 0;
      }

      *(v19 + 4) = v22;
      *v20 = v23;
      _os_log_impl(&dword_238060000, v24, v18, "Failed to create poster snapshot: %@", v19, 0xCu);
      sub_238071284(v20, &unk_27DEECA10, &qword_2381588F0);
      MEMORY[0x2383EA8A0](v20, -1, -1);
      MEMORY[0x2383EA8A0](v19, -1, -1);
    }
  }
}

uint64_t sub_238113E34()
{
  v1 = v0;
  if (qword_27DEEA108 != -1)
  {
    swift_once();
  }

  v2 = sub_23815293C();
  __swift_project_value_buffer(v2, qword_27DEED4B0);
  v3 = sub_23815291C();
  v4 = sub_2381550FC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_238060000, v3, v4, "Destroying NameDrop session controller", v5, 2u);
    MEMORY[0x2383EA8A0](v5, -1, -1);
  }

  v6 = OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_lockScreenService;
  v7 = *(v1 + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_lockScreenService);
  if (v7)
  {
    [v7 invalidate];
  }

  v8 = *(v1 + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_dismissViewAction);

  v8(v9);

  v10 = OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController__viewModel;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED5B8, &qword_23815E650);
  (*(*(v11 - 8) + 8))(v1 + v10, v11);
  v12 = OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController__canChangeFieldSelection;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB9E0, &unk_23815D810);
  v14 = *(*(v13 - 8) + 8);
  v14(v1 + v12, v13);
  v15 = OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController__animatePersonalInformationChange;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC190, &qword_23815B890);
  (*(*(v16 - 8) + 8))(v1 + v15, v16);
  v14(v1 + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController__hasReviewInfoButton, v13);
  v17 = OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController__fieldSelection;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED5C0, &qword_23815E658);
  (*(*(v18 - 8) + 8))(v1 + v17, v18);
  v19 = OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_transactionIdentifier;
  v20 = sub_2381527EC();
  (*(*(v20 - 8) + 8))(v1 + v19, v20);

  sub_23811D4D4(*(v1 + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_state));

  sub_23809BF44(*(v1 + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_meCardContactProvider));

  sub_238071284(v1 + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_receiveTransfer, &qword_27DEED5C8, &unk_23815E660);
  sub_238071284(v1 + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_sendTransferID, &qword_27DEEC4E8, &qword_23815C178);
  sub_238071284(v1 + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_contactPermissionResponseAction, &qword_27DEED5D0, &qword_23815E670);

  return v1;
}

uint64_t sub_238114210()
{
  sub_238113E34();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for NameDropSessionController(uint64_t a1)
{
  result = qword_27DEED578;
  if (!qword_27DEED578)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2381142BC(uint64_t a1)
{
  sub_2380CAE70(319, &qword_27DEED588, &type metadata for NameDropViewModel);
  if (v1 <= 0x3F)
  {
    sub_2380CAE70(319, &qword_27DEEB898, MEMORY[0x277D839B0]);
    if (v2 <= 0x3F)
    {
      sub_2380CAE70(319, &qword_27DEECF20, MEMORY[0x277D83B88]);
      if (v3 <= 0x3F)
      {
        sub_2381145C0(319);
        if (v4 <= 0x3F)
        {
          sub_2381527EC();
          if (v5 <= 0x3F)
          {
            sub_238114628(319, &qword_27DEED598, MEMORY[0x277D54AA8]);
            if (v6 <= 0x3F)
            {
              sub_238114628(319, &qword_27DEED5A0, MEMORY[0x277D54BD0]);
              if (v7 <= 0x3F)
              {
                sub_23811467C(319);
                if (v8 <= 0x3F)
                {
                  swift_updateClassMetadata2();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_2381145C0(uint64_t a1)
{
  if (!qword_27DEED590)
  {
    sub_23807A3F8(255, &qword_27DEEE300, 0x277CBDA58);
    v1 = sub_238152AAC();
    if (!v2)
    {
      atomic_store(v1, &qword_27DEED590);
    }
  }
}

void sub_238114628(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_23815530C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_23811467C(uint64_t a1)
{
  if (!qword_27DEED5A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEC530, &qword_23815E3B0);
    v1 = sub_23815530C();
    if (!v2)
    {
      atomic_store(v1, &qword_27DEED5A8);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_17DeviceDiscoveryUI25NameDropSessionControllerC5State33_A7A3F10AD2D820400D6E87A9188FAB27LLO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_238114708(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 8))
  {
    return (*a1 + 2147483644);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 3;
  if (v4 >= 5)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23811475C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

void *sub_2381147B8(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

unint64_t sub_2381147EC()
{
  result = qword_27DEED5B0;
  if (!qword_27DEED5B0)
  {
    result = swift_getWitnessTable(aI_0, &type metadata for NameDropSessionController.UserAction, v0, v1);
    atomic_store(result, &qword_27DEED5B0);
  }

  return result;
}

uint64_t sub_238114840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[14] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC4E8, &qword_23815C178);
  v4[15] = swift_task_alloc();
  v5 = sub_23815305C();
  v4[16] = v5;
  v4[17] = *(v5 - 8);
  v4[18] = swift_task_alloc();
  v6 = sub_23815300C();
  v4[19] = v6;
  v4[20] = *(v6 - 8);
  v4[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED5C8, &unk_23815E660);
  v4[22] = swift_task_alloc();
  v7 = sub_23815328C();
  v4[23] = v7;
  v4[24] = *(v7 - 8);
  v4[25] = swift_task_alloc();
  v8 = sub_2381535DC();
  v4[26] = v8;
  v4[27] = *(v8 - 8);
  v4[28] = swift_task_alloc();
  v9 = sub_2381527EC();
  v4[29] = v9;
  v4[30] = *(v9 - 8);
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();
  v10 = sub_2381536AC();
  v4[33] = v10;
  v4[34] = *(v10 - 8);
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  v11 = sub_23815322C();
  v4[37] = v11;
  v4[38] = *(v11 - 8);
  v4[39] = swift_task_alloc();
  v12 = sub_2381530BC();
  v4[40] = v12;
  v4[41] = *(v12 - 8);
  v4[42] = swift_task_alloc();
  v4[43] = swift_task_alloc();
  v4[44] = swift_task_alloc();
  v4[45] = swift_task_alloc();
  v4[46] = swift_task_alloc();
  v4[47] = swift_task_alloc();
  v4[48] = swift_task_alloc();
  v13 = sub_2381532BC();
  v4[49] = v13;
  v4[50] = *(v13 - 8);
  v4[51] = swift_task_alloc();
  v4[52] = swift_task_alloc();
  v4[53] = swift_task_alloc();
  v4[54] = swift_task_alloc();
  v4[55] = swift_task_alloc();
  v4[56] = swift_task_alloc();
  v4[57] = swift_task_alloc();
  v4[58] = swift_task_alloc();
  v14 = sub_23815374C();
  v4[59] = v14;
  v4[60] = *(v14 - 8);
  v4[61] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC5D0, &qword_23815C2C0);
  v4[62] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC5D8, &qword_23815C2C8);
  v4[63] = v15;
  v4[64] = *(v15 - 8);
  v4[65] = swift_task_alloc();
  v4[66] = sub_238154F8C();
  v4[67] = sub_238154F7C();
  v17 = sub_238154F3C();
  v4[68] = v17;
  v4[69] = v16;

  return MEMORY[0x2822009F8](sub_238114E3C, v17, v16);
}

uint64_t sub_238114E3C()
{
  if (qword_27DEEA108 != -1)
  {
    swift_once();
  }

  v1 = sub_23815293C();
  v0[70] = __swift_project_value_buffer(v1, qword_27DEED4B0);
  v2 = sub_23815291C();
  v3 = sub_2381550FC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_238060000, v2, v3, "NameDrop starting to monitor transfers", v4, 2u);
    MEMORY[0x2383EA8A0](v4, -1, -1);
  }

  v5 = swift_task_alloc();
  v0[71] = v5;
  *v5 = v0;
  v5[1] = sub_238114FA4;
  v6 = v0[65];

  return MEMORY[0x2821B5F90](v6);
}

uint64_t sub_238114FA4()
{
  v2 = *v1;
  *(*v1 + 576) = v0;

  v3 = *(v2 + 552);
  v4 = *(v2 + 544);
  if (v0)
  {
    v5 = sub_2381170F4;
  }

  else
  {
    v5 = sub_2381150E0;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_2381150E0(uint64_t a1)
{
  v2 = sub_23815291C();
  v3 = sub_2381550CC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_238060000, v2, v3, "NameDrop transfers START", v4, 2u);
    MEMORY[0x2383EA8A0](v4, -1, -1);
  }

  v1[12] = sub_2381533BC();
  v1[73] = OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_transactionIdentifier;
  v1[74] = OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_receiveTransfer;
  v1[75] = OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_sendTransferID;
  v1[76] = sub_238154F7C();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC5E0, &qword_23815C2D0);
  v6 = sub_23811D848();
  v7 = swift_task_alloc();
  v1[77] = v7;
  *v7 = v1;
  v7[1] = sub_238115264;
  v8 = v1[62];

  return MEMORY[0x282200308](v8, v5, v6);
}

uint64_t sub_238115264()
{
  v2 = *v1;
  *(*v1 + 624) = v0;

  v3 = *(v2 + 608);
  if (v0)
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_238154F3C();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_238116D50;
  }

  else
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_238154F3C();
      v6 = v8;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_2381153FC;
  }

  return MEMORY[0x2822009F8](v7, v4, v6);
}

uint64_t sub_2381153FC()
{

  v1 = *(v0 + 552);
  v2 = *(v0 + 544);

  return MEMORY[0x2822009F8](sub_238115464, v2, v1);
}

uint64_t sub_238115464()
{
  v294 = v0;
  v1 = v0[62];
  v2 = v0[59];
  v3 = v0[60];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {

    goto LABEL_7;
  }

  (*(v3 + 32))(v292[61], v1, v2);
  if (sub_23815500C())
  {

    v4 = sub_23815291C();
    v5 = sub_2381550CC();
    v6 = os_log_type_enabled(v4, v5);
    v8 = v292[60];
    v7 = v292[61];
    v9 = v292[59];
    if (v6)
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_238060000, v4, v5, "Transfer monitoring task is canceled", v10, 2u);
      MEMORY[0x2383EA8A0](v10, -1, -1);
    }

    (*(v8 + 8))(v7, v9);
LABEL_7:

    v11 = sub_23815291C();
    v12 = sub_2381550FC();
    v13 = os_log_type_enabled(v11, v12);
    v14 = v292[65];
    v15 = v292[63];
    v16 = v292[64];
    if (v13)
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_238060000, v11, v12, "NameDrop transfers ENDED", v17, 2u);
      MEMORY[0x2383EA8A0](v17, -1, -1);
    }

    (*(v16 + 8))(v14, v15);
LABEL_10:

    v18 = v292[1];

    return v18();
  }

  v20 = sub_23815291C();
  v21 = sub_2381550CC();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_238060000, v20, v21, "NameDrop transfers CHANGED", v22, 2u);
    MEMORY[0x2383EA8A0](v22, -1, -1);
  }

  v23 = sub_23815373C();
  v26 = 0;
  v27 = v23 + 64;
  v231 = v23;
  v28 = -1;
  v29 = -1 << *(v23 + 32);
  if (-v29 < 64)
  {
    v28 = ~(-1 << -v29);
  }

  v30 = v28 & *(v23 + 64);
  v31 = (63 - v29) >> 6;
  v229 = v31;
  v230 = v23 + 64;
  while (v30)
  {
LABEL_25:
    v39 = v292[57];
    v38 = v292[58];
    v41 = v292[49];
    v40 = v292[50];
    v42 = v292[38];
    v43 = v292[39];
    v271 = v292[73];
    v279 = v292[37];
    v44 = v292[34];
    v249 = v292[33];
    v239 = v292[36];
    v244 = v292[32];
    v263 = v292[31];
    v234 = v292[30];
    v257 = v292[29];
    loga = v292[14];
    v286 = *(v40 + 16);
    v286(v38, *(v231 + 56) + *(v40 + 72) * (__clz(__rbit64(v30)) | (v26 << 6)), v41);
    (*(v40 + 32))(v39, v38, v41);
    sub_23815325C();
    sub_2381531FC();
    v45 = v43;
    v46 = *(v42 + 8);
    v46(v45, v279);
    sub_23815369C();
    v47 = *(v44 + 8);
    v280 = (v30 - 1) & v30;
    v47(v239, v249);
    (v234[2].isa)(v263, loga + v271, v257);
    LOBYTE(v39) = sub_2381527AC();
    isa = v234[1].isa;
    isa(v263, v257);
    isa(v244, v257);
    if (v39)
    {
      v49 = v292[39];
      v50 = v292[37];
      v52 = v292[27];
      v51 = v292[28];
      v53 = v292[26];
      sub_23815325C();
      sub_23815320C();
      v46(v49, v50);
      LOBYTE(v49) = sub_2381535CC();
      (*(v52 + 8))(v51, v53);
      v54 = v292[57];
      if (v49)
      {
        v272 = v47;
        v55 = v292[55];
        v56 = v292[49];
        v57 = v286;
        v286(v292[56], v54, v56);
        v286(v55, v54, v56);
        v58 = sub_23815291C();
        v59 = sub_2381550FC();
        v60 = os_log_type_enabled(v58, v59);
        v62 = v292[55];
        v61 = v292[56];
        v64 = v292[49];
        v63 = v292[50];
        if (v60)
        {
          v65 = v292[36];
          v264 = v59;
          v66 = v292[33];
          v245 = v292[24];
          v235 = v292[25];
          v240 = v292[23];
          v67 = swift_slowAlloc();
          v258 = swift_slowAlloc();
          v293[0] = v258;
          *v67 = 136315394;
          logb = v58;
          sub_23815327C();
          sub_23812133C(&qword_27DEED5E0, MEMORY[0x277D54BD0], MEMORY[0x277D54BE8]);
          v68 = sub_23815559C();
          v69 = v62;
          v71 = v70;
          v272(v65, v66);
          v72 = *(v63 + 8);
          v72(v61, v64);
          v73 = sub_238085EAC(v68, v71, v293);

          *(v67 + 4) = v73;
          *(v67 + 12) = 2080;
          sub_23815329C();
          sub_23812133C(&qword_27DEED5E8, MEMORY[0x277D54A88], MEMORY[0x277D54A90]);
          v74 = sub_23815559C();
          v76 = v75;
          (v245[1].isa)(v235, v240);
          v72(v69, v64);
          v77 = sub_238085EAC(v74, v76, v293);

          *(v67 + 14) = v77;
          _os_log_impl(&dword_238060000, logb, v264, "NameDrop receive transfer {id: %s, state: %s}", v67, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x2383EA8A0](v258, -1, -1);
          v78 = v67;
          v57 = v286;
          MEMORY[0x2383EA8A0](v78, -1, -1);
        }

        else
        {

          v72 = *(v63 + 8);
          v72(v62, v64);
          v72(v61, v64);
        }

        v117 = v292[74];
        v118 = v292[57];
        v119 = v292[49];
        v120 = v292[50];
        v121 = v292[22];
        v122 = v292[14];
        v57(v121, v118, v119);
        (*(v120 + 56))(v121, 0, 1, v119);
        swift_beginAccess();
        sub_23811D8AC(v121, v122 + v117, &qword_27DEED5C8, &unk_23815E660);
        swift_endAccess();
        sub_2381173D0(v118);
        v23 = (v72)(v118, v119);
      }

      else
      {
        v286(v292[54], v54, v292[49]);
        v102 = sub_23815291C();
        v103 = sub_2381550DC();
        v104 = os_log_type_enabled(v102, v103);
        v105 = v292[57];
        v106 = v292[54];
        if (v104)
        {
          v274 = v292[57];
          v107 = v292[53];
          v108 = v292[49];
          v109 = v292[50];
          v110 = swift_slowAlloc();
          v266 = swift_slowAlloc();
          v293[0] = v266;
          *v110 = 136315138;
          v286(v107, v106, v108);
          v111 = sub_238154D2C();
          v113 = v112;
          v114 = *(v109 + 8);
          v114(v106, v108);
          v115 = sub_238085EAC(v111, v113, v293);

          *(v110 + 4) = v115;
          _os_log_impl(&dword_238060000, v102, v103, "NameDrop ignoring transfer for non contactExchange transfer {transfer: %s", v110, 0xCu);
          v116 = __swift_destroy_boxed_opaque_existential_1(v266);
          MEMORY[0x2383EA8A0](v266, -1, -1, v116);
          MEMORY[0x2383EA8A0](v110, -1, -1);

          v23 = (v114)(v274, v108);
        }

        else
        {
          v123 = v292[49];
          v124 = v292[50];

          v125 = *(v124 + 8);
          v125(v106, v123);
          v23 = (v125)(v105, v123);
        }
      }
    }

    else
    {
      v265 = v46;
      v79 = v292[57];
      v80 = v292[51];
      v81 = v292[49];
      v286(v292[52], v79, v81);
      v286(v80, v79, v81);
      v82 = sub_23815291C();
      v83 = sub_2381550CC();
      v84 = os_log_type_enabled(v82, v83);
      v85 = v292[57];
      if (v84)
      {
        logc = v83;
        v86 = v292[52];
        v87 = v292[53];
        v226 = v292[51];
        v259 = v292[57];
        v223 = v292[50];
        v88 = v292[49];
        v273 = v47;
        v89 = v292[39];
        v225 = v292[36];
        v227 = v292[37];
        v228 = v292[35];
        v246 = v82;
        v90 = v292[34];
        v236 = v292[33];
        v91 = swift_slowAlloc();
        v241 = swift_slowAlloc();
        v293[0] = v241;
        *v91 = 136315394;
        v92 = v88;
        v286(v87, v86, v88);
        v224 = v88;
        v93 = sub_238154D2C();
        v95 = v94;
        v96 = *(v223 + 8);
        v96(v86, v92);
        v97 = sub_238085EAC(v93, v95, v293);

        *(v91 + 4) = v97;
        *(v91 + 12) = 2080;
        sub_23815325C();
        sub_2381531FC();
        v265(v89, v227);
        (*(v90 + 16))(v228, v225, v236);
        v98 = sub_238154D2C();
        v100 = v99;
        v273(v225, v236);
        v96(v226, v224);
        v101 = sub_238085EAC(v98, v100, v293);

        *(v91 + 14) = v101;
        _os_log_impl(&dword_238060000, v246, logc, "Ignoring untracked receive transfer: %s %s", v91, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x2383EA8A0](v241, -1, -1);
        MEMORY[0x2383EA8A0](v91, -1, -1);

        v23 = (v96)(v259, v224);
      }

      else
      {
        v32 = v292[51];
        v33 = v292[52];
        v34 = v292[49];
        v35 = v292[50];

        v36 = *(v35 + 8);
        v36(v32, v34);
        v36(v33, v34);
        v23 = (v36)(v85, v34);
      }
    }

    v31 = v229;
    v27 = v230;
    v30 = v280;
  }

  while (1)
  {
    v37 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      __break(1u);
      goto LABEL_61;
    }

    if (v37 >= v31)
    {
      break;
    }

    v30 = *(v27 + 8 * v37);
    ++v26;
    if (v30)
    {
      v26 = v37;
      goto LABEL_25;
    }
  }

  v23 = sub_23815372C();
  v126 = 0;
  v127 = (v23 + 64);
  v247 = (v23 + 64);
  v250 = v23;
  v128 = -1;
  v129 = -1 << *(v23 + 32);
  if (-v129 < 64)
  {
    v128 = ~(-1 << -v129);
  }

  v130 = v128 & *(v23 + 64);
  v131 = (63 - v129) >> 6;
  v242 = v131;
  while (v130)
  {
LABEL_46:
    v281 = v292[73];
    v138 = v292[47];
    v137 = v292[48];
    v140 = v292[40];
    v139 = v292[41];
    v141 = v292[36];
    v142 = v292[34];
    v260 = v292[33];
    v143 = v292[31];
    logd = v292[32];
    v144 = v292[30];
    v267 = v292[14];
    v275 = v292[29];
    v289 = *(v139 + 16);
    v289(v137, *(v250 + 56) + *(v139 + 72) * (__clz(__rbit64(v130)) | (v126 << 6)), v140);
    (*(v139 + 32))(v138, v137, v140);
    sub_23815303C();
    sub_23815369C();
    v145 = *(v142 + 8);
    v130 &= v130 - 1;
    v145(v141, v260);
    (*(v144 + 16))(v143, v267 + v281, v275);
    LOBYTE(v137) = sub_2381527AC();
    v146 = *(v144 + 8);
    v146(v143, v275);
    v146(logd, v275);
    if (v137)
    {
      v148 = v292[27];
      v147 = v292[28];
      v276 = v145;
      v282 = v292[26];
      v150 = v292[20];
      v149 = v292[21];
      v151 = v292[19];
      sub_23815302C();
      sub_238152FEC();
      (*(v150 + 8))(v149, v151);
      LOBYTE(v149) = sub_2381535CC();
      (*(v148 + 8))(v147, v282);
      if ((v149 & 1) == 0)
      {
        v201 = v292[47];
        v202 = v292[44];
        v203 = v292[40];

        v289(v202, v201, v203);
        v204 = sub_23815291C();
        v205 = sub_2381550DC();
        v206 = os_log_type_enabled(v204, v205);
        v207 = v292[64];
        v278 = v292[63];
        v285 = v292[65];
        v208 = v292[60];
        v262 = v292[59];
        v270 = v292[61];
        log = v292[47];
        v209 = v292[44];
        if (v206)
        {
          v243 = v205;
          v210 = v292[43];
          v211 = v292[40];
          v238 = v292[41];
          v248 = v292[64];
          v212 = swift_slowAlloc();
          v213 = swift_slowAlloc();
          v293[0] = v213;
          *v212 = 136315138;
          v289(v210, v209, v211);
          v214 = sub_238154D2C();
          v216 = v215;
          v217 = v238[1].isa;
          v217(v209, v211);
          v218 = sub_238085EAC(v214, v216, v293);

          *(v212 + 4) = v218;
          _os_log_impl(&dword_238060000, v204, v243, "NameDrop ignoring transfer for non contactExchange transfer {transfer: %s", v212, 0xCu);
          v219 = __swift_destroy_boxed_opaque_existential_1(v213);
          MEMORY[0x2383EA8A0](v213, -1, -1, v219);
          MEMORY[0x2383EA8A0](v212, -1, -1);

          v217(log, v211);
          (*(v208 + 8))(v270, v262);

          (v248[1].isa)(v285, v278);
        }

        else
        {
          v220 = v292[40];
          v221 = v292[41];

          v222 = *(v221 + 8);
          v222(v209, v220);
          v222(log, v220);
          (*(v208 + 8))(v270, v262);

          (*(v207 + 8))(v285, v278);
        }

        goto LABEL_10;
      }

      v152 = v292[47];
      v153 = v292[45];
      v154 = v292[40];
      v289(v292[46], v152, v154);
      v289(v153, v152, v154);
      v155 = sub_23815291C();
      v156 = sub_2381550FC();
      v157 = os_log_type_enabled(v155, v156);
      v158 = v292[46];
      v290 = v292[45];
      v159 = v292[40];
      v160 = v292[41];
      if (v157)
      {
        v161 = v292[36];
        v162 = v292[33];
        v233 = v292[18];
        v268 = v292[17];
        loge = v292[16];
        v163 = swift_slowAlloc();
        v287 = swift_slowAlloc();
        v293[0] = v287;
        *v163 = 136315394;
        v283 = v156;
        sub_23815303C();
        sub_23812133C(&qword_27DEED5E0, MEMORY[0x277D54BD0], MEMORY[0x277D54BE8]);
        v164 = sub_23815559C();
        v237 = v155;
        v165 = v159;
        v232 = v159;
        v167 = v166;
        v276(v161, v162);
        v168 = v290;
        v169 = *(v160 + 8);
        v169(v158, v165);
        v170 = sub_238085EAC(v164, v167, v293);

        *(v163 + 4) = v170;
        *(v163 + 12) = 2080;
        sub_23815306C();
        sub_23812133C(&qword_27DEED5F0, MEMORY[0x277D548F8], MEMORY[0x277D54900]);
        v171 = sub_23815559C();
        v173 = v172;
        (*(v268 + 8))(v233, loge);
        v291 = v169;
        v169(v168, v232);
        v174 = sub_238085EAC(v171, v173, v293);

        *(v163 + 14) = v174;
        _os_log_impl(&dword_238060000, v237, v283, "NameDrop send transfer {id: %s, state: %s}", v163, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x2383EA8A0](v287, -1, -1);
        MEMORY[0x2383EA8A0](v163, -1, -1);
      }

      else
      {

        v191 = *(v160 + 8);
        v191(v290, v159);
        v291 = v191;
        v191(v158, v159);
      }

      v192 = v292[75];
      v193 = v292[47];
      v195 = v292[33];
      v194 = v292[34];
      v197 = v292[14];
      v196 = v292[15];
      v288 = v292[40];
      sub_23815303C();
      (*(v194 + 56))(v196, 0, 1, v195);
      swift_beginAccess();
      sub_23811D8AC(v196, v197 + v192, &qword_27DEEC4E8, &qword_23815C178);
      swift_endAccess();
      sub_2381185DC(v193);
      v23 = v291(v193, v288);
    }

    else
    {
      v289(v292[42], v292[47], v292[40]);
      v175 = sub_23815291C();
      v176 = sub_2381550CC();
      v177 = os_log_type_enabled(v175, v176);
      v178 = v292[47];
      if (v177)
      {
        v179 = v292[42];
        v180 = v292[43];
        v181 = v292[40];
        v261 = v179;
        v269 = v292[41];
        v284 = v292[47];
        v182 = swift_slowAlloc();
        v277 = swift_slowAlloc();
        v293[0] = v277;
        *v182 = 136315138;
        v183 = v179;
        v184 = v181;
        v289(v180, v183, v181);
        v185 = sub_238154D2C();
        v187 = v186;
        v188 = *(v269 + 8);
        v188(v261, v184);
        v189 = sub_238085EAC(v185, v187, v293);

        *(v182 + 4) = v189;
        _os_log_impl(&dword_238060000, v175, v176, "Ignoring untracked send transfer: %s", v182, 0xCu);
        v190 = __swift_destroy_boxed_opaque_existential_1(v277);
        MEMORY[0x2383EA8A0](v277, -1, -1, v190);
        MEMORY[0x2383EA8A0](v182, -1, -1);

        v23 = (v188)(v284, v184);
      }

      else
      {
        v133 = v292[41];
        v132 = v292[42];
        v134 = v292[40];

        v135 = *(v133 + 8);
        v135(v132, v134);
        v23 = (v135)(v178, v134);
      }
    }

    v131 = v242;
    v127 = v247;
  }

  while (1)
  {
    v136 = v126 + 1;
    if (__OFADD__(v126, 1))
    {
      break;
    }

    if (v136 >= v131)
    {
      (*(v292[60] + 8))(v292[61], v292[59]);

      v292[76] = sub_238154F7C();
      v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC5E0, &qword_23815C2D0);
      v199 = sub_23811D848();
      v200 = swift_task_alloc();
      v292[77] = v200;
      *v200 = v292;
      v200[1] = sub_238115264;
      v23 = v292[62];
      v24 = v198;
      v25 = v199;

      return MEMORY[0x282200308](v23, v24, v25);
    }

    v130 = v127[v136].isa;
    ++v126;
    if (v130)
    {
      v126 = v136;
      goto LABEL_46;
    }
  }

LABEL_61:
  __break(1u);
  return MEMORY[0x282200308](v23, v24, v25);
}

uint64_t sub_238116D50()
{
  v0[13] = v0[78];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC000, &qword_23815B500);
  swift_willThrowTypedImpl();

  v1 = v0[69];
  v2 = v0[68];

  return MEMORY[0x2822009F8](sub_238116DF0, v2, v1);
}

uint64_t sub_238116DF0()
{
  v17 = v0;
  v1 = v0[65];
  v2 = v0[63];
  v3 = v0[64];

  (*(v3 + 8))(v1, v2);
  v4 = v0[78];
  v5 = v4;
  v6 = sub_23815291C();
  v7 = sub_2381550FC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = sub_23815563C();
    v12 = sub_238085EAC(v10, v11, &v16);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_238060000, v6, v7, "NameDrop transfers FAILED {error: %s}", v8, 0xCu);
    v13 = __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x2383EA8A0](v9, -1, -1, v13);
    MEMORY[0x2383EA8A0](v8, -1, -1);
  }

  else
  {
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_2381170F4()
{
  v14 = v0;

  v1 = *(v0 + 576);
  v2 = v1;
  v3 = sub_23815291C();
  v4 = sub_2381550FC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136315138;
    swift_getErrorValue();
    v7 = sub_23815563C();
    v9 = sub_238085EAC(v7, v8, &v13);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_238060000, v3, v4, "NameDrop transfers FAILED {error: %s}", v5, 0xCu);
    v10 = __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x2383EA8A0](v6, -1, -1, v10);
    MEMORY[0x2383EA8A0](v5, -1, -1);
  }

  else
  {
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_2381173D0(uint64_t a1)
{
  v2 = sub_2381532BC();
  v132 = *(v2 - 8);
  v133 = v2;
  MEMORY[0x28223BE20](v2);
  v131 = &v129 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = sub_23815324C();
  v136 = *(v140 - 8);
  v4 = MEMORY[0x28223BE20](v140);
  v135 = &v129 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v139 = &v129 - v6;
  v7 = sub_2381532AC();
  v143 = *(v7 - 8);
  v144 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v134 = &v129 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v138 = &v129 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v137 = &v129 - v13;
  MEMORY[0x28223BE20](v12);
  v142 = &v129 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC508, &unk_23815C190);
  v145 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v129 - v16;
  v18 = sub_23815323C();
  v147 = *(v18 - 1);
  v148 = v18;
  MEMORY[0x28223BE20](v18);
  v20 = &v129 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED618, &qword_23815E738);
  v22 = *(v21 - 8);
  v23 = MEMORY[0x28223BE20](v21);
  v141 = &v129 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v26 = &v129 - v25;
  v27 = sub_23815328C();
  v28 = *(v27 - 8);
  v29 = MEMORY[0x28223BE20](v27);
  v130 = &v129 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v32 = &v129 - v31;
  sub_23815329C();
  result = (*(v28 + 88))(v32, v27);
  if (result == *MEMORY[0x277D54A60])
  {
    (*(v28 + 96))(v32, v27);
    (*(v22 + 32))(v26, v32, v21);
    if (qword_27DEEA108 != -1)
    {
      swift_once();
    }

    v34 = sub_23815293C();
    __swift_project_value_buffer(v34, qword_27DEED4B0);
    v35 = sub_23815291C();
    v36 = sub_2381550FC();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_238060000, v35, v36, "Auto accepting ask response", v37, 2u);
      MEMORY[0x2383EA8A0](v37, -1, -1);
    }

    v39 = v147;
    v38 = v148;
    (v147[13].isa)(v20, *MEMORY[0x277D54A18], v148);
    sub_23811F0D4(v26, v20);
    (v39[1].isa)(v20, v38);
    return (*(v22 + 8))(v26, v21);
  }

  else if (result == *MEMORY[0x277D54A78])
  {
    (*(v28 + 96))(v32, v27);
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED648, &qword_23815E758);
    v41 = v145;
    (*(v145 + 32))(v17, &v32[*(v40 + 48)], v15);
    sub_23811A190();
    (*(v41 + 8))(v17, v15);
    v42 = sub_23815354C();
    return (*(*(v42 - 8) + 8))(v32, v42);
  }

  else if (result == *MEMORY[0x277D54A70])
  {
    v43 = v21;
    v44 = v32;
    (*(v28 + 96))(v32, v27);
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED640, &qword_23815E750);
    v46 = v22;
    v47 = *(v22 + 32);
    v48 = v141;
    v47(v141, &v32[*(v45 + 48)], v43);
    if (qword_27DEEA108 != -1)
    {
      swift_once();
    }

    v49 = sub_23815293C();
    __swift_project_value_buffer(v49, qword_27DEED4B0);
    v50 = sub_23815291C();
    v51 = sub_2381550FC();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_238060000, v50, v51, "Auto accepting should import contact response", v52, 2u);
      MEMORY[0x2383EA8A0](v52, -1, -1);
    }

    v54 = v147;
    v53 = v148;
    (v147[13].isa)(v20, *MEMORY[0x277D54A18], v148);
    sub_23811F0D4(v48, v20);
    (v54[1].isa)(v20, v53);
    (*(v46 + 8))(v48, v43);
    v55 = sub_23815354C();
    return (*(*(v55 - 8) + 8))(v44, v55);
  }

  else
  {
    v56 = v32;
    if (result == *MEMORY[0x277D54A58])
    {
      (*(v28 + 96))(v32, v27);
      v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED638, &qword_23815E748);
      v58 = &v32[*(v57 + 64)];
      v59 = v58[1];
      v145 = *v58;

      v60 = v142;
      v61 = v143;
      v62 = v144;
      (*(v143 + 32))(v142, v32, v144);
      if (qword_27DEEA108 != -1)
      {
        swift_once();
      }

      v63 = sub_23815293C();
      __swift_project_value_buffer(v63, qword_27DEED4B0);
      v64 = v137;
      (*(v61 + 16))(v137, v60, v62);

      v65 = sub_23815291C();
      v66 = sub_2381550FC();

      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        v141 = swift_slowAlloc();
        v150[0] = v141;
        *v67 = 136315394;
        sub_23812133C(&qword_27DEED630, MEMORY[0x277D54A98], MEMORY[0x277D54AA0]);
        LODWORD(v140) = v66;
        v68 = sub_23815559C();
        v70 = v69;
        v71 = *(v61 + 8);
        v71(v64, v144);
        v72 = sub_238085EAC(v68, v70, v150);

        *(v67 + 4) = v72;
        *(v67 + 12) = 2080;
        v73 = v145;
        v149[0] = v145;
        v149[1] = v59;

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEECE00, &qword_23815AD70);
        v74 = sub_238154D2C();
        v76 = sub_238085EAC(v74, v75, v150);

        *(v67 + 14) = v76;
        v62 = v144;
        _os_log_impl(&dword_238060000, v65, v140, "Boop2Meet AirDrop Successful {Metrics: %s, remoteContactIdentifier: %s}", v67, 0x16u);
        v77 = v141;
        swift_arrayDestroy();
        MEMORY[0x2383EA8A0](v77, -1, -1);
        v78 = v67;
        v56 = v32;
        MEMORY[0x2383EA8A0](v78, -1, -1);
      }

      else
      {

        v71 = *(v61 + 8);
        v71(v64, v62);
        v73 = v145;
      }

      v109 = *(v57 + 48);
      sub_23811A74C(v73, v59);

      v71(v142, v62);
      return (v147[1].isa)(&v56[v109], v148);
    }

    else
    {
      v79 = v143;
      if (result == *MEMORY[0x277D54A50])
      {
        (*(v28 + 96))(v32, v27);
        v80 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED620, &qword_23815E740) + 48);
        v81 = v138;
        v82 = v144;
        (*(v79 + 32))(v138, v56, v144);
        v83 = v136;
        v84 = &v56[v80];
        v86 = v139;
        v85 = v140;
        (*(v136 + 32))(v139, v84, v140);
        if (qword_27DEEA108 != -1)
        {
          swift_once();
        }

        v87 = sub_23815293C();
        __swift_project_value_buffer(v87, qword_27DEED4B0);
        v88 = *(v83 + 16);
        v89 = v135;
        v88(v135, v86, v85);
        v90 = v134;
        (*(v79 + 16))(v134, v81, v82);
        v91 = sub_23815291C();
        v92 = sub_2381550FC();
        if (os_log_type_enabled(v91, v92))
        {
          v93 = swift_slowAlloc();
          v94 = swift_slowAlloc();
          v147 = v91;
          v95 = v94;
          v148 = swift_slowAlloc();
          v149[0] = v148;
          *v93 = 138412546;
          sub_23812133C(&qword_27DEED628, MEMORY[0x277D54A40], MEMORY[0x277D54A48]);
          swift_allocError();
          LODWORD(v145) = v92;
          v88(v96, v89, v140);
          v97 = _swift_stdlib_bridgeErrorToNSError();
          v98 = v89;
          v99 = *(v83 + 8);
          v99(v98, v140);
          *(v93 + 4) = v97;
          *v95 = v97;
          *(v93 + 12) = 2080;
          sub_23812133C(&qword_27DEED630, MEMORY[0x277D54A98], MEMORY[0x277D54AA0]);
          v100 = sub_23815559C();
          v102 = v101;
          v103 = *(v79 + 8);
          v103(v90, v82);
          v104 = sub_238085EAC(v100, v102, v149);

          *(v93 + 14) = v104;
          v105 = v147;
          _os_log_impl(&dword_238060000, v147, v145, "Boop2Meet AirDrop failed {ERROR: %@, Metrics: %s}", v93, 0x16u);
          sub_238071284(v95, &unk_27DEECA10, &qword_2381588F0);
          MEMORY[0x2383EA8A0](v95, -1, -1);
          v106 = v148;
          v107 = __swift_destroy_boxed_opaque_existential_1(v148);
          MEMORY[0x2383EA8A0](v106, -1, -1, v107);
          v108 = v93;
          v85 = v140;
          MEMORY[0x2383EA8A0](v108, -1, -1);
        }

        else
        {

          v103 = *(v79 + 8);
          v103(v90, v82);
          v111 = v89;
          v99 = *(v83 + 8);
          v99(v111, v85);
        }

        sub_23811AB70();
        v99(v139, v85);
        return (v103)(v138, v82);
      }

      else if (result != *MEMORY[0x277D54A80])
      {
        if (result == *MEMORY[0x277D54A68])
        {
          if (*(v146 + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_userAction) != 3)
          {
            v110 = *(v146 + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_state);
            *(v146 + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_state) = 1;
            sub_23811D4D4(v110);
            return sub_23811249C();
          }
        }

        else
        {
          if (qword_27DEEA108 != -1)
          {
            swift_once();
          }

          v112 = sub_23815293C();
          __swift_project_value_buffer(v112, qword_27DEED4B0);
          v114 = v131;
          v113 = v132;
          v115 = v133;
          (*(v132 + 16))(v131, a1, v133);
          v116 = sub_23815291C();
          v117 = sub_2381550DC();
          if (os_log_type_enabled(v116, v117))
          {
            v118 = swift_slowAlloc();
            v146 = v118;
            v148 = swift_slowAlloc();
            v149[0] = v148;
            *v118 = 136315138;
            v119 = v130;
            LODWORD(v147) = v117;
            sub_23815329C();
            sub_23812133C(&qword_27DEED5E8, MEMORY[0x277D54A88], MEMORY[0x277D54A90]);
            v145 = sub_23815559C();
            v120 = v114;
            v122 = v121;
            v123 = *(v28 + 8);
            v123(v119, v27);
            (*(v113 + 8))(v120, v133);
            v124 = sub_238085EAC(v145, v122, v149);

            v125 = v146;
            *(v146 + 1) = v124;
            v126 = v125;
            _os_log_impl(&dword_238060000, v116, v147, "Shouldn't get state %s for onlyExchange AirDrop", v125, 0xCu);
            v127 = v148;
            v128 = __swift_destroy_boxed_opaque_existential_1(v148);
            MEMORY[0x2383EA8A0](v127, -1, -1, v128);
            MEMORY[0x2383EA8A0](v126, -1, -1);
          }

          else
          {

            (*(v113 + 8))(v114, v115);
            v123 = *(v28 + 8);
          }

          return (v123)(v32, v27);
        }
      }
    }
  }

  return result;
}

uint64_t sub_2381185DC(uint64_t a1)
{
  v2 = sub_2381530BC();
  v110 = *(v2 - 8);
  v111 = v2;
  MEMORY[0x28223BE20](v2);
  v109 = &v109 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = sub_238152FBC();
  v116 = *(v121 - 8);
  v4 = MEMORY[0x28223BE20](v121);
  v115 = &v109 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v120 = &v109 - v6;
  v122 = sub_23815309C();
  isa = v122[-1].isa;
  v7 = MEMORY[0x28223BE20](v122);
  v112 = (&v109 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = MEMORY[0x28223BE20](v7);
  v113 = (&v109 - v10);
  v11 = MEMORY[0x28223BE20](v9);
  v114 = &v109 - v12;
  MEMORY[0x28223BE20](v11);
  v119 = &v109 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC500, &unk_23815E6B0);
  v118 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v109 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC508, &unk_23815C190);
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v109 - v19;
  v21 = sub_23815305C();
  v22 = *(v21 - 8);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v109 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v109 - v26;
  sub_23815306C();
  result = (*(v22 + 88))(v27, v21);
  if (result == *MEMORY[0x277D548E8])
  {
    (*(v22 + 96))(v27, v21);
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC518, &qword_23815C1A0);
    (*(v18 + 32))(v20, &v27[*(v29 + 48)], v17);
    sub_23811A190();
    (*(v18 + 8))(v20, v17);
LABEL_3:
    v30 = sub_23815354C();
    return (*(*(v30 - 8) + 8))(v27, v30);
  }

  v31 = v123;
  if (result == *MEMORY[0x277D548B0])
  {
    (*(v22 + 96))(v27, v21);
    if (*(v31 + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_userAction) != 3)
    {
      v32 = *(v31 + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_state);
      *(v31 + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_state) = 1;
      sub_23811D4D4(v32);
      sub_23811249C();
    }

    v30 = sub_23815362C();
    return (*(*(v30 - 8) + 8))(v27, v30);
  }

  if (result == *MEMORY[0x277D548E0])
  {
    (*(v22 + 96))(v27, v21);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC510, &unk_23815E6E0);
    v34 = v118;
    (*(v118 + 32))(v16, &v27[*(v33 + 48)], v14);
    if (qword_27DEEA108 != -1)
    {
      swift_once();
    }

    v35 = sub_23815293C();
    __swift_project_value_buffer(v35, qword_27DEED4B0);
    v36 = sub_23815291C();
    v37 = sub_2381550FC();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_238060000, v36, v37, "Auto accepting should import contact response", v38, 2u);
      MEMORY[0x2383EA8A0](v38, -1, -1);
    }

    sub_23811F934(v16, 1);
    (*(v34 + 8))(v16, v14);
    goto LABEL_3;
  }

  if (result == *MEMORY[0x277D548C0])
  {
    (*(v22 + 96))(v27, v21);
    v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED608, &unk_23815E6D0) + 48);
    v40 = isa;
    v41 = v119;
    v42 = v122;
    (*(isa + 4))(v119, v27, v122);
    v43 = v116;
    v44 = &v27[v39];
    v46 = v120;
    v45 = v121;
    (*(v116 + 32))(v120, v44, v121);
    if (qword_27DEEA108 != -1)
    {
      swift_once();
    }

    v47 = sub_23815293C();
    __swift_project_value_buffer(v47, qword_27DEED4B0);
    v48 = v115;
    v118 = *(v43 + 16);
    (v118)(v115, v46, v45);
    v49 = v114;
    (*(v40 + 2))(v114, v41, v42);
    v50 = sub_23815291C();
    v51 = sub_2381550FC();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v111 = v53;
      v113 = swift_slowAlloc();
      v124[0] = v113;
      *v52 = 138412546;
      sub_23812133C(&qword_27DEEC018, MEMORY[0x277D548A0], MEMORY[0x277D548A8]);
      swift_allocError();
      v112 = v50;
      (v118)(v54, v48, v121);
      v55 = _swift_stdlib_bridgeErrorToNSError();
      v118 = *(v43 + 8);
      (v118)(v48, v121);
      *(v52 + 4) = v55;
      *v53 = v55;
      *(v52 + 12) = 2080;
      sub_23812133C(&qword_27DEED600, MEMORY[0x277D54918], MEMORY[0x277D54920]);
      v56 = sub_23815559C();
      v58 = v57;
      v59 = v51;
      v60 = *(v40 + 1);
      v60(v49, v122);
      v61 = sub_238085EAC(v56, v58, v124);
      v62 = v122;

      *(v52 + 14) = v61;
      v63 = v59;
      v64 = v118;
      v65 = v112;
      _os_log_impl(&dword_238060000, v112, v63, "Boop2Meet AirDrop failed {ERROR: %@, Metrics: %s}", v52, 0x16u);
      v66 = v111;
      sub_238071284(v111, &unk_27DEECA10, &qword_2381588F0);
      MEMORY[0x2383EA8A0](v66, -1, -1);
      v67 = v113;
      v68 = __swift_destroy_boxed_opaque_existential_1(v113);
      MEMORY[0x2383EA8A0](v67, -1, -1, v68);
      v69 = v52;
      v45 = v121;
      MEMORY[0x2383EA8A0](v69, -1, -1);
    }

    else
    {

      v60 = *(v40 + 1);
      v60(v49, v42);
      v64 = *(v43 + 8);
      v64(v48, v45);
      v62 = v42;
    }

    sub_23811AB70();
    v64(v120, v45);
    return (v60)(v119, v62);
  }

  else
  {
    v70 = v122;
    if (result == *MEMORY[0x277D548D0])
    {
      (*(v22 + 96))(v27, v21);
      v71 = &v27[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED5F8, &unk_23815E6C0) + 48)];
      v72 = v71[1];
      v121 = *v71;
      v73 = isa;
      v74 = v113;
      (*(isa + 4))(v113, v27, v70);
      if (qword_27DEEA108 != -1)
      {
        swift_once();
      }

      v75 = sub_23815293C();
      __swift_project_value_buffer(v75, qword_27DEED4B0);
      v76 = v112;
      (*(v73 + 2))(v112, v74, v70);

      v77 = sub_23815291C();
      v78 = sub_2381550FC();

      if (os_log_type_enabled(v77, v78))
      {
        v79 = swift_slowAlloc();
        v120 = swift_slowAlloc();
        v125 = v120;
        *v79 = 136315394;
        sub_23812133C(&qword_27DEED600, MEMORY[0x277D54918], MEMORY[0x277D54920]);
        LODWORD(v119) = v78;
        v80 = sub_23815559C();
        v81 = v76;
        v83 = v82;
        v84 = *(v73 + 1);
        v85 = v70;
        v84(v81, v70);
        v86 = sub_238085EAC(v80, v83, &v125);

        *(v79 + 4) = v86;
        *(v79 + 12) = 2080;
        v87 = v121;
        v124[0] = v121;
        v124[1] = v72;

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEECE00, &qword_23815AD70);
        v88 = sub_238154D2C();
        v90 = sub_238085EAC(v88, v89, &v125);

        *(v79 + 14) = v90;
        _os_log_impl(&dword_238060000, v77, v119, "Boop2Meet AirDrop Successful {Metrics: %s, remoteContactIdentifier: %s}", v79, 0x16u);
        v91 = v120;
        swift_arrayDestroy();
        MEMORY[0x2383EA8A0](v91, -1, -1);
        v92 = v79;
        v74 = v113;
        MEMORY[0x2383EA8A0](v92, -1, -1);
      }

      else
      {

        v84 = *(v73 + 1);
        v85 = v70;
        v84(v76, v70);
        v87 = v121;
      }

      sub_23811A74C(v87, v72);

      return (v84)(v74, v85);
    }

    else if (result != *MEMORY[0x277D548F0])
    {
      if (qword_27DEEA108 != -1)
      {
        swift_once();
      }

      v93 = sub_23815293C();
      __swift_project_value_buffer(v93, qword_27DEED4B0);
      v95 = v109;
      v94 = v110;
      v96 = v111;
      (*(v110 + 16))(v109, a1, v111);
      v97 = sub_23815291C();
      v98 = sub_2381550DC();
      if (os_log_type_enabled(v97, v98))
      {
        v99 = swift_slowAlloc();
        v121 = v99;
        v123 = swift_slowAlloc();
        v124[0] = v123;
        *v99 = 136315138;
        v122 = v97;
        sub_23815306C();
        sub_23812133C(&qword_27DEED5F0, MEMORY[0x277D548F8], MEMORY[0x277D54900]);
        v119 = sub_23815559C();
        v100 = v95;
        v102 = v101;
        LODWORD(v120) = v98;
        v103 = *(v22 + 8);
        v103(v25, v21);
        (*(v94 + 8))(v100, v96);
        v104 = sub_238085EAC(v119, v102, v124);

        v105 = v121;
        *(v121 + 4) = v104;
        v106 = v122;
        _os_log_impl(&dword_238060000, v122, v120, "Shouldn't get state %s for onlyExchange AirDrop", v105, 0xCu);
        v107 = v123;
        v108 = __swift_destroy_boxed_opaque_existential_1(v123);
        MEMORY[0x2383EA8A0](v107, -1, -1, v108);
        MEMORY[0x2383EA8A0](v105, -1, -1);
      }

      else
      {

        (*(v94 + 8))(v95, v96);
        v103 = *(v22 + 8);
      }

      return (v103)(v27, v21);
    }
  }

  return result;
}

void sub_238119558()
{
  v52 = sub_2381532BC();
  v50 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v49 = &v46 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED5D8, &unk_23815E678);
  MEMORY[0x28223BE20](v2 - 8);
  v51 = &v46 - v3;
  v4 = sub_23815361C();
  v53 = *(v4 - 8);
  v54 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v46 = v6;
  v47 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v48 = &v46 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBA00, &qword_23815B4A0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v46 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC4E8, &qword_23815C178);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v46 - v12;
  v14 = sub_2381536AC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v18 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v46 - v19;
  v21 = OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_sendTransferID;
  swift_beginAccess();
  v55 = v0;
  sub_2380712E4(v0 + v21, v13, &qword_27DEEC4E8, &qword_23815C178);
  if ((*(v15 + 48))(v13, 1, v14) != 1)
  {
    v27 = *(v15 + 32);
    v27(v20, v13, v14);
    v28 = sub_238154FBC();
    (*(*(v28 - 8) + 56))(v10, 1, 1, v28);
    (*(v15 + 16))(v18, v20, v14);
    v29 = (*(v15 + 80) + 16) & ~*(v15 + 80);
    v30 = swift_allocObject();
    v27((v30 + v29), v18, v14);
    *(v30 + ((v16 + v29 + 7) & 0xFFFFFFFFFFFFFFF8)) = v55;

    sub_238154FEC();

    sub_238071284(v10, &qword_27DEEBA00, &qword_23815B4A0);
    (*(v15 + 8))(v20, v14);
    return;
  }

  sub_238071284(v13, &qword_27DEEC4E8, &qword_23815C178);
  v22 = OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_receiveTransfer;
  v23 = v55;
  swift_beginAccess();
  v24 = v50;
  v25 = v52;
  if ((*(v50 + 48))(v23 + v22, 1, v52))
  {
    v26 = v51;
    (*(v53 + 56))(v51, 1, 1, v54);
  }

  else
  {
    v31 = v23 + v22;
    v32 = v49;
    (*(v24 + 16))(v49, v31, v25);
    v26 = v51;
    sub_23815326C();
    (*(v24 + 8))(v32, v25);
    v34 = v53;
    v33 = v54;
    if ((*(v53 + 48))(v26, 1, v54) != 1)
    {
      v39 = *(v34 + 32);
      v40 = v48;
      v39(v48, v26, v33);
      v41 = sub_238154FBC();
      v42 = v10;
      (*(*(v41 - 8) + 56))(v10, 1, 1, v41);
      v43 = v47;
      (*(v34 + 16))(v47, v40, v33);
      v44 = (*(v34 + 80) + 16) & ~*(v34 + 80);
      v45 = swift_allocObject();
      v39((v45 + v44), v43, v33);
      sub_238154FEC();

      sub_238071284(v42, &qword_27DEEBA00, &qword_23815B4A0);
      (*(v34 + 8))(v40, v33);
      return;
    }
  }

  sub_238071284(v26, &qword_27DEED5D8, &unk_23815E678);
  if (qword_27DEEA108 != -1)
  {
    swift_once();
  }

  v35 = sub_23815293C();
  __swift_project_value_buffer(v35, qword_27DEED4B0);
  v36 = sub_23815291C();
  v37 = sub_2381550FC();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&dword_238060000, v36, v37, "No transfer ID or receive transfer to cancel yet", v38, 2u);
    MEMORY[0x2383EA8A0](v38, -1, -1);
  }
}

void sub_238119CDC()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_lockScreenService;
  [*(v0 + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_lockScreenService) invalidate];
  v3 = [objc_allocWithZone(MEMORY[0x277D66B30]) init];
  v4 = *(v0 + v2);
  *(v1 + v2) = v3;
  v5 = v3;

  if (qword_27DEEA108 != -1)
  {
    swift_once();
  }

  v6 = sub_23815293C();
  __swift_project_value_buffer(v6, qword_27DEED4B0);
  v7 = sub_23815291C();
  v8 = sub_2381550FC();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_238060000, v7, v8, "Requesting device unlock if necessary", v9, 2u);
    MEMORY[0x2383EA8A0](v9, -1, -1);
  }

  v10 = swift_allocObject();
  swift_weakInit();
  v12[4] = sub_23811D828;
  v12[5] = v10;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_23811A13C;
  v12[3] = &block_descriptor_8;
  v11 = _Block_copy(v12);

  [v5 requestPasscodeUnlockUIWithOptions:0 withCompletion:v11];
  _Block_release(v11);
}

void sub_238119EC0(char a1, uint64_t a2)
{
  if (a1)
  {
    if (qword_27DEEA108 != -1)
    {
      swift_once();
    }

    v2 = sub_23815293C();
    __swift_project_value_buffer(v2, qword_27DEED4B0);
    v3 = sub_23815291C();
    v4 = sub_2381550FC();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_238060000, v3, v4, "Device was unlocked", v5, 2u);
      MEMORY[0x2383EA8A0](v5, -1, -1);
    }
  }

  else
  {
    if (qword_27DEEA108 != -1)
    {
      swift_once();
    }

    v6 = sub_23815293C();
    __swift_project_value_buffer(v6, qword_27DEED4B0);
    v7 = sub_23815291C();
    v8 = sub_2381550FC();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_238060000, v7, v8, "Device was not unlocked", v9, 2u);
      MEMORY[0x2383EA8A0](v9, -1, -1);
    }

    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v11 = *(Strong + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_dismissViewAction);

      v11(v12);
    }
  }

  swift_beginAccess();
  v13 = swift_weakLoadStrong();
  if (v13)
  {
    v14 = *(v13 + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_lockScreenService);
    if (v14)
    {
      v15 = v14;

      [v15 invalidate];
    }

    else
    {
    }
  }

  swift_beginAccess();
  v16 = swift_weakLoadStrong();
  if (v16)
  {
    v17 = *(v16 + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_lockScreenService);
    *(v16 + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_lockScreenService) = 0;
  }
}

double sub_23811A13C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);

  return result;
}

uint64_t sub_23811A190()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED5D0, &qword_23815E670);
  MEMORY[0x28223BE20](v0 - 8);
  v30 = &v29 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC530, &qword_23815E3B0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v32 = &v29 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC538, &qword_23815C1D0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v31 = &v29 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC540, &qword_23815C1D8);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v29 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC508, &unk_23815C190);
  sub_23815365C();
  if ((*(v12 + 88))(v14, v11) == *MEMORY[0x277D54B90])
  {
    (*(v12 + 96))(v14, v11);

    v15 = *(v14 + 4);
    v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC550, &qword_23815C1E0) + 80);
    v17 = sub_23815361C();
    (*(*(v17 - 8) + 8))(&v14[v16], v17);
    v18 = *(v15 + 16);
    if (v18)
    {
      v19 = *(v6 + 16);
      v20 = v31;
      v19(v31, v15 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), v5);

      if (v18 == 1)
      {
        v19(v9, v20, v5);
        if ((*(v6 + 88))(v9, v5) == *MEMORY[0x277D54B60])
        {
          (*(v6 + 96))(v9, v5);
          v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC558, &qword_23815C1E8) + 48);
          v22 = v32;
          (*(v3 + 32))(v32, v9, v2);
          v23 = sub_2381527EC();
          (*(*(v23 - 8) + 8))(&v9[v21], v23);
          v24 = v30;
          (*(v3 + 16))(v30, v22, v2);
          (*(v3 + 56))(v24, 0, 1, v2);
          v25 = OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_contactPermissionResponseAction;
          v26 = v33;
          swift_beginAccess();
          sub_2381200D4(v24, v26 + v25);
          swift_endAccess();
          sub_238113068();
          sub_238071284(v24, &qword_27DEED5D0, &qword_23815E670);
          (*(v3 + 8))(v22, v2);
          return (*(v6 + 8))(v20, v5);
        }

        v28 = *(v6 + 8);
        v28(v20, v5);
        v28(v9, v5);
      }

      else
      {
        (*(v6 + 8))(v20, v5);
      }
    }

    else
    {
    }
  }

  else
  {
    (*(v12 + 8))(v14, v11);
  }

  result = sub_2381554EC();
  __break(1u);
  return result;
}

void sub_23811A74C(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBA00, &qword_23815B4A0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v30 - v7;
  if (a2)
  {
    if (qword_27DEEA108 != -1)
    {
      swift_once();
    }

    v9 = sub_23815293C();
    __swift_project_value_buffer(v9, qword_27DEED4B0);

    v10 = sub_23815291C();
    v11 = sub_2381550FC();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v31 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_238085EAC(a1, a2, &v31);
      _os_log_impl(&dword_238060000, v10, v11, "Fetching remote contact with identifier: %s", v12, 0xCu);
      v14 = __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x2383EA8A0](v13, -1, -1, v14);
      MEMORY[0x2383EA8A0](v12, -1, -1);
    }

    v30 = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
    v15 = sub_2380FEF6C(a1, a2);
    if (v15)
    {
      v16 = v15;
      v17 = sub_238154FBC();
      (*(*(v17 - 8) + 56))(v8, 1, 1, v17);
      sub_238154F8C();

      v18 = v16;
      v19 = sub_238154F7C();
      v20 = swift_allocObject();
      v21 = MEMORY[0x277D85700];
      v20[2] = v19;
      v20[3] = v21;
      v20[4] = v3;
      v20[5] = v18;
      sub_2380D2A4C(0, 0, v8, &unk_23815E720, v20);
    }

    else
    {

      v23 = sub_23815291C();
      v24 = sub_2381550DC();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v31 = v26;
        *v25 = 136315138;
        *(v25 + 4) = sub_238085EAC(a1, a2, &v31);
        _os_log_impl(&dword_238060000, v23, v24, "Failed to fetch contact from identifier: %s", v25, 0xCu);
        v27 = __swift_destroy_boxed_opaque_existential_1(v26);
        MEMORY[0x2383EA8A0](v26, -1, -1, v27);
        MEMORY[0x2383EA8A0](v25, -1, -1);
      }

      v28 = *(v3 + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_state);
      *(v3 + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_state) = 2;
      sub_23811D4D4(v28);
      sub_23811249C();
      sub_238111C60();
      v29 = v30;
    }
  }

  else
  {
    v22 = *(v2 + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_state);
    *(v2 + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_state) = 3;
    sub_23811D4D4(v22);
    sub_23811249C();

    sub_238111C60();
  }
}

void sub_23811AB70()
{
  v1 = v0;
  if (qword_27DEEA108 != -1)
  {
    swift_once();
  }

  v2 = sub_23815293C();
  __swift_project_value_buffer(v2, qword_27DEED4B0);
  v3 = sub_23815291C();
  v4 = sub_2381550FC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_238060000, v3, v4, "Setting state to error", v5, 2u);
    MEMORY[0x2383EA8A0](v5, -1, -1);
  }

  v6 = *(v1 + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_state);
  *(v1 + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_state) = 2;
  sub_23811D4D4(v6);
  sub_23811249C();

  sub_238111C60();
}

uint64_t sub_23811AC7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBDA8, &qword_23815AEC0);
  *v7 = v5;
  v7[1] = sub_238087150;

  return MEMORY[0x2821B6230](a5, v8);
}

uint64_t sub_23811AD40(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v8 = *v7;
  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC000, &qword_23815B500);
    v9 = swift_allocError();
    *v10 = a4;
    v11 = a4;

    return MEMORY[0x282200958](v8, v9);
  }

  else
  {
    if (a3)
    {
      v12 = *(v8[8] + 40);
      *v12 = a2;
      v12[1] = a3;
      v13 = a2;
      v14 = a3;
      v7 = v8;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200950](v7);
  }
}

uint64_t sub_23811AE20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[7] = sub_238154F8C();
  v5[8] = sub_238154F7C();
  v7 = swift_task_alloc();
  v5[9] = v7;
  *v7 = v5;
  v7[1] = sub_23811AED0;

  return sub_23812061C(a5);
}

uint64_t sub_23811AED0()
{
  *(*v1 + 80) = v0;

  v3 = sub_238154F3C();
  if (v0)
  {
    v4 = sub_23811B168;
  }

  else
  {
    v4 = sub_23811B02C;
  }

  return MEMORY[0x2822009F8](v4, v3, v2);
}

uint64_t sub_23811B02C()
{

  super_class = v0[2].super_class;
  receiver = v0[3].receiver;
  v4 = type metadata accessor for SnapshottingContactViewController(0, v3);
  v5 = objc_allocWithZone(v4);
  v5[OBJC_IVAR____TtC17DeviceDiscoveryUI33SnapshottingContactViewController_phase] = 0;
  v6 = &v5[OBJC_IVAR____TtC17DeviceDiscoveryUI33SnapshottingContactViewController_dismiss];
  *v6 = 0;
  v6[1] = 0;
  *&v5[OBJC_IVAR____TtC17DeviceDiscoveryUI33SnapshottingContactViewController____lazy_storage___viewController] = 0;
  *&v5[OBJC_IVAR____TtC17DeviceDiscoveryUI33SnapshottingContactViewController_snapshotView] = 0;
  *&v5[OBJC_IVAR____TtC17DeviceDiscoveryUI33SnapshottingContactViewController_contact] = receiver;
  v0[1].receiver = v5;
  v0[1].super_class = v4;
  v7 = receiver;
  v8 = objc_msgSendSuper2(v0 + 1, sel_initWithNibName_bundle_, 0, 0);
  sub_23813275C(v8[OBJC_IVAR____TtC17DeviceDiscoveryUI33SnapshottingContactViewController_phase], v9);
  v10 = *(super_class + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_state);
  *(super_class + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_state) = v8;
  v11 = v8;
  sub_23811D4D4(v10);
  sub_23811249C();

  sub_238111C60();
  v12 = v0->super_class;

  return v12();
}

uint64_t sub_23811B168()
{
  v29 = v0;

  if (qword_27DEEA108 != -1)
  {
    swift_once();
  }

  receiver = v0[5].receiver;
  v2 = sub_23815293C();
  __swift_project_value_buffer(v2, qword_27DEED4B0);
  v3 = receiver;
  v4 = sub_23815291C();
  v5 = sub_2381550DC();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[5].receiver;
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v28 = v9;
    *v8 = 136315138;
    v0[2].receiver = v7;
    v10 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC000, &qword_23815B500);
    v11 = sub_238154D2C();
    v13 = sub_238085EAC(v11, v12, &v28);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_238060000, v4, v5, "Unable to prewarm poster cache: %s", v8, 0xCu);
    v14 = __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x2383EA8A0](v9, -1, -1, v14);
    MEMORY[0x2383EA8A0](v8, -1, -1);
  }

  else
  {
  }

  super_class = v0[2].super_class;
  v17 = v0[3].receiver;
  v18 = type metadata accessor for SnapshottingContactViewController(0, v15);
  v19 = objc_allocWithZone(v18);
  v19[OBJC_IVAR____TtC17DeviceDiscoveryUI33SnapshottingContactViewController_phase] = 0;
  v20 = &v19[OBJC_IVAR____TtC17DeviceDiscoveryUI33SnapshottingContactViewController_dismiss];
  *v20 = 0;
  v20[1] = 0;
  *&v19[OBJC_IVAR____TtC17DeviceDiscoveryUI33SnapshottingContactViewController____lazy_storage___viewController] = 0;
  *&v19[OBJC_IVAR____TtC17DeviceDiscoveryUI33SnapshottingContactViewController_snapshotView] = 0;
  *&v19[OBJC_IVAR____TtC17DeviceDiscoveryUI33SnapshottingContactViewController_contact] = v17;
  v0[1].receiver = v19;
  v0[1].super_class = v18;
  v21 = v17;
  v22 = objc_msgSendSuper2(v0 + 1, sel_initWithNibName_bundle_, 0, 0);
  sub_23813275C(v22[OBJC_IVAR____TtC17DeviceDiscoveryUI33SnapshottingContactViewController_phase], v23);
  v24 = *(super_class + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_state);
  *(super_class + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_state) = v22;
  v25 = v22;
  sub_23811D4D4(v24);
  sub_23811249C();

  sub_238111C60();
  v26 = v0->super_class;

  return v26();
}

uint64_t sub_23811B40C(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 72) = a3;
  *(v4 + 80) = a4;
  *(v4 + 233) = a2;
  v5 = sub_23815354C();
  *(v4 + 88) = v5;
  *(v4 + 96) = *(v5 - 8);
  *(v4 + 104) = swift_task_alloc();
  v6 = sub_23815352C();
  *(v4 + 112) = v6;
  *(v4 + 120) = *(v6 - 8);
  *(v4 + 128) = swift_task_alloc();
  *(v4 + 136) = swift_task_alloc();
  v7 = sub_23815362C();
  *(v4 + 144) = v7;
  *(v4 + 152) = *(v7 - 8);
  *(v4 + 160) = swift_task_alloc();
  *(v4 + 168) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23811B5A0, 0, 0);
}

uint64_t sub_23811B5A0()
{
  if (!*(v0 + 233))
  {
    goto LABEL_19;
  }

  if (*(v0 + 233) == 1)
  {
    if (qword_27DEEA108 != -1)
    {
      swift_once();
    }

    v1 = sub_23815293C();
    __swift_project_value_buffer(v1, qword_27DEED4B0);
    v2 = sub_23815291C();
    v3 = sub_2381550FC();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_238060000, v2, v3, "Accepting NameDrop with receive only", v4, 2u);
      MEMORY[0x2383EA8A0](v4, -1, -1);
    }

    v5 = *(v0 + 168);
    v6 = *(v0 + 144);
    v7 = *(v0 + 152);

    (*(v7 + 104))(v5, *MEMORY[0x277D54B80], v6);
    v8 = swift_task_alloc();
    *(v0 + 176) = v8;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC530, &qword_23815E3B0);
    *v8 = v0;
    v8[1] = sub_23811BDD0;
    v10 = *(v0 + 168);
    goto LABEL_8;
  }

  v11 = *(*(v0 + 80) + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_meCardContactProvider);
  *(v0 + 192) = v11;
  if (v11 < 2)
  {
    goto LABEL_14;
  }

  sub_23815288C();
  swift_getKeyPath();
  swift_getKeyPath();
  v12 = v11;
  sub_238152A8C();

  v13 = *(v0 + 48);
  v14 = sub_23815286C();
  v16 = v15;

  *(v0 + 200) = v14;
  *(v0 + 208) = v16;
  if (v16 >> 60 != 15)
  {
    if (qword_27DEEA108 != -1)
    {
      swift_once();
    }

    v23 = sub_23815293C();
    __swift_project_value_buffer(v23, qword_27DEED4B0);
    v24 = sub_23815291C();
    v25 = sub_2381550FC();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_238060000, v24, v25, "Accepting NameDrop with share", v26, 2u);
      MEMORY[0x2383EA8A0](v26, -1, -1);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_238152A8C();

    v27 = *(v0 + 56);
    v28 = sub_23815528C();
    v30 = v29;

    v31 = HIBYTE(v30) & 0xF;
    if ((v30 & 0x2000000000000000) == 0)
    {
      v31 = v28 & 0xFFFFFFFFFFFFLL;
    }

    if (!v31)
    {

      v18 = sub_23815291C();
      v36 = sub_2381550EC();

      if (os_log_type_enabled(v18, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        *v37 = 138412290;
        swift_getKeyPath();
        swift_getKeyPath();
        sub_238152A8C();

        v39 = *(v0 + 64);
        *(v37 + 4) = v39;
        *v38 = v39;
        _os_log_impl(&dword_238060000, v18, v36, "no handle for contact:%@", v37, 0xCu);
        sub_238071284(v38, &unk_27DEECA10, &qword_2381588F0);
        MEMORY[0x2383EA8A0](v38, -1, -1);
        MEMORY[0x2383EA8A0](v37, -1, -1);
      }

      sub_23809BF44(v11);
      sub_238087244(v14, v16);
      goto LABEL_18;
    }

    *(v0 + 16) = v28;
    *(v0 + 24) = v30;
    *(v0 + 32) = 64;
    *(v0 + 40) = 0xE100000000000000;
    sub_2380704A0();
    v32 = sub_23815533C();
    v33 = sub_238154C8C();
    v57 = v16;
    v58 = v14;
    v56 = v12;
    if (v32)
    {
      v34 = CUNormalizeEmailAddress();

      if (v34)
      {
        v35 = MEMORY[0x277D54B40];
LABEL_36:
        v50 = v35;
        v40 = *(v0 + 152);
        v41 = *(v0 + 136);
        v54 = *(v0 + 160);
        v55 = *(v0 + 144);
        v42 = *(v0 + 120);
        v43 = *(v0 + 112);
        v51 = *(v0 + 128);
        v52 = *(v0 + 104);
        v44 = *(v0 + 96);
        v53 = *(v0 + 88);

        v45 = sub_238154CCC();
        v47 = v46;

        *v41 = v45;
        v41[1] = v47;
        (*(v42 + 104))(v41, *v50, v43);
        v48 = v56;
        sub_23815529C();
        sub_23809BF44(v11);
        (*(v42 + 16))(v51, v41, v43);
        sub_2380E6764(v58, v57);
        sub_23815353C();
        (*(v44 + 16))(v54, v52, v53);
        (*(v40 + 104))(v54, *MEMORY[0x277D54B78], v55);
        v49 = swift_task_alloc();
        *(v0 + 216) = v49;
        v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC530, &qword_23815E3B0);
        *v49 = v0;
        v49[1] = sub_23811BFA0;
        v10 = *(v0 + 160);
LABEL_8:

        return MEMORY[0x2821B6230](v10, v9);
      }

      __break(1u);
    }

    else
    {
      v34 = CUNormalizePhoneNumber();

      if (v34)
      {
        v35 = MEMORY[0x277D54B48];
        goto LABEL_36;
      }
    }

    __break(1u);
    return MEMORY[0x2821B6230](v10, v9);
  }

  sub_23809BF44(v11);
LABEL_14:
  if (qword_27DEEA108 != -1)
  {
    swift_once();
  }

  v17 = sub_23815293C();
  __swift_project_value_buffer(v17, qword_27DEED4B0);
  v18 = sub_23815291C();
  v19 = sub_2381550DC();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_238060000, v18, v19, "Unable to fetch vCard", v20, 2u);
    MEMORY[0x2383EA8A0](v20, -1, -1);
  }

LABEL_18:

LABEL_19:

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_23811BDD0()
{
  v2 = *(*v1 + 168);
  v3 = *(*v1 + 152);
  v4 = *(*v1 + 144);
  v5 = *v1;
  *(v5 + 184) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_23811C208, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_23811BFA0()
{
  v2 = *(*v1 + 160);
  v3 = *(*v1 + 152);
  v4 = *(*v1 + 144);
  *(*v1 + 224) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_23811C450;
  }

  else
  {
    v5 = sub_23811C110;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_23811C110()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 208);
  v3 = *(v0 + 136);
  v4 = *(v0 + 112);
  v5 = *(v0 + 120);
  v7 = *(v0 + 96);
  v6 = *(v0 + 104);
  v8 = *(v0 + 88);
  sub_23809BF44(*(v0 + 192));
  v9 = sub_238087244(v1, v2);
  (*(v7 + 8))(v6, v8, v9);
  (*(v5 + 8))(v3, v4);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_23811C208()
{
  v19 = v0;
  v1 = *(v0 + 184);
  if (qword_27DEEA108 != -1)
  {
    swift_once();
  }

  v2 = sub_23815293C();
  __swift_project_value_buffer(v2, qword_27DEED4B0);
  v3 = v1;
  v4 = sub_23815291C();
  v5 = sub_2381550DC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 233);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v7 = 136315394;
    *(v0 + 232) = v6;
    v10 = sub_238154D2C();
    v12 = sub_238085EAC(v10, v11, &v18);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2112;
    v13 = v1;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v14;
    *v8 = v14;
    _os_log_impl(&dword_238060000, v4, v5, "Failed to process user action %s: %@", v7, 0x16u);
    sub_238071284(v8, &unk_27DEECA10, &qword_2381588F0);
    MEMORY[0x2383EA8A0](v8, -1, -1);
    v15 = __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x2383EA8A0](v9, -1, -1, v15);
    MEMORY[0x2383EA8A0](v7, -1, -1);
  }

  else
  {
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_23811C450()
{
  v28 = v0;
  v1 = *(v0 + 200);
  v2 = *(v0 + 208);
  v3 = *(v0 + 136);
  v4 = *(v0 + 112);
  v5 = *(v0 + 120);
  v7 = *(v0 + 96);
  v6 = *(v0 + 104);
  v8 = *(v0 + 88);
  sub_23809BF44(*(v0 + 192));
  v9 = sub_238087244(v1, v2);
  (*(v7 + 8))(v6, v8, v9);
  (*(v5 + 8))(v3, v4);
  v10 = *(v0 + 224);
  if (qword_27DEEA108 != -1)
  {
    swift_once();
  }

  v11 = sub_23815293C();
  __swift_project_value_buffer(v11, qword_27DEED4B0);
  v12 = v10;
  v13 = sub_23815291C();
  v14 = sub_2381550DC();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = *(v0 + 233);
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v27 = v18;
    *v16 = 136315394;
    *(v0 + 232) = v15;
    v19 = sub_238154D2C();
    v21 = sub_238085EAC(v19, v20, &v27);

    *(v16 + 4) = v21;
    *(v16 + 12) = 2112;
    v22 = v10;
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 14) = v23;
    *v17 = v23;
    _os_log_impl(&dword_238060000, v13, v14, "Failed to process user action %s: %@", v16, 0x16u);
    sub_238071284(v17, &unk_27DEECA10, &qword_2381588F0);
    MEMORY[0x2383EA8A0](v17, -1, -1);
    v24 = __swift_destroy_boxed_opaque_existential_1(v18);
    MEMORY[0x2383EA8A0](v18, -1, -1, v24);
    MEMORY[0x2383EA8A0](v16, -1, -1);
  }

  else
  {
  }

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_23811C6F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  v4 = sub_2381536AC();
  v3[4] = v4;
  v3[5] = *(v4 - 8);
  v3[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23811C7B0, 0, 0);
}

uint64_t sub_23811C7B0()
{
  v23 = v0;
  if (qword_27DEEA108 != -1)
  {
    swift_once();
  }

  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = v0[2];
  v5 = sub_23815293C();
  v0[7] = __swift_project_value_buffer(v5, qword_27DEED4B0);
  (*(v2 + 16))(v1, v4, v3);
  v6 = sub_23815291C();
  v7 = sub_2381550FC();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[5];
  v9 = v0[6];
  v11 = v0[4];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v22 = v13;
    *v12 = 136315138;
    sub_23812133C(&qword_27DEED5E0, MEMORY[0x277D54BD0], MEMORY[0x277D54BE8]);
    v14 = sub_23815559C();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_238085EAC(v14, v16, &v22);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_238060000, v6, v7, "Attempting to cancel sent NameDrop with id %s", v12, 0xCu);
    v18 = __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x2383EA8A0](v13, -1, -1, v18);
    MEMORY[0x2383EA8A0](v12, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v19 = swift_task_alloc();
  v0[8] = v19;
  *v19 = v0;
  v19[1] = sub_23811CA38;
  v20 = v0[2];

  return MEMORY[0x2821B5F60](v20);
}

uint64_t sub_23811CA38()
{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_23811CB74, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_23811CB74(uint64_t a1)
{
  v2 = sub_23815291C();
  v3 = sub_2381550DC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_238060000, v2, v3, "Failed to cancel NameDrop", v4, 2u);
    MEMORY[0x2383EA8A0](v4, -1, -1);
  }

  v5 = *(v1 + 8);

  return v5();
}

uint64_t sub_23811CC74()
{
  if (qword_27DEEA108 != -1)
  {
    swift_once();
  }

  v1 = sub_23815293C();
  *(v0 + 24) = __swift_project_value_buffer(v1, qword_27DEED4B0);
  v2 = sub_23815291C();
  v3 = sub_2381550FC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_238060000, v2, v3, "Attempting to cancel received NameDrop", v4, 2u);
    MEMORY[0x2383EA8A0](v4, -1, -1);
  }

  v5 = swift_task_alloc();
  *(v0 + 32) = v5;
  *v5 = v0;
  v5[1] = sub_23811CDC8;

  return MEMORY[0x2821B6270]();
}

uint64_t sub_23811CDC8()
{
  v2 = *v1;
  *(v2 + 40) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_23811CEFC, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_23811CEFC(uint64_t a1)
{
  v2 = sub_23815291C();
  v3 = sub_2381550DC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_238060000, v2, v3, "Failed to cancel NameDrop", v4, 2u);
    MEMORY[0x2383EA8A0](v4, -1, -1);
  }

  v5 = *(v1 + 8);

  return v5();
}

void sub_23811CFD4()
{
  v1 = *v0;
  v2 = *(*v0 + 2);
  if (!v2)
  {
    return;
  }

  v3 = v2 - 1;
  if (v2 == 1)
  {
    return;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_17:
    v1 = sub_23811D288(v1);
  }

  v2 = &v1[16 * v2 + 24];
  v4 = (v1 + 40);
  v5 = 1;
  while (1)
  {
    if (v5 - 1 == v3)
    {
      goto LABEL_6;
    }

    v7 = *(v1 + 2);
    if (v5 - 1 >= v7)
    {
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    if (v3 >= v7)
    {
      goto LABEL_16;
    }

    v8 = *(v4 - 1);
    v9 = *v4;
    v10 = *v2;
    *(v4 - 1) = *(v2 - 8);
    *v4 = v10;
    v11 = *(v1 + 2);

    if (v3 >= v11)
    {
      break;
    }

    *(v2 - 8) = v8;
    *v2 = v9;

LABEL_6:
    --v3;
    v2 -= 16;
    v4 += 2;
    if (v5++ >= v3)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_13:
  *v0 = v1;
}

uint64_t sub_23811D0CC()
{
  v1 = 0x2065766965636552;
  if (*v0 != 1)
  {
    v1 = 0x6572616853;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C65636E6143;
  }
}

double sub_23811D128(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (a4 != 3)
  {
    return sub_23811D138(a1, a2, a3, a4, a5);
  }

  return result;
}

double sub_23811D138(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if ((a4 - 1) >= 2)
  {
    sub_23807BE0C(a1, a2, a3, a4);
  }

  return result;
}

void sub_23811D18C(id *a1)
{
  v1 = *a1;
  sub_23811D394(v1);
}

uint64_t sub_23811D1D8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_23811D2CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  *(v5 + 24) = *a5;
  v6 = swift_task_alloc();
  *(v5 + 16) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC568, &qword_23815C220);
  *v6 = v5;
  v6[1] = sub_238087150;

  return MEMORY[0x2821B6230](v5 + 24, v7);
}

void sub_23811D394(void *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  swift_getKeyPath();
  swift_getKeyPath();

  v2 = a1;
  sub_238152A9C();
  if (sub_23815526C())
  {
    sub_23815288C();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_238152A8C();

    sub_23815287C();
  }

  sub_23811249C();
}

void sub_23811D4D4(id a1)
{
  if (a1 >= 4)
  {
  }
}

uint64_t sub_23811D4E4()
{
  v1 = sub_23815361C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7, v6);
}

uint64_t sub_23811D56C(uint64_t a1)
{
  v4 = *(sub_23815361C() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_238087150;

  return sub_23811CC54(a1, v1 + v5);
}

uint64_t sub_23811D648()
{
  v1 = sub_2381536AC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7, v6);
}

uint64_t sub_23811D6E4(uint64_t a1)
{
  v4 = *(sub_2381536AC() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_238088780;

  return sub_23811C6F0(a1, v1 + v5, v6);
}

uint64_t sub_23811D7F0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7, v1);
}

double block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t sub_23811D848()
{
  result = qword_27DEEC5E8;
  if (!qword_27DEEC5E8)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEC5E0, &qword_23815C2D0);
    result = swift_getWitnessTable(MEMORY[0x277D54AF0], v3, v0, v1);
    atomic_store(result, &qword_27DEEC5E8);
  }

  return result;
}

uint64_t sub_23811D8AC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_23811D914(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v159 = a3;
  v158 = a2;
  v166 = a1;
  v185 = *MEMORY[0x277D85DE8];
  v162 = sub_23815313C();
  v161 = *(v162 - 8);
  MEMORY[0x28223BE20](v162);
  v160 = &v150 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = sub_2381527EC();
  v156 = *(v157 - 8);
  MEMORY[0x28223BE20](v157);
  v155 = &v150 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED5C0, &qword_23815E658);
  v164 = *(v165 - 8);
  MEMORY[0x28223BE20](v165);
  v154 = &v150 - v7;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC190, &qword_23815B890);
  v152 = *(v153 - 1);
  MEMORY[0x28223BE20](v153);
  v9 = &v150 - v8;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB9E0, &unk_23815D810);
  v10 = *(v151 - 8);
  MEMORY[0x28223BE20](v151);
  v12 = &v150 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED5B8, &qword_23815E650);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v150 - v15;
  v150 = OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController__viewModel;
  v17 = sub_2381545FC();
  v18 = sub_2381545FC();
  v19 = sub_2381545FC();
  v163 = objc_opt_self();
  v20 = *MEMORY[0x277D74400];
  v21 = [v163 systemFontOfSize:60.0 weight:*MEMORY[0x277D74400]];
  v169 = 0;
  aBlock = 0;
  v170 = 0;
  v171 = xmmword_23815E310;
  LOBYTE(v172) = 0;
  v173 = 0;
  v174 = v17;
  v175 = v18;
  v176 = v19;
  v177 = v21;
  v178 = 0;
  v179 = 0;
  v180 = 0xE000000000000000;
  v181 = 0u;
  v182 = 0u;
  v183 = 0;
  v184 = xmmword_2381587F0;
  sub_238152A5C();
  (*(v14 + 32))(v4 + v150, v16, v13);
  v22 = OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController__canChangeFieldSelection;
  LOBYTE(aBlock) = 1;
  sub_238152A5C();
  v23 = *(v10 + 32);
  v24 = v151;
  v23(v4 + v22, v12, v151);
  v25 = OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController__animatePersonalInformationChange;
  aBlock = 0;
  sub_238152A5C();
  (*(v152 + 32))(v4 + v25, v9, v153);
  v26 = OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController__hasReviewInfoButton;
  LOBYTE(aBlock) = 0;
  sub_238152A5C();
  v23(v4 + v26, v12, v24);
  v27 = OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController__fieldSelection;
  aBlock = [objc_allocWithZone(MEMORY[0x277CBDA58]) init];
  sub_23807A3F8(0, &qword_27DEEE300, 0x277CBDA58);
  v28 = v154;
  sub_238152A5C();
  (*(v164 + 32))(v4 + v27, v28, v165);
  *(v4 + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_state) = 0;
  *(v4 + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_lockScreenService) = 0;
  *(v4 + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_isInvalidated) = 0;
  *(v4 + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_transferMonitoringTask) = 0;
  v29 = OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_receiveTransfer;
  v30 = sub_2381532BC();
  (*(*(v30 - 8) + 56))(v4 + v29, 1, 1, v30);
  v31 = OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_sendTransferID;
  v32 = sub_2381536AC();
  (*(*(v32 - 8) + 56))(v4 + v31, 1, 1, v32);
  v33 = OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_contactPermissionResponseAction;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC530, &qword_23815E3B0);
  (*(*(v34 - 8) + 56))(v4 + v33, 1, 1, v34);
  *(v4 + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_userAction) = 3;
  v35 = OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_nameFont;
  *(v4 + v35) = [v163 systemFontOfSize:60.0 weight:v20];
  v36 = (v4 + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_computedTextColors);
  v37 = sub_2381545FC();
  v38 = sub_2381545FC();
  v39 = sub_2381545FC();
  *v36 = v37;
  v36[1] = v38;
  v36[2] = v39;
  *(v4 + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_posterImage) = 0;
  v165 = v4;
  *(v4 + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController____lazy_storage___contactsIconImage) = 0;
  if (qword_27DEEA108 != -1)
  {
    swift_once();
  }

  v40 = sub_23815293C();
  v41 = __swift_project_value_buffer(v40, qword_27DEED4B0);
  v42 = v156;
  v43 = *(v156 + 16);
  v44 = v155;
  v45 = v166;
  v46 = v157;
  v43(v155, v166, v157);
  v164 = v41;
  v47 = sub_23815291C();
  v48 = sub_2381550FC();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v154 = v43;
    v50 = v44;
    v51 = v49;
    v153 = swift_slowAlloc();
    aBlock = v153;
    *v51 = 136315138;
    sub_23812133C(&qword_27DEED670, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v52 = sub_23815559C();
    v54 = v53;
    v55 = *(v42 + 8);
    v56 = v50;
    v43 = v154;
    v55(v56, v46);
    v57 = sub_238085EAC(v52, v54, &aBlock);

    *(v51 + 4) = v57;
    v45 = v166;
    _os_log_impl(&dword_238060000, v47, v48, "Creating NameDrop session controller for transaction %s", v51, 0xCu);
    v58 = v153;
    v59 = __swift_destroy_boxed_opaque_existential_1(v153);
    MEMORY[0x2383EA8A0](v58, -1, -1, v59);
    MEMORY[0x2383EA8A0](v51, -1, -1);
  }

  else
  {

    v55 = *(v42 + 8);
    v55(v44, v46);
  }

  v60 = v165;
  v43((v165 + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_transactionIdentifier), v45, v46);
  v61 = (v60 + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_dismissViewAction);
  v62 = v159;
  *v61 = v158;
  v61[1] = v62;

  v63 = *(**sub_2381528AC() + 136);

  v65 = v63(v64);

  if (v65)
  {
    v66 = *(sub_2381552BC() + 16);

    if (v66)
    {
      goto LABEL_12;
    }
  }

  v67 = sub_23815291C();
  v68 = sub_2381550DC();
  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    *v69 = 0;
    _os_log_impl(&dword_238060000, v67, v68, "NameDrop unable to find a local contact", v69, 2u);
    MEMORY[0x2383EA8A0](v69, -1, -1);
  }

  v65 = 0;
LABEL_12:
  *(v60 + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_meCardContactProvider) = v65;
  sub_2381531EC();
  (*(v161 + 104))(v160, *MEMORY[0x277D54998], v162);
  *(v60 + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_airDropClient) = sub_23815314C();
  sub_23815332C();
  swift_allocObject();
  *(v60 + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_lockStateMonitor) = sub_23815331C();
  sub_23812133C(&qword_27DEED660, type metadata accessor for NameDropSessionController, byte_23815E4D0);

  sub_23815330C();

  v70 = *(v60 + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_meCardContactProvider);
  if (v70)
  {
    if (v70 == 1)
    {
      v71 = sub_23815291C();
      v72 = sub_2381550DC();
      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        *v73 = 0;
        v74 = "NameDrop: None case";
LABEL_18:
        _os_log_impl(&dword_238060000, v71, v72, v74, v73, 2u);
        MEMORY[0x2383EA8A0](v73, -1, -1);
        goto LABEL_19;
      }

      goto LABEL_19;
    }

    sub_23815288C();
    v70;
    v76 = MEMORY[0x2383E6E90](v70);
    sub_23811D394(v76);

    swift_getKeyPath();
    swift_getKeyPath();
    sub_238152A8C();

    v77 = aBlock;
    LOBYTE(v76) = sub_23815526C();

    if ((v76 & 1) == 0)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_238152A8C();

      v78 = aBlock;
      [aBlock mutableCopy];

      sub_23815534C();
      swift_unknownObjectRelease();
      sub_23807A3F8(0, &qword_27DEEC050, 0x277CBDB38);
      if (swift_dynamicCast())
      {
        v79 = v167;
        v80 = sub_23815291C();
        v81 = sub_2381550FC();
        if (os_log_type_enabled(v80, v81))
        {
          v82 = swift_slowAlloc();
          *v82 = 0;
          _os_log_impl(&dword_238060000, v80, v81, "No NameDrop preferences; selecting a default handle", v82, 2u);
          MEMORY[0x2383EA8A0](v82, -1, -1);
        }

        v83 = sub_2381552DC();
        v84 = [v83 emailAddresses];
        if (!v84)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED668, &unk_23815E7D0);
          sub_238154EDC();
          v84 = sub_238154ECC();
        }

        [v79 setEmailAddresses_];

        v85 = [v83 phoneNumbers];
        if (!v85)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED668, &unk_23815E7D0);
          sub_238154EDC();
          v85 = sub_238154ECC();
        }

        [v79 setPhoneNumbers_];

        v86 = v79;
        v87 = v165;
        sub_23811D394(v86);

        v60 = v87;
      }
    }

    v162 = v55;
    v88 = sub_2381552AC();
    v90 = v88;
    v91 = v89;
    if (v89 >> 60 == 15)
    {
      v92 = sub_23815291C();
      v93 = sub_2381550FC();
      if (!os_log_type_enabled(v92, v93))
      {

        sub_23809BF44(v70);
LABEL_54:
        v75 = v166;
        v55 = v162;
        goto LABEL_55;
      }

      v94 = swift_slowAlloc();
      *v94 = 0;
      _os_log_impl(&dword_238060000, v92, v93, "NameDrop no poster for me card", v94, 2u);
      MEMORY[0x2383EA8A0](v94, -1, -1);

      sub_23809BF44(v70);
      v95 = v90;
    }

    else
    {
      sub_238085D80(v88, v89);
      v96 = sub_23815291C();
      v97 = sub_2381550FC();
      if (os_log_type_enabled(v96, v97))
      {
        v98 = swift_slowAlloc();
        *v98 = 0;
        _os_log_impl(&dword_238060000, v96, v97, "Fetching poster configuration", v98, 2u);
        MEMORY[0x2383EA8A0](v98, -1, -1);
      }

      v99 = objc_opt_self();
      v161 = v90;
      v100 = sub_23815274C();
      aBlock = 0;
      v101 = [v99 unarchiveConfigurationFromData:v100 format:-1 error:&aBlock];

      v102 = aBlock;
      if (v101)
      {
        v103 = v101;
        v104 = v102;
        v105 = sub_23815291C();
        v106 = sub_2381550FC();

        if (os_log_type_enabled(v105, v106))
        {
          v107 = swift_slowAlloc();
          v108 = swift_slowAlloc();
          *v107 = 138412290;
          *(v107 + 4) = v103;
          *v108 = v101;
          _os_log_impl(&dword_238060000, v105, v106, "Received poster configuration: %@", v107, 0xCu);
          sub_238071284(v108, &unk_27DEECA10, &qword_2381588F0);
          MEMORY[0x2383EA8A0](v108, -1, -1);
          MEMORY[0x2383EA8A0](v107, -1, -1);
        }

        else
        {
        }

        sub_238087244(v161, v91);

        v120 = v103;
        v121 = sub_23815291C();
        v122 = sub_2381550FC();
        if (os_log_type_enabled(v121, v122))
        {
          v123 = swift_slowAlloc();
          *v123 = 0;
          _os_log_impl(&dword_238060000, v121, v122, "Fetching poster font", v123, 2u);
          MEMORY[0x2383EA8A0](v123, -1, -1);
        }

        v124 = objc_opt_self();
        aBlock = 0;
        v125 = [v124 titleStyleAttributesForConfiguration:v120 error:&aBlock];
        if (v125)
        {
          v126 = v125;
          v127 = aBlock;
          v128 = v126;
          v129 = sub_23815291C();
          v130 = sub_2381550FC();

          v131 = &off_278A48000;
          if (os_log_type_enabled(v129, v130))
          {
            v132 = swift_slowAlloc();
            v133 = swift_slowAlloc();
            *v132 = 138412290;
            v134 = [v128 titleFont];
            *(v132 + 4) = v134;
            *v133 = v134;
            _os_log_impl(&dword_238060000, v129, v130, "Received poster font: %@", v132, 0xCu);
            sub_238071284(v133, &unk_27DEECA10, &qword_2381588F0);
            MEMORY[0x2383EA8A0](v133, -1, -1);
            v135 = v132;
            v131 = &off_278A48000;
            MEMORY[0x2383EA8A0](v135, -1, -1);
          }

          v136 = [v128 v131[395]];
          v137 = [v136 fontDescriptor];

          v138 = [v163 fontWithDescriptor:v137 size:60.0];
          v139 = *(v165 + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_nameFont);
          *(v165 + OBJC_IVAR____TtC17DeviceDiscoveryUI25NameDropSessionController_nameFont) = v138;
        }

        else
        {
          v140 = aBlock;
          v141 = sub_23815266C();

          swift_willThrow();
        }

        v142 = [objc_allocWithZone(MEMORY[0x277D3EA90]) initWithTitleString:0 horizontalTitleBoundingRect:0 verticalTitleBoundingRect:1 imageAssetID:*MEMORY[0x277CBF3A0] personalPoster:{*(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24), *MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
        v143 = [objc_allocWithZone(MEMORY[0x277D3EB08]) initWithConfiguration:v120 context:v142];
        v144 = sub_23815291C();
        v145 = sub_2381550FC();
        if (os_log_type_enabled(v144, v145))
        {
          v146 = swift_slowAlloc();
          *v146 = 0;
          _os_log_impl(&dword_238060000, v144, v145, "Fetching poster image", v146, 2u);
          MEMORY[0x2383EA8A0](v146, -1, -1);
        }

        *(&v171 + 1) = sub_238121334;
        v147 = v165;
        v172 = v165;
        aBlock = MEMORY[0x277D85DD0];
        v169 = 1107296256;
        v170 = sub_238110218;
        *&v171 = &block_descriptor_74;
        v148 = _Block_copy(&aBlock);

        [v143 snapshotWithOptions:2 forScreen:0 completionBlock:v148];
        _Block_release(v148);

        v60 = v147;
        sub_238087244(v161, v91);
        sub_23809BF44(v70);

        goto LABEL_54;
      }

      v109 = aBlock;
      v110 = sub_23815266C();

      swift_willThrow();
      v111 = v110;
      v112 = sub_23815291C();
      v113 = sub_2381550DC();

      if (os_log_type_enabled(v112, v113))
      {
        v114 = swift_slowAlloc();
        v115 = swift_slowAlloc();
        *v114 = 138412290;
        v116 = v110;
        v117 = _swift_stdlib_bridgeErrorToNSError();
        *(v114 + 4) = v117;
        *v115 = v117;
        _os_log_impl(&dword_238060000, v112, v113, "Failed to create poster configuration: %@", v114, 0xCu);
        sub_238071284(v115, &unk_27DEECA10, &qword_2381588F0);
        v118 = v115;
        v60 = v165;
        MEMORY[0x2383EA8A0](v118, -1, -1);
        MEMORY[0x2383EA8A0](v114, -1, -1);
        v119 = v161;
        sub_238087244(v161, v91);
      }

      else
      {
        v119 = v161;
        sub_238087244(v161, v91);
      }

      sub_23809BF44(v70);
      v95 = v119;
    }

    sub_238087244(v95, v91);
    goto LABEL_54;
  }

  v71 = sub_23815291C();
  v72 = sub_2381550DC();
  if (os_log_type_enabled(v71, v72))
  {
    v73 = swift_slowAlloc();
    *v73 = 0;
    v74 = "NameDrop: No Me Card";
    goto LABEL_18;
  }

LABEL_19:

  v75 = v166;
LABEL_55:
  sub_23811249C();
  v55(v75, v46);
  return v60;
}

uint64_t sub_23811F0D4(uint64_t a1, uint64_t a2)
{
  v59 = a2;
  v2 = sub_23815323C();
  v60 = *(v2 - 8);
  v3 = *(v60 + 64);
  MEMORY[0x28223BE20](v2);
  v65 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBA00, &qword_23815B4A0);
  MEMORY[0x28223BE20](v4 - 8);
  v63 = &v51 - v5;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBDA8, &qword_23815AEC0);
  v58 = *(v64 - 8);
  v6 = *(v58 + 64);
  v7 = MEMORY[0x28223BE20](v64);
  v61 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v62 = &v51 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBDB8, &unk_23815AED0);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v66 = &v51 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED650, &qword_23815E760);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v51 - v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED618, &qword_23815E738);
  sub_23815365C();
  if ((*(v16 + 88))(v18, v15) == *MEMORY[0x277D54B90])
  {
    v56 = v13;
    v57 = v10;
    (*(v16 + 96))(v18, v15);

    v19 = *(v18 + 4);
    v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED658, &qword_23815E768) + 80);
    v21 = *(v19 + 16);
    if (v21)
    {
      v54 = v2;
      v55 = v20;
      v22 = v57;
      v23 = *(v57 + 16);
      v24 = v66;
      v23(v66, v19 + ((*(v57 + 80) + 32) & ~*(v57 + 80)), v9);

      if (v21 == 1)
      {
        v25 = v56;
        v23(v56, v24, v9);
        if ((*(v22 + 88))(v25, v9) == *MEMORY[0x277D54B60])
        {
          (*(v22 + 96))(v25, v9);
          v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBDC0, &qword_23815E770) + 48);
          v27 = v58;
          v52 = *(v58 + 32);
          v53 = v26;
          v28 = v62;
          v29 = v64;
          v52();
          v30 = sub_238154FBC();
          (*(*(v30 - 8) + 56))(v63, 1, 1, v30);
          (*(v27 + 16))(v61, v28, v29);
          v31 = v60;
          (*(v60 + 16))(v65, v59, v54);
          v32 = (*(v27 + 80) + 32) & ~*(v27 + 80);
          v33 = (v6 + *(v31 + 80) + v32) & ~*(v31 + 80);
          v34 = swift_allocObject();
          *(v34 + 16) = 0;
          *(v34 + 24) = 0;
          v35 = v34 + v32;
          v36 = v64;
          (v52)(v35, v61, v64);
          (*(v31 + 32))(v34 + v33, v65, v54);
          sub_2381351C8(0, 0, v63, &unk_23815E780, v34);

          (*(v27 + 8))(v62, v36);
          (*(v22 + 8))(v66, v9);
          v37 = sub_2381527EC();
          (*(*(v37 - 8) + 8))(&v56[v53], v37);
        }

        else
        {
          if (qword_27DEEA108 != -1)
          {
            swift_once();
          }

          v44 = sub_23815293C();
          __swift_project_value_buffer(v44, qword_27DEED4B0);
          v45 = sub_23815291C();
          v46 = sub_2381550FC();
          if (os_log_type_enabled(v45, v46))
          {
            v47 = swift_slowAlloc();
            *v47 = 0;
            _os_log_impl(&dword_238060000, v45, v46, "Not supported", v47, 2u);
            v48 = v47;
            v25 = v56;
            v22 = v57;
            MEMORY[0x2383EA8A0](v48, -1, -1);
          }

          v49 = *(v22 + 8);
          v49(v66, v9);
          v49(v25, v9);
        }

        v50 = sub_23815361C();
        return (*(*(v50 - 8) + 8))(&v18[v55], v50);
      }

      (*(v22 + 8))(v24, v9);
      v20 = v55;
    }

    else
    {
    }

    v43 = sub_23815361C();
    return (*(*(v43 - 8) + 8))(&v18[v20], v43);
  }

  if (qword_27DEEA108 != -1)
  {
    swift_once();
  }

  v38 = sub_23815293C();
  __swift_project_value_buffer(v38, qword_27DEED4B0);
  v39 = sub_23815291C();
  v40 = sub_2381550FC();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&dword_238060000, v39, v40, "Not supported", v41, 2u);
    MEMORY[0x2383EA8A0](v41, -1, -1);
  }

  return (*(v16 + 8))(v18, v15);
}

uint64_t sub_23811F934(uint64_t a1, int a2)
{
  v54 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBA00, &qword_23815B4A0);
  MEMORY[0x28223BE20](v2 - 8);
  v57 = &v49 - v3;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC568, &qword_23815C220);
  v55 = *(v58 - 8);
  v4 = *(v55 + 64);
  v5 = MEMORY[0x28223BE20](v58);
  v6 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v56 = &v49 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC570, &qword_23815C228);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v49 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC578, &qword_23815C230);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v49 - v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC500, &unk_23815E6B0);
  sub_23815365C();
  if ((*(v16 + 88))(v18, v15) == *MEMORY[0x277D54B90])
  {
    v53 = v9;
    (*(v16 + 96))(v18, v15);

    v19 = *(v18 + 4);
    v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC588, &qword_23815C238) + 80);
    v21 = *(v19 + 16);
    if (v21)
    {
      v51 = v20;
      v52 = v12;
      v22 = v53;
      v23 = *(v53 + 16);
      v23(v14, v19 + ((*(v53 + 80) + 32) & ~*(v53 + 80)), v8);

      if (v21 == 1)
      {
        v24 = v52;
        v23(v52, v14, v8);
        if ((*(v22 + 88))(v24, v8) == *MEMORY[0x277D54B60])
        {
          (*(v22 + 96))(v24, v8);
          v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC590, &qword_23815C240) + 48);
          v26 = v55;
          v49 = *(v55 + 32);
          v50 = v25;
          v27 = v56;
          v28 = v58;
          v49();
          v29 = sub_238154FBC();
          (*(*(v29 - 8) + 56))(v57, 1, 1, v29);
          (*(v26 + 16))(v6, v27, v28);
          v30 = v53;
          v54 &= 1u;
          v31 = (*(v26 + 80) + 32) & ~*(v26 + 80);
          v32 = v31 + v4;
          v33 = swift_allocObject();
          *(v33 + 16) = 0;
          *(v33 + 24) = 0;
          v34 = v33 + v31;
          v35 = v58;
          (v49)(v34, v6, v58);
          *(v33 + v32) = v54;
          sub_2381351C8(0, 0, v57, &unk_23815E710, v33);

          (*(v26 + 8))(v56, v35);
          (*(v30 + 8))(v14, v8);
          v36 = sub_2381527EC();
          (*(*(v36 - 8) + 8))(&v52[v50], v36);
        }

        else
        {
          if (qword_27DEEA108 != -1)
          {
            swift_once();
          }

          v43 = sub_23815293C();
          __swift_project_value_buffer(v43, qword_27DEED4B0);
          v44 = sub_23815291C();
          v45 = sub_2381550FC();
          if (os_log_type_enabled(v44, v45))
          {
            v46 = swift_slowAlloc();
            *v46 = 0;
            _os_log_impl(&dword_238060000, v44, v45, "Not supported", v46, 2u);
            v22 = v53;
            MEMORY[0x2383EA8A0](v46, -1, -1);
          }

          v47 = *(v22 + 8);
          v47(v14, v8);
          v47(v52, v8);
        }

        v48 = sub_23815361C();
        return (*(*(v48 - 8) + 8))(&v18[v51], v48);
      }

      (*(v22 + 8))(v14, v8);
      v20 = v51;
    }

    else
    {
    }

    v42 = sub_23815361C();
    return (*(*(v42 - 8) + 8))(&v18[v20], v42);
  }

  if (qword_27DEEA108 != -1)
  {
    swift_once();
  }

  v37 = sub_23815293C();
  __swift_project_value_buffer(v37, qword_27DEED4B0);
  v38 = sub_23815291C();
  v39 = sub_2381550FC();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&dword_238060000, v38, v39, "Not supported", v40, 2u);
    MEMORY[0x2383EA8A0](v40, -1, -1);
  }

  return (*(v16 + 8))(v18, v15);
}

uint64_t sub_2381200D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED5D0, &qword_23815E670);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_238120144()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC530, &qword_23815E3B0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 17) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7, v6);
}

uint64_t sub_2381201EC(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC530, &qword_23815E3B0) - 8);
  v5 = (*(v4 + 80) + 17) & ~*(v4 + 80);
  v6 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *(v1 + 16);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_238088780;

  return sub_23811B40C(a1, v7, v1 + v5, v6);
}

uint64_t sub_238120314()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC568, &qword_23815C220);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64) + v4;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 1, v3 | 7, v6);
}

uint64_t sub_2381203E8(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC568, &qword_23815C220) - 8);
  v5 = *(v4 + 64);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_238088780;

  return sub_23811D2CC(a1, v6, v7, v8, (v8 + v5));
}

uint64_t sub_238120514()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7, v1);
}

uint64_t sub_23812055C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_238088780;

  return sub_23811AE20(a1, v4, v5, v7, v6);
}

uint64_t sub_23812061C(uint64_t a1)
{
  *(v1 + 160) = a1;

  return MEMORY[0x2822009F8](sub_2381206AC, 0, 0);
}

uint64_t sub_2381206AC()
{
  v1 = sub_2381552AC();
  v0[21] = v1;
  v0[22] = v2;
  if (v2 >> 60 == 15)
  {
LABEL_18:
    v34 = v0[1];
    goto LABEL_19;
  }

  v4 = v1;
  v5 = v2;
  v6 = objc_opt_self();
  v7 = sub_23815274C();
  v0[10] = 0;
  v8 = [v6 unarchiveConfigurationFromData:v7 format:-1 error:v0 + 10];
  v0[23] = v8;

  v9 = v0[10];
  if (!v8)
  {
    v33 = v9;
    sub_23815266C();

    swift_willThrow();
    v3.n128_f64[0] = sub_238087244(v4, v5);
    v34 = v0[1];
LABEL_19:

    return v34(v3);
  }

  v10 = *MEMORY[0x277CBF3A0];
  v11 = *(MEMORY[0x277CBF3A0] + 8);
  v12 = *(MEMORY[0x277CBF3A0] + 16);
  v13 = *(MEMORY[0x277CBF3A0] + 24);
  v14 = objc_allocWithZone(MEMORY[0x277D3EA90]);
  v15 = v9;
  v16 = [v14 initWithTitleString:0 horizontalTitleBoundingRect:0 verticalTitleBoundingRect:0 imageAssetID:v10 personalPoster:{v11, v12, v13, v10, v11, v12, v13}];
  v0[24] = v16;
  v17 = [objc_allocWithZone(MEMORY[0x277D3EA98]) initWithBaseIdentifier:*MEMORY[0x277D3EB58] context:v16 attachmentUniqueIdentifiers:0];
  v0[25] = v17;
  v49 = v17;
  v18 = [objc_opt_self() snapshotRequestForPRSPosterConfiguration:v8 definition:v17 interfaceOrientation:1];
  v0[26] = v18;
  v19 = [objc_opt_self() sharedIncomingCallSnapshotController];
  v0[27] = v19;
  v0[10] = 0;
  v20 = [v19 latestSnapshotBundleForRequest:v18 error:v0 + 10];
  v21 = v0[10];
  if (v20)
  {
    v22 = v20;
    v48 = v16;
    v23 = qword_27DEEA108;
    v24 = v21;
    if (v23 != -1)
    {
      swift_once();
    }

    v25 = sub_23815293C();
    __swift_project_value_buffer(v25, qword_27DEED4B0);
    v26 = v18;
    v27 = sub_23815291C();
    v28 = sub_2381550FC();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v47 = v19;
      v30 = swift_slowAlloc();
      *v29 = 138412290;
      *(v29 + 4) = v26;
      *v30 = v26;
      v31 = v26;
      _os_log_impl(&dword_238060000, v27, v28, "Not prewarming contact poster as a cached snapshot bundle already exists for request: %@", v29, 0xCu);
      sub_238071284(v30, &unk_27DEECA10, &qword_2381588F0);
      v32 = v47;
      MEMORY[0x2383EA8A0](v30, -1, -1);
      MEMORY[0x2383EA8A0](v29, -1, -1);
    }

    else
    {
      v45 = v22;
      v22 = v19;
      v32 = v27;
      v27 = v26;
      v31 = v45;
    }

    sub_238087244(v4, v5);

    goto LABEL_18;
  }

  v35 = v21;
  v36 = sub_23815266C();

  swift_willThrow();
  if (qword_27DEEA108 != -1)
  {
    swift_once();
  }

  v37 = sub_23815293C();
  __swift_project_value_buffer(v37, qword_27DEED4B0);
  v38 = v18;
  v39 = sub_23815291C();
  v40 = sub_2381550FC();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    *v41 = 138412290;
    *(v41 + 4) = v38;
    *v42 = v38;
    v43 = v38;
    _os_log_impl(&dword_238060000, v39, v40, "Prewarming contact poster for request: %@", v41, 0xCu);
    sub_238071284(v42, &unk_27DEECA10, &qword_2381588F0);
    MEMORY[0x2383EA8A0](v42, -1, -1);
    MEMORY[0x2383EA8A0](v41, -1, -1);
  }

  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_238120D18;
  v44 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED610, &qword_23815E730);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_23811AD40;
  v0[13] = &block_descriptor_59;
  v0[14] = v44;
  [v19 executeSnapshotRequest:v38 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_238120D18()
{
  v1 = *(*v0 + 48);
  *(*v0 + 224) = v1;
  if (v1)
  {
    v2 = sub_238120F24;
  }

  else
  {
    v2 = sub_238120E54;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_238120E54()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);
  v4 = *(v0 + 192);
  v3 = *(v0 + 200);
  v5 = *(v0 + 184);
  sub_238087244(*(v0 + 168), *(v0 + 176));

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_238120F24(uint64_t a1)
{
  v2 = v1[27];
  v4 = v1[25];
  v3 = v1[26];
  v6 = v1[23];
  v5 = v1[24];
  v7 = v1[21];
  v8 = v1[22];
  swift_willThrow();
  sub_238087244(v7, v8);

  v9 = v1[1];

  return v9();
}

uint64_t sub_238121018()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBDA8, &qword_23815AEC0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_23815323C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7, v12);
}

uint64_t sub_238121174(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBDA8, &qword_23815AEC0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_23815323C() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_238087150;

  return sub_23811AC7C(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_23812133C(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_23812138C()
{
  v0 = sub_23815293C();
  __swift_allocate_value_buffer(v0, qword_27DEED680);
  __swift_project_value_buffer(v0, qword_27DEED680);
  sub_238154DEC();
  return sub_23815292C();
}

uint64_t DDDataReturnType.hashValue.getter()
{
  v1 = *v0;
  sub_23815568C();
  MEMORY[0x2383E9CD0](v1);
  return sub_2381556BC();
}

uint64_t DDDeviceDiscoveryView.outputType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for DDDeviceDiscoveryView(0);
  *a1 = *(v1 + *(result + 52));
  return result;
}

uint64_t DDDeviceDiscoveryView.outputType.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for DDDeviceDiscoveryView(0);
  *(v1 + *(result + 52)) = v2;
  return result;
}

uint64_t DDDeviceDiscoveryView.previewImageData.getter()
{
  type metadata accessor for DDDeviceDiscoveryView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC408, &qword_23815E800);
  sub_23815470C();
  return v1;
}

double sub_2381215CC@<D0>(_OWORD *a2@<X8>)
{
  type metadata accessor for DDDeviceDiscoveryView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC408, &qword_23815E800);
  sub_23815470C();
  result = *&v4;
  *a2 = v4;
  return result;
}

double sub_238121648(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (a2 + *(type metadata accessor for DDDeviceDiscoveryView(0) + 72));
  v6 = *v4;
  v7 = v4[1];
  sub_2380E6764(*v4, v7);

  sub_2380E6764(v2, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC408, &qword_23815E800);
  sub_23815471C();
  sub_238087244(v6, v7);

  return result;
}

double DDDeviceDiscoveryView.previewImageData.setter(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + *(type metadata accessor for DDDeviceDiscoveryView(0) + 72));
  v5 = *v3;
  v6 = v3[1];
  sub_2380E6764(*v3, v6);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC408, &qword_23815E800);
  sub_23815471C();
  sub_238087244(v5, v6);

  return result;
}

void (*DDDeviceDiscoveryView.previewImageData.modify(uint64_t **a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = (v1 + *(type metadata accessor for DDDeviceDiscoveryView(0) + 72));
  v6 = *v5;
  v7 = v5[1];
  v4[10] = *v5;
  v4[11] = v7;
  v8 = v5[2];
  v4[12] = v8;
  *v4 = v6;
  v4[1] = v7;
  v4[2] = v8;
  sub_2380E6764(v6, v7);

  v4[13] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC408, &qword_23815E800);
  sub_23815470C();
  return sub_2380D3A0C;
}

uint64_t DDDeviceDiscoveryView.$previewImageData.getter()
{
  type metadata accessor for DDDeviceDiscoveryView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC408, &qword_23815E800);
  sub_23815472C();
  return v1;
}

uint64_t DDDeviceDiscoveryView.init(airDropClient:bundleID:hostBundleID:previewImageLoader:browseDescriptor:browseParameters:publicKey:applicationServiceEndpointCallback:bonjourEndpointCallback:browserResultDataCallback:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, char *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unint64_t a16, uint64_t a17, char *a18)
{
  v140 = a6;
  v141 = a7;
  v137 = a4;
  v138 = a5;
  v142 = a3;
  v143 = a2;
  v139 = a1;
  v132 = sub_238152E0C();
  v131 = *(v132 - 8);
  v20 = MEMORY[0x28223BE20](v132);
  v130 = &v122 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v129 = &v122 - v22;
  v144 = sub_238152E1C();
  v23 = *(v144 - 8);
  v24 = MEMORY[0x28223BE20](v144);
  v136 = &v122 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v133 = &v122 - v27;
  MEMORY[0x28223BE20](v26);
  v146 = (&v122 - v28);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEED6A0, &unk_23815E808);
  v30 = MEMORY[0x28223BE20](v29);
  v32 = &v122 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v34 = &v122 - v33;
  v35 = type metadata accessor for DDDeviceDiscoveryView(0);
  v36 = v35[11];
  *(a9 + v36) = [objc_allocWithZone(sub_23815289C()) init];
  *(a9 + v35[13]) = 0;
  v37 = sub_238154C8C();
  v38 = MGCopyAnswer();

  if (!v38)
  {
    __break(1u);
    goto LABEL_38;
  }

  *&v152 = v38;
  v39 = swift_dynamicCast();
  v147 = a8;
  if (v39)
  {
    v40 = *(&v148 + 1);
    v41 = v148;
  }

  else
  {
    v40 = 0xED00003E656D614ELL;
    v41 = 0x206563697665443CLL;
  }

  v42 = (a9 + v35[14]);
  *v42 = v41;
  v42[1] = v40;
  v43 = v35[15];
  sub_2381528EC();
  swift_allocObject();
  *(a9 + v43) = sub_2381528DC();
  v44 = a9 + v35[16];
  LOBYTE(v152) = 1;
  sub_2381546FC();
  v45 = *(&v148 + 1);
  *v44 = v148;
  *(v44 + 1) = v45;
  v46 = type metadata accessor for PermissionTask(0);
  (*(*(v46 - 8) + 56))(v34, 1, 1, v46);
  sub_2380712E4(v34, v32, &unk_27DEED6A0, &unk_23815E808);
  sub_2381546FC();
  sub_238071284(v34, &unk_27DEED6A0, &unk_23815E808);
  v47 = a9 + v35[18];
  v152 = xmmword_23815BDB0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEADE8, &qword_238158E00);
  sub_2381546FC();
  v48 = v149;
  *v47 = v148;
  *(v47 + 2) = v48;
  v49 = (a9 + v35[24]);
  v50 = (a9 + v35[26]);
  if (qword_27DEEA030 != -1)
  {
    swift_once();
  }

  v51 = qword_27DEF3190;
  type metadata accessor for DDDeviceAccessController(0);
  sub_23812F7E0(&qword_27DEED6B0, type metadata accessor for DDDeviceAccessController, byte_238159338);
  v52 = v51;
  *v50 = sub_2381539BC();
  v50[1] = v53;
  v123 = v53;
  v54 = (a9 + v35[27]);
  *&v152 = MEMORY[0x277D84FA0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEED6B8, &qword_23815E818);
  sub_2381546FC();
  v55 = *(&v148 + 1);
  *v54 = v148;
  v54[1] = v55;
  a9[7] = a10;
  v56 = *(v23 + 16);
  v57 = v147;
  v58 = v144;
  v56(a9 + v35[10], v147, v144);
  v135 = a10;

  v59 = sub_238130894();
  v145 = v23;
  v134 = v59;
  if (v59)
  {
    v60 = v146;
    v56(v146, v57, v58);
    *(a9 + v35[12]) = 1;
    v124 = sub_238130D2C();
    *v49 = v124;
    v49[1] = v61;
    v125 = v61;
    goto LABEL_26;
  }

  v62 = v133;
  v56(v133, v57, v58);
  v63 = (*(v23 + 88))(v62, v58);
  v64 = v63;
  if (v63 != *MEMORY[0x277CD9090])
  {
    if (v63 == *MEMORY[0x277CD90A8])
    {
      (*(v145 + 96))(v62, v58);
      v70 = v62[1];
      v124 = *v62;
      v125 = v70;
      v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC430, &qword_23815E820);
      v71 = v131;
      v72 = v62 + *(v130 + 12);
      v73 = v129;
      v133 = *(v131 + 32);
      (v133)(v129, v72, v132);
      v150 = &type metadata for RapportFeatureFlags;
      v151 = sub_23812277C();
      v74 = sub_23815283C();
      v75.n128_f64[0] = __swift_destroy_boxed_opaque_existential_1(&v148);
      if (v74)
      {
        (*(v71 + 8))(v73, v132, v75.n128_f64[0]);
LABEL_19:
        v60 = v146;
        v69 = v147;
        v68 = v146;
        v58 = v144;
        goto LABEL_20;
      }

      v82 = *(v130 + 12);
      v60 = v146;
      *v146 = 0xD000000000000015;
      v60[1] = 0x80000002381629C0;
      goto LABEL_23;
    }

    v77 = v131;
    if (v63 == *MEMORY[0x277CD90A0])
    {
      v78 = v133;
      (*(v145 + 96))(v133, v58);
      v79 = v78[1];
      v124 = *v78;
      v125 = v79;
      v80 = v78[3];
      v128 = v78[2];
      v129 = v80;
      v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBBA0, &qword_23815A7B0);
      v81 = v78 + *(v127 + 64);
      v73 = v130;
      v133 = *(v77 + 32);
      (v133)(v130, v81, v132);
      v150 = &type metadata for RapportFeatureFlags;
      v151 = sub_23812277C();
      LOBYTE(v78) = sub_23815283C();
      v75.n128_f64[0] = __swift_destroy_boxed_opaque_existential_1(&v148);
      if (v78)
      {
        (*(v77 + 8))(v73, v132, v75.n128_f64[0]);
        v67.n128_f64[0] = sub_238085CA0(v128, v129);
        goto LABEL_19;
      }

      v82 = *(v127 + 64);
      v60 = v146;
      *v146 = 0xD000000000000015;
      v60[1] = 0x80000002381629C0;
      v83 = v129;
      v60[2] = v128;
      v60[3] = v83;
LABEL_23:
      (v133)(v60 + v82, v73, v132, v75);
      v58 = v144;
      v76 = v145;
      goto LABEL_24;
    }

LABEL_38:
    *&v148 = 0;
    *(&v148 + 1) = 0xE000000000000000;
    sub_23815541C();

    *&v148 = 0xD000000000000024;
    *(&v148 + 1) = 0x8000000238163130;
    v118 = [sub_238152D6C() description];
    swift_unknownObjectRelease();
    v119 = sub_238154CCC();
    v121 = v120;

    MEMORY[0x2383E9410](v119, v121);

    result = sub_2381554EC();
    __break(1u);
    return result;
  }

  (*(v23 + 96))(v62, v58);
  v65 = v62[1];
  v124 = *v62;
  v125 = v65;
  v150 = &type metadata for RapportFeatureFlags;
  v151 = sub_23812277C();
  v66 = sub_23815283C();
  v67.n128_f64[0] = __swift_destroy_boxed_opaque_existential_1(&v148);
  if ((v66 & 1) == 0)
  {
    v60 = v146;
    *v146 = 0xD000000000000015;
    v60[1] = 0x80000002381629C0;
    v76 = v23;
LABEL_24:
    (*(v76 + 104))(v60, v64, v58, v67);
    goto LABEL_25;
  }

  v60 = v146;
  v68 = v146;
  v69 = v57;
LABEL_20:
  (v56)(v68, v69, v58, v67);
LABEL_25:
  v84 = v125;
  *v49 = v124;
  v49[1] = v84;
  *(a9 + v35[12]) = 0;
LABEL_26:
  v133 = a18;
  v132 = a17;
  v129 = a16;
  v128 = a15;
  v127 = a14;
  v126 = a13;
  v131 = a12;
  v130 = a11;
  v85 = v136;
  v56(v136, v60, v58);
  type metadata accessor for _DDContactInfoCache(0);
  swift_allocObject();
  v86 = sub_2380C1928();
  type metadata accessor for _DDAirDropMetadataCache(0);
  v87 = swift_allocObject();
  v88 = v58;
  v89 = v139;

  *&v148 = sub_2380EED1C(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBF70, &qword_23815BE80);
  sub_238152A5C();
  *(v87 + OBJC_IVAR____TtC17DeviceDiscoveryUI23_DDAirDropMetadataCache_airDropClient) = v89;
  type metadata accessor for DeviceBrowserViewModel(0);
  swift_allocObject();
  v90 = sub_2380A0DD8(v85, v135, v86, v87);
  v91 = v138;
  a9[5] = v137;
  a9[6] = v91;
  v92 = v142;
  a9[3] = v143;
  a9[4] = v92;
  *a9 = v90;
  a9[1] = v89;
  v93 = swift_allocObject();

  *&v148 = sub_2380EED1C(MEMORY[0x277D84F90]);
  sub_238152A5C();
  *(v93 + OBJC_IVAR____TtC17DeviceDiscoveryUI23_DDAirDropMetadataCache_airDropClient) = v89;
  a9[2] = v93;
  v94 = (a9 + v35[19]);
  v95 = v141;
  *v94 = v140;
  v94[1] = v95;
  *(a9 + v35[20]) = 0;
  v96 = (a9 + v35[21]);
  v97 = v127;
  *v96 = v126;
  v96[1] = v97;
  v98 = (a9 + v35[22]);
  v99 = v129;
  *v98 = v128;
  v98[1] = v99;
  v100 = (a9 + v35[23]);
  v101 = v133;
  *v100 = v132;
  v100[1] = v101;
  v102 = (a9 + v35[25]);
  v103 = v131;
  *v102 = v130;
  v102[1] = v103;
  if (v134)
  {
    v104 = v147;
    v105 = v145;
    if (v92)
    {
      v106 = v125;
      if (v125)
      {
        v107 = *(v145 + 8);

        v107(v104, v88);
        v107(v146, v88);
        v108 = v123;
        v109 = (v123 + OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_bundleID);
        *v109 = v143;
        v109[1] = v92;

        *(v108 + OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_role) = 0;
        v110 = (v108 + OBJC_IVAR____TtC17DeviceDiscoveryUI24DDDeviceAccessController_serviceName);
        *v110 = v124;
        v110[1] = v106;
      }
    }

    if (qword_27DEEA110 != -1)
    {
      swift_once();
    }

    v113 = sub_23815293C();
    __swift_project_value_buffer(v113, qword_27DEED680);
    v114 = sub_23815291C();
    v115 = sub_2381550DC();
    if (os_log_type_enabled(v114, v115))
    {
      v116 = swift_slowAlloc();
      *v116 = 0;
      _os_log_impl(&dword_238060000, v114, v115, "Unable to create device access session due to missing bundle ID and service name.", v116, 2u);
      MEMORY[0x2383EA8A0](v116, -1, -1);
    }

    v117 = *(v105 + 8);
    v117(v104, v88);
    return (v117)(v146, v88);
  }

  else
  {

    v112 = *(v145 + 8);
    v112(v147, v58);
    return (v112)(v146, v58);
  }
}

unint64_t sub_23812277C()
{
  result = qword_27DEED6C8;
  if (!qword_27DEED6C8)
  {
    result = swift_getWitnessTable(aU, &type metadata for RapportFeatureFlags, v0, v1);
    atomic_store(result, &qword_27DEED6C8);
  }

  return result;
}

__n128 DDDeviceDiscoveryView.body.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED6D0, &qword_23815E828);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = v15 - v5;
  *v6 = sub_238153DEC();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED6D8, &qword_23815E830);
  sub_238122958(v1, &v6[*(v7 + 44)]);
  v8 = sub_23815410C();
  v9 = sub_238153A4C();
  v10 = &v6[*(v4 + 44)];
  *v10 = v9;
  v10[8] = v8;
  sub_2381548BC();
  sub_238153A8C();
  sub_23807121C(v6, a1, &qword_27DEED6D0, &qword_23815E828);
  v11 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED6E0, &qword_23815E838) + 36);
  v12 = v15[5];
  *(v11 + 64) = v15[4];
  *(v11 + 80) = v12;
  *(v11 + 96) = v15[6];
  v13 = v15[1];
  *v11 = v15[0];
  *(v11 + 16) = v13;
  result = v15[3];
  *(v11 + 32) = v15[2];
  *(v11 + 48) = result;
  return result;
}

uint64_t sub_238122958@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED818, &qword_23815E9F8);
  v3 = MEMORY[0x28223BE20](v58);
  v5 = (&v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v3);
  v7 = (&v52 - v6);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED820, &qword_23815EA00);
  MEMORY[0x28223BE20](v56);
  v57 = &v52 - v8;
  v9 = type metadata accessor for DDDeviceDiscoveryView(0);
  v10 = *(v9 - 1);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED828, &qword_23815EA08);
  MEMORY[0x28223BE20](v55);
  v14 = &v52 - v13;
  if (*(a1 + v9[12]) == 1 && (v15 = (a1 + v9[16]), v16 = *v15, v17 = *(v15 + 1), v61 = v16, v62 = v17, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC6E8, &qword_23815C638), sub_23815470C(), (v60 & 1) != 0))
  {
    v54 = v7;
    v18 = *(a1 + 24);
    v19 = *(a1 + 32);
    if (v19)
    {
      objc_allocWithZone(MEMORY[0x277CC1E70]);

      v20 = sub_2381293D0(v18, v19, 0);
      if (v20)
      {
        v39 = v20;
        v40 = [v20 localizedName];
        v18 = sub_238154CCC();
        v53 = v41;
      }

      else
      {
        v18 = 0;
        v53 = 0;
      }
    }

    else
    {
      v53 = 0;
    }

    v42 = (a1 + v9[14]);
    v43 = v42[1];
    v52 = *v42;
    sub_23812AE68(a1, v12);
    v44 = (*(v10 + 80) + 16) & ~*(v10 + 80);
    v45 = swift_allocObject();
    sub_23812C0A8(v12, v45 + v44, type metadata accessor for DDDeviceDiscoveryView);
    sub_23812AE68(a1, v12);
    v46 = swift_allocObject();
    sub_23812C0A8(v12, v46 + v44, type metadata accessor for DDDeviceDiscoveryView);
    v47 = (v5 + *(v58 + 36));
    sub_23815396C();

    sub_238154F9C();
    *v47 = &unk_23815EA48;
    v47[1] = v46;
    v48 = v52;
    v49 = v53;
    *v5 = v18;
    v5[1] = v49;
    v5[2] = v48;
    v5[3] = v43;
    v5[4] = sub_23812B444;
    v5[5] = v45;
    v36 = &qword_27DEED818;
    v37 = &qword_23815E9F8;
    v50 = v54;
    sub_23807121C(v5, v54, &qword_27DEED818, &qword_23815E9F8);
    sub_2380712E4(v50, v57, &qword_27DEED818, &qword_23815E9F8);
    swift_storeEnumTagMultiPayload();
    sub_2380711D4(&qword_27DEED848, &qword_27DEED828, &qword_23815EA08, MEMORY[0x277CDDB50]);
    sub_23812B388();
    sub_238153ECC();
    v38 = v50;
  }

  else
  {
    sub_23812310C(v14);
    sub_23812AE68(a1, &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    v21 = (*(v10 + 80) + 16) & ~*(v10 + 80);
    v22 = swift_allocObject();
    sub_23812C0A8(&v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21, type metadata accessor for DDDeviceDiscoveryView);
    v23 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED830, &qword_23815EA20) + 36)];
    sub_23815396C();
    sub_238154F9C();
    *v23 = &unk_23815EA18;
    *(v23 + 1) = v22;
    sub_23812AE68(a1, &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    v24 = swift_allocObject();
    v54 = type metadata accessor for DDDeviceDiscoveryView;
    sub_23812C0A8(&v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v21, type metadata accessor for DDDeviceDiscoveryView);
    v25 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED838, &qword_23815EA28) + 36)];
    *v25 = 0;
    *(v25 + 1) = 0;
    *(v25 + 2) = sub_23812B294;
    *(v25 + 3) = v24;
    sub_23812AE68(a1, &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    v26 = swift_allocObject();
    sub_23812C0A8(&v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v21, type metadata accessor for DDDeviceDiscoveryView);
    v53 = objc_opt_self();
    v27 = [v53 defaultCenter];
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED840, &unk_23815EA30);
    sub_2381551DC();

    v29 = swift_allocObject();
    *(v29 + 16) = sub_23812B2AC;
    *(v29 + 24) = v26;
    v30 = &v14[*(v28 + 56)];
    *v30 = sub_2380F93A4;
    v30[1] = v29;
    sub_23812AE68(a1, v12);
    v31 = swift_allocObject();
    sub_23812C0A8(v12, v31 + v21, v54);
    v32 = [v53 defaultCenter];
    v33 = v55;
    sub_2381551DC();

    v34 = swift_allocObject();
    *(v34 + 16) = sub_23812B2FC;
    *(v34 + 24) = v31;
    v35 = &v14[*(v33 + 56)];
    *v35 = sub_2380F93A4;
    v35[1] = v34;
    v36 = &qword_27DEED828;
    v37 = &qword_23815EA08;
    sub_2380712E4(v14, v57, &qword_27DEED828, &qword_23815EA08);
    swift_storeEnumTagMultiPayload();
    sub_2380711D4(&qword_27DEED848, &qword_27DEED828, &qword_23815EA08, MEMORY[0x277CDDB50]);
    sub_23812B388();
    sub_238153ECC();
    v38 = v14;
  }

  return sub_238071284(v38, v36, v37);
}

uint64_t sub_23812310C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v78 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBA00, &qword_23815B4A0);
  MEMORY[0x28223BE20](v3 - 8);
  v77 = &v71 - v4;
  v5 = type metadata accessor for DDDeviceDiscoveryView(0);
  v6 = v5 - 8;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = type metadata accessor for _DDDevicePickerView(0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v71 - v13;
  v15 = v1 + *(v6 + 80);
  v16 = *(v15 + 16);
  v81 = *v15;
  v82 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC408, &qword_23815E800);
  sub_23815470C();
  v74 = v80;
  v75 = v79;
  v17 = (v1 + *(v6 + 104));
  v18 = v17[1];
  v76 = *v17;
  sub_23812AE68(v2, &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v73 = swift_allocObject();
  sub_23812C0A8(&v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v73 + v19, type metadata accessor for DDDeviceDiscoveryView);
  LOBYTE(v79) = 0;

  sub_2381546FC();
  v20 = *(&v81 + 1);
  v12[32] = v81;
  *(v12 + 5) = v20;
  v21 = v9[7];
  *&v12[v21] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA470, &unk_238157AC0);
  swift_storeEnumTagMultiPayload();
  v22 = v9[8];
  *&v12[v22] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEEA9F0, &unk_238158250);
  swift_storeEnumTagMultiPayload();
  v23 = v9[9];
  *&v12[v23] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v24 = &v12[v9[10]];
  *v24 = swift_getKeyPath();
  v24[8] = 0;
  v25 = v9[11];
  *&v12[v25] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA468, &qword_2381595D0);
  swift_storeEnumTagMultiPayload();
  v26 = v9[12];
  *&v12[v26] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAA00, &qword_238158260);
  swift_storeEnumTagMultiPayload();
  v27 = &v12[v9[13]];
  [objc_allocWithZone(type metadata accessor for _DDAskToAirDropManager(0)) init];
  sub_23812F7E0(&qword_27DEEA920, type metadata accessor for _DDAskToAirDropManager, byte_23815D738);
  v28 = sub_2381539BC();
  v30 = v29;
  *v27 = v28;
  v27[1] = v29;
  v31 = &v12[v9[14]];
  v32 = objc_allocWithZone(type metadata accessor for _DDWirelessSettingsController(0));
  v72 = v30;
  [v32 init];
  sub_23812F7E0(&unk_27DEED8A0, type metadata accessor for _DDWirelessSettingsController, asc_23815DBE4);
  *v31 = sub_2381539BC();
  v31[1] = v33;
  v34 = &v12[v9[15]];
  if (qword_27DEEA100 != -1)
  {
    swift_once();
  }

  v35 = qword_27DEF3290;
  type metadata accessor for _DDPinPairingManager(0);
  sub_23812F7E0(&qword_27DEEA930, type metadata accessor for _DDPinPairingManager, byte_23815D4F0);
  v36 = v35;
  *v34 = sub_2381539BC();
  v34[1] = v37;
  v38 = &v12[v9[16]];
  v39 = qword_27DEEA030;
  v40 = v37;
  if (v39 != -1)
  {
    swift_once();
  }

  v41 = qword_27DEF3190;
  type metadata accessor for DDDeviceAccessController(0);
  sub_23812F7E0(&qword_27DEED6B0, type metadata accessor for DDDeviceAccessController, byte_238159338);
  v42 = v41;
  *v38 = sub_2381539BC();
  v38[1] = v43;
  v44 = v9[17];
  if (qword_27DEEA128 != -1)
  {
    swift_once();
  }

  v45 = &v12[v44];
  v79 = qword_27DEEDA60;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBB70, &qword_238159970);
  sub_2381546FC();
  v46 = *(&v81 + 1);
  *v45 = v81;
  *(v45 + 1) = v46;
  v47 = &v12[v9[18]];
  LOBYTE(v79) = 0;
  sub_2381546FC();
  v48 = *(&v81 + 1);
  *v47 = v81;
  *(v47 + 1) = v48;
  v49 = &v12[v9[19]];
  LOBYTE(v79) = 0;
  sub_2381546FC();
  v50 = *(&v81 + 1);
  *v49 = v81;
  *(v49 + 1) = v50;
  v51 = &v12[v9[20]];
  LOBYTE(v79) = 0;
  sub_2381546FC();
  v52 = *(&v81 + 1);
  *v51 = v81;
  *(v51 + 1) = v52;
  swift_unknownObjectWeakInit();
  *&v12[v9[26]] = 4;
  *&v12[v9[27]] = 5;
  *&v12[v9[28]] = xmmword_23815BDD0;
  type metadata accessor for _DDContactInfoCache(0);
  sub_23812F7E0(&qword_27DEEC608, type metadata accessor for _DDContactInfoCache, byte_23815B404);

  *(v12 + 2) = sub_2381539BC();
  *(v12 + 3) = v53;
  type metadata accessor for DeviceBrowserViewModel(0);
  sub_23812F7E0(&unk_27DEED8B0, type metadata accessor for DeviceBrowserViewModel, a5_0);

  *v12 = sub_2381539BC();
  *(v12 + 1) = v54;
  sub_2380BDAE8();
  v55 = &v12[v9[25]];
  *v55 = v56;
  *(v55 + 1) = v57;
  v58 = &v12[v9[22]];
  v59 = v74;
  *v58 = v75;
  *(v58 + 1) = v59;
  swift_unknownObjectWeakAssign();
  v60 = &v12[v9[23]];
  v61 = v73;
  *v60 = sub_23812BFD4;
  v60[1] = v61;
  v62 = &v12[v9[24]];
  v63 = v76;
  *v62 = v76;
  *(v62 + 1) = v18;
  if (v18)
  {
    v64 = v63;
  }

  else
  {
    v64 = 0;
  }

  v65 = 0xE000000000000000;
  if (v18)
  {
    v65 = v18;
  }

  v66 = &v40[OBJC_IVAR____TtC17DeviceDiscoveryUI20_DDPinPairingManager_serviceIdentifier];
  *v66 = v64;
  *(v66 + 1) = v65;

  v67 = sub_238154FBC();
  v68 = v77;
  (*(*(v67 - 8) + 56))(v77, 1, 1, v67);
  v69 = swift_allocObject();
  v69[2] = 0;
  v69[3] = 0;
  v69[4] = v72;
  sub_2380D2A4C(0, 0, v68, &unk_23815C430, v69);

  sub_23812C0A8(v12, v14, type metadata accessor for _DDDevicePickerView);
  return sub_23812C0A8(v14, v78, type metadata accessor for _DDDevicePickerView);
}

uint64_t sub_238123A04(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_238154F8C();
  *(v1 + 24) = sub_238154F7C();
  v3 = sub_238154F3C();

  return MEMORY[0x2822009F8](sub_238123A9C, v3, v2);
}

uint64_t sub_238123A9C()
{

  sub_238123B00();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_238123B00()
{
  v0 = sub_238152F3C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27DEEA110 != -1)
  {
    swift_once();
  }

  v4 = sub_23815293C();
  __swift_project_value_buffer(v4, qword_27DEED680);
  v5 = sub_23815291C();
  v6 = sub_2381550FC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_238060000, v5, v6, "Picker Did Appear", v7, 2u);
    MEMORY[0x2383EA8A0](v7, -1, -1);
  }

  sub_2380A54D4();
  sub_238152EFC();
  v8 = sub_238152EEC();
  result = (*(v1 + 8))(v3, v0);
  if (v8)
  {
    return sub_238124DC4();
  }

  return result;
}

uint64_t sub_238123CA8()
{
  v1 = v0;
  if (qword_27DEEA110 == -1)
  {
    goto LABEL_2;
  }

  while (1)
  {
    swift_once();
LABEL_2:
    v2 = sub_23815293C();
    __swift_project_value_buffer(v2, qword_27DEED680);
    v3 = sub_23815291C();
    v4 = sub_2381550FC();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_238060000, v3, v4, "Picker Did Disappear", v5, 2u);
      MEMORY[0x2383EA8A0](v5, -1, -1);
    }

    sub_2380A8BA4();
    v6 = type metadata accessor for DDDeviceDiscoveryView(0);
    if (*(v1 + *(v6 + 48)) == 1)
    {
      sub_23808C144();
    }

    v7 = (v1 + *(v6 + 108));
    v23 = *v7;
    v24 = v7[1];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED868, &qword_23815EA70);
    sub_23815470C();
    if ((v22 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      sub_2381553BC();
      sub_2381529CC();
      sub_23812F7E0(&qword_27DEED870, MEMORY[0x277CBCDA8], MEMORY[0x277CBCDB0]);
      sub_23815503C();
      v9 = v23;
      v8 = v24;
      v10 = v25;
      v11 = v26;
      v1 = v27;
    }

    else
    {
      v12 = -1 << *(v22 + 32);
      v8 = v22 + 56;
      v10 = ~v12;
      v13 = -v12;
      v14 = v13 < 64 ? ~(-1 << v13) : -1;
      v1 = v14 & *(v22 + 56);

      v11 = 0;
      v9 = v22;
    }

    v15 = (v10 + 64) >> 6;
    if (v9 < 0)
    {
      break;
    }

LABEL_13:
    v16 = v11;
    v17 = v1;
    v18 = v11;
    if (v1)
    {
LABEL_17:
      v19 = (v17 - 1) & v17;
      v20 = *(*(v9 + 48) + ((v18 << 9) | (8 * __clz(__rbit64(v17)))));

      if (v20)
      {
        goto LABEL_21;
      }

      goto LABEL_23;
    }

    while (1)
    {
      v18 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v18 >= v15)
      {
        goto LABEL_23;
      }

      v17 = *(v8 + 8 * v18);
      ++v16;
      if (v17)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  while (sub_2381553CC())
  {
    sub_2381529CC();
    swift_dynamicCast();
    v18 = v11;
    v19 = v1;
    if (!v22)
    {
      break;
    }

LABEL_21:
    sub_2381529BC();

    v11 = v18;
    v1 = v19;
    if ((v9 & 0x8000000000000000) == 0)
    {
      goto LABEL_13;
    }
  }

LABEL_23:
  sub_23807A314(v9);

  sub_23815470C();

  sub_23815471C();
}

double sub_238124030()
{
  if (qword_27DEEA110 != -1)
  {
    swift_once();
  }

  v0 = sub_23815293C();
  __swift_project_value_buffer(v0, qword_27DEED680);
  v1 = sub_23815291C();
  v2 = sub_2381550FC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_238060000, v1, v2, "Picker was Foregrounded", v3, 2u);
    MEMORY[0x2383EA8A0](v3, -1, -1);
  }

  return sub_2380A54D4();
}

void sub_238124114(uint64_t a1)
{
  if (qword_27DEEA110 != -1)
  {
    swift_once();
  }

  v2 = sub_23815293C();
  __swift_project_value_buffer(v2, qword_27DEED680);
  v3 = sub_23815291C();
  v4 = sub_2381550FC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_238060000, v3, v4, "Picker was Backgrounded", v5, 2u);
    MEMORY[0x2383EA8A0](v5, -1, -1);
  }

  sub_2380A8BA4();
  if (*(a1 + *(type metadata accessor for DDDeviceDiscoveryView(0) + 48)) == 1)
  {
    sub_23808C144();
  }
}

void sub_238124220()
{
  v1 = type metadata accessor for DDDeviceDiscoveryView(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBA00, &qword_23815B4A0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v19 - v6;
  v8 = *(v0 + 32);
  if (v8)
  {
    v9 = *(v0 + 24);
    v10 = sub_238154FBC();
    (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
    sub_23812AE68(v0, &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
    sub_238154F8C();

    v11 = sub_238154F7C();
    v12 = (*(v2 + 80) + 48) & ~*(v2 + 80);
    v13 = swift_allocObject();
    v14 = MEMORY[0x277D85700];
    v13[2] = v11;
    v13[3] = v14;
    v13[4] = v9;
    v13[5] = v8;
    sub_23812C0A8(v4, v13 + v12, type metadata accessor for DDDeviceDiscoveryView);
    sub_2380D2A4C(0, 0, v7, &unk_23815EA68, v13);
  }

  else
  {
    if (qword_27DEEA110 != -1)
    {
      swift_once();
    }

    v15 = sub_23815293C();
    __swift_project_value_buffer(v15, qword_27DEED680);
    v20 = sub_23815291C();
    v16 = sub_2381550DC();
    if (os_log_type_enabled(v20, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_238060000, v20, v16, "No bundleID to enable WifiAware for", v17, 2u);
      MEMORY[0x2383EA8A0](v17, -1, -1);
    }

    v18 = v20;
  }
}

uint64_t sub_2381244EC()
{
  v0[2] = sub_238154F8C();
  v0[3] = sub_238154F7C();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_238124598;

  return sub_2381246D4();
}

uint64_t sub_238124598()
{

  v1 = sub_238154F3C();

  return MEMORY[0x2822009F8](sub_2380D780C, v1, v0);
}

uint64_t sub_2381246D4()
{
  v1[8] = v0;
  v1[9] = type metadata accessor for DDDeviceDiscoveryView(0);
  v1[10] = swift_task_alloc();
  sub_238154F8C();
  v1[11] = sub_238154F7C();
  v3 = sub_238154F3C();
  v1[12] = v3;
  v1[13] = v2;

  return MEMORY[0x2822009F8](sub_23812479C, v3, v2);
}

uint64_t sub_23812479C()
{
  v24 = v0;
  v1 = *(v0 + 64);
  v2 = *(v1 + 24);
  *(v0 + 112) = v2;
  v3 = *(v1 + 32);
  *(v0 + 120) = v3;
  if (v3)
  {
    if (qword_27DEEA110 != -1)
    {
      swift_once();
    }

    v4 = sub_23815293C();
    *(v0 + 128) = __swift_project_value_buffer(v4, qword_27DEED680);

    v5 = sub_23815291C();
    v6 = sub_2381550FC();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v23 = v8;
      *v7 = 136315138;
      *(v7 + 4) = sub_238085EAC(v2, v3, &v23);
      _os_log_impl(&dword_238060000, v5, v6, "Loading setting for %s", v7, 0xCu);
      v9 = __swift_destroy_boxed_opaque_existential_1(v8);
      MEMORY[0x2383EA8A0](v8, -1, -1, v9);
      MEMORY[0x2383EA8A0](v7, -1, -1);
    }

    v10 = *(*(v0 + 64) + *(*(v0 + 72) + 60));
    *(v0 + 136) = v10;
    v11 = (*v10 + 152) & 0xFFFFFFFFFFFFLL | 0x517C000000000000;
    *(v0 + 144) = *(*v10 + 152);
    *(v0 + 152) = v11;

    return MEMORY[0x2822009F8](sub_238124AB0, v10, 0);
  }

  else
  {

    if (qword_27DEEA110 != -1)
    {
      swift_once();
    }

    v12 = sub_23815293C();
    __swift_project_value_buffer(v12, qword_27DEED680);
    v13 = sub_23815291C();
    v14 = sub_2381550DC();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_238060000, v13, v14, "No bundleID to load setting for", v15, 2u);
      MEMORY[0x2383EA8A0](v15, -1, -1);
    }

    v17 = *(v0 + 64);
    v16 = *(v0 + 72);

    v18 = (v17 + *(v16 + 64));
    v19 = *v18;
    v20 = *(v18 + 1);
    *(v0 + 16) = v19;
    *(v0 + 24) = v20;
    *(v0 + 160) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC6E8, &qword_23815C638);
    sub_23815471C();

    v21 = *(v0 + 8);

    return v21();
  }
}

uint64_t sub_238124AB0()
{
  *(v0 + 163) = (*(v0 + 144))(*(v0 + 112), *(v0 + 120));
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return MEMORY[0x2822009F8](sub_238124B20, v1, v2);
}

uint64_t sub_238124B20()
{
  v25 = v0;
  v1 = *(v0 + 163);
  v2 = *(v0 + 80);
  v3 = *(v0 + 64);
  v4 = *(v0 + 72);

  v5 = v3 + *(v4 + 64);
  v6 = *v5;
  v7 = *(v5 + 8);
  *(v0 + 32) = v6;
  *(v0 + 40) = v7;
  *(v0 + 161) = (v1 == 2) | v1 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC6E8, &qword_23815C638);
  sub_23815471C();
  sub_23812AE68(v3, v2);

  v8 = sub_23815291C();
  v9 = sub_2381550FC();

  if (os_log_type_enabled(v8, v9))
  {
    v11 = *(v0 + 112);
    v10 = *(v0 + 120);
    v12 = *(v0 + 80);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v24 = v14;
    *v13 = 136315394;
    *(v13 + 4) = sub_238085EAC(v11, v10, &v24);
    *(v13 + 12) = 2080;
    v15 = v12 + *(v4 + 64);
    v16 = *v15;
    v17 = *(v15 + 8);
    *(v0 + 48) = v16;
    *(v0 + 56) = v17;
    sub_23815470C();
    if (*(v0 + 162))
    {
      v18 = 0x64656C6261736964;
    }

    else
    {
      v18 = 0x64656C62616E65;
    }

    if (*(v0 + 162))
    {
      v19 = 0xE800000000000000;
    }

    else
    {
      v19 = 0xE700000000000000;
    }

    sub_23812ECB0(v12, type metadata accessor for DDDeviceDiscoveryView);
    v20 = sub_238085EAC(v18, v19, &v24);

    *(v13 + 14) = v20;
    _os_log_impl(&dword_238060000, v8, v9, "Loaded setting for %s: %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2383EA8A0](v14, -1, -1);
    MEMORY[0x2383EA8A0](v13, -1, -1);
  }

  else
  {
    v21 = *(v0 + 80);

    sub_23812ECB0(v21, type metadata accessor for DDDeviceDiscoveryView);
  }

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_238124DC4()
{
  v1 = v0;
  v2 = type metadata accessor for DDDeviceDiscoveryView(0);
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEED878, &qword_23815EA78);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v16 - v8;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEB9F0, &unk_23815EA80);
  sub_238152A6C();
  swift_endAccess();
  sub_23812AE68(v0, v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v11 = swift_allocObject();
  sub_23812C0A8(v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, type metadata accessor for DDDeviceDiscoveryView);
  sub_2380711D4(&qword_27DEED888, &unk_27DEED878, &qword_23815EA78, MEMORY[0x277CBCEC8]);
  sub_238152AFC();

  (*(v7 + 8))(v9, v6);
  v12 = (v1 + *(v3 + 116));
  v14 = v12[1];
  v17 = *v12;
  v13 = v17;
  v18 = v14;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED868, &qword_23815EA70);
  sub_23815470C();
  sub_2381529AC();

  v16[2] = v13;
  v16[3] = v14;
  v16[1] = v16[4];
  sub_23815471C();
}

void sub_238125098(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DDDeviceDiscoveryView(0);
  v93 = *(v4 - 1);
  v5 = *(v93 + 64);
  MEMORY[0x28223BE20](v4);
  v94 = &v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBA00, &qword_23815B4A0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v78 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEED890, &qword_2381593F0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v78 - v10;
  v12 = sub_238152BAC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v16 = &v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = *(v2 + 32);
  if (v19)
  {
    v92 = v8;
    v95 = (&v78 - v18);
    v90 = *(v2 + 24);
    v20 = v17;
    sub_2380712E4(a1, v11, &unk_27DEED890, &qword_2381593F0);
    if ((*(v13 + 48))(v11, 1, v20) == 1)
    {
      sub_238071284(v11, &unk_27DEED890, &qword_2381593F0);
      if (qword_27DEEA110 != -1)
      {
        swift_once();
      }

      v21 = sub_23815293C();
      __swift_project_value_buffer(v21, qword_27DEED680);
      v22 = sub_23815291C();
      v23 = sub_2381550DC();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_238060000, v22, v23, "boop endpoint is nil", v24, 2u);
        MEMORY[0x2383EA8A0](v24, -1, -1);
      }

      return;
    }

    v89 = v13;
    v29 = v13 + 32;
    v30 = *(v13 + 32);
    v91 = v20;
    v30(v95, v11, v20);
    v31 = (v2 + v4[22]);
    v32 = *v31;
    if (!*v31)
    {
      if (qword_27DEEA110 != -1)
      {
        swift_once();
      }

      v41 = sub_23815293C();
      __swift_project_value_buffer(v41, qword_27DEED680);
      v38 = sub_23815291C();
      v42 = sub_2381550DC();
      if (os_log_type_enabled(v38, v42))
      {
        v43 = swift_slowAlloc();
        *v43 = 0;
        _os_log_impl(&dword_238060000, v38, v42, "no bonjour endpoint callback set", v43, 2u);
        MEMORY[0x2383EA8A0](v43, -1, -1);
      }

      goto LABEL_37;
    }

    v88 = v30;
    v33 = v31[1];
    v34 = (v2 + v4[25]);
    v35 = v34[1];
    if (v35 >> 60 == 15)
    {
      v36 = v33;
      sub_238086B74(v32, v33);
      if (qword_27DEEA110 != -1)
      {
        swift_once();
      }

      v37 = sub_23815293C();
      __swift_project_value_buffer(v37, qword_27DEED680);
      v38 = sub_23815291C();
      v39 = sub_2381550DC();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        *v40 = 0;
        _os_log_impl(&dword_238060000, v38, v39, "public key is nil", v40, 2u);
        MEMORY[0x2383EA8A0](v40, -1, -1);

        sub_23807A454(v32, v36);
LABEL_38:
        (*(v89 + 8))(v95, v91);
        return;
      }

LABEL_36:
      sub_23807A454(v32, v36);
LABEL_37:

      goto LABEL_38;
    }

    v44 = *v34;
    v45 = (v2 + v4[24]);
    v46 = v45[1];
    if (!v46)
    {
      v36 = v33;
      sub_238086B74(v32, v33);
      v74 = v44;
      sub_2380E6764(v44, v35);
      if (qword_27DEEA110 != -1)
      {
        swift_once();
      }

      v75 = sub_23815293C();
      __swift_project_value_buffer(v75, qword_27DEED680);
      v38 = sub_23815291C();
      v76 = sub_2381550DC();
      if (os_log_type_enabled(v38, v76))
      {
        v77 = swift_slowAlloc();
        *v77 = 0;
        _os_log_impl(&dword_238060000, v38, v76, "Missing serviceIdentifier", v77, 2u);
        MEMORY[0x2383EA8A0](v77, -1, -1);

        sub_23807A454(v32, v36);
        sub_238087244(v74, v35);
        goto LABEL_38;
      }

      sub_238087244(v74, v35);
      goto LABEL_36;
    }

    v80 = v29;
    v82 = *v45;
    v87 = v35;
    v47 = v33;
    v84 = sub_238152CEC();

    v81 = v32;
    v86 = v47;
    sub_238086B74(v32, v47);
    v85 = v44;
    sub_2380E6764(v44, v87);
    v83 = v46;

    swift_unknownObjectRetain();
    v48 = sub_238152CBC();
    swift_unknownObjectRelease();
    v84 = v48;
    sub_238152C7C();
    if (qword_27DEEA110 != -1)
    {
      swift_once();
    }

    v49 = v81;
    v50 = sub_23815293C();
    __swift_project_value_buffer(v50, qword_27DEED680);
    v51 = sub_23815291C();
    v52 = sub_2381550FC();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&dword_238060000, v51, v52, "connect with boop endpoint", v53, 2u);
      MEMORY[0x2383EA8A0](v53, -1, -1);
    }

    v54 = sub_238154FBC();
    (*(*(v54 - 8) + 56))(v92, 1, 1, v54);
    sub_23812AE68(v2, v94);
    v55 = v89;
    (*(v89 + 16))(v16, v95, v91);
    sub_238154F8C();
    sub_238086B74(v49, v86);
    sub_2380E6764(v85, v87);

    v56 = sub_238154F7C();
    v57 = (*(v93 + 80) + 32) & ~*(v93 + 80);
    v58 = (v5 + *(v55 + 80) + v57) & ~*(v55 + 80);
    v59 = (v14 + v58 + 7) & 0xFFFFFFFFFFFFFFF8;
    v60 = (v59 + 15) & 0xFFFFFFFFFFFFFFF8;
    v78 = v56;
    v79 = (v60 + 23) & 0xFFFFFFFFFFFFFFF8;
    v93 = (v79 + 23) & 0xFFFFFFFFFFFFFFF8;
    v61 = (v93 + 23) & 0xFFFFFFFFFFFFFFF8;
    v62 = swift_allocObject();
    v63 = MEMORY[0x277D85700];
    *(v62 + 16) = v78;
    *(v62 + 24) = v63;
    sub_23812C0A8(v94, v62 + v57, type metadata accessor for DDDeviceDiscoveryView);
    v64 = v91;
    v88(v62 + v58, v16, v91);
    *(v62 + v59) = v84;
    v65 = (v62 + v60);
    *v65 = v90;
    v65[1] = v19;
    v66 = (v62 + v79);
    v67 = v83;
    *v66 = v82;
    v66[1] = v67;
    v68 = v92;
    v69 = (v62 + v93);
    v70 = v85;
    v71 = v87;
    *v69 = v85;
    v69[1] = v71;
    v72 = (v62 + v61);
    v73 = v86;
    *v72 = v49;
    v72[1] = v73;
    sub_2381351C8(0, 0, v68, &unk_23815EA98, v62);

    sub_23807A454(v49, v73);
    sub_238087244(v70, v71);

    (*(v55 + 8))(v95, v64);
  }

  else
  {
    if (qword_27DEEA110 != -1)
    {
      swift_once();
    }

    v25 = sub_23815293C();
    __swift_project_value_buffer(v25, qword_27DEED680);
    v95 = sub_23815291C();
    v26 = sub_2381550DC();
    if (os_log_type_enabled(v95, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_238060000, v95, v26, "No bundleID for boop endpoint", v27, 2u);
      MEMORY[0x2383EA8A0](v27, -1, -1);
    }

    v28 = v95;
  }
}

uint64_t sub_238125B08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_238154F8C();
  v6[5] = sub_238154F7C();
  v8 = sub_238154F3C();
  v6[6] = v8;
  v6[7] = v7;

  return MEMORY[0x2822009F8](sub_238125BA4, v8, v7);
}

uint64_t sub_238125BA4()
{
  v14 = v0;
  if (qword_27DEEA110 != -1)
  {
    swift_once();
  }

  v1 = sub_23815293C();
  __swift_project_value_buffer(v1, qword_27DEED680);

  v2 = sub_23815291C();
  v3 = sub_2381550FC();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[2];
    v4 = v0[3];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_238085EAC(v5, v4, &v13);
    _os_log_impl(&dword_238060000, v2, v3, "Attempting to set app setting to enabled for %s", v6, 0xCu);
    v8 = __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x2383EA8A0](v7, -1, -1, v8);
    MEMORY[0x2383EA8A0](v6, -1, -1);
  }

  v9 = v0[4];
  v10 = *(v9 + *(type metadata accessor for DDDeviceDiscoveryView(0) + 60));
  v0[8] = v10;
  v11 = (*v10 + 160) & 0xFFFFFFFFFFFFLL | 0x25F0000000000000;
  v0[9] = *(*v10 + 160);
  v0[10] = v11;

  return MEMORY[0x2822009F8](sub_238125D60, v10, 0);
}

uint64_t sub_238125D60()
{
  (*(v0 + 72))(0, *(v0 + 16), *(v0 + 24));
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_238125E04;

  return sub_2381246D4();
}

uint64_t sub_238125E04()
{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return MEMORY[0x2822009F8](sub_238125F24, v3, v2);
}

uint64_t sub_238125F24()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_238125F84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 88) = v15;
  *(v8 + 96) = v16;
  *(v8 + 72) = v14;
  *(v8 + 56) = v13;
  *(v8 + 40) = a7;
  *(v8 + 48) = a8;
  *(v8 + 24) = a5;
  *(v8 + 32) = a6;
  *(v8 + 16) = a4;
  sub_238154F8C();
  *(v8 + 104) = sub_238154F7C();
  v10 = sub_238154F3C();
  *(v8 + 112) = v10;
  *(v8 + 120) = v9;

  return MEMORY[0x2822009F8](sub_23812603C, v10, v9);
}

uint64_t sub_23812603C()
{
  v1 = v0[2];
  v2 = *((*MEMORY[0x277D85000] & **(v1 + *(type metadata accessor for DDDeviceDiscoveryView(0) + 44))) + 0xA8);
  v13 = (v2 + *v2);
  v3 = swift_task_alloc();
  v0[16] = v3;
  *v3 = v0;
  v3[1] = sub_238126184;
  v4 = v0[9];
  v5 = v0[10];
  v6 = v0[7];
  v7 = v0[8];
  v8 = v0[5];
  v9 = v0[6];
  v10 = v0[4];
  v11 = v0[3];

  return v13(v11, v10, v8, v9, v6, v7, v4, v5);
}

uint64_t sub_238126184(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 136) = a1;
  *(v4 + 144) = v1;

  v5 = *(v3 + 120);
  v6 = *(v3 + 112);
  if (v1)
  {
    v7 = sub_238126350;
  }

  else
  {
    v7 = sub_2381262C8;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_2381262C8()
{
  v1 = *(v0 + 136);

  if (v1)
  {
    (*(v0 + 88))(*(v0 + 136));
    swift_unknownObjectRelease();
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_238126350()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t DDDeviceDiscoveryView.endpoint(for:)@<X0>(uint64_t a1@<X8>)
{
  sub_238152A2C();
  sub_2380D23F8(sub_2380EF054, v3, a1);
}

uint64_t sub_238126454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  v8 = sub_2381554BC();
  v7[10] = v8;
  v7[11] = *(v8 - 8);
  v7[12] = swift_task_alloc();
  sub_238154F8C();
  v7[13] = sub_238154F7C();
  v10 = sub_238154F3C();
  v7[14] = v10;
  v7[15] = v9;

  return MEMORY[0x2822009F8](sub_23812654C, v10, v9);
}

uint64_t sub_23812654C()
{
  sub_23815562C();
  v1 = swift_task_alloc();
  *(v0 + 128) = v1;
  *v1 = v0;
  v1[1] = sub_238126618;

  return sub_23814A898(3000000000000000000, 0, 0, 0, 1);
}

uint64_t sub_238126618()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 80);
  *(*v1 + 136) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 120);
  v7 = *(v2 + 112);
  if (v0)
  {
    v8 = sub_238126930;
  }

  else
  {
    v8 = sub_2381267B0;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_2381267B0()
{
  v2 = v0[6];
  v1 = v0[7];

  if (sub_238154CCC() == v2 && v3 == v1)
  {

    goto LABEL_8;
  }

  v5 = sub_2381555CC();

  if (v5)
  {
LABEL_8:
    v6 = v0[9];
    swift_getKeyPath();
    swift_getKeyPath();
    v7 = sub_238152A7C();
    v9 = v8;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v9;
    *v9 = 0x8000000000000000;
    sub_2380C7958(54, v6, isUniquelyReferenced_nonNull_native);
    *v9 = v13;

    v7(v0 + 2, 0);
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_238126930()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23812699C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 352) = v22;
  *(v8 + 360) = v23;
  *(v8 + 320) = v20;
  *(v8 + 336) = v21;
  *(v8 + 304) = a7;
  *(v8 + 312) = a8;
  *(v8 + 288) = a5;
  *(v8 + 296) = a6;
  v9 = sub_238154F5C();
  *(v8 + 368) = v9;
  *(v8 + 376) = *(v9 - 8);
  *(v8 + 384) = swift_task_alloc();
  *(v8 + 392) = swift_task_alloc();
  *(v8 + 400) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEED6A0, &unk_23815E808);
  *(v8 + 408) = swift_task_alloc();
  *(v8 + 416) = swift_task_alloc();
  *(v8 + 424) = swift_task_alloc();
  v10 = type metadata accessor for PermissionTask(0);
  *(v8 + 432) = v10;
  *(v8 + 440) = *(v10 - 8);
  *(v8 + 448) = swift_task_alloc();
  v11 = sub_2381536AC();
  *(v8 + 456) = v11;
  *(v8 + 464) = *(v11 - 8);
  *(v8 + 472) = swift_task_alloc();
  *(v8 + 480) = swift_task_alloc();
  *(v8 + 488) = swift_task_alloc();
  *(v8 + 496) = type metadata accessor for _DDNodeDecoration.Kind(0);
  *(v8 + 504) = swift_task_alloc();
  *(v8 + 512) = swift_task_alloc();
  *(v8 + 520) = swift_task_alloc();
  *(v8 + 528) = type metadata accessor for _DDNodeDecoration(0);
  *(v8 + 536) = swift_task_alloc();
  *(v8 + 544) = swift_task_alloc();
  *(v8 + 552) = swift_task_alloc();
  v12 = sub_238154ABC();
  *(v8 + 560) = v12;
  *(v8 + 568) = *(v12 - 8);
  *(v8 + 576) = swift_task_alloc();
  v13 = sub_238154AAC();
  *(v8 + 584) = v13;
  *(v8 + 592) = *(v13 - 8);
  *(v8 + 600) = swift_task_alloc();
  *(v8 + 608) = swift_task_alloc();
  v14 = sub_238152BAC();
  *(v8 + 616) = v14;
  *(v8 + 624) = *(v14 - 8);
  *(v8 + 632) = swift_task_alloc();
  *(v8 + 640) = swift_task_alloc();
  v15 = sub_2381527EC();
  *(v8 + 648) = v15;
  *(v8 + 656) = *(v15 - 8);
  *(v8 + 664) = swift_task_alloc();
  *(v8 + 672) = swift_task_alloc();
  *(v8 + 680) = swift_task_alloc();
  *(v8 + 688) = swift_task_alloc();
  *(v8 + 696) = swift_task_alloc();
  *(v8 + 704) = swift_task_alloc();
  *(v8 + 712) = swift_task_alloc();
  *(v8 + 720) = swift_task_alloc();
  *(v8 + 728) = swift_projectBox();
  sub_238154F8C();
  *(v8 + 736) = sub_238154F7C();
  v16 = sub_238154F3C();
  *(v8 + 744) = v16;
  *(v8 + 752) = v17;

  return MEMORY[0x2822009F8](sub_238126E94, v16, v17);
}

void sub_238126E94()
{
  v0[5] = &type metadata for RapportFeatureFlags;
  v0[6] = sub_23812277C();
  v1 = sub_23815283C();
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  if (v1)
  {
    swift_beginAccess();
    sub_238152B4C();
    swift_endAccess();
  }

  v2 = v0[91];
  v3 = v0[80];
  v4 = v0[78];
  v5 = v0[77];
  v6 = v0[36];
  v7 = type metadata accessor for DDDeviceDiscoveryView(0);
  v0[95] = v7;
  v8 = *(v6 + *(v7 + 44));
  swift_beginAccess();
  v9 = *(v4 + 16);
  v0[96] = v9;
  v0[97] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v3, v2, v5);
  v10 = *((*MEMORY[0x277D85000] & *v8) + 0xB0);
  v12 = v10 + *v10;
  v11 = swift_task_alloc();
  v0[98] = v11;
  *v11 = v0;
  v11[1] = sub_2381270F4;

  __asm { BRAA            X9, X16 }
}

uint64_t sub_2381270F4()
{
  v2 = *v1;
  v2[99] = v0;

  v3 = v2[80];
  v4 = v2[78];
  v5 = v2[77];
  v8 = *(v4 + 8);
  v6 = v4 + 8;
  v7 = v8;
  if (v0)
  {
    v7(v3, v5);
    v9 = v2[94];
    v10 = v2[93];
    v11 = sub_238128164;
  }

  else
  {
    v2[100] = v7;
    v2[101] = v6 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v7(v3, v5);
    v9 = v2[94];
    v10 = v2[93];
    v11 = sub_2381272B4;
  }

  return MEMORY[0x2822009F8](v11, v10, v9);
}

uint64_t sub_2381272B4()
{
  v128 = v0;
  v127 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 720);
  v2 = *(v0 + 712);
  v3 = *(v0 + 704);
  v4 = *(v0 + 696);
  v5 = *(v0 + 656);
  v6 = *(v0 + 648);

  v7 = *(v5 + 32);
  v7(v1, v3, v6);
  v7(v2, v4, v6);
  *(v0 + 816) = sub_2381527CC();
  *(v0 + 824) = v8;
  *(v0 + 825) = v9;
  *(v0 + 826) = v10;
  *(v0 + 827) = v11;
  *(v0 + 828) = v12;
  *(v0 + 829) = v13;
  *(v0 + 830) = v14;
  *(v0 + 831) = v15;
  *(v0 + 832) = sub_2381527CC();
  *(v0 + 840) = v16;
  *(v0 + 841) = v17;
  *(v0 + 842) = v18;
  *(v0 + 843) = v19;
  *(v0 + 844) = v20;
  *(v0 + 845) = v21;
  *(v0 + 846) = v22;
  *(v0 + 847) = v23;
  if (qword_27DEEA110 != -1)
  {
    goto LABEL_34;
  }

  while (1)
  {
    v24 = *(v0 + 720);
    v25 = *(v0 + 712);
    v26 = *(v0 + 688);
    v27 = *(v0 + 680);
    v28 = *(v0 + 656);
    v29 = *(v0 + 648);
    v30 = sub_23815293C();
    __swift_project_value_buffer(v30, qword_27DEED680);
    v31 = *(v28 + 16);
    v31(v26, v24, v29);
    v31(v27, v25, v29);

    v32 = sub_23815291C();
    v33 = sub_2381550FC();

    v34 = os_log_type_enabled(v32, v33);
    v35 = *(v0 + 688);
    v36 = *(v0 + 680);
    v37 = *(v0 + 656);
    v38 = *(v0 + 648);
    v120 = v31;
    if (v34)
    {
      v39 = *(v0 + 312);
      v40 = *(v0 + 320);
      v117 = v33;
      v41 = swift_slowAlloc();
      v122 = swift_slowAlloc();
      v125 = v122;
      *v41 = 136315650;
      *(v41 + 4) = sub_238085EAC(v39, v40, &v125);
      *(v41 + 12) = 2080;
      sub_23812F7E0(&qword_27DEED670, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v42 = sub_23815559C();
      v44 = v43;
      v45 = *(v37 + 8);
      v45(v35, v38);
      v46 = sub_238085EAC(v42, v44, &v125);

      *(v41 + 14) = v46;
      *(v41 + 22) = 2080;
      v47 = sub_23815559C();
      v49 = v48;
      v121 = v45;
      v45(v36, v38);
      v50 = sub_238085EAC(v47, v49, &v125);

      *(v41 + 24) = v50;
      _os_log_impl(&dword_238060000, v32, v117, "Creating endpoint for service name: %s and endpointUUID: %s and agentUUID: %s", v41, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x2383EA8A0](v122, -1, -1);
      MEMORY[0x2383EA8A0](v41, -1, -1);
    }

    else
    {

      v51 = *(v37 + 8);
      v51(v36, v38);
      v121 = v51;
      v51(v35, v38);
    }

    v52 = *(v0 + 800);
    v53 = *(v0 + 768);
    v54 = *(v0 + 728);
    v55 = *(v0 + 632);
    v56 = *(v0 + 616);
    sub_238154D3C();
    nw_endpoint_create_application_service();

    nw_endpoint_set_agent_identifier();
    swift_beginAccess();
    v53(v55, v54, v56);
    v57 = sub_2381313CC(v55);
    v59 = v58;
    v52(v55, v56);
    if (!v59)
    {
      v78 = sub_23815291C();
      v79 = sub_2381550FC();
      if (os_log_type_enabled(v78, v79))
      {
        v80 = swift_slowAlloc();
        *v80 = 0;
        _os_log_impl(&dword_238060000, v78, v79, "Endpoint does not have a device ID, generating a random one", v80, 2u);
        MEMORY[0x2383EA8A0](v80, -1, -1);
      }

      v81 = *(v0 + 672);
      v82 = *(v0 + 648);

      sub_2381527DC();
      sub_23815279C();
      v121(v81, v82);
      v77 = *(v0 + 792);
      goto LABEL_12;
    }

    v60 = *(v0 + 792);
    log = *(v0 + 608);
    v123 = *(v0 + 600);
    v61 = *(v0 + 592);
    v118 = *(v0 + 584);
    v62 = *(v0 + 576);
    v63 = *(v0 + 568);
    v64 = *(v0 + 560);
    v66 = *(v0 + 296);
    v65 = *(v0 + 304);
    v125 = v57;
    v126 = v59;
    MEMORY[0x2383E9410](46, 0xE100000000000000);
    MEMORY[0x2383E9410](v66, v65);
    v67 = sub_238128D8C(v125, v126);
    v69 = v68;
    sub_23812F7E0(&qword_27DEED8E0, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
    sub_238154A9C();
    sub_238085D80(v67, v69);
    sub_2381294AC(v67, v69, v62);
    v111 = v69;
    sub_238085CA0(v67, v69);
    sub_238154A8C();
    (*(v63 + 8))(v62, v64);
    (*(v61 + 16))(v123, log, v118);
    sub_23812F7E0(&qword_27DEED8E8, MEMORY[0x277CC5290], MEMORY[0x277CC52A8]);
    sub_238154E9C();
    v70 = *(v0 + 248);
    v71 = *(v0 + 256);
    v72 = *(v70 + 16);
    v113 = v67;
    v114 = v60;
    if (v71 == v72)
    {
      break;
    }

    if ((v71 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    v73 = MEMORY[0x277D84F90];
    while (v71 < *(v70 + 16))
    {
      v97 = *(v70 + 32 + v71);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEED8F0, &qword_23815C2E0);
      v98 = swift_allocObject();
      *(v98 + 16) = xmmword_238157F20;
      *(v98 + 56) = MEMORY[0x277D84B78];
      *(v98 + 64) = MEMORY[0x277D84BC0];
      *(v98 + 32) = v97;
      v99 = sub_238154CEC();
      v101 = v100;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v73 = sub_2380BB558(0, *(v73 + 2) + 1, 1, v73);
      }

      v103 = *(v73 + 2);
      v102 = *(v73 + 3);
      if (v103 >= v102 >> 1)
      {
        v73 = sub_2380BB558((v102 > 1), v103 + 1, 1, v73);
      }

      ++v71;
      *(v73 + 2) = v103 + 1;
      v104 = &v73[16 * v103];
      *(v104 + 4) = v99;
      *(v104 + 5) = v101;
      if (v72 == v71)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_34:
    swift_once();
  }

  v73 = MEMORY[0x277D84F90];
LABEL_8:
  v74 = *(v0 + 608);
  v75 = *(v0 + 592);
  v76 = *(v0 + 584);

  *(v0 + 280) = v73;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBB70, &qword_238159970);
  sub_2380711D4(&qword_27DEEBB78, &qword_27DEEBB70, &qword_238159970, MEMORY[0x277D83958]);
  sub_238154C6C();
  sub_238085CA0(v113, v111);

  (*(v75 + 8))(v74, v76);
  v77 = v114;
LABEL_12:
  sub_238154D3C();

  nw_endpoint_set_device_id();

  swift_storeEnumTagMultiPayload();
  v83 = sub_23815467C();

  sub_2381536BC();
  if (v77)
  {

    return swift_unexpectedError();
  }

  else
  {
    v115 = *(v0 + 760);
    v124 = *(v0 + 720);
    v119 = *(v0 + 712);
    v110 = *(v0 + 672);
    v112 = *(v0 + 648);
    v85 = *(v0 + 552);
    v86 = *(v0 + 528);
    v87 = *(v0 + 488);
    v88 = *(v0 + 456);
    v89 = *(v0 + 464);
    v90 = *(v0 + 336);
    v91 = *(v0 + 288);
    sub_23812C0A8(*(v0 + 520), v85, type metadata accessor for _DDNodeDecoration.Kind);
    *(v85 + *(v86 + 20)) = v83;
    (*(v89 + 32))(v85 + *(v86 + 24), v87, v88);
    sub_2380A9944(v90, v85);
    sub_23812ECB0(v85, type metadata accessor for _DDNodeDecoration);
    v120(v110, v90, v112);
    swift_getKeyPath();
    swift_getKeyPath();
    v92 = sub_238152A7C();
    sub_23809F86C(107, v110);
    v92(v0 + 120, 0);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC000, &qword_23815B500);
    sub_238154FCC();
    v93 = *(v91 + *(v115 + 84));
    swift_unknownObjectRetain();
    v93();
    swift_unknownObjectRelease_n();
    v121(v119, v112);
    v121(v124, v112);
    v94 = *(v0 + 432);
    v95 = *(v0 + 440);
    v96 = *(v0 + 424);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEED6F0, &unk_23815E930);
    sub_23815470C();
    if ((*(v95 + 48))(v96, 1, v94) == 1)
    {
      sub_238071284(*(v0 + 424), &unk_27DEED6A0, &unk_23815E808);
    }

    else
    {
      sub_23812C0A8(*(v0 + 424), *(v0 + 448), type metadata accessor for PermissionTask);
      v105 = sub_2381527AC();
      v106 = *(v0 + 448);
      if (v105)
      {
        v108 = *(v0 + 408);
        v107 = *(v0 + 416);
        (*(*(v0 + 440) + 56))(v107, 1, 1, *(v0 + 432));
        sub_2380712E4(v107, v108, &unk_27DEED6A0, &unk_23815E808);
        sub_23815471C();
        sub_238071284(v107, &unk_27DEED6A0, &unk_23815E808);
      }

      sub_23812ECB0(v106, type metadata accessor for PermissionTask);
    }

    v109 = *(v0 + 8);

    return v109();
  }
}

uint64_t sub_238128164()
{
  v89 = v0;
  v88[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 792);

  *(v0 + 264) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC000, &qword_23815B500);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 400);
    v5 = *(v0 + 376);
    v4 = *(v0 + 384);
    v6 = *(v0 + 368);

    (*(v5 + 32))(v3, v4, v6);
    if (qword_27DEEA110 != -1)
    {
      swift_once();
    }

    v7 = *(v0 + 664);
    v8 = *(v0 + 656);
    v9 = *(v0 + 648);
    v11 = *(v0 + 392);
    v10 = *(v0 + 400);
    v12 = *(v0 + 368);
    v13 = *(v0 + 376);
    v14 = *(v0 + 336);
    v15 = sub_23815293C();
    __swift_project_value_buffer(v15, qword_27DEED680);
    v84 = *(v8 + 16);
    v84(v7, v14, v9);
    v16 = *(v13 + 16);
    v16(v11, v10, v12);
    v17 = sub_23815291C();
    v18 = sub_2381550DC();
    v19 = os_log_type_enabled(v17, v18);
    v20 = *(v0 + 664);
    v21 = *(v0 + 656);
    v22 = *(v0 + 648);
    v85 = *(v0 + 392);
    v23 = *(v0 + 368);
    v24 = *(v0 + 376);
    if (v19)
    {
      v78 = v18;
      v25 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      v88[0] = v81;
      *v25 = 136315394;
      sub_23812F7E0(&qword_27DEED670, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v74 = v16;
      v76 = v17;
      v26 = sub_23815559C();
      v28 = v27;
      (*(v21 + 8))(v20, v22);
      v29 = sub_238085EAC(v26, v28, v88);

      *(v25 + 4) = v29;
      *(v25 + 12) = 2112;
      sub_23812F7E0(&qword_27DEEC4A0, MEMORY[0x277D85678], MEMORY[0x277D85680]);
      swift_allocError();
      v74(v30, v85, v23);
      v31 = _swift_stdlib_bridgeErrorToNSError();
      v32 = *(v24 + 8);
      v32(v85, v23);
      *(v25 + 14) = v31;
      *v77 = v31;
      _os_log_impl(&dword_238060000, v76, v78, "Attempt to connect to node %s cancelled: %@", v25, 0x16u);
      sub_238071284(v77, &unk_27DEECA10, &qword_2381588F0);
      MEMORY[0x2383EA8A0](v77, -1, -1);
      v33 = __swift_destroy_boxed_opaque_existential_1(v81);
      MEMORY[0x2383EA8A0](v81, -1, -1, v33);
      MEMORY[0x2383EA8A0](v25, -1, -1);
    }

    else
    {

      v32 = *(v24 + 8);
      v32(v85, v23);
      (*(v21 + 8))(v20, v22);
    }

    swift_storeEnumTagMultiPayload();
    v47 = sub_23815467C();

    sub_2381536BC();
    v73 = *(v0 + 672);
    v75 = *(v0 + 648);
    v87 = v32;
    v57 = *(v0 + 544);
    v58 = *(v0 + 528);
    v59 = *(v0 + 480);
    v60 = *(v0 + 456);
    v61 = *(v0 + 464);
    v80 = *(v0 + 368);
    v83 = *(v0 + 400);
    v62 = *(v0 + 336);
    sub_23812C0A8(*(v0 + 512), v57, type metadata accessor for _DDNodeDecoration.Kind);
    *(v57 + *(v58 + 20)) = v47;
    (*(v61 + 32))(v57 + *(v58 + 24), v59, v60);
    sub_2380A9944(v62, v57);
    sub_23812ECB0(v57, type metadata accessor for _DDNodeDecoration);
    v84(v73, v62, v75);
    swift_getKeyPath();
    swift_getKeyPath();
    v63 = sub_238152A7C();
    sub_23809F86C(107, v73);
    v63(v0 + 88, 0);

    sub_238154FCC();
    v87(v83, v80);
    v56 = *(v0 + 264);
  }

  else
  {

    if (qword_27DEEA110 != -1)
    {
      swift_once();
    }

    v34 = *(v0 + 792);
    v35 = sub_23815293C();
    __swift_project_value_buffer(v35, qword_27DEED680);
    v36 = v34;
    v37 = sub_23815291C();
    v38 = sub_2381550DC();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = *(v0 + 792);
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *v40 = 138412290;
      v42 = v39;
      v43 = _swift_stdlib_bridgeErrorToNSError();
      *(v40 + 4) = v43;
      *v41 = v43;
      _os_log_impl(&dword_238060000, v37, v38, "Error while attempting to connect and interact with node: %@", v40, 0xCu);
      sub_238071284(v41, &unk_27DEECA10, &qword_2381588F0);
      MEMORY[0x2383EA8A0](v41, -1, -1);
      MEMORY[0x2383EA8A0](v40, -1, -1);
    }

    v44 = *(v0 + 504);

    swift_getErrorValue();
    *v44 = sub_23815563C();
    v44[1] = v45;
    swift_storeEnumTagMultiPayload();
    v46 = sub_23815467C();

    sub_2381536BC();
    v86 = *(v0 + 792);
    v48 = *(v0 + 656);
    v79 = *(v0 + 672);
    v82 = *(v0 + 648);
    v49 = *(v0 + 536);
    v50 = *(v0 + 528);
    v51 = *(v0 + 464);
    v52 = *(v0 + 472);
    v53 = *(v0 + 456);
    v54 = *(v0 + 336);
    sub_23812C0A8(*(v0 + 504), v49, type metadata accessor for _DDNodeDecoration.Kind);
    *(v49 + *(v50 + 20)) = v46;
    (*(v51 + 32))(v49 + *(v50 + 24), v52, v53);
    sub_2380A9944(v54, v49);
    sub_23812ECB0(v49, type metadata accessor for _DDNodeDecoration);
    (*(v48 + 16))(v79, v54, v82);
    swift_getKeyPath();
    swift_getKeyPath();
    v55 = sub_238152A7C();
    sub_23809F86C(107, v79);
    v55(v0 + 56, 0);

    sub_238154FCC();
    v56 = v86;
  }

  v64 = *(v0 + 432);
  v65 = *(v0 + 440);
  v66 = *(v0 + 424);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEED6F0, &unk_23815E930);
  sub_23815470C();
  if ((*(v65 + 48))(v66, 1, v64) == 1)
  {
    sub_238071284(*(v0 + 424), &unk_27DEED6A0, &unk_23815E808);
  }

  else
  {
    sub_23812C0A8(*(v0 + 424), *(v0 + 448), type metadata accessor for PermissionTask);
    v67 = sub_2381527AC();
    v68 = *(v0 + 448);
    if (v67)
    {
      v70 = *(v0 + 408);
      v69 = *(v0 + 416);
      (*(*(v0 + 440) + 56))(v69, 1, 1, *(v0 + 432));
      sub_2380712E4(v69, v70, &unk_27DEED6A0, &unk_23815E808);
      sub_23815471C();
      sub_238071284(v69, &unk_27DEED6A0, &unk_23815E808);
    }

    sub_23812ECB0(v68, type metadata accessor for PermissionTask);
  }

  v71 = *(v0 + 8);

  return v71();
}

uint64_t sub_238128D8C(uint64_t a1, unint64_t a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v39[0] = a1;
  v39[1] = a2;
  *&v42 = a1;
  *(&v42 + 1) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED900, &qword_23815EC58);
  if (swift_dynamicCast())
  {
    sub_23812F930(__src, &v43);
    __swift_project_boxed_opaque_existential_1(&v43, v44);
    sub_2381525FC();
    __src[0] = v42;
    __swift_destroy_boxed_opaque_existential_1(&v43);
    goto LABEL_63;
  }

  v41 = 0;
  memset(__src, 0, sizeof(__src));
  sub_238071284(__src, &qword_27DEED908, &qword_23815EC60);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_23815544C();
  }

  sub_2381297E8(&v43, v4, v5);
  v6 = *(&v43 + 1);
  v7 = v43;
  if (*(&v43 + 1) >> 60 != 15)
  {
    __src[0] = v43;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = sub_23812F828(v8);
  *(&__src[0] + 1) = v9;
  MEMORY[0x28223BE20](*&__src[0]);
  v34[2] = v39;
  sub_2381298B0(sub_23812F8C8, v34);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        sub_23815271C();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v36 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v42 + 7) = 0;
  *&v42 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v35 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v37 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v38 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = sub_23812976C(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = sub_238154E0C();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = sub_238154E3C();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v43 = v14;
      *(&v43 + 1) = v38;
      v31 = *(&v43 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v37;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = sub_23815544C();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = sub_23812976C(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = sub_238154E1C();
LABEL_52:
    *(&v42 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v43 = v42;
      *(&v43 + 6) = *(&v42 + 6);
      sub_23815272C();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v35;
  if (v24)
  {
    *&v43 = v42;
    *(&v43 + 6) = *(&v42 + 6);
    sub_23815272C();
    sub_238087244(v36, v6);
    goto LABEL_62;
  }

LABEL_57:

  sub_238087244(v36, v6);
LABEL_63:
  v32 = __src[0];
  sub_238085D80(*&__src[0], *(&__src[0] + 1));

  sub_238085CA0(v32, *(&v32 + 1));
  return v32;
}

void sub_2381292D4(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  *a2 = v3;
}

uint64_t sub_238129354(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_238152A9C();
}

id sub_2381293D0(uint64_t a1, uint64_t a2, char a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v5 = sub_238154C8C();

  v10[0] = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_23815266C();

    swift_willThrow();
  }

  return v6;
}

uint64_t sub_2381294AC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      sub_238154ABC();
      sub_23812F7E0(&qword_27DEED8E0, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
      return sub_238154A7C();
    }

    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_23812968C(v5, v6);
  }

  if (v3 == 2)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    return sub_23812968C(v5, v6);
  }

  sub_238154ABC();
  sub_23812F7E0(&qword_27DEED8E0, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
  return sub_238154A7C();
}

uint64_t sub_23812968C(uint64_t a1, uint64_t a2)
{
  result = sub_2381525AC();
  if (!result || (result = sub_2381525DC(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_2381525CC();
      sub_238154ABC();
      sub_23812F7E0(&qword_27DEED8E0, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
      return sub_238154A7C();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_23812976C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_238154E4C();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x2383E9460](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t *sub_2381297E8@<X0>(uint64_t *__return_ptr a1@<X8>, _BYTE *__src@<X0>, unint64_t a3@<X1>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a3)
  {
    if (a3 <= 14)
    {
      result = sub_23812C110(__src, &__src[a3]);
      v6 = v9 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      sub_2381525EC();
      swift_allocObject();
      v8 = sub_23815259C();
      if (a3 >= 0x7FFFFFFF)
      {
        sub_23815270C();
        result = swift_allocObject();
        result[2] = 0;
        result[3] = a3;
        v6 = v8 | 0x8000000000000000;
      }

      else
      {
        result = (a3 << 32);
        v6 = v8 | 0x4000000000000000;
      }
    }
  }

  *a1 = result;
  a1[1] = v6;
  return result;
}

void sub_2381298B0(void (*a1)(uint64_t *__return_ptr, void *, char *, double), uint64_t a2)
{
  v4 = v2;
  v20[2] = *MEMORY[0x277D85DE8];
  v7 = *v2;
  v6 = v2[1];
  v8 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v8 != 2)
    {
      memset(v20, 0, 15);
      (a1)(&v18, v20, v20);
      return;
    }

    sub_238085CA0(v7, v6);
    v18 = v7;
    v19 = v6 & 0x3FFFFFFFFFFFFFFFLL;
    *v4 = xmmword_23815E7E0;
    sub_238085CA0(0, 0xC000000000000000);
    sub_2381526DC();
    sub_23812A114(*(v18 + 16), *(v18 + 24), a1, v11);
    v12 = v19 | 0x8000000000000000;
    if (!v3)
    {
      *v4 = v18;
      v4[1] = v12;
      return;
    }

    *v4 = v18;
    goto LABEL_18;
  }

  if (!v8)
  {
    v9 = sub_238085CA0(v7, v6);
    v20[0] = v7;
    LOWORD(v20[1]) = v6;
    BYTE2(v20[1]) = BYTE2(v6);
    BYTE3(v20[1]) = BYTE3(v6);
    BYTE4(v20[1]) = BYTE4(v6);
    BYTE5(v20[1]) = BYTE5(v6);
    BYTE6(v20[1]) = BYTE6(v6);
    a1(&v18, v20, v20 + BYTE6(v6), v9);
    v10 = LODWORD(v20[1]) | ((WORD2(v20[1]) | (BYTE6(v20[1]) << 16)) << 32);
    *v4 = v20[0];
    v4[1] = v10;
    return;
  }

  v13 = v6 & 0x3FFFFFFFFFFFFFFFLL;

  sub_238085CA0(v7, v6);
  *v4 = xmmword_23815E7E0;
  sub_238085CA0(0, 0xC000000000000000);
  v14 = v7 >> 32;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    if (v14 < v7)
    {
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    if (sub_2381525AC() && __OFSUB__(v7, sub_2381525DC()))
    {
LABEL_22:
      __break(1u);
    }

    sub_2381525EC();
    swift_allocObject();
    v15 = sub_23815258C();

    v13 = v15;
  }

  if (v14 < v7)
  {
    __break(1u);
    goto LABEL_21;
  }

  sub_23812A114(v7, v7 >> 32, a1, v16);

  v12 = v13 | 0x4000000000000000;
  if (v3)
  {
    *v4 = v7;
LABEL_18:
    v4[1] = v12;
    return;
  }

  *v4 = v7;
  v4[1] = v12;
}

_BYTE *sub_238129C54@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_23812C110(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_23812C1C8(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_23812C244(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

uint64_t sub_238129CE8@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v6 != 2)
    {
      if (result)
      {
        v7 = 1;
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

    v8 = result;
    v9 = *(a2 + 16);
    v10 = *(a2 + 24);
    v11 = sub_2381525AC();
    if (v11)
    {
      v12 = sub_2381525DC();
      if (__OFSUB__(v9, v12))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v11 += v9 - v12;
    }

    v13 = __OFSUB__(v10, v9);
    v14 = v10 - v9;
    if (!v13)
    {
      result = sub_2381525CC();
      if (result >= v14)
      {
        v15 = v14;
      }

      else
      {
        v15 = result;
      }

      if (!v8)
      {
        goto LABEL_37;
      }

      if (!v11)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v8;
      if (v11 == v8)
      {
LABEL_27:
        v7 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v11, v15);
      v7 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v6)
  {
    __s2 = a2;
    v21 = a3;
    v22 = BYTE2(a3);
    v23 = BYTE3(a3);
    v24 = BYTE4(a3);
    v25 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v7 = result == 0;
LABEL_30:
      *a4 = v7;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v16 = a2;
  v17 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v18 = result;
  v11 = sub_2381525AC();
  if (!v11)
  {
    goto LABEL_21;
  }

  v19 = sub_2381525DC();
  if (__OFSUB__(v16, v19))
  {
LABEL_34:
    __break(1u);
  }

  v11 += v16 - v19;
LABEL_21:
  result = sub_2381525CC();
  if (result >= v17)
  {
    v15 = v17;
  }

  else
  {
    v15 = result;
  }

  if (!v18)
  {
    goto LABEL_38;
  }

  if (v11)
  {
    result = v18;
    if (v11 == v18)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_238129F18(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, __n128 a5)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v8 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v8)
    {
      v14[0] = a1;
      LOWORD(v14[1]) = a2;
      BYTE2(v14[1]) = BYTE2(a2);
      BYTE3(v14[1]) = BYTE3(a2);
      BYTE4(v14[1]) = BYTE4(a2);
      BYTE5(v14[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v9 = a1;
    v10 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v11 = sub_23812C3A4(v9, v10, a5, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_238085CA0(a3, a4);
    return v11 & 1;
  }

  if (v8 == 2)
  {
    v9 = *(a1 + 16);
    v10 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v14, 0, 14);
LABEL_9:
  sub_238129CE8(v14, a3, a4, &v13);
  v11 = v5;
  sub_238085CA0(a3, a4);
  if (!v5)
  {
    v11 = v13;
  }

  return v11 & 1;
}

void *sub_23812A0A8(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = (a1)(&v6, 0, 0, 0, a4);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

char *sub_23812A114(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *), __n128 a4)
{
  result = sub_2381525AC();
  if (!result)
  {
    goto LABEL_12;
  }

  v9 = result;
  result = sub_2381525DC();
  v10 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v11 = __OFSUB__(a2, a1);
  v12 = a2 - a1;
  if (v11)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v13 = sub_2381525CC();
  if (v13 >= v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = v13;
  }

  result = a3(&v15, &v9[v10], &v9[v10 + v14]);
  if (!v4)
  {
    return v15;
  }

  return result;
}

uint64_t sub_23812A1C8@<X0>(uint64_t result@<X0>, void *a4@<X8>)
{
  if (result)
  {
    result = sub_23815542C();
    if ((v5 & 1) == 0)
    {
      *a4 = 0;
      a4[1] = 0xE000000000000000;
      a4[2] = 15;
      a4[3] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_23812A21C()
{
  result = qword_27DEED6E8;
  if (!qword_27DEED6E8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DDDataReturnType, &type metadata for DDDataReturnType, v0, v1);
    atomic_store(result, &qword_27DEED6E8);
  }

  return result;
}

uint64_t sub_23812A2B8(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_238152E1C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 40);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEED6F0, &unk_23815E930);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 68);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_23812A3FC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_238152E1C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 40);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEED6F0, &unk_23815E930);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 68);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_23812A52C(uint64_t a1)
{
  type metadata accessor for DeviceBrowserViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_2381531EC();
    if (v2 <= 0x3F)
    {
      type metadata accessor for _DDAirDropMetadataCache(319);
      if (v3 <= 0x3F)
      {
        sub_23812A908(319, &qword_27DEED710, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_238152CEC();
          if (v5 <= 0x3F)
          {
            sub_238152E1C();
            if (v6 <= 0x3F)
            {
              sub_23815289C();
              if (v7 <= 0x3F)
              {
                sub_2381528EC();
                if (v8 <= 0x3F)
                {
                  sub_23812A908(319, &qword_27DEED718, MEMORY[0x277D04788], MEMORY[0x277CE10B8]);
                  if (v9 <= 0x3F)
                  {
                    sub_23812A9EC(319, &qword_27DEED720, &unk_27DEED6A0, &unk_23815E808, MEMORY[0x277CE10B8]);
                    if (v10 <= 0x3F)
                    {
                      sub_23812A9EC(319, &qword_27DEED728, &qword_27DEEADE8, &qword_238158E00, MEMORY[0x277CE10B8]);
                      if (v11 <= 0x3F)
                      {
                        sub_238067930();
                        if (v12 <= 0x3F)
                        {
                          sub_23812A864(319, v12);
                          if (v13 <= 0x3F)
                          {
                            sub_23812A9EC(319, &qword_27DEEB2B0, &unk_27DEED750, &qword_238159750, MEMORY[0x277D83D88]);
                            if (v14 <= 0x3F)
                            {
                              sub_23812A908(319, &unk_27DEECD90, MEMORY[0x277CC9318], MEMORY[0x277D83D88]);
                              if (v15 <= 0x3F)
                              {
                                sub_23812A958(319);
                                if (v16 <= 0x3F)
                                {
                                  sub_23812A9EC(319, &qword_27DEED768, &unk_27DEED6B8, &qword_23815E818, MEMORY[0x277CE10B8]);
                                  if (v17 <= 0x3F)
                                  {
                                    swift_cvw_initStructMetadataWithLayoutString();
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
      }
    }
  }
}

void sub_23812A864(uint64_t a1, uint64_t a2)
{
  if (!qword_27DEED738)
  {
    sub_23812A8BC(255, a2);
    v2 = sub_23815530C();
    if (!v3)
    {
      atomic_store(v2, &qword_27DEED738);
    }
  }
}

unint64_t sub_23812A8BC(uint64_t a1, uint64_t a2)
{
  result = qword_27DEED740;
  if (!qword_27DEED740)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DEED740);
  }

  return result;
}

void sub_23812A908(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_23812A958(uint64_t a1)
{
  if (!qword_27DEED760)
  {
    type metadata accessor for DDDeviceAccessController(255);
    sub_23812F7E0(&qword_27DEED6B0, type metadata accessor for DDDeviceAccessController, byte_238159338);
    v1 = sub_2381539EC();
    if (!v2)
    {
      atomic_store(v1, &qword_27DEED760);
    }
  }
}

void sub_23812A9EC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_23812AA54()
{
  result = qword_27DEED7D0;
  if (!qword_27DEED7D0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEED6E0, &qword_23815E838);
    v4[0] = sub_23812AAE0();
    v4[1] = MEMORY[0x277CDFC60];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEED7D0);
  }

  return result;
}

unint64_t sub_23812AAE0()
{
  result = qword_27DEED7D8;
  if (!qword_27DEED7D8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEED6D0, &qword_23815E828);
    v4[0] = sub_2380711D4(&qword_27DEED7E0, &unk_27DEED7E8, &qword_23815E968, MEMORY[0x277CE1198]);
    v4[1] = MEMORY[0x277CE0880];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEED7D8);
  }

  return result;
}

uint64_t sub_23812ABBC(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_2381527EC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_23812AC7C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_2381527EC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_23812AD20(uint64_t a1)
{
  sub_23812ADAC();
  if (v1 <= 0x3F)
  {
    sub_2381527EC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23812ADAC()
{
  if (!qword_27DEED808)
  {
    v0 = sub_238154FFC();
    if (!v1)
    {
      atomic_store(v0, &qword_27DEED808);
    }
  }
}

unint64_t sub_23812AE14()
{
  result = qword_27DEED810;
  if (!qword_27DEED810)
  {
    result = swift_getWitnessTable(byte_23815E9D0, &type metadata for DDServiceType, v0, v1);
    atomic_store(result, &qword_27DEED810);
  }

  return result;
}

uint64_t sub_23812AE68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DDDeviceDiscoveryView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23812AED0()
{
  v2 = *(type metadata accessor for DDDeviceDiscoveryView(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_238088780;

  return sub_238123A04(v0 + v3);
}

uint64_t objectdestroyTm_2()
{
  v1 = type metadata accessor for DDDeviceDiscoveryView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  v6 = v1[10];
  v7 = sub_238152E1C();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  v8 = v0 + v3 + v1[17];
  v9 = type metadata accessor for PermissionTask(0);
  if (!(*(*(v9 - 8) + 48))(v8, 1, v9))
  {

    v10 = *(v9 + 20);
    v11 = sub_2381527EC();
    (*(*(v11 - 8) + 8))(v8 + v10, v11);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEED6F0, &unk_23815E930);

  v12 = (v5 + v1[18]);
  v13 = v12[1];
  if (v13 >> 60 != 15)
  {
    sub_238085CA0(*v12, v13);
  }

  if (*(v5 + v1[22]))
  {
  }

  if (*(v5 + v1[23]))
  {
  }

  v14 = (v5 + v1[25]);
  v15 = v14[1];
  if (v15 >> 60 != 15)
  {
    sub_238085CA0(*v14, v15);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7, v16);
}

uint64_t sub_23812B2C4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7, v1);
}

uint64_t sub_23812B314(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for DDDeviceDiscoveryView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_23812B388()
{
  result = qword_27DEED850;
  if (!qword_27DEED850)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEED818, &qword_23815E9F8);
    v4[0] = sub_2380F9094();
    v4[1] = sub_23812F7E0(&qword_27DEED860, MEMORY[0x277CDD8B0], MEMORY[0x277CDD8A0]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27DEED850);
  }

  return result;
}

uint64_t sub_23812B4C0()
{
  type metadata accessor for DDDeviceDiscoveryView(0);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_238088780;

  return sub_2381244EC();
}

uint64_t sub_23812B58C()
{
  v1 = type metadata accessor for DDDeviceDiscoveryView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();

  v5 = v0 + v3;

  v6 = v1[10];
  v7 = sub_238152E1C();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  v8 = v0 + v3 + v1[17];
  v9 = type metadata accessor for PermissionTask(0);
  if (!(*(*(v9 - 8) + 48))(v8, 1, v9))
  {

    v10 = *(v9 + 20);
    v11 = sub_2381527EC();
    (*(*(v11 - 8) + 8))(v8 + v10, v11);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEED6F0, &unk_23815E930);

  v12 = (v5 + v1[18]);
  v13 = v12[1];
  if (v13 >> 60 != 15)
  {
    sub_238085CA0(*v12, v13);
  }

  if (*(v5 + v1[22]))
  {
  }

  if (*(v5 + v1[23]))
  {
  }

  v14 = (v5 + v1[25]);
  v15 = v14[1];
  if (v15 >> 60 != 15)
  {
    sub_238085CA0(*v14, v15);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7, v16);
}

uint64_t sub_23812B894(uint64_t a1)
{
  v4 = *(type metadata accessor for DDDeviceDiscoveryView(0) - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_238087150;

  return sub_238125B08(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t sub_23812B9FC()
{
  v1 = type metadata accessor for DDDeviceDiscoveryView(0);
  v24 = *(*(v1 - 1) + 80);
  v2 = (v24 + 32) & ~v24;
  v3 = *(*(v1 - 1) + 64);
  v4 = sub_238152BAC();
  v25 = *(v4 - 8);
  v26 = v4;
  v5 = *(v25 + 80);
  v6 = *(v25 + 64);
  swift_unknownObjectRelease();
  v7 = v0 + v2;

  v8 = v1[10];
  v9 = sub_238152E1C();
  (*(*(v9 - 8) + 8))(v0 + v2 + v8, v9);

  v10 = v0 + v2 + v1[17];
  v11 = type metadata accessor for PermissionTask(0);
  if (!(*(*(v11 - 8) + 48))(v10, 1, v11))
  {

    v12 = *(v11 + 20);
    v13 = sub_2381527EC();
    (*(*(v13 - 8) + 8))(v10 + v12, v13);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEED6F0, &unk_23815E930);

  v14 = (v7 + v1[18]);
  v15 = v14[1];
  if (v15 >> 60 != 15)
  {
    sub_238085CA0(*v14, v15);
  }

  if (*(v7 + v1[22]))
  {
  }

  if (*(v7 + v1[23]))
  {
  }

  v16 = (v7 + v1[25]);
  v17 = v16[1];
  if (v17 >> 60 != 15)
  {
    sub_238085CA0(*v16, v17);
  }

  v18 = (v2 + v3 + v5) & ~v5;
  v19 = v5;
  v20 = (((((((v6 + v18 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v21 = v24 | v19;

  (*(v25 + 8))(v0 + v18, v26);

  sub_238085CA0(*(v0 + v20), *(v0 + v20 + 8));

  return MEMORY[0x2821FE8E8](v0, ((v20 + 23) & 0xFFFFFFFFFFFFFFF8) + 16, v21 | 7, v22);
}

uint64_t sub_23812BDEC(uint64_t a1)
{
  v3 = *(type metadata accessor for DDDeviceDiscoveryView(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_238152BAC() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v15 = *(v1 + 24);
  v16 = *(v1 + 16);
  v14 = *(v1 + v8);
  v12 = *(v1 + v9 + 8);
  v13 = *(v1 + v9);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_238088780;

  return sub_238125F84(a1, v16, v15, v1 + v4, v1 + v7, v14, v13, v12);
}

uint64_t sub_23812C068()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7, v1);
}

uint64_t sub_23812C0A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_23812C110(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_23812C1C8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_2381525EC();
  swift_allocObject();
  result = sub_23815259C();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_23815270C();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_23812C244(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_2381525EC();
  swift_allocObject();
  result = sub_23815259C();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_23812C2C8(uint64_t a1)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEED8D0, &qword_23815EC08);
  v10 = sub_2380711D4(&qword_27DEED8D8, &qword_27DEED8D0, &qword_23815EC08, MEMORY[0x277CC9C28]);
  v8[0] = a1;
  v2 = __swift_project_boxed_opaque_existential_1(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  sub_238129C54(v3, &v3[v4], &v7);
  v5 = v7;
  __swift_destroy_boxed_opaque_existential_1(v8);
  return v5;
}

uint64_t sub_23812C3A4(uint64_t a1, uint64_t a2, __n128 a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  result = sub_2381525AC();
  v12 = result;
  if (result)
  {
    result = sub_2381525DC();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v12 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_2381525CC();
  sub_238129CE8(v12, a5, a6, &v14);
  if (!v6)
  {
    return v14;
  }

  return v13;
}

BOOL sub_23812C45C(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_238085D80(a3, a4);
          return sub_238129F18(v13, a2, a3, a4, v17) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

void sub_23812C5C4(uint64_t a1)
{
  v362 = type metadata accessor for DDDeviceDiscoveryView(0);
  v332 = *(v362 - 1);
  MEMORY[0x28223BE20](v362);
  v334 = v2;
  v335 = &v308 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBA00, &qword_23815B4A0);
  MEMORY[0x28223BE20](v3 - 8);
  v339 = &v308 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEBA10, &qword_23815D910);
  MEMORY[0x28223BE20](v5 - 8);
  v320 = &v308 - v6;
  v321 = sub_238152EBC();
  v322 = *(v321 - 8);
  MEMORY[0x28223BE20](v321);
  v317 = &v308 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v361 = sub_238152BAC();
  v363 = *(v361 - 1);
  v8 = MEMORY[0x28223BE20](v361);
  v336 = &v308 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v319 = &v308 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v325 = &v308 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v327 = &v308 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v337 = &v308 - v17;
  MEMORY[0x28223BE20](v16);
  v352 = &v308 - v18;
  v349 = sub_2381536AC();
  v348 = *(v349 - 8);
  v19 = MEMORY[0x28223BE20](v349);
  v331 = &v308 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v345 = &v308 - v21;
  v346 = type metadata accessor for _DDNodeDecoration.Kind(0);
  v22 = MEMORY[0x28223BE20](v346);
  v329 = (&v308 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v22);
  v342 = &v308 - v24;
  v347 = type metadata accessor for _DDNodeDecoration(0);
  v25 = MEMORY[0x28223BE20](v347);
  v330 = &v308 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v343 = &v308 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEED6A0, &unk_23815E808);
  v29 = MEMORY[0x28223BE20](v28 - 8);
  v350 = &v308 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v351 = &v308 - v32;
  MEMORY[0x28223BE20](v31);
  v354 = &v308 - v33;
  v355 = type metadata accessor for PermissionTask(0);
  v357 = *(v355 - 8);
  MEMORY[0x28223BE20](v355);
  v344 = &v308 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEED890, &qword_2381593F0);
  MEMORY[0x28223BE20](v35 - 8);
  v358 = &v308 - v36;
  v37 = sub_2381527EC();
  v38 = *(v37 - 8);
  v39 = MEMORY[0x28223BE20](v37);
  v353 = &v308 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x28223BE20](v39);
  v328 = &v308 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v326 = &v308 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v338 = &v308 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v49 = &v308 - v48;
  v50 = MEMORY[0x28223BE20](v47);
  v341 = &v308 - v51;
  v333 = v52;
  MEMORY[0x28223BE20](v50);
  v54 = &v308 - v53;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC9F0, &qword_23815A090);
  v56 = MEMORY[0x28223BE20](v55 - 8);
  v318 = &v308 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = MEMORY[0x28223BE20](v56);
  v324 = &v308 - v59;
  v60 = MEMORY[0x28223BE20](v58);
  v62 = &v308 - v61;
  v63 = MEMORY[0x28223BE20](v60);
  v65 = &v308 - v64;
  MEMORY[0x28223BE20](v63);
  v67 = &v308 - v66;
  if (qword_27DEEA110 != -1)
  {
    swift_once();
  }

  v68 = sub_23815293C();
  v69 = __swift_project_value_buffer(v68, qword_27DEED680);
  v364 = a1;
  sub_2380712E4(a1, v67, &qword_27DEEC9F0, &qword_23815A090);
  v356 = v69;
  v70 = sub_23815291C();
  v71 = sub_2381550FC();
  v72 = os_log_type_enabled(v70, v71);
  v323 = v49;
  if (v72)
  {
    v360 = v54;
    v73 = swift_slowAlloc();
    v316 = swift_slowAlloc();
    v366 = v316;
    *v73 = 136315138;
    sub_2380712E4(v67, v65, &qword_27DEEC9F0, &qword_23815A090);
    v74 = (*(v38 + 48))(v65, 1, v37);
    v359 = v38;
    v340 = v37;
    if (v74 == 1)
    {
      v75 = 0x20676E697373694DLL;
      sub_238071284(v65, &qword_27DEEC9F0, &qword_23815A090);
      v76 = 0xEE00444965646F4ELL;
    }

    else
    {
      v75 = sub_23815279C();
      v76 = v77;
      (*(v38 + 8))(v65, v37);
    }

    sub_238071284(v67, &qword_27DEEC9F0, &qword_23815A090);
    v78 = sub_238085EAC(v75, v76, &v366);

    *(v73 + 4) = v78;
    _os_log_impl(&dword_238060000, v70, v71, "Node (%s) tapped", v73, 0xCu);
    v79 = v316;
    v80 = __swift_destroy_boxed_opaque_existential_1(v316);
    MEMORY[0x2383EA8A0](v79, -1, -1, v80);
    MEMORY[0x2383EA8A0](v73, -1, -1);

    v38 = v359;
    v54 = v360;
    v37 = v340;
  }

  else
  {

    sub_238071284(v67, &qword_27DEEC9F0, &qword_23815A090);
  }

  sub_2380712E4(v364, v62, &qword_27DEEC9F0, &qword_23815A090);
  v81 = *(v38 + 48);
  v82 = v81(v62, 1, v37);
  v83 = v365;
  if (v82 == 1)
  {
    sub_238071284(v62, &qword_27DEEC9F0, &qword_23815A090);
    (*(v83 + v362[21]))(0);
    return;
  }

  v311 = v81;
  v312 = v38 + 48;
  v84 = *(v38 + 32);
  v315 = v38 + 32;
  v314 = v84;
  v84(v54, v62, v37);
  v85 = v361;
  v86 = v38;
  v87 = swift_allocBox();
  v364 = v88;
  v316 = *v83;
  v89 = sub_238152A2C();
  v90 = v366;
  MEMORY[0x28223BE20](v89);
  *(&v308 - 2) = v54;
  v91 = v358;
  sub_2380D23F8(sub_23812F98C, v90, v358);

  v92 = v363;
  if ((*(v363 + 48))(v91, 1, v85) != 1)
  {
    v360 = v54;
    (*(v92 + 32))(v364, v91, v85);
    v107 = v362[17];
    v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEED6F0, &unk_23815E930);
    v353 = v107;
    v109 = v354;
    v310 = v108;
    sub_23815470C();
    v110 = v355;
    v111 = v357[6](v109, 1, v355);
    v359 = v86;
    v313 = v87;
    if (v111 == 1)
    {
      v358 = 0;
      sub_238071284(v109, &unk_27DEED6A0, &unk_23815E808);
      v112 = v361;
    }

    else
    {
      v114 = v344;
      sub_23812C0A8(v109, v344, type metadata accessor for PermissionTask);
      v115 = v86;
      v116 = *(v86 + 16);
      v354 = *(v110 + 20);
      v117 = v341;
      v116(v341, v114 + v354, v37);
      v118 = v342;
      swift_storeEnumTagMultiPayload();
      v309 = sub_23815467C();

      v119 = v345;
      sub_2381536BC();
      v358 = 0;
      v120 = v343;
      sub_23812C0A8(v118, v343, type metadata accessor for _DDNodeDecoration.Kind);
      v121 = v347;
      *&v120[*(v347 + 5)] = v309;
      (*(v348 + 32))(&v120[*(v121 + 6)], v119, v349);
      sub_2380A9944(v117, v120);
      sub_23812ECB0(v120, type metadata accessor for _DDNodeDecoration);
      v122 = *(v115 + 8);
      v122(v117, v37);
      sub_238154FCC();
      v123 = v114;
      v124 = v351;
      (v357[7])(v351, 1, 1, v110);
      sub_2380712E4(v124, v350, &unk_27DEED6A0, &unk_23815E808);
      sub_23815471C();
      sub_238071284(v124, &unk_27DEED6A0, &unk_23815E808);
      LOBYTE(v118) = sub_2381527AC();
      sub_23812ECB0(v123, type metadata accessor for PermissionTask);
      v112 = v361;
      if (v118)
      {
        v122(v360, v37);
        goto LABEL_32;
      }
    }

    v125 = v363;
    v126 = v364;
    v127 = *(v363 + 16);
    v128 = v352;
    (v127)(v352, v364, v112);
    v129 = sub_238152B5C();
    v131 = v130;
    v132 = *(v125 + 8);
    v363 = v125 + 8;
    v132(v128, v112);
    if (v131 >> 60 == 15)
    {
      v133 = v365;
      v134 = v365[4];
      v135 = v358;
      if (v134)
      {
        v136 = (v365 + v362[24]);
        v137 = v136[1];
        v138 = v359;
        if (v137)
        {
          v354 = v365[3];
          v362 = *v136;
          sub_238152CEC();

          v364 = sub_238152CAC();
          sub_238152C7C();
          v139 = v360;
          v140 = sub_23815279C();
          v142 = v141;
          v143 = v329;
          *v329 = CGSizeMake;
          *(v143 + 8) = 0;
          swift_storeEnumTagMultiPayload();
          v144 = sub_23815467C();

          v352 = v134;
          v145 = v331;
          v356 = v140;
          v363 = v142;
          sub_2381536BC();
          if (v135)
          {
            swift_unexpectedError();
            __break(1u);
            return;
          }

          v146 = v330;
          sub_23812C0A8(v143, v330, type metadata accessor for _DDNodeDecoration.Kind);
          v147 = v347;
          *(v146 + *(v347 + 5)) = v144;
          (*(v348 + 32))(v146 + *(v147 + 6), v145, v349);
          sub_2380A9944(v139, v146);
          sub_23812ECB0(v146, type metadata accessor for _DDNodeDecoration);
          v344 = sub_238154FBC();
          v148 = *(v344 - 8);
          v343 = *(v148 + 56);
          v346 = v148 + 56;
          (v343)(v339, 1, 1, v344);
          v149 = v335;
          sub_23812AE68(v133, v335);
          v150 = v359;
          v151 = *(v359 + 16);
          v358 = (v359 + 16);
          v361 = v151;
          (v151)(v338, v139, v37);
          v348 = sub_238154F8C();

          v152 = sub_238154F7C();
          v153 = v133;
          v154 = *(v332 + 80);
          v155 = (v154 + 48) & ~v154;
          v345 = v137;
          v156 = *(v150 + 80);
          v157 = (v334 + v156 + v155) & ~v156;
          v349 = v154 | v156;
          v158 = swift_allocObject();
          v159 = MEMORY[0x277D85700];
          v158[2] = v152;
          v158[3] = v159;
          v158[4] = v362;
          v158[5] = v137;
          v347 = type metadata accessor for DDDeviceDiscoveryView;
          sub_23812C0A8(v149, v158 + v155, type metadata accessor for DDDeviceDiscoveryView);
          v160 = v158 + v157;
          v161 = v338;
          v314(v160, v338, v37);
          v162 = v339;
          v342 = sub_2381351C8(0, 0, v339, &unk_23815EBE8, v158);
          (v343)(v162, 1, 1, v344);
          sub_23812AE68(v153, v149);
          (v361)(v161, v360, v37);

          v348 = sub_238154F7C();
          v163 = (v154 + 40) & ~v154;
          v164 = (v334 + v163 + 7) & 0xFFFFFFFFFFFFFFF8;
          v165 = (v164 + 23) & 0xFFFFFFFFFFFFFFF8;
          v166 = (v165 + 23) & 0xFFFFFFFFFFFFFFF8;
          v167 = (v156 + v166 + 8) & ~v156;
          v168 = (v333 + v167 + 7) & 0xFFFFFFFFFFFFFFF8;
          v169 = v37;
          v170 = swift_allocObject();
          *(v170 + 2) = v348;
          v171 = v313;
          *(v170 + 3) = MEMORY[0x277D85700];
          *(v170 + 4) = v171;
          sub_23812C0A8(v335, &v170[v163], v347);
          v172 = &v170[v164];
          v173 = v352;
          *v172 = v354;
          v172[1] = v173;
          v174 = &v170[v165];
          v175 = v345;
          *v174 = v362;
          v174[1] = v175;
          *&v170[v166] = v364;
          v314(&v170[v167], v338, v169);
          v176 = &v170[v168];
          v177 = v356;
          v178 = v363;
          *v176 = v356;
          v176[1] = v178;
          *&v170[(v168 + 23) & 0xFFFFFFFFFFFFFFF8] = v342;
          v179 = sub_2380D2A4C(0, 0, v339, &unk_23815EBF8, v170);
          v180 = v355;
          v181 = v351;
          v182 = v360;
          (v361)(&v351[*(v355 + 20)], v360, v169);
          *v181 = v179;
          v183 = (v181 + *(v180 + 24));
          *v183 = v177;
          v183[1] = v178;
          (v357[7])(v181, 0, 1, v180);
          sub_2380712E4(v181, v350, &unk_27DEED6A0, &unk_23815E808);
          sub_23815471C();

          sub_238071284(v181, &unk_27DEED6A0, &unk_23815E808);
          (*(v359 + 8))(v182, v169);
          goto LABEL_32;
        }

        v224 = v326;
        v209 = v360;
        (*(v359 + 16))(v326, v360, v37);
        v211 = sub_23815291C();
        v212 = v37;
        v213 = sub_2381550DC();
        if (!os_log_type_enabled(v211, v213))
        {

          v232 = *(v138 + 8);
          v232(v224, v212);
          v232(v209, v212);
          goto LABEL_32;
        }

        v214 = swift_slowAlloc();
        v215 = swift_slowAlloc();
        v366 = v215;
        *v214 = 136315138;
        sub_23812F7E0(&qword_27DEED670, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v225 = sub_23815559C();
        v227 = v226;
        v228 = v224;
        v221 = *(v138 + 8);
        v221(v228, v212);
        v229 = sub_238085EAC(v225, v227, &v366);

        *(v214 + 4) = v229;
        v223 = "No serviceIdentifier for nodeID: %s, not handling tap";
      }

      else
      {
        v208 = v359;
        v209 = v360;
        v210 = v328;
        (*(v359 + 16))(v328, v360, v37);
        v211 = sub_23815291C();
        v212 = v37;
        v213 = sub_2381550DC();
        if (!os_log_type_enabled(v211, v213))
        {

          v231 = *(v208 + 8);
          v231(v210, v212);
          v231(v209, v212);
          goto LABEL_32;
        }

        v214 = swift_slowAlloc();
        v215 = swift_slowAlloc();
        v366 = v215;
        *v214 = 136315138;
        sub_23812F7E0(&qword_27DEED670, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v216 = sub_23815559C();
        v217 = v208;
        v219 = v218;
        v220 = v210;
        v221 = *(v217 + 8);
        v221(v220, v212);
        v222 = sub_238085EAC(v216, v219, &v366);

        *(v214 + 4) = v222;
        v223 = "No bundleID for nodeID: %s, not handling tap";
      }

      _os_log_impl(&dword_238060000, v211, v213, v223, v214, 0xCu);
      v230 = __swift_destroy_boxed_opaque_existential_1(v215);
      MEMORY[0x2383EA8A0](v215, -1, -1, v230);
      MEMORY[0x2383EA8A0](v214, -1, -1);

      v221(v209, v212);
      goto LABEL_32;
    }

    v184 = sub_238087244(v129, v131);
    v185 = v337;
    v357 = v127;
    (v127)(v337, v126, v112, v184);
    v186 = sub_238152B5C();
    v188 = v358;
    if (v187 >> 60 == 15)
    {
      v132(v185, v112);
    }

    else
    {
      v189 = v185;
      v190 = v186;
      v191 = v187;
      v192 = sub_23812C2C8(&unk_284AEE950);
      v340 = v37;
      v193 = v192;
      v195 = v194;
      v196 = sub_23812C45C(v190, v191, v192, v194);
      v197 = v193;
      v37 = v340;
      sub_238085CA0(v197, v195);
      v198 = sub_238087244(v190, v191);
      v199 = v189;
      v126 = v364;
      (v132)(v199, v112, v198);
      if (v196)
      {
        v200 = v327;
        (v357)(v327, v126, v112);
        v201 = sub_238152B6C();
        v132(v200, v112);
        if (!v201)
        {

          v233 = sub_23815291C();
          v234 = sub_2381550DC();

          if (os_log_type_enabled(v233, v234))
          {
            v235 = swift_slowAlloc();
            v236 = swift_slowAlloc();
            v367 = v236;
            *v235 = 136315138;
            swift_beginAccess();
            v237 = v336;
            v238 = v126;
            v239 = v132;
            v240 = v361;
            (v357)(v336, v238, v361);
            v241 = sub_238152B3C();
            v243 = v242;
            v239(v237, v240);
            v244 = sub_238085EAC(v241, v243, &v367);

            *(v235 + 4) = v244;
            _os_log_impl(&dword_238060000, v233, v234, "No NW endpoint for endpoint: %s, not handling tap", v235, 0xCu);
            v245 = __swift_destroy_boxed_opaque_existential_1(v236);
            MEMORY[0x2383EA8A0](v236, -1, -1, v245);
            MEMORY[0x2383EA8A0](v235, -1, -1);
          }

          (*(v359 + 8))(v360, v340);
          goto LABEL_32;
        }

        if (*(v365 + v362[13]) == 1)
        {
          v202 = v325;
          (v357)(v325, v126, v112);
          v203 = v324;
          sub_238130414(v324);
          v132(v202, v112);
          v204 = v340;
          v205 = v311(v203, 1, v340);
          v206 = v359;
          if (v205 == 1)
          {
            sub_238071284(v203, &qword_27DEEC9F0, &qword_23815A090);
          }

          else
          {
            v248 = v323;
            v314(v323, v203, v204);
            v249 = v320;
            sub_2380A92A8(v248, v320);
            v250 = v249;
            v251 = v322;
            v252 = v249;
            v253 = v321;
            if ((*(v322 + 48))(v252, 1, v321) != 1)
            {
              v264 = v317;
              (*(v251 + 32))(v317, v250, v253);
              v265 = v365 + v362[23];
              v266 = *v265;
              v267 = v253;
              if (*v265)
              {
                v268 = *(v265 + 1);
                sub_23815256C();
                swift_allocObject();

                sub_23815255C();
                sub_23812F7E0(&unk_27DEED8C0, MEMORY[0x277CD9168], MEMORY[0x277CD9170]);
                v269 = sub_23815254C();
                if (v188)
                {

                  v271 = v188;
                  v272 = sub_23815291C();
                  v273 = sub_2381550DC();

                  if (os_log_type_enabled(v272, v273))
                  {
                    v274 = swift_slowAlloc();
                    v275 = swift_slowAlloc();
                    v366 = v275;
                    *v274 = 136315138;
                    v367 = v188;
                    v276 = v188;
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEC000, &qword_23815B500);
                    v277 = sub_238154D2C();
                    v279 = sub_238085EAC(v277, v278, &v366);

                    *(v274 + 4) = v279;
                    _os_log_impl(&dword_238060000, v272, v273, "Failed to encode browse result: %s", v274, 0xCu);
                    v280 = __swift_destroy_boxed_opaque_existential_1(v275);
                    MEMORY[0x2383EA8A0](v275, -1, -1, v280);
                    MEMORY[0x2383EA8A0](v274, -1, -1);
                    sub_23807A454(v266, v268);

                    swift_unknownObjectRelease();
                    (*(v322 + 8))(v317, v321);
                  }

                  else
                  {
                    sub_23807A454(v266, v268);

                    swift_unknownObjectRelease();
                    (*(v322 + 8))(v264, v267);
                  }

                  v305 = *(v359 + 8);
                  v306 = v323;
                }

                else
                {
                  v292 = v269;
                  v293 = v270;

                  sub_238085D80(v292, v293);
                  v294 = sub_23815291C();
                  v295 = sub_2381550FC();
                  sub_238085CA0(v292, v293);
                  if (os_log_type_enabled(v294, v295))
                  {
                    v296 = swift_slowAlloc();
                    v365 = swift_slowAlloc();
                    v366 = v365;
                    *v296 = 136315138;
                    sub_238085D80(v292, v293);
                    v297 = sub_2381526EC();
                    v299 = v298;
                    sub_238085CA0(v292, v293);
                    v300 = sub_238085EAC(v297, v299, &v366);
                    v264 = v317;

                    *(v296 + 4) = v300;
                    _os_log_impl(&dword_238060000, v294, v295, "Encoded browse result: %s", v296, 0xCu);
                    v301 = v365;
                    v302 = __swift_destroy_boxed_opaque_existential_1(v365);
                    MEMORY[0x2383EA8A0](v301, -1, -1, v302);
                    v303 = v296;
                    v267 = v321;
                    MEMORY[0x2383EA8A0](v303, -1, -1);
                  }

                  v304 = v323;
                  v266(v292, v293);
                  sub_23807A454(v266, v268);
                  sub_238085CA0(v292, v293);
                  swift_unknownObjectRelease();
                  (*(v322 + 8))(v264, v267);
                  v305 = *(v359 + 8);
                  v306 = v304;
                }

                v307 = v340;
                v305(v306, v340);
                v305(v360, v307);
              }

              else
              {
                v285 = sub_23815291C();
                v286 = sub_2381550DC();
                v287 = os_log_type_enabled(v285, v286);
                v288 = v323;
                if (v287)
                {
                  v289 = swift_slowAlloc();
                  *v289 = 0;
                  _os_log_impl(&dword_238060000, v285, v286, "No browserResultDataCallback set", v289, 2u);
                  MEMORY[0x2383EA8A0](v289, -1, -1);
                }

                swift_unknownObjectRelease();

                (*(v251 + 8))(v264, v253);
                v290 = *(v359 + 8);
                v291 = v340;
                v290(v288, v340);
                v290(v360, v291);
              }

              goto LABEL_32;
            }

            v206 = v359;
            (*(v359 + 8))(v248, v204);
            sub_238071284(v250, &qword_27DEEBA10, &qword_23815D910);
            v112 = v361;
          }

          v254 = sub_23815291C();
          v255 = sub_2381550DC();

          if (os_log_type_enabled(v254, v255))
          {
            v256 = swift_slowAlloc();
            v257 = swift_slowAlloc();
            v367 = v257;
            *v256 = 136315138;
            swift_beginAccess();
            v258 = v319;
            (v357)(v319, v126, v112);
            v259 = v318;
            sub_238130414(v318);
            v132(v258, v112);
            v260 = v340;
            if (v311(v259, 1, v340) == 1)
            {
              v261 = 0x20676E697373694DLL;
              sub_238071284(v259, &qword_27DEEC9F0, &qword_23815A090);
              v262 = 0xEC00000044495555;
              v263 = v359;
            }

            else
            {
              v261 = sub_23815279C();
              v281 = v259;
              v262 = v282;
              v263 = v359;
              (*(v359 + 8))(v281, v260);
            }

            v283 = sub_238085EAC(v261, v262, &v367);

            *(v256 + 4) = v283;
            _os_log_impl(&dword_238060000, v254, v255, "Unable to fetch browser result for uuid: %s", v256, 0xCu);
            v284 = __swift_destroy_boxed_opaque_existential_1(v257);
            MEMORY[0x2383EA8A0](v257, -1, -1, v284);
            MEMORY[0x2383EA8A0](v256, -1, -1);
            swift_unknownObjectRelease();

            (*(v263 + 8))(v360, v260);
          }

          else
          {

            swift_unknownObjectRelease();
            (*(v206 + 8))(v360, v340);
          }
        }

        else
        {
          v246 = *(v365 + v362[21]);
          v247 = swift_unknownObjectRetain();
          v246(v247);
          swift_unknownObjectRelease_n();
          (*(v359 + 8))(v360, v340);
        }

LABEL_32:

        return;
      }
    }

    v207 = v336;
    (v357)(v336, v126, v112);
    sub_23808BE60(v207);
    v132(v207, v112);
    (*(v359 + 8))(v360, v37);
    goto LABEL_32;
  }

  sub_238071284(v91, &unk_27DEED890, &qword_2381593F0);
  swift_deallocBox();
  v93 = v86;
  v94 = v353;
  (*(v86 + 16))(v353, v54, v37);
  v95 = sub_23815291C();
  v96 = v37;
  v97 = sub_2381550DC();
  if (os_log_type_enabled(v95, v97))
  {
    v98 = v54;
    v99 = swift_slowAlloc();
    v100 = swift_slowAlloc();
    v366 = v100;
    *v99 = 136315138;
    sub_23812F7E0(&qword_27DEED670, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v101 = sub_23815559C();
    v103 = v102;
    v104 = *(v93 + 8);
    v104(v94, v96);
    v105 = sub_238085EAC(v101, v103, &v366);

    *(v99 + 4) = v105;
    _os_log_impl(&dword_238060000, v95, v97, "No endpoint for nodeID: %s, not handling tap", v99, 0xCu);
    v106 = __swift_destroy_boxed_opaque_existential_1(v100);
    MEMORY[0x2383EA8A0](v100, -1, -1, v106);
    MEMORY[0x2383EA8A0](v99, -1, -1);

    v104(v98, v96);
  }

  else
  {

    v113 = *(v93 + 8);
    v113(v94, v96);
    v113(v54, v96);
  }
}