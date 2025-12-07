uint64_t sub_1C2F6BE38()
{
  v1[4] = v0;
  v2 = sub_1C2F75C8C();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();
  v3 = sub_1C2F75E3C();
  v1[8] = v3;
  v1[9] = *(v3 - 8);
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = sub_1C2F7688C();
  v1[13] = sub_1C2F7687C();
  v4 = swift_task_alloc();
  v1[14] = v4;
  *v4 = v1;
  v4[1] = sub_1C2F6BFB0;

  return LanguageSelectionViewModel.prepare()();
}

uint64_t sub_1C2F6BFB0()
{

  v1 = sub_1C2F7684C();

  return MEMORY[0x1EEE6DFA0](sub_1C2F6C0EC, v1, v0);
}

void *sub_1C2F6C0EC()
{
  v1 = v0[4];

  swift_getKeyPath();
  v0[2] = v1;
  sub_1C2F6C798(&qword_1EDEBCB18, type metadata accessor for LanguageSelectionViewModel, &protocol conformance descriptor for LanguageSelectionViewModel);
  sub_1C2F75DAC();

  v2 = *(v1 + 16);
  v41 = MEMORY[0x1E69E7CC0];
  if (v2 >> 62)
  {
LABEL_35:
    v3 = sub_1C2F76BBC();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v5 = 0;
    v6 = v0[9];
    v40 = v2 & 0xC000000000000001;
    v39 = v2 & 0xFFFFFFFFFFFFFF8;
    v36 = *MEMORY[0x1E6982BC8];
    v35 = (v6 + 104);
    v34 = *MEMORY[0x1E6982BD8];
    v33 = (v6 + 8);
    v32 = *MEMORY[0x1E6982BD0];
    v37 = v3;
    v38 = v2;
    while (1)
    {
      if (v40)
      {
        v7 = MEMORY[0x1C6929250](v5, v2);
        v8 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
LABEL_19:
          __break(1u);
LABEL_20:
          v16 = v41;
          v4 = MEMORY[0x1E69E7CC0];
          goto LABEL_22;
        }
      }

      else
      {
        if (v5 >= *(v39 + 16))
        {
          __break(1u);
          goto LABEL_35;
        }

        v7 = *(v2 + 8 * v5 + 32);

        v8 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_19;
        }
      }

      swift_getKeyPath();
      v0[3] = v7;
      sub_1C2F6C798(&qword_1EDEBC8D0, type metadata accessor for LanguageSelectionDownloadModel, &protocol conformance descriptor for LanguageSelectionDownloadModel);
      sub_1C2F75DAC();

      v9 = *(v7 + OBJC_IVAR____TtC20CommunicationsUICore30LanguageSelectionDownloadModel__state);
      v10 = v34;
      if (v9 >= 2)
      {
        v10 = v36;
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            v10 = v32;
          }

          else
          {
            v10 = v36;
          }
        }
      }

      v11 = *v35;
      v13 = v0[10];
      v12 = v0[11];
      v14 = v0[8];
      (*v35)(v12, v10, v14);
      v11(v13, v36, v14);
      sub_1C2F6C798(&qword_1EC076FD8, MEMORY[0x1E6982BE0], MEMORY[0x1E6982BE8]);
      LOBYTE(v11) = sub_1C2F7662C();
      v15 = *v33;
      (*v33)(v13, v14);
      v15(v12, v14);
      if (v11)
      {
      }

      else
      {
        sub_1C2F76CEC();
        sub_1C2F76D1C();
        sub_1C2F76D2C();
        sub_1C2F76CFC();
      }

      v2 = v38;
      ++v5;
      if (v8 == v37)
      {
        goto LABEL_20;
      }
    }
  }

  v16 = MEMORY[0x1E69E7CC0];
LABEL_22:

  if (v16 < 0 || (v16 & 0x4000000000000000) != 0)
  {
    v17 = sub_1C2F76BBC();
    if (v17)
    {
      goto LABEL_25;
    }

LABEL_37:

    v21 = MEMORY[0x1E69E7CC0];
    goto LABEL_38;
  }

  v17 = *(v16 + 16);
  if (!v17)
  {
    goto LABEL_37;
  }

LABEL_25:
  result = sub_1C2EF671C(0, v17 & ~(v17 >> 63), 0);
  if (v17 < 0)
  {
    __break(1u);
    return result;
  }

  v19 = 0;
  v20 = v0[6];
  v21 = v4;
  v22 = v16;
  v23 = (v20 + 16);
  do
  {
    v24 = v0[7];
    v25 = v0[5];
    if ((v16 & 0xC000000000000001) != 0)
    {
      v26 = MEMORY[0x1C6929250](v19, v22);
      (*v23)(v24, v26 + OBJC_IVAR____TtC20CommunicationsUICore30LanguageSelectionDownloadModel_locale, v25);
      swift_unknownObjectRelease();
    }

    else
    {
      (*v23)(v24, *(v22 + 8 * v19 + 32) + OBJC_IVAR____TtC20CommunicationsUICore30LanguageSelectionDownloadModel_locale, v25);
    }

    v28 = *(v21 + 16);
    v27 = *(v21 + 24);
    if (v28 >= v27 >> 1)
    {
      sub_1C2EF671C((v27 > 1), v28 + 1, 1);
    }

    v29 = v0[7];
    v30 = v0[5];
    ++v19;
    *(v21 + 16) = v28 + 1;
    (*(v20 + 32))(v21 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v28, v29, v30);
    v22 = v16;
  }

  while (v17 != v19);

LABEL_38:

  v31 = v0[1];

  return v31(v21);
}

uint64_t sub_1C2F6C654(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1C2F06348;

  return sub_1C2F6AAAC(a1, a2, a3);
}

uint64_t sub_1C2F6C708()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C2F06110;

  return sub_1C2F6BE38();
}

uint64_t sub_1C2F6C798(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t PushToTalkChannelState.hashValue.getter()
{
  v1 = *v0;
  sub_1C2F76F9C();
  MEMORY[0x1C6929580](v1);
  return sub_1C2F76FDC();
}

unint64_t sub_1C2F6C86C()
{
  result = qword_1EC076FE8;
  if (!qword_1EC076FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC076FE8);
  }

  return result;
}

id static ContactKeys.poster.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076AF8, &qword_1C2F7D770);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1C2F7D760;
  v1 = *MEMORY[0x1E695C258];
  v2 = *MEMORY[0x1E695C270];
  *(v0 + 32) = *MEMORY[0x1E695C258];
  *(v0 + 40) = v2;
  v3 = *MEMORY[0x1E695C278];
  v4 = *MEMORY[0x1E695C400];
  *(v0 + 48) = *MEMORY[0x1E695C278];
  *(v0 + 56) = v4;
  v5 = *MEMORY[0x1E695C240];
  v6 = *MEMORY[0x1E695C230];
  *(v0 + 64) = *MEMORY[0x1E695C240];
  *(v0 + 72) = v6;
  v7 = *MEMORY[0x1E695C310];
  v8 = *MEMORY[0x1E695C328];
  *(v0 + 80) = *MEMORY[0x1E695C310];
  *(v0 + 88) = v8;
  v9 = *MEMORY[0x1E695C3C8];
  *(v0 + 96) = *MEMORY[0x1E695C3C8];
  v31 = objc_opt_self();
  v10 = v1;
  v11 = v2;
  v12 = v3;
  v13 = v4;
  v14 = v5;
  v15 = v6;
  v16 = v7;
  v17 = v8;
  v18 = v9;
  result = [v31 descriptorForUsedKeys];
  if (result)
  {
    v20 = *MEMORY[0x1E695C420];
    *(v0 + 104) = result;
    *(v0 + 112) = v20;
    v21 = *MEMORY[0x1E695C428];
    v22 = *MEMORY[0x1E695C430];
    *(v0 + 120) = *MEMORY[0x1E695C428];
    *(v0 + 128) = v22;
    v23 = *MEMORY[0x1E695C208];
    v24 = *MEMORY[0x1E695C330];
    *(v0 + 136) = *MEMORY[0x1E695C208];
    *(v0 + 144) = v24;
    v25 = objc_opt_self();
    v26 = v20;
    v27 = v21;
    v28 = v22;
    v29 = v23;
    v30 = v24;
    *(v0 + 152) = [v25 descriptorForRequiredKeys];
    return v0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C2F6CAF8()
{
  result = sub_1C2F766AC();
  qword_1EC076FF0 = result;
  return result;
}

uint64_t sub_1C2F6CB54()
{
  result = sub_1C2F766AC();
  qword_1EC076FF8 = result;
  return result;
}

uint64_t sub_1C2F6CBB0()
{
  result = sub_1C2F766AC();
  qword_1EC077000 = result;
  return result;
}

uint64_t sub_1C2F6CC0C()
{
  result = sub_1C2F766AC();
  qword_1EC077008 = result;
  return result;
}

id sub_1C2F6CC68(void *a1, void **a2, uint64_t a3)
{
  if (*a1 == -1)
  {
    v4 = *a2;
  }

  else
  {
    swift_once();
    v4 = *a2;
  }

  return v4;
}

double static CallScreeningStatus.screened.getter@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_1C2F7D7C0;
  return result;
}

BOOL CallScreeningStatus.isBaseCase(_:)(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(v1 + 8);
  v4 = v3 == 3;
  v5 = v3 == 2;
  v6 = (v3 - 4) < 0xFFFFFFFFFFFFFFFDLL;
  v7 = v3 == 1;
  if (v2 != 1)
  {
    v7 = v6;
  }

  if (v2 == 2)
  {
    v7 = v5;
  }

  if (v2 == 3)
  {
    return v4;
  }

  else
  {
    return v7;
  }
}

uint64_t CallScreeningService.statusUpdatesForCall(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v6 = [objc_opt_self() defaultCenter];
  v7 = sub_1C2F76A6C();

  sub_1C2F09348(a1, v13);
  sub_1C2F6E878(v3, v11);
  v8 = swift_allocObject();
  sub_1C2EF6918(v13, v8 + 16);
  v9 = v11[1];
  *(v8 + 56) = v11[0];
  *(v8 + 72) = v9;
  *(v8 + 88) = v12;
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC077010, &qword_1C2F7D7F0);
  a2[4] = sub_1C2F6E960();
  __swift_allocate_boxed_opaque_existential_0(a2);
  *&v13[0] = v7;
  sub_1C2F76A5C();
  sub_1C2F6E9C4();
  return sub_1C2F76EDC();
}

uint64_t sub_1C2F6CE78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a3;
  v4[10] = a4;
  v4[7] = a1;
  v4[8] = a2;
  sub_1C2F7688C();
  v4[11] = sub_1C2F7687C();
  v6 = sub_1C2F7684C();

  return MEMORY[0x1EEE6DFA0](sub_1C2F6CF14, v6, v5);
}

