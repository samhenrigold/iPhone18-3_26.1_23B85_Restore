uint64_t View.onCameraCaptureEvent(isEnabled:primaryAction:secondaryAction:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = 0;
  v8[0] = a1;
  v8[1] = 0;
  v9 = a2;
  v10 = a3;
  v11 = 0;
  v12 = a4;
  v13 = a5;
  v14 = 0;
  return MEMORY[0x23EEA1570](v8, a6, &type metadata for OnCameraCaptureEventModifier, a7);
}

uint64_t View.onCameraCaptureEvent(isEnabled:action:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = 0;
  v6[0] = a1;
  v6[1] = 0;
  v7 = a2;
  v8 = a3;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = -1;
  return MEMORY[0x23EEA1570](v6, a4, &type metadata for OnCameraCaptureEventModifier, a5);
}

uint64_t View.onCameraCaptureEvent(isEnabled:defaultSoundDisabled:primaryAction:secondaryAction:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  return sub_23B68F548(a1, a2, a3, a4, a5, a6, a7, a8, 1, 1);
}

{
  return sub_23B68F548(a1, a2, a3, a4, a5, a6, a7, a8, 0, 0);
}

uint64_t View.onCameraCaptureEvent(isEnabled:defaultSoundDisabled:action:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return sub_23B68F5A8(a1, a2, a3, a4, a5, a6, 1);
}

{
  return sub_23B68F5A8(a1, a2, a3, a4, a5, a6, 0);
}

uint64_t sub_23B68F548(char a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, char a10)
{
  v18 = a9;
  v11[0] = a1;
  v11[1] = a2;
  v12 = a3;
  v13 = a4;
  v14 = a9;
  v15 = a5;
  v16 = a6;
  v17 = a10;
  return MEMORY[0x23EEA1570](v11, a7, &type metadata for OnCameraCaptureEventModifier, a8);
}

uint64_t sub_23B68F5A8(char a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v15 = a7;
  v8[0] = a1;
  v8[1] = a2;
  v9 = a3;
  v10 = a4;
  v11 = a7;
  v12 = 0;
  v13 = 0;
  v14 = -1;
  return MEMORY[0x23EEA1570](v8, a5, &type metadata for OnCameraCaptureEventModifier, a6);
}

uint64_t sub_23B68F5FC(void *a1)
{
  v1 = sub_23B6953B0();
  sub_23B68F660(v1, v2, v3);
  return swift_getWitnessTable();
}

unint64_t sub_23B68F660(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27E1764A8[0];
  if (!qword_27E1764A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27E1764A8);
  }

  return result;
}

uint64_t VideoPlayer.init(player:videoOverlay:)@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  MEMORY[0x28223BE20](a1);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for VideoPlayerConfiguration(0, v12, v13, v12);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v20 - v17;
  a2(v16);
  sub_23B692E54(v11, a1, a3, a4, v18);
  return (*(v15 + 32))(a5, v18, v14);
}

uint64_t VideoPlayer.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for VideoPlayerConfiguration(0, *(a1 + 16), *(a1 + 24), a4);
  MEMORY[0x28223BE20](v5);
  (*(v7 + 16))(&v9 - v6, v4);
  return sub_23B692CE0();
}

uint64_t sub_23B68F964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for VideoPlayerConfiguration(319, *(a1 + 16), *(a1 + 24), a4);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_23B68F9D4(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFE)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    if ((v17 + 1) >= 2)
    {
      return v17;
    }

    else
    {
      return 0;
    }
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

unsigned int *sub_23B68FB18(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFE)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (a2 > 0x7FFFFFFE)
    {
      *v18 = 0;
      *v18 = a2 - 0x7FFFFFFF;
    }

    else
    {
      *v18 = a2;
    }
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

uint64_t sub_23B68FCF4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for VideoPlayerBody(255, *a1, a1[1], a4);

  return swift_getWitnessTable();
}

