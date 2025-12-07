uint64_t sub_252B71E28(uint64_t a1)
{
  type metadata accessor for HomeFilter.Builder();
  v2 = swift_allocObject();
  *(v2 + 160) = 0;
  *(v2 + 168) = 0;
  *(v2 + 175) = 0;
  *(v2 + 16) = *(v1 + 16);

  v3 = *(v1 + 32);
  *(v2 + 24) = *(v1 + 24);
  *(v2 + 32) = v3;

  *(v2 + 40) = *(v1 + 40);
  v4 = *(v1 + 64);
  *(v2 + 56) = *(v1 + 56);
  *(v2 + 64) = v4;

  *(v2 + 72) = *(v1 + 72);
  v5 = *(v1 + 88);

  v6 = *(v1 + 104);
  *&v7 = v5;
  *(&v7 + 1) = *(v1 + 96);
  v16 = v7;

  *&v8 = v6;
  *(&v8 + 1) = *(v1 + 112);
  *(v2 + 88) = v16;
  *(v2 + 104) = v8;
  v9 = *(v1 + 120);

  v10 = *(v1 + 136);
  *&v11 = v9;
  *(&v11 + 1) = *(v1 + 128);
  v17 = v11;

  v12 = *(v1 + 152);
  *&v13 = v10;
  *(&v13 + 1) = *(v1 + 144);
  *(v2 + 120) = v17;
  *(v2 + 136) = v13;
  *(v2 + 152) = v12;

  v14 = *(v1 + 168);
  *(v2 + 160) = *(v1 + 160);
  *(v2 + 168) = v14;

  *(v2 + 176) = *(v1 + 176);
  *(v2 + 177) = *(v1 + 177);
  *(v2 + 178) = *(v1 + 178);
  return v2;
}

void *HomeFilter.Builder.deinit()
{

  return v0;
}

uint64_t HomeFilter.Builder.__deallocating_deinit()
{
  HomeFilter.Builder.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_252B72040(void *a1)
{
  v2 = v1;
  if (a1)
  {
    v3 = a1;
    v4 = [v3 entityIdentifiers];
    if (v4)
    {
      v5 = v4;
      v6 = sub_252E37264();
    }

    else
    {
      v6 = 0;
    }

    *(v2 + 16) = v6;

    v7 = [v3 homeEntityName];
    if (v7)
    {
      v8 = v7;
      v9 = sub_252E36F34();
      v11 = v10;
    }

    else
    {
      v9 = 0;
      v11 = 0;
    }

    *(v2 + 24) = v9;
    *(v2 + 32) = v11;

    *(v2 + 40) = [v3 entityType];
    *(v2 + 48) = [v3 outerDeviceType];
    v12 = [v3 outerDeviceName];
    if (v12)
    {
      v13 = v12;
      v14 = sub_252E36F34();
      v16 = v15;
    }

    else
    {
      v14 = 0;
      v16 = 0;
    }

    *(v2 + 56) = v14;
    *(v2 + 64) = v16;

    *(v2 + 72) = [v3 deviceType];
    v17 = [v3 homeName];
    if (v17)
    {
      v18 = v17;
      v19 = sub_252E36F34();
      v21 = v20;
    }

    else
    {
      v19 = 0;
      v21 = 0;
    }

    *(v2 + 80) = v19;
    *(v2 + 88) = v21;

    v22 = [v3 zoneName];
    if (v22)
    {
      v23 = v22;
      v24 = sub_252E36F34();
      v26 = v25;
    }

    else
    {
      v24 = 0;
      v26 = 0;
    }

    *(v2 + 96) = v24;
    *(v2 + 104) = v26;

    v27 = [v3 groupName];
    if (v27)
    {
      v28 = v27;
      v29 = sub_252E36F34();
      v31 = v30;
    }

    else
    {
      v29 = 0;
      v31 = 0;
    }

    *(v2 + 112) = v29;
    *(v2 + 120) = v31;

    v32 = [v3 roomName];
    if (v32)
    {
      v33 = v32;
      v34 = sub_252E36F34();
      v36 = v35;
    }

    else
    {
      v34 = 0;
      v36 = 0;
    }

    *(v2 + 128) = v34;
    *(v2 + 136) = v36;

    v37 = [v3 targetArea];
    if (v37)
    {
      v38 = v37;
      v39 = sub_252E36F34();
      v41 = v40;
    }

    else
    {
      v39 = 0;
      v41 = 0;
    }

    *(v2 + 144) = v39;
    *(v2 + 152) = v41;

    v42 = [v3 targetMap];
    if (v42)
    {
      v43 = v42;
      v44 = sub_252E36F34();
      v46 = v45;
    }

    else
    {
      v44 = 0;
      v46 = 0;
    }

    *(v2 + 160) = v44;
    *(v2 + 168) = v46;

    v47 = [v3 isExcludeFilter];
    if (!v47)
    {
      sub_252956D08();
      v47 = sub_252E37674();
    }

    sub_252956D08();
    v48 = sub_252E37674();
    v49 = sub_252E37694();

    *(v2 + 176) = (v49 & 1) == 0;
    v50 = [v3 hasAllQuantifier];
    if (!v50)
    {
      v50 = sub_252E37674();
    }

    v51 = sub_252E37674();
    v52 = sub_252E37694();

    *(v2 + 177) = (v52 & 1) == 0;
    v53 = [v3 referencesFavorites];
    if (!v53)
    {
      v53 = sub_252E37674();
    }

    v54 = sub_252E37674();
    v55 = sub_252E37694();

    *(v2 + 178) = (v55 & 1) == 0;
  }

  return v2;
}

uint64_t dispatch thunk of INHomeFilter.Builder.withEntityName(_:)()
{
  return (*(*v0 + 480))();
}

{
  return (*(*v0 + 488))();
}

uint64_t dispatch thunk of INHomeFilter.Builder.withOuterDeviceName(_:)()
{
  return (*(*v0 + 512))();
}

{
  return (*(*v0 + 520))();
}

uint64_t dispatch thunk of INHomeFilter.Builder.withHome(_:)()
{
  return (*(*v0 + 536))();
}

{
  return (*(*v0 + 544))();
}

uint64_t dispatch thunk of INHomeFilter.Builder.withZone(_:)()
{
  return (*(*v0 + 552))();
}

{
  return (*(*v0 + 560))();
}

uint64_t dispatch thunk of INHomeFilter.Builder.withGroup(_:)()
{
  return (*(*v0 + 568))();
}

{
  return (*(*v0 + 576))();
}

uint64_t dispatch thunk of INHomeFilter.Builder.withRoom(_:)()
{
  return (*(*v0 + 584))();
}

{
  return (*(*v0 + 592))();
}

uint64_t dispatch thunk of HomeFilter.Builder.withEntityName(_:)()
{
  return (*(*v0 + 576))();
}

{
  return (*(*v0 + 584))();
}

uint64_t dispatch thunk of HomeFilter.Builder.withOuterDeviceName(_:)()
{
  return (*(*v0 + 608))();
}

{
  return (*(*v0 + 616))();
}

uint64_t dispatch thunk of HomeFilter.Builder.withHome(_:)()
{
  return (*(*v0 + 632))();
}

{
  return (*(*v0 + 640))();
}

uint64_t dispatch thunk of HomeFilter.Builder.withZone(_:)()
{
  return (*(*v0 + 648))();
}

{
  return (*(*v0 + 656))();
}

uint64_t dispatch thunk of HomeFilter.Builder.withGroup(_:)()
{
  return (*(*v0 + 664))();
}

{
  return (*(*v0 + 672))();
}

uint64_t dispatch thunk of HomeFilter.Builder.withRoom(_:)()
{
  return (*(*v0 + 680))();
}

{
  return (*(*v0 + 688))();
}

uint64_t dispatch thunk of HomeFilter.Builder.withTargetArea(_:)()
{
  return (*(*v0 + 696))();
}

{
  return (*(*v0 + 704))();
}

uint64_t dispatch thunk of HomeFilter.Builder.withTargetMap(_:)()
{
  return (*(*v0 + 712))();
}

{
  return (*(*v0 + 720))();
}

uint64_t sub_252B72D14(uint64_t result)
{
  v1 = *(result + 16);
  v32 = v1;
  if (v1)
  {
    v2 = 0;
    v31 = result;
    v36 = result + 32;
    v33 = MEMORY[0x277D84F90];
    do
    {
      if (v2 >= v1)
      {
        __break(1u);
LABEL_60:
        __break(1u);
        goto LABEL_61;
      }

      result = memcpy(__dst, (v36 + 504 * v2), sizeof(__dst));
      v3 = __OFADD__(v2++, 1);
      if (v3)
      {
        goto LABEL_60;
      }

      v4 = __dst[47];
      v5 = *(__dst[47] + 16);
      if (v5)
      {
        sub_2529353AC(__dst, v37);
        v6 = (v4 + 32);

        while (2)
        {
          if (v5)
          {
            switch(*v6)
            {
              case 8:

                break;
              default:
                v7 = sub_252E37DB4();

                ++v6;
                --v5;
                if ((v7 & 1) == 0)
                {
                  continue;
                }

                break;
            }

            v8 = v33;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v39 = v33;
            v1 = v32;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_2529AA480(0, *(v33 + 16) + 1, 1);
              v8 = v39;
            }

            v11 = *(v8 + 16);
            v10 = *(v8 + 24);
            if (v11 >= v10 >> 1)
            {
              sub_2529AA480((v10 > 1), v11 + 1, 1);
              v8 = v39;
            }

            *(v8 + 16) = v11 + 1;
            v33 = v8;
            result = memcpy((v8 + 504 * v11 + 32), __dst, 0x1F8uLL);
          }

          else
          {

            result = sub_252935408(__dst);
            v1 = v32;
          }

          break;
        }
      }
    }

    while (v2 != v1);
    v12 = v33;
    if (*(v33 + 16))
    {
      return v12;
    }

    v13 = 0;
    v34 = MEMORY[0x277D84F90];
    while (v13 < v1)
    {
      result = memcpy(__dst, (v36 + 504 * v13), sizeof(__dst));
      v3 = __OFADD__(v13++, 1);
      if (v3)
      {
        goto LABEL_62;
      }

      v14 = __dst[47];
      v15 = *(__dst[47] + 16);
      if (v15)
      {
        sub_2529353AC(__dst, v37);
        v16 = (v14 + 32);

        while (2)
        {
          if (v15)
          {
            switch(*v16)
            {
              case 9:

                break;
              default:
                v17 = sub_252E37DB4();

                ++v16;
                --v15;
                if ((v17 & 1) == 0)
                {
                  continue;
                }

                break;
            }

            v18 = v34;
            v19 = swift_isUniquelyReferenced_nonNull_native();
            v39 = v34;
            v1 = v32;
            if ((v19 & 1) == 0)
            {
              sub_2529AA480(0, *(v34 + 16) + 1, 1);
              v18 = v39;
            }

            v21 = *(v18 + 16);
            v20 = *(v18 + 24);
            if (v21 >= v20 >> 1)
            {
              sub_2529AA480((v20 > 1), v21 + 1, 1);
              v18 = v39;
            }

            *(v18 + 16) = v21 + 1;
            v34 = v18;
            result = memcpy((v18 + 504 * v21 + 32), __dst, 0x1F8uLL);
          }

          else
          {

            result = sub_252935408(__dst);
            v1 = v32;
          }

          break;
        }
      }

      if (v13 == v1)
      {
        goto LABEL_37;
      }
    }

LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v12 = MEMORY[0x277D84F90];
  if (*(MEMORY[0x277D84F90] + 16))
  {
    return v12;
  }

  v31 = result;
  v34 = MEMORY[0x277D84F90];

LABEL_37:
  v12 = v34;
  if (*(v34 + 16))
  {
    return v12;
  }

  if (!v1)
  {
    v35 = MEMORY[0x277D84F90];
LABEL_56:
    v12 = v35;
    if (!*(v35 + 16))
    {

      return v31;
    }

    return v12;
  }

  v22 = 0;
  v35 = MEMORY[0x277D84F90];
  while (v22 < v1)
  {
    result = memcpy(__dst, (v31 + 32 + 504 * v22), sizeof(__dst));
    v3 = __OFADD__(v22++, 1);
    if (v3)
    {
      goto LABEL_64;
    }

    v23 = __dst[47];
    v24 = *(__dst[47] + 16);
    if (v24)
    {
      sub_2529353AC(__dst, v37);
      v25 = (v23 + 32);

      while (2)
      {
        if (v24)
        {
          switch(*v25)
          {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 0xA:
            case 0xB:
            case 0xC:
              v26 = sub_252E37DB4();

              ++v25;
              --v24;
              if ((v26 & 1) == 0)
              {
                continue;
              }

              break;
            default:

              break;
          }

          v27 = v35;
          v28 = swift_isUniquelyReferenced_nonNull_native();
          v39 = v35;
          v1 = v32;
          if ((v28 & 1) == 0)
          {
            sub_2529AA480(0, *(v35 + 16) + 1, 1);
            v27 = v39;
          }

          v30 = *(v27 + 16);
          v29 = *(v27 + 24);
          if (v30 >= v29 >> 1)
          {
            sub_2529AA480((v29 > 1), v30 + 1, 1);
            v27 = v39;
          }

          *(v27 + 16) = v30 + 1;
          v35 = v27;
          result = memcpy((v27 + 504 * v30 + 32), __dst, 0x1F8uLL);
        }

        else
        {

          result = sub_252935408(__dst);
          v1 = v32;
        }

        break;
      }
    }

    if (v22 == v1)
    {
      goto LABEL_56;
    }
  }

LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
  return result;
}

HomeAutomationInternal::ControlHomeFlow::State_optional __swiftcall ControlHomeFlow.State.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_252E37B74();

  v5 = 13;
  if (v3 < 0xD)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t ControlHomeFlow.State.rawValue.getter()
{
  result = 0x6553746E65746E69;
  switch(*v0)
  {
    case 1:
      return result;
    case 2:
      result = 0xD000000000000014;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0x6E55656369766564;
      break;
    case 5:
      result = 0xD000000000000012;
      break;
    case 6:
      result = 0x6572506E69676562;
      break;
    case 7:
      result = 0xD000000000000011;
      break;
    case 8:
      result = 0xD00000000000001ELL;
      break;
    case 9:
      result = 0x456F547964616572;
      break;
    case 0xA:
      result = 0x6465747563657865;
      break;
    case 0xB:
      result = 0x64656B636F6C62;
      break;
    case 0xC:
      result = 0x6574656C706D6F63;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t sub_252B738D4()
{
  v0 = ControlHomeFlow.State.rawValue.getter();
  v2 = v1;
  if (v0 == ControlHomeFlow.State.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_252E37DB4();
  }

  return v5 & 1;
}

uint64_t sub_252B73970()
{
  sub_252E37EC4();
  ControlHomeFlow.State.rawValue.getter();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252B739D8(uint64_t a1)
{
  ControlHomeFlow.State.rawValue.getter();
  sub_252E37044();
}

uint64_t sub_252B73A3C(uint64_t a1)
{
  sub_252E37EC4();
  ControlHomeFlow.State.rawValue.getter();
  sub_252E37044();

  return sub_252E37F14();
}

unint64_t sub_252B73AAC@<X0>(unint64_t *a1@<X8>)
{
  result = ControlHomeFlow.State.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t ControlHomeFlow.__allocating_init()()
{
  v0 = swift_allocObject();
  ControlHomeFlow.init()();
  return v0;
}

char *ControlHomeFlow.init()()
{
  *(v0 + 2) = 0xD000000000000033;
  *(v0 + 3) = 0x8000000252E82810;
  *(v0 + 4) = 0;
  sub_25293DEE0(__src);
  memcpy(v0 + 40, __src, 0x1F8uLL);
  v1 = OBJC_IVAR____TtC22HomeAutomationInternal15ControlHomeFlow_input;
  v2 = sub_252E34104();
  v3 = (*(*(v2 - 8) + 56))(&v0[v1], 1, 1, v2);
  v0[OBJC_IVAR____TtC22HomeAutomationInternal15ControlHomeFlow_shouldRunIntentSelection] = 1;
  v0[OBJC_IVAR____TtC22HomeAutomationInternal15ControlHomeFlow_state] = 0;
  v4 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v3);
  sub_252929E74((v4 + 96), v15);

  v5 = sub_252927BEC(v15, &v0[OBJC_IVAR____TtC22HomeAutomationInternal15ControlHomeFlow_outputPublisher]);
  v6 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v5);
  swift_beginAccess();
  v7 = *(v6 + 22);

  *&v0[OBJC_IVAR____TtC22HomeAutomationInternal15ControlHomeFlow_catProvider] = v7;
  v9 = *(_s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v8) + 29);

  v10 = &v0[OBJC_IVAR____TtC22HomeAutomationInternal15ControlHomeFlow_patternProvider];
  v11 = type metadata accessor for HomeAutomationCATPatternsExecutor(0);
  *(v10 + 3) = v11;
  *(v10 + 4) = &off_2864BA730;
  *v10 = v9;
  v12 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v11);
  sub_252929E74((v12 + 136), v15);

  sub_252927BEC(v15, &v0[OBJC_IVAR____TtC22HomeAutomationInternal15ControlHomeFlow_outputGenerator]);
  v13 = &v0[OBJC_IVAR____TtC22HomeAutomationInternal15ControlHomeFlow_guardFlowSupplier];
  *v13 = sub_252B73CD4;
  v13[1] = 0;
  return v0;
}

uint64_t sub_252B73CD4()
{
  v0 = sub_252E33D64();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541830, &qword_252E40AC8);
  sub_252E334A4();
  *(swift_allocObject() + 16) = xmmword_252E3C290;
  sub_252B7A2EC(v3);
  sub_252E33494();
  (*(v1 + 8))(v3, v0);
  v4 = sub_252E33144();

  return v4;
}

uint64_t sub_252B73E50(uint64_t a1)
{
  v2 = MEMORY[0x28223BE20](a1);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543798, &unk_252E4E410);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v90 - v4;
  v6 = sub_252E34164();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v90 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v94 = v90 - v12;
  MEMORY[0x28223BE20](v11);
  v14 = v90 - v13;
  v92 = OBJC_IVAR____TtC22HomeAutomationInternal15ControlHomeFlow_state;
  v93 = v1;
  LOBYTE(v102[0]) = *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal15ControlHomeFlow_state);
  if (ControlHomeFlow.State.rawValue.getter() == 0xD000000000000010 && 0x8000000252E67F20 == v15)
  {
  }

  else
  {
    v16 = sub_252E37DB4();

    if ((v16 & 1) == 0)
    {
      if (qword_27F53F500 != -1)
      {
        swift_once();
      }

      v41 = sub_252E36AD4();
      __swift_project_value_buffer(v41, qword_27F544DA8);
      sub_252CC7784(0xD000000000000060, 0x8000000252E82850, 0, 0xD000000000000076, 0x8000000252E828C0);
      return 0;
    }
  }

  v91 = v5;
  sub_252E35F84();
  sub_252E35F74();
  sub_252E35F34();

  v17 = sub_252E36804();
  v19 = v18;

  if (v19)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F544FF0, &unk_252E46670);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_252E3C290;
    *(v20 + 32) = 25705;
    v21 = v20 + 32;
    *(v20 + 72) = MEMORY[0x277D837D0];
    *(v20 + 40) = 0xE200000000000000;
    *(v20 + 48) = v17;
    *(v20 + 56) = v19;
    sub_252CC630C(v20);
    swift_setDeallocating();
    sub_25293847C(v21, &unk_27F541F10, &unk_252E42870);
    swift_deallocClassInstance();
  }

  v22 = [objc_opt_self() sharedAnalytics];
  if (v22)
  {
    v23 = v22;

    sub_252CC1408(v24);

    v25 = sub_252E36E24();

    [v23 logEventWithType:6503 context:v25];
  }

  else
  {
  }

  sub_252E340E4();
  v26 = *(v7 + 88);
  if (v26(v14, v6) == *MEMORY[0x277D5C158])
  {
    (*(v7 + 96))(v14, v6);
    v27 = *&v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540468, &unk_252E3FC60) + 48)];
    v28 = sub_252E358D4();
    (*(*(v28 - 8) + 8))(v14, v28);
    v29 = sub_252E34144();
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v90[1] = v27;
      v30 = sub_252CB09F0();
      if (qword_27F53F500 != -1)
      {
        swift_once();
      }

      v31 = sub_252E36AD4();
      __swift_project_value_buffer(v31, qword_27F544DA8);
      sub_252CC7784(0xD000000000000034, 0x8000000252E82A40, 0, 0xD000000000000076, 0x8000000252E828C0);
      v32 = v94;
      v33 = v2;
      sub_252E340E4();
      sub_252AB3FEC(v32, 0, v95);
      (*(v7 + 8))(v32, v6);
      v34 = v93;
      memcpy(v98, (v93 + 40), sizeof(v98));
      memcpy((v93 + 40), v95, 0x1F8uLL);
      sub_25293847C(v98, &qword_27F5404C8, &unk_252E3FD60);
      memcpy(v99, (v34 + 40), sizeof(v99));
      memcpy(v97, (v34 + 40), sizeof(v97));
      sub_252938414(v99, v96, &qword_27F5404C8, &unk_252E3FD60);
      v35 = sub_252C4FDF0(v97);
      memcpy(v100, v97, sizeof(v100));
      sub_25293847C(v100, &qword_27F5404C8, &unk_252E3FD60);
      v36 = *(v34 + 32);
      *(v34 + 32) = v35;

      v37 = sub_252E34104();
      v38 = *(v37 - 8);
      v39 = v91;
      (*(v38 + 16))(v91, v33, v37);
      (*(v38 + 56))(v39, 0, 1, v37);
      v40 = OBJC_IVAR____TtC22HomeAutomationInternal15ControlHomeFlow_input;
      swift_beginAccess();
      sub_252B7B518(v39, v34 + v40);
      swift_endAccess();
      *(v34 + OBJC_IVAR____TtC22HomeAutomationInternal15ControlHomeFlow_shouldRunIntentSelection) = 0;
      memcpy(v101, (v34 + 40), sizeof(v101));
      memcpy(v102, (v34 + 40), 0x1F8uLL);
      if (sub_252956B94(v102) == 1)
      {
      }

      else
      {
        v68 = sub_252938414(v101, v97, &qword_27F5404C8, &unk_252E3FD60);
        v69 = sub_252B680FC(v68);
        swift_beginAccess();
        v70 = *(v69 + 16);
        memcpy(v97, v101, sizeof(v97));
        sub_2529353AC(v97, v96);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v69 + 16) = v70;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v70 = sub_2529F7FB0(0, *(v70 + 2) + 1, 1, v70);
          *(v69 + 16) = v70;
        }

        v73 = *(v70 + 2);
        v72 = *(v70 + 3);
        if (v73 >= v72 >> 1)
        {
          v70 = sub_2529F7FB0((v72 > 1), v73 + 1, 1, v70);
        }

        *(v70 + 2) = v73 + 1;
        memcpy(&v70[504 * v73 + 32], v102, 0x1F8uLL);
        *(v69 + 16) = v70;
        swift_endAccess();

        sub_25293847C(v101, &qword_27F5404C8, &unk_252E3FD60);
      }

      goto LABEL_49;
    }
  }

  else
  {
    (*(v7 + 8))(v14, v6);
  }

  v42 = v2;
  sub_252E340E4();
  v43 = (v7 + 8);
  if (v26(v10, v6) == *MEMORY[0x277D5C150])
  {
    v44 = *v43;
    (*v43)(v10, v6);
    v45 = v94;
    sub_252E340E4();
    sub_252AB3FEC(v45, 0, v100);
    v44(v45, v6);
    memcpy(v101, v100, sizeof(v101));
    memcpy(v102, v100, 0x1F8uLL);
    if (sub_252956B94(v102) != 1)
    {
      v51 = v102[62];
      if (v102[62] && (type metadata accessor for ControlHomeIntent(), (v52 = swift_dynamicCastClass()) != 0))
      {
        v53 = v52;
        v54 = qword_27F53F500;
        v55 = v51;
        if (v54 != -1)
        {
          swift_once();
        }

        v56 = sub_252E36AD4();
        __swift_project_value_buffer(v56, qword_27F544DA8);
        v100[0] = 0;
        v100[1] = 0xE000000000000000;
        sub_252E379F4();
        MEMORY[0x2530AD570](0xD00000000000003FLL, 0x8000000252E82A00);
        v57 = [v53 description];
        v58 = sub_252E36F34();
        v60 = v59;

        MEMORY[0x2530AD570](v58, v60);

        sub_252CC7784(v100[0], v100[1], 0, 0xD000000000000076, 0x8000000252E828C0);
      }

      else
      {
        memcpy(v100, v102, sizeof(v100));
        v53 = sub_252AEFEB0();
      }

      v34 = v93;
      v74 = *(v93 + 32);
      *(v93 + 32) = v53;

      memcpy(v97, v102, sizeof(v97));
      GEOLocationCoordinate2DMake();
      memcpy(v98, (v34 + 40), sizeof(v98));
      memcpy((v34 + 40), v97, 0x1F8uLL);
      memcpy(v99, v101, sizeof(v99));
      sub_2529353AC(v99, v100);
      sub_25293847C(v98, &qword_27F5404C8, &unk_252E3FD60);
      v75 = sub_252E34104();
      v76 = *(v75 - 8);
      v77 = v91;
      (*(v76 + 16))(v91, v42, v75);
      (*(v76 + 56))(v77, 0, 1, v75);
      v78 = OBJC_IVAR____TtC22HomeAutomationInternal15ControlHomeFlow_input;
      swift_beginAccess();
      sub_252B7B518(v77, v34 + v78);
      v79 = swift_endAccess();
      *(v34 + OBJC_IVAR____TtC22HomeAutomationInternal15ControlHomeFlow_shouldRunIntentSelection) = 0;
      v80 = sub_252B680FC(v79);
      swift_beginAccess();
      v81 = *(v80 + 16);
      memcpy(v100, v101, sizeof(v100));
      sub_2529353AC(v100, v96);
      v82 = swift_isUniquelyReferenced_nonNull_native();
      *(v80 + 16) = v81;
      if ((v82 & 1) == 0)
      {
        v81 = sub_2529F7FB0(0, *(v81 + 2) + 1, 1, v81);
        *(v80 + 16) = v81;
      }

      v84 = *(v81 + 2);
      v83 = *(v81 + 3);
      if (v84 >= v83 >> 1)
      {
        v81 = sub_2529F7FB0((v83 > 1), v84 + 1, 1, v81);
      }

      *(v81 + 2) = v84 + 1;
      memcpy(&v81[504 * v84 + 32], v102, 0x1F8uLL);
      *(v80 + 16) = v81;
      swift_endAccess();
      sub_25293847C(v101, &qword_27F5404C8, &unk_252E3FD60);

      goto LABEL_49;
    }

    if (qword_27F53F500 != -1)
    {
      swift_once();
    }

    v46 = sub_252E36AD4();
    __swift_project_value_buffer(v46, qword_27F544DA8);
    v100[0] = 0;
    v100[1] = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000035, 0x8000000252E82970);
    sub_252E340E4();
    sub_252E37AE4();
    v44(v45, v6);
    sub_252CC3D90(v100[0], v100[1], 0xD000000000000076, 0x8000000252E828C0);
    goto LABEL_30;
  }

  v47 = *v43;
  (*v43)(v10, v6);
  v48 = v94;
  if (qword_27F53F500 != -1)
  {
    swift_once();
  }

  v49 = sub_252E36AD4();
  __swift_project_value_buffer(v49, qword_27F544DA8);
  sub_252CC7784(0xD000000000000021, 0x8000000252E82940, 0, 0xD000000000000076, 0x8000000252E828C0);
  sub_252E340E4();
  sub_252AB3FEC(v48, 0, v100);
  v47(v48, v6);
  memcpy(v101, v100, sizeof(v101));
  memcpy(v102, v100, 0x1F8uLL);
  if (sub_252956B94(v102) == 1)
  {
    v100[0] = 0;
    v100[1] = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000035, 0x8000000252E82970);
    sub_252E340E4();
    sub_252E37AE4();
    v47(v48, v6);
    sub_252CC3D90(v100[0], v100[1], 0xD000000000000076, 0x8000000252E828C0);