uint64_t sub_1C2F6CF14()
{
  v16 = v0;

  sub_1C2F7599C();
  if (!v0[5])
  {
    sub_1C2F26504((v0 + 2));
    goto LABEL_10;
  }

  sub_1C2F317E8();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    *v0[7] = xmmword_1C2F7D7D0;
    goto LABEL_13;
  }

  v1 = v0[9];
  v2 = v0[6];
  v3 = [v2 callUUID];
  v4 = sub_1C2F766CC();
  v6 = v5;

  v7 = v1[3];
  v8 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v7);
  if (v4 == (*(v8 + 32))(v7, v8) && v6 == v9)
  {
  }

  else
  {
    v11 = sub_1C2F76EFC();

    if ((v11 & 1) == 0)
    {

      goto LABEL_10;
    }
  }

  v12 = v0[7];
  CallScreeningService.screeningStatusForCall(_:)(v0[9], &v15);

  *v12 = v15;
LABEL_13:
  v13 = v0[1];

  return v13();
}

void CallScreeningService.screeningStatusForCall(_:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v6 = sub_1C2F75AEC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v2[3];
  v11 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v10);
  (*(v11 + 8))(&v66, v10, v11);
  v12 = v67;
  v63 = a2;
  if (v67 == 4)
  {
LABEL_11:
    v25 = [objc_opt_self() sharedInstance];
    v26 = a1[3];
    v27 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v26);
    (*(v27 + 64))(v26, v27);
    sub_1C2F75A9C();
    v28 = *(v7 + 8);
    v28(v9, v6);
    v29 = sub_1C2F766AC();

    v30 = [v25 callWithUniqueProxyIdentifier_];

    if (!v30)
    {
      v62 = v28;
      if (qword_1EDEBC5B8 != -1)
      {
        swift_once();
      }

      v34 = sub_1C2F761FC();
      __swift_project_value_buffer(v34, qword_1EDEBDA78);
      sub_1C2F09348(a1, &v66);
      v35 = sub_1C2F761DC();
      v36 = sub_1C2F769DC();
      v37 = os_log_type_enabled(v35, v36);
      v20 = v63;
      if (v37)
      {
        v38 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        v64[0] = v61;
        *v38 = 136315394;
        *(v38 + 4) = sub_1C2EFAB28(0xD00000000000001ALL, 0x80000001C2F805E0, v64);
        *(v38 + 12) = 2080;
        v39 = v20;
        v40 = v68;
        v41 = v69;
        __swift_project_boxed_opaque_existential_1(&v66, v68);
        v42 = *(v41 + 64);
        v43 = v41;
        v20 = v39;
        v42(v40, v43);
        v44 = sub_1C2F75A9C();
        v46 = v45;
        v62(v9, v6);
        __swift_destroy_boxed_opaque_existential_1Tm(&v66);
        v47 = sub_1C2EFAB28(v44, v46, v64);

        *(v38 + 14) = v47;
        _os_log_impl(&dword_1C2EF2000, v35, v36, "%s Did not find call with identifier %s", v38, 0x16u);
        v48 = v61;
        swift_arrayDestroy();
        MEMORY[0x1C6929E80](v48, -1, -1);
        MEMORY[0x1C6929E80](v38, -1, -1);
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_1Tm(&v66);
      }

      goto LABEL_40;
    }

    if ([v30 status] != 1)
    {

      v13 = 0;
      v12 = 1;
      v20 = v63;
      goto LABEL_41;
    }

    v31 = [v30 isScreening];
    v20 = v63;
    if (v31)
    {
      v32 = [v30 smartHoldingSession];
      if (v32)
      {
        v33 = v32;

LABEL_40:
        v13 = 0;
        v12 = 1;
        goto LABEL_41;
      }

      v49 = [v30 receptionistState];
      if (v49 <= 7)
      {
        if (((1 << v49) & 0x38) != 0)
        {
          v51 = v3[3];
          v52 = v3[4];
          __swift_project_boxed_opaque_existential_1(v3, v51);
          v53 = (*(v52 + 16))(v51, v52);
          if (v54)
          {
            v13 = v53;
            v12 = v54;
          }

          else
          {
            v56 = [v30 receptionistSession];
            if (v56 && (v57 = v56, v58 = [v56 summary], v57, v58))
            {
              v13 = sub_1C2F766CC();
              v12 = v59;
            }

            else
            {

              v13 = 0;
              v12 = 0;
            }
          }

          goto LABEL_41;
        }

        if (((1 << v49) & 6) != 0)
        {

          v13 = 0;
          v12 = 3;
          goto LABEL_41;
        }

        if (((1 << v49) & 0xC0) != 0)
        {

          v13 = 0;
          v12 = 2;
          goto LABEL_41;
        }
      }

      if (!v49)
      {
        v55 = [v30 isScreening];

        v13 = 0;
        if (v55)
        {
          v12 = 2;
        }

        else
        {
          v12 = 1;
        }

        goto LABEL_41;
      }
    }

    goto LABEL_40;
  }

  v13 = v66;
  v14 = a1[3];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v14);
  (*(v15 + 56))(&v66, v14, v15);
  if (v66 != 2)
  {
    sub_1C2F6EA1C(v13, v12);
    goto LABEL_11;
  }

  if (qword_1EDEBC5B8 != -1)
  {
    swift_once();
  }

  v16 = sub_1C2F761FC();
  __swift_project_value_buffer(v16, qword_1EDEBDA78);
  sub_1C2F6EA44(v13, v12);
  v17 = sub_1C2F761DC();
  v18 = sub_1C2F769DC();
  sub_1C2F6EA1C(v13, v12);
  v19 = os_log_type_enabled(v17, v18);
  v20 = v63;
  if (v19)
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v65 = v22;
    *v21 = 136315138;
    switch(v12)
    {
      case 3:
        sub_1C2F6EA1C(v13, 3);
        v23 = 0xE900000000000067;
        v24 = 0x6E696E6565726353;
        break;
      case 2:
        sub_1C2F6EA1C(v13, 2);
        v23 = 0xEE006C69616D6563;
        v24 = 0x696F56206576694CLL;
        break;
      case 1:
        sub_1C2F6EA1C(v13, 1);
        v23 = 0xED0000676E696E65;
        v24 = 0x6572635320746F4ELL;
        break;
      default:
        v66 = 0;
        v67 = 0xE000000000000000;
        sub_1C2F6EA5C(v13, v12);
        MEMORY[0x1C6928D30](0x64656E6565726353, 0xEA00000000002820);
        v64[0] = v13;
        v64[1] = v12;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC077028, &qword_1C2F7D7F8);
        sub_1C2F76D3C();
        MEMORY[0x1C6928D30](41, 0xE100000000000000);
        sub_1C2F6EA1C(v13, v12);
        v24 = v66;
        v23 = v67;
        break;
    }

    v50 = sub_1C2EFAB28(v24, v23, &v65);

    *(v21 + 4) = v50;
    _os_log_impl(&dword_1C2EF2000, v17, v18, "Overriding call screening status with %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
    MEMORY[0x1C6929E80](v22, -1, -1);
    MEMORY[0x1C6929E80](v21, -1, -1);
  }

LABEL_41:
  *v20 = v13;
  v20[1] = v12;
}

id CallScreeningService.canScreen(_:)(void *a1)
{
  v2 = sub_1C2F75AEC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() sharedInstance];
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  (*(v8 + 64))(v7, v8);
  sub_1C2F75A9C();
  v9 = *(v3 + 8);
  v9(v5, v2);
  v10 = sub_1C2F766AC();

  v11 = [v6 callWithUniqueProxyIdentifier_];

  if (v11)
  {
    v12 = [v11 isEligibleForScreening];
  }

  else
  {
    if (qword_1EDEBC5B8 != -1)
    {
      swift_once();
    }

    v13 = sub_1C2F761FC();
    __swift_project_value_buffer(v13, qword_1EDEBDA78);
    sub_1C2F09348(a1, v29);
    v14 = sub_1C2F761DC();
    v15 = sub_1C2F769DC();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v28 = v27;
      *v16 = 136315394;
      *(v16 + 4) = sub_1C2EFAB28(0x65657263536E6163, 0xED0000293A5F286ELL, &v28);
      *(v16 + 12) = 2080;
      v17 = v9;
      v18 = v30;
      v19 = v31;
      __swift_project_boxed_opaque_existential_1(v29, v30);
      (*(v19 + 64))(v18, v19);
      v20 = sub_1C2F75A9C();
      v22 = v21;
      v17(v5, v2);
      __swift_destroy_boxed_opaque_existential_1Tm(v29);
      v23 = sub_1C2EFAB28(v20, v22, &v28);

      *(v16 + 14) = v23;
      _os_log_impl(&dword_1C2EF2000, v14, v15, "%s Did not find call with identifier %s", v16, 0x16u);
      v24 = v27;
      swift_arrayDestroy();
      MEMORY[0x1C6929E80](v24, -1, -1);
      MEMORY[0x1C6929E80](v16, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm(v29);
    }

    return 0;
  }

  return v12;
}

id CallScreeningService.token(for:)(void *a1)
{
  v2 = sub_1C2F75AEC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() sharedInstance];
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  (*(v8 + 64))(v7, v8);
  sub_1C2F75A9C();
  v9 = *(v3 + 8);
  v9(v5, v2);
  v10 = sub_1C2F766AC();

  v11 = [v6 callWithUniqueProxyIdentifier_];

  if (v11)
  {
    v12 = [v11 answeringMachineStreamToken];
  }

  else
  {
    if (qword_1EDEBC5B8 != -1)
    {
      swift_once();
    }

    v13 = sub_1C2F761FC();
    __swift_project_value_buffer(v13, qword_1EDEBDA78);
    sub_1C2F09348(a1, v29);
    v14 = sub_1C2F761DC();
    v15 = sub_1C2F769DC();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v28 = v27;
      *v16 = 136315394;
      *(v16 + 4) = sub_1C2EFAB28(0x6F66286E656B6F74, 0xEB00000000293A72, &v28);
      *(v16 + 12) = 2080;
      v17 = v9;
      v18 = v30;
      v19 = v31;
      __swift_project_boxed_opaque_existential_1(v29, v30);
      (*(v19 + 64))(v18, v19);
      v20 = sub_1C2F75A9C();
      v22 = v21;
      v17(v5, v2);
      __swift_destroy_boxed_opaque_existential_1Tm(v29);
      v23 = sub_1C2EFAB28(v20, v22, &v28);

      *(v16 + 14) = v23;
      _os_log_impl(&dword_1C2EF2000, v14, v15, "%s Did not find call with identifier %s", v16, 0x16u);
      v24 = v27;
      swift_arrayDestroy();
      MEMORY[0x1C6929E80](v24, -1, -1);
      MEMORY[0x1C6929E80](v16, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm(v29);
    }

    return 0;
  }

  return v12;
}