uint64_t sub_23B68FD70(uint64_t a1)
{
  result = sub_23B695560();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_23B68FE10()
{
  v0 = sub_23B695340();
  __swift_allocate_value_buffer(v0, qword_27E176530);
  __swift_project_value_buffer(v0, qword_27E176530);
  return sub_23B695330();
}

uint64_t sub_23B68FE94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X3>)
{
  v32 = a2;
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = type metadata accessor for VideoPlayerConfiguration(0, v3, v4, a3);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v29 - v7;
  v10 = type metadata accessor for AVPlayerViewControllerView_AVPVC_Subclass(0, v3, v4, v9);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v29 - v15;
  v18 = type metadata accessor for AVPlayerViewControllerView(255, v3, v4, v17);
  v19 = sub_23B6953E0();
  v30 = *(v19 - 8);
  v31 = v19;
  MEMORY[0x28223BE20](v19);
  v21 = &v29 - v20;
  (*(v6 + 16))(v8, v29, v5);
  (*(v6 + 32))(v14, v8, v5);
  WitnessTable = swift_getWitnessTable();
  v23 = *(v11 + 16);
  v23(v16, v14, v10);
  v24 = *(v11 + 8);
  v24(v14, v10);
  v23(v14, v16, v10);
  v25 = swift_getWitnessTable();
  sub_23B690270(v14, v10, v18, WitnessTable, v25);
  v24(v14, v10);
  v24(v16, v10);
  v33 = WitnessTable;
  v34 = v25;
  v26 = v31;
  swift_getWitnessTable();
  v27 = v30;
  (*(v30 + 16))(v32, v21, v26);
  return (*(v27 + 8))(v21, v26);
}

uint64_t sub_23B690204@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>)
{
  v7 = type metadata accessor for VideoPlayerConfiguration(0, a2, a3, a5);
  v8 = *(*(v7 - 8) + 32);

  return v8(a4, a1, v7);
}

uint64_t sub_23B690270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_23B6953C0();
  MEMORY[0x28223BE20](v7);
  (*(*(a2 - 8) + 16))(&v10 - v8, a1, a2);
  swift_storeEnumTagMultiPayload();
  return sub_23B6953D0();
}

void sub_23B690384()
{
  v0 = sub_23B690528();
  [v0 setPlayer_];
}

uint64_t sub_23B6903E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28212EF70](a1, a2, a3, WitnessTable);
}

uint64_t sub_23B690464(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28212EF38](a1, a2, a3, WitnessTable);
}

void sub_23B6904E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable();
  sub_23B695440();
  __break(1u);
}

id sub_23B690528()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x70);
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = *(v0 + v1);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277CB85E0]) init];
    [v4 setAllowsEnteringFullScreen_];
    [v4 setAllowsPictureInPicturePlayback_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_23B6905E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = MEMORY[0x277D85000];
  v6 = type metadata accessor for VideoPlayerViewController(0, *((*MEMORY[0x277D85000] & *v4) + 0x50), *((*MEMORY[0x277D85000] & *v4) + 0x58), a4);
  v39.receiver = v4;
  v39.super_class = v6;
  objc_msgSendSuper2(&v39, sel_viewDidLoad);
  v7 = sub_23B690528();
  [v4 addChildViewController_];

  v8 = *((*v5 & *v4) + 0x70);
  v9 = [*(v4 + v8) view];
  if (!v9)
  {
    if (qword_27E1764A0 != -1)
    {
      swift_once();
    }

    v36 = sub_23B695340();
    __swift_project_value_buffer(v36, qword_27E176530);
    v10 = sub_23B695320();
    v37 = sub_23B695550();
    if (os_log_type_enabled(v10, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_23B68E000, v10, v37, "AVPlayerViewController's view is missing!", v38, 2u);
      MEMORY[0x23EEA1950](v38, -1, -1);
    }

    goto LABEL_12;
  }

  v10 = v9;
  v11 = [v4 view];
  if (!v11)
  {
    __break(1u);
    goto LABEL_14;
  }

  v12 = v11;
  [v11 addSubview_];

  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1766C8, &qword_23B695B58);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_23B695A20;
  v14 = [v10 leadingAnchor];
  v15 = [v4 view];
  if (!v15)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v16 = v15;
  v17 = [v15 leadingAnchor];

  v18 = [v14 constraintEqualToAnchor_];
  *(v13 + 32) = v18;
  v19 = [v10 topAnchor];
  v20 = [v4 view];
  if (!v20)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21 = v20;
  v22 = [v20 topAnchor];

  v23 = [v19 constraintEqualToAnchor_];
  *(v13 + 40) = v23;
  v24 = [v10 trailingAnchor];
  v25 = [v4 view];
  if (!v25)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v26 = v25;
  v27 = [v25 trailingAnchor];

  v28 = [v24 constraintEqualToAnchor_];
  *(v13 + 48) = v28;
  v29 = [v10 bottomAnchor];
  v30 = [v4 view];
  if (v30)
  {
    v31 = v30;
    v32 = objc_opt_self();
    v33 = [v31 bottomAnchor];

    v34 = [v29 constraintEqualToAnchor_];
    *(v13 + 56) = v34;
    sub_23B692B0C();
    v35 = sub_23B6954F0();

    [v32 activateConstraints_];

    [*(v4 + v8) didMoveToParentViewController_];
    sub_23B690AA4();
LABEL_12:

    return;
  }

