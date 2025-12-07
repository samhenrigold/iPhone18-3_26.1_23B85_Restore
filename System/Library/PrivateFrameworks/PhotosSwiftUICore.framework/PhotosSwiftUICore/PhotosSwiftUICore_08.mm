uint64_t PhotosEventCellFactory.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_1C10611C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1C106127C(void *a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_1C1061C5C(319, qword_1EDE7ACF8, &type metadata for PhotosCellUIContext, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        swift_checkMetadataState();
        if (v4 <= 0x3F)
        {
          sub_1C1061C5C(319, &qword_1EDE76AF0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
          if (v5 <= 0x3F)
          {
            sub_1C1061C5C(319, &qword_1EDE77600, &type metadata for PhotosCellSpecs, MEMORY[0x1E697DCC0]);
            if (v6 <= 0x3F)
            {
              sub_1C1061C5C(319, &qword_1EDE77540, MEMORY[0x1E69E6370], MEMORY[0x1E697DCC0]);
              if (v7 <= 0x3F)
              {
                sub_1C1061C5C(319, &qword_1EDE77640, &type metadata for PhotosUserInterfaceIdiom, MEMORY[0x1E697DCC0]);
                if (v8 <= 0x3F)
                {
                  sub_1C1011E54(319);
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

uint64_t sub_1C106147C(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v31 = a3[2];
  v4 = *(v31 - 8);
  v29 = a3[3];
  v5 = *(v29 - 8);
  v6 = *(v5 + 84);
  v30 = v6;
  v32 = *(v4 + 84);
  if (v32 > v6)
  {
    v6 = *(*(v31 - 8) + 84);
  }

  v27 = a3[4];
  v7 = *(v27 - 8);
  v28 = *(v7 + 84);
  if (v6 <= v28)
  {
    v6 = *(v7 + 84);
  }

  if (v6 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  else
  {
    v8 = v6;
  }

  v9 = *(sub_1C12629F0() - 8);
  if (*(v9 + 64) <= 8uLL)
  {
    v10 = 8;
  }

  else
  {
    v10 = *(v9 + 64);
  }

  v11 = *(v4 + 64);
  v12 = *(v5 + 80);
  v13 = *(v5 + 64);
  v14 = *(v7 + 80);
  if (!a2)
  {
    return 0;
  }

  v15 = *(v7 + 64) + 7;
  v16 = a1;
  if (a2 <= v8)
  {
    goto LABEL_30;
  }

  v17 = *(v9 + 80) & 0xF8 | 7;
  v18 = v10 + ((v17 + ((((v15 + ((v13 + v14 + ((v12 + ((v11 + 10) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v12)) & ~v14)) & 0xFFFFFFFFFFFFFFF8) + 255) & 0xFFFFFFFFFFFFFFF8) + 9) & ~v17) + 1;
  v19 = 8 * v18;
  if (v18 > 3)
  {
    goto LABEL_14;
  }

  v22 = ((a2 - v8 + ~(-1 << v19)) >> v19) + 1;
  if (HIWORD(v22))
  {
    v20 = *(a1 + v18);
    if (v20)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if (v22 <= 0xFF)
    {
      if (v22 < 2)
      {
        goto LABEL_30;
      }

LABEL_14:
      v20 = *(a1 + v18);
      if (!*(a1 + v18))
      {
        goto LABEL_30;
      }

LABEL_22:
      v23 = (v20 - 1) << v19;
      if (v18 > 3)
      {
        v23 = 0;
      }

      if (v18)
      {
        if (v18 > 3)
        {
          LODWORD(v18) = 4;
        }

        switch(v18)
        {
          case 2:
            LODWORD(v18) = *a1;
            break;
          case 3:
            LODWORD(v18) = *a1 | (*(a1 + 2) << 16);
            break;
          case 4:
            LODWORD(v18) = *a1;
            break;
          default:
            LODWORD(v18) = *a1;
            break;
        }
      }

      return v8 + (v18 | v23) + 1;
    }

    v20 = *(a1 + v18);
    if (*(a1 + v18))
    {
      goto LABEL_22;
    }
  }

LABEL_30:
  v24 = v32;
  if (v32 == v8)
  {
    v25 = v31;
LABEL_36:

    return __swift_getEnumTagSinglePayload(v16, v24, v25);
  }

  v16 = ((((a1 + v11 + 10) & 0xFFFFFFFFFFFFFFF8) + v12 + 8) & ~v12);
  v24 = v30;
  if (v30 == v8)
  {
    v25 = v29;
    goto LABEL_36;
  }

  v16 = ((v16 + v13 + v14) & ~v14);
  v24 = v28;
  if (v28 == v8)
  {
    v25 = v27;
    goto LABEL_36;
  }

  v26 = *(((v16 + v15) & 0xFFFFFFFFFFFFFFF8) + 8);
  if (v26 >= 0xFFFFFFFF)
  {
    LODWORD(v26) = -1;
  }

  if ((v26 + 1) >= 2)
  {
    return v26;
  }

  else
  {
    return 0;
  }
}

void sub_1C1061820(_BYTE *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v36 = a4[2];
  v4 = *(v36 - 8);
  v5 = *(v4 + 84);
  v34 = a4[3];
  v6 = *(v34 - 8);
  v7 = *(v6 + 84);
  v35 = v7;
  if (v5 > v7)
  {
    v7 = *(v4 + 84);
  }

  v32 = a4[4];
  v8 = *(v32 - 8);
  v33 = *(v8 + 84);
  if (v7 <= v33)
  {
    v7 = *(v8 + 84);
  }

  if (v7 <= 0x7FFFFFFE)
  {
    v9 = 2147483646;
  }

  else
  {
    v9 = v7;
  }

  v10 = *(sub_1C12629F0() - 8);
  if (*(v10 + 64) <= 8uLL)
  {
    v11 = 8;
  }

  else
  {
    v11 = *(v10 + 64);
  }

  v12 = *(v4 + 64);
  v13 = *(v6 + 80);
  v14 = *(v6 + 64);
  v15 = *(v8 + 80);
  v16 = *(v8 + 64) + 7;
  v17 = *(v10 + 80) & 0xF8 | 7;
  v18 = v11 + ((v17 + ((((v16 + ((v14 + v15 + ((v13 + ((v12 + 10) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v13)) & ~v15)) & 0xFFFFFFFFFFFFFFF8) + 255) & 0xFFFFFFFFFFFFFFF8) + 9) & ~v17) + 1;
  v19 = 8 * (v11 + ((v17 + ((((v16 + ((v14 + v15 + ((v13 + ((v12 + 10) & 0xF8) + 8) & ~v13)) & ~v15)) & 0xF8) - 1) & 0xF8) + 9) & ~v17) + 1);
  if (a3 <= v9)
  {
    v22 = 0;
    v20 = a1;
    v21 = a2;
  }

  else
  {
    v20 = a1;
    v21 = a2;
    if (v18 <= 3)
    {
      v25 = ((a3 - v9 + ~(-1 << v19)) >> v19) + 1;
      if (HIWORD(v25))
      {
        v22 = 4;
      }

      else
      {
        if (v25 < 0x100)
        {
          v26 = 1;
        }

        else
        {
          v26 = 2;
        }

        if (v25 >= 2)
        {
          v22 = v26;
        }

        else
        {
          v22 = 0;
        }
      }
    }

    else
    {
      v22 = 1;
    }
  }

  if (v9 >= v21)
  {
    switch(v22)
    {
      case 1:
        v20[v18] = 0;
        if (v21)
        {
          goto LABEL_34;
        }

        return;
      case 2:
        *&v20[v18] = 0;
        if (v21)
        {
          goto LABEL_34;
        }

        return;
      case 3:
LABEL_56:
        __break(1u);
        return;
      case 4:
        *&v20[v18] = 0;
        goto LABEL_33;
      default:
LABEL_33:
        if (!v21)
        {
          return;
        }

LABEL_34:
        if (v5 == v9)
        {
          v28 = v20;
          v29 = v5;
          v30 = v36;
        }

        else
        {
          v28 = ((&v20[v12 + 10] & 0xFFFFFFFFFFFFFFF8) + v13 + 8) & ~v13;
          v29 = v35;
          if (v35 == v9)
          {
            v30 = v34;
          }

          else
          {
            v28 = (v28 + v14 + v15) & ~v15;
            v29 = v33;
            if (v33 != v9)
            {
              v31 = ((v16 + v28) & 0xFFFFFFFFFFFFFFF8);
              if (v21 > 0x7FFFFFFE)
              {
                *v31 = 0;
                v31[1] = 0;
                *v31 = v21 - 0x7FFFFFFF;
              }

              else
              {
                v31[1] = v21;
              }

              return;
            }

            v30 = v32;
          }
        }

        __swift_storeEnumTagSinglePayload(v28, v21, v29, v30);
        break;
    }
  }

  else
  {
    v23 = ~v9 + v21;
    if (v18 < 4)
    {
      v24 = (v23 >> v19) + 1;
      if (v18)
      {
        v27 = v23 & ~(-1 << v19);
        bzero(v20, v18);
        if (v18 == 3)
        {
          *v20 = v27;
          v20[2] = BYTE2(v27);
        }

        else if (v18 == 2)
        {
          *v20 = v27;
        }

        else
        {
          *v20 = v23;
        }
      }
    }

    else
    {
      bzero(v20, v18);
      *v20 = v23;
      v24 = 1;
    }

    switch(v22)
    {
      case 1:
        v20[v18] = v24;
        break;
      case 2:
        *&v20[v18] = v24;
        break;
      case 3:
        goto LABEL_56;
      case 4:
        *&v20[v18] = v24;
        break;
      default:
        return;
    }
  }
}

void sub_1C1061C5C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1C1061D74()
{
  result = qword_1EDE7F670;
  if (!qword_1EDE7F670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7F670);
  }

  return result;
}

unint64_t sub_1C1061E34()
{
  result = qword_1EBE91CF0;
  if (!qword_1EBE91CF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91CB0, &qword_1C12AC3E8);
    sub_1C10239B0(&qword_1EBE91CF8, &qword_1EBE91CA8, &qword_1C12AC3E0, MEMORY[0x1E6981880]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE91CF0);
  }

  return result;
}

unint64_t sub_1C1061EEC()
{
  result = qword_1EBE91D00;
  if (!qword_1EBE91D00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91CE8, &qword_1C12AC420);
    sub_1C10239B0(&qword_1EBE91D08, &unk_1EBE91D10, &unk_1C12AC428, MEMORY[0x1E6981880]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE91D00);
  }

  return result;
}

uint64_t sub_1C1061FCC(unint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = OUTLINED_FUNCTION_41(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v7, v8);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C106204C()
{
  result = qword_1EDE77378;
  if (!qword_1EDE77378)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91D28, &qword_1C12AC440);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE91D80, &unk_1C12BE930);
    sub_1C1062140();
    swift_getOpaqueTypeConformance2();
    sub_1C10239B0(&qword_1EDE7BA50, &qword_1EBE904B8, &unk_1C12A3E30, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77378);
  }

  return result;
}

unint64_t sub_1C1062140()
{
  result = qword_1EDE7BE28;
  if (!qword_1EDE7BE28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE91D80, &unk_1C12BE930);
    sub_1C10239B0(&qword_1EDE7B930, &qword_1EBE933F0, &qword_1C12A43F0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BE28);
  }

  return result;
}

unint64_t sub_1C10621F8()
{
  result = qword_1EDE7BD48;
  if (!qword_1EDE7BD48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE91D90, &qword_1C12AC4F0);
    sub_1C10622B0();
    sub_1C10239B0(&qword_1EDE7B950, &unk_1EBE91DD0, &unk_1C12AC500, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BD48);
  }

  return result;
}

unint64_t sub_1C10622B0()
{
  result = qword_1EDE7BDA8;
  if (!qword_1EDE7BDA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE91DA0, &qword_1C12AC4F8);
    sub_1C0FFC6F8();
    sub_1C10239B0(&qword_1EDE7BA50, &qword_1EBE904B8, &unk_1C12A3E30, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BDA8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_30_4()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_31_5()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_32_4()
{

  return swift_getWitnessTable();
}

id PhotosScenePhasePlatformView.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void sub_1C10623E4()
{
  v1 = OBJC_IVAR____TtC17PhotosSwiftUICore28PhotosScenePhasePlatformView_scenePhaseModel;
  type metadata accessor for PhotosScenePhaseModel(0);
  v2 = swift_allocObject();
  v3 = OBJC_IVAR____TtC17PhotosSwiftUICore21PhotosScenePhaseModel___phase;
  v4 = *MEMORY[0x1E697BE38];
  v5 = sub_1C1262930();
  (*(*(v5 - 8) + 104))(v2 + v3, v4, v5);
  sub_1C1261F60();
  *(v0 + v1) = v2;
  *(v0 + OBJC_IVAR____TtC17PhotosSwiftUICore28PhotosScenePhasePlatformView_sceneState) = 256;
  OUTLINED_FUNCTION_5_18();
  __break(1u);
}

void sub_1C10624DC()
{
  v1 = OBJC_IVAR____TtC17PhotosSwiftUICore28PhotosScenePhasePlatformView_scenePhaseModel;
  type metadata accessor for PhotosScenePhaseModel(0);
  v2 = swift_allocObject();
  v3 = OBJC_IVAR____TtC17PhotosSwiftUICore21PhotosScenePhaseModel___phase;
  v4 = *MEMORY[0x1E697BE38];
  v5 = sub_1C1262930();
  (*(*(v5 - 8) + 104))(v2 + v3, v4, v5);
  sub_1C1261F60();
  *(v0 + v1) = v2;
  *(v0 + OBJC_IVAR____TtC17PhotosSwiftUICore28PhotosScenePhasePlatformView_sceneState) = 256;
  OUTLINED_FUNCTION_5_18();
  __break(1u);
}

void sub_1C10625E8()
{
  v1.receiver = v0;
  v1.super_class = type metadata accessor for PhotosScenePhasePlatformView();
  objc_msgSendSuper2(&v1, sel_didMoveToWindow);
  sub_1C1062668();
}

void sub_1C1062668()
{
  v1 = [v0 window];
  v6 = [v1 windowScene];

  if (v6)
  {
    v2 = [v6 activationState];
    v3 = v2 + 1;
    v4 = v2 == -1;
    if (v2 == 2)
    {
      v4 = 1;
    }

    if (v3 >= 4)
    {
      v5 = 256;
    }

    else
    {
      v5 = 0x1000000uLL >> (16 * v3);
    }

    sub_1C1062920(v5 | v4);
  }
}

uint64_t sub_1C1062730(uint64_t result)
{
  if (v1[OBJC_IVAR____TtC17PhotosSwiftUICore28PhotosScenePhasePlatformView_sceneState] != (result & 1) || ((v1[OBJC_IVAR____TtC17PhotosSwiftUICore28PhotosScenePhasePlatformView_sceneState + 1] ^ ((result & 0x100) >> 8)) & 1) != 0)
  {
    if (qword_1EDE7CB18 != -1)
    {
      swift_once();
    }

    v2 = sub_1C1262720();
    __swift_project_value_buffer(v2, qword_1EDE9B650);
    v3 = v1;
    v4 = sub_1C12626F0();
    v5 = sub_1C1266430();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v14 = v7;
      *v6 = 136446466;
      v8 = sub_1C1266FB0();
      v10 = sub_1C0FA0E80(v8, v9, &v14);

      *(v6 + 4) = v10;
      *(v6 + 12) = 2082;
      v11 = sub_1C1265ED0();
      v13 = sub_1C0FA0E80(v11, v12, &v14);

      *(v6 + 14) = v13;
      _os_log_impl(&dword_1C0F96000, v4, v5, "PhotosScenePhasePlatformView[%{public}s] sceneState=%{public}s", v6, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1C68F1630](v7, -1, -1);
      MEMORY[0x1C68F1630](v6, -1, -1);
    }

    return sub_1C0F9B1C4();
  }

  return result;
}

uint64_t sub_1C1062920(__int16 a1)
{
  v2 = (v1 + OBJC_IVAR____TtC17PhotosSwiftUICore28PhotosScenePhasePlatformView_sceneState);
  v3 = *(v1 + OBJC_IVAR____TtC17PhotosSwiftUICore28PhotosScenePhasePlatformView_sceneState);
  v4 = *(v1 + OBJC_IVAR____TtC17PhotosSwiftUICore28PhotosScenePhasePlatformView_sceneState + 1);
  *v2 = a1 & 1;
  v2[1] = HIBYTE(a1) & 1;
  if (v4)
  {
    v5 = 256;
  }

  else
  {
    v5 = 0;
  }

  return sub_1C1062730(v5 | v3);
}

uint64_t sub_1C10629A0(unsigned int a1)
{
  sub_1C1266E90();
  sub_1C1266EB0();
  sub_1C1266EB0();
  return sub_1C1266EE0();
}

uint64_t sub_1C10629F4()
{
  if (v0[1])
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  return sub_1C10629A0(v1 | *v0);
}

uint64_t sub_1C1062A10(uint64_t a1)
{
  if (v1[1])
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return sub_1C106296C(a1, v2 | *v1);
}

uint64_t sub_1C1062A2C(uint64_t a1)
{
  sub_1C1266E90();
  sub_1C1266EB0();
  sub_1C1266EB0();
  return sub_1C1266EE0();
}

BOOL sub_1C1062A88(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (a1[1])
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  if (a2[1])
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  return sub_1C1062958(v2 | *a1, v3 | *a2);
}

id PhotosScenePhasePlatformView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PhotosScenePhasePlatformView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t storeEnumTagSinglePayload for PhotosScenePhasePlatformView.SceneState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 2) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C1062BF4()
{
  result = qword_1EBE91DF0;
  if (!qword_1EBE91DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE91DF0);
  }

  return result;
}

double View.photosToolbar<A>(isEnabled:content:)(void *a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a1)
  {
    PhotosToolbarContainer.init<A>(content:)(a2, a7, &v11);
    v7 = v11;
    v8 = v12;
    v9 = v13;
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
  }

  v11 = v7;
  v12 = v8;
  v13 = v9;
  sub_1C1062D58();
  sub_1C12649C0();
  return sub_1C1062DAC(v7, v8, v9);
}

unint64_t sub_1C1062D58()
{
  result = qword_1EDE7FE10[0];
  if (!qword_1EDE7FE10[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDE7FE10);
  }

  return result;
}

double sub_1C1062DAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
  }

  return result;
}

uint64_t PhotosToolbarContainer.init<A>(content:)@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v15[1] = a3;
  MEMORY[0x1EEE9AC00](a1);
  v6 = sub_1C1261E20();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C1261E10();
  v10 = sub_1C1261DF0();
  v12 = v11;
  v13 = (*(v7 + 8))(v9, v6);
  a4[1] = v10;
  a4[2] = v12;
  a1(v13);
  result = sub_1C12655D0();
  *a4 = result;
  return result;
}

double PhotosToolbarContainer.body.getter@<D0>(uint64_t *a1@<X8>)
{
  *a1 = *v1;

  return result;
}

uint64_t static PhotosToolbarContainer.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16))
  {
    return 1;
  }

  else
  {
    return sub_1C1266D50();
  }
}

double static PhotosToolbarContentPreferenceKey.defaultValue.getter@<D0>(void *a1@<X8>)
{
  swift_beginAccess();
  v2 = xmmword_1EBE91DF8;
  v3 = qword_1EBE91E08;
  *a1 = xmmword_1EBE91DF8;
  a1[2] = v3;
  return sub_1C1062FEC(v2, *(&v2 + 1), v3);
}

double sub_1C1062FEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
  }

  return result;
}

double static PhotosToolbarContentPreferenceKey.defaultValue.setter(uint64_t a1)
{
  v5 = *a1;
  v1 = *(a1 + 16);
  swift_beginAccess();
  v2 = xmmword_1EBE91DF8;
  v3 = qword_1EBE91E08;
  xmmword_1EBE91DF8 = v5;
  qword_1EBE91E08 = v1;
  return sub_1C1062DAC(v2, *(&v2 + 1), v3);
}

double sub_1C10630E8@<D0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v2 = xmmword_1EBE91DF8;
  v3 = qword_1EBE91E08;
  *a1 = xmmword_1EBE91DF8;
  *(a1 + 16) = v3;
  return sub_1C1062FEC(v2, *(&v2 + 1), v3);
}

double sub_1C1063140(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  swift_beginAccess();
  v4 = xmmword_1EBE91DF8;
  v5 = qword_1EBE91E08;
  *&xmmword_1EBE91DF8 = v1;
  *(&xmmword_1EBE91DF8 + 1) = v2;
  qword_1EBE91E08 = v3;
  sub_1C1062FEC(v1, v2, v3);
  return sub_1C1062DAC(v4, *(&v4 + 1), v5);
}

__n128 static PhotosToolbarContentPreferenceKey.reduce(value:nextValue:)(uint64_t *a1, void (*a2)(uint64_t *__return_ptr))
{
  v4 = (a1 + 1);
  v3 = *a1;
  if (!*a1)
  {
    a2(&v6);
    v3 = v6;
    v4 = &v7;
  }

  result = *v4;
  *a1 = v3;
  *(a1 + 1) = result;
  return result;
}

_BYTE *storeEnumTagSinglePayload for PhotosToolbarContentPreferenceKey(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1C1063314()
{
  result = qword_1EDE7B9E8;
  if (!qword_1EDE7B9E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91E10, &qword_1C12AC708);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7B9E8);
  }

  return result;
}

uint64_t sub_1C10633B4(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[25])
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 2;
      v2 = v3 - 2;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C10633F0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

double sub_1C1063464@<D0>(char a1@<W0>, uint64_t a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>, char a5@<W3>)
{
  *(a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91E18, &qword_1C12AC810) + 36)) = a1 & 1;

  return sub_1C10634EC(a1 & 1, a3, a4, a5 & 1, a2);
}

double sub_1C10634EC@<D0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v62 = a1;
  v66 = a5;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91E20, &qword_1C12AC818);
  MEMORY[0x1EEE9AC00](v65);
  v9 = &v58 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91E28, &qword_1C12AC820);
  MEMORY[0x1EEE9AC00](v10);
  v60 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v58 - v13;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91E30, &qword_1C12AC828);
  MEMORY[0x1EEE9AC00](v63);
  v64 = &v58 - v15;
  v16 = sub_1C12637E0();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a4;
  v61 = a3;
  v59 = v17;
  if (a4)
  {
    swift_unknownObjectRetain();
    if (!a2)
    {
      goto LABEL_9;
    }
  }

  else
  {

    sub_1C1266420();
    v21 = sub_1C1264410();
    v58 = v16;
    v22 = a3;
    v23 = v21;
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    v24 = v22;
    v20 = a4;
    v16 = v58;
    v25 = sub_1C0FF9034(a2, v24, 0);
    (*(v17 + 8))(v19, v16, v25);
    a3 = v70;
    if (!v69)
    {
LABEL_9:
      KeyPath = swift_getKeyPath();
      v35 = &v14[v10[11]];
      *v35 = swift_getKeyPath();
      v35[8] = 0;
      v36 = &v14[v10[12]];
      *v36 = swift_getKeyPath();
      v36[8] = 0;
      v37 = &v14[v10[13]];
      *v37 = swift_getKeyPath();
      v37[8] = 0;
      v38 = &v14[v10[14]];
      *v38 = swift_getKeyPath();
      v38[8] = 0;
      *&v14[v10[9]] = 0x4020000000000000;
      v39 = &v14[v10[10]];
      *v39 = 0x4018000000000000;
      v39[8] = 0;
      v40 = v62 & 1;
      sub_1C1063D40(a2, v61, v20 & 1, v14);
      v41 = swift_getKeyPath();
      v42 = v60;
      sub_1C102EFA0(v14, v60, &qword_1EBE91E28, &qword_1C12AC820);
      *v9 = v40;
      *(v9 + 1) = 0x4044000000000000;
      *(v9 + 2) = KeyPath;
      v9[24] = 0;
      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91E38, &unk_1C12AC8D0);
      sub_1C102EFA0(v42, &v9[*(v43 + 64)], &qword_1EBE91E28, &qword_1C12AC820);
      v44 = &v9[*(v43 + 80)];
      *v44 = v40;
      *(v44 + 1) = 0x4044000000000000;
      *(v44 + 2) = v41;
      v44[24] = 0;
      v59 = KeyPath;
      swift_retain_n();

      sub_1C0F9E21C(v42, &qword_1EBE91E28, &qword_1C12AC820);

      sub_1C102EFA0(v9, v64, &qword_1EBE91E20, &qword_1C12AC818);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91E40, &qword_1C12B6640);
      v45 = MEMORY[0x1E6981F48];
      sub_1C0FDB6D4(&qword_1EBE91E48, &qword_1EBE91E40, &qword_1C12B6640, MEMORY[0x1E6981F48]);
      sub_1C0FDB6D4(&qword_1EBE91E50, &qword_1EBE91E20, &qword_1C12AC818, v45);
      sub_1C1263C20();

      sub_1C0F9E21C(v9, &qword_1EBE91E20, &qword_1C12AC818);
      sub_1C0F9E21C(v14, &qword_1EBE91E28, &qword_1C12AC820);
      return result;
    }
  }

  ObjectType = swift_getObjectType();
  v27 = (*(a3 + 32))(ObjectType, a3);
  swift_unknownObjectRelease();
  if ((v27 & 1) == 0)
  {
    goto LABEL_9;
  }

  if ((v20 & 1) == 0)
  {

    sub_1C1266420();
    v47 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    v48 = sub_1C0FF9034(a2, v61, 0);
    (*(v59 + 8))(v19, v16, v48);
    v28 = v70;
    if (v69)
    {
      goto LABEL_8;
    }

LABEL_11:
    v33 = 0;
    goto LABEL_12;
  }

  swift_unknownObjectRetain();
  v28 = v61;
  if (!a2)
  {
    goto LABEL_11;
  }

LABEL_8:
  v29 = swift_getObjectType();
  (*(v28 + 232))(v29, v28);
  v31 = v30;
  swift_unknownObjectRelease();
  v32 = swift_getObjectType();
  v33 = (*(v31 + 8))(v32, v31);
  swift_unknownObjectRelease();
LABEL_12:
  v49 = swift_getKeyPath();
  v50 = swift_getKeyPath();
  v51 = swift_getKeyPath();
  v52 = swift_allocObject();
  *(v52 + 16) = v33 < 2;
  v53 = swift_getKeyPath();
  v54 = v62 & 1;
  LOBYTE(v69) = 0;
  v68 = 0;
  v67 = 0;
  swift_retain_n();

  v55 = v53;

  sub_1C1058D54(v50, 0);

  sub_1C0FA03F4(v50, 0);

  v56 = v64;
  *v64 = v54;
  *(v56 + 1) = 0x4044000000000000;
  *(v56 + 2) = v49;
  v56[24] = 0;
  *(v56 + 4) = v33;
  *(v56 + 5) = v50;
  v56[48] = 0;
  *(v56 + 7) = v51;
  *(v56 + 8) = sub_1C1023064;
  *(v56 + 9) = v52;
  v56[80] = v54;
  *(v56 + 11) = 0x4044000000000000;
  *(v56 + 12) = v55;
  v56[104] = 0;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91E40, &qword_1C12B6640);
  v57 = MEMORY[0x1E6981F48];
  sub_1C0FDB6D4(&qword_1EBE91E48, &qword_1EBE91E40, &qword_1C12B6640, MEMORY[0x1E6981F48]);
  sub_1C0FDB6D4(&qword_1EBE91E50, &qword_1EBE91E20, &qword_1C12AC818, v57);
  sub_1C1263C20();

  return result;
}