id CallScreeningService.screeningAnnouncmentFinished(for:)(void *a1)
{
  v2 = sub_1C2F75AEC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() sharedInstance];
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  (*(v8 + 64))(v7, v8);
  sub_1C2F75A9C();
  v9 = *(v3 + 8);
  v9(v5, v2);
  v10 = sub_1C2F766AC();

  v11 = [v6 callWithUniqueProxyIdentifier_];

  if (v11)
  {
    v12 = [v11 screeningAnnouncementHasFinished];
  }

  else
  {
    if (qword_1EDEBC5B8 != -1)
    {
      swift_once();
    }

    v13 = sub_1C2F761FC();
    __swift_project_value_buffer(v13, qword_1EDEBDA78);
    sub_1C2F09348(a1, v29);
    v14 = sub_1C2F761DC();
    v15 = sub_1C2F769DC();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v28 = v27;
      *v16 = 136315394;
      *(v16 + 4) = sub_1C2EFAB28(0xD000000000000022, 0x80000001C2F80600, &v28);
      *(v16 + 12) = 2080;
      v17 = v9;
      v18 = v30;
      v19 = v31;
      __swift_project_boxed_opaque_existential_1(v29, v30);
      (*(v19 + 64))(v18, v19);
      v20 = sub_1C2F75A9C();
      v22 = v21;
      v17(v5, v2);
      __swift_destroy_boxed_opaque_existential_1Tm(v29);
      v23 = sub_1C2EFAB28(v20, v22, &v28);

      *(v16 + 14) = v23;
      _os_log_impl(&dword_1C2EF2000, v14, v15, "%s Did not find call with identifier %s", v16, 0x16u);
      v24 = v27;
      swift_arrayDestroy();
      MEMORY[0x1C6929E80](v24, -1, -1);
      MEMORY[0x1C6929E80](v16, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm(v29);
    }

    return 0;
  }

  return v12;
}

id CallScreeningService.screeningCallDueToUserinteraction(call:)(void *a1)
{
  v2 = sub_1C2F75AEC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() sharedInstance];
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  (*(v8 + 64))(v7, v8);
  sub_1C2F75A9C();
  v9 = *(v3 + 8);
  v9(v5, v2);
  v10 = sub_1C2F766AC();

  v11 = [v6 callWithUniqueProxyIdentifier_];

  if (v11)
  {
    v12 = [v11 isScreeningDueToUserInteraction];
  }

  else
  {
    if (qword_1EDEBC5B8 != -1)
    {
      swift_once();
    }

    v13 = sub_1C2F761FC();
    __swift_project_value_buffer(v13, qword_1EDEBDA78);
    sub_1C2F09348(a1, v29);
    v14 = sub_1C2F761DC();
    v15 = sub_1C2F769DC();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v28 = v27;
      *v16 = 136315394;
      *(v16 + 4) = sub_1C2EFAB28(0xD000000000000028, 0x80000001C2F80630, &v28);
      *(v16 + 12) = 2080;
      v17 = v9;
      v18 = v30;
      v19 = v31;
      __swift_project_boxed_opaque_existential_1(v29, v30);
      (*(v19 + 64))(v18, v19);
      v20 = sub_1C2F75A9C();
      v22 = v21;
      v17(v5, v2);
      __swift_destroy_boxed_opaque_existential_1Tm(v29);
      v23 = sub_1C2EFAB28(v20, v22, &v28);

      *(v16 + 14) = v23;
      _os_log_impl(&dword_1C2EF2000, v14, v15, "%s Did not find call with identifier %s", v16, 0x16u);
      v24 = v27;
      swift_arrayDestroy();
      MEMORY[0x1C6929E80](v24, -1, -1);
      MEMORY[0x1C6929E80](v16, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm(v29);
    }

    return 0;
  }

  return v12;
}

uint64_t _s20CommunicationsUICore19CallScreeningStatusO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  if (v3 == 3)
  {
    if (v5 != 3)
    {
      goto LABEL_12;
    }

    sub_1C2F6EA2C(*a1, 3);
    v6 = v4;
    v7 = 3;
    goto LABEL_10;
  }

  if (v3 == 2)
  {
    if (v5 != 2)
    {
      goto LABEL_12;
    }

    sub_1C2F6EA2C(*a1, 2);
    v6 = v4;
    v7 = 2;
LABEL_10:
    sub_1C2F6EA2C(v6, v7);
    return 1;
  }

  if (v3 != 1)
  {
    if ((v5 - 1) < 3)
    {
      goto LABEL_12;
    }

    if (v3)
    {
      if (!v5)
      {
        sub_1C2F6EA44(*a2, 0);
        v8 = v4;
        v9 = 0;
        goto LABEL_13;
      }

      if (v2 == v4 && v3 == v5)
      {
        sub_1C2F6EA44(*a1, v3);
        sub_1C2F6EA44(v2, v3);
        sub_1C2F6EA2C(v2, v3);
        v6 = v2;
        v7 = v3;
        goto LABEL_10;
      }

      v11 = sub_1C2F76EFC();
      sub_1C2F6EA44(v4, v5);
      sub_1C2F6EA44(v2, v3);
      sub_1C2F6EA2C(v2, v3);
      sub_1C2F6EA2C(v4, v5);
      if ((v11 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {

      sub_1C2F6EA44(v4, v5);
      sub_1C2F6EA44(v2, 0);
      sub_1C2F6EA2C(v2, 0);
      sub_1C2F6EA2C(v4, v5);
      if (v5)
      {
        goto LABEL_14;
      }
    }

    return 1;
  }

  if (v5 != 1)
  {
LABEL_12:
    v8 = *a2;
    v9 = a2[1];
LABEL_13:
    sub_1C2F6EA44(v8, v9);
    sub_1C2F6EA44(v2, v3);
    sub_1C2F6EA2C(v2, v3);
LABEL_14:
    sub_1C2F6EA2C(v4, v5);
    return 0;
  }

  sub_1C2F6EA2C(*a1, 1);
  sub_1C2F6EA2C(v4, 1);
  return v5;
}

uint64_t sub_1C2F6E8B0(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1C2F06348;

  return sub_1C2F6CE78(a1, a2, v2 + 16, v2 + 56);
}

unint64_t sub_1C2F6E960()
{
  result = qword_1EC077018;
  if (!qword_1EC077018)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC077010, &qword_1C2F7D7F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC077018);
  }

  return result;
}

unint64_t sub_1C2F6E9C4()
{
  result = qword_1EC077020;
  if (!qword_1EC077020)
  {
    sub_1C2F76A5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC077020);
  }

  return result;
}

uint64_t sub_1C2F6EA1C(uint64_t result, uint64_t a2)
{
  if (a2 != 4)
  {
    return sub_1C2F6EA2C(result, a2);
  }

  return result;
}

uint64_t sub_1C2F6EA2C(uint64_t a1, uint64_t a2)
{
  if ((a2 - 1) >= 3)
  {
  }

  return result;
}

uint64_t sub_1C2F6EA44(uint64_t a1, uint64_t a2)
{
  if ((a2 - 1) >= 3)
  {
  }

  return result;
}

uint64_t sub_1C2F6EA5C(uint64_t a1, uint64_t a2)
{
  if (a2 != 4)
  {
    return sub_1C2F6EA44(a1, a2);
  }

  return a1;
}

uint64_t sub_1C2F6EA6C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 16))
  {
    return (*a1 + 2147483644);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  v5 = v4 + 1;
  v6 = v4 - 2;
  if (v5 >= 4)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C2F6EACC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 3;
    }
  }

  return result;
}

uint64_t sub_1C2F6EB74(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C2F6EBBC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t CallScreeningTranscriptsService.UserInputState.description.getter()
{
  v1 = 0x64656C6261736964;
  if (*v0 != 1)
  {
    v1 = 0x6E6564646968;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x64656C62616E65;
  }
}

uint64_t CallScreeningTranscriptsService.UserInputState.hashValue.getter()
{
  v1 = *v0;
  sub_1C2F76F9C();
  MEMORY[0x1C6929580](v1);
  return sub_1C2F76FDC();
}

uint64_t sub_1C2F6ECF8()
{
  v1 = 0x64656C6261736964;
  if (*v0 != 1)
  {
    v1 = 0x6E6564646968;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x64656C62616E65;
  }
}

uint64_t CallScreeningTranscriptsService.__allocating_init(_:captionsProvider:initialMessage:liveReply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v37 = a7;
  v35 = a5;
  v36 = a6;
  v33 = a2;
  v34 = a4;
  v32 = a1;
  v8 = sub_1C2F75C8C();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = sub_1C2F7669C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v32 - v14;
  v16 = [objc_opt_self() defaultCenter];
  if (qword_1EDEBDA50 != -1)
  {
    swift_once();
  }

  v17 = off_1EDEBDA58;
  v18 = swift_allocObject();
  *(v18 + 32) = MEMORY[0x1E69E7CC0];
  *(v18 + 40) = 0;
  *(v18 + 56) = 0;
  *(v18 + 64) = 0;
  *(v18 + 48) = 0;
  sub_1C2F7663C();
  (*(v10 + 16))(v13, v15, v9);
  type metadata accessor for StringDummy();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v20 = [objc_opt_self() bundleForClass_];
  sub_1C2F75BFC();
  v21 = sub_1C2F766EC();
  v23 = v22;
  (*(v10 + 8))(v15, v9);
  *(v18 + 72) = v21;
  *(v18 + 80) = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC077048, &qword_1C2F7D9A0);
  swift_allocObject();
  v24 = sub_1C2F7626C();
  *(v18 + 160) = 0;
  v25 = v33;
  *(v18 + 16) = v32;
  *(v18 + 24) = v25;
  v26 = v34;
  v27 = v35;
  *(v18 + 88) = a3;
  *(v18 + 96) = v26;
  v28 = v36;
  *(v18 + 112) = v27;
  *(v18 + 120) = v28;
  *(v18 + 104) = v37 & 1;
  v29 = MEMORY[0x1E69E7CC0];
  *(v18 + 144) = v16;
  *(v18 + 152) = v29;
  *(v18 + 128) = v24;
  *(v18 + 136) = v17;
  swift_unknownObjectRetain();
  v30 = v16;

  sub_1C2F6F074();
  sub_1C2F6F2EC();
  swift_unknownObjectRelease();

  return v18;
}

