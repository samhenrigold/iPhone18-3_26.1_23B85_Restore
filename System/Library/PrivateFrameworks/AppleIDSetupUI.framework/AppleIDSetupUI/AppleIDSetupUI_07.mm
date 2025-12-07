uint64_t sub_2409DFAFC()
{
  v1 = sub_240A2B00C();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2409DFBB8, 0, 0);
}

uint64_t sub_2409DFBB8(uint64_t a1)
{
  sub_240A2AE9C();
  v2 = sub_240A2AFFC();
  v3 = sub_240A2C2CC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2408FE000, v2, v3, "AISAppleIDAuthContextProvider signAdditionalHeaders", v4, 2u);
    MEMORY[0x245CCDDB0](v4, -1, -1);
  }

  v6 = v1[3];
  v5 = v1[4];
  v7 = v1[2];

  (*(v6 + 8))(v5, v7);

  v8 = v1[1];

  return v8(0);
}

uint64_t AISSignInSettings.completion.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t AISSignInSettings.onSkip.getter()
{
  v1 = *(v0 + 40);
  sub_240964BBC(v1, *(v0 + 48));
  return v1;
}

uint64_t AISSignInSettings.deinit()
{

  sub_24090C1A0(*(v0 + 40), *(v0 + 48));
  return v0;
}

uint64_t AISSignInSettings.__deallocating_deinit()
{

  sub_24090C1A0(*(v0 + 40), *(v0 + 48));

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t sub_2409DFDA0@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for AISSignInSettings();
  result = sub_240A2B0BC();
  *a2 = result;
  return result;
}

uint64_t type metadata accessor for AgeMigrationHostingController(uint64_t a1)
{
  result = qword_27E50E600;
  if (!qword_27E50E600)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2409DFE80(uint64_t a1)
{
  v3 = type metadata accessor for AgeMigrationView(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_allocWithZone(v1);
  sub_24092F130(a1, v5);
  v7 = sub_240A2B5EC();
  sub_24092F194(a1);
  return v7;
}

void sub_2409DFF20(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_2409DFF88()
{
  v0 = sub_240A2B00C();
  __swift_allocate_value_buffer(v0, qword_27E50E5E8);
  __swift_project_value_buffer(v0, qword_27E50E5E8);
  return sub_240A2AE5C();
}

void sub_2409DFFD4()
{
  v1 = v0;
  v2 = type metadata accessor for AgeMigrationView(0);
  MEMORY[0x28223BE20](v2);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AgeMigrationHostingController(0);
  v11.receiver = v0;
  v11.super_class = v5;
  objc_msgSendSuper2(&v11, sel_viewDidLoad);
  v6 = [v0 navigationItem];
  sub_2409E0948();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = sub_240A2C39C();
  [v6 setBackAction_];

  sub_240A2B5FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C9E0, qword_240A336A8);
  sub_240A2BD7C();
  sub_24092F194(v4);
  v8 = v10[1];
  v9 = v1;
  sub_2409AEC1C(v1);
}

void sub_2409E016C(void *a1)
{
  v1 = a1;
  sub_2409DFFD4();
}

void sub_2409E01B4()
{
  sub_240A2BFDC();
  sub_240A2BFDC();
  v1 = sub_240A2BF1C();

  v2 = sub_240A2BF1C();

  v3 = [objc_opt_self() alertControllerWithTitle:v1 message:v2 preferredStyle:1];

  sub_240A2BFDC();
  v4 = sub_240A2BF1C();

  v5 = objc_opt_self();
  v6 = [v5 actionWithTitle:v4 style:0 handler:0];

  [v3 addAction_];
  sub_240A2BFDC();
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v8 = sub_240A2BF1C();

  v11[4] = sub_2409E09C4;
  v11[5] = v7;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_2409DFF20;
  v11[3] = &block_descriptor_20;
  v9 = _Block_copy(v11);

  v10 = [v5 actionWithTitle:v8 style:2 handler:v9];
  _Block_release(v9);

  [v3 addAction_];
  [v0 presentViewController:v3 animated:1 completion:0];
}

void sub_2409E0460(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    a3();
  }
}

void sub_2409E04BC()
{
  v1 = sub_240A2A33C();
  MEMORY[0x28223BE20](v1);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AgeMigrationView(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v0 navigationController];
  if (v7)
  {
    v8 = v7;
    sub_240A2B5FC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C9E0, qword_240A336A8);
    sub_240A2BD7C();
    sub_24092F194(v6);
    v9 = v16;
    *v3 = xmmword_240A315B0;
    *(v3 + 3) = 0;
    *(v3 + 4) = 0;
    *(v3 + 2) = 0;
    swift_storeEnumTagMultiPayload();
    swift_getKeyPath();
    v16 = v9;
    sub_24092F0D8();
    sub_240A296EC();

    v16 = v9;
    swift_getKeyPath();
    sub_240A2970C();

    swift_beginAccess();
    sub_240A2A35C();
    swift_endAccess();
    v16 = v9;
    swift_getKeyPath();
    sub_240A296FC();

    v10 = [v8 popViewControllerAnimated_];
  }

  else
  {
    if (qword_27E50AF90 != -1)
    {
      swift_once();
    }

    v11 = sub_240A2B00C();
    __swift_project_value_buffer(v11, qword_27E50E5E8);
    v15 = sub_240A2AFFC();
    v12 = sub_240A2C2AC();
    if (os_log_type_enabled(v15, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_2408FE000, v15, v12, "Could not pop back because navigation controller is nil", v13, 2u);
      MEMORY[0x245CCDDB0](v13, -1, -1);
    }

    v14 = v15;
  }
}

uint64_t sub_2409E07E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AgeMigrationView(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = objc_allocWithZone(v2);
  sub_24092F130(a2, v6);
  v8 = sub_240A2B5CC();
  sub_24092F194(a2);
  return v8;
}

id sub_2409E088C(void *a1, uint64_t a2, void *a3)
{
  v7.receiver = a1;
  v7.super_class = type metadata accessor for AgeMigrationHostingController(0);
  v4 = a3;
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, v4);

  if (v5)
  {
  }

  return v5;
}

id sub_2409E0908()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AgeMigrationHostingController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2409E0948()
{
  result = qword_27E50D8D0;
  if (!qword_27E50D8D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E50D8D0);
  }

  return result;
}

uint64_t block_copy_helper_20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

char *sub_2409E0A0C(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *(a1 + 24);
  v6 = OBJC_IVAR____TtC14AppleIDSetupUI20ImageCardContentView_imageConfiguration;
  v7 = [objc_opt_self() systemFontOfSize_];
  v8 = [objc_opt_self() configurationWithFont_];

  *&v1[v6] = v8;
  v9 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithFrame_];
  *&v1[OBJC_IVAR____TtC14AppleIDSetupUI20ImageCardContentView_imageView] = v9;
  result = [v9 tintColor];
  if (result)
  {
    *&v1[OBJC_IVAR____TtC14AppleIDSetupUI20ImageCardContentView_imageTintColor] = result;
    v11 = &v1[OBJC_IVAR____TtC14AppleIDSetupUI20ImageCardContentView_imageDefinition];
    *v11 = v2;
    *(v11 + 1) = v3;
    *(v11 + 2) = v4;
    v11[24] = v5;
    v35.receiver = v1;
    v35.super_class = type metadata accessor for ImageCardContentView();
    v12 = objc_msgSendSuper2(&v35, sel_initWithCardStyle_, 0);
    v13 = OBJC_IVAR____TtC14AppleIDSetupUI20ImageCardContentView_imageView;
    v14 = *(v12 + OBJC_IVAR____TtC14AppleIDSetupUI20ImageCardContentView_imageView);
    v15 = v12;
    [v14 setTranslatesAutoresizingMaskIntoConstraints_];
    [*(v12 + v13) setContentMode_];
    [v15 addSubview_];
    v16 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C9A0, qword_240A31380);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_240A33530;
    v18 = [*(v12 + v13) centerXAnchor];
    v19 = [v15 mainContentGuide];
    v20 = [v19 centerXAnchor];

    v21 = [v18 constraintEqualToAnchor_];
    *(v17 + 32) = v21;
    v22 = [*(v12 + v13) centerYAnchor];
    v23 = [v15 mainContentGuide];
    v24 = [v23 centerYAnchor];

    v25 = [v22 constraintEqualToAnchor_];
    *(v17 + 40) = v25;
    v26 = [*(v12 + v13) topAnchor];
    v27 = [v15 mainContentGuide];
    v28 = [v27 topAnchor];

    v29 = [v26 constraintGreaterThanOrEqualToAnchor_];
    *(v17 + 48) = v29;
    v30 = [*(v12 + v13) bottomAnchor];
    v31 = [v15 mainContentGuide];

    v32 = [v31 bottomAnchor];
    v33 = [v30 constraintLessThanOrEqualToAnchor_];

    *(v17 + 56) = v33;
    sub_24092F234();
    v34 = sub_240A2C15C();

    [v16 activateConstraints_];

    sub_2409E0EDC();
    return v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_2409E0EDC()
{
  v2 = *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI20ImageCardContentView_imageDefinition);
  v1 = *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI20ImageCardContentView_imageDefinition + 8);
  v3 = *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI20ImageCardContentView_imageDefinition + 16);
  v4 = *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI20ImageCardContentView_imageDefinition + 24);
  if (v4 <= 1)
  {
    v5 = *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI20ImageCardContentView_imageView);
    v6 = *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI20ImageCardContentView_imageConfiguration);
    if (v4)
    {

      v12 = v3;
      v13 = [v6 configurationByApplyingConfiguration_];
      v14 = sub_240A2BF1C();

      v20 = [objc_opt_self() systemImageNamed:v14 withConfiguration:v13];

      [v5 setImage_];
    }

    else
    {
      sub_2409E12F0(v2, v1, v3, 0);
      v7 = v6;
      v8 = sub_240A2BF1C();
      sub_2409E13A4(v2, v1, v3, 0);
      v20 = [objc_opt_self() systemImageNamed:v8 withConfiguration:v7];

      [v5 setImage_];
    }

LABEL_15:

    return;
  }

  if (v4 == 2)
  {
    v9 = *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI20ImageCardContentView_imageView);
    if (v3)
    {

      v10 = v3;
      v11 = v10;
    }

    else
    {
      v17 = qword_27E50AFA8;

      if (v17 != -1)
      {
        swift_once();
      }

      v11 = qword_27E516348;
      v10 = 0;
    }

    v18 = v10;
    v19 = sub_240A2BF1C();

    v20 = [objc_opt_self() imageNamed:v19 inBundle:v11];

    [v9 setImage_];
    goto LABEL_15;
  }

  v15 = *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI20ImageCardContentView_imageView);
  v16 = *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI20ImageCardContentView_imageDefinition);

  [v15 setImage_];
}

id sub_2409E1220(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ImageCardContentView();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_2409E12F0(id result, uint64_t a2, void *a3, unsigned __int8 a4)
{
  if (a4 > 1u)
  {
    if (a4 != 2)
    {
      if (a4 != 3)
      {
        return result;
      }

      goto LABEL_7;
    }

    v4 = a3;
  }

  else if (a4)
  {
    if (a4 != 1)
    {
      return result;
    }

    result = a3;
LABEL_7:

    return result;
  }
}

void sub_2409E13A4(void *a1, uint64_t a2, void *a3, unsigned __int8 a4)
{
  if (a4 > 1u)
  {
    if (a4 != 2)
    {
      if (a4 != 3)
      {
        return;
      }

      goto LABEL_9;
    }

LABEL_8:

    a1 = a3;
LABEL_9:

    return;
  }

  if (a4)
  {
    if (a4 != 1)
    {
      return;
    }

    goto LABEL_8;
  }
}

uint64_t type metadata accessor for DiscoveringView(uint64_t a1)
{
  result = qword_27E50E648;
  if (!qword_27E50E648)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2409E14AC(uint64_t a1)
{
  sub_2409E17F4(319, &qword_27E50C0D0, MEMORY[0x277CED688], MEMORY[0x277CE11F8]);
  if (v1 <= 0x3F)
  {
    sub_2409E17A4(319, &unk_27E50D8E0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_2409E17F4(319, &qword_27E50BD60, sub_2409E0948, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_2409E17F4(319, &unk_27E50BD70, MEMORY[0x277CED338], MEMORY[0x277CE11F8]);
        if (v4 <= 0x3F)
        {
          sub_2409E17F4(319, &unk_27E50D900, MEMORY[0x277CED260], MEMORY[0x277CE10B8]);
          if (v5 <= 0x3F)
          {
            sub_2409E17A4(319, &qword_27E50E658, &type metadata for ProxViewModel, MEMORY[0x277CE10B8]);
            if (v6 <= 0x3F)
            {
              sub_2409E17F4(319, &qword_27E50BD80, MEMORY[0x277CED648], MEMORY[0x277CDF468]);
              if (v7 <= 0x3F)
              {
                sub_2409E17F4(319, &unk_27E50BD88, type metadata accessor for AKUserAgeRange, MEMORY[0x277CDF468]);
                if (v8 <= 0x3F)
                {
                  sub_2409E17F4(319, &qword_27E50C9F8, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
                  if (v9 <= 0x3F)
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

void sub_2409E17A4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_2409E17F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_2409E1898(uint64_t a1)
{
  v2 = sub_240A29EFC();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_240A29E9C();
}

uint64_t sub_2409E1960()
{
  v0 = sub_240A2B00C();
  __swift_allocate_value_buffer(v0, qword_27E50E630);
  __swift_project_value_buffer(v0, qword_27E50E630);
  return sub_240A2AE9C();
}

uint64_t sub_2409E19AC@<X0>(void *a1@<X8>)
{
  v159 = a1;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BDA0, &qword_240A30C88);
  v129 = *(v130 - 8);
  v2 = MEMORY[0x28223BE20](v130);
  v125 = &v110 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v126 = &v110 - v4;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E660, &qword_240A36EC8);
  MEMORY[0x28223BE20](v141);
  v142 = (&v110 - v5);
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E668, &qword_240A36ED0);
  MEMORY[0x28223BE20](v152);
  v143 = &v110 - v6;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E670, &qword_240A36ED8);
  MEMORY[0x28223BE20](v149);
  v151 = &v110 - v7;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E678, &qword_240A36EE0);
  MEMORY[0x28223BE20](v158);
  v153 = &v110 - v8;
  v150 = type metadata accessor for DiscoveringRepairView(0);
  MEMORY[0x28223BE20](v150);
  v10 = (&v110 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v124 = sub_240A2975C();
  v123 = *(v124 - 8);
  v11 = MEMORY[0x28223BE20](v124);
  v122 = &v110 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v121 = &v110 - v13;
  v147 = type metadata accessor for DiscoveringSetupView(0);
  MEMORY[0x28223BE20](v147);
  v133 = (&v110 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E680, &qword_240A36EE8);
  MEMORY[0x28223BE20](v155);
  v157 = &v110 - v15;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E688, &qword_240A36EF0);
  MEMORY[0x28223BE20](v144);
  v145 = &v110 - v16;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E690, &qword_240A36EF8);
  MEMORY[0x28223BE20](v156);
  v146 = &v110 - v17;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50D720, &unk_240A337B0);
  MEMORY[0x28223BE20](v134);
  v110 = &v110 - v18;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BE28, qword_240A320C0);
  MEMORY[0x28223BE20](v154);
  v120 = &v110 - v19;
  v139 = type metadata accessor for PairingView(0);
  MEMORY[0x28223BE20](v139);
  v128 = &v110 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E698, &qword_240A36F00);
  MEMORY[0x28223BE20](v127);
  v132 = &v110 - v21;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E6A0, &qword_240A36F08);
  MEMORY[0x28223BE20](v136);
  v138 = &v110 - v22;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E6A8, &qword_240A36F10);
  v23 = MEMORY[0x28223BE20](v148);
  v118 = &v110 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v112 = &v110 - v25;
  v26 = type metadata accessor for DiscoveringView(0);
  v115 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v116 = v27;
  v117 = &v110 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E6B0, &qword_240A36F18);
  MEMORY[0x28223BE20](v137);
  v111 = &v110 - v28;
  v114 = sub_240A29EFC();
  v135 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v119 = &v110 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_240A29EEC();
  v113 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v32 = &v110 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E6B8, &qword_240A36F20);
  MEMORY[0x28223BE20](v140);
  v131 = &v110 - v33;
  v34 = sub_240A2974C();
  v35 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v37 = &v110 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = *(v1 + 1);
  if (v38 > 1)
  {
    if (v38 == 2)
    {
      (*(v35 + 104))(v37, *MEMORY[0x277CED1F0], v34);
      v52 = sub_240A2973C();
      (*(v35 + 8))(v37, v34);
      if (v52)
      {
        v53 = sub_240A2A05C();
        v50 = v143;
        if (v53)
        {
          v54 = v117;
          sub_2409E4AF4(v1, v117, type metadata accessor for DiscoveringView);
          v55 = (*(v115 + 80) + 16) & ~*(v115 + 80);
          v56 = swift_allocObject();
          sub_2409E49AC(v54, v56 + v55);
          v57 = v111;
          sub_2409E37EC(sub_2409E4A10, v56, v111);

          sub_240919298(v57, v138, &qword_27E50E6B0, &qword_240A36F18);
          swift_storeEnumTagMultiPayload();
          sub_2409E4524();
          sub_2409E4BBC(&qword_27E50C160, type metadata accessor for PairingView, &unk_240A37C7C);
          v58 = v118;
          sub_240A2B6EC();
          sub_240919300(v57, &qword_27E50E6B0, &qword_240A36F18);
        }

        else
        {
          v96 = v120;
          sub_240A2BD1C();
          swift_getKeyPath();
          v97 = v128;
          sub_240A2BD0C();

          sub_240919300(v96, &qword_27E50BE28, qword_240A320C0);
          v98 = v139;
          v99 = *(v139 + 24);
          *(v97 + v99) = swift_getKeyPath();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C720, &unk_240A30CC0);
          swift_storeEnumTagMultiPayload();
          *(v97 + *(v98 + 20)) = 2;
          sub_2409E4AF4(v97, v138, type metadata accessor for PairingView);
          swift_storeEnumTagMultiPayload();
          sub_2409E4524();
          sub_2409E4BBC(&qword_27E50C160, type metadata accessor for PairingView, &unk_240A37C7C);
          v58 = v118;
          sub_240A2B6EC();
          sub_2409E4B5C(v97, type metadata accessor for PairingView);
        }

        sub_240919298(v58, v142, &qword_27E50E6A8, &qword_240A36F10);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E6C0, &qword_240A36F28);
        sub_2409E4468();
        sub_2409E4680();
        sub_240A2B6EC();
        sub_240919300(v58, &qword_27E50E6A8, &qword_240A36F10);
      }

      else
      {
        sub_240A2B56C();
        v86 = v126;
        sub_240A2B23C();
        v87 = v129;
        v88 = v130;
        (*(v129 + 16))(v125, v86, v130);
        sub_2409E4870(&qword_27E50B640, &qword_27E50BDA0, &qword_240A30C88);
        v89 = sub_240A2BCDC();
        (*(v87 + 8))(v86, v88);
        v90 = v142;
        *v142 = v89;
        v90[1] = sub_2409E4010;
        v90[2] = 0;
        v90[3] = 0;
        v90[4] = 0;
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E6C0, &qword_240A36F28);
        sub_2409E4468();
        sub_2409E4680();
        v50 = v143;
        sub_240A2B6EC();
      }

      v100 = &qword_27E50E668;
      v101 = &qword_240A36ED0;
      sub_240919298(v50, v151, &qword_27E50E668, &qword_240A36ED0);
      swift_storeEnumTagMultiPayload();
      sub_2409E4BBC(&qword_27E50E6F0, type metadata accessor for DiscoveringRepairView, &unk_240A32100);
      sub_2409E47EC(&qword_27E50E6F8, &qword_27E50E668, &qword_240A36ED0, sub_2409E4680);
      v102 = v153;
      sub_240A2B6EC();
      v103 = &qword_27E50E678;
      v104 = &qword_240A36EE0;
      sub_240919298(v102, v157, &qword_27E50E678, &qword_240A36EE0);
      goto LABEL_21;
    }

    goto LABEL_10;
  }

  if (*(v1 + 1))
  {
LABEL_10:
    v59 = *v1;
    v61 = *(v1 + 8);
    v60 = *(v1 + 16);
    v62 = *(v1 + 24);
    v63 = v150;

    sub_240A2BD1C();
    *v10 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C218, &qword_240A38FE0);
    swift_storeEnumTagMultiPayload();
    v64 = v63[5];
    *(v10 + v64) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C720, &unk_240A30CC0);
    swift_storeEnumTagMultiPayload();
    *(v10 + v63[6]) = v59;
    *(v10 + v63[7]) = v38;
    v65 = (v10 + v63[8]);
    *v65 = v61;
    v65[1] = v60;
    *(v10 + v63[9]) = v62;
    v66 = v10 + v63[11];
    v160 = 0;
    sub_240A2BC4C();
    v67 = v162;
    *v66 = v161;
    *(v66 + 1) = v67;
    sub_2409E4AF4(v10, v151, type metadata accessor for DiscoveringRepairView);
    swift_storeEnumTagMultiPayload();
    sub_2409E4BBC(&qword_27E50E6F0, type metadata accessor for DiscoveringRepairView, &unk_240A32100);
    sub_2409E47EC(&qword_27E50E6F8, &qword_27E50E668, &qword_240A36ED0, sub_2409E4680);
    v68 = v153;
    sub_240A2B6EC();
    sub_240919298(v68, v157, &qword_27E50E678, &qword_240A36EE0);
    swift_storeEnumTagMultiPayload();
    sub_2409E4704();
    sub_2409E48C4();
    sub_240A2B6EC();
    sub_240919300(v68, &qword_27E50E678, &qword_240A36EE0);
    v69 = type metadata accessor for DiscoveringRepairView;
    return sub_2409E4B5C(v10, v69);
  }

  (*(v35 + 104))(v37, *MEMORY[0x277CED208], v34);
  v39 = sub_240A2973C();
  (*(v35 + 8))(v37, v34);
  if ((v39 & 1) == 0)
  {
    v71 = *v1;
    v72 = v147;
    v10 = v133;
    sub_240A2BD1C();
    v73 = (v1 + *(v26 + 40));
    v75 = *v73;
    v74 = v73[1];
    v76 = *(v1 + *(v26 + 44));
    v77 = v76;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BD20, &qword_240A31BC0);
    sub_240A2BD1C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BD28, qword_240A350F0);
    v78 = v121;
    sub_240A2BC5C();
    *v10 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C218, &qword_240A38FE0);
    swift_storeEnumTagMultiPayload();
    v79 = v72[5];
    *(v10 + v79) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C720, &unk_240A30CC0);
    swift_storeEnumTagMultiPayload();
    *(v10 + v72[6]) = v71;
    *(v10 + v72[7]) = 0;
    v80 = v10 + v72[9];
    v160 = 0;
    sub_240A2BC4C();
    v81 = v162;
    *v80 = v161;
    *(v80 + 1) = v81;
    v82 = (v10 + v72[10]);
    *v82 = v75;
    v82[1] = v74;
    *(v10 + v72[11]) = v76;
    v83 = v123;
    v84 = v124;
    (*(v123 + 16))(v122, v78, v124);
    sub_240A2BC4C();
    (*(v83 + 8))(v78, v84);
    sub_2409E4AF4(v10, v145, type metadata accessor for DiscoveringSetupView);
    swift_storeEnumTagMultiPayload();
    sub_2409E47EC(&qword_27E50E708, &qword_27E50E6B8, &qword_240A36F20, sub_240972F80);
    sub_2409E4BBC(&qword_27E50E710, type metadata accessor for DiscoveringSetupView, &unk_240A38DD0);
    v85 = v146;
    sub_240A2B6EC();
    sub_240919298(v85, v157, &qword_27E50E690, &qword_240A36EF8);
    swift_storeEnumTagMultiPayload();
    sub_2409E4704();
    sub_2409E48C4();
    sub_240A2B6EC();
    sub_240919300(v85, &qword_27E50E690, &qword_240A36EF8);
    v69 = type metadata accessor for DiscoveringSetupView;
    return sub_2409E4B5C(v10, v69);
  }

  MEMORY[0x245CCC9B0](v154);
  v40 = v119;
  sub_240A29E8C();
  (*(v113 + 8))(v32, v30);
  v41 = v135;
  v42 = v114;
  v43 = (*(v135 + 88))(v40, v114);
  if (v43 == *MEMORY[0x277CED6A0])
  {
    (*(v41 + 96))(v40, v42);

    v44 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C118, &qword_240A32180) + 48);
    v45 = v120;
    sub_240A2BD1C();
    swift_getKeyPath();
    v46 = v128;
    sub_240A2BD0C();

    sub_240919300(v45, &qword_27E50BE28, qword_240A320C0);
    v47 = v139;
    v48 = *(v139 + 24);
    *(v46 + v48) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C720, &unk_240A30CC0);
    swift_storeEnumTagMultiPayload();
    *(v46 + *(v47 + 20)) = 0;
    sub_2409E4AF4(v46, v138, type metadata accessor for PairingView);
    swift_storeEnumTagMultiPayload();
    sub_2409E4524();
    sub_2409E4BBC(&qword_27E50C160, type metadata accessor for PairingView, &unk_240A37C7C);
    v49 = v112;
    sub_240A2B6EC();
    sub_240919298(v49, v132, &qword_27E50E6A8, &qword_240A36F10);
    swift_storeEnumTagMultiPayload();
    sub_2409E4468();
    sub_240972F80();
    v50 = v131;
    sub_240A2B6EC();
    sub_240919300(v49, &qword_27E50E6A8, &qword_240A36F10);
    sub_2409E4B5C(v46, type metadata accessor for PairingView);
    v51 = sub_240A2A0DC();
    (*(*(v51 - 8) + 8))(&v40[v44], v51);
  }

  else
  {
    v50 = v131;
    if (v43 == *MEMORY[0x277CED690])
    {
      v91 = v117;
      sub_2409E4AF4(v1, v117, type metadata accessor for DiscoveringView);
      v92 = (*(v115 + 80) + 16) & ~*(v115 + 80);
      v93 = swift_allocObject();
      sub_2409E49AC(v91, v93 + v92);
      v94 = v111;
      sub_2409E37EC(sub_2409E4C1C, v93, v111);

      sub_240919298(v94, v138, &qword_27E50E6B0, &qword_240A36F18);
      swift_storeEnumTagMultiPayload();
      sub_2409E4524();
      sub_2409E4BBC(&qword_27E50C160, type metadata accessor for PairingView, &unk_240A37C7C);
      v95 = v112;
      sub_240A2B6EC();
      sub_240919298(v95, v132, &qword_27E50E6A8, &qword_240A36F10);
      swift_storeEnumTagMultiPayload();
      sub_2409E4468();
      sub_240972F80();
      sub_240A2B6EC();
      sub_240919300(v95, &qword_27E50E6A8, &qword_240A36F10);
      sub_240919300(v94, &qword_27E50E6B0, &qword_240A36F18);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D9B0, &unk_240A34540);
      sub_240974954();
      v105 = v110;
      sub_240A2B21C();
      v106 = v117;
      sub_2409E4AF4(v1, v117, type metadata accessor for DiscoveringView);
      v107 = (*(v115 + 80) + 16) & ~*(v115 + 80);
      v108 = swift_allocObject();
      sub_2409E49AC(v106, v108 + v107);
      v109 = (v105 + *(v134 + 36));
      *v109 = sub_2409E4C04;
      v109[1] = v108;
      v109[2] = 0;
      v109[3] = 0;
      sub_240919298(v105, v132, &unk_27E50D720, &unk_240A337B0);
      swift_storeEnumTagMultiPayload();
      sub_2409E4468();
      sub_240972F80();
      sub_240A2B6EC();
      sub_240919300(v105, &unk_27E50D720, &unk_240A337B0);
      (*(v135 + 8))(v40, v42);
    }
  }

  v100 = &qword_27E50E6B8;
  v101 = &qword_240A36F20;
  sub_240919298(v50, v145, &qword_27E50E6B8, &qword_240A36F20);
  swift_storeEnumTagMultiPayload();
  sub_2409E47EC(&qword_27E50E708, &qword_27E50E6B8, &qword_240A36F20, sub_240972F80);
  sub_2409E4BBC(&qword_27E50E710, type metadata accessor for DiscoveringSetupView, &unk_240A38DD0);
  v102 = v146;
  sub_240A2B6EC();
  v103 = &qword_27E50E690;
  v104 = &qword_240A36EF8;
  sub_240919298(v102, v157, &qword_27E50E690, &qword_240A36EF8);