uint64_t sub_1C1063D40@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, char a3@<W3>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for OneUpAnimatedInfoButton(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - v12;
  v14 = sub_1C12637E0();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a3 & 1) == 0)
  {

    sub_1C1266420();
    v20 = sub_1C1264410();
    v27 = a2;
    v21 = v20;
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    v22 = sub_1C0FF9034(a1, v27, 0);
    (*(v15 + 8))(v17, v14, v22);
    a2 = v29;
    if (v28)
    {
      goto LABEL_3;
    }

LABEL_5:
    v19 = 0;
    goto LABEL_6;
  }

  swift_unknownObjectRetain();
  if (!a1)
  {
    goto LABEL_5;
  }

LABEL_3:
  ObjectType = swift_getObjectType();
  v19 = (*(a2 + 160))(ObjectType, a2);
  swift_unknownObjectRelease();
LABEL_6:
  KeyPath = swift_getKeyPath();
  *v13 = swift_getKeyPath();
  *(v13 + 1) = 0;
  v13[16] = 0;
  type metadata accessor for Model(0);
  sub_1C12628D0();
  sub_1C10388D4(v13, v10);
  *a4 = v19 & 1;
  *(a4 + 8) = KeyPath;
  *(a4 + 16) = 0;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91E58, &qword_1C12AC938);
  sub_1C10388D4(v10, a4 + *(v24 + 64));
  sub_1C1058D54(KeyPath, 0);
  sub_1C1040D5C(v13);
  sub_1C1040D5C(v10);
  return sub_1C0FA03F4(KeyPath, 0);
}

uint64_t sub_1C1064028(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91E68, &qword_1C12AC940);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v11[-v4];
  v6 = OBJC_IVAR____TtC17PhotosSwiftUICore15PhotosMockAsset__creationDate;
  swift_beginAccess();
  sub_1C10641B8(v1 + v6, v5);
  v7 = sub_1C1064CD4(v5, a1);
  sub_1C0FFC7B0(v5, &qword_1EBE91E68, &qword_1C12AC940);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *&v11[-16] = v1;
    *&v11[-8] = a1;
    sub_1C1064C2C(v9, sub_1C1065014, &v11[-32]);
  }

  else
  {
    sub_1C10641B8(a1, v5);
    swift_beginAccess();
    sub_1C1064FA4(v5, v1 + v6);
    swift_endAccess();
  }

  return sub_1C0FFC7B0(a1, &qword_1EBE91E68, &qword_1C12AC940);
}

uint64_t sub_1C10641B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91E68, &qword_1C12AC940);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1C1064228(double a1, double a2)
{
  v5 = (v2 + OBJC_IVAR____TtC17PhotosSwiftUICore15PhotosMockAsset__pixelSize);
  swift_beginAccess();
  if (*v5 == a1 && v5[1] == a2)
  {
    *v5 = a1;
    v5[1] = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v9[2] = v2;
    *&v9[3] = a1;
    *&v9[4] = a2;
    sub_1C1064C2C(v8, sub_1C1065030, v9);
  }
}

void sub_1C1064300(char a1)
{
  v2 = a1 & 1;
  v3 = OBJC_IVAR____TtC17PhotosSwiftUICore15PhotosMockAsset__isFavorite;
  swift_beginAccess();
  if (*(v1 + v3) == v2)
  {
    *(v1 + v3) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v6[2] = v1;
    v7 = v2;
    sub_1C1064C2C(v5, sub_1C1065050, v6);
  }
}

uint64_t sub_1C1064438(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91E68, &qword_1C12AC940);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - v3;
  sub_1C10641B8(a1, &v6 - v3);
  return sub_1C1064028(v4);
}

uint64_t sub_1C10644CC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_24();
  v6 = sub_1C10655C0(v4, v5, &protocol conformance descriptor for PhotosMockAsset);
  OUTLINED_FUNCTION_0_1(v6, v7, v8, v9, v10, v11, v12, v13, v17, v1);
  sub_1C1261F30();

  v15 = OBJC_IVAR____TtC17PhotosSwiftUICore15PhotosMockAsset__creationDate;
  OUTLINED_FUNCTION_8_16(v14);
  return sub_1C10641B8(v2 + v15, a1);
}

uint64_t sub_1C106456C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91E68, &qword_1C12AC940);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  sub_1C10641B8(a2, &v9 - v5);
  v7 = OBJC_IVAR____TtC17PhotosSwiftUICore15PhotosMockAsset__creationDate;
  swift_beginAccess();
  sub_1C1064FA4(v6, a1 + v7);
  return swift_endAccess();
}

uint64_t (*sub_1C1064630())()
{
  v3 = OUTLINED_FUNCTION_4_1();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_3_4(v4);
  swift_getKeyPath();
  v2[5] = OBJC_IVAR____TtC17PhotosSwiftUICore15PhotosMockAsset___observationRegistrar;
  *v2 = v0;
  OUTLINED_FUNCTION_0_24();
  v7 = sub_1C10655C0(v5, v6, &protocol conformance descriptor for PhotosMockAsset);
  OUTLINED_FUNCTION_1_6(v7);

  *v2 = v1;
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_2_3(KeyPath);

  v2[7] = sub_1C10643C4();
  return sub_1C1064708;
}

double sub_1C10647B8()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_24();
  v3 = sub_1C10655C0(v1, v2, &protocol conformance descriptor for PhotosMockAsset);
  OUTLINED_FUNCTION_0_1(v3, v4, v5, v6, v7, v8, v9, v10, v13, v0);
  sub_1C1261F30();

  v11 = v0 + OBJC_IVAR____TtC17PhotosSwiftUICore15PhotosMockAsset__pixelSize;
  swift_beginAccess();
  return *v11;
}

uint64_t sub_1C1064860(uint64_t a1, double a2, double a3)
{
  v5 = (a1 + OBJC_IVAR____TtC17PhotosSwiftUICore15PhotosMockAsset__pixelSize);
  result = swift_beginAccess();
  *v5 = a2;
  v5[1] = a3;
  return result;
}

uint64_t (*sub_1C10648C0())()
{
  v3 = OUTLINED_FUNCTION_4_1();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_3_4(v4);
  swift_getKeyPath();
  v2[5] = OBJC_IVAR____TtC17PhotosSwiftUICore15PhotosMockAsset___observationRegistrar;
  *v2 = v0;
  OUTLINED_FUNCTION_0_24();
  v7 = sub_1C10655C0(v5, v6, &protocol conformance descriptor for PhotosMockAsset);
  OUTLINED_FUNCTION_1_6(v7);

  *v2 = v1;
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_2_3(KeyPath);

  v2[7] = sub_1C1064714();
  return sub_1C1064998;
}

uint64_t sub_1C10649F4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C1064A4C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C1064A4C()
{
  v1 = v0;
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_24();
  v4 = sub_1C10655C0(v2, v3, &protocol conformance descriptor for PhotosMockAsset);
  OUTLINED_FUNCTION_0_1(v4, v5, v6, v7, v8, v9, v10, v11, v15, v0);
  sub_1C1261F30();

  v13 = OBJC_IVAR____TtC17PhotosSwiftUICore15PhotosMockAsset__isFavorite;
  OUTLINED_FUNCTION_8_16(v12);
  return *(v1 + v13);
}

uint64_t sub_1C1064AE0(uint64_t a1, char a2)
{
  v4 = OBJC_IVAR____TtC17PhotosSwiftUICore15PhotosMockAsset__isFavorite;
  result = swift_beginAccess();
  *(a1 + v4) = a2;
  return result;
}

uint64_t (*sub_1C1064B3C())()
{
  v3 = OUTLINED_FUNCTION_4_1();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_3_4(v4);
  swift_getKeyPath();
  v2[5] = OBJC_IVAR____TtC17PhotosSwiftUICore15PhotosMockAsset___observationRegistrar;
  *v2 = v0;
  OUTLINED_FUNCTION_0_24();
  v7 = sub_1C10655C0(v5, v6, &protocol conformance descriptor for PhotosMockAsset);
  OUTLINED_FUNCTION_1_6(v7);

  *v2 = v1;
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_2_3(KeyPath);

  v2[7] = sub_1C10649A4();
  return sub_1C1064C14;
}

uint64_t sub_1C1064C2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_24();
  sub_1C10655C0(v3, v4, &protocol conformance descriptor for PhotosMockAsset);
  return sub_1C1261F20();
}

uint64_t sub_1C1064CD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C1261DE0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91E68, &qword_1C12AC940);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91EB8, &qword_1C12B3B80);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v20 - v12;
  v15 = *(v14 + 56);
  sub_1C10641B8(a1, &v20 - v12);
  sub_1C10641B8(a2, &v13[v15]);
  if (__swift_getEnumTagSinglePayload(v13, 1, v4) != 1)
  {
    sub_1C10641B8(v13, v10);
    if (__swift_getEnumTagSinglePayload(&v13[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      sub_1C10655C0(&qword_1EDE82F38, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
      v17 = sub_1C1265DE0();
      v18 = *(v5 + 8);
      v18(v7, v4);
      v18(v10, v4);
      sub_1C0FFC7B0(v13, &qword_1EBE91E68, &qword_1C12AC940);
      v16 = v17 ^ 1;
      return v16 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (__swift_getEnumTagSinglePayload(&v13[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_1C0FFC7B0(v13, &qword_1EBE91EB8, &qword_1C12B3B80);
    v16 = 1;
    return v16 & 1;
  }

  sub_1C0FFC7B0(v13, &qword_1EBE91E68, &qword_1C12AC940);
  v16 = 0;
  return v16 & 1;
}

uint64_t sub_1C1064FA4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91E68, &qword_1C12AC940);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for PhotosMockAsset(uint64_t a1)
{
  result = qword_1EBE91EA8;
  if (!qword_1EBE91EA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PhotosMockAsset.deinit()
{
  sub_1C0FFC7B0(v0 + OBJC_IVAR____TtC17PhotosSwiftUICore15PhotosMockAsset__creationDate, &qword_1EBE91E68, &qword_1C12AC940);
  v1 = OBJC_IVAR____TtC17PhotosSwiftUICore15PhotosMockAsset___observationRegistrar;
  sub_1C1261F70();
  OUTLINED_FUNCTION_4_2();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t PhotosMockAsset.__deallocating_deinit()
{
  sub_1C0FFC7B0(v0 + OBJC_IVAR____TtC17PhotosSwiftUICore15PhotosMockAsset__creationDate, &qword_1EBE91E68, &qword_1C12AC940);
  v1 = OBJC_IVAR____TtC17PhotosSwiftUICore15PhotosMockAsset___observationRegistrar;
  sub_1C1261F70();
  OUTLINED_FUNCTION_4_2();
  (*(v2 + 8))(v0 + v1);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t sub_1C1065250(uint64_t a1)
{
  result = sub_1C10655C0(&qword_1EBE91E98, type metadata accessor for PhotosMockAsset, &protocol conformance descriptor for PhotosMockAsset);
  *(a1 + 16) = result;
  return result;
}

void sub_1C10652F8(uint64_t a1)
{
  sub_1C1065568(319);
  if (v1 <= 0x3F)
  {
    sub_1C1261F70();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1C1065568(uint64_t a1)
{
  if (!qword_1EDE82F30)
  {
    sub_1C1261DE0();
    v1 = sub_1C1266790();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDE82F30);
    }
  }
}

uint64_t sub_1C10655C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C1065608()
{
  OUTLINED_FUNCTION_35();
  result = EnvironmentValues.oneUpChromeEnvironment.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t OneUpPhotosBadgeView.spec.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[1];
  v7[0] = *v1;
  v7[1] = v2;
  v4 = v1[3];
  v8 = v1[2];
  v3 = v8;
  v9 = v4;
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  return sub_1C1065688(v7, &v6);
}

__n128 OneUpPhotosBadgeView.init(spec:)@<Q0>(__n128 *a1@<X0>, uint64_t a2@<X8>)
{
  v9 = *a1;
  v10 = a1[1];
  v11 = a1[2];
  v12 = a1[3];
  sub_1C1265410();
  *(a2 + 64) = v8;
  *(a2 + 72) = *(&v8 + 1);
  sub_1C1265410();
  *(a2 + 80) = v8;
  *(a2 + 88) = *(&v8 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91EC8, &qword_1C12ACAF0);
  sub_1C1265410();
  *(a2 + 96) = v8;
  *(a2 + 112) = swift_getKeyPath();
  *(a2 + 120) = 0;
  *(a2 + 128) = 0;
  *(a2 + 136) = swift_getKeyPath();
  *(a2 + 144) = 0;
  *(a2 + 152) = 0;
  v3 = type metadata accessor for OneUpPhotosBadgeView(0);
  v4 = *(v3 + 40);
  *(a2 + v4) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE904D0, &unk_1C12BB4A0);
  swift_storeEnumTagMultiPayload();
  v5 = a2 + *(v3 + 44);
  type metadata accessor for OneUpSpatialPhotoBadgeStateModel(0);
  sub_1C106BFA8(&qword_1EDE7C6C8, type metadata accessor for OneUpSpatialPhotoBadgeStateModel, &protocol conformance descriptor for OneUpSpatialPhotoBadgeStateModel);
  *v5 = sub_1C1262A80();
  *(v5 + 8) = v6 & 1;
  *(a2 + 32) = v11;
  *(a2 + 48) = v12;
  result = v10;
  *a2 = v9;
  *(a2 + 16) = v10;
  return result;
}

uint64_t OneUpPhotosBadgeView.body.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91ED0, &qword_1C12ACB80);
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v1);
  v3 = v6 - v2;
  sub_1C1065944(v0, v6 - v2);
  v4 = *(v0 + 40);
  v6[0] = *(v0 + 32);
  v6[1] = v4;
  sub_1C106989C();
  sub_1C0FDB9AC();
  sub_1C1264C80();
  return sub_1C0FD1A5C(v3, &qword_1EBE91ED0, &qword_1C12ACB80);
}

uint64_t sub_1C1065944@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91F18, &qword_1C12ACBD0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v56 - v5;
  v7 = type metadata accessor for OneUpPhotosBadgeView(0);
  v58 = *(v7 - 8);
  v8 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91F00, &qword_1C12ACBB0);
  MEMORY[0x1EEE9AC00](v60);
  v62 = &v56 - v9;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91EF8, &qword_1C12ACBA8);
  MEMORY[0x1EEE9AC00](v71);
  v61 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v63 = &v56 - v12;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91FB8, &qword_1C12ACF98);
  MEMORY[0x1EEE9AC00](v72);
  v14 = &v56 - v13;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91FC0, &qword_1C12ACFA0);
  MEMORY[0x1EEE9AC00](v68);
  v69 = &v56 - v15;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91EE0, &qword_1C12ACB90);
  MEMORY[0x1EEE9AC00](v73);
  v70 = &v56 - v16;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91EE8, &qword_1C12ACB98);
  MEMORY[0x1EEE9AC00](v67);
  v59 = &v56 - v17;
  if (!sub_1C1066344())
  {
    goto LABEL_7;
  }

  v19 = v18;
  v64 = v14;
  v65 = a2;
  v66 = v4;
  ObjectType = swift_getObjectType();
  v21 = a1[1];
  v84[0] = *a1;
  v84[1] = v21;
  v22 = a1[3];
  v24 = *a1;
  v23 = a1[1];
  v84[2] = a1[2];
  v85 = v22;
  v80 = v24;
  v81 = v23;
  v25 = a1[3];
  v82 = a1[2];
  v83 = v25;
  v26 = *(v19 + 8);
  sub_1C1065688(v84, v78);
  v26(v78, &v80, ObjectType, v19);
  swift_unknownObjectRelease();
  v86[0] = v80;
  v86[1] = v81;
  v86[2] = v82;
  v86[3] = v83;
  sub_1C106B624(v86);
  if (v79 == 255)
  {
    v4 = v66;
    v14 = v64;
LABEL_7:
    sub_1C1066700(2, v6);
    v6[*(v4 + 36)] = 0;
    v36 = &qword_1EBE91F18;
    v37 = &qword_1C12ACBD0;
    sub_1C0FE5654(v6, v14, &qword_1EBE91F18, &qword_1C12ACBD0);
    swift_storeEnumTagMultiPayload();
    sub_1C10699AC();
    sub_1C1069D40();
    sub_1C1263C20();
    return sub_1C0FD1A5C(v6, v36, v37);
  }

  if ((v79 & 1) == 0)
  {
    v38 = sub_1C0F9DDE4(v78, &v80);
    MEMORY[0x1EEE9AC00](v38);
    *(&v56 - 2) = &v80;
    *(&v56 - 1) = a1;
    MEMORY[0x1EEE9AC00](v39);
    *(&v56 - 2) = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91FC8, &qword_1C12ACFA8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91FD0, &qword_1C12ACFE0);
    v40 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91F20, &qword_1C12ACBD8);
    v41 = sub_1C1069E24();
    v42 = sub_1C106A55C();
    v74 = v40;
    v75 = &type metadata for OneUpSpatialPhotoBadgeStateModel.State;
    v76 = v41;
    v77 = v42;
    swift_getOpaqueTypeConformance2();
    v43 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE8FE30, &unk_1C12A1CC0);
    v44 = sub_1C10597CC();
    v45 = sub_1C1057E3C();
    v74 = &type metadata for PhotosMenuContent;
    v75 = v43;
    v76 = v44;
    v77 = v45;
    swift_getOpaqueTypeConformance2();
    v46 = v59;
    sub_1C1264750();
    sub_1C0FE5654(v46, v69, &qword_1EBE91EE8, &qword_1C12ACB98);
    swift_storeEnumTagMultiPayload();
    sub_1C1069A38();
    sub_1C1069AF0();
    v47 = v70;
    sub_1C1263C20();
    sub_1C0FE5654(v47, v64, &qword_1EBE91EE0, &qword_1C12ACB90);
    swift_storeEnumTagMultiPayload();
    sub_1C10699AC();
    sub_1C1069D40();
    sub_1C1263C20();
    sub_1C0FD1A5C(v47, &qword_1EBE91EE0, &qword_1C12ACB90);
    sub_1C0FD1A5C(v46, &qword_1EBE91EE8, &qword_1C12ACB98);
    return __swift_destroy_boxed_opaque_existential_0Tm(&v80);
  }

  v57 = *(&v85 + 1);
  v27 = v78[0];
  sub_1C106BA70(a1, &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for OneUpPhotosBadgeView);
  v28 = (*(v58 + 80) + 16) & ~*(v58 + 80);
  v29 = swift_allocObject();
  v30 = sub_1C106BA14(&v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v29 + v28, type metadata accessor for OneUpPhotosBadgeView);
  *(v29 + ((v8 + v28 + 7) & 0xFFFFFFFFFFFFFFF8)) = v27;
  MEMORY[0x1EEE9AC00](v30);
  *(&v56 - 2) = a1;
  v59 = *(&v27 + 1);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91FC8, &qword_1C12ACFA8);
  v31 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91F20, &qword_1C12ACBD8);
  v32 = sub_1C1069E24();
  v33 = sub_1C106A55C();
  *&v80 = v31;
  *(&v80 + 1) = &type metadata for OneUpSpatialPhotoBadgeStateModel.State;
  *&v81 = v32;
  *(&v81 + 1) = v33;
  swift_getOpaqueTypeConformance2();
  v34 = v62;
  sub_1C1265480();
  v34[*(v60 + 36)] = 1;
  if ((v57 & 0x4000000000000) != 0)
  {
    sub_1C1067144();
    v35 = sub_1C1189A50();
  }

  else
  {
    v35 = 0;
  }

  KeyPath = swift_getKeyPath();
  v50 = swift_allocObject();
  *(v50 + 16) = v35;
  v51 = v34;
  v52 = v61;
  sub_1C0FE4040(v51, v61, &qword_1EBE91F00, &qword_1C12ACBB0);
  v53 = (v52 + *(v71 + 36));
  *v53 = KeyPath;
  v53[1] = sub_1C1023064;
  v53[2] = v50;
  v36 = &qword_1EBE91EF8;
  v37 = &qword_1C12ACBA8;
  v54 = v52;
  v6 = v63;
  sub_1C0FE4040(v54, v63, &qword_1EBE91EF8, &qword_1C12ACBA8);
  sub_1C0FE5654(v6, v69, &qword_1EBE91EF8, &qword_1C12ACBA8);
  swift_storeEnumTagMultiPayload();
  sub_1C1069A38();
  sub_1C1069AF0();
  v55 = v70;
  sub_1C1263C20();
  sub_1C0FE5654(v55, v64, &qword_1EBE91EE0, &qword_1C12ACB90);
  swift_storeEnumTagMultiPayload();
  sub_1C10699AC();
  sub_1C1069D40();
  sub_1C1263C20();

  sub_1C0FD1A5C(v55, &qword_1EBE91EE0, &qword_1C12ACB90);
  return sub_1C0FD1A5C(v6, v36, v37);
}

uint64_t sub_1C1066344()
{
  v1 = sub_1C12637E0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 136);
  v5 = *(v0 + 144);
  if (*(v0 + 152) == 1)
  {
    swift_unknownObjectRetain();
  }

  else
  {

    sub_1C1266420();
    v7 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    v8 = sub_1C0FF9034(v6, v5, 0);
    (*(v2 + 8))(v4, v1, v8);
    return v10;
  }

  return v6;
}

double sub_1C10664A4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C0FDB0A8(a1, &v9);
  v3 = swift_allocObject();
  sub_1C0F9DDE4(&v9, v3 + 16);
  if (sub_1C1066578())
  {
    v5 = v4;
    ObjectType = swift_getObjectType();
    (*(v5 + 264))(&v9, ObjectType, v5);
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0;
    v9 = 0u;
    v10 = 0u;
  }

  result = *&v9;
  v8 = v10;
  *(a2 + 16) = v9;
  *(a2 + 32) = v8;
  *(a2 + 48) = v11;
  *(a2 + 56) = 1;
  *a2 = sub_1C106B6FC;
  *(a2 + 8) = v3;
  return result;
}

uint64_t sub_1C1066578()
{
  v1 = sub_1C12637E0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 112);
  v5 = *(v0 + 120);
  if (*(v0 + 128) == 1)
  {
    swift_unknownObjectRetain();
  }

  else
  {

    sub_1C1266420();
    v7 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    v8 = sub_1C0FF9034(v6, v5, 0);
    (*(v2 + 8))(v4, v1, v8);
    return v10;
  }

  return v6;
}

uint64_t sub_1C1066700@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1;
  v93 = a2;
  v4 = type metadata accessor for OneUpPhotosBadgeView(0);
  v90 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v91 = v5;
  v92 = &v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_1C1263C40();
  v80 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v77 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91F50, &qword_1C12ACC08);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v76 - v8;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91F40, &qword_1C12ACBF8);
  MEMORY[0x1EEE9AC00](v81);
  v11 = &v76 - v10;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91F38, &qword_1C12ACBF0);
  MEMORY[0x1EEE9AC00](v83);
  v84 = &v76 - v12;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91F30, &qword_1C12ACBE8);
  MEMORY[0x1EEE9AC00](v82);
  v87 = &v76 - v13;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91F28, &qword_1C12ACBE0);
  MEMORY[0x1EEE9AC00](v86);
  v85 = &v76 - v14;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91F20, &qword_1C12ACBD8);
  MEMORY[0x1EEE9AC00](v88);
  v89 = &v76 - v15;
  *v9 = sub_1C12638E0();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91FE0, &qword_1C12ACFF8);
  sub_1C1067A64(v2, v3, &v9[*(v16 + 44)]);
  v17 = sub_1C12644D0();
  sub_1C12628A0();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91F68, &qword_1C12ACC20) + 36)];
  *v26 = v17;
  *(v26 + 1) = v19;
  *(v26 + 2) = v21;
  *(v26 + 3) = v23;
  *(v26 + 4) = v25;
  v26[40] = 0;
  v27 = sub_1C1264460();
  sub_1C12628A0();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v36 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91F60, &qword_1C12ACC18) + 36)];
  *v36 = v27;
  *(v36 + 1) = v29;
  *(v36 + 2) = v31;
  *(v36 + 3) = v33;
  *(v36 + 4) = v35;
  v36[40] = 0;
  v37 = sub_1C12659A0();
  v39 = v38;
  v40 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91F58, &qword_1C12ACC10) + 36)];
  sub_1C1068910(v2, v40);
  v41 = (v40 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91F78, &unk_1C12ACC30) + 36));
  *v41 = v37;
  v41[1] = v39;
  v42 = &v9[*(v7 + 36)];
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91F80, &qword_1C12C2260);
  sub_1C1263400();
  v44 = *MEMORY[0x1E697F468];
  v45 = sub_1C12639D0();
  v46 = *(*(v45 - 8) + 104);
  v78 = v44;
  v46(v42, v44, v45);
  v42[*(v43 + 36)] = 0;
  v47 = v77;
  sub_1C1263460();
  sub_1C106A2A8();
  sub_1C106BFA8(&qword_1EDE76E08, MEMORY[0x1E697C658], MEMORY[0x1E697C650]);
  v48 = v79;
  v49 = v2;
  sub_1C1264A50();
  (*(v80 + 8))(v47, v48);
  v50 = sub_1C0FD1A5C(v9, &qword_1EBE91F50, &qword_1C12ACC08);
  v51 = sub_1C1068CEC(v50);
  *&v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91F48, &qword_1C12ACC00) + 36)] = v51;
  if (qword_1EDE82E90 != -1)
  {
    swift_once();
  }

  v52 = qword_1EDE82E98;
  v53 = sub_1C1264710();
  KeyPath = swift_getKeyPath();
  v55 = &v11[*(v81 + 36)];
  *v55 = KeyPath;
  v55[1] = v53;
  sub_1C12659A0();
  sub_1C1263390();
  v56 = v84;
  sub_1C0FE4040(v11, v84, &qword_1EBE91F40, &qword_1C12ACBF8);
  memcpy((v56 + *(v83 + 36)), __src, 0x70uLL);
  v57 = v87;
  v58 = &v87[*(v82 + 36)];
  v46(v58, v78, v45);
  *&v58[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91F88, &unk_1C12ACC40) + 36)] = 256;
  sub_1C0FE4040(v56, v57, &qword_1EBE91F38, &qword_1C12ACBF0);
  v59 = *(v49 + 64);
  v60 = *(v49 + 72);
  v95[0] = v59;
  v96 = v60;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE95B10, &unk_1C12A7C50);
  sub_1C1265420();
  if (v94)
  {
    v61 = 1.1;
  }

  else
  {
    v61 = 1.0;
  }

  sub_1C1265B90();
  v63 = v62;
  v65 = v64;
  v66 = v85;
  sub_1C0FE4040(v57, v85, &qword_1EBE91F30, &qword_1C12ACBE8);
  v67 = v66 + *(v86 + 36);
  *v67 = v61;
  *(v67 + 8) = v61;
  *(v67 + 16) = v63;
  *(v67 + 24) = v65;
  if (qword_1EDE7B4B0 != -1)
  {
    swift_once();
  }

  v68 = qword_1EDE7B4B8;
  v95[0] = v59;
  v96 = v60;
  sub_1C1265420();
  v69 = v94;
  v70 = v89;
  sub_1C0FE4040(v66, v89, &qword_1EBE91F28, &qword_1C12ACBE0);
  v71 = v70 + *(v88 + 36);
  *v71 = v68;
  *(v71 + 8) = v69;

  sub_1C1067144();
  sub_1C11893E4(v95);

  v94 = v95[0];
  v72 = v92;
  sub_1C106BA70(v49, v92, type metadata accessor for OneUpPhotosBadgeView);
  v73 = (*(v90 + 80) + 16) & ~*(v90 + 80);
  v74 = swift_allocObject();
  sub_1C106BA14(v72, v74 + v73, type metadata accessor for OneUpPhotosBadgeView);
  sub_1C1069E24();
  sub_1C106A55C();
  sub_1C1265000();

  return sub_1C0FD1A5C(v70, &qword_1EBE91F20, &qword_1C12ACBD8);
}

