void sub_237166164(uint64_t a1)
{
  v4 = v1;
  v6 = OBJC_IVAR____TtC12CoreAudioKit17CACompressionView_dataSource;
  swift_beginAccess();
  sub_237167B14(v1 + v6, v33);
  if (!v34)
  {
    sub_237120D04(v33, &qword_27DE951F0, &qword_23719BF60);
    return;
  }

  sub_237120C18(v33, v30);
  sub_237120D04(v33, &qword_27DE951F0, &qword_23719BF60);
  v7 = v31;
  v8 = v32;
  __swift_project_boxed_opaque_existential_0(v30, v31);
  v9 = (*(*(*(v8 + 8) + 8) + 8))(a1, v7);
  __swift_destroy_boxed_opaque_existential_0(v30);
  v10 = sub_237163588(a1, v9);
  v12 = v11;
  v13 = objc_opt_self();
  [v13 begin];
  [v13 setDisableActions_];
  v14 = OBJC_IVAR____TtC12CoreAudioKit17CACompressionView_activeGuides;
  swift_beginAccess();
  v15 = *(v1 + v14);
  if ((v15 & 0xC000000000000001) != 0)
  {

    v16 = MEMORY[0x2383C62A0](0, v15);
  }

  else
  {
    if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_34:

      v23 = MEMORY[0x2383C62A0](1, v15);

LABEL_20:
      v24 = [v23 v2[304]];

      if (v24)
      {
        goto LABEL_31;
      }

      [*(v4 + OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_graphLayer) frame];
      v3 = v25;
      v16 = *(v4 + v14);
      if ((v16 & 0xC000000000000001) == 0)
      {
        if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
        {
          __break(1u);
LABEL_43:
          __break(1u);
          return;
        }

        v26 = *(v16 + 40);
LABEL_24:
        [v26 setFrame_];

        v20 = *(v4 + v14);
        if ((v20 & 0xC000000000000001) != 0)
        {
          goto LABEL_41;
        }

        if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
        {
          v27 = *(v20 + 40);
          goto LABEL_27;
        }

        goto LABEL_43;
      }

LABEL_39:

      v26 = MEMORY[0x2383C62A0](1, v16);

      goto LABEL_24;
    }

    v16 = *(v15 + 32);
  }

  v2 = &selRef_effectiveContentSize;
  v17 = [v16 isHidden];

  if (v17)
  {
    goto LABEL_17;
  }

  [*(v4 + OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_graphLayer) frame];
  v3 = v18;
  v16 = *(v4 + v14);
  if ((v16 & 0xC000000000000001) != 0)
  {
    goto LABEL_36;
  }

  if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_39;
  }

  v19 = *(v16 + 32);
  while (1)
  {
    [v19 setFrame_];

    v20 = *(v4 + v14);
    if ((v20 & 0xC000000000000001) != 0)
    {

      v16 = MEMORY[0x2383C62A0](0, v20);

      goto LABEL_12;
    }

    if (!*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      break;
    }

    v16 = *(v20 + 32);
LABEL_12:
    sub_237167B14(v4 + v6, v33);
    if (v34)
    {
      sub_237120C18(v33, v30);
      sub_237120D04(v33, &qword_27DE951F0, &qword_23719BF60);
      __swift_project_boxed_opaque_existential_0(v30, v31);
      v21 = sub_23715AB34(a1);
      v22 = [v21 CGColor];

      __swift_destroy_boxed_opaque_existential_0(v30);
    }

    else
    {
      sub_237120D04(v33, &qword_27DE951F0, &qword_23719BF60);
      v22 = 0;
    }

    [v16 setBackgroundColor_];

LABEL_17:
    v15 = *(v4 + v14);
    if ((v15 & 0xC000000000000001) != 0)
    {
      goto LABEL_34;
    }

    if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
    {
      v23 = *(v15 + 40);
      goto LABEL_20;
    }

    __break(1u);
LABEL_36:

    v19 = MEMORY[0x2383C62A0](0, v16);
  }

  __break(1u);
LABEL_41:

  v27 = MEMORY[0x2383C62A0](1, v20);

LABEL_27:
  sub_237167B14(v4 + v6, v33);
  if (v34)
  {
    sub_237120C18(v33, v30);
    sub_237120D04(v33, &qword_27DE951F0, &qword_23719BF60);
    __swift_project_boxed_opaque_existential_0(v30, v31);
    v28 = sub_23715AB34(a1);
    v29 = [v28 CGColor];

    __swift_destroy_boxed_opaque_existential_0(v30);
  }

  else
  {
    sub_237120D04(v33, &qword_27DE951F0, &qword_23719BF60);
    v29 = 0;
  }

  [v27 setBackgroundColor_];

LABEL_31:
  [v13 commit];
}

void sub_2371666E0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_237115094(0, &qword_27DE94790, 0x277D75C68);
  sub_237114F70();
  v6 = sub_2371966CC();
  v56.receiver = v3;
  v56.super_class = type metadata accessor for CACompressionView();
  objc_msgSendSuper2(&v56, sel_touchesBegan_withEvent_, v6, a2);

  v7 = sub_237181180(a1);
  if (!v7)
  {
    return;
  }

  v8 = v7;
  [v7 locationInView_];
  v10 = v9;
  v12 = v11;
  v13 = OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_inactiveAreas;
  swift_beginAccess();
  v14 = *&v3[v13];
  if (!*(v14 + 16))
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v15 = sub_2371905D4(0x6576697463616E69, 0xED00006165726120);
  if ((v16 & 1) == 0)
  {
    goto LABEL_25;
  }

  v52 = v8;
  v17 = *(*(v14 + 56) + 8 * v15);

  objc_opt_self();
  v51 = v17;
  [swift_dynamicCastObjCClassUnconditional() setHidden_];
  v18 = *&v3[OBJC_IVAR____TtC12CoreAudioKit17CACompressionView_activeControl];
  v50 = OBJC_IVAR____TtC12CoreAudioKit17CACompressionView_activeControl;
  *&v3[OBJC_IVAR____TtC12CoreAudioKit17CACompressionView_activeControl] = 0;

  v19 = OBJC_IVAR____TtC12CoreAudioKit17CACompressionView_controlList;
  swift_beginAccess();
  v20 = *(*&v3[v19] + 16);
  if (v20)
  {
    v21 = -v20;
    v22 = 4;
    while (1)
    {
      v23 = v22 - 4;
      v24 = *&v3[v19];
      if ((v22 - 4) >= *(v24 + 16))
      {
        __break(1u);
LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      v25 = *(v24 + 8 * v22);
      if (!*(v25 + 16))
      {
        goto LABEL_22;
      }

      v26 = v3;

      v27 = sub_2371905D4(0x6C6F72746E6F63, 0xE700000000000000);
      v29 = v28;

      if ((v29 & 1) == 0)
      {
        goto LABEL_23;
      }

      sub_237114D0C(*(v25 + 56) + 32 * v27, v54);

      sub_23711BDA4(v54, v55);
      sub_237115094(0, &qword_27DE95590, 0x277CD9ED0);
      swift_dynamicCast();
      [v53 frame];
      v57.x = v10;
      v57.y = v12;
      if (CGRectContainsPoint(v58, v57))
      {
        break;
      }

      ++v22;
      v3 = v26;
      if (v21 + v22 == 4)
      {
        goto LABEL_19;
      }
    }

    v30 = *&v26[v19];
    if (v23 >= *(v30 + 16))
    {
      goto LABEL_26;
    }

    v31 = *(v30 + 8 * v22);
    if (*(v31 + 16))
    {

      v32 = sub_2371905D4(0x726F6C6F63, 0xE500000000000000);
      v34 = v33;

      if ((v34 & 1) == 0)
      {
        goto LABEL_28;
      }

      sub_237114D0C(*(v31 + 56) + 32 * v32, v54);

      sub_23711BDA4(v54, v55);
      sub_237115094(0, &qword_27DE94788, 0x277D75348);
      swift_dynamicCast();
      v35 = [v53 colorWithAlphaComponent_];
      v36 = [v35 CGColor];

      [v53 setBackgroundColor_];
      v37 = *&v26[v50];
      *&v26[v50] = v53;
      v38 = v53;

      v39 = sub_23719653C();
      v40 = *&v26[v19];
      if (v23 < *(v40 + 16))
      {
        v41 = *(v40 + 8 * v22);
        if (!*(v41 + 16))
        {
          goto LABEL_30;
        }

        v42 = v39;

        v43 = sub_2371905D4(0x6D61726170, 0xE500000000000000);
        v45 = v44;

        if (v45)
        {
          sub_237114D0C(*(v41 + 56) + 32 * v43, v54);

          sub_23711BDA4(v54, v55);
          v46 = MEMORY[0x277D84CC0];
          swift_dynamicCast();
          sub_237165AD8(v53);
          v47 = [objc_opt_self() defaultCenter];
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE94E30, &unk_23719B100);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_23719B020;
          *&v55[0] = 0x6D61726170;
          *(&v55[0] + 1) = 0xE500000000000000;
          sub_23719690C();
          *(inited + 96) = v46;
          *(inited + 72) = v53;
          sub_237119F04(inited);
          swift_setDeallocating();
          sub_237120D04(inited + 32, &qword_27DE948B0, &unk_23719B510);
          v49 = sub_23719651C();

          [v47 postNotificationName:v42 object:v26 userInfo:v49];

          goto LABEL_19;
        }

        goto LABEL_31;
      }

LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
      return;
    }

LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

LABEL_19:
}

void sub_237166D00(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_237115094(0, &qword_27DE94790, 0x277D75C68);
  sub_237114F70();
  v6 = sub_2371966CC();
  v47.receiver = v3;
  v47.super_class = type metadata accessor for CACompressionView();
  objc_msgSendSuper2(&v47, sel_touchesMoved_withEvent_, v6, a2);

  v7 = sub_237181180(a1);
  if (v7)
  {
    v8 = v7;
    [v7 locationInView_];
    v11 = *&v3[OBJC_IVAR____TtC12CoreAudioKit17CACompressionView_activeControl];
    if (v11)
    {
      v12 = v10;
      v13 = v9;
      v14 = v11;
      sub_237163370(v14);
      if ((v15 & 0x100000000) != 0)
      {
      }

      else
      {
        v16 = v15;
        v17 = OBJC_IVAR____TtC12CoreAudioKit17CACompressionView_dataSource;
        swift_beginAccess();
        sub_237167B14(&v3[v17], &v42);
        if (v43)
        {
          sub_237120C7C(&v42, v44);
          v18 = v45;
          v19 = v46;
          __swift_project_boxed_opaque_existential_0(v44, v45);
          v20 = (*(*(*(v19 + 8) + 8) + 8))(0, v18);
          v21 = v45;
          v22 = v46;
          __swift_project_boxed_opaque_existential_0(v44, v45);
          v23 = (*(*(*(v22 + 8) + 8) + 8))(3, v21);
          v24 = v45;
          v25 = v46;
          __swift_project_boxed_opaque_existential_0(v44, v45);
          v26 = (*(*(*(v25 + 8) + 8) + 16))(v16, v24);
          v27 = v45;
          v28 = v46;
          __swift_project_boxed_opaque_existential_0(v44, v45);
          v29 = (*(*(*(v28 + 8) + 8) + 24))(v16, v27);
          if (v16 == 1)
          {
            v30 = *&v3[OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_yAxis];
            sub_237183B90(v30, v12);
            v32 = v31;

            v33 = v32 - v20;
          }

          else
          {
            v38 = *&v3[OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_xAxis];
            sub_237183B90(v38, v13);
            v33 = v39;

            if (v16)
            {
              if (v16 == 3)
              {
                if (v20 < v33)
                {
                  v33 = v20;
                }
              }

              else if (v16 == 2)
              {
                v40 = (*(*&v3[OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_yAxis] + OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_min) - v23) / (v33 - v23);
                v41 = v40 > 0.0 && v40 < v26;
                v33 = v26;
                if (!v41)
                {
                  if (v40 >= 0.0)
                  {
                    if (v29 >= v40)
                    {
                      v33 = v40;
                    }

                    else
                    {
                      v33 = v29;
                    }
                  }

                  else
                  {
                    v33 = v29;
                  }
                }
              }
            }

            else if (v33 < v23)
            {
              v33 = v23;
            }
          }

          if (v29 >= v33)
          {
            v34 = v33;
          }

          else
          {
            v34 = v29;
          }

          if (v33 >= v26)
          {
            v35 = v34;
          }

          else
          {
            v35 = v26;
          }

          v36 = v45;
          v37 = v46;
          __swift_project_boxed_opaque_existential_0(v44, v45);
          (*(*(*(v37 + 8) + 8) + 40))(v16, v36, v35);
          sub_237165724(v16, v35);
          sub_237166164(v16);

          __swift_destroy_boxed_opaque_existential_0(v44);
        }

        else
        {

          sub_237120D04(&v42, &qword_27DE951F0, &qword_23719BF60);
        }
      }
    }

    else
    {
    }
  }
}

uint64_t sub_2371670E0(void *a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(uint64_t, void *))
{
  sub_237115094(0, &qword_27DE94790, 0x277D75C68);
  sub_237114F70();
  v8 = sub_2371966DC();
  v9 = a4;
  v10 = a1;
  a5(v8, a4);
}

void sub_237167190(uint64_t a1, uint64_t a2)
{
  sub_237115094(0, &qword_27DE94790, 0x277D75C68);
  sub_237114F70();
  v4 = sub_2371966CC();
  v23.receiver = v2;
  v23.super_class = type metadata accessor for CACompressionView();
  objc_msgSendSuper2(&v23, sel_touchesEnded_withEvent_, v4, a2);

  v5 = OBJC_IVAR____TtC12CoreAudioKit17CACompressionView_activeGuides;
  swift_beginAccess();
  v6 = *&v2[v5];
  if (v6 >> 62)
  {
    v7 = sub_2371969FC();
    if (!v7)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      goto LABEL_10;
    }
  }

  if (v7 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v7; ++i)
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x2383C62A0](i, v6);
    }

    else
    {
      v9 = *(v6 + 8 * i + 32);
    }

    v10 = v9;
    [v9 setHidden_];
  }

LABEL_10:
  v11 = *&v2[OBJC_IVAR____TtC12CoreAudioKit17CACompressionView_activeControl];
  if (v11)
  {
    v12 = objc_opt_self();
    v13 = v11;
    v14 = [v12 tintColor];
    v15 = [v14 colorWithAlphaComponent_];
    v16 = [v15 CGColor];

    [v13 setBackgroundColor_];
    v17 = sub_23719653C();
    v18 = [objc_opt_self() defaultCenter];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE94E30, &unk_23719B100);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_23719B020;
    sub_23719690C();
    sub_237163370(v13);
    v21 = v20;
    *(inited + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE94F10, &qword_23719BA60);
    *(inited + 72) = v21;
    *(inited + 76) = BYTE4(v21) & 1;
    sub_237119F04(inited);
    swift_setDeallocating();
    sub_237120D04(inited + 32, &qword_27DE948B0, &unk_23719B510);
    v22 = sub_23719651C();

    [v18 postNotificationName:v17 object:v2 userInfo:{v22, 0x6D61726170, 0xE500000000000000}];
  }
}

id sub_2371674F0(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC12CoreAudioKit17CACompressionView_diagonalLayer;
  *&v4[v9] = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  v10 = OBJC_IVAR____TtC12CoreAudioKit17CACompressionView_curveFill;
  *&v4[v10] = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  v11 = OBJC_IVAR____TtC12CoreAudioKit17CACompressionView_compressionLine;
  *&v4[v11] = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  v12 = OBJC_IVAR____TtC12CoreAudioKit17CACompressionView_expansionFill;
  *&v4[v12] = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  v13 = OBJC_IVAR____TtC12CoreAudioKit17CACompressionView_compressionFill;
  *&v4[v13] = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  v14 = OBJC_IVAR____TtC12CoreAudioKit17CACompressionView_compressionTriangle;
  *&v4[v14] = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  v15 = OBJC_IVAR____TtC12CoreAudioKit17CACompressionView_accessibilityFormatter;
  *&v4[v15] = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
  v16 = MEMORY[0x277D84F90];
  *&v4[OBJC_IVAR____TtC12CoreAudioKit17CACompressionView_controlList] = MEMORY[0x277D84F90];
  *&v4[OBJC_IVAR____TtC12CoreAudioKit17CACompressionView_activeGuides] = v16;
  v17 = OBJC_IVAR____TtC12CoreAudioKit17CACompressionView_paramCache;
  *&v4[v17] = sub_23711A418(v16);
  *&v4[OBJC_IVAR____TtC12CoreAudioKit17CACompressionView_activeControl] = 0;
  *&v4[OBJC_IVAR____TtC12CoreAudioKit17CACompressionView_accessibileElements] = v16;
  v18 = &v4[OBJC_IVAR____TtC12CoreAudioKit17CACompressionView_dataSource];
  v19 = type metadata accessor for CACompressionView();
  *v18 = 0u;
  *(v18 + 1) = 0u;
  *(v18 + 4) = 0;
  v21.receiver = v4;
  v21.super_class = v19;
  return objc_msgSendSuper2(&v21, sel_initWithFrame_, a1, a2, a3, a4);
}

id sub_2371676BC(void *a1)
{
  v3 = OBJC_IVAR____TtC12CoreAudioKit17CACompressionView_diagonalLayer;
  *&v1[v3] = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  v4 = OBJC_IVAR____TtC12CoreAudioKit17CACompressionView_curveFill;
  *&v1[v4] = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  v5 = OBJC_IVAR____TtC12CoreAudioKit17CACompressionView_compressionLine;
  *&v1[v5] = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  v6 = OBJC_IVAR____TtC12CoreAudioKit17CACompressionView_expansionFill;
  *&v1[v6] = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  v7 = OBJC_IVAR____TtC12CoreAudioKit17CACompressionView_compressionFill;
  *&v1[v7] = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  v8 = OBJC_IVAR____TtC12CoreAudioKit17CACompressionView_compressionTriangle;
  *&v1[v8] = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  v9 = OBJC_IVAR____TtC12CoreAudioKit17CACompressionView_accessibilityFormatter;
  *&v1[v9] = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
  v10 = MEMORY[0x277D84F90];
  *&v1[OBJC_IVAR____TtC12CoreAudioKit17CACompressionView_controlList] = MEMORY[0x277D84F90];
  *&v1[OBJC_IVAR____TtC12CoreAudioKit17CACompressionView_activeGuides] = v10;
  v11 = OBJC_IVAR____TtC12CoreAudioKit17CACompressionView_paramCache;
  *&v1[v11] = sub_23711A418(v10);
  *&v1[OBJC_IVAR____TtC12CoreAudioKit17CACompressionView_activeControl] = 0;
  *&v1[OBJC_IVAR____TtC12CoreAudioKit17CACompressionView_accessibileElements] = v10;
  v12 = &v1[OBJC_IVAR____TtC12CoreAudioKit17CACompressionView_dataSource];
  v13 = type metadata accessor for CACompressionView();
  *v12 = 0u;
  *(v12 + 1) = 0u;
  *(v12 + 4) = 0;
  v16.receiver = v1;
  v16.super_class = v13;
  v14 = objc_msgSendSuper2(&v16, sel_initWithCoder_, a1);

  if (v14)
  {
  }

  return v14;
}

uint64_t sub_237167888()
{

  return sub_237120D04(v0 + OBJC_IVAR____TtC12CoreAudioKit17CACompressionView_dataSource, &qword_27DE951F0, &qword_23719BF60);
}

id sub_237167994(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_237167B14(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE951F0, &qword_23719BF60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

char *sub_237167BD8(unint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  if (a1 >> 62)
  {
    v6 = sub_2371969FC();
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = MEMORY[0x277D84F90];
  if (!v6)
  {
    return v7;
  }

  v17 = MEMORY[0x277D84F90];
  result = sub_23716E25C(0, v6 & ~(v6 >> 63), 0);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v7 = v17;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v6; ++i)
      {
        MEMORY[0x2383C62A0](i, a1);
        a3(a2);
        swift_dynamicCast();
        v17 = v7;
        v11 = *(v7 + 16);
        v10 = *(v7 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_23716E25C((v10 > 1), v11 + 1, 1);
          v7 = v17;
        }

        *(v7 + 16) = v11 + 1;
        sub_23711BDA4(v16, (v7 + 32 * v11 + 32));
      }
    }

    else
    {
      v12 = (a1 + 32);
      a3(a2);
      do
      {
        v13 = *v12;
        swift_dynamicCast();
        v17 = v7;
        v15 = *(v7 + 16);
        v14 = *(v7 + 24);
        if (v15 >= v14 >> 1)
        {
          sub_23716E25C((v14 > 1), v15 + 1, 1);
          v7 = v17;
        }

        *(v7 + 16) = v15 + 1;
        sub_23711BDA4(v16, (v7 + 32 * v15 + 32));
        ++v12;
        --v6;
      }

      while (v6);
    }

    return v7;
  }

  __break(1u);
  return result;
}

void sub_237167DBC(uint64_t a1)
{
  sub_2371813FC();
  v2 = *&v1[OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_yAxis];
  *&v2[OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_center] = 0;
  v3 = objc_opt_self();
  v4 = v2;
  v50 = v3;
  v5 = [v3 labelColor];
  v6 = [v5 colorWithAlphaComponent_];

  v7 = *&v4[OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_centerLine];
  *&v4[OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_centerLine] = v6;

  [v1 setIsAccessibilityElement_];
  v8 = sub_23719653C();
  v9 = [objc_opt_self() bundleWithIdentifier_];

  v10 = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  v11 = OBJC_IVAR____TtC12CoreAudioKit15CAAUEQGraphView_curve;
  v12 = *&v1[OBJC_IVAR____TtC12CoreAudioKit15CAAUEQGraphView_curve];
  *&v1[OBJC_IVAR____TtC12CoreAudioKit15CAAUEQGraphView_curve] = v10;
  v13 = v10;

  if (!v13)
  {
    __break(1u);
    goto LABEL_24;
  }

  v14 = *&v1[OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_graphLayer];
  [v14 frame];
  [v13 setFrame_];

  v15 = *&v1[v11];
  if (!v15)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v49 = v9;
  v16 = v15;
  v17 = [v1 tintColor];
  if (v17)
  {
    v18 = v17;
    v19 = [v17 colorWithAlphaComponent_];

    v20 = [v19 CGColor];
  }

  else
  {
    v20 = 0;
  }

  [v16 setFillColor_];

  v21 = *&v1[v11];
  if (!v21)
  {
    goto LABEL_25;
  }

  [v21 setMasksToBounds_];
  v22 = [objc_allocWithZone(MEMORY[0x277CD9EB0]) init];
  v23 = OBJC_IVAR____TtC12CoreAudioKit15CAAUEQGraphView_gradientLayer;
  v24 = *&v1[OBJC_IVAR____TtC12CoreAudioKit15CAAUEQGraphView_gradientLayer];
  *&v1[OBJC_IVAR____TtC12CoreAudioKit15CAAUEQGraphView_gradientLayer] = v22;
  v25 = v22;

  if (!v25)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v26 = *&v1[v11];
  if (!v26)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  [v26 bounds];
  [v25 setFrame_];

  v27 = [v1 tintColor];
  if (v27)
  {

    v28 = [v1 tintColor];
  }

  else
  {
    v28 = [v50 redColor];
  }

  v29 = v28;
  v30 = *&v1[v23];
  if (!v30)
  {
    goto LABEL_28;
  }

  v31 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE949B0, &qword_23719B320);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_23719B040;
  if (!v31)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    return;
  }

  v33 = v32;
  v34 = v30;
  v35 = [v31 &selRef:1.0 constraintLessThanOrEqualToAnchor:?];
  v36 = [v35 CGColor];

  type metadata accessor for CGColor(0);
  v38 = v37;
  v33[7] = v37;
  v33[4] = v36;
  v39 = [v31 &selRef:0.5 constraintLessThanOrEqualToAnchor:?];
  v40 = [v39 CGColor];

  v33[11] = v38;
  v33[8] = v40;
  v41 = sub_23719661C();

  [v34 setColors_];

  v42 = *&v1[v11];
  if (v42)
  {
    [v42 setMask_];
  }

  v1[OBJC_IVAR____TtC12CoreAudioKit15CAAUEQGraphView_drawActivePointOnly] = 0;
  v1[OBJC_IVAR____TtC12CoreAudioKit15CAAUEQGraphView_plotActiveRangeOnly] = 0;
  if (!*&v1[v11])
  {
    goto LABEL_30;
  }

  [v14 addSublayer_];
  v43 = [v1 layer];
  v44 = objc_opt_self();
  v45 = v49;
  v46 = [v44 currentTraitCollection];
  v47 = sub_23719653C();
  v48 = [v50 colorNamed:v47 inBundle:v45 compatibleWithTraitCollection:v46];

  if (v48)
  {
    v51 = [v48 CGColor];
  }

  else
  {
    v51 = 0;
  }

  [v43 setBackgroundColor_];
}

id sub_23716832C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC12CoreAudioKit15CAAUEQGraphView_dataSource;
  swift_beginAccess();
  sub_23716E1E4(v2 + v6, v44);
  v7 = v45;
  sub_237120D04(v44, &qword_27DE94720, &unk_23719AFE0);
  if (!v7)
  {
    return 0;
  }

  result = sub_23716E1E4(v3 + v6, v44);
  if (!v45)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v43[3] = type metadata accessor for CAAUEQGraphView();
  v43[4] = &off_284A3AC40;
  v43[0] = v3;
  v9 = type metadata accessor for CAAUFilterControl();
  v10 = objc_allocWithZone(v9);
  v11 = v10;
  *&v10[OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_controlLayer] = 0;
  v12 = MEMORY[0x277D84F90];
  *&v10[OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_guides] = MEMORY[0x277D84F90];
  *&v10[OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_points] = v12;
  *&v10[OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_color] = 0;
  v13 = OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_drawVerticalGuide;
  v10[OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_drawVerticalGuide] = 0;
  v14 = OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_drawHorizontalGuide;
  v10[OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_drawHorizontalGuide] = 0;
  v15 = OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_drawTrianglesOnEdges;
  v10[OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_drawTrianglesOnEdges] = 0;
  v16 = &v10[OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_location];
  *v16 = 0;
  *(v16 + 1) = 0;
  *&v10[OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_widthPixels] = 0;
  v17 = &v10[OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_tapOffest];
  *v17 = 0;
  *(v17 + 1) = 0;
  v10[OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_type] = 0;
  if (a2 != -1)
  {
    v10[v14] = 1;
  }

  if (a1 != -1)
  {
    v10[v13] = 1;
  }

  sub_237120C18(v44, &v10[OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_dataSource]);
  sub_237120C18(v43, &v11[OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_delegate]);
  v11[v15] = 0;
  *&v11[OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_param1] = a1;
  *&v11[OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_param2] = a2;
  *&v11[OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_param3] = -1;
  v11[OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_enabled] = 0;
  v18 = v45;
  v19 = v46;
  __swift_project_boxed_opaque_existential_0(v44, v45);
  v20 = (*(v19 + 16))(0xFFFFFFFFLL, v18, v19);
  v21 = sub_23717D120(v20);
  if (v21 == 4)
  {
    v22 = 0;
  }

  else
  {
    v22 = v21;
  }

  v11[OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_widthType] = v22;
  v11[OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_bypassed] = 0;
  v11[OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_highlighted] = 0;
  v42.receiver = v11;
  v42.super_class = v9;
  v23 = v3;
  v24 = objc_msgSendSuper2(&v42, sel_init);
  sub_2371773E8();

  __swift_destroy_boxed_opaque_existential_0(v43);
  __swift_destroy_boxed_opaque_existential_0(v44);
  result = sub_23716E1E4(v3 + v6, v44);
  v25 = v45;
  if (!v45)
  {
    goto LABEL_20;
  }

  v26 = v46;
  __swift_project_boxed_opaque_existential_0(v44, v45);
  v27 = (*(*(*(v26 + 8) + 8) + 8))(a1, v25);
  __swift_destroy_boxed_opaque_existential_0(v44);
  result = sub_23716E1E4(v3 + v6, v44);
  v28 = v45;
  if (v45)
  {
    v29 = v46;
    __swift_project_boxed_opaque_existential_0(v44, v45);
    v30 = (*(*(*(v29 + 8) + 8) + 8))(a2, v28);
    __swift_destroy_boxed_opaque_existential_0(v44);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE94D18, &qword_23719B748);
    inited = swift_initStackObject();
    *(inited + 32) = 0x6C6F72746E6F63;
    *(inited + 16) = xmmword_23719BED0;
    *(inited + 40) = 0xE700000000000000;
    *(inited + 48) = v24;
    *(inited + 72) = v9;
    *(inited + 80) = 0x6156316D61726170;
    *(inited + 88) = 0xEB0000000065756CLL;
    v32 = MEMORY[0x277D83A90];
    *(inited + 96) = v27;
    *(inited + 120) = v32;
    *(inited + 128) = 0x6156326D61726170;
    *(inited + 136) = 0xEB0000000065756CLL;
    *(inited + 168) = v32;
    *(inited + 144) = v30;
    v33 = v24;
    v34 = sub_237119CF4(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE948A0, &unk_23719B750);
    swift_arrayDestroy();
    v35 = OBJC_IVAR____TtC12CoreAudioKit15CAAUEQGraphView_controlList;
    swift_beginAccess();
    v36 = *&v23[v35];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v23[v35] = v36;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v36 = sub_23718995C(0, v36[2] + 1, 1, v36);
      *&v23[v35] = v36;
    }

    v39 = v36[2];
    v38 = v36[3];
    if (v39 >= v38 >> 1)
    {
      v36 = sub_23718995C((v38 > 1), v39 + 1, 1, v36);
    }

    v36[2] = v39 + 1;
    v36[v39 + 4] = v34;
    *&v23[v35] = v36;
    swift_endAccess();
    v45 = v9;
    v44[0] = v33;
    swift_beginAccess();
    v40 = v33;
    sub_2371614C4(v44, a1);
    v45 = v9;
    v44[0] = v40;
    v41 = v40;
    sub_2371614C4(v44, a2);
    swift_endAccess();
    sub_237178FFC(a1, v27);
    sub_237178FFC(a2, v30);
    return v41;
  }

LABEL_21:
  __break(1u);
  return result;
}