void sub_1C2F6F074()
{
  v1 = *(v0 + 120);
  if (v1)
  {
    v2 = v0;
    v3 = *(v0 + 112);
    v4 = HIBYTE(v1) & 0xF;
    if ((v1 & 0x2000000000000000) == 0)
    {
      v4 = v3 & 0xFFFFFFFFFFFFLL;
    }

    if (v4)
    {
      v5 = sub_1C2F71D60();
      v7 = v6;
      v8 = qword_1EC075CE0;

      if (v8 != -1)
      {
        swift_once();
      }

      v9 = sub_1C2F761FC();
      __swift_project_value_buffer(v9, qword_1EC077030);

      v10 = sub_1C2F761DC();
      v11 = sub_1C2F769EC();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v23[0] = swift_slowAlloc();
        v13 = v7;
        v14 = v5;
        v15 = v23[0];
        *v12 = 136380675;
        v16 = sub_1C2EFAB28(v3, v1, v23);

        *(v12 + 4) = v16;
        _os_log_impl(&dword_1C2EF2000, v10, v11, "Create initial script: %{private}s", v12, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v15);
        v17 = v15;
        v5 = v14;
        v7 = v13;
        MEMORY[0x1C6929E80](v17, -1, -1);
        MEMORY[0x1C6929E80](v12, -1, -1);
      }

      else
      {
      }

      swift_beginAccess();
      v18 = *(v2 + 32);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v2 + 32) = v18;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v18 = sub_1C2F1CBB4(0, *(v18 + 2) + 1, 1, v18);
        *(v2 + 32) = v18;
      }

      v21 = *(v18 + 2);
      v20 = *(v18 + 3);
      if (v21 >= v20 >> 1)
      {
        v18 = sub_1C2F1CBB4((v20 > 1), v21 + 1, 1, v18);
      }

      *(v18 + 2) = v21 + 1;
      v22 = &v18[72 * v21];
      *(v22 + 4) = 0xD000000000000019;
      *(v22 + 5) = 0x80000001C2F80890;
      *(v22 + 6) = 0;
      *(v22 + 7) = 0;
      *(v22 + 8) = v5;
      *(v22 + 9) = v7;
      *(v22 + 10) = v3;
      *(v22 + 11) = v1;
      *(v22 + 48) = 1;
      v22[98] = 0;
      *(v2 + 32) = v18;
      swift_endAccess();
    }
  }
}

uint64_t sub_1C2F6F2EC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC077118, &qword_1C2F7DBF8);
  v54 = *(v1 - 8);
  v55 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v53 = &v41 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC077120, &unk_1C2F7DC00);
  v4 = *(v3 - 8);
  v59 = v3;
  v60 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v58 = &v41 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0770F0, &qword_1C2F7DBE0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v41 - v7;
  v9 = sub_1C2F76A7C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0770F8, &unk_1C2F7DBE8);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v41 - v15;
  v46 = *(v0 + 144);
  sub_1C2F76A8C();
  v68 = objc_opt_self();
  v17 = [v68 mainRunLoop];
  v71 = v17;
  v67 = sub_1C2F76ACC();
  v18 = *(v67 - 8);
  v19 = *(v18 + 56);
  v64 = v18 + 56;
  v65 = v19;
  v19(v8, 1, 1, v67);
  v69 = sub_1C2EF5A14(0, &qword_1EC077100, 0x1E695DFD0);
  v20 = sub_1C2EF73CC(&qword_1EDEBC500, MEMORY[0x1E6969F20], MEMORY[0x1E6969F18]);
  v66 = sub_1C2F74628();
  v45 = v20;
  sub_1C2F762EC();
  sub_1C2F0A8D8(v8, &qword_1EC0770F0, &qword_1C2F7DBE0);

  v21 = *(v10 + 8);
  v47 = v12;
  v50 = v9;
  v49 = v10 + 8;
  v44 = v21;
  v21(v12, v9);
  swift_allocObject();
  v22 = v56;
  swift_weakInit();
  v57 = MEMORY[0x1E695BE98];
  v43 = sub_1C2EF7414(&qword_1EC077110, &qword_1EC0770F8, &unk_1C2F7DBE8, MEMORY[0x1E695BE98]);
  sub_1C2F7631C();

  v23 = *(v14 + 8);
  v48 = v16;
  v52 = v13;
  v51 = v14 + 8;
  v42 = v23;
  v23(v16, v13);
  swift_beginAccess();
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076F60, &unk_1C2F78BE0);
  v62 = sub_1C2EF7414(&unk_1EDEBC530, &unk_1EC076F60, &unk_1C2F78BE0, MEMORY[0x1E69E6348]);
  sub_1C2F7621C();
  swift_endAccess();

  v24 = *(v22 + 96);
  ObjectType = swift_getObjectType();
  v71 = (*(v24 + 16))(ObjectType, v24);
  v25 = [v68 mainRunLoop];
  v70 = v25;
  v65(v8, 1, 1, v67);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC077128, &qword_1C2F7DC10);
  sub_1C2EF7414(&qword_1EC077130, &qword_1EC077128, &qword_1C2F7DC10, MEMORY[0x1E695BED8]);
  v26 = v58;
  sub_1C2F762EC();
  v27 = v8;
  sub_1C2F0A8D8(v8, &qword_1EC0770F0, &qword_1C2F7DBE0);

  swift_allocObject();
  swift_weakInit();
  sub_1C2EF7414(&qword_1EC077138, &qword_1EC077120, &unk_1C2F7DC00, v57);
  v28 = v59;
  sub_1C2F7631C();

  v29 = v26;
  v30 = v24;
  (*(v60 + 8))(v29, v28);
  swift_beginAccess();
  sub_1C2F7621C();
  swift_endAccess();

  result = (*(v24 + 40))(ObjectType, v24);
  if ((*(v22 + 104) & 1) == 0)
  {
    v32 = v47;
    sub_1C2F76A8C();
    v33 = [v68 mainRunLoop];
    v71 = v33;
    v34 = v27;
    v65(v27, 1, 1, v67);
    v35 = v48;
    v36 = v50;
    sub_1C2F762EC();
    sub_1C2F0A8D8(v34, &qword_1EC0770F0, &qword_1C2F7DBE0);

    v44(v32, v36);
    swift_allocObject();
    swift_weakInit();
    v37 = v52;
    sub_1C2F7631C();

    v42(v35, v37);
    swift_beginAccess();
    sub_1C2F7621C();
    swift_endAccess();

    v71 = (*(v30 + 24))(ObjectType, v30);
    v38 = [v68 mainRunLoop];
    v70 = v38;
    v65(v34, 1, 1, v67);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC077140, &qword_1C2F7DC18);
    sub_1C2EF7414(&qword_1EC077148, &qword_1EC077140, &qword_1C2F7DC18, MEMORY[0x1E695BED8]);
    v39 = v53;
    sub_1C2F762EC();
    sub_1C2F0A8D8(v34, &qword_1EC0770F0, &qword_1C2F7DBE0);

    swift_allocObject();
    swift_weakInit();
    sub_1C2EF7414(&qword_1EC077150, &qword_1EC077118, &qword_1C2F7DBF8, MEMORY[0x1E695BE98]);
    v40 = v55;
    sub_1C2F7631C();

    (*(v54 + 8))(v39, v40);
    swift_beginAccess();
    sub_1C2F7621C();
    swift_endAccess();
  }

  return result;
}

uint64_t CallScreeningTranscriptsService.callUUID.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t CallScreeningTranscriptsService.transcriptsPublisher.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC077050, &qword_1C2F7D9A8);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v7 - v3;
  v7[1] = *(v0 + 128);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC077048, &qword_1C2F7D9A0);
  sub_1C2EF7414(&qword_1EC077058, &qword_1EC077048, &qword_1C2F7D9A0, MEMORY[0x1E695BF88]);
  sub_1C2F6FFBC();
  sub_1C2F7630C();
  sub_1C2EF7414(&qword_1EC077068, &qword_1EC077050, &qword_1C2F7D9A8, MEMORY[0x1E695BD38]);
  v5 = sub_1C2F762AC();
  (*(v2 + 8))(v4, v1);
  return v5;
}

unint64_t sub_1C2F6FFBC()
{
  result = qword_1EC077060;
  if (!qword_1EC077060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC077060);
  }

  return result;
}

uint64_t CallScreeningTranscriptsService.callerNamePublisher.getter()
{
  v1 = *(v0 + 96);
  ObjectType = swift_getObjectType();
  return (*(v1 + 32))(ObjectType, v1);
}

BOOL CallScreeningTranscriptsService.isReceptionist.getter()
{
  if (*(v0 + 104))
  {
    return 0;
  }

  v1 = *(*(v0 + 136) + 16);
  v2 = sub_1C2F766AC();
  v3 = [v1 callWithUniqueProxyIdentifier_];

  if (!v3)
  {
    return 0;
  }

  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v4 = v3;
  v5 = [v4 uniqueProxyIdentifier];

  Strong = swift_unknownObjectWeakLoadStrong();
  MEMORY[0x1C6929F80](&v9);
  if (!Strong)
  {
    return 0;
  }

  v7 = [Strong receptionistState];

  return v7 != 0;
}

uint64_t CallScreeningTranscriptsService.liveReplyTitle.getter()
{
  v1 = sub_1C2F75C8C();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = sub_1C2F7669C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v44 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC077070, &unk_1C2F7D9B0);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v44 - v13;
  v15 = *(*(v0 + 136) + 16);
  v16 = sub_1C2F766AC();
  v17 = [v15 callWithUniqueProxyIdentifier_];

  if (v17)
  {
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakAssign();
    v18 = v17;
    v19 = [v18 uniqueProxyIdentifier];

    Strong = swift_unknownObjectWeakLoadStrong();
    MEMORY[0x1C6929F80](&v45);
    if (Strong)
    {
      v21 = [Strong contactIdentifiers];
      if (v21)
      {
        v22 = v21;
        v23 = sub_1C2F767EC();

        v24 = *(v23 + 16);

        if (v24)
        {
          v25 = [Strong displayContext];
          if (v25)
          {
            v26 = v25;
            v27 = [v25 personNameComponents];

            if (v27)
            {
              sub_1C2F75A0C();

              v44[0] = 0;
            }

            else
            {
              v44[0] = 1;
            }

            v32 = sub_1C2F75A1C();
            v33 = *(v32 - 8);
            (*(v33 + 56))(v12, v44[0], 1, v32);
            sub_1C2F73F28(v12, v14);
            v34 = v33;
            if ((*(v33 + 48))(v14, 1, v32) == 1)
            {
              sub_1C2F0A8D8(v14, &qword_1EC077070, &unk_1C2F7D9B0);
            }

            else
            {
              *v44 = sub_1C2F759FC();
              v36 = v35;
              (*(v34 + 8))(v14, v32);
              if (v36)
              {
                v37 = v36;
                v38 = *v44;
                if (sub_1C2F7674C() > 0)
                {
LABEL_18:
                  sub_1C2F7663C();
                  (*(v3 + 16))(v6, v8, v2);
                  type metadata accessor for StringDummy();
                  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
                  v42 = [objc_opt_self() bundleForClass_];
                  sub_1C2F75BFC();
                  sub_1C2F766EC();
                  (*(v3 + 8))(v8, v2);
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076E30, &qword_1C2F7CE88);
                  v43 = swift_allocObject();
                  *(v43 + 16) = xmmword_1C2F78B90;
                  *(v43 + 56) = MEMORY[0x1E69E6158];
                  *(v43 + 64) = sub_1C2F5D2EC();
                  *(v43 + 32) = v38;
                  *(v43 + 40) = v37;
                  v30 = sub_1C2F766DC();

                  return v30;
                }
              }
            }
          }

          v39 = [Strong displayName];
          v38 = sub_1C2F766CC();
          v37 = v40;

          goto LABEL_18;
        }
      }
    }
  }

  sub_1C2F7663C();
  (*(v3 + 16))(v6, v8, v2);
  type metadata accessor for StringDummy();
  v28 = swift_getObjCClassFromMetadata();
  v29 = [objc_opt_self() bundleForClass_];
  sub_1C2F75BFC();
  v30 = sub_1C2F766EC();
  (*(v3 + 8))(v8, v2);
  return v30;
}