LABEL_30:

    return 0;
  }

  memcpy(v99, v102, sizeof(v99));
  v61 = sub_252AEFEB0();
  v62 = v48;
  v34 = v93;
  v63 = *(v93 + 32);
  *(v93 + 32) = v61;

  memcpy(v98, (v34 + 40), sizeof(v98));
  memcpy((v34 + 40), v101, 0x1F8uLL);
  memcpy(v99, v101, sizeof(v99));
  sub_2529353AC(v99, v97);
  sub_25293847C(v98, &qword_27F5404C8, &unk_252E3FD60);
  v64 = sub_252E34104();
  v65 = *(v64 - 8);
  v66 = v91;
  (*(v65 + 16))(v91, v42, v64);
  (*(v65 + 56))(v66, 0, 1, v64);
  v67 = OBJC_IVAR____TtC22HomeAutomationInternal15ControlHomeFlow_input;
  swift_beginAccess();
  sub_252B7B518(v66, v34 + v67);
  swift_endAccess();
  sub_252E340E4();
  sub_252937C40(v62);
  sub_25293847C(v101, &qword_27F5404C8, &unk_252E3FD60);
  v47(v62, v6);
LABEL_49:
  if (qword_27F53F500 != -1)
  {
    swift_once();
  }

  v85 = sub_252E36AD4();
  __swift_project_value_buffer(v85, qword_27F544DA8);
  v102[0] = 0;
  v102[1] = 0xE000000000000000;
  sub_252E379F4();

  v99[0] = 0xD000000000000016;
  v99[1] = 0x8000000252E7A390;
  memcpy(v102, (v34 + 40), 0x1F8uLL);
  memcpy(v101, (v34 + 40), sizeof(v101));
  sub_252938414(v102, v100, &qword_27F5404C8, &unk_252E3FD60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5404C8, &unk_252E3FD60);
  v86 = sub_252E36F94();
  MEMORY[0x2530AD570](v86);

  sub_252CC7784(v99[0], v99[1], 0, 0xD000000000000076, 0x8000000252E828C0);

  v101[0] = 0;
  v101[1] = 0xE000000000000000;
  sub_252E379F4();

  v101[0] = 0xD000000000000013;
  v101[1] = 0x8000000252E829B0;
  v100[0] = *(v34 + 32);
  v87 = v100[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5437A0, &unk_252E4E420);
  v88 = sub_252E36F94();
  MEMORY[0x2530AD570](v88);

  sub_252CC7784(v101[0], v101[1], 0, 0xD000000000000076, 0x8000000252E828C0);

  v101[0] = 0;
  v101[1] = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000023, 0x8000000252E829D0);
  LOBYTE(v100[0]) = *(v34 + v92);
  sub_252E37AE4();
  sub_252CC7784(v101[0], v101[1], 0, 0xD000000000000076, 0x8000000252E828C0);

  sub_252B680FC(v89);
  sub_252B6796C();

  swift_unknownObjectRelease();
  return 1;
}

uint64_t sub_252B751B8(uint64_t a1)
{
  v2[2832] = v1;
  v2[2831] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5437A8, &qword_252E4E438);
  v2[2833] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5437B0, &qword_252E4E440);
  v2[2834] = v3;
  v2[2835] = *(v3 - 8);
  v2[2836] = swift_task_alloc();
  v4 = sub_252E33EF4();
  v2[2837] = v4;
  v2[2838] = *(v4 - 8);
  v2[2839] = swift_task_alloc();
  v5 = sub_252E33D64();
  v2[2840] = v5;
  v2[2841] = *(v5 - 8);
  v2[2842] = swift_task_alloc();
  v6 = sub_252E334A4();
  v2[2843] = v6;
  v2[2844] = *(v6 - 8);
  v2[2845] = swift_task_alloc();
  v2[2846] = swift_task_alloc();
  v7 = sub_252E336B4();
  v2[2847] = v7;
  v2[2848] = *(v7 - 8);
  v2[2849] = swift_task_alloc();
  v8 = sub_252E339C4();
  v2[2850] = v8;
  v2[2851] = *(v8 - 8);
  v2[2852] = swift_task_alloc();
  v9 = sub_252E34164();
  v2[2853] = v9;
  v2[2854] = *(v9 - 8);
  v2[2855] = swift_task_alloc();
  v2[2856] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5437B8, &qword_252E4E448);
  v2[2857] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5437C0, &qword_252E4E450);
  v2[2858] = v10;
  v2[2859] = *(v10 - 8);
  v2[2860] = swift_task_alloc();
  v2[2861] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543798, &unk_252E4E410);
  v2[2862] = swift_task_alloc();
  v2[2863] = swift_task_alloc();
  v11 = sub_252E34104();
  v2[2864] = v11;
  v2[2865] = *(v11 - 8);
  v2[2866] = swift_task_alloc();
  v2[2867] = swift_task_alloc();
  v2[2868] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252B7565C, 0, 0);
}

uint64_t sub_252B7565C()
{
  v1 = v0[2832];
  v2 = *(v1 + 32);
  v0[2869] = v2;
  if (v2)
  {
    memcpy(v0 + 254, (v1 + 40), 0x1F8uLL);
    memcpy(v0 + 317, (v1 + 40), 0x1F8uLL);
    v2;
    sub_252938414((v0 + 254), (v0 + 380), &qword_27F5404C8, &unk_252E3FD60);
    v3 = swift_task_alloc();
    v0[2870] = v3;
    *v3 = v0;
    v3[1] = sub_252B75ABC;

    return sub_252C50064(v0 + 317);
  }

  else
  {
    if (qword_27F53F500 != -1)
    {
      swift_once();
      v1 = v0[2832];
    }

    v5 = v0[2862];
    v6 = sub_252E36AD4();
    __swift_project_value_buffer(v6, qword_27F544DA8);
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD00000000000001DLL, 0x8000000252E82A80);
    v7 = *(v1 + 32);
    v0[2829] = v7;
    v8 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5437A0, &unk_252E4E420);
    v9 = sub_252E36F94();
    MEMORY[0x2530AD570](v9);

    MEMORY[0x2530AD570](0xD000000000000010, 0x8000000252E82AA0);
    memcpy(v0 + 443, (v1 + 40), 0x1F8uLL);
    memcpy(v0 + 569, (v1 + 40), 0x1F8uLL);
    sub_252938414((v0 + 443), (v0 + 632), &qword_27F5404C8, &unk_252E3FD60);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5404C8, &unk_252E3FD60);
    v10 = sub_252E36F94();
    MEMORY[0x2530AD570](v10);

    MEMORY[0x2530AD570](0x202020200A726F20, 0xEE00207475706E49);
    v11 = OBJC_IVAR____TtC22HomeAutomationInternal15ControlHomeFlow_input;
    swift_beginAccess();
    sub_252938414(v1 + v11, v5, &qword_27F543798, &unk_252E4E410);
    v12 = sub_252E36F94();
    MEMORY[0x2530AD570](v12);

    MEMORY[0x2530AD570](10530, 0xE200000000000000);
    sub_252CC3D90(0, 0xE000000000000000, 0xD000000000000076, 0x8000000252E828C0);

    sub_252E33B24();

    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_252B75ABC(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 22952);
  v2[2871] = a1;

  memcpy(v2 + 191, v2 + 317, 0x1F8uLL);
  sub_25293847C((v2 + 191), &qword_27F5404C8, &unk_252E3FD60);

  return MEMORY[0x2822009F8](sub_252B75C00, 0, 0);
}

uint64_t sub_252B75C00()
{
  v257 = v0;
  v1 = v0[2832];
  memcpy(v0 + 128, (v1 + 40), 0x1F8uLL);
  memcpy(v0 + 1766, (v1 + 40), 0x1F8uLL);
  if (sub_252956B94(v0 + 1766) == 1)
  {

LABEL_5:
    if (qword_27F53F500 != -1)
    {
      swift_once();
    }

    v8 = v0[2862];
    v9 = v0[2832];
    v10 = sub_252E36AD4();
    __swift_project_value_buffer(v10, qword_27F544DA8);
    __dst[0] = 0;
    __dst[1] = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD00000000000001DLL, 0x8000000252E82A80);
    v11 = *(v9 + 32);
    v0[2829] = v11;
    v12 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5437A0, &unk_252E4E420);
    v13 = sub_252E36F94();
    MEMORY[0x2530AD570](v13);

    MEMORY[0x2530AD570](0xD000000000000010, 0x8000000252E82AA0);
    memcpy(v0 + 443, (v9 + 40), 0x1F8uLL);
    memcpy(v0 + 569, (v9 + 40), 0x1F8uLL);
    sub_252938414((v0 + 443), (v0 + 632), &qword_27F5404C8, &unk_252E3FD60);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5404C8, &unk_252E3FD60);
    v14 = sub_252E36F94();
    MEMORY[0x2530AD570](v14);

    MEMORY[0x2530AD570](0x202020200A726F20, 0xEE00207475706E49);
    v15 = OBJC_IVAR____TtC22HomeAutomationInternal15ControlHomeFlow_input;
    swift_beginAccess();
    sub_252938414(v9 + v15, v8, &qword_27F543798, &unk_252E4E410);
    v16 = sub_252E36F94();
    MEMORY[0x2530AD570](v16);

    MEMORY[0x2530AD570](10530, 0xE200000000000000);
    sub_252CC3D90(__dst[0], __dst[1], 0xD000000000000076, 0x8000000252E828C0);

    sub_252E33B24();
    goto LABEL_8;
  }

  v2 = v0[2865];
  v3 = v0[2864];
  v4 = v0[2863];
  v5 = v0[2832];
  memcpy(v0 + 2144, v0 + 1766, 0x1F8uLL);
  v6 = OBJC_IVAR____TtC22HomeAutomationInternal15ControlHomeFlow_input;
  swift_beginAccess();
  sub_252938414(v5 + v6, v4, &qword_27F543798, &unk_252E4E410);
  if ((*(v2 + 48))(v4, 1, v3) == 1)
  {
    v7 = v0[2863];

    sub_25293847C(v7, &qword_27F543798, &unk_252E4E410);
    goto LABEL_5;
  }

  v19 = v0[2832];
  v20 = *(v0[2865] + 32);
  v20(v0[2868], v0[2863], v0[2864]);
  v21 = v0;
  v22 = OBJC_IVAR____TtC22HomeAutomationInternal15ControlHomeFlow_state;
  v251 = v21;
  v21[2872] = OBJC_IVAR____TtC22HomeAutomationInternal15ControlHomeFlow_state;
  v23 = *(v19 + v22);
  if (v23 <= 5)
  {
    if (*(v19 + v22) <= 1u)
    {
      if (!*(v19 + v22))
      {
        v0 = v21;
        memcpy(v21 + 821, v21 + 128, 0x1F8uLL);
        sub_2529353AC((v0 + 821), (v0 + 506));
        if (qword_27F53F500 != -1)
        {
          swift_once();
        }

        v62 = v251[2871];
        v63 = v251[2868];
        v64 = v251[2865];
        v65 = v251[2864];
        v66 = v251[2832];
        v67 = sub_252E36AD4();
        __swift_project_value_buffer(v67, qword_27F544DA8);
        sub_252CC3D90(0xD000000000000021, 0x8000000252E82EB0, 0xD000000000000076, 0x8000000252E828C0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541830, &qword_252E40AC8);
        *(swift_allocObject() + 16) = xmmword_252E3C290;
        sub_252E33484();
        v68 = sub_252E33144();

        v69 = type metadata accessor for HomeStore(0);
        v70 = static HomeStore.shared.getter(v69);
        sub_2529E0898();

        v251[2830] = v68;
        v71 = swift_allocObject();
        *(v71 + 16) = sub_252B7D538;
        *(v71 + 24) = v66;
        sub_252E33454();

        sub_252E33AC4();

        sub_25293847C((v251 + 128), &qword_27F5404C8, &unk_252E3FD60);

        (*(v64 + 8))(v63, v65);

        goto LABEL_8;
      }

      v40 = v21;
      memcpy(__dst, v21 + 2144, 0x1F8uLL);
      memcpy(v40 + 2711, v40 + 128, 0x1F8uLL);
      sub_2529353AC((v40 + 2711), (v40 + 2396));
      v41 = sub_252A12D08();
      if (v41)
      {
        v42 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0(v41);
        v43 = sub_252AC5368(0x6553746E65746E69, 0xEF6E6F697463656CLL);

        if (v43 != 2 && (v43 & 1) == 0)
        {
          if (qword_27F53F500 != -1)
          {
            swift_once();
          }

          v44 = sub_252E36AD4();
          __swift_project_value_buffer(v44, qword_27F544DA8);
          sub_252CC4050(0xD000000000000053, 0x8000000252E82DF0, 0xD000000000000076, 0x8000000252E828C0, 0x2865747563657865, 0xE900000000000029, 243);
          sub_2529515FC(0, 18, 0xD00000000000001BLL, 0x8000000252E82E50);
        }
      }

      if (qword_27F53F500 != -1)
      {
        swift_once();
      }

      v19 = v251;
      v45 = v251[2868];
      v46 = v251[2867];
      v47 = v251[2865];
      v48 = v251[2864];
      v49 = sub_252E36AD4();
      __swift_project_value_buffer(v49, qword_27F544DA8);
      sub_252CC3D90(0xD00000000000001DLL, 0x8000000252E82DD0, 0xD000000000000076, 0x8000000252E828C0);
      memcpy(__dst, v251 + 2144, 0x1F8uLL);
      v51 = *(v47 + 16);
      v50 = (v47 + 16);
      v51(v46, v45, v48);
      memcpy(v19 + 2207, v19 + 128, 0x1F8uLL);
      sub_2529353AC((v19 + 2207), (v19 + 1955));
      if (qword_27F53F880 != -1)
      {
        swift_once();
      }

      v52 = qword_27F575DA0;
      v22 = *(qword_27F575DA0 + 16);
      if (v22 >= 0xB)
      {

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (!isUniquelyReferenced_nonNull_native || v22 >= *(v52 + 3) >> 1)
        {
          v52 = sub_2529F8F68(isUniquelyReferenced_nonNull_native, v22 + 1, 1, v52);
        }

        v54 = *(v52 + 2);
        memmove(v52 + 224, v52 + 208, 16 * v54 - 176);
        *(v52 + 2) = v54 + 1;
        *(v52 + 26) = &type metadata for PrioritizeSceneNameOverEvent;
        *(v52 + 27) = &off_2864BEE58;
        if (qword_27F53F430 != -1)
        {
          swift_once();
        }

        v55 = qword_27F575A98;
        v56 = qword_27F53F218;

        if (v56 != -1)
        {
          swift_once();
        }

        v57 = qword_27F5753E0;
        v58 = qword_27F53F8A0;

        if (v58 != -1)
        {
          swift_once();
        }

        v0 = v251;
        v243 = v251[2868];
        v59 = v251[2867];
        v60 = v251[2865];
        v228 = v251[2871];
        v233 = v251[2864];
        v61 = qword_27F575DC0;
        type metadata accessor for IntentSelectionFlow();
        swift_allocObject();

        v251[2826] = sub_252D3FCBC(__dst, v59, v55, v57, v61, v52);
        sub_252B7DA48(&qword_27F543808, type metadata accessor for IntentSelectionFlow, protocol conformance descriptor for IntentSelectionFlow);

        sub_252E33AC4();

        sub_25293847C((v251 + 128), &qword_27F5404C8, &unk_252E3FD60);

        (*(v60 + 8))(v243, v233);
        goto LABEL_8;
      }

      __break(1u);
    }

    else
    {
      if (v23 == 2)
      {
        v99 = v21;
        memcpy(v21 + 1703, v21 + 128, 0x1F8uLL);
        sub_2529353AC((v99 + 1703), (v99 + 2));
        if (qword_27F53F500 != -1)
        {
          swift_once();
        }

        v100 = sub_252E36AD4();
        __swift_project_value_buffer(v100, qword_27F544DA8);
        sub_252CC3D90(0xD00000000000001ALL, 0x8000000252E82DB0, 0xD000000000000076, 0x8000000252E828C0);
        type metadata accessor for ShowHomeRCHStrategy();
        v251[2820] = swift_allocObject();
        sub_252B791F0();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5437F8, &unk_252E4E460);
        swift_allocObject();
        sub_252E335D4();
        sub_252B7DA48(&qword_27F543800, type metadata accessor for ShowHomeRCHStrategy, protocol conformance descriptor for ShowHomeRCHStrategy);
        sub_252E33A44();
        if (qword_27F53F720 != -1)
        {
          swift_once();
        }

        v251[2873] = qword_27F575C30;
        memcpy(v251 + 1577, v251 + 2144, 0x1F8uLL);
        v101 = swift_task_alloc();
        v251[2874] = v101;
        *v101 = v251;
        v101[1] = sub_252B78AB0;

        return sub_252976614();
      }

      if (v23 != 4)
      {
        if (v23 == 5)
        {
          memcpy(v21 + 2270, v21 + 128, 0x1F8uLL);
          sub_2529353AC((v251 + 2270), (v251 + 2333));
          if (qword_27F53F500 != -1)
          {
            swift_once();
          }

          v30 = v251[2871];
          v242 = v251[2868];
          v26 = v251[2865];
          v27 = v251[2864];
          v31 = sub_252E36AD4();
          __swift_project_value_buffer(v31, qword_27F544DA8);
          sub_252CC3D90(0xD000000000000016, 0x8000000252E82C50, 0xD000000000000076, 0x8000000252E828C0);
          type metadata accessor for ControlHomeBlockingFlow();
          v32 = swift_allocObject();
          *(v32 + 528) = 0;
          *(v32 + 16) = v30;
          memcpy((v32 + 24), v251 + 2144, 0x1F8uLL);
          v251[2823] = v32;
          sub_252938414((v251 + 128), (v251 + 2459), &qword_27F5404C8, &unk_252E3FD60);
          sub_252B7DA48(&qword_27F5437E8, type metadata accessor for ControlHomeBlockingFlow, protocol conformance descriptor for ControlHomeBlockingFlow);

          v33 = v30;
          sub_252E33AC4();

          sub_25293847C((v251 + 128), &qword_27F5404C8, &unk_252E3FD60);

          goto LABEL_26;
        }

        goto LABEL_106;
      }

      v50 = v21;
      memcpy(v21 + 1892, v21 + 128, 0x1F8uLL);
      sub_2529353AC((v50 + 1892), (v50 + 1073));
      if (qword_27F53F500 == -1)
      {
LABEL_59:
        v72 = v50[2871];
        v73 = v50[2868];
        v74 = v50[2865];
        v75 = v50[2864];
        v76 = sub_252E36AD4();
        __swift_project_value_buffer(v76, qword_27F544DA8);
        sub_252CC3D90(0xD00000000000003FLL, 0x8000000252E82E70, 0xD000000000000076, 0x8000000252E828C0);
        *(v19 + v22) = 9;
        sub_252E33AB4();
        sub_25293847C((v50 + 128), &qword_27F5404C8, &unk_252E3FD60);

        (*(v74 + 8))(v73, v75);
        v0 = v50;
LABEL_8:

        v17 = v0[1];

        return v17();
      }
    }

    swift_once();
    goto LABEL_59;
  }

  if (*(v19 + v22) <= 8u)
  {
    if (v23 != 6)
    {
      if (v23 == 7)
      {
        v77 = v21;
        memcpy(__dst, v21 + 2144, 0x1F8uLL);
        memcpy(v77 + 2018, v77 + 128, 0x1F8uLL);
        sub_252938414((v77 + 128), (v77 + 1829), &qword_27F5404C8, &unk_252E3FD60);
        sub_2529353AC((v77 + 2018), (v77 + 1640));
        v78 = sub_252AEFEB0();
        type metadata accessor for AccessoriesWarmupManager();
        swift_allocObject();
        v79 = sub_252A75FBC(v78);
        memcpy(v77 + 2081, v77 + 1766, 0x1F8uLL);
        GEOLocationCoordinate2DMake();
        memcpy(v251 + 65, v79 + 2, 0x1F8uLL);
        memcpy(v79 + 2, v251 + 2081, 0x1F8uLL);

        sub_25293847C((v251 + 65), &qword_27F5404C8, &unk_252E3FD60);

        sub_252A760A0(v80);

        if (qword_27F53F498 != -1)
        {
          swift_once();
        }

        v81 = v251[2871];
        v82 = v251[2865];
        v234 = v251[2864];
        v244 = v251[2868];
        v83 = v251[2832];
        v84 = sub_252E36AD4();
        __swift_project_value_buffer(v84, qword_27F544C70);
        sub_252CC3D90(0xD000000000000017, 0x8000000252E82CA0, 0xD000000000000076, 0x8000000252E828C0);
        memcpy(__dst, v251 + 2144, 0x1F8uLL);
        type metadata accessor for ControlHomeModifyingFlow();
        swift_allocObject();
        v251[2821] = sub_252C63D74(v81, __dst);
        v85 = swift_allocObject();
        *(v85 + 16) = sub_252B7D4B0;
        *(v85 + 24) = v83;
        sub_252938414((v251 + 128), (v251 + 1325), &qword_27F5404C8, &unk_252E3FD60);
        sub_252B7DA48(&qword_27F5437F0, type metadata accessor for ControlHomeModifyingFlow, protocol conformance descriptor for ControlHomeModifyingFlow);

        v86 = v81;
        sub_252E33AC4();

        sub_25293847C((v251 + 128), &qword_27F5404C8, &unk_252E3FD60);

        (*(v82 + 8))(v244, v234);
        goto LABEL_68;
      }

      if (v23 == 8)
      {
        v24 = v21;
        memcpy(v21 + 2522, v21 + 128, 0x1F8uLL);
        sub_2529353AC((v24 + 2522), (v24 + 2585));
        if (qword_27F53F498 != -1)
        {
          swift_once();
        }

        v25 = v251[2871];
        v242 = v251[2868];
        v26 = v251[2865];
        v27 = v251[2864];
        v28 = sub_252E36AD4();
        __swift_project_value_buffer(v28, qword_27F544C70);
        sub_252CC3D90(0xD000000000000022, 0x8000000252E82C70, 0xD000000000000076, 0x8000000252E828C0);
        memcpy(__dst, v251 + 2144, 0x1F8uLL);
        type metadata accessor for RestrictedGuestCheckFlow();
        swift_allocObject();
        sub_252938414((v251 + 128), (v251 + 2648), &qword_27F5404C8, &unk_252E3FD60);
        v29 = v25;
        v251[2822] = sub_25296AB2C(__dst, v29);
        sub_252B7DA48(&qword_27F5406B8, type metadata accessor for RestrictedGuestCheckFlow, protocol conformance descriptor for RestrictedGuestCheckFlow);

        sub_252E33AC4();

        sub_25293847C((v251 + 128), &qword_27F5404C8, &unk_252E3FD60);

LABEL_26:

        (*(v26 + 8))(v242, v27);
LABEL_68:
        v0 = v251;
        goto LABEL_8;
      }

      goto LABEL_106;
    }

    v102 = v21;
    memcpy(__dst, v21 + 2144, 0x1F8uLL);
    memcpy(v102 + 1262, v102 + 128, 0x1F8uLL);
    sub_2529353AC((v102 + 1262), (v102 + 1199));
    sub_252A0EF78();
    if (v103)
    {
      memcpy(__dst, v251 + 2144, 0x1F8uLL);
      if ((sub_252A0F090() & 1) == 0)
      {
        if (qword_27F53F500 != -1)
        {
          swift_once();
        }

        v161 = v251[2868];
        v232 = v251[2871];
        v239 = v251[2865];
        v247 = v251[2864];
        v162 = v251[2856];
        v163 = v251[2855];
        v164 = v251[2854];
        v165 = v251[2853];
        v223 = v251[2852];
        v224 = v251[2851];
        v227 = v251[2850];
        v166 = sub_252E36AD4();
        __swift_project_value_buffer(v166, qword_27F544DA8);
        __dst[0] = 0;
        __dst[1] = 0xE000000000000000;
        sub_252E379F4();
        v252 = __dst[0];
        v254 = __dst[1];
        MEMORY[0x2530AD570](0xD000000000000020, 0x8000000252E82D40);
        memcpy(__dst, v251 + 2144, 0x1F8uLL);
        v167 = HomeAutomationIntent.description.getter();
        MEMORY[0x2530AD570](v167);

        MEMORY[0x2530AD570](0xD000000000000038, 0x8000000252E82D70);
        sub_252CC4050(v252, v254, 0xD000000000000076, 0x8000000252E828C0, 0x2865747563657865, 0xE900000000000029, 266);

        memcpy(__dst, v251 + 2144, 0x1F8uLL);
        v168 = v161;
        sub_252E340E4();
        sub_25294E0C8(__dst, v163, v162);
        v169 = *(v164 + 8);
        v170 = v165;
        v169(v163, v165);
        (*(v164 + 16))(v163, v162, v165);

        sub_252E340F4();
        sub_252E339B4();
        sub_252E33B34();
        sub_25293847C((v251 + 128), &qword_27F5404C8, &unk_252E3FD60);

        (*(v224 + 8))(v223, v227);
        v0 = v251;
        v169(v162, v170);
        (*(v239 + 8))(v168, v247);
        goto LABEL_8;
      }
    }

    memcpy(__dst, v251 + 2144, 0x1F8uLL);
    v104 = sub_252A16EC4();
    if (v104)
    {
      v105 = [v251[2871] userTask];
      if (v105)
      {
        v106 = v105;
        v107 = [v105 taskType];

        if (v107 == 4)
        {
          v108 = type metadata accessor for HomeStore(0);
          v109 = static HomeStore.shared.getter(v108);
          v110 = v109;
          v111 = v109[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_loadSucceeded];
          if (v111 == 2 || (v111 & 1) != 0)
          {
            v102 = v251;
            v112 = [v251[2871] filters];
            if (v112)
            {
              v113 = v112;
              v114 = v251[2871];
              type metadata accessor for HomeFilter();
              v115 = sub_252E37264();

              v116 = [v114 userTask];
              v117 = HomeStore.accessories(matching:supporting:)(v115, v116);
              v119 = v118;

              if (v119)
              {
                sub_252929F10(v117, 1);
                v102 = v251;
              }

              else
              {
                if (v117 >> 62)
                {
                  v211 = sub_252E378C4();
                }

                else
                {
                  v211 = *((v117 & 0xFFFFFFFFFFFFFF8) + 0x10);
                }

                sub_252929F10(v117, 0);
                v102 = v251;
                if (!v211)
                {
                  if (qword_27F53F500 != -1)
                  {
                    swift_once();
                  }

                  v0 = v251;
                  v212 = v251[2871];
                  v225 = v212;
                  v213 = v251[2865];
                  v241 = v251[2864];
                  v250 = v251[2868];
                  v214 = v251[2849];
                  v215 = v251[2848];
                  v216 = v251[2847];
                  v217 = sub_252E36AD4();
                  __swift_project_value_buffer(v217, qword_27F544DA8);
                  __dst[0] = 0;
                  __dst[1] = 0xE000000000000000;
                  sub_252E379F4();
                  v253 = __dst[0];
                  v255 = __dst[1];
                  MEMORY[0x2530AD570](0xD00000000000001BLL, 0x8000000252E82CE0);
                  v218 = [v212 description];
                  v219 = sub_252E36F34();
                  v221 = v220;

                  MEMORY[0x2530AD570](v219, v221);

                  MEMORY[0x2530AD570](0xD000000000000039, 0x8000000252E82D00);
                  memcpy(__dst, v251 + 2144, 0x1F8uLL);
                  v222 = HomeAutomationIntent.description.getter();
                  MEMORY[0x2530AD570](v222);

                  sub_252CC4050(v253, v255, 0xD000000000000076, 0x8000000252E828C0, 0x2865747563657865, 0xE900000000000029, 278);

                  (*(v215 + 104))(v214, *MEMORY[0x277D5B8A8], v216);
                  sub_252E33B44();
                  sub_25293847C((v251 + 128), &qword_27F5404C8, &unk_252E3FD60);

                  (*(v215 + 8))(v214, v216);
                  (*(v213 + 8))(v250, v241);
                  goto LABEL_8;
                }
              }
            }

            else
            {
            }
          }

          else
          {

            v102 = v251;
          }
        }
      }

      else
      {
        v104 = sub_252C515AC();
      }
    }

    v183 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v104);
    sub_252929E74((v183 + 288), (v102 + 2799));

    v184 = v102[2802];
    v185 = v102[2803];
    __swift_project_boxed_opaque_existential_1(v102 + 2799, v184);
    v186 = (*(v185 + 176))(v184, v185);
    __swift_destroy_boxed_opaque_existential_1(v102 + 2799);
    if (v186)
    {
      v187 = v102[2846];
      v188 = v102[2845];
      v189 = v102[2844];
      v190 = v102[2843];
      sub_252E33464();
      (*(v189 + 16))(v188, v187, v190);
      v191 = sub_2529F90D4(0, 1, 1, MEMORY[0x277D84F90]);
      v193 = v191[2];
      v192 = v191[3];
      if (v193 >= v192 >> 1)
      {
        v191 = sub_2529F90D4((v192 > 1), v193 + 1, 1, v191);
      }

      v194 = v251[2845];
      v195 = v251[2844];
      v196 = v251[2843];
      (*(v195 + 8))(v251[2846], v196);
      v191[2] = v193 + 1;
      (*(v195 + 32))(v191 + ((*(v195 + 80) + 32) & ~*(v195 + 80)) + *(v195 + 72) * v193, v194, v196);
    }

    else
    {
      v191 = MEMORY[0x277D84F90];
    }

    if (qword_27F53F500 != -1)
    {
      swift_once();
    }

    v0 = v251;
    v197 = v251[2871];
    v248 = v251[2868];
    v198 = v251[2865];
    v199 = v251[2864];
    v200 = v251[2843];
    v201 = v251[2832];
    v202 = sub_252E36AD4();
    __swift_project_value_buffer(v202, qword_27F544DA8);
    __dst[0] = 0;
    __dst[1] = 0xE000000000000000;
    sub_252E379F4();

    __dst[0] = 0xD00000000000001BLL;
    __dst[1] = 0x8000000252E82CC0;
    v203 = MEMORY[0x2530AD730](v191, v200);
    MEMORY[0x2530AD570](v203);

    sub_252CC3D90(__dst[0], __dst[1], 0xD000000000000076, 0x8000000252E828C0);

    v204 = sub_252E33144();

    v251[2819] = v204;
    v205 = swift_allocObject();
    *(v205 + 16) = sub_252B7D52C;
    *(v205 + 24) = v201;
    sub_252E33454();

    sub_252E33AC4();

    sub_25293847C((v251 + 128), &qword_27F5404C8, &unk_252E3FD60);

    (*(v198 + 8))(v248, v199);