objc_class *sub_2371688D8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = OBJC_IVAR____TtC12CoreAudioKit15CAAUEQGraphView_dataSource;
  swift_beginAccess();
  sub_23716E1E4(v4 + v8, v44);
  v9 = v45;
  sub_237120D04(v44, &qword_27DE94720, &unk_23719AFE0);
  if (!v9)
  {
    return v9;
  }

  result = sub_23716E1E4(v4 + v8, v44);
  if (!v45)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v43[3] = type metadata accessor for CAAUEQGraphView();
  v43[4] = &off_284A3AC40;
  v43[0] = v4;
  v11 = type metadata accessor for CAAUFilterControl();
  v12 = objc_allocWithZone(v11);
  v13 = v12;
  *&v12[OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_controlLayer] = 0;
  v14 = MEMORY[0x277D84F90];
  *&v12[OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_guides] = MEMORY[0x277D84F90];
  *&v12[OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_points] = v14;
  *&v12[OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_color] = 0;
  v15 = OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_drawVerticalGuide;
  v12[OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_drawVerticalGuide] = 0;
  v12[OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_drawHorizontalGuide] = 0;
  v16 = OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_drawTrianglesOnEdges;
  v12[OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_drawTrianglesOnEdges] = 0;
  v17 = &v12[OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_location];
  *v17 = 0;
  *(v17 + 1) = 0;
  *&v12[OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_widthPixels] = 0;
  v18 = &v12[OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_tapOffest];
  *v18 = 0;
  *(v18 + 1) = 0;
  v12[OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_type] = 1;
  if (a1 != -1)
  {
    v12[v15] = 1;
  }

  sub_237120C18(v44, &v12[OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_dataSource]);
  sub_237120C18(v43, &v13[OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_delegate]);
  v13[v16] = a3 & 1;
  *&v13[OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_param1] = a1;
  *&v13[OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_param2] = -1;
  *&v13[OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_param3] = a2;
  v13[OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_enabled] = 0;
  v19 = v45;
  v20 = v46;
  __swift_project_boxed_opaque_existential_0(v44, v45);
  v21 = (*(v20 + 16))(a2, v19, v20);
  v22 = sub_23717D120(v21);
  if (v22 == 4)
  {
    v23 = 0;
  }

  else
  {
    v23 = v22;
  }

  v13[OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_widthType] = v23;
  v13[OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_bypassed] = 0;
  v13[OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_highlighted] = 0;
  v42.receiver = v13;
  v42.super_class = v11;
  v24 = v4;
  v25 = objc_msgSendSuper2(&v42, sel_init);
  sub_2371773E8();

  __swift_destroy_boxed_opaque_existential_0(v43);
  __swift_destroy_boxed_opaque_existential_0(v44);
  result = sub_23716E1E4(v4 + v8, v44);
  v26 = v45;
  if (!v45)
  {
    goto LABEL_17;
  }

  v27 = v46;
  __swift_project_boxed_opaque_existential_0(v44, v45);
  v28 = (*(*(*(v27 + 8) + 8) + 8))(a1, v26);
  __swift_destroy_boxed_opaque_existential_0(v44);
  result = sub_23716E1E4(v4 + v8, v44);
  v29 = v45;
  if (v45)
  {
    v30 = v46;
    __swift_project_boxed_opaque_existential_0(v44, v45);
    v31 = (*(*(*(v30 + 8) + 8) + 8))(a2, v29);
    __swift_destroy_boxed_opaque_existential_0(v44);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE94D18, &qword_23719B748);
    inited = swift_initStackObject();
    *(inited + 32) = 0x6C6F72746E6F63;
    *(inited + 16) = xmmword_23719BED0;
    *(inited + 40) = 0xE700000000000000;
    *(inited + 48) = v25;
    *(inited + 72) = v11;
    *(inited + 80) = 0x6156316D61726170;
    *(inited + 88) = 0xEB0000000065756CLL;
    v33 = MEMORY[0x277D83A90];
    *(inited + 96) = v28;
    *(inited + 120) = v33;
    *(inited + 128) = 0x6156336D61726170;
    *(inited + 136) = 0xEB0000000065756CLL;
    *(inited + 168) = v33;
    *(inited + 144) = v31;
    v34 = v25;
    v35 = sub_237119CF4(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE948A0, &unk_23719B750);
    swift_arrayDestroy();
    v36 = OBJC_IVAR____TtC12CoreAudioKit15CAAUEQGraphView_controlList;
    swift_beginAccess();
    v37 = *&v24[v36];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v24[v36] = v37;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v37 = sub_23718995C(0, v37[2] + 1, 1, v37);
      *&v24[v36] = v37;
    }

    v40 = v37[2];
    v39 = v37[3];
    if (v40 >= v39 >> 1)
    {
      v37 = sub_23718995C((v39 > 1), v40 + 1, 1, v37);
    }

    v37[2] = v40 + 1;
    v37[v40 + 4] = v35;
    *&v24[v36] = v37;
    swift_endAccess();
    v45 = v11;
    v44[0] = v34;
    swift_beginAccess();
    v41 = v34;
    sub_2371614C4(v44, a1);
    v45 = v11;
    v44[0] = v41;
    v9 = v41;
    sub_2371614C4(v44, a2);
    swift_endAccess();
    sub_237178FFC(a1, v28);
    sub_237178FFC(a2, v31);
    return v9;
  }

LABEL_18:
  __break(1u);
  return result;
}

id sub_237168E74(uint64_t a1, uint64_t a2, unsigned int a3, char a4)
{
  v5 = v4;
  v9 = OBJC_IVAR____TtC12CoreAudioKit15CAAUEQGraphView_dataSource;
  swift_beginAccess();
  sub_23716E1E4(v5 + v9, v52);
  v10 = v53;
  sub_237120D04(v52, &qword_27DE94720, &unk_23719AFE0);
  if (!v10)
  {
    return 0;
  }

  result = sub_23716E1E4(v5 + v9, v52);
  if (!v53)
  {
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v51[3] = type metadata accessor for CAAUEQGraphView();
  v51[4] = &off_284A3AC40;
  v51[0] = v5;
  v12 = type metadata accessor for CAAUFilterControl();
  v13 = objc_allocWithZone(v12);
  v14 = v13;
  *&v13[OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_controlLayer] = 0;
  v15 = MEMORY[0x277D84F90];
  *&v13[OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_guides] = MEMORY[0x277D84F90];
  *&v13[OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_points] = v15;
  *&v13[OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_color] = 0;
  v16 = OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_drawVerticalGuide;
  v13[OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_drawVerticalGuide] = 0;
  v17 = OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_drawHorizontalGuide;
  v13[OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_drawHorizontalGuide] = 0;
  v18 = OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_drawTrianglesOnEdges;
  v13[OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_drawTrianglesOnEdges] = 0;
  v19 = &v13[OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_location];
  *v19 = 0;
  *(v19 + 1) = 0;
  *&v13[OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_widthPixels] = 0;
  v20 = &v13[OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_tapOffest];
  *v20 = 0;
  *(v20 + 1) = 0;
  v13[OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_type] = 2;
  if (a2 != -1)
  {
    v13[v17] = 1;
  }

  if (a1 != -1)
  {
    v13[v16] = 1;
  }

  sub_237120C18(v52, &v13[OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_dataSource]);
  sub_237120C18(v51, &v14[OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_delegate]);
  v14[v18] = a4 & 1;
  *&v14[OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_param1] = a1;
  *&v14[OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_param2] = a2;
  *&v14[OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_param3] = a3;
  v14[OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_enabled] = 0;
  v21 = v53;
  v22 = v54;
  __swift_project_boxed_opaque_existential_0(v52, v53);
  v23 = (*(v22 + 16))(a3, v21, v22);
  v24 = sub_23717D120(v23);
  if (v24 == 4)
  {
    v25 = 0;
  }

  else
  {
    v25 = v24;
  }

  v14[OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_widthType] = v25;
  v14[OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_bypassed] = 0;
  v14[OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_highlighted] = 0;
  v50.receiver = v14;
  v50.super_class = v12;
  v26 = v5;
  v27 = objc_msgSendSuper2(&v50, sel_init);
  sub_2371773E8();

  __swift_destroy_boxed_opaque_existential_0(v51);
  __swift_destroy_boxed_opaque_existential_0(v52);
  result = sub_23716E1E4(v5 + v9, v52);
  v28 = v53;
  if (!v53)
  {
    goto LABEL_21;
  }

  v29 = v54;
  __swift_project_boxed_opaque_existential_0(v52, v53);
  v30 = (*(*(*(v29 + 8) + 8) + 8))(a1, v28);
  __swift_destroy_boxed_opaque_existential_0(v52);
  result = sub_23716E1E4(v5 + v9, v52);
  v31 = v53;
  if (!v53)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v32 = v54;
  __swift_project_boxed_opaque_existential_0(v52, v53);
  v33 = (*(*(*(v32 + 8) + 8) + 8))(a2, v31);
  __swift_destroy_boxed_opaque_existential_0(v52);
  result = sub_23716E1E4(v5 + v9, v52);
  v34 = v53;
  if (v53)
  {
    v35 = v54;
    __swift_project_boxed_opaque_existential_0(v52, v53);
    v36 = (*(*(*(v35 + 8) + 8) + 8))(a3, v34);
    __swift_destroy_boxed_opaque_existential_0(v52);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE94D18, &qword_23719B748);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_23719BDB0;
    *(inited + 32) = 0x6C6F72746E6F63;
    *(inited + 40) = 0xE700000000000000;
    *(inited + 48) = v27;
    *(inited + 72) = v12;
    *(inited + 80) = 0x6156316D61726170;
    *(inited + 88) = 0xEB0000000065756CLL;
    v38 = MEMORY[0x277D83A90];
    *(inited + 96) = v30;
    *(inited + 120) = v38;
    *(inited + 128) = 0x6156326D61726170;
    *(inited + 136) = 0xEB0000000065756CLL;
    *(inited + 144) = v33;
    *(inited + 168) = v38;
    *(inited + 176) = 0x6156336D61726170;
    *(inited + 184) = 0xEB0000000065756CLL;
    *(inited + 216) = v38;
    *(inited + 192) = v36;
    v39 = v27;
    v40 = sub_237119CF4(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE948A0, &unk_23719B750);
    swift_arrayDestroy();
    v41 = OBJC_IVAR____TtC12CoreAudioKit15CAAUEQGraphView_controlList;
    swift_beginAccess();
    v42 = *&v26[v41];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v26[v41] = v42;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v42 = sub_23718995C(0, v42[2] + 1, 1, v42);
      *&v26[v41] = v42;
    }

    v45 = v42[2];
    v44 = v42[3];
    if (v45 >= v44 >> 1)
    {
      v42 = sub_23718995C((v44 > 1), v45 + 1, 1, v42);
    }

    v42[2] = v45 + 1;
    v42[v45 + 4] = v40;
    *&v26[v41] = v42;
    swift_endAccess();
    v53 = v12;
    v52[0] = v39;
    swift_beginAccess();
    v46 = v39;
    sub_2371614C4(v52, a1);
    v53 = v12;
    v52[0] = v46;
    v47 = v46;
    sub_2371614C4(v52, a2);
    v53 = v12;
    v52[0] = v47;
    v48 = v47;
    sub_2371614C4(v52, a3);
    swift_endAccess();
    sub_237178FFC(a1, v30);
    sub_237178FFC(a2, v33);
    sub_237178FFC(a3, v36);
    return v48;
  }

LABEL_23:
  __break(1u);
  return result;
}

void sub_2371694E0(unint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC12CoreAudioKit15CAAUEQGraphView_controlList;
  swift_beginAccess();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = *(v2 + v4);
  if (*(v5 + 16) <= a1)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v6 = *(v5 + 8 * a1 + 32);
  v15 = v6;
  if (!*(v6 + 16))
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v7 = sub_2371905D4(0x6C6F72746E6F63, 0xE700000000000000);
  if (v8)
  {
    sub_237114D0C(*(v6 + 56) + 32 * v7, v13);
    sub_23711BDA4(v13, v14);
    type metadata accessor for CAAUFilterControl();
    swift_dynamicCast();
    sub_23716E4CC(0x6156326D61726170, 0xEB0000000065756CLL, v14);
    sub_237120D04(v14, &qword_27DE94D20, &unk_23719B8D0);
    sub_23716E4CC(0x6156336D61726170, 0xEB0000000065756CLL, v14);
    sub_237120D04(v14, &qword_27DE94D20, &unk_23719B8D0);
    v9 = OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_param2;
    v10 = *&v12[OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_param2];
    swift_beginAccess();
    sub_23718A36C(v10, v14);
    sub_237120D04(v14, &qword_27DE94D20, &unk_23719B8D0);
    v11 = OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_param3;
    sub_23718A36C(*&v12[OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_param3], v14);
    sub_237120D04(v14, &qword_27DE94D20, &unk_23719B8D0);
    swift_endAccess();
    *&v12[v9] = -1;
    *&v12[v11] = -1;
    v12[OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_type] = 0;
    sub_23717728C();

    return;
  }

LABEL_9:
  __break(1u);
}

void sub_23716970C(unint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = v3;
  v8 = OBJC_IVAR____TtC12CoreAudioKit15CAAUEQGraphView_controlList;
  swift_beginAccess();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v9 = *(v4 + v8);
  if (*(v9 + 16) <= a1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v10 = *(v9 + 8 * a1 + 32);
  if (!*(v10 + 16))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v11 = sub_2371905D4(0x6C6F72746E6F63, 0xE700000000000000);
  if ((v12 & 1) == 0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v27 = a2;
  sub_237114D0C(*(v10 + 56) + 32 * v11, v32);
  sub_23711BDA4(v32, &v29);
  v13 = type metadata accessor for CAAUFilterControl();
  swift_dynamicCast();
  v14 = *&v28[0];
  v15 = OBJC_IVAR____TtC12CoreAudioKit15CAAUEQGraphView_dataSource;
  swift_beginAccess();
  sub_23716E1E4(v4 + v15, &v29);
  v16 = v30;
  if (!v30)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v17 = v31;
  __swift_project_boxed_opaque_existential_0(&v29, v30);
  v18 = (*(*(*(v17 + 8) + 8) + 8))(a3, v16);
  v19 = MEMORY[0x277D83A90];
  v33 = MEMORY[0x277D83A90];
  v32[0] = v18;
  sub_23711BDA4(v32, v28);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_23718E7C8(v28, 0x6156326D61726170, 0xEB0000000065756CLL, isUniquelyReferenced_nonNull_native);
  __swift_destroy_boxed_opaque_existential_0(&v29);
  sub_23716E1E4(v4 + v15, &v29);
  v21 = v30;
  if (v30)
  {
    v22 = v31;
    __swift_project_boxed_opaque_existential_0(&v29, v30);
    v23 = (*(*(*(v22 + 8) + 8) + 8))(a3, v21);
    v33 = v19;
    v32[0] = v23;
    sub_23711BDA4(v32, v28);
    v24 = swift_isUniquelyReferenced_nonNull_native();
    sub_23718E7C8(v28, 0x6156336D61726170, 0xEB0000000065756CLL, v24);
    __swift_destroy_boxed_opaque_existential_0(&v29);
    v30 = v13;
    *&v29 = v14;
    swift_beginAccess();
    v25 = v14;
    sub_2371614C4(&v29, v27);
    v30 = v13;
    *&v29 = v25;
    v26 = v25;
    sub_2371614C4(&v29, a3);
    swift_endAccess();
    *&v26[OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_param2] = v27;
    *&v26[OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_param3] = a3;
    v26[OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_type] = 2;
    sub_23717728C();

    return;
  }

LABEL_13:
  __break(1u);
}

void sub_237169A48(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC12CoreAudioKit15CAAUEQGraphView_controlList;
  swift_beginAccess();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v7 = *(v3 + v6);
  if (*(v7 + 16) <= a1)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = *(v7 + 8 * a1 + 32);
  v27 = v8;
  v9 = *(v8 + 16);

  if (!v9)
  {
    goto LABEL_8;
  }

  v10 = sub_2371905D4(0x6C6F72746E6F63, 0xE700000000000000);
  if ((v11 & 1) == 0)
  {
    goto LABEL_8;
  }

  sub_237114D0C(*(v8 + 56) + 32 * v10, &v22);
  v12 = type metadata accessor for CAAUFilterControl();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_8;
  }

  v13 = *v25;
  v14 = OBJC_IVAR____TtC12CoreAudioKit15CAAUEQGraphView_dataSource;
  swift_beginAccess();
  sub_23716E1E4(v3 + v14, &v22);
  v15 = v23;
  if (v23)
  {
    v16 = v24;
    __swift_project_boxed_opaque_existential_0(&v22, v23);
    v17 = (*(*(*(v16 + 8) + 8) + 8))(a2, v15);
    v26 = MEMORY[0x277D83A90];
    v25[0] = v17;
    sub_23711BDA4(v25, v21);
    v18 = v27;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_23718E7C8(v21, 0x6156326D61726170, 0xEB0000000065756CLL, isUniquelyReferenced_nonNull_native);
    v27 = v18;
    __swift_destroy_boxed_opaque_existential_0(&v22);
    sub_23716E4CC(0x6156336D61726170, 0xEB0000000065756CLL, &v22);
    sub_237120D04(&v22, &qword_27DE94D20, &unk_23719B8D0);
    v23 = v12;
    *&v22 = v13;
    swift_beginAccess();
    v20 = v13;
    sub_2371614C4(&v22, a2);
    sub_23718A36C(*&v20[OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_param3], &v22);
    sub_237120D04(&v22, &qword_27DE94D20, &unk_23719B8D0);
    swift_endAccess();
    *&v20[OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_param2] = a2;
    v20[OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_type] = 0;
    sub_23717728C();

LABEL_8:

    return;
  }

LABEL_11:
  __break(1u);
}

void sub_237169D08(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC12CoreAudioKit15CAAUEQGraphView_controlList;
  swift_beginAccess();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v7 = *(v3 + v6);
  if (*(v7 + 16) <= a1)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v8 = *(v7 + 8 * a1 + 32);
  v25 = v8;
  if (!*(v8 + 16))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v9 = sub_2371905D4(0x6C6F72746E6F63, 0xE700000000000000);
  if ((v10 & 1) == 0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_237114D0C(*(v8 + 56) + 32 * v9, v23);
  sub_23711BDA4(v23, &v20);
  v11 = type metadata accessor for CAAUFilterControl();
  swift_dynamicCast();
  v12 = *&v19[0];
  sub_23716E4CC(0x6156326D61726170, 0xEB0000000065756CLL, &v20);
  sub_237120D04(&v20, &qword_27DE94D20, &unk_23719B8D0);
  v13 = OBJC_IVAR____TtC12CoreAudioKit15CAAUEQGraphView_dataSource;
  swift_beginAccess();
  sub_23716E1E4(v3 + v13, &v20);
  v14 = v21;
  if (v21)
  {
    v15 = v22;
    __swift_project_boxed_opaque_existential_0(&v20, v21);
    v16 = (*(*(*(v15 + 8) + 8) + 8))(a2, v14);
    v24 = MEMORY[0x277D83A90];
    v23[0] = v16;
    sub_23711BDA4(v23, v19);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_23718E7C8(v19, 0x6156336D61726170, 0xEB0000000065756CLL, isUniquelyReferenced_nonNull_native);
    __swift_destroy_boxed_opaque_existential_0(&v20);
    v21 = v11;
    *&v20 = v12;
    swift_beginAccess();
    v18 = v12;
    sub_2371614C4(&v20, a2);
    swift_endAccess();
    *&v18[OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_param2] = -1;
    *&v18[OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_param3] = a2;
    v18[OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_type] = 1;
    sub_23717728C();

    return;
  }

LABEL_11:
  __break(1u);
}

void sub_237169FB8(unint64_t a1)
{
  v3 = OBJC_IVAR____TtC12CoreAudioKit15CAAUEQGraphView_controlList;
  swift_beginAccess();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = *(v1 + v3);
  if (*(v4 + 16) <= a1)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v5 = *(v4 + 8 * a1 + 32);
  if (!*(v5 + 16))
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v6 = sub_2371905D4(0x6C6F72746E6F63, 0xE700000000000000);
  v8 = v7;

  if (v8)
  {
    sub_237114D0C(*(v5 + 56) + 32 * v6, v9);

    sub_23711BDA4(v9, &v10);
    type metadata accessor for CAAUFilterControl();
    swift_dynamicCast();
    return;
  }

LABEL_9:
  __break(1u);
}

void sub_23716A0C4()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC12CoreAudioKit15CAAUEQGraphView_controlList;
  swift_beginAccess();
  v3 = *(*(v0 + v2) + 16);
  if (!v3)
  {
    return;
  }

  v4 = 0;
  while (1)
  {
    v5 = *(v1 + v2);
    if (v4 >= *(v5 + 16))
    {
      break;
    }

    v6 = *(v5 + 8 * v4 + 32);
    if (!*(v6 + 16))
    {
      goto LABEL_20;
    }

    v7 = sub_2371905D4(0x6C6F72746E6F63, 0xE700000000000000);
    v9 = v8;

    if ((v9 & 1) == 0)
    {
      goto LABEL_21;
    }

    sub_237114D0C(*(v6 + 56) + 32 * v7, v21);

    sub_23711BDA4(v21, &v22);
    type metadata accessor for CAAUFilterControl();
    swift_dynamicCast();
    v10 = OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_enabled;
    v20[OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_enabled] = 0;
    v20[OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_highlighted] = 0;
    if ((v20[OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_bypassed] & 1) == 0)
    {
      v11 = OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_points;
      swift_beginAccess();
      v12 = *&v20[v11];
      if (v12 >> 62)
      {
        if (sub_2371969FC() < 2)
        {
          goto LABEL_3;
        }
      }

      else if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2)
      {
        goto LABEL_3;
      }

      v13 = OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_controlLayer;
      v14 = *&v20[OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_controlLayer];
      if (!v14)
      {
        goto LABEL_23;
      }

      v15 = v14;
      v16 = sub_23717A2D4(v15, 0x747261507466654CLL, 0xE800000000000000);

      if (v16)
      {
        [v16 setHidden_];
      }

      v17 = *&v20[v13];
      if (!v17)
      {
        goto LABEL_22;
      }

      v18 = v17;
      v19 = sub_23717A2D4(v18, 0x7261507468676952, 0xE900000000000074);

      if (v19)
      {
        [v19 setHidden_];
      }
    }

LABEL_3:
    ++v4;

    if (v3 == v4)
    {
      return;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
}

void sub_23716A350(unint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC12CoreAudioKit15CAAUEQGraphView_activePointIndex;
  v5 = *(v1 + OBJC_IVAR____TtC12CoreAudioKit15CAAUEQGraphView_activePointIndex);
  if ((v5 & 0x8000000000000000) == 0)
  {
    v6 = OBJC_IVAR____TtC12CoreAudioKit15CAAUEQGraphView_controlList;
    swift_beginAccess();
    if (v5 < *(*(v2 + v6) + 16))
    {
      sub_237169FB8(v5);
      v8 = v7;
      v7[OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_enabled] = 0;
      sub_237176D54();
      v8[OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_highlighted] = 0;

      *(v2 + v4) = -1;
    }
  }

  if ((a1 & 0x8000000000000000) == 0)
  {
    v9 = OBJC_IVAR____TtC12CoreAudioKit15CAAUEQGraphView_controlList;
    swift_beginAccess();
    if (*(*(v2 + v9) + 16) > a1)
    {
      sub_237169FB8(a1);
      v11 = v10;
      *(*(v2 + OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_xAxis) + OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_showActiveArea) = 1;
      *(v10 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_highlighted) = 1;
      *(v10 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_enabled) = 1;
      sub_237176D54();

      *(v2 + v4) = a1;
    }
  }
}

void sub_23716A494()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC12CoreAudioKit15CAAUEQGraphView_dataSource;
  swift_beginAccess();
  sub_23716E1E4(v1 + v2, &v15);
  if (v16)
  {
    sub_237120C7C(&v15, v17);
    v3 = OBJC_IVAR____TtC12CoreAudioKit15CAAUEQGraphView_curve;
    if (!*(v1 + OBJC_IVAR____TtC12CoreAudioKit15CAAUEQGraphView_curve))
    {
LABEL_8:
      __swift_destroy_boxed_opaque_existential_0(v17);
      return;
    }

    v4 = objc_opt_self();
    [v4 begin];
    [v4 setDisableActions_];
    v5 = *(v1 + v3);
    if (v5)
    {
      v6 = *(v1 + OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_graphLayer);
      v7 = v5;
      [v6 frame];
      [v7 setFrame_];

      v8 = *(v1 + OBJC_IVAR____TtC12CoreAudioKit15CAAUEQGraphView_gradientLayer);
      if (v8)
      {
        v9 = *(v1 + v3);
        if (v9)
        {
          v10 = v8;
          [v9 bounds];
          [v10 setFrame_];

          v11 = v18;
          v12 = v19;
          __swift_project_boxed_opaque_existential_0(v17, v18);
          [v6 frame];
          v13 = (*(v12 + 24))(v11, v12);
          v14 = *(v1 + v3);
          if (v14)
          {
            [v14 setPath_];
            [v4 commit];

            goto LABEL_8;
          }

          goto LABEL_14;
        }

LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_13;
  }

  sub_237120D04(&v15, &qword_27DE94720, &unk_23719AFE0);
}

void sub_23716A678()
{
  v1 = objc_opt_self();
  v2 = &selRef_effectiveContentSize;
  v3 = [v1 defaultCenter];
  if (qword_27DE94650 != -1)
  {
    swift_once();
  }

  v4 = qword_27DE96900;
  v5 = OBJC_IVAR____TtC12CoreAudioKit15CAAUEQGraphView_dataSource;
  swift_beginAccess();
  sub_23716E1E4(v0 + v5, v20);
  v6 = v21;
  if (v21)
  {
    v7 = __swift_project_boxed_opaque_existential_0(v20, v21);
    v8 = *(v6 - 8);
    MEMORY[0x28223BE20](v7, v7);
    v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))(v10);
    v11 = sub_237196A6C();
    (*(v8 + 8))(v10, v6);
    v2 = &selRef_effectiveContentSize;
    __swift_destroy_boxed_opaque_existential_0(v20);
  }

  else
  {
    v11 = 0;
  }

  [v3 addObserver:v0 selector:sel_handleBeginGestureWithNotification_ name:v4 object:v11];

  swift_unknownObjectRelease();
  v12 = [v1 v2[228]];
  if (qword_27DE94658 != -1)
  {
    swift_once();
  }

  v13 = qword_27DE96908;
  sub_23716E1E4(v0 + v5, v20);
  v14 = v21;
  if (v21)
  {
    v15 = __swift_project_boxed_opaque_existential_0(v20, v21);
    v16 = *(v14 - 8);
    MEMORY[0x28223BE20](v15, v15);
    v18 = v20 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v16 + 16))(v18);
    v19 = sub_237196A6C();
    (*(v16 + 8))(v18, v14);
    __swift_destroy_boxed_opaque_existential_0(v20);
  }

  else
  {
    v19 = 0;
  }

  [v12 addObserver:v0 selector:sel_handleEndGestureWithNotification_ name:v13 object:v19];

  swift_unknownObjectRelease();
  sub_237181E84();
}

void *sub_23716A9C4(void *a1)
{
  sub_237114D0C(a1, v10);
  type metadata accessor for CAAUEQGraphView();
  v3 = swift_dynamicCast();
  v4 = v9;
  if (!v3)
  {
    v4 = 0;
  }

  *&v1[OBJC_IVAR____TtCC12CoreAudioKit15CAAUEQGraphView27ControlAccessibilityElement_owner] = v4;
  *&v1[OBJC_IVAR____TtCC12CoreAudioKit15CAAUEQGraphView27ControlAccessibilityElement_param] = 0;
  v1[OBJC_IVAR____TtCC12CoreAudioKit15CAAUEQGraphView27ControlAccessibilityElement_type] = 0;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v5 = sub_237196A6C();
  v8.receiver = v1;
  v8.super_class = type metadata accessor for CAAUEQGraphView.ControlAccessibilityElement();
  v6 = objc_msgSendSuper2(&v8, sel_initWithAccessibilityContainer_, v5);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v6;
}

void sub_23716AAF0(void *a1, int a2, char a3)
{
  *&v3[OBJC_IVAR____TtCC12CoreAudioKit15CAAUEQGraphView27ControlAccessibilityElement_owner] = a1;
  *&v3[OBJC_IVAR____TtCC12CoreAudioKit15CAAUEQGraphView27ControlAccessibilityElement_param] = 0;
  v3[OBJC_IVAR____TtCC12CoreAudioKit15CAAUEQGraphView27ControlAccessibilityElement_type] = a3;
  v33.receiver = v3;
  v33.super_class = type metadata accessor for CAAUEQGraphView.ControlAccessibilityElement();
  v6 = a1;
  v7 = objc_msgSendSuper2(&v33, sel_initWithAccessibilityContainer_, v6);
  v8 = OBJC_IVAR____TtCC12CoreAudioKit15CAAUEQGraphView27ControlAccessibilityElement_param;
  *&v7[OBJC_IVAR____TtCC12CoreAudioKit15CAAUEQGraphView27ControlAccessibilityElement_param] = a2;
  [v7 setAccessibilityTraits_];
  v9 = *&v7[OBJC_IVAR____TtCC12CoreAudioKit15CAAUEQGraphView27ControlAccessibilityElement_owner];
  if (!v9)
  {

    return;
  }

  v10 = OBJC_IVAR____TtC12CoreAudioKit15CAAUEQGraphView_dataSource;
  swift_beginAccess();
  sub_23716E1E4(v9 + v10, &v28);
  if (!v29)
  {

    sub_237120D04(&v28, &qword_27DE94720, &unk_23719AFE0);
    return;
  }

  sub_237120C7C(&v28, v30);
  v12 = v31;
  v11 = v32;
  __swift_project_boxed_opaque_existential_0(v30, v31);
  v13 = *&v7[v8];
  v14 = *(v11 + 8);
  v15 = *(v14 + 16);
  v16 = v7;
  v17 = v9;
  v15(v13, v12, v14);
  v18 = sub_23719653C();

  [v16 setAccessibilityLabel_];

  v19 = *&v7[v8];
  v20 = OBJC_IVAR____TtC12CoreAudioKit15CAAUEQGraphView_paramCache;
  swift_beginAccess();
  v21 = *&v17[v20];
  if (!*(v21 + 16))
  {
    __break(1u);
    goto LABEL_11;
  }

  v22 = sub_2371906E0(v19);
  if ((v23 & 1) == 0)
  {
LABEL_11:
    __break(1u);
    return;
  }

  sub_237114D0C(*(v21 + 56) + 32 * v22, v27);
  sub_23711BDA4(v27, &v28);
  type metadata accessor for CAAUFilterControl();
  swift_dynamicCast();
  v24 = *&v26[OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_controlLayer];
  if (v24)
  {
    v25 = v24;
    [v25 frame];
    [v16 setAccessibilityFrameInContainerSpace_];
  }

  __swift_destroy_boxed_opaque_existential_0(v30);
}