uint64_t CallScreeningTranscriptsService.userInputStatePublisher.getter()
{
  v1 = v0;
  v2 = sub_1C2F76A7C();
  v51 = *(v2 - 8);
  v52 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC077078, &qword_1C2F7D9C0);
  v53 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v6 = &v50 - v5;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC077080, &qword_1C2F7D9C8);
  v54 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v8 = &v50 - v7;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC077088, &qword_1C2F7D9D0);
  v59 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v57 = &v50 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC077090, &qword_1C2F7D9D8);
  v62 = *(v10 - 8);
  v63 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v58 = &v50 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC077098, &qword_1C2F7D9E0);
  v64 = *(v12 - 8);
  v65 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v60 = &v50 - v13;
  if (qword_1EC075CE0 != -1)
  {
    swift_once();
  }

  v14 = sub_1C2F761FC();
  __swift_project_value_buffer(v14, qword_1EC077030);
  v15 = sub_1C2F761DC();
  v16 = sub_1C2F769EC();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_1C2EF2000, v15, v16, "CallScreeningTranscriptsService creating userInputStatePublisher", v17, 2u);
    MEMORY[0x1C6929E80](v17, -1, -1);
  }

  if (qword_1EDEBDA50 != -1)
  {
    swift_once();
  }

  v18 = *(off_1EDEBDA58 + 2);
  v19 = sub_1C2F766AC();
  v20 = [v18 callWithUniqueProxyIdentifier_];

  if (v20)
  {
    type metadata accessor for CallFacade();
    v21 = swift_allocObject();
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakAssign();
    v22 = v20;
    v23 = [v22 uniqueProxyIdentifier];
    v24 = sub_1C2F766CC();
    v26 = v25;

    *(v21 + 24) = v24;
    *(v21 + 32) = v26;
  }

  else
  {
    v21 = 0;
  }

  v27 = *(v1 + 104);
  v28 = swift_allocObject();
  *(v28 + 16) = v27;
  if (v21 && (Strong = swift_unknownObjectWeakLoadStrong()) != 0)
  {
    v30 = Strong;
    v31 = [Strong receptionistState];

    v32 = 0;
    v33 = v31;
  }

  else
  {
    v33 = 0;
    v32 = 1;
  }

  v67 = v32;
  sub_1C2F710B8(v33 | (v32 << 32), v27, &v68);
  v34 = v68;
  sub_1C2F76A8C();
  type metadata accessor for TUCallReceptionistState(0);
  sub_1C2EF73CC(&qword_1EDEBC500, MEMORY[0x1E6969F20], MEMORY[0x1E6969F18]);
  v35 = v52;
  sub_1C2F762BC();
  (*(v51 + 8))(v4, v35);
  sub_1C2EF7414(&qword_1EC0770A0, &qword_1EC077078, &qword_1C2F7D9C0, MEMORY[0x1E695BC80]);
  sub_1C2EF73CC(&qword_1EC0770A8, type metadata accessor for TUCallReceptionistState, &unk_1C2F78F54);
  v36 = v55;
  sub_1C2F7630C();
  (*(v53 + 8))(v6, v36);
  v37 = MEMORY[0x1E695BD38];
  sub_1C2EF7414(&qword_1EC0770B0, &qword_1EC077080, &qword_1C2F7D9C8, MEMORY[0x1E695BD38]);
  v38 = v56;
  v39 = sub_1C2F762AC();
  (*(v54 + 8))(v8, v38);
  v66 = v39;
  v40 = swift_allocObject();
  *(v40 + 16) = sub_1C2F73F98;
  *(v40 + 24) = v28;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0770B8, &qword_1C2F7D9E8);
  sub_1C2EF7414(&qword_1EC0770C0, &qword_1EC0770B8, &qword_1C2F7D9E8, MEMORY[0x1E695BED8]);
  v41 = v57;
  sub_1C2F762CC();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0770C8, &qword_1C2F7D9F0);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_1C2F78B90;
  *(v42 + 32) = v34;
  sub_1C2EF7414(&qword_1EC0770D0, &qword_1EC077088, &qword_1C2F7D9D0, MEMORY[0x1E695BD60]);
  v43 = v58;
  v44 = v61;
  sub_1C2F762DC();

  (*(v59 + 8))(v41, v44);
  sub_1C2EF7414(&qword_1EC0770D8, &qword_1EC077090, &qword_1C2F7D9D8, MEMORY[0x1E695BCA8]);
  sub_1C2F73FF4();
  v45 = v60;
  v46 = v63;
  sub_1C2F7630C();
  (*(v62 + 8))(v43, v46);
  sub_1C2EF7414(&qword_1EC0770E8, &qword_1EC077098, &qword_1C2F7D9E0, v37);
  v47 = v65;
  v48 = sub_1C2F762AC();

  (*(v64 + 8))(v45, v47);
  return v48;
}

void sub_1C2F710B8(uint64_t a1@<X0>, char a2@<W1>, _BYTE *a3@<X8>)
{
  if ((a1 & 0x100000000) != 0)
  {
    LOBYTE(v5) = 2;
  }

  else
  {
    if ((a1 - 3) >= 2)
    {
      if (a2)
      {
        v6 = 0;
      }

      else
      {
        v6 = 2;
      }

      if (a1 == 1)
      {
        v5 = v6;
      }

      else
      {
        v5 = 2;
      }
    }

    else
    {
      v5 = 0;
    }

    if (qword_1EC075CE0 != -1)
    {
      swift_once();
    }

    v7 = sub_1C2F761FC();
    __swift_project_value_buffer(v7, qword_1EC077030);
    v8 = sub_1C2F761DC();
    v9 = sub_1C2F769EC();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v20 = v11;
      *v10 = 136315394;
      if (v5)
      {
        v12 = 0x6E6564646968;
      }

      else
      {
        v12 = 0x64656C62616E65;
      }

      if (v5)
      {
        v13 = 0xE600000000000000;
      }

      else
      {
        v13 = 0xE700000000000000;
      }

      v14 = sub_1C2EFAB28(v12, v13, &v20);

      *(v10 + 4) = v14;
      *(v10 + 12) = 2080;
      v15 = [objc_opt_self() stringForReceptionistState_];
      v16 = sub_1C2F766CC();
      v18 = v17;

      v19 = sub_1C2EFAB28(v16, v18, &v20);

      *(v10 + 14) = v19;
      _os_log_impl(&dword_1C2EF2000, v8, v9, "CallScreeningTranscriptsService publishing %s for %s", v10, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1C6929E80](v11, -1, -1);
      MEMORY[0x1C6929E80](v10, -1, -1);
    }
  }

  *a3 = v5;
}

Swift::Void __swiftcall CallScreeningTranscriptsService.startObserveTranscripts()()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  v2 = *(v1 + 16);

  if (v2)
  {
    v3 = 0;
    v4 = v1 + 32;
    while (v3 < *(v1 + 16))
    {
      v13[0] = *v4;
      v5 = *(v4 + 16);
      v6 = *(v4 + 32);
      v7 = *(v4 + 48);
      *&v14[15] = *(v4 + 63);
      v13[2] = v6;
      *v14 = v7;
      v13[1] = v5;
      ++v3;
      v11 = v6;
      v12[0] = v7;
      *(v12 + 15) = *&v14[15];
      v9 = v13[0];
      v10 = v5;
      sub_1C2F74048(v13, v8);
      sub_1C2F7625C();
      sub_1C2F740A4(v13);
      v4 += 72;
      if (v2 == v3)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:

    *(v0 + 160) = 1;
  }
}

Swift::Void __swiftcall CallScreeningTranscriptsService.startReceptionistReply()()
{
  v1 = v0;
  if (qword_1EDEBDA50 != -1)
  {
    swift_once();
  }

  v2 = *(off_1EDEBDA58 + 2);
  v3 = sub_1C2F766AC();
  v4 = [v2 callWithUniqueProxyIdentifier_];

  if (v4 && (type metadata accessor for CallFacade(), v5 = swift_allocObject(), swift_unknownObjectWeakInit(), swift_unknownObjectWeakAssign(), v6 = v4, v7 = [v6 uniqueProxyIdentifier], v8 = sub_1C2F766CC(), v10 = v9, v6, v6, v7, *(v5 + 24) = v8, *(v5 + 32) = v10, (Strong = swift_unknownObjectWeakLoadStrong()) != 0) && (v12 = Strong, v13 = objc_msgSend(Strong, sel_screeningAnnouncementHasFinished), v12, (v13 & 1) == 0))
  {
    if (qword_1EC075CE0 != -1)
    {
      swift_once();
    }

    v14 = sub_1C2F761FC();
    __swift_project_value_buffer(v14, qword_1EC077030);
    v15 = sub_1C2F761DC();
    v16 = sub_1C2F769EC();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1C2EF2000, v15, v16, "Delay startReceptionistReply", v17, 2u);
      MEMORY[0x1C6929E80](v17, -1, -1);
    }

    *(v1 + 40) = 1;
    sub_1C2F716C4();
  }

  else
  {
    if (qword_1EC075CE0 != -1)
    {
      swift_once();
    }

    v18 = sub_1C2F761FC();
    __swift_project_value_buffer(v18, qword_1EC077030);
    v19 = sub_1C2F761DC();
    v20 = sub_1C2F769EC();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1C2EF2000, v19, v20, "startReceptionistReply", v21, 2u);
      MEMORY[0x1C6929E80](v21, -1, -1);
    }

    v22 = *(*(v1 + 136) + 16);
    [v22 startReceptionistReply];
  }
}

uint64_t sub_1C2F716C4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0770F0, &qword_1C2F7DBE0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v17 - v2;
  v4 = sub_1C2F76A7C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0770F8, &unk_1C2F7DBE8);
  v9 = *(v8 - 8);
  result = MEMORY[0x1EEE9AC00](v8);
  v12 = v17 - v11;
  if (!*(v0 + 64))
  {
    v17[0] = v0;
    sub_1C2F76A8C();
    v13 = [objc_opt_self() mainRunLoop];
    v17[1] = v13;
    v14 = sub_1C2F76ACC();
    (*(*(v14 - 8) + 56))(v3, 1, 1, v14);
    sub_1C2EF5A14(0, &qword_1EC077100, 0x1E695DFD0);
    sub_1C2EF73CC(&qword_1EDEBC500, MEMORY[0x1E6969F20], MEMORY[0x1E6969F18]);
    sub_1C2F74628();
    sub_1C2F762EC();
    sub_1C2F0A8D8(v3, &qword_1EC0770F0, &qword_1C2F7DBE0);

    (*(v5 + 8))(v7, v4);
    swift_allocObject();
    v15 = v17[0];
    swift_weakInit();
    sub_1C2EF7414(&qword_1EC077110, &qword_1EC0770F8, &unk_1C2F7DBE8, MEMORY[0x1E695BE98]);
    v16 = sub_1C2F7631C();

    (*(v9 + 8))(v12, v8);
    *(v15 + 64) = v16;
  }

  return result;
}