void sub_1C10670A8(uint64_t a1, void (*a2)(__n128), __n128 a3)
{
  if ((*(a1 + 62) & 4) == 0 || (sub_1C1067144(), sub_1C11893E4(&v4), , !v4))
  {
    a2(a3);
    sub_1C1067144();
    sub_1C11893E4(&v5);

    if (v5)
    {
      sub_1C1067294();
    }
  }
}

uint64_t sub_1C1067144()
{
  v1 = sub_1C12637E0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for OneUpPhotosBadgeView(0) + 44));
  v6 = *v5;
  v7 = *(v5 + 8);

  if ((v7 & 1) == 0)
  {
    sub_1C1266420();
    v8 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    return v10[1];
  }

  return v6;
}

void *sub_1C1067294()
{
  v1 = sub_1C1265C50();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v22 - v6;
  v8 = sub_1C1265C10();
  MEMORY[0x1EEE9AC00](v8);
  v9 = type metadata accessor for OneUpPhotosBadgeView(0);
  v29 = *(v9 - 8);
  v10 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = *(v0 + 72);
  LOBYTE(aBlock) = *(v0 + 64);
  v31 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE95B10, &unk_1C12A7C50);
  result = sub_1C1265420();
  if ((v36 & 1) == 0)
  {
    v26 = v7;
    v27 = v2;
    v28 = v1;
    v13 = *(v0 + 104);
    v25 = *(v0 + 96);
    aBlock = v25;
    v31 = v13;
    v23 = v13;
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91FD8, &unk_1C12ACFE8);
    v14 = sub_1C1265420();
    if (v36)
    {
      sub_1C1265C70();
    }

    MEMORY[0x1EEE9AC00](v14);
    *(&v22 - 2) = v0;
    sub_1C1265A30();
    sub_1C1262EA0();

    sub_1C106BA70(v0, &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for OneUpPhotosBadgeView);
    v15 = (*(v29 + 80) + 16) & ~*(v29 + 80);
    v16 = swift_allocObject();
    sub_1C106BA14(&v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for OneUpPhotosBadgeView);
    v34 = sub_1C106B728;
    v35 = v16;
    aBlock = MEMORY[0x1E69E9820];
    v31 = 1107296256;
    v32 = sub_1C0FD7FC4;
    v33 = &block_descriptor_5;
    _Block_copy(&aBlock);
    v36 = MEMORY[0x1E69E7CC0];
    sub_1C106BFA8(&qword_1EDE7B768, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE95B00, &qword_1C12A3280);
    sub_1C0FDB6D4(&qword_1EDE7B708, &unk_1EBE95B00, &qword_1C12A3280, MEMORY[0x1E69E6328]);
    sub_1C1266870();
    sub_1C1265C80();
    swift_allocObject();
    v17 = sub_1C1265C60();

    aBlock = v25;
    v31 = v23;
    v36 = v17;

    sub_1C1265430();
    sub_1C0FDAFC4();
    v18 = sub_1C12664C0();
    sub_1C1265C40();
    v19 = v26;
    sub_1C1265C90();
    v20 = v28;
    v21 = *(v27 + 8);
    v21(v4, v28);
    sub_1C12664A0();

    return (v21)(v19, v20);
  }

  return result;
}

uint64_t sub_1C1067780@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v38 = a3;
  v37 = sub_1C12648B0();
  v35 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92068, &qword_1C12AD0A8);
  v34 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v8 = &v33 - v7;
  v40[0] = a1;
  v40[1] = a2;
  sub_1C0FDB9AC();

  v9 = sub_1C12648F0();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = sub_1C12644C0();
  sub_1C12628A0();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = v13 & 1;
  v42 = v13 & 1;
  v41 = 0;
  v26 = sub_1C12644A0();
  sub_1C12628A0();
  v43 = 0;
  v39[0] = v9;
  v39[1] = v11;
  LOBYTE(v39[2]) = v25;
  v39[3] = v15;
  LOBYTE(v39[4]) = v16;
  v39[5] = v18;
  v39[6] = v20;
  v39[7] = v22;
  v39[8] = v24;
  LOBYTE(v39[9]) = 0;
  LOBYTE(v39[10]) = v26;
  v39[11] = v27;
  v39[12] = v28;
  v39[13] = v29;
  v39[14] = v30;
  LOBYTE(v39[15]) = 0;
  sub_1C12648A0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92058, &qword_1C12AD0A0);
  sub_1C106BE98();
  sub_1C12650C0();
  (*(v35 + 8))(v6, v37);
  memcpy(v40, v39, 0x79uLL);
  sub_1C0FD1A5C(v40, &qword_1EBE92058, &qword_1C12AD0A0);
  v31 = v38;
  (*(v34 + 32))(v38, v8, v36);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92018, &qword_1C12AD060);
  *(v31 + *(result + 36)) = 1;
  return result;
}

void sub_1C1067A64(uint64_t *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_1C1263150();
  v102 = *(v6 - 8);
  v103 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v101 = &v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92010, &qword_1C12AD058);
  MEMORY[0x1EEE9AC00](v110);
  v111 = &v86 - v8;
  v9 = sub_1C1263840();
  v100 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v98 = &v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v99 = &v86 - v12;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92018, &qword_1C12AD060);
  MEMORY[0x1EEE9AC00](v109);
  v14 = &v86 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v93 = &v86 - v16;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92020, &qword_1C12AD068);
  MEMORY[0x1EEE9AC00](v92);
  v95 = &v86 - v17;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92028, &qword_1C12AD070);
  MEMORY[0x1EEE9AC00](v94);
  v104 = &v86 - v18;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92030, &qword_1C12AD078);
  MEMORY[0x1EEE9AC00](v107);
  v97 = &v86 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v96 = &v86 - v21;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92038, &qword_1C12AD080);
  MEMORY[0x1EEE9AC00](v108);
  v23 = &v86 - v22;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92040, &qword_1C12AD088);
  MEMORY[0x1EEE9AC00](v112);
  v25 = &v86 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92048, &qword_1C12AD090);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v114 = &v86 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v86 - v29;
  if (a1[1])
  {

    v31 = sub_1C1265320();
    v32 = sub_1C12644C0();
    sub_1C12628A0();
    v34 = v33;
    v36 = v35;
    v38 = v37;
    v40 = v39;
    v113 = v32;
  }

  else
  {
    v31 = 0;
    v113 = 0;
    v34 = 0;
    v36 = 0;
    v38 = 0;
    v40 = 0;
  }

  if ((*(a1 + 62) & 4) != 0)
  {
    v45 = a1[11];
    v116 = *(a1 + 80);
    v117 = v45;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE95B10, &unk_1C12A7C50);
    sub_1C1265420();
    if (v115 == 1)
    {
      sub_1C1067144();
      v46 = sub_1C11899A4();

      v47 = !v46;
    }

    else
    {
      v47 = 0;
    }

    v48 = a1[3];
    if (!v48)
    {
      v69 = 1;
      goto LABEL_24;
    }

    v105 = v47;
    v91 = v9;
    v106 = a2;
    v89 = a1[2];
    v49 = *(a1 + 64);
    v50 = a1[9];
    v116 = v49;
    v117 = v50;
    v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE95B10, &unk_1C12A7C50);
    sub_1C1265420();
    if (v115 == 1 && (v88 = v50, sub_1C1067144(), v51 = sub_1C11899A4(), , v51))
    {
      v87 = a3;
      v52 = v93;
      sub_1C1067780(v89, v48, v93);
      v116 = v49;
      v117 = v88;
      sub_1C1265420();
      if (v115)
      {
        v53 = 1.0;
      }

      else
      {
        v53 = 0.0;
      }

      v54 = v52;
      v55 = v95;
      sub_1C0FE4040(v54, v95, &qword_1EBE92018, &qword_1C12AD060);
      *(v55 + *(v92 + 36)) = v53;
      if (qword_1EBE8FC48 != -1)
      {
        swift_once();
      }

      v56 = qword_1EBE91EC0;
      v116 = v49;
      v117 = v88;
      sub_1C1265420();
      v57 = v115;
      v58 = v104;
      sub_1C0FE4040(v55, v104, &qword_1EBE92020, &qword_1C12AD068);
      v59 = v58 + *(v94 + 36);
      *v59 = v56;
      *(v59 + 8) = v57;

      v60 = v99;
      sub_1C1263830();
      v61 = v100;
      v62 = v91;
      (*(v100 + 16))(v98, v60, v91);
      sub_1C106BFA8(&qword_1EDE7BC98, MEMORY[0x1E697F260], MEMORY[0x1E697F258]);
      v63 = sub_1C1262CE0();
      (*(v61 + 8))(v60, v62);
      v64 = v97;
      sub_1C0FE4040(v104, v97, &qword_1EBE92028, &qword_1C12AD070);
      v65 = v107;
      *(v64 + *(v107 + 36)) = v63;
      v66 = v64;
      v67 = v96;
      sub_1C0FE4040(v66, v96, &qword_1EBE92030, &qword_1C12AD078);
      sub_1C0FE4040(v67, v23, &qword_1EBE92030, &qword_1C12AD078);
      v68 = 0;
      a3 = v87;
    }

    else
    {
      v68 = 1;
      v65 = v107;
    }

    __swift_storeEnumTagSinglePayload(v23, v68, 1, v65);
    sub_1C0FE5654(v23, v111, &qword_1EBE92038, &qword_1C12AD080);
    swift_storeEnumTagMultiPayload();
    sub_1C106BB50();
    sub_1C106BDD0();
    sub_1C1263C20();
    v42 = v23;
    v43 = &qword_1EBE92038;
    v44 = &qword_1C12AD080;
  }

  else
  {
    v41 = a1[3];
    if (!v41)
    {
      v69 = 1;
      LOBYTE(v47) = 1;
      goto LABEL_24;
    }

    v106 = a2;
    sub_1C1067780(a1[2], v41, v14);
    sub_1C0FE5654(v14, v111, &qword_1EBE92018, &qword_1C12AD060);
    v105 = 1;
    swift_storeEnumTagMultiPayload();
    sub_1C106BB50();
    sub_1C106BDD0();
    sub_1C1263C20();
    v42 = v14;
    v43 = &qword_1EBE92018;
    v44 = &qword_1C12AD060;
  }

  sub_1C0FD1A5C(v42, v43, v44);
  sub_1C0FE4040(v25, v30, &qword_1EBE92040, &qword_1C12AD088);
  v69 = 0;
  LOBYTE(v47) = v105;
  LOBYTE(a2) = v106;
LABEL_24:
  __swift_storeEnumTagSinglePayload(v30, v69, 1, v112);
  if (a2 == 2 || (v47 & 1) == 0)
  {
    v73 = a3;
    v72 = v30;
    v74 = v31;
    v75 = 0;
    v76 = 0;
    v77 = 0;
    v78 = 0;
LABEL_37:
    v82 = v114;
    sub_1C0FE5654(v72, v114, &qword_1EBE92048, &qword_1C12AD090);
    v83 = v113;
    *v73 = v74;
    *(v73 + 8) = v83;
    *(v73 + 16) = v34;
    *(v73 + 24) = v36;
    *(v73 + 32) = v38;
    *(v73 + 40) = v40;
    *(v73 + 48) = 0;
    v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92050, &qword_1C12AD098);
    sub_1C0FE5654(v82, v73 + *(v84 + 48), &qword_1EBE92048, &qword_1C12AD090);
    v85 = v73 + *(v84 + 64);

    sub_1C106BACC(v75, v76, v77);

    sub_1C106BB10(v75);
    *v85 = v75;
    *(v85 + 8) = v76;
    *(v85 + 16) = v77;
    *(v85 + 24) = v78;
    sub_1C0FD1A5C(v72, &qword_1EBE92048, &qword_1C12AD090);
    sub_1C106BB10(v75);
    sub_1C0FD1A5C(v82, &qword_1EBE92048, &qword_1C12AD090);

    return;
  }

  if ((a2 & 1) == 0)
  {
    v72 = v30;
    goto LABEL_33;
  }

  v70 = v101;
  sub_1C1068708(v101);
  v71 = (*(v102 + 88))(v70, v103);
  if (v71 == *MEMORY[0x1E697E7D0])
  {
    v72 = v30;
LABEL_33:
    v73 = a3;
    v74 = v31;
    v75 = sub_1C1265320();
    v80 = a1[11];
    v116 = *(a1 + 80);
    v79 = v116;
    v117 = v80;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE95B10, &unk_1C12A7C50);
    sub_1C1265420();
    v81 = v115;
    v77 = sub_1C1265A60();
    v116 = v79;
    v117 = v80;
    sub_1C1265420();
    v78 = v115;
    if (v81)
    {
      v76 = 0x3FF0000000000000;
    }

    else
    {
      v76 = 0;
    }

    goto LABEL_37;
  }

  if (v71 == *MEMORY[0x1E697E7D8])
  {
    v72 = v30;
    goto LABEL_33;
  }

  sub_1C1266B70();
  __break(1u);
}

uint64_t sub_1C1068708@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C12637E0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE904D0, &unk_1C12BB4A0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for OneUpPhotosBadgeView(0);
  sub_1C0FE5654(v1 + *(v10 + 40), v9, &qword_1EBE904D0, &unk_1C12BB4A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1C1263150();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_1C1266420();
    v13 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1C1068910@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1C1265900();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C1265650();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91FE8, &qword_1C12AD030);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v29 - v12;
  v14 = *MEMORY[0x1E697F468];
  v15 = sub_1C12639D0();
  (*(*(v15 - 8) + 104))(v10, v14, v15);
  if ((*(a1 + 62) & 4) != 0 && (sub_1C1067144(), v16 = sub_1C11899F0(), , v16))
  {
    *&v30 = sub_1C1265130();
  }

  else
  {
    if (qword_1EDE7B488 != -1)
    {
      swift_once();
    }

    v17 = __swift_project_value_buffer(v4, qword_1EDE7B490);
    (*(v5 + 16))(v7, v17, v4);
  }

  v18 = sub_1C1262C90();
  sub_1C106BA14(v10, v13, MEMORY[0x1E6981998]);
  *&v13[*(v11 + 52)] = v18;
  *&v13[*(v11 + 56)] = 256;
  if (qword_1EDE82EA0 != -1)
  {
    swift_once();
  }

  v19 = dword_1EDE82EA8;
  sub_1C1262B10();
  sub_1C106BA70(v13, a2, MEMORY[0x1E6981998]);
  v20 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91FF0, &qword_1C12AD038) + 36);
  v21 = v31;
  *v20 = v30;
  *(v20 + 16) = v21;
  *(v20 + 32) = v32;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91FF8, &qword_1C12AD040);
  *(a2 + *(v22 + 52)) = v19;
  *(a2 + *(v22 + 56)) = 256;
  v23 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92000, &qword_1C12AD048) + 36);
  sub_1C0FE5654(v13, v23, &qword_1EBE91FE8, &qword_1C12AD030);
  v24 = sub_1C12659A0();
  v26 = v25;
  sub_1C0FD1A5C(v13, &qword_1EBE91FE8, &qword_1C12AD030);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92008, &qword_1C12AD050);
  v28 = (v23 + *(result + 36));
  *v28 = v24;
  v28[1] = v26;
  return result;
}

uint64_t sub_1C1068CEC(uint64_t a1)
{
  if ((*(v1 + 62) & 4) != 0 && (sub_1C1067144(), v2 = sub_1C11899F0(), , v2))
  {

    return sub_1C1265190();
  }

  else
  {

    return sub_1C1265230();
  }
}

double sub_1C1068D58(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE95B10, &unk_1C12A7C50);
    sub_1C1265420();
    if (v5 == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91FD8, &unk_1C12ACFE8);
      v4 = sub_1C1265420();
      if (v5)
      {
        sub_1C1265C70();
      }

      MEMORY[0x1EEE9AC00](v4);
      sub_1C1265A30();
      sub_1C1262EA0();
    }
  }

  return result;
}

double sub_1C1068E74(uint64_t a1)
{
  v2 = sub_1C1265C10();
  v30 = *(v2 - 8);
  v31 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v27 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1C1265C30();
  v28 = *(v4 - 8);
  v29 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OneUpPhotosBadgeView(0);
  v26 = *(v7 - 8);
  v8 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v32 = sub_1C1265C50();
  v9 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v23 - v13;
  sub_1C1067144();
  v15 = sub_1C11899A4();

  v33 = a1;
  sub_1C1265A30();
  sub_1C1262EA0();

  if (v15)
  {
    sub_1C0FDAFC4();
    v24 = sub_1C12664C0();
    sub_1C1265C40();
    sub_1C1265C90();
    v25 = *(v9 + 8);
    v25(v11, v32);
    sub_1C106BA70(a1, &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for OneUpPhotosBadgeView);
    v17 = (*(v26 + 80) + 16) & ~*(v26 + 80);
    v18 = swift_allocObject();
    sub_1C106BA14(&v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for OneUpPhotosBadgeView);
    aBlock[4] = sub_1C106B8C8;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C0FD7FC4;
    aBlock[3] = &block_descriptor_51;
    v19 = _Block_copy(aBlock);

    sub_1C1265C20();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1C106BFA8(&qword_1EDE7B768, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE95B00, &qword_1C12A3280);
    sub_1C0FDB6D4(&qword_1EDE7B708, &unk_1EBE95B00, &qword_1C12A3280, MEMORY[0x1E69E6328]);
    v20 = v27;
    v21 = v31;
    sub_1C1266870();
    v22 = v24;
    MEMORY[0x1C68EFDD0](v14, v6, v20, v19);
    _Block_release(v19);

    (*(v30 + 8))(v20, v21);
    (*(v28 + 8))(v6, v29);
    v25(v14, v32);
  }

  return result;
}

double sub_1C1069398(uint64_t a1, char a2, char a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE95B10, &unk_1C12A7C50);
  sub_1C1265430();
  sub_1C1265430();
  return result;
}

double sub_1C1069438(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE95B10, &unk_1C12A7C50);
  sub_1C1265430();
  return result;
}

double sub_1C106949C(uint64_t a1)
{
  sub_1C1265A30();
  sub_1C1262EA0();

  return result;
}

double sub_1C1069508(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE95B10, &unk_1C12A7C50);
  sub_1C1265430();
  return result;
}

void sub_1C1069570()
{
  v0 = [objc_opt_self() preferredFontDescriptorWithTextStyle_];
  v1 = PXFontCreateWithDescriptorAndSize();

  qword_1EDE82E98 = v1;
}

uint64_t EnvironmentValues.oneUpBadgeContentProvider.getter()
{
  sub_1C106A5B0();
  sub_1C12637F0();
  if (v1)
  {
    swift_unknownObjectWeakLoadStrong();
  }

  return OUTLINED_FUNCTION_18();
}

uint64_t sub_1C1069654()
{
  OUTLINED_FUNCTION_35();
  result = EnvironmentValues.oneUpBadgeContentProvider.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1C1069694(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v6 = a1[1];
  v7 = swift_unknownObjectRetain();
  return a5(v7, v6);
}

uint64_t type metadata accessor for OneUpPhotosBadgeView(uint64_t a1)
{
  result = qword_1EDE82E78;
  if (!qword_1EDE82E78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t EnvironmentValues.oneUpBadgeContentProvider.setter(uint64_t a1, uint64_t a2)
{
  type metadata accessor for WeakBadgeContentProviderReference();
  swift_allocObject();
  v3 = swift_unknownObjectRetain();
  sub_1C0FEB470(v3, a2);
  sub_1C106A5B0();
  sub_1C1263800();
  return swift_unknownObjectRelease();
}

uint64_t sub_1C10697D4(uint64_t a1)
{
  v2 = sub_1C1263150();
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_1C12635C0();
}

unint64_t sub_1C106989C()
{
  result = qword_1EDE76CD0;
  if (!qword_1EDE76CD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91ED0, &qword_1C12ACB80);
    sub_1C1069920();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE76CD0);
  }

  return result;
}

unint64_t sub_1C1069920()
{
  result = qword_1EDE76E30;
  if (!qword_1EDE76E30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91ED8, &qword_1C12ACB88);
    sub_1C10699AC();
    sub_1C1069D40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE76E30);
  }

  return result;
}

unint64_t sub_1C10699AC()
{
  result = qword_1EDE76ED0;
  if (!qword_1EDE76ED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91EE0, &qword_1C12ACB90);
    sub_1C1069A38();
    sub_1C1069AF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE76ED0);
  }

  return result;
}

unint64_t sub_1C1069A38()
{
  result = qword_1EDE773E0;
  if (!qword_1EDE773E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91EE8, &qword_1C12ACB98);
    sub_1C0FDB6D4(&qword_1EDE76D20, &qword_1EBE91EF0, &qword_1C12ACBA0, MEMORY[0x1E697CD28]);
    sub_1C1059838();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE773E0);
  }

  return result;
}

unint64_t sub_1C1069AF0()
{
  result = qword_1EDE770E0;
  if (!qword_1EDE770E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91EF8, &qword_1C12ACBA8);
    sub_1C1069BA8();
    sub_1C0FDB6D4(&unk_1EDE7B8D0, &unk_1EBE91970, &unk_1C12A5EE0, MEMORY[0x1E6980B30]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE770E0);
  }

  return result;
}

unint64_t sub_1C1069BA8()
{
  result = qword_1EDE771A8;
  if (!qword_1EDE771A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91F00, &qword_1C12ACBB0);
    sub_1C1069C34();
    sub_1C1069CEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE771A8);
  }

  return result;
}

unint64_t sub_1C1069C34()
{
  result = qword_1EDE77320;
  if (!qword_1EDE77320)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91F08, &qword_1C12ACBB8);
    sub_1C0FDB6D4(&unk_1EDE76C68, &qword_1EBE91F10, &unk_1C12ACBC0, MEMORY[0x1E697D680]);
    sub_1C105833C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77320);
  }

  return result;
}

unint64_t sub_1C1069CEC()
{
  result = qword_1EDE78ED8;
  if (!qword_1EDE78ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE78ED8);
  }

  return result;
}

unint64_t sub_1C1069D40()
{
  result = qword_1EDE77358;
  if (!qword_1EDE77358)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91F18, &qword_1C12ACBD0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91F20, &qword_1C12ACBD8);
    sub_1C1069E24();
    sub_1C106A55C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77358);
  }

  return result;
}

unint64_t sub_1C1069E24()
{
  result = qword_1EDE76FF8;
  if (!qword_1EDE76FF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91F20, &qword_1C12ACBD8);
    sub_1C1069EDC();
    sub_1C0FDB6D4(&qword_1EDE7BC78, &qword_1EBE91210, &unk_1C12A8430, MEMORY[0x1E697F548]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE76FF8);
  }

  return result;
}

unint64_t sub_1C1069EDC()
{
  result = qword_1EDE77018;
  if (!qword_1EDE77018)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91F28, &qword_1C12ACBE0);
    sub_1C1069F68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77018);
  }

  return result;
}

unint64_t sub_1C1069F68()
{
  result = qword_1EDE77078;
  if (!qword_1EDE77078)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91F30, &qword_1C12ACBE8);
    sub_1C106A020();
    sub_1C0FDB6D4(&qword_1EDE7C028, &qword_1EBE91F88, &unk_1C12ACC40, MEMORY[0x1E697DDB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77078);
  }

  return result;
}

unint64_t sub_1C106A020()
{
  result = qword_1EDE77110;
  if (!qword_1EDE77110)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91F38, &qword_1C12ACBF0);
    sub_1C106A0AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77110);
  }

  return result;
}

unint64_t sub_1C106A0AC()
{
  result = qword_1EDE771F8;
  if (!qword_1EDE771F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91F40, &qword_1C12ACBF8);
    sub_1C106A164();
    sub_1C0FDB6D4(&qword_1EDE7B930, &qword_1EBE933F0, &qword_1C12A43F0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE771F8);
  }

  return result;
}

unint64_t sub_1C106A164()
{
  result = qword_1EDE77390;
  if (!qword_1EDE77390)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91F48, &qword_1C12ACC00);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91F50, &qword_1C12ACC08);
    sub_1C1263C40();
    sub_1C106A2A8();
    sub_1C106BFA8(&qword_1EDE76E08, MEMORY[0x1E697C658], MEMORY[0x1E697C650]);
    swift_getOpaqueTypeConformance2();
    sub_1C0FDB6D4(&qword_1EDE7BA50, &qword_1EBE904B8, &unk_1C12A3E30, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77390);
  }

  return result;
}

unint64_t sub_1C106A2A8()
{
  result = qword_1EDE77050;
  if (!qword_1EDE77050)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91F50, &qword_1C12ACC08);
    sub_1C106A360();
    sub_1C0FDB6D4(&qword_1EDE7BA30, &qword_1EBE91F80, &qword_1C12C2260, MEMORY[0x1E69805E8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77050);
  }

  return result;
}

unint64_t sub_1C106A360()
{
  result = qword_1EDE770D0;
  if (!qword_1EDE770D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91F58, &qword_1C12ACC10);
    sub_1C106A418();
    sub_1C0FDB6D4(&qword_1EDE76F18, &qword_1EBE91F78, &unk_1C12ACC30, MEMORY[0x1E697F940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE770D0);
  }

  return result;
}

unint64_t sub_1C106A418()
{
  result = qword_1EDE77190;
  if (!qword_1EDE77190)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91F60, &qword_1C12ACC18);
    sub_1C106A4A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77190);
  }

  return result;
}