LABEL_17:
  __break(1u);
}

void sub_23B690A5C(void *a1)
{
  v4 = a1;
  sub_23B6905E0(v4, v1, v2, v3);
}

uint64_t sub_23B690AA4()
{
  v1 = v0;
  v2 = *v0;
  v3 = *MEMORY[0x277D85000];
  v4 = *((*MEMORY[0x277D85000] & v2) + 0x50);
  v5 = sub_23B695560();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v37 - v8;
  v10 = *(v4 - 8);
  v11 = MEMORY[0x28223BE20](v7);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v11);
  v16 = &v37 - v15;
  if (!*(v1 + *((v3 & v2) + 0x60)))
  {
    v17 = result;
    sub_23B690524();
    if ((*(v10 + 48))(v9, 1, v4) == 1)
    {
      return (*(v6 + 8))(v9, v17);
    }

    else
    {
      (*(v10 + 32))(v16, v9, v4);
      v18 = sub_23B690528();
      v19 = [v18 contentOverlayView];

      if (v19)
      {
        sub_23B6953A0();
        (*(v10 + 16))(v13, v16, v4);
        v20 = sub_23B695380();
        v21 = [objc_opt_self() clearColor];
        [v20 setBackgroundColor_];

        v22 = v20;
        [v19 addSubview_];
        [v22 setTranslatesAutoresizingMaskIntoConstraints_];
        v23 = [v22 centerXAnchor];
        v24 = [v19 centerXAnchor];
        v25 = [v23 constraintEqualToAnchor_];

        [v25 setActive_];
        v26 = [v22 centerYAnchor];

        v27 = [v19 centerYAnchor];
        v28 = [v26 constraintEqualToAnchor_];

        [v28 setActive_];
        v29 = [v22 widthAnchor];

        v30 = [v19 widthAnchor];
        v31 = [v29 constraintEqualToAnchor_];

        [v31 setActive_];
        v32 = [v22 heightAnchor];

        v33 = [v19 heightAnchor];
        v34 = [v32 constraintEqualToAnchor_];

        [v34 setActive_];
        v35 = *((*MEMORY[0x277D85000] & *v1) + 0x60);
        v36 = *(v1 + v35);
        *(v1 + v35) = v22;
      }

      return (*(v10 + 8))(v16, v4);
    }
  }

  return result;
}

id sub_23B690FC0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *v3;
  v7 = MEMORY[0x277D85000];
  v8 = *MEMORY[0x277D85000];
  v9 = *MEMORY[0x277D85000] & *v3;
  *&v3[*((v8 & v6) + 0x60)] = 0;
  v10 = *((v8 & v6) + 0x50);
  (*(*(v10 - 8) + 56))(&v3[*((*v7 & *v3) + 0x68)], 1, 1, v10);
  *&v3[*((*v7 & *v3) + 0x70)] = 0;
  if (a2)
  {
    v12 = sub_23B6954C0();
  }

  else
  {
    v12 = 0;
  }

  v13 = type metadata accessor for VideoPlayerViewController(0, v10, *(v9 + 88), v11);
  v16.receiver = v3;
  v16.super_class = v13;
  v14 = objc_msgSendSuper2(&v16, sel_initWithNibName_bundle_, v12, a3);

  return v14;
}

