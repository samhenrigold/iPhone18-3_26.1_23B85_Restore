uint64_t sub_1A396E3A8()
{
  sub_1A38E805C(0, &qword_1EB0FF648, 0x1E69DCBA0);
  v0 = sub_1A3A31810();
  v1 = CAMLocalizedFrameworkString(v0, 0);

  sub_1A3A31850();
  v2 = sub_1A3A31810();
  v3 = [objc_opt_self() systemImageNamed_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF650, &qword_1A3A791C8);
  inited = swift_initStackObject();
  strcpy((inited + 32), "menuIdentifier");
  *(inited + 16) = xmmword_1A3A681C0;
  *(inited + 47) = -18;
  *(inited + 48) = sub_1A3A31810();
  sub_1A3A1DAE0(inited);
  swift_setDeallocating();
  sub_1A388F740(inited + 32, &qword_1EB0FF658, &qword_1A3A791D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF660, &qword_1A3A791D8);
  v5 = sub_1A3A31C00();
  sub_1A38E805C(0, &qword_1EB0FF690, 0x1E69DCC60);
  sub_1A3A31810();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FE510, &qword_1A3A74238);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1A3A681B0;
  *(v6 + 32) = v5;
  return sub_1A3A31CB0();
}

uint64_t sub_1A396E630()
{
  v25 = *MEMORY[0x1E69E9840];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF350, &qword_1A3A77C20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A3A791B0;
  *(inited + 32) = xmmword_1A3A681A0;
  v1 = (inited + 32);
  *(inited + 48) = 0;
  v24 = inited;
  v2 = [objc_opt_self() capabilities];
  if (!v2)
  {
    __break(1u);
  }

  v3 = v2;
  v4 = [v2 isLivePhotoAutoModeSupported];

  if ((v4 & 1) == 0)
  {
    if (*v1 == 2)
    {
      v5 = 0;
    }

    else if (*(inited + 40) == 2)
    {
      v5 = 1;
    }

    else
    {
      v6 = *(inited + 48);
      if (v6 != 2)
      {
LABEL_23:
        v7 = *(inited + 16);
        if (v7 < 3)
        {
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        v5 = 3;
LABEL_25:
        v6 = v5;
        if (!__OFADD__(v7, v5 - v7))
        {
          v24 = inited;
          if (v5 <= *(inited + 24) >> 1)
          {
LABEL_27:
            sub_1A395B4F4(v5, v7, 0);
            goto LABEL_28;
          }

LABEL_42:
          if (v7 > v6)
          {
            v6 = v7;
          }

          v18 = v5;
          v19 = v7;
          v20 = sub_1A39562D0(1, v6, 1, inited);
          v7 = v19;
          inited = v20;
          v5 = v18;
          v24 = inited;
          goto LABEL_27;
        }

LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      v5 = 2;
    }

    v6 = v5 + 1;
    v7 = *(inited + 16);
    if (v5 + 1 != v7)
    {
      v8 = (inited + 8 * v5 + 40);
      while (v6 < v7)
      {
        if (*v8 != 2)
        {
          if (v6 != v5)
          {
            if (v5 >= v7)
            {
              __break(1u);
LABEL_20:
              if (v7 < v5)
              {
                goto LABEL_40;
              }

              if (v5 < 0)
              {
                __break(1u);
                goto LABEL_23;
              }

              goto LABEL_25;
            }

            v9 = v1[v5];
            v1[v5] = *v8;
            *v8 = v9;
            v7 = *(inited + 16);
          }

          ++v5;
        }

        ++v6;
        ++v8;
        if (v6 == v7)
        {
          goto LABEL_20;
        }
      }

      goto LABEL_38;
    }

    v7 = v5 + 1;
    goto LABEL_25;
  }

LABEL_28:
  v10 = *(inited + 16);
  if (v10)
  {
    v23 = MEMORY[0x1E69E7CC0];
    sub_1A3A31FD0();
    v11 = 0;
    while (v11 < *(inited + 16))
    {
      v21 = *(inited + 8 * v11 + 32);
      sub_1A396C040(&v21, &v22);
      ++v11;
      sub_1A3A31FA0();
      sub_1A3A31FE0();
      sub_1A3A31FF0();
      sub_1A3A31FB0();
      if (v10 == v11)
      {

        v12 = v23;
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    sub_1A38E805C(0, &qword_1EB0FF640, 0x1E69DCC78);
    sub_1A3A2EA50();
    sub_1A3A32080();

    goto LABEL_36;
  }

  v12 = MEMORY[0x1E69E7CC0];
LABEL_34:
  v13 = sub_1A3A31810();
  v14 = CAMLocalizedFrameworkString(v13, 0);

  sub_1A3A31850();
  v15 = sub_1A3A31810();
  v16 = [objc_opt_self() systemImageNamed_];

  sub_1A3A31810();
  if (v12 >> 62)
  {
    goto LABEL_39;
  }

  sub_1A3A2EA50();
  sub_1A3A321D0();
  sub_1A38E805C(0, &qword_1EB0FF640, 0x1E69DCC78);
LABEL_36:

  sub_1A38E805C(0, &qword_1EB0FF690, 0x1E69DCC60);
  return sub_1A3A31CB0();
}

uint64_t sub_1A396EAA4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF668, &qword_1A3A7D650);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v44 = &v41 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF670, &qword_1A3A791E0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v43 = &v41 - v3;
  v42 = sub_1A3A2EB90();
  v4 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = MEMORY[0x1E69E7CC0];
  sub_1A3A31FD0();
  v7 = 0;
  v8 = (v4 + 8);
  v45 = ".menus.livePhotoMode";
  while (1)
  {
    v9 = *(&unk_1F1655030 + v7 + 32);
    if ((v9 - 1) < 3)
    {
      break;
    }

    if (v9)
    {
      goto LABEL_22;
    }

    v15 = sub_1A3A31810();
    v16 = CAMLocalizedFrameworkString(v15, 0);

    sub_1A3A31850();
LABEL_9:
    strcpy(v49, "menuIdentifier");
    v49[15] = -18;
    v17 = sub_1A3A31810();
    type metadata accessor for Identifier(0);
    v50 = v17;
    v51 = v18;
    v52[0] = 0x65756C6176;
    v52[1] = 0xE500000000000000;
    v52[5] = MEMORY[0x1E69E6530];
    v52[2] = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF678, &qword_1A3A860C0);
    v19 = sub_1A3A320E0();
    sub_1A3A2EA60();
    sub_1A396F6F0(v49, &v46);
    v20 = v46;
    v21 = v47;
    v22 = sub_1A3A1B864(v46, v47);
    if (v23)
    {
      goto LABEL_18;
    }

    *(v19 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v22;
    v24 = (v19[6] + 16 * v22);
    *v24 = v20;
    v24[1] = v21;
    sub_1A3924CD4(v48, (v19[7] + 32 * v22));
    v25 = v19[2];
    v26 = __OFADD__(v25, 1);
    v27 = v25 + 1;
    if (v26)
    {
      goto LABEL_19;
    }

    v19[2] = v27;
    sub_1A396F6F0(v52, &v46);
    v28 = v46;
    v29 = v47;
    v30 = sub_1A3A1B864(v46, v47);
    if (v31)
    {
LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      sub_1A38E805C(0, &qword_1EB0FF640, 0x1E69DCC78);
      sub_1A3A2EA50();
      sub_1A3A32080();

LABEL_17:

      sub_1A38E805C(0, &qword_1EB0FF690, 0x1E69DCC60);
      return sub_1A3A31CB0();
    }

    *(v19 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v30;
    v32 = (v19[6] + 16 * v30);
    *v32 = v28;
    v32[1] = v29;
    sub_1A3924CD4(v48, (v19[7] + 32 * v30));
    v33 = v19[2];
    v26 = __OFADD__(v33, 1);
    v34 = v33 + 1;
    if (v26)
    {
      goto LABEL_19;
    }

    v19[2] = v34;
    sub_1A38E805C(0, &qword_1EB0FF688, 0x1E69DC8B0);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF680, &qword_1A3A791E8);
    swift_arrayDestroy();
    *(&v48[0] + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF638, &qword_1A3A791C0);
    v46 = v19;
    sub_1A3A31DC0();
    sub_1A3A31FA0();
    sub_1A3A31FE0();
    sub_1A3A31FF0();
    sub_1A3A31FB0();
    v7 += 8;
    if (v7 == 32)
    {
      v35 = v53;
      v36 = sub_1A3A31810();
      v37 = CAMLocalizedFrameworkString(v36, 0);

      sub_1A3A31850();
      v38 = sub_1A3A31810();
      v39 = [objc_opt_self() systemImageNamed_];

      sub_1A3A31810();
      if (v35 < 0 || (v35 & 0x4000000000000000) != 0)
      {
        goto LABEL_20;
      }

      sub_1A3A2EA50();
      sub_1A3A321D0();
      sub_1A38E805C(0, &qword_1EB0FF640, 0x1E69DCC78);
      goto LABEL_17;
    }
  }

  CAMSecondsForTimerDuration(*(&unk_1F1655030 + v7 + 32));
  v10 = sub_1A3A2ED50();
  (*(*(v10 - 8) + 56))(v43, 1, 1, v10);
  v11 = sub_1A3A2ED90();
  (*(*(v11 - 8) + 56))(v44, 1, 1, v11);
  sub_1A3A2EB80();
  if (qword_1EB0FC1A8 != -1)
  {
    swift_once();
  }

  v12 = qword_1EB101B18;
  v13 = sub_1A3A2EB70();
  v14 = [v12 stringFromDateComponents_];

  if (v14)
  {
    sub_1A3A31850();

    (*v8)(v6, v42);
    goto LABEL_9;
  }

  __break(1u);
LABEL_22:
  v46 = 0;
  v47 = 0xE000000000000000;
  sub_1A3A31F20();
  MEMORY[0x1A58F7770](0xD000000000000019, 0x80000001A3AA5C60);
  v52[6] = v9;
  type metadata accessor for CAMTimerDuration(0);
  sub_1A3A32060();
  result = sub_1A3A32070("Fatal error", 11, 2, v46, v47, "CameraUI/ChromeTimerDuration.swift", 34, 2, 53, 0);
  __break(1u);
  return result;
}

uint64_t sub_1A396F35C()
{
  sub_1A38E805C(0, &qword_1EB0FF648, 0x1E69DCBA0);
  v0 = sub_1A3A31810();
  v1 = CAMLocalizedFrameworkString(v0, 0);

  sub_1A3A31850();
  v2 = sub_1A3A31810();
  v3 = [objc_opt_self() systemImageNamed_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF650, &qword_1A3A791C8);
  inited = swift_initStackObject();
  strcpy((inited + 32), "menuIdentifier");
  *(inited + 16) = xmmword_1A3A681C0;
  *(inited + 47) = -18;
  *(inited + 48) = sub_1A3A31810();
  sub_1A3A1DAE0(inited);
  swift_setDeallocating();
  sub_1A388F740(inited + 32, &qword_1EB0FF658, &qword_1A3A791D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF660, &qword_1A3A791D8);
  return sub_1A3A31C00();
}

BOOL sub_1A396F548(void *a1, uint64_t a2)
{
  if ([a1 propertyList])
  {
    sub_1A3A31E60();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9[0] = v7;
  v9[1] = v8;
  if (*(&v8 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF638, &qword_1A3A791C0);
    if (swift_dynamicCast())
    {
      if (*(v6 + 16) && (v3 = sub_1A3A1B864(0x65756C6176, 0xE500000000000000), (v4 & 1) != 0))
      {
        sub_1A395ADE0(*(v6 + 56) + 32 * v3, v9);

        if (swift_dynamicCast())
        {
          return v7 == a2;
        }
      }

      else
      {
      }
    }
  }

  else
  {
    sub_1A388F740(v9, &qword_1EB0FE508, &unk_1A3A77940);
  }

  return 0;
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1A3A2EA60();
}

uint64_t sub_1A396F6F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF680, &qword_1A3A791E8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t CAMSecondsForTimerDuration(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return 0;
  }

  else
  {
    return qword_1A3A791F8[a1 - 1];
  }
}

unint64_t sub_1A396F784()
{
  result = qword_1EB0FF6A0;
  if (!qword_1EB0FF6A0)
  {
    sub_1A38E805C(255, &qword_1ED998538, 0x1E696AD98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FF6A0);
  }

  return result;
}

__n128 sub_1A396F7F4@<Q0>(uint64_t *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(byte_1A3A798E0);
  sub_1A397E370(&qword_1ED996610, type metadata accessor for ChromeSmartStyleViewModel, &unk_1A3A823E0);
  sub_1A3A2F080();

  result = *(v3 + 24);
  *a2 = result;
  return result;
}

__n128 sub_1A396F8C4@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(byte_1A3A79F08);
  sub_1A397E370(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  result = *(v3 + 224);
  v5 = *(v3 + 240);
  *a2 = result;
  *(a2 + 16) = v5;
  return result;
}

void *sub_1A396F998(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_4;
  }

  v5 = sub_1A397BDBC(*(a1 + 16), 0, a2, a3);
  v6 = sub_1A397D670(&v8, v5 + 4, v4, a1);
  sub_1A397D770(v8);
  if (v6 != v4)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v5;
}

__n128 sub_1A396FA30@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(byte_1A3A79F30);
  sub_1A397E370(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  result = *(v3 + 64);
  v5 = *(v3 + 80);
  *a2 = result;
  *(a2 + 16) = v5;
  return result;
}

char *sub_1A396FB04(uint64_t a1)
{
  v25 = sub_1A3A2ED60();
  v2 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A3A2ED80();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF730, &qword_1A3A79548);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v24 - v11;
  (*(v6 + 16))(v8, a1, v5, v10);
  v13 = MEMORY[0x1E6969B50];
  sub_1A397E370(&qword_1ED998860, MEMORY[0x1E6969B50], MEMORY[0x1E6969B78]);
  sub_1A3A31930();
  sub_1A397E370(&qword_1ED998868, v13, MEMORY[0x1E6969B88]);
  v14 = (v2 + 8);
  for (i = MEMORY[0x1E69E7CC0]; ; *&i[8 * v22 + 32] = v20)
  {
    sub_1A3A31B70();
    sub_1A397E370(&qword_1ED998870, MEMORY[0x1E6969B18], MEMORY[0x1E6969B28]);
    v16 = v25;
    v17 = sub_1A3A31790();
    (*v14)(v4, v16);
    if (v17)
    {
      break;
    }

    v18 = sub_1A3A31BC0();
    v20 = *v19;
    v18(v26, 0);
    sub_1A3A31B80();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      i = sub_1A3956334(0, *(i + 2) + 1, 1, i);
    }

    v22 = *(i + 2);
    v21 = *(i + 3);
    if (v22 >= v21 >> 1)
    {
      i = sub_1A3956334((v21 > 1), v22 + 1, 1, i);
    }

    *(i + 2) = v22 + 1;
  }

  sub_1A388F740(v12, &qword_1EB0FF730, &qword_1A3A79548);
  return i;
}

double sub_1A396FF70(void *a1, double a2, uint64_t a3, const char *a4, const char *a5)
{
  KeyPath = swift_getKeyPath(a4, a3);
  v9 = swift_getKeyPath(a5);
  return sub_1A397A5B0(*&a2, 0, a1, KeyPath, v9);
}

uint64_t sub_1A3970234@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___CAMChromeConfigurator__availableCaptureModeRawValues;
  swift_beginAccess();
  return sub_1A397BCBC(v1 + v3, a1);
}

