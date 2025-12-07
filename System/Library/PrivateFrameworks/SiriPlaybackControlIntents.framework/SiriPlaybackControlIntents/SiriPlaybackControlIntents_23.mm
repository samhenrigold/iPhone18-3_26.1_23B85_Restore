void sub_268AEC3BC()
{
  OUTLINED_FUNCTION_26();
  v68 = v0;
  v69 = v1;
  v67 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v71 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_20_0();
  v18 = v16 - v17;
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v66 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v66 - v23;
  v25 = OUTLINED_FUNCTION_115_2();
  v70 = v8;
  sub_268AEBEF0(v25, v26, v8);
  OUTLINED_FUNCTION_59_0(v4, v4[3]);
  if (sub_268B36FB4())
  {
    v27 = v6[3];
    OUTLINED_FUNCTION_59_0(v6, v27);
    if (sub_268B34C84())
    {
      v28 = v71;
      if (qword_2802A4F30 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
      }

      __swift_project_value_buffer(v28, qword_2802CDA10);
      OUTLINED_FUNCTION_36_14();
      v29(v22);
      v30 = sub_268B37A34();
      v31 = sub_268B37ED4();
      if (OUTLINED_FUNCTION_115_0(v31))
      {
        v32 = OUTLINED_FUNCTION_14();
        *v32 = 0;
        _os_log_impl(&dword_2688BB000, v30, v27, "MediaControlsViewProvider#fetchSessionIDIfNeeded returning snippet", v32, 2u);
        OUTLINED_FUNCTION_132_0();
      }

      (*(v14 + 8))(v22, v28);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_268B3BBA0;
      v34 = v70;
      *(v33 + 32) = v70;
      v35 = v34;
      goto LABEL_21;
    }

    sub_268B36C54();
    v48 = sub_268B36C24() == v12 && v47 == v10;
    v49 = v71;
    if (v48)
    {
    }

    else
    {
      OUTLINED_FUNCTION_70_1();
      v50 = sub_268B38444();

      if ((v50 & 1) == 0)
      {

LABEL_24:
        if (qword_2802A4F30 != -1)
        {
          OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
        }

        __swift_project_value_buffer(v49, qword_2802CDA10);
        OUTLINED_FUNCTION_36_14();
        v52(v18);

        v53 = sub_268B37A34();
        v54 = sub_268B37F04();

        if (os_log_type_enabled(v53, v54))
        {
          v55 = OUTLINED_FUNCTION_172_0();
          v56 = OUTLINED_FUNCTION_173_0();
          *&v73[0] = v56;
          *v55 = 136315138;
          v57 = OUTLINED_FUNCTION_70_1();
          *(v55 + 4) = sub_26892CDB8(v57, v58, v59);
          _os_log_impl(&dword_2688BB000, v53, v54, "MediaControlsViewProvider#suppressSnippetIfNeeded routeId: %s", v55, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v56);
          OUTLINED_FUNCTION_12();
          OUTLINED_FUNCTION_12();

          (*(v14 + 8))(v18, v71);
        }

        else
        {

          (*(v14 + 8))(v18, v49);
        }

        v60 = v67;
        OUTLINED_FUNCTION_59_0(v67, v67[3]);
        sub_26890C900(v6, v73);
        sub_26890C900(v60, v72);
        v61 = swift_allocObject();
        sub_2688E6514(v73, (v61 + 2));
        sub_2688E6514(v72, (v61 + 7));
        v63 = v69;
        v62 = v70;
        v64 = v68;
        v61[12] = v70;
        v61[13] = v64;
        v61[14] = v63;
        v65 = v62;

        OUTLINED_FUNCTION_70_1();
        sub_268B36DF4();

        goto LABEL_30;
      }
    }

    sub_268B37BF4();
    goto LABEL_24;
  }

  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v36 = v71;
  __swift_project_value_buffer(v71, qword_2802CDA10);
  OUTLINED_FUNCTION_36_14();
  v37(v24);
  v38 = v70;
  v39 = sub_268B37A34();
  v40 = sub_268B37F04();
  if (!os_log_type_enabled(v39, v40))
  {

    (*(v14 + 8))(v24, v36);
    goto LABEL_20;
  }

  v41 = OUTLINED_FUNCTION_172_0();
  v42 = OUTLINED_FUNCTION_173_0();
  *&v73[0] = v42;
  *v41 = 136315138;
  v43 = sub_268AEBFAC(v38);
  v45 = v44;

  if (v45)
  {
    v46 = sub_26892CDB8(v43, v45, v73);

    *(v41 + 4) = v46;
    _os_log_impl(&dword_2688BB000, v39, v40, "MediaControlsViewProvider#suppressSnippetIfNeeded snippet viewId: %s", v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v42);
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_12();

    (*(v14 + 8))(v24, v71);
LABEL_20:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_268B3BBA0;
    *(v33 + 32) = v38;
    v51 = v38;
LABEL_21:
    v68(v33, 0);
LABEL_30:

    OUTLINED_FUNCTION_23();
    return;
  }

  __break(1u);
}

uint64_t sub_268AEC9D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12)
{
  v66 = a6;
  v67 = a4;
  v63 = a3;
  v69 = sub_268B37A54();
  v64 = *(v69 - 8);
  v17 = MEMORY[0x28223BE20](v69);
  v61 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v62 = &v60 - v19;
  v80[3] = type metadata accessor for DisplayContextProvider();
  v80[4] = &off_287953E00;
  v68 = a10;
  v80[0] = a10;
  sub_26890C900(a7, v79);
  sub_26890C900(a8, v78);
  v20 = a2;
  sub_26890C900(a9, v77);
  sub_26890C900(v80, v76);
  sub_26890C900(v79, v75);
  sub_26890C900(v78, v74);
  sub_26890C900(v77, v73);
  v21 = swift_allocObject();
  v22 = a5;
  v21[2] = a5;
  v23 = v66;
  v21[3] = v66;
  v21[4] = a1;
  v24 = a1;
  v71 = v20;
  v21[5] = v20;
  sub_2688E6514(v79, (v21 + 6));
  sub_2688E6514(v78, (v21 + 11));
  sub_2688E6514(v77, (v21 + 16));
  sub_2688E6514(v76, (v21 + 21));
  v25 = v67;
  v65 = a11;
  v21[26] = a11;
  v21[27] = a12;
  v70 = a12;
  if (!v25)
  {
    v41 = v61;
    sub_268B36C54();

    v42 = v23;
    v43 = v71;

    v44 = v42;
    v45 = v22;
    if (sub_268B36C24() == v24 && v46 == v43)
    {
    }

    else
    {
      v48 = v24;
      v68 = v44;
      v49 = sub_268B38444();

      if ((v49 & 1) == 0)
      {
        if (qword_2802A4F30 != -1)
        {
          swift_once();
        }

        v50 = v69;
        v51 = __swift_project_value_buffer(v69, qword_2802CDA10);
        v52 = v64;
        (*(v64 + 16))(v41, v51, v50);
        v53 = sub_268B37A34();
        v54 = sub_268B37F04();
        if (os_log_type_enabled(v53, v54))
        {
          v55 = swift_slowAlloc();
          v56 = swift_slowAlloc();
          v60 = v48;
          v57 = v56;
          v72 = v56;
          *v55 = 136446210;
          *(v55 + 4) = sub_26892CDB8(0x6C7070612E6D6F63, 0xEE00697269732E65, &v72);
          _os_log_impl(&dword_2688BB000, v53, v54, "Setting sash applicationBundleIdentifier to: %{public}s", v55, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v57);
          MEMORY[0x26D6266E0](v57, -1, -1);
          MEMORY[0x26D6266E0](v55, -1, -1);

          (*(v52 + 8))(v61, v69);
        }

        else
        {

          (*(v52 + 8))(v41, v69);
        }

        sub_268AEBF54(0x6C7070612E6D6F63, 0xEE00697269732E65, v45);
        [v68 setSash_];
        goto LABEL_17;
      }
    }

    sub_268B36C44();
    v58 = swift_allocObject();
    strcpy((v58 + 16), "com.apple.siri");
    *(v58 + 31) = -18;
    *(v58 + 32) = sub_268AED8F4;
    *(v58 + 40) = v21;

    sub_268B36C34();

    goto LABEL_20;
  }

  v26 = v25;
  v60 = v24;
  v27 = qword_2802A4F30;

  v68 = v23;
  v28 = v22;
  if (v27 != -1)
  {
    swift_once();
  }

  v29 = v69;
  v30 = __swift_project_value_buffer(v69, qword_2802CDA10);
  v31 = v64;
  v32 = v62;
  (*(v64 + 16))(v62, v30, v29);
  v33 = v26;

  v34 = sub_268B37A34();
  v35 = sub_268B37F04();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v66 = v28;
    v37 = v31;
    v38 = v36;
    v39 = swift_slowAlloc();
    v72 = v39;
    *v38 = 136446210;
    v40 = v63;
    *(v38 + 4) = sub_26892CDB8(v63, v33, &v72);
    _os_log_impl(&dword_2688BB000, v34, v35, "Setting sash applicationBundleIdentifier to: %{public}s", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v39);
    MEMORY[0x26D6266E0](v39, -1, -1);
    MEMORY[0x26D6266E0](v38, -1, -1);

    (*(v37 + 8))(v32, v69);
    v28 = v66;
  }

  else
  {

    (*(v31 + 8))(v32, v29);
    v40 = v63;
  }

  sub_268AEBF54(v40, v33, v28);
  [v68 setSash_];
LABEL_17:
  sub_268AEC3BC();
LABEL_20:

  __swift_destroy_boxed_opaque_existential_0Tm(v73);
  __swift_destroy_boxed_opaque_existential_0Tm(v74);
  __swift_destroy_boxed_opaque_existential_0Tm(v75);
  return __swift_destroy_boxed_opaque_existential_0Tm(v80);
}

void sub_268AED0F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, _BYTE *a21, uint64_t a22, void (*a23)(void, void), uint64_t a24)
{
  OUTLINED_FUNCTION_26();
  v88 = v25;
  v89 = v26;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v90 = v33;
  v91 = v34;
  v92 = a24;
  v93 = a23;
  v35 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v37 = v36;
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_20_0();
  v41 = v39 - v40;
  v43 = MEMORY[0x28223BE20](v42);
  v45 = &v83 - v44;
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_15();
  v102[3] = type metadata accessor for DisplayContextProvider();
  v102[4] = &off_287953E00;
  v102[0] = a22;
  if (v30)
  {
    v46 = qword_2802A4F30;

    if (v46 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
    }

    OUTLINED_FUNCTION_12_27(v35, qword_2802CDA10);
    v47(v24);
    v48 = sub_268B37A34();
    v49 = sub_268B37ED4();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = OUTLINED_FUNCTION_14();
      *v50 = 0;
      _os_log_impl(&dword_2688BB000, v48, v49, "Not rendering the controls platter due to enabled suppressSnippets user default", v50, 2u);
      OUTLINED_FUNCTION_12();
    }

    (*(v37 + 8))(v24, v35);
    goto LABEL_24;
  }

  v87 = v32;
  OUTLINED_FUNCTION_59_0(v28, v28[3]);

  if (sub_268B34D04())
  {
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_24_19();
  if (sub_268B34D24())
  {
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_24_19();
  if (sub_268B34CF4())
  {
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_24_19();
  if (sub_268B34CB4())
  {
    goto LABEL_24;
  }

  v51 = v91;
  if (!v91)
  {
    goto LABEL_24;
  }

  sub_268B37724();
  OUTLINED_FUNCTION_109_1();
  v53 = v53 && v52 == v51;
  if (v53)
  {

    goto LABEL_24;
  }

  v54 = sub_268B38444();

  if (v54)
  {
LABEL_24:
    v93(MEMORY[0x277D84F90], 0);
    goto LABEL_25;
  }

  v83 = a21;
  v55 = [objc_allocWithZone(MEMORY[0x277D4C490]) init];
  sub_268B36C54();
  sub_268B36C24();
  OUTLINED_FUNCTION_109_1();
  if (v53 && v56 == v51)
  {
  }

  else
  {
    v58 = sub_268B38444();

    if ((v58 & 1) == 0)
    {
      sub_268AEBE98(v90, v51, v55);
    }
  }

  [v55 setPlaybackRouteUniqueIdentifierIsEncrypted_];
  sub_2688EA03C(0, &qword_2802A8948, 0x277D47200);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
  v59 = swift_allocObject();
  *(v59 + 16) = xmmword_268B3BBA0;
  *(v59 + 32) = v55;
  v86 = v55;
  v85 = sub_268B37EB4();

  v84 = [objc_allocWithZone(MEMORY[0x277D47B08]) init];
  sub_26890C900(v28, v101);
  sub_26890C900(v89, v100);
  v60 = v83;
  sub_26890C900(v83, v99);
  sub_26890C900(v102, v97);
  OUTLINED_FUNCTION_24_19();
  if ((sub_268B34C84() & 1) == 0)
  {
    goto LABEL_41;
  }

  sub_2688EA03C(0, &qword_2802A5C90, 0x277D85C98);
  sub_26890C900(v60, v94);
  OUTLINED_FUNCTION_24_9();
  v61 = swift_allocObject();
  sub_2688E6514(v94, v61 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5A20, &unk_268B3C060);
  sub_268B38024();

  v62 = v96;
  if (v96 < 2)
  {
    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
    }

    OUTLINED_FUNCTION_12_27(v35, qword_2802CDA10);
    v63(v41);
    v64 = sub_268B37A34();
    sub_268B37ED4();
    OUTLINED_FUNCTION_149_0();
    v66 = os_log_type_enabled(v64, v65);
    v67 = v91;
    if (v66)
    {
      *OUTLINED_FUNCTION_14() = 0;
      OUTLINED_FUNCTION_119_2(&dword_2688BB000, v68, v69, "MediaControlsViewProvider#makeAceViewsForHandle no nowPlayingBundleID");
      OUTLINED_FUNCTION_12();
    }

    v70 = OUTLINED_FUNCTION_46_1();
    v71(v70);
    __swift_project_boxed_opaque_existential_1(v97, v98);
    OUTLINED_FUNCTION_69_9();
    v83 = v99;
    v72 = v90;
    v73 = v67;
    goto LABEL_42;
  }

  v74 = v95;
  sub_26890C900(v102, v94);
  OUTLINED_FUNCTION_17_12();
  v75 = swift_allocObject();
  sub_2688E6514(v94, v75 + 16);
  *(v75 + 56) = v74;
  *(v75 + 64) = v62;
  sub_268B38024();

  if (LOBYTE(v94[0]) == 2 || (v94[0] & 1) == 0)
  {
LABEL_41:
    __swift_project_boxed_opaque_existential_1(v97, v98);
    OUTLINED_FUNCTION_69_9();
    v83 = v99;
    v72 = v90;
    v73 = v91;
LABEL_42:
    v82 = v84;
    v81 = v85;
    sub_268AEC9D8(v72, v73, v88, v87, v84, v85, v101, v100, v83, v84, v85, v86);

    OUTLINED_FUNCTION_113_3();
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_113_3();
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  OUTLINED_FUNCTION_12_27(v35, qword_2802CDA10);
  v76(v45);
  v77 = sub_268B37A34();
  sub_268B37ED4();
  OUTLINED_FUNCTION_149_0();
  if (os_log_type_enabled(v77, v78))
  {
    *OUTLINED_FUNCTION_14() = 0;
    OUTLINED_FUNCTION_119_2(&dword_2688BB000, v79, v80, "MediaControlsViewProvider#makeAceViewsForHandle app is visible on screen. Not returning now snippet");
    OUTLINED_FUNCTION_12();
  }

  (*(v37 + 8))(v45, v35);
  v93(MEMORY[0x277D84F90], 0);

LABEL_25:
  __swift_destroy_boxed_opaque_existential_0Tm(v102);
  OUTLINED_FUNCTION_23();
}

uint64_t sub_268AED800()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  OUTLINED_FUNCTION_24_9();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_268AED83C()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  OUTLINED_FUNCTION_17_12();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_268AED884()
{

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 48));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 88));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 128));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 168));

  return MEMORY[0x2821FE8E8](v0, 224, 7);
}

uint64_t sub_268AED938()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_268AED978()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 120, 7);
}

uint64_t sub_268AED9DC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  OUTLINED_FUNCTION_22_2();
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v6 = (*(v5 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  v7 = v1 + v4;
  sub_268B350F4();
  OUTLINED_FUNCTION_4();
  (*(v8 + 8))(v7);

  return MEMORY[0x2821FE8E8](v1, v6 + 16, v3 | 7);
}

uint64_t sub_268AEDAEC(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0) - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = *(v8 + 1);

  return sub_268AE8264(a1, v5, v6, v7, v1 + v4, v9, v10);
}

uint64_t sub_268AEDBA0()
{

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t OUTLINED_FUNCTION_11_33@<X0>(char a1@<W8>)
{
  *(v2 + 72) = v1;
  *(v2 + 80) = a1;
  return v3 - 112;
}

uint64_t OUTLINED_FUNCTION_13_24(uint64_t a1, void x1_0, void x2_0, void x3_0, void x4_0, uint64_t a2, void a7, void a8, uint64_t a4, int a5)
{

  return sub_268B38284();
}

uint64_t OUTLINED_FUNCTION_19_19()
{

  return sub_268B37A54();
}

uint64_t OUTLINED_FUNCTION_23_21(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 - 96) = a3;
  *(v4 - 88) = a4;

  return sub_268B37A54();
}

uint64_t OUTLINED_FUNCTION_24_19()
{
  v1 = v0[3];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return v1;
}

void OUTLINED_FUNCTION_25_19()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0);

  JUMPOUT(0x26D6266E0);
}

void OUTLINED_FUNCTION_34_13(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_35_14()
{

  return sub_268B38444();
}

uint64_t OUTLINED_FUNCTION_37_17(void *a1)
{
  a1[2] = v1;
  a1[3] = v2;
  a1[4] = *(v4 - 264);
  a1[5] = sub_268AEC014;
  a1[6] = v3;

  return swift_retain_n();
}

void OUTLINED_FUNCTION_39_10(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_40_13@<X0>(char a2@<W8>)
{
  *(v2 - 128) = 0;
  *(v2 - 120) = a2;

  return sub_268B37E54();
}

void *OUTLINED_FUNCTION_43_11()
{
  *(v0 + 192) = 0;
  *(v0 + 194) = 0;
  *(v0 + 200) = 0;
  *(v0 + 208) = 0;
  *(v0 + 216) = 1;
  *(v0 + 224) = 0u;
  *(v0 + 240) = 0u;
  *(v0 + 256) = 0u;
  *(v0 + 268) = 0u;

  return memcpy((v0 + 288), (v0 + 200), 0x51uLL);
}

void OUTLINED_FUNCTION_55_10()
{

  JUMPOUT(0x26D6266E0);
}

void OUTLINED_FUNCTION_56_9(uint64_t a1, _BYTE *a2)
{
  *a2 = v2;

  sub_26894B450();
}

uint64_t OUTLINED_FUNCTION_59_6()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_60_6(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
}

uint64_t OUTLINED_FUNCTION_66_8(uint64_t a1, _BYTE *a2)
{
  *a2 = v2;
  *(v3 - 184) = a1;
  *(v3 - 144) = 1;
  return v3 - 184;
}

double OUTLINED_FUNCTION_68_8()
{
  *(v0 + 200) = 0;
  result = 0.0;
  *(v0 + 208) = 0u;
  *(v0 + 224) = 0u;
  *(v0 + 240) = 0u;
  *(v0 + 256) = 0u;
  *(v0 + 272) = 0;
  *(v0 + 280) = v1;
  return result;
}

void *OUTLINED_FUNCTION_93_8(uint64_t a1)
{
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  v3 = v1[16];
  *(v2 - 208) = v1[17];
  result = __swift_project_boxed_opaque_existential_1(v1 + 13, v3);
  *(v2 - 216) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_95_6(uint64_t a1)
{
  *(v1 + 4) = a1;
}

uint64_t OUTLINED_FUNCTION_96_6(float *a1, float a2)
{
  *a1 = a2;

  return sub_2688EFD0C();
}

void OUTLINED_FUNCTION_97_5()
{
}

uint64_t OUTLINED_FUNCTION_98_4(uint64_t a1)
{
  *(v1 - 136) = a1;

  return sub_2688EFD0C();
}

unint64_t OUTLINED_FUNCTION_99_6(uint64_t a1, unint64_t a2)
{

  return sub_26892CDB8(a1, a2, (v2 - 88));
}

uint64_t OUTLINED_FUNCTION_100_4(uint64_t a1)
{

  return sub_268B37C24();
}

uint64_t OUTLINED_FUNCTION_101_4()
{

  return sub_268B37A54();
}

uint64_t OUTLINED_FUNCTION_103_4()
{

  return sub_2688EFD10();
}

uint64_t OUTLINED_FUNCTION_104_5()
{

  return sub_2688EFD10();
}

void OUTLINED_FUNCTION_105_1()
{

  JUMPOUT(0x26D625BD0);
}

uint64_t OUTLINED_FUNCTION_106_3()
{
}

uint64_t OUTLINED_FUNCTION_107_4()
{
  v2 = *(v0 - 136);

  return sub_268988580(v2);
}

uint64_t OUTLINED_FUNCTION_108_4()
{
}

uint64_t OUTLINED_FUNCTION_113_3()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 184));
  __swift_destroy_boxed_opaque_existential_0Tm((v1 - 208));
  __swift_destroy_boxed_opaque_existential_0Tm((v1 - 168));

  return __swift_destroy_boxed_opaque_existential_0Tm((v0 + 144));
}

uint64_t OUTLINED_FUNCTION_117_1()
{

  return sub_268B350F4();
}

void *OUTLINED_FUNCTION_118_2()
{

  return memcpy((v1 - 184), (v0 + 192), 0x5CuLL);
}

void OUTLINED_FUNCTION_119_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 2u);
}

void OUTLINED_FUNCTION_120_2()
{

  sub_268AE4458();
}

id PauseMediaIntentHandler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void PauseMediaIntentHandler.init()()
{
  OUTLINED_FUNCTION_26();
  v0 = sub_268B36C54();
  v27 = sub_268B36C44();
  sub_268B37204();
  v26 = sub_268B371F4();
  sub_268B354A4();
  sub_2689209D0(v34);
  sub_268AD33CC(v33);
  sub_268B36754();
  v25 = sub_268B36734();
  v1 = sub_268B36C44();
  v2 = type metadata accessor for MultiUserConnectionProvider();
  v3 = swift_allocObject();
  v4 = objc_allocWithZone(MEMORY[0x277CEF318]);

  *(v3 + 16) = [v4 init];
  __swift_mutable_project_boxed_opaque_existential_1(v34, v34[3]);
  OUTLINED_FUNCTION_3_8();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_0();
  v8 = (v7 - v6);
  (*(v9 + 16))(v7 - v6);
  v10 = *v8;
  v31 = v0;
  v32 = MEMORY[0x277D5F680];
  *&v30 = v1;
  v11 = type metadata accessor for AnalyticsServiceLogger();
  v29[4] = &off_28795F5E0;
  v29[3] = v11;
  v29[0] = v10;
  v28[4] = &off_287960608;
  v28[3] = v2;
  v28[0] = v3;
  type metadata accessor for AnalyticsServiceImpl();
  v12 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v29, v11);
  OUTLINED_FUNCTION_3_8();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_0();
  v16 = (v15 - v14);
  (*(v17 + 16))(v15 - v14);
  __swift_mutable_project_boxed_opaque_existential_1(v28, v2);
  OUTLINED_FUNCTION_3_8();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_1_0();
  v21 = (v20 - v19);
  (*(v22 + 16))(v20 - v19);
  v23 = *v16;
  v24 = *v21;
  v12[5] = v11;
  v12[6] = &off_28795F5E0;
  v12[2] = v23;
  v12[21] = v2;
  v12[22] = &off_287960608;
  v12[18] = v24;
  sub_2688E6514(v33, (v12 + 7));
  v12[12] = v25;
  sub_2688E6514(&v30, (v12 + 13));
  __swift_destroy_boxed_opaque_existential_0Tm(v28);
  __swift_destroy_boxed_opaque_existential_0Tm(v29);

  __swift_destroy_boxed_opaque_existential_0Tm(v34);
  sub_268B34C64();
  sub_268AF51FC(v27, v26, &v35, v12, v34);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  OUTLINED_FUNCTION_23();
}

void sub_268AEE8D8()
{
  OUTLINED_FUNCTION_26();
  v26 = v1;
  v27 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_268B37A24();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  v10 = *(v9 + 64);
  v12 = MEMORY[0x28223BE20](v11);
  v13 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v24 - v14;
  sub_268B36754();
  v25 = sub_268B36734();
  OUTLINED_FUNCTION_0_3();
  v16 = swift_allocObject();
  *(v16 + 16) = v5;
  *(v16 + 24) = v3;
  v17 = qword_2802A5028;

  if (v17 != -1)
  {
    swift_once();
  }

  qword_2802CDB28;
  sub_268B37A14();
  (*(v8 + 16))(v13, v15, v6);
  v18 = (*(v8 + 80) + 33) & ~*(v8 + 80);
  v19 = v18 + v10;
  v20 = v6;
  v21 = (v18 + v10) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  *(v22 + 16) = "handlePauseMedia";
  *(v22 + 24) = 16;
  *(v22 + 32) = 2;
  (*(v8 + 32))(v22 + v18, v13, v20);
  *(v22 + v19) = 1;
  v23 = v22 + v21;
  *(v23 + 8) = sub_268958724;
  *(v23 + 16) = v16;

  sub_268B38004();
  sub_268B37A04();

  sub_268AEEB58(v26, v27, v25, sub_268958A64, v22);

  (*(v8 + 8))(v15, v20);
  OUTLINED_FUNCTION_23();
}

void sub_268AEEB58(void *a1, void *a2, uint64_t a3, void (*a4)(void **), uint64_t a5)
{
  v70 = a3;
  v76 = a2;
  v8 = sub_268B37A54();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v69 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v65 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v65 - v15;
  v17 = swift_allocObject();
  v75 = a4;
  v17[2] = a4;
  v17[3] = a5;
  v18 = qword_2802A4F30;
  swift_retain_n();

  if (v18 != -1)
  {
LABEL_38:
    swift_once();
  }

  v19 = __swift_project_value_buffer(v8, qword_2802CDA10);
  v20 = v9;
  v21 = *(v9 + 16);
  v71 = v19;
  v72 = v21;
  v77 = v8;
  (v21)(v16);
  v22 = sub_268B37A34();
  v23 = sub_268B37F04();
  if (os_log_type_enabled(v22, v23))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_2688BB000, v22, v23, "Handling pause media", v9, 2u);
    MEMORY[0x26D6266E0](v9, -1, -1);
  }

  v24 = v77;
  v73 = *(v20 + 8);
  v74 = v20 + 8;
  v73(v16, v77);
  v25 = sub_268B18100(a1);
  if (!v25)
  {
    goto LABEL_27;
  }

  v8 = v25;
  if (!sub_2688EFD0C())
  {

LABEL_27:
    v39 = a1;

    v72(v14, v71, v24);
    v40 = sub_268B37A34();
    v41 = sub_268B37EE4();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_2688BB000, v40, v41, "No devices found in intent, returning nothing is playing, but also sending a pause command to the local device just in case...", v42, 2u);
      MEMORY[0x26D6266E0](v42, -1, -1);
    }

    v73(v14, v24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_268B3BBA0;
    v44 = v76;
    *(v43 + 32) = sub_268901CB8(0);
    sub_268AF3E8C(v43, MEMORY[0x277D84F90], v39, v44);

    v45 = sub_268B36EA4();
    v46 = objc_allocWithZone(type metadata accessor for PauseMediaIntentResponse());
    v47 = v45;
    v48 = PauseMediaIntentResponse.init(code:userActivity:)(100, v45);
    v78 = v48;
    v75(&v78);

    goto LABEL_30;
  }

  v66 = v17;
  v67 = a5;
  v68 = a1;
  v26 = sub_268B18140(a1);
  if (v26)
  {
    v14 = v26;
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  v16 = sub_2688EFD0C();
  v27 = 0;
  a1 = (v14 & 0xC000000000000001);
  a5 = v14 & 0xFFFFFFFFFFFFFF8;
  v17 = &unk_279C42000;
  while (1)
  {
    if (v16 == v27)
    {
      v29 = 0;
      goto LABEL_19;
    }

    if (a1)
    {
      v28 = MEMORY[0x26D625BD0](v27, v14);
    }

    else
    {
      if (v27 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_37;
      }

      v28 = *(v14 + 8 * v27 + 32);
    }

    v29 = v28;
    if (__OFADD__(v27, 1))
    {
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    v30 = [v28 proximity];
    if ((v30 - 1) >= 4)
    {
      break;
    }

    ++v27;
  }

  v49 = v30;
  if (v30)
  {

    v78 = v49;
    sub_268B38474();
    __break(1u);
    goto LABEL_33;
  }

LABEL_19:
  v31 = v66;
  v32 = v68;
  v27 = v77;
  if (sub_2688EFD0C() != 1 || ((sub_2688EFD10(), (v8 & 0xC000000000000001) != 0) ? (v33 = MEMORY[0x26D625BD0](0, v8)) : (v33 = *(v8 + 32)), (v34 = v33, v35 = sub_268983434(v33), v34, (v35 & 1) == 0) || !v29 || [v29 nowPlayingState]))
  {
    v36 = v70;

    v37 = v32;

    v38 = v76;
    sub_268AF2CF4(v8, v14, v37, v38, v38, v36, v37, sub_268958D98, v31);

    return;
  }

LABEL_33:

  v50 = v69;
  v72(v69, v71, v27);
  v51 = sub_268B37A34();
  v52 = sub_268B37F04();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    *v53 = 0;
    _os_log_impl(&dword_2688BB000, v51, v52, "Local device selected with unknown playstate. Returning nothing is playing, but also sending a pause command to the local device just in case...", v53, 2u);
    MEMORY[0x26D6266E0](v53, -1, -1);
  }

  v73(v50, v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
  v54 = swift_allocObject();
  *(v54 + 16) = xmmword_268B3BBA0;
  v55 = v76;
  *(v54 + 32) = sub_268901CB8(v29);
  v56 = v70;
  swift_retain_n();
  v57 = v68;
  v58 = v55;
  v59 = v57;
  v60 = v58;
  sub_268AF1C64(v54, v14, v59, v60, v60, v56, v59);

  v61 = sub_268B36EA4();
  v62 = objc_allocWithZone(type metadata accessor for PauseMediaIntentResponse());
  v63 = v61;
  v64 = PauseMediaIntentResponse.init(code:userActivity:)(100, v61);
  v78 = v64;
  v75(&v78);

LABEL_30:
}

void sub_268AEF45C()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_6_42();
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v39 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v39 - v16;
  v18 = OBJC_IVAR___PauseMediaIntentResponse_code;
  swift_beginAccess();
  if (*&v5[v18] == 4)
  {
    if (v7)
    {
      sub_268B36704();
      sub_268B34A44();

      if (*(&v40 + 1))
      {
        sub_2688E6514(&v39, v42);
        if (qword_2802A4F30 != -1)
        {
          OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
        }

        __swift_project_value_buffer(v8, qword_2802CDA10);
        OUTLINED_FUNCTION_6_2();
        v19(v17);
        v20 = sub_268B37A34();
        v21 = sub_268B37ED4();
        if (os_log_type_enabled(v20, v21))
        {
          v22 = OUTLINED_FUNCTION_14();
          *v22 = 0;
          _os_log_impl(&dword_2688BB000, v20, v21, "Registering correction/undo for pause intent", v22, 2u);
          OUTLINED_FUNCTION_12();
        }

        (*(v10 + 8))(v17, v8);
        __swift_project_boxed_opaque_existential_1(v42, v42[3]);
        OUTLINED_FUNCTION_0_3();
        v23 = swift_allocObject();
        *(v23 + 16) = v1;
        *(v23 + 24) = v3;
        v24 = v1;
        v25 = v3;
        sub_268B34A34();

        __swift_destroy_boxed_opaque_existential_0Tm(v42);
        goto LABEL_20;
      }
    }

    else
    {
      v41 = 0;
      v39 = 0u;
      v40 = 0u;
    }

    sub_2688C058C(&v39, &qword_2802A6D60, &qword_268B50890);
    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
    }

    __swift_project_value_buffer(v8, qword_2802CDA10);
    OUTLINED_FUNCTION_6_2();
    v35(v15);
    v36 = sub_268B37A34();
    v37 = sub_268B37ED4();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = OUTLINED_FUNCTION_14();
      *v38 = 0;
      _os_log_impl(&dword_2688BB000, v36, v37, "Did not register correction/undo for resume intent (correctionsClient is nil)", v38, 2u);
      OUTLINED_FUNCTION_12();
    }

    (*(v10 + 8))(v15, v8);
  }

  else
  {
    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
    }

    __swift_project_value_buffer(v8, qword_2802CDA10);
    OUTLINED_FUNCTION_6_2();
    v26(v0);
    v27 = v5;
    v28 = sub_268B37A34();
    v29 = sub_268B37ED4();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = OUTLINED_FUNCTION_172_0();
      v31 = OUTLINED_FUNCTION_173_0();
      v42[0] = v31;
      *v30 = 136315138;
      *&v39 = *&v5[v18];
      v32 = sub_268B37C24();
      v34 = sub_26892CDB8(v32, v33, v42);

      *(v30 + 4) = v34;
      _os_log_impl(&dword_2688BB000, v28, v29, "Not registering correction/undo for pause intent because response code is not success, but %s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v31);
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_12();
    }

    (*(v10 + 8))(v0, v8);
  }

LABEL_20:
  OUTLINED_FUNCTION_23();
}

uint64_t sub_268AEF8BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_268AEF8E0, 0, 0);
}

uint64_t sub_268AEF8E0()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *(v1 + 16) = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  v3 = sub_268B352B4();
  *v2 = v0;
  v2[1] = sub_2689D3D90;
  v4 = *(v0 + 16);

  return MEMORY[0x2822007B8](v4, 0, 0, 0xD000000000000034, 0x8000000268B5D290, sub_268AF56DC, v1, v3);
}

void sub_268AEF9DC(uint64_t a1, uint64_t a2, void *a3)
{
  v45 = a1;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6D68, &unk_268B42850);
  v42 = *(v46 - 8);
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v46);
  v44 = &v42 - v5;
  v6 = sub_268B37A54();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26890C900(a2 + OBJC_IVAR____TtC26SiriPlaybackControlIntents23PauseMediaIntentHandler_playbackController, v50);
  sub_26890C900(a2 + OBJC_IVAR____TtC26SiriPlaybackControlIntents23PauseMediaIntentHandler_deviceState, v49);
  sub_26890C900(a2 + OBJC_IVAR____TtC26SiriPlaybackControlIntents23PauseMediaIntentHandler_analyticsService, v48);
  sub_26890C900(a2 + OBJC_IVAR____TtC26SiriPlaybackControlIntents23PauseMediaIntentHandler_aceService, v47);
  v10 = __swift_mutable_project_boxed_opaque_existential_1(v48, v48[3]);
  MEMORY[0x28223BE20](v10);
  (*(v12 + 16))(&v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __swift_mutable_project_boxed_opaque_existential_1(v50, v50[3]);
  MEMORY[0x28223BE20](v13);
  (*(v15 + 16))(&v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));

  sub_2689D91C8();
  v17 = v16;
  __swift_destroy_boxed_opaque_existential_0Tm(v50);
  __swift_destroy_boxed_opaque_existential_0Tm(v48);
  v18 = [objc_allocWithZone(type metadata accessor for ResumeMediaIntent()) init];
  if (sub_268B18100(a3))
  {
    type metadata accessor for Device();
    v19 = sub_268B37CE4();
  }

  else
  {
    v19 = 0;
  }

  [v18 setDevices_];

  if (sub_268B18140(a3))
  {
    type metadata accessor for DeviceContext();
    v20 = sub_268B37CE4();
  }

  else
  {
    v20 = 0;
  }

  [v18 setDeviceContext_];

  [v18 setMediaType_];
  if (sub_268B18120(a3))
  {
    type metadata accessor for DeviceQuery();
    v21 = sub_268B37CE4();
  }

  else
  {
    v21 = 0;
  }

  [v18 setDeviceQueries_];

  if (sub_2689D8BEC(a3))
  {
    type metadata accessor for ControlsSettingAttribute();
    v22 = sub_268B37CE4();
  }

  else
  {
    v22 = 0;
  }

  [v18 setSettingAttributes_];

  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v23 = __swift_project_value_buffer(v6, qword_2802CDA10);
  (*(v7 + 16))(v9, v23, v6);
  v24 = v18;
  v25 = a3;
  v26 = v9;
  v27 = sub_268B37A34();
  v28 = sub_268B37ED4();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = v7;
    v30 = v6;
    v31 = v17;
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v32 = 138412546;
    *(v32 + 4) = v24;
    *(v32 + 12) = 2112;
    *(v32 + 14) = v25;
    *v33 = v24;
    v33[1] = v25;
    v34 = v24;
    v35 = v25;
    _os_log_impl(&dword_2688BB000, v27, v28, "Executing resume intent %@ as a correction/undo for pause intent %@", v32, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6420, &unk_268B3C680);
    swift_arrayDestroy();
    MEMORY[0x26D6266E0](v33, -1, -1);
    v36 = v32;
    v17 = v31;
    v6 = v30;
    v7 = v29;
    MEMORY[0x26D6266E0](v36, -1, -1);
  }

  (*(v7 + 8))(v26, v6);
  v37 = v42;
  v38 = v44;
  v39 = v46;
  (*(v42 + 16))(v44, v45, v46);
  v40 = (*(v37 + 80) + 16) & ~*(v37 + 80);
  v41 = swift_allocObject();
  (*(v37 + 32))(v41 + v40, v38, v39);
  sub_2689D2690();
}

uint64_t sub_268AF00BC(char *a1)
{
  v2 = sub_268B352B4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR___ResumeMediaIntentResponse_code;
  swift_beginAccess();
  if (*&a1[v6] == 4)
  {
    *(v5 + 4) = 0;
    *v5 = 0u;
    *(v5 + 1) = 0u;
    v7 = MEMORY[0x277D5BFD0];
  }

  else
  {
    *(v5 + 4) = 0;
    *v5 = 0u;
    *(v5 + 1) = 0u;
    v15 = 0;
    v16 = 0xE000000000000000;
    sub_268B381C4();

    v15 = 0xD000000000000016;
    v16 = 0x8000000268B5D2D0;
    v8 = [a1 description];
    v9 = sub_268B37BF4();
    v11 = v10;

    MEMORY[0x26D625650](v9, v11);

    v12 = v16;
    *(v5 + 5) = v15;
    *(v5 + 6) = v12;
    v7 = MEMORY[0x277D5BFC8];
  }

  (*(v3 + 104))(v5, *v7, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6D68, &unk_268B42850);
  return sub_268B37D94();
}

void sub_268AF0294(void *a1, uint64_t a2, void (**a3)(void, void))
{
  v6 = sub_268B36C04();
  v34 = *(v6 - 8);
  v35 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_268B37A54();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v33 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v31 - v13;
  v36 = a3;
  _Block_copy(a3);
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v9, qword_2802CDA10);
  v31 = *(v10 + 16);
  v32 = v15;
  v31(v14);
  v16 = sub_268B37A34();
  v17 = sub_268B37F04();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = a1;
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_2688BB000, v16, v17, "Resolving devices for pause media", v19, 2u);
    v20 = v19;
    a1 = v18;
    MEMORY[0x26D6266E0](v20, -1, -1);
  }

  v21 = *(v10 + 8);
  v21(v14, v9);
  if ((sub_268921060() & 1) != 0 && (__swift_project_boxed_opaque_existential_1((a2 + OBJC_IVAR____TtC26SiriPlaybackControlIntents23PauseMediaIntentHandler_deviceState), *(a2 + OBJC_IVAR____TtC26SiriPlaybackControlIntents23PauseMediaIntentHandler_deviceState + 24)), (sub_2688C3240() & 1) == 0))
  {
    v25 = v33;
    (v31)(v33, v32, v9);
    v26 = sub_268B37A34();
    v27 = sub_268B37EE4();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_2688BB000, v26, v27, "Whole House Audio requests are unsupported on this platform", v28, 2u);
      MEMORY[0x26D6266E0](v28, -1, -1);
    }

    v21(v25, v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_268B3BBA0;
    type metadata accessor for PauseMediaDevicesResolutionResult();
    *(v29 + 32) = sub_268B17B04(2);
    v30 = sub_268B37CE4();
    v24 = v36;
    (v36)[2](v36, v30);
  }

  else
  {
    v23 = v34;
    v22 = v35;
    (*(v34 + 104))(v8, *MEMORY[0x277D5F658], v35);
    [a1 mediaType];
    v24 = v36;
    _Block_copy(v36);
    sub_26890AD9C();
    (*(v23 + 8))(v8, v22);
  }

  _Block_release(v24);
  _Block_release(v24);
}

void sub_268AF06EC()
{
  OUTLINED_FUNCTION_26();
  v33 = v0;
  v34 = v1;
  v35 = v3;
  v36 = v2;
  v32 = sub_268B36C04();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_0();
  v9 = v8 - v7;
  v10 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  v14 = MEMORY[0x28223BE20](v13);
  v31 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v29 - v16;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v18 = __swift_project_value_buffer(v10, qword_2802CDA10);
  v30 = *(v12 + 16);
  v30(v17, v18, v10);
  v19 = sub_268B37A34();
  v20 = sub_268B37F04();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = OUTLINED_FUNCTION_14();
    *v21 = 0;
    _os_log_impl(&dword_2688BB000, v19, v20, "Resolving devices for pause media", v21, 2u);
    OUTLINED_FUNCTION_12();
  }

  v22 = *(v12 + 8);
  v22(v17, v10);
  if ((sub_268921060() & 1) != 0 && (__swift_project_boxed_opaque_existential_1((v33 + OBJC_IVAR____TtC26SiriPlaybackControlIntents23PauseMediaIntentHandler_deviceState), *(v33 + OBJC_IVAR____TtC26SiriPlaybackControlIntents23PauseMediaIntentHandler_deviceState + 24)), (sub_2688C3240() & 1) == 0))
  {
    v24 = v31;
    v30(v31, v18, v10);
    v25 = sub_268B37A34();
    v26 = sub_268B37EE4();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = OUTLINED_FUNCTION_14();
      *v27 = 0;
      _os_log_impl(&dword_2688BB000, v25, v26, "Whole House Audio requests are unsupported on this platform", v27, 2u);
      OUTLINED_FUNCTION_83_0();
    }

    v22(v24, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
    OUTLINED_FUNCTION_220();
    v28 = swift_allocObject();
    OUTLINED_FUNCTION_15_26(v28, xmmword_268B3BBA0);
    v28[2].n128_u64[0] = sub_268B17B04(2);
    v34(v28);
  }

  else
  {
    v23 = v32;
    (*(v5 + 104))(v9, *MEMORY[0x277D5F658], v32);
    [v36 mediaType];

    sub_26890B65C();
    (*(v5 + 8))(v9, v23);
  }

  OUTLINED_FUNCTION_23();
}

void sub_268AF0A9C()
{
  OUTLINED_FUNCTION_26();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v58 - v15;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_141();
  MEMORY[0x28223BE20](v17);
  v19 = &v58 - v18;
  if (v4)
  {
    if (v4 == 1)
    {
      if (qword_2802A4F30 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
      }

      __swift_project_value_buffer(v7, qword_2802CDA10);
      OUTLINED_FUNCTION_6_2();
      v20(v16);

      v21 = sub_268B37A34();
      v22 = sub_268B37F04();
      sub_268958D4C(v6, 1u);
      if (os_log_type_enabled(v21, v22))
      {
        v23 = OUTLINED_FUNCTION_172_0();
        v24 = OUTLINED_FUNCTION_173_0();
        v65 = v24;
        *v23 = 136315138;
        v25 = type metadata accessor for Device();
        v26 = MEMORY[0x26D6256F0](v6, v25);
        OUTLINED_FUNCTION_30_3(v26, v27);
        v63 = v2;
        OUTLINED_FUNCTION_16_7();
        *(v23 + 4) = v9;
        _os_log_impl(&dword_2688BB000, v21, v22, "PauseMediaIntentHandler#resolveDevices Disambiguating between devices: %s", v23, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v24);
        OUTLINED_FUNCTION_12();
        OUTLINED_FUNCTION_12();

        (v2)[1](v16, v7);
        v2 = v63;
      }

      else
      {

        (*(v9 + 8))(v16, v7);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
      OUTLINED_FUNCTION_220();
      v49 = swift_allocObject();
      OUTLINED_FUNCTION_15_26(v49, xmmword_268B3BBA0);
      v50 = sub_268B2CCFC(v6);
    }

    else
    {
      v63 = v2;
      if (qword_2802A4F30 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
      }

      v36 = __swift_project_value_buffer(v7, qword_2802CDA10);
      v61 = *(v9 + 16);
      v62 = v36;
      v61(v19);
      v37 = sub_268B37A34();
      v38 = sub_268B37EE4();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = OUTLINED_FUNCTION_172_0();
        v60 = v9;
        v40 = v39;
        v59 = OUTLINED_FUNCTION_173_0();
        v65 = v59;
        *v40 = 136315138;
        v64 = v6 & 1;
        sub_26890C84C();
        v41 = sub_268B384A4();
        v43 = sub_26892CDB8(v41, v42, &v65);

        *(v40 + 4) = v43;
        _os_log_impl(&dword_2688BB000, v37, v38, "PauseMediaIntentHandler#resolveDevices Error resolving devices: %s", v40, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v59);
        OUTLINED_FUNCTION_12();
        v9 = v60;
        OUTLINED_FUNCTION_12();
      }

      v44 = *(v9 + 8);
      v44(v19, v7);
      v2 = v63;
      if ((v6 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
        OUTLINED_FUNCTION_220();
        v56 = swift_allocObject();
        OUTLINED_FUNCTION_15_26(v56, xmmword_268B3BBA0);
        v56[2].n128_u64[0] = [swift_getObjCClassFromMetadata() notRequired];
        goto LABEL_32;
      }

      (v61)(v13, v62, v7);
      v45 = sub_268B37A34();
      v46 = sub_268B37EE4();
      if (os_log_type_enabled(v45, v46))
      {
        *OUTLINED_FUNCTION_14() = 0;
        OUTLINED_FUNCTION_112_1(&dword_2688BB000, v47, v48, "PauseMediaIntentHandler#resolveDevices .noMatchingDevicesFound");
        OUTLINED_FUNCTION_83_0();
      }

      v44(v13, v7);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
      OUTLINED_FUNCTION_220();
      v49 = swift_allocObject();
      OUTLINED_FUNCTION_15_26(v49, xmmword_268B3BBA0);
      v50 = sub_268B17B04(1);
    }

    v49[2].n128_u64[0] = v50;
LABEL_32:
    v57 = sub_268B37CE4();
    (v2)[2](v2, v57);

    _Block_release(v2);
    OUTLINED_FUNCTION_23();
    return;
  }

  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  __swift_project_value_buffer(v7, qword_2802CDA10);
  OUTLINED_FUNCTION_6_2();
  v28(v0);

  v29 = sub_268B37A34();
  v30 = sub_268B37F04();
  sub_268958D4C(v6, 0);
  if (os_log_type_enabled(v29, v30))
  {
    v31 = OUTLINED_FUNCTION_172_0();
    v32 = OUTLINED_FUNCTION_173_0();
    v65 = v32;
    *v31 = 136315138;
    v33 = type metadata accessor for Device();
    v34 = MEMORY[0x26D6256F0](v6, v33);
    OUTLINED_FUNCTION_30_3(v34, v35);
    v63 = v2;
    OUTLINED_FUNCTION_16_7();
    *(v31 + 4) = v9;
    _os_log_impl(&dword_2688BB000, v29, v30, "PauseMediaIntentHandler#resolveDevices Success resolving devices: %s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v32);
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_12();

    v2[1](v0, v7);
    v2 = v63;
  }

  else
  {

    (*(v9 + 8))(v0, v7);
  }

  v51 = sub_2688EFD0C();
  if (!v51)
  {
LABEL_30:
    type metadata accessor for PauseMediaDevicesResolutionResult();
    goto LABEL_32;
  }

  v52 = v51;
  v65 = MEMORY[0x277D84F90];
  sub_268B38234();
  if ((v52 & 0x8000000000000000) == 0)
  {
    type metadata accessor for PauseMediaDevicesResolutionResult();
    v53 = 0;
    do
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v54 = MEMORY[0x26D625BD0](v53, v6);
      }

      else
      {
        v54 = *(v6 + 8 * v53 + 32);
      }

      v55 = v54;
      ++v53;
      sub_268B2CC98(v54);

      sub_268B38214();
      sub_268B38244();
      sub_268B38254();
      sub_268B38224();
    }

    while (v52 != v53);
    goto LABEL_30;
  }

  __break(1u);
}

void sub_268AF11A4()
{
  OUTLINED_FUNCTION_26();
  v3 = v2;
  v61 = v4;
  v6 = v5;
  v8 = v7;
  v9 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_6_42();
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v56 - v15;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_141();
  MEMORY[0x28223BE20](v17);
  v19 = &v56 - v18;
  if (v6)
  {
    if (v6 == 1)
    {
      if (qword_2802A4F30 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
      }

      v20 = __swift_project_value_buffer(v9, qword_2802CDA10);
      (*(v11 + 16))(v0, v20, v9);

      v21 = sub_268B37A34();
      v22 = sub_268B37F04();
      sub_268958D4C(v8, 1u);
      if (os_log_type_enabled(v21, v22))
      {
        v23 = OUTLINED_FUNCTION_172_0();
        v24 = OUTLINED_FUNCTION_173_0();
        v63 = v24;
        *v23 = 136315138;
        v25 = type metadata accessor for Device();
        v26 = MEMORY[0x26D6256F0](v8, v25);
        OUTLINED_FUNCTION_30_3(v26, v27);
        v60 = v9;
        OUTLINED_FUNCTION_16_7();
        *(v23 + 4) = v3;
        _os_log_impl(&dword_2688BB000, v21, v22, "PauseMediaIntentHandler#resolveDevices Disambiguating between devices: %s", v23, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v24);
        OUTLINED_FUNCTION_83_0();
        OUTLINED_FUNCTION_12();

        (*(v11 + 8))(v0, v60);
      }

      else
      {

        (*(v11 + 8))(v0, v9);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
      OUTLINED_FUNCTION_220();
      v49 = swift_allocObject();
      OUTLINED_FUNCTION_15_26(v49, xmmword_268B3BBA0);
      v50 = sub_268B2CCFC(v8);
    }

    else
    {
      v60 = v3;
      if (qword_2802A4F30 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
      }

      v36 = __swift_project_value_buffer(v9, qword_2802CDA10);
      v58 = *(v11 + 16);
      v59 = v36;
      v58(v19);
      v37 = sub_268B37A34();
      v38 = sub_268B37EE4();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = OUTLINED_FUNCTION_172_0();
        v57 = v11;
        v40 = v39;
        v56 = OUTLINED_FUNCTION_173_0();
        v63 = v56;
        *v40 = 136315138;
        v62 = v8 & 1;
        sub_26890C84C();
        v41 = sub_268B384A4();
        v43 = sub_26892CDB8(v41, v42, &v63);

        *(v40 + 4) = v43;
        _os_log_impl(&dword_2688BB000, v37, v38, "PauseMediaIntentHandler#resolveDevices Error resolving devices: %s", v40, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v56);
        OUTLINED_FUNCTION_12();
        v11 = v57;
        OUTLINED_FUNCTION_12();
      }

      v44 = *(v11 + 8);
      v44(v19, v9);
      if (v8)
      {
        (v58)(v1, v59, v9);
        v45 = sub_268B37A34();
        v46 = sub_268B37EE4();
        if (os_log_type_enabled(v45, v46))
        {
          *OUTLINED_FUNCTION_14() = 0;
          OUTLINED_FUNCTION_112_1(&dword_2688BB000, v47, v48, "PauseMediaIntentHandler#resolveDevices .noMatchingDevicesFound");
          OUTLINED_FUNCTION_83_0();
        }

        v44(v1, v9);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
        OUTLINED_FUNCTION_220();
        v49 = swift_allocObject();
        OUTLINED_FUNCTION_15_26(v49, xmmword_268B3BBA0);
        v50 = sub_268B17B04(1);
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
        OUTLINED_FUNCTION_220();
        v49 = swift_allocObject();
        OUTLINED_FUNCTION_15_26(v49, xmmword_268B3BBA0);
        v50 = [swift_getObjCClassFromMetadata() notRequired];
      }
    }

    v49[2].n128_u64[0] = v50;
    goto LABEL_32;
  }

  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v28 = __swift_project_value_buffer(v9, qword_2802CDA10);
  (*(v11 + 16))(v16, v28, v9);

  v29 = sub_268B37A34();
  v30 = sub_268B37F04();
  sub_268958D4C(v8, 0);
  if (os_log_type_enabled(v29, v30))
  {
    v31 = OUTLINED_FUNCTION_172_0();
    v32 = OUTLINED_FUNCTION_173_0();
    v63 = v32;
    *v31 = 136315138;
    v33 = type metadata accessor for Device();
    v34 = MEMORY[0x26D6256F0](v8, v33);
    OUTLINED_FUNCTION_30_3(v34, v35);
    v60 = v9;
    OUTLINED_FUNCTION_16_7();
    *(v31 + 4) = v3;
    _os_log_impl(&dword_2688BB000, v29, v30, "PauseMediaIntentHandler#resolveDevices Success resolving devices: %s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v32);
    OUTLINED_FUNCTION_83_0();
    OUTLINED_FUNCTION_12();

    (*(v11 + 8))(v16, v60);
  }

  else
  {

    (*(v11 + 8))(v16, v9);
  }

  v51 = sub_2688EFD0C();
  v49 = MEMORY[0x277D84F90];
  if (!v51)
  {
    goto LABEL_32;
  }

  v52 = v51;
  v63 = MEMORY[0x277D84F90];
  sub_268B38234();
  if ((v52 & 0x8000000000000000) == 0)
  {
    type metadata accessor for PauseMediaDevicesResolutionResult();
    v53 = 0;
    do
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v54 = MEMORY[0x26D625BD0](v53, v8);
      }

      else
      {
        v54 = *(v8 + 8 * v53 + 32);
      }

      v55 = v54;
      ++v53;
      sub_268B2CC98(v54);

      sub_268B38214();
      sub_268B38244();
      sub_268B38254();
      sub_268B38224();
    }

    while (v52 != v53);
    v49 = v63;
LABEL_32:
    v61(v49);

    OUTLINED_FUNCTION_23();
    return;
  }

  __break(1u);
}

void sub_268AF1888(uint64_t a1, uint64_t a2)
{
  type metadata accessor for PauseMediaDevicesResolutionResult();
  v3 = sub_268B37CE4();
  (*(a2 + 16))(a2, v3);
}

void sub_268AF18F4(uint64_t a1, uint64_t a2, void (**a3)(void, void))
{
  v4 = objc_allocWithZone(type metadata accessor for PauseMediaIntentResponse());
  v5 = PauseMediaIntentResponse.init(code:userActivity:)(1, 0);
  (a3)[2](a3, v5);

  _Block_release(a3);
}

void sub_268AF1960(uint64_t a1, void (*a2)(void))
{
  v3 = objc_allocWithZone(type metadata accessor for PauseMediaIntentResponse());
  v4 = PauseMediaIntentResponse.init(code:userActivity:)(1, 0);
  a2();
}

void sub_268AF19EC(void *a1, int a2, void *a3, void *aBlock, void (*a5)(id, id, void *))
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v9 = a3;
  v10 = a1;
  a5(v9, v10, v8);
  _Block_release(v8);
}

void sub_268AF1A78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_26();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v25 = sub_268B36F24();
  OUTLINED_FUNCTION_1();
  v27 = v26;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_6_42();
  v30 = MEMORY[0x28223BE20](v29);
  v32 = &a9 - v31;
  MEMORY[0x28223BE20](v30);
  v34 = &a9 - v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5DE8, &qword_268B3D790);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v35);
  v37 = &a9 - v36;
  sub_26893B66C(v24, &a9 - v36);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v38 = *(v27 + 32);
    v38(v34, v37, v25);
    sub_268B36EC4();
    v39 = *(v27 + 8);
    v39(v34, v25);
    v38(v20, v32, v25);
    if ((*(v27 + 88))(v20, v25) != *MEMORY[0x277D5F698])
    {
      v39(v20, v25);
    }
  }

  OUTLINED_FUNCTION_23();
}

uint64_t sub_268AF1C64(uint64_t *a1, uint64_t a2, uint64_t a3, char *a4, void *a5, uint64_t a6, void *a7)
{
  v160 = a4;
  v148 = a3;
  v12 = sub_268B37A54();
  v13 = *(v12 - 1);
  v14 = MEMORY[0x28223BE20](v12);
  v147 = &v143 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v146 = &v143 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v145 = &v143 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v149 = &v143 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v150 = &v143 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v151 = &v143 - v25;
  MEMORY[0x28223BE20](v24);
  v27 = (&v143 - v26);
  v28 = swift_allocObject();
  v28[2] = a5;
  v28[3] = a6;
  v153 = v28;
  v28[4] = a7;
  v29 = qword_2802A4F30;
  v152 = a5;
  v155 = a6;

  v154 = a7;
  if (v29 != -1)
  {
LABEL_92:
    swift_once();
  }

  v30 = __swift_project_value_buffer(v12, qword_2802CDA10);
  v31 = *(v13 + 16);
  v157 = v30;
  v31(v27);

  v32 = sub_268B37A34();
  v33 = sub_268B37F04();

  v34 = os_log_type_enabled(v32, v33);
  v156 = v13;
  if (v34)
  {
    v35 = swift_slowAlloc();
    v158 = v12;
    v159 = a1;
    v36 = v35;
    v37 = swift_slowAlloc();
    v161[0] = v37;
    *v36 = 136315394;
    v38 = type metadata accessor for Device();
    v39 = MEMORY[0x26D6256F0](v159, v38);
    v144 = v31;
    v40 = v13;
    v42 = sub_26892CDB8(v39, v41, v161);

    *(v36 + 4) = v42;
    *(v36 + 12) = 2080;
    v43 = type metadata accessor for DeviceContext();
    v44 = MEMORY[0x26D6256F0](a2, v43);
    v46 = sub_26892CDB8(v44, v45, v161);

    *(v36 + 14) = v46;
    _os_log_impl(&dword_2688BB000, v32, v33, "Executing pause for devices: %s, deviceContext: %s", v36, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D6266E0](v37, -1, -1);
    v47 = v36;
    v12 = v158;
    a1 = v159;
    MEMORY[0x26D6266E0](v47, -1, -1);

    v48 = v40;
    v31 = v144;
  }

  else
  {

    v48 = v13;
  }

  v49 = *(v48 + 8);
  v49(v27, v12);
  v50 = *&v160[OBJC_IVAR____TtC26SiriPlaybackControlIntents23PauseMediaIntentHandler_aceServiceHelper];
  sub_268921344();
  if (!v51[2])
  {
    goto LABEL_62;
  }

  v53 = v51[4];
  v52 = v51[5];

  v54 = HIBYTE(v52) & 0xF;
  if ((v52 & 0x2000000000000000) == 0)
  {
    v54 = v53 & 0xFFFFFFFFFFFFLL;
  }

  if (!v54)
  {
    goto LABEL_62;
  }

  v159 = a1;
  v55 = sub_268B37724();
  a1 = v56;
  v57 = v55 == v53 && v56 == v52;
  v158 = v55;
  if (v57)
  {
  }

  else
  {
    v58 = sub_268B38444();

    if ((v58 & 1) == 0)
    {
      v158 = v50;

      v59 = v149;
      v60 = v31;
      (v31)(v149, v157, v12);
      v61 = v159;

      v62 = sub_268B37A34();
      v63 = sub_268B37F04();

      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        *v64 = 138412290;
        type metadata accessor for Device();
        v66 = sub_268B37CE4();
        *(v64 + 4) = v66;
        *v65 = v66;
        _os_log_impl(&dword_2688BB000, v62, v63, "Handling pause for devices: %@", v64, 0xCu);
        sub_2688C058C(v65, &qword_2802A6420, &unk_268B3C680);
        MEMORY[0x26D6266E0](v65, -1, -1);
        MEMORY[0x26D6266E0](v64, -1, -1);
      }

      v49(v59, v12);
      __swift_project_boxed_opaque_existential_1(&v160[OBJC_IVAR____TtC26SiriPlaybackControlIntents23PauseMediaIntentHandler_analyticsService], *&v160[OBJC_IVAR____TtC26SiriPlaybackControlIntents23PauseMediaIntentHandler_analyticsService + 24]);
      sub_268920C54(v61);
      sub_268949478(0x64654D6573756170, 0xEA00000000006169, v67, v61);

      sub_268A32010(v61, 0, v158);
      v68 = sub_2688EFD0C();
      v69 = v154;
      if (v68 == 1)
      {
        if (sub_2688EFD0C())
        {
          sub_2688EFD10();
          if ((v61 & 0xC000000000000001) != 0)
          {
            v70 = MEMORY[0x26D625BD0](0, v61);
          }

          else
          {
            v70 = *(v61 + 32);
          }

          v71 = sub_268B0F784(v70);
          v73 = v72;
        }

        else
        {
          v71 = 0;
          v73 = 0;
        }

        sub_268B36C54();
        v114 = sub_268B36C24();
        if (v73)
        {
          if (v71 == v114 && v73 == v115)
          {

LABEL_83:
            (v60)(v145, v157, v12);
            v137 = sub_268B37A34();
            v138 = sub_268B37F04();
            if (os_log_type_enabled(v137, v138))
            {
              v139 = swift_slowAlloc();
              *v139 = 0;
              _os_log_impl(&dword_2688BB000, v137, v138, "Local device targeted for pause on non tvOS platform. Applying a pause command", v139, 2u);
              MEMORY[0x26D6266E0](v139, -1, -1);
            }

            v49(v145, v12);
            v140 = v160;
            __swift_project_boxed_opaque_existential_1(&v160[OBJC_IVAR____TtC26SiriPlaybackControlIntents23PauseMediaIntentHandler_playbackController], *&v160[OBJC_IVAR____TtC26SiriPlaybackControlIntents23PauseMediaIntentHandler_playbackController + 24]);
            sub_268921344();
            v141 = swift_allocObject();
            v141[2] = v140;
            v141[3] = sub_268AF5CEC;
            v141[4] = v153;

            v142 = v140;
            goto LABEL_86;
          }

          v117 = sub_268B38444();

          if (v117)
          {
            goto LABEL_83;
          }
        }

        else
        {
        }
      }

      sub_2689123E8();
      if ((v118 & 1) == 0)
      {
        v128 = v147;
        (v60)(v147, v157, v12);
        v129 = sub_268B37A34();
        v130 = sub_268B37F04();
        if (os_log_type_enabled(v129, v130))
        {
          v131 = swift_slowAlloc();
          *v131 = 0;
          _os_log_impl(&dword_2688BB000, v129, v130, "PauseMediaIntentHandler#executePause intent has explicit target entities. Applying a remove from group command", v131, 2u);
          v132 = v131;
          v128 = v147;
          MEMORY[0x26D6266E0](v132, -1, -1);
        }

        v49(v128, v12);
        v133 = v160;
        __swift_project_boxed_opaque_existential_1(&v160[OBJC_IVAR____TtC26SiriPlaybackControlIntents23PauseMediaIntentHandler_playbackController], *&v160[OBJC_IVAR____TtC26SiriPlaybackControlIntents23PauseMediaIntentHandler_playbackController + 24]);
        sub_268921344();
        v134 = swift_allocObject();
        v135 = v153;
        v134[2] = sub_268AF5CEC;
        v134[3] = v135;
        v134[4] = v133;

        v136 = v133;
        sub_268B36E44();
        goto LABEL_87;
      }

      v119 = v146;
      (v60)(v146, v157, v12);
      v120 = sub_268B37A34();
      v121 = sub_268B37F04();
      if (os_log_type_enabled(v120, v121))
      {
        v122 = swift_slowAlloc();
        *v122 = 0;
        _os_log_impl(&dword_2688BB000, v120, v121, "PauseMediaIntentHandler#executePause no (or ambiguous) target entities found in the intent. Applying a pause command to stop all devices in the group", v122, 2u);
        v123 = v122;
        v119 = v146;
        MEMORY[0x26D6266E0](v123, -1, -1);
      }

      v49(v119, v12);
      v124 = v160;
      __swift_project_boxed_opaque_existential_1(&v160[OBJC_IVAR____TtC26SiriPlaybackControlIntents23PauseMediaIntentHandler_playbackController], *&v160[OBJC_IVAR____TtC26SiriPlaybackControlIntents23PauseMediaIntentHandler_playbackController + 24]);
      sub_268921344();
      v125 = swift_allocObject();
      v126 = v153;
      v125[2] = sub_268AF5CEC;
      v125[3] = v126;
      v125[4] = v124;

      v127 = v124;
LABEL_86:
      sub_268B36E34();
LABEL_87:

      goto LABEL_65;
    }
  }

  v74 = sub_2688EFD0C();
  if (!v74)
  {
LABEL_62:

    v103 = v151;
    (v31)(v151, v157, v12);
    v104 = sub_268B37A34();
    v105 = sub_268B37EE4();
    v106 = os_log_type_enabled(v104, v105);
    v69 = v154;
    if (v106)
    {
      v107 = swift_slowAlloc();
      *v107 = 0;
      _os_log_impl(&dword_2688BB000, v104, v105, "Failed to handle Pause intent", v107, 2u);
      MEMORY[0x26D6266E0](v107, -1, -1);
    }

    v49(v103, v12);
    v108 = sub_268B36EA4();
    v109 = objc_allocWithZone(type metadata accessor for PauseMediaIntentResponse());
    v110 = v108;
    v111 = PauseMediaIntentResponse.init(code:userActivity:)(5, v108);
    v112 = v152;
    sub_268AEF45C();

    goto LABEL_65;
  }

  v75 = v74;
  (v31)(v150, v157, v12);

  v76 = sub_268B37A34();
  v27 = sub_268B37F04();

  if (os_log_type_enabled(v76, v27))
  {
    v77 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    *v77 = 138412290;
    type metadata accessor for DeviceContext();
    v79 = sub_268B37CE4();
    *(v77 + 4) = v79;
    *v78 = v79;
    _os_log_impl(&dword_2688BB000, v76, v27, "Pausing everywhere using context %@", v77, 0xCu);
    sub_2688C058C(v78, &qword_2802A6420, &unk_268B3C680);
    MEMORY[0x26D6266E0](v78, -1, -1);
    MEMORY[0x26D6266E0](v77, -1, -1);
  }

  v49(v150, v12);
  v80 = 0;
  v161[0] = MEMORY[0x277D84F90];
  v12 = (a2 & 0xC000000000000001);
  v13 = a2 & 0xFFFFFFFFFFFFFF8;
  while (v75 != v80)
  {
    if (v12)
    {
      v81 = MEMORY[0x26D625BD0](v80, a2);
    }

    else
    {
      if (v80 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_89;
      }

      v81 = *(a2 + 8 * v80 + 32);
    }

    v82 = v81;
    if (__OFADD__(v80, 1))
    {
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
      goto LABEL_92;
    }

    if ([v81 nowPlayingState] != 1)
    {
LABEL_40:

      goto LABEL_43;
    }

    v83 = sub_268A52360(v82);
    if (!v84)
    {
      goto LABEL_41;
    }

    v27 = v84;
    if (v83 != v158 || v84 != a1)
    {
      v86 = sub_268B38444();

      if (v86)
      {
        goto LABEL_40;
      }

LABEL_41:
      v27 = v161;
      sub_268B38214();
      sub_268B38244();
      sub_268B38254();
      sub_268B38224();
      goto LABEL_43;
    }

LABEL_43:
    ++v80;
  }

  v87 = v161[0];
  v88 = __swift_project_boxed_opaque_existential_1(&v160[OBJC_IVAR____TtC26SiriPlaybackControlIntents23PauseMediaIntentHandler_analyticsService], *&v160[OBJC_IVAR____TtC26SiriPlaybackControlIntents23PauseMediaIntentHandler_analyticsService + 24]);
  v89 = v159;
  if (!sub_2688EFD0C())
  {
    __break(1u);
    goto LABEL_94;
  }

  sub_2688EFD10();
  if ((v89 & 0xC000000000000001) != 0)
  {
LABEL_94:
    v90 = MEMORY[0x26D625BD0](0, v89);
    goto LABEL_48;
  }

  v90 = *(v89 + 32);
LABEL_48:
  v91 = v90;
  v27 = *v88;
  sub_2689493CC(0x64654D6573756170, 0xEA00000000006169, v87, v90);

  sub_26890C900(&v160[OBJC_IVAR____TtC26SiriPlaybackControlIntents23PauseMediaIntentHandler_playbackController], v161);
  v159 = v161[4];
  v158 = __swift_project_boxed_opaque_existential_1(v161, v161[3]);
  a2 = sub_2688EFD0C();
  v92 = 0;
  v93 = MEMORY[0x277D84F90];
  while (a2 != v92)
  {
    if ((v87 & 0xC000000000000001) != 0)
    {
      v94 = MEMORY[0x26D625BD0](v92, v87);
    }

    else
    {
      if (v92 >= *(v87 + 16))
      {
        goto LABEL_91;
      }

      v94 = *(v87 + 8 * v92 + 32);
    }

    v13 = v94;
    v27 = (v92 + 1);
    if (__OFADD__(v92, 1))
    {
      goto LABEL_90;
    }

    a1 = sub_268A52360(v94);
    v12 = v95;

    v92 = (v92 + 1);
    if (v12)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2689876A4();
        v93 = v97;
      }

      v13 = *(v93 + 16);
      if (v13 >= *(v93 + 24) >> 1)
      {
        sub_2689876A4();
        v93 = v98;
      }

      *(v93 + 16) = v13 + 1;
      v96 = v93 + 16 * v13;
      *(v96 + 32) = a1;
      *(v96 + 40) = v12;
      v92 = v27;
    }
  }

  v99 = swift_allocObject();
  v100 = v153;
  v99[2] = sub_268AF5CEC;
  v99[3] = v100;
  v101 = v160;
  v99[4] = v160;

  v102 = v101;
  sub_268B36E34();

  __swift_destroy_boxed_opaque_existential_0Tm(v161);

  v69 = v154;
LABEL_65:
}

void sub_268AF2CF4(unint64_t a1, void *a2, uint64_t a3, char *a4, void *a5, uint64_t a6, void *a7, void (*a8)(uint64_t *), uint64_t a9)
{
  v168 = a4;
  v152 = a3;
  v167 = a2;
  v14 = sub_268B37A54();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v151 = (&v147 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = MEMORY[0x28223BE20](v16);
  v150 = (&v147 - v19);
  v20 = MEMORY[0x28223BE20](v18);
  v149 = &v147 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v153 = (&v147 - v23);
  v24 = MEMORY[0x28223BE20](v22);
  v154 = &v147 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v155 = (&v147 - v27);
  MEMORY[0x28223BE20](v26);
  v29 = (&v147 - v28);
  v30 = swift_allocObject();
  v156 = a8;
  *(v30 + 16) = a8;
  *(v30 + 24) = a9;
  v31 = swift_allocObject();
  v31[2] = a5;
  v31[3] = a6;
  v31[4] = a7;
  v31[5] = sub_2688E19F8;
  v158 = v31;
  v31[6] = v30;
  v32 = qword_2802A4F30;
  v162 = a9;

  v157 = a5;
  v160 = a6;

  v159 = a7;
  v161 = v30;

  if (v32 != -1)
  {
LABEL_92:
    swift_once();
  }

  v33 = __swift_project_value_buffer(v14, qword_2802CDA10);
  v34 = *(v15 + 16);
  v163 = (v15 + 16);
  v164 = v33;
  v165 = v34;
  (v34)(v29);

  v35 = v167;

  v36 = sub_268B37A34();
  v37 = sub_268B37F04();

  v38 = a1;
  v39 = v14;
  if (os_log_type_enabled(v36, v37))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v166 = v15;
    v42 = v35;
    v43 = v41;
    v169[0] = v41;
    *v40 = 136315394;
    v44 = type metadata accessor for Device();
    v45 = MEMORY[0x26D6256F0](a1, v44);
    v47 = sub_26892CDB8(v45, v46, v169);

    *(v40 + 4) = v47;
    *(v40 + 12) = 2080;
    v48 = type metadata accessor for DeviceContext();
    v49 = MEMORY[0x26D6256F0](v42, v48);
    v51 = sub_26892CDB8(v49, v50, v169);
    v39 = v14;

    *(v40 + 14) = v51;
    _os_log_impl(&dword_2688BB000, v36, v37, "Executing pause for devices: %s, deviceContext: %s", v40, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D6266E0](v43, -1, -1);
    v52 = v40;
    v38 = a1;
    MEMORY[0x26D6266E0](v52, -1, -1);

    v53 = v166[1];
  }

  else
  {

    v53 = *(v15 + 8);
  }

  v53(v29, v14);
  v54 = *&v168[OBJC_IVAR____TtC26SiriPlaybackControlIntents23PauseMediaIntentHandler_aceServiceHelper];
  sub_268921344();
  v14 = v163;
  if (!v55[2])
  {
    goto LABEL_62;
  }

  v57 = v55[4];
  v56 = v55[5];

  v58 = HIBYTE(v56) & 0xF;
  if ((v56 & 0x2000000000000000) == 0)
  {
    v58 = v57 & 0xFFFFFFFFFFFFLL;
  }

  if (!v58)
  {
    goto LABEL_62;
  }

  v148 = v54;
  v59 = sub_268B37724();
  v61 = v60;
  v62 = v59 == v57 && v60 == v56;
  v166 = v59;
  if (v62)
  {

    v15 = v167;
  }

  else
  {
    v63 = sub_268B38444();

    v15 = v167;
    if ((v63 & 1) == 0)
    {

      v64 = v153;
      v165(v153, v164, v39);

      v65 = sub_268B37A34();
      v66 = sub_268B37F04();

      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        *v67 = 138412290;
        type metadata accessor for Device();
        v69 = sub_268B37CE4();
        *(v67 + 4) = v69;
        *v68 = v69;
        _os_log_impl(&dword_2688BB000, v65, v66, "Handling pause for devices: %@", v67, 0xCu);
        sub_2688C058C(v68, &qword_2802A6420, &unk_268B3C680);
        MEMORY[0x26D6266E0](v68, -1, -1);
        MEMORY[0x26D6266E0](v67, -1, -1);
      }

      v70 = v64;
      v71 = v39;
      v53(v70, v39);
      __swift_project_boxed_opaque_existential_1(&v168[OBJC_IVAR____TtC26SiriPlaybackControlIntents23PauseMediaIntentHandler_analyticsService], *&v168[OBJC_IVAR____TtC26SiriPlaybackControlIntents23PauseMediaIntentHandler_analyticsService + 24]);
      sub_268920C54(v38);
      sub_268949478(0x64654D6573756170, 0xEA00000000006169, v72, v38);

      sub_268A32010(v38, 0, v148);
      v73 = sub_2688EFD0C();
      v74 = v159;
      if (v73 == 1)
      {
        if (sub_2688EFD0C())
        {
          sub_2688EFD10();
          if ((v38 & 0xC000000000000001) != 0)
          {
            v75 = MEMORY[0x26D625BD0](0, v38);
          }

          else
          {
            v75 = *(v38 + 32);
          }

          v76 = sub_268B0F784(v75);
          v78 = v77;
        }

        else
        {
          v76 = 0;
          v78 = 0;
        }

        sub_268B36C54();
        v118 = sub_268B36C24();
        if (v78)
        {
          if (v76 == v118 && v78 == v119)
          {

LABEL_83:
            v165(v149, v164, v71);
            v141 = sub_268B37A34();
            v142 = sub_268B37F04();
            if (os_log_type_enabled(v141, v142))
            {
              v143 = swift_slowAlloc();
              *v143 = 0;
              _os_log_impl(&dword_2688BB000, v141, v142, "Local device targeted for pause on non tvOS platform. Applying a pause command", v143, 2u);
              MEMORY[0x26D6266E0](v143, -1, -1);
            }

            v53(v149, v71);
            v144 = v168;
            __swift_project_boxed_opaque_existential_1(&v168[OBJC_IVAR____TtC26SiriPlaybackControlIntents23PauseMediaIntentHandler_playbackController], *&v168[OBJC_IVAR____TtC26SiriPlaybackControlIntents23PauseMediaIntentHandler_playbackController + 24]);
            sub_268921344();
            v145 = swift_allocObject();
            v145[2] = v144;
            v145[3] = sub_268AF5DA4;
            v145[4] = v158;

            v146 = v144;
            goto LABEL_86;
          }

          v121 = sub_268B38444();

          if (v121)
          {
            goto LABEL_83;
          }
        }

        else
        {
        }
      }

      sub_2689123E8();
      if ((v122 & 1) == 0)
      {
        v132 = v151;
        v165(v151, v164, v71);
        v133 = sub_268B37A34();
        v134 = sub_268B37F04();
        if (os_log_type_enabled(v133, v134))
        {
          v135 = swift_slowAlloc();
          *v135 = 0;
          _os_log_impl(&dword_2688BB000, v133, v134, "PauseMediaIntentHandler#executePause intent has explicit target entities. Applying a remove from group command", v135, 2u);
          v136 = v135;
          v132 = v151;
          MEMORY[0x26D6266E0](v136, -1, -1);
        }

        v53(v132, v71);
        v137 = v168;
        __swift_project_boxed_opaque_existential_1(&v168[OBJC_IVAR____TtC26SiriPlaybackControlIntents23PauseMediaIntentHandler_playbackController], *&v168[OBJC_IVAR____TtC26SiriPlaybackControlIntents23PauseMediaIntentHandler_playbackController + 24]);
        sub_268921344();
        v138 = swift_allocObject();
        v139 = v158;
        v138[2] = sub_268AF5DA4;
        v138[3] = v139;
        v138[4] = v137;

        v140 = v137;
        sub_268B36E44();
        goto LABEL_87;
      }

      v123 = v150;
      v165(v150, v164, v71);
      v124 = sub_268B37A34();
      v125 = sub_268B37F04();
      if (os_log_type_enabled(v124, v125))
      {
        v126 = swift_slowAlloc();
        *v126 = 0;
        _os_log_impl(&dword_2688BB000, v124, v125, "PauseMediaIntentHandler#executePause no (or ambiguous) target entities found in the intent. Applying a pause command to stop all devices in the group", v126, 2u);
        v127 = v126;
        v123 = v150;
        MEMORY[0x26D6266E0](v127, -1, -1);
      }

      v53(v123, v71);
      v128 = v168;
      __swift_project_boxed_opaque_existential_1(&v168[OBJC_IVAR____TtC26SiriPlaybackControlIntents23PauseMediaIntentHandler_playbackController], *&v168[OBJC_IVAR____TtC26SiriPlaybackControlIntents23PauseMediaIntentHandler_playbackController + 24]);
      sub_268921344();
      v129 = swift_allocObject();
      v130 = v158;
      v129[2] = sub_268AF5DA4;
      v129[3] = v130;
      v129[4] = v128;

      v131 = v128;
LABEL_86:
      sub_268B36E34();
LABEL_87:

      goto LABEL_65;
    }
  }

  v167 = v38;
  v79 = sub_2688EFD0C();
  if (!v79)
  {
LABEL_62:

    v109 = v155;
    v165(v155, v164, v39);
    v110 = sub_268B37A34();
    v111 = sub_268B37EE4();
    if (os_log_type_enabled(v110, v111))
    {
      v112 = swift_slowAlloc();
      *v112 = 0;
      _os_log_impl(&dword_2688BB000, v110, v111, "Failed to handle Pause intent", v112, 2u);
      MEMORY[0x26D6266E0](v112, -1, -1);
    }

    v53(v109, v39);
    v113 = sub_268B36EA4();
    v114 = objc_allocWithZone(type metadata accessor for PauseMediaIntentResponse());
    v115 = v113;
    v116 = PauseMediaIntentResponse.init(code:userActivity:)(5, v113);

    v74 = v159;
    v117 = v157;
    sub_268AEF45C();
    v169[0] = v116;
    v156(v169);

    goto LABEL_65;
  }

  v80 = v79;
  v165(v154, v164, v39);

  v29 = sub_268B37A34();
  v81 = sub_268B37F04();

  if (os_log_type_enabled(v29, v81))
  {
    v14 = swift_slowAlloc();
    v82 = v39;
    v83 = swift_slowAlloc();
    *v14 = 138412290;
    type metadata accessor for DeviceContext();
    v84 = sub_268B37CE4();
    *(v14 + 4) = v84;
    *v83 = v84;
    _os_log_impl(&dword_2688BB000, v29, v81, "Pausing everywhere using context %@", v14, 0xCu);
    sub_2688C058C(v83, &qword_2802A6420, &unk_268B3C680);
    v85 = v83;
    v39 = v82;
    MEMORY[0x26D6266E0](v85, -1, -1);
    MEMORY[0x26D6266E0](v14, -1, -1);
  }

  v53(v154, v39);
  v86 = 0;
  v169[0] = MEMORY[0x277D84F90];
  a1 = v15 & 0xFFFFFFFFFFFFFF8;
  while (v80 != v86)
  {
    if ((v15 & 0xC000000000000001) != 0)
    {
      v87 = MEMORY[0x26D625BD0](v86, v15);
    }

    else
    {
      if (v86 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_89;
      }

      v87 = *(v15 + 8 * v86 + 32);
    }

    v14 = v87;
    if (__OFADD__(v86, 1))
    {
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
      goto LABEL_92;
    }

    if ([v87 nowPlayingState] != 1)
    {
LABEL_40:

      goto LABEL_43;
    }

    v88 = sub_268A52360(v14);
    if (!v89)
    {
      goto LABEL_41;
    }

    v29 = v89;
    if (v88 != v166 || v89 != v61)
    {
      v91 = sub_268B38444();

      if (v91)
      {
        goto LABEL_40;
      }

LABEL_41:
      v29 = v169;
      sub_268B38214();
      sub_268B38244();
      sub_268B38254();
      sub_268B38224();
      goto LABEL_43;
    }

LABEL_43:
    ++v86;
  }

  v92 = v169[0];
  v93 = __swift_project_boxed_opaque_existential_1(&v168[OBJC_IVAR____TtC26SiriPlaybackControlIntents23PauseMediaIntentHandler_analyticsService], *&v168[OBJC_IVAR____TtC26SiriPlaybackControlIntents23PauseMediaIntentHandler_analyticsService + 24]);
  v94 = v167;
  if (!sub_2688EFD0C())
  {
    __break(1u);
    goto LABEL_94;
  }

  sub_2688EFD10();
  if ((v94 & 0xC000000000000001) != 0)
  {
LABEL_94:
    v95 = MEMORY[0x26D625BD0](0, v94);
    goto LABEL_48;
  }

  v95 = *(v94 + 32);
LABEL_48:
  v96 = v95;
  v29 = *v93;
  sub_2689493CC(0x64654D6573756170, 0xEA00000000006169, v92, v95);

  sub_26890C900(&v168[OBJC_IVAR____TtC26SiriPlaybackControlIntents23PauseMediaIntentHandler_playbackController], v169);
  v167 = v169[4];
  v166 = __swift_project_boxed_opaque_existential_1(v169, v169[3]);
  v14 = sub_2688EFD0C();
  v97 = 0;
  v15 = MEMORY[0x277D84F90];
  while (v14 != v97)
  {
    if ((v92 & 0xC000000000000001) != 0)
    {
      v98 = MEMORY[0x26D625BD0](v97, v92);
    }

    else
    {
      if (v97 >= *(v92 + 16))
      {
        goto LABEL_91;
      }

      v98 = *(v92 + 8 * v97 + 32);
    }

    a1 = v98;
    v29 = (&v97->isa + 1);
    if (__OFADD__(v97, 1))
    {
      goto LABEL_90;
    }

    v99 = sub_268A52360(v98);
    v101 = v100;

    v97 = (v97 + 1);
    if (v101)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2689876A4();
        v15 = v103;
      }

      a1 = *(v15 + 16);
      if (a1 >= *(v15 + 24) >> 1)
      {
        sub_2689876A4();
        v15 = v104;
      }

      *(v15 + 16) = a1 + 1;
      v102 = (v15 + 16 * a1);
      v102[4] = v99;
      v102[5] = v101;
      v97 = v29;
    }
  }

  v105 = swift_allocObject();
  v106 = v158;
  v105[2] = sub_268AF5DA4;
  v105[3] = v106;
  v107 = v168;
  v105[4] = v168;

  v108 = v107;
  sub_268B36E34();

  __swift_destroy_boxed_opaque_existential_0Tm(v169);

  v74 = v159;
LABEL_65:
}

void sub_268AF3E8C(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v118 = a3;
  v7 = sub_268B37A54();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v119 = &v116 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v116 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v117 = (&v116 - v15);
  v16 = MEMORY[0x28223BE20](v14);
  v120 = (&v116 - v17);
  v18 = MEMORY[0x28223BE20](v16);
  v121 = (&v116 - v19);
  v20 = MEMORY[0x28223BE20](v18);
  v123 = (&v116 - v21);
  MEMORY[0x28223BE20](v20);
  v23 = (&v116 - v22);
  if (qword_2802A4F30 != -1)
  {
LABEL_89:
    swift_once();
  }

  v24 = __swift_project_value_buffer(v7, qword_2802CDA10);
  v25 = *(v8 + 16);
  v125 = v24;
  v126 = v25;
  v127 = (v8 + 16);
  (v25)(v23);

  v26 = sub_268B37A34();
  v27 = sub_268B37F04();

  v28 = os_log_type_enabled(v26, v27);
  v124 = a4;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v129[0] = v30;
    *v29 = 136315394;
    v31 = type metadata accessor for Device();
    v32 = MEMORY[0x26D6256F0](a1, v31);
    v128 = v7;
    v122 = a1;
    v34 = sub_26892CDB8(v32, v33, v129);

    *(v29 + 4) = v34;
    *(v29 + 12) = 2080;
    v35 = type metadata accessor for DeviceContext();
    v36 = MEMORY[0x26D6256F0](a2, v35);
    v38 = sub_26892CDB8(v36, v37, v129);

    *(v29 + 14) = v38;
    a1 = v122;
    v7 = v128;
    _os_log_impl(&dword_2688BB000, v26, v27, "Executing pause for devices: %s, deviceContext: %s", v29, 0x16u);
    swift_arrayDestroy();
    v39 = v30;
    a4 = v124;
    MEMORY[0x26D6266E0](v39, -1, -1);
    MEMORY[0x26D6266E0](v29, -1, -1);
  }

  v40 = *(v8 + 8);
  v40(v23, v7);
  v41 = *(a4 + OBJC_IVAR____TtC26SiriPlaybackControlIntents23PauseMediaIntentHandler_aceServiceHelper);
  sub_268921344();
  if (!v42[2])
  {
    goto LABEL_43;
  }

  v44 = v42[4];
  v43 = v42[5];

  v45 = HIBYTE(v43) & 0xF;
  if ((v43 & 0x2000000000000000) == 0)
  {
    v45 = v44 & 0xFFFFFFFFFFFFLL;
  }

  if (!v45)
  {
    goto LABEL_43;
  }

  v46 = sub_268B37724();
  v48 = v47;
  v49 = v46 == v44 && v47 == v43;
  v128 = v46;
  if (v49)
  {
  }

  else
  {
    v50 = sub_268B38444();

    if ((v50 & 1) == 0)
    {

      v51 = v120;
      v126(v120, v125, v7);

      v52 = sub_268B37A34();
      v53 = sub_268B37F04();

      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        *v54 = 138412290;
        type metadata accessor for Device();
        v56 = sub_268B37CE4();
        *(v54 + 4) = v56;
        *v55 = v56;
        _os_log_impl(&dword_2688BB000, v52, v53, "Handling pause for devices: %@", v54, 0xCu);
        sub_2688C058C(v55, &qword_2802A6420, &unk_268B3C680);
        MEMORY[0x26D6266E0](v55, -1, -1);
        v51 = v120;
        MEMORY[0x26D6266E0](v54, -1, -1);
      }

      v40(v51, v7);
      __swift_project_boxed_opaque_existential_1((v124 + OBJC_IVAR____TtC26SiriPlaybackControlIntents23PauseMediaIntentHandler_analyticsService), *(v124 + OBJC_IVAR____TtC26SiriPlaybackControlIntents23PauseMediaIntentHandler_analyticsService + 24));
      sub_268920C54(a1);
      sub_268949478(0x64654D6573756170, 0xEA00000000006169, v57, a1);

      sub_268A32010(a1, 0, v41);
      if (sub_2688EFD0C() == 1)
      {
        if (sub_2688EFD0C())
        {
          sub_2688EFD10();
          if ((a1 & 0xC000000000000001) != 0)
          {
            v58 = MEMORY[0x26D625BD0](0, a1);
          }

          else
          {
            v58 = *(a1 + 32);
          }

          v59 = sub_268B0F784(v58);
          v61 = v60;
        }

        else
        {
          v59 = 0;
          v61 = 0;
        }

        sub_268B36C54();
        v92 = sub_268B36C24();
        if (v61)
        {
          if (v59 == v92 && v61 == v93)
          {

LABEL_80:
            v128 = v41;
            v109 = v117;
            v126(v117, v125, v7);
            v110 = sub_268B37A34();
            v111 = sub_268B37F04();
            if (os_log_type_enabled(v110, v111))
            {
              v112 = swift_slowAlloc();
              *v112 = 0;
              _os_log_impl(&dword_2688BB000, v110, v111, "Local device targeted for pause on non tvOS platform. Applying a pause command", v112, 2u);
              MEMORY[0x26D6266E0](v112, -1, -1);
            }

            v40(v109, v7);
            v113 = v124;
            __swift_project_boxed_opaque_existential_1((v124 + OBJC_IVAR____TtC26SiriPlaybackControlIntents23PauseMediaIntentHandler_playbackController), *(v124 + OBJC_IVAR____TtC26SiriPlaybackControlIntents23PauseMediaIntentHandler_playbackController + 24));
            sub_268921344();
            v114 = swift_allocObject();
            v114[2] = v113;
            v114[3] = nullsub_1;
            v114[4] = 0;
            v115 = v113;
            goto LABEL_83;
          }

          v95 = sub_268B38444();

          if (v95)
          {
            goto LABEL_80;
          }
        }

        else
        {
        }
      }

      sub_2689123E8();
      if ((v96 & 1) == 0)
      {
        v126(v119, v125, v7);
        v103 = sub_268B37A34();
        v104 = sub_268B37F04();
        if (os_log_type_enabled(v103, v104))
        {
          v105 = swift_slowAlloc();
          *v105 = 0;
          _os_log_impl(&dword_2688BB000, v103, v104, "PauseMediaIntentHandler#executePause intent has explicit target entities. Applying a remove from group command", v105, 2u);
          MEMORY[0x26D6266E0](v105, -1, -1);
        }

        v40(v119, v7);
        v106 = v124;
        __swift_project_boxed_opaque_existential_1((v124 + OBJC_IVAR____TtC26SiriPlaybackControlIntents23PauseMediaIntentHandler_playbackController), *(v124 + OBJC_IVAR____TtC26SiriPlaybackControlIntents23PauseMediaIntentHandler_playbackController + 24));
        sub_268921344();
        v107 = swift_allocObject();
        v107[2] = nullsub_1;
        v107[3] = 0;
        v107[4] = v106;
        v108 = v106;
        sub_268B36E44();
        goto LABEL_84;
      }

      v126(v13, v125, v7);
      v97 = sub_268B37A34();
      v98 = sub_268B37F04();
      if (os_log_type_enabled(v97, v98))
      {
        v99 = swift_slowAlloc();
        *v99 = 0;
        _os_log_impl(&dword_2688BB000, v97, v98, "PauseMediaIntentHandler#executePause no (or ambiguous) target entities found in the intent. Applying a pause command to stop all devices in the group", v99, 2u);
        MEMORY[0x26D6266E0](v99, -1, -1);
      }

      v40(v13, v7);
      v100 = v124;
      __swift_project_boxed_opaque_existential_1((v124 + OBJC_IVAR____TtC26SiriPlaybackControlIntents23PauseMediaIntentHandler_playbackController), *(v124 + OBJC_IVAR____TtC26SiriPlaybackControlIntents23PauseMediaIntentHandler_playbackController + 24));
      sub_268921344();
      v101 = swift_allocObject();
      v101[2] = nullsub_1;
      v101[3] = 0;
      v101[4] = v100;
      v102 = v100;
LABEL_83:
      sub_268B36E34();
LABEL_84:

      return;
    }
  }

  v62 = sub_2688EFD0C();
  if (!v62)
  {
LABEL_43:

    v71 = v123;
    v126(v123, v125, v7);
    v72 = sub_268B37A34();
    v73 = sub_268B37EE4();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      *v74 = 0;
      _os_log_impl(&dword_2688BB000, v72, v73, "Failed to handle Pause intent", v74, 2u);
      MEMORY[0x26D6266E0](v74, -1, -1);
    }

    v40(v71, v7);
    v75 = sub_268B36EA4();
    v76 = objc_allocWithZone(type metadata accessor for PauseMediaIntentResponse());

    return;
  }

  a4 = v62;
  v122 = a1;
  v63 = v121;
  v126(v121, v125, v7);

  v23 = sub_268B37A34();
  v13 = sub_268B37F04();

  if (os_log_type_enabled(v23, v13))
  {
    a1 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    *a1 = 138412290;
    type metadata accessor for DeviceContext();
    v65 = sub_268B37CE4();
    *(a1 + 4) = v65;
    *v64 = v65;
    _os_log_impl(&dword_2688BB000, v23, v13, "Pausing everywhere using context %@", a1, 0xCu);
    sub_2688C058C(v64, &qword_2802A6420, &unk_268B3C680);
    v66 = v64;
    v63 = v121;
    MEMORY[0x26D6266E0](v66, -1, -1);
    MEMORY[0x26D6266E0](a1, -1, -1);
  }

  v40(v63, v7);
  v8 = 0;
  v129[0] = MEMORY[0x277D84F90];
  v7 = a2 & 0xC000000000000001;
  while (a4 != v8)
  {
    if (v7)
    {
      v67 = MEMORY[0x26D625BD0](v8, a2);
    }

    else
    {
      if (v8 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_86;
      }

      v67 = *(a2 + 8 * v8 + 32);
    }

    v13 = v67;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
      goto LABEL_89;
    }

    if ([v67 nowPlayingState] != 1)
    {
LABEL_38:

      goto LABEL_41;
    }

    v68 = sub_268A52360(v13);
    if (!v69)
    {
      goto LABEL_39;
    }

    v23 = v69;
    if (v68 != v128 || v69 != v48)
    {
      a1 = sub_268B38444();

      if (a1)
      {
        goto LABEL_38;
      }

LABEL_39:
      v23 = v129;
      sub_268B38214();
      a1 = *(v129[0] + 16);
      sub_268B38244();
      sub_268B38254();
      sub_268B38224();
      goto LABEL_41;
    }

LABEL_41:
    ++v8;
  }

  v77 = v129[0];
  v78 = v124;
  v79 = __swift_project_boxed_opaque_existential_1((v124 + OBJC_IVAR____TtC26SiriPlaybackControlIntents23PauseMediaIntentHandler_analyticsService), *(v124 + OBJC_IVAR____TtC26SiriPlaybackControlIntents23PauseMediaIntentHandler_analyticsService + 24));
  v80 = v122;
  if (!sub_2688EFD0C())
  {
    __break(1u);
    goto LABEL_91;
  }

  sub_2688EFD10();
  if ((v80 & 0xC000000000000001) != 0)
  {
LABEL_91:
    v81 = MEMORY[0x26D625BD0](0, v80);
    goto LABEL_49;
  }

  v81 = *(v80 + 32);
LABEL_49:
  v82 = v81;
  v23 = *v79;
  sub_2689493CC(0x64654D6573756170, 0xEA00000000006169, v77, v81);

  sub_26890C900(v78 + OBJC_IVAR____TtC26SiriPlaybackControlIntents23PauseMediaIntentHandler_playbackController, v129);
  v128 = v129[4];
  v127 = __swift_project_boxed_opaque_existential_1(v129, v129[3]);
  v13 = sub_2688EFD0C();
  a1 = 0;
  v8 = v77 & 0xC000000000000001;
  a4 = MEMORY[0x277D84F90];
  while (v13 != a1)
  {
    if (v8)
    {
      v83 = MEMORY[0x26D625BD0](a1, v77);
    }

    else
    {
      if (a1 >= *(v77 + 16))
      {
        goto LABEL_88;
      }

      v83 = *(v77 + 8 * a1 + 32);
    }

    a2 = v83;
    v23 = (a1 + 1);
    if (__OFADD__(a1, 1))
    {
      goto LABEL_87;
    }

    v84 = sub_268A52360(v83);
    v7 = v85;

    ++a1;
    if (v7)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2689876A4();
        a4 = v87;
      }

      a2 = *(a4 + 16);
      if (a2 >= *(a4 + 24) >> 1)
      {
        sub_2689876A4();
        a4 = v88;
      }

      *(a4 + 16) = a2 + 1;
      v86 = a4 + 16 * a2;
      *(v86 + 32) = v84;
      *(v86 + 40) = v7;
      a1 = v23;
    }
  }

  v89 = swift_allocObject();
  v89[2] = nullsub_1;
  v89[3] = 0;
  v90 = v124;
  v89[4] = v124;
  v91 = v90;
  sub_268B36E34();

  __swift_destroy_boxed_opaque_existential_0Tm(v129);
}

id PauseMediaIntentHandler.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for PauseMediaIntentHandler();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_268AF51FC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v26[3] = type metadata accessor for AnalyticsServiceImpl();
  v26[4] = &off_2879539D0;
  v26[0] = a4;
  sub_26890C900(a3, v25);
  sub_26890C900(v26, v23);
  sub_26890C900(a5, v22);
  sub_268B376A4();
  v10 = sub_268B37694();
  v11 = __swift_mutable_project_boxed_opaque_existential_1(v23, v24);
  MEMORY[0x28223BE20](v11);
  v13 = (v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13);
  v15 = sub_26892D53C(a2, v25, *v13, v22, v10);
  __swift_destroy_boxed_opaque_existential_0Tm(v23);
  sub_26890C900(a3, v25);
  sub_26890C900(v26, v23);
  sub_26890C900(a5, v22);
  v16 = __swift_mutable_project_boxed_opaque_existential_1(v23, v24);
  MEMORY[0x28223BE20](v16);
  v18 = (v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v19 + 16))(v18);
  v20 = sub_268AF5824(a1, v15, v25, *v18, v22);
  __swift_destroy_boxed_opaque_existential_0Tm(a5);
  __swift_destroy_boxed_opaque_existential_0Tm(a3);
  __swift_destroy_boxed_opaque_existential_0Tm(v26);
  __swift_destroy_boxed_opaque_existential_0Tm(v23);
  return v20;
}

uint64_t sub_268AF5454()
{

  OUTLINED_FUNCTION_0_3();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_268AF5488()
{
  sub_268B37A24();
  OUTLINED_FUNCTION_4();
  v2 = *(v1 + 80);
  v3 = (v2 + 33) & ~v2;
  v4 = (v3 + *(v1 + 64)) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v4 + 24, v2 | 7);
}

uint64_t sub_268AF55F4()
{
  OUTLINED_FUNCTION_0_3();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_268AF5630(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2688C01F0;

  return sub_268AEF8BC(a1, v5, v4);
}

uint64_t sub_268AF56E4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6D68, &unk_268B42850);
  OUTLINED_FUNCTION_4();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_268AF5770(char *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6D68, &unk_268B42850);

  return sub_268AF00BC(a1);
}

uint64_t sub_268AF57EC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

id sub_268AF5824(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v27[3] = sub_268B36C54();
  v27[4] = MEMORY[0x277D5F680];
  v27[0] = a1;
  v10 = type metadata accessor for AnalyticsServiceImpl();
  v26[3] = v10;
  v26[4] = &off_2879539D0;
  v26[0] = a4;
  v11 = type metadata accessor for PauseMediaIntentHandler();
  v12 = objc_allocWithZone(v11);
  v13 = __swift_mutable_project_boxed_opaque_existential_1(v26, v10);
  MEMORY[0x28223BE20](v13);
  v15 = (&v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15);
  v17 = *v15;
  v25[3] = v10;
  v25[4] = &off_2879539D0;
  v25[0] = v17;
  sub_26890C900(v27, &v12[OBJC_IVAR____TtC26SiriPlaybackControlIntents23PauseMediaIntentHandler_playbackController]);
  *&v12[OBJC_IVAR____TtC26SiriPlaybackControlIntents23PauseMediaIntentHandler_deviceSelector] = a2;
  sub_26890C900(v25, &v12[OBJC_IVAR____TtC26SiriPlaybackControlIntents23PauseMediaIntentHandler_analyticsService]);
  sub_26890C900(a3, &v12[OBJC_IVAR____TtC26SiriPlaybackControlIntents23PauseMediaIntentHandler_deviceState]);
  sub_26890C900(a3, v24);
  sub_26890C900(a5, v23);
  type metadata accessor for AceServiceHelper();
  v18 = swift_allocObject();
  sub_2688E6514(v24, v18 + 16);
  sub_2688E6514(v23, v18 + 56);
  *&v12[OBJC_IVAR____TtC26SiriPlaybackControlIntents23PauseMediaIntentHandler_aceServiceHelper] = v18;
  sub_26890C900(a5, &v12[OBJC_IVAR____TtC26SiriPlaybackControlIntents23PauseMediaIntentHandler_aceService]);
  v22.receiver = v12;
  v22.super_class = v11;
  v19 = objc_msgSendSuper2(&v22, sel_init);
  __swift_destroy_boxed_opaque_existential_0Tm(a5);
  __swift_destroy_boxed_opaque_existential_0Tm(a3);
  __swift_destroy_boxed_opaque_existential_0Tm(v27);
  __swift_destroy_boxed_opaque_existential_0Tm(v25);
  __swift_destroy_boxed_opaque_existential_0Tm(v26);
  return v19;
}

void sub_268AF5A60()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v29[3] = v0;
  v29[4] = v12;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v29);
  (*(*(v1 - 8) + 32))(boxed_opaque_existential_1, v11, v1);
  v14 = type metadata accessor for AnalyticsServiceImpl();
  v28[3] = v14;
  v28[4] = &off_2879539D0;
  v28[0] = v5;
  v15 = type metadata accessor for PauseMediaIntentHandler();
  v16 = objc_allocWithZone(v15);
  __swift_mutable_project_boxed_opaque_existential_1(v28, v14);
  OUTLINED_FUNCTION_3_8();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_1_0();
  v20 = (v19 - v18);
  (*(v21 + 16))(v19 - v18);
  v22 = *v20;
  v27[3] = v14;
  v27[4] = &off_2879539D0;
  v27[0] = v22;
  sub_26890C900(v29, &v16[OBJC_IVAR____TtC26SiriPlaybackControlIntents23PauseMediaIntentHandler_playbackController]);
  *&v16[OBJC_IVAR____TtC26SiriPlaybackControlIntents23PauseMediaIntentHandler_deviceSelector] = v9;
  sub_26890C900(v27, &v16[OBJC_IVAR____TtC26SiriPlaybackControlIntents23PauseMediaIntentHandler_analyticsService]);
  sub_26890C900(v7, &v16[OBJC_IVAR____TtC26SiriPlaybackControlIntents23PauseMediaIntentHandler_deviceState]);
  sub_26890C900(v7, v26);
  sub_26890C900(v3, v25);
  type metadata accessor for AceServiceHelper();
  v23 = swift_allocObject();
  sub_2688E6514(v26, v23 + 16);
  sub_2688E6514(v25, v23 + 56);
  *&v16[OBJC_IVAR____TtC26SiriPlaybackControlIntents23PauseMediaIntentHandler_aceServiceHelper] = v23;
  sub_26890C900(v3, &v16[OBJC_IVAR____TtC26SiriPlaybackControlIntents23PauseMediaIntentHandler_aceService]);
  v24.receiver = v16;
  v24.super_class = v15;
  objc_msgSendSuper2(&v24, sel_init);
  __swift_destroy_boxed_opaque_existential_0Tm(v3);
  __swift_destroy_boxed_opaque_existential_0Tm(v7);
  __swift_destroy_boxed_opaque_existential_0Tm(v29);
  __swift_destroy_boxed_opaque_existential_0Tm(v27);
  __swift_destroy_boxed_opaque_existential_0Tm(v28);
  OUTLINED_FUNCTION_23();
}

uint64_t sub_268AF5CA8()
{

  OUTLINED_FUNCTION_220();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_268AF5D54()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t OUTLINED_FUNCTION_15_26(__n128 *a1, __n128 a2)
{
  a1[1] = a2;

  return type metadata accessor for PauseMediaDevicesResolutionResult();
}

Swift::String_optional __swiftcall UsoTask_play_uso_NoEntity.verb()()
{
  v1 = 2036427888;
  if (UsoTask_play_uso_NoEntity.referencedSetting()(v0) && (sub_268962A68(), v3 = v2, v4 = v2, , v4 != 24))
  {
    v1 = sub_26893E3F8(v3);
  }

  else
  {
    v5 = 0xE400000000000000;
  }

  v6 = v1;
  result.value._object = v5;
  result.value._countAndFlagsBits = v6;
  return result;
}

uint64_t UsoTask_play_uso_NoEntity.referencedSetting()(uint64_t a1)
{
  result = sub_268B36304();
  if (result)
  {
    v2 = result;
    if (sub_2688EFD0C())
    {
      sub_2688EFD10();
      if ((v2 & 0xC000000000000001) != 0)
      {
        MEMORY[0x26D625BD0](0, v2);
      }

      else
      {
      }

      sub_268B35B44();

      return v3;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_268AF5F14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (UsoTask_play_uso_NoEntity.referencedSetting()(a1))
  {
    sub_268964750();
  }

  else
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6000, &unk_268B41120);

    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v4);
  }
}

uint64_t sub_268AF5F9C(uint64_t a1)
{
  if (!UsoTask_play_uso_NoEntity.referencedSetting()(a1))
  {
    return 0;
  }

  v1 = sub_268B35DA4();

  if (!v1)
  {
    return 0;
  }

  v2 = sub_268B35FD4();

  return v2;
}

uint64_t UsoTask_play_uso_NoEntity.shouldHandle(requestContext:)@<X0>(char *a1@<X8>)
{
  v85 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5CA8, &unk_268B3CE30);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v83 - v3;
  v84 = sub_268B37A54();
  v86 = *(v84 - 8);
  v5 = MEMORY[0x28223BE20](v84);
  v7 = v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v83 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v83 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = v83 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = (v83 - v18);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = v83 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = v83 - v23;
  v25 = sub_268ACD2FC();
  if (v25)
  {
    if (qword_2802A4F30 != -1)
    {
      v25 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
    }

    v26 = v84;
    OUTLINED_FUNCTION_1_55(v25, qword_2802CDA10);
    v27(v24);
    v28 = sub_268B37A34();
    v29 = sub_268B37F04();
    if (OUTLINED_FUNCTION_19(v29))
    {
      v30 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_81(v30);
      OUTLINED_FUNCTION_112_1(&dword_2688BB000, v31, v32, "UsoTask_play_uso_NoEntity#shouldHandle This is an addSpeaker request, handling in controls");
      OUTLINED_FUNCTION_83_0();
    }

    v33 = 0;
    goto LABEL_48;
  }

  v34 = UsoTask_play_uso_NoEntity.referencedSetting()(v25);
  if (v34)
  {
    v35 = v34;
    sub_2689633E8();
    if (v36)
    {
      v83[1] = v35;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5A18, &qword_268B3F270);
      inited = swift_initStackObject();
      inited[1] = xmmword_268B3BBD0;
      inited[2] = xmmword_268B3F0D0;
      inited[3] = xmmword_268B3F0E0;
      v38 = UsoTask_play_uso_NoEntity.verb()();
      v83[0] = v83;
      v87 = v38;
      MEMORY[0x28223BE20](v38.value._countAndFlagsBits);
      v83[-2] = &v87;
      v39 = sub_268ACD0C0();
      swift_setDeallocating();
      sub_268ACE6C0();

      if (v39)
      {
        v87.value._countAndFlagsBits = v1;
        sub_268B35E64();
        sub_268AF6E10(&qword_2802A8890, &protocol conformance descriptor for UsoTask_play_uso_NoEntity);
        sub_268B37364();
        v41 = sub_268B37924();
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v4, 1, v41);
        v43 = sub_268ACE800(v4);
        if (EnumTagSinglePayload == 1)
        {
          v45 = UsoTask_play_uso_NoEntity.verb()();
          countAndFlagsBits = v45.value._countAndFlagsBits;
          v26 = v84;
          if (!v45.value._object)
          {
LABEL_17:
            if (qword_2802A4F30 != -1)
            {
              countAndFlagsBits = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
            }

            OUTLINED_FUNCTION_1_55(countAndFlagsBits, qword_2802CDA10);
            v48(v16);
            v49 = sub_268B37A34();
            v50 = sub_268B37F04();
            if (OUTLINED_FUNCTION_19(v50))
            {
              v51 = OUTLINED_FUNCTION_14();
              OUTLINED_FUNCTION_81(v51);
              OUTLINED_FUNCTION_112_1(&dword_2688BB000, v52, v53, "UsoTask_play_uso_NoEntity#shouldHandle Verb is shuffle/repeat without a reference and contains referencedMediaItem, rejecting");
              OUTLINED_FUNCTION_83_0();
            }

            v33 = 3;
            v24 = v16;
            goto LABEL_48;
          }

          if (v45.value._countAndFlagsBits == 0x746165706572 && v45.value._object == 0xE600000000000000)
          {
          }

          else
          {
            v47 = sub_268B38444();

            if ((v47 & 1) == 0)
            {
              goto LABEL_17;
            }
          }

          if (qword_2802A4F30 != -1)
          {
            OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
          }

          v76 = __swift_project_value_buffer(v26, qword_2802CDA10);
          v86[2](v19, v76, v26);
          v77 = sub_268B37A34();
          v78 = sub_268B37F04();
          if (OUTLINED_FUNCTION_19(v78))
          {
            v79 = OUTLINED_FUNCTION_14();
            OUTLINED_FUNCTION_81(v79);
            OUTLINED_FUNCTION_112_1(&dword_2688BB000, v80, v81, "UsoTask_play_uso_NoEntity#shouldHandle Verb is repeat without a referencedMediaItem, handling in controls");
            OUTLINED_FUNCTION_83_0();
          }

          v33 = 0;
          v24 = v19;
          v19 = v86;
        }

        else
        {
          if (qword_2802A4F30 != -1)
          {
            v43 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
          }

          v26 = v84;
          OUTLINED_FUNCTION_1_55(v43, qword_2802CDA10);
          v70(v22);
          v71 = sub_268B37A34();
          v72 = sub_268B37F04();
          if (OUTLINED_FUNCTION_19(v72))
          {
            v73 = OUTLINED_FUNCTION_14();
            OUTLINED_FUNCTION_81(v73);
            OUTLINED_FUNCTION_112_1(&dword_2688BB000, v74, v75, "UsoTask_play_uso_NoEntity#shouldHandle Verb is shuffle/repeat with a reference, handling in controls");
            OUTLINED_FUNCTION_83_0();
          }

          v33 = 0;
          v24 = v22;
        }
      }

      else
      {
        if (qword_2802A4F30 != -1)
        {
          v40 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
        }

        v26 = v84;
        OUTLINED_FUNCTION_1_55(v40, qword_2802CDA10);
        v64(v13);
        v65 = sub_268B37A34();
        v66 = sub_268B37F04();
        if (OUTLINED_FUNCTION_19(v66))
        {
          v67 = OUTLINED_FUNCTION_14();
          OUTLINED_FUNCTION_81(v67);
          OUTLINED_FUNCTION_112_1(&dword_2688BB000, v68, v69, "UsoTask_play_uso_NoEntity#shouldHandle Task is mediaPlayer. Handling in controls");
          OUTLINED_FUNCTION_83_0();
        }

        v33 = 0;
        v24 = v13;
      }
    }

    else
    {
      if (qword_2802A4F30 != -1)
      {
        v36 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
      }

      v26 = v84;
      OUTLINED_FUNCTION_1_55(v36, qword_2802CDA10);
      v60(v10);
      v61 = sub_268B37A34();
      v62 = sub_268B37EE4();
      if (OUTLINED_FUNCTION_19(v62))
      {
        v63 = OUTLINED_FUNCTION_14();
        *v63 = 0;
        _os_log_impl(&dword_2688BB000, v61, v10, "UsoTask_play_uso_NoEntity#shouldHandle Task is not mediaPlayer: Not handling in controls", v63, 2u);
        MEMORY[0x26D6266E0](v63, -1, -1);
      }

      v33 = 3;
      v24 = v10;
    }
  }

  else
  {
    if (qword_2802A4F30 != -1)
    {
      v34 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
    }

    v26 = v84;
    OUTLINED_FUNCTION_1_55(v34, qword_2802CDA10);
    v54(v7);
    v55 = sub_268B37A34();
    v56 = sub_268B37EE4();
    if (OUTLINED_FUNCTION_19(v56))
    {
      v57 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_81(v57);
      OUTLINED_FUNCTION_112_1(&dword_2688BB000, v58, v59, "UsoTask_play_uso_NoEntity#shouldHandle no referenced setting found in task. Not handling in Controls");
      OUTLINED_FUNCTION_83_0();
    }

    v33 = 3;
    v24 = v7;
  }

LABEL_48:
  result = v19[1](v24, v26);
  *v85 = v33;
  return result;
}

uint64_t sub_268AF68D0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4498](a1, WitnessTable);
}

uint64_t sub_268AF6924(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4478](a1, WitnessTable);
}

uint64_t sub_268AF6978(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A0](a1, WitnessTable);
}

uint64_t sub_268AF69CC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D0](a1, WitnessTable);
}

uint64_t sub_268AF6A20(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C0](a1, WitnessTable);
}

uint64_t sub_268AF6A74(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C8](a1, WitnessTable);
}

uint64_t sub_268AF6AC8(uint64_t a1)
{
  swift_getWitnessTable();

  return sub_268B373B4();
}

uint64_t sub_268AF6B1C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D8](a1, WitnessTable);
}

void sub_268AF6B80(uint64_t a1)
{
  swift_getWitnessTable();

  JUMPOUT(0x26D624DF0);
}

uint64_t sub_268AF6BD4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A8](a1, WitnessTable);
}

uint64_t sub_268AF6C38(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4488](a1, WitnessTable);
}

uint64_t sub_268AF6C9C(uint64_t a1)
{
  swift_getWitnessTable();

  return sub_268B37364();
}

uint64_t sub_268AF6D00(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44B0](a1, WitnessTable);
}

uint64_t sub_268AF6D64(uint64_t a1)
{
  result = sub_268AF6E10(&qword_2802A8890, &protocol conformance descriptor for UsoTask_play_uso_NoEntity);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_268AF6E10(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_268B35E64();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_268AF706C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_268B37A54();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v2, qword_2802CDA10);
  (*(v3 + 16))(v5, v6, v2);
  v7 = sub_268B37A34();
  v8 = sub_268B37F04();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_2688BB000, v7, v8, "RCHChildFlowProducers.addSpeakerFlowProducers() called", v9, 2u);
    MEMORY[0x26D6266E0](v9, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  type metadata accessor for AddSpeakerIntent();
  type metadata accessor for AddSpeakerIntentResponse();
  sub_268B34A24();
  sub_268B368F4();
  swift_allocObject();
  v61 = sub_268B368C4();
  sub_268B354A4();
  sub_268AF8FAC();
  v53 = sub_268B36F44();
  v79 = v53;
  v80 = MEMORY[0x277D5F6F8];
  __swift_allocate_boxed_opaque_existential_1(&v78);
  sub_268B36F34();
  sub_268AF90C4();
  sub_268AF7A24();
  v10 = __swift_mutable_project_boxed_opaque_existential_1(&v75, v76);
  v59 = v52;
  MEMORY[0x28223BE20](v10);
  v12 = (v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v13 + 16))(v12);
  v14 = *v12;
  v15 = type metadata accessor for AnalyticsServiceImpl();
  v71 = v15;
  v72 = &off_2879539D0;
  *&v70 = v14;
  type metadata accessor for AddSpeakerUnsupportedValueStrategy(0);
  v16 = swift_allocObject();
  v17 = __swift_mutable_project_boxed_opaque_existential_1(&v70, v15);
  v56 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v57 = ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = (v52 - v57);
  v21 = *(v20 + 16);
  v54 = v20 + 16;
  v55 = v21;
  v21(v52 - v57);
  v22 = *v19;
  v16[16] = v15;
  v16[17] = &off_2879539D0;
  v16[13] = v22;
  sub_2688E6514(v82, (v16 + 2));
  v58 = type metadata accessor for DialogProvider();
  v23 = swift_allocObject();
  sub_2688E6514(v81, v23 + 16);
  v16[7] = v23;
  sub_2688E6514(&v78, (v16 + 8));
  sub_2688E6514(&v73, (v16 + 18));
  __swift_destroy_boxed_opaque_existential_0Tm(&v70);
  __swift_destroy_boxed_opaque_existential_0Tm(&v75);
  *&v82[0] = v16;
  sub_268B098E0(&qword_2802A8A28, type metadata accessor for AddSpeakerUnsupportedValueStrategy, &unk_268B43468);
  sub_268B34994();

  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A8A08, &qword_268B50AB8);
  v60 = a1;
  sub_268B349F4();
  sub_268B34954();
  sub_268B349D4();
  sub_268B354A4();
  sub_268AF8FAC();
  v79 = v53;
  v80 = MEMORY[0x277D5F6F8];
  __swift_allocate_boxed_opaque_existential_1(&v78);
  sub_268B36F34();
  v24 = sub_268B36C54();
  v25 = sub_268B36C44();
  v76 = v24;
  v77 = MEMORY[0x277D5F680];
  *&v75 = v25;
  sub_268AF90C4();
  v26 = type metadata accessor for DisplayContextProvider();
  v27 = swift_allocObject();
  v28 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v29 = sub_26892CB58(0xD00000000000001FLL, 0x8000000268B575F0);
  sub_268AF7A24();
  sub_268B34C64();
  v30 = __swift_mutable_project_boxed_opaque_existential_1(&v73, v74);
  v53 = v52;
  MEMORY[0x28223BE20](v30);
  v32 = (v52 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v33 + 16))(v32);
  v34 = *v32;
  v68[3] = v15;
  v68[4] = &off_2879539D0;
  v68[0] = v34;
  v67 = &off_287953E00;
  v66 = v26;
  v65[0] = v27;
  v63 = &type metadata for UserDefaultsProviderImpl;
  v64 = &off_287952DF0;
  v62[0] = v29;
  type metadata accessor for AddSpeakerHandleIntentStrategy();
  v35 = swift_allocObject();
  v36 = __swift_mutable_project_boxed_opaque_existential_1(v68, v15);
  v52[1] = v52;
  MEMORY[0x28223BE20](v36);
  v37 = (v52 - v57);
  v55(v52 - v57);
  v38 = __swift_mutable_project_boxed_opaque_existential_1(v65, v66);
  v57 = v52;
  MEMORY[0x28223BE20](v38);
  v40 = (v52 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v41 + 16))(v40);
  v42 = __swift_mutable_project_boxed_opaque_existential_1(v62, v63);
  MEMORY[0x28223BE20](v42);
  v44 = (v52 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v45 + 16))(v44);
  v46 = *v37;
  v47 = *v40;
  v48 = *v44;
  v35[21] = v15;
  v35[22] = &off_2879539D0;
  v35[18] = v46;
  v35[26] = v26;
  v35[27] = &off_287953E00;
  v35[23] = v47;
  v35[31] = &type metadata for UserDefaultsProviderImpl;
  v35[32] = &off_287952DF0;
  v35[28] = v48;
  sub_26890C900(v82, (v35 + 3));
  v49 = swift_allocObject();
  sub_2688E6514(v81, v49 + 16);
  v35[2] = v49;
  sub_2688E6514(&v78, (v35 + 8));
  sub_2688E6514(&v75, (v35 + 13));
  sub_2688E6514(&v70, (v35 + 33));
  type metadata accessor for AceServiceHelper();
  v50 = swift_allocObject();
  sub_2688E6514(v82, v50 + 16);
  sub_2688E6514(&v69, v50 + 56);
  v35[38] = v50;
  __swift_destroy_boxed_opaque_existential_0Tm(v62);
  __swift_destroy_boxed_opaque_existential_0Tm(v65);
  __swift_destroy_boxed_opaque_existential_0Tm(v68);
  __swift_destroy_boxed_opaque_existential_0Tm(&v73);
  *&v82[0] = v35;
  sub_268B098E0(&qword_2802A8A30, type metadata accessor for AddSpeakerHandleIntentStrategy, &unk_268B417F4);
  sub_268B34944();

  sub_268B349C4();
}

void sub_268AF7A24()
{
  OUTLINED_FUNCTION_26();
  v2 = OUTLINED_FUNCTION_92_8();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_254();
  sub_268B354A4();
  sub_268B36F34();
  sub_268AFA1F8();
  __swift_mutable_project_boxed_opaque_existential_1(v22, v22[3]);
  OUTLINED_FUNCTION_3_8();
  MEMORY[0x28223BE20](v4);
  v6 = OUTLINED_FUNCTION_4_44(v5, v20[0]);
  v7(v6);
  v8 = *v0;
  v21[3] = v2;
  v21[4] = MEMORY[0x277D5F6F8];
  __swift_allocate_boxed_opaque_existential_1(v21);
  OUTLINED_FUNCTION_81_5();
  v9();
  v10 = type metadata accessor for AnalyticsServiceImpl();
  v20[3] = v10;
  v20[4] = &off_2879539D0;
  v20[0] = v8;
  type metadata accessor for SiriPlaybackControlsOutputProvider();
  v11 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v20, v10);
  OUTLINED_FUNCTION_74_8();
  OUTLINED_FUNCTION_3_8();
  MEMORY[0x28223BE20](v12);
  v14 = OUTLINED_FUNCTION_11_34(v13, v20[0]);
  v15(v14);
  v16 = *v1;
  v11[15] = v10;
  v11[16] = &off_2879539D0;
  v11[12] = v16;
  v17 = OUTLINED_FUNCTION_42_13(&v23, (v11 + 7));
  v18 = OUTLINED_FUNCTION_95_7(v17);
  v19(v18);
  __swift_destroy_boxed_opaque_existential_0Tm(v22);
  OUTLINED_FUNCTION_71_7(&off_28795B170);
  OUTLINED_FUNCTION_23();
}

uint64_t sub_268AF7C58@<X0>(uint64_t a1@<X8>)
{
  v62 = sub_268B36F44();
  v60 = *(v62 - 1);
  v2 = MEMORY[0x28223BE20](v62);
  v58 = v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v59 = v54 - v4;
  v5 = sub_268B37A54();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v5, qword_2802CDA10);
  (*(v6 + 16))(v8, v9, v5);
  v10 = sub_268B37A34();
  v11 = sub_268B37F04();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_2688BB000, v10, v11, "RCHChildFlowProducers.setSubtitleStateFlowProducers() called", v12, 2u);
    MEMORY[0x26D6266E0](v12, -1, -1);
  }

  (*(v6 + 8))(v8, v5);
  type metadata accessor for SetSubtitleStateIntent();
  type metadata accessor for SetSubtitleStateIntentResponse();
  sub_268B34A24();
  sub_268B368F4();
  swift_allocObject();
  v61 = sub_268B368C4();
  sub_268B354A4();
  sub_268AF8FAC();
  sub_268AF90C4();
  sub_268AF7A24();
  v13 = __swift_mutable_project_boxed_opaque_existential_1(v76, v77);
  v64 = v54;
  MEMORY[0x28223BE20](v13);
  v15 = (v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15);
  v17 = *v15;
  v18 = type metadata accessor for AnalyticsServiceImpl();
  v71 = v18;
  v72 = &off_2879539D0;
  *&v70 = v17;
  v63 = type metadata accessor for SetSubtitleStateConfirmIntentStrategy();
  v19 = swift_allocObject();
  v20 = __swift_mutable_project_boxed_opaque_existential_1(&v70, v18);
  v56 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v57 = (v21 + 15) & 0xFFFFFFFFFFFFFFF0;
  v22 = (v54 - v57);
  v24 = *(v23 + 16);
  v54[2] = v23 + 16;
  v55 = v24;
  v24(v54 - v57);
  v25 = *v22;
  v19[11] = v18;
  v19[12] = &off_2879539D0;
  v19[8] = v25;
  sub_2688E6514(v79, (v19 + 2));
  sub_26890C900(v78, v69);
  type metadata accessor for DialogProvider();
  v26 = swift_allocObject();
  sub_2688E6514(v69, v26 + 16);
  v19[7] = v26;
  sub_2688E6514(v78, (v19 + 18));
  sub_2688E6514(&v73, (v19 + 13));
  __swift_destroy_boxed_opaque_existential_0Tm(&v70);
  __swift_destroy_boxed_opaque_existential_0Tm(v76);
  sub_268B34954();
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A8AA0, &qword_268B50B08);
  v54[1] = a1;
  sub_268B349D4();
  sub_268B354A4();
  sub_268AF8FAC();
  v27 = v59;
  sub_268B36F34();
  sub_268AF90C4();
  sub_268AF7A24();
  v28 = __swift_mutable_project_boxed_opaque_existential_1(v76, v77);
  MEMORY[0x28223BE20](v28);
  (*(v30 + 16))(v54 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = v60;
  v32 = v62;
  (*(v60 + 16))(v58, v27, v62);
  sub_268B09618();
  v34 = v33;
  (*(v31 + 8))(v27, v32);
  __swift_destroy_boxed_opaque_existential_0Tm(v76);
  *&v79[0] = v34;
  type metadata accessor for SetSubtitleStateUnsupportedValueStrategy(0);
  sub_268B098E0(&qword_2802A8AC0, type metadata accessor for SetSubtitleStateUnsupportedValueStrategy, &unk_268B43468);
  sub_268B34994();

  sub_268B349F4();
  sub_268B354A4();
  sub_268AF8FAC();
  sub_268AF90C4();
  v35 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v36 = sub_26892CB58(0xD00000000000001FLL, 0x8000000268B575F0);
  v74 = v32;
  v75 = MEMORY[0x277D5F6F8];
  __swift_allocate_boxed_opaque_existential_1(&v73);
  sub_268B36F34();
  v37 = sub_268B36C54();
  v38 = sub_268B36C44();
  v71 = v37;
  v72 = MEMORY[0x277D5F680];
  *&v70 = v38;
  sub_268AF7A24();
  v39 = __swift_mutable_project_boxed_opaque_existential_1(v76, v77);
  v62 = v54;
  MEMORY[0x28223BE20](v39);
  v41 = (v54 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v42 + 16))(v41);
  v43 = *v41;
  v68[4] = &off_2879539D0;
  v68[3] = v18;
  v68[0] = v43;
  v66 = &type metadata for UserDefaultsProviderImpl;
  v67 = &off_287952DF0;
  v65[0] = v36;
  type metadata accessor for SetSubtitleStateHandleIntentStrategy();
  v44 = swift_allocObject();
  v45 = __swift_mutable_project_boxed_opaque_existential_1(v68, v18);
  MEMORY[0x28223BE20](v45);
  v46 = (v54 - v57);
  v55(v54 - v57);
  v47 = __swift_mutable_project_boxed_opaque_existential_1(v65, v66);
  MEMORY[0x28223BE20](v47);
  v49 = (v54 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v50 + 16))(v49);
  v51 = *v46;
  v52 = *v49;
  v44[15] = v18;
  v44[16] = &off_2879539D0;
  v44[12] = v51;
  v44[20] = &type metadata for UserDefaultsProviderImpl;
  v44[21] = &off_287952DF0;
  v44[17] = v52;
  sub_2688E6514(v79, (v44 + 2));
  sub_2688E6514(v78, (v44 + 7));
  sub_2688E6514(&v73, (v44 + 22));
  sub_2688E6514(&v70, (v44 + 27));
  sub_2688E6514(v69, (v44 + 32));
  __swift_destroy_boxed_opaque_existential_0Tm(v65);
  __swift_destroy_boxed_opaque_existential_0Tm(v68);
  __swift_destroy_boxed_opaque_existential_0Tm(v76);
  *&v79[0] = v44;
  sub_268B098E0(&qword_2802A8AC8, type metadata accessor for SetSubtitleStateHandleIntentStrategy, &unk_268B47B2C);
  sub_268B34944();

  sub_268B349C4();
  sub_268B34A14();
  *&v79[0] = v19;
  sub_268B098E0(&qword_2802A7AB8, type metadata accessor for SetSubtitleStateConfirmIntentStrategy, &unk_268B48E58);

  sub_268B34984();

  sub_268B349E4();
}

uint64_t sub_268AF8774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v64 = a3;
  v65 = a4;
  v62 = a1;
  v63 = a2;
  v13 = sub_268B36F44();
  v60 = *(v13 - 8);
  v61 = v13;
  MEMORY[0x28223BE20](v13);
  v59 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_268B37A54();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v19 = __swift_project_value_buffer(v15, qword_2802CDA10);
  (*(v16 + 16))(v18, v19, v15);
  v20 = sub_268B37A34();
  v21 = sub_268B37ED4();
  v22 = os_log_type_enabled(v20, v21);
  v67 = a5;
  if (v22)
  {
    v23 = a6;
    v24 = a7;
    v25 = a8;
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_2688BB000, v20, v21, "getDisambiguationStrategy() for SetSubtitleState called", v26, 2u);
    v27 = v26;
    a8 = v25;
    a7 = v24;
    a6 = v23;
    a5 = v67;
    MEMORY[0x26D6266E0](v27, -1, -1);
  }

  (*(v16 + 8))(v18, v15);
  v28 = a5 == 0x656369766564 && a6 == 0xE600000000000000;
  v66 = a6;
  if (v28 || (sub_268B38444() & 1) != 0)
  {
    sub_268B354A4();
    sub_268AF8FAC();
    v76 = v61;
    v77 = MEMORY[0x277D5F6F8];
    __swift_allocate_boxed_opaque_existential_1(&v75);
    sub_268B36F34();
    v73 = sub_268B374D4();
    v74 = MEMORY[0x277D5F8B0];
    __swift_allocate_boxed_opaque_existential_1(&v72);
    sub_268B374C4();
    sub_268AF90C4();
    sub_268AF7A24();
    v29 = __swift_mutable_project_boxed_opaque_existential_1(v71, v71[3]);
    MEMORY[0x28223BE20](v29);
    v31 = (&v59 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v32 + 16))(v31);
    v33 = *v31;
    v34 = type metadata accessor for AnalyticsServiceImpl();
    v69[3] = v34;
    v69[4] = &off_2879539D0;
    v69[0] = v33;
    type metadata accessor for SetSubtitleStateDeviceDisambiguationStrategy();
    v35 = swift_allocObject();
    v36 = __swift_mutable_project_boxed_opaque_existential_1(v69, v34);
    MEMORY[0x28223BE20](v36);
    v38 = (&v59 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v39 + 16))(v38);
    v40 = *v38;
    v35[21] = v34;
    v35[22] = &off_2879539D0;
    v35[18] = v40;
    sub_2688E6514(v79, (v35 + 2));
    sub_26890C900(v78, v68);
    type metadata accessor for DialogProvider();
    v41 = swift_allocObject();
    sub_2688E6514(v68, v41 + 16);
    v35[7] = v41;
    sub_2688E6514(&v75, (v35 + 8));
    sub_2688E6514(&v72, (v35 + 13));
    sub_2688E6514(v78, (v35 + 28));
    sub_2688E6514(&v70, (v35 + 23));
    __swift_destroy_boxed_opaque_existential_0Tm(v69);
    __swift_destroy_boxed_opaque_existential_0Tm(v71);
    *&v79[0] = v35;
    sub_268B098E0(&qword_2802A7A18, type metadata accessor for SetSubtitleStateDeviceDisambiguationStrategy, &unk_268B48920);
    v42 = sub_268B34974();
    v44 = v43;

LABEL_17:
    v57 = swift_allocObject();
    *(v57 + 16) = v42;
    *(v57 + 24) = v44;

    j__OUTLINED_FUNCTION_27_14(v62, v63, v64, v65, v67, v66, a7, a8, a9);
  }

  v45 = a5 == 0x65676175676E616CLL && a6 == 0xE800000000000000;
  if (v45 || (sub_268B38444() & 1) != 0)
  {
    sub_268B354A4();
    sub_268AF8FAC();
    sub_268AF90C4();
    sub_268AF7A24();
    v46 = v59;
    sub_268B36F34();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A8AD0, &qword_268B50B20);
    v47 = swift_allocObject();
    v48 = __swift_mutable_project_boxed_opaque_existential_1(&v75, v76);
    MEMORY[0x28223BE20](v48);
    v50 = (&v59 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v51 + 16))(v50);
    v52 = *v50;
    v47[20] = type metadata accessor for AnalyticsServiceImpl();
    v47[21] = &off_2879539D0;
    v47[17] = v52;
    v53 = MEMORY[0x277D5F6F8];
    v54 = v61;
    v47[30] = v61;
    v47[31] = v53;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v47 + 27);
    (*(v60 + 32))(boxed_opaque_existential_1, v46, v54);
    sub_2688E6514(v79, (v47 + 2));
    sub_26890C900(v78, (v47 + 7));
    sub_2688E6514(v78, (v47 + 12));
    sub_2688E6514(&v72, (v47 + 22));
    __swift_destroy_boxed_opaque_existential_0Tm(&v75);
    *&v79[0] = v47;
    sub_2688F4354(&qword_2802A8AD8, &qword_2802A8AD0, &qword_268B50B20, &unk_268B3EFE0);
    v42 = sub_268B34974();
    v44 = v56;

    goto LABEL_17;
  }

  result = sub_268B38284();
  __break(1u);
  return result;
}

void sub_268AF8FAC()
{
  OUTLINED_FUNCTION_26();
  v0 = OUTLINED_FUNCTION_92_8();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_254();
  OUTLINED_FUNCTION_46_12();
  OUTLINED_FUNCTION_46_12();
  sub_268B36F34();
  type metadata accessor for BaseDialogProvider();
  swift_allocObject();
  v3[3] = v0;
  v3[4] = MEMORY[0x277D5F6F8];
  __swift_allocate_boxed_opaque_existential_1(v3);
  OUTLINED_FUNCTION_81_5();
  v2();
  OUTLINED_FUNCTION_79_9();
  OUTLINED_FUNCTION_52_12(&off_2879561B0);
  OUTLINED_FUNCTION_23();
}

void sub_268AF90C4()
{
  OUTLINED_FUNCTION_26();
  sub_2689209D0(v25);
  sub_268AD33CC(v24);
  sub_268B36754();
  v1 = sub_268B36734();
  v2 = OUTLINED_FUNCTION_78_10(v1);
  v3 = sub_268B36C44();
  type metadata accessor for MultiUserConnectionProvider();
  swift_allocObject();
  v4 = objc_allocWithZone(MEMORY[0x277CEF318]);

  OUTLINED_FUNCTION_87_7([v4 init]);
  OUTLINED_FUNCTION_3_8();
  MEMORY[0x28223BE20](v5);
  v7 = OUTLINED_FUNCTION_12_28(v6, v21);
  v8(v7);
  v9 = *v0;
  v23[8] = v2;
  v23[9] = MEMORY[0x277D5F680];
  v23[5] = v3;
  v10 = type metadata accessor for AnalyticsServiceLogger();
  v23[3] = v10;
  v23[4] = &off_28795F5E0;
  v23[0] = v9;
  OUTLINED_FUNCTION_72_6();
  v11 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v23, v10);
  OUTLINED_FUNCTION_3_8();
  MEMORY[0x28223BE20](v12);
  v14 = OUTLINED_FUNCTION_12_28(v13, v22);
  v15(v14);
  OUTLINED_FUNCTION_85_8();
  OUTLINED_FUNCTION_3_8();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_1_0();
  v18 = OUTLINED_FUNCTION_73_8(v17);
  v19(v18);
  v20 = *v0;
  *(v11 + 40) = v10;
  OUTLINED_FUNCTION_49_9(v20);
  __swift_destroy_boxed_opaque_existential_0Tm(v25);
  OUTLINED_FUNCTION_52_12(&off_2879539D0);
  OUTLINED_FUNCTION_23();
}

uint64_t sub_268AF9338@<X0>(uint64_t a1@<X8>)
{
  v86 = sub_268B36F44();
  v77 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v76 = v75 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_268B37A54();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v3, qword_2802CDA10);
  (*(v4 + 16))(v6, v7, v3);
  v8 = sub_268B37A34();
  v9 = sub_268B37F04();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_2688BB000, v8, v9, "RCHChildFlowProducers.pauseMediaFlowProducers() called", v10, 2u);
    MEMORY[0x26D6266E0](v10, -1, -1);
  }

  (*(v4 + 8))(v6, v3);
  type metadata accessor for PauseMediaIntent();
  type metadata accessor for PauseMediaIntentResponse();
  sub_268B34A24();
  sub_268B368F4();
  swift_allocObject();
  v75[5] = sub_268B368C4();
  sub_268B354A4();
  sub_268AF8FAC();
  sub_268AF90C4();
  sub_268AF7A24();
  v11 = __swift_mutable_project_boxed_opaque_existential_1(&v104, v105);
  v85 = v75;
  MEMORY[0x28223BE20](v11);
  v13 = (v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13);
  v15 = *v13;
  v16 = type metadata accessor for AnalyticsServiceImpl();
  v79 = a1;
  v17 = v16;
  v99 = v16;
  v100 = &off_2879539D0;
  *&v98 = v15;
  v75[4] = type metadata accessor for PauseMediaConfirmIntentStrategy();
  v18 = swift_allocObject();
  v19 = __swift_mutable_project_boxed_opaque_existential_1(&v98, v17);
  v82 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v83 = (v20 + 15) & 0xFFFFFFFFFFFFFFF0;
  v21 = (v75 - v83);
  v23 = *(v22 + 16);
  v80 = v22 + 16;
  v81 = v23;
  v23(v75 - v83);
  v24 = *v21;
  v18[11] = v17;
  v18[12] = &off_2879539D0;
  v18[8] = v24;
  sub_2688E6514(v108, (v18 + 2));
  v78 = type metadata accessor for DialogProvider();
  v25 = swift_allocObject();
  sub_2688E6514(v107, v25 + 16);
  v84 = v18;
  v18[7] = v25;
  sub_2688E6514(&v101, (v18 + 13));
  __swift_destroy_boxed_opaque_existential_0Tm(&v98);
  __swift_destroy_boxed_opaque_existential_0Tm(&v104);
  sub_268B34954();
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A8998, &qword_268B50A78);
  sub_268B349D4();
  sub_268B354A4();
  sub_268AF8FAC();
  v26 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v27 = sub_26892CB58(0xD00000000000001FLL, 0x8000000268B575F0);
  sub_268AF90C4();
  v102 = v86;
  v103 = MEMORY[0x277D5F6F8];
  __swift_allocate_boxed_opaque_existential_1(&v101);
  sub_268B36F34();
  v28 = sub_268B36C54();
  v29 = sub_268B36C44();
  v99 = v28;
  v100 = MEMORY[0x277D5F680];
  *&v98 = v29;
  v30 = type metadata accessor for DisplayContextProvider();
  v31 = swift_allocObject();
  sub_268AF7A24();
  sub_268B34C64();
  v32 = __swift_mutable_project_boxed_opaque_existential_1(&v104, v105);
  v75[3] = v75;
  MEMORY[0x28223BE20](v32);
  v34 = (v75 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v35 + 16))(v34);
  v36 = *v34;
  v91[3] = &type metadata for UserDefaultsProviderImpl;
  v91[4] = &off_287952DF0;
  v91[0] = v27;
  v90[3] = v17;
  v90[4] = &off_2879539D0;
  v90[0] = v36;
  v88 = v30;
  v89 = &off_287953E00;
  v87[0] = v31;
  v75[2] = type metadata accessor for PauseMediaHandleIntentStrategy();
  v37 = swift_allocObject();
  v38 = __swift_mutable_project_boxed_opaque_existential_1(v91, &type metadata for UserDefaultsProviderImpl);
  v75[1] = v75;
  MEMORY[0x28223BE20](v38);
  v40 = (v75 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v41 + 16))(v40);
  v42 = __swift_mutable_project_boxed_opaque_existential_1(v90, v17);
  v75[0] = v75;
  MEMORY[0x28223BE20](v42);
  v43 = (v75 - v83);
  v81(v75 - v83);
  v44 = __swift_mutable_project_boxed_opaque_existential_1(v87, v88);
  MEMORY[0x28223BE20](v44);
  v46 = (v75 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v47 + 16))(v46);
  v48 = *v40;
  v49 = *v43;
  v50 = *v46;
  v37[11] = &type metadata for UserDefaultsProviderImpl;
  v37[12] = &off_287952DF0;
  v37[8] = v48;
  v37[16] = v17;
  v37[17] = &off_2879539D0;
  v37[13] = v49;
  v37[31] = v30;
  v37[32] = &off_287953E00;
  v37[28] = v50;
  sub_26890C900(v108, (v37 + 2));
  v51 = swift_allocObject();
  sub_2688E6514(v107, v51 + 16);
  v37[7] = v51;
  sub_2688E6514(&v101, (v37 + 18));
  sub_2688E6514(&v98, (v37 + 23));
  sub_2688E6514(&v95, (v37 + 33));
  type metadata accessor for AceServiceHelper();
  v52 = swift_allocObject();
  sub_2688E6514(v108, v52 + 16);
  sub_2688E6514(&v92, v52 + 56);
  v37[38] = v52;
  __swift_destroy_boxed_opaque_existential_0Tm(v87);
  __swift_destroy_boxed_opaque_existential_0Tm(v90);
  __swift_destroy_boxed_opaque_existential_0Tm(v91);
  __swift_destroy_boxed_opaque_existential_0Tm(&v104);
  *&v108[0] = v37;
  sub_268B098E0(&qword_2802A89B8, type metadata accessor for PauseMediaHandleIntentStrategy, &unk_268B3CD74);
  sub_268B34944();

  sub_268B349C4();
  sub_268B354A4();
  sub_268AF8FAC();
  v105 = v86;
  v106 = MEMORY[0x277D5F6F8];
  __swift_allocate_boxed_opaque_existential_1(&v104);
  sub_268B36F34();
  v102 = sub_268B374D4();
  v103 = MEMORY[0x277D5F8B0];
  __swift_allocate_boxed_opaque_existential_1(&v101);
  sub_268B374C4();
  sub_268AF90C4();
  sub_268AF7A24();
  v53 = __swift_mutable_project_boxed_opaque_existential_1(&v98, v99);
  MEMORY[0x28223BE20](v53);
  v55 = (v75 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v56 + 16))(v55);
  v57 = *v55;
  v93 = v17;
  v94 = &off_2879539D0;
  *&v92 = v57;
  type metadata accessor for PauseMediaDeviceDisambiguationStrategy();
  v58 = swift_allocObject();
  v59 = __swift_mutable_project_boxed_opaque_existential_1(&v92, v17);
  MEMORY[0x28223BE20](v59);
  v60 = (v75 - v83);
  v81(v75 - v83);
  v61 = *v60;
  v58[21] = v17;
  v58[22] = &off_2879539D0;
  v58[18] = v61;
  sub_2688E6514(v108, (v58 + 2));
  v62 = swift_allocObject();
  sub_2688E6514(v107, v62 + 16);
  v58[7] = v62;
  sub_2688E6514(&v104, (v58 + 8));
  sub_2688E6514(&v101, (v58 + 13));
  sub_2688E6514(&v95, (v58 + 23));
  __swift_destroy_boxed_opaque_existential_0Tm(&v92);
  __swift_destroy_boxed_opaque_existential_0Tm(&v98);
  *&v108[0] = v58;
  sub_268B098E0(&qword_2802A5D38, type metadata accessor for PauseMediaDeviceDisambiguationStrategy, &unk_268B3D508);
  sub_268B34974();

  sub_268B34A14();
  *&v108[0] = v84;
  sub_268B098E0(&qword_2802A79F0, type metadata accessor for PauseMediaConfirmIntentStrategy, &unk_268B48640);

  sub_268B34984();

  sub_268B349E4();
  sub_268B354A4();
  sub_268AF8FAC();
  v63 = v76;
  sub_268B36F34();
  sub_268AF90C4();
  sub_268AF7A24();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A89C0, &qword_268B50A90);
  v64 = swift_allocObject();
  v65 = __swift_mutable_project_boxed_opaque_existential_1(&v104, v105);
  MEMORY[0x28223BE20](v65);
  v67 = (v75 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v68 + 16))(v67);
  v69 = *v67;
  v70 = v86;
  v99 = v86;
  v100 = MEMORY[0x277D5F6F8];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v98);
  v72 = v77;
  (*(v77 + 16))(boxed_opaque_existential_1, v63, v70);
  v96 = v17;
  v97 = &off_2879539D0;
  *&v95 = v69;
  (*(v72 + 8))(v63, v70);
  sub_2688E6514(v108, v64 + 16);
  v73 = swift_allocObject();
  sub_2688E6514(v107, v73 + 16);
  *(v64 + 56) = v73;
  sub_2688E6514(&v98, v64 + 64);
  sub_2688E6514(&v95, v64 + 104);
  sub_2688E6514(&v101, v64 + 144);
  __swift_destroy_boxed_opaque_existential_0Tm(&v104);
  *&v108[0] = v64;
  sub_2688F4354(&qword_2802A89C8, &qword_2802A89C0, &qword_268B50A90, &unk_268B43468);
  sub_268B34994();

  sub_268B349F4();
}

void sub_268AFA1F8()
{
  OUTLINED_FUNCTION_26();
  sub_2689209D0(v33);
  sub_268AD33CC(v32);
  sub_268B36754();
  v2 = sub_268B36734();
  v3 = OUTLINED_FUNCTION_78_10(v2);
  v4 = sub_268B36C44();
  v5 = type metadata accessor for MultiUserConnectionProvider();
  v6 = swift_allocObject();
  v6[2] = [objc_allocWithZone(MEMORY[0x277CEF318]) init];
  __swift_mutable_project_boxed_opaque_existential_1(v33, v33[3]);
  OUTLINED_FUNCTION_74_8();
  OUTLINED_FUNCTION_3_8();
  MEMORY[0x28223BE20](v7);
  v9 = OUTLINED_FUNCTION_12_28(v8, v24);
  v10(v9);
  v11 = *v0;
  v30 = v3;
  v31 = MEMORY[0x277D5F680];
  *&v29 = v4;
  v12 = type metadata accessor for AnalyticsServiceLogger();
  v28[3] = v12;
  v28[4] = &off_28795F5E0;
  v28[0] = v11;
  v27[4] = &off_287960608;
  v27[3] = v5;
  v27[0] = v6;
  type metadata accessor for AnalyticsServiceImpl();
  v13 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v28, v12);
  OUTLINED_FUNCTION_74_8();
  OUTLINED_FUNCTION_3_8();
  MEMORY[0x28223BE20](v14);
  v16 = OUTLINED_FUNCTION_11_34(v15, v25);
  v17(v16);
  __swift_mutable_project_boxed_opaque_existential_1(v27, v5);
  OUTLINED_FUNCTION_3_8();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_1_0();
  v20 = OUTLINED_FUNCTION_75_7(v19);
  v21(v20);
  v22 = *v6;
  v23 = *v1;
  v13[5] = v12;
  v13[6] = &off_28795F5E0;
  v13[2] = v22;
  v13[21] = v5;
  v13[22] = &off_287960608;
  v13[18] = v23;
  sub_2688E6514(v32, (v13 + 7));
  v13[12] = v26;
  sub_2688E6514(&v29, (v13 + 13));
  __swift_destroy_boxed_opaque_existential_0Tm(v27);
  __swift_destroy_boxed_opaque_existential_0Tm(v28);
  __swift_destroy_boxed_opaque_existential_0Tm(v33);
  OUTLINED_FUNCTION_71_7(&off_2879539D0);
  OUTLINED_FUNCTION_23();
}

uint64_t sub_268AFA4C0@<X0>(uint64_t a1@<X8>)
{
  v86 = sub_268B36F44();
  v77 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v76 = v75 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_268B37A54();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v3, qword_2802CDA10);
  (*(v4 + 16))(v6, v7, v3);
  v8 = sub_268B37A34();
  v9 = sub_268B37F04();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_2688BB000, v8, v9, "RCHChildFlowProducers.resumeMediaFlowProducers() called", v10, 2u);
    MEMORY[0x26D6266E0](v10, -1, -1);
  }

  (*(v4 + 8))(v6, v3);
  type metadata accessor for ResumeMediaIntent();
  type metadata accessor for ResumeMediaIntentResponse();
  sub_268B34A24();
  sub_268B368F4();
  swift_allocObject();
  v75[5] = sub_268B368C4();
  sub_268B354A4();
  sub_268AF8FAC();
  sub_268AFA1F8();
  sub_268AF7A24();
  v11 = __swift_mutable_project_boxed_opaque_existential_1(&v104, v105);
  v85 = v75;
  MEMORY[0x28223BE20](v11);
  v13 = (v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13);
  v15 = *v13;
  v16 = type metadata accessor for AnalyticsServiceImpl();
  v79 = a1;
  v17 = v16;
  v99 = v16;
  v100 = &off_2879539D0;
  *&v98 = v15;
  v75[4] = type metadata accessor for ResumeMediaConfirmIntentStrategy();
  v18 = swift_allocObject();
  v19 = __swift_mutable_project_boxed_opaque_existential_1(&v98, v17);
  v82 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v83 = (v20 + 15) & 0xFFFFFFFFFFFFFFF0;
  v21 = (v75 - v83);
  v23 = *(v22 + 16);
  v80 = v22 + 16;
  v81 = v23;
  v23(v75 - v83);
  v24 = *v21;
  v18[11] = v17;
  v18[12] = &off_2879539D0;
  v18[8] = v24;
  sub_2688E6514(v108, (v18 + 2));
  v78 = type metadata accessor for DialogProvider();
  v25 = swift_allocObject();
  sub_2688E6514(v107, v25 + 16);
  v84 = v18;
  v18[7] = v25;
  sub_2688E6514(&v101, (v18 + 13));
  __swift_destroy_boxed_opaque_existential_0Tm(&v98);
  __swift_destroy_boxed_opaque_existential_0Tm(&v104);
  sub_268B34954();
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A8A38, &qword_268B50AD0);
  sub_268B349D4();
  sub_268B354A4();
  sub_268AF8FAC();
  v26 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v27 = sub_26892CB58(0xD00000000000001FLL, 0x8000000268B575F0);
  sub_268AFA1F8();
  v102 = v86;
  v103 = MEMORY[0x277D5F6F8];
  __swift_allocate_boxed_opaque_existential_1(&v101);
  sub_268B36F34();
  v28 = sub_268B36C54();
  v29 = sub_268B36C44();
  v99 = v28;
  v100 = MEMORY[0x277D5F680];
  *&v98 = v29;
  v30 = type metadata accessor for DisplayContextProvider();
  v31 = swift_allocObject();
  sub_268AF7A24();
  sub_268B34C64();
  v32 = __swift_mutable_project_boxed_opaque_existential_1(&v104, v105);
  v75[3] = v75;
  MEMORY[0x28223BE20](v32);
  v34 = (v75 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v35 + 16))(v34);
  v36 = *v34;
  v91[3] = &type metadata for UserDefaultsProviderImpl;
  v91[4] = &off_287952DF0;
  v91[0] = v27;
  v90[3] = v17;
  v90[4] = &off_2879539D0;
  v90[0] = v36;
  v88 = v30;
  v89 = &off_287953E00;
  v87[0] = v31;
  v75[2] = type metadata accessor for ResumeMediaHandleIntentStrategy();
  v37 = swift_allocObject();
  v38 = __swift_mutable_project_boxed_opaque_existential_1(v91, &type metadata for UserDefaultsProviderImpl);
  v75[1] = v75;
  MEMORY[0x28223BE20](v38);
  v40 = (v75 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v41 + 16))(v40);
  v42 = __swift_mutable_project_boxed_opaque_existential_1(v90, v17);
  v75[0] = v75;
  MEMORY[0x28223BE20](v42);
  v43 = (v75 - v83);
  v81(v75 - v83);
  v44 = __swift_mutable_project_boxed_opaque_existential_1(v87, v88);
  MEMORY[0x28223BE20](v44);
  v46 = (v75 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v47 + 16))(v46);
  v48 = *v40;
  v49 = *v43;
  v50 = *v46;
  v37[11] = &type metadata for UserDefaultsProviderImpl;
  v37[12] = &off_287952DF0;
  v37[8] = v48;
  v37[16] = v17;
  v37[17] = &off_2879539D0;
  v37[13] = v49;
  v37[31] = v30;
  v37[32] = &off_287953E00;
  v37[28] = v50;
  sub_26890C900(v108, (v37 + 2));
  v51 = swift_allocObject();
  sub_2688E6514(v107, v51 + 16);
  v37[7] = v51;
  sub_2688E6514(&v101, (v37 + 18));
  sub_2688E6514(&v98, (v37 + 23));
  sub_2688E6514(&v95, (v37 + 33));
  type metadata accessor for AceServiceHelper();
  v52 = swift_allocObject();
  sub_2688E6514(v108, v52 + 16);
  sub_2688E6514(&v92, v52 + 56);
  v37[38] = v52;
  __swift_destroy_boxed_opaque_existential_0Tm(v87);
  __swift_destroy_boxed_opaque_existential_0Tm(v90);
  __swift_destroy_boxed_opaque_existential_0Tm(v91);
  __swift_destroy_boxed_opaque_existential_0Tm(&v104);
  *&v108[0] = v37;
  sub_268B098E0(&qword_2802A8A58, type metadata accessor for ResumeMediaHandleIntentStrategy, &unk_268B42084);
  sub_268B34944();

  sub_268B349C4();
  sub_268B354A4();
  sub_268AF8FAC();
  v105 = v86;
  v106 = MEMORY[0x277D5F6F8];
  __swift_allocate_boxed_opaque_existential_1(&v104);
  sub_268B36F34();
  v102 = sub_268B374D4();
  v103 = MEMORY[0x277D5F8B0];
  __swift_allocate_boxed_opaque_existential_1(&v101);
  sub_268B374C4();
  sub_268AFA1F8();
  sub_268AF7A24();
  v53 = __swift_mutable_project_boxed_opaque_existential_1(&v98, v99);
  MEMORY[0x28223BE20](v53);
  v55 = (v75 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v56 + 16))(v55);
  v57 = *v55;
  v93 = v17;
  v94 = &off_2879539D0;
  *&v92 = v57;
  type metadata accessor for ResumeMediaDeviceDisambiguationStrategy();
  v58 = swift_allocObject();
  v59 = __swift_mutable_project_boxed_opaque_existential_1(&v92, v17);
  MEMORY[0x28223BE20](v59);
  v60 = (v75 - v83);
  v81(v75 - v83);
  v61 = *v60;
  v58[21] = v17;
  v58[22] = &off_2879539D0;
  v58[18] = v61;
  sub_2688E6514(v108, (v58 + 2));
  v62 = swift_allocObject();
  sub_2688E6514(v107, v62 + 16);
  v58[7] = v62;
  sub_2688E6514(&v104, (v58 + 8));
  sub_2688E6514(&v101, (v58 + 13));
  sub_2688E6514(&v95, (v58 + 23));
  __swift_destroy_boxed_opaque_existential_0Tm(&v92);
  __swift_destroy_boxed_opaque_existential_0Tm(&v98);
  *&v108[0] = v58;
  sub_268B098E0(&qword_2802A56C8, type metadata accessor for ResumeMediaDeviceDisambiguationStrategy, &unk_268B3BCB8);
  sub_268B34974();

  sub_268B34A14();
  *&v108[0] = v84;
  sub_268B098E0(&qword_2802A6C38, type metadata accessor for ResumeMediaConfirmIntentStrategy, &unk_268B42164);

  sub_268B34984();

  sub_268B349E4();
  sub_268B354A4();
  sub_268AF8FAC();
  v63 = v76;
  sub_268B36F34();
  sub_268AF90C4();
  sub_268AF7A24();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A8A60, &qword_268B50AE8);
  v64 = swift_allocObject();
  v65 = __swift_mutable_project_boxed_opaque_existential_1(&v104, v105);
  MEMORY[0x28223BE20](v65);
  v67 = (v75 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v68 + 16))(v67);
  v69 = *v67;
  v70 = v86;
  v99 = v86;
  v100 = MEMORY[0x277D5F6F8];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v98);
  v72 = v77;
  (*(v77 + 16))(boxed_opaque_existential_1, v63, v70);
  v96 = v17;
  v97 = &off_2879539D0;
  *&v95 = v69;
  (*(v72 + 8))(v63, v70);
  sub_2688E6514(v108, v64 + 16);
  v73 = swift_allocObject();
  sub_2688E6514(v107, v73 + 16);
  *(v64 + 56) = v73;
  sub_2688E6514(&v98, v64 + 64);
  sub_2688E6514(&v95, v64 + 104);
  sub_2688E6514(&v101, v64 + 144);
  __swift_destroy_boxed_opaque_existential_0Tm(&v104);
  *&v108[0] = v64;
  sub_2688F4354(&qword_2802A8A68, &qword_2802A8A60, &qword_268B50AE8, &unk_268B43468);
  sub_268B34994();

  sub_268B349F4();
}

uint64_t sub_268AFB380@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_268B37A54();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v74 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v2, qword_2802CDA10);
  (*(v3 + 16))(v5, v6, v2);
  v7 = sub_268B37A34();
  v8 = sub_268B37F04();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_2688BB000, v7, v8, "RCHChildFlowProducers.seekTimeFlowProducers() called", v9, 2u);
    MEMORY[0x26D6266E0](v9, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  type metadata accessor for SeekTimeIntent();
  type metadata accessor for SeekTimeIntentResponse();
  sub_268B34A24();
  sub_268B368F4();
  swift_allocObject();
  v76 = sub_268B368C4();
  sub_268B354A4();
  sub_268AF8FAC();
  sub_268AF90C4();
  sub_268AF7A24();
  v10 = __swift_mutable_project_boxed_opaque_existential_1(&v101, v102);
  v78 = v74;
  MEMORY[0x28223BE20](v10);
  v12 = (v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v13 + 16))(v12);
  v14 = *v12;
  v15 = a1;
  v16 = type metadata accessor for AnalyticsServiceImpl();
  v96 = v16;
  v97 = &off_2879539D0;
  *&v95 = v14;
  v77 = type metadata accessor for SeekTimeConfirmIntentStrategy();
  v17 = swift_allocObject();
  v18 = __swift_mutable_project_boxed_opaque_existential_1(&v95, v16);
  v82 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v83 = (v19 + 15) & 0xFFFFFFFFFFFFFFF0;
  v20 = (v74 - v83);
  v22 = *(v21 + 16);
  v80 = v21 + 16;
  v81 = v22;
  v22(v74 - v83);
  v23 = *v20;
  v17[11] = v16;
  v17[12] = &off_2879539D0;
  v17[8] = v23;
  v24 = v17;
  sub_2688E6514(v105, (v17 + 2));
  v79 = type metadata accessor for DialogProvider();
  v25 = swift_allocObject();
  sub_2688E6514(v104, v25 + 16);
  v75 = v24;
  v24[7] = v25;
  sub_2688E6514(&v98, (v24 + 13));
  __swift_destroy_boxed_opaque_existential_0Tm(&v95);
  __swift_destroy_boxed_opaque_existential_0Tm(&v101);
  sub_268B34954();
  v74[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A8C08, &qword_268B50BC0);
  v74[5] = v15;
  sub_268B349D4();
  sub_268B354A4();
  sub_268AF8FAC();
  v78 = sub_268B36F44();
  v102 = v78;
  v103 = MEMORY[0x277D5F6F8];
  __swift_allocate_boxed_opaque_existential_1(&v101);
  sub_268B36F34();
  sub_268AF90C4();
  sub_268AF7A24();
  v26 = __swift_mutable_project_boxed_opaque_existential_1(&v98, v99);
  MEMORY[0x28223BE20](v26);
  v28 = (v74 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v29 + 16))(v28);
  v30 = *v28;
  v93 = v16;
  v94 = &off_2879539D0;
  *&v92 = v30;
  type metadata accessor for SeekTimeUnsupportedValueStrategy(0);
  v31 = swift_allocObject();
  v32 = __swift_mutable_project_boxed_opaque_existential_1(&v92, v16);
  MEMORY[0x28223BE20](v32);
  v33 = (v74 - v83);
  v81(v74 - v83);
  v34 = *v33;
  v31[16] = v16;
  v31[17] = &off_2879539D0;
  v31[13] = v34;
  sub_2688E6514(v105, (v31 + 2));
  v35 = swift_allocObject();
  sub_2688E6514(v104, v35 + 16);
  v31[7] = v35;
  sub_2688E6514(&v101, (v31 + 8));
  sub_2688E6514(&v95, (v31 + 18));
  __swift_destroy_boxed_opaque_existential_0Tm(&v92);
  __swift_destroy_boxed_opaque_existential_0Tm(&v98);
  *&v105[0] = v31;
  sub_268B098E0(&qword_2802A8C28, type metadata accessor for SeekTimeUnsupportedValueStrategy, &unk_268B43468);
  sub_268B34994();

  sub_268B349F4();
  sub_268B354A4();
  sub_268AF8FAC();
  v36 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v37 = sub_26892CB58(0xD00000000000001FLL, 0x8000000268B575F0);
  v38 = sub_268B36C54();
  v39 = sub_268B36C44();
  v102 = v38;
  v103 = MEMORY[0x277D5F680];
  *&v101 = v39;
  sub_268AF90C4();
  v96 = v78;
  v97 = MEMORY[0x277D5F6F8];
  __swift_allocate_boxed_opaque_existential_1(&v95);
  sub_268B36F34();
  v40 = type metadata accessor for DisplayContextProvider();
  v41 = swift_allocObject();
  sub_268AF7A24();
  sub_268B34C64();
  v42 = __swift_mutable_project_boxed_opaque_existential_1(&v98, v99);
  v74[3] = v74;
  MEMORY[0x28223BE20](v42);
  v44 = (v74 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v45 + 16))(v44);
  v46 = *v44;
  v88[3] = &type metadata for UserDefaultsProviderImpl;
  v88[4] = &off_287952DF0;
  v88[0] = v37;
  v87[3] = v16;
  v87[4] = &off_2879539D0;
  v87[0] = v46;
  v85 = v40;
  v86 = &off_287953E00;
  v84[0] = v41;
  v74[2] = type metadata accessor for SeekTimeHandleIntentStrategy();
  v47 = swift_allocObject();
  v48 = __swift_mutable_project_boxed_opaque_existential_1(v88, &type metadata for UserDefaultsProviderImpl);
  v74[1] = v74;
  MEMORY[0x28223BE20](v48);
  v50 = (v74 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v51 + 16))(v50);
  v52 = __swift_mutable_project_boxed_opaque_existential_1(v87, v16);
  v74[0] = v74;
  MEMORY[0x28223BE20](v52);
  v53 = (v74 - v83);
  v81(v74 - v83);
  v54 = __swift_mutable_project_boxed_opaque_existential_1(v84, v85);
  MEMORY[0x28223BE20](v54);
  v56 = (v74 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v57 + 16))(v56);
  v58 = *v50;
  v59 = *v53;
  v60 = *v56;
  v47[11] = &type metadata for UserDefaultsProviderImpl;
  v47[12] = &off_287952DF0;
  v47[8] = v58;
  v47[21] = v16;
  v47[22] = &off_2879539D0;
  v47[18] = v59;
  v47[31] = v40;
  v47[32] = &off_287953E00;
  v47[28] = v60;
  sub_26890C900(v105, (v47 + 2));
  v61 = swift_allocObject();
  sub_2688E6514(v104, v61 + 16);
  v47[7] = v61;
  sub_2688E6514(&v101, (v47 + 13));
  sub_2688E6514(&v95, (v47 + 23));
  sub_2688E6514(&v92, (v47 + 33));
  type metadata accessor for AceServiceHelper();
  v62 = swift_allocObject();
  sub_2688E6514(v105, v62 + 16);
  sub_2688E6514(&v89, v62 + 56);
  v47[38] = v62;
  __swift_destroy_boxed_opaque_existential_0Tm(v84);
  __swift_destroy_boxed_opaque_existential_0Tm(v87);
  __swift_destroy_boxed_opaque_existential_0Tm(v88);
  __swift_destroy_boxed_opaque_existential_0Tm(&v98);
  *&v105[0] = v47;
  sub_268B098E0(&qword_2802A8C30, type metadata accessor for SeekTimeHandleIntentStrategy, &unk_268B44C44);
  sub_268B34944();

  sub_268B349C4();
  sub_268B354A4();
  sub_268AF8FAC();
  v102 = v78;
  v103 = MEMORY[0x277D5F6F8];
  __swift_allocate_boxed_opaque_existential_1(&v101);
  sub_268B36F34();
  v99 = sub_268B374D4();
  v100 = MEMORY[0x277D5F8B0];
  __swift_allocate_boxed_opaque_existential_1(&v98);
  sub_268B374C4();
  sub_268AF90C4();
  sub_268AF7A24();
  v63 = __swift_mutable_project_boxed_opaque_existential_1(&v95, v96);
  MEMORY[0x28223BE20](v63);
  v65 = (v74 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v66 + 16))(v65);
  v67 = *v65;
  v90 = v16;
  v91 = &off_2879539D0;
  *&v89 = v67;
  type metadata accessor for SeekTimeDeviceDisambiguationStrategy();
  v68 = swift_allocObject();
  v69 = __swift_mutable_project_boxed_opaque_existential_1(&v89, v16);
  MEMORY[0x28223BE20](v69);
  v70 = (v74 - v83);
  v81(v74 - v83);
  v71 = *v70;
  v68[21] = v16;
  v68[22] = &off_2879539D0;
  v68[18] = v71;
  sub_2688E6514(v105, (v68 + 2));
  v72 = swift_allocObject();
  sub_2688E6514(v104, v72 + 16);
  v68[7] = v72;
  sub_2688E6514(&v101, (v68 + 8));
  sub_2688E6514(&v98, (v68 + 13));
  sub_2688E6514(&v92, (v68 + 23));
  __swift_destroy_boxed_opaque_existential_0Tm(&v89);
  __swift_destroy_boxed_opaque_existential_0Tm(&v95);
  *&v105[0] = v68;
  sub_268B098E0(&qword_2802A7DA0, type metadata accessor for SeekTimeDeviceDisambiguationStrategy, &unk_268B4B048);
  sub_268B34974();

  sub_268B34A14();
  *&v105[0] = v75;
  sub_268B098E0(&qword_2802A7F88, type metadata accessor for SeekTimeConfirmIntentStrategy, &unk_268B4B650);

  sub_268B34984();

  sub_268B349E4();
}

uint64_t sub_268AFC1DC@<X0>(uint64_t a1@<X8>)
{
  v46 = a1;
  v45 = sub_268B36F44();
  v1 = *(v45 - 1);
  v2 = MEMORY[0x28223BE20](v45);
  v4 = v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = v44 - v5;
  v7 = sub_268B37A54();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v7, qword_2802CDA10);
  (*(v8 + 16))(v10, v11, v7);
  v12 = sub_268B37A34();
  v13 = sub_268B37F04();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_2688BB000, v12, v13, "RCHChildFlowProducers.getVolumeLevelFlowProducers() called", v14, 2u);
    MEMORY[0x26D6266E0](v14, -1, -1);
  }

  (*(v8 + 8))(v10, v7);
  v44[1] = type metadata accessor for GetVolumeLevelIntent();
  type metadata accessor for GetVolumeLevelIntentResponse();
  sub_268B34A24();
  sub_268B368F4();
  swift_allocObject();
  v44[3] = sub_268B368C4();
  sub_268B354A4();
  sub_268AF8FAC();
  sub_268B36F34();
  sub_268AF90C4();
  sub_268AF7A24();
  v15 = __swift_mutable_project_boxed_opaque_existential_1(v59, v60);
  MEMORY[0x28223BE20](v15);
  (*(v17 + 16))(v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = v45;
  (*(v1 + 16))(v4, v6, v45);
  sub_268B09618();
  v20 = v19;
  (*(v1 + 8))(v6, v18);
  __swift_destroy_boxed_opaque_existential_0Tm(v59);
  *&v62[0] = v20;
  type metadata accessor for GetVolumeLevelUnsupportedValueStrategy(0);
  sub_268B098E0(&qword_2802A8CC0, type metadata accessor for GetVolumeLevelUnsupportedValueStrategy, &unk_268B43468);
  sub_268B34994();

  v44[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A8CA0, &qword_268B50C08);
  sub_268B349F4();
  sub_268B34954();
  sub_268B349D4();
  sub_268B354A4();
  sub_268AF8FAC();
  sub_268AF90C4();
  v21 = sub_268B36C54();
  v22 = sub_268B36C44();
  v57 = v21;
  v58 = MEMORY[0x277D5F680];
  *&v56 = v22;
  v54 = v18;
  v55 = MEMORY[0x277D5F6F8];
  __swift_allocate_boxed_opaque_existential_1(&v53);
  sub_268B36F34();
  v23 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v24 = sub_26892CB58(0xD00000000000001FLL, 0x8000000268B575F0);
  sub_268AF7A24();
  sub_268B34C64();
  v25 = __swift_mutable_project_boxed_opaque_existential_1(v59, v60);
  v45 = v44;
  MEMORY[0x28223BE20](v25);
  v27 = (v44 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v28 + 16))(v27);
  v29 = *v27;
  v30 = type metadata accessor for AnalyticsServiceImpl();
  v50[4] = &off_2879539D0;
  v50[3] = v30;
  v50[0] = v29;
  v48 = &type metadata for UserDefaultsProviderImpl;
  v49 = &off_287952DF0;
  v47[0] = v24;
  type metadata accessor for GetVolumeLevelHandleIntentStrategy();
  v31 = swift_allocObject();
  v32 = __swift_mutable_project_boxed_opaque_existential_1(v50, v30);
  MEMORY[0x28223BE20](v32);
  v34 = (v44 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v35 + 16))(v34);
  v36 = __swift_mutable_project_boxed_opaque_existential_1(v47, v48);
  MEMORY[0x28223BE20](v36);
  v38 = (v44 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v39 + 16))(v38);
  v40 = *v34;
  v41 = *v38;
  v31[15] = v30;
  v31[16] = &off_2879539D0;
  v31[12] = v40;
  v31[30] = &type metadata for UserDefaultsProviderImpl;
  v31[31] = &off_287952DF0;
  v31[27] = v41;
  sub_26890C900(v62, (v31 + 7));
  sub_2688E6514(&v61, (v31 + 2));
  sub_2688E6514(&v56, (v31 + 17));
  sub_2688E6514(&v53, (v31 + 22));
  sub_2688E6514(&v52, (v31 + 32));
  type metadata accessor for AceServiceHelper();
  v42 = swift_allocObject();
  sub_2688E6514(v62, v42 + 16);
  sub_2688E6514(&v51, v42 + 56);
  v31[37] = v42;
  __swift_destroy_boxed_opaque_existential_0Tm(v47);
  __swift_destroy_boxed_opaque_existential_0Tm(v50);
  __swift_destroy_boxed_opaque_existential_0Tm(v59);
  *&v62[0] = v31;
  sub_268B098E0(&qword_2802A8CC8, type metadata accessor for GetVolumeLevelHandleIntentStrategy, &unk_268B46FF8);
  sub_268B34944();

  sub_268B349C4();
}

uint64_t sub_268AFCA70@<X0>(uint64_t a1@<X8>)
{
  v80 = a1;
  v79 = sub_268B36F44();
  v1 = *(v79 - 1);
  v2 = MEMORY[0x28223BE20](v79);
  v4 = v71 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = v71 - v5;
  v7 = sub_268B37A54();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v7, qword_2802CDA10);
  (*(v8 + 16))(v10, v11, v7);
  v12 = sub_268B37A34();
  v13 = sub_268B37ED4();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_2688BB000, v12, v13, "RCHChildFlowProducers.setVolumeLevelFlowProducers() called", v14, 2u);
    MEMORY[0x26D6266E0](v14, -1, -1);
  }

  (*(v8 + 8))(v10, v7);
  v77 = type metadata accessor for SetVolumeLevelIntent();
  type metadata accessor for SetVolumeLevelIntentResponse();
  sub_268B34A24();
  sub_268B368F4();
  swift_allocObject();
  v73 = sub_268B368C4();
  sub_268B354A4();
  sub_268AF8FAC();
  sub_268B36F34();
  sub_268AF90C4();
  sub_268AF7A24();
  v15 = __swift_mutable_project_boxed_opaque_existential_1(v94, v95);
  MEMORY[0x28223BE20](v15);
  (*(v17 + 16))(v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = v79;
  (*(v1 + 16))(v4, v6, v79);
  sub_268B09618();
  v20 = v19;
  (*(v1 + 8))(v6, v18);
  __swift_destroy_boxed_opaque_existential_0Tm(v94);
  *&v97[0] = v20;
  type metadata accessor for SetVolumeLevelUnsupportedValueStrategy(0);
  sub_268B098E0(&qword_2802A8C88, type metadata accessor for SetVolumeLevelUnsupportedValueStrategy, &unk_268B43468);
  sub_268B34994();

  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A8C68, &qword_268B50BF0);
  sub_268B349F4();
  sub_268B34954();
  sub_268B349D4();
  sub_268B354A4();
  sub_268AF8FAC();
  sub_268AF90C4();
  v92 = v18;
  v93 = MEMORY[0x277D5F6F8];
  __swift_allocate_boxed_opaque_existential_1(&v91);
  sub_268B36F34();
  v72 = "setVolumeLevelIntent";
  v21 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v22 = sub_26892CB58(0xD00000000000001FLL, 0x8000000268B575F0);
  v23 = sub_268B36C54();
  v24 = sub_268B36C44();
  v89 = v23;
  v90 = MEMORY[0x277D5F680];
  *&v88 = v24;
  sub_268AF7A24();
  v25 = __swift_mutable_project_boxed_opaque_existential_1(v94, v95);
  v71[1] = v71;
  MEMORY[0x28223BE20](v25);
  v27 = (v71 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v28 + 16))(v27);
  v29 = *v27;
  v30 = type metadata accessor for AnalyticsServiceImpl();
  v86 = &off_2879539D0;
  v85 = v30;
  v84[0] = v29;
  v82 = &type metadata for UserDefaultsProviderImpl;
  v83 = &off_287952DF0;
  v81[0] = v22;
  type metadata accessor for SetVolumeLevelHandleIntentStrategy();
  v31 = swift_allocObject();
  v32 = __swift_mutable_project_boxed_opaque_existential_1(v84, v30);
  v76 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v32);
  v77 = (v33 + 15) & 0xFFFFFFFFFFFFFFF0;
  v34 = (v71 - v77);
  v36 = *(v35 + 16);
  v74 = v35 + 16;
  v75 = v36;
  v36(v71 - v77);
  v37 = __swift_mutable_project_boxed_opaque_existential_1(v81, v82);
  MEMORY[0x28223BE20](v37);
  v39 = (v71 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v40 + 16))(v39);
  v41 = *v34;
  v42 = *v39;
  v31[15] = v30;
  v31[16] = &off_2879539D0;
  v31[12] = v41;
  v31[25] = &type metadata for UserDefaultsProviderImpl;
  v31[26] = &off_287952DF0;
  v31[22] = v42;
  sub_2688E6514(v97, (v31 + 7));
  sub_2688E6514(v96, (v31 + 2));
  sub_2688E6514(&v91, (v31 + 17));
  sub_2688E6514(&v88, (v31 + 27));
  sub_2688E6514(v87, (v31 + 32));
  __swift_destroy_boxed_opaque_existential_0Tm(v81);
  __swift_destroy_boxed_opaque_existential_0Tm(v84);
  __swift_destroy_boxed_opaque_existential_0Tm(v94);
  *&v97[0] = v31;
  sub_268B098E0(&qword_2802A8C90, type metadata accessor for SetVolumeLevelHandleIntentStrategy, &unk_268B3F588);
  sub_268B34944();

  sub_268B349C4();
  sub_268B354A4();
  sub_268AF8FAC();
  sub_268AF90C4();
  v92 = v79;
  v93 = MEMORY[0x277D5F6F8];
  __swift_allocate_boxed_opaque_existential_1(&v91);
  sub_268B36F34();
  v43 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v44 = sub_26892CB58(0xD00000000000001FLL, v72 | 0x8000000000000000);
  v45 = sub_268B36C44();
  v89 = v23;
  v90 = MEMORY[0x277D5F680];
  *&v88 = v45;
  sub_268AF7A24();
  v46 = __swift_mutable_project_boxed_opaque_existential_1(v94, v95);
  v79 = v71;
  MEMORY[0x28223BE20](v46);
  v48 = (v71 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v49 + 16))(v48);
  v50 = *v48;
  v85 = v30;
  v86 = &off_2879539D0;
  v83 = &off_287952DF0;
  v84[0] = v50;
  v82 = &type metadata for UserDefaultsProviderImpl;
  v81[0] = v44;
  type metadata accessor for VolumeLevelNeedsValueStrategy();
  v51 = swift_allocObject();
  v52 = __swift_mutable_project_boxed_opaque_existential_1(v84, v30);
  MEMORY[0x28223BE20](v52);
  v53 = (v71 - v77);
  v75(v71 - v77);
  v54 = __swift_mutable_project_boxed_opaque_existential_1(v81, v82);
  MEMORY[0x28223BE20](v54);
  v56 = (v71 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v57 + 16))(v56);
  v58 = *v53;
  v59 = *v56;
  v51[15] = v30;
  v51[16] = &off_2879539D0;
  v51[12] = v58;
  v51[25] = &type metadata for UserDefaultsProviderImpl;
  v51[26] = &off_287952DF0;
  v51[22] = v59;
  sub_2688E6514(v97, (v51 + 2));
  sub_2688E6514(v96, (v51 + 7));
  sub_2688E6514(&v91, (v51 + 17));
  sub_2688E6514(&v88, (v51 + 27));
  sub_2688E6514(v87, (v51 + 32));
  __swift_destroy_boxed_opaque_existential_0Tm(v81);
  __swift_destroy_boxed_opaque_existential_0Tm(v84);
  __swift_destroy_boxed_opaque_existential_0Tm(v94);
  *&v97[0] = v51;
  sub_268B098E0(&qword_2802A8C98, type metadata accessor for VolumeLevelNeedsValueStrategy, &unk_268B3ED58);
  sub_268B34934();

  sub_268B349B4();
  sub_268B354A4();
  sub_268AF8FAC();
  sub_268AF90C4();
  sub_268AF7A24();
  v60 = __swift_mutable_project_boxed_opaque_existential_1(v94, v95);
  MEMORY[0x28223BE20](v60);
  v62 = (v71 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v63 + 16))(v62);
  v64 = *v62;
  v89 = v30;
  v90 = &off_2879539D0;
  *&v88 = v64;
  type metadata accessor for VolumeLevelNeedsConfirmationStrategy();
  v65 = swift_allocObject();
  v66 = __swift_mutable_project_boxed_opaque_existential_1(&v88, v30);
  MEMORY[0x28223BE20](v66);
  v67 = (v71 - v77);
  v75(v71 - v77);
  v68 = *v67;
  v65[11] = v30;
  v65[12] = &off_2879539D0;
  v65[8] = v68;
  sub_2688E6514(v97, (v65 + 2));
  sub_26890C900(v96, v87);
  type metadata accessor for DialogProvider();
  v69 = swift_allocObject();
  sub_2688E6514(v87, v69 + 16);
  v65[7] = v69;
  sub_2688E6514(v96, (v65 + 18));
  sub_2688E6514(&v91, (v65 + 13));
  __swift_destroy_boxed_opaque_existential_0Tm(&v88);
  __swift_destroy_boxed_opaque_existential_0Tm(v94);
  *&v97[0] = v65;
  sub_268B098E0(&qword_2802A6520, type metadata accessor for VolumeLevelNeedsConfirmationStrategy, &unk_268B3F7B0);
  sub_268B34964();

  sub_268B34A04();
}

uint64_t sub_268AFD854@<X0>(uint64_t a1@<X8>)
{
  v86 = sub_268B36F44();
  v77 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v76 = v75 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_268B37A54();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v3, qword_2802CDA10);
  (*(v4 + 16))(v6, v7, v3);
  v8 = sub_268B37A34();
  v9 = sub_268B37F04();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_2688BB000, v8, v9, "RCHChildFlowProducers.setShuffleStateFlowProducers() called", v10, 2u);
    MEMORY[0x26D6266E0](v10, -1, -1);
  }

  (*(v4 + 8))(v6, v3);
  type metadata accessor for SetShuffleStateIntent();
  type metadata accessor for SetShuffleStateIntentResponse();
  sub_268B34A24();
  sub_268B368F4();
  swift_allocObject();
  v75[5] = sub_268B368C4();
  sub_268B354A4();
  sub_268AF8FAC();
  sub_268AF90C4();
  sub_268AF7A24();
  v11 = __swift_mutable_project_boxed_opaque_existential_1(&v104, v105);
  v85 = v75;
  MEMORY[0x28223BE20](v11);
  v13 = (v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13);
  v15 = *v13;
  v16 = type metadata accessor for AnalyticsServiceImpl();
  v79 = a1;
  v17 = v16;
  v99 = v16;
  v100 = &off_2879539D0;
  *&v98 = v15;
  v75[4] = type metadata accessor for SetShuffleStateConfirmIntentStrategy();
  v18 = swift_allocObject();
  v19 = __swift_mutable_project_boxed_opaque_existential_1(&v98, v17);
  v82 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v83 = (v20 + 15) & 0xFFFFFFFFFFFFFFF0;
  v21 = (v75 - v83);
  v23 = *(v22 + 16);
  v80 = v22 + 16;
  v81 = v23;
  v23(v75 - v83);
  v24 = *v21;
  v18[11] = v17;
  v18[12] = &off_2879539D0;
  v18[8] = v24;
  sub_2688E6514(v108, (v18 + 2));
  v78 = type metadata accessor for DialogProvider();
  v25 = swift_allocObject();
  sub_2688E6514(v107, v25 + 16);
  v84 = v18;
  v18[7] = v25;
  sub_2688E6514(&v101, (v18 + 13));
  __swift_destroy_boxed_opaque_existential_0Tm(&v98);
  __swift_destroy_boxed_opaque_existential_0Tm(&v104);
  sub_268B34954();
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A89D0, &qword_268B50A98);
  sub_268B349D4();
  sub_268B354A4();
  sub_268AF8FAC();
  v26 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v27 = sub_26892CB58(0xD00000000000001FLL, 0x8000000268B575F0);
  sub_268AF90C4();
  v102 = v86;
  v103 = MEMORY[0x277D5F6F8];
  __swift_allocate_boxed_opaque_existential_1(&v101);
  sub_268B36F34();
  v28 = sub_268B36C54();
  v29 = sub_268B36C44();
  v99 = v28;
  v100 = MEMORY[0x277D5F680];
  *&v98 = v29;
  v30 = type metadata accessor for DisplayContextProvider();
  v31 = swift_allocObject();
  sub_268AF7A24();
  sub_268B34C64();
  v32 = __swift_mutable_project_boxed_opaque_existential_1(&v104, v105);
  v75[3] = v75;
  MEMORY[0x28223BE20](v32);
  v34 = (v75 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v35 + 16))(v34);
  v36 = *v34;
  v91[3] = &type metadata for UserDefaultsProviderImpl;
  v91[4] = &off_287952DF0;
  v91[0] = v27;
  v90[3] = v17;
  v90[4] = &off_2879539D0;
  v90[0] = v36;
  v88 = v30;
  v89 = &off_287953E00;
  v87[0] = v31;
  v75[2] = type metadata accessor for SetShuffleStateHandleIntentStrategy();
  v37 = swift_allocObject();
  v38 = __swift_mutable_project_boxed_opaque_existential_1(v91, &type metadata for UserDefaultsProviderImpl);
  v75[1] = v75;
  MEMORY[0x28223BE20](v38);
  v40 = (v75 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v41 + 16))(v40);
  v42 = __swift_mutable_project_boxed_opaque_existential_1(v90, v17);
  v75[0] = v75;
  MEMORY[0x28223BE20](v42);
  v43 = (v75 - v83);
  v81(v75 - v83);
  v44 = __swift_mutable_project_boxed_opaque_existential_1(v87, v88);
  MEMORY[0x28223BE20](v44);
  v46 = (v75 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v47 + 16))(v46);
  v48 = *v40;
  v49 = *v43;
  v50 = *v46;
  v37[11] = &type metadata for UserDefaultsProviderImpl;
  v37[12] = &off_287952DF0;
  v37[8] = v48;
  v37[16] = v17;
  v37[17] = &off_2879539D0;
  v37[13] = v49;
  v37[31] = v30;
  v37[32] = &off_287953E00;
  v37[28] = v50;
  sub_26890C900(v108, (v37 + 2));
  v51 = swift_allocObject();
  sub_2688E6514(v107, v51 + 16);
  v37[7] = v51;
  sub_2688E6514(&v101, (v37 + 18));
  sub_2688E6514(&v98, (v37 + 23));
  sub_2688E6514(&v95, (v37 + 33));
  type metadata accessor for AceServiceHelper();
  v52 = swift_allocObject();
  sub_2688E6514(v108, v52 + 16);
  sub_2688E6514(&v92, v52 + 56);
  v37[38] = v52;
  __swift_destroy_boxed_opaque_existential_0Tm(v87);
  __swift_destroy_boxed_opaque_existential_0Tm(v90);
  __swift_destroy_boxed_opaque_existential_0Tm(v91);
  __swift_destroy_boxed_opaque_existential_0Tm(&v104);
  *&v108[0] = v37;
  sub_268B098E0(&qword_2802A89F0, type metadata accessor for SetShuffleStateHandleIntentStrategy, &unk_268B48BD8);
  sub_268B34944();

  sub_268B349C4();
  sub_268B354A4();
  sub_268AF8FAC();
  v105 = v86;
  v106 = MEMORY[0x277D5F6F8];
  __swift_allocate_boxed_opaque_existential_1(&v104);
  sub_268B36F34();
  v102 = sub_268B374D4();
  v103 = MEMORY[0x277D5F8B0];
  __swift_allocate_boxed_opaque_existential_1(&v101);
  sub_268B374C4();
  sub_268AF90C4();
  sub_268AF7A24();
  v53 = __swift_mutable_project_boxed_opaque_existential_1(&v98, v99);
  MEMORY[0x28223BE20](v53);
  v55 = (v75 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v56 + 16))(v55);
  v57 = *v55;
  v93 = v17;
  v94 = &off_2879539D0;
  *&v92 = v57;
  type metadata accessor for SetShuffleStateDeviceDisambiguationStrategy();
  v58 = swift_allocObject();
  v59 = __swift_mutable_project_boxed_opaque_existential_1(&v92, v17);
  MEMORY[0x28223BE20](v59);
  v60 = (v75 - v83);
  v81(v75 - v83);
  v61 = *v60;
  v58[21] = v17;
  v58[22] = &off_2879539D0;
  v58[18] = v61;
  sub_2688E6514(v108, (v58 + 2));
  v62 = swift_allocObject();
  sub_2688E6514(v107, v62 + 16);
  v58[7] = v62;
  sub_2688E6514(&v104, (v58 + 8));
  sub_2688E6514(&v101, (v58 + 13));
  sub_2688E6514(&v95, (v58 + 23));
  __swift_destroy_boxed_opaque_existential_0Tm(&v92);
  __swift_destroy_boxed_opaque_existential_0Tm(&v98);
  *&v108[0] = v58;
  sub_268B098E0(&qword_2802A7C88, type metadata accessor for SetShuffleStateDeviceDisambiguationStrategy, &unk_268B49EF0);
  sub_268B34974();

  sub_268B34A14();
  *&v108[0] = v84;
  sub_268B098E0(&qword_2802A8870, type metadata accessor for SetShuffleStateConfirmIntentStrategy, &unk_268B4FF68);

  sub_268B34984();

  sub_268B349E4();
  sub_268B354A4();
  sub_268AF8FAC();
  v63 = v76;
  sub_268B36F34();
  sub_268AF90C4();
  sub_268AF7A24();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A89F8, &qword_268B50AB0);
  v64 = swift_allocObject();
  v65 = __swift_mutable_project_boxed_opaque_existential_1(&v104, v105);
  MEMORY[0x28223BE20](v65);
  v67 = (v75 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v68 + 16))(v67);
  v69 = *v67;
  v70 = v86;
  v99 = v86;
  v100 = MEMORY[0x277D5F6F8];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v98);
  v72 = v77;
  (*(v77 + 16))(boxed_opaque_existential_1, v63, v70);
  v96 = v17;
  v97 = &off_2879539D0;
  *&v95 = v69;
  (*(v72 + 8))(v63, v70);
  sub_2688E6514(v108, v64 + 16);
  v73 = swift_allocObject();
  sub_2688E6514(v107, v73 + 16);
  *(v64 + 56) = v73;
  sub_2688E6514(&v98, v64 + 64);
  sub_2688E6514(&v95, v64 + 104);
  sub_2688E6514(&v101, v64 + 144);
  __swift_destroy_boxed_opaque_existential_0Tm(&v104);
  *&v108[0] = v64;
  sub_2688F4354(&qword_2802A8A00, &qword_2802A89F8, &qword_268B50AB0, &unk_268B43468);
  sub_268B34994();

  sub_268B349F4();
}

uint64_t sub_268AFE714@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_268B37A54();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v2, qword_2802CDA10);
  (*(v3 + 16))(v5, v6, v2);
  v7 = sub_268B37A34();
  v8 = sub_268B37F04();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_2688BB000, v7, v8, "RCHChildFlowProducers.moveSpeakerFlowProducers() called", v9, 2u);
    MEMORY[0x26D6266E0](v9, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  type metadata accessor for MoveSpeakerIntent();
  type metadata accessor for MoveSpeakerIntentResponse();
  sub_268B34A24();
  sub_268B368F4();
  swift_allocObject();
  v61 = sub_268B368C4();
  sub_268B354A4();
  sub_268AF8FAC();
  v53 = sub_268B36F44();
  v79 = v53;
  v80 = MEMORY[0x277D5F6F8];
  __swift_allocate_boxed_opaque_existential_1(&v78);
  sub_268B36F34();
  sub_268AF90C4();
  sub_268AF7A24();
  v10 = __swift_mutable_project_boxed_opaque_existential_1(&v75, v76);
  v59 = v52;
  MEMORY[0x28223BE20](v10);
  v12 = (v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v13 + 16))(v12);
  v14 = *v12;
  v15 = type metadata accessor for AnalyticsServiceImpl();
  v71 = v15;
  v72 = &off_2879539D0;
  *&v70 = v14;
  type metadata accessor for MoveSpeakerUnsupportedValueStrategy(0);
  v16 = swift_allocObject();
  v17 = __swift_mutable_project_boxed_opaque_existential_1(&v70, v15);
  v56 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v57 = ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = (v52 - v57);
  v21 = *(v20 + 16);
  v54 = v20 + 16;
  v55 = v21;
  v21(v52 - v57);
  v22 = *v19;
  v16[16] = v15;
  v16[17] = &off_2879539D0;
  v16[13] = v22;
  sub_2688E6514(v82, (v16 + 2));
  v58 = type metadata accessor for DialogProvider();
  v23 = swift_allocObject();
  sub_2688E6514(v81, v23 + 16);
  v16[7] = v23;
  sub_2688E6514(&v78, (v16 + 8));
  sub_2688E6514(&v73, (v16 + 18));
  __swift_destroy_boxed_opaque_existential_0Tm(&v70);
  __swift_destroy_boxed_opaque_existential_0Tm(&v75);
  *&v82[0] = v16;
  sub_268B098E0(&qword_2802A8B48, type metadata accessor for MoveSpeakerUnsupportedValueStrategy, &unk_268B43468);
  sub_268B34994();

  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A8B28, &qword_268B50B48);
  v60 = a1;
  sub_268B349F4();
  sub_268B34954();
  sub_268B349D4();
  sub_268B354A4();
  sub_268AF8FAC();
  v79 = v53;
  v80 = MEMORY[0x277D5F6F8];
  __swift_allocate_boxed_opaque_existential_1(&v78);
  sub_268B36F34();
  v24 = sub_268B36C54();
  v25 = sub_268B36C44();
  v76 = v24;
  v77 = MEMORY[0x277D5F680];
  *&v75 = v25;
  sub_268AF90C4();
  v26 = type metadata accessor for DisplayContextProvider();
  v27 = swift_allocObject();
  v28 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v29 = sub_26892CB58(0xD00000000000001FLL, 0x8000000268B575F0);
  sub_268AF7A24();
  sub_268B34C64();
  v30 = __swift_mutable_project_boxed_opaque_existential_1(&v73, v74);
  v53 = v52;
  MEMORY[0x28223BE20](v30);
  v32 = (v52 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v33 + 16))(v32);
  v34 = *v32;
  v68[3] = v15;
  v68[4] = &off_2879539D0;
  v68[0] = v34;
  v67 = &off_287953E00;
  v66 = v26;
  v65[0] = v27;
  v63 = &type metadata for UserDefaultsProviderImpl;
  v64 = &off_287952DF0;
  v62[0] = v29;
  type metadata accessor for MoveSpeakerHandleIntentStrategy();
  v35 = swift_allocObject();
  v36 = __swift_mutable_project_boxed_opaque_existential_1(v68, v15);
  v52[1] = v52;
  MEMORY[0x28223BE20](v36);
  v37 = (v52 - v57);
  v55(v52 - v57);
  v38 = __swift_mutable_project_boxed_opaque_existential_1(v65, v66);
  v57 = v52;
  MEMORY[0x28223BE20](v38);
  v40 = (v52 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v41 + 16))(v40);
  v42 = __swift_mutable_project_boxed_opaque_existential_1(v62, v63);
  MEMORY[0x28223BE20](v42);
  v44 = (v52 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v45 + 16))(v44);
  v46 = *v37;
  v47 = *v40;
  v48 = *v44;
  v35[21] = v15;
  v35[22] = &off_2879539D0;
  v35[18] = v46;
  v35[26] = v26;
  v35[27] = &off_287953E00;
  v35[23] = v47;
  v35[31] = &type metadata for UserDefaultsProviderImpl;
  v35[32] = &off_287952DF0;
  v35[28] = v48;
  sub_26890C900(v82, (v35 + 3));
  v49 = swift_allocObject();
  sub_2688E6514(v81, v49 + 16);
  v35[2] = v49;
  sub_2688E6514(&v78, (v35 + 8));
  sub_2688E6514(&v75, (v35 + 13));
  sub_2688E6514(&v70, (v35 + 33));
  type metadata accessor for AceServiceHelper();
  v50 = swift_allocObject();
  sub_2688E6514(v82, v50 + 16);
  sub_2688E6514(&v69, v50 + 56);
  v35[38] = v50;
  __swift_destroy_boxed_opaque_existential_0Tm(v62);
  __swift_destroy_boxed_opaque_existential_0Tm(v65);
  __swift_destroy_boxed_opaque_existential_0Tm(v68);
  __swift_destroy_boxed_opaque_existential_0Tm(&v73);
  *&v82[0] = v35;
  sub_268B098E0(&qword_2802A8B50, type metadata accessor for MoveSpeakerHandleIntentStrategy, &unk_268B48164);
  sub_268B34944();

  sub_268B349C4();
}

uint64_t sub_268AFF0CC@<X0>(uint64_t a1@<X8>)
{
  v56 = sub_268B36F44();
  v54 = *(v56 - 8);
  v2 = MEMORY[0x28223BE20](v56);
  v51 = v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v52 = v47 - v4;
  v5 = sub_268B37A54();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v5, qword_2802CDA10);
  (*(v6 + 16))(v8, v9, v5);
  v10 = sub_268B37A34();
  v11 = sub_268B37F04();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_2688BB000, v10, v11, "RCHChildFlowProducers.whatDidTheySayFlowProducers() called", v12, 2u);
    MEMORY[0x26D6266E0](v12, -1, -1);
  }

  (*(v6 + 8))(v8, v5);
  type metadata accessor for WhatDidTheySayIntent();
  type metadata accessor for WhatDidTheySayIntentResponse();
  sub_268B34A24();
  sub_268B368F4();
  swift_allocObject();
  v53 = sub_268B368C4();
  sub_268B354A4();
  sub_268AF8FAC();
  sub_268AF90C4();
  sub_268AF7A24();
  v13 = __swift_mutable_project_boxed_opaque_existential_1(&v67, v68);
  v47[0] = v47;
  MEMORY[0x28223BE20](v13);
  v15 = (v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15);
  v17 = *v15;
  v18 = type metadata accessor for AnalyticsServiceImpl();
  v62 = v18;
  v63 = &off_2879539D0;
  v61[0] = v17;
  v55 = type metadata accessor for WhatDidTheySayConfirmIntentStrategy();
  v19 = swift_allocObject();
  v20 = __swift_mutable_project_boxed_opaque_existential_1(v61, v18);
  v57 = a1;
  v49 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v50 = (v21 + 15) & 0xFFFFFFFFFFFFFFF0;
  v22 = (v47 - v50);
  v24 = *(v23 + 16);
  v47[2] = v23 + 16;
  v48 = v24;
  v24(v47 - v50);
  v25 = *v22;
  v19[11] = v18;
  v19[12] = &off_2879539D0;
  v19[8] = v25;
  sub_2688E6514(v71, (v19 + 2));
  sub_26890C900(v70, v60);
  v47[1] = type metadata accessor for DialogProvider();
  v26 = swift_allocObject();
  sub_2688E6514(v60, v26 + 16);
  v19[7] = v26;
  sub_2688E6514(v70, (v19 + 18));
  sub_2688E6514(&v64, (v19 + 13));
  __swift_destroy_boxed_opaque_existential_0Tm(v61);
  __swift_destroy_boxed_opaque_existential_0Tm(&v67);
  sub_268B34954();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A8A70, &qword_268B50AF0);
  sub_268B349D4();
  sub_268B354A4();
  sub_268AF8FAC();
  v27 = v52;
  sub_268B36F34();
  sub_268AF90C4();
  sub_268AF7A24();
  v28 = __swift_mutable_project_boxed_opaque_existential_1(&v67, v68);
  MEMORY[0x28223BE20](v28);
  (*(v30 + 16))(v47 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = v54;
  v32 = v56;
  (*(v54 + 16))(v51, v27, v56);
  sub_268B09618();
  v34 = v33;
  (*(v31 + 8))(v27, v32);
  __swift_destroy_boxed_opaque_existential_0Tm(&v67);
  *&v71[0] = v34;
  type metadata accessor for WhatDidTheySayUnsupportedValueStrategy(0);
  sub_268B098E0(&qword_2802A8A90, type metadata accessor for WhatDidTheySayUnsupportedValueStrategy, &unk_268B43468);
  sub_268B34994();

  sub_268B349F4();
  type metadata accessor for WhatDidTheySayHandleIntentStrategy();
  sub_2689E5FC8();
  *&v71[0] = v35;
  sub_268B098E0(&qword_2802A8A98, type metadata accessor for WhatDidTheySayHandleIntentStrategy, &unk_268B42BF8);
  sub_268B34944();

  sub_268B349C4();
  sub_268B354A4();
  sub_268AF8FAC();
  v68 = v32;
  v69 = MEMORY[0x277D5F6F8];
  __swift_allocate_boxed_opaque_existential_1(&v67);
  sub_268B36F34();
  v65 = sub_268B374D4();
  v66 = MEMORY[0x277D5F8B0];
  __swift_allocate_boxed_opaque_existential_1(&v64);
  sub_268B374C4();
  sub_268AF90C4();
  sub_268AF7A24();
  v36 = __swift_mutable_project_boxed_opaque_existential_1(v61, v62);
  MEMORY[0x28223BE20](v36);
  v38 = (v47 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v39 + 16))(v38);
  v40 = *v38;
  v59[3] = v18;
  v59[4] = &off_2879539D0;
  v59[0] = v40;
  type metadata accessor for WhatDidTheySayDeviceDisambiguationStrategy();
  v41 = swift_allocObject();
  v42 = __swift_mutable_project_boxed_opaque_existential_1(v59, v18);
  MEMORY[0x28223BE20](v42);
  v43 = (v47 - v50);
  v48(v47 - v50);
  v44 = *v43;
  v41[21] = v18;
  v41[22] = &off_2879539D0;
  v41[18] = v44;
  sub_2688E6514(v71, (v41 + 2));
  sub_26890C900(v70, v58);
  v45 = swift_allocObject();
  sub_2688E6514(v58, v45 + 16);
  v41[7] = v45;
  sub_2688E6514(&v67, (v41 + 8));
  sub_2688E6514(&v64, (v41 + 13));
  sub_2688E6514(v70, (v41 + 28));
  sub_2688E6514(v60, (v41 + 23));
  __swift_destroy_boxed_opaque_existential_0Tm(v59);
  __swift_destroy_boxed_opaque_existential_0Tm(v61);
  *&v71[0] = v41;
  sub_268B098E0(&qword_2802A7888, type metadata accessor for WhatDidTheySayDeviceDisambiguationStrategy, &unk_268B47900);
  sub_268B34974();

  sub_268B34A14();
  *&v71[0] = v19;
  sub_268B098E0(&qword_2802A7F90, type metadata accessor for WhatDidTheySayConfirmIntentStrategy, &unk_268B4B754);

  sub_268B34984();

  sub_268B349E4();
}

uint64_t sub_268AFFB48@<X0>(uint64_t a1@<X8>)
{
  v86 = sub_268B36F44();
  v77 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v76 = v75 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_268B37A54();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v3, qword_2802CDA10);
  (*(v4 + 16))(v6, v7, v3);
  v8 = sub_268B37A34();
  v9 = sub_268B37F04();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_2688BB000, v8, v9, "RCHChildFlowProducers.setRepeatStateFlowProducers() called", v10, 2u);
    MEMORY[0x26D6266E0](v10, -1, -1);
  }

  (*(v4 + 8))(v6, v3);
  type metadata accessor for SetRepeatStateIntent();
  type metadata accessor for SetRepeatStateIntentResponse();
  sub_268B34A24();
  sub_268B368F4();
  swift_allocObject();
  v75[5] = sub_268B368C4();
  sub_268B354A4();
  sub_268AF8FAC();
  sub_268AF90C4();
  sub_268AF7A24();
  v11 = __swift_mutable_project_boxed_opaque_existential_1(&v104, v105);
  v85 = v75;
  MEMORY[0x28223BE20](v11);
  v13 = (v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13);
  v15 = *v13;
  v16 = type metadata accessor for AnalyticsServiceImpl();
  v79 = a1;
  v17 = v16;
  v99 = v16;
  v100 = &off_2879539D0;
  *&v98 = v15;
  v75[4] = type metadata accessor for SetRepeatStateConfirmIntentStrategy();
  v18 = swift_allocObject();
  v19 = __swift_mutable_project_boxed_opaque_existential_1(&v98, v17);
  v82 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v83 = (v20 + 15) & 0xFFFFFFFFFFFFFFF0;
  v21 = (v75 - v83);
  v23 = *(v22 + 16);
  v80 = v22 + 16;
  v81 = v23;
  v23(v75 - v83);
  v24 = *v21;
  v18[11] = v17;
  v18[12] = &off_2879539D0;
  v18[8] = v24;
  sub_2688E6514(v108, (v18 + 2));
  v78 = type metadata accessor for DialogProvider();
  v25 = swift_allocObject();
  sub_2688E6514(v107, v25 + 16);
  v84 = v18;
  v18[7] = v25;
  sub_2688E6514(&v101, (v18 + 13));
  __swift_destroy_boxed_opaque_existential_0Tm(&v98);
  __swift_destroy_boxed_opaque_existential_0Tm(&v104);
  sub_268B34954();
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A8BD0, &qword_268B50BA0);
  sub_268B349D4();
  sub_268B354A4();
  sub_268AF8FAC();
  v26 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v27 = sub_26892CB58(0xD00000000000001FLL, 0x8000000268B575F0);
  sub_268AF90C4();
  v102 = v86;
  v103 = MEMORY[0x277D5F6F8];
  __swift_allocate_boxed_opaque_existential_1(&v101);
  sub_268B36F34();
  v28 = sub_268B36C54();
  v29 = sub_268B36C44();
  v99 = v28;
  v100 = MEMORY[0x277D5F680];
  *&v98 = v29;
  v30 = type metadata accessor for DisplayContextProvider();
  v31 = swift_allocObject();
  sub_268AF7A24();
  sub_268B34C64();
  v32 = __swift_mutable_project_boxed_opaque_existential_1(&v104, v105);
  v75[3] = v75;
  MEMORY[0x28223BE20](v32);
  v34 = (v75 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v35 + 16))(v34);
  v36 = *v34;
  v91[3] = &type metadata for UserDefaultsProviderImpl;
  v91[4] = &off_287952DF0;
  v91[0] = v27;
  v90[3] = v17;
  v90[4] = &off_2879539D0;
  v90[0] = v36;
  v88 = v30;
  v89 = &off_287953E00;
  v87[0] = v31;
  v75[2] = type metadata accessor for SetRepeatStateHandleIntentStrategy();
  v37 = swift_allocObject();
  v38 = __swift_mutable_project_boxed_opaque_existential_1(v91, &type metadata for UserDefaultsProviderImpl);
  v75[1] = v75;
  MEMORY[0x28223BE20](v38);
  v40 = (v75 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v41 + 16))(v40);
  v42 = __swift_mutable_project_boxed_opaque_existential_1(v90, v17);
  v75[0] = v75;
  MEMORY[0x28223BE20](v42);
  v43 = (v75 - v83);
  v81(v75 - v83);
  v44 = __swift_mutable_project_boxed_opaque_existential_1(v87, v88);
  MEMORY[0x28223BE20](v44);
  v46 = (v75 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v47 + 16))(v46);
  v48 = *v40;
  v49 = *v43;
  v50 = *v46;
  v37[11] = &type metadata for UserDefaultsProviderImpl;
  v37[12] = &off_287952DF0;
  v37[8] = v48;
  v37[16] = v17;
  v37[17] = &off_2879539D0;
  v37[13] = v49;
  v37[31] = v30;
  v37[32] = &off_287953E00;
  v37[28] = v50;
  sub_26890C900(v108, (v37 + 2));
  v51 = swift_allocObject();
  sub_2688E6514(v107, v51 + 16);
  v37[7] = v51;
  sub_2688E6514(&v101, (v37 + 18));
  sub_2688E6514(&v98, (v37 + 23));
  sub_2688E6514(&v95, (v37 + 33));
  type metadata accessor for AceServiceHelper();
  v52 = swift_allocObject();
  sub_2688E6514(v108, v52 + 16);
  sub_2688E6514(&v92, v52 + 56);
  v37[38] = v52;
  __swift_destroy_boxed_opaque_existential_0Tm(v87);
  __swift_destroy_boxed_opaque_existential_0Tm(v90);
  __swift_destroy_boxed_opaque_existential_0Tm(v91);
  __swift_destroy_boxed_opaque_existential_0Tm(&v104);
  *&v108[0] = v37;
  sub_268B098E0(&qword_2802A8BF0, type metadata accessor for SetRepeatStateHandleIntentStrategy, &unk_268B4A0A8);
  sub_268B34944();

  sub_268B349C4();
  sub_268B354A4();
  sub_268AF8FAC();
  v105 = v86;
  v106 = MEMORY[0x277D5F6F8];
  __swift_allocate_boxed_opaque_existential_1(&v104);
  sub_268B36F34();
  v102 = sub_268B374D4();
  v103 = MEMORY[0x277D5F8B0];
  __swift_allocate_boxed_opaque_existential_1(&v101);
  sub_268B374C4();
  sub_268AF90C4();
  sub_268AF7A24();
  v53 = __swift_mutable_project_boxed_opaque_existential_1(&v98, v99);
  MEMORY[0x28223BE20](v53);
  v55 = (v75 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v56 + 16))(v55);
  v57 = *v55;
  v93 = v17;
  v94 = &off_2879539D0;
  *&v92 = v57;
  type metadata accessor for SetRepeatStateDeviceDisambiguationStrategy();
  v58 = swift_allocObject();
  v59 = __swift_mutable_project_boxed_opaque_existential_1(&v92, v17);
  MEMORY[0x28223BE20](v59);
  v60 = (v75 - v83);
  v81(v75 - v83);
  v61 = *v60;
  v58[21] = v17;
  v58[22] = &off_2879539D0;
  v58[18] = v61;
  sub_2688E6514(v108, (v58 + 2));
  v62 = swift_allocObject();
  sub_2688E6514(v107, v62 + 16);
  v58[7] = v62;
  sub_2688E6514(&v104, (v58 + 8));
  sub_2688E6514(&v101, (v58 + 13));
  sub_2688E6514(&v95, (v58 + 23));
  __swift_destroy_boxed_opaque_existential_0Tm(&v92);
  __swift_destroy_boxed_opaque_existential_0Tm(&v98);
  *&v108[0] = v58;
  sub_268B098E0(&qword_2802A6FD8, type metadata accessor for SetRepeatStateDeviceDisambiguationStrategy, &unk_268B43AD0);
  sub_268B34974();

  sub_268B34A14();
  *&v108[0] = v84;
  sub_268B098E0(&qword_2802A6D70, type metadata accessor for SetRepeatStateConfirmIntentStrategy, &unk_268B428C4);

  sub_268B34984();

  sub_268B349E4();
  sub_268B354A4();
  sub_268AF8FAC();
  v63 = v76;
  sub_268B36F34();
  sub_268AF90C4();
  sub_268AF7A24();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A8BF8, &qword_268B50BB8);
  v64 = swift_allocObject();
  v65 = __swift_mutable_project_boxed_opaque_existential_1(&v104, v105);
  MEMORY[0x28223BE20](v65);
  v67 = (v75 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v68 + 16))(v67);
  v69 = *v67;
  v70 = v86;
  v99 = v86;
  v100 = MEMORY[0x277D5F6F8];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v98);
  v72 = v77;
  (*(v77 + 16))(boxed_opaque_existential_1, v63, v70);
  v96 = v17;
  v97 = &off_2879539D0;
  *&v95 = v69;
  (*(v72 + 8))(v63, v70);
  sub_2688E6514(v108, v64 + 16);
  v73 = swift_allocObject();
  sub_2688E6514(v107, v73 + 16);
  *(v64 + 56) = v73;
  sub_2688E6514(&v98, v64 + 64);
  sub_2688E6514(&v95, v64 + 104);
  sub_2688E6514(&v101, v64 + 144);
  __swift_destroy_boxed_opaque_existential_0Tm(&v104);
  *&v108[0] = v64;
  sub_2688F4354(&qword_2802A8C00, &qword_2802A8BF8, &qword_268B50BB8, &unk_268B43468);
  sub_268B34994();

  sub_268B349F4();
}

uint64_t sub_268B00A08@<X0>(uint64_t a1@<X8>)
{
  v86 = sub_268B36F44();
  v77 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v76 = v75 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_268B37A54();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v3, qword_2802CDA10);
  (*(v4 + 16))(v6, v7, v3);
  v8 = sub_268B37A34();
  v9 = sub_268B37F04();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_2688BB000, v8, v9, "RCHChildFlowProducers.skipTimeFlowProducers() called", v10, 2u);
    MEMORY[0x26D6266E0](v10, -1, -1);
  }

  (*(v4 + 8))(v6, v3);
  type metadata accessor for SkipTimeIntent();
  type metadata accessor for SkipTimeIntentResponse();
  sub_268B34A24();
  sub_268B368F4();
  swift_allocObject();
  v75[5] = sub_268B368C4();
  sub_268B354A4();
  sub_268AF8FAC();
  sub_268AF90C4();
  sub_268AF7A24();
  v11 = __swift_mutable_project_boxed_opaque_existential_1(&v104, v105);
  v85 = v75;
  MEMORY[0x28223BE20](v11);
  v13 = (v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13);
  v15 = *v13;
  v16 = type metadata accessor for AnalyticsServiceImpl();
  v79 = a1;
  v17 = v16;
  v99 = v16;
  v100 = &off_2879539D0;
  *&v98 = v15;
  v75[4] = type metadata accessor for SkipTimeConfirmIntentStrategy();
  v18 = swift_allocObject();
  v19 = __swift_mutable_project_boxed_opaque_existential_1(&v98, v17);
  v82 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v83 = (v20 + 15) & 0xFFFFFFFFFFFFFFF0;
  v21 = (v75 - v83);
  v23 = *(v22 + 16);
  v80 = v22 + 16;
  v81 = v23;
  v23(v75 - v83);
  v24 = *v21;
  v18[11] = v17;
  v18[12] = &off_2879539D0;
  v18[8] = v24;
  sub_2688E6514(v108, (v18 + 2));
  v78 = type metadata accessor for DialogProvider();
  v25 = swift_allocObject();
  sub_2688E6514(v107, v25 + 16);
  v84 = v18;
  v18[7] = v25;
  sub_2688E6514(&v101, (v18 + 13));
  __swift_destroy_boxed_opaque_existential_0Tm(&v98);
  __swift_destroy_boxed_opaque_existential_0Tm(&v104);
  sub_268B34954();
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A8B60, &qword_268B50B60);
  sub_268B349D4();
  sub_268B354A4();
  sub_268AF8FAC();
  v26 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v27 = sub_26892CB58(0xD00000000000001FLL, 0x8000000268B575F0);
  v28 = sub_268B36C54();
  v29 = sub_268B36C44();
  v105 = v28;
  v106 = MEMORY[0x277D5F680];
  *&v104 = v29;
  sub_268AF90C4();
  v99 = v86;
  v100 = MEMORY[0x277D5F6F8];
  __swift_allocate_boxed_opaque_existential_1(&v98);
  sub_268B36F34();
  v30 = type metadata accessor for DisplayContextProvider();
  v31 = swift_allocObject();
  sub_268AF7A24();
  sub_268B34C64();
  v32 = __swift_mutable_project_boxed_opaque_existential_1(&v101, v102);
  v75[3] = v75;
  MEMORY[0x28223BE20](v32);
  v34 = (v75 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v35 + 16))(v34);
  v36 = *v34;
  v91[3] = &type metadata for UserDefaultsProviderImpl;
  v91[4] = &off_287952DF0;
  v91[0] = v27;
  v90[3] = v17;
  v90[4] = &off_2879539D0;
  v90[0] = v36;
  v88 = v30;
  v89 = &off_287953E00;
  v87[0] = v31;
  v75[2] = type metadata accessor for SkipTimeHandleIntentStrategy();
  v37 = swift_allocObject();
  v38 = __swift_mutable_project_boxed_opaque_existential_1(v91, &type metadata for UserDefaultsProviderImpl);
  v75[1] = v75;
  MEMORY[0x28223BE20](v38);
  v40 = (v75 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v41 + 16))(v40);
  v42 = __swift_mutable_project_boxed_opaque_existential_1(v90, v17);
  v75[0] = v75;
  MEMORY[0x28223BE20](v42);
  v43 = (v75 - v83);
  v81(v75 - v83);
  v44 = __swift_mutable_project_boxed_opaque_existential_1(v87, v88);
  MEMORY[0x28223BE20](v44);
  v46 = (v75 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v47 + 16))(v46);
  v48 = *v40;
  v49 = *v43;
  v50 = *v46;
  v37[11] = &type metadata for UserDefaultsProviderImpl;
  v37[12] = &off_287952DF0;
  v37[8] = v48;
  v37[21] = v17;
  v37[22] = &off_2879539D0;
  v37[18] = v49;
  v37[31] = v30;
  v37[32] = &off_287953E00;
  v37[28] = v50;
  sub_26890C900(v108, (v37 + 2));
  v51 = swift_allocObject();
  sub_2688E6514(v107, v51 + 16);
  v37[7] = v51;
  sub_2688E6514(&v104, (v37 + 13));
  sub_2688E6514(&v98, (v37 + 23));
  sub_2688E6514(&v95, (v37 + 33));
  type metadata accessor for AceServiceHelper();
  v52 = swift_allocObject();
  sub_2688E6514(v108, v52 + 16);
  sub_2688E6514(&v92, v52 + 56);
  v37[38] = v52;
  __swift_destroy_boxed_opaque_existential_0Tm(v87);
  __swift_destroy_boxed_opaque_existential_0Tm(v90);
  __swift_destroy_boxed_opaque_existential_0Tm(v91);
  __swift_destroy_boxed_opaque_existential_0Tm(&v101);
  *&v108[0] = v37;
  sub_268B098E0(&qword_2802A8B80, type metadata accessor for SkipTimeHandleIntentStrategy, &unk_268B43D64);
  sub_268B34944();

  sub_268B349C4();
  sub_268B354A4();
  sub_268AF8FAC();
  v105 = v86;
  v106 = MEMORY[0x277D5F6F8];
  __swift_allocate_boxed_opaque_existential_1(&v104);
  sub_268B36F34();
  v102 = sub_268B374D4();
  v103 = MEMORY[0x277D5F8B0];
  __swift_allocate_boxed_opaque_existential_1(&v101);
  sub_268B374C4();
  sub_268AF90C4();
  sub_268AF7A24();
  v53 = __swift_mutable_project_boxed_opaque_existential_1(&v98, v99);
  MEMORY[0x28223BE20](v53);
  v55 = (v75 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v56 + 16))(v55);
  v57 = *v55;
  v93 = v17;
  v94 = &off_2879539D0;
  *&v92 = v57;
  type metadata accessor for SkipTimeDeviceDisambiguationStrategy();
  v58 = swift_allocObject();
  v59 = __swift_mutable_project_boxed_opaque_existential_1(&v92, v17);
  MEMORY[0x28223BE20](v59);
  v60 = (v75 - v83);
  v81(v75 - v83);
  v61 = *v60;
  v58[21] = v17;
  v58[22] = &off_2879539D0;
  v58[18] = v61;
  sub_2688E6514(v108, (v58 + 2));
  v62 = swift_allocObject();
  sub_2688E6514(v107, v62 + 16);
  v58[7] = v62;
  sub_2688E6514(&v104, (v58 + 8));
  sub_2688E6514(&v101, (v58 + 13));
  sub_2688E6514(&v95, (v58 + 23));
  __swift_destroy_boxed_opaque_existential_0Tm(&v92);
  __swift_destroy_boxed_opaque_existential_0Tm(&v98);
  *&v108[0] = v58;
  sub_268B098E0(&qword_2802A6598, type metadata accessor for SkipTimeDeviceDisambiguationStrategy, &unk_268B3FB48);
  sub_268B34974();

  sub_268B34A14();
  *&v108[0] = v84;
  sub_268B098E0(&qword_2802A77B8, type metadata accessor for SkipTimeConfirmIntentStrategy, &unk_268B46CC0);

  sub_268B34984();

  sub_268B349E4();
  sub_268B354A4();
  sub_268AF8FAC();
  v63 = v76;
  sub_268B36F34();
  sub_268AF90C4();
  sub_268AF7A24();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A8B88, &qword_268B50B78);
  v64 = swift_allocObject();
  v65 = __swift_mutable_project_boxed_opaque_existential_1(&v104, v105);
  MEMORY[0x28223BE20](v65);
  v67 = (v75 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v68 + 16))(v67);
  v69 = *v67;
  v70 = v86;
  v99 = v86;
  v100 = MEMORY[0x277D5F6F8];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v98);
  v72 = v77;
  (*(v77 + 16))(boxed_opaque_existential_1, v63, v70);
  v96 = v17;
  v97 = &off_2879539D0;
  *&v95 = v69;
  (*(v72 + 8))(v63, v70);
  sub_2688E6514(v108, v64 + 16);
  v73 = swift_allocObject();
  sub_2688E6514(v107, v73 + 16);
  *(v64 + 56) = v73;
  sub_2688E6514(&v98, v64 + 64);
  sub_2688E6514(&v95, v64 + 104);
  sub_2688E6514(&v101, v64 + 144);
  __swift_destroy_boxed_opaque_existential_0Tm(&v104);
  *&v108[0] = v64;
  sub_2688F4354(&qword_2802A8B90, &qword_2802A8B88, &qword_268B50B78, &unk_268B43468);
  sub_268B34994();

  sub_268B349F4();
}

uint64_t sub_268B018D0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_268B37A54();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v2, qword_2802CDA10);
  (*(v3 + 16))(v5, v6, v2);
  v7 = sub_268B37A34();
  v8 = sub_268B37ED4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_2688BB000, v7, v8, "RCHChildFlowProducers.setPlaybackSpeedFlowProducers() called", v9, 2u);
    MEMORY[0x26D6266E0](v9, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  type metadata accessor for SetPlaybackSpeedIntent();
  type metadata accessor for SetPlaybackSpeedIntentResponse();
  sub_268B34A24();
  sub_268B368F4();
  swift_allocObject();
  v47 = sub_268B368C4();
  sub_268B34954();
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A8C38, &qword_268B50BD8);
  sub_268B349D4();
  sub_268B354A4();
  sub_268AF8FAC();
  sub_268AF90C4();
  v10 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v11 = sub_26892CB58(0xD00000000000001FLL, 0x8000000268B575F0);
  v49 = a1;
  v12 = v11;
  v46 = sub_268B36F44();
  v61 = v46;
  v62 = MEMORY[0x277D5F6F8];
  __swift_allocate_boxed_opaque_existential_1(&v60);
  sub_268B36F34();
  v13 = sub_268B36C54();
  v14 = sub_268B36C44();
  v58 = v13;
  v59 = MEMORY[0x277D5F680];
  *&v57 = v14;
  sub_268AF7A24();
  v15 = __swift_mutable_project_boxed_opaque_existential_1(&v63, v64);
  v43[2] = v43;
  MEMORY[0x28223BE20](v15);
  v17 = (v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v18 + 16))(v17);
  v19 = *v17;
  v20 = type metadata accessor for AnalyticsServiceImpl();
  v53[4] = &off_2879539D0;
  v53[3] = v20;
  v53[0] = v19;
  v51 = &type metadata for UserDefaultsProviderImpl;
  v52 = &off_287952DF0;
  v50[0] = v12;
  type metadata accessor for SetPlaybackSpeedHandleIntentStrategy();
  v21 = swift_allocObject();
  v22 = __swift_mutable_project_boxed_opaque_existential_1(v53, v20);
  v43[0] = v43;
  v23 = *(v20 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v44 = *(v23 + 16);
  v45 = (v24 + 15) & 0xFFFFFFFFFFFFFFF0;
  v44(v43 - v45);
  v25 = __swift_mutable_project_boxed_opaque_existential_1(v50, v51);
  MEMORY[0x28223BE20](v25);
  v27 = (v43 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v28 + 16))(v27);
  v29 = *(v43 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = *v27;
  v21[11] = v20;
  v21[12] = &off_2879539D0;
  v21[8] = v29;
  v21[26] = &type metadata for UserDefaultsProviderImpl;
  v21[27] = &off_287952DF0;
  v21[23] = v30;
  sub_2688E6514(v67, (v21 + 2));
  v43[1] = type metadata accessor for DialogProvider();
  v31 = swift_allocObject();
  sub_2688E6514(v66, v31 + 16);
  v21[7] = v31;
  sub_2688E6514(&v60, (v21 + 13));
  sub_2688E6514(&v57, (v21 + 18));
  sub_2688E6514(&v54, (v21 + 28));
  __swift_destroy_boxed_opaque_existential_0Tm(v50);
  __swift_destroy_boxed_opaque_existential_0Tm(v53);
  __swift_destroy_boxed_opaque_existential_0Tm(&v63);
  *&v67[0] = v21;
  sub_268B098E0(&qword_2802A8C58, type metadata accessor for SetPlaybackSpeedHandleIntentStrategy, &unk_268B4491C);
  sub_268B34944();

  sub_268B349C4();
  sub_268B354A4();
  sub_268AF8FAC();
  v64 = v46;
  v65 = MEMORY[0x277D5F6F8];
  __swift_allocate_boxed_opaque_existential_1(&v63);
  sub_268B36F34();
  sub_268AF90C4();
  sub_268AF7A24();
  v32 = __swift_mutable_project_boxed_opaque_existential_1(&v60, v61);
  MEMORY[0x28223BE20](v32);
  v34 = (v43 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v35 + 16))(v34);
  v36 = *v34;
  v55 = v20;
  v56 = &off_2879539D0;
  *&v54 = v36;
  type metadata accessor for SetPlaybackSpeedUnsupportedValueStrategy(0);
  v37 = swift_allocObject();
  v38 = __swift_mutable_project_boxed_opaque_existential_1(&v54, v20);
  MEMORY[0x28223BE20](v38);
  v39 = (v43 - v45);
  v44(v43 - v45);
  v40 = *v39;
  v37[16] = v20;
  v37[17] = &off_2879539D0;
  v37[13] = v40;
  sub_2688E6514(v67, (v37 + 2));
  v41 = swift_allocObject();
  sub_2688E6514(v66, v41 + 16);
  v37[7] = v41;
  sub_2688E6514(&v63, (v37 + 8));
  sub_2688E6514(&v57, (v37 + 18));
  __swift_destroy_boxed_opaque_existential_0Tm(&v54);
  __swift_destroy_boxed_opaque_existential_0Tm(&v60);
  *&v67[0] = v37;
  sub_268B098E0(&qword_2802A8C60, type metadata accessor for SetPlaybackSpeedUnsupportedValueStrategy, &unk_268B43468);
  sub_268B34994();

  sub_268B349F4();
}

uint64_t sub_268B0214C@<X0>(uint64_t a1@<X8>)
{
  v86 = sub_268B36F44();
  v77 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v76 = v75 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_268B37A54();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v3, qword_2802CDA10);
  (*(v4 + 16))(v6, v7, v3);
  v8 = sub_268B37A34();
  v9 = sub_268B37F04();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_2688BB000, v8, v9, "RCHChildFlowProducers.skipContentFlowProducers() called", v10, 2u);
    MEMORY[0x26D6266E0](v10, -1, -1);
  }

  (*(v4 + 8))(v6, v3);
  type metadata accessor for SkipContentIntent();
  type metadata accessor for SkipContentIntentResponse();
  sub_268B34A24();
  sub_268B368F4();
  swift_allocObject();
  v75[5] = sub_268B368C4();
  sub_268B354A4();
  sub_268AF8FAC();
  sub_268AF90C4();
  sub_268AF7A24();
  v11 = __swift_mutable_project_boxed_opaque_existential_1(&v104, v105);
  v85 = v75;
  MEMORY[0x28223BE20](v11);
  v13 = (v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13);
  v15 = *v13;
  v16 = type metadata accessor for AnalyticsServiceImpl();
  v79 = a1;
  v17 = v16;
  v99 = v16;
  v100 = &off_2879539D0;
  *&v98 = v15;
  v75[4] = type metadata accessor for SkipContentConfirmIntentStrategy();
  v18 = swift_allocObject();
  v19 = __swift_mutable_project_boxed_opaque_existential_1(&v98, v17);
  v82 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v83 = (v20 + 15) & 0xFFFFFFFFFFFFFFF0;
  v21 = (v75 - v83);
  v23 = *(v22 + 16);
  v80 = v22 + 16;
  v81 = v23;
  v23(v75 - v83);
  v24 = *v21;
  v18[11] = v17;
  v18[12] = &off_2879539D0;
  v18[8] = v24;
  sub_2688E6514(v108, (v18 + 2));
  v78 = type metadata accessor for DialogProvider();
  v25 = swift_allocObject();
  sub_2688E6514(v107, v25 + 16);
  v84 = v18;
  v18[7] = v25;
  sub_2688E6514(&v101, (v18 + 13));
  __swift_destroy_boxed_opaque_existential_0Tm(&v98);
  __swift_destroy_boxed_opaque_existential_0Tm(&v104);
  sub_268B34954();
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A8B98, &qword_268B50B80);
  sub_268B349D4();
  sub_268B354A4();
  sub_268AF8FAC();
  v26 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v27 = sub_26892CB58(0xD00000000000001FLL, 0x8000000268B575F0);
  v28 = sub_268B36C54();
  v29 = sub_268B36C44();
  v105 = v28;
  v106 = MEMORY[0x277D5F680];
  *&v104 = v29;
  sub_268AF90C4();
  v99 = v86;
  v100 = MEMORY[0x277D5F6F8];
  __swift_allocate_boxed_opaque_existential_1(&v98);
  sub_268B36F34();
  v30 = type metadata accessor for DisplayContextProvider();
  v31 = swift_allocObject();
  sub_268AF7A24();
  sub_268B34C64();
  v32 = __swift_mutable_project_boxed_opaque_existential_1(&v101, v102);
  v75[3] = v75;
  MEMORY[0x28223BE20](v32);
  v34 = (v75 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v35 + 16))(v34);
  v36 = *v34;
  v91[3] = &type metadata for UserDefaultsProviderImpl;
  v91[4] = &off_287952DF0;
  v91[0] = v27;
  v90[3] = v17;
  v90[4] = &off_2879539D0;
  v90[0] = v36;
  v88 = v30;
  v89 = &off_287953E00;
  v87[0] = v31;
  v75[2] = type metadata accessor for SkipContentHandleIntentStrategy();
  v37 = swift_allocObject();
  v38 = __swift_mutable_project_boxed_opaque_existential_1(v91, &type metadata for UserDefaultsProviderImpl);
  v75[1] = v75;
  MEMORY[0x28223BE20](v38);
  v40 = (v75 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v41 + 16))(v40);
  v42 = __swift_mutable_project_boxed_opaque_existential_1(v90, v17);
  v75[0] = v75;
  MEMORY[0x28223BE20](v42);
  v43 = (v75 - v83);
  v81(v75 - v83);
  v44 = __swift_mutable_project_boxed_opaque_existential_1(v87, v88);
  MEMORY[0x28223BE20](v44);
  v46 = (v75 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v47 + 16))(v46);
  v48 = *v40;
  v49 = *v43;
  v50 = *v46;
  v37[11] = &type metadata for UserDefaultsProviderImpl;
  v37[12] = &off_287952DF0;
  v37[8] = v48;
  v37[21] = v17;
  v37[22] = &off_2879539D0;
  v37[18] = v49;
  v37[31] = v30;
  v37[32] = &off_287953E00;
  v37[28] = v50;
  sub_26890C900(v108, (v37 + 2));
  v51 = swift_allocObject();
  sub_2688E6514(v107, v51 + 16);
  v37[7] = v51;
  sub_2688E6514(&v104, (v37 + 13));
  sub_2688E6514(&v98, (v37 + 23));
  sub_2688E6514(&v95, (v37 + 33));
  type metadata accessor for AceServiceHelper();
  v52 = swift_allocObject();
  sub_2688E6514(v108, v52 + 16);
  sub_2688E6514(&v92, v52 + 56);
  v37[38] = v52;
  __swift_destroy_boxed_opaque_existential_0Tm(v87);
  __swift_destroy_boxed_opaque_existential_0Tm(v90);
  __swift_destroy_boxed_opaque_existential_0Tm(v91);
  __swift_destroy_boxed_opaque_existential_0Tm(&v101);
  *&v108[0] = v37;
  sub_268B098E0(&qword_2802A8BB8, type metadata accessor for SkipContentHandleIntentStrategy, &unk_268B507C4);
  sub_268B34944();

  sub_268B349C4();
  sub_268B354A4();
  sub_268AF8FAC();
  v105 = v86;
  v106 = MEMORY[0x277D5F6F8];
  __swift_allocate_boxed_opaque_existential_1(&v104);
  sub_268B36F34();
  v102 = sub_268B374D4();
  v103 = MEMORY[0x277D5F8B0];
  __swift_allocate_boxed_opaque_existential_1(&v101);
  sub_268B374C4();
  sub_268AF90C4();
  sub_268AF7A24();
  v53 = __swift_mutable_project_boxed_opaque_existential_1(&v98, v99);
  MEMORY[0x28223BE20](v53);
  v55 = (v75 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v56 + 16))(v55);
  v57 = *v55;
  v93 = v17;
  v94 = &off_2879539D0;
  *&v92 = v57;
  type metadata accessor for SkipContentDeviceDisambiguationStrategy();
  v58 = swift_allocObject();
  v59 = __swift_mutable_project_boxed_opaque_existential_1(&v92, v17);
  MEMORY[0x28223BE20](v59);
  v60 = (v75 - v83);
  v81(v75 - v83);
  v61 = *v60;
  v58[21] = v17;
  v58[22] = &off_2879539D0;
  v58[18] = v61;
  sub_2688E6514(v108, (v58 + 2));
  v62 = swift_allocObject();
  sub_2688E6514(v107, v62 + 16);
  v58[7] = v62;
  sub_2688E6514(&v104, (v58 + 8));
  sub_2688E6514(&v101, (v58 + 13));
  sub_2688E6514(&v95, (v58 + 23));
  __swift_destroy_boxed_opaque_existential_0Tm(&v92);
  __swift_destroy_boxed_opaque_existential_0Tm(&v98);
  *&v108[0] = v58;
  sub_268B098E0(&qword_2802A6BB0, type metadata accessor for SkipContentDeviceDisambiguationStrategy, &unk_268B41D68);
  sub_268B34974();

  sub_268B34A14();
  *&v108[0] = v84;
  sub_268B098E0(&qword_2802A88A0, type metadata accessor for SkipContentConfirmIntentStrategy, &unk_268B501C4);

  sub_268B34984();

  sub_268B349E4();
  sub_268B354A4();
  sub_268AF8FAC();
  v63 = v76;
  sub_268B36F34();
  sub_268AF90C4();
  sub_268AF7A24();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A8BC0, &qword_268B50B98);
  v64 = swift_allocObject();
  v65 = __swift_mutable_project_boxed_opaque_existential_1(&v104, v105);
  MEMORY[0x28223BE20](v65);
  v67 = (v75 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v68 + 16))(v67);
  v69 = *v67;
  v70 = v86;
  v99 = v86;
  v100 = MEMORY[0x277D5F6F8];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v98);
  v72 = v77;
  (*(v77 + 16))(boxed_opaque_existential_1, v63, v70);
  v96 = v17;
  v97 = &off_2879539D0;
  *&v95 = v69;
  (*(v72 + 8))(v63, v70);
  sub_2688E6514(v108, v64 + 16);
  v73 = swift_allocObject();
  sub_2688E6514(v107, v73 + 16);
  *(v64 + 56) = v73;
  sub_2688E6514(&v98, v64 + 64);
  sub_2688E6514(&v95, v64 + 104);
  sub_2688E6514(&v101, v64 + 144);
  __swift_destroy_boxed_opaque_existential_0Tm(&v104);
  *&v108[0] = v64;
  sub_2688F4354(&qword_2802A8BC8, &qword_2802A8BC0, &qword_268B50B98, &unk_268B43468);
  sub_268B34994();

  sub_268B349F4();
}

void sub_268B0300C()
{
  OUTLINED_FUNCTION_26();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A8CA0, &qword_268B50C08);
  OUTLINED_FUNCTION_1_15();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_0_35();
  MEMORY[0x28223BE20](v2);
  v3 = OUTLINED_FUNCTION_25_20();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_8();
  if (qword_2802A4F30 != -1)
  {
    v5 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v6 = OUTLINED_FUNCTION_10_30(v5, qword_2802CDA10);
  v7(v6);
  v8 = sub_268B37A34();
  v9 = sub_268B37F04();
  if (OUTLINED_FUNCTION_33_20(v9))
  {
    v10 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_154_0(v10);
    OUTLINED_FUNCTION_24_20(&dword_2688BB000, v11, v12, "Initializing GetVolumeLevelFlow");
    OUTLINED_FUNCTION_33_1();
  }

  v13 = OUTLINED_FUNCTION_21_19();
  v14(v13);
  sub_268AFC1DC(v0);
  sub_268AD33CC(v40);
  sub_268AF90C4();
  OUTLINED_FUNCTION_28_21();
  OUTLINED_FUNCTION_6_43();
  MEMORY[0x28223BE20](v15);
  v17 = OUTLINED_FUNCTION_2_38(v16, v37);
  v18(v17);
  v19 = OUTLINED_FUNCTION_62_7();
  OUTLINED_FUNCTION_20_22(v19);
  VolumeLevelFlowStrategy = type metadata accessor for GetVolumeLevelFlowStrategy();
  OUTLINED_FUNCTION_59_7(VolumeLevelFlowStrategy);
  OUTLINED_FUNCTION_35_15();
  OUTLINED_FUNCTION_5_32();
  MEMORY[0x28223BE20](v21);
  v23 = OUTLINED_FUNCTION_1_56(v22, v38);
  v24(v23);
  v25 = *v8;
  v3[10] = v19;
  v3[11] = &off_2879539D0;
  v3[7] = v25;
  v26 = OUTLINED_FUNCTION_42_13(v40, (v3 + 2));
  __swift_destroy_boxed_opaque_existential_0Tm(v26);
  __swift_destroy_boxed_opaque_existential_0Tm(&v39);
  v27 = OUTLINED_FUNCTION_8_33();
  v28(v27);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A8CA8, &qword_268B50C10);
  OUTLINED_FUNCTION_245(v29);
  OUTLINED_FUNCTION_270();
  sub_268B349A4();
  OUTLINED_FUNCTION_63_8();
  OUTLINED_FUNCTION_32_14();

  v30 = OUTLINED_FUNCTION_34_14();
  OUTLINED_FUNCTION_40_14(v30);
  OUTLINED_FUNCTION_0_53();
  OUTLINED_FUNCTION_65_7(v31, v32, v33, v34);
  OUTLINED_FUNCTION_30_18();
  OUTLINED_FUNCTION_61_8();

  v35 = OUTLINED_FUNCTION_19_20();
  v36(v35);
  OUTLINED_FUNCTION_37_18();
  OUTLINED_FUNCTION_23();
}

void sub_268B0333C()
{
  OUTLINED_FUNCTION_26();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A8C68, &qword_268B50BF0);
  OUTLINED_FUNCTION_1_15();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_0_35();
  MEMORY[0x28223BE20](v2);
  v3 = OUTLINED_FUNCTION_25_20();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_8();
  if (qword_2802A4F30 != -1)
  {
    v5 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v6 = OUTLINED_FUNCTION_10_30(v5, qword_2802CDA10);
  v7(v6);
  v8 = sub_268B37A34();
  v9 = sub_268B37ED4();
  if (OUTLINED_FUNCTION_33_20(v9))
  {
    v10 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_154_0(v10);
    OUTLINED_FUNCTION_24_20(&dword_2688BB000, v11, v12, "Initializing SetVolumeLevelFlow");
    OUTLINED_FUNCTION_33_1();
  }

  v13 = OUTLINED_FUNCTION_21_19();
  v14(v13);
  sub_268AFCA70(v0);
  sub_268AD33CC(v40);
  sub_268AF90C4();
  OUTLINED_FUNCTION_28_21();
  OUTLINED_FUNCTION_6_43();
  MEMORY[0x28223BE20](v15);
  v17 = OUTLINED_FUNCTION_2_38(v16, v37);
  v18(v17);
  v19 = OUTLINED_FUNCTION_62_7();
  OUTLINED_FUNCTION_20_22(v19);
  v20 = type metadata accessor for SetVolumeLevelFlowStrategy();
  OUTLINED_FUNCTION_59_7(v20);
  OUTLINED_FUNCTION_35_15();
  OUTLINED_FUNCTION_5_32();
  MEMORY[0x28223BE20](v21);
  v23 = OUTLINED_FUNCTION_1_56(v22, v38);
  v24(v23);
  v25 = *v8;
  v3[10] = v19;
  v3[11] = &off_2879539D0;
  v3[7] = v25;
  v26 = OUTLINED_FUNCTION_42_13(v40, (v3 + 2));
  __swift_destroy_boxed_opaque_existential_0Tm(v26);
  __swift_destroy_boxed_opaque_existential_0Tm(&v39);
  v27 = OUTLINED_FUNCTION_8_33();
  v28(v27);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A8C70, &qword_268B50BF8);
  OUTLINED_FUNCTION_245(v29);
  OUTLINED_FUNCTION_270();
  sub_268B349A4();
  OUTLINED_FUNCTION_63_8();
  OUTLINED_FUNCTION_32_14();

  v30 = OUTLINED_FUNCTION_34_14();
  OUTLINED_FUNCTION_40_14(v30);
  OUTLINED_FUNCTION_0_53();
  OUTLINED_FUNCTION_65_7(v31, v32, v33, v34);
  OUTLINED_FUNCTION_30_18();
  OUTLINED_FUNCTION_61_8();

  v35 = OUTLINED_FUNCTION_19_20();
  v36(v35);
  OUTLINED_FUNCTION_37_18();
  OUTLINED_FUNCTION_23();
}

void sub_268B0366C()
{
  OUTLINED_FUNCTION_26();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A8998, &qword_268B50A78);
  OUTLINED_FUNCTION_1_15();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_0_35();
  MEMORY[0x28223BE20](v2);
  v3 = OUTLINED_FUNCTION_25_20();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_8();
  if (qword_2802A4F30 != -1)
  {
    v5 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v6 = OUTLINED_FUNCTION_10_30(v5, qword_2802CDA10);
  v7(v6);
  v8 = sub_268B37A34();
  v9 = sub_268B37ED4();
  if (OUTLINED_FUNCTION_33_20(v9))
  {
    v10 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_154_0(v10);
    OUTLINED_FUNCTION_24_20(&dword_2688BB000, v11, v12, "Initializing PauseMediaFlow");
    OUTLINED_FUNCTION_33_1();
  }

  v13 = OUTLINED_FUNCTION_21_19();
  v14(v13);
  sub_268AF9338(v0);
  sub_268AD33CC(v40);
  sub_268AF90C4();
  OUTLINED_FUNCTION_28_21();
  OUTLINED_FUNCTION_6_43();
  MEMORY[0x28223BE20](v15);
  v17 = OUTLINED_FUNCTION_2_38(v16, v37);
  v18(v17);
  v19 = OUTLINED_FUNCTION_62_7();
  OUTLINED_FUNCTION_20_22(v19);
  v20 = type metadata accessor for PauseMediaFlowStrategy();
  OUTLINED_FUNCTION_59_7(v20);
  OUTLINED_FUNCTION_35_15();
  OUTLINED_FUNCTION_5_32();
  MEMORY[0x28223BE20](v21);
  v23 = OUTLINED_FUNCTION_1_56(v22, v38);
  v24(v23);
  v25 = *v8;
  v3[10] = v19;
  v3[11] = &off_2879539D0;
  v3[7] = v25;
  v26 = OUTLINED_FUNCTION_42_13(v40, (v3 + 2));
  __swift_destroy_boxed_opaque_existential_0Tm(v26);
  __swift_destroy_boxed_opaque_existential_0Tm(&v39);
  v27 = OUTLINED_FUNCTION_8_33();
  v28(v27);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A89A0, &qword_268B50A80);
  OUTLINED_FUNCTION_245(v29);
  OUTLINED_FUNCTION_270();
  sub_268B349A4();
  OUTLINED_FUNCTION_63_8();
  OUTLINED_FUNCTION_32_14();

  v30 = OUTLINED_FUNCTION_34_14();
  OUTLINED_FUNCTION_40_14(v30);
  OUTLINED_FUNCTION_0_53();
  OUTLINED_FUNCTION_65_7(v31, v32, v33, v34);
  OUTLINED_FUNCTION_30_18();
  OUTLINED_FUNCTION_61_8();

  v35 = OUTLINED_FUNCTION_19_20();
  v36(v35);
  OUTLINED_FUNCTION_37_18();
  OUTLINED_FUNCTION_23();
}

void sub_268B0399C()
{
  OUTLINED_FUNCTION_26();
  v42 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A8998, &qword_268B50A78);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_216_0();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_47_10();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_8();
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  __swift_project_value_buffer(v5, qword_2802CDA10);
  v7 = OUTLINED_FUNCTION_26_19();
  v8(v7);
  v9 = sub_268B37A34();
  v10 = sub_268B37ED4();
  if (OUTLINED_FUNCTION_66_9(v10))
  {
    v11 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_77_7(v11);
    OUTLINED_FUNCTION_34_13(&dword_2688BB000, v12, v13, "Initializing PauseMediaFlow with intent");
    OUTLINED_FUNCTION_12();
  }

  v14 = OUTLINED_FUNCTION_51_9();
  v15(v14);
  v16 = sub_268B368F4();
  OUTLINED_FUNCTION_245(v16);
  OUTLINED_FUNCTION_23_22();
  OUTLINED_FUNCTION_84_7();
  sub_268AF9338(v17);
  sub_268AD33CC(v44);
  sub_268AF90C4();
  OUTLINED_FUNCTION_28_21();
  OUTLINED_FUNCTION_5_32();
  MEMORY[0x28223BE20](v18);
  v20 = OUTLINED_FUNCTION_11_34(v19, v41);
  v21(v20);
  v22 = OUTLINED_FUNCTION_94_7();
  OUTLINED_FUNCTION_55_11(v22);
  v23 = type metadata accessor for PauseMediaFlowStrategy();
  v24 = OUTLINED_FUNCTION_59_7(v23);
  OUTLINED_FUNCTION_60_7();
  OUTLINED_FUNCTION_31_10();
  MEMORY[0x28223BE20](v25);
  v27 = OUTLINED_FUNCTION_12_28(v26, v0);
  v28(v27);
  v29 = *v1;
  v24[10] = v22;
  v24[11] = &off_2879539D0;
  v24[7] = v29;
  v30 = OUTLINED_FUNCTION_42_13(v44, (v24 + 2));
  __swift_destroy_boxed_opaque_existential_0Tm(v30);
  __swift_destroy_boxed_opaque_existential_0Tm(&v43);
  v31 = OUTLINED_FUNCTION_22_20();
  v32(v31);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A89A0, &qword_268B50A80);
  OUTLINED_FUNCTION_245(v33);
  OUTLINED_FUNCTION_91_6();
  OUTLINED_FUNCTION_90_8();
  OUTLINED_FUNCTION_68_9();

  v34 = OUTLINED_FUNCTION_39_11(v42);
  OUTLINED_FUNCTION_83_8(v34);
  OUTLINED_FUNCTION_0_53();
  OUTLINED_FUNCTION_93_9(v35, v36, v37, v38);
  OUTLINED_FUNCTION_38_9();
  sub_268B34A54();
  OUTLINED_FUNCTION_270();

  v39 = OUTLINED_FUNCTION_54_8();
  v40(v39);
  OUTLINED_FUNCTION_37_18();
  OUTLINED_FUNCTION_23();
}

void sub_268B03D2C()
{
  OUTLINED_FUNCTION_26();
  v1 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_2_8();
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  __swift_project_value_buffer(v1, qword_2802CDA10);
  v3 = OUTLINED_FUNCTION_139();
  v4(v3);
  v5 = sub_268B37A34();
  v6 = sub_268B37ED4();
  if (OUTLINED_FUNCTION_80_7(v6))
  {
    v0 = OUTLINED_FUNCTION_14();
    *v0 = 0;
    OUTLINED_FUNCTION_20_5(&dword_2688BB000, v7, v8, "Initializing PauseMediaRoutingFlow");
    OUTLINED_FUNCTION_12();
  }

  v9 = OUTLINED_FUNCTION_70_8();
  v10(v9);
  sub_268AD33CC(v52);
  sub_268B34C64();
  sub_268B354A4();
  sub_268AF90C4();
  sub_268B37204();
  sub_268B371F4();
  v11 = OUTLINED_FUNCTION_88_7();
  OUTLINED_FUNCTION_69_10(v11, v12, v13, v14, v15, v16, v17, v18, v38);
  OUTLINED_FUNCTION_31_10();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_254();
  (*(v20 + 16))(v1);
  v21 = *v1;
  v22 = type metadata accessor for AnalyticsServiceImpl();
  v48[3] = v22;
  v48[4] = &off_2879539D0;
  v46 = &type metadata for ControlsFlowFactoryImpl;
  v47 = &off_28795FF48;
  v48[0] = v21;
  v23 = type metadata accessor for PauseMediaRoutingFlow(0);
  v24 = OUTLINED_FUNCTION_245(v23);
  __swift_mutable_project_boxed_opaque_existential_1(v48, v22);
  OUTLINED_FUNCTION_5_32();
  MEMORY[0x28223BE20](v25);
  v27 = OUTLINED_FUNCTION_1_56(v26, v39);
  v28(v27);
  __swift_mutable_project_boxed_opaque_existential_1(v45, v46);
  v29 = *v0;
  v44[3] = v22;
  v44[4] = &off_2879539D0;
  v44[0] = v29;
  v30 = v24 + OBJC_IVAR____TtC26SiriPlaybackControlIntents21PauseMediaRoutingFlow_flowFactory;
  *(v30 + 24) = &type metadata for ControlsFlowFactoryImpl;
  *(v30 + 32) = &off_28795FF48;
  v31 = sub_268B35434();
  OUTLINED_FUNCTION_48_10(v31);
  v32 = type metadata accessor for MediaPlayerIntent(0);
  OUTLINED_FUNCTION_48_10(v32);
  sub_26890C900(v52, v24 + OBJC_IVAR____TtC26SiriPlaybackControlIntents21PauseMediaRoutingFlow_contextProvider);
  sub_26890C900(v51, v24 + OBJC_IVAR____TtC26SiriPlaybackControlIntents21PauseMediaRoutingFlow_aceServiceInvoker);
  sub_26890C900(v50, v24 + OBJC_IVAR____TtC26SiriPlaybackControlIntents21PauseMediaRoutingFlow_deviceState);
  sub_26890C900(v44, v24 + OBJC_IVAR____TtC26SiriPlaybackControlIntents21PauseMediaRoutingFlow_analyticsService);
  sub_26890C900(v50, v43);
  sub_26890C900(v44, v42);
  sub_26890C900(v51, &v41);
  sub_268B376A4();
  sub_268B37694();
  OUTLINED_FUNCTION_86_8();
  OUTLINED_FUNCTION_3_8();
  MEMORY[0x28223BE20](v33);
  v35 = OUTLINED_FUNCTION_11_34(v34, v40);
  v36(v35);
  v37 = OUTLINED_FUNCTION_77_8();
  __swift_destroy_boxed_opaque_existential_0Tm(v50);
  __swift_destroy_boxed_opaque_existential_0Tm(v51);
  __swift_destroy_boxed_opaque_existential_0Tm(v52);
  __swift_destroy_boxed_opaque_existential_0Tm(v44);
  __swift_destroy_boxed_opaque_existential_0Tm(v42);
  *(v24 + OBJC_IVAR____TtC26SiriPlaybackControlIntents21PauseMediaRoutingFlow_deviceSelector) = v37;
  __swift_destroy_boxed_opaque_existential_0Tm(v45);
  __swift_destroy_boxed_opaque_existential_0Tm(v48);
  __swift_destroy_boxed_opaque_existential_0Tm(v49);
  v52[0] = v24;
  sub_268B098E0(&qword_2802A8B20, type metadata accessor for PauseMediaRoutingFlow, &unk_268B3FD20);
  OUTLINED_FUNCTION_76_7();
  OUTLINED_FUNCTION_270();

  OUTLINED_FUNCTION_37_18();
  OUTLINED_FUNCTION_23();
}

void sub_268B041A4()
{
  OUTLINED_FUNCTION_26();
  v1 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_2_8();
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  __swift_project_value_buffer(v1, qword_2802CDA10);
  v3 = OUTLINED_FUNCTION_139();
  v4(v3);
  v5 = sub_268B37A34();
  v6 = sub_268B37ED4();
  if (OUTLINED_FUNCTION_80_7(v6))
  {
    v0 = OUTLINED_FUNCTION_14();
    *v0 = 0;
    OUTLINED_FUNCTION_20_5(&dword_2688BB000, v7, v8, "Initializing ResumeMediaRoutingFlow");
    OUTLINED_FUNCTION_12();
  }

  v9 = OUTLINED_FUNCTION_70_8();
  v10(v9);
  sub_268AD33CC(v52);
  sub_268B34C64();
  sub_268B354A4();
  sub_268AFA1F8();
  sub_268B37204();
  sub_268B371F4();
  v11 = OUTLINED_FUNCTION_88_7();
  OUTLINED_FUNCTION_69_10(v11, v12, v13, v14, v15, v16, v17, v18, v38);
  OUTLINED_FUNCTION_31_10();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_254();
  (*(v20 + 16))(v1);
  v21 = *v1;
  v22 = type metadata accessor for AnalyticsServiceImpl();
  v48[3] = v22;
  v48[4] = &off_2879539D0;
  v46 = &type metadata for ControlsFlowFactoryImpl;
  v47 = &off_28795FF48;
  v48[0] = v21;
  v23 = type metadata accessor for ResumeMediaRoutingFlow(0);
  v24 = OUTLINED_FUNCTION_245(v23);
  __swift_mutable_project_boxed_opaque_existential_1(v48, v22);
  OUTLINED_FUNCTION_5_32();
  MEMORY[0x28223BE20](v25);
  v27 = OUTLINED_FUNCTION_1_56(v26, v39);
  v28(v27);
  __swift_mutable_project_boxed_opaque_existential_1(v45, v46);
  v29 = *v0;
  v44[3] = v22;
  v44[4] = &off_2879539D0;
  v44[0] = v29;
  v30 = v24 + OBJC_IVAR____TtC26SiriPlaybackControlIntents22ResumeMediaRoutingFlow_flowFactory;
  *(v30 + 24) = &type metadata for ControlsFlowFactoryImpl;
  *(v30 + 32) = &off_28795FF48;
  v31 = sub_268B35434();
  OUTLINED_FUNCTION_48_10(v31);
  v32 = type metadata accessor for MediaPlayerIntent(0);
  OUTLINED_FUNCTION_48_10(v32);
  sub_26890C900(v52, v24 + OBJC_IVAR____TtC26SiriPlaybackControlIntents22ResumeMediaRoutingFlow_contextProvider);
  sub_26890C900(v51, v24 + OBJC_IVAR____TtC26SiriPlaybackControlIntents22ResumeMediaRoutingFlow_aceServiceInvoker);
  sub_26890C900(v50, v24 + OBJC_IVAR____TtC26SiriPlaybackControlIntents22ResumeMediaRoutingFlow_deviceState);
  sub_26890C900(v44, v24 + OBJC_IVAR____TtC26SiriPlaybackControlIntents22ResumeMediaRoutingFlow_analyticsService);
  sub_26890C900(v50, v43);
  sub_26890C900(v44, v42);
  sub_26890C900(v51, &v41);
  sub_268B376A4();
  sub_268B37694();
  OUTLINED_FUNCTION_86_8();
  OUTLINED_FUNCTION_3_8();
  MEMORY[0x28223BE20](v33);
  v35 = OUTLINED_FUNCTION_11_34(v34, v40);
  v36(v35);
  v37 = OUTLINED_FUNCTION_77_8();
  __swift_destroy_boxed_opaque_existential_0Tm(v50);
  __swift_destroy_boxed_opaque_existential_0Tm(v51);
  __swift_destroy_boxed_opaque_existential_0Tm(v52);
  __swift_destroy_boxed_opaque_existential_0Tm(v44);
  __swift_destroy_boxed_opaque_existential_0Tm(v42);
  *(v24 + OBJC_IVAR____TtC26SiriPlaybackControlIntents22ResumeMediaRoutingFlow_deviceSelector) = v37;
  __swift_destroy_boxed_opaque_existential_0Tm(v45);
  __swift_destroy_boxed_opaque_existential_0Tm(v48);
  __swift_destroy_boxed_opaque_existential_0Tm(v49);
  v52[0] = v24;
  sub_268B098E0(&qword_2802A8B58, type metadata accessor for ResumeMediaRoutingFlow, &unk_268B3B880);
  OUTLINED_FUNCTION_76_7();
  OUTLINED_FUNCTION_270();

  OUTLINED_FUNCTION_37_18();
  OUTLINED_FUNCTION_23();
}

void sub_268B0461C()
{
  OUTLINED_FUNCTION_26();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A8A38, &qword_268B50AD0);
  OUTLINED_FUNCTION_1_15();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_0_35();
  MEMORY[0x28223BE20](v2);
  v3 = OUTLINED_FUNCTION_25_20();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_8();
  if (qword_2802A4F30 != -1)
  {
    v5 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v6 = OUTLINED_FUNCTION_10_30(v5, qword_2802CDA10);
  v7(v6);
  v8 = sub_268B37A34();
  v9 = sub_268B37ED4();
  if (OUTLINED_FUNCTION_33_20(v9))
  {
    v10 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_154_0(v10);
    OUTLINED_FUNCTION_24_20(&dword_2688BB000, v11, v12, "Initializing ResumeMediaFlow");
    OUTLINED_FUNCTION_33_1();
  }

  v13 = OUTLINED_FUNCTION_21_19();
  v14(v13);
  sub_268AFA4C0(v0);
  sub_268AD33CC(v40);
  sub_268AF90C4();
  OUTLINED_FUNCTION_28_21();
  OUTLINED_FUNCTION_6_43();
  MEMORY[0x28223BE20](v15);
  v17 = OUTLINED_FUNCTION_2_38(v16, v37);
  v18(v17);
  v19 = OUTLINED_FUNCTION_62_7();
  OUTLINED_FUNCTION_20_22(v19);
  v20 = type metadata accessor for ResumeMediaFlowStrategy();
  OUTLINED_FUNCTION_59_7(v20);
  OUTLINED_FUNCTION_35_15();
  OUTLINED_FUNCTION_5_32();
  MEMORY[0x28223BE20](v21);
  v23 = OUTLINED_FUNCTION_1_56(v22, v38);
  v24(v23);
  v25 = *v8;
  v3[10] = v19;
  v3[11] = &off_2879539D0;
  v3[7] = v25;
  v26 = OUTLINED_FUNCTION_42_13(v40, (v3 + 2));
  __swift_destroy_boxed_opaque_existential_0Tm(v26);
  __swift_destroy_boxed_opaque_existential_0Tm(&v39);
  v27 = OUTLINED_FUNCTION_8_33();
  v28(v27);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A8A40, &qword_268B50AD8);
  OUTLINED_FUNCTION_245(v29);
  OUTLINED_FUNCTION_270();
  sub_268B349A4();
  OUTLINED_FUNCTION_63_8();
  OUTLINED_FUNCTION_32_14();

  v30 = OUTLINED_FUNCTION_34_14();
  OUTLINED_FUNCTION_40_14(v30);
  OUTLINED_FUNCTION_0_53();
  OUTLINED_FUNCTION_65_7(v31, v32, v33, v34);
  OUTLINED_FUNCTION_30_18();
  OUTLINED_FUNCTION_61_8();

  v35 = OUTLINED_FUNCTION_19_20();
  v36(v35);
  OUTLINED_FUNCTION_37_18();
  OUTLINED_FUNCTION_23();
}

void sub_268B0494C()
{
  OUTLINED_FUNCTION_26();
  v42 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A8A38, &qword_268B50AD0);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_216_0();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_47_10();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_8();
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  __swift_project_value_buffer(v5, qword_2802CDA10);
  v7 = OUTLINED_FUNCTION_26_19();
  v8(v7);
  v9 = sub_268B37A34();
  v10 = sub_268B37ED4();
  if (OUTLINED_FUNCTION_66_9(v10))
  {
    v11 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_77_7(v11);
    OUTLINED_FUNCTION_34_13(&dword_2688BB000, v12, v13, "Initializing ResumeMediaFlow with intent");
    OUTLINED_FUNCTION_12();
  }

  v14 = OUTLINED_FUNCTION_51_9();
  v15(v14);
  v16 = sub_268B368F4();
  OUTLINED_FUNCTION_245(v16);
  OUTLINED_FUNCTION_23_22();
  OUTLINED_FUNCTION_84_7();
  sub_268AFA4C0(v17);
  sub_268AD33CC(v44);
  sub_268AF90C4();
  OUTLINED_FUNCTION_28_21();
  OUTLINED_FUNCTION_5_32();
  MEMORY[0x28223BE20](v18);
  v20 = OUTLINED_FUNCTION_11_34(v19, v41);
  v21(v20);
  v22 = OUTLINED_FUNCTION_94_7();
  OUTLINED_FUNCTION_55_11(v22);
  v23 = type metadata accessor for ResumeMediaFlowStrategy();
  v24 = OUTLINED_FUNCTION_59_7(v23);
  OUTLINED_FUNCTION_60_7();
  OUTLINED_FUNCTION_31_10();
  MEMORY[0x28223BE20](v25);
  v27 = OUTLINED_FUNCTION_12_28(v26, v0);
  v28(v27);
  v29 = *v1;
  v24[10] = v22;
  v24[11] = &off_2879539D0;
  v24[7] = v29;
  v30 = OUTLINED_FUNCTION_42_13(v44, (v24 + 2));
  __swift_destroy_boxed_opaque_existential_0Tm(v30);
  __swift_destroy_boxed_opaque_existential_0Tm(&v43);
  v31 = OUTLINED_FUNCTION_22_20();
  v32(v31);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A8A40, &qword_268B50AD8);
  OUTLINED_FUNCTION_245(v33);
  OUTLINED_FUNCTION_91_6();
  OUTLINED_FUNCTION_90_8();
  OUTLINED_FUNCTION_68_9();

  v34 = OUTLINED_FUNCTION_39_11(v42);
  OUTLINED_FUNCTION_83_8(v34);
  OUTLINED_FUNCTION_0_53();
  OUTLINED_FUNCTION_93_9(v35, v36, v37, v38);
  OUTLINED_FUNCTION_38_9();
  sub_268B34A54();
  OUTLINED_FUNCTION_270();

  v39 = OUTLINED_FUNCTION_54_8();
  v40(v39);
  OUTLINED_FUNCTION_37_18();
  OUTLINED_FUNCTION_23();
}

void sub_268B04CDC()
{
  OUTLINED_FUNCTION_26();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A8B60, &qword_268B50B60);
  OUTLINED_FUNCTION_1_15();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_0_35();
  MEMORY[0x28223BE20](v2);
  v3 = OUTLINED_FUNCTION_25_20();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_8();
  if (qword_2802A4F30 != -1)
  {
    v5 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v6 = OUTLINED_FUNCTION_10_30(v5, qword_2802CDA10);
  v7(v6);
  v8 = sub_268B37A34();
  v9 = sub_268B37F04();
  if (OUTLINED_FUNCTION_33_20(v9))
  {
    v10 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_154_0(v10);
    OUTLINED_FUNCTION_24_20(&dword_2688BB000, v11, v12, "Initializing SkipTimeFlow");
    OUTLINED_FUNCTION_33_1();
  }

  v13 = OUTLINED_FUNCTION_21_19();
  v14(v13);
  sub_268B00A08(v0);
  sub_268AD33CC(v40);
  sub_268AF90C4();
  OUTLINED_FUNCTION_28_21();
  OUTLINED_FUNCTION_6_43();
  MEMORY[0x28223BE20](v15);
  v17 = OUTLINED_FUNCTION_2_38(v16, v37);
  v18(v17);
  v19 = OUTLINED_FUNCTION_62_7();
  OUTLINED_FUNCTION_20_22(v19);
  v20 = type metadata accessor for SkipTimeFlowStrategy();
  OUTLINED_FUNCTION_59_7(v20);
  OUTLINED_FUNCTION_35_15();
  OUTLINED_FUNCTION_5_32();
  MEMORY[0x28223BE20](v21);
  v23 = OUTLINED_FUNCTION_1_56(v22, v38);
  v24(v23);
  v25 = *v8;
  v3[10] = v19;
  v3[11] = &off_2879539D0;
  v3[7] = v25;
  v26 = OUTLINED_FUNCTION_42_13(v40, (v3 + 2));
  __swift_destroy_boxed_opaque_existential_0Tm(v26);
  __swift_destroy_boxed_opaque_existential_0Tm(&v39);
  v27 = OUTLINED_FUNCTION_8_33();
  v28(v27);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A8B68, &qword_268B50B68);
  OUTLINED_FUNCTION_245(v29);
  OUTLINED_FUNCTION_270();
  sub_268B349A4();
  OUTLINED_FUNCTION_63_8();
  OUTLINED_FUNCTION_32_14();

  v30 = OUTLINED_FUNCTION_34_14();
  OUTLINED_FUNCTION_40_14(v30);
  OUTLINED_FUNCTION_0_53();
  OUTLINED_FUNCTION_65_7(v31, v32, v33, v34);
  OUTLINED_FUNCTION_30_18();
  OUTLINED_FUNCTION_61_8();

  v35 = OUTLINED_FUNCTION_19_20();
  v36(v35);
  OUTLINED_FUNCTION_37_18();
  OUTLINED_FUNCTION_23();
}

void sub_268B0500C()
{
  OUTLINED_FUNCTION_26();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A8C08, &qword_268B50BC0);
  OUTLINED_FUNCTION_1_15();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_0_35();
  MEMORY[0x28223BE20](v2);
  v3 = OUTLINED_FUNCTION_25_20();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_8();
  if (qword_2802A4F30 != -1)
  {
    v5 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v6 = OUTLINED_FUNCTION_10_30(v5, qword_2802CDA10);
  v7(v6);
  v8 = sub_268B37A34();
  v9 = sub_268B37F04();
  if (OUTLINED_FUNCTION_33_20(v9))
  {
    v10 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_154_0(v10);
    OUTLINED_FUNCTION_24_20(&dword_2688BB000, v11, v12, "Initializing SeekTimeFlow");
    OUTLINED_FUNCTION_33_1();
  }

  v13 = OUTLINED_FUNCTION_21_19();
  v14(v13);
  sub_268AFB380(v0);
  sub_268AD33CC(v40);
  sub_268AF90C4();
  OUTLINED_FUNCTION_28_21();
  OUTLINED_FUNCTION_6_43();
  MEMORY[0x28223BE20](v15);
  v17 = OUTLINED_FUNCTION_2_38(v16, v37);
  v18(v17);
  v19 = OUTLINED_FUNCTION_62_7();
  OUTLINED_FUNCTION_20_22(v19);
  v20 = type metadata accessor for SeekTimeFlowStrategy();
  OUTLINED_FUNCTION_59_7(v20);
  OUTLINED_FUNCTION_35_15();
  OUTLINED_FUNCTION_5_32();
  MEMORY[0x28223BE20](v21);
  v23 = OUTLINED_FUNCTION_1_56(v22, v38);
  v24(v23);
  v25 = *v8;
  v3[10] = v19;
  v3[11] = &off_2879539D0;
  v3[7] = v25;
  v26 = OUTLINED_FUNCTION_42_13(v40, (v3 + 2));
  __swift_destroy_boxed_opaque_existential_0Tm(v26);
  __swift_destroy_boxed_opaque_existential_0Tm(&v39);
  v27 = OUTLINED_FUNCTION_8_33();
  v28(v27);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A8C10, &qword_268B50BC8);
  OUTLINED_FUNCTION_245(v29);
  OUTLINED_FUNCTION_270();
  sub_268B349A4();
  OUTLINED_FUNCTION_63_8();
  OUTLINED_FUNCTION_32_14();

  v30 = OUTLINED_FUNCTION_34_14();
  OUTLINED_FUNCTION_40_14(v30);
  OUTLINED_FUNCTION_0_53();
  OUTLINED_FUNCTION_65_7(v31, v32, v33, v34);
  OUTLINED_FUNCTION_30_18();
  OUTLINED_FUNCTION_61_8();

  v35 = OUTLINED_FUNCTION_19_20();
  v36(v35);
  OUTLINED_FUNCTION_37_18();
  OUTLINED_FUNCTION_23();
}

void sub_268B0533C()
{
  OUTLINED_FUNCTION_26();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A8B98, &qword_268B50B80);
  OUTLINED_FUNCTION_1_15();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_0_35();
  MEMORY[0x28223BE20](v2);
  v3 = OUTLINED_FUNCTION_25_20();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_8();
  if (qword_2802A4F30 != -1)
  {
    v5 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v6 = OUTLINED_FUNCTION_10_30(v5, qword_2802CDA10);
  v7(v6);
  v8 = sub_268B37A34();
  v9 = sub_268B37F04();
  if (OUTLINED_FUNCTION_33_20(v9))
  {
    v10 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_154_0(v10);
    OUTLINED_FUNCTION_24_20(&dword_2688BB000, v11, v12, "Initializing SkipContentFlow");
    OUTLINED_FUNCTION_33_1();
  }

  v13 = OUTLINED_FUNCTION_21_19();
  v14(v13);
  sub_268B0214C(v0);
  sub_268AD33CC(v40);
  sub_268AF90C4();
  OUTLINED_FUNCTION_28_21();
  OUTLINED_FUNCTION_6_43();
  MEMORY[0x28223BE20](v15);
  v17 = OUTLINED_FUNCTION_2_38(v16, v37);
  v18(v17);
  v19 = OUTLINED_FUNCTION_62_7();
  OUTLINED_FUNCTION_20_22(v19);
  v20 = type metadata accessor for SkipContentFlowStrategy();
  OUTLINED_FUNCTION_59_7(v20);
  OUTLINED_FUNCTION_35_15();
  OUTLINED_FUNCTION_5_32();
  MEMORY[0x28223BE20](v21);
  v23 = OUTLINED_FUNCTION_1_56(v22, v38);
  v24(v23);
  v25 = *v8;
  v3[10] = v19;
  v3[11] = &off_2879539D0;
  v3[7] = v25;
  v26 = OUTLINED_FUNCTION_42_13(v40, (v3 + 2));
  __swift_destroy_boxed_opaque_existential_0Tm(v26);
  __swift_destroy_boxed_opaque_existential_0Tm(&v39);
  v27 = OUTLINED_FUNCTION_8_33();
  v28(v27);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A8BA0, &qword_268B50B88);
  OUTLINED_FUNCTION_245(v29);
  OUTLINED_FUNCTION_270();
  sub_268B349A4();
  OUTLINED_FUNCTION_63_8();
  OUTLINED_FUNCTION_32_14();

  v30 = OUTLINED_FUNCTION_34_14();
  OUTLINED_FUNCTION_40_14(v30);
  OUTLINED_FUNCTION_0_53();
  OUTLINED_FUNCTION_65_7(v31, v32, v33, v34);
  OUTLINED_FUNCTION_30_18();
  OUTLINED_FUNCTION_61_8();

  v35 = OUTLINED_FUNCTION_19_20();
  v36(v35);
  OUTLINED_FUNCTION_37_18();
  OUTLINED_FUNCTION_23();
}

void sub_268B0566C()
{
  OUTLINED_FUNCTION_26();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A8BD0, &qword_268B50BA0);
  OUTLINED_FUNCTION_1_15();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_0_35();
  MEMORY[0x28223BE20](v2);
  v3 = OUTLINED_FUNCTION_25_20();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_8();
  if (qword_2802A4F30 != -1)
  {
    v5 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v6 = OUTLINED_FUNCTION_10_30(v5, qword_2802CDA10);
  v7(v6);
  v8 = sub_268B37A34();
  v9 = sub_268B37ED4();
  if (OUTLINED_FUNCTION_33_20(v9))
  {
    v10 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_154_0(v10);
    OUTLINED_FUNCTION_24_20(&dword_2688BB000, v11, v12, "Initializing SetRepeatStateFlow");
    OUTLINED_FUNCTION_33_1();
  }

  v13 = OUTLINED_FUNCTION_21_19();
  v14(v13);
  sub_268AFFB48(v0);
  sub_268AD33CC(v40);
  sub_268AF90C4();
  OUTLINED_FUNCTION_28_21();
  OUTLINED_FUNCTION_6_43();
  MEMORY[0x28223BE20](v15);
  v17 = OUTLINED_FUNCTION_2_38(v16, v37);
  v18(v17);
  v19 = OUTLINED_FUNCTION_62_7();
  OUTLINED_FUNCTION_20_22(v19);
  v20 = type metadata accessor for SetRepeatStateFlowStrategy();
  OUTLINED_FUNCTION_59_7(v20);
  OUTLINED_FUNCTION_35_15();
  OUTLINED_FUNCTION_5_32();
  MEMORY[0x28223BE20](v21);
  v23 = OUTLINED_FUNCTION_1_56(v22, v38);
  v24(v23);
  v25 = *v8;
  v3[10] = v19;
  v3[11] = &off_2879539D0;
  v3[7] = v25;
  v26 = OUTLINED_FUNCTION_42_13(v40, (v3 + 2));
  __swift_destroy_boxed_opaque_existential_0Tm(v26);
  __swift_destroy_boxed_opaque_existential_0Tm(&v39);
  v27 = OUTLINED_FUNCTION_8_33();
  v28(v27);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A8BD8, &qword_268B50BA8);
  OUTLINED_FUNCTION_245(v29);
  OUTLINED_FUNCTION_270();
  sub_268B349A4();
  OUTLINED_FUNCTION_63_8();
  OUTLINED_FUNCTION_32_14();

  v30 = OUTLINED_FUNCTION_34_14();
  OUTLINED_FUNCTION_40_14(v30);
  OUTLINED_FUNCTION_0_53();
  OUTLINED_FUNCTION_65_7(v31, v32, v33, v34);
  OUTLINED_FUNCTION_30_18();
  OUTLINED_FUNCTION_61_8();

  v35 = OUTLINED_FUNCTION_19_20();
  v36(v35);
  OUTLINED_FUNCTION_37_18();
  OUTLINED_FUNCTION_23();
}

void sub_268B0599C()
{
  OUTLINED_FUNCTION_26();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A89D0, &qword_268B50A98);
  OUTLINED_FUNCTION_1_15();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_0_35();
  MEMORY[0x28223BE20](v2);
  v3 = OUTLINED_FUNCTION_25_20();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_8();
  if (qword_2802A4F30 != -1)
  {
    v5 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v6 = OUTLINED_FUNCTION_10_30(v5, qword_2802CDA10);
  v7(v6);
  v8 = sub_268B37A34();
  v9 = sub_268B37ED4();
  if (OUTLINED_FUNCTION_33_20(v9))
  {
    v10 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_154_0(v10);
    OUTLINED_FUNCTION_24_20(&dword_2688BB000, v11, v12, "Initializing SetShuffleStateFlow");
    OUTLINED_FUNCTION_33_1();
  }

  v13 = OUTLINED_FUNCTION_21_19();
  v14(v13);
  sub_268AFD854(v0);
  sub_268AD33CC(v40);
  sub_268AF90C4();
  OUTLINED_FUNCTION_28_21();
  OUTLINED_FUNCTION_6_43();
  MEMORY[0x28223BE20](v15);
  v17 = OUTLINED_FUNCTION_2_38(v16, v37);
  v18(v17);
  v19 = OUTLINED_FUNCTION_62_7();
  OUTLINED_FUNCTION_20_22(v19);
  v20 = type metadata accessor for SetShuffleStateFlowStrategy();
  OUTLINED_FUNCTION_59_7(v20);
  OUTLINED_FUNCTION_35_15();
  OUTLINED_FUNCTION_5_32();
  MEMORY[0x28223BE20](v21);
  v23 = OUTLINED_FUNCTION_1_56(v22, v38);
  v24(v23);
  v25 = *v8;
  v3[10] = v19;
  v3[11] = &off_2879539D0;
  v3[7] = v25;
  v26 = OUTLINED_FUNCTION_42_13(v40, (v3 + 2));
  __swift_destroy_boxed_opaque_existential_0Tm(v26);
  __swift_destroy_boxed_opaque_existential_0Tm(&v39);
  v27 = OUTLINED_FUNCTION_8_33();
  v28(v27);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A89D8, &qword_268B50AA0);
  OUTLINED_FUNCTION_245(v29);
  OUTLINED_FUNCTION_270();
  sub_268B349A4();
  OUTLINED_FUNCTION_63_8();
  OUTLINED_FUNCTION_32_14();

  v30 = OUTLINED_FUNCTION_34_14();
  OUTLINED_FUNCTION_40_14(v30);
  OUTLINED_FUNCTION_0_53();
  OUTLINED_FUNCTION_65_7(v31, v32, v33, v34);
  OUTLINED_FUNCTION_30_18();
  OUTLINED_FUNCTION_61_8();

  v35 = OUTLINED_FUNCTION_19_20();
  v36(v35);
  OUTLINED_FUNCTION_37_18();
  OUTLINED_FUNCTION_23();
}

void sub_268B05CCC()
{
  OUTLINED_FUNCTION_26();
  v42 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A89D0, &qword_268B50A98);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_216_0();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_47_10();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_8();
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  __swift_project_value_buffer(v5, qword_2802CDA10);
  v7 = OUTLINED_FUNCTION_26_19();
  v8(v7);
  v9 = sub_268B37A34();
  v10 = sub_268B37ED4();
  if (OUTLINED_FUNCTION_66_9(v10))
  {
    v11 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_77_7(v11);
    OUTLINED_FUNCTION_34_13(&dword_2688BB000, v12, v13, "Initializing SetShuffleStateFlow");
    OUTLINED_FUNCTION_12();
  }

  v14 = OUTLINED_FUNCTION_51_9();
  v15(v14);
  v16 = sub_268B368F4();
  OUTLINED_FUNCTION_245(v16);
  OUTLINED_FUNCTION_23_22();
  OUTLINED_FUNCTION_84_7();
  sub_268AFD854(v17);
  sub_268AD33CC(v44);
  sub_268AF90C4();
  OUTLINED_FUNCTION_28_21();
  OUTLINED_FUNCTION_5_32();
  MEMORY[0x28223BE20](v18);
  v20 = OUTLINED_FUNCTION_11_34(v19, v41);
  v21(v20);
  v22 = OUTLINED_FUNCTION_94_7();
  OUTLINED_FUNCTION_55_11(v22);
  v23 = type metadata accessor for SetShuffleStateFlowStrategy();
  v24 = OUTLINED_FUNCTION_59_7(v23);
  OUTLINED_FUNCTION_60_7();
  OUTLINED_FUNCTION_31_10();
  MEMORY[0x28223BE20](v25);
  v27 = OUTLINED_FUNCTION_12_28(v26, v0);
  v28(v27);
  v29 = *v1;
  v24[10] = v22;
  v24[11] = &off_2879539D0;
  v24[7] = v29;
  v30 = OUTLINED_FUNCTION_42_13(v44, (v24 + 2));
  __swift_destroy_boxed_opaque_existential_0Tm(v30);
  __swift_destroy_boxed_opaque_existential_0Tm(&v43);
  v31 = OUTLINED_FUNCTION_22_20();
  v32(v31);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A89D8, &qword_268B50AA0);
  OUTLINED_FUNCTION_245(v33);
  OUTLINED_FUNCTION_91_6();
  OUTLINED_FUNCTION_90_8();
  OUTLINED_FUNCTION_68_9();

  v34 = OUTLINED_FUNCTION_39_11(v42);
  OUTLINED_FUNCTION_83_8(v34);
  OUTLINED_FUNCTION_0_53();
  OUTLINED_FUNCTION_93_9(v35, v36, v37, v38);
  OUTLINED_FUNCTION_38_9();
  sub_268B34A54();
  OUTLINED_FUNCTION_270();

  v39 = OUTLINED_FUNCTION_54_8();
  v40(v39);
  OUTLINED_FUNCTION_37_18();
  OUTLINED_FUNCTION_23();
}

void sub_268B0605C()
{
  OUTLINED_FUNCTION_26();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A8A70, &qword_268B50AF0);
  OUTLINED_FUNCTION_1_15();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_0_35();
  MEMORY[0x28223BE20](v2);
  v3 = OUTLINED_FUNCTION_25_20();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_8();
  if (qword_2802A4F30 != -1)
  {
    v5 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v6 = OUTLINED_FUNCTION_10_30(v5, qword_2802CDA10);
  v7(v6);
  v8 = sub_268B37A34();
  v9 = sub_268B37ED4();
  if (OUTLINED_FUNCTION_33_20(v9))
  {
    v10 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_154_0(v10);
    OUTLINED_FUNCTION_24_20(&dword_2688BB000, v11, v12, "Initializing WhatDidTheySayFlow");
    OUTLINED_FUNCTION_33_1();
  }

  v13 = OUTLINED_FUNCTION_21_19();
  v14(v13);
  sub_268AFF0CC(v0);
  sub_268AD33CC(v40);
  sub_268AF90C4();
  OUTLINED_FUNCTION_28_21();
  OUTLINED_FUNCTION_6_43();
  MEMORY[0x28223BE20](v15);
  v17 = OUTLINED_FUNCTION_2_38(v16, v37);
  v18(v17);
  v19 = OUTLINED_FUNCTION_62_7();
  OUTLINED_FUNCTION_20_22(v19);
  v20 = type metadata accessor for WhatDidTheySayFlowStrategy();
  OUTLINED_FUNCTION_59_7(v20);
  OUTLINED_FUNCTION_35_15();
  OUTLINED_FUNCTION_5_32();
  MEMORY[0x28223BE20](v21);
  v23 = OUTLINED_FUNCTION_1_56(v22, v38);
  v24(v23);
  v25 = *v8;
  v3[10] = v19;
  v3[11] = &off_2879539D0;
  v3[7] = v25;
  v26 = OUTLINED_FUNCTION_42_13(v40, (v3 + 2));
  __swift_destroy_boxed_opaque_existential_0Tm(v26);
  __swift_destroy_boxed_opaque_existential_0Tm(&v39);
  v27 = OUTLINED_FUNCTION_8_33();
  v28(v27);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A8A78, &qword_268B50AF8);
  OUTLINED_FUNCTION_245(v29);
  OUTLINED_FUNCTION_270();
  sub_268B349A4();
  OUTLINED_FUNCTION_63_8();
  OUTLINED_FUNCTION_32_14();

  v30 = OUTLINED_FUNCTION_34_14();
  OUTLINED_FUNCTION_40_14(v30);
  OUTLINED_FUNCTION_0_53();
  OUTLINED_FUNCTION_65_7(v31, v32, v33, v34);
  OUTLINED_FUNCTION_30_18();
  OUTLINED_FUNCTION_61_8();

  v35 = OUTLINED_FUNCTION_19_20();
  v36(v35);
  OUTLINED_FUNCTION_37_18();
  OUTLINED_FUNCTION_23();
}

void sub_268B0638C()
{
  OUTLINED_FUNCTION_26();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A8AA0, &qword_268B50B08);
  OUTLINED_FUNCTION_1_15();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_0_35();
  MEMORY[0x28223BE20](v2);
  v3 = OUTLINED_FUNCTION_25_20();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_8();
  if (qword_2802A4F30 != -1)
  {
    v5 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v6 = OUTLINED_FUNCTION_10_30(v5, qword_2802CDA10);
  v7(v6);
  v8 = sub_268B37A34();
  v9 = sub_268B37ED4();
  if (OUTLINED_FUNCTION_33_20(v9))
  {
    v10 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_154_0(v10);
    OUTLINED_FUNCTION_24_20(&dword_2688BB000, v11, v12, "Initializing SetSubtitleStateFlow");
    OUTLINED_FUNCTION_33_1();
  }

  v13 = OUTLINED_FUNCTION_21_19();
  v14(v13);
  sub_268AF7C58(v0);
  sub_268AD33CC(v40);
  sub_268AF90C4();
  OUTLINED_FUNCTION_28_21();
  OUTLINED_FUNCTION_6_43();
  MEMORY[0x28223BE20](v15);
  v17 = OUTLINED_FUNCTION_2_38(v16, v37);
  v18(v17);
  v19 = OUTLINED_FUNCTION_62_7();
  OUTLINED_FUNCTION_20_22(v19);
  v20 = type metadata accessor for SetSubtitleStateFlowStrategy();
  OUTLINED_FUNCTION_59_7(v20);
  OUTLINED_FUNCTION_35_15();
  OUTLINED_FUNCTION_5_32();
  MEMORY[0x28223BE20](v21);
  v23 = OUTLINED_FUNCTION_1_56(v22, v38);
  v24(v23);
  v25 = *v8;
  v3[10] = v19;
  v3[11] = &off_2879539D0;
  v3[7] = v25;
  v26 = OUTLINED_FUNCTION_42_13(v40, (v3 + 2));
  __swift_destroy_boxed_opaque_existential_0Tm(v26);
  __swift_destroy_boxed_opaque_existential_0Tm(&v39);
  v27 = OUTLINED_FUNCTION_8_33();
  v28(v27);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A8AA8, &qword_268B50B10);
  OUTLINED_FUNCTION_245(v29);
  OUTLINED_FUNCTION_270();
  sub_268B349A4();
  OUTLINED_FUNCTION_63_8();
  OUTLINED_FUNCTION_32_14();

  v30 = OUTLINED_FUNCTION_34_14();
  OUTLINED_FUNCTION_40_14(v30);
  OUTLINED_FUNCTION_0_53();
  OUTLINED_FUNCTION_65_7(v31, v32, v33, v34);
  OUTLINED_FUNCTION_30_18();
  OUTLINED_FUNCTION_61_8();

  v35 = OUTLINED_FUNCTION_19_20();
  v36(v35);
  OUTLINED_FUNCTION_37_18();
  OUTLINED_FUNCTION_23();
}

void sub_268B066BC()
{
  OUTLINED_FUNCTION_26();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A8AE0, &qword_268B50B28);
  OUTLINED_FUNCTION_1_15();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_0_35();
  MEMORY[0x28223BE20](v2);
  v3 = OUTLINED_FUNCTION_25_20();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_8();
  if (qword_2802A4F30 != -1)
  {
    v5 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v6 = OUTLINED_FUNCTION_10_30(v5, qword_2802CDA10);
  v7(v6);
  v8 = sub_268B37A34();
  v9 = sub_268B37ED4();
  if (OUTLINED_FUNCTION_33_20(v9))
  {
    v10 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_154_0(v10);
    OUTLINED_FUNCTION_24_20(&dword_2688BB000, v11, v12, "Initializing SetAudioLanguageFlow");
    OUTLINED_FUNCTION_33_1();
  }

  v13 = OUTLINED_FUNCTION_21_19();
  v14(v13);
  sub_268B069EC(v0);
  sub_268AD33CC(v40);
  sub_268AF90C4();
  OUTLINED_FUNCTION_28_21();
  OUTLINED_FUNCTION_6_43();
  MEMORY[0x28223BE20](v15);
  v17 = OUTLINED_FUNCTION_2_38(v16, v37);
  v18(v17);
  v19 = OUTLINED_FUNCTION_62_7();
  OUTLINED_FUNCTION_20_22(v19);
  v20 = type metadata accessor for SetAudioLanguageFlowStrategy();
  OUTLINED_FUNCTION_59_7(v20);
  OUTLINED_FUNCTION_35_15();
  OUTLINED_FUNCTION_5_32();
  MEMORY[0x28223BE20](v21);
  v23 = OUTLINED_FUNCTION_1_56(v22, v38);
  v24(v23);
  v25 = *v8;
  v3[10] = v19;
  v3[11] = &off_2879539D0;
  v3[7] = v25;
  v26 = OUTLINED_FUNCTION_42_13(v40, (v3 + 2));
  __swift_destroy_boxed_opaque_existential_0Tm(v26);
  __swift_destroy_boxed_opaque_existential_0Tm(&v39);
  v27 = OUTLINED_FUNCTION_8_33();
  v28(v27);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A8AE8, &qword_268B50B30);
  OUTLINED_FUNCTION_245(v29);
  OUTLINED_FUNCTION_270();
  sub_268B349A4();
  OUTLINED_FUNCTION_63_8();
  OUTLINED_FUNCTION_32_14();

  v30 = OUTLINED_FUNCTION_34_14();
  OUTLINED_FUNCTION_40_14(v30);
  OUTLINED_FUNCTION_0_53();
  OUTLINED_FUNCTION_65_7(v31, v32, v33, v34);
  OUTLINED_FUNCTION_30_18();
  OUTLINED_FUNCTION_61_8();

  v35 = OUTLINED_FUNCTION_19_20();
  v36(v35);
  OUTLINED_FUNCTION_37_18();
  OUTLINED_FUNCTION_23();
}

uint64_t sub_268B069EC@<X0>(uint64_t a1@<X8>)
{
  v62 = sub_268B36F44();
  v60 = *(v62 - 1);
  v2 = MEMORY[0x28223BE20](v62);
  v58 = v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v59 = v54 - v4;
  v5 = sub_268B37A54();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v5, qword_2802CDA10);
  (*(v6 + 16))(v8, v9, v5);
  v10 = sub_268B37A34();
  v11 = sub_268B37F04();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_2688BB000, v10, v11, "RCHChildFlowProducers.setAudioLanguageFlowProducers() called", v12, 2u);
    MEMORY[0x26D6266E0](v12, -1, -1);
  }

  (*(v6 + 8))(v8, v5);
  type metadata accessor for SetAudioLanguageIntent();
  type metadata accessor for SetAudioLanguageIntentResponse();
  sub_268B34A24();
  sub_268B368F4();
  swift_allocObject();
  v61 = sub_268B368C4();
  sub_268B354A4();
  sub_268AF8FAC();
  sub_268AF90C4();
  sub_268AF7A24();
  v13 = __swift_mutable_project_boxed_opaque_existential_1(v76, v77);
  v64 = v54;
  MEMORY[0x28223BE20](v13);
  v15 = (v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15);
  v17 = *v15;
  v18 = type metadata accessor for AnalyticsServiceImpl();
  v71 = v18;
  v72 = &off_2879539D0;
  *&v70 = v17;
  v63 = type metadata accessor for SetAudioLanguageConfirmIntentStrategy();
  v19 = swift_allocObject();
  v20 = __swift_mutable_project_boxed_opaque_existential_1(&v70, v18);
  v56 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v57 = (v21 + 15) & 0xFFFFFFFFFFFFFFF0;
  v22 = (v54 - v57);
  v24 = *(v23 + 16);
  v54[2] = v23 + 16;
  v55 = v24;
  v24(v54 - v57);
  v25 = *v22;
  v19[11] = v18;
  v19[12] = &off_2879539D0;
  v19[8] = v25;
  sub_2688E6514(v79, (v19 + 2));
  sub_26890C900(v78, v69);
  type metadata accessor for DialogProvider();
  v26 = swift_allocObject();
  sub_2688E6514(v69, v26 + 16);
  v19[7] = v26;
  sub_2688E6514(v78, (v19 + 18));
  sub_2688E6514(&v73, (v19 + 13));
  __swift_destroy_boxed_opaque_existential_0Tm(&v70);
  __swift_destroy_boxed_opaque_existential_0Tm(v76);
  sub_268B34954();
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A8AE0, &qword_268B50B28);
  v54[1] = a1;
  sub_268B349D4();
  sub_268B354A4();
  sub_268AF8FAC();
  v27 = v59;
  sub_268B36F34();
  sub_268AF90C4();
  sub_268AF7A24();
  v28 = __swift_mutable_project_boxed_opaque_existential_1(v76, v77);
  MEMORY[0x28223BE20](v28);
  (*(v30 + 16))(v54 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = v60;
  v32 = v62;
  (*(v60 + 16))(v58, v27, v62);
  sub_268B09618();
  v34 = v33;
  (*(v31 + 8))(v27, v32);
  __swift_destroy_boxed_opaque_existential_0Tm(v76);
  *&v79[0] = v34;
  type metadata accessor for SetAudioLanguageUnsupportedValueStrategy(0);
  sub_268B098E0(&qword_2802A8B00, type metadata accessor for SetAudioLanguageUnsupportedValueStrategy, &unk_268B43468);
  sub_268B34994();

  sub_268B349F4();
  sub_268B354A4();
  sub_268AF8FAC();
  sub_268AF90C4();
  v74 = v32;
  v75 = MEMORY[0x277D5F6F8];
  __swift_allocate_boxed_opaque_existential_1(&v73);
  sub_268B36F34();
  v35 = sub_268B36C54();
  v36 = sub_268B36C44();
  v71 = v35;
  v72 = MEMORY[0x277D5F680];
  *&v70 = v36;
  v37 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v38 = sub_26892CB58(0xD00000000000001FLL, 0x8000000268B575F0);
  sub_268AF7A24();
  v39 = __swift_mutable_project_boxed_opaque_existential_1(v76, v77);
  v62 = v54;
  MEMORY[0x28223BE20](v39);
  v41 = (v54 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v42 + 16))(v41);
  v43 = *v41;
  v68[4] = &off_2879539D0;
  v68[3] = v18;
  v68[0] = v43;
  v66 = &type metadata for UserDefaultsProviderImpl;
  v67 = &off_287952DF0;
  v65[0] = v38;
  type metadata accessor for SetAudioLanguageHandleIntentStrategy();
  v44 = swift_allocObject();
  v45 = __swift_mutable_project_boxed_opaque_existential_1(v68, v18);
  MEMORY[0x28223BE20](v45);
  v46 = (v54 - v57);
  v55(v54 - v57);
  v47 = __swift_mutable_project_boxed_opaque_existential_1(v65, v66);
  MEMORY[0x28223BE20](v47);
  v49 = (v54 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v50 + 16))(v49);
  v51 = *v46;
  v52 = *v49;
  v44[15] = v18;
  v44[16] = &off_2879539D0;
  v44[12] = v51;
  v44[30] = &type metadata for UserDefaultsProviderImpl;
  v44[31] = &off_287952DF0;
  v44[27] = v52;
  sub_2688E6514(v79, (v44 + 2));
  sub_2688E6514(v78, (v44 + 7));
  sub_2688E6514(&v73, (v44 + 17));
  sub_2688E6514(&v70, (v44 + 22));
  sub_2688E6514(v69, (v44 + 32));
  __swift_destroy_boxed_opaque_existential_0Tm(v65);
  __swift_destroy_boxed_opaque_existential_0Tm(v68);
  __swift_destroy_boxed_opaque_existential_0Tm(v76);
  *&v79[0] = v44;
  sub_268B098E0(&qword_2802A8B08, type metadata accessor for SetAudioLanguageHandleIntentStrategy, &unk_268B42A9C);
  sub_268B34944();

  sub_268B349C4();
  sub_268B34A14();
  *&v79[0] = v19;
  sub_268B098E0(&qword_2802A6F78, type metadata accessor for SetAudioLanguageConfirmIntentStrategy, &unk_268B43528);

  sub_268B34984();

  sub_268B349E4();
}

void sub_268B074FC()
{
  OUTLINED_FUNCTION_26();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A8A08, &qword_268B50AB8);
  OUTLINED_FUNCTION_1_15();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_0_35();
  MEMORY[0x28223BE20](v2);
  v3 = OUTLINED_FUNCTION_25_20();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_8();
  if (qword_2802A4F30 != -1)
  {
    v5 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v6 = OUTLINED_FUNCTION_10_30(v5, qword_2802CDA10);
  v7(v6);
  v8 = sub_268B37A34();
  v9 = sub_268B37ED4();
  if (OUTLINED_FUNCTION_33_20(v9))
  {
    v10 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_154_0(v10);
    OUTLINED_FUNCTION_24_20(&dword_2688BB000, v11, v12, "Initializing AddSpeakerFlow");
    OUTLINED_FUNCTION_33_1();
  }

  v13 = OUTLINED_FUNCTION_21_19();
  v14(v13);
  sub_268AF706C(v0);
  sub_268AD33CC(v40);
  sub_268AF90C4();
  OUTLINED_FUNCTION_28_21();
  OUTLINED_FUNCTION_6_43();
  MEMORY[0x28223BE20](v15);
  v17 = OUTLINED_FUNCTION_2_38(v16, v37);
  v18(v17);
  v19 = OUTLINED_FUNCTION_62_7();
  OUTLINED_FUNCTION_20_22(v19);
  v20 = type metadata accessor for AddSpeakerFlowStrategy();
  OUTLINED_FUNCTION_59_7(v20);
  OUTLINED_FUNCTION_35_15();
  OUTLINED_FUNCTION_5_32();
  MEMORY[0x28223BE20](v21);
  v23 = OUTLINED_FUNCTION_1_56(v22, v38);
  v24(v23);
  v25 = *v8;
  v3[10] = v19;
  v3[11] = &off_2879539D0;
  v3[7] = v25;
  v26 = OUTLINED_FUNCTION_42_13(v40, (v3 + 2));
  __swift_destroy_boxed_opaque_existential_0Tm(v26);
  __swift_destroy_boxed_opaque_existential_0Tm(&v39);
  v27 = OUTLINED_FUNCTION_8_33();
  v28(v27);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A8A10, &qword_268B50AC0);
  OUTLINED_FUNCTION_245(v29);
  OUTLINED_FUNCTION_270();
  sub_268B349A4();
  OUTLINED_FUNCTION_63_8();
  OUTLINED_FUNCTION_32_14();

  v30 = OUTLINED_FUNCTION_34_14();
  OUTLINED_FUNCTION_40_14(v30);
  OUTLINED_FUNCTION_0_53();
  OUTLINED_FUNCTION_65_7(v31, v32, v33, v34);
  OUTLINED_FUNCTION_30_18();
  OUTLINED_FUNCTION_61_8();

  v35 = OUTLINED_FUNCTION_19_20();
  v36(v35);
  OUTLINED_FUNCTION_37_18();
  OUTLINED_FUNCTION_23();
}

void sub_268B0782C()
{
  OUTLINED_FUNCTION_26();
  v42 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A8A08, &qword_268B50AB8);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_216_0();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_47_10();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_8();
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  __swift_project_value_buffer(v5, qword_2802CDA10);
  v7 = OUTLINED_FUNCTION_26_19();
  v8(v7);
  v9 = sub_268B37A34();
  v10 = sub_268B37ED4();
  if (OUTLINED_FUNCTION_66_9(v10))
  {
    v11 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_77_7(v11);
    OUTLINED_FUNCTION_34_13(&dword_2688BB000, v12, v13, "Initializing AddSpeakerFlow with intent");
    OUTLINED_FUNCTION_12();
  }

  v14 = OUTLINED_FUNCTION_51_9();
  v15(v14);
  v16 = sub_268B368F4();
  OUTLINED_FUNCTION_245(v16);
  OUTLINED_FUNCTION_23_22();
  OUTLINED_FUNCTION_84_7();
  sub_268AF706C(v17);
  sub_268AD33CC(v44);
  sub_268AF90C4();
  OUTLINED_FUNCTION_28_21();
  OUTLINED_FUNCTION_5_32();
  MEMORY[0x28223BE20](v18);
  v20 = OUTLINED_FUNCTION_11_34(v19, v41);
  v21(v20);
  v22 = OUTLINED_FUNCTION_94_7();
  OUTLINED_FUNCTION_55_11(v22);
  v23 = type metadata accessor for AddSpeakerFlowStrategy();
  v24 = OUTLINED_FUNCTION_59_7(v23);
  OUTLINED_FUNCTION_60_7();
  OUTLINED_FUNCTION_31_10();
  MEMORY[0x28223BE20](v25);
  v27 = OUTLINED_FUNCTION_12_28(v26, v0);
  v28(v27);
  v29 = *v1;
  v24[10] = v22;
  v24[11] = &off_2879539D0;
  v24[7] = v29;
  v30 = OUTLINED_FUNCTION_42_13(v44, (v24 + 2));
  __swift_destroy_boxed_opaque_existential_0Tm(v30);
  __swift_destroy_boxed_opaque_existential_0Tm(&v43);
  v31 = OUTLINED_FUNCTION_22_20();
  v32(v31);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A8A10, &qword_268B50AC0);
  OUTLINED_FUNCTION_245(v33);
  OUTLINED_FUNCTION_91_6();
  OUTLINED_FUNCTION_90_8();
  OUTLINED_FUNCTION_68_9();

  v34 = OUTLINED_FUNCTION_39_11(v42);
  OUTLINED_FUNCTION_83_8(v34);
  OUTLINED_FUNCTION_0_53();
  OUTLINED_FUNCTION_93_9(v35, v36, v37, v38);
  OUTLINED_FUNCTION_38_9();
  sub_268B34A54();
  OUTLINED_FUNCTION_270();

  v39 = OUTLINED_FUNCTION_54_8();
  v40(v39);
  OUTLINED_FUNCTION_37_18();
  OUTLINED_FUNCTION_23();
}

void sub_268B07BBC()
{
  OUTLINED_FUNCTION_26();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A8B28, &qword_268B50B48);
  OUTLINED_FUNCTION_1_15();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_0_35();
  MEMORY[0x28223BE20](v2);
  v3 = OUTLINED_FUNCTION_25_20();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_8();
  if (qword_2802A4F30 != -1)
  {
    v5 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v6 = OUTLINED_FUNCTION_10_30(v5, qword_2802CDA10);
  v7(v6);
  v8 = sub_268B37A34();
  v9 = sub_268B37ED4();
  if (OUTLINED_FUNCTION_33_20(v9))
  {
    v10 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_154_0(v10);
    OUTLINED_FUNCTION_24_20(&dword_2688BB000, v11, v12, "Initializing MoveSpeakerFlow");
    OUTLINED_FUNCTION_33_1();
  }

  v13 = OUTLINED_FUNCTION_21_19();
  v14(v13);
  sub_268AFE714(v0);
  sub_268AD33CC(v40);
  sub_268AF90C4();
  OUTLINED_FUNCTION_28_21();
  OUTLINED_FUNCTION_6_43();
  MEMORY[0x28223BE20](v15);
  v17 = OUTLINED_FUNCTION_2_38(v16, v37);
  v18(v17);
  v19 = OUTLINED_FUNCTION_62_7();
  OUTLINED_FUNCTION_20_22(v19);
  v20 = type metadata accessor for MoveSpeakerFlowStrategy();
  OUTLINED_FUNCTION_59_7(v20);
  OUTLINED_FUNCTION_35_15();
  OUTLINED_FUNCTION_5_32();
  MEMORY[0x28223BE20](v21);
  v23 = OUTLINED_FUNCTION_1_56(v22, v38);
  v24(v23);
  v25 = *v8;
  v3[10] = v19;
  v3[11] = &off_2879539D0;
  v3[7] = v25;
  v26 = OUTLINED_FUNCTION_42_13(v40, (v3 + 2));
  __swift_destroy_boxed_opaque_existential_0Tm(v26);
  __swift_destroy_boxed_opaque_existential_0Tm(&v39);
  v27 = OUTLINED_FUNCTION_8_33();
  v28(v27);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A8B30, &qword_268B50B50);
  OUTLINED_FUNCTION_245(v29);
  OUTLINED_FUNCTION_270();
  sub_268B349A4();
  OUTLINED_FUNCTION_63_8();
  OUTLINED_FUNCTION_32_14();

  v30 = OUTLINED_FUNCTION_34_14();
  OUTLINED_FUNCTION_40_14(v30);
  OUTLINED_FUNCTION_0_53();
  OUTLINED_FUNCTION_65_7(v31, v32, v33, v34);
  OUTLINED_FUNCTION_30_18();
  OUTLINED_FUNCTION_61_8();

  v35 = OUTLINED_FUNCTION_19_20();
  v36(v35);
  OUTLINED_FUNCTION_37_18();
  OUTLINED_FUNCTION_23();
}

uint64_t sub_268B07EEC()
{
  sub_268B37A54();
  OUTLINED_FUNCTION_1_15();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_8();
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  __swift_project_value_buffer(v0, qword_2802CDA10);
  v5 = OUTLINED_FUNCTION_139();
  v6(v5);
  v7 = sub_268B37A34();
  v8 = sub_268B37ED4();
  if (os_log_type_enabled(v7, v8))
  {
    *OUTLINED_FUNCTION_14() = 0;
    OUTLINED_FUNCTION_89_9(&dword_2688BB000, v9, v10, "Initializing QuickStopLocalStoppedFlow");
    OUTLINED_FUNCTION_12();
  }

  (*(v3 + 8))(v1, v0);
  sub_268B34C64();
  sub_268B354A4();
  sub_268AF8FAC();
  sub_268AF90C4();
  __swift_mutable_project_boxed_opaque_existential_1(v24, v24[3]);
  OUTLINED_FUNCTION_3_8();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2_8();
  (*(v12 + 16))(v1);
  v13 = *v1;
  v14 = type metadata accessor for AnalyticsServiceImpl();
  v23[3] = v14;
  v23[4] = &off_2879539D0;
  v23[0] = v13;
  type metadata accessor for QuickStopLocalStoppedFlow();
  v15 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v23, v14);
  OUTLINED_FUNCTION_6_43();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_1_0();
  v18 = OUTLINED_FUNCTION_78_1(v17);
  v19(v18);
  v20 = *v8;
  v15[20] = v14;
  v15[21] = &off_2879539D0;
  v15[17] = v20;
  sub_2688E6514(&v27, (v15 + 2));
  sub_2688E6514(&v26, (v15 + 7));
  sub_2688E6514(&v25, (v15 + 12));
  __swift_destroy_boxed_opaque_existential_0Tm(v23);
  __swift_destroy_boxed_opaque_existential_0Tm(v24);
  *&v27 = v15;
  sub_268B098E0(&qword_2802A8988, type metadata accessor for QuickStopLocalStoppedFlow, &unk_268B3CEB0);
  v21 = sub_268B34A54();

  return v21;
}

void sub_268B08224()
{
  OUTLINED_FUNCTION_26();
  v1 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_8();
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  __swift_project_value_buffer(v1, qword_2802CDA10);
  v5 = OUTLINED_FUNCTION_139();
  v6(v5);
  v7 = sub_268B37A34();
  v8 = sub_268B37ED4();
  if (OUTLINED_FUNCTION_80_7(v8))
  {
    *OUTLINED_FUNCTION_14() = 0;
    OUTLINED_FUNCTION_20_5(&dword_2688BB000, v9, v10, "Initializing QuickStopNothingToStopFlow");
    OUTLINED_FUNCTION_12();
  }

  v11 = OUTLINED_FUNCTION_70_8();
  v12(v11);
  sub_268B34C64();
  sub_268B354A4();
  sub_268AF8FAC();
  sub_268AF90C4();
  v13 = sub_268B36C54();
  v14 = sub_268B36C44();
  v50 = v13;
  v51 = MEMORY[0x277D5F680];
  *&v49 = v14;
  if (qword_2802A4D38 != -1)
  {
    swift_once();
  }

  v15 = qword_2802CD8E0;
  __swift_mutable_project_boxed_opaque_existential_1(v52, v52[3]);
  v44[1] = v44;
  OUTLINED_FUNCTION_3_8();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_1_0();
  v18 = OUTLINED_FUNCTION_78_1(v17);
  v19(v18);
  v20 = *v7;
  v21 = type metadata accessor for AnalyticsServiceImpl();
  v48[3] = v21;
  v48[4] = &off_2879539D0;
  v48[0] = v20;
  v22 = type metadata accessor for NothingToStopTracker(0);
  v46 = v22;
  v47 = &off_287951C90;
  v45[0] = v15;
  type metadata accessor for QuickStopNothingToStopFlow();
  v23 = swift_allocObject();
  v24 = __swift_mutable_project_boxed_opaque_existential_1(v48, v21);
  OUTLINED_FUNCTION_69_10(v24, v25, v26, v27, v28, v29, v30, v31, v44[0]);
  OUTLINED_FUNCTION_3_8();
  MEMORY[0x28223BE20](v32);
  v34 = OUTLINED_FUNCTION_11_34(v33, v44[0]);
  v35(v34);
  __swift_mutable_project_boxed_opaque_existential_1(v45, v46);
  OUTLINED_FUNCTION_3_8();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_1_0();
  v38 = OUTLINED_FUNCTION_75_7(v37);
  v39(v38);
  v40 = *v3;
  v41 = *v0;
  v23[20] = v21;
  v23[21] = &off_2879539D0;
  v23[17] = v40;
  v23[31] = v22;
  v23[32] = &off_287951C90;
  v23[28] = v41;
  sub_26890C900(v55, (v23 + 2));
  sub_26890C900(v54, (v23 + 7));
  sub_2688E6514(&v53, (v23 + 12));
  v42 = type metadata accessor for AceServiceHelper();
  v43 = OUTLINED_FUNCTION_59_7(v42);
  sub_2688E6514(v54, v43 + 16);
  sub_2688E6514(v55, v43 + 56);
  v23[22] = v43;
  sub_2688E6514(&v49, (v23 + 23));

  __swift_destroy_boxed_opaque_existential_0Tm(v45);
  __swift_destroy_boxed_opaque_existential_0Tm(v48);
  __swift_destroy_boxed_opaque_existential_0Tm(v52);
  *&v55[0] = v23;
  sub_268B098E0(&qword_2802A8990, type metadata accessor for QuickStopNothingToStopFlow, &unk_268B4A770);
  OUTLINED_FUNCTION_76_7();
  OUTLINED_FUNCTION_270();

  OUTLINED_FUNCTION_37_18();
  OUTLINED_FUNCTION_23();
}

void sub_268B0869C()
{
  OUTLINED_FUNCTION_26();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A8C38, &qword_268B50BD8);
  OUTLINED_FUNCTION_1_15();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_0_35();
  MEMORY[0x28223BE20](v2);
  v3 = OUTLINED_FUNCTION_25_20();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_8();
  if (qword_2802A4F30 != -1)
  {
    v5 = OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  v6 = OUTLINED_FUNCTION_10_30(v5, qword_2802CDA10);
  v7(v6);
  v8 = sub_268B37A34();
  v9 = sub_268B37ED4();
  if (OUTLINED_FUNCTION_33_20(v9))
  {
    v10 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_154_0(v10);
    OUTLINED_FUNCTION_24_20(&dword_2688BB000, v11, v12, "Initializing SetPlaybackSpeedFlow");
    OUTLINED_FUNCTION_33_1();
  }

  v13 = OUTLINED_FUNCTION_21_19();
  v14(v13);
  sub_268B018D0(v0);
  sub_268AD33CC(v40);
  sub_268AF90C4();
  OUTLINED_FUNCTION_28_21();
  OUTLINED_FUNCTION_6_43();
  MEMORY[0x28223BE20](v15);
  v17 = OUTLINED_FUNCTION_2_38(v16, v37);
  v18(v17);
  v19 = OUTLINED_FUNCTION_62_7();
  OUTLINED_FUNCTION_20_22(v19);
  v20 = type metadata accessor for SetPlaybackSpeedFlowStrategy();
  OUTLINED_FUNCTION_59_7(v20);
  OUTLINED_FUNCTION_35_15();
  OUTLINED_FUNCTION_5_32();
  MEMORY[0x28223BE20](v21);
  v23 = OUTLINED_FUNCTION_1_56(v22, v38);
  v24(v23);
  v25 = *v8;
  v3[10] = v19;
  v3[11] = &off_2879539D0;
  v3[7] = v25;
  v26 = OUTLINED_FUNCTION_42_13(v40, (v3 + 2));
  __swift_destroy_boxed_opaque_existential_0Tm(v26);
  __swift_destroy_boxed_opaque_existential_0Tm(&v39);
  v27 = OUTLINED_FUNCTION_8_33();
  v28(v27);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A8C40, &qword_268B50BE0);
  OUTLINED_FUNCTION_245(v29);
  OUTLINED_FUNCTION_270();
  sub_268B349A4();
  OUTLINED_FUNCTION_63_8();
  OUTLINED_FUNCTION_32_14();

  v30 = OUTLINED_FUNCTION_34_14();
  OUTLINED_FUNCTION_40_14(v30);
  OUTLINED_FUNCTION_0_53();
  OUTLINED_FUNCTION_65_7(v31, v32, v33, v34);
  OUTLINED_FUNCTION_30_18();
  OUTLINED_FUNCTION_61_8();

  v35 = OUTLINED_FUNCTION_19_20();
  v36(v35);
  OUTLINED_FUNCTION_37_18();
  OUTLINED_FUNCTION_23();
}

uint64_t sub_268B089CC()
{
  sub_268B37A54();
  OUTLINED_FUNCTION_1_15();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_8();
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802A4F30);
  }

  __swift_project_value_buffer(v0, qword_2802CDA10);
  v5 = OUTLINED_FUNCTION_139();
  v6(v5);
  v7 = sub_268B37A34();
  v8 = sub_268B37ED4();
  if (os_log_type_enabled(v7, v8))
  {
    *OUTLINED_FUNCTION_14() = 0;
    OUTLINED_FUNCTION_89_9(&dword_2688BB000, v9, v10, "Initializing showLyricsFlow");
    OUTLINED_FUNCTION_12();
  }

  (*(v3 + 8))(v1, v0);
  sub_268B34C54();
  v36 = type metadata accessor for AppIntentInvoker();
  v37 = &protocol witness table for AppIntentInvoker;
  *&v35 = swift_allocObject();
  sub_268AF90C4();
  sub_268AF8FAC();
  v11 = sub_268B36C54();
  v12 = sub_268B36C44();
  v31 = v11;
  v32 = MEMORY[0x277D5F680];
  *&v30 = v12;
  __swift_mutable_project_boxed_opaque_existential_1(v34, v34[3]);
  OUTLINED_FUNCTION_3_8();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_2_8();
  (*(v14 + 16))(v11);
  v15 = *v11;
  v16 = type metadata accessor for AnalyticsServiceImpl();
  v29[4] = &off_2879539D0;
  v29[3] = v16;
  v29[0] = v15;
  v17 = type metadata accessor for SetLyricsStateFlow(0);
  v18 = OUTLINED_FUNCTION_245(v17);
  __swift_mutable_project_boxed_opaque_existential_1(v29, v16);
  OUTLINED_FUNCTION_31_10();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_1_0();
  v21 = OUTLINED_FUNCTION_78_1(v20);
  v22(v21);
  v23 = *v8;
  v24 = (v18 + OBJC_IVAR____TtC26SiriPlaybackControlIntents18SetLyricsStateFlow_analyticsService);
  v24[3] = v16;
  v24[4] = &off_2879539D0;
  *v24 = v23;
  v25 = OBJC_IVAR____TtC26SiriPlaybackControlIntents18SetLyricsStateFlow_input;
  v26 = sub_268B35434();
  __swift_storeEnumTagSinglePayload(v18 + v25, 1, 1, v26);
  sub_2688E6514(&v38, v18 + OBJC_IVAR____TtC26SiriPlaybackControlIntents18SetLyricsStateFlow_aceServiceInvoker);
  sub_2688E6514(&v35, v18 + OBJC_IVAR____TtC26SiriPlaybackControlIntents18SetLyricsStateFlow_appIntentInvoker);
  sub_2688E6514(&v33, v18 + OBJC_IVAR____TtC26SiriPlaybackControlIntents18SetLyricsStateFlow_dialogProvider);
  sub_2688E6514(&v30, v18 + OBJC_IVAR____TtC26SiriPlaybackControlIntents18SetLyricsStateFlow_playbackController);
  __swift_destroy_boxed_opaque_existential_0Tm(v29);
  __swift_destroy_boxed_opaque_existential_0Tm(v34);
  *&v38 = v18;
  sub_268B098E0(&qword_2802A7270, type metadata accessor for SetLyricsStateFlow, &unk_268B444F8);
  v27 = sub_268B34A54();

  return v27;
}

uint64_t sub_268B08DC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v68 = a7;
  v64 = a3;
  v65 = a4;
  v62 = a1;
  v63 = a2;
  v12 = sub_268B36F44();
  v61 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v60 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_268B37A54();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v14, qword_2802CDA10);
  (*(v15 + 16))(v17, v18, v14);
  v19 = sub_268B37A34();
  v20 = sub_268B37ED4();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v59 = v12;
    v22 = a5;
    v23 = a6;
    v24 = a8;
    v25 = v21;
    *v21 = 0;
    _os_log_impl(&dword_2688BB000, v19, v20, "getDisambiguationStrategy() for SetAudioLanguage called", v21, 2u);
    v26 = v25;
    a8 = v24;
    a6 = v23;
    a5 = v22;
    v12 = v59;
    MEMORY[0x26D6266E0](v26, -1, -1);
  }

  (*(v15 + 8))(v17, v14);
  v27 = a5 == 0x656369766564 && a6 == 0xE600000000000000;
  v66 = a5;
  v67 = a6;
  if (v27 || (sub_268B38444() & 1) != 0)
  {
    sub_268B354A4();
    v28 = sub_268B37B84();
    v29 = sub_268B37B84();
    v30 = v60;
    sub_268B36F34();
    v31 = type metadata accessor for BaseDialogProvider();
    v32 = swift_allocObject();
    v33 = MEMORY[0x277D5F6F8];
    v79 = v12;
    v80 = MEMORY[0x277D5F6F8];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v78);
    (*(v61 + 32))(boxed_opaque_existential_1, v30, v12);
    *(v32 + 16) = 0;
    *(v32 + 24) = v28;
    *(v32 + 72) = v29;
    sub_2688E6514(&v78, v32 + 32);
    v79 = v31;
    v80 = &off_2879561B0;
    v77 = v33;
    *&v78 = v32;
    v76 = v12;
    __swift_allocate_boxed_opaque_existential_1(&v75);
    sub_268B36F34();
    v73 = sub_268B374D4();
    v74 = MEMORY[0x277D5F8B0];
    __swift_allocate_boxed_opaque_existential_1(&v72);
    sub_268B374C4();
    sub_268AF90C4();
    sub_268AF7A24();
    v35 = __swift_mutable_project_boxed_opaque_existential_1(v71, v71[3]);
    MEMORY[0x28223BE20](v35);
    v37 = (&v59 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v38 + 16))(v37);
    v39 = *v37;
    type metadata accessor for SetAudioLanguageDeviceDisambiguationStrategy();
    v40 = swift_allocObject();
    v40[21] = type metadata accessor for AnalyticsServiceImpl();
    v40[22] = &off_2879539D0;
    v40[18] = v39;
    sub_2688E6514(v81, (v40 + 2));
    sub_26890C900(&v78, v69);
    type metadata accessor for DialogProvider();
    v41 = swift_allocObject();
    sub_2688E6514(v69, v41 + 16);
    v40[7] = v41;
    sub_2688E6514(&v75, (v40 + 8));
    sub_2688E6514(&v72, (v40 + 13));
    sub_2688E6514(&v78, (v40 + 28));
    sub_2688E6514(&v70, (v40 + 23));
    __swift_destroy_boxed_opaque_existential_0Tm(v71);
    *&v81[0] = v40;
    sub_268B098E0(&qword_2802A8920, type metadata accessor for SetAudioLanguageDeviceDisambiguationStrategy, &unk_268B504C0);
    v42 = sub_268B34974();
    v44 = v43;

    v45 = j__OUTLINED_FUNCTION_27_14;
LABEL_17:
    v57 = swift_allocObject();
    *(v57 + 16) = v42;
    *(v57 + 24) = v44;

    v45(v62, v63, v64, v65, v66, v67, v68, a8, a9);
  }

  v46 = a5 == 0x65676175676E616CLL && a6 == 0xE800000000000000;
  if (v46 || (sub_268B38444() & 1) != 0)
  {
    sub_268B354A4();
    sub_268AF8FAC();
    sub_268AF90C4();
    sub_268AF7A24();
    v47 = v60;
    sub_268B36F34();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A8B10, &qword_268B50B40);
    v48 = swift_allocObject();
    v49 = __swift_mutable_project_boxed_opaque_existential_1(&v75, v76);
    MEMORY[0x28223BE20](v49);
    v51 = (&v59 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v52 + 16))(v51);
    v53 = *v51;
    v48[20] = type metadata accessor for AnalyticsServiceImpl();
    v48[21] = &off_2879539D0;
    v48[17] = v53;
    v54 = MEMORY[0x277D5F6F8];
    v48[30] = v12;
    v48[31] = v54;
    v55 = __swift_allocate_boxed_opaque_existential_1(v48 + 27);
    (*(v61 + 32))(v55, v47, v12);
    sub_2688E6514(v81, (v48 + 2));
    sub_26890C900(&v78, (v48 + 7));
    sub_2688E6514(&v78, (v48 + 12));
    sub_2688E6514(&v72, (v48 + 22));
    __swift_destroy_boxed_opaque_existential_0Tm(&v75);
    *&v81[0] = v48;
    sub_2688F4354(&qword_2802A8B18, &qword_2802A8B10, &qword_268B50B40, &unk_268B3EFE0);
    v42 = sub_268B34974();
    v44 = v56;

    v45 = sub_268B09888;
    goto LABEL_17;
  }

  result = sub_268B38284();
  __break(1u);
  return result;
}

void sub_268B09618()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v27 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = sub_268B36F44();
  v31 = v11;
  v32 = MEMORY[0x277D5F6F8];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v30);
  (*(*(v11 - 8) + 32))(boxed_opaque_existential_1, v6, v11);
  v13 = type metadata accessor for AnalyticsServiceImpl();
  v29[3] = v13;
  v29[4] = &off_2879539D0;
  v29[0] = v4;
  v1(0);
  v14 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v29, v13);
  OUTLINED_FUNCTION_3_8();
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v19);
  v20 = (&v28[-1] - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = *(v16 + 16);
  v21(v20);
  v22 = *v20;
  v28[3] = v13;
  v28[4] = &off_2879539D0;
  v28[0] = v22;
  sub_26890C900(v8, (v14 + 23));
  __swift_mutable_project_boxed_opaque_existential_1(v28, v13);
  OUTLINED_FUNCTION_74_8();
  MEMORY[0x28223BE20](v23);
  v21(v20);
  v24 = *v20;
  v14[16] = v13;
  v14[17] = &off_2879539D0;
  v14[13] = v24;
  sub_2688E6514(v10, (v14 + 2));
  type metadata accessor for DialogProvider();
  v25 = swift_allocObject();
  sub_2688E6514(v8, v25 + 16);
  v14[7] = v25;
  sub_2688E6514(&v30, (v14 + 8));
  v26 = OUTLINED_FUNCTION_42_13(v27, (v14 + 18));
  __swift_destroy_boxed_opaque_existential_0Tm(v26);
  __swift_destroy_boxed_opaque_existential_0Tm(v29);
  OUTLINED_FUNCTION_23();
}