LABEL_132:

    goto LABEL_8;
  }

  if (v23 != 9)
  {
    if (v23 == 10)
    {
      v87 = *(v21[2832] + 32);
      if (v87)
      {
        sub_252938414((v21 + 128), (v21 + 1010), &qword_27F5404C8, &unk_252E3FD60);
        v88 = v87;
        v89 = sub_252C50874();

        if (v89)
        {
          if (qword_27F53F500 != -1)
          {
            swift_once();
          }

          v90 = v251[2868];
          v229 = v251[2871];
          v235 = v90;
          v91 = v251[2866];
          v92 = v251[2865];
          v93 = v251[2864];
          v94 = sub_252E36AD4();
          __swift_project_value_buffer(v94, qword_27F544DA8);
          sub_252CC3D90(0xD000000000000018, 0x8000000252E82B40, 0xD000000000000076, 0x8000000252E828C0);
          (*(v92 + 16))(v91, v90, v93);
          type metadata accessor for ControlHomeFollowUpFlow(0);
          v95 = swift_allocObject();
          *(v95 + OBJC_IVAR____TtC22HomeAutomationInternal23ControlHomeFollowUpFlow_state) = 0;
          v96 = OBJC_IVAR____TtC22HomeAutomationInternal23ControlHomeFollowUpFlow_confirmationState;
          v97 = *MEMORY[0x277D5BED0];
          v98 = sub_252E33DE4();
          (*(*(v98 - 8) + 104))(v95 + v96, v97, v98);
          *(v95 + OBJC_IVAR____TtC22HomeAutomationInternal23ControlHomeFollowUpFlow_followUpSiriKitIntent) = 0;
          *(v95 + 16) = v229;
          memcpy((v95 + 24), v251 + 2144, 0x1F8uLL);
          v20(v95 + OBJC_IVAR____TtC22HomeAutomationInternal23ControlHomeFollowUpFlow_input, v91, v93);
          v251[2828] = v95;
          sub_252B7DA48(&qword_27F5437C8, type metadata accessor for ControlHomeFollowUpFlow, aYz);
          sub_252E33AF4();

          (*(v92 + 8))(v235, v93);
          goto LABEL_68;
        }
      }

      else
      {
        memcpy(v21 + 1136, v21 + 128, 0x1F8uLL);
        sub_2529353AC((v251 + 1136), (v251 + 1388));
      }

LABEL_114:
      v157 = v251[2871];
      v158 = v251[2868];
      v159 = v251[2865];
      v160 = v251[2864];
      sub_252E33B24();
      sub_25293847C((v251 + 128), &qword_27F5404C8, &unk_252E3FD60);

      v0 = v251;
      (*(v159 + 8))(v158, v160);
      goto LABEL_8;
    }

    if (v23 == 12)
    {
      v34 = v21;
      memcpy(v21 + 884, v21 + 128, 0x1F8uLL);
      sub_2529353AC((v34 + 884), (v34 + 947));
      if (qword_27F53F500 != -1)
      {
        swift_once();
      }

      v35 = v251[2871];
      v36 = v251[2868];
      v37 = v251[2865];
      v38 = v251[2864];
      v39 = sub_252E36AD4();
      __swift_project_value_buffer(v39, qword_27F544DA8);
      sub_252CC7784(0xD000000000000054, 0x8000000252E82AE0, 0, 0xD000000000000076, 0x8000000252E828C0);
      sub_252E33B24();
      sub_25293847C((v251 + 128), &qword_27F5404C8, &unk_252E3FD60);

      (*(v37 + 8))(v36, v38);
      goto LABEL_68;
    }

LABEL_106:
    v146 = v21;
    memcpy(v21 + 695, v21 + 128, 0x1F8uLL);
    sub_2529353AC((v146 + 695), (v146 + 758));
    if (qword_27F53F500 != -1)
    {
      swift_once();
    }

    v147 = sub_252E36AD4();
    __swift_project_value_buffer(v147, qword_27F544DA8);
    __dst[0] = 0;
    __dst[1] = 0xE000000000000000;
    sub_252E379F4();
    v251[2816] = 0;
    v251[2817] = 0xE000000000000000;
    MEMORY[0x2530AD570](0xD000000000000019, 0x8000000252E82AC0);
    *(v251 + 23032) = *(v19 + v22);
    sub_252E37AE4();
    sub_252CC3D90(v251[2816], v251[2817], 0xD000000000000076, 0x8000000252E828C0);

    sub_252E35F84();
    sub_252E35F74();
    sub_252E35F34();

    v148 = sub_252E36804();
    v150 = v149;

    if (v150)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F544FF0, &unk_252E46670);
      v151 = swift_allocObject();
      *(v151 + 16) = xmmword_252E3C290;
      *(v151 + 32) = 25705;
      v152 = v151 + 32;
      *(v151 + 72) = MEMORY[0x277D837D0];
      *(v151 + 40) = 0xE200000000000000;
      *(v151 + 48) = v148;
      *(v151 + 56) = v150;
      sub_252CC630C(v151);
      swift_setDeallocating();
      sub_25293847C(v152, &unk_27F541F10, &unk_252E42870);
      swift_deallocClassInstance();
    }

    v153 = [objc_opt_self() sharedAnalytics];
    if (v153)
    {
      v154 = v153;

      sub_252CC1408(v155);

      v156 = sub_252E36E24();

      [v154 logEventWithType:6504 context:v156];
    }

    goto LABEL_114;
  }

  v226 = v19;
  v120 = v21;
  v121 = v21[2842];
  v122 = v21[2841];
  v123 = v21[2839];
  v124 = v21[2838];
  v230 = v21[2837];
  v236 = v21[2840];
  memcpy(v21 + 1451, v21 + 128, 0x1F8uLL);
  sub_2529353AC(v120 + 11608, (v120 + 757));
  v125 = sub_252C4BEB8();
  v245 = v125;
  v126 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v125);
  sub_252929E74((v126 + 16), (v251 + 2794));

  __swift_project_boxed_opaque_existential_1(v120 + 2794, *(v120 + 2797));
  sub_252E33EE4();
  sub_252E33D54();
  (*(v124 + 8))(v123, v230);
  v231 = sub_252E33864();
  (*(v122 + 8))(v121, v236);
  v127 = __swift_destroy_boxed_opaque_existential_1(v251 + 2794);
  _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v127);

  v128 = [objc_allocWithZone(MEMORY[0x277CD4790]) init];
  [v128 canEvaluatePolicy:2 error:0];

  v130 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v129);
  sub_252929E74((v130 + 16), (v251 + 2789));

  __swift_project_boxed_opaque_existential_1(v120 + 2789, *(v120 + 2792));
  v237 = sub_252E338F4();
  __swift_destroy_boxed_opaque_existential_1(v251 + 2789);
  if (qword_27F53F500 != -1)
  {
    swift_once();
  }

  v131 = sub_252E36AD4();
  v251[2876] = __swift_project_value_buffer(v131, qword_27F544DA8);
  sub_252E379F4();

  __dst[0] = 0xD000000000000013;
  __dst[1] = 0x8000000252E82B60;
  v132 = 0x65736C6166;
  if (v245)
  {
    v133 = 1702195828;
  }

  else
  {
    v133 = 0x65736C6166;
  }

  if (v245)
  {
    v134 = 0xE400000000000000;
  }

  else
  {
    v134 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v133, v134);

  sub_252CC3D90(__dst[0], __dst[1], 0xD000000000000076, 0x8000000252E828C0);

  sub_252E379F4();

  __dst[0] = 0xD000000000000019;
  __dst[1] = 0x8000000252E82B80;
  if (v231)
  {
    v135 = 1702195828;
  }

  else
  {
    v135 = 0x65736C6166;
  }

  if (v231)
  {
    v136 = 0xE400000000000000;
  }

  else
  {
    v136 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v135, v136);

  sub_252CC3D90(__dst[0], __dst[1], 0xD000000000000076, 0x8000000252E828C0);

  sub_252E379F4();

  __dst[0] = 0xD000000000000013;
  __dst[1] = 0x8000000252E82BA0;
  if (v237)
  {
    v132 = 1702195828;
    v137 = 0xE400000000000000;
  }

  else
  {
    v137 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v132, v137);

  sub_252CC3D90(__dst[0], __dst[1], 0xD000000000000076, 0x8000000252E828C0);

  sub_252E379F4();

  __dst[0] = 0xD000000000000014;
  __dst[1] = 0x8000000252E82BC0;
  MEMORY[0x2530AD570](v132, v137);

  sub_252CC3D90(0xD000000000000014, 0x8000000252E82BC0, 0xD000000000000076, 0x8000000252E828C0);

  if (v245)
  {
    if (v237)
    {
      v138 = v251[2871];
      v139 = v251[2865];
      v238 = v251[2864];
      v246 = v251[2868];
      sub_252CC3D90(0xD000000000000028, 0x8000000252E82C20, 0xD000000000000076, 0x8000000252E828C0);
      type metadata accessor for ControlHomeHandoffFlowStrategy();
      v140 = swift_allocObject();
      *(v140 + 16) = v138;
      v141 = v138;
      v142 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v141);
      sub_252929E74((v142 + 16), (v251 + 2784));

      v144 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v143);
      sub_252929E74((v144 + 96), (v251 + 2779));

      v251[2818] = v140;
      sub_252E333F4();
      swift_allocObject();
      sub_252B7DA48(&qword_27F5437E0, type metadata accessor for ControlHomeHandoffFlowStrategy, asc_252E3CDF0);
      v145 = sub_252E333E4();
      *(v226 + v22) = 10;
      v0 = v251;
      v251[2824] = v145;
      sub_252E33AF4();
      sub_25293847C((v251 + 128), &qword_27F5404C8, &unk_252E3FD60);

      (*(v139 + 8))(v246, v238);
      goto LABEL_132;
    }

    v120 = v251;
    if ((v231 & 1) == 0)
    {
      sub_252B7BC6C(v251[2871]);
      if ((v171 & 1) == 0)
      {
        v206 = v251[2871];
        v207 = v251[2865];
        v240 = v251[2864];
        v249 = v251[2868];
        v208 = v251[2832];
        sub_252CC3D90(0xD000000000000014, 0x8000000252E82C00, 0xD000000000000076, 0x8000000252E828C0);
        v209 = (*(v208 + OBJC_IVAR____TtC22HomeAutomationInternal15ControlHomeFlow_guardFlowSupplier))(v208);
        *(v226 + v22) = 3;
        v251[2825] = v209;
        v210 = swift_allocObject();
        *(v210 + 16) = sub_252B7D460;
        *(v210 + 24) = v208;
        sub_252E33454();

        sub_252E33AC4();

        sub_25293847C((v251 + 128), &qword_27F5404C8, &unk_252E3FD60);

        (*(v207 + 8))(v249, v240);

        v0 = v251;
        goto LABEL_8;
      }
    }
  }

  v172 = *(v120 + 2871);
  sub_252B795A0(type metadata accessor for ControlHomeFlow, &qword_27F543830, type metadata accessor for ControlHomeFlow, protocol conformance descriptor for ControlHomeFlow);
  v173 = v172;
  v174 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v173);
  swift_beginAccess();
  v175 = *(v174 + 22);

  v177 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v176);
  sub_252929E74((v177 + 136), (v120 + 1387));

  v179 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v178);
  swift_beginAccess();
  v180 = *(v179 + 23);

  type metadata accessor for EagerMessagesGenerator();
  v181 = swift_allocObject();
  *(v120 + 2877) = v181;
  v181[8] = v173;
  v181[2] = v175;
  sub_252927BEC(v120 + 1387, (v181 + 3));
  v181[9] = v180;
  v182 = swift_task_alloc();
  *(v120 + 2878) = v182;
  *v182 = v120;
  v182[1] = sub_252B78DA0;

  return sub_252C7CF5C();
}

uint64_t sub_252B78AB0(uint64_t a1)
{
  *(*v1 + 23000) = a1;

  return MEMORY[0x2822009F8](sub_252B78BB0, 0, 0);
}

uint64_t sub_252B78BB0()
{
  v1 = v0[2875];
  v2 = v0[2871];
  v10 = v0[2868];
  v3 = v0[2865];
  v4 = v0[2864];
  v5 = v0[2860];
  v6 = v0[2859];
  v7 = v0[2858];
  sub_252E33A34();

  (*(v6 + 8))(v5, v7);
  sub_252E33B14();

  sub_25293847C((v0 + 128), &qword_27F5404C8, &unk_252E3FD60);

  (*(v3 + 8))(v10, v4);

  v8 = v0[1];

  return v8();
}

uint64_t sub_252B78DA0()
{

  return MEMORY[0x2822009F8](sub_252B78E9C, 0, 0);
}

uint64_t sub_252B78E9C()
{
  v1 = *(v0 + 22664);
  sub_252CC3D90(0xD000000000000011, 0x8000000252E82BE0, 0xD000000000000076, 0x8000000252E828C0);
  type metadata accessor for ControlHomeRCHStrategyAsync();
  *(v0 + 22616) = swift_allocObject();
  sub_252B79980((v0 + 17152), v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5437D0, &qword_252E4E458);
  swift_allocObject();
  sub_252E335D4();
  sub_252B7DA48(&qword_27F5437D8, type metadata accessor for ControlHomeRCHStrategyAsync, protocol conformance descriptor for ControlHomeRCHStrategyAsync);
  sub_252E33A44();
  if (qword_27F53F720 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 22976);
  v3 = *(v0 + 22968);
  v12 = *(v0 + 22944);
  v4 = *(v0 + 22920);
  v11 = *(v0 + 22912);
  v5 = *(v0 + 22688);
  v6 = *(v0 + 22680);
  v7 = *(v0 + 22672);
  v8 = *(v0 + 22656);
  sub_252E33A34();
  (*(v6 + 8))(v5, v7);
  *(v8 + v2) = 10;
  sub_252E33AD4();

  sub_25293847C(v0 + 1024, &qword_27F5404C8, &unk_252E3FD60);

  (*(v4 + 8))(v12, v11);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_252B791F0()
{
  type metadata accessor for ShowHomeIntent();
  type metadata accessor for ShowHomeIntentResponse();
  sub_252E335C4();
  type metadata accessor for ShowHomeUnsupportedValueFlowStrategy();
  v0 = swift_allocObject();
  v1 = *(_s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v0) + 29);

  v2 = type metadata accessor for HomeAutomationCATPatternsExecutor(0);
  v0[5] = v2;
  v0[6] = &off_2864BA730;
  v0[2] = v1;
  v3 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v2);
  swift_beginAccess();
  v4 = *(v3 + 22);

  v0[7] = v4;
  v6 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v5);
  sub_252929E74((v6 + 136), (v0 + 8));

  v8 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v7);
  swift_beginAccess();
  v9 = *(v8 + 23);

  v0[13] = v9;
  sub_252B7DA48(&qword_27F543870, type metadata accessor for ShowHomeUnsupportedValueFlowStrategy, byte_252E494B8);
  sub_252E33544();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5437B8, &qword_252E4E448);
  sub_252E33594();
  if (qword_27F53F720 != -1)
  {
    swift_once();
  }

  sub_252E33504();
  sub_252E33574();
  type metadata accessor for ShowHomeHandleIntentStrategy();
  v10 = swift_allocObject();
  v11 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v10);
  swift_beginAccess();
  v12 = *(v11 + 22);

  v10[2] = v12;
  v14 = *(_s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v13) + 29);

  v10[6] = v2;
  v10[7] = &off_2864BA730;
  v10[3] = v14;
  v16 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v15);
  sub_252929E74((v16 + 136), (v10 + 8));

  v18 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v17);
  swift_beginAccess();
  v19 = *(v18 + 23);

  v10[13] = v19;
  sub_252B7DA48(&qword_27F543878, type metadata accessor for ShowHomeHandleIntentStrategy, byte_252E5C388);
  sub_252E334F4();

  return sub_252E33564();
}

uint64_t sub_252B795A0(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), const char *a4)
{
  v8 = *(sub_252B680FC(a1) + 136);

  if (v8)
  {
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v10 = sub_252E36AD4();
    __swift_project_value_buffer(v10, qword_27F544D60);
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD00000000000003ALL, 0x8000000252E82FA0);
    sub_252E336A4();
    sub_252E37AE4();
    sub_252CC4050(0, 0xE000000000000000, 0xD000000000000075, 0x8000000252E6F840, 0xD000000000000016, 0x8000000252E82FE0, 25);

    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000010, 0x8000000252E83000);
    a1(0);
    sub_252B7DA48(a2, a3, a4);
    sub_252E35FA4();
    sub_252E35F24();

    sub_252E37AE4();

    sub_252CC4050(0, 0xE000000000000000, 0xD000000000000075, 0x8000000252E6F840, 0xD000000000000016, 0x8000000252E82FE0, 26);

    sub_2529515FC(6, 9, 0xD000000000000014, 0x8000000252E83020);
  }

  v11 = sub_252B680FC(v9);
  a1(0);
  sub_252B7DA48(a2, a3, a4);
  sub_252E35FA4();
  v12 = sub_252E35F24();

  *(v11 + 136) = v12;
}

uint64_t sub_252B79980@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v69 = a1;
  type metadata accessor for ControlHomeIntent();
  type metadata accessor for ControlHomeIntentResponse();
  sub_252E335C4();
  type metadata accessor for ControlHomeUnsupportedValueFlowStrategy();
  v3 = swift_allocObject();
  v4 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v3);
  swift_beginAccess();
  v5 = *(v4 + 22);

  v3[2] = v5;
  v7 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v6);
  sub_252929E74((v7 + 136), (v3 + 3));

  v9 = *(_s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v8) + 29);

  v10 = type metadata accessor for HomeAutomationCATPatternsExecutor(0);
  v3[11] = v10;
  v3[12] = &off_2864BA730;
  v3[8] = v9;
  *&v70[0] = v3;
  sub_252B7DA48(&qword_27F543880, type metadata accessor for ControlHomeUnsupportedValueFlowStrategy, aQ_14);
  sub_252E33544();

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5437A8, &qword_252E4E438);
  sub_252E33594();
  if (qword_27F53F720 != -1)
  {
    swift_once();
  }

  sub_252E33504();
  sub_252E33574();
  if (v69[384] == 22)
  {
    v12 = 0;
  }

  else
  {
    LOBYTE(v70[0]) = v69[384];
    v12 = sub_252AB54DC();
  }

  type metadata accessor for ControlHomeNeedsValueStrategy();
  v13 = swift_allocObject();

  v15 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v14);
  swift_beginAccess();
  v16 = *(v15 + 22);

  v13[3] = v16;
  v18 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v17);
  sub_252929E74((v18 + 136), (v13 + 4));

  v20 = *(_s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v19) + 29);

  v13[12] = v10;
  v13[13] = &off_2864BA730;
  v13[9] = v20;
  v13[2] = v12;
  *&v70[0] = v13;
  sub_252B7DA48(&qword_27F542AF0, type metadata accessor for ControlHomeNeedsValueStrategy, a9y_0);
  sub_252E334E4();

  sub_252E33554();
  type metadata accessor for ControlHomeNeedsConfirmationStrategy();
  v21 = swift_allocObject();

  v23 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v22);
  swift_beginAccess();
  v24 = *(v23 + 22);

  v21[2] = v24;
  v26 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v25);
  sub_252929E74((v26 + 136), (v21 + 3));

  v28 = *(_s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v27) + 29);

  v21[11] = v10;
  v21[12] = &off_2864BA730;
  v21[13] = v12;
  v21[8] = v28;
  sub_252B7DA48(&qword_27F540778, type metadata accessor for ControlHomeNeedsConfirmationStrategy, byte_252E3DBC0);
  sub_252E33514();

  v67 = a2;
  sub_252E335A4();
  type metadata accessor for ControlHomeNeedsDisambiguationStrategy();
  swift_allocObject();

  v68 = v12;
  *&v70[0] = sub_252DF2820(v29);
  sub_252B7DA48(&qword_27F543888, type metadata accessor for ControlHomeNeedsDisambiguationStrategy, byte_252E61908);
  sub_252E33524();

  sub_252E335B4();

  v31 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v30);
  swift_beginAccess();
  v62 = *(v31 + 22);

  v33 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v32);
  sub_252929E74((v33 + 136), v70);

  v35 = *(_s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v34) + 29);

  v73 = v10;
  v74 = &off_2864BA730;
  v72[0] = v35;
  type metadata accessor for ControlHomeConfirmIntentStrategy(0);
  v36 = swift_allocObject();
  v37 = __swift_mutable_project_boxed_opaque_existential_1(v72, v10);
  v66 = v11;
  v38 = *(v10 - 8);
  v64 = *(v38 + 64);
  MEMORY[0x28223BE20](v37);
  v65 = (v39 + 15) & 0xFFFFFFFFFFFFFFF0;
  v40 = (&v59 - v65);
  v63 = *(v38 + 16);
  v63(&v59 - v65);
  v41 = *v40;
  *(v36 + 11) = v10;
  *(v36 + 12) = &off_2864BA730;
  *(v36 + 8) = v41;
  v42 = OBJC_IVAR____TtC22HomeAutomationInternal32ControlHomeConfirmIntentStrategy_store;
  v43 = sub_252E35E44();
  v44 = *(v43 - 8);
  v60 = *(v44 + 56);
  v61 = v44 + 56;
  v60(&v36[v42], 1, 1, v43);
  *(v36 + 13) = v68;
  *(v36 + 2) = v62;
  sub_252927BEC(v70, (v36 + 24));
  __swift_destroy_boxed_opaque_existential_1(v72);
  v71 = v36;

  v46 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v45);
  swift_beginAccess();
  v47 = *(v46 + 22);

  v49 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v48);
  sub_252929E74((v49 + 136), v70);

  v51 = *(_s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v50) + 29);

  v73 = v10;
  v74 = &off_2864BA730;
  v72[0] = v51;
  v52 = swift_allocObject();
  v53 = __swift_mutable_project_boxed_opaque_existential_1(v72, v10);
  MEMORY[0x28223BE20](v53);
  v54 = (&v59 - v65);
  v63(&v59 - v65);
  v55 = *v54;
  *(v52 + 11) = v10;
  *(v52 + 12) = &off_2864BA730;
  *(v52 + 8) = v55;
  v60(&v52[OBJC_IVAR____TtC22HomeAutomationInternal32ControlHomeConfirmIntentStrategy_store], 1, 1, v43);
  *(v52 + 13) = v68;
  *(v52 + 2) = v47;
  sub_252927BEC(v70, (v52 + 24));
  __swift_destroy_boxed_opaque_existential_1(v72);
  sub_252B7DA48(&qword_27F543890, type metadata accessor for ControlHomeConfirmIntentStrategy, byte_252E50168);
  sub_252E33534();

  sub_252E33584();
  type metadata accessor for ControlHomeHandleIntentStrategy();
  v56 = swift_allocObject();
  v56[65] = 0x486C6F72746E6F43;
  v56[66] = 0xEB00000000656D6FLL;
  v57 = v69;
  memcpy(v56 + 2, v69, 0x1F8uLL);
  v56[67] = sub_252A4D720;
  v56[68] = 0;
  v72[0] = v56;
  sub_2529353AC(v57, v70);
  sub_252B7DA48(&qword_27F543898, type metadata accessor for ControlHomeHandleIntentStrategy, aQ_15);
  sub_252E334F4();

  sub_252E33564();
}

uint64_t sub_252B7A2EC@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v2 = sub_252E33EF4();
  v24 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_252E36AD4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + 32);
  if (v9)
  {
    v10 = v9;
    v11 = [v10 filters];
    if (v11)
    {
      v12 = v11;
      type metadata accessor for HomeFilter();
      v13 = sub_252E37264();

      v14 = sub_252DD5A58(v13);
    }

    else
    {
      v14 = MEMORY[0x277D84F90];
    }

    v16 = sub_252C758E0(v14);

    v15 = sub_252DD6238(v16);

    if (v15)
    {
      v17 = *(v15 + OBJC_IVAR____TtC22HomeAutomationInternal4Home_delegate);

      v15 = [v17 homeLocationStatus];

      v18 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v15 = 0;
  }

  v18 = 1;
LABEL_9:
  if (qword_27F53F500 != -1)
  {
    swift_once();
  }

  v19 = __swift_project_value_buffer(v5, qword_27F544DA8);
  (*(v6 + 16))(v8, v19, v5);
  v28 = 0;
  v29 = 0xE000000000000000;
  sub_252E379F4();

  v28 = 0xD000000000000016;
  v29 = 0x8000000252E83240;
  if (v18)
  {
    v20 = 0;
  }

  else
  {
    v20 = v15;
  }

  v26 = v20;
  v27 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541EE0, &qword_252E4D8A0);
  v21 = sub_252E36F94();
  MEMORY[0x2530AD570](v21);

  sub_252CC3D90(v28, v29, 0xD000000000000076, 0x8000000252E828C0);

  (*(v6 + 8))(v8, v5);
  if ((v18 & 1) != 0 || (v15 | 2) != 3)
  {
    return sub_252E33D44();
  }

  sub_252E33EE4();
  sub_252E33D54();
  return (*(v24 + 8))(v4, v2);
}

uint64_t sub_252B7A674(char a1)
{
  if (a1)
  {
    *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal15ControlHomeFlow_state) = 12;
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
    if (*(v1 + OBJC_IVAR____TtC22HomeAutomationInternal15ControlHomeFlow_shouldRunIntentSelection))
    {
      v5 = 1;
    }

    else
    {
      v5 = 6;
    }

    *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal15ControlHomeFlow_state) = v5;
    if (qword_27F53F500 != -1)
    {
      swift_once();
    }

    v6 = sub_252E36AD4();
    __swift_project_value_buffer(v6, qword_27F544DA8);
    sub_252E379F4();
    v3 = "l. Flow state set to: ";
    v4 = 0xD000000000000039;
  }

  MEMORY[0x2530AD570](v4, v3 | 0x8000000000000000);
  sub_252E37AE4();
  sub_252CC3D90(0, 0xE000000000000000, 0xD000000000000076, 0x8000000252E828C0);
}

uint64_t sub_252B7A840(char a1)
{
  if (a1)
  {
    *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal15ControlHomeFlow_state) = 12;
    if (qword_27F53F500 != -1)
    {
      swift_once();
    }

    v2 = sub_252E36AD4();
    __swift_project_value_buffer(v2, qword_27F544DA8);
    sub_252E379F4();
    v3 = "s. Flow state updated to: ";
    v4 = 0xD000000000000036;
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal15ControlHomeFlow_state) = 7;
    if (qword_27F53F500 != -1)
    {
      swift_once();
    }

    v5 = sub_252E36AD4();
    __swift_project_value_buffer(v5, qword_27F544DA8);
    sub_252E379F4();
    v3 = " result. Flow state set to: ";
    v4 = 0xD00000000000003ALL;
  }

  MEMORY[0x2530AD570](v4, v3 | 0x8000000000000000);
  sub_252E37AE4();
  sub_252CC3D90(0, 0xE000000000000000, 0xD000000000000076, 0x8000000252E828C0);
}