uint64_t sub_1A39702A0()
{
  v1 = OBJC_IVAR___CAMChromeConfigurator__isGraphConfigurationReconfiguring;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A39702F8()
{
  v1 = OBJC_IVAR___CAMChromeConfigurator__spatialModeHasVideoSelected;
  swift_beginAccess();
  return *(v0 + v1);
}

void *sub_1A39703B0()
{
  v1 = OBJC_IVAR___CAMChromeConfigurator__captureGraphConfiguration;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

double sub_1A3970410(void *a1, uint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  KeyPath = swift_getKeyPath(a4, a2);
  v9 = swift_getKeyPath(a5);
  return sub_1A397A318(a3, 0, a1, KeyPath, v9);
}

uint64_t sub_1A39704B4()
{
  v1 = OBJC_IVAR___CAMChromeConfigurator__preserveExposure;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A397050C()
{
  v1 = OBJC_IVAR___CAMChromeConfigurator__externalStorageOutputEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A3970564()
{
  v1 = OBJC_IVAR___CAMChromeConfigurator__externalStorageIconVisible;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A39705BC()
{
  v1 = OBJC_IVAR___CAMChromeConfigurator__isImagePickerController;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A3970674(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v5 = a1;
    if (sub_1A3A318C0() < 1)
    {
      if (qword_1EB0FC1A0 != -1)
      {
        swift_once();
      }

      v8 = sub_1A3A2F2A0();
      __swift_project_value_buffer(v8, qword_1EB0FF6A8);
      v9 = v5;
      v15 = sub_1A3A2F280();
      v10 = sub_1A3A31C10();

      if (os_log_type_enabled(v15, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        *v11 = 138412290;
        *(v11 + 4) = v9;
        *v12 = a1;
        v14 = v9;
        _os_log_impl(&dword_1A3640000, v15, v10, "Ignoring thumbnail image with missing uuid: %@", v11, 0xCu);
        sub_1A388F740(v12, &qword_1EB0FC4A8, &qword_1A3A79010);
        MEMORY[0x1A58FAC10](v12, -1, -1);
        MEMORY[0x1A58FAC10](v11, -1, -1);

        v13 = v14;
      }

      else
      {

        v13 = v15;
      }
    }

    else
    {
      KeyPath = swift_getKeyPath(a0_7);
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_1A397E370(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
      sub_1A3A2EA50();
      sub_1A3A2F070();
    }
  }

  else
  {
    v7 = swift_getKeyPath(a0_7, a2, a3, a4);
    MEMORY[0x1EEE9AC00](v7);
    sub_1A397E370(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
    sub_1A3A2F070();
  }
}

uint64_t sub_1A3970B98()
{
  v1 = OBJC_IVAR___CAMChromeConfigurator__userInteractingWithShutter;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A3970C10()
{
  v1 = OBJC_IVAR___CAMChromeConfigurator__isNightModeSupported;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A3970DBC(void *a1)
{
  v2 = v1 + *a1;
  swift_beginAccess();
  return *v2;
}

uint64_t sub_1A3970EB0()
{
  v1 = v0 + OBJC_IVAR___CAMChromeConfigurator__sharedLibraryState;
  swift_beginAccess();
  return *v1;
}

double sub_1A39710EC(uint64_t a1, const char *a2, const char *a3, uint64_t (*a4)(uint64_t, id), uint64_t (*a5)(BOOL, uint64_t, uint64_t, uint64_t))
{
  v31 = a5;
  v32 = a2;
  v35 = a4;
  v33 = a3;
  v36 = sub_1A3A2ED60();
  v6 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A3A2ED80();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF730, &qword_1A3A79548);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v31 - v15;
  (*(v10 + 16))(v12, a1, v9, v14);
  v17 = MEMORY[0x1E6969B50];
  sub_1A397E370(&qword_1ED998860, MEMORY[0x1E6969B50], MEMORY[0x1E6969B78]);
  sub_1A3A31930();
  sub_1A397E370(&qword_1ED998868, v17, MEMORY[0x1E6969B88]);
  v18 = (v6 + 8);
  for (i = MEMORY[0x1E69E7CC0]; ; *(i + 8 * v26 + 32) = v24)
  {
    sub_1A3A31B70();
    sub_1A397E370(&qword_1ED998870, MEMORY[0x1E6969B18], MEMORY[0x1E6969B28]);
    v20 = v36;
    v21 = sub_1A3A31790();
    (*v18)(v8, v20);
    if (v21)
    {
      break;
    }

    v22 = sub_1A3A31BC0();
    v24 = *v23;
    v22(v37, 0);
    sub_1A3A31B80();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      i = v31(0, *(i + 16) + 1, 1, i);
    }

    v26 = *(i + 16);
    v25 = *(i + 24);
    if (v26 >= v25 >> 1)
    {
      i = v31(v25 > 1, v26 + 1, 1, i);
    }

    *(i + 16) = v26 + 1;
  }

  sub_1A388F740(v16, &qword_1EB0FF730, &qword_1A3A79548);
  KeyPath = swift_getKeyPath(v32);
  v28 = swift_getKeyPath(v33);
  v29 = v34;
  return sub_1A397A198(i, v29, KeyPath, v28, v35);
}

uint64_t sub_1A39714EC()
{
  v1 = OBJC_IVAR___CAMChromeConfigurator__isVideoStabilizationSupported;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A3971544()
{
  v1 = OBJC_IVAR___CAMChromeConfigurator__isAspectRatioCropSupported;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A397159C()
{
  v1 = OBJC_IVAR___CAMChromeConfigurator__isExposureSliderSupported;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A3971674()
{
  v1 = OBJC_IVAR___CAMChromeConfigurator__isPortraitEffectIntensitySliderSupported;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A39716CC()
{
  v1 = OBJC_IVAR___CAMChromeConfigurator__isFlipSupported;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A3971724()
{
  v1 = OBJC_IVAR___CAMChromeConfigurator__isHDRSupported;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A39717DC()
{
  v1 = OBJC_IVAR___CAMChromeConfigurator__showLivePhotoInTopBar;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A3971834()
{
  v1 = OBJC_IVAR___CAMChromeConfigurator__isTimerSupported;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A39718CC(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v6 = sub_1A3A2ED80();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3A2ED70();
  v10 = a1;
  a4(v9);

  return (*(v7 + 8))(v9, v6);
}

double sub_1A3971A08(unint64_t a1)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_19:
    v3 = sub_1A3A320B0();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  v5 = MEMORY[0x1E69E7CC0];
  while (v3 != v4)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x1A58F7DC0](v4, a1);
    }

    else
    {
      if (v4 >= *(v2 + 16))
      {
        goto LABEL_18;
      }

      v6 = *(a1 + 8 * v4 + 32);
    }

    v7 = v6;
    v8 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v9 = [v6 integerValue];

    ++v4;
    if (v9 < 5)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_1A3956320(0, *(v5 + 2) + 1, 1, v5);
      }

      v11 = *(v5 + 2);
      v10 = *(v5 + 3);
      if (v11 >= v10 >> 1)
      {
        v5 = sub_1A3956320((v10 > 1), v11 + 1, 1, v5);
      }

      *(v5 + 2) = v11 + 1;
      *&v5[8 * v11 + 32] = v9;
      v4 = v8;
    }
  }

  KeyPath = swift_getKeyPath(aH_10);
  v13 = swift_getKeyPath(asc_1A3A79A98);
  return sub_1A397A198(v5, v15, KeyPath, v13, sub_1A3A07EE8);
}

uint64_t sub_1A3971C3C()
{
  v1 = OBJC_IVAR___CAMChromeConfigurator__isProResControlEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A3971D24()
{
  v1 = OBJC_IVAR___CAMChromeConfigurator__showActionModeIndicator;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A3971E3C()
{
  v1 = OBJC_IVAR___CAMChromeConfigurator__frontCameraOnRightEdge;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A3971E94()
{
  v1 = OBJC_IVAR___CAMChromeConfigurator__isFrontPIPSupported;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A3971EEC()
{
  v1 = OBJC_IVAR___CAMChromeConfigurator__showFrontPIPIndicator;
  swift_beginAccess();
  return *(v0 + v1);
}

double sub_1A3971F44(void *a1, double a2, double a3, double a4, double a5, uint64_t a6, const char *a7, const char *a8)
{
  *v13 = a2;
  *&v13[1] = a3;
  *&v13[2] = a4;
  *&v13[3] = a5;
  v14 = 0;
  KeyPath = swift_getKeyPath(a7, a6);
  v11 = swift_getKeyPath(a8);
  return sub_1A397A444(v13, a1, KeyPath, v11);
}

__n128 sub_1A3971FC0@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2 + *a1;
  swift_beginAccess();
  v5 = *(v4 + 32);
  result = *v4;
  v7 = *(v4 + 16);
  *a2 = *v4;
  *(a2 + 16) = v7;
  *(a2 + 32) = v5;
  return result;
}

uint64_t sub_1A3972028()
{
  v1 = OBJC_IVAR___CAMChromeConfigurator__isCapturingBurst;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A3972080()
{
  v1 = OBJC_IVAR___CAMChromeConfigurator__isNightModeCaptureUIVisible;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A39720D8()
{
  v1 = OBJC_IVAR___CAMChromeConfigurator__isCapturingFromTimer;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A3972130()
{
  v1 = OBJC_IVAR___CAMChromeConfigurator__useMessagesUI;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A3972194(void *a1)
{
  v2 = v1 + *a1;
  swift_beginAccess();
  return *v2;
}

uint64_t sub_1A39721F0()
{
  v1 = OBJC_IVAR___CAMChromeConfigurator__isQuietUIActive;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A3972248()
{
  v1 = OBJC_IVAR___CAMChromeConfigurator__deviceHasDynamicIsland;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A39722A0()
{
  v1 = OBJC_IVAR___CAMChromeConfigurator__deviceHasNotch;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A39722F8()
{
  v1 = OBJC_IVAR___CAMChromeConfigurator__shouldShowImageAnalysisButton;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A3972350()
{
  v1 = OBJC_IVAR___CAMChromeConfigurator__isShowingLiftingTextView;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A39723A8()
{
  v1 = OBJC_IVAR___CAMChromeConfigurator__isShowingOverlayDescription;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A3972460()
{
  v1 = OBJC_IVAR___CAMChromeConfigurator__isClassicModeSwitchingEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A39724B8()
{
  v1 = OBJC_IVAR___CAMChromeConfigurator__expandedModeWheelOnboardingSupported;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A39726E4()
{
  v1 = *(v0 + OBJC_IVAR___CAMChromeConfigurator_viewModel);
  swift_getKeyPath(byte_1A3A79A20);
  sub_1A397E370(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  v2 = *(v1 + 616);
  swift_getKeyPath(aH_11);
  sub_1A397E370(&qword_1ED9967F8, type metadata accessor for ChromeFlashViewModel, &unk_1A3A73F60);
  sub_1A3A2EA60();
  sub_1A3A2F080();

  v3 = *(v2 + 16);

  return v3;
}

void sub_1A3972860(char *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v7 = *&a1[OBJC_IVAR___CAMChromeConfigurator_viewModel];
  swift_getKeyPath(byte_1A3A79A20, a2);
  sub_1A397E370(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  v8 = a1;
  sub_1A3A2F080();

  v9 = *(v7 + 616);
  sub_1A3A2EA60();
  a4(a3, v9);
}

double sub_1A3972A74(char a1)
{
  v2 = a1 & 1;
  v3 = *(v1 + OBJC_IVAR___CAMChromeConfigurator_viewModel);
  swift_getKeyPath(aH_12);
  sub_1A397E370(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  v4 = *(v3 + 624);
  swift_getKeyPath(byte_1A3A799F8);
  sub_1A397E370(&qword_1ED998878, type metadata accessor for ChromeTorchViewModel, &unk_1A3A7B3E8);
  sub_1A3A2EA60();
  sub_1A3A2F080();

  if (*(v4 + 16) != v2)
  {
    KeyPath = swift_getKeyPath(byte_1A3A799F8);
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A3972CA0()
{
  v1 = *(v0 + OBJC_IVAR___CAMChromeConfigurator_viewModel);
  swift_getKeyPath(aH_12);
  sub_1A397E370(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  v2 = *(v1 + 624);
  swift_getKeyPath(byte_1A3A799F8);
  sub_1A397E370(&qword_1ED998878, type metadata accessor for ChromeTorchViewModel, &unk_1A3A7B3E8);
  sub_1A3A2EA60();
  sub_1A3A2F080();

  v3 = *(v2 + 16);

  return v3;
}

double sub_1A3972E04(char a1)
{
  v2 = a1 & 1;
  v3 = *(v1 + OBJC_IVAR___CAMChromeConfigurator_viewModel);
  swift_getKeyPath(aH_12);
  sub_1A397E370(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  v4 = *(v3 + 624);
  swift_getKeyPath(byte_1A3A799D0);
  sub_1A397E370(&qword_1ED998878, type metadata accessor for ChromeTorchViewModel, &unk_1A3A7B3E8);
  sub_1A3A2EA60();
  sub_1A3A2F080();

  if (*(v4 + 17) != v2)
  {
    KeyPath = swift_getKeyPath(byte_1A3A799D0);
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3A2F070();
  }

  return result;
}

double sub_1A3973030(char a1)
{
  v2 = a1 & 1;
  v3 = *(v1 + OBJC_IVAR___CAMChromeConfigurator_viewModel);
  swift_getKeyPath(aH_12);
  sub_1A397E370(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  v4 = *(v3 + 624);
  swift_getKeyPath(byte_1A3A799A8);
  sub_1A397E370(&qword_1ED998878, type metadata accessor for ChromeTorchViewModel, &unk_1A3A7B3E8);
  sub_1A3A2EA60();
  sub_1A3A2F080();

  if (*(v4 + 18) != v2)
  {
    KeyPath = swift_getKeyPath(byte_1A3A799A8);
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3A2F070();
  }

  return result;
}

double sub_1A397325C(char a1)
{
  v2 = a1 & 1;
  v3 = *(v1 + OBJC_IVAR___CAMChromeConfigurator_viewModel);
  swift_getKeyPath(aH_12);
  sub_1A397E370(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  v4 = *(v3 + 624);
  swift_getKeyPath(asc_1A3A79980);
  sub_1A397E370(&qword_1ED998878, type metadata accessor for ChromeTorchViewModel, &unk_1A3A7B3E8);
  sub_1A3A2EA60();
  sub_1A3A2F080();

  if (*(v4 + 19) != v2)
  {
    KeyPath = swift_getKeyPath(asc_1A3A79980);
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3A2F070();
  }

  return result;
}

double sub_1A3973488(unint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR___CAMChromeConfigurator_viewModel);
  swift_getKeyPath(aH_12);
  sub_1A397E370(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  v4 = *(v3 + 624);
  sub_1A3A2EA60();
  LOBYTE(a1) = sub_1A3A07FD8(a1);
  swift_getKeyPath(asc_1A3A79958);
  sub_1A397E370(&qword_1ED998878, type metadata accessor for ChromeTorchViewModel, &unk_1A3A7B3E8);
  sub_1A3A2F080();

  if (*(v4 + 20) != a1)
  {
    KeyPath = swift_getKeyPath(asc_1A3A79958);
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3A2F070();
  }

  return result;
}

void sub_1A39738C8(char *a1, double a2, uint64_t a3, void (*a4)(uint64_t, double))
{
  swift_getKeyPath(byte_1A3A79EE0, a3);
  sub_1A397E370(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  v7 = a1;
  sub_1A3A2F080();

  v8 = sub_1A3A2EA60();
  a4(v8, a2);
}

double sub_1A39739C0(char a1)
{
  v2 = a1 & 1;
  v3 = *(v1 + OBJC_IVAR___CAMChromeConfigurator_viewModel);
  swift_getKeyPath(byte_1A3A797A0);
  sub_1A397E370(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  v4 = *(v3 + 928);
  swift_getKeyPath(aH_13);
  sub_1A397E370(&qword_1ED996610, type metadata accessor for ChromeSmartStyleViewModel, &unk_1A3A823E0);
  sub_1A3A2EA60();
  sub_1A3A2F080();

  if (*(v4 + 16) != v2)
  {
    KeyPath = swift_getKeyPath(aH_13);
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3A2F070();
  }

  return result;
}

void sub_1A3973BEC(double a1, double a2)
{
  v5 = *(v2 + OBJC_IVAR___CAMChromeConfigurator_viewModel);
  swift_getKeyPath(byte_1A3A797A0);
  sub_1A397E370(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  v6 = *(v5 + 928);
  swift_getKeyPath(byte_1A3A798E0);
  sub_1A397E370(&qword_1ED996610, type metadata accessor for ChromeSmartStyleViewModel, &unk_1A3A823E0);
  sub_1A3A2EA60();
  sub_1A3A2F080();

  if (*(v6 + 24) != a1 || *(v6 + 32) != a2)
  {
    KeyPath = swift_getKeyPath(byte_1A3A798E0);
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3A2F070();
  }
}

void sub_1A3973E2C(double a1, double a2)
{
  v5 = *(v2 + OBJC_IVAR___CAMChromeConfigurator_viewModel);
  swift_getKeyPath(byte_1A3A797A0);
  sub_1A397E370(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  v6 = *(v5 + 928);
  swift_getKeyPath(byte_1A3A798B8);
  sub_1A397E370(&qword_1ED996610, type metadata accessor for ChromeSmartStyleViewModel, &unk_1A3A823E0);
  sub_1A3A2EA60();
  sub_1A3A2F080();

  if (*(v6 + 40) != a1 || *(v6 + 48) != a2)
  {
    KeyPath = swift_getKeyPath(byte_1A3A798B8);
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3A2F070();
  }
}

double sub_1A397406C(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR___CAMChromeConfigurator_viewModel);
  swift_getKeyPath(byte_1A3A797A0);
  sub_1A397E370(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  v4 = *(v3 + 928);
  swift_getKeyPath(byte_1A3A79890);
  sub_1A397E370(&qword_1ED996610, type metadata accessor for ChromeSmartStyleViewModel, &unk_1A3A823E0);
  sub_1A3A2EA60();
  sub_1A3A2F080();

  if (*(v4 + 56) != a1)
  {
    KeyPath = swift_getKeyPath(byte_1A3A79890);
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3A2F070();
  }

  return result;
}

double sub_1A3974294(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR___CAMChromeConfigurator_viewModel);
  swift_getKeyPath(byte_1A3A797A0);
  sub_1A397E370(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  v4 = *(v3 + 928);
  swift_getKeyPath(byte_1A3A79868);
  sub_1A397E370(&qword_1ED996610, type metadata accessor for ChromeSmartStyleViewModel, &unk_1A3A823E0);
  sub_1A3A2EA60();
  sub_1A3A2F080();

  if (*(v4 + 64) != a1)
  {
    KeyPath = swift_getKeyPath(byte_1A3A79868);
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3A2F070();
  }

  return result;
}

void sub_1A39744BC(double a1)
{
  v3 = *(v1 + OBJC_IVAR___CAMChromeConfigurator_viewModel);
  swift_getKeyPath(byte_1A3A797A0);
  sub_1A397E370(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  v4 = *(v3 + 928);
  swift_getKeyPath(asc_1A3A79840);
  sub_1A397E370(&qword_1ED996610, type metadata accessor for ChromeSmartStyleViewModel, &unk_1A3A823E0);
  sub_1A3A2EA60();
  sub_1A3A2F080();

  if (*(v4 + 72) != a1)
  {
    KeyPath = swift_getKeyPath(asc_1A3A79840);
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3A2F070();
  }
}

double sub_1A39746EC(char a1)
{
  v2 = a1 & 1;
  v3 = *(v1 + OBJC_IVAR___CAMChromeConfigurator_viewModel);
  swift_getKeyPath(byte_1A3A797A0);
  sub_1A397E370(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  v4 = *(v3 + 928);
  swift_getKeyPath(asc_1A3A79818);
  sub_1A397E370(&qword_1ED996610, type metadata accessor for ChromeSmartStyleViewModel, &unk_1A3A823E0);
  sub_1A3A2EA60();
  sub_1A3A2F080();

  if (*(v4 + 80) != v2)
  {
    KeyPath = swift_getKeyPath(asc_1A3A79818);
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3A2F070();
  }

  return result;
}

double sub_1A3974918(char a1)
{
  v2 = a1 & 1;
  v3 = *(v1 + OBJC_IVAR___CAMChromeConfigurator_viewModel);
  swift_getKeyPath(byte_1A3A797A0);
  sub_1A397E370(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  v4 = *(v3 + 928);
  swift_getKeyPath(aH_14);
  sub_1A397E370(&qword_1ED996610, type metadata accessor for ChromeSmartStyleViewModel, &unk_1A3A823E0);
  sub_1A3A2EA60();
  sub_1A3A2F080();

  if (*(v4 + 81) != v2)
  {
    KeyPath = swift_getKeyPath(aH_14);
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3A2F070();
  }

  return result;
}

double sub_1A3974B44(char a1)
{
  v2 = a1 & 1;
  v3 = *(v1 + OBJC_IVAR___CAMChromeConfigurator_viewModel);
  swift_getKeyPath(byte_1A3A797A0);
  sub_1A397E370(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  v4 = *(v3 + 928);
  swift_getKeyPath(aH_15);
  sub_1A397E370(&qword_1ED996610, type metadata accessor for ChromeSmartStyleViewModel, &unk_1A3A823E0);
  sub_1A3A2EA60();
  sub_1A3A2F080();

  if (*(v4 + 82) != v2)
  {
    KeyPath = swift_getKeyPath(aH_15);
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3A2F070();
  }

  return result;
}

void sub_1A3974E00(char *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v7 = *&a1[OBJC_IVAR___CAMChromeConfigurator_viewModel];
  swift_getKeyPath(byte_1A3A79750, a2);
  sub_1A397E370(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  v8 = a1;
  sub_1A3A2F080();

  v9 = *(v7 + 944);
  sub_1A3A2EA60();
  a4(a3, v9);
}

double sub_1A3975014(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR___CAMChromeConfigurator_viewModel);
  swift_getKeyPath(byte_1A3A79750);
  sub_1A397E370(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  v4 = *(v3 + 944);
  swift_getKeyPath(byte_1A3A79778);
  sub_1A397E370(qword_1ED998460, type metadata accessor for ChromeFilterViewModel, &unk_1A3A71B28);
  sub_1A3A2EA60();
  sub_1A3A2F080();

  if ((sub_1A39FCB74(a1, *(v4 + 40)) & 1) == 0)
  {
    v5 = sub_1A3A2EA50();
    sub_1A3905990(v5);
  }

  return result;
}

void sub_1A39751E4(char *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v7 = *&a1[OBJC_IVAR___CAMChromeConfigurator_viewModel];
  swift_getKeyPath(byte_1A3A79750, a2);
  sub_1A397E370(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  v8 = a1;
  sub_1A3A2F080();

  v9 = *(v7 + 944);
  sub_1A3A2EA60();
  a4(a3, v9);
}

double sub_1A3975320(char a1)
{
  v2 = a1 & 1;
  v3 = *(v1 + OBJC_IVAR___CAMChromeConfigurator_viewModel);
  swift_getKeyPath(aH_16);
  sub_1A397E370(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  v4 = *(v3 + 632);
  swift_getKeyPath(byte_1A3A79728);
  sub_1A397E370(&qword_1ED9976A0, type metadata accessor for ChromeLensPositionViewModel, &unk_1A3A7DAD0);
  sub_1A3A2EA60();
  sub_1A3A2F080();

  if (*(v4 + 16) != v2)
  {
    KeyPath = swift_getKeyPath(byte_1A3A79728);
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A397554C()
{
  v1 = *(v0 + OBJC_IVAR___CAMChromeConfigurator_viewModel);
  swift_getKeyPath(aH_16);
  sub_1A397E370(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  v2 = *(v1 + 632);
  swift_getKeyPath(asc_1A3A79700);
  sub_1A397E370(&qword_1ED9976A0, type metadata accessor for ChromeLensPositionViewModel, &unk_1A3A7DAD0);
  sub_1A3A2EA60();
  sub_1A3A2F080();

  v3 = *(v2 + 33);

  return v3;
}

double sub_1A39756B0(char a1)
{
  v2 = a1 & 1;
  v3 = *(v1 + OBJC_IVAR___CAMChromeConfigurator_viewModel);
  swift_getKeyPath(aH_16);
  sub_1A397E370(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  v4 = *(v3 + 632);
  swift_getKeyPath(asc_1A3A79700);
  sub_1A397E370(&qword_1ED9976A0, type metadata accessor for ChromeLensPositionViewModel, &unk_1A3A7DAD0);
  sub_1A3A2EA60();
  sub_1A3A2F080();

  if (*(v4 + 33) != v2)
  {
    KeyPath = swift_getKeyPath(asc_1A3A79700);
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3A2F070();
  }

  return result;
}

void sub_1A39758DC(double a1)
{
  v3 = *(v1 + OBJC_IVAR___CAMChromeConfigurator_viewModel);
  swift_getKeyPath(aH_16);
  sub_1A397E370(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  v4 = *(v3 + 632);
  swift_getKeyPath(asc_1A3A796D8);
  sub_1A397E370(&qword_1ED9976A0, type metadata accessor for ChromeLensPositionViewModel, &unk_1A3A7DAD0);
  sub_1A3A2EA60();
  sub_1A3A2F080();

  if (*(v4 + 24) != a1)
  {
    KeyPath = swift_getKeyPath(asc_1A3A796D8);
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3A2F070();
  }
}

uint64_t sub_1A3975B0C()
{
  v1 = *(v0 + OBJC_IVAR___CAMChromeConfigurator_viewModel);
  swift_getKeyPath(aH_16);
  sub_1A397E370(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  v2 = *(v1 + 632);
  swift_getKeyPath(aH_17);
  sub_1A397E370(&qword_1ED9976A0, type metadata accessor for ChromeLensPositionViewModel, &unk_1A3A7DAD0);
  sub_1A3A2EA60();
  sub_1A3A2F080();

  v3 = *(v2 + 34);

  return v3;
}

double sub_1A3975C70(__int128 *a1)
{
  v3 = a1[3];
  v23 = a1[2];
  v24 = v3;
  v25 = *(a1 + 8);
  v4 = a1[1];
  v21 = *a1;
  v22 = v4;
  v5 = *(v1 + OBJC_IVAR___CAMChromeConfigurator_viewModel);
  swift_getKeyPath(asc_1A3A795C0);
  v16.f64[0] = v5;
  sub_1A397E370(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  v6 = *(*&v5 + 640);
  swift_getKeyPath(aH_18);
  v16.f64[0] = v6;
  sub_1A397E370(&qword_1ED996CE8, type metadata accessor for ChromeDynamicShutterViewModel, &unk_1A3A82618);
  sub_1A3A2EA60();
  sub_1A3A2F080();

  v7 = *(*&v6 + 120);
  v17 = *(*&v6 + 104);
  v18 = v7;
  v19 = *(*&v6 + 136);
  v20 = *(*&v6 + 152);
  v16 = *(*&v6 + 88);
  if (CAMLiquidShutterShapeEqualToShape(&v21, &v16))
  {
    goto LABEL_4;
  }

  v8 = *(*&v6 + 120);
  v17 = *(*&v6 + 104);
  v18 = v8;
  v19 = *(*&v6 + 136);
  v20 = *(*&v6 + 152);
  v16 = *(*&v6 + 88);
  v14[2] = v23;
  v14[3] = v24;
  v15 = v25;
  v14[1] = v22;
  v14[0] = v21;
  if (CAMLiquidShutterShapeEqualToShape(&v16, v14))
  {
    *(*&v6 + 88) = *a1;
    v9 = a1[1];
    v10 = a1[2];
    v11 = a1[3];
    *(*&v6 + 152) = *(a1 + 8);
    *(*&v6 + 136) = v11;
    *(*&v6 + 120) = v10;
    *(*&v6 + 104) = v9;
LABEL_4:

    return result;
  }

  KeyPath = swift_getKeyPath(aH_18);
  MEMORY[0x1EEE9AC00](KeyPath);
  v16.f64[0] = v6;
  sub_1A3A2F070();

  return result;
}

double sub_1A3975F24(__int128 *a1)
{
  v3 = a1[3];
  v23 = a1[2];
  v24 = v3;
  v25 = *(a1 + 8);
  v4 = a1[1];
  v21 = *a1;
  v22 = v4;
  v5 = *(v1 + OBJC_IVAR___CAMChromeConfigurator_viewModel);
  swift_getKeyPath(asc_1A3A795C0);
  v16.f64[0] = v5;
  sub_1A397E370(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  v6 = *(*&v5 + 640);
  swift_getKeyPath(byte_1A3A79660);
  v16.f64[0] = v6;
  sub_1A397E370(&qword_1ED996CE8, type metadata accessor for ChromeDynamicShutterViewModel, &unk_1A3A82618);
  sub_1A3A2EA60();
  sub_1A3A2F080();

  v7 = *(*&v6 + 48);
  v17 = *(*&v6 + 32);
  v18 = v7;
  v19 = *(*&v6 + 64);
  v20 = *(*&v6 + 80);
  v16 = *(*&v6 + 16);
  if (CAMLiquidShutterShapeEqualToShape(&v21, &v16))
  {
    goto LABEL_4;
  }

  v8 = *(*&v6 + 48);
  v17 = *(*&v6 + 32);
  v18 = v8;
  v19 = *(*&v6 + 64);
  v20 = *(*&v6 + 80);
  v16 = *(*&v6 + 16);
  v14[2] = v23;
  v14[3] = v24;
  v15 = v25;
  v14[1] = v22;
  v14[0] = v21;
  if (CAMLiquidShutterShapeEqualToShape(&v16, v14))
  {
    *(*&v6 + 16) = *a1;
    v9 = a1[1];
    v10 = a1[2];
    v11 = a1[3];
    *(*&v6 + 80) = *(a1 + 8);
    *(*&v6 + 48) = v10;
    *(*&v6 + 64) = v11;
    *(*&v6 + 32) = v9;
LABEL_4:

    return result;
  }

  KeyPath = swift_getKeyPath(byte_1A3A79660);
  MEMORY[0x1EEE9AC00](KeyPath);
  v16.f64[0] = v6;
  sub_1A3A2F070();

  return result;
}

double sub_1A39761CC(__int128 *a1)
{
  v3 = a1[3];
  v25 = a1[2];
  v26 = v3;
  v27 = *(a1 + 8);
  v4 = a1[1];
  v23 = *a1;
  v24 = v4;
  v5 = *(v1 + OBJC_IVAR___CAMChromeConfigurator_viewModel);
  swift_getKeyPath(asc_1A3A795C0);
  v18.f64[0] = v5;
  sub_1A397E370(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  v6 = *(*&v5 + 640);
  swift_getKeyPath(byte_1A3A79638);
  v18.f64[0] = v6;
  sub_1A397E370(&qword_1ED996CE8, type metadata accessor for ChromeDynamicShutterViewModel, &unk_1A3A82618);
  sub_1A3A2EA60();
  sub_1A3A2F080();

  v7 = *(*&v6 + 192);
  v21 = *(*&v6 + 208);
  v22 = *(*&v6 + 224);
  v8 = *(*&v6 + 160);
  v19 = *(*&v6 + 176);
  v20 = v7;
  v18 = v8;
  if (CAMLiquidShutterShapeEqualToShape(&v23, &v18))
  {
    goto LABEL_4;
  }

  v9 = *(*&v6 + 192);
  v21 = *(*&v6 + 208);
  v22 = *(*&v6 + 224);
  v10 = *(*&v6 + 160);
  v19 = *(*&v6 + 176);
  v20 = v9;
  v18 = v10;
  v16[2] = v25;
  v16[3] = v26;
  v17 = v27;
  v16[1] = v24;
  v16[0] = v23;
  if (CAMLiquidShutterShapeEqualToShape(&v18, v16))
  {
    *(*&v6 + 160) = *a1;
    v11 = a1[1];
    v12 = a1[2];
    v13 = a1[3];
    *(*&v6 + 224) = *(a1 + 8);
    *(*&v6 + 192) = v12;
    *(*&v6 + 208) = v13;
    *(*&v6 + 176) = v11;
LABEL_4:

    return result;
  }

  KeyPath = swift_getKeyPath(byte_1A3A79638);
  MEMORY[0x1EEE9AC00](KeyPath);
  v18.f64[0] = v6;
  sub_1A3A2F070();

  return result;
}

void sub_1A397646C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(_OWORD *))
{
  v5 = *(a3 + 64);
  v6 = *(a3 + 16);
  v9[0] = *a3;
  v9[1] = v6;
  v7 = *(a3 + 48);
  v9[2] = *(a3 + 32);
  v9[3] = v7;
  v10 = v5;
  v8 = a1;
  a4(v9);
}

double sub_1A39764DC(char a1)
{
  v2 = a1 & 1;
  v3 = *(v1 + OBJC_IVAR___CAMChromeConfigurator_viewModel);
  swift_getKeyPath(asc_1A3A795C0);
  sub_1A397E370(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  v4 = *(v3 + 640);
  swift_getKeyPath(byte_1A3A79610);
  sub_1A397E370(&qword_1ED996CE8, type metadata accessor for ChromeDynamicShutterViewModel, &unk_1A3A82618);
  sub_1A3A2EA60();
  sub_1A3A2F080();

  if (*(v4 + 232) != v2)
  {
    KeyPath = swift_getKeyPath(byte_1A3A79610);
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3A2F070();
  }

  return result;
}

void sub_1A3976708(double a1)
{
  v3 = *(v1 + OBJC_IVAR___CAMChromeConfigurator_viewModel);
  swift_getKeyPath(asc_1A3A795C0);
  sub_1A397E370(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  v4 = *(v3 + 640);
  swift_getKeyPath(byte_1A3A795E8);
  sub_1A397E370(&qword_1ED996CE8, type metadata accessor for ChromeDynamicShutterViewModel, &unk_1A3A82618);
  sub_1A3A2EA60();
  sub_1A3A2F080();

  if (*(v4 + 240) != a1)
  {
    KeyPath = swift_getKeyPath(byte_1A3A795E8);
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3A2F070();
  }
}

double sub_1A3976938(unint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR___CAMChromeConfigurator_viewModel);
  swift_getKeyPath(aH_16);
  sub_1A397E370(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  v4 = *(v3 + 632);
  sub_1A3A2EA60();
  LOBYTE(a1) = sub_1A38C9108(a1);
  swift_getKeyPath(asc_1A3A79598);
  sub_1A397E370(&qword_1ED9976A0, type metadata accessor for ChromeLensPositionViewModel, &unk_1A3A7DAD0);
  sub_1A3A2F080();

  if (*(v4 + 32) != a1)
  {
    KeyPath = swift_getKeyPath(asc_1A3A79598);
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A3A2F070();
  }

  return result;
}

void sub_1A3976D7C(char *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v7 = *&a1[OBJC_IVAR___CAMChromeConfigurator_viewModel];
  swift_getKeyPath(byte_1A3A79E90, a2);
  sub_1A397E370(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  v8 = a1;
  sub_1A3A2F080();

  v9 = *(v7 + 656);
  sub_1A3A2EA60();
  a4(a3, v9);
}

uint64_t sub_1A3976FA4()
{
  v1 = OBJC_IVAR___CAMChromeConfigurator__wantsSmartFramingAutoZoomDefault;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A3976FFC()
{
  v1 = OBJC_IVAR___CAMChromeConfigurator__wantsSmartFramingAutoRotationDefault;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A3977054()
{
  v1 = OBJC_IVAR___CAMChromeConfigurator__autoSmartFramingEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A39770AC()
{
  v1 = OBJC_IVAR___CAMChromeConfigurator__smartFramingAutoZoomEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A3977104()
{
  v1 = OBJC_IVAR___CAMChromeConfigurator__smartFramingAutoRotationEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A397715C()
{
  v1 = OBJC_IVAR___CAMChromeConfigurator__isSmartFramingAutoZoomSupported;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A39771B4()
{
  v1 = OBJC_IVAR___CAMChromeConfigurator__isSmartFramingAutoRotationSupported;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A397720C()
{
  v1 = OBJC_IVAR___CAMChromeConfigurator__overrideSmartFramingAutoRotateInLandscapeEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

double sub_1A3977264(void *a1, uint64_t a2, uint64_t a3, const char *a4, const char *a5)
{
  v6 = a3;
  KeyPath = swift_getKeyPath(a4, a2);
  v9 = swift_getKeyPath(a5);
  v10 = a1;

  return sub_1A3979DD4(v6, v10, KeyPath, v9);
}

uint64_t sub_1A39772D0()
{
  v1 = OBJC_IVAR___CAMChromeConfigurator__overrideSmartFramingAutoZoomInLandscapeEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1A3977314(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF728, &qword_1A3A793D8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  KeyPath = &v249 - v5;
  v7 = sub_1A3A2ED80();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v249 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = (v1 + OBJC_IVAR___CAMChromeConfigurator__apertureValueMarked);
  swift_beginAccess();
  if ((v11[1] & 1) == 0)
  {
    sub_1A38ECEFC(a1, v12, *v11);
  }

  v13 = (v2 + OBJC_IVAR___CAMChromeConfigurator__apertureValue);
  swift_beginAccess();
  if ((v13[1] & 1) == 0)
  {
    sub_1A38ED040(a1, v14, *v13);
  }

  v15 = (v2 + OBJC_IVAR___CAMChromeConfigurator__apertureValueMaximum);
  swift_beginAccess();
  if ((v15[1] & 1) == 0)
  {
    sub_1A38FCE38(a1, v16, *v15);
  }

  v17 = (v2 + OBJC_IVAR___CAMChromeConfigurator__apertureValueMinimum);
  swift_beginAccess();
  if ((v17[1] & 1) == 0)
  {
    sub_1A38FCCF4(a1, v18, *v17);
  }

  v19 = v2 + OBJC_IVAR___CAMChromeConfigurator__aspectRatioCrop;
  swift_beginAccess();
  if ((v19[8] & 1) == 0)
  {
    v20 = sub_1A39A2714(*v19);
    sub_1A38FC55C(v20, a1);
  }

  v21 = OBJC_IVAR___CAMChromeConfigurator__userInteractingWithShutter;
  swift_beginAccess();
  v22 = *(v2 + v21);
  if (v22 != 2)
  {
    sub_1A38FE568(v22 & 1, a1);
  }

  v23 = v2 + OBJC_IVAR___CAMChromeConfigurator___hdrMode;
  swift_beginAccess();
  if ((v23[8] & 1) == 0)
  {
    sub_1A38FD5CC(*v23, a1);
  }

  v24 = OBJC_IVAR___CAMChromeConfigurator__isNightModeSupported;
  swift_beginAccess();
  v25 = *(v2 + v24);
  if (v25 != 2)
  {
    sub_1A38FF0CC(v25 & 1, a1);
  }

  v26 = v2 + OBJC_IVAR___CAMChromeConfigurator__nightModeControlMode;
  swift_beginAccess();
  if ((v26[8] & 1) == 0)
  {
    if (*v26 >= 3uLL)
    {
      sub_1A3A32070("Fatal error", 11, 2, 0, 0xE000000000000000, "CameraUI/ChromeNightModeControlMode.swift", 41, 2, 109, 0);
      goto LABEL_289;
    }

    sub_1A38FF4A0(0x10002u >> (8 * *v26), a1);
  }

  v27 = v2 + OBJC_IVAR___CAMChromeConfigurator__nightModeStatus;
  swift_beginAccess();
  if ((v27[8] & 1) == 0)
  {
    sub_1A38FF5E4(*v27, a1);
  }

  v28 = v2 + OBJC_IVAR___CAMChromeConfigurator__nightModeCaptureState;
  swift_beginAccess();
  if ((v28[8] & 1) == 0)
  {
    sub_1A38FF210(*v28, a1);
  }

  v29 = (v2 + OBJC_IVAR___CAMChromeConfigurator__nightModeDurationMapping);
  swift_beginAccess();
  if ((v29[2] & 1) == 0)
  {
    sub_1A38FF350(a1, v30, *v29, v29[1]);
  }

  v31 = (v2 + OBJC_IVAR___CAMChromeConfigurator__overscanOverlayAlpha);
  v32 = swift_beginAccess();
  if ((v31[2] & 1) == 0)
  {
    sub_1A38F87B4(*v31, v31[1], v32, v33);
  }

  v34 = v2 + OBJC_IVAR___CAMChromeConfigurator__sharedLibraryState;
  swift_beginAccess();
  v35 = *v34;
  if (v35 != 2)
  {
    if (v35)
    {
      v36 = sub_1A399097C(*(v34 + 1));
    }

    else
    {
      v36 = 0;
    }

    sub_1A38FFC34(v36, a1);
  }

  v37 = v2 + OBJC_IVAR___CAMChromeConfigurator__livePhotoMode;
  swift_beginAccess();
  if ((v37[8] & 1) == 0)
  {
    v38 = sub_1A3918700(*v37);
    sub_1A38FEF88(v38, a1);
  }

  v39 = OBJC_IVAR___CAMChromeConfigurator__availableCaptureModeRawValues;
  swift_beginAccess();
  sub_1A397BCBC(v2 + v39, KeyPath);
  v40 = (*(v8 + 48))(KeyPath, 1, v7);
  v257 = v2;
  if (v40 == 1)
  {
    sub_1A388F740(KeyPath, &qword_1EB0FF728, &qword_1A3A793D8);
  }

  else
  {
    (*(v8 + 32))(v10, KeyPath, v7);
    v41 = sub_1A396FB04(v10);
    KeyPath = swift_getKeyPath(byte_1A3A79520);
    v277 = a1;
    sub_1A397E370(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
    sub_1A3A2F080();

    if (sub_1A3A07EE8(v42))
    {
      (*(v8 + 8))(v10, v7);
    }

    else
    {
      sub_1A38F07B0(v41, v43);
      (*(v8 + 8))(v10, v7);
    }

    v2 = v257;
  }

  v44 = OBJC_IVAR___CAMChromeConfigurator__isGraphConfigurationReconfiguring;
  swift_beginAccess();
  v45 = *(v2 + v44);
  if (v45 != 2)
  {
    sub_1A38FCF7C(v45 & 1, a1);
  }

  v46 = OBJC_IVAR___CAMChromeConfigurator__spatialModeHasVideoSelected;
  v47 = v257;
  swift_beginAccess();
  v48 = *(v47 + v46);
  if (v48 != 2)
  {
    sub_1A38FD0C0(v48 & 1, a1);
  }

  v49 = v257 + OBJC_IVAR___CAMChromeConfigurator__photoEncodingBehavior;
  swift_beginAccess();
  if ((v49[8] & 1) == 0)
  {
    v50 = sub_1A39181EC(*v49);
    sub_1A38FF724(v50, a1);
  }

  v51 = v257 + OBJC_IVAR___CAMChromeConfigurator__defaultPhotoEncodingBehavior;
  swift_beginAccess();
  if ((v51[8] & 1) == 0)
  {
    v52 = sub_1A39181EC(*v51);
    sub_1A38FF868(v52, a1);
  }

  v53 = v257 + OBJC_IVAR___CAMChromeConfigurator__photoResolution;
  swift_beginAccess();
  if ((v53[8] & 1) == 0)
  {
    v54 = sub_1A39182B0(*v53);
    sub_1A38FF9AC(v54, a1);
  }

  v55 = v257 + OBJC_IVAR___CAMChromeConfigurator__defaultPhotoResolution;
  swift_beginAccess();
  if ((v55[8] & 1) == 0)
  {
    v56 = sub_1A39182B0(*v55);
    sub_1A38FFAF0(v56, a1);
  }

  v57 = OBJC_IVAR___CAMChromeConfigurator__captureGraphConfiguration;
  v2 = v257;
  swift_beginAccess();
  v58 = *(v2 + v57);
  if (v58)
  {
    KeyPath = v58;
    v59 = sub_1A38ECB30([KeyPath mode], a1);
    if (*(v2 + v46) == 2 && [KeyPath mode] == 8)
    {
      v59 = sub_1A38FD0C0(1, a1);
    }

    v2 = &selRef_videoStabilizationButton;
    v60 = [KeyPath videoStabilizationStrength];
    p_ivar_lyt = &qword_1EB0FF000;
    if (v60 >= 4)
    {
      goto LABEL_290;
    }

    v254 = v53;
    v255 = v49;
    v256 = v34;
    v2 = v257;
    *(v257 + OBJC_IVAR___CAMChromeConfigurator_actionModeEnabled) = 0x1010000u >> (8 * v60);
    v62 = [KeyPath frontRearSimultaneousVideoEnabled];
    sub_1A38FDFE8(v62, a1);
    v63 = [objc_opt_self() capabilities];
    if (!v63)
    {
LABEL_280:
      __break(1u);
LABEL_281:
      v272 = 0;
      v273 = 0xE000000000000000;
      sub_1A3A31F20();
      MEMORY[0x1A58F7770](0xD00000000000001CLL, 0x80000001A3AA3B20);
      v269 = p_ivar_lyt;
      type metadata accessor for CAMPhotoResolution(0);
      sub_1A3A32060();
      v157 = v272;
      v158 = v273;
      v244 = 101;
LABEL_283:
      v248 = v244;
      v245 = "CameraUI/ChromePhotoEnums.swift";
      goto LABEL_287;
    }

    v64 = v63;
    v253 = [KeyPath mode];
    v252 = [KeyPath device];
    v251 = [KeyPath videoEncodingBehavior];
    v250 = [KeyPath videoConfiguration];
    v65 = OBJC_IVAR___CAMChromeConfigurator__externalStorageOutputEnabled;
    swift_beginAccess();
    v66 = OBJC_IVAR___CAMChromeConfigurator_actionModeEnabled;
    v67 = *(v2 + v65);
    v68 = [KeyPath prefersHDR10BitVideo];
    swift_getKeyPath(byte_1A3A794F8);
    v275 = a1;
    sub_1A397E370(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
    sub_1A3A2F080();

    LOBYTE(v247) = *(a1 + 755);
    v69 = [v64 resolvedVideoConfigurationForMode:v253 device:v252 videoEncodingBehavior:v251 videoConfiguration:v250 outputToExternalStorage:v67 & 1 prefersHDR10BitVideo:v68 frontRearSimultaneousVideoEnabled:v247];

    v70 = sub_1A38EBD88(v69, *(v2 + v66));
    sub_1A38FFFFC(v70, v71 & 1, a1);
    v72 = sub_1A38EBEE4(v69);
    v74 = [KeyPath devicePosition];
    sub_1A3901394(v74, a1);

    v49 = v255;
    v34 = v256;
    v53 = v254;
  }

  v75 = OBJC_IVAR___CAMChromeConfigurator__showActionModeIndicator;
  swift_beginAccess();
  v76 = *(v2 + v75);
  if (v76 != 2)
  {
    sub_1A38FDD60(v76 & 1, a1);
  }

  v77 = (v2 + OBJC_IVAR___CAMChromeConfigurator__viewfinderAspectRatio);
  swift_beginAccess();
  p_ivar_lyt = 0x1ED996000;
  if ((v77[1] & 1) == 0)
  {
    sub_1A39006BC(a1, v78, *v77);
  }

  v79 = (v2 + OBJC_IVAR___CAMChromeConfigurator__currentViewportFrame);
  swift_beginAccess();
  if ((v79[4] & 1) == 0)
  {
    sub_1A3900800(a1, v80, *v79, v79[1], v79[2], v79[3]);
  }

  v81 = (v2 + OBJC_IVAR___CAMChromeConfigurator__currentFourThreeViewportFrame);
  swift_beginAccess();
  if ((v81[4] & 1) == 0)
  {
    sub_1A390099C(a1, v82, *v81, v81[1], v81[2], v81[3]);
  }

  v83 = (v2 + OBJC_IVAR___CAMChromeConfigurator__descriptionOverlayTextViewFrame);
  swift_beginAccess();
  if ((v83[4] & 1) == 0)
  {
    sub_1A3900B38(a1, v84, *v83, v83[1], v83[2], v83[3]);
  }

  v85 = (v2 + OBJC_IVAR___CAMChromeConfigurator__buttonPlatterVerticalOffset);
  swift_beginAccess();
  if ((v85[1] & 1) == 0)
  {
    sub_1A3900CEC(a1, v86, *v85);
  }

  v87 = OBJC_IVAR___CAMChromeConfigurator__frontCameraOnRightEdge;
  swift_beginAccess();
  v88 = *(v2 + v87);
  if (v88 != 2)
  {
    sub_1A3900E30(v88 & 1, a1);
  }

  v89 = v2 + OBJC_IVAR___CAMChromeConfigurator__videoRecordingState;
  swift_beginAccess();
  if ((v89[8] & 1) == 0)
  {
    sub_1A38FFEBC(*v89, a1);
  }

  v90 = v2 + OBJC_IVAR___CAMChromeConfigurator__controlOrientation;
  swift_beginAccess();
  if ((v90[8] & 1) == 0)
  {
    sub_1A38FD204(*v90, a1);
  }

  v91 = *v34;
  if (v91 != 2)
  {
    if (v91)
    {
      v92 = sub_1A399097C(*(v34 + 1));
    }

    else
    {
      v92 = 0;
    }

    sub_1A38FFC34(v92, a1);
  }

  v93 = v2 + OBJC_IVAR___CAMChromeConfigurator__timerDuration;
  swift_beginAccess();
  if ((v93[8] & 1) == 0)
  {
    v94 = sub_1A39A07F4(*v93);
    sub_1A38FFD78(v94, a1);
  }

  if ((v49[8] & 1) == 0)
  {
    if (*v49 >= 3uLL)
    {
      v248 = 995;
      v245 = "CameraUI/ChromeViewModelConfigurator.swift";
      v157 = 0;
      v158 = 0xE000000000000000;
      goto LABEL_293;
    }

    sub_1A38FF724(*v49, a1);
  }

  if ((v53[8] & 1) == 0)
  {
    v95 = sub_1A39182B0(*v53);
    sub_1A38FF9AC(v95, a1);
  }

  v96 = OBJC_IVAR___CAMChromeConfigurator__supportedPhotoResolutions;
  swift_beginAccess();
  v2 = *(v2 + v96);
  if (v2)
  {
    v97 = v2[2];
    v98 = MEMORY[0x1E69E7CC0];
    if (v97)
    {
      v256 = a1;
      v270 = MEMORY[0x1E69E7CC0];
      sub_1A3A2EA50();
      sub_1A397BD2C(v97, sub_1A3956AB0);
      v99 = 0;
      while (v99 < v2[2])
      {
        p_ivar_lyt = v2[v99 + 4];
        if (p_ivar_lyt >= 4)
        {
          goto LABEL_281;
        }

        v98 = v270;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1A3956AB0(0, *(v98 + 16) + 1, 1);
          v98 = v270;
        }

        v101 = *(v98 + 16);
        v100 = *(v98 + 24);
        KeyPath = v101 + 1;
        if (v101 >= v100 >> 1)
        {
          sub_1A3956AB0((v100 > 1), v101 + 1, 1);
          v98 = v270;
        }

        ++v99;
        *(v98 + 16) = KeyPath;
        *(v98 + v101 + 32) = 0x2010000u >> (8 * p_ivar_lyt);
        if (v97 == v99)
        {

          a1 = v256;
          p_ivar_lyt = &ChromeOnboardingViewModel.ivar_lyt;
          goto LABEL_101;
        }
      }

      __break(1u);
LABEL_277:
      __break(1u);
LABEL_278:
      __break(1u);
LABEL_279:
      __break(1u);
      goto LABEL_280;
    }

LABEL_101:
    swift_getKeyPath(byte_1A3A794D0);
    v272 = a1;
    sub_1A397E370(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
    sub_1A3A2F080();

    if (sub_1A3A07EEC())
    {
    }

    else
    {
      sub_1A38F42F4(v98, v102);
    }
  }

  v103 = OBJC_IVAR___CAMChromeConfigurator__supportedEncodingBehaviors;
  v104 = v257;
  swift_beginAccess();
  v2 = *(v104 + v103);
  if (v2)
  {
    v105 = v2[2];
    v106 = MEMORY[0x1E69E7CC0];
    if (v105)
    {
      v269 = MEMORY[0x1E69E7CC0];
      sub_1A3A2EA50();
      sub_1A397BD2C(v105, sub_1A3956A80);
      v107 = 0;
      while (1)
      {
        if (v107 >= v2[2])
        {
          goto LABEL_277;
        }

        p_ivar_lyt = v2[v107 + 4];
        if (p_ivar_lyt >= 3)
        {
          break;
        }

        v106 = v269;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1A3956A80(0, *(v106 + 16) + 1, 1);
          v106 = v269;
        }

        v109 = *(v106 + 16);
        v108 = *(v106 + 24);
        KeyPath = v109 + 1;
        if (v109 >= v108 >> 1)
        {
          sub_1A3956A80((v108 > 1), v109 + 1, 1);
          v106 = v269;
        }

        ++v107;
        *(v106 + 16) = KeyPath;
        *(v106 + v109 + 32) = p_ivar_lyt;
        if (v105 == v107)
        {

          p_ivar_lyt = &ChromeOnboardingViewModel.ivar_lyt;
          goto LABEL_115;
        }
      }

      v270 = 0;
      v271 = 0xE000000000000000;
      sub_1A3A31F20();
      MEMORY[0x1A58F7770](0xD000000000000028, 0x80000001A3AA3AF0);
      v268 = p_ivar_lyt;
      type metadata accessor for CAMCapturePhotoEncodingBehavior(0);
      sub_1A3A32060();
      v157 = v270;
      v158 = v271;
      v244 = 51;
      goto LABEL_283;
    }

LABEL_115:
    swift_getKeyPath(byte_1A3A794A8);
    v270 = a1;
    sub_1A397E370(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
    sub_1A3A2F080();

    if (sub_1A3A07EEC())
    {
    }

    else
    {
      sub_1A38F3AF0(v106, v110);
    }
  }

  v111 = OBJC_IVAR___CAMChromeConfigurator__isVideoStabilizationSupported;
  v112 = v257;
  swift_beginAccess();
  v113 = *(v112 + v111);
  if (v113 != 2)
  {
    sub_1A38FE6AC(v113 & 1, a1);
  }

  v114 = OBJC_IVAR___CAMChromeConfigurator__isAspectRatioCropSupported;
  swift_beginAccess();
  v115 = *(v112 + v114);
  if (v115 != 2)
  {
    sub_1A38FE7F0(v115 & 1, a1);
  }

  v116 = OBJC_IVAR___CAMChromeConfigurator__isExposureSliderSupported;
  swift_beginAccess();
  v117 = *(v112 + v116);
  if (v117 != 2)
  {
    sub_1A38FE934(v117 & 1, a1);
  }

  v118 = OBJC_IVAR___CAMChromeConfigurator__preserveExposure;
  swift_beginAccess();
  v119 = *(v112 + v118);
  if (v119 != 2)
  {
    sub_1A38FD344(v119 & 1, a1);
  }

  v120 = v112 + OBJC_IVAR___CAMChromeConfigurator__portraitEffectIntensityMinimum;
  swift_beginAccess();
  if ((*(v120 + 8) & 1) == 0)
  {
    sub_1A38FC6A0(a1, v121, *v120);
  }

  v122 = v112 + OBJC_IVAR___CAMChromeConfigurator__portraitEffectIntensityMaximum;
  swift_beginAccess();
  if ((*(v122 + 8) & 1) == 0)
  {
    sub_1A38FC7E4(a1, v123, *v122);
  }

  v124 = v112 + OBJC_IVAR___CAMChromeConfigurator__portraitEffectIntensityDefault;
  swift_beginAccess();
  if ((*(v124 + 8) & 1) == 0)
  {
    sub_1A38FC928(a1, v125, *v124);
  }

  v126 = v112 + OBJC_IVAR___CAMChromeConfigurator__portraitEffectIntensity;
  swift_beginAccess();
  if ((*(v126 + 8) & 1) == 0)
  {
    sub_1A38FCA6C(a1, v127, *v126);
  }

  v128 = OBJC_IVAR___CAMChromeConfigurator__isPortraitEffectIntensitySliderSupported;
  swift_beginAccess();
  v129 = *(v112 + v128);
  if (v129 != 2)
  {
    sub_1A38FCBB0(v129 & 1, a1);
  }

  v130 = OBJC_IVAR___CAMChromeConfigurator__isFlipSupported;
  swift_beginAccess();
  v131 = *(v112 + v130);
  if (v131 != 2)
  {
    sub_1A38FEA78(v131 & 1, a1);
  }

  v132 = OBJC_IVAR___CAMChromeConfigurator__isHDRSupported;
  swift_beginAccess();
  v133 = *(v112 + v132);
  if (v133 != 2)
  {
    sub_1A38FEBBC(v133 & 1, a1);
  }

  v134 = OBJC_IVAR___CAMChromeConfigurator__supportedLivePhotoModes;
  swift_beginAccess();
  v2 = *(v112 + v134);
  if (v2)
  {
    v135 = v2[2];
    v136 = MEMORY[0x1E69E7CC0];
    if (v135)
    {
      v265[0] = MEMORY[0x1E69E7CC0];
      sub_1A3A2EA50();
      sub_1A397BD2C(v135, sub_1A3956A50);
      for (KeyPath = 0; KeyPath != v135; ++KeyPath)
      {
        if (KeyPath >= v2[2])
        {
          goto LABEL_278;
        }

        p_ivar_lyt = v2[KeyPath + 4];
        if (p_ivar_lyt >= 3)
        {
          v266 = 0;
          v267 = 0xE000000000000000;
          sub_1A3A31F20();
          MEMORY[0x1A58F7770](0xD000000000000019, 0x80000001A3AA3B70);
          v264 = p_ivar_lyt;
          type metadata accessor for CAMLivePhotoMode(0);
          sub_1A3A32060();
          sub_1A3A32070("Fatal error", 11, 2, v266, v267, "CameraUI/ChromeLivePhotoMode.swift", 34, 2, 41, 0);
          goto LABEL_289;
        }

        v136 = v265[0];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1A3956A50(0, *(v136 + 16) + 1, 1);
          v136 = v265[0];
        }

        v138 = *(v136 + 16);
        v137 = *(v136 + 24);
        if (v138 >= v137 >> 1)
        {
          sub_1A3956A50((v137 > 1), v138 + 1, 1);
          v136 = v265[0];
        }

        *(v136 + 16) = v138 + 1;
        *(v136 + v138 + 32) = 2 - p_ivar_lyt;
      }
    }

    v139 = sub_1A3918430(v136);

    swift_getKeyPath(byte_1A3A79480);
    v266 = a1;
    sub_1A397E370(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
    sub_1A3A2F080();

    if (sub_1A3A07EEC())
    {
    }

    else
    {
      sub_1A38F511C(v139, v140);
    }
  }

  v141 = OBJC_IVAR___CAMChromeConfigurator__shouldShowImageAnalysisButton;
  v142 = v257;
  swift_beginAccess();
  v143 = *(v142 + v141);
  if (v143 != 2)
  {
    sub_1A38FD994(v143 & 1, a1);
  }

  v144 = OBJC_IVAR___CAMChromeConfigurator__isShowingLiftingTextView;
  swift_beginAccess();
  v145 = *(v142 + v144);
  if (v145 != 2)
  {
    sub_1A38FDAD8(v145 & 1, a1);
  }

  v146 = OBJC_IVAR___CAMChromeConfigurator__showLivePhotoInTopBar;
  swift_beginAccess();
  v147 = *(v142 + v146);
  if (v147 != 2)
  {
    sub_1A38FED00(v147 & 1, a1);
  }

  v148 = OBJC_IVAR___CAMChromeConfigurator__isTimerSupported;
  swift_beginAccess();
  v149 = *(v142 + v148);
  if (v149 != 2)
  {
    sub_1A38FEE44(v149 & 1, a1);
  }

  v150 = OBJC_IVAR___CAMChromeConfigurator__supportedVideoConfigurations;
  swift_beginAccess();
  v2 = *(v142 + v150);
  if (!v2)
  {
    goto LABEL_211;
  }

  v261 = MEMORY[0x1E69E7CD0];
  v260[0] = MEMORY[0x1E69E7CD0];
  KeyPath = v2[2];
  v256 = OBJC_IVAR___CAMChromeConfigurator_actionModeEnabled;
  sub_1A3A2EA50();
  if (!KeyPath)
  {
    goto LABEL_205;
  }

  v151 = a1;
  v152 = 0;
  p_ivar_lyt = 30240;
  do
  {
    if (v152 >= v2[2])
    {
      goto LABEL_279;
    }

    v153 = v2[v152 + 4];
    if (v153 <= 0xE)
    {
      if (((1 << v153) & 0x7620) != 0)
      {
        v154 = 0;
        if (*(v257 + v256))
        {
          v155 = 2;
        }

        else
        {
          v155 = 3;
        }

        goto LABEL_182;
      }

      if (((1 << v153) & 0x992) != 0)
      {
        v154 = 0;
        v155 = 1;
        goto LABEL_182;
      }

      if (((1 << v153) & 0x4C) != 0)
      {
        v155 = 0;
        v154 = 0;
        goto LABEL_182;
      }
    }

    if ((v153 - 10000) >= 6)
    {
      if (v153)
      {
        v262 = 0;
        v263 = 0xE000000000000000;
        sub_1A3A31F20();
        MEMORY[0x1A58F7770](0xD000000000000026, 0x80000001A3AA23D0);
        v259 = v153;
        type metadata accessor for CAMCaptureVideoConfiguration(0);
        sub_1A3A32060();
        v157 = v262;
        v158 = v263;
        v159 = 46;
        goto LABEL_286;
      }

      goto LABEL_167;
    }

    v155 = 0;
    v154 = 1;
LABEL_182:
    if (v153 <= 10)
    {
      if (v153 > 4)
      {
        if (v153 < 8)
        {
          v156 = 30;
          goto LABEL_200;
        }

        if (v153 != 8)
        {
          if (v153 == 9)
          {
LABEL_192:
            v156 = 60;
          }

          else
          {
            v156 = 24;
          }

LABEL_200:
          if ((v154 & 1) == 0)
          {
            sub_1A397C6BC(&v262, v155, &qword_1EB0FF740, &qword_1A3A79568, &type metadata for ChromeVideoResolution);
            sub_1A397C6BC(&v262, v156, &qword_1EB0FF738, &qword_1A3A79560, &type metadata for ChromeVideoFrameRate);
          }

          goto LABEL_167;
        }

LABEL_197:
        v156 = 240;
        goto LABEL_200;
      }

      if (v153 > 2)
      {
        if (v153 == 3)
        {
          goto LABEL_197;
        }
      }

      else
      {
        if (v153 == 1)
        {
          goto LABEL_192;
        }

        if (v153 != 2)
        {
          goto LABEL_285;
        }
      }

LABEL_199:
      v156 = 120;
      goto LABEL_200;
    }

    if (v153 <= 9999)
    {
      if ((v153 - 11) < 2)
      {
        v156 = 25;
        goto LABEL_200;
      }

      if (v153 != 13)
      {
        if (v153 != 14)
        {
LABEL_285:
          v262 = 0;
          v263 = 0xE000000000000000;
          sub_1A3A31F20();
          MEMORY[0x1A58F7770](0xD000000000000026, 0x80000001A3AA23D0);
          v259 = v153;
          type metadata accessor for CAMCaptureVideoConfiguration(0);
          sub_1A3A32060();
          v157 = v262;
          v158 = v263;
          v159 = 99;
LABEL_286:
          v248 = v159;
          v245 = "CameraUI/ChromeVideoEnums.swift";
LABEL_287:
          for (i = 31; ; i = 42)
          {
            sub_1A3A32070("Fatal error", 11, 2, v157, v158, v245, i, 2, v248, 0);
LABEL_289:
            __break(1u);

            __break(1u);
LABEL_290:
            v275 = 0;
            v276 = 0xE000000000000000;
            sub_1A3A31F20();
            MEMORY[0x1A58F7770](0xD000000000000026, 0x80000001A3AA6240);
            v274 = [KeyPath v2[3]];
            type metadata accessor for CAMVideoStabilizationStrength(0);
            sub_1A3A32060();
            v157 = v275;
            v158 = v276;
            v248 = 920;
            v245 = "CameraUI/ChromeViewModelConfigurator.swift";
LABEL_293:
            ;
          }
        }

        v156 = 100;
        goto LABEL_200;
      }

      goto LABEL_199;
    }

    if ((v153 - 10000) >= 6)
    {
      goto LABEL_285;
    }

LABEL_167:
    ++v152;
  }

  while (KeyPath != v152);
  a1 = v151;
LABEL_205:

  v160 = sub_1A3A2EA50();
  v262 = sub_1A396F998(v160, &qword_1EB0FF300, &unk_1A3A779A0);
  sub_1A3A2EA50();
  sub_1A397BE38(&v262, sub_1A395960C, &type metadata for ChromeVideoFrameRate);

  v161 = v262;
  swift_getKeyPath(aP_10);
  v262 = a1;
  sub_1A397E370(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
  sub_1A3A2F080();

  if (sub_1A3A07EE8(v162))
  {
  }

  else
  {
    sub_1A38F2C70(v161, v163);
  }

  v164 = sub_1A3A2EA50();
  v262 = sub_1A396F998(v164, &qword_1EB0FF338, &unk_1A3A79550);
  sub_1A3A2EA50();
  sub_1A397BE38(&v262, sub_1A39595D4, &type metadata for ChromeVideoResolution);

  v165 = v262;
  swift_getKeyPath(a0_10);
  v262 = a1;
  sub_1A3A2F080();

  if (sub_1A3A07EE8(v166))
  {
  }

  else
  {
    sub_1A38F2DF4(v165, v167);
  }

LABEL_211:
  v168 = OBJC_IVAR___CAMChromeConfigurator__supportedVideoFormats;
  v169 = v257;
  swift_beginAccess();
  v170 = *(v169 + v168);
  if (v170)
  {
    swift_getKeyPath(aP_11);
    v261 = a1;
    sub_1A397E370(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
    sub_1A3A2EA50();
    sub_1A3A2F080();

    if (sub_1A3A07EE8(v171))
    {
    }

    else
    {
      sub_1A38F2F78(v170, v172);
    }
  }

  v173 = OBJC_IVAR___CAMChromeConfigurator__isProResControlEnabled;
  v174 = v257;
  swift_beginAccess();
  v175 = *(v174 + v173);
  if (v175 != 2)
  {
    sub_1A38FE424(v175 & 1, a1);
  }

  v176 = v174 + OBJC_IVAR___CAMChromeConfigurator__videoFormat;
  swift_beginAccess();
  if ((*(v176 + 8) & 1) == 0)
  {
    sub_1A38ECDBC(*v176, a1);
  }

  v177 = v174 + OBJC_IVAR___CAMChromeConfigurator__currentDefaultVideoEncodingBehavior;
  swift_beginAccess();
  if ((*(v177 + 8) & 1) == 0)
  {
    v178 = *v177;
    v179 = v257 + OBJC_IVAR___CAMChromeConfigurator__explicitProResColorSpace;
    swift_beginAccess();
    v180 = *v179;
    v181 = v179[8];
    v174 = v257;
    v182 = sub_1A38EC10C(v178, v180, v181);
    sub_1A39002BC(v182, a1);
  }

  v183 = v174 + OBJC_IVAR___CAMChromeConfigurator__currentDefaultVideoConfiguration;
  swift_beginAccess();
  if ((*(v183 + 8) & 1) == 0)
  {
    v184 = *v183;
    v185 = sub_1A38EBD88(v184, *(v174 + OBJC_IVAR___CAMChromeConfigurator_actionModeEnabled));
    sub_1A39003FC(v185, v186 & 1, a1);
    v187 = sub_1A38EBEE4(v184);
    sub_1A390055C(v187, v188 & 1, a1);
  }

  v189 = OBJC_IVAR___CAMChromeConfigurator__isFrontPIPSupported;
  swift_beginAccess();
  v190 = *(v174 + v189);
  if (v190 != 2)
  {
    sub_1A38FDEA4(v190 & 1, a1);
  }

  v191 = OBJC_IVAR___CAMChromeConfigurator__showFrontPIPIndicator;
  swift_beginAccess();
  v192 = *(v174 + v191);
  if (v192 != 2)
  {
    sub_1A38FE12C(v192 & 1, a1);
  }

  v193 = v174 + OBJC_IVAR___CAMChromeConfigurator__frontPIPFrame;
  swift_beginAccess();
  if ((*(v193 + 32) & 1) == 0)
  {
    sub_1A38FE270(a1, v194, *v193, *(v193 + 8), *(v193 + 16), *(v193 + 24));
  }

  v195 = OBJC_IVAR___CAMChromeConfigurator__isCapturingBurst;
  swift_beginAccess();
  v196 = *(v174 + v195);
  if (v196 != 2)
  {
    sub_1A3901620(v196 & 1, a1);
  }

  v197 = OBJC_IVAR___CAMChromeConfigurator__isNightModeCaptureUIVisible;
  swift_beginAccess();
  v198 = *(v174 + v197);
  if (v198 != 2)
  {
    sub_1A3901764(v198 & 1, a1);
  }

  v199 = OBJC_IVAR___CAMChromeConfigurator__isCapturingFromTimer;
  swift_beginAccess();
  v200 = *(v174 + v199);
  if (v200 != 2)
  {
    sub_1A39018A8(v200 & 1, a1);
  }

  v201 = OBJC_IVAR___CAMChromeConfigurator__useMessagesUI;
  swift_beginAccess();
  v202 = *(v174 + v201);
  if (v202 != 2)
  {
    sub_1A39019EC(v202 & 1, a1);
  }

  v203 = v174 + OBJC_IVAR___CAMChromeConfigurator__remainingRecordingTime;
  swift_beginAccess();
  if ((*(v203 + 8) & 1) == 0)
  {
    v204 = *v203;
    swift_getKeyPath(byte_1A3A793E0);
    v258 = a1;
    sub_1A397E370(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
    sub_1A3A2F080();
    v174 = v257;

    v205 = sub_1A3A2EA60();
    sub_1A39149CC(v204, v205, v206);
  }

  v207 = OBJC_IVAR___CAMChromeConfigurator__isQuietUIActive;
  swift_beginAccess();
  v208 = *(v174 + v207);
  if (v208 != 2)
  {
    sub_1A3901B30(v208 & 1, a1);
  }

  v209 = OBJC_IVAR___CAMChromeConfigurator__isSmartFramingAutoZoomSupported;
  swift_beginAccess();
  v210 = *(v174 + v209);
  if (v210 != 2)
  {
    sub_1A3902184(v210 & 1, a1);
  }

  v211 = OBJC_IVAR___CAMChromeConfigurator__isSmartFramingAutoRotationSupported;
  swift_beginAccess();
  v212 = *(v174 + v211);
  if (v212 != 2)
  {
    sub_1A39022C8(v212 & 1, a1);
  }

  v213 = OBJC_IVAR___CAMChromeConfigurator__wantsSmartFramingAutoZoomDefault;
  swift_beginAccess();
  v214 = *(v174 + v213);
  if (v214 != 2)
  {
    sub_1A3901C74(v214 & 1, a1);
  }

  v215 = OBJC_IVAR___CAMChromeConfigurator__wantsSmartFramingAutoRotationDefault;
  swift_beginAccess();
  v216 = *(v174 + v215);
  if (v216 != 2)
  {
    sub_1A3901DB8(v216 & 1, a1);
  }

  v217 = OBJC_IVAR___CAMChromeConfigurator__smartFramingAutoZoomEnabled;
  swift_beginAccess();
  v218 = *(v174 + v217);
  if (v218 != 2)
  {
    sub_1A3902040(v218 & 1, a1);
  }

  v219 = OBJC_IVAR___CAMChromeConfigurator__smartFramingAutoRotationEnabled;
  swift_beginAccess();
  v220 = *(v174 + v219);
  if (v220 != 2)
  {
    sub_1A3901EFC(v220 & 1, a1);
  }

  v221 = OBJC_IVAR___CAMChromeConfigurator__overrideSmartFramingAutoZoomInLandscapeEnabled;
  swift_beginAccess();
  v222 = *(v174 + v221);
  if (v222 != 2)
  {
    sub_1A390240C(v222 & 1, a1);
  }

  v223 = OBJC_IVAR___CAMChromeConfigurator__overrideSmartFramingAutoRotateInLandscapeEnabled;
  swift_beginAccess();
  v224 = *(v174 + v223);
  if (v224 != 2)
  {
    sub_1A3902550(v224 & 1, a1);
  }

  v225 = v174 + OBJC_IVAR___CAMChromeConfigurator__exposureBias;
  swift_beginAccess();
  if ((*(v225 + 8) & 1) == 0)
  {
    sub_1A38ED184(a1, v226, *v225);
  }

  v227 = OBJC_IVAR___CAMChromeConfigurator__externalStorageOutputEnabled;
  swift_beginAccess();
  v228 = *(v174 + v227);
  if (v228 != 2)
  {
    sub_1A38FD488(v228 & 1, a1);
  }

  v229 = OBJC_IVAR___CAMChromeConfigurator__externalStorageIconVisible;
  swift_beginAccess();
  v230 = *(v174 + v229);
  if (v230 != 2)
  {
    sub_1A38FD70C(v230 & 1, a1);
  }

  v231 = OBJC_IVAR___CAMChromeConfigurator__isImagePickerController;
  swift_beginAccess();
  v232 = *(v174 + v231);
  if (v232 != 2)
  {
    sub_1A38FD850(v232 & 1, a1);
  }

  v233 = OBJC_IVAR___CAMChromeConfigurator__deviceHasDynamicIsland;
  swift_beginAccess();
  v234 = *(v174 + v233);
  if (v234 != 2)
  {
    sub_1A3902694(v234 & 1, a1);
  }

  v235 = OBJC_IVAR___CAMChromeConfigurator__deviceHasNotch;
  swift_beginAccess();
  v236 = *(v174 + v235);
  if (v236 != 2)
  {
    sub_1A39027D8(v236 & 1, a1);
  }

  v237 = OBJC_IVAR___CAMChromeConfigurator__isShowingOverlayDescription;
  swift_beginAccess();
  v238 = *(v174 + v237);
  if (v238 != 2)
  {
    sub_1A390291C(v238 & 1, a1);
  }

  v239 = OBJC_IVAR___CAMChromeConfigurator__isClassicModeSwitchingEnabled;
  swift_beginAccess();
  v240 = *(v174 + v239);
  if (v240 != 2)
  {
    sub_1A3902A60(v240 & 1, a1);
  }

  v241 = OBJC_IVAR___CAMChromeConfigurator__expandedModeWheelOnboardingSupported;
  swift_beginAccess();
  v243 = *(v174 + v241);
  if (v243 != 2)
  {
    sub_1A392AC34(v243 & 1, v242);
  }
}

double sub_1A3979764(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v15 = a2;
  v5 = a2;
  swift_getAtKeyPath();

  if (a1)
  {
    if (v16)
    {
      sub_1A38E805C(0, &qword_1ED998880, off_1E76F3BC0);
      v6 = a1;
      v7 = v16;
      v8 = sub_1A3A31D10();

      if (v8)
      {

        return result;
      }
    }

    goto LABEL_7;
  }

  if (v16)
  {

LABEL_7:
    v16 = v5;
    v10 = v5;
    v11 = swift_modifyAtReferenceWritableKeyPath();
    v13 = *v12;
    *v12 = a1;

    v11(&v15, 0);
    v14 = OBJC_IVAR___CAMChromeConfigurator_needsUpdateModel;
    v10[OBJC_IVAR___CAMChromeConfigurator_needsUpdateModel] = 1;
    if (*&v10[OBJC_IVAR___CAMChromeConfigurator_changeDepth] <= 0)
    {
      v10[v14] = 0;
      sub_1A3977314(*&v10[OBJC_IVAR___CAMChromeConfigurator_viewModel]);
    }

    else
    {
    }

    goto LABEL_11;
  }

LABEL_11:

  return result;
}

void sub_1A3979908(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v7 = sub_1A3A2ED80();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF728, &qword_1A3A793D8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v32 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF748, &qword_1A3A7B1E8);
  v15 = v14 - 8;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v32 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF750, &qword_1A3A7B1F0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v32 - v19;
  v35 = a2;
  v21 = a2;
  v34 = a4;
  swift_getAtKeyPath();

  v22 = *(v15 + 56);
  v33 = a1;
  sub_1A397BCBC(a1, v17);
  sub_1A397BCBC(v20, &v17[v22]);
  v23 = *(v8 + 48);
  if (v23(v17, 1, v7) == 1)
  {
    v24 = v23(&v17[v22], 1, v7);
    v25 = v33;
    if (v24 == 1)
    {
      sub_1A388F740(v17, &qword_1EB0FF728, &qword_1A3A793D8);
      sub_1A388F740(v20, &qword_1EB0FF728, &qword_1A3A793D8);
LABEL_10:
      sub_1A388F740(v25, &qword_1EB0FF728, &qword_1A3A793D8);

      return;
    }

    goto LABEL_6;
  }

  sub_1A397BCBC(v17, v13);
  if (v23(&v17[v22], 1, v7) == 1)
  {
    (*(v8 + 8))(v13, v7);
    v25 = v33;
LABEL_6:
    sub_1A388F740(v17, &qword_1EB0FF748, &qword_1A3A7B1E8);
    sub_1A388F740(v20, &qword_1EB0FF728, &qword_1A3A793D8);
    goto LABEL_7;
  }

  (*(v8 + 32))(v10, &v17[v22], v7);
  sub_1A397E370(&qword_1EB0FF758, MEMORY[0x1E6969B50], MEMORY[0x1E6969B70]);
  v30 = sub_1A3A31790();
  v31 = *(v8 + 8);
  v31(v10, v7);
  v31(v13, v7);
  sub_1A388F740(v17, &qword_1EB0FF728, &qword_1A3A793D8);
  sub_1A388F740(v20, &qword_1EB0FF728, &qword_1A3A793D8);
  v25 = v33;
  if (v30)
  {
    goto LABEL_10;
  }

LABEL_7:
  v36 = v21;
  v26 = v21;
  v27 = swift_modifyAtReferenceWritableKeyPath();
  sub_1A397E300(v25, v28);
  v27(&v35, 0);

  v29 = OBJC_IVAR___CAMChromeConfigurator_needsUpdateModel;
  v26[OBJC_IVAR___CAMChromeConfigurator_needsUpdateModel] = 1;
  if (*&v26[OBJC_IVAR___CAMChromeConfigurator_changeDepth] <= 0)
  {
    v26[v29] = 0;
    sub_1A3977314(*&v26[OBJC_IVAR___CAMChromeConfigurator_viewModel]);

    sub_1A388F740(v25, &qword_1EB0FF728, &qword_1A3A793D8);
  }

  else
  {

    sub_1A388F740(v25, &qword_1EB0FF728, &qword_1A3A793D8);
  }
}

double sub_1A3979DD4(int a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = a1;
  v11 = a2;
  v6 = a2;
  swift_getAtKeyPath();

  if (v5 == 2)
  {
    if (v12 == 2)
    {
      goto LABEL_9;
    }
  }

  else if (v12 != 2 && ((v12 ^ a1) & 1) == 0)
  {
    goto LABEL_9;
  }

  v12 = v6;
  v6 = v6;
  v7 = swift_modifyAtReferenceWritableKeyPath();
  *v8 = a1;
  v7(&v11, 0);

  v9 = OBJC_IVAR___CAMChromeConfigurator_needsUpdateModel;
  v6[OBJC_IVAR___CAMChromeConfigurator_needsUpdateModel] = 1;
  if (*&v6[OBJC_IVAR___CAMChromeConfigurator_changeDepth] <= 0)
  {
    v6[v9] = 0;
    sub_1A3977314(*&v6[OBJC_IVAR___CAMChromeConfigurator_viewModel]);
LABEL_9:

    goto LABEL_10;
  }

LABEL_10:

  return result;
}

double sub_1A3979F04(uint64_t a1, uint64_t a2, char a3, char *a4, uint64_t a5, uint64_t a6)
{
  v16 = a4;
  v9 = a4;
  swift_getAtKeyPath();

  if (a3)
  {
    if (v15)
    {
      goto LABEL_10;
    }
  }

  else if ((v15 & 1) == 0 && v14[0] == *&a1 && v14[1] == *&a2)
  {
    goto LABEL_10;
  }

  v16 = v9;
  v9 = v9;
  v10 = swift_modifyAtReferenceWritableKeyPath();
  *v11 = *&a1;
  *(v11 + 8) = *&a2;
  *(v11 + 16) = a3 & 1;
  v10(v14, 0);

  v12 = OBJC_IVAR___CAMChromeConfigurator_needsUpdateModel;
  v9[OBJC_IVAR___CAMChromeConfigurator_needsUpdateModel] = 1;
  if (*&v9[OBJC_IVAR___CAMChromeConfigurator_changeDepth] <= 0)
  {
    v9[v12] = 0;
    sub_1A3977314(*&v9[OBJC_IVAR___CAMChromeConfigurator_viewModel]);
LABEL_10:

    goto LABEL_11;
  }

LABEL_11:

  return result;
}

double sub_1A397A054(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  v13 = a3;
  v7 = a3;
  swift_getAtKeyPath();

  if (a1 == 2)
  {
    if (LOBYTE(v12[0]) == 2)
    {
      goto LABEL_10;
    }
  }

  else if (LOBYTE(v12[0]) != 2 && ((LODWORD(v12[0]) ^ a1) & 1) == 0 && v12[1] == a2)
  {
    goto LABEL_10;
  }

  v13 = v7;
  v7 = v7;
  v8 = swift_modifyAtReferenceWritableKeyPath();
  *v9 = a1;
  v9[1] = a2;
  v8(v12, 0);

  v10 = OBJC_IVAR___CAMChromeConfigurator_needsUpdateModel;
  v7[OBJC_IVAR___CAMChromeConfigurator_needsUpdateModel] = 1;
  if (*&v7[OBJC_IVAR___CAMChromeConfigurator_changeDepth] <= 0)
  {
    v7[v10] = 0;
    sub_1A3977314(*&v7[OBJC_IVAR___CAMChromeConfigurator_viewModel]);
LABEL_10:

    goto LABEL_11;
  }

LABEL_11:

  return result;
}

double sub_1A397A198(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, id))
{
  v14 = a2;
  v7 = a2;
  swift_getAtKeyPath();

  if (a1)
  {
    if (v15)
    {
      v8 = a5(a1, v15);

      if (v8)
      {

        return result;
      }
    }

    goto LABEL_7;
  }

  if (v15)
  {

LABEL_7:
    v15 = v7;
    v10 = v7;
    v11 = swift_modifyAtReferenceWritableKeyPath();
    *v12 = a1;

    v11(&v14, 0);

    v13 = OBJC_IVAR___CAMChromeConfigurator_needsUpdateModel;
    v10[OBJC_IVAR___CAMChromeConfigurator_needsUpdateModel] = 1;
    if (*&v10[OBJC_IVAR___CAMChromeConfigurator_changeDepth] <= 0)
    {
      v10[v13] = 0;
      sub_1A3977314(*&v10[OBJC_IVAR___CAMChromeConfigurator_viewModel]);
    }

    else
    {
    }

    goto LABEL_11;
  }

LABEL_11:

  return result;
}

double sub_1A397A318(uint64_t a1, char a2, char *a3, uint64_t a4, uint64_t a5)
{
  v14 = a3;
  v7 = a3;
  swift_getAtKeyPath();

  if (a2)
  {
    if (v13)
    {
      goto LABEL_9;
    }
  }

  else if ((v13 & 1) == 0 && v12 == a1)
  {
    goto LABEL_9;
  }

  v14 = v7;
  v7 = v7;
  v8 = swift_modifyAtReferenceWritableKeyPath();
  *v9 = a1;
  *(v9 + 8) = a2 & 1;
  v8(&v12, 0);

  v10 = OBJC_IVAR___CAMChromeConfigurator_needsUpdateModel;
  v7[OBJC_IVAR___CAMChromeConfigurator_needsUpdateModel] = 1;
  if (*&v7[OBJC_IVAR___CAMChromeConfigurator_changeDepth] <= 0)
  {
    v7[v10] = 0;
    sub_1A3977314(*&v7[OBJC_IVAR___CAMChromeConfigurator_viewModel]);
LABEL_9:

    goto LABEL_10;
  }

LABEL_10:

  return result;
}

double sub_1A397A444(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v17 = a2;
  v9 = a2;
  swift_getAtKeyPath();

  if ((v8 & 1) == 0)
  {
    if (v16)
    {
      goto LABEL_7;
    }

    v18.origin.x = v4;
    v18.origin.y = v5;
    v18.size.width = v6;
    v18.size.height = v7;
    if (!CGRectEqualToRect(v18, v15))
    {
      goto LABEL_7;
    }

LABEL_6:

    goto LABEL_10;
  }

  if (v16)
  {
    goto LABEL_6;
  }

LABEL_7:
  v17 = v9;
  v10 = v9;
  v11 = swift_modifyAtReferenceWritableKeyPath();
  *v12 = v4;
  *(v12 + 8) = v5;
  *(v12 + 16) = v6;
  *(v12 + 24) = v7;
  *(v12 + 32) = v8 & 1;
  v11(&v15, 0);

  v13 = OBJC_IVAR___CAMChromeConfigurator_needsUpdateModel;
  v10[OBJC_IVAR___CAMChromeConfigurator_needsUpdateModel] = 1;
  if (*&v10[OBJC_IVAR___CAMChromeConfigurator_changeDepth] <= 0)
  {
    v10[v13] = 0;
    sub_1A3977314(*&v10[OBJC_IVAR___CAMChromeConfigurator_viewModel]);
  }

  else
  {
  }

LABEL_10:

  return result;
}

double sub_1A397A5B0(uint64_t a1, char a2, char *a3, uint64_t a4, uint64_t a5)
{
  v14 = a3;
  v7 = a3;
  swift_getAtKeyPath();

  if (a2)
  {
    if (v13)
    {
      goto LABEL_9;
    }
  }

  else if ((v13 & 1) == 0 && v12 == *&a1)
  {
    goto LABEL_9;
  }

  v14 = v7;
  v7 = v7;
  v8 = swift_modifyAtReferenceWritableKeyPath();
  *v9 = *&a1;
  *(v9 + 8) = a2 & 1;
  v8(&v12, 0);

  v10 = OBJC_IVAR___CAMChromeConfigurator_needsUpdateModel;
  v7[OBJC_IVAR___CAMChromeConfigurator_needsUpdateModel] = 1;
  if (*&v7[OBJC_IVAR___CAMChromeConfigurator_changeDepth] <= 0)
  {
    v7[v10] = 0;
    sub_1A3977314(*&v7[OBJC_IVAR___CAMChromeConfigurator_viewModel]);
LABEL_9:

    goto LABEL_10;
  }

LABEL_10:

  return result;
}

uint64_t sub_1A397A6E0()
{
  v0 = sub_1A3A2F2A0();
  __swift_allocate_value_buffer(v0, qword_1EB0FF6A8);
  __swift_project_value_buffer(v0, qword_1EB0FF6A8);
  return sub_1A3A2F290();
}

id sub_1A397A790()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ChromeConfigurator(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for ChromeConfigurator(uint64_t a1)
{
  result = qword_1ED9987C8;
  if (!qword_1ED9987C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A397A908(uint64_t a1)
{
  sub_1A397AAD0(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1A397AAD0(uint64_t a1)
{
  if (!qword_1ED9987D8[0])
  {
    sub_1A3A2ED80();
    v1 = sub_1A3A31DE0();
    if (!v2)
    {
      atomic_store(v1, qword_1ED9987D8);
    }
  }
}

uint64_t getEnumTagSinglePayload for ChromeConfigurator.SharedLibraryState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[16])
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

uint64_t storeEnumTagSinglePayload for ChromeConfigurator.SharedLibraryState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1A397ABE4(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1A397AC54(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_1A397AD94(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

void sub_1A397AFB4(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(asc_1A3A79598);
  sub_1A397E370(&qword_1ED9976A0, type metadata accessor for ChromeLensPositionViewModel, &unk_1A3A7DAD0);
  sub_1A3A2F080();

  *a2 = *(v3 + 32);
}

void sub_1A397B084(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(aH_17);
  sub_1A397E370(&qword_1ED9976A0, type metadata accessor for ChromeLensPositionViewModel, &unk_1A3A7DAD0);
  sub_1A3A2F080();

  *a2 = *(v3 + 34);
}

__n128 sub_1A397B154@<Q0>(uint64_t *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(byte_1A3A798B8);
  sub_1A397E370(&qword_1ED996610, type metadata accessor for ChromeSmartStyleViewModel, &unk_1A3A823E0);
  sub_1A3A2F080();

  result = *(v3 + 40);
  *a2 = result;
  return result;
}

void sub_1A397B224(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(byte_1A3A79890);
  sub_1A397E370(&qword_1ED996610, type metadata accessor for ChromeSmartStyleViewModel, &unk_1A3A823E0);
  sub_1A3A2F080();

  *a2 = *(v3 + 56);
}

double sub_1A397B2F4@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(asc_1A3A79840);
  sub_1A397E370(&qword_1ED996610, type metadata accessor for ChromeSmartStyleViewModel, &unk_1A3A823E0);
  sub_1A3A2F080();

  result = *(v3 + 72);
  *a2 = result;
  return result;
}

__n128 sub_1A397B3C4@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(byte_1A3A79660);
  sub_1A397E370(&qword_1ED996CE8, type metadata accessor for ChromeDynamicShutterViewModel, &unk_1A3A82618);
  sub_1A3A2F080();

  v4 = *(v3 + 64);
  *(a2 + 32) = *(v3 + 48);
  *(a2 + 48) = v4;
  *(a2 + 64) = *(v3 + 80);
  result = *(v3 + 32);
  *a2 = *(v3 + 16);
  *(a2 + 16) = result;
  return result;
}

double sub_1A397B47C(uint64_t a1)
{
  v1 = *(a1 + 48);
  v4[2] = *(a1 + 32);
  v4[3] = v1;
  v5 = *(a1 + 64);
  v2 = *(a1 + 16);
  v4[0] = *a1;
  v4[1] = v2;
  return sub_1A39F2650(v4);
}

__n128 sub_1A397B4C4@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(aH_18);
  sub_1A397E370(&qword_1ED996CE8, type metadata accessor for ChromeDynamicShutterViewModel, &unk_1A3A82618);
  sub_1A3A2F080();

  result = *(v3 + 104);
  v5 = *(v3 + 136);
  *(a2 + 32) = *(v3 + 120);
  *(a2 + 48) = v5;
  *(a2 + 64) = *(v3 + 152);
  *a2 = *(v3 + 88);
  *(a2 + 16) = result;
  return result;
}

double sub_1A397B584(uint64_t a1)
{
  v1 = *(a1 + 48);
  v4[2] = *(a1 + 32);
  v4[3] = v1;
  v5 = *(a1 + 64);
  v2 = *(a1 + 16);
  v4[0] = *a1;
  v4[1] = v2;
  return sub_1A39F2820(v4);
}

__n128 sub_1A397B5CC@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(byte_1A3A79638);
  sub_1A397E370(&qword_1ED996CE8, type metadata accessor for ChromeDynamicShutterViewModel, &unk_1A3A82618);
  sub_1A3A2F080();

  v4 = *(v3 + 208);
  *(a2 + 32) = *(v3 + 192);
  *(a2 + 48) = v4;
  *(a2 + 64) = *(v3 + 224);
  result = *(v3 + 176);
  *a2 = *(v3 + 160);
  *(a2 + 16) = result;
  return result;
}

double sub_1A397B684(uint64_t a1)
{
  v1 = *(a1 + 48);
  v4[2] = *(a1 + 32);
  v4[3] = v1;
  v5 = *(a1 + 64);
  v2 = *(a1 + 16);
  v4[0] = *a1;
  v4[1] = v2;
  return sub_1A39F2A00(v4);
}

void sub_1A397B6CC(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(byte_1A3A79610);
  sub_1A397E370(&qword_1ED996CE8, type metadata accessor for ChromeDynamicShutterViewModel, &unk_1A3A82618);
  sub_1A3A2F080();

  *a2 = *(v3 + 232);
}

double sub_1A397B79C@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(byte_1A3A795E8);
  sub_1A397E370(&qword_1ED996CE8, type metadata accessor for ChromeDynamicShutterViewModel, &unk_1A3A82618);
  sub_1A3A2F080();

  result = *(v3 + 240);
  *a2 = result;
  return result;
}

uint64_t sub_1A397B86C(uint64_t *a1, void **a2, uint64_t a3, uint64_t a4, const char *a5, const char *a6, uint64_t (*a7)(uint64_t, uint64_t, void *, uint64_t, uint64_t))
{
  v9 = *a1;
  v10 = *(a1 + 8);
  v11 = *a2;
  KeyPath = swift_getKeyPath(a5);
  v13 = swift_getKeyPath(a6);
  return a7(v9, v10, v11, KeyPath, v13);
}

uint64_t sub_1A397B8E4(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF728, &qword_1A3A793D8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  sub_1A397BCBC(a1, &v14 - v8);
  v10 = *a2;
  KeyPath = swift_getKeyPath(a8_1);
  v12 = swift_getKeyPath(byte_1A3A7B1C8);
  sub_1A397BCBC(v9, v6);
  sub_1A3979908(v6, v10, KeyPath, v12);
  return sub_1A388F740(v9, &qword_1EB0FF728, &qword_1A3A793D8);
}

double sub_1A397BA00(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  KeyPath = swift_getKeyPath(byte_1A3A7B0C8);
  v5 = swift_getKeyPath(byte_1A3A7B0F0);
  v6 = v2;
  v7 = v3;

  return sub_1A3979764(v2, v7, KeyPath, v5);
}

double sub_1A397BA74(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, const char *a5, const char *a6)
{
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  v10 = *a2;
  KeyPath = swift_getKeyPath(a5);
  v12 = swift_getKeyPath(a6);
  return sub_1A3979F04(v7, v8, v9, v10, KeyPath, v12);
}

double sub_1A397BAE8(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  KeyPath = swift_getKeyPath(asc_1A3A7AC48);
  v6 = swift_getKeyPath(asc_1A3A7AC70);
  v7 = v4;

  return sub_1A397A054(v2, v3, v7, KeyPath, v6);
}

double sub_1A397BB64(uint64_t *a1, void **a2, uint64_t a3, uint64_t a4, const char *a5, const char *a6, uint64_t (*a7)(uint64_t, id))
{
  v9 = *a1;
  v10 = *a2;
  KeyPath = swift_getKeyPath(a5);
  v12 = swift_getKeyPath(a6);
  sub_1A3A2EA50();
  return sub_1A397A198(v9, v10, KeyPath, v12, a7);
}

double sub_1A397BBDC(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, const char *a5, const char *a6)
{
  v7 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v7;
  LOBYTE(v13) = *(a1 + 32);
  v8 = *a2;
  KeyPath = swift_getKeyPath(a5, v12[0], v7, v13);
  v10 = swift_getKeyPath(a6);
  return sub_1A397A444(v12, v8, KeyPath, v10);
}

double sub_1A397BC50(unsigned __int8 *a1, void **a2, uint64_t a3, uint64_t a4, const char *a5, const char *a6)
{
  v7 = *a2;
  v8 = *a1;
  KeyPath = swift_getKeyPath(a5);
  v10 = swift_getKeyPath(a6);
  v11 = v7;

  return sub_1A3979DD4(v8, v11, KeyPath, v10);
}

uint64_t sub_1A397BCBC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF728, &qword_1A3A793D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A397BD2C(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!result || a1 > *(v4 + 24) >> 1)
  {

    return a2();
  }

  return result;
}

void *sub_1A397BDBC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v6 = swift_allocObject();
  v7 = _swift_stdlib_malloc_size(v6);
  result = v6;
  v10 = v7 - 32;
  v9 = v7 < 32;
  v11 = v7 - 25;
  if (!v9)
  {
    v11 = v10;
  }

  v6[2] = a1;
  v6[3] = 2 * (v11 >> 3);
  return result;
}

uint64_t sub_1A397BE38(uint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  v5 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = a2(v5);
  }

  v6 = *(v5 + 16);
  v20[0] = v5 + 32;
  v20[1] = v6;
  result = sub_1A3A32190();
  if (result >= v6)
  {
    if (v6 >= 2)
    {
      v11 = -1;
      v12 = 1;
      v13 = (v5 + 32);
      do
      {
        v14 = *(v5 + 32 + 8 * v12);
        v15 = v11;
        v16 = v13;
        do
        {
          v17 = *v16;
          if (v14 >= *v16)
          {
            break;
          }

          *v16 = v14;
          v16[1] = v17;
          --v16;
        }

        while (!__CFADD__(v15++, 1));
        ++v12;
        ++v13;
        --v11;
      }

      while (v12 != v6);
    }
  }

  else
  {
    v8 = result;
    v9 = v6 >> 1;
    if (v6 >= 2)
    {
      v10 = sub_1A3A319E0();
      *(v10 + 16) = v9;
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
    }

    v19[0] = v10 + 32;
    v19[1] = v9;
    sub_1A397BF7C(v19, v21, v20, v8);
    *(v10 + 16) = 0;
  }

  *a1 = v5;
  return result;
}

uint64_t sub_1A397BF7C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v83 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *v83;
    if (!*v83)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_1A3959204(v8);
      v8 = result;
    }

    v75 = (v8 + 16);
    v76 = *(v8 + 16);
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = (v8 + 16 * v76);
        v78 = *v77;
        v79 = &v75[2 * v76];
        v80 = v79[1];
        sub_1A397C4C8((*a3 + 8 * *v77), (*a3 + 8 * *v79), (*a3 + 8 * v80), v5);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_114;
        }

        if (v76 - 2 >= *v75)
        {
          goto LABEL_115;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = *v75 - v76;
        if (*v75 < v76)
        {
          goto LABEL_116;
        }

        v76 = *v75 - 1;
        result = memmove(v79, v79 + 2, 16 * v81);
        *v75 = v76;
        if (v76 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v82 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = (v10 < v11) ^ (v14 >= v13);
        ++v12;
        v13 = v14;
        if ((v15 & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = v7 - 1;
        v17 = v9;
        do
        {
          if (v17 != v16)
          {
            v20 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v18 = *(v20 + 8 * v17);
            *(v20 + 8 * v17) = *(v20 + 8 * v16);
            *(v20 + 8 * v16) = v18;
          }
        }

        while (++v17 < v16--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1A3955F6C(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v29 = *(v8 + 24);
    v30 = v5 + 1;
    if (v5 >= v29 >> 1)
    {
      result = sub_1A3955F6C((v29 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v30;
    v31 = v8 + 32;
    v32 = (v8 + 32 + 16 * v5);
    *v32 = v9;
    v32[1] = v7;
    v84 = *v83;
    if (!*v83)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v33 = *(v8 + 32);
          v34 = *(v8 + 40);
          v43 = __OFSUB__(v34, v33);
          v35 = v34 - v33;
          v36 = v43;
LABEL_57:
          if (v36)
          {
            goto LABEL_104;
          }

          v49 = (v8 + 16 * v30);
          v51 = *v49;
          v50 = v49[1];
          v52 = __OFSUB__(v50, v51);
          v53 = v50 - v51;
          v54 = v52;
          if (v52)
          {
            goto LABEL_106;
          }

          v55 = (v31 + 16 * v5);
          v57 = *v55;
          v56 = v55[1];
          v43 = __OFSUB__(v56, v57);
          v58 = v56 - v57;
          if (v43)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v53, v58))
          {
            goto LABEL_111;
          }

          if (v53 + v58 >= v35)
          {
            if (v35 < v58)
            {
              v5 = v30 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v30 < 2)
        {
          goto LABEL_112;
        }

        v59 = (v8 + 16 * v30);
        v61 = *v59;
        v60 = v59[1];
        v43 = __OFSUB__(v60, v61);
        v53 = v60 - v61;
        v54 = v43;
LABEL_72:
        if (v54)
        {
          goto LABEL_108;
        }

        v62 = (v31 + 16 * v5);
        v64 = *v62;
        v63 = v62[1];
        v43 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v43)
        {
          goto LABEL_110;
        }

        if (v65 < v53)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v30)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v70 = (v31 + 16 * (v5 - 1));
        v71 = *v70;
        v72 = (v31 + 16 * v5);
        v73 = v72[1];
        sub_1A397C4C8((*a3 + 8 * *v70), (*a3 + 8 * *v72), (*a3 + 8 * v73), v84);
        if (v4)
        {
        }

        if (v73 < v71)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v70 = v71;
        v70[1] = v73;
        v74 = *(v8 + 16);
        if (v5 >= v74)
        {
          goto LABEL_101;
        }

        v30 = v74 - 1;
        result = memmove((v31 + 16 * v5), v72 + 2, 16 * (v74 - 1 - v5));
        *(v8 + 16) = v74 - 1;
        if (v74 <= 2)
        {
          goto LABEL_3;
        }
      }

      v37 = v31 + 16 * v30;
      v38 = *(v37 - 64);
      v39 = *(v37 - 56);
      v43 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      if (v43)
      {
        goto LABEL_102;
      }

      v42 = *(v37 - 48);
      v41 = *(v37 - 40);
      v43 = __OFSUB__(v41, v42);
      v35 = v41 - v42;
      v36 = v43;
      if (v43)
      {
        goto LABEL_103;
      }

      v44 = (v8 + 16 * v30);
      v46 = *v44;
      v45 = v44[1];
      v43 = __OFSUB__(v45, v46);
      v47 = v45 - v46;
      if (v43)
      {
        goto LABEL_105;
      }

      v43 = __OFADD__(v35, v47);
      v48 = v35 + v47;
      if (v43)
      {
        goto LABEL_107;
      }

      if (v48 >= v40)
      {
        v66 = (v31 + 16 * v5);
        v68 = *v66;
        v67 = v66[1];
        v43 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v43)
        {
          goto LABEL_113;
        }

        if (v35 < v69)
        {
          v5 = v30 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v82;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v21 = *a3;
  v22 = *a3 + 8 * v7 - 8;
  v23 = v9 - v7;
LABEL_30:
  v24 = *(v21 + 8 * v7);
  v25 = v23;
  v26 = v22;
  while (1)
  {
    v27 = *v26;
    if (v24 >= *v26)
    {
LABEL_29:
      ++v7;
      v22 += 8;
      --v23;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v21)
    {
      break;
    }

    *v26 = v24;
    v26[1] = v27;
    --v26;
    if (__CFADD__(v25++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
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
  return result;
}

uint64_t sub_1A397C4C8(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 8;
    v5 -= 8;
    v18 = v14;
    do
    {
      v19 = v5 + 8;
      v21 = *(v18 - 8);
      v18 -= 8;
      v20 = v21;
      if (v21 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 8, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v20;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

uint64_t sub_1A397C6BC(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t a5)
{
  v11 = *v5;
  sub_1A3A322C0();
  MEMORY[0x1A58F8150](a2);
  v12 = sub_1A3A32300();
  v13 = -1 << *(v11 + 32);
  v14 = v12 & ~v13;
  if ((*(v11 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    while (*(*(v11 + 48) + 8 * v14) != a2)
    {
      v14 = (v14 + 1) & v15;
      if (((*(v11 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v5;
    sub_1A397CD4C(a2, v14, isUniquelyReferenced_nonNull_native, a3, a4, a5);
    *v5 = v18;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1A397C7DC(double *a1, double a2)
{
  v5 = *v2;
  v6 = sub_1A3A322B0();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (1)
    {
      v10 = *(v5 + 48);
      if (*(v10 + 8 * v8) == a2)
      {
        break;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    a2 = *(v10 + 8 * v8);
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    sub_1A397CEBC(v8, isUniquelyReferenced_nonNull_native, a2);
    *v2 = v13;
    result = 1;
  }

  *a1 = a2;
  return result;
}

void sub_1A397C8D0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v6 = sub_1A3A31F00();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v5 + 48) + 8 * (v16 | (v8 << 6)));
      sub_1A3A322C0();
      MEMORY[0x1A58F8150](v19);
      v20 = sub_1A3A32300();
      v21 = -1 << *(v7 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v19;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero((v5 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v4 = v3;
    *(v5 + 16) = 0;
  }

  *v4 = v7;
}

void sub_1A397CB18(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF760, &unk_1A3A7B360);
  v4 = sub_1A3A31F00();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      v18 = sub_1A3A322B0();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    if (v8 >= 64)
    {
      bzero((v3 + 56), 8 * v11);
    }

    else
    {
      *v7 = -1 << v8;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_1A397CD4C(uint64_t result, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, unint64_t a6)
{
  v8 = *(*v6 + 16);
  v9 = *(*v6 + 24);
  if (v9 > v8 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1A397C8D0(v8 + 1, a4, a5);
  }

  else
  {
    if (v9 > v8)
    {
      v10 = a2;
      sub_1A397CFE8(a4, a5);
      a2 = v10;
      goto LABEL_12;
    }

    sub_1A397D258(v8 + 1, a4, a5);
  }

  v11 = *v6;
  sub_1A3A322C0();
  MEMORY[0x1A58F8150](result);
  v12 = sub_1A3A32300();
  v13 = -1 << *(v11 + 32);
  a2 = v12 & ~v13;
  if ((*(v11 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v14 = ~v13;
    while (*(*(v11 + 48) + 8 * a2) != result)
    {
      a2 = (a2 + 1) & v14;
      if (((*(v11 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v15 = *v6;
  *(*v6 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v15 + 48) + 8 * a2) = result;
  v16 = *(v15 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (!v17)
  {
    *(v15 + 16) = v18;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1A3A32210();
  __break(1u);
}

unint64_t sub_1A397CEBC(unint64_t result, char a2, double a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a2 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a2)
  {
    sub_1A397CB18(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = result;
      sub_1A397D118();
      result = v7;
      goto LABEL_12;
    }

    sub_1A397D470(v5 + 1);
  }

  v8 = *v3;
  v9 = sub_1A3A322B0();
  v10 = -1 << *(v8 + 32);
  result = v9 & ~v10;
  if ((*(v8 + 56 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + 8 * result) != a3)
    {
      result = (result + 1) & v11;
      if (((*(v8 + 56 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (result >> 6) + 56) |= 1 << result;
  *(*(v12 + 48) + 8 * result) = a3;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1A3A32210();
  __break(1u);
  return result;
}

void sub_1A397CFE8(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1A3A31EF0();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 56 + 8 * v8)
    {
      memmove(v7, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 56);
    for (i = (v11 + 63) >> 6; v13; *(*(v6 + 48) + 8 * v16) = *(*(v4 + 48) + 8 * v16))
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v16 = v15 | (v10 << 6);
LABEL_17:
      ;
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= i)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v13 = (v18 - 1) & v18;
        v16 = __clz(__rbit64(v18)) | (v10 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }
}

void sub_1A397D118()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF760, &unk_1A3A7B360);
  v2 = *v0;
  v3 = sub_1A3A31EF0();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_1A397D258(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v6 = sub_1A3A31F00();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = v6 + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(*(v5 + 48) + 8 * (v15 | (v8 << 6)));
      sub_1A3A322C0();
      MEMORY[0x1A58F8150](v18);
      v19 = sub_1A3A32300();
      v20 = -1 << *(v7 + 32);
      v21 = v19 & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v7 + 48) + 8 * v14) = v18;
      ++*(v7 + 16);
    }

    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v8 >= v12)
      {

        v4 = v3;
        goto LABEL_26;
      }

      v17 = *(v5 + 56 + 8 * v8);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v4 = v7;
  }
}

void sub_1A397D470(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF760, &unk_1A3A7B360);
  v4 = sub_1A3A31F00();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      v17 = sub_1A3A322B0();
      v18 = -1 << *(v5 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_24;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v2 = v5;
  }
}

void *sub_1A397D670(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 9) | (8 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t CAMLiquidShutterShapeEqualToShape(float64x2_t *a1, float64x2_t *a2)
{
  v2 = a1->f64[0] == a2->f64[0] && a1->f64[1] == a2->f64[1];
  if (v2 && a1[1].f64[0] == a2[1].f64[0] && a1[1].f64[1] == a2[1].f64[1] && a1[4].f64[0] == a2[4].f64[0])
  {
    v3 = vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(a1[2], a2[2]), vceqq_f64(a1[3], a2[3]))));
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

id sub_1A397D9F8(void *a1, void *a2)
{
  v2[OBJC_IVAR___CAMChromeConfigurator_actionModeEnabled] = 0;
  v5 = &v2[OBJC_IVAR___CAMChromeConfigurator__apertureValue];
  *v5 = 0;
  v5[8] = 1;
  v6 = &v2[OBJC_IVAR___CAMChromeConfigurator__apertureValueMarked];
  *v6 = 0;
  v6[8] = 1;
  v7 = &v2[OBJC_IVAR___CAMChromeConfigurator__apertureValueMaximum];
  *v7 = 0;
  v7[8] = 1;
  v8 = &v2[OBJC_IVAR___CAMChromeConfigurator__apertureValueMinimum];
  *v8 = 0;
  v8[8] = 1;
  v9 = &v2[OBJC_IVAR___CAMChromeConfigurator__aspectRatioCrop];
  *v9 = 0;
  v9[8] = 1;
  v10 = OBJC_IVAR___CAMChromeConfigurator__availableCaptureModeRawValues;
  v11 = sub_1A3A2ED80();
  (*(*(v11 - 8) + 56))(&v2[v10], 1, 1, v11);
  v2[OBJC_IVAR___CAMChromeConfigurator__isGraphConfigurationReconfiguring] = 2;
  v2[OBJC_IVAR___CAMChromeConfigurator__spatialModeHasVideoSelected] = 2;
  *&v2[OBJC_IVAR___CAMChromeConfigurator__captureGraphConfiguration] = 0;
  v12 = &v2[OBJC_IVAR___CAMChromeConfigurator__controlOrientation];
  *v12 = 0;
  v12[8] = 1;
  v13 = &v2[OBJC_IVAR___CAMChromeConfigurator__exposureBias];
  *v13 = 0;
  v13[8] = 1;
  v2[OBJC_IVAR___CAMChromeConfigurator__preserveExposure] = 2;
  v2[OBJC_IVAR___CAMChromeConfigurator__externalStorageOutputEnabled] = 2;
  v2[OBJC_IVAR___CAMChromeConfigurator__externalStorageIconVisible] = 2;
  v2[OBJC_IVAR___CAMChromeConfigurator__isImagePickerController] = 2;
  v14 = &v2[OBJC_IVAR___CAMChromeConfigurator___hdrMode];
  *v14 = 0;
  v14[8] = 1;
  v2[OBJC_IVAR___CAMChromeConfigurator__userInteractingWithShutter] = 2;
  v15 = &v2[OBJC_IVAR___CAMChromeConfigurator__livePhotoMode];
  *v15 = 0;
  v15[8] = 1;
  v2[OBJC_IVAR___CAMChromeConfigurator__isNightModeSupported] = 2;
  v16 = &v2[OBJC_IVAR___CAMChromeConfigurator__nightModeControlMode];
  *v16 = 0;
  v16[8] = 1;
  v17 = &v2[OBJC_IVAR___CAMChromeConfigurator__nightModeStatus];
  *v17 = 0;
  v17[8] = 1;
  v18 = &v2[OBJC_IVAR___CAMChromeConfigurator__nightModeCaptureState];
  *v18 = 0;
  v18[8] = 1;
  v19 = &v2[OBJC_IVAR___CAMChromeConfigurator__nightModeDurationMapping];
  *v19 = 0;
  *(v19 + 1) = 0;
  v19[16] = 1;
  v20 = &v2[OBJC_IVAR___CAMChromeConfigurator__overscanOverlayAlpha];
  *v20 = 0;
  *(v20 + 1) = 0;
  v20[16] = 1;
  *&v2[OBJC_IVAR___CAMChromeConfigurator__sharedLibraryState] = xmmword_1A3A6A8C0;
  v21 = &v2[OBJC_IVAR___CAMChromeConfigurator__timerDuration];
  *v21 = 0;
  v21[8] = 1;
  v22 = &v2[OBJC_IVAR___CAMChromeConfigurator__photoEncodingBehavior];
  *v22 = 0;
  v22[8] = 1;
  v23 = &v2[OBJC_IVAR___CAMChromeConfigurator__defaultPhotoEncodingBehavior];
  *v23 = 0;
  v23[8] = 1;
  v24 = &v2[OBJC_IVAR___CAMChromeConfigurator__photoResolution];
  *v24 = 0;
  v24[8] = 1;
  v25 = &v2[OBJC_IVAR___CAMChromeConfigurator__defaultPhotoResolution];
  *v25 = 0;
  v25[8] = 1;
  *&v2[OBJC_IVAR___CAMChromeConfigurator__supportedPhotoResolutions] = 0;
  *&v2[OBJC_IVAR___CAMChromeConfigurator__supportedEncodingBehaviors] = 0;
  v2[OBJC_IVAR___CAMChromeConfigurator__isVideoStabilizationSupported] = 2;
  v2[OBJC_IVAR___CAMChromeConfigurator__isAspectRatioCropSupported] = 2;
  v2[OBJC_IVAR___CAMChromeConfigurator__isExposureSliderSupported] = 2;
  v26 = &v2[OBJC_IVAR___CAMChromeConfigurator__portraitEffectIntensityMinimum];
  *v26 = 0;
  v26[8] = 1;
  v27 = &v2[OBJC_IVAR___CAMChromeConfigurator__portraitEffectIntensityMaximum];
  *v27 = 0;
  v27[8] = 1;
  v28 = &v2[OBJC_IVAR___CAMChromeConfigurator__portraitEffectIntensityDefault];
  *v28 = 0;
  v28[8] = 1;
  v29 = &v2[OBJC_IVAR___CAMChromeConfigurator__portraitEffectIntensity];
  *v29 = 0;
  v29[8] = 1;
  v2[OBJC_IVAR___CAMChromeConfigurator__isPortraitEffectIntensitySliderSupported] = 2;
  v2[OBJC_IVAR___CAMChromeConfigurator__isFlipSupported] = 2;
  v2[OBJC_IVAR___CAMChromeConfigurator__isHDRSupported] = 2;
  *&v2[OBJC_IVAR___CAMChromeConfigurator__supportedLivePhotoModes] = 0;
  v2[OBJC_IVAR___CAMChromeConfigurator__showLivePhotoInTopBar] = 2;
  v2[OBJC_IVAR___CAMChromeConfigurator__isTimerSupported] = 2;
  *&v2[OBJC_IVAR___CAMChromeConfigurator__supportedVideoConfigurations] = 0;
  v30 = &v2[OBJC_IVAR___CAMChromeConfigurator__currentDefaultVideoEncodingBehavior];
  *v30 = 0;
  v30[8] = 1;
  v31 = &v2[OBJC_IVAR___CAMChromeConfigurator__currentDefaultVideoConfiguration];
  *v31 = 0;
  v31[8] = 1;
  v2[OBJC_IVAR___CAMChromeConfigurator__isProResControlEnabled] = 2;
  v32 = &v2[OBJC_IVAR___CAMChromeConfigurator__explicitProResColorSpace];
  *v32 = 0;
  v32[8] = 1;
  *&v2[OBJC_IVAR___CAMChromeConfigurator__supportedVideoFormats] = 0;
  v33 = &v2[OBJC_IVAR___CAMChromeConfigurator__videoFormat];
  *v33 = 0;
  v33[8] = 1;
  v2[OBJC_IVAR___CAMChromeConfigurator__showActionModeIndicator] = 2;
  v34 = &v2[OBJC_IVAR___CAMChromeConfigurator__videoRecordingState];
  *v34 = 0;
  v34[8] = 1;
  v35 = &v2[OBJC_IVAR___CAMChromeConfigurator__viewfinderAspectRatio];
  *v35 = 0;
  v35[8] = 1;
  v36 = &v2[OBJC_IVAR___CAMChromeConfigurator__currentViewportFrame];
  *v36 = 0u;
  *(v36 + 1) = 0u;
  v36[32] = 1;
  v37 = &v2[OBJC_IVAR___CAMChromeConfigurator__currentFourThreeViewportFrame];
  *v37 = 0u;
  *(v37 + 1) = 0u;
  v37[32] = 1;
  v38 = &v2[OBJC_IVAR___CAMChromeConfigurator__descriptionOverlayTextViewFrame];
  *v38 = 0u;
  *(v38 + 1) = 0u;
  v38[32] = 1;
  v39 = &v2[OBJC_IVAR___CAMChromeConfigurator__buttonPlatterVerticalOffset];
  *v39 = 0;
  v39[8] = 1;
  v2[OBJC_IVAR___CAMChromeConfigurator__frontCameraOnRightEdge] = 2;
  v2[OBJC_IVAR___CAMChromeConfigurator__isFrontPIPSupported] = 2;
  v2[OBJC_IVAR___CAMChromeConfigurator__showFrontPIPIndicator] = 2;
  v40 = &v2[OBJC_IVAR___CAMChromeConfigurator__frontPIPFrame];
  *v40 = 0u;
  *(v40 + 1) = 0u;
  v40[32] = 1;
  v2[OBJC_IVAR___CAMChromeConfigurator__isCapturingBurst] = 2;
  v2[OBJC_IVAR___CAMChromeConfigurator__isNightModeCaptureUIVisible] = 2;
  v2[OBJC_IVAR___CAMChromeConfigurator__isCapturingFromTimer] = 2;
  v2[OBJC_IVAR___CAMChromeConfigurator__useMessagesUI] = 2;
  v41 = &v2[OBJC_IVAR___CAMChromeConfigurator__remainingRecordingTime];
  *v41 = 0;
  v41[8] = 1;
  v2[OBJC_IVAR___CAMChromeConfigurator__isQuietUIActive] = 2;
  v2[OBJC_IVAR___CAMChromeConfigurator__deviceHasDynamicIsland] = 2;
  v2[OBJC_IVAR___CAMChromeConfigurator__deviceHasNotch] = 2;
  v2[OBJC_IVAR___CAMChromeConfigurator__shouldShowImageAnalysisButton] = 2;
  v2[OBJC_IVAR___CAMChromeConfigurator__isShowingLiftingTextView] = 2;
  v2[OBJC_IVAR___CAMChromeConfigurator__isShowingOverlayDescription] = 2;
  v2[OBJC_IVAR___CAMChromeConfigurator__isClassicModeSwitchingEnabled] = 2;
  v2[OBJC_IVAR___CAMChromeConfigurator__expandedModeWheelOnboardingSupported] = 2;
  v2[OBJC_IVAR___CAMChromeConfigurator__wantsSmartFramingAutoZoomDefault] = 2;
  v2[OBJC_IVAR___CAMChromeConfigurator__wantsSmartFramingAutoRotationDefault] = 2;
  v2[OBJC_IVAR___CAMChromeConfigurator__autoSmartFramingEnabled] = 2;
  v2[OBJC_IVAR___CAMChromeConfigurator__smartFramingAutoZoomEnabled] = 2;
  v2[OBJC_IVAR___CAMChromeConfigurator__smartFramingAutoRotationEnabled] = 2;
  v2[OBJC_IVAR___CAMChromeConfigurator__isSmartFramingAutoZoomSupported] = 2;
  v2[OBJC_IVAR___CAMChromeConfigurator__isSmartFramingAutoRotationSupported] = 2;
  v2[OBJC_IVAR___CAMChromeConfigurator__overrideSmartFramingAutoRotateInLandscapeEnabled] = 2;
  v2[OBJC_IVAR___CAMChromeConfigurator__overrideSmartFramingAutoZoomInLandscapeEnabled] = 2;
  *&v2[OBJC_IVAR___CAMChromeConfigurator_changeDepth] = 0;
  v2[OBJC_IVAR___CAMChromeConfigurator_needsUpdateModel] = 0;
  type metadata accessor for ChromeViewModel(0);
  v42 = swift_allocObject();
  *&v2[OBJC_IVAR___CAMChromeConfigurator_viewModel] = sub_1A3A1D0E8(a1, v42);
  v48.receiver = v2;
  v48.super_class = type metadata accessor for ChromeConfigurator(0);
  v43 = objc_msgSendSuper2(&v48, sel_init);
  KeyPath = swift_getKeyPath(byte_1A3A7B0C8);
  v45 = swift_getKeyPath(byte_1A3A7B0F0);
  v46 = v43;
  sub_1A3979764(a2, v46, KeyPath, v45);
  return v46;
}

void sub_1A397E04C(uint64_t a1, uint64_t a2)
{
  v2 = OBJC_IVAR___CAMChromeConfigurator_changeDepth;
  v3 = *(a1 + OBJC_IVAR___CAMChromeConfigurator_changeDepth);
  v4 = __OFADD__(v3, 1);
  v5 = v3 + 1;
  if (v4)
  {
    __break(1u);
    goto LABEL_10;
  }

  *(a1 + OBJC_IVAR___CAMChromeConfigurator_changeDepth) = v5;
  (*(a2 + 16))(a2);
  v7 = *(a1 + v2);
  v4 = __OFSUB__(v7, 1);
  v8 = v7 - 1;
  if (v4)
  {
LABEL_10:
    __break(1u);
    return;
  }

  *(a1 + v2) = v8;
  if (*(a1 + OBJC_IVAR___CAMChromeConfigurator_needsUpdateModel) == 1 && v8 <= 0)
  {
    *(a1 + OBJC_IVAR___CAMChromeConfigurator_needsUpdateModel) = 0;
    sub_1A3977314(*(a1 + OBJC_IVAR___CAMChromeConfigurator_viewModel));
  }
}

uint64_t keypath_get_471Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  *a3 = *(v4 + v5);
  return sub_1A3A2EA50();
}

__n128 keypath_get_658Tm@<Q0>(void *a1@<X0>, void *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = *a1 + *a2;
  swift_beginAccess();
  v5 = *(v4 + 32);
  result = *v4;
  v7 = *(v4 + 16);
  *a3 = *v4;
  *(a3 + 16) = v7;
  *(a3 + 32) = v5;
  return result;
}

__n128 keypath_get_862Tm@<Q0>(void *a1@<X0>, void *a2@<X3>, __n128 *a3@<X8>)
{
  v4 = (*a1 + *a2);
  swift_beginAccess();
  v5 = v4[1].n128_u8[0];
  result = *v4;
  *a3 = *v4;
  a3[1].n128_u8[0] = v5;
  return result;
}

uint64_t keypath_get_506Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  result = swift_beginAccess();
  *a3 = *(v4 + v5);
  return result;
}

uint64_t sub_1A397E300(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF728, &qword_1A3A793D8);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A397E370(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t keypath_get_628Tm@<X0>(void *a1@<X0>, void *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = *a1 + *a2;
  result = swift_beginAccess();
  v6 = *(v4 + 8);
  *a3 = *v4;
  *(a3 + 8) = v6;
  return result;
}

uint64_t sub_1A397E428()
{
  swift_getKeyPath(byte_1A3A7B458);
  sub_1A397EC6C();
  sub_1A3A2F080();

  return *(v0 + 16);
}

void sub_1A397E498(char a1)
{
  if (*(v1 + 16) == (a1 & 1))
  {
    *(v1 + 16) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath(byte_1A3A7B458);
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A397EC6C();
    sub_1A3A2F070();
  }
}

uint64_t sub_1A397E580()
{
  swift_getKeyPath(a8_3);
  sub_1A397EC6C();
  sub_1A3A2F080();

  return *(v0 + 17);
}

void sub_1A397E5F0(char a1)
{
  if (*(v1 + 17) == (a1 & 1))
  {
    *(v1 + 17) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath(a8_3);
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A397EC6C();
    sub_1A3A2F070();
  }
}

uint64_t sub_1A397E6D0()
{
  swift_getKeyPath(byte_1A3A7B430);
  sub_1A397EC6C();
  sub_1A3A2F080();

  return *(v0 + 18);
}

void sub_1A397E740(char a1)
{
  if (*(v1 + 18) == (a1 & 1))
  {
    *(v1 + 18) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath(byte_1A3A7B430);
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A397EC6C();
    sub_1A3A2F070();
  }
}

uint64_t sub_1A397E828()
{
  swift_getKeyPath(byte_1A3A7B4A8);
  sub_1A397EC6C();
  sub_1A3A2F080();

  return *(v0 + 19);
}

void sub_1A397E898(char a1)
{
  if (*(v1 + 19) == (a1 & 1))
  {
    *(v1 + 19) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath(byte_1A3A7B4A8);
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A397EC6C();
    sub_1A3A2F070();
  }
}

uint64_t sub_1A397E980()
{
  swift_getKeyPath(byte_1A3A7B480);
  sub_1A397EC6C();
  sub_1A3A2F080();

  return *(v0 + 20);
}

double sub_1A397E9F0(unsigned __int8 a1)
{
  if (*(v1 + 20) != a1)
  {
    KeyPath = swift_getKeyPath(byte_1A3A7B480);
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A397EC6C();
    sub_1A3A2F070();
  }

  return result;
}

uint64_t sub_1A397EAD0()
{
  v1 = OBJC_IVAR____TtC8CameraUI20ChromeTorchViewModel___observationRegistrar;
  v2 = sub_1A3A2F0C0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ChromeTorchViewModel(uint64_t a1)
{
  result = qword_1ED9988B8;
  if (!qword_1ED9988B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A397EBC0(uint64_t a1)
{
  result = sub_1A3A2F0C0();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_1A397EC6C()
{
  result = qword_1ED998878;
  if (!qword_1ED998878)
  {
    type metadata accessor for ChromeTorchViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED998878);
  }

  return result;
}

uint64_t type metadata accessor for ChromeElementIcon(uint64_t a1)
{
  result = qword_1ED9989D8;
  if (!qword_1ED9989D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A397ED70(uint64_t a1)
{
  sub_1A397EE98();
  if (v1 <= 0x3F)
  {
    sub_1A397EF44(319);
    if (v2 <= 0x3F)
    {
      sub_1A397F24C(319, &qword_1EB0FF780, &type metadata for ControlOrientationRotationType, "name rotationType ");
      if (v3 <= 0x3F)
      {
        sub_1A397EFC4();
        if (v4 <= 0x3F)
        {
          sub_1A397F030(319);
          if (v5 <= 0x3F)
          {
            sub_1A397F19C(319);
            if (v6 <= 0x3F)
            {
              sub_1A397F21C();
              if (v7 <= 0x3F)
              {
                sub_1A397F24C(319, &qword_1EB0FF7A8, MEMORY[0x1E69E6158], "name text ");
                if (v8 <= 0x3F)
                {
                  swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1A397EE98()
{
  if (!qword_1ED9989E8)
  {
    sub_1A397EEE0(0);
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9989E8);
    }
  }
}

void sub_1A397EEE0(uint64_t a1)
{
  if (!qword_1ED9989F0)
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FF768, &qword_1A3A7B518);
    v5 = type metadata accessor for ValueProvider(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1ED9989F0);
    }
  }
}

void sub_1A397EF44(uint64_t a1)
{
  if (!qword_1EB0FF770)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FF778, &qword_1A3A7B520);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB0FF770);
    }
  }
}

void sub_1A397EFC4()
{
  if (!qword_1EB0FF788)
  {
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB0FF788);
    }
  }
}

void sub_1A397F030(uint64_t a1)
{
  if (!qword_1EB0FF790)
  {
    MEMORY[0x1EEE9AC00](a1);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FF798, &unk_1A3A7B528);
    sub_1A3A30090();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1EB0FF790);
    }
  }
}

void sub_1A397F19C(uint64_t a1)
{
  if (!qword_1EB0FF7A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FD738, &qword_1A3A6EDF0);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB0FF7A0);
    }
  }
}

unint64_t sub_1A397F21C()
{
  result = qword_1ED9989F8[0];
  if (!qword_1ED9989F8[0])
  {
    result = MEMORY[0x1E69E7DE0];
    atomic_store(MEMORY[0x1E69E7DE0], qword_1ED9989F8);
  }

  return result;
}

void sub_1A397F24C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1A397F2A0(uint64_t a1, int a2)
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

uint64_t sub_1A397F2E8(uint64_t result, int a2, int a3)
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

uint64_t sub_1A397F344(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1A397F38C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1A397F3DC()
{
  result = qword_1EB0FF7B0;
  if (!qword_1EB0FF7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FF7B0);
  }

  return result;
}

uint64_t sub_1A397F430(_BYTE *a1, uint64_t a2)
{
  v158 = a1;
  v3 = sub_1A3A30090();
  v153 = *(v3 - 8);
  v154 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v151 = &v141[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v152 = &v141[-v6];
  v7 = type metadata accessor for ChromeElementIcon(0);
  MEMORY[0x1EEE9AC00](v7);
  v150 = &v141[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v149 = &v141[-v10];
  MEMORY[0x1EEE9AC00](v11);
  v156 = &v141[-v12];
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v141[-v14];
  MEMORY[0x1EEE9AC00](v16);
  v155 = &v141[-v17];
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v141[-v19];
  MEMORY[0x1EEE9AC00](v21);
  v157 = &v141[-v22];
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v141[-v24];
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v141[-v27];
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v141[-v30];
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v141[-v33];
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FFB00, &qword_1A3A7BB40);
  MEMORY[0x1EEE9AC00](v35 - 8);
  v37 = &v141[-v36];
  v39 = &v141[*(v38 + 56) - v36];
  sub_1A38907D0(v158, &v141[-v36]);
  sub_1A38907D0(a2, v39);
  v158 = v37;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload > 6)
    {
      v42 = v158;
      v48 = v39;
      if (EnumCaseMultiPayload != 7)
      {
        if (EnumCaseMultiPayload == 8)
        {
          sub_1A38907D0(v158, v156);
          v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF8A0, &unk_1A3A7B820);
          v50 = swift_projectBox();
          v51 = *(v49 + 48);
          v52 = *(v50 + v51);
          if (swift_getEnumCaseMultiPayload() == 8)
          {
            v53 = swift_projectBox();
            v54 = *(v53 + v51);
            v55 = v149;
            sub_1A38907D0(v50, v149);
            v56 = v53;
            v57 = v150;
            sub_1A38907D0(v56, v150);
            v58 = sub_1A397F430(v55, v57);
            sub_1A392BCAC(v57);
            sub_1A392BCAC(v55);

            if (v58)
            {
              v59 = v52 == v54;
              goto LABEL_74;
            }

            goto LABEL_101;
          }

LABEL_59:

          goto LABEL_63;
        }

        if (swift_getEnumCaseMultiPayload() != 9)
        {
LABEL_63:
          sub_1A388F740(v42, &qword_1EB0FFB00, &qword_1A3A7BB40);
LABEL_103:
          v127 = 0;
          return v127 & 1;
        }

        goto LABEL_115;
      }

      sub_1A38907D0(v158, v15);
      v79 = *v15;
      v78 = v15[1];
      v81 = v15[2];
      v80 = v15[3];
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        v82 = *v39;
        v83 = *(v39 + 1);
        v85 = *(v39 + 2);
        v84 = *(v48 + 3);
        if (v79 == *&v82 && v78 == v83)
        {
        }

        else
        {
          v87 = sub_1A3A321C0();

          if ((v87 & 1) == 0)
          {

            goto LABEL_101;
          }
        }

        if (v81 == v85 && v80 == v84)
        {
        }

        else
        {
          v134 = sub_1A3A321C0();

          if ((v134 & 1) == 0)
          {
            goto LABEL_101;
          }
        }

        goto LABEL_115;
      }

LABEL_41:

      goto LABEL_62;
    }

    v42 = v158;
    v61 = v39;
    if (EnumCaseMultiPayload != 5)
    {
      v124 = v155;
      sub_1A38907D0(v158, v155);
      v125 = swift_getEnumCaseMultiPayload();
      if (v125 == 6)
      {
        v59 = *v124 == *v39;
        goto LABEL_74;
      }

      goto LABEL_63;
    }

    sub_1A38907D0(v158, v20);
    v63 = *v20;
    v62 = *(v20 + 1);
    v65 = *(v20 + 2);
    v64 = *(v20 + 3);
    v66 = v20[32];
    if (swift_getEnumCaseMultiPayload() != 5)
    {
      goto LABEL_41;
    }

    v68 = *(v39 + 2);
    v67 = *(v61 + 3);
    v69 = v61[32];
    if (v63 == *v61 && v62 == *(v61 + 1))
    {
    }

    else
    {
      v71 = sub_1A3A321C0();

      if ((v71 & 1) == 0)
      {

LABEL_98:

        goto LABEL_99;
      }
    }

    if (v64)
    {
      if (!v67)
      {
        goto LABEL_98;
      }

      if (v65 == v68 && v64 == v67)
      {
      }

      else
      {
        v139 = sub_1A3A321C0();

        if ((v139 & 1) == 0)
        {
          goto LABEL_99;
        }
      }
    }

    else if (v67)
    {
      goto LABEL_98;
    }

    v127 = v66 == v69;
    sub_1A392BCAC(v158);
    return v127 & 1;
  }

  if (EnumCaseMultiPayload > 1)
  {
    v41 = v39;
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload == 3)
      {
        v42 = v158;
        sub_1A38907D0(v158, v25);
        v43 = *v25;
        v44 = *(v25 + 1);
        v45 = v25[24];
        if (swift_getEnumCaseMultiPayload() == 3)
        {
          v46 = *(v39 + 1);
          v47 = v39[24];
          if (v43 == *v41 && v44 == v46)
          {

            goto LABEL_72;
          }

          v128 = sub_1A3A321C0();

          if (v128)
          {
LABEL_72:
            v129 = sub_1A3A30680();

            if (v129)
            {
              v59 = v45 == v47;
LABEL_74:
              v127 = v59;
              goto LABEL_77;
            }

            goto LABEL_101;
          }

LABEL_101:
          v135 = v42;
          goto LABEL_102;
        }

        goto LABEL_59;
      }

      v88 = v157;
      sub_1A38907D0(v158, v157);
      v89 = *v88;
      LODWORD(v156) = v88[8];
      v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD448, &unk_1A3A75AB0);
      v91 = v90[16];
      v92 = v90[20];
      LODWORD(v155) = v88[v92];
      v93 = v90[24];
      LODWORD(v150) = v88[v93];
      v94 = v90[28];
      v95 = v88[v94];
      v96 = v90[32];
      v148 = v88[v96];
      LODWORD(v149) = v95;
      v97 = v90[36];
      v147 = v88[v97];
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        (*(v153 + 8))(&v88[v91], v154);

        v42 = v158;
        goto LABEL_63;
      }

      v98 = v88;
      v99 = *v39;
      v100 = v39[v92];
      v145 = v39[v93];
      v146 = v100;
      v101 = v39[v94];
      v143 = v39[v96];
      v144 = v101;
      v102 = v39[8];
      v142 = v39[v97];
      v104 = v152;
      v103 = v153;
      v105 = *(v153 + 32);
      v106 = v154;
      v105(v152, &v98[v91], v154);
      v107 = v41 + v91;
      v108 = v151;
      v105(v151, v107, v106);
      v109 = sub_1A39FCC04(v89, v99);

      if (v109)
      {
        v110 = v158;
        if (v156 == v102)
        {
          v137 = sub_1A3A30080();
          v138 = *(v103 + 8);
          v138(v108, v106);
          v138(v104, v106);
          if ((v137 & 1) != 0 && v155 == v146 && v150 == v145 && v149 == v144 && v148 == v143)
          {
            v140 = v147 ^ v142;
            sub_1A392BCAC(v110);
            v127 = v140 ^ 1;
            return v127 & 1;
          }
        }

        else
        {
          v111 = *(v103 + 8);
          v111(v108, v106);
          v111(v104, v106);
        }

        v135 = v110;
        goto LABEL_102;
      }

      v130 = *(v103 + 8);
      v130(v108, v106);
      v130(v104, v106);
LABEL_99:
      v135 = v158;
LABEL_102:
      sub_1A392BCAC(v135);
      goto LABEL_103;
    }

    v42 = v158;
    sub_1A38907D0(v158, v28);
    v73 = *v28;
    v72 = *(v28 + 1);
    v74 = v28[16];
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v75 = v39[16];
      if (v73 == *v39 && v72 == *(v39 + 1))
      {
      }

      else
      {
        v77 = sub_1A3A321C0();

        if ((v77 & 1) == 0)
        {
          goto LABEL_101;
        }
      }

      v59 = v74 == v75;
      goto LABEL_74;
    }

LABEL_62:

    goto LABEL_63;
  }

  v60 = v39;
  if (EnumCaseMultiPayload)
  {
    v42 = v158;
    sub_1A38907D0(v158, v31);
    v113 = *v31;
    v112 = *(v31 + 1);
    v114 = v31[16];
    v116 = *(v31 + 3);
    v115 = *(v31 + 4);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1A3988C60(v116, v115);
      goto LABEL_62;
    }

    v117 = *v39;
    v118 = *(v39 + 1);
    v119 = v39[16];
    v121 = *(v60 + 3);
    v120 = *(v60 + 4);
    if (v113 == v117 && v112 == v118)
    {
    }

    else
    {
      v123 = sub_1A3A321C0();

      if ((v123 & 1) == 0)
      {
        goto LABEL_92;
      }
    }

    if (v114 != v119)
    {
LABEL_92:
      sub_1A3988C60(v121, v120);
      goto LABEL_93;
    }

    if (v116)
    {
      if (!v121)
      {
LABEL_93:
        v132 = v116;
        v133 = v115;
LABEL_94:
        sub_1A3988C60(v132, v133);
        goto LABEL_101;
      }

      if ((sub_1A3A30D40() & 1) == 0)
      {

        goto LABEL_93;
      }

      v131 = sub_1A3A30D40();

      sub_1A3988C60(v116, v115);
      if ((v131 & 1) == 0)
      {
        goto LABEL_101;
      }
    }

    else if (v121)
    {
      v132 = v121;
      v133 = v120;
      goto LABEL_94;
    }

LABEL_115:
    sub_1A392BCAC(v42);
    v127 = 1;
    return v127 & 1;
  }

  v42 = v158;
  sub_1A38907D0(v158, v34);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_1A388F740(v34, &qword_1EB0FFA98, &qword_1A3A7BA98);
    goto LABEL_63;
  }

  v126 = *(v39 + 1);
  v159[0] = *v39;
  v159[1] = v126;
  v159[2] = *(v39 + 2);
  v160 = *(v39 + 6);
  v127 = MEMORY[0x1A58F7D40](v34, v159);
  sub_1A388F740(v159, &qword_1EB0FFA98, &qword_1A3A7BA98);
  sub_1A388F740(v34, &qword_1EB0FFA98, &qword_1A3A7BA98);
LABEL_77:
  sub_1A392BCAC(v42);
  return v127 & 1;
}

void sub_1A3980074(uint64_t a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v8 = type metadata accessor for ChromeElementIcon(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v21 - v12;
  sub_1A38907D0(v4, &v21 - v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 8)
  {
    v15 = swift_projectBox();
    sub_1A38907D0(v15, v10);
    sub_1A3980074(a1, a2 & 1, a3);
    sub_1A392BCAC(v10);
  }

  else if (EnumCaseMultiPayload == 9)
  {
    sub_1A38907D0(v4, a3);
  }

  else
  {
    if (a2)
    {
      sub_1A38907D0(v4, a3);
    }

    else
    {
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF8A0, &unk_1A3A7B820);
      v17 = swift_allocBox();
      v19 = v18;
      v20 = *(v16 + 48);
      sub_1A38907D0(v4, v18);
      *(v19 + v20) = a1;
      *a3 = v17;
      swift_storeEnumTagMultiPayload();
    }

    sub_1A392BCAC(v13);
  }
}

void sub_1A3980200(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(a0_11);
  sub_1A3988EAC(&qword_1ED996658, type metadata accessor for CameraUISettings, &unk_1A3A777E4);
  sub_1A3A2F080();

  *a2 = *(v3 + 64);
}

uint64_t sub_1A39802D0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(aP_12);
  sub_1A3988EAC(&qword_1ED996650, type metadata accessor for SettingsManager, &unk_1A3A777B8);
  sub_1A3A2F080();

  *a2 = *(v3 + 16);
  return sub_1A3A2EA60();
}

void sub_1A39803A8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1A3A30090();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ChromeElementIcon(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v37 - v12;
  sub_1A38907D0(v2, v37 - v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 6)
    {
      if (EnumCaseMultiPayload != 5)
      {
        v35 = *v13;
        MEMORY[0x1A58F8150](7);
        v36 = 0.0;
        if (v35 != 0.0)
        {
          v36 = v35;
        }

        MEMORY[0x1A58F8170](*&v36);
        return;
      }

      v20 = *(v13 + 3);
      v21 = v13[32];
      MEMORY[0x1A58F8150](6);
      sub_1A3A318B0();

      sub_1A3A322E0();
      if (v20)
      {
        sub_1A3A318B0();
      }

      v23 = v21;
    }

    else
    {
      if (EnumCaseMultiPayload == 7)
      {
        MEMORY[0x1A58F8150](8);
        sub_1A3A318B0();

        sub_1A3A318B0();

        return;
      }

      if (EnumCaseMultiPayload == 8)
      {
        v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF8A0, &unk_1A3A7B820);
        v17 = swift_projectBox();
        v18 = *(v17 + *(v16 + 48));
        sub_1A38907D0(v17, v10);
        MEMORY[0x1A58F8150](9);
        sub_1A39803A8(a1);
        MEMORY[0x1A58F8150](v18);
        sub_1A392BCAC(v10);
        goto LABEL_10;
      }

      v23 = 0;
    }

LABEL_29:
    MEMORY[0x1A58F8150](v23);
    return;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v32 = v13[16];
      v33 = *(v13 + 3);
      v34 = *(v13 + 4);
      MEMORY[0x1A58F8150](2);
      sub_1A3A318B0();

      MEMORY[0x1A58F8150](v32);
      sub_1A3A322E0();
      if (v33)
      {
        sub_1A3A30D90();
        sub_1A3A30D90();
        sub_1A3988C60(v33, v34);
      }
    }

    else
    {
      v19 = *(v13 + 1);
      v46[0] = *v13;
      v46[1] = v19;
      v46[2] = *(v13 + 2);
      v47 = *(v13 + 6);
      MEMORY[0x1A58F8150](1);
      sub_1A3A31ED0();
      sub_1A388F740(v46, &qword_1EB0FFA98, &qword_1A3A7BA98);
    }

    return;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v22 = v13[16];
    MEMORY[0x1A58F8150](3);
    sub_1A3A318B0();

    v23 = v22;
    goto LABEL_29;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v15 = v13[24];
    MEMORY[0x1A58F8150](4);
    sub_1A3A318B0();

    sub_1A3A306A0();
    MEMORY[0x1A58F8150](v15);
LABEL_10:

    return;
  }

  v24 = *v13;
  v37[3] = v13[8];
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD448, &unk_1A3A75AB0);
  v26 = v25[16];
  v38 = v13[v25[20]];
  v27 = v13[v25[28]];
  v39 = v13[v25[24]];
  v40 = v27;
  v28 = v13[v25[36]];
  v41 = v13[v25[32]];
  v42 = v28;
  v43 = v5;
  v44 = v4;
  (*(v5 + 32))(v7, &v13[v26], v4);
  MEMORY[0x1A58F8150](5);
  MEMORY[0x1A58F8150](*(*&v24 + 16));
  v45 = v24;
  v29 = *(*&v24 + 16);
  if (v29)
  {
    v30 = *&v45 + 72;
    do
    {
      sub_1A3A2EA50();
      sub_1A3A2EA50();
      sub_1A3A2EA50();
      sub_1A3A318B0();
      sub_1A3A318B0();
      sub_1A3A318B0();

      v30 += 48;
      --v29;
    }

    while (v29);
  }

  sub_1A3A322E0();
  sub_1A3988EAC(&qword_1EB0FFB08, MEMORY[0x1E697F6A0], MEMORY[0x1E697F6B0]);
  v31 = v44;
  sub_1A3A31760();
  MEMORY[0x1A58F8150](v38);
  sub_1A3A322E0();
  sub_1A3A322E0();
  sub_1A3A322E0();
  sub_1A3A322E0();
  (*(v43 + 8))(v7, v31);
}

uint64_t sub_1A39809AC()
{
  sub_1A3A322C0();
  sub_1A39803A8(v1);
  return sub_1A3A32300();
}

uint64_t sub_1A39809F0(uint64_t a1)
{
  sub_1A3A322C0();
  sub_1A39803A8(v2);
  return sub_1A3A32300();
}

uint64_t sub_1A3980A2C(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1A3A321C0() & 1) == 0 || (v2 != v6 || v4 != v7) && (sub_1A3A321C0() & 1) == 0)
  {
    return 0;
  }

  if (v3 == v8 && v5 == v9)
  {
    return 1;
  }

  return sub_1A3A321C0();
}

uint64_t sub_1A3980B24()
{
  sub_1A3A322C0();
  sub_1A3A318B0();
  sub_1A3A318B0();
  sub_1A3A318B0();
  return sub_1A3A32300();
}

uint64_t sub_1A3980BA8(uint64_t a1)
{
  sub_1A3A318B0();
  sub_1A3A318B0();

  return sub_1A3A318B0();
}

uint64_t sub_1A3980C14(uint64_t a1)
{
  sub_1A3A322C0();
  sub_1A3A318B0();
  sub_1A3A318B0();
  sub_1A3A318B0();
  return sub_1A3A32300();
}

uint64_t sub_1A3980C94(void *a1, void *a2)
{
  if ((sub_1A3A30D40() & 1) == 0)
  {
    return 0;
  }

  return sub_1A3A30D40();
}

uint64_t sub_1A3980CF0()
{
  sub_1A3A322C0();
  sub_1A3A30D90();
  sub_1A3A30D90();
  return sub_1A3A32300();
}

uint64_t sub_1A3980D44(uint64_t a1)
{
  sub_1A3A30D90();

  return sub_1A3A30D90();
}

uint64_t sub_1A3980D84(uint64_t a1)
{
  sub_1A3A322C0();
  sub_1A3A30D90();
  sub_1A3A30D90();
  return sub_1A3A32300();
}

unint64_t sub_1A3980DD8()
{
  result = qword_1EB0FF7B8;
  if (!qword_1EB0FF7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FF7B8);
  }

  return result;
}

void sub_1A3980E9C(void *a1@<X8>)
{
  v2 = v1;
  v417 = a1;
  v391 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF7C8, &qword_1A3A7B748);
  MEMORY[0x1EEE9AC00](v391);
  v382 = &v348 - v3;
  v388 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF7D0, &qword_1A3A7B750);
  MEMORY[0x1EEE9AC00](v388);
  v390 = (&v348 - v4);
  v416 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF7D8, &qword_1A3A7B758);
  MEMORY[0x1EEE9AC00](v416);
  v392 = &v348 - v5;
  v6 = sub_1A3A2FC90();
  v356 = *(v6 - 8);
  v357 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v355 = &v348 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v364 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF7E0, &qword_1A3A7B760);
  v353 = *(v364 - 8);
  MEMORY[0x1EEE9AC00](v364);
  v352 = &v348 - v8;
  v360 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF7E8, &qword_1A3A7B768);
  MEMORY[0x1EEE9AC00](v360);
  v362 = &v348 - v9;
  v363 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF7F0, &qword_1A3A7B770);
  v351 = *(v363 - 8);
  MEMORY[0x1EEE9AC00](v363);
  v350 = &v348 - v10;
  v365 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF7F8, &qword_1A3A7B778);
  MEMORY[0x1EEE9AC00](v365);
  v368 = &v348 - v11;
  v369 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF800, &qword_1A3A7B780);
  v359 = *(v369 - 8);
  MEMORY[0x1EEE9AC00](v369);
  v358 = &v348 - v12;
  v367 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF808, &qword_1A3A7B788);
  MEMORY[0x1EEE9AC00](v367);
  v361 = &v348 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF810, &qword_1A3A7B790);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v366 = &v348 - v15;
  v399 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF818, &qword_1A3A7B798);
  MEMORY[0x1EEE9AC00](v399);
  v383 = &v348 - v16;
  v17 = sub_1A3A30090();
  v396 = *(v17 - 8);
  v397 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v394 = &v348 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v404 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF820, &qword_1A3A7B7A0);
  MEMORY[0x1EEE9AC00](v404);
  v406 = (&v348 - v19);
  v393 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF828, &qword_1A3A7B7A8);
  MEMORY[0x1EEE9AC00](v393);
  v395 = &v348 - v20;
  v405 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF830, &qword_1A3A7B7B0);
  MEMORY[0x1EEE9AC00](v405);
  v398 = &v348 - v21;
  v411 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF838, &qword_1A3A7B7B8);
  MEMORY[0x1EEE9AC00](v411);
  v407 = &v348 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF840, &qword_1A3A7B7C0);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v373 = &v348 - v24;
  v386 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF848, &qword_1A3A7B7C8);
  MEMORY[0x1EEE9AC00](v386);
  v387 = (&v348 - v25);
  v403 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF850, &qword_1A3A7B7D0);
  MEMORY[0x1EEE9AC00](v403);
  v389 = &v348 - v26;
  v380 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF858, &qword_1A3A7B7D8);
  MEMORY[0x1EEE9AC00](v380);
  v354 = (&v348 - v27);
  v378 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF860, &qword_1A3A7B7E0);
  MEMORY[0x1EEE9AC00](v378);
  v379 = &v348 - v28;
  v29 = sub_1A3A31620();
  v375 = *(v29 - 8);
  v376 = v29;
  MEMORY[0x1EEE9AC00](v29);
  v371 = &v348 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v374 = sub_1A3A31640();
  v372 = *(v374 - 8);
  MEMORY[0x1EEE9AC00](v374);
  v370 = &v348 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_1A3A2F1E0();
  v384 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v34 = (&v348 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  v377 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF868, &qword_1A3A7B7E8);
  MEMORY[0x1EEE9AC00](v377);
  v36 = (&v348 - v35);
  v385 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF870, &qword_1A3A7B7F0);
  MEMORY[0x1EEE9AC00](v385);
  v381 = &v348 - v37;
  v413 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF878, &qword_1A3A7B7F8);
  MEMORY[0x1EEE9AC00](v413);
  v415 = &v348 - v38;
  v408 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF880, &qword_1A3A7B800);
  MEMORY[0x1EEE9AC00](v408);
  v410 = &v348 - v39;
  v400 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF888, &qword_1A3A7B808);
  MEMORY[0x1EEE9AC00](v400);
  v401 = &v348 - v40;
  v409 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF890, &qword_1A3A7B810);
  MEMORY[0x1EEE9AC00](v409);
  v402 = &v348 - v41;
  v414 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF898, &qword_1A3A7B818);
  MEMORY[0x1EEE9AC00](v414);
  v412 = &v348 - v42;
  v43 = type metadata accessor for ChromeElementIcon(0);
  v44 = *(v43 - 8);
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v43);
  v46 = &v348 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v47);
  v49 = &v348 - v48;
  sub_1A38907D0(v2, &v348 - v48);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 6)
    {
      if (EnumCaseMultiPayload == 5)
      {
        v131 = *v49;
        v130 = *(v49 + 1);
        v132 = *(v49 + 3);
        v133 = v49[32];
        if (v132)
        {
          v134 = *(v49 + 2);
          v135 = sub_1A3A2FF40();
          LOBYTE(v424) = 0;
          sub_1A398612C(v134, v132, *&v131, v130, &v453);
          v420[1] = v454[1];
          v421 = v454[2];
          v422 = v454[3];
          v423 = v454[4];
          v419 = v453;
          v420[0] = v454[0];
          LOBYTE(v434) = v454[4];
          v431 = v454[1];
          v432 = v454[2];
          v433 = v454[3];
          v429 = v453;
          v430 = v454[0];
          sub_1A388F6D8(&v419, &v441, &qword_1EB0FFA88, &unk_1A3A7B988);
          sub_1A388F740(&v429, &qword_1EB0FFA88, &unk_1A3A7B988);

          *(&v418[2] + 7) = v420[1];
          *(&v418[3] + 7) = v421;
          *(&v418[4] + 7) = v422;
          BYTE7(v418[5]) = v423;
          *(v418 + 7) = v419;
          *(&v418[1] + 7) = v420[0];
          v136 = v424;
          v137 = sub_1A3A30600();
          sub_1A3A2F520();
          v139 = v138;
          v141 = v140;
          v143 = v142;
          v145 = v144;
          LOBYTE(v453) = 0;
          sub_1A3A31590();
          v147 = v146;
          v149 = v148;
          type metadata accessor for ChromeViewModel(0);
          sub_1A3988EAC(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
          v150 = sub_1A3A2F650();
          *(&v454[2] + 1) = v418[2];
          *(&v454[3] + 1) = v418[3];
          *(&v454[4] + 1) = v418[4];
          *(v454 + 1) = v418[0];
          v453 = v135;
          LOBYTE(v454[0]) = v136;
          *(&v454[5] + 1) = *&v418[5];
          *(&v454[1] + 1) = v418[1];
          LOBYTE(v455) = v137;
          *(&v455 + 1) = v139;
          *&v456 = v141;
          *(&v456 + 1) = v143;
          *&v457 = v145;
          BYTE8(v457) = 0;
          LOBYTE(v458) = v133;
          *(&v458 + 1) = v147;
          *&v459[0] = v149;
          BYTE8(v459[0]) = 1;
          *&v459[1] = v150;
          BYTE8(v459[1]) = v151 & 1;
          sub_1A3988990(&v453);
          v451 = v458;
          v452[0] = v459[0];
          v152 = *(v459 + 10);
        }

        else
        {
          LODWORD(v403) = v49[32];
          *&v453 = v131;
          *(&v453 + 1) = v130;
          sub_1A389FD78();
          v275 = sub_1A3A308E0();
          v277 = v276;
          v279 = v278;
          if (qword_1EB0FC118 != -1)
          {
            swift_once();
          }

          sub_1A3A30740();
          sub_1A391A414(v280);
          v281 = CEKMonospacedStylisticNumeralFontOfSizeWeightAndStyle();
          sub_1A3A307B0();
          v282 = sub_1A3A308A0();
          v284 = v283;
          v286 = v285;

          sub_1A389F1B4(v275, v277, v279 & 1);

          v287 = v355;
          sub_1A3A2FC60();
          v288 = sub_1A3A30890();
          v290 = v289;
          v292 = v291;
          v294 = v293;
          sub_1A389F1B4(v282, v284, v286 & 1);

          (*(v356 + 8))(v287, v357);
          LOBYTE(v287) = sub_1A3A30600();
          sub_1A3A2F520();
          v296 = v295;
          v298 = v297;
          v300 = v299;
          v302 = v301;
          LOBYTE(v441) = v292 & 1;
          LOBYTE(v429) = 0;
          sub_1A3A31590();
          v304 = v303;
          v306 = v305;
          type metadata accessor for ChromeViewModel(0);
          sub_1A3988EAC(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
          v307 = sub_1A3A2F650();
          *&v453 = v288;
          *(&v453 + 1) = v290;
          LOBYTE(v454[0]) = v292 & 1;
          *(&v454[0] + 1) = v294;
          LOBYTE(v454[1]) = v287;
          *(&v454[1] + 1) = v296;
          *&v454[2] = v298;
          *(&v454[2] + 1) = v300;
          *&v454[3] = v302;
          BYTE8(v454[3]) = 0;
          LOBYTE(v454[4]) = v403;
          *(&v454[4] + 1) = v304;
          *&v454[5] = v306;
          BYTE8(v454[5]) = 1;
          *&v455 = v307;
          BYTE8(v455) = v308 & 1;
          sub_1A398897C(&v453);
          v451 = v458;
          v452[0] = v459[0];
          v152 = *(v459 + 10);
        }

        *(v452 + 10) = v152;
        v447 = v454[5];
        v448 = v455;
        v450 = v457;
        v449 = v456;
        v443 = v454[1];
        v444 = v454[2];
        v446 = v454[4];
        v445 = v454[3];
        v442 = v454[0];
        v441 = v453;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FFA50, &qword_1A3A7B920);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FFA68, &qword_1A3A7B938);
        sub_1A3988328();
        sub_1A398846C();
        sub_1A3A301F0();
        v458 = v427[6];
        v459[0] = v428[0];
        *(v459 + 10) = *(v428 + 10);
        v454[5] = v427[2];
        v455 = v427[3];
        v457 = v427[5];
        v456 = v427[4];
        v454[1] = *&v425[16];
        v454[2] = v426;
        v454[4] = v427[1];
        v454[3] = v427[0];
        v454[0] = *v425;
        v453 = v424;
        sub_1A3988988(&v453);
        v439 = v458;
        v440[0] = v459[0];
        *(v440 + 11) = *(v459 + 11);
        v435 = v454[5];
        v436 = v455;
        v438 = v457;
        v437 = v456;
        v431 = v454[1];
        v432 = v454[2];
        v434 = v454[4];
        v433 = v454[3];
        v429 = v453;
        v430 = v454[0];
        v257 = &qword_1EB0FFA48;
        v258 = &qword_1A3A7B918;
        sub_1A388F6D8(&v424, &v441, &qword_1EB0FFA48, &qword_1A3A7B918);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FFA48, &qword_1A3A7B918);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FFA70, &qword_1A3A7B948);
        sub_1A398829C();
        sub_1A3988518();
        sub_1A3A301F0();
        v309 = v452[0];
        v260 = v406;
        v406[10] = v451;
        v260[11] = v309;
        v261 = *(v452 + 11);
      }

      else
      {
        v245 = fmin(*v49, 1.0);
        if (v245 > 0.0)
        {
          v246 = v245;
        }

        else
        {
          v246 = 0.0;
        }

        sub_1A3A2F680();
        v247 = v419;
        v248 = v420[0];
        v249 = *&v420[1];
        sub_1A3A31590();
        v251 = v250;
        v253 = v252;
        type metadata accessor for ChromeViewModel(0);
        sub_1A3988EAC(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
        v254 = *(&v419 + 1);
        v255 = sub_1A3A2F650();
        v460 = v256 & 1;
        *&v424 = v246;
        *(&v424 + 1) = v247;
        *v425 = v254;
        *&v425[8] = v248;
        *&v425[24] = v249;
        LOBYTE(v426) = 1;
        *(&v426 + 1) = v462[0];
        DWORD1(v426) = *(v462 + 3);
        *(&v426 + 1) = v251;
        *&v427[0] = v253;
        BYTE8(v427[0]) = 1;
        HIDWORD(v427[0]) = *&v461[3];
        *(v427 + 9) = *v461;
        *&v427[1] = v255;
        BYTE8(v427[1]) = v256 & 1;
        v454[0] = *v425;
        v453 = v424;
        *(&v454[3] + 9) = *(v427 + 9);
        v454[3] = v427[0];
        v454[2] = v426;
        v454[1] = *&v425[16];
        sub_1A3988970(&v453);
        v439 = v458;
        v440[0] = v459[0];
        *(v440 + 11) = *(v459 + 11);
        v435 = v454[5];
        v436 = v455;
        v438 = v457;
        v437 = v456;
        v431 = v454[1];
        v432 = v454[2];
        v434 = v454[4];
        v433 = v454[3];
        v429 = v453;
        v430 = v454[0];
        v257 = &qword_1EB0FFA70;
        v258 = &qword_1A3A7B948;
        sub_1A388F6D8(&v424, &v441, &qword_1EB0FFA70, &qword_1A3A7B948);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FFA48, &qword_1A3A7B918);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FFA70, &qword_1A3A7B948);
        sub_1A398829C();
        sub_1A3988518();
        sub_1A3A301F0();
        v259 = v452[0];
        v260 = v406;
        v406[10] = v451;
        v260[11] = v259;
        v261 = *(v452 + 11);
      }

      *(v260 + 187) = v261;
      v310 = v448;
      v260[6] = v447;
      v260[7] = v310;
      v311 = v450;
      v260[8] = v449;
      v260[9] = v311;
      v312 = v444;
      v260[2] = v443;
      v260[3] = v312;
      v313 = v446;
      v260[4] = v445;
      v260[5] = v313;
      v314 = v442;
      *v260 = v441;
      v260[1] = v314;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FFA40, &qword_1A3A7B910);
      sub_1A3987610();
      sub_1A3988210();
      v315 = v407;
      sub_1A3A301F0();
      sub_1A388F6D8(v315, v410, &qword_1EB0FF838, &qword_1A3A7B7B8);
      swift_storeEnumTagMultiPayload();
      sub_1A3986FC0();
      sub_1A3987584();
      v169 = v412;
      sub_1A3A301F0();
      sub_1A388F740(v315, &qword_1EB0FF838, &qword_1A3A7B7B8);
      sub_1A388F6D8(v169, v415, &qword_1EB0FF898, &qword_1A3A7B818);
      swift_storeEnumTagMultiPayload();
      sub_1A3986F34();
      sub_1A39885D0();
      sub_1A3A301F0();
      sub_1A388F740(&v424, v257, v258);
      goto LABEL_37;
    }

    if (EnumCaseMultiPayload == 7)
    {
      v170 = *(v49 + 1);
      v171 = *(v49 + 2);
      v172 = *(v49 + 3);
      *v34 = *v49;
      *(v34 + 1) = v170;
      v173 = v384;
      (*(v384 + 104))(v34, *MEMORY[0x1E69C1D40], v32);
      v174 = sub_1A3A2F200();
      (*(v173 + 8))(v34, v32);
      *&v453 = v171;
      *(&v453 + 1) = v172;
      sub_1A389FD78();
      v175 = sub_1A3A308E0();
      v177 = v176;
      v179 = v178;
      v181 = v180;
      KeyPath = swift_getKeyPath(byte_1A3A7B958);
      v179 &= 1u;
      LOBYTE(v453) = v179;
      LOBYTE(v441) = 0;
      sub_1A3A2EA60();
      sub_1A389F1A4(v175, v177, v179);
      sub_1A3A2EA50();
      sub_1A3A2EA60();
      v412 = v174;
      sub_1A3A2EA60();
      sub_1A389F1A4(v175, v177, v179);
      sub_1A3A2EA50();
      sub_1A3A2EA60();
      sub_1A389F1B4(v175, v177, v179);

      v183 = v453;
      v184 = v441;
      v185 = v390;
      *v390 = v174;
      v185[1] = v175;
      v185[2] = v177;
      *(v185 + 24) = v183;
      v185[4] = v181;
      v185[5] = KeyPath;
      v185[6] = 1;
      *(v185 + 56) = v184;
      swift_storeEnumTagMultiPayload();
      sub_1A3A2EA60();
      sub_1A389F1A4(v175, v177, v179);
      sub_1A3A2EA50();
      sub_1A3A2EA60();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF8B8, &qword_1A3A7B838);
      sub_1A38A08F8(&qword_1EB0FF8C0, &qword_1EB0FF8B8, &qword_1A3A7B838, MEMORY[0x1E6981F48]);
      sub_1A3986D34();
      v186 = v392;
      sub_1A3A301F0();
      sub_1A388F6D8(v186, v415, &qword_1EB0FF7D8, &qword_1A3A7B758);
      swift_storeEnumTagMultiPayload();
      sub_1A3986F34();
      sub_1A39885D0();
      sub_1A3A301F0();

      sub_1A389F1B4(v175, v177, v179);

      sub_1A389F1B4(v175, v177, v179);

      sub_1A388F740(v186, &qword_1EB0FF7D8, &qword_1A3A7B758);
      return;
    }

    if (EnumCaseMultiPayload == 8)
    {
      v412 = *v49;
      v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF8A0, &unk_1A3A7B820);
      v89 = swift_projectBox();
      v90 = *(v89 + *(v88 + 48));
      v349 = &v348 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
      sub_1A38907D0(v89, v46);
      sub_1A3A31590();
      v92 = v91;
      v94 = v93;
      type metadata accessor for ChromeViewModel(0);
      sub_1A3988EAC(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
      v95 = sub_1A3A2F650();
      v97 = v96;
      v98 = v382;
      sub_1A38907D0(v46, v382);
      v99 = v98 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF8A8, &qword_1A3A7C880) + 36);
      *v99 = 2;
      *(v99 + 8) = v92;
      *(v99 + 16) = v94;
      *(v99 + 24) = 1;
      *(v99 + 32) = v95;
      *(v99 + 40) = v97 & 1;
      v100 = sub_1A3A31440();
      v102 = v101;
      v103 = swift_allocObject();
      *(v103 + 16) = v90;
      v104 = (v98 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF8B0, &qword_1A3A7B830) + 36));
      *v104 = sub_1A3986D2C;
      v104[1] = v103;
      v104[2] = v100;
      v104[3] = v102;
      sub_1A3A31590();
      v106 = v105;
      v108 = v107;
      v109 = sub_1A3A2F650();
      v110 = v390;
      v111 = v98 + *(v391 + 36);
      *v111 = 1;
      *(v111 + 8) = v106;
      *(v111 + 16) = v108;
      *(v111 + 24) = 1;
      *(v111 + 32) = v109;
      *(v111 + 40) = v112 & 1;
      sub_1A388F6D8(v98, v110, &qword_1EB0FF7C8, &qword_1A3A7B748);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF8B8, &qword_1A3A7B838);
      sub_1A38A08F8(&qword_1EB0FF8C0, &qword_1EB0FF8B8, &qword_1A3A7B838, MEMORY[0x1E6981F48]);
      sub_1A3986D34();
      v113 = v392;
      sub_1A3A301F0();
      sub_1A388F6D8(v113, v415, &qword_1EB0FF7D8, &qword_1A3A7B758);
      swift_storeEnumTagMultiPayload();
      sub_1A3986F34();
      sub_1A39885D0();
      sub_1A3A301F0();
      sub_1A388F740(v113, &qword_1EB0FF7D8, &qword_1A3A7B758);
      sub_1A388F740(v98, &qword_1EB0FF7C8, &qword_1A3A7B748);
      sub_1A392BCAC(v349);

      return;
    }

    LOBYTE(v429) = 0;
    BYTE1(v447) = 0;
    sub_1A39870D8();
    sub_1A3A301F0();
    v208 = v454[4];
    v209 = v401;
    *(v401 + 64) = v454[3];
    *(v209 + 80) = v208;
    *(v209 + 96) = v454[5];
    v210 = v454[0];
    *v209 = v453;
    *(v209 + 16) = v210;
    v211 = v454[2];
    *(v209 + 32) = v454[1];
    *(v209 + 48) = v211;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF8F0, &qword_1A3A7B848);
    sub_1A398704C();
    sub_1A398712C();
    v212 = v402;
    sub_1A3A301F0();
    sub_1A388F6D8(v212, v410, &qword_1EB0FF890, &qword_1A3A7B810);
    swift_storeEnumTagMultiPayload();
    sub_1A3986FC0();
    sub_1A3987584();
    v213 = v412;
    sub_1A3A301F0();
    sub_1A388F740(v212, &qword_1EB0FF890, &qword_1A3A7B810);
    v214 = &qword_1A3A7B818;
    sub_1A388F6D8(v213, v415, &qword_1EB0FF898, &qword_1A3A7B818);
    swift_storeEnumTagMultiPayload();
    sub_1A3986F34();
    sub_1A39885D0();
    sub_1A3A301F0();
    v215 = v213;
    v216 = &qword_1EB0FF898;
LABEL_40:
    sub_1A388F740(v215, v216, v214);
    return;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload == 3)
      {
        v51 = *v49;
        v52 = *(v49 + 1);
        v53 = *(v49 + 2);
        LODWORD(v402) = v49[24];
        *&v453 = v51;
        *(&v453 + 1) = v52;
        sub_1A389FD78();
        v54 = sub_1A3A308E0();
        v56 = v55;
        v58 = v57;
        v60 = v59;
        v61 = swift_getKeyPath(byte_1A3A7B958);
        v62 = swift_getKeyPath(byte_1A3A7B9B8);
        v63 = v58 & 1;
        LOBYTE(v441) = v58 & 1;
        LOBYTE(v429) = 0;
        v403 = v53;
        sub_1A3A2EA60();
        v64 = sub_1A3A30600();
        sub_1A3A2F520();
        v66 = v65;
        v68 = v67;
        v70 = v69;
        v72 = v71;
        LOBYTE(v453) = 0;
        sub_1A3A31590();
        v74 = v73;
        v76 = v75;
        type metadata accessor for ChromeViewModel(0);
        sub_1A3988EAC(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
        v77 = sub_1A3A2F650();
        LOBYTE(v419) = v78 & 1;
        *&v453 = v54;
        *(&v453 + 1) = v56;
        LOBYTE(v454[0]) = v63;
        *(&v454[0] + 1) = v60;
        *&v454[1] = v61;
        *(&v454[1] + 1) = 1;
        LOBYTE(v454[2]) = 0;
        *(&v454[2] + 1) = v62;
        *&v454[3] = v53;
        BYTE8(v454[3]) = v64;
        *&v454[4] = v66;
        *(&v454[4] + 1) = v68;
        *&v454[5] = v70;
        *(&v454[5] + 1) = v72;
        LOBYTE(v455) = 0;
        DWORD1(v455) = *(&v441 + 3);
        *(&v455 + 1) = v441;
        BYTE8(v455) = v402;
        HIDWORD(v455) = *(&v429 + 3);
        *(&v455 + 9) = v429;
        *&v456 = v74;
        *(&v456 + 1) = v76;
        LOBYTE(v457) = 1;
        DWORD1(v457) = *(&v424 + 3);
        *(&v457 + 1) = v424;
        *(&v457 + 1) = v77;
        LOBYTE(v458) = v78 & 1;
        v79 = v457;
        v80 = v395;
        *(v395 + 128) = v456;
        *(v80 + 144) = v79;
        *(v80 + 160) = v78 & 1;
        v81 = v454[4];
        *(v80 + 64) = v454[3];
        *(v80 + 80) = v81;
        v82 = v455;
        *(v80 + 96) = v454[5];
        *(v80 + 112) = v82;
        v83 = v454[0];
        *v80 = v453;
        *(v80 + 16) = v83;
        v84 = v454[2];
        *(v80 + 32) = v454[1];
        *(v80 + 48) = v84;
        swift_storeEnumTagMultiPayload();
        sub_1A388F6D8(&v453, &v441, &qword_1EB0FF928, &qword_1A3A7B870);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF928, &qword_1A3A7B870);
        sub_1A398769C();
        sub_1A398786C();
        v85 = v398;
        sub_1A3A301F0();
        sub_1A388F6D8(v85, v406, &qword_1EB0FF830, &qword_1A3A7B7B0);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FFA40, &qword_1A3A7B910);
        sub_1A3987610();
        sub_1A3988210();
        v86 = v407;
        sub_1A3A301F0();
        sub_1A388F740(v85, &qword_1EB0FF830, &qword_1A3A7B7B0);
        sub_1A388F6D8(v86, v410, &qword_1EB0FF838, &qword_1A3A7B7B8);
        swift_storeEnumTagMultiPayload();
        sub_1A3986FC0();
        sub_1A3987584();
        v87 = v412;
        sub_1A3A301F0();
        sub_1A388F740(v86, &qword_1EB0FF838, &qword_1A3A7B7B8);
        sub_1A388F6D8(v87, v415, &qword_1EB0FF898, &qword_1A3A7B818);
        swift_storeEnumTagMultiPayload();
        sub_1A3986F34();
        sub_1A39885D0();
        sub_1A3A301F0();
        sub_1A388F740(&v453, &qword_1EB0FF928, &qword_1A3A7B870);

        sub_1A388F740(v87, &qword_1EB0FF898, &qword_1A3A7B818);
      }

      else
      {
        v187 = *v49;
        LODWORD(v400) = v49[8];
        v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FD448, &unk_1A3A75AB0);
        v189 = v188[16];
        LODWORD(v403) = v49[v188[20]];
        v190 = v49[v188[24]];
        LODWORD(v401) = v49[v188[28]];
        v191 = v49[v188[32]];
        LODWORD(v402) = v49[v188[36]];
        v192 = v394;
        (*(v396 + 32))(v394, &v49[v189], v397);
        sub_1A391163C(v192);
        v194 = v193;
        sub_1A3912000(v192);
        v196 = v195;
        if (v190)
        {
          *&v453 = v187;
          v197 = swift_getKeyPath(byte_1A3A7B998);
          sub_1A38907D0(v2, v46);
          v198 = (*(v44 + 80) + 41) & ~*(v44 + 80);
          v199 = swift_allocObject();
          *(v199 + 16) = v401;
          *(v199 + 24) = v196;
          *(v199 + 32) = v194;
          *(v199 + 40) = v191;
          sub_1A3890890(v46, v199 + v198);
          *(v199 + v198 + v45) = v402;
          v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF798, &unk_1A3A7B528);
          v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF9F0, &qword_1A3A7B8E8);
          v202 = sub_1A38A08F8(&qword_1EB0FFA90, &qword_1EB0FF798, &unk_1A3A7B528, MEMORY[0x1E69E6338]);
          v203 = sub_1A3987F60();
          v204 = v358;
          sub_1A3A31200(&v453, v197, sub_1A3988BB4, v199, v200, v201, v202, MEMORY[0x1E69E6168], v203);
          v205 = v359;
          v206 = v369;
          (*(v359 + 16))(v368, v204, v369);
          swift_storeEnumTagMultiPayload();
          sub_1A3987A34();
          sub_1A3987DA0(&qword_1EB0FF9E0, &qword_1EB0FF800, &qword_1A3A7B780, sub_1A3987F60);
          v207 = v366;
          sub_1A3A301F0();
          (*(v205 + 8))(v204, v206);
        }

        else
        {
          v262 = v402;
          v263 = v401;
          *&v453 = v187;
          if (v400)
          {
            v264 = swift_getKeyPath(byte_1A3A7B998);
            sub_1A38907D0(v2, v46);
            v265 = (*(v44 + 80) + 34) & ~*(v44 + 80);
            v266 = swift_allocObject();
            *(v266 + 16) = v194;
            *(v266 + 24) = v196;
            *(v266 + 32) = v191;
            *(v266 + 33) = v262;
            sub_1A3890890(v46, v266 + v265);
            *(v266 + v265 + v45) = v263;
            v267 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF798, &unk_1A3A7B528);
            v268 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF978, &qword_1A3A7B8A8);
            v269 = sub_1A38A08F8(&qword_1EB0FFA90, &qword_1EB0FF798, &unk_1A3A7B528, MEMORY[0x1E69E6338]);
            v270 = sub_1A3987B18();
            v271 = v350;
            sub_1A3A31200(&v453, v264, sub_1A3988B08, v266, v267, v268, v269, MEMORY[0x1E69E6168], v270);
            v272 = v351;
            v273 = v363;
            (*(v351 + 16))(v362, v271, v363);
          }

          else
          {
            v334 = swift_getKeyPath(byte_1A3A7B998);
            sub_1A38907D0(v2, v46);
            v335 = (*(v44 + 80) + 32) & ~*(v44 + 80);
            v336 = swift_allocObject();
            *(v336 + 16) = v194;
            *(v336 + 24) = v196;
            sub_1A3890890(v46, v336 + v335);
            *(v336 + v335 + v45) = v263;
            v337 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF798, &unk_1A3A7B528);
            v338 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF9D0, &qword_1A3A7B8D8);
            v339 = sub_1A38A08F8(&qword_1EB0FFA90, &qword_1EB0FF798, &unk_1A3A7B528, MEMORY[0x1E69E6338]);
            v340 = sub_1A3987E1C();
            v271 = v352;
            sub_1A3A31200(&v453, v334, sub_1A3988A64, v336, v337, v338, v339, MEMORY[0x1E69E6168], v340);
            v272 = v353;
            v273 = v364;
            (*(v353 + 16))(v362, v271, v364);
          }

          swift_storeEnumTagMultiPayload();
          sub_1A3987DA0(&qword_1EB0FF968, &qword_1EB0FF7F0, &qword_1A3A7B770, sub_1A3987B18);
          sub_1A3987DA0(&qword_1EB0FF9C0, &qword_1EB0FF7E0, &qword_1A3A7B760, sub_1A3987E1C);
          v274 = v361;
          sub_1A3A301F0();
          (*(v272 + 8))(v271, v273);
          sub_1A388F6D8(v274, v368, &qword_1EB0FF808, &qword_1A3A7B788);
          swift_storeEnumTagMultiPayload();
          sub_1A3987A34();
          sub_1A3987DA0(&qword_1EB0FF9E0, &qword_1EB0FF800, &qword_1A3A7B780, sub_1A3987F60);
          v207 = v366;
          sub_1A3A301F0();
          sub_1A388F740(v274, &qword_1EB0FF808, &qword_1A3A7B788);
        }

        v341 = v383;
        sub_1A388F670(v207, v383, &qword_1EB0FF810, &qword_1A3A7B790);
        type metadata accessor for ChromeViewModel(0);
        sub_1A3988EAC(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
        v342 = sub_1A3A2F650();
        v343 = v341 + *(v399 + 36);
        *v343 = v403;
        *(v343 + 8) = v342;
        *(v343 + 16) = v344 & 1;
        sub_1A388F6D8(v341, v395, &qword_1EB0FF818, &qword_1A3A7B798);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF928, &qword_1A3A7B870);
        sub_1A398769C();
        sub_1A398786C();
        v345 = v398;
        sub_1A3A301F0();
        sub_1A388F6D8(v345, v406, &qword_1EB0FF830, &qword_1A3A7B7B0);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FFA40, &qword_1A3A7B910);
        sub_1A3987610();
        sub_1A3988210();
        v346 = v407;
        sub_1A3A301F0();
        sub_1A388F740(v345, &qword_1EB0FF830, &qword_1A3A7B7B0);
        sub_1A388F6D8(v346, v410, &qword_1EB0FF838, &qword_1A3A7B7B8);
        swift_storeEnumTagMultiPayload();
        sub_1A3986FC0();
        sub_1A3987584();
        v347 = v412;
        sub_1A3A301F0();
        sub_1A388F740(v346, &qword_1EB0FF838, &qword_1A3A7B7B8);
        sub_1A388F6D8(v347, v415, &qword_1EB0FF898, &qword_1A3A7B818);
        swift_storeEnumTagMultiPayload();
        sub_1A3986F34();
        sub_1A39885D0();
        sub_1A3A301F0();
        sub_1A388F740(v347, &qword_1EB0FF898, &qword_1A3A7B818);
        sub_1A388F740(v341, &qword_1EB0FF818, &qword_1A3A7B798);
        (*(v396 + 8))(v394, v397);
      }

      return;
    }

    v153 = v49[16];
    if (qword_1ED996498 != -1)
    {
      swift_once();
    }

    v154 = qword_1ED99D890;
    sub_1A3A30F10();
    v155 = *MEMORY[0x1E6981698];
    v156 = sub_1A3A30EE0();
    v157 = *(v156 - 8);
    v158 = v373;
    (*(v157 + 104))(v373, v155, v156);
    (*(v157 + 56))(v158, 0, 1, v156);
    v159 = sub_1A3A30ED0();

    sub_1A388F740(v158, &qword_1EB0FF840, &qword_1A3A7B7C0);
    sub_1A3A31590();
    v161 = v160;
    v163 = v162;
    type metadata accessor for ChromeViewModel(0);
    sub_1A3988EAC(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
    v164 = sub_1A3A2F650();
    v165 = v387;
    *v387 = v159;
    *(v165 + 8) = v153;
    v165[2] = v161;
    v165[3] = v163;
    *(v165 + 32) = 1;
    v165[5] = v164;
    *(v165 + 48) = v166 & 1;
    swift_storeEnumTagMultiPayload();
    sub_1A3A2EA60();
    sub_1A3A2EA60();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF910, &qword_1A3A7B868);
    sub_1A39871B8();
    sub_1A39874F8();
    v167 = v389;
    sub_1A3A301F0();
    sub_1A388F6D8(v167, v401, &qword_1EB0FF850, &qword_1A3A7B7D0);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF8F0, &qword_1A3A7B848);
    sub_1A398704C();
    sub_1A398712C();
    v168 = v402;
    sub_1A3A301F0();
    sub_1A388F740(v167, &qword_1EB0FF850, &qword_1A3A7B7D0);
    sub_1A388F6D8(v168, v410, &qword_1EB0FF890, &qword_1A3A7B810);
    swift_storeEnumTagMultiPayload();
    sub_1A3986FC0();
    sub_1A3987584();
    v169 = v412;
    sub_1A3A301F0();
    sub_1A388F740(v168, &qword_1EB0FF890, &qword_1A3A7B810);
    sub_1A388F6D8(v169, v415, &qword_1EB0FF898, &qword_1A3A7B818);
    swift_storeEnumTagMultiPayload();
    sub_1A3986F34();
    sub_1A39885D0();
    sub_1A3A301F0();

LABEL_37:
    sub_1A388F740(v169, &qword_1EB0FF898, &qword_1A3A7B818);
    return;
  }

  if (EnumCaseMultiPayload)
  {
    v218 = *v49;
    v217 = *(v49 + 1);
    v219 = v49[16];
    v220 = *(v49 + 3);
    v221 = *(v49 + 4);
    v406 = v221;
    v407 = v220;
    *v34 = v218;
    *(v34 + 1) = v217;
    v222 = v384;
    (*(v384 + 104))(v34, *MEMORY[0x1E69C1D40], v32);
    if (v220)
    {
      sub_1A3A2EA60();
      sub_1A3A2EA60();
      v223 = v220;
      v224 = sub_1A3A2F200();
      (*(v222 + 8))(v34, v32);
      v225 = v221;
      v226 = v370;
      sub_1A3A31630();
      v227 = v371;
      sub_1A3A31610();
      v228 = (v36 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF900, &qword_1A3A7B858) + 36));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCCA8, &qword_1A3A6D9A0);
      sub_1A3988EAC(&qword_1ED996728, MEMORY[0x1E69821A0], MEMORY[0x1E6982198]);
      v229 = v374;
      sub_1A3A2FC70();
      (*(v375 + 8))(v227, v376);
      (*(v372 + 8))(v226, v229);
      *v228 = swift_getKeyPath(byte_1A3A7B9E8);
      *v36 = v224;
      sub_1A3A31590();
      v231 = v230;
      v233 = v232;
      type metadata accessor for ChromeViewModel(0);
      sub_1A3988EAC(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
      v234 = sub_1A3A2F650();
      v235 = v36 + *(v380 + 36);
      *v235 = v219;
      *(v235 + 1) = v231;
      *(v235 + 2) = v233;
      v235[24] = 1;
      *(v235 + 4) = v234;
      v235[40] = v236 & 1;
      v237 = v36 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF8F8, &qword_1A3A7B850) + 36);
      v238 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCC30, &qword_1A3A6D8B0) + 28);
      sub_1A3A300E0();
      v239 = sub_1A3A300F0();
      (*(*(v239 - 8) + 56))(&v237[v238], 0, 1, v239);
      *v237 = swift_getKeyPath(aX_8);
      v240 = (v36 + *(v377 + 36));
      *v240 = v223;
      v240[1] = v225;
      sub_1A388F6D8(v36, v379, &qword_1EB0FF868, &qword_1A3A7B7E8);
      swift_storeEnumTagMultiPayload();
      sub_1A3987244();
      sub_1A39873B4();
      v241 = v381;
      sub_1A3A301F0();
      v242 = v36;
      v243 = &qword_1EB0FF868;
      v244 = &qword_1A3A7B7E8;
    }

    else
    {
      v316 = sub_1A3A2F200();
      (*(v222 + 8))(v34, v32);
      v317 = v370;
      sub_1A3A31630();
      v318 = v371;
      sub_1A3A31610();
      v319 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF900, &qword_1A3A7B858);
      v320 = v354;
      v321 = v354 + *(v319 + 36);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FCCA8, &qword_1A3A6D9A0);
      sub_1A3988EAC(&qword_1ED996728, MEMORY[0x1E69821A0], MEMORY[0x1E6982198]);
      v322 = v374;
      sub_1A3A2FC70();
      (*(v375 + 8))(v318, v376);
      (*(v372 + 8))(v317, v322);
      *v321 = swift_getKeyPath(byte_1A3A7B9E8);
      *v320 = v316;
      sub_1A3A31590();
      v324 = v323;
      v326 = v325;
      type metadata accessor for ChromeViewModel(0);
      sub_1A3988EAC(&qword_1ED996608, type metadata accessor for ChromeViewModel, &unk_1A3A70668);
      v327 = sub_1A3A2F650();
      v328 = v379;
      v329 = v320 + *(v380 + 36);
      *v329 = v219;
      *(v329 + 1) = v324;
      *(v329 + 2) = v326;
      v329[24] = 1;
      *(v329 + 4) = v327;
      v329[40] = v330 & 1;
      sub_1A388F6D8(v320, v328, &qword_1EB0FF858, &qword_1A3A7B7D8);
      swift_storeEnumTagMultiPayload();
      sub_1A3987244();
      sub_1A39873B4();
      v241 = v381;
      sub_1A3A301F0();
      v242 = v320;
      v243 = &qword_1EB0FF858;
      v244 = &qword_1A3A7B7D8;
    }

    sub_1A388F740(v242, v243, v244);
    v214 = &qword_1A3A7B7F0;
    sub_1A388F6D8(v241, v387, &qword_1EB0FF870, &qword_1A3A7B7F0);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF910, &qword_1A3A7B868);
    sub_1A39871B8();
    sub_1A39874F8();
    v331 = v389;
    sub_1A3A301F0();
    sub_1A388F6D8(v331, v401, &qword_1EB0FF850, &qword_1A3A7B7D0);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF8F0, &qword_1A3A7B848);
    sub_1A398704C();
    sub_1A398712C();
    v332 = v402;
    sub_1A3A301F0();
    sub_1A388F740(v331, &qword_1EB0FF850, &qword_1A3A7B7D0);
    sub_1A388F6D8(v332, v410, &qword_1EB0FF890, &qword_1A3A7B810);
    swift_storeEnumTagMultiPayload();
    sub_1A3986FC0();
    sub_1A3987584();
    v333 = v412;
    sub_1A3A301F0();
    sub_1A388F740(v332, &qword_1EB0FF890, &qword_1A3A7B810);
    sub_1A388F6D8(v333, v415, &qword_1EB0FF898, &qword_1A3A7B818);
    swift_storeEnumTagMultiPayload();
    sub_1A3986F34();
    sub_1A39885D0();
    sub_1A3A301F0();
    sub_1A3988C60(v407, v406);
    sub_1A388F740(v333, &qword_1EB0FF898, &qword_1A3A7B818);
    v215 = v241;
    v216 = &qword_1EB0FF870;
    goto LABEL_40;
  }

  v114 = *(v49 + 1);
  v424 = *v49;
  *v425 = v114;
  *&v425[16] = *(v49 + 2);
  *&v426 = *(v49 + 6);
  if (qword_1ED996480 != -1)
  {
    swift_once();
  }

  v115 = off_1ED997FE0;
  swift_getKeyPath(aP_12);
  *&v453 = v115;
  sub_1A3988EAC(&qword_1ED996650, type metadata accessor for SettingsManager, &unk_1A3A777B8);
  sub_1A3A2F080();

  v116 = v115[2];
  swift_getKeyPath(a0_11);
  *&v453 = v116;
  sub_1A3988EAC(&qword_1ED996658, type metadata accessor for CameraUISettings, &unk_1A3A777E4);
  sub_1A3A2EA60();
  sub_1A3A2F080();

  v117 = *(v116 + 64);

  sub_1A388F6D8(&v424, &v453, &qword_1EB0FFA98, &qword_1A3A7BA98);
  sub_1A3A31AA0();
  v118 = sub_1A3A31A90();
  v119 = swift_allocObject();
  v120 = MEMORY[0x1E69E85E0];
  *(v119 + 16) = v118;
  *(v119 + 24) = v120;
  v121 = v454[0];
  *(v119 + 32) = v453;
  *(v119 + 48) = v121;
  *(v119 + 64) = v454[1];
  *(v119 + 80) = *&v454[2];
  v122 = sub_1A3A31A90();
  v123 = swift_allocObject();
  *(v123 + 16) = v122;
  *(v123 + 24) = v120;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF768, &qword_1A3A7B518);
  sub_1A3A311C0();
  v419 = v453;
  v420[0] = v454[0];
  *(v420 + 9) = *(v454 + 9);
  sub_1A394DDC8(v117, &v419, &v429);
  v445 = v433;
  v446 = v434;
  LOBYTE(v447) = v435;
  v441 = v429;
  v442 = v430;
  v444 = v432;
  v443 = v431;
  LOBYTE(v462[0]) = 1;
  BYTE1(v447) = 1;
  sub_1A394E1B0(&v429, &v453);
  sub_1A39870D8();
  sub_1A3A301F0();
  v124 = v454[4];
  v125 = v401;
  *(v401 + 64) = v454[3];
  *(v125 + 80) = v124;
  *(v125 + 96) = v454[5];
  v126 = v454[0];
  *v125 = v453;
  *(v125 + 16) = v126;
  v127 = v454[2];
  *(v125 + 32) = v454[1];
  *(v125 + 48) = v127;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF8F0, &qword_1A3A7B848);
  sub_1A398704C();
  sub_1A398712C();
  v128 = v402;
  sub_1A3A301F0();
  sub_1A388F6D8(v128, v410, &qword_1EB0FF890, &qword_1A3A7B810);
  swift_storeEnumTagMultiPayload();
  sub_1A3986FC0();
  sub_1A3987584();
  v129 = v412;
  sub_1A3A301F0();
  sub_1A388F740(v128, &qword_1EB0FF890, &qword_1A3A7B810);
  sub_1A388F6D8(v129, v415, &qword_1EB0FF898, &qword_1A3A7B818);
  swift_storeEnumTagMultiPayload();
  sub_1A3986F34();
  sub_1A39885D0();
  sub_1A3A301F0();
  sub_1A3988D3C(&v429);
  sub_1A388F740(v129, &qword_1EB0FF898, &qword_1A3A7B818);
  sub_1A388F740(&v424, &qword_1EB0FFA98, &qword_1A3A7BA98);
}

double sub_1A398491C@<D0>(_OWORD *a1@<X0>, char a4@<W4>, uint64_t a5@<X8>)
{
  v10 = sub_1A3A2F9F0();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v44[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0) - 5];
  v14 = a1[1];
  v51[0] = *a1;
  v15 = a1[2];
  v51[1] = v14;
  v51[2] = v15;
  v16 = sub_1A3A2FF40();
  v48 = 0;
  sub_1A3984C44(v51, v52);
  *&v47[7] = v52[0];
  *&v47[23] = v52[1];
  *&v47[39] = v52[2];
  *&v47[55] = v52[3];
  v17 = v48;
  v18 = sub_1A3A30640();
  sub_1A3A2F520();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v49 = 0;
  v27 = sub_1A3A30650();
  sub_1A3A2F520();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v50 = 0;
  KeyPath = swift_getKeyPath(byte_1A3A7BAB0);
  v37 = MEMORY[0x1E697E7D8];
  if ((a4 & 1) == 0)
  {
    v37 = MEMORY[0x1E697E7D0];
  }

  (*(v11 + 104))(v13, *v37, v10);
  v38 = (a5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF978, &qword_1A3A7B8A8) + 36));
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF9B8, &qword_1A3A7B8D0);
  (*(v11 + 32))(v38 + *(v39 + 28), v13, v10);
  *v38 = KeyPath;
  v40 = *v47;
  *(a5 + 33) = *&v47[16];
  result = *&v47[32];
  v42 = *&v47[48];
  *(a5 + 49) = *&v47[32];
  *(a5 + 65) = v42;
  *a5 = v16;
  *(a5 + 8) = 0x3FF0000000000000;
  *(a5 + 16) = v17;
  *(a5 + 80) = *&v47[63];
  *(a5 + 17) = v40;
  *(a5 + 88) = v18;
  *(a5 + 89) = *v46;
  *(a5 + 92) = *&v46[3];
  *(a5 + 96) = v20;
  *(a5 + 104) = v22;
  *(a5 + 112) = v24;
  *(a5 + 120) = v26;
  *(a5 + 128) = 0;
  *(a5 + 132) = *&v45[3];
  *(a5 + 129) = *v45;
  *(a5 + 136) = v27;
  *(a5 + 140) = *&v44[3];
  *(a5 + 137) = *v44;
  *(a5 + 144) = v29;
  *(a5 + 152) = v31;
  *(a5 + 160) = v33;
  *(a5 + 168) = v35;
  *(a5 + 176) = 0;
  *(a5 + 177) = 257;
  return result;
}