void sub_23716AD7C()
{
  v1 = *&v0[OBJC_IVAR____TtCC12CoreAudioKit15CAAUEQGraphView27ControlAccessibilityElement_owner];
  if (!v1)
  {
    return;
  }

  v2 = v0;
  v3 = OBJC_IVAR____TtC12CoreAudioKit15CAAUEQGraphView_dataSource;
  swift_beginAccess();
  sub_23716E1E4(v1 + v3, &v40);
  if (!v41)
  {
    sub_237120D04(&v40, &qword_27DE94720, &unk_23719AFE0);
    return;
  }

  sub_237120C7C(&v40, v42);
  v4 = v43;
  v5 = v44;
  __swift_project_boxed_opaque_existential_0(v42, v43);
  v6 = OBJC_IVAR____TtCC12CoreAudioKit15CAAUEQGraphView27ControlAccessibilityElement_param;
  v7 = *&v2[OBJC_IVAR____TtCC12CoreAudioKit15CAAUEQGraphView27ControlAccessibilityElement_param];
  v8 = *(*(v5 + 8) + 8);
  v9 = *(v8 + 16);
  v10 = v1;
  v11 = v9(v7, v4, v8);
  v12 = v43;
  v13 = v44;
  __swift_project_boxed_opaque_existential_0(v42, v43);
  v14 = (*(*(*(v13 + 8) + 8) + 24))(*&v2[v6], v12);
  if (v2[OBJC_IVAR____TtCC12CoreAudioKit15CAAUEQGraphView27ControlAccessibilityElement_type] == 1)
  {
    v15 = &OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_yAxis;
  }

  else
  {
    v15 = &OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_xAxis;
  }

  v16 = *&v10[*v15];
  sub_237183E14(v16, v11);
  v18 = v17;
  sub_237183E14(v16, v14);
  v20 = v19;
  v21 = v43;
  v22 = v44;
  __swift_project_boxed_opaque_existential_0(v42, v43);
  v23 = (*(*(*(v22 + 8) + 8) + 8))(*&v2[v6], v21);
  sub_237183E14(v16, v23);
  sub_237183B90(v16, (v20 - v18) * 0.05 + v24);
  if (v14 >= v25)
  {
    v14 = v25;
  }

  v26 = v43;
  v27 = v44;
  __swift_project_boxed_opaque_existential_0(v42, v43);
  (*(*(*(v27 + 8) + 8) + 40))(*&v2[v6], v26, v14);
  v28 = *&v2[v6];
  v29 = OBJC_IVAR____TtC12CoreAudioKit15CAAUEQGraphView_paramCache;
  swift_beginAccess();
  v30 = *&v10[v29];
  if (!*(v30 + 16))
  {
    __break(1u);
    goto LABEL_16;
  }

  v31 = sub_2371906E0(v28);
  if ((v32 & 1) == 0)
  {
LABEL_16:
    __break(1u);
    return;
  }

  sub_237114D0C(*(v30 + 56) + 32 * v31, v39);
  sub_23711BDA4(v39, &v40);
  type metadata accessor for CAAUFilterControl();
  swift_dynamicCast();
  sub_237178FFC(v28, v14);
  v33 = v43;
  v34 = v44;
  __swift_project_boxed_opaque_existential_0(v42, v43);
  (*(*(*(v34 + 8) + 8) + 32))(*&v2[v6], v33);
  v35 = sub_23719653C();

  [v2 setAccessibilityValue_];

  v36 = *&v38[OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_controlLayer];
  if (v36)
  {
    v37 = v36;
    [v37 frame];
    [v2 setAccessibilityFrameInContainerSpace_];
  }

  sub_23716A494();

  __swift_destroy_boxed_opaque_existential_0(v42);
}

void sub_23716B160()
{
  v1 = *&v0[OBJC_IVAR____TtCC12CoreAudioKit15CAAUEQGraphView27ControlAccessibilityElement_owner];
  if (!v1)
  {
    return;
  }

  v2 = v0;
  v3 = OBJC_IVAR____TtC12CoreAudioKit15CAAUEQGraphView_dataSource;
  swift_beginAccess();
  sub_23716E1E4(v1 + v3, &v40);
  if (!v41)
  {
    sub_237120D04(&v40, &qword_27DE94720, &unk_23719AFE0);
    return;
  }

  sub_237120C7C(&v40, v42);
  v4 = v43;
  v5 = v44;
  __swift_project_boxed_opaque_existential_0(v42, v43);
  v6 = OBJC_IVAR____TtCC12CoreAudioKit15CAAUEQGraphView27ControlAccessibilityElement_param;
  v7 = *&v2[OBJC_IVAR____TtCC12CoreAudioKit15CAAUEQGraphView27ControlAccessibilityElement_param];
  v8 = *(*(v5 + 8) + 8);
  v9 = *(v8 + 16);
  v10 = v1;
  v11 = v9(v7, v4, v8);
  v12 = v43;
  v13 = v44;
  __swift_project_boxed_opaque_existential_0(v42, v43);
  v14 = (*(*(*(v13 + 8) + 8) + 24))(*&v2[v6], v12);
  if (v2[OBJC_IVAR____TtCC12CoreAudioKit15CAAUEQGraphView27ControlAccessibilityElement_type] == 1)
  {
    v15 = &OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_yAxis;
  }

  else
  {
    v15 = &OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_xAxis;
  }

  v16 = *&v10[*v15];
  sub_237183E14(v16, v11);
  v18 = v17;
  sub_237183E14(v16, v14);
  v20 = v19;
  v21 = v43;
  v22 = v44;
  __swift_project_boxed_opaque_existential_0(v42, v43);
  v23 = (*(*(*(v22 + 8) + 8) + 8))(*&v2[v6], v21);
  sub_237183E14(v16, v23);
  sub_237183B90(v16, v24 + (v20 - v18) * -0.05);
  if (v25 >= v11)
  {
    v11 = v25;
  }

  v26 = v43;
  v27 = v44;
  __swift_project_boxed_opaque_existential_0(v42, v43);
  (*(*(*(v27 + 8) + 8) + 40))(*&v2[v6], v26, v11);
  v28 = *&v2[v6];
  v29 = OBJC_IVAR____TtC12CoreAudioKit15CAAUEQGraphView_paramCache;
  swift_beginAccess();
  v30 = *&v10[v29];
  if (!*(v30 + 16))
  {
    __break(1u);
    goto LABEL_16;
  }

  v31 = sub_2371906E0(v28);
  if ((v32 & 1) == 0)
  {
LABEL_16:
    __break(1u);
    return;
  }

  sub_237114D0C(*(v30 + 56) + 32 * v31, v39);
  sub_23711BDA4(v39, &v40);
  type metadata accessor for CAAUFilterControl();
  swift_dynamicCast();
  sub_237178FFC(v28, v11);
  v33 = v43;
  v34 = v44;
  __swift_project_boxed_opaque_existential_0(v42, v43);
  (*(*(*(v34 + 8) + 8) + 32))(*&v2[v6], v33);
  v35 = sub_23719653C();

  [v2 setAccessibilityValue_];

  v36 = *&v38[OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_controlLayer];
  if (v36)
  {
    v37 = v36;
    [v37 frame];
    [v2 setAccessibilityFrameInContainerSpace_];
  }

  sub_23716A494();

  __swift_destroy_boxed_opaque_existential_0(v42);
}

id sub_23716B59C(void *a1)
{
  v3 = MEMORY[0x277D84F90];
  *&v1[OBJC_IVAR____TtC12CoreAudioKit15CAAUEQGraphView_controlList] = MEMORY[0x277D84F90];
  v4 = OBJC_IVAR____TtC12CoreAudioKit15CAAUEQGraphView_paramCache;
  *&v1[v4] = sub_23711A418(v3);
  *&v1[OBJC_IVAR____TtC12CoreAudioKit15CAAUEQGraphView_accessibleElements] = v3;
  v5 = &v1[OBJC_IVAR____TtC12CoreAudioKit15CAAUEQGraphView_dataSource];
  *v5 = 0u;
  *(v5 + 1) = 0u;
  *(v5 + 4) = 0;
  *&v1[OBJC_IVAR____TtC12CoreAudioKit15CAAUEQGraphView_curve] = 0;
  *&v1[OBJC_IVAR____TtC12CoreAudioKit15CAAUEQGraphView_gradientLayer] = 0;
  *&v1[OBJC_IVAR____TtC12CoreAudioKit15CAAUEQGraphView_activePointIndex] = -1;
  v1[OBJC_IVAR____TtC12CoreAudioKit15CAAUEQGraphView_drawActivePointOnly] = 0;
  v1[OBJC_IVAR____TtC12CoreAudioKit15CAAUEQGraphView_plotActiveRangeOnly] = 0;
  v6 = OBJC_IVAR____TtC12CoreAudioKit15CAAUEQGraphView_touchedParts;
  *&v1[v6] = sub_23711A534(v3);
  v9.receiver = v1;
  v9.super_class = type metadata accessor for CAAUEQGraphView();
  v7 = objc_msgSendSuper2(&v9, sel_initWithCoder_, a1);

  if (v7)
  {
  }

  return v7;
}

id sub_23716B6CC(double a1, double a2, double a3, double a4)
{
  v9 = MEMORY[0x277D84F90];
  *&v4[OBJC_IVAR____TtC12CoreAudioKit15CAAUEQGraphView_controlList] = MEMORY[0x277D84F90];
  v10 = OBJC_IVAR____TtC12CoreAudioKit15CAAUEQGraphView_paramCache;
  *&v4[v10] = sub_23711A418(v9);
  *&v4[OBJC_IVAR____TtC12CoreAudioKit15CAAUEQGraphView_accessibleElements] = v9;
  v11 = &v4[OBJC_IVAR____TtC12CoreAudioKit15CAAUEQGraphView_dataSource];
  *v11 = 0u;
  *(v11 + 1) = 0u;
  *(v11 + 4) = 0;
  *&v4[OBJC_IVAR____TtC12CoreAudioKit15CAAUEQGraphView_curve] = 0;
  *&v4[OBJC_IVAR____TtC12CoreAudioKit15CAAUEQGraphView_gradientLayer] = 0;
  *&v4[OBJC_IVAR____TtC12CoreAudioKit15CAAUEQGraphView_activePointIndex] = -1;
  v4[OBJC_IVAR____TtC12CoreAudioKit15CAAUEQGraphView_drawActivePointOnly] = 0;
  v4[OBJC_IVAR____TtC12CoreAudioKit15CAAUEQGraphView_plotActiveRangeOnly] = 0;
  v12 = OBJC_IVAR____TtC12CoreAudioKit15CAAUEQGraphView_touchedParts;
  *&v4[v12] = sub_23711A534(v9);
  v14.receiver = v4;
  v14.super_class = type metadata accessor for CAAUEQGraphView();
  return objc_msgSendSuper2(&v14, sel_initWithFrame_, a1, a2, a3, a4);
}

void sub_23716B88C(uint64_t a1)
{
  v2 = v1;
  v57.receiver = v1;
  v57.super_class = type metadata accessor for CAAUEQGraphView();
  objc_msgSendSuper2(&v57, sel_tintColorDidChange);
  v3 = *&v1[OBJC_IVAR____TtC12CoreAudioKit15CAAUEQGraphView_curve];
  if (v3)
  {
    v4 = v3;
    v5 = [v1 tintColor];
    if (v5)
    {
      v6 = v5;
      v7 = [v5 colorWithAlphaComponent_];

      v8 = [v7 CGColor];
    }

    else
    {
      v8 = 0;
    }

    [v4 setFillColor_];
  }

  v9 = OBJC_IVAR____TtC12CoreAudioKit15CAAUEQGraphView_controlList;
  swift_beginAccess();
  v10 = *&v2[v9];
  v11 = *(v10 + 16);
  v48 = v10;

  v47 = v11;
  if (v11)
  {
    v12 = 0;
    v46 = v2;
    while (1)
    {
      if (v12 >= *(v48 + 16))
      {
        goto LABEL_53;
      }

      v13 = *(v48 + 32 + 8 * v12);
      if (!*(v13 + 16))
      {
        goto LABEL_54;
      }

      v14 = sub_2371905D4(0x6C6F72746E6F63, 0xE700000000000000);
      if ((v15 & 1) == 0)
      {
        goto LABEL_55;
      }

      sub_237114D0C(*(v13 + 56) + 32 * v14, v55);
      sub_23711BDA4(v55, &v56);
      type metadata accessor for CAAUFilterControl();
      swift_dynamicCast();
      v16 = [v2 tintColor];
      if (!v16)
      {
        goto LABEL_58;
      }

      v17 = v16;

      v18 = OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_points;
      swift_beginAccess();
      v19 = *&v54[v18];
      if (v19 >> 62)
      {
        break;
      }

      v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v20)
      {
        goto LABEL_16;
      }

LABEL_50:

LABEL_9:
      if (++v12 == v47)
      {
        goto LABEL_51;
      }
    }

    v45 = *&v54[v18];
    v20 = sub_2371969FC();
    v19 = v45;
    if (!v20)
    {
      goto LABEL_50;
    }

LABEL_16:
    if (v20 < 1)
    {
      goto LABEL_56;
    }

    v49 = v12;
    v53 = v19 & 0xC000000000000001;
    v50 = v19 + 32;
    v51 = v19;

    v21 = 0;
    v52 = v20;
    while (1)
    {
      if (v53)
      {
        v22 = MEMORY[0x2383C62A0](v21, v51);
      }

      else
      {
        v22 = *(v50 + 8 * v21);
      }

      v23 = v22;
      v24 = [v17 colorWithAlphaComponent_];
      v25 = [v24 CGColor];

      objc_opt_self();
      v26 = swift_dynamicCastObjCClass();
      if (v26)
      {
        v27 = v26;
        v28 = v23;
        [v27 setFillColor_];
      }

      else
      {
        [v23 setBackgroundColor_];
      }

      v29 = [v23 sublayers];
      if (!v29)
      {
        goto LABEL_57;
      }

      v30 = v29;
      sub_237115094(0, &qword_27DE95590, 0x277CD9ED0);
      v31 = sub_23719663C();

      if (!(v31 >> 62))
      {
        v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v32)
        {
          break;
        }

        goto LABEL_18;
      }

      v32 = sub_2371969FC();
      if (v32)
      {
        break;
      }

LABEL_18:
      ++v21;

      if (v21 == v52)
      {

        v2 = v46;
        v12 = v49;
        goto LABEL_9;
      }
    }

    if (v32 >= 1)
    {
      v33 = 0;
      while (1)
      {
        if ((v31 & 0xC000000000000001) != 0)
        {
          v35 = MEMORY[0x2383C62A0](v33, v31);
        }

        else
        {
          v35 = *(v31 + 8 * v33 + 32);
        }

        v36 = v35;
        v37 = [v35 name];
        if (v37)
        {
          v38 = v37;
          v39 = sub_23719657C();
          v41 = v40;

          if (v39 == 0x7265746E6543 && v41 == 0xE600000000000000)
          {

LABEL_43:
            v34 = [v17 CGColor];
            objc_opt_self();
            v44 = swift_dynamicCastObjCClass();
            if (v44)
            {
              [v44 setFillColor_];
            }

            else
            {
              [v36 setBackgroundColor_];
            }

            goto LABEL_31;
          }

          v43 = sub_237196A7C();

          if (v43)
          {
            goto LABEL_43;
          }
        }

        v34 = v36;
LABEL_31:
        ++v33;

        if (v32 == v33)
        {
          goto LABEL_18;
        }
      }
    }

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
    __break(1u);
  }

  else
  {
LABEL_51:
  }
}