unint64_t sub_1C106A4A4()
{
  result = qword_1EDE77310;
  if (!qword_1EDE77310)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91F68, &qword_1C12ACC20);
    sub_1C0FDB6D4(&qword_1EDE76C38, &qword_1EBE91F70, &qword_1C12ACC28, MEMORY[0x1E69817F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77310);
  }

  return result;
}

unint64_t sub_1C106A55C()
{
  result = qword_1EDE77728[0];
  if (!qword_1EDE77728[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDE77728);
  }

  return result;
}

unint64_t sub_1C106A5B0()
{
  result = qword_1EDE7C1A8[0];
  if (!qword_1EDE7C1A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDE7C1A8);
  }

  return result;
}

void __swiftcall OneUpPhotosBadgeViewSpec.init(systemImageName:localizedTitle:accessibilityLabel:backgroundStyle:badgeInfo:)(PhotosSwiftUICore::OneUpPhotosBadgeViewSpec *__return_ptr retstr, Swift::String_optional systemImageName, Swift::String_optional localizedTitle, Swift::String accessibilityLabel, PhotosSwiftUICore::OneUpPhotosBadgeViewSpec::BackgroundStyle backgroundStyle, Swift::UInt badgeInfo)
{
  v6 = *backgroundStyle;
  retstr->systemImageName = systemImageName;
  retstr->localizedTitle = localizedTitle;
  retstr->accessibilityLabel = accessibilityLabel;
  retstr->badgeInfo = badgeInfo;
  retstr->backgroundStyle = v6;
}

uint64_t OneUpPhotosBadgeViewSpec.BackgroundStyle.hashValue.getter()
{
  v1 = *v0;
  sub_1C1266E90();
  MEMORY[0x1C68F07E0](v1);
  return sub_1C1266EE0();
}

void sub_1C106A780(uint64_t a1)
{
  sub_1C1265190();
  v1 = sub_1C12651E0();

  qword_1EDE82EC0 = v1;
}

uint64_t sub_1C106A7E8()
{
  result = sub_1C1263E30();
  dword_1EDE82EA8 = result;
  return result;
}

uint64_t static OneUpPhotosBadgeViewSpec.backgroundStrokeStyle.getter()
{
  if (qword_1EDE82EA0 != -1)
  {
    swift_once();
  }

  return dword_1EDE82EA8;
}

uint64_t sub_1C106A878()
{
  v0 = sub_1C1265900();
  __swift_allocate_value_buffer(v0, qword_1EDE7B490);
  __swift_project_value_buffer(v0, qword_1EDE7B490);
  return sub_1C12658D0();
}

uint64_t static OneUpPhotosBadgeViewSpec.backgroundMaterial.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDE7B488 != -1)
  {
    swift_once();
  }

  v2 = sub_1C1265900();
  v3 = __swift_project_value_buffer(v2, qword_1EDE7B490);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C106A990()
{
  result = sub_1C12659D0();
  qword_1EDE7B4B8 = result;
  return result;
}

uint64_t sub_1C106A9E8(uint64_t a1)
{
  result = sub_1C1265A60();
  qword_1EBE91EC0 = result;
  return result;
}

BOOL static OneUpPhotosBadgeViewSpec.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v6 = a1[3];
  v5 = a1[4];
  v7 = a1[5];
  v8 = *(a1 + 48);
  v9 = a1[7];
  v10 = *(a2 + 8);
  v11 = *(a2 + 16);
  v13 = *(a2 + 24);
  v12 = *(a2 + 32);
  v14 = *(a2 + 40);
  v15 = *(a2 + 48);
  v16 = *(a2 + 56);
  if (v3)
  {
    if (!v10)
    {
      return 0;
    }

    if (*a1 != *a2 || v3 != v10)
    {
      v32 = a1[4];
      v33 = a1[5];
      v18 = *(a2 + 48);
      v19 = *(a2 + 56);
      v20 = *(a1 + 48);
      v21 = a1[7];
      v22 = *(a2 + 40);
      v23 = sub_1C1266D50();
      v14 = v22;
      v9 = v21;
      v8 = v20;
      v16 = v19;
      v15 = v18;
      v5 = v32;
      v7 = v33;
      if ((v23 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v10)
  {
    return 0;
  }

  if (v6)
  {
    if (!v13)
    {
      return 0;
    }

    if (v4 != v11 || v6 != v13)
    {
      v25 = v9;
      v26 = v14;
      v27 = sub_1C1266D50();
      v14 = v26;
      v9 = v25;
      if ((v27 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v13)
  {
    return 0;
  }

  if (v5 == v12 && v7 == v14)
  {
    if (v8 == v15)
    {
      return v9 == v16;
    }

    return 0;
  }

  v29 = v9;
  v30 = sub_1C1266D50();
  result = 0;
  if (v30)
  {
    v9 = v29;
    if (((v8 ^ v15) & 1) == 0)
    {
      return v9 == v16;
    }
  }

  return result;
}

uint64_t OneUpPhotosBadgeViewSpec.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  if (!*(v1 + 8))
  {
    sub_1C1266EB0();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_1C1266EB0();
    goto LABEL_6;
  }

  sub_1C1266EB0();
  sub_1C1265EF0();
  if (!v2)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1C1266EB0();
  sub_1C1265EF0();
LABEL_6:
  sub_1C1265EF0();
  MEMORY[0x1C68F07E0](v3);
  return MEMORY[0x1C68F07E0](v4);
}

uint64_t OneUpPhotosBadgeViewSpec.hashValue.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 24);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  sub_1C1266E90();
  sub_1C1266EB0();
  if (v1)
  {
    sub_1C1265EF0();
  }

  sub_1C1266EB0();
  if (v2)
  {
    sub_1C1265EF0();
  }

  sub_1C1265EF0();
  MEMORY[0x1C68F07E0](v3);
  MEMORY[0x1C68F07E0](v4);
  return sub_1C1266EE0();
}

uint64_t sub_1C106AD68(uint64_t a1)
{
  sub_1C1266E90();
  OneUpPhotosBadgeViewSpec.hash(into:)(v2);
  return sub_1C1266EE0();
}

void (*EnvironmentValues.oneUpBadgeContentProvider.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[3] = v1;
  v3[4] = sub_1C106A5B0();
  sub_1C12637F0();
  v4 = v3[2];
  if (v4)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    v6 = *(v4 + 24);
  }

  else
  {
    Strong = 0;
    v6 = 0;
  }

  *v3 = Strong;
  v3[1] = v6;
  return sub_1C106AE5C;
}

void sub_1C106AE5C(uint64_t **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[1];
  type metadata accessor for WeakBadgeContentProviderReference();
  swift_allocObject();
  v5 = swift_unknownObjectRetain();
  if (a2)
  {
    v6 = swift_unknownObjectRetain();
    v7 = sub_1C0FEB470(v6, v4);
    v3[2] = v7;
    OUTLINED_FUNCTION_48(v7, &type metadata for DefaultOneUpBadgeContentProviderEnvironmentKey);
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = sub_1C0FEB470(v5, v4);
    v3[2] = v8;
    OUTLINED_FUNCTION_48(v8, &type metadata for DefaultOneUpBadgeContentProviderEnvironmentKey);
  }

  swift_unknownObjectRelease();

  free(v3);
}

unint64_t sub_1C106AF48()
{
  result = qword_1EBE91F90;
  if (!qword_1EBE91F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE91F90);
  }

  return result;
}

unint64_t sub_1C106AFA0()
{
  result = qword_1EBE91F98;
  if (!qword_1EBE91F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE91F98);
  }

  return result;
}

void sub_1C106B01C(uint64_t a1)
{
  sub_1C106B1CC();
  if (v1 <= 0x3F)
  {
    sub_1C106B21C(319, &qword_1EDE76CA8, &qword_1EBE91EC8, &qword_1C12ACAF0, MEMORY[0x1E6981790]);
    if (v2 <= 0x3F)
    {
      sub_1C106B21C(319, &qword_1EDE77668, &qword_1EBE91478, qword_1C12B6A70, MEMORY[0x1E697DCC0]);
      if (v3 <= 0x3F)
      {
        sub_1C106B21C(319, &qword_1EDE775C8, &qword_1EBE91FA8, &qword_1C12ACDC0, MEMORY[0x1E697DCC0]);
        if (v4 <= 0x3F)
        {
          sub_1C106B280(319, &qword_1EDE77570, MEMORY[0x1E697E7E0]);
          if (v5 <= 0x3F)
          {
            sub_1C106B280(319, &qword_1EDE775B8, type metadata accessor for OneUpSpatialPhotoBadgeStateModel);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1C106B1CC()
{
  if (!qword_1EDE76CA0)
  {
    v0 = sub_1C1265450();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDE76CA0);
    }
  }
}

void sub_1C106B21C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

void sub_1C106B280(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C1262A70();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1C106B2E8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C106B328(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for OneUpPhotosBadgeViewSpec.BackgroundStyle(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C106B498(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C106B4D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_1C106B520(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 40) = a2;
  return result;
}

unint64_t sub_1C106B558()
{
  result = qword_1EDE77338;
  if (!qword_1EDE77338)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91FB0, &qword_1C12ACF28);
    sub_1C106989C();
    sub_1C106BFA8(&qword_1EDE7B8E0, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77338);
  }

  return result;
}

void sub_1C106B654()
{
  v1 = *(type metadata accessor for OneUpPhotosBadgeView(0) - 8);
  v3 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v4 = *(v0 + ((*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1C10670A8(v0 + v3, v4, v2);
}

uint64_t objectdestroy_44Tm()
{
  type metadata accessor for OneUpPhotosBadgeView(0);
  OUTLINED_FUNCTION_10_4();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  sub_1C0FF9034(*(v3 + 112), *(v3 + 120), *(v3 + 128));
  sub_1C0FF9034(*(v3 + 136), *(v3 + 144), *(v3 + 152));
  v4 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE904D0, &unk_1C12BB4A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1C1263150();
    OUTLINED_FUNCTION_3();
    (*(v5 + 8))(v3 + v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1C106B8E0(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for OneUpPhotosBadgeView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

double sub_1C106B970(uint64_t a1, _BYTE *a2)
{
  v5 = *(type metadata accessor for OneUpPhotosBadgeView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1C1068D58(a1, a2, v6);
}

uint64_t sub_1C106BA14(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_3();
  v4 = OUTLINED_FUNCTION_18();
  v5(v4);
  return a2;
}

uint64_t sub_1C106BA70(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_3();
  v4 = OUTLINED_FUNCTION_18();
  v5(v4);
  return a2;
}

double sub_1C106BACC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
  }

  return result;
}

double sub_1C106BB10(uint64_t a1)
{
  if (a1)
  {
  }

  return result;
}

unint64_t sub_1C106BB50()
{
  result = qword_1EDE77060;
  if (!qword_1EDE77060)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92038, &qword_1C12AD080);
    sub_1C106BBD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77060);
  }

  return result;
}

unint64_t sub_1C106BBD4()
{
  result = qword_1EDE77068;
  if (!qword_1EDE77068)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92030, &qword_1C12AD078);
    sub_1C106BC8C();
    sub_1C0FDB6D4(&unk_1EDE7BB70, &qword_1EBE914F8, &qword_1C12A9330, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77068);
  }

  return result;
}

unint64_t sub_1C106BC8C()
{
  result = qword_1EDE77100;
  if (!qword_1EDE77100)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92028, &qword_1C12AD070);
    sub_1C106BD44();
    sub_1C0FDB6D4(&qword_1EDE7BC78, &qword_1EBE91210, &unk_1C12A8430, MEMORY[0x1E697F548]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77100);
  }

  return result;
}

unint64_t sub_1C106BD44()
{
  result = qword_1EDE771E0;
  if (!qword_1EDE771E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92020, &qword_1C12AD068);
    sub_1C106BDD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE771E0);
  }

  return result;
}

unint64_t sub_1C106BDD0()
{
  result = qword_1EDE77348;
  if (!qword_1EDE77348)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92018, &qword_1C12AD060);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92058, &qword_1C12AD0A0);
    sub_1C106BE98();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77348);
  }

  return result;
}

unint64_t sub_1C106BE98()
{
  result = qword_1EDE7BDC0;
  if (!qword_1EDE7BDC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92058, &qword_1C12AD0A0);
    sub_1C106BF24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BDC0);
  }

  return result;
}

unint64_t sub_1C106BF24()
{
  result = qword_1EDE7BEB0;
  if (!qword_1EDE7BEB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92060, &qword_1C12BBC20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BEB0);
  }

  return result;
}

uint64_t sub_1C106BFA8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id PhotosBlur.body.getter@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  if (qword_1EDE78930 != -1)
  {
    OUTLINED_FUNCTION_0_25(&qword_1EDE78930);
  }

  v4 = 1.0;
  if (v3 <= 1.0)
  {
    v4 = v3;
  }

  if (v3 > 0.0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0.0;
  }

  swift_beginAccess();
  v6 = qword_1EDE78950;
  v7 = unk_1EDE78958;
  v8 = __swift_project_boxed_opaque_existential_1(qword_1EDE78938, qword_1EDE78950);
  v9 = *(v6 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, v10);
  v13 = (*(v7 + 8))(v6, v7);
  (*(v9 + 8))(v12, v6);
  result = [objc_opt_self() effectWithBlurRadius_];
  *a1 = result;
  return result;
}

id sub_1C106C1BC()
{
  v0 = objc_allocWithZone(MEMORY[0x1E69DD298]);

  return [v0 init];
}

uint64_t sub_1C106C210(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C106C7A4();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1C106C274(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C106C7A4();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1C106C2D8(uint64_t a1)
{
  sub_1C106C7A4();
  sub_1C1263BD0();
  __break(1u);
}

void sub_1C106C300()
{
  qword_1EDE78950 = &type metadata for FallbackSettings;
  unk_1EDE78958 = &off_1F4073310;
  qword_1EDE78938[0] = 0x401C000000000000;
}

uint64_t photosBlurSettings.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDE78930 != -1)
  {
    OUTLINED_FUNCTION_0_25(&qword_1EDE78930);
  }

  swift_beginAccess();
  return sub_1C0FDB0A8(qword_1EDE78938, a1);
}

uint64_t photosBlurSettings.setter(uint64_t *a1)
{
  if (qword_1EDE78930 != -1)
  {
    OUTLINED_FUNCTION_0_25(&qword_1EDE78930);
  }

  swift_beginAccess();
  __swift_assign_boxed_opaque_existential_1(qword_1EDE78938, a1, v2);
  swift_endAccess();
  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

double __swift_assign_boxed_opaque_existential_1(uint64_t *a1, uint64_t *a2, __n128 result)
{
  if (a1 != a2)
  {
    v5 = a1[3];
    v6 = a2[3];
    if (v5 == v6)
    {
      v11 = *(v5 - 8);
      if ((*(v11 + 82) & 2) != 0)
      {
        v13 = *a2;

        *a1 = v13;
      }

      else
      {
        v12 = *(v11 + 24);

        v12(result);
      }
    }

    else
    {
      a1[3] = v6;
      a1[4] = a2[4];
      v7 = *(v5 - 8);
      v8 = *(v6 - 8);
      v9 = v8;
      v10 = *(v8 + 80);
      if ((*(v7 + 82) & 2) != 0)
      {
        if ((v10 & 0x20000) != 0)
        {
          *a1 = *a2;
        }

        else
        {
          (*(v8 + 16))(a1, a2, v6, result);
        }
      }

      else
      {
        (*(v7 + 32))(v15, a1, v5, result);
        if ((v10 & 0x20000) != 0)
        {
          *a1 = *a2;
        }

        else
        {
          (*(v9 + 16))(a1, a2, v6);
        }

        (*(v7 + 8))(v15, v5);
      }
    }
  }

  return result.n128_f64[0];
}

uint64_t (*photosBlurSettings.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_1EDE78930 != -1)
  {
    OUTLINED_FUNCTION_0_25(&qword_1EDE78930);
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t getEnumTagSinglePayload for PhotosBlur(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PhotosBlur(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 8) = v3;
  return result;
}

unint64_t sub_1C106C73C()
{
  result = qword_1EDE78A48;
  if (!qword_1EDE78A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE78A48);
  }

  return result;
}

unint64_t sub_1C106C7A4()
{
  result = qword_1EDE78A40;
  if (!qword_1EDE78A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE78A40);
  }

  return result;
}

uint64_t sub_1C106C83C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE95B10, &unk_1C12A7C50);
  sub_1C1265420();
  return v1;
}

double sub_1C106C894(char a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE95B10, &unk_1C12A7C50);
  sub_1C1265430();
  return result;
}

__n128 PhotosSearchHomeView.init(onStartScrollingHandler:recentSuggestions:recentSuggestionOnSelectHandler:recentSuggestionOnClearHandler:recentSuggestionOnExpandHandler:isShowingInitialSuggestions:initialSuggestionsAlignment:initialSuggestions:initialSuggestionOnSelectHandler:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char a11, __int128 a12, __n128 a13, uint64_t a14)
{
  *a9 = sub_1C1012790(0) & 1;
  *(a9 + 8) = v21;
  *(a9 + 16) = a1;
  *(a9 + 24) = a2;
  *(a9 + 32) = a3;
  *(a9 + 40) = a4;
  *(a9 + 48) = a5;
  *(a9 + 56) = a6;
  *(a9 + 64) = a7;
  *(a9 + 72) = a8;
  *(a9 + 80) = a10;
  *(a9 + 88) = a11;
  result = a13;
  *(a9 + 96) = a12;
  *(a9 + 112) = a13;
  *(a9 + 128) = a14;
  return result;
}

uint64_t PhotosSearchHomeView.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v89 = a2;
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  v95 = a1;
  v96 = v6;
  v93 = a1[6];
  v94 = v7;
  __dst[0] = v4;
  __dst[1] = v5;
  v8 = v4;
  v9 = v5;
  __dst[2] = v6;
  __dst[3] = v7;
  __dst[4] = v93;
  type metadata accessor for PhotosSearchRecentSuggestionsView(255, __dst);
  sub_1C1263190();
  sub_1C1263190();
  v10 = sub_1C1263190();
  OUTLINED_FUNCTION_1_17();
  v104[21] = swift_getWitnessTable();
  v104[22] = MEMORY[0x1E697E5C0];
  v88 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable();
  v12 = MEMORY[0x1E697E5D8];
  v104[19] = WitnessTable;
  v104[20] = MEMORY[0x1E697E5D8];
  v104[17] = swift_getWitnessTable();
  v104[18] = v12;
  swift_getWitnessTable();
  v13 = sub_1C1262940();
  v73 = v13;
  OUTLINED_FUNCTION_1();
  v77 = v14;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v69 - v16;
  v74 = OUTLINED_FUNCTION_3_21();
  __dst[0] = v13;
  __dst[1] = v74;
  v76 = MEMORY[0x1E697D220];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_1();
  v79 = v18;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v19);
  v72 = &v69 - v20;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92070, &qword_1C12AD2E0);
  v80 = sub_1C1263190();
  OUTLINED_FUNCTION_1();
  v82 = v21;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v22);
  v92 = &v69 - v23;
  v83 = sub_1C1263190();
  OUTLINED_FUNCTION_1();
  v86 = v24;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v25);
  v78 = &v69 - v26;
  v85 = sub_1C1263190();
  OUTLINED_FUNCTION_1();
  v87 = v27;
  MEMORY[0x1EEE9AC00](v28);
  v81 = &v69 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v84 = &v69 - v31;
  memcpy(__dst, v3, 0x88uLL);
  v103[2] = v8;
  v103[3] = v9;
  v32 = v96;
  v34 = v93;
  v33 = v94;
  v103[4] = v96;
  v103[5] = v94;
  v103[6] = v93;
  v103[7] = __dst;
  v35 = sub_1C1264440();
  sub_1C106C824(v35, sub_1C106D700, v103, v10);
  OUTLINED_FUNCTION_6_16();
  v36 = swift_allocObject();
  v36[2] = v8;
  v36[3] = v9;
  v90 = v8;
  v91 = v9;
  v36[4] = v32;
  v36[5] = v33;
  v37 = v33;
  v36[6] = v34;
  v38 = v34;
  OUTLINED_FUNCTION_4_21(v36);
  v39 = *(v95 - 1);
  v70 = *(v39 + 16);
  v71 = v39 + 16;
  v70(v104, __dst);
  v40 = v72;
  v41 = v73;
  v42 = v74;
  sub_1C1264D10();

  (*(v77 + 8))(v17, v41);
  v97 = v8;
  v98 = v9;
  v43 = v96;
  v99 = v96;
  v100 = v37;
  v101 = v38;
  v102 = __dst;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92078, &qword_1C12AD2E8);
  v104[0] = v41;
  v104[1] = v42;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1C106DA38();
  v45 = OpaqueTypeMetadata2;
  sub_1C1264F60();
  (*(v79 + 8))(v40, v45);
  OUTLINED_FUNCTION_6_16();
  v46 = swift_allocObject();
  v47 = v91;
  v46[2] = v90;
  v46[3] = v47;
  v46[4] = v43;
  v46[5] = v37;
  v46[6] = v38;
  OUTLINED_FUNCTION_4_21(v46);
  v48 = v95;
  v49 = v70;
  (v70)(v104, __dst, v95);
  OUTLINED_FUNCTION_11();
  v52 = sub_1C0FDB6D4(v50, &qword_1EBE92070, &qword_1C12AD2E0, v51);
  v103[13] = OpaqueTypeConformance2;
  v103[14] = v52;
  v53 = v80;
  v54 = swift_getWitnessTable();
  v55 = v78;
  v56 = v92;
  sub_1C1264FF0();

  (*(v82 + 8))(v56, v53);
  OUTLINED_FUNCTION_6_16();
  v57 = swift_allocObject();
  v58 = v91;
  v57[2] = v90;
  v57[3] = v58;
  v59 = v93;
  v60 = v94;
  v57[4] = v96;
  v57[5] = v60;
  v57[6] = v59;
  OUTLINED_FUNCTION_4_21(v57);
  v49(v104, __dst, v48);
  v61 = MEMORY[0x1E69805D0];
  v103[11] = v54;
  v103[12] = MEMORY[0x1E69805D0];
  v62 = v83;
  v63 = swift_getWitnessTable();
  v64 = v81;
  sub_1C1264A60();

  (*(v86 + 8))(v55, v62);
  v103[9] = v63;
  v103[10] = v61;
  v65 = v85;
  swift_getWitnessTable();
  v66 = v84;
  sub_1C0FDBA4C();
  v67 = *(v87 + 8);
  v67(v64, v65);
  sub_1C0FDBA4C();
  return (v67)(v66, v65);
}

uint64_t sub_1C106D174@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v47 = a4;
  v48 = a3;
  v50 = a2;
  v62 = a7;
  v69[0] = a2;
  v69[1] = a3;
  v69[2] = a4;
  v69[3] = a5;
  v69[4] = a6;
  v52 = type metadata accessor for PhotosSearchRecentSuggestionsView(0, v69);
  v58 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v46 = &v45 - v10;
  v55 = sub_1C1263190();
  v59 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v49 = &v45 - v11;
  v56 = sub_1C1263190();
  v60 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v53 = &v45 - v12;
  v51 = sub_1C1263190();
  v61 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v54 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v57 = &v45 - v15;
  v16 = a1[4];
  v17 = a1[5];
  v18 = a1[6];
  v19 = a1[7];
  v20 = a1[8];
  v21 = a1[9];
  v22 = a1[10];

  v43 = a5;
  v44 = a6;
  v23 = v47;
  *(&v42 + 1) = v47;
  v24 = v48;
  *&v42 = v48;
  v25 = v46;
  v26 = v20;
  v27 = v50;
  PhotosSearchRecentSuggestionsView.init(suggestions:selectionHandler:clearRecentSearchesHandler:expandRecentSearchesHandler:)(v16, v17, v18, v19, v26, v21, v22, v50, v46, v42, v43, v44);
  v69[0] = v16;
  type metadata accessor for PhotosSearchRecentSuggestionItem(255, v27, v24, v23);
  sub_1C12661A0();
  swift_getWitnessTable();
  sub_1C1266370();
  v28 = v52;
  WitnessTable = swift_getWitnessTable();
  v30 = v49;
  sub_1C1264F50();
  (*(v58 + 8))(v25, v28);
  sub_1C12644D0();
  v67 = WitnessTable;
  v68 = MEMORY[0x1E697E5C0];
  v31 = v55;
  v32 = swift_getWitnessTable();
  v33 = v53;
  sub_1C1264FB0();
  (*(v59 + 8))(v30, v31);
  sub_1C1264460();
  v34 = MEMORY[0x1E697E5D8];
  v65 = v32;
  v66 = MEMORY[0x1E697E5D8];
  v35 = v56;
  v36 = swift_getWitnessTable();
  v37 = v54;
  sub_1C1264FB0();
  (*(v60 + 8))(v33, v35);
  v63 = v36;
  v64 = v34;
  v38 = v51;
  swift_getWitnessTable();
  v39 = v57;
  sub_1C0FDBA4C();
  v40 = *(v61 + 8);
  v40(v37, v38);
  sub_1C0FDBA4C();
  return (v40)(v39, v38);
}

uint64_t sub_1C106D718(uint64_t a1, uint64_t a2)
{
  result = sub_1C1262B00();
  if (result)
  {
    return (*(v2 + 72))();
  }

  return result;
}

uint64_t sub_1C106D750@<X0>(void *__src@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v13 = __src[14];
  memcpy(__dst, __src, 0x88uLL);

  __srca[0] = a2;
  __srca[1] = a3;
  __srca[2] = a4;
  __srca[3] = a5;
  __srca[4] = a6;
  type metadata accessor for PhotosSearchHomeView(0, __srca);
  v14 = sub_1C106C83C();
  v16 = __src[15];
  v15 = __src[16];
  __srca[0] = v13;
  LOBYTE(__srca[1]) = v14 & 1;
  __srca[2] = 0;
  LOBYTE(__srca[3]) = 2;
  __srca[4] = v16;
  __srca[5] = v15;
  __srca[6] = sub_1C106DCB4;
  memset(&__srca[7], 0, 24);
  v17 = qword_1EBE8FC78;

  if (v17 != -1)
  {
    v18 = swift_once();
  }

  MEMORY[0x1EEE9AC00](v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92098, &qword_1C12AD2F8);
  sub_1C106DBA8();
  sub_1C106DBFC();
  sub_1C1265030();
  memcpy(__dst, __srca, 0x50uLL);
  sub_1C106E114(__dst);
  v19 = sub_1C1264470();
  v20 = a7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92090, &qword_1C12AD2F0) + 36);
  *v20 = v19;
  *(v20 + 8) = 0u;
  *(v20 + 24) = 0u;
  *(v20 + 40) = 1;
  v21 = sub_1C1264490();
  sub_1C12628A0();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92078, &qword_1C12AD2E8);
  v31 = a7 + *(result + 36);
  *v31 = v21;
  *(v31 + 8) = v23;
  *(v31 + 16) = v25;
  *(v31 + 24) = v27;
  *(v31 + 32) = v29;
  *(v31 + 40) = 0;
  return result;
}