id sub_23B691158(void *a1)
{
  v3 = MEMORY[0x277D85000];
  v4 = *v1;
  v5 = *MEMORY[0x277D85000];
  *&v1[*((*MEMORY[0x277D85000] & *v1) + 0x60)] = 0;
  v6 = *((v5 & v4) + 0x50);
  (*(*(v6 - 8) + 56))(&v1[*((*v3 & *v1) + 0x68)], 1, 1, v6);
  *&v1[*((*v3 & *v1) + 0x70)] = 0;
  v8 = type metadata accessor for VideoPlayerViewController(0, v6, *((v5 & v4) + 0x58), v7);
  v11.receiver = v1;
  v11.super_class = v8;
  v9 = objc_msgSendSuper2(&v11, sel_initWithCoder_, a1);

  if (v9)
  {
  }

  return v9;
}

void sub_23B6912D4(char *a1)
{
  v2 = MEMORY[0x277D85000];

  v3 = *((*v2 & *a1) + 0x68);
  v4 = sub_23B695560();
  (*(*(v4 - 8) + 8))(&a1[v3], v4);
  v5 = *&a1[*((*v2 & *a1) + 0x70)];
}

uint64_t sub_23B6913E0(uint64_t a1)
{
  result = sub_23B695560();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_23B6914D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28212EF70](a1, a2, a3, WitnessTable);
}

uint64_t sub_23B691554(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28212EF38](a1, a2, a3, WitnessTable);
}

void sub_23B6915D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable();
  sub_23B695440();
  __break(1u);
}

uint64_t sub_23B691640(void (*a1)(void))
{
  v20 = a1;
  v2 = *v1;
  v3 = *MEMORY[0x277D85000];
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x50);
  v5 = sub_23B695560();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v20 - v8;
  v10 = *(v4 - 8);
  v11 = MEMORY[0x28223BE20](v7);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v20 - v14;
  v16 = *((v3 & v2) + 0x68);
  swift_beginAccess();
  (*(v6 + 16))(v9, &v1[v16], v5);
  if ((*(v10 + 48))(v9, 1, v4) == 1)
  {
    return (*(v6 + 8))(v9, v5);
  }

  (*(v10 + 32))(v15, v9, v4);
  if ([v1 isViewLoaded])
  {
    v20();
  }

  v18 = *&v1[*((*MEMORY[0x277D85000] & *v1) + 0x60)];
  if (v18)
  {
    (*(v10 + 16))(v13, v15, v4);
    v19 = v18;
    sub_23B695390();
  }

  return (*(v10 + 8))(v15, v4);
}

uint64_t sub_23B6918F4@<X0>(uint64_t a1@<X8>)
{
  v3 = *((*MEMORY[0x277D85000] & *v1) + 0x68);
  swift_beginAccess();
  v4 = sub_23B695560();
  return (*(*(v4 - 8) + 16))(a1, &v1[v3], v4);
}

uint64_t sub_23B6919B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for VideoPlayerViewController_AVPVC_Subclass(0, *((*MEMORY[0x277D85000] & *v4) + 0x50), *((*MEMORY[0x277D85000] & *v4) + 0x58), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  objc_msgSendSuper2(&v7, sel_viewDidLoad);
  return sub_23B691A70();
}

void sub_23B691A28(void *a1)
{
  v4 = a1;
  sub_23B6919B4(v4, v1, v2, v3);
}