char *sub_23716BEA8()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC12CoreAudioKit15CAAUEQGraphView_accessibleElements;
  swift_beginAccess();
  v3 = *&v0[v2];
  if (v3 >> 62)
  {
    v4 = sub_2371969FC();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = OBJC_IVAR____TtC12CoreAudioKit15CAAUEQGraphView_controlList;
  swift_beginAccess();
  v6 = *&v1[v5];
  v7 = *(v6 + 16);
  if (v4 != v7 && v7 != 0)
  {

    v9 = 32;
    do
    {
      v10 = *(v6 + v9);
      if (*(v10 + 16))
      {

        v11 = sub_2371905D4(0x6C6F72746E6F63, 0xE700000000000000);
        if (v12)
        {
          sub_237114D0C(*(v10 + 56) + 32 * v11, v33);

          type metadata accessor for CAAUFilterControl();
          if (swift_dynamicCast())
          {
            v13 = *&v32[OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_param1];
            if (v13 != -1)
            {
              v14 = objc_allocWithZone(type metadata accessor for CAAUEQGraphView.ControlAccessibilityElement());
              sub_23716AAF0(v1, v13, 0);
              v16 = v15;
              swift_beginAccess();
              v17 = v16;
              MEMORY[0x2383C5F60]();
              if (*((*&v1[v2] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v1[v2] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_23719664C();
              }

              sub_23719665C();
              swift_endAccess();
            }

            v18 = *&v32[OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_param2];
            if (v18 != -1)
            {
              v19 = objc_allocWithZone(type metadata accessor for CAAUEQGraphView.ControlAccessibilityElement());
              sub_23716AAF0(v1, v18, 1);
              v21 = v20;
              swift_beginAccess();
              v22 = v21;
              MEMORY[0x2383C5F60]();
              if (*((*&v1[v2] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v1[v2] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_23719664C();
              }

              sub_23719665C();
              swift_endAccess();
            }

            v23 = *&v32[OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_param3];
            if (v23 == -1)
            {
            }

            else
            {
              v24 = objc_allocWithZone(type metadata accessor for CAAUEQGraphView.ControlAccessibilityElement());
              sub_23716AAF0(v1, v23, 2);
              v26 = v25;
              swift_beginAccess();
              v27 = v26;
              MEMORY[0x2383C5F60]();
              if (*((*&v1[v2] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v1[v2] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_23719664C();
              }

              sub_23719665C();
              swift_endAccess();
            }
          }
        }

        else
        {
        }
      }

      v9 += 8;
      --v7;
    }

    while (v7);
  }

  v30 = sub_237167BD8(v28, v29, type metadata accessor for CAAUEQGraphView.ControlAccessibilityElement);

  return v30;
}

id sub_23716C27C()
{
  result = [v0 tintColor];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

void sub_23716C2B0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_237115094(0, &qword_27DE94790, 0x277D75C68);
  v58 = a1;
  sub_237114F70();
  v6 = sub_2371966CC();
  v65.receiver = v3;
  v65.super_class = type metadata accessor for CAAUEQGraphView();
  objc_msgSendSuper2(&v65, sel_touchesBegan_withEvent_, v6, a2);

  v7 = *&v3[OBJC_IVAR____TtC12CoreAudioKit15CAAUEQGraphView_curve];
  if (v7)
  {
    v8 = v7;
    v9 = [v3 tintColor];
    if (v9)
    {
      v10 = v9;
      v11 = [v9 colorWithAlphaComponent_];

      v12 = [v11 CGColor];
    }

    else
    {
      v12 = 0;
    }

    [v8 setFillColor_];

    v13 = OBJC_IVAR____TtC12CoreAudioKit15CAAUEQGraphView_activePointIndex;
    v14 = *&v3[OBJC_IVAR____TtC12CoreAudioKit15CAAUEQGraphView_activePointIndex];
    if ((v14 & 0x8000000000000000) != 0)
    {
      v43 = OBJC_IVAR____TtC12CoreAudioKit15CAAUEQGraphView_controlList;
      swift_beginAccess();
      v44 = 0;
      v45 = *(*&v3[v43] + 16);
      while (v45 != v44)
      {
        v46 = *&v3[v43];
        if (v44 >= *(v46 + 16))
        {
          goto LABEL_47;
        }

        v47 = *(v46 + 8 * v44 + 32);
        if (!*(v47 + 16))
        {
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
          goto LABEL_50;
        }

        v48 = sub_2371905D4(0x6C6F72746E6F63, 0xE700000000000000);
        v50 = v49;

        if ((v50 & 1) == 0)
        {
          goto LABEL_49;
        }

        sub_237114D0C(*(v47 + 56) + 32 * v48, v61);

        sub_23711BDA4(v61, &v66);
        type metadata accessor for CAAUFilterControl();
        swift_dynamicCast();
        v51 = v64;
        v52 = sub_23716C910(v64, v58, v3);

        ++v44;
        if (v52)
        {
          return;
        }
      }
    }

    else
    {
      sub_237169FB8(v14);
      v55 = v15;
      if ((sub_23716C910(v15, v58, v3) & 1) == 0)
      {
        v59 = v3;
        v16 = OBJC_IVAR____TtC12CoreAudioKit15CAAUEQGraphView_controlList;
        swift_beginAccess();
        v17 = v59;
        v18 = *(*(v59 + v16) + 16);
        if (v18)
        {
          v19 = 0;
          v53 = xmmword_23719B020;
          v56 = *(*(v59 + v16) + 16);
          v57 = v13;
          while (1)
          {
            if (v19 == *(v17 + v13))
            {
              goto LABEL_11;
            }

            sub_237169FB8(v19);
            v60 = v20;
            if ((v58 & 0xC000000000000001) != 0)
            {
              swift_unknownObjectRetain();
              sub_23719687C();
              sub_2371966EC();
              v22 = *(&v66 + 1);
              v21 = v66;
              v23 = v67;
              v24 = v68;
              v25 = v69;
            }

            else
            {
              v21 = v58;
              v26 = -1 << *(v58 + 32);
              v23 = ~v26;
              v27 = -v26;
              v28 = v27 < 64 ? ~(-1 << v27) : -1;
              v25 = v28 & *(v58 + 56);

              v24 = 0;
              v22 = v58 + 56;
            }

            if (v21 < 0)
            {
              break;
            }

            while (1)
            {
              v29 = v24;
              v30 = v25;
              for (i = v24; !v30; ++v29)
              {
                i = v29 + 1;
                if (__OFADD__(v29, 1))
                {
                  __break(1u);
LABEL_47:
                  __break(1u);
                  goto LABEL_48;
                }

                if (i >= ((v23 + 64) >> 6))
                {
                  goto LABEL_9;
                }

                v30 = *(v22 + 8 * i);
              }

              v32 = (v30 - 1) & v30;
              v33 = *(*(v21 + 48) + ((i << 9) | (8 * __clz(__rbit64(v30)))));
              if (!v33)
              {
                break;
              }

LABEL_28:
              [v33 locationInView_];
              sub_237179E20(v35, v36);
              if (v37 != 10 && v37 != 0)
              {
                sub_23716A350(v19);
                v39 = [objc_opt_self() defaultCenter];
                v40 = v39;
                if (qword_27DE94670 != -1)
                {
                  swift_once();
                }

                v54 = qword_27DE96920;
                __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE94E30, &unk_23719B100);
                inited = swift_initStackObject();
                *(inited + 16) = v53;
                v62 = 0x6F697463656C6573;
                v63 = 0xE90000000000006ELL;
                sub_23719690C();
                *(inited + 96) = MEMORY[0x277D83B88];
                *(inited + 72) = v19;
                sub_237119F04(inited);
                swift_setDeallocating();
                sub_237120D04(inited + 32, &qword_27DE948B0, &unk_23719B510);
                v42 = sub_23719651C();

                [v40 postNotificationName:v54 object:v59 userInfo:v42];

                sub_23716C910(v60, v58, v59);
                sub_23716E254(v21);
                v17 = v59;
                goto LABEL_10;
              }

              v24 = i;
              v25 = v32;
              if (v21 < 0)
              {
                goto LABEL_26;
              }
            }

LABEL_9:
            sub_23716E254(v21);

            v17 = v59;
LABEL_10:
            v18 = v56;
            v13 = v57;
LABEL_11:
            if (++v19 == v18)
            {
              goto LABEL_38;
            }
          }

LABEL_26:
          v34 = sub_2371968CC();
          if (!v34)
          {
            goto LABEL_9;
          }

          v64 = v34;
          swift_dynamicCast();
          v33 = v62;
          i = v24;
          v32 = v25;
          if (!v62)
          {
            goto LABEL_9;
          }

          goto LABEL_28;
        }
      }

LABEL_38:
    }
  }

  else
  {
LABEL_50:
    __break(1u);
  }
}

uint64_t sub_23716C910(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = a2;
  if ((a2 & 0xC000000000000001) == 0)
  {
    v13 = -1 << *(a2 + 32);
    v8 = a2 + 56;
    v9 = ~v13;
    v14 = -v13;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v11 = v15 & *(a2 + 56);

    v10 = 0;
    if (v11)
    {
      goto LABEL_4;
    }

LABEL_9:
    v16 = v10;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v17 >= ((v9 + 64) >> 6))
      {
        goto LABEL_26;
      }

      v18 = *(v8 + 8 * v17);
      ++v16;
      if (v18)
      {
        v12 = __clz(__rbit64(v18)) | (v17 << 6);
        goto LABEL_14;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  swift_unknownObjectRetain();
  sub_23719687C();
  v4 = sub_237115094(0, &qword_27DE94790, 0x277D75C68);
  sub_237114F70();
  sub_2371966EC();
  v6 = v42;
  v8 = v43;
  v9 = v44;
  v10 = v45;
  v11 = v46;
  if (v42 < 0)
  {
    if (sub_2371968CC())
    {
      swift_dynamicCast();
      v4 = v41;
      if (v41)
      {
        goto LABEL_15;
      }
    }

LABEL_26:
    sub_23716E254(v6);
    return 0;
  }

  if (!v46)
  {
    goto LABEL_9;
  }

LABEL_4:
  v12 = __clz(__rbit64(v11)) | (v10 << 6);
LABEL_14:
  v4 = *(*(v6 + 48) + 8 * v12);
  if (!v4)
  {
    goto LABEL_26;
  }

LABEL_15:
  [v4 locationInView_];
  sub_237179E20(v19, v20);
  if (!v21 || v21 == 10)
  {
    sub_23716E254(v6);

    return 0;
  }

  v39 = v21;
  v3 = sub_23717CAAC(v21);
  if (*(v3 + 16))
  {
    v37 = objc_opt_self();
    v35 = [v37 defaultCenter];
    if (qword_27DE94650 == -1)
    {
LABEL_23:
      v32 = qword_27DE96900;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE94E30, &unk_23719B100);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_23719B020;
      sub_23719690C();
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE94E68, &qword_23719B9D8);
      *(inited + 96) = v34;
      *(inited + 72) = v3;

      sub_237119F04(inited);
      v33 = v3;
      swift_setDeallocating();
      sub_237120D04(inited + 32, &qword_27DE948B0, &unk_23719B510);
      v24 = sub_23719651C();

      [v35 postNotificationName:v32 object:a3 userInfo:v24];

      v38 = [v37 defaultCenter];
      if (qword_27DE94660 != -1)
      {
        swift_once();
      }

      v36 = qword_27DE96910;
      v25 = swift_initStackObject();
      *(v25 + 16) = xmmword_23719B020;
      sub_23719690C();
      *(v25 + 96) = v34;
      *(v25 + 72) = v33;
      sub_237119F04(v25);
      swift_setDeallocating();
      sub_237120D04(v25 + 32, &qword_27DE948B0, &unk_23719B510);
      v26 = sub_23719651C();

      [v38 postNotificationName:v36 object:a3 userInfo:v26];

      goto LABEL_28;
    }

LABEL_30:
    swift_once();
    goto LABEL_23;
  }

LABEL_28:
  v27 = OBJC_IVAR____TtC12CoreAudioKit15CAAUEQGraphView_touchedParts;
  swift_beginAccess();
  v28 = a1;
  v29 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v40 = *(a3 + v27);
  *(a3 + v27) = 0x8000000000000000;
  sub_23718E918(v28, v39, v29, isUniquelyReferenced_nonNull_native, v31);

  *(a3 + v27) = v40;
  swift_endAccess();
  sub_23717AFC0(v39, 1);

  sub_23716E254(v6);
  return 1;
}

void sub_23716CEA8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_237115094(0, &qword_27DE94790, 0x277D75C68);
  sub_237114F70();
  v6 = sub_2371966CC();
  v52.receiver = v2;
  v52.super_class = type metadata accessor for CAAUEQGraphView();
  objc_msgSendSuper2(&v52, sel_touchesEnded_withEvent_, v6, a2);

  v7 = *&v2[OBJC_IVAR____TtC12CoreAudioKit15CAAUEQGraphView_curve];
  if (v7)
  {
    v8 = v7;
    v9 = [v2 tintColor];
    if (v9)
    {
      v10 = v9;
      v11 = a1;
      v12 = [v9 colorWithAlphaComponent_];

      v13 = [v12 CGColor];
      a1 = v11;
    }

    else
    {
      v13 = 0;
    }

    [v8 setFillColor_];

    if ((a1 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      sub_23719687C();
      sub_2371966EC();
      a1 = v53;
      v14 = v54;
      v15 = v55;
      v16 = v56;
      v17 = v57;
    }

    else
    {
      v18 = -1 << *(a1 + 32);
      v14 = a1 + 56;
      v15 = ~v18;
      v19 = -v18;
      if (v19 < 64)
      {
        v20 = ~(-1 << v19);
      }

      else
      {
        v20 = -1;
      }

      v17 = v20 & *(a1 + 56);

      v16 = 0;
    }

    v21 = (v15 + 64) >> 6;
    v44 = a1;
    v45 = v2;
    while (1)
    {
      if (a1 < 0)
      {
        if (!sub_2371968CC() || (swift_dynamicCast(), v27 = v51, v25 = v16, v26 = v17, !v51))
        {
LABEL_34:
          sub_23716E254(a1);
          return;
        }
      }

      else
      {
        v23 = v16;
        v24 = v17;
        v25 = v16;
        if (!v17)
        {
          while (1)
          {
            v25 = v23 + 1;
            if (__OFADD__(v23, 1))
            {
              break;
            }

            if (v25 >= v21)
            {
              goto LABEL_34;
            }

            v24 = *(v14 + 8 * v25);
            ++v23;
            if (v24)
            {
              goto LABEL_21;
            }
          }

          __break(1u);
          goto LABEL_36;
        }

LABEL_21:
        v26 = (v24 - 1) & v24;
        v27 = *(*(a1 + 48) + ((v25 << 9) | (8 * __clz(__rbit64(v24)))));
        if (!v27)
        {
          goto LABEL_34;
        }
      }

      v28 = OBJC_IVAR____TtC12CoreAudioKit15CAAUEQGraphView_touchedParts;
      swift_beginAccess();
      v29 = *&v3[v28];
      if (!*(v29 + 16))
      {
        goto LABEL_14;
      }

      v31 = sub_23719082C(v27, v30);
      if (v32)
      {
        break;
      }

LABEL_15:
      v16 = v25;
      v17 = v26;
    }

    v33 = *(v29 + 56) + 16 * v31;
    v34 = *(v33 + 8);
    v35 = *v33;

    v50 = v35;
    v36 = sub_23717CAAC(v34);
    if (*(v36 + 16))
    {
      v49 = v34;
      v48 = objc_opt_self();
      v37 = [v48 defaultCenter];
      if (qword_27DE94658 != -1)
      {
        swift_once();
      }

      v46 = qword_27DE96908;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE94E30, &unk_23719B100);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_23719B020;
      sub_23719690C();
      v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE95390, &qword_23719C038);
      *(inited + 96) = v47;
      *(inited + 72) = v36;

      sub_237119F04(inited);
      swift_setDeallocating();
      sub_237120D04(inited + 32, &qword_27DE948B0, &unk_23719B510);
      v39 = sub_23719651C();

      v3 = v45;
      [v37 postNotificationName:v46 object:v45 userInfo:v39];

      v40 = [v48 defaultCenter];
      if (qword_27DE94668 != -1)
      {
        swift_once();
      }

      v41 = qword_27DE96918;
      v42 = swift_initStackObject();
      *(v42 + 16) = xmmword_23719B020;
      v51 = 0x7344496D61726170;
      sub_23719690C();
      *(v42 + 96) = v47;
      *(v42 + 72) = v36;
      sub_237119F04(v42);
      swift_setDeallocating();
      sub_237120D04(v42 + 32, &qword_27DE948B0, &unk_23719B510);
      v43 = sub_23719651C();

      [v40 postNotificationName:v41 object:v45 userInfo:v43];

      a1 = v44;
      v34 = v49;
    }

    else
    {
    }

    v22 = v50;
    sub_23717AFC0(v34, 0);

LABEL_14:
    goto LABEL_15;
  }

LABEL_36:
  __break(1u);
}

uint64_t sub_23716D4D8(void *a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(uint64_t, void *))
{
  sub_237115094(0, &qword_27DE94790, 0x277D75C68);
  sub_237114F70();
  v8 = sub_2371966DC();
  v9 = a4;
  v10 = a1;
  a5(v8, a4);
}

void sub_23716D688(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_237115094(0, &qword_27DE94790, 0x277D75C68);
  sub_237114F70();
  v6 = sub_2371966CC();
  v32.receiver = v2;
  v32.super_class = type metadata accessor for CAAUEQGraphView();
  objc_msgSendSuper2(&v32, sel_touchesMoved_withEvent_, v6, a2);

  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_23719687C();
    sub_2371966EC();
    a1 = v33;
    v7 = v34;
    v8 = v35;
    v9 = v36;
    v10 = v37;
  }

  else
  {
    v11 = -1 << *(a1 + 32);
    v7 = a1 + 56;
    v8 = ~v11;
    v12 = -v11;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v10 = v13 & *(a1 + 56);

    v9 = 0;
  }

  v14 = (v8 + 64) >> 6;
  while (a1 < 0)
  {
    if (!sub_2371968CC() || (swift_dynamicCast(), v25 = v31, v23 = v9, v24 = v10, !v31))
    {
LABEL_23:
      sub_23716E254(a1);
      return;
    }

LABEL_20:
    v26 = OBJC_IVAR____TtC12CoreAudioKit15CAAUEQGraphView_touchedParts;
    swift_beginAccess();
    v27 = *&v3[v26];
    if (!*(v27 + 16))
    {
      goto LABEL_9;
    }

    v29 = sub_23719082C(v25, v28);
    if (v30)
    {
      v15 = *(v27 + 56) + 16 * v29;
      v16 = *(v15 + 8);
      v17 = *v15;

      v18 = v17;
      [v25 locationInView_];
      sub_23717C5D8(v16, v19, v20);

LABEL_9:
      goto LABEL_10;
    }

LABEL_10:
    v9 = v23;
    v10 = v24;
  }

  v21 = v9;
  v22 = v10;
  v23 = v9;
  if (v10)
  {
LABEL_16:
    v24 = (v22 - 1) & v22;
    v25 = *(*(a1 + 48) + ((v23 << 9) | (8 * __clz(__rbit64(v22)))));
    if (!v25)
    {
      goto LABEL_23;
    }

    goto LABEL_20;
  }

  while (1)
  {
    v23 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v23 >= v14)
    {
      goto LABEL_23;
    }

    v22 = *(v7 + 8 * v23);
    ++v21;
    if (v22)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
}

void sub_23716D938(uint64_t a1)
{
  v2 = v1;
  [v1 frame];
  if (CGRectGetWidth(v37) >= 500.0)
  {
    if (!*(v1 + OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_offsetXLabels))
    {
      goto LABEL_7;
    }

    v4 = 0;
    v5 = 28.0;
  }

  else
  {
    if (*(v1 + OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_offsetXLabels))
    {
      goto LABEL_7;
    }

    v4 = 1;
    v5 = 40.0;
  }

  *(v1 + OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_offsetXLabels) = v4;
  *(v1 + OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_margins + 16) = v5;
  v6 = objc_opt_self();
  [v6 begin];
  v7 = [v6 setDisableActions_];
  (*((*MEMORY[0x277D85000] & *v1) + 0x388))(v7);
  [v6 commit];
LABEL_7:
  v36.receiver = v1;
  v36.super_class = type metadata accessor for CAAUEQGraphView();
  objc_msgSendSuper2(&v36, sel_layoutSublayersOfLayer_, a1);
  sub_23716A494();
  v8 = OBJC_IVAR____TtC12CoreAudioKit15CAAUEQGraphView_controlList;
  swift_beginAccess();
  v9 = *(*(v1 + v8) + 16);
  if (v9)
  {
    v10 = 0;
    while (1)
    {
      v11 = *(v2 + v8);
      if (v10 >= *(v11 + 16))
      {
        break;
      }

      v12 = *(v11 + 8 * v10 + 32);
      if (!*(v12 + 16))
      {
        goto LABEL_23;
      }

      v13 = sub_2371905D4(0x6C6F72746E6F63, 0xE700000000000000);
      v15 = v14;

      if ((v15 & 1) == 0)
      {
        goto LABEL_24;
      }

      sub_237114D0C(*(v12 + 56) + 32 * v13, v34);

      sub_23711BDA4(v34, &v35);
      type metadata accessor for CAAUFilterControl();
      swift_dynamicCast();
      v16 = OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_param1;
      v17 = *&v33[OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_param1];
      if (v17 != -1)
      {
        v19 = *&v33[OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_dataSource + 24];
        v18 = *&v33[OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_dataSource + 32];
        __swift_project_boxed_opaque_existential_0(&v33[OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_dataSource], v19);
        v20 = (*(*(*(v18 + 8) + 8) + 8))(v17, v19);
        sub_237178FFC(v17, v20);
        sub_237179568(*&v33[v16]);
      }

      v21 = OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_param2;
      v22 = *&v33[OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_param2];
      if (v22 != -1)
      {
        v24 = *&v33[OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_dataSource + 24];
        v23 = *&v33[OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_dataSource + 32];
        __swift_project_boxed_opaque_existential_0(&v33[OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_dataSource], v24);
        v25 = (*(*(*(v23 + 8) + 8) + 8))(v22, v24);
        sub_237178FFC(v22, v25);
        sub_237179568(*&v33[v21]);
      }

      v26 = OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_param3;
      v27 = *&v33[OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_param3];
      if (v27 != -1)
      {
        v29 = *&v33[OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_dataSource + 24];
        v28 = *&v33[OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_dataSource + 32];
        __swift_project_boxed_opaque_existential_0(&v33[OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_dataSource], v29);
        v30 = (*(*(*(v28 + 8) + 8) + 8))(v27, v29);
        sub_237178FFC(v27, v30);
        sub_237179568(*&v33[v26]);
      }

      v31 = *&v33[OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_controlLayer];
      if (v31)
      {
        v32 = v31;
        sub_23717A680(v32);
        sub_237179214();
      }

      ++v10;

      if (v9 == v10)
      {
        return;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }
}

uint64_t sub_23716DD84()
{

  sub_237120D04(v0 + OBJC_IVAR____TtC12CoreAudioKit15CAAUEQGraphView_dataSource, &qword_27DE94720, &unk_23719AFE0);
}

id sub_23716DE3C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t getEnumTagSinglePayload for CAAUEQGraphView.controlType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CAAUEQGraphView.controlType(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_23716E0BC()
{
  result = qword_27DE95388;
  if (!qword_27DE95388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE95388);
  }

  return result;
}

CGFloat sub_23716E110()
{
  v1 = *v0;
  [*(*v0 + OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_graphLayer) frame];
  return CGRectGetWidth(v3) / (*(*(v1 + OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_xAxis) + OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_gridLineCount) + 1.0) * 0.5;
}

uint64_t sub_23716E1E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE94720, &unk_23719AFE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

char *sub_23716E25C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_23716E29C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_23716E27C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_23716E3AC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_23716E29C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE949B0, &qword_23719B320);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_23716E3AC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE949A8, &qword_23719B318);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

double sub_23716E4CC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_2371905D4(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_237192EA4();
      v10 = v12;
    }

    sub_23711BDA4((*(v10 + 56) + 32 * v8), a3);
    sub_23718E0AC(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

id sub_23716E574()
{
  v1 = OBJC_IVAR____TtC12CoreAudioKit21AUDelayViewController____lazy_storage___decimalFormatter;
  v2 = *(v0 + OBJC_IVAR____TtC12CoreAudioKit21AUDelayViewController____lazy_storage___decimalFormatter);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC12CoreAudioKit21AUDelayViewController____lazy_storage___decimalFormatter);
  }

  else
  {
    v4 = sub_23716E5D8(1);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_23716E5D8(uint64_t a1)
{
  v2 = sub_23719639C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
  [v7 setGeneratesDecimalNumbers_];
  [v7 setMaximumFractionDigits_];
  [v7 setMinimumFractionDigits_];
  v8 = [objc_opt_self() currentLocale];
  sub_23719637C();

  v9 = sub_23719635C();
  (*(v3 + 8))(v6, v2);
  [v7 setLocale_];

  return v7;
}

void sub_23716E744(uint64_t a1)
{
  v2 = v1;
  v240.receiver = v1;
  v240.super_class = type metadata accessor for AUDelayViewController();
  objc_msgSendSuper2(&v240, sel_viewDidLoad);
  v3 = *&v1[OBJC_IVAR____TtC12CoreAudioKit21AUDelayViewController_headerView];
  v4 = [v1 view];
  if (!v4)
  {
    __break(1u);
    goto LABEL_29;
  }

  v5 = v4;
  [v4 frame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v241.origin.x = v7;
  v241.origin.y = v9;
  v241.size.width = v11;
  v241.size.height = v13;
  [v3 setFrame_];
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  v14 = *&v1[OBJC_IVAR____TtC12CoreAudioKit21AUDelayViewController_edgeControlSection];
  v15 = [v1 view];
  if (!v15)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v16 = v15;
  [v15 frame];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  v242.origin.x = v18;
  v242.origin.y = v20;
  v242.size.width = v22;
  v242.size.height = v24;
  Height = CGRectGetHeight(v242);
  v239 = v3;
  [v3 frame];
  [v14 setFrame_];
  v238 = v14;
  [v14 setTranslatesAutoresizingMaskIntoConstraints_];
  v26 = *&v2[OBJC_IVAR____TtC12CoreAudioKit21AUDelayViewController_zoomInButton];
  v27 = sub_23719653C();
  v28 = objc_opt_self();
  v29 = [v28 systemImageNamed_];

  [v26 setImage:v29 forState:0];
  [v26 setTranslatesAutoresizingMaskIntoConstraints_];
  [v26 addTarget:v2 action:sel_zoomIn forControlEvents:64];
  type metadata accessor for AUAppleViewControllerBase();
  sub_237175EDC(0x6E49206D6F6F5ALL, 0xE700000000000000);
  v30 = sub_23719653C();

  v236 = v26;
  [v26 setAccessibilityLabel_];

  v31 = *&v2[OBJC_IVAR____TtC12CoreAudioKit21AUDelayViewController_zoomOutButton];
  v32 = sub_23719653C();
  v33 = [v28 systemImageNamed_];

  [v31 setImage:v33 forState:0];
  [v31 setTranslatesAutoresizingMaskIntoConstraints_];
  [v31 addTarget:v2 action:sel_zoomOut forControlEvents:64];
  sub_237175EDC(0x74754F206D6F6F5ALL, 0xE800000000000000);
  v34 = sub_23719653C();

  v235 = v31;
  [v31 setAccessibilityLabel_];

  v237 = *&v2[OBJC_IVAR____TtC12CoreAudioKit21AUDelayViewController_graphView];
  [v237 setTranslatesAutoresizingMaskIntoConstraints_];
  v35 = sub_23719653C();
  v36 = [objc_opt_self() bundleWithIdentifier_];

  v37 = v36;
  v38 = sub_23719653C();
  v39 = [v28 imageNamed:v38 inBundle:v37 withConfiguration:0];

  v40 = v37;
  v41 = sub_23719653C();
  v42 = [v28 imageNamed:v41 inBundle:v40 withConfiguration:0];

  v229 = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE949B0, &qword_23719B320);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_23719B040;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE953F8, &qword_23719C088);
  *(v43 + 32) = v39;
  *(v43 + 88) = v44;
  *(v43 + 56) = v44;
  *(v43 + 64) = v42;
  v45 = objc_allocWithZone(MEMORY[0x277D75A08]);
  v231 = v39;
  v230 = v42;
  v46 = sub_23719661C();

  v47 = [v45 initWithItems_];

  v48 = OBJC_IVAR____TtC12CoreAudioKit21AUDelayViewController_modeControl;
  v49 = *&v2[OBJC_IVAR____TtC12CoreAudioKit21AUDelayViewController_modeControl];
  *&v2[OBJC_IVAR____TtC12CoreAudioKit21AUDelayViewController_modeControl] = v47;
  v50 = v47;

  if (v50)
  {
    [v50 setFrame_];
  }

  v51 = *&v2[v48];
  if (v51)
  {
    [v51 setSelectedSegmentIndex_];
    v52 = *&v2[v48];
    if (v52)
    {
      [v52 &selRef:0 bundleWithIdentifier:? + 2];
      v53 = *&v2[v48];
      if (v53)
      {
        [v53 addTarget:v2 action:sel_modeControlChanged forControlEvents:4096];
      }
    }
  }

  v232 = v48;
  v54 = *&v2[OBJC_IVAR____TtC12CoreAudioKit21AUDelayViewController_mixKnob];
  [v54 &selRef:0 bundleWithIdentifier:? + 2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE94D18, &qword_23719B748);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23719B700;
  *(inited + 32) = 0x6D61726150;
  *(inited + 40) = 0xE500000000000000;
  v56 = MEMORY[0x277D84CC0];
  *(inited + 48) = 0;
  *(inited + 72) = v56;
  *(inited + 80) = 7235917;
  *(inited + 88) = 0xE300000000000000;
  v57 = sub_2371307E8(0);
  v58 = MEMORY[0x277D83A90];
  *(inited + 96) = v57;
  *(inited + 120) = v58;
  *(inited + 128) = 7889229;
  *(inited + 136) = 0xE300000000000000;
  *(inited + 144) = sub_237130920(0);
  *(inited + 168) = v58;
  *(inited + 176) = 0x65756C6156;
  *(inited + 184) = 0xE500000000000000;
  *(inited + 192) = sub_237173CFC(0);
  *(inited + 216) = v58;
  *(inited + 224) = 0x656C746954;
  *(inited + 232) = 0xE500000000000000;
  v59 = sub_237175EDC(0x207465772F797264, 0xEB0000000078696DLL);
  *(inited + 264) = MEMORY[0x277D837D0];
  *(inited + 240) = v59;
  *(inited + 248) = v60;
  v61 = sub_237119CF4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE948A0, &unk_23719B750);
  swift_arrayDestroy();
  v234 = v54;
  sub_237140780(v61);

  v62 = *&v2[OBJC_IVAR____TtC12CoreAudioKit21AUDelayViewController_cutoffKnob];
  [v62 &selRef:0 bundleWithIdentifier:? + 2];
  v63 = swift_initStackObject();
  *(v63 + 16) = xmmword_23719BD00;
  *(v63 + 32) = 0x6D61726150;
  *(v63 + 40) = 0xE500000000000000;
  *(v63 + 48) = 3;
  *(v63 + 72) = MEMORY[0x277D84CC0];
  *(v63 + 80) = 7235917;
  *(v63 + 88) = 0xE300000000000000;
  *(v63 + 96) = sub_2371307E8(3u);
  *(v63 + 120) = v58;
  *(v63 + 128) = 7889229;
  *(v63 + 136) = 0xE300000000000000;
  *(v63 + 144) = sub_237130920(3u);
  *(v63 + 168) = v58;
  *(v63 + 176) = 0x65756C6156;
  *(v63 + 184) = 0xE500000000000000;
  *(v63 + 192) = sub_237173CFC(3u);
  *(v63 + 216) = v58;
  *(v63 + 224) = 0x656C746954;
  *(v63 + 232) = 0xE500000000000000;
  *(v63 + 240) = sub_237175EDC(0x666F74756320706CLL, 0xE900000000000066);
  *(v63 + 248) = v64;
  *(v63 + 264) = MEMORY[0x277D837D0];
  *(v63 + 272) = 0x737469676944;
  *(v63 + 312) = MEMORY[0x277D83B88];
  *(v63 + 280) = 0xE600000000000000;
  *(v63 + 288) = 0;
  v65 = sub_237119CF4(v63);
  swift_setDeallocating();
  swift_arrayDestroy();
  v233 = v62;
  sub_237140780(v65);

  sub_237170B3C();
  v66 = [v2 view];
  if (!v66)
  {
    goto LABEL_30;
  }

  v67 = v66;
  [v66 bounds];
  v69 = v68;
  v71 = v70;
  v73 = v72;
  v75 = v74;

  v76 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  v77 = [v76 layer];
  v78 = objc_opt_self();
  v79 = [v78 secondaryLabelColor];
  v80 = [v79 CGColor];

  [v77 setBorderColor_];
  v81 = [v76 layer];
  [v81 setBorderWidth_];

  [v76 setTranslatesAutoresizingMaskIntoConstraints_];
  v82 = [v2 view];
  if (!v82)
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v83 = v82;
  [v82 addSubview_];

  [v76 addSubview_];
  [v76 addSubview_];
  [v76 addSubview_];
  [v76 addSubview_];
  [v76 addSubview_];
  if (*&v2[v232])
  {
    [v238 addSubview_];
  }

  [v238 addSubview_];
  [v238 addSubview_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE94900, &qword_23719AC20);
  v84 = swift_allocObject();
  *(v84 + 16) = xmmword_23719AB20;
  v85 = [v76 leadingAnchor];
  v86 = [v2 view];
  if (!v86)
  {
    goto LABEL_32;
  }

  v87 = v86;
  v88 = [v86 leadingAnchor];

  v89 = [v85 constraintEqualToAnchor_];
  *(v84 + 32) = v89;
  v90 = [v76 trailingAnchor];
  v91 = [v2 view];
  if (!v91)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v92 = v91;
  v93 = [v91 trailingAnchor];

  v94 = [v90 constraintEqualToAnchor_];
  *(v84 + 40) = v94;
  v95 = [v76 topAnchor];
  v96 = [v2 view];
  if (!v96)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v97 = v96;
  v228 = v78;
  v98 = [v96 topAnchor];

  v99 = [v95 constraintEqualToAnchor_];
  *(v84 + 48) = v99;
  v100 = [v76 bottomAnchor];
  v101 = [v2 view];
  if (!v101)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v102 = v101;
  v103 = objc_opt_self();
  v104 = [v102 bottomAnchor];

  v105 = [v100 constraintEqualToAnchor_];
  *(v84 + 56) = v105;
  sub_23710EEB4();
  v106 = sub_23719661C();

  v107 = v103;
  [v103 activateConstraints_];

  v108 = swift_allocObject();
  *(v108 + 16) = xmmword_23719AB20;
  v109 = [v239 leadingAnchor];
  v110 = [v2 view];
  if (!v110)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v111 = v110;
  v112 = [v110 leadingAnchor];

  v113 = [v109 constraintEqualToAnchor_];
  *(v108 + 32) = v113;
  v114 = [v239 topAnchor];
  v115 = [v2 view];
  if (!v115)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v116 = v115;
  v117 = [v115 topAnchor];

  v118 = [v114 &selRef:v117 setUrl:? + 5];
  *(v108 + 40) = v118;
  v119 = [v239 trailingAnchor];
  v120 = [v2 view];
  if (!v120)
  {
LABEL_38:
    __break(1u);
    return;
  }

  v121 = v120;
  v122 = [v120 trailingAnchor];

  v123 = [v119 &selRef:v122 setUrl:? + 5];
  *(v108 + 48) = v123;
  v124 = [v239 heightAnchor];
  v125 = [v124 constraintEqualToConstant_];

  *(v108 + 56) = v125;
  v126 = sub_23719661C();

  [v103 activateConstraints_];

  v127 = swift_allocObject();
  *(v127 + 16) = xmmword_23719AB20;
  v128 = [v237 leadingAnchor];
  v129 = [v76 leadingAnchor];
  v130 = [v128 &selRef:v129 setUrl:? + 5];

  *(v127 + 32) = v130;
  v131 = [v237 topAnchor];
  v132 = [v239 bottomAnchor];
  v133 = [v131 constraintEqualToAnchor:v132 constant:10.0];

  *(v127 + 40) = v133;
  v134 = [v237 bottomAnchor];
  v135 = [v76 bottomAnchor];
  v136 = [v134 constraintEqualToAnchor_];

  *(v127 + 48) = v136;
  v137 = [v237 trailingAnchor];
  v138 = [v238 leadingAnchor];
  v139 = [v137 constraintEqualToAnchor:v138 constant:5.0];

  *(v127 + 56) = v139;
  v140 = sub_23719661C();

  [v103 activateConstraints_];

  v141 = swift_allocObject();
  *(v141 + 16) = xmmword_23719B670;
  v142 = [v238 topAnchor];
  v143 = [v239 &selRef_setNeedsDisplayInRect_ + 5];
  v144 = [v142 constraintEqualToAnchor_];

  *(v141 + 32) = v144;
  v145 = [v238 &selRef_setNeedsDisplayInRect_ + 5];
  v146 = [v237 &selRef_setNeedsDisplayInRect_ + 5];
  v147 = [v145 constraintEqualToAnchor_];

  *(v141 + 40) = v147;
  v148 = [v238 trailingAnchor];
  v149 = [v76 trailingAnchor];
  v150 = [v148 &selRef:v149 setUrl:? + 5];

  *(v141 + 48) = v150;
  v151 = sub_23719661C();

  [v103 activateConstraints_];

  v152 = [v238 widthAnchor];
  v153 = [v152 constraintEqualToConstant_];

  v154 = OBJC_IVAR____TtC12CoreAudioKit21AUDelayViewController_rightWidthConstraint;
  v155 = *&v2[OBJC_IVAR____TtC12CoreAudioKit21AUDelayViewController_rightWidthConstraint];
  *&v2[OBJC_IVAR____TtC12CoreAudioKit21AUDelayViewController_rightWidthConstraint] = v153;

  v156 = *&v2[v154];
  if (v156)
  {
    [v156 setActive_];
  }

  v157 = *&v2[v232];
  if (v157)
  {
    v158 = swift_allocObject();
    *(v158 + 16) = xmmword_23719C040;
    v159 = v157;
    v160 = [v159 centerXAnchor];
    v161 = [v238 centerXAnchor];
    v162 = [v160 constraintEqualToAnchor:v161 constant:-10.0];

    *(v158 + 32) = v162;
    v163 = [v159 topAnchor];

    v164 = [v238 topAnchor];
    v165 = [v163 constraintEqualToAnchor:v164 constant:20.0];

    *(v158 + 40) = v165;
    v166 = sub_23719661C();

    [v107 activateConstraints_];
  }

  v167 = swift_allocObject();
  *(v167 + 16) = xmmword_23719BBE0;
  v168 = [v234 centerXAnchor];
  v169 = [v238 centerXAnchor];
  v170 = [v168 constraintEqualToAnchor:v169 constant:-10.0];

  *(v167 + 32) = v170;
  v171 = [v233 centerXAnchor];
  v172 = [v238 centerXAnchor];
  v173 = [v171 &selRef:v172 setZPosition:-10.0 + 6];

  *(v167 + 40) = v173;
  v174 = [v234 heightAnchor];
  v175 = [v174 constraintEqualToConstant_];

  *(v167 + 48) = v175;
  v176 = [v234 widthAnchor];
  v177 = [v176 &selRef_stopAdvertising + 1];

  *(v167 + 56) = v177;
  v178 = [v233 &selRef_bundleWithIdentifier_ + 2];
  v179 = [v178 &selRef_stopAdvertising + 1];

  *(v167 + 64) = v179;
  v180 = [v233 &selRef_arrayWithObjects_count_ + 6];
  v181 = [v180 &selRef_stopAdvertising + 1];

  *(v167 + 72) = v181;
  v182 = [v234 centerYAnchor];
  v183 = [v238 centerYAnchor];
  v184 = [v182 constraintEqualToAnchor_];

  *(v167 + 80) = v184;
  v185 = [v233 topAnchor];
  v186 = [v234 bottomAnchor];
  v187 = [v185 constraintEqualToAnchor:v186 constant:20.0];

  *(v167 + 88) = v187;
  v188 = sub_23719661C();

  [v107 activateConstraints_];

  v189 = swift_allocObject();
  *(v189 + 16) = xmmword_23719BBE0;
  v190 = [v235 trailingAnchor];
  v191 = [v237 trailingAnchor];
  v192 = [v190 &selRef:v191 setZPosition:-30.0 + 6];

  *(v189 + 32) = v192;
  v193 = [v235 topAnchor];
  v194 = [v237 topAnchor];
  v195 = [v193 &selRef:v194 setZPosition:-5.0 + 6];

  *(v189 + 40) = v195;
  v196 = [v235 widthAnchor];
  v197 = [v196 &selRef_stopAdvertising + 1];

  *(v189 + 48) = v197;
  v198 = [v235 heightAnchor];
  v199 = [v198 &selRef_stopAdvertising + 1];

  *(v189 + 56) = v199;
  v200 = [v236 topAnchor];
  v201 = [v235 topAnchor];
  v202 = [v200 constraintEqualToAnchor_];

  *(v189 + 64) = v202;
  v203 = [v236 trailingAnchor];
  v204 = [v235 leadingAnchor];
  v205 = [v203 constraintEqualToAnchor:v204 constant:-20.0];

  *(v189 + 72) = v205;
  v206 = [v236 widthAnchor];
  v207 = [v206 &selRef_stopAdvertising + 1];

  *(v189 + 80) = v207;
  v208 = [v236 heightAnchor];
  v209 = [v208 &selRef_stopAdvertising + 1];

  *(v189 + 88) = v209;
  v210 = sub_23719661C();

  [v107 activateConstraints_];

  v211 = sub_237175EDC(0x59414C4544, 0xE500000000000000);
  v213 = v212;
  v214 = OBJC_IVAR____TtC12CoreAudioKit16CAAUEQHeaderView_auLabel;
  v215 = *&v239[OBJC_IVAR____TtC12CoreAudioKit16CAAUEQHeaderView_auLabel];
  v216 = sub_23719653C();
  [v215 setText_];

  [*&v239[v214] setAccessibilityTraits_];
  v217 = *&v239[v214];
  v218 = sub_23719653C();
  [v217 setAccessibilityLabel_];

  v219 = &v239[OBJC_IVAR____TtC12CoreAudioKit16CAAUEQHeaderView_auName];
  *v219 = v211;
  v219[1] = v213;

  v220 = [v238 layer];
  v221 = v229;
  v222 = sub_23719653C();
  v223 = [v228 colorNamed:v222 inBundle:v221 compatibleWithTraitCollection:0];

  if (v223)
  {
    v224 = [v223 CGColor];
  }

  else
  {
    v224 = 0;
  }

  [v220 setBackgroundColor_];

  v225 = [v76 layer];
  v226 = [v238 layer];
  v227 = [v226 backgroundColor];

  [v225 setBackgroundColor_];
}

void sub_237170530()
{
  v17 = *MEMORY[0x277D85DE8];
  v1 = *&v0[OBJC_IVAR____TtC12CoreAudioKit25AUAppleViewControllerBase_AU];
  if (v1)
  {
    v2 = v0;
    v3 = sub_23719630C();
    if (v3)
    {
      v4 = v3;
      sub_23719690C();
      if (!*(v4 + 16))
      {
        goto LABEL_14;
      }

      v5 = sub_237190728(&inParameter);
      if ((v6 & 1) == 0)
      {
        goto LABEL_14;
      }

      sub_237114D0C(*(v4 + 56) + 32 * v5, v16);
      sub_237114F1C(&inParameter);
      if ((swift_dynamicCast() & 1) == 0)
      {

        return;
      }

      sub_23719690C();
      if (*(v4 + 16) && (v7 = sub_237190728(&inParameter), (v8 & 1) != 0))
      {
        sub_237114D0C(*(v4 + 56) + 32 * v7, v16);
        sub_237114F1C(&inParameter);

        if (swift_dynamicCast())
        {
          LODWORD(inParameter.mAudioUnit) = 0;
          v9 = sub_23717481C(0x65756C6176, 0xE500000000000000, &inParameter);

          if (v9)
          {
            v10 = *&inParameter.mAudioUnit;
            if (v10 <= sub_237130920(0x61726170u) && sub_2371307E8(0x61726170u) <= v10)
            {
              inParameter.mAudioUnit = v1;
              inParameter.mScope = 0;
              inParameter.mElement = 0;
              inParameter.mParameterID = 1634886000;
              v11 = OBJC_IVAR____TtC12CoreAudioKit25AUAppleViewControllerBase_eventListener;
              swift_beginAccess();
              v12 = AUParameterSet(*&v2[v11], v2, &inParameter, v10, 0);
              if (v12 == sub_2371964DC())
              {
                sub_2371208B8(1634886000);
              }

              else
              {
                sub_23719693C();
                MEMORY[0x2383C5F20](0xD000000000000018, 0x80000002371A0580);
                v13 = sub_237196A5C();
                MEMORY[0x2383C5F20](v13);

                MEMORY[0x2383C5F20](544175136, 0xE400000000000000);
                sub_2371966AC();
                sub_237176A9C(0, 0xE000000000000000, v12);
              }
            }

            v14 = sub_237173CFC(0x61726170u);
            sub_237135E04(1634886000, v14);
          }
        }
      }

      else
      {
LABEL_14:

        sub_237114F1C(&inParameter);
      }
    }
  }
}