unint64_t sub_1C106DA38()
{
  result = qword_1EBE92080;
  if (!qword_1EBE92080)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92078, &qword_1C12AD2E8);
    sub_1C106DAC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE92080);
  }

  return result;
}

unint64_t sub_1C106DAC4()
{
  result = qword_1EBE92088;
  if (!qword_1EBE92088)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92090, &qword_1C12AD2F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92098, &qword_1C12AD2F8);
    sub_1C106DBA8();
    sub_1C106DBFC();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE92088);
  }

  return result;
}

unint64_t sub_1C106DBA8()
{
  result = qword_1EBE920A0;
  if (!qword_1EBE920A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE920A0);
  }

  return result;
}

unint64_t sub_1C106DBFC()
{
  result = qword_1EBE920A8;
  if (!qword_1EBE920A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92098, &qword_1C12AD2F8);
    sub_1C0FDB6D4(&qword_1EBE920B0, &qword_1EBE920B8, &qword_1C12AD300, MEMORY[0x1E697FEC8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE920A8);
  }

  return result;
}

uint64_t sub_1C106DCB4(uint64_t a1, uint64_t a2)
{
  result = sub_1C12659D0();
  if (__OFSUB__(a2, 1))
  {
    __break(1u);
  }

  else if (!__OFSUB__(a2 - 1, a1))
  {
    sub_1C12659E0();

    v5 = sub_1C12659F0();

    return v5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C106DD60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if ((*(a2 + 88) & 1) == 0 || (v5 = 1.0, !*(*(a2 + 112) + 16)))
  {
    v5 = 0.0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE920B8, &qword_1C12AD300);
  (*(*(v6 - 8) + 16))(a3, a1, v6);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92098, &qword_1C12AD2F8);
  *(a3 + *(result + 36)) = v5;
  return result;
}

uint64_t sub_1C106DE14(void *__src, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  memcpy(v17, __src, sizeof(v17));
  __dst[0] = a2;
  __dst[1] = a3;
  __dst[2] = a4;
  __dst[3] = a5;
  __dst[4] = a6;
  v14 = type metadata accessor for PhotosSearchHomeView(0, __dst);
  v15 = *(v14 - 8);
  (*(v15 + 16))(__dst, __src, v14);
  sub_1C106C894(a7);
  memcpy(__dst, v17, sizeof(__dst));
  return (*(v15 + 8))(__dst, v14);
}

uint64_t objectdestroyTm_4()
{

  OUTLINED_FUNCTION_6_16();

  return swift_deallocObject();
}

uint64_t sub_1C106E008(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C106E04C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 136))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C106E08C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_1C106E168@<D0>(uint64_t a1@<X8>)
{
  if (qword_1EDE82B00 != -1)
  {
    swift_once();
  }

  v2 = qword_1EDE82B10;
  v3 = qword_1EDE82B28;
  *a1 = qword_1EDE82B08;
  *(a1 + 8) = v2;
  *(a1 + 16) = xmmword_1EDE82B18;
  *(a1 + 32) = v3;

  return result;
}

uint64_t PhotosCenteredLabelCell.BadgeConfiguration.symbolNameProvider.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PhotosCenteredLabelCell.BadgeConfiguration.init(symbolNameProvider:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_1C106E228@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1C12637E0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *(a1 + 68);
  memcpy(v17, (v2 + v9), 0xD1uLL);
  memcpy(v18, (v2 + v9), 0xD1uLL);
  if (sub_1C100D688(v18) == 1)
  {
    nullsub_1();
    memcpy(v15, v17, sizeof(v15));
    nullsub_1();
    memcpy(a2, v10, 0xD0uLL);
    memcpy(v16, v17, sizeof(v16));
    nullsub_1();
    return sub_1C100D690(v11, v14);
  }

  else
  {
    nullsub_1();
    memcpy(v15, v17, sizeof(v15));
    nullsub_1();
    memcpy(v16, v17, sizeof(v16));
    nullsub_1();

    sub_1C1266420();
    v13 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0FD1A5C(v17, &qword_1EBE91C80, &qword_1C12A75B0);
    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t PhotosCenteredLabelCell.init(_:badgeConfiguration:content:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v15 = *a2;
  v16 = a2[1];
  __src[0] = a5;
  __src[1] = a6;
  __src[2] = a7;
  __src[3] = a8;
  __src[4] = a10;
  v17 = type metadata accessor for PhotosCenteredLabelCell(0, __src);
  v18 = v17[17];
  __src[0] = swift_getKeyPath();
  sub_1C0FFCFE4(__src);
  memcpy((a9 + v18), __src, 0xD1uLL);
  result = (*(*(a5 - 8) + 32))(a9, a1, a5);
  v20 = (a9 + v17[16]);
  *v20 = v15;
  v20[1] = v16;
  v21 = (a9 + v17[15]);
  *v21 = a3;
  v21[1] = a4;
  return result;
}

uint64_t PhotosCenteredLabelCell.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X3>)
{
  v89 = a1;
  v88 = a2;
  v3 = *(a1 + 48);
  v85 = *(a1 + 24);
  v86 = v3;
  type metadata accessor for PhotosDetailsPresentationSourceView(255, v85, v3, a3);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92148, &qword_1C12AD448);
  OUTLINED_FUNCTION_11_0();
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92150, &qword_1C12AD450);
  OUTLINED_FUNCTION_11_0();
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92158, &qword_1C12AD458);
  OUTLINED_FUNCTION_11_0();
  v4 = sub_1C1263190();
  OUTLINED_FUNCTION_4_3();
  v87 = v5;
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_3_1();
  v114 = WitnessTable;
  v115 = sub_1C0FDB6D4(v7, &qword_1EBE92148, &qword_1C12AD448, v8);
  v9 = swift_getWitnessTable();
  OUTLINED_FUNCTION_2_21();
  v112 = v9;
  v113 = sub_1C0FDB6D4(v10, &qword_1EBE92150, &qword_1C12AD450, v11);
  v110 = swift_getWitnessTable();
  v111 = sub_1C0FDB6D4(&qword_1EBE92170, &qword_1EBE92158, &qword_1C12AD458, &qword_1C12AD448);
  v80 = v4;
  v69 = swift_getWitnessTable();
  v12 = sub_1C12655C0();
  OUTLINED_FUNCTION_0();
  v82 = v13;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_34();
  v79 = v15;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EBE92178, &unk_1C12AD460);
  v16 = sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v83 = v17;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_34();
  v78 = v19;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE92EC0, &qword_1C12A8E00);
  OUTLINED_FUNCTION_11_0();
  v70 = v16;
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91C40, &unk_1C12A7010);
  OUTLINED_FUNCTION_11_0();
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE92ED0, &unk_1C12A8E80);
  v20 = sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v81 = v21;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_34();
  v76 = v23;
  v66 = v20;
  v24 = sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v84 = v25;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_34();
  v77 = v27;
  OUTLINED_FUNCTION_13_0();
  v64 = swift_getWitnessTable();
  OUTLINED_FUNCTION_8_3();
  v108 = v64;
  v109 = sub_1C0FDB6D4(v28, qword_1EBE92178, &unk_1C12AD460, v29);
  v68 = swift_getWitnessTable();
  OUTLINED_FUNCTION_0_0();
  v106 = v68;
  v107 = sub_1C0FDB6D4(v30, &unk_1EBE92EC0, &qword_1C12A8E00, v31);
  v32 = swift_getWitnessTable();
  OUTLINED_FUNCTION_10();
  v104 = v32;
  v105 = sub_1C0FDB6D4(v33, &qword_1EBE91C40, &unk_1C12A7010, v34);
  v35 = swift_getWitnessTable();
  OUTLINED_FUNCTION_6_2();
  v102 = v35;
  v103 = sub_1C0FDB6D4(v36, &unk_1EBE92ED0, &unk_1C12A8E80, v37);
  v65 = swift_getWitnessTable();
  v100 = v65;
  v101 = sub_1C100D614();
  v72 = v24;
  v73 = swift_getWitnessTable();
  type metadata accessor for PhotosDetailsPresentationSourceView(0, v24, v73, v38);
  OUTLINED_FUNCTION_0();
  v74 = v39;
  v75 = v40;
  MEMORY[0x1EEE9AC00](v39);
  v67 = &v63 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v71 = &v63 - v43;
  sub_1C1265960();
  v44 = *(v89 + 16);
  v63 = *(v89 + 32);
  *&v45 = v44;
  *(&v45 + 1) = v85;
  v91 = v45;
  v92 = v63;
  v93 = v86;
  v94 = v90;
  v46 = v79;
  sub_1C12655B0();
  *&v117[0] = sub_1C1265170();
  sub_1C100C6E8(v12);
  v47 = v78;
  sub_1C1264960();

  (*(v82 + 8))(v46, v12);
  v49 = v89;
  v48 = v90;
  sub_1C106E228(v89, v117);
  v50 = v76;
  v51 = v70;
  View.cellStyle(for:)(v117, v68, v76);
  memcpy(v116, v117, sizeof(v116));
  sub_1C100C7D0(v116);
  (*(v83 + 8))(v47, v51);
  *(&v117[1] + 1) = v44;
  *&v117[2] = *(&v63 + 1);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v117);
  (*(*(v44 - 8) + 16))(boxed_opaque_existential_1, v48, v44);
  v53 = v77;
  v54 = v66;
  View.selectionStyle(for:)(v117, v66, v65);
  (*(v81 + 8))(v50, v54);
  __swift_destroy_boxed_opaque_existential_0Tm(v117);
  v99 = 2;
  v98 = 2;
  sub_1C106E228(v49, v117);
  v55 = v117[0];
  v90 = v117[1];
  v56 = *&v117[2];

  sub_1C100C7D0(v117);
  v95 = v55;
  v96 = v90;
  v97 = v56;
  v57 = v67;
  v58 = v72;
  View.photosPresentationSource(transitionKind:layoutKind:borders:backgroundColor:detailsPlaceholderColor:)(&v99, 0, 0, v72, v73, v67);

  (*(v84 + 8))(v53, v58);
  v59 = v74;
  swift_getWitnessTable();
  v60 = v71;
  sub_1C0FDBA4C();
  v61 = *(v75 + 8);
  v61(v57, v59);
  sub_1C0FDBA4C();
  return (v61)(v60, v59);
}

uint64_t sub_1C106EDCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v69 = a4;
  v70 = a1;
  v67 = a7;
  v11 = *(a3 - 8);
  v55 = a5;
  v56 = v11;
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for PhotosDetailsPresentationSourceView(0, v14, v16, v15);
  v59 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v52 - v18;
  v53 = &v52 - v18;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92148, &qword_1C12AD448);
  v58 = sub_1C1263190();
  v62 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v71 = &v52 - v20;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92150, &qword_1C12AD450);
  v61 = sub_1C1263190();
  v65 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v57 = &v52 - v21;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92158, &qword_1C12AD458);
  v64 = sub_1C1263190();
  v66 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v60 = &v52 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v63 = &v52 - v24;
  v96 = a2;
  v97 = a3;
  v25 = v69;
  *&v98 = v69;
  *(&v98 + 1) = a5;
  v99 = a6;
  v26 = type metadata accessor for PhotosCenteredLabelCell(0, &v96);
  v27 = v70;
  (*(v70 + *(v26 + 60)))();
  v95 = 2;
  v94 = 2;
  v68 = a6;
  sub_1C106E168(&v96);
  v90 = v96;
  v91 = v97;
  v92 = v98;
  v93 = v99;
  View.photosPresentationSource(transitionKind:layoutKind:borders:backgroundColor:detailsPlaceholderColor:)(&v95, 0, 0, a3, a6, v19);

  v28 = *(v56 + 8);
  v54 = a3;
  v28(v13, a3);
  sub_1C1265160();
  v29 = v25;
  v30 = *(v25 + 56);
  v31 = v27;
  v30(a2, v29);
  v32 = sub_1C12651E0();

  v96 = v32;
  WitnessTable = swift_getWitnessTable();
  sub_1C1170094(v17);
  v34 = v53;
  sub_1C1264F70();

  (v59[1])(v34, v17);
  sub_1C1265960();
  v56 = v35;
  v59 = &v52;
  v78 = a2;
  v79 = a3;
  v36 = v55;
  v80 = v29;
  v81 = v55;
  v82 = v68;
  v83 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92280, &qword_1C12AD558);
  v37 = sub_1C0FDB6D4(&qword_1EBE92160, &qword_1EBE92148, &qword_1C12AD448, MEMORY[0x1E697FDB0]);
  v88 = WitnessTable;
  v89 = v37;
  v38 = v58;
  v39 = swift_getWitnessTable();
  sub_1C10703C8();
  v40 = v57;
  v41 = v71;
  sub_1C1264F60();
  (*(v62 + 8))(v41, v38);
  sub_1C12659A0();
  v71 = &v52;
  v72 = a2;
  v73 = v54;
  v74 = v69;
  v75 = v36;
  v76 = v68;
  v77 = v70;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE922A0, &qword_1C12AD568);
  v42 = MEMORY[0x1E697EC18];
  v43 = sub_1C0FDB6D4(&qword_1EBE92168, &qword_1EBE92150, &qword_1C12AD450, MEMORY[0x1E697EC18]);
  v86 = v39;
  v87 = v43;
  v44 = v61;
  v45 = swift_getWitnessTable();
  sub_1C1070508();
  v46 = v60;
  sub_1C1264F60();
  (*(v65 + 8))(v40, v44);
  v47 = sub_1C0FDB6D4(&qword_1EBE92170, &qword_1EBE92158, &qword_1C12AD458, v42);
  v84 = v45;
  v85 = v47;
  v48 = v64;
  swift_getWitnessTable();
  v49 = v63;
  sub_1C0FDBA4C();
  v50 = *(v66 + 8);
  v50(v46, v48);
  sub_1C0FDBA4C();
  return (v50)(v49, v48);
}

uint64_t sub_1C106F5B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *&v33 = a3;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96550, &qword_1C12AC4C0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v30 - v14;
  v16 = sub_1C1264700();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = (*(a4 + 64))(a2, a4, v18);
  if (result)
  {
    v30 = a5;
    v31 = a6;
    *&v32 = a1;
    if (qword_1EDE833C0 != -1)
    {
      swift_once();
    }

    v34 = xmmword_1C12A7260;
    LODWORD(v35) = 262913;
    v36 = 0;
    LODWORD(v37) = 65280;

    sub_1C12192C4(&v34);

    v22 = sub_1C1265320();
    (*(v17 + 104))(v20, *MEMORY[0x1E6980EF8], v16);
    v23 = sub_1C1264590();
    __swift_storeEnumTagSinglePayload(v15, 1, 1, v23);
    sub_1C1264600();
    v24 = sub_1C1264640();
    sub_1C0FD1A5C(v15, &qword_1EBE96550, &qword_1C12AC4C0);
    (*(v17 + 8))(v20, v16);
    KeyPath = swift_getKeyPath();
    *&v34 = a2;
    *(&v34 + 1) = v33;
    v35 = a4;
    v36 = v30;
    v37 = v31;
    v26 = type metadata accessor for PhotosCenteredLabelCell(0, &v34);
    sub_1C106E228(v26, &v34);
    sub_1C100C7D0(&v34);
    v33 = v39;
    v32 = v38;
    result = sub_1C1264470();
    v27 = v33;
    v28 = v32;
    v40 = 0;
    v29 = result;
  }

  else
  {
    v22 = 0;
    KeyPath = 0;
    v24 = 0;
    v29 = 0;
    v28 = 0uLL;
    v27 = 0uLL;
  }

  *a7 = v22;
  *(a7 + 8) = KeyPath;
  *(a7 + 16) = v24;
  *(a7 + 24) = v29;
  *(a7 + 32) = v28;
  *(a7 + 48) = v27;
  *(a7 + 64) = 0;
  return result;
}

__n128 sub_1C106F920@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE922C0, &qword_1C12AD578);
  sub_1C0FDB6D4(&qword_1EBE922C8, &qword_1EBE922C0, &qword_1C12AD578, MEMORY[0x1E6981F48]);
  *a7 = sub_1C10A7F5C(v14);
  *(a7 + 8) = 0x4028000000000000;
  *(a7 + 16) = 0;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE922D0, &unk_1C12AD580);
  sub_1C106FA80(a1, a2, a3, a4, a5, a6, a7 + *(v15 + 44));
  v21[0] = a2;
  v21[1] = a3;
  v21[2] = a4;
  v21[3] = a5;
  v21[4] = a6;
  v16 = type metadata accessor for PhotosCenteredLabelCell(0, v21);
  sub_1C106E228(v16, v21);
  sub_1C100C7D0(v21);
  v19 = v23;
  v20 = v22;
  LOBYTE(a1) = sub_1C1264470();
  v17 = a7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE922A0, &qword_1C12AD568) + 36);
  *v17 = a1;
  result = v20;
  *(v17 + 24) = v19;
  *(v17 + 8) = v20;
  *(v17 + 40) = 0;
  return result;
}

uint64_t sub_1C106FA80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v40 = a7;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91D20, &qword_1C12BEA30);
  v39 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v38 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE922D8, &qword_1C12AD590);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v38 - v20;
  v44 = a2;
  v45 = a3;
  v46 = a4;
  v47 = a5;
  v48 = a6;
  v22 = type metadata accessor for PhotosCenteredLabelCell(0, &v44);
  v23 = a1 + *(v22 + 64);
  v24 = *v23;
  v25 = 1;
  if (*v23)
  {
    v26 = *(v23 + 8);

    v44 = v24(a1);
    v45 = v27;
    LOBYTE(v46) = 1;
    v42 = 262146;
    v43 = 17367552;
    if (qword_1EDE7AF08 != -1)
    {
      swift_once();
    }

    v41 = word_1EDE7AF16;
    PhotosPrefetchableImage(_:font:symbolVariant:)();
    sub_1C0FCF004(v24, v26);
    sub_1C100DC0C(v44, v45);
    (*(v39 + 32))(v21, v15, v13);
    v25 = 0;
  }

  __swift_storeEnumTagSinglePayload(v21, v25, 1, v13);
  sub_1C106FD9C(&v44, v22);
  v28 = v44;
  v29 = v45;
  v30 = v46;
  v31 = v47;
  v32 = v48;
  v33 = v49;
  v34 = v50;
  sub_1C0FB15D8(v21, v18);
  v35 = v40;
  sub_1C0FB15D8(v18, v40);
  v36 = v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE922E0, &qword_1C12AD598) + 48);
  *v36 = v28;
  *(v36 + 8) = v29;
  *(v36 + 16) = v30;
  *(v36 + 24) = v31;
  *(v36 + 32) = v32;
  *(v36 + 40) = v33;
  *(v36 + 44) = v34;
  sub_1C0FDB850(v28, v29, v30);

  sub_1C0FB1640(v21);
  sub_1C0FDB8E8(v28, v29, v30);

  return sub_1C0FB1640(v18);
}

uint64_t sub_1C106FD9C@<X0>(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  sub_1C106FE70(a2);
  PhotosPrefetchable.Font.font.getter();
  v3 = sub_1C1264870();
  v5 = v4;
  v7 = v6;
  v9 = v8;

  KeyPath = swift_getKeyPath();
  result = sub_1C1263E40();
  *a1 = v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v7 & 1;
  *(a1 + 24) = v9;
  *(a1 + 32) = KeyPath;
  *(a1 + 40) = 0;
  *(a1 + 44) = result;
  return result;
}

uint64_t sub_1C106FE70(uint64_t a1)
{
  result = (*(*(*(a1 + 32) + 8) + 40))(*(a1 + 16));
  if (!v2)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1C106FEB8(uint64_t a1)
{
  v2 = swift_checkMetadataState();
  v3 = v2;
  if (v4 <= 0x3F)
  {
    v15 = 0;
    v19 = v2;
    v5 = sub_1C1007F88();
    if (v6 > 0x3F)
    {
      return v5;
    }

    else
    {
      v16 = 0;
      v20 = v5;
      v12 = v3;
      v13 = *(a1 + 24);
      v14 = *(a1 + 40);
      type metadata accessor for PhotosCenteredLabelCell.BadgeConfiguration(255, &v12);
      v7 = sub_1C1266790();
      v3 = v7;
      if (v8 <= 0x3F)
      {
        v17 = 0;
        v21 = v7;
        sub_1C107032C();
        v3 = v9;
        if (v10 <= 0x3F)
        {
          v18 = 0;
          v22 = v9;
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v3;
}

uint64_t sub_1C106FFB0(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return __swift_getEnumTagSinglePayload(result, v5, v4);
    }
  }

  else
  {
    v8 = ((((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 209;
    v9 = (a2 - v7 + 255) >> 8;
    if (v8 <= 3)
    {
      v10 = v9 + 1;
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

    switch(v12)
    {
      case 1:
        v13 = *(result + v8);
        if (!*(result + v8))
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v13 = *(result + v8);
        if (!*(result + v8))
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v13 = *(result + v8);
        if (!v13)
        {
          goto LABEL_26;
        }

LABEL_22:
        v14 = (v13 - 1) << (8 * (((((((v6 + 7) & 0xF8) + 23) & 0xF8) + 23) & 0xF8) - 47));
        if (v8 <= 3)
        {
          v15 = *result;
        }

        else
        {
          v14 = 0;
          v15 = *result;
        }

        result = v7 + (v15 | v14) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1C1070114(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 209;
  if (v8 >= a3)
  {
    v14 = 0;
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }
  }

  if (v8 >= a2)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_30;
      default:
LABEL_30:
        if (a2)
        {
LABEL_31:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v18 = a2 & 0x7FFFFFFF;
              v17[1] = 0;
            }

            else
            {
              v18 = (a2 - 1);
            }

            *v17 = v18;
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    v15 = ~v8 + a2;
    bzero(a1, ((((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 209);
    if (v10 <= 3)
    {
      v16 = (v15 >> 8) + 1;
    }

    else
    {
      v16 = 1;
    }

    if (v10 > 3)
    {
      *a1 = v15;
    }

    else
    {
      *a1 = v15;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v16;
        break;
      case 2:
        *&a1[v10] = v16;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v10] = v16;
        break;
      default:
        return;
    }
  }
}

void sub_1C107032C()
{
  if (!qword_1EDE77600)
  {
    v0 = sub_1C1262A70();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDE77600);
    }
  }
}

uint64_t sub_1C107037C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_1C10703C8()
{
  result = qword_1EBE92288;
  if (!qword_1EBE92288)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92280, &qword_1C12AD558);
    sub_1C107044C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE92288);
  }

  return result;
}

unint64_t sub_1C107044C()
{
  result = qword_1EBE92290;
  if (!qword_1EBE92290)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE92298, &qword_1C12AD560);
    sub_1C1062140();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE92290);
  }

  return result;
}

unint64_t sub_1C1070508()
{
  result = qword_1EBE922A8;
  if (!qword_1EBE922A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE922A0, &qword_1C12AD568);
    sub_1C0FDB6D4(&qword_1EBE922B0, &qword_1EBE922B8, &qword_1C12AD570, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE922A8);
  }

  return result;
}

double PhotosThumbnailPlaceholderView.init()@<D0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930, &qword_1C12A3650);

  swift_storeEnumTagMultiPayload();
  return result;
}

uint64_t sub_1C1070620@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1C12637E0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930, &qword_1C12A3650);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  sub_1C101268C(v2, &v14 - v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1C12629F0();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_1C1266420();
    v13 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t PhotosThumbnailPlaceholderView.body.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1C12629F0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C1070620(v5);
  v6 = ColorScheme.px_thumbnailPlaceholderColor.getter();
  result = (*(v3 + 8))(v5, v2);
  *a1 = v6;
  return result;
}

uint64_t type metadata accessor for PhotosThumbnailPlaceholderView(uint64_t a1)
{
  result = qword_1EDE804B8;
  if (!qword_1EDE804B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PhotosObservablePerson.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  PhotosObservablePerson.init(_:)(a1);
  return v2;
}

uint64_t *PhotosObservablePerson.init(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  OUTLINED_FUNCTION_20_12();
  v5 = *(v4 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v39 - v10;
  OUTLINED_FUNCTION_1();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v39 - v15;
  OUTLINED_FUNCTION_20_12();
  v18 = (v2 + *(v17 + 136));
  *v18 = 0;
  v18[1] = 0;
  OUTLINED_FUNCTION_10_15();
  sub_1C1261F60();
  (*(v13 + 16))(v16, a1, v5);
  sub_1C10342F0(v16, *v2, v2 + *(*v2 + 112));
  sub_1C12622A0();
  OUTLINED_FUNCTION_10_15();
  (*(v8 + 32))(v2 + *(v19 + 120), v11, AssociatedTypeWitness);
  OUTLINED_FUNCTION_20_12();
  (*(*(v20 + 96) + 16))(v5);
  OUTLINED_FUNCTION_10_15();
  v22 = (v2 + *(v21 + 128));
  *v22 = v23;
  v22[1] = v24;
  OUTLINED_FUNCTION_20_12();
  v26 = *(v25 + 88);
  v27 = *(v26 + 16);
  v28 = (*(v27 + 24))(v5, v27);
  v30 = v29;
  OUTLINED_FUNCTION_10_15();
  v32 = (v2 + *(v31 + 136));

  *v32 = v28;
  v32[1] = v30;
  (*(v27 + 40))(v5, v27);
  OUTLINED_FUNCTION_10_15();
  *(v2 + *(v33 + 144)) = v34 & 1;
  (*(*(*(v26 + 8) + 8) + 8))(v5);
  OUTLINED_FUNCTION_10_15();
  *(v2 + *(v35 + 152)) = v36 & 1;
  LOBYTE(v27) = (*(v27 + 32))(v5, v27);
  (*(v13 + 8))(a1, v5);
  OUTLINED_FUNCTION_10_15();
  *(v2 + *(v37 + 160)) = v27 & 1;
  return v2;
}

uint64_t PhotosObservablePerson.item.setter(uint64_t a1)
{
  v3 = *v1;
  v4 = *v1;
  v5 = *(*v1 + 80);
  v6 = *(v5 - 8);
  swift_beginAccess();
  v12 = v5;
  v13 = *(v4 + 88);
  v14 = *(v3 + 104);
  KeyPath = swift_getKeyPath();
  v10 = v1;
  v11 = a1;
  sub_1C1072138(KeyPath, sub_1C107211C, &v9, MEMORY[0x1E69E7CA8] + 8);

  return (*(v6 + 8))(a1, v5);
}

double sub_1C1070E98(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_15();
  v6 = v5;
  OUTLINED_FUNCTION_18_10();
  OUTLINED_FUNCTION_21_3();
  v7 = sub_1C0FA8038(v16, v15, MEMORY[0x1E69E6158], MEMORY[0x1E69E6180]);

  if (v7)
  {
    MEMORY[0x1EEE9AC00](v8);
    OUTLINED_FUNCTION_4_22();
    v9 = *(v6 + 96);
    *(v10 - 32) = *(v6 + 80);
    *(v10 - 16) = v9;
    swift_getKeyPath();
    OUTLINED_FUNCTION_19_8();
    MEMORY[0x1EEE9AC00](v11);
    OUTLINED_FUNCTION_2_6();
    OUTLINED_FUNCTION_9_15(v12, v13, MEMORY[0x1E69E7CA8]);
  }

  else
  {
    *v2 = a1;
    v2[1] = a2;
  }

  return result;
}

double sub_1C1070FD0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_15();
  v6 = v5;
  OUTLINED_FUNCTION_18_10();
  OUTLINED_FUNCTION_21_3();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91A60, &qword_1C12AB090);
  v8 = sub_1C1073248();
  LOBYTE(v7) = sub_1C0FA8038(v17, v16, v7, v8);

  if (v7)
  {
    MEMORY[0x1EEE9AC00](v9);
    OUTLINED_FUNCTION_4_22();
    v10 = *(v6 + 96);
    *(v11 - 32) = *(v6 + 80);
    *(v11 - 16) = v10;
    swift_getKeyPath();
    OUTLINED_FUNCTION_19_8();
    MEMORY[0x1EEE9AC00](v12);
    OUTLINED_FUNCTION_2_6();
    OUTLINED_FUNCTION_9_15(v13, v14, MEMORY[0x1E69E7CA8]);
  }

  else
  {
    *v2 = a1;
    v2[1] = a2;
  }

  return result;
}