LABEL_21:
  swift_storeEnumTagMultiPayload();
  sub_2409E4704();
  sub_2409E48C4();
  sub_240A2B6EC();
  sub_240919300(v102, v103, v104);
  return sub_240919300(v50, v100, v101);
}

uint64_t sub_2409E3674()
{
  v0 = sub_240A29EEC();
  MEMORY[0x28223BE20](v0 - 8);
  if (qword_27E50AF98 != -1)
  {
    swift_once();
  }

  v1 = sub_240A2B00C();
  __swift_project_value_buffer(v1, qword_27E50E630);
  v2 = sub_240A2AFFC();
  v3 = sub_240A2C29C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2408FE000, v2, v3, "User selected to use manual setup", v4, 2u);
    MEMORY[0x245CCDDB0](v4, -1, -1);
  }

  type metadata accessor for DiscoveringView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BE28, qword_240A320C0);
  MEMORY[0x245CCC9B0]();
  sub_240A29EBC();
  return sub_240A2BCFC();
}

uint64_t sub_2409E37EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27 = a1;
  v28 = a2;
  v32 = a3;
  v4 = type metadata accessor for DiscoveringView(0);
  v5 = v4 - 8;
  v29 = *(v4 - 8);
  v6 = *(v29 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = sub_240A29EFC();
  v8 = *(v7 - 8);
  v30 = v7;
  v31 = v8;
  MEMORY[0x28223BE20](v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_240A29EEC();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = (v3 + *(v5 + 64));
  v16 = v15[3];
  v48 = v15[2];
  v49 = v16;
  v50 = v15[4];
  v17 = v15[1];
  v46 = *v15;
  v47 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E720, &qword_240A36FB8);
  sub_240A2BC7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E728, &qword_240A36FC0);
  v18 = swift_allocObject();
  *(v18 + 16) = 0u;
  *(v18 + 32) = 0u;
  *(v18 + 48) = 0u;
  *(v18 + 64) = 0u;
  *(v18 + 80) = 0;
  *&v33 = v18;
  sub_240A2BC4C();
  v35 = v42;
  v36 = v43;
  v37 = v44;
  v38[0] = v45;
  v33 = v40;
  v34 = v41;
  *&v38[8] = v46;
  *&v38[24] = v27;
  v39 = v28;

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BE28, qword_240A320C0);
  MEMORY[0x245CCC9B0](v19);
  sub_240A29E8C();
  (*(v12 + 8))(v14, v11);
  sub_2409E4AF4(v3, &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DiscoveringView);
  v20 = (*(v29 + 80) + 16) & ~*(v29 + 80);
  v21 = swift_allocObject();
  sub_2409E49AC(&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20);
  sub_2409E462C();
  sub_2409E4BBC(&qword_27E50E6E0, MEMORY[0x277CED6C0], MEMORY[0x277CED6C8]);
  v22 = v32;
  v23 = v30;
  sub_240A2BAFC();

  (*(v31 + 8))(v10, v23);
  v50 = v37;
  v51 = *v38;
  v52 = *&v38[16];
  v53 = v39;
  v46 = v33;
  v47 = v34;
  v48 = v35;
  v49 = v36;
  sub_2409E5088(&v46);
  v24 = sub_240A2B3AC();
  LOBYTE(v11) = sub_240A2B86C();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E6B0, &qword_240A36F18);
  v26 = v22 + *(result + 36);
  *v26 = v24;
  *(v26 + 8) = v11;
  return result;
}

uint64_t sub_2409E3C10(uint64_t a1)
{
  v16 = sub_240A2B52C();
  v2 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BF50, &qword_240A31920);
  MEMORY[0x28223BE20](v5);
  v7 = &v15 - v6;
  v8 = sub_240A2B2AC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DiscoveringView(0);
  sub_240919298(a1 + *(v12 + 68), v7, &qword_27E50BF50, &qword_240A31920);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v11, v7, v8);
  }

  else
  {
    sub_240A2C2BC();
    v13 = sub_240A2B84C();
    sub_240A2AFEC();

    sub_240A2B51C();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v16);
  }

  sub_240A2B29C();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_2409E3E98()
{
  v0 = sub_240A29EEC();
  MEMORY[0x28223BE20](v0 - 8);
  if (qword_27E50AF98 != -1)
  {
    swift_once();
  }

  v1 = sub_240A2B00C();
  __swift_project_value_buffer(v1, qword_27E50E630);
  v2 = sub_240A2AFFC();
  v3 = sub_240A2C28C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2408FE000, v2, v3, "User selected Other Options", v4, 2u);
    MEMORY[0x245CCDDB0](v4, -1, -1);
  }

  type metadata accessor for DiscoveringView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BE28, qword_240A320C0);
  MEMORY[0x245CCC9B0]();
  sub_240A29EDC();
  return sub_240A2BCFC();
}

void sub_2409E4010()
{
  if (qword_27E50AF98 != -1)
  {
    swift_once();
  }

  v0 = sub_240A2B00C();
  __swift_project_value_buffer(v0, qword_27E50E630);
  oslog = sub_240A2AFFC();
  v1 = sub_240A2C2AC();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_2408FE000, oslog, v1, "Age migration feature is not enabled!", v2, 2u);
    MEMORY[0x245CCDDB0](v2, -1, -1);
  }
}

uint64_t sub_2409E40F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v35 = a3;
  v4 = sub_240A29EFC();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v31 - v9;
  if (qword_27E50AF98 != -1)
  {
    swift_once();
  }

  v11 = sub_240A2B00C();
  __swift_project_value_buffer(v11, qword_27E50E630);
  v12 = *(v5 + 16);
  v12(v10, a2, v4);
  v13 = sub_240A2AFFC();
  v34 = sub_240A2C28C();
  if (os_log_type_enabled(v13, v34))
  {
    v14 = swift_slowAlloc();
    v33 = a2;
    v15 = v14;
    v32 = swift_slowAlloc();
    *&v47 = v32;
    *v15 = 136315138;
    v12(v8, v10, v4);
    v16 = sub_240A2BF9C();
    v18 = v17;
    (*(v5 + 8))(v10, v4);
    v19 = sub_240925464(v16, v18, &v47);

    *(v15 + 4) = v19;
    _os_log_impl(&dword_2408FE000, v13, v34, "model pairing state changed to %s", v15, 0xCu);
    v20 = v32;
    __swift_destroy_boxed_opaque_existential_0(v32);
    MEMORY[0x245CCDDB0](v20, -1, -1);
    v21 = v15;
    a2 = v33;
    MEMORY[0x245CCDDB0](v21, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v10, v4);
  }

  v22 = (v35 + *(type metadata accessor for DiscoveringView(0) + 56));
  v23 = v22[3];
  v49 = v22[2];
  v50 = v23;
  v51 = v22[4];
  v24 = v22[1];
  v47 = *v22;
  v48 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E720, &qword_240A36FB8);
  sub_240A2BC5C();
  sub_240A22AC0(a2, &v36);
  v25 = v22[2];
  v26 = *v22;
  v43 = v22[1];
  v44 = v25;
  v27 = v22[2];
  v28 = v22[4];
  v45 = v22[3];
  v46 = v28;
  v29 = *v22;
  v39 = v27;
  v40 = v45;
  v41 = v22[4];
  v42 = v29;
  v37 = v26;
  v38 = v43;
  sub_240919298(&v42, &v47, &qword_27E50E720, &qword_240A36FB8);
  sub_240A2BC6C();
  v49 = v39;
  v50 = v40;
  v51 = v41;
  v47 = v37;
  v48 = v38;
  return sub_240919300(&v47, &qword_27E50E720, &qword_240A36FB8);
}

unint64_t sub_2409E4468()
{
  result = qword_27E50E6C8;
  if (!qword_27E50E6C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50E6A8, &qword_240A36F10);
    sub_2409E4524();
    sub_2409E4BBC(&qword_27E50C160, type metadata accessor for PairingView, &unk_240A37C7C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50E6C8);
  }

  return result;
}

unint64_t sub_2409E4524()
{
  result = qword_27E50E6D0;
  if (!qword_27E50E6D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50E6B0, &qword_240A36F18);
    sub_240A29EFC();
    sub_2409E462C();
    sub_2409E4BBC(&qword_27E50E6E0, MEMORY[0x277CED6C0], MEMORY[0x277CED6C8]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50E6D0);
  }

  return result;
}

unint64_t sub_2409E462C()
{
  result = qword_27E50E6D8;
  if (!qword_27E50E6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50E6D8);
  }

  return result;
}

unint64_t sub_2409E4680()
{
  result = qword_27E50E6E8;
  if (!qword_27E50E6E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50E6C0, &qword_240A36F28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50E6E8);
  }

  return result;
}

unint64_t sub_2409E4704()
{
  result = qword_27E50E700;
  if (!qword_27E50E700)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50E690, &qword_240A36EF8);
    sub_2409E47EC(&qword_27E50E708, &qword_27E50E6B8, &qword_240A36F20, sub_240972F80);
    sub_2409E4BBC(&qword_27E50E710, type metadata accessor for DiscoveringSetupView, &unk_240A38DD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50E700);
  }

  return result;
}

uint64_t sub_2409E47EC(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    sub_2409E4468();
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2409E4870(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2409E48C4()
{
  result = qword_27E50E718;
  if (!qword_27E50E718)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50E678, &qword_240A36EE0);
    sub_2409E4BBC(&qword_27E50E6F0, type metadata accessor for DiscoveringRepairView, &unk_240A32100);
    sub_2409E47EC(&qword_27E50E6F8, &qword_27E50E668, &qword_240A36ED0, sub_2409E4680);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50E718);
  }

  return result;
}

uint64_t sub_2409E49AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DiscoveringView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2409E4A4C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C0C8, &qword_240A32740);
  MEMORY[0x28223BE20](v2 - 8);
  sub_240919298(a1, &v5 - v3, &qword_27E50C0C8, &qword_240A32740);
  return sub_240A2B4AC();
}

uint64_t sub_2409E4AF4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2409E4B5C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2409E4BBC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2409E4C34(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for DiscoveringView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t objectdestroyTm_11()
{
  v1 = type metadata accessor for DiscoveringView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  v6 = v0 + v3 + v1[9];

  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BE28, qword_240A320C0) + 32);
  v8 = sub_240A29EEC();
  (*(*(v8 - 8) + 8))(v6 + v7, v8);

  v9 = v0 + v3 + v1[12];

  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BD20, &qword_240A31BC0) + 32);
  v11 = sub_240A2976C();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v9 + v10, 6, v11))
  {
    (*(v12 + 8))(v9 + v10, v11);
  }

  v13 = v5 + v1[13];
  v14 = sub_240A2975C();
  (*(*(v14 - 8) + 8))(v13, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BD28, qword_240A350F0);

  v15 = v1[15];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C720, &unk_240A30CC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = sub_240A29DBC();
    (*(*(v16 - 8) + 8))(v5 + v15, v16);
  }

  else
  {
  }

  sub_24090C1E4(*(v5 + v1[16]), *(v5 + v1[16] + 8));
  v17 = v1[17];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BF50, &qword_240A31920);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = sub_240A2B2AC();
    (*(*(v18 - 8) + 8))(v5 + v17, v18);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2409E5008(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for DiscoveringView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_2409E40F8(a1, a2, v6);
}

unint64_t sub_2409E50DC()
{
  result = qword_27E50E730;
  if (!qword_27E50E730)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50E738, &qword_240A36FC8);
    sub_2409E4704();
    sub_2409E48C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50E730);
  }

  return result;
}

void sub_2409E5168(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC14AppleIDSetupUI23SetupCardViewController_hostingController;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

void *sub_2409E51C8()
{
  v1 = OBJC_IVAR____TtC14AppleIDSetupUI23SetupCardViewController_hostingController;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_2409E5214(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14AppleIDSetupUI23SetupCardViewController_hostingController;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

char *SetupCardViewController.init(contextBuilder:reportHandler:)(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  v73 = a1;
  v74 = a4;
  v70 = a3;
  v66 = a2;
  v5 = sub_240A2981C();
  v71 = *(v5 - 8);
  v72 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v69 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v59 - v8;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C700, &unk_240A32F50);
  v10 = MEMORY[0x28223BE20](v59);
  v12 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v59 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C060, &qword_240A31F58);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v59 - v16;
  v18 = type metadata accessor for SetupView(0);
  v19 = (v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v4[OBJC_IVAR____TtC14AppleIDSetupUI23SetupCardViewController_hostingController] = 0;
  v22 = type metadata accessor for SetupCardViewController();
  v79.receiver = v4;
  v79.super_class = v22;
  v23 = objc_msgSendSuper2(&v79, sel_initWithContentView_, 0);
  v24 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v25 = swift_allocObject();
  v67 = v25;
  v68 = v24;
  v26 = v70;
  v25[2] = v24;
  v25[3] = v26;
  v25[4] = v74;
  LOBYTE(v77) = 1;
  v70 = v23;

  sub_240A2BD3C();
  v65 = *(&v75 + 1);
  v60 = v75;
  v64 = v76;
  LOBYTE(v77) = 0;
  sub_240A2BD3C();
  v62 = *(&v75 + 1);
  v63 = v75;
  v61 = v76;
  sub_240A2A1DC();
  sub_2409194E8(0, &qword_27E50C450, 0x277D85C78);
  sub_240A2C32C();
  v27 = sub_240A2B01C();
  (*(*(v27 - 8) + 56))(v17, 1, 1, v27);
  v28 = sub_240A2A1BC();
  LOBYTE(v77) = 0;
  sub_240A2BC4C();
  v29 = *(&v75 + 1);
  v21[48] = v75;
  *(v21 + 7) = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C708, &unk_240A32F60);
  (*(*(v30 - 8) + 56))(v14, 1, 1, v30);
  sub_240919298(v14, v12, &qword_27E50C700, &unk_240A32F50);
  sub_240A2BC4C();
  sub_2409E5D18(v14);
  v31 = &v21[v19[13]];
  v77 = 0;
  v78 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C710, &qword_240A35AF0);
  sub_240A2BC4C();
  v32 = v76;
  *v31 = v75;
  *(v31 + 2) = v32;
  v33 = v19[14];
  *&v21[v33] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BF50, &qword_240A31920);
  swift_storeEnumTagMultiPayload();
  v34 = v19[15];
  *&v21[v34] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C720, &unk_240A30CC0);
  swift_storeEnumTagMultiPayload();
  v35 = v19[16];
  *&v21[v35] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v36 = &v21[v19[17]];
  *v36 = swift_getKeyPath();
  v36[8] = 0;
  v37 = &v21[v19[18]];
  *v37 = swift_getKeyPath();
  v37[8] = 0;
  v38 = &v21[v19[19]];
  *v38 = swift_getKeyPath();
  v38[8] = 0;
  v39 = v19[20];
  v40 = v19[21];
  v41 = &v21[v19[24]];
  LOBYTE(v77) = 1;
  sub_240A2BC4C();
  v42 = *(&v75 + 1);
  *v41 = v75;
  *(v41 + 1) = v42;
  sub_240A2979C();
  v44 = v71;
  v43 = v72;
  (*(v71 + 16))(v69, v9, v72);
  sub_240A2BC4C();
  (*(v44 + 8))(v9, v43);
  v45 = v66;
  *v21 = v73;
  *(v21 + 1) = v45;
  v46 = v67;
  *(v21 + 2) = sub_2409E5D0C;
  *(v21 + 3) = v46;
  *&v21[v39] = 0;
  *&v21[v40] = 0;
  *(v21 + 4) = v28;
  v47 = &v21[v19[22]];
  v48 = v65;
  *v47 = v60;
  *(v47 + 1) = v48;
  v47[16] = v64;
  v49 = &v21[v19[23]];
  v50 = v62;
  *v49 = v63;
  *(v49 + 1) = v50;
  v49[16] = v61;
  v51 = objc_allocWithZone(sub_240A29DEC());

  *(v21 + 5) = sub_240A29DCC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C728, &unk_240A33080);
  sub_240A2BC5C();
  v52 = sub_240A297AC();
  sub_240A2A04C();
  v52(&v75, 0);
  sub_240A2BC6C();

  v53 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C730, &qword_240A35C10));
  v54 = sub_240A2B5EC();

  v55 = OBJC_IVAR____TtC14AppleIDSetupUI23SetupCardViewController_hostingController;
  v56 = v70;
  swift_beginAccess();
  v57 = *&v56[v55];
  *&v56[v55] = v54;

  return v56;
}

void sub_2409E5ACC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C6E0, &qword_240A32F18);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v22 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B420, &qword_240A30800);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v22 - v12;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v16 = sub_240A2C24C();
    (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
    sub_240919298(a1, v10, &qword_27E50C6E0, &qword_240A32F18);
    sub_240A2C21C();
    v17 = v15;

    v18 = sub_240A2C20C();
    v19 = (*(v8 + 80) + 56) & ~*(v8 + 80);
    v20 = swift_allocObject();
    v21 = MEMORY[0x277D85700];
    v20[2] = v18;
    v20[3] = v21;
    v20[4] = v17;
    v20[5] = a3;
    v20[6] = a4;
    sub_2409974DC(v10, v20 + v19);
    sub_2409230D4(0, 0, v13, &unk_240A37120, v20);
  }

  else
  {
    a3(a1);
  }
}

uint64_t sub_2409E5D18(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C700, &unk_240A32F50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2409E5D80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[10] = a6;
  v7[11] = a7;
  v7[8] = a4;
  v7[9] = a5;
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C6E0, &qword_240A32F18) - 8);
  v7[12] = v8;
  v7[13] = *(v8 + 64);
  v7[14] = swift_task_alloc();
  sub_240A2C21C();
  v7[15] = sub_240A2C20C();
  v10 = sub_240A2C1BC();

  return MEMORY[0x2822009F8](sub_2409E5E88, v10, v9);
}

uint64_t sub_2409E5E88()
{
  v1 = v0[14];
  v2 = v0[12];
  v3 = v0[10];
  v4 = v0[11];
  v5 = v0[8];
  v6 = v0[9];

  sub_240919298(v4, v1, &qword_27E50C6E0, &qword_240A32F18);
  v7 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v8 + 24) = v3;
  sub_2409974DC(v1, v8 + v7);
  v0[6] = sub_2409C4528;
  v0[7] = v8;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_2409EC704;
  v0[5] = &block_descriptor_21;
  v9 = _Block_copy(v0 + 2);

  [v5 dismissViewControllerAnimated:1 completion:v9];
  _Block_release(v9);

  v10 = v0[1];

  return v10();
}

void sub_2409E5FFC()
{
  v1 = v0;
  v2 = sub_240A2B80C();
  MEMORY[0x28223BE20](v2 - 8);
  v63.receiver = v0;
  v63.super_class = type metadata accessor for SetupCardViewController();
  objc_msgSendSuper2(&v63, sel_viewDidLoad);
  v3 = OBJC_IVAR____TtC14AppleIDSetupUI23SetupCardViewController_hostingController;
  swift_beginAccess();
  v4 = *&v0[v3];
  if (!v4)
  {
    __break(1u);
    goto LABEL_28;
  }

  v5 = v4;
  sub_240A2B7FC();
  sub_240A2B5AC();

  v6 = *&v0[v3];
  if (!v6)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v7 = v6;
  v8 = sub_240A2B3BC();
  v10 = sub_240A2B5BC();
  if ((*v9 & v8) != 0)
  {
    *v9 &= ~v8;
  }

  v10(v62, 0);

  v11 = *&v1[v3];
  if (!v11)
  {
    goto LABEL_29;
  }

  v12 = [v11 view];
  if (!v12)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v13 = v12;
  [v12 setTranslatesAutoresizingMaskIntoConstraints_];

  v14 = *&v1[v3];
  if (!v14)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  [v14 willMoveToParentViewController_];
  if (!*&v1[v3])
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  [v1 addChildViewController_];
  v15 = [v1 view];
  if (!v15)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v16 = v15;
  v17 = *&v1[v3];
  if (!v17)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v18 = [v17 view];
  if (!v18)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v19 = v18;
  [v16 addSubview_];

  v20 = [v1 view];
  if (!v20)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v21 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C9A0, qword_240A31380);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_240A318E0;
  v23 = *&v1[v3];
  if (!v23)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v24 = [v23 view];
  if (!v24)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v25 = v24;
  v26 = [v24 topAnchor];

  v27 = [v21 topAnchor];
  v28 = [v26 constraintEqualToAnchor_];

  *(v22 + 32) = v28;
  v29 = *&v1[v3];
  if (!v29)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v30 = [v29 view];
  if (!v30)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v31 = v30;
  v32 = [v30 bottomAnchor];

  v33 = [v21 bottomAnchor];
  v34 = [v32 constraintEqualToAnchor_];

  *(v22 + 40) = v34;
  v35 = *&v1[v3];
  if (!v35)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v36 = [v35 view];
  if (!v36)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v37 = v36;
  v38 = [v36 leadingAnchor];

  v39 = [v21 leadingAnchor];
  v40 = [v38 constraintEqualToAnchor_];

  *(v22 + 48) = v40;
  v41 = *&v1[v3];
  if (!v41)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v42 = [v41 view];
  if (!v42)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v43 = v42;
  v44 = [v42 trailingAnchor];

  v45 = [v21 trailingAnchor];
  v46 = [v44 constraintEqualToAnchor_];

  *(v22 + 56) = v46;
  v47 = *&v1[v3];
  if (!v47)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v48 = [v47 view];
  if (!v48)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v49 = v48;
  v50 = [v48 centerXAnchor];

  v51 = [v21 centerXAnchor];
  v52 = [v50 constraintEqualToAnchor_];

  *(v22 + 64) = v52;
  v53 = *&v1[v3];
  if (!v53)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v54 = [v53 view];
  if (!v54)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v55 = v54;
  v56 = objc_opt_self();
  v57 = [v55 centerYAnchor];

  v58 = [v21 centerYAnchor];
  v59 = [v57 constraintEqualToAnchor_];

  *(v22 + 72) = v59;
  sub_2409194E8(0, &qword_27E50BFA0, 0x277CCAAD0);
  v60 = sub_240A2C15C();

  [v56 activateConstraints_];

  v61 = *&v1[v3];
  if (v61)
  {
    [v61 didMoveToParentViewController_];

    return;
  }

LABEL_49:
  __break(1u);
}

id SetupCardViewController.__allocating_init(contentView:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithContentView_];

  return v3;
}

id SetupCardViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SetupCardViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2409E67FC(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C6E0, &qword_240A32F18) - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_240915E50;

  return sub_2409E5D80(a1, v6, v7, v8, v9, v10, v1 + v5);
}

uint64_t block_copy_helper_21(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_2409E693C(char a1)
{
  if ((a1 & 1) == 0)
  {
    if (qword_27E50AFA0 != -1)
    {
      swift_once();
    }

    v1 = qword_27E516340;
    v4 = sub_240A2BF1C();
    v5 = [objc_opt_self() imageNamed:v4 inBundle:v1 compatibleWithTraitCollection:0];
    goto LABEL_7;
  }

  v1 = [objc_opt_self() configurationWithPointSize:5 weight:40.0];
  v2 = sub_240A2BF1C();
  v3 = [objc_opt_self() systemImageNamed_];

  if (v3)
  {
    v4 = [v3 imageWithConfiguration_];

    v5 = [v4 imageWithRenderingMode_];
LABEL_7:
    v3 = v5;
  }

  return v3;
}

uint64_t sub_2409E6AC4(char a1)
{
  v2 = sub_240A2974C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v5, *MEMORY[0x277CED220], v2);
  v6 = sub_240A2973C();
  (*(v3 + 8))(v5, v2);
  v7 = 2;
  if (a1)
  {
    v7 = 4;
  }

  if (v6)
  {
    return 5;
  }

  else
  {
    return v7;
  }
}

uint64_t sub_2409E6BD4()
{
  if (*v0)
  {
    return 0x64726F7773736170;
  }

  else
  {
    return 0x74696D69786F7270;
  }
}

uint64_t sub_2409E6C28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x74696D69786F7270 && a2 == 0xEE00707574655379;
  if (v6 || (sub_240A2C66C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x64726F7773736170 && a2 == 0xED00007972746E45)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_240A2C66C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_2409E6D2C(uint64_t a1)
{
  v2 = sub_2409E776C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2409E6D68(uint64_t a1)
{
  v2 = sub_2409E776C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2409E6DA4(void *a1, int a2)
{
  v18 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E798, &qword_240A372C8);
  v16 = *(v3 - 8);
  v17 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v15 - v4;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E7A0, &qword_240A372D0);
  v6 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v8 = &v15 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E7A8, &qword_240A372D8);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v15 - v11;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2409E776C();
  sub_240A2C78C();
  v13 = (v10 + 8);
  if (v18)
  {
    v20 = 1;
    sub_2409E77C0();
    sub_240A2C61C();
    (*(v16 + 8))(v5, v17);
  }

  else
  {
    v19 = 0;
    sub_2409E7814();
    sub_240A2C61C();
    (*(v6 + 8))(v8, v15);
  }

  return (*v13)(v12, v9);
}

uint64_t sub_2409E706C(uint64_t a1)
{
  v2 = sub_2409E77C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2409E70A8(uint64_t a1)
{
  v2 = sub_2409E77C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2409E70E4(uint64_t a1)
{
  v2 = sub_2409E7814();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2409E7120(uint64_t a1)
{
  v2 = sub_2409E7814();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_2409E716C(uint64_t *a1@<X8>)
{
  v2 = 0x20797469786F7250;
  if (*v1)
  {
    v2 = 0x64726F7773736150;
  }

  v3 = 0xED00007075746553;
  if (*v1)
  {
    v3 = 0xEE007972746E6520;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_2409E71C4@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_2409E7330(a2);
  if (!v2)
  {
    *a1 = result & 1;
  }

  return result;
}

unint64_t sub_2409E7220()
{
  result = qword_27E50E748;
  if (!qword_27E50E748)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50E750, qword_240A371D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50E748);
  }

  return result;
}

unint64_t sub_2409E7288()
{
  result = qword_27E50E758;
  if (!qword_27E50E758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50E758);
  }

  return result;
}

uint64_t sub_2409E72DC()
{
  if (*v0)
  {
    return 0x64726F7773736150;
  }

  else
  {
    return 0x20797469786F7250;
  }
}

uint64_t sub_2409E7330(void *a1)
{
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E760, &qword_240A372A8);
  v22 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v3 = v20 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E768, &qword_240A372B0);
  v23 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = v20 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E770, &qword_240A372B8);
  v25 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = v20 - v8;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2409E776C();
  v10 = v26;
  sub_240A2C77C();
  if (v10)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v21 = v4;
  v26 = a1;
  v12 = v23;
  v11 = v24;
  v13 = v9;
  v14 = sub_240A2C60C();
  if (*(v14 + 16) != 1)
  {
    v16 = sub_240A2C4BC();
    swift_allocError();
    v18 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E780, &qword_240A372C0);
    *v18 = &type metadata for SignInOption;
    sub_240A2C5FC();
    sub_240A2C4AC();
    (*(*(v16 - 8) + 104))(v18, *MEMORY[0x277D84160], v16);
    swift_willThrow();
    (*(v25 + 8))(v13, v7);
    swift_unknownObjectRelease();
    a1 = v26;
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v20[1] = v14;
  v27 = *(v14 + 32);
  if (v27)
  {
    v29 = 1;
    sub_2409E77C0();
    sub_240A2C5EC();
    v15 = v25;
    (*(v22 + 8))(v3, v11);
  }

  else
  {
    v28 = 0;
    sub_2409E7814();
    sub_240A2C5EC();
    v15 = v25;
    (*(v12 + 8))(v6, v21);
  }

  (*(v15 + 8))(v9, v7);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v26);
  return v27;
}