id sub_2371708A0()
{
  v1 = OBJC_IVAR____TtC12CoreAudioKit21AUDelayViewController_zoomFactor;
  v2 = *(v0 + OBJC_IVAR____TtC12CoreAudioKit21AUDelayViewController_zoomFactor) + *(v0 + OBJC_IVAR____TtC12CoreAudioKit21AUDelayViewController_zoomFactor);
  *(v0 + OBJC_IVAR____TtC12CoreAudioKit21AUDelayViewController_zoomFactor) = v2;
  if (v2 >= 8.0)
  {
    [*(v0 + OBJC_IVAR____TtC12CoreAudioKit21AUDelayViewController_zoomInButton) setEnabled_];
  }

  [*(v0 + OBJC_IVAR____TtC12CoreAudioKit21AUDelayViewController_zoomOutButton) setEnabled_];
  *(*(v0 + OBJC_IVAR____TtC12CoreAudioKit21AUDelayViewController_graphView) + OBJC_IVAR____TtC12CoreAudioKit16AUDelayGraphView_zoomFactor) = *(v0 + v1);
  return sub_23711D578();
}

id sub_237170988()
{
  v1 = OBJC_IVAR____TtC12CoreAudioKit21AUDelayViewController_zoomFactor;
  v2 = *(v0 + OBJC_IVAR____TtC12CoreAudioKit21AUDelayViewController_zoomFactor) * 0.5;
  *(v0 + OBJC_IVAR____TtC12CoreAudioKit21AUDelayViewController_zoomFactor) = v2;
  if (v2 < 0.25)
  {
    [*(v0 + OBJC_IVAR____TtC12CoreAudioKit21AUDelayViewController_zoomOutButton) setEnabled_];
  }

  [*(v0 + OBJC_IVAR____TtC12CoreAudioKit21AUDelayViewController_zoomInButton) setEnabled_];
  *(*(v0 + OBJC_IVAR____TtC12CoreAudioKit21AUDelayViewController_graphView) + OBJC_IVAR____TtC12CoreAudioKit16AUDelayGraphView_zoomFactor) = *(v0 + v1);
  return sub_23711D578();
}

id sub_237170A74()
{
  v1 = v0;
  v2 = sub_237173CFC(2u);
  sub_237173E18(2, -v2);
  v3 = *(v0 + OBJC_IVAR____TtC12CoreAudioKit21AUDelayViewController_graphView);
  v4 = *(v1 + OBJC_IVAR____TtC12CoreAudioKit21AUDelayViewController_modeControl);
  if (v4)
  {
    v5 = [v4 selectedSegmentIndex] != 0;
  }

  else
  {
    v5 = 1;
  }

  *(v3 + OBJC_IVAR____TtC12CoreAudioKit16AUDelayGraphView_invert) = v5;
  return sub_23711C20C();
}

void sub_237170B3C()
{
  v301[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + OBJC_IVAR____TtC12CoreAudioKit21AUDelayViewController_graphView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE94D18, &qword_23719B748);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_23719BDB0;
  *(v2 + 32) = 1852394873;
  v3 = MEMORY[0x277D83A90];
  *(v2 + 40) = 0xE400000000000000;
  *(v2 + 48) = 0;
  *(v2 + 72) = v3;
  *(v2 + 80) = 2019642745;
  *(v2 + 88) = 0xE400000000000000;
  *(v2 + 96) = 1120403456;
  *(v2 + 120) = v3;
  *(v2 + 128) = 0x756F436469724779;
  v4 = MEMORY[0x277D83B88];
  *(v2 + 136) = 0xEA0000000000746ELL;
  *(v2 + 144) = 3;
  *(v2 + 168) = v4;
  *(v2 + 176) = 0x614C7374696E5579;
  *(v2 + 184) = 0xEB000000006C6562;
  type metadata accessor for AUAppleViewControllerBase();
  v5 = sub_237175EDC(37, 0xE100000000000000);
  *(v2 + 216) = MEMORY[0x277D837D0];
  *(v2 + 192) = v5;
  *(v2 + 200) = v6;
  v7 = sub_237119CF4(v2);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE948A0, &unk_23719B750);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_2371816EC(v7);

  v8 = OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_xAxis;
  v9 = OBJC_IVAR____TtC12CoreAudioKit16AUDelayGraphView_defaultMax;
  *(v1 + OBJC_IVAR____TtC12CoreAudioKit16AUDelayGraphView_defaultMax) = *(*(v1 + OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_xAxis) + OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_max);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_23719BD20;
  *(v10 + 32) = 1852394872;
  *(v10 + 40) = 0xE400000000000000;
  *(v10 + 48) = 0;
  *(v10 + 72) = v3;
  *(v10 + 80) = 2019642744;
  *(v10 + 88) = 0xE400000000000000;
  *(v10 + 96) = 1082130432;
  *(v10 + 120) = v3;
  *(v10 + 128) = 0x6F6C6C416E694D78;
  *(v10 + 136) = 0xEB00000000646577;
  *(v10 + 144) = 0;
  *(v10 + 168) = v3;
  *(v10 + 176) = 0x6F6C6C4178614D78;
  *(v10 + 184) = 0xEB00000000646577;
  *(v10 + 192) = 0x40000000;
  *(v10 + 216) = v3;
  *(v10 + 224) = 0x65736142676F4C78;
  *(v10 + 232) = 0xE800000000000000;
  *(v10 + 240) = 0;
  *(v10 + 264) = v3;
  *(v10 + 272) = 0x756F436469724778;
  *(v10 + 280) = 0xEA0000000000746ELL;
  *(v10 + 288) = 7;
  *(v10 + 312) = MEMORY[0x277D83B88];
  *(v10 + 320) = 0x614C7374696E5578;
  *(v10 + 328) = 0xEB000000006C6562;
  v11 = sub_237175EDC(1935893875, 0xE400000000000000);
  *(v10 + 360) = MEMORY[0x277D837D0];
  *(v10 + 336) = v11;
  *(v10 + 344) = v12;
  v13 = sub_237119CF4(v10);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_2371816EC(v13);

  *(v1 + v9) = *(*(v1 + v8) + OBJC_IVAR____TtCC12CoreAudioKit13CAAUGraphView11AxisSetting_max);
  v283 = &off_284A3ACB8;
  v282 = type metadata accessor for AUDelayViewController();
  v281[0] = v202;
  v14 = v202;
  sub_23711D470(v281);
  v15 = sub_237173CFC(2u);
  *(v1 + OBJC_IVAR____TtC12CoreAudioKit16AUDelayGraphView_invert) = v15 < 0.0;
  sub_23711C20C();
  v16 = *&v14[OBJC_IVAR____TtC12CoreAudioKit21AUDelayViewController_modeControl];
  if (v16)
  {
    [v16 setSelectedSegmentIndex_];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE94900, &qword_23719AC20);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_23719C040;
  v18 = *&v14[OBJC_IVAR____TtC12CoreAudioKit21AUDelayViewController_timeFormatter];
  *(v17 + 32) = v18;
  v173 = v17 + 32;
  v19 = v18;
  *(v17 + 40) = sub_23716E574();
  v230 = 0u;
  v231 = 0u;
  v232 = 0u;
  v233 = 0u;
  v234 = 0u;
  v235 = 0u;
  v236 = 0;
  v199 = objc_opt_self();
  v20 = *MEMORY[0x277D765B0];
  v21 = *MEMORY[0x277D76538];
  v22 = objc_opt_self();
  v181 = objc_opt_self();
  v23 = 0;
  v24 = 0;
  v184 = OBJC_IVAR____TtC12CoreAudioKit21AUDelayViewController_headerView;
  v25 = OBJC_IVAR____TtC12CoreAudioKit25AUAppleViewControllerBase_AU;
  v182 = v21;
  v183 = v17 & 0xC000000000000001;
  v172 = v17 & 0xFFFFFFFFFFFFFF8;
  v175 = v21 & v20;
  v176 = v17;
  v174 = v21 | v20;
  v179 = v22;
  v180 = v14;
  v177 = OBJC_IVAR____TtC12CoreAudioKit25AUAppleViewControllerBase_AU;
  for (i = v20; ; v20 = i)
  {
    v26 = *(&unk_284A39A98 + v24 + 8);
    v27 = *&v14[v184];
    switch(v26)
    {
      case 0:
        v200 = sub_237175EDC(0x207465772F797264, 0xEB0000000078696DLL);
        v203 = v31;
        v29 = 7891309;
        v30 = 0xE300000000000000;
        goto LABEL_12;
      case 3:
        v200 = sub_237175EDC(0xD000000000000018, 0x80000002371A0540);
        v203 = v33;
        v29 = 0x66666F747563;
        v30 = 0xE600000000000000;
        goto LABEL_12;
      case 2:
        v200 = sub_237175EDC(0x6B63616264656566, 0xE800000000000000);
        v203 = v32;
        v29 = 0x6B63616264656566;
        v30 = 0xE800000000000000;
        goto LABEL_12;
      case 1:
        v200 = sub_237175EDC(0x69742079616C6564, 0xEA0000000000656DLL);
        v203 = v28;
        v29 = 0x79616C6564;
        v30 = 0xE500000000000000;
LABEL_12:
        v34 = sub_237175EDC(v29, v30);
        v197 = v35;
        v198 = v34;
        goto LABEL_13;
    }

    v200 = 0;
    v197 = 0xE000000000000000;
    v198 = 0;
    v203 = 0xE000000000000000;
LABEL_13:
    outValue[0] = 0.0;
    v36 = *&v14[v25];
    v201 = v26;
    if (v36)
    {
      Parameter = AudioUnitGetParameter(v36, v26, 0, 0, outValue);
      if (Parameter != sub_2371964DC())
      {
        *&outData = 0;
        *(&outData + 1) = 0xE000000000000000;
        sub_23719693C();

        *&outData = 0xD000000000000018;
        *(&outData + 1) = 0x80000002371A0560;
        ioDataSize[0] = v26;
        v38 = sub_237196A5C();
        MEMORY[0x2383C5F20](v38);

        sub_237176A9C(outData, *(&outData + 1), Parameter);
      }

      v39 = *&v14[v25];
      v40 = outValue[0];
      v224 = v234;
      v225 = v235;
      *&v226 = v236;
      outData = v230;
      v221 = v231;
      v222 = v232;
      v223 = v233;
      ioDataSize[0] = 104;
      if (v39)
      {
        Property = AudioUnitGetProperty(v39, 4u, 0, v26, &outData, ioDataSize);
        if (Property != sub_2371964DC())
        {
          *outValue = 0;
          *&outValue[2] = 0xE000000000000000;
          sub_23719693C();

          *outValue = 0xD00000000000002ALL;
          *&outValue[2] = 0x800000023719EF60;
          v208 = v26;
          v42 = sub_237196A5C();
          MEMORY[0x2383C5F20](v42);

          sub_237176A9C(*outValue, *&outValue[2], Property);
        }
      }
    }

    else
    {
      v224 = v234;
      v225 = v235;
      outData = v230;
      v221 = v231;
      v222 = v232;
      v223 = v233;
      v40 = 0.0;
      *&v226 = v236;
    }

    v43 = DWORD1(v225);
    v224 = v234;
    v225 = v235;
    *&v226 = v236;
    outData = v230;
    v221 = v231;
    v222 = v232;
    v223 = v233;
    ioDataSize[0] = 104;
    v44 = *&v14[v25];
    if (v44)
    {
      v45 = AudioUnitGetProperty(v44, 4u, 0, v26, &outData, ioDataSize);
      if (v45 != sub_2371964DC())
      {
        *outValue = 0;
        *&outValue[2] = 0xE000000000000000;
        sub_23719693C();

        *outValue = 0xD00000000000002ALL;
        *&outValue[2] = 0x800000023719EF60;
        v208 = v26;
        v46 = sub_237196A5C();
        MEMORY[0x2383C5F20](v46);

        sub_237176A9C(*outValue, *&outValue[2], v45);
      }
    }

    v47 = DWORD2(v225);
    if (v183)
    {
      v48 = MEMORY[0x2383C62A0](v24, v176);
    }

    else
    {
      if (v24 >= *(v172 + 16))
      {
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
      }

      v48 = *(v173 + 8 * v24);
    }

    v49 = v48;
    v189 = v27;
    v190 = v23;
    switch(v26)
    {
      case 0:
LABEL_31:
        v50 = 37;
        v51 = 0xE100000000000000;
LABEL_35:
        v52 = sub_237175EDC(v50, v51);
        v54 = v53;
        goto LABEL_36;
      case 1:
        v50 = 1935893875;
        v51 = 0xE400000000000000;
        goto LABEL_35;
      case 3:
        v50 = 31304;
        v51 = 0xE200000000000000;
        goto LABEL_35;
      case 2:
        goto LABEL_31;
    }

    v52 = 0;
    v54 = 0xE000000000000000;
LABEL_36:
    v55 = objc_allocWithZone(MEMORY[0x277D75D18]);
    v56 = v49;
    v193 = [v55 initWithFrame_];
    [v193 setTranslatesAutoresizingMaskIntoConstraints_];
    v57 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
    v58 = [v199 systemFontOfSize_];
    [v57 setFont_];

    [v57 setTextAlignment_];
    [v57 setAdjustsFontSizeToFitWidth_];
    [v57 setAllowsDefaultTighteningForTruncation_];
    [v57 setMinimumScaleFactor_];
    v59 = v57;
    [v59 setBaselineAdjustment_];
    [v59 setTranslatesAutoresizingMaskIntoConstraints_];
    v60 = sub_23719653C();
    [v59 setText_];

    LODWORD(v61) = 1112014848;
    [v59 setContentHuggingPriority:0 forAxis:v61];
    LODWORD(v62) = 1144750080;
    v63 = v59;
    [v59 setContentCompressionResistancePriority:0 forAxis:v62];
    v64 = type metadata accessor for CAAUEQHeaderView.AUAccessibleTextField();
    v65 = objc_allocWithZone(v64);
    *&v65[OBJC_IVAR____TtCC12CoreAudioKit16CAAUEQHeaderView21AUAccessibleTextField_min] = v43;
    *&v65[OBJC_IVAR____TtCC12CoreAudioKit16CAAUEQHeaderView21AUAccessibleTextField_max] = v47;
    *&v65[OBJC_IVAR____TtCC12CoreAudioKit16CAAUEQHeaderView21AUAccessibleTextField_logBase] = 0;
    v205.receiver = v65;
    v205.super_class = v64;
    v66 = objc_msgSendSuper2(&v205, sel_initWithFrame_, 0.0, 0.0, 50.0, 22.0);
    if (v20)
    {
      v67 = v20;
      v68 = v52;
      if (v175 != v182)
      {
        goto LABEL_40;
      }
    }

    else
    {
      v68 = v52;
      if (v182)
      {
LABEL_40:
        v67 = v174;
        goto LABEL_43;
      }

      v67 = 0;
    }

LABEL_43:
    v69 = v66;
    [v69 setAccessibilityTraits_];
    [v69 setSecureTextEntry_];
    v70 = v69;
    v71 = [v199 systemFontOfSize_];
    [v70 setFont_];

    v72 = v70;
    [v72 setTextAlignment_];
    v73 = [v22 systemBackgroundColor];
    [v72 setBackgroundColor_];

    [v72 setClearButtonMode_];
    [v72 setEnablesReturnKeyAutomatically_];
    [v72 setAdjustsFontSizeToFitWidth_];
    [v72 setMinimumFontSize_];
    *&v72[OBJC_IVAR____TtCC12CoreAudioKit16CAAUEQHeaderView21AUAccessibleTextField_min] = v43;
    *&v72[OBJC_IVAR____TtCC12CoreAudioKit16CAAUEQHeaderView21AUAccessibleTextField_max] = v47;
    *&v72[OBJC_IVAR____TtCC12CoreAudioKit16CAAUEQHeaderView21AUAccessibleTextField_logBase] = 0;
    [v72 setTranslatesAutoresizingMaskIntoConstraints_];
    [v72 setReturnKeyType_];
    [v72 setContentVerticalAlignment_];
    [v72 setEnabled_];

    v74 = objc_allocWithZone(MEMORY[0x277CCABB0]);
    *&v75 = v40;
    v76 = [v74 initWithFloat_];
    v195 = v56;
    v77 = [v56 stringFromNumber_];

    [v72 setText_];
    [v72 setTag_];

    v78 = sub_23719653C();
    v79 = [v181 bundleWithIdentifier_];

    v196 = v79;
    if (v79)
    {
      v81 = v79;
      sub_23719634C();

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE94E70, &unk_23719B110);
      v82 = swift_allocObject();
      *(v82 + 16) = xmmword_23719B040;
      v83 = [v72 text];
      if (!v83)
      {
        goto LABEL_58;
      }

      v84 = v83;
      v85 = sub_23719657C();
      v87 = v86;

      v88 = MEMORY[0x277D837D0];
      *(v82 + 56) = MEMORY[0x277D837D0];
      v89 = sub_237115040();
      *(v82 + 32) = v85;
      *(v82 + 40) = v87;
      *(v82 + 96) = v88;
      *(v82 + 104) = v89;
      *(v82 + 64) = v89;
      *(v82 + 72) = v68;
      *(v82 + 80) = v54;

      sub_23719659C();

      v90 = sub_23719653C();

      [v72 setAccessibilityValue_];
    }

    LODWORD(v80) = 1144750080;
    [v72 setContentCompressionResistancePriority:0 forAxis:v80];
    LODWORD(v91) = 1144750080;
    [v72 setContentHuggingPriority:0 forAxis:v91];
    v92 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
    v93 = [v199 systemFontOfSize_];
    [v92 setFont_];

    [v92 setTextAlignment_];
    [v92 setAdjustsFontSizeToFitWidth_];
    [v92 setAllowsDefaultTighteningForTruncation_];
    [v92 setAdjustsFontSizeToFitWidth_];
    [v92 setMinimumScaleFactor_];
    v94 = v92;
    [v94 setBaselineAdjustment_];
    [v94 setTranslatesAutoresizingMaskIntoConstraints_];
    v95 = sub_23719653C();
    [v94 setText_];

    LODWORD(v96) = 1148846080;
    [v94 setContentHuggingPriority:0 forAxis:v96];
    LODWORD(v97) = 1132068864;
    [v94 setContentCompressionResistancePriority:0 forAxis:v97];
    [v94 setAccessibilityElementsHidden_];

    [v193 addSubview_];
    [v193 addSubview_];
    [v193 addSubview_];

    v281[0] = v193;
    v281[1] = v63;
    v281[2] = v94;
    v282 = v72;
    v283 = __PAIR64__(LODWORD(v40), v201);
    v284 = v43;
    v285 = v47;
    v286 = v200;
    v287 = v203;
    v288 = v198;
    v289 = v197;
    v290 = 0;
    v291 = v195;
    v292 = 0;
    v293 = 0x4034000000000000;
    v294 = 0;
    v295 = 0;
    v297 = v207;
    v296 = v206;
    v299 = 0;
    v300 = 0;
    v298 = 0;
    sub_2371377FC();
    v258 = v193;
    v259 = v63;
    v260 = v94;
    v261 = v72;
    v262 = v201;
    v263 = v40;
    v264 = v43;
    v265 = v47;
    v266 = v200;
    v267 = v203;
    v268 = v198;
    v269 = v197;
    v270 = 0;
    v271 = v195;
    v272 = 0;
    v273 = 0x4034000000000000;
    v274 = 0;
    v275 = 0;
    v277 = v207;
    v276 = v206;
    v279 = 0;
    v280 = 0;
    v278 = 0;
    v301[0] = 0;
    v98 = v193;
    sub_237137C10();
    v100 = v99;
    v102 = v101;
    v104 = v103;
    v105 = [v98 widthAnchor];

    v106 = [v105 constraintEqualToConstant_];
    sub_2371609EC(v301);
    [v106 setActive_];
    v204 = MEMORY[0x277D84F90];
    v194 = v98;
    *&outData = v98;
    *(&outData + 1) = v63;
    *&v221 = v94;
    *(&v221 + 1) = v72;
    *&v222 = __PAIR64__(LODWORD(v40), v201);
    *(&v222 + 1) = __PAIR64__(v47, v43);
    *&v223 = v200;
    *(&v223 + 1) = v203;
    *&v224 = v198;
    v107 = v106;
    *(&v224 + 1) = v197;
    *&v225 = 0;
    *(&v225 + 1) = v195;
    *&v226 = v106;
    *(&v226 + 1) = 0x4034000000000000;
    *&v227 = 0;
    WORD4(v227) = 0;
    HIWORD(v227) = v207;
    *(&v227 + 10) = v206;
    *&v228 = v102;
    *(&v228 + 1) = v100;
    v229 = v104;
    v108 = objc_allocWithZone(MEMORY[0x277D750A0]);
    v216 = v226;
    v217 = v227;
    v218 = v228;
    v219 = v229;
    v212 = v222;
    v213 = v223;
    v214 = v224;
    v215 = v225;
    *outValue = outData;
    v211 = v221;
    sub_2371339F0(&outData, ioDataSize);
    sub_2371339F0(&outData, ioDataSize);
    v109 = v63;
    v110 = v72;
    v111 = v94;
    v112 = [v108 initWithAccessibilityContainer_];
    swift_unknownObjectRelease();
    sub_237133A4C(&outData);
    *outValue = 0;
    *&outValue[2] = 0xE000000000000000;
    v113 = [v109 text];
    if (!v113)
    {
      goto LABEL_56;
    }

    v114 = v113;
    v115 = sub_23719657C();
    v117 = v116;

    MEMORY[0x2383C5F20](v115, v117);

    MEMORY[0x2383C5F20](8236, 0xE200000000000000);
    v118 = [v110 text];
    if (!v118)
    {
      goto LABEL_57;
    }

    v119 = v118;
    v185 = v102;
    v186 = v104;
    v187 = v100;
    v188 = v47;
    v191 = v43;
    v192 = v40;
    v120 = sub_23719657C();
    v122 = v121;

    MEMORY[0x2383C5F20](v120, v122);

    MEMORY[0x2383C5F20](8236, 0xE200000000000000);
    v123 = [v111 text];
    if (!v123)
    {
      goto LABEL_55;
    }

    v124 = sub_23719657C();
    v126 = v125;

    MEMORY[0x2383C5F20](v124, v126);

    v127 = sub_23719653C();

    [v112 setAccessibilityLabel_];

    [v109 frame];
    v129 = v128;
    v131 = v130;
    v133 = v132;
    v135 = v134;

    [v110 frame];
    v137 = v136;
    v139 = v138;
    v141 = v140;
    v143 = v142;

    v302.origin.x = v129;
    v302.origin.y = v131;
    v302.size.width = v133;
    v302.size.height = v135;
    v306.origin.x = v137;
    v306.origin.y = v139;
    v306.size.width = v141;
    v306.size.height = v143;
    v303 = CGRectUnion(v302, v306);
    x = v303.origin.x;
    y = v303.origin.y;
    width = v303.size.width;
    height = v303.size.height;
    [v111 frame];
    v149 = v148;
    v151 = v150;
    v153 = v152;
    v155 = v154;

    v304.origin.x = x;
    v304.origin.y = y;
    v304.size.width = width;
    v304.size.height = height;
    v307.origin.x = v149;
    v307.origin.y = v151;
    v307.size.width = v153;
    v307.size.height = v155;
    v305 = CGRectUnion(v304, v307);
    [v112 setAccessibilityFrameInContainerSpace_];
    v156 = v112;
    MEMORY[0x2383C5F60]();
    if (*((v204 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v204 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_23719664C();
    }

    sub_23719665C();

    v253 = v206;
    v254 = v207;
    v237[0] = v194;
    v237[1] = v109;
    v237[2] = v111;
    v238 = v110;
    v239 = v201;
    v240 = v192;
    v241 = v191;
    v242 = v188;
    v243 = v200;
    v244 = v203;
    v245 = v198;
    v246 = v197;
    v247 = 0;
    v248 = v195;
    v249 = v107;
    v250 = 0x4034000000000000;
    v251 = 0;
    v252 = 0;
    v255 = v185;
    v256 = v187;
    v257 = v186;
    *outValue = v194;
    *&outValue[2] = v109;
    *&v211 = v111;
    *(&v211 + 1) = v110;
    *&v212 = __PAIR64__(LODWORD(v192), v201);
    *(&v212 + 1) = __PAIR64__(v188, v191);
    *&v213 = v200;
    *(&v213 + 1) = v203;
    *&v214 = v198;
    *(&v214 + 1) = v197;
    *&v215 = 0;
    *(&v215 + 1) = v195;
    *&v216 = v107;
    *(&v216 + 1) = 0x4034000000000000;
    *&v217 = 0;
    WORD4(v217) = 0;
    *(&v217 + 10) = v206;
    HIWORD(v217) = v207;
    *&v218 = v185;
    *(&v218 + 1) = v187;
    v219 = v186;
    sub_2371339F0(v237, ioDataSize);
    sub_237133A4C(outValue);
    v157 = OBJC_IVAR____TtC12CoreAudioKit16CAAUEQHeaderView_params;
    swift_beginAccess();
    sub_2371339F0(v237, ioDataSize);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *ioDataSize = *(v189 + v157);
    *(v189 + v157) = 0x8000000000000000;
    sub_23718E500(v237, v201, isUniquelyReferenced_nonNull_native);
    *(v189 + v157) = *ioDataSize;
    swift_endAccess();
    [*(v189 + OBJC_IVAR____TtC12CoreAudioKit16CAAUEQHeaderView_paramStack) addArrangedSubview_];
    v159 = v238;
    [v238 addTarget:v189 action:sel_textFieldEditingDidChange_ forControlEvents:0x40000];
    [v159 setKeyboardType_];
    [v159 setDelegate_];
    sub_237133A4C(v237);

    v22 = v179;
    v160 = [v179 tintColor];
    sub_23717E6D4(v201, v160);

    if (v190)
    {
      break;
    }

    v23 = 1;
    v24 = 1;
    v14 = v180;
    v25 = v177;
  }

  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v161 = objc_opt_self();
  v162 = [v161 defaultCenter];
  v163 = sub_23719653C();
  v164 = *&v180[OBJC_IVAR____TtC12CoreAudioKit21AUDelayViewController_mixKnob];
  [v162 addObserver:v180 selector:sel_knobValueChangedWithNotification_ name:v163 object:v164];

  v165 = [v161 &selRef_parameterWithID_scope_element_ + 5];
  v166 = sub_23719653C();
  [v165 addObserver:v180 selector:sel_knobTouchedWithNotification_ name:v166 object:v164];

  v167 = [v161 defaultCenter];
  v168 = sub_23719653C();
  v169 = *&v180[OBJC_IVAR____TtC12CoreAudioKit21AUDelayViewController_cutoffKnob];
  [v167 addObserver:v180 selector:sel_knobValueChangedWithNotification_ name:v168 object:v169];

  v170 = [v161 defaultCenter];
  v171 = sub_23719653C();
  [v170 &selRef_getHostCallbackInfo];

  sub_23717269C();
}

void sub_23717269C()
{
  v1 = v0;
  v15 = *MEMORY[0x277D85DE8];
  v2 = OBJC_IVAR____TtC12CoreAudioKit25AUAppleViewControllerBase_AU;
  v3 = OBJC_IVAR____TtC12CoreAudioKit25AUAppleViewControllerBase_eventListener;
  swift_beginAccess();
  v4 = 0;
  inRunLoopMode = *MEMORY[0x277CBE738];
  do
  {
    v8 = *&v1[v2];
    if (v8)
    {
      v9 = *(&unk_284A39A68 + v4 + 32);
      v10 = *&v1[v3];
      if (!v10)
      {
        v11 = CFRunLoopGetCurrent();
        swift_beginAccess();
        v12 = AUEventListenerCreate(sub_237176350, v1, v11, inRunLoopMode, 0.05, 0.05, &v1[v3]);
        swift_endAccess();

        if (v12 != sub_2371964DC())
        {
          *&inEvent.mEventType = 0;
          inEvent.mArgument.mParameter.mAudioUnit = 0xE000000000000000;
          sub_23719693C();

          *&inEvent.mEventType = 0xD00000000000002BLL;
          inEvent.mArgument.mParameter.mAudioUnit = 0x800000023719EAE0;
          v5 = sub_237196A5C();
          MEMORY[0x2383C5F20](v5);

          v6 = *&inEvent.mEventType;
          mAudioUnit = inEvent.mArgument.mParameter.mAudioUnit;
LABEL_3:
          sub_237176A9C(v6, mAudioUnit, v12);

          goto LABEL_4;
        }

        v10 = *&v1[v3];
      }

      inEvent.mEventType = kAudioUnitEvent_ParameterValueChange;
      inEvent.mArgument.mParameter.mAudioUnit = v8;
      *&inEvent.mArgument.mProperty.mPropertyID = v9;
      if (!v10)
      {
        __break(1u);
      }

      sub_2371964DC();
      inEvent.mEventType = kAudioUnitEvent_BeginParameterChangeGesture;
      v12 = AUEventListenerAddEventType(v10, v1, &inEvent);
      if (v12 == sub_2371964DC())
      {
        inEvent.mEventType = kAudioUnitEvent_EndParameterChangeGesture;
        v12 = AUEventListenerAddEventType(v10, v1, &inEvent);
      }

      if (v12 == sub_2371964DC())
      {
        inEvent.mEventType = kAudioUnitEvent_ParameterValueChange;
        v12 = AUEventListenerAddEventType(v10, v1, &inEvent);
      }

      if (v12 != sub_2371964DC())
      {
        sub_23719693C();
        MEMORY[0x2383C5F20](0xD00000000000002DLL, 0x800000023719EB10);
        type metadata accessor for AudioUnitParameter(0);
        sub_2371969CC();
        v6 = 0;
        mAudioUnit = 0xE000000000000000;
        goto LABEL_3;
      }
    }

LABEL_4:
    v4 += 4;
  }

  while (v4 != 16);
}