uint64_t sub_252B7A9F0(char a1)
{
  if (a1)
  {
    *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal15ControlHomeFlow_state) = 12;
    if (qword_27F53F500 != -1)
    {
      swift_once();
    }

    v2 = sub_252E36AD4();
    __swift_project_value_buffer(v2, qword_27F544DA8);
    sub_252E379F4();
    v3 = "he flowState to ";
    v4 = 0xD00000000000003CLL;
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal15ControlHomeFlow_state) = 4;
    if (qword_27F53F500 != -1)
    {
      swift_once();
    }

    v5 = sub_252E36AD4();
    __swift_project_value_buffer(v5, qword_27F544DA8);
    sub_252E379F4();
    v3 = "FlowTask already set";
    v4 = 0xD000000000000040;
  }

  MEMORY[0x2530AD570](v4, v3 | 0x8000000000000000);
  sub_252E37AE4();
  sub_252CC3D90(0, 0xE000000000000000, 0xD000000000000076, 0x8000000252E828C0);
}

uint64_t sub_252B7ABA0()
{
  v0 = sub_252E33D64();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541830, &qword_252E40AC8);
  sub_252E334A4();
  *(swift_allocObject() + 16) = xmmword_252E3C290;
  sub_252B7A2EC(v3);
  sub_252E33494();
  (*(v1 + 8))(v3, v0);
  v4 = sub_252E33144();

  return v4;
}

uint64_t sub_252B7AD18(void *__src)
{
  v2 = v1;
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(__srca, __src, sizeof(__srca));
  GEOLocationCoordinate2DMake();
  memcpy(v16, (v2 + 40), sizeof(v16));
  memcpy((v2 + 40), __srca, 0x1F8uLL);
  sub_2529353AC(__dst, v13);
  sub_25293847C(v16, &qword_27F5404C8, &unk_252E3FD60);
  memcpy(v13, __dst, sizeof(v13));
  v4 = sub_252AEFEB0();
  v5 = *(v2 + 32);
  *(v2 + 32) = v4;

  v7 = sub_252B680FC(v6);
  swift_beginAccess();
  v8 = *(v7 + 16);
  sub_2529353AC(__dst, v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v7 + 16) = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = sub_2529F7FB0(0, *(v8 + 2) + 1, 1, v8);
    *(v7 + 16) = v8;
  }

  v11 = *(v8 + 2);
  v10 = *(v8 + 3);
  if (v11 >= v10 >> 1)
  {
    v8 = sub_2529F7FB0((v10 > 1), v11 + 1, 1, v8);
  }

  *(v8 + 2) = v11 + 1;
  memcpy(&v8[504 * v11 + 32], __dst, 0x1F8uLL);
  *(v7 + 16) = v8;
  swift_endAccess();

  *(v2 + OBJC_IVAR____TtC22HomeAutomationInternal15ControlHomeFlow_state) = 6;
  return result;
}

uint64_t ControlHomeFlow.deinit()
{

  memcpy(__dst, (v0 + 40), sizeof(__dst));
  sub_25293847C(__dst, &qword_27F5404C8, &unk_252E3FD60);
  sub_25293847C(v0 + OBJC_IVAR____TtC22HomeAutomationInternal15ControlHomeFlow_input, &qword_27F543798, &unk_252E4E410);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC22HomeAutomationInternal15ControlHomeFlow_outputPublisher));

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC22HomeAutomationInternal15ControlHomeFlow_outputGenerator));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC22HomeAutomationInternal15ControlHomeFlow_patternProvider));

  return v0;
}

uint64_t ControlHomeFlow.__deallocating_deinit()
{
  ControlHomeFlow.deinit();

  return swift_deallocClassInstance();
}

void (*sub_252B7B028(uint64_t *a1))(void *a1)
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

uint64_t sub_252B7B0E0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25293B808;

  return sub_252B751B8(a1);
}

uint64_t sub_252B7B17C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ControlHomeFlow(0);

  return sub_252E33644();
}