Swift::Void __swiftcall CallScreeningTranscriptsService.sendReceptionistReply(_:)(Swift::String a1)
{
  v2 = v1;
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  if (qword_1EDEBDA50 != -1)
  {
    swift_once();
  }

  v5 = *(off_1EDEBDA58 + 2);
  v6 = sub_1C2F766AC();
  v7 = [v5 callWithUniqueProxyIdentifier_];

  if (v7 && (type metadata accessor for CallFacade(), v8 = swift_allocObject(), swift_unknownObjectWeakInit(), swift_unknownObjectWeakAssign(), v9 = v7, v10 = [v9 uniqueProxyIdentifier], v11 = sub_1C2F766CC(), v13 = v12, v9, v9, v10, *(v8 + 24) = v11, *(v8 + 32) = v13, (Strong = swift_unknownObjectWeakLoadStrong()) != 0) && (v15 = Strong, v16 = objc_msgSend(Strong, sel_screeningAnnouncementHasFinished), v15, (v16 & 1) == 0))
  {
    if (qword_1EC075CE0 != -1)
    {
      swift_once();
    }

    v17 = sub_1C2F761FC();
    __swift_project_value_buffer(v17, qword_1EC077030);
    v18 = sub_1C2F761DC();
    v19 = sub_1C2F769EC();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1C2EF2000, v18, v19, "Delay sendReceptionistReply", v20, 2u);
      MEMORY[0x1C6929E80](v20, -1, -1);
    }

    v2[6] = countAndFlagsBits;
    v2[7] = object;

    sub_1C2F716C4();
  }

  else
  {
    if (qword_1EC075CE0 != -1)
    {
      swift_once();
    }

    v21 = sub_1C2F761FC();
    __swift_project_value_buffer(v21, qword_1EC077030);
    v22 = sub_1C2F761DC();
    v23 = sub_1C2F769EC();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_1C2EF2000, v22, v23, "sendReceptionistReply", v24, 2u);
      MEMORY[0x1C6929E80](v24, -1, -1);
    }

    v25 = *(v2[17] + 16);
    v26 = sub_1C2F766AC();
    [v25 sendReceptionistReply_];
  }
}

uint64_t sub_1C2F71D60()
{
  v0 = sub_1C2F75C8C();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1C2F7669C();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v30[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v30[-v6];
  if (qword_1EDEBDA50 != -1)
  {
    swift_once();
  }

  v8 = *(off_1EDEBDA58 + 2);
  v9 = sub_1C2F766AC();
  v10 = [v8 callWithUniqueProxyIdentifier_];

  if (!v10 || (swift_unknownObjectWeakInit(), swift_unknownObjectWeakAssign(), v11 = v10, v12 = [v11 uniqueProxyIdentifier], v11, v11, v12, Strong = swift_unknownObjectWeakLoadStrong(), MEMORY[0x1C6929F80](&v31), !Strong))
  {
    sub_1C2F7663C();
    (*(v2 + 16))(v5, v7, v1);
    type metadata accessor for StringDummy();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v26 = [objc_opt_self() bundleForClass_];
    sub_1C2F75BFC();
    v24 = sub_1C2F766EC();
LABEL_9:
    (*(v2 + 8))(v7, v1);
    return v24;
  }

  v14 = [Strong provider];
  v15 = [v14 isTelephonyProvider];

  if (v15 && ([Strong isHostedOnCurrentDevice] & 1) == 0)
  {
    sub_1C2F7663C();
    (*(v2 + 16))(v5, v7, v1);
    type metadata accessor for StringDummy();
    v28 = swift_getObjCClassFromMetadata();
    v29 = [objc_opt_self() bundleForClass_];
    sub_1C2F75BFC();
    v24 = sub_1C2F766EC();

    goto LABEL_9;
  }

  sub_1C2F7663C();
  (*(v2 + 16))(v5, v7, v1);
  type metadata accessor for StringDummy();
  v16 = swift_getObjCClassFromMetadata();
  v17 = [objc_opt_self() bundleForClass_];
  sub_1C2F75BFC();
  sub_1C2F766EC();
  (*(v2 + 8))(v7, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076E30, &qword_1C2F7CE88);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1C2F78B90;
  v19 = [objc_opt_self() currentDevice];
  v20 = [v19 name];

  v21 = sub_1C2F766CC();
  v23 = v22;

  *(v18 + 56) = MEMORY[0x1E69E6158];
  *(v18 + 64) = sub_1C2F5D2EC();
  *(v18 + 32) = v21;
  *(v18 + 40) = v23;
  v24 = sub_1C2F766DC();

  return v24;
}

void sub_1C2F722A4(uint64_t a1, uint64_t a2)
{
  sub_1C2F7599C();
  if (!*(&v43 + 1))
  {
    sub_1C2F0A8D8(&v42, &qword_1EC075D38, &qword_1C2F78BB0);
    return;
  }

  sub_1C2EF5A14(0, &qword_1EC0760C0, 0x1E69D8A40);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  v2 = v38;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {

    return;
  }

  v4 = Strong;
  if (*(Strong + 104))
  {
    swift_beginAccess();
    v5 = *(v4 + 32);
    v6 = *(v5 + 16);
    if (v6)
    {
      v7 = v5 + 72 * v6;
      v9 = *(v7 + 8);
      v8 = *(v7 + 16);
    }

    else
    {
      v9 = 0;
      v8 = 0;
    }

    v10 = [v38 lastReceptionistMessage];
    v11 = sub_1C2F766CC();
    v13 = v12;

    if (v8)
    {
      if (v9 == v11 && v8 == v13)
      {

        return;
      }

      v14 = sub_1C2F76EFC();

      if (v14)
      {

        return;
      }
    }

    else
    {
    }
  }

  v15 = [v38 receptionistState];
  if (v15 == 1 && (*(v4 + 104) & 1) == 0)
  {
    v16 = sub_1C2F71D60();
    v36 = v17;
    v37 = v16;
  }

  else
  {
    v36 = 0;
    v37 = 0;
  }

  v18 = [v38 lastReceptionistMessage];
  v19 = sub_1C2F766CC();
  v21 = v20;

  v22 = [v38 uniqueProxyIdentifier];
  v23 = sub_1C2F766CC();
  v25 = v24;

  *&v42 = v23;
  *(&v42 + 1) = v25;
  MEMORY[0x1C6928D30](95, 0xE100000000000000);
  LODWORD(v38) = v15;
  v26 = sub_1C2F76EEC();
  MEMORY[0x1C6928D30](v26);

  MEMORY[0x1C6928D30](0x617473697373615FLL, 0xEA0000000000746ELL);
  v27 = v42;
  if (qword_1EC075CE0 != -1)
  {
    swift_once();
  }

  v28 = sub_1C2F761FC();
  __swift_project_value_buffer(v28, qword_1EC077030);

  v29 = sub_1C2F761DC();
  v30 = sub_1C2F769EC();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v35 = v15;
    v32 = v19;
    v33 = swift_slowAlloc();
    *&v42 = v33;
    *v31 = 136380931;
    *(v31 + 4) = sub_1C2EFAB28(v32, v21, &v42);
    *(v31 + 12) = 2080;
    *(v31 + 14) = sub_1C2EFAB28(v27, *(&v27 + 1), &v42);
    _os_log_impl(&dword_1C2EF2000, v29, v30, "Receive assistent message: %{private}s %s", v31, 0x16u);
    swift_arrayDestroy();
    v34 = v33;
    v19 = v32;
    v15 = v35;
    MEMORY[0x1C6929E80](v34, -1, -1);
    MEMORY[0x1C6929E80](v31, -1, -1);
  }

  v38 = v27;
  v39 = 0uLL;
  *&v40 = v37;
  *(&v40 + 1) = v36;
  *v41 = v19;
  *&v41[8] = v21;
  v41[16] = 1;
  v41[17] = v15 == 3;
  v41[18] = 0;
  sub_1C2F72734(&v38);

  v44 = v40;
  v45[0] = *v41;
  *(v45 + 15) = *&v41[15];
  v42 = v38;
  v43 = v39;
  sub_1C2F740A4(&v42);
}

uint64_t sub_1C2F72734(__int128 *a1)
{
  v2 = a1[3];
  v17 = a1[2];
  v18[0] = v2;
  *(v18 + 15) = *(a1 + 63);
  v3 = a1[1];
  v15 = *a1;
  v16 = v3;
  swift_beginAccess();
  v4 = *(v1 + 32);
  sub_1C2F74048(&v15, v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 32) = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_1C2F1CBB4(0, *(v4 + 2) + 1, 1, v4);
    *(v1 + 32) = v4;
  }

  v7 = *(v4 + 2);
  v6 = *(v4 + 3);
  if (v7 >= v6 >> 1)
  {
    v4 = sub_1C2F1CBB4((v6 > 1), v7 + 1, 1, v4);
  }

  *(v4 + 2) = v7 + 1;
  v8 = &v4[72 * v7];
  *(v8 + 2) = v15;
  v9 = v16;
  v10 = v17;
  v11 = v18[0];
  *(v8 + 95) = *(v18 + 15);
  *(v8 + 4) = v10;
  *(v8 + 5) = v11;
  *(v8 + 3) = v9;
  *(v1 + 32) = v4;
  result = swift_endAccess();
  if (*(v1 + 160) == 1)
  {
    v13[2] = v17;
    *v14 = v18[0];
    *&v14[15] = *(v18 + 15);
    v13[0] = v15;
    v13[1] = v16;
    return sub_1C2F7625C();
  }

  return result;
}

uint64_t sub_1C2F72874(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v14 = *(a1 + 32);
  v15[0] = v2;
  *(v15 + 15) = *(a1 + 63);
  v3 = *(a1 + 16);
  v12 = *a1;
  v13 = v3;
  if (qword_1EC075CE0 != -1)
  {
    swift_once();
  }

  v4 = sub_1C2F761FC();
  __swift_project_value_buffer(v4, qword_1EC077030);
  sub_1C2F74048(&v12, v10);
  v5 = sub_1C2F761DC();
  v6 = sub_1C2F769EC();
  sub_1C2F740A4(&v12);
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *&v10[0] = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_1C2EFAB28(v12, *(&v12 + 1), v10);
    _os_log_impl(&dword_1C2EF2000, v5, v6, "Receive transcripts: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x1C6929E80](v8, -1, -1);
    MEMORY[0x1C6929E80](v7, -1, -1);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10[2] = v14;
    v11[0] = v15[0];
    *(v11 + 15) = *(v15 + 15);
    v10[0] = v12;
    v10[1] = v13;
    sub_1C2F72734(v10);
  }

  return result;
}