unint64_t sub_2409E776C()
{
  result = qword_27E50E778;
  if (!qword_27E50E778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50E778);
  }

  return result;
}

unint64_t sub_2409E77C0()
{
  result = qword_27E50E788;
  if (!qword_27E50E788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50E788);
  }

  return result;
}

unint64_t sub_2409E7814()
{
  result = qword_27E50E790;
  if (!qword_27E50E790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50E790);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DeadlineFailure(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DeadlineFailure(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2409E79DC()
{
  result = qword_27E50E7B0;
  if (!qword_27E50E7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50E7B0);
  }

  return result;
}

unint64_t sub_2409E7A34()
{
  result = qword_27E50E7B8;
  if (!qword_27E50E7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50E7B8);
  }

  return result;
}

unint64_t sub_2409E7A8C()
{
  result = qword_27E50E7C0;
  if (!qword_27E50E7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50E7C0);
  }

  return result;
}

unint64_t sub_2409E7AE4()
{
  result = qword_27E50E7C8;
  if (!qword_27E50E7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50E7C8);
  }

  return result;
}

unint64_t sub_2409E7B3C()
{
  result = qword_27E50E7D0;
  if (!qword_27E50E7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50E7D0);
  }

  return result;
}

unint64_t sub_2409E7B94()
{
  result = qword_27E50E7D8;
  if (!qword_27E50E7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50E7D8);
  }

  return result;
}

unint64_t sub_2409E7BEC()
{
  result = qword_27E50E7E0;
  if (!qword_27E50E7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50E7E0);
  }

  return result;
}

id sub_2409E7C68()
{
  v0 = objc_allocWithZone(type metadata accessor for QRCodeScanner(0));

  return [v0 init];
}

uint64_t sub_2409E7CA0@<X0>(uint64_t a1@<X8>)
{
  v41 = a1;
  v2 = type metadata accessor for QRCodeScannerView(0);
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  v39 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E828, &qword_240A37678);
  MEMORY[0x28223BE20](v6);
  v8 = (&v32 - v7);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E830, &qword_240A37680);
  MEMORY[0x28223BE20](v40);
  v10 = &v32 - v9;
  *v8 = sub_240A2BDEC();
  v8[1] = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E838, &qword_240A37688);
  sub_2409E81F4(v1, v8 + *(v12 + 44));
  v32 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2409EB2B4(v1, v32);
  v38 = *(v4 + 80);
  v13 = (v38 + 16) & ~v38;
  v14 = swift_allocObject();
  sub_2409EB328(&v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  sub_24091CE28(&qword_27E50E840, &qword_27E50E828, &qword_240A37678, MEMORY[0x277CE11A8]);
  sub_240A2BA2C();

  sub_240919300(v8, &qword_27E50E828, &qword_240A37678);
  v15 = sub_240A2BE1C();
  v16 = *(v3 + 40);
  v17 = v1;
  v33 = v1;
  v18 = (v1 + v16);
  v19 = *v18;
  v36 = v18[1];
  v37 = v19;
  v35 = *(v18 + 16);
  v34 = type metadata accessor for QRCodeScanner(0);
  sub_2409EC3A8(&qword_27E50E818, type metadata accessor for QRCodeScanner, &unk_240A32914);
  v20 = sub_240A2B1EC();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_240A2B11C();

  LOBYTE(v19) = v42;
  v21 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E848, &qword_240A376D8) + 36)];
  *v21 = v15;
  v21[8] = v19;
  v22 = v32;
  sub_2409EB2B4(v17, v32);
  v23 = swift_allocObject();
  sub_2409EB328(v22, v23 + v13);
  v24 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E850, &qword_240A376E0) + 36)];
  *v24 = sub_2409EB3E8;
  v24[1] = v23;
  v24[2] = 0;
  v24[3] = 0;
  v25 = &v10[*(v40 + 36)];
  v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E858, &qword_240A376E8) + 28);
  v27 = *MEMORY[0x277CDF3C0];
  v28 = sub_240A2B1BC();
  (*(*(v28 - 8) + 104))(v25 + v26, v27, v28);
  *v25 = swift_getKeyPath();
  v29 = sub_240A2B1EC();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_240A2B11C();

  sub_2409EB2B4(v33, v22);
  v30 = swift_allocObject();
  sub_2409EB328(v22, v30 + v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C3E0, &unk_240A30960);
  sub_2409EB570();
  sub_2409EB7DC();
  sub_240A2BAFC();

  return sub_240909F9C(v10);
}

uint64_t sub_2409E81F4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v30 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E8A0, &qword_240A37778);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v29 = &v27[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v7 = &v27[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E8A8, &qword_240A37780);
  v9 = v8 - 8;
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v27[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v14 = &v27[-v13];
  v28 = sub_240A2B86C();
  type metadata accessor for QRCodeScannerView(0);
  type metadata accessor for QRCodeScanner(0);
  sub_2409EC3A8(&qword_27E50E818, type metadata accessor for QRCodeScanner, &unk_240A32914);
  v31 = sub_240A2B1EC();
  sub_240A2BC4C();
  v15 = v32;
  v16 = v33;
  v17 = sub_240A2BDEC();
  v19 = v18;
  v20 = v14 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E8B0, &qword_240A37788) + 36);
  sub_2409E8530(v20);
  v21 = (v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E8B8, &qword_240A37790) + 36));
  *v21 = v17;
  v21[1] = v19;
  *v14 = v15;
  v14[1] = v16;
  *(v14 + *(v9 + 44)) = sub_240A2B86C();
  *v7 = sub_240A2B58C();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E8C0, &qword_240A37798);
  sub_2409E8710(a1, &v7[*(v22 + 44)]);
  sub_240919298(v14, v12, &qword_27E50E8A8, &qword_240A37780);
  v23 = v29;
  sub_240919298(v7, v29, &qword_27E50E8A0, &qword_240A37778);
  v24 = v30;
  *v30 = v28;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E8C8, &qword_240A377A0);
  sub_240919298(v12, &v24[*(v25 + 48)], &qword_27E50E8A8, &qword_240A37780);
  sub_240919298(v23, &v24[*(v25 + 64)], &qword_27E50E8A0, &qword_240A37778);
  sub_240919300(v7, &qword_27E50E8A0, &qword_240A37778);
  sub_240919300(v14, &qword_27E50E8A8, &qword_240A37780);
  sub_240919300(v23, &qword_27E50E8A0, &qword_240A37778);
  return sub_240919300(v12, &qword_27E50E8A8, &qword_240A37780);
}

uint64_t sub_2409E8530@<X0>(uint64_t a2@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E978, &qword_240A378F0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10[-v5];
  type metadata accessor for QRCodeScannerView(0);
  type metadata accessor for QRCodeScanner(0);
  sub_2409EC3A8(&qword_27E50E818, type metadata accessor for QRCodeScanner, &unk_240A32914);
  v7 = sub_240A2B1EC();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_240A2B11C();

  if (v10[15])
  {
    v8 = 1;
  }

  else
  {
    sub_240A2BDDC();
    *&v6[*(v3 + 56)] = 256;
    sub_24093A86C(v6, a2, &qword_27E50E978, &qword_240A378F0);
    v8 = 0;
  }

  return (*(v4 + 56))(a2, v8, 1, v3);
}

uint64_t sub_2409E8710@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E8D0, &qword_240A377A8);
  v5 = v4 - 8;
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v23 - v9;
  sub_2409E89D8(&v23 - v9);
  *&v10[*(v5 + 44)] = 0x3FF0000000000000;
  v11 = sub_240A2BDEC();
  v13 = v12;
  sub_2409E8CCC(a1, &v50);
  v35 = v54;
  v36 = v55;
  v37 = v56;
  v38 = v57;
  v31 = v50;
  v32 = v51;
  v33 = v52;
  v34 = v53;
  v39[0] = v50;
  v39[1] = v51;
  v39[2] = v52;
  v39[3] = v53;
  v39[4] = v54;
  v39[5] = v55;
  v39[6] = v56;
  v39[7] = v57;
  sub_240919298(&v31, &v40, &qword_27E50E8D8, &qword_240A377B0);
  sub_240919300(v39, &qword_27E50E8D8, &qword_240A377B0);
  v27 = v35;
  v28 = v36;
  v29 = v37;
  v30 = v38;
  v23 = v31;
  v24 = v32;
  v25 = v33;
  v26 = v34;
  sub_240919298(v10, v8, &qword_27E50E8D0, &qword_240A377A8);
  sub_240919298(v8, a2, &qword_27E50E8D0, &qword_240A377A8);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E8E0, &qword_240A377B8);
  v15 = a2 + v14[12];
  *v15 = 0;
  *(v15 + 8) = 0;
  v16 = a2 + v14[16];
  *&v40 = v11;
  *(&v40 + 1) = v13;
  v41 = v23;
  v42 = v24;
  v45 = v27;
  v46 = v28;
  v47 = v29;
  v48 = v30;
  v43 = v25;
  v44 = v26;
  v49 = 0x4014000000000000;
  *(v16 + 144) = 0x4014000000000000;
  v17 = v47;
  *(v16 + 96) = v46;
  *(v16 + 112) = v17;
  *(v16 + 128) = v48;
  v18 = v43;
  *(v16 + 32) = v42;
  *(v16 + 48) = v18;
  v19 = v45;
  *(v16 + 64) = v44;
  *(v16 + 80) = v19;
  v20 = v41;
  *v16 = v40;
  *(v16 + 16) = v20;
  v21 = a2 + v14[20];
  *v21 = 0;
  *(v21 + 8) = 0;
  sub_240919298(&v40, &v50, &qword_27E50E8E8, &unk_240A377C0);
  sub_240919300(v10, &qword_27E50E8D0, &qword_240A377A8);
  *&v50 = v11;
  *(&v50 + 1) = v13;
  v55 = v27;
  v56 = v28;
  v57 = v29;
  v58 = v30;
  v51 = v23;
  v52 = v24;
  v53 = v25;
  v54 = v26;
  v59 = 0x4014000000000000;
  sub_240919300(&v50, &qword_27E50E8E8, &unk_240A377C0);
  return sub_240919300(v8, &qword_27E50E8D0, &qword_240A377A8);
}

uint64_t sub_2409E89D8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_240A2BB5C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v30[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *a1 = sub_240A2B58C();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E8F8, &qword_240A37838);
  sub_2409E96E0(v2, (a1 + *(v8 + 44)));
  v9 = sub_240A2B86C();
  v10 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E900, &qword_240A37840) + 36);
  *v10 = v9;
  *(v10 + 8) = 0u;
  *(v10 + 24) = 0u;
  *(v10 + 40) = 1;
  v11 = sub_240A2B87C();
  sub_240A2B1AC();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E908, &qword_240A37848) + 36);
  *v20 = v11;
  *(v20 + 8) = v13;
  *(v20 + 16) = v15;
  *(v20 + 24) = v17;
  *(v20 + 32) = v19;
  *(v20 + 40) = 0;
  v21 = sub_240A2BE1C();
  type metadata accessor for QRCodeScannerView(0);
  type metadata accessor for QRCodeScanner(0);
  sub_2409EC3A8(&qword_27E50E818, type metadata accessor for QRCodeScanner, &unk_240A32914);
  v22 = sub_240A2B1EC();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_240A2B11C();

  LOBYTE(v22) = v30[15];
  v23 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E910, &qword_240A37850) + 36);
  *v23 = v21;
  *(v23 + 8) = v22;
  (*(v5 + 104))(v7, *MEMORY[0x277CE0EE0], v4);
  v24 = sub_240A2BBAC();
  LOBYTE(v7) = sub_240A2B86C();
  v25 = sub_240A2BDEC();
  v27 = v26;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E918, &qword_240A37858);
  v29 = a1 + *(result + 36);
  *v29 = v24;
  *(v29 + 8) = v7;
  *(v29 + 16) = v25;
  *(v29 + 24) = v27;
  return result;
}

uint64_t sub_2409E8CCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *&v27 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B7D0, &qword_240A31218);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v23 - v4;
  LOBYTE(v34) = 0;
  v6 = sub_240A2BC4C();
  v30 = v31;
  v29 = *(&v31 + 1);
  v7 = 0.0;
  MEMORY[0x245CCCAD0](v6, 2.0, 0.0, 1.5);
  v28 = sub_240A2BDFC();

  v26 = type metadata accessor for QRCodeScannerView(0);
  type metadata accessor for QRCodeScanner(0);
  sub_2409EC3A8(&qword_27E50E818, type metadata accessor for QRCodeScanner, &unk_240A32914);
  v8 = sub_240A2B1EC();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_240A2B11C();

  if (v31)
  {
    v9 = 1.0;
  }

  else
  {
    v9 = 0.0;
  }

  v25 = sub_240A2BBCC();
  v10 = sub_240A2B8CC();
  (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
  v24 = sub_240A2B91C();
  sub_240919300(v5, &qword_27E50B7D0, &qword_240A31218);
  KeyPath = swift_getKeyPath();
  v12 = sub_240A2BB9C();
  v13 = swift_getKeyPath();
  v14 = sub_240A2B1EC();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_240A2B11C();

  if (!v31)
  {
    v7 = 1.0;
  }

  v15 = (v27 + *(v26 + 36));
  v16 = *(v15 + 2);
  v34 = *v15;
  v35 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E898, &qword_240A37770);
  sub_240A2BC7C();
  v27 = v31;
  v17 = v32;
  v18 = v33;
  *&v34 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E8F0, &qword_240A37830);
  sub_240A2BC4C();
  v19 = v31;
  *a2 = v30;
  v20 = v28;
  *(a2 + 8) = v29;
  *(a2 + 16) = v20;
  *(a2 + 24) = v9;
  v21 = v24;
  *(a2 + 32) = v25;
  *(a2 + 40) = KeyPath;
  *(a2 + 48) = v21;
  *(a2 + 56) = v13;
  *(a2 + 64) = v12;
  *(a2 + 72) = v7;
  *(a2 + 80) = v27;
  *(a2 + 96) = v17;
  *(a2 + 104) = v18;
  *(a2 + 112) = v19;
}

uint64_t sub_2409E907C()
{
  type metadata accessor for QRCodeScannerView(0);
  type metadata accessor for QRCodeScanner(0);
  sub_2409EC3A8(&qword_27E50E818, type metadata accessor for QRCodeScanner, &unk_240A32914);
  v0 = sub_240A2B1EC();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_240A2B11C();

  if (v4)
  {
    v1 = [objc_opt_self() generalPasteboard];
    v2 = sub_240A2BF1C();

    [v1 setString_];
  }

  sub_240A2C06C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E898, &qword_240A37770);
  return sub_240A2BC6C();
}

void sub_2409E9258(uint64_t a1)
{
  v3 = [objc_opt_self() defaultDeviceWithMediaType_];
  if (v3)
  {
    type metadata accessor for QRCodeScannerView(0);
    type metadata accessor for QRCodeScanner(0);
    sub_2409EC3A8(&qword_27E50E818, type metadata accessor for QRCodeScanner, &unk_240A32914);
    v1 = sub_240A2B1EC();
    sub_240947EA0(v3);

    v2 = sub_240A2B1EC();
    [*&v2[OBJC_IVAR____TtC14AppleIDSetupUI13QRCodeScanner_captureSession] startRunning];
  }
}

uint64_t sub_2409E945C()
{
  type metadata accessor for QRCodeScannerView(0);
  type metadata accessor for QRCodeScanner(0);
  sub_2409EC3A8(&qword_27E50E818, type metadata accessor for QRCodeScanner, &unk_240A32914);
  v0 = sub_240A2B1EC();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_240A2B11C();

  v1 = sub_240A2B1EC();
  swift_getKeyPath();
  swift_getKeyPath();
  if (v5 == 1)
  {
    sub_240A2B11C();

    if (v6)
    {
      return v5;
    }
  }

  else
  {
    sub_240A2B11C();

    if (v6)
    {
      sub_240A2C06C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C7C0, &qword_240A305F0);
      v3 = swift_allocObject();
      *(v3 + 16) = xmmword_240A305D0;
      *(v3 + 56) = MEMORY[0x277D837D0];
      *(v3 + 64) = sub_240913AEC();
      *(v3 + 32) = v5;
      *(v3 + 40) = v6;
      v4 = sub_240A2BF6C();

      return v4;
    }
  }

  return sub_240A2C06C();
}

uint64_t sub_2409E96E0@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v62 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B7D0, &qword_240A31218);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v57 - v4;
  v6 = sub_240A2B97C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E920, &qword_240A37860);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v61 = v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v59 = v57 - v13;
  v60 = sub_240A2B55C();
  LOBYTE(v89[0]) = 1;
  v57[1] = a1;
  sub_2409E9D58(a1, &v78);
  v72 = v80;
  v73 = v81;
  v74 = v82;
  v75 = v83;
  v70 = v78;
  v71 = v79;
  v77 = v83;
  v76[2] = v80;
  v76[3] = v81;
  v76[4] = v82;
  v76[0] = v78;
  v76[1] = v79;
  sub_240919298(&v70, &v63, &qword_27E50E928, &qword_240A37868);
  sub_240919300(v76, &qword_27E50E928, &qword_240A37868);
  *&v69[39] = v72;
  *&v69[55] = v73;
  *&v69[71] = v74;
  v69[87] = v75;
  *&v69[7] = v70;
  *&v69[23] = v71;
  v58 = LOBYTE(v89[0]);
  *&v78 = sub_2409E945C();
  *(&v78 + 1) = v14;
  sub_24091C4F8();
  v15 = sub_240A2B9CC();
  v17 = v16;
  v19 = v18;
  (*(v7 + 104))(v9, *MEMORY[0x277CE0AC0], v6);
  v20 = sub_240A2B8CC();
  (*(*(v20 - 8) + 56))(v5, 1, 1, v20);
  sub_240A2B8DC();
  sub_240A2B92C();
  sub_240919300(v5, &qword_27E50B7D0, &qword_240A31218);
  (*(v7 + 8))(v9, v6);
  v21 = sub_240A2B9AC();
  v23 = v22;
  LOBYTE(v7) = v24;
  v26 = v25;

  sub_240920658(v15, v17, v19 & 1);

  KeyPath = swift_getKeyPath();
  LOBYTE(v15) = sub_240A2B87C();
  sub_240A2B1AC();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  LOBYTE(v17) = v7 & 1;
  LOBYTE(v63) = v7 & 1;
  LOBYTE(v89[0]) = 0;
  LOBYTE(v7) = sub_240A2B85C();
  sub_240A2B1AC();
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;
  LOBYTE(v78) = 0;
  v44 = sub_2409E945C();
  *&v63 = v21;
  *(&v63 + 1) = v23;
  LOBYTE(v64[0]) = v17;
  *(&v64[0] + 1) = v26;
  *&v64[1] = KeyPath;
  BYTE8(v64[1]) = 1;
  LOBYTE(v64[2]) = v15;
  *(&v64[2] + 1) = v29;
  *&v64[3] = v31;
  *(&v64[3] + 1) = v33;
  *&v64[4] = v35;
  BYTE8(v64[4]) = 0;
  LOBYTE(v64[5]) = v7;
  *(&v64[5] + 1) = v37;
  *&v65 = v39;
  *(&v65 + 1) = v41;
  *&v66 = v43;
  BYTE8(v66) = 0;
  *&v67 = 0;
  *(&v67 + 1) = v44;
  v68 = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E930, &qword_240A378A0);
  sub_2409EB858();
  v46 = v59;
  sub_240A2BA6C();
  v86 = v66;
  v87 = v67;
  v88 = v68;
  v82 = v64[3];
  v83 = v64[4];
  v84 = v64[5];
  v85 = v65;
  v78 = v63;
  v79 = v64[0];
  v80 = v64[1];
  v81 = v64[2];
  sub_240919300(&v78, &qword_27E50E930, &qword_240A378A0);
  v47 = v61;
  sub_240919298(v46, v61, &qword_27E50E920, &qword_240A37860);
  v48 = v60;
  v89[0] = v60;
  v89[1] = 0;
  LOBYTE(v23) = v58;
  LOBYTE(v90[0]) = v58;
  *(v90 + 1) = *v69;
  *(&v90[1] + 1) = *&v69[16];
  *(&v90[5] + 1) = *&v69[80];
  *(&v90[4] + 1) = *&v69[64];
  *(&v90[3] + 1) = *&v69[48];
  *(&v90[2] + 1) = *&v69[32];
  v49 = v90[0];
  v50 = v62;
  *v62 = v60;
  v50[1] = v49;
  v51 = v90[1];
  v52 = v90[2];
  *(v50 + 89) = *(&v90[4] + 9);
  v53 = v90[4];
  v50[4] = v90[3];
  v50[5] = v53;
  v50[2] = v51;
  v50[3] = v52;
  v54 = v50;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E960, &qword_240A378D0);
  sub_240919298(v47, v54 + *(v55 + 48), &qword_27E50E920, &qword_240A37860);
  sub_240919298(v89, &v63, &qword_27E50E968, &unk_240A378D8);
  sub_240919300(v46, &qword_27E50E920, &qword_240A37860);
  sub_240919300(v47, &qword_27E50E920, &qword_240A37860);
  *(&v64[2] + 1) = *&v69[32];
  *(&v64[3] + 1) = *&v69[48];
  *(&v64[4] + 1) = *&v69[64];
  *(v64 + 1) = *v69;
  v63 = v48;
  LOBYTE(v64[0]) = v23;
  *(&v64[5] + 1) = *&v69[80];
  *(&v64[1] + 1) = *&v69[16];
  return sub_240919300(&v63, &qword_27E50E968, &unk_240A378D8);
}

uint64_t sub_2409E9D58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for QRCodeScannerView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_2409EB2B4(a1, &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_2409EB328(&v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  LOBYTE(v7) = sub_240A2B88C();
  sub_240A2B1AC();
  v20 = 1;
  *&v21 = sub_2409EBB68;
  *(&v21 + 1) = v8;
  LOWORD(v22) = 257;
  BYTE8(v22) = v7;
  *&v23 = v9;
  *(&v23 + 1) = v10;
  *&v24 = v11;
  *(&v24 + 1) = v12;
  v25 = 0;
  *&v19[7] = v21;
  v19[71] = 0;
  *&v19[55] = v24;
  *&v19[39] = v23;
  *&v19[23] = v22;
  *a2 = 0;
  *(a2 + 8) = 1;
  v13 = *&v19[16];
  *(a2 + 9) = *v19;
  v14 = *&v19[32];
  v15 = *&v19[48];
  *(a2 + 73) = *&v19[64];
  *(a2 + 57) = v15;
  *(a2 + 41) = v14;
  *(a2 + 25) = v13;
  v26[0] = sub_2409EBB68;
  v26[1] = v8;
  v27 = 257;
  v28 = v7;
  v29 = v9;
  v30 = v10;
  v31 = v11;
  v32 = v12;
  v33 = 0;
  sub_240919298(&v21, &v18, &qword_27E50E970, &qword_240A378E8);
  return sub_240919300(v26, &qword_27E50E970, &qword_240A378E8);
}

double sub_2409E9F30@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a5@<X8>)
{
  *a5 = a1;
  a5[1] = a2;
  a5[2] = sub_240A2C06C();
  a5[3] = v6;
  v7 = type metadata accessor for QRCodeScannerView(0);
  v8 = v7[6];
  *(a5 + v8) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BF50, &qword_240A31920);
  swift_storeEnumTagMultiPayload();
  v9 = v7[7];
  *(a5 + v9) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E7E8, &qword_240A375E8);
  swift_storeEnumTagMultiPayload();
  v10 = a5 + v7[8];
  *v10 = sub_2409E7C68;
  *(v10 + 1) = 0;
  v10[16] = 0;
  v11 = a5 + v7[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C3E0, &unk_240A30960);
  sub_240A2BC4C();
  result = *&v13;
  *v11 = v13;
  *(v11 + 2) = v14;
  return result;
}

uint64_t type metadata accessor for QRCodeScannerView(uint64_t a1)
{
  result = qword_27E50E7F8;
  if (!qword_27E50E7F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2409EA0C0@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v52 = a2;
  v53 = a3;
  v51 = a1;
  v54 = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B7D0, &qword_240A31218);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v44 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E9D0, &qword_240A37B88);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v10 = (&v44 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E9D8, &qword_240A37B90);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  v46 = &v44 - v13;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E9E0, &qword_240A37B98) - 8;
  MEMORY[0x28223BE20](v49);
  v47 = &v44 - v14;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E9E8, &qword_240A37BA0) - 8;
  MEMORY[0x28223BE20](v50);
  v48 = &v44 - v15;
  v45 = sub_240A2BBCC();
  v16 = sub_240A2B8CC();
  (*(*(v16 - 8) + 56))(v6, 1, 1, v16);
  sub_240A2B91C();
  sub_240919300(v6, &qword_27E50B7D0, &qword_240A31218);
  sub_240A2B8EC();
  v17 = sub_240A2B94C();

  KeyPath = swift_getKeyPath();
  v19 = sub_240A2BB8C();
  v20 = swift_getKeyPath();
  v21 = (v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E9F0, &qword_240A37BA8) + 36));
  v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E9F8, &qword_240A37BB0) + 28);
  v23 = *MEMORY[0x277CE1048];
  v24 = sub_240A2BC0C();
  (*(*(v24 - 8) + 104))(v21 + v22, v23, v24);
  *v21 = swift_getKeyPath();
  *v10 = v45;
  v10[1] = KeyPath;
  v10[2] = v17;
  v10[3] = v20;
  v10[4] = v19;
  v25 = v10 + *(v8 + 44);
  *v25 = 0;
  *(v25 + 4) = 1;
  v26 = v51;
  v56 = v51;
  v27 = v52;
  v57 = v52;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C250, &qword_240A32310);
  sub_240A2BC5C();
  if (v55)
  {
    v28 = 1.05;
  }

  else
  {
    v28 = 1.0;
  }

  sub_240A2BE3C();
  v30 = v29;
  v32 = v31;
  v33 = v46;
  sub_24093A86C(v10, v46, &qword_27E50E9D0, &qword_240A37B88);
  v34 = v33 + *(v12 + 44);
  *v34 = v28;
  *(v34 + 8) = v28;
  *(v34 + 16) = v30;
  *(v34 + 24) = v32;
  v56 = v26;
  v57 = v27;
  sub_240A2BC5C();
  v35 = v55;
  v36 = v47;
  sub_24093A86C(v33, v47, &qword_27E50E9D8, &qword_240A37B90);
  v37 = v36 + *(v49 + 44);
  v38 = v53;
  *v37 = v53;
  *(v37 + 8) = v35;
  v39 = swift_allocObject();
  *(v39 + 16) = v26;
  *(v39 + 24) = v27;
  *(v39 + 32) = v38;
  v40 = v36;
  v41 = v48;
  sub_24093A86C(v40, v48, &qword_27E50E9E0, &qword_240A37B98);
  v42 = (v41 + *(v50 + 44));
  *v42 = sub_2409EC18C;
  v42[1] = v39;
  v42[2] = 0;
  v42[3] = 0;
  sub_24093A86C(v41, v54, &qword_27E50E9E8, &qword_240A37BA0);

  return swift_retain_n();
}