uint64_t sub_23B691A70()
{
  v1 = v0;
  v2 = *v0;
  v3 = *MEMORY[0x277D85000];
  v4 = *((*MEMORY[0x277D85000] & v2) + 0x50);
  v5 = sub_23B695560();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v37 - v8;
  v10 = *(v4 - 8);
  v11 = MEMORY[0x28223BE20](v7);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v11);
  v16 = &v37 - v15;
  if (!*(v1 + *((v3 & v2) + 0x60)))
  {
    v17 = result;
    sub_23B690524();
    if ((*(v10 + 48))(v9, 1, v4) == 1)
    {
      return (*(v6 + 8))(v9, v17);
    }

    else
    {
      (*(v10 + 32))(v16, v9, v4);
      v18 = [v1 contentOverlayView];
      if (v18)
      {
        v19 = v18;
        sub_23B6953A0();
        (*(v10 + 16))(v13, v16, v4);
        v20 = sub_23B695380();
        v21 = [objc_opt_self() clearColor];
        [v20 setBackgroundColor_];

        v22 = v20;
        [v19 addSubview_];
        [v22 setTranslatesAutoresizingMaskIntoConstraints_];
        v23 = [v22 centerXAnchor];
        v24 = [v19 centerXAnchor];
        v25 = [v23 constraintEqualToAnchor_];

        [v25 setActive_];
        v26 = [v22 centerYAnchor];

        v27 = [v19 centerYAnchor];
        v28 = [v26 constraintEqualToAnchor_];

        [v28 setActive_];
        v29 = [v22 widthAnchor];

        v30 = [v19 widthAnchor];
        v31 = [v29 constraintEqualToAnchor_];

        [v31 setActive_];
        v32 = [v22 heightAnchor];

        v33 = [v19 heightAnchor];
        v34 = [v32 constraintEqualToAnchor_];

        [v34 setActive_];
        v35 = *((*MEMORY[0x277D85000] & *v1) + 0x60);
        v36 = *(v1 + v35);
        *(v1 + v35) = v22;
      }

      return (*(v10 + 8))(v16, v4);
    }
  }

  return result;
}

id sub_23B691F80(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *v3;
  v7 = MEMORY[0x277D85000];
  v8 = *MEMORY[0x277D85000];
  v9 = *MEMORY[0x277D85000] & *v3;
  *&v3[*((v8 & v6) + 0x60)] = 0;
  v10 = *((v8 & v6) + 0x50);
  (*(*(v10 - 8) + 56))(&v3[*((*v7 & *v3) + 0x68)], 1, 1, v10);
  if (a2)
  {
    v12 = sub_23B6954C0();
  }

  else
  {
    v12 = 0;
  }

  v13 = type metadata accessor for VideoPlayerViewController_AVPVC_Subclass(0, v10, *(v9 + 88), v11);
  v16.receiver = v3;
  v16.super_class = v13;
  v14 = objc_msgSendSuper2(&v16, sel_initWithNibName_bundle_, v12, a3);

  return v14;
}

uint64_t sub_23B6920F0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t, void *))
{
  if (a3)
  {
    v7 = sub_23B6954D0();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v10 = a4;
  return a5(v7, v9, a4);
}

id sub_23B692164(void *a1)
{
  v3 = MEMORY[0x277D85000];
  v4 = *v1;
  v5 = *MEMORY[0x277D85000];
  *&v1[*((*MEMORY[0x277D85000] & *v1) + 0x60)] = 0;
  v6 = *((v5 & v4) + 0x50);
  (*(*(v6 - 8) + 56))(&v1[*((*v3 & *v1) + 0x68)], 1, 1, v6);
  v8 = type metadata accessor for VideoPlayerViewController_AVPVC_Subclass(0, v6, *((v5 & v4) + 0x58), v7);
  v11.receiver = v1;
  v11.super_class = v8;
  v9 = objc_msgSendSuper2(&v11, sel_initWithCoder_, a1);

  if (v9)
  {
  }

  return v9;
}

id sub_23B6922A8(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = sub_23B69298C(v3);

  return v4;
}

id sub_23B6922F8(uint64_t (*a1)(void, void, void))
{
  v2 = a1(0, *((*MEMORY[0x277D85000] & *v1) + 0x50), *((*MEMORY[0x277D85000] & *v1) + 0x58));
  v4.receiver = v1;
  v4.super_class = v2;
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_23B692370(char *a1)
{
  v2 = MEMORY[0x277D85000];

  v3 = *((*v2 & *a1) + 0x68);
  v4 = sub_23B695560();
  v5 = *(*(v4 - 8) + 8);

  return v5(&a1[v3], v4);
}

id sub_23B6924DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for VideoPlayerViewController(0, a1, a2, a4);
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v4 init];
}

uint64_t sub_23B692520(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = sub_23B695560();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  v10 = *(v2 + *(type metadata accessor for VideoPlayerConfiguration(0, v4, *(a2 + 24), v9) + 36));
  v11 = sub_23B690528();
  [v11 setPlayer_];

  v12 = *(v4 - 8);
  (*(v12 + 16))(v8, v2, v4);
  (*(v12 + 56))(v8, 0, 1, v4);
  sub_23B692734(v8, sub_23B690AA4);
  return (*(v6 + 8))(v8, v5);
}