void sub_1C107111C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 144);
  OUTLINED_FUNCTION_8_17(a1);
  v5 = sub_1C0FA8038(&v12, &v11, MEMORY[0x1E69E6370], MEMORY[0x1E69E6388]);
  if (v5)
  {
    MEMORY[0x1EEE9AC00](v5);
    OUTLINED_FUNCTION_4_22();
    v6 = *(v3 + 96);
    *(v7 - 32) = *(v3 + 80);
    *(v7 - 16) = v6;
    swift_getKeyPath();
    OUTLINED_FUNCTION_7_1();
    MEMORY[0x1EEE9AC00](v8);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_9_15(v9, v10, MEMORY[0x1E69E7CA8]);
  }

  else
  {
    *(v1 + v4) = v2;
  }
}

void sub_1C1071224(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 152);
  OUTLINED_FUNCTION_8_17(a1);
  v5 = sub_1C0FA8038(&v12, &v11, MEMORY[0x1E69E6370], MEMORY[0x1E69E6388]);
  if (v5)
  {
    MEMORY[0x1EEE9AC00](v5);
    OUTLINED_FUNCTION_4_22();
    v6 = *(v3 + 96);
    *(v7 - 32) = *(v3 + 80);
    *(v7 - 16) = v6;
    swift_getKeyPath();
    OUTLINED_FUNCTION_7_1();
    MEMORY[0x1EEE9AC00](v8);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_9_15(v9, v10, MEMORY[0x1E69E7CA8]);
  }

  else
  {
    *(v1 + v4) = v2;
  }
}

void sub_1C107132C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 160);
  OUTLINED_FUNCTION_8_17(a1);
  v5 = sub_1C0FA8038(&v12, &v11, MEMORY[0x1E69E6370], MEMORY[0x1E69E6388]);
  if (v5)
  {
    MEMORY[0x1EEE9AC00](v5);
    OUTLINED_FUNCTION_4_22();
    v6 = *(v3 + 96);
    *(v7 - 32) = *(v3 + 80);
    *(v7 - 16) = v6;
    swift_getKeyPath();
    OUTLINED_FUNCTION_7_1();
    MEMORY[0x1EEE9AC00](v8);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_9_15(v9, v10, MEMORY[0x1E69E7CA8]);
  }

  else
  {
    *(v1 + v4) = v2;
  }
}

double sub_1C1071434(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  *&v73 = *v1 + 104;
  v4 = v3[10];
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v70 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v68 = &v65 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v65 = &v65 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v65 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v65 - v15;
  PhotosObservablePerson.item.getter(&v65 - v15);
  v17 = v3[12];
  v18 = (*(v17 + 16))(v4, v17);
  v20 = v19;
  v21 = *(v5 + 8);
  v71 = v5 + 8;
  v69 = v21;
  v21(v16, v4);
  v22 = v3[11];
  *&v23 = v4;
  *(&v23 + 1) = v22;
  *&v24 = v17;
  v25 = v18;
  *(&v24 + 1) = *v73;
  v73 = v24;
  v74 = v23;
  v77 = v23;
  v78 = v24;
  KeyPath = swift_getKeyPath();
  sub_1C1071FC8(KeyPath);

  v79 = v2;
  v75 = v74;
  v76 = v73;
  swift_getKeyPath();
  WitnessTable = swift_getWitnessTable();
  sub_1C1261F50();

  v27 = (v2 + *(*v2 + 128));
  swift_beginAccess();
  v28 = *v27 == v25 && v27[1] == v20;
  if (v28 || (sub_1C1266D50() & 1) != 0)
  {
  }

  else
  {

    *v27 = v25;
    v27[1] = v20;
  }

  swift_endAccess();
  sub_1C1072A10(v2, &unk_1C12AD740);
  PhotosObservablePerson.item.getter(v13);
  v67 = v22;
  v29 = *(v22 + 16);
  v66 = (*(v29 + 24))(v4, v29);
  v31 = v30;
  v32 = v69;
  v33 = v69(v13, v4);
  MEMORY[0x1EEE9AC00](v33);
  v34 = v73;
  *(&v65 - 2) = v74;
  *(&v65 - 1) = v34;
  v35 = swift_getKeyPath();
  sub_1C1071FC8(v35);

  v79 = v2;
  MEMORY[0x1EEE9AC00](v36);
  v37 = v73;
  *(&v65 - 2) = v74;
  *(&v65 - 1) = v37;
  swift_getKeyPath();
  sub_1C1261F50();

  swift_beginAccess();
  sub_1C11D6178(v66, v31);
  swift_endAccess();
  v38 = v32;

  sub_1C1072A10(v2, &unk_1C12AD708);
  v39 = v65;
  PhotosObservablePerson.item.getter(v65);
  v40 = *(v29 + 40);
  v66 = v29;
  v41 = v40(v4, v29) & 1;
  v42 = v38(v39, v4);
  MEMORY[0x1EEE9AC00](v42);
  v43 = v73;
  *(&v65 - 2) = v74;
  *(&v65 - 1) = v43;
  v44 = swift_getKeyPath();
  sub_1C1071FC8(v44);

  v79 = v2;
  MEMORY[0x1EEE9AC00](v45);
  v46 = v73;
  *(&v65 - 2) = v74;
  *(&v65 - 1) = v46;
  swift_getKeyPath();
  sub_1C1261F50();

  v47 = *(*v2 + 144);
  if (v41 != *(v2 + v47))
  {
    *(v2 + v47) = v41;
  }

  sub_1C1072A10(v2, &unk_1C12AD778);
  v48 = v68;
  PhotosObservablePerson.item.getter(v68);
  v49 = (*(*(*(v67 + 8) + 8) + 8))(v4) & 1;
  v50 = v38(v48, v4);
  MEMORY[0x1EEE9AC00](v50);
  v51 = v73;
  *(&v65 - 2) = v74;
  *(&v65 - 1) = v51;
  v52 = swift_getKeyPath();
  sub_1C1071FC8(v52);

  v79 = v2;
  MEMORY[0x1EEE9AC00](v53);
  v54 = v73;
  *(&v65 - 2) = v74;
  *(&v65 - 1) = v54;
  swift_getKeyPath();
  sub_1C1261F50();

  v55 = *(*v2 + 152);
  if (v49 != *(v2 + v55))
  {
    *(v2 + v55) = v49;
  }

  sub_1C1072A10(v2, &unk_1C12AD7B0);
  v56 = v70;
  PhotosObservablePerson.item.getter(v70);
  v57 = (*(v66 + 32))(v4) & 1;
  v58 = v38(v56, v4);
  MEMORY[0x1EEE9AC00](v58);
  v59 = v73;
  *(&v65 - 2) = v74;
  *(&v65 - 1) = v59;
  v60 = swift_getKeyPath();
  sub_1C1071FC8(v60);

  v79 = v2;
  MEMORY[0x1EEE9AC00](v61);
  v62 = v73;
  *(&v65 - 2) = v74;
  *(&v65 - 1) = v62;
  swift_getKeyPath();
  sub_1C1261F50();

  v63 = *(*v2 + 160);
  if (v57 != *(v2 + v63))
  {
    *(v2 + v63) = v57;
  }

  return sub_1C1072A10(v2, &unk_1C12AD7E8);
}

uint64_t PhotosObservablePerson.item.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_16_4();
  v8 = *(v3 + 80);
  KeyPath = swift_getKeyPath();
  sub_1C1071FC8(KeyPath);

  OUTLINED_FUNCTION_10_2();
  v6 = *(v5 + 112);
  swift_beginAccess();
  return (*(*(v8 - 8) + 16))(a1, v1 + v6);
}

uint64_t sub_1C1071D58(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 112);
  swift_beginAccess();
  v5 = *(v3 + 80);
  v6 = *(v5 - 8);
  (*(v6 + 24))(v1 + v4, a1, v5);
  v7 = swift_endAccess();
  v8 = sub_1C1071434(v7);
  return (*(v6 + 8))(a1, v5, v8);
}

double (*sub_1C1071E40(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1C1071EB0;
}

double sub_1C1071EB0(uint64_t a1, char a2)
{
  v3 = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1C1071434(v3);
  }

  return result;
}

uint64_t sub_1C1071F08(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = &v6 - v2;
  (*(v4 + 16))(&v6 - v2, v1);
  return PhotosObservablePerson.item.setter(v3);
}

uint64_t sub_1C1071FC8(uint64_t a1)
{
  OUTLINED_FUNCTION_2_15();
  OUTLINED_FUNCTION_0_26();
  swift_getWitnessTable();
  return sub_1C1261F30();
}

uint64_t sub_1C1072050(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v6 - v2;
  (*(v4 + 16))(v6 - v2, v1);
  return sub_1C1071D58(v3);
}

uint64_t sub_1C1072138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_2_15();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0_26();
  swift_getWitnessTable();
  return sub_1C1261F20();
}

uint64_t (*PhotosObservablePerson.item.modify(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[4] = v1;
  OUTLINED_FUNCTION_2_15();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_5();
  KeyPath = swift_getKeyPath();
  sub_1C1071FC8(KeyPath);

  OUTLINED_FUNCTION_10_2();
  *v3 = v1;
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_26();
  swift_getWitnessTable();
  sub_1C1261F50();

  v3[5] = sub_1C1071E40(v3);
  return sub_1C1072378;
}

void sub_1C1072378(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 32);
  (*(*a1 + 40))(*a1, 0);
  sub_1C1072A10(v2, &unk_1C12AD6D0);

  free(v1);
}

uint64_t PhotosObservablePerson.id.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_2_15();
  v4 = *(v3 + 120);
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_3();
  v7 = *(v6 + 16);

  return v7(a1, v1 + v4, v5);
}

uint64_t PhotosObservablePerson.name.getter()
{
  OUTLINED_FUNCTION_16_4();
  v9 = *(v0 + 80);
  v10 = *(v0 + 96);
  KeyPath = swift_getKeyPath();
  sub_1C1071FC8(KeyPath);

  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_17_12(v2, v3, v4, v5, v6, v9, v10);
  v7 = *KeyPath;

  return v7;
}

uint64_t PhotosObservablePerson.selectionIdentifier.getter()
{
  OUTLINED_FUNCTION_16_4();
  v9 = *(v0 + 80);
  v10 = *(v0 + 96);
  KeyPath = swift_getKeyPath();
  sub_1C1071FC8(KeyPath);

  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_17_12(v2, v3, v4, v5, v6, v9, v10);
  v7 = *KeyPath;

  return v7;
}

uint64_t sub_1C10725B0@<X0>(uint64_t *a1@<X8>)
{
  result = PhotosObservablePerson.selectionIdentifier.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

double sub_1C10725DC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_1C1070E98(v1, v2);
}

void sub_1C107261C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (a1 + *(*a1 + 128));
  swift_beginAccess();
  *v5 = a2;
  v5[1] = a3;
}

uint64_t sub_1C107269C@<X0>(uint64_t *a1@<X8>)
{
  result = PhotosObservablePerson.name.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

double sub_1C10726C8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_1C1070FD0(v1, v2);
}

void sub_1C1072708(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (a1 + *(*a1 + 136));
  swift_beginAccess();
  *v5 = a2;
  v5[1] = a3;
}

uint64_t PhotosObservablePerson.isPet.getter()
{
  OUTLINED_FUNCTION_16_4();
  KeyPath = swift_getKeyPath();
  sub_1C1071FC8(KeyPath);

  OUTLINED_FUNCTION_10_2();
  return *(v0 + *(v2 + 144));
}

uint64_t sub_1C1072808@<X0>(_BYTE *a1@<X8>)
{
  result = PhotosObservablePerson.isPet.getter();
  *a1 = result & 1;
  return result;
}

uint64_t PhotosObservablePerson.isFavorite.getter()
{
  OUTLINED_FUNCTION_16_4();
  KeyPath = swift_getKeyPath();
  sub_1C1071FC8(KeyPath);

  OUTLINED_FUNCTION_10_2();
  return *(v0 + *(v2 + 152));
}

uint64_t sub_1C10728E0@<X0>(_BYTE *a1@<X8>)
{
  result = PhotosObservablePerson.isFavorite.getter();
  *a1 = result & 1;
  return result;
}

uint64_t PhotosObservablePerson.canFavorite.getter()
{
  OUTLINED_FUNCTION_16_4();
  KeyPath = swift_getKeyPath();
  sub_1C1071FC8(KeyPath);

  OUTLINED_FUNCTION_10_2();
  return *(v0 + *(v2 + 160));
}

uint64_t sub_1C10729B8@<X0>(_BYTE *a1@<X8>)
{
  result = PhotosObservablePerson.canFavorite.getter();
  *a1 = result & 1;
  return result;
}

double sub_1C1072A10(void *a1, uint64_t a2)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_26();
  swift_getWitnessTable();
  sub_1C1261F40();

  return result;
}

Swift::Void __swiftcall PhotosObservablePerson.setIsFavorite(_:undoManager:)(Swift::Bool _, NSUndoManager_optional undoManager)
{
  isa = undoManager.value.super.isa;
  v4 = _;
  v5 = *v2;
  v6 = *(*v2 + 80);
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v12 - v10;
  PhotosObservablePerson.item.getter(&v12 - v10);
  (*(*(*(v5 + 88) + 8) + 16))(v4, isa, v6);
  (*(v8 + 8))(v11, v6);
}

uint64_t *PhotosObservablePerson.deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 112), *(*v0 + 80));
  OUTLINED_FUNCTION_10_2();
  v2 = *(v1 + 120);
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_3();
  (*(v3 + 8))(v0 + v2);
  OUTLINED_FUNCTION_10_2();

  OUTLINED_FUNCTION_10_2();

  OUTLINED_FUNCTION_10_2();
  v5 = *(v4 + 168);
  sub_1C1261F70();
  OUTLINED_FUNCTION_3();
  (*(v6 + 8))(v0 + v5);
  return v0;
}

uint64_t PhotosObservablePerson.__deallocating_deinit()
{
  PhotosObservablePerson.deinit();
  OUTLINED_FUNCTION_16_4();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v2, v3);
}

uint64_t sub_1C1072D94(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

void (*sub_1C1072DDC(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = PhotosObservablePerson.item.modify(v2);
  return sub_1C10115B8;
}

uint64_t sub_1C1072E38(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C1072EBC(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C1072F6C(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C1073010(uint64_t a1)
{
  AssociatedTypeWitness = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    if (v3 <= 0x3F)
    {
      AssociatedTypeWitness = sub_1C1261F70();
      if (v4 <= 0x3F)
      {
        return swift_initClassMetadata2();
      }
    }
  }

  return AssociatedTypeWitness;
}

unint64_t sub_1C1073248()
{
  result = qword_1EDE7B740;
  if (!qword_1EDE7B740)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91A60, &qword_1C12AB090);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7B740);
  }

  return result;
}

uint64_t PhotosMockAlbum.__allocating_init(identifier:title:count:isFavorite:isFolder:countOfSubFolders:isUserSmartAlbum:isPrivacySensitive:isContentPrivacyEnabled:keyAssets:collectionSymbolName:)(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7, char a8, uint64_t a9, int a10, unint64_t a11, uint64_t a12, uint64_t a13)
{
  v16 = swift_allocObject();
  PhotosMockAlbum.init(identifier:title:count:isFavorite:isFolder:countOfSubFolders:isUserSmartAlbum:isPrivacySensitive:isContentPrivacyEnabled:keyAssets:collectionSymbolName:)(a1, a2, a3, a4, a5, a6 & 1, a7, a8, a9, a10 & 1, SBYTE1(a10), SBYTE2(a10), SHIBYTE(a10), a11, a12, a13);
  return v16;
}

uint64_t PhotosMockAlbum.init(identifier:title:count:isFavorite:isFolder:countOfSubFolders:isUserSmartAlbum:isPrivacySensitive:isContentPrivacyEnabled:keyAssets:collectionSymbolName:)(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7, char a8, uint64_t a9, char a10, char a11, char a12, char a13, unint64_t a14, uint64_t a15, uint64_t a16)
{
  v17 = v16;
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  *(v16 + 56) = 0;
  *(v16 + 64) = 0;
  *(v16 + 48) = 0;
  *(v16 + 72) = 1;
  *(v16 + 80) = 0;
  *(v16 + 88) = 1;
  *(v16 + 96) = 0;
  *(v16 + 104) = 1;
  *(v16 + 128) = 0;
  *(v16 + 136) = 0;
  sub_1C1261F60();

  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  v23 = 0x80000001C126AE30;
  v24 = 0xD000000000000013;
  if (a2)
  {
    v24 = a1;
    v23 = a2;
  }

  *(v16 + 32) = v24;
  *(v16 + 40) = v23;

  *(v16 + 48) = a3;
  *(v16 + 56) = a4;
  *(v16 + 64) = a5;
  *(v16 + 72) = a6 & 1;
  *(v16 + 80) = a5;
  *(v16 + 88) = a6 & 1;
  if (a10)
  {
    v25 = a5;
  }

  else
  {
    v25 = a9;
  }

  *(v16 + 96) = v25;
  *(v16 + 104) = a6 & 1 & a10;
  *(v16 + 105) = a7;
  *(v16 + 106) = a8;
  *(v16 + 107) = a11;
  *(v16 + 108) = a12;
  *(v16 + 109) = a13;
  *(v16 + 112) = a14;
  if (a14 >> 62)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92300, &unk_1C12A3A90);
    sub_1C1266B80();
  }

  else
  {
    swift_bridgeObjectRetain_n();
    sub_1C1266D60();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92300, &unk_1C12A3A90);
  v26 = sub_1C12660A0();

  v27 = PXDisplayAssetFetchResultFromArray();

  *(v17 + 120) = v27;
  sub_1C1073E9C();
  return v17;
}

double sub_1C10735EC()
{
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_9_5(v1 + 16);
  OUTLINED_FUNCTION_15_3();
  if (sub_1C0FDFDE0(v3, v4, v5, v6))
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_20_7();
    MEMORY[0x1EEE9AC00](v7);
    OUTLINED_FUNCTION_5_6();
    *(v8 - 16) = v0;
    OUTLINED_FUNCTION_19_9(v9, v10, v11);
  }

  else
  {
    *(v1 + 16) = v2;
    *(v1 + 24) = v0;
  }

  return result;
}

double sub_1C10736A0()
{
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_9_5(v1 + 32);
  v3 = *(v1 + 32) == v2 && *(v1 + 40) == v0;
  if (v3 || (OUTLINED_FUNCTION_15_3(), (sub_1C1266D50() & 1) != 0))
  {
    *(v1 + 32) = v2;
    *(v1 + 40) = v0;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_20_7();
    MEMORY[0x1EEE9AC00](v5);
    OUTLINED_FUNCTION_5_6();
    *(v6 - 16) = v0;
    OUTLINED_FUNCTION_19_9(v7, v8, v9);
  }

  return result;
}

double sub_1C1073764()
{
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_9_5(v1 + 48);
  OUTLINED_FUNCTION_15_3();
  if (sub_1C0FDFDE0(v3, v4, v5, v6))
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_20_7();
    MEMORY[0x1EEE9AC00](v7);
    OUTLINED_FUNCTION_5_6();
    *(v8 - 16) = v0;
    OUTLINED_FUNCTION_19_9(v9, v10, v11);
  }

  else
  {
    *(v1 + 48) = v2;
    *(v1 + 56) = v0;
  }

  return result;
}

double sub_1C1073818(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_9_5(v2 + 64);
  if ((*(v2 + 72) & 1) == 0)
  {
    if ((a2 & 1) != 0 || *(v2 + 64) != a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    *(v2 + 64) = a1;
    *(v2 + 72) = a2 & 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_6;
  }

LABEL_7:
  swift_getKeyPath();
  OUTLINED_FUNCTION_20_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5_6();
  *(v7 - 16) = a2 & 1;
  OUTLINED_FUNCTION_19_9(v8, v9, v10);

  return result;
}

double sub_1C10738DC(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_9_5(v2 + 80);
  if ((*(v2 + 88) & 1) == 0)
  {
    if ((a2 & 1) != 0 || *(v2 + 80) != a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    *(v2 + 80) = a1;
    *(v2 + 88) = a2 & 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_6;
  }

LABEL_7:
  swift_getKeyPath();
  OUTLINED_FUNCTION_20_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5_6();
  *(v7 - 16) = a2 & 1;
  OUTLINED_FUNCTION_19_9(v8, v9, v10);

  return result;
}

double sub_1C10739A0(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_9_5(v2 + 96);
  if ((*(v2 + 104) & 1) == 0)
  {
    if ((a2 & 1) != 0 || *(v2 + 96) != a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    *(v2 + 96) = a1;
    *(v2 + 104) = a2 & 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_6;
  }

LABEL_7:
  swift_getKeyPath();
  OUTLINED_FUNCTION_20_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5_6();
  *(v7 - 16) = a2 & 1;
  OUTLINED_FUNCTION_19_9(v8, v9, v10);

  return result;
}

void sub_1C1073A64(char a1)
{
  v2 = a1 & 1;
  OUTLINED_FUNCTION_17_13(v1 + 105);
  if (*(v1 + 105) == v2)
  {
    *(v1 + 105) = v2;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_2_5();
    MEMORY[0x1EEE9AC00](v3);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_19_9(v4, v5, v6);
  }
}

void sub_1C1073AF4(char a1)
{
  v2 = a1 & 1;
  OUTLINED_FUNCTION_17_13(v1 + 106);
  if (*(v1 + 106) == v2)
  {
    *(v1 + 106) = v2;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_2_5();
    MEMORY[0x1EEE9AC00](v3);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_19_9(v4, v5, v6);
  }
}

void sub_1C1073B84(char a1)
{
  v2 = a1 & 1;
  OUTLINED_FUNCTION_17_13(v1 + 107);
  if (*(v1 + 107) == v2)
  {
    *(v1 + 107) = v2;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_2_5();
    MEMORY[0x1EEE9AC00](v3);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_19_9(v4, v5, v6);
  }
}

void sub_1C1073C14(char a1)
{
  v2 = a1 & 1;
  OUTLINED_FUNCTION_17_13(v1 + 108);
  if (*(v1 + 108) == v2)
  {
    *(v1 + 108) = v2;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_2_5();
    MEMORY[0x1EEE9AC00](v3);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_19_9(v4, v5, v6);
  }
}

void sub_1C1073CA4(char a1)
{
  v2 = a1 & 1;
  OUTLINED_FUNCTION_17_13(v1 + 109);
  if (*(v1 + 109) == v2)
  {
    *(v1 + 109) = v2;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_2_5();
    MEMORY[0x1EEE9AC00](v3);
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_19_9(v4, v5, v6);
  }
}

double sub_1C1073D34(unint64_t a1)
{
  OUTLINED_FUNCTION_9_5(v1 + 112);

  v4 = sub_1C0FEAAF0(v3, a1);

  if (v4)
  {
    *(v1 + 112) = a1;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_20_7();
    MEMORY[0x1EEE9AC00](v6);
    OUTLINED_FUNCTION_27_5();
    OUTLINED_FUNCTION_19_9(v7, v8, v9);
  }

  return result;
}

uint64_t sub_1C1073DF8(uint64_t a1)
{
  OUTLINED_FUNCTION_9_5(v1 + 120);
  if (*(v1 + 120) != a1)
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_20_7();
    MEMORY[0x1EEE9AC00](v3);
    OUTLINED_FUNCTION_27_5();
    OUTLINED_FUNCTION_19_9(v4, v5, v6);
  }

  return swift_unknownObjectRelease();
}

double sub_1C1073E9C()
{
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_9_5(v1 + 128);
  OUTLINED_FUNCTION_15_3();
  if (sub_1C0FDFDE0(v3, v4, v5, v6))
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_20_7();
    MEMORY[0x1EEE9AC00](v7);
    OUTLINED_FUNCTION_5_6();
    *(v8 - 16) = v0;
    OUTLINED_FUNCTION_19_9(v9, v10, v11);
  }

  else
  {
    *(v1 + 128) = v2;
    *(v1 + 136) = v0;
  }

  return result;
}

uint64_t sub_1C1073F94@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C1073FD8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C1073FD8()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_27();
  v3 = sub_1C1076D44(v1, v2, &protocol conformance descriptor for PhotosMockAlbum);
  OUTLINED_FUNCTION_6(v3, v4);

  OUTLINED_FUNCTION_7_4(v0 + 16, v5);

  return OUTLINED_FUNCTION_5_5();
}

void sub_1C107406C()
{
  OUTLINED_FUNCTION_19_4();
  v1 = OUTLINED_FUNCTION_4_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_4(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_0_27();
  v5 = sub_1C1076D44(v3, v4, &protocol conformance descriptor for PhotosMockAlbum);
  OUTLINED_FUNCTION_1_6(v5);

  v6 = OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_2_3(v6);

  OUTLINED_FUNCTION_12_1();
  *(v0 + 56) = sub_1C1073F50();
  OUTLINED_FUNCTION_18_4();
}

uint64_t sub_1C1074138@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C10741A4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C10741A4()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_27();
  v3 = sub_1C1076D44(v1, v2, &protocol conformance descriptor for PhotosMockAlbum);
  OUTLINED_FUNCTION_6(v3, v4);

  OUTLINED_FUNCTION_7_4(v0 + 32, v5);

  return OUTLINED_FUNCTION_5_5();
}