uint64_t sub_2409EA5B8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E988, &qword_240A37B38);
  MEMORY[0x28223BE20](v4);
  v6 = &v44 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E990, &unk_240A37B40);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v44 - v9;
  v12 = *v1;
  v11 = v1[1];
  v56 = *(v1 + 1);
  *&v53[0] = v12;
  *(&v53[0] + 1) = v11;
  v53[1] = *(v1 + 1);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B598, &qword_240A30A48);
  MEMORY[0x245CCC9B0](&v52, v13);
  v14 = 1;
  if (*(&v52 + 1))
  {
    v53[0] = v52;
    sub_24091C4F8();
    v15 = sub_240A2B9CC();
    v47 = v12;
    v48 = v11;
    v16 = v15;
    v18 = v17;
    v50 = v7;
    v51 = a1;
    v20 = v19;
    v45 = v21;
    v22 = v8;
    v23 = sub_240A2B86C();
    v49 = v10;
    v24 = v20 & 1;
    LOBYTE(v53[0]) = v20 & 1;
    LOBYTE(v52) = 1;
    v25 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E998, &unk_240A37B50) + 36)];
    sub_240A2BDCC();
    v26 = sub_240A2B86C();
    v46 = v4;
    v25[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B790, &qword_240A311E0) + 36)] = v26;
    *v6 = v16;
    *(v6 + 1) = v18;
    v6[16] = v24;
    *(v6 + 3) = v45;
    v6[32] = v23;
    v8 = v22;
    *(v6 + 56) = 0u;
    *(v6 + 40) = 0u;
    v6[72] = 1;
    v27 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E9A0, &unk_240A37B60) + 36)];
    v28 = *(sub_240A2B3FC() + 20);
    v29 = *MEMORY[0x277CE0118];
    v30 = sub_240A2B57C();
    v31 = &v27[v28];
    v32 = v29;
    v7 = v50;
    a1 = v51;
    (*(*(v30 - 8) + 104))(v31, v32, v30);
    __asm { FMOV            V0.2D, #10.0 }

    *v27 = _Q0;
    *&v27[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B7A8, &qword_240A311F0) + 36)] = 256;
    v57 = v47;
    v53[0] = v56;
    v38 = v2[4];
    v54 = v2[5];
    v55 = v38;
    v39 = swift_allocObject();
    v40 = *(v2 + 1);
    *(v39 + 1) = *v2;
    *(v39 + 2) = v40;
    *(v39 + 3) = *(v2 + 2);
    v41 = &v6[*(v46 + 36)];
    *v41 = sub_2409EBDC8;
    v41[1] = v39;
    v41[2] = 0;
    v41[3] = 0;
    sub_2409EBDEC(&v57, &v52);

    sub_240919298(v53, &v52, &unk_27E50C3E0, &unk_240A30960);
    sub_240919298(&v55, &v52, &qword_27E50E8F0, &qword_240A37830);
    sub_240919298(&v54, &v52, &qword_27E50E9A8, &unk_240A37B70);
    sub_2409EBE48();
    v42 = v49;
    sub_240A2BA6C();
    sub_240919300(v6, &qword_27E50E988, &qword_240A37B38);
    sub_24093A86C(v42, a1, &qword_27E50E990, &unk_240A37B40);
    v14 = 0;
  }

  return (*(v8 + 56))(a1, v14, 1, v7);
}

uint64_t sub_2409EA9D4()
{
  v1 = v0;
  v3 = v0[4];
  v2 = v0[5];
  v22 = v3;
  v21 = v2;
  aBlock = v3;
  v14 = v2;
  sub_240919298(&v22, v19, &qword_27E50E8F0, &qword_240A37830);
  sub_240919298(&v21, v19, &qword_27E50E9A8, &unk_240A37B70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E9C8, &qword_240A37B80);
  sub_240A2BC5C();
  v4 = v19[0];
  [v19[0] invalidate];

  v5 = objc_opt_self();
  v6 = *v1;
  *v19 = *(v1 + 1);
  v20 = v6;
  v7 = swift_allocObject();
  v8 = *(v1 + 1);
  v7[1] = *v1;
  v7[2] = v8;
  v7[3] = *(v1 + 2);
  v17 = sub_2409EC09C;
  v18 = v7;
  aBlock = MEMORY[0x277D85DD0];
  v14 = 1107296256;
  v15 = sub_2409DFF20;
  v16 = &block_descriptor_22;
  v9 = _Block_copy(&aBlock);
  sub_240919298(&v22, v12, &qword_27E50E8F0, &qword_240A37830);
  sub_240919298(&v21, v12, &qword_27E50E9A8, &unk_240A37B70);
  sub_2409EBDEC(&v20, v12);

  sub_240919298(v19, v12, &unk_27E50C3E0, &unk_240A30960);

  v10 = [v5 scheduledTimerWithTimeInterval:0 repeats:v9 block:5.0];
  _Block_release(v9);
  aBlock = v3;
  v14 = v2;
  v12[0] = v10;
  sub_240A2BC6C();
  sub_240919300(&v22, &qword_27E50E8F0, &qword_240A37830);
  return sub_240919300(&v21, &qword_27E50E9A8, &unk_240A37B70);
}

uint64_t sub_2409EAC28(uint64_t a1, __int128 *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B598, &qword_240A30A48);
  sub_240A2BCFC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E9C8, &qword_240A37B80);
  return sub_240A2BC6C();
}

id sub_2409EACEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [objc_opt_self() buttonWithProximityType_];
  sub_2409E0948();
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;

  v7 = sub_240A2C39C();
  [v5 addAction:v7 forControlEvents:{64, 0, 0, 0, sub_2409EC1EC, v6}];

  v8 = v5;
  v9 = sub_240A2BF1C();
  [v8 setAccessibilityIdentifier_];

  return v8;
}

uint64_t sub_2409EAE38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2409EC214();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_2409EAE9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2409EC214();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_2409EAF00(uint64_t a1)
{
  sub_2409EC214();
  sub_240A2B6AC();
  __break(1u);
}

uint64_t sub_2409EAF28@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_240A2B11C();

  *a2 = v4;
  return result;
}

uint64_t sub_2409EAFA8(char *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_240A2B12C();
}

void sub_2409EB040(uint64_t a1)
{
  sub_240919DC0();
  if (v1 <= 0x3F)
  {
    sub_2409EB14C(319, &qword_27E50C9F8, MEMORY[0x277CDD848]);
    if (v2 <= 0x3F)
    {
      sub_2409EB14C(319, &qword_27E50E808, MEMORY[0x277CDF708]);
      if (v3 <= 0x3F)
      {
        sub_2409EB1A0(319);
        if (v4 <= 0x3F)
        {
          sub_2409EB234(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_2409EB14C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_240A2B1DC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2409EB1A0(uint64_t a1)
{
  if (!qword_27E50E810)
  {
    type metadata accessor for QRCodeScanner(255);
    sub_2409EC3A8(&qword_27E50E818, type metadata accessor for QRCodeScanner, &unk_240A32914);
    v1 = sub_240A2B1FC();
    if (!v2)
    {
      atomic_store(v1, &qword_27E50E810);
    }
  }
}

void sub_2409EB234(uint64_t a1)
{
  if (!qword_27E50E820)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E50C3E0, &unk_240A30960);
    v1 = sub_240A2BC8C();
    if (!v2)
    {
      atomic_store(v1, &qword_27E50E820);
    }
  }
}

uint64_t sub_2409EB2B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for QRCodeScannerView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2409EB318(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return MEMORY[0x2821F96F8](a1, a2);
  }

  else
  {
  }
}

uint64_t sub_2409EB328(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for QRCodeScannerView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_2409EB3E8()
{
  v1 = *(type metadata accessor for QRCodeScannerView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_2409E9258(v2);
}

uint64_t sub_2409EB448@<X0>(uint64_t *a1@<X8>)
{
  result = sub_240A2B4DC();
  *a1 = result;
  return result;
}

uint64_t sub_2409EB4A0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_240A2B47C();
  *a1 = result;
  return result;
}

uint64_t sub_2409EB4F8(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for QRCodeScannerView(0);
  v7 = *(v4 - 8);
  result = v4 - 8;
  v6 = v7;
  if (a2[1])
  {
    return (*(v2 + ((*(v6 + 80) + 16) & ~*(v6 + 80))))(0, *a2);
  }

  return result;
}

unint64_t sub_2409EB570()
{
  result = qword_27E50E860;
  if (!qword_27E50E860)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50E830, &qword_240A37680);
    sub_2409EB628();
    sub_24091CE28(&qword_27E50E888, &qword_27E50E858, &qword_240A376E8, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50E860);
  }

  return result;
}

unint64_t sub_2409EB628()
{
  result = qword_27E50E868;
  if (!qword_27E50E868)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50E850, &qword_240A376E0);
    sub_2409EB6B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50E868);
  }

  return result;
}

unint64_t sub_2409EB6B4()
{
  result = qword_27E50E870;
  if (!qword_27E50E870)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50E848, &qword_240A376D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50E828, &qword_240A37678);
    sub_24091CE28(&qword_27E50E840, &qword_27E50E828, &qword_240A37678, MEMORY[0x277CE11A8]);
    swift_getOpaqueTypeConformance2();
    sub_24091CE28(&qword_27E50E878, &qword_27E50E880, &qword_240A37768, MEMORY[0x277CE01A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50E870);
  }

  return result;
}

unint64_t sub_2409EB7DC()
{
  result = qword_27E50E890;
  if (!qword_27E50E890)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E50C3E0, &unk_240A30960);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50E890);
  }

  return result;
}

unint64_t sub_2409EB858()
{
  result = qword_27E50E938;
  if (!qword_27E50E938)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50E930, &qword_240A378A0);
    sub_2409EB910();
    sub_24091CE28(&qword_27E50E950, &qword_27E50E958, &qword_240A378C8, MEMORY[0x277CE01A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50E938);
  }

  return result;
}

unint64_t sub_2409EB910()
{
  result = qword_27E50E940;
  if (!qword_27E50E940)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50E948, &qword_240A378A8);
    sub_240920668();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50E940);
  }

  return result;
}

uint64_t objectdestroyTm_12()
{
  v1 = type metadata accessor for QRCodeScannerView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  v6 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BF50, &qword_240A31920);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_240A2B2AC();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  v8 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50E7E8, &qword_240A375E8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_240A2B2BC();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
  }

  sub_2409EB318(*(v5 + v1[8]), *(v5 + v1[8] + 8), *(v5 + v1[8] + 16));

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_2409EBBEC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2409EBC34(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_2409EBC90(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2409EBCD8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2409EBD3C()
{
  result = qword_27E50E980;
  if (!qword_27E50E980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50E980);
  }

  return result;
}

unint64_t sub_2409EBE48()
{
  result = qword_27E50E9B0;
  if (!qword_27E50E9B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50E988, &qword_240A37B38);
    sub_2409EBED4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50E9B0);
  }

  return result;
}

unint64_t sub_2409EBED4()
{
  result = qword_27E50E9B8;
  if (!qword_27E50E9B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50E9A0, &unk_240A37B60);
    sub_2409EBF8C();
    sub_24091CE28(&qword_27E50B838, &qword_27E50B7A8, &qword_240A311F0, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50E9B8);
  }

  return result;
}

unint64_t sub_2409EBF8C()
{
  result = qword_27E50E9C0;
  if (!qword_27E50E9C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50E998, &unk_240A37B50);
    sub_240940614();
    sub_24091CE28(&qword_27E50B8E8, &qword_27E50B790, &qword_240A311E0, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50E9C0);
  }

  return result;
}

uint64_t objectdestroy_61Tm()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t block_copy_helper_22(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2409EC0BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

unint64_t sub_2409EC214()
{
  result = qword_27E50EA00;
  if (!qword_27E50EA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50EA00);
  }

  return result;
}

unint64_t sub_2409EC268()
{
  result = qword_27E50EA08;
  if (!qword_27E50EA08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50EA10, &unk_240A37BF0);
    sub_2409EC2EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50EA08);
  }

  return result;
}

unint64_t sub_2409EC2EC()
{
  result = qword_27E50EA18;
  if (!qword_27E50EA18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50E990, &unk_240A37B40);
    sub_2409EBE48();
    sub_2409EC3A8(&qword_27E50CBC0, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50EA18);
  }

  return result;
}

uint64_t sub_2409EC3A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2409EC3F0()
{
  result = qword_27E50EA20;
  if (!qword_27E50EA20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50E9E8, &qword_240A37BA0);
    sub_2409EC47C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50EA20);
  }

  return result;
}

unint64_t sub_2409EC47C()
{
  result = qword_27E50EA28;
  if (!qword_27E50EA28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50E9E0, &qword_240A37B98);
    sub_2409EC534();
    sub_24091CE28(&qword_27E50E878, &qword_27E50E880, &qword_240A37768, MEMORY[0x277CE01A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50EA28);
  }

  return result;
}

unint64_t sub_2409EC534()
{
  result = qword_27E50EA30;
  if (!qword_27E50EA30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50E9D8, &qword_240A37B90);
    sub_2409EC5C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50EA30);
  }

  return result;
}

unint64_t sub_2409EC5C0()
{
  result = qword_27E50EA38;
  if (!qword_27E50EA38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50E9D0, &qword_240A37B88);
    sub_2409EC64C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50EA38);
  }

  return result;
}

unint64_t sub_2409EC64C()
{
  result = qword_27E50EA40;
  if (!qword_27E50EA40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50E9F0, &qword_240A37BA8);
    sub_240920B70();
    sub_24091CE28(&qword_27E50EA48, &qword_27E50E9F8, &qword_240A37BB0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50EA40);
  }

  return result;
}

uint64_t sub_2409EC704(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_2409EC874(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_2409EC8D4(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___AISAppleIDSignInController_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_240966580;
}

id sub_2409EC9B0()
{
  v1 = OBJC_IVAR___AISAppleIDSignInController____lazy_storage___hostingViewController;
  v2 = *&v0[OBJC_IVAR___AISAppleIDSignInController____lazy_storage___hostingViewController];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR___AISAppleIDSignInController____lazy_storage___hostingViewController];
  }

  else
  {
    v4 = sub_2409ECA5C(v0);
    v5 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_2409ECA5C(char *a1)
{
  v2 = sub_240A2B33C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v23 - v7;
  v9 = type metadata accessor for AppleIDSignInView(0);
  v10 = MEMORY[0x28223BE20](v9);
  v24 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v23 - v12;
  v14 = *&a1[OBJC_IVAR___AISAppleIDSignInController_configuration];
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  v17 = a1;
  v18 = v14;
  sub_240A2B32C();
  (*(v3 + 16))(v6, v8, v2);
  sub_240A2BC4C();
  (*(v3 + 8))(v8, v2);
  type metadata accessor for AISSignInSettings();
  v19 = swift_allocObject();
  v19[2] = v18;
  v19[3] = sub_2409ED48C;
  v19[4] = v16;
  v19[5] = sub_2409ED484;
  v19[6] = v15;
  *v13 = sub_2409ED498;
  *(v13 + 1) = v19;
  v13[16] = 0;
  sub_2409ED4A0(v13, v24);
  v20 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50EA68, &qword_240A37C48));
  v21 = sub_240A2B5EC();
  sub_2409ED504(v13);
  return v21;
}

void *sub_2409ECCEC(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    if ([result respondsToSelector_])
    {
      [v3 signInControllerDidSkip_];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void *sub_2409ECD78(uint64_t a1, char a2, uint64_t a3)
{
  if (a2)
  {
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      return result;
    }

    v6 = result;
    v7 = sub_240A2952C();
    [v6 signInController:a3 didFinishWithError:v7];
  }

  else
  {
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      return result;
    }

    [result signInController:a3 didFinishSignInWithResults:a1];
  }

  return swift_unknownObjectRelease();
}

id AISAppleIDSignInController.__allocating_init(configuration:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR___AISAppleIDSignInController____lazy_storage___hostingViewController] = 0;
  *&v3[OBJC_IVAR___AISAppleIDSignInController_configuration] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id AISAppleIDSignInController.init(configuration:)(uint64_t a1)
{
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR___AISAppleIDSignInController____lazy_storage___hostingViewController] = 0;
  *&v1[OBJC_IVAR___AISAppleIDSignInController_configuration] = a1;
  v4.receiver = v1;
  v4.super_class = type metadata accessor for AISAppleIDSignInController();
  return objc_msgSendSuper2(&v4, sel_init);
}

void sub_2409ECFC8(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_2409EC9B0();
  if (a3)
  {
    v10[4] = a3;
    v10[5] = a4;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 1107296256;
    v10[2] = sub_2409EC704;
    v10[3] = &block_descriptor_23;
    v9 = _Block_copy(v10);
  }

  else
  {
    v9 = 0;
  }

  [a1 presentViewController:v8 animated:a2 & 1 completion:v9];
  _Block_release(v9);
}

uint64_t block_copy_helper_23(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id AISAppleIDSignInController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AISAppleIDSignInController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AISAppleIDSignInController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2409ED4A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppleIDSignInView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2409ED504(uint64_t a1)
{
  v2 = type metadata accessor for AppleIDSignInView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for PairingView(uint64_t a1)
{
  result = qword_27E50EA78;
  if (!qword_27E50EA78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2409ED5DC(uint64_t a1)
{
  sub_2409ED6C8(319, &qword_27E50EA88, MEMORY[0x277CED6C0], MEMORY[0x277CE11F8]);
  if (v1 <= 0x3F)
  {
    sub_2409ED6C8(319, &qword_27E50BD80, MEMORY[0x277CED648], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2409ED6C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_2409ED748(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = sub_240A2BF4C();
  v5 = v4;

  v2(v3, v5);
}

uint64_t sub_2409ED7B4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_240A29EFC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C248, &qword_240A32308);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50EA70, &unk_240A37C58);
  MEMORY[0x245CCC9B0]();
  if ((*(v3 + 88))(v5, v2) != *MEMORY[0x277CED6B8])
  {
    (*(v3 + 8))(v5, v2);
    return MEMORY[0x245CCC9B0](v12);
  }

  (*(v3 + 96))(v5, v2);
  v13 = swift_projectBox();
  sub_240919298(v13, v11, &qword_27E50C248, &qword_240A32308);

  sub_2409F4C4C(v11, v9);
  if ((*(v3 + 48))(v9, 1, v2) == 1)
  {
    sub_240919300(v9, &qword_27E50C248, &qword_240A32308);
    return MEMORY[0x245CCC9B0](v12);
  }

  return (*(v3 + 32))(a1, v9, v2);
}

uint64_t sub_2409EDA04@<X0>(void *a1@<X8>)
{
  v94 = a1;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50EA90, &qword_240A37CD0);
  MEMORY[0x28223BE20](v72);
  v73 = &v65 - v1;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50EA98, &qword_240A37CD8);
  MEMORY[0x28223BE20](v67);
  v68 = &v65 - v2;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50EAA0, &qword_240A37CE0);
  MEMORY[0x28223BE20](v69);
  v71 = &v65 - v3;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50EAA8, &qword_240A37CE8);
  MEMORY[0x28223BE20](v93);
  v74 = &v65 - v4;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50BDA0, &qword_240A30C88);
  v77 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v81 = &v65 - v5;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50EAB0, &qword_240A37CF0);
  MEMORY[0x28223BE20](v78);
  v79 = &v65 - v6;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50EAB8, &qword_240A37CF8);
  MEMORY[0x28223BE20](v86);
  v80 = &v65 - v7;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50BDD0, &unk_240A35010);
  v76 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v75 = &v65 - v8;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50EAC0, &qword_240A37D00);
  MEMORY[0x28223BE20](v92);
  v91 = &v65 - v9;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50EAC8, &qword_240A37D08);
  MEMORY[0x28223BE20](v90);
  v89 = &v65 - v10;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50EAD0, &qword_240A37D10);
  MEMORY[0x28223BE20](v84);
  v12 = (&v65 - v11);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50EAD8, &qword_240A37D18);
  MEMORY[0x28223BE20](v85);
  v88 = &v65 - v13;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50EAE0, &qword_240A37D20);
  MEMORY[0x28223BE20](v95);
  v87 = &v65 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50EAE8, &qword_240A37D28);
  MEMORY[0x28223BE20](v15);
  v17 = (&v65 - v16);
  v18 = sub_240A2A0DC();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v65 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_240A29EFC();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = (&v65 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2409ED7B4(v25);
  v26 = (*(v23 + 88))(v25, v22);
  if (v26 == *MEMORY[0x277CED6A0])
  {
    (*(v23 + 96))(v25, v22);
    v27 = *v25;
    v28 = v25[1];
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C118, &qword_240A32180);
    (*(v19 + 32))(v21, v25 + *(v29 + 48), v18);
    sub_2409EFA0C(v27, v28, v21, &v96);

    *v12 = v96;
    swift_storeEnumTagMultiPayload();
    sub_2409F39F0();

    v30 = v88;
    sub_240A2B6EC();
    sub_240919298(v30, v89, &qword_27E50EAD8, &qword_240A37D18);
    swift_storeEnumTagMultiPayload();
    sub_2409F3964();
    sub_2409F3DE4();
    v31 = v87;
    sub_240A2B6EC();
    sub_240919300(v30, &qword_27E50EAD8, &qword_240A37D18);
    sub_240919298(v31, v91, &qword_27E50EAE0, &qword_240A37D20);
    swift_storeEnumTagMultiPayload();
    sub_2409F38D8();
    sub_2409F3EC4();
    sub_240A2B6EC();

    sub_240919300(v31, &qword_27E50EAE0, &qword_240A37D20);
    return (*(v19 + 8))(v21, v18);
  }

  else
  {
    v66 = v25;
    v33 = v88;
    v65 = v19;
    v70 = v18;
    if (v26 == *MEMORY[0x277CED698])
    {
      v34 = v66;
      (*(v23 + 96))(v66, v22);
      v35 = v65;
      (*(v65 + 32))(v21, v34, v70);
      sub_2409EED18(v21, v17);
      sub_240919298(v17, v12, &qword_27E50EAE8, &qword_240A37D28);
      swift_storeEnumTagMultiPayload();
      sub_2409F39F0();
      sub_240A2B6EC();
      sub_240919298(v33, v89, &qword_27E50EAD8, &qword_240A37D18);
      swift_storeEnumTagMultiPayload();
      sub_2409F3964();
      sub_2409F3DE4();
      v36 = v87;
      sub_240A2B6EC();
      sub_240919300(v33, &qword_27E50EAD8, &qword_240A37D18);
      sub_240919298(v36, v91, &qword_27E50EAE0, &qword_240A37D20);
      swift_storeEnumTagMultiPayload();
      sub_2409F38D8();
      sub_2409F3EC4();
      sub_240A2B6EC();
      sub_240919300(v36, &qword_27E50EAE0, &qword_240A37D20);
      sub_240919300(v17, &qword_27E50EAE8, &qword_240A37D28);
      return (*(v35 + 8))(v21, v70);
    }

    else if (v26 == *MEMORY[0x277CED6A8])
    {
      v37 = v75;
      sub_240A2B22C();
      v38 = v76;
      (*(v76 + 16))(v79, v37, v83);
      swift_storeEnumTagMultiPayload();
      v39 = MEMORY[0x277CDD7F8];
      sub_24091CE28(&qword_27E50C990, &unk_27E50BDD0, &unk_240A35010, MEMORY[0x277CDD7F8]);
      sub_24091CE28(&qword_27E50B640, &qword_27E50BDA0, &qword_240A30C88, v39);
      v40 = v80;
      sub_240A2B6EC();
      sub_240919298(v40, v89, &qword_27E50EAB8, &qword_240A37CF8);
      swift_storeEnumTagMultiPayload();
      sub_2409F3964();
      sub_2409F3DE4();
      v41 = v87;
      sub_240A2B6EC();
      sub_240919300(v40, &qword_27E50EAB8, &qword_240A37CF8);
      sub_240919298(v41, v91, &qword_27E50EAE0, &qword_240A37D20);
      swift_storeEnumTagMultiPayload();
      sub_2409F38D8();
      sub_2409F3EC4();
      sub_240A2B6EC();
      sub_240919300(v41, &qword_27E50EAE0, &qword_240A37D20);
      (*(v38 + 8))(v37, v83);
      return (*(v23 + 8))(v66, v22);
    }

    else
    {
      v42 = v91;
      v43 = v89;
      v44 = v66;
      if (v26 == *MEMORY[0x277CED6B0])
      {
        (*(v23 + 96))(v66, v22);

        v88 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C118, &qword_240A32180) + 48);
        v96 = sub_240A2C06C();
        v97 = v45;
        sub_24091C4F8();
        v46 = v81;
        sub_240A2B24C();
        v47 = v77;
        v48 = v82;
        (*(v77 + 16))(v79, v46, v82);
        swift_storeEnumTagMultiPayload();
        v49 = MEMORY[0x277CDD7F8];
        sub_24091CE28(&qword_27E50C990, &unk_27E50BDD0, &unk_240A35010, MEMORY[0x277CDD7F8]);
        sub_24091CE28(&qword_27E50B640, &qword_27E50BDA0, &qword_240A30C88, v49);
        v50 = v80;
        sub_240A2B6EC();
        sub_240919298(v50, v43, &qword_27E50EAB8, &qword_240A37CF8);
        swift_storeEnumTagMultiPayload();
        sub_2409F3964();
        sub_2409F3DE4();
        v51 = v87;
        sub_240A2B6EC();
        sub_240919300(v50, &qword_27E50EAB8, &qword_240A37CF8);
        sub_240919298(v51, v42, &qword_27E50EAE0, &qword_240A37D20);
        swift_storeEnumTagMultiPayload();
        sub_2409F38D8();
        sub_2409F3EC4();
        sub_240A2B6EC();
        sub_240919300(v51, &qword_27E50EAE0, &qword_240A37D20);
        (*(v47 + 8))(v81, v48);
        return (*(v65 + 8))(v44 + v88, v70);
      }

      else if (v26 == *MEMORY[0x277CED6B8])
      {
        (*(v23 + 8))(v66, v22);
        v96 = sub_240A2C06C();
        v97 = v52;
        sub_24091C4F8();
        v53 = v81;
        sub_240A2B24C();
        v54 = v77;
        v55 = v82;
        (*(v77 + 16))(v68, v53, v82);
        swift_storeEnumTagMultiPayload();
        sub_24091CE28(&qword_27E50B640, &qword_27E50BDA0, &qword_240A30C88, MEMORY[0x277CDD7F8]);
        v56 = v71;
        sub_240A2B6EC();
        sub_240919298(v56, v73, &qword_27E50EAA0, &qword_240A37CE0);
        swift_storeEnumTagMultiPayload();
        sub_2409F3828();
        v57 = v74;
        sub_240A2B6EC();
        sub_240919300(v56, &qword_27E50EAA0, &qword_240A37CE0);
        sub_240919298(v57, v42, &qword_27E50EAA8, &qword_240A37CE8);
        swift_storeEnumTagMultiPayload();
        sub_2409F38D8();
        sub_2409F3EC4();
        sub_240A2B6EC();
        sub_240919300(v57, &qword_27E50EAA8, &qword_240A37CE8);
        return (*(v54 + 8))(v53, v55);
      }

      else if (v26 == *MEMORY[0x277CED690])
      {
        v58 = v91;
        v96 = sub_240A2C06C();
        v97 = v59;
        sub_24091C4F8();
        v60 = v81;
        sub_240A2B24C();
        v61 = v77;
        v62 = v82;
        (*(v77 + 16))(v68, v60, v82);
        swift_storeEnumTagMultiPayload();
        sub_24091CE28(&qword_27E50B640, &qword_27E50BDA0, &qword_240A30C88, MEMORY[0x277CDD7F8]);
        v63 = v71;
        sub_240A2B6EC();
        sub_240919298(v63, v73, &qword_27E50EAA0, &qword_240A37CE0);
        swift_storeEnumTagMultiPayload();
        sub_2409F3828();
        v64 = v74;
        sub_240A2B6EC();
        sub_240919300(v63, &qword_27E50EAA0, &qword_240A37CE0);
        sub_240919298(v64, v58, &qword_27E50EAA8, &qword_240A37CE8);
        swift_storeEnumTagMultiPayload();
        sub_2409F38D8();
        sub_2409F3EC4();
        sub_240A2B6EC();
        sub_240919300(v64, &qword_27E50EAA8, &qword_240A37CE8);
        return (*(v61 + 8))(v60, v62);
      }

      else
      {
        result = sub_240A2C58C();
        __break(1u);
      }
    }
  }

  return result;
}