uint64_t sub_1A3984C44@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = sub_1A3A2F1E0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_1A3A2FFD0();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = a1[4];
  v11 = a1[5];
  v13 = HIBYTE(v11) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v13 = v12 & 0xFFFFFFFFFFFFLL;
  }

  if (v13)
  {
    sub_1A3A2EA50();
    sub_1A3A2FFC0();
    sub_1A3A2FFB0();
    *v9 = v12;
    v9[1] = v11;
    (*(v7 + 104))(v9, *MEMORY[0x1E69C1D38], v6);
    sub_1A3A2F200();
    (*(v7 + 8))(v9, v6);
    sub_1A3A2FF90();
  }

  else
  {
    sub_1A3A2FFC0();
  }

  sub_1A3A2FFB0();
  sub_1A3A2FFA0();
  sub_1A3A2FFB0();
  sub_1A3A2FFF0();
  v14 = a1[3];
  v64 = a1[2];
  v65 = v14;
  sub_1A389FD78();
  sub_1A3A2EA50();
  v15 = sub_1A3A308E0();
  v17 = v16;
  LOBYTE(v14) = v18;
  sub_1A3A30740();
  sub_1A391A414(v19);
  v20 = CEKMonospacedStylisticNumeralFontOfSizeWeightAndStyle();
  sub_1A3A307B0();
  v21 = sub_1A3A308A0();
  v60 = v22;
  v61 = v21;
  v59 = v23;
  v62 = v24;

  sub_1A389F1B4(v15, v17, v14 & 1);

  v25 = sub_1A3A308D0();
  v27 = v26;
  v29 = v28;
  sub_1A3A30740();
  sub_1A391A414(v30);
  v31 = CEKMonospacedStylisticNumeralFontOfSizeWeightAndStyle();
  sub_1A3A307B0();
  v32 = sub_1A3A308A0();
  v34 = v33;
  LOBYTE(v15) = v35;

  sub_1A389F1B4(v25, v27, v29 & 1);

  sub_1A3A30DD0();
  v36 = sub_1A3A30E10();

  v64 = v36;
  v37 = sub_1A3A30870();
  v39 = v38;
  LOBYTE(v17) = v40;
  sub_1A389F1B4(v32, v34, v15 & 1);

  v41 = sub_1A3A30850();
  v43 = v42;
  LOBYTE(v32) = v44;
  sub_1A389F1B4(v37, v39, v17 & 1);

  sub_1A3A30D80();
  v45 = sub_1A3A308B0();
  v47 = v46;
  v49 = v48;
  v51 = v50;

  sub_1A389F1B4(v41, v43, v32 & 1);

  v52 = v59;
  v53 = v59 & 1;
  v63 = v59 & 1;
  LOBYTE(v64) = v59 & 1;
  v66 = v49 & 1;
  v55 = v60;
  v54 = v61;
  *a2 = v61;
  *(a2 + 8) = v55;
  *(a2 + 16) = v52 & 1;
  *(a2 + 24) = v62;
  *(a2 + 32) = v45;
  *(a2 + 40) = v47;
  *(a2 + 48) = v49 & 1;
  *(a2 + 56) = v51;
  v56 = v54;
  sub_1A389F1A4(v54, v55, v53);
  sub_1A3A2EA50();
  sub_1A389F1A4(v45, v47, v49 & 1);
  sub_1A3A2EA50();
  sub_1A389F1B4(v45, v47, v49 & 1);

  sub_1A389F1B4(v56, v55, v63);
}