void sub_1C1074238()
{
  OUTLINED_FUNCTION_19_4();
  v1 = OUTLINED_FUNCTION_4_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_4(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_0_27();
  v5 = sub_1C1076D44(v3, v4, &protocol conformance descriptor for PhotosMockAlbum);
  OUTLINED_FUNCTION_1_6(v5);

  v6 = OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_2_3(v6);

  OUTLINED_FUNCTION_12_1();
  *(v0 + 56) = sub_1C0FDF120();
  OUTLINED_FUNCTION_18_4();
}

uint64_t sub_1C1074304@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C1074348();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C1074348()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_27();
  v3 = sub_1C1076D44(v1, v2, &protocol conformance descriptor for PhotosMockAlbum);
  OUTLINED_FUNCTION_6(v3, v4);

  OUTLINED_FUNCTION_7_4(v0 + 48, v5);

  return OUTLINED_FUNCTION_5_5();
}

void sub_1C10743DC()
{
  OUTLINED_FUNCTION_19_4();
  v1 = OUTLINED_FUNCTION_4_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_4(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_0_27();
  v5 = sub_1C1076D44(v3, v4, &protocol conformance descriptor for PhotosMockAlbum);
  OUTLINED_FUNCTION_1_6(v5);

  v6 = OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_2_3(v6);

  OUTLINED_FUNCTION_12_1();
  *(v0 + 56) = sub_1C0FDF350();
  OUTLINED_FUNCTION_18_4();
}

uint64_t sub_1C10744A8@<X0>(uint64_t a1@<X8>)
{
  result = sub_1C1074510();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1C1074510()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_27();
  v3 = sub_1C1076D44(v1, v2, &protocol conformance descriptor for PhotosMockAlbum);
  OUTLINED_FUNCTION_6(v3, v4);

  OUTLINED_FUNCTION_7_4(v0 + 64, v5);
  return *(v0 + 64);
}

uint64_t sub_1C107459C(uint64_t a1, uint64_t a2, char a3)
{
  result = swift_beginAccess();
  *(a1 + 64) = a2;
  *(a1 + 72) = a3 & 1;
  return result;
}

void sub_1C10745FC()
{
  OUTLINED_FUNCTION_19_4();
  v1 = OUTLINED_FUNCTION_4_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_4(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_0_27();
  v5 = sub_1C1076D44(v3, v4, &protocol conformance descriptor for PhotosMockAlbum);
  OUTLINED_FUNCTION_1_6(v5);

  v6 = OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_2_3(v6);

  OUTLINED_FUNCTION_12_1();
  *(v0 + 56) = sub_1C0FE88E4();
  OUTLINED_FUNCTION_18_4();
}

uint64_t sub_1C107470C@<X0>(uint64_t a1@<X8>)
{
  result = sub_1C1074774();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1C1074774()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_27();
  v3 = sub_1C1076D44(v1, v2, &protocol conformance descriptor for PhotosMockAlbum);
  OUTLINED_FUNCTION_6(v3, v4);

  OUTLINED_FUNCTION_7_4(v0 + 80, v5);
  return *(v0 + 80);
}

uint64_t sub_1C1074800(uint64_t a1, uint64_t a2, char a3)
{
  result = swift_beginAccess();
  *(a1 + 80) = a2;
  *(a1 + 88) = a3 & 1;
  return result;
}

void sub_1C1074860()
{
  OUTLINED_FUNCTION_19_4();
  v1 = OUTLINED_FUNCTION_4_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_4(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_0_27();
  v5 = sub_1C1076D44(v3, v4, &protocol conformance descriptor for PhotosMockAlbum);
  OUTLINED_FUNCTION_1_6(v5);

  v6 = OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_2_3(v6);

  OUTLINED_FUNCTION_12_1();
  *(v0 + 56) = sub_1C10746C8();
  OUTLINED_FUNCTION_18_4();
}

uint64_t sub_1C1074970@<X0>(uint64_t a1@<X8>)
{
  result = sub_1C10749D8();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1C10749D8()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_27();
  v3 = sub_1C1076D44(v1, v2, &protocol conformance descriptor for PhotosMockAlbum);
  OUTLINED_FUNCTION_6(v3, v4);

  OUTLINED_FUNCTION_7_4(v0 + 96, v5);
  return *(v0 + 96);
}

uint64_t sub_1C1074A64(uint64_t a1, uint64_t a2, char a3)
{
  result = swift_beginAccess();
  *(a1 + 96) = a2;
  *(a1 + 104) = a3 & 1;
  return result;
}

void sub_1C1074AC4()
{
  OUTLINED_FUNCTION_19_4();
  v1 = OUTLINED_FUNCTION_4_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_4(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_0_27();
  v5 = sub_1C1076D44(v3, v4, &protocol conformance descriptor for PhotosMockAlbum);
  OUTLINED_FUNCTION_1_6(v5);

  v6 = OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_2_3(v6);

  OUTLINED_FUNCTION_12_1();
  *(v0 + 56) = sub_1C107492C();
  OUTLINED_FUNCTION_18_4();
}

uint64_t sub_1C1074BD4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C1074C2C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C1074C2C()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_27();
  v3 = sub_1C1076D44(v1, v2, &protocol conformance descriptor for PhotosMockAlbum);
  OUTLINED_FUNCTION_6(v3, v4);

  OUTLINED_FUNCTION_7_4(v0 + 105, v5);
  return *(v0 + 105);
}

uint64_t sub_1C1074CB4(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(a1 + 105) = a2;
  return result;
}

void sub_1C1074D08()
{
  OUTLINED_FUNCTION_19_4();
  v1 = OUTLINED_FUNCTION_4_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_4(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_0_27();
  v5 = sub_1C1076D44(v3, v4, &protocol conformance descriptor for PhotosMockAlbum);
  OUTLINED_FUNCTION_1_6(v5);

  v6 = OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_2_3(v6);

  OUTLINED_FUNCTION_12_1();
  *(v0 + 56) = sub_1C1074B90();
  OUTLINED_FUNCTION_18_4();
}

uint64_t sub_1C1074E18@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C1074E70();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C1074E70()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_27();
  v3 = sub_1C1076D44(v1, v2, &protocol conformance descriptor for PhotosMockAlbum);
  OUTLINED_FUNCTION_6(v3, v4);

  OUTLINED_FUNCTION_7_4(v0 + 106, v5);
  return *(v0 + 106);
}

uint64_t sub_1C1074EF8(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(a1 + 106) = a2;
  return result;
}

void sub_1C1074F4C()
{
  OUTLINED_FUNCTION_19_4();
  v1 = OUTLINED_FUNCTION_4_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_4(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_0_27();
  v5 = sub_1C1076D44(v3, v4, &protocol conformance descriptor for PhotosMockAlbum);
  OUTLINED_FUNCTION_1_6(v5);

  v6 = OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_2_3(v6);

  OUTLINED_FUNCTION_12_1();
  *(v0 + 56) = sub_1C1074DD4();
  OUTLINED_FUNCTION_18_4();
}

uint64_t sub_1C107505C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C10750B4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C10750B4()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_27();
  v3 = sub_1C1076D44(v1, v2, &protocol conformance descriptor for PhotosMockAlbum);
  OUTLINED_FUNCTION_6(v3, v4);

  OUTLINED_FUNCTION_7_4(v0 + 107, v5);
  return *(v0 + 107);
}

uint64_t sub_1C107513C(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(a1 + 107) = a2;
  return result;
}

void sub_1C1075190()
{
  OUTLINED_FUNCTION_19_4();
  v1 = OUTLINED_FUNCTION_4_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_4(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_0_27();
  v5 = sub_1C1076D44(v3, v4, &protocol conformance descriptor for PhotosMockAlbum);
  OUTLINED_FUNCTION_1_6(v5);

  v6 = OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_2_3(v6);

  OUTLINED_FUNCTION_12_1();
  *(v0 + 56) = sub_1C1075018();
  OUTLINED_FUNCTION_18_4();
}

uint64_t sub_1C10752A0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C10752F8();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C10752F8()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_27();
  v3 = sub_1C1076D44(v1, v2, &protocol conformance descriptor for PhotosMockAlbum);
  OUTLINED_FUNCTION_6(v3, v4);

  OUTLINED_FUNCTION_7_4(v0 + 108, v5);
  return *(v0 + 108);
}

uint64_t sub_1C1075380(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(a1 + 108) = a2;
  return result;
}

void sub_1C10753D4()
{
  OUTLINED_FUNCTION_19_4();
  v1 = OUTLINED_FUNCTION_4_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_4(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_0_27();
  v5 = sub_1C1076D44(v3, v4, &protocol conformance descriptor for PhotosMockAlbum);
  OUTLINED_FUNCTION_1_6(v5);

  v6 = OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_2_3(v6);

  OUTLINED_FUNCTION_12_1();
  *(v0 + 56) = sub_1C107525C();
  OUTLINED_FUNCTION_18_4();
}

uint64_t sub_1C10754E4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C107553C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C107553C()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_27();
  v3 = sub_1C1076D44(v1, v2, &protocol conformance descriptor for PhotosMockAlbum);
  OUTLINED_FUNCTION_6(v3, v4);

  OUTLINED_FUNCTION_7_4(v0 + 109, v5);
  return *(v0 + 109);
}

uint64_t sub_1C10755C4(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(a1 + 109) = a2;
  return result;
}

void sub_1C1075618()
{
  OUTLINED_FUNCTION_19_4();
  v1 = OUTLINED_FUNCTION_4_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_4(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_0_27();
  v5 = sub_1C1076D44(v3, v4, &protocol conformance descriptor for PhotosMockAlbum);
  OUTLINED_FUNCTION_1_6(v5);

  v6 = OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_2_3(v6);

  OUTLINED_FUNCTION_12_1();
  *(v0 + 56) = sub_1C10754A0();
  OUTLINED_FUNCTION_18_4();
}

double sub_1C1075780()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_27();
  v3 = sub_1C1076D44(v1, v2, &protocol conformance descriptor for PhotosMockAlbum);
  OUTLINED_FUNCTION_6(v3, v4);

  OUTLINED_FUNCTION_7_4(v0 + 112, v5);

  return result;
}

void sub_1C107580C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 112) = a2;
}

void sub_1C1075874()
{
  OUTLINED_FUNCTION_19_4();
  v1 = OUTLINED_FUNCTION_4_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_4(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_0_27();
  v5 = sub_1C1076D44(v3, v4, &protocol conformance descriptor for PhotosMockAlbum);
  OUTLINED_FUNCTION_1_6(v5);

  v6 = OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_2_3(v6);

  OUTLINED_FUNCTION_12_1();
  *(v0 + 56) = sub_1C10756E4();
  OUTLINED_FUNCTION_18_4();
}

uint64_t sub_1C1075984@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C10759DC();
  *a1 = result;
  return result;
}

uint64_t sub_1C10759DC()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_27();
  v3 = sub_1C1076D44(v1, v2, &protocol conformance descriptor for PhotosMockAlbum);
  OUTLINED_FUNCTION_6(v3, v4);

  OUTLINED_FUNCTION_7_4(v0 + 120, v5);
  return swift_unknownObjectRetain();
}

uint64_t sub_1C1075A68(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 120) = a2;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

void sub_1C1075AD0()
{
  OUTLINED_FUNCTION_19_4();
  v1 = OUTLINED_FUNCTION_4_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_4(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_0_27();
  v5 = sub_1C1076D44(v3, v4, &protocol conformance descriptor for PhotosMockAlbum);
  OUTLINED_FUNCTION_1_6(v5);

  v6 = OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_2_3(v6);

  OUTLINED_FUNCTION_12_1();
  *(v0 + 56) = sub_1C1075940();
  OUTLINED_FUNCTION_18_4();
}

uint64_t sub_1C1075BE0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C1075C6C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C1075C24(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

uint64_t sub_1C1075C6C()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_27();
  v3 = sub_1C1076D44(v1, v2, &protocol conformance descriptor for PhotosMockAlbum);
  OUTLINED_FUNCTION_6(v3, v4);

  OUTLINED_FUNCTION_7_4(v0 + 128, v5);

  return OUTLINED_FUNCTION_5_5();
}

void sub_1C1075D00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  *(a1 + 128) = a2;
  *(a1 + 136) = a3;
}

void sub_1C1075D6C()
{
  OUTLINED_FUNCTION_19_4();
  v1 = OUTLINED_FUNCTION_4_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_4(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_0_27();
  v5 = sub_1C1076D44(v3, v4, &protocol conformance descriptor for PhotosMockAlbum);
  OUTLINED_FUNCTION_1_6(v5);

  v6 = OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_2_3(v6);

  OUTLINED_FUNCTION_12_1();
  *(v0 + 56) = sub_1C1075B9C();
  OUTLINED_FUNCTION_18_4();
}

uint64_t sub_1C1075E40@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1C1261990();

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v2);
}

id sub_1C1075E88()
{
  sub_1C1075780();
  v1 = v0;
  if (sub_1C0FF6288(v0))
  {
    sub_1C0FF768C();
    if ((v1 & 0xC000000000000001) != 0)
    {
      v2 = MEMORY[0x1C68F02D0](0, v1);
    }

    else
    {
      v2 = *(v1 + 32);
    }

    v3 = v2;
  }

  else
  {

    return 0;
  }

  return v3;
}

uint64_t sub_1C1075F04()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92360, &qword_1C12A3BB0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1C12AD9C0;
  sub_1C0FE0644();
  v1 = sub_1C107623C(8);
  type metadata accessor for PhotosMockAlbum(0);
  v2 = swift_allocObject();
  PhotosMockAlbum.init(identifier:title:count:isFavorite:isFolder:countOfSubFolders:isUserSmartAlbum:isPrivacySensitive:isContentPrivacyEnabled:keyAssets:collectionSymbolName:)(0, 0, 0x657469726F766146, 0xE900000000000073, 25, 0, 1, 0, 0, 1, 0, 0, 0, v1, 0, 0);
  *(v0 + 32) = v2;
  v3 = sub_1C107623C(5);
  v4 = swift_allocObject();
  PhotosMockAlbum.init(identifier:title:count:isFavorite:isFolder:countOfSubFolders:isUserSmartAlbum:isPrivacySensitive:isContentPrivacyEnabled:keyAssets:collectionSymbolName:)(0, 0, 0x4E207265646C6F46, 0xEB00000000656D61, 5, 0, 0, 1, 0, 0, 0, 0, 0, v3, 0, 0);
  *(v0 + 40) = v4;
  v5 = sub_1C107623C(8);
  v6 = swift_allocObject();
  PhotosMockAlbum.init(identifier:title:count:isFavorite:isFolder:countOfSubFolders:isUserSmartAlbum:isPrivacySensitive:isContentPrivacyEnabled:keyAssets:collectionSymbolName:)(0, 0, 0xD00000000000002BLL, 0x80000001C126AF30, 123456, 0, 0, 0, 0, 1, 0, 0, 0, v5, 0, 0);
  *(v0 + 48) = v6;
  v7 = sub_1C107623C(2);
  v8 = swift_allocObject();
  PhotosMockAlbum.init(identifier:title:count:isFavorite:isFolder:countOfSubFolders:isUserSmartAlbum:isPrivacySensitive:isContentPrivacyEnabled:keyAssets:collectionSymbolName:)(0, 0, 0x6C41206C6C616D53, 0xEB000000006D7562, 2, 0, 0, 0, 0, 1, 0, 0, 0, v7, 0, 0);
  *(v0 + 56) = v8;
  v9 = swift_allocObject();
  PhotosMockAlbum.init(identifier:title:count:isFavorite:isFolder:countOfSubFolders:isUserSmartAlbum:isPrivacySensitive:isContentPrivacyEnabled:keyAssets:collectionSymbolName:)(0, 0, 0x6C41207974706D45, 0xEB000000006D7562, 0, 0, 0, 0, 0, 1, 0, 0, 0, MEMORY[0x1E69E7CC0], 0, 0);
  *(v0 + 64) = v9;
  v10 = sub_1C107623C(3);
  v11 = swift_allocObject();
  result = PhotosMockAlbum.init(identifier:title:count:isFavorite:isFolder:countOfSubFolders:isUserSmartAlbum:isPrivacySensitive:isContentPrivacyEnabled:keyAssets:collectionSymbolName:)(0, 0, 0x4620746E65726150, 0xED00007265646C6FLL, 3, 0, 0, 1, 3, 0, 0, 0, 0, v10, 0, 0);
  *(v0 + 72) = v11;
  qword_1EBE922F0 = v0;
  return result;
}

uint64_t sub_1C107623C(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v1 = result;
    result = MEMORY[0x1E69E7CC0];
    if (v1)
    {
      v8 = MEMORY[0x1E69E7CC0];
      v2 = sub_1C1266A50();
      v3 = 0;
      do
      {
        v4 = v3 + 1;
        MEMORY[0x1EEE9AC00](v2);
        v7[2] = v5;
        v6 = objc_allocWithZone(MEMORY[0x1E69C45E0]);
        sub_1C1076ABC(sub_1C10777C8, v7);
        sub_1C1266A10();
        sub_1C1266A60();
        sub_1C1266A70();
        v2 = sub_1C1266A30();
        v3 = v4;
      }

      while (v1 != v4);
      return v8;
    }
  }

  return result;
}

double static PhotosMockAlbum.sample.getter()
{
  if (qword_1EBE8FC50 != -1)
  {
    swift_once();
  }

  return result;
}

uint64_t sub_1C1076394(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_27();
  sub_1C1076D44(v3, v4, &protocol conformance descriptor for PhotosMockAlbum);
  return sub_1C1261F20();
}

uint64_t keypath_get_10Tm()
{
  OUTLINED_FUNCTION_13_1();
  result = v1();
  *v0 = result;
  *(v0 + 8) = v3 & 1;
  return result;
}

uint64_t type metadata accessor for PhotosMockAlbum(uint64_t a1)
{
  result = qword_1EBE92348;
  if (!qword_1EBE92348)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *PhotosMockAlbum.deinit()
{

  swift_unknownObjectRelease();

  v1 = OBJC_IVAR____TtC17PhotosSwiftUICore15PhotosMockAlbum___observationRegistrar;
  v2 = sub_1C1261F70();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t PhotosMockAlbum.__deallocating_deinit()
{
  PhotosMockAlbum.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void (*sub_1C1076708(void *a1))(void *)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  sub_1C1074D08();
  v2[4] = v3;
  return sub_1C1077800;
}

void (*sub_1C1076768(void *a1))(void *)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  sub_1C1074F4C();
  v2[4] = v3;
  return sub_1C1077800;
}

void (*sub_1C10767C8(void *a1))(void *)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  sub_1C1074F4C();
  v2[4] = v3;
  return sub_1C1077800;
}

void (*sub_1C107684C(void *a1))(void *)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  sub_1C1075618();
  v2[4] = v3;
  return sub_1C10768AC;
}

id sub_1C10769B0@<X0>(void *a1@<X8>)
{
  result = sub_1C1075E88();
  *a1 = result;
  return result;
}

void sub_1C1076A28(void *a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithHue:a2 * 0.1 saturation:1.0 brightness:1.0 alpha:1.0];
  [a1 setTintColor_];
}

void sub_1C1076ABC(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v7[4] = sub_1C10777D0;
  v7[5] = v5;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = sub_1C1130E08;
  v7[3] = &block_descriptor_6;
  v6 = _Block_copy(v7);

  [v2 initWithConfiguration_];
  _Block_release(v6);

  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }
}

uint64_t sub_1C1076BD8(uint64_t a1)
{
  *(a1 + 8) = sub_1C1076D44(&qword_1EBE92310, type metadata accessor for PhotosMockAlbum, &protocol conformance descriptor for PhotosMockAlbum);
  result = sub_1C1076D44(&qword_1EBE92318, type metadata accessor for PhotosMockAlbum, &protocol conformance descriptor for PhotosMockAlbum);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C1076C5C(uint64_t a1)
{
  result = sub_1C1076D44(&qword_1EBE92320, type metadata accessor for PhotosMockAlbum, &protocol conformance descriptor for PhotosMockAlbum);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C1076D44(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C1076D8C(uint64_t a1)
{
  result = sub_1C1076D44(&qword_1EBE92328, type metadata accessor for PhotosMockAlbum, &protocol conformance descriptor for PhotosMockAlbum);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C1076DEC(uint64_t a1)
{
  result = sub_1C1261F70();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t PhotosMockSearchResult.__allocating_init(name:title:count:startDate:endDate:isPet:isFavorite:keyAssets:collectionItemType:collectionKindName:collectionKindSymbol:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, __int16 a9, uint64_t a10, unsigned __int8 *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v20 = swift_allocObject();
  PhotosMockSearchResult.init(name:title:count:startDate:endDate:isPet:isFavorite:keyAssets:collectionItemType:collectionKindName:collectionKindSymbol:)(a1, a2, a3, a4, a5, a6 & 1, a7, a8, a9, HIBYTE(a9), a10, a11, a12, a13, a14, a15);
  return v20;
}

uint64_t PhotosMockSearchResult.init(name:title:count:startDate:endDate:isPet:isFavorite:keyAssets:collectionItemType:collectionKindName:collectionKindSymbol:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, unsigned __int8 a10, uint64_t a11, unsigned __int8 *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v41 = a8;
  v39 = a7;
  v38 = a6;
  v36 = a4;
  v37 = a5;
  v47 = a16;
  v48 = a15;
  v45 = a14;
  v46 = a13;
  v42 = a9;
  v43 = a10;
  v44 = a11;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91E68, &qword_1C12AC940);
  OUTLINED_FUNCTION_15(v20);
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v36 - v22;
  v40 = *a12;
  *(v16 + 16) = 0u;
  *(v16 + 32) = 0u;
  *(v16 + 48) = 0;
  *(v16 + 56) = 1;
  v24 = OBJC_IVAR____TtC17PhotosSwiftUICore22PhotosMockSearchResult__startDate;
  v25 = sub_1C1261DE0();
  __swift_storeEnumTagSinglePayload(v16 + v24, 1, 1, v25);
  v26 = OBJC_IVAR____TtC17PhotosSwiftUICore22PhotosMockSearchResult__endDate;
  __swift_storeEnumTagSinglePayload(v16 + OBJC_IVAR____TtC17PhotosSwiftUICore22PhotosMockSearchResult__endDate, 1, 1, v25);
  v27 = (v16 + OBJC_IVAR____TtC17PhotosSwiftUICore22PhotosMockSearchResult__collectionKindName);
  *v27 = 0;
  v27[1] = 0;
  v28 = (v16 + OBJC_IVAR____TtC17PhotosSwiftUICore22PhotosMockSearchResult__collectionKindSymbol);
  *v28 = 0;
  v28[1] = 0;
  sub_1C1261F60();

  *(v16 + 16) = a1;
  *(v16 + 24) = a2;

  v30 = v36;
  v29 = v37;
  *(v16 + 32) = a3;
  *(v16 + 40) = v30;
  *(v16 + 48) = v29;
  *(v16 + 56) = v38 & 1;
  v31 = v39;
  sub_1C10641B8(v39, v23);
  OUTLINED_FUNCTION_27_6(v16 + v24);
  sub_1C1077B04(v23, v16 + v24);
  v32 = v41;
  sub_1C10641B8(v41, v23);
  OUTLINED_FUNCTION_27_6(v16 + v26);
  sub_1C1077B04(v23, v16 + v26);
  v33 = v43;
  *(v16 + OBJC_IVAR____TtC17PhotosSwiftUICore22PhotosMockSearchResult__isPet) = v42;
  *(v16 + OBJC_IVAR____TtC17PhotosSwiftUICore22PhotosMockSearchResult__isFavorite) = v33;
  v34 = v45;
  *(v16 + OBJC_IVAR____TtC17PhotosSwiftUICore22PhotosMockSearchResult__keyAssets) = v44;
  *(v16 + OBJC_IVAR____TtC17PhotosSwiftUICore22PhotosMockSearchResult__collectionItemType) = v40;
  sub_1C1078204(v46, v34);
  sub_1C107822C(v48, v47);
  OUTLINED_FUNCTION_27_6(v32);
  OUTLINED_FUNCTION_27_6(v31);
  return v16;
}

uint64_t sub_1C1077B04(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91E68, &qword_1C12AC940);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_1C1077B74(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_9_5(v2 + 16);
  if (sub_1C0FDFDE0(*(v2 + 16), *(v2 + 24), a1, a2))
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_20_7();
    MEMORY[0x1EEE9AC00](v5);
    OUTLINED_FUNCTION_12_3();
    *(v6 - 32) = v2;
    *(v6 - 24) = a1;
    *(v6 - 16) = a2;
    OUTLINED_FUNCTION_21_4(v7, v8, v9);
  }

  else
  {
    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
  }

  return result;
}

double sub_1C1077C38(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_9_5(v2 + 32);
  if (sub_1C0FDFDE0(*(v2 + 32), *(v2 + 40), a1, a2))
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_20_7();
    MEMORY[0x1EEE9AC00](v5);
    OUTLINED_FUNCTION_12_3();
    *(v6 - 32) = v2;
    *(v6 - 24) = a1;
    *(v6 - 16) = a2;
    OUTLINED_FUNCTION_21_4(v7, v8, v9);
  }

  else
  {
    *(v2 + 32) = a1;
    *(v2 + 40) = a2;
  }

  return result;
}

double sub_1C1077CFC(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_9_5(v2 + 48);
  if ((*(v2 + 56) & 1) == 0)
  {
    if ((a2 & 1) != 0 || *(v2 + 48) != a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    *(v2 + 48) = a1;
    *(v2 + 56) = a2 & 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_6;
  }

LABEL_7:
  swift_getKeyPath();
  OUTLINED_FUNCTION_20_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_12_3();
  *(v7 - 32) = v2;
  *(v7 - 24) = a1;
  *(v7 - 16) = a2 & 1;
  OUTLINED_FUNCTION_21_4(v8, v9, v10);

  return result;
}

uint64_t sub_1C1077E14(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91E68, &qword_1C12AC940);
  OUTLINED_FUNCTION_15(v8);
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v18 - v10;
  v12 = *a2;
  swift_beginAccess();
  sub_1C10641B8(v4 + v12, v11);
  LOBYTE(a2) = sub_1C1079CB0(v11, a1);
  sub_1C0FFC7B0(v11, &qword_1EBE91E68, &qword_1C12AC940);
  if (a2)
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_20_7();
    MEMORY[0x1EEE9AC00](v13);
    OUTLINED_FUNCTION_2_7();
    *(v14 - 16) = v4;
    *(v14 - 8) = a1;
    sub_1C1079BE8(v15, a4, v16);
  }

  else
  {
    sub_1C10641B8(a1, v11);
    swift_beginAccess();
    sub_1C1064FA4(v11, v4 + v12);
    swift_endAccess();
  }

  return sub_1C0FFC7B0(a1, &qword_1EBE91E68, &qword_1C12AC940);
}

void sub_1C1077FDC(char a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = a1 & 1;
  v7 = *a2;
  OUTLINED_FUNCTION_9_5(v4 + *a2);
  if (*(v4 + v7) == v6)
  {
    *(v4 + v7) = v6;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    OUTLINED_FUNCTION_2_7();
    *(v9 - 16) = v4;
    *(v9 - 8) = v6;
    sub_1C1079BE8(v10, a4, v11);
  }
}

double sub_1C1078084(unint64_t a1)
{
  v3 = OBJC_IVAR____TtC17PhotosSwiftUICore22PhotosMockSearchResult__keyAssets;
  OUTLINED_FUNCTION_9_5(v1 + OBJC_IVAR____TtC17PhotosSwiftUICore22PhotosMockSearchResult__keyAssets);

  v5 = sub_1C0FEAAF0(v4, a1);

  if (v5)
  {
    *(v1 + v3) = a1;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_20_7();
    MEMORY[0x1EEE9AC00](v7);
    OUTLINED_FUNCTION_2_7();
    *(v8 - 16) = v1;
    *(v8 - 8) = a1;
    OUTLINED_FUNCTION_21_4(v9, v10, v11);
  }

  return result;
}

double sub_1C1078154(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC17PhotosSwiftUICore22PhotosMockSearchResult__collectionItemType;
  OUTLINED_FUNCTION_9_5(v1 + OBJC_IVAR____TtC17PhotosSwiftUICore22PhotosMockSearchResult__collectionItemType);
  if (sub_1C0FEA138(*(v1 + v3), v2))
  {
    *(v1 + v3) = v2;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_20_7();
    MEMORY[0x1EEE9AC00](v5);
    OUTLINED_FUNCTION_2_7();
    *(v6 - 16) = v1;
    *(v6 - 8) = v2;
    OUTLINED_FUNCTION_21_4(v7, v8, v9);
  }

  return result;
}

void sub_1C1078254()
{
  OUTLINED_FUNCTION_19_4();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = (v0 + *v7);
  swift_beginAccess();
  if (sub_1C0FDFDE0(*v8, v8[1], v6, v4))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    OUTLINED_FUNCTION_12_3();
    *(v10 - 32) = v0;
    *(v10 - 24) = v6;
    *(v10 - 16) = v4;
    sub_1C1079BE8(v11, v2, v12);
  }

  else
  {
    *v8 = v6;
    v8[1] = v4;
  }

  OUTLINED_FUNCTION_18_4();
}