void sub_2409EED18(uint64_t a1@<X0>, void *a2@<X8>)
{
  v55 = a2;
  v50 = type metadata accessor for QRCodeScannerView(0);
  MEMORY[0x28223BE20](v50);
  v46 = (v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50EBA8, &qword_240A37D70);
  MEMORY[0x28223BE20](v4);
  v49 = v44 - v5;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50EB48, &qword_240A37D48);
  MEMORY[0x28223BE20](v52);
  v51 = v44 - v6;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50EB58, &qword_240A37D50);
  MEMORY[0x28223BE20](v48);
  v47 = v44 - v7;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50EBB0, &qword_240A37D78);
  MEMORY[0x28223BE20](v53);
  v9 = v44 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50EBB8, &qword_240A37D80);
  MEMORY[0x28223BE20](v10);
  v12 = v44 - v11;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50EB18, &qword_240A37D30);
  MEMORY[0x28223BE20](v54);
  v14 = v44 - v13;
  v15 = sub_240A2A0DC();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = (v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v18, a1, v15);
  v19 = (*(v16 + 88))(v18, v15);
  if (v19 == *MEMORY[0x277CED778])
  {
    (*(v16 + 96))(v18, v15);
    sub_2409F002C(*v18, 1, &v61);
    v20 = v61;
    v56 = v61;
    v57 = v62;
    LOBYTE(v58) = v63;
    HIBYTE(v58) = 1;

    v51 = v20;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50EB38, &qword_240A37D40);
    sub_24091CE28(&qword_27E50EB30, &qword_27E50EB38, &qword_240A37D40, &protocol conformance descriptor for ProxCardView<A>);
    sub_240A2B6EC();
    v21 = v63;
    v22 = BYTE1(v63);
    v23 = v62;
    *v12 = v61;
    *(v12 + 1) = v23;
    v12[32] = v21;
    v12[33] = v22;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50EB28, &qword_240A37D38);
    sub_2409F3B08();
    sub_2409F3BB8();
    sub_240A2B6EC();
    sub_240919298(v14, v9, &qword_27E50EB18, &qword_240A37D30);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50EB70, &qword_240A37D58);
    sub_2409F3A7C();
    sub_2409F3CA0();
    sub_240A2B6EC();

    v24 = v14;
LABEL_5:
    v31 = &qword_27E50EB18;
    v32 = &qword_240A37D30;
LABEL_6:
    sub_240919300(v24, v31, v32);
    return;
  }

  v44[1] = v10;
  v44[0] = v14;
  v45 = v9;
  if (v19 == *MEMORY[0x277CED780])
  {
    (*(v16 + 96))(v18, v15);
    sub_2409F002C(*v18, 0, &v61);
    v25 = v61;
    v56 = v61;
    v57 = v62;
    v58 = v63;

    v26 = v25;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50EB38, &qword_240A37D40);
    sub_24091CE28(&qword_27E50EB30, &qword_27E50EB38, &qword_240A37D40, &protocol conformance descriptor for ProxCardView<A>);
    sub_240A2B6EC();
    v27 = v63;
    v28 = BYTE1(v63);
    v29 = v62;
    *v12 = v61;
    *(v12 + 1) = v29;
    v12[32] = v27;
    v12[33] = v28;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50EB28, &qword_240A37D38);
    sub_2409F3B08();
    sub_2409F3BB8();
    v30 = v44[0];
    sub_240A2B6EC();
    sub_240919298(v30, v45, &qword_27E50EB18, &qword_240A37D30);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50EB70, &qword_240A37D58);
    sub_2409F3A7C();
    sub_2409F3CA0();
    sub_240A2B6EC();

    v24 = v30;
    goto LABEL_5;
  }

  if (v19 == *MEMORY[0x277CED790])
  {
    v33 = v47;
    sub_2409F065C(v47);
    sub_240919298(v33, v49, &qword_27E50EB58, &qword_240A37D50);
    swift_storeEnumTagMultiPayload();
    sub_24091CE28(&qword_27E50EB50, &qword_27E50EB58, &qword_240A37D50, MEMORY[0x277CE1198]);
    sub_2409F4A84(&qword_27E50EB60, type metadata accessor for QRCodeScannerView, &unk_240A37624);
    v34 = v51;
    sub_240A2B6EC();
    sub_240919298(v34, v12, &qword_27E50EB48, &qword_240A37D48);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50EB28, &qword_240A37D38);
    sub_2409F3B08();
    sub_2409F3BB8();
    v35 = v44[0];
    sub_240A2B6EC();
    sub_240919300(v34, &qword_27E50EB48, &qword_240A37D48);
    sub_240919298(v35, v45, &qword_27E50EB18, &qword_240A37D30);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50EB70, &qword_240A37D58);
    sub_2409F3A7C();
    sub_2409F3CA0();
    sub_240A2B6EC();
    sub_240919300(v35, &qword_27E50EB18, &qword_240A37D30);
    v24 = v33;
    v31 = &qword_27E50EB58;
    v32 = &qword_240A37D50;
    goto LABEL_6;
  }

  if (v19 == *MEMORY[0x277CED788])
  {
    sub_2409F0A24(&v61);
    v36 = v61;
    v65 = 0;
    v56 = v61;
    v57 = v62;
    LOBYTE(v58) = v63;
    v59 = *(&v63 + 1);
    v60 = v64;

    v37 = v36;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50EB80, &qword_240A37D60);
    sub_2409F3D2C();
    sub_240A2B6EC();
    v38 = v62;
    v39 = v45;
    *v45 = v61;
    v39[1] = v38;
    v39[2] = v63;
    *(v39 + 24) = v64;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50EB70, &qword_240A37D58);
    sub_2409F3A7C();
    sub_2409F3CA0();
    sub_240A2B6EC();
  }

  else
  {
    v40 = v45;
    if (v19 == *MEMORY[0x277CED770])
    {
      v41 = v46;
      sub_2409F07D4(v46);
      sub_2409F4ACC(v41, v49, type metadata accessor for QRCodeScannerView);
      swift_storeEnumTagMultiPayload();
      sub_24091CE28(&qword_27E50EB50, &qword_27E50EB58, &qword_240A37D50, MEMORY[0x277CE1198]);
      sub_2409F4A84(&qword_27E50EB60, type metadata accessor for QRCodeScannerView, &unk_240A37624);
      v42 = v51;
      sub_240A2B6EC();
      sub_240919298(v42, v12, &qword_27E50EB48, &qword_240A37D48);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50EB28, &qword_240A37D38);
      sub_2409F3B08();
      sub_2409F3BB8();
      v43 = v44[0];
      sub_240A2B6EC();
      sub_240919300(v42, &qword_27E50EB48, &qword_240A37D48);
      sub_240919298(v43, v40, &qword_27E50EB18, &qword_240A37D30);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50EB70, &qword_240A37D58);
      sub_2409F3A7C();
      sub_2409F3CA0();
      sub_240A2B6EC();
      sub_240919300(v43, &qword_27E50EB18, &qword_240A37D30);
      sub_2409F4B34(v41, type metadata accessor for QRCodeScannerView);
    }

    else
    {
      sub_240A2C58C();
      __break(1u);
    }
  }
}

uint64_t sub_2409EFA0C@<X0>(uint64_t (*a1)()@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v57 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50EBF8, &qword_240A37DB8);
  v8 = MEMORY[0x28223BE20](v7);
  v51 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v47 - v10;
  v12 = sub_240A2A0DC();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v55 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v47 - v16;
  v18 = sub_240A2B00C();
  v53 = *(v18 - 8);
  v54 = v18;
  MEMORY[0x28223BE20](v18);
  v20 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_240A2AE9C();
  v58 = v13;
  v21 = *(v13 + 16);
  v56 = a3;
  v52 = v21;
  v21(v17, a3, v12);

  v22 = sub_240A2AFFC();
  v23 = sub_240A2C2CC();

  v50 = v23;
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v59 = v48;
    *v24 = 136315394;
    *(v24 + 4) = sub_240925464(a1, a2, &v59);
    *(v24 + 12) = 2080;
    sub_2409F4A84(&qword_27E50EC50, MEMORY[0x277CED798], MEMORY[0x277CED7A0]);
    v47 = v22;
    v25 = sub_240A2C62C();
    v49 = v11;
    v26 = a1;
    v27 = a2;
    v29 = v28;
    (*(v58 + 8))(v17, v12);
    v30 = sub_240925464(v25, v29, &v59);
    a2 = v27;
    a1 = v26;
    v11 = v49;

    *(v24 + 14) = v30;
    v31 = v47;
    _os_log_impl(&dword_2408FE000, v47, v50, "PairingView showPairingCodeView for code %s ofType %s", v24, 0x16u);
    v32 = v48;
    swift_arrayDestroy();
    MEMORY[0x245CCDDB0](v32, -1, -1);
    MEMORY[0x245CCDDB0](v24, -1, -1);
  }

  else
  {

    (*(v58 + 8))(v17, v12);
  }

  (*(v53 + 8))(v20, v54);
  v33 = v55;
  v52(v55, v56, v12);
  v34 = (*(v58 + 88))(v33, v12);
  if (v34 == *MEMORY[0x277CED778])
  {
    goto LABEL_5;
  }

  if (v34 == *MEMORY[0x277CED780])
  {
    v35 = v11;
    v36 = a1;
    v37 = a2;
    v38 = 0;
    goto LABEL_8;
  }

  if (v34 == *MEMORY[0x277CED790])
  {
LABEL_5:
    v35 = v11;
    v36 = a1;
    v37 = a2;
    v38 = 1;
LABEL_8:
    sub_2409F29D8(v36, v37, v38, v35);
    sub_240919298(v11, v51, &qword_27E50EBF8, &qword_240A37DB8);
    sub_2409F485C();
    v39 = sub_240A2BCDC();
    result = sub_240919300(v11, &qword_27E50EBF8, &qword_240A37DB8);
LABEL_9:
    *v57 = v39;
    return result;
  }

  if (v34 == *MEMORY[0x277CED788])
  {
    v41 = a2;
    v42 = sub_240A2B3AC();
    v43 = sub_240A2B86C();
    v59 = a1;
    v60 = v41;
    v61 = v42;
    v62 = v43;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50EC08, &qword_240A37DC0);
    sub_2409F47D0();
LABEL_15:
    result = sub_240A2BCDC();
    v39 = result;
    goto LABEL_9;
  }

  if (v34 == *MEMORY[0x277CED770])
  {
    v59 = 0xD000000000000010;
    v60 = 0x8000000240A3EE10;
    MEMORY[0x245CCCD90](a1, a2);
    v44 = v59;
    v45 = v60;
    v46 = swift_allocObject();
    v46[2] = v44;
    v46[3] = v45;
    v46[4] = 0x4079000000000000;
    v59 = sub_2409F4770;
    v60 = v46;
    LOBYTE(v61) = 0;
    sub_2409F477C();
    goto LABEL_15;
  }

  result = sub_240A2C58C();
  __break(1u);
  return result;
}

uint64_t sub_2409F002C@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v43 = a2;
  v5 = type metadata accessor for PairingView(0);
  v41 = *(v5 - 8);
  v6 = *(v41 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = sub_240A2B00C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_240A2AE9C();
  v11 = sub_240A2AFFC();
  v12 = sub_240A2C2CC();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 134218240;
    *(v13 + 4) = a1;
    *(v13 + 12) = 1024;
    *(v13 + 14) = v43 & 1;
    _os_log_impl(&dword_2408FE000, v11, v12, "PairingView askForManualPairingCodeView length: %ld isAlpha: %{BOOL}d", v13, 0x12u);
    MEMORY[0x245CCDDB0](v13, -1, -1);
  }

  (*(v8 + 8))(v10, v7);
  v14 = [objc_allocWithZone(MEMORY[0x277D43368]) init];
  v50 = 1;
  sub_240A2BD3C();
  v39 = v45;
  v40 = aBlock;
  v15 = v46;
  sub_240A2C06C();
  v16 = sub_240A2BF1C();

  [v14 setTitle_];

  sub_240A2C06C();
  v17 = sub_240A2BF1C();

  [v14 setSubtitle_];

  [v14 setDismissalType_];
  v18 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v19 = swift_allocObject();
  v19[2] = sub_2409F0E0C;
  v19[3] = 0;
  v19[4] = v18;
  v20 = v14;

  v21 = sub_240A2BF1C();
  v48 = sub_2409977DC;
  v49 = v19;
  aBlock = MEMORY[0x277D85DD0];
  v45 = 1107296256;
  v46 = sub_2409DFF20;
  v47 = &block_descriptor_24;
  v22 = _Block_copy(&aBlock);
  v23 = [objc_opt_self() actionWithTitle:v21 style:0 handler:v22];

  _Block_release(v22);

  [v20 setDismissButtonAction_];

  v24 = swift_allocObject();
  *(v24 + 16) = a1;
  LOBYTE(aBlock) = v15;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_2409F3F68;
  *(v25 + 24) = v24;

  v26 = MEMORY[0x277D84F90];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v26 = sub_240937BC0(0, v26[2] + 1, 1, v26);
  }

  v28 = v26[2];
  v27 = v26[3];
  if (v28 >= v27 >> 1)
  {
    v26 = sub_240937BC0((v27 > 1), v28 + 1, 1, v26);
  }

  v26[2] = v28 + 1;
  v29 = &v26[2 * v28];
  v29[4] = sub_24093A2A0;
  v29[5] = v25;
  v30 = aBlock;
  sub_2409F4ACC(v42, &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PairingView);
  v31 = (*(v41 + 80) + 17) & ~*(v41 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v43 & 1;
  sub_2409F3FCC(&v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v32 + v31);
  *(v32 + ((v6 + v31 + 7) & 0xFFFFFFFFFFFFFFF8)) = a1;
  *a3 = v20;
  *(a3 + 8) = v26;
  v33 = v39;
  *(a3 + 16) = v40;
  *(a3 + 24) = v33;
  *(a3 + 32) = v30;
  v34 = swift_allocObject();
  *(v34 + 16) = sub_2409F4030;
  *(v34 + 24) = v32;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v26 = sub_240937BC0(0, v26[2] + 1, 1, v26);
  }

  v36 = v26[2];
  v35 = v26[3];
  if (v36 >= v35 >> 1)
  {
    v26 = sub_240937BC0((v35 > 1), v36 + 1, 1, v26);
  }

  v26[2] = v36 + 1;
  v38 = &v26[2 * v36];
  v38[4] = sub_24093A8F0;
  v38[5] = v34;
  *(a3 + 8) = v26;
  return result;
}

uint64_t sub_2409F065C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_240A2B00C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_240A2AE9C();
  v8 = sub_240A2AFFC();
  v9 = sub_240A2C2CC();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_2408FE000, v8, v9, "PairingView askForUnknownCodeView", v10, 2u);
    MEMORY[0x245CCDDB0](v10, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  *a1 = sub_240A2B58C();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50EBC0, &qword_240A37D88);
  return sub_2409F1A8C(v2, a1 + *(v11 + 44));
}

double sub_2409F07D4@<D0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for PairingView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = sub_240A2B00C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_240A2AE9C();
  v11 = sub_240A2AFFC();
  v12 = sub_240A2C2CC();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v22 = v5;
    v14 = v2;
    v15 = a1;
    v16 = v13;
    *v13 = 0;
    _os_log_impl(&dword_2408FE000, v11, v12, "PairingView askForQRCodeScannerView", v13, 2u);
    v17 = v16;
    a1 = v15;
    v2 = v14;
    v5 = v22;
    MEMORY[0x245CCDDB0](v17, -1, -1);
  }

  (*(v8 + 8))(v10, v7);
  sub_2409F4ACC(v2, &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PairingView);
  v18 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v19 = swift_allocObject();
  sub_2409F3FCC(&v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18);
  return sub_2409E9F30(sub_2409F43DC, v19, a1);
}

uint64_t sub_2409F0A24@<X0>(uint64_t a1@<X8>)
{
  v35 = type metadata accessor for PairingView(0);
  v2 = *(v35 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v35);
  v36 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v34 - v5;
  v7 = sub_240A29DBC();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = (&v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_240A2B00C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_240A2AE9C();
  v14 = sub_240A2AFFC();
  v15 = sub_240A2C2CC();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v34 = v6;
    v17 = v2;
    v18 = v16;
    *v16 = 0;
    _os_log_impl(&dword_2408FE000, v14, v15, "PairingView askForVisualPairingCodeView", v16, 2u);
    v19 = v18;
    v2 = v17;
    v6 = v34;
    MEMORY[0x245CCDDB0](v19, -1, -1);
  }

  (*(v11 + 8))(v13, v10);
  v20 = v37;
  v21 = sub_240A2A0EC();
  sub_240945D78(v9);
  sub_24091F1E0(v21 & 1, v9, 1, v42);
  sub_2409F4ACC(v20, v6, type metadata accessor for PairingView);
  v22 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v23 = swift_allocObject();
  sub_2409F3FCC(v6, v23 + v22);
  v24 = v36;
  sub_2409F4ACC(v20, v36, type metadata accessor for PairingView);
  v25 = swift_allocObject();
  sub_2409F3FCC(v24, v25 + v22);
  v26 = objc_allocWithZone(type metadata accessor for DustCloudScannerCardViewController());
  v27 = sub_24091EA18(v42, sub_2409F4514, v23, sub_2409F4710, v25);
  v38 = 1;
  sub_240A2BD3C();
  v28 = v39;
  v29 = v40;
  v30 = v41;
  LOBYTE(v23) = sub_240A2B88C();
  v31 = sub_240A2B89C();
  sub_240A2B89C();
  if (sub_240A2B89C() != v23)
  {
    v31 = sub_240A2B89C();
  }

  result = sub_240A2B3AC();
  v33 = MEMORY[0x277D84F90];
  *a1 = v27;
  *(a1 + 8) = v33;
  *(a1 + 16) = v28;
  *(a1 + 24) = v29;
  *(a1 + 32) = v30;
  *(a1 + 40) = result;
  *(a1 + 48) = v31;
  return result;
}

void sub_2409F0E0C(void *a1)
{
  v1 = [a1 passcodeEntryView];
  [v1 endEditing_];

  exit(1);
}

void sub_2409F0E50(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for PairingView(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [a1 passcodeEntryView];
  v13 = v12;
  if (a2)
  {
    v14 = 1;
  }

  else
  {
    v14 = 11;
  }

  [v12 setKeyboardType_];

  sub_2409F4ACC(a3, aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PairingView);
  v15 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v16 = v15 + v10;
  v17 = swift_allocObject();
  sub_2409F3FCC(v11, v17 + v15);
  *(v17 + v16) = a2;
  *(v17 + (v16 & 0xFFFFFFFFFFFFFFF8) + 8) = a4;
  aBlock[4] = sub_2409F40D0;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2409ED748;
  aBlock[3] = &block_descriptor_23_0;
  v18 = _Block_copy(aBlock);

  [a1 setTextEntryCompletionHandler_];
  _Block_release(v18);
}

uint64_t sub_2409F1030(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v25[1] = a3;
  v9 = sub_240A29EFC();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = v25 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = v25 - v17;
  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C118, &qword_240A32180) + 48);
  *v18 = a1;
  *(v18 + 1) = a2;
  *&v18[v19] = a5;
  v20 = sub_240A2A0DC();
  v21 = MEMORY[0x277CED778];
  if ((a4 & 1) == 0)
  {
    v21 = MEMORY[0x277CED780];
  }

  (*(*(v20 - 8) + 104))(&v18[v19], *v21, v20);
  (*(v10 + 104))(v18, *MEMORY[0x277CED6B0], v9);
  v22 = *(v10 + 16);
  v22(v16, v18, v9);
  v22(v13, v16, v9);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50EA70, &unk_240A37C58);
  sub_240A2BCFC();
  v23 = *(v10 + 8);
  v23(v16, v9);
  return (v23)(v18, v9);
}

uint64_t sub_2409F126C(uint64_t a1, uint64_t a2)
{
  v4 = sub_240A29EFC();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v20 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v20 - v12;
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C118, &qword_240A32180) + 48);
  *v13 = a1;
  *(v13 + 1) = a2;
  v15 = *MEMORY[0x277CED788];
  v16 = sub_240A2A0DC();
  (*(*(v16 - 8) + 104))(&v13[v14], v15, v16);
  (*(v5 + 104))(v13, *MEMORY[0x277CED6B0], v4);
  v17 = *(v5 + 16);
  v17(v11, v13, v4);
  v17(v8, v11, v4);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50EA70, &unk_240A37C58);
  sub_240A2BCFC();
  v18 = *(v5 + 8);
  v18(v11, v4);
  return (v18)(v13, v4);
}

uint64_t sub_2409F1488()
{
  v0 = sub_240A29EFC();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v15 - v6;
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  *(&v15 - v8) = 6;
  v10 = *MEMORY[0x277CED780];
  v11 = sub_240A2A0DC();
  (*(*(v11 - 8) + 104))(v9, v10, v11);
  (*(v1 + 104))(v9, *MEMORY[0x277CED6A8], v0);
  v12 = *(v1 + 16);
  v12(v7, v9, v0);
  v12(v4, v7, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50EA70, &unk_240A37C58);
  sub_240A2BCFC();
  v13 = *(v1 + 8);
  v13(v7, v0);
  return (v13)(v9, v0);
}

uint64_t sub_2409F1678(char a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = sub_240A29EFC();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = v42 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = (v42 - v16);
  if (a1)
  {
    v18 = *MEMORY[0x277CED790];
    v19 = sub_240A2A0DC();
    (*(*(v19 - 8) + 104))(v17, v18, v19);
    v20 = MEMORY[0x277CED698];
LABEL_7:
    (*(v9 + 104))(v17, *v20, v8);
    v39 = *(v9 + 16);
    v39(v15, v17, v8);
    v39(v12, v15, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50EA70, &unk_240A37C58);
    goto LABEL_8;
  }

  if (!a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C248, &qword_240A32308);
    v36 = swift_allocBox();
    v38 = v37;
    sub_2409ED7B4(v37);
    (*(v9 + 56))(v38, 0, 1, v8);
    *v17 = v36;
    v20 = MEMORY[0x277CED6B8];
    goto LABEL_7;
  }

  if (sub_240A2C0FC())
  {
    v21 = sub_240A2C0AC();
    v22 = sub_2409F4464(v21, a2, a3);
    v24 = v23;
    v26 = v25;
    v42[1] = a4;
    v28 = v27;

    v29 = MEMORY[0x245CCCD40](v22, v24, v26, v28);
    v31 = v30;

    v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C118, &qword_240A32180) + 48);
    *v17 = v29;
    v17[1] = v31;
    v33 = *MEMORY[0x277CED770];
    v34 = sub_240A2A0DC();
    (*(*(v34 - 8) + 104))(v17 + v32, v33, v34);
    (*(v9 + 104))(v17, *MEMORY[0x277CED6B0], v8);
    v35 = *(v9 + 16);
    v35(v15, v17, v8);
    v35(v12, v15, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50EA70, &unk_240A37C58);
LABEL_8:
    sub_240A2BCFC();
    v40 = *(v9 + 8);
    v40(v15, v8);
    return (v40)(v17, v8);
  }
}

uint64_t sub_2409F1A8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v112 = a1;
  v106 = a2;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50D8A0, &unk_240A32240);
  v105 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v102 = &v87 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D740, &qword_240A34FE0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v103 = &v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v113 = &v87 - v6;
  v100 = sub_240A2B37C();
  v98 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v94 = &v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PairingView(0);
  v92 = *(v8 - 8);
  v91 = *(v92 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v90 = &v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50EBC8, &qword_240A37D90);
  v95 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v88 = &v87 - v10;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50EBD0, &qword_240A37D98);
  v97 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v89 = &v87 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50EBD8, &qword_240A37DA0);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v101 = &v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v109 = &v87 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50D9B0, &unk_240A34540);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v99 = &v87 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v111 = &v87 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v114 = &v87 - v22;
  MEMORY[0x28223BE20](v21);
  v110 = &v87 - v23;
  v117 = sub_240A2C06C();
  v118 = v24;
  v108 = sub_24091C4F8();
  v25 = sub_240A2B9CC();
  v27 = v26;
  v29 = v28;
  sub_240A2B8AC();
  v30 = sub_240A2B9AC();
  v32 = v31;
  v34 = v33;

  sub_240920658(v25, v27, v29 & 1);

  LODWORD(v117) = sub_240A2B70C();
  v35 = sub_240A2B98C();
  v37 = v36;
  LOBYTE(v25) = v38;
  v40 = v39;
  sub_240920658(v30, v32, v34 & 1);

  v117 = v35;
  v118 = v37;
  LOBYTE(v119) = v25 & 1;
  v120 = v40;
  sub_240A2BA6C();
  sub_240920658(v35, v37, v25 & 1);

  v117 = sub_240A2C06C();
  v118 = v41;
  v42 = sub_240A2B9CC();
  v44 = v43;
  LOBYTE(v35) = v45;
  sub_240A2B96C();
  v46 = sub_240A2B9AC();
  v48 = v47;
  v50 = v49;

  sub_240920658(v42, v44, v35 & 1);

  LODWORD(v117) = sub_240A2B72C();
  v51 = sub_240A2B98C();
  v53 = v52;
  LOBYTE(v42) = v54;
  v56 = v55;
  sub_240920658(v46, v48, v50 & 1);

  v117 = v51;
  v118 = v53;
  LOBYTE(v119) = v42 & 1;
  v120 = v56;
  sub_240A2BA6C();
  sub_240920658(v51, v53, v42 & 1);

  v57 = swift_allocObject();
  v117 = 0;
  v118 = 0xE000000000000000;
  sub_240A2BC4C();
  v58 = sub_240A2C06C();
  v60 = v59;
  v61 = *(v57 + 32);
  v115 = *(v57 + 16);
  v116 = v61;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50EBE0, &qword_240A37DA8);
  sub_240A2BC7C();
  v117 = v58;
  v118 = v60;
  v62 = v88;
  sub_240A2BE2C();
  v87 = type metadata accessor for PairingView;
  v63 = v90;
  sub_2409F4ACC(v112, v90, type metadata accessor for PairingView);
  v64 = *(v92 + 80);
  v92 = (v64 + 16) & ~v64;
  v65 = (v91 + v92 + 7) & 0xFFFFFFFFFFFFFFF8;
  v66 = swift_allocObject();
  sub_2409F3FCC(v63, v66 + ((v64 + 16) & ~v64));
  v107 = v57;
  *(v66 + v65) = v57;

  v67 = v94;
  sub_240A2B36C();
  v68 = sub_24091CE28(&qword_27E50EBE8, &qword_27E50EBC8, &qword_240A37D90, MEMORY[0x277CDF1A8]);
  v69 = v89;
  v70 = v93;
  sub_240A2BB0C();

  (*(v98 + 8))(v67, v100);
  (*(v95 + 8))(v62, v70);
  v117 = v70;
  v118 = v68;
  swift_getOpaqueTypeConformance2();
  v71 = v109;
  v72 = v96;
  sub_240A2BA6C();
  (*(v97 + 8))(v69, v72);
  v117 = sub_240A2C06C();
  v118 = v73;
  sub_2409F4ACC(v112, v63, v87);
  v74 = swift_allocObject();
  sub_2409F3FCC(v63, v74 + v92);
  *(v74 + v65) = v107;

  v75 = v102;
  sub_240A2BCCC();
  sub_24091CE28(&qword_27E50C220, &unk_27E50D8A0, &unk_240A32240, MEMORY[0x277CDF028]);
  v76 = v113;
  v77 = v104;
  sub_240A2BA6C();
  (*(v105 + 8))(v75, v77);
  v78 = v111;
  sub_240919298(v110, v111, &qword_27E50D9B0, &unk_240A34540);
  v79 = v99;
  sub_240919298(v114, v99, &qword_27E50D9B0, &unk_240A34540);
  v80 = v71;
  v81 = v101;
  sub_240919298(v80, v101, &qword_27E50EBD8, &qword_240A37DA0);
  v82 = v103;
  sub_240919298(v76, v103, &qword_27E50D740, &qword_240A34FE0);
  v83 = v78;
  v84 = v106;
  sub_240919298(v83, v106, &qword_27E50D9B0, &unk_240A34540);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50EBF0, &qword_240A37DB0);
  sub_240919298(v79, v84 + v85[12], &qword_27E50D9B0, &unk_240A34540);
  sub_240919298(v81, v84 + v85[16], &qword_27E50EBD8, &qword_240A37DA0);
  sub_240919298(v82, v84 + v85[20], &qword_27E50D740, &qword_240A34FE0);
  sub_240919300(v113, &qword_27E50D740, &qword_240A34FE0);
  sub_240919300(v109, &qword_27E50EBD8, &qword_240A37DA0);
  sub_240919300(v114, &qword_27E50D9B0, &unk_240A34540);
  sub_240919300(v110, &qword_27E50D9B0, &unk_240A34540);
  sub_240919300(v82, &qword_27E50D740, &qword_240A34FE0);
  sub_240919300(v81, &qword_27E50EBD8, &qword_240A37DA0);
  sub_240919300(v79, &qword_27E50D9B0, &unk_240A34540);
  sub_240919300(v111, &qword_27E50D9B0, &unk_240A34540);
}