void sub_1C2F72A28(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C2F75C8C();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = sub_1C2F7669C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v32[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v32[-v8];
  sub_1C2F7599C();
  if (*(&v40 + 1))
  {
    sub_1C2EF5A14(0, &qword_1EC0760C0, 0x1E69D8A40);
    if (swift_dynamicCast())
    {
      v10 = *&v37[0];
      v11 = [*&v37[0] receptionistSession];
      if (v11 && (v12 = v11, v13 = [v11 summary], v12, v13))
      {
        v14 = sub_1C2F766CC();
        v16 = v15;

        swift_beginAccess();
        Strong = swift_weakLoadStrong();
        if (Strong)
        {
          v36 = v14;
          v35 = Strong;
          v18 = [v10 receptionistState];
          if (qword_1EC075CE0 != -1)
          {
            swift_once();
          }

          v19 = sub_1C2F761FC();
          __swift_project_value_buffer(v19, qword_1EC077030);

          v20 = sub_1C2F761DC();
          v21 = sub_1C2F769EC();

          if (os_log_type_enabled(v20, v21))
          {
            v22 = swift_slowAlloc();
            v34 = v16;
            v23 = v22;
            v24 = swift_slowAlloc();
            v33 = v18;
            v25 = v24;
            *&v39 = v24;
            *v23 = 136380931;
            *(v23 + 4) = sub_1C2EFAB28(v36, v34, &v39);
            *(v23 + 12) = 1024;
            *(v23 + 14) = v33;
            _os_log_impl(&dword_1C2EF2000, v20, v21, "Receive summary message: %{private}s %d", v23, 0x12u);
            __swift_destroy_boxed_opaque_existential_1Tm(v25);
            MEMORY[0x1C6929E80](v25, -1, -1);
            v26 = v23;
            v16 = v34;
            MEMORY[0x1C6929E80](v26, -1, -1);
          }

          sub_1C2F7663C();
          (*(v4 + 16))(v7, v9, v3);
          type metadata accessor for StringDummy();
          ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
          v28 = [objc_opt_self() bundleForClass_];
          sub_1C2F75BFC();
          v29 = sub_1C2F766EC();
          v31 = v30;
          (*(v4 + 8))(v9, v3);
          *&v39 = 0xD000000000000013;
          *(&v39 + 1) = 0x80000001C2F80810;
          v40 = 0uLL;
          *&v41 = v29;
          *(&v41 + 1) = v31;
          *v42 = v36;
          *&v42[8] = v16;
          *&v42[16] = 257;
          v42[18] = 1;
          v37[2] = v41;
          *v38 = *v42;
          *&v38[15] = *&v42[15];
          v37[0] = v39;
          v37[1] = 0uLL;
          sub_1C2F72734(v37);

          sub_1C2F740A4(&v39);
        }

        else
        {
        }
      }

      else
      {
      }
    }
  }

  else
  {
    sub_1C2F0A8D8(&v39, &qword_1EC075D38, &qword_1C2F78BB0);
  }
}

uint64_t sub_1C2F72EF0(__int128 *a1, uint64_t a2)
{
  v3 = sub_1C2F75C8C();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = sub_1C2F7669C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v28 - v9;
  v11 = a1[3];
  v44 = a1[2];
  v45[0] = v11;
  *(v45 + 15) = *(a1 + 63);
  v12 = a1[1];
  v42 = *a1;
  v43 = v12;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v14 = *(&v42 + 1);
    if (*(&v42 + 1))
    {
      v31 = v5;
      v32 = result;
      v15 = v42;
      v30 = v45[0];
      if (qword_1EC075CE0 != -1)
      {
        swift_once();
      }

      v16 = sub_1C2F761FC();
      __swift_project_value_buffer(v16, qword_1EC077030);
      v40[2] = v44;
      *v41 = v45[0];
      *&v41[15] = *(v45 + 15);
      v40[0] = v42;
      v40[1] = v43;
      sub_1C2F74048(v40, &v35);
      v17 = sub_1C2F761DC();
      v18 = sub_1C2F769EC();
      sub_1C2F0A8D8(&v42, &qword_1EC077158, &qword_1C2F7DC20);
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v29 = v15;
        v20 = v19;
        v21 = swift_slowAlloc();
        *&v35 = v21;
        *v20 = 136315138;
        *(v20 + 4) = sub_1C2EFAB28(v29, v14, &v35);
        _os_log_impl(&dword_1C2EF2000, v17, v18, "Receive reasons for calling response: %s", v20, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v21);
        MEMORY[0x1C6929E80](v21, -1, -1);
        MEMORY[0x1C6929E80](v20, -1, -1);
      }

      sub_1C2F7663C();
      v22 = v31;
      (*(v31 + 16))(v8, v10, v4);
      type metadata accessor for StringDummy();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v24 = [objc_opt_self() bundleForClass_];
      sub_1C2F75BFC();
      v25 = sub_1C2F766EC();
      v27 = v26;
      (*(v22 + 8))(v10, v4);
      *&v35 = 0xD000000000000013;
      *(&v35 + 1) = 0x80000001C2F80810;
      v36 = 0;
      v37 = 0;
      *&v38 = v25;
      *(&v38 + 1) = v27;
      *v39 = v30;
      *&v39[16] = 256;
      v39[18] = 1;
      v33[2] = v38;
      *v34 = v30;
      *&v34[15] = *&v39[15];
      v33[0] = v35;
      v33[1] = 0u;

      sub_1C2F72734(v33);

      return sub_1C2F740A4(&v35);
    }

    else
    {
    }
  }

  return result;
}

void sub_1C2F732F8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1C2F759AC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C2F7599C();
  if (v33)
  {
    sub_1C2EF5A14(0, &qword_1EC0760C0, 0x1E69D8A40);
    if (swift_dynamicCast())
    {
      v8 = *&v30[0];
      if (qword_1EC075CE0 != -1)
      {
        swift_once();
      }

      v9 = sub_1C2F761FC();
      __swift_project_value_buffer(v9, qword_1EC077030);
      v10 = v8;
      v11 = sub_1C2F761DC();
      v12 = sub_1C2F769EC();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        *v13 = 138412290;
        *(v13 + 4) = v10;
        *v14 = v10;
        v15 = v10;
        _os_log_impl(&dword_1C2EF2000, v11, v12, "CallScreeningTranscriptsServicing publishing receptionistState change for call %@", v13, 0xCu);
        sub_1C2F0A8D8(v14, &unk_1EC076070, &qword_1C2F7A190);
        MEMORY[0x1C6929E80](v14, -1, -1);
        MEMORY[0x1C6929E80](v13, -1, -1);
      }

      v16 = [v10 receptionistState];
      v17 = 0;
      goto LABEL_18;
    }
  }

  else
  {
    sub_1C2F0A8D8(v32, &qword_1EC075D38, &qword_1C2F78BB0);
  }

  if (qword_1EC075CE0 != -1)
  {
    swift_once();
  }

  v18 = sub_1C2F761FC();
  __swift_project_value_buffer(v18, qword_1EC077030);
  (*(v5 + 16))(v7, a1, v4);
  v19 = sub_1C2F761DC();
  v20 = sub_1C2F769DC();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v31 = v22;
    *v21 = 136315138;
    sub_1C2F7599C();
    sub_1C2F74698(v32, &v28);
    if (v29)
    {
      sub_1C2F2669C(&v28, v30);
      sub_1C2EFAD00(v30, &v28);
      v23 = sub_1C2F7670C();
      v25 = v24;
      __swift_destroy_boxed_opaque_existential_1Tm(v30);
      sub_1C2F0A8D8(v32, &qword_1EC075D38, &qword_1C2F78BB0);
      (*(v5 + 8))(v7, v4);
    }

    else
    {
      sub_1C2F0A8D8(&v28, &qword_1EC075D38, &qword_1C2F78BB0);
      sub_1C2F0A8D8(v32, &qword_1EC075D38, &qword_1C2F78BB0);
      (*(v5 + 8))(v7, v4);
      v25 = 0xE300000000000000;
      v23 = 7104878;
    }

    v26 = sub_1C2EFAB28(v23, v25, &v31);

    *(v21 + 4) = v26;
    _os_log_impl(&dword_1C2EF2000, v19, v20, "CallScreeningTranscriptsServicing cannot publish receptionistState change for object %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
    MEMORY[0x1C6929E80](v22, -1, -1);
    MEMORY[0x1C6929E80](v21, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  v16 = 0;
  v17 = 1;
LABEL_18:
  *a2 = v16;
  *(a2 + 4) = v17;
}

void sub_1C2F73790()
{
  if (*(v0 + 40) == 1)
  {
    v1 = v0;
    if (qword_1EC075CE0 != -1)
    {
      swift_once();
    }

    v2 = sub_1C2F761FC();
    __swift_project_value_buffer(v2, qword_1EC077030);
    v3 = sub_1C2F761DC();
    v4 = sub_1C2F769EC();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1C2EF2000, v3, v4, "startReceptionistReply", v5, 2u);
      MEMORY[0x1C6929E80](v5, -1, -1);
    }

    [*(*(v1 + 136) + 16) startReceptionistReply];
    *(v1 + 40) = 0;
  }
}

void sub_1C2F73890()
{
  v1 = (v0 + 48);
  if (*(v0 + 56))
  {
    v2 = v0;
    v3 = qword_1EC075CE0;

    if (v3 != -1)
    {
      swift_once();
    }

    v4 = sub_1C2F761FC();
    __swift_project_value_buffer(v4, qword_1EC077030);
    v5 = sub_1C2F761DC();
    v6 = sub_1C2F769EC();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1C2EF2000, v5, v6, "sendReceptionistReply", v7, 2u);
      MEMORY[0x1C6929E80](v7, -1, -1);
    }

    v8 = *(*(v2 + 136) + 16);
    v9 = sub_1C2F766AC();

    [v8 sendReceptionistReply_];

    *v1 = 0;
    v1[1] = 0;
  }
}

void sub_1C2F73A04(uint64_t a1, uint64_t a2)
{
  sub_1C2F7599C();
  if (v6)
  {
    sub_1C2EF5A14(0, &qword_1EC0760C0, 0x1E69D8A40);
    if (swift_dynamicCast())
    {
      if ([v4 screeningAnnouncementHasFinished] && (swift_beginAccess(), (Strong = swift_weakLoadStrong()) != 0))
      {
        v3 = Strong;
        sub_1C2F73790();
        sub_1C2F73890();

        *(v3 + 64) = 0;
      }

      else
      {
      }
    }
  }

  else
  {
    sub_1C2F0A8D8(v5, &qword_1EC075D38, &qword_1C2F78BB0);
  }
}