unint64_t sub_252B7B1B8(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v7 = a3 - v6;
  if (__OFSUB__(a3, v6))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v8 = *v5;
  v9 = (v8 + 32 + 16 * result);
  if (v7)
  {
    v10 = *(v8 + 16);
    v11 = __OFSUB__(v10, a2);
    v12 = v10 - a2;
    if (!v11)
    {
      result = &v9[2 * a3];
      v13 = (v8 + 32 + 16 * a2);
      if (result != v13 || result >= v13 + 16 * v12)
      {
        v15 = a3;
        v16 = a5;
        v17 = a4;
        result = memmove(result, v13, 16 * v12);
        a3 = v15;
        a4 = v17;
        a5 = v16;
      }

      v18 = *(v8 + 16);
      v11 = __OFADD__(v18, v7);
      v19 = v18 + v7;
      if (!v11)
      {
        *(v8 + 16) = v19;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 >= 1)
  {
    *v9 = a4;
    v9[1] = a5;
    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

unint64_t sub_252B7B280(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 504 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 504 * a3;
  v13 = (v7 + 32 + 504 * a2);
  if (result != v13 || result >= v13 + 504 * v12)
  {
    result = memmove(result, v13, 504 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

char *sub_252B7B358(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v8 = a4;
  v4 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  type metadata accessor for HomeFilter();
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v4, v11);
  v11 = v4 - v11;
  if (v14)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v11)
  {
    v10 = v12 >> 62;
    if (!(v12 >> 62))
    {
      result = v5[2];
      v15 = &result[-v7];
      if (!__OFSUB__(result, v7))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = sub_252E378C4();
    v15 = &result[-v7];
    if (!__OFSUB__(result, v7))
    {
LABEL_6:
      v16 = &v6[v4];
      v17 = &v9[v7];
      if (v16 != v17 || v16 >= &v17[8 * v15])
      {
        memmove(v16, v17, 8 * v15);
      }

      if (v10)
      {
        result = sub_252E378C4();
      }

      else
      {
        result = v5[2];
      }

      if (!__OFADD__(result, v11))
      {
        v5[2] = &result[v11];
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v4 > 0)
  {
    *v6 = v8;
    result = v8;
    if (v4 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

char *sub_252B7B474(char *result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result += v6 + a3 + 32;
  v10 = (v6 + 32 + a2);
  if (result != v10 || result >= &v10[v9])
  {
    v12 = a3;
    result = memmove(result, v10, v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_252B7B518(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543798, &unk_252E4E410);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_252B7B588(const void *a1)
{
  v42 = sub_252E36AD4();
  v2 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v41 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_252E36AB4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v46, a1, 0x1F8uLL);
  if (qword_27F53F5D0 != -1)
  {
LABEL_24:
    swift_once();
  }

  v8 = qword_27F544F58;
  sub_252E36A94();
  sub_252E375D4();
  sub_252E36A84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540190, &qword_252E4A5F0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_252E3C290;
  memcpy((v9 + 32), v46, 0x1F8uLL);
  v44[0] = v9;
  sub_2529353AC(v46, v45);

  sub_25297AA34(v10);
  v11 = v44[0];
  v12 = *(v44[0] + 16);
  if (v12)
  {
    v30 = v8;
    v31 = v7;
    v32 = v5;
    v33 = v4;
    v13 = 0;
    v39 = "reset the stack.";
    v40 = "ShouldHandleControlHomeIntent";
    v37 = (v2 + 16);
    v38 = 0x8000000252E83220;
    v34 = v12 - 1;
    v4 = 32;
    v35 = 0xD00000000000002CLL;
    v36 = (v2 + 8);
    while (1)
    {
      memcpy(v45, (v11 + v4), sizeof(v45));
      memcpy(v44, (v11 + v4), sizeof(v44));
      sub_2529353AC(v45, v43);
      v2 = sub_252AEFEB0();
      if (qword_27F53F4E8 != -1)
      {
        swift_once();
      }

      v14 = v42;
      v5 = __swift_project_value_buffer(v42, qword_27F544D60);
      (*v37)(v41, v5, v14);
      v44[0] = 0;
      v44[1] = 0xE000000000000000;
      sub_252E379F4();
      MEMORY[0x2530AD570](v35, v40 | 0x8000000000000000);
      v43[0] = [v2 userTask];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540420, &unk_252E3C800);
      v15 = sub_252E36F94();
      MEMORY[0x2530AD570](v15);

      MEMORY[0x2530AD570](0x737265746C69460ALL, 0xEA0000000000203ALL);
      v16 = [v2 filters];
      if (v16)
      {
        v17 = v16;
        type metadata accessor for HomeFilter();
        v18 = sub_252E37264();
      }

      else
      {
        v18 = 0;
      }

      v43[0] = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540428, &unk_252E46650);
      v19 = sub_252E36F94();
      MEMORY[0x2530AD570](v19);

      MEMORY[0x2530AD570](0x203A656D69540ALL, 0xE700000000000000);
      v43[0] = [v2 time];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542778, &unk_252E4E770);
      v20 = sub_252E36F94();
      MEMORY[0x2530AD570](v20);

      v21 = v39;
      v22 = v41;
      sub_252CC3D90(v44[0], v44[1], 0xD000000000000076, v39 | 0x8000000000000000);

      (*v36)(v22, v42);
      v23 = sub_252C4F88C();
      v44[0] = 0;
      v44[1] = 0xE000000000000000;
      sub_252E379F4();

      v44[0] = 0xD000000000000014;
      v44[1] = v38;
      if (v23)
      {
        v24 = 1702195828;
      }

      else
      {
        v24 = 0x65736C6166;
      }

      if (v23)
      {
        v25 = 0xE400000000000000;
      }

      else
      {
        v25 = 0xE500000000000000;
      }

      MEMORY[0x2530AD570](v24, v25);

      sub_252CC3D90(v44[0], v44[1], 0xD000000000000076, v21 | 0x8000000000000000);

      sub_252935408(v45);

      if (v23)
      {

        v26 = sub_252E375C4();
        v7 = v31;
        sub_252E36A74(v26, &dword_252917000, v30, "ShouldHandleControlHomeIntent", 29, 2, v31, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);
        v27 = 1;
        v5 = v32;
        v4 = v33;
        goto LABEL_23;
      }

      if (v34 == v13)
      {
        break;
      }

      ++v13;
      v4 += 504;
      v7 = 0xE000000000000000;
      if (v13 >= *(v11 + 16))
      {
        __break(1u);
        goto LABEL_24;
      }
    }

    v5 = v32;
    v4 = v33;
    v8 = v30;
    v7 = v31;
  }

  else
  {
  }

  v28 = sub_252E375C4();
  sub_252E36A74(v28, &dword_252917000, v8, "ShouldHandleControlHomeIntent", 29, 2, v7, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);
  v27 = 0;
LABEL_23:
  (*(v5 + 8))(v7, v4);
  return v27;
}

void sub_252B7BC6C(__objc2_class **a1)
{
  v1 = a1;
  v2 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(a1);
  sub_252929E74((v2 + 16), &v224);

  __swift_project_boxed_opaque_existential_1(&v224, v226);
  v3 = sub_252E338E4();
  __swift_destroy_boxed_opaque_existential_1(&v224);
  if (qword_27F53F500 != -1)
  {
    swift_once();
  }

  v4 = 0xD000000000000076;
  v5 = 0x65736C6166;
  v6 = 1702195828;
  v7 = sub_252E36AD4();
  __swift_project_value_buffer(v7, qword_27F544DA8);
  v224 = 0;
  v225 = 0xE000000000000000;
  sub_252E379F4();

  v224 = 0xD00000000000002ALL;
  v225 = 0x8000000252E83260;
  if (v3)
  {
    v8 = 1702195828;
  }

  else
  {
    v8 = 0x65736C6166;
  }

  if (v3)
  {
    v9 = 0xE400000000000000;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v8, v9);

  sub_252CC3D90(v224, v225, 0xD000000000000076, 0x8000000252E828C0);

  if ((v3 & 1) == 0)
  {
    return;
  }

  if ((sub_252C4D664(5) & 1) == 0)
  {
    v4 = &off_279711000;
    v15 = [v1 userTask];
    if (v15)
    {
      v16 = v15;
      v17 = [v15 taskType];

      if (v17 == 1)
      {
        v18 = type metadata accessor for HomeStore(0);
        v19 = static HomeStore.shared.getter(v18);
        v20 = HomeStore.accessories(for:)(v1);
        v22 = v21;

        if ((v22 & 1) == 0)
        {
          goto LABEL_35;
        }

        v23 = v20;
        v24 = 1;
        goto LABEL_248;
      }
    }

LABEL_249:
    v29 = 0;
LABEL_250:
    v4 = 0xD000000000000076;
    goto LABEL_251;
  }

  v10 = type metadata accessor for HomeStore(0);
  v11 = static HomeStore.shared.getter(v10);
  v12 = [v1 filters];
  if (v12)
  {
    v13 = v12;
    type metadata accessor for HomeFilter();
    v14 = sub_252E37264();
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  v20 = HomeStore.scenes(matching:)(v14);
  v26 = v25;

  if (v26)
  {
    v27 = v20;
    v28 = 1;
    goto LABEL_21;
  }

  v4 = (v20 & 0xFFFFFFFFFFFFFF8);
  v6 = 0x65736C6166;
  if (v20 >> 62)
  {
    v30 = sub_252E378C4();
    if (v30)
    {
      goto LABEL_25;
    }

LABEL_243:
    sub_252929F10(v20, 0);
    v29 = 0;
    goto LABEL_244;
  }

  v30 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v30)
  {
    goto LABEL_243;
  }

LABEL_25:
  v1 = 0;
  v5 = v20 & 0xC000000000000001;
  while (1)
  {
    if (v30 == v1)
    {
      goto LABEL_243;
    }

    if (v5)
    {
      MEMORY[0x2530ADF00](v1, v20);
      if (__OFADD__(v1, 1))
      {
        break;
      }

      goto LABEL_30;
    }

    if (v1 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_171;
    }

    if (__OFADD__(v1, 1))
    {
      break;
    }

LABEL_30:
    v31 = sub_252B2FD74();

    v1 = (v1 + 1);
    if (v31)
    {
      sub_252929F10(v20, 0);
      v29 = 1;
LABEL_244:
      v5 = 0x65736C6166;
      v6 = 1702195828;
      goto LABEL_250;
    }
  }

  __break(1u);
LABEL_35:
  v32 = v20 & 0xFFFFFFFFFFFFFF8;
  v223 = v20;
  if (!(v20 >> 62))
  {
    v33 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v33)
    {
      goto LABEL_37;
    }

LABEL_246:
    v23 = v223;
LABEL_247:
    v24 = 0;
LABEL_248:
    sub_252929F10(v23, v24);
    goto LABEL_249;
  }

  v33 = sub_252E378C4();
  v32 = v20 & 0xFFFFFFFFFFFFFF8;
  if (!v33)
  {
    goto LABEL_246;
  }

LABEL_37:
  v221 = v32;
  v222 = v33;
  v34 = [v1 v4[214]];
  if (!v34 || (v35 = v34, v36 = [v34 attribute], v35, v36 != 10) || ((v37 = objc_msgSend(v1, v4[214]), v38 = &off_279711000, !v37) || (v39 = v37, v40 = objc_msgSend(v37, sel_value), v39, !v40) || (objc_msgSend(v40, sel_doubleValue), v42 = v41, v40, v42 != 1.0)) && ((v43 = objc_msgSend(v1, v4[214])) == 0 || (v44 = v43, v45 = objc_msgSend(v43, sel_value), v44, !v45) || (v46 = objc_msgSend(v45, sel_integerValue), v45, v46 != 1)))
  {
    v49 = [v1 v4[214]];
    if (!v49)
    {
      goto LABEL_246;
    }

    v50 = v49;
    v51 = [v49 attribute];

    if (v51 != 8)
    {
      goto LABEL_246;
    }

    v52 = [v1 v4[214]];
    v38 = v223;
    if (!v52)
    {
      goto LABEL_77;
    }

    v53 = v52;
    v54 = [v52 value];

    v4 = 0xD000000000000076;
    if (!v54 || (v55 = [v54 BOOLValue], v54, (v55 & 1) != 0))
    {
LABEL_51:
      v27 = v38;
      goto LABEL_52;
    }

    v73 = 0;
    v74 = v223 & 0xC000000000000001;
    v218 = (v223 + 32);
    v219 = v223 & 0xC000000000000001;
    while (1)
    {
      if (v74)
      {
        v75 = MEMORY[0x2530ADF00](v73, v38);
        v57 = __OFADD__(v73++, 1);
        if (v57)
        {
          goto LABEL_104;
        }
      }

      else
      {
        if (v73 >= *(v221 + 16))
        {
          goto LABEL_262;
        }

        v75 = *&v218[8 * v73];

        v57 = __OFADD__(v73++, 1);
        if (v57)
        {
LABEL_104:
          __break(1u);
LABEL_105:

          goto LABEL_106;
        }
      }

      v76 = (*v75 + 256);
      v77 = *v76;
      if ((*v76)() == 7)
      {

        goto LABEL_169;
      }

      v78 = (*(*v75 + 272))();
      if (*(v78 + 16))
      {
        sub_252E37EC4();
        MEMORY[0x2530AE390](7);
        v79 = sub_252E37F14();
        v80 = -1 << *(v78 + 32);
        v81 = v79 & ~v80;
        if ((*(v78 + 56 + ((v81 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v81))
        {
          v82 = ~v80;
          while (*(*(v78 + 48) + 8 * v81) != 7)
          {
            v81 = (v81 + 1) & v82;
            if (((*(v78 + 56 + ((v81 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v81) & 1) == 0)
            {
              goto LABEL_91;
            }
          }

LABEL_169:
          v4 = 0xD000000000000076;
          goto LABEL_172;
        }
      }

LABEL_91:

      v84 = (v77)(v83);
      if (v84 == 38)
      {
        break;
      }

      v85 = MEMORY[0x277D84FA0];
      v4 = 0xD000000000000076;
      if (v84 == 41)
      {
        v86 = &unk_2864ADA88;
LABEL_95:
        v85 = sub_2529FC004(v86);
      }

      if (*(v85 + 16))
      {
        sub_252E37EC4();
        MEMORY[0x2530AE390](7);
        v87 = sub_252E37F14();
        v88 = -1 << *(v85 + 32);
        v89 = v87 & ~v88;
        if ((*(v85 + 56 + ((v89 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v89))
        {
          v90 = ~v88;
          while (*(*(v85 + 48) + 8 * v89) != 7)
          {
            v89 = (v89 + 1) & v90;
            if (((*(v85 + 56 + ((v89 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v89) & 1) == 0)
            {
              goto LABEL_81;
            }
          }

LABEL_171:

LABEL_172:
          v153 = 0;
          v154 = v223;
          while (2)
          {
            if (v219)
            {
              v157 = MEMORY[0x2530ADF00](v153, v154);
            }

            else
            {
              if (v153 >= *(v221 + 16))
              {
                goto LABEL_263;
              }

              v157 = *&v218[8 * v153];
            }

            v220 = v153 + 1;
            if (__OFADD__(v153, 1))
            {
              goto LABEL_260;
            }

            v158 = (*v157 + 256);
            v159 = *v158;
            v160 = (*v158)();
            if (v160 == 28)
            {
              goto LABEL_198;
            }

            v161 = (*(*v157 + 272))();
            if (*(v161 + 16))
            {
              v162 = v159;
              v163 = v161;
              sub_252E37EC4();
              MEMORY[0x2530AE390](28);
              v164 = sub_252E37F14();
              v165 = v163;
              v159 = v162;
              v166 = -1 << *(v165 + 32);
              v167 = v164 & ~v166;
              if ((*(v165 + 56 + ((v167 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v167))
              {
                v168 = ~v166;
                while (*(*(v165 + 48) + 8 * v167) != 28)
                {
                  v167 = (v167 + 1) & v168;
                  if (((*(v165 + 56 + ((v167 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v167) & 1) == 0)
                  {
                    goto LABEL_186;
                  }
                }

LABEL_197:

LABEL_198:
                v182 = (v159)(v160);
                if (v182 == 27)
                {
                  goto LABEL_217;
                }

                v183 = (*(*v157 + 272))();
                if (*(v183 + 16))
                {
                  v184 = v159;
                  v185 = v183;
                  sub_252E37EC4();
                  MEMORY[0x2530AE390](27);
                  v186 = sub_252E37F14();
                  v187 = v185;
                  v159 = v184;
                  v188 = -1 << *(v187 + 32);
                  v189 = v186 & ~v188;
                  if ((*(v187 + 56 + ((v189 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v189))
                  {
                    v190 = ~v188;
                    while (*(*(v187 + 48) + 8 * v189) != 27)
                    {
                      v189 = (v189 + 1) & v190;
                      if (((*(v187 + 56 + ((v189 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v189) & 1) == 0)
                      {
                        goto LABEL_204;
                      }
                    }

LABEL_216:

                    goto LABEL_217;
                  }
                }

LABEL_204:

                v192 = (v159)(v191);
                if (v192 == 38)
                {
                  v195 = &unk_2864ADB00;
LABEL_208:
                  v194 = sub_2529FC004(v195);
                }

                else
                {
                  v193 = v192;
                  v194 = MEMORY[0x277D84FA0];
                  if (v193 == 41)
                  {
                    v195 = &unk_2864ADB28;
                    goto LABEL_208;
                  }
                }

                if (*(v194 + 16))
                {
                  v196 = v159;
                  v197 = v194;
                  sub_252E37EC4();
                  MEMORY[0x2530AE390](27);
                  v198 = sub_252E37F14();
                  v199 = v197;
                  v159 = v196;
                  v200 = -1 << *(v199 + 32);
                  v201 = v198 & ~v200;
                  if ((*(v199 + 56 + ((v201 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v201))
                  {
                    v202 = ~v200;
                    while (*(*(v199 + 48) + 8 * v201) != 27)
                    {
                      v201 = (v201 + 1) & v202;
                      if (((*(v199 + 56 + ((v201 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v201) & 1) == 0)
                      {
                        goto LABEL_214;
                      }
                    }

                    goto LABEL_216;
                  }
                }

LABEL_214:

                v182 = sub_252D4FE78(27);
                if ((v182 & 1) == 0)
                {
LABEL_215:

                  v156 = v222;
LABEL_174:
                  v153 = v220;
                  v154 = v223;
                  if (v220 == v156)
                  {
                    sub_252929F10(v223, 0);
                    v29 = 0;
                    goto LABEL_251;
                  }

                  continue;
                }

LABEL_217:
                if ((v159)(v182) == 4)
                {
LABEL_235:
                  sub_252929F10(v223, 0);

                  goto LABEL_22;
                }

                v203 = (*(*v157 + 272))();
                if (*(v203 + 16))
                {
                  sub_252E37EC4();
                  MEMORY[0x2530AE390](4);
                  v204 = sub_252E37F14();
                  v205 = -1 << *(v203 + 32);
                  v206 = v204 & ~v205;
                  if ((*(v203 + 56 + ((v206 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v206))
                  {
                    v207 = ~v205;
                    do
                    {
                      if (*(*(v203 + 48) + 8 * v206) == 4)
                      {
                        goto LABEL_234;
                      }

                      v206 = (v206 + 1) & v207;
                    }

                    while (((*(v203 + 56 + ((v206 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v206) & 1) != 0);
                  }
                }

                v209 = (v159)(v208);
                if (v209 == 38)
                {
                  v211 = &unk_2864ADB50;
LABEL_227:
                  v210 = sub_2529FC004(v211);
                }

                else
                {
                  v210 = MEMORY[0x277D84FA0];
                  if (v209 == 41)
                  {
                    v211 = &unk_2864ADB78;
                    goto LABEL_227;
                  }
                }

                if (*(v210 + 16))
                {
                  sub_252E37EC4();
                  MEMORY[0x2530AE390](4);
                  v212 = sub_252E37F14();
                  v213 = -1 << *(v210 + 32);
                  v214 = v212 & ~v213;
                  if ((*(v210 + 56 + ((v214 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v214))
                  {
                    v215 = ~v213;
                    do
                    {
                      if (*(*(v210 + 48) + 8 * v214) == 4)
                      {
                        goto LABEL_234;
                      }

                      v214 = (v214 + 1) & v215;
                    }

                    while (((*(v210 + 56 + ((v214 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v214) & 1) != 0);
                  }
                }

                v155 = sub_252D4FE78(4);

                v156 = v222;
                if (v155)
                {
LABEL_238:
                  v27 = v223;
                  goto LABEL_52;
                }

                goto LABEL_174;
              }
            }

            break;
          }

LABEL_186:

          v170 = (v159)(v169);
          if (v170 == 38)
          {
            v173 = &unk_2864ADAB0;
LABEL_190:
            v172 = sub_2529FC004(v173);
          }

          else
          {
            v171 = v170;
            v172 = MEMORY[0x277D84FA0];
            if (v171 == 41)
            {
              v173 = &unk_2864ADAD8;
              goto LABEL_190;
            }
          }

          if (*(v172 + 16))
          {
            v174 = v159;
            v175 = v172;
            sub_252E37EC4();
            MEMORY[0x2530AE390](28);
            v176 = sub_252E37F14();
            v177 = v175;
            v178 = v175 + 56;
            v179 = -1 << *(v175 + 32);
            v180 = v176 & ~v179;
            if ((*(v175 + 56 + ((v180 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v180))
            {
              v159 = v174;
              v181 = ~v179;
              while (*(*(v177 + 48) + 8 * v180) != 28)
              {
                v180 = (v180 + 1) & v181;
                if (((*(v178 + ((v180 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v180) & 1) == 0)
                {
                  goto LABEL_196;
                }
              }

              goto LABEL_197;
            }
          }

LABEL_196:

          goto LABEL_215;
        }
      }

LABEL_81:

      v38 = v223;
      v74 = v223 & 0xC000000000000001;
      if (v73 == v222)
      {
        goto LABEL_51;
      }
    }

    v86 = &unk_2864ADA60;
    v4 = 0xD000000000000076;
    goto LABEL_95;
  }

  v47 = 0;
  v48 = v223 & 0xC000000000000001;
  v218 = (v223 + 32);
  v219 = v223 & 0xC000000000000001;
  while (1)
  {
    if (v48)
    {
      v56 = MEMORY[0x2530ADF00](v47);
      v57 = __OFADD__(v47++, 1);
      if (!v57)
      {
        goto LABEL_57;
      }

LABEL_76:
      __break(1u);
LABEL_77:
      v23 = v38;
      goto LABEL_247;
    }

    if (v47 >= *(v221 + 16))
    {
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
      return;
    }

    v56 = *&v218[8 * v47];

    v57 = __OFADD__(v47++, 1);
    if (v57)
    {
      goto LABEL_76;
    }

LABEL_57:
    v58 = (*v56 + 256);
    v59 = *v58;
    v38 = v58;
    if ((*v58)() == 4)
    {

      goto LABEL_79;
    }

    v60 = (*(*v56 + 272))();
    if (*(v60 + 16))
    {
      sub_252E37EC4();
      MEMORY[0x2530AE390](4);
      v61 = sub_252E37F14();
      v62 = -1 << *(v60 + 32);
      v63 = v61 & ~v62;
      if ((*(v60 + 56 + ((v63 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v63))
      {
        break;
      }
    }

LABEL_63:

    v66 = (v59)(v65);
    if (v66 == 38)
    {
      v68 = &unk_2864AD920;
      v4 = 0xD000000000000076;
    }

    else
    {
      v67 = MEMORY[0x277D84FA0];
      v4 = 0xD000000000000076;
      if (v66 != 41)
      {
        goto LABEL_68;
      }

      v68 = &unk_2864AD948;
    }

    v67 = sub_2529FC004(v68);
LABEL_68:
    if (*(v67 + 16))
    {
      sub_252E37EC4();
      MEMORY[0x2530AE390](4);
      v69 = sub_252E37F14();
      v70 = -1 << *(v67 + 32);
      v71 = v69 & ~v70;
      if ((*(v67 + 56 + ((v71 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v71))
      {
        v72 = ~v70;
        while (*(*(v67 + 48) + 8 * v71) != 4)
        {
          v71 = (v71 + 1) & v72;
          if (((*(v67 + 56 + ((v71 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v71) & 1) == 0)
          {
            goto LABEL_53;
          }
        }

        goto LABEL_105;
      }
    }

LABEL_53:

    v48 = v223 & 0xC000000000000001;
    if (v47 == v222)
    {
      v27 = v223;
LABEL_52:
      v28 = 0;
LABEL_21:
      sub_252929F10(v27, v28);
      goto LABEL_22;
    }
  }

  v64 = ~v62;
  while (*(*(v60 + 48) + 8 * v63) != 4)
  {
    v63 = (v63 + 1) & v64;
    if (((*(v60 + 56 + ((v63 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v63) & 1) == 0)
    {
      goto LABEL_63;
    }
  }

LABEL_79:
  v4 = 0xD000000000000076;
LABEL_106:
  v91 = 0;
  v92 = v223;
  while (2)
  {
    if (v219)
    {
      v95 = MEMORY[0x2530ADF00](v91, v92);
    }

    else
    {
      if (v91 >= *(v221 + 16))
      {
        goto LABEL_261;
      }

      v95 = *&v218[8 * v91];
    }

    v57 = __OFADD__(v91++, 1);
    if (v57)
    {
      __break(1u);
      goto LABEL_259;
    }

    v96 = (*v95 + 256);
    v97 = *v96;
    v98 = (*v96)();
    if (v98 == 28)
    {
      goto LABEL_132;
    }

    v99 = (*(*v95 + 272))();
    if (!*(v99 + 16) || (v100 = v97, v101 = v99, sub_252E37EC4(), MEMORY[0x2530AE390](28), v102 = sub_252E37F14(), v103 = v101, v97 = v100, v104 = -1 << *(v103 + 32), v105 = v102 & ~v104, ((*(v103 + 56 + ((v105 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v105) & 1) == 0))
    {
LABEL_120:

      v108 = (v97)(v107);
      if (v108 == 38)
      {
        v111 = &unk_2864AD970;
      }

      else
      {
        v109 = v108;
        v110 = MEMORY[0x277D84FA0];
        if (v109 != 41)
        {
          goto LABEL_125;
        }

        v111 = &unk_2864AD998;
      }

      v110 = sub_2529FC004(v111);
LABEL_125:
      if (*(v110 + 16))
      {
        v112 = v97;
        v113 = v110;
        sub_252E37EC4();
        MEMORY[0x2530AE390](28);
        v114 = sub_252E37F14();
        v115 = v113;
        v97 = v112;
        v116 = -1 << *(v115 + 32);
        v117 = v114 & ~v116;
        if ((*(v115 + 56 + ((v117 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v117))
        {
          v118 = ~v116;
          while (*(*(v115 + 48) + 8 * v117) != 28)
          {
            v117 = (v117 + 1) & v118;
            if (((*(v115 + 56 + ((v117 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v117) & 1) == 0)
            {
              goto LABEL_130;
            }
          }

          goto LABEL_131;
        }
      }

LABEL_130:

      goto LABEL_149;
    }

    v106 = ~v104;
    while (*(*(v103 + 48) + 8 * v105) != 28)
    {
      v105 = (v105 + 1) & v106;
      if (((*(v103 + 56 + ((v105 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v105) & 1) == 0)
      {
        goto LABEL_120;
      }
    }

LABEL_131:

LABEL_132:
    v119 = (v97)(v98);
    if (v119 == 27)
    {
      break;
    }

    v120 = (*(*v95 + 272))();
    if (*(v120 + 16))
    {
      v121 = v97;
      v122 = v120;
      sub_252E37EC4();
      MEMORY[0x2530AE390](27);
      v123 = sub_252E37F14();
      v124 = v122;
      v97 = v121;
      v125 = -1 << *(v124 + 32);
      v126 = v123 & ~v125;
      if ((*(v124 + 56 + ((v126 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v126))
      {
        v127 = ~v125;
        while (*(*(v124 + 48) + 8 * v126) != 27)
        {
          v126 = (v126 + 1) & v127;
          if (((*(v124 + 56 + ((v126 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v126) & 1) == 0)
          {
            goto LABEL_138;
          }
        }

LABEL_150:

        break;
      }
    }

LABEL_138:

    v129 = (v97)(v128);
    if (v129 == 38)
    {
      v132 = &unk_2864AD9C0;
LABEL_142:
      v131 = sub_2529FC004(v132);
    }

    else
    {
      v130 = v129;
      v131 = MEMORY[0x277D84FA0];
      if (v130 == 41)
      {
        v132 = &unk_2864AD9E8;
        goto LABEL_142;
      }
    }

    if (*(v131 + 16))
    {
      v133 = v97;
      v134 = v131;
      sub_252E37EC4();
      MEMORY[0x2530AE390](27);
      v135 = sub_252E37F14();
      v136 = v134;
      v97 = v133;
      v137 = -1 << *(v136 + 32);
      v138 = v135 & ~v137;
      if ((*(v136 + 56 + ((v138 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v138))
      {
        v139 = ~v137;
        while (*(*(v136 + 48) + 8 * v138) != 27)
        {
          v138 = (v138 + 1) & v139;
          if (((*(v136 + 56 + ((v138 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v138) & 1) == 0)
          {
            goto LABEL_148;
          }
        }

        goto LABEL_150;
      }
    }

LABEL_148:

    v119 = sub_252D4FE78(27);
    if ((v119 & 1) == 0)
    {
LABEL_149:

      v94 = v222;
LABEL_108:
      v92 = v223;
      if (v91 == v94)
      {
        sub_252929F10(v223, 0);
        v29 = 1;
        goto LABEL_251;
      }

      continue;
    }

    break;
  }

  if ((v97)(v119) == 7)
  {
    goto LABEL_235;
  }

  v140 = (*(*v95 + 272))();
  if (!*(v140 + 16) || (sub_252E37EC4(), MEMORY[0x2530AE390](7), v141 = sub_252E37F14(), v142 = -1 << *(v140 + 32), v143 = v141 & ~v142, ((*(v140 + 56 + ((v143 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v143) & 1) == 0))
  {
LABEL_157:

    v146 = (v97)(v145);
    if (v146 == 38)
    {
      v148 = &unk_2864ADA10;
    }

    else
    {
      v147 = MEMORY[0x277D84FA0];
      if (v146 != 41)
      {
        goto LABEL_162;
      }

      v148 = &unk_2864ADA38;
    }

    v147 = sub_2529FC004(v148);
LABEL_162:
    if (*(v147 + 16))
    {
      sub_252E37EC4();
      MEMORY[0x2530AE390](7);
      v149 = sub_252E37F14();
      v150 = -1 << *(v147 + 32);
      v151 = v149 & ~v150;
      if ((*(v147 + 56 + ((v151 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v151))
      {
        v152 = ~v150;
        while (*(*(v147 + 48) + 8 * v151) != 7)
        {
          v151 = (v151 + 1) & v152;
          if (((*(v147 + 56 + ((v151 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v151) & 1) == 0)
          {
            goto LABEL_107;
          }
        }

        goto LABEL_234;
      }
    }

LABEL_107:

    v93 = sub_252D4FE78(7);

    v94 = v222;
    if (v93)
    {
      goto LABEL_238;
    }

    goto LABEL_108;
  }

  v144 = ~v142;
  while (*(*(v140 + 48) + 8 * v143) != 7)
  {
    v143 = (v143 + 1) & v144;
    if (((*(v140 + 56 + ((v143 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v143) & 1) == 0)
    {
      goto LABEL_157;
    }
  }

LABEL_234:
  sub_252929F10(v223, 0);

LABEL_22:
  v29 = 0;
LABEL_251:
  v224 = 0;
  v225 = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](v4 - 60, 0x8000000252E83290);
  if (v29)
  {
    v216 = v6;
  }

  else
  {
    v216 = v5;
  }

  if (v29)
  {
    v217 = 0xE400000000000000;
  }

  else
  {
    v217 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v216, v217);

  MEMORY[0x2530AD570](0x6F4C20726F6F4420, 0xED0000203A736B63);
  MEMORY[0x2530AD570](v216, v217);

  sub_252CC3D90(v224, v225, 0xD000000000000076, 0x8000000252E828C0);
}

void sub_252B7D4B0(_BYTE *a1, void *a2)
{
  *(v2 + OBJC_IVAR____TtC22HomeAutomationInternal15ControlHomeFlow_state) = *a1;
  v4 = *(v2 + 32);
  *(v2 + 32) = a2;
  v3 = a2;
}

unint64_t sub_252B7D544()
{
  result = qword_27F543810;
  if (!qword_27F543810)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ControlHomeFlow.State, &type metadata for ControlHomeFlow.State, v0, v1);
    atomic_store(result, &qword_27F543810);
  }

  return result;
}

uint64_t sub_252B7D598(uint64_t a1)
{
  result = sub_252B7DA48(&qword_27F543818, type metadata accessor for ControlHomeFlow, byte_252E4E53C);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for ControlHomeFlow(uint64_t a1)
{
  result = qword_27F543838;
  if (!qword_27F543838)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_252B7D63C(uint64_t a1)
{
  result = sub_252B7DA48(&qword_27F543820, type metadata accessor for ControlHomeFlow, protocol conformance descriptor for ControlHomeFlow);
  *(a1 + 8) = result;
  return result;
}

void sub_252B7D740(uint64_t a1)
{
  sub_252B7D9D8(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of ControlHomeFlow.execute()(uint64_t a1)
{
  v6 = (*(*v1 + 400) + **(*v1 + 400));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_25293B808;

  return v6(a1);
}

void sub_252B7D9D8(uint64_t a1)
{
  if (!qword_27F543848)
  {
    sub_252E34104();
    v1 = sub_252E37734();
    if (!v2)
    {
      atomic_store(v1, &qword_27F543848);
    }
  }
}

uint64_t sub_252B7DA48(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_252B7DA9C(void *a1)
{
  v2 = v1;
  *(v1 + 16) = MEMORY[0x277D84F90];
  *(v1 + 24) = 0;
  v4 = type metadata accessor for HomeStore(0);
  v5 = static HomeStore.shared.getter(v4);
  v6 = v5[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_loadSucceeded];
  if (v6 != 2 && (v6 & 1) == 0 || (v7 = [a1 filters]) == 0)
  {

LABEL_11:
    v11 = MEMORY[0x277D84F90];
    goto LABEL_12;
  }

  v8 = v7;
  type metadata accessor for HomeFilter();
  v9 = sub_252E37264();

  v10 = [a1 userTask];
  v11 = HomeStore.services(matching:supporting:)(v9, v10);
  v13 = v12;

  if (v13)
  {
    v14 = v11;
    v15 = 1;
LABEL_10:
    sub_252929F10(v14, v15);
    goto LABEL_11;
  }

  if (v11 >> 62)
  {
    if (sub_252E378C4())
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_9:
    v14 = v11;
    v15 = 0;
    goto LABEL_10;
  }

LABEL_12:
  *(v2 + 16) = v11;

  v16 = *(v2 + 24);
  *(v2 + 24) = a1;

  return v2;
}

uint64_t sub_252B7DC00()
{
  v2 = *(v0 + 16);
  if (v2 >> 62)
  {
LABEL_84:
    v3 = sub_252E378C4();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v3)
  {
    v4 = 0;
    v1 = v2 & 0xC000000000000001;
    do
    {
      if (v1)
      {
        v5 = MEMORY[0x2530ADF00](v4, v2);
        v6 = (v4 + 1);
        if (__OFADD__(v4, 1))
        {
LABEL_14:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_83:
          __break(1u);
          goto LABEL_84;
        }

        v5 = *(v2 + 8 * v4 + 32);

        v6 = (v4 + 1);
        if (__OFADD__(v4, 1))
        {
          goto LABEL_14;
        }
      }

      v7 = OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate;
      v8 = [*(v5 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) serviceSubtype];
      if (v8 || (v8 = [*(v5 + v7) associatedServiceType]) != 0)
      {
        v12 = v8;

        v3 = sub_252E36F34();
        v1 = v13;

        if (qword_27F53F8B8 == -1)
        {
          goto LABEL_21;
        }

        goto LABEL_94;
      }

      ++v4;
    }

    while (v6 != v3);
  }

  v9 = v63;
  v10 = *(v63 + 16);
  if (v10 >> 62)
  {
    result = sub_252E378C4();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  if ((v10 & 0xC000000000000001) != 0)
  {

    MEMORY[0x2530ADF00](0, v10);
    goto LABEL_23;
  }

  if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
LABEL_97:
    swift_once();
LABEL_62:
    v38 = sub_252E36AD4();
    __swift_project_value_buffer(v38, qword_27F544D18);

    v39 = sub_252E36AC4();
    v40 = sub_252E374C4();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v72 = v42;
      *v41 = 136315138;
      v43 = *(v63 + 16);
      if (v43 >> 62)
      {
        v44 = sub_252E378C4();
      }

      else
      {
        v44 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v45 = MEMORY[0x277D84F90];
      if (v44)
      {
        v64 = v42;
        v66 = v41;
        v67 = v40;
        v68 = v39;
        v71 = MEMORY[0x277D84F90];

        result = sub_2529AA420(0, v44 & ~(v44 >> 63), 0);
        v70 = v44;
        if (v44 < 0)
        {
          __break(1u);
          return result;
        }

        v46 = 0;
        v45 = v71;
        v47 = v43;
        v48 = v43 & 0xC000000000000001;
        do
        {
          if (v48)
          {
            v49 = MEMORY[0x2530ADF00](v46, v47);
          }

          else
          {
            v49 = *(v47 + 8 * v46 + 32);
          }

          v50 = [*(v49 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) serviceType];
          v51 = sub_252E36F34();
          v53 = v52;

          if (v3[2] && (v54 = sub_252A44A10(v51, v53), (v55 & 1) != 0))
          {
            v56 = *(v3[7] + 8 * v54);
          }

          else
          {
            v56 = 0;
          }

          v58 = *(v71 + 16);
          v57 = *(v71 + 24);
          if (v58 >= v57 >> 1)
          {
            sub_2529AA420((v57 > 1), v58 + 1, 1);
          }

          ++v46;
          *(v71 + 16) = v58 + 1;
          *(v71 + 8 * v58 + 32) = v56;
        }

        while (v70 != v46);

        v39 = v68;
        v40 = v67;
        v42 = v64;
        v41 = v66;
      }

      v59 = MEMORY[0x2530AD730](v45, &type metadata for HomeDeviceType);
      v61 = v60;

      v62 = sub_252BE2CE0(v59, v61, &v72);

      *(v41 + 4) = v62;
      _os_log_impl(&dword_252917000, v39, v40, "Contains non homogeneous services: %s", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v42);
      MEMORY[0x2530AED00](v42, -1, -1);
      MEMORY[0x2530AED00](v41, -1, -1);
    }

    return 0;
  }

  while (1)
  {

    v65 = sub_252CD94E0();
    v15 = v14;

    if (v15)
    {

      v65 = sub_252CD941C();
    }

    v16 = *(v9 + 16);
    if (v16 >> 62)
    {
      if (!sub_252E378C4())
      {
LABEL_86:

        return 1;
      }
    }

    else if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_86;
    }

    if ((v16 & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v1 = *(v16 + 32);

      goto LABEL_31;
    }

    __break(1u);
LABEL_94:
    swift_once();
LABEL_21:
    v9 = v63;
    if (*(off_27F546230 + 2))
    {
      sub_252A44A10(v3, v1);
    }

LABEL_23:
  }

  v1 = MEMORY[0x2530ADF00](0, v16);

LABEL_31:
  v69 = sub_252CD941C();

  v17 = *(v9 + 16);
  if (v17 >> 62)
  {
    v2 = sub_252E378C4();
  }

  else
  {
    v2 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2)
  {
    v18 = 0;
    do
    {
      if ((v17 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x2530ADF00](v18, v17);
        v20 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          goto LABEL_81;
        }
      }

      else
      {
        if (v18 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_82;
        }

        v19 = *(v17 + 8 * v18 + 32);

        v20 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
LABEL_81:
          __break(1u);
LABEL_82:
          __break(1u);
          goto LABEL_83;
        }
      }

      v21 = OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate;
      v22 = [*(v19 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) serviceType];
      v23 = sub_252E36F34();
      v1 = v24;

      if (qword_27F53F8B8 != -1)
      {
        swift_once();
      }

      v3 = off_27F546230;
      if (*(off_27F546230 + 2) && (v25 = sub_252A44A10(v23, v1), (v26 & 1) != 0))
      {
        v27 = *(v3[7] + 8 * v25);
      }

      else
      {
        v27 = 0;
      }

      if (v27 == v69 || ((v28 = [*(v19 + v21) serviceType], v29 = sub_252E36F34(), v1 = v30, v28, !v3[2]) || (v31 = sub_252A44A10(v29, v1), (v32 & 1) == 0) ? (v33 = 0) : (v33 = *(v3[7] + 8 * v31)), (, v33 == v65) || (v34 = sub_252CD94E0(), (v35 & 1) == 0) && v34 == v69))
      {
      }

      else
      {
        v36 = sub_252CD94E0();
        v1 = v37;

        if ((v1 & 1) != 0 || v36 != v65)
        {

          if (qword_27F53F4D0 != -1)
          {
            goto LABEL_97;
          }

          goto LABEL_62;
        }
      }

      ++v18;
    }

    while (v20 != v2);
  }

  return 1;
}

uint64_t sub_252B7E404()
{
  v1 = sub_252E32E84();
  v59 = *(v1 - 8);
  v2 = MEMORY[0x28223BE20](v1);
  v62 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v58 = (&v54 - v4);
  v5 = *(v0 + 16);
  v63 = MEMORY[0x277D84F90];
  if (v5 >> 62)
  {
LABEL_37:
    v6 = sub_252E378C4();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v60 = v1;
  if (v6)
  {
    v7 = 0;
    v61 = MEMORY[0x277D84F90];
    do
    {
      v8 = v7;
      while (1)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x2530ADF00](v8, v5);
          v7 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            goto LABEL_35;
          }
        }

        else
        {
          if (v8 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_36;
          }

          v9 = *(v5 + 8 * v8 + 32);

          v7 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
LABEL_35:
            __break(1u);
LABEL_36:
            __break(1u);
            goto LABEL_37;
          }
        }

        v10 = [*(v9 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) accessory];
        if (v10)
        {
          break;
        }

        ++v8;
        if (v7 == v6)
        {
          goto LABEL_20;
        }
      }

      v11 = v10;
      type metadata accessor for Accessory(0);
      swift_allocObject();
      sub_252D4CE7C(v11);

      MEMORY[0x2530AD700](v12);
      if (*((v63 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v63 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_252E372A4();
      }

      sub_252E372D4();
      v61 = v63;
      v1 = v60;
    }

    while (v7 != v6);
  }

  else
  {
    v61 = MEMORY[0x277D84F90];
  }

LABEL_20:

  v13 = v61;

  v15 = sub_252C759D4(v14);

  if ((v15 & 0xC000000000000001) != 0)
  {
    v16 = sub_252E378C4();
  }

  else
  {
    v16 = *(v15 + 2);
  }

  if (v16 != 1)
  {
    goto LABEL_39;
  }

  if (v13 >> 62)
  {
    result = sub_252E378C4();
    if (result)
    {
      goto LABEL_26;
    }

    goto LABEL_39;
  }

  result = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
LABEL_39:
    if (qword_27F53F4D0 != -1)
    {
      goto LABEL_60;
    }

    while (1)
    {
      v32 = sub_252E36AD4();
      __swift_project_value_buffer(v32, qword_27F544D18);

      v33 = sub_252E36AC4();
      v34 = sub_252E374C4();

      v58 = v33;
      if (!os_log_type_enabled(v33, v34))
      {

        return 0;
      }

      v35 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v63 = v55;
      v56 = v35;
      *v35 = 136315138;
      if (v13 >> 62)
      {
        v36 = sub_252E378C4();
        v57 = v34;
        if (!v36)
        {
LABEL_62:
          v41 = MEMORY[0x277D84F90];
LABEL_63:

          v47 = MEMORY[0x2530AD730](v41, v1);
          v49 = v48;

          v50 = sub_252BE2CE0(v47, v49, &v63);

          v51 = v56;
          *(v56 + 1) = v50;
          v52 = v58;
          _os_log_impl(&dword_252917000, v58, v57, "Accessories matching services: %s", v51, 0xCu);
          v53 = v55;
          __swift_destroy_boxed_opaque_existential_1(v55);
          MEMORY[0x2530AED00](v53, -1, -1);
          MEMORY[0x2530AED00](v51, -1, -1);

          return 0;
        }
      }

      else
      {
        v36 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v57 = v34;
        if (!v36)
        {
          goto LABEL_62;
        }
      }

      v37 = 0;
      v38 = v13 & 0xC000000000000001;
      v39 = v13 & 0xFFFFFFFFFFFFFF8;
      v40 = (v59 + 16);
      v41 = MEMORY[0x277D84F90];
      while (v38)
      {
        v42 = MEMORY[0x2530ADF00](v37, v13);
        v13 = v37 + 1;
        if (__OFADD__(v37, 1))
        {
          goto LABEL_58;
        }

LABEL_47:
        (*v40)(v62, v42 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v1);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v41 = sub_2529F8324(0, v41[2] + 1, 1, v41);
        }

        v44 = v41[2];
        v43 = v41[3];
        if (v44 >= v43 >> 1)
        {
          v41 = sub_2529F8324((v43 > 1), v44 + 1, 1, v41);
        }

        v41[2] = v44 + 1;
        v45 = v41 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v44;
        v1 = v60;
        (*(v59 + 32))(v45, v62, v60);
        ++v37;
        v46 = v13 == v36;
        v13 = v61;
        if (v46)
        {
          goto LABEL_63;
        }
      }

      if (v37 >= *(v39 + 16))
      {
        goto LABEL_59;
      }

      v42 = *(v13 + 8 * v37 + 32);

      v13 = v37 + 1;
      if (!__OFADD__(v37, 1))
      {
        goto LABEL_47;
      }

LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      swift_once();
    }
  }

LABEL_26:
  if ((v13 & 0xC000000000000001) != 0)
  {
    v18 = MEMORY[0x2530ADF00](0, v13);
  }

  else
  {
    if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v18 = *(v13 + 32);
  }

  v20 = v58;
  v19 = v59;
  (*(v59 + 16))(v58, v18 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v1);

  v21 = sub_252E32E24();
  v22 = v1;
  v23 = v21;
  v25 = v24;
  (*(v19 + 8))(v20, v22);
  if (qword_27F53F4D0 != -1)
  {
    swift_once();
  }

  v26 = sub_252E36AD4();
  __swift_project_value_buffer(v26, qword_27F544D18);

  v27 = sub_252E36AC4();
  v28 = sub_252E374C4();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v63 = v30;
    *v29 = 136315138;
    v31 = sub_252BE2CE0(v23, v25, &v63);

    *(v29 + 4) = v31;
    _os_log_impl(&dword_252917000, v27, v28, "Only one accessory found : %s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v30);
    MEMORY[0x2530AED00](v30, -1, -1);
    MEMORY[0x2530AED00](v29, -1, -1);
  }

  else
  {
  }

  return 1;
}

uint64_t sub_252B7EBB0()
{
  v0 = sub_252E32E84();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v77 = (&v70 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v2);
  v78 = &v70 - v4;
  v5 = sub_252B7F4E4();
  v6 = v5;
  v79 = MEMORY[0x277D84F90];
  v7 = v5 & 0xFFFFFFFFFFFFFF8;
  if (!(v5 >> 62))
  {
    v8 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_24:
    v10 = MEMORY[0x277D84F90];
    goto LABEL_25;
  }

LABEL_23:
  v8 = sub_252E378C4();
  if (!v8)
  {
    goto LABEL_24;
  }

LABEL_3:
  v9 = 0;
  v76 = (v1 + 4);
  v10 = MEMORY[0x277D84F90];
  do
  {
    v11 = v9;
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x2530ADF00](v11, v6);
        v9 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_21;
        }
      }

      else
      {
        if (v11 >= *(v7 + 16))
        {
          goto LABEL_22;
        }

        v12 = *(v6 + 8 * v11 + 32);

        v9 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
LABEL_21:
          __break(1u);
LABEL_22:
          __break(1u);
          goto LABEL_23;
        }
      }

      v13 = [*(v12 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate) room];
      if (v13)
      {
        break;
      }

      ++v11;
      if (v9 == v8)
      {
        goto LABEL_25;
      }
    }

    v74 = v1;
    v75 = v0;
    v14 = v13;
    type metadata accessor for Room(0);
    v15 = swift_allocObject();
    *(v15 + OBJC_IVAR____TtC22HomeAutomationInternal4Room_delegate) = v14;
    v16 = v14;
    v17 = [v16 uniqueIdentifier];
    sub_252E32E64();

    v18 = [v16 name];
    v19 = sub_252E36F34();
    v72 = v20;
    v73 = v19;

    v21 = [v16 assistantIdentifier];
    if (v21)
    {
      v22 = v21;
      v71 = sub_252E36F34();
      v24 = v23;

      v25 = v24;
      v26 = v71;
    }

    else
    {

      v26 = 0;
      v25 = 0;
    }

    v0 = v75;
    v27 = (*v76)(v15 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v78, v75);
    v28 = (v15 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
    v29 = v72;
    *v28 = v73;
    v28[1] = v29;
    *(v15 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType) = 3;
    v30 = (v15 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier);
    *v30 = v26;
    v30[1] = v25;
    MEMORY[0x2530AD700](v27);
    if (*((v79 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v79 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_252E372A4();
    }

    sub_252E372D4();
    v10 = v79;
    v1 = v74;
  }

  while (v9 != v8);
LABEL_25:

  if (v10 >> 62)
  {
LABEL_74:
    v31 = sub_252E378C4();
    if (v31)
    {
LABEL_27:
      if ((v10 & 0xC000000000000001) != 0)
      {
        v32 = MEMORY[0x2530ADF00](0, v10);
        v78 = (v10 & 0xFFFFFFFFFFFFFF8);
      }

      else
      {
        v78 = (v10 & 0xFFFFFFFFFFFFFF8);
        if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_78:
          swift_once();
LABEL_44:
          v44 = sub_252E36AD4();
          __swift_project_value_buffer(v44, qword_27F544D18);

          v45 = sub_252E36AC4();
          v46 = sub_252E374C4();

          if (os_log_type_enabled(v45, v46))
          {
            v47 = swift_slowAlloc();
            v48 = swift_slowAlloc();
            v79 = v48;
            *v47 = 136315138;
            v49 = sub_252BE2CE0(v75, v0, &v79);

            *(v47 + 4) = v49;
            _os_log_impl(&dword_252917000, v45, v46, "All services in the same room : %s", v47, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v48);
            MEMORY[0x2530AED00](v48, -1, -1);
            MEMORY[0x2530AED00](v47, -1, -1);
          }

          else
          {
          }

          return 1;
        }

        v32 = *(v10 + 32);
      }

      v33 = v77;
      (v1[2])(v77, v32 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v0);

      v75 = sub_252E32E24();
      v76 = v34;
      (v1[1])(v33, v0);
      v35 = 0;
      v1 = MEMORY[0x277D84F90];
      do
      {
        if ((v10 & 0xC000000000000001) != 0)
        {
          MEMORY[0x2530ADF00](v35, v10);
          v0 = v35 + 1;
          if (__OFADD__(v35, 1))
          {
            goto LABEL_70;
          }
        }

        else
        {
          if (v35 >= *(v78 + 2))
          {
            goto LABEL_71;
          }

          v0 = v35 + 1;
          if (__OFADD__(v35, 1))
          {
LABEL_70:
            __break(1u);
LABEL_71:
            __break(1u);
LABEL_72:
            __break(1u);
LABEL_73:
            __break(1u);
            goto LABEL_74;
          }
        }

        v36 = sub_252E32E24();
        v38 = v37;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v1 = sub_2529F7A80(0, v1[2] + 1, 1, v1);
        }

        v40 = v1[2];
        v39 = v1[3];
        if (v40 >= v39 >> 1)
        {
          v1 = sub_2529F7A80((v39 > 1), v40 + 1, 1, v1);
        }

        v1[2] = v40 + 1;
        v41 = &v1[2 * v40];
        v41[4] = v36;
        v41[5] = v38;
        ++v35;
      }

      while (v0 != v31);
      v42 = sub_252C75848(v1);

      v43 = *(v42 + 16);

      if (v43 != 1)
      {

        goto LABEL_47;
      }

      v0 = v76;
      if (qword_27F53F4D0 != -1)
      {
        goto LABEL_78;
      }

      goto LABEL_44;
    }
  }

  else
  {
    v31 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v31)
    {
      goto LABEL_27;
    }
  }

LABEL_47:
  if (qword_27F53F4D0 != -1)
  {
    swift_once();
  }

  v50 = sub_252E36AD4();
  __swift_project_value_buffer(v50, qword_27F544D18);

  v51 = sub_252E36AC4();
  v52 = sub_252E374C4();

  v77 = v51;
  if (os_log_type_enabled(v51, v52))
  {
    LODWORD(v76) = v52;
    v53 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    v79 = v74;
    v75 = v53;
    *v53 = 136315138;
    if (v31)
    {
      v54 = 0;
      v78 = (v10 & 0xC000000000000001);
      v1 = (v10 & 0xFFFFFFFFFFFFFF8);
      v55 = MEMORY[0x277D84F90];
      while (1)
      {
        if (v78)
        {
          v56 = MEMORY[0x2530ADF00](v54, v10);
          v57 = v54 + 1;
          if (__OFADD__(v54, 1))
          {
            goto LABEL_72;
          }
        }

        else
        {
          if (v54 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_73;
          }

          v56 = *(v10 + 8 * v54 + 32);

          v57 = v54 + 1;
          if (__OFADD__(v54, 1))
          {
            goto LABEL_72;
          }
        }

        v58 = *(v56 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
        v59 = *(v56 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v55 = sub_2529F7A80(0, *(v55 + 2) + 1, 1, v55);
        }

        v0 = *(v55 + 2);
        v60 = *(v55 + 3);
        if (v0 >= v60 >> 1)
        {
          v55 = sub_2529F7A80((v60 > 1), v0 + 1, 1, v55);
        }

        *(v55 + 2) = v0 + 1;
        v61 = &v55[16 * v0];
        *(v61 + 4) = v58;
        *(v61 + 5) = v59;
        ++v54;
        if (v57 == v31)
        {
          goto LABEL_68;
        }
      }
    }

    v55 = MEMORY[0x277D84F90];
LABEL_68:

    v63 = MEMORY[0x2530AD730](v55, MEMORY[0x277D837D0]);
    v65 = v64;

    v66 = sub_252BE2CE0(v63, v65, &v79);

    v67 = v75;
    *(v75 + 1) = v66;
    v68 = v77;
    _os_log_impl(&dword_252917000, v77, v76, "Found rooms: %s", v67, 0xCu);
    v69 = v74;
    __swift_destroy_boxed_opaque_existential_1(v74);
    MEMORY[0x2530AED00](v69, -1, -1);
    MEMORY[0x2530AED00](v67, -1, -1);
  }

  else
  {
  }

  return 0;
}

uint64_t sub_252B7F4E4()
{
  v1 = *(v0 + 16);
  v11 = MEMORY[0x277D84F90];
  if (v1 >> 62)
  {
LABEL_23:
    v2 = sub_252E378C4();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2)
  {
    v3 = 0;
    v4 = MEMORY[0x277D84F90];
    do
    {
      v5 = v3;
      while (1)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x2530ADF00](v5, v1);
          v3 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
            goto LABEL_21;
          }
        }

        else
        {
          if (v5 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_22;
          }

          v6 = *(v1 + 8 * v5 + 32);

          v3 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
LABEL_21:
            __break(1u);
LABEL_22:
            __break(1u);
            goto LABEL_23;
          }
        }

        v7 = [*(v6 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) accessory];
        if (v7)
        {
          break;
        }

        ++v5;
        if (v3 == v2)
        {
          goto LABEL_20;
        }
      }

      v8 = v7;
      type metadata accessor for Accessory(0);
      swift_allocObject();
      sub_252D4CE7C(v8);

      MEMORY[0x2530AD700](v9);
      if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_252E372A4();
      }

      sub_252E372D4();
      v4 = v11;
    }

    while (v3 != v2);
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

LABEL_20:

  return v4;
}

uint64_t sub_252B7F6B0()
{
  v1 = *(v0 + 16);
  if (v1 >> 62)
  {
    goto LABEL_21;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:

  if (v2)
  {
    v3 = 0;
    v4 = MEMORY[0x277D84F90];
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x2530ADF00](v3, v1);
        v5 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          goto LABEL_19;
        }
      }

      else
      {
        if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v5 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
LABEL_19:
          __break(1u);
LABEL_20:
          __break(1u);
LABEL_21:
          v2 = sub_252E378C4();
          goto LABEL_3;
        }
      }

      v6 = sub_252E32E24();
      v8 = v7;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_2529F7A80(0, *(v4 + 2) + 1, 1, v4);
      }

      v10 = *(v4 + 2);
      v9 = *(v4 + 3);
      if (v10 >= v9 >> 1)
      {
        v4 = sub_2529F7A80((v9 > 1), v10 + 1, 1, v4);
      }

      *(v4 + 2) = v10 + 1;
      v11 = &v4[16 * v10];
      *(v11 + 4) = v6;
      *(v11 + 5) = v8;
      ++v3;
      if (v5 == v2)
      {
        goto LABEL_18;
      }
    }
  }

  v4 = MEMORY[0x277D84F90];
LABEL_18:

  v12 = sub_252C75848(v4);

  return v12;
}

uint64_t sub_252B7F858(uint64_t a1)
{
  if ((sub_252B7DC00() & 1) == 0)
  {
    return 0;
  }

  v3 = *(v1 + 16);
  if (!(v3 >> 62))
  {
    result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }

LABEL_4:
    if ((v3 & 0xC000000000000001) != 0)
    {

      MEMORY[0x2530ADF00](0, v3);
    }

    else
    {
      if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    if (sub_252CD941C() != a1)
    {
      v6 = sub_252CD94E0();
      if ((v7 & 1) != 0 || v6 != a1)
      {

        return 0;
      }
    }

    if (qword_27F53F558 == -1)
    {
LABEL_9:
      v5 = sub_252E36AD4();
      __swift_project_value_buffer(v5, qword_27F544EB0);
      sub_252E379F4();
      MEMORY[0x2530AD570](0xD00000000000001DLL, 0x8000000252E833D0);
      sub_252E37AE4();
      MEMORY[0x2530AD570](46, 0xE100000000000000);
      sub_252CC3D90(0, 0xE000000000000000, 0xD000000000000081, 0x8000000252E83340);

      return 1;
    }

LABEL_19:
    swift_once();
    goto LABEL_9;
  }

  result = sub_252E378C4();
  if (result)
  {
    goto LABEL_4;
  }

  return result;
}

uint64_t sub_252B7FA40(uint64_t a1)
{
  v3 = *(v1 + 16);
  if (v3 >> 62)
  {
    if (sub_252E378C4())
    {
      goto LABEL_3;
    }
  }

  else if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    v4 = *(v1 + 16);
    if (v4 >> 62)
    {
      goto LABEL_30;
    }

    for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_252E378C4())
    {

      if (!i)
      {
LABEL_25:

        return 1;
      }

      v6 = 0;
      v21 = i;
LABEL_7:
      if ((v4 & 0xC000000000000001) != 0)
      {
        break;
      }

      if (v6 < *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v7 = *(v4 + 32 + 8 * v6);

        v8 = __OFADD__(v6++, 1);
        if (!v8)
        {
          goto LABEL_10;
        }

LABEL_28:
        __break(1u);
      }

      __break(1u);
LABEL_30:
      ;
    }

    v7 = MEMORY[0x2530ADF00](v6, v4);
    v8 = __OFADD__(v6++, 1);
    if (!v8)
    {
LABEL_10:
      v9 = [*(v7 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) serviceType];
      v10 = sub_252E36F34();
      v12 = v11;

      if (qword_27F53F8B8 != -1)
      {
        swift_once();
      }

      v13 = off_27F546230;
      if (*(off_27F546230 + 2) && (v14 = sub_252A44A10(v10, v12), (v15 & 1) != 0))
      {
        v16 = *(v13[7] + 8 * v14);
      }

      else
      {
        v16 = 0;
      }

      v17 = *(a1 + 16);
      v18 = (a1 + 32);
      do
      {
        if (!v17)
        {

          return 0;
        }

        v19 = *v18++;
        --v17;
      }

      while (v19 != v16);

      if (v6 != v21)
      {
        goto LABEL_7;
      }

      goto LABEL_25;
    }

    goto LABEL_28;
  }

  return 2;
}

uint64_t sub_252B7FC4C(uint64_t a1)
{
  v3 = *(v1 + 16);
  if (!(v3 >> 62))
  {
    if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

    return 2;
  }

  if (!sub_252E378C4())
  {
    return 2;
  }

LABEL_3:
  v4 = *(v1 + 16);
  if (v4 >> 62)
  {
    goto LABEL_30;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:

  if (v5)
  {
    v6 = 0;
    v21 = v5;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x2530ADF00](v6, v4);
        v8 = __OFADD__(v6++, 1);
        if (v8)
        {
          goto LABEL_28;
        }
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_29;
        }

        v7 = *(v4 + 32 + 8 * v6);

        v8 = __OFADD__(v6++, 1);
        if (v8)
        {
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          v5 = sub_252E378C4();
          goto LABEL_5;
        }
      }

      v9 = [*(v7 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) serviceType];
      v10 = sub_252E36F34();
      v12 = v11;

      if (qword_27F53F8B8 != -1)
      {
        swift_once();
      }

      v13 = off_27F546230;
      if (*(off_27F546230 + 2) && (v14 = sub_252A44A10(v10, v12), (v15 & 1) != 0))
      {
        v16 = *(v13[7] + 8 * v14);
      }

      else
      {
        v16 = 0;
      }

      v17 = *(a1 + 16);
      v18 = (a1 + 32);
      while (v17)
      {
        v19 = *v18++;
        --v17;
        if (v19 == v16)
        {

          return 1;
        }
      }
    }

    while (v6 != v21);
  }

  return 0;
}

uint64_t sub_252B7FE5C@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  if (qword_27F53F558 != -1)
  {
    swift_once();
  }

  v4 = sub_252E36AD4();
  __swift_project_value_buffer(v4, qword_27F544EB0);
  sub_252CC3D90(0xD00000000000002ELL, 0x8000000252E83310, 0xD000000000000081, 0x8000000252E83340);
  v6 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v5);
  sub_252929E74((v6 + 192), v25);

  v7 = v26;
  v8 = v27;
  __swift_project_boxed_opaque_existential_1(v25, v26);
  v9 = *(v1 + 16);
  if (!(v9 >> 62))
  {
    if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_9:
    v10 = 0;
    goto LABEL_10;
  }

  if (!sub_252E378C4())
  {
    goto LABEL_9;
  }

LABEL_5:
  if ((v9 & 0xC000000000000001) != 0)
  {

    v10 = MEMORY[0x2530ADF00](0, v9);
  }

  else
  {
    if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_18;
    }

    v10 = *(v9 + 32);
  }

LABEL_10:
  (*(v8 + 8))(&v21, v10, v7, v8);

  v12 = *(v1 + 16);
  MEMORY[0x28223BE20](v11);
  v18[2] = v25;
  v18[3] = &v21;

  v13 = sub_252A00B58(sub_252B810D0, v18, v12);

  if ((v13 & 1) == 0)
  {
LABEL_21:
    v16 = v22;
    *a1 = v21;
    a1[1] = v16;
    v17 = v24;
    a1[2] = v23;
    a1[3] = v17;
    return __swift_destroy_boxed_opaque_existential_1(v25);
  }

  v7 = v26;
  v8 = v27;
  __swift_project_boxed_opaque_existential_1(v25, v26);
  v2 = *(v2 + 16);
  if (!(v2 >> 62))
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_13;
    }

LABEL_19:
    v15 = 0;
    goto LABEL_20;
  }

LABEL_18:
  result = sub_252E378C4();
  if (!result)
  {
    goto LABEL_19;
  }

LABEL_13:
  if ((v2 & 0xC000000000000001) != 0)
  {

    v15 = MEMORY[0x2530ADF00](0, v2);

    goto LABEL_20;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v15 = *(v2 + 32);

LABEL_20:
    (*(v8 + 16))(v19, v15, v7, v8);

    v20[0] = v21;
    v20[1] = v22;
    v20[2] = v23;
    v20[3] = v24;
    sub_252B810F0(v20);
    v21 = v19[0];
    v22 = v19[1];
    v23 = v19[2];
    v24 = v19[3];
    goto LABEL_21;
  }

  __break(1u);
  return result;
}

uint64_t sub_252B80174(uint64_t *a1, void *a2, void *a3)
{
  v4 = *a1;
  v5 = a2[3];
  v6 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v5);
  (*(v6 + 8))(v14, v4, v5, v6);
  if (v14[1])
  {
    v8 = v14[2];
    v7 = v14[3];

    sub_252B810F0(v14);
    if (!a3[1])
    {
      if (!v7)
      {
        goto LABEL_15;
      }

LABEL_14:

      LOBYTE(v9) = 1;
      return v9 & 1;
    }

LABEL_7:
    v10 = a3[2];
    v11 = a3[3];

    if (v7)
    {
      if (v11)
      {
        if (v8 != v10 || v7 != v11)
        {
          v12 = sub_252E37DB4();

          LOBYTE(v9) = v12 ^ 1;
          return v9 & 1;
        }

        goto LABEL_15;
      }
    }

    else if (!v11)
    {
LABEL_15:
      LOBYTE(v9) = 0;
      return v9 & 1;
    }

    goto LABEL_14;
  }

  v9 = a3[1];
  if (v9)
  {
    v7 = 0;
    v8 = 0;
    goto LABEL_7;
  }

  return v9 & 1;
}

uint64_t sub_252B802C0(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a2[3];
  v4 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v3);
  return (*(v4 + 8))(v2, v3, v4);
}

BOOL sub_252B80338(uint64_t a1)
{
  v1 = sub_252B80A5C(a1);
  v2 = sub_252B7F6B0();
  v3 = sub_252B80F10(v1, v2);

  v4 = v3[2];
  v5 = *(v2 + 16);

  if (qword_27F53F4D0 != -1)
  {
    swift_once();
  }

  v6 = sub_252E36AD4();
  __swift_project_value_buffer(v6, qword_27F544D18);
  v7 = sub_252E36AC4();
  v8 = sub_252E374C4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 67109120;
    *(v9 + 4) = v4 == v5;
    _os_log_impl(&dword_252917000, v7, v8, "All services warmed up : %{BOOL}d", v9, 8u);
    MEMORY[0x2530AED00](v9, -1, -1);
  }

  return v4 == v5;
}

uint64_t sub_252B8048C(uint64_t a1)
{
  v1 = sub_252B80A5C(a1);
  v2 = sub_252B7F6B0();
  v3 = sub_252B80F10(v1, v2);

  v4 = MEMORY[0x277D84F90];
  v43 = MEMORY[0x277D84F90];
  v5 = v3 + 8;
  v6 = 1 << *(v3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & v3[8];
  v9 = (v6 + 63) >> 6;

  v10 = 0;
  if (v8)
  {
    while (1)
    {
LABEL_11:
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v13 = *(v3[7] + ((v10 << 9) | (8 * v12)));
      v14 = [v13 taskResponses];
      if (!v14)
      {
        goto LABEL_6;
      }

      v15 = v14;
      v16 = v3;
      type metadata accessor for HomeUserTaskResponse();
      v17 = sub_252E37264();

      result = v17;
      if (!(v17 >> 62))
      {
        break;
      }

      v21 = sub_252E378C4();
      result = v17;
      v3 = v16;
      if (v21)
      {
LABEL_14:
        if ((result & 0xC000000000000001) != 0)
        {
          MEMORY[0x2530ADF00](0);
        }

        else
        {
          if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return result;
          }

          v20 = *(result + 32);
        }

        MEMORY[0x2530AD700]();
        if (*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_252E372A4();
        }

        sub_252E372D4();
        v4 = v43;
        if (!v8)
        {
          goto LABEL_7;
        }
      }

      else
      {
LABEL_5:

LABEL_6:

        if (!v8)
        {
          goto LABEL_7;
        }
      }
    }

    v19 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v3 = v16;
    if (v19)
    {
      goto LABEL_14;
    }

    goto LABEL_5;
  }

  while (1)
  {
LABEL_7:
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    if (v11 >= v9)
    {
      break;
    }

    v8 = v5[v11];
    ++v10;
    if (v8)
    {
      v10 = v11;
      goto LABEL_11;
    }
  }

  if (qword_27F53F4D0 == -1)
  {
    goto LABEL_25;
  }

LABEL_45:
  swift_once();
LABEL_25:
  v22 = sub_252E36AD4();
  __swift_project_value_buffer(v22, qword_27F544D18);

  v23 = sub_252E36AC4();
  v24 = sub_252E374C4();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v43 = v38;
    buf = v25;
    *v25 = 136315138;
    v42 = MEMORY[0x277D84F90];
    log = v23;
    v40 = v24;
    if (v4 >> 62)
    {
      v26 = sub_252E378C4();
    }

    else
    {
      v26 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v27 = 0;
    v28 = MEMORY[0x277D84F90];
    while (v26 != v27)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v29 = MEMORY[0x2530ADF00](v27, v4);
      }

      else
      {
        if (v27 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_44;
        }

        v29 = *(v4 + 8 * v27 + 32);
      }

      v30 = v29;
      v31 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        goto LABEL_43;
      }

      v32 = [v29 userTask];

      ++v27;
      if (v32)
      {
        MEMORY[0x2530AD700]();
        if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_252E372A4();
        }

        sub_252E372D4();
        v28 = v42;
        v27 = v31;
      }
    }

    v33 = type metadata accessor for HomeUserTask();
    v34 = MEMORY[0x2530AD730](v28, v33);
    v36 = v35;

    v37 = sub_252BE2CE0(v34, v36, &v43);

    *(buf + 4) = v37;
    _os_log_impl(&dword_252917000, log, v40, "Warmed up task responses matching to services : %s", buf, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x2530AED00](v38, -1, -1);
    MEMORY[0x2530AED00](buf, -1, -1);
  }

  else
  {
  }

  return v4;
}

uint64_t sub_252B8095C()
{

  return swift_deallocClassInstance();
}

unint64_t *sub_252B809C0(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_252B80CF4(v7, a2, a3, a4);
    v9 = v8;
    swift_bridgeObjectRelease_n();

    return v9;
  }

  return result;
}

void *sub_252B80A5C(uint64_t a1)
{
  v1 = *(sub_252B680FC(a1) + 152);

  if (!(v1 >> 62))
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_29:
    v4 = MEMORY[0x277D84F98];
LABEL_30:

    return v4;
  }

LABEL_28:
  v2 = sub_252E378C4();
  if (!v2)
  {
    goto LABEL_29;
  }

LABEL_3:
  v3 = 0;
  v4 = MEMORY[0x277D84F98];
  while (2)
  {
    while (2)
    {
      v5 = v3;
      while (1)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x2530ADF00](v5, v1);
        }

        else
        {
          if (v5 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_27;
          }

          v6 = *(v1 + 8 * v5 + 32);
        }

        v7 = v6;
        v3 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          __break(1u);
LABEL_27:
          __break(1u);
          goto LABEL_28;
        }

        v8 = [v6 entity];
        if (v8)
        {
          v9 = v8;
          v10 = [v8 entityIdentifier];

          if (v10)
          {
            break;
          }
        }

        ++v5;
        if (v3 == v2)
        {
          goto LABEL_30;
        }
      }

      v11 = sub_252E36F34();
      v13 = v12;

      v32 = v7;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v15 = sub_252A44A10(v11, v13);
      v17 = v4[2];
      v18 = (v16 & 1) == 0;
      v19 = __OFADD__(v17, v18);
      v20 = v17 + v18;
      if (v19)
      {
        __break(1u);
        goto LABEL_32;
      }

      v21 = v16;
      if (v4[3] >= v20)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v27 = v15;
          sub_252E0375C();
          v15 = v27;
          v23 = v32;
          if (v21)
          {
LABEL_20:
            v24 = v15;

            v25 = v4[7];
            v26 = *(v25 + 8 * v24);
            *(v25 + 8 * v24) = v23;

            if (v3 != v2)
            {
              continue;
            }

            goto LABEL_30;
          }

          goto LABEL_23;
        }
      }

      else
      {
        sub_252DFF6E0(v20, isUniquelyReferenced_nonNull_native);
        v15 = sub_252A44A10(v11, v13);
        if ((v21 & 1) != (v22 & 1))
        {
          goto LABEL_33;
        }
      }

      break;
    }

    v23 = v32;
    if (v21)
    {
      goto LABEL_20;
    }

LABEL_23:
    v4[(v15 >> 6) + 8] |= 1 << v15;
    v28 = (v4[6] + 16 * v15);
    *v28 = v11;
    v28[1] = v13;
    *(v4[7] + 8 * v15) = v23;

    v29 = v4[2];
    v19 = __OFADD__(v29, 1);
    v30 = v29 + 1;
    if (!v19)
    {
      v4[2] = v30;
      if (v3 != v2)
      {
        continue;
      }

      goto LABEL_30;
    }

    break;
  }

LABEL_32:
  __break(1u);
LABEL_33:
  result = sub_252E37E24();
  __break(1u);
  return result;
}

void sub_252B80CF4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = 0;
  v5 = 0;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  v32 = a4 + 56;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_13:
    v14 = v11 | (v5 << 6);
    if (*(a4 + 16))
    {
      v15 = (*(a3 + 48) + 16 * v14);
      v17 = *v15;
      v16 = v15[1];
      v28 = v14;
      v18 = *(*(a3 + 56) + 8 * v14);
      sub_252E37EC4();

      v31 = v18;
      sub_252E37044();
      v19 = sub_252E37F14();
      v20 = -1 << *(a4 + 32);
      v21 = v19 & ~v20;
      if ((*(v32 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
      {
        v22 = ~v20;
        while (1)
        {
          v23 = (*(a4 + 48) + 16 * v21);
          v24 = *v23 == v17 && v23[1] == v16;
          if (v24 || (sub_252E37DB4() & 1) != 0)
          {
            break;
          }

          v21 = (v21 + 1) & v22;
          if (((*(v32 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
          {
            goto LABEL_5;
          }
        }

        *(a1 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
        if (__OFADD__(v29++, 1))
        {
          __break(1u);
LABEL_26:
          sub_252BBE78C(a1, a2, v29, a3);
          return;
        }
      }

      else
      {
LABEL_5:
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_26;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_13;
    }
  }

  __break(1u);
}

unint64_t *sub_252B80F10(uint64_t a1, uint64_t a2)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v13 = swift_slowAlloc();

      v11 = sub_252B809C0(v13, v7, a1, a2);
      MEMORY[0x2530AED00](v13, -1, -1);
      swift_bridgeObjectRelease_n();
      return v11;
    }
  }

  MEMORY[0x28223BE20](v9);
  bzero(v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v8);

  sub_252B80CF4((v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0)), v7, a1, a2);
  v11 = v10;

  if (v2)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
  return v11;
}

uint64_t sub_252B810F0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B80, &unk_252E4E7B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_252B81158()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for ReformationDetails(unsigned __int8 *a1, unsigned int a2)
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
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_252B8126C(char a1)
{
  sub_252E379F4();

  strcpy(v5, "BOOLeanValue: ");
  HIBYTE(v5[1]) = -18;
  if (a1)
  {
    v2 = 1702195828;
  }

  else
  {
    v2 = 0x65736C6166;
  }

  if (a1)
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v2, v3);

  return v5[0];
}

uint64_t sub_252B8131C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[264] = v3;
  v4[263] = a3;
  v4[262] = a2;
  v4[261] = a1;
  v5 = sub_252E34014();
  v4[265] = v5;
  v4[266] = *(v5 - 8);
  v4[267] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252B813E8, 0, 0);
}

uint64_t sub_252B813E8()
{
  v2 = v0[263];
  if (v2)
  {
    v3 = v0 + 259;
    v4 = MEMORY[0x277D84F90];
    v0[259] = MEMORY[0x277D84F90];
    v5 = v2;
    v6 = [v5 entityResponses];
    v48 = v5;
    if (!v6)
    {
      v19 = v4;
LABEL_23:
      v24 = v0[264];
      type metadata accessor for HomeAutomationEntityResponses.Builder();
      *(swift_allocObject() + 16) = v4;
      type metadata accessor for HomeAutomationClimateResponses();
      v25 = swift_allocObject();
      v0[268] = v25;
      *(v25 + 16) = 0;
      swift_setDeallocating();
      swift_deallocClassInstance();
      *(v25 + 24) = v19;
      memcpy(v0 + 65, (v24 + 112), 0x1F8uLL);
      memcpy(v0 + 2, (v24 + 112), 0x1F8uLL);
      if (sub_252956B94(v0 + 2) == 1)
      {
        v26 = 0;
      }

      else
      {
        v27 = v0[12];
        sub_252938414((v0 + 65), (v0 + 128), &qword_27F5404C8, &unk_252E3FD60);

        v26 = sub_2529A6F1C(61, v27);
        sub_25293847C((v0 + 65), &qword_27F5404C8, &unk_252E3FD60);
      }

      v28 = sub_252B82340();
      if (qword_27F53F498 != -1)
      {
        swift_once();
      }

      v29 = v28;
      v47 = v28 > 0xFFu;
      v46 = v0[264];
      v30 = sub_252E36AD4();
      __swift_project_value_buffer(v30, qword_27F544C70);
      sub_252E379F4();
      MEMORY[0x2530AD570](0xD000000000000010, 0x8000000252E83600);
      v31 = !v26;
      if (v26)
      {
        v32 = 1702195828;
      }

      else
      {
        v32 = 0x65736C6166;
      }

      if (v26)
      {
        v33 = 0xE400000000000000;
      }

      else
      {
        v33 = 0xE500000000000000;
      }

      if (v31)
      {
        v34 = 0;
      }

      else
      {
        v34 = 256;
      }

      v45 = v34;
      MEMORY[0x2530AD570](v32, v33);

      MEMORY[0x2530AD570](0xD000000000000012, 0x8000000252E83620);
      v44 = v28 & 1;
      if (v28)
      {
        v35 = 1702195828;
      }

      else
      {
        v35 = 0x65736C6166;
      }

      if (v28)
      {
        v36 = 0xE400000000000000;
      }

      else
      {
        v36 = 0xE500000000000000;
      }

      MEMORY[0x2530AD570](v35, v36);

      MEMORY[0x2530AD570](0xD000000000000010, 0x8000000252E83640);
      if (v29 >= 0x100)
      {
        v37 = 1702195828;
      }

      else
      {
        v37 = 0x65736C6166;
      }

      if (v29 >= 0x100)
      {
        v38 = 0xE400000000000000;
      }

      else
      {
        v38 = 0xE500000000000000;
      }

      MEMORY[0x2530AD570](v37, v38);

      sub_252CC3D90(0, 0xE000000000000000, 0xD000000000000098, 0x8000000252E83560);

      v39 = *(v46 + 48);
      v40 = v48;

      v41 = v40;
      __swift_project_boxed_opaque_existential_1((v46 + 24), v39);
      v42 = sub_252C07B4C(0, v25, v45 | v44 | (v47 << 16));
      v0[269] = v42;
      v49 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);

      v43 = swift_task_alloc();
      v0[270] = v43;
      *v43 = v0;
      v43[1] = sub_252B81A18;

      return v49(0xD000000000000020, 0x8000000252E83660, v42);
    }

    v7 = v6;
    type metadata accessor for HomeEntityResponse();
    v8 = sub_252E37264();

    if (v8 >> 62)
    {
      if (sub_252E378C4())
      {
        goto LABEL_5;
      }
    }

    else if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_5:
      if ((v8 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x2530ADF00](0, v8);
      }

      else
      {
        if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_54;
        }

        v9 = *(v8 + 32);
      }

      v7 = v9;
      v10 = v0[264];
      v11 = v0[262];

      v1 = sub_252C6FEAC(v11, v7);
      sub_252DA49A4();
      v13 = v12;
      memcpy(v0 + 191, (v10 + 112), 0x1F8uLL);
      if (sub_252956B94(v0 + 191) == 1 || (v14 = v0[216], !*(v14 + 16)))
      {
        v15 = 4;
      }

      else
      {
        v15 = *(v14 + 32);
      }

      sub_252C3AC5C(v15);
      v21 = v20;

      v22 = sub_252DA124C(0);
      if (v22)
      {

        MEMORY[0x2530AD700](v23);
        if (*((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
LABEL_18:
          sub_252E372D4();

          v19 = *v3;
          goto LABEL_23;
        }

LABEL_54:
        sub_252E372A4();
        goto LABEL_18;
      }

LABEL_22:
      v19 = MEMORY[0x277D84F90];
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  sub_2529318DC();
  swift_allocError();
  *v16 = 6;
  swift_willThrow();

  v17 = v0[1];

  return v17();
}

uint64_t sub_252B81A18(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 2168) = a1;
  *(v3 + 2176) = v1;

  if (v1)
  {
    v4 = sub_252B81D10;
  }

  else
  {
    v4 = sub_252B81B58;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_252B81B58()
{
  v1 = *(v0 + 2104);

  v2 = swift_task_alloc();
  *(v0 + 2184) = v2;
  *v2 = v0;
  v2[1] = sub_252B81BF8;

  return sub_252E174F4(v1);
}

uint64_t sub_252B81BF8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 2192) = a1;
  *(v3 + 2200) = v1;

  if (v1)
  {
    v4 = sub_252B81F04;
  }

  else
  {
    v4 = sub_252B81DA8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_252B81D10()
{
  v1 = *(v0 + 2104);

  v2 = *(v0 + 2104);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_252B81DA8()
{
  v1 = v0 + 260;
  v2 = v0[274];
  v3 = v0[271];
  v0[260] = v3;
  if (v2)
  {
    v4 = v3;
    v5 = v2;
    v6 = sub_252BE8A5C(v5);

    *v1 = v6;
  }

  else
  {
    v7 = v3;
  }

  v8 = v0[264];
  v9 = *(v8 + 96);
  __swift_project_boxed_opaque_existential_1((v8 + 72), v9);
  v10 = swift_task_alloc();
  v0[276] = v10;
  *(v10 + 16) = v1;
  sub_252AD7CC4();
  v11 = swift_task_alloc();
  v0[277] = v11;
  *v11 = v0;
  v11[1] = sub_252B81FAC;
  v12 = v0[267];

  return sub_252BDB88C((v0 + 254), &unk_252E3F140, v10, v12, 0, 0, 0, v9);
}

uint64_t sub_252B81F04()
{
  v1 = *(v0 + 2104);

  v2 = *(v0 + 2104);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_252B81FAC()
{
  v2 = *v1;
  *(*v1 + 2224) = v0;

  (*(v2[266] + 8))(v2[267], v2[265]);
  if (v0)
  {
    v3 = sub_252B82274;
  }

  else
  {

    v3 = sub_252B82104;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_252B82104()
{
  v1 = *(v0 + 2112);
  v2 = *(v0 + 2096);
  v3 = v1[12];
  v4 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v3);
  v5 = [v2 filters];
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

  v8 = *(v0 + 2192);
  v9 = *(v0 + 2168);
  v10 = *(v0 + 2104);
  (*(v4 + 112))(v7, v0 + 2032, v3, v4);

  __swift_destroy_boxed_opaque_existential_1((v0 + 2032));

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_252B82274()
{
  v1 = *(v0 + 2192);
  v2 = *(v0 + 2104);

  v3 = *(v0 + 2104);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_252B82340()
{
  v1 = sub_252E36324();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v140 = &v124[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540758, &unk_252E4D160);
  v4 = MEMORY[0x28223BE20](v147);
  v6 = &v124[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v141 = &v124[-v7];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v124[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v124[-v13];
  v15 = MEMORY[0x28223BE20](v12);
  v139 = &v124[-v16];
  v17 = MEMORY[0x28223BE20](v15);
  v145 = &v124[-v18];
  v19 = MEMORY[0x28223BE20](v17);
  v148 = &v124[-v20];
  v21 = MEMORY[0x28223BE20](v19);
  v138 = &v124[-v22];
  v23 = MEMORY[0x28223BE20](v21);
  v143 = &v124[-v24];
  v25 = MEMORY[0x28223BE20](v23);
  v144 = &v124[-v26];
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v124[-v28];
  MEMORY[0x28223BE20](v27);
  v31 = &v124[-v30];
  memcpy(v153, (v0 + 112), 0x1F8uLL);
  if (sub_252956B94(v153) == 1)
  {
    goto LABEL_126;
  }

  v146 = v2;
  v135 = v14;
  v136 = v11;
  v32 = v153[24];
  swift_beginAccess();

  v33 = sub_252D8D5C0(&unk_27F545D15, 4);
  swift_endAccess();
  if (!v33)
  {
    goto LABEL_7;
  }

  swift_beginAccess();
  v34 = sub_252D8D5A8(&unk_27F545D14, 15);
  swift_endAccess();

  if (v34)
  {
    v35 = sub_252999524();

    if (!v35)
    {
LABEL_7:
      v137 = 0;
      v34 = 0;
      goto LABEL_10;
    }

    sub_252A657C0(v31);

    v36 = v146;
    if ((*(v146 + 48))(v31, 1, v1) == 1)
    {
      sub_25293847C(v31, &qword_27F540298, &unk_252E3C270);
      goto LABEL_7;
    }

    v137 = sub_252E36304();
    v37 = v36;
    v34 = v38;
    (*(v37 + 8))(v31, v1);
  }

  else
  {
    v137 = 0;
  }

LABEL_10:
  swift_beginAccess();
  v39 = sub_252D8D5C0(&unk_27F545D16, 5);
  swift_endAccess();
  v142 = v34;
  if (!v39)
  {
    v42 = 0;
    if (!v34)
    {
LABEL_125:

LABEL_126:
      v121 = 0;
      goto LABEL_127;
    }

    goto LABEL_17;
  }

  swift_beginAccess();
  v40 = sub_252D8D5A8(&unk_27F545D13, 14);
  swift_endAccess();

  if (!v40)
  {
    goto LABEL_15;
  }

  v39 = sub_252999524();

  if (v39)
  {
    sub_252A657C0(v29);

    v41 = v146;
    if ((*(v146 + 48))(v29, 1, v1) == 1)
    {
      sub_25293847C(v29, &qword_27F540298, &unk_252E3C270);
LABEL_15:
      v39 = 0;
      v42 = 0;
      goto LABEL_124;
    }

    v39 = sub_252E36304();
    v42 = v122;
    (*(v41 + 8))(v29, v1);
  }

  else
  {
    v42 = 0;
  }

LABEL_124:
  if (!(v142 | v42))
  {
    goto LABEL_125;
  }

LABEL_17:
  v134 = v42;
  v130 = v39;
  v149 = v1;
  v43 = 0;
  v44 = *(v32 + 16);
  v45 = 28271;
  v46 = 0xE200000000000000;
  while (1)
  {
    v48 = v43;
    if (v44 == v43)
    {
      goto LABEL_24;
    }

    if (v43 >= *(v32 + 16))
    {
      __break(1u);
LABEL_130:
      __break(1u);
      goto LABEL_131;
    }

    LOBYTE(v151) = *(v32 + v43 + 32);
    if (StateSemantic.rawValue.getter() == 28271 && v49 == 0xE200000000000000)
    {
      break;
    }

    ++v43;
    v47 = sub_252E37DB4();

    if (v47)
    {
      goto LABEL_24;
    }
  }

LABEL_24:
  v150 = v44;
  v129 = v6;
  v46 = 0;
  v45 = 6710895;
  v43 = 0xE300000000000000;
  do
  {
    v44 = v46;
    LODWORD(v6) = v150 != v46;
    if (v150 == v46)
    {
      break;
    }

    if (v46 >= *(v32 + 16))
    {
      goto LABEL_130;
    }

    LOBYTE(v151) = *(v32 + v46 + 32);
    if (StateSemantic.rawValue.getter() == 6710895 && v51 == 0xE300000000000000)
    {

      break;
    }

    ++v46;
    v50 = sub_252E37DB4();
  }

  while ((v50 & 1) == 0);

  v52 = v146;
  v45 = v141;
  if (v134)
  {

    v53 = v144;
    sub_252E37024();

    v54 = 0;
  }

  else
  {
    v54 = 1;
    v53 = v144;
  }

  v46 = v52 + 56;
  v32 = *(v52 + 56);
  (v32)(v53, v54, 1, v149);
  v43 = v53;
  if (qword_27F53F2C8 != -1)
  {
LABEL_131:
    swift_once();
  }

  v55 = off_27F541CF8;
  v56 = *(off_27F541CF8 + 2);
  v57 = v143;
  v126 = off_27F541CF8;
  if (v56 && (v58 = sub_252A44A10(4605519, 0xE300000000000000), (v59 & 1) != 0))
  {
    v60 = (v55[7] + v58);
  }

  else
  {
    v60 = &v151;
    v61._countAndFlagsBits = 4605519;
    v61._object = 0xE300000000000000;
    StateSemantic.init(rawValue:)(v61);
  }

  v62 = *v60;
  v132 = v32;
  v133 = v46;
  v125 = v6;
  if (v62 == 77)
  {
    v63 = v57;
    v64 = 1;
  }

  else
  {
    LOBYTE(v151) = v62;
    StateSemantic.rawValue.getter();
    sub_252E37024();

    v63 = v57;
    v64 = 0;
  }

  (v32)(v63, v64, 1, v149);
  v65 = v57;
  v66 = *(v147 + 48);
  v67 = v45;
  sub_252938414(v43, v45, &qword_27F540298, &unk_252E3C270);
  v131 = v66;
  sub_252938414(v57, v45 + v66, &qword_27F540298, &unk_252E3C270);
  v68 = v146 + 48;
  v69 = *(v146 + 48);
  v70 = v69(v67, 1, v149);
  v127 = v69;
  v128 = v68;
  if (v70 == 1)
  {
    sub_25293847C(v65, &qword_27F540298, &unk_252E3C270);
    sub_25293847C(v43, &qword_27F540298, &unk_252E3C270);
    if (v69(v67 + v131, 1, v149) == 1)
    {
      sub_25293847C(v67, &qword_27F540298, &unk_252E3C270);
      LODWORD(v131) = 1;
      goto LABEL_50;
    }

LABEL_47:
    sub_25293847C(v67, &qword_27F540758, &unk_252E4D160);
    LODWORD(v131) = 0;
  }

  else
  {
    v71 = v138;
    sub_252938414(v67, v138, &qword_27F540298, &unk_252E3C270);
    v72 = v131;
    v73 = v67;
    if (v69(v67 + v131, 1, v149) == 1)
    {
      sub_25293847C(v143, &qword_27F540298, &unk_252E3C270);
      sub_25293847C(v144, &qword_27F540298, &unk_252E3C270);
      (*(v146 + 8))(v71, v149);
      goto LABEL_47;
    }

    v74 = v67 + v72;
    v75 = v146;
    v76 = v140;
    (*(v146 + 32))(v140, v74, v149);
    sub_252B3DE3C();
    LODWORD(v131) = sub_252E36EF4();
    v77 = v73;
    v78 = *(v75 + 8);
    v78(v76, v149);
    sub_25293847C(v143, &qword_27F540298, &unk_252E3C270);
    sub_25293847C(v144, &qword_27F540298, &unk_252E3C270);
    v78(v71, v149);
    sub_25293847C(v77, &qword_27F540298, &unk_252E3C270);
  }

LABEL_50:
  v79 = v148;
  v80 = v145;
  v81 = v132;
  v82 = v126;
  if (v142)
  {

    sub_252E37024();

    v83 = 0;
  }

  else
  {
    v83 = 1;
  }

  v81(v79, v83, 1, v149);
  if (v82[2] && (v84 = sub_252A44A10(0x4556495443414E49, 0xE800000000000000), (v85 & 1) != 0))
  {
    v86 = (v82[7] + v84);
  }

  else
  {
    v86 = &v151;
    v87._countAndFlagsBits = 0x4556495443414E49;
    v87._object = 0xE800000000000000;
    StateSemantic.init(rawValue:)(v87);
  }

  if (*v86 == 77)
  {
    v88 = v80;
    v89 = 1;
  }

  else
  {
    LOBYTE(v151) = *v86;
    StateSemantic.rawValue.getter();
    sub_252E37024();

    v88 = v80;
    v89 = 0;
  }

  v90 = v149;
  v81(v88, v89, 1, v149);
  v91 = v80;
  v92 = v148;
  v93 = *(v147 + 48);
  v94 = v129;
  sub_252938414(v148, v129, &qword_27F540298, &unk_252E3C270);
  sub_252938414(v91, v94 + v93, &qword_27F540298, &unk_252E3C270);
  v95 = v127;
  if (v127(v94, 1, v90) == 1)
  {
    sub_25293847C(v91, &qword_27F540298, &unk_252E3C270);
    sub_25293847C(v92, &qword_27F540298, &unk_252E3C270);
    if (v95(v94 + v93, 1, v90) == 1)
    {
      sub_25293847C(v94, &qword_27F540298, &unk_252E3C270);
      LODWORD(v147) = 1;
      goto LABEL_67;
    }

LABEL_65:
    sub_25293847C(v94, &qword_27F540758, &unk_252E4D160);
    LODWORD(v147) = 0;
  }

  else
  {
    v96 = v139;
    sub_252938414(v94, v139, &qword_27F540298, &unk_252E3C270);
    if (v95(v94 + v93, 1, v90) == 1)
    {
      sub_25293847C(v145, &qword_27F540298, &unk_252E3C270);
      sub_25293847C(v148, &qword_27F540298, &unk_252E3C270);
      (*(v146 + 8))(v96, v90);
      goto LABEL_65;
    }

    v97 = v146;
    v98 = v140;
    (*(v146 + 32))(v140, v94 + v93, v90);
    sub_252B3DE3C();
    LODWORD(v147) = sub_252E36EF4();
    v99 = *(v97 + 8);
    v99(v98, v149);
    sub_25293847C(v145, &qword_27F540298, &unk_252E3C270);
    sub_25293847C(v148, &qword_27F540298, &unk_252E3C270);
    v99(v96, v149);
    v90 = v149;
    sub_25293847C(v94, &qword_27F540298, &unk_252E3C270);
  }

LABEL_67:
  v101 = v135;
  v100 = v136;
  v102 = v132;
  if (v134)
  {
    sub_252E37024();

    v102(v101, 0, 1, v90);
    LODWORD(v149) = v131 ^ 1;
  }

  else
  {
    v132(v135, 1, 1, v90);
    LODWORD(v149) = 0;
  }

  sub_25293847C(v101, &qword_27F540298, &unk_252E3C270);
  if (v142)
  {
    sub_252E37024();

    v102(v100, 0, 1, v90);
    v103 = v147 ^ 1;
  }

  else
  {
    v102(v100, 1, 1, v90);
    v103 = 0;
  }

  LODWORD(v148) = v103;
  sub_25293847C(v100, &qword_27F540298, &unk_252E3C270);
  if (qword_27F53F498 != -1)
  {
    swift_once();
  }

  v104 = sub_252E36AD4();
  v146 = __swift_project_value_buffer(v104, qword_27F544C70);
  v151 = 0;
  v152 = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000010, 0x8000000252E834A0);
  v105 = v150;
  if (v150 == v48)
  {
    v106 = 0x65736C6166;
  }

  else
  {
    v106 = 1702195828;
  }

  if (v150 == v48)
  {
    v107 = 0xE500000000000000;
  }

  else
  {
    v107 = 0xE400000000000000;
  }

  MEMORY[0x2530AD570](v106, v107);

  MEMORY[0x2530AD570](0xD000000000000012, 0x8000000252E834C0);
  if (v105 == v44)
  {
    v108 = 0x65736C6166;
  }

  else
  {
    v108 = 1702195828;
  }

  if (v105 == v44)
  {
    v109 = 0xE500000000000000;
  }

  else
  {
    v109 = 0xE400000000000000;
  }

  MEMORY[0x2530AD570](v108, v109);

  MEMORY[0x2530AD570](0xD000000000000012, 0x8000000252E834E0);
  if (v131)
  {
    v110 = 1702195828;
  }

  else
  {
    v110 = 0x65736C6166;
  }

  if (v131)
  {
    v111 = 0xE400000000000000;
  }

  else
  {
    v111 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v110, v111);

  MEMORY[0x2530AD570](0xD000000000000014, 0x8000000252E83500);
  if (v147)
  {
    v112 = 1702195828;
  }

  else
  {
    v112 = 0x65736C6166;
  }

  if (v147)
  {
    v113 = 0xE400000000000000;
  }

  else
  {
    v113 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v112, v113);

  MEMORY[0x2530AD570](0xD000000000000011, 0x8000000252E83520);
  v114 = v149;
  if (v149)
  {
    v115 = 1702195828;
  }

  else
  {
    v115 = 0x65736C6166;
  }

  if (v149)
  {
    v116 = 0xE400000000000000;
  }

  else
  {
    v116 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v115, v116);

  MEMORY[0x2530AD570](0xD000000000000013, 0x8000000252E83540);
  v117 = v148;
  if (v148)
  {
    v118 = 1702195828;
  }

  else
  {
    v118 = 0x65736C6166;
  }

  if (v148)
  {
    v119 = 0xE400000000000000;
  }

  else
  {
    v119 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v118, v119);

  sub_252CC3D90(v151, v152, 0xD000000000000098, 0x8000000252E83560);

  if (v150 != v48 && ((v114 | v117) & 1) != 0)
  {
LABEL_113:
    v120 = 256;
    goto LABEL_114;
  }

  if (v150 == v44)
  {
    if (v150 != v48)
    {
      v121 = 1;
LABEL_127:
      v120 = 0;
      return v120 | v121;
    }

LABEL_122:
    v121 = v125;
    goto LABEL_127;
  }

  if (v150 == v48 && ((v131 | v147) & 1) == 0)
  {
    goto LABEL_122;
  }

  if ((v131 | v147))
  {
    goto LABEL_113;
  }

  v120 = 0;
LABEL_114:
  v121 = 1;
  return v120 | v121;
}

uint64_t sub_252B834FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25293B808;

  return sub_252B8131C(a1, a2, a3);
}

void *sub_252B835B0@<X0>(const void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for GetThermostatModeResponseHandler();
  swift_allocObject();
  memcpy(__dst, a1, sizeof(__dst));
  result = sub_252BE97AC(__dst);
  *a2 = result;
  return result;
}

uint64_t sub_252B83614(void *a1, void *a2)
{
  v3 = a1;
  v4 = &off_279711000;
  v5 = [a1 userTask];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = [v3 userTask];
  v8 = &off_279711000;
  if (v7)
  {
    v9 = v7;
    v10 = [v7 attribute];

    if (v10 == 15)
    {
      v11 = 1;
      if (!a2)
      {
        goto LABEL_56;
      }

      goto LABEL_11;
    }
  }

  else
  {
    sub_252C515AC();
  }

  v12 = [v3 userTask];
  if (v12)
  {
    v13 = v12;
    v14 = [v12 attribute];

    v11 = v14 == 14;
    if (!a2)
    {
      goto LABEL_56;
    }
  }

  else
  {
    sub_252C515AC();
    v11 = 0;
    if (!a2)
    {
      goto LABEL_56;
    }
  }

LABEL_11:
  v15 = [a2 entityResponses];
  if (v15)
  {
    v16 = v15;
    type metadata accessor for HomeEntityResponse();
    v17 = sub_252E37264();

    if (v17 >> 62)
    {
      goto LABEL_54;
    }

    for (i = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
    {
      v19 = 0;
      v20 = v17 & 0xC000000000000001;
      v21 = v17 & 0xFFFFFFFFFFFFFF8;
      v22 = v17 + 32;
      v61 = v17 + 32;
      v23 = &off_279711000;
      v63 = v17 & 0xC000000000000001;
      v64 = i;
      v62 = v17 & 0xFFFFFFFFFFFFFF8;
      v65 = v17;
      v66 = v3;
      while (v20)
      {
        v24 = MEMORY[0x2530ADF00](v19, v17);
        v25 = __OFADD__(v19++, 1);
        if (v25)
        {
          goto LABEL_52;
        }

LABEL_18:
        v67 = v24;
        v26 = [v24 v23[221]];
        if (v26)
        {
          v27 = v26;
          v28 = [v26 deviceTypes];
          if (!v28)
          {

            v32 = MEMORY[0x277D84F90];
            goto LABEL_35;
          }

          v29 = v28;
          v30 = sub_252E37264();

          v31 = *(v30 + 16);
          if (!v31)
          {

            v32 = MEMORY[0x277D84F90];
            v8 = &off_279711000;
            goto LABEL_33;
          }

          v59 = v11;
          v60 = v6;
          v68 = MEMORY[0x277D84F90];
          sub_2529AA420(0, v31, 0);
          v32 = v68;
          v33 = 32;
          do
          {
            v34 = sub_252E25FC4(*(v30 + v33));
            if (v35)
            {
              v36 = 0;
            }

            else
            {
              v36 = v34;
            }

            v38 = *(v68 + 16);
            v37 = *(v68 + 24);
            if (v38 >= v37 >> 1)
            {
              sub_2529AA420((v37 > 1), v38 + 1, 1);
            }

            *(v68 + 16) = v38 + 1;
            *(v68 + 8 * v38 + 32) = v36;
            v33 += 8;
            --v31;
          }

          while (v31);

          v6 = v60;
          v4 = &off_279711000;
          v11 = v59;
          v8 = &off_279711000;
        }

        else
        {
          if (qword_27F53F4E8 != -1)
          {
            swift_once();
          }

          v39 = sub_252E36AD4();
          __swift_project_value_buffer(v39, qword_27F544D60);
          sub_252E379F4();

          v40 = [v67 description];
          v41 = sub_252E36F34();
          v43 = v42;

          MEMORY[0x2530AD570](v41, v43);

          sub_252CC3D90(0xD000000000000025, 0x8000000252E75B90, 0xD00000000000008CLL, 0x8000000252E6E8A0);

          v32 = MEMORY[0x277D84F90];
        }

        v17 = v65;
LABEL_33:
        v23 = &off_279711000;
LABEL_35:
        v44 = *(v32 + 16);
        v3 = v66;
        if (v44)
        {
          v45 = 32;
          while (v44)
          {
            v46 = *(v32 + v45);
            v45 += 8;
            --v44;
            if (v46 == 3)
            {

              v51 = 1;
              goto LABEL_57;
            }
          }
        }

        v47 = sub_252DA10F8();
        v48 = *(v47 + 16);
        if (v48)
        {
          v49 = 32;
          while (v48)
          {
            v50 = *(v47 + v49);
            v49 += 8;
            --v48;
            if (v50 == 29)
            {

              v51 = 1;
              goto LABEL_57;
            }
          }
        }

        else
        {
        }

        v20 = v63;
        v22 = v61;
        v21 = v62;
        if (v19 == v64)
        {
          goto LABEL_55;
        }
      }

      if (v19 >= *(v21 + 16))
      {
        goto LABEL_53;
      }

      v24 = *(v22 + 8 * v19);
      v25 = __OFADD__(v19++, 1);
      if (!v25)
      {
        goto LABEL_18;
      }

LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      ;
    }

LABEL_55:
  }

LABEL_56:
  v51 = 0;
LABEL_57:
  if ([v6 taskType] != 5)
  {
    if ((v51 & 1) == 0)
    {
      goto LABEL_67;
    }

LABEL_63:
    v55 = [v3 v4[214]];
    if (v55)
    {
      v56 = v55;
      if ([v55 taskType] == 4)
      {

        return v11;
      }

      v57 = [v56 taskType];

      if (v57 == 5)
      {
        return v11;
      }
    }

    else
    {
      sub_252C515AC();
    }

    return 0;
  }

  v52 = [v3 v4[214]];
  if (!v52)
  {
    sub_252C515AC();
    if ((v51 & 1) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_63;
  }

  v53 = v52;
  v54 = [v52 v8[203]];

  if ((v51 & 1) == 0)
  {
LABEL_67:

    return 0;
  }

  if (v54 != 6)
  {
    goto LABEL_63;
  }

  return 1;
}

uint64_t sub_252B83BD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[15] = a3;
  v4[16] = v3;
  v4[13] = a1;
  v4[14] = a2;
  v5 = sub_252E34014();
  v4[17] = v5;
  v4[18] = *(v5 - 8);
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252B83CA4, 0, 0);
}

uint64_t sub_252B83CA4()
{
  v1 = *(v0 + 112);
  v2 = swift_allocObject();
  v3 = MEMORY[0x277D84F90];
  *(v0 + 168) = v2;
  *(v2 + 16) = v3;
  v4 = (v2 + 16);
  v5 = [v1 userTask];
  if (v5)
  {
    if (*(v0 + 120))
    {
      v32 = v5;
      v6 = sub_252C2B064(v5);
      v7 = v6;
      v8 = v6 & 0xFFFFFFFFFFFFFF8;
      if (v6 >> 62)
      {
LABEL_33:
        v9 = sub_252E378C4();
      }

      else
      {
        v9 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v10 = 0;
      v33 = MEMORY[0x277D84F90];
      while (v9 != v10)
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v11 = MEMORY[0x2530ADF00](v10, v7);
        }

        else
        {
          if (v10 >= *(v8 + 16))
          {
            goto LABEL_32;
          }

          v11 = *(v7 + 8 * v10 + 32);
        }

        v12 = v11;
        v13 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          __break(1u);
LABEL_32:
          __break(1u);
          goto LABEL_33;
        }

        v14 = sub_252DA124C(0);

        ++v10;
        if (v14)
        {
          MEMORY[0x2530AD700](v15);
          if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_252E372A4();
          }

          sub_252E372D4();
          v33 = v3;
          v10 = v13;
        }
      }

      v4 = (v2 + 16);
      v16 = v33;
    }

    else
    {

      v16 = MEMORY[0x277D84F90];
    }

    *v4 = v16;
  }

  v17 = *(v0 + 120);
  if (v17)
  {
    v18 = sub_252C2AC20();
  }

  else
  {
    v18 = 0;
  }

  v19 = *(v0 + 128);
  v20 = swift_allocObject();
  *(v0 + 176) = v20;
  *(v20 + 16) = v19;
  v21 = v18 & 1;
  *(v20 + 24) = v21;
  *(v20 + 32) = v2;
  swift_retain_n();

  if (v17)
  {
    v22 = *(v19 + 48);
    v23 = *(v0 + 120);
    v24 = *__swift_project_boxed_opaque_existential_1((v19 + 24), v22);
    v25 = swift_task_alloc();
    *(v0 + 184) = v25;
    *v25 = v0;
    v25[1] = sub_252B840FC;

    return sub_252C0BF64(0, v21, v24, v4);
  }

  else
  {

    if (qword_27F53F4D0 != -1)
    {
      swift_once();
    }

    v27 = *(v0 + 128);
    v28 = sub_252E36AD4();
    __swift_project_value_buffer(v28, qword_27F544D18);
    sub_252CC4050(0xD00000000000003CLL, 0x8000000252E6B3F0, 0xD00000000000008FLL, 0x8000000252E6B430, 0xD000000000000042, 0x8000000252E6B4C0, 205);
    v29 = *(v27 + 96);
    __swift_project_boxed_opaque_existential_1((v27 + 72), v29);
    sub_252AD7CC4();
    v30 = swift_task_alloc();
    *(v0 + 232) = v30;
    *v30 = v0;
    v30[1] = sub_252A9A110;
    v31 = *(v0 + 160);

    return sub_252BDB88C(v0 + 16, &unk_252E4E938, v20, v31, 0, 0, 0, v29);
  }
}

uint64_t sub_252B840FC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 192) = a1;
  *(v3 + 200) = v1;

  if (v1)
  {
    v4 = sub_252B842B0;
  }

  else
  {
    v4 = sub_252B84210;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_252B84210()
{
  v1 = *(v0 + 120);

  v2 = swift_task_alloc();
  *(v0 + 208) = v2;
  *v2 = v0;
  v2[1] = sub_252A99F6C;

  return sub_252E174F4(v1);
}

uint64_t sub_252B842B0()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_252B84348(uint64_t a1, char a2, uint64_t a3)
{
  *(v3 + 40) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = a3;
  return MEMORY[0x2822009F8](sub_252B8436C, 0, 0);
}

uint64_t sub_252B8436C()
{
  v1 = *(v0 + 24);
  v2 = *__swift_project_boxed_opaque_existential_1((*(v0 + 16) + 24), *(*(v0 + 16) + 48));
  v3 = swift_task_alloc();
  *(v0 + 32) = v3;
  *v3 = v0;
  v3[1] = sub_252A9A974;
  v4 = *(v0 + 40);

  return sub_252C0BF64(0, v4, v2, v1 + 16);
}

uint64_t sub_252B8445C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25293B808;

  return sub_252B83BD4(a1, a2, a3);
}

void *sub_252B84510@<X0>(const void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for GetBooleanStateResponseHandler();
  swift_allocObject();
  memcpy(__dst, a1, sizeof(__dst));
  result = sub_252BE97AC(__dst);
  *a2 = result;
  return result;
}

BOOL sub_252B84574(void *a1, _BOOL8 a2)
{
  v4 = [a1 userTask];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  if (a2)
  {
    v6 = sub_252C2B064(v4);
    if (v6 >> 62)
    {
      v7 = sub_252E378C4();
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    a2 = v7 > 0;
  }

  v8 = [a1 userTask];
  if (!v8)
  {
    sub_252C515AC();

    return 0;
  }

  v9 = v8;
  if ([v8 taskType] != 4)
  {
    v10 = [v9 taskType];

    if (v10 == 5)
    {
      return a2;
    }

    return 0;
  }

  return a2;
}

uint64_t sub_252B84684()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_25294B958;

  return sub_252B84348(v2, v3, v4);
}

char *sub_252B84730(void *a1, unint64_t a2, unint64_t a3, NSObject *a4, char a5, uint64_t a6, char a7)
{
  v14 = [a1 userTask];
  if (!v14)
  {
    if (qword_2814B0A70 != -1)
    {
      swift_once();
    }

    v20 = sub_252E36AD4();
    __swift_project_value_buffer(v20, qword_2814B0A78);
    sub_252CC4050(0xD00000000000001FLL, 0x8000000252E80A90, 0xD000000000000080, 0x8000000252E83700, 0xD000000000000039, 0x8000000252E838B0, 50);
    v19 = [objc_allocWithZone(type metadata accessor for ControlHomeIntentResponse()) init];
    v21 = OBJC_IVAR___ControlHomeIntentResponse_code;
    swift_beginAccess();
    *&v19[v21] = 5;
    [v19 setUserActivity_];
    type metadata accessor for HomeEntityResponse();
    v15 = sub_252E37254();
    [v19 setEntityResponses_];
    goto LABEL_10;
  }

  v15 = v14;
  v16 = [a1 filters];
  if (!v16)
  {
    if (qword_2814B0A70 != -1)
    {
      swift_once();
    }

    v22 = sub_252E36AD4();
    __swift_project_value_buffer(v22, qword_2814B0A78);
    sub_252CC4050(0xD00000000000001ELL, 0x8000000252E80AD0, 0xD000000000000080, 0x8000000252E83700, 0xD000000000000039, 0x8000000252E838B0, 54);
    v19 = [objc_allocWithZone(type metadata accessor for ControlHomeIntentResponse()) init];
    v23 = OBJC_IVAR___ControlHomeIntentResponse_code;
    swift_beginAccess();
    *&v19[v23] = 5;
    [v19 setUserActivity_];
    type metadata accessor for HomeEntityResponse();
    v24 = sub_252E37254();
    [v19 setEntityResponses_];

LABEL_10:
    return v19;
  }

  v17 = v16;
  type metadata accessor for HomeFilter();
  v18 = sub_252E37264();

  v19 = sub_252B84F08(v15, v18, a2, a3, a4, a5 & 1, a6, a7 & 1);

  return v19;
}

unint64_t sub_252B84A70(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  v2 = v1;
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_46;
  }

  v3 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v3)
  {
    v4 = 0;
    v31 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v32 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v28 = isUniquelyReferenced_nonNull_bridgeObject;
    v30 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v5 = MEMORY[0x277D84F90];
    v29 = v3;
    while (1)
    {
      if (v32)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x2530ADF00](v4, v28);
        v6 = isUniquelyReferenced_nonNull_bridgeObject;
        v7 = __OFADD__(v4++, 1);
        if (v7)
        {
          goto LABEL_40;
        }
      }

      else
      {
        if (v4 >= *(v31 + 16))
        {
          goto LABEL_41;
        }

        v6 = *(v30 + 8 * v4);

        v7 = __OFADD__(v4++, 1);
        if (v7)
        {
          goto LABEL_40;
        }
      }

      v8 = [*(v6 + OBJC_IVAR____TtC22HomeAutomationInternal5Scene_delegate) actions];
      sub_25293F638(0, &qword_27F5412F0, 0x277CD17F8);
      sub_2529E6100();
      v9 = sub_252E373A4();

      v10 = sub_252B2E20C(v9);

      v11 = v10 >> 62;
      v12 = v10 >> 62 ? sub_252E378C4() : *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v13 = v5 >> 62;
      if (v5 >> 62)
      {
        break;
      }

      isUniquelyReferenced_nonNull_bridgeObject = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v14 = isUniquelyReferenced_nonNull_bridgeObject + v12;
      if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v12))
      {
        goto LABEL_39;
      }

LABEL_13:
      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v35 = v12;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v13)
        {
          v15 = v5 & 0xFFFFFFFFFFFFFF8;
          if (v14 <= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_20;
          }

          goto LABEL_19;
        }

LABEL_18:
        sub_252E378C4();
        goto LABEL_19;
      }

      if (v13)
      {
        goto LABEL_18;
      }

LABEL_19:
      isUniquelyReferenced_nonNull_bridgeObject = sub_252E37A54();
      v5 = isUniquelyReferenced_nonNull_bridgeObject;
      v15 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_20:
      v16 = *(v15 + 16);
      v17 = *(v15 + 24);
      if (v11)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_252E378C4();
        v18 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_24:
          if (((v17 >> 1) - v16) < v35)
          {
            goto LABEL_43;
          }

          v33 = v2;
          v19 = v15 + 8 * v16 + 32;
          if (v11)
          {
            if (v18 < 1)
            {
              goto LABEL_45;
            }

            sub_2529E6488(&qword_27F5438B8, &qword_27F5438B0, &qword_252E4E958, MEMORY[0x277D83988]);
            for (i = 0; i != v18; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5438B0, &qword_252E4E958);
              v21 = sub_2529FBE00(v34, i, v10);
              v23 = *v22;

              (v21)(v34, 0);
              *(v19 + 8 * i) = v23;
            }
          }

          else
          {
            type metadata accessor for Action();
            swift_arrayInitWithCopy();
          }

          v2 = v33;
          if (v35 >= 1)
          {
            v24 = *(v15 + 16);
            v7 = __OFADD__(v24, v35);
            v25 = v24 + v35;
            if (v7)
            {
              goto LABEL_44;
            }

            *(v15 + 16) = v25;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v18 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v18)
        {
          goto LABEL_24;
        }
      }

      if (v35 > 0)
      {
        goto LABEL_42;
      }

LABEL_5:
      if (v4 == v29)
      {
        return v5;
      }
    }

    isUniquelyReferenced_nonNull_bridgeObject = sub_252E378C4();
    v14 = isUniquelyReferenced_nonNull_bridgeObject + v12;
    if (!__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v12))
    {
      goto LABEL_13;
    }

LABEL_39:
    __break(1u);
LABEL_40:
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
    v26 = isUniquelyReferenced_nonNull_bridgeObject;
    v3 = sub_252E378C4();
    isUniquelyReferenced_nonNull_bridgeObject = v26;
  }

  return MEMORY[0x277D84F90];
}

void sub_252B84E48()
{
  v0 = [objc_allocWithZone(type metadata accessor for ControlHomeIntentResponse()) init];
  v1 = OBJC_IVAR___ControlHomeIntentResponse_code;
  swift_beginAccess();
  *&v0[v1] = 4;
  v2 = v0;
  [v2 setUserActivity_];

  type metadata accessor for HomeEntityResponse();
  v3 = sub_252E37254();
  [v2 setEntityResponses_];

  qword_27F5758C8 = v2;
}

id sub_252B84F08(void *a1, unint64_t a2, unint64_t a3, unint64_t a4, NSObject *a5, int a6, uint64_t a7, int a8)
{
  LODWORD(v99) = a8;
  LODWORD(v85) = a6;
  v98 = a5;
  v102 = a4;
  v92 = sub_252E36C84();
  v91 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v88 = (v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v90 = sub_252E36D54();
  v89 = *(v90 - 8);
  v13 = MEMORY[0x28223BE20](v90);
  v86 = v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v87 = v81 - v15;
  v97 = sub_252E36CA4();
  v16 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v96 = v81 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_252E36D04();
  v100 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v94 = v81 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_252E36CB4();
  v84 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v20 = v81 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);

  v22 = *(sub_252B680FC(v21) + 136);

  v101 = v16;
  if (v22 && (v23 = sub_252E33694(), v25 = v24, , v25))
  {
    v82 = v23;
  }

  else
  {
    sub_252E35F84();
    sub_252E35F74();
    sub_252E35F24();

    v82 = sub_252E33694();
    v25 = v26;
  }

  sub_252E35F84();
  sub_252E35F74();
  sub_252E35F34();

  v27 = sub_252E36814();
  v29 = v28;

  type metadata accessor for ControlHomeIntent.Builder();
  swift_allocObject();
  v30 = ControlHomeIntent.Builder.init()();
  sub_252B4EEFC(a2);
  v31 = (*(*v30 + 208))();
  v83 = a2;
  v32 = v31;

  v33 = (*(*v32 + 184))(a1);

  v35 = (*(*v33 + 224))(v34);

  v36 = v99 & 1;
  sub_252B56B48(a3, v102, v35, a7, v99 & 1, v82, v25, v27, v29);

  v37 = dispatch_semaphore_create(0);
  sub_25293F638(0, &qword_2814B0218, 0x277D85C78);
  v38 = v84;
  v39 = v93;
  (*(v84 + 104))(v20, *MEMORY[0x277D851C0], v93);
  v99 = sub_252E375A4();
  (*(v38 + 8))(v20, v39);
  v40 = swift_allocObject();
  if (qword_27F53F390 != -1)
  {
    swift_once();
  }

  v41 = qword_27F5758C8;
  *(v40 + 16) = qword_27F5758C8;
  v42 = swift_allocObject();
  v93 = a3;
  v43 = v102;
  *(v42 + 16) = a3;
  *(v42 + 24) = v43;
  *(v42 + 32) = v98;
  *(v42 + 40) = v85 & 1;
  *(v42 + 48) = a7;
  *(v42 + 56) = v36;
  *(v42 + 64) = v40;
  *(v42 + 72) = a1;
  *(v42 + 80) = v83;
  *(v42 + 88) = v37;
  v109 = sub_252B89D4C;
  v110 = v42;
  aBlock = MEMORY[0x277D85DD0];
  v106 = 1107296256;
  v107 = sub_252AD686C;
  v108 = &block_descriptor_15;
  v44 = _Block_copy(&aBlock);
  v45 = v43;

  v46 = v41;
  v85 = v40;

  v47 = a1;

  v48 = v37;
  v49 = v94;
  sub_252E36CD4();
  v103 = MEMORY[0x277D84F90];
  v50 = sub_252B89DA4(qword_2814B0298, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5402F8, &qword_252E3E860);
  sub_2529E6488(&qword_2814B0280, &qword_27F5402F8, &qword_252E3E860, MEMORY[0x277D83970]);
  v52 = v96;
  v84 = v51;
  v53 = v97;
  v81[1] = v50;
  sub_252E37824();
  MEMORY[0x2530ADA30](0, v49, v52, v44);
  _Block_release(v44);
  v54 = v101 + 8;
  v83 = *(v101 + 8);
  v83(v52, v53);
  v55 = v100 + 8;
  v82 = *(v100 + 8);
  v82(v49, v95);

  v56 = v86;
  sub_252E36D14();
  v57 = v88;
  *v88 = v98;
  v58 = v91;
  v59 = v92;
  (*(v91 + 104))(v57, *MEMORY[0x277D85178], v92);
  v60 = v87;
  sub_252E36D24();
  (*(v58 + 8))(v57, v59);
  v61 = *(v89 + 8);
  v62 = v90;
  v61(v56, v90);
  v98 = v48;
  sub_252E375F4();
  v61(v60, v62);
  if (sub_252E36C94())
  {
    v100 = v55;
    v101 = v54;
    if (qword_2814B0A70 != -1)
    {
      swift_once();
    }

    v63 = sub_252E36AD4();
    __swift_project_value_buffer(v63, qword_2814B0A78);
    aBlock = 0;
    v106 = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000010, 0x8000000252E838F0);
    v64 = v93;
    v65 = v102;
    MEMORY[0x2530AD570](v93, v102);
    MEMORY[0x2530AD570](0xD000000000000082, 0x8000000252E83960);
    sub_252CC3D90(aBlock, v106, 0xD000000000000080, 0x8000000252E83700);

    v66 = v85;
    if (qword_27F53F370 != -1)
    {
      swift_once();
    }

    v67 = swift_allocObject();
    *(v67 + 16) = v64;
    *(v67 + 24) = v65;
    *(v67 + 32) = 0;
    *(v67 + 40) = 1;
    *(v67 + 48) = 0;
    *(v67 + 56) = 1;
    v109 = sub_252B89DEC;
    v110 = v67;
    aBlock = MEMORY[0x277D85DD0];
    v106 = 1107296256;
    v107 = sub_252AD686C;
    v108 = &block_descriptor_9_0;
    v68 = _Block_copy(&aBlock);
    v69 = v94;
    sub_252E36CD4();
    v103 = MEMORY[0x277D84F90];
    v70 = v96;
    v71 = v97;
    sub_252E37824();
    MEMORY[0x2530ADA30](0, v69, v70, v68);
    _Block_release(v68);

    v83(v70, v71);
    v82(v69, v95);

    swift_beginAccess();
  }

  else
  {

    if (qword_2814B0A70 != -1)
    {
      swift_once();
    }

    v72 = sub_252E36AD4();
    __swift_project_value_buffer(v72, qword_2814B0A78);
    aBlock = 0;
    v106 = 0xE000000000000000;
    sub_252E379F4();
    v103 = aBlock;
    v104 = v106;
    MEMORY[0x2530AD570](0xD000000000000010, 0x8000000252E838F0);
    v73 = v93;
    MEMORY[0x2530AD570](v93, v45);
    MEMORY[0x2530AD570](0xD000000000000048, 0x8000000252E83910);
    v66 = v85;
    swift_beginAccess();
    v74 = *(v66 + 16);
    v75 = [v74 description];
    v76 = sub_252E36F34();
    v78 = v77;

    MEMORY[0x2530AD570](v76, v78);

    sub_252CC3D90(v103, v104, 0xD000000000000080, 0x8000000252E83700);

    sub_252B58FEC(v73, v45);
  }

  v79 = *(v66 + 16);

  return v79;
}

uint64_t sub_252B85C04(uint64_t a1, void *a2, uint64_t a3, char a4, void **a5, char a6, uint64_t a7, void (*a8)(char *, uint64_t), char *a9)
{
  if (qword_2814B0A70 != -1)
  {
    swift_once();
  }

  v15 = sub_252E36AD4();
  __swift_project_value_buffer(v15, qword_2814B0A78);
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000034, 0x8000000252E839F0);
  MEMORY[0x2530AD570](a1, a2);
  MEMORY[0x2530AD570](0xD000000000000019, 0x8000000252E83A30);
  v16 = sub_252E37D94();
  MEMORY[0x2530AD570](v16);

  MEMORY[0x2530AD570](0xD000000000000017, 0x8000000252E83A50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541EE0, &qword_252E4D8A0);
  v17 = sub_252E36F94();
  MEMORY[0x2530AD570](v17);

  MEMORY[0x2530AD570](29549, 0xE200000000000000);
  sub_252CC3D90(0, 0xE000000000000000, 0xD000000000000080, 0x8000000252E83700);

  v18 = sub_252B85E4C(a8, a9, a1, a2, a3, a4 & 1, a5, a6 & 1);
  swift_beginAccess();
  v19 = *(a7 + 16);
  *(a7 + 16) = v18;

  return sub_252E37614();
}

char *sub_252B85E4C(void (*a1)(char *, uint64_t), char *a2, uint64_t a3, void *a4, uint64_t a5, int a6, void **a7, char a8)
{
  LODWORD(v119) = a6;
  v109 = a5;
  v121 = a4;
  v122 = a3;
  v117 = a1;
  v118 = a2;
  v10 = sub_252E36CA4();
  v107 = *(v10 - 8);
  v108 = v10;
  MEMORY[0x28223BE20](v10);
  v105 = &v99[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v106 = sub_252E36D04();
  v104 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v103 = &v99[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_252E36D54();
  v114 = *(v13 - 8);
  v115 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v99[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = sub_252E36AB4();
  v112 = *(v16 - 8);
  v113 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v99[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_2814B0A18 != -1)
  {
    swift_once();
  }

  v19 = qword_2814B0A20;
  sub_252E36A94();
  sub_252E375D4();
  v110 = v19;
  v111 = v18;
  v20 = sub_252E36A84();
  v21 = sub_252B680FC(v20);
  v22 = *(v21 + OBJC_IVAR____TtC22HomeAutomationInternal14SessionContext_numberOfTargetedEntities);
  v23 = *(v21 + OBJC_IVAR____TtC22HomeAutomationInternal14SessionContext_numberOfTargetedEntities + 8);

  v25 = *(sub_252B680FC(v24) + OBJC_IVAR____TtC22HomeAutomationInternal14SessionContext_targetedServiceTypes);

  v27 = sub_252B680FC(v26);
  v28 = *(v27 + OBJC_IVAR____TtC22HomeAutomationInternal14SessionContext_targetedContainer);
  v29 = *(v27 + OBJC_IVAR____TtC22HomeAutomationInternal14SessionContext_targetedContainer + 8);

  LOBYTE(v145) = v23;
  LOBYTE(v134) = 1;
  LOBYTE(v123) = 1;
  LOBYTE(v158[0]) = 1;
  *&v164 = v22;
  BYTE8(v164) = v23;
  *&v165 = v25;
  *(&v165 + 1) = v28;
  *(v166 + 8) = 0u;
  *(&v166[1] + 8) = 0u;
  *(&v166[2] + 8) = 0u;
  *&v166[0] = v29;
  *(&v166[3] + 1) = 0;
  LOBYTE(v167) = 1;
  *(&v167 + 1) = 0;
  v168 = 0uLL;
  LOWORD(v169) = 513;
  *(&v169 + 1) = 0;
  v170 = 0uLL;
  v171 = 1;
  sub_252D806C0(v30);
  v116 = a7;
  if (a8)
  {
    v31 = 30;
  }

  else
  {
    v31 = a7 / 1000;
  }

  sub_252D7ED58(0x716552636E797361, 0xEC00000074736575, GEOLocationCoordinate2DMake, 0, v31);

  sub_252E36D14();
  v120 = v15;
  if (qword_2814B0A70 != -1)
  {
    swift_once();
  }

  v102 = sub_252E36AD4();
  v32 = __swift_project_value_buffer(v102, qword_2814B0A78);
  *&v145 = 0;
  *(&v145 + 1) = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000034, 0x8000000252E83A90);
  v33 = v117;
  v34 = [v117 description];
  v35 = sub_252E36F34();
  v37 = v36;

  MEMORY[0x2530AD570](v35, v37);

  sub_252CC7784(v145, *(&v145 + 1), 1, 0xD00000000000007ALL, 0x8000000252E73FB0);
  v38 = v33;

  v39 = [v33 taskType];
  v41 = v121;
  v40 = v122;
  if (v39 == 6)
  {
    v42 = sub_252A54788(v33, v118, v116, a8 & 1, v122, v121, v109, v119 & 1);
  }

  else
  {
    v43 = [v33 taskType];
    v44 = v116;
    if (v43 == 2 || [v38 taskType] == 3)
    {
      v42 = sub_252A55500(v38, v118, v44, a8 & 1, v40, v41, v109, v119 & 1);
    }

    else
    {
      v42 = sub_252A56278(v38, v118, v44, a8 & 1, v40, v41, v109, v119 & 1);
    }
  }

  v45 = v42;
  swift_bridgeObjectRetain_n();
  sub_252B59988(v40, v41, v156);
  v161 = v156[6];
  v162 = v156[7];
  v163 = v157;
  v158[2] = v156[2];
  v158[3] = v156[3];
  v159 = v156[4];
  v160 = v156[5];
  v158[0] = v156[0];
  v158[1] = v156[1];
  if (sub_252AFB7A0(v158) == 1)
  {
    goto LABEL_15;
  }

  if (v159 == __PAIR128__(0xE700000000000000, 0x676E696F476E6FLL))
  {
    sub_25293847C(v156, &qword_27F543160, &qword_252E4E950);
    goto LABEL_19;
  }

  v47 = sub_252E37DB4();
  sub_25293847C(v156, &qword_27F543160, &qword_252E4E950);
  if (v47)
  {
LABEL_19:
    *&v145 = 0;
    *(&v145 + 1) = 0xE000000000000000;
    sub_252E379F4();

    *&v145 = 0xD00000000000002CLL;
    *(&v145 + 1) = 0x8000000252E83AD0;
    v48 = [v45 description];
    v49 = sub_252E36F34();
    v51 = v50;

    MEMORY[0x2530AD570](v49, v51);

    v109 = "ocation context.";
    sub_252CC3D90(v145, *(&v145 + 1), 0xD000000000000080, 0x8000000252E83700);

    if (qword_27F53F3F8 != -1)
    {
      swift_once();
    }

    v52 = OBJC_IVAR___ControlHomeIntentResponse_code;
    swift_beginAccess();
    v101 = v52;
    v53 = sub_252DB4F4C();
    v54 = MEMORY[0x277D84F90];
    if (v53)
    {
      v100 = 0;
    }

    else
    {
      v55 = sub_252C285CC();
      if (v55 >> 62)
      {
        v56 = sub_252E378C4();
      }

      else
      {
        v56 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v54 = MEMORY[0x277D84F90];
      v100 = 0;
      if (!v56 && (v119 & 1) != 0 && (a8 & 1) == 0)
      {
        v142 = v169;
        v143 = v170;
        v144 = v171;
        v138 = v166[2];
        v139 = v166[3];
        v140 = v167;
        v141 = v168;
        v134 = v164;
        v135 = v165;
        v136 = v166[0];
        v137 = v166[1];
        GEOLocationCoordinate2DMake();
        v130 = v141;
        v131 = v142;
        v132 = v143;
        v133 = v144;
        v127 = v138;
        v128 = v139;
        v129 = v140;
        v123 = v134;
        v124 = v135;
        v125 = v136;
        v126 = v137;
        sub_252B8C948(&v164, &v145);
        v54 = sub_252B871E4(v117, v118, v116, v120, &v123);
        v100 = v57;
        v153 = v131;
        v154 = v132;
        v155 = v133;
        v149 = v127;
        v150 = v128;
        v151 = v129;
        v152 = v130;
        v145 = v123;
        v146 = v124;
        v147 = v125;
        v148 = v126;
        sub_25293847C(&v145, &qword_27F5407B0, &unk_252E42860);
        *&v123 = 0;
        *(&v123 + 1) = 0xE000000000000000;
        sub_252E379F4();

        *&v123 = 0xD00000000000001CLL;
        *(&v123 + 1) = 0x8000000252E83C30;
        v58 = type metadata accessor for HomeEntityResponse();
        v59 = MEMORY[0x2530AD730](v54, v58);
        MEMORY[0x2530AD570](v59);

        sub_252CC3D90(v123, *(&v123 + 1), 0xD000000000000080, v109 | 0x8000000000000000);
      }
    }

    v60 = sub_252B8C2A0(v45, v54);
    v61 = sub_252DB4F4C();
    v119 = v32;
    if (v61)
    {
      v62 = 1;
      v46 = v120;
    }

    else
    {
      v63 = sub_252C2B888();
      v46 = v120;
      v62 = v63 || (v54 >> 62 ? (v64 = sub_252E378C4()) : (v64 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10)), !((v64 == 0) | v100 & 1)) || sub_252C2DC30();
    }

    *&v145 = 0;
    *(&v145 + 1) = 0xE000000000000000;
    sub_252E379F4();

    *&v145 = 0xD000000000000016;
    *(&v145 + 1) = 0x8000000252E83B00;
    v65 = v62;
    if (v62)
    {
      v66 = 1702195828;
    }

    else
    {
      v66 = 0x65736C6166;
    }

    if (v62)
    {
      v67 = 0xE400000000000000;
    }

    else
    {
      v67 = 0xE500000000000000;
    }

    MEMORY[0x2530AD570](v66, v67);

    sub_252CC3D90(v145, *(&v145 + 1), 0xD000000000000080, v109 | 0x8000000000000000);

    if (v65)
    {
      if (v60 >> 62)
      {
        if (sub_252E378C4())
        {
          goto LABEL_46;
        }
      }

      else if (*((v60 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_46:
        sub_252CC3D90(0xD00000000000001ELL, 0x8000000252E83B60, 0xD000000000000080, v109 | 0x8000000000000000);
        v68 = [v45 entityResponses];
        if (v68)
        {
          v69 = v68;
          type metadata accessor for HomeEntityResponse();
          v70 = sub_252E37264();
        }

        else
        {
          if (qword_27F53F4E8 != -1)
          {
            swift_once();
          }

          v118 = __swift_project_value_buffer(v102, qword_27F544D60);
          *&v145 = 0;
          *(&v145 + 1) = 0xE000000000000000;
          sub_252E379F4();

          *&v145 = 0xD00000000000002FLL;
          *(&v145 + 1) = 0x8000000252E69700;
          v71 = v45;
          v72 = [v71 description];
          v73 = sub_252E36F34();
          v75 = v74;

          MEMORY[0x2530AD570](v73, v75);

          sub_252CC3D90(v145, *(&v145 + 1), 0xD000000000000098, 0x8000000252E69730);

          v70 = MEMORY[0x277D84F90];
          v41 = v121;
        }

        *&v145 = v54;
        sub_25297A894(v70);
        v76 = combineEntityResponses(entityResponses:)(v145);

        v118 = v45;
        v77 = *&v45[v101];
        if (qword_27F53F370 != -1)
        {
          swift_once();
        }

        v117 = qword_27F543668;
        v78 = swift_allocObject();
        *(v78 + 16) = v122;
        *(v78 + 24) = v41;
        *(v78 + 32) = v76;
        *(v78 + 40) = 2;
        *(v78 + 48) = v77;
        *(v78 + 56) = 0;
        *&v147 = sub_252B8DE78;
        *(&v147 + 1) = v78;
        *&v145 = MEMORY[0x277D85DD0];
        *(&v145 + 1) = 1107296256;
        *&v146 = sub_252AD686C;
        *(&v146 + 1) = &block_descriptor_16_1;
        v79 = _Block_copy(&v145);
        v80 = v103;
        sub_252E36CD4();
        *&v134 = MEMORY[0x277D84F90];
        sub_252B89DA4(qword_2814B0298, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5402F8, &qword_252E3E860);
        v81 = v121;
        sub_2529E6488(&qword_2814B0280, &qword_27F5402F8, &qword_252E3E860, MEMORY[0x277D83970]);
        v82 = v105;
        v83 = v108;
        sub_252E37824();
        MEMORY[0x2530ADA30](0, v80, v82, v79);
        _Block_release(v79);
        (*(v107 + 8))(v82, v83);
        (*(v104 + 8))(v80, v106);

        v84 = sub_252B894AC(v122, v81);
        if (v85 >> 60 == 15)
        {

          sub_252CC4050(0xD000000000000020, 0x8000000252E836D0, 0xD000000000000080, v109 | 0x8000000000000000, 0xD000000000000020, 0x8000000252E83B80, 241);
          sub_252B88050(0);
          v46 = v120;
          v45 = v118;
        }

        else
        {
          v86 = v84;
          v87 = v85;
          v88 = objc_allocWithZone(MEMORY[0x277CEF3F0]);
          v89 = sub_252E32D14();
          v90 = [v88 initWithContext_];

          v91 = [objc_allocWithZone(MEMORY[0x277CEF3E8]) initWithRequestInfo_];
          v46 = v120;
          if (v91)
          {
            v92 = v91;
            sub_252CC3D90(0xD00000000000001CLL, 0x8000000252E83C00, 0xD000000000000080, v109 | 0x8000000000000000);
            v93 = swift_allocObject();
            v94 = v121;
            v93[2] = v122;
            v93[3] = v94;
            v93[4] = sub_252B88050;
            v93[5] = 0;
            v93[6] = v90;
            *&v147 = sub_252B8C938;
            *(&v147 + 1) = v93;
            *&v145 = MEMORY[0x277D85DD0];
            *(&v145 + 1) = 1107296256;
            *&v146 = sub_252B884FC;
            *(&v146 + 1) = &block_descriptor_22;
            v95 = _Block_copy(&v145);
            v96 = v90;

            [v92 performRequestWithCompletion_];
            sub_252982EFC(v86, v87);

            _Block_release(v95);
          }

          else
          {

            sub_252CC4050(0xD000000000000045, 0x8000000252E83BB0, 0xD000000000000080, v109 | 0x8000000000000000, 0xD000000000000020, 0x8000000252E83B80, 263);
            sub_252982EFC(v86, v87);
          }

          v45 = v118;
        }

        goto LABEL_62;
      }
    }

    swift_bridgeObjectRelease_n();

    sub_252CC3D90(0xD00000000000003ALL, 0x8000000252E83B20, 0xD000000000000080, v109 | 0x8000000000000000);
    sub_252B58FEC(v122, v41);
LABEL_62:
    sub_252B8C574(v60);
    goto LABEL_63;
  }

LABEL_15:

  v46 = v120;
LABEL_63:

  v142 = v169;
  v143 = v170;
  v144 = v171;
  v138 = v166[2];
  v139 = v166[3];
  v140 = v167;
  v141 = v168;
  v134 = v164;
  v135 = v165;
  v136 = v166[0];
  v137 = v166[1];
  GEOLocationCoordinate2DMake();
  v130 = v141;
  v131 = v142;
  v132 = v143;
  v133 = v144;
  v127 = v138;
  v128 = v139;
  v129 = v140;
  v123 = v134;
  v124 = v135;
  v125 = v136;
  v126 = v137;
  v97 = v111;
  _s22HomeAutomationInternal8SignpostO3end7logging___ySo9OS_os_logC_0H012OSSignpostIDVs12StaticStringVAC7ContextVSgtFZ_0(v110, v111, "SendAsyncCommand", 16, 2, &v123);
  v153 = v131;
  v154 = v132;
  v155 = v133;
  v149 = v127;
  v150 = v128;
  v151 = v129;
  v152 = v130;
  v145 = v123;
  v146 = v124;
  v147 = v125;
  v148 = v126;
  sub_25293847C(&v145, &qword_27F5407B0, &unk_252E42860);
  (*(v114 + 8))(v46, v115);
  (*(v112 + 8))(v97, v113);
  return v45;
}