uint64_t sub_2409F2794(uint64_t a1, uint64_t a2)
{
  v3 = sub_240A29EFC();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v21 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = v21 - v11;
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C118, &qword_240A32180) + 48);
  v14 = *(a2 + 32);
  v22 = *(a2 + 16);
  v23 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50EBE0, &qword_240A37DA8);
  sub_240A2BC5C();
  v15 = v21[2];
  *v12 = v21[1];
  *(v12 + 1) = v15;
  v16 = *MEMORY[0x277CED790];
  v17 = sub_240A2A0DC();
  (*(*(v17 - 8) + 104))(&v12[v13], v16, v17);
  (*(v4 + 104))(v12, *MEMORY[0x277CED6B0], v3);
  v18 = *(v4 + 16);
  v18(v10, v12, v3);
  v18(v7, v10, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50EA70, &unk_240A37C58);
  sub_240A2BCFC();
  v19 = *(v4 + 8);
  v19(v10, v3);
  return (v19)(v12, v3);
}

uint64_t sub_2409F29D8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = sub_240A2B00C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_240A2AE9C();

  v12 = sub_240A2AFFC();
  v13 = sub_240A2C2CC();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v41 = v8;
    v15 = a3;
    v16 = v14;
    v17 = swift_slowAlloc();
    v42 = v17;
    *v16 = 136315394;
    *(v16 + 4) = sub_240925464(a1, a2, &v42);
    *(v16 + 12) = 1024;
    *(v16 + 14) = v15 & 1;
    _os_log_impl(&dword_2408FE000, v12, v13, "PairingView showManualPairingCodeView for code %s isAlpha %{BOOL}d", v16, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x245CCDDB0](v17, -1, -1);
    MEMORY[0x245CCDDB0](v16, -1, -1);

    (*(v9 + 8))(v11, v41);
  }

  else
  {

    (*(v9 + 8))(v11, v8);
  }

  *a4 = sub_240A2B58C();
  *(a4 + 8) = 0;
  *(a4 + 16) = 1;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50EC58, &qword_240A37DE0);
  sub_2409F2D2C(a1, a2, a4 + *(v18 + 44));
  v19 = sub_240A2B86C();
  sub_240A2B1AC();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50EC38, &qword_240A37DD0) + 36);
  *v28 = v19;
  *(v28 + 8) = v21;
  *(v28 + 16) = v23;
  *(v28 + 24) = v25;
  *(v28 + 32) = v27;
  *(v28 + 40) = 0;
  v29 = a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50EC28, &qword_240A37DC8) + 36);
  sub_240A2BDBC();
  v30 = sub_240A2B86C();
  *(v29 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B790, &qword_240A311E0) + 36)) = v30;
  v31 = (a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50EBF8, &qword_240A37DB8) + 36));
  v32 = *(sub_240A2B3FC() + 20);
  v33 = *MEMORY[0x277CE0118];
  v34 = sub_240A2B57C();
  (*(*(v34 - 8) + 104))(&v31[v32], v33, v34);
  __asm { FMOV            V0.2D, #20.0 }

  *v31 = _Q0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B7A8, &qword_240A311F0);
  *&v31[*(result + 36)] = 256;
  return result;
}

uint64_t sub_2409F2D2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(&v100 + 1) = a2;
  *&v100 = a1;
  v108 = a3;
  v101 = sub_240A2B3FC() - 8;
  MEMORY[0x28223BE20](v101);
  v102 = &v95 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50EC60, &qword_240A37DE8);
  MEMORY[0x28223BE20](v104);
  v103 = &v95 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50EC68, &qword_240A37DF0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v107 = &v95 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v106 = &v95 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B7D0, &qword_240A31218);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v95 - v10;
  v12 = sub_240A2B97C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v95 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B7D8, &qword_240A31220);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v105 = &v95 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v109 = &v95 - v19;
  *&v117[0] = sub_240A2C06C();
  *(&v117[0] + 1) = v20;
  v99 = sub_24091C4F8();
  v21 = sub_240A2B9CC();
  v23 = v22;
  v25 = v24;
  (*(v13 + 104))(v15, *MEMORY[0x277CE0A70], v12);
  v95 = sub_240A2B8CC();
  v96 = *(v95 - 8);
  v26 = *(v96 + 56);
  v97 = v96 + 56;
  v98 = v26;
  v26(v11, 1, 1, v95);
  sub_240A2B8DC();
  sub_240A2B92C();
  sub_240919300(v11, &qword_27E50B7D0, &qword_240A31218);
  (*(v13 + 8))(v15, v12);
  v27 = sub_240A2B9AC();
  v29 = v28;
  LOBYTE(v13) = v30;

  sub_240920658(v21, v23, v25 & 1);

  LODWORD(v117[0]) = sub_240A2B70C();
  v31 = sub_240A2B98C();
  v33 = v32;
  LOBYTE(v21) = v34;
  v36 = v35;
  sub_240920658(v27, v29, v13 & 1);

  KeyPath = swift_getKeyPath();
  LOBYTE(v23) = sub_240A2B88C();
  sub_240A2B1AC();
  v116 = v21 & 1;
  v115 = 0;
  *&v110 = v31;
  *(&v110 + 1) = v33;
  LOBYTE(v111) = v21 & 1;
  *(&v111 + 1) = v36;
  *&v112 = KeyPath;
  BYTE8(v112) = 1;
  LOBYTE(v113) = v23;
  *(&v113 + 1) = v38;
  *&v114[0] = v39;
  *(&v114[0] + 1) = v40;
  *&v114[1] = v41;
  BYTE8(v114[1]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B7E0, &unk_240A378B0);
  sub_240920668();
  sub_240A2BA6C();
  v117[2] = v112;
  v117[3] = v113;
  *v118 = v114[0];
  *&v118[9] = *(v114 + 9);
  v117[0] = v110;
  v117[1] = v111;
  sub_240919300(v117, &qword_27E50B7E0, &unk_240A378B0);
  v110 = v100;

  v42 = sub_240A2B9CC();
  v44 = v43;
  LOBYTE(v21) = v45;
  sub_240A2B8DC();
  v46 = v95;
  (*(v96 + 104))(v11, *MEMORY[0x277CE0980], v95);
  v98(v11, 0, 1, v46);
  sub_240A2B91C();
  sub_240919300(v11, &qword_27E50B7D0, &qword_240A31218);
  v47 = sub_240A2B9AC();
  v49 = v48;
  LOBYTE(v11) = v50;

  sub_240920658(v42, v44, v21 & 1);

  LODWORD(v110) = sub_240A2B70C();
  *(&v100 + 1) = sub_240A2B98C();
  *&v100 = v51;
  LOBYTE(v31) = v52;
  v54 = v53;
  sub_240920658(v47, v49, v11 & 1);

  LOBYTE(v49) = sub_240A2B86C();
  sub_240A2B1AC();
  v56 = v55;
  v58 = v57;
  v60 = v59;
  v62 = v61;
  LOBYTE(v11) = v31 & 1;
  v116 = v31 & 1;
  v115 = 0;
  v63 = *(v101 + 28);
  v64 = *MEMORY[0x277CE0118];
  v65 = sub_240A2B57C();
  v66 = v102;
  (*(*(v65 - 8) + 104))(&v102[v63], v64, v65);
  __asm { FMOV            V0.2D, #15.0 }

  *v66 = _Q0;
  sub_240A2B20C();
  v72 = v103;
  v73 = &v103[*(v104 + 36)];
  v74 = MEMORY[0x277CDFC08];
  sub_2409F4ACC(v66, v73, MEMORY[0x277CDFC08]);
  v75 = *&v110 * 0.5;
  v76 = v73 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50EC70, &qword_240A37E28) + 68);
  sub_2409F4ACC(v66, v76, v74);
  *(v76 + *(sub_240A2B3EC() + 20)) = v75;
  v77 = v76 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50EC78, &qword_240A37E30) + 36);
  v78 = v111;
  *v77 = v110;
  *(v77 + 16) = v78;
  *(v77 + 32) = v112;
  *(v76 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50EC80, &qword_240A37E38) + 56)) = 256;
  v79 = sub_240A2BDEC();
  v81 = v80;
  sub_2409F4B34(v66, MEMORY[0x277CDFC08]);
  v82 = (v76 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50EC88, &qword_240A37E40) + 36));
  *v82 = v79;
  v82[1] = v81;
  v83 = sub_240A2BDEC();
  v85 = v84;
  v86 = (v73 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50EC90, &qword_240A37E48) + 36));
  *v86 = v83;
  v86[1] = v85;
  v87 = v100;
  *v72 = *(&v100 + 1);
  *(v72 + 8) = v87;
  *(v72 + 16) = v11;
  *(v72 + 24) = v54;
  *(v72 + 32) = v49;
  *(v72 + 40) = v56;
  *(v72 + 48) = v58;
  *(v72 + 56) = v60;
  *(v72 + 64) = v62;
  *(v72 + 72) = 0;
  sub_2409F4B94();
  v88 = v106;
  sub_240A2BA6C();
  sub_240919300(v72, &qword_27E50EC60, &qword_240A37DE8);
  v89 = v109;
  v90 = v105;
  sub_240919298(v109, v105, &qword_27E50B7D8, &qword_240A31220);
  v91 = v107;
  sub_240919298(v88, v107, &qword_27E50EC68, &qword_240A37DF0);
  v92 = v108;
  sub_240919298(v90, v108, &qword_27E50B7D8, &qword_240A31220);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50ECA8, &qword_240A37E50);
  sub_240919298(v91, v92 + *(v93 + 48), &qword_27E50EC68, &qword_240A37DF0);
  sub_240919300(v88, &qword_27E50EC68, &qword_240A37DF0);
  sub_240919300(v89, &qword_27E50B7D8, &qword_240A31220);
  sub_240919300(v91, &qword_27E50EC68, &qword_240A37DF0);
  return sub_240919300(v90, &qword_27E50B7D8, &qword_240A31220);
}

unint64_t sub_2409F3828()
{
  result = qword_27E50EAF0;
  if (!qword_27E50EAF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50EAA0, &qword_240A37CE0);
    sub_24091CE28(&qword_27E50B640, &qword_27E50BDA0, &qword_240A30C88, MEMORY[0x277CDD7F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50EAF0);
  }

  return result;
}

unint64_t sub_2409F38D8()
{
  result = qword_27E50EAF8;
  if (!qword_27E50EAF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50EAE0, &qword_240A37D20);
    sub_2409F3964();
    sub_2409F3DE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50EAF8);
  }

  return result;
}

unint64_t sub_2409F3964()
{
  result = qword_27E50EB00;
  if (!qword_27E50EB00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50EAD8, &qword_240A37D18);
    sub_2409F39F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50EB00);
  }

  return result;
}

unint64_t sub_2409F39F0()
{
  result = qword_27E50EB08;
  if (!qword_27E50EB08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50EAE8, &qword_240A37D28);
    sub_2409F3A7C();
    sub_2409F3CA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50EB08);
  }

  return result;
}

unint64_t sub_2409F3A7C()
{
  result = qword_27E50EB10;
  if (!qword_27E50EB10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50EB18, &qword_240A37D30);
    sub_2409F3B08();
    sub_2409F3BB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50EB10);
  }

  return result;
}

unint64_t sub_2409F3B08()
{
  result = qword_27E50EB20;
  if (!qword_27E50EB20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50EB28, &qword_240A37D38);
    sub_24091CE28(&qword_27E50EB30, &qword_27E50EB38, &qword_240A37D40, &protocol conformance descriptor for ProxCardView<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50EB20);
  }

  return result;
}

unint64_t sub_2409F3BB8()
{
  result = qword_27E50EB40;
  if (!qword_27E50EB40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50EB48, &qword_240A37D48);
    sub_24091CE28(&qword_27E50EB50, &qword_27E50EB58, &qword_240A37D50, MEMORY[0x277CE1198]);
    sub_2409F4A84(&qword_27E50EB60, type metadata accessor for QRCodeScannerView, &unk_240A37624);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50EB40);
  }

  return result;
}

unint64_t sub_2409F3CA0()
{
  result = qword_27E50EB68;
  if (!qword_27E50EB68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50EB70, &qword_240A37D58);
    sub_2409F3D2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50EB68);
  }

  return result;
}

unint64_t sub_2409F3D2C()
{
  result = qword_27E50EB78;
  if (!qword_27E50EB78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50EB80, &qword_240A37D60);
    sub_24091CE28(&qword_27E50EB88, &qword_27E50EB90, &qword_240A37D68, &protocol conformance descriptor for ProxCardView<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50EB78);
  }

  return result;
}

unint64_t sub_2409F3DE4()
{
  result = qword_27E50EB98;
  if (!qword_27E50EB98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50EAB8, &qword_240A37CF8);
    v1 = MEMORY[0x277CDD7F8];
    sub_24091CE28(&qword_27E50C990, &unk_27E50BDD0, &unk_240A35010, MEMORY[0x277CDD7F8]);
    sub_24091CE28(&qword_27E50B640, &qword_27E50BDA0, &qword_240A30C88, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50EB98);
  }

  return result;
}

unint64_t sub_2409F3EC4()
{
  result = qword_27E50EBA0;
  if (!qword_27E50EBA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50EAA8, &qword_240A37CE8);
    sub_2409F3828();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50EBA0);
  }

  return result;
}

uint64_t block_copy_helper_24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2409F3F78@<X0>(_BYTE *a1@<X8>)
{
  result = sub_240A2B4BC();
  *a1 = result;
  return result;
}

uint64_t sub_2409F3FCC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PairingView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_2409F4030(void *a1)
{
  v3 = *(type metadata accessor for PairingView(0) - 8);
  v4 = (*(v3 + 80) + 17) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_2409F0E50(a1, v5, v1 + v4, v6);
}

uint64_t sub_2409F40D0(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for PairingView(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(v2 + v7);
  v9 = *(v2 + (v7 & 0xFFFFFFFFFFFFFFF8) + 8);

  return sub_2409F1030(a1, a2, v2 + v6, v8, v9);
}

uint64_t objectdestroy_3Tm(void (*a1)(void))
{
  a1(*(v1 + 24));

  return MEMORY[0x2821FE8E8](v1, 40, 7);
}

uint64_t objectdestroy_28Tm()
{
  v1 = (type metadata accessor for PairingView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50EA70, &unk_240A37C58) + 32);
  v6 = sub_240A29EFC();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  v7 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C720, &unk_240A30CC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_240A29DBC();
    (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_2409F435C()
{
  v1 = *(type metadata accessor for PairingView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  return sub_2409F2794(v0 + v2, *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_2409F43DC(char a1, uint64_t a2, unint64_t a3)
{
  v7 = *(type metadata accessor for PairingView(0) - 8);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return sub_2409F1678(a1, a2, a3, v8);
}

uint64_t sub_2409F4464(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1 < 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return MEMORY[0x2821FBFB0]();
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  v6 = sub_240A2C0BC();
  if (v7)
  {
    v6 = v5;
  }

  if (4 * v3 < v6 >> 14)
  {
    goto LABEL_14;
  }

  return MEMORY[0x2821FBFB0]();
}

uint64_t sub_2409F4514(uint64_t a1, uint64_t a2)
{
  type metadata accessor for PairingView(0);

  return sub_2409F126C(a1, a2);
}

uint64_t objectdestroy_35Tm()
{
  v1 = (type metadata accessor for PairingView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50EA70, &unk_240A37C58) + 32);
  v6 = sub_240A29EFC();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  v7 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C720, &unk_240A30CC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_240A29DBC();
    (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2409F4710()
{
  type metadata accessor for PairingView(0);

  return sub_2409F1488();
}

unint64_t sub_2409F477C()
{
  result = qword_27E50EC00;
  if (!qword_27E50EC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50EC00);
  }

  return result;
}

unint64_t sub_2409F47D0()
{
  result = qword_27E50EC10;
  if (!qword_27E50EC10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50EC08, &qword_240A37DC0);
    sub_240946F68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50EC10);
  }

  return result;
}

unint64_t sub_2409F485C()
{
  result = qword_27E50EC18;
  if (!qword_27E50EC18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50EBF8, &qword_240A37DB8);
    sub_2409F4914();
    sub_24091CE28(&qword_27E50B838, &qword_27E50B7A8, &qword_240A311F0, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50EC18);
  }

  return result;
}

unint64_t sub_2409F4914()
{
  result = qword_27E50EC20;
  if (!qword_27E50EC20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50EC28, &qword_240A37DC8);
    sub_2409F49CC();
    sub_24091CE28(&qword_27E50B8E8, &qword_27E50B790, &qword_240A311E0, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50EC20);
  }

  return result;
}

unint64_t sub_2409F49CC()
{
  result = qword_27E50EC30;
  if (!qword_27E50EC30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50EC38, &qword_240A37DD0);
    sub_24091CE28(&qword_27E50EC40, &qword_27E50EC48, &qword_240A37DD8, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50EC30);
  }

  return result;
}

uint64_t sub_2409F4A84(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2409F4ACC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2409F4B34(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_2409F4B94()
{
  result = qword_27E50EC98;
  if (!qword_27E50EC98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50EC60, &qword_240A37DE8);
    sub_240940614();
    sub_24091CE28(&qword_27E50ECA0, &qword_27E50EC90, &qword_240A37E48, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50EC98);
  }

  return result;
}

uint64_t sub_2409F4C4C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C248, &qword_240A32308);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2409F4CBC()
{
  result = qword_27E50ECB0;
  if (!qword_27E50ECB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E50ECB8, &qword_240A37E58);
    sub_2409F38D8();
    sub_2409F3EC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50ECB0);
  }

  return result;
}

uint64_t sub_2409F4DC0(uint64_t a1)
{
  v3 = v1;
  v4 = sub_240A2B00C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  off_28528EAE0(1);
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
  }

  else
  {
    sub_240A2AE9C();

    v8 = sub_240A2AFFC();
    v9 = sub_240A2C2BC();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v25 = v3;
      v26 = v24;
      *v10 = 136315138;

      v11 = sub_240A2BF9C();
      v13 = sub_240925464(v11, v12, &v26);
      v23 = v8;
      v14 = v9;
      v15 = a1;
      v16 = v13;

      *(v10 + 4) = v16;
      a1 = v15;
      v17 = v23;
      _os_log_impl(&dword_2408FE000, v23, v14, "%s delegate is nil in setFinished", v10, 0xCu);
      v18 = v24;
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x245CCDDB0](v18, -1, -1);
      MEMORY[0x245CCDDB0](v10, -1, -1);
    }

    else
    {
    }

    (*(v5 + 8))(v7, v4);
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v20 = *(v3 + 24);
    ObjectType = swift_getObjectType();
    (*(v20 + 40))(v3, a1, ObjectType, v20);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t AISFlowStepAIDASignInError.hashValue.getter()
{
  sub_240A2C72C();
  MEMORY[0x245CCD400](0);
  return sub_240A2C74C();
}

unint64_t sub_2409F50F8()
{
  result = qword_27E50ECC0;
  if (!qword_27E50ECC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E50ECC0);
  }

  return result;
}

uint64_t sub_2409F515C()
{
  v0[2] = sub_240A2C21C();
  v0[3] = sub_240A2C20C();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_2409F5208;

  return sub_2409F5344();
}

uint64_t sub_2409F5208()
{

  v1 = sub_240A2C1BC();

  return MEMORY[0x2822009F8](sub_24097BC50, v1, v0);
}

uint64_t sub_2409F5344()
{
  v1[13] = v0;
  v2 = sub_240A2B00C();
  v1[14] = v2;
  v1[15] = *(v2 - 8);
  v1[16] = swift_task_alloc();
  sub_240A2C21C();
  v1[17] = sub_240A2C20C();
  v4 = sub_240A2C1BC();
  v1[18] = v4;
  v1[19] = v3;

  return MEMORY[0x2822009F8](sub_2409F5438, v4, v3);
}

uint64_t sub_2409F5438()
{
  v36 = v0;
  v1 = *(v0 + 104);
  v2 = OBJC_IVAR____TtC14AppleIDSetupUI21AISFlowStepAIDASignIn_childAuthResponse;
  v3 = *(v1 + OBJC_IVAR____TtC14AppleIDSetupUI21AISFlowStepAIDASignIn_childAuthResponse);
  v4 = sub_240A2ABFC();

  v5 = sub_240A2BF4C();
  v7 = v6;
  v8 = *MEMORY[0x277CEFF40];
  type metadata accessor for AKAppleIDAuthenticationAppProvidedContext(0);
  *(v0 + 16) = v8;
  *(v0 + 40) = v9;
  sub_24091C780((v0 + 16), (v0 + 48));
  v10 = v8;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v35 = v4;
  sub_2409F6038((v0 + 48), v5, v7, isUniquelyReferenced_nonNull_native);

  v12 = objc_allocWithZone(sub_240A2AC6C());
  v13 = sub_240A2ABDC();
  v14 = *(v1 + v2);
  *(v1 + v2) = v13;

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 160) = Strong;
  if (Strong)
  {
    v16 = *(*(v0 + 104) + 24);
    ObjectType = swift_getObjectType();
    v18 = *(v1 + v2);
    sub_240A2ABFC();

    v19 = sub_240A2BE9C();
    *(v0 + 168) = v19;

    v34 = (*(v16 + 32) + **(v16 + 32));
    v20 = swift_task_alloc();
    *(v0 + 176) = v20;
    *v20 = v0;
    v20[1] = sub_2409F5824;

    return v34(v19, ObjectType, v16);
  }

  else
  {

    sub_240A2AE9C();
    v22 = sub_240A2AFFC();
    v23 = sub_240A2C29C();
    v24 = os_log_type_enabled(v22, v23);
    v26 = *(v0 + 120);
    v25 = *(v0 + 128);
    v27 = *(v0 + 112);
    if (v24)
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v35 = v29;
      *v28 = 136315138;
      *(v0 + 184) = 2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50ECE8, &unk_240A37F78);
      v30 = sub_240A2BF9C();
      v32 = sub_240925464(v30, v31, &v35);

      *(v28 + 4) = v32;
      _os_log_impl(&dword_2408FE000, v22, v23, "Done AIDA sign-in with result %s.", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x245CCDDB0](v29, -1, -1);
      MEMORY[0x245CCDDB0](v28, -1, -1);
    }

    (*(v26 + 8))(v25, v27);
    sub_2409F4DC0(&off_285292198);

    v33 = *(v0 + 8);

    return v33();
  }
}

uint64_t sub_2409F5824(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  *(*v1 + 185) = a1;

  swift_unknownObjectRelease();

  v4 = *(v2 + 152);
  v5 = *(v2 + 144);

  return MEMORY[0x2822009F8](sub_2409F5988, v5, v4);
}

uint64_t sub_2409F5988()
{
  v18 = v0;
  v1 = *(v0 + 185);

  sub_240A2AE9C();
  v2 = sub_240A2AFFC();
  v3 = sub_240A2C29C();
  if (os_log_type_enabled(v2, v3))
  {
    v5 = *(v0 + 120);
    v4 = *(v0 + 128);
    v6 = *(v0 + 112);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136315138;
    *(v0 + 184) = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50ECE8, &unk_240A37F78);
    v9 = sub_240A2BF9C();
    v11 = sub_240925464(v9, v10, &v17);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_2408FE000, v2, v3, "Done AIDA sign-in with result %s.", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x245CCDDB0](v8, -1, -1);
    MEMORY[0x245CCDDB0](v7, -1, -1);

    (*(v5 + 8))(v4, v6);
  }

  else
  {
    v13 = *(v0 + 120);
    v12 = *(v0 + 128);
    v14 = *(v0 + 112);

    (*(v13 + 8))(v12, v14);
  }

  sub_2409F4DC0(&off_285292198);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_2409F5B60@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*(v1 + OBJC_IVAR____TtC14AppleIDSetupUI21AISFlowStepAIDASignIn_settings) + 16);
  v4 = OBJC_IVAR___AISAppleIDSignInConfiguration_userAgeRange;
  swift_beginAccess();
  v5 = *(v3 + v4);
  if (v5 == 2)
  {
    v6 = MEMORY[0x277CEDAD8];
    goto LABEL_5;
  }

  if (v5 == 1)
  {
    v6 = MEMORY[0x277CEDAE0];
LABEL_5:
    v7 = *v6;
    v8 = sub_240A2A4AC();
    v9 = *(v8 - 8);
    (*(v9 + 104))(a1, v7, v8);
    return (*(v9 + 56))(a1, 0, 1, v8);
  }

  v11 = sub_240A2A4AC();
  return (*(*(v11 - 8) + 56))(a1, 1, 1, v11);
}

uint64_t sub_2409F5CBC()
{
  v1 = *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI21AISFlowStepAIDASignIn_guardianAuthResponse);
  v2 = *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI21AISFlowStepAIDASignIn_childAuthResponse);
  v3 = *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI21AISFlowStepAIDASignIn_settings);
  v4 = objc_allocWithZone(sub_240A2983C());
  v5 = v1;
  v6 = v2;

  v7 = [v4 init];
  type metadata accessor for AISFlowStepLocationSetup(0);
  v8 = swift_allocObject();
  *(v8 + OBJC_IVAR____TtC14AppleIDSetupUI24AISFlowStepLocationSetup_locationServicesEnabled) = 0;
  *(v8 + OBJC_IVAR____TtC14AppleIDSetupUI24AISFlowStepLocationSetup_guardianAuthResponse) = v5;
  *(v8 + OBJC_IVAR____TtC14AppleIDSetupUI24AISFlowStepLocationSetup_childAuthResponse) = v6;
  *(v8 + OBJC_IVAR____TtC14AppleIDSetupUI24AISFlowStepLocationSetup_settings) = v3;
  *(v8 + OBJC_IVAR____TtC14AppleIDSetupUI24AISFlowStepLocationSetup_stepLoadTask) = v7;
  *(v8 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_240A2B0DC();
  *(v8 + OBJC_IVAR____TtC14AppleIDSetupUI15AISFlowStepBase_childSetupAnalyticsEvent) = 0;
  return v8;
}

uint64_t sub_2409F5E08()
{
}

uint64_t sub_2409F5E58()
{
  sub_24090C1F0(v0 + 16);
  v1 = OBJC_IVAR____TtC14AppleIDSetupUI15AISFlowStepBase__finished;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B700, &unk_240A30E60);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(v0 + OBJC_IVAR____TtC14AppleIDSetupUI21AISFlowStepAIDASignIn_guardianAuthResponse);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v4, v5);
}