uint64_t sub_1C107832C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C1078370();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C1078370()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_28();
  v3 = sub_1C107AC34(v1, v2, &protocol conformance descriptor for PhotosMockSearchResult);
  OUTLINED_FUNCTION_0_1(v3, v4, v5, v6, v7, v8, v9, v10, v13, v0);
  sub_1C1261F30();

  OUTLINED_FUNCTION_7_4(v0 + 16, v11);

  return OUTLINED_FUNCTION_5_5();
}

void sub_1C107840C()
{
  OUTLINED_FUNCTION_19_4();
  v1 = OUTLINED_FUNCTION_4_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_4(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_0_28();
  v5 = sub_1C107AC34(v3, v4, &protocol conformance descriptor for PhotosMockSearchResult);
  OUTLINED_FUNCTION_1_6(v5);

  v6 = OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_2_3(v6);

  OUTLINED_FUNCTION_12_1();
  *(v0 + 56) = sub_1C1073F50();
  OUTLINED_FUNCTION_18_4();
}

uint64_t sub_1C10784D8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C1078564();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C107851C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

uint64_t sub_1C1078564()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_28();
  v3 = sub_1C107AC34(v1, v2, &protocol conformance descriptor for PhotosMockSearchResult);
  OUTLINED_FUNCTION_0_1(v3, v4, v5, v6, v7, v8, v9, v10, v13, v0);
  sub_1C1261F30();

  OUTLINED_FUNCTION_7_4(v0 + 32, v11);

  return OUTLINED_FUNCTION_5_5();
}

void sub_1C1078600()
{
  OUTLINED_FUNCTION_19_4();
  v1 = OUTLINED_FUNCTION_4_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_4(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_0_28();
  v5 = sub_1C107AC34(v3, v4, &protocol conformance descriptor for PhotosMockSearchResult);
  OUTLINED_FUNCTION_1_6(v5);

  v6 = OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_2_3(v6);

  OUTLINED_FUNCTION_12_1();
  *(v0 + 56) = sub_1C0FDF120();
  OUTLINED_FUNCTION_18_4();
}

uint64_t sub_1C10786CC@<X0>(uint64_t a1@<X8>)
{
  result = sub_1C1078734();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1C1078734()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_28();
  v3 = sub_1C107AC34(v1, v2, &protocol conformance descriptor for PhotosMockSearchResult);
  OUTLINED_FUNCTION_0_1(v3, v4, v5, v6, v7, v8, v9, v10, v13, v0);
  sub_1C1261F30();

  OUTLINED_FUNCTION_7_4(v0 + 48, v11);
  return *(v0 + 48);
}

uint64_t sub_1C10787C8(uint64_t a1, uint64_t a2, char a3)
{
  result = swift_beginAccess();
  *(a1 + 48) = a2;
  *(a1 + 56) = a3 & 1;
  return result;
}

void sub_1C1078828()
{
  OUTLINED_FUNCTION_19_4();
  v1 = OUTLINED_FUNCTION_4_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_4(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_0_28();
  v5 = sub_1C107AC34(v3, v4, &protocol conformance descriptor for PhotosMockSearchResult);
  OUTLINED_FUNCTION_1_6(v5);

  v6 = OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_2_3(v6);

  OUTLINED_FUNCTION_12_1();
  *(v0 + 56) = sub_1C0FDF350();
  OUTLINED_FUNCTION_18_4();
}

void sub_1C1078990()
{
  OUTLINED_FUNCTION_19_4();
  v1 = OUTLINED_FUNCTION_4_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_4(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_0_28();
  v5 = sub_1C107AC34(v3, v4, &protocol conformance descriptor for PhotosMockSearchResult);
  OUTLINED_FUNCTION_1_6(v5);

  v6 = OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_2_3(v6);

  OUTLINED_FUNCTION_12_1();
  *(v0 + 56) = sub_1C10788F4();
  OUTLINED_FUNCTION_18_4();
}

uint64_t sub_1C1078AE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91E68, &qword_1C12AC940);
  OUTLINED_FUNCTION_15(v7);
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v12 - v9;
  sub_1C10641B8(a1, &v12 - v9);
  return a5(v10);
}

uint64_t sub_1C1078B8C@<X0>(uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_28();
  v8 = sub_1C107AC34(v6, v7, &protocol conformance descriptor for PhotosMockSearchResult);
  OUTLINED_FUNCTION_18_11(v8, v9, v10, v11, v12, v13, v14, v15, v19, v3);
  sub_1C1261F30();

  v16 = *a2;
  OUTLINED_FUNCTION_7_4(v3 + v16, v17);
  return sub_1C10641B8(v3 + v16, a3);
}

uint64_t sub_1C1078C30(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91E68, &qword_1C12AC940);
  OUTLINED_FUNCTION_15(v6);
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v12 - v8;
  sub_1C10641B8(a2, &v12 - v8);
  v10 = *a3;
  swift_beginAccess();
  sub_1C1064FA4(v9, a1 + v10);
  return swift_endAccess();
}

void sub_1C1078CF4()
{
  OUTLINED_FUNCTION_19_4();
  v1 = OUTLINED_FUNCTION_4_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_4(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_0_28();
  v5 = sub_1C107AC34(v3, v4, &protocol conformance descriptor for PhotosMockSearchResult);
  OUTLINED_FUNCTION_1_6(v5);

  v6 = OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_2_3(v6);

  OUTLINED_FUNCTION_12_1();
  *(v0 + 56) = sub_1C1078A5C();
  OUTLINED_FUNCTION_18_4();
}

uint64_t sub_1C1078E0C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C1078E64();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C1078E78(uint64_t a1, char a2)
{
  v4 = OBJC_IVAR____TtC17PhotosSwiftUICore22PhotosMockSearchResult__isPet;
  result = swift_beginAccess();
  *(a1 + v4) = a2;
  return result;
}

void sub_1C1078ED4()
{
  OUTLINED_FUNCTION_19_4();
  v1 = OUTLINED_FUNCTION_4_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_4(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_0_28();
  v5 = sub_1C107AC34(v3, v4, &protocol conformance descriptor for PhotosMockSearchResult);
  OUTLINED_FUNCTION_1_6(v5);

  v6 = OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_2_3(v6);

  OUTLINED_FUNCTION_12_1();
  *(v0 + 56) = sub_1C1078DC0();
  OUTLINED_FUNCTION_18_4();
}

uint64_t sub_1C1078FEC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C1079044();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C1079058(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_28();
  v6 = sub_1C107AC34(v4, v5, &protocol conformance descriptor for PhotosMockSearchResult);
  OUTLINED_FUNCTION_18_11(v6, v7, v8, v9, v10, v11, v12, v13, v17, v2);
  sub_1C1261F30();

  v14 = *a2;
  OUTLINED_FUNCTION_7_4(v2 + v14, v15);
  return *(v2 + v14);
}

uint64_t sub_1C10790E8(uint64_t a1, char a2)
{
  v4 = OBJC_IVAR____TtC17PhotosSwiftUICore22PhotosMockSearchResult__isFavorite;
  result = swift_beginAccess();
  *(a1 + v4) = a2;
  return result;
}

void sub_1C1079144()
{
  OUTLINED_FUNCTION_19_4();
  v1 = OUTLINED_FUNCTION_4_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_4(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_0_28();
  v5 = sub_1C107AC34(v3, v4, &protocol conformance descriptor for PhotosMockSearchResult);
  OUTLINED_FUNCTION_1_6(v5);

  v6 = OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_2_3(v6);

  OUTLINED_FUNCTION_12_1();
  *(v0 + 56) = sub_1C1078FA0();
  OUTLINED_FUNCTION_18_4();
}

double sub_1C10792B4()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_28();
  v3 = sub_1C107AC34(v1, v2, &protocol conformance descriptor for PhotosMockSearchResult);
  OUTLINED_FUNCTION_0_1(v3, v4, v5, v6, v7, v8, v9, v10, v13, v0);
  sub_1C1261F30();

  OUTLINED_FUNCTION_7_4(v0 + OBJC_IVAR____TtC17PhotosSwiftUICore22PhotosMockSearchResult__keyAssets, v11);

  return result;
}

void sub_1C1079350(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC17PhotosSwiftUICore22PhotosMockSearchResult__keyAssets;
  swift_beginAccess();
  *(a1 + v4) = a2;
}

void sub_1C10793C0()
{
  OUTLINED_FUNCTION_19_4();
  v1 = OUTLINED_FUNCTION_4_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_4(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_0_28();
  v5 = sub_1C107AC34(v3, v4, &protocol conformance descriptor for PhotosMockSearchResult);
  OUTLINED_FUNCTION_1_6(v5);

  v6 = OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_2_3(v6);

  OUTLINED_FUNCTION_12_1();
  *(v0 + 56) = sub_1C1079210();
  OUTLINED_FUNCTION_18_4();
}

void *sub_1C10794D8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C107954C(&v3);
  *a1 = v3;
  return result;
}

uint64_t sub_1C107954C@<X0>(_BYTE *a1@<X8>)
{
  v2 = v1;
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_28();
  v6 = sub_1C107AC34(v4, v5, &protocol conformance descriptor for PhotosMockSearchResult);
  OUTLINED_FUNCTION_0_1(v6, v7, v8, v9, v10, v11, v12, v13, v17, v1);
  sub_1C1261F30();

  v14 = OBJC_IVAR____TtC17PhotosSwiftUICore22PhotosMockSearchResult__collectionItemType;
  result = OUTLINED_FUNCTION_7_4(v2 + OBJC_IVAR____TtC17PhotosSwiftUICore22PhotosMockSearchResult__collectionItemType, v15);
  *a1 = *(v2 + v14);
  return result;
}

uint64_t sub_1C10795EC(uint64_t a1, char a2)
{
  v4 = OBJC_IVAR____TtC17PhotosSwiftUICore22PhotosMockSearchResult__collectionItemType;
  result = swift_beginAccess();
  *(a1 + v4) = a2;
  return result;
}

void sub_1C1079648()
{
  OUTLINED_FUNCTION_19_4();
  v1 = OUTLINED_FUNCTION_4_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_4(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_0_28();
  v5 = sub_1C107AC34(v3, v4, &protocol conformance descriptor for PhotosMockSearchResult);
  OUTLINED_FUNCTION_1_6(v5);

  v6 = OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_2_3(v6);

  OUTLINED_FUNCTION_12_1();
  *(v0 + 56) = sub_1C107948C();
  OUTLINED_FUNCTION_18_4();
}

uint64_t sub_1C1079760@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C10797A4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_1C10797B8()
{
  OUTLINED_FUNCTION_19_4();
  v1 = OUTLINED_FUNCTION_4_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_4(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_0_28();
  v5 = sub_1C107AC34(v3, v4, &protocol conformance descriptor for PhotosMockSearchResult);
  OUTLINED_FUNCTION_1_6(v5);

  v6 = OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_2_3(v6);

  OUTLINED_FUNCTION_12_1();
  *(v0 + 56) = sub_1C1079714();
  OUTLINED_FUNCTION_18_4();
}

uint64_t sub_1C10798D0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C1079914();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C1079928(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_28();
  v5 = sub_1C107AC34(v3, v4, &protocol conformance descriptor for PhotosMockSearchResult);
  OUTLINED_FUNCTION_18_11(v5, v6, v7, v8, v9, v10, v11, v12, v14, v2);
  sub_1C1261F30();

  swift_beginAccess();

  return OUTLINED_FUNCTION_5_5();
}

void sub_1C10799D4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = (a1 + *a4);
  swift_beginAccess();
  *v6 = a2;
  v6[1] = a3;
}

void sub_1C1079A44()
{
  OUTLINED_FUNCTION_19_4();
  v1 = OUTLINED_FUNCTION_4_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_4(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_0_28();
  v5 = sub_1C107AC34(v3, v4, &protocol conformance descriptor for PhotosMockSearchResult);
  OUTLINED_FUNCTION_1_6(v5);

  v6 = OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_2_3(v6);

  OUTLINED_FUNCTION_12_1();
  *(v0 + 56) = sub_1C1079884();
  OUTLINED_FUNCTION_18_4();
}

uint64_t sub_1C1079B10()
{
  v0 = sub_1C1261E20();
  MEMORY[0x1EEE9AC00](v0);
  sub_1C1261E10();
  v1 = sub_1C1261DF0();
  v2 = OUTLINED_FUNCTION_5_5();
  v3(v2);
  return v1;
}

uint64_t sub_1C1079BE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_28();
  sub_1C107AC34(v3, v4, &protocol conformance descriptor for PhotosMockSearchResult);
  return sub_1C1261F20();
}

uint64_t sub_1C1079CB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C1261DE0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91E68, &qword_1C12AC940);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91EB8, &qword_1C12B3B80);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v20 - v12;
  v15 = *(v14 + 56);
  sub_1C10641B8(a1, &v20 - v12);
  sub_1C10641B8(a2, &v13[v15]);
  if (__swift_getEnumTagSinglePayload(v13, 1, v4) != 1)
  {
    sub_1C10641B8(v13, v10);
    if (__swift_getEnumTagSinglePayload(&v13[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      sub_1C107AC34(&qword_1EDE82F38, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
      v17 = sub_1C1265DE0();
      v18 = *(v5 + 8);
      v18(v7, v4);
      v18(v10, v4);
      sub_1C0FFC7B0(v13, &qword_1EBE91E68, &qword_1C12AC940);
      v16 = v17 ^ 1;
      return v16 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (__swift_getEnumTagSinglePayload(&v13[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_1C0FFC7B0(v13, &qword_1EBE91EB8, &qword_1C12B3B80);
    v16 = 1;
    return v16 & 1;
  }

  sub_1C0FFC7B0(v13, &qword_1EBE91E68, &qword_1C12AC940);
  v16 = 0;
  return v16 & 1;
}

uint64_t type metadata accessor for PhotosMockSearchResult(uint64_t a1)
{
  result = qword_1EBE923D0;
  if (!qword_1EBE923D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PhotosMockSearchResult.deinit()
{

  sub_1C0FFC7B0(v0 + OBJC_IVAR____TtC17PhotosSwiftUICore22PhotosMockSearchResult__startDate, &qword_1EBE91E68, &qword_1C12AC940);
  sub_1C0FFC7B0(v0 + OBJC_IVAR____TtC17PhotosSwiftUICore22PhotosMockSearchResult__endDate, &qword_1EBE91E68, &qword_1C12AC940);

  v1 = OBJC_IVAR____TtC17PhotosSwiftUICore22PhotosMockSearchResult___observationRegistrar;
  sub_1C1261F70();
  OUTLINED_FUNCTION_4_2();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t PhotosMockSearchResult.__deallocating_deinit()
{
  PhotosMockSearchResult.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1C107A384(uint64_t a1)
{
  result = sub_1C107AC34(&qword_1EBE923B8, type metadata accessor for PhotosMockSearchResult, &protocol conformance descriptor for PhotosMockSearchResult);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C107A464(uint64_t a1)
{
  result = sub_1C107AC34(&qword_1EBE923C8, type metadata accessor for PhotosMockSearchResult, &protocol conformance descriptor for PhotosMockSearchResult);
  *(a1 + 8) = result;
  return result;
}

void sub_1C107A4C4(uint64_t a1)
{
  sub_1C1065568(319);
  if (v1 <= 0x3F)
  {
    sub_1C1261F70();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1C107AC34(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C107AC7C@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.oneUpChromeSpec.getter();
  *a1 = result;
  return result;
}

uint64_t OneUpTitleView.Alignment.hashValue.getter()
{
  v1 = *v0;
  sub_1C1266E90();
  MEMORY[0x1C68F07E0](v1);
  return sub_1C1266EE0();
}

PhotosSwiftUICore::OneUpTitleView::Configuration __swiftcall OneUpTitleView.Configuration.init(showSubtitle:alignment:)(Swift::Bool showSubtitle, PhotosSwiftUICore::OneUpTitleView::Alignment alignment)
{
  v3 = *alignment;
  *v2 = showSubtitle;
  v2[1] = v3;
  result.showSubtitle = showSubtitle;
  return result;
}

void OneUpTitleView.init(configuration:)(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  *(a2 + 8) = swift_getKeyPath();
  *(a2 + 16) = 0;
  *(a2 + 24) = swift_getKeyPath();
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  v5 = *(type metadata accessor for OneUpTitleView(0) + 28);
  *(a2 + v5) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930, &qword_1C12A3650);
  swift_storeEnumTagMultiPayload();
  *a2 = v3;
  *(a2 + 1) = v4;
}

uint64_t type metadata accessor for OneUpTitleView(uint64_t a1)
{
  result = qword_1EDE7E2E0;
  if (!qword_1EDE7E2E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t OneUpTitleView.body.getter@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_1C1263AA0();
  *(a2 + 8) = 0x3FF0000000000000;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE923E0, &qword_1C12AE288);
  sub_1C107AF2C(v2, a2 + *(v4 + 44));
  v5 = sub_1C107B734();
  *(a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE923E8, &qword_1C12AE290) + 36)) = v5;
  v6 = sub_1C1265A00();
  v7 = sub_1C107B734();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE923F0, &qword_1C12AE298);
  v9 = (a2 + *(result + 36));
  *v9 = v6;
  *(v9 + 1) = v7;
  return result;
}

uint64_t sub_1C107AF2C@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92428, &qword_1C12AE3D0);
  MEMORY[0x1EEE9AC00](v4);
  v57 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v54 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92430, &qword_1C12AE3D8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v54 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v54 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v54 - v19;
  if (sub_1C107B420() && (v22 = v21, ObjectType = swift_getObjectType(), v56 = (*(v22 + 128))(ObjectType, v22), v25 = v24, swift_unknownObjectRelease(), v25))
  {
    v54 = PXFontWithTextStyleSymbolicTraitsAndWeight();
    v26 = sub_1C107B580();
    v55 = v17;
    v27 = v4;
    v28 = v14;
    v29 = v11;
    v30 = a2;
    v31 = v26;
    sub_1C107B5F4();
    v32 = sub_1C1223804();

    if (a1[1])
    {
      v33 = 1;
    }

    else
    {
      v33 = 4;
    }

    KeyPath = swift_getKeyPath();
    LOBYTE(v61) = 0;
    *&v58 = v56;
    *(&v58 + 1) = v25;
    *&v59 = v54;
    *(&v59 + 1) = v31;
    a2 = v30;
    v11 = v29;
    v14 = v28;
    v4 = v27;
    v17 = v55;
    *v60 = v32;
    *&v60[8] = v33;
    *&v60[16] = KeyPath;
    v60[24] = 0;
    sub_1C1058EB8();
    sub_1C1264DF0();
    v61 = v58;
    v62 = v59;
    v63[0] = *v60;
    *(v63 + 9) = *&v60[9];
    sub_1C107BD50(&v61);
    sub_1C107BDA4(v8, v20);
    v35 = v20;
    v36 = 0;
  }

  else
  {
    v35 = v20;
    v36 = 1;
  }

  __swift_storeEnumTagSinglePayload(v35, v36, 1, v4);
  if (*a1 == 1 && sub_1C107B420() && (v38 = v37, v39 = swift_getObjectType(), v40 = (*(v38 + 136))(v39, v38), v42 = v41, swift_unknownObjectRelease(), v42))
  {
    v55 = PXFontWithTextStyleSymbolicTraitsAndWeight();
    v43 = [objc_opt_self() secondaryLabelColor];
    v56 = v4;
    v44 = v43;
    sub_1C107B5F4();
    v45 = sub_1C1223804();

    if (a1[1])
    {
      v46 = 1;
    }

    else
    {
      v46 = 4;
    }

    v47 = swift_getKeyPath();
    LOBYTE(v61) = 0;
    *&v58 = v40;
    *(&v58 + 1) = v42;
    *&v59 = v55;
    *(&v59 + 1) = v44;
    *v60 = v45;
    *&v60[8] = v46;
    *&v60[16] = v47;
    v60[24] = 0;
    sub_1C1058EB8();
    v48 = v57;
    sub_1C1264DF0();
    v61 = v58;
    v62 = v59;
    v63[0] = *v60;
    *(v63 + 9) = *&v60[9];
    sub_1C107BD50(&v61);
    sub_1C107BDA4(v48, v17);
    v49 = v17;
    v50 = 0;
    v51 = v56;
  }

  else
  {
    v49 = v17;
    v50 = 1;
    v51 = v4;
  }

  __swift_storeEnumTagSinglePayload(v49, v50, 1, v51);
  sub_1C107BC78(v20, v14);
  sub_1C107BC78(v17, v11);
  sub_1C107BC78(v14, a2);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92438, &qword_1C12AE3E0);
  sub_1C107BC78(v11, a2 + *(v52 + 48));
  sub_1C107BCE8(v17);
  sub_1C107BCE8(v20);
  sub_1C107BCE8(v11);
  return sub_1C107BCE8(v14);
}

uint64_t sub_1C107B420()
{
  v1 = sub_1C12637E0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 24);
  v5 = *(v0 + 32);
  if (*(v0 + 40) == 1)
  {
    swift_unknownObjectRetain();
  }

  else
  {

    sub_1C1266420();
    v7 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    v8 = sub_1C0FF9034(v6, v5, 0);
    (*(v2 + 8))(v4, v1, v8);
    return v10;
  }

  return v6;
}

id sub_1C107B580()
{
  sub_1C107B5F4();
  v0 = sub_1C1225818();

  v1 = objc_opt_self();
  v2 = &selRef_whiteColor;
  if ((v0 & 1) == 0)
  {
    v2 = &selRef_labelColor;
  }

  v3 = [v1 *v2];

  return v3;
}

uint64_t sub_1C107B5F4()
{
  v1 = sub_1C12637E0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 8);
  v6 = *(v0 + 16);

  if ((v6 & 1) == 0)
  {
    sub_1C1266420();
    v7 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v5;
}

double sub_1C107B734()
{
  sub_1C107B5F4();
  v0 = sub_1C1225818();

  if ((v0 & 1) == 0)
  {
    return 1.0;
  }

  v2 = 0.0;
  if (sub_1C107B420())
  {
    v3 = v1;
    ObjectType = swift_getObjectType();
    LOBYTE(v3) = (*(v3 + 296))(ObjectType, v3);
    swift_unknownObjectRelease();
    if (v3)
    {
      return 1.0;
    }
  }

  return v2;
}

unint64_t sub_1C107B7D0()
{
  result = qword_1EBE923F8;
  if (!qword_1EBE923F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE923F8);
  }

  return result;
}

void sub_1C107B86C(uint64_t a1)
{
  sub_1C1057868(319, &qword_1EDE775E0, type metadata accessor for OneUpChromeSpec);
  if (v1 <= 0x3F)
  {
    sub_1C10387FC(319);
    if (v2 <= 0x3F)
    {
      sub_1C1057868(319, &qword_1EDE77590, MEMORY[0x1E697DBD0]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

_BYTE *storeEnumTagSinglePayload for OneUpTitleView.Alignment(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for OneUpTitleView.Configuration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 2) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C107BB08()
{
  result = qword_1EBE92400;
  if (!qword_1EBE92400)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE923F0, &qword_1C12AE298);
    sub_1C107BBC0();
    sub_1C0FDB6D4(&qword_1EDE7BC88, &qword_1EBE92420, &qword_1C12CACB0, MEMORY[0x1E697F548]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE92400);
  }

  return result;
}

unint64_t sub_1C107BBC0()
{
  result = qword_1EBE92408;
  if (!qword_1EBE92408)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE923E8, &qword_1C12AE290);
    sub_1C0FDB6D4(&qword_1EBE92410, &qword_1EBE92418, &unk_1C12AE3C0, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE92408);
  }

  return result;
}

uint64_t sub_1C107BC78(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92430, &qword_1C12AE3D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C107BCE8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92430, &qword_1C12AE3D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C107BDA4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92428, &qword_1C12AE3D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t PhotosDetailsNavigationTransitionKind.description.getter()
{
  if (*v0)
  {
    return 0x70556564696C73;
  }

  else
  {
    return 1836019578;
  }
}

uint64_t PhotosDetailsNavigationTransitionKind.hashValue.getter()
{
  v1 = *v0;
  sub_1C1266E90();
  MEMORY[0x1C68F07E0](v1);
  return sub_1C1266EE0();
}

uint64_t EnvironmentValues.photosDetailsNavigationForcedTransitionKind.getter()
{
  sub_1C107BF2C();

  return sub_1C12637F0();
}

unint64_t sub_1C107BF2C()
{
  result = qword_1EDE7EF20;
  if (!qword_1EDE7EF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7EF20);
  }

  return result;
}

uint64_t sub_1C107BF80@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.photosDetailsNavigationForcedTransitionKind.getter();
  *a1 = v3;
  return result;
}

uint64_t (*EnvironmentValues.photosDetailsNavigationForcedTransitionKind.modify(void *a1))(uint64_t a1)
{
  *a1 = v1;
  a1[1] = sub_1C107BF2C();
  sub_1C12637F0();
  return sub_1C107C094;
}

unint64_t sub_1C107C0D0()
{
  result = qword_1EBE92440;
  if (!qword_1EBE92440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE92440);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PhotosDetailsNavigationTransitionKind(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}