id sub_23B6926BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for VideoPlayerViewController_AVPVC_Subclass(0, a1, a2, a4);
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v4 setAllowsEnteringFullScreen_];
  [v4 setAllowsPictureInPicturePlayback_];

  return v4;
}

uint64_t sub_23B692734(uint64_t a1, void (*a2)(void))
{
  v5 = *((*MEMORY[0x277D85000] & *v2) + 0x68);
  swift_beginAccess();
  v6 = sub_23B695560();
  (*(*(v6 - 8) + 24))(&v2[v5], a1, v6);
  swift_endAccess();
  return sub_23B691640(a2);
}

uint64_t sub_23B692808(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a2 + 16);
  v7 = sub_23B695560();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - v9;
  [a1 setPlayer_];
  v12 = *(v6 - 8);
  (*(v12 + 16))(v10, v3, v6);
  (*(v12 + 56))(v10, 0, 1, v6);
  sub_23B692734(v10, sub_23B691A70);
  return (*(v8 + 8))(v10, v7);
}

id sub_23B69298C(uint64_t a1)
{
  v3 = MEMORY[0x277D85000];
  v4 = *v1;
  v5 = *MEMORY[0x277D85000];
  *&v1[*((*MEMORY[0x277D85000] & *v1) + 0x60)] = 0;
  v6 = *((v5 & v4) + 0x50);
  (*(*(v6 - 8) + 56))(&v1[*((*v3 & *v1) + 0x68)], 1, 1, v6);
  v8 = type metadata accessor for VideoPlayerViewController_AVPVC_Subclass(0, v6, *((v5 & v4) + 0x58), v7);
  v10.receiver = v1;
  v10.super_class = v8;
  return objc_msgSendSuper2(&v10, sel_initWithPlayerLayerView_, a1);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_23B692B0C()
{
  result = qword_27E1766D0[0];
  if (!qword_27E1766D0[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_27E1766D0);
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_23B692BC8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[1];
  type metadata accessor for AVPlayerViewControllerView_AVPVC_Subclass(255, *a1, v5, a4);
  type metadata accessor for AVPlayerViewControllerView(255, v4, v5, v6);
  sub_23B6953E0();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

void sub_23B692D10(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_23B692DB0(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23B692DB0(uint64_t a1)
{
  if (!qword_27E176858)
  {
    sub_23B692E08();
    v1 = sub_23B695560();
    if (!v2)
    {
      atomic_store(v1, &qword_27E176858);
    }
  }
}

unint64_t sub_23B692E08()
{
  result = qword_27E176860;
  if (!qword_27E176860)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E176860);
  }

  return result;
}

uint64_t sub_23B692E54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 32))(a5, a1);
  result = type metadata accessor for VideoPlayerConfiguration(0, a3, a4, v9);
  *(a5 + *(result + 36)) = a2;
  return result;
}

uint64_t get_enum_tag_for_layout_string_14_AVKit_SwiftUI13CaptureActionOSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_23B692F64()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E176868, &unk_23B695F10);
  v0 = sub_23B693014();
  sub_23B6930C0(v0, v1, v2);
  return sub_23B6954A0();
}

unint64_t sub_23B693014()
{
  result = qword_27E176870;
  if (!qword_27E176870)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E176868, &unk_23B695F10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E176870);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_23B6930C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27E176878;
  if (!qword_27E176878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E176878);
  }

  return result;
}

uint64_t sub_23B693114(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[49])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_23B693168(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_23B6931E0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_23B693228(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_23B69328C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E176868, &unk_23B695F10);
  v3 = sub_23B693014();
  sub_23B6930C0(v3, v0, v1);
  return swift_getOpaqueTypeConformance2();
}