double sub_1A39851A0@<D0>(_OWORD *a1@<X0>, char a2@<W2>, uint64_t a3@<X8>)
{
  v8 = sub_1A3A2F9F0();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[1];
  v32[0] = *a1;
  v32[1] = v12;
  v32[2] = a1[2];
  v13 = sub_1A3A2FF40();
  LOBYTE(v34[0]) = 0;
  sub_1A398540C(v32, v33);
  *(v31 + 7) = v33[0];
  *(&v31[1] + 7) = v33[1];
  *(&v31[2] + 7) = v33[2];
  *(&v31[3] + 7) = v33[3];
  v14 = v34[0];
  v15 = sub_1A3A30600();
  sub_1A3A2F520();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  KeyPath = swift_getKeyPath(byte_1A3A7BAB0);
  v25 = MEMORY[0x1E697E7D8];
  if ((a2 & 1) == 0)
  {
    v25 = MEMORY[0x1E697E7D0];
  }

  (*(v9 + 104))(v11, *v25, v8);
  v26 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF9D0, &qword_1A3A7B8D8) + 36));
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FF9B8, &qword_1A3A7B8D0);
  (*(v9 + 32))(v26 + *(v27 + 28), v11, v8);
  *v26 = KeyPath;
  v28 = v31[0];
  *(a3 + 33) = v31[1];
  result = *&v31[2];
  v30 = v31[3];
  *(a3 + 49) = v31[2];
  *(a3 + 65) = v30;
  *a3 = v13;
  *(a3 + 8) = 0x3FF0000000000000;
  *(a3 + 16) = v14;
  *(a3 + 80) = *(&v31[3] + 15);
  *(a3 + 17) = v28;
  *(a3 + 88) = v15;
  *(a3 + 89) = v34[0];
  *(a3 + 92) = *(v34 + 3);
  *(a3 + 96) = v17;
  *(a3 + 104) = v19;
  *(a3 + 112) = v21;
  *(a3 + 120) = v23;
  *(a3 + 128) = 0;
  *(a3 + 129) = 257;
  return result;
}