void sub_23717298C()
{
  v0 = sub_23719630C();
  if (v0)
  {
    v1 = v0;
    sub_23719690C();
    if (!*(v1 + 16))
    {
      goto LABEL_9;
    }

    v2 = sub_237190728(v6);
    if ((v3 & 1) == 0)
    {
      goto LABEL_9;
    }

    sub_237114D0C(*(v1 + 56) + 32 * v2, v7);
    sub_237114F1C(v6);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    sub_23719690C();
    if (*(v1 + 16) && (v4 = sub_237190728(v6), (v5 & 1) != 0))
    {
      sub_237114D0C(*(v1 + 56) + 32 * v4, v7);
      sub_237114F1C(v6);

      if (swift_dynamicCast())
      {
        sub_237173E18(1634886000, 2.9965e32);
      }
    }

    else
    {
LABEL_9:

      sub_237114F1C(v6);
    }
  }
}

void sub_237172B28()
{
  v1 = *(v0 + OBJC_IVAR____TtC12CoreAudioKit21AUDelayViewController_headerView);
  sub_23717E58C();
  v2 = sub_23719630C();
  if (!v2)
  {
    return;
  }

  v3 = v2;
  *&v179 = 0x6D61726170;
  *(&v179 + 1) = 0xE500000000000000;
  sub_23719690C();
  if (!*(v3 + 16) || (v4 = sub_237190728(v209), (v5 & 1) == 0))
  {

    sub_237114F1C(v209);
    return;
  }

  sub_237114D0C(*(v3 + 56) + 32 * v4, v189);
  sub_237114F1C(v209);

  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  v129 = v1;
  v6 = sub_237174914(v179);
  v8 = v7;
  v9 = sub_237174A00(v179);
  v136 = v10;
  v137 = v9;
  v11 = sub_237173CFC(v179);
  v12 = sub_2371307E8(v179);
  v13 = sub_237130920(v179);
  v14 = sub_23716E574();
  v143 = v179;
  v135 = sub_237174ACC(v179);
  v16 = v15;
  v17 = objc_allocWithZone(MEMORY[0x277D75D18]);
  v142 = v14;
  v133 = [v17 initWithFrame_];
  [v133 setTranslatesAutoresizingMaskIntoConstraints_];
  v18 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v19 = objc_opt_self();
  v20 = v18;
  v21 = [v19 systemFontOfSize_];
  [v20 setFont_];

  [v20 setTextAlignment_];
  [v20 setAdjustsFontSizeToFitWidth_];
  [v20 setAllowsDefaultTighteningForTruncation_];
  [v20 setMinimumScaleFactor_];
  v22 = v20;
  [v22 setBaselineAdjustment_];
  [v22 setTranslatesAutoresizingMaskIntoConstraints_];
  v138 = v6;
  v141 = v8;
  v23 = sub_23719653C();
  [v22 setText_];

  LODWORD(v24) = 1112014848;
  [v22 setContentHuggingPriority:0 forAxis:v24];
  LODWORD(v25) = 1144750080;
  v139 = v22;
  [v22 setContentCompressionResistancePriority:0 forAxis:v25];
  v26 = type metadata accessor for CAAUEQHeaderView.AUAccessibleTextField();
  v27 = objc_allocWithZone(v26);
  *&v27[OBJC_IVAR____TtCC12CoreAudioKit16CAAUEQHeaderView21AUAccessibleTextField_min] = v12;
  *&v27[OBJC_IVAR____TtCC12CoreAudioKit16CAAUEQHeaderView21AUAccessibleTextField_max] = v13;
  *&v27[OBJC_IVAR____TtCC12CoreAudioKit16CAAUEQHeaderView21AUAccessibleTextField_logBase] = 0;
  v176.receiver = v27;
  v176.super_class = v26;
  v28 = objc_msgSendSuper2(&v176, sel_initWithFrame_, 0.0, 0.0, 50.0, 22.0);
  v29 = *MEMORY[0x277D765B0];
  v30 = *MEMORY[0x277D76538];
  if (!*MEMORY[0x277D765B0])
  {
    if (!v30)
    {
      v29 = 0;
      goto LABEL_13;
    }

LABEL_11:
    v29 |= v30;
    goto LABEL_13;
  }

  if ((v30 & ~v29) != 0)
  {
    goto LABEL_11;
  }

LABEL_13:
  v31 = v28;
  [v31 setAccessibilityTraits_];
  [v31 setSecureTextEntry_];
  v32 = v31;
  v131 = v19;
  v33 = [v19 systemFontOfSize_];
  [v32 setFont_];

  v34 = v32;
  [v34 setTextAlignment_];
  v35 = objc_opt_self();
  v36 = [v35 systemBackgroundColor];
  [v34 setBackgroundColor_];

  [v34 setClearButtonMode_];
  [v34 setEnablesReturnKeyAutomatically_];
  [v34 setAdjustsFontSizeToFitWidth_];
  [v34 setMinimumFontSize_];
  *&v34[OBJC_IVAR____TtCC12CoreAudioKit16CAAUEQHeaderView21AUAccessibleTextField_min] = v12;
  *&v34[OBJC_IVAR____TtCC12CoreAudioKit16CAAUEQHeaderView21AUAccessibleTextField_max] = v13;
  *&v34[OBJC_IVAR____TtCC12CoreAudioKit16CAAUEQHeaderView21AUAccessibleTextField_logBase] = 0;
  [v34 setTranslatesAutoresizingMaskIntoConstraints_];
  [v34 setReturnKeyType_];
  [v34 setContentVerticalAlignment_];
  [v34 setEnabled_];

  v37 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  *&v38 = v11;
  v39 = [v37 initWithFloat_];
  v40 = [v142 stringFromNumber_];

  [v34 setText_];
  [v34 setTag_];

  v41 = sub_23719653C();
  v42 = [objc_opt_self() bundleWithIdentifier_];

  if (v42)
  {
    v44 = v42;
    sub_23719634C();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE94E70, &unk_23719B110);
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_23719B040;
    v46 = [v34 text];
    if (!v46)
    {
LABEL_25:
      __break(1u);
      return;
    }

    v47 = v46;
    v48 = sub_23719657C();
    v50 = v49;

    v51 = MEMORY[0x277D837D0];
    *(v45 + 56) = MEMORY[0x277D837D0];
    v52 = sub_237115040();
    *(v45 + 32) = v48;
    *(v45 + 40) = v50;
    *(v45 + 96) = v51;
    *(v45 + 104) = v52;
    *(v45 + 64) = v52;
    *(v45 + 72) = v135;
    *(v45 + 80) = v16;

    sub_23719659C();

    v53 = sub_23719653C();

    [v34 setAccessibilityValue_];
  }

  v130 = v42;
  v128 = v35;
  LODWORD(v43) = 1144750080;
  [v34 setContentCompressionResistancePriority:0 forAxis:v43];
  LODWORD(v54) = 1144750080;
  [v34 setContentHuggingPriority:0 forAxis:v54];
  v55 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v56 = [v131 systemFontOfSize_];
  [v55 setFont_];

  [v55 setTextAlignment_];
  [v55 setAdjustsFontSizeToFitWidth_];
  [v55 setAllowsDefaultTighteningForTruncation_];
  [v55 setAdjustsFontSizeToFitWidth_];
  [v55 setMinimumScaleFactor_];
  v57 = v55;
  [v57 setBaselineAdjustment_];
  [v57 setTranslatesAutoresizingMaskIntoConstraints_];
  v58 = sub_23719653C();
  [v57 setText_];

  LODWORD(v59) = 1148846080;
  [v57 setContentHuggingPriority:0 forAxis:v59];
  LODWORD(v60) = 1132068864;
  [v57 setContentCompressionResistancePriority:0 forAxis:v60];
  [v57 setAccessibilityElementsHidden_];

  [v133 addSubview_];
  [v133 addSubview_];
  [v133 addSubview_];

  v209[0] = v133;
  v209[1] = v139;
  v209[2] = v57;
  v209[3] = v34;
  v210 = v143;
  v211 = v11;
  v212 = v12;
  v213 = v13;
  v214 = v6;
  v215 = v141;
  v216 = v137;
  v217 = v136;
  v218 = 0;
  v219 = v142;
  v222 = 0;
  v220 = 0;
  v221 = 0;
  v223 = 0;
  v225 = v178;
  v224 = v177;
  v228 = 0;
  v226 = 0;
  v227 = 0;
  sub_2371377FC();
  v189[0] = v133;
  v189[1] = v139;
  v189[2] = v57;
  v189[3] = v34;
  v190 = v143;
  v191 = v11;
  v192 = v12;
  v193 = v13;
  v194 = v6;
  v195 = v141;
  v196 = v137;
  v197 = v136;
  v198 = 0;
  v199 = v142;
  v202 = 0;
  v200 = 0;
  v201 = 0;
  v203 = 0;
  v205 = v178;
  v204 = v177;
  v208 = 0;
  v206 = 0;
  v207 = 0;
  v229[0] = 0;
  v61 = v133;
  sub_237137C10();
  v63 = v62;
  v65 = v64;
  v67 = v66;
  v68 = [v61 widthAnchor];

  v69 = [v68 constraintEqualToConstant_];
  sub_2371609EC(v229);
  [v69 setActive_];
  v165 = MEMORY[0x277D84F90];
  *&v166 = v61;
  v134 = v61;
  *(&v166 + 1) = v139;
  *&v167 = v57;
  *(&v167 + 1) = v34;
  *&v168 = __PAIR64__(LODWORD(v11), v143);
  *(&v168 + 1) = __PAIR64__(LODWORD(v13), LODWORD(v12));
  *&v169 = v6;
  *(&v169 + 1) = v141;
  v70 = v69;
  *&v170 = v137;
  *(&v170 + 1) = v136;
  *&v171 = 0;
  *(&v171 + 1) = v142;
  *&v173 = 0;
  v172 = v69;
  WORD4(v173) = 0;
  HIWORD(v173) = v178;
  *(&v173 + 10) = v177;
  *&v174 = v65;
  *(&v174 + 1) = v63;
  v175 = v67;
  v71 = objc_allocWithZone(MEMORY[0x277D750A0]);
  v185 = v69;
  v186 = v173;
  v187 = v174;
  v188 = v67;
  v181 = v168;
  v182 = v169;
  v183 = v170;
  v184 = v171;
  v179 = v166;
  v180 = v167;
  sub_2371339F0(&v166, v145);
  sub_2371339F0(&v166, v145);
  v72 = v139;
  v73 = v34;
  v74 = v57;
  v75 = [v71 initWithAccessibilityContainer_];
  swift_unknownObjectRelease();
  sub_237133A4C(&v166);
  *&v179 = 0;
  *(&v179 + 1) = 0xE000000000000000;
  v76 = [v72 text];
  if (!v76)
  {
    __break(1u);
    goto LABEL_23;
  }

  v77 = v76;
  v78 = sub_23719657C();
  v80 = v79;

  MEMORY[0x2383C5F20](v78, v80);

  MEMORY[0x2383C5F20](8236, 0xE200000000000000);
  v81 = [v73 text];
  if (!v81)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v82 = v81;
  v124 = v65;
  v125 = v67;
  v126 = v63;
  v127 = v13;
  v132 = v12;
  v140 = v11;
  v83 = sub_23719657C();
  v85 = v84;

  MEMORY[0x2383C5F20](v83, v85);

  MEMORY[0x2383C5F20](8236, 0xE200000000000000);
  v86 = [v74 text];
  if (!v86)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v87 = sub_23719657C();
  v89 = v88;

  MEMORY[0x2383C5F20](v87, v89);

  v90 = sub_23719653C();

  [v75 setAccessibilityLabel_];

  [v72 frame];
  v92 = v91;
  v94 = v93;
  v96 = v95;
  v98 = v97;

  [v73 frame];
  v100 = v99;
  v102 = v101;
  v104 = v103;
  v106 = v105;

  v230.origin.x = v92;
  v230.origin.y = v94;
  v230.size.width = v96;
  v230.size.height = v98;
  v234.origin.x = v100;
  v234.origin.y = v102;
  v234.size.width = v104;
  v234.size.height = v106;
  v231 = CGRectUnion(v230, v234);
  x = v231.origin.x;
  y = v231.origin.y;
  width = v231.size.width;
  height = v231.size.height;
  [v74 frame];
  v112 = v111;
  v114 = v113;
  v116 = v115;
  v118 = v117;

  v232.origin.x = x;
  v232.origin.y = y;
  v232.size.width = width;
  v232.size.height = height;
  v235.origin.x = v112;
  v235.origin.y = v114;
  v235.size.width = v116;
  v235.size.height = v118;
  v233 = CGRectUnion(v232, v235);
  [v75 setAccessibilityFrameInContainerSpace_];
  v119 = v75;
  MEMORY[0x2383C5F60]();
  if (*((v165 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v165 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_23719664C();
  }

  sub_23719665C();

  *&v179 = v134;
  *(&v179 + 1) = v72;
  *&v180 = v74;
  *(&v180 + 1) = v73;
  *&v181 = __PAIR64__(LODWORD(v140), v143);
  *(&v181 + 1) = __PAIR64__(LODWORD(v127), LODWORD(v132));
  *&v182 = v138;
  *(&v182 + 1) = v141;
  *&v183 = v137;
  *(&v183 + 1) = v136;
  *&v184 = 0;
  *(&v184 + 1) = v142;
  *&v186 = 0;
  v185 = v70;
  WORD4(v186) = 0;
  HIWORD(v186) = v178;
  *(&v186 + 10) = v177;
  *&v187 = v124;
  *(&v187 + 1) = v126;
  v188 = v125;
  v145[0] = v134;
  v145[1] = v72;
  v145[2] = v74;
  v145[3] = v73;
  v146 = v143;
  v147 = v140;
  v148 = v132;
  v149 = v127;
  v150 = v138;
  v151 = v141;
  v152 = v137;
  v153 = v136;
  v154 = 0;
  v155 = v142;
  v157 = 0;
  v158 = 0;
  v156 = v70;
  v159 = 0;
  v161 = v178;
  v160 = v177;
  v162 = v124;
  v163 = v126;
  v164 = v125;
  sub_2371339F0(&v179, v144);
  sub_237133A4C(v145);
  v120 = OBJC_IVAR____TtC12CoreAudioKit16CAAUEQHeaderView_params;
  swift_beginAccess();
  sub_2371339F0(&v179, v144);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v144[0] = *(v129 + v120);
  *(v129 + v120) = 0x8000000000000000;
  sub_23718E500(&v179, v143, isUniquelyReferenced_nonNull_native);
  *(v129 + v120) = v144[0];
  swift_endAccess();
  [*(v129 + OBJC_IVAR____TtC12CoreAudioKit16CAAUEQHeaderView_paramStack) addArrangedSubview_];
  v122 = *(&v180 + 1);
  [*(&v180 + 1) addTarget:v129 action:sel_textFieldEditingDidChange_ forControlEvents:0x40000];
  [v122 setKeyboardType_];
  [v122 setDelegate_];
  sub_237133A4C(&v179);

  v123 = [v128 tintColor];
  sub_23717E6D4(v143, v123);
}

uint64_t sub_237173C0C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v6 = sub_23719631C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2371962FC();
  v11 = a1;
  a4(v10);

  return (*(v7 + 8))(v10, v6);
}

AudioUnitParameterValue sub_237173CFC(AudioUnitParameterID inID)
{
  v8 = *MEMORY[0x277D85DE8];
  outValue = 0.0;
  v3 = *(v1 + OBJC_IVAR____TtC12CoreAudioKit25AUAppleViewControllerBase_AU);
  if (v3)
  {
    Parameter = AudioUnitGetParameter(v3, inID, 0, 0, &outValue);
    if (Parameter != sub_2371964DC())
    {
      sub_23719693C();

      v5 = sub_237196A5C();
      MEMORY[0x2383C5F20](v5);

      sub_237176A9C(0xD000000000000018, 0x80000002371A0560, Parameter);
    }
  }

  return outValue;
}

uint64_t sub_237173E18(uint64_t result, AudioUnitParameterValue a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = *&v2[OBJC_IVAR____TtC12CoreAudioKit25AUAppleViewControllerBase_AU];
  if (v3)
  {
    v5 = result;
    inParameter.mAudioUnit = *&v2[OBJC_IVAR____TtC12CoreAudioKit25AUAppleViewControllerBase_AU];
    inParameter.mScope = 0;
    inParameter.mElement = 0;
    inParameter.mParameterID = result;
    v6 = OBJC_IVAR____TtC12CoreAudioKit25AUAppleViewControllerBase_eventListener;
    swift_beginAccess();
    v7 = AUParameterSet(*&v2[v6], v2, &inParameter, a2, 0);
    if (v7 == sub_2371964DC())
    {
      sub_237135E04(v5, a2);
      outValue = 0.0;
      result = AudioUnitGetParameter(v3, v5, 0, 0, &outValue);
      if (outValue == a2)
      {
        return result;
      }

      v7 = result;
      v11 = 0;
      v12 = 0xE000000000000000;
      sub_23719693C();
      MEMORY[0x2383C5F20](0xD000000000000014, 0x80000002371A05A0);
      v8 = sub_237196A5C();
      MEMORY[0x2383C5F20](v8);

      MEMORY[0x2383C5F20](8237, 0xE200000000000000);
      sub_2371966AC();
      MEMORY[0x2383C5F20](0xD00000000000001BLL, 0x80000002371A05C0);
    }

    else
    {
      v11 = 0;
      v12 = 0xE000000000000000;
      sub_23719693C();
      MEMORY[0x2383C5F20](0xD000000000000018, 0x80000002371A0580);
      outValue = *&v5;
      v9 = sub_237196A5C();
      MEMORY[0x2383C5F20](v9);

      MEMORY[0x2383C5F20](544175136, 0xE400000000000000);
    }

    sub_2371966AC();
    sub_237176A9C(v11, v12, v7);
  }

  return result;
}

void sub_2371740C4(int a1, int a2, int a3, uint64_t inID)
{
  if (!a2)
  {
    v6 = sub_237173CFC(inID);
    sub_237135E04(inID, v6);
    if ((inID - 1) < 2)
    {
      sub_2371208B8(inID);
      sub_237135E04(inID, v6);
      return;
    }

    if (inID == 3)
    {
      v7 = OBJC_IVAR____TtC12CoreAudioKit21AUDelayViewController_cutoffKnob;
    }

    else
    {
      if (inID)
      {
        return;
      }

      v7 = OBJC_IVAR____TtC12CoreAudioKit21AUDelayViewController_mixKnob;
    }

    *(*(v4 + v7) + OBJC_IVAR____TtC12CoreAudioKit13AUKnobControl_value) = v6;
    sub_23713F9D4();
  }
}

id sub_237174190()
{
  v1 = OBJC_IVAR____TtC12CoreAudioKit21AUDelayViewController_headerView;
  type metadata accessor for CAAdjustingHeaderView();
  *&v0[v1] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v2 = OBJC_IVAR____TtC12CoreAudioKit21AUDelayViewController_edgeControlSection;
  *&v0[v2] = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v3 = OBJC_IVAR____TtC12CoreAudioKit21AUDelayViewController_graphView;
  *&v0[v3] = [objc_allocWithZone(type metadata accessor for AUDelayGraphView()) initWithFrame_];
  *&v0[OBJC_IVAR____TtC12CoreAudioKit21AUDelayViewController_modeControl] = 0;
  *&v0[OBJC_IVAR____TtC12CoreAudioKit21AUDelayViewController____lazy_storage___decimalFormatter] = 0;
  v4 = OBJC_IVAR____TtC12CoreAudioKit21AUDelayViewController_timeFormatter;
  *&v0[v4] = sub_23716E5D8(3);
  v5 = OBJC_IVAR____TtC12CoreAudioKit21AUDelayViewController_zoomInButton;
  *&v0[v5] = [objc_allocWithZone(MEMORY[0x277D75220]) initWithFrame_];
  v6 = OBJC_IVAR____TtC12CoreAudioKit21AUDelayViewController_zoomOutButton;
  *&v0[v6] = [objc_allocWithZone(MEMORY[0x277D75220]) initWithFrame_];
  v7 = OBJC_IVAR____TtC12CoreAudioKit21AUDelayViewController_mixKnob;
  v8 = type metadata accessor for AUKnobControl();
  *&v0[v7] = [objc_allocWithZone(v8) initWithFrame_];
  v9 = OBJC_IVAR____TtC12CoreAudioKit21AUDelayViewController_cutoffKnob;
  *&v0[v9] = [objc_allocWithZone(v8) initWithFrame_];
  *&v0[OBJC_IVAR____TtC12CoreAudioKit21AUDelayViewController_rightWidthConstraint] = 0;
  *&v0[OBJC_IVAR____TtC12CoreAudioKit21AUDelayViewController_zoomFactor] = 1065353216;
  v11.receiver = v0;
  v11.super_class = type metadata accessor for AUDelayViewController();
  return objc_msgSendSuper2(&v11, sel_init);
}

id sub_237174398(void *a1)
{
  v3 = OBJC_IVAR____TtC12CoreAudioKit21AUDelayViewController_headerView;
  type metadata accessor for CAAdjustingHeaderView();
  *&v1[v3] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v4 = OBJC_IVAR____TtC12CoreAudioKit21AUDelayViewController_edgeControlSection;
  *&v1[v4] = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v5 = OBJC_IVAR____TtC12CoreAudioKit21AUDelayViewController_graphView;
  *&v1[v5] = [objc_allocWithZone(type metadata accessor for AUDelayGraphView()) initWithFrame_];
  *&v1[OBJC_IVAR____TtC12CoreAudioKit21AUDelayViewController_modeControl] = 0;
  *&v1[OBJC_IVAR____TtC12CoreAudioKit21AUDelayViewController____lazy_storage___decimalFormatter] = 0;
  v6 = OBJC_IVAR____TtC12CoreAudioKit21AUDelayViewController_timeFormatter;
  *&v1[v6] = sub_23716E5D8(3);
  v7 = OBJC_IVAR____TtC12CoreAudioKit21AUDelayViewController_zoomInButton;
  *&v1[v7] = [objc_allocWithZone(MEMORY[0x277D75220]) initWithFrame_];
  v8 = OBJC_IVAR____TtC12CoreAudioKit21AUDelayViewController_zoomOutButton;
  *&v1[v8] = [objc_allocWithZone(MEMORY[0x277D75220]) initWithFrame_];
  v9 = OBJC_IVAR____TtC12CoreAudioKit21AUDelayViewController_mixKnob;
  v10 = type metadata accessor for AUKnobControl();
  *&v1[v9] = [objc_allocWithZone(v10) initWithFrame_];
  v11 = OBJC_IVAR____TtC12CoreAudioKit21AUDelayViewController_cutoffKnob;
  *&v1[v11] = [objc_allocWithZone(v10) initWithFrame_];
  *&v1[OBJC_IVAR____TtC12CoreAudioKit21AUDelayViewController_rightWidthConstraint] = 0;
  *&v1[OBJC_IVAR____TtC12CoreAudioKit21AUDelayViewController_zoomFactor] = 1065353216;
  v14.receiver = v1;
  v14.super_class = type metadata accessor for AUDelayViewController();
  v12 = objc_msgSendSuper2(&v14, sel_initWithCoder_, a1);

  if (v12)
  {
  }

  return v12;
}

void sub_2371745CC()
{
  v1 = *(v0 + OBJC_IVAR____TtC12CoreAudioKit21AUDelayViewController_rightWidthConstraint);
}

id sub_23717469C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AUDelayViewController();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

BOOL sub_23717481C(uint64_t a1, uint64_t a2, uint64_t a3)
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
        v6 = _swift_stdlib_strtof_clocale();
        return v6 && *v6 == 0;
      }

      return 0;
    }
  }

  sub_23719692C();
  if (!v3)
  {
    return v8;
  }

  return v5;
}

uint64_t sub_237174914(int a1)
{
  result = 0;
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      type metadata accessor for AUAppleViewControllerBase();
      v3 = 0x6B63616264656566;
      v4 = 0xE800000000000000;
    }

    else
    {
      if (a1 != 3)
      {
        return result;
      }

      type metadata accessor for AUAppleViewControllerBase();
      v4 = 0x80000002371A0540;
      v3 = 0xD000000000000018;
    }
  }

  else if (a1)
  {
    if (a1 != 1)
    {
      return result;
    }

    type metadata accessor for AUAppleViewControllerBase();
    v3 = 0x69742079616C6564;
    v4 = 0xEA0000000000656DLL;
  }

  else
  {
    type metadata accessor for AUAppleViewControllerBase();
    v3 = 0x207465772F797264;
    v4 = 0xEB0000000078696DLL;
  }

  return sub_237175EDC(v3, v4);
}

uint64_t sub_237174A00(int a1)
{
  result = 0;
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      type metadata accessor for AUAppleViewControllerBase();
      v3 = 0x6B63616264656566;
      v4 = 0xE800000000000000;
    }

    else
    {
      if (a1 != 3)
      {
        return result;
      }

      type metadata accessor for AUAppleViewControllerBase();
      v3 = 0x66666F747563;
      v4 = 0xE600000000000000;
    }
  }

  else if (a1)
  {
    if (a1 != 1)
    {
      return result;
    }

    type metadata accessor for AUAppleViewControllerBase();
    v3 = 0x79616C6564;
    v4 = 0xE500000000000000;
  }

  else
  {
    type metadata accessor for AUAppleViewControllerBase();
    v3 = 7891309;
    v4 = 0xE300000000000000;
  }

  return sub_237175EDC(v3, v4);
}

uint64_t sub_237174ACC(int a1)
{
  result = 0;
  if (a1 > 1)
  {
    if (a1 == 3)
    {
      type metadata accessor for AUAppleViewControllerBase();
      v3 = 31304;
      v4 = 0xE200000000000000;
      return sub_237175EDC(v3, v4);
    }

    if (a1 != 2)
    {
      return result;
    }
  }

  else if (a1)
  {
    if (a1 != 1)
    {
      return result;
    }

    type metadata accessor for AUAppleViewControllerBase();
    v3 = 1935893875;
    v4 = 0xE400000000000000;
    return sub_237175EDC(v3, v4);
  }

  type metadata accessor for AUAppleViewControllerBase();
  v3 = 37;
  v4 = 0xE100000000000000;
  return sub_237175EDC(v3, v4);
}

_BYTE *sub_237174B64@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v2 = *result;
  v3 = v2 > 0x20;
  v4 = (1 << v2) & 0x100003E01;
  if (v3 || v4 == 0)
  {
    result = _swift_stdlib_strtof_clocale();
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

void *sub_237174C2C()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v2 = result;
  v3 = [result text];

  if (v3)
  {
    sub_23719657C();

    v4 = sub_23719653C();
    [v0 setAccessibilityLabel_];
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    goto LABEL_17;
  }

  v5 = result;
  v6 = OBJC_IVAR____TtC12CoreAudioKit30AUGenericViewParameterCellBase_param;
  result = *&v0[OBJC_IVAR____TtC12CoreAudioKit30AUGenericViewParameterCellBase_param];
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  [result value];
  [v5 setOn_];

  result = *&v0[v6];
  if (!result)
  {
LABEL_19:
    __break(1u);
    return result;
  }

  [result value];
  if (v8 == 0.0)
  {
    v9 = 6710863;
  }

  else
  {
    v9 = 28239;
  }

  if (v8 == 0.0)
  {
    v10 = 0xE300000000000000;
  }

  else
  {
    v10 = 0xE200000000000000;
  }

  sub_2371539D4(v9, v10);

  v11 = sub_23719653C();
  [v0 setAccessibilityValue_];

  sub_2371539D4(0xD000000000000014, 0x80000002371A0670);
  v12 = sub_23719653C();
  [v0 setAccessibilityHint_];
}

void sub_237174E00(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC12CoreAudioKit30AUGenericViewParameterCellBase_param);
  *(v1 + OBJC_IVAR____TtC12CoreAudioKit30AUGenericViewParameterCellBase_param) = a1;
  v3 = a1;

  sub_237152DA4();
  sub_237174C2C();
}

void sub_237174F34()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    __break(1u);
    goto LABEL_9;
  }

  v2 = Strong;
  v3 = [v0 tintColor];
  if (!v3)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v4 = v3;
  v5 = [v3 colorWithAlphaComponent_];

  [v2 setOnTintColor_];
  v6 = swift_unknownObjectWeakLoadStrong();
  if (!v6)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v7 = v6;
  v8 = [v0 tintColor];
  [v7 setTintColor_];

  v9 = swift_unknownObjectWeakLoadStrong();
  if (!v9)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v10 = v9;
  v11 = [objc_opt_self() labelColor];
  [v10 setTextColor_];
}

uint64_t sub_2371750A0()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    __break(1u);
    goto LABEL_17;
  }

  v2 = result;
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v3 = result;
  v4 = [result isOn];

  [v2 setOn_];
  v5 = OBJC_IVAR____TtC12CoreAudioKit30AUGenericViewParameterCellBase_param;
  result = *&v0[OBJC_IVAR____TtC12CoreAudioKit30AUGenericViewParameterCellBase_param];
  if (!result)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  [result value];
  if (v6 == 0.0)
  {
    v7 = 6710863;
  }

  else
  {
    v7 = 28239;
  }

  if (v6 == 0.0)
  {
    v8 = 0xE300000000000000;
  }

  else
  {
    v8 = 0xE200000000000000;
  }

  sub_2371539D4(v7, v8);

  v9 = sub_23719653C();
  [v0 setAccessibilityValue_];

  v24 = sub_23719653C();
  v10 = [objc_opt_self() defaultCenter];
  v11 = OBJC_IVAR____TtC12CoreAudioKit30AUGenericViewParameterCellBase_owner;
  swift_beginAccess();
  sub_23713F2EC(&v0[v11], v25);
  v12 = v26;
  if (v26)
  {
    v13 = __swift_project_boxed_opaque_existential_0(v25, v26);
    v14 = *(v12 - 8);
    MEMORY[0x28223BE20](v13, v13);
    v16 = v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0) + 192;
    (*(v14 + 16))(v16);
    v17 = sub_237196A6C();
    (*(v14 + 8))(v16, v12);
    __swift_destroy_boxed_opaque_existential_0(v25);
  }

  else
  {
    v17 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE94E30, &unk_23719B100);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23719B040;
  strcpy(v25, "param.address");
  HIWORD(v25[1]) = -4864;
  sub_23719690C();
  result = *&v0[v5];
  if (!result)
  {
    goto LABEL_19;
  }

  v19 = [result address];
  *(inited + 96) = MEMORY[0x277D84D38];
  *(inited + 72) = v19;
  strcpy(v25, "param.value");
  HIDWORD(v25[1]) = -352321536;
  sub_23719690C();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v20 = result;
    v21 = [result isOn];

    *(inited + 168) = MEMORY[0x277D83B88];
    *(inited + 144) = v21;
    sub_237119F04(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE948B0, &unk_23719B510);
    swift_arrayDestroy();
    v22 = sub_23719651C();

    v23 = v24;
    [v10 postNotificationName:v24 object:v17 userInfo:v22];

    swift_unknownObjectRelease();
    return 1;
  }