uint64_t type metadata accessor for AISFlowStepAIDASignIn(uint64_t a1)
{
  result = qword_27E50ECD8;
  if (!qword_27E50ECD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

_UNKNOWN **sub_2409F600C()
{
  result = sub_2409F5CBC();
  if (v0)
  {
    return &protocol witness table for AISFlowStepBase;
  }

  return result;
}

_OWORD *sub_2409F6038(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_240925A1C(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_2409389C0();
      v11 = v19;
      goto LABEL_8;
    }

    sub_240937D00(v16, a4 & 1);
    v11 = sub_240925A1C(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_240A2C68C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0(v22);

    return sub_24091C780(a1, v22);
  }

  else
  {
    sub_2409F6654(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_2409F6188(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_240925A1C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_240937FB8(v16, a4 & 1);
      v11 = sub_240925A1C(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_240A2C68C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_240938B64();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return swift_unknownObjectRelease();
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

uint64_t sub_2409F6304(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_240A299DC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_240925B68(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_240938CD4();
      goto LABEL_7;
    }

    sub_240938260(v17, a3 & 1);
    v28 = sub_240925B68(a2);
    if ((v18 & 1) == (v29 & 1))
    {
      v14 = v28;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_2409F66C0(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_240A2C68C();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = sub_240A2995C();
  v23 = *(v22 - 8);
  v24 = *(v23 + 40);
  v25 = v22;
  v26 = v21 + *(v23 + 72) * v14;

  return v24(v26, a1, v25);
}

_OWORD *sub_2409F6508(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_240925A94(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_240939028();
      goto LABEL_7;
    }

    sub_240938708(v13, a3 & 1);
    v19 = sub_240925A94(a2);
    if ((v14 & 1) == (v20 & 1))
    {
      v10 = v19;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_24092702C(a2, v21);
      return sub_2409F67B4(v10, v21, a1, v16);
    }

LABEL_15:
    result = sub_240A2C68C();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  __swift_destroy_boxed_opaque_existential_0(v17);

  return sub_24091C780(a1, v17);
}

_OWORD *sub_2409F6654(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_24091C780(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_2409F66C0(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_240A299DC();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = sub_240A2995C();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a3, v11);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

_OWORD *sub_2409F67B4(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_24091C780(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

uint64_t sub_2409F6830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B420, &qword_240A30800);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_2409FC880(a3, v22 - v9);
  v11 = sub_240A2C24C();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_240919300(v10, &unk_27E50B420, &qword_240A30800);
  }

  else
  {
    sub_240A2C23C();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_240A2C1BC();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_240A2BFBC() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_240919300(a3, &unk_27E50B420, &qword_240A30800);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_240919300(a3, &unk_27E50B420, &qword_240A30800);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_2409F6ACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B420, &qword_240A30800);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_2409FC880(a3, v22 - v9);
  v11 = sub_240A2C24C();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_240919300(v10, &unk_27E50B420, &qword_240A30800);
  }

  else
  {
    sub_240A2C23C();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_240A2C1BC();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22[0] = a2;
      v18 = sub_240A2BFBC() + 32;
      sub_240A2ADCC();

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_240919300(a3, &unk_27E50B420, &qword_240A30800);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_240919300(a3, &unk_27E50B420, &qword_240A30800);
  sub_240A2ADCC();
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t AISChildSetupPresenter.delegate.setter(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*AISChildSetupPresenter.delegate.modify(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___AISChildSetupPresenter_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_240966580;
}

uint64_t AISChildSetupPresenter.currentStepLoadTask.getter()
{
  if (!*(v0 + OBJC_IVAR___AISChildSetupPresenter_currentStep))
  {
    return 0;
  }

  ObjectType = swift_getObjectType();
  result = swift_conformsToProtocol2();
  if (result)
  {
    v3 = *(result + 16);
    v4 = result;
    swift_unknownObjectRetain();
    v5 = v3(ObjectType, v4);
    swift_unknownObjectRelease();
    return v5;
  }

  return result;
}

id AISChildSetupPresenter.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AISChildSetupPresenter.init()()
{
  ObjectType = swift_getObjectType();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B420, &qword_240A30800);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v21 - v1;
  v23 = swift_getObjectType();
  v3 = [objc_allocWithZone(sub_240A2AA0C()) init];
  v4 = sub_240A29B7C();
  v5 = sub_240A29B6C();
  v6 = sub_240A2AE4C();

  v7 = sub_240A2AE3C();
  v8 = sub_240A2A9FC();
  swift_allocObject();

  v9 = sub_240A2A9EC();
  sub_240A2AD3C();
  swift_allocObject();

  v10 = sub_240A2AD2C();
  v27[3] = v4;
  v27[4] = MEMORY[0x277CED510];
  v27[0] = v5;
  v26[3] = v6;
  v26[4] = MEMORY[0x277CEDDE0];
  v26[0] = v7;
  v25[3] = v8;
  v25[4] = MEMORY[0x277CEDCC0];
  v25[0] = v9;
  v11 = ObjectType;
  v12 = objc_allocWithZone(ObjectType);
  swift_unknownObjectWeakInit();
  *&v12[OBJC_IVAR___AISChildSetupPresenter_presentationHandler] = 0;
  *&v12[OBJC_IVAR___AISChildSetupPresenter_settings] = 0;
  v13 = &v12[OBJC_IVAR___AISChildSetupPresenter_currentStep];
  *v13 = 0;
  *(v13 + 1) = 0;
  *&v12[OBJC_IVAR___AISChildSetupPresenter_childSetupStore] = v3;
  sub_240919A14(v27, &v12[OBJC_IVAR___AISChildSetupPresenter_analytics]);
  sub_240919A14(v26, &v12[OBJC_IVAR___AISChildSetupPresenter_biome]);
  *&v12[OBJC_IVAR___AISChildSetupPresenter_childSetupAnalyticsEvent] = v10;
  sub_240919A14(v25, &v12[OBJC_IVAR___AISChildSetupPresenter_familyCircleProvider]);
  v14 = v3;

  sub_240A2C22C();
  v15 = sub_240A2C24C();
  (*(*(v15 - 8) + 56))(v2, 0, 1, v15);
  sub_240A2C21C();
  v16 = sub_240A2C20C();
  v17 = swift_allocObject();
  v18 = MEMORY[0x277D85700];
  v17[2] = v16;
  v17[3] = v18;
  v17[4] = v14;
  sub_2409F6ACC(0, 0, v2, &unk_240A37F98, v17);

  v24.receiver = v12;
  v24.super_class = v11;
  v19 = objc_msgSendSuper2(&v24, sel_init);

  __swift_destroy_boxed_opaque_existential_0(v25);
  __swift_destroy_boxed_opaque_existential_0(v26);
  __swift_destroy_boxed_opaque_existential_0(v27);

  swift_deallocPartialClassInstance();
  return v19;
}

uint64_t sub_2409F7448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[19] = a1;
  v4[20] = a4;
  sub_240A2C21C();
  v4[21] = sub_240A2C20C();
  v6 = sub_240A2C1BC();
  v4[22] = v6;
  v4[23] = v5;

  return MEMORY[0x2822009F8](sub_2409F74E0, v6, v5);
}

uint64_t sub_2409F74E0()
{
  v1 = v0[20];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_2409F75FC;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50EDD0, &qword_240A38170);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2409F78C4;
  v0[13] = &block_descriptor_53;
  v0[14] = v2;
  [v1 fetchMaxAgeForChildAccountWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2409F75FC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 192) = v2;
  v3 = *(v1 + 184);
  v4 = *(v1 + 176);
  if (v2)
  {
    v5 = sub_2409F779C;
  }

  else
  {
    v5 = sub_2409F772C;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_2409F772C()
{
  v1 = v0[19];

  *v1 = v0[18];
  v2 = v0[1];

  return v2();
}

uint64_t sub_2409F779C()
{

  swift_willThrow();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2409F7810(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_240915E50;

  return sub_2409F7448(a1, v4, v5, v6);
}

uint64_t sub_2409F78C4(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v7 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B430, &qword_240A30820);
    v8 = swift_allocError();
    *v9 = a3;
    v10 = a3;
    v5 = v7;
    v6 = v8;

    return MEMORY[0x282200958](v5, v6);
  }

  if (!a2)
  {
    __break(1u);
    return MEMORY[0x282200958](v5, v6);
  }

  **(v7[8] + 40) = a2;
  v11 = a2;

  return swift_continuation_throwingResume();
}

id AISChildSetupPresenter.startFlow(withViewControllerPresentationHandler:)(void *a1)
{
  swift_getObjectType();

  return sub_2409FC588(a1, v1);
}

id sub_2409F79DC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50DCE0, &qword_240A32E20);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v21[-v3];
  if (*&v0[OBJC_IVAR___AISChildSetupPresenter_settings])
  {
    v5 = *&v0[OBJC_IVAR___AISChildSetupPresenter_settings];
  }

  else
  {
    v6 = [objc_allocWithZone(type metadata accessor for AISAppleIDSignInConfiguration(0)) init];
    type metadata accessor for AISSignInSettings();
    v5 = swift_allocObject();
    v5[2] = v6;
    v5[3] = nullsub_1;
    v5[4] = 0;
    v5[5] = 0;
    v5[6] = 0;
    v7 = OBJC_IVAR___AISAppleIDSignInConfiguration_signInFlowType;
    swift_beginAccess();
    *&v6[v7] = 1;
  }

  v8 = *&v1[OBJC_IVAR___AISChildSetupPresenter_childSetupStore];

  v9 = [v8 cachedChildCutOffResponse];
  if (v9)
  {
    v10 = sub_240A2ADBC();
  }

  else
  {
    v10 = 0;
  }

  result = [objc_opt_self() sharedBag];
  if (result)
  {
    v12 = result;
    v13 = v9 == 0;
    v23[3] = sub_2409194E8(0, &unk_27E50DD80, 0x277CF02F0);
    v23[4] = MEMORY[0x277CEDE68];
    v23[0] = v12;
    v14 = [objc_opt_self() sharedNetworkObserver];
    v22[3] = sub_2409194E8(0, &qword_27E50EE10, 0x277CF0278);
    v22[4] = MEMORY[0x277CEDE58];
    v22[0] = v14;
    v15 = [objc_opt_self() sharedInstance];
    type metadata accessor for AISFlowStepParentSignIn(0);
    v16 = swift_allocObject();
    *(v16 + OBJC_IVAR____TtC14AppleIDSetupUI23AISFlowStepParentSignIn_guardianAuthResponse) = 0;
    *(v16 + OBJC_IVAR____TtC14AppleIDSetupUI23AISFlowStepParentSignIn_hideCreationAndForgotPasswordButton) = 0;
    v17 = OBJC_IVAR____TtC14AppleIDSetupUI23AISFlowStepParentSignIn__peerDeviceClass;
    *(v16 + v17) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50C720, &unk_240A30CC0);
    swift_storeEnumTagMultiPayload();
    *(v16 + OBJC_IVAR____TtC14AppleIDSetupUI23AISFlowStepParentSignIn_settings) = v5;
    v18 = v16 + OBJC_IVAR____TtC14AppleIDSetupUI23AISFlowStepParentSignIn_childCutOffAge;
    *v18 = v10;
    *(v18 + 8) = v13;
    sub_240919A14(v22, v16 + OBJC_IVAR____TtC14AppleIDSetupUI23AISFlowStepParentSignIn_internetReachabilityProvider);
    sub_240919A14(v23, v16 + OBJC_IVAR____TtC14AppleIDSetupUI23AISFlowStepParentSignIn_urlBag);
    *(v16 + OBJC_IVAR____TtC14AppleIDSetupUI23AISFlowStepParentSignIn_accountManager) = v15;
    *(v16 + 24) = 0;
    swift_unknownObjectWeakInit();
    v21[7] = 0;

    sub_240A2B0DC();
    __swift_destroy_boxed_opaque_existential_0(v22);
    __swift_destroy_boxed_opaque_existential_0(v23);
    *(v16 + OBJC_IVAR____TtC14AppleIDSetupUI15AISFlowStepBase_childSetupAnalyticsEvent) = 0;
    swift_beginAccess();

    sub_240A2AD0C();

    sub_240A2961C();
    v19 = sub_240A2962C();
    (*(*(v19 - 8) + 56))(v4, 0, 1, v19);
    sub_240A2AD1C();

    sub_2409FBC9C(v20, v1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void AISChildSetupPresenter.present(step:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();

  sub_2409FC128(a1, v2, ObjectType, a2);
}

uint64_t sub_2409F7ED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[19] = a6;
  v7[20] = a7;
  v7[17] = a4;
  v7[18] = a5;
  v8 = sub_240A2B00C();
  v7[21] = v8;
  v7[22] = *(v8 - 8);
  v7[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50EDB0, &qword_240A38150);
  v7[24] = swift_task_alloc();
  v7[25] = swift_task_alloc();
  v9 = sub_240A2A4AC();
  v7[26] = v9;
  v7[27] = *(v9 - 8);
  v7[28] = swift_task_alloc();
  sub_240A2C21C();
  v7[29] = sub_240A2C20C();
  v11 = sub_240A2C1BC();
  v7[30] = v11;
  v7[31] = v10;

  return MEMORY[0x2822009F8](sub_2409F8068, v11, v10);
}

uint64_t sub_2409F8068()
{
  v1 = v0[26];
  v2 = v0[27];
  v3 = v0[25];
  v4 = v0[18];
  ObjectType = swift_getObjectType();
  (*(v4 + 56))(ObjectType, v4);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_240919300(v0[25], &qword_27E50EDB0, &qword_240A38150);
  }

  else
  {
    v7 = v0[27];
    v6 = v0[28];
    v8 = v0[26];
    v9 = v0[24];
    (*(v7 + 32))(v6, v0[25], v8);
    (*(v7 + 16))(v9, v6, v8);
    (*(v7 + 56))(v9, 0, 1, v8);

    sub_240A2ACCC();

    (*(v7 + 8))(v6, v8);
  }

  v13 = (*(v0[18] + 88) + **(v0[18] + 88));
  v10 = swift_task_alloc();
  v0[32] = v10;
  *v10 = v0;
  v10[1] = sub_2409F82AC;
  v11 = v0[18];

  return v13(ObjectType, v11);
}

uint64_t sub_2409F82AC()
{
  v2 = *v1;
  *(*v1 + 264) = v0;

  v3 = *(v2 + 248);
  v4 = *(v2 + 240);
  if (v0)
  {
    v5 = sub_2409F87EC;
  }

  else
  {
    v5 = sub_2409F83E8;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_2409F83E8()
{
  *(v0 + 112) = *(v0 + 136);
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50CC30, &qword_240A33CE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50EDB8, &qword_240A38158);
  if (swift_dynamicCast())
  {
    sub_24090C218((v0 + 56), v0 + 16);
    v1 = *(v0 + 40);
    v2 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_0((v0 + 16), v1);
    v7 = (*(v2 + 8) + **(v2 + 8));
    v3 = swift_task_alloc();
    *(v0 + 272) = v3;
    *v3 = v0;
    v3[1] = sub_2409F8618;
    v4 = *(v0 + 160);

    return v7(v4, v1, v2);
  }

  else
  {

    *(v0 + 88) = 0;
    *(v0 + 56) = 0u;
    *(v0 + 72) = 0u;
    sub_240919300(v0 + 56, &unk_27E50EDC0, &qword_240A38160);

    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_2409F8618()
{
  v2 = *v1;
  *(*v1 + 280) = v0;

  v3 = *(v2 + 248);
  v4 = *(v2 + 240);
  if (v0)
  {
    v5 = sub_2409F8AD0;
  }

  else
  {
    v5 = sub_2409F8754;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_2409F8754()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2409F87EC()
{
  v28 = v0;

  v1 = *(v0 + 264);
  v2 = *(v0 + 136);
  swift_getObjectType();
  v3 = swift_conformsToProtocol2();
  if (v3)
  {
    v4 = v2 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    v5 = v3;
    ObjectType = swift_getObjectType();
    [(*(v5 + 16))(ObjectType v5)];
    swift_unknownObjectRelease();
  }

  sub_240A2AE9C();
  swift_unknownObjectRetain();
  v7 = v1;
  v8 = sub_240A2AFFC();
  v9 = sub_240A2C2AC();
  swift_unknownObjectRelease();

  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 176);
  v12 = *(v0 + 184);
  v13 = *(v0 + 168);
  if (v10)
  {
    v25 = *(v0 + 136);
    v26 = *(v0 + 184);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v27 = v15;
    *v14 = 136315394;
    *(v0 + 96) = v25;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50CC30, &qword_240A33CE0);
    v16 = sub_240A2BF9C();
    v18 = sub_240925464(v16, v17, &v27);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2080;
    *(v0 + 128) = v1;
    v19 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B430, &qword_240A30820);
    v20 = sub_240A2BF9C();
    v22 = sub_240925464(v20, v21, &v27);

    *(v14 + 14) = v22;
    _os_log_impl(&dword_2408FE000, v8, v9, "AISChildSetupPresenter did not present step %s.\n%s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245CCDDB0](v15, -1, -1);
    MEMORY[0x245CCDDB0](v14, -1, -1);

    (*(v11 + 8))(v26, v13);
  }

  else
  {

    (*(v11 + 8))(v12, v13);
  }

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_2409F8AD0()
{
  v28 = v0;

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 280);
  v2 = *(v0 + 136);
  swift_getObjectType();
  v3 = swift_conformsToProtocol2();
  if (v3)
  {
    v4 = v2 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    v5 = v3;
    ObjectType = swift_getObjectType();
    [(*(v5 + 16))(ObjectType v5)];
    swift_unknownObjectRelease();
  }

  sub_240A2AE9C();
  swift_unknownObjectRetain();
  v7 = v1;
  v8 = sub_240A2AFFC();
  v9 = sub_240A2C2AC();
  swift_unknownObjectRelease();

  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 176);
  v12 = *(v0 + 184);
  v13 = *(v0 + 168);
  if (v10)
  {
    v25 = *(v0 + 136);
    v26 = *(v0 + 184);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v27 = v15;
    *v14 = 136315394;
    *(v0 + 96) = v25;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50CC30, &qword_240A33CE0);
    v16 = sub_240A2BF9C();
    v18 = sub_240925464(v16, v17, &v27);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2080;
    *(v0 + 128) = v1;
    v19 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B430, &qword_240A30820);
    v20 = sub_240A2BF9C();
    v22 = sub_240925464(v20, v21, &v27);

    *(v14 + 14) = v22;
    _os_log_impl(&dword_2408FE000, v8, v9, "AISChildSetupPresenter did not present step %s.\n%s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245CCDDB0](v15, -1, -1);
    MEMORY[0x245CCDDB0](v14, -1, -1);

    (*(v11 + 8))(v26, v13);
  }

  else
  {

    (*(v11 + 8))(v12, v13);
  }

  v23 = *(v0 + 8);

  return v23();
}

id AISChildSetupPresenter.__deallocating_deinit()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_240A2B00C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_240A2AE9C();
  v7 = sub_240A2AFFC();
  v8 = sub_240A2C29C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_2408FE000, v7, v8, "AISChildSetupPresenter deinit", v9, 2u);
    MEMORY[0x245CCDDB0](v9, -1, -1);
  }

  (*(v4 + 8))(v6, v3);
  v11.receiver = v1;
  v11.super_class = ObjectType;
  return objc_msgSendSuper2(&v11, sel_dealloc);
}

uint64_t AISChildSetupPresenter.setupPasscode(for:nextTaskInfo:)(uint64_t a1, uint64_t a2)
{
  v3[23] = a2;
  v3[24] = v2;
  v3[22] = a1;
  v4 = sub_240A2B00C();
  v3[25] = v4;
  v3[26] = *(v4 - 8);
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  sub_240A2C21C();
  v3[29] = sub_240A2C20C();
  v6 = sub_240A2C1BC();
  v3[30] = v6;
  v3[31] = v5;

  return MEMORY[0x2822009F8](sub_2409F90FC, v6, v5);
}

uint64_t sub_2409F90FC(uint64_t a1)
{
  sub_240A2AE9C();
  v2 = sub_240A2AFFC();
  v3 = sub_240A2C2CC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2408FE000, v2, v3, "AISChildSetupPresenter setupPasscode", v4, 2u);
    MEMORY[0x245CCDDB0](v4, -1, -1);
  }

  v5 = v1[28];
  v6 = v1[25];
  v7 = v1[26];

  v8 = *(v7 + 8);
  v8(v5, v6);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v1[32] = Strong;
  if (Strong)
  {
    v10 = Strong;
    v12 = v1[22];
    v11 = v1[23];
    v1[2] = v1;
    v1[7] = v1 + 33;
    v1[3] = sub_2409F93E8;
    v13 = swift_continuation_init();
    v1[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50ED40, qword_240A37FA8);
    v1[10] = MEMORY[0x277D85DD0];
    v1[11] = 1107296256;
    v1[12] = sub_2409F972C;
    v1[13] = &block_descriptor_25;
    v1[14] = v13;
    [v10 setupPasscodeForAccount:v12 nextTaskInfo:v11 completion:v1 + 10];

    return MEMORY[0x282200938](v1 + 2);
  }

  else
  {

    sub_240A2AE9C();
    v14 = sub_240A2AFFC();
    v15 = sub_240A2C2BC();
    v16 = os_log_type_enabled(v14, v15);
    v17 = v1[27];
    v18 = v1[25];
    if (v16)
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_2408FE000, v14, v15, "AISChildSetupPresenter delegate is nil in setupPasscode", v19, 2u);
      MEMORY[0x245CCDDB0](v19, -1, -1);
    }

    v8(v17, v18);

    v20 = v1[1];

    return v20(0);
  }
}

uint64_t sub_2409F93E8()
{
  v1 = *(*v0 + 248);
  v2 = *(*v0 + 240);

  return MEMORY[0x2822009F8](sub_2409F94F0, v2, v1);
}

uint64_t sub_2409F94F0()
{
  v1 = *(v0 + 192);

  v2 = *(v0 + 264);
  v3 = *(v1 + OBJC_IVAR___AISChildSetupPresenter_presentationHandler);
  if (v3 && (objc_opt_self(), swift_dynamicCastObjCClass()))
  {
    v4 = *(v0 + 184);
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    type metadata accessor for AISNavigationPushMonitor();
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v6[3] = 0;
    swift_unknownObjectWeakAssign();
    v6[4] = sub_2409FC74C;
    v6[5] = v5;
    *(swift_allocObject() + 16) = v6;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      *(v0 + 168) = Strong;
      v8 = Strong;
      swift_getKeyPath();
      swift_unknownObjectRetain();

      v9 = v3;

      v10 = sub_240A2955C();
    }

    else
    {
      swift_unknownObjectRetain();

      v10 = 0;
    }

    v11 = v6[3];
    v6[3] = v10;

    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
  }

  v12 = *(v0 + 8);

  return v12(v2);
}

uint64_t sub_2409F972C(uint64_t a1, char a2)
{
  v3 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  **(*(v3 + 64) + 40) = a2;

  return MEMORY[0x282200948](v3);
}

uint64_t AISChildSetupPresenter.setupLocationServices(nextTaskInfo:)(uint64_t a1)
{
  v2[22] = a1;
  v2[23] = v1;
  v3 = sub_240A2B00C();
  v2[24] = v3;
  v2[25] = *(v3 - 8);
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  sub_240A2C21C();
  v2[28] = sub_240A2C20C();
  v5 = sub_240A2C1BC();
  v2[29] = v5;
  v2[30] = v4;

  return MEMORY[0x2822009F8](sub_2409F9888, v5, v4);
}

uint64_t sub_2409F9888(uint64_t a1)
{
  sub_240A2AE9C();
  v2 = sub_240A2AFFC();
  v3 = sub_240A2C2CC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2408FE000, v2, v3, "AISChildSetupPresenter setupLocationServices", v4, 2u);
    MEMORY[0x245CCDDB0](v4, -1, -1);
  }

  v5 = v1[27];
  v6 = v1[24];
  v7 = v1[25];

  v8 = *(v7 + 8);
  v8(v5, v6);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v1[31] = Strong;
  if (Strong)
  {
    v10 = Strong;
    v11 = v1[22];
    v1[2] = v1;
    v1[7] = v1 + 32;
    v1[3] = sub_2409F9B70;
    v12 = swift_continuation_init();
    v1[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50ED40, qword_240A37FA8);
    v1[10] = MEMORY[0x277D85DD0];
    v1[11] = 1107296256;
    v1[12] = sub_2409F972C;
    v1[13] = &block_descriptor_10_0;
    v1[14] = v12;
    [v10 setupLocationServicesWithNextTaskInfo:v11 completion:v1 + 10];

    return MEMORY[0x282200938](v1 + 2);
  }

  else
  {

    sub_240A2AE9C();
    v13 = sub_240A2AFFC();
    v14 = sub_240A2C2BC();
    v15 = os_log_type_enabled(v13, v14);
    v16 = v1[26];
    v17 = v1[24];
    if (v15)
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_2408FE000, v13, v14, "AISChildSetupPresenter delegate is nil in setupLocationServices", v18, 2u);
      MEMORY[0x245CCDDB0](v18, -1, -1);
    }

    v8(v16, v17);

    v19 = v1[1];

    return v19(0);
  }
}

uint64_t sub_2409F9B70()
{
  v1 = *(*v0 + 240);
  v2 = *(*v0 + 232);

  return MEMORY[0x2822009F8](sub_2409F9C78, v2, v1);
}

uint64_t sub_2409F9C78()
{
  v1 = *(v0 + 184);

  v2 = *(v0 + 256);
  v3 = *(v1 + OBJC_IVAR___AISChildSetupPresenter_presentationHandler);
  if (v3 && (objc_opt_self(), swift_dynamicCastObjCClass()))
  {
    v4 = *(v0 + 176);
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    type metadata accessor for AISNavigationPushMonitor();
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v6[3] = 0;
    swift_unknownObjectWeakAssign();
    v6[4] = sub_2409FCA2C;
    v6[5] = v5;
    *(swift_allocObject() + 16) = v6;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      *(v0 + 168) = Strong;
      v8 = Strong;
      swift_getKeyPath();
      swift_unknownObjectRetain();

      v9 = v3;

      v10 = sub_240A2955C();
    }

    else
    {
      swift_unknownObjectRetain();

      v10 = 0;
    }

    v11 = v6[3];
    v6[3] = v10;

    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
  }

  v12 = *(v0 + 8);

  return v12(v2);
}

uint64_t AISChildSetupPresenter.setupPerformAIDASignIn(with:)(uint64_t a1)
{
  v2[21] = a1;
  v2[22] = v1;
  v3 = sub_240A2B00C();
  v2[23] = v3;
  v2[24] = *(v3 - 8);
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  sub_240A2C21C();
  v2[27] = sub_240A2C20C();
  v5 = sub_240A2C1BC();
  v2[28] = v5;
  v2[29] = v4;

  return MEMORY[0x2822009F8](sub_2409F9FB4, v5, v4);
}

uint64_t sub_2409F9FB4(uint64_t a1)
{
  sub_240A2AE9C();
  v2 = sub_240A2AFFC();
  v3 = sub_240A2C2CC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2408FE000, v2, v3, "AISChildSetupPresenter performAIDASignIn", v4, 2u);
    MEMORY[0x245CCDDB0](v4, -1, -1);
  }

  v5 = v1[26];
  v6 = v1[23];
  v7 = v1[24];

  v8 = *(v7 + 8);
  v8(v5, v6);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v1[30] = Strong;
  if (Strong)
  {
    v10 = Strong;
    v11 = v1[21];
    v1[2] = v1;
    v1[7] = v1 + 31;
    v1[3] = sub_2409FA29C;
    v12 = swift_continuation_init();
    v1[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50ED40, qword_240A37FA8);
    v1[10] = MEMORY[0x277D85DD0];
    v1[11] = 1107296256;
    v1[12] = sub_2409F972C;
    v1[13] = &block_descriptor_18;
    v1[14] = v12;
    [v10 setupPerformAIDASignInWith:v11 completion:v1 + 10];

    return MEMORY[0x282200938](v1 + 2);
  }

  else
  {

    sub_240A2AE9C();
    v13 = sub_240A2AFFC();
    v14 = sub_240A2C2BC();
    v15 = os_log_type_enabled(v13, v14);
    v16 = v1[25];
    v17 = v1[23];
    if (v15)
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_2408FE000, v13, v14, "AISChildSetupPresenter delegate is nil in performAIDASignIn", v18, 2u);
      MEMORY[0x245CCDDB0](v18, -1, -1);
    }

    v8(v16, v17);

    v19 = v1[1];

    return v19(0);
  }
}

uint64_t sub_2409FA29C()
{
  v1 = *(*v0 + 232);
  v2 = *(*v0 + 224);

  return MEMORY[0x2822009F8](sub_2409FA3A4, v2, v1);
}