uint64_t sub_1A398540C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = sub_1A3A2FFD0();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = a1[5];
  v8 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v8 = a1[4] & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {
    sub_1A3A2EA50();
    sub_1A3A2FFC0();
    sub_1A3A2FFB0();
    sub_1A3A30EB0();
    sub_1A3A2FF90();
  }

  else
  {
    sub_1A3A2FFC0();
  }

  sub_1A3A2FFB0();
  sub_1A3A2FFA0();
  sub_1A3A2FFB0();
  sub_1A3A2FFF0();
  sub_1A389FD78();
  sub_1A3A2EA50();
  v9 = sub_1A3A308E0();
  v11 = v10;
  v13 = v12;
  sub_1A3A30740();
  sub_1A391A414(v14);
  v15 = CEKFontOfSizeWeightStyle();
  sub_1A3A307B0();
  v16 = sub_1A3A308A0();
  v41 = v17;
  v42 = v16;
  v40 = v18;
  v43 = v19;

  sub_1A389F1B4(v9, v11, v13 & 1);

  v20 = sub_1A3A308D0();
  v22 = v21;
  v24 = v23;
  sub_1A3A306C0();
  sub_1A391A414(v25);
  v26 = CEKMonospacedStylisticNumeralFontOfSizeWeightAndStyle();
  sub_1A3A307B0();
  v27 = sub_1A3A308A0();
  v29 = v28;
  v31 = v30;

  sub_1A389F1B4(v20, v22, v24 & 1);

  v32 = sub_1A3A30850();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  sub_1A389F1B4(v27, v29, v31 & 1);

  *a2 = v42;
  *(a2 + 8) = v41;
  *(a2 + 16) = v40 & 1;
  *(a2 + 24) = v43;
  *(a2 + 32) = v32;
  *(a2 + 40) = v34;
  *(a2 + 48) = v36 & 1;
  *(a2 + 56) = v38;
  sub_1A389F1A4(v42, v41, v40 & 1);
  sub_1A3A2EA50();
  sub_1A389F1A4(v32, v34, v36 & 1);
  sub_1A3A2EA50();
  sub_1A389F1B4(v32, v34, v36 & 1);

  sub_1A389F1B4(v42, v41, v40 & 1);
}