LABEL_20:
  __break(1u);
  return result;
}

void *sub_237175564(float a1)
{
  sub_237153858();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    __break(1u);
    goto LABEL_13;
  }

  v4 = result;
  [result setOn_];

  result = *&v1[OBJC_IVAR____TtC12CoreAudioKit30AUGenericViewParameterCellBase_param];
  if (!result)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  [result value];
  if (v5 == 0.0)
  {
    v6 = 6710863;
  }

  else
  {
    v6 = 28239;
  }

  if (v5 == 0.0)
  {
    v7 = 0xE300000000000000;
  }

  else
  {
    v7 = 0xE200000000000000;
  }

  sub_2371539D4(v6, v7);

  v8 = sub_23719653C();
  [v1 setAccessibilityValue_];
}

id sub_237175700(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AUGenericViewBoolParameterCell();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_237175768()
{
  v1 = sub_23719653C();
  v2 = [objc_opt_self() defaultCenter];
  v3 = OBJC_IVAR____TtC12CoreAudioKit30AUGenericViewParameterCellBase_owner;
  swift_beginAccess();
  sub_23713F2EC(v0 + v3, v18);
  v4 = v19;
  if (v19)
  {
    v5 = __swift_project_boxed_opaque_existential_0(v18, v19);
    v6 = *(v4 - 8);
    MEMORY[0x28223BE20](v5, v5);
    v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v6 + 16))(v8);
    v9 = sub_237196A6C();
    (*(v6 + 8))(v8, v4);
    __swift_destroy_boxed_opaque_existential_0(v18);
  }

  else
  {
    v9 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE94E30, &unk_23719B100);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23719B040;
  strcpy(v18, "param.address");
  HIWORD(v18[1]) = -4864;
  sub_23719690C();
  v11 = *(v0 + OBJC_IVAR____TtC12CoreAudioKit30AUGenericViewParameterCellBase_param);
  if (v11)
  {
    v12 = [v11 address];
    *(inited + 96) = MEMORY[0x277D84D38];
    *(inited + 72) = v12;
    strcpy(v18, "param.value");
    HIDWORD(v18[1]) = -352321536;
    sub_23719690C();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v14 = Strong;
      v15 = [Strong isOn];

      *(inited + 168) = MEMORY[0x277D83B88];
      *(inited + 144) = v15;
      sub_237119F04(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE948B0, &unk_23719B510);
      swift_arrayDestroy();
      v16 = sub_23719651C();

      [v2 postNotificationName:v1 object:v9 userInfo:v16];

      swift_unknownObjectRelease();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_237175AD4(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if (a2 == 2)
  {
    return (*((*MEMORY[0x277D85000] & *v4) + 0x1E0))(a4);
  }

  if (a2 == 1)
  {
    return (*((*MEMORY[0x277D85000] & *v4) + 0x1D8))(a4);
  }

  return result;
}

void sub_237175B68()
{
  v1 = OBJC_IVAR____TtC12CoreAudioKit25AUAppleViewControllerBase_eventListener;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = AUListenerDispose(v2);
    if (v3 != sub_2371964DC())
    {
      sub_237176A9C(0xD00000000000001BLL, 0x800000023719EF90, v3);
    }
  }

  *(v0 + v1) = 0;
}

void sub_237175BF0(unsigned int a1, unsigned int a2, unsigned int a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v7 = (*((*MEMORY[0x277D85000] & *v3) + 0x130))();
  if (v7)
  {
    v8 = v7;
    v9 = OBJC_IVAR____TtC12CoreAudioKit25AUAppleViewControllerBase_eventListener;
    swift_beginAccess();
    v10 = *(v3 + v9);
    if (!v10)
    {
      v11 = CFRunLoopGetCurrent();
      v12 = *MEMORY[0x277CBE738];
      swift_beginAccess();
      v13 = AUEventListenerCreate(sub_237176350, v3, v11, v12, 0.05, 0.05, (v3 + v9));
      swift_endAccess();

      if (v13 != sub_2371964DC())
      {
        sub_23719693C();

        *&inEvent.mEventType = 0xD00000000000002BLL;
        inEvent.mArgument.mParameter.mAudioUnit = 0x800000023719EAE0;
        v16 = sub_237196A5C();
        MEMORY[0x2383C5F20](v16);

        v14 = 0xD00000000000002BLL;
        v15 = 0x800000023719EAE0;
        goto LABEL_13;
      }

      v10 = *(v3 + v9);
    }

    inEvent.mArgument.mParameter.mAudioUnit = v8;
    *&inEvent.mArgument.mProperty.mPropertyID = __PAIR64__(a2, a1);
    *&inEvent.mArgument.mProperty.mElement = a3;
    if (!v10)
    {
      __break(1u);
      return;
    }

    sub_2371964DC();
    inEvent.mEventType = kAudioUnitEvent_BeginParameterChangeGesture;
    v13 = AUEventListenerAddEventType(v10, v3, &inEvent);
    if (v13 == sub_2371964DC())
    {
      inEvent.mEventType = kAudioUnitEvent_EndParameterChangeGesture;
      v13 = AUEventListenerAddEventType(v10, v3, &inEvent);
    }

    if (v13 == sub_2371964DC())
    {
      inEvent.mEventType = kAudioUnitEvent_ParameterValueChange;
      v13 = AUEventListenerAddEventType(v10, v3, &inEvent);
    }

    if (v13 != sub_2371964DC())
    {
      sub_23719693C();
      MEMORY[0x2383C5F20](0xD00000000000002DLL, 0x800000023719EB10);
      type metadata accessor for AudioUnitParameter(0);
      sub_2371969CC();
      v14 = 0;
      v15 = 0xE000000000000000;
LABEL_13:
      sub_237176A9C(v14, v15, v13);
    }
  }
}

uint64_t sub_237175EDC(uint64_t a1, uint64_t a2)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_23719634C();

  return v4;
}

uint64_t sub_237175FD0()
{
  v0 = sub_23719644C();
  __swift_allocate_value_buffer(v0, qword_27DE96950);
  __swift_project_value_buffer(v0, qword_27DE96950);
  return sub_23719643C();
}

id sub_237176054(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC12CoreAudioKit25AUAppleViewControllerBase_lastRenderedSampleTime] = 0;
  *&v1[OBJC_IVAR____TtC12CoreAudioKit25AUAppleViewControllerBase_eventListener] = 0;
  v1[OBJC_IVAR____TtC12CoreAudioKit25AUAppleViewControllerBase_auRendering] = 0;
  v1[OBJC_IVAR____TtC12CoreAudioKit25AUAppleViewControllerBase_initialized] = 0;
  *&v1[OBJC_IVAR____TtC12CoreAudioKit25AUAppleViewControllerBase_defaultDrawingInterval] = 0x3FA999999999999ALL;
  v1[OBJC_IVAR____TtC12CoreAudioKit25AUAppleViewControllerBase_needsRealtimeDrawing] = 0;
  *&v1[OBJC_IVAR____TtC12CoreAudioKit25AUAppleViewControllerBase_realtimeDrawingInterval] = 0;
  *&v1[OBJC_IVAR____TtC12CoreAudioKit25AUAppleViewControllerBase_AU] = 0;
  *&v1[OBJC_IVAR____TtC12CoreAudioKit25AUAppleViewControllerBase_topLevelObjects] = MEMORY[0x277D84F90];
  *&v1[OBJC_IVAR____TtC12CoreAudioKit25AUAppleViewControllerBase_tintColor] = 0;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AUAppleViewControllerBase();
  return objc_msgSendSuper2(&v3, sel_initWithNibName_bundle_, 0, 0);
}

id sub_237176140(void *a1)
{
  *&v1[OBJC_IVAR____TtC12CoreAudioKit25AUAppleViewControllerBase_lastRenderedSampleTime] = 0;
  *&v1[OBJC_IVAR____TtC12CoreAudioKit25AUAppleViewControllerBase_eventListener] = 0;
  v1[OBJC_IVAR____TtC12CoreAudioKit25AUAppleViewControllerBase_auRendering] = 0;
  v1[OBJC_IVAR____TtC12CoreAudioKit25AUAppleViewControllerBase_initialized] = 0;
  *&v1[OBJC_IVAR____TtC12CoreAudioKit25AUAppleViewControllerBase_defaultDrawingInterval] = 0x3FA999999999999ALL;
  v1[OBJC_IVAR____TtC12CoreAudioKit25AUAppleViewControllerBase_needsRealtimeDrawing] = 0;
  *&v1[OBJC_IVAR____TtC12CoreAudioKit25AUAppleViewControllerBase_realtimeDrawingInterval] = 0;
  *&v1[OBJC_IVAR____TtC12CoreAudioKit25AUAppleViewControllerBase_AU] = 0;
  *&v1[OBJC_IVAR____TtC12CoreAudioKit25AUAppleViewControllerBase_topLevelObjects] = MEMORY[0x277D84F90];
  *&v1[OBJC_IVAR____TtC12CoreAudioKit25AUAppleViewControllerBase_tintColor] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for AUAppleViewControllerBase();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

void *sub_237176350(void *result, uint64_t a2, unsigned int *a3, float a4)
{
  if (result)
  {
    v7 = result;
    v8 = v7;
    if (a2)
    {
      v9 = MEMORY[0x277D83ED8];
    }

    else
    {
      v9 = 0;
      v10[1] = 0;
      v10[2] = 0;
    }

    v10[0] = a2;
    v10[3] = v9;
    (*((*MEMORY[0x277D85000] & *v7) + 0x180))(v10, *a3, *(a3 + 1), *(a3 + 2), a3[6], a4);

    return sub_237152A68(v10);
  }

  return result;
}

id sub_237176450(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AUAppleViewControllerBase();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_2371764F4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2371765C0(v11, 0, 0, 1, a1, a2);
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
    sub_237114D0C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_2371765C0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_2371766CC(a5, a6);
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
    result = sub_23719696C();
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

void *sub_2371766CC(uint64_t a1, unint64_t a2)
{
  v3 = sub_237176718(a1, a2);
  sub_237176848(&unk_284A39540);
  return v3;
}

void *sub_237176718(uint64_t a1, unint64_t a2)
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

  v6 = sub_237176934(v5, 0);
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

  result = sub_23719696C();
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
        v10 = sub_2371965DC();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_237176934(v10, 0);
        result = sub_23719691C();
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

uint64_t sub_237176848(uint64_t result)
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
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

  result = sub_2371769A8(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_237176934(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE95458, &unk_23719C1A0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_2371769A8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE95458, &unk_23719C1A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    if (v10 != a4 || v12 >= &v13[v8])
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

void sub_237176A9C(uint64_t a1, unint64_t a2, int a3)
{
  if (qword_27DE94680 != -1)
  {
    swift_once();
  }

  v6 = sub_23719644C();
  __swift_project_value_buffer(v6, qword_27DE96950);

  oslog = sub_23719642C();
  v7 = sub_23719670C();

  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v11 = v9;
    *v8 = 136316162;
    *(v8 + 4) = sub_2371764F4(a1, a2, &v11);
    *(v8 + 12) = 1024;
    *(v8 + 14) = a3;
    *(v8 + 18) = 2080;
    *(v8 + 20) = sub_2371764F4(0xD00000000000007ELL, 0x80000002371A0790, &v11);
    *(v8 + 28) = 2080;
    *(v8 + 30) = sub_2371764F4(0xD000000000000012, 0x80000002371A0810, &v11);
    *(v8 + 38) = 2048;
    *(v8 + 40) = 69;
    _os_log_impl(&dword_2370FF000, oslog, v7, "%s: %d [%s %s- %ld]", v8, 0x30u);
    swift_arrayDestroy();
    MEMORY[0x2383C7000](v9, -1, -1);
    MEMORY[0x2383C7000](v8, -1, -1);
  }
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
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

unint64_t sub_237176D1C@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_23717D120(*a1);
  *a2 = result;
  return result;
}

void sub_237176D54()
{
  v1 = OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_enabled;
  if ((*(v0 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_enabled) & 1) == 0)
  {
    *(v0 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_highlighted) = 0;
  }

  if ((*(v0 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_bypassed) & 1) == 0)
  {
    v2 = OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_points;
    swift_beginAccess();
    v3 = *(v0 + v2);
    if (v3 >> 62)
    {
      if (sub_2371969FC() < 2)
      {
        return;
      }
    }

    else if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2)
    {
      return;
    }

    v4 = OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_controlLayer;
    v5 = *(v0 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_controlLayer);
    if (v5)
    {
      v6 = v5;
      v7 = sub_23717A2D4(v6, 0x747261507466654CLL, 0xE800000000000000);

      if (v7)
      {
        [v7 setHidden_];
      }

      v8 = *(v0 + v4);
      if (v8)
      {
        v9 = v8;
        v10 = sub_23717A2D4(v9, 0x7261507468676952, 0xE900000000000074);

        if (v10)
        {
          [v10 setHidden_];
        }

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

void sub_237176EC0()
{
  v1 = OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_bypassed;
  if (*(v0 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_bypassed) == 1 && *(v0 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_enabled) == 1)
  {
    *(v0 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_enabled) = 0;
    sub_237176D54();
  }

  v2 = OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_points;
  swift_beginAccess();
  v3 = *(v0 + v2);
  if (v3 >> 62)
  {
    if (sub_2371969FC() == 1)
    {
      goto LABEL_6;
    }
  }

  else if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
  {
LABEL_6:
    v4 = *(v0 + v2);
    if ((v4 & 0xC000000000000001) != 0)
    {

      v5 = MEMORY[0x2383C62A0](0, v4);

      goto LABEL_9;
    }

    if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v5 = *(v4 + 32);
LABEL_9:
      sub_2371770C4(v5, v0);
      goto LABEL_20;
    }

    __break(1u);
    goto LABEL_24;
  }

  v6 = OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_controlLayer;
  v7 = *(v0 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_controlLayer);
  if (!v7)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    return;
  }

  v8 = v7;
  v9 = sub_23717A2D4(v8, 0xD000000000000010, 0x80000002371A0A20);

  if (v9)
  {
    sub_2371770C4(v9, v0);
  }

  v10 = *(v0 + v6);
  if (!v10)
  {
    goto LABEL_25;
  }

  v11 = v10;
  v12 = sub_23717A2D4(v11, 0x747261507466654CLL, 0xE800000000000000);

  if (v12)
  {
    [v12 setHidden_];
  }

  v13 = *(v0 + v6);
  if (!v13)
  {
    goto LABEL_26;
  }

  v14 = v13;
  v5 = sub_23717A2D4(v14, 0x7261507468676952, 0xE900000000000074);

  if (!v5)
  {
    return;
  }

  [v5 setHidden_];
LABEL_20:
}

void sub_2371770C4(void *a1, uint64_t a2)
{
  v3 = sub_23717A2D4(a1, 0x7265746E6543, 0xE600000000000000);
  if (!v3)
  {
    return;
  }

  v4 = v3;
  v5 = OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_bypassed;
  v6 = *(a2 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_color);
  v15 = v4;
  if (*(a2 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_bypassed) == 1)
  {
    if (v6)
    {
      v7 = [v6 CGColor];
    }

    else
    {
      v7 = 0;
    }

    [v15 setBorderColor_];

    v10 = [objc_opt_self() clearColor];
    v9 = [v10 CGColor];

    goto LABEL_11;
  }

  if (v6)
  {
    v8 = [v6 CGColor];
    if (v8)
    {
      v9 = v8;
LABEL_11:
      objc_opt_self();
      v11 = swift_dynamicCastObjCClass();
      if (v11)
      {
        v12 = v11;
        v13 = v15;
        [v12 setFillColor_];
      }

      else
      {
        [v15 setBackgroundColor_];
      }
    }
  }

  v14 = 0.0;
  if (*(a2 + v5))
  {
    v14 = 1.0;
  }

  [v15 setBorderWidth_];
}

void sub_23717728C()
{
  v1 = OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_controlLayer;
  v2 = *(v0 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_controlLayer);
  if (v2)
  {
    v3 = [v2 superlayer];
    if (v3)
    {
      v4 = v3;
      [*(v0 + v1) removeFromSuperlayer];
      v5 = OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_points;
      swift_beginAccess();
      v6 = MEMORY[0x277D84F90];
      *(v0 + v5) = MEMORY[0x277D84F90];

      v7 = OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_guides;
      swift_beginAccess();
      *(v0 + v7) = v6;

      v8 = *(v0 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_delegate + 24);
      v9 = *(v0 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_delegate + 32);
      __swift_project_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_delegate), v8);
      v10 = (*(v9 + 16))(v8, v9, 0.0);
      v11 = v0 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_location;
      *v11 = 0;
      *(v11 + 8) = v10;
      v12 = *(v0 + v1);
      *(v0 + v1) = 0;

      sub_2371773E8();
      v13 = *(v0 + v1);
      if (v13)
      {
        v14 = v13;
        [v4 addSublayer_];
      }
    }
  }
}

void sub_2371773E8()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_type;
  v3 = *(v0 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_type) - 3;
  v4 = sub_23719653C();
  v5 = [objc_opt_self() bundleWithIdentifier_];

  v179 = v2;
  if (v3 <= 0xFFFFFFFD)
  {
    v6 = *(v1 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_color);
    if (v6)
    {
      v7 = *(v1 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_color);
LABEL_8:
      v24 = v6;
      v25 = sub_23717D130(v1);
      [v25 setZPosition_];
      goto LABEL_44;
    }

    v20 = objc_opt_self();
    v21 = v5;
    v22 = [v20 currentTraitCollection];
    v23 = sub_23719653C();
    v7 = [objc_opt_self() colorNamed:v23 inBundle:v21 compatibleWithTraitCollection:v22];

    if (v7)
    {
      v6 = 0;
      goto LABEL_8;
    }

    __break(1u);
    goto LABEL_69;
  }

  v181 = v5;
  v8 = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
  v9 = sub_23719653C();
  [v8 setName_];

  [v8 setAnchorPoint_];
  v10 = objc_opt_self();
  v11 = [v10 clearColor];
  v12 = [v11 CGColor];

  [v8 setBackgroundColor_];
  v176 = v8;
  [v8 setMasksToBounds_];
  v13 = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
  v14 = [v10 clearColor];
  v15 = [v14 CGColor];

  [v13 setBackgroundColor_];
  v16 = sub_23719653C();
  [v13 setName_];

  v178 = v13;
  [v13 setAnchorPoint_];
  v17 = OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_color;
  v18 = *(v1 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_color);
  v182 = v10;
  if (v18)
  {
    v19 = *(v1 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_color);
  }

  else
  {
    v26 = objc_opt_self();
    v27 = v5;
    v28 = [v26 currentTraitCollection];
    v29 = sub_23719653C();
    v19 = [v10 colorNamed:v29 inBundle:v27 compatibleWithTraitCollection:v28];

    if (!v19)
    {
LABEL_69:
      __break(1u);
      goto LABEL_70;
    }

    v18 = 0;
  }

  v30 = v18;
  v31 = sub_23717D130(v1);

  [v31 setAnchorPoint_];
  [v31 frame];
  Width = CGRectGetWidth(v183);
  [v31 frame];
  [v31 setFrame_];
  v33 = *(v1 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_delegate + 24);
  v34 = *(v1 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_delegate + 32);
  v171 = (v1 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_delegate);
  __swift_project_boxed_opaque_existential_0((v1 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_delegate), v33);
  v35 = (*(v34 + 48))(v33, v34);
  v37 = v36;
  v39 = v38;
  v41 = v40;
  [v178 addSublayer_];
  v42 = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
  v43 = [v10 clearColor];
  v44 = [v43 CGColor];

  [v42 setBackgroundColor_];
  v45 = sub_23719653C();
  [v42 setName_];

  v180 = v42;
  [v42 setAnchorPoint_];
  v46 = *(v1 + v17);
  if (v46)
  {
    v47 = *(v1 + v17);
  }

  else
  {
    v48 = objc_opt_self();
    v49 = v5;
    v50 = [v48 currentTraitCollection];
    v51 = sub_23719653C();
    v47 = [v10 colorNamed:v51 inBundle:v49 compatibleWithTraitCollection:v50];

    if (!v47)
    {
LABEL_70:
      __break(1u);
      goto LABEL_71;
    }
  }

  v173 = OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_drawTrianglesOnEdges;
  v52 = *(v1 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_drawTrianglesOnEdges);
  v53 = v46;
  if (v52 == 1)
  {
    v54 = sub_23717D470(5, v1);
  }

  else
  {
    v54 = sub_23717D130(v1);
  }

  v55 = v54;
  [v54 setAnchorPoint_];
  v185.origin.x = v35;
  v185.origin.y = v37;
  v185.size.width = v39;
  v185.size.height = v41;
  v56 = CGRectGetHeight(v185) - v37 + 13.0;
  [v55 frame];
  v57 = CGRectGetWidth(v186);
  [v55 frame];
  [v55 setFrame_];
  [v55 bounds];
  v58 = CGRectGetWidth(v188);
  v189.origin.x = v35;
  v189.origin.y = v37;
  v189.size.width = v39;
  v189.size.height = v41;
  v190.size.height = CGRectGetHeight(v189) + 26.0 + -2.0;
  v190.origin.x = 0.0;
  v190.origin.y = 0.0;
  v190.size.width = v58;
  v191 = CGRectIntegral(v190);
  [v180 setFrame_];
  [v180 addSublayer_];
  v59 = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
  v60 = sub_23719653C();
  v177 = v59;
  [v59 setName_];

  v61 = *(v1 + v17);
  v174 = v55;
  v175 = v31;
  if (v61)
  {
    v62 = [v61 CGColor];
  }

  else
  {
    v63 = objc_opt_self();
    v64 = v5;
    v65 = [v63 currentTraitCollection];
    v66 = sub_23719653C();
    v67 = [v182 colorNamed:v66 inBundle:v64 compatibleWithTraitCollection:v65];

    if (v67)
    {
      v62 = [v67 CGColor];
    }

    else
    {
      v62 = 0;
    }

    v5 = v181;
  }

  [v177 setBackgroundColor_];

  [v177 setAnchorPoint_];
  [v180 frame];
  v68 = CGRectGetWidth(v192) * 0.5 + -1.0;
  v193.origin.x = v35;
  v193.origin.y = v37;
  v193.size.width = v39;
  v193.size.height = v41;
  v194.size.height = CGRectGetHeight(v193) + -2.0;
  v194.origin.y = 13.0;
  v194.size.width = 1.0;
  v194.origin.x = v68;
  v195 = CGRectIntegral(v194);
  [v177 setFrame_];
  [v177 setHidden_];
  [v180 addSublayer_];
  v69 = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
  v70 = [v182 clearColor];
  v71 = [v70 CGColor];

  [v69 setBackgroundColor_];
  [v69 setAnchorPoint_];
  v72 = sub_23719653C();
  [v69 setName_];

  v73 = *(v1 + v17);
  if (v73)
  {
    v74 = v73;
LABEL_26:
    v172 = v74;

    if (*(v1 + v173) == 1)
    {
      v80 = sub_23717D470(7, v1);
    }

    else
    {
      v80 = sub_23717D130(v1);
    }

    v81 = v80;
    v196.origin.x = v35;
    v196.origin.y = v37;
    v196.size.width = v39;
    v196.size.height = v41;
    v82 = CGRectGetHeight(v196) - v37 + 13.0;
    [v81 frame];
    v83 = CGRectGetWidth(v197);
    [v81 frame];
    [v81 setFrame_];
    [v81 setAnchorPoint_];
    [v81 bounds];
    v84 = CGRectGetWidth(v199);
    v200.origin.x = v35;
    v200.origin.y = v37;
    v200.size.width = v39;
    v200.size.height = v41;
    v201.size.height = CGRectGetHeight(v200) + -2.0 + 26.0;
    v201.origin.x = 0.0;
    v201.origin.y = 0.0;
    v201.size.width = v84;
    v202 = CGRectIntegral(v201);
    [v69 setFrame_];
    [v69 addSublayer_];
    v85 = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
    v86 = sub_23719653C();
    [v85 setName_];

    v87 = *(v1 + v17);
    if (v87)
    {
      v88 = [v87 CGColor];
    }

    else
    {
      v89 = objc_opt_self();
      v90 = v181;
      v91 = [v89 currentTraitCollection];
      v92 = sub_23719653C();
      v93 = [v182 colorNamed:v92 inBundle:v90 compatibleWithTraitCollection:v91];

      if (v93)
      {
        v88 = [v93 CGColor];
      }

      else
      {
        v88 = 0;
      }
    }

    [v85 setBackgroundColor_];

    [v85 setAnchorPoint_];
    [v69 bounds];
    v94 = CGRectGetWidth(v203) * 0.5 + -1.0;
    v204.origin.x = v35;
    v204.origin.y = v37;
    v204.size.width = v39;
    v204.size.height = v41;
    v205.size.height = CGRectGetHeight(v204) + -2.0;
    v205.origin.y = 13.0;
    v205.size.width = 1.0;
    v205.origin.x = v94;
    v206 = CGRectIntegral(v205);
    [v85 setFrame_];
    [v85 setHidden_];
    [v69 addSublayer_];
    v7 = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
    v95 = sub_23719653C();
    [v7 setName_];

    v96 = *(v1 + v17);
    if (v96)
    {
      v97 = [v96 CGColor];
    }

    else
    {
      v98 = objc_opt_self();
      v99 = v181;
      v100 = [v98 currentTraitCollection];
      v101 = sub_23719653C();
      v102 = [v182 colorNamed:v101 inBundle:v99 compatibleWithTraitCollection:v100];

      if (v102)
      {
        v103 = v171[3];
        v104 = v171[4];
        __swift_project_boxed_opaque_existential_0(v171, v103);
        v105 = (*(v104 + 56))(v103, v104);
        v106 = [v105 traitCollection];

        v107 = [v106 userInterfaceStyle];
        v108 = 0.15;
        if (v107 == 2)
        {
          v108 = 0.25;
        }

        v109 = [v102 colorWithAlphaComponent_];

        v97 = [v109 CGColor];
      }

      else
      {
        v97 = 0;
      }
    }

    [v7 setBackgroundColor_];

    [v7 setAnchorPoint_];
    [v180 frame];
    MinX = CGRectGetMinX(v207);
    [v180 frame];
    v111 = MinX + CGRectGetWidth(v208);
    v209.origin.x = v35;
    v209.origin.y = v37;
    v209.size.width = v39;
    v209.size.height = v41;
    v210.size.height = CGRectGetHeight(v209) + -2.0;
    v210.origin.y = 13.0;
    v210.size.width = 1.0;
    v210.origin.x = v111;
    v211 = CGRectIntegral(v210);
    [v7 setFrame_];
    [v7 setHidden_];
    v212.origin.x = v35;
    v212.origin.y = v37;
    v212.size.width = v39;
    v212.size.height = v41;
    Height = CGRectGetHeight(v212);
    [v175 bounds];
    v113 = CGRectGetHeight(v213);
    [v81 bounds];
    v114 = CGRectGetHeight(v214) * 0.5;
    [v174 bounds];
    v115 = CGRectGetHeight(v215) * 0.5;
    if (v114 > v115)
    {
      v115 = v114;
    }

    v25 = v176;
    [v176 setFrame_];
    [v175 bounds];
    [v176 setPosition_];
    [v176 addSublayer_];
    [v176 addSublayer_];
    [v176 addSublayer_];
    [v176 addSublayer_];
    [v176 setDelegate_];

    v5 = v181;
LABEL_44:

    v116 = *(v1 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_controlLayer);
    *(v1 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_controlLayer) = v25;

    if (*(v1 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_drawVerticalGuide) == 1)
    {
      v117 = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
      v118 = sub_23719653C();
      [v117 setName_];

      v119 = *(v1 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_color);
      if (v119)
      {
        v120 = [v119 CGColor];
      }

      else
      {
        v121 = objc_opt_self();
        v122 = v5;
        v123 = [v121 currentTraitCollection];
        v124 = sub_23719653C();
        v125 = [objc_opt_self() colorNamed:v124 inBundle:v122 compatibleWithTraitCollection:v123];

        if (v125)
        {
          v120 = [v125 CGColor];
        }

        else
        {
          v120 = 0;
        }
      }

      [v117 setBackgroundColor_];

      v126 = (v1 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_delegate);
      v127 = *(v1 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_delegate + 24);
      v128 = *(v1 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_delegate + 32);
      __swift_project_boxed_opaque_existential_0((v1 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_delegate), v127);
      v129 = (*(v128 + 48))(v127, v128);
      v130 = v126[3];
      v131 = v126[4];
      __swift_project_boxed_opaque_existential_0(v126, v130);
      (*(v131 + 48))(v130, v131);
      v133 = v132;
      v134 = v126[3];
      v135 = v126[4];
      __swift_project_boxed_opaque_existential_0(v126, v134);
      v217.origin.x = (*(v135 + 48))(v134, v135);
      v218.size.height = CGRectGetHeight(v217) + -2.0;
      v218.size.width = 1.0;
      v218.origin.x = v129;
      v218.origin.y = v133;
      v219 = CGRectIntegral(v218);
      [v117 setFrame_];
      [v117 setZPosition_];
      [v117 setHidden_];
      v136 = OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_guides;
      swift_beginAccess();
      v137 = v117;
      MEMORY[0x2383C5F60]();
      if (*((*(v1 + v136) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v136) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_23719664C();
      }

      sub_23719665C();
      swift_endAccess();
      v138 = v126[3];
      v139 = v126[4];
      __swift_project_boxed_opaque_existential_0(v126, v138);
      v140 = (*(v139 + 56))(v138, v139);
      v141 = *&v140[OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_graphLayer];

      [v141 addSublayer_];
    }

    if (*(v1 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_drawHorizontalGuide) != 1)
    {
      goto LABEL_67;
    }

    v142 = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
    v143 = sub_23719653C();
    [v142 setName_];

    v144 = *(v1 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_color);
    if (*(v1 + v179) == 2)
    {
      if (v144)
      {
        goto LABEL_58;
      }

      v146 = objc_opt_self();
      v147 = v5;
      v148 = [v146 currentTraitCollection];
      v149 = sub_23719653C();
      v150 = [objc_opt_self() colorNamed:v149 inBundle:v147 compatibleWithTraitCollection:v148];

      if (v150)
      {
        goto LABEL_62;
      }
    }

    else
    {
      if (v144)
      {
LABEL_58:
        v145 = [v144 CGColor];
LABEL_64:
        [v142 setBackgroundColor_];

        v155 = (v1 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_delegate);
        v156 = *(v1 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_delegate + 24);
        v157 = *(v1 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_delegate + 32);
        __swift_project_boxed_opaque_existential_0((v1 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_delegate), v156);
        v158 = (*(v157 + 48))(v156, v157);
        v159 = v155[3];
        v160 = v155[4];
        __swift_project_boxed_opaque_existential_0(v155, v159);
        (*(v160 + 48))(v159, v160);
        v162 = v161;
        v163 = v155[3];
        v164 = v155[4];
        __swift_project_boxed_opaque_existential_0(v155, v163);
        v220.origin.x = (*(v164 + 48))(v163, v164);
        v221.size.width = CGRectGetWidth(v220) + -2.0;
        v221.size.height = 1.0;
        v221.origin.x = v158;
        v221.origin.y = v162;
        v222 = CGRectIntegral(v221);
        [v142 setFrame_];
        [v142 setZPosition_];
        [v142 setHidden_];
        v165 = OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_guides;
        swift_beginAccess();
        v166 = v142;
        MEMORY[0x2383C5F60]();
        if (*((*(v1 + v165) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v165) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_23719664C();
        }

        sub_23719665C();
        swift_endAccess();
        v167 = v155[3];
        v168 = v155[4];
        __swift_project_boxed_opaque_existential_0(v155, v167);
        v169 = (*(v168 + 56))(v167, v168);
        v170 = *&v169[OBJC_IVAR____TtC12CoreAudioKit13CAAUGraphView_graphLayer];

        [v170 addSublayer_];
LABEL_67:

        return;
      }

      v151 = objc_opt_self();
      v152 = v5;
      v153 = [v151 currentTraitCollection];
      v154 = sub_23719653C();
      v150 = [objc_opt_self() colorNamed:v154 inBundle:v152 compatibleWithTraitCollection:v153];

      if (v150)
      {
LABEL_62:
        v145 = [v150 CGColor];

        goto LABEL_64;
      }
    }

    v145 = 0;
    goto LABEL_64;
  }

  v75 = objc_opt_self();
  v76 = v5;
  v77 = [v75 currentTraitCollection];
  v78 = sub_23719653C();
  v79 = [v182 colorNamed:v78 inBundle:v76 compatibleWithTraitCollection:v77];

  v74 = v79;
  if (v79)
  {
    goto LABEL_26;
  }

LABEL_71:
  __break(1u);
}

void sub_237178D00(double a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_dataSource + 24);
  v4 = *(v1 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_dataSource + 32);
  __swift_project_boxed_opaque_existential_0((v1 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_dataSource), v3);
  (*(*(*(v4 + 8) + 8) + 8))(*(v1 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_param3), v3);
  v5 = *(v1 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_widthType);
  if (v5 > 1)
  {
    v8 = (v1 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_delegate);
    v9 = *(v1 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_delegate + 24);
    v10 = *(v1 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_delegate + 32);
    if (v5 == 2)
    {
      __swift_project_boxed_opaque_existential_0(v8, v9);
      (*(v10 + 40))(v9, v10);
    }

    else
    {
      __swift_project_boxed_opaque_existential_0(v8, v9);
      v11 = (*(v10 + 40))(v9, v10);
      exp2(a1 / v11);
    }
  }

  else if (*(v1 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_widthType))
  {
    v6 = *(v1 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_delegate + 24);
    v7 = *(v1 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_delegate + 32);
    __swift_project_boxed_opaque_existential_0((v1 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_delegate), v6);
    (*(v7 + 40))(v6, v7);
  }
}

void sub_237178E8C(float a1)
{
  if (*(v1 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_widthType) > 1u)
  {
    if (*(v1 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_widthType) != 2)
    {
      log2((1.0 / (a1 * a1)) * 0.5 + 1.0 + sqrt(((1.0 / (a1 * a1)) + 2.0) * ((1.0 / (a1 * a1)) + 2.0) * 0.25 + -1.0));
    }
  }

  else if (!*(v1 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_widthType))
  {
    return;
  }

  v2 = *(v1 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_delegate + 24);
  v3 = *(v1 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_delegate + 32);
  __swift_project_boxed_opaque_existential_0((v1 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_delegate), v2);
  (*(v3 + 40))(v2, v3);
}

void sub_237178FFC(uint64_t a1, float a2)
{
  v5 = (v2 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_dataSource);
  v6 = *(v2 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_dataSource + 24);
  v7 = *(v2 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_dataSource + 32);
  __swift_project_boxed_opaque_existential_0((v2 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_dataSource), v6);
  v8 = (*(*(*(v7 + 8) + 8) + 16))(a1, v6);
  v9 = v5[3];
  v10 = v5[4];
  __swift_project_boxed_opaque_existential_0(v5, v9);
  v11 = *(*(v10 + 8) + 8);
  if (v8 <= a2)
  {
    if ((*(v11 + 24))(a1, v9) >= a2)
    {
      goto LABEL_6;
    }

    v13 = v5[3];
    v14 = v5[4];
    __swift_project_boxed_opaque_existential_0(v5, v13);
    v12 = (*(*(*(v14 + 8) + 8) + 24))(a1, v13);
  }

  else
  {
    (*(v11 + 16))(a1, v9);
  }

  a2 = v12;
LABEL_6:
  if (*(v2 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_param1) == a1)
  {
    v15 = *(v2 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_delegate + 24);
    v16 = *(v2 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_delegate + 32);
    __swift_project_boxed_opaque_existential_0((v2 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_delegate), v15);
    (*(v16 + 8))(v15, v16, a2);
    v18 = OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_location;
  }

  else
  {
    if (*(v2 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_param2) == a1)
    {
      v19 = v2 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_location;
      v20 = *(v2 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_location);
      v21 = *(v2 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_delegate + 24);
      v22 = *(v2 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_delegate + 32);
      __swift_project_boxed_opaque_existential_0((v2 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_delegate), v21);
      v23 = (*(v22 + 16))(v21, v22, a2);
      *v19 = v20;
      *(v19 + 8) = v23;
      goto LABEL_12;
    }

    sub_237178E8C(a2);
    v18 = OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_widthPixels;
  }

  *(v2 + v18) = v17;
LABEL_12:

  sub_237179568(a1);
}

void sub_237179214()
{
  v1 = objc_opt_self();
  [v1 begin];
  [v1 setDisableActions_];
  v2 = OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_guides;
  swift_beginAccess();
  v3 = *(v0 + v2);
  if (v3 >> 62)
  {
    goto LABEL_27;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2371969FC())
  {
    v30 = v1;
    v1 = (v0 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_delegate);
    v31 = (v0 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_location);

    v5 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x2383C62A0](v5, v3);
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_26;
        }

        v15 = *(v3 + 8 * v5 + 32);
      }

      v16 = v15;
      v17 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v18 = [v15 name];
      if (!v18)
      {
        goto LABEL_22;
      }

      v19 = v18;
      v20 = sub_23719657C();
      v22 = v21;

      v23 = v20 == 120 && v22 == 0xE100000000000000;
      if (v23 || (sub_237196A7C() & 1) != 0)
      {

        v6 = *v31 + -1.0;
        v7 = v1[3];
        v8 = v1[4];
        __swift_project_boxed_opaque_existential_0(v1, v7);
        (*(v8 + 48))(v7, v8);
        v10 = v9;
        v11 = v1[3];
        v12 = v1[4];
        v0 = __swift_project_boxed_opaque_existential_0(v1, v11);
        v32.origin.x = (*(v12 + 48))(v11, v12);
        Height = CGRectGetHeight(v32);
        v14 = 1.0;
      }

      else
      {
        if (v20 == 121 && v22 == 0xE100000000000000)
        {
        }

        else
        {
          v24 = sub_237196A7C();

          if ((v24 & 1) == 0)
          {
LABEL_22:

            return;
          }
        }

        v25 = v1[3];
        v26 = v1[4];
        __swift_project_boxed_opaque_existential_0(v1, v25);
        v6 = (*(v26 + 48))(v25, v26) + 1.0;
        v10 = v31[1];
        v27 = v1[3];
        v28 = v1[4];
        v0 = __swift_project_boxed_opaque_existential_0(v1, v27);
        v33.origin.x = (*(v28 + 48))(v27, v28);
        Width = CGRectGetWidth(v33);
        Height = 1.0;
        v14 = Width;
      }

      [v16 setFrame_];

      ++v5;
      if (v17 == i)
      {

        v1 = v30;
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    ;
  }

LABEL_24:
  [v1 commit];
}