uint64_t sub_2409FA3A4()
{

  swift_unknownObjectRelease();
  v1 = *(v0 + 248);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t AISChildSetupPresenter.stepDidFinish(_:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50B700, &unk_240A30E60);
  v38 = *(v4 - 8);
  v39 = v4;
  MEMORY[0x28223BE20](v4);
  v37 = &v35 - v5;
  v6 = sub_240A2B00C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  MEMORY[0x28223BE20](v8);
  v10 = &v35 - v9;
  sub_240A2AE9C();
  swift_unknownObjectRetain();
  v11 = sub_240A2AFFC();
  v12 = sub_240A2C2CC();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v36 = v6;
    v14 = v13;
    v35 = swift_slowAlloc();
    v42 = a2;
    v43 = v35;
    *v14 = 136315138;
    v41 = a1;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50ED48, &qword_240A38000);
    v15 = sub_240A2BF9C();
    v17 = sub_240925464(v15, v16, &v43);

    *(v14 + 4) = v17;
    _os_log_impl(&dword_2408FE000, v11, v12, "AISChildSetupFlowController stepDidFinish %s", v14, 0xCu);
    v18 = v35;
    __swift_destroy_boxed_opaque_existential_0(v35);
    MEMORY[0x245CCDDB0](v18, -1, -1);
    v19 = v14;
    v6 = v36;
    MEMORY[0x245CCDDB0](v19, -1, -1);
  }

  (*(v7 + 8))(v10, v6);
  ObjectType = swift_getObjectType();
  v21 = (*(a2 + 16))(ObjectType, a2);
  v23 = v22;
  swift_getObjectType();
  v24 = swift_conformsToProtocol2();
  if (v24 && a1)
  {
    v25 = v24;
    v26 = swift_getObjectType();
    v27 = *(v25 + 16);
    swift_unknownObjectRetain();
    v28 = v27(v26, v25);
  }

  else
  {
    swift_unknownObjectRetain();
    v28 = 0;
  }

  swift_getObjectType();
  v29 = swift_conformsToProtocol2();
  if (v29 && v21)
  {
    if (v28)
    {
      v30 = v29;
      swift_getObjectType();
      v31 = swift_getObjectType();
      v32 = *(v30 + 16);
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v32(v31, v30);
      sub_240A2ADDC();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }
  }

  else if (v28)
  {
    [v28 complete];
  }

  v33 = swift_getObjectType();
  sub_2409FC128(v21, v40, v33, v23);
  swift_unknownObjectRelease_n();
  return swift_unknownObjectRelease();
}

uint64_t AISChildSetupPresenter.stepDidEndFlow(with:)(uint64_t a1)
{
  v2[38] = a1;
  v2[39] = v1;
  v3 = sub_240A2B00C();
  v2[40] = v3;
  v2[41] = *(v3 - 8);
  v2[42] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B420, &qword_240A30800);
  v2[43] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50DCE0, &qword_240A32E20);
  v2[44] = swift_task_alloc();
  v2[45] = sub_240A2C21C();
  v2[46] = sub_240A2C20C();
  v5 = sub_240A2C1BC();

  return MEMORY[0x2822009F8](sub_2409FABA0, v5, v4);
}

uint64_t sub_2409FABA0()
{
  v45 = v0;
  v1 = *(v0 + 312);

  v2 = OBJC_IVAR___AISChildSetupPresenter_childSetupAnalyticsEvent;

  v3 = sub_240A2AB1C();
  if (v3)
  {
  }

  v4 = *(v0 + 352);
  v5 = *(v0 + 344);
  v6 = *(v0 + 312);
  v42 = *(v0 + 304);
  sub_240A2AC9C();

  sub_240A2961C();
  v7 = sub_240A2962C();
  (*(*(v7 - 8) + 56))(v4, 0, 1, v7);
  sub_240A2ACEC();

  sub_240919A14(v6 + OBJC_IVAR___AISChildSetupPresenter_analytics, v0 + 16);
  __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
  v8 = *(v1 + v2);
  v9 = sub_240A2AD3C();
  v10 = MEMORY[0x277CEDD40];
  *(v0 + 80) = v9;
  *(v0 + 88) = v10;
  *(v0 + 56) = v8;

  sub_240A2A9CC();
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v11 = sub_240A2C24C();
  (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
  sub_240919A14(v6 + OBJC_IVAR___AISChildSetupPresenter_biome, v0 + 96);
  sub_240919A14(v6 + OBJC_IVAR___AISChildSetupPresenter_familyCircleProvider, v0 + 136);
  v12 = *(v1 + v2);
  sub_240919A14(v0 + 96, v0 + 176);
  sub_240919A14(v0 + 136, v0 + 216);

  v13 = sub_240A2C20C();
  __swift_destroy_boxed_opaque_existential_0((v0 + 136));
  __swift_destroy_boxed_opaque_existential_0((v0 + 96));
  v14 = swift_allocObject();
  v15 = MEMORY[0x277D85700];
  v14[2] = v13;
  v14[3] = v15;
  sub_24090C218((v0 + 176), (v14 + 4));
  v14[9] = v12;
  sub_24090C218((v0 + 216), (v14 + 10));
  sub_2409230D4(0, 0, v5, &unk_240A38020, v14);

  sub_240A2AE9C();
  v16 = v42;
  v17 = sub_240A2AFFC();
  v18 = sub_240A2C2CC();

  v19 = os_log_type_enabled(v17, v18);
  v21 = *(v0 + 328);
  v20 = *(v0 + 336);
  v22 = *(v0 + 320);
  if (v19)
  {
    v43 = *(v0 + 336);
    v23 = *(v0 + 304);
    v41 = *(v0 + 320);
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v44 = v25;
    *v24 = 136315138;
    v26 = v23;
    v27 = [v26 description];
    v28 = sub_240A2BF4C();
    v30 = v29;

    v31 = sub_240925464(v28, v30, &v44);

    *(v24 + 4) = v31;
    _os_log_impl(&dword_2408FE000, v17, v18, "AISChildSetupPresenter stepDidEndFlow with result\n%s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v25);
    MEMORY[0x245CCDDB0](v25, -1, -1);
    MEMORY[0x245CCDDB0](v24, -1, -1);

    (*(v21 + 8))(v43, v41);
  }

  else
  {

    (*(v21 + 8))(v20, v22);
  }

  v32 = sub_240A2AB1C();
  if (v32)
  {
    v33 = v32;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v35 = Strong;
      v36 = *(v0 + 312);
      v37 = sub_240A2952C();
      [v35 childSetupPresenter:v36 didFail:v37];

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
    swift_beginAccess();
    v38 = swift_unknownObjectWeakLoadStrong();
    if (v38)
    {
      [v38 childSetupPresenter:*(v0 + 312) didCompleteWithResult:*(v0 + 304)];
      swift_unknownObjectRelease();
    }
  }

  v39 = *(v0 + 8);

  return v39();
}

uint64_t sub_2409FB090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_240A2C21C();
  v6[5] = sub_240A2C20C();
  v8 = sub_240A2C1BC();
  v6[6] = v8;
  v6[7] = v7;

  return MEMORY[0x2822009F8](sub_2409FB12C, v8, v7);
}

uint64_t sub_2409FB12C()
{
  v1 = v0[2];
  v3 = v1[3];
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_0(v1, v3);
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_2409FB1EC;
  v6 = v0[3];
  v5 = v0[4];

  return MEMORY[0x28213F6D0](v6, v5, v3, v2);
}

uint64_t sub_2409FB1EC(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 72) = a1;

  v3 = *(v2 + 56);
  v4 = *(v2 + 48);

  return MEMORY[0x2822009F8](sub_2409FB314, v4, v3);
}

uint64_t sub_2409FB314()
{
  v1 = v0[9];
  v2 = v0[2];

  __swift_project_boxed_opaque_existential_0(v2, v2[3]);
  sub_240A2A22C();

  v3 = v0[1];

  return v3();
}

uint64_t sub_2409FB3AC()
{
  if (!*(v0 + OBJC_IVAR___AISChildSetupPresenter_currentStep))
  {
    return 0;
  }

  ObjectType = swift_getObjectType();
  result = swift_conformsToProtocol2();
  if (result)
  {
    v3 = *(result + 16);
    v4 = result;
    swift_unknownObjectRetain();
    v5 = v3(ObjectType, v4);
    swift_unknownObjectRelease();
    return v5;
  }

  return result;
}

uint64_t sub_2409FB450(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24097E030;

  return AISChildSetupPresenter.setupPasscode(for:nextTaskInfo:)(a1, a2);
}

uint64_t sub_2409FB4F4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24097EA24;

  return AISChildSetupPresenter.setupLocationServices(nextTaskInfo:)(a1);
}

uint64_t sub_2409FB588(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24097EA24;

  return AISChildSetupPresenter.setupPerformAIDASignIn(with:)(a1);
}

uint64_t sub_2409FB620(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_240915E50;

  return AISChildSetupPresenter.stepDidEndFlow(with:)(a1);
}

void sub_2409FB6B8(void *a1)
{
  v3 = sub_240A2B00C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v29 - v8;
  v10 = [a1 viewControllers];
  sub_2409194E8(0, &qword_27E50C5E0, 0x277D75D28);
  v11 = sub_240A2C16C();

  if (v11 >> 62)
  {
    v12 = sub_240A2C59C();
  }

  else
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (*(v1 + OBJC_IVAR___AISChildSetupPresenter_currentStep))
  {
    type metadata accessor for AISFlowStepChildCreate(0);
    v13 = swift_dynamicCastClass();
    if (v13)
    {
      swift_unknownObjectRetain();
    }
  }

  else
  {
    v13 = 0;
  }

  v14 = __OFSUB__(v12, 2);
  v15 = v12 - 2;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    sub_240A2AE9C();
    v16 = sub_240A2AFFC();
    v17 = sub_240A2C29C();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v29[0] = v4;
      v19 = a1;
      v20 = v18;
      *v18 = 67109120;
      *(v18 + 4) = v13 != 0;
      _os_log_impl(&dword_2408FE000, v16, v17, "AISChildSetupPresenter: Current step is child create step: %{BOOL}d", v18, 8u);
      v21 = v20;
      a1 = v19;
      v4 = v29[0];
      MEMORY[0x245CCDDB0](v21, -1, -1);
    }

    v22 = *(v4 + 8);
    v22(v9, v3);
    if (v13)
    {

      if (v15 >= 1)
      {
        sub_240A2AE9C();
        v23 = sub_240A2AFFC();
        v24 = sub_240A2C29C();
        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          *v25 = 134217984;
          *(v25 + 4) = v15;
          _os_log_impl(&dword_2408FE000, v23, v24, "AISChildSetupPresenter: Removing previous view controller: %ld", v25, 0xCu);
          MEMORY[0x245CCDDB0](v25, -1, -1);
        }

        v22(v7, v3);
        v26 = [a1 viewControllers];
        v27 = sub_240A2C16C();

        v29[1] = v27;
        v28 = sub_240A2C15C();

        [a1 setViewControllers_];
      }
    }
  }
}

unint64_t sub_2409FBAB8(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_2409FBC38(v3);
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v5 - 1 - a1));
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
    return v7;
  }

  return result;
}

void sub_2409FBB48(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 viewControllers];
  sub_2409194E8(0, &qword_27E50C5E0, 0x277D75D28);
  v4 = sub_240A2C16C();

  *a2 = v4;
}

void sub_2409FBBBC(uint64_t *a1, void **a2)
{
  v2 = *a2;
  sub_2409194E8(0, &qword_27E50C5E0, 0x277D75D28);
  v3 = sub_240A2C15C();
  [v2 setViewControllers_];
}

uint64_t sub_2409FBC38(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_240A2C59C();
  }

  return sub_240A2C49C();
}

void sub_2409FBC9C(uint64_t a1, char *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B420, &qword_240A30800);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v38 - v5;
  v7 = sub_240A2B00C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v38 - v12;
  v14 = *&a2[OBJC_IVAR___AISChildSetupPresenter_presentationHandler];
  if (v14)
  {
    swift_beginAccess();
    *(a1 + 24) = &protocol witness table for AISChildSetupPresenter;
    swift_unknownObjectWeakAssign();
    v15 = *&a2[OBJC_IVAR___AISChildSetupPresenter_childSetupAnalyticsEvent];
    v16 = OBJC_IVAR____TtC14AppleIDSetupUI15AISFlowStepBase_childSetupAnalyticsEvent;
    swift_beginAccess();
    *(a1 + v16) = v15;
    v17 = v14;

    v18 = &a2[OBJC_IVAR___AISChildSetupPresenter_currentStep];
    *v18 = a1;
    *(v18 + 1) = &protocol witness table for AISFlowStepBase;
    swift_unknownObjectRelease();

    sub_240A2AE9C();

    v19 = sub_240A2AFFC();
    v20 = sub_240A2C2CC();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v39 = v7;
      v22 = v21;
      v23 = swift_slowAlloc();
      v40 = v6;
      v41 = a1;
      v38 = v8;
      v24 = v23;
      v42 = &protocol witness table for AISFlowStepBase;
      v43 = v23;
      *v22 = 136315138;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50CC30, &qword_240A33CE0);
      v25 = sub_240A2BF9C();
      v27 = v17;
      v28 = sub_240925464(v25, v26, &v43);

      *(v22 + 4) = v28;
      v17 = v27;
      _os_log_impl(&dword_2408FE000, v19, v20, "AISChildSetupPresenter present step %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x245CCDDB0](v24, -1, -1);
      MEMORY[0x245CCDDB0](v22, -1, -1);

      (*(v38 + 8))(v13, v39);
      v6 = v40;
    }

    else
    {

      (*(v8 + 8))(v13, v7);
    }

    v32 = sub_240A2C24C();
    (*(*(v32 - 8) + 56))(v6, 1, 1, v32);
    sub_240A2C21C();
    v33 = v17;

    v34 = a2;
    v35 = sub_240A2C20C();
    v36 = swift_allocObject();
    v37 = MEMORY[0x277D85700];
    v36[2] = v35;
    v36[3] = v37;
    v36[4] = a1;
    v36[5] = &protocol witness table for AISFlowStepBase;
    v36[6] = v34;
    v36[7] = v33;
    sub_2409230D4(0, 0, v6, &unk_240A38140, v36);
  }

  else
  {
    sub_240A2AE9C();
    v29 = sub_240A2AFFC();
    v30 = sub_240A2C2AC();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_2408FE000, v29, v30, "AISChildSetupPresenter: Missing presenting view controller. ", v31, 2u);
      MEMORY[0x245CCDDB0](v31, -1, -1);
    }

    (*(v8 + 8))(v11, v7);
  }
}

void sub_2409FC128(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B420, &qword_240A30800);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v42 - v9;
  v11 = sub_240A2B00C();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v42 - v16;
  v18 = *&a2[OBJC_IVAR___AISChildSetupPresenter_presentationHandler];
  if (v18)
  {
    v43 = v12;
    v46 = v11;
    v19 = *(a4 + 16);
    v45 = v18;
    v20 = a2;
    v19(a2, &protocol witness table for AISChildSetupPresenter, a3, a4);
    v21 = *(a4 + 72);

    v21(v22, a3, a4);
    v44 = v20;
    v23 = &v20[OBJC_IVAR___AISChildSetupPresenter_currentStep];
    *v23 = a1;
    *(v23 + 1) = a4;
    swift_unknownObjectRelease();
    swift_unknownObjectRetain();
    sub_240A2AE9C();
    swift_unknownObjectRetain();
    v24 = sub_240A2AFFC();
    v25 = sub_240A2C2CC();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v42 = v10;
      v28 = v27;
      v48 = a4;
      v49 = v27;
      *v26 = 136315138;
      v47 = a1;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E50CC30, &qword_240A33CE0);
      v29 = sub_240A2BF9C();
      v31 = sub_240925464(v29, v30, &v49);

      *(v26 + 4) = v31;
      _os_log_impl(&dword_2408FE000, v24, v25, "AISChildSetupPresenter present step %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v28);
      v32 = v28;
      v10 = v42;
      MEMORY[0x245CCDDB0](v32, -1, -1);
      MEMORY[0x245CCDDB0](v26, -1, -1);
    }

    (*(v43 + 8))(v17, v46);
    v33 = sub_240A2C24C();
    (*(*(v33 - 8) + 56))(v10, 1, 1, v33);
    sub_240A2C21C();
    v34 = v45;
    v35 = v44;
    swift_unknownObjectRetain();
    v36 = sub_240A2C20C();
    v37 = swift_allocObject();
    v38 = MEMORY[0x277D85700];
    v37[2] = v36;
    v37[3] = v38;
    v37[4] = a1;
    v37[5] = a4;
    v37[6] = v35;
    v37[7] = v34;
    sub_2409230D4(0, 0, v10, &unk_240A38168, v37);
  }

  else
  {
    sub_240A2AE9C();
    v39 = sub_240A2AFFC();
    v40 = sub_240A2C2AC();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_2408FE000, v39, v40, "AISChildSetupPresenter: Missing presenting view controller. ", v41, 2u);
      MEMORY[0x245CCDDB0](v41, -1, -1);
    }

    (*(v12 + 8))(v15, v11);
  }
}

id sub_2409FC588(void *a1, uint64_t a2)
{
  v4 = sub_240A2B00C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a2 + OBJC_IVAR___AISChildSetupPresenter_presentationHandler);
  *(a2 + OBJC_IVAR___AISChildSetupPresenter_presentationHandler) = a1;

  v9 = [a1 navigationController];
  if (v9)
  {
    v10 = v9;
    sub_240A2AE9C();
    v11 = sub_240A2AFFC();
    v12 = sub_240A2C2CC();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_2408FE000, v11, v12, "AISChildSetupPresenter will handle navigation delegate callbacks", v13, 2u);
      MEMORY[0x245CCDDB0](v13, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
    [v10 setDelegate_];
  }

  return sub_2409F79DC();
}

uint64_t sub_2409FC770(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_240915E50;

  return sub_2409FB090(a1, v4, v5, (v1 + 4), v6, (v1 + 10));
}

uint64_t sub_2409FC880(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B420, &qword_240A30800);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2409FC8F0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_240916360;

  return sub_2409F7ED0(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t objectdestroy_36Tm()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t String.wiFiLocalizedKey.getter(uint64_t a1, uint64_t a2)
{
  v2 = sub_240A2BF1C();
  v3 = SFLocalizableWAPIStringKeyForKey();

  v4 = sub_240A2BF4C();
  return v4;
}

id sub_2409FCA94()
{
  if (qword_27E50AFA8 != -1)
  {
    swift_once();
  }

  v1 = qword_27E516348;
  qword_27E516340 = qword_27E516348;

  return v1;
}

id sub_2409FCB1C()
{
  type metadata accessor for AISUIBundleSharedAsset();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_27E516348 = result;
  return result;
}

uint64_t sub_2409FCB70()
{
  v0 = sub_240A2B00C();
  __swift_allocate_value_buffer(v0, qword_27E50EDE0);
  __swift_project_value_buffer(v0, qword_27E50EDE0);
  return sub_240A2AE6C();
}

uint64_t sub_2409FCCBC(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_2409FCD1C(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___AISSafetySettingsFlowPresenter_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_240966580;
}

id SafetySettingsFlowPresenter.__allocating_init(with:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR___AISSafetySettingsFlowPresenter_context] = a1;
  *&v3[OBJC_IVAR___AISSafetySettingsFlowPresenter_configuration] = 0;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id SafetySettingsFlowPresenter.init(with:)(uint64_t a1)
{
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR___AISSafetySettingsFlowPresenter_context] = a1;
  *&v1[OBJC_IVAR___AISSafetySettingsFlowPresenter_configuration] = 0;
  v4.receiver = v1;
  v4.super_class = type metadata accessor for SafetySettingsFlowPresenter();
  return objc_msgSendSuper2(&v4, sel_init);
}

id SafetySettingsFlowPresenter.__allocating_init(with:configuration:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  swift_unknownObjectWeakInit();
  *&v5[OBJC_IVAR___AISSafetySettingsFlowPresenter_context] = a1;
  *&v5[OBJC_IVAR___AISSafetySettingsFlowPresenter_configuration] = a2;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, sel_init);
}

id SafetySettingsFlowPresenter.init(with:configuration:)(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR___AISSafetySettingsFlowPresenter_context] = a1;
  *&v2[OBJC_IVAR___AISSafetySettingsFlowPresenter_configuration] = a2;
  v6.receiver = v2;
  v6.super_class = type metadata accessor for SafetySettingsFlowPresenter();
  return objc_msgSendSuper2(&v6, sel_init);
}

void sub_2409FD030(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B420, &qword_240A30800);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v27 - v6;
  if (qword_27E50AFB0 != -1)
  {
    swift_once();
  }

  v8 = sub_240A2B00C();
  __swift_project_value_buffer(v8, qword_27E50EDE0);
  v9 = sub_240A2AFFC();
  v10 = sub_240A2C29C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_2408FE000, v9, v10, "Starting to present safety settings...", v11, 2u);
    MEMORY[0x245CCDDB0](v11, -1, -1);
  }

  v12 = a2;
  v13 = sub_240A2AFFC();
  v14 = sub_240A2C29C();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 138412290;
    *(v15 + 4) = v12;
    *v16 = v12;
    v17 = v12;
    _os_log_impl(&dword_2408FE000, v13, v14, "navController: %@", v15, 0xCu);
    sub_240919300(v16, &unk_27E50B730, &qword_240A30CE0);
    MEMORY[0x245CCDDB0](v16, -1, -1);
    MEMORY[0x245CCDDB0](v15, -1, -1);
  }

  v18 = [objc_allocWithZone(MEMORY[0x277D083B8]) initWithPresenter_];
  [v18 setPresentationType_];
  v19 = sub_2409FD690();
  v20 = sub_240A2C24C();
  (*(*(v20 - 8) + 56))(v7, 1, 1, v20);
  sub_240A2C21C();
  v21 = v3;
  v22 = v18;
  v23 = v19;
  v24 = sub_240A2C20C();
  v25 = swift_allocObject();
  v26 = MEMORY[0x277D85700];
  v25[2] = v24;
  v25[3] = v26;
  v25[4] = v21;
  v25[5] = v22;
  v25[6] = v23;
  sub_2409230D4(0, 0, v7, &unk_240A381B0, v25);
}

uint64_t sub_2409FD344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a4;
  v6[3] = sub_240A2C21C();
  v6[4] = sub_240A2C20C();
  v9 = swift_task_alloc();
  v6[5] = v9;
  *v9 = v6;
  v9[1] = sub_2409FD418;

  return sub_2409FE7CC(a5, a6);
}

uint64_t sub_2409FD418(uint64_t a1)
{
  *(*v1 + 48) = a1;

  v3 = sub_240A2C1BC();

  return MEMORY[0x2822009F8](sub_2409FD55C, v3, v2);
}

uint64_t sub_2409FD55C()
{
  v1 = *(v0 + 48);

  if ([v1 success])
  {
    sub_2409FDE48(1);
  }

  else
  {
    v2 = [*(v0 + 48) error];
    sub_2409FDFB4(v2);
  }

  v3 = *(v0 + 8);

  return v3();
}

id sub_2409FD690()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D083B0]) initWithEventType_];
  v1 = sub_2409FDB0C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C640, &unk_240A30D00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_240A305D0;
  *(inited + 32) = 0x5265674172657375;
  v3 = inited + 32;
  *(inited + 72) = MEMORY[0x277D83E88];
  *(inited + 40) = 0xEC00000065676E61;
  *(inited + 48) = v1;
  sub_240926374(inited);
  swift_setDeallocating();
  sub_240919300(v3, &qword_27E50BB00, &unk_240A38260);
  v4 = MEMORY[0x277D837D0];
  v5 = sub_240A2BE9C();

  [v0 setAdditionalParameters_];

  v6 = [v0 additionalParameters];
  if (v6)
  {
    v7 = v6;
    v8 = sub_240A2BEBC();

    sub_240A2AA1C();
    v27 = v4;
    *&v26 = sub_240A2AADC();
    *(&v26 + 1) = v9;
    sub_24091C780(&v26, v25);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_2409F6038(v25, 0x6574736575716572, 0xE900000000000072, isUniquelyReferenced_nonNull_native);
    if (v8)
    {
      v11 = sub_240A2BE9C();
    }

    else
    {
      v11 = 0;
    }

    [v0 setAdditionalParameters_];
  }

  else
  {
    [v0 setAdditionalParameters_];
  }

  if (qword_27E50AFB0 != -1)
  {
    swift_once();
  }

  v12 = sub_240A2B00C();
  __swift_project_value_buffer(v12, qword_27E50EDE0);
  v13 = v0;
  v14 = sub_240A2AFFC();
  v15 = sub_240A2C29C();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *&v26 = v17;
    *v16 = 136315138;
    v18 = [v13 additionalParameters];
    if (v18)
    {
      v19 = v18;
      v20 = sub_240A2BEBC();
    }

    else
    {
      v20 = 0;
    }

    *&v25[0] = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C980, &unk_240A33640);
    v21 = sub_240A2BF9C();
    v23 = sub_240925464(v21, v22, &v26);

    *(v16 + 4) = v23;
    _os_log_impl(&dword_2408FE000, v14, v15, "Created circle context with parameters: %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x245CCDDB0](v17, -1, -1);
    MEMORY[0x245CCDDB0](v16, -1, -1);
  }

  return v13;
}

uint64_t sub_2409FDA44(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_240916360;

  return sub_2409FD344(a1, v4, v5, v6, v7, v8);
}

id sub_2409FDB0C()
{
  v1 = *(v0 + OBJC_IVAR___AISSafetySettingsFlowPresenter_configuration);
  if (v1 && (v2 = OBJC_IVAR___AISAppleIDSignInConfiguration_userAgeRange, swift_beginAccess(), *&v1[v2]))
  {
    v3 = qword_27E50AFB0;
    v4 = v1;
    if (v3 != -1)
    {
      swift_once();
    }

    v5 = sub_240A2B00C();
    __swift_project_value_buffer(v5, qword_27E50EDE0);
    v6 = v4;
    v7 = sub_240A2AFFC();
    v8 = sub_240A2C29C();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 134217984;
      *(v9 + 4) = *&v1[v2];

      _os_log_impl(&dword_2408FE000, v7, v8, "Using userAgeRange from configuration: %lu", v9, 0xCu);
      MEMORY[0x245CCDDB0](v9, -1, -1);
    }

    else
    {

      v7 = v6;
    }

    v12 = *&v1[v2];
  }

  else
  {
    v10 = [objc_opt_self() sharedInstance];
    v11 = [v10 primaryAuthKitAccount];
    if (v11)
    {
      v6 = v11;
      v12 = [v10 userAgeRangeForAccount:v11];
      if (qword_27E50AFB0 != -1)
      {
        swift_once();
      }

      v13 = sub_240A2B00C();
      __swift_project_value_buffer(v13, qword_27E50EDE0);
      v14 = sub_240A2AFFC();
      v15 = sub_240A2C29C();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 134217984;
        *(v16 + 4) = v12;
        _os_log_impl(&dword_2408FE000, v14, v15, "Fetched userAgeRange from primary account: %lu", v16, 0xCu);
        MEMORY[0x245CCDDB0](v16, -1, -1);
      }
    }

    else
    {
      if (qword_27E50AFB0 != -1)
      {
        swift_once();
      }

      v17 = sub_240A2B00C();
      __swift_project_value_buffer(v17, qword_27E50EDE0);
      v18 = sub_240A2AFFC();
      v19 = sub_240A2C29C();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_2408FE000, v18, v19, "No primary account found for age range", v20, 2u);
        MEMORY[0x245CCDDB0](v20, -1, -1);
      }

      v12 = 0;
      v6 = v10;
    }
  }

  return v12;
}

void sub_2409FDE48(char a1)
{
  if (qword_27E50AFB0 != -1)
  {
    swift_once();
  }

  v2 = sub_240A2B00C();
  __swift_project_value_buffer(v2, qword_27E50EDE0);
  v3 = sub_240A2AFFC();
  v4 = sub_240A2C29C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_2408FE000, v3, v4, "Successfully configured safety settings", v5, 2u);
    MEMORY[0x245CCDDB0](v5, -1, -1);
  }

  sub_2409FEC40();
  v6 = [objc_allocWithZone(MEMORY[0x277CEDE78]) initWithIsSafetySettingsApplied_];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong safetySettingsDidFinishWithResult:v6 viewControllersToRemove:0 error:0];

    swift_unknownObjectRelease();
  }

  else
  {
  }
}