void sub_1A3985788(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a9@<X8>)
{
  v11 = a3;
  v12 = a2;
  v14 = a1[1];
  v40[0] = *a1;
  v40[1] = v14;
  v40[2] = a1[2];
  v15 = sub_1A3A300B0();
  sub_1A3985944(v40, v12, v11, v41);
  *&v39[23] = v41[1];
  *&v39[39] = v41[2];
  *&v39[55] = v41[3];
  v39[71] = v42;
  *&v39[7] = v41[0];
  v16 = sub_1A3A30600();
  sub_1A3A2F520();
  v37 = v18;
  v38 = v17;
  v20 = v19;
  v22 = v21;
  v23 = sub_1A3A30630();
  sub_1A3A2F520();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v32 = sub_1A3A30620();
  sub_1A3A2F520();
  *(a9 + 33) = *&v39[16];
  *(a9 + 49) = *&v39[32];
  *(a9 + 65) = *&v39[48];
  *a9 = v15;
  *(a9 + 8) = 0x3FF0000000000000;
  *(a9 + 16) = 0;
  *(a9 + 81) = *&v39[64];
  *(a9 + 17) = *v39;
  *(a9 + 96) = v16;
  *(a9 + 104) = v38;
  *(a9 + 112) = v37;
  *(a9 + 120) = v20;
  *(a9 + 128) = v22;
  *(a9 + 136) = 0;
  *(a9 + 144) = v23;
  *(a9 + 152) = v25;
  *(a9 + 160) = v27;
  *(a9 + 168) = v29;
  *(a9 + 176) = v31;
  *(a9 + 184) = 0;
  *(a9 + 192) = v32;
  *(a9 + 200) = v33;
  *(a9 + 208) = v34;
  *(a9 + 216) = v35;
  *(a9 + 224) = v36;
  *(a9 + 232) = 0;
  *(a9 + 233) = 257;
}