void sub_237179568(int a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_controlLayer;
  if (!*(v1 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_controlLayer))
  {
    return;
  }

  v5 = objc_opt_self();
  [v5 begin];
  [v5 setDisableActions_];
  if (*(v2 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_param1) == a1)
  {
    v6 = *(v2 + v3);
    if (!v6)
    {
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
      goto LABEL_66;
    }

    v7 = [v6 name];
    if (v7)
    {
      v8 = v7;
      v9 = sub_23719657C();
      v11 = v10;

      if (v9 == 0x6E6F69676572 && v11 == 0xE600000000000000)
      {
      }

      else
      {
        v13 = sub_237196A7C();

        if ((v13 & 1) == 0)
        {
          goto LABEL_17;
        }
      }

      v14 = *(v2 + v3);
      if (!v14)
      {
LABEL_67:
        __break(1u);
        goto LABEL_68;
      }

      v15 = *(v2 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_location);
      v16 = *(v2 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_delegate + 24);
      v17 = *(v2 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_delegate + 32);
      __swift_project_boxed_opaque_existential_0((v2 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_delegate), v16);
      v18 = *(v17 + 48);
      v19 = v14;
      v18(v16, v17);
      [v19 setPosition_];
    }
  }

  else if (*(v2 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_param2) != a1)
  {
    goto LABEL_41;
  }

LABEL_17:
  v21 = *(v2 + v3);
  if (!v21)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v22 = [v21 name];
  if (v22)
  {
    v23 = v22;
    v24 = sub_23719657C();
    v26 = v25;

    if (v24 == 0x746E696F70 && v26 == 0xE500000000000000)
    {
LABEL_38:

      goto LABEL_39;
    }

    v28 = sub_237196A7C();

    if (v28)
    {
      goto LABEL_39;
    }
  }

  v29 = *(v2 + v3);
  if (!v29)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v30 = [v29 name];
  if (!v30)
  {
    goto LABEL_31;
  }

  v31 = v30;
  v32 = sub_23719657C();
  v34 = v33;

  if (v32 == 0x746E696F50 && v34 == 0xE500000000000000)
  {
    goto LABEL_38;
  }

  v36 = sub_237196A7C();

  if ((v36 & 1) == 0)
  {
LABEL_31:
    if (*(v2 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_type) == 2)
    {
      v37 = *(v2 + v3);
      if (!v37)
      {
LABEL_68:
        __break(1u);
        goto LABEL_69;
      }

      v38 = v37;
      v39 = sub_23717A2D4(v38, 0x61507265746E6543, 0xEA00000000007472);

      if (v39)
      {
        v40 = sub_23717A2D4(v39, 0x746E696F50, 0xE500000000000000);
        if (v40)
        {
          v41 = v40;
          [v40 position];
          v43 = *(v2 + v3);
          if (!v43)
          {
LABEL_69:
            __break(1u);
            return;
          }

          v44 = v42;
          v45 = *(v2 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_location + 8);
          [v43 frame];
          v46 = v45 - CGRectGetMinY(v79);
          [v39 frame];
          [v41 setPosition_];
        }
      }
    }

    goto LABEL_41;
  }

LABEL_39:
  v47 = *(v2 + v3);
  if (!v47)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  [v47 setPosition_];
LABEL_41:
  v48 = *(v2 + v3);
  if (!v48)
  {
    __break(1u);
    goto LABEL_62;
  }

  v49 = [v48 name];
  if (v49)
  {
    v50 = v49;
    v51 = sub_23719657C();
    v53 = v52;

    if (v51 == 0x6E6F69676572 && v53 == 0xE600000000000000)
    {
    }

    else
    {
      v55 = sub_237196A7C();

      if ((v55 & 1) == 0)
      {
        goto LABEL_48;
      }
    }

    v60 = (v2 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_delegate);
    v61 = *(v2 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_delegate + 24);
    v62 = *(v2 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_delegate + 32);
    __swift_project_boxed_opaque_existential_0((v2 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_delegate), v61);
    v81.origin.x = (*(v62 + 48))(v61, v62);
    MinX = CGRectGetMinX(v81);
    v64 = v60[3];
    v65 = v60[4];
    __swift_project_boxed_opaque_existential_0(v60, v64);
    v82.origin.x = (*(v65 + 48))(v64, v65);
    Width = CGRectGetWidth(v82);
    v67 = v60[3];
    v68 = v60[4];
    __swift_project_boxed_opaque_existential_0(v60, v67);
    v83.origin.x = (*(v68 + 48))(v67, v68);
    v69 = CGRectGetMinX(v83);
    v70 = *(v2 + v3);
    if (v70)
    {
      v71 = *(v2 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_location);
      v72 = *(v2 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_widthPixels);
      if (MinX + Width >= v71 + v72 + 13.0)
      {
        v73 = v71 + v72 + 13.0;
      }

      else
      {
        v73 = MinX + Width;
      }

      if (v71 - v72 + -13.0 >= v69)
      {
        v74 = v71 - v72 + -13.0;
      }

      else
      {
        v74 = v69;
      }

      v59 = v70;
      [v59 frame];
      MinY = CGRectGetMinY(v84);
      v76 = v60[3];
      v77 = v60[4];
      __swift_project_boxed_opaque_existential_0(v60, v76);
      v85.origin.x = (*(v77 + 48))(v76, v77);
      v86.size.height = CGRectGetHeight(v85) + 26.0;
      v86.origin.x = v74;
      v86.origin.y = MinY;
      v86.size.width = v73 - v74;
      v87 = CGRectIntegral(v86);
      [v59 setFrame_];
      goto LABEL_58;
    }

    goto LABEL_65;
  }

LABEL_48:
  v56 = (v2 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_delegate);
  v57 = *(v2 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_delegate + 24);
  v58 = v56[4];
  __swift_project_boxed_opaque_existential_0(v56, v57);
  v59 = (*(v58 + 56))(v57, v58);
  sub_23716A494();
LABEL_58:

  [v5 commit];
}

BOOL sub_237179BB0(CGFloat a1, CGFloat a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_controlLayer);
  if (!v3)
  {
    return 0;
  }

  v6 = v3;
  v7 = [v6 name];
  if (!v7)
  {
    goto LABEL_8;
  }

  v8 = v7;
  v9 = sub_23719657C();
  v11 = v10;

  if (v9 == 0x6E6F69676572 && v11 == 0xE600000000000000)
  {

LABEL_16:
    [v6 frame];
    MinX = CGRectGetMinX(v36);
    [v6 frame];
    MinY = CGRectGetMinY(v37);
    v23 = sub_23717A2D4(v6, 0x61507265746E6543, 0xEA00000000007472);
    if (v23)
    {
      v24 = v23;
      v25 = a1 - MinX;
      v26 = a2 - MinY;
      [v23 frame];
      v33.x = v25;
      v33.y = v26;
      if (CGRectContainsPoint(v38, v33))
      {
        v27 = sub_23717A2D4(v24, 0x746E696F50, 0xE500000000000000);
        if (v27)
        {
          v28 = v27;
          [v24 frame];
          v29 = v25 - CGRectGetMinX(v39);
          [v28 frame];
          v34.x = v29;
          v34.y = v26;
          v30 = CGRectContainsPoint(v40, v34);

          return v30;
        }
      }

      v6 = v24;
    }

LABEL_22:

    return 0;
  }

  v13 = sub_237196A7C();

  if (v13)
  {
    goto LABEL_16;
  }

LABEL_8:
  v14 = [v6 name];
  if (!v14)
  {
    goto LABEL_22;
  }

  v15 = v14;
  v16 = sub_23719657C();
  v18 = v17;

  if (v16 == 0x746E696F50 && v18 == 0xE500000000000000)
  {

    goto LABEL_25;
  }

  v20 = sub_237196A7C();

  if ((v20 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_25:
  [v6 frame];
  v35.x = a1;
  v35.y = a2;
  v32 = CGRectContainsPoint(v41, v35);

  return v32;
}

void sub_237179E20(CGFloat a1, CGFloat a2)
{
  v3 = OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_controlLayer;
  v4 = *(v2 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_controlLayer);
  if (!v4)
  {
    return;
  }

  if (*(v2 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_bypassed))
  {
    return;
  }

  [v4 frame];
  v49.x = a1;
  v49.y = a2;
  if (!CGRectContainsPoint(v57, v49))
  {
    return;
  }

  v7 = *(v2 + v3);
  if (!v7)
  {
    __break(1u);
    goto LABEL_48;
  }

  [v7 frame];
  MinX = CGRectGetMinX(v58);
  v9 = *(v2 + v3);
  if (!v9)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v10 = MinX;
  [v9 frame];
  MinY = CGRectGetMinY(v59);
  v12 = *(v2 + v3);
  if (!v12)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v13 = MinY;
  v14 = [v12 name];
  if (!v14)
  {
    goto LABEL_15;
  }

  v15 = v14;
  v16 = sub_23719657C();
  v18 = v17;

  if (v16 == 0x6E6F69676572 && v18 == 0xE600000000000000)
  {

LABEL_21:
    v27 = *(v2 + v3);
    if (!v27)
    {
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    v28 = a1 - v10;
    v29 = a2 - v13;
    v30 = v27;
    v31 = sub_23717A2D4(v30, 0x61507265746E6543, 0xEA00000000007472);

    if (v31)
    {
      [v31 frame];
      v50.x = v28;
      v50.y = v29;
      if (CGRectContainsPoint(v60, v50) && (v32 = sub_23717A2D4(v31, 0x746E696F50, 0xE500000000000000)) != 0)
      {
        v33 = v32;
        [v31 frame];
        v34 = v28 - CGRectGetMinX(v61);
        [v33 frame];
        v51.x = v34;
        v51.y = v29;
        v35 = CGRectContainsPoint(v62, v51);

        if (v35)
        {
          return;
        }
      }

      else
      {
      }
    }

    v36 = *(v2 + v3);
    if (!v36)
    {
      goto LABEL_52;
    }

    v37 = v36;
    v38 = sub_23717A2D4(v37, 0x747261507466654CLL, 0xE800000000000000);

    if (v38)
    {
      [v38 frame];
      v52.x = v28;
      v52.y = v29;
      if (CGRectContainsPoint(v63, v52))
      {
        v39 = sub_23717A2D4(v38, 0x746E696F50, 0xE500000000000000);
        if (v39)
        {
          goto LABEL_32;
        }
      }
    }

    v42 = *(v2 + v3);
    if (!v42)
    {
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    v43 = v42;
    v38 = sub_23717A2D4(v43, 0x7261507468676952, 0xE900000000000074);

    if (v38)
    {
      [v38 frame];
      v54.x = v28;
      v54.y = v29;
      if (CGRectContainsPoint(v66, v54))
      {
        v39 = sub_23717A2D4(v38, 0x746E696F50, 0xE500000000000000);
        if (v39)
        {
LABEL_32:
          v40 = v39;
          [v38 frame];
          v41 = v28 - CGRectGetMinX(v64);
          [v40 frame];
          v53.x = v41;
          v53.y = v29;
          CGRectContainsPoint(v65, v53);

          return;
        }
      }
    }

    v46 = *(v2 + v3);
    if (v46)
    {
      v47 = v46;
      v48 = sub_23717A2D4(v47, 0x726F697265746E49, 0xE800000000000000);

      if (v48)
      {
        [v48 frame];
        v56.x = v28;
        v56.y = v29;
        CGRectContainsPoint(v68, v56);
      }

      return;
    }

LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
    return;
  }

  v20 = sub_237196A7C();

  if (v20)
  {
    goto LABEL_21;
  }

LABEL_15:
  v21 = *(v2 + v3);
  if (!v21)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v22 = [v21 name];
  if (v22)
  {
    v23 = v22;
    v24 = sub_23719657C();
    v26 = v25;

    if (v24 == 0x746E696F50 && v26 == 0xE500000000000000)
    {

      goto LABEL_40;
    }

    v44 = sub_237196A7C();

    if (v44)
    {
LABEL_40:
      v45 = *(v2 + v3);
      if (v45)
      {
        [v45 frame];
        v55.x = a1;
        v55.y = a2;
        CGRectContainsPoint(v67, v55);
        return;
      }

      goto LABEL_55;
    }
  }
}

id sub_23717A2D4(id a1, uint64_t a2, uint64_t a3)
{
  sub_23713D2C8();
  if (sub_23719681C())
  {
    a3 = sub_23719680C();
    v6 = *(a3 + 16);
    v7 = a1;
    v8 = (a3 + 40);
    v9 = -v6;
    v10 = -1;
    while (1)
    {
      if (v9 + v10 == -1)
      {
LABEL_6:

        return a1;
      }

      if (++v10 >= *(a3 + 16))
      {
        break;
      }

      v11 = v8 + 2;
      v12 = *(v8 - 1);
      a2 = *v8;

      v6 = sub_23717A2D4(a1, v12, a2);

      v8 = v11;
      a1 = v6;
      if (!v6)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
    while (1)
    {
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      v13 = sub_2371969FC();
      if (!v13)
      {
        goto LABEL_29;
      }

LABEL_10:
      v14 = 0;
      while (1)
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x2383C62A0](v14, v6);
        }

        else
        {
          if (v14 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_27;
          }

          v15 = *(v6 + 8 * v14 + 32);
        }

        a1 = v15;
        v16 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        v17 = [v15 name];
        if (v17)
        {
          v18 = v17;
          v19 = sub_23719657C();
          v21 = v20;

          if (v19 == a2 && v21 == a3)
          {

            goto LABEL_6;
          }

          v23 = sub_237196A7C();

          if (v23)
          {
            goto LABEL_6;
          }
        }

        ++v14;
        if (v16 == v13)
        {
          goto LABEL_29;
        }
      }
    }
  }

  a1 = [a1 sublayers];
  if (a1)
  {
    sub_23717DFE4();
    v6 = sub_23719663C();

    if (v6 >> 62)
    {
      goto LABEL_28;
    }

    v13 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13)
    {
      goto LABEL_10;
    }

LABEL_29:

    return 0;
  }

  return a1;
}

id sub_23717A578(uint64_t a1, id a2)
{
  v3 = a1;
  v4 = sub_23717D854(a1);
  v6 = v5;
  v7 = [a2 name];
  if (v7)
  {
    v8 = v7;
    v9 = sub_23719657C();
    v11 = v10;

    if (v9 == v4 && v11 == v6)
    {

LABEL_11:
      v16 = a2;
      return a2;
    }

    v13 = sub_237196A7C();

    if (v13)
    {
      goto LABEL_11;
    }
  }

  else
  {
  }

  v14 = sub_23717D854(v3);
  a2 = sub_23717A2D4(a2, v14, v15);

  return a2;
}

void sub_23717A680(void *a1)
{
  v3 = objc_opt_self();
  [v3 begin];
  [v3 setDisableActions_];
  v4 = [a1 name];
  if (v4)
  {
    v5 = v4;
    v6 = sub_23719657C();
    v8 = v7;

    v9 = v6 == 0x6E6F69676572 && v8 == 0xE600000000000000;
    if (v9 || (sub_237196A7C() & 1) != 0)
    {

      v10 = OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_widthPixels;
      v11 = *(v1 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_widthPixels) + *(v1 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_widthPixels) + 26.0;
      [a1 frame];
      v12 = v11 - CGRectGetWidth(v62);
      [a1 frame];
      v59 = v10;
      if (CGRectGetMinX(v63) >= *(v1 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_location) - *(v1 + v10) + -13.0)
      {
        v13 = v12;
      }

      else
      {
        v13 = 0.0;
      }

      v14 = [a1 sublayers];
      if (!v14)
      {
LABEL_100:
        __break(1u);
        goto LABEL_101;
      }

      v15 = v14;
      sub_23717DFE4();
      v16 = sub_23719663C();

      if (v16 >> 62)
      {
        v17 = sub_2371969FC();
        if (!v17)
        {
LABEL_88:

          goto LABEL_89;
        }
      }

      else
      {
        v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v17)
        {
          goto LABEL_88;
        }
      }

      if (v17 >= 1)
      {
        v58 = v3;
        v18 = 0;
        while (1)
        {
          if ((v16 & 0xC000000000000001) != 0)
          {
            v19 = MEMORY[0x2383C62A0](v18, v16);
          }

          else
          {
            v19 = *(v16 + 8 * v18 + 32);
          }

          v20 = v19;
          v21 = [v19 name];
          if (!v21)
          {
            goto LABEL_18;
          }

          v22 = v21;
          v23 = sub_23719657C();
          v25 = v24;

          v26 = v23 == 0x747261507466654CLL && v25 == 0xE800000000000000;
          if (v26 || (sub_237196A7C() & 1) != 0)
          {

            [v20 setPosition_];
            goto LABEL_16;
          }

          v27 = v23 == 0x7261507468676952 && v25 == 0xE900000000000074;
          if (v27 || (sub_237196A7C() & 1) != 0)
          {
            break;
          }

          if (v23 == 0x61507265746E6543 && v25 == 0xEA00000000007472 || (sub_237196A7C() & 1) != 0)
          {

            v28 = *(v1 + v59) + *(v1 + v59);
            [a1 bounds];
            [v20 setFrame_];
            goto LABEL_17;
          }

          if (v23 == 0x726F697265746E49 && v25 == 0xE800000000000000)
          {

LABEL_42:
            v30 = *(v1 + v59) + *(v1 + v59);
            [a1 bounds];
            [v20 setFrame_];
            goto LABEL_18;
          }

          v29 = sub_237196A7C();

          if (v29)
          {
            goto LABEL_42;
          }

LABEL_18:
          ++v18;

          if (v17 == v18)
          {
            goto LABEL_87;
          }
        }

        [v20 setPosition_];
LABEL_16:
        [a1 bounds];
        [v20 setBounds_];
LABEL_17:
        sub_23717A680(v20);
        goto LABEL_18;
      }

      __break(1u);
    }

    else
    {
      v31 = v6 == 0x61507265746E6543 && v8 == 0xEA00000000007472;
      if (v31 || (sub_237196A7C() & 1) != 0 || v6 == 0x747261507466654CLL && v8 == 0xE800000000000000 || (sub_237196A7C() & 1) != 0 || v6 == 0x7261507468676952 && v8 == 0xE900000000000074)
      {
      }

      else
      {
        v56 = sub_237196A7C();

        if ((v56 & 1) == 0)
        {
          goto LABEL_89;
        }
      }

      v32 = [a1 sublayers];
      if (!v32)
      {
LABEL_101:
        __break(1u);
        return;
      }

      v33 = v32;
      sub_23717DFE4();
      v16 = sub_23719663C();

      if (!(v16 >> 62))
      {
        v34 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v34)
        {
          goto LABEL_88;
        }

LABEL_57:
        v58 = v3;
        if (v34 >= 1)
        {
          v35 = 0;
          v60 = OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_type;
          v57 = v1 + OBJC_IVAR____TtC12CoreAudioKit17CAAUFilterControl_location;
          while (1)
          {
            if ((v16 & 0xC000000000000001) != 0)
            {
              v37 = MEMORY[0x2383C62A0](v35, v16);
            }

            else
            {
              v37 = *(v16 + 8 * v35 + 32);
            }

            v38 = v37;
            v39 = [v37 name];
            if (!v39)
            {
              goto LABEL_60;
            }

            v40 = v39;
            v41 = sub_23719657C();
            v43 = v42;

            v44 = v41 == 0x6C61636974726556 && v43 == 0xEC000000656E694CLL;
            if (v44 || (sub_237196A7C() & 1) != 0)
            {

              [a1 frame];
              v36 = CGRectGetWidth(v67) * 0.5;
              [a1 bounds];
              [v38 setFrame_];
            }

            else
            {
              if (v41 == 0x746E696F50 && v43 == 0xE500000000000000)
              {
              }

              else
              {
                v46 = sub_237196A7C();

                if ((v46 & 1) == 0)
                {
                  goto LABEL_60;
                }
              }

              [v38 position];
              if (*(v1 + v60) == 2)
              {
                v48 = *(v57 + 8) + -13.0;
              }

              else
              {
                v48 = v47;
              }

              v49 = [a1 name];
              if (!v49)
              {
LABEL_86:
                [a1 frame];
                v55 = CGRectGetWidth(v70) * 0.5;
                [a1 bounds];
                [v38 setPosition_];
                goto LABEL_60;
              }

              v50 = v49;
              v51 = sub_23719657C();
              v53 = v52;

              if (v51 == 0x61507265746E6543 && v53 == 0xEA00000000007472)
              {
              }

              else
              {
                v54 = sub_237196A7C();

                if ((v54 & 1) == 0)
                {
                  goto LABEL_86;
                }
              }

              [a1 frame];
              [v38 setPosition_];
            }

LABEL_60:
            ++v35;

            if (v34 == v35)
            {
LABEL_87:
              v3 = v58;
              goto LABEL_88;
            }
          }
        }

        __break(1u);
        goto LABEL_100;
      }
    }

    v34 = sub_2371969FC();
    if (!v34)
    {
      goto LABEL_88;
    }

    goto LABEL_57;
  }

LABEL_89:

  [v3 commit];
}