uint64_t CallScreeningTranscriptsService.deinit()
{

  swift_unknownObjectRelease();

  return v0;
}

uint64_t CallScreeningTranscriptsService.__deallocating_deinit()
{
  CallScreeningTranscriptsService.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1C2F73BF0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC077050, &qword_1C2F7D9A8);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v7 - v3;
  v7[1] = *(*v0 + 128);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC077048, &qword_1C2F7D9A0);
  sub_1C2EF7414(&qword_1EC077058, &qword_1EC077048, &qword_1C2F7D9A0, MEMORY[0x1E695BF88]);
  sub_1C2F6FFBC();
  sub_1C2F7630C();
  sub_1C2EF7414(&qword_1EC077068, &qword_1EC077050, &qword_1C2F7D9A8, MEMORY[0x1E695BD38]);
  v5 = sub_1C2F762AC();
  (*(v2 + 8))(v4, v1);
  return v5;
}

uint64_t sub_1C2F73DA4()
{
  v1 = *(*v0 + 96);
  ObjectType = swift_getObjectType();
  return (*(v1 + 32))(ObjectType, v1);
}

uint64_t sub_1C2F73EA4()
{
  v0 = sub_1C2F761FC();
  __swift_allocate_value_buffer(v0, qword_1EC077030);
  __swift_project_value_buffer(v0, qword_1EC077030);
  return sub_1C2F761EC();
}

uint64_t sub_1C2F73F28(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC077070, &unk_1C2F7D9B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C2F73FF4()
{
  result = qword_1EC0770E0;
  if (!qword_1EC0770E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0770E0);
  }

  return result;
}

uint64_t _s20CommunicationsUICore31CallScreeningTranscriptsServiceC16replySuggestionsSaySSGyF_0()
{
  v0 = sub_1C2F75C8C();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v31 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1C2F7669C();
  v35 = v3;
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v31 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076E20, &qword_1C2F79BB0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1C2F7D990;
  sub_1C2F7663C();
  v37 = *(v4 + 16);
  v37(v7, v9, v3);
  type metadata accessor for StringDummy();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v36 = ObjCClassFromMetadata;
  v38 = objc_opt_self();
  v12 = [v38 bundleForClass_];
  v33 = v2;
  sub_1C2F75BFC();
  v13 = v7;
  v14 = sub_1C2F766EC();
  v16 = v15;
  v17 = *(v4 + 8);
  v39 = v4 + 8;
  v18 = v35;
  v17(v9, v35);
  v34 = v17;
  *(v10 + 32) = v14;
  *(v10 + 40) = v16;
  sub_1C2F7663C();
  v32 = v13;
  v19 = v37;
  v37(v13, v9, v18);
  v20 = v36;
  v21 = [v38 bundleForClass_];
  sub_1C2F75BFC();
  v22 = sub_1C2F766EC();
  v24 = v23;
  v17(v9, v18);
  *(v10 + 48) = v22;
  *(v10 + 56) = v24;
  sub_1C2F7663C();
  v25 = v18;
  v19(v32, v9, v18);
  v26 = [v38 bundleForClass_];
  sub_1C2F75BFC();
  v27 = sub_1C2F766EC();
  v29 = v28;
  v34(v9, v25);
  *(v10 + 64) = v27;
  *(v10 + 72) = v29;
  return v10;
}

unint64_t sub_1C2F74628()
{
  result = qword_1EC077108;
  if (!qword_1EC077108)
  {
    sub_1C2EF5A14(255, &qword_1EC077100, 0x1E695DFD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC077108);
  }

  return result;
}

uint64_t sub_1C2F74698(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC075D38, &qword_1C2F78BB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t DebounceHandler.__allocating_init(delay:queue:)(uint64_t a1, double a2)
{
  result = swift_allocObject();
  *(result + 32) = 0;
  *(result + 24) = a2;
  *(result + 16) = a1;
  return result;
}

uint64_t DebounceHandler.init(delay:queue:)(uint64_t a1, double a2)
{
  *(v2 + 32) = 0;
  *(v2 + 24) = a2;
  *(v2 + 16) = a1;
  return v2;
}

uint64_t DebounceHandler.debounce(action:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1C2F7653C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v17 - v11;
  v13 = sub_1C2F764EC();
  MEMORY[0x1EEE9AC00](v13);
  aBlock[4] = a1;
  aBlock[5] = a2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C2F40688;
  aBlock[3] = &block_descriptor_10;
  _Block_copy(aBlock);
  v17[1] = MEMORY[0x1E69E7CC0];
  sub_1C2F24638();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076060, &unk_1C2F79000);
  sub_1C2F74A48();
  sub_1C2F76B3C();
  sub_1C2F7656C();
  swift_allocObject();
  v14 = sub_1C2F7654C();

  if (*(v3 + 32))
  {

    sub_1C2F7655C();
  }

  else
  {
  }

  *(v3 + 32) = v14;

  sub_1C2F7652C();
  sub_1C2F7657C();
  v15 = *(v7 + 8);
  v15(v10, v6);
  sub_1C2F76A0C();

  return (v15)(v12, v6);
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1C2F74A48()
{
  result = qword_1EC076710;
  if (!qword_1EC076710)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC076060, &unk_1C2F79000);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC076710);
  }

  return result;
}

Swift::Void __swiftcall DebounceHandler.cancel()()
{
  if (*(v0 + 32))
  {

    sub_1C2F7655C();
  }

  *(v0 + 32) = 0;
}

uint64_t DebounceHandler.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

double static ColorComponents.componentsFromColor(color:)@<D0>(void *a1@<X0>, void *a2@<X8>)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v9 = 0;
  v10[0] = 0;
  v7 = 0;
  v8 = 0;
  [a1 getRed:v10 green:&v9 blue:&v8 alpha:&v7];
  v4 = v9;
  result = *v10;
  v6 = v7;
  v5 = v8;
  *a2 = v10[0];
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
  return result;
}

BOOL static ColorComponents.isGray(_:_:_:)(double a1, double a2, double a3)
{
  v3 = a1 * 255.0;
  v4 = a2 * 255.0;
  v5 = a3 * 255.0;
  v6 = vabdd_f64(v3, v4);
  v7 = vabdd_f64(v4, v5);
  v8 = vabdd_f64(v3, v5);
  if (v6 <= v7)
  {
    v6 = v7;
  }

  if (v6 <= v8)
  {
    v6 = v8;
  }

  if (v6 < 0.05)
  {
    return 1;
  }

  if (v3 < 0.2)
  {
    return v7 < 0.05;
  }

  return 0;
}

uint64_t sub_1C2F74CD0()
{
  v1 = 6579570;
  v2 = 1702194274;
  if (*v0 != 2)
  {
    v2 = 0x6168706C61;
  }

  if (*v0)
  {
    v1 = 0x6E65657267;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1C2F74D30@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1C2F754E8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1C2F74D64(uint64_t a1)
{
  v2 = sub_1C2F74FB0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C2F74DA0(uint64_t a1)
{
  v2 = sub_1C2F74FB0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ColorComponents.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC077160, &qword_1C2F7DC90);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C2F74FB0();
  sub_1C2F7702C();
  v8[15] = 0;
  sub_1C2F76E8C();
  if (!v1)
  {
    v8[14] = 1;
    sub_1C2F76E8C();
    v8[13] = 2;
    sub_1C2F76E8C();
    v8[12] = 3;
    sub_1C2F76E8C();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1C2F74FB0()
{
  result = qword_1EC077168;
  if (!qword_1EC077168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC077168);
  }

  return result;
}

uint64_t ColorComponents.init(from:)@<X0>(void *a1@<X0>, double *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC077170, &qword_1C2F7DC98);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C2F74FB0();
  sub_1C2F7701C();
  if (!v2)
  {
    v22 = 0;
    sub_1C2F76DFC();
    v10 = v9;
    v21 = 1;
    sub_1C2F76DFC();
    v12 = v11;
    v20 = 2;
    sub_1C2F76DFC();
    v15 = v14;
    v19 = 3;
    sub_1C2F76DFC();
    v17 = v16;
    (*(v6 + 8))(v8, v5);
    *a2 = v10;
    *(a2 + 1) = v12;
    *(a2 + 2) = v15;
    *(a2 + 3) = v17;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C2F75234(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C2F75254(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for ColorComponents.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ColorComponents.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1C2F753E4()
{
  result = qword_1EC077178;
  if (!qword_1EC077178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC077178);
  }

  return result;
}

unint64_t sub_1C2F7543C()
{
  result = qword_1EC077180;
  if (!qword_1EC077180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC077180);
  }

  return result;
}

unint64_t sub_1C2F75494()
{
  result = qword_1EC077188;
  if (!qword_1EC077188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC077188);
  }

  return result;
}

uint64_t sub_1C2F754E8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 6579570 && a2 == 0xE300000000000000;
  if (v3 || (sub_1C2F76EFC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E65657267 && a2 == 0xE500000000000000 || (sub_1C2F76EFC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1702194274 && a2 == 0xE400000000000000 || (sub_1C2F76EFC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6168706C61 && a2 == 0xE500000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1C2F76EFC();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t SenderIdentity.accountUUID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C2F75AEC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t SenderIdentity.isoCountryCode.getter()
{
  v1 = *(v0 + *(type metadata accessor for SenderIdentity(0) + 20));

  return v1;
}

uint64_t type metadata accessor for SenderIdentity(uint64_t a1)
{
  result = qword_1EC077190;
  if (!qword_1EC077190)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SenderIdentity.localizedName.getter()
{
  v1 = *(v0 + *(type metadata accessor for SenderIdentity(0) + 24));

  return v1;
}

uint64_t SenderIdentity.localizedShortName.getter()
{
  v1 = *(v0 + *(type metadata accessor for SenderIdentity(0) + 28));

  return v1;
}

uint64_t SenderIdentity.localizedServiceName.getter()
{
  v1 = *(v0 + *(type metadata accessor for SenderIdentity(0) + 32));

  return v1;
}

int *SenderIdentity.init(accountUUID:isoCountryCode:localizedName:localizedShortName:localizedServiceName:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v19 = sub_1C2F75AEC();
  (*(*(v19 - 8) + 32))(a9, a1, v19);
  result = type metadata accessor for SenderIdentity(0);
  v21 = (a9 + result[5]);
  *v21 = a2;
  v21[1] = a3;
  v22 = (a9 + result[6]);
  *v22 = a4;
  v22[1] = a5;
  v23 = (a9 + result[7]);
  *v23 = a6;
  v23[1] = a7;
  v24 = (a9 + result[8]);
  *v24 = a8;
  v24[1] = a10;
  return result;
}

uint64_t sub_1C2F758F8(uint64_t a1)
{
  result = sub_1C2F75AEC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}