__n128 sub_1A3985944@<Q0>(void *a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v9 = sub_1A3A2FFD0();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v10 = a1[5];
  v11 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v11 = a1[4] & 0xFFFFFFFFFFFFLL;
  }

  if (v11)
  {
    sub_1A3A2EA50();
    sub_1A3A2FFC0();
    sub_1A3A2FFB0();
    sub_1A3A30EB0();
    sub_1A3A2FF90();
  }

  else
  {
    sub_1A3A2FFC0();
  }

  sub_1A3A2FFB0();
  sub_1A3A2FFA0();
  sub_1A3A2FFB0();
  sub_1A3A2FFF0();
  if (a2)
  {
    v12 = sub_1A3A308D0();
    v14 = v13;
    v16 = v15;
    sub_1A3A306C0();
    sub_1A391A414(v17);
    v18 = CEKMonospacedStylisticNumeralFontOfSizeWeightAndStyle();
    sub_1A3A307B0();
    v19 = sub_1A3A308A0();
    v66 = v20;
    v64 = v21;

    sub_1A389F1B4(v12, v14, v16 & 1);

    sub_1A389FD78();
    sub_1A3A2EA50();
    v22 = sub_1A3A308E0();
    v24 = v23;
    v26 = v25;
    sub_1A3A30740();
    sub_1A391A414(v27);
    v28 = CEKMonospacedStylisticNumeralFontOfSizeWeightAndStyle();
    sub_1A3A307B0();
    v29 = sub_1A3A308A0();
    v31 = v30;
    v33 = v32;

    sub_1A389F1B4(v22, v24, v26 & 1);

    sub_1A389F1A4(v19, v66, v64 & 1);
    sub_1A3A2EA50();
    sub_1A389F1A4(v29, v31, v33 & 1);
    sub_1A3A2EA50();
    sub_1A389F1A4(v19, v66, v64 & 1);
    sub_1A3A2EA50();
    sub_1A389F1A4(v29, v31, v33 & 1);
    sub_1A3A2EA50();
    sub_1A389F1B4(v29, v31, v33 & 1);

    sub_1A389F1B4(v19, v66, v64 & 1);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FFAA8, &qword_1A3A7BAA8);
    sub_1A38A08F8(&qword_1EB0FFAB0, &qword_1EB0FFAA8, &qword_1A3A7BAA8, MEMORY[0x1E6981F48]);
    sub_1A3A301F0();
    sub_1A389F1B4(v29, v31, v33 & 1);

    sub_1A389F1B4(v19, v66, v64 & 1);
  }

  else
  {
    sub_1A389FD78();
    sub_1A3A2EA50();
    v34 = a3;
    v35 = sub_1A3A308E0();
    v37 = v36;
    v39 = v38;
    sub_1A3A30740();
    sub_1A391A414(v40);
    v41 = CEKMonospacedStylisticNumeralFontOfSizeWeightAndStyle();
    sub_1A3A307B0();
    v65 = sub_1A3A308A0();
    v63 = v42;
    v62 = v43;

    sub_1A389F1B4(v35, v37, v39 & 1);

    v44 = sub_1A3A308D0();
    v46 = v45;
    v48 = v47;
    if (v34)
    {
      sub_1A3A30740();
    }

    else
    {
      sub_1A3A30720();
    }

    sub_1A391A414(v49);
    v50 = CEKMonospacedStylisticNumeralFontOfSizeWeightAndStyle();
    sub_1A3A307B0();
    v51 = sub_1A3A308A0();
    v53 = v52;
    v55 = v54;

    sub_1A389F1B4(v44, v46, v48 & 1);

    sub_1A3A30D80();
    v56 = sub_1A3A308B0();
    v58 = v57;
    v60 = v59;

    sub_1A389F1B4(v51, v53, v55 & 1);

    sub_1A389F1A4(v65, v63, v62 & 1);
    sub_1A3A2EA50();
    sub_1A389F1A4(v56, v58, v60 & 1);
    sub_1A3A2EA50();
    sub_1A389F1A4(v65, v63, v62 & 1);
    sub_1A3A2EA50();
    sub_1A389F1A4(v56, v58, v60 & 1);
    sub_1A3A2EA50();
    sub_1A389F1B4(v56, v58, v60 & 1);

    sub_1A389F1B4(v65, v63, v62 & 1);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FFAA8, &qword_1A3A7BAA8);
    sub_1A38A08F8(&qword_1EB0FFAB0, &qword_1EB0FFAA8, &qword_1A3A7BAA8, MEMORY[0x1E6981F48]);
    sub_1A3A301F0();
    sub_1A389F1B4(v56, v58, v60 & 1);

    sub_1A389F1B4(v65, v63, v62 & 1);
  }

  *(a4 + 32) = v70;
  *(a4 + 48) = v71;
  *(a4 + 64) = v72;
  result = v69;
  *a4 = v68;
  *(a4 + 16) = v69;
  return result;
}