id sub_23B693304()
{
  v1 = v0;
  v21 = *(v0 + 32);
  v22 = *(v0 + 48);
  if (v22 == 255)
  {
    v7 = *(v0 + 8);
    v6 = *(v0 + 16);
    v8 = v1[24];
    v9 = v1[1];
    v10 = objc_allocWithZone(MEMORY[0x277CB8598]);
    v11 = swift_allocObject();
    *(v11 + 16) = v7;
    *(v11 + 24) = v6;
    *(v11 + 32) = v9;
    if (v8 == 1)
    {
      v19 = sub_23B693B94;
      v20 = v11;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      v17 = sub_23B693A34;
      v18 = &block_descriptor_21;
    }

    else
    {
      v19 = sub_23B695300;
      v20 = v11;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      v17 = sub_23B693A34;
      v18 = &block_descriptor;
    }

    v12 = _Block_copy(&aBlock);
    sub_23B693AB4(v7, v6);

    v5 = [v10 initWithEventHandler_];
    sub_23B693ABC(v7, v6);
    _Block_release(v12);
    goto LABEL_11;
  }

  v2 = v21;
  aBlock = *(v0 + 8);
  LOBYTE(v17) = *(v0 + 24);
  v3 = aBlock;
  if (v17)
  {
    if (v22)
    {
      sub_23B693BD0();
      v4 = *(v0 + 1);
      sub_23B694C8C(&v21, v15, &qword_27E176888, &qword_23B696008);
      sub_23B693C1C(&aBlock, v15);
      v5 = sub_23B693828(v4, v3, *(&v3 + 1), v2, *(&v2 + 1));
LABEL_11:
      [v5 setEnabled_];
      [objc_opt_self() setDefaultCaptureSoundDisabled_];
      return v5;
    }
  }

  else if ((v22 & 1) == 0)
  {
    sub_23B693BD0();
    v13 = *(v0 + 1);
    sub_23B694C8C(&v21, v15, &qword_27E176888, &qword_23B696008);
    sub_23B693C1C(&aBlock, v15);
    v5 = sub_23B693668(v13, v3, *(&v3 + 1), v2, *(&v2 + 1));
    goto LABEL_11;
  }

  result = sub_23B695570();
  __break(1u);
  return result;
}

id sub_23B693668(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;
  *(v11 + 32) = a1;
  v21 = sub_23B693C54;
  v22 = v11;
  v17 = MEMORY[0x277D85DD0];
  v18 = 1107296256;
  v19 = sub_23B693A34;
  v20 = &block_descriptor_27;
  v12 = _Block_copy(&v17);

  v13 = swift_allocObject();
  *(v13 + 16) = a4;
  *(v13 + 24) = a5;
  v21 = sub_23B693CAC;
  v22 = v13;
  v17 = MEMORY[0x277D85DD0];
  v18 = 1107296256;
  v19 = sub_23B693A34;
  v20 = &block_descriptor_33;
  v14 = _Block_copy(&v17);

  v15 = [v10 initWithPrimaryEventHandler:v12 secondaryEventHandler:v14];

  _Block_release(v14);
  _Block_release(v12);
  return v15;
}

id sub_23B693828(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;
  *(v11 + 32) = a1;
  v21 = sub_23B694A84;
  v22 = v11;
  v17 = MEMORY[0x277D85DD0];
  v18 = 1107296256;
  v19 = sub_23B693A34;
  v20 = &block_descriptor_39;
  v12 = _Block_copy(&v17);

  v13 = swift_allocObject();
  *(v13 + 16) = a4;
  *(v13 + 24) = a5;
  v21 = sub_23B694AC0;
  v22 = v13;
  v17 = MEMORY[0x277D85DD0];
  v18 = 1107296256;
  v19 = sub_23B693A34;
  v20 = &block_descriptor_45;
  v14 = _Block_copy(&v17);

  v15 = [v10 initWithPrimaryEventHandler:v12 secondaryEventHandler:v14];

  _Block_release(v14);
  _Block_release(v12);
  return v15;
}

uint64_t sub_23B6939FC()
{

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

void sub_23B693A34(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_23B693AC4(void *a1, void (*a2)(void), uint64_t a3, char a4)
{
  a2();
  if ((a4 & 1) == 0 && [a1 phase] == 1 && (objc_msgSend(a1, sel_didPlaySound) & 1) == 0)
  {
    v6 = [objc_opt_self() beginVideoRecordingSound];
    [a1 playSound_];
  }
}

unint64_t sub_23B693BD0()
{
  result = qword_27E176880;
  if (!qword_27E176880)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E176880);
  }

  return result;
}