void sub_1A398612C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v51 = a5;
  v9 = sub_1A3A2FC90();
  v48 = *(v9 - 8);
  v49 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v47 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1A3A2F1E0();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = (&v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v15 = a1;
  v15[1] = a2;
  (*(v12 + 104))(v15, *MEMORY[0x1E69C1D40], v11, v13);
  sub_1A3A2EA50();
  v50 = sub_1A3A2F200();
  (*(v12 + 8))(v15, v11);
  v59 = a3;
  v60 = a4;
  sub_1A389FD78();
  sub_1A3A2EA50();
  v16 = sub_1A3A308E0();
  v18 = v17;
  v20 = v19;
  if (qword_1EB0FC118 != -1)
  {
    swift_once();
  }

  sub_1A3A30740();
  sub_1A391A414(v21);
  v22 = CEKMonospacedStylisticNumeralFontOfSizeWeightAndStyle();
  sub_1A3A307B0();
  v23 = sub_1A3A308A0();
  v25 = v24;
  v27 = v26;

  sub_1A389F1B4(v16, v18, v20 & 1);

  v28 = v47;
  sub_1A3A2FC60();
  v29 = sub_1A3A30890();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  sub_1A389F1B4(v23, v25, v27 & 1);

  (*(v48 + 8))(v28, v49);
  LOBYTE(v23) = sub_1A3A30600();
  sub_1A3A2F520();
  v36 = *v54;
  *(&v56 + 1) = *v54;
  DWORD1(v56) = *&v54[3];
  DWORD1(v57) = *&v53[3];
  v37 = *v53;
  *(&v57 + 1) = *v53;
  *&v55 = v29;
  *(&v55 + 1) = v31;
  LOBYTE(v56) = v33 & 1;
  *(&v56 + 1) = v35;
  LOBYTE(v57) = v23;
  *(&v57 + 1) = v38;
  *&v58[0] = v39;
  *(&v58[0] + 1) = v40;
  *&v58[1] = v41;
  BYTE8(v58[1]) = 0;
  v42 = v51;
  *v51 = v50;
  v43 = v57;
  v44 = v58[0];
  *(v42 + 65) = *(v58 + 9);
  *(v42 + 7) = v44;
  *(v42 + 5) = v43;
  v45 = v55;
  *(v42 + 3) = v56;
  *(v42 + 1) = v45;
  v59 = v29;
  v60 = v31;
  v61 = v33 & 1;
  *&v62[3] = *&v54[3];
  *v62 = v36;
  v63 = v35;
  v64 = v23;
  *&v65[3] = *&v53[3];
  *v65 = v37;
  v66 = v38;
  v67 = v39;
  v68 = v40;
  v69 = v41;
  v70 = 0;
  sub_1A3A2EA60();
  sub_1A388F6D8(&v55, &v52, &qword_1EB0FD3B8, &qword_1A3A7B940);
  sub_1A388F740(&v59, &qword_1EB0FD3B8, &qword_1A3A7B940);
}

__n128 sub_1A3986524@<Q0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v34 = a1;
  v36 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FFAB8, &qword_1A3A7BAE0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v35 = (&v34 - v3);
  v4 = sub_1A3A30090();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3A2F800();
  v9 = v8;
  if (qword_1ED996480 != -1)
  {
    swift_once();
  }

  v10 = off_1ED997FE0;
  swift_getKeyPath(aP_12, v34);
  *&v40[0] = v10;
  sub_1A3988EAC(&qword_1ED996650, type metadata accessor for SettingsManager, &unk_1A3A777B8);
  sub_1A3A2F080();

  v11 = v10[2];
  swift_getKeyPath(byte_1A3A7BAE8);
  *&v40[0] = v11;
  sub_1A3988EAC(&qword_1ED996658, type metadata accessor for CameraUISettings, &unk_1A3A777E4);
  sub_1A3A2EA60();
  sub_1A3A2F080();

  v12 = *(v11 + 72);

  v13 = v9 / v12;
  if (v9 / v12 <= 2.0)
  {
    swift_getKeyPath(aP_12, v13);
    *&v40[0] = v10;
    sub_1A3A2F080();

    v14 = v10[2];
    swift_getKeyPath(byte_1A3A7BAE8);
    *&v40[0] = v14;
    sub_1A3A2EA60();
    sub_1A3A2F080();
  }

  else
  {
    (*(v5 + 104))(v7, *MEMORY[0x1E697F680], v4, v13);
    sub_1A391163C(v7);
    (*(v5 + 8))(v7, v4);
  }

  sub_1A3A30730();
  sub_1A391A414(v15);
  v16 = CEKMonospacedStylisticNumeralFontOfSizeWeightAndStyle();
  [v16 descender];
  v18 = -v17;
  v19 = sub_1A3A31480();
  v20 = v35;
  *v35 = v19;
  *(v20 + 8) = v21;
  v22 = (v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FFAC0, &qword_1A3A7BB10) + 44));
  *v22 = sub_1A3A31480();
  v22[1] = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FFAC8, &qword_1A3A7BB18);
  sub_1A3986A38(v34, v16, v22 + *(v24 + 44), v18);
  sub_1A3A31450();
  sub_1A3A2F780();
  v25 = (v22 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FFAD0, &qword_1A3A7BB20) + 36));
  v26 = v38;
  *v25 = v37;
  v25[1] = v26;
  v25[2] = v39;
  v27 = sub_1A3A31440();
  sub_1A3A2FBF0(v40, 0, 1, 0x7FF0000000000000, 0, v27, v28);

  v29 = v36;
  sub_1A388F670(v20, v36, &qword_1EB0FFAB8, &qword_1A3A7BAE0);
  v30 = v29 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FFAD8, &qword_1A3A7BB28) + 36);
  v31 = v40[5];
  *(v30 + 64) = v40[4];
  *(v30 + 80) = v31;
  *(v30 + 96) = v40[6];
  v32 = v40[1];
  *v30 = v40[0];
  *(v30 + 16) = v32;
  result = v40[3];
  *(v30 + 32) = v40[2];
  *(v30 + 48) = result;
  return result;
}

uint64_t sub_1A3986A38@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v31 = a3;
  v30 = sub_1A3A2FC90();
  v29 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A3A2FFD0();
  MEMORY[0x1EEE9AC00](v9 - 8);
  sub_1A3A2FFC0();
  sub_1A3A2FFB0();
  *&v37[0] = a1;
  sub_1A3A2FF80();
  sub_1A3A2FFB0();
  sub_1A3A2FFF0();
  v10 = sub_1A3A308D0();
  v12 = v11;
  v14 = v13;
  v15 = a2;
  sub_1A3A307B0();
  v16 = sub_1A3A308A0();
  v18 = v17;
  v20 = v19;

  sub_1A389F1B4(v10, v12, v14 & 1);

  sub_1A3A2FC80();
  v21 = sub_1A3A30890();
  v23 = v22;
  LOBYTE(v12) = v24;
  v26 = v25;
  sub_1A389F1B4(v16, v18, v20 & 1);

  (*(v29 + 8))(v8, v30);
  v36 = v12 & 1;
  *&v32 = v21;
  *(&v32 + 1) = v23;
  LOBYTE(v33) = v12 & 1;
  *(&v33 + 1) = v26;
  LOWORD(v34) = 257;
  *(&v34 + 1) = 0;
  v35 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0FFAE0, &qword_1A3A7BB30);
  sub_1A3988D90();
  sub_1A3A30AD0();
  v37[0] = v32;
  v37[1] = v33;
  v37[2] = v34;
  v38 = v35;
  return sub_1A388F740(v37, &qword_1EB0FFAE0, &qword_1A3A7BB30);
}

unint64_t sub_1A3986D34()
{
  result = qword_1EB0FF8C8;
  if (!qword_1EB0FF8C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FF7C8, &qword_1A3A7B748);
    sub_1A3986DC0();
    sub_1A38A8EA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FF8C8);
  }

  return result;
}

unint64_t sub_1A3986DC0()
{
  result = qword_1EB0FF8D0;
  if (!qword_1EB0FF8D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FF8B0, &qword_1A3A7B830);
    sub_1A3986E78();
    sub_1A38A08F8(&qword_1EB0FF8D8, &qword_1EB0FF8E0, &qword_1A3A7B840, MEMORY[0x1E697EC18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FF8D0);
  }

  return result;
}

unint64_t sub_1A3986E78()
{
  result = qword_1ED998A28;
  if (!qword_1ED998A28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FF8A8, &qword_1A3A7C880);
    sub_1A3988EAC(&qword_1ED996630, type metadata accessor for ChromeElementIcon, &unk_1A3A7B6F8);
    sub_1A38A8EA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED998A28);
  }

  return result;
}

unint64_t sub_1A3986F34()
{
  result = qword_1EB0FF8E8;
  if (!qword_1EB0FF8E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FF898, &qword_1A3A7B818);
    sub_1A3986FC0();
    sub_1A3987584();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0FF8E8);
  }

  return result;
}

unint64_t sub_1A3986FC0()
{
  result = qword_1ED998A30;
  if (!qword_1ED998A30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FF890, &qword_1A3A7B810);
    sub_1A398704C();
    sub_1A398712C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED998A30);
  }

  return result;
}

unint64_t sub_1A398704C()
{
  result = qword_1ED998A38;
  if (!qword_1ED998A38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FF8F0, &qword_1A3A7B848);
    sub_1A39870D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED998A38);
  }

  return result;
}

unint64_t sub_1A39870D8()
{
  result = qword_1ED998A40;
  if (!qword_1ED998A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED998A40);
  }

  return result;
}

unint64_t sub_1A398712C()
{
  result = qword_1ED998A48;
  if (!qword_1ED998A48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FF850, &qword_1A3A7B7D0);
    sub_1A39871B8();
    sub_1A39874F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED998A48);
  }

  return result;
}

unint64_t sub_1A39871B8()
{
  result = qword_1ED998A50;
  if (!qword_1ED998A50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0FF870, &qword_1A3A7B7F0);
    sub_1A3987244();
    sub_1A39873B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED998A50);
  }

  return result;
}