uint64_t sub_23B693C74()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23B693CD4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 48) = a7;
  *(v7 + 16) = a6;
  *(v7 + 24) = sub_23B695520();
  *(v7 + 32) = sub_23B695510();
  v12 = (a4 + *a4);
  v10 = swift_task_alloc();
  *(v7 + 40) = v10;
  *v10 = v7;
  v10[1] = sub_23B693DF8;

  return v12(a6);
}

uint64_t sub_23B693DF8()
{

  v1 = sub_23B695500();

  return MEMORY[0x2822009F8](sub_23B695304, v1, v0);
}

uint64_t sub_23B693F34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E176890, &qword_23B696010);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_23B694C8C(a3, v25 - v10, &unk_27E176890, &qword_23B696010);
  v12 = sub_23B695540();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_23B694CF4(v11);
  }

  else
  {
    sub_23B695530();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_23B695500();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_23B6954E0() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_23B694CF4(a3);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_23B694CF4(a3);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_23B694204(void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E176890, &qword_23B696010);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v20 - v12;
  v14 = sub_23B695540();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  sub_23B695520();

  v15 = a1;
  v16 = sub_23B695510();
  v17 = swift_allocObject();
  v18 = MEMORY[0x277D85700];
  *(v17 + 16) = v16;
  *(v17 + 24) = v18;
  *(v17 + 32) = a2;
  *(v17 + 40) = a3;
  *(v17 + 48) = v15;
  *(v17 + 56) = a4;
  sub_23B693F34(0, 0, v13, a6, v17);
}

uint64_t sub_23B694354(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 48) = a7;
  *(v7 + 16) = a6;
  *(v7 + 24) = sub_23B695520();
  *(v7 + 32) = sub_23B695510();
  v12 = (a4 + *a4);
  v10 = swift_task_alloc();
  *(v7 + 40) = v10;
  *v10 = v7;
  v10[1] = sub_23B694478;

  return v12(a6);
}

uint64_t sub_23B694478()
{

  v1 = sub_23B695500();

  return MEMORY[0x2822009F8](sub_23B6945B4, v1, v0);
}

uint64_t sub_23B6945B4()
{
  v1 = *(v0 + 48);

  if ((v1 & 1) == 0 && [*(v0 + 16) phase] == 1 && (objc_msgSend(*(v0 + 16), sel_didPlaySound) & 1) == 0)
  {
    v2 = *(v0 + 16);
    v3 = [objc_opt_self() beginVideoRecordingSound];
    [v2 playSound_];
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_23B694688(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E176890, &qword_23B696010);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15 - v7;
  v9 = sub_23B695540();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_23B695520();

  v10 = a1;
  v11 = sub_23B695510();
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  v12[2] = v11;
  v12[3] = v13;
  v12[4] = a2;
  v12[5] = a3;
  v12[6] = v10;
  sub_23B693F34(0, 0, v8, &unk_23B696020, v12);
}

uint64_t sub_23B6947CC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v6[2] = sub_23B695520();
  v6[3] = sub_23B695510();
  v11 = (a4 + *a4);
  v9 = swift_task_alloc();
  v6[4] = v9;
  *v9 = v6;
  v9[1] = sub_23B6948E8;

  return v11(a6);
}

uint64_t sub_23B6948E8()
{

  v1 = sub_23B695500();

  return MEMORY[0x2822009F8](sub_23B694A24, v1, v0);
}

uint64_t sub_23B694A24()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23B694AD0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_23B694B98;

  return sub_23B6947CC(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_23B694B98()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_23B694C8C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_23B694CF4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E176890, &qword_23B696010);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23B694D5C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_23B694E54;

  return v6(a1);
}

uint64_t sub_23B694E54()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_23B694F4C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23B6952FC;

  return sub_23B694D5C(a1, v4);
}

uint64_t sub_23B695004(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23B694B98;

  return sub_23B694D5C(a1, v4);
}

uint64_t sub_23B6950C4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_23B6952FC;

  return sub_23B694354(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t objectdestroy_47Tm(uint64_t a1)
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t sub_23B6951F0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_23B6952FC;

  return sub_23B693CD4(a1, v4, v5, v6, v7, v